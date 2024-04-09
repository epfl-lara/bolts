; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37008 () Bool)

(assert start!37008)

(declare-fun b_free!8127 () Bool)

(declare-fun b_next!8127 () Bool)

(assert (=> start!37008 (= b_free!8127 (not b_next!8127))))

(declare-fun tp!29096 () Bool)

(declare-fun b_and!15387 () Bool)

(assert (=> start!37008 (= tp!29096 b_and!15387)))

(declare-fun b!371321 () Bool)

(declare-fun e!226648 () Bool)

(declare-fun e!226647 () Bool)

(assert (=> b!371321 (= e!226648 e!226647)))

(declare-fun res!208814 () Bool)

(assert (=> b!371321 (=> (not res!208814) (not e!226647))))

(declare-datatypes ((array!21463 0))(
  ( (array!21464 (arr!10197 (Array (_ BitVec 32) (_ BitVec 64))) (size!10549 (_ BitVec 32))) )
))
(declare-fun lt!170279 () array!21463)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21463 (_ BitVec 32)) Bool)

(assert (=> b!371321 (= res!208814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!170279 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!21463)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!371321 (= lt!170279 (array!21464 (store (arr!10197 _keys!658) i!548 k0!778) (size!10549 _keys!658)))))

(declare-fun b!371322 () Bool)

(assert (=> b!371322 (= e!226647 (not true))))

(declare-datatypes ((V!12805 0))(
  ( (V!12806 (val!4432 Int)) )
))
(declare-datatypes ((tuple2!5856 0))(
  ( (tuple2!5857 (_1!2938 (_ BitVec 64)) (_2!2938 V!12805)) )
))
(declare-datatypes ((List!5727 0))(
  ( (Nil!5724) (Cons!5723 (h!6579 tuple2!5856) (t!10885 List!5727)) )
))
(declare-datatypes ((ListLongMap!4783 0))(
  ( (ListLongMap!4784 (toList!2407 List!5727)) )
))
(declare-fun lt!170277 () ListLongMap!4783)

(declare-fun lt!170280 () ListLongMap!4783)

(assert (=> b!371322 (and (= lt!170277 lt!170280) (= lt!170280 lt!170277))))

(declare-fun v!373 () V!12805)

(declare-fun lt!170281 () ListLongMap!4783)

(declare-fun +!748 (ListLongMap!4783 tuple2!5856) ListLongMap!4783)

(assert (=> b!371322 (= lt!170280 (+!748 lt!170281 (tuple2!5857 k0!778 v!373)))))

