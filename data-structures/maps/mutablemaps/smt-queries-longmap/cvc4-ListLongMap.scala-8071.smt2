; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99332 () Bool)

(assert start!99332)

(declare-fun b_free!24875 () Bool)

(declare-fun b_next!24875 () Bool)

(assert (=> start!99332 (= b_free!24875 (not b_next!24875))))

(declare-fun tp!87339 () Bool)

(declare-fun b_and!40631 () Bool)

(assert (=> start!99332 (= tp!87339 b_and!40631)))

(declare-fun b!1169890 () Bool)

(declare-fun res!776437 () Bool)

(declare-fun e!664955 () Bool)

(assert (=> b!1169890 (=> (not res!776437) (not e!664955))))

(declare-datatypes ((array!75586 0))(
  ( (array!75587 (arr!36439 (Array (_ BitVec 32) (_ BitVec 64))) (size!36976 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75586)

(declare-datatypes ((List!25706 0))(
  ( (Nil!25703) (Cons!25702 (h!26911 (_ BitVec 64)) (t!37580 List!25706)) )
))
(declare-fun arrayNoDuplicates!0 (array!75586 (_ BitVec 32) List!25706) Bool)

(assert (=> b!1169890 (= res!776437 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25703))))

(declare-fun b!1169891 () Bool)

(declare-fun res!776428 () Bool)

(assert (=> b!1169891 (=> (not res!776428) (not e!664955))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169891 (= res!776428 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36976 _keys!1208))))))

(declare-fun b!1169892 () Bool)

