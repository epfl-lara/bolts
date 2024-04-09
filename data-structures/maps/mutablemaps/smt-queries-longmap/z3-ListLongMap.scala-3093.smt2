; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43508 () Bool)

(assert start!43508)

(declare-fun b_free!12279 () Bool)

(declare-fun b_next!12279 () Bool)

(assert (=> start!43508 (= b_free!12279 (not b_next!12279))))

(declare-fun tp!43120 () Bool)

(declare-fun b_and!21057 () Bool)

(assert (=> start!43508 (= tp!43120 b_and!21057)))

(declare-fun b!481790 () Bool)

(declare-fun res!287284 () Bool)

(declare-fun e!283491 () Bool)

(assert (=> b!481790 (=> (not res!287284) (not e!283491))))

(declare-datatypes ((array!31213 0))(
  ( (array!31214 (arr!15006 (Array (_ BitVec 32) (_ BitVec 64))) (size!15364 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31213)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31213 (_ BitVec 32)) Bool)

(assert (=> b!481790 (= res!287284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481791 () Bool)

(declare-fun e!283489 () Bool)

(declare-fun e!283492 () Bool)

(declare-fun mapRes!22396 () Bool)

(assert (=> b!481791 (= e!283489 (and e!283492 mapRes!22396))))

(declare-fun condMapEmpty!22396 () Bool)

(declare-datatypes ((V!19459 0))(
  ( (V!19460 (val!6943 Int)) )
))
(declare-datatypes ((ValueCell!6534 0))(
  ( (ValueCellFull!6534 (v!9232 V!19459)) (EmptyCell!6534) )
))
(declare-datatypes ((array!31215 0))(
  ( (array!31216 (arr!15007 (Array (_ BitVec 32) ValueCell!6534)) (size!15365 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31215)

(declare-fun mapDefault!22396 () ValueCell!6534)

(assert (=> b!481791 (= condMapEmpty!22396 (= (arr!15007 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6534)) mapDefault!22396)))))

(declare-fun b!481792 () Bool)

(declare-fun res!287282 () Bool)

(assert (=> b!481792 (=> (not res!287282) (not e!283491))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!481792 (= res!287282 (and (= (size!15365 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15364 _keys!1874) (size!15365 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481793 () Bool)

(declare-fun tp_is_empty!13791 () Bool)

(assert (=> b!481793 (= e!283492 tp_is_empty!13791)))

(declare-fun res!287283 () Bool)

(assert (=> start!43508 (=> (not res!287283) (not e!283491))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43508 (= res!287283 (validMask!0 mask!2352))))

(assert (=> start!43508 e!283491))

(assert (=> start!43508 true))

(assert (=> start!43508 tp_is_empty!13791))

(declare-fun array_inv!10804 (array!31215) Bool)

(assert (=> start!43508 (and (array_inv!10804 _values!1516) e!283489)))

(assert (=> start!43508 tp!43120))

(declare-fun array_inv!10805 (array!31213) Bool)

(assert (=> start!43508 (array_inv!10805 _keys!1874)))

(declare-fun b!481794 () Bool)

(declare-fun res!287281 () Bool)

(assert (=> b!481794 (=> (not res!287281) (not e!283491))))

(declare-datatypes ((List!9228 0))(
  ( (Nil!9225) (Cons!9224 (h!10080 (_ BitVec 64)) (t!15450 List!9228)) )
))
(declare-fun arrayNoDuplicates!0 (array!31213 (_ BitVec 32) List!9228) Bool)

(assert (=> b!481794 (= res!287281 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9225))))

(declare-fun b!481795 () Bool)

(assert (=> b!481795 (= e!283491 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!218618 () Bool)

(declare-fun minValue!1458 () V!19459)

(declare-fun zeroValue!1458 () V!19459)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9114 0))(
  ( (tuple2!9115 (_1!4567 (_ BitVec 64)) (_2!4567 V!19459)) )
))
(declare-datatypes ((List!9229 0))(
  ( (Nil!9226) (Cons!9225 (h!10081 tuple2!9114) (t!15451 List!9229)) )
))
(declare-datatypes ((ListLongMap!8041 0))(
  ( (ListLongMap!8042 (toList!4036 List!9229)) )
))
(declare-fun contains!2647 (ListLongMap!8041 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2328 (array!31213 array!31215 (_ BitVec 32) (_ BitVec 32) V!19459 V!19459 (_ BitVec 32) Int) ListLongMap!8041)

(assert (=> b!481795 (= lt!218618 (contains!2647 (getCurrentListMap!2328 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapNonEmpty!22396 () Bool)

(declare-fun tp!43119 () Bool)

(declare-fun e!283490 () Bool)

(assert (=> mapNonEmpty!22396 (= mapRes!22396 (and tp!43119 e!283490))))

(declare-fun mapKey!22396 () (_ BitVec 32))

(declare-fun mapRest!22396 () (Array (_ BitVec 32) ValueCell!6534))

(declare-fun mapValue!22396 () ValueCell!6534)

(assert (=> mapNonEmpty!22396 (= (arr!15007 _values!1516) (store mapRest!22396 mapKey!22396 mapValue!22396))))

(declare-fun mapIsEmpty!22396 () Bool)

(assert (=> mapIsEmpty!22396 mapRes!22396))

(declare-fun b!481796 () Bool)

(assert (=> b!481796 (= e!283490 tp_is_empty!13791)))

(assert (= (and start!43508 res!287283) b!481792))

(assert (= (and b!481792 res!287282) b!481790))

(assert (= (and b!481790 res!287284) b!481794))

(assert (= (and b!481794 res!287281) b!481795))

(assert (= (and b!481791 condMapEmpty!22396) mapIsEmpty!22396))

(assert (= (and b!481791 (not condMapEmpty!22396)) mapNonEmpty!22396))

(get-info :version)

(assert (= (and mapNonEmpty!22396 ((_ is ValueCellFull!6534) mapValue!22396)) b!481796))

(assert (= (and b!481791 ((_ is ValueCellFull!6534) mapDefault!22396)) b!481793))

(assert (= start!43508 b!481791))

(declare-fun m!463187 () Bool)

(assert (=> b!481790 m!463187))

(declare-fun m!463189 () Bool)

(assert (=> b!481794 m!463189))

(declare-fun m!463191 () Bool)

(assert (=> start!43508 m!463191))

(declare-fun m!463193 () Bool)

(assert (=> start!43508 m!463193))

(declare-fun m!463195 () Bool)

(assert (=> start!43508 m!463195))

(declare-fun m!463197 () Bool)

(assert (=> mapNonEmpty!22396 m!463197))

(declare-fun m!463199 () Bool)

(assert (=> b!481795 m!463199))

(assert (=> b!481795 m!463199))

(declare-fun m!463201 () Bool)

(assert (=> b!481795 m!463201))

(check-sat (not b_next!12279) tp_is_empty!13791 (not mapNonEmpty!22396) b_and!21057 (not b!481795) (not start!43508) (not b!481794) (not b!481790))
(check-sat b_and!21057 (not b_next!12279))
