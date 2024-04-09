; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37782 () Bool)

(assert start!37782)

(declare-fun b_free!8877 () Bool)

(declare-fun b_next!8877 () Bool)

(assert (=> start!37782 (= b_free!8877 (not b_next!8877))))

(declare-fun tp!31382 () Bool)

(declare-fun b_and!16137 () Bool)

(assert (=> start!37782 (= tp!31382 b_and!16137)))

(declare-fun b!387611 () Bool)

(declare-fun res!221621 () Bool)

(declare-fun e!234954 () Bool)

(assert (=> b!387611 (=> (not res!221621) (not e!234954))))

(declare-datatypes ((array!22967 0))(
  ( (array!22968 (arr!10949 (Array (_ BitVec 32) (_ BitVec 64))) (size!11301 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22967)

(declare-datatypes ((List!6304 0))(
  ( (Nil!6301) (Cons!6300 (h!7156 (_ BitVec 64)) (t!11462 List!6304)) )
))
(declare-fun arrayNoDuplicates!0 (array!22967 (_ BitVec 32) List!6304) Bool)

(assert (=> b!387611 (= res!221621 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6301))))

(declare-fun b!387613 () Bool)

(declare-fun e!234956 () Bool)

(assert (=> b!387613 (= e!234954 e!234956)))

(declare-fun res!221620 () Bool)

(assert (=> b!387613 (=> (not res!221620) (not e!234956))))

(declare-fun lt!182085 () array!22967)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22967 (_ BitVec 32)) Bool)

(assert (=> b!387613 (= res!221620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182085 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!387613 (= lt!182085 (array!22968 (store (arr!10949 _keys!658) i!548 k0!778) (size!11301 _keys!658)))))

(declare-fun b!387614 () Bool)

(assert (=> b!387614 (= e!234956 false)))

(declare-datatypes ((V!13837 0))(
  ( (V!13838 (val!4819 Int)) )
))
(declare-datatypes ((ValueCell!4431 0))(
  ( (ValueCellFull!4431 (v!7012 V!13837)) (EmptyCell!4431) )
))
(declare-datatypes ((array!22969 0))(
  ( (array!22970 (arr!10950 (Array (_ BitVec 32) ValueCell!4431)) (size!11302 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22969)

(declare-datatypes ((tuple2!6420 0))(
  ( (tuple2!6421 (_1!3220 (_ BitVec 64)) (_2!3220 V!13837)) )
))
(declare-datatypes ((List!6305 0))(
  ( (Nil!6302) (Cons!6301 (h!7157 tuple2!6420) (t!11463 List!6305)) )
))
(declare-datatypes ((ListLongMap!5347 0))(
  ( (ListLongMap!5348 (toList!2689 List!6305)) )
))
(declare-fun lt!182084 () ListLongMap!5347)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13837)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13837)

(declare-fun minValue!472 () V!13837)

(declare-fun getCurrentListMapNoExtraKeys!923 (array!22967 array!22969 (_ BitVec 32) (_ BitVec 32) V!13837 V!13837 (_ BitVec 32) Int) ListLongMap!5347)

(assert (=> b!387614 (= lt!182084 (getCurrentListMapNoExtraKeys!923 lt!182085 (array!22970 (store (arr!10950 _values!506) i!548 (ValueCellFull!4431 v!373)) (size!11302 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!182086 () ListLongMap!5347)

(assert (=> b!387614 (= lt!182086 (getCurrentListMapNoExtraKeys!923 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!387615 () Bool)

(declare-fun res!221619 () Bool)

(assert (=> b!387615 (=> (not res!221619) (not e!234954))))

(assert (=> b!387615 (= res!221619 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387616 () Bool)

(declare-fun res!221618 () Bool)

(assert (=> b!387616 (=> (not res!221618) (not e!234956))))

(assert (=> b!387616 (= res!221618 (arrayNoDuplicates!0 lt!182085 #b00000000000000000000000000000000 Nil!6301))))

(declare-fun mapIsEmpty!15888 () Bool)

(declare-fun mapRes!15888 () Bool)

(assert (=> mapIsEmpty!15888 mapRes!15888))

(declare-fun mapNonEmpty!15888 () Bool)

(declare-fun tp!31383 () Bool)

(declare-fun e!234952 () Bool)

(assert (=> mapNonEmpty!15888 (= mapRes!15888 (and tp!31383 e!234952))))

(declare-fun mapKey!15888 () (_ BitVec 32))

(declare-fun mapRest!15888 () (Array (_ BitVec 32) ValueCell!4431))

(declare-fun mapValue!15888 () ValueCell!4431)

(assert (=> mapNonEmpty!15888 (= (arr!10950 _values!506) (store mapRest!15888 mapKey!15888 mapValue!15888))))

(declare-fun b!387617 () Bool)

(declare-fun res!221612 () Bool)

(assert (=> b!387617 (=> (not res!221612) (not e!234954))))

(declare-fun arrayContainsKey!0 (array!22967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387617 (= res!221612 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387618 () Bool)

(declare-fun res!221615 () Bool)

(assert (=> b!387618 (=> (not res!221615) (not e!234954))))

(assert (=> b!387618 (= res!221615 (and (= (size!11302 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11301 _keys!658) (size!11302 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387619 () Bool)

(declare-fun e!234955 () Bool)

(declare-fun e!234953 () Bool)

(assert (=> b!387619 (= e!234955 (and e!234953 mapRes!15888))))

(declare-fun condMapEmpty!15888 () Bool)

(declare-fun mapDefault!15888 () ValueCell!4431)

(assert (=> b!387619 (= condMapEmpty!15888 (= (arr!10950 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4431)) mapDefault!15888)))))

(declare-fun b!387620 () Bool)

(declare-fun res!221614 () Bool)

(assert (=> b!387620 (=> (not res!221614) (not e!234954))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387620 (= res!221614 (validKeyInArray!0 k0!778))))

(declare-fun b!387621 () Bool)

(declare-fun res!221616 () Bool)

(assert (=> b!387621 (=> (not res!221616) (not e!234954))))

(assert (=> b!387621 (= res!221616 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11301 _keys!658))))))

(declare-fun res!221613 () Bool)

(assert (=> start!37782 (=> (not res!221613) (not e!234954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37782 (= res!221613 (validMask!0 mask!970))))

(assert (=> start!37782 e!234954))

(declare-fun array_inv!8026 (array!22969) Bool)

(assert (=> start!37782 (and (array_inv!8026 _values!506) e!234955)))

(assert (=> start!37782 tp!31382))

(assert (=> start!37782 true))

(declare-fun tp_is_empty!9549 () Bool)

(assert (=> start!37782 tp_is_empty!9549))

(declare-fun array_inv!8027 (array!22967) Bool)

(assert (=> start!37782 (array_inv!8027 _keys!658)))

(declare-fun b!387612 () Bool)

(declare-fun res!221617 () Bool)

(assert (=> b!387612 (=> (not res!221617) (not e!234954))))

(assert (=> b!387612 (= res!221617 (or (= (select (arr!10949 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10949 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387622 () Bool)

(assert (=> b!387622 (= e!234953 tp_is_empty!9549)))

(declare-fun b!387623 () Bool)

(assert (=> b!387623 (= e!234952 tp_is_empty!9549)))

(assert (= (and start!37782 res!221613) b!387618))

(assert (= (and b!387618 res!221615) b!387615))

(assert (= (and b!387615 res!221619) b!387611))

(assert (= (and b!387611 res!221621) b!387621))

(assert (= (and b!387621 res!221616) b!387620))

(assert (= (and b!387620 res!221614) b!387612))

(assert (= (and b!387612 res!221617) b!387617))

(assert (= (and b!387617 res!221612) b!387613))

(assert (= (and b!387613 res!221620) b!387616))

(assert (= (and b!387616 res!221618) b!387614))

(assert (= (and b!387619 condMapEmpty!15888) mapIsEmpty!15888))

(assert (= (and b!387619 (not condMapEmpty!15888)) mapNonEmpty!15888))

(get-info :version)

(assert (= (and mapNonEmpty!15888 ((_ is ValueCellFull!4431) mapValue!15888)) b!387623))

(assert (= (and b!387619 ((_ is ValueCellFull!4431) mapDefault!15888)) b!387622))

(assert (= start!37782 b!387619))

(declare-fun m!383681 () Bool)

(assert (=> start!37782 m!383681))

(declare-fun m!383683 () Bool)

(assert (=> start!37782 m!383683))

(declare-fun m!383685 () Bool)

(assert (=> start!37782 m!383685))

(declare-fun m!383687 () Bool)

(assert (=> b!387614 m!383687))

(declare-fun m!383689 () Bool)

(assert (=> b!387614 m!383689))

(declare-fun m!383691 () Bool)

(assert (=> b!387614 m!383691))

(declare-fun m!383693 () Bool)

(assert (=> b!387613 m!383693))

(declare-fun m!383695 () Bool)

(assert (=> b!387613 m!383695))

(declare-fun m!383697 () Bool)

(assert (=> b!387612 m!383697))

(declare-fun m!383699 () Bool)

(assert (=> b!387615 m!383699))

(declare-fun m!383701 () Bool)

(assert (=> b!387620 m!383701))

(declare-fun m!383703 () Bool)

(assert (=> b!387611 m!383703))

(declare-fun m!383705 () Bool)

(assert (=> b!387617 m!383705))

(declare-fun m!383707 () Bool)

(assert (=> mapNonEmpty!15888 m!383707))

(declare-fun m!383709 () Bool)

(assert (=> b!387616 m!383709))

(check-sat (not mapNonEmpty!15888) (not b!387611) (not start!37782) (not b!387620) (not b!387615) (not b!387613) (not b!387616) (not b!387614) (not b!387617) b_and!16137 (not b_next!8877) tp_is_empty!9549)
(check-sat b_and!16137 (not b_next!8877))
