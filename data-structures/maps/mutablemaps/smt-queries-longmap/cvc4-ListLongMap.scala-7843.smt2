; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97842 () Bool)

(assert start!97842)

(declare-fun b_free!23507 () Bool)

(declare-fun b_next!23507 () Bool)

(assert (=> start!97842 (= b_free!23507 (not b_next!23507))))

(declare-fun tp!83226 () Bool)

(declare-fun b_and!37819 () Bool)

(assert (=> start!97842 (= tp!83226 b_and!37819)))

(declare-fun b!1119052 () Bool)

(declare-fun e!637391 () Bool)

(assert (=> b!1119052 (= e!637391 true)))

(declare-datatypes ((V!42509 0))(
  ( (V!42510 (val!14075 Int)) )
))
(declare-fun zeroValue!944 () V!42509)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((tuple2!17708 0))(
  ( (tuple2!17709 (_1!8864 (_ BitVec 64)) (_2!8864 V!42509)) )
))
(declare-datatypes ((List!24545 0))(
  ( (Nil!24542) (Cons!24541 (h!25750 tuple2!17708) (t!35051 List!24545)) )
))
(declare-datatypes ((ListLongMap!15689 0))(
  ( (ListLongMap!15690 (toList!7860 List!24545)) )
))
(declare-fun lt!497634 () ListLongMap!15689)

(declare-fun minValue!944 () V!42509)

(declare-datatypes ((array!72902 0))(
  ( (array!72903 (arr!35100 (Array (_ BitVec 32) (_ BitVec 64))) (size!35637 (_ BitVec 32))) )
))
(declare-fun lt!497632 () array!72902)

(declare-datatypes ((ValueCell!13309 0))(
  ( (ValueCellFull!13309 (v!16709 V!42509)) (EmptyCell!13309) )
))
(declare-datatypes ((array!72904 0))(
  ( (array!72905 (arr!35101 (Array (_ BitVec 32) ValueCell!13309)) (size!35638 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72904)

(declare-fun getCurrentListMapNoExtraKeys!4321 (array!72902 array!72904 (_ BitVec 32) (_ BitVec 32) V!42509 V!42509 (_ BitVec 32) Int) ListLongMap!15689)

(declare-fun dynLambda!2423 (Int (_ BitVec 64)) V!42509)

(assert (=> b!1119052 (= lt!497634 (getCurrentListMapNoExtraKeys!4321 lt!497632 (array!72905 (store (arr!35101 _values!996) i!673 (ValueCellFull!13309 (dynLambda!2423 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35638 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!72902)

(declare-fun lt!497631 () ListLongMap!15689)

(assert (=> b!1119052 (= lt!497631 (getCurrentListMapNoExtraKeys!4321 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1119053 () Bool)

(declare-fun res!747548 () Bool)

(declare-fun e!637386 () Bool)

(assert (=> b!1119053 (=> (not res!747548) (not e!637386))))

(declare-datatypes ((List!24546 0))(
  ( (Nil!24543) (Cons!24542 (h!25751 (_ BitVec 64)) (t!35052 List!24546)) )
))
(declare-fun arrayNoDuplicates!0 (array!72902 (_ BitVec 32) List!24546) Bool)

(assert (=> b!1119053 (= res!747548 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24543))))

(declare-fun b!1119054 () Bool)

(declare-fun e!637390 () Bool)

(assert (=> b!1119054 (= e!637390 (not e!637391))))

(declare-fun res!747541 () Bool)

(assert (=> b!1119054 (=> res!747541 e!637391)))

(assert (=> b!1119054 (= res!747541 (bvsgt from!1455 i!673))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!72902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1119054 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36635 0))(
  ( (Unit!36636) )
))
(declare-fun lt!497633 () Unit!36635)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72902 (_ BitVec 64) (_ BitVec 32)) Unit!36635)

(assert (=> b!1119054 (= lt!497633 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1119055 () Bool)

(declare-fun res!747545 () Bool)

(assert (=> b!1119055 (=> (not res!747545) (not e!637386))))

(assert (=> b!1119055 (= res!747545 (= (select (arr!35100 _keys!1208) i!673) k!934))))

(declare-fun b!1119056 () Bool)

(assert (=> b!1119056 (= e!637386 e!637390)))

(declare-fun res!747544 () Bool)

(assert (=> b!1119056 (=> (not res!747544) (not e!637390))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72902 (_ BitVec 32)) Bool)

(assert (=> b!1119056 (= res!747544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497632 mask!1564))))

(assert (=> b!1119056 (= lt!497632 (array!72903 (store (arr!35100 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35637 _keys!1208)))))

(declare-fun b!1119057 () Bool)

(declare-fun res!747547 () Bool)

(assert (=> b!1119057 (=> (not res!747547) (not e!637386))))

(assert (=> b!1119057 (= res!747547 (and (= (size!35638 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35637 _keys!1208) (size!35638 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1119058 () Bool)

(declare-fun res!747546 () Bool)

(assert (=> b!1119058 (=> (not res!747546) (not e!637386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1119058 (= res!747546 (validKeyInArray!0 k!934))))

(declare-fun b!1119059 () Bool)

(declare-fun res!747543 () Bool)

(assert (=> b!1119059 (=> (not res!747543) (not e!637386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1119059 (= res!747543 (validMask!0 mask!1564))))

(declare-fun b!1119060 () Bool)

(declare-fun res!747542 () Bool)

(assert (=> b!1119060 (=> (not res!747542) (not e!637386))))

(assert (=> b!1119060 (= res!747542 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35637 _keys!1208))))))

(declare-fun mapIsEmpty!43873 () Bool)

(declare-fun mapRes!43873 () Bool)

(assert (=> mapIsEmpty!43873 mapRes!43873))

(declare-fun b!1119061 () Bool)

(declare-fun e!637387 () Bool)

(declare-fun tp_is_empty!28037 () Bool)

(assert (=> b!1119061 (= e!637387 tp_is_empty!28037)))

(declare-fun mapNonEmpty!43873 () Bool)

(declare-fun tp!83225 () Bool)

(declare-fun e!637388 () Bool)

(assert (=> mapNonEmpty!43873 (= mapRes!43873 (and tp!83225 e!637388))))

(declare-fun mapValue!43873 () ValueCell!13309)

(declare-fun mapRest!43873 () (Array (_ BitVec 32) ValueCell!13309))

(declare-fun mapKey!43873 () (_ BitVec 32))

(assert (=> mapNonEmpty!43873 (= (arr!35101 _values!996) (store mapRest!43873 mapKey!43873 mapValue!43873))))

(declare-fun res!747549 () Bool)

(assert (=> start!97842 (=> (not res!747549) (not e!637386))))

(assert (=> start!97842 (= res!747549 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35637 _keys!1208))))))

(assert (=> start!97842 e!637386))

(assert (=> start!97842 tp_is_empty!28037))

(declare-fun array_inv!26830 (array!72902) Bool)

(assert (=> start!97842 (array_inv!26830 _keys!1208)))

(assert (=> start!97842 true))

(assert (=> start!97842 tp!83226))

(declare-fun e!637385 () Bool)

(declare-fun array_inv!26831 (array!72904) Bool)

(assert (=> start!97842 (and (array_inv!26831 _values!996) e!637385)))

(declare-fun b!1119062 () Bool)

(assert (=> b!1119062 (= e!637385 (and e!637387 mapRes!43873))))

(declare-fun condMapEmpty!43873 () Bool)

(declare-fun mapDefault!43873 () ValueCell!13309)

