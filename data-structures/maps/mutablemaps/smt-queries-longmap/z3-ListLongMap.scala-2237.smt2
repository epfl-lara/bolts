; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36894 () Bool)

(assert start!36894)

(declare-fun b_free!8013 () Bool)

(declare-fun b_next!8013 () Bool)

(assert (=> start!36894 (= b_free!8013 (not b_next!8013))))

(declare-fun tp!28754 () Bool)

(declare-fun b_and!15273 () Bool)

(assert (=> start!36894 (= tp!28754 b_and!15273)))

(declare-fun b!369098 () Bool)

(declare-fun res!207101 () Bool)

(declare-fun e!225622 () Bool)

(assert (=> b!369098 (=> (not res!207101) (not e!225622))))

(declare-datatypes ((array!21245 0))(
  ( (array!21246 (arr!10088 (Array (_ BitVec 32) (_ BitVec 64))) (size!10440 (_ BitVec 32))) )
))
(declare-fun lt!169666 () array!21245)

(declare-datatypes ((List!5655 0))(
  ( (Nil!5652) (Cons!5651 (h!6507 (_ BitVec 64)) (t!10813 List!5655)) )
))
(declare-fun arrayNoDuplicates!0 (array!21245 (_ BitVec 32) List!5655) Bool)

(assert (=> b!369098 (= res!207101 (arrayNoDuplicates!0 lt!169666 #b00000000000000000000000000000000 Nil!5652))))

(declare-fun b!369099 () Bool)

(declare-fun res!207099 () Bool)

(declare-fun e!225623 () Bool)

(assert (=> b!369099 (=> (not res!207099) (not e!225623))))

(declare-fun _keys!658 () array!21245)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369099 (= res!207099 (or (= (select (arr!10088 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10088 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369100 () Bool)

(declare-fun e!225620 () Bool)

(declare-fun tp_is_empty!8661 () Bool)

(assert (=> b!369100 (= e!225620 tp_is_empty!8661)))

(declare-fun res!207097 () Bool)

(assert (=> start!36894 (=> (not res!207097) (not e!225623))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36894 (= res!207097 (validMask!0 mask!970))))

(assert (=> start!36894 e!225623))

(declare-datatypes ((V!12653 0))(
  ( (V!12654 (val!4375 Int)) )
))
(declare-datatypes ((ValueCell!3987 0))(
  ( (ValueCellFull!3987 (v!6568 V!12653)) (EmptyCell!3987) )
))
(declare-datatypes ((array!21247 0))(
  ( (array!21248 (arr!10089 (Array (_ BitVec 32) ValueCell!3987)) (size!10441 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21247)

(declare-fun e!225619 () Bool)

(declare-fun array_inv!7454 (array!21247) Bool)

(assert (=> start!36894 (and (array_inv!7454 _values!506) e!225619)))

(assert (=> start!36894 tp!28754))

(assert (=> start!36894 true))

(assert (=> start!36894 tp_is_empty!8661))

(declare-fun array_inv!7455 (array!21245) Bool)

(assert (=> start!36894 (array_inv!7455 _keys!658)))

(declare-fun b!369101 () Bool)

(declare-fun e!225624 () Bool)

(assert (=> b!369101 (= e!225624 tp_is_empty!8661)))

(declare-fun b!369102 () Bool)

(declare-fun mapRes!14556 () Bool)

(assert (=> b!369102 (= e!225619 (and e!225620 mapRes!14556))))

(declare-fun condMapEmpty!14556 () Bool)

(declare-fun mapDefault!14556 () ValueCell!3987)

(assert (=> b!369102 (= condMapEmpty!14556 (= (arr!10089 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3987)) mapDefault!14556)))))

(declare-fun b!369103 () Bool)

(assert (=> b!369103 (= e!225622 false)))

(declare-fun zeroValue!472 () V!12653)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12653)

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5796 0))(
  ( (tuple2!5797 (_1!2908 (_ BitVec 64)) (_2!2908 V!12653)) )
))
(declare-datatypes ((List!5656 0))(
  ( (Nil!5653) (Cons!5652 (h!6508 tuple2!5796) (t!10814 List!5656)) )
))
(declare-datatypes ((ListLongMap!4723 0))(
  ( (ListLongMap!4724 (toList!2377 List!5656)) )
))
(declare-fun lt!169664 () ListLongMap!4723)

(declare-fun minValue!472 () V!12653)

(declare-fun getCurrentListMapNoExtraKeys!645 (array!21245 array!21247 (_ BitVec 32) (_ BitVec 32) V!12653 V!12653 (_ BitVec 32) Int) ListLongMap!4723)

(assert (=> b!369103 (= lt!169664 (getCurrentListMapNoExtraKeys!645 lt!169666 (array!21248 (store (arr!10089 _values!506) i!548 (ValueCellFull!3987 v!373)) (size!10441 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169665 () ListLongMap!4723)

(assert (=> b!369103 (= lt!169665 (getCurrentListMapNoExtraKeys!645 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369104 () Bool)

(declare-fun res!207098 () Bool)

(assert (=> b!369104 (=> (not res!207098) (not e!225623))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369104 (= res!207098 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!369105 () Bool)

(declare-fun res!207100 () Bool)

(assert (=> b!369105 (=> (not res!207100) (not e!225623))))

(assert (=> b!369105 (= res!207100 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5652))))

(declare-fun mapIsEmpty!14556 () Bool)

(assert (=> mapIsEmpty!14556 mapRes!14556))

(declare-fun b!369106 () Bool)

(declare-fun res!207096 () Bool)

(assert (=> b!369106 (=> (not res!207096) (not e!225623))))

(assert (=> b!369106 (= res!207096 (and (= (size!10441 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10440 _keys!658) (size!10441 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369107 () Bool)

(declare-fun res!207104 () Bool)

(assert (=> b!369107 (=> (not res!207104) (not e!225623))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21245 (_ BitVec 32)) Bool)

(assert (=> b!369107 (= res!207104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369108 () Bool)

(declare-fun res!207102 () Bool)

(assert (=> b!369108 (=> (not res!207102) (not e!225623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369108 (= res!207102 (validKeyInArray!0 k0!778))))

(declare-fun b!369109 () Bool)

(assert (=> b!369109 (= e!225623 e!225622)))

(declare-fun res!207103 () Bool)

(assert (=> b!369109 (=> (not res!207103) (not e!225622))))

(assert (=> b!369109 (= res!207103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169666 mask!970))))

(assert (=> b!369109 (= lt!169666 (array!21246 (store (arr!10088 _keys!658) i!548 k0!778) (size!10440 _keys!658)))))

(declare-fun mapNonEmpty!14556 () Bool)

(declare-fun tp!28755 () Bool)

(assert (=> mapNonEmpty!14556 (= mapRes!14556 (and tp!28755 e!225624))))

(declare-fun mapValue!14556 () ValueCell!3987)

(declare-fun mapRest!14556 () (Array (_ BitVec 32) ValueCell!3987))

(declare-fun mapKey!14556 () (_ BitVec 32))

(assert (=> mapNonEmpty!14556 (= (arr!10089 _values!506) (store mapRest!14556 mapKey!14556 mapValue!14556))))

(declare-fun b!369110 () Bool)

(declare-fun res!207095 () Bool)

(assert (=> b!369110 (=> (not res!207095) (not e!225623))))

(assert (=> b!369110 (= res!207095 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10440 _keys!658))))))

(assert (= (and start!36894 res!207097) b!369106))

(assert (= (and b!369106 res!207096) b!369107))

(assert (= (and b!369107 res!207104) b!369105))

(assert (= (and b!369105 res!207100) b!369110))

(assert (= (and b!369110 res!207095) b!369108))

(assert (= (and b!369108 res!207102) b!369099))

(assert (= (and b!369099 res!207099) b!369104))

(assert (= (and b!369104 res!207098) b!369109))

(assert (= (and b!369109 res!207103) b!369098))

(assert (= (and b!369098 res!207101) b!369103))

(assert (= (and b!369102 condMapEmpty!14556) mapIsEmpty!14556))

(assert (= (and b!369102 (not condMapEmpty!14556)) mapNonEmpty!14556))

(get-info :version)

(assert (= (and mapNonEmpty!14556 ((_ is ValueCellFull!3987) mapValue!14556)) b!369101))

(assert (= (and b!369102 ((_ is ValueCellFull!3987) mapDefault!14556)) b!369100))

(assert (= start!36894 b!369102))

(declare-fun m!365549 () Bool)

(assert (=> b!369105 m!365549))

(declare-fun m!365551 () Bool)

(assert (=> b!369103 m!365551))

(declare-fun m!365553 () Bool)

(assert (=> b!369103 m!365553))

(declare-fun m!365555 () Bool)

(assert (=> b!369103 m!365555))

(declare-fun m!365557 () Bool)

(assert (=> b!369104 m!365557))

(declare-fun m!365559 () Bool)

(assert (=> b!369098 m!365559))

(declare-fun m!365561 () Bool)

(assert (=> mapNonEmpty!14556 m!365561))

(declare-fun m!365563 () Bool)

(assert (=> start!36894 m!365563))

(declare-fun m!365565 () Bool)

(assert (=> start!36894 m!365565))

(declare-fun m!365567 () Bool)

(assert (=> start!36894 m!365567))

(declare-fun m!365569 () Bool)

(assert (=> b!369108 m!365569))

(declare-fun m!365571 () Bool)

(assert (=> b!369107 m!365571))

(declare-fun m!365573 () Bool)

(assert (=> b!369099 m!365573))

(declare-fun m!365575 () Bool)

(assert (=> b!369109 m!365575))

(declare-fun m!365577 () Bool)

(assert (=> b!369109 m!365577))

(check-sat (not b!369104) (not b!369107) tp_is_empty!8661 (not b!369105) (not mapNonEmpty!14556) (not b_next!8013) (not b!369098) b_and!15273 (not b!369103) (not start!36894) (not b!369108) (not b!369109))
(check-sat b_and!15273 (not b_next!8013))
