; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95766 () Bool)

(assert start!95766)

(declare-fun b_free!22383 () Bool)

(declare-fun b_next!22383 () Bool)

(assert (=> start!95766 (= b_free!22383 (not b_next!22383))))

(declare-fun tp!78998 () Bool)

(declare-fun b_and!35459 () Bool)

(assert (=> start!95766 (= tp!78998 b_and!35459)))

(declare-fun b!1082439 () Bool)

(declare-fun e!618641 () Bool)

(declare-fun e!618639 () Bool)

(assert (=> b!1082439 (= e!618641 e!618639)))

(declare-fun res!721633 () Bool)

(assert (=> b!1082439 (=> (not res!721633) (not e!618639))))

(declare-datatypes ((array!69674 0))(
  ( (array!69675 (arr!33507 (Array (_ BitVec 32) (_ BitVec 64))) (size!34044 (_ BitVec 32))) )
))
(declare-fun lt!479612 () array!69674)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69674 (_ BitVec 32)) Bool)

(assert (=> b!1082439 (= res!721633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479612 mask!1414))))

(declare-fun _keys!1070 () array!69674)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082439 (= lt!479612 (array!69675 (store (arr!33507 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34044 _keys!1070)))))

(declare-fun b!1082440 () Bool)

(declare-fun res!721631 () Bool)

(assert (=> b!1082440 (=> (not res!721631) (not e!618641))))

(declare-datatypes ((List!23489 0))(
  ( (Nil!23486) (Cons!23485 (h!24694 (_ BitVec 64)) (t!32937 List!23489)) )
))
(declare-fun arrayNoDuplicates!0 (array!69674 (_ BitVec 32) List!23489) Bool)

(assert (=> b!1082440 (= res!721631 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23486))))

(declare-fun res!721629 () Bool)

