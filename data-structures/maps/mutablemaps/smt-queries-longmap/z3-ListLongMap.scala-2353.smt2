; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37590 () Bool)

(assert start!37590)

(declare-fun b_free!8709 () Bool)

(declare-fun b_next!8709 () Bool)

(assert (=> start!37590 (= b_free!8709 (not b_next!8709))))

(declare-fun tp!30842 () Bool)

(declare-fun b_and!15969 () Bool)

(assert (=> start!37590 (= tp!30842 b_and!15969)))

(declare-fun b!383976 () Bool)

(declare-fun res!218846 () Bool)

(declare-fun e!233169 () Bool)

(assert (=> b!383976 (=> (not res!218846) (not e!233169))))

(declare-datatypes ((array!22601 0))(
  ( (array!22602 (arr!10766 (Array (_ BitVec 32) (_ BitVec 64))) (size!11118 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22601)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22601 (_ BitVec 32)) Bool)

(assert (=> b!383976 (= res!218846 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!383977 () Bool)

(declare-fun res!218847 () Bool)

(assert (=> b!383977 (=> (not res!218847) (not e!233169))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!383977 (= res!218847 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!383978 () Bool)

(declare-fun res!218849 () Bool)

(assert (=> b!383978 (=> (not res!218849) (not e!233169))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!383978 (= res!218849 (or (= (select (arr!10766 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10766 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!383979 () Bool)

(declare-fun e!233167 () Bool)

(declare-fun e!233168 () Bool)

(declare-fun mapRes!15600 () Bool)

(assert (=> b!383979 (= e!233167 (and e!233168 mapRes!15600))))

(declare-fun condMapEmpty!15600 () Bool)

(declare-datatypes ((V!13581 0))(
  ( (V!13582 (val!4723 Int)) )
))
(declare-datatypes ((ValueCell!4335 0))(
  ( (ValueCellFull!4335 (v!6916 V!13581)) (EmptyCell!4335) )
))
(declare-datatypes ((array!22603 0))(
  ( (array!22604 (arr!10767 (Array (_ BitVec 32) ValueCell!4335)) (size!11119 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22603)

(declare-fun mapDefault!15600 () ValueCell!4335)

(assert (=> b!383979 (= condMapEmpty!15600 (= (arr!10767 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4335)) mapDefault!15600)))))

(declare-fun b!383980 () Bool)

(declare-fun res!218843 () Bool)

(declare-fun e!233162 () Bool)

(assert (=> b!383980 (=> (not res!218843) (not e!233162))))

(declare-fun lt!180652 () array!22601)

(declare-datatypes ((List!6178 0))(
  ( (Nil!6175) (Cons!6174 (h!7030 (_ BitVec 64)) (t!11336 List!6178)) )
))
(declare-fun arrayNoDuplicates!0 (array!22601 (_ BitVec 32) List!6178) Bool)

(assert (=> b!383980 (= res!218843 (arrayNoDuplicates!0 lt!180652 #b00000000000000000000000000000000 Nil!6175))))

(declare-fun b!383981 () Bool)

(declare-fun res!218848 () Bool)

(assert (=> b!383981 (=> (not res!218848) (not e!233169))))

(assert (=> b!383981 (= res!218848 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11118 _keys!658))))))

(declare-fun mapIsEmpty!15600 () Bool)

(assert (=> mapIsEmpty!15600 mapRes!15600))

(declare-fun b!383982 () Bool)

(declare-fun e!233166 () Bool)

(assert (=> b!383982 (= e!233162 (not e!233166))))

(declare-fun res!218852 () Bool)

(assert (=> b!383982 (=> res!218852 e!233166)))

(declare-fun lt!180651 () Bool)

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!383982 (= res!218852 (or (and (not lt!180651) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!180651) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!180651)))))

(assert (=> b!383982 (= lt!180651 (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-datatypes ((tuple2!6310 0))(
  ( (tuple2!6311 (_1!3165 (_ BitVec 64)) (_2!3165 V!13581)) )
))
(declare-datatypes ((List!6179 0))(
  ( (Nil!6176) (Cons!6175 (h!7031 tuple2!6310) (t!11337 List!6179)) )
))
(declare-datatypes ((ListLongMap!5237 0))(
  ( (ListLongMap!5238 (toList!2634 List!6179)) )
))
(declare-fun lt!180644 () ListLongMap!5237)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13581)

(declare-fun minValue!472 () V!13581)

(declare-fun getCurrentListMap!2051 (array!22601 array!22603 (_ BitVec 32) (_ BitVec 32) V!13581 V!13581 (_ BitVec 32) Int) ListLongMap!5237)

(assert (=> b!383982 (= lt!180644 (getCurrentListMap!2051 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180645 () array!22603)

(declare-fun lt!180646 () ListLongMap!5237)

(assert (=> b!383982 (= lt!180646 (getCurrentListMap!2051 lt!180652 lt!180645 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!180649 () ListLongMap!5237)

(declare-fun lt!180650 () ListLongMap!5237)

(assert (=> b!383982 (and (= lt!180649 lt!180650) (= lt!180650 lt!180649))))

(declare-fun lt!180643 () ListLongMap!5237)

(declare-fun lt!180648 () tuple2!6310)

(declare-fun +!970 (ListLongMap!5237 tuple2!6310) ListLongMap!5237)

(assert (=> b!383982 (= lt!180650 (+!970 lt!180643 lt!180648))))

(declare-fun v!373 () V!13581)

(assert (=> b!383982 (= lt!180648 (tuple2!6311 k0!778 v!373))))

(declare-datatypes ((Unit!11831 0))(
  ( (Unit!11832) )
))
(declare-fun lt!180647 () Unit!11831)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!202 (array!22601 array!22603 (_ BitVec 32) (_ BitVec 32) V!13581 V!13581 (_ BitVec 32) (_ BitVec 64) V!13581 (_ BitVec 32) Int) Unit!11831)

(assert (=> b!383982 (= lt!180647 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!202 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!869 (array!22601 array!22603 (_ BitVec 32) (_ BitVec 32) V!13581 V!13581 (_ BitVec 32) Int) ListLongMap!5237)

(assert (=> b!383982 (= lt!180649 (getCurrentListMapNoExtraKeys!869 lt!180652 lt!180645 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!383982 (= lt!180645 (array!22604 (store (arr!10767 _values!506) i!548 (ValueCellFull!4335 v!373)) (size!11119 _values!506)))))

(assert (=> b!383982 (= lt!180643 (getCurrentListMapNoExtraKeys!869 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!383983 () Bool)

(declare-fun tp_is_empty!9357 () Bool)

(assert (=> b!383983 (= e!233168 tp_is_empty!9357)))

(declare-fun b!383984 () Bool)

(declare-fun res!218842 () Bool)

(assert (=> b!383984 (=> (not res!218842) (not e!233169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!383984 (= res!218842 (validKeyInArray!0 k0!778))))

(declare-fun b!383985 () Bool)

(declare-fun e!233165 () Bool)

(assert (=> b!383985 (= e!233165 (bvsle #b00000000000000000000000000000000 (size!11118 _keys!658)))))

(declare-fun b!383986 () Bool)

(assert (=> b!383986 (= e!233166 e!233165)))

(declare-fun res!218850 () Bool)

(assert (=> b!383986 (=> res!218850 e!233165)))

(assert (=> b!383986 (= res!218850 (not (= (+!970 lt!180644 lt!180648) lt!180646)))))

(assert (=> b!383986 (= lt!180646 lt!180649)))

(declare-fun res!218841 () Bool)

(assert (=> start!37590 (=> (not res!218841) (not e!233169))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37590 (= res!218841 (validMask!0 mask!970))))

(assert (=> start!37590 e!233169))

(declare-fun array_inv!7908 (array!22603) Bool)

(assert (=> start!37590 (and (array_inv!7908 _values!506) e!233167)))

(assert (=> start!37590 tp!30842))

(assert (=> start!37590 true))

(assert (=> start!37590 tp_is_empty!9357))

(declare-fun array_inv!7909 (array!22601) Bool)

(assert (=> start!37590 (array_inv!7909 _keys!658)))

(declare-fun b!383987 () Bool)

(declare-fun res!218851 () Bool)

(assert (=> b!383987 (=> (not res!218851) (not e!233169))))

(assert (=> b!383987 (= res!218851 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6175))))

(declare-fun b!383988 () Bool)

(declare-fun e!233164 () Bool)

(assert (=> b!383988 (= e!233164 tp_is_empty!9357)))

(declare-fun mapNonEmpty!15600 () Bool)

(declare-fun tp!30843 () Bool)

(assert (=> mapNonEmpty!15600 (= mapRes!15600 (and tp!30843 e!233164))))

(declare-fun mapValue!15600 () ValueCell!4335)

(declare-fun mapRest!15600 () (Array (_ BitVec 32) ValueCell!4335))

(declare-fun mapKey!15600 () (_ BitVec 32))

(assert (=> mapNonEmpty!15600 (= (arr!10767 _values!506) (store mapRest!15600 mapKey!15600 mapValue!15600))))

(declare-fun b!383989 () Bool)

(assert (=> b!383989 (= e!233169 e!233162)))

(declare-fun res!218844 () Bool)

(assert (=> b!383989 (=> (not res!218844) (not e!233162))))

(assert (=> b!383989 (= res!218844 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!180652 mask!970))))

(assert (=> b!383989 (= lt!180652 (array!22602 (store (arr!10766 _keys!658) i!548 k0!778) (size!11118 _keys!658)))))

(declare-fun b!383990 () Bool)

(declare-fun res!218845 () Bool)

(assert (=> b!383990 (=> (not res!218845) (not e!233169))))

(assert (=> b!383990 (= res!218845 (and (= (size!11119 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11118 _keys!658) (size!11119 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(assert (= (and start!37590 res!218841) b!383990))

(assert (= (and b!383990 res!218845) b!383976))

(assert (= (and b!383976 res!218846) b!383987))

(assert (= (and b!383987 res!218851) b!383981))

(assert (= (and b!383981 res!218848) b!383984))

(assert (= (and b!383984 res!218842) b!383978))

(assert (= (and b!383978 res!218849) b!383977))

(assert (= (and b!383977 res!218847) b!383989))

(assert (= (and b!383989 res!218844) b!383980))

(assert (= (and b!383980 res!218843) b!383982))

(assert (= (and b!383982 (not res!218852)) b!383986))

(assert (= (and b!383986 (not res!218850)) b!383985))

(assert (= (and b!383979 condMapEmpty!15600) mapIsEmpty!15600))

(assert (= (and b!383979 (not condMapEmpty!15600)) mapNonEmpty!15600))

(get-info :version)

(assert (= (and mapNonEmpty!15600 ((_ is ValueCellFull!4335) mapValue!15600)) b!383988))

(assert (= (and b!383979 ((_ is ValueCellFull!4335) mapDefault!15600)) b!383983))

(assert (= start!37590 b!383979))

(declare-fun m!380721 () Bool)

(assert (=> b!383976 m!380721))

(declare-fun m!380723 () Bool)

(assert (=> b!383986 m!380723))

(declare-fun m!380725 () Bool)

(assert (=> b!383987 m!380725))

(declare-fun m!380727 () Bool)

(assert (=> b!383989 m!380727))

(declare-fun m!380729 () Bool)

(assert (=> b!383989 m!380729))

(declare-fun m!380731 () Bool)

(assert (=> mapNonEmpty!15600 m!380731))

(declare-fun m!380733 () Bool)

(assert (=> b!383977 m!380733))

(declare-fun m!380735 () Bool)

(assert (=> b!383984 m!380735))

(declare-fun m!380737 () Bool)

(assert (=> b!383978 m!380737))

(declare-fun m!380739 () Bool)

(assert (=> b!383980 m!380739))

(declare-fun m!380741 () Bool)

(assert (=> start!37590 m!380741))

(declare-fun m!380743 () Bool)

(assert (=> start!37590 m!380743))

(declare-fun m!380745 () Bool)

(assert (=> start!37590 m!380745))

(declare-fun m!380747 () Bool)

(assert (=> b!383982 m!380747))

(declare-fun m!380749 () Bool)

(assert (=> b!383982 m!380749))

(declare-fun m!380751 () Bool)

(assert (=> b!383982 m!380751))

(declare-fun m!380753 () Bool)

(assert (=> b!383982 m!380753))

(declare-fun m!380755 () Bool)

(assert (=> b!383982 m!380755))

(declare-fun m!380757 () Bool)

(assert (=> b!383982 m!380757))

(declare-fun m!380759 () Bool)

(assert (=> b!383982 m!380759))

(check-sat (not b!383980) (not mapNonEmpty!15600) (not b_next!8709) (not b!383984) b_and!15969 (not b!383986) (not b!383989) (not b!383987) (not b!383982) (not b!383977) (not b!383976) tp_is_empty!9357 (not start!37590))
(check-sat b_and!15969 (not b_next!8709))
