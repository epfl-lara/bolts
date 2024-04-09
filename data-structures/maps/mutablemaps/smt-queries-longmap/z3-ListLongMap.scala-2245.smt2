; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36942 () Bool)

(assert start!36942)

(declare-fun b_free!8061 () Bool)

(declare-fun b_next!8061 () Bool)

(assert (=> start!36942 (= b_free!8061 (not b_next!8061))))

(declare-fun tp!28898 () Bool)

(declare-fun b_and!15321 () Bool)

(assert (=> start!36942 (= tp!28898 b_and!15321)))

(declare-fun b!370034 () Bool)

(declare-fun res!207821 () Bool)

(declare-fun e!226053 () Bool)

(assert (=> b!370034 (=> (not res!207821) (not e!226053))))

(declare-datatypes ((array!21339 0))(
  ( (array!21340 (arr!10135 (Array (_ BitVec 32) (_ BitVec 64))) (size!10487 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21339)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21339 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370034 (= res!207821 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!370035 () Bool)

(declare-fun res!207820 () Bool)

(assert (=> b!370035 (=> (not res!207820) (not e!226053))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21339 (_ BitVec 32)) Bool)

(assert (=> b!370035 (= res!207820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370036 () Bool)

(declare-fun e!226054 () Bool)

(declare-fun tp_is_empty!8709 () Bool)

(assert (=> b!370036 (= e!226054 tp_is_empty!8709)))

(declare-fun b!370037 () Bool)

(declare-fun e!226052 () Bool)

(assert (=> b!370037 (= e!226052 tp_is_empty!8709)))

(declare-fun b!370038 () Bool)

(declare-fun e!226055 () Bool)

(assert (=> b!370038 (= e!226053 e!226055)))

(declare-fun res!207817 () Bool)

(assert (=> b!370038 (=> (not res!207817) (not e!226055))))

(declare-fun lt!169880 () array!21339)

(assert (=> b!370038 (= res!207817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169880 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370038 (= lt!169880 (array!21340 (store (arr!10135 _keys!658) i!548 k0!778) (size!10487 _keys!658)))))

(declare-fun b!370040 () Bool)

(declare-fun res!207816 () Bool)

(assert (=> b!370040 (=> (not res!207816) (not e!226053))))

(assert (=> b!370040 (= res!207816 (or (= (select (arr!10135 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10135 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!14628 () Bool)

(declare-fun mapRes!14628 () Bool)

(assert (=> mapIsEmpty!14628 mapRes!14628))

(declare-fun b!370041 () Bool)

(declare-fun res!207819 () Bool)

(assert (=> b!370041 (=> (not res!207819) (not e!226053))))

(declare-datatypes ((List!5690 0))(
  ( (Nil!5687) (Cons!5686 (h!6542 (_ BitVec 64)) (t!10848 List!5690)) )
))
(declare-fun arrayNoDuplicates!0 (array!21339 (_ BitVec 32) List!5690) Bool)

(assert (=> b!370041 (= res!207819 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5687))))

(declare-fun mapNonEmpty!14628 () Bool)

(declare-fun tp!28899 () Bool)

(assert (=> mapNonEmpty!14628 (= mapRes!14628 (and tp!28899 e!226054))))

(declare-datatypes ((V!12717 0))(
  ( (V!12718 (val!4399 Int)) )
))
(declare-datatypes ((ValueCell!4011 0))(
  ( (ValueCellFull!4011 (v!6592 V!12717)) (EmptyCell!4011) )
))
(declare-datatypes ((array!21341 0))(
  ( (array!21342 (arr!10136 (Array (_ BitVec 32) ValueCell!4011)) (size!10488 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21341)

(declare-fun mapValue!14628 () ValueCell!4011)

(declare-fun mapRest!14628 () (Array (_ BitVec 32) ValueCell!4011))

(declare-fun mapKey!14628 () (_ BitVec 32))

(assert (=> mapNonEmpty!14628 (= (arr!10136 _values!506) (store mapRest!14628 mapKey!14628 mapValue!14628))))

(declare-fun b!370042 () Bool)

(declare-fun e!226051 () Bool)

(assert (=> b!370042 (= e!226051 (and e!226052 mapRes!14628))))

(declare-fun condMapEmpty!14628 () Bool)

(declare-fun mapDefault!14628 () ValueCell!4011)

(assert (=> b!370042 (= condMapEmpty!14628 (= (arr!10136 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4011)) mapDefault!14628)))))

(declare-fun b!370043 () Bool)

(declare-fun res!207823 () Bool)

(assert (=> b!370043 (=> (not res!207823) (not e!226053))))

(assert (=> b!370043 (= res!207823 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10487 _keys!658))))))

(declare-fun b!370044 () Bool)

(declare-fun res!207822 () Bool)

(assert (=> b!370044 (=> (not res!207822) (not e!226053))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!370044 (= res!207822 (and (= (size!10488 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10487 _keys!658) (size!10488 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370045 () Bool)

(declare-fun res!207824 () Bool)

(assert (=> b!370045 (=> (not res!207824) (not e!226055))))

(assert (=> b!370045 (= res!207824 (arrayNoDuplicates!0 lt!169880 #b00000000000000000000000000000000 Nil!5687))))

(declare-fun b!370046 () Bool)

(assert (=> b!370046 (= e!226055 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5826 0))(
  ( (tuple2!5827 (_1!2923 (_ BitVec 64)) (_2!2923 V!12717)) )
))
(declare-datatypes ((List!5691 0))(
  ( (Nil!5688) (Cons!5687 (h!6543 tuple2!5826) (t!10849 List!5691)) )
))
(declare-datatypes ((ListLongMap!4753 0))(
  ( (ListLongMap!4754 (toList!2392 List!5691)) )
))
(declare-fun lt!169882 () ListLongMap!4753)

(declare-fun zeroValue!472 () V!12717)

(declare-fun v!373 () V!12717)

(declare-fun minValue!472 () V!12717)

(declare-fun getCurrentListMapNoExtraKeys!660 (array!21339 array!21341 (_ BitVec 32) (_ BitVec 32) V!12717 V!12717 (_ BitVec 32) Int) ListLongMap!4753)

(assert (=> b!370046 (= lt!169882 (getCurrentListMapNoExtraKeys!660 lt!169880 (array!21342 (store (arr!10136 _values!506) i!548 (ValueCellFull!4011 v!373)) (size!10488 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169881 () ListLongMap!4753)

(assert (=> b!370046 (= lt!169881 (getCurrentListMapNoExtraKeys!660 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!207815 () Bool)

(assert (=> start!36942 (=> (not res!207815) (not e!226053))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36942 (= res!207815 (validMask!0 mask!970))))

(assert (=> start!36942 e!226053))

(declare-fun array_inv!7484 (array!21341) Bool)

(assert (=> start!36942 (and (array_inv!7484 _values!506) e!226051)))

(assert (=> start!36942 tp!28898))

(assert (=> start!36942 true))

(assert (=> start!36942 tp_is_empty!8709))

(declare-fun array_inv!7485 (array!21339) Bool)

(assert (=> start!36942 (array_inv!7485 _keys!658)))

(declare-fun b!370039 () Bool)

(declare-fun res!207818 () Bool)

(assert (=> b!370039 (=> (not res!207818) (not e!226053))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370039 (= res!207818 (validKeyInArray!0 k0!778))))

(assert (= (and start!36942 res!207815) b!370044))

(assert (= (and b!370044 res!207822) b!370035))

(assert (= (and b!370035 res!207820) b!370041))

(assert (= (and b!370041 res!207819) b!370043))

(assert (= (and b!370043 res!207823) b!370039))

(assert (= (and b!370039 res!207818) b!370040))

(assert (= (and b!370040 res!207816) b!370034))

(assert (= (and b!370034 res!207821) b!370038))

(assert (= (and b!370038 res!207817) b!370045))

(assert (= (and b!370045 res!207824) b!370046))

(assert (= (and b!370042 condMapEmpty!14628) mapIsEmpty!14628))

(assert (= (and b!370042 (not condMapEmpty!14628)) mapNonEmpty!14628))

(get-info :version)

(assert (= (and mapNonEmpty!14628 ((_ is ValueCellFull!4011) mapValue!14628)) b!370036))

(assert (= (and b!370042 ((_ is ValueCellFull!4011) mapDefault!14628)) b!370037))

(assert (= start!36942 b!370042))

(declare-fun m!366269 () Bool)

(assert (=> b!370034 m!366269))

(declare-fun m!366271 () Bool)

(assert (=> b!370035 m!366271))

(declare-fun m!366273 () Bool)

(assert (=> start!36942 m!366273))

(declare-fun m!366275 () Bool)

(assert (=> start!36942 m!366275))

(declare-fun m!366277 () Bool)

(assert (=> start!36942 m!366277))

(declare-fun m!366279 () Bool)

(assert (=> b!370041 m!366279))

(declare-fun m!366281 () Bool)

(assert (=> b!370039 m!366281))

(declare-fun m!366283 () Bool)

(assert (=> b!370038 m!366283))

(declare-fun m!366285 () Bool)

(assert (=> b!370038 m!366285))

(declare-fun m!366287 () Bool)

(assert (=> b!370046 m!366287))

(declare-fun m!366289 () Bool)

(assert (=> b!370046 m!366289))

(declare-fun m!366291 () Bool)

(assert (=> b!370046 m!366291))

(declare-fun m!366293 () Bool)

(assert (=> mapNonEmpty!14628 m!366293))

(declare-fun m!366295 () Bool)

(assert (=> b!370045 m!366295))

(declare-fun m!366297 () Bool)

(assert (=> b!370040 m!366297))

(check-sat b_and!15321 (not b!370041) (not b!370045) (not b!370034) (not b!370039) (not b!370046) (not b_next!8061) tp_is_empty!8709 (not b!370038) (not start!36942) (not b!370035) (not mapNonEmpty!14628))
(check-sat b_and!15321 (not b_next!8061))
