; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95916 () Bool)

(assert start!95916)

(declare-fun b_free!22533 () Bool)

(declare-fun b_next!22533 () Bool)

(assert (=> start!95916 (= b_free!22533 (not b_next!22533))))

(declare-fun tp!79449 () Bool)

(declare-fun b_and!35759 () Bool)

(assert (=> start!95916 (= tp!79449 b_and!35759)))

(declare-fun mapIsEmpty!41557 () Bool)

(declare-fun mapRes!41557 () Bool)

(assert (=> mapIsEmpty!41557 mapRes!41557))

(declare-fun b!1085407 () Bool)

(declare-fun e!620104 () Bool)

(declare-fun e!620101 () Bool)

(assert (=> b!1085407 (= e!620104 e!620101)))

(declare-fun res!723769 () Bool)

(assert (=> b!1085407 (=> (not res!723769) (not e!620101))))

(declare-datatypes ((array!69970 0))(
  ( (array!69971 (arr!33655 (Array (_ BitVec 32) (_ BitVec 64))) (size!34192 (_ BitVec 32))) )
))
(declare-fun lt!481687 () array!69970)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69970 (_ BitVec 32)) Bool)

(assert (=> b!1085407 (= res!723769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!481687 mask!1414))))

(declare-fun _keys!1070 () array!69970)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1085407 (= lt!481687 (array!69971 (store (arr!33655 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34192 _keys!1070)))))

(declare-fun b!1085408 () Bool)

(declare-fun e!620100 () Bool)

(declare-fun e!620098 () Bool)

(assert (=> b!1085408 (= e!620100 e!620098)))

(declare-fun res!723776 () Bool)

(assert (=> b!1085408 (=> res!723776 e!620098)))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1085408 (= res!723776 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-datatypes ((V!40507 0))(
  ( (V!40508 (val!13324 Int)) )
))
(declare-datatypes ((tuple2!16962 0))(
  ( (tuple2!16963 (_1!8491 (_ BitVec 64)) (_2!8491 V!40507)) )
))
(declare-datatypes ((List!23603 0))(
  ( (Nil!23600) (Cons!23599 (h!24808 tuple2!16962) (t!33201 List!23603)) )
))
(declare-datatypes ((ListLongMap!14943 0))(
  ( (ListLongMap!14944 (toList!7487 List!23603)) )
))
(declare-fun lt!481693 () ListLongMap!14943)

(declare-fun lt!481683 () ListLongMap!14943)

(assert (=> b!1085408 (= lt!481693 lt!481683)))

(declare-fun lt!481684 () ListLongMap!14943)

(declare-fun -!768 (ListLongMap!14943 (_ BitVec 64)) ListLongMap!14943)

(assert (=> b!1085408 (= lt!481693 (-!768 lt!481684 k0!904))))

(declare-fun lt!481696 () ListLongMap!14943)

(declare-fun zeroValue!831 () V!40507)

(declare-datatypes ((Unit!35651 0))(
  ( (Unit!35652) )
))
(declare-fun lt!481685 () Unit!35651)

(declare-fun addRemoveCommutativeForDiffKeys!14 (ListLongMap!14943 (_ BitVec 64) V!40507 (_ BitVec 64)) Unit!35651)

