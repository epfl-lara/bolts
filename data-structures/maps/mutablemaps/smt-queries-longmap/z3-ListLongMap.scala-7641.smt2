; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96204 () Bool)

(assert start!96204)

(declare-fun b_free!22821 () Bool)

(declare-fun b_next!22821 () Bool)

(assert (=> start!96204 (= b_free!22821 (not b_next!22821))))

(declare-fun tp!80313 () Bool)

(declare-fun b_and!36335 () Bool)

(assert (=> start!96204 (= tp!80313 b_and!36335)))

(declare-fun b!1091761 () Bool)

(declare-fun res!728544 () Bool)

(declare-fun e!623555 () Bool)

(assert (=> b!1091761 (=> (not res!728544) (not e!623555))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70530 0))(
  ( (array!70531 (arr!33935 (Array (_ BitVec 32) (_ BitVec 64))) (size!34472 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70530)

(assert (=> b!1091761 (= res!728544 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34472 _keys!1070))))))

(declare-fun b!1091762 () Bool)

(declare-fun res!728541 () Bool)

(declare-fun e!623557 () Bool)

(assert (=> b!1091762 (=> (not res!728541) (not e!623557))))

(declare-fun lt!487739 () array!70530)

(declare-datatypes ((List!23843 0))(
  ( (Nil!23840) (Cons!23839 (h!25048 (_ BitVec 64)) (t!33729 List!23843)) )
))
(declare-fun arrayNoDuplicates!0 (array!70530 (_ BitVec 32) List!23843) Bool)

