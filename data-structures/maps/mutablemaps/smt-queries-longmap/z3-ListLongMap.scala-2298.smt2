; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37260 () Bool)

(assert start!37260)

(declare-fun b_free!8379 () Bool)

(declare-fun b_next!8379 () Bool)

(assert (=> start!37260 (= b_free!8379 (not b_next!8379))))

(declare-fun tp!29852 () Bool)

(declare-fun b_and!15639 () Bool)

(assert (=> start!37260 (= tp!29852 b_and!15639)))

(declare-fun mapNonEmpty!15105 () Bool)

(declare-fun mapRes!15105 () Bool)

(declare-fun tp!29853 () Bool)

(declare-fun e!229440 () Bool)

(assert (=> mapNonEmpty!15105 (= mapRes!15105 (and tp!29853 e!229440))))

(declare-datatypes ((V!13141 0))(
  ( (V!13142 (val!4558 Int)) )
))
(declare-datatypes ((ValueCell!4170 0))(
  ( (ValueCellFull!4170 (v!6751 V!13141)) (EmptyCell!4170) )
))
(declare-fun mapRest!15105 () (Array (_ BitVec 32) ValueCell!4170))

(declare-fun mapValue!15105 () ValueCell!4170)

(declare-datatypes ((array!21953 0))(
  ( (array!21954 (arr!10442 (Array (_ BitVec 32) ValueCell!4170)) (size!10794 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21953)

(declare-fun mapKey!15105 () (_ BitVec 32))

(assert (=> mapNonEmpty!15105 (= (arr!10442 _values!506) (store mapRest!15105 mapKey!15105 mapValue!15105))))

(declare-fun b!376776 () Bool)

(declare-fun tp_is_empty!9027 () Bool)

(assert (=> b!376776 (= e!229440 tp_is_empty!9027)))

(declare-fun b!376777 () Bool)

(declare-fun res!213135 () Bool)

(declare-fun e!229439 () Bool)

(assert (=> b!376777 (=> (not res!213135) (not e!229439))))

(declare-datatypes ((array!21955 0))(
  ( (array!21956 (arr!10443 (Array (_ BitVec 32) (_ BitVec 64))) (size!10795 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21955)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!376777 (= res!213135 (or (= (select (arr!10443 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10443 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!213133 () Bool)

(assert (=> start!37260 (=> (not res!213133) (not e!229439))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37260 (= res!213133 (validMask!0 mask!970))))

(assert (=> start!37260 e!229439))

(declare-fun e!229442 () Bool)

(declare-fun array_inv!7690 (array!21953) Bool)

(assert (=> start!37260 (and (array_inv!7690 _values!506) e!229442)))

(assert (=> start!37260 tp!29852))

(assert (=> start!37260 true))

(assert (=> start!37260 tp_is_empty!9027))

(declare-fun array_inv!7691 (array!21955) Bool)

(assert (=> start!37260 (array_inv!7691 _keys!658)))

(declare-fun b!376778 () Bool)

(declare-fun e!229443 () Bool)

(assert (=> b!376778 (= e!229443 tp_is_empty!9027)))

(declare-fun b!376779 () Bool)

(declare-fun res!213128 () Bool)

(assert (=> b!376779 (=> (not res!213128) (not e!229439))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!21955 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!376779 (= res!213128 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!376780 () Bool)

(declare-fun e!229438 () Bool)

(declare-fun e!229437 () Bool)

(assert (=> b!376780 (= e!229438 (not e!229437))))

(declare-fun res!213126 () Bool)

(assert (=> b!376780 (=> res!213126 e!229437)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!376780 (= res!213126 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13141)

(declare-datatypes ((tuple2!6048 0))(
  ( (tuple2!6049 (_1!3034 (_ BitVec 64)) (_2!3034 V!13141)) )
))
(declare-datatypes ((List!5918 0))(
  ( (Nil!5915) (Cons!5914 (h!6770 tuple2!6048) (t!11076 List!5918)) )
))
(declare-datatypes ((ListLongMap!4975 0))(
  ( (ListLongMap!4976 (toList!2503 List!5918)) )
))
(declare-fun lt!175062 () ListLongMap!4975)

(declare-fun minValue!472 () V!13141)

(declare-fun getCurrentListMap!1941 (array!21955 array!21953 (_ BitVec 32) (_ BitVec 32) V!13141 V!13141 (_ BitVec 32) Int) ListLongMap!4975)

(assert (=> b!376780 (= lt!175062 (getCurrentListMap!1941 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175063 () ListLongMap!4975)

(declare-fun lt!175051 () array!21953)

(declare-fun lt!175058 () array!21955)

(assert (=> b!376780 (= lt!175063 (getCurrentListMap!1941 lt!175058 lt!175051 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!175059 () ListLongMap!4975)

(declare-fun lt!175054 () ListLongMap!4975)

(assert (=> b!376780 (and (= lt!175059 lt!175054) (= lt!175054 lt!175059))))

(declare-fun lt!175052 () ListLongMap!4975)

(declare-fun lt!175061 () tuple2!6048)

(declare-fun +!844 (ListLongMap!4975 tuple2!6048) ListLongMap!4975)

(assert (=> b!376780 (= lt!175054 (+!844 lt!175052 lt!175061))))

(declare-fun v!373 () V!13141)

(assert (=> b!376780 (= lt!175061 (tuple2!6049 k0!778 v!373))))

(declare-datatypes ((Unit!11589 0))(
  ( (Unit!11590) )
))
(declare-fun lt!175060 () Unit!11589)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!92 (array!21955 array!21953 (_ BitVec 32) (_ BitVec 32) V!13141 V!13141 (_ BitVec 32) (_ BitVec 64) V!13141 (_ BitVec 32) Int) Unit!11589)

(assert (=> b!376780 (= lt!175060 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!92 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!759 (array!21955 array!21953 (_ BitVec 32) (_ BitVec 32) V!13141 V!13141 (_ BitVec 32) Int) ListLongMap!4975)

(assert (=> b!376780 (= lt!175059 (getCurrentListMapNoExtraKeys!759 lt!175058 lt!175051 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!376780 (= lt!175051 (array!21954 (store (arr!10442 _values!506) i!548 (ValueCellFull!4170 v!373)) (size!10794 _values!506)))))

(assert (=> b!376780 (= lt!175052 (getCurrentListMapNoExtraKeys!759 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!376781 () Bool)

(declare-fun res!213132 () Bool)

(assert (=> b!376781 (=> (not res!213132) (not e!229439))))

(declare-datatypes ((List!5919 0))(
  ( (Nil!5916) (Cons!5915 (h!6771 (_ BitVec 64)) (t!11077 List!5919)) )
))
(declare-fun arrayNoDuplicates!0 (array!21955 (_ BitVec 32) List!5919) Bool)

(assert (=> b!376781 (= res!213132 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5916))))

(declare-fun b!376782 () Bool)

(assert (=> b!376782 (= e!229442 (and e!229443 mapRes!15105))))

(declare-fun condMapEmpty!15105 () Bool)

(declare-fun mapDefault!15105 () ValueCell!4170)

(assert (=> b!376782 (= condMapEmpty!15105 (= (arr!10442 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4170)) mapDefault!15105)))))

(declare-fun b!376783 () Bool)

(declare-fun e!229441 () Bool)

(assert (=> b!376783 (= e!229441 (bvsle #b00000000000000000000000000000000 (size!10795 _keys!658)))))

(declare-fun lt!175053 () ListLongMap!4975)

(declare-fun lt!175057 () ListLongMap!4975)

(assert (=> b!376783 (= lt!175053 (+!844 lt!175057 lt!175061))))

(declare-fun lt!175056 () Unit!11589)

(declare-fun addCommutativeForDiffKeys!266 (ListLongMap!4975 (_ BitVec 64) V!13141 (_ BitVec 64) V!13141) Unit!11589)

(assert (=> b!376783 (= lt!175056 (addCommutativeForDiffKeys!266 lt!175052 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!376784 () Bool)

(declare-fun res!213136 () Bool)

(assert (=> b!376784 (=> (not res!213136) (not e!229439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!376784 (= res!213136 (validKeyInArray!0 k0!778))))

(declare-fun b!376785 () Bool)

(declare-fun res!213127 () Bool)

(assert (=> b!376785 (=> (not res!213127) (not e!229439))))

(assert (=> b!376785 (= res!213127 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10795 _keys!658))))))

(declare-fun b!376786 () Bool)

(assert (=> b!376786 (= e!229439 e!229438)))

(declare-fun res!213129 () Bool)

(assert (=> b!376786 (=> (not res!213129) (not e!229438))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21955 (_ BitVec 32)) Bool)

(assert (=> b!376786 (= res!213129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!175058 mask!970))))

(assert (=> b!376786 (= lt!175058 (array!21956 (store (arr!10443 _keys!658) i!548 k0!778) (size!10795 _keys!658)))))

(declare-fun b!376787 () Bool)

(declare-fun res!213137 () Bool)

(assert (=> b!376787 (=> (not res!213137) (not e!229439))))

(assert (=> b!376787 (= res!213137 (and (= (size!10794 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10795 _keys!658) (size!10794 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!376788 () Bool)

(declare-fun res!213130 () Bool)

(assert (=> b!376788 (=> (not res!213130) (not e!229439))))

(assert (=> b!376788 (= res!213130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!376789 () Bool)

(declare-fun res!213134 () Bool)

(assert (=> b!376789 (=> (not res!213134) (not e!229438))))

(assert (=> b!376789 (= res!213134 (arrayNoDuplicates!0 lt!175058 #b00000000000000000000000000000000 Nil!5916))))

(declare-fun b!376790 () Bool)

(assert (=> b!376790 (= e!229437 e!229441)))

(declare-fun res!213131 () Bool)

(assert (=> b!376790 (=> res!213131 e!229441)))

(assert (=> b!376790 (= res!213131 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!376790 (= lt!175063 lt!175053)))

(declare-fun lt!175055 () tuple2!6048)

(assert (=> b!376790 (= lt!175053 (+!844 lt!175054 lt!175055))))

(assert (=> b!376790 (= lt!175062 lt!175057)))

(assert (=> b!376790 (= lt!175057 (+!844 lt!175052 lt!175055))))

(assert (=> b!376790 (= lt!175063 (+!844 lt!175059 lt!175055))))

(assert (=> b!376790 (= lt!175055 (tuple2!6049 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun mapIsEmpty!15105 () Bool)

(assert (=> mapIsEmpty!15105 mapRes!15105))

(assert (= (and start!37260 res!213133) b!376787))

(assert (= (and b!376787 res!213137) b!376788))

(assert (= (and b!376788 res!213130) b!376781))

(assert (= (and b!376781 res!213132) b!376785))

(assert (= (and b!376785 res!213127) b!376784))

(assert (= (and b!376784 res!213136) b!376777))

(assert (= (and b!376777 res!213135) b!376779))

(assert (= (and b!376779 res!213128) b!376786))

(assert (= (and b!376786 res!213129) b!376789))

(assert (= (and b!376789 res!213134) b!376780))

(assert (= (and b!376780 (not res!213126)) b!376790))

(assert (= (and b!376790 (not res!213131)) b!376783))

(assert (= (and b!376782 condMapEmpty!15105) mapIsEmpty!15105))

(assert (= (and b!376782 (not condMapEmpty!15105)) mapNonEmpty!15105))

(get-info :version)

(assert (= (and mapNonEmpty!15105 ((_ is ValueCellFull!4170) mapValue!15105)) b!376776))

(assert (= (and b!376782 ((_ is ValueCellFull!4170) mapDefault!15105)) b!376778))

(assert (= start!37260 b!376782))

(declare-fun m!373553 () Bool)

(assert (=> b!376783 m!373553))

(declare-fun m!373555 () Bool)

(assert (=> b!376783 m!373555))

(declare-fun m!373557 () Bool)

(assert (=> b!376789 m!373557))

(declare-fun m!373559 () Bool)

(assert (=> b!376779 m!373559))

(declare-fun m!373561 () Bool)

(assert (=> mapNonEmpty!15105 m!373561))

(declare-fun m!373563 () Bool)

(assert (=> b!376788 m!373563))

(declare-fun m!373565 () Bool)

(assert (=> b!376780 m!373565))

(declare-fun m!373567 () Bool)

(assert (=> b!376780 m!373567))

(declare-fun m!373569 () Bool)

(assert (=> b!376780 m!373569))

(declare-fun m!373571 () Bool)

(assert (=> b!376780 m!373571))

(declare-fun m!373573 () Bool)

(assert (=> b!376780 m!373573))

(declare-fun m!373575 () Bool)

(assert (=> b!376780 m!373575))

(declare-fun m!373577 () Bool)

(assert (=> b!376780 m!373577))

(declare-fun m!373579 () Bool)

(assert (=> b!376790 m!373579))

(declare-fun m!373581 () Bool)

(assert (=> b!376790 m!373581))

(declare-fun m!373583 () Bool)

(assert (=> b!376790 m!373583))

(declare-fun m!373585 () Bool)

(assert (=> start!37260 m!373585))

(declare-fun m!373587 () Bool)

(assert (=> start!37260 m!373587))

(declare-fun m!373589 () Bool)

(assert (=> start!37260 m!373589))

(declare-fun m!373591 () Bool)

(assert (=> b!376781 m!373591))

(declare-fun m!373593 () Bool)

(assert (=> b!376784 m!373593))

(declare-fun m!373595 () Bool)

(assert (=> b!376777 m!373595))

(declare-fun m!373597 () Bool)

(assert (=> b!376786 m!373597))

(declare-fun m!373599 () Bool)

(assert (=> b!376786 m!373599))

(check-sat (not b!376788) (not b!376784) (not b!376779) (not start!37260) (not b!376783) (not mapNonEmpty!15105) b_and!15639 (not b_next!8379) (not b!376786) (not b!376781) (not b!376790) (not b!376780) tp_is_empty!9027 (not b!376789))
(check-sat b_and!15639 (not b_next!8379))
