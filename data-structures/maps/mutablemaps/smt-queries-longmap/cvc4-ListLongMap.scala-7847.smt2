; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97866 () Bool)

(assert start!97866)

(declare-fun b_free!23531 () Bool)

(declare-fun b_next!23531 () Bool)

(assert (=> start!97866 (= b_free!23531 (not b_next!23531))))

(declare-fun tp!83298 () Bool)

(declare-fun b_and!37867 () Bool)

(assert (=> start!97866 (= tp!83298 b_and!37867)))

(declare-fun b!1119580 () Bool)

(declare-fun e!637643 () Bool)

(declare-fun tp_is_empty!28061 () Bool)

(assert (=> b!1119580 (= e!637643 tp_is_empty!28061)))

(declare-fun b!1119581 () Bool)

(declare-fun res!747937 () Bool)

(declare-fun e!637639 () Bool)

(assert (=> b!1119581 (=> (not res!747937) (not e!637639))))

(declare-datatypes ((array!72948 0))(
  ( (array!72949 (arr!35123 (Array (_ BitVec 32) (_ BitVec 64))) (size!35660 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72948)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72948 (_ BitVec 32)) Bool)

(assert (=> b!1119581 (= res!747937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1119582 () Bool)

(declare-fun res!747944 () Bool)

(assert (=> b!1119582 (=> (not res!747944) (not e!637639))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1119582 (= res!747944 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35660 _keys!1208))))))

(declare-fun b!1119583 () Bool)

(declare-fun e!637641 () Bool)

(assert (=> b!1119583 (= e!637641 true)))

(declare-datatypes ((V!42541 0))(
  ( (V!42542 (val!14087 Int)) )
))
(declare-fun zeroValue!944 () V!42541)

(declare-datatypes ((tuple2!17728 0))(
  ( (tuple2!17729 (_1!8874 (_ BitVec 64)) (_2!8874 V!42541)) )
))
(declare-datatypes ((List!24564 0))(
  ( (Nil!24561) (Cons!24560 (h!25769 tuple2!17728) (t!35094 List!24564)) )
))
(declare-datatypes ((ListLongMap!15709 0))(
  ( (ListLongMap!15710 (toList!7870 List!24564)) )
))
(declare-fun lt!497777 () ListLongMap!15709)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!497776 () array!72948)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13321 0))(
  ( (ValueCellFull!13321 (v!16721 V!42541)) (EmptyCell!13321) )
))
(declare-datatypes ((array!72950 0))(
  ( (array!72951 (arr!35124 (Array (_ BitVec 32) ValueCell!13321)) (size!35661 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72950)

(declare-fun minValue!944 () V!42541)

(declare-fun getCurrentListMapNoExtraKeys!4331 (array!72948 array!72950 (_ BitVec 32) (_ BitVec 32) V!42541 V!42541 (_ BitVec 32) Int) ListLongMap!15709)

(declare-fun dynLambda!2433 (Int (_ BitVec 64)) V!42541)

(assert (=> b!1119583 (= lt!497777 (getCurrentListMapNoExtraKeys!4331 lt!497776 (array!72951 (store (arr!35124 _values!996) i!673 (ValueCellFull!13321 (dynLambda!2433 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35661 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!497775 () ListLongMap!15709)

(assert (=> b!1119583 (= lt!497775 (getCurrentListMapNoExtraKeys!4331 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119584 () Bool)

(declare-fun e!637640 () Bool)

(assert (=> b!1119584 (= e!637640 tp_is_empty!28061)))

(declare-fun res!747935 () Bool)

(assert (=> start!97866 (=> (not res!747935) (not e!637639))))

(assert (=> start!97866 (= res!747935 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35660 _keys!1208))))))

(assert (=> start!97866 e!637639))

(assert (=> start!97866 tp_is_empty!28061))

(declare-fun array_inv!26846 (array!72948) Bool)

(assert (=> start!97866 (array_inv!26846 _keys!1208)))

(assert (=> start!97866 true))

(assert (=> start!97866 tp!83298))

(declare-fun e!637642 () Bool)

(declare-fun array_inv!26847 (array!72950) Bool)

(assert (=> start!97866 (and (array_inv!26847 _values!996) e!637642)))

(declare-fun mapIsEmpty!43909 () Bool)

(declare-fun mapRes!43909 () Bool)

(assert (=> mapIsEmpty!43909 mapRes!43909))

(declare-fun b!1119585 () Bool)

(declare-fun e!637638 () Bool)

(assert (=> b!1119585 (= e!637638 (not e!637641))))

(declare-fun res!747939 () Bool)

(assert (=> b!1119585 (=> res!747939 e!637641)))

(assert (=> b!1119585 (= res!747939 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72948 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119585 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36655 0))(
  ( (Unit!36656) )
))
(declare-fun lt!497778 () Unit!36655)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72948 (_ BitVec 64) (_ BitVec 32)) Unit!36655)

(assert (=> b!1119585 (= lt!497778 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119586 () Bool)

(declare-fun res!747936 () Bool)

(assert (=> b!1119586 (=> (not res!747936) (not e!637639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119586 (= res!747936 (validMask!0 mask!1564))))

(declare-fun b!1119587 () Bool)

(declare-fun res!747941 () Bool)

(assert (=> b!1119587 (=> (not res!747941) (not e!637639))))

(declare-datatypes ((List!24565 0))(
  ( (Nil!24562) (Cons!24561 (h!25770 (_ BitVec 64)) (t!35095 List!24565)) )
))
(declare-fun arrayNoDuplicates!0 (array!72948 (_ BitVec 32) List!24565) Bool)

(assert (=> b!1119587 (= res!747941 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24562))))

(declare-fun b!1119588 () Bool)

(declare-fun res!747945 () Bool)

(assert (=> b!1119588 (=> (not res!747945) (not e!637639))))

(assert (=> b!1119588 (= res!747945 (= (select (arr!35123 _keys!1208) i!673) k!934))))

(declare-fun mapNonEmpty!43909 () Bool)

(declare-fun tp!83297 () Bool)

(assert (=> mapNonEmpty!43909 (= mapRes!43909 (and tp!83297 e!637640))))

(declare-fun mapValue!43909 () ValueCell!13321)

(declare-fun mapKey!43909 () (_ BitVec 32))

(declare-fun mapRest!43909 () (Array (_ BitVec 32) ValueCell!13321))

(assert (=> mapNonEmpty!43909 (= (arr!35124 _values!996) (store mapRest!43909 mapKey!43909 mapValue!43909))))

(declare-fun b!1119589 () Bool)

(declare-fun res!747940 () Bool)

(assert (=> b!1119589 (=> (not res!747940) (not e!637638))))

(assert (=> b!1119589 (= res!747940 (arrayNoDuplicates!0 lt!497776 #b00000000000000000000000000000000 Nil!24562))))

(declare-fun b!1119590 () Bool)

(assert (=> b!1119590 (= e!637639 e!637638)))

(declare-fun res!747942 () Bool)

(assert (=> b!1119590 (=> (not res!747942) (not e!637638))))

(assert (=> b!1119590 (= res!747942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497776 mask!1564))))

(assert (=> b!1119590 (= lt!497776 (array!72949 (store (arr!35123 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35660 _keys!1208)))))

(declare-fun b!1119591 () Bool)

(assert (=> b!1119591 (= e!637642 (and e!637643 mapRes!43909))))

(declare-fun condMapEmpty!43909 () Bool)

(declare-fun mapDefault!43909 () ValueCell!13321)

