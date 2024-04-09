; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97850 () Bool)

(assert start!97850)

(declare-fun b_free!23515 () Bool)

(declare-fun b_next!23515 () Bool)

(assert (=> start!97850 (= b_free!23515 (not b_next!23515))))

(declare-fun tp!83250 () Bool)

(declare-fun b_and!37835 () Bool)

(assert (=> start!97850 (= tp!83250 b_and!37835)))

(declare-fun b!1119228 () Bool)

(declare-fun res!747678 () Bool)

(declare-fun e!637470 () Bool)

(assert (=> b!1119228 (=> (not res!747678) (not e!637470))))

(declare-datatypes ((array!72918 0))(
  ( (array!72919 (arr!35108 (Array (_ BitVec 32) (_ BitVec 64))) (size!35645 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72918)

(declare-datatypes ((List!24553 0))(
  ( (Nil!24550) (Cons!24549 (h!25758 (_ BitVec 64)) (t!35067 List!24553)) )
))
(declare-fun arrayNoDuplicates!0 (array!72918 (_ BitVec 32) List!24553) Bool)

(assert (=> b!1119228 (= res!747678 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24550))))

(declare-fun b!1119229 () Bool)

(declare-fun res!747672 () Bool)

(assert (=> b!1119229 (=> (not res!747672) (not e!637470))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119229 (= res!747672 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35645 _keys!1208))))))

(declare-fun b!1119230 () Bool)

(declare-fun e!637473 () Bool)

(declare-fun e!637469 () Bool)

(assert (=> b!1119230 (= e!637473 (not e!637469))))

(declare-fun res!747680 () Bool)

(assert (=> b!1119230 (=> res!747680 e!637469)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1119230 (= res!747680 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72918 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119230 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36643 0))(
  ( (Unit!36644) )
))
(declare-fun lt!497680 () Unit!36643)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72918 (_ BitVec 64) (_ BitVec 32)) Unit!36643)

(assert (=> b!1119230 (= lt!497680 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119231 () Bool)

(declare-fun e!637474 () Bool)

(declare-fun tp_is_empty!28045 () Bool)

(assert (=> b!1119231 (= e!637474 tp_is_empty!28045)))

(declare-fun b!1119232 () Bool)

(assert (=> b!1119232 (= e!637470 e!637473)))

(declare-fun res!747673 () Bool)

(assert (=> b!1119232 (=> (not res!747673) (not e!637473))))

(declare-fun lt!497682 () array!72918)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72918 (_ BitVec 32)) Bool)

(assert (=> b!1119232 (= res!747673 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497682 mask!1564))))

(assert (=> b!1119232 (= lt!497682 (array!72919 (store (arr!35108 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35645 _keys!1208)))))

(declare-fun b!1119233 () Bool)

(assert (=> b!1119233 (= e!637469 true)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((V!42521 0))(
  ( (V!42522 (val!14079 Int)) )
))
(declare-datatypes ((ValueCell!13313 0))(
  ( (ValueCellFull!13313 (v!16713 V!42521)) (EmptyCell!13313) )
))
(declare-datatypes ((array!72920 0))(
  ( (array!72921 (arr!35109 (Array (_ BitVec 32) ValueCell!13313)) (size!35646 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72920)

(declare-fun minValue!944 () V!42521)

(declare-fun zeroValue!944 () V!42521)

(declare-datatypes ((tuple2!17716 0))(
  ( (tuple2!17717 (_1!8868 (_ BitVec 64)) (_2!8868 V!42521)) )
))
(declare-datatypes ((List!24554 0))(
  ( (Nil!24551) (Cons!24550 (h!25759 tuple2!17716) (t!35068 List!24554)) )
))
(declare-datatypes ((ListLongMap!15697 0))(
  ( (ListLongMap!15698 (toList!7864 List!24554)) )
))
(declare-fun lt!497681 () ListLongMap!15697)

(declare-fun getCurrentListMapNoExtraKeys!4325 (array!72918 array!72920 (_ BitVec 32) (_ BitVec 32) V!42521 V!42521 (_ BitVec 32) Int) ListLongMap!15697)

(declare-fun dynLambda!2427 (Int (_ BitVec 64)) V!42521)

(assert (=> b!1119233 (= lt!497681 (getCurrentListMapNoExtraKeys!4325 lt!497682 (array!72921 (store (arr!35109 _values!996) i!673 (ValueCellFull!13313 (dynLambda!2427 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35646 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497679 () ListLongMap!15697)

(assert (=> b!1119233 (= lt!497679 (getCurrentListMapNoExtraKeys!4325 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119234 () Bool)

(declare-fun res!747677 () Bool)

(assert (=> b!1119234 (=> (not res!747677) (not e!637470))))

(assert (=> b!1119234 (= res!747677 (= (select (arr!35108 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43885 () Bool)

(declare-fun mapRes!43885 () Bool)

(declare-fun tp!83249 () Bool)

(declare-fun e!637475 () Bool)

(assert (=> mapNonEmpty!43885 (= mapRes!43885 (and tp!83249 e!637475))))

(declare-fun mapValue!43885 () ValueCell!13313)

(declare-fun mapKey!43885 () (_ BitVec 32))

(declare-fun mapRest!43885 () (Array (_ BitVec 32) ValueCell!13313))

(assert (=> mapNonEmpty!43885 (= (arr!35109 _values!996) (store mapRest!43885 mapKey!43885 mapValue!43885))))

(declare-fun b!1119235 () Bool)

(declare-fun res!747674 () Bool)

(assert (=> b!1119235 (=> (not res!747674) (not e!637470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119235 (= res!747674 (validMask!0 mask!1564))))

(declare-fun b!1119236 () Bool)

(declare-fun res!747676 () Bool)

(assert (=> b!1119236 (=> (not res!747676) (not e!637470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119236 (= res!747676 (validKeyInArray!0 k!934))))

(declare-fun b!1119237 () Bool)

(declare-fun e!637471 () Bool)

(assert (=> b!1119237 (= e!637471 (and e!637474 mapRes!43885))))

(declare-fun condMapEmpty!43885 () Bool)

(declare-fun mapDefault!43885 () ValueCell!13313)

