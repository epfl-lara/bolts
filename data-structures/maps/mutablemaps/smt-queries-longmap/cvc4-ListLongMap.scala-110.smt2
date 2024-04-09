; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1822 () Bool)

(assert start!1822)

(declare-fun b_free!467 () Bool)

(declare-fun b_next!467 () Bool)

(assert (=> start!1822 (= b_free!467 (not b_next!467))))

(declare-fun tp!2120 () Bool)

(declare-fun b_and!865 () Bool)

(assert (=> start!1822 (= tp!2120 b_and!865)))

(declare-fun res!10165 () Bool)

(declare-fun e!7615 () Bool)

(assert (=> start!1822 (=> (not res!10165) (not e!7615))))

(declare-fun initialSize!1 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1822 (= res!10165 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(assert (=> start!1822 e!7615))

(assert (=> start!1822 true))

(assert (=> start!1822 tp!2120))

(declare-fun b!12703 () Bool)

(declare-fun e!7616 () Bool)

(assert (=> b!12703 (= e!7615 e!7616)))

(declare-fun res!10164 () Bool)

(assert (=> b!12703 (=> res!10164 e!7616)))

(declare-datatypes ((array!873 0))(
  ( (array!874 (arr!419 (Array (_ BitVec 32) (_ BitVec 64))) (size!483 (_ BitVec 32))) )
))
(declare-datatypes ((V!865 0))(
  ( (V!866 (val!329 Int)) )
))
(declare-datatypes ((ValueCell!220 0))(
  ( (ValueCellFull!220 (v!1386 V!865)) (EmptyCell!220) )
))
(declare-datatypes ((array!875 0))(
  ( (array!876 (arr!420 (Array (_ BitVec 32) ValueCell!220)) (size!484 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!26 0))(
  ( (LongMapFixedSize!27 (defaultEntry!1617 Int) (mask!4436 (_ BitVec 32)) (extraKeys!1534 (_ BitVec 32)) (zeroValue!1557 V!865) (minValue!1557 V!865) (_size!44 (_ BitVec 32)) (_keys!3039 array!873) (_values!1618 array!875) (_vacant!44 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!26 0))(
  ( (Cell!27 (v!1387 LongMapFixedSize!26)) )
))
(declare-datatypes ((LongMap!26 0))(
  ( (LongMap!27 (underlying!24 Cell!26)) )
))
(declare-fun lt!3192 () LongMap!26)

(declare-fun valid!18 (LongMap!26) Bool)

(assert (=> b!12703 (= res!10164 (not (valid!18 lt!3192)))))

(declare-fun defaultEntry!183 () Int)

(declare-fun getNewLongMapFixedSize!6 ((_ BitVec 32) Int) LongMapFixedSize!26)

(assert (=> b!12703 (= lt!3192 (LongMap!27 (Cell!27 (getNewLongMapFixedSize!6 (bvsub initialSize!1 #b00000000000000000000000000000001) defaultEntry!183))))))

(declare-fun b!12704 () Bool)

(declare-fun size!485 (LongMap!26) (_ BitVec 32))

(assert (=> b!12704 (= e!7616 (not (= (size!485 lt!3192) #b00000000000000000000000000000000)))))

(assert (= (and start!1822 res!10165) b!12703))

(assert (= (and b!12703 (not res!10164)) b!12704))

(declare-fun m!8613 () Bool)

(assert (=> start!1822 m!8613))

(declare-fun m!8615 () Bool)

(assert (=> b!12703 m!8615))

(declare-fun m!8617 () Bool)

(assert (=> b!12703 m!8617))

(declare-fun m!8619 () Bool)

(assert (=> b!12704 m!8619))

(push 1)

(assert (not start!1822))

(assert (not b!12703))

(assert (not b!12704))

(assert b_and!865)

(assert (not b_next!467))

(check-sat)

(pop 1)

(push 1)

(assert b_and!865)

(assert (not b_next!467))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1821 () Bool)

(declare-fun valid!21 (LongMapFixedSize!26) Bool)

(assert (=> d!1821 (= (valid!18 lt!3192) (valid!21 (v!1387 (underlying!24 lt!3192))))))

(declare-fun bs!485 () Bool)

(assert (= bs!485 d!1821))

(declare-fun m!8625 () Bool)

(assert (=> bs!485 m!8625))

(assert (=> b!12703 d!1821))

(declare-fun b!12753 () Bool)

(declare-datatypes ((Unit!277 0))(
  ( (Unit!278) )
))
(declare-fun e!7643 () Unit!277)

(declare-fun Unit!279 () Unit!277)

(assert (=> b!12753 (= e!7643 Unit!279)))

(declare-fun b!12754 () Bool)

(declare-fun e!7642 () Bool)

(declare-fun lt!3387 () LongMapFixedSize!26)

(declare-datatypes ((tuple2!440 0))(
  ( (tuple2!441 (_1!220 (_ BitVec 64)) (_2!220 V!865)) )
))
(declare-datatypes ((List!377 0))(
  ( (Nil!374) (Cons!373 (h!939 tuple2!440) (t!2770 List!377)) )
))
(declare-datatypes ((ListLongMap!379 0))(
  ( (ListLongMap!380 (toList!205 List!377)) )
))
(declare-fun map!242 (LongMapFixedSize!26) ListLongMap!379)

(assert (=> b!12754 (= e!7642 (= (map!242 lt!3387) (ListLongMap!380 Nil!374)))))

(declare-fun b!12755 () Bool)

(declare-fun Unit!280 () Unit!277)

(assert (=> b!12755 (= e!7643 Unit!280)))

(declare-fun lt!3379 () tuple2!440)

(declare-fun lt!3389 () LongMapFixedSize!26)

(declare-fun head!780 (List!377) tuple2!440)

(assert (=> b!12755 (= lt!3379 (head!780 (toList!205 (map!242 lt!3389))))))

(declare-fun lt!3393 () array!873)

(assert (=> b!12755 (= lt!3393 (array!874 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3377 () (_ BitVec 32))

(assert (=> b!12755 (= lt!3377 #b00000000000000000000000000000000)))

(declare-fun lt!3398 () Unit!277)

(declare-fun lemmaKeyInListMapIsInArray!79 (array!873 array!875 (_ BitVec 32) (_ BitVec 32) V!865 V!865 (_ BitVec 64) Int) Unit!277)

(declare-fun dynLambda!81 (Int (_ BitVec 64)) V!865)

(assert (=> b!12755 (= lt!3398 (lemmaKeyInListMapIsInArray!79 lt!3393 (array!876 ((as const (Array (_ BitVec 32) ValueCell!220)) EmptyCell!220) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3377 (dynLambda!81 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!81 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!220 lt!3379) defaultEntry!183))))

(declare-fun c!1160 () Bool)

(assert (=> b!12755 (= c!1160 (and (not (= (_1!220 lt!3379) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!220 lt!3379) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!7641 () Bool)

(assert (=> b!12755 e!7641))

(declare-fun lt!3386 () Unit!277)

(assert (=> b!12755 (= lt!3386 lt!3398)))

(declare-fun lt!3397 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!873 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!12755 (= lt!3397 (arrayScanForKey!0 (array!874 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!220 lt!3379) #b00000000000000000000000000000000))))

(assert (=> b!12755 false))

(declare-fun b!12757 () Bool)

(assert (=> b!12757 (= e!7641 (ite (= (_1!220 lt!3379) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!3377 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!3377 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!12758 () Bool)

(declare-fun res!10182 () Bool)

(assert (=> b!12758 (=> (not res!10182) (not e!7642))))

(assert (=> b!12758 (= res!10182 (= (mask!4436 lt!3387) (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(declare-fun d!1827 () Bool)

(assert (=> d!1827 e!7642))

(declare-fun res!10183 () Bool)

(assert (=> d!1827 (=> (not res!10183) (not e!7642))))

(assert (=> d!1827 (= res!10183 (valid!21 lt!3387))))

(assert (=> d!1827 (= lt!3387 lt!3389)))

(declare-fun lt!3382 () Unit!277)

(assert (=> d!1827 (= lt!3382 e!7643)))

(declare-fun c!1159 () Bool)

(assert (=> d!1827 (= c!1159 (not (= (map!242 lt!3389) (ListLongMap!380 Nil!374))))))

(declare-fun lt!3390 () Unit!277)

(declare-fun lt!3395 () Unit!277)

(assert (=> d!1827 (= lt!3390 lt!3395)))

(declare-fun lt!3378 () array!873)

(declare-fun lt!3391 () (_ BitVec 32))

(declare-datatypes ((List!379 0))(
  ( (Nil!376) (Cons!375 (h!941 (_ BitVec 64)) (t!2772 List!379)) )
))
(declare-fun lt!3396 () List!379)

(declare-fun arrayNoDuplicates!0 (array!873 (_ BitVec 32) List!379) Bool)

(assert (=> d!1827 (arrayNoDuplicates!0 lt!3378 lt!3391 lt!3396)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!873 (_ BitVec 32) (_ BitVec 32) List!379) Unit!277)

(assert (=> d!1827 (= lt!3395 (lemmaArrayNoDuplicatesInAll0Array!0 lt!3378 lt!3391 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!3396))))

(assert (=> d!1827 (= lt!3396 Nil!376)))

(assert (=> d!1827 (= lt!3391 #b00000000000000000000000000000000)))

(assert (=> d!1827 (= lt!3378 (array!874 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3385 () Unit!277)

(declare-fun lt!3394 () Unit!277)

(assert (=> d!1827 (= lt!3385 lt!3394)))

(declare-fun lt!3384 () (_ BitVec 32))

(declare-fun lt!3392 () array!873)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!873 (_ BitVec 32)) Bool)

(assert (=> d!1827 (arrayForallSeekEntryOrOpenFound!0 lt!3384 lt!3392 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!873 (_ BitVec 32) (_ BitVec 32)) Unit!277)

(assert (=> d!1827 (= lt!3394 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!3392 (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3384))))

(assert (=> d!1827 (= lt!3384 #b00000000000000000000000000000000)))

(assert (=> d!1827 (= lt!3392 (array!874 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3381 () Unit!277)

(declare-fun lt!3380 () Unit!277)

(assert (=> d!1827 (= lt!3381 lt!3380)))

(declare-fun lt!3399 () array!873)

(declare-fun lt!3383 () (_ BitVec 32))

(declare-fun lt!3388 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!873 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1827 (= (arrayCountValidKeys!0 lt!3399 lt!3383 lt!3388) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!873 (_ BitVec 32) (_ BitVec 32)) Unit!277)

(assert (=> d!1827 (= lt!3380 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!3399 lt!3383 lt!3388))))

(assert (=> d!1827 (= lt!3388 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!1827 (= lt!3383 #b00000000000000000000000000000000)))

(assert (=> d!1827 (= lt!3399 (array!874 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> d!1827 (= lt!3389 (LongMapFixedSize!27 defaultEntry!183 (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000000 (dynLambda!81 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!81 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!874 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!876 ((as const (Array (_ BitVec 32) ValueCell!220)) EmptyCell!220) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!1827 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(assert (=> d!1827 (= (getNewLongMapFixedSize!6 (bvsub initialSize!1 #b00000000000000000000000000000001) defaultEntry!183) lt!3387)))

(declare-fun b!12756 () Bool)

(declare-fun arrayContainsKey!0 (array!873 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!12756 (= e!7641 (arrayContainsKey!0 lt!3393 (_1!220 lt!3379) #b00000000000000000000000000000000))))

(assert (= (and d!1827 c!1159) b!12755))

(assert (= (and d!1827 (not c!1159)) b!12753))

(assert (= (and b!12755 c!1160) b!12756))

(assert (= (and b!12755 (not c!1160)) b!12757))

(assert (= (and d!1827 res!10183) b!12758))

(assert (= (and b!12758 res!10182) b!12754))

(declare-fun b_lambda!847 () Bool)

(assert (=> (not b_lambda!847) (not b!12755)))

(declare-fun t!2766 () Bool)

(declare-fun tb!391 () Bool)

(assert (=> (and start!1822 (= defaultEntry!183 defaultEntry!183) t!2766) tb!391))

(declare-fun result!617 () Bool)

(declare-fun tp_is_empty!641 () Bool)

(assert (=> tb!391 (= result!617 tp_is_empty!641)))

(assert (=> b!12755 t!2766))

(declare-fun b_and!875 () Bool)

(assert (= b_and!865 (and (=> t!2766 result!617) b_and!875)))

(declare-fun b_lambda!849 () Bool)

(assert (=> (not b_lambda!849) (not d!1827)))

(assert (=> d!1827 t!2766))

(declare-fun b_and!877 () Bool)

(assert (= b_and!875 (and (=> t!2766 result!617) b_and!877)))

(declare-fun m!8685 () Bool)

(assert (=> b!12754 m!8685))

(declare-fun m!8687 () Bool)

(assert (=> b!12755 m!8687))

(declare-fun m!8689 () Bool)

(assert (=> b!12755 m!8689))

(assert (=> b!12755 m!8689))

(declare-fun m!8691 () Bool)

(assert (=> b!12755 m!8691))

(assert (=> b!12755 m!8689))

(declare-fun m!8693 () Bool)

(assert (=> b!12755 m!8693))

(declare-fun m!8695 () Bool)

(assert (=> b!12755 m!8695))

(declare-fun m!8697 () Bool)

(assert (=> d!1827 m!8697))

(declare-fun m!8699 () Bool)

(assert (=> d!1827 m!8699))

(declare-fun m!8701 () Bool)

(assert (=> d!1827 m!8701))

(declare-fun m!8703 () Bool)

(assert (=> d!1827 m!8703))

(declare-fun m!8705 () Bool)

(assert (=> d!1827 m!8705))

(declare-fun m!8707 () Bool)

(assert (=> d!1827 m!8707))

(declare-fun m!8709 () Bool)

(assert (=> d!1827 m!8709))

(assert (=> d!1827 m!8689))

(assert (=> d!1827 m!8613))

(assert (=> d!1827 m!8695))

(declare-fun m!8711 () Bool)

(assert (=> b!12756 m!8711))

(assert (=> b!12703 d!1827))

(declare-fun d!1835 () Bool)

(assert (=> d!1835 (= (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!1 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!1822 d!1835))

(declare-fun d!1839 () Bool)

(declare-fun size!488 (LongMapFixedSize!26) (_ BitVec 32))

(assert (=> d!1839 (= (size!485 lt!3192) (size!488 (v!1387 (underlying!24 lt!3192))))))

(declare-fun bs!488 () Bool)

(assert (= bs!488 d!1839))

(declare-fun m!8715 () Bool)

(assert (=> bs!488 m!8715))

(assert (=> b!12704 d!1839))

(declare-fun b_lambda!859 () Bool)

(assert (= b_lambda!847 (or (and start!1822 b_free!467) b_lambda!859)))

(declare-fun b_lambda!861 () Bool)

(assert (= b_lambda!849 (or (and start!1822 b_free!467) b_lambda!861)))

(push 1)

(assert (not b!12756))

(assert (not d!1821))

(assert b_and!877)

(assert (not b_lambda!859))

(assert (not b!12754))

(assert (not d!1827))

(assert (not b_next!467))

(assert (not b!12755))

(assert tp_is_empty!641)

(assert (not d!1839))

(assert (not b_lambda!861))

(check-sat)

(pop 1)

(push 1)

(assert b_and!877)

(assert (not b_next!467))

(check-sat)

(get-model)

(pop 1)

