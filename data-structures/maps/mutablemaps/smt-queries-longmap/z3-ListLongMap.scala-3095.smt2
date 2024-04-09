; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43520 () Bool)

(assert start!43520)

(declare-fun b_free!12291 () Bool)

(declare-fun b_next!12291 () Bool)

(assert (=> start!43520 (= b_free!12291 (not b_next!12291))))

(declare-fun tp!43156 () Bool)

(declare-fun b_and!21069 () Bool)

(assert (=> start!43520 (= tp!43156 b_and!21069)))

(declare-fun res!287353 () Bool)

(declare-fun e!283581 () Bool)

(assert (=> start!43520 (=> (not res!287353) (not e!283581))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43520 (= res!287353 (validMask!0 mask!2352))))

(assert (=> start!43520 e!283581))

(assert (=> start!43520 true))

(declare-fun tp_is_empty!13803 () Bool)

(assert (=> start!43520 tp_is_empty!13803))

(declare-datatypes ((V!19475 0))(
  ( (V!19476 (val!6949 Int)) )
))
(declare-datatypes ((ValueCell!6540 0))(
  ( (ValueCellFull!6540 (v!9238 V!19475)) (EmptyCell!6540) )
))
(declare-datatypes ((array!31237 0))(
  ( (array!31238 (arr!15018 (Array (_ BitVec 32) ValueCell!6540)) (size!15376 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31237)

(declare-fun e!283579 () Bool)

(declare-fun array_inv!10812 (array!31237) Bool)

(assert (=> start!43520 (and (array_inv!10812 _values!1516) e!283579)))

(assert (=> start!43520 tp!43156))

(declare-datatypes ((array!31239 0))(
  ( (array!31240 (arr!15019 (Array (_ BitVec 32) (_ BitVec 64))) (size!15377 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31239)

(declare-fun array_inv!10813 (array!31239) Bool)

(assert (=> start!43520 (array_inv!10813 _keys!1874)))

(declare-fun mapNonEmpty!22414 () Bool)

(declare-fun mapRes!22414 () Bool)

(declare-fun tp!43155 () Bool)

(declare-fun e!283582 () Bool)

(assert (=> mapNonEmpty!22414 (= mapRes!22414 (and tp!43155 e!283582))))

(declare-fun mapValue!22414 () ValueCell!6540)

(declare-fun mapRest!22414 () (Array (_ BitVec 32) ValueCell!6540))

(declare-fun mapKey!22414 () (_ BitVec 32))

(assert (=> mapNonEmpty!22414 (= (arr!15018 _values!1516) (store mapRest!22414 mapKey!22414 mapValue!22414))))

(declare-fun mapIsEmpty!22414 () Bool)

(assert (=> mapIsEmpty!22414 mapRes!22414))

(declare-fun b!481916 () Bool)

(declare-fun e!283578 () Bool)

(assert (=> b!481916 (= e!283578 tp_is_empty!13803)))

(declare-fun b!481917 () Bool)

(assert (=> b!481917 (= e!283582 tp_is_empty!13803)))

(declare-fun b!481918 () Bool)

(declare-fun res!287356 () Bool)

(assert (=> b!481918 (=> (not res!287356) (not e!283581))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31239 (_ BitVec 32)) Bool)

(assert (=> b!481918 (= res!287356 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!481919 () Bool)

(declare-fun res!287355 () Bool)

(assert (=> b!481919 (=> (not res!287355) (not e!283581))))

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!481919 (= res!287355 (and (= (size!15376 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15377 _keys!1874) (size!15376 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!481920 () Bool)

(assert (=> b!481920 (= e!283579 (and e!283578 mapRes!22414))))

(declare-fun condMapEmpty!22414 () Bool)

(declare-fun mapDefault!22414 () ValueCell!6540)

(assert (=> b!481920 (= condMapEmpty!22414 (= (arr!15018 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6540)) mapDefault!22414)))))

(declare-fun b!481921 () Bool)

(declare-fun res!287354 () Bool)

(assert (=> b!481921 (=> (not res!287354) (not e!283581))))

(declare-datatypes ((List!9239 0))(
  ( (Nil!9236) (Cons!9235 (h!10091 (_ BitVec 64)) (t!15461 List!9239)) )
))
(declare-fun arrayNoDuplicates!0 (array!31239 (_ BitVec 32) List!9239) Bool)

(assert (=> b!481921 (= res!287354 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9236))))

(declare-fun b!481922 () Bool)

(assert (=> b!481922 (= e!283581 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!218636 () Bool)

(declare-fun zeroValue!1458 () V!19475)

(declare-fun minValue!1458 () V!19475)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9124 0))(
  ( (tuple2!9125 (_1!4572 (_ BitVec 64)) (_2!4572 V!19475)) )
))
(declare-datatypes ((List!9240 0))(
  ( (Nil!9237) (Cons!9236 (h!10092 tuple2!9124) (t!15462 List!9240)) )
))
(declare-datatypes ((ListLongMap!8051 0))(
  ( (ListLongMap!8052 (toList!4041 List!9240)) )
))
(declare-fun contains!2652 (ListLongMap!8051 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2333 (array!31239 array!31237 (_ BitVec 32) (_ BitVec 32) V!19475 V!19475 (_ BitVec 32) Int) ListLongMap!8051)

(assert (=> b!481922 (= lt!218636 (contains!2652 (getCurrentListMap!2333 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(assert (= (and start!43520 res!287353) b!481919))

(assert (= (and b!481919 res!287355) b!481918))

(assert (= (and b!481918 res!287356) b!481921))

(assert (= (and b!481921 res!287354) b!481922))

(assert (= (and b!481920 condMapEmpty!22414) mapIsEmpty!22414))

(assert (= (and b!481920 (not condMapEmpty!22414)) mapNonEmpty!22414))

(get-info :version)

(assert (= (and mapNonEmpty!22414 ((_ is ValueCellFull!6540) mapValue!22414)) b!481917))

(assert (= (and b!481920 ((_ is ValueCellFull!6540) mapDefault!22414)) b!481916))

(assert (= start!43520 b!481920))

(declare-fun m!463283 () Bool)

(assert (=> b!481918 m!463283))

(declare-fun m!463285 () Bool)

(assert (=> mapNonEmpty!22414 m!463285))

(declare-fun m!463287 () Bool)

(assert (=> b!481922 m!463287))

(assert (=> b!481922 m!463287))

(declare-fun m!463289 () Bool)

(assert (=> b!481922 m!463289))

(declare-fun m!463291 () Bool)

(assert (=> b!481921 m!463291))

(declare-fun m!463293 () Bool)

(assert (=> start!43520 m!463293))

(declare-fun m!463295 () Bool)

(assert (=> start!43520 m!463295))

(declare-fun m!463297 () Bool)

(assert (=> start!43520 m!463297))

(check-sat (not b!481921) (not b!481922) b_and!21069 (not b!481918) tp_is_empty!13803 (not mapNonEmpty!22414) (not b_next!12291) (not start!43520))
(check-sat b_and!21069 (not b_next!12291))
