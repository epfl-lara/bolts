; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95802 () Bool)

(assert start!95802)

(declare-fun b_free!22419 () Bool)

(declare-fun b_next!22419 () Bool)

(assert (=> start!95802 (= b_free!22419 (not b_next!22419))))

(declare-fun tp!79106 () Bool)

(declare-fun b_and!35531 () Bool)

(assert (=> start!95802 (= tp!79106 b_and!35531)))

(declare-fun b!1083123 () Bool)

(declare-fun res!722119 () Bool)

(declare-fun e!618966 () Bool)

(assert (=> b!1083123 (=> (not res!722119) (not e!618966))))

(declare-datatypes ((array!69744 0))(
  ( (array!69745 (arr!33542 (Array (_ BitVec 32) (_ BitVec 64))) (size!34079 (_ BitVec 32))) )
))
(declare-fun lt!479927 () array!69744)

(declare-datatypes ((List!23515 0))(
  ( (Nil!23512) (Cons!23511 (h!24720 (_ BitVec 64)) (t!32999 List!23515)) )
))
(declare-fun arrayNoDuplicates!0 (array!69744 (_ BitVec 32) List!23515) Bool)

(assert (=> b!1083123 (= res!722119 (arrayNoDuplicates!0 lt!479927 #b00000000000000000000000000000000 Nil!23512))))

(declare-fun b!1083124 () Bool)

(declare-fun e!618962 () Bool)

(declare-fun tp_is_empty!26421 () Bool)

(assert (=> b!1083124 (= e!618962 tp_is_empty!26421)))

(declare-fun b!1083125 () Bool)

(declare-fun res!722120 () Bool)

(declare-fun e!618965 () Bool)

(assert (=> b!1083125 (=> (not res!722120) (not e!618965))))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun _keys!1070 () array!69744)

(assert (=> b!1083125 (= res!722120 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34079 _keys!1070))))))

(declare-fun b!1083126 () Bool)

(declare-fun res!722118 () Bool)

