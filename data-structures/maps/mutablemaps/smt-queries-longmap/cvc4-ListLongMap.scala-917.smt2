; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20614 () Bool)

(assert start!20614)

(declare-fun b_free!5261 () Bool)

(declare-fun b_next!5261 () Bool)

(assert (=> start!20614 (= b_free!5261 (not b_next!5261))))

(declare-fun tp!18815 () Bool)

(declare-fun b_and!12025 () Bool)

(assert (=> start!20614 (= tp!18815 b_and!12025)))

(declare-fun b!205300 () Bool)

(declare-fun res!99182 () Bool)

(declare-fun e!134275 () Bool)

(assert (=> b!205300 (=> (not res!99182) (not e!134275))))

(declare-datatypes ((array!9446 0))(
  ( (array!9447 (arr!4473 (Array (_ BitVec 32) (_ BitVec 64))) (size!4798 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9446)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6469 0))(
  ( (V!6470 (val!2603 Int)) )
))
(declare-datatypes ((ValueCell!2215 0))(
  ( (ValueCellFull!2215 (v!4569 V!6469)) (EmptyCell!2215) )
))
(declare-datatypes ((array!9448 0))(
  ( (array!9449 (arr!4474 (Array (_ BitVec 32) ValueCell!2215)) (size!4799 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9448)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!205300 (= res!99182 (and (= (size!4799 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4798 _keys!825) (size!4799 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!205301 () Bool)

(declare-fun e!134270 () Bool)

(declare-fun tp_is_empty!5117 () Bool)

(assert (=> b!205301 (= e!134270 tp_is_empty!5117)))

(declare-fun mapNonEmpty!8744 () Bool)

(declare-fun mapRes!8744 () Bool)

(declare-fun tp!18814 () Bool)

(declare-fun e!134272 () Bool)

(assert (=> mapNonEmpty!8744 (= mapRes!8744 (and tp!18814 e!134272))))

(declare-fun mapValue!8744 () ValueCell!2215)

(declare-fun mapRest!8744 () (Array (_ BitVec 32) ValueCell!2215))

(declare-fun mapKey!8744 () (_ BitVec 32))

(assert (=> mapNonEmpty!8744 (= (arr!4474 _values!649) (store mapRest!8744 mapKey!8744 mapValue!8744))))

(declare-fun res!99184 () Bool)

(assert (=> start!20614 (=> (not res!99184) (not e!134275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20614 (= res!99184 (validMask!0 mask!1149))))

(assert (=> start!20614 e!134275))

(declare-fun e!134269 () Bool)

(declare-fun array_inv!2947 (array!9448) Bool)

(assert (=> start!20614 (and (array_inv!2947 _values!649) e!134269)))

(assert (=> start!20614 true))

(assert (=> start!20614 tp_is_empty!5117))

(declare-fun array_inv!2948 (array!9446) Bool)

(assert (=> start!20614 (array_inv!2948 _keys!825)))

(assert (=> start!20614 tp!18815))

(declare-fun b!205302 () Bool)

(declare-fun res!99179 () Bool)

(assert (=> b!205302 (=> (not res!99179) (not e!134275))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!205302 (= res!99179 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4798 _keys!825))))))

(declare-fun b!205303 () Bool)

(declare-fun res!99186 () Bool)

(assert (=> b!205303 (=> (not res!99186) (not e!134275))))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!205303 (= res!99186 (= (select (arr!4473 _keys!825) i!601) k!843))))

(declare-fun b!205304 () Bool)

(assert (=> b!205304 (= e!134272 tp_is_empty!5117)))

(declare-fun b!205305 () Bool)

(declare-fun e!134271 () Bool)

(assert (=> b!205305 (= e!134275 (not e!134271))))

(declare-fun res!99181 () Bool)

(assert (=> b!205305 (=> res!99181 e!134271)))

(assert (=> b!205305 (= res!99181 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3944 0))(
  ( (tuple2!3945 (_1!1982 (_ BitVec 64)) (_2!1982 V!6469)) )
))
(declare-datatypes ((List!2866 0))(
  ( (Nil!2863) (Cons!2862 (h!3504 tuple2!3944) (t!7805 List!2866)) )
))
(declare-datatypes ((ListLongMap!2871 0))(
  ( (ListLongMap!2872 (toList!1451 List!2866)) )
))
(declare-fun lt!104500 () ListLongMap!2871)

(declare-fun zeroValue!615 () V!6469)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6469)

(declare-fun getCurrentListMap!1017 (array!9446 array!9448 (_ BitVec 32) (_ BitVec 32) V!6469 V!6469 (_ BitVec 32) Int) ListLongMap!2871)

(assert (=> b!205305 (= lt!104500 (getCurrentListMap!1017 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104506 () array!9448)

(declare-fun lt!104505 () ListLongMap!2871)

(assert (=> b!205305 (= lt!104505 (getCurrentListMap!1017 _keys!825 lt!104506 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!104507 () ListLongMap!2871)

(declare-fun lt!104501 () ListLongMap!2871)

(assert (=> b!205305 (and (= lt!104507 lt!104501) (= lt!104501 lt!104507))))

(declare-fun lt!104499 () ListLongMap!2871)

(declare-fun lt!104503 () tuple2!3944)

(declare-fun +!468 (ListLongMap!2871 tuple2!3944) ListLongMap!2871)

(assert (=> b!205305 (= lt!104501 (+!468 lt!104499 lt!104503))))

(declare-fun v!520 () V!6469)

(assert (=> b!205305 (= lt!104503 (tuple2!3945 k!843 v!520))))

(declare-datatypes ((Unit!6235 0))(
  ( (Unit!6236) )
))
(declare-fun lt!104498 () Unit!6235)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!130 (array!9446 array!9448 (_ BitVec 32) (_ BitVec 32) V!6469 V!6469 (_ BitVec 32) (_ BitVec 64) V!6469 (_ BitVec 32) Int) Unit!6235)

(assert (=> b!205305 (= lt!104498 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!130 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!388 (array!9446 array!9448 (_ BitVec 32) (_ BitVec 32) V!6469 V!6469 (_ BitVec 32) Int) ListLongMap!2871)

(assert (=> b!205305 (= lt!104507 (getCurrentListMapNoExtraKeys!388 _keys!825 lt!104506 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!205305 (= lt!104506 (array!9449 (store (arr!4474 _values!649) i!601 (ValueCellFull!2215 v!520)) (size!4799 _values!649)))))

(assert (=> b!205305 (= lt!104499 (getCurrentListMapNoExtraKeys!388 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!205306 () Bool)

(declare-fun res!99185 () Bool)

(assert (=> b!205306 (=> (not res!99185) (not e!134275))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9446 (_ BitVec 32)) Bool)

(assert (=> b!205306 (= res!99185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!205307 () Bool)

(declare-fun res!99187 () Bool)

(assert (=> b!205307 (=> (not res!99187) (not e!134275))))

(declare-datatypes ((List!2867 0))(
  ( (Nil!2864) (Cons!2863 (h!3505 (_ BitVec 64)) (t!7806 List!2867)) )
))
(declare-fun arrayNoDuplicates!0 (array!9446 (_ BitVec 32) List!2867) Bool)

(assert (=> b!205307 (= res!99187 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2864))))

(declare-fun mapIsEmpty!8744 () Bool)

(assert (=> mapIsEmpty!8744 mapRes!8744))

(declare-fun b!205308 () Bool)

(declare-fun res!99183 () Bool)

(assert (=> b!205308 (=> (not res!99183) (not e!134275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!205308 (= res!99183 (validKeyInArray!0 k!843))))

(declare-fun b!205309 () Bool)

(assert (=> b!205309 (= e!134269 (and e!134270 mapRes!8744))))

(declare-fun condMapEmpty!8744 () Bool)

(declare-fun mapDefault!8744 () ValueCell!2215)

