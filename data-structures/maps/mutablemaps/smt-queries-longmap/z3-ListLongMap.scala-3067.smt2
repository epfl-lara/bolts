; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43264 () Bool)

(assert start!43264)

(declare-fun b_free!12123 () Bool)

(declare-fun b_next!12123 () Bool)

(assert (=> start!43264 (= b_free!12123 (not b_next!12123))))

(declare-fun tp!42639 () Bool)

(declare-fun b_and!20893 () Bool)

(assert (=> start!43264 (= tp!42639 b_and!20893)))

(declare-fun b!479063 () Bool)

(declare-fun e!281829 () Bool)

(assert (=> b!479063 (= e!281829 false)))

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun lt!217799 () Bool)

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((V!19251 0))(
  ( (V!19252 (val!6865 Int)) )
))
(declare-fun minValue!1458 () V!19251)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(declare-fun zeroValue!1458 () V!19251)

(declare-datatypes ((ValueCell!6456 0))(
  ( (ValueCellFull!6456 (v!9150 V!19251)) (EmptyCell!6456) )
))
(declare-datatypes ((array!30911 0))(
  ( (array!30912 (arr!14859 (Array (_ BitVec 32) ValueCell!6456)) (size!15217 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30911)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((array!30913 0))(
  ( (array!30914 (arr!14860 (Array (_ BitVec 32) (_ BitVec 64))) (size!15218 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!30913)

(declare-datatypes ((tuple2!9008 0))(
  ( (tuple2!9009 (_1!4514 (_ BitVec 64)) (_2!4514 V!19251)) )
))
(declare-datatypes ((List!9119 0))(
  ( (Nil!9116) (Cons!9115 (h!9971 tuple2!9008) (t!15333 List!9119)) )
))
(declare-datatypes ((ListLongMap!7935 0))(
  ( (ListLongMap!7936 (toList!3983 List!9119)) )
))
(declare-fun contains!2590 (ListLongMap!7935 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2275 (array!30913 array!30911 (_ BitVec 32) (_ BitVec 32) V!19251 V!19251 (_ BitVec 32) Int) ListLongMap!7935)

(assert (=> b!479063 (= lt!217799 (contains!2590 (getCurrentListMap!2275 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun b!479064 () Bool)

(declare-fun res!285843 () Bool)

(assert (=> b!479064 (=> (not res!285843) (not e!281829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30913 (_ BitVec 32)) Bool)

(assert (=> b!479064 (= res!285843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479065 () Bool)

(declare-fun e!281831 () Bool)

(declare-fun tp_is_empty!13635 () Bool)

(assert (=> b!479065 (= e!281831 tp_is_empty!13635)))

(declare-fun b!479066 () Bool)

(declare-fun res!285842 () Bool)

(assert (=> b!479066 (=> (not res!285842) (not e!281829))))

(declare-datatypes ((List!9120 0))(
  ( (Nil!9117) (Cons!9116 (h!9972 (_ BitVec 64)) (t!15334 List!9120)) )
))
(declare-fun arrayNoDuplicates!0 (array!30913 (_ BitVec 32) List!9120) Bool)

(assert (=> b!479066 (= res!285842 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9117))))

(declare-fun b!479067 () Bool)

(declare-fun e!281833 () Bool)

(declare-fun mapRes!22150 () Bool)

(assert (=> b!479067 (= e!281833 (and e!281831 mapRes!22150))))

(declare-fun condMapEmpty!22150 () Bool)

(declare-fun mapDefault!22150 () ValueCell!6456)

(assert (=> b!479067 (= condMapEmpty!22150 (= (arr!14859 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6456)) mapDefault!22150)))))

(declare-fun mapNonEmpty!22150 () Bool)

(declare-fun tp!42640 () Bool)

(declare-fun e!281830 () Bool)

(assert (=> mapNonEmpty!22150 (= mapRes!22150 (and tp!42640 e!281830))))

(declare-fun mapKey!22150 () (_ BitVec 32))

(declare-fun mapRest!22150 () (Array (_ BitVec 32) ValueCell!6456))

(declare-fun mapValue!22150 () ValueCell!6456)

(assert (=> mapNonEmpty!22150 (= (arr!14859 _values!1516) (store mapRest!22150 mapKey!22150 mapValue!22150))))

(declare-fun res!285840 () Bool)

(assert (=> start!43264 (=> (not res!285840) (not e!281829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43264 (= res!285840 (validMask!0 mask!2352))))

(assert (=> start!43264 e!281829))

(assert (=> start!43264 true))

(assert (=> start!43264 tp_is_empty!13635))

(declare-fun array_inv!10708 (array!30911) Bool)

(assert (=> start!43264 (and (array_inv!10708 _values!1516) e!281833)))

(assert (=> start!43264 tp!42639))

(declare-fun array_inv!10709 (array!30913) Bool)

(assert (=> start!43264 (array_inv!10709 _keys!1874)))

(declare-fun b!479068 () Bool)

(assert (=> b!479068 (= e!281830 tp_is_empty!13635)))

(declare-fun b!479069 () Bool)

(declare-fun res!285841 () Bool)

(assert (=> b!479069 (=> (not res!285841) (not e!281829))))

(assert (=> b!479069 (= res!285841 (and (= (size!15217 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15218 _keys!1874) (size!15217 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!22150 () Bool)

(assert (=> mapIsEmpty!22150 mapRes!22150))

(assert (= (and start!43264 res!285840) b!479069))

(assert (= (and b!479069 res!285841) b!479064))

(assert (= (and b!479064 res!285843) b!479066))

(assert (= (and b!479066 res!285842) b!479063))

(assert (= (and b!479067 condMapEmpty!22150) mapIsEmpty!22150))

(assert (= (and b!479067 (not condMapEmpty!22150)) mapNonEmpty!22150))

(get-info :version)

(assert (= (and mapNonEmpty!22150 ((_ is ValueCellFull!6456) mapValue!22150)) b!479068))

(assert (= (and b!479067 ((_ is ValueCellFull!6456) mapDefault!22150)) b!479065))

(assert (= start!43264 b!479067))

(declare-fun m!461087 () Bool)

(assert (=> b!479063 m!461087))

(assert (=> b!479063 m!461087))

(declare-fun m!461089 () Bool)

(assert (=> b!479063 m!461089))

(declare-fun m!461091 () Bool)

(assert (=> start!43264 m!461091))

(declare-fun m!461093 () Bool)

(assert (=> start!43264 m!461093))

(declare-fun m!461095 () Bool)

(assert (=> start!43264 m!461095))

(declare-fun m!461097 () Bool)

(assert (=> b!479064 m!461097))

(declare-fun m!461099 () Bool)

(assert (=> mapNonEmpty!22150 m!461099))

(declare-fun m!461101 () Bool)

(assert (=> b!479066 m!461101))

(check-sat (not b!479064) tp_is_empty!13635 (not b!479063) (not start!43264) b_and!20893 (not b_next!12123) (not mapNonEmpty!22150) (not b!479066))
(check-sat b_and!20893 (not b_next!12123))
