; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!39476 () Bool)

(assert start!39476)

(declare-fun b_free!9735 () Bool)

(declare-fun b_next!9735 () Bool)

(assert (=> start!39476 (= b_free!9735 (not b_next!9735))))

(declare-fun tp!34733 () Bool)

(declare-fun b_and!17363 () Bool)

(assert (=> start!39476 (= tp!34733 b_and!17363)))

(declare-fun b!420775 () Bool)

(declare-fun res!245573 () Bool)

(declare-fun e!250570 () Bool)

(assert (=> b!420775 (=> (not res!245573) (not e!250570))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!420775 (= res!245573 (validMask!0 mask!1025))))

(declare-fun b!420776 () Bool)

(declare-fun e!250566 () Bool)

(declare-datatypes ((V!15621 0))(
  ( (V!15622 (val!5488 Int)) )
))
(declare-datatypes ((tuple2!7122 0))(
  ( (tuple2!7123 (_1!3571 (_ BitVec 64)) (_2!3571 V!15621)) )
))
(declare-datatypes ((List!7166 0))(
  ( (Nil!7163) (Cons!7162 (h!8018 tuple2!7122) (t!12574 List!7166)) )
))
(declare-datatypes ((ListLongMap!6049 0))(
  ( (ListLongMap!6050 (toList!3040 List!7166)) )
))
(declare-fun call!29381 () ListLongMap!6049)

(declare-fun call!29380 () ListLongMap!6049)

(assert (=> b!420776 (= e!250566 (= call!29381 call!29380))))

(declare-fun b!420777 () Bool)

(declare-fun e!250567 () Bool)

(declare-fun tp_is_empty!10887 () Bool)

(assert (=> b!420777 (= e!250567 tp_is_empty!10887)))

(declare-fun b!420778 () Bool)

(declare-fun res!245582 () Bool)

(assert (=> b!420778 (=> (not res!245582) (not e!250570))))

