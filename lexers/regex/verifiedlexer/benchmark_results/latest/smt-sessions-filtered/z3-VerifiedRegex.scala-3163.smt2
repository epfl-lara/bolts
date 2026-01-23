; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!185386 () Bool)

(assert start!185386)

(declare-fun lambda!73340 () Int)

(declare-datatypes ((Hashable!1840 0))(
  ( (HashableExt!1839 (__x!12963 Int)) )
))
(declare-fun hashF!331 () Hashable!1840)

(declare-datatypes ((C!10272 0))(
  ( (C!10273 (val!5882 Int)) )
))
(declare-datatypes ((Regex!5061 0))(
  ( (ElementMatch!5061 (c!302517 C!10272)) (Concat!8860 (regOne!10634 Regex!5061) (regTwo!10634 Regex!5061)) (EmptyExpr!5061) (Star!5061 (reg!5390 Regex!5061)) (EmptyLang!5061) (Union!5061 (regOne!10635 Regex!5061) (regTwo!10635 Regex!5061)) )
))
(declare-datatypes ((tuple2!19840 0))(
  ( (tuple2!19841 (_1!11347 Regex!5061) (_2!11347 C!10272)) )
))
(declare-datatypes ((tuple2!19842 0))(
  ( (tuple2!19843 (_1!11348 tuple2!19840) (_2!11348 Regex!5061)) )
))
(declare-datatypes ((List!20683 0))(
  ( (Nil!20603) (Cons!20603 (h!26004 tuple2!19842) (t!172548 List!20683)) )
))
(declare-datatypes ((array!6507 0))(
  ( (array!6508 (arr!2890 (Array (_ BitVec 32) List!20683)) (size!16267 (_ BitVec 32))) )
))
(declare-datatypes ((array!6509 0))(
  ( (array!6510 (arr!2891 (Array (_ BitVec 32) (_ BitVec 64))) (size!16268 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3792 0))(
  ( (LongMapFixedSize!3793 (defaultEntry!2256 Int) (mask!5603 (_ BitVec 32)) (extraKeys!2143 (_ BitVec 32)) (zeroValue!2153 List!20683) (minValue!2153 List!20683) (_size!3873 (_ BitVec 32)) (_keys!2190 array!6509) (_values!2175 array!6507) (_vacant!1957 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!7469 0))(
  ( (Cell!7470 (v!26039 LongMapFixedSize!3792)) )
))
(declare-datatypes ((MutLongMap!1896 0))(
  ( (LongMap!1896 (underlying!4013 Cell!7469)) (MutLongMapExt!1895 (__x!12964 Int)) )
))
(declare-datatypes ((Cell!7471 0))(
  ( (Cell!7472 (v!26040 MutLongMap!1896)) )
))
(declare-datatypes ((MutableMap!1840 0))(
  ( (MutableMapExt!1839 (__x!12965 Int)) (HashMap!1840 (underlying!4014 Cell!7471) (hashF!3759 Hashable!1840) (_size!3874 (_ BitVec 32)) (defaultValue!2000 Int)) )
))
(declare-datatypes ((Cache!302 0))(
  ( (Cache!303 (cache!2221 MutableMap!1840)) )
))
(declare-fun inv!27024 (Cache!302) Bool)

(declare-fun getEmptyHashMap!19 (Int Hashable!1840 (_ BitVec 32)) MutableMap!1840)

(assert (=> start!185386 (not (inv!27024 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))

(assert (=> start!185386 true))

(declare-fun bs!410683 () Bool)

(assert (= bs!410683 start!185386))

(declare-fun m!2281653 () Bool)

(assert (=> bs!410683 m!2281653))

(declare-fun m!2281655 () Bool)

(assert (=> bs!410683 m!2281655))

(check-sat (not start!185386))
(check-sat)
(get-model)

(declare-fun d!566958 () Bool)

(declare-fun res!832333 () Bool)

(declare-fun e!1186526 () Bool)

(assert (=> d!566958 (=> (not res!832333) (not e!1186526))))

(get-info :version)

(assert (=> d!566958 (= res!832333 ((_ is HashMap!1840) (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))

(assert (=> d!566958 (= (inv!27024 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))) e!1186526)))

(declare-fun b!1858140 () Bool)

(declare-fun validCacheMap!38 (MutableMap!1840) Bool)

(assert (=> b!1858140 (= e!1186526 (validCacheMap!38 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))

(assert (= (and d!566958 res!832333) b!1858140))

(declare-fun m!2281659 () Bool)

(assert (=> b!1858140 m!2281659))

(assert (=> start!185386 d!566958))

(declare-fun b!1858168 () Bool)

(declare-fun e!1186546 () Bool)

(declare-fun lt!716998 () MutLongMap!1896)

(assert (=> b!1858168 (= e!1186546 ((_ is LongMap!1896) lt!716998))))

(assert (=> b!1858168 (= lt!716998 (v!26040 (underlying!4014 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))

(declare-fun b!1858167 () Bool)

(declare-fun e!1186545 () Bool)

(assert (=> b!1858167 (= e!1186545 e!1186546)))

(declare-fun d!566962 () Bool)

(assert (=> d!566962 (= true e!1186545)))

(assert (= b!1858167 b!1858168))

(assert (= (and d!566962 ((_ is HashMap!1840) (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))) b!1858167))

(declare-fun e!1186540 () Bool)

(assert (=> d!566962 e!1186540))

(declare-fun res!832345 () Bool)

(assert (=> d!566962 (=> (not res!832345) (not e!1186540))))

(assert (=> d!566962 (= res!832345 true)))

(declare-fun lt!716994 () MutableMap!1840)

(declare-fun lambda!73350 () Int)

(declare-fun getEmptyLongMap!15 (Int (_ BitVec 32)) MutLongMap!1896)

(assert (=> d!566962 (= lt!716994 (HashMap!1840 (Cell!7472 (getEmptyLongMap!15 lambda!73350 #b00000000000000000000000000010000)) hashF!331 #b00000000000000000000000000000000 lambda!73340))))

(declare-fun lt!716995 () MutableMap!1840)

(assert (=> d!566962 (= lt!716995 (HashMap!1840 (Cell!7472 (getEmptyLongMap!15 lambda!73350 #b00000000000000000000000000010000)) hashF!331 #b00000000000000000000000000000000 lambda!73340))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!566962 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!566962 (= (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000) lt!716995)))

(declare-fun b!1858159 () Bool)

(declare-fun res!832344 () Bool)

(assert (=> b!1858159 (=> (not res!832344) (not e!1186540))))

(declare-fun valid!1516 (MutableMap!1840) Bool)

(assert (=> b!1858159 (= res!832344 (valid!1516 lt!716995))))

(declare-fun b!1858160 () Bool)

(declare-fun size!16270 (MutableMap!1840) (_ BitVec 32))

(assert (=> b!1858160 (= e!1186540 (= (size!16270 lt!716995) #b00000000000000000000000000000000))))

(assert (= (and d!566962 res!832345) b!1858159))

(assert (= (and b!1858159 res!832344) b!1858160))

(declare-fun m!2281669 () Bool)

(assert (=> d!566962 m!2281669))

(assert (=> d!566962 m!2281669))

(declare-fun m!2281671 () Bool)

(assert (=> d!566962 m!2281671))

(declare-fun m!2281673 () Bool)

(assert (=> b!1858159 m!2281673))

(declare-fun m!2281675 () Bool)

(assert (=> b!1858160 m!2281675))

(assert (=> start!185386 d!566962))

(check-sat (not b!1858159) (not b!1858140) (not d!566962) (not b!1858160))
(check-sat)
(get-model)

(declare-fun d!566966 () Bool)

(declare-fun res!832370 () Bool)

(declare-fun e!1186561 () Bool)

(assert (=> d!566966 (=> (not res!832370) (not e!1186561))))

(declare-fun valid!1518 (MutLongMap!1896) Bool)

(assert (=> d!566966 (= res!832370 (valid!1518 (v!26040 (underlying!4014 lt!716995))))))

(assert (=> d!566966 (= (valid!1516 lt!716995) e!1186561)))

(declare-fun b!1858193 () Bool)

(declare-fun res!832371 () Bool)

(assert (=> b!1858193 (=> (not res!832371) (not e!1186561))))

(declare-fun lambda!73359 () Int)

(declare-datatypes ((tuple2!19846 0))(
  ( (tuple2!19847 (_1!11350 (_ BitVec 64)) (_2!11350 List!20683)) )
))
(declare-datatypes ((List!20685 0))(
  ( (Nil!20605) (Cons!20605 (h!26006 tuple2!19846) (t!172550 List!20685)) )
))
(declare-fun forall!4408 (List!20685 Int) Bool)

(declare-datatypes ((ListLongMap!207 0))(
  ( (ListLongMap!208 (toList!988 List!20685)) )
))
(declare-fun map!4346 (MutLongMap!1896) ListLongMap!207)

(assert (=> b!1858193 (= res!832371 (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))) lambda!73359))))

(declare-fun b!1858194 () Bool)

(declare-fun allKeysSameHashInMap!79 (ListLongMap!207 Hashable!1840) Bool)

(assert (=> b!1858194 (= e!1186561 (allKeysSameHashInMap!79 (map!4346 (v!26040 (underlying!4014 lt!716995))) (hashF!3759 lt!716995)))))

(assert (= (and d!566966 res!832370) b!1858193))

(assert (= (and b!1858193 res!832371) b!1858194))

(declare-fun m!2281700 () Bool)

(assert (=> d!566966 m!2281700))

(declare-fun m!2281702 () Bool)

(assert (=> b!1858193 m!2281702))

(declare-fun m!2281704 () Bool)

(assert (=> b!1858193 m!2281704))

(assert (=> b!1858194 m!2281702))

(assert (=> b!1858194 m!2281702))

(declare-fun m!2281706 () Bool)

(assert (=> b!1858194 m!2281706))

(assert (=> b!1858159 d!566966))

(declare-fun d!566976 () Bool)

(declare-fun res!832384 () Bool)

(declare-fun e!1186572 () Bool)

(assert (=> d!566976 (=> (not res!832384) (not e!1186572))))

(assert (=> d!566976 (= res!832384 (valid!1516 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))

(assert (=> d!566976 (= (validCacheMap!38 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))) e!1186572)))

(declare-fun b!1858207 () Bool)

(declare-fun res!832385 () Bool)

(assert (=> b!1858207 (=> (not res!832385) (not e!1186572))))

(declare-fun invariantList!262 (List!20683) Bool)

(declare-datatypes ((ListMap!573 0))(
  ( (ListMap!574 (toList!989 List!20683)) )
))
(declare-fun map!4347 (MutableMap!1840) ListMap!573)

(assert (=> b!1858207 (= res!832385 (invariantList!262 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))

(declare-fun b!1858208 () Bool)

(declare-fun lambda!73362 () Int)

(declare-fun forall!4409 (List!20683 Int) Bool)

(assert (=> b!1858208 (= e!1186572 (forall!4409 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))) lambda!73362))))

(assert (= (and d!566976 res!832384) b!1858207))

(assert (= (and b!1858207 res!832385) b!1858208))

(declare-fun m!2281715 () Bool)

(assert (=> d!566976 m!2281715))

(declare-fun m!2281717 () Bool)

(assert (=> b!1858207 m!2281717))

(declare-fun m!2281719 () Bool)

(assert (=> b!1858207 m!2281719))

(assert (=> b!1858208 m!2281717))

(declare-fun m!2281721 () Bool)

(assert (=> b!1858208 m!2281721))

(assert (=> b!1858140 d!566976))

(declare-fun d!566984 () Bool)

(declare-fun e!1186576 () Bool)

(assert (=> d!566984 e!1186576))

(declare-fun res!832391 () Bool)

(assert (=> d!566984 (=> (not res!832391) (not e!1186576))))

(assert (=> d!566984 (= res!832391 true)))

(declare-fun lt!717012 () MutLongMap!1896)

(declare-fun getNewLongMapFixedSize!12 ((_ BitVec 32) Int) LongMapFixedSize!3792)

(assert (=> d!566984 (= lt!717012 (LongMap!1896 (Cell!7470 (getNewLongMapFixedSize!12 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lambda!73350))))))

(declare-fun lt!717013 () MutLongMap!1896)

(assert (=> d!566984 (= lt!717013 (LongMap!1896 (Cell!7470 (getNewLongMapFixedSize!12 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lambda!73350))))))

(assert (=> d!566984 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!566984 (= (getEmptyLongMap!15 lambda!73350 #b00000000000000000000000000010000) lt!717013)))

(declare-fun b!1858213 () Bool)

(declare-fun res!832390 () Bool)

(assert (=> b!1858213 (=> (not res!832390) (not e!1186576))))

(assert (=> b!1858213 (= res!832390 (valid!1518 lt!717013))))

(declare-fun b!1858214 () Bool)

(declare-fun size!16272 (MutLongMap!1896) (_ BitVec 32))

(assert (=> b!1858214 (= e!1186576 (= (size!16272 lt!717013) #b00000000000000000000000000000000))))

(assert (= (and d!566984 res!832391) b!1858213))

(assert (= (and b!1858213 res!832390) b!1858214))

(declare-fun m!2281729 () Bool)

(assert (=> d!566984 m!2281729))

(assert (=> d!566984 m!2281671))

(declare-fun m!2281731 () Bool)

(assert (=> b!1858213 m!2281731))

(declare-fun m!2281733 () Bool)

(assert (=> b!1858214 m!2281733))

(assert (=> d!566962 d!566984))

(declare-fun d!566988 () Bool)

(assert (=> d!566988 (= (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001)) true)))

(assert (=> d!566962 d!566988))

(declare-fun d!566990 () Bool)

(assert (=> d!566990 (= (size!16270 lt!716995) (_size!3874 lt!716995))))

(assert (=> b!1858160 d!566990))

(check-sat (not b!1858207) (not d!566966) (not b!1858214) (not b!1858213) (not b!1858208) (not b!1858193) (not d!566976) (not d!566984) (not b!1858194))
(check-sat)
(get-model)

(declare-fun b!1858256 () Bool)

(declare-fun e!1186601 () Bool)

(declare-fun lt!717135 () LongMapFixedSize!3792)

(declare-fun map!4349 (LongMapFixedSize!3792) ListLongMap!207)

(assert (=> b!1858256 (= e!1186601 (= (map!4349 lt!717135) (ListLongMap!208 Nil!20605)))))

(declare-fun d!566998 () Bool)

(assert (=> d!566998 e!1186601))

(declare-fun res!832411 () Bool)

(assert (=> d!566998 (=> (not res!832411) (not e!1186601))))

(declare-fun valid!1519 (LongMapFixedSize!3792) Bool)

(assert (=> d!566998 (= res!832411 (valid!1519 lt!717135))))

(declare-fun lt!717137 () LongMapFixedSize!3792)

(assert (=> d!566998 (= lt!717135 lt!717137)))

(declare-datatypes ((Unit!35207 0))(
  ( (Unit!35208) )
))
(declare-fun lt!717136 () Unit!35207)

(declare-fun e!1186602 () Unit!35207)

(assert (=> d!566998 (= lt!717136 e!1186602)))

(declare-fun c!302528 () Bool)

(assert (=> d!566998 (= c!302528 (not (= (map!4349 lt!717137) (ListLongMap!208 Nil!20605))))))

(declare-fun lt!717134 () Unit!35207)

(declare-fun lt!717156 () Unit!35207)

(assert (=> d!566998 (= lt!717134 lt!717156)))

(declare-fun lt!717151 () array!6509)

(declare-fun lt!717147 () (_ BitVec 32))

(declare-datatypes ((List!20686 0))(
  ( (Nil!20606) (Cons!20606 (h!26007 (_ BitVec 64)) (t!172551 List!20686)) )
))
(declare-fun lt!717139 () List!20686)

(declare-fun arrayNoDuplicates!0 (array!6509 (_ BitVec 32) List!20686) Bool)

(assert (=> d!566998 (arrayNoDuplicates!0 lt!717151 lt!717147 lt!717139)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!6509 (_ BitVec 32) (_ BitVec 32) List!20686) Unit!35207)

(assert (=> d!566998 (= lt!717156 (lemmaArrayNoDuplicatesInAll0Array!0 lt!717151 lt!717147 (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!717139))))

(assert (=> d!566998 (= lt!717139 Nil!20606)))

(assert (=> d!566998 (= lt!717147 #b00000000000000000000000000000000)))

(assert (=> d!566998 (= lt!717151 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!717143 () Unit!35207)

(declare-fun lt!717140 () Unit!35207)

(assert (=> d!566998 (= lt!717143 lt!717140)))

(declare-fun lt!717150 () (_ BitVec 32))

(declare-fun lt!717144 () array!6509)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6509 (_ BitVec 32)) Bool)

(assert (=> d!566998 (arrayForallSeekEntryOrOpenFound!0 lt!717150 lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!6509 (_ BitVec 32) (_ BitVec 32)) Unit!35207)

(assert (=> d!566998 (= lt!717140 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lt!717150))))

(assert (=> d!566998 (= lt!717150 #b00000000000000000000000000000000)))

(assert (=> d!566998 (= lt!717144 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!717149 () Unit!35207)

(declare-fun lt!717145 () Unit!35207)

(assert (=> d!566998 (= lt!717149 lt!717145)))

(declare-fun lt!717155 () array!6509)

(declare-fun lt!717146 () (_ BitVec 32))

(declare-fun lt!717148 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!6509 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!566998 (= (arrayCountValidKeys!0 lt!717155 lt!717146 lt!717148) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!6509 (_ BitVec 32) (_ BitVec 32)) Unit!35207)

(assert (=> d!566998 (= lt!717145 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!717155 lt!717146 lt!717148))))

(assert (=> d!566998 (= lt!717148 (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!566998 (= lt!717146 #b00000000000000000000000000000000)))

(assert (=> d!566998 (= lt!717155 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!717138 () List!20683)

(assert (=> d!566998 (= lt!717137 (LongMapFixedSize!3793 lambda!73350 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000000 lt!717138 lt!717138 #b00000000000000000000000000000000 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!6508 ((as const (Array (_ BitVec 32) List!20683)) lt!717138) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!10198 (Int (_ BitVec 64)) List!20683)

(assert (=> d!566998 (= lt!717138 (dynLambda!10198 lambda!73350 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!566998 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!566998 (= (getNewLongMapFixedSize!12 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lambda!73350) lt!717135)))

(declare-fun b!1858257 () Bool)

(declare-fun e!1186600 () Bool)

(declare-fun lt!717142 () array!6509)

(declare-fun lt!717141 () tuple2!19846)

(declare-fun arrayContainsKey!0 (array!6509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1858257 (= e!1186600 (arrayContainsKey!0 lt!717142 (_1!11350 lt!717141) #b00000000000000000000000000000000))))

(declare-fun b!1858258 () Bool)

(declare-fun Unit!35209 () Unit!35207)

(assert (=> b!1858258 (= e!1186602 Unit!35209)))

(declare-fun head!4348 (List!20685) tuple2!19846)

(assert (=> b!1858258 (= lt!717141 (head!4348 (toList!988 (map!4349 lt!717137))))))

(assert (=> b!1858258 (= lt!717142 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!717157 () (_ BitVec 32))

(assert (=> b!1858258 (= lt!717157 #b00000000000000000000000000000000)))

(declare-fun lt!717153 () Unit!35207)

(declare-fun lemmaKeyInListMapIsInArray!7 (array!6509 array!6507 (_ BitVec 32) (_ BitVec 32) List!20683 List!20683 (_ BitVec 64) Int) Unit!35207)

(assert (=> b!1858258 (= lt!717153 (lemmaKeyInListMapIsInArray!7 lt!717142 (array!6508 ((as const (Array (_ BitVec 32) List!20683)) lt!717138) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lt!717157 lt!717138 lt!717138 (_1!11350 lt!717141) lambda!73350))))

(declare-fun c!302529 () Bool)

(assert (=> b!1858258 (= c!302529 (and (not (= (_1!11350 lt!717141) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!11350 lt!717141) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1858258 e!1186600))

(declare-fun lt!717152 () Unit!35207)

(assert (=> b!1858258 (= lt!717152 lt!717153)))

(declare-fun lt!717154 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!6509 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1858258 (= lt!717154 (arrayScanForKey!0 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!11350 lt!717141) #b00000000000000000000000000000000))))

(assert (=> b!1858258 false))

(declare-fun b!1858259 () Bool)

(assert (=> b!1858259 (= e!1186600 (ite (= (_1!11350 lt!717141) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!717157 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!717157 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1858260 () Bool)

(declare-fun Unit!35210 () Unit!35207)

(assert (=> b!1858260 (= e!1186602 Unit!35210)))

(declare-fun b!1858261 () Bool)

(declare-fun res!832412 () Bool)

(assert (=> b!1858261 (=> (not res!832412) (not e!1186601))))

(assert (=> b!1858261 (= res!832412 (= (mask!5603 lt!717135) (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001)))))

(assert (= (and d!566998 c!302528) b!1858258))

(assert (= (and d!566998 (not c!302528)) b!1858260))

(assert (= (and b!1858258 c!302529) b!1858257))

(assert (= (and b!1858258 (not c!302529)) b!1858259))

(assert (= (and d!566998 res!832411) b!1858261))

(assert (= (and b!1858261 res!832412) b!1858256))

(declare-fun b_lambda!61517 () Bool)

(assert (=> (not b_lambda!61517) (not d!566998)))

(declare-fun m!2281789 () Bool)

(assert (=> b!1858256 m!2281789))

(declare-fun m!2281791 () Bool)

(assert (=> d!566998 m!2281791))

(declare-fun m!2281793 () Bool)

(assert (=> d!566998 m!2281793))

(declare-fun m!2281795 () Bool)

(assert (=> d!566998 m!2281795))

(declare-fun m!2281797 () Bool)

(assert (=> d!566998 m!2281797))

(assert (=> d!566998 m!2281671))

(declare-fun m!2281799 () Bool)

(assert (=> d!566998 m!2281799))

(declare-fun m!2281801 () Bool)

(assert (=> d!566998 m!2281801))

(declare-fun m!2281803 () Bool)

(assert (=> d!566998 m!2281803))

(declare-fun m!2281805 () Bool)

(assert (=> d!566998 m!2281805))

(declare-fun m!2281807 () Bool)

(assert (=> d!566998 m!2281807))

(declare-fun m!2281809 () Bool)

(assert (=> b!1858257 m!2281809))

(assert (=> b!1858258 m!2281797))

(declare-fun m!2281811 () Bool)

(assert (=> b!1858258 m!2281811))

(declare-fun m!2281813 () Bool)

(assert (=> b!1858258 m!2281813))

(declare-fun m!2281815 () Bool)

(assert (=> b!1858258 m!2281815))

(assert (=> d!566984 d!566998))

(assert (=> d!566984 d!566988))

(declare-fun d!567014 () Bool)

(declare-fun res!832417 () Bool)

(declare-fun e!1186607 () Bool)

(assert (=> d!567014 (=> res!832417 e!1186607)))

(assert (=> d!567014 (= res!832417 ((_ is Nil!20605) (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))))))

(assert (=> d!567014 (= (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))) lambda!73359) e!1186607)))

(declare-fun b!1858266 () Bool)

(declare-fun e!1186608 () Bool)

(assert (=> b!1858266 (= e!1186607 e!1186608)))

(declare-fun res!832418 () Bool)

(assert (=> b!1858266 (=> (not res!832418) (not e!1186608))))

(declare-fun dynLambda!10199 (Int tuple2!19846) Bool)

(assert (=> b!1858266 (= res!832418 (dynLambda!10199 lambda!73359 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))))))

(declare-fun b!1858267 () Bool)

(assert (=> b!1858267 (= e!1186608 (forall!4408 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))) lambda!73359))))

(assert (= (and d!567014 (not res!832417)) b!1858266))

(assert (= (and b!1858266 res!832418) b!1858267))

(declare-fun b_lambda!61519 () Bool)

(assert (=> (not b_lambda!61519) (not b!1858266)))

(declare-fun m!2281817 () Bool)

(assert (=> b!1858266 m!2281817))

(declare-fun m!2281819 () Bool)

(assert (=> b!1858267 m!2281819))

(assert (=> b!1858193 d!567014))

(declare-fun d!567016 () Bool)

(assert (=> d!567016 (= (map!4346 (v!26040 (underlying!4014 lt!716995))) (map!4349 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))))))

(declare-fun bs!410697 () Bool)

(assert (= bs!410697 d!567016))

(declare-fun m!2281821 () Bool)

(assert (=> bs!410697 m!2281821))

(assert (=> b!1858193 d!567016))

(declare-fun d!567018 () Bool)

(declare-fun noDuplicatedKeys!66 (List!20683) Bool)

(assert (=> d!567018 (= (invariantList!262 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) (noDuplicatedKeys!66 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))

(declare-fun bs!410698 () Bool)

(assert (= bs!410698 d!567018))

(declare-fun m!2281823 () Bool)

(assert (=> bs!410698 m!2281823))

(assert (=> b!1858207 d!567018))

(declare-fun d!567020 () Bool)

(declare-fun lt!717160 () ListMap!573)

(assert (=> d!567020 (invariantList!262 (toList!989 lt!717160))))

(declare-fun extractMap!68 (List!20685) ListMap!573)

(assert (=> d!567020 (= lt!717160 (extractMap!68 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(assert (=> d!567020 (valid!1516 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))

(assert (=> d!567020 (= (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))) lt!717160)))

(declare-fun bs!410699 () Bool)

(assert (= bs!410699 d!567020))

(declare-fun m!2281825 () Bool)

(assert (=> bs!410699 m!2281825))

(declare-fun m!2281827 () Bool)

(assert (=> bs!410699 m!2281827))

(declare-fun m!2281829 () Bool)

(assert (=> bs!410699 m!2281829))

(assert (=> bs!410699 m!2281715))

(assert (=> b!1858207 d!567020))

(declare-fun d!567022 () Bool)

(assert (=> d!567022 (= (valid!1518 (v!26040 (underlying!4014 lt!716995))) (valid!1519 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))))))

(declare-fun bs!410700 () Bool)

(assert (= bs!410700 d!567022))

(declare-fun m!2281831 () Bool)

(assert (=> bs!410700 m!2281831))

(assert (=> d!566966 d!567022))

(declare-fun d!567024 () Bool)

(declare-fun res!832423 () Bool)

(declare-fun e!1186613 () Bool)

(assert (=> d!567024 (=> res!832423 e!1186613)))

(assert (=> d!567024 (= res!832423 ((_ is Nil!20603) (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))

(assert (=> d!567024 (= (forall!4409 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))) lambda!73362) e!1186613)))

(declare-fun b!1858272 () Bool)

(declare-fun e!1186614 () Bool)

(assert (=> b!1858272 (= e!1186613 e!1186614)))

(declare-fun res!832424 () Bool)

(assert (=> b!1858272 (=> (not res!832424) (not e!1186614))))

(declare-fun dynLambda!10200 (Int tuple2!19842) Bool)

(assert (=> b!1858272 (= res!832424 (dynLambda!10200 lambda!73362 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))

(declare-fun b!1858273 () Bool)

(assert (=> b!1858273 (= e!1186614 (forall!4409 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) lambda!73362))))

(assert (= (and d!567024 (not res!832423)) b!1858272))

(assert (= (and b!1858272 res!832424) b!1858273))

(declare-fun b_lambda!61521 () Bool)

(assert (=> (not b_lambda!61521) (not b!1858272)))

(declare-fun m!2281833 () Bool)

(assert (=> b!1858272 m!2281833))

(declare-fun m!2281835 () Bool)

(assert (=> b!1858273 m!2281835))

(assert (=> b!1858208 d!567024))

(assert (=> b!1858208 d!567020))

(declare-fun d!567026 () Bool)

(assert (=> d!567026 (= (valid!1518 lt!717013) (valid!1519 (v!26039 (underlying!4013 lt!717013))))))

(declare-fun bs!410701 () Bool)

(assert (= bs!410701 d!567026))

(declare-fun m!2281837 () Bool)

(assert (=> bs!410701 m!2281837))

(assert (=> b!1858213 d!567026))

(declare-fun d!567028 () Bool)

(declare-fun size!16274 (LongMapFixedSize!3792) (_ BitVec 32))

(assert (=> d!567028 (= (size!16272 lt!717013) (size!16274 (v!26039 (underlying!4013 lt!717013))))))

(declare-fun bs!410702 () Bool)

(assert (= bs!410702 d!567028))

(declare-fun m!2281839 () Bool)

(assert (=> bs!410702 m!2281839))

(assert (=> b!1858214 d!567028))

(declare-fun bs!410703 () Bool)

(declare-fun d!567030 () Bool)

(assert (= bs!410703 (and d!567030 b!1858193)))

(declare-fun lambda!73369 () Int)

(assert (=> bs!410703 (not (= lambda!73369 lambda!73359))))

(assert (=> d!567030 true))

(assert (=> d!567030 (= (allKeysSameHashInMap!79 (map!4346 (v!26040 (underlying!4014 lt!716995))) (hashF!3759 lt!716995)) (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))) lambda!73369))))

(declare-fun bs!410704 () Bool)

(assert (= bs!410704 d!567030))

(declare-fun m!2281841 () Bool)

(assert (=> bs!410704 m!2281841))

(assert (=> b!1858194 d!567030))

(assert (=> b!1858194 d!567016))

(declare-fun bs!410705 () Bool)

(declare-fun b!1858276 () Bool)

(assert (= bs!410705 (and b!1858276 b!1858193)))

(declare-fun lambda!73370 () Int)

(assert (=> bs!410705 (= lambda!73370 lambda!73359)))

(declare-fun bs!410706 () Bool)

(assert (= bs!410706 (and b!1858276 d!567030)))

(assert (=> bs!410706 (not (= lambda!73370 lambda!73369))))

(declare-fun d!567032 () Bool)

(declare-fun res!832425 () Bool)

(declare-fun e!1186615 () Bool)

(assert (=> d!567032 (=> (not res!832425) (not e!1186615))))

(assert (=> d!567032 (= res!832425 (valid!1518 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))

(assert (=> d!567032 (= (valid!1516 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))) e!1186615)))

(declare-fun res!832426 () Bool)

(assert (=> b!1858276 (=> (not res!832426) (not e!1186615))))

(assert (=> b!1858276 (= res!832426 (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))) lambda!73370))))

(declare-fun b!1858277 () Bool)

(assert (=> b!1858277 (= e!1186615 (allKeysSameHashInMap!79 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) (hashF!3759 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))

(assert (= (and d!567032 res!832425) b!1858276))

(assert (= (and b!1858276 res!832426) b!1858277))

(declare-fun m!2281843 () Bool)

(assert (=> d!567032 m!2281843))

(assert (=> b!1858276 m!2281827))

(declare-fun m!2281845 () Bool)

(assert (=> b!1858276 m!2281845))

(assert (=> b!1858277 m!2281827))

(assert (=> b!1858277 m!2281827))

(declare-fun m!2281847 () Bool)

(assert (=> b!1858277 m!2281847))

(assert (=> d!566976 d!567032))

(declare-fun b_lambda!61523 () Bool)

(assert (= b_lambda!61521 (or b!1858208 b_lambda!61523)))

(declare-fun bs!410707 () Bool)

(declare-fun d!567034 () Bool)

(assert (= bs!410707 (and d!567034 b!1858208)))

(declare-fun res!832427 () Bool)

(declare-fun e!1186616 () Bool)

(assert (=> bs!410707 (=> (not res!832427) (not e!1186616))))

(declare-fun validRegex!2080 (Regex!5061) Bool)

(assert (=> bs!410707 (= res!832427 (validRegex!2080 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(assert (=> bs!410707 (= (dynLambda!10200 lambda!73362 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))) e!1186616)))

(declare-fun b!1858278 () Bool)

(declare-fun derivativeStep!1332 (Regex!5061 C!10272) Regex!5061)

(assert (=> b!1858278 (= e!1186616 (= (_2!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))) (derivativeStep!1332 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))) (_2!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))

(assert (= (and bs!410707 res!832427) b!1858278))

(declare-fun m!2281849 () Bool)

(assert (=> bs!410707 m!2281849))

(declare-fun m!2281851 () Bool)

(assert (=> b!1858278 m!2281851))

(assert (=> b!1858272 d!567034))

(declare-fun b_lambda!61525 () Bool)

(assert (= b_lambda!61517 (or d!566962 b_lambda!61525)))

(declare-fun bs!410708 () Bool)

(declare-fun d!567036 () Bool)

(assert (= bs!410708 (and d!567036 d!566962)))

(assert (=> bs!410708 (= (dynLambda!10198 lambda!73350 #b0000000000000000000000000000000000000000000000000000000000000000) Nil!20603)))

(assert (=> d!566998 d!567036))

(declare-fun b_lambda!61527 () Bool)

(assert (= b_lambda!61519 (or b!1858193 b_lambda!61527)))

(declare-fun bs!410709 () Bool)

(declare-fun d!567038 () Bool)

(assert (= bs!410709 (and d!567038 b!1858193)))

(declare-fun noDuplicateKeys!27 (List!20683) Bool)

(assert (=> bs!410709 (= (dynLambda!10199 lambda!73359 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))) (noDuplicateKeys!27 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))))))))

(declare-fun m!2281853 () Bool)

(assert (=> bs!410709 m!2281853))

(assert (=> b!1858266 d!567038))

(check-sat (not d!567020) (not b_lambda!61523) (not b!1858267) (not b!1858277) (not b!1858256) (not bs!410709) (not d!567018) (not b_lambda!61525) (not d!567026) (not b_lambda!61527) (not d!567022) (not d!567028) (not d!567032) (not d!567016) (not b!1858278) (not b!1858258) (not b!1858276) (not d!567030) (not d!566998) (not b!1858273) (not b!1858257) (not bs!410707))
(check-sat)
(get-model)

(declare-fun d!567040 () Bool)

(declare-fun res!832432 () Bool)

(declare-fun e!1186621 () Bool)

(assert (=> d!567040 (=> res!832432 e!1186621)))

(assert (=> d!567040 (= res!832432 (= (select (arr!2891 lt!717142) #b00000000000000000000000000000000) (_1!11350 lt!717141)))))

(assert (=> d!567040 (= (arrayContainsKey!0 lt!717142 (_1!11350 lt!717141) #b00000000000000000000000000000000) e!1186621)))

(declare-fun b!1858283 () Bool)

(declare-fun e!1186622 () Bool)

(assert (=> b!1858283 (= e!1186621 e!1186622)))

(declare-fun res!832433 () Bool)

(assert (=> b!1858283 (=> (not res!832433) (not e!1186622))))

(assert (=> b!1858283 (= res!832433 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16268 lt!717142)))))

(declare-fun b!1858284 () Bool)

(assert (=> b!1858284 (= e!1186622 (arrayContainsKey!0 lt!717142 (_1!11350 lt!717141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!567040 (not res!832432)) b!1858283))

(assert (= (and b!1858283 res!832433) b!1858284))

(declare-fun m!2281855 () Bool)

(assert (=> d!567040 m!2281855))

(declare-fun m!2281857 () Bool)

(assert (=> b!1858284 m!2281857))

(assert (=> b!1858257 d!567040))

(declare-fun d!567042 () Bool)

(declare-fun res!832434 () Bool)

(declare-fun e!1186623 () Bool)

(assert (=> d!567042 (=> res!832434 e!1186623)))

(assert (=> d!567042 (= res!832434 ((_ is Nil!20605) (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))))))

(assert (=> d!567042 (= (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))) lambda!73369) e!1186623)))

(declare-fun b!1858285 () Bool)

(declare-fun e!1186624 () Bool)

(assert (=> b!1858285 (= e!1186623 e!1186624)))

(declare-fun res!832435 () Bool)

(assert (=> b!1858285 (=> (not res!832435) (not e!1186624))))

(assert (=> b!1858285 (= res!832435 (dynLambda!10199 lambda!73369 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))))))

(declare-fun b!1858286 () Bool)

(assert (=> b!1858286 (= e!1186624 (forall!4408 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))) lambda!73369))))

(assert (= (and d!567042 (not res!832434)) b!1858285))

(assert (= (and b!1858285 res!832435) b!1858286))

(declare-fun b_lambda!61529 () Bool)

(assert (=> (not b_lambda!61529) (not b!1858285)))

(declare-fun m!2281859 () Bool)

(assert (=> b!1858285 m!2281859))

(declare-fun m!2281861 () Bool)

(assert (=> b!1858286 m!2281861))

(assert (=> d!567030 d!567042))

(declare-fun d!567044 () Bool)

(declare-fun res!832436 () Bool)

(declare-fun e!1186625 () Bool)

(assert (=> d!567044 (=> res!832436 e!1186625)))

(assert (=> d!567044 (= res!832436 ((_ is Nil!20603) (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))

(assert (=> d!567044 (= (forall!4409 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) lambda!73362) e!1186625)))

(declare-fun b!1858287 () Bool)

(declare-fun e!1186626 () Bool)

(assert (=> b!1858287 (= e!1186625 e!1186626)))

(declare-fun res!832437 () Bool)

(assert (=> b!1858287 (=> (not res!832437) (not e!1186626))))

(assert (=> b!1858287 (= res!832437 (dynLambda!10200 lambda!73362 (h!26004 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(declare-fun b!1858288 () Bool)

(assert (=> b!1858288 (= e!1186626 (forall!4409 (t!172548 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))) lambda!73362))))

(assert (= (and d!567044 (not res!832436)) b!1858287))

(assert (= (and b!1858287 res!832437) b!1858288))

(declare-fun b_lambda!61531 () Bool)

(assert (=> (not b_lambda!61531) (not b!1858287)))

(declare-fun m!2281863 () Bool)

(assert (=> b!1858287 m!2281863))

(declare-fun m!2281865 () Bool)

(assert (=> b!1858288 m!2281865))

(assert (=> b!1858273 d!567044))

(declare-fun d!567046 () Bool)

(declare-fun getCurrentListMap!8 (array!6509 array!6507 (_ BitVec 32) (_ BitVec 32) List!20683 List!20683 (_ BitVec 32) Int) ListLongMap!207)

(assert (=> d!567046 (= (map!4349 lt!717135) (getCurrentListMap!8 (_keys!2190 lt!717135) (_values!2175 lt!717135) (mask!5603 lt!717135) (extraKeys!2143 lt!717135) (zeroValue!2153 lt!717135) (minValue!2153 lt!717135) #b00000000000000000000000000000000 (defaultEntry!2256 lt!717135)))))

(declare-fun bs!410710 () Bool)

(assert (= bs!410710 d!567046))

(declare-fun m!2281867 () Bool)

(assert (=> bs!410710 m!2281867))

(assert (=> b!1858256 d!567046))

(declare-fun d!567048 () Bool)

(declare-fun res!832442 () Bool)

(declare-fun e!1186631 () Bool)

(assert (=> d!567048 (=> res!832442 e!1186631)))

(assert (=> d!567048 (= res!832442 (or ((_ is Nil!20603) (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) ((_ is Nil!20603) (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(assert (=> d!567048 (= (noDuplicatedKeys!66 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) e!1186631)))

(declare-fun b!1858293 () Bool)

(declare-fun e!1186632 () Bool)

(assert (=> b!1858293 (= e!1186631 e!1186632)))

(declare-fun res!832443 () Bool)

(assert (=> b!1858293 (=> (not res!832443) (not e!1186632))))

(declare-fun containsKey!36 (List!20683 tuple2!19840) Bool)

(assert (=> b!1858293 (= res!832443 (not (containsKey!36 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun b!1858294 () Bool)

(assert (=> b!1858294 (= e!1186632 (noDuplicatedKeys!66 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))

(assert (= (and d!567048 (not res!832442)) b!1858293))

(assert (= (and b!1858293 res!832443) b!1858294))

(declare-fun m!2281869 () Bool)

(assert (=> b!1858293 m!2281869))

(declare-fun m!2281871 () Bool)

(assert (=> b!1858294 m!2281871))

(assert (=> d!567018 d!567048))

(declare-fun call!115508 () Regex!5061)

(declare-fun e!1186647 () Regex!5061)

(declare-fun b!1858315 () Bool)

(assert (=> b!1858315 (= e!1186647 (Union!5061 (Concat!8860 call!115508 (regTwo!10634 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))) EmptyLang!5061))))

(declare-fun call!115507 () Regex!5061)

(declare-fun b!1858316 () Bool)

(assert (=> b!1858316 (= e!1186647 (Union!5061 (Concat!8860 call!115508 (regTwo!10634 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))) call!115507))))

(declare-fun b!1858317 () Bool)

(declare-fun e!1186643 () Regex!5061)

(assert (=> b!1858317 (= e!1186643 EmptyLang!5061)))

(declare-fun d!567050 () Bool)

(declare-fun lt!717163 () Regex!5061)

(assert (=> d!567050 (validRegex!2080 lt!717163)))

(assert (=> d!567050 (= lt!717163 e!1186643)))

(declare-fun c!302540 () Bool)

(assert (=> d!567050 (= c!302540 (or ((_ is EmptyExpr!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) ((_ is EmptyLang!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))

(assert (=> d!567050 (validRegex!2080 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(assert (=> d!567050 (= (derivativeStep!1332 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))) (_2!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) lt!717163)))

(declare-fun b!1858318 () Bool)

(declare-fun e!1186644 () Regex!5061)

(declare-fun call!115510 () Regex!5061)

(assert (=> b!1858318 (= e!1186644 (Union!5061 call!115507 call!115510))))

(declare-fun b!1858319 () Bool)

(declare-fun c!302542 () Bool)

(declare-fun nullable!1570 (Regex!5061) Bool)

(assert (=> b!1858319 (= c!302542 (nullable!1570 (regOne!10634 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))

(declare-fun e!1186645 () Regex!5061)

(assert (=> b!1858319 (= e!1186645 e!1186647)))

(declare-fun b!1858320 () Bool)

(declare-fun c!302541 () Bool)

(assert (=> b!1858320 (= c!302541 ((_ is Union!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun e!1186646 () Regex!5061)

(assert (=> b!1858320 (= e!1186646 e!1186644)))

(declare-fun c!302544 () Bool)

(declare-fun bm!115502 () Bool)

(assert (=> bm!115502 (= call!115510 (derivativeStep!1332 (ite c!302541 (regTwo!10635 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (ite c!302544 (reg!5390 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (regOne!10634 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))) (_2!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun bm!115503 () Bool)

(assert (=> bm!115503 (= call!115507 (derivativeStep!1332 (ite c!302541 (regOne!10635 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (regTwo!10634 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))) (_2!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun bm!115504 () Bool)

(declare-fun call!115509 () Regex!5061)

(assert (=> bm!115504 (= call!115508 call!115509)))

(declare-fun b!1858321 () Bool)

(assert (=> b!1858321 (= e!1186645 (Concat!8860 call!115509 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun b!1858322 () Bool)

(assert (=> b!1858322 (= e!1186644 e!1186645)))

(assert (=> b!1858322 (= c!302544 ((_ is Star!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun b!1858323 () Bool)

(assert (=> b!1858323 (= e!1186643 e!1186646)))

(declare-fun c!302543 () Bool)

(assert (=> b!1858323 (= c!302543 ((_ is ElementMatch!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun b!1858324 () Bool)

(assert (=> b!1858324 (= e!1186646 (ite (= (_2!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))) (c!302517 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))) EmptyExpr!5061 EmptyLang!5061))))

(declare-fun bm!115505 () Bool)

(assert (=> bm!115505 (= call!115509 call!115510)))

(assert (= (and d!567050 c!302540) b!1858317))

(assert (= (and d!567050 (not c!302540)) b!1858323))

(assert (= (and b!1858323 c!302543) b!1858324))

(assert (= (and b!1858323 (not c!302543)) b!1858320))

(assert (= (and b!1858320 c!302541) b!1858318))

(assert (= (and b!1858320 (not c!302541)) b!1858322))

(assert (= (and b!1858322 c!302544) b!1858321))

(assert (= (and b!1858322 (not c!302544)) b!1858319))

(assert (= (and b!1858319 c!302542) b!1858316))

(assert (= (and b!1858319 (not c!302542)) b!1858315))

(assert (= (or b!1858316 b!1858315) bm!115504))

(assert (= (or b!1858321 bm!115504) bm!115505))

(assert (= (or b!1858318 b!1858316) bm!115503))

(assert (= (or b!1858318 bm!115505) bm!115502))

(declare-fun m!2281873 () Bool)

(assert (=> d!567050 m!2281873))

(assert (=> d!567050 m!2281849))

(declare-fun m!2281875 () Bool)

(assert (=> b!1858319 m!2281875))

(declare-fun m!2281877 () Bool)

(assert (=> bm!115502 m!2281877))

(declare-fun m!2281879 () Bool)

(assert (=> bm!115503 m!2281879))

(assert (=> b!1858278 d!567050))

(declare-fun bs!410711 () Bool)

(declare-fun d!567052 () Bool)

(assert (= bs!410711 (and d!567052 b!1858193)))

(declare-fun lambda!73371 () Int)

(assert (=> bs!410711 (not (= lambda!73371 lambda!73359))))

(declare-fun bs!410712 () Bool)

(assert (= bs!410712 (and d!567052 d!567030)))

(assert (=> bs!410712 (= (= (hashF!3759 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))) (hashF!3759 lt!716995)) (= lambda!73371 lambda!73369))))

(declare-fun bs!410713 () Bool)

(assert (= bs!410713 (and d!567052 b!1858276)))

(assert (=> bs!410713 (not (= lambda!73371 lambda!73370))))

(assert (=> d!567052 true))

(assert (=> d!567052 (= (allKeysSameHashInMap!79 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) (hashF!3759 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))) (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))) lambda!73371))))

(declare-fun bs!410714 () Bool)

(assert (= bs!410714 d!567052))

(declare-fun m!2281881 () Bool)

(assert (=> bs!410714 m!2281881))

(assert (=> b!1858277 d!567052))

(declare-fun d!567054 () Bool)

(assert (=> d!567054 (= (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) (map!4349 (v!26039 (underlying!4013 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(declare-fun bs!410715 () Bool)

(assert (= bs!410715 d!567054))

(declare-fun m!2281883 () Bool)

(assert (=> bs!410715 m!2281883))

(assert (=> b!1858277 d!567054))

(declare-fun d!567056 () Bool)

(declare-fun res!832450 () Bool)

(declare-fun e!1186650 () Bool)

(assert (=> d!567056 (=> (not res!832450) (not e!1186650))))

(declare-fun simpleValid!5 (LongMapFixedSize!3792) Bool)

(assert (=> d!567056 (= res!832450 (simpleValid!5 (v!26039 (underlying!4013 lt!717013))))))

(assert (=> d!567056 (= (valid!1519 (v!26039 (underlying!4013 lt!717013))) e!1186650)))

(declare-fun b!1858331 () Bool)

(declare-fun res!832451 () Bool)

(assert (=> b!1858331 (=> (not res!832451) (not e!1186650))))

(assert (=> b!1858331 (= res!832451 (= (arrayCountValidKeys!0 (_keys!2190 (v!26039 (underlying!4013 lt!717013))) #b00000000000000000000000000000000 (size!16268 (_keys!2190 (v!26039 (underlying!4013 lt!717013))))) (_size!3873 (v!26039 (underlying!4013 lt!717013)))))))

(declare-fun b!1858332 () Bool)

(declare-fun res!832452 () Bool)

(assert (=> b!1858332 (=> (not res!832452) (not e!1186650))))

(assert (=> b!1858332 (= res!832452 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2190 (v!26039 (underlying!4013 lt!717013))) (mask!5603 (v!26039 (underlying!4013 lt!717013)))))))

(declare-fun b!1858333 () Bool)

(assert (=> b!1858333 (= e!1186650 (arrayNoDuplicates!0 (_keys!2190 (v!26039 (underlying!4013 lt!717013))) #b00000000000000000000000000000000 Nil!20606))))

(assert (= (and d!567056 res!832450) b!1858331))

(assert (= (and b!1858331 res!832451) b!1858332))

(assert (= (and b!1858332 res!832452) b!1858333))

(declare-fun m!2281885 () Bool)

(assert (=> d!567056 m!2281885))

(declare-fun m!2281887 () Bool)

(assert (=> b!1858331 m!2281887))

(declare-fun m!2281889 () Bool)

(assert (=> b!1858332 m!2281889))

(declare-fun m!2281891 () Bool)

(assert (=> b!1858333 m!2281891))

(assert (=> d!567026 d!567056))

(declare-fun d!567058 () Bool)

(assert (=> d!567058 (= (invariantList!262 (toList!989 lt!717160)) (noDuplicatedKeys!66 (toList!989 lt!717160)))))

(declare-fun bs!410716 () Bool)

(assert (= bs!410716 d!567058))

(declare-fun m!2281893 () Bool)

(assert (=> bs!410716 m!2281893))

(assert (=> d!567020 d!567058))

(declare-fun bs!410717 () Bool)

(declare-fun d!567060 () Bool)

(assert (= bs!410717 (and d!567060 b!1858193)))

(declare-fun lambda!73374 () Int)

(assert (=> bs!410717 (= lambda!73374 lambda!73359)))

(declare-fun bs!410718 () Bool)

(assert (= bs!410718 (and d!567060 d!567030)))

(assert (=> bs!410718 (not (= lambda!73374 lambda!73369))))

(declare-fun bs!410719 () Bool)

(assert (= bs!410719 (and d!567060 b!1858276)))

(assert (=> bs!410719 (= lambda!73374 lambda!73370)))

(declare-fun bs!410720 () Bool)

(assert (= bs!410720 (and d!567060 d!567052)))

(assert (=> bs!410720 (not (= lambda!73374 lambda!73371))))

(declare-fun lt!717166 () ListMap!573)

(assert (=> d!567060 (invariantList!262 (toList!989 lt!717166))))

(declare-fun e!1186653 () ListMap!573)

(assert (=> d!567060 (= lt!717166 e!1186653)))

(declare-fun c!302547 () Bool)

(assert (=> d!567060 (= c!302547 ((_ is Cons!20605) (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(assert (=> d!567060 (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))) lambda!73374)))

(assert (=> d!567060 (= (extractMap!68 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))) lt!717166)))

(declare-fun b!1858338 () Bool)

(declare-fun addToMapMapFromBucket!10 (List!20683 ListMap!573) ListMap!573)

(assert (=> b!1858338 (= e!1186653 (addToMapMapFromBucket!10 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (extractMap!68 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))

(declare-fun b!1858339 () Bool)

(assert (=> b!1858339 (= e!1186653 (ListMap!574 Nil!20603))))

(assert (= (and d!567060 c!302547) b!1858338))

(assert (= (and d!567060 (not c!302547)) b!1858339))

(declare-fun m!2281895 () Bool)

(assert (=> d!567060 m!2281895))

(declare-fun m!2281897 () Bool)

(assert (=> d!567060 m!2281897))

(declare-fun m!2281899 () Bool)

(assert (=> b!1858338 m!2281899))

(assert (=> b!1858338 m!2281899))

(declare-fun m!2281901 () Bool)

(assert (=> b!1858338 m!2281901))

(assert (=> d!567020 d!567060))

(assert (=> d!567020 d!567054))

(assert (=> d!567020 d!567032))

(declare-fun d!567062 () Bool)

(declare-fun res!832457 () Bool)

(declare-fun e!1186658 () Bool)

(assert (=> d!567062 (=> res!832457 e!1186658)))

(assert (=> d!567062 (= res!832457 (not ((_ is Cons!20603) (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))))))))

(assert (=> d!567062 (= (noDuplicateKeys!27 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))))) e!1186658)))

(declare-fun b!1858344 () Bool)

(declare-fun e!1186659 () Bool)

(assert (=> b!1858344 (= e!1186658 e!1186659)))

(declare-fun res!832458 () Bool)

(assert (=> b!1858344 (=> (not res!832458) (not e!1186659))))

(declare-fun containsKey!37 (List!20683 tuple2!19840) Bool)

(assert (=> b!1858344 (= res!832458 (not (containsKey!37 (t!172548 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))))) (_1!11348 (h!26004 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))))))))))

(declare-fun b!1858345 () Bool)

(assert (=> b!1858345 (= e!1186659 (noDuplicateKeys!27 (t!172548 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))))))))

(assert (= (and d!567062 (not res!832457)) b!1858344))

(assert (= (and b!1858344 res!832458) b!1858345))

(declare-fun m!2281903 () Bool)

(assert (=> b!1858344 m!2281903))

(declare-fun m!2281905 () Bool)

(assert (=> b!1858345 m!2281905))

(assert (=> bs!410709 d!567062))

(declare-fun d!567064 () Bool)

(declare-fun res!832459 () Bool)

(declare-fun e!1186660 () Bool)

(assert (=> d!567064 (=> res!832459 e!1186660)))

(assert (=> d!567064 (= res!832459 ((_ is Nil!20605) (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(assert (=> d!567064 (= (forall!4408 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))) lambda!73370) e!1186660)))

(declare-fun b!1858346 () Bool)

(declare-fun e!1186661 () Bool)

(assert (=> b!1858346 (= e!1186660 e!1186661)))

(declare-fun res!832460 () Bool)

(assert (=> b!1858346 (=> (not res!832460) (not e!1186661))))

(assert (=> b!1858346 (= res!832460 (dynLambda!10199 lambda!73370 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun b!1858347 () Bool)

(assert (=> b!1858347 (= e!1186661 (forall!4408 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))) lambda!73370))))

(assert (= (and d!567064 (not res!832459)) b!1858346))

(assert (= (and b!1858346 res!832460) b!1858347))

(declare-fun b_lambda!61533 () Bool)

(assert (=> (not b_lambda!61533) (not b!1858346)))

(declare-fun m!2281907 () Bool)

(assert (=> b!1858346 m!2281907))

(declare-fun m!2281909 () Bool)

(assert (=> b!1858347 m!2281909))

(assert (=> b!1858276 d!567064))

(assert (=> b!1858276 d!567054))

(declare-fun b!1858366 () Bool)

(declare-fun e!1186679 () Bool)

(declare-fun e!1186680 () Bool)

(assert (=> b!1858366 (= e!1186679 e!1186680)))

(declare-fun res!832474 () Bool)

(assert (=> b!1858366 (= res!832474 (not (nullable!1570 (reg!5390 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))))

(assert (=> b!1858366 (=> (not res!832474) (not e!1186680))))

(declare-fun b!1858367 () Bool)

(declare-fun e!1186676 () Bool)

(assert (=> b!1858367 (= e!1186676 e!1186679)))

(declare-fun c!302552 () Bool)

(assert (=> b!1858367 (= c!302552 ((_ is Star!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun b!1858368 () Bool)

(declare-fun res!832471 () Bool)

(declare-fun e!1186677 () Bool)

(assert (=> b!1858368 (=> res!832471 e!1186677)))

(assert (=> b!1858368 (= res!832471 (not ((_ is Concat!8860) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))

(declare-fun e!1186682 () Bool)

(assert (=> b!1858368 (= e!1186682 e!1186677)))

(declare-fun b!1858369 () Bool)

(declare-fun e!1186681 () Bool)

(declare-fun call!115519 () Bool)

(assert (=> b!1858369 (= e!1186681 call!115519)))

(declare-fun call!115517 () Bool)

(declare-fun bm!115512 () Bool)

(declare-fun c!302553 () Bool)

(assert (=> bm!115512 (= call!115517 (validRegex!2080 (ite c!302552 (reg!5390 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (ite c!302553 (regOne!10635 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (regOne!10634 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))))

(declare-fun b!1858370 () Bool)

(declare-fun res!832473 () Bool)

(assert (=> b!1858370 (=> (not res!832473) (not e!1186681))))

(declare-fun call!115518 () Bool)

(assert (=> b!1858370 (= res!832473 call!115518)))

(assert (=> b!1858370 (= e!1186682 e!1186681)))

(declare-fun b!1858371 () Bool)

(declare-fun e!1186678 () Bool)

(assert (=> b!1858371 (= e!1186678 call!115519)))

(declare-fun b!1858372 () Bool)

(assert (=> b!1858372 (= e!1186679 e!1186682)))

(assert (=> b!1858372 (= c!302553 ((_ is Union!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(declare-fun bm!115514 () Bool)

(assert (=> bm!115514 (= call!115519 (validRegex!2080 (ite c!302553 (regTwo!10635 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (regTwo!10634 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))))

(declare-fun b!1858373 () Bool)

(assert (=> b!1858373 (= e!1186680 call!115517)))

(declare-fun b!1858374 () Bool)

(assert (=> b!1858374 (= e!1186677 e!1186678)))

(declare-fun res!832472 () Bool)

(assert (=> b!1858374 (=> (not res!832472) (not e!1186678))))

(assert (=> b!1858374 (= res!832472 call!115518)))

(declare-fun bm!115513 () Bool)

(assert (=> bm!115513 (= call!115518 call!115517)))

(declare-fun d!567066 () Bool)

(declare-fun res!832475 () Bool)

(assert (=> d!567066 (=> res!832475 e!1186676)))

(assert (=> d!567066 (= res!832475 ((_ is ElementMatch!5061) (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))

(assert (=> d!567066 (= (validRegex!2080 (_1!11347 (_1!11348 (h!26004 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) e!1186676)))

(assert (= (and d!567066 (not res!832475)) b!1858367))

(assert (= (and b!1858367 c!302552) b!1858366))

(assert (= (and b!1858367 (not c!302552)) b!1858372))

(assert (= (and b!1858366 res!832474) b!1858373))

(assert (= (and b!1858372 c!302553) b!1858370))

(assert (= (and b!1858372 (not c!302553)) b!1858368))

(assert (= (and b!1858370 res!832473) b!1858369))

(assert (= (and b!1858368 (not res!832471)) b!1858374))

(assert (= (and b!1858374 res!832472) b!1858371))

(assert (= (or b!1858370 b!1858374) bm!115513))

(assert (= (or b!1858369 b!1858371) bm!115514))

(assert (= (or b!1858373 bm!115513) bm!115512))

(declare-fun m!2281911 () Bool)

(assert (=> b!1858366 m!2281911))

(declare-fun m!2281913 () Bool)

(assert (=> bm!115512 m!2281913))

(declare-fun m!2281915 () Bool)

(assert (=> bm!115514 m!2281915))

(assert (=> bs!410707 d!567066))

(declare-fun d!567068 () Bool)

(declare-fun res!832476 () Bool)

(declare-fun e!1186683 () Bool)

(assert (=> d!567068 (=> res!832476 e!1186683)))

(assert (=> d!567068 (= res!832476 ((_ is Nil!20605) (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))))))

(assert (=> d!567068 (= (forall!4408 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))) lambda!73359) e!1186683)))

(declare-fun b!1858375 () Bool)

(declare-fun e!1186684 () Bool)

(assert (=> b!1858375 (= e!1186683 e!1186684)))

(declare-fun res!832477 () Bool)

(assert (=> b!1858375 (=> (not res!832477) (not e!1186684))))

(assert (=> b!1858375 (= res!832477 (dynLambda!10199 lambda!73359 (h!26006 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))))))))

(declare-fun b!1858376 () Bool)

(assert (=> b!1858376 (= e!1186684 (forall!4408 (t!172550 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))) lambda!73359))))

(assert (= (and d!567068 (not res!832476)) b!1858375))

(assert (= (and b!1858375 res!832477) b!1858376))

(declare-fun b_lambda!61535 () Bool)

(assert (=> (not b_lambda!61535) (not b!1858375)))

(declare-fun m!2281917 () Bool)

(assert (=> b!1858375 m!2281917))

(declare-fun m!2281919 () Bool)

(assert (=> b!1858376 m!2281919))

(assert (=> b!1858267 d!567068))

(declare-fun d!567070 () Bool)

(assert (=> d!567070 (arrayNoDuplicates!0 lt!717151 lt!717147 lt!717139)))

(declare-fun lt!717169 () Unit!35207)

(declare-fun choose!793 (array!6509 (_ BitVec 32) (_ BitVec 32) List!20686) Unit!35207)

(assert (=> d!567070 (= lt!717169 (choose!793 lt!717151 lt!717147 (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!717139))))

(assert (=> d!567070 (= (size!16268 lt!717151) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!567070 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!717151 lt!717147 (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!717139) lt!717169)))

(declare-fun bs!410721 () Bool)

(assert (= bs!410721 d!567070))

(assert (=> bs!410721 m!2281793))

(declare-fun m!2281921 () Bool)

(assert (=> bs!410721 m!2281921))

(assert (=> d!566998 d!567070))

(declare-fun d!567072 () Bool)

(declare-fun res!832483 () Bool)

(declare-fun e!1186691 () Bool)

(assert (=> d!567072 (=> res!832483 e!1186691)))

(assert (=> d!567072 (= res!832483 (bvsge lt!717150 (size!16268 lt!717144)))))

(assert (=> d!567072 (= (arrayForallSeekEntryOrOpenFound!0 lt!717150 lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001)) e!1186691)))

(declare-fun b!1858385 () Bool)

(declare-fun e!1186693 () Bool)

(declare-fun call!115522 () Bool)

(assert (=> b!1858385 (= e!1186693 call!115522)))

(declare-fun bm!115517 () Bool)

(assert (=> bm!115517 (= call!115522 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!717150 #b00000000000000000000000000000001) lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001)))))

(declare-fun b!1858386 () Bool)

(assert (=> b!1858386 (= e!1186691 e!1186693)))

(declare-fun c!302556 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1858386 (= c!302556 (validKeyInArray!0 (select (arr!2891 lt!717144) lt!717150)))))

(declare-fun b!1858387 () Bool)

(declare-fun e!1186692 () Bool)

(assert (=> b!1858387 (= e!1186692 call!115522)))

(declare-fun b!1858388 () Bool)

(assert (=> b!1858388 (= e!1186693 e!1186692)))

(declare-fun lt!717176 () (_ BitVec 64))

(assert (=> b!1858388 (= lt!717176 (select (arr!2891 lt!717144) lt!717150))))

(declare-fun lt!717177 () Unit!35207)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6509 (_ BitVec 64) (_ BitVec 32)) Unit!35207)

(assert (=> b!1858388 (= lt!717177 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!717144 lt!717176 lt!717150))))

(assert (=> b!1858388 (arrayContainsKey!0 lt!717144 lt!717176 #b00000000000000000000000000000000)))

(declare-fun lt!717178 () Unit!35207)

(assert (=> b!1858388 (= lt!717178 lt!717177)))

(declare-fun res!832482 () Bool)

(declare-datatypes ((SeekEntryResult!7 0))(
  ( (Found!7 (index!1069 (_ BitVec 32))) (Undefined!7) (MissingZero!7 (index!1070 (_ BitVec 32))) (MissingVacant!7 (index!1071 (_ BitVec 32))) (Intermediate!7 (undefined!88 Bool) (index!1072 (_ BitVec 32)) (x!372367 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6509 (_ BitVec 32)) SeekEntryResult!7)

(assert (=> b!1858388 (= res!832482 (= (seekEntryOrOpen!0 (select (arr!2891 lt!717144) lt!717150) lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001)) (Found!7 lt!717150)))))

(assert (=> b!1858388 (=> (not res!832482) (not e!1186692))))

(assert (= (and d!567072 (not res!832483)) b!1858386))

(assert (= (and b!1858386 c!302556) b!1858388))

(assert (= (and b!1858386 (not c!302556)) b!1858385))

(assert (= (and b!1858388 res!832482) b!1858387))

(assert (= (or b!1858387 b!1858385) bm!115517))

(declare-fun m!2281923 () Bool)

(assert (=> bm!115517 m!2281923))

(declare-fun m!2281925 () Bool)

(assert (=> b!1858386 m!2281925))

(assert (=> b!1858386 m!2281925))

(declare-fun m!2281927 () Bool)

(assert (=> b!1858386 m!2281927))

(assert (=> b!1858388 m!2281925))

(declare-fun m!2281929 () Bool)

(assert (=> b!1858388 m!2281929))

(declare-fun m!2281931 () Bool)

(assert (=> b!1858388 m!2281931))

(assert (=> b!1858388 m!2281925))

(declare-fun m!2281933 () Bool)

(assert (=> b!1858388 m!2281933))

(assert (=> d!566998 d!567072))

(declare-fun d!567074 () Bool)

(assert (=> d!567074 (= (arrayCountValidKeys!0 lt!717155 lt!717146 lt!717148) #b00000000000000000000000000000000)))

(declare-fun lt!717181 () Unit!35207)

(declare-fun choose!424 (array!6509 (_ BitVec 32) (_ BitVec 32)) Unit!35207)

(assert (=> d!567074 (= lt!717181 (choose!424 lt!717155 lt!717146 lt!717148))))

(assert (=> d!567074 (bvslt (size!16268 lt!717155) #b01111111111111111111111111111111)))

(assert (=> d!567074 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!717155 lt!717146 lt!717148) lt!717181)))

(declare-fun bs!410722 () Bool)

(assert (= bs!410722 d!567074))

(assert (=> bs!410722 m!2281807))

(declare-fun m!2281935 () Bool)

(assert (=> bs!410722 m!2281935))

(assert (=> d!566998 d!567074))

(declare-fun d!567076 () Bool)

(assert (=> d!567076 (= (map!4349 lt!717137) (getCurrentListMap!8 (_keys!2190 lt!717137) (_values!2175 lt!717137) (mask!5603 lt!717137) (extraKeys!2143 lt!717137) (zeroValue!2153 lt!717137) (minValue!2153 lt!717137) #b00000000000000000000000000000000 (defaultEntry!2256 lt!717137)))))

(declare-fun bs!410723 () Bool)

(assert (= bs!410723 d!567076))

(declare-fun m!2281937 () Bool)

(assert (=> bs!410723 m!2281937))

(assert (=> d!566998 d!567076))

(assert (=> d!566998 d!566988))

(declare-fun d!567078 () Bool)

(declare-fun res!832484 () Bool)

(declare-fun e!1186694 () Bool)

(assert (=> d!567078 (=> (not res!832484) (not e!1186694))))

(assert (=> d!567078 (= res!832484 (simpleValid!5 lt!717135))))

(assert (=> d!567078 (= (valid!1519 lt!717135) e!1186694)))

(declare-fun b!1858389 () Bool)

(declare-fun res!832485 () Bool)

(assert (=> b!1858389 (=> (not res!832485) (not e!1186694))))

(assert (=> b!1858389 (= res!832485 (= (arrayCountValidKeys!0 (_keys!2190 lt!717135) #b00000000000000000000000000000000 (size!16268 (_keys!2190 lt!717135))) (_size!3873 lt!717135)))))

(declare-fun b!1858390 () Bool)

(declare-fun res!832486 () Bool)

(assert (=> b!1858390 (=> (not res!832486) (not e!1186694))))

(assert (=> b!1858390 (= res!832486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2190 lt!717135) (mask!5603 lt!717135)))))

(declare-fun b!1858391 () Bool)

(assert (=> b!1858391 (= e!1186694 (arrayNoDuplicates!0 (_keys!2190 lt!717135) #b00000000000000000000000000000000 Nil!20606))))

(assert (= (and d!567078 res!832484) b!1858389))

(assert (= (and b!1858389 res!832485) b!1858390))

(assert (= (and b!1858390 res!832486) b!1858391))

(declare-fun m!2281939 () Bool)

(assert (=> d!567078 m!2281939))

(declare-fun m!2281941 () Bool)

(assert (=> b!1858389 m!2281941))

(declare-fun m!2281943 () Bool)

(assert (=> b!1858390 m!2281943))

(declare-fun m!2281945 () Bool)

(assert (=> b!1858391 m!2281945))

(assert (=> d!566998 d!567078))

(declare-fun d!567080 () Bool)

(assert (=> d!567080 (arrayForallSeekEntryOrOpenFound!0 lt!717150 lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(declare-fun lt!717184 () Unit!35207)

(declare-fun choose!588 (array!6509 (_ BitVec 32) (_ BitVec 32)) Unit!35207)

(assert (=> d!567080 (= lt!717184 (choose!588 lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lt!717150))))

(assert (=> d!567080 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!567080 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!717144 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lt!717150) lt!717184)))

(declare-fun bs!410724 () Bool)

(assert (= bs!410724 d!567080))

(assert (=> bs!410724 m!2281791))

(declare-fun m!2281947 () Bool)

(assert (=> bs!410724 m!2281947))

(assert (=> bs!410724 m!2281671))

(assert (=> d!566998 d!567080))

(declare-fun b!1858402 () Bool)

(declare-fun e!1186706 () Bool)

(declare-fun contains!3800 (List!20686 (_ BitVec 64)) Bool)

(assert (=> b!1858402 (= e!1186706 (contains!3800 lt!717139 (select (arr!2891 lt!717151) lt!717147)))))

(declare-fun b!1858403 () Bool)

(declare-fun e!1186705 () Bool)

(declare-fun call!115525 () Bool)

(assert (=> b!1858403 (= e!1186705 call!115525)))

(declare-fun d!567082 () Bool)

(declare-fun res!832495 () Bool)

(declare-fun e!1186704 () Bool)

(assert (=> d!567082 (=> res!832495 e!1186704)))

(assert (=> d!567082 (= res!832495 (bvsge lt!717147 (size!16268 lt!717151)))))

(assert (=> d!567082 (= (arrayNoDuplicates!0 lt!717151 lt!717147 lt!717139) e!1186704)))

(declare-fun bm!115520 () Bool)

(declare-fun c!302559 () Bool)

(assert (=> bm!115520 (= call!115525 (arrayNoDuplicates!0 lt!717151 (bvadd lt!717147 #b00000000000000000000000000000001) (ite c!302559 (Cons!20606 (select (arr!2891 lt!717151) lt!717147) lt!717139) lt!717139)))))

(declare-fun b!1858404 () Bool)

(assert (=> b!1858404 (= e!1186705 call!115525)))

(declare-fun b!1858405 () Bool)

(declare-fun e!1186703 () Bool)

(assert (=> b!1858405 (= e!1186703 e!1186705)))

(assert (=> b!1858405 (= c!302559 (validKeyInArray!0 (select (arr!2891 lt!717151) lt!717147)))))

(declare-fun b!1858406 () Bool)

(assert (=> b!1858406 (= e!1186704 e!1186703)))

(declare-fun res!832493 () Bool)

(assert (=> b!1858406 (=> (not res!832493) (not e!1186703))))

(assert (=> b!1858406 (= res!832493 (not e!1186706))))

(declare-fun res!832494 () Bool)

(assert (=> b!1858406 (=> (not res!832494) (not e!1186706))))

(assert (=> b!1858406 (= res!832494 (validKeyInArray!0 (select (arr!2891 lt!717151) lt!717147)))))

(assert (= (and d!567082 (not res!832495)) b!1858406))

(assert (= (and b!1858406 res!832494) b!1858402))

(assert (= (and b!1858406 res!832493) b!1858405))

(assert (= (and b!1858405 c!302559) b!1858404))

(assert (= (and b!1858405 (not c!302559)) b!1858403))

(assert (= (or b!1858404 b!1858403) bm!115520))

(declare-fun m!2281949 () Bool)

(assert (=> b!1858402 m!2281949))

(assert (=> b!1858402 m!2281949))

(declare-fun m!2281951 () Bool)

(assert (=> b!1858402 m!2281951))

(assert (=> bm!115520 m!2281949))

(declare-fun m!2281953 () Bool)

(assert (=> bm!115520 m!2281953))

(assert (=> b!1858405 m!2281949))

(assert (=> b!1858405 m!2281949))

(declare-fun m!2281955 () Bool)

(assert (=> b!1858405 m!2281955))

(assert (=> b!1858406 m!2281949))

(assert (=> b!1858406 m!2281949))

(assert (=> b!1858406 m!2281955))

(assert (=> d!566998 d!567082))

(declare-fun b!1858415 () Bool)

(declare-fun e!1186712 () (_ BitVec 32))

(declare-fun call!115528 () (_ BitVec 32))

(assert (=> b!1858415 (= e!1186712 (bvadd #b00000000000000000000000000000001 call!115528))))

(declare-fun b!1858416 () Bool)

(assert (=> b!1858416 (= e!1186712 call!115528)))

(declare-fun b!1858417 () Bool)

(declare-fun e!1186711 () (_ BitVec 32))

(assert (=> b!1858417 (= e!1186711 e!1186712)))

(declare-fun c!302564 () Bool)

(assert (=> b!1858417 (= c!302564 (validKeyInArray!0 (select (arr!2891 lt!717155) lt!717146)))))

(declare-fun bm!115523 () Bool)

(assert (=> bm!115523 (= call!115528 (arrayCountValidKeys!0 lt!717155 (bvadd lt!717146 #b00000000000000000000000000000001) lt!717148))))

(declare-fun b!1858418 () Bool)

(assert (=> b!1858418 (= e!1186711 #b00000000000000000000000000000000)))

(declare-fun d!567084 () Bool)

(declare-fun lt!717187 () (_ BitVec 32))

(assert (=> d!567084 (and (bvsge lt!717187 #b00000000000000000000000000000000) (bvsle lt!717187 (bvsub (size!16268 lt!717155) lt!717146)))))

(assert (=> d!567084 (= lt!717187 e!1186711)))

(declare-fun c!302565 () Bool)

(assert (=> d!567084 (= c!302565 (bvsge lt!717146 lt!717148))))

(assert (=> d!567084 (and (bvsle lt!717146 lt!717148) (bvsge lt!717146 #b00000000000000000000000000000000) (bvsle lt!717148 (size!16268 lt!717155)))))

(assert (=> d!567084 (= (arrayCountValidKeys!0 lt!717155 lt!717146 lt!717148) lt!717187)))

(assert (= (and d!567084 c!302565) b!1858418))

(assert (= (and d!567084 (not c!302565)) b!1858417))

(assert (= (and b!1858417 c!302564) b!1858415))

(assert (= (and b!1858417 (not c!302564)) b!1858416))

(assert (= (or b!1858415 b!1858416) bm!115523))

(declare-fun m!2281957 () Bool)

(assert (=> b!1858417 m!2281957))

(assert (=> b!1858417 m!2281957))

(declare-fun m!2281959 () Bool)

(assert (=> b!1858417 m!2281959))

(declare-fun m!2281961 () Bool)

(assert (=> bm!115523 m!2281961))

(assert (=> d!566998 d!567084))

(declare-fun d!567086 () Bool)

(assert (=> d!567086 (= (valid!1518 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))) (valid!1519 (v!26039 (underlying!4013 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))

(declare-fun bs!410725 () Bool)

(assert (= bs!410725 d!567086))

(declare-fun m!2281963 () Bool)

(assert (=> bs!410725 m!2281963))

(assert (=> d!567032 d!567086))

(declare-fun d!567088 () Bool)

(declare-fun res!832496 () Bool)

(declare-fun e!1186713 () Bool)

(assert (=> d!567088 (=> (not res!832496) (not e!1186713))))

(assert (=> d!567088 (= res!832496 (simpleValid!5 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))))))

(assert (=> d!567088 (= (valid!1519 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) e!1186713)))

(declare-fun b!1858419 () Bool)

(declare-fun res!832497 () Bool)

(assert (=> b!1858419 (=> (not res!832497) (not e!1186713))))

(assert (=> b!1858419 (= res!832497 (= (arrayCountValidKeys!0 (_keys!2190 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) #b00000000000000000000000000000000 (size!16268 (_keys!2190 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))))) (_size!3873 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995)))))))))

(declare-fun b!1858420 () Bool)

(declare-fun res!832498 () Bool)

(assert (=> b!1858420 (=> (not res!832498) (not e!1186713))))

(assert (=> b!1858420 (= res!832498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!2190 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) (mask!5603 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995)))))))))

(declare-fun b!1858421 () Bool)

(assert (=> b!1858421 (= e!1186713 (arrayNoDuplicates!0 (_keys!2190 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) #b00000000000000000000000000000000 Nil!20606))))

(assert (= (and d!567088 res!832496) b!1858419))

(assert (= (and b!1858419 res!832497) b!1858420))

(assert (= (and b!1858420 res!832498) b!1858421))

(declare-fun m!2281965 () Bool)

(assert (=> d!567088 m!2281965))

(declare-fun m!2281967 () Bool)

(assert (=> b!1858419 m!2281967))

(declare-fun m!2281969 () Bool)

(assert (=> b!1858420 m!2281969))

(declare-fun m!2281971 () Bool)

(assert (=> b!1858421 m!2281971))

(assert (=> d!567022 d!567088))

(declare-fun d!567090 () Bool)

(assert (=> d!567090 (= (head!4348 (toList!988 (map!4349 lt!717137))) (h!26006 (toList!988 (map!4349 lt!717137))))))

(assert (=> b!1858258 d!567090))

(assert (=> b!1858258 d!567076))

(declare-fun d!567092 () Bool)

(declare-fun e!1186716 () Bool)

(assert (=> d!567092 e!1186716))

(declare-fun c!302568 () Bool)

(assert (=> d!567092 (= c!302568 (and (not (= (_1!11350 lt!717141) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!11350 lt!717141) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!717190 () Unit!35207)

(declare-fun choose!11683 (array!6509 array!6507 (_ BitVec 32) (_ BitVec 32) List!20683 List!20683 (_ BitVec 64) Int) Unit!35207)

(assert (=> d!567092 (= lt!717190 (choose!11683 lt!717142 (array!6508 ((as const (Array (_ BitVec 32) List!20683)) lt!717138) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lt!717157 lt!717138 lt!717138 (_1!11350 lt!717141) lambda!73350))))

(assert (=> d!567092 (validMask!0 (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001))))

(assert (=> d!567092 (= (lemmaKeyInListMapIsInArray!7 lt!717142 (array!6508 ((as const (Array (_ BitVec 32) List!20683)) lt!717138) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) lt!717157 lt!717138 lt!717138 (_1!11350 lt!717141) lambda!73350) lt!717190)))

(declare-fun b!1858426 () Bool)

(assert (=> b!1858426 (= e!1186716 (arrayContainsKey!0 lt!717142 (_1!11350 lt!717141) #b00000000000000000000000000000000))))

(declare-fun b!1858427 () Bool)

(assert (=> b!1858427 (= e!1186716 (ite (= (_1!11350 lt!717141) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!717157 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!717157 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!567092 c!302568) b!1858426))

(assert (= (and d!567092 (not c!302568)) b!1858427))

(declare-fun m!2281973 () Bool)

(assert (=> d!567092 m!2281973))

(assert (=> d!567092 m!2281671))

(assert (=> b!1858426 m!2281809))

(assert (=> b!1858258 d!567092))

(declare-fun d!567094 () Bool)

(declare-fun lt!717193 () (_ BitVec 32))

(assert (=> d!567094 (and (or (bvslt lt!717193 #b00000000000000000000000000000000) (bvsge lt!717193 (size!16268 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (and (bvsge lt!717193 #b00000000000000000000000000000000) (bvslt lt!717193 (size!16268 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))) (bvsge lt!717193 #b00000000000000000000000000000000) (bvslt lt!717193 (size!16268 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (= (select (arr!2891 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) lt!717193) (_1!11350 lt!717141)))))

(declare-fun e!1186719 () (_ BitVec 32))

(assert (=> d!567094 (= lt!717193 e!1186719)))

(declare-fun c!302571 () Bool)

(assert (=> d!567094 (= c!302571 (= (select (arr!2891 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!11350 lt!717141)))))

(assert (=> d!567094 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!16268 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (bvslt (size!16268 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!567094 (= (arrayScanForKey!0 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!11350 lt!717141) #b00000000000000000000000000000000) lt!717193)))

(declare-fun b!1858432 () Bool)

(assert (=> b!1858432 (= e!1186719 #b00000000000000000000000000000000)))

(declare-fun b!1858433 () Bool)

(assert (=> b!1858433 (= e!1186719 (arrayScanForKey!0 (array!6510 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub #b00000000000000000000000000010000 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!11350 lt!717141) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!567094 c!302571) b!1858432))

(assert (= (and d!567094 (not c!302571)) b!1858433))

(declare-fun m!2281975 () Bool)

(assert (=> d!567094 m!2281975))

(declare-fun m!2281977 () Bool)

(assert (=> d!567094 m!2281977))

(declare-fun m!2281979 () Bool)

(assert (=> b!1858433 m!2281979))

(assert (=> b!1858258 d!567094))

(declare-fun d!567096 () Bool)

(assert (=> d!567096 (= (size!16274 (v!26039 (underlying!4013 lt!717013))) (bvadd (_size!3873 (v!26039 (underlying!4013 lt!717013))) (bvsdiv (bvadd (extraKeys!2143 (v!26039 (underlying!4013 lt!717013))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!567028 d!567096))

(declare-fun d!567098 () Bool)

(assert (=> d!567098 (= (map!4349 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) (getCurrentListMap!8 (_keys!2190 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) (_values!2175 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) (mask!5603 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) (extraKeys!2143 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) (zeroValue!2153 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) (minValue!2153 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995))))) #b00000000000000000000000000000000 (defaultEntry!2256 (v!26039 (underlying!4013 (v!26040 (underlying!4014 lt!716995)))))))))

(declare-fun bs!410726 () Bool)

(assert (= bs!410726 d!567098))

(declare-fun m!2281981 () Bool)

(assert (=> bs!410726 m!2281981))

(assert (=> d!567016 d!567098))

(declare-fun b_lambda!61537 () Bool)

(assert (= b_lambda!61529 (or d!567030 b_lambda!61537)))

(declare-fun bs!410727 () Bool)

(declare-fun d!567100 () Bool)

(assert (= bs!410727 (and d!567100 d!567030)))

(declare-fun allKeysSameHash!25 (List!20683 (_ BitVec 64) Hashable!1840) Bool)

(assert (=> bs!410727 (= (dynLambda!10199 lambda!73369 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))) (allKeysSameHash!25 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))) (_1!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))) (hashF!3759 lt!716995)))))

(declare-fun m!2281983 () Bool)

(assert (=> bs!410727 m!2281983))

(assert (=> b!1858285 d!567100))

(declare-fun b_lambda!61539 () Bool)

(assert (= b_lambda!61531 (or b!1858208 b_lambda!61539)))

(declare-fun bs!410728 () Bool)

(declare-fun d!567102 () Bool)

(assert (= bs!410728 (and d!567102 b!1858208)))

(declare-fun res!832499 () Bool)

(declare-fun e!1186720 () Bool)

(assert (=> bs!410728 (=> (not res!832499) (not e!1186720))))

(assert (=> bs!410728 (= res!832499 (validRegex!2080 (_1!11347 (_1!11348 (h!26004 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))

(assert (=> bs!410728 (= (dynLambda!10200 lambda!73362 (h!26004 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))) e!1186720)))

(declare-fun b!1858434 () Bool)

(assert (=> b!1858434 (= e!1186720 (= (_2!11348 (h!26004 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))) (derivativeStep!1332 (_1!11347 (_1!11348 (h!26004 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (_2!11347 (_1!11348 (h!26004 (t!172548 (toList!989 (map!4347 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))))))))

(assert (= (and bs!410728 res!832499) b!1858434))

(declare-fun m!2281985 () Bool)

(assert (=> bs!410728 m!2281985))

(declare-fun m!2281987 () Bool)

(assert (=> b!1858434 m!2281987))

(assert (=> b!1858287 d!567102))

(declare-fun b_lambda!61541 () Bool)

(assert (= b_lambda!61535 (or b!1858193 b_lambda!61541)))

(declare-fun bs!410729 () Bool)

(declare-fun d!567104 () Bool)

(assert (= bs!410729 (and d!567104 b!1858193)))

(assert (=> bs!410729 (= (dynLambda!10199 lambda!73359 (h!26006 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995))))))) (noDuplicateKeys!27 (_2!11350 (h!26006 (t!172550 (toList!988 (map!4346 (v!26040 (underlying!4014 lt!716995)))))))))))

(declare-fun m!2281989 () Bool)

(assert (=> bs!410729 m!2281989))

(assert (=> b!1858375 d!567104))

(declare-fun b_lambda!61543 () Bool)

(assert (= b_lambda!61533 (or b!1858276 b_lambda!61543)))

(declare-fun bs!410730 () Bool)

(declare-fun d!567106 () Bool)

(assert (= bs!410730 (and d!567106 b!1858276)))

(assert (=> bs!410730 (= (dynLambda!10199 lambda!73370 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000))))))))) (noDuplicateKeys!27 (_2!11350 (h!26006 (toList!988 (map!4346 (v!26040 (underlying!4014 (cache!2221 (Cache!303 (getEmptyHashMap!19 lambda!73340 hashF!331 #b00000000000000000000000000010000)))))))))))))

(declare-fun m!2281991 () Bool)

(assert (=> bs!410730 m!2281991))

(assert (=> b!1858346 d!567106))

(check-sat (not bm!115517) (not b!1858284) (not b!1858333) (not bm!115514) (not b_lambda!61537) (not b!1858332) (not d!567074) (not b!1858345) (not d!567058) (not bm!115503) (not bs!410727) (not bm!115502) (not d!567060) (not d!567054) (not b!1858421) (not d!567076) (not b_lambda!61523) (not b!1858344) (not b!1858417) (not d!567046) (not d!567086) (not b!1858420) (not bs!410729) (not bm!115523) (not b_lambda!61539) (not b!1858434) (not b_lambda!61541) (not d!567078) (not b!1858391) (not b!1858366) (not b!1858433) (not b!1858347) (not b_lambda!61543) (not bm!115512) (not d!567070) (not b!1858402) (not b!1858331) (not b!1858389) (not b!1858293) (not d!567052) (not b!1858286) (not b!1858386) (not b!1858405) (not b!1858390) (not d!567056) (not b!1858376) (not bs!410728) (not b!1858294) (not b!1858406) (not b!1858419) (not b!1858319) (not d!567050) (not b!1858388) (not b!1858288) (not d!567088) (not d!567092) (not bs!410730) (not b_lambda!61525) (not d!567098) (not d!567080) (not b!1858338) (not bm!115520) (not b_lambda!61527) (not b!1858426))
(check-sat)
