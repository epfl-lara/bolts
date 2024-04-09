; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72466 () Bool)

(assert start!72466)

(declare-fun b_free!13623 () Bool)

(declare-fun b_next!13623 () Bool)

(assert (=> start!72466 (= b_free!13623 (not b_next!13623))))

(declare-fun tp!47969 () Bool)

(declare-fun b_and!22727 () Bool)

(assert (=> start!72466 (= tp!47969 b_and!22727)))

(declare-fun b!839810 () Bool)

(declare-fun e!468670 () Bool)

(declare-fun tp_is_empty!15489 () Bool)

(assert (=> b!839810 (= e!468670 tp_is_empty!15489)))

(declare-fun mapIsEmpty!24833 () Bool)

(declare-fun mapRes!24833 () Bool)

(assert (=> mapIsEmpty!24833 mapRes!24833))

(declare-fun b!839811 () Bool)

(declare-fun e!468671 () Bool)

(declare-datatypes ((V!25699 0))(
  ( (V!25700 (val!7792 Int)) )
))
(declare-datatypes ((tuple2!10340 0))(
  ( (tuple2!10341 (_1!5180 (_ BitVec 64)) (_2!5180 V!25699)) )
))
(declare-datatypes ((List!16170 0))(
  ( (Nil!16167) (Cons!16166 (h!17297 tuple2!10340) (t!22549 List!16170)) )
))
(declare-datatypes ((ListLongMap!9123 0))(
  ( (ListLongMap!9124 (toList!4577 List!16170)) )
))
(declare-fun call!37102 () ListLongMap!9123)

(declare-fun call!37103 () ListLongMap!9123)

(assert (=> b!839811 (= e!468671 (= call!37102 call!37103))))

(declare-fun b!839812 () Bool)

(declare-fun e!468668 () Bool)

(assert (=> b!839812 (= e!468668 tp_is_empty!15489)))

(declare-fun res!571085 () Bool)

(declare-fun e!468672 () Bool)

(assert (=> start!72466 (=> (not res!571085) (not e!468672))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47230 0))(
  ( (array!47231 (arr!22642 (Array (_ BitVec 32) (_ BitVec 64))) (size!23083 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47230)

(assert (=> start!72466 (= res!571085 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23083 _keys!868))))))

(assert (=> start!72466 e!468672))

(assert (=> start!72466 tp_is_empty!15489))

(assert (=> start!72466 true))

(assert (=> start!72466 tp!47969))

(declare-fun array_inv!18004 (array!47230) Bool)

(assert (=> start!72466 (array_inv!18004 _keys!868)))

