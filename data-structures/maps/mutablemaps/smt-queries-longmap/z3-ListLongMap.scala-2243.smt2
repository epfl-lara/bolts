; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36930 () Bool)

(assert start!36930)

(declare-fun b_free!8049 () Bool)

(declare-fun b_next!8049 () Bool)

(assert (=> start!36930 (= b_free!8049 (not b_next!8049))))

(declare-fun tp!28862 () Bool)

(declare-fun b_and!15309 () Bool)

(assert (=> start!36930 (= tp!28862 b_and!15309)))

(declare-fun b!369800 () Bool)

(declare-fun e!225943 () Bool)

(assert (=> b!369800 (= e!225943 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((V!12701 0))(
  ( (V!12702 (val!4393 Int)) )
))
(declare-datatypes ((tuple2!5818 0))(
  ( (tuple2!5819 (_1!2919 (_ BitVec 64)) (_2!2919 V!12701)) )
))
(declare-datatypes ((List!5680 0))(
  ( (Nil!5677) (Cons!5676 (h!6532 tuple2!5818) (t!10838 List!5680)) )
))
(declare-datatypes ((ListLongMap!4745 0))(
  ( (ListLongMap!4746 (toList!2388 List!5680)) )
))
(declare-fun lt!169828 () ListLongMap!4745)

(declare-fun zeroValue!472 () V!12701)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12701)

(declare-datatypes ((ValueCell!4005 0))(
  ( (ValueCellFull!4005 (v!6586 V!12701)) (EmptyCell!4005) )
))
(declare-datatypes ((array!21315 0))(
  ( (array!21316 (arr!10123 (Array (_ BitVec 32) ValueCell!4005)) (size!10475 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21315)

(declare-datatypes ((array!21317 0))(
  ( (array!21318 (arr!10124 (Array (_ BitVec 32) (_ BitVec 64))) (size!10476 (_ BitVec 32))) )
))
(declare-fun lt!169826 () array!21317)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!12701)

(declare-fun getCurrentListMapNoExtraKeys!656 (array!21317 array!21315 (_ BitVec 32) (_ BitVec 32) V!12701 V!12701 (_ BitVec 32) Int) ListLongMap!4745)

(assert (=> b!369800 (= lt!169828 (getCurrentListMapNoExtraKeys!656 lt!169826 (array!21316 (store (arr!10123 _values!506) i!548 (ValueCellFull!4005 v!373)) (size!10475 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169827 () ListLongMap!4745)

(declare-fun _keys!658 () array!21317)

(assert (=> b!369800 (= lt!169827 (getCurrentListMapNoExtraKeys!656 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369801 () Bool)

(declare-fun res!207642 () Bool)

(declare-fun e!225945 () Bool)

(assert (=> b!369801 (=> (not res!207642) (not e!225945))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369801 (= res!207642 (validKeyInArray!0 k0!778))))

(declare-fun b!369802 () Bool)

(declare-fun e!225944 () Bool)

(declare-fun e!225947 () Bool)

(declare-fun mapRes!14610 () Bool)

(assert (=> b!369802 (= e!225944 (and e!225947 mapRes!14610))))

(declare-fun condMapEmpty!14610 () Bool)

(declare-fun mapDefault!14610 () ValueCell!4005)

(assert (=> b!369802 (= condMapEmpty!14610 (= (arr!10123 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4005)) mapDefault!14610)))))

(declare-fun b!369803 () Bool)

(declare-fun res!207638 () Bool)

(assert (=> b!369803 (=> (not res!207638) (not e!225945))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21317 (_ BitVec 32)) Bool)

(assert (=> b!369803 (= res!207638 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!14610 () Bool)

(assert (=> mapIsEmpty!14610 mapRes!14610))

(declare-fun b!369804 () Bool)

(assert (=> b!369804 (= e!225945 e!225943)))

(declare-fun res!207644 () Bool)

(assert (=> b!369804 (=> (not res!207644) (not e!225943))))

(assert (=> b!369804 (= res!207644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169826 mask!970))))

(assert (=> b!369804 (= lt!169826 (array!21318 (store (arr!10124 _keys!658) i!548 k0!778) (size!10476 _keys!658)))))

(declare-fun b!369805 () Bool)

(declare-fun res!207635 () Bool)

(assert (=> b!369805 (=> (not res!207635) (not e!225945))))

(declare-fun arrayContainsKey!0 (array!21317 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369805 (= res!207635 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!369806 () Bool)

(declare-fun res!207636 () Bool)

(assert (=> b!369806 (=> (not res!207636) (not e!225943))))

(declare-datatypes ((List!5681 0))(
  ( (Nil!5678) (Cons!5677 (h!6533 (_ BitVec 64)) (t!10839 List!5681)) )
))
(declare-fun arrayNoDuplicates!0 (array!21317 (_ BitVec 32) List!5681) Bool)

(assert (=> b!369806 (= res!207636 (arrayNoDuplicates!0 lt!169826 #b00000000000000000000000000000000 Nil!5678))))

(declare-fun b!369807 () Bool)

(declare-fun res!207637 () Bool)

(assert (=> b!369807 (=> (not res!207637) (not e!225945))))

(assert (=> b!369807 (= res!207637 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5678))))

(declare-fun b!369808 () Bool)

(declare-fun res!207640 () Bool)

(assert (=> b!369808 (=> (not res!207640) (not e!225945))))

(assert (=> b!369808 (= res!207640 (or (= (select (arr!10124 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10124 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369809 () Bool)

(declare-fun res!207639 () Bool)

(assert (=> b!369809 (=> (not res!207639) (not e!225945))))

(assert (=> b!369809 (= res!207639 (and (= (size!10475 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10476 _keys!658) (size!10475 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!369810 () Bool)

(declare-fun e!225946 () Bool)

(declare-fun tp_is_empty!8697 () Bool)

(assert (=> b!369810 (= e!225946 tp_is_empty!8697)))

(declare-fun res!207641 () Bool)

(assert (=> start!36930 (=> (not res!207641) (not e!225945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36930 (= res!207641 (validMask!0 mask!970))))

(assert (=> start!36930 e!225945))

(declare-fun array_inv!7478 (array!21315) Bool)

(assert (=> start!36930 (and (array_inv!7478 _values!506) e!225944)))

(assert (=> start!36930 tp!28862))

(assert (=> start!36930 true))

(assert (=> start!36930 tp_is_empty!8697))

(declare-fun array_inv!7479 (array!21317) Bool)

(assert (=> start!36930 (array_inv!7479 _keys!658)))

(declare-fun mapNonEmpty!14610 () Bool)

(declare-fun tp!28863 () Bool)

(assert (=> mapNonEmpty!14610 (= mapRes!14610 (and tp!28863 e!225946))))

(declare-fun mapKey!14610 () (_ BitVec 32))

(declare-fun mapValue!14610 () ValueCell!4005)

(declare-fun mapRest!14610 () (Array (_ BitVec 32) ValueCell!4005))

(assert (=> mapNonEmpty!14610 (= (arr!10123 _values!506) (store mapRest!14610 mapKey!14610 mapValue!14610))))

(declare-fun b!369811 () Bool)

(declare-fun res!207643 () Bool)

(assert (=> b!369811 (=> (not res!207643) (not e!225945))))

(assert (=> b!369811 (= res!207643 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10476 _keys!658))))))

(declare-fun b!369812 () Bool)

(assert (=> b!369812 (= e!225947 tp_is_empty!8697)))

(assert (= (and start!36930 res!207641) b!369809))

(assert (= (and b!369809 res!207639) b!369803))

(assert (= (and b!369803 res!207638) b!369807))

(assert (= (and b!369807 res!207637) b!369811))

(assert (= (and b!369811 res!207643) b!369801))

(assert (= (and b!369801 res!207642) b!369808))

(assert (= (and b!369808 res!207640) b!369805))

(assert (= (and b!369805 res!207635) b!369804))

(assert (= (and b!369804 res!207644) b!369806))

(assert (= (and b!369806 res!207636) b!369800))

(assert (= (and b!369802 condMapEmpty!14610) mapIsEmpty!14610))

(assert (= (and b!369802 (not condMapEmpty!14610)) mapNonEmpty!14610))

(get-info :version)

(assert (= (and mapNonEmpty!14610 ((_ is ValueCellFull!4005) mapValue!14610)) b!369810))

(assert (= (and b!369802 ((_ is ValueCellFull!4005) mapDefault!14610)) b!369812))

(assert (= start!36930 b!369802))

(declare-fun m!366089 () Bool)

(assert (=> b!369805 m!366089))

(declare-fun m!366091 () Bool)

(assert (=> b!369804 m!366091))

(declare-fun m!366093 () Bool)

(assert (=> b!369804 m!366093))

(declare-fun m!366095 () Bool)

(assert (=> mapNonEmpty!14610 m!366095))

(declare-fun m!366097 () Bool)

(assert (=> b!369801 m!366097))

(declare-fun m!366099 () Bool)

(assert (=> start!36930 m!366099))

(declare-fun m!366101 () Bool)

(assert (=> start!36930 m!366101))

(declare-fun m!366103 () Bool)

(assert (=> start!36930 m!366103))

(declare-fun m!366105 () Bool)

(assert (=> b!369803 m!366105))

(declare-fun m!366107 () Bool)

(assert (=> b!369808 m!366107))

(declare-fun m!366109 () Bool)

(assert (=> b!369806 m!366109))

(declare-fun m!366111 () Bool)

(assert (=> b!369807 m!366111))

(declare-fun m!366113 () Bool)

(assert (=> b!369800 m!366113))

(declare-fun m!366115 () Bool)

(assert (=> b!369800 m!366115))

(declare-fun m!366117 () Bool)

(assert (=> b!369800 m!366117))

(check-sat tp_is_empty!8697 (not b!369804) (not start!36930) (not b_next!8049) (not b!369805) b_and!15309 (not b!369806) (not b!369803) (not b!369801) (not b!369800) (not b!369807) (not mapNonEmpty!14610))
(check-sat b_and!15309 (not b_next!8049))