(assert (=> start!95766 (=> (not res!721629) (not e!618641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95766 (= res!721629 (validMask!0 mask!1414))))

(assert (=> start!95766 e!618641))

(assert (=> start!95766 tp!78998))

(assert (=> start!95766 true))

(declare-fun tp_is_empty!26385 () Bool)

(assert (=> start!95766 tp_is_empty!26385))

(declare-fun array_inv!25724 (array!69674) Bool)

(assert (=> start!95766 (array_inv!25724 _keys!1070)))

(declare-datatypes ((V!40307 0))(
  ( (V!40308 (val!13249 Int)) )
))
(declare-datatypes ((ValueCell!12483 0))(
  ( (ValueCellFull!12483 (v!15871 V!40307)) (EmptyCell!12483) )
))
(declare-datatypes ((array!69676 0))(
  ( (array!69677 (arr!33508 (Array (_ BitVec 32) ValueCell!12483)) (size!34045 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69676)

(declare-fun e!618638 () Bool)

(declare-fun array_inv!25725 (array!69676) Bool)

(assert (=> start!95766 (and (array_inv!25725 _values!874) e!618638)))

(declare-fun b!1082441 () Bool)

(assert (=> b!1082441 (= e!618639 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40307)

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((tuple2!16856 0))(
  ( (tuple2!16857 (_1!8438 (_ BitVec 64)) (_2!8438 V!40307)) )
))
(declare-datatypes ((List!23490 0))(
  ( (Nil!23487) (Cons!23486 (h!24695 tuple2!16856) (t!32938 List!23490)) )
))
(declare-datatypes ((ListLongMap!14837 0))(
  ( (ListLongMap!14838 (toList!7434 List!23490)) )
))
(declare-fun lt!479609 () ListLongMap!14837)

(declare-fun zeroValue!831 () V!40307)

(declare-fun getCurrentListMapNoExtraKeys!3945 (array!69674 array!69676 (_ BitVec 32) (_ BitVec 32) V!40307 V!40307 (_ BitVec 32) Int) ListLongMap!14837)

(declare-fun dynLambda!2081 (Int (_ BitVec 64)) V!40307)

(assert (=> b!1082441 (= lt!479609 (getCurrentListMapNoExtraKeys!3945 lt!479612 (array!69677 (store (arr!33508 _values!874) i!650 (ValueCellFull!12483 (dynLambda!2081 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34045 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479610 () ListLongMap!14837)

(assert (=> b!1082441 (= lt!479610 (getCurrentListMapNoExtraKeys!3945 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!69674 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082441 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35547 0))(
  ( (Unit!35548) )
))
(declare-fun lt!479611 () Unit!35547)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69674 (_ BitVec 64) (_ BitVec 32)) Unit!35547)

(assert (=> b!1082441 (= lt!479611 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1082442 () Bool)

(declare-fun e!618642 () Bool)

(assert (=> b!1082442 (= e!618642 tp_is_empty!26385)))

(declare-fun b!1082443 () Bool)

(declare-fun res!721630 () Bool)

(assert (=> b!1082443 (=> (not res!721630) (not e!618641))))

(assert (=> b!1082443 (= res!721630 (and (= (size!34045 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34044 _keys!1070) (size!34045 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082444 () Bool)

(declare-fun res!721632 () Bool)

(assert (=> b!1082444 (=> (not res!721632) (not e!618639))))

(assert (=> b!1082444 (= res!721632 (arrayNoDuplicates!0 lt!479612 #b00000000000000000000000000000000 Nil!23486))))

(declare-fun b!1082445 () Bool)

(declare-fun res!721628 () Bool)

(assert (=> b!1082445 (=> (not res!721628) (not e!618641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082445 (= res!721628 (validKeyInArray!0 k0!904))))

(declare-fun b!1082446 () Bool)

(declare-fun res!721626 () Bool)

(assert (=> b!1082446 (=> (not res!721626) (not e!618641))))

(assert (=> b!1082446 (= res!721626 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34044 _keys!1070))))))

(declare-fun b!1082447 () Bool)

(declare-fun res!721627 () Bool)

(assert (=> b!1082447 (=> (not res!721627) (not e!618641))))

(assert (=> b!1082447 (= res!721627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapNonEmpty!41332 () Bool)

(declare-fun mapRes!41332 () Bool)

(declare-fun tp!78999 () Bool)

(assert (=> mapNonEmpty!41332 (= mapRes!41332 (and tp!78999 e!618642))))

(declare-fun mapValue!41332 () ValueCell!12483)

(declare-fun mapRest!41332 () (Array (_ BitVec 32) ValueCell!12483))

(declare-fun mapKey!41332 () (_ BitVec 32))

(assert (=> mapNonEmpty!41332 (= (arr!33508 _values!874) (store mapRest!41332 mapKey!41332 mapValue!41332))))

(declare-fun b!1082448 () Bool)

(declare-fun e!618640 () Bool)

(assert (=> b!1082448 (= e!618638 (and e!618640 mapRes!41332))))

(declare-fun condMapEmpty!41332 () Bool)

(declare-fun mapDefault!41332 () ValueCell!12483)

(assert (=> b!1082448 (= condMapEmpty!41332 (= (arr!33508 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12483)) mapDefault!41332)))))

(declare-fun b!1082449 () Bool)

(declare-fun res!721634 () Bool)

(assert (=> b!1082449 (=> (not res!721634) (not e!618641))))

(assert (=> b!1082449 (= res!721634 (= (select (arr!33507 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!41332 () Bool)

(assert (=> mapIsEmpty!41332 mapRes!41332))

(declare-fun b!1082450 () Bool)

(assert (=> b!1082450 (= e!618640 tp_is_empty!26385)))

(assert (= (and start!95766 res!721629) b!1082443))

(assert (= (and b!1082443 res!721630) b!1082447))

(assert (= (and b!1082447 res!721627) b!1082440))

(assert (= (and b!1082440 res!721631) b!1082446))

(assert (= (and b!1082446 res!721626) b!1082445))

(assert (= (and b!1082445 res!721628) b!1082449))

(assert (= (and b!1082449 res!721634) b!1082439))

(assert (= (and b!1082439 res!721633) b!1082444))

(assert (= (and b!1082444 res!721632) b!1082441))

(assert (= (and b!1082448 condMapEmpty!41332) mapIsEmpty!41332))

(assert (= (and b!1082448 (not condMapEmpty!41332)) mapNonEmpty!41332))

(get-info :version)

(assert (= (and mapNonEmpty!41332 ((_ is ValueCellFull!12483) mapValue!41332)) b!1082442))

(assert (= (and b!1082448 ((_ is ValueCellFull!12483) mapDefault!41332)) b!1082450))

(assert (= start!95766 b!1082448))

(declare-fun b_lambda!17083 () Bool)

(assert (=> (not b_lambda!17083) (not b!1082441)))

(declare-fun t!32936 () Bool)

(declare-fun tb!7269 () Bool)

(assert (=> (and start!95766 (= defaultEntry!882 defaultEntry!882) t!32936) tb!7269))

(declare-fun result!15049 () Bool)

(assert (=> tb!7269 (= result!15049 tp_is_empty!26385)))

(assert (=> b!1082441 t!32936))

(declare-fun b_and!35461 () Bool)

(assert (= b_and!35459 (and (=> t!32936 result!15049) b_and!35461)))

(declare-fun m!1000255 () Bool)

(assert (=> start!95766 m!1000255))

(declare-fun m!1000257 () Bool)

(assert (=> start!95766 m!1000257))

(declare-fun m!1000259 () Bool)

(assert (=> start!95766 m!1000259))

(declare-fun m!1000261 () Bool)

(assert (=> b!1082445 m!1000261))

(declare-fun m!1000263 () Bool)

(assert (=> b!1082439 m!1000263))

(declare-fun m!1000265 () Bool)

(assert (=> b!1082439 m!1000265))

(declare-fun m!1000267 () Bool)

(assert (=> b!1082444 m!1000267))

(declare-fun m!1000269 () Bool)

(assert (=> b!1082447 m!1000269))

(declare-fun m!1000271 () Bool)

(assert (=> mapNonEmpty!41332 m!1000271))

(declare-fun m!1000273 () Bool)

(assert (=> b!1082449 m!1000273))

(declare-fun m!1000275 () Bool)

(assert (=> b!1082441 m!1000275))

(declare-fun m!1000277 () Bool)

(assert (=> b!1082441 m!1000277))

(declare-fun m!1000279 () Bool)

(assert (=> b!1082441 m!1000279))

(declare-fun m!1000281 () Bool)

(assert (=> b!1082441 m!1000281))

(declare-fun m!1000283 () Bool)

(assert (=> b!1082441 m!1000283))

(declare-fun m!1000285 () Bool)

(assert (=> b!1082441 m!1000285))

(declare-fun m!1000287 () Bool)

(assert (=> b!1082440 m!1000287))

(check-sat (not b_lambda!17083) tp_is_empty!26385 (not b!1082445) (not start!95766) (not b!1082444) (not b!1082440) (not b!1082447) b_and!35461 (not b!1082439) (not mapNonEmpty!41332) (not b_next!22383) (not b!1082441))
(check-sat b_and!35461 (not b_next!22383))
