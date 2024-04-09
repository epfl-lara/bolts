; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37776 () Bool)

(assert start!37776)

(declare-fun b_free!8871 () Bool)

(declare-fun b_next!8871 () Bool)

(assert (=> start!37776 (= b_free!8871 (not b_next!8871))))

(declare-fun tp!31364 () Bool)

(declare-fun b_and!16131 () Bool)

(assert (=> start!37776 (= tp!31364 b_and!16131)))

(declare-fun b!387494 () Bool)

(declare-fun e!234898 () Bool)

(declare-fun e!234901 () Bool)

(declare-fun mapRes!15879 () Bool)

(assert (=> b!387494 (= e!234898 (and e!234901 mapRes!15879))))

(declare-fun condMapEmpty!15879 () Bool)

(declare-datatypes ((V!13829 0))(
  ( (V!13830 (val!4816 Int)) )
))
(declare-datatypes ((ValueCell!4428 0))(
  ( (ValueCellFull!4428 (v!7009 V!13829)) (EmptyCell!4428) )
))
(declare-datatypes ((array!22955 0))(
  ( (array!22956 (arr!10943 (Array (_ BitVec 32) ValueCell!4428)) (size!11295 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22955)

(declare-fun mapDefault!15879 () ValueCell!4428)

(assert (=> b!387494 (= condMapEmpty!15879 (= (arr!10943 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4428)) mapDefault!15879)))))

(declare-fun mapIsEmpty!15879 () Bool)

(assert (=> mapIsEmpty!15879 mapRes!15879))

(declare-fun b!387495 () Bool)

(declare-fun res!221527 () Bool)

(declare-fun e!234902 () Bool)

(assert (=> b!387495 (=> (not res!221527) (not e!234902))))

(declare-datatypes ((array!22957 0))(
  ( (array!22958 (arr!10944 (Array (_ BitVec 32) (_ BitVec 64))) (size!11296 (_ BitVec 32))) )
))
(declare-fun lt!182058 () array!22957)

(declare-datatypes ((List!6299 0))(
  ( (Nil!6296) (Cons!6295 (h!7151 (_ BitVec 64)) (t!11457 List!6299)) )
))
(declare-fun arrayNoDuplicates!0 (array!22957 (_ BitVec 32) List!6299) Bool)

(assert (=> b!387495 (= res!221527 (arrayNoDuplicates!0 lt!182058 #b00000000000000000000000000000000 Nil!6296))))

(declare-fun mapNonEmpty!15879 () Bool)

(declare-fun tp!31365 () Bool)

(declare-fun e!234903 () Bool)

(assert (=> mapNonEmpty!15879 (= mapRes!15879 (and tp!31365 e!234903))))

(declare-fun mapValue!15879 () ValueCell!4428)

(declare-fun mapKey!15879 () (_ BitVec 32))

(declare-fun mapRest!15879 () (Array (_ BitVec 32) ValueCell!4428))

(assert (=> mapNonEmpty!15879 (= (arr!10943 _values!506) (store mapRest!15879 mapKey!15879 mapValue!15879))))

(declare-fun b!387496 () Bool)

(declare-fun tp_is_empty!9543 () Bool)

(assert (=> b!387496 (= e!234901 tp_is_empty!9543)))

(declare-fun b!387497 () Bool)

(assert (=> b!387497 (= e!234903 tp_is_empty!9543)))

(declare-fun b!387498 () Bool)

(assert (=> b!387498 (= e!234902 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!6416 0))(
  ( (tuple2!6417 (_1!3218 (_ BitVec 64)) (_2!3218 V!13829)) )
))
(declare-datatypes ((List!6300 0))(
  ( (Nil!6297) (Cons!6296 (h!7152 tuple2!6416) (t!11458 List!6300)) )
))
(declare-datatypes ((ListLongMap!5343 0))(
  ( (ListLongMap!5344 (toList!2687 List!6300)) )
))
(declare-fun lt!182057 () ListLongMap!5343)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!13829)

(declare-fun zeroValue!472 () V!13829)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun minValue!472 () V!13829)

(declare-fun getCurrentListMapNoExtraKeys!921 (array!22957 array!22955 (_ BitVec 32) (_ BitVec 32) V!13829 V!13829 (_ BitVec 32) Int) ListLongMap!5343)

(assert (=> b!387498 (= lt!182057 (getCurrentListMapNoExtraKeys!921 lt!182058 (array!22956 (store (arr!10943 _values!506) i!548 (ValueCellFull!4428 v!373)) (size!11295 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun _keys!658 () array!22957)

(declare-fun lt!182059 () ListLongMap!5343)

(assert (=> b!387498 (= lt!182059 (getCurrentListMapNoExtraKeys!921 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun res!221529 () Bool)

(declare-fun e!234899 () Bool)

(assert (=> start!37776 (=> (not res!221529) (not e!234899))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37776 (= res!221529 (validMask!0 mask!970))))

(assert (=> start!37776 e!234899))

(declare-fun array_inv!8024 (array!22955) Bool)

(assert (=> start!37776 (and (array_inv!8024 _values!506) e!234898)))

(assert (=> start!37776 tp!31364))

(assert (=> start!37776 true))

(assert (=> start!37776 tp_is_empty!9543))

(declare-fun array_inv!8025 (array!22957) Bool)

(assert (=> start!37776 (array_inv!8025 _keys!658)))

(declare-fun b!387499 () Bool)

(declare-fun res!221525 () Bool)

(assert (=> b!387499 (=> (not res!221525) (not e!234899))))

(assert (=> b!387499 (= res!221525 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6296))))

(declare-fun b!387500 () Bool)

(assert (=> b!387500 (= e!234899 e!234902)))

(declare-fun res!221522 () Bool)

(assert (=> b!387500 (=> (not res!221522) (not e!234902))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22957 (_ BitVec 32)) Bool)

(assert (=> b!387500 (= res!221522 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!182058 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!387500 (= lt!182058 (array!22958 (store (arr!10944 _keys!658) i!548 k0!778) (size!11296 _keys!658)))))

(declare-fun b!387501 () Bool)

(declare-fun res!221531 () Bool)

(assert (=> b!387501 (=> (not res!221531) (not e!234899))))

(assert (=> b!387501 (= res!221531 (and (= (size!11295 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11296 _keys!658) (size!11295 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!387502 () Bool)

(declare-fun res!221526 () Bool)

(assert (=> b!387502 (=> (not res!221526) (not e!234899))))

(assert (=> b!387502 (= res!221526 (or (= (select (arr!10944 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10944 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!387503 () Bool)

(declare-fun res!221528 () Bool)

(assert (=> b!387503 (=> (not res!221528) (not e!234899))))

(assert (=> b!387503 (= res!221528 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11296 _keys!658))))))

(declare-fun b!387504 () Bool)

(declare-fun res!221523 () Bool)

(assert (=> b!387504 (=> (not res!221523) (not e!234899))))

(assert (=> b!387504 (= res!221523 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387505 () Bool)

(declare-fun res!221524 () Bool)

(assert (=> b!387505 (=> (not res!221524) (not e!234899))))

(declare-fun arrayContainsKey!0 (array!22957 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!387505 (= res!221524 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!387506 () Bool)

(declare-fun res!221530 () Bool)

(assert (=> b!387506 (=> (not res!221530) (not e!234899))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387506 (= res!221530 (validKeyInArray!0 k0!778))))

(assert (= (and start!37776 res!221529) b!387501))

(assert (= (and b!387501 res!221531) b!387504))

(assert (= (and b!387504 res!221523) b!387499))

(assert (= (and b!387499 res!221525) b!387503))

(assert (= (and b!387503 res!221528) b!387506))

(assert (= (and b!387506 res!221530) b!387502))

(assert (= (and b!387502 res!221526) b!387505))

(assert (= (and b!387505 res!221524) b!387500))

(assert (= (and b!387500 res!221522) b!387495))

(assert (= (and b!387495 res!221527) b!387498))

(assert (= (and b!387494 condMapEmpty!15879) mapIsEmpty!15879))

(assert (= (and b!387494 (not condMapEmpty!15879)) mapNonEmpty!15879))

(get-info :version)

(assert (= (and mapNonEmpty!15879 ((_ is ValueCellFull!4428) mapValue!15879)) b!387497))

(assert (= (and b!387494 ((_ is ValueCellFull!4428) mapDefault!15879)) b!387496))

(assert (= start!37776 b!387494))

(declare-fun m!383591 () Bool)

(assert (=> b!387500 m!383591))

(declare-fun m!383593 () Bool)

(assert (=> b!387500 m!383593))

(declare-fun m!383595 () Bool)

(assert (=> b!387506 m!383595))

(declare-fun m!383597 () Bool)

(assert (=> mapNonEmpty!15879 m!383597))

(declare-fun m!383599 () Bool)

(assert (=> b!387498 m!383599))

(declare-fun m!383601 () Bool)

(assert (=> b!387498 m!383601))

(declare-fun m!383603 () Bool)

(assert (=> b!387498 m!383603))

(declare-fun m!383605 () Bool)

(assert (=> b!387502 m!383605))

(declare-fun m!383607 () Bool)

(assert (=> b!387505 m!383607))

(declare-fun m!383609 () Bool)

(assert (=> b!387499 m!383609))

(declare-fun m!383611 () Bool)

(assert (=> b!387504 m!383611))

(declare-fun m!383613 () Bool)

(assert (=> b!387495 m!383613))

(declare-fun m!383615 () Bool)

(assert (=> start!37776 m!383615))

(declare-fun m!383617 () Bool)

(assert (=> start!37776 m!383617))

(declare-fun m!383619 () Bool)

(assert (=> start!37776 m!383619))

(check-sat (not b!387505) (not b!387498) b_and!16131 (not b!387500) (not b!387504) (not start!37776) (not mapNonEmpty!15879) (not b_next!8871) (not b!387499) (not b!387506) (not b!387495) tp_is_empty!9543)
(check-sat b_and!16131 (not b_next!8871))
