; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36876 () Bool)

(assert start!36876)

(declare-fun b_free!7995 () Bool)

(declare-fun b_next!7995 () Bool)

(assert (=> start!36876 (= b_free!7995 (not b_next!7995))))

(declare-fun tp!28701 () Bool)

(declare-fun b_and!15255 () Bool)

(assert (=> start!36876 (= tp!28701 b_and!15255)))

(declare-fun b!368747 () Bool)

(declare-fun e!225458 () Bool)

(declare-fun tp_is_empty!8643 () Bool)

(assert (=> b!368747 (= e!225458 tp_is_empty!8643)))

(declare-fun b!368748 () Bool)

(declare-fun res!206828 () Bool)

(declare-fun e!225462 () Bool)

(assert (=> b!368748 (=> (not res!206828) (not e!225462))))

(declare-datatypes ((array!21209 0))(
  ( (array!21210 (arr!10070 (Array (_ BitVec 32) (_ BitVec 64))) (size!10422 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21209)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21209 (_ BitVec 32)) Bool)

(assert (=> b!368748 (= res!206828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!368749 () Bool)

(declare-fun e!225459 () Bool)

(declare-fun e!225460 () Bool)

(declare-fun mapRes!14529 () Bool)

(assert (=> b!368749 (= e!225459 (and e!225460 mapRes!14529))))

(declare-fun condMapEmpty!14529 () Bool)

(declare-datatypes ((V!12629 0))(
  ( (V!12630 (val!4366 Int)) )
))
(declare-datatypes ((ValueCell!3978 0))(
  ( (ValueCellFull!3978 (v!6559 V!12629)) (EmptyCell!3978) )
))
(declare-datatypes ((array!21211 0))(
  ( (array!21212 (arr!10071 (Array (_ BitVec 32) ValueCell!3978)) (size!10423 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21211)

(declare-fun mapDefault!14529 () ValueCell!3978)

(assert (=> b!368749 (= condMapEmpty!14529 (= (arr!10071 _values!506) ((as const (Array (_ BitVec 32) ValueCell!3978)) mapDefault!14529)))))

(declare-fun b!368750 () Bool)

(declare-fun e!225457 () Bool)

(assert (=> b!368750 (= e!225462 e!225457)))

(declare-fun res!206827 () Bool)

(assert (=> b!368750 (=> (not res!206827) (not e!225457))))

(declare-fun lt!169583 () array!21209)

(assert (=> b!368750 (= res!206827 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169583 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!368750 (= lt!169583 (array!21210 (store (arr!10070 _keys!658) i!548 k0!778) (size!10422 _keys!658)))))

(declare-fun b!368751 () Bool)

(assert (=> b!368751 (= e!225457 false)))

(declare-fun defaultEntry!514 () Int)

(declare-datatypes ((tuple2!5780 0))(
  ( (tuple2!5781 (_1!2900 (_ BitVec 64)) (_2!2900 V!12629)) )
))
(declare-datatypes ((List!5640 0))(
  ( (Nil!5637) (Cons!5636 (h!6492 tuple2!5780) (t!10798 List!5640)) )
))
(declare-datatypes ((ListLongMap!4707 0))(
  ( (ListLongMap!4708 (toList!2369 List!5640)) )
))
(declare-fun lt!169584 () ListLongMap!4707)

(declare-fun zeroValue!472 () V!12629)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12629)

(declare-fun minValue!472 () V!12629)

(declare-fun getCurrentListMapNoExtraKeys!637 (array!21209 array!21211 (_ BitVec 32) (_ BitVec 32) V!12629 V!12629 (_ BitVec 32) Int) ListLongMap!4707)

(assert (=> b!368751 (= lt!169584 (getCurrentListMapNoExtraKeys!637 lt!169583 (array!21212 (store (arr!10071 _values!506) i!548 (ValueCellFull!3978 v!373)) (size!10423 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169585 () ListLongMap!4707)

(assert (=> b!368751 (= lt!169585 (getCurrentListMapNoExtraKeys!637 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!368752 () Bool)

(declare-fun res!206831 () Bool)

(assert (=> b!368752 (=> (not res!206831) (not e!225457))))

(declare-datatypes ((List!5641 0))(
  ( (Nil!5638) (Cons!5637 (h!6493 (_ BitVec 64)) (t!10799 List!5641)) )
))
(declare-fun arrayNoDuplicates!0 (array!21209 (_ BitVec 32) List!5641) Bool)

(assert (=> b!368752 (= res!206831 (arrayNoDuplicates!0 lt!169583 #b00000000000000000000000000000000 Nil!5638))))

(declare-fun b!368753 () Bool)

(declare-fun res!206829 () Bool)

(assert (=> b!368753 (=> (not res!206829) (not e!225462))))

(assert (=> b!368753 (= res!206829 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10422 _keys!658))))))

(declare-fun b!368754 () Bool)

(declare-fun res!206825 () Bool)

(assert (=> b!368754 (=> (not res!206825) (not e!225462))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!368754 (= res!206825 (validKeyInArray!0 k0!778))))

(declare-fun mapIsEmpty!14529 () Bool)

(assert (=> mapIsEmpty!14529 mapRes!14529))

(declare-fun b!368755 () Bool)

(declare-fun res!206833 () Bool)

(assert (=> b!368755 (=> (not res!206833) (not e!225462))))

(assert (=> b!368755 (= res!206833 (and (= (size!10423 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10422 _keys!658) (size!10423 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!14529 () Bool)

(declare-fun tp!28700 () Bool)

(assert (=> mapNonEmpty!14529 (= mapRes!14529 (and tp!28700 e!225458))))

(declare-fun mapValue!14529 () ValueCell!3978)

(declare-fun mapKey!14529 () (_ BitVec 32))

(declare-fun mapRest!14529 () (Array (_ BitVec 32) ValueCell!3978))

(assert (=> mapNonEmpty!14529 (= (arr!10071 _values!506) (store mapRest!14529 mapKey!14529 mapValue!14529))))

(declare-fun b!368756 () Bool)

(declare-fun res!206830 () Bool)

(assert (=> b!368756 (=> (not res!206830) (not e!225462))))

(declare-fun arrayContainsKey!0 (array!21209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!368756 (= res!206830 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!368757 () Bool)

(assert (=> b!368757 (= e!225460 tp_is_empty!8643)))

(declare-fun b!368758 () Bool)

(declare-fun res!206834 () Bool)

(assert (=> b!368758 (=> (not res!206834) (not e!225462))))

(assert (=> b!368758 (= res!206834 (or (= (select (arr!10070 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10070 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!368759 () Bool)

(declare-fun res!206826 () Bool)

(assert (=> b!368759 (=> (not res!206826) (not e!225462))))

(assert (=> b!368759 (= res!206826 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5638))))

(declare-fun res!206832 () Bool)

(assert (=> start!36876 (=> (not res!206832) (not e!225462))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36876 (= res!206832 (validMask!0 mask!970))))

(assert (=> start!36876 e!225462))

(declare-fun array_inv!7438 (array!21211) Bool)

(assert (=> start!36876 (and (array_inv!7438 _values!506) e!225459)))

(assert (=> start!36876 tp!28701))

(assert (=> start!36876 true))

(assert (=> start!36876 tp_is_empty!8643))

(declare-fun array_inv!7439 (array!21209) Bool)

(assert (=> start!36876 (array_inv!7439 _keys!658)))

(assert (= (and start!36876 res!206832) b!368755))

(assert (= (and b!368755 res!206833) b!368748))

(assert (= (and b!368748 res!206828) b!368759))

(assert (= (and b!368759 res!206826) b!368753))

(assert (= (and b!368753 res!206829) b!368754))

(assert (= (and b!368754 res!206825) b!368758))

(assert (= (and b!368758 res!206834) b!368756))

(assert (= (and b!368756 res!206830) b!368750))

(assert (= (and b!368750 res!206827) b!368752))

(assert (= (and b!368752 res!206831) b!368751))

(assert (= (and b!368749 condMapEmpty!14529) mapIsEmpty!14529))

(assert (= (and b!368749 (not condMapEmpty!14529)) mapNonEmpty!14529))

(get-info :version)

(assert (= (and mapNonEmpty!14529 ((_ is ValueCellFull!3978) mapValue!14529)) b!368747))

(assert (= (and b!368749 ((_ is ValueCellFull!3978) mapDefault!14529)) b!368757))

(assert (= start!36876 b!368749))

(declare-fun m!365279 () Bool)

(assert (=> b!368758 m!365279))

(declare-fun m!365281 () Bool)

(assert (=> mapNonEmpty!14529 m!365281))

(declare-fun m!365283 () Bool)

(assert (=> b!368756 m!365283))

(declare-fun m!365285 () Bool)

(assert (=> b!368751 m!365285))

(declare-fun m!365287 () Bool)

(assert (=> b!368751 m!365287))

(declare-fun m!365289 () Bool)

(assert (=> b!368751 m!365289))

(declare-fun m!365291 () Bool)

(assert (=> b!368754 m!365291))

(declare-fun m!365293 () Bool)

(assert (=> b!368748 m!365293))

(declare-fun m!365295 () Bool)

(assert (=> start!36876 m!365295))

(declare-fun m!365297 () Bool)

(assert (=> start!36876 m!365297))

(declare-fun m!365299 () Bool)

(assert (=> start!36876 m!365299))

(declare-fun m!365301 () Bool)

(assert (=> b!368759 m!365301))

(declare-fun m!365303 () Bool)

(assert (=> b!368752 m!365303))

(declare-fun m!365305 () Bool)

(assert (=> b!368750 m!365305))

(declare-fun m!365307 () Bool)

(assert (=> b!368750 m!365307))

(check-sat (not b!368748) (not b!368756) (not b!368759) (not b!368754) b_and!15255 (not b_next!7995) (not start!36876) tp_is_empty!8643 (not b!368750) (not b!368751) (not mapNonEmpty!14529) (not b!368752))
(check-sat b_and!15255 (not b_next!7995))
