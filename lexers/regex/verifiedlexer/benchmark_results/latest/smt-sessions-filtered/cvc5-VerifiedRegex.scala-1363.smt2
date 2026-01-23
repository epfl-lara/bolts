; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!72826 () Bool)

(assert start!72826)

(declare-fun res!377914 () Bool)

(declare-fun e!541039 () Bool)

(assert (=> start!72826 (=> (not res!377914) (not e!541039))))

(declare-fun initialSize!19 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!72826 (= res!377914 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)))))

(assert (=> start!72826 e!541039))

(assert (=> start!72826 true))

(declare-fun lambda!24115 () Int)

(declare-datatypes ((Hashable!1218 0))(
  ( (HashableExt!1217 (__x!7141 Int)) )
))
(declare-fun hashF!576 () Hashable!1218)

(declare-fun b!818989 () Bool)

(declare-datatypes ((C!4610 0))(
  ( (C!4611 (val!2535 Int)) )
))
(declare-datatypes ((Regex!2020 0))(
  ( (ElementMatch!2020 (c!132767 C!4610)) (Concat!3729 (regOne!4552 Regex!2020) (regTwo!4552 Regex!2020)) (EmptyExpr!2020) (Star!2020 (reg!2349 Regex!2020)) (EmptyLang!2020) (Union!2020 (regOne!4553 Regex!2020) (regTwo!4553 Regex!2020)) )
))
(declare-datatypes ((List!8780 0))(
  ( (Nil!8766) (Cons!8766 (h!14167 Regex!2020) (t!92886 List!8780)) )
))
(declare-datatypes ((Context!832 0))(
  ( (Context!833 (exprs!916 List!8780)) )
))
(declare-datatypes ((tuple3!1050 0))(
  ( (tuple3!1051 (_1!5950 (Set Context!832)) (_2!5950 Int) (_3!816 Int)) )
))
(declare-datatypes ((tuple2!10268 0))(
  ( (tuple2!10269 (_1!5951 tuple3!1050) (_2!5951 Int)) )
))
(declare-datatypes ((List!8781 0))(
  ( (Nil!8767) (Cons!8767 (h!14168 tuple2!10268) (t!92887 List!8781)) )
))
(declare-datatypes ((array!4385 0))(
  ( (array!4386 (arr!1953 (Array (_ BitVec 32) (_ BitVec 64))) (size!7418 (_ BitVec 32))) )
))
(declare-datatypes ((array!4387 0))(
  ( (array!4388 (arr!1954 (Array (_ BitVec 32) List!8781)) (size!7419 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2492 0))(
  ( (LongMapFixedSize!2493 (defaultEntry!1602 Int) (mask!3141 (_ BitVec 32)) (extraKeys!1493 (_ BitVec 32)) (zeroValue!1503 List!8781) (minValue!1503 List!8781) (_size!2601 (_ BitVec 32)) (_keys!1540 array!4385) (_values!1525 array!4387) (_vacant!1307 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!4925 0))(
  ( (Cell!4926 (v!19061 LongMapFixedSize!2492)) )
))
(declare-datatypes ((MutLongMap!1246 0))(
  ( (LongMap!1246 (underlying!2675 Cell!4925)) (MutLongMapExt!1245 (__x!7142 Int)) )
))
(declare-datatypes ((Cell!4927 0))(
  ( (Cell!4928 (v!19062 MutLongMap!1246)) )
))
(declare-datatypes ((MutableMap!1218 0))(
  ( (MutableMapExt!1217 (__x!7143 Int)) (HashMap!1218 (underlying!2676 Cell!4927) (hashF!3126 Hashable!1218) (_size!2602 (_ BitVec 32)) (defaultValue!1369 Int)) )
))
(declare-fun getEmptyHashMap!8 (Int Hashable!1218 (_ BitVec 32)) MutableMap!1218)

(assert (=> b!818989 (= e!541039 (not (is-HashMap!1218 (getEmptyHashMap!8 lambda!24115 hashF!576 initialSize!19))))))

(assert (= (and start!72826 res!377914) b!818989))

(declare-fun m!1059831 () Bool)

(assert (=> start!72826 m!1059831))

(declare-fun m!1059833 () Bool)

(assert (=> b!818989 m!1059833))

(push 1)

(assert (not start!72826))

(assert (not b!818989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!257740 () Bool)

(assert (=> d!257740 (= (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!19 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!72826 d!257740))

(declare-fun b!819006 () Bool)

(declare-fun e!541057 () Bool)

(declare-fun lt!316425 () MutLongMap!1246)

(assert (=> b!819006 (= e!541057 (is-LongMap!1246 lt!316425))))

(assert (=> b!819006 (= lt!316425 (v!19062 (underlying!2676 (getEmptyHashMap!8 lambda!24115 hashF!576 initialSize!19))))))

(declare-fun b!819005 () Bool)

(declare-fun e!541056 () Bool)

(assert (=> b!819005 (= e!541056 e!541057)))

(declare-fun d!257744 () Bool)

(assert (=> d!257744 (= true e!541056)))

(assert (= b!819005 b!819006))

(assert (= (and d!257744 (is-HashMap!1218 (getEmptyHashMap!8 lambda!24115 hashF!576 initialSize!19))) b!819005))

(declare-fun e!541050 () Bool)

(assert (=> d!257744 e!541050))

(declare-fun res!377922 () Bool)

(assert (=> d!257744 (=> (not res!377922) (not e!541050))))

(assert (=> d!257744 (= res!377922 true)))

(declare-fun lambda!24123 () Int)

(declare-fun lt!316421 () MutableMap!1218)

(declare-fun getEmptyLongMap!7 (Int (_ BitVec 32)) MutLongMap!1246)

(assert (=> d!257744 (= lt!316421 (HashMap!1218 (Cell!4928 (getEmptyLongMap!7 lambda!24123 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24115))))

(declare-fun lt!316422 () MutableMap!1218)

(assert (=> d!257744 (= lt!316422 (HashMap!1218 (Cell!4928 (getEmptyLongMap!7 lambda!24123 initialSize!19)) hashF!576 #b00000000000000000000000000000000 lambda!24115))))

(assert (=> d!257744 (validMask!0 (bvsub initialSize!19 #b00000000000000000000000000000001))))

(assert (=> d!257744 (= (getEmptyHashMap!8 lambda!24115 hashF!576 initialSize!19) lt!316422)))

(declare-fun b!818997 () Bool)

(declare-fun res!377923 () Bool)

(assert (=> b!818997 (=> (not res!377923) (not e!541050))))

(declare-fun valid!993 (MutableMap!1218) Bool)

(assert (=> b!818997 (= res!377923 (valid!993 lt!316422))))

(declare-fun b!818998 () Bool)

(declare-fun size!7422 (MutableMap!1218) (_ BitVec 32))

(assert (=> b!818998 (= e!541050 (= (size!7422 lt!316422) #b00000000000000000000000000000000))))

(assert (= (and d!257744 res!377922) b!818997))

(assert (= (and b!818997 res!377923) b!818998))

(declare-fun m!1059839 () Bool)

(assert (=> d!257744 m!1059839))

(assert (=> d!257744 m!1059839))

(assert (=> d!257744 m!1059831))

(declare-fun m!1059841 () Bool)

(assert (=> b!818997 m!1059841))

(declare-fun m!1059843 () Bool)

(assert (=> b!818998 m!1059843))

(assert (=> b!818989 d!257744))

(push 1)

(assert (not d!257744))

(assert (not b!818997))

(assert (not b!818998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

