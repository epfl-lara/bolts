; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72382 () Bool)

(assert start!72382)

(declare-fun b_free!13539 () Bool)

(declare-fun b_next!13539 () Bool)

(assert (=> start!72382 (= b_free!13539 (not b_next!13539))))

(declare-fun tp!47716 () Bool)

(declare-fun b_and!22643 () Bool)

(assert (=> start!72382 (= tp!47716 b_and!22643)))

(declare-datatypes ((V!25587 0))(
  ( (V!25588 (val!7750 Int)) )
))
(declare-fun v!557 () V!25587)

(declare-datatypes ((tuple2!10270 0))(
  ( (tuple2!10271 (_1!5145 (_ BitVec 64)) (_2!5145 V!25587)) )
))
(declare-datatypes ((List!16109 0))(
  ( (Nil!16106) (Cons!16105 (h!17236 tuple2!10270) (t!22488 List!16109)) )
))
(declare-datatypes ((ListLongMap!9053 0))(
  ( (ListLongMap!9054 (toList!4542 List!16109)) )
))
(declare-fun call!36851 () ListLongMap!9053)

(declare-fun call!36850 () ListLongMap!9053)

(declare-fun e!467914 () Bool)

(declare-fun b!838172 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!1966 (ListLongMap!9053 tuple2!10270) ListLongMap!9053)

(assert (=> b!838172 (= e!467914 (= call!36851 (+!1966 call!36850 (tuple2!10271 k0!854 v!557))))))

(declare-fun mapIsEmpty!24707 () Bool)

(declare-fun mapRes!24707 () Bool)

(assert (=> mapIsEmpty!24707 mapRes!24707))

(declare-fun b!838174 () Bool)

(declare-fun res!570075 () Bool)

(declare-fun e!467912 () Bool)

(assert (=> b!838174 (=> (not res!570075) (not e!467912))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47064 0))(
  ( (array!47065 (arr!22559 (Array (_ BitVec 32) (_ BitVec 64))) (size!23000 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47064)

(assert (=> b!838174 (= res!570075 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23000 _keys!868))))))

(declare-fun b!838175 () Bool)

(declare-fun res!570076 () Bool)

