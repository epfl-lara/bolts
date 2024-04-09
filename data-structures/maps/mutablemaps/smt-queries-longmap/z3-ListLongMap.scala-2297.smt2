; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37254 () Bool)

(assert start!37254)

(declare-fun b_free!8373 () Bool)

(declare-fun b_next!8373 () Bool)

(assert (=> start!37254 (= b_free!8373 (not b_next!8373))))

(declare-fun tp!29835 () Bool)

(declare-fun b_and!15633 () Bool)

(assert (=> start!37254 (= tp!29835 b_and!15633)))

(declare-fun b!376641 () Bool)

(declare-fun e!229371 () Bool)

(assert (=> b!376641 (= e!229371 true)))

(declare-datatypes ((V!13133 0))(
  ( (V!13134 (val!4555 Int)) )
))
(declare-datatypes ((tuple2!6042 0))(
  ( (tuple2!6043 (_1!3031 (_ BitVec 64)) (_2!3031 V!13133)) )
))
(declare-datatypes ((List!5912 0))(
  ( (Nil!5909) (Cons!5908 (h!6764 tuple2!6042) (t!11070 List!5912)) )
))
(declare-datatypes ((ListLongMap!4969 0))(
  ( (ListLongMap!4970 (toList!2500 List!5912)) )
))
(declare-fun lt!174937 () ListLongMap!4969)

(declare-fun lt!174934 () ListLongMap!4969)

(declare-fun lt!174940 () tuple2!6042)

(declare-fun +!841 (ListLongMap!4969 tuple2!6042) ListLongMap!4969)

(assert (=> b!376641 (= lt!174937 (+!841 lt!174934 lt!174940))))

(declare-fun v!373 () V!13133)

(declare-fun lt!174939 () ListLongMap!4969)

(declare-datatypes ((Unit!11583 0))(
  ( (Unit!11584) )
))
(declare-fun lt!174943 () Unit!11583)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun zeroValue!472 () V!13133)

(declare-fun addCommutativeForDiffKeys!263 (ListLongMap!4969 (_ BitVec 64) V!13133 (_ BitVec 64) V!13133) Unit!11583)

