; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100796 () Bool)

(assert start!100796)

(declare-fun b_free!25931 () Bool)

(declare-fun b_next!25931 () Bool)

(assert (=> start!100796 (= b_free!25931 (not b_next!25931))))

(declare-fun tp!90796 () Bool)

(declare-fun b_and!42859 () Bool)

(assert (=> start!100796 (= tp!90796 b_and!42859)))

(declare-fun b!1205543 () Bool)

(declare-fun e!684665 () Bool)

(declare-fun tp_is_empty!30635 () Bool)

(assert (=> b!1205543 (= e!684665 tp_is_empty!30635)))

(declare-fun b!1205544 () Bool)

(declare-fun c!118259 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!546780 () Bool)

(assert (=> b!1205544 (= c!118259 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!546780))))

(declare-datatypes ((Unit!39890 0))(
  ( (Unit!39891) )
))
(declare-fun e!684660 () Unit!39890)

(declare-fun e!684655 () Unit!39890)

(assert (=> b!1205544 (= e!684660 e!684655)))

(declare-fun b!1205545 () Bool)

(declare-fun e!684659 () Bool)

(declare-fun e!684654 () Bool)

(assert (=> b!1205545 (= e!684659 e!684654)))

(declare-fun res!801937 () Bool)

(assert (=> b!1205545 (=> res!801937 e!684654)))

(declare-datatypes ((V!45973 0))(
  ( (V!45974 (val!15374 Int)) )
))
(declare-datatypes ((tuple2!19854 0))(
  ( (tuple2!19855 (_1!9937 (_ BitVec 64)) (_2!9937 V!45973)) )
))
(declare-datatypes ((List!26680 0))(
  ( (Nil!26677) (Cons!26676 (h!27885 tuple2!19854) (t!39598 List!26680)) )
))
(declare-datatypes ((ListLongMap!17835 0))(
  ( (ListLongMap!17836 (toList!8933 List!26680)) )
))
(declare-fun lt!546776 () ListLongMap!17835)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6938 (ListLongMap!17835 (_ BitVec 64)) Bool)

(assert (=> b!1205545 (= res!801937 (not (contains!6938 lt!546776 k!934)))))

(declare-fun zeroValue!944 () V!45973)

(declare-datatypes ((array!78026 0))(
  ( (array!78027 (arr!37650 (Array (_ BitVec 32) (_ BitVec 64))) (size!38187 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78026)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14608 0))(
  ( (ValueCellFull!14608 (v!18019 V!45973)) (EmptyCell!14608) )
))
(declare-datatypes ((array!78028 0))(
  ( (array!78029 (arr!37651 (Array (_ BitVec 32) ValueCell!14608)) (size!38188 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78028)

(declare-fun minValue!944 () V!45973)

(declare-fun getCurrentListMapNoExtraKeys!5341 (array!78026 array!78028 (_ BitVec 32) (_ BitVec 32) V!45973 V!45973 (_ BitVec 32) Int) ListLongMap!17835)

(assert (=> b!1205545 (= lt!546776 (getCurrentListMapNoExtraKeys!5341 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!684663 () Bool)

(declare-fun b!1205546 () Bool)

(declare-fun arrayContainsKey!0 (array!78026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205546 (= e!684663 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205547 () Bool)

(declare-fun res!801935 () Bool)

(declare-fun e!684661 () Bool)

(assert (=> b!1205547 (=> (not res!801935) (not e!684661))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1205547 (= res!801935 (= (select (arr!37650 _keys!1208) i!673) k!934))))

(declare-fun b!1205548 () Bool)

(declare-fun Unit!39892 () Unit!39890)

(assert (=> b!1205548 (= e!684655 Unit!39892)))

(declare-fun b!1205549 () Bool)

(declare-fun e!684653 () Bool)

(assert (=> b!1205549 (= e!684653 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205550 () Bool)

(declare-fun res!801928 () Bool)

(declare-fun e!684657 () Bool)

(assert (=> b!1205550 (=> (not res!801928) (not e!684657))))

(declare-fun lt!546787 () array!78026)

(declare-datatypes ((List!26681 0))(
  ( (Nil!26678) (Cons!26677 (h!27886 (_ BitVec 64)) (t!39599 List!26681)) )
))
(declare-fun arrayNoDuplicates!0 (array!78026 (_ BitVec 32) List!26681) Bool)

(assert (=> b!1205550 (= res!801928 (arrayNoDuplicates!0 lt!546787 #b00000000000000000000000000000000 Nil!26678))))

(declare-fun b!1205551 () Bool)

(declare-fun call!58505 () ListLongMap!17835)

(declare-fun call!58503 () ListLongMap!17835)

(declare-fun e!684662 () Bool)

(declare-fun -!1846 (ListLongMap!17835 (_ BitVec 64)) ListLongMap!17835)

(assert (=> b!1205551 (= e!684662 (= call!58503 (-!1846 call!58505 k!934)))))

(declare-fun b!1205552 () Bool)

(declare-fun e!684656 () Bool)

(declare-fun e!684651 () Bool)

(assert (=> b!1205552 (= e!684656 e!684651)))

(declare-fun res!801926 () Bool)

(assert (=> b!1205552 (=> res!801926 e!684651)))

(assert (=> b!1205552 (= res!801926 (not (= from!1455 i!673)))))

(declare-fun lt!546781 () ListLongMap!17835)

(declare-fun lt!546779 () array!78028)

(assert (=> b!1205552 (= lt!546781 (getCurrentListMapNoExtraKeys!5341 lt!546787 lt!546779 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3263 (Int (_ BitVec 64)) V!45973)

(assert (=> b!1205552 (= lt!546779 (array!78029 (store (arr!37651 _values!996) i!673 (ValueCellFull!14608 (dynLambda!3263 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38188 _values!996)))))

(declare-fun lt!546785 () ListLongMap!17835)

(assert (=> b!1205552 (= lt!546785 (getCurrentListMapNoExtraKeys!5341 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1205553 () Bool)

(declare-fun e!684664 () Bool)

(declare-fun mapRes!47808 () Bool)

(assert (=> b!1205553 (= e!684664 (and e!684665 mapRes!47808))))

(declare-fun condMapEmpty!47808 () Bool)

(declare-fun mapDefault!47808 () ValueCell!14608)