(declare-fun e!664954 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75586 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169892 (= e!664954 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1169893 () Bool)

(declare-fun e!664959 () Bool)

(assert (=> b!1169893 (= e!664959 e!664954)))

(declare-fun res!776424 () Bool)

(assert (=> b!1169893 (=> res!776424 e!664954)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1169893 (= res!776424 (not (= (select (arr!36439 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!45935 () Bool)

(declare-fun mapRes!45935 () Bool)

(assert (=> mapIsEmpty!45935 mapRes!45935))

(declare-fun b!1169894 () Bool)

(declare-fun res!776432 () Bool)

(declare-fun e!664958 () Bool)

(assert (=> b!1169894 (=> (not res!776432) (not e!664958))))

(declare-fun lt!526816 () array!75586)

(assert (=> b!1169894 (= res!776432 (arrayNoDuplicates!0 lt!526816 #b00000000000000000000000000000000 Nil!25703))))

(declare-fun b!1169895 () Bool)

(assert (=> b!1169895 (= e!664955 e!664958)))

(declare-fun res!776430 () Bool)

(assert (=> b!1169895 (=> (not res!776430) (not e!664958))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75586 (_ BitVec 32)) Bool)

(assert (=> b!1169895 (= res!776430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526816 mask!1564))))

(assert (=> b!1169895 (= lt!526816 (array!75587 (store (arr!36439 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36976 _keys!1208)))))

(declare-fun mapNonEmpty!45935 () Bool)

(declare-fun tp!87340 () Bool)

(declare-fun e!664957 () Bool)

(assert (=> mapNonEmpty!45935 (= mapRes!45935 (and tp!87340 e!664957))))

(declare-datatypes ((V!44333 0))(
  ( (V!44334 (val!14759 Int)) )
))
(declare-datatypes ((ValueCell!13993 0))(
  ( (ValueCellFull!13993 (v!17398 V!44333)) (EmptyCell!13993) )
))
(declare-fun mapValue!45935 () ValueCell!13993)

(declare-fun mapRest!45935 () (Array (_ BitVec 32) ValueCell!13993))

(declare-datatypes ((array!75588 0))(
  ( (array!75589 (arr!36440 (Array (_ BitVec 32) ValueCell!13993)) (size!36977 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75588)

(declare-fun mapKey!45935 () (_ BitVec 32))

(assert (=> mapNonEmpty!45935 (= (arr!36440 _values!996) (store mapRest!45935 mapKey!45935 mapValue!45935))))

(declare-fun b!1169897 () Bool)

(declare-fun res!776434 () Bool)

(assert (=> b!1169897 (=> (not res!776434) (not e!664955))))

(assert (=> b!1169897 (= res!776434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1169898 () Bool)

(declare-fun e!664956 () Bool)

(declare-fun tp_is_empty!29405 () Bool)

(assert (=> b!1169898 (= e!664956 tp_is_empty!29405)))

(declare-fun b!1169899 () Bool)

(declare-fun res!776427 () Bool)

(assert (=> b!1169899 (=> (not res!776427) (not e!664955))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1169899 (= res!776427 (and (= (size!36977 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36976 _keys!1208) (size!36977 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169900 () Bool)

(declare-fun res!776425 () Bool)

(assert (=> b!1169900 (=> (not res!776425) (not e!664955))))

(assert (=> b!1169900 (= res!776425 (= (select (arr!36439 _keys!1208) i!673) k!934))))

(declare-fun b!1169901 () Bool)

(declare-fun e!664951 () Bool)

(assert (=> b!1169901 (= e!664951 true)))

(assert (=> b!1169901 e!664959))

(declare-fun res!776431 () Bool)

(assert (=> b!1169901 (=> (not res!776431) (not e!664959))))

(declare-datatypes ((tuple2!18934 0))(
  ( (tuple2!18935 (_1!9477 (_ BitVec 64)) (_2!9477 V!44333)) )
))
(declare-datatypes ((List!25707 0))(
  ( (Nil!25704) (Cons!25703 (h!26912 tuple2!18934) (t!37581 List!25707)) )
))
(declare-datatypes ((ListLongMap!16915 0))(
  ( (ListLongMap!16916 (toList!8473 List!25707)) )
))
(declare-fun lt!526815 () ListLongMap!16915)

(declare-fun lt!526818 () V!44333)

(declare-fun lt!526813 () ListLongMap!16915)

(declare-fun +!3718 (ListLongMap!16915 tuple2!18934) ListLongMap!16915)

(declare-fun get!18609 (ValueCell!13993 V!44333) V!44333)

(assert (=> b!1169901 (= res!776431 (= lt!526813 (+!3718 lt!526815 (tuple2!18935 (select (arr!36439 _keys!1208) from!1455) (get!18609 (select (arr!36440 _values!996) from!1455) lt!526818)))))))

(declare-fun b!1169902 () Bool)

(declare-fun e!664953 () Bool)

(declare-fun e!664950 () Bool)

(assert (=> b!1169902 (= e!664953 e!664950)))

(declare-fun res!776433 () Bool)

(assert (=> b!1169902 (=> res!776433 e!664950)))

(assert (=> b!1169902 (= res!776433 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44333)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526811 () array!75588)

(declare-fun minValue!944 () V!44333)

(declare-fun getCurrentListMapNoExtraKeys!4906 (array!75586 array!75588 (_ BitVec 32) (_ BitVec 32) V!44333 V!44333 (_ BitVec 32) Int) ListLongMap!16915)

(assert (=> b!1169902 (= lt!526813 (getCurrentListMapNoExtraKeys!4906 lt!526816 lt!526811 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1169902 (= lt!526811 (array!75589 (store (arr!36440 _values!996) i!673 (ValueCellFull!13993 lt!526818)) (size!36977 _values!996)))))

(declare-fun dynLambda!2896 (Int (_ BitVec 64)) V!44333)

(assert (=> b!1169902 (= lt!526818 (dynLambda!2896 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!526814 () ListLongMap!16915)

(assert (=> b!1169902 (= lt!526814 (getCurrentListMapNoExtraKeys!4906 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1169903 () Bool)

(declare-fun e!664960 () Bool)

(assert (=> b!1169903 (= e!664960 (and e!664956 mapRes!45935))))

(declare-fun condMapEmpty!45935 () Bool)

(declare-fun mapDefault!45935 () ValueCell!13993)

