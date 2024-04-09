; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72376 () Bool)

(assert start!72376)

(declare-fun b_free!13533 () Bool)

(declare-fun b_next!13533 () Bool)

(assert (=> start!72376 (= b_free!13533 (not b_next!13533))))

(declare-fun tp!47698 () Bool)

(declare-fun b_and!22637 () Bool)

(assert (=> start!72376 (= tp!47698 b_and!22637)))

(declare-fun b!838055 () Bool)

(declare-fun res!570005 () Bool)

(declare-fun e!467860 () Bool)

(assert (=> b!838055 (=> (not res!570005) (not e!467860))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47052 0))(
  ( (array!47053 (arr!22553 (Array (_ BitVec 32) (_ BitVec 64))) (size!22994 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47052)

(assert (=> b!838055 (= res!570005 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!22994 _keys!868))))))

(declare-fun b!838056 () Bool)

(declare-fun e!467859 () Bool)

(declare-fun tp_is_empty!15399 () Bool)

(assert (=> b!838056 (= e!467859 tp_is_empty!15399)))

(declare-fun b!838057 () Bool)

(declare-fun res!570002 () Bool)

(assert (=> b!838057 (=> (not res!570002) (not e!467860))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838057 (= res!570002 (validMask!0 mask!1196))))

(declare-datatypes ((V!25579 0))(
  ( (V!25580 (val!7747 Int)) )
))
(declare-fun v!557 () V!25579)

(declare-fun e!467862 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((tuple2!10264 0))(
  ( (tuple2!10265 (_1!5142 (_ BitVec 64)) (_2!5142 V!25579)) )
))
(declare-datatypes ((List!16104 0))(
  ( (Nil!16101) (Cons!16100 (h!17231 tuple2!10264) (t!22483 List!16104)) )
))
(declare-datatypes ((ListLongMap!9047 0))(
  ( (ListLongMap!9048 (toList!4539 List!16104)) )
))
(declare-fun call!36832 () ListLongMap!9047)

(declare-fun call!36833 () ListLongMap!9047)

(declare-fun b!838058 () Bool)

(declare-fun +!1964 (ListLongMap!9047 tuple2!10264) ListLongMap!9047)

(assert (=> b!838058 (= e!467862 (= call!36833 (+!1964 call!36832 (tuple2!10265 k0!854 v!557))))))

(declare-fun b!838059 () Bool)

(declare-fun res!570000 () Bool)

