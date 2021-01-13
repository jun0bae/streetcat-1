<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>����� ��ġã��</title>
	</head>
<body>
	<div align="center">
		<h1>����� ��ġã��</h1>
		<div id="map" style="width:500px;height:400px;"></div>
		<div id="clickLatlng"></div>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js
			?appkey=c545970a000c32aa58cb39d32c259bd4"></script>
		<script>
			var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
		    mapOption = { 
		        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
		        level: 3 // ������ Ȯ�� ����
		    };

			var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
		
			// ������ Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
			var marker = new kakao.maps.Marker({ 
			    // ���� �߽���ǥ�� ��Ŀ�� �����մϴ� 
			    position: map.getCenter() 
			}); 
			// ������ ��Ŀ�� ǥ���մϴ�
			marker.setMap(map);
		
			// ������ Ŭ�� �̺�Ʈ�� ����մϴ�
			// ������ Ŭ���ϸ� ������ �Ķ���ͷ� �Ѿ�� �Լ��� ȣ���մϴ�
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
			    
			    // Ŭ���� ����, �浵 ������ �����ɴϴ� 
			    var latlng = mouseEvent.latLng; 
			    
			    // ��Ŀ ��ġ�� Ŭ���� ��ġ�� �ű�ϴ�
			    marker.setPosition(latlng);
			    
			    var message = 'Ŭ���� ��ġ�� ������ ' + latlng.getLat() + ' �̰�, ';
			    message += '�浵�� ' + latlng.getLng() + ' �Դϴ�';
			    
			    var resultDiv = document.getElementById('clickLatlng'); 
			    resultDiv.innerHTML = message;
			    
			});
		</script>
	</div>
</body>
</html>