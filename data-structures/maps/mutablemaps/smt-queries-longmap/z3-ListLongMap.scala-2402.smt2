; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38040 () Bool)

(assert start!38040)

(declare-fun b_free!8979 () Bool)

(declare-fun b_next!8979 () Bool)

(assert (=> start!38040 (= b_free!8979 (not b_next!8979))))

(declare-fun tp!31709 () Bool)

(declare-fun b_and!16323 () Bool)

(assert (=> start!38040 (= tp!31709 b_and!16323)))

(declare-fun b!391242 () Bool)

(declare-fun res!224008 () Bool)

(declare-fun e!236986 () Bool)

(assert (=> b!391242 (=> (not res!224008) (not e!236986))))

(declare-datatypes ((array!23181 0))(
  ( (array!23182 (arr!11049 (Array (_ BitVec 32) (_ BitVec 64))) (size!11401 (_ BitVec 32))) )
))
(declare-fun lt!184679 () array!23181)

(declare-datatypes ((List!6382 0))(
  ( (Nil!6379) (Cons!6378 (h!7234 (_ BitVec 64)) (t!11554 List!6382)) )
))
(declare-fun arrayNoDuplicates!0 (array!23181 (_ BitVec 32) List!6382) Bool)

(assert (=> b!391242 (= res!224008 (arrayNoDuplicates!0 lt!184679 #b00000000000000000000000000000000 Nil!6379))))

(declare-fun b!391243 () Bool)

(declare-fun res!224009 () Bool)

(declare-fun e!236980 () Bool)

(assert (=> b!391243 (=> (not res!224009) (not e!236980))))

(declare-fun i!548 () (_ BitVec 32))

(declare-fun _keys!658 () array!23181)

(assert (=> b!391243 (= res!224009 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11401 _keys!658))))))

(declare-fun b!391244 () Bool)

(declare-fun e!236984 () Bool)

(assert (=> b!391244 (= e!236986 (not e!236984))))

(declare-fun res!224001 () Bool)

(assert (=> b!391244 (=> res!224001 e!236984)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!391244 (= res!224001 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!13973 0))(
  ( (V!13974 (val!4870 Int)) )
))
(declare-datatypes ((ValueCell!4482 0))(
  ( (ValueCellFull!4482 (v!7091 V!13973)) (EmptyCell!4482) )
))
(declare-datatypes ((array!23183 0))(
  ( (array!23184 (arr!11050 (Array (_ BitVec 32) ValueCell!4482)) (size!11402 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23183)

(declare-datatypes ((tuple2!6500 0))(
  ( (tuple2!6501 (_1!3260 (_ BitVec 64)) (_2!3260 V!13973)) )
))
(declare-datatypes ((List!6383 0))(
  ( (Nil!6380) (Cons!6379 (h!7235 tuple2!6500) (t!11555 List!6383)) )
))
(declare-datatypes ((ListLongMap!5427 0))(
  ( (ListLongMap!5428 (toList!2729 List!6383)) )
))
(declare-fun lt!184672 () ListLongMap!5427)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13973)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun minValue!472 () V!13973)

(declare-fun getCurrentListMap!2095 (array!23181 array!23183 (_ BitVec 32) (_ BitVec 32) V!13973 V!13973 (_ BitVec 32) Int) ListLongMap!5427)

(assert (=> b!391244 (= lt!184672 (getCurrentListMap!2095 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184681 () array!23183)

(declare-fun lt!184674 () ListLongMap!5427)

(assert (=> b!391244 (= lt!184674 (getCurrentListMap!2095 lt!184679 lt!184681 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184676 () ListLongMap!5427)

(declare-fun lt!184673 () ListLongMap!5427)

(assert (=> b!391244 (and (= lt!184676 lt!184673) (= lt!184673 lt!184676))))

(declare-fun lt!184669 () ListLongMap!5427)

(declare-fun lt!184675 () tuple2!6500)

(declare-fun +!1027 (ListLongMap!5427 tuple2!6500) ListLongMap!5427)

(assert (=> b!391244 (= lt!184673 (+!1027 lt!184669 lt!184675))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun v!373 () V!13973)

(assert (=> b!391244 (= lt!184675 (tuple2!6501 k0!778 v!373))))

(declare-datatypes ((Unit!11947 0))(
  ( (Unit!11948) )
))
(declare-fun lt!184677 () Unit!11947)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!252 (array!23181 array!23183 (_ BitVec 32) (_ BitVec 32) V!13973 V!13973 (_ BitVec 32) (_ BitVec 64) V!13973 (_ BitVec 32) Int) Unit!11947)

(assert (=> b!391244 (= lt!184677 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!252 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!957 (array!23181 array!23183 (_ BitVec 32) (_ BitVec 32) V!13973 V!13973 (_ BitVec 32) Int) ListLongMap!5427)

(assert (=> b!391244 (= lt!184676 (getCurrentListMapNoExtraKeys!957 lt!184679 lt!184681 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!391244 (= lt!184681 (array!23184 (store (arr!11050 _values!506) i!548 (ValueCellFull!4482 v!373)) (size!11402 _values!506)))))

(assert (=> b!391244 (= lt!184669 (getCurrentListMapNoExtraKeys!957 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391245 () Bool)

(declare-fun res!224002 () Bool)

(assert (=> b!391245 (=> (not res!224002) (not e!236980))))

(declare-fun arrayContainsKey!0 (array!23181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!391245 (= res!224002 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!391246 () Bool)

(declare-fun res!224011 () Bool)

(assert (=> b!391246 (=> (not res!224011) (not e!236980))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!391246 (= res!224011 (validKeyInArray!0 k0!778))))

(declare-fun b!391247 () Bool)

(declare-fun e!236979 () Bool)

(declare-fun tp_is_empty!9651 () Bool)

(assert (=> b!391247 (= e!236979 tp_is_empty!9651)))

(declare-fun b!391248 () Bool)

(declare-fun e!236981 () Bool)

(assert (=> b!391248 (= e!236984 e!236981)))

(declare-fun res!224003 () Bool)

(assert (=> b!391248 (=> res!224003 e!236981)))

(assert (=> b!391248 (= res!224003 (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!184671 () ListLongMap!5427)

(assert (=> b!391248 (= lt!184674 lt!184671)))

(declare-fun lt!184678 () tuple2!6500)

(assert (=> b!391248 (= lt!184671 (+!1027 lt!184673 lt!184678))))

(declare-fun lt!184670 () ListLongMap!5427)

(assert (=> b!391248 (= lt!184672 lt!184670)))

(assert (=> b!391248 (= lt!184670 (+!1027 lt!184669 lt!184678))))

(assert (=> b!391248 (= lt!184674 (+!1027 lt!184676 lt!184678))))

(assert (=> b!391248 (= lt!184678 (tuple2!6501 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391249 () Bool)

(assert (=> b!391249 (= e!236980 e!236986)))

(declare-fun res!224000 () Bool)

(assert (=> b!391249 (=> (not res!224000) (not e!236986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23181 (_ BitVec 32)) Bool)

(assert (=> b!391249 (= res!224000 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184679 mask!970))))

(assert (=> b!391249 (= lt!184679 (array!23182 (store (arr!11049 _keys!658) i!548 k0!778) (size!11401 _keys!658)))))

(declare-fun b!391250 () Bool)

(declare-fun e!236982 () Bool)

(declare-fun e!236983 () Bool)

(declare-fun mapRes!16062 () Bool)

(assert (=> b!391250 (= e!236982 (and e!236983 mapRes!16062))))

(declare-fun condMapEmpty!16062 () Bool)

(declare-fun mapDefault!16062 () ValueCell!4482)

(assert (=> b!391250 (= condMapEmpty!16062 (= (arr!11050 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4482)) mapDefault!16062)))))

(declare-fun mapNonEmpty!16062 () Bool)

(declare-fun tp!31710 () Bool)

(assert (=> mapNonEmpty!16062 (= mapRes!16062 (and tp!31710 e!236979))))

(declare-fun mapRest!16062 () (Array (_ BitVec 32) ValueCell!4482))

(declare-fun mapKey!16062 () (_ BitVec 32))

(declare-fun mapValue!16062 () ValueCell!4482)

(assert (=> mapNonEmpty!16062 (= (arr!11050 _values!506) (store mapRest!16062 mapKey!16062 mapValue!16062))))

(declare-fun b!391251 () Bool)

(declare-fun res!224010 () Bool)

(assert (=> b!391251 (=> (not res!224010) (not e!236980))))

(assert (=> b!391251 (= res!224010 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!391252 () Bool)

(declare-fun res!224006 () Bool)

(assert (=> b!391252 (=> (not res!224006) (not e!236980))))

(assert (=> b!391252 (= res!224006 (and (= (size!11402 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11401 _keys!658) (size!11402 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun res!224005 () Bool)

(assert (=> start!38040 (=> (not res!224005) (not e!236980))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38040 (= res!224005 (validMask!0 mask!970))))

(assert (=> start!38040 e!236980))

(declare-fun array_inv!8102 (array!23183) Bool)

(assert (=> start!38040 (and (array_inv!8102 _values!506) e!236982)))

(assert (=> start!38040 tp!31709))

(assert (=> start!38040 true))

(assert (=> start!38040 tp_is_empty!9651))

(declare-fun array_inv!8103 (array!23181) Bool)

(assert (=> start!38040 (array_inv!8103 _keys!658)))

(declare-fun mapIsEmpty!16062 () Bool)

(assert (=> mapIsEmpty!16062 mapRes!16062))

(declare-fun b!391253 () Bool)

(assert (=> b!391253 (= e!236981 true)))

(assert (=> b!391253 (= lt!184671 (+!1027 lt!184670 lt!184675))))

(declare-fun lt!184680 () Unit!11947)

(declare-fun addCommutativeForDiffKeys!335 (ListLongMap!5427 (_ BitVec 64) V!13973 (_ BitVec 64) V!13973) Unit!11947)

(assert (=> b!391253 (= lt!184680 (addCommutativeForDiffKeys!335 lt!184669 k0!778 v!373 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!391254 () Bool)

(assert (=> b!391254 (= e!236983 tp_is_empty!9651)))

(declare-fun b!391255 () Bool)

(declare-fun res!224004 () Bool)

(assert (=> b!391255 (=> (not res!224004) (not e!236980))))

(assert (=> b!391255 (= res!224004 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6379))))

(declare-fun b!391256 () Bool)

(declare-fun res!224007 () Bool)

(assert (=> b!391256 (=> (not res!224007) (not e!236980))))

(assert (=> b!391256 (= res!224007 (or (= (select (arr!11049 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11049 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!38040 res!224005) b!391252))

(assert (= (and b!391252 res!224006) b!391251))

(assert (= (and b!391251 res!224010) b!391255))

(assert (= (and b!391255 res!224004) b!391243))

(assert (= (and b!391243 res!224009) b!391246))

(assert (= (and b!391246 res!224011) b!391256))

(assert (= (and b!391256 res!224007) b!391245))

(assert (= (and b!391245 res!224002) b!391249))

(assert (= (and b!391249 res!224000) b!391242))

(assert (= (and b!391242 res!224008) b!391244))

(assert (= (and b!391244 (not res!224001)) b!391248))

(assert (= (and b!391248 (not res!224003)) b!391253))

(assert (= (and b!391250 condMapEmpty!16062) mapIsEmpty!16062))

(assert (= (and b!391250 (not condMapEmpty!16062)) mapNonEmpty!16062))

(get-info :version)

(assert (= (and mapNonEmpty!16062 ((_ is ValueCellFull!4482) mapValue!16062)) b!391247))

(assert (= (and b!391250 ((_ is ValueCellFull!4482) mapDefault!16062)) b!391254))

(assert (= start!38040 b!391250))

(declare-fun m!387649 () Bool)

(assert (=> start!38040 m!387649))

(declare-fun m!387651 () Bool)

(assert (=> start!38040 m!387651))

(declare-fun m!387653 () Bool)

(assert (=> start!38040 m!387653))

(declare-fun m!387655 () Bool)

(assert (=> b!391242 m!387655))

(declare-fun m!387657 () Bool)

(assert (=> b!391249 m!387657))

(declare-fun m!387659 () Bool)

(assert (=> b!391249 m!387659))

(declare-fun m!387661 () Bool)

(assert (=> b!391248 m!387661))

(declare-fun m!387663 () Bool)

(assert (=> b!391248 m!387663))

(declare-fun m!387665 () Bool)

(assert (=> b!391248 m!387665))

(declare-fun m!387667 () Bool)

(assert (=> b!391244 m!387667))

(declare-fun m!387669 () Bool)

(assert (=> b!391244 m!387669))

(declare-fun m!387671 () Bool)

(assert (=> b!391244 m!387671))

(declare-fun m!387673 () Bool)

(assert (=> b!391244 m!387673))

(declare-fun m!387675 () Bool)

(assert (=> b!391244 m!387675))

(declare-fun m!387677 () Bool)

(assert (=> b!391244 m!387677))

(declare-fun m!387679 () Bool)

(assert (=> b!391244 m!387679))

(declare-fun m!387681 () Bool)

(assert (=> b!391255 m!387681))

(declare-fun m!387683 () Bool)

(assert (=> b!391246 m!387683))

(declare-fun m!387685 () Bool)

(assert (=> b!391251 m!387685))

(declare-fun m!387687 () Bool)

(assert (=> b!391245 m!387687))

(declare-fun m!387689 () Bool)

(assert (=> mapNonEmpty!16062 m!387689))

(declare-fun m!387691 () Bool)

(assert (=> b!391256 m!387691))

(declare-fun m!387693 () Bool)

(assert (=> b!391253 m!387693))

(declare-fun m!387695 () Bool)

(assert (=> b!391253 m!387695))

(check-sat (not b!391253) (not b_next!8979) (not b!391245) (not b!391244) (not b!391248) (not b!391242) (not b!391249) (not b!391246) (not mapNonEmpty!16062) tp_is_empty!9651 (not start!38040) (not b!391255) b_and!16323 (not b!391251))
(check-sat b_and!16323 (not b_next!8979))
