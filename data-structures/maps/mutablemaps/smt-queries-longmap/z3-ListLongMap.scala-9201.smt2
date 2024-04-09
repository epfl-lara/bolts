; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!110592 () Bool)

(assert start!110592)

(declare-fun b_free!29391 () Bool)

(declare-fun b_next!29391 () Bool)

(assert (=> start!110592 (= b_free!29391 (not b_next!29391))))

(declare-fun tp!103496 () Bool)

(declare-fun b_and!47609 () Bool)

(assert (=> start!110592 (= tp!103496 b_and!47609)))

(declare-fun b!1307730 () Bool)

(declare-fun e!746268 () Bool)

(declare-fun tp_is_empty!35121 () Bool)

(assert (=> b!1307730 (= e!746268 tp_is_empty!35121)))

(declare-fun b!1307731 () Bool)

(declare-fun res!868137 () Bool)

(declare-fun e!746267 () Bool)

(assert (=> b!1307731 (=> (not res!868137) (not e!746267))))

(declare-datatypes ((array!87213 0))(
  ( (array!87214 (arr!42082 (Array (_ BitVec 32) (_ BitVec 64))) (size!42633 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87213)

(declare-datatypes ((List!30040 0))(
  ( (Nil!30037) (Cons!30036 (h!31245 (_ BitVec 64)) (t!43653 List!30040)) )
))
(declare-fun arrayNoDuplicates!0 (array!87213 (_ BitVec 32) List!30040) Bool)

(assert (=> b!1307731 (= res!868137 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30037))))

(declare-fun b!1307732 () Bool)

(assert (=> b!1307732 (= e!746267 false)))

(declare-fun defaultEntry!1357 () Int)

(declare-fun lt!585037 () Bool)

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun k0!1175 () (_ BitVec 64))

(declare-datatypes ((V!51931 0))(
  ( (V!51932 (val!17635 Int)) )
))
(declare-fun minValue!1296 () V!51931)

(declare-datatypes ((ValueCell!16662 0))(
  ( (ValueCellFull!16662 (v!20260 V!51931)) (EmptyCell!16662) )
))
(declare-datatypes ((array!87215 0))(
  ( (array!87216 (arr!42083 (Array (_ BitVec 32) ValueCell!16662)) (size!42634 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87215)

(declare-fun zeroValue!1296 () V!51931)

(declare-fun extraKeys!1275 () (_ BitVec 32))

(declare-fun from!2020 () (_ BitVec 32))

(declare-datatypes ((tuple2!22868 0))(
  ( (tuple2!22869 (_1!11444 (_ BitVec 64)) (_2!11444 V!51931)) )
))
(declare-datatypes ((List!30041 0))(
  ( (Nil!30038) (Cons!30037 (h!31246 tuple2!22868) (t!43654 List!30041)) )
))
(declare-datatypes ((ListLongMap!20537 0))(
  ( (ListLongMap!20538 (toList!10284 List!30041)) )
))
(declare-fun contains!8370 (ListLongMap!20537 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5240 (array!87213 array!87215 (_ BitVec 32) (_ BitVec 32) V!51931 V!51931 (_ BitVec 32) Int) ListLongMap!20537)

(assert (=> b!1307732 (= lt!585037 (contains!8370 (getCurrentListMap!5240 _keys!1628 _values!1354 mask!2040 extraKeys!1275 zeroValue!1296 minValue!1296 from!2020 defaultEntry!1357) k0!1175))))

(declare-fun b!1307733 () Bool)

(declare-fun e!746269 () Bool)

(assert (=> b!1307733 (= e!746269 tp_is_empty!35121)))

(declare-fun mapIsEmpty!54310 () Bool)

(declare-fun mapRes!54310 () Bool)

(assert (=> mapIsEmpty!54310 mapRes!54310))

(declare-fun b!1307734 () Bool)

(declare-fun res!868135 () Bool)

(assert (=> b!1307734 (=> (not res!868135) (not e!746267))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87213 (_ BitVec 32)) Bool)

(assert (=> b!1307734 (= res!868135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun res!868136 () Bool)

(assert (=> start!110592 (=> (not res!868136) (not e!746267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110592 (= res!868136 (validMask!0 mask!2040))))

(assert (=> start!110592 e!746267))

(assert (=> start!110592 tp!103496))

(declare-fun array_inv!31809 (array!87213) Bool)

(assert (=> start!110592 (array_inv!31809 _keys!1628)))

(assert (=> start!110592 true))

(assert (=> start!110592 tp_is_empty!35121))

(declare-fun e!746270 () Bool)

(declare-fun array_inv!31810 (array!87215) Bool)

(assert (=> start!110592 (and (array_inv!31810 _values!1354) e!746270)))

(declare-fun b!1307735 () Bool)

(assert (=> b!1307735 (= e!746270 (and e!746268 mapRes!54310))))

(declare-fun condMapEmpty!54310 () Bool)

(declare-fun mapDefault!54310 () ValueCell!16662)

(assert (=> b!1307735 (= condMapEmpty!54310 (= (arr!42083 _values!1354) ((as const (Array (_ BitVec 32) ValueCell!16662)) mapDefault!54310)))))

(declare-fun mapNonEmpty!54310 () Bool)

(declare-fun tp!103495 () Bool)

(assert (=> mapNonEmpty!54310 (= mapRes!54310 (and tp!103495 e!746269))))

(declare-fun mapKey!54310 () (_ BitVec 32))

(declare-fun mapValue!54310 () ValueCell!16662)

(declare-fun mapRest!54310 () (Array (_ BitVec 32) ValueCell!16662))

(assert (=> mapNonEmpty!54310 (= (arr!42083 _values!1354) (store mapRest!54310 mapKey!54310 mapValue!54310))))

(declare-fun b!1307736 () Bool)

(declare-fun res!868139 () Bool)

(assert (=> b!1307736 (=> (not res!868139) (not e!746267))))

(assert (=> b!1307736 (= res!868139 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42633 _keys!1628)) (not (= k0!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1307737 () Bool)

(declare-fun res!868138 () Bool)

(assert (=> b!1307737 (=> (not res!868138) (not e!746267))))

(assert (=> b!1307737 (= res!868138 (and (= (size!42634 _values!1354) (bvadd #b00000000000000000000000000000001 mask!2040)) (= (size!42633 _keys!1628) (size!42634 _values!1354)) (bvsge mask!2040 #b00000000000000000000000000000000) (bvsge extraKeys!1275 #b00000000000000000000000000000000) (bvsle extraKeys!1275 #b00000000000000000000000000000011)))))

(assert (= (and start!110592 res!868136) b!1307737))

(assert (= (and b!1307737 res!868138) b!1307734))

(assert (= (and b!1307734 res!868135) b!1307731))

(assert (= (and b!1307731 res!868137) b!1307736))

(assert (= (and b!1307736 res!868139) b!1307732))

(assert (= (and b!1307735 condMapEmpty!54310) mapIsEmpty!54310))

(assert (= (and b!1307735 (not condMapEmpty!54310)) mapNonEmpty!54310))

(get-info :version)

(assert (= (and mapNonEmpty!54310 ((_ is ValueCellFull!16662) mapValue!54310)) b!1307733))

(assert (= (and b!1307735 ((_ is ValueCellFull!16662) mapDefault!54310)) b!1307730))

(assert (= start!110592 b!1307735))

(declare-fun m!1198333 () Bool)

(assert (=> b!1307734 m!1198333))

(declare-fun m!1198335 () Bool)

(assert (=> b!1307731 m!1198335))

(declare-fun m!1198337 () Bool)

(assert (=> b!1307732 m!1198337))

(assert (=> b!1307732 m!1198337))

(declare-fun m!1198339 () Bool)

(assert (=> b!1307732 m!1198339))

(declare-fun m!1198341 () Bool)

(assert (=> start!110592 m!1198341))

(declare-fun m!1198343 () Bool)

(assert (=> start!110592 m!1198343))

(declare-fun m!1198345 () Bool)

(assert (=> start!110592 m!1198345))

(declare-fun m!1198347 () Bool)

(assert (=> mapNonEmpty!54310 m!1198347))

(check-sat (not b!1307732) b_and!47609 tp_is_empty!35121 (not b!1307731) (not b!1307734) (not start!110592) (not mapNonEmpty!54310) (not b_next!29391))
(check-sat b_and!47609 (not b_next!29391))
