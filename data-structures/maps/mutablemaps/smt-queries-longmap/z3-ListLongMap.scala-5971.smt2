; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77682 () Bool)

(assert start!77682)

(declare-fun b_free!16239 () Bool)

(declare-fun b_next!16239 () Bool)

(assert (=> start!77682 (= b_free!16239 (not b_next!16239))))

(declare-fun tp!56980 () Bool)

(declare-fun b_and!26649 () Bool)

(assert (=> start!77682 (= tp!56980 b_and!26649)))

(declare-fun b!905260 () Bool)

(declare-fun e!507316 () Bool)

(declare-fun e!507313 () Bool)

(assert (=> b!905260 (= e!507316 (not e!507313))))

(declare-fun res!610986 () Bool)

(assert (=> b!905260 (=> res!610986 e!507313)))

(declare-fun i!717 () (_ BitVec 32))

(declare-datatypes ((array!53344 0))(
  ( (array!53345 (arr!25627 (Array (_ BitVec 32) (_ BitVec 64))) (size!26087 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53344)

(assert (=> b!905260 (= res!610986 (or (bvslt i!717 #b00000000000000000000000000000000) (bvsge i!717 (size!26087 _keys!1386))))))

(declare-datatypes ((V!29841 0))(
  ( (V!29842 (val!9379 Int)) )
))
(declare-datatypes ((ValueCell!8847 0))(
  ( (ValueCellFull!8847 (v!11884 V!29841)) (EmptyCell!8847) )
))
(declare-datatypes ((array!53346 0))(
  ( (array!53347 (arr!25628 (Array (_ BitVec 32) ValueCell!8847)) (size!26088 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53346)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!408488 () V!29841)

(declare-fun get!13479 (ValueCell!8847 V!29841) V!29841)

(declare-fun dynLambda!1333 (Int (_ BitVec 64)) V!29841)

(assert (=> b!905260 (= lt!408488 (get!13479 (select (arr!25628 _values!1152) i!717) (dynLambda!1333 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!53344 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!905260 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!29841)

(declare-datatypes ((Unit!30689 0))(
  ( (Unit!30690) )
))
(declare-fun lt!408489 () Unit!30689)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!29841)

(declare-fun lemmaKeyInListMapIsInArray!206 (array!53344 array!53346 (_ BitVec 32) (_ BitVec 32) V!29841 V!29841 (_ BitVec 64) Int) Unit!30689)

(assert (=> b!905260 (= lt!408489 (lemmaKeyInListMapIsInArray!206 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!905261 () Bool)

(declare-fun e!507311 () Bool)

(declare-fun e!507310 () Bool)

(declare-fun mapRes!29698 () Bool)

(assert (=> b!905261 (= e!507311 (and e!507310 mapRes!29698))))

(declare-fun condMapEmpty!29698 () Bool)

(declare-fun mapDefault!29698 () ValueCell!8847)

(assert (=> b!905261 (= condMapEmpty!29698 (= (arr!25628 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8847)) mapDefault!29698)))))

(declare-fun b!905262 () Bool)

(declare-fun tp_is_empty!18657 () Bool)

(assert (=> b!905262 (= e!507310 tp_is_empty!18657)))

(declare-fun b!905263 () Bool)

(declare-fun res!610987 () Bool)

(declare-fun e!507315 () Bool)

(assert (=> b!905263 (=> (not res!610987) (not e!507315))))

(declare-datatypes ((List!18086 0))(
  ( (Nil!18083) (Cons!18082 (h!19228 (_ BitVec 64)) (t!25505 List!18086)) )
))
(declare-fun arrayNoDuplicates!0 (array!53344 (_ BitVec 32) List!18086) Bool)

(assert (=> b!905263 (= res!610987 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18083))))

(declare-fun b!905264 () Bool)

(declare-fun res!610992 () Bool)

(assert (=> b!905264 (=> (not res!610992) (not e!507315))))

(assert (=> b!905264 (= res!610992 (and (= (size!26088 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26087 _keys!1386) (size!26088 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun res!610991 () Bool)

(assert (=> start!77682 (=> (not res!610991) (not e!507315))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77682 (= res!610991 (validMask!0 mask!1756))))

(assert (=> start!77682 e!507315))

(declare-fun array_inv!20056 (array!53346) Bool)

(assert (=> start!77682 (and (array_inv!20056 _values!1152) e!507311)))

(assert (=> start!77682 tp!56980))

(assert (=> start!77682 true))

(assert (=> start!77682 tp_is_empty!18657))

(declare-fun array_inv!20057 (array!53344) Bool)

(assert (=> start!77682 (array_inv!20057 _keys!1386)))

(declare-fun mapNonEmpty!29698 () Bool)

(declare-fun tp!56979 () Bool)

(declare-fun e!507312 () Bool)

(assert (=> mapNonEmpty!29698 (= mapRes!29698 (and tp!56979 e!507312))))

(declare-fun mapKey!29698 () (_ BitVec 32))

(declare-fun mapValue!29698 () ValueCell!8847)

(declare-fun mapRest!29698 () (Array (_ BitVec 32) ValueCell!8847))

(assert (=> mapNonEmpty!29698 (= (arr!25628 _values!1152) (store mapRest!29698 mapKey!29698 mapValue!29698))))

(declare-fun b!905265 () Bool)

(assert (=> b!905265 (= e!507315 e!507316)))

(declare-fun res!610988 () Bool)

(assert (=> b!905265 (=> (not res!610988) (not e!507316))))

(declare-datatypes ((tuple2!12218 0))(
  ( (tuple2!12219 (_1!6119 (_ BitVec 64)) (_2!6119 V!29841)) )
))
(declare-datatypes ((List!18087 0))(
  ( (Nil!18084) (Cons!18083 (h!19229 tuple2!12218) (t!25506 List!18087)) )
))
(declare-datatypes ((ListLongMap!10929 0))(
  ( (ListLongMap!10930 (toList!5480 List!18087)) )
))
(declare-fun lt!408491 () ListLongMap!10929)

(declare-fun contains!4493 (ListLongMap!10929 (_ BitVec 64)) Bool)

(assert (=> b!905265 (= res!610988 (contains!4493 lt!408491 k0!1033))))

(declare-fun getCurrentListMap!2717 (array!53344 array!53346 (_ BitVec 32) (_ BitVec 32) V!29841 V!29841 (_ BitVec 32) Int) ListLongMap!10929)

(assert (=> b!905265 (= lt!408491 (getCurrentListMap!2717 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun b!905266 () Bool)

(declare-fun res!610985 () Bool)

(declare-fun e!507317 () Bool)

(assert (=> b!905266 (=> res!610985 e!507317)))

(declare-fun lt!408490 () ListLongMap!10929)

(declare-fun apply!457 (ListLongMap!10929 (_ BitVec 64)) V!29841)

(assert (=> b!905266 (= res!610985 (not (= (apply!457 lt!408490 k0!1033) lt!408488)))))

(declare-fun b!905267 () Bool)

(assert (=> b!905267 (= e!507312 tp_is_empty!18657)))

(declare-fun b!905268 () Bool)

(declare-fun res!610990 () Bool)

(assert (=> b!905268 (=> (not res!610990) (not e!507316))))

(assert (=> b!905268 (= res!610990 (and (= (select (arr!25627 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!905269 () Bool)

(declare-fun res!610983 () Bool)

(assert (=> b!905269 (=> (not res!610983) (not e!507315))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53344 (_ BitVec 32)) Bool)

(assert (=> b!905269 (= res!610983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!905270 () Bool)

(declare-fun res!610989 () Bool)

(assert (=> b!905270 (=> (not res!610989) (not e!507316))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!905270 (= res!610989 (inRange!0 i!717 mask!1756))))

(declare-fun b!905271 () Bool)

(assert (=> b!905271 (= e!507317 true)))

(assert (=> b!905271 (= (apply!457 lt!408491 k0!1033) lt!408488)))

(declare-fun lt!408487 () Unit!30689)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!11 (array!53344 array!53346 (_ BitVec 32) (_ BitVec 32) V!29841 V!29841 (_ BitVec 64) V!29841 (_ BitVec 32) Int) Unit!30689)

(assert (=> b!905271 (= lt!408487 (lemmaListMapApplyFromThenApplyFromZero!11 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 lt!408488 i!717 defaultEntry!1160))))

(declare-fun b!905272 () Bool)

(assert (=> b!905272 (= e!507313 e!507317)))

(declare-fun res!610984 () Bool)

(assert (=> b!905272 (=> res!610984 e!507317)))

(assert (=> b!905272 (= res!610984 (not (contains!4493 lt!408490 k0!1033)))))

(assert (=> b!905272 (= lt!408490 (getCurrentListMap!2717 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 i!717 defaultEntry!1160))))

(declare-fun mapIsEmpty!29698 () Bool)

(assert (=> mapIsEmpty!29698 mapRes!29698))

(assert (= (and start!77682 res!610991) b!905264))

(assert (= (and b!905264 res!610992) b!905269))

(assert (= (and b!905269 res!610983) b!905263))

(assert (= (and b!905263 res!610987) b!905265))

(assert (= (and b!905265 res!610988) b!905270))

(assert (= (and b!905270 res!610989) b!905268))

(assert (= (and b!905268 res!610990) b!905260))

(assert (= (and b!905260 (not res!610986)) b!905272))

(assert (= (and b!905272 (not res!610984)) b!905266))

(assert (= (and b!905266 (not res!610985)) b!905271))

(assert (= (and b!905261 condMapEmpty!29698) mapIsEmpty!29698))

(assert (= (and b!905261 (not condMapEmpty!29698)) mapNonEmpty!29698))

(get-info :version)

(assert (= (and mapNonEmpty!29698 ((_ is ValueCellFull!8847) mapValue!29698)) b!905267))

(assert (= (and b!905261 ((_ is ValueCellFull!8847) mapDefault!29698)) b!905262))

(assert (= start!77682 b!905261))

(declare-fun b_lambda!13143 () Bool)

(assert (=> (not b_lambda!13143) (not b!905260)))

(declare-fun t!25504 () Bool)

(declare-fun tb!5269 () Bool)

(assert (=> (and start!77682 (= defaultEntry!1160 defaultEntry!1160) t!25504) tb!5269))

(declare-fun result!10325 () Bool)

(assert (=> tb!5269 (= result!10325 tp_is_empty!18657)))

(assert (=> b!905260 t!25504))

(declare-fun b_and!26651 () Bool)

(assert (= b_and!26649 (and (=> t!25504 result!10325) b_and!26651)))

(declare-fun m!840771 () Bool)

(assert (=> b!905271 m!840771))

(declare-fun m!840773 () Bool)

(assert (=> b!905271 m!840773))

(declare-fun m!840775 () Bool)

(assert (=> b!905263 m!840775))

(declare-fun m!840777 () Bool)

(assert (=> b!905270 m!840777))

(declare-fun m!840779 () Bool)

(assert (=> b!905272 m!840779))

(declare-fun m!840781 () Bool)

(assert (=> b!905272 m!840781))

(declare-fun m!840783 () Bool)

(assert (=> b!905266 m!840783))

(declare-fun m!840785 () Bool)

(assert (=> b!905268 m!840785))

(declare-fun m!840787 () Bool)

(assert (=> start!77682 m!840787))

(declare-fun m!840789 () Bool)

(assert (=> start!77682 m!840789))

(declare-fun m!840791 () Bool)

(assert (=> start!77682 m!840791))

(declare-fun m!840793 () Bool)

(assert (=> b!905265 m!840793))

(declare-fun m!840795 () Bool)

(assert (=> b!905265 m!840795))

(declare-fun m!840797 () Bool)

(assert (=> b!905269 m!840797))

(declare-fun m!840799 () Bool)

(assert (=> b!905260 m!840799))

(declare-fun m!840801 () Bool)

(assert (=> b!905260 m!840801))

(declare-fun m!840803 () Bool)

(assert (=> b!905260 m!840803))

(declare-fun m!840805 () Bool)

(assert (=> b!905260 m!840805))

(assert (=> b!905260 m!840799))

(assert (=> b!905260 m!840803))

(declare-fun m!840807 () Bool)

(assert (=> b!905260 m!840807))

(declare-fun m!840809 () Bool)

(assert (=> mapNonEmpty!29698 m!840809))

(check-sat (not b_lambda!13143) (not mapNonEmpty!29698) (not b_next!16239) (not b!905263) (not start!77682) tp_is_empty!18657 b_and!26651 (not b!905269) (not b!905265) (not b!905272) (not b!905260) (not b!905271) (not b!905266) (not b!905270))
(check-sat b_and!26651 (not b_next!16239))