(assert (=> b!838059 (=> (not res!570000) (not e!467860))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!838059 (= res!570000 (and (= (select (arr!22553 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!22994 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!24698 () Bool)

(declare-fun mapRes!24698 () Bool)

(assert (=> mapIsEmpty!24698 mapRes!24698))

(declare-fun b!838060 () Bool)

(declare-fun res!569999 () Bool)

(assert (=> b!838060 (=> (not res!569999) (not e!467860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838060 (= res!569999 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!24698 () Bool)

(declare-fun tp!47699 () Bool)

(declare-fun e!467857 () Bool)

(assert (=> mapNonEmpty!24698 (= mapRes!24698 (and tp!47699 e!467857))))

(declare-datatypes ((ValueCell!7260 0))(
  ( (ValueCellFull!7260 (v!10168 V!25579)) (EmptyCell!7260) )
))
(declare-fun mapValue!24698 () ValueCell!7260)

(declare-fun mapRest!24698 () (Array (_ BitVec 32) ValueCell!7260))

(declare-datatypes ((array!47054 0))(
  ( (array!47055 (arr!22554 (Array (_ BitVec 32) ValueCell!7260)) (size!22995 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47054)

(declare-fun mapKey!24698 () (_ BitVec 32))

(assert (=> mapNonEmpty!24698 (= (arr!22554 _values!688) (store mapRest!24698 mapKey!24698 mapValue!24698))))

(declare-fun b!838061 () Bool)

(declare-fun res!570004 () Bool)

(assert (=> b!838061 (=> (not res!570004) (not e!467860))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47052 (_ BitVec 32)) Bool)

(assert (=> b!838061 (= res!570004 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838062 () Bool)

(assert (=> b!838062 (= e!467857 tp_is_empty!15399)))

(declare-fun b!838063 () Bool)

(declare-fun res!570006 () Bool)

(assert (=> b!838063 (=> (not res!570006) (not e!467860))))

(declare-datatypes ((List!16105 0))(
  ( (Nil!16102) (Cons!16101 (h!17232 (_ BitVec 64)) (t!22484 List!16105)) )
))
(declare-fun arrayNoDuplicates!0 (array!47052 (_ BitVec 32) List!16105) Bool)

(assert (=> b!838063 (= res!570006 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16102))))

(declare-fun bm!36829 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!25579)

(declare-fun zeroValue!654 () V!25579)

(declare-fun getCurrentListMapNoExtraKeys!2534 (array!47052 array!47054 (_ BitVec 32) (_ BitVec 32) V!25579 V!25579 (_ BitVec 32) Int) ListLongMap!9047)

(assert (=> bm!36829 (= call!36832 (getCurrentListMapNoExtraKeys!2534 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838064 () Bool)

(assert (=> b!838064 (= e!467862 (= call!36833 call!36832))))

(declare-fun b!838065 () Bool)

(assert (=> b!838065 (= e!467860 (not true))))

(assert (=> b!838065 e!467862))

(declare-fun c!91077 () Bool)

(assert (=> b!838065 (= c!91077 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28778 0))(
  ( (Unit!28779) )
))
(declare-fun lt!380610 () Unit!28778)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!238 (array!47052 array!47054 (_ BitVec 32) (_ BitVec 32) V!25579 V!25579 (_ BitVec 32) (_ BitVec 64) V!25579 (_ BitVec 32) Int) Unit!28778)

(assert (=> b!838065 (= lt!380610 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!238 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838066 () Bool)

(declare-fun e!467861 () Bool)

(assert (=> b!838066 (= e!467861 (and e!467859 mapRes!24698))))

(declare-fun condMapEmpty!24698 () Bool)

(declare-fun mapDefault!24698 () ValueCell!7260)

(assert (=> b!838066 (= condMapEmpty!24698 (= (arr!22554 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7260)) mapDefault!24698)))))

(declare-fun b!838067 () Bool)

(declare-fun res!570003 () Bool)

(assert (=> b!838067 (=> (not res!570003) (not e!467860))))

(assert (=> b!838067 (= res!570003 (and (= (size!22995 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22994 _keys!868) (size!22995 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!570001 () Bool)

(assert (=> start!72376 (=> (not res!570001) (not e!467860))))

(assert (=> start!72376 (= res!570001 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22994 _keys!868))))))

(assert (=> start!72376 e!467860))

(assert (=> start!72376 tp_is_empty!15399))

(assert (=> start!72376 true))

(assert (=> start!72376 tp!47698))

(declare-fun array_inv!17942 (array!47052) Bool)

(assert (=> start!72376 (array_inv!17942 _keys!868)))

(declare-fun array_inv!17943 (array!47054) Bool)

(assert (=> start!72376 (and (array_inv!17943 _values!688) e!467861)))

(declare-fun bm!36830 () Bool)

(assert (=> bm!36830 (= call!36833 (getCurrentListMapNoExtraKeys!2534 _keys!868 (array!47055 (store (arr!22554 _values!688) i!612 (ValueCellFull!7260 v!557)) (size!22995 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!72376 res!570001) b!838057))

(assert (= (and b!838057 res!570002) b!838067))

(assert (= (and b!838067 res!570003) b!838061))

(assert (= (and b!838061 res!570004) b!838063))

(assert (= (and b!838063 res!570006) b!838055))

(assert (= (and b!838055 res!570005) b!838060))

(assert (= (and b!838060 res!569999) b!838059))

(assert (= (and b!838059 res!570000) b!838065))

(assert (= (and b!838065 c!91077) b!838058))

(assert (= (and b!838065 (not c!91077)) b!838064))

(assert (= (or b!838058 b!838064) bm!36830))

(assert (= (or b!838058 b!838064) bm!36829))

(assert (= (and b!838066 condMapEmpty!24698) mapIsEmpty!24698))

(assert (= (and b!838066 (not condMapEmpty!24698)) mapNonEmpty!24698))

(get-info :version)

(assert (= (and mapNonEmpty!24698 ((_ is ValueCellFull!7260) mapValue!24698)) b!838062))

(assert (= (and b!838066 ((_ is ValueCellFull!7260) mapDefault!24698)) b!838056))

(assert (= start!72376 b!838066))

(declare-fun m!782683 () Bool)

(assert (=> b!838065 m!782683))

(declare-fun m!782685 () Bool)

(assert (=> b!838061 m!782685))

(declare-fun m!782687 () Bool)

(assert (=> b!838060 m!782687))

(declare-fun m!782689 () Bool)

(assert (=> b!838057 m!782689))

(declare-fun m!782691 () Bool)

(assert (=> mapNonEmpty!24698 m!782691))

(declare-fun m!782693 () Bool)

(assert (=> b!838059 m!782693))

(declare-fun m!782695 () Bool)

(assert (=> bm!36829 m!782695))

(declare-fun m!782697 () Bool)

(assert (=> b!838063 m!782697))

(declare-fun m!782699 () Bool)

(assert (=> bm!36830 m!782699))

(declare-fun m!782701 () Bool)

(assert (=> bm!36830 m!782701))

(declare-fun m!782703 () Bool)

(assert (=> start!72376 m!782703))

(declare-fun m!782705 () Bool)

(assert (=> start!72376 m!782705))

(declare-fun m!782707 () Bool)

(assert (=> b!838058 m!782707))

(check-sat (not mapNonEmpty!24698) (not b!838065) (not b!838063) (not b!838061) (not start!72376) (not bm!36830) (not b!838057) tp_is_empty!15399 (not b!838058) (not bm!36829) b_and!22637 (not b_next!13533) (not b!838060))
(check-sat b_and!22637 (not b_next!13533))