(assert (=> b!1083126 (=> (not res!722118) (not e!618965))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((V!40355 0))(
  ( (V!40356 (val!13267 Int)) )
))
(declare-datatypes ((ValueCell!12501 0))(
  ( (ValueCellFull!12501 (v!15889 V!40355)) (EmptyCell!12501) )
))
(declare-datatypes ((array!69746 0))(
  ( (array!69747 (arr!33543 (Array (_ BitVec 32) ValueCell!12501)) (size!34080 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69746)

(assert (=> b!1083126 (= res!722118 (and (= (size!34080 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34079 _keys!1070) (size!34080 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1083127 () Bool)

(declare-fun e!618963 () Bool)

(assert (=> b!1083127 (= e!618963 tp_is_empty!26421)))

(declare-fun b!1083128 () Bool)

(declare-fun res!722117 () Bool)

(assert (=> b!1083128 (=> (not res!722117) (not e!618965))))

(assert (=> b!1083128 (= res!722117 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23512))))

(declare-fun b!1083129 () Bool)

(declare-fun res!722114 () Bool)

(assert (=> b!1083129 (=> (not res!722114) (not e!618965))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1083129 (= res!722114 (validKeyInArray!0 k0!904))))

(declare-fun b!1083130 () Bool)

(assert (=> b!1083130 (= e!618965 e!618966)))

(declare-fun res!722115 () Bool)

(assert (=> b!1083130 (=> (not res!722115) (not e!618966))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69744 (_ BitVec 32)) Bool)

(assert (=> b!1083130 (= res!722115 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479927 mask!1414))))

(assert (=> b!1083130 (= lt!479927 (array!69745 (store (arr!33542 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34079 _keys!1070)))))

(declare-fun mapIsEmpty!41386 () Bool)

(declare-fun mapRes!41386 () Bool)

(assert (=> mapIsEmpty!41386 mapRes!41386))

(declare-fun b!1083131 () Bool)

(declare-fun e!618967 () Bool)

(assert (=> b!1083131 (= e!618967 (and e!618962 mapRes!41386))))

(declare-fun condMapEmpty!41386 () Bool)

(declare-fun mapDefault!41386 () ValueCell!12501)

(assert (=> b!1083131 (= condMapEmpty!41386 (= (arr!33543 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12501)) mapDefault!41386)))))

(declare-fun b!1083132 () Bool)

(assert (=> b!1083132 (= e!618966 (not true))))

(declare-datatypes ((tuple2!16880 0))(
  ( (tuple2!16881 (_1!8450 (_ BitVec 64)) (_2!8450 V!40355)) )
))
(declare-datatypes ((List!23516 0))(
  ( (Nil!23513) (Cons!23512 (h!24721 tuple2!16880) (t!33000 List!23516)) )
))
(declare-datatypes ((ListLongMap!14861 0))(
  ( (ListLongMap!14862 (toList!7446 List!23516)) )
))
(declare-fun lt!479930 () ListLongMap!14861)

(declare-fun lt!479929 () ListLongMap!14861)

(assert (=> b!1083132 (and (= lt!479930 lt!479929) (= lt!479929 lt!479930))))

(declare-fun lt!479926 () ListLongMap!14861)

(declare-fun -!728 (ListLongMap!14861 (_ BitVec 64)) ListLongMap!14861)

(assert (=> b!1083132 (= lt!479929 (-!728 lt!479926 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40355)

(declare-fun minValue!831 () V!40355)

(declare-datatypes ((Unit!35571 0))(
  ( (Unit!35572) )
))
(declare-fun lt!479928 () Unit!35571)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!11 (array!69744 array!69746 (_ BitVec 32) (_ BitVec 32) V!40355 V!40355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35571)

(assert (=> b!1083132 (= lt!479928 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!11 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3957 (array!69744 array!69746 (_ BitVec 32) (_ BitVec 32) V!40355 V!40355 (_ BitVec 32) Int) ListLongMap!14861)

(declare-fun dynLambda!2093 (Int (_ BitVec 64)) V!40355)

(assert (=> b!1083132 (= lt!479930 (getCurrentListMapNoExtraKeys!3957 lt!479927 (array!69747 (store (arr!33543 _values!874) i!650 (ValueCellFull!12501 (dynLambda!2093 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34080 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1083132 (= lt!479926 (getCurrentListMapNoExtraKeys!3957 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1083132 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!479925 () Unit!35571)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69744 (_ BitVec 64) (_ BitVec 32)) Unit!35571)

(assert (=> b!1083132 (= lt!479925 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1083133 () Bool)

(declare-fun res!722112 () Bool)

(assert (=> b!1083133 (=> (not res!722112) (not e!618965))))

(assert (=> b!1083133 (= res!722112 (= (select (arr!33542 _keys!1070) i!650) k0!904))))

(declare-fun mapNonEmpty!41386 () Bool)

(declare-fun tp!79107 () Bool)

(assert (=> mapNonEmpty!41386 (= mapRes!41386 (and tp!79107 e!618963))))

(declare-fun mapRest!41386 () (Array (_ BitVec 32) ValueCell!12501))

(declare-fun mapValue!41386 () ValueCell!12501)

(declare-fun mapKey!41386 () (_ BitVec 32))

(assert (=> mapNonEmpty!41386 (= (arr!33543 _values!874) (store mapRest!41386 mapKey!41386 mapValue!41386))))

(declare-fun res!722116 () Bool)

(assert (=> start!95802 (=> (not res!722116) (not e!618965))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95802 (= res!722116 (validMask!0 mask!1414))))

(assert (=> start!95802 e!618965))

(assert (=> start!95802 tp!79106))

(assert (=> start!95802 true))

(assert (=> start!95802 tp_is_empty!26421))

(declare-fun array_inv!25744 (array!69744) Bool)

(assert (=> start!95802 (array_inv!25744 _keys!1070)))

(declare-fun array_inv!25745 (array!69746) Bool)

(assert (=> start!95802 (and (array_inv!25745 _values!874) e!618967)))

(declare-fun b!1083134 () Bool)

(declare-fun res!722113 () Bool)

(assert (=> b!1083134 (=> (not res!722113) (not e!618965))))

(assert (=> b!1083134 (= res!722113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!95802 res!722116) b!1083126))

(assert (= (and b!1083126 res!722118) b!1083134))

(assert (= (and b!1083134 res!722113) b!1083128))

(assert (= (and b!1083128 res!722117) b!1083125))

(assert (= (and b!1083125 res!722120) b!1083129))

(assert (= (and b!1083129 res!722114) b!1083133))

(assert (= (and b!1083133 res!722112) b!1083130))

(assert (= (and b!1083130 res!722115) b!1083123))

(assert (= (and b!1083123 res!722119) b!1083132))

(assert (= (and b!1083131 condMapEmpty!41386) mapIsEmpty!41386))

(assert (= (and b!1083131 (not condMapEmpty!41386)) mapNonEmpty!41386))

(get-info :version)

(assert (= (and mapNonEmpty!41386 ((_ is ValueCellFull!12501) mapValue!41386)) b!1083127))

(assert (= (and b!1083131 ((_ is ValueCellFull!12501) mapDefault!41386)) b!1083124))

(assert (= start!95802 b!1083131))

(declare-fun b_lambda!17119 () Bool)

(assert (=> (not b_lambda!17119) (not b!1083132)))

(declare-fun t!32998 () Bool)

(declare-fun tb!7305 () Bool)

(assert (=> (and start!95802 (= defaultEntry!882 defaultEntry!882) t!32998) tb!7305))

(declare-fun result!15121 () Bool)

(assert (=> tb!7305 (= result!15121 tp_is_empty!26421)))

(assert (=> b!1083132 t!32998))

(declare-fun b_and!35533 () Bool)

(assert (= b_and!35531 (and (=> t!32998 result!15121) b_and!35533)))

(declare-fun m!1000931 () Bool)

(assert (=> b!1083128 m!1000931))

(declare-fun m!1000933 () Bool)

(assert (=> b!1083129 m!1000933))

(declare-fun m!1000935 () Bool)

(assert (=> b!1083123 m!1000935))

(declare-fun m!1000937 () Bool)

(assert (=> b!1083133 m!1000937))

(declare-fun m!1000939 () Bool)

(assert (=> b!1083132 m!1000939))

(declare-fun m!1000941 () Bool)

(assert (=> b!1083132 m!1000941))

(declare-fun m!1000943 () Bool)

(assert (=> b!1083132 m!1000943))

(declare-fun m!1000945 () Bool)

(assert (=> b!1083132 m!1000945))

(declare-fun m!1000947 () Bool)

(assert (=> b!1083132 m!1000947))

(declare-fun m!1000949 () Bool)

(assert (=> b!1083132 m!1000949))

(declare-fun m!1000951 () Bool)

(assert (=> b!1083132 m!1000951))

(declare-fun m!1000953 () Bool)

(assert (=> b!1083132 m!1000953))

(declare-fun m!1000955 () Bool)

(assert (=> mapNonEmpty!41386 m!1000955))

(declare-fun m!1000957 () Bool)

(assert (=> b!1083134 m!1000957))

(declare-fun m!1000959 () Bool)

(assert (=> start!95802 m!1000959))

(declare-fun m!1000961 () Bool)

(assert (=> start!95802 m!1000961))

(declare-fun m!1000963 () Bool)

(assert (=> start!95802 m!1000963))

(declare-fun m!1000965 () Bool)

(assert (=> b!1083130 m!1000965))

(declare-fun m!1000967 () Bool)

(assert (=> b!1083130 m!1000967))

(check-sat (not b_next!22419) (not b!1083129) (not b!1083130) (not start!95802) (not b!1083123) (not b!1083132) (not b_lambda!17119) b_and!35533 (not b!1083134) tp_is_empty!26421 (not mapNonEmpty!41386) (not b!1083128))
(check-sat b_and!35533 (not b_next!22419))
