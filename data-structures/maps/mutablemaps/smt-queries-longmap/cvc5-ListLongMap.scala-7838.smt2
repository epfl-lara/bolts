; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97808 () Bool)

(assert start!97808)

(declare-fun b_free!23473 () Bool)

(declare-fun b_next!23473 () Bool)

(assert (=> start!97808 (= b_free!23473 (not b_next!23473))))

(declare-fun tp!83123 () Bool)

(declare-fun b_and!37769 () Bool)

(assert (=> start!97808 (= tp!83123 b_and!37769)))

(declare-fun b!1118322 () Bool)

(declare-fun res!746982 () Bool)

(declare-fun e!637030 () Bool)

(assert (=> b!1118322 (=> (not res!746982) (not e!637030))))

(declare-datatypes ((array!72836 0))(
  ( (array!72837 (arr!35067 (Array (_ BitVec 32) (_ BitVec 64))) (size!35604 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72836)

(declare-datatypes ((List!24522 0))(
  ( (Nil!24519) (Cons!24518 (h!25727 (_ BitVec 64)) (t!35010 List!24522)) )
))
(declare-fun arrayNoDuplicates!0 (array!72836 (_ BitVec 32) List!24522) Bool)

(assert (=> b!1118322 (= res!746982 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24519))))

(declare-fun b!1118323 () Bool)

(declare-fun res!746986 () Bool)

(declare-fun e!637032 () Bool)

(assert (=> b!1118323 (=> (not res!746986) (not e!637032))))

(declare-fun lt!497452 () array!72836)

(assert (=> b!1118323 (= res!746986 (arrayNoDuplicates!0 lt!497452 #b00000000000000000000000000000000 Nil!24519))))

(declare-fun b!1118324 () Bool)

(declare-fun res!746985 () Bool)

(assert (=> b!1118324 (=> (not res!746985) (not e!637030))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118324 (= res!746985 (validMask!0 mask!1564))))

(declare-fun b!1118325 () Bool)

(declare-fun res!746984 () Bool)

(assert (=> b!1118325 (=> (not res!746984) (not e!637030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72836 (_ BitVec 32)) Bool)

(assert (=> b!1118325 (= res!746984 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118326 () Bool)

(declare-fun e!637034 () Bool)

(assert (=> b!1118326 (= e!637034 true)))

(declare-datatypes ((V!42465 0))(
  ( (V!42466 (val!14058 Int)) )
))
(declare-fun zeroValue!944 () V!42465)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17686 0))(
  ( (tuple2!17687 (_1!8853 (_ BitVec 64)) (_2!8853 V!42465)) )
))
(declare-datatypes ((List!24523 0))(
  ( (Nil!24520) (Cons!24519 (h!25728 tuple2!17686) (t!35011 List!24523)) )
))
(declare-datatypes ((ListLongMap!15667 0))(
  ( (ListLongMap!15668 (toList!7849 List!24523)) )
))
(declare-fun lt!497453 () ListLongMap!15667)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13292 0))(
  ( (ValueCellFull!13292 (v!16692 V!42465)) (EmptyCell!13292) )
))
(declare-datatypes ((array!72838 0))(
  ( (array!72839 (arr!35068 (Array (_ BitVec 32) ValueCell!13292)) (size!35605 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72838)

(declare-fun minValue!944 () V!42465)

(declare-fun getCurrentListMapNoExtraKeys!4310 (array!72836 array!72838 (_ BitVec 32) (_ BitVec 32) V!42465 V!42465 (_ BitVec 32) Int) ListLongMap!15667)

(assert (=> b!1118326 (= lt!497453 (getCurrentListMapNoExtraKeys!4310 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!746979 () Bool)

(assert (=> start!97808 (=> (not res!746979) (not e!637030))))

(assert (=> start!97808 (= res!746979 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35604 _keys!1208))))))

(assert (=> start!97808 e!637030))

(declare-fun tp_is_empty!28003 () Bool)

(assert (=> start!97808 tp_is_empty!28003))

(declare-fun array_inv!26808 (array!72836) Bool)

(assert (=> start!97808 (array_inv!26808 _keys!1208)))

(assert (=> start!97808 true))

(assert (=> start!97808 tp!83123))

(declare-fun e!637031 () Bool)

(declare-fun array_inv!26809 (array!72838) Bool)

(assert (=> start!97808 (and (array_inv!26809 _values!996) e!637031)))

(declare-fun mapIsEmpty!43822 () Bool)

(declare-fun mapRes!43822 () Bool)

(assert (=> mapIsEmpty!43822 mapRes!43822))

(declare-fun mapNonEmpty!43822 () Bool)

(declare-fun tp!83124 () Bool)

(declare-fun e!637029 () Bool)

(assert (=> mapNonEmpty!43822 (= mapRes!43822 (and tp!83124 e!637029))))

(declare-fun mapKey!43822 () (_ BitVec 32))

(declare-fun mapRest!43822 () (Array (_ BitVec 32) ValueCell!13292))

(declare-fun mapValue!43822 () ValueCell!13292)

(assert (=> mapNonEmpty!43822 (= (arr!35068 _values!996) (store mapRest!43822 mapKey!43822 mapValue!43822))))

(declare-fun b!1118327 () Bool)

(declare-fun res!746978 () Bool)

(assert (=> b!1118327 (=> (not res!746978) (not e!637030))))

(assert (=> b!1118327 (= res!746978 (and (= (size!35605 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35604 _keys!1208) (size!35605 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118328 () Bool)

(declare-fun e!637033 () Bool)

(assert (=> b!1118328 (= e!637033 tp_is_empty!28003)))

(declare-fun b!1118329 () Bool)

(assert (=> b!1118329 (= e!637031 (and e!637033 mapRes!43822))))

(declare-fun condMapEmpty!43822 () Bool)

(declare-fun mapDefault!43822 () ValueCell!13292)

