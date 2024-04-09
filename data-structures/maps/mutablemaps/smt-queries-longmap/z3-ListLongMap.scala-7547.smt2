; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95640 () Bool)

(assert start!95640)

(declare-fun b_free!22257 () Bool)

(declare-fun b_next!22257 () Bool)

(assert (=> start!95640 (= b_free!22257 (not b_next!22257))))

(declare-fun tp!78621 () Bool)

(declare-fun b_and!35253 () Bool)

(assert (=> start!95640 (= tp!78621 b_and!35253)))

(declare-fun mapIsEmpty!41143 () Bool)

(declare-fun mapRes!41143 () Bool)

(assert (=> mapIsEmpty!41143 mapRes!41143))

(declare-fun b!1080091 () Bool)

(declare-fun e!617506 () Bool)

(declare-fun tp_is_empty!26259 () Bool)

(assert (=> b!1080091 (= e!617506 tp_is_empty!26259)))

(declare-fun res!719925 () Bool)

(declare-fun e!617509 () Bool)

(assert (=> start!95640 (=> (not res!719925) (not e!617509))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95640 (= res!719925 (validMask!0 mask!1414))))

(assert (=> start!95640 e!617509))

(assert (=> start!95640 tp!78621))

(assert (=> start!95640 true))

(assert (=> start!95640 tp_is_empty!26259))