(assert (=> b!1091762 (= res!728541 (arrayNoDuplicates!0 lt!487739 #b00000000000000000000000000000000 Nil!23840))))

(declare-fun mapNonEmpty!41989 () Bool)

(declare-fun mapRes!41989 () Bool)

(declare-fun tp!80312 () Bool)

(declare-fun e!623560 () Bool)

(assert (=> mapNonEmpty!41989 (= mapRes!41989 (and tp!80312 e!623560))))

(declare-datatypes ((V!40891 0))(
  ( (V!40892 (val!13468 Int)) )
))
(declare-datatypes ((ValueCell!12702 0))(
  ( (ValueCellFull!12702 (v!16090 V!40891)) (EmptyCell!12702) )
))
(declare-datatypes ((array!70532 0))(
  ( (array!70533 (arr!33936 (Array (_ BitVec 32) ValueCell!12702)) (size!34473 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70532)

(declare-fun mapKey!41989 () (_ BitVec 32))

(declare-fun mapRest!41989 () (Array (_ BitVec 32) ValueCell!12702))

(declare-fun mapValue!41989 () ValueCell!12702)

(assert (=> mapNonEmpty!41989 (= (arr!33936 _values!874) (store mapRest!41989 mapKey!41989 mapValue!41989))))

(declare-fun b!1091763 () Bool)

(declare-fun res!728548 () Bool)

(assert (=> b!1091763 (=> (not res!728548) (not e!623555))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091763 (= res!728548 (and (= (size!34473 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34472 _keys!1070) (size!34473 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091764 () Bool)

(declare-fun e!623559 () Bool)

(declare-fun tp_is_empty!26823 () Bool)

(assert (=> b!1091764 (= e!623559 tp_is_empty!26823)))

(declare-fun b!1091765 () Bool)

(declare-fun e!623553 () Bool)

(assert (=> b!1091765 (= e!623553 (and e!623559 mapRes!41989))))

(declare-fun condMapEmpty!41989 () Bool)

(declare-fun mapDefault!41989 () ValueCell!12702)

(assert (=> b!1091765 (= condMapEmpty!41989 (= (arr!33936 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12702)) mapDefault!41989)))))

(declare-fun b!1091766 () Bool)

(declare-fun res!728543 () Bool)

(assert (=> b!1091766 (=> (not res!728543) (not e!623555))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1091766 (= res!728543 (= (select (arr!33935 _keys!1070) i!650) k0!904))))

(declare-fun res!728546 () Bool)

(assert (=> start!96204 (=> (not res!728546) (not e!623555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96204 (= res!728546 (validMask!0 mask!1414))))

(assert (=> start!96204 e!623555))

(assert (=> start!96204 tp!80313))

(assert (=> start!96204 true))

(assert (=> start!96204 tp_is_empty!26823))

(declare-fun array_inv!26020 (array!70530) Bool)

(assert (=> start!96204 (array_inv!26020 _keys!1070)))

(declare-fun array_inv!26021 (array!70532) Bool)

(assert (=> start!96204 (and (array_inv!26021 _values!874) e!623553)))

(declare-fun b!1091767 () Bool)

(declare-fun res!728540 () Bool)

(assert (=> b!1091767 (=> (not res!728540) (not e!623555))))

(assert (=> b!1091767 (= res!728540 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23840))))

(declare-fun mapIsEmpty!41989 () Bool)

(assert (=> mapIsEmpty!41989 mapRes!41989))

(declare-fun b!1091768 () Bool)

(declare-fun res!728542 () Bool)

(assert (=> b!1091768 (=> (not res!728542) (not e!623555))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70530 (_ BitVec 32)) Bool)

(assert (=> b!1091768 (= res!728542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091769 () Bool)

(declare-fun e!623554 () Bool)

(assert (=> b!1091769 (= e!623557 (not e!623554))))

(declare-fun res!728545 () Bool)

(assert (=> b!1091769 (=> res!728545 e!623554)))

(assert (=> b!1091769 (= res!728545 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40891)

(declare-datatypes ((tuple2!17204 0))(
  ( (tuple2!17205 (_1!8612 (_ BitVec 64)) (_2!8612 V!40891)) )
))
(declare-datatypes ((List!23844 0))(
  ( (Nil!23841) (Cons!23840 (h!25049 tuple2!17204) (t!33730 List!23844)) )
))
(declare-datatypes ((ListLongMap!15185 0))(
  ( (ListLongMap!15186 (toList!7608 List!23844)) )
))
(declare-fun lt!487727 () ListLongMap!15185)

(declare-fun zeroValue!831 () V!40891)

(declare-fun getCurrentListMap!4344 (array!70530 array!70532 (_ BitVec 32) (_ BitVec 32) V!40891 V!40891 (_ BitVec 32) Int) ListLongMap!15185)

(assert (=> b!1091769 (= lt!487727 (getCurrentListMap!4344 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487733 () ListLongMap!15185)

(declare-fun lt!487730 () array!70532)

(assert (=> b!1091769 (= lt!487733 (getCurrentListMap!4344 lt!487739 lt!487730 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487732 () ListLongMap!15185)

(declare-fun lt!487738 () ListLongMap!15185)

(assert (=> b!1091769 (and (= lt!487732 lt!487738) (= lt!487738 lt!487732))))

(declare-fun lt!487731 () ListLongMap!15185)

(declare-fun -!885 (ListLongMap!15185 (_ BitVec 64)) ListLongMap!15185)

(assert (=> b!1091769 (= lt!487738 (-!885 lt!487731 k0!904))))

(declare-datatypes ((Unit!35885 0))(
  ( (Unit!35886) )
))
(declare-fun lt!487735 () Unit!35885)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!150 (array!70530 array!70532 (_ BitVec 32) (_ BitVec 32) V!40891 V!40891 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35885)

(assert (=> b!1091769 (= lt!487735 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!150 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4096 (array!70530 array!70532 (_ BitVec 32) (_ BitVec 32) V!40891 V!40891 (_ BitVec 32) Int) ListLongMap!15185)

(assert (=> b!1091769 (= lt!487732 (getCurrentListMapNoExtraKeys!4096 lt!487739 lt!487730 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2232 (Int (_ BitVec 64)) V!40891)

(assert (=> b!1091769 (= lt!487730 (array!70533 (store (arr!33936 _values!874) i!650 (ValueCellFull!12702 (dynLambda!2232 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34473 _values!874)))))

(assert (=> b!1091769 (= lt!487731 (getCurrentListMapNoExtraKeys!4096 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70530 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091769 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!487737 () Unit!35885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70530 (_ BitVec 64) (_ BitVec 32)) Unit!35885)

(assert (=> b!1091769 (= lt!487737 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1091770 () Bool)

(assert (=> b!1091770 (= e!623555 e!623557)))

(declare-fun res!728547 () Bool)

(assert (=> b!1091770 (=> (not res!728547) (not e!623557))))

(assert (=> b!1091770 (= res!728547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487739 mask!1414))))

(assert (=> b!1091770 (= lt!487739 (array!70531 (store (arr!33935 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34472 _keys!1070)))))

(declare-fun b!1091771 () Bool)

(assert (=> b!1091771 (= e!623560 tp_is_empty!26823)))

(declare-fun b!1091772 () Bool)

(declare-fun e!623558 () Bool)

(assert (=> b!1091772 (= e!623554 e!623558)))

(declare-fun res!728549 () Bool)

(assert (=> b!1091772 (=> res!728549 e!623558)))

(assert (=> b!1091772 (= res!728549 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!487734 () ListLongMap!15185)

(assert (=> b!1091772 (= lt!487727 lt!487734)))

(declare-fun lt!487728 () tuple2!17204)

(declare-fun +!3311 (ListLongMap!15185 tuple2!17204) ListLongMap!15185)

(assert (=> b!1091772 (= lt!487734 (+!3311 lt!487731 lt!487728))))

(declare-fun lt!487736 () ListLongMap!15185)

(assert (=> b!1091772 (= lt!487733 lt!487736)))

(assert (=> b!1091772 (= lt!487736 (+!3311 lt!487738 lt!487728))))

(assert (=> b!1091772 (= lt!487733 (+!3311 lt!487732 lt!487728))))

(assert (=> b!1091772 (= lt!487728 (tuple2!17205 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091773 () Bool)

(declare-fun res!728539 () Bool)

(assert (=> b!1091773 (=> (not res!728539) (not e!623555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091773 (= res!728539 (validKeyInArray!0 k0!904))))

(declare-fun b!1091774 () Bool)

(assert (=> b!1091774 (= e!623558 true)))

(assert (=> b!1091774 (= (-!885 lt!487734 k0!904) lt!487736)))

(declare-fun lt!487729 () Unit!35885)

(declare-fun addRemoveCommutativeForDiffKeys!113 (ListLongMap!15185 (_ BitVec 64) V!40891 (_ BitVec 64)) Unit!35885)

(assert (=> b!1091774 (= lt!487729 (addRemoveCommutativeForDiffKeys!113 lt!487731 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(assert (= (and start!96204 res!728546) b!1091763))

(assert (= (and b!1091763 res!728548) b!1091768))

(assert (= (and b!1091768 res!728542) b!1091767))

(assert (= (and b!1091767 res!728540) b!1091761))

(assert (= (and b!1091761 res!728544) b!1091773))

(assert (= (and b!1091773 res!728539) b!1091766))

(assert (= (and b!1091766 res!728543) b!1091770))

(assert (= (and b!1091770 res!728547) b!1091762))

(assert (= (and b!1091762 res!728541) b!1091769))

(assert (= (and b!1091769 (not res!728545)) b!1091772))

(assert (= (and b!1091772 (not res!728549)) b!1091774))

(assert (= (and b!1091765 condMapEmpty!41989) mapIsEmpty!41989))

(assert (= (and b!1091765 (not condMapEmpty!41989)) mapNonEmpty!41989))

(get-info :version)

(assert (= (and mapNonEmpty!41989 ((_ is ValueCellFull!12702) mapValue!41989)) b!1091771))

(assert (= (and b!1091765 ((_ is ValueCellFull!12702) mapDefault!41989)) b!1091764))

(assert (= start!96204 b!1091765))

(declare-fun b_lambda!17521 () Bool)

(assert (=> (not b_lambda!17521) (not b!1091769)))

(declare-fun t!33728 () Bool)

(declare-fun tb!7707 () Bool)

(assert (=> (and start!96204 (= defaultEntry!882 defaultEntry!882) t!33728) tb!7707))

(declare-fun result!15925 () Bool)

(assert (=> tb!7707 (= result!15925 tp_is_empty!26823)))

(assert (=> b!1091769 t!33728))

(declare-fun b_and!36337 () Bool)

(assert (= b_and!36335 (and (=> t!33728 result!15925) b_and!36337)))

(declare-fun m!1011553 () Bool)

(assert (=> b!1091772 m!1011553))

(declare-fun m!1011555 () Bool)

(assert (=> b!1091772 m!1011555))

(declare-fun m!1011557 () Bool)

(assert (=> b!1091772 m!1011557))

(declare-fun m!1011559 () Bool)

(assert (=> b!1091767 m!1011559))

(declare-fun m!1011561 () Bool)

(assert (=> b!1091768 m!1011561))

(declare-fun m!1011563 () Bool)

(assert (=> b!1091769 m!1011563))

(declare-fun m!1011565 () Bool)

(assert (=> b!1091769 m!1011565))

(declare-fun m!1011567 () Bool)

(assert (=> b!1091769 m!1011567))

(declare-fun m!1011569 () Bool)

(assert (=> b!1091769 m!1011569))

(declare-fun m!1011571 () Bool)

(assert (=> b!1091769 m!1011571))

(declare-fun m!1011573 () Bool)

(assert (=> b!1091769 m!1011573))

(declare-fun m!1011575 () Bool)

(assert (=> b!1091769 m!1011575))

(declare-fun m!1011577 () Bool)

(assert (=> b!1091769 m!1011577))

(declare-fun m!1011579 () Bool)

(assert (=> b!1091769 m!1011579))

(declare-fun m!1011581 () Bool)

(assert (=> b!1091769 m!1011581))

(declare-fun m!1011583 () Bool)

(assert (=> b!1091773 m!1011583))

(declare-fun m!1011585 () Bool)

(assert (=> b!1091762 m!1011585))

(declare-fun m!1011587 () Bool)

(assert (=> b!1091774 m!1011587))

(declare-fun m!1011589 () Bool)

(assert (=> b!1091774 m!1011589))

(declare-fun m!1011591 () Bool)

(assert (=> mapNonEmpty!41989 m!1011591))

(declare-fun m!1011593 () Bool)

(assert (=> b!1091766 m!1011593))

(declare-fun m!1011595 () Bool)

(assert (=> start!96204 m!1011595))

(declare-fun m!1011597 () Bool)

(assert (=> start!96204 m!1011597))

(declare-fun m!1011599 () Bool)

(assert (=> start!96204 m!1011599))

(declare-fun m!1011601 () Bool)

(assert (=> b!1091770 m!1011601))

(declare-fun m!1011603 () Bool)

(assert (=> b!1091770 m!1011603))

(check-sat (not b!1091773) (not b_next!22821) (not b!1091767) (not b!1091772) (not b!1091770) (not start!96204) tp_is_empty!26823 b_and!36337 (not b!1091774) (not b!1091769) (not b!1091762) (not b!1091768) (not mapNonEmpty!41989) (not b_lambda!17521))
(check-sat b_and!36337 (not b_next!22821))
