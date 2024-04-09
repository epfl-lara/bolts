; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36948 () Bool)

(assert start!36948)

(declare-fun b_free!8067 () Bool)

(declare-fun b_next!8067 () Bool)

(assert (=> start!36948 (= b_free!8067 (not b_next!8067))))

(declare-fun tp!28916 () Bool)

(declare-fun b_and!15327 () Bool)

(assert (=> start!36948 (= tp!28916 b_and!15327)))

(declare-fun b!370151 () Bool)

(declare-fun res!207911 () Bool)

(declare-fun e!226108 () Bool)

(assert (=> b!370151 (=> (not res!207911) (not e!226108))))

(declare-datatypes ((array!21351 0))(
  ( (array!21352 (arr!10141 (Array (_ BitVec 32) (_ BitVec 64))) (size!10493 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21351)

(declare-datatypes ((List!5693 0))(
  ( (Nil!5690) (Cons!5689 (h!6545 (_ BitVec 64)) (t!10851 List!5693)) )
))
(declare-fun arrayNoDuplicates!0 (array!21351 (_ BitVec 32) List!5693) Bool)

(assert (=> b!370151 (= res!207911 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5690))))

(declare-fun b!370152 () Bool)

(declare-fun res!207909 () Bool)

(assert (=> b!370152 (=> (not res!207909) (not e!226108))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!370152 (= res!207909 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!370153 () Bool)

(declare-fun res!207910 () Bool)

(declare-fun e!226110 () Bool)

(assert (=> b!370153 (=> (not res!207910) (not e!226110))))

(declare-fun lt!169907 () array!21351)

(assert (=> b!370153 (= res!207910 (arrayNoDuplicates!0 lt!169907 #b00000000000000000000000000000000 Nil!5690))))

(declare-fun b!370154 () Bool)

(declare-fun e!226105 () Bool)

(declare-fun tp_is_empty!8715 () Bool)

(assert (=> b!370154 (= e!226105 tp_is_empty!8715)))

(declare-fun b!370155 () Bool)

(declare-fun res!207907 () Bool)

(assert (=> b!370155 (=> (not res!207907) (not e!226108))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!370155 (= res!207907 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10493 _keys!658))))))

(declare-fun b!370156 () Bool)

(declare-fun res!207905 () Bool)

(assert (=> b!370156 (=> (not res!207905) (not e!226108))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-datatypes ((V!12725 0))(
  ( (V!12726 (val!4402 Int)) )
))
(declare-datatypes ((ValueCell!4014 0))(
  ( (ValueCellFull!4014 (v!6595 V!12725)) (EmptyCell!4014) )
))
(declare-datatypes ((array!21353 0))(
  ( (array!21354 (arr!10142 (Array (_ BitVec 32) ValueCell!4014)) (size!10494 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21353)

(declare-fun mask!970 () (_ BitVec 32))

(assert (=> b!370156 (= res!207905 (and (= (size!10494 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10493 _keys!658) (size!10494 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!370157 () Bool)

(assert (=> b!370157 (= e!226108 e!226110)))

(declare-fun res!207912 () Bool)

(assert (=> b!370157 (=> (not res!207912) (not e!226110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21351 (_ BitVec 32)) Bool)

(assert (=> b!370157 (= res!207912 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169907 mask!970))))

(assert (=> b!370157 (= lt!169907 (array!21352 (store (arr!10141 _keys!658) i!548 k0!778) (size!10493 _keys!658)))))

(declare-fun res!207906 () Bool)

(assert (=> start!36948 (=> (not res!207906) (not e!226108))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36948 (= res!207906 (validMask!0 mask!970))))

(assert (=> start!36948 e!226108))

(declare-fun e!226106 () Bool)

(declare-fun array_inv!7488 (array!21353) Bool)

(assert (=> start!36948 (and (array_inv!7488 _values!506) e!226106)))

(assert (=> start!36948 tp!28916))

(assert (=> start!36948 true))

(assert (=> start!36948 tp_is_empty!8715))

(declare-fun array_inv!7489 (array!21351) Bool)

(assert (=> start!36948 (array_inv!7489 _keys!658)))

(declare-fun b!370158 () Bool)

(declare-fun res!207908 () Bool)

(assert (=> b!370158 (=> (not res!207908) (not e!226108))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!370158 (= res!207908 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14637 () Bool)

(declare-fun mapRes!14637 () Bool)

(assert (=> mapIsEmpty!14637 mapRes!14637))

(declare-fun mapNonEmpty!14637 () Bool)

(declare-fun tp!28917 () Bool)

(assert (=> mapNonEmpty!14637 (= mapRes!14637 (and tp!28917 e!226105))))

(declare-fun mapValue!14637 () ValueCell!4014)

(declare-fun mapKey!14637 () (_ BitVec 32))

(declare-fun mapRest!14637 () (Array (_ BitVec 32) ValueCell!4014))

(assert (=> mapNonEmpty!14637 (= (arr!10142 _values!506) (store mapRest!14637 mapKey!14637 mapValue!14637))))

(declare-fun b!370159 () Bool)

(declare-fun res!207913 () Bool)

(assert (=> b!370159 (=> (not res!207913) (not e!226108))))

(assert (=> b!370159 (= res!207913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370160 () Bool)

(declare-fun e!226109 () Bool)

(assert (=> b!370160 (= e!226109 tp_is_empty!8715)))

(declare-fun b!370161 () Bool)

(assert (=> b!370161 (= e!226106 (and e!226109 mapRes!14637))))

(declare-fun condMapEmpty!14637 () Bool)

(declare-fun mapDefault!14637 () ValueCell!4014)

(assert (=> b!370161 (= condMapEmpty!14637 (= (arr!10142 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4014)) mapDefault!14637)))))

(declare-fun b!370162 () Bool)

(declare-fun res!207914 () Bool)

(assert (=> b!370162 (=> (not res!207914) (not e!226108))))

(assert (=> b!370162 (= res!207914 (or (= (select (arr!10141 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10141 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!370163 () Bool)

(assert (=> b!370163 (= e!226110 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12725)

(declare-fun v!373 () V!12725)

(declare-datatypes ((tuple2!5828 0))(
  ( (tuple2!5829 (_1!2924 (_ BitVec 64)) (_2!2924 V!12725)) )
))
(declare-datatypes ((List!5694 0))(
  ( (Nil!5691) (Cons!5690 (h!6546 tuple2!5828) (t!10852 List!5694)) )
))
(declare-datatypes ((ListLongMap!4755 0))(
  ( (ListLongMap!4756 (toList!2393 List!5694)) )
))
(declare-fun lt!169908 () ListLongMap!4755)

(declare-fun minValue!472 () V!12725)

(declare-fun getCurrentListMapNoExtraKeys!661 (array!21351 array!21353 (_ BitVec 32) (_ BitVec 32) V!12725 V!12725 (_ BitVec 32) Int) ListLongMap!4755)

(assert (=> b!370163 (= lt!169908 (getCurrentListMapNoExtraKeys!661 lt!169907 (array!21354 (store (arr!10142 _values!506) i!548 (ValueCellFull!4014 v!373)) (size!10494 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169909 () ListLongMap!4755)

(assert (=> b!370163 (= lt!169909 (getCurrentListMapNoExtraKeys!661 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (= (and start!36948 res!207906) b!370156))

(assert (= (and b!370156 res!207905) b!370159))

(assert (= (and b!370159 res!207913) b!370151))

(assert (= (and b!370151 res!207911) b!370155))

(assert (= (and b!370155 res!207907) b!370158))

(assert (= (and b!370158 res!207908) b!370162))

(assert (= (and b!370162 res!207914) b!370152))

(assert (= (and b!370152 res!207909) b!370157))

(assert (= (and b!370157 res!207912) b!370153))

(assert (= (and b!370153 res!207910) b!370163))

(assert (= (and b!370161 condMapEmpty!14637) mapIsEmpty!14637))

(assert (= (and b!370161 (not condMapEmpty!14637)) mapNonEmpty!14637))

(get-info :version)

(assert (= (and mapNonEmpty!14637 ((_ is ValueCellFull!4014) mapValue!14637)) b!370154))

(assert (= (and b!370161 ((_ is ValueCellFull!4014) mapDefault!14637)) b!370160))

(assert (= start!36948 b!370161))

(declare-fun m!366359 () Bool)

(assert (=> b!370151 m!366359))

(declare-fun m!366361 () Bool)

(assert (=> b!370152 m!366361))

(declare-fun m!366363 () Bool)

(assert (=> b!370162 m!366363))

(declare-fun m!366365 () Bool)

(assert (=> b!370153 m!366365))

(declare-fun m!366367 () Bool)

(assert (=> b!370158 m!366367))

(declare-fun m!366369 () Bool)

(assert (=> start!36948 m!366369))

(declare-fun m!366371 () Bool)

(assert (=> start!36948 m!366371))

(declare-fun m!366373 () Bool)

(assert (=> start!36948 m!366373))

(declare-fun m!366375 () Bool)

(assert (=> b!370163 m!366375))

(declare-fun m!366377 () Bool)

(assert (=> b!370163 m!366377))

(declare-fun m!366379 () Bool)

(assert (=> b!370163 m!366379))

(declare-fun m!366381 () Bool)

(assert (=> b!370157 m!366381))

(declare-fun m!366383 () Bool)

(assert (=> b!370157 m!366383))

(declare-fun m!366385 () Bool)

(assert (=> mapNonEmpty!14637 m!366385))

(declare-fun m!366387 () Bool)

(assert (=> b!370159 m!366387))

(check-sat (not b!370159) tp_is_empty!8715 (not b!370157) (not b!370163) b_and!15327 (not b!370151) (not b_next!8067) (not b!370158) (not start!36948) (not b!370152) (not b!370153) (not mapNonEmpty!14637))
(check-sat b_and!15327 (not b_next!8067))
