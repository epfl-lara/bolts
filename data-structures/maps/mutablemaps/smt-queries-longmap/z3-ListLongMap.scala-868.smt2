; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20318 () Bool)

(assert start!20318)

(declare-fun b_free!4965 () Bool)

(declare-fun b_next!4965 () Bool)

(assert (=> start!20318 (= b_free!4965 (not b_next!4965))))

(declare-fun tp!17926 () Bool)

(declare-fun b_and!11729 () Bool)

(assert (=> start!20318 (= tp!17926 b_and!11729)))

(declare-fun b!199980 () Bool)

(declare-fun res!95195 () Bool)

(declare-fun e!131200 () Bool)

(assert (=> b!199980 (=> (not res!95195) (not e!131200))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!199980 (= res!95195 (validKeyInArray!0 k0!843))))

(declare-fun b!199981 () Bool)

(declare-fun res!95194 () Bool)

(assert (=> b!199981 (=> (not res!95194) (not e!131200))))

(declare-datatypes ((array!8878 0))(
  ( (array!8879 (arr!4189 (Array (_ BitVec 32) (_ BitVec 64))) (size!4514 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8878)

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199981 (= res!95194 (= (select (arr!4189 _keys!825) i!601) k0!843))))

(declare-fun b!199982 () Bool)

(declare-fun e!131198 () Bool)

(declare-fun tp_is_empty!4821 () Bool)

(assert (=> b!199982 (= e!131198 tp_is_empty!4821)))

(declare-fun b!199983 () Bool)

(declare-fun res!95192 () Bool)

(assert (=> b!199983 (=> (not res!95192) (not e!131200))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8878 (_ BitVec 32)) Bool)

(assert (=> b!199983 (= res!95192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!199984 () Bool)

(declare-fun e!131199 () Bool)

(declare-fun mapRes!8300 () Bool)

(assert (=> b!199984 (= e!131199 (and e!131198 mapRes!8300))))

(declare-fun condMapEmpty!8300 () Bool)

(declare-datatypes ((V!6075 0))(
  ( (V!6076 (val!2455 Int)) )
))
(declare-datatypes ((ValueCell!2067 0))(
  ( (ValueCellFull!2067 (v!4421 V!6075)) (EmptyCell!2067) )
))
(declare-datatypes ((array!8880 0))(
  ( (array!8881 (arr!4190 (Array (_ BitVec 32) ValueCell!2067)) (size!4515 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8880)

(declare-fun mapDefault!8300 () ValueCell!2067)

(assert (=> b!199984 (= condMapEmpty!8300 (= (arr!4190 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2067)) mapDefault!8300)))))

(declare-fun b!199986 () Bool)

(declare-fun res!95196 () Bool)

(assert (=> b!199986 (=> (not res!95196) (not e!131200))))

(assert (=> b!199986 (= res!95196 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4514 _keys!825))))))

(declare-fun mapIsEmpty!8300 () Bool)

(assert (=> mapIsEmpty!8300 mapRes!8300))

(declare-fun b!199987 () Bool)

(assert (=> b!199987 (= e!131200 (not true))))

(declare-datatypes ((tuple2!3706 0))(
  ( (tuple2!3707 (_1!1863 (_ BitVec 64)) (_2!1863 V!6075)) )
))
(declare-datatypes ((List!2647 0))(
  ( (Nil!2644) (Cons!2643 (h!3285 tuple2!3706) (t!7586 List!2647)) )
))
(declare-datatypes ((ListLongMap!2633 0))(
  ( (ListLongMap!2634 (toList!1332 List!2647)) )
))
(declare-fun lt!98690 () ListLongMap!2633)

(declare-fun lt!98692 () array!8880)

(declare-fun zeroValue!615 () V!6075)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6075)

(declare-fun getCurrentListMap!918 (array!8878 array!8880 (_ BitVec 32) (_ BitVec 32) V!6075 V!6075 (_ BitVec 32) Int) ListLongMap!2633)

(assert (=> b!199987 (= lt!98690 (getCurrentListMap!918 _keys!825 lt!98692 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98695 () ListLongMap!2633)

(declare-fun lt!98693 () ListLongMap!2633)

(assert (=> b!199987 (and (= lt!98695 lt!98693) (= lt!98693 lt!98695))))

(declare-fun v!520 () V!6075)

(declare-fun lt!98691 () ListLongMap!2633)

(declare-fun +!349 (ListLongMap!2633 tuple2!3706) ListLongMap!2633)

(assert (=> b!199987 (= lt!98693 (+!349 lt!98691 (tuple2!3707 k0!843 v!520)))))

(declare-datatypes ((Unit!6007 0))(
  ( (Unit!6008) )
))
(declare-fun lt!98694 () Unit!6007)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!31 (array!8878 array!8880 (_ BitVec 32) (_ BitVec 32) V!6075 V!6075 (_ BitVec 32) (_ BitVec 64) V!6075 (_ BitVec 32) Int) Unit!6007)

(assert (=> b!199987 (= lt!98694 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!31 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!289 (array!8878 array!8880 (_ BitVec 32) (_ BitVec 32) V!6075 V!6075 (_ BitVec 32) Int) ListLongMap!2633)

(assert (=> b!199987 (= lt!98695 (getCurrentListMapNoExtraKeys!289 _keys!825 lt!98692 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199987 (= lt!98692 (array!8881 (store (arr!4190 _values!649) i!601 (ValueCellFull!2067 v!520)) (size!4515 _values!649)))))

(assert (=> b!199987 (= lt!98691 (getCurrentListMapNoExtraKeys!289 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199988 () Bool)

(declare-fun e!131197 () Bool)

(assert (=> b!199988 (= e!131197 tp_is_empty!4821)))

(declare-fun mapNonEmpty!8300 () Bool)

(declare-fun tp!17927 () Bool)

(assert (=> mapNonEmpty!8300 (= mapRes!8300 (and tp!17927 e!131197))))

(declare-fun mapRest!8300 () (Array (_ BitVec 32) ValueCell!2067))

(declare-fun mapValue!8300 () ValueCell!2067)

(declare-fun mapKey!8300 () (_ BitVec 32))

(assert (=> mapNonEmpty!8300 (= (arr!4190 _values!649) (store mapRest!8300 mapKey!8300 mapValue!8300))))

(declare-fun b!199989 () Bool)

(declare-fun res!95197 () Bool)

(assert (=> b!199989 (=> (not res!95197) (not e!131200))))

(declare-datatypes ((List!2648 0))(
  ( (Nil!2645) (Cons!2644 (h!3286 (_ BitVec 64)) (t!7587 List!2648)) )
))
(declare-fun arrayNoDuplicates!0 (array!8878 (_ BitVec 32) List!2648) Bool)

(assert (=> b!199989 (= res!95197 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2645))))

(declare-fun res!95193 () Bool)

(assert (=> start!20318 (=> (not res!95193) (not e!131200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20318 (= res!95193 (validMask!0 mask!1149))))

(assert (=> start!20318 e!131200))

(declare-fun array_inv!2747 (array!8880) Bool)

(assert (=> start!20318 (and (array_inv!2747 _values!649) e!131199)))

(assert (=> start!20318 true))

(assert (=> start!20318 tp_is_empty!4821))

(declare-fun array_inv!2748 (array!8878) Bool)

(assert (=> start!20318 (array_inv!2748 _keys!825)))

(assert (=> start!20318 tp!17926))

(declare-fun b!199985 () Bool)

(declare-fun res!95191 () Bool)

(assert (=> b!199985 (=> (not res!95191) (not e!131200))))

(assert (=> b!199985 (= res!95191 (and (= (size!4515 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4514 _keys!825) (size!4515 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!20318 res!95193) b!199985))

(assert (= (and b!199985 res!95191) b!199983))

(assert (= (and b!199983 res!95192) b!199989))

(assert (= (and b!199989 res!95197) b!199986))

(assert (= (and b!199986 res!95196) b!199980))

(assert (= (and b!199980 res!95195) b!199981))

(assert (= (and b!199981 res!95194) b!199987))

(assert (= (and b!199984 condMapEmpty!8300) mapIsEmpty!8300))

(assert (= (and b!199984 (not condMapEmpty!8300)) mapNonEmpty!8300))

(get-info :version)

(assert (= (and mapNonEmpty!8300 ((_ is ValueCellFull!2067) mapValue!8300)) b!199988))

(assert (= (and b!199984 ((_ is ValueCellFull!2067) mapDefault!8300)) b!199982))

(assert (= start!20318 b!199984))

(declare-fun m!226429 () Bool)

(assert (=> b!199981 m!226429))

(declare-fun m!226431 () Bool)

(assert (=> b!199980 m!226431))

(declare-fun m!226433 () Bool)

(assert (=> b!199987 m!226433))

(declare-fun m!226435 () Bool)

(assert (=> b!199987 m!226435))

(declare-fun m!226437 () Bool)

(assert (=> b!199987 m!226437))

(declare-fun m!226439 () Bool)

(assert (=> b!199987 m!226439))

(declare-fun m!226441 () Bool)

(assert (=> b!199987 m!226441))

(declare-fun m!226443 () Bool)

(assert (=> b!199987 m!226443))

(declare-fun m!226445 () Bool)

(assert (=> b!199989 m!226445))

(declare-fun m!226447 () Bool)

(assert (=> start!20318 m!226447))

(declare-fun m!226449 () Bool)

(assert (=> start!20318 m!226449))

(declare-fun m!226451 () Bool)

(assert (=> start!20318 m!226451))

(declare-fun m!226453 () Bool)

(assert (=> mapNonEmpty!8300 m!226453))

(declare-fun m!226455 () Bool)

(assert (=> b!199983 m!226455))

(check-sat b_and!11729 (not start!20318) (not b!199983) tp_is_empty!4821 (not b_next!4965) (not b!199989) (not b!199980) (not mapNonEmpty!8300) (not b!199987))
(check-sat b_and!11729 (not b_next!4965))
