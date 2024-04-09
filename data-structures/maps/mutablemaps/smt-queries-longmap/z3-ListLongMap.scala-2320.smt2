; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37392 () Bool)

(assert start!37392)

(declare-fun b_free!8511 () Bool)

(declare-fun b_next!8511 () Bool)

(assert (=> start!37392 (= b_free!8511 (not b_next!8511))))

(declare-fun tp!30249 () Bool)

(declare-fun b_and!15771 () Bool)

(assert (=> start!37392 (= tp!30249 b_and!15771)))

(declare-fun b!379755 () Bool)

(declare-fun e!231027 () Bool)

(declare-fun tp_is_empty!9159 () Bool)

(assert (=> b!379755 (= e!231027 tp_is_empty!9159)))

(declare-fun res!215516 () Bool)

(declare-fun e!231025 () Bool)

(assert (=> start!37392 (=> (not res!215516) (not e!231025))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37392 (= res!215516 (validMask!0 mask!970))))

(assert (=> start!37392 e!231025))

(declare-datatypes ((V!13317 0))(
  ( (V!13318 (val!4624 Int)) )
))
(declare-datatypes ((ValueCell!4236 0))(
  ( (ValueCellFull!4236 (v!6817 V!13317)) (EmptyCell!4236) )
))
(declare-datatypes ((array!22215 0))(
  ( (array!22216 (arr!10573 (Array (_ BitVec 32) ValueCell!4236)) (size!10925 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22215)

(declare-fun e!231020 () Bool)

(declare-fun array_inv!7778 (array!22215) Bool)

(assert (=> start!37392 (and (array_inv!7778 _values!506) e!231020)))

(assert (=> start!37392 tp!30249))

(assert (=> start!37392 true))

(assert (=> start!37392 tp_is_empty!9159))

(declare-datatypes ((array!22217 0))(
  ( (array!22218 (arr!10574 (Array (_ BitVec 32) (_ BitVec 64))) (size!10926 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22217)

(declare-fun array_inv!7779 (array!22217) Bool)

(assert (=> start!37392 (array_inv!7779 _keys!658)))

(declare-fun b!379756 () Bool)

(declare-fun e!231024 () Bool)

(declare-fun e!231026 () Bool)

(assert (=> b!379756 (= e!231024 (not e!231026))))

(declare-fun res!215518 () Bool)

(assert (=> b!379756 (=> res!215518 e!231026)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379756 (= res!215518 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6158 0))(
  ( (tuple2!6159 (_1!3089 (_ BitVec 64)) (_2!3089 V!13317)) )
))
(declare-datatypes ((List!6030 0))(
  ( (Nil!6027) (Cons!6026 (h!6882 tuple2!6158) (t!11188 List!6030)) )
))
(declare-datatypes ((ListLongMap!5085 0))(
  ( (ListLongMap!5086 (toList!2558 List!6030)) )
))
(declare-fun lt!177594 () ListLongMap!5085)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13317)

(declare-fun minValue!472 () V!13317)

(declare-fun getCurrentListMap!1983 (array!22217 array!22215 (_ BitVec 32) (_ BitVec 32) V!13317 V!13317 (_ BitVec 32) Int) ListLongMap!5085)

(assert (=> b!379756 (= lt!177594 (getCurrentListMap!1983 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177599 () array!22217)

(declare-fun lt!177597 () ListLongMap!5085)

(declare-fun lt!177600 () array!22215)

(assert (=> b!379756 (= lt!177597 (getCurrentListMap!1983 lt!177599 lt!177600 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177589 () ListLongMap!5085)

(declare-fun lt!177595 () ListLongMap!5085)

(assert (=> b!379756 (and (= lt!177589 lt!177595) (= lt!177595 lt!177589))))

(declare-fun lt!177601 () ListLongMap!5085)

(declare-fun lt!177596 () tuple2!6158)

(declare-fun +!899 (ListLongMap!5085 tuple2!6158) ListLongMap!5085)

(assert (=> b!379756 (= lt!177595 (+!899 lt!177601 lt!177596))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13317)

(assert (=> b!379756 (= lt!177596 (tuple2!6159 k0!778 v!373))))

(declare-datatypes ((Unit!11693 0))(
  ( (Unit!11694) )
))
(declare-fun lt!177591 () Unit!11693)

(declare-fun i!548 () (_ BitVec 32))

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!134 (array!22217 array!22215 (_ BitVec 32) (_ BitVec 32) V!13317 V!13317 (_ BitVec 32) (_ BitVec 64) V!13317 (_ BitVec 32) Int) Unit!11693)

(assert (=> b!379756 (= lt!177591 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!134 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!801 (array!22217 array!22215 (_ BitVec 32) (_ BitVec 32) V!13317 V!13317 (_ BitVec 32) Int) ListLongMap!5085)

(assert (=> b!379756 (= lt!177589 (getCurrentListMapNoExtraKeys!801 lt!177599 lt!177600 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379756 (= lt!177600 (array!22216 (store (arr!10573 _values!506) i!548 (ValueCellFull!4236 v!373)) (size!10925 _values!506)))))

(assert (=> b!379756 (= lt!177601 (getCurrentListMapNoExtraKeys!801 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379757 () Bool)

(declare-fun res!215521 () Bool)

(assert (=> b!379757 (=> (not res!215521) (not e!231024))))

(declare-datatypes ((List!6031 0))(
  ( (Nil!6028) (Cons!6027 (h!6883 (_ BitVec 64)) (t!11189 List!6031)) )
))
(declare-fun arrayNoDuplicates!0 (array!22217 (_ BitVec 32) List!6031) Bool)

(assert (=> b!379757 (= res!215521 (arrayNoDuplicates!0 lt!177599 #b00000000000000000000000000000000 Nil!6028))))

(declare-fun b!379758 () Bool)

(declare-fun res!215520 () Bool)

(assert (=> b!379758 (=> (not res!215520) (not e!231025))))

(declare-fun arrayContainsKey!0 (array!22217 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379758 (= res!215520 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!379759 () Bool)

(assert (=> b!379759 (= e!231025 e!231024)))

(declare-fun res!215513 () Bool)

(assert (=> b!379759 (=> (not res!215513) (not e!231024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22217 (_ BitVec 32)) Bool)

(assert (=> b!379759 (= res!215513 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177599 mask!970))))

(assert (=> b!379759 (= lt!177599 (array!22218 (store (arr!10574 _keys!658) i!548 k0!778) (size!10926 _keys!658)))))

(declare-fun b!379760 () Bool)

(declare-fun e!231022 () Bool)

(assert (=> b!379760 (= e!231022 tp_is_empty!9159)))

(declare-fun b!379761 () Bool)

(declare-fun res!215512 () Bool)

(assert (=> b!379761 (=> (not res!215512) (not e!231025))))

(assert (=> b!379761 (= res!215512 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10926 _keys!658))))))

(declare-fun mapIsEmpty!15303 () Bool)

(declare-fun mapRes!15303 () Bool)

(assert (=> mapIsEmpty!15303 mapRes!15303))

(declare-fun b!379762 () Bool)

(declare-fun e!231023 () Bool)

(assert (=> b!379762 (= e!231026 e!231023)))

(declare-fun res!215511 () Bool)

(assert (=> b!379762 (=> res!215511 e!231023)))

(assert (=> b!379762 (= res!215511 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!177590 () ListLongMap!5085)

(assert (=> b!379762 (= lt!177594 lt!177590)))

(declare-fun lt!177593 () tuple2!6158)

(assert (=> b!379762 (= lt!177590 (+!899 lt!177601 lt!177593))))

(declare-fun lt!177592 () ListLongMap!5085)

(assert (=> b!379762 (= lt!177597 lt!177592)))

(assert (=> b!379762 (= lt!177592 (+!899 lt!177595 lt!177593))))

(assert (=> b!379762 (= lt!177597 (+!899 lt!177589 lt!177593))))

(assert (=> b!379762 (= lt!177593 (tuple2!6159 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379763 () Bool)

(declare-fun res!215517 () Bool)

(assert (=> b!379763 (=> (not res!215517) (not e!231025))))

(assert (=> b!379763 (= res!215517 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6028))))

(declare-fun b!379764 () Bool)

(declare-fun res!215514 () Bool)

(assert (=> b!379764 (=> (not res!215514) (not e!231025))))

(assert (=> b!379764 (= res!215514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379765 () Bool)

(declare-fun res!215515 () Bool)

(assert (=> b!379765 (=> (not res!215515) (not e!231025))))

(assert (=> b!379765 (= res!215515 (or (= (select (arr!10574 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10574 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379766 () Bool)

(assert (=> b!379766 (= e!231020 (and e!231022 mapRes!15303))))

(declare-fun condMapEmpty!15303 () Bool)

(declare-fun mapDefault!15303 () ValueCell!4236)

(assert (=> b!379766 (= condMapEmpty!15303 (= (arr!10573 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4236)) mapDefault!15303)))))

(declare-fun b!379767 () Bool)

(declare-fun res!215519 () Bool)

(assert (=> b!379767 (=> (not res!215519) (not e!231025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379767 (= res!215519 (validKeyInArray!0 k0!778))))

(declare-fun mapNonEmpty!15303 () Bool)

(declare-fun tp!30248 () Bool)

(assert (=> mapNonEmpty!15303 (= mapRes!15303 (and tp!30248 e!231027))))

(declare-fun mapValue!15303 () ValueCell!4236)

(declare-fun mapRest!15303 () (Array (_ BitVec 32) ValueCell!4236))

(declare-fun mapKey!15303 () (_ BitVec 32))

(assert (=> mapNonEmpty!15303 (= (arr!10573 _values!506) (store mapRest!15303 mapKey!15303 mapValue!15303))))

(declare-fun b!379768 () Bool)

(declare-fun res!215522 () Bool)

(assert (=> b!379768 (=> (not res!215522) (not e!231025))))

(assert (=> b!379768 (= res!215522 (and (= (size!10925 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10926 _keys!658) (size!10925 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379769 () Bool)

(assert (=> b!379769 (= e!231023 true)))

(assert (=> b!379769 (= lt!177592 (+!899 lt!177590 lt!177596))))

(declare-fun lt!177598 () Unit!11693)

(declare-fun addCommutativeForDiffKeys!311 (ListLongMap!5085 (_ BitVec 64) V!13317 (_ BitVec 64) V!13317) Unit!11693)

(assert (=> b!379769 (= lt!177598 (addCommutativeForDiffKeys!311 lt!177601 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(assert (= (and start!37392 res!215516) b!379768))

(assert (= (and b!379768 res!215522) b!379764))

(assert (= (and b!379764 res!215514) b!379763))

(assert (= (and b!379763 res!215517) b!379761))

(assert (= (and b!379761 res!215512) b!379767))

(assert (= (and b!379767 res!215519) b!379765))

(assert (= (and b!379765 res!215515) b!379758))

(assert (= (and b!379758 res!215520) b!379759))

(assert (= (and b!379759 res!215513) b!379757))

(assert (= (and b!379757 res!215521) b!379756))

(assert (= (and b!379756 (not res!215518)) b!379762))

(assert (= (and b!379762 (not res!215511)) b!379769))

(assert (= (and b!379766 condMapEmpty!15303) mapIsEmpty!15303))

(assert (= (and b!379766 (not condMapEmpty!15303)) mapNonEmpty!15303))

(get-info :version)

(assert (= (and mapNonEmpty!15303 ((_ is ValueCellFull!4236) mapValue!15303)) b!379755))

(assert (= (and b!379766 ((_ is ValueCellFull!4236) mapDefault!15303)) b!379760))

(assert (= start!37392 b!379766))

(declare-fun m!376709 () Bool)

(assert (=> mapNonEmpty!15303 m!376709))

(declare-fun m!376711 () Bool)

(assert (=> b!379765 m!376711))

(declare-fun m!376713 () Bool)

(assert (=> b!379769 m!376713))

(declare-fun m!376715 () Bool)

(assert (=> b!379769 m!376715))

(declare-fun m!376717 () Bool)

(assert (=> b!379758 m!376717))

(declare-fun m!376719 () Bool)

(assert (=> b!379763 m!376719))

(declare-fun m!376721 () Bool)

(assert (=> b!379759 m!376721))

(declare-fun m!376723 () Bool)

(assert (=> b!379759 m!376723))

(declare-fun m!376725 () Bool)

(assert (=> b!379764 m!376725))

(declare-fun m!376727 () Bool)

(assert (=> b!379757 m!376727))

(declare-fun m!376729 () Bool)

(assert (=> b!379762 m!376729))

(declare-fun m!376731 () Bool)

(assert (=> b!379762 m!376731))

(declare-fun m!376733 () Bool)

(assert (=> b!379762 m!376733))

(declare-fun m!376735 () Bool)

(assert (=> start!37392 m!376735))

(declare-fun m!376737 () Bool)

(assert (=> start!37392 m!376737))

(declare-fun m!376739 () Bool)

(assert (=> start!37392 m!376739))

(declare-fun m!376741 () Bool)

(assert (=> b!379767 m!376741))

(declare-fun m!376743 () Bool)

(assert (=> b!379756 m!376743))

(declare-fun m!376745 () Bool)

(assert (=> b!379756 m!376745))

(declare-fun m!376747 () Bool)

(assert (=> b!379756 m!376747))

(declare-fun m!376749 () Bool)

(assert (=> b!379756 m!376749))

(declare-fun m!376751 () Bool)

(assert (=> b!379756 m!376751))

(declare-fun m!376753 () Bool)

(assert (=> b!379756 m!376753))

(declare-fun m!376755 () Bool)

(assert (=> b!379756 m!376755))

(check-sat (not b!379758) (not b!379764) (not start!37392) (not b!379769) (not mapNonEmpty!15303) (not b!379767) b_and!15771 (not b_next!8511) (not b!379756) (not b!379759) tp_is_empty!9159 (not b!379762) (not b!379763) (not b!379757))
(check-sat b_and!15771 (not b_next!8511))
