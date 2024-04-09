; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95688 () Bool)

(assert start!95688)

(declare-fun b_free!22305 () Bool)

(declare-fun b_next!22305 () Bool)

(assert (=> start!95688 (= b_free!22305 (not b_next!22305))))

(declare-fun tp!78765 () Bool)

(declare-fun b_and!35303 () Bool)

(assert (=> start!95688 (= tp!78765 b_and!35303)))

(declare-fun b!1080957 () Bool)

(declare-fun res!720578 () Bool)

(declare-fun e!617936 () Bool)

(assert (=> b!1080957 (=> (not res!720578) (not e!617936))))

(declare-datatypes ((array!69518 0))(
  ( (array!69519 (arr!33429 (Array (_ BitVec 32) (_ BitVec 64))) (size!33966 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69518)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69518 (_ BitVec 32)) Bool)

(assert (=> b!1080957 (= res!720578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1080958 () Bool)

(declare-fun res!720575 () Bool)

(assert (=> b!1080958 (=> (not res!720575) (not e!617936))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1080958 (= res!720575 (= (select (arr!33429 _keys!1070) i!650) k0!904))))

(declare-fun b!1080959 () Bool)

(declare-fun res!720581 () Bool)

(assert (=> b!1080959 (=> (not res!720581) (not e!617936))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40203 0))(
  ( (V!40204 (val!13210 Int)) )
))
(declare-datatypes ((ValueCell!12444 0))(
  ( (ValueCellFull!12444 (v!15832 V!40203)) (EmptyCell!12444) )
))
(declare-datatypes ((array!69520 0))(
  ( (array!69521 (arr!33430 (Array (_ BitVec 32) ValueCell!12444)) (size!33967 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69520)

(assert (=> b!1080959 (= res!720581 (and (= (size!33967 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33966 _keys!1070) (size!33967 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!41215 () Bool)

(declare-fun mapRes!41215 () Bool)

(declare-fun tp!78764 () Bool)

(declare-fun e!617937 () Bool)

(assert (=> mapNonEmpty!41215 (= mapRes!41215 (and tp!78764 e!617937))))

(declare-fun mapValue!41215 () ValueCell!12444)

(declare-fun mapKey!41215 () (_ BitVec 32))

(declare-fun mapRest!41215 () (Array (_ BitVec 32) ValueCell!12444))

(assert (=> mapNonEmpty!41215 (= (arr!33430 _values!874) (store mapRest!41215 mapKey!41215 mapValue!41215))))

(declare-fun res!720576 () Bool)

(assert (=> start!95688 (=> (not res!720576) (not e!617936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95688 (= res!720576 (validMask!0 mask!1414))))

(assert (=> start!95688 e!617936))

(assert (=> start!95688 tp!78765))

(assert (=> start!95688 true))

(declare-fun tp_is_empty!26307 () Bool)

(assert (=> start!95688 tp_is_empty!26307))

(declare-fun array_inv!25672 (array!69518) Bool)

(assert (=> start!95688 (array_inv!25672 _keys!1070)))

(declare-fun e!617939 () Bool)

(declare-fun array_inv!25673 (array!69520) Bool)

(assert (=> start!95688 (and (array_inv!25673 _values!874) e!617939)))

(declare-fun b!1080960 () Bool)

(declare-fun e!617941 () Bool)

(assert (=> b!1080960 (= e!617941 (not true))))

(declare-fun lt!479143 () array!69518)

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40203)

(declare-fun zeroValue!831 () V!40203)

(declare-datatypes ((tuple2!16804 0))(
  ( (tuple2!16805 (_1!8412 (_ BitVec 64)) (_2!8412 V!40203)) )
))
(declare-datatypes ((List!23429 0))(
  ( (Nil!23426) (Cons!23425 (h!24634 tuple2!16804) (t!32799 List!23429)) )
))
(declare-datatypes ((ListLongMap!14785 0))(
  ( (ListLongMap!14786 (toList!7408 List!23429)) )
))
(declare-fun lt!479144 () ListLongMap!14785)

(declare-fun getCurrentListMapNoExtraKeys!3919 (array!69518 array!69520 (_ BitVec 32) (_ BitVec 32) V!40203 V!40203 (_ BitVec 32) Int) ListLongMap!14785)

(declare-fun dynLambda!2055 (Int (_ BitVec 64)) V!40203)

(assert (=> b!1080960 (= lt!479144 (getCurrentListMapNoExtraKeys!3919 lt!479143 (array!69521 (store (arr!33430 _values!874) i!650 (ValueCellFull!12444 (dynLambda!2055 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!33967 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479141 () ListLongMap!14785)

(assert (=> b!1080960 (= lt!479141 (getCurrentListMapNoExtraKeys!3919 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1080960 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35495 0))(
  ( (Unit!35496) )
))
(declare-fun lt!479142 () Unit!35495)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69518 (_ BitVec 64) (_ BitVec 32)) Unit!35495)

(assert (=> b!1080960 (= lt!479142 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1080961 () Bool)

(assert (=> b!1080961 (= e!617937 tp_is_empty!26307)))

(declare-fun b!1080962 () Bool)

(declare-fun e!617938 () Bool)

(assert (=> b!1080962 (= e!617938 tp_is_empty!26307)))

(declare-fun b!1080963 () Bool)

(assert (=> b!1080963 (= e!617936 e!617941)))

(declare-fun res!720579 () Bool)

(assert (=> b!1080963 (=> (not res!720579) (not e!617941))))

(assert (=> b!1080963 (= res!720579 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479143 mask!1414))))

(assert (=> b!1080963 (= lt!479143 (array!69519 (store (arr!33429 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33966 _keys!1070)))))

(declare-fun mapIsEmpty!41215 () Bool)

(assert (=> mapIsEmpty!41215 mapRes!41215))

(declare-fun b!1080964 () Bool)

(declare-fun res!720574 () Bool)

(assert (=> b!1080964 (=> (not res!720574) (not e!617941))))

(declare-datatypes ((List!23430 0))(
  ( (Nil!23427) (Cons!23426 (h!24635 (_ BitVec 64)) (t!32800 List!23430)) )
))
(declare-fun arrayNoDuplicates!0 (array!69518 (_ BitVec 32) List!23430) Bool)

(assert (=> b!1080964 (= res!720574 (arrayNoDuplicates!0 lt!479143 #b00000000000000000000000000000000 Nil!23427))))

(declare-fun b!1080965 () Bool)

(declare-fun res!720573 () Bool)

(assert (=> b!1080965 (=> (not res!720573) (not e!617936))))

(assert (=> b!1080965 (= res!720573 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23427))))

(declare-fun b!1080966 () Bool)

(assert (=> b!1080966 (= e!617939 (and e!617938 mapRes!41215))))

(declare-fun condMapEmpty!41215 () Bool)

(declare-fun mapDefault!41215 () ValueCell!12444)

(assert (=> b!1080966 (= condMapEmpty!41215 (= (arr!33430 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12444)) mapDefault!41215)))))

(declare-fun b!1080967 () Bool)

(declare-fun res!720577 () Bool)

(assert (=> b!1080967 (=> (not res!720577) (not e!617936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1080967 (= res!720577 (validKeyInArray!0 k0!904))))

(declare-fun b!1080968 () Bool)

(declare-fun res!720580 () Bool)

(assert (=> b!1080968 (=> (not res!720580) (not e!617936))))

(assert (=> b!1080968 (= res!720580 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33966 _keys!1070))))))

(assert (= (and start!95688 res!720576) b!1080959))

(assert (= (and b!1080959 res!720581) b!1080957))

(assert (= (and b!1080957 res!720578) b!1080965))

(assert (= (and b!1080965 res!720573) b!1080968))

(assert (= (and b!1080968 res!720580) b!1080967))

(assert (= (and b!1080967 res!720577) b!1080958))

(assert (= (and b!1080958 res!720575) b!1080963))

(assert (= (and b!1080963 res!720579) b!1080964))

(assert (= (and b!1080964 res!720574) b!1080960))

(assert (= (and b!1080966 condMapEmpty!41215) mapIsEmpty!41215))

(assert (= (and b!1080966 (not condMapEmpty!41215)) mapNonEmpty!41215))

(get-info :version)

(assert (= (and mapNonEmpty!41215 ((_ is ValueCellFull!12444) mapValue!41215)) b!1080961))

(assert (= (and b!1080966 ((_ is ValueCellFull!12444) mapDefault!41215)) b!1080962))

(assert (= start!95688 b!1080966))

(declare-fun b_lambda!17005 () Bool)

(assert (=> (not b_lambda!17005) (not b!1080960)))

(declare-fun t!32798 () Bool)

(declare-fun tb!7191 () Bool)

(assert (=> (and start!95688 (= defaultEntry!882 defaultEntry!882) t!32798) tb!7191))

(declare-fun result!14893 () Bool)

(assert (=> tb!7191 (= result!14893 tp_is_empty!26307)))

(assert (=> b!1080960 t!32798))

(declare-fun b_and!35305 () Bool)

(assert (= b_and!35303 (and (=> t!32798 result!14893) b_and!35305)))

(declare-fun m!998929 () Bool)

(assert (=> b!1080958 m!998929))

(declare-fun m!998931 () Bool)

(assert (=> b!1080965 m!998931))

(declare-fun m!998933 () Bool)

(assert (=> mapNonEmpty!41215 m!998933))

(declare-fun m!998935 () Bool)

(assert (=> b!1080963 m!998935))

(declare-fun m!998937 () Bool)

(assert (=> b!1080963 m!998937))

(declare-fun m!998939 () Bool)

(assert (=> start!95688 m!998939))

(declare-fun m!998941 () Bool)

(assert (=> start!95688 m!998941))

(declare-fun m!998943 () Bool)

(assert (=> start!95688 m!998943))

(declare-fun m!998945 () Bool)

(assert (=> b!1080957 m!998945))

(declare-fun m!998947 () Bool)

(assert (=> b!1080967 m!998947))

(declare-fun m!998949 () Bool)

(assert (=> b!1080960 m!998949))

(declare-fun m!998951 () Bool)

(assert (=> b!1080960 m!998951))

(declare-fun m!998953 () Bool)

(assert (=> b!1080960 m!998953))

(declare-fun m!998955 () Bool)

(assert (=> b!1080960 m!998955))

(declare-fun m!998957 () Bool)

(assert (=> b!1080960 m!998957))

(declare-fun m!998959 () Bool)

(assert (=> b!1080960 m!998959))

(declare-fun m!998961 () Bool)

(assert (=> b!1080964 m!998961))

(check-sat tp_is_empty!26307 (not b!1080963) (not mapNonEmpty!41215) (not b!1080957) (not b_next!22305) (not b_lambda!17005) (not b!1080964) (not start!95688) b_and!35305 (not b!1080965) (not b!1080967) (not b!1080960))
(check-sat b_and!35305 (not b_next!22305))
