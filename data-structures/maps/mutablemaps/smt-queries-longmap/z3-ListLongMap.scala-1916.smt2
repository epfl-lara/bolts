; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34096 () Bool)

(assert start!34096)

(declare-fun b_free!7167 () Bool)

(declare-fun b_next!7167 () Bool)

(assert (=> start!34096 (= b_free!7167 (not b_next!7167))))

(declare-fun tp!25026 () Bool)

(declare-fun b_and!14379 () Bool)

(assert (=> start!34096 (= tp!25026 b_and!14379)))

(declare-fun b!339553 () Bool)

(declare-fun e!208329 () Bool)

(declare-fun e!208326 () Bool)

(declare-fun mapRes!12096 () Bool)

(assert (=> b!339553 (= e!208329 (and e!208326 mapRes!12096))))

(declare-fun condMapEmpty!12096 () Bool)

(declare-datatypes ((V!10469 0))(
  ( (V!10470 (val!3604 Int)) )
))
(declare-datatypes ((ValueCell!3216 0))(
  ( (ValueCellFull!3216 (v!5769 V!10469)) (EmptyCell!3216) )
))
(declare-datatypes ((array!17807 0))(
  ( (array!17808 (arr!8424 (Array (_ BitVec 32) ValueCell!3216)) (size!8776 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17807)

(declare-fun mapDefault!12096 () ValueCell!3216)

(assert (=> b!339553 (= condMapEmpty!12096 (= (arr!8424 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3216)) mapDefault!12096)))))

(declare-fun res!187638 () Bool)

(declare-fun e!208328 () Bool)

(assert (=> start!34096 (=> (not res!187638) (not e!208328))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34096 (= res!187638 (validMask!0 mask!2385))))

(assert (=> start!34096 e!208328))

(assert (=> start!34096 true))

(declare-fun tp_is_empty!7119 () Bool)

(assert (=> start!34096 tp_is_empty!7119))

(assert (=> start!34096 tp!25026))

(declare-fun array_inv!6234 (array!17807) Bool)

(assert (=> start!34096 (and (array_inv!6234 _values!1525) e!208329)))

(declare-datatypes ((array!17809 0))(
  ( (array!17810 (arr!8425 (Array (_ BitVec 32) (_ BitVec 64))) (size!8777 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17809)

(declare-fun array_inv!6235 (array!17809) Bool)

(assert (=> start!34096 (array_inv!6235 _keys!1895)))

(declare-fun b!339554 () Bool)

(declare-fun res!187637 () Bool)

(assert (=> b!339554 (=> (not res!187637) (not e!208328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17809 (_ BitVec 32)) Bool)

(assert (=> b!339554 (= res!187637 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!339555 () Bool)

(declare-fun e!208325 () Bool)

(assert (=> b!339555 (= e!208325 tp_is_empty!7119)))

(declare-fun b!339556 () Bool)

(declare-fun res!187635 () Bool)

(assert (=> b!339556 (=> (not res!187635) (not e!208328))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!339556 (= res!187635 (and (= (size!8776 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8777 _keys!1895) (size!8776 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!339557 () Bool)

(declare-datatypes ((SeekEntryResult!3258 0))(
  ( (MissingZero!3258 (index!15211 (_ BitVec 32))) (Found!3258 (index!15212 (_ BitVec 32))) (Intermediate!3258 (undefined!4070 Bool) (index!15213 (_ BitVec 32)) (x!33833 (_ BitVec 32))) (Undefined!3258) (MissingVacant!3258 (index!15214 (_ BitVec 32))) )
))
(declare-fun lt!161229 () SeekEntryResult!3258)

(get-info :version)

(assert (=> b!339557 (= e!208328 (and (not ((_ is Found!3258) lt!161229)) (not ((_ is MissingZero!3258) lt!161229)) ((_ is MissingVacant!3258) lt!161229) (bvsge #b00000000000000000000000000000000 (size!8777 _keys!1895))))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17809 (_ BitVec 32)) SeekEntryResult!3258)

(assert (=> b!339557 (= lt!161229 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12096 () Bool)

(assert (=> mapIsEmpty!12096 mapRes!12096))

(declare-fun b!339558 () Bool)

(declare-fun res!187636 () Bool)

(assert (=> b!339558 (=> (not res!187636) (not e!208328))))

(declare-fun zeroValue!1467 () V!10469)

(declare-fun minValue!1467 () V!10469)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((tuple2!5222 0))(
  ( (tuple2!5223 (_1!2621 (_ BitVec 64)) (_2!2621 V!10469)) )
))
(declare-datatypes ((List!4865 0))(
  ( (Nil!4862) (Cons!4861 (h!5717 tuple2!5222) (t!9975 List!4865)) )
))
(declare-datatypes ((ListLongMap!4149 0))(
  ( (ListLongMap!4150 (toList!2090 List!4865)) )
))
(declare-fun contains!2137 (ListLongMap!4149 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1610 (array!17809 array!17807 (_ BitVec 32) (_ BitVec 32) V!10469 V!10469 (_ BitVec 32) Int) ListLongMap!4149)

(assert (=> b!339558 (= res!187636 (not (contains!2137 (getCurrentListMap!1610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun mapNonEmpty!12096 () Bool)

(declare-fun tp!25025 () Bool)

(assert (=> mapNonEmpty!12096 (= mapRes!12096 (and tp!25025 e!208325))))

(declare-fun mapRest!12096 () (Array (_ BitVec 32) ValueCell!3216))

(declare-fun mapValue!12096 () ValueCell!3216)

(declare-fun mapKey!12096 () (_ BitVec 32))

(assert (=> mapNonEmpty!12096 (= (arr!8424 _values!1525) (store mapRest!12096 mapKey!12096 mapValue!12096))))

(declare-fun b!339559 () Bool)

(assert (=> b!339559 (= e!208326 tp_is_empty!7119)))

(declare-fun b!339560 () Bool)

(declare-fun res!187639 () Bool)

(assert (=> b!339560 (=> (not res!187639) (not e!208328))))

(declare-datatypes ((List!4866 0))(
  ( (Nil!4863) (Cons!4862 (h!5718 (_ BitVec 64)) (t!9976 List!4866)) )
))
(declare-fun arrayNoDuplicates!0 (array!17809 (_ BitVec 32) List!4866) Bool)

(assert (=> b!339560 (= res!187639 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4863))))

(declare-fun b!339561 () Bool)

(declare-fun res!187640 () Bool)

(assert (=> b!339561 (=> (not res!187640) (not e!208328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!339561 (= res!187640 (validKeyInArray!0 k0!1348))))

(assert (= (and start!34096 res!187638) b!339556))

(assert (= (and b!339556 res!187635) b!339554))

(assert (= (and b!339554 res!187637) b!339560))

(assert (= (and b!339560 res!187639) b!339561))

(assert (= (and b!339561 res!187640) b!339558))

(assert (= (and b!339558 res!187636) b!339557))

(assert (= (and b!339553 condMapEmpty!12096) mapIsEmpty!12096))

(assert (= (and b!339553 (not condMapEmpty!12096)) mapNonEmpty!12096))

(assert (= (and mapNonEmpty!12096 ((_ is ValueCellFull!3216) mapValue!12096)) b!339555))

(assert (= (and b!339553 ((_ is ValueCellFull!3216) mapDefault!12096)) b!339559))

(assert (= start!34096 b!339553))

(declare-fun m!342489 () Bool)

(assert (=> b!339557 m!342489))

(declare-fun m!342491 () Bool)

(assert (=> start!34096 m!342491))

(declare-fun m!342493 () Bool)

(assert (=> start!34096 m!342493))

(declare-fun m!342495 () Bool)

(assert (=> start!34096 m!342495))

(declare-fun m!342497 () Bool)

(assert (=> b!339558 m!342497))

(assert (=> b!339558 m!342497))

(declare-fun m!342499 () Bool)

(assert (=> b!339558 m!342499))

(declare-fun m!342501 () Bool)

(assert (=> mapNonEmpty!12096 m!342501))

(declare-fun m!342503 () Bool)

(assert (=> b!339554 m!342503))

(declare-fun m!342505 () Bool)

(assert (=> b!339561 m!342505))

(declare-fun m!342507 () Bool)

(assert (=> b!339560 m!342507))

(check-sat (not start!34096) (not mapNonEmpty!12096) (not b!339560) (not b_next!7167) tp_is_empty!7119 (not b!339558) (not b!339554) (not b!339557) (not b!339561) b_and!14379)
(check-sat b_and!14379 (not b_next!7167))
(get-model)

(declare-fun d!70735 () Bool)

(assert (=> d!70735 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!34096 d!70735))

(declare-fun d!70737 () Bool)

(assert (=> d!70737 (= (array_inv!6234 _values!1525) (bvsge (size!8776 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!34096 d!70737))

(declare-fun d!70739 () Bool)

(assert (=> d!70739 (= (array_inv!6235 _keys!1895) (bvsge (size!8777 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!34096 d!70739))

(declare-fun d!70741 () Bool)

(declare-fun e!208350 () Bool)

(assert (=> d!70741 e!208350))

(declare-fun res!187661 () Bool)

(assert (=> d!70741 (=> res!187661 e!208350)))

(declare-fun lt!161243 () Bool)

(assert (=> d!70741 (= res!187661 (not lt!161243))))

(declare-fun lt!161242 () Bool)

(assert (=> d!70741 (= lt!161243 lt!161242)))

(declare-datatypes ((Unit!10586 0))(
  ( (Unit!10587) )
))
(declare-fun lt!161241 () Unit!10586)

(declare-fun e!208349 () Unit!10586)

(assert (=> d!70741 (= lt!161241 e!208349)))

(declare-fun c!52499 () Bool)

(assert (=> d!70741 (= c!52499 lt!161242)))

(declare-fun containsKey!322 (List!4865 (_ BitVec 64)) Bool)

(assert (=> d!70741 (= lt!161242 (containsKey!322 (toList!2090 (getCurrentListMap!1610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70741 (= (contains!2137 (getCurrentListMap!1610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!161243)))

(declare-fun b!339595 () Bool)

(declare-fun lt!161244 () Unit!10586)

(assert (=> b!339595 (= e!208349 lt!161244)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!271 (List!4865 (_ BitVec 64)) Unit!10586)

(assert (=> b!339595 (= lt!161244 (lemmaContainsKeyImpliesGetValueByKeyDefined!271 (toList!2090 (getCurrentListMap!1610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!336 0))(
  ( (Some!335 (v!5771 V!10469)) (None!334) )
))
(declare-fun isDefined!272 (Option!336) Bool)

(declare-fun getValueByKey!330 (List!4865 (_ BitVec 64)) Option!336)

(assert (=> b!339595 (isDefined!272 (getValueByKey!330 (toList!2090 (getCurrentListMap!1610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!339596 () Bool)

(declare-fun Unit!10588 () Unit!10586)

(assert (=> b!339596 (= e!208349 Unit!10588)))

(declare-fun b!339597 () Bool)

(assert (=> b!339597 (= e!208350 (isDefined!272 (getValueByKey!330 (toList!2090 (getCurrentListMap!1610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70741 c!52499) b!339595))

(assert (= (and d!70741 (not c!52499)) b!339596))

(assert (= (and d!70741 (not res!187661)) b!339597))

(declare-fun m!342529 () Bool)

(assert (=> d!70741 m!342529))

(declare-fun m!342531 () Bool)

(assert (=> b!339595 m!342531))

(declare-fun m!342533 () Bool)

(assert (=> b!339595 m!342533))

(assert (=> b!339595 m!342533))

(declare-fun m!342535 () Bool)

(assert (=> b!339595 m!342535))

(assert (=> b!339597 m!342533))

(assert (=> b!339597 m!342533))

(assert (=> b!339597 m!342535))

(assert (=> b!339558 d!70741))

(declare-fun bm!26492 () Bool)

(declare-fun call!26496 () Bool)

(declare-fun lt!161300 () ListLongMap!4149)

(assert (=> bm!26492 (= call!26496 (contains!2137 lt!161300 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!70743 () Bool)

(declare-fun e!208385 () Bool)

(assert (=> d!70743 e!208385))

(declare-fun res!187681 () Bool)

(assert (=> d!70743 (=> (not res!187681) (not e!208385))))

(assert (=> d!70743 (= res!187681 (or (bvsge #b00000000000000000000000000000000 (size!8777 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8777 _keys!1895)))))))

(declare-fun lt!161290 () ListLongMap!4149)

(assert (=> d!70743 (= lt!161300 lt!161290)))

(declare-fun lt!161292 () Unit!10586)

(declare-fun e!208386 () Unit!10586)

(assert (=> d!70743 (= lt!161292 e!208386)))

(declare-fun c!52517 () Bool)

(declare-fun e!208382 () Bool)

(assert (=> d!70743 (= c!52517 e!208382)))

(declare-fun res!187685 () Bool)

(assert (=> d!70743 (=> (not res!187685) (not e!208382))))

(assert (=> d!70743 (= res!187685 (bvslt #b00000000000000000000000000000000 (size!8777 _keys!1895)))))

(declare-fun e!208383 () ListLongMap!4149)

(assert (=> d!70743 (= lt!161290 e!208383)))

(declare-fun c!52512 () Bool)

(assert (=> d!70743 (= c!52512 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70743 (validMask!0 mask!2385)))

(assert (=> d!70743 (= (getCurrentListMap!1610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!161300)))

(declare-fun b!339640 () Bool)

(declare-fun c!52514 () Bool)

(assert (=> b!339640 (= c!52514 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!208378 () ListLongMap!4149)

(declare-fun e!208388 () ListLongMap!4149)

(assert (=> b!339640 (= e!208378 e!208388)))

(declare-fun b!339641 () Bool)

(declare-fun call!26495 () ListLongMap!4149)

(assert (=> b!339641 (= e!208378 call!26495)))

(declare-fun b!339642 () Bool)

(declare-fun Unit!10589 () Unit!10586)

(assert (=> b!339642 (= e!208386 Unit!10589)))

(declare-fun call!26500 () ListLongMap!4149)

(declare-fun call!26497 () ListLongMap!4149)

(declare-fun call!26501 () ListLongMap!4149)

(declare-fun c!52515 () Bool)

(declare-fun bm!26493 () Bool)

(declare-fun call!26498 () ListLongMap!4149)

(declare-fun +!717 (ListLongMap!4149 tuple2!5222) ListLongMap!4149)

(assert (=> bm!26493 (= call!26500 (+!717 (ite c!52512 call!26498 (ite c!52515 call!26501 call!26497)) (ite (or c!52512 c!52515) (tuple2!5223 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!339643 () Bool)

(declare-fun e!208387 () Bool)

(declare-fun apply!273 (ListLongMap!4149 (_ BitVec 64)) V!10469)

(assert (=> b!339643 (= e!208387 (= (apply!273 lt!161300 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!339644 () Bool)

(assert (=> b!339644 (= e!208388 call!26495)))

(declare-fun b!339645 () Bool)

(assert (=> b!339645 (= e!208388 call!26497)))

(declare-fun b!339646 () Bool)

(declare-fun lt!161309 () Unit!10586)

(assert (=> b!339646 (= e!208386 lt!161309)))

(declare-fun lt!161295 () ListLongMap!4149)

(declare-fun getCurrentListMapNoExtraKeys!592 (array!17809 array!17807 (_ BitVec 32) (_ BitVec 32) V!10469 V!10469 (_ BitVec 32) Int) ListLongMap!4149)

(assert (=> b!339646 (= lt!161295 (getCurrentListMapNoExtraKeys!592 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161299 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161299 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161310 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161310 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161289 () Unit!10586)

(declare-fun addStillContains!249 (ListLongMap!4149 (_ BitVec 64) V!10469 (_ BitVec 64)) Unit!10586)

(assert (=> b!339646 (= lt!161289 (addStillContains!249 lt!161295 lt!161299 zeroValue!1467 lt!161310))))

(assert (=> b!339646 (contains!2137 (+!717 lt!161295 (tuple2!5223 lt!161299 zeroValue!1467)) lt!161310)))

(declare-fun lt!161301 () Unit!10586)

(assert (=> b!339646 (= lt!161301 lt!161289)))

(declare-fun lt!161308 () ListLongMap!4149)

(assert (=> b!339646 (= lt!161308 (getCurrentListMapNoExtraKeys!592 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161306 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161306 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161302 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161302 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161293 () Unit!10586)

(declare-fun addApplyDifferent!249 (ListLongMap!4149 (_ BitVec 64) V!10469 (_ BitVec 64)) Unit!10586)

(assert (=> b!339646 (= lt!161293 (addApplyDifferent!249 lt!161308 lt!161306 minValue!1467 lt!161302))))

(assert (=> b!339646 (= (apply!273 (+!717 lt!161308 (tuple2!5223 lt!161306 minValue!1467)) lt!161302) (apply!273 lt!161308 lt!161302))))

(declare-fun lt!161305 () Unit!10586)

(assert (=> b!339646 (= lt!161305 lt!161293)))

(declare-fun lt!161303 () ListLongMap!4149)

(assert (=> b!339646 (= lt!161303 (getCurrentListMapNoExtraKeys!592 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161296 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161296 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161294 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161294 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161291 () Unit!10586)

(assert (=> b!339646 (= lt!161291 (addApplyDifferent!249 lt!161303 lt!161296 zeroValue!1467 lt!161294))))

(assert (=> b!339646 (= (apply!273 (+!717 lt!161303 (tuple2!5223 lt!161296 zeroValue!1467)) lt!161294) (apply!273 lt!161303 lt!161294))))

(declare-fun lt!161297 () Unit!10586)

(assert (=> b!339646 (= lt!161297 lt!161291)))

(declare-fun lt!161298 () ListLongMap!4149)

(assert (=> b!339646 (= lt!161298 (getCurrentListMapNoExtraKeys!592 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!161307 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161307 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!161304 () (_ BitVec 64))

(assert (=> b!339646 (= lt!161304 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!339646 (= lt!161309 (addApplyDifferent!249 lt!161298 lt!161307 minValue!1467 lt!161304))))

(assert (=> b!339646 (= (apply!273 (+!717 lt!161298 (tuple2!5223 lt!161307 minValue!1467)) lt!161304) (apply!273 lt!161298 lt!161304))))

(declare-fun b!339647 () Bool)

(declare-fun res!187688 () Bool)

(assert (=> b!339647 (=> (not res!187688) (not e!208385))))

(declare-fun e!208377 () Bool)

(assert (=> b!339647 (= res!187688 e!208377)))

(declare-fun c!52513 () Bool)

(assert (=> b!339647 (= c!52513 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!339648 () Bool)

(declare-fun e!208381 () Bool)

(assert (=> b!339648 (= e!208381 e!208387)))

(declare-fun res!187687 () Bool)

(assert (=> b!339648 (= res!187687 call!26496)))

(assert (=> b!339648 (=> (not res!187687) (not e!208387))))

(declare-fun b!339649 () Bool)

(declare-fun e!208379 () Bool)

(assert (=> b!339649 (= e!208377 e!208379)))

(declare-fun res!187686 () Bool)

(declare-fun call!26499 () Bool)

(assert (=> b!339649 (= res!187686 call!26499)))

(assert (=> b!339649 (=> (not res!187686) (not e!208379))))

(declare-fun b!339650 () Bool)

(assert (=> b!339650 (= e!208379 (= (apply!273 lt!161300 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!26494 () Bool)

(assert (=> bm!26494 (= call!26495 call!26500)))

(declare-fun b!339651 () Bool)

(assert (=> b!339651 (= e!208381 (not call!26496))))

(declare-fun b!339652 () Bool)

(declare-fun res!187683 () Bool)

(assert (=> b!339652 (=> (not res!187683) (not e!208385))))

(declare-fun e!208380 () Bool)

(assert (=> b!339652 (= res!187683 e!208380)))

(declare-fun res!187684 () Bool)

(assert (=> b!339652 (=> res!187684 e!208380)))

(declare-fun e!208384 () Bool)

(assert (=> b!339652 (= res!187684 (not e!208384))))

(declare-fun res!187682 () Bool)

(assert (=> b!339652 (=> (not res!187682) (not e!208384))))

(assert (=> b!339652 (= res!187682 (bvslt #b00000000000000000000000000000000 (size!8777 _keys!1895)))))

(declare-fun b!339653 () Bool)

(declare-fun e!208389 () Bool)

(assert (=> b!339653 (= e!208380 e!208389)))

(declare-fun res!187680 () Bool)

(assert (=> b!339653 (=> (not res!187680) (not e!208389))))

(assert (=> b!339653 (= res!187680 (contains!2137 lt!161300 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!339653 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8777 _keys!1895)))))

(declare-fun b!339654 () Bool)

(assert (=> b!339654 (= e!208377 (not call!26499))))

(declare-fun b!339655 () Bool)

(assert (=> b!339655 (= e!208383 e!208378)))

(assert (=> b!339655 (= c!52515 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!26495 () Bool)

(assert (=> bm!26495 (= call!26497 call!26501)))

(declare-fun b!339656 () Bool)

(declare-fun get!4592 (ValueCell!3216 V!10469) V!10469)

(declare-fun dynLambda!611 (Int (_ BitVec 64)) V!10469)

(assert (=> b!339656 (= e!208389 (= (apply!273 lt!161300 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)) (get!4592 (select (arr!8424 _values!1525) #b00000000000000000000000000000000) (dynLambda!611 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!339656 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8776 _values!1525)))))

(assert (=> b!339656 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8777 _keys!1895)))))

(declare-fun b!339657 () Bool)

(assert (=> b!339657 (= e!208384 (validKeyInArray!0 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!339658 () Bool)

(assert (=> b!339658 (= e!208382 (validKeyInArray!0 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26496 () Bool)

(assert (=> bm!26496 (= call!26499 (contains!2137 lt!161300 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!26497 () Bool)

(assert (=> bm!26497 (= call!26501 call!26498)))

(declare-fun b!339659 () Bool)

(assert (=> b!339659 (= e!208385 e!208381)))

(declare-fun c!52516 () Bool)

(assert (=> b!339659 (= c!52516 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!339660 () Bool)

(assert (=> b!339660 (= e!208383 (+!717 call!26500 (tuple2!5223 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!26498 () Bool)

(assert (=> bm!26498 (= call!26498 (getCurrentListMapNoExtraKeys!592 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(assert (= (and d!70743 c!52512) b!339660))

(assert (= (and d!70743 (not c!52512)) b!339655))

(assert (= (and b!339655 c!52515) b!339641))

(assert (= (and b!339655 (not c!52515)) b!339640))

(assert (= (and b!339640 c!52514) b!339644))

(assert (= (and b!339640 (not c!52514)) b!339645))

(assert (= (or b!339644 b!339645) bm!26495))

(assert (= (or b!339641 bm!26495) bm!26497))

(assert (= (or b!339641 b!339644) bm!26494))

(assert (= (or b!339660 bm!26497) bm!26498))

(assert (= (or b!339660 bm!26494) bm!26493))

(assert (= (and d!70743 res!187685) b!339658))

(assert (= (and d!70743 c!52517) b!339646))

(assert (= (and d!70743 (not c!52517)) b!339642))

(assert (= (and d!70743 res!187681) b!339652))

(assert (= (and b!339652 res!187682) b!339657))

(assert (= (and b!339652 (not res!187684)) b!339653))

(assert (= (and b!339653 res!187680) b!339656))

(assert (= (and b!339652 res!187683) b!339647))

(assert (= (and b!339647 c!52513) b!339649))

(assert (= (and b!339647 (not c!52513)) b!339654))

(assert (= (and b!339649 res!187686) b!339650))

(assert (= (or b!339649 b!339654) bm!26496))

(assert (= (and b!339647 res!187688) b!339659))

(assert (= (and b!339659 c!52516) b!339648))

(assert (= (and b!339659 (not c!52516)) b!339651))

(assert (= (and b!339648 res!187687) b!339643))

(assert (= (or b!339648 b!339651) bm!26492))

(declare-fun b_lambda!8461 () Bool)

(assert (=> (not b_lambda!8461) (not b!339656)))

(declare-fun t!9978 () Bool)

(declare-fun tb!3069 () Bool)

(assert (=> (and start!34096 (= defaultEntry!1528 defaultEntry!1528) t!9978) tb!3069))

(declare-fun result!5521 () Bool)

(assert (=> tb!3069 (= result!5521 tp_is_empty!7119)))

(assert (=> b!339656 t!9978))

(declare-fun b_and!14383 () Bool)

(assert (= b_and!14379 (and (=> t!9978 result!5521) b_and!14383)))

(declare-fun m!342537 () Bool)

(assert (=> b!339643 m!342537))

(declare-fun m!342539 () Bool)

(assert (=> bm!26493 m!342539))

(assert (=> d!70743 m!342491))

(declare-fun m!342541 () Bool)

(assert (=> b!339660 m!342541))

(declare-fun m!342543 () Bool)

(assert (=> b!339656 m!342543))

(declare-fun m!342545 () Bool)

(assert (=> b!339656 m!342545))

(declare-fun m!342547 () Bool)

(assert (=> b!339656 m!342547))

(assert (=> b!339656 m!342545))

(declare-fun m!342549 () Bool)

(assert (=> b!339656 m!342549))

(assert (=> b!339656 m!342543))

(assert (=> b!339656 m!342549))

(declare-fun m!342551 () Bool)

(assert (=> b!339656 m!342551))

(assert (=> b!339657 m!342545))

(assert (=> b!339657 m!342545))

(declare-fun m!342553 () Bool)

(assert (=> b!339657 m!342553))

(declare-fun m!342555 () Bool)

(assert (=> b!339646 m!342555))

(declare-fun m!342557 () Bool)

(assert (=> b!339646 m!342557))

(declare-fun m!342559 () Bool)

(assert (=> b!339646 m!342559))

(declare-fun m!342561 () Bool)

(assert (=> b!339646 m!342561))

(assert (=> b!339646 m!342557))

(declare-fun m!342563 () Bool)

(assert (=> b!339646 m!342563))

(declare-fun m!342565 () Bool)

(assert (=> b!339646 m!342565))

(declare-fun m!342567 () Bool)

(assert (=> b!339646 m!342567))

(declare-fun m!342569 () Bool)

(assert (=> b!339646 m!342569))

(declare-fun m!342571 () Bool)

(assert (=> b!339646 m!342571))

(assert (=> b!339646 m!342563))

(declare-fun m!342573 () Bool)

(assert (=> b!339646 m!342573))

(declare-fun m!342575 () Bool)

(assert (=> b!339646 m!342575))

(assert (=> b!339646 m!342567))

(declare-fun m!342577 () Bool)

(assert (=> b!339646 m!342577))

(declare-fun m!342579 () Bool)

(assert (=> b!339646 m!342579))

(declare-fun m!342581 () Bool)

(assert (=> b!339646 m!342581))

(declare-fun m!342583 () Bool)

(assert (=> b!339646 m!342583))

(assert (=> b!339646 m!342577))

(assert (=> b!339646 m!342545))

(declare-fun m!342585 () Bool)

(assert (=> b!339646 m!342585))

(assert (=> bm!26498 m!342561))

(declare-fun m!342587 () Bool)

(assert (=> bm!26496 m!342587))

(assert (=> b!339658 m!342545))

(assert (=> b!339658 m!342545))

(assert (=> b!339658 m!342553))

(assert (=> b!339653 m!342545))

(assert (=> b!339653 m!342545))

(declare-fun m!342589 () Bool)

(assert (=> b!339653 m!342589))

(declare-fun m!342591 () Bool)

(assert (=> bm!26492 m!342591))

(declare-fun m!342593 () Bool)

(assert (=> b!339650 m!342593))

(assert (=> b!339558 d!70743))

(declare-fun d!70745 () Bool)

(assert (=> d!70745 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!339561 d!70745))

(declare-fun b!339673 () Bool)

(declare-fun e!208399 () Bool)

(declare-fun contains!2138 (List!4866 (_ BitVec 64)) Bool)

(assert (=> b!339673 (= e!208399 (contains!2138 Nil!4863 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!339674 () Bool)

(declare-fun e!208400 () Bool)

(declare-fun e!208401 () Bool)

(assert (=> b!339674 (= e!208400 e!208401)))

(declare-fun res!187696 () Bool)

(assert (=> b!339674 (=> (not res!187696) (not e!208401))))

(assert (=> b!339674 (= res!187696 (not e!208399))))

(declare-fun res!187697 () Bool)

(assert (=> b!339674 (=> (not res!187697) (not e!208399))))

(assert (=> b!339674 (= res!187697 (validKeyInArray!0 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26501 () Bool)

(declare-fun call!26504 () Bool)

(declare-fun c!52520 () Bool)

(assert (=> bm!26501 (= call!26504 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52520 (Cons!4862 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000) Nil!4863) Nil!4863)))))

(declare-fun b!339675 () Bool)

(declare-fun e!208398 () Bool)

(assert (=> b!339675 (= e!208398 call!26504)))

(declare-fun d!70747 () Bool)

(declare-fun res!187695 () Bool)

(assert (=> d!70747 (=> res!187695 e!208400)))

(assert (=> d!70747 (= res!187695 (bvsge #b00000000000000000000000000000000 (size!8777 _keys!1895)))))

(assert (=> d!70747 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4863) e!208400)))

(declare-fun b!339676 () Bool)

(assert (=> b!339676 (= e!208398 call!26504)))

(declare-fun b!339677 () Bool)

(assert (=> b!339677 (= e!208401 e!208398)))

(assert (=> b!339677 (= c!52520 (validKeyInArray!0 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70747 (not res!187695)) b!339674))

(assert (= (and b!339674 res!187697) b!339673))

(assert (= (and b!339674 res!187696) b!339677))

(assert (= (and b!339677 c!52520) b!339676))

(assert (= (and b!339677 (not c!52520)) b!339675))

(assert (= (or b!339676 b!339675) bm!26501))

(assert (=> b!339673 m!342545))

(assert (=> b!339673 m!342545))

(declare-fun m!342595 () Bool)

(assert (=> b!339673 m!342595))

(assert (=> b!339674 m!342545))

(assert (=> b!339674 m!342545))

(assert (=> b!339674 m!342553))

(assert (=> bm!26501 m!342545))

(declare-fun m!342597 () Bool)

(assert (=> bm!26501 m!342597))

(assert (=> b!339677 m!342545))

(assert (=> b!339677 m!342545))

(assert (=> b!339677 m!342553))

(assert (=> b!339560 d!70747))

(declare-fun b!339690 () Bool)

(declare-fun c!52529 () Bool)

(declare-fun lt!161318 () (_ BitVec 64))

(assert (=> b!339690 (= c!52529 (= lt!161318 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!208408 () SeekEntryResult!3258)

(declare-fun e!208409 () SeekEntryResult!3258)

(assert (=> b!339690 (= e!208408 e!208409)))

(declare-fun b!339691 () Bool)

(declare-fun lt!161319 () SeekEntryResult!3258)

(assert (=> b!339691 (= e!208409 (MissingZero!3258 (index!15213 lt!161319)))))

(declare-fun b!339692 () Bool)

(declare-fun e!208410 () SeekEntryResult!3258)

(assert (=> b!339692 (= e!208410 Undefined!3258)))

(declare-fun d!70749 () Bool)

(declare-fun lt!161317 () SeekEntryResult!3258)

(assert (=> d!70749 (and (or ((_ is Undefined!3258) lt!161317) (not ((_ is Found!3258) lt!161317)) (and (bvsge (index!15212 lt!161317) #b00000000000000000000000000000000) (bvslt (index!15212 lt!161317) (size!8777 _keys!1895)))) (or ((_ is Undefined!3258) lt!161317) ((_ is Found!3258) lt!161317) (not ((_ is MissingZero!3258) lt!161317)) (and (bvsge (index!15211 lt!161317) #b00000000000000000000000000000000) (bvslt (index!15211 lt!161317) (size!8777 _keys!1895)))) (or ((_ is Undefined!3258) lt!161317) ((_ is Found!3258) lt!161317) ((_ is MissingZero!3258) lt!161317) (not ((_ is MissingVacant!3258) lt!161317)) (and (bvsge (index!15214 lt!161317) #b00000000000000000000000000000000) (bvslt (index!15214 lt!161317) (size!8777 _keys!1895)))) (or ((_ is Undefined!3258) lt!161317) (ite ((_ is Found!3258) lt!161317) (= (select (arr!8425 _keys!1895) (index!15212 lt!161317)) k0!1348) (ite ((_ is MissingZero!3258) lt!161317) (= (select (arr!8425 _keys!1895) (index!15211 lt!161317)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3258) lt!161317) (= (select (arr!8425 _keys!1895) (index!15214 lt!161317)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70749 (= lt!161317 e!208410)))

(declare-fun c!52528 () Bool)

(assert (=> d!70749 (= c!52528 (and ((_ is Intermediate!3258) lt!161319) (undefined!4070 lt!161319)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17809 (_ BitVec 32)) SeekEntryResult!3258)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70749 (= lt!161319 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70749 (validMask!0 mask!2385)))

(assert (=> d!70749 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!161317)))

(declare-fun b!339693 () Bool)

(assert (=> b!339693 (= e!208408 (Found!3258 (index!15213 lt!161319)))))

(declare-fun b!339694 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17809 (_ BitVec 32)) SeekEntryResult!3258)

(assert (=> b!339694 (= e!208409 (seekKeyOrZeroReturnVacant!0 (x!33833 lt!161319) (index!15213 lt!161319) (index!15213 lt!161319) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!339695 () Bool)

(assert (=> b!339695 (= e!208410 e!208408)))

(assert (=> b!339695 (= lt!161318 (select (arr!8425 _keys!1895) (index!15213 lt!161319)))))

(declare-fun c!52527 () Bool)

(assert (=> b!339695 (= c!52527 (= lt!161318 k0!1348))))

(assert (= (and d!70749 c!52528) b!339692))

(assert (= (and d!70749 (not c!52528)) b!339695))

(assert (= (and b!339695 c!52527) b!339693))

(assert (= (and b!339695 (not c!52527)) b!339690))

(assert (= (and b!339690 c!52529) b!339691))

(assert (= (and b!339690 (not c!52529)) b!339694))

(declare-fun m!342599 () Bool)

(assert (=> d!70749 m!342599))

(declare-fun m!342601 () Bool)

(assert (=> d!70749 m!342601))

(declare-fun m!342603 () Bool)

(assert (=> d!70749 m!342603))

(declare-fun m!342605 () Bool)

(assert (=> d!70749 m!342605))

(assert (=> d!70749 m!342605))

(declare-fun m!342607 () Bool)

(assert (=> d!70749 m!342607))

(assert (=> d!70749 m!342491))

(declare-fun m!342609 () Bool)

(assert (=> b!339694 m!342609))

(declare-fun m!342611 () Bool)

(assert (=> b!339695 m!342611))

(assert (=> b!339557 d!70749))

(declare-fun d!70751 () Bool)

(declare-fun res!187703 () Bool)

(declare-fun e!208418 () Bool)

(assert (=> d!70751 (=> res!187703 e!208418)))

(assert (=> d!70751 (= res!187703 (bvsge #b00000000000000000000000000000000 (size!8777 _keys!1895)))))

(assert (=> d!70751 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!208418)))

(declare-fun bm!26504 () Bool)

(declare-fun call!26507 () Bool)

(assert (=> bm!26504 (= call!26507 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!339704 () Bool)

(declare-fun e!208417 () Bool)

(assert (=> b!339704 (= e!208417 call!26507)))

(declare-fun b!339705 () Bool)

(assert (=> b!339705 (= e!208418 e!208417)))

(declare-fun c!52532 () Bool)

(assert (=> b!339705 (= c!52532 (validKeyInArray!0 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!339706 () Bool)

(declare-fun e!208419 () Bool)

(assert (=> b!339706 (= e!208419 call!26507)))

(declare-fun b!339707 () Bool)

(assert (=> b!339707 (= e!208417 e!208419)))

(declare-fun lt!161326 () (_ BitVec 64))

(assert (=> b!339707 (= lt!161326 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!161328 () Unit!10586)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17809 (_ BitVec 64) (_ BitVec 32)) Unit!10586)

(assert (=> b!339707 (= lt!161328 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!161326 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!339707 (arrayContainsKey!0 _keys!1895 lt!161326 #b00000000000000000000000000000000)))

(declare-fun lt!161327 () Unit!10586)

(assert (=> b!339707 (= lt!161327 lt!161328)))

(declare-fun res!187702 () Bool)

(assert (=> b!339707 (= res!187702 (= (seekEntryOrOpen!0 (select (arr!8425 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3258 #b00000000000000000000000000000000)))))

(assert (=> b!339707 (=> (not res!187702) (not e!208419))))

(assert (= (and d!70751 (not res!187703)) b!339705))

(assert (= (and b!339705 c!52532) b!339707))

(assert (= (and b!339705 (not c!52532)) b!339704))

(assert (= (and b!339707 res!187702) b!339706))

(assert (= (or b!339706 b!339704) bm!26504))

(declare-fun m!342613 () Bool)

(assert (=> bm!26504 m!342613))

(assert (=> b!339705 m!342545))

(assert (=> b!339705 m!342545))

(assert (=> b!339705 m!342553))

(assert (=> b!339707 m!342545))

(declare-fun m!342615 () Bool)

(assert (=> b!339707 m!342615))

(declare-fun m!342617 () Bool)

(assert (=> b!339707 m!342617))

(assert (=> b!339707 m!342545))

(declare-fun m!342619 () Bool)

(assert (=> b!339707 m!342619))

(assert (=> b!339554 d!70751))

(declare-fun b!339715 () Bool)

(declare-fun e!208425 () Bool)

(assert (=> b!339715 (= e!208425 tp_is_empty!7119)))

(declare-fun condMapEmpty!12102 () Bool)

(declare-fun mapDefault!12102 () ValueCell!3216)

(assert (=> mapNonEmpty!12096 (= condMapEmpty!12102 (= mapRest!12096 ((as const (Array (_ BitVec 32) ValueCell!3216)) mapDefault!12102)))))

(declare-fun mapRes!12102 () Bool)

(assert (=> mapNonEmpty!12096 (= tp!25025 (and e!208425 mapRes!12102))))

(declare-fun mapNonEmpty!12102 () Bool)

(declare-fun tp!25035 () Bool)

(declare-fun e!208424 () Bool)

(assert (=> mapNonEmpty!12102 (= mapRes!12102 (and tp!25035 e!208424))))

(declare-fun mapValue!12102 () ValueCell!3216)

(declare-fun mapKey!12102 () (_ BitVec 32))

(declare-fun mapRest!12102 () (Array (_ BitVec 32) ValueCell!3216))

(assert (=> mapNonEmpty!12102 (= mapRest!12096 (store mapRest!12102 mapKey!12102 mapValue!12102))))

(declare-fun mapIsEmpty!12102 () Bool)

(assert (=> mapIsEmpty!12102 mapRes!12102))

(declare-fun b!339714 () Bool)

(assert (=> b!339714 (= e!208424 tp_is_empty!7119)))

(assert (= (and mapNonEmpty!12096 condMapEmpty!12102) mapIsEmpty!12102))

(assert (= (and mapNonEmpty!12096 (not condMapEmpty!12102)) mapNonEmpty!12102))

(assert (= (and mapNonEmpty!12102 ((_ is ValueCellFull!3216) mapValue!12102)) b!339714))

(assert (= (and mapNonEmpty!12096 ((_ is ValueCellFull!3216) mapDefault!12102)) b!339715))

(declare-fun m!342621 () Bool)

(assert (=> mapNonEmpty!12102 m!342621))

(declare-fun b_lambda!8463 () Bool)

(assert (= b_lambda!8461 (or (and start!34096 b_free!7167) b_lambda!8463)))

(check-sat (not bm!26492) (not b!339677) (not b!339643) tp_is_empty!7119 (not bm!26496) (not mapNonEmpty!12102) (not b!339646) (not b!339660) (not b_lambda!8463) (not b!339705) (not b!339597) (not b!339656) (not b!339595) (not bm!26498) (not b_next!7167) (not b!339657) (not bm!26493) (not b!339658) (not b!339674) (not d!70743) (not b!339707) (not b!339673) b_and!14383 (not d!70741) (not b!339650) (not bm!26504) (not b!339694) (not bm!26501) (not d!70749) (not b!339653))
(check-sat b_and!14383 (not b_next!7167))