(assert (=> b!838175 (=> (not res!570076) (not e!467912))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7263 0))(
  ( (ValueCellFull!7263 (v!10171 V!25587)) (EmptyCell!7263) )
))
(declare-datatypes ((array!47066 0))(
  ( (array!47067 (arr!22560 (Array (_ BitVec 32) ValueCell!7263)) (size!23001 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47066)

(assert (=> b!838175 (= res!570076 (and (= (size!23001 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23000 _keys!868) (size!23001 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838176 () Bool)

(declare-fun res!570077 () Bool)

(assert (=> b!838176 (=> (not res!570077) (not e!467912))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838176 (= res!570077 (validKeyInArray!0 k0!854))))

(declare-fun b!838177 () Bool)

(declare-fun res!570072 () Bool)

(assert (=> b!838177 (=> (not res!570072) (not e!467912))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!838177 (= res!570072 (and (= (select (arr!22559 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23000 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!36847 () Bool)

(declare-fun minValue!654 () V!25587)

(declare-fun zeroValue!654 () V!25587)

(declare-fun getCurrentListMapNoExtraKeys!2537 (array!47064 array!47066 (_ BitVec 32) (_ BitVec 32) V!25587 V!25587 (_ BitVec 32) Int) ListLongMap!9053)

(assert (=> bm!36847 (= call!36850 (getCurrentListMapNoExtraKeys!2537 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838178 () Bool)

(declare-fun e!467911 () Bool)

(declare-fun e!467915 () Bool)

(assert (=> b!838178 (= e!467911 (and e!467915 mapRes!24707))))

(declare-fun condMapEmpty!24707 () Bool)

(declare-fun mapDefault!24707 () ValueCell!7263)

(assert (=> b!838178 (= condMapEmpty!24707 (= (arr!22560 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7263)) mapDefault!24707)))))

(declare-fun b!838179 () Bool)

(assert (=> b!838179 (= e!467914 (= call!36851 call!36850))))

(declare-fun b!838180 () Bool)

(declare-fun res!570073 () Bool)

(assert (=> b!838180 (=> (not res!570073) (not e!467912))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47064 (_ BitVec 32)) Bool)

(assert (=> b!838180 (= res!570073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!36848 () Bool)

(assert (=> bm!36848 (= call!36851 (getCurrentListMapNoExtraKeys!2537 _keys!868 (array!47067 (store (arr!22560 _values!688) i!612 (ValueCellFull!7263 v!557)) (size!23001 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838181 () Bool)

(assert (=> b!838181 (= e!467912 (not true))))

(assert (=> b!838181 e!467914))

(declare-fun c!91086 () Bool)

(assert (=> b!838181 (= c!91086 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28782 0))(
  ( (Unit!28783) )
))
(declare-fun lt!380619 () Unit!28782)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!240 (array!47064 array!47066 (_ BitVec 32) (_ BitVec 32) V!25587 V!25587 (_ BitVec 32) (_ BitVec 64) V!25587 (_ BitVec 32) Int) Unit!28782)

(assert (=> b!838181 (= lt!380619 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!240 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!570078 () Bool)

(assert (=> start!72382 (=> (not res!570078) (not e!467912))))

(assert (=> start!72382 (= res!570078 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23000 _keys!868))))))

(assert (=> start!72382 e!467912))

(declare-fun tp_is_empty!15405 () Bool)

(assert (=> start!72382 tp_is_empty!15405))

(assert (=> start!72382 true))

(assert (=> start!72382 tp!47716))

(declare-fun array_inv!17946 (array!47064) Bool)

(assert (=> start!72382 (array_inv!17946 _keys!868)))

(declare-fun array_inv!17947 (array!47066) Bool)

(assert (=> start!72382 (and (array_inv!17947 _values!688) e!467911)))

(declare-fun b!838173 () Bool)

(assert (=> b!838173 (= e!467915 tp_is_empty!15405)))

(declare-fun b!838182 () Bool)

(declare-fun res!570071 () Bool)

(assert (=> b!838182 (=> (not res!570071) (not e!467912))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838182 (= res!570071 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!24707 () Bool)

(declare-fun tp!47717 () Bool)

(declare-fun e!467913 () Bool)

(assert (=> mapNonEmpty!24707 (= mapRes!24707 (and tp!47717 e!467913))))

(declare-fun mapValue!24707 () ValueCell!7263)

(declare-fun mapKey!24707 () (_ BitVec 32))

(declare-fun mapRest!24707 () (Array (_ BitVec 32) ValueCell!7263))

(assert (=> mapNonEmpty!24707 (= (arr!22560 _values!688) (store mapRest!24707 mapKey!24707 mapValue!24707))))

(declare-fun b!838183 () Bool)

(assert (=> b!838183 (= e!467913 tp_is_empty!15405)))

(declare-fun b!838184 () Bool)

(declare-fun res!570074 () Bool)

(assert (=> b!838184 (=> (not res!570074) (not e!467912))))

(declare-datatypes ((List!16110 0))(
  ( (Nil!16107) (Cons!16106 (h!17237 (_ BitVec 64)) (t!22489 List!16110)) )
))
(declare-fun arrayNoDuplicates!0 (array!47064 (_ BitVec 32) List!16110) Bool)

(assert (=> b!838184 (= res!570074 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16107))))

(assert (= (and start!72382 res!570078) b!838182))

(assert (= (and b!838182 res!570071) b!838175))

(assert (= (and b!838175 res!570076) b!838180))

(assert (= (and b!838180 res!570073) b!838184))

(assert (= (and b!838184 res!570074) b!838174))

(assert (= (and b!838174 res!570075) b!838176))

(assert (= (and b!838176 res!570077) b!838177))

(assert (= (and b!838177 res!570072) b!838181))

(assert (= (and b!838181 c!91086) b!838172))

(assert (= (and b!838181 (not c!91086)) b!838179))

(assert (= (or b!838172 b!838179) bm!36848))

(assert (= (or b!838172 b!838179) bm!36847))

(assert (= (and b!838178 condMapEmpty!24707) mapIsEmpty!24707))

(assert (= (and b!838178 (not condMapEmpty!24707)) mapNonEmpty!24707))

(get-info :version)

(assert (= (and mapNonEmpty!24707 ((_ is ValueCellFull!7263) mapValue!24707)) b!838183))

(assert (= (and b!838178 ((_ is ValueCellFull!7263) mapDefault!24707)) b!838173))

(assert (= start!72382 b!838178))

(declare-fun m!782761 () Bool)

(assert (=> b!838182 m!782761))

(declare-fun m!782763 () Bool)

(assert (=> b!838184 m!782763))

(declare-fun m!782765 () Bool)

(assert (=> mapNonEmpty!24707 m!782765))

(declare-fun m!782767 () Bool)

(assert (=> b!838177 m!782767))

(declare-fun m!782769 () Bool)

(assert (=> b!838176 m!782769))

(declare-fun m!782771 () Bool)

(assert (=> bm!36847 m!782771))

(declare-fun m!782773 () Bool)

(assert (=> b!838180 m!782773))

(declare-fun m!782775 () Bool)

(assert (=> b!838181 m!782775))

(declare-fun m!782777 () Bool)

(assert (=> start!72382 m!782777))

(declare-fun m!782779 () Bool)

(assert (=> start!72382 m!782779))

(declare-fun m!782781 () Bool)

(assert (=> b!838172 m!782781))

(declare-fun m!782783 () Bool)

(assert (=> bm!36848 m!782783))

(declare-fun m!782785 () Bool)

(assert (=> bm!36848 m!782785))

(check-sat (not b!838182) (not b!838172) (not bm!36848) b_and!22643 (not mapNonEmpty!24707) (not b!838176) (not b!838181) (not bm!36847) (not b!838180) (not b_next!13539) (not start!72382) (not b!838184) tp_is_empty!15405)
(check-sat b_and!22643 (not b_next!13539))