(declare-datatypes ((ValueCell!4044 0))(
  ( (ValueCellFull!4044 (v!6625 V!12805)) (EmptyCell!4044) )
))
(declare-datatypes ((array!21465 0))(
  ( (array!21466 (arr!10198 (Array (_ BitVec 32) ValueCell!4044)) (size!10550 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21465)

(declare-fun zeroValue!472 () V!12805)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((Unit!11401 0))(
  ( (Unit!11402) )
))
(declare-fun lt!170278 () Unit!11401)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!12805)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!8 (array!21463 array!21465 (_ BitVec 32) (_ BitVec 32) V!12805 V!12805 (_ BitVec 32) (_ BitVec 64) V!12805 (_ BitVec 32) Int) Unit!11401)

(assert (=> b!371322 (= lt!170278 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!8 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!675 (array!21463 array!21465 (_ BitVec 32) (_ BitVec 32) V!12805 V!12805 (_ BitVec 32) Int) ListLongMap!4783)

(assert (=> b!371322 (= lt!170277 (getCurrentListMapNoExtraKeys!675 lt!170279 (array!21466 (store (arr!10198 _values!506) i!548 (ValueCellFull!4044 v!373)) (size!10550 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!371322 (= lt!170281 (getCurrentListMapNoExtraKeys!675 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!371323 () Bool)

(declare-fun res!208807 () Bool)

(assert (=> b!371323 (=> (not res!208807) (not e!226648))))

(assert (=> b!371323 (= res!208807 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10549 _keys!658))))))

(declare-fun b!371324 () Bool)

(declare-fun res!208806 () Bool)

(assert (=> b!371324 (=> (not res!208806) (not e!226647))))

(declare-datatypes ((List!5728 0))(
  ( (Nil!5725) (Cons!5724 (h!6580 (_ BitVec 64)) (t!10886 List!5728)) )
))
(declare-fun arrayNoDuplicates!0 (array!21463 (_ BitVec 32) List!5728) Bool)

(assert (=> b!371324 (= res!208806 (arrayNoDuplicates!0 lt!170279 #b00000000000000000000000000000000 Nil!5725))))

(declare-fun b!371325 () Bool)

(declare-fun res!208812 () Bool)

(assert (=> b!371325 (=> (not res!208812) (not e!226648))))

(assert (=> b!371325 (= res!208812 (or (= (select (arr!10197 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10197 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!371326 () Bool)

(declare-fun e!226649 () Bool)

(declare-fun e!226646 () Bool)

(declare-fun mapRes!14727 () Bool)

(assert (=> b!371326 (= e!226649 (and e!226646 mapRes!14727))))

(declare-fun condMapEmpty!14727 () Bool)

(declare-fun mapDefault!14727 () ValueCell!4044)

(assert (=> b!371326 (= condMapEmpty!14727 (= (arr!10198 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4044)) mapDefault!14727)))))

(declare-fun b!371327 () Bool)

(declare-fun res!208809 () Bool)

(assert (=> b!371327 (=> (not res!208809) (not e!226648))))

(declare-fun arrayContainsKey!0 (array!21463 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!371327 (= res!208809 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!371328 () Bool)

(declare-fun res!208810 () Bool)

(assert (=> b!371328 (=> (not res!208810) (not e!226648))))

(assert (=> b!371328 (= res!208810 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5725))))

(declare-fun b!371329 () Bool)

(declare-fun e!226650 () Bool)

(declare-fun tp_is_empty!8775 () Bool)

(assert (=> b!371329 (= e!226650 tp_is_empty!8775)))

(declare-fun b!371330 () Bool)

(declare-fun res!208805 () Bool)

(assert (=> b!371330 (=> (not res!208805) (not e!226648))))

(assert (=> b!371330 (= res!208805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14727 () Bool)

(assert (=> mapIsEmpty!14727 mapRes!14727))

(declare-fun b!371331 () Bool)

(declare-fun res!208808 () Bool)

(assert (=> b!371331 (=> (not res!208808) (not e!226648))))

(assert (=> b!371331 (= res!208808 (and (= (size!10550 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10549 _keys!658) (size!10550 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!371332 () Bool)

(assert (=> b!371332 (= e!226646 tp_is_empty!8775)))

(declare-fun b!371333 () Bool)

(declare-fun res!208811 () Bool)

(assert (=> b!371333 (=> (not res!208811) (not e!226648))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!371333 (= res!208811 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!14727 () Bool)

(declare-fun tp!29097 () Bool)

(assert (=> mapNonEmpty!14727 (= mapRes!14727 (and tp!29097 e!226650))))

(declare-fun mapValue!14727 () ValueCell!4044)

(declare-fun mapKey!14727 () (_ BitVec 32))

(declare-fun mapRest!14727 () (Array (_ BitVec 32) ValueCell!4044))

(assert (=> mapNonEmpty!14727 (= (arr!10198 _values!506) (store mapRest!14727 mapKey!14727 mapValue!14727))))

(declare-fun res!208813 () Bool)

(assert (=> start!37008 (=> (not res!208813) (not e!226648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37008 (= res!208813 (validMask!0 mask!970))))

(assert (=> start!37008 e!226648))

(declare-fun array_inv!7530 (array!21465) Bool)

(assert (=> start!37008 (and (array_inv!7530 _values!506) e!226649)))

(assert (=> start!37008 tp!29096))

(assert (=> start!37008 true))

(assert (=> start!37008 tp_is_empty!8775))

(declare-fun array_inv!7531 (array!21463) Bool)

(assert (=> start!37008 (array_inv!7531 _keys!658)))

(assert (= (and start!37008 res!208813) b!371331))

(assert (= (and b!371331 res!208808) b!371330))

(assert (= (and b!371330 res!208805) b!371328))

(assert (= (and b!371328 res!208810) b!371323))

(assert (= (and b!371323 res!208807) b!371333))

(assert (= (and b!371333 res!208811) b!371325))

(assert (= (and b!371325 res!208812) b!371327))

(assert (= (and b!371327 res!208809) b!371321))

(assert (= (and b!371321 res!208814) b!371324))

(assert (= (and b!371324 res!208806) b!371322))

(assert (= (and b!371326 condMapEmpty!14727) mapIsEmpty!14727))

(assert (= (and b!371326 (not condMapEmpty!14727)) mapNonEmpty!14727))

(get-info :version)

(assert (= (and mapNonEmpty!14727 ((_ is ValueCellFull!4044) mapValue!14727)) b!371329))

(assert (= (and b!371326 ((_ is ValueCellFull!4044) mapDefault!14727)) b!371332))

(assert (= start!37008 b!371326))

(declare-fun m!367323 () Bool)

(assert (=> start!37008 m!367323))

(declare-fun m!367325 () Bool)

(assert (=> start!37008 m!367325))

(declare-fun m!367327 () Bool)

(assert (=> start!37008 m!367327))

(declare-fun m!367329 () Bool)

(assert (=> b!371327 m!367329))

(declare-fun m!367331 () Bool)

(assert (=> b!371325 m!367331))

(declare-fun m!367333 () Bool)

(assert (=> b!371333 m!367333))

(declare-fun m!367335 () Bool)

(assert (=> b!371330 m!367335))

(declare-fun m!367337 () Bool)

(assert (=> mapNonEmpty!14727 m!367337))

(declare-fun m!367339 () Bool)

(assert (=> b!371328 m!367339))

(declare-fun m!367341 () Bool)

(assert (=> b!371322 m!367341))

(declare-fun m!367343 () Bool)

(assert (=> b!371322 m!367343))

(declare-fun m!367345 () Bool)

(assert (=> b!371322 m!367345))

(declare-fun m!367347 () Bool)

(assert (=> b!371322 m!367347))

(declare-fun m!367349 () Bool)

(assert (=> b!371322 m!367349))

(declare-fun m!367351 () Bool)

(assert (=> b!371321 m!367351))

(declare-fun m!367353 () Bool)

(assert (=> b!371321 m!367353))

(declare-fun m!367355 () Bool)

(assert (=> b!371324 m!367355))

(check-sat (not b!371327) b_and!15387 (not b!371330) tp_is_empty!8775 (not start!37008) (not b!371333) (not b!371322) (not b!371328) (not b!371321) (not mapNonEmpty!14727) (not b_next!8127) (not b!371324))
(check-sat b_and!15387 (not b_next!8127))