(assert (=> b!376641 (= lt!174943 (addCommutativeForDiffKeys!263 lt!174939 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapIsEmpty!15096 () Bool)

(declare-fun mapRes!15096 () Bool)

(assert (=> mapIsEmpty!15096 mapRes!15096))

(declare-fun b!376642 () Bool)

(declare-fun res!213028 () Bool)

(declare-fun e!229368 () Bool)

(assert (=> b!376642 (=> (not res!213028) (not e!229368))))

(declare-datatypes ((array!21941 0))(
  ( (array!21942 (arr!10436 (Array (_ BitVec 32) (_ BitVec 64))) (size!10788 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21941)

(declare-fun arrayContainsKey!0 (array!21941 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376642 (= res!213028 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!376643 () Bool)

(declare-fun e!229370 () Bool)

(assert (=> b!376643 (= e!229368 e!229370)))

(declare-fun res!213027 () Bool)

(assert (=> b!376643 (=> (not res!213027) (not e!229370))))

(declare-fun lt!174942 () array!21941)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21941 (_ BitVec 32)) Bool)

(assert (=> b!376643 (= res!213027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!174942 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376643 (= lt!174942 (array!21942 (store (arr!10436 _keys!658) i!548 k0!778) (size!10788 _keys!658)))))

(declare-fun b!376644 () Bool)

(declare-fun res!213021 () Bool)

(assert (=> b!376644 (=> (not res!213021) (not e!229368))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376644 (= res!213021 (validKeyInArray!0 k0!778))))

(declare-fun b!376645 () Bool)

(declare-fun res!213019 () Bool)

(assert (=> b!376645 (=> (not res!213019) (not e!229370))))

(declare-datatypes ((List!5913 0))(
  ( (Nil!5910) (Cons!5909 (h!6765 (_ BitVec 64)) (t!11071 List!5913)) )
))
(declare-fun arrayNoDuplicates!0 (array!21941 (_ BitVec 32) List!5913) Bool)

(assert (=> b!376645 (= res!213019 (arrayNoDuplicates!0 lt!174942 #b00000000000000000000000000000000 Nil!5910))))

(declare-fun mapNonEmpty!15096 () Bool)

(declare-fun tp!29834 () Bool)

(declare-fun e!229365 () Bool)

(assert (=> mapNonEmpty!15096 (= mapRes!15096 (and tp!29834 e!229365))))

(declare-datatypes ((ValueCell!4167 0))(
  ( (ValueCellFull!4167 (v!6748 V!13133)) (EmptyCell!4167) )
))
(declare-fun mapRest!15096 () (Array (_ BitVec 32) ValueCell!4167))

(declare-datatypes ((array!21943 0))(
  ( (array!21944 (arr!10437 (Array (_ BitVec 32) ValueCell!4167)) (size!10789 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21943)

(declare-fun mapKey!15096 () (_ BitVec 32))

(declare-fun mapValue!15096 () ValueCell!4167)

(assert (=> mapNonEmpty!15096 (= (arr!10437 _values!506) (store mapRest!15096 mapKey!15096 mapValue!15096))))

(declare-fun b!376646 () Bool)

(declare-fun res!213029 () Bool)

(assert (=> b!376646 (=> (not res!213029) (not e!229368))))

(assert (=> b!376646 (= res!213029 (or (= (select (arr!10436 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10436 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!376647 () Bool)

(declare-fun res!213018 () Bool)

(assert (=> b!376647 (=> (not res!213018) (not e!229368))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376647 (= res!213018 (and (= (size!10789 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10788 _keys!658) (size!10789 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!213025 () Bool)

(assert (=> start!37254 (=> (not res!213025) (not e!229368))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37254 (= res!213025 (validMask!0 mask!970))))

(assert (=> start!37254 e!229368))

(declare-fun e!229369 () Bool)

(declare-fun array_inv!7684 (array!21943) Bool)

(assert (=> start!37254 (and (array_inv!7684 _values!506) e!229369)))

(assert (=> start!37254 tp!29835))

(assert (=> start!37254 true))

(declare-fun tp_is_empty!9021 () Bool)

(assert (=> start!37254 tp_is_empty!9021))

(declare-fun array_inv!7685 (array!21941) Bool)

(assert (=> start!37254 (array_inv!7685 _keys!658)))

(declare-fun b!376648 () Bool)

(assert (=> b!376648 (= e!229365 tp_is_empty!9021)))

(declare-fun b!376649 () Bool)

(declare-fun e!229364 () Bool)

(assert (=> b!376649 (= e!229364 e!229371)))

(declare-fun res!213022 () Bool)

(assert (=> b!376649 (=> res!213022 e!229371)))

(assert (=> b!376649 (= res!213022 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!174938 () ListLongMap!4969)

(assert (=> b!376649 (= lt!174938 lt!174937)))

(declare-fun lt!174935 () ListLongMap!4969)

(declare-fun lt!174944 () tuple2!6042)

(assert (=> b!376649 (= lt!174937 (+!841 lt!174935 lt!174944))))

(declare-fun lt!174941 () ListLongMap!4969)

(assert (=> b!376649 (= lt!174941 lt!174934)))

(assert (=> b!376649 (= lt!174934 (+!841 lt!174939 lt!174944))))

(declare-fun lt!174946 () ListLongMap!4969)

(assert (=> b!376649 (= lt!174938 (+!841 lt!174946 lt!174944))))

(assert (=> b!376649 (= lt!174944 (tuple2!6043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376650 () Bool)

(declare-fun res!213026 () Bool)

(assert (=> b!376650 (=> (not res!213026) (not e!229368))))

(assert (=> b!376650 (= res!213026 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10788 _keys!658))))))

(declare-fun b!376651 () Bool)

(declare-fun res!213020 () Bool)

(assert (=> b!376651 (=> (not res!213020) (not e!229368))))

(assert (=> b!376651 (= res!213020 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5910))))

(declare-fun b!376652 () Bool)

(declare-fun e!229367 () Bool)

(assert (=> b!376652 (= e!229367 tp_is_empty!9021)))

(declare-fun b!376653 () Bool)

(assert (=> b!376653 (= e!229370 (not e!229364))))

(declare-fun res!213024 () Bool)

(assert (=> b!376653 (=> res!213024 e!229364)))

(assert (=> b!376653 (= res!213024 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13133)

(declare-fun getCurrentListMap!1938 (array!21941 array!21943 (_ BitVec 32) (_ BitVec 32) V!13133 V!13133 (_ BitVec 32) Int) ListLongMap!4969)

(assert (=> b!376653 (= lt!174941 (getCurrentListMap!1938 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!174945 () array!21943)

(assert (=> b!376653 (= lt!174938 (getCurrentListMap!1938 lt!174942 lt!174945 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376653 (and (= lt!174946 lt!174935) (= lt!174935 lt!174946))))

(assert (=> b!376653 (= lt!174935 (+!841 lt!174939 lt!174940))))

(assert (=> b!376653 (= lt!174940 (tuple2!6043 k0!778 v!373))))

(declare-fun lt!174936 () Unit!11583)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!89 (array!21941 array!21943 (_ BitVec 32) (_ BitVec 32) V!13133 V!13133 (_ BitVec 32) (_ BitVec 64) V!13133 (_ BitVec 32) Int) Unit!11583)

(assert (=> b!376653 (= lt!174936 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!89 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!756 (array!21941 array!21943 (_ BitVec 32) (_ BitVec 32) V!13133 V!13133 (_ BitVec 32) Int) ListLongMap!4969)

(assert (=> b!376653 (= lt!174946 (getCurrentListMapNoExtraKeys!756 lt!174942 lt!174945 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376653 (= lt!174945 (array!21944 (store (arr!10437 _values!506) i!548 (ValueCellFull!4167 v!373)) (size!10789 _values!506)))))

(assert (=> b!376653 (= lt!174939 (getCurrentListMapNoExtraKeys!756 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376654 () Bool)

(assert (=> b!376654 (= e!229369 (and e!229367 mapRes!15096))))

(declare-fun condMapEmpty!15096 () Bool)

(declare-fun mapDefault!15096 () ValueCell!4167)

(assert (=> b!376654 (= condMapEmpty!15096 (= (arr!10437 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4167)) mapDefault!15096)))))

(declare-fun b!376655 () Bool)

(declare-fun res!213023 () Bool)

(assert (=> b!376655 (=> (not res!213023) (not e!229368))))

(assert (=> b!376655 (= res!213023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(assert (= (and start!37254 res!213025) b!376647))

(assert (= (and b!376647 res!213018) b!376655))

(assert (= (and b!376655 res!213023) b!376651))

(assert (= (and b!376651 res!213020) b!376650))

(assert (= (and b!376650 res!213026) b!376644))

(assert (= (and b!376644 res!213021) b!376646))

(assert (= (and b!376646 res!213029) b!376642))

(assert (= (and b!376642 res!213028) b!376643))

(assert (= (and b!376643 res!213027) b!376645))

(assert (= (and b!376645 res!213019) b!376653))

(assert (= (and b!376653 (not res!213024)) b!376649))

(assert (= (and b!376649 (not res!213022)) b!376641))

(assert (= (and b!376654 condMapEmpty!15096) mapIsEmpty!15096))

(assert (= (and b!376654 (not condMapEmpty!15096)) mapNonEmpty!15096))

(get-info :version)

(assert (= (and mapNonEmpty!15096 ((_ is ValueCellFull!4167) mapValue!15096)) b!376648))

(assert (= (and b!376654 ((_ is ValueCellFull!4167) mapDefault!15096)) b!376652))

(assert (= start!37254 b!376654))

(declare-fun m!373409 () Bool)

(assert (=> b!376646 m!373409))

(declare-fun m!373411 () Bool)

(assert (=> b!376644 m!373411))

(declare-fun m!373413 () Bool)

(assert (=> b!376655 m!373413))

(declare-fun m!373415 () Bool)

(assert (=> start!37254 m!373415))

(declare-fun m!373417 () Bool)

(assert (=> start!37254 m!373417))

(declare-fun m!373419 () Bool)

(assert (=> start!37254 m!373419))

(declare-fun m!373421 () Bool)

(assert (=> b!376643 m!373421))

(declare-fun m!373423 () Bool)

(assert (=> b!376643 m!373423))

(declare-fun m!373425 () Bool)

(assert (=> b!376653 m!373425))

(declare-fun m!373427 () Bool)

(assert (=> b!376653 m!373427))

(declare-fun m!373429 () Bool)

(assert (=> b!376653 m!373429))

(declare-fun m!373431 () Bool)

(assert (=> b!376653 m!373431))

(declare-fun m!373433 () Bool)

(assert (=> b!376653 m!373433))

(declare-fun m!373435 () Bool)

(assert (=> b!376653 m!373435))

(declare-fun m!373437 () Bool)

(assert (=> b!376653 m!373437))

(declare-fun m!373439 () Bool)

(assert (=> b!376645 m!373439))

(declare-fun m!373441 () Bool)

(assert (=> b!376649 m!373441))

(declare-fun m!373443 () Bool)

(assert (=> b!376649 m!373443))

(declare-fun m!373445 () Bool)

(assert (=> b!376649 m!373445))

(declare-fun m!373447 () Bool)

(assert (=> b!376642 m!373447))

(declare-fun m!373449 () Bool)

(assert (=> b!376651 m!373449))

(declare-fun m!373451 () Bool)

(assert (=> b!376641 m!373451))

(declare-fun m!373453 () Bool)

(assert (=> b!376641 m!373453))

(declare-fun m!373455 () Bool)

(assert (=> mapNonEmpty!15096 m!373455))

(check-sat (not b!376655) b_and!15633 (not start!37254) tp_is_empty!9021 (not b!376641) (not b!376643) (not b!376642) (not mapNonEmpty!15096) (not b!376653) (not b!376644) (not b!376651) (not b!376649) (not b_next!8373) (not b!376645))
(check-sat b_and!15633 (not b_next!8373))