(assert (=> b!1085408 (= lt!481685 (addRemoveCommutativeForDiffKeys!14 lt!481696 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!481686 () ListLongMap!14943)

(declare-fun lt!481688 () tuple2!16962)

(declare-fun +!3218 (ListLongMap!14943 tuple2!16962) ListLongMap!14943)

(assert (=> b!1085408 (= lt!481686 (+!3218 lt!481683 lt!481688))))

(declare-fun lt!481681 () ListLongMap!14943)

(declare-fun lt!481692 () tuple2!16962)

(assert (=> b!1085408 (= lt!481683 (+!3218 lt!481681 lt!481692))))

(declare-fun lt!481682 () ListLongMap!14943)

(declare-fun lt!481689 () ListLongMap!14943)

(assert (=> b!1085408 (= lt!481682 lt!481689)))

(assert (=> b!1085408 (= lt!481689 (+!3218 lt!481684 lt!481688))))

(assert (=> b!1085408 (= lt!481684 (+!3218 lt!481696 lt!481692))))

(declare-fun lt!481690 () ListLongMap!14943)

(assert (=> b!1085408 (= lt!481686 (+!3218 (+!3218 lt!481690 lt!481692) lt!481688))))

(declare-fun minValue!831 () V!40507)

(assert (=> b!1085408 (= lt!481688 (tuple2!16963 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1085408 (= lt!481692 (tuple2!16963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1085409 () Bool)

(declare-fun res!723779 () Bool)

(assert (=> b!1085409 (=> (not res!723779) (not e!620104))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12558 0))(
  ( (ValueCellFull!12558 (v!15946 V!40507)) (EmptyCell!12558) )
))
(declare-datatypes ((array!69972 0))(
  ( (array!69973 (arr!33656 (Array (_ BitVec 32) ValueCell!12558)) (size!34193 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69972)

(assert (=> b!1085409 (= res!723779 (and (= (size!34193 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34192 _keys!1070) (size!34193 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1085410 () Bool)

(declare-fun res!723775 () Bool)

(assert (=> b!1085410 (=> (not res!723775) (not e!620104))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1085410 (= res!723775 (validKeyInArray!0 k0!904))))

(declare-fun b!1085411 () Bool)

(declare-fun res!723774 () Bool)

(assert (=> b!1085411 (=> (not res!723774) (not e!620104))))

(assert (=> b!1085411 (= res!723774 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1085412 () Bool)

(assert (=> b!1085412 (= e!620098 true)))

(assert (=> b!1085412 (= (-!768 lt!481689 k0!904) (+!3218 lt!481693 lt!481688))))

(declare-fun lt!481694 () Unit!35651)

(assert (=> b!1085412 (= lt!481694 (addRemoveCommutativeForDiffKeys!14 lt!481684 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1085413 () Bool)

(declare-fun res!723778 () Bool)

(assert (=> b!1085413 (=> (not res!723778) (not e!620104))))

(assert (=> b!1085413 (= res!723778 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34192 _keys!1070))))))

(declare-fun b!1085414 () Bool)

(declare-fun res!723777 () Bool)

(assert (=> b!1085414 (=> (not res!723777) (not e!620104))))

(assert (=> b!1085414 (= res!723777 (= (select (arr!33655 _keys!1070) i!650) k0!904))))

(declare-fun b!1085415 () Bool)

(declare-fun res!723771 () Bool)

(assert (=> b!1085415 (=> (not res!723771) (not e!620104))))

(declare-datatypes ((List!23604 0))(
  ( (Nil!23601) (Cons!23600 (h!24809 (_ BitVec 64)) (t!33202 List!23604)) )
))
(declare-fun arrayNoDuplicates!0 (array!69970 (_ BitVec 32) List!23604) Bool)

(assert (=> b!1085415 (= res!723771 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23601))))

(declare-fun b!1085416 () Bool)

(assert (=> b!1085416 (= e!620101 (not e!620100))))

(declare-fun res!723770 () Bool)

(assert (=> b!1085416 (=> res!723770 e!620100)))

(assert (=> b!1085416 (= res!723770 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun getCurrentListMap!4242 (array!69970 array!69972 (_ BitVec 32) (_ BitVec 32) V!40507 V!40507 (_ BitVec 32) Int) ListLongMap!14943)

(assert (=> b!1085416 (= lt!481682 (getCurrentListMap!4242 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!481691 () array!69972)

(assert (=> b!1085416 (= lt!481686 (getCurrentListMap!4242 lt!481687 lt!481691 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1085416 (and (= lt!481690 lt!481681) (= lt!481681 lt!481690))))

(assert (=> b!1085416 (= lt!481681 (-!768 lt!481696 k0!904))))

(declare-fun lt!481697 () Unit!35651)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!48 (array!69970 array!69972 (_ BitVec 32) (_ BitVec 32) V!40507 V!40507 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35651)

(assert (=> b!1085416 (= lt!481697 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!48 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!3994 (array!69970 array!69972 (_ BitVec 32) (_ BitVec 32) V!40507 V!40507 (_ BitVec 32) Int) ListLongMap!14943)

(assert (=> b!1085416 (= lt!481690 (getCurrentListMapNoExtraKeys!3994 lt!481687 lt!481691 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2130 (Int (_ BitVec 64)) V!40507)

(assert (=> b!1085416 (= lt!481691 (array!69973 (store (arr!33656 _values!874) i!650 (ValueCellFull!12558 (dynLambda!2130 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34193 _values!874)))))

(assert (=> b!1085416 (= lt!481696 (getCurrentListMapNoExtraKeys!3994 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69970 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1085416 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!481695 () Unit!35651)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69970 (_ BitVec 64) (_ BitVec 32)) Unit!35651)

(assert (=> b!1085416 (= lt!481695 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun mapNonEmpty!41557 () Bool)

(declare-fun tp!79448 () Bool)

(declare-fun e!620099 () Bool)

(assert (=> mapNonEmpty!41557 (= mapRes!41557 (and tp!79448 e!620099))))

(declare-fun mapKey!41557 () (_ BitVec 32))

(declare-fun mapValue!41557 () ValueCell!12558)

(declare-fun mapRest!41557 () (Array (_ BitVec 32) ValueCell!12558))

(assert (=> mapNonEmpty!41557 (= (arr!33656 _values!874) (store mapRest!41557 mapKey!41557 mapValue!41557))))

(declare-fun b!1085417 () Bool)

(declare-fun res!723772 () Bool)

(assert (=> b!1085417 (=> (not res!723772) (not e!620101))))

(assert (=> b!1085417 (= res!723772 (arrayNoDuplicates!0 lt!481687 #b00000000000000000000000000000000 Nil!23601))))

(declare-fun res!723773 () Bool)

(assert (=> start!95916 (=> (not res!723773) (not e!620104))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95916 (= res!723773 (validMask!0 mask!1414))))

(assert (=> start!95916 e!620104))

(assert (=> start!95916 tp!79449))

(assert (=> start!95916 true))

(declare-fun tp_is_empty!26535 () Bool)

(assert (=> start!95916 tp_is_empty!26535))

(declare-fun array_inv!25826 (array!69970) Bool)

(assert (=> start!95916 (array_inv!25826 _keys!1070)))

(declare-fun e!620097 () Bool)

(declare-fun array_inv!25827 (array!69972) Bool)

(assert (=> start!95916 (and (array_inv!25827 _values!874) e!620097)))

(declare-fun b!1085418 () Bool)

(assert (=> b!1085418 (= e!620099 tp_is_empty!26535)))

(declare-fun b!1085419 () Bool)

(declare-fun e!620103 () Bool)

(assert (=> b!1085419 (= e!620103 tp_is_empty!26535)))

(declare-fun b!1085420 () Bool)

(assert (=> b!1085420 (= e!620097 (and e!620103 mapRes!41557))))

(declare-fun condMapEmpty!41557 () Bool)

(declare-fun mapDefault!41557 () ValueCell!12558)

(assert (=> b!1085420 (= condMapEmpty!41557 (= (arr!33656 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12558)) mapDefault!41557)))))

(assert (= (and start!95916 res!723773) b!1085409))

(assert (= (and b!1085409 res!723779) b!1085411))

(assert (= (and b!1085411 res!723774) b!1085415))

(assert (= (and b!1085415 res!723771) b!1085413))

(assert (= (and b!1085413 res!723778) b!1085410))

(assert (= (and b!1085410 res!723775) b!1085414))

(assert (= (and b!1085414 res!723777) b!1085407))

(assert (= (and b!1085407 res!723769) b!1085417))

(assert (= (and b!1085417 res!723772) b!1085416))

(assert (= (and b!1085416 (not res!723770)) b!1085408))

(assert (= (and b!1085408 (not res!723776)) b!1085412))

(assert (= (and b!1085420 condMapEmpty!41557) mapIsEmpty!41557))

(assert (= (and b!1085420 (not condMapEmpty!41557)) mapNonEmpty!41557))

(get-info :version)

(assert (= (and mapNonEmpty!41557 ((_ is ValueCellFull!12558) mapValue!41557)) b!1085418))

(assert (= (and b!1085420 ((_ is ValueCellFull!12558) mapDefault!41557)) b!1085419))

(assert (= start!95916 b!1085420))

(declare-fun b_lambda!17233 () Bool)

(assert (=> (not b_lambda!17233) (not b!1085416)))

(declare-fun t!33200 () Bool)

(declare-fun tb!7419 () Bool)

(assert (=> (and start!95916 (= defaultEntry!882 defaultEntry!882) t!33200) tb!7419))

(declare-fun result!15349 () Bool)

(assert (=> tb!7419 (= result!15349 tp_is_empty!26535)))

(assert (=> b!1085416 t!33200))

(declare-fun b_and!35761 () Bool)

(assert (= b_and!35759 (and (=> t!33200 result!15349) b_and!35761)))

(declare-fun m!1003597 () Bool)

(assert (=> b!1085416 m!1003597))

(declare-fun m!1003599 () Bool)

(assert (=> b!1085416 m!1003599))

(declare-fun m!1003601 () Bool)

(assert (=> b!1085416 m!1003601))

(declare-fun m!1003603 () Bool)

(assert (=> b!1085416 m!1003603))

(declare-fun m!1003605 () Bool)

(assert (=> b!1085416 m!1003605))

(declare-fun m!1003607 () Bool)

(assert (=> b!1085416 m!1003607))

(declare-fun m!1003609 () Bool)

(assert (=> b!1085416 m!1003609))

(declare-fun m!1003611 () Bool)

(assert (=> b!1085416 m!1003611))

(declare-fun m!1003613 () Bool)

(assert (=> b!1085416 m!1003613))

(declare-fun m!1003615 () Bool)

(assert (=> b!1085416 m!1003615))

(declare-fun m!1003617 () Bool)

(assert (=> b!1085412 m!1003617))

(declare-fun m!1003619 () Bool)

(assert (=> b!1085412 m!1003619))

(declare-fun m!1003621 () Bool)

(assert (=> b!1085412 m!1003621))

(declare-fun m!1003623 () Bool)

(assert (=> b!1085411 m!1003623))

(declare-fun m!1003625 () Bool)

(assert (=> b!1085407 m!1003625))

(declare-fun m!1003627 () Bool)

(assert (=> b!1085407 m!1003627))

(declare-fun m!1003629 () Bool)

(assert (=> b!1085415 m!1003629))

(declare-fun m!1003631 () Bool)

(assert (=> start!95916 m!1003631))

(declare-fun m!1003633 () Bool)

(assert (=> start!95916 m!1003633))

(declare-fun m!1003635 () Bool)

(assert (=> start!95916 m!1003635))

(declare-fun m!1003637 () Bool)

(assert (=> b!1085410 m!1003637))

(declare-fun m!1003639 () Bool)

(assert (=> mapNonEmpty!41557 m!1003639))

(declare-fun m!1003641 () Bool)

(assert (=> b!1085408 m!1003641))

(declare-fun m!1003643 () Bool)

(assert (=> b!1085408 m!1003643))

(declare-fun m!1003645 () Bool)

(assert (=> b!1085408 m!1003645))

(declare-fun m!1003647 () Bool)

(assert (=> b!1085408 m!1003647))

(assert (=> b!1085408 m!1003645))

(declare-fun m!1003649 () Bool)

(assert (=> b!1085408 m!1003649))

(declare-fun m!1003651 () Bool)

(assert (=> b!1085408 m!1003651))

(declare-fun m!1003653 () Bool)

(assert (=> b!1085408 m!1003653))

(declare-fun m!1003655 () Bool)

(assert (=> b!1085408 m!1003655))

(declare-fun m!1003657 () Bool)

(assert (=> b!1085417 m!1003657))

(declare-fun m!1003659 () Bool)

(assert (=> b!1085414 m!1003659))

(check-sat (not b!1085415) (not b!1085416) (not start!95916) (not b!1085411) (not b!1085410) (not b!1085408) (not b!1085407) tp_is_empty!26535 (not b_lambda!17233) (not b!1085412) b_and!35761 (not mapNonEmpty!41557) (not b_next!22533) (not b!1085417))
(check-sat b_and!35761 (not b_next!22533))
