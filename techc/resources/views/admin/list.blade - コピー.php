<!DOCTYPE html>
<html>
	<head>
		<link href="{{{asset('/assets/css/bootstrap.min.css')}}}" rel="stylesheet">
		<link href="{{{asset('/assets/css/list.css')}}}" rel="stylesheet">
		<meta charset="UTF-8">
	</head>

<body>
	<div class="wrap">
		<div class="side_bar">
			<h2>We are TECH.C<br>アンケートシステム</h2>
			<ul>
				<li><a href="#">作品アンケート</a></li>
				<li><a href="./venue">会場アンケート</a></li>
			</ul>
			<ul>
				<li>アンケート編集</li>
			</ul>
		</div>
		<div class="list">
			<h2>作品別</h2>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>作品名</th>
						<th>作者名</th>
						<th>評価数</th>
						<th>詳細</th>
					</tr>
				</thead>
				<tbody>
				@foreach($lists as $list)
					<tr>
						<td>{{{ $list->product_name }}}</td>
						<td>
							<span>
							@foreach($list->member as $member)
								{{ $member->name }}
							@endforeach
							</span>
						</td>
						<td>
							{{ $sum_val[$list->id] }}
						</td>
						<td><a href="./list/detail/{{ $list->id }}" class="btn btn-info">詳細</a></td>
					</tr>
				@endforeach
				</tbody>
			</table>
		</div>
	</div>
</body>

</html>