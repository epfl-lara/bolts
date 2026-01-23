; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249248 () Bool)

(assert start!249248)

(declare-fun res!1084286 () Bool)

(declare-fun e!1626794 () Bool)

(assert (=> start!249248 (=> (not res!1084286) (not e!1626794))))

(declare-fun initialSize!16 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249248 (= res!1084286 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)))))

(assert (=> start!249248 e!1626794))

(assert (=> start!249248 true))

(declare-fun b!2578002 () Bool)

(declare-datatypes ((Hashable!3353 0))(
  ( (HashableExt!3352 (__x!19243 Int)) )
))
(declare-fun hashF!508 () Hashable!3353)

(declare-fun lambda!95310 () Int)

(declare-datatypes ((C!15446 0))(
  ( (C!15447 (val!9399 Int)) )
))
(declare-datatypes ((Regex!7644 0))(
  ( (ElementMatch!7644 (c!415300 C!15446)) (Concat!12368 (regOne!15800 Regex!7644) (regTwo!15800 Regex!7644)) (EmptyExpr!7644) (Star!7644 (reg!7973 Regex!7644)) (EmptyLang!7644) (Union!7644 (regOne!15801 Regex!7644) (regTwo!15801 Regex!7644)) )
))
(declare-datatypes ((List!29761 0))(
  ( (Nil!29661) (Cons!29661 (h!35081 Regex!7644) (t!211638 List!29761)) )
))
(declare-datatypes ((Context!4240 0))(
  ( (Context!4241 (exprs!2620 List!29761)) )
))
(declare-datatypes ((tuple2!29610 0))(
  ( (tuple2!29611 (_1!17347 (Set Context!4240)) (_2!17347 Int)) )
))
(declare-datatypes ((tuple2!29612 0))(
  ( (tuple2!29613 (_1!17348 tuple2!29610) (_2!17348 Int)) )
))
(declare-datatypes ((List!29762 0))(
  ( (Nil!29662) (Cons!29662 (h!35082 tuple2!29612) (t!211639 List!29762)) )
))
(declare-datatypes ((array!12235 0))(
  ( (array!12236 (arr!5456 (Array (_ BitVec 32) List!29762)) (size!22971 (_ BitVec 32))) )
))
(declare-datatypes ((array!12237 0))(
  ( (array!12238 (arr!5457 (Array (_ BitVec 32) (_ BitVec 64))) (size!22972 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6866 0))(
  ( (LongMapFixedSize!6867 (defaultEntry!3807 Int) (mask!8843 (_ BitVec 32)) (extraKeys!3681 (_ BitVec 32)) (zeroValue!3691 List!29762) (minValue!3691 List!29762) (_size!6913 (_ BitVec 32)) (_keys!3730 array!12237) (_values!3713 array!12235) (_vacant!3494 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13549 0))(
  ( (Cell!13550 (v!31987 LongMapFixedSize!6866)) )
))
(declare-datatypes ((MutLongMap!3433 0))(
  ( (LongMap!3433 (underlying!7073 Cell!13549)) (MutLongMapExt!3432 (__x!19244 Int)) )
))
(declare-datatypes ((Cell!13551 0))(
  ( (Cell!13552 (v!31988 MutLongMap!3433)) )
))
(declare-datatypes ((MutableMap!3343 0))(
  ( (MutableMapExt!3342 (__x!19245 Int)) (HashMap!3343 (underlying!7074 Cell!13551) (hashF!5372 Hashable!3353) (_size!6914 (_ BitVec 32)) (defaultValue!3505 Int)) )
))
(declare-fun getEmptyHashMap!20 (Int Hashable!3353 (_ BitVec 32)) MutableMap!3343)

(assert (=> b!2578002 (= e!1626794 (not (is-HashMap!3343 (getEmptyHashMap!20 lambda!95310 hashF!508 initialSize!16))))))

(assert (= (and start!249248 res!1084286) b!2578002))

(declare-fun m!2912771 () Bool)

(assert (=> start!249248 m!2912771))

(declare-fun m!2912773 () Bool)

(assert (=> b!2578002 m!2912773))

(push 1)

(assert (not start!249248))

(assert (not b!2578002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729194 () Bool)

(assert (=> d!729194 (= (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!16 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!249248 d!729194))

(declare-fun b!2578019 () Bool)

(declare-fun e!1626811 () Bool)

(declare-fun lt!906873 () MutLongMap!3433)

(assert (=> b!2578019 (= e!1626811 (is-LongMap!3433 lt!906873))))

(assert (=> b!2578019 (= lt!906873 (v!31988 (underlying!7074 (getEmptyHashMap!20 lambda!95310 hashF!508 initialSize!16))))))

(declare-fun b!2578018 () Bool)

(declare-fun e!1626810 () Bool)

(assert (=> b!2578018 (= e!1626810 e!1626811)))

(declare-fun d!729198 () Bool)

(assert (=> d!729198 (= true e!1626810)))

(assert (= b!2578018 b!2578019))

(assert (= (and d!729198 (is-HashMap!3343 (getEmptyHashMap!20 lambda!95310 hashF!508 initialSize!16))) b!2578018))

(declare-fun e!1626805 () Bool)

(assert (=> d!729198 e!1626805))

(declare-fun res!1084295 () Bool)

(assert (=> d!729198 (=> (not res!1084295) (not e!1626805))))

(assert (=> d!729198 (= res!1084295 true)))

(declare-fun lt!906870 () MutableMap!3343)

(declare-fun lambda!95318 () Int)

(declare-fun getEmptyLongMap!16 (Int (_ BitVec 32)) MutLongMap!3433)

(assert (=> d!729198 (= lt!906870 (HashMap!3343 (Cell!13552 (getEmptyLongMap!16 lambda!95318 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95310))))

(declare-fun lt!906869 () MutableMap!3343)

(assert (=> d!729198 (= lt!906869 (HashMap!3343 (Cell!13552 (getEmptyLongMap!16 lambda!95318 initialSize!16)) hashF!508 #b00000000000000000000000000000000 lambda!95310))))

(assert (=> d!729198 (validMask!0 (bvsub initialSize!16 #b00000000000000000000000000000001))))

(assert (=> d!729198 (= (getEmptyHashMap!20 lambda!95310 hashF!508 initialSize!16) lt!906869)))

(declare-fun b!2578010 () Bool)

(declare-fun res!1084294 () Bool)

(assert (=> b!2578010 (=> (not res!1084294) (not e!1626805))))

(declare-fun valid!2646 (MutableMap!3343) Bool)

(assert (=> b!2578010 (= res!1084294 (valid!2646 lt!906869))))

(declare-fun b!2578011 () Bool)

(declare-fun size!22975 (MutableMap!3343) (_ BitVec 32))

(assert (=> b!2578011 (= e!1626805 (= (size!22975 lt!906869) #b00000000000000000000000000000000))))

(assert (= (and d!729198 res!1084295) b!2578010))

(assert (= (and b!2578010 res!1084294) b!2578011))

(declare-fun m!2912779 () Bool)

(assert (=> d!729198 m!2912779))

(assert (=> d!729198 m!2912779))

(assert (=> d!729198 m!2912771))

(declare-fun m!2912781 () Bool)

(assert (=> b!2578010 m!2912781))

(declare-fun m!2912783 () Bool)

(assert (=> b!2578011 m!2912783))

(assert (=> b!2578002 d!729198))

(push 1)

(assert (not d!729198))

(assert (not b!2578010))

(assert (not b!2578011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

