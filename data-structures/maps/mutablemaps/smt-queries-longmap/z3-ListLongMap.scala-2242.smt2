; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36924 () Bool)

(assert start!36924)

(declare-fun b_free!8043 () Bool)

(declare-fun b_next!8043 () Bool)

(assert (=> start!36924 (= b_free!8043 (not b_next!8043))))

(declare-fun tp!28844 () Bool)

(declare-fun b_and!15303 () Bool)

(assert (=> start!36924 (= tp!28844 b_and!15303)))

(declare-fun b!369683 () Bool)

(declare-fun e!225893 () Bool)

(declare-fun e!225892 () Bool)

(declare-fun mapRes!14601 () Bool)

(assert (=> b!369683 (= e!225893 (and e!225892 mapRes!14601))))

(declare-fun condMapEmpty!14601 () Bool)

(declare-datatypes ((V!12693 0))(
  ( (V!12694 (val!4390 Int)) )
))
(declare-datatypes ((ValueCell!4002 0))(
  ( (ValueCellFull!4002 (v!6583 V!12693)) (EmptyCell!4002) )
))
(declare-datatypes ((array!21305 0))(
  ( (array!21306 (arr!10118 (Array (_ BitVec 32) ValueCell!4002)) (size!10470 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21305)

(declare-fun mapDefault!14601 () ValueCell!4002)

(assert (=> b!369683 (= condMapEmpty!14601 (= (arr!10118 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4002)) mapDefault!14601)))))

(declare-fun b!369684 () Bool)

(declare-fun e!225890 () Bool)

(declare-fun tp_is_empty!8691 () Bool)

(assert (=> b!369684 (= e!225890 tp_is_empty!8691)))

(declare-fun b!369685 () Bool)

(declare-fun res!207552 () Bool)

(declare-fun e!225891 () Bool)

(assert (=> b!369685 (=> (not res!207552) (not e!225891))))

(declare-datatypes ((array!21307 0))(
  ( (array!21308 (arr!10119 (Array (_ BitVec 32) (_ BitVec 64))) (size!10471 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21307)

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!369685 (= res!207552 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!14601 () Bool)

(declare-fun tp!28845 () Bool)

(assert (=> mapNonEmpty!14601 (= mapRes!14601 (and tp!28845 e!225890))))

(declare-fun mapValue!14601 () ValueCell!4002)

(declare-fun mapKey!14601 () (_ BitVec 32))

(declare-fun mapRest!14601 () (Array (_ BitVec 32) ValueCell!4002))

(assert (=> mapNonEmpty!14601 (= (arr!10118 _values!506) (store mapRest!14601 mapKey!14601 mapValue!14601))))

(declare-fun b!369686 () Bool)

(declare-fun e!225894 () Bool)

(assert (=> b!369686 (= e!225891 e!225894)))

(declare-fun res!207554 () Bool)

(assert (=> b!369686 (=> (not res!207554) (not e!225894))))

(declare-fun lt!169801 () array!21307)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21307 (_ BitVec 32)) Bool)

(assert (=> b!369686 (= res!207554 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!169801 mask!970))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!369686 (= lt!169801 (array!21308 (store (arr!10119 _keys!658) i!548 k0!778) (size!10471 _keys!658)))))

(declare-fun mapIsEmpty!14601 () Bool)

(assert (=> mapIsEmpty!14601 mapRes!14601))

(declare-fun b!369687 () Bool)

(assert (=> b!369687 (= e!225894 false)))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!12693)

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun v!373 () V!12693)

(declare-datatypes ((tuple2!5814 0))(
  ( (tuple2!5815 (_1!2917 (_ BitVec 64)) (_2!2917 V!12693)) )
))
(declare-datatypes ((List!5677 0))(
  ( (Nil!5674) (Cons!5673 (h!6529 tuple2!5814) (t!10835 List!5677)) )
))
(declare-datatypes ((ListLongMap!4741 0))(
  ( (ListLongMap!4742 (toList!2386 List!5677)) )
))
(declare-fun lt!169799 () ListLongMap!4741)

(declare-fun minValue!472 () V!12693)

(declare-fun getCurrentListMapNoExtraKeys!654 (array!21307 array!21305 (_ BitVec 32) (_ BitVec 32) V!12693 V!12693 (_ BitVec 32) Int) ListLongMap!4741)

(assert (=> b!369687 (= lt!169799 (getCurrentListMapNoExtraKeys!654 lt!169801 (array!21306 (store (arr!10118 _values!506) i!548 (ValueCellFull!4002 v!373)) (size!10470 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!169800 () ListLongMap!4741)

(assert (=> b!369687 (= lt!169800 (getCurrentListMapNoExtraKeys!654 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!369688 () Bool)

(declare-fun res!207548 () Bool)

(assert (=> b!369688 (=> (not res!207548) (not e!225891))))

(assert (=> b!369688 (= res!207548 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10471 _keys!658))))))

(declare-fun b!369689 () Bool)

(assert (=> b!369689 (= e!225892 tp_is_empty!8691)))

(declare-fun b!369690 () Bool)

(declare-fun res!207549 () Bool)

(assert (=> b!369690 (=> (not res!207549) (not e!225891))))

(assert (=> b!369690 (= res!207549 (and (= (size!10470 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10471 _keys!658) (size!10470 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!207545 () Bool)

(assert (=> start!36924 (=> (not res!207545) (not e!225891))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!36924 (= res!207545 (validMask!0 mask!970))))

(assert (=> start!36924 e!225891))

(declare-fun array_inv!7476 (array!21305) Bool)

(assert (=> start!36924 (and (array_inv!7476 _values!506) e!225893)))

(assert (=> start!36924 tp!28844))

(assert (=> start!36924 true))

(assert (=> start!36924 tp_is_empty!8691))

(declare-fun array_inv!7477 (array!21307) Bool)

(assert (=> start!36924 (array_inv!7477 _keys!658)))

(declare-fun b!369691 () Bool)

(declare-fun res!207550 () Bool)

(assert (=> b!369691 (=> (not res!207550) (not e!225891))))

(assert (=> b!369691 (= res!207550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!369692 () Bool)

(declare-fun res!207551 () Bool)

(assert (=> b!369692 (=> (not res!207551) (not e!225891))))

(assert (=> b!369692 (= res!207551 (or (= (select (arr!10119 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10119 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!369693 () Bool)

(declare-fun res!207546 () Bool)

(assert (=> b!369693 (=> (not res!207546) (not e!225894))))

(declare-datatypes ((List!5678 0))(
  ( (Nil!5675) (Cons!5674 (h!6530 (_ BitVec 64)) (t!10836 List!5678)) )
))
(declare-fun arrayNoDuplicates!0 (array!21307 (_ BitVec 32) List!5678) Bool)

(assert (=> b!369693 (= res!207546 (arrayNoDuplicates!0 lt!169801 #b00000000000000000000000000000000 Nil!5675))))

(declare-fun b!369694 () Bool)

(declare-fun res!207553 () Bool)

(assert (=> b!369694 (=> (not res!207553) (not e!225891))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!369694 (= res!207553 (validKeyInArray!0 k0!778))))

(declare-fun b!369695 () Bool)

(declare-fun res!207547 () Bool)

(assert (=> b!369695 (=> (not res!207547) (not e!225891))))

(assert (=> b!369695 (= res!207547 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5675))))

(assert (= (and start!36924 res!207545) b!369690))

(assert (= (and b!369690 res!207549) b!369691))

(assert (= (and b!369691 res!207550) b!369695))

(assert (= (and b!369695 res!207547) b!369688))

(assert (= (and b!369688 res!207548) b!369694))

(assert (= (and b!369694 res!207553) b!369692))

(assert (= (and b!369692 res!207551) b!369685))

(assert (= (and b!369685 res!207552) b!369686))

(assert (= (and b!369686 res!207554) b!369693))

(assert (= (and b!369693 res!207546) b!369687))

(assert (= (and b!369683 condMapEmpty!14601) mapIsEmpty!14601))

(assert (= (and b!369683 (not condMapEmpty!14601)) mapNonEmpty!14601))

(get-info :version)

(assert (= (and mapNonEmpty!14601 ((_ is ValueCellFull!4002) mapValue!14601)) b!369684))

(assert (= (and b!369683 ((_ is ValueCellFull!4002) mapDefault!14601)) b!369689))

(assert (= start!36924 b!369683))

(declare-fun m!365999 () Bool)

(assert (=> b!369694 m!365999))

(declare-fun m!366001 () Bool)

(assert (=> b!369695 m!366001))

(declare-fun m!366003 () Bool)

(assert (=> mapNonEmpty!14601 m!366003))

(declare-fun m!366005 () Bool)

(assert (=> b!369691 m!366005))

(declare-fun m!366007 () Bool)

(assert (=> b!369687 m!366007))

(declare-fun m!366009 () Bool)

(assert (=> b!369687 m!366009))

(declare-fun m!366011 () Bool)

(assert (=> b!369687 m!366011))

(declare-fun m!366013 () Bool)

(assert (=> start!36924 m!366013))

(declare-fun m!366015 () Bool)

(assert (=> start!36924 m!366015))

(declare-fun m!366017 () Bool)

(assert (=> start!36924 m!366017))

(declare-fun m!366019 () Bool)

(assert (=> b!369686 m!366019))

(declare-fun m!366021 () Bool)

(assert (=> b!369686 m!366021))

(declare-fun m!366023 () Bool)

(assert (=> b!369692 m!366023))

(declare-fun m!366025 () Bool)

(assert (=> b!369693 m!366025))

(declare-fun m!366027 () Bool)

(assert (=> b!369685 m!366027))

(check-sat (not b!369685) (not start!36924) b_and!15303 (not b_next!8043) (not b!369695) (not b!369686) (not b!369693) tp_is_empty!8691 (not b!369687) (not b!369691) (not mapNonEmpty!14601) (not b!369694))
(check-sat b_and!15303 (not b_next!8043))