(declare-datatypes ((array!69424 0))(
  ( (array!69425 (arr!33382 (Array (_ BitVec 32) (_ BitVec 64))) (size!33919 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69424)

(declare-fun array_inv!25636 (array!69424) Bool)

(assert (=> start!95640 (array_inv!25636 _keys!1070)))

(declare-datatypes ((V!40139 0))(
  ( (V!40140 (val!13186 Int)) )
))
(declare-datatypes ((ValueCell!12420 0))(
  ( (ValueCellFull!12420 (v!15808 V!40139)) (EmptyCell!12420) )
))
(declare-datatypes ((array!69426 0))(
  ( (array!69427 (arr!33383 (Array (_ BitVec 32) ValueCell!12420)) (size!33920 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69426)

(declare-fun e!617508 () Bool)

(declare-fun array_inv!25637 (array!69426) Bool)

(assert (=> start!95640 (and (array_inv!25637 _values!874) e!617508)))

(declare-fun b!1080092 () Bool)

(declare-fun res!719928 () Bool)

(assert (=> b!1080092 (=> (not res!719928) (not e!617509))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080092 (= res!719928 (validKeyInArray!0 k0!904))))

(declare-fun b!1080093 () Bool)

(declare-fun res!719927 () Bool)

(assert (=> b!1080093 (=> (not res!719927) (not e!617509))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080093 (= res!719927 (= (select (arr!33382 _keys!1070) i!650) k0!904))))

(declare-fun b!1080094 () Bool)

(assert (=> b!1080094 (= e!617508 (and e!617506 mapRes!41143))))

(declare-fun condMapEmpty!41143 () Bool)

(declare-fun mapDefault!41143 () ValueCell!12420)

(assert (=> b!1080094 (= condMapEmpty!41143 (= (arr!33383 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12420)) mapDefault!41143)))))

(declare-fun b!1080095 () Bool)

(declare-fun res!719926 () Bool)

(assert (=> b!1080095 (=> (not res!719926) (not e!617509))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1080095 (= res!719926 (and (= (size!33920 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33919 _keys!1070) (size!33920 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1080096 () Bool)

(declare-fun res!719933 () Bool)

(declare-fun e!617505 () Bool)

(assert (=> b!1080096 (=> (not res!719933) (not e!617505))))

(declare-fun lt!478920 () array!69424)

(declare-datatypes ((List!23391 0))(
  ( (Nil!23388) (Cons!23387 (h!24596 (_ BitVec 64)) (t!32757 List!23391)) )
))
(declare-fun arrayNoDuplicates!0 (array!69424 (_ BitVec 32) List!23391) Bool)

(assert (=> b!1080096 (= res!719933 (arrayNoDuplicates!0 lt!478920 #b00000000000000000000000000000000 Nil!23388))))

(declare-fun b!1080097 () Bool)

(declare-fun res!719931 () Bool)

(assert (=> b!1080097 (=> (not res!719931) (not e!617509))))

(assert (=> b!1080097 (= res!719931 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23388))))

(declare-fun b!1080098 () Bool)

(assert (=> b!1080098 (= e!617509 e!617505)))

(declare-fun res!719932 () Bool)

(assert (=> b!1080098 (=> (not res!719932) (not e!617505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69424 (_ BitVec 32)) Bool)

(assert (=> b!1080098 (= res!719932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!478920 mask!1414))))

(assert (=> b!1080098 (= lt!478920 (array!69425 (store (arr!33382 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33919 _keys!1070)))))

(declare-fun b!1080099 () Bool)

(declare-fun res!719930 () Bool)

(assert (=> b!1080099 (=> (not res!719930) (not e!617509))))

(assert (=> b!1080099 (= res!719930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080100 () Bool)

(assert (=> b!1080100 (= e!617505 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((tuple2!16770 0))(
  ( (tuple2!16771 (_1!8395 (_ BitVec 64)) (_2!8395 V!40139)) )
))
(declare-datatypes ((List!23392 0))(
  ( (Nil!23389) (Cons!23388 (h!24597 tuple2!16770) (t!32758 List!23392)) )
))
(declare-datatypes ((ListLongMap!14751 0))(
  ( (ListLongMap!14752 (toList!7391 List!23392)) )
))
(declare-fun lt!478922 () ListLongMap!14751)

(declare-fun minValue!831 () V!40139)

(declare-fun zeroValue!831 () V!40139)

(declare-fun getCurrentListMapNoExtraKeys!3902 (array!69424 array!69426 (_ BitVec 32) (_ BitVec 32) V!40139 V!40139 (_ BitVec 32) Int) ListLongMap!14751)

(assert (=> b!1080100 (= lt!478922 (getCurrentListMapNoExtraKeys!3902 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080100 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35461 0))(
  ( (Unit!35462) )
))
(declare-fun lt!478921 () Unit!35461)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69424 (_ BitVec 64) (_ BitVec 32)) Unit!35461)

(assert (=> b!1080100 (= lt!478921 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1080101 () Bool)

(declare-fun res!719929 () Bool)

(assert (=> b!1080101 (=> (not res!719929) (not e!617509))))

(assert (=> b!1080101 (= res!719929 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33919 _keys!1070))))))

(declare-fun mapNonEmpty!41143 () Bool)

(declare-fun tp!78620 () Bool)

(declare-fun e!617507 () Bool)

(assert (=> mapNonEmpty!41143 (= mapRes!41143 (and tp!78620 e!617507))))

(declare-fun mapKey!41143 () (_ BitVec 32))

(declare-fun mapValue!41143 () ValueCell!12420)

(declare-fun mapRest!41143 () (Array (_ BitVec 32) ValueCell!12420))

(assert (=> mapNonEmpty!41143 (= (arr!33383 _values!874) (store mapRest!41143 mapKey!41143 mapValue!41143))))

(declare-fun b!1080102 () Bool)

(assert (=> b!1080102 (= e!617507 tp_is_empty!26259)))

(assert (= (and start!95640 res!719925) b!1080095))

(assert (= (and b!1080095 res!719926) b!1080099))

(assert (= (and b!1080099 res!719930) b!1080097))

(assert (= (and b!1080097 res!719931) b!1080101))

(assert (= (and b!1080101 res!719929) b!1080092))

(assert (= (and b!1080092 res!719928) b!1080093))

(assert (= (and b!1080093 res!719927) b!1080098))

(assert (= (and b!1080098 res!719932) b!1080096))

(assert (= (and b!1080096 res!719933) b!1080100))

(assert (= (and b!1080094 condMapEmpty!41143) mapIsEmpty!41143))

(assert (= (and b!1080094 (not condMapEmpty!41143)) mapNonEmpty!41143))

(get-info :version)

(assert (= (and mapNonEmpty!41143 ((_ is ValueCellFull!12420) mapValue!41143)) b!1080102))

(assert (= (and b!1080094 ((_ is ValueCellFull!12420) mapDefault!41143)) b!1080091))

(assert (= start!95640 b!1080094))

(declare-fun m!998251 () Bool)

(assert (=> b!1080093 m!998251))

(declare-fun m!998253 () Bool)

(assert (=> mapNonEmpty!41143 m!998253))

(declare-fun m!998255 () Bool)

(assert (=> b!1080097 m!998255))

(declare-fun m!998257 () Bool)

(assert (=> b!1080092 m!998257))

(declare-fun m!998259 () Bool)

(assert (=> start!95640 m!998259))

(declare-fun m!998261 () Bool)

(assert (=> start!95640 m!998261))

(declare-fun m!998263 () Bool)

(assert (=> start!95640 m!998263))

(declare-fun m!998265 () Bool)

(assert (=> b!1080098 m!998265))

(declare-fun m!998267 () Bool)

(assert (=> b!1080098 m!998267))

(declare-fun m!998269 () Bool)

(assert (=> b!1080100 m!998269))

(declare-fun m!998271 () Bool)

(assert (=> b!1080100 m!998271))

(declare-fun m!998273 () Bool)

(assert (=> b!1080100 m!998273))

(declare-fun m!998275 () Bool)

(assert (=> b!1080096 m!998275))

(declare-fun m!998277 () Bool)

(assert (=> b!1080099 m!998277))

(check-sat (not start!95640) (not b!1080097) (not b!1080099) b_and!35253 (not b_next!22257) tp_is_empty!26259 (not b!1080100) (not b!1080098) (not b!1080092) (not b!1080096) (not mapNonEmpty!41143))
(check-sat b_and!35253 (not b_next!22257))
