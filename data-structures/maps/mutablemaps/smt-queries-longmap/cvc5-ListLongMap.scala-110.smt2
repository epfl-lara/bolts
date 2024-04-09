; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1818 () Bool)

(assert start!1818)

(declare-fun b_free!463 () Bool)

(declare-fun b_next!463 () Bool)

(assert (=> start!1818 (= b_free!463 (not b_next!463))))

(declare-fun tp!2114 () Bool)

(declare-fun b_and!861 () Bool)

(assert (=> start!1818 (= tp!2114 b_and!861)))

(declare-fun res!10152 () Bool)

(declare-fun e!7604 () Bool)

(assert (=> start!1818 (=> (not res!10152) (not e!7604))))

(declare-fun initialSize!1 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!1818 (= res!10152 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(assert (=> start!1818 e!7604))

(assert (=> start!1818 true))

(assert (=> start!1818 tp!2114))

(declare-fun b!12691 () Bool)

(declare-fun e!7603 () Bool)

(assert (=> b!12691 (= e!7604 e!7603)))

(declare-fun res!10153 () Bool)

(assert (=> b!12691 (=> res!10153 e!7603)))

(declare-datatypes ((array!865 0))(
  ( (array!866 (arr!415 (Array (_ BitVec 32) (_ BitVec 64))) (size!477 (_ BitVec 32))) )
))
(declare-datatypes ((V!861 0))(
  ( (V!862 (val!327 Int)) )
))
(declare-datatypes ((ValueCell!218 0))(
  ( (ValueCellFull!218 (v!1382 V!861)) (EmptyCell!218) )
))
(declare-datatypes ((array!867 0))(
  ( (array!868 (arr!416 (Array (_ BitVec 32) ValueCell!218)) (size!478 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!22 0))(
  ( (LongMapFixedSize!23 (defaultEntry!1615 Int) (mask!4434 (_ BitVec 32)) (extraKeys!1532 (_ BitVec 32)) (zeroValue!1555 V!861) (minValue!1555 V!861) (_size!42 (_ BitVec 32)) (_keys!3037 array!865) (_values!1616 array!867) (_vacant!42 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!22 0))(
  ( (Cell!23 (v!1383 LongMapFixedSize!22)) )
))
(declare-datatypes ((LongMap!22 0))(
  ( (LongMap!23 (underlying!22 Cell!22)) )
))
(declare-fun lt!3186 () LongMap!22)

(declare-fun valid!16 (LongMap!22) Bool)

(assert (=> b!12691 (= res!10153 (not (valid!16 lt!3186)))))

(declare-fun defaultEntry!183 () Int)

(declare-fun getNewLongMapFixedSize!4 ((_ BitVec 32) Int) LongMapFixedSize!22)

(assert (=> b!12691 (= lt!3186 (LongMap!23 (Cell!23 (getNewLongMapFixedSize!4 (bvsub initialSize!1 #b00000000000000000000000000000001) defaultEntry!183))))))

(declare-fun b!12692 () Bool)

(declare-fun size!479 (LongMap!22) (_ BitVec 32))

(assert (=> b!12692 (= e!7603 (not (= (size!479 lt!3186) #b00000000000000000000000000000000)))))

(assert (= (and start!1818 res!10152) b!12691))

(assert (= (and b!12691 (not res!10153)) b!12692))

(declare-fun m!8597 () Bool)

(assert (=> start!1818 m!8597))

(declare-fun m!8599 () Bool)

(assert (=> b!12691 m!8599))

(declare-fun m!8601 () Bool)

(assert (=> b!12691 m!8601))

(declare-fun m!8603 () Bool)

(assert (=> b!12692 m!8603))

(push 1)

(assert (not start!1818))

(assert (not b!12691))

(assert b_and!861)

(assert (not b!12692))

(assert (not b_next!463))

(check-sat)

(pop 1)

(push 1)

(assert b_and!861)

(assert (not b_next!463))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1817 () Bool)

(declare-fun size!486 (LongMapFixedSize!22) (_ BitVec 32))

(assert (=> d!1817 (= (size!479 lt!3186) (size!486 (v!1383 (underlying!22 lt!3186))))))

(declare-fun bs!483 () Bool)

(assert (= bs!483 d!1817))

(declare-fun m!8621 () Bool)

(assert (=> bs!483 m!8621))

(assert (=> b!12692 d!1817))

(declare-fun d!1819 () Bool)

(declare-fun valid!20 (LongMapFixedSize!22) Bool)

(assert (=> d!1819 (= (valid!16 lt!3186) (valid!20 (v!1383 (underlying!22 lt!3186))))))

(declare-fun bs!484 () Bool)

(assert (= bs!484 d!1819))

(declare-fun m!8623 () Bool)

(assert (=> bs!484 m!8623))

(assert (=> b!12691 d!1819))

(declare-fun b!12743 () Bool)

(declare-datatypes ((Unit!272 0))(
  ( (Unit!273) )
))
(declare-fun e!7638 () Unit!272)

(declare-fun Unit!276 () Unit!272)

(assert (=> b!12743 (= e!7638 Unit!276)))

(declare-datatypes ((tuple2!436 0))(
  ( (tuple2!437 (_1!218 (_ BitVec 64)) (_2!218 V!861)) )
))
(declare-fun lt!3340 () tuple2!436)

(declare-fun lt!3343 () LongMapFixedSize!22)

(declare-datatypes ((List!375 0))(
  ( (Nil!372) (Cons!371 (h!937 tuple2!436) (t!2768 List!375)) )
))
(declare-fun head!779 (List!375) tuple2!436)

(declare-datatypes ((ListLongMap!377 0))(
  ( (ListLongMap!378 (toList!204 List!375)) )
))
(declare-fun map!243 (LongMapFixedSize!22) ListLongMap!377)

(assert (=> b!12743 (= lt!3340 (head!779 (toList!204 (map!243 lt!3343))))))

(declare-fun lt!3345 () array!865)

(assert (=> b!12743 (= lt!3345 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3357 () (_ BitVec 32))

(assert (=> b!12743 (= lt!3357 #b00000000000000000000000000000000)))

(declare-fun lt!3359 () Unit!272)

(declare-fun lemmaKeyInListMapIsInArray!78 (array!865 array!867 (_ BitVec 32) (_ BitVec 32) V!861 V!861 (_ BitVec 64) Int) Unit!272)

(declare-fun dynLambda!79 (Int (_ BitVec 64)) V!861)

(assert (=> b!12743 (= lt!3359 (lemmaKeyInListMapIsInArray!78 lt!3345 (array!868 ((as const (Array (_ BitVec 32) ValueCell!218)) EmptyCell!218) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3357 (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!218 lt!3340) defaultEntry!183))))

(declare-fun c!1156 () Bool)

(assert (=> b!12743 (= c!1156 (and (not (= (_1!218 lt!3340) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!218 lt!3340) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!7637 () Bool)

(assert (=> b!12743 e!7637))

(declare-fun lt!3350 () Unit!272)

(assert (=> b!12743 (= lt!3350 lt!3359)))

(declare-fun lt!3370 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!865 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!12743 (= lt!3370 (arrayScanForKey!0 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!218 lt!3340) #b00000000000000000000000000000000))))

(assert (=> b!12743 false))

(declare-fun b!12745 () Bool)

(declare-fun arrayContainsKey!0 (array!865 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!12745 (= e!7637 (arrayContainsKey!0 lt!3345 (_1!218 lt!3340) #b00000000000000000000000000000000))))

(declare-fun b!12747 () Bool)

(assert (=> b!12747 (= e!7637 (ite (= (_1!218 lt!3340) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!3357 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!3357 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!12749 () Bool)

(declare-fun Unit!281 () Unit!272)

(assert (=> b!12749 (= e!7638 Unit!281)))

(declare-fun b!12751 () Bool)

(declare-fun e!7635 () Bool)

(declare-fun lt!3335 () LongMapFixedSize!22)

(assert (=> b!12751 (= e!7635 (= (map!243 lt!3335) (ListLongMap!378 Nil!372)))))

(declare-fun b!12741 () Bool)

(declare-fun res!10179 () Bool)

(assert (=> b!12741 (=> (not res!10179) (not e!7635))))

(assert (=> b!12741 (= res!10179 (= (mask!4434 lt!3335) (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(declare-fun d!1825 () Bool)

(assert (=> d!1825 e!7635))

(declare-fun res!10181 () Bool)

(assert (=> d!1825 (=> (not res!10181) (not e!7635))))

(assert (=> d!1825 (= res!10181 (valid!20 lt!3335))))

(assert (=> d!1825 (= lt!3335 lt!3343)))

(declare-fun lt!3333 () Unit!272)

(assert (=> d!1825 (= lt!3333 e!7638)))

(declare-fun c!1158 () Bool)

(assert (=> d!1825 (= c!1158 (not (= (map!243 lt!3343) (ListLongMap!378 Nil!372))))))

(declare-fun lt!3347 () Unit!272)

(declare-fun lt!3372 () Unit!272)

(assert (=> d!1825 (= lt!3347 lt!3372)))

(declare-fun lt!3352 () array!865)

(declare-fun lt!3338 () (_ BitVec 32))

(declare-datatypes ((List!378 0))(
  ( (Nil!375) (Cons!374 (h!940 (_ BitVec 64)) (t!2771 List!378)) )
))
(declare-fun lt!3353 () List!378)

(declare-fun arrayNoDuplicates!0 (array!865 (_ BitVec 32) List!378) Bool)

(assert (=> d!1825 (arrayNoDuplicates!0 lt!3352 lt!3338 lt!3353)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!865 (_ BitVec 32) (_ BitVec 32) List!378) Unit!272)

(assert (=> d!1825 (= lt!3372 (lemmaArrayNoDuplicatesInAll0Array!0 lt!3352 lt!3338 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!3353))))

(assert (=> d!1825 (= lt!3353 Nil!375)))

(assert (=> d!1825 (= lt!3338 #b00000000000000000000000000000000)))

(assert (=> d!1825 (= lt!3352 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3355 () Unit!272)

(declare-fun lt!3361 () Unit!272)

(assert (=> d!1825 (= lt!3355 lt!3361)))

(declare-fun lt!3332 () (_ BitVec 32))

(declare-fun lt!3364 () array!865)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!865 (_ BitVec 32)) Bool)

(assert (=> d!1825 (arrayForallSeekEntryOrOpenFound!0 lt!3332 lt!3364 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!865 (_ BitVec 32) (_ BitVec 32)) Unit!272)

(assert (=> d!1825 (= lt!3361 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!3364 (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3332))))

(assert (=> d!1825 (= lt!3332 #b00000000000000000000000000000000)))

(assert (=> d!1825 (= lt!3364 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!3366 () Unit!272)

(declare-fun lt!3341 () Unit!272)

(assert (=> d!1825 (= lt!3366 lt!3341)))

(declare-fun lt!3368 () array!865)

(declare-fun lt!3375 () (_ BitVec 32))

(declare-fun lt!3362 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!865 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1825 (= (arrayCountValidKeys!0 lt!3368 lt!3375 lt!3362) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!865 (_ BitVec 32) (_ BitVec 32)) Unit!272)

(assert (=> d!1825 (= lt!3341 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!3368 lt!3375 lt!3362))))

(assert (=> d!1825 (= lt!3362 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!1825 (= lt!3375 #b00000000000000000000000000000000)))

(assert (=> d!1825 (= lt!3368 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> d!1825 (= lt!3343 (LongMapFixedSize!23 defaultEntry!183 (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000000 (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!868 ((as const (Array (_ BitVec 32) ValueCell!218)) EmptyCell!218) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!1825 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(assert (=> d!1825 (= (getNewLongMapFixedSize!4 (bvsub initialSize!1 #b00000000000000000000000000000001) defaultEntry!183) lt!3335)))

(assert (= (and d!1825 c!1158) b!12743))

(assert (= (and d!1825 (not c!1158)) b!12749))

(assert (= (and b!12743 c!1156) b!12745))

(assert (= (and b!12743 (not c!1156)) b!12747))

(assert (= (and d!1825 res!10181) b!12741))

(assert (= (and b!12741 res!10179) b!12751))

(declare-fun b_lambda!841 () Bool)

(assert (=> (not b_lambda!841) (not b!12743)))

(declare-fun t!2764 () Bool)

(declare-fun tb!389 () Bool)

(assert (=> (and start!1818 (= defaultEntry!183 defaultEntry!183) t!2764) tb!389))

(declare-fun result!610 () Bool)

(declare-fun tp_is_empty!638 () Bool)

(assert (=> tb!389 (= result!610 tp_is_empty!638)))

(assert (=> b!12743 t!2764))

(declare-fun b_and!868 () Bool)

(assert (= b_and!861 (and (=> t!2764 result!610) b_and!868)))

(declare-fun b_lambda!845 () Bool)

(assert (=> (not b_lambda!845) (not d!1825)))

(assert (=> d!1825 t!2764))

(declare-fun b_and!871 () Bool)

(assert (= b_and!868 (and (=> t!2764 result!610) b_and!871)))

(declare-fun m!8631 () Bool)

(assert (=> b!12743 m!8631))

(assert (=> b!12743 m!8631))

(declare-fun m!8637 () Bool)

(assert (=> b!12743 m!8637))

(assert (=> b!12743 m!8631))

(declare-fun m!8645 () Bool)

(assert (=> b!12743 m!8645))

(declare-fun m!8649 () Bool)

(assert (=> b!12743 m!8649))

(declare-fun m!8653 () Bool)

(assert (=> b!12743 m!8653))

(declare-fun m!8655 () Bool)

(assert (=> b!12745 m!8655))

(declare-fun m!8659 () Bool)

(assert (=> b!12751 m!8659))

(declare-fun m!8663 () Bool)

(assert (=> d!1825 m!8663))

(declare-fun m!8667 () Bool)

(assert (=> d!1825 m!8667))

(declare-fun m!8669 () Bool)

(assert (=> d!1825 m!8669))

(declare-fun m!8671 () Bool)

(assert (=> d!1825 m!8671))

(declare-fun m!8673 () Bool)

(assert (=> d!1825 m!8673))

(assert (=> d!1825 m!8631))

(assert (=> d!1825 m!8653))

(declare-fun m!8677 () Bool)

(assert (=> d!1825 m!8677))

(assert (=> d!1825 m!8597))

(declare-fun m!8681 () Bool)

(assert (=> d!1825 m!8681))

(assert (=> b!12691 d!1825))

(declare-fun d!1831 () Bool)

(assert (=> d!1831 (= (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!1 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!1 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!1818 d!1831))

(declare-fun b_lambda!851 () Bool)

(assert (= b_lambda!845 (or (and start!1818 b_free!463) b_lambda!851)))

(declare-fun b_lambda!853 () Bool)

(assert (= b_lambda!841 (or (and start!1818 b_free!463) b_lambda!853)))

(push 1)

(assert (not d!1817))

(assert (not b!12743))

(assert (not b_lambda!851))

(assert (not b!12751))

(assert (not b!12745))

(assert (not d!1819))

(assert b_and!871)

(assert (not d!1825))

(assert tp_is_empty!638)

(assert (not b_lambda!853))

(assert (not b_next!463))

(check-sat)

(pop 1)

(push 1)

(assert b_and!871)

(assert (not b_next!463))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1849 () Bool)

(declare-fun res!10197 () Bool)

(declare-fun e!7655 () Bool)

(assert (=> d!1849 (=> res!10197 e!7655)))

(assert (=> d!1849 (= res!10197 (= (select (arr!415 lt!3345) #b00000000000000000000000000000000) (_1!218 lt!3340)))))

(assert (=> d!1849 (= (arrayContainsKey!0 lt!3345 (_1!218 lt!3340) #b00000000000000000000000000000000) e!7655)))

(declare-fun b!12786 () Bool)

(declare-fun e!7656 () Bool)

(assert (=> b!12786 (= e!7655 e!7656)))

(declare-fun res!10198 () Bool)

(assert (=> b!12786 (=> (not res!10198) (not e!7656))))

(assert (=> b!12786 (= res!10198 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!477 lt!3345)))))

(declare-fun b!12787 () Bool)

(assert (=> b!12787 (= e!7656 (arrayContainsKey!0 lt!3345 (_1!218 lt!3340) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1849 (not res!10197)) b!12786))

(assert (= (and b!12786 res!10198) b!12787))

(declare-fun m!8729 () Bool)

(assert (=> d!1849 m!8729))

(declare-fun m!8731 () Bool)

(assert (=> b!12787 m!8731))

(assert (=> b!12745 d!1849))

(declare-fun d!1851 () Bool)

(assert (=> d!1851 (= (size!486 (v!1383 (underlying!22 lt!3186))) (bvadd (_size!42 (v!1383 (underlying!22 lt!3186))) (bvsdiv (bvadd (extraKeys!1532 (v!1383 (underlying!22 lt!3186))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!1817 d!1851))

(declare-fun d!1855 () Bool)

(declare-fun res!10214 () Bool)

(declare-fun e!7673 () Bool)

(assert (=> d!1855 (=> (not res!10214) (not e!7673))))

(declare-fun simpleValid!6 (LongMapFixedSize!22) Bool)

(assert (=> d!1855 (= res!10214 (simpleValid!6 (v!1383 (underlying!22 lt!3186))))))

(assert (=> d!1855 (= (valid!20 (v!1383 (underlying!22 lt!3186))) e!7673)))

(declare-fun b!12813 () Bool)

(declare-fun res!10215 () Bool)

(assert (=> b!12813 (=> (not res!10215) (not e!7673))))

(assert (=> b!12813 (= res!10215 (= (arrayCountValidKeys!0 (_keys!3037 (v!1383 (underlying!22 lt!3186))) #b00000000000000000000000000000000 (size!477 (_keys!3037 (v!1383 (underlying!22 lt!3186))))) (_size!42 (v!1383 (underlying!22 lt!3186)))))))

(declare-fun b!12814 () Bool)

(declare-fun res!10216 () Bool)

(assert (=> b!12814 (=> (not res!10216) (not e!7673))))

(assert (=> b!12814 (= res!10216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!3037 (v!1383 (underlying!22 lt!3186))) (mask!4434 (v!1383 (underlying!22 lt!3186)))))))

(declare-fun b!12815 () Bool)

(assert (=> b!12815 (= e!7673 (arrayNoDuplicates!0 (_keys!3037 (v!1383 (underlying!22 lt!3186))) #b00000000000000000000000000000000 Nil!375))))

(assert (= (and d!1855 res!10214) b!12813))

(assert (= (and b!12813 res!10215) b!12814))

(assert (= (and b!12814 res!10216) b!12815))

(declare-fun m!8739 () Bool)

(assert (=> d!1855 m!8739))

(declare-fun m!8741 () Bool)

(assert (=> b!12813 m!8741))

(declare-fun m!8745 () Bool)

(assert (=> b!12814 m!8745))

(declare-fun m!8749 () Bool)

(assert (=> b!12815 m!8749))

(assert (=> d!1819 d!1855))

(declare-fun d!1857 () Bool)

(assert (=> d!1857 (= (head!779 (toList!204 (map!243 lt!3343))) (h!937 (toList!204 (map!243 lt!3343))))))

(assert (=> b!12743 d!1857))

(declare-fun d!1861 () Bool)

(declare-fun getCurrentListMap!109 (array!865 array!867 (_ BitVec 32) (_ BitVec 32) V!861 V!861 (_ BitVec 32) Int) ListLongMap!377)

(assert (=> d!1861 (= (map!243 lt!3343) (getCurrentListMap!109 (_keys!3037 lt!3343) (_values!1616 lt!3343) (mask!4434 lt!3343) (extraKeys!1532 lt!3343) (zeroValue!1555 lt!3343) (minValue!1555 lt!3343) #b00000000000000000000000000000000 (defaultEntry!1615 lt!3343)))))

(declare-fun bs!492 () Bool)

(assert (= bs!492 d!1861))

(declare-fun m!8757 () Bool)

(assert (=> bs!492 m!8757))

(assert (=> b!12743 d!1861))

(declare-fun d!1867 () Bool)

(declare-fun e!7691 () Bool)

(assert (=> d!1867 e!7691))

(declare-fun c!1175 () Bool)

(assert (=> d!1867 (= c!1175 (and (not (= (_1!218 lt!3340) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!218 lt!3340) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!3423 () Unit!272)

(declare-fun choose!167 (array!865 array!867 (_ BitVec 32) (_ BitVec 32) V!861 V!861 (_ BitVec 64) Int) Unit!272)

(assert (=> d!1867 (= lt!3423 (choose!167 lt!3345 (array!868 ((as const (Array (_ BitVec 32) ValueCell!218)) EmptyCell!218) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3357 (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!218 lt!3340) defaultEntry!183))))

(assert (=> d!1867 (validMask!0 (bvsub initialSize!1 #b00000000000000000000000000000001))))

(assert (=> d!1867 (= (lemmaKeyInListMapIsInArray!78 lt!3345 (array!868 ((as const (Array (_ BitVec 32) ValueCell!218)) EmptyCell!218) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!1 #b00000000000000000000000000000001) lt!3357 (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!79 defaultEntry!183 #b0000000000000000000000000000000000000000000000000000000000000000) (_1!218 lt!3340) defaultEntry!183) lt!3423)))

(declare-fun b!12838 () Bool)

(assert (=> b!12838 (= e!7691 (arrayContainsKey!0 lt!3345 (_1!218 lt!3340) #b00000000000000000000000000000000))))

(declare-fun b!12839 () Bool)

(assert (=> b!12839 (= e!7691 (ite (= (_1!218 lt!3340) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!3357 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!3357 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!1867 c!1175) b!12838))

(assert (= (and d!1867 (not c!1175)) b!12839))

(assert (=> d!1867 m!8631))

(assert (=> d!1867 m!8631))

(declare-fun m!8775 () Bool)

(assert (=> d!1867 m!8775))

(assert (=> d!1867 m!8597))

(assert (=> b!12838 m!8655))

(assert (=> b!12743 d!1867))

(declare-fun d!1873 () Bool)

(declare-fun lt!3426 () (_ BitVec 32))

(assert (=> d!1873 (and (or (bvslt lt!3426 #b00000000000000000000000000000000) (bvsge lt!3426 (size!477 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (and (bvsge lt!3426 #b00000000000000000000000000000000) (bvslt lt!3426 (size!477 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))) (bvsge lt!3426 #b00000000000000000000000000000000) (bvslt lt!3426 (size!477 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (= (select (arr!415 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) lt!3426) (_1!218 lt!3340)))))

(declare-fun e!7694 () (_ BitVec 32))

(assert (=> d!1873 (= lt!3426 e!7694)))

(declare-fun c!1178 () Bool)

(assert (=> d!1873 (= c!1178 (= (select (arr!415 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!218 lt!3340)))))

(assert (=> d!1873 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!477 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (bvslt (size!477 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!1873 (= (arrayScanForKey!0 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!218 lt!3340) #b00000000000000000000000000000000) lt!3426)))

(declare-fun b!12844 () Bool)

(assert (=> b!12844 (= e!7694 #b00000000000000000000000000000000)))

(declare-fun b!12845 () Bool)

(assert (=> b!12845 (= e!7694 (arrayScanForKey!0 (array!866 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!218 lt!3340) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1873 c!1178) b!12844))

(assert (= (and d!1873 (not c!1178)) b!12845))

(declare-fun m!8783 () Bool)

(assert (=> d!1873 m!8783))

(declare-fun m!8787 () Bool)

(assert (=> d!1873 m!8787))

(declare-fun m!8789 () Bool)

(assert (=> b!12845 m!8789))

(assert (=> b!12743 d!1873))

(declare-fun b!12869 () Bool)

(declare-fun e!7711 () Bool)

(declare-fun call!332 () Bool)

(assert (=> b!12869 (= e!7711 call!332)))

(declare-fun b!12870 () Bool)

(declare-fun e!7713 () Bool)

(declare-fun e!7712 () Bool)

(assert (=> b!12870 (= e!7713 e!7712)))

(declare-fun c!1184 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!12870 (= c!1184 (validKeyInArray!0 (select (arr!415 lt!3364) lt!3332)))))

(declare-fun d!1885 () Bool)

(declare-fun res!10242 () Bool)

(assert (=> d!1885 (=> res!10242 e!7713)))

(assert (=> d!1885 (= res!10242 (bvsge lt!3332 (size!477 lt!3364)))))

(assert (=> d!1885 (= (arrayForallSeekEntryOrOpenFound!0 lt!3332 lt!3364 (bvsub initialSize!1 #b00000000000000000000000000000001)) e!7713)))

(declare-fun b!12871 () Bool)

(assert (=> b!12871 (= e!7712 call!332)))

(declare-fun b!12872 () Bool)

(assert (=> b!12872 (= e!7712 e!7711)))

(declare-fun lt!3437 () (_ BitVec 64))

(assert (=> b!12872 (= lt!3437 (select (arr!415 lt!3364) lt!3332))))

(declare-fun lt!3436 () Unit!272)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!865 (_ BitVec 64) (_ BitVec 32)) Unit!272)

(assert (=> b!12872 (= lt!3436 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!3364 lt!3437 lt!3332))))

(assert (=> b!12872 (arrayContainsKey!0 lt!3364 lt!3437 #b00000000000000000000000000000000)))

(declare-fun lt!3438 () Unit!272)

(assert (=> b!12872 (= lt!3438 lt!3436)))

(declare-fun res!10243 () Bool)

(declare-datatypes ((SeekEntryResult!46 0))(
  ( (MissingZero!46 (index!2303 (_ BitVec 32))) (Found!46 (index!2304 (_ BitVec 32))) (Intermediate!46 (undefined!858 Bool) (index!2305 (_ BitVec 32)) (x!3362 (_ BitVec 32))) (Undefined!46) (MissingVacant!46 (index!2306 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!865 (_ BitVec 32)) SeekEntryResult!46)

(assert (=> b!12872 (= res!10243 (= (seekEntryOrOpen!0 (select (arr!415 lt!3364) lt!3332) lt!3364 (bvsub initialSize!1 #b00000000000000000000000000000001)) (Found!46 lt!3332)))))

(assert (=> b!12872 (=> (not res!10243) (not e!7711))))

(declare-fun bm!329 () Bool)

(assert (=> bm!329 (= call!332 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!3332 #b00000000000000000000000000000001) lt!3364 (bvsub initialSize!1 #b00000000000000000000000000000001)))))

(assert (= (and d!1885 (not res!10242)) b!12870))

(assert (= (and b!12870 c!1184) b!12872))

(assert (= (and b!12870 (not c!1184)) b!12871))

(assert (= (and b!12872 res!10243) b!12869))

(assert (= (or b!12869 b!12871) bm!329))

(declare-fun m!8805 () Bool)

(assert (=> b!12870 m!8805))

(assert (=> b!12870 m!8805))

(declare-fun m!8807 () Bool)

(assert (=> b!12870 m!8807))

(assert (=> b!12872 m!8805))

(declare-fun m!8809 () Bool)

(assert (=> b!12872 m!8809))

(declare-fun m!8811 () Bool)

(assert (=> b!12872 m!8811))

(assert (=> b!12872 m!8805))

(declare-fun m!8813 () Bool)

(assert (=> b!12872 m!8813))

(declare-fun m!8815 () Bool)

(assert (=> bm!329 m!8815))

(assert (=> d!1825 d!1885))

(declare-fun d!1897 () Bool)

(assert (=> d!1897 (arrayNoDuplicates!0 lt!3352 lt!3338 lt!3353)))

(declare-fun lt!3446 () Unit!272)

(declare-fun choose!111 (array!865 (_ BitVec 32) (_ BitVec 32) List!378) Unit!272)

(assert (=> d!1897 (= lt!3446 (choose!111 lt!3352 lt!3338 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!3353))))

(assert (=> d!1897 (= (size!477 lt!3352) (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!1897 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!3352 lt!3338 (bvadd (bvsub initialSize!1 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!3353) lt!3446)))

(declare-fun bs!497 () Bool)

(assert (= bs!497 d!1897))

(assert (=> bs!497 m!8667))

(declare-fun m!8819 () Bool)

(assert (=> bs!497 m!8819))

(assert (=> d!1825 d!1897))

(declare-fun b!12909 () Bool)

(declare-fun e!7735 () Bool)

(declare-fun e!7737 () Bool)

(assert (=> b!12909 (= e!7735 e!7737)))

(declare-fun res!10250 () Bool)

(assert (=> b!12909 (=> (not res!10250) (not e!7737))))

(declare-fun e!7736 () Bool)

(assert (=> b!12909 (= res!10250 (not e!7736))))

(declare-fun res!10252 () Bool)

(assert (=> b!12909 (=> (not res!10252) (not e!7736))))

(assert (=> b!12909 (= res!10252 (validKeyInArray!0 (select (arr!415 lt!3352) lt!3338)))))

(declare-fun b!12910 () Bool)

(declare-fun contains!180 (List!378 (_ BitVec 64)) Bool)

(assert (=> b!12910 (= e!7736 (contains!180 lt!3353 (select (arr!415 lt!3352) lt!3338)))))

