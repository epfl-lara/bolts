; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95790 () Bool)

(assert start!95790)

(declare-fun b_free!22407 () Bool)

(declare-fun b_next!22407 () Bool)

(assert (=> start!95790 (= b_free!22407 (not b_next!22407))))

(declare-fun tp!79070 () Bool)

(declare-fun b_and!35507 () Bool)

(assert (=> start!95790 (= tp!79070 b_and!35507)))

(declare-fun b!1082895 () Bool)

(declare-fun res!721951 () Bool)

(declare-fun e!618854 () Bool)

(assert (=> b!1082895 (=> (not res!721951) (not e!618854))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69720 0))(
  ( (array!69721 (arr!33530 (Array (_ BitVec 32) (_ BitVec 64))) (size!34067 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69720)

(declare-datatypes ((V!40339 0))(
  ( (V!40340 (val!13261 Int)) )
))
(declare-datatypes ((ValueCell!12495 0))(
  ( (ValueCellFull!12495 (v!15883 V!40339)) (EmptyCell!12495) )
))
(declare-datatypes ((array!69722 0))(
  ( (array!69723 (arr!33531 (Array (_ BitVec 32) ValueCell!12495)) (size!34068 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69722)

(assert (=> b!1082895 (= res!721951 (and (= (size!34068 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34067 _keys!1070) (size!34068 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1082896 () Bool)

(declare-fun res!721957 () Bool)

(assert (=> b!1082896 (=> (not res!721957) (not e!618854))))

(declare-datatypes ((List!23505 0))(
  ( (Nil!23502) (Cons!23501 (h!24710 (_ BitVec 64)) (t!32977 List!23505)) )
))
(declare-fun arrayNoDuplicates!0 (array!69720 (_ BitVec 32) List!23505) Bool)

(assert (=> b!1082896 (= res!721957 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23502))))

(declare-fun b!1082897 () Bool)

(declare-fun res!721955 () Bool)

(declare-fun e!618857 () Bool)

(assert (=> b!1082897 (=> (not res!721955) (not e!618857))))

(declare-fun lt!479822 () array!69720)

(assert (=> b!1082897 (= res!721955 (arrayNoDuplicates!0 lt!479822 #b00000000000000000000000000000000 Nil!23502))))

(declare-fun b!1082898 () Bool)

(declare-fun res!721952 () Bool)

(assert (=> b!1082898 (=> (not res!721952) (not e!618854))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082898 (= res!721952 (validKeyInArray!0 k0!904))))

(declare-fun mapIsEmpty!41368 () Bool)

(declare-fun mapRes!41368 () Bool)

(assert (=> mapIsEmpty!41368 mapRes!41368))

(declare-fun mapNonEmpty!41368 () Bool)

(declare-fun tp!79071 () Bool)

(declare-fun e!618858 () Bool)

(assert (=> mapNonEmpty!41368 (= mapRes!41368 (and tp!79071 e!618858))))

(declare-fun mapValue!41368 () ValueCell!12495)

(declare-fun mapKey!41368 () (_ BitVec 32))

(declare-fun mapRest!41368 () (Array (_ BitVec 32) ValueCell!12495))

(assert (=> mapNonEmpty!41368 (= (arr!33531 _values!874) (store mapRest!41368 mapKey!41368 mapValue!41368))))

(declare-fun res!721958 () Bool)

(assert (=> start!95790 (=> (not res!721958) (not e!618854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95790 (= res!721958 (validMask!0 mask!1414))))

(assert (=> start!95790 e!618854))

(assert (=> start!95790 tp!79070))

(assert (=> start!95790 true))

(declare-fun tp_is_empty!26409 () Bool)

(assert (=> start!95790 tp_is_empty!26409))

(declare-fun array_inv!25738 (array!69720) Bool)

(assert (=> start!95790 (array_inv!25738 _keys!1070)))

(declare-fun e!618855 () Bool)

(declare-fun array_inv!25739 (array!69722) Bool)

(assert (=> start!95790 (and (array_inv!25739 _values!874) e!618855)))

(declare-fun b!1082899 () Bool)

(assert (=> b!1082899 (= e!618857 (not true))))

(declare-datatypes ((tuple2!16870 0))(
  ( (tuple2!16871 (_1!8445 (_ BitVec 64)) (_2!8445 V!40339)) )
))
(declare-datatypes ((List!23506 0))(
  ( (Nil!23503) (Cons!23502 (h!24711 tuple2!16870) (t!32978 List!23506)) )
))
(declare-datatypes ((ListLongMap!14851 0))(
  ( (ListLongMap!14852 (toList!7441 List!23506)) )
))
(declare-fun lt!479819 () ListLongMap!14851)

(declare-fun lt!479817 () ListLongMap!14851)

(assert (=> b!1082899 (and (= lt!479819 lt!479817) (= lt!479817 lt!479819))))

(declare-fun lt!479818 () ListLongMap!14851)

(declare-fun -!723 (ListLongMap!14851 (_ BitVec 64)) ListLongMap!14851)

(assert (=> b!1082899 (= lt!479817 (-!723 lt!479818 k0!904))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40339)

(declare-fun i!650 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40339)

(declare-datatypes ((Unit!35561 0))(
  ( (Unit!35562) )
))
(declare-fun lt!479821 () Unit!35561)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!6 (array!69720 array!69722 (_ BitVec 32) (_ BitVec 32) V!40339 V!40339 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35561)

(assert (=> b!1082899 (= lt!479821 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!6 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3952 (array!69720 array!69722 (_ BitVec 32) (_ BitVec 32) V!40339 V!40339 (_ BitVec 32) Int) ListLongMap!14851)

(declare-fun dynLambda!2088 (Int (_ BitVec 64)) V!40339)

(assert (=> b!1082899 (= lt!479819 (getCurrentListMapNoExtraKeys!3952 lt!479822 (array!69723 (store (arr!33531 _values!874) i!650 (ValueCellFull!12495 (dynLambda!2088 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34068 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1082899 (= lt!479818 (getCurrentListMapNoExtraKeys!3952 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082899 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!479820 () Unit!35561)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69720 (_ BitVec 64) (_ BitVec 32)) Unit!35561)

(assert (=> b!1082899 (= lt!479820 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1082900 () Bool)

(declare-fun e!618859 () Bool)

(assert (=> b!1082900 (= e!618859 tp_is_empty!26409)))

(declare-fun b!1082901 () Bool)

(assert (=> b!1082901 (= e!618855 (and e!618859 mapRes!41368))))

(declare-fun condMapEmpty!41368 () Bool)

(declare-fun mapDefault!41368 () ValueCell!12495)

(assert (=> b!1082901 (= condMapEmpty!41368 (= (arr!33531 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12495)) mapDefault!41368)))))

(declare-fun b!1082902 () Bool)

(declare-fun res!721954 () Bool)

(assert (=> b!1082902 (=> (not res!721954) (not e!618854))))

(assert (=> b!1082902 (= res!721954 (= (select (arr!33530 _keys!1070) i!650) k0!904))))

(declare-fun b!1082903 () Bool)

(declare-fun res!721956 () Bool)

(assert (=> b!1082903 (=> (not res!721956) (not e!618854))))

(assert (=> b!1082903 (= res!721956 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34067 _keys!1070))))))

(declare-fun b!1082904 () Bool)

(assert (=> b!1082904 (= e!618854 e!618857)))

(declare-fun res!721950 () Bool)

(assert (=> b!1082904 (=> (not res!721950) (not e!618857))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69720 (_ BitVec 32)) Bool)

(assert (=> b!1082904 (= res!721950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479822 mask!1414))))

(assert (=> b!1082904 (= lt!479822 (array!69721 (store (arr!33530 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34067 _keys!1070)))))

(declare-fun b!1082905 () Bool)

(assert (=> b!1082905 (= e!618858 tp_is_empty!26409)))

(declare-fun b!1082906 () Bool)

(declare-fun res!721953 () Bool)

(assert (=> b!1082906 (=> (not res!721953) (not e!618854))))

(assert (=> b!1082906 (= res!721953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!95790 res!721958) b!1082895))

(assert (= (and b!1082895 res!721951) b!1082906))

(assert (= (and b!1082906 res!721953) b!1082896))

(assert (= (and b!1082896 res!721957) b!1082903))

(assert (= (and b!1082903 res!721956) b!1082898))

(assert (= (and b!1082898 res!721952) b!1082902))

(assert (= (and b!1082902 res!721954) b!1082904))

(assert (= (and b!1082904 res!721950) b!1082897))

(assert (= (and b!1082897 res!721955) b!1082899))

(assert (= (and b!1082901 condMapEmpty!41368) mapIsEmpty!41368))

(assert (= (and b!1082901 (not condMapEmpty!41368)) mapNonEmpty!41368))

(get-info :version)

(assert (= (and mapNonEmpty!41368 ((_ is ValueCellFull!12495) mapValue!41368)) b!1082905))

(assert (= (and b!1082901 ((_ is ValueCellFull!12495) mapDefault!41368)) b!1082900))

(assert (= start!95790 b!1082901))

(declare-fun b_lambda!17107 () Bool)

(assert (=> (not b_lambda!17107) (not b!1082899)))

(declare-fun t!32976 () Bool)

(declare-fun tb!7293 () Bool)

(assert (=> (and start!95790 (= defaultEntry!882 defaultEntry!882) t!32976) tb!7293))

(declare-fun result!15097 () Bool)

(assert (=> tb!7293 (= result!15097 tp_is_empty!26409)))

(assert (=> b!1082899 t!32976))

(declare-fun b_and!35509 () Bool)

(assert (= b_and!35507 (and (=> t!32976 result!15097) b_and!35509)))

(declare-fun m!1000703 () Bool)

(assert (=> mapNonEmpty!41368 m!1000703))

(declare-fun m!1000705 () Bool)

(assert (=> b!1082898 m!1000705))

(declare-fun m!1000707 () Bool)

(assert (=> b!1082896 m!1000707))

(declare-fun m!1000709 () Bool)

(assert (=> b!1082904 m!1000709))

(declare-fun m!1000711 () Bool)

(assert (=> b!1082904 m!1000711))

(declare-fun m!1000713 () Bool)

(assert (=> b!1082906 m!1000713))

(declare-fun m!1000715 () Bool)

(assert (=> b!1082899 m!1000715))

(declare-fun m!1000717 () Bool)

(assert (=> b!1082899 m!1000717))

(declare-fun m!1000719 () Bool)

(assert (=> b!1082899 m!1000719))

(declare-fun m!1000721 () Bool)

(assert (=> b!1082899 m!1000721))

(declare-fun m!1000723 () Bool)

(assert (=> b!1082899 m!1000723))

(declare-fun m!1000725 () Bool)

(assert (=> b!1082899 m!1000725))

(declare-fun m!1000727 () Bool)

(assert (=> b!1082899 m!1000727))

(declare-fun m!1000729 () Bool)

(assert (=> b!1082899 m!1000729))

(declare-fun m!1000731 () Bool)

(assert (=> b!1082902 m!1000731))

(declare-fun m!1000733 () Bool)

(assert (=> start!95790 m!1000733))

(declare-fun m!1000735 () Bool)

(assert (=> start!95790 m!1000735))

(declare-fun m!1000737 () Bool)

(assert (=> start!95790 m!1000737))

(declare-fun m!1000739 () Bool)

(assert (=> b!1082897 m!1000739))

(check-sat (not b!1082899) b_and!35509 (not b!1082906) (not b!1082898) tp_is_empty!26409 (not b!1082904) (not mapNonEmpty!41368) (not b!1082896) (not start!95790) (not b_next!22407) (not b_lambda!17107) (not b!1082897))
(check-sat b_and!35509 (not b_next!22407))
