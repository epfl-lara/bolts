; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95946 () Bool)

(assert start!95946)

(declare-fun b_free!22563 () Bool)

(declare-fun b_next!22563 () Bool)

(assert (=> start!95946 (= b_free!22563 (not b_next!22563))))

(declare-fun tp!79539 () Bool)

(declare-fun b_and!35819 () Bool)

(assert (=> start!95946 (= tp!79539 b_and!35819)))

(declare-fun res!724268 () Bool)

(declare-fun e!620461 () Bool)

(assert (=> start!95946 (=> (not res!724268) (not e!620461))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95946 (= res!724268 (validMask!0 mask!1414))))

(assert (=> start!95946 e!620461))

(assert (=> start!95946 tp!79539))

(assert (=> start!95946 true))

(declare-fun tp_is_empty!26565 () Bool)

(assert (=> start!95946 tp_is_empty!26565))

(declare-datatypes ((array!70026 0))(
  ( (array!70027 (arr!33683 (Array (_ BitVec 32) (_ BitVec 64))) (size!34220 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70026)

(declare-fun array_inv!25842 (array!70026) Bool)

(assert (=> start!95946 (array_inv!25842 _keys!1070)))

(declare-datatypes ((V!40547 0))(
  ( (V!40548 (val!13339 Int)) )
))
(declare-datatypes ((ValueCell!12573 0))(
  ( (ValueCellFull!12573 (v!15961 V!40547)) (EmptyCell!12573) )
))
(declare-datatypes ((array!70028 0))(
  ( (array!70029 (arr!33684 (Array (_ BitVec 32) ValueCell!12573)) (size!34221 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70028)

(declare-fun e!620457 () Bool)

(declare-fun array_inv!25843 (array!70028) Bool)

(assert (=> start!95946 (and (array_inv!25843 _values!874) e!620457)))

(declare-fun b!1086067 () Bool)

(declare-fun e!620464 () Bool)

(assert (=> b!1086067 (= e!620464 tp_is_empty!26565)))

(declare-fun mapIsEmpty!41602 () Bool)

(declare-fun mapRes!41602 () Bool)

(assert (=> mapIsEmpty!41602 mapRes!41602))

(declare-fun b!1086068 () Bool)

(declare-fun res!724267 () Bool)

(assert (=> b!1086068 (=> (not res!724267) (not e!620461))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086068 (= res!724267 (validKeyInArray!0 k0!904))))

(declare-fun b!1086069 () Bool)

(declare-fun res!724269 () Bool)

(assert (=> b!1086069 (=> (not res!724269) (not e!620461))))

(declare-datatypes ((List!23622 0))(
  ( (Nil!23619) (Cons!23618 (h!24827 (_ BitVec 64)) (t!33250 List!23622)) )
))
(declare-fun arrayNoDuplicates!0 (array!70026 (_ BitVec 32) List!23622) Bool)

(assert (=> b!1086069 (= res!724269 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23619))))

(declare-fun b!1086070 () Bool)

(declare-fun res!724271 () Bool)

(assert (=> b!1086070 (=> (not res!724271) (not e!620461))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086070 (= res!724271 (= (select (arr!33683 _keys!1070) i!650) k0!904))))

(declare-fun b!1086071 () Bool)

(declare-fun e!620458 () Bool)

(assert (=> b!1086071 (= e!620461 e!620458)))

(declare-fun res!724270 () Bool)

(assert (=> b!1086071 (=> (not res!724270) (not e!620458))))

(declare-fun lt!482454 () array!70026)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70026 (_ BitVec 32)) Bool)

(assert (=> b!1086071 (= res!724270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482454 mask!1414))))

(assert (=> b!1086071 (= lt!482454 (array!70027 (store (arr!33683 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34220 _keys!1070)))))

(declare-fun b!1086072 () Bool)

(declare-fun e!620463 () Bool)

(assert (=> b!1086072 (= e!620458 (not e!620463))))

(declare-fun res!724272 () Bool)

(assert (=> b!1086072 (=> res!724272 e!620463)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086072 (= res!724272 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40547)

(declare-datatypes ((tuple2!16982 0))(
  ( (tuple2!16983 (_1!8501 (_ BitVec 64)) (_2!8501 V!40547)) )
))
(declare-datatypes ((List!23623 0))(
  ( (Nil!23620) (Cons!23619 (h!24828 tuple2!16982) (t!33251 List!23623)) )
))
(declare-datatypes ((ListLongMap!14963 0))(
  ( (ListLongMap!14964 (toList!7497 List!23623)) )
))
(declare-fun lt!482446 () ListLongMap!14963)

(declare-fun zeroValue!831 () V!40547)

(declare-fun getCurrentListMap!4252 (array!70026 array!70028 (_ BitVec 32) (_ BitVec 32) V!40547 V!40547 (_ BitVec 32) Int) ListLongMap!14963)

(assert (=> b!1086072 (= lt!482446 (getCurrentListMap!4252 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482462 () array!70028)

(declare-fun lt!482461 () ListLongMap!14963)

(assert (=> b!1086072 (= lt!482461 (getCurrentListMap!4252 lt!482454 lt!482462 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482452 () ListLongMap!14963)

(declare-fun lt!482448 () ListLongMap!14963)

(assert (=> b!1086072 (and (= lt!482452 lt!482448) (= lt!482448 lt!482452))))

(declare-fun lt!482459 () ListLongMap!14963)

(declare-fun -!778 (ListLongMap!14963 (_ BitVec 64)) ListLongMap!14963)

(assert (=> b!1086072 (= lt!482448 (-!778 lt!482459 k0!904))))

(declare-datatypes ((Unit!35671 0))(
  ( (Unit!35672) )
))
(declare-fun lt!482450 () Unit!35671)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!58 (array!70026 array!70028 (_ BitVec 32) (_ BitVec 32) V!40547 V!40547 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35671)

(assert (=> b!1086072 (= lt!482450 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!58 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4004 (array!70026 array!70028 (_ BitVec 32) (_ BitVec 32) V!40547 V!40547 (_ BitVec 32) Int) ListLongMap!14963)

(assert (=> b!1086072 (= lt!482452 (getCurrentListMapNoExtraKeys!4004 lt!482454 lt!482462 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2140 (Int (_ BitVec 64)) V!40547)

(assert (=> b!1086072 (= lt!482462 (array!70029 (store (arr!33684 _values!874) i!650 (ValueCellFull!12573 (dynLambda!2140 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34221 _values!874)))))

(assert (=> b!1086072 (= lt!482459 (getCurrentListMapNoExtraKeys!4004 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086072 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!482458 () Unit!35671)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70026 (_ BitVec 64) (_ BitVec 32)) Unit!35671)

(assert (=> b!1086072 (= lt!482458 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1086073 () Bool)

(declare-fun res!724266 () Bool)

(assert (=> b!1086073 (=> (not res!724266) (not e!620458))))

(assert (=> b!1086073 (= res!724266 (arrayNoDuplicates!0 lt!482454 #b00000000000000000000000000000000 Nil!23619))))

(declare-fun b!1086074 () Bool)

(declare-fun e!620462 () Bool)

(assert (=> b!1086074 (= e!620457 (and e!620462 mapRes!41602))))

(declare-fun condMapEmpty!41602 () Bool)

(declare-fun mapDefault!41602 () ValueCell!12573)

(assert (=> b!1086074 (= condMapEmpty!41602 (= (arr!33684 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12573)) mapDefault!41602)))))

(declare-fun b!1086075 () Bool)

(declare-fun res!724274 () Bool)

(assert (=> b!1086075 (=> (not res!724274) (not e!620461))))

(assert (=> b!1086075 (= res!724274 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1086076 () Bool)

(declare-fun e!620459 () Bool)

(assert (=> b!1086076 (= e!620463 e!620459)))

(declare-fun res!724265 () Bool)

(assert (=> b!1086076 (=> res!724265 e!620459)))

(assert (=> b!1086076 (= res!724265 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!482455 () ListLongMap!14963)

(declare-fun lt!482456 () ListLongMap!14963)

(assert (=> b!1086076 (= lt!482455 lt!482456)))

(declare-fun lt!482453 () ListLongMap!14963)

(assert (=> b!1086076 (= lt!482455 (-!778 lt!482453 k0!904))))

(declare-fun lt!482457 () Unit!35671)

(declare-fun addRemoveCommutativeForDiffKeys!22 (ListLongMap!14963 (_ BitVec 64) V!40547 (_ BitVec 64)) Unit!35671)

(assert (=> b!1086076 (= lt!482457 (addRemoveCommutativeForDiffKeys!22 lt!482459 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(declare-fun lt!482451 () tuple2!16982)

(declare-fun +!3226 (ListLongMap!14963 tuple2!16982) ListLongMap!14963)

(assert (=> b!1086076 (= lt!482461 (+!3226 lt!482456 lt!482451))))

(declare-fun lt!482447 () tuple2!16982)

(assert (=> b!1086076 (= lt!482456 (+!3226 lt!482448 lt!482447))))

(declare-fun lt!482460 () ListLongMap!14963)

(assert (=> b!1086076 (= lt!482446 lt!482460)))

(assert (=> b!1086076 (= lt!482460 (+!3226 lt!482453 lt!482451))))

(assert (=> b!1086076 (= lt!482453 (+!3226 lt!482459 lt!482447))))

(assert (=> b!1086076 (= lt!482461 (+!3226 (+!3226 lt!482452 lt!482447) lt!482451))))

(assert (=> b!1086076 (= lt!482451 (tuple2!16983 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086076 (= lt!482447 (tuple2!16983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086077 () Bool)

(assert (=> b!1086077 (= e!620459 true)))

(assert (=> b!1086077 (= (-!778 lt!482460 k0!904) (+!3226 lt!482455 lt!482451))))

(declare-fun lt!482449 () Unit!35671)

(assert (=> b!1086077 (= lt!482449 (addRemoveCommutativeForDiffKeys!22 lt!482453 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun mapNonEmpty!41602 () Bool)

(declare-fun tp!79538 () Bool)

(assert (=> mapNonEmpty!41602 (= mapRes!41602 (and tp!79538 e!620464))))

(declare-fun mapValue!41602 () ValueCell!12573)

(declare-fun mapRest!41602 () (Array (_ BitVec 32) ValueCell!12573))

(declare-fun mapKey!41602 () (_ BitVec 32))

(assert (=> mapNonEmpty!41602 (= (arr!33684 _values!874) (store mapRest!41602 mapKey!41602 mapValue!41602))))

(declare-fun b!1086078 () Bool)

(assert (=> b!1086078 (= e!620462 tp_is_empty!26565)))

(declare-fun b!1086079 () Bool)

(declare-fun res!724264 () Bool)

(assert (=> b!1086079 (=> (not res!724264) (not e!620461))))

(assert (=> b!1086079 (= res!724264 (and (= (size!34221 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34220 _keys!1070) (size!34221 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086080 () Bool)

(declare-fun res!724273 () Bool)

(assert (=> b!1086080 (=> (not res!724273) (not e!620461))))

(assert (=> b!1086080 (= res!724273 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34220 _keys!1070))))))

(assert (= (and start!95946 res!724268) b!1086079))

(assert (= (and b!1086079 res!724264) b!1086075))

(assert (= (and b!1086075 res!724274) b!1086069))

(assert (= (and b!1086069 res!724269) b!1086080))

(assert (= (and b!1086080 res!724273) b!1086068))

(assert (= (and b!1086068 res!724267) b!1086070))

(assert (= (and b!1086070 res!724271) b!1086071))

(assert (= (and b!1086071 res!724270) b!1086073))

(assert (= (and b!1086073 res!724266) b!1086072))

(assert (= (and b!1086072 (not res!724272)) b!1086076))

(assert (= (and b!1086076 (not res!724265)) b!1086077))

(assert (= (and b!1086074 condMapEmpty!41602) mapIsEmpty!41602))

(assert (= (and b!1086074 (not condMapEmpty!41602)) mapNonEmpty!41602))

(get-info :version)

(assert (= (and mapNonEmpty!41602 ((_ is ValueCellFull!12573) mapValue!41602)) b!1086067))

(assert (= (and b!1086074 ((_ is ValueCellFull!12573) mapDefault!41602)) b!1086078))

(assert (= start!95946 b!1086074))

(declare-fun b_lambda!17263 () Bool)

(assert (=> (not b_lambda!17263) (not b!1086072)))

(declare-fun t!33249 () Bool)

(declare-fun tb!7449 () Bool)

(assert (=> (and start!95946 (= defaultEntry!882 defaultEntry!882) t!33249) tb!7449))

(declare-fun result!15409 () Bool)

(assert (=> tb!7449 (= result!15409 tp_is_empty!26565)))

(assert (=> b!1086072 t!33249))

(declare-fun b_and!35821 () Bool)

(assert (= b_and!35819 (and (=> t!33249 result!15409) b_and!35821)))

(declare-fun m!1004557 () Bool)

(assert (=> b!1086068 m!1004557))

(declare-fun m!1004559 () Bool)

(assert (=> b!1086071 m!1004559))

(declare-fun m!1004561 () Bool)

(assert (=> b!1086071 m!1004561))

(declare-fun m!1004563 () Bool)

(assert (=> b!1086077 m!1004563))

(declare-fun m!1004565 () Bool)

(assert (=> b!1086077 m!1004565))

(declare-fun m!1004567 () Bool)

(assert (=> b!1086077 m!1004567))

(declare-fun m!1004569 () Bool)

(assert (=> b!1086073 m!1004569))

(declare-fun m!1004571 () Bool)

(assert (=> b!1086072 m!1004571))

(declare-fun m!1004573 () Bool)

(assert (=> b!1086072 m!1004573))

(declare-fun m!1004575 () Bool)

(assert (=> b!1086072 m!1004575))

(declare-fun m!1004577 () Bool)

(assert (=> b!1086072 m!1004577))

(declare-fun m!1004579 () Bool)

(assert (=> b!1086072 m!1004579))

(declare-fun m!1004581 () Bool)

(assert (=> b!1086072 m!1004581))

(declare-fun m!1004583 () Bool)

(assert (=> b!1086072 m!1004583))

(declare-fun m!1004585 () Bool)

(assert (=> b!1086072 m!1004585))

(declare-fun m!1004587 () Bool)

(assert (=> b!1086072 m!1004587))

(declare-fun m!1004589 () Bool)

(assert (=> b!1086072 m!1004589))

(declare-fun m!1004591 () Bool)

(assert (=> b!1086076 m!1004591))

(declare-fun m!1004593 () Bool)

(assert (=> b!1086076 m!1004593))

(declare-fun m!1004595 () Bool)

(assert (=> b!1086076 m!1004595))

(declare-fun m!1004597 () Bool)

(assert (=> b!1086076 m!1004597))

(assert (=> b!1086076 m!1004597))

(declare-fun m!1004599 () Bool)

(assert (=> b!1086076 m!1004599))

(declare-fun m!1004601 () Bool)

(assert (=> b!1086076 m!1004601))

(declare-fun m!1004603 () Bool)

(assert (=> b!1086076 m!1004603))

(declare-fun m!1004605 () Bool)

(assert (=> b!1086076 m!1004605))

(declare-fun m!1004607 () Bool)

(assert (=> b!1086075 m!1004607))

(declare-fun m!1004609 () Bool)

(assert (=> mapNonEmpty!41602 m!1004609))

(declare-fun m!1004611 () Bool)

(assert (=> b!1086070 m!1004611))

(declare-fun m!1004613 () Bool)

(assert (=> b!1086069 m!1004613))

(declare-fun m!1004615 () Bool)

(assert (=> start!95946 m!1004615))

(declare-fun m!1004617 () Bool)

(assert (=> start!95946 m!1004617))

(declare-fun m!1004619 () Bool)

(assert (=> start!95946 m!1004619))

(check-sat (not b!1086072) (not b!1086076) (not b!1086077) (not b!1086071) (not b!1086068) tp_is_empty!26565 (not b!1086073) (not mapNonEmpty!41602) b_and!35821 (not start!95946) (not b!1086069) (not b_next!22563) (not b!1086075) (not b_lambda!17263))
(check-sat b_and!35821 (not b_next!22563))
