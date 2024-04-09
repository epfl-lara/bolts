; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97796 () Bool)

(assert start!97796)

(declare-fun b_free!23461 () Bool)

(declare-fun b_next!23461 () Bool)

(assert (=> start!97796 (= b_free!23461 (not b_next!23461))))

(declare-fun tp!83087 () Bool)

(declare-fun b_and!37757 () Bool)

(assert (=> start!97796 (= tp!83087 b_and!37757)))

(declare-fun mapIsEmpty!43804 () Bool)

(declare-fun mapRes!43804 () Bool)

(assert (=> mapIsEmpty!43804 mapRes!43804))

(declare-fun b!1118070 () Bool)

(declare-fun res!746786 () Bool)

(declare-fun e!636908 () Bool)

(assert (=> b!1118070 (=> (not res!746786) (not e!636908))))

(declare-datatypes ((array!72812 0))(
  ( (array!72813 (arr!35055 (Array (_ BitVec 32) (_ BitVec 64))) (size!35592 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72812)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72812 (_ BitVec 32)) Bool)

(assert (=> b!1118070 (= res!746786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118072 () Bool)

(declare-fun res!746784 () Bool)

(assert (=> b!1118072 (=> (not res!746784) (not e!636908))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1118072 (= res!746784 (= (select (arr!35055 _keys!1208) i!673) k!934))))

(declare-fun b!1118073 () Bool)

(declare-fun e!636905 () Bool)

(declare-fun tp_is_empty!27991 () Bool)

(assert (=> b!1118073 (= e!636905 tp_is_empty!27991)))

(declare-fun b!1118074 () Bool)

(declare-fun res!746787 () Bool)

(assert (=> b!1118074 (=> (not res!746787) (not e!636908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118074 (= res!746787 (validMask!0 mask!1564))))

(declare-fun b!1118075 () Bool)

(declare-fun res!746790 () Bool)

(assert (=> b!1118075 (=> (not res!746790) (not e!636908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118075 (= res!746790 (validKeyInArray!0 k!934))))

(declare-fun b!1118076 () Bool)

(declare-fun e!636902 () Bool)

(assert (=> b!1118076 (= e!636908 e!636902)))

(declare-fun res!746788 () Bool)

(assert (=> b!1118076 (=> (not res!746788) (not e!636902))))

(declare-fun lt!497398 () array!72812)

(assert (=> b!1118076 (= res!746788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497398 mask!1564))))

(assert (=> b!1118076 (= lt!497398 (array!72813 (store (arr!35055 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35592 _keys!1208)))))

(declare-fun res!746785 () Bool)

(assert (=> start!97796 (=> (not res!746785) (not e!636908))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97796 (= res!746785 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35592 _keys!1208))))))

(assert (=> start!97796 e!636908))

(assert (=> start!97796 tp_is_empty!27991))

(declare-fun array_inv!26798 (array!72812) Bool)

(assert (=> start!97796 (array_inv!26798 _keys!1208)))

(assert (=> start!97796 true))

(assert (=> start!97796 tp!83087))

(declare-datatypes ((V!42449 0))(
  ( (V!42450 (val!14052 Int)) )
))
(declare-datatypes ((ValueCell!13286 0))(
  ( (ValueCellFull!13286 (v!16686 V!42449)) (EmptyCell!13286) )
))
(declare-datatypes ((array!72814 0))(
  ( (array!72815 (arr!35056 (Array (_ BitVec 32) ValueCell!13286)) (size!35593 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72814)

(declare-fun e!636904 () Bool)

(declare-fun array_inv!26799 (array!72814) Bool)

(assert (=> start!97796 (and (array_inv!26799 _values!996) e!636904)))

(declare-fun b!1118071 () Bool)

(declare-fun res!746789 () Bool)

(assert (=> b!1118071 (=> (not res!746789) (not e!636908))))

(assert (=> b!1118071 (= res!746789 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35592 _keys!1208))))))

(declare-fun b!1118077 () Bool)

(declare-fun e!636907 () Bool)

(assert (=> b!1118077 (= e!636907 true)))

(declare-fun zeroValue!944 () V!42449)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17678 0))(
  ( (tuple2!17679 (_1!8849 (_ BitVec 64)) (_2!8849 V!42449)) )
))
(declare-datatypes ((List!24512 0))(
  ( (Nil!24509) (Cons!24508 (h!25717 tuple2!17678) (t!35000 List!24512)) )
))
(declare-datatypes ((ListLongMap!15659 0))(
  ( (ListLongMap!15660 (toList!7845 List!24512)) )
))
(declare-fun lt!497400 () ListLongMap!15659)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42449)

(declare-fun getCurrentListMapNoExtraKeys!4306 (array!72812 array!72814 (_ BitVec 32) (_ BitVec 32) V!42449 V!42449 (_ BitVec 32) Int) ListLongMap!15659)

(assert (=> b!1118077 (= lt!497400 (getCurrentListMapNoExtraKeys!4306 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118078 () Bool)

(declare-fun res!746780 () Bool)

(assert (=> b!1118078 (=> (not res!746780) (not e!636908))))

(assert (=> b!1118078 (= res!746780 (and (= (size!35593 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35592 _keys!1208) (size!35593 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!43804 () Bool)

(declare-fun tp!83088 () Bool)

(declare-fun e!636906 () Bool)

(assert (=> mapNonEmpty!43804 (= mapRes!43804 (and tp!83088 e!636906))))

(declare-fun mapRest!43804 () (Array (_ BitVec 32) ValueCell!13286))

(declare-fun mapValue!43804 () ValueCell!13286)

(declare-fun mapKey!43804 () (_ BitVec 32))

(assert (=> mapNonEmpty!43804 (= (arr!35056 _values!996) (store mapRest!43804 mapKey!43804 mapValue!43804))))

(declare-fun b!1118079 () Bool)

(declare-fun res!746782 () Bool)

(assert (=> b!1118079 (=> (not res!746782) (not e!636908))))

(declare-datatypes ((List!24513 0))(
  ( (Nil!24510) (Cons!24509 (h!25718 (_ BitVec 64)) (t!35001 List!24513)) )
))
(declare-fun arrayNoDuplicates!0 (array!72812 (_ BitVec 32) List!24513) Bool)

(assert (=> b!1118079 (= res!746782 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24510))))

(declare-fun b!1118080 () Bool)

(assert (=> b!1118080 (= e!636902 (not e!636907))))

(declare-fun res!746783 () Bool)

(assert (=> b!1118080 (=> res!746783 e!636907)))

(assert (=> b!1118080 (= res!746783 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72812 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118080 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36605 0))(
  ( (Unit!36606) )
))
(declare-fun lt!497399 () Unit!36605)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72812 (_ BitVec 64) (_ BitVec 32)) Unit!36605)

(assert (=> b!1118080 (= lt!497399 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1118081 () Bool)

(assert (=> b!1118081 (= e!636904 (and e!636905 mapRes!43804))))

(declare-fun condMapEmpty!43804 () Bool)

(declare-fun mapDefault!43804 () ValueCell!13286)

