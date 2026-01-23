; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249530 () Bool)

(assert start!249530)

(declare-fun res!1084905 () Bool)

(declare-fun e!1627542 () Bool)

(assert (=> start!249530 (=> (not res!1084905) (not e!1627542))))

(declare-fun initialSize!22 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!249530 (= res!1084905 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001)))))

(assert (=> start!249530 e!1627542))

(assert (=> start!249530 true))

(declare-fun b!2579063 () Bool)

(declare-fun lambda!95551 () Int)

(declare-datatypes ((V!6109 0))(
  ( (V!6110 (val!9417 Int)) )
))
(declare-datatypes ((K!5907 0))(
  ( (K!5908 (val!9418 Int)) )
))
(declare-datatypes ((tuple2!29668 0))(
  ( (tuple2!29669 (_1!17376 K!5907) (_2!17376 V!6109)) )
))
(declare-datatypes ((array!12291 0))(
  ( (array!12292 (arr!5484 (Array (_ BitVec 32) (_ BitVec 64))) (size!23014 (_ BitVec 32))) )
))
(declare-datatypes ((List!29800 0))(
  ( (Nil!29700) (Cons!29700 (h!35120 tuple2!29668) (t!211685 List!29800)) )
))
(declare-datatypes ((array!12293 0))(
  ( (array!12294 (arr!5485 (Array (_ BitVec 32) List!29800)) (size!23015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6894 0))(
  ( (LongMapFixedSize!6895 (defaultEntry!3825 Int) (mask!8875 (_ BitVec 32)) (extraKeys!3695 (_ BitVec 32)) (zeroValue!3705 List!29800) (minValue!3705 List!29800) (_size!6939 (_ BitVec 32)) (_keys!3744 array!12291) (_values!3727 array!12293) (_vacant!3508 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13601 0))(
  ( (Cell!13602 (v!32013 LongMapFixedSize!6894)) )
))
(declare-datatypes ((MutLongMap!3447 0))(
  ( (LongMap!3447 (underlying!7099 Cell!13601)) (MutLongMapExt!3446 (__x!19281 Int)) )
))
(declare-fun getEmptyLongMap!26 (Int (_ BitVec 32)) MutLongMap!3447)

(assert (=> b!2579063 (= e!1627542 (not (is-LongMap!3447 (getEmptyLongMap!26 lambda!95551 initialSize!22))))))

(assert (= (and start!249530 res!1084905) b!2579063))

(declare-fun m!2913983 () Bool)

(assert (=> start!249530 m!2913983))

(declare-fun m!2913985 () Bool)

(assert (=> b!2579063 m!2913985))

(push 1)

(assert (not b!2579063))

(assert (not start!249530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!729665 () Bool)

(declare-fun e!1627551 () Bool)

(assert (=> d!729665 e!1627551))

(declare-fun res!1084914 () Bool)

(assert (=> d!729665 (=> (not res!1084914) (not e!1627551))))

(assert (=> d!729665 (= res!1084914 true)))

(declare-fun lt!907406 () MutLongMap!3447)

(declare-fun getNewLongMapFixedSize!16 ((_ BitVec 32) Int) LongMapFixedSize!6894)

(assert (=> d!729665 (= lt!907406 (LongMap!3447 (Cell!13602 (getNewLongMapFixedSize!16 (bvsub initialSize!22 #b00000000000000000000000000000001) lambda!95551))))))

(declare-fun lt!907405 () MutLongMap!3447)

(assert (=> d!729665 (= lt!907405 (LongMap!3447 (Cell!13602 (getNewLongMapFixedSize!16 (bvsub initialSize!22 #b00000000000000000000000000000001) lambda!95551))))))

(assert (=> d!729665 (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001))))

(assert (=> d!729665 (= (getEmptyLongMap!26 lambda!95551 initialSize!22) lt!907405)))

(declare-fun b!2579071 () Bool)

(declare-fun res!1084913 () Bool)

(assert (=> b!2579071 (=> (not res!1084913) (not e!1627551))))

(declare-fun valid!2666 (MutLongMap!3447) Bool)

(assert (=> b!2579071 (= res!1084913 (valid!2666 lt!907405))))

(declare-fun b!2579072 () Bool)

(declare-fun size!23018 (MutLongMap!3447) (_ BitVec 32))

(assert (=> b!2579072 (= e!1627551 (= (size!23018 lt!907405) #b00000000000000000000000000000000))))

(assert (= (and d!729665 res!1084914) b!2579071))

(assert (= (and b!2579071 res!1084913) b!2579072))

(declare-fun m!2913991 () Bool)

(assert (=> d!729665 m!2913991))

(assert (=> d!729665 m!2913983))

(declare-fun m!2913993 () Bool)

(assert (=> b!2579071 m!2913993))

(declare-fun m!2913995 () Bool)

(assert (=> b!2579072 m!2913995))

(assert (=> b!2579063 d!729665))

(declare-fun d!729669 () Bool)

(assert (=> d!729669 (= (validMask!0 (bvsub initialSize!22 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!22 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!22 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!249530 d!729669))

(push 1)

(assert (not b!2579071))

(assert (not b!2579072))

(assert (not d!729665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

