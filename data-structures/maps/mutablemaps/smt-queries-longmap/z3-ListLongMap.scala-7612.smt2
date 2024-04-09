; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96030 () Bool)

(assert start!96030)

(declare-fun b_free!22647 () Bool)

(declare-fun b_next!22647 () Bool)

(assert (=> start!96030 (= b_free!22647 (not b_next!22647))))

(declare-fun tp!79790 () Bool)

(declare-fun b_and!35987 () Bool)

(assert (=> start!96030 (= tp!79790 b_and!35987)))

(declare-fun b!1087924 () Bool)

(declare-fun res!725662 () Bool)

(declare-fun e!621468 () Bool)

(assert (=> b!1087924 (=> (not res!725662) (not e!621468))))

(declare-datatypes ((array!70190 0))(
  ( (array!70191 (arr!33765 (Array (_ BitVec 32) (_ BitVec 64))) (size!34302 (_ BitVec 32))) )
))
(declare-fun lt!484372 () array!70190)

(declare-datatypes ((List!23695 0))(
  ( (Nil!23692) (Cons!23691 (h!24900 (_ BitVec 64)) (t!33407 List!23695)) )
))
(declare-fun arrayNoDuplicates!0 (array!70190 (_ BitVec 32) List!23695) Bool)

(assert (=> b!1087924 (= res!725662 (arrayNoDuplicates!0 lt!484372 #b00000000000000000000000000000000 Nil!23692))))

(declare-fun b!1087925 () Bool)

(declare-fun res!725667 () Bool)

(declare-fun e!621472 () Bool)

(assert (=> b!1087925 (=> (not res!725667) (not e!621472))))

(declare-fun _keys!1070 () array!70190)

(assert (=> b!1087925 (= res!725667 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23692))))

(declare-fun b!1087926 () Bool)

(declare-fun e!621466 () Bool)

(assert (=> b!1087926 (= e!621468 (not e!621466))))

(declare-fun res!725666 () Bool)

(assert (=> b!1087926 (=> res!725666 e!621466)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087926 (= res!725666 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40659 0))(
  ( (V!40660 (val!13381 Int)) )
))
(declare-fun minValue!831 () V!40659)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((tuple2!17054 0))(
  ( (tuple2!17055 (_1!8537 (_ BitVec 64)) (_2!8537 V!40659)) )
))
(declare-datatypes ((List!23696 0))(
  ( (Nil!23693) (Cons!23692 (h!24901 tuple2!17054) (t!33408 List!23696)) )
))
(declare-datatypes ((ListLongMap!15035 0))(
  ( (ListLongMap!15036 (toList!7533 List!23696)) )
))
(declare-fun lt!484362 () ListLongMap!15035)

(declare-fun zeroValue!831 () V!40659)

(declare-datatypes ((ValueCell!12615 0))(
  ( (ValueCellFull!12615 (v!16003 V!40659)) (EmptyCell!12615) )
))
(declare-datatypes ((array!70192 0))(
  ( (array!70193 (arr!33766 (Array (_ BitVec 32) ValueCell!12615)) (size!34303 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70192)

(declare-fun getCurrentListMap!4284 (array!70190 array!70192 (_ BitVec 32) (_ BitVec 32) V!40659 V!40659 (_ BitVec 32) Int) ListLongMap!15035)

(assert (=> b!1087926 (= lt!484362 (getCurrentListMap!4284 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484370 () array!70192)

(declare-fun lt!484361 () ListLongMap!15035)

(assert (=> b!1087926 (= lt!484361 (getCurrentListMap!4284 lt!484372 lt!484370 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484373 () ListLongMap!15035)

(declare-fun lt!484363 () ListLongMap!15035)

(assert (=> b!1087926 (and (= lt!484373 lt!484363) (= lt!484363 lt!484373))))

(declare-fun lt!484368 () ListLongMap!15035)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun -!813 (ListLongMap!15035 (_ BitVec 64)) ListLongMap!15035)

(assert (=> b!1087926 (= lt!484363 (-!813 lt!484368 k0!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35741 0))(
  ( (Unit!35742) )
))
(declare-fun lt!484371 () Unit!35741)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!90 (array!70190 array!70192 (_ BitVec 32) (_ BitVec 32) V!40659 V!40659 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35741)

(assert (=> b!1087926 (= lt!484371 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!90 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4036 (array!70190 array!70192 (_ BitVec 32) (_ BitVec 32) V!40659 V!40659 (_ BitVec 32) Int) ListLongMap!15035)

(assert (=> b!1087926 (= lt!484373 (getCurrentListMapNoExtraKeys!4036 lt!484372 lt!484370 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2172 (Int (_ BitVec 64)) V!40659)

(assert (=> b!1087926 (= lt!484370 (array!70193 (store (arr!33766 _values!874) i!650 (ValueCellFull!12615 (dynLambda!2172 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34303 _values!874)))))

(assert (=> b!1087926 (= lt!484368 (getCurrentListMapNoExtraKeys!4036 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087926 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!484366 () Unit!35741)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70190 (_ BitVec 64) (_ BitVec 32)) Unit!35741)

(assert (=> b!1087926 (= lt!484366 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1087927 () Bool)

(declare-fun e!621467 () Bool)

(assert (=> b!1087927 (= e!621466 e!621467)))

(declare-fun res!725661 () Bool)

(assert (=> b!1087927 (=> res!725661 e!621467)))

(assert (=> b!1087927 (= res!725661 (= #b0000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!484369 () ListLongMap!15035)

(assert (=> b!1087927 (= lt!484361 lt!484369)))

(declare-fun lt!484364 () tuple2!17054)

(declare-fun +!3255 (ListLongMap!15035 tuple2!17054) ListLongMap!15035)

(assert (=> b!1087927 (= lt!484369 (+!3255 lt!484363 lt!484364))))

(declare-fun lt!484367 () ListLongMap!15035)

(assert (=> b!1087927 (= lt!484362 lt!484367)))

(assert (=> b!1087927 (= lt!484367 (+!3255 lt!484368 lt!484364))))

(assert (=> b!1087927 (= lt!484361 (+!3255 lt!484373 lt!484364))))

(assert (=> b!1087927 (= lt!484364 (tuple2!17055 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087928 () Bool)

(declare-fun res!725660 () Bool)

(assert (=> b!1087928 (=> (not res!725660) (not e!621472))))

(assert (=> b!1087928 (= res!725660 (= (select (arr!33765 _keys!1070) i!650) k0!904))))

(declare-fun b!1087929 () Bool)

(declare-fun e!621470 () Bool)

(declare-fun e!621471 () Bool)

(declare-fun mapRes!41728 () Bool)

(assert (=> b!1087929 (= e!621470 (and e!621471 mapRes!41728))))

(declare-fun condMapEmpty!41728 () Bool)

(declare-fun mapDefault!41728 () ValueCell!12615)

(assert (=> b!1087929 (= condMapEmpty!41728 (= (arr!33766 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12615)) mapDefault!41728)))))

(declare-fun b!1087930 () Bool)

(declare-fun res!725664 () Bool)

(assert (=> b!1087930 (=> (not res!725664) (not e!621472))))

(assert (=> b!1087930 (= res!725664 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34302 _keys!1070))))))

(declare-fun b!1087931 () Bool)

(declare-fun tp_is_empty!26649 () Bool)

(assert (=> b!1087931 (= e!621471 tp_is_empty!26649)))

(declare-fun mapNonEmpty!41728 () Bool)

(declare-fun tp!79791 () Bool)

(declare-fun e!621469 () Bool)

(assert (=> mapNonEmpty!41728 (= mapRes!41728 (and tp!79791 e!621469))))

(declare-fun mapRest!41728 () (Array (_ BitVec 32) ValueCell!12615))

(declare-fun mapKey!41728 () (_ BitVec 32))

(declare-fun mapValue!41728 () ValueCell!12615)

(assert (=> mapNonEmpty!41728 (= (arr!33766 _values!874) (store mapRest!41728 mapKey!41728 mapValue!41728))))

(declare-fun b!1087932 () Bool)

(assert (=> b!1087932 (= e!621469 tp_is_empty!26649)))

(declare-fun b!1087933 () Bool)

(declare-fun res!725663 () Bool)

(assert (=> b!1087933 (=> (not res!725663) (not e!621472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087933 (= res!725663 (validKeyInArray!0 k0!904))))

(declare-fun b!1087934 () Bool)

(declare-fun res!725669 () Bool)

(assert (=> b!1087934 (=> (not res!725669) (not e!621472))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70190 (_ BitVec 32)) Bool)

(assert (=> b!1087934 (= res!725669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087935 () Bool)

(declare-fun res!725665 () Bool)

(assert (=> b!1087935 (=> (not res!725665) (not e!621472))))

(assert (=> b!1087935 (= res!725665 (and (= (size!34303 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34302 _keys!1070) (size!34303 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087936 () Bool)

(assert (=> b!1087936 (= e!621472 e!621468)))

(declare-fun res!725659 () Bool)

(assert (=> b!1087936 (=> (not res!725659) (not e!621468))))

(assert (=> b!1087936 (= res!725659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484372 mask!1414))))

(assert (=> b!1087936 (= lt!484372 (array!70191 (store (arr!33765 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34302 _keys!1070)))))

(declare-fun mapIsEmpty!41728 () Bool)

(assert (=> mapIsEmpty!41728 mapRes!41728))

(declare-fun res!725668 () Bool)

(assert (=> start!96030 (=> (not res!725668) (not e!621472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96030 (= res!725668 (validMask!0 mask!1414))))

(assert (=> start!96030 e!621472))

(assert (=> start!96030 tp!79790))

(assert (=> start!96030 true))

(assert (=> start!96030 tp_is_empty!26649))

(declare-fun array_inv!25906 (array!70190) Bool)

(assert (=> start!96030 (array_inv!25906 _keys!1070)))

(declare-fun array_inv!25907 (array!70192) Bool)

(assert (=> start!96030 (and (array_inv!25907 _values!874) e!621470)))

(declare-fun b!1087937 () Bool)

(assert (=> b!1087937 (= e!621467 true)))

(assert (=> b!1087937 (= (-!813 lt!484367 k0!904) lt!484369)))

(declare-fun lt!484365 () Unit!35741)

(declare-fun addRemoveCommutativeForDiffKeys!52 (ListLongMap!15035 (_ BitVec 64) V!40659 (_ BitVec 64)) Unit!35741)

(assert (=> b!1087937 (= lt!484365 (addRemoveCommutativeForDiffKeys!52 lt!484368 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(assert (= (and start!96030 res!725668) b!1087935))

(assert (= (and b!1087935 res!725665) b!1087934))

(assert (= (and b!1087934 res!725669) b!1087925))

(assert (= (and b!1087925 res!725667) b!1087930))

(assert (= (and b!1087930 res!725664) b!1087933))

(assert (= (and b!1087933 res!725663) b!1087928))

(assert (= (and b!1087928 res!725660) b!1087936))

(assert (= (and b!1087936 res!725659) b!1087924))

(assert (= (and b!1087924 res!725662) b!1087926))

(assert (= (and b!1087926 (not res!725666)) b!1087927))

(assert (= (and b!1087927 (not res!725661)) b!1087937))

(assert (= (and b!1087929 condMapEmpty!41728) mapIsEmpty!41728))

(assert (= (and b!1087929 (not condMapEmpty!41728)) mapNonEmpty!41728))

(get-info :version)

(assert (= (and mapNonEmpty!41728 ((_ is ValueCellFull!12615) mapValue!41728)) b!1087932))

(assert (= (and b!1087929 ((_ is ValueCellFull!12615) mapDefault!41728)) b!1087931))

(assert (= start!96030 b!1087929))

(declare-fun b_lambda!17347 () Bool)

(assert (=> (not b_lambda!17347) (not b!1087926)))

(declare-fun t!33406 () Bool)

(declare-fun tb!7533 () Bool)

(assert (=> (and start!96030 (= defaultEntry!882 defaultEntry!882) t!33406) tb!7533))

(declare-fun result!15577 () Bool)

(assert (=> tb!7533 (= result!15577 tp_is_empty!26649)))

(assert (=> b!1087926 t!33406))

(declare-fun b_and!35989 () Bool)

(assert (= b_and!35987 (and (=> t!33406 result!15577) b_and!35989)))

(declare-fun m!1007041 () Bool)

(assert (=> b!1087937 m!1007041))

(declare-fun m!1007043 () Bool)

(assert (=> b!1087937 m!1007043))

(declare-fun m!1007045 () Bool)

(assert (=> start!96030 m!1007045))

(declare-fun m!1007047 () Bool)

(assert (=> start!96030 m!1007047))

(declare-fun m!1007049 () Bool)

(assert (=> start!96030 m!1007049))

(declare-fun m!1007051 () Bool)

(assert (=> mapNonEmpty!41728 m!1007051))

(declare-fun m!1007053 () Bool)

(assert (=> b!1087933 m!1007053))

(declare-fun m!1007055 () Bool)

(assert (=> b!1087927 m!1007055))

(declare-fun m!1007057 () Bool)

(assert (=> b!1087927 m!1007057))

(declare-fun m!1007059 () Bool)

(assert (=> b!1087927 m!1007059))

(declare-fun m!1007061 () Bool)

(assert (=> b!1087924 m!1007061))

(declare-fun m!1007063 () Bool)

(assert (=> b!1087936 m!1007063))

(declare-fun m!1007065 () Bool)

(assert (=> b!1087936 m!1007065))

(declare-fun m!1007067 () Bool)

(assert (=> b!1087934 m!1007067))

(declare-fun m!1007069 () Bool)

(assert (=> b!1087926 m!1007069))

(declare-fun m!1007071 () Bool)

(assert (=> b!1087926 m!1007071))

(declare-fun m!1007073 () Bool)

(assert (=> b!1087926 m!1007073))

(declare-fun m!1007075 () Bool)

(assert (=> b!1087926 m!1007075))

(declare-fun m!1007077 () Bool)

(assert (=> b!1087926 m!1007077))

(declare-fun m!1007079 () Bool)

(assert (=> b!1087926 m!1007079))

(declare-fun m!1007081 () Bool)

(assert (=> b!1087926 m!1007081))

(declare-fun m!1007083 () Bool)

(assert (=> b!1087926 m!1007083))

(declare-fun m!1007085 () Bool)

(assert (=> b!1087926 m!1007085))

(declare-fun m!1007087 () Bool)

(assert (=> b!1087926 m!1007087))

(declare-fun m!1007089 () Bool)

(assert (=> b!1087925 m!1007089))

(declare-fun m!1007091 () Bool)

(assert (=> b!1087928 m!1007091))

(check-sat (not b!1087925) tp_is_empty!26649 (not b!1087924) (not start!96030) (not b!1087926) (not mapNonEmpty!41728) (not b!1087933) (not b!1087937) (not b!1087936) (not b_next!22647) (not b_lambda!17347) (not b!1087927) (not b!1087934) b_and!35989)
(check-sat b_and!35989 (not b_next!22647))
