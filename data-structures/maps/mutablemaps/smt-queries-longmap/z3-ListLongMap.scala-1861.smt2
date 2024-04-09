; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33592 () Bool)

(assert start!33592)

(declare-fun b_free!6837 () Bool)

(declare-fun b_next!6837 () Bool)

(assert (=> start!33592 (= b_free!6837 (not b_next!6837))))

(declare-fun tp!24011 () Bool)

(declare-fun b_and!14033 () Bool)

(assert (=> start!33592 (= tp!24011 b_and!14033)))

(declare-fun b!333065 () Bool)

(declare-fun res!183548 () Bool)

(declare-fun e!204532 () Bool)

(assert (=> b!333065 (=> (not res!183548) (not e!204532))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10029 0))(
  ( (V!10030 (val!3439 Int)) )
))
(declare-fun zeroValue!1467 () V!10029)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3051 0))(
  ( (ValueCellFull!3051 (v!5596 V!10029)) (EmptyCell!3051) )
))
(declare-datatypes ((array!17173 0))(
  ( (array!17174 (arr!8115 (Array (_ BitVec 32) ValueCell!3051)) (size!8467 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17173)

(declare-datatypes ((array!17175 0))(
  ( (array!17176 (arr!8116 (Array (_ BitVec 32) (_ BitVec 64))) (size!8468 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17175)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10029)

(declare-datatypes ((tuple2!5006 0))(
  ( (tuple2!5007 (_1!2513 (_ BitVec 64)) (_2!2513 V!10029)) )
))
(declare-datatypes ((List!4645 0))(
  ( (Nil!4642) (Cons!4641 (h!5497 tuple2!5006) (t!9739 List!4645)) )
))
(declare-datatypes ((ListLongMap!3933 0))(
  ( (ListLongMap!3934 (toList!1982 List!4645)) )
))
(declare-fun contains!2021 (ListLongMap!3933 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1505 (array!17175 array!17173 (_ BitVec 32) (_ BitVec 32) V!10029 V!10029 (_ BitVec 32) Int) ListLongMap!3933)

(assert (=> b!333065 (= res!183548 (not (contains!2021 (getCurrentListMap!1505 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!333066 () Bool)

(declare-fun e!204530 () Bool)

(declare-fun e!204533 () Bool)

(declare-fun mapRes!11577 () Bool)

(assert (=> b!333066 (= e!204530 (and e!204533 mapRes!11577))))

(declare-fun condMapEmpty!11577 () Bool)

(declare-fun mapDefault!11577 () ValueCell!3051)

(assert (=> b!333066 (= condMapEmpty!11577 (= (arr!8115 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3051)) mapDefault!11577)))))

(declare-fun b!333067 () Bool)

(declare-datatypes ((SeekEntryResult!3149 0))(
  ( (MissingZero!3149 (index!14775 (_ BitVec 32))) (Found!3149 (index!14776 (_ BitVec 32))) (Intermediate!3149 (undefined!3961 Bool) (index!14777 (_ BitVec 32)) (x!33204 (_ BitVec 32))) (Undefined!3149) (MissingVacant!3149 (index!14778 (_ BitVec 32))) )
))
(declare-fun lt!159222 () SeekEntryResult!3149)

(get-info :version)

(assert (=> b!333067 (= e!204532 (and ((_ is Found!3149) lt!159222) (= (select (arr!8116 _keys!1895) (index!14776 lt!159222)) k0!1348) (bvsge (index!14776 lt!159222) #b00000000000000000000000000000000) (bvslt (index!14776 lt!159222) (size!8468 _keys!1895)) (bvsge (size!8468 _keys!1895) #b01111111111111111111111111111111)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17175 (_ BitVec 32)) SeekEntryResult!3149)

(assert (=> b!333067 (= lt!159222 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!333068 () Bool)

(declare-fun res!183550 () Bool)

(assert (=> b!333068 (=> (not res!183550) (not e!204532))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!333068 (= res!183550 (validKeyInArray!0 k0!1348))))

(declare-fun res!183549 () Bool)

(assert (=> start!33592 (=> (not res!183549) (not e!204532))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33592 (= res!183549 (validMask!0 mask!2385))))

(assert (=> start!33592 e!204532))

(assert (=> start!33592 true))

(declare-fun tp_is_empty!6789 () Bool)

(assert (=> start!33592 tp_is_empty!6789))

(assert (=> start!33592 tp!24011))

(declare-fun array_inv!6034 (array!17173) Bool)

(assert (=> start!33592 (and (array_inv!6034 _values!1525) e!204530)))

(declare-fun array_inv!6035 (array!17175) Bool)

(assert (=> start!33592 (array_inv!6035 _keys!1895)))

(declare-fun b!333069 () Bool)

(declare-fun e!204534 () Bool)

(assert (=> b!333069 (= e!204534 tp_is_empty!6789)))

(declare-fun b!333070 () Bool)

(declare-fun res!183547 () Bool)

(assert (=> b!333070 (=> (not res!183547) (not e!204532))))

(declare-datatypes ((List!4646 0))(
  ( (Nil!4643) (Cons!4642 (h!5498 (_ BitVec 64)) (t!9740 List!4646)) )
))
(declare-fun arrayNoDuplicates!0 (array!17175 (_ BitVec 32) List!4646) Bool)

(assert (=> b!333070 (= res!183547 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4643))))

(declare-fun b!333071 () Bool)

(declare-fun res!183551 () Bool)

(assert (=> b!333071 (=> (not res!183551) (not e!204532))))

(assert (=> b!333071 (= res!183551 (and (= (size!8467 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8468 _keys!1895) (size!8467 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!11577 () Bool)

(assert (=> mapIsEmpty!11577 mapRes!11577))

(declare-fun mapNonEmpty!11577 () Bool)

(declare-fun tp!24012 () Bool)

(assert (=> mapNonEmpty!11577 (= mapRes!11577 (and tp!24012 e!204534))))

(declare-fun mapValue!11577 () ValueCell!3051)

(declare-fun mapRest!11577 () (Array (_ BitVec 32) ValueCell!3051))

(declare-fun mapKey!11577 () (_ BitVec 32))

(assert (=> mapNonEmpty!11577 (= (arr!8115 _values!1525) (store mapRest!11577 mapKey!11577 mapValue!11577))))

(declare-fun b!333072 () Bool)

(assert (=> b!333072 (= e!204533 tp_is_empty!6789)))

(declare-fun b!333073 () Bool)

(declare-fun res!183546 () Bool)

(assert (=> b!333073 (=> (not res!183546) (not e!204532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17175 (_ BitVec 32)) Bool)

(assert (=> b!333073 (= res!183546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(assert (= (and start!33592 res!183549) b!333071))

(assert (= (and b!333071 res!183551) b!333073))

(assert (= (and b!333073 res!183546) b!333070))

(assert (= (and b!333070 res!183547) b!333068))

(assert (= (and b!333068 res!183550) b!333065))

(assert (= (and b!333065 res!183548) b!333067))

(assert (= (and b!333066 condMapEmpty!11577) mapIsEmpty!11577))

(assert (= (and b!333066 (not condMapEmpty!11577)) mapNonEmpty!11577))

(assert (= (and mapNonEmpty!11577 ((_ is ValueCellFull!3051) mapValue!11577)) b!333069))

(assert (= (and b!333066 ((_ is ValueCellFull!3051) mapDefault!11577)) b!333072))

(assert (= start!33592 b!333066))

(declare-fun m!337403 () Bool)

(assert (=> b!333070 m!337403))

(declare-fun m!337405 () Bool)

(assert (=> start!33592 m!337405))

(declare-fun m!337407 () Bool)

(assert (=> start!33592 m!337407))

(declare-fun m!337409 () Bool)

(assert (=> start!33592 m!337409))

(declare-fun m!337411 () Bool)

(assert (=> mapNonEmpty!11577 m!337411))

(declare-fun m!337413 () Bool)

(assert (=> b!333067 m!337413))

(declare-fun m!337415 () Bool)

(assert (=> b!333067 m!337415))

(declare-fun m!337417 () Bool)

(assert (=> b!333065 m!337417))

(assert (=> b!333065 m!337417))

(declare-fun m!337419 () Bool)

(assert (=> b!333065 m!337419))

(declare-fun m!337421 () Bool)

(assert (=> b!333068 m!337421))

(declare-fun m!337423 () Bool)

(assert (=> b!333073 m!337423))

(check-sat tp_is_empty!6789 (not b!333070) (not mapNonEmpty!11577) (not b!333073) b_and!14033 (not b!333067) (not b!333065) (not b_next!6837) (not start!33592) (not b!333068))
(check-sat b_and!14033 (not b_next!6837))
(get-model)

(declare-fun d!70451 () Bool)

(assert (=> d!70451 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!333068 d!70451))

(declare-fun b!333113 () Bool)

(declare-fun e!204557 () SeekEntryResult!3149)

(declare-fun e!204556 () SeekEntryResult!3149)

(assert (=> b!333113 (= e!204557 e!204556)))

(declare-fun lt!159234 () (_ BitVec 64))

(declare-fun lt!159232 () SeekEntryResult!3149)

(assert (=> b!333113 (= lt!159234 (select (arr!8116 _keys!1895) (index!14777 lt!159232)))))

(declare-fun c!52088 () Bool)

(assert (=> b!333113 (= c!52088 (= lt!159234 k0!1348))))

(declare-fun b!333114 () Bool)

(assert (=> b!333114 (= e!204556 (Found!3149 (index!14777 lt!159232)))))

(declare-fun b!333115 () Bool)

(declare-fun e!204558 () SeekEntryResult!3149)

(assert (=> b!333115 (= e!204558 (MissingZero!3149 (index!14777 lt!159232)))))

(declare-fun b!333116 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17175 (_ BitVec 32)) SeekEntryResult!3149)

(assert (=> b!333116 (= e!204558 (seekKeyOrZeroReturnVacant!0 (x!33204 lt!159232) (index!14777 lt!159232) (index!14777 lt!159232) k0!1348 _keys!1895 mask!2385))))

(declare-fun d!70453 () Bool)

(declare-fun lt!159233 () SeekEntryResult!3149)

(assert (=> d!70453 (and (or ((_ is Undefined!3149) lt!159233) (not ((_ is Found!3149) lt!159233)) (and (bvsge (index!14776 lt!159233) #b00000000000000000000000000000000) (bvslt (index!14776 lt!159233) (size!8468 _keys!1895)))) (or ((_ is Undefined!3149) lt!159233) ((_ is Found!3149) lt!159233) (not ((_ is MissingZero!3149) lt!159233)) (and (bvsge (index!14775 lt!159233) #b00000000000000000000000000000000) (bvslt (index!14775 lt!159233) (size!8468 _keys!1895)))) (or ((_ is Undefined!3149) lt!159233) ((_ is Found!3149) lt!159233) ((_ is MissingZero!3149) lt!159233) (not ((_ is MissingVacant!3149) lt!159233)) (and (bvsge (index!14778 lt!159233) #b00000000000000000000000000000000) (bvslt (index!14778 lt!159233) (size!8468 _keys!1895)))) (or ((_ is Undefined!3149) lt!159233) (ite ((_ is Found!3149) lt!159233) (= (select (arr!8116 _keys!1895) (index!14776 lt!159233)) k0!1348) (ite ((_ is MissingZero!3149) lt!159233) (= (select (arr!8116 _keys!1895) (index!14775 lt!159233)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3149) lt!159233) (= (select (arr!8116 _keys!1895) (index!14778 lt!159233)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70453 (= lt!159233 e!204557)))

(declare-fun c!52086 () Bool)

(assert (=> d!70453 (= c!52086 (and ((_ is Intermediate!3149) lt!159232) (undefined!3961 lt!159232)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17175 (_ BitVec 32)) SeekEntryResult!3149)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70453 (= lt!159232 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!70453 (validMask!0 mask!2385)))

(assert (=> d!70453 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!159233)))

(declare-fun b!333117 () Bool)

(assert (=> b!333117 (= e!204557 Undefined!3149)))

(declare-fun b!333118 () Bool)

(declare-fun c!52087 () Bool)

(assert (=> b!333118 (= c!52087 (= lt!159234 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!333118 (= e!204556 e!204558)))

(assert (= (and d!70453 c!52086) b!333117))

(assert (= (and d!70453 (not c!52086)) b!333113))

(assert (= (and b!333113 c!52088) b!333114))

(assert (= (and b!333113 (not c!52088)) b!333118))

(assert (= (and b!333118 c!52087) b!333115))

(assert (= (and b!333118 (not c!52087)) b!333116))

(declare-fun m!337447 () Bool)

(assert (=> b!333113 m!337447))

(declare-fun m!337449 () Bool)

(assert (=> b!333116 m!337449))

(declare-fun m!337451 () Bool)

(assert (=> d!70453 m!337451))

(declare-fun m!337453 () Bool)

(assert (=> d!70453 m!337453))

(declare-fun m!337455 () Bool)

(assert (=> d!70453 m!337455))

(declare-fun m!337457 () Bool)

(assert (=> d!70453 m!337457))

(declare-fun m!337459 () Bool)

(assert (=> d!70453 m!337459))

(assert (=> d!70453 m!337405))

(assert (=> d!70453 m!337453))

(assert (=> b!333067 d!70453))

(declare-fun d!70455 () Bool)

(assert (=> d!70455 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33592 d!70455))

(declare-fun d!70457 () Bool)

(assert (=> d!70457 (= (array_inv!6034 _values!1525) (bvsge (size!8467 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33592 d!70457))

(declare-fun d!70459 () Bool)

(assert (=> d!70459 (= (array_inv!6035 _keys!1895) (bvsge (size!8468 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33592 d!70459))

(declare-fun d!70461 () Bool)

(declare-fun e!204564 () Bool)

(assert (=> d!70461 e!204564))

(declare-fun res!183572 () Bool)

(assert (=> d!70461 (=> res!183572 e!204564)))

(declare-fun lt!159245 () Bool)

(assert (=> d!70461 (= res!183572 (not lt!159245))))

(declare-fun lt!159244 () Bool)

(assert (=> d!70461 (= lt!159245 lt!159244)))

(declare-datatypes ((Unit!10370 0))(
  ( (Unit!10371) )
))
(declare-fun lt!159246 () Unit!10370)

(declare-fun e!204563 () Unit!10370)

(assert (=> d!70461 (= lt!159246 e!204563)))

(declare-fun c!52091 () Bool)

(assert (=> d!70461 (= c!52091 lt!159244)))

(declare-fun containsKey!314 (List!4645 (_ BitVec 64)) Bool)

(assert (=> d!70461 (= lt!159244 (containsKey!314 (toList!1982 (getCurrentListMap!1505 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!70461 (= (contains!2021 (getCurrentListMap!1505 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!159245)))

(declare-fun b!333125 () Bool)

(declare-fun lt!159243 () Unit!10370)

(assert (=> b!333125 (= e!204563 lt!159243)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!263 (List!4645 (_ BitVec 64)) Unit!10370)

(assert (=> b!333125 (= lt!159243 (lemmaContainsKeyImpliesGetValueByKeyDefined!263 (toList!1982 (getCurrentListMap!1505 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!328 0))(
  ( (Some!327 (v!5598 V!10029)) (None!326) )
))
(declare-fun isDefined!264 (Option!328) Bool)

(declare-fun getValueByKey!322 (List!4645 (_ BitVec 64)) Option!328)

(assert (=> b!333125 (isDefined!264 (getValueByKey!322 (toList!1982 (getCurrentListMap!1505 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!333126 () Bool)

(declare-fun Unit!10372 () Unit!10370)

(assert (=> b!333126 (= e!204563 Unit!10372)))

(declare-fun b!333127 () Bool)

(assert (=> b!333127 (= e!204564 (isDefined!264 (getValueByKey!322 (toList!1982 (getCurrentListMap!1505 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!70461 c!52091) b!333125))

(assert (= (and d!70461 (not c!52091)) b!333126))

(assert (= (and d!70461 (not res!183572)) b!333127))

(declare-fun m!337461 () Bool)

(assert (=> d!70461 m!337461))

(declare-fun m!337463 () Bool)

(assert (=> b!333125 m!337463))

(declare-fun m!337465 () Bool)

(assert (=> b!333125 m!337465))

(assert (=> b!333125 m!337465))

(declare-fun m!337467 () Bool)

(assert (=> b!333125 m!337467))

(assert (=> b!333127 m!337465))

(assert (=> b!333127 m!337465))

(assert (=> b!333127 m!337467))

(assert (=> b!333065 d!70461))

(declare-fun bm!26276 () Bool)

(declare-fun call!26283 () Bool)

(declare-fun lt!159293 () ListLongMap!3933)

(assert (=> bm!26276 (= call!26283 (contains!2021 lt!159293 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!333170 () Bool)

(declare-fun e!204603 () ListLongMap!3933)

(declare-fun call!26285 () ListLongMap!3933)

(assert (=> b!333170 (= e!204603 call!26285)))

(declare-fun b!333171 () Bool)

(declare-fun e!204601 () Bool)

(assert (=> b!333171 (= e!204601 (validKeyInArray!0 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!333172 () Bool)

(declare-fun e!204597 () Bool)

(assert (=> b!333172 (= e!204597 (validKeyInArray!0 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!333173 () Bool)

(declare-fun e!204600 () ListLongMap!3933)

(assert (=> b!333173 (= e!204600 call!26285)))

(declare-fun bm!26277 () Bool)

(declare-fun call!26280 () ListLongMap!3933)

(assert (=> bm!26277 (= call!26285 call!26280)))

(declare-fun d!70463 () Bool)

(declare-fun e!204602 () Bool)

(assert (=> d!70463 e!204602))

(declare-fun res!183592 () Bool)

(assert (=> d!70463 (=> (not res!183592) (not e!204602))))

(assert (=> d!70463 (= res!183592 (or (bvsge #b00000000000000000000000000000000 (size!8468 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8468 _keys!1895)))))))

(declare-fun lt!159291 () ListLongMap!3933)

(assert (=> d!70463 (= lt!159293 lt!159291)))

(declare-fun lt!159300 () Unit!10370)

(declare-fun e!204592 () Unit!10370)

(assert (=> d!70463 (= lt!159300 e!204592)))

(declare-fun c!52105 () Bool)

(assert (=> d!70463 (= c!52105 e!204597)))

(declare-fun res!183594 () Bool)

(assert (=> d!70463 (=> (not res!183594) (not e!204597))))

(assert (=> d!70463 (= res!183594 (bvslt #b00000000000000000000000000000000 (size!8468 _keys!1895)))))

(declare-fun e!204595 () ListLongMap!3933)

(assert (=> d!70463 (= lt!159291 e!204595)))

(declare-fun c!52104 () Bool)

(assert (=> d!70463 (= c!52104 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!70463 (validMask!0 mask!2385)))

(assert (=> d!70463 (= (getCurrentListMap!1505 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!159293)))

(declare-fun b!333174 () Bool)

(declare-fun e!204591 () Bool)

(declare-fun e!204593 () Bool)

(assert (=> b!333174 (= e!204591 e!204593)))

(declare-fun res!183597 () Bool)

(declare-fun call!26282 () Bool)

(assert (=> b!333174 (= res!183597 call!26282)))

(assert (=> b!333174 (=> (not res!183597) (not e!204593))))

(declare-fun b!333175 () Bool)

(assert (=> b!333175 (= e!204602 e!204591)))

(declare-fun c!52106 () Bool)

(assert (=> b!333175 (= c!52106 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!333176 () Bool)

(declare-fun lt!159306 () Unit!10370)

(assert (=> b!333176 (= e!204592 lt!159306)))

(declare-fun lt!159309 () ListLongMap!3933)

(declare-fun getCurrentListMapNoExtraKeys!584 (array!17175 array!17173 (_ BitVec 32) (_ BitVec 32) V!10029 V!10029 (_ BitVec 32) Int) ListLongMap!3933)

(assert (=> b!333176 (= lt!159309 (getCurrentListMapNoExtraKeys!584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159294 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159294 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159312 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159312 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159310 () Unit!10370)

(declare-fun addStillContains!241 (ListLongMap!3933 (_ BitVec 64) V!10029 (_ BitVec 64)) Unit!10370)

(assert (=> b!333176 (= lt!159310 (addStillContains!241 lt!159309 lt!159294 zeroValue!1467 lt!159312))))

(declare-fun +!709 (ListLongMap!3933 tuple2!5006) ListLongMap!3933)

(assert (=> b!333176 (contains!2021 (+!709 lt!159309 (tuple2!5007 lt!159294 zeroValue!1467)) lt!159312)))

(declare-fun lt!159302 () Unit!10370)

(assert (=> b!333176 (= lt!159302 lt!159310)))

(declare-fun lt!159308 () ListLongMap!3933)

(assert (=> b!333176 (= lt!159308 (getCurrentListMapNoExtraKeys!584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159304 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159304 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159296 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159296 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159305 () Unit!10370)

(declare-fun addApplyDifferent!241 (ListLongMap!3933 (_ BitVec 64) V!10029 (_ BitVec 64)) Unit!10370)

(assert (=> b!333176 (= lt!159305 (addApplyDifferent!241 lt!159308 lt!159304 minValue!1467 lt!159296))))

(declare-fun apply!265 (ListLongMap!3933 (_ BitVec 64)) V!10029)

(assert (=> b!333176 (= (apply!265 (+!709 lt!159308 (tuple2!5007 lt!159304 minValue!1467)) lt!159296) (apply!265 lt!159308 lt!159296))))

(declare-fun lt!159311 () Unit!10370)

(assert (=> b!333176 (= lt!159311 lt!159305)))

(declare-fun lt!159297 () ListLongMap!3933)

(assert (=> b!333176 (= lt!159297 (getCurrentListMapNoExtraKeys!584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159301 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159301 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159299 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159299 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159298 () Unit!10370)

(assert (=> b!333176 (= lt!159298 (addApplyDifferent!241 lt!159297 lt!159301 zeroValue!1467 lt!159299))))

(assert (=> b!333176 (= (apply!265 (+!709 lt!159297 (tuple2!5007 lt!159301 zeroValue!1467)) lt!159299) (apply!265 lt!159297 lt!159299))))

(declare-fun lt!159307 () Unit!10370)

(assert (=> b!333176 (= lt!159307 lt!159298)))

(declare-fun lt!159292 () ListLongMap!3933)

(assert (=> b!333176 (= lt!159292 (getCurrentListMapNoExtraKeys!584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!159303 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159303 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!159295 () (_ BitVec 64))

(assert (=> b!333176 (= lt!159295 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!333176 (= lt!159306 (addApplyDifferent!241 lt!159292 lt!159303 minValue!1467 lt!159295))))

(assert (=> b!333176 (= (apply!265 (+!709 lt!159292 (tuple2!5007 lt!159303 minValue!1467)) lt!159295) (apply!265 lt!159292 lt!159295))))

(declare-fun b!333177 () Bool)

(declare-fun Unit!10373 () Unit!10370)

(assert (=> b!333177 (= e!204592 Unit!10373)))

(declare-fun call!26281 () ListLongMap!3933)

(declare-fun bm!26278 () Bool)

(declare-fun c!52109 () Bool)

(declare-fun call!26279 () ListLongMap!3933)

(declare-fun call!26284 () ListLongMap!3933)

(assert (=> bm!26278 (= call!26280 (+!709 (ite c!52104 call!26284 (ite c!52109 call!26281 call!26279)) (ite (or c!52104 c!52109) (tuple2!5007 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5007 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!333178 () Bool)

(assert (=> b!333178 (= e!204591 (not call!26282))))

(declare-fun b!333179 () Bool)

(assert (=> b!333179 (= e!204595 (+!709 call!26280 (tuple2!5007 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun bm!26279 () Bool)

(assert (=> bm!26279 (= call!26281 call!26284)))

(declare-fun b!333180 () Bool)

(declare-fun res!183599 () Bool)

(assert (=> b!333180 (=> (not res!183599) (not e!204602))))

(declare-fun e!204594 () Bool)

(assert (=> b!333180 (= res!183599 e!204594)))

(declare-fun res!183596 () Bool)

(assert (=> b!333180 (=> res!183596 e!204594)))

(assert (=> b!333180 (= res!183596 (not e!204601))))

(declare-fun res!183591 () Bool)

(assert (=> b!333180 (=> (not res!183591) (not e!204601))))

(assert (=> b!333180 (= res!183591 (bvslt #b00000000000000000000000000000000 (size!8468 _keys!1895)))))

(declare-fun b!333181 () Bool)

(assert (=> b!333181 (= e!204595 e!204603)))

(assert (=> b!333181 (= c!52109 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!333182 () Bool)

(assert (=> b!333182 (= e!204593 (= (apply!265 lt!159293 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!333183 () Bool)

(declare-fun e!204598 () Bool)

(assert (=> b!333183 (= e!204594 e!204598)))

(declare-fun res!183593 () Bool)

(assert (=> b!333183 (=> (not res!183593) (not e!204598))))

(assert (=> b!333183 (= res!183593 (contains!2021 lt!159293 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!333183 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8468 _keys!1895)))))

(declare-fun b!333184 () Bool)

(declare-fun res!183595 () Bool)

(assert (=> b!333184 (=> (not res!183595) (not e!204602))))

(declare-fun e!204596 () Bool)

(assert (=> b!333184 (= res!183595 e!204596)))

(declare-fun c!52107 () Bool)

(assert (=> b!333184 (= c!52107 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!333185 () Bool)

(declare-fun get!4474 (ValueCell!3051 V!10029) V!10029)

(declare-fun dynLambda!603 (Int (_ BitVec 64)) V!10029)

(assert (=> b!333185 (= e!204598 (= (apply!265 lt!159293 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)) (get!4474 (select (arr!8115 _values!1525) #b00000000000000000000000000000000) (dynLambda!603 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!333185 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8467 _values!1525)))))

(assert (=> b!333185 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!8468 _keys!1895)))))

(declare-fun b!333186 () Bool)

(assert (=> b!333186 (= e!204600 call!26279)))

(declare-fun bm!26280 () Bool)

(assert (=> bm!26280 (= call!26282 (contains!2021 lt!159293 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!333187 () Bool)

(declare-fun c!52108 () Bool)

(assert (=> b!333187 (= c!52108 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!333187 (= e!204603 e!204600)))

(declare-fun b!333188 () Bool)

(assert (=> b!333188 (= e!204596 (not call!26283))))

(declare-fun b!333189 () Bool)

(declare-fun e!204599 () Bool)

(assert (=> b!333189 (= e!204596 e!204599)))

(declare-fun res!183598 () Bool)

(assert (=> b!333189 (= res!183598 call!26283)))

(assert (=> b!333189 (=> (not res!183598) (not e!204599))))

(declare-fun bm!26281 () Bool)

(assert (=> bm!26281 (= call!26279 call!26281)))

(declare-fun b!333190 () Bool)

(assert (=> b!333190 (= e!204599 (= (apply!265 lt!159293 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!26282 () Bool)

(assert (=> bm!26282 (= call!26284 (getCurrentListMapNoExtraKeys!584 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(assert (= (and d!70463 c!52104) b!333179))

(assert (= (and d!70463 (not c!52104)) b!333181))

(assert (= (and b!333181 c!52109) b!333170))

(assert (= (and b!333181 (not c!52109)) b!333187))

(assert (= (and b!333187 c!52108) b!333173))

(assert (= (and b!333187 (not c!52108)) b!333186))

(assert (= (or b!333173 b!333186) bm!26281))

(assert (= (or b!333170 bm!26281) bm!26279))

(assert (= (or b!333170 b!333173) bm!26277))

(assert (= (or b!333179 bm!26279) bm!26282))

(assert (= (or b!333179 bm!26277) bm!26278))

(assert (= (and d!70463 res!183594) b!333172))

(assert (= (and d!70463 c!52105) b!333176))

(assert (= (and d!70463 (not c!52105)) b!333177))

(assert (= (and d!70463 res!183592) b!333180))

(assert (= (and b!333180 res!183591) b!333171))

(assert (= (and b!333180 (not res!183596)) b!333183))

(assert (= (and b!333183 res!183593) b!333185))

(assert (= (and b!333180 res!183599) b!333184))

(assert (= (and b!333184 c!52107) b!333189))

(assert (= (and b!333184 (not c!52107)) b!333188))

(assert (= (and b!333189 res!183598) b!333190))

(assert (= (or b!333189 b!333188) bm!26276))

(assert (= (and b!333184 res!183595) b!333175))

(assert (= (and b!333175 c!52106) b!333174))

(assert (= (and b!333175 (not c!52106)) b!333178))

(assert (= (and b!333174 res!183597) b!333182))

(assert (= (or b!333174 b!333178) bm!26280))

(declare-fun b_lambda!8429 () Bool)

(assert (=> (not b_lambda!8429) (not b!333185)))

(declare-fun t!9743 () Bool)

(declare-fun tb!3053 () Bool)

(assert (=> (and start!33592 (= defaultEntry!1528 defaultEntry!1528) t!9743) tb!3053))

(declare-fun result!5473 () Bool)

(assert (=> tb!3053 (= result!5473 tp_is_empty!6789)))

(assert (=> b!333185 t!9743))

(declare-fun b_and!14037 () Bool)

(assert (= b_and!14033 (and (=> t!9743 result!5473) b_and!14037)))

(declare-fun m!337469 () Bool)

(assert (=> b!333176 m!337469))

(declare-fun m!337471 () Bool)

(assert (=> b!333176 m!337471))

(declare-fun m!337473 () Bool)

(assert (=> b!333176 m!337473))

(declare-fun m!337475 () Bool)

(assert (=> b!333176 m!337475))

(declare-fun m!337477 () Bool)

(assert (=> b!333176 m!337477))

(declare-fun m!337479 () Bool)

(assert (=> b!333176 m!337479))

(declare-fun m!337481 () Bool)

(assert (=> b!333176 m!337481))

(declare-fun m!337483 () Bool)

(assert (=> b!333176 m!337483))

(assert (=> b!333176 m!337471))

(declare-fun m!337485 () Bool)

(assert (=> b!333176 m!337485))

(declare-fun m!337487 () Bool)

(assert (=> b!333176 m!337487))

(declare-fun m!337489 () Bool)

(assert (=> b!333176 m!337489))

(assert (=> b!333176 m!337469))

(declare-fun m!337491 () Bool)

(assert (=> b!333176 m!337491))

(declare-fun m!337493 () Bool)

(assert (=> b!333176 m!337493))

(assert (=> b!333176 m!337487))

(declare-fun m!337495 () Bool)

(assert (=> b!333176 m!337495))

(declare-fun m!337497 () Bool)

(assert (=> b!333176 m!337497))

(assert (=> b!333176 m!337497))

(declare-fun m!337499 () Bool)

(assert (=> b!333176 m!337499))

(declare-fun m!337501 () Bool)

(assert (=> b!333176 m!337501))

(declare-fun m!337503 () Bool)

(assert (=> b!333190 m!337503))

(assert (=> b!333171 m!337483))

(assert (=> b!333171 m!337483))

(declare-fun m!337505 () Bool)

(assert (=> b!333171 m!337505))

(assert (=> b!333185 m!337483))

(declare-fun m!337507 () Bool)

(assert (=> b!333185 m!337507))

(assert (=> b!333185 m!337483))

(declare-fun m!337509 () Bool)

(assert (=> b!333185 m!337509))

(declare-fun m!337511 () Bool)

(assert (=> b!333185 m!337511))

(assert (=> b!333185 m!337509))

(declare-fun m!337513 () Bool)

(assert (=> b!333185 m!337513))

(assert (=> b!333185 m!337511))

(declare-fun m!337515 () Bool)

(assert (=> bm!26280 m!337515))

(assert (=> b!333172 m!337483))

(assert (=> b!333172 m!337483))

(assert (=> b!333172 m!337505))

(assert (=> b!333183 m!337483))

(assert (=> b!333183 m!337483))

(declare-fun m!337517 () Bool)

(assert (=> b!333183 m!337517))

(declare-fun m!337519 () Bool)

(assert (=> b!333182 m!337519))

(assert (=> bm!26282 m!337481))

(assert (=> d!70463 m!337405))

(declare-fun m!337521 () Bool)

(assert (=> bm!26278 m!337521))

(declare-fun m!337523 () Bool)

(assert (=> bm!26276 m!337523))

(declare-fun m!337525 () Bool)

(assert (=> b!333179 m!337525))

(assert (=> b!333065 d!70463))

(declare-fun bm!26285 () Bool)

(declare-fun call!26288 () Bool)

(declare-fun c!52112 () Bool)

(assert (=> bm!26285 (= call!26288 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52112 (Cons!4642 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000) Nil!4643) Nil!4643)))))

(declare-fun b!333203 () Bool)

(declare-fun e!204615 () Bool)

(assert (=> b!333203 (= e!204615 call!26288)))

(declare-fun b!333204 () Bool)

(declare-fun e!204613 () Bool)

(assert (=> b!333204 (= e!204613 e!204615)))

(assert (=> b!333204 (= c!52112 (validKeyInArray!0 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!333205 () Bool)

(declare-fun e!204612 () Bool)

(declare-fun contains!2022 (List!4646 (_ BitVec 64)) Bool)

(assert (=> b!333205 (= e!204612 (contains!2022 Nil!4643 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70465 () Bool)

(declare-fun res!183606 () Bool)

(declare-fun e!204614 () Bool)

(assert (=> d!70465 (=> res!183606 e!204614)))

(assert (=> d!70465 (= res!183606 (bvsge #b00000000000000000000000000000000 (size!8468 _keys!1895)))))

(assert (=> d!70465 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4643) e!204614)))

(declare-fun b!333206 () Bool)

(assert (=> b!333206 (= e!204615 call!26288)))

(declare-fun b!333207 () Bool)

(assert (=> b!333207 (= e!204614 e!204613)))

(declare-fun res!183607 () Bool)

(assert (=> b!333207 (=> (not res!183607) (not e!204613))))

(assert (=> b!333207 (= res!183607 (not e!204612))))

(declare-fun res!183608 () Bool)

(assert (=> b!333207 (=> (not res!183608) (not e!204612))))

(assert (=> b!333207 (= res!183608 (validKeyInArray!0 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70465 (not res!183606)) b!333207))

(assert (= (and b!333207 res!183608) b!333205))

(assert (= (and b!333207 res!183607) b!333204))

(assert (= (and b!333204 c!52112) b!333203))

(assert (= (and b!333204 (not c!52112)) b!333206))

(assert (= (or b!333203 b!333206) bm!26285))

(assert (=> bm!26285 m!337483))

(declare-fun m!337527 () Bool)

(assert (=> bm!26285 m!337527))

(assert (=> b!333204 m!337483))

(assert (=> b!333204 m!337483))

(assert (=> b!333204 m!337505))

(assert (=> b!333205 m!337483))

(assert (=> b!333205 m!337483))

(declare-fun m!337529 () Bool)

(assert (=> b!333205 m!337529))

(assert (=> b!333207 m!337483))

(assert (=> b!333207 m!337483))

(assert (=> b!333207 m!337505))

(assert (=> b!333070 d!70465))

(declare-fun b!333216 () Bool)

(declare-fun e!204624 () Bool)

(declare-fun e!204622 () Bool)

(assert (=> b!333216 (= e!204624 e!204622)))

(declare-fun c!52115 () Bool)

(assert (=> b!333216 (= c!52115 (validKeyInArray!0 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70467 () Bool)

(declare-fun res!183613 () Bool)

(assert (=> d!70467 (=> res!183613 e!204624)))

(assert (=> d!70467 (= res!183613 (bvsge #b00000000000000000000000000000000 (size!8468 _keys!1895)))))

(assert (=> d!70467 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!204624)))

(declare-fun bm!26288 () Bool)

(declare-fun call!26291 () Bool)

(assert (=> bm!26288 (= call!26291 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!333217 () Bool)

(declare-fun e!204623 () Bool)

(assert (=> b!333217 (= e!204623 call!26291)))

(declare-fun b!333218 () Bool)

(assert (=> b!333218 (= e!204622 call!26291)))

(declare-fun b!333219 () Bool)

(assert (=> b!333219 (= e!204622 e!204623)))

(declare-fun lt!159321 () (_ BitVec 64))

(assert (=> b!333219 (= lt!159321 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!159320 () Unit!10370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17175 (_ BitVec 64) (_ BitVec 32)) Unit!10370)

(assert (=> b!333219 (= lt!159320 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!159321 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!333219 (arrayContainsKey!0 _keys!1895 lt!159321 #b00000000000000000000000000000000)))

(declare-fun lt!159319 () Unit!10370)

(assert (=> b!333219 (= lt!159319 lt!159320)))

(declare-fun res!183614 () Bool)

(assert (=> b!333219 (= res!183614 (= (seekEntryOrOpen!0 (select (arr!8116 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3149 #b00000000000000000000000000000000)))))

(assert (=> b!333219 (=> (not res!183614) (not e!204623))))

(assert (= (and d!70467 (not res!183613)) b!333216))

(assert (= (and b!333216 c!52115) b!333219))

(assert (= (and b!333216 (not c!52115)) b!333218))

(assert (= (and b!333219 res!183614) b!333217))

(assert (= (or b!333217 b!333218) bm!26288))

(assert (=> b!333216 m!337483))

(assert (=> b!333216 m!337483))

(assert (=> b!333216 m!337505))

(declare-fun m!337531 () Bool)

(assert (=> bm!26288 m!337531))

(assert (=> b!333219 m!337483))

(declare-fun m!337533 () Bool)

(assert (=> b!333219 m!337533))

(declare-fun m!337535 () Bool)

(assert (=> b!333219 m!337535))

(assert (=> b!333219 m!337483))

(declare-fun m!337537 () Bool)

(assert (=> b!333219 m!337537))

(assert (=> b!333073 d!70467))

(declare-fun mapIsEmpty!11583 () Bool)

(declare-fun mapRes!11583 () Bool)

(assert (=> mapIsEmpty!11583 mapRes!11583))

(declare-fun b!333226 () Bool)

(declare-fun e!204630 () Bool)

(assert (=> b!333226 (= e!204630 tp_is_empty!6789)))

(declare-fun condMapEmpty!11583 () Bool)

(declare-fun mapDefault!11583 () ValueCell!3051)

(assert (=> mapNonEmpty!11577 (= condMapEmpty!11583 (= mapRest!11577 ((as const (Array (_ BitVec 32) ValueCell!3051)) mapDefault!11583)))))

(declare-fun e!204629 () Bool)

(assert (=> mapNonEmpty!11577 (= tp!24012 (and e!204629 mapRes!11583))))

(declare-fun mapNonEmpty!11583 () Bool)

(declare-fun tp!24021 () Bool)

(assert (=> mapNonEmpty!11583 (= mapRes!11583 (and tp!24021 e!204630))))

(declare-fun mapKey!11583 () (_ BitVec 32))

(declare-fun mapRest!11583 () (Array (_ BitVec 32) ValueCell!3051))

(declare-fun mapValue!11583 () ValueCell!3051)

(assert (=> mapNonEmpty!11583 (= mapRest!11577 (store mapRest!11583 mapKey!11583 mapValue!11583))))

(declare-fun b!333227 () Bool)

(assert (=> b!333227 (= e!204629 tp_is_empty!6789)))

(assert (= (and mapNonEmpty!11577 condMapEmpty!11583) mapIsEmpty!11583))

(assert (= (and mapNonEmpty!11577 (not condMapEmpty!11583)) mapNonEmpty!11583))

(assert (= (and mapNonEmpty!11583 ((_ is ValueCellFull!3051) mapValue!11583)) b!333226))

(assert (= (and mapNonEmpty!11577 ((_ is ValueCellFull!3051) mapDefault!11583)) b!333227))

(declare-fun m!337539 () Bool)

(assert (=> mapNonEmpty!11583 m!337539))

(declare-fun b_lambda!8431 () Bool)

(assert (= b_lambda!8429 (or (and start!33592 b_free!6837) b_lambda!8431)))

(check-sat tp_is_empty!6789 (not b!333207) (not b!333183) (not mapNonEmpty!11583) (not b!333127) (not b!333190) (not bm!26278) (not d!70461) (not bm!26285) (not d!70463) b_and!14037 (not b_next!6837) (not b!333116) (not b!333172) (not b!333176) (not b!333171) (not bm!26280) (not b!333179) (not d!70453) (not b_lambda!8431) (not b!333216) (not b!333182) (not bm!26276) (not b!333205) (not b!333125) (not b!333204) (not bm!26282) (not bm!26288) (not b!333185) (not b!333219))
(check-sat b_and!14037 (not b_next!6837))