(declare-datatypes ((array!25601 0))(
  ( (array!25602 (arr!12247 (Array (_ BitVec 32) (_ BitVec 64))) (size!12599 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!25601)

(declare-fun k0!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!25601 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!420778 (= res!245582 (not (arrayContainsKey!0 _keys!709 k0!794 #b00000000000000000000000000000000)))))

(declare-fun b!420779 () Bool)

(declare-fun e!250569 () Bool)

(assert (=> b!420779 (= e!250570 e!250569)))

(declare-fun res!245578 () Bool)

(assert (=> b!420779 (=> (not res!245578) (not e!250569))))

(declare-fun lt!193163 () array!25601)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!25601 (_ BitVec 32)) Bool)

(assert (=> b!420779 (= res!245578 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!193163 mask!1025))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!420779 (= lt!193163 (array!25602 (store (arr!12247 _keys!709) i!563 k0!794) (size!12599 _keys!709)))))

(declare-fun b!420780 () Bool)

(declare-fun e!250573 () Bool)

(declare-fun e!250565 () Bool)

(declare-fun mapRes!17952 () Bool)

(assert (=> b!420780 (= e!250573 (and e!250565 mapRes!17952))))

(declare-fun condMapEmpty!17952 () Bool)

(declare-datatypes ((ValueCell!5100 0))(
  ( (ValueCellFull!5100 (v!7731 V!15621)) (EmptyCell!5100) )
))
(declare-datatypes ((array!25603 0))(
  ( (array!25604 (arr!12248 (Array (_ BitVec 32) ValueCell!5100)) (size!12600 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!25603)

(declare-fun mapDefault!17952 () ValueCell!5100)

(assert (=> b!420780 (= condMapEmpty!17952 (= (arr!12248 _values!549) ((as const (Array (_ BitVec 32) ValueCell!5100)) mapDefault!17952)))))

(declare-fun mapIsEmpty!17952 () Bool)

(assert (=> mapIsEmpty!17952 mapRes!17952))

(declare-fun b!420781 () Bool)

(declare-fun res!245579 () Bool)

(assert (=> b!420781 (=> (not res!245579) (not e!250570))))

(declare-datatypes ((List!7167 0))(
  ( (Nil!7164) (Cons!7163 (h!8019 (_ BitVec 64)) (t!12575 List!7167)) )
))
(declare-fun arrayNoDuplicates!0 (array!25601 (_ BitVec 32) List!7167) Bool)

(assert (=> b!420781 (= res!245579 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7164))))

(declare-fun b!420782 () Bool)

(declare-fun e!250571 () Bool)

(assert (=> b!420782 (= e!250569 e!250571)))

(declare-fun res!245586 () Bool)

(assert (=> b!420782 (=> (not res!245586) (not e!250571))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!420782 (= res!245586 (= from!863 i!563))))

(declare-fun minValue!515 () V!15621)

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!193170 () array!25603)

(declare-fun zeroValue!515 () V!15621)

(declare-fun lt!193167 () ListLongMap!6049)

(declare-fun getCurrentListMapNoExtraKeys!1241 (array!25601 array!25603 (_ BitVec 32) (_ BitVec 32) V!15621 V!15621 (_ BitVec 32) Int) ListLongMap!6049)

(assert (=> b!420782 (= lt!193167 (getCurrentListMapNoExtraKeys!1241 lt!193163 lt!193170 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!15621)

(assert (=> b!420782 (= lt!193170 (array!25604 (store (arr!12248 _values!549) i!563 (ValueCellFull!5100 v!412)) (size!12600 _values!549)))))

(declare-fun lt!193172 () ListLongMap!6049)

(assert (=> b!420782 (= lt!193172 (getCurrentListMapNoExtraKeys!1241 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!420783 () Bool)

(declare-fun res!245577 () Bool)

(assert (=> b!420783 (=> (not res!245577) (not e!250570))))

(assert (=> b!420783 (= res!245577 (and (= (size!12600 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12599 _keys!709) (size!12600 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun c!55241 () Bool)

(declare-fun bm!29378 () Bool)

(assert (=> bm!29378 (= call!29381 (getCurrentListMapNoExtraKeys!1241 (ite c!55241 _keys!709 lt!193163) (ite c!55241 _values!549 lt!193170) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420784 () Bool)

(declare-fun res!245574 () Bool)

(assert (=> b!420784 (=> (not res!245574) (not e!250569))))

(assert (=> b!420784 (= res!245574 (arrayNoDuplicates!0 lt!193163 #b00000000000000000000000000000000 Nil!7164))))

(declare-fun b!420785 () Bool)

(declare-fun res!245583 () Bool)

(assert (=> b!420785 (=> (not res!245583) (not e!250570))))

(assert (=> b!420785 (= res!245583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!420786 () Bool)

(declare-fun +!1244 (ListLongMap!6049 tuple2!7122) ListLongMap!6049)

(assert (=> b!420786 (= e!250566 (= call!29380 (+!1244 call!29381 (tuple2!7123 k0!794 v!412))))))

(declare-fun b!420787 () Bool)

(declare-fun e!250568 () Bool)

(assert (=> b!420787 (= e!250571 (not e!250568))))

(declare-fun res!245584 () Bool)

(assert (=> b!420787 (=> res!245584 e!250568)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!420787 (= res!245584 (validKeyInArray!0 (select (arr!12247 _keys!709) from!863)))))

(assert (=> b!420787 e!250566))

(assert (=> b!420787 (= c!55241 (bvsle (bvadd #b00000000000000000000000000000001 from!863) i!563))))

(declare-datatypes ((Unit!12387 0))(
  ( (Unit!12388) )
))
(declare-fun lt!193173 () Unit!12387)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!448 (array!25601 array!25603 (_ BitVec 32) (_ BitVec 32) V!15621 V!15621 (_ BitVec 32) (_ BitVec 64) V!15621 (_ BitVec 32) Int) Unit!12387)

(assert (=> b!420787 (= lt!193173 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!448 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k0!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420788 () Bool)

(declare-fun res!245585 () Bool)

(assert (=> b!420788 (=> (not res!245585) (not e!250570))))

(assert (=> b!420788 (= res!245585 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12599 _keys!709))))))

(declare-fun bm!29377 () Bool)

(assert (=> bm!29377 (= call!29380 (getCurrentListMapNoExtraKeys!1241 (ite c!55241 lt!193163 _keys!709) (ite c!55241 lt!193170 _values!549) mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun res!245580 () Bool)

(assert (=> start!39476 (=> (not res!245580) (not e!250570))))

(assert (=> start!39476 (= res!245580 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12599 _keys!709))))))

(assert (=> start!39476 e!250570))

(assert (=> start!39476 tp_is_empty!10887))

(assert (=> start!39476 tp!34733))

(assert (=> start!39476 true))

(declare-fun array_inv!8922 (array!25603) Bool)

(assert (=> start!39476 (and (array_inv!8922 _values!549) e!250573)))

(declare-fun array_inv!8923 (array!25601) Bool)

(assert (=> start!39476 (array_inv!8923 _keys!709)))

(declare-fun b!420789 () Bool)

(declare-fun res!245581 () Bool)

(assert (=> b!420789 (=> (not res!245581) (not e!250570))))

(assert (=> b!420789 (= res!245581 (validKeyInArray!0 k0!794))))

(declare-fun b!420790 () Bool)

(assert (=> b!420790 (= e!250565 tp_is_empty!10887)))

(declare-fun b!420791 () Bool)

(declare-fun res!245575 () Bool)

(assert (=> b!420791 (=> (not res!245575) (not e!250570))))

(assert (=> b!420791 (= res!245575 (or (= (select (arr!12247 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12247 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!420792 () Bool)

(assert (=> b!420792 (= e!250568 true)))

(declare-fun lt!193164 () V!15621)

(declare-fun lt!193165 () ListLongMap!6049)

(declare-fun lt!193166 () tuple2!7122)

(assert (=> b!420792 (= (+!1244 lt!193165 lt!193166) (+!1244 (+!1244 lt!193165 (tuple2!7123 k0!794 lt!193164)) lt!193166))))

(declare-fun lt!193169 () V!15621)

(assert (=> b!420792 (= lt!193166 (tuple2!7123 k0!794 lt!193169))))

(declare-fun lt!193168 () Unit!12387)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!61 (ListLongMap!6049 (_ BitVec 64) V!15621 V!15621) Unit!12387)

(assert (=> b!420792 (= lt!193168 (addSameAsAddTwiceSameKeyDiffValues!61 lt!193165 k0!794 lt!193164 lt!193169))))

(declare-fun lt!193171 () V!15621)

(declare-fun get!6088 (ValueCell!5100 V!15621) V!15621)

(assert (=> b!420792 (= lt!193164 (get!6088 (select (arr!12248 _values!549) from!863) lt!193171))))

(assert (=> b!420792 (= lt!193167 (+!1244 lt!193165 (tuple2!7123 (select (arr!12247 lt!193163) from!863) lt!193169)))))

(assert (=> b!420792 (= lt!193169 (get!6088 (select (store (arr!12248 _values!549) i!563 (ValueCellFull!5100 v!412)) from!863) lt!193171))))

(declare-fun dynLambda!723 (Int (_ BitVec 64)) V!15621)

(assert (=> b!420792 (= lt!193171 (dynLambda!723 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!420792 (= lt!193165 (getCurrentListMapNoExtraKeys!1241 lt!193163 lt!193170 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!420793 () Bool)

(declare-fun res!245576 () Bool)

(assert (=> b!420793 (=> (not res!245576) (not e!250569))))

(assert (=> b!420793 (= res!245576 (bvsle from!863 i!563))))

(declare-fun mapNonEmpty!17952 () Bool)

(declare-fun tp!34734 () Bool)

(assert (=> mapNonEmpty!17952 (= mapRes!17952 (and tp!34734 e!250567))))

(declare-fun mapKey!17952 () (_ BitVec 32))

(declare-fun mapRest!17952 () (Array (_ BitVec 32) ValueCell!5100))

(declare-fun mapValue!17952 () ValueCell!5100)

(assert (=> mapNonEmpty!17952 (= (arr!12248 _values!549) (store mapRest!17952 mapKey!17952 mapValue!17952))))

(assert (= (and start!39476 res!245580) b!420775))

(assert (= (and b!420775 res!245573) b!420783))

(assert (= (and b!420783 res!245577) b!420785))

(assert (= (and b!420785 res!245583) b!420781))

(assert (= (and b!420781 res!245579) b!420788))

(assert (= (and b!420788 res!245585) b!420789))

(assert (= (and b!420789 res!245581) b!420791))

(assert (= (and b!420791 res!245575) b!420778))

(assert (= (and b!420778 res!245582) b!420779))

(assert (= (and b!420779 res!245578) b!420784))

(assert (= (and b!420784 res!245574) b!420793))

(assert (= (and b!420793 res!245576) b!420782))

(assert (= (and b!420782 res!245586) b!420787))

(assert (= (and b!420787 c!55241) b!420786))

(assert (= (and b!420787 (not c!55241)) b!420776))

(assert (= (or b!420786 b!420776) bm!29377))

(assert (= (or b!420786 b!420776) bm!29378))

(assert (= (and b!420787 (not res!245584)) b!420792))

(assert (= (and b!420780 condMapEmpty!17952) mapIsEmpty!17952))

(assert (= (and b!420780 (not condMapEmpty!17952)) mapNonEmpty!17952))

(get-info :version)

(assert (= (and mapNonEmpty!17952 ((_ is ValueCellFull!5100) mapValue!17952)) b!420777))

(assert (= (and b!420780 ((_ is ValueCellFull!5100) mapDefault!17952)) b!420790))

(assert (= start!39476 b!420780))

(declare-fun b_lambda!9069 () Bool)

(assert (=> (not b_lambda!9069) (not b!420792)))

(declare-fun t!12573 () Bool)

(declare-fun tb!3365 () Bool)

(assert (=> (and start!39476 (= defaultEntry!557 defaultEntry!557) t!12573) tb!3365))

(declare-fun result!6249 () Bool)

(assert (=> tb!3365 (= result!6249 tp_is_empty!10887)))

(assert (=> b!420792 t!12573))

(declare-fun b_and!17365 () Bool)

(assert (= b_and!17363 (and (=> t!12573 result!6249) b_and!17365)))

(declare-fun m!410499 () Bool)

(assert (=> mapNonEmpty!17952 m!410499))

(declare-fun m!410501 () Bool)

(assert (=> b!420785 m!410501))

(declare-fun m!410503 () Bool)

(assert (=> b!420779 m!410503))

(declare-fun m!410505 () Bool)

(assert (=> b!420779 m!410505))

(declare-fun m!410507 () Bool)

(assert (=> bm!29377 m!410507))

(declare-fun m!410509 () Bool)

(assert (=> b!420782 m!410509))

(declare-fun m!410511 () Bool)

(assert (=> b!420782 m!410511))

(declare-fun m!410513 () Bool)

(assert (=> b!420782 m!410513))

(declare-fun m!410515 () Bool)

(assert (=> b!420786 m!410515))

(declare-fun m!410517 () Bool)

(assert (=> b!420791 m!410517))

(declare-fun m!410519 () Bool)

(assert (=> b!420778 m!410519))

(declare-fun m!410521 () Bool)

(assert (=> b!420775 m!410521))

(declare-fun m!410523 () Bool)

(assert (=> bm!29378 m!410523))

(declare-fun m!410525 () Bool)

(assert (=> b!420789 m!410525))

(declare-fun m!410527 () Bool)

(assert (=> b!420784 m!410527))

(declare-fun m!410529 () Bool)

(assert (=> b!420792 m!410529))

(declare-fun m!410531 () Bool)

(assert (=> b!420792 m!410531))

(declare-fun m!410533 () Bool)

(assert (=> b!420792 m!410533))

(declare-fun m!410535 () Bool)

(assert (=> b!420792 m!410535))

(assert (=> b!420792 m!410511))

(declare-fun m!410537 () Bool)

(assert (=> b!420792 m!410537))

(assert (=> b!420792 m!410529))

(declare-fun m!410539 () Bool)

(assert (=> b!420792 m!410539))

(declare-fun m!410541 () Bool)

(assert (=> b!420792 m!410541))

(assert (=> b!420792 m!410539))

(declare-fun m!410543 () Bool)

(assert (=> b!420792 m!410543))

(declare-fun m!410545 () Bool)

(assert (=> b!420792 m!410545))

(declare-fun m!410547 () Bool)

(assert (=> b!420792 m!410547))

(declare-fun m!410549 () Bool)

(assert (=> b!420792 m!410549))

(declare-fun m!410551 () Bool)

(assert (=> b!420792 m!410551))

(assert (=> b!420792 m!410545))

(declare-fun m!410553 () Bool)

(assert (=> b!420787 m!410553))

(assert (=> b!420787 m!410553))

(declare-fun m!410555 () Bool)

(assert (=> b!420787 m!410555))

(declare-fun m!410557 () Bool)

(assert (=> b!420787 m!410557))

(declare-fun m!410559 () Bool)

(assert (=> b!420781 m!410559))

(declare-fun m!410561 () Bool)

(assert (=> start!39476 m!410561))

(declare-fun m!410563 () Bool)

(assert (=> start!39476 m!410563))

(check-sat (not b_lambda!9069) (not b_next!9735) (not b!420785) (not b!420784) (not bm!29378) (not bm!29377) (not b!420792) (not b!420789) (not mapNonEmpty!17952) (not b!420787) (not b!420782) b_and!17365 (not start!39476) (not b!420778) (not b!420781) (not b!420779) (not b!420786) tp_is_empty!10887 (not b!420775))
(check-sat b_and!17365 (not b_next!9735))
