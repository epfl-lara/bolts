; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99298 () Bool)

(assert start!99298)

(declare-fun b_free!24841 () Bool)

(declare-fun b_next!24841 () Bool)

(assert (=> start!99298 (= b_free!24841 (not b_next!24841))))

(declare-fun tp!87238 () Bool)

(declare-fun b_and!40563 () Bool)

(assert (=> start!99298 (= tp!87238 b_and!40563)))

(declare-fun b!1168938 () Bool)

(declare-fun res!775662 () Bool)

(declare-fun e!664399 () Bool)

(assert (=> b!1168938 (=> (not res!775662) (not e!664399))))

(declare-datatypes ((array!75518 0))(
  ( (array!75519 (arr!36405 (Array (_ BitVec 32) (_ BitVec 64))) (size!36942 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75518)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1168938 (= res!775662 (= (select (arr!36405 _keys!1208) i!673) k!934))))

(declare-fun b!1168939 () Bool)

(declare-fun e!664392 () Bool)

(declare-fun e!664390 () Bool)

(assert (=> b!1168939 (= e!664392 e!664390)))

(declare-fun res!775668 () Bool)

(assert (=> b!1168939 (=> res!775668 e!664390)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1168939 (= res!775668 (not (= (select (arr!36405 _keys!1208) from!1455) k!934)))))

(declare-fun b!1168940 () Bool)

(declare-fun res!775671 () Bool)

(assert (=> b!1168940 (=> (not res!775671) (not e!664399))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1168940 (= res!775671 (validMask!0 mask!1564))))

(declare-fun b!1168941 () Bool)

(declare-fun e!664395 () Bool)

(assert (=> b!1168941 (= e!664395 true)))

(assert (=> b!1168941 e!664392))

(declare-fun res!775665 () Bool)

(assert (=> b!1168941 (=> (not res!775665) (not e!664392))))

(declare-datatypes ((V!44289 0))(
  ( (V!44290 (val!14742 Int)) )
))
(declare-fun lt!526308 () V!44289)

(declare-datatypes ((tuple2!18902 0))(
  ( (tuple2!18903 (_1!9461 (_ BitVec 64)) (_2!9461 V!44289)) )
))
(declare-datatypes ((List!25674 0))(
  ( (Nil!25671) (Cons!25670 (h!26879 tuple2!18902) (t!37514 List!25674)) )
))
(declare-datatypes ((ListLongMap!16883 0))(
  ( (ListLongMap!16884 (toList!8457 List!25674)) )
))
(declare-fun lt!526306 () ListLongMap!16883)

(declare-fun lt!526301 () ListLongMap!16883)

(declare-datatypes ((ValueCell!13976 0))(
  ( (ValueCellFull!13976 (v!17381 V!44289)) (EmptyCell!13976) )
))
(declare-datatypes ((array!75520 0))(
  ( (array!75521 (arr!36406 (Array (_ BitVec 32) ValueCell!13976)) (size!36943 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75520)

(declare-fun +!3707 (ListLongMap!16883 tuple2!18902) ListLongMap!16883)

(declare-fun get!18588 (ValueCell!13976 V!44289) V!44289)

(assert (=> b!1168941 (= res!775665 (= lt!526306 (+!3707 lt!526301 (tuple2!18903 (select (arr!36405 _keys!1208) from!1455) (get!18588 (select (arr!36406 _values!996) from!1455) lt!526308)))))))

(declare-fun b!1168942 () Bool)

(declare-fun arrayContainsKey!0 (array!75518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168942 (= e!664390 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168943 () Bool)

(declare-fun res!775661 () Bool)

(declare-fun e!664398 () Bool)

(assert (=> b!1168943 (=> (not res!775661) (not e!664398))))

(declare-fun lt!526302 () array!75518)

(declare-datatypes ((List!25675 0))(
  ( (Nil!25672) (Cons!25671 (h!26880 (_ BitVec 64)) (t!37515 List!25675)) )
))
(declare-fun arrayNoDuplicates!0 (array!75518 (_ BitVec 32) List!25675) Bool)

(assert (=> b!1168943 (= res!775661 (arrayNoDuplicates!0 lt!526302 #b00000000000000000000000000000000 Nil!25672))))

(declare-fun b!1168944 () Bool)

(declare-fun res!775659 () Bool)

(assert (=> b!1168944 (=> (not res!775659) (not e!664399))))

(assert (=> b!1168944 (= res!775659 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36942 _keys!1208))))))

(declare-fun b!1168945 () Bool)

(declare-fun e!664396 () Bool)

(declare-fun e!664389 () Bool)

(assert (=> b!1168945 (= e!664396 e!664389)))

(declare-fun res!775670 () Bool)

(assert (=> b!1168945 (=> res!775670 e!664389)))

(assert (=> b!1168945 (= res!775670 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44289)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun minValue!944 () V!44289)

(declare-fun lt!526304 () array!75520)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!4890 (array!75518 array!75520 (_ BitVec 32) (_ BitVec 32) V!44289 V!44289 (_ BitVec 32) Int) ListLongMap!16883)

(assert (=> b!1168945 (= lt!526306 (getCurrentListMapNoExtraKeys!4890 lt!526302 lt!526304 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1168945 (= lt!526304 (array!75521 (store (arr!36406 _values!996) i!673 (ValueCellFull!13976 lt!526308)) (size!36943 _values!996)))))

(declare-fun dynLambda!2882 (Int (_ BitVec 64)) V!44289)

(assert (=> b!1168945 (= lt!526308 (dynLambda!2882 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526307 () ListLongMap!16883)

(assert (=> b!1168945 (= lt!526307 (getCurrentListMapNoExtraKeys!4890 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168946 () Bool)

(assert (=> b!1168946 (= e!664398 (not e!664396))))

(declare-fun res!775663 () Bool)

(assert (=> b!1168946 (=> res!775663 e!664396)))

(assert (=> b!1168946 (= res!775663 (bvsgt from!1455 i!673))))

(assert (=> b!1168946 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38462 0))(
  ( (Unit!38463) )
))
(declare-fun lt!526300 () Unit!38462)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75518 (_ BitVec 64) (_ BitVec 32)) Unit!38462)

(assert (=> b!1168946 (= lt!526300 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168947 () Bool)

(assert (=> b!1168947 (= e!664399 e!664398)))

(declare-fun res!775669 () Bool)

(assert (=> b!1168947 (=> (not res!775669) (not e!664398))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75518 (_ BitVec 32)) Bool)

(assert (=> b!1168947 (= res!775669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526302 mask!1564))))

(assert (=> b!1168947 (= lt!526302 (array!75519 (store (arr!36405 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36942 _keys!1208)))))

(declare-fun b!1168949 () Bool)

(declare-fun e!664391 () Bool)

(declare-fun e!664394 () Bool)

(declare-fun mapRes!45884 () Bool)

(assert (=> b!1168949 (= e!664391 (and e!664394 mapRes!45884))))

(declare-fun condMapEmpty!45884 () Bool)

(declare-fun mapDefault!45884 () ValueCell!13976)

