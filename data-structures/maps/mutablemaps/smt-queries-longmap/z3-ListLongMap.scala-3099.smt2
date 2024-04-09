; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43544 () Bool)

(assert start!43544)

(declare-fun b_free!12315 () Bool)

(declare-fun b_next!12315 () Bool)

(assert (=> start!43544 (= b_free!12315 (not b_next!12315))))

(declare-fun tp!43227 () Bool)

(declare-fun b_and!21093 () Bool)

(assert (=> start!43544 (= tp!43227 b_and!21093)))

(declare-fun mapNonEmpty!22450 () Bool)

(declare-fun mapRes!22450 () Bool)

(declare-fun tp!43228 () Bool)

(declare-fun e!283761 () Bool)

(assert (=> mapNonEmpty!22450 (= mapRes!22450 (and tp!43228 e!283761))))

(declare-datatypes ((V!19507 0))(
  ( (V!19508 (val!6961 Int)) )
))
(declare-datatypes ((ValueCell!6552 0))(
  ( (ValueCellFull!6552 (v!9250 V!19507)) (EmptyCell!6552) )
))
(declare-fun mapValue!22450 () ValueCell!6552)

(declare-fun mapKey!22450 () (_ BitVec 32))

(declare-datatypes ((array!31283 0))(
  ( (array!31284 (arr!15041 (Array (_ BitVec 32) ValueCell!6552)) (size!15399 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31283)

(declare-fun mapRest!22450 () (Array (_ BitVec 32) ValueCell!6552))

(assert (=> mapNonEmpty!22450 (= (arr!15041 _values!1516) (store mapRest!22450 mapKey!22450 mapValue!22450))))

(declare-fun mapIsEmpty!22450 () Bool)

(assert (=> mapIsEmpty!22450 mapRes!22450))

(declare-fun b!482168 () Bool)

(declare-fun e!283762 () Bool)

(declare-fun e!283759 () Bool)

(assert (=> b!482168 (= e!283762 (and e!283759 mapRes!22450))))

(declare-fun condMapEmpty!22450 () Bool)

(declare-fun mapDefault!22450 () ValueCell!6552)

(assert (=> b!482168 (= condMapEmpty!22450 (= (arr!15041 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6552)) mapDefault!22450)))))

(declare-fun b!482169 () Bool)

(declare-fun tp_is_empty!13827 () Bool)

(assert (=> b!482169 (= e!283759 tp_is_empty!13827)))

(declare-fun b!482170 () Bool)

(declare-fun res!287498 () Bool)

(declare-fun e!283758 () Bool)

(assert (=> b!482170 (=> (not res!287498) (not e!283758))))

(declare-datatypes ((array!31285 0))(
  ( (array!31286 (arr!15042 (Array (_ BitVec 32) (_ BitVec 64))) (size!15400 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31285)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31285 (_ BitVec 32)) Bool)

(assert (=> b!482170 (= res!287498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!482171 () Bool)

(declare-fun res!287497 () Bool)

(assert (=> b!482171 (=> (not res!287497) (not e!283758))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!482171 (= res!287497 (and (= (size!15399 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15400 _keys!1874) (size!15399 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!482172 () Bool)

(declare-fun res!287500 () Bool)

(assert (=> b!482172 (=> (not res!287500) (not e!283758))))

(declare-datatypes ((List!9256 0))(
  ( (Nil!9253) (Cons!9252 (h!10108 (_ BitVec 64)) (t!15478 List!9256)) )
))
(declare-fun arrayNoDuplicates!0 (array!31285 (_ BitVec 32) List!9256) Bool)

(assert (=> b!482172 (= res!287500 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9253))))

(declare-fun res!287499 () Bool)

(assert (=> start!43544 (=> (not res!287499) (not e!283758))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43544 (= res!287499 (validMask!0 mask!2352))))

(assert (=> start!43544 e!283758))

(assert (=> start!43544 true))

(assert (=> start!43544 tp_is_empty!13827))

(declare-fun array_inv!10828 (array!31283) Bool)

(assert (=> start!43544 (and (array_inv!10828 _values!1516) e!283762)))

(assert (=> start!43544 tp!43227))

(declare-fun array_inv!10829 (array!31285) Bool)

(assert (=> start!43544 (array_inv!10829 _keys!1874)))

(declare-fun b!482173 () Bool)

(assert (=> b!482173 (= e!283761 tp_is_empty!13827)))

(declare-fun b!482174 () Bool)

(assert (=> b!482174 (= e!283758 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun minValue!1458 () V!19507)

(declare-fun zeroValue!1458 () V!19507)

(declare-fun lt!218672 () Bool)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9140 0))(
  ( (tuple2!9141 (_1!4580 (_ BitVec 64)) (_2!4580 V!19507)) )
))
(declare-datatypes ((List!9257 0))(
  ( (Nil!9254) (Cons!9253 (h!10109 tuple2!9140) (t!15479 List!9257)) )
))
(declare-datatypes ((ListLongMap!8067 0))(
  ( (ListLongMap!8068 (toList!4049 List!9257)) )
))
(declare-fun contains!2660 (ListLongMap!8067 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2341 (array!31285 array!31283 (_ BitVec 32) (_ BitVec 32) V!19507 V!19507 (_ BitVec 32) Int) ListLongMap!8067)

(assert (=> b!482174 (= lt!218672 (contains!2660 (getCurrentListMap!2341 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(assert (= (and start!43544 res!287499) b!482171))

(assert (= (and b!482171 res!287497) b!482170))

(assert (= (and b!482170 res!287498) b!482172))

(assert (= (and b!482172 res!287500) b!482174))

(assert (= (and b!482168 condMapEmpty!22450) mapIsEmpty!22450))

(assert (= (and b!482168 (not condMapEmpty!22450)) mapNonEmpty!22450))

(get-info :version)

(assert (= (and mapNonEmpty!22450 ((_ is ValueCellFull!6552) mapValue!22450)) b!482173))

(assert (= (and b!482168 ((_ is ValueCellFull!6552) mapDefault!22450)) b!482169))

(assert (= start!43544 b!482168))

(declare-fun m!463475 () Bool)

(assert (=> start!43544 m!463475))

(declare-fun m!463477 () Bool)

(assert (=> start!43544 m!463477))

(declare-fun m!463479 () Bool)

(assert (=> start!43544 m!463479))

(declare-fun m!463481 () Bool)

(assert (=> b!482174 m!463481))

(assert (=> b!482174 m!463481))

(declare-fun m!463483 () Bool)

(assert (=> b!482174 m!463483))

(declare-fun m!463485 () Bool)

(assert (=> b!482170 m!463485))

(declare-fun m!463487 () Bool)

(assert (=> mapNonEmpty!22450 m!463487))

(declare-fun m!463489 () Bool)

(assert (=> b!482172 m!463489))

(check-sat (not b_next!12315) (not b!482172) b_and!21093 tp_is_empty!13827 (not b!482174) (not mapNonEmpty!22450) (not start!43544) (not b!482170))
(check-sat b_and!21093 (not b_next!12315))