(declare-datatypes ((ValueCell!7305 0))(
  ( (ValueCellFull!7305 (v!10213 V!25699)) (EmptyCell!7305) )
))
(declare-datatypes ((array!47232 0))(
  ( (array!47233 (arr!22643 (Array (_ BitVec 32) ValueCell!7305)) (size!23084 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47232)

(declare-fun e!468669 () Bool)

(declare-fun array_inv!18005 (array!47232) Bool)

(assert (=> start!72466 (and (array_inv!18005 _values!688) e!468669)))

(declare-fun v!557 () V!25699)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!37099 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!25699)

(declare-fun zeroValue!654 () V!25699)

(declare-fun getCurrentListMapNoExtraKeys!2569 (array!47230 array!47232 (_ BitVec 32) (_ BitVec 32) V!25699 V!25699 (_ BitVec 32) Int) ListLongMap!9123)

(assert (=> bm!37099 (= call!37102 (getCurrentListMapNoExtraKeys!2569 _keys!868 (array!47233 (store (arr!22643 _values!688) i!612 (ValueCellFull!7305 v!557)) (size!23084 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839813 () Bool)

(declare-fun res!571079 () Bool)

(assert (=> b!839813 (=> (not res!571079) (not e!468672))))

(assert (=> b!839813 (= res!571079 (and (= (size!23084 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23083 _keys!868) (size!23084 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!839814 () Bool)

(declare-fun res!571086 () Bool)

(assert (=> b!839814 (=> (not res!571086) (not e!468672))))

(assert (=> b!839814 (= res!571086 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23083 _keys!868))))))

(declare-fun b!839815 () Bool)

(declare-fun res!571083 () Bool)

(assert (=> b!839815 (=> (not res!571083) (not e!468672))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!839815 (= res!571083 (and (= (select (arr!22642 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23083 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!839816 () Bool)

(assert (=> b!839816 (= e!468672 (not true))))

(assert (=> b!839816 e!468671))

(declare-fun c!91212 () Bool)

(assert (=> b!839816 (= c!91212 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28842 0))(
  ( (Unit!28843) )
))
(declare-fun lt!380745 () Unit!28842)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!270 (array!47230 array!47232 (_ BitVec 32) (_ BitVec 32) V!25699 V!25699 (_ BitVec 32) (_ BitVec 64) V!25699 (_ BitVec 32) Int) Unit!28842)

(assert (=> b!839816 (= lt!380745 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!270 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839817 () Bool)

(declare-fun res!571084 () Bool)

(assert (=> b!839817 (=> (not res!571084) (not e!468672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!839817 (= res!571084 (validKeyInArray!0 k0!854))))

(declare-fun b!839818 () Bool)

(declare-fun +!1992 (ListLongMap!9123 tuple2!10340) ListLongMap!9123)

(assert (=> b!839818 (= e!468671 (= call!37102 (+!1992 call!37103 (tuple2!10341 k0!854 v!557))))))

(declare-fun b!839819 () Bool)

(declare-fun res!571081 () Bool)

(assert (=> b!839819 (=> (not res!571081) (not e!468672))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47230 (_ BitVec 32)) Bool)

(assert (=> b!839819 (= res!571081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!839820 () Bool)

(declare-fun res!571082 () Bool)

(assert (=> b!839820 (=> (not res!571082) (not e!468672))))

(declare-datatypes ((List!16171 0))(
  ( (Nil!16168) (Cons!16167 (h!17298 (_ BitVec 64)) (t!22550 List!16171)) )
))
(declare-fun arrayNoDuplicates!0 (array!47230 (_ BitVec 32) List!16171) Bool)

(assert (=> b!839820 (= res!571082 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16168))))

(declare-fun bm!37100 () Bool)

(assert (=> bm!37100 (= call!37103 (getCurrentListMapNoExtraKeys!2569 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!839821 () Bool)

(declare-fun res!571080 () Bool)

(assert (=> b!839821 (=> (not res!571080) (not e!468672))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!839821 (= res!571080 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!24833 () Bool)

(declare-fun tp!47968 () Bool)

(assert (=> mapNonEmpty!24833 (= mapRes!24833 (and tp!47968 e!468668))))

(declare-fun mapRest!24833 () (Array (_ BitVec 32) ValueCell!7305))

(declare-fun mapValue!24833 () ValueCell!7305)

(declare-fun mapKey!24833 () (_ BitVec 32))

(assert (=> mapNonEmpty!24833 (= (arr!22643 _values!688) (store mapRest!24833 mapKey!24833 mapValue!24833))))

(declare-fun b!839822 () Bool)

(assert (=> b!839822 (= e!468669 (and e!468670 mapRes!24833))))

(declare-fun condMapEmpty!24833 () Bool)

(declare-fun mapDefault!24833 () ValueCell!7305)

(assert (=> b!839822 (= condMapEmpty!24833 (= (arr!22643 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7305)) mapDefault!24833)))))

(assert (= (and start!72466 res!571085) b!839821))

(assert (= (and b!839821 res!571080) b!839813))

(assert (= (and b!839813 res!571079) b!839819))

(assert (= (and b!839819 res!571081) b!839820))

(assert (= (and b!839820 res!571082) b!839814))

(assert (= (and b!839814 res!571086) b!839817))

(assert (= (and b!839817 res!571084) b!839815))

(assert (= (and b!839815 res!571083) b!839816))

(assert (= (and b!839816 c!91212) b!839818))

(assert (= (and b!839816 (not c!91212)) b!839811))

(assert (= (or b!839818 b!839811) bm!37099))

(assert (= (or b!839818 b!839811) bm!37100))

(assert (= (and b!839822 condMapEmpty!24833) mapIsEmpty!24833))

(assert (= (and b!839822 (not condMapEmpty!24833)) mapNonEmpty!24833))

(get-info :version)

(assert (= (and mapNonEmpty!24833 ((_ is ValueCellFull!7305) mapValue!24833)) b!839812))

(assert (= (and b!839822 ((_ is ValueCellFull!7305) mapDefault!24833)) b!839810))

(assert (= start!72466 b!839822))

(declare-fun m!783853 () Bool)

(assert (=> bm!37100 m!783853))

(declare-fun m!783855 () Bool)

(assert (=> b!839815 m!783855))

(declare-fun m!783857 () Bool)

(assert (=> b!839817 m!783857))

(declare-fun m!783859 () Bool)

(assert (=> bm!37099 m!783859))

(declare-fun m!783861 () Bool)

(assert (=> bm!37099 m!783861))

(declare-fun m!783863 () Bool)

(assert (=> b!839816 m!783863))

(declare-fun m!783865 () Bool)

(assert (=> b!839820 m!783865))

(declare-fun m!783867 () Bool)

(assert (=> b!839818 m!783867))

(declare-fun m!783869 () Bool)

(assert (=> b!839819 m!783869))

(declare-fun m!783871 () Bool)

(assert (=> b!839821 m!783871))

(declare-fun m!783873 () Bool)

(assert (=> start!72466 m!783873))

(declare-fun m!783875 () Bool)

(assert (=> start!72466 m!783875))

(declare-fun m!783877 () Bool)

(assert (=> mapNonEmpty!24833 m!783877))

(check-sat b_and!22727 (not b!839819) (not bm!37099) (not b!839821) tp_is_empty!15489 (not b_next!13623) (not start!72466) (not b!839817) (not b!839820) (not b!839816) (not mapNonEmpty!24833) (not b!839818) (not bm!37100))
(check-sat b_and!22727 (not b_next!13623))
