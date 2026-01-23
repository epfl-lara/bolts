; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47536 () Bool)

(assert start!47536)

(declare-fun res!220794 () Bool)

(declare-fun e!311666 () Bool)

(assert (=> start!47536 (=> (not res!220794) (not e!311666))))

(declare-fun initialSize!10 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47536 (= res!220794 (validMask!0 (bvsub initialSize!10 #b00000000000000000000000000000001)))))

(assert (=> start!47536 e!311666))

(assert (=> start!47536 true))

(declare-fun lambda!14919 () Int)

(declare-datatypes ((Hashable!507 0))(
  ( (HashableExt!506 (__x!3498 Int)) )
))
(declare-fun hashF!390 () Hashable!507)

(declare-fun b!520129 () Bool)

(declare-datatypes ((C!3312 0))(
  ( (C!3313 (val!1862 Int)) )
))
(declare-datatypes ((Regex!1195 0))(
  ( (ElementMatch!1195 (c!100565 C!3312)) (Concat!2097 (regOne!2902 Regex!1195) (regTwo!2902 Regex!1195)) (EmptyExpr!1195) (Star!1195 (reg!1524 Regex!1195)) (EmptyLang!1195) (Union!1195 (regOne!2903 Regex!1195) (regTwo!2903 Regex!1195)) )
))
(declare-datatypes ((List!4805 0))(
  ( (Nil!4795) (Cons!4795 (h!10196 Regex!1195) (t!73395 List!4805)) )
))
(declare-datatypes ((Context!278 0))(
  ( (Context!279 (exprs!639 List!4805)) )
))
(declare-datatypes ((tuple2!5900 0))(
  ( (tuple2!5901 (_1!3166 Context!278) (_2!3166 C!3312)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!5902 0))(
  ( (tuple2!5903 (_1!3167 tuple2!5900) (_2!3167 (InoxSet Context!278))) )
))
(declare-datatypes ((List!4806 0))(
  ( (Nil!4796) (Cons!4796 (h!10197 tuple2!5902) (t!73396 List!4806)) )
))
(declare-datatypes ((array!2085 0))(
  ( (array!2086 (arr!954 (Array (_ BitVec 32) (_ BitVec 64))) (size!3912 (_ BitVec 32))) )
))
(declare-datatypes ((array!2087 0))(
  ( (array!2088 (arr!955 (Array (_ BitVec 32) List!4806)) (size!3913 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1070 0))(
  ( (LongMapFixedSize!1071 (defaultEntry!886 Int) (mask!1987 (_ BitVec 32)) (extraKeys!781 (_ BitVec 32)) (zeroValue!791 List!4806) (minValue!791 List!4806) (_size!1179 (_ BitVec 32)) (_keys!826 array!2085) (_values!813 array!2087) (_vacant!596 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2081 0))(
  ( (Cell!2082 (v!15891 LongMapFixedSize!1070)) )
))
(declare-datatypes ((MutLongMap!535 0))(
  ( (LongMap!535 (underlying!1249 Cell!2081)) (MutLongMapExt!534 (__x!3499 Int)) )
))
(declare-datatypes ((Cell!2083 0))(
  ( (Cell!2084 (v!15892 MutLongMap!535)) )
))
(declare-datatypes ((MutableMap!507 0))(
  ( (MutableMapExt!506 (__x!3500 Int)) (HashMap!507 (underlying!1250 Cell!2083) (hashF!2411 Hashable!507) (_size!1180 (_ BitVec 32)) (defaultValue!656 Int)) )
))
(declare-datatypes ((CacheUp!198 0))(
  ( (CacheUp!199 (cache!894 MutableMap!507)) )
))
(declare-fun inv!6060 (CacheUp!198) Bool)

(declare-fun getEmptyHashMap!7 (Int Hashable!507 (_ BitVec 32)) MutableMap!507)

(assert (=> b!520129 (= e!311666 (not (inv!6060 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))

(assert (= (and start!47536 res!220794) b!520129))

(declare-fun m!766793 () Bool)

(assert (=> start!47536 m!766793))

(declare-fun m!766795 () Bool)

(assert (=> b!520129 m!766795))

(declare-fun m!766797 () Bool)

(assert (=> b!520129 m!766797))

(check-sat (not b!520129) (not start!47536))
(check-sat)
(get-model)

(declare-fun d!185720 () Bool)

(declare-fun res!220806 () Bool)

(declare-fun e!311682 () Bool)

(assert (=> d!185720 (=> (not res!220806) (not e!311682))))

(get-info :version)

(assert (=> d!185720 (= res!220806 ((_ is HashMap!507) (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))

(assert (=> d!185720 (= (inv!6060 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))) e!311682)))

(declare-fun b!520149 () Bool)

(declare-fun validCacheMapUp!32 (MutableMap!507) Bool)

(assert (=> b!520149 (= e!311682 (validCacheMapUp!32 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))

(assert (= (and d!185720 res!220806) b!520149))

(declare-fun m!766807 () Bool)

(assert (=> b!520149 m!766807))

(assert (=> b!520129 d!185720))

(declare-fun b!520163 () Bool)

(declare-fun e!311692 () Bool)

(declare-fun lt!216761 () MutLongMap!535)

(assert (=> b!520163 (= e!311692 ((_ is LongMap!535) lt!216761))))

(assert (=> b!520163 (= lt!216761 (v!15892 (underlying!1250 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))

(declare-fun b!520162 () Bool)

(declare-fun e!311691 () Bool)

(assert (=> b!520162 (= e!311691 e!311692)))

(declare-fun d!185726 () Bool)

(assert (=> d!185726 (= true e!311691)))

(assert (= b!520162 b!520163))

(assert (= (and d!185726 ((_ is HashMap!507) (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))) b!520162))

(declare-fun e!311686 () Bool)

(assert (=> d!185726 e!311686))

(declare-fun res!220811 () Bool)

(assert (=> d!185726 (=> (not res!220811) (not e!311686))))

(assert (=> d!185726 (= res!220811 true)))

(declare-fun lt!216757 () MutableMap!507)

(declare-fun lambda!14929 () Int)

(declare-fun getEmptyLongMap!6 (Int (_ BitVec 32)) MutLongMap!535)

(assert (=> d!185726 (= lt!216757 (HashMap!507 (Cell!2084 (getEmptyLongMap!6 lambda!14929 initialSize!10)) hashF!390 #b00000000000000000000000000000000 lambda!14919))))

(declare-fun lt!216758 () MutableMap!507)

(assert (=> d!185726 (= lt!216758 (HashMap!507 (Cell!2084 (getEmptyLongMap!6 lambda!14929 initialSize!10)) hashF!390 #b00000000000000000000000000000000 lambda!14919))))

(assert (=> d!185726 (validMask!0 (bvsub initialSize!10 #b00000000000000000000000000000001))))

(assert (=> d!185726 (= (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10) lt!216758)))

(declare-fun b!520154 () Bool)

(declare-fun res!220812 () Bool)

(assert (=> b!520154 (=> (not res!220812) (not e!311686))))

(declare-fun valid!508 (MutableMap!507) Bool)

(assert (=> b!520154 (= res!220812 (valid!508 lt!216758))))

(declare-fun b!520155 () Bool)

(declare-fun size!3915 (MutableMap!507) (_ BitVec 32))

(assert (=> b!520155 (= e!311686 (= (size!3915 lt!216758) #b00000000000000000000000000000000))))

(assert (= (and d!185726 res!220811) b!520154))

(assert (= (and b!520154 res!220812) b!520155))

(declare-fun m!766809 () Bool)

(assert (=> d!185726 m!766809))

(assert (=> d!185726 m!766809))

(assert (=> d!185726 m!766793))

(declare-fun m!766811 () Bool)

(assert (=> b!520154 m!766811))

(declare-fun m!766813 () Bool)

(assert (=> b!520155 m!766813))

(assert (=> b!520129 d!185726))

(declare-fun d!185728 () Bool)

(assert (=> d!185728 (= (validMask!0 (bvsub initialSize!10 #b00000000000000000000000000000001)) (and (or (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000001111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000011111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000001111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000011111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000001111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000011111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000001111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000011111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000001111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000011111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000001111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000011111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000001111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000011111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000111111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000001111111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000011111111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000111111111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00001111111111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00011111111111111111111111111111) (= (bvsub initialSize!10 #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (bvsle (bvsub initialSize!10 #b00000000000000000000000000000001) #b00111111111111111111111111111111)))))

(assert (=> start!47536 d!185728))

(check-sat (not b!520149) (not d!185726) (not b!520155) (not b!520154))
(check-sat)
(get-model)

(declare-fun d!185732 () Bool)

(declare-fun res!220843 () Bool)

(declare-fun e!311712 () Bool)

(assert (=> d!185732 (=> (not res!220843) (not e!311712))))

(assert (=> d!185732 (= res!220843 (valid!508 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))

(assert (=> d!185732 (= (validCacheMapUp!32 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))) e!311712)))

(declare-fun b!520196 () Bool)

(declare-fun res!220844 () Bool)

(assert (=> b!520196 (=> (not res!220844) (not e!311712))))

(declare-fun invariantList!86 (List!4806) Bool)

(declare-datatypes ((ListMap!221 0))(
  ( (ListMap!222 (toList!442 List!4806)) )
))
(declare-fun map!1092 (MutableMap!507) ListMap!221)

(assert (=> b!520196 (= res!220844 (invariantList!86 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))

(declare-fun b!520197 () Bool)

(declare-fun lambda!14942 () Int)

(declare-fun forall!1462 (List!4806 Int) Bool)

(assert (=> b!520197 (= e!311712 (forall!1462 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))) lambda!14942))))

(assert (= (and d!185732 res!220843) b!520196))

(assert (= (and b!520196 res!220844) b!520197))

(declare-fun m!766855 () Bool)

(assert (=> d!185732 m!766855))

(declare-fun m!766857 () Bool)

(assert (=> b!520196 m!766857))

(declare-fun m!766859 () Bool)

(assert (=> b!520196 m!766859))

(assert (=> b!520197 m!766857))

(declare-fun m!766861 () Bool)

(assert (=> b!520197 m!766861))

(assert (=> b!520149 d!185732))

(declare-fun d!185750 () Bool)

(declare-fun e!311720 () Bool)

(assert (=> d!185750 e!311720))

(declare-fun res!220850 () Bool)

(assert (=> d!185750 (=> (not res!220850) (not e!311720))))

(assert (=> d!185750 (= res!220850 true)))

(declare-fun lt!216821 () MutLongMap!535)

(declare-fun getNewLongMapFixedSize!7 ((_ BitVec 32) Int) LongMapFixedSize!1070)

(assert (=> d!185750 (= lt!216821 (LongMap!535 (Cell!2082 (getNewLongMapFixedSize!7 (bvsub initialSize!10 #b00000000000000000000000000000001) lambda!14929))))))

(declare-fun lt!216818 () MutLongMap!535)

(assert (=> d!185750 (= lt!216818 (LongMap!535 (Cell!2082 (getNewLongMapFixedSize!7 (bvsub initialSize!10 #b00000000000000000000000000000001) lambda!14929))))))

(assert (=> d!185750 (validMask!0 (bvsub initialSize!10 #b00000000000000000000000000000001))))

(assert (=> d!185750 (= (getEmptyLongMap!6 lambda!14929 initialSize!10) lt!216818)))

(declare-fun b!520210 () Bool)

(declare-fun res!220849 () Bool)

(assert (=> b!520210 (=> (not res!220849) (not e!311720))))

(declare-fun valid!510 (MutLongMap!535) Bool)

(assert (=> b!520210 (= res!220849 (valid!510 lt!216818))))

(declare-fun b!520211 () Bool)

(declare-fun size!3917 (MutLongMap!535) (_ BitVec 32))

(assert (=> b!520211 (= e!311720 (= (size!3917 lt!216818) #b00000000000000000000000000000000))))

(assert (= (and d!185750 res!220850) b!520210))

(assert (= (and b!520210 res!220849) b!520211))

(declare-fun m!766863 () Bool)

(assert (=> d!185750 m!766863))

(assert (=> d!185750 m!766793))

(declare-fun m!766865 () Bool)

(assert (=> b!520210 m!766865))

(declare-fun m!766867 () Bool)

(assert (=> b!520211 m!766867))

(assert (=> d!185726 d!185750))

(assert (=> d!185726 d!185728))

(declare-fun d!185752 () Bool)

(assert (=> d!185752 (= (size!3915 lt!216758) (_size!1180 lt!216758))))

(assert (=> b!520155 d!185752))

(declare-fun d!185754 () Bool)

(declare-fun res!220867 () Bool)

(declare-fun e!311734 () Bool)

(assert (=> d!185754 (=> (not res!220867) (not e!311734))))

(assert (=> d!185754 (= res!220867 (valid!510 (v!15892 (underlying!1250 lt!216758))))))

(assert (=> d!185754 (= (valid!508 lt!216758) e!311734)))

(declare-fun b!520232 () Bool)

(declare-fun res!220868 () Bool)

(assert (=> b!520232 (=> (not res!220868) (not e!311734))))

(declare-fun lambda!14945 () Int)

(declare-datatypes ((tuple2!5906 0))(
  ( (tuple2!5907 (_1!3169 (_ BitVec 64)) (_2!3169 List!4806)) )
))
(declare-datatypes ((List!4808 0))(
  ( (Nil!4798) (Cons!4798 (h!10199 tuple2!5906) (t!73398 List!4808)) )
))
(declare-fun forall!1463 (List!4808 Int) Bool)

(declare-datatypes ((ListLongMap!95 0))(
  ( (ListLongMap!96 (toList!443 List!4808)) )
))
(declare-fun map!1093 (MutLongMap!535) ListLongMap!95)

(assert (=> b!520232 (= res!220868 (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))) lambda!14945))))

(declare-fun b!520233 () Bool)

(declare-fun allKeysSameHashInMap!36 (ListLongMap!95 Hashable!507) Bool)

(assert (=> b!520233 (= e!311734 (allKeysSameHashInMap!36 (map!1093 (v!15892 (underlying!1250 lt!216758))) (hashF!2411 lt!216758)))))

(assert (= (and d!185754 res!220867) b!520232))

(assert (= (and b!520232 res!220868) b!520233))

(declare-fun m!766901 () Bool)

(assert (=> d!185754 m!766901))

(declare-fun m!766903 () Bool)

(assert (=> b!520232 m!766903))

(declare-fun m!766905 () Bool)

(assert (=> b!520232 m!766905))

(assert (=> b!520233 m!766903))

(assert (=> b!520233 m!766903))

(declare-fun m!766907 () Bool)

(assert (=> b!520233 m!766907))

(assert (=> b!520154 d!185754))

(check-sat (not b!520211) (not b!520232) (not d!185732) (not b!520197) (not b!520210) (not b!520196) (not d!185750) (not b!520233) (not d!185754))
(check-sat)
(get-model)

(declare-fun d!185774 () Bool)

(declare-fun size!3918 (LongMapFixedSize!1070) (_ BitVec 32))

(assert (=> d!185774 (= (size!3917 lt!216818) (size!3918 (v!15891 (underlying!1249 lt!216818))))))

(declare-fun bs!60512 () Bool)

(assert (= bs!60512 d!185774))

(declare-fun m!766925 () Bool)

(assert (=> bs!60512 m!766925))

(assert (=> b!520211 d!185774))

(declare-fun b!520246 () Bool)

(declare-fun e!311743 () Bool)

(declare-fun lt!216898 () array!2085)

(declare-fun lt!216901 () tuple2!5906)

(declare-fun arrayContainsKey!0 (array!2085 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520246 (= e!311743 (arrayContainsKey!0 lt!216898 (_1!3169 lt!216901) #b00000000000000000000000000000000))))

(declare-fun b!520247 () Bool)

(declare-fun e!311742 () Bool)

(declare-fun lt!216918 () LongMapFixedSize!1070)

(declare-fun map!1095 (LongMapFixedSize!1070) ListLongMap!95)

(assert (=> b!520247 (= e!311742 (= (map!1095 lt!216918) (ListLongMap!96 Nil!4798)))))

(declare-fun b!520248 () Bool)

(declare-datatypes ((Unit!8779 0))(
  ( (Unit!8780) )
))
(declare-fun e!311741 () Unit!8779)

(declare-fun Unit!8781 () Unit!8779)

(assert (=> b!520248 (= e!311741 Unit!8781)))

(declare-fun d!185776 () Bool)

(assert (=> d!185776 e!311742))

(declare-fun res!220873 () Bool)

(assert (=> d!185776 (=> (not res!220873) (not e!311742))))

(declare-fun valid!512 (LongMapFixedSize!1070) Bool)

(assert (=> d!185776 (= res!220873 (valid!512 lt!216918))))

(declare-fun lt!216904 () LongMapFixedSize!1070)

(assert (=> d!185776 (= lt!216918 lt!216904)))

(declare-fun lt!216906 () Unit!8779)

(assert (=> d!185776 (= lt!216906 e!311741)))

(declare-fun c!100576 () Bool)

(assert (=> d!185776 (= c!100576 (not (= (map!1095 lt!216904) (ListLongMap!96 Nil!4798))))))

(declare-fun lt!216902 () Unit!8779)

(declare-fun lt!216899 () Unit!8779)

(assert (=> d!185776 (= lt!216902 lt!216899)))

(declare-fun lt!216919 () array!2085)

(declare-fun lt!216914 () (_ BitVec 32))

(declare-datatypes ((List!4810 0))(
  ( (Nil!4800) (Cons!4800 (h!10201 (_ BitVec 64)) (t!73400 List!4810)) )
))
(declare-fun lt!216905 () List!4810)

(declare-fun arrayNoDuplicates!0 (array!2085 (_ BitVec 32) List!4810) Bool)

(assert (=> d!185776 (arrayNoDuplicates!0 lt!216919 lt!216914 lt!216905)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2085 (_ BitVec 32) (_ BitVec 32) List!4810) Unit!8779)

(assert (=> d!185776 (= lt!216899 (lemmaArrayNoDuplicatesInAll0Array!0 lt!216919 lt!216914 (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!216905))))

(assert (=> d!185776 (= lt!216905 Nil!4800)))

(assert (=> d!185776 (= lt!216914 #b00000000000000000000000000000000)))

(assert (=> d!185776 (= lt!216919 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!216917 () Unit!8779)

(declare-fun lt!216908 () Unit!8779)

(assert (=> d!185776 (= lt!216917 lt!216908)))

(declare-fun lt!216916 () (_ BitVec 32))

(declare-fun lt!216900 () array!2085)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2085 (_ BitVec 32)) Bool)

(assert (=> d!185776 (arrayForallSeekEntryOrOpenFound!0 lt!216916 lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2085 (_ BitVec 32) (_ BitVec 32)) Unit!8779)

(assert (=> d!185776 (= lt!216908 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001) lt!216916))))

(assert (=> d!185776 (= lt!216916 #b00000000000000000000000000000000)))

(assert (=> d!185776 (= lt!216900 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!216912 () Unit!8779)

(declare-fun lt!216910 () Unit!8779)

(assert (=> d!185776 (= lt!216912 lt!216910)))

(declare-fun lt!216897 () array!2085)

(declare-fun lt!216909 () (_ BitVec 32))

(declare-fun lt!216907 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!2085 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!185776 (= (arrayCountValidKeys!0 lt!216897 lt!216909 lt!216907) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2085 (_ BitVec 32) (_ BitVec 32)) Unit!8779)

(assert (=> d!185776 (= lt!216910 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!216897 lt!216909 lt!216907))))

(assert (=> d!185776 (= lt!216907 (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!185776 (= lt!216909 #b00000000000000000000000000000000)))

(assert (=> d!185776 (= lt!216897 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!216920 () List!4806)

(assert (=> d!185776 (= lt!216904 (LongMapFixedSize!1071 lambda!14929 (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000000 lt!216920 lt!216920 #b00000000000000000000000000000000 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (array!2088 ((as const (Array (_ BitVec 32) List!4806)) lt!216920) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(declare-fun dynLambda!3009 (Int (_ BitVec 64)) List!4806)

(assert (=> d!185776 (= lt!216920 (dynLambda!3009 lambda!14929 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!185776 (validMask!0 (bvsub initialSize!10 #b00000000000000000000000000000001))))

(assert (=> d!185776 (= (getNewLongMapFixedSize!7 (bvsub initialSize!10 #b00000000000000000000000000000001) lambda!14929) lt!216918)))

(declare-fun b!520249 () Bool)

(declare-fun Unit!8782 () Unit!8779)

(assert (=> b!520249 (= e!311741 Unit!8782)))

(declare-fun head!1165 (List!4808) tuple2!5906)

(assert (=> b!520249 (= lt!216901 (head!1165 (toList!443 (map!1095 lt!216904))))))

(assert (=> b!520249 (= lt!216898 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!216915 () (_ BitVec 32))

(assert (=> b!520249 (= lt!216915 #b00000000000000000000000000000000)))

(declare-fun lt!216911 () Unit!8779)

(declare-fun lemmaKeyInListMapIsInArray!3 (array!2085 array!2087 (_ BitVec 32) (_ BitVec 32) List!4806 List!4806 (_ BitVec 64) Int) Unit!8779)

(assert (=> b!520249 (= lt!216911 (lemmaKeyInListMapIsInArray!3 lt!216898 (array!2088 ((as const (Array (_ BitVec 32) List!4806)) lt!216920) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!10 #b00000000000000000000000000000001) lt!216915 lt!216920 lt!216920 (_1!3169 lt!216901) lambda!14929))))

(declare-fun c!100577 () Bool)

(assert (=> b!520249 (= c!100577 (and (not (= (_1!3169 lt!216901) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!3169 lt!216901) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!520249 e!311743))

(declare-fun lt!216913 () Unit!8779)

(assert (=> b!520249 (= lt!216913 lt!216911)))

(declare-fun lt!216903 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!2085 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520249 (= lt!216903 (arrayScanForKey!0 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!3169 lt!216901) #b00000000000000000000000000000000))))

(assert (=> b!520249 false))

(declare-fun b!520250 () Bool)

(declare-fun res!220874 () Bool)

(assert (=> b!520250 (=> (not res!220874) (not e!311742))))

(assert (=> b!520250 (= res!220874 (= (mask!1987 lt!216918) (bvsub initialSize!10 #b00000000000000000000000000000001)))))

(declare-fun b!520251 () Bool)

(assert (=> b!520251 (= e!311743 (ite (= (_1!3169 lt!216901) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!216915 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!216915 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!185776 c!100576) b!520249))

(assert (= (and d!185776 (not c!100576)) b!520248))

(assert (= (and b!520249 c!100577) b!520246))

(assert (= (and b!520249 (not c!100577)) b!520251))

(assert (= (and d!185776 res!220873) b!520250))

(assert (= (and b!520250 res!220874) b!520247))

(declare-fun b_lambda!20305 () Bool)

(assert (=> (not b_lambda!20305) (not d!185776)))

(declare-fun m!766927 () Bool)

(assert (=> b!520246 m!766927))

(declare-fun m!766929 () Bool)

(assert (=> b!520247 m!766929))

(declare-fun m!766931 () Bool)

(assert (=> d!185776 m!766931))

(declare-fun m!766933 () Bool)

(assert (=> d!185776 m!766933))

(declare-fun m!766935 () Bool)

(assert (=> d!185776 m!766935))

(declare-fun m!766937 () Bool)

(assert (=> d!185776 m!766937))

(assert (=> d!185776 m!766793))

(declare-fun m!766939 () Bool)

(assert (=> d!185776 m!766939))

(declare-fun m!766941 () Bool)

(assert (=> d!185776 m!766941))

(declare-fun m!766943 () Bool)

(assert (=> d!185776 m!766943))

(declare-fun m!766945 () Bool)

(assert (=> d!185776 m!766945))

(declare-fun m!766947 () Bool)

(assert (=> d!185776 m!766947))

(assert (=> b!520249 m!766941))

(declare-fun m!766949 () Bool)

(assert (=> b!520249 m!766949))

(declare-fun m!766951 () Bool)

(assert (=> b!520249 m!766951))

(declare-fun m!766953 () Bool)

(assert (=> b!520249 m!766953))

(assert (=> d!185750 d!185776))

(assert (=> d!185750 d!185728))

(declare-fun d!185778 () Bool)

(declare-fun res!220879 () Bool)

(declare-fun e!311748 () Bool)

(assert (=> d!185778 (=> res!220879 e!311748)))

(assert (=> d!185778 (= res!220879 ((_ is Nil!4796) (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))

(assert (=> d!185778 (= (forall!1462 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))) lambda!14942) e!311748)))

(declare-fun b!520256 () Bool)

(declare-fun e!311749 () Bool)

(assert (=> b!520256 (= e!311748 e!311749)))

(declare-fun res!220880 () Bool)

(assert (=> b!520256 (=> (not res!220880) (not e!311749))))

(declare-fun dynLambda!3010 (Int tuple2!5902) Bool)

(assert (=> b!520256 (= res!220880 (dynLambda!3010 lambda!14942 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))

(declare-fun b!520257 () Bool)

(assert (=> b!520257 (= e!311749 (forall!1462 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) lambda!14942))))

(assert (= (and d!185778 (not res!220879)) b!520256))

(assert (= (and b!520256 res!220880) b!520257))

(declare-fun b_lambda!20307 () Bool)

(assert (=> (not b_lambda!20307) (not b!520256)))

(declare-fun m!766955 () Bool)

(assert (=> b!520256 m!766955))

(declare-fun m!766957 () Bool)

(assert (=> b!520257 m!766957))

(assert (=> b!520197 d!185778))

(declare-fun d!185780 () Bool)

(declare-fun lt!216923 () ListMap!221)

(assert (=> d!185780 (invariantList!86 (toList!442 lt!216923))))

(declare-fun extractMap!28 (List!4808) ListMap!221)

(assert (=> d!185780 (= lt!216923 (extractMap!28 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))

(assert (=> d!185780 (valid!508 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))

(assert (=> d!185780 (= (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))) lt!216923)))

(declare-fun bs!60513 () Bool)

(assert (= bs!60513 d!185780))

(declare-fun m!766959 () Bool)

(assert (=> bs!60513 m!766959))

(declare-fun m!766961 () Bool)

(assert (=> bs!60513 m!766961))

(declare-fun m!766963 () Bool)

(assert (=> bs!60513 m!766963))

(assert (=> bs!60513 m!766855))

(assert (=> b!520197 d!185780))

(declare-fun d!185782 () Bool)

(assert (=> d!185782 (= (valid!510 lt!216818) (valid!512 (v!15891 (underlying!1249 lt!216818))))))

(declare-fun bs!60514 () Bool)

(assert (= bs!60514 d!185782))

(declare-fun m!766965 () Bool)

(assert (=> bs!60514 m!766965))

(assert (=> b!520210 d!185782))

(declare-fun bs!60515 () Bool)

(declare-fun b!520258 () Bool)

(assert (= bs!60515 (and b!520258 b!520232)))

(declare-fun lambda!14946 () Int)

(assert (=> bs!60515 (= lambda!14946 lambda!14945)))

(declare-fun d!185784 () Bool)

(declare-fun res!220881 () Bool)

(declare-fun e!311750 () Bool)

(assert (=> d!185784 (=> (not res!220881) (not e!311750))))

(assert (=> d!185784 (= res!220881 (valid!510 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))

(assert (=> d!185784 (= (valid!508 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))) e!311750)))

(declare-fun res!220882 () Bool)

(assert (=> b!520258 (=> (not res!220882) (not e!311750))))

(assert (=> b!520258 (= res!220882 (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))) lambda!14946))))

(declare-fun b!520259 () Bool)

(assert (=> b!520259 (= e!311750 (allKeysSameHashInMap!36 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) (hashF!2411 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))

(assert (= (and d!185784 res!220881) b!520258))

(assert (= (and b!520258 res!220882) b!520259))

(declare-fun m!766967 () Bool)

(assert (=> d!185784 m!766967))

(assert (=> b!520258 m!766961))

(declare-fun m!766969 () Bool)

(assert (=> b!520258 m!766969))

(assert (=> b!520259 m!766961))

(assert (=> b!520259 m!766961))

(declare-fun m!766971 () Bool)

(assert (=> b!520259 m!766971))

(assert (=> d!185732 d!185784))

(declare-fun d!185786 () Bool)

(declare-fun noDuplicatedKeys!23 (List!4806) Bool)

(assert (=> d!185786 (= (invariantList!86 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) (noDuplicatedKeys!23 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))

(declare-fun bs!60516 () Bool)

(assert (= bs!60516 d!185786))

(declare-fun m!766973 () Bool)

(assert (=> bs!60516 m!766973))

(assert (=> b!520196 d!185786))

(assert (=> b!520196 d!185780))

(declare-fun bs!60517 () Bool)

(declare-fun d!185788 () Bool)

(assert (= bs!60517 (and d!185788 b!520232)))

(declare-fun lambda!14949 () Int)

(assert (=> bs!60517 (not (= lambda!14949 lambda!14945))))

(declare-fun bs!60518 () Bool)

(assert (= bs!60518 (and d!185788 b!520258)))

(assert (=> bs!60518 (not (= lambda!14949 lambda!14946))))

(assert (=> d!185788 true))

(assert (=> d!185788 (= (allKeysSameHashInMap!36 (map!1093 (v!15892 (underlying!1250 lt!216758))) (hashF!2411 lt!216758)) (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))) lambda!14949))))

(declare-fun bs!60519 () Bool)

(assert (= bs!60519 d!185788))

(declare-fun m!766975 () Bool)

(assert (=> bs!60519 m!766975))

(assert (=> b!520233 d!185788))

(declare-fun d!185790 () Bool)

(assert (=> d!185790 (= (map!1093 (v!15892 (underlying!1250 lt!216758))) (map!1095 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))))))

(declare-fun bs!60520 () Bool)

(assert (= bs!60520 d!185790))

(declare-fun m!766977 () Bool)

(assert (=> bs!60520 m!766977))

(assert (=> b!520233 d!185790))

(declare-fun d!185792 () Bool)

(declare-fun res!220887 () Bool)

(declare-fun e!311755 () Bool)

(assert (=> d!185792 (=> res!220887 e!311755)))

(assert (=> d!185792 (= res!220887 ((_ is Nil!4798) (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))))))

(assert (=> d!185792 (= (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))) lambda!14945) e!311755)))

(declare-fun b!520266 () Bool)

(declare-fun e!311756 () Bool)

(assert (=> b!520266 (= e!311755 e!311756)))

(declare-fun res!220888 () Bool)

(assert (=> b!520266 (=> (not res!220888) (not e!311756))))

(declare-fun dynLambda!3011 (Int tuple2!5906) Bool)

(assert (=> b!520266 (= res!220888 (dynLambda!3011 lambda!14945 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))))))

(declare-fun b!520267 () Bool)

(assert (=> b!520267 (= e!311756 (forall!1463 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))) lambda!14945))))

(assert (= (and d!185792 (not res!220887)) b!520266))

(assert (= (and b!520266 res!220888) b!520267))

(declare-fun b_lambda!20309 () Bool)

(assert (=> (not b_lambda!20309) (not b!520266)))

(declare-fun m!766979 () Bool)

(assert (=> b!520266 m!766979))

(declare-fun m!766981 () Bool)

(assert (=> b!520267 m!766981))

(assert (=> b!520232 d!185792))

(assert (=> b!520232 d!185790))

(declare-fun d!185794 () Bool)

(assert (=> d!185794 (= (valid!510 (v!15892 (underlying!1250 lt!216758))) (valid!512 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))))))

(declare-fun bs!60521 () Bool)

(assert (= bs!60521 d!185794))

(declare-fun m!766983 () Bool)

(assert (=> bs!60521 m!766983))

(assert (=> d!185754 d!185794))

(declare-fun b_lambda!20311 () Bool)

(assert (= b_lambda!20309 (or b!520232 b_lambda!20311)))

(declare-fun bs!60522 () Bool)

(declare-fun d!185796 () Bool)

(assert (= bs!60522 (and d!185796 b!520232)))

(declare-fun noDuplicateKeys!24 (List!4806) Bool)

(assert (=> bs!60522 (= (dynLambda!3011 lambda!14945 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))) (noDuplicateKeys!24 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))))))))

(declare-fun m!766985 () Bool)

(assert (=> bs!60522 m!766985))

(assert (=> b!520266 d!185796))

(declare-fun b_lambda!20313 () Bool)

(assert (= b_lambda!20305 (or d!185726 b_lambda!20313)))

(declare-fun bs!60523 () Bool)

(declare-fun d!185798 () Bool)

(assert (= bs!60523 (and d!185798 d!185726)))

(assert (=> bs!60523 (= (dynLambda!3009 lambda!14929 #b0000000000000000000000000000000000000000000000000000000000000000) Nil!4796)))

(assert (=> d!185776 d!185798))

(declare-fun b_lambda!20315 () Bool)

(assert (= b_lambda!20307 (or b!520197 b_lambda!20315)))

(declare-fun bs!60524 () Bool)

(declare-fun d!185800 () Bool)

(assert (= bs!60524 (and d!185800 b!520197)))

(declare-fun derivationStepZipperUp!2 (Context!278 C!3312) (InoxSet Context!278))

(assert (=> bs!60524 (= (dynLambda!3010 lambda!14942 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))) (= (_2!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))) (derivationStepZipperUp!2 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))) (_2!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))))

(declare-fun m!766987 () Bool)

(assert (=> bs!60524 m!766987))

(assert (=> b!520256 d!185800))

(check-sat (not d!185784) (not b!520246) (not b!520259) (not b_lambda!20315) (not d!185774) (not d!185776) (not b!520249) (not b!520247) (not b_lambda!20311) (not b!520257) (not b!520258) (not d!185790) (not d!185786) (not d!185788) (not d!185794) (not bs!60524) (not d!185780) (not bs!60522) (not b_lambda!20313) (not d!185782) (not b!520267))
(check-sat)
(get-model)

(declare-fun d!185802 () Bool)

(declare-fun res!220893 () Bool)

(declare-fun e!311761 () Bool)

(assert (=> d!185802 (=> res!220893 e!311761)))

(assert (=> d!185802 (= res!220893 (= (select (arr!954 lt!216898) #b00000000000000000000000000000000) (_1!3169 lt!216901)))))

(assert (=> d!185802 (= (arrayContainsKey!0 lt!216898 (_1!3169 lt!216901) #b00000000000000000000000000000000) e!311761)))

(declare-fun b!520272 () Bool)

(declare-fun e!311762 () Bool)

(assert (=> b!520272 (= e!311761 e!311762)))

(declare-fun res!220894 () Bool)

(assert (=> b!520272 (=> (not res!220894) (not e!311762))))

(assert (=> b!520272 (= res!220894 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3912 lt!216898)))))

(declare-fun b!520273 () Bool)

(assert (=> b!520273 (= e!311762 (arrayContainsKey!0 lt!216898 (_1!3169 lt!216901) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!185802 (not res!220893)) b!520272))

(assert (= (and b!520272 res!220894) b!520273))

(declare-fun m!766989 () Bool)

(assert (=> d!185802 m!766989))

(declare-fun m!766991 () Bool)

(assert (=> b!520273 m!766991))

(assert (=> b!520246 d!185802))

(declare-fun d!185804 () Bool)

(declare-fun res!220895 () Bool)

(declare-fun e!311763 () Bool)

(assert (=> d!185804 (=> res!220895 e!311763)))

(assert (=> d!185804 (= res!220895 ((_ is Nil!4798) (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))))))

(assert (=> d!185804 (= (forall!1463 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))) lambda!14945) e!311763)))

(declare-fun b!520274 () Bool)

(declare-fun e!311764 () Bool)

(assert (=> b!520274 (= e!311763 e!311764)))

(declare-fun res!220896 () Bool)

(assert (=> b!520274 (=> (not res!220896) (not e!311764))))

(assert (=> b!520274 (= res!220896 (dynLambda!3011 lambda!14945 (h!10199 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))))))))

(declare-fun b!520275 () Bool)

(assert (=> b!520275 (= e!311764 (forall!1463 (t!73398 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))) lambda!14945))))

(assert (= (and d!185804 (not res!220895)) b!520274))

(assert (= (and b!520274 res!220896) b!520275))

(declare-fun b_lambda!20317 () Bool)

(assert (=> (not b_lambda!20317) (not b!520274)))

(declare-fun m!766993 () Bool)

(assert (=> b!520274 m!766993))

(declare-fun m!766995 () Bool)

(assert (=> b!520275 m!766995))

(assert (=> b!520267 d!185804))

(declare-fun bs!60525 () Bool)

(declare-fun d!185806 () Bool)

(assert (= bs!60525 (and d!185806 b!520232)))

(declare-fun lambda!14950 () Int)

(assert (=> bs!60525 (not (= lambda!14950 lambda!14945))))

(declare-fun bs!60526 () Bool)

(assert (= bs!60526 (and d!185806 b!520258)))

(assert (=> bs!60526 (not (= lambda!14950 lambda!14946))))

(declare-fun bs!60527 () Bool)

(assert (= bs!60527 (and d!185806 d!185788)))

(assert (=> bs!60527 (= (= (hashF!2411 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))) (hashF!2411 lt!216758)) (= lambda!14950 lambda!14949))))

(assert (=> d!185806 true))

(assert (=> d!185806 (= (allKeysSameHashInMap!36 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) (hashF!2411 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))) (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))) lambda!14950))))

(declare-fun bs!60528 () Bool)

(assert (= bs!60528 d!185806))

(declare-fun m!766997 () Bool)

(assert (=> bs!60528 m!766997))

(assert (=> b!520259 d!185806))

(declare-fun d!185808 () Bool)

(assert (=> d!185808 (= (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) (map!1095 (v!15891 (underlying!1249 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))

(declare-fun bs!60529 () Bool)

(assert (= bs!60529 d!185808))

(declare-fun m!766999 () Bool)

(assert (=> bs!60529 m!766999))

(assert (=> b!520259 d!185808))

(declare-fun d!185810 () Bool)

(declare-fun res!220901 () Bool)

(declare-fun e!311769 () Bool)

(assert (=> d!185810 (=> res!220901 e!311769)))

(assert (=> d!185810 (= res!220901 (not ((_ is Cons!4796) (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))))))))

(assert (=> d!185810 (= (noDuplicateKeys!24 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))))) e!311769)))

(declare-fun b!520280 () Bool)

(declare-fun e!311770 () Bool)

(assert (=> b!520280 (= e!311769 e!311770)))

(declare-fun res!220902 () Bool)

(assert (=> b!520280 (=> (not res!220902) (not e!311770))))

(declare-fun containsKey!25 (List!4806 tuple2!5900) Bool)

(assert (=> b!520280 (= res!220902 (not (containsKey!25 (t!73396 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))))) (_1!3167 (h!10197 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))))))))))

(declare-fun b!520281 () Bool)

(assert (=> b!520281 (= e!311770 (noDuplicateKeys!24 (t!73396 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))))))))

(assert (= (and d!185810 (not res!220901)) b!520280))

(assert (= (and b!520280 res!220902) b!520281))

(declare-fun m!767001 () Bool)

(assert (=> b!520280 m!767001))

(declare-fun m!767003 () Bool)

(assert (=> b!520281 m!767003))

(assert (=> bs!60522 d!185810))

(declare-fun d!185812 () Bool)

(declare-fun res!220903 () Bool)

(declare-fun e!311771 () Bool)

(assert (=> d!185812 (=> res!220903 e!311771)))

(assert (=> d!185812 (= res!220903 ((_ is Nil!4798) (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))

(assert (=> d!185812 (= (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))) lambda!14946) e!311771)))

(declare-fun b!520282 () Bool)

(declare-fun e!311772 () Bool)

(assert (=> b!520282 (= e!311771 e!311772)))

(declare-fun res!220904 () Bool)

(assert (=> b!520282 (=> (not res!220904) (not e!311772))))

(assert (=> b!520282 (= res!220904 (dynLambda!3011 lambda!14946 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))))

(declare-fun b!520283 () Bool)

(assert (=> b!520283 (= e!311772 (forall!1463 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))) lambda!14946))))

(assert (= (and d!185812 (not res!220903)) b!520282))

(assert (= (and b!520282 res!220904) b!520283))

(declare-fun b_lambda!20319 () Bool)

(assert (=> (not b_lambda!20319) (not b!520282)))

(declare-fun m!767005 () Bool)

(assert (=> b!520282 m!767005))

(declare-fun m!767007 () Bool)

(assert (=> b!520283 m!767007))

(assert (=> b!520258 d!185812))

(assert (=> b!520258 d!185808))

(declare-fun d!185814 () Bool)

(declare-fun res!220909 () Bool)

(declare-fun e!311777 () Bool)

(assert (=> d!185814 (=> res!220909 e!311777)))

(assert (=> d!185814 (= res!220909 (or ((_ is Nil!4796) (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) ((_ is Nil!4796) (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))

(assert (=> d!185814 (= (noDuplicatedKeys!23 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) e!311777)))

(declare-fun b!520288 () Bool)

(declare-fun e!311778 () Bool)

(assert (=> b!520288 (= e!311777 e!311778)))

(declare-fun res!220910 () Bool)

(assert (=> b!520288 (=> (not res!220910) (not e!311778))))

(declare-fun containsKey!26 (List!4806 tuple2!5900) Bool)

(assert (=> b!520288 (= res!220910 (not (containsKey!26 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))))

(declare-fun b!520289 () Bool)

(assert (=> b!520289 (= e!311778 (noDuplicatedKeys!23 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))

(assert (= (and d!185814 (not res!220909)) b!520288))

(assert (= (and b!520288 res!220910) b!520289))

(declare-fun m!767009 () Bool)

(assert (=> b!520288 m!767009))

(declare-fun m!767011 () Bool)

(assert (=> b!520289 m!767011))

(assert (=> d!185786 d!185814))

(declare-fun d!185816 () Bool)

(assert (=> d!185816 (= (size!3918 (v!15891 (underlying!1249 lt!216818))) (bvadd (_size!1179 (v!15891 (underlying!1249 lt!216818))) (bvsdiv (bvadd (extraKeys!781 (v!15891 (underlying!1249 lt!216818))) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> d!185774 d!185816))

(declare-fun d!185818 () Bool)

(declare-fun res!220917 () Bool)

(declare-fun e!311781 () Bool)

(assert (=> d!185818 (=> (not res!220917) (not e!311781))))

(declare-fun simpleValid!2 (LongMapFixedSize!1070) Bool)

(assert (=> d!185818 (= res!220917 (simpleValid!2 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))))))

(assert (=> d!185818 (= (valid!512 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) e!311781)))

(declare-fun b!520296 () Bool)

(declare-fun res!220918 () Bool)

(assert (=> b!520296 (=> (not res!220918) (not e!311781))))

(assert (=> b!520296 (= res!220918 (= (arrayCountValidKeys!0 (_keys!826 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) #b00000000000000000000000000000000 (size!3912 (_keys!826 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))))) (_size!1179 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758)))))))))

(declare-fun b!520297 () Bool)

(declare-fun res!220919 () Bool)

(assert (=> b!520297 (=> (not res!220919) (not e!311781))))

(assert (=> b!520297 (= res!220919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!826 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) (mask!1987 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758)))))))))

(declare-fun b!520298 () Bool)

(assert (=> b!520298 (= e!311781 (arrayNoDuplicates!0 (_keys!826 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) #b00000000000000000000000000000000 Nil!4800))))

(assert (= (and d!185818 res!220917) b!520296))

(assert (= (and b!520296 res!220918) b!520297))

(assert (= (and b!520297 res!220919) b!520298))

(declare-fun m!767013 () Bool)

(assert (=> d!185818 m!767013))

(declare-fun m!767015 () Bool)

(assert (=> b!520296 m!767015))

(declare-fun m!767017 () Bool)

(assert (=> b!520297 m!767017))

(declare-fun m!767019 () Bool)

(assert (=> b!520298 m!767019))

(assert (=> d!185794 d!185818))

(declare-fun d!185820 () Bool)

(declare-fun res!220920 () Bool)

(declare-fun e!311782 () Bool)

(assert (=> d!185820 (=> (not res!220920) (not e!311782))))

(assert (=> d!185820 (= res!220920 (simpleValid!2 (v!15891 (underlying!1249 lt!216818))))))

(assert (=> d!185820 (= (valid!512 (v!15891 (underlying!1249 lt!216818))) e!311782)))

(declare-fun b!520299 () Bool)

(declare-fun res!220921 () Bool)

(assert (=> b!520299 (=> (not res!220921) (not e!311782))))

(assert (=> b!520299 (= res!220921 (= (arrayCountValidKeys!0 (_keys!826 (v!15891 (underlying!1249 lt!216818))) #b00000000000000000000000000000000 (size!3912 (_keys!826 (v!15891 (underlying!1249 lt!216818))))) (_size!1179 (v!15891 (underlying!1249 lt!216818)))))))

(declare-fun b!520300 () Bool)

(declare-fun res!220922 () Bool)

(assert (=> b!520300 (=> (not res!220922) (not e!311782))))

(assert (=> b!520300 (= res!220922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!826 (v!15891 (underlying!1249 lt!216818))) (mask!1987 (v!15891 (underlying!1249 lt!216818)))))))

(declare-fun b!520301 () Bool)

(assert (=> b!520301 (= e!311782 (arrayNoDuplicates!0 (_keys!826 (v!15891 (underlying!1249 lt!216818))) #b00000000000000000000000000000000 Nil!4800))))

(assert (= (and d!185820 res!220920) b!520299))

(assert (= (and b!520299 res!220921) b!520300))

(assert (= (and b!520300 res!220922) b!520301))

(declare-fun m!767021 () Bool)

(assert (=> d!185820 m!767021))

(declare-fun m!767023 () Bool)

(assert (=> b!520299 m!767023))

(declare-fun m!767025 () Bool)

(assert (=> b!520300 m!767025))

(declare-fun m!767027 () Bool)

(assert (=> b!520301 m!767027))

(assert (=> d!185782 d!185820))

(declare-fun call!38033 () (InoxSet Context!278))

(declare-fun bm!38028 () Bool)

(declare-fun derivationStepZipperDown!3 (Regex!1195 Context!278 C!3312) (InoxSet Context!278))

(assert (=> bm!38028 (= call!38033 (derivationStepZipperDown!3 (h!10196 (exprs!639 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))) (Context!279 (t!73395 (exprs!639 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))) (_2!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))))

(declare-fun b!520312 () Bool)

(declare-fun e!311791 () (InoxSet Context!278))

(assert (=> b!520312 (= e!311791 ((as const (Array Context!278 Bool)) false))))

(declare-fun d!185822 () Bool)

(declare-fun c!100582 () Bool)

(declare-fun e!311790 () Bool)

(assert (=> d!185822 (= c!100582 e!311790)))

(declare-fun res!220925 () Bool)

(assert (=> d!185822 (=> (not res!220925) (not e!311790))))

(assert (=> d!185822 (= res!220925 ((_ is Cons!4795) (exprs!639 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))))

(declare-fun e!311789 () (InoxSet Context!278))

(assert (=> d!185822 (= (derivationStepZipperUp!2 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))) (_2!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))) e!311789)))

(declare-fun b!520313 () Bool)

(declare-fun nullable!325 (Regex!1195) Bool)

(assert (=> b!520313 (= e!311790 (nullable!325 (h!10196 (exprs!639 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))))))

(declare-fun b!520314 () Bool)

(assert (=> b!520314 (= e!311789 e!311791)))

(declare-fun c!100583 () Bool)

(assert (=> b!520314 (= c!100583 ((_ is Cons!4795) (exprs!639 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))))

(declare-fun b!520315 () Bool)

(assert (=> b!520315 (= e!311791 call!38033)))

(declare-fun b!520316 () Bool)

(assert (=> b!520316 (= e!311789 ((_ map or) call!38033 (derivationStepZipperUp!2 (Context!279 (t!73395 (exprs!639 (_1!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))) (_2!3166 (_1!3167 (h!10197 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))))

(assert (= (and d!185822 res!220925) b!520313))

(assert (= (and d!185822 c!100582) b!520316))

(assert (= (and d!185822 (not c!100582)) b!520314))

(assert (= (and b!520314 c!100583) b!520315))

(assert (= (and b!520314 (not c!100583)) b!520312))

(assert (= (or b!520316 b!520315) bm!38028))

(declare-fun m!767029 () Bool)

(assert (=> bm!38028 m!767029))

(declare-fun m!767031 () Bool)

(assert (=> b!520313 m!767031))

(declare-fun m!767033 () Bool)

(assert (=> b!520316 m!767033))

(assert (=> bs!60524 d!185822))

(declare-fun d!185824 () Bool)

(declare-fun res!220926 () Bool)

(declare-fun e!311792 () Bool)

(assert (=> d!185824 (=> res!220926 e!311792)))

(assert (=> d!185824 (= res!220926 ((_ is Nil!4798) (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))))))

(assert (=> d!185824 (= (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))) lambda!14949) e!311792)))

(declare-fun b!520317 () Bool)

(declare-fun e!311793 () Bool)

(assert (=> b!520317 (= e!311792 e!311793)))

(declare-fun res!220927 () Bool)

(assert (=> b!520317 (=> (not res!220927) (not e!311793))))

(assert (=> b!520317 (= res!220927 (dynLambda!3011 lambda!14949 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))))))

(declare-fun b!520318 () Bool)

(assert (=> b!520318 (= e!311793 (forall!1463 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))) lambda!14949))))

(assert (= (and d!185824 (not res!220926)) b!520317))

(assert (= (and b!520317 res!220927) b!520318))

(declare-fun b_lambda!20321 () Bool)

(assert (=> (not b_lambda!20321) (not b!520317)))

(declare-fun m!767035 () Bool)

(assert (=> b!520317 m!767035))

(declare-fun m!767037 () Bool)

(assert (=> b!520318 m!767037))

(assert (=> d!185788 d!185824))

(declare-fun d!185826 () Bool)

(assert (=> d!185826 (= (arrayCountValidKeys!0 lt!216897 lt!216909 lt!216907) #b00000000000000000000000000000000)))

(declare-fun lt!216926 () Unit!8779)

(declare-fun choose!424 (array!2085 (_ BitVec 32) (_ BitVec 32)) Unit!8779)

(assert (=> d!185826 (= lt!216926 (choose!424 lt!216897 lt!216909 lt!216907))))

(assert (=> d!185826 (bvslt (size!3912 lt!216897) #b01111111111111111111111111111111)))

(assert (=> d!185826 (= (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!216897 lt!216909 lt!216907) lt!216926)))

(declare-fun bs!60530 () Bool)

(assert (= bs!60530 d!185826))

(assert (=> bs!60530 m!766933))

(declare-fun m!767039 () Bool)

(assert (=> bs!60530 m!767039))

(assert (=> d!185776 d!185826))

(declare-fun d!185828 () Bool)

(declare-fun getCurrentListMap!4 (array!2085 array!2087 (_ BitVec 32) (_ BitVec 32) List!4806 List!4806 (_ BitVec 32) Int) ListLongMap!95)

(assert (=> d!185828 (= (map!1095 lt!216904) (getCurrentListMap!4 (_keys!826 lt!216904) (_values!813 lt!216904) (mask!1987 lt!216904) (extraKeys!781 lt!216904) (zeroValue!791 lt!216904) (minValue!791 lt!216904) #b00000000000000000000000000000000 (defaultEntry!886 lt!216904)))))

(declare-fun bs!60531 () Bool)

(assert (= bs!60531 d!185828))

(declare-fun m!767041 () Bool)

(assert (=> bs!60531 m!767041))

(assert (=> d!185776 d!185828))

(declare-fun d!185830 () Bool)

(assert (=> d!185830 (arrayForallSeekEntryOrOpenFound!0 lt!216916 lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001))))

(declare-fun lt!216929 () Unit!8779)

(declare-fun choose!588 (array!2085 (_ BitVec 32) (_ BitVec 32)) Unit!8779)

(assert (=> d!185830 (= lt!216929 (choose!588 lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001) lt!216916))))

(assert (=> d!185830 (validMask!0 (bvsub initialSize!10 #b00000000000000000000000000000001))))

(assert (=> d!185830 (= (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001) lt!216916) lt!216929)))

(declare-fun bs!60532 () Bool)

(assert (= bs!60532 d!185830))

(assert (=> bs!60532 m!766947))

(declare-fun m!767043 () Bool)

(assert (=> bs!60532 m!767043))

(assert (=> bs!60532 m!766793))

(assert (=> d!185776 d!185830))

(assert (=> d!185776 d!185728))

(declare-fun b!520327 () Bool)

(declare-fun e!311800 () Bool)

(declare-fun call!38036 () Bool)

(assert (=> b!520327 (= e!311800 call!38036)))

(declare-fun d!185832 () Bool)

(declare-fun res!220932 () Bool)

(declare-fun e!311802 () Bool)

(assert (=> d!185832 (=> res!220932 e!311802)))

(assert (=> d!185832 (= res!220932 (bvsge lt!216916 (size!3912 lt!216900)))))

(assert (=> d!185832 (= (arrayForallSeekEntryOrOpenFound!0 lt!216916 lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001)) e!311802)))

(declare-fun bm!38031 () Bool)

(assert (=> bm!38031 (= call!38036 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!216916 #b00000000000000000000000000000001) lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001)))))

(declare-fun b!520328 () Bool)

(declare-fun e!311801 () Bool)

(assert (=> b!520328 (= e!311800 e!311801)))

(declare-fun lt!216937 () (_ BitVec 64))

(assert (=> b!520328 (= lt!216937 (select (arr!954 lt!216900) lt!216916))))

(declare-fun lt!216938 () Unit!8779)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2085 (_ BitVec 64) (_ BitVec 32)) Unit!8779)

(assert (=> b!520328 (= lt!216938 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!216900 lt!216937 lt!216916))))

(assert (=> b!520328 (arrayContainsKey!0 lt!216900 lt!216937 #b00000000000000000000000000000000)))

(declare-fun lt!216936 () Unit!8779)

(assert (=> b!520328 (= lt!216936 lt!216938)))

(declare-fun res!220933 () Bool)

(declare-datatypes ((SeekEntryResult!5 0))(
  ( (Found!5 (index!792 (_ BitVec 32))) (Undefined!5) (MissingZero!5 (index!793 (_ BitVec 32))) (MissingVacant!5 (index!794 (_ BitVec 32))) (Intermediate!5 (undefined!86 Bool) (index!795 (_ BitVec 32)) (x!115406 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2085 (_ BitVec 32)) SeekEntryResult!5)

(assert (=> b!520328 (= res!220933 (= (seekEntryOrOpen!0 (select (arr!954 lt!216900) lt!216916) lt!216900 (bvsub initialSize!10 #b00000000000000000000000000000001)) (Found!5 lt!216916)))))

(assert (=> b!520328 (=> (not res!220933) (not e!311801))))

(declare-fun b!520329 () Bool)

(assert (=> b!520329 (= e!311801 call!38036)))

(declare-fun b!520330 () Bool)

(assert (=> b!520330 (= e!311802 e!311800)))

(declare-fun c!100586 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520330 (= c!100586 (validKeyInArray!0 (select (arr!954 lt!216900) lt!216916)))))

(assert (= (and d!185832 (not res!220932)) b!520330))

(assert (= (and b!520330 c!100586) b!520328))

(assert (= (and b!520330 (not c!100586)) b!520327))

(assert (= (and b!520328 res!220933) b!520329))

(assert (= (or b!520329 b!520327) bm!38031))

(declare-fun m!767045 () Bool)

(assert (=> bm!38031 m!767045))

(declare-fun m!767047 () Bool)

(assert (=> b!520328 m!767047))

(declare-fun m!767049 () Bool)

(assert (=> b!520328 m!767049))

(declare-fun m!767051 () Bool)

(assert (=> b!520328 m!767051))

(assert (=> b!520328 m!767047))

(declare-fun m!767053 () Bool)

(assert (=> b!520328 m!767053))

(assert (=> b!520330 m!767047))

(assert (=> b!520330 m!767047))

(declare-fun m!767055 () Bool)

(assert (=> b!520330 m!767055))

(assert (=> d!185776 d!185832))

(declare-fun b!520339 () Bool)

(declare-fun e!311807 () (_ BitVec 32))

(declare-fun call!38039 () (_ BitVec 32))

(assert (=> b!520339 (= e!311807 call!38039)))

(declare-fun b!520340 () Bool)

(declare-fun e!311808 () (_ BitVec 32))

(assert (=> b!520340 (= e!311808 #b00000000000000000000000000000000)))

(declare-fun bm!38034 () Bool)

(assert (=> bm!38034 (= call!38039 (arrayCountValidKeys!0 lt!216897 (bvadd lt!216909 #b00000000000000000000000000000001) lt!216907))))

(declare-fun b!520341 () Bool)

(assert (=> b!520341 (= e!311807 (bvadd #b00000000000000000000000000000001 call!38039))))

(declare-fun d!185834 () Bool)

(declare-fun lt!216941 () (_ BitVec 32))

(assert (=> d!185834 (and (bvsge lt!216941 #b00000000000000000000000000000000) (bvsle lt!216941 (bvsub (size!3912 lt!216897) lt!216909)))))

(assert (=> d!185834 (= lt!216941 e!311808)))

(declare-fun c!100592 () Bool)

(assert (=> d!185834 (= c!100592 (bvsge lt!216909 lt!216907))))

(assert (=> d!185834 (and (bvsle lt!216909 lt!216907) (bvsge lt!216909 #b00000000000000000000000000000000) (bvsle lt!216907 (size!3912 lt!216897)))))

(assert (=> d!185834 (= (arrayCountValidKeys!0 lt!216897 lt!216909 lt!216907) lt!216941)))

(declare-fun b!520342 () Bool)

(assert (=> b!520342 (= e!311808 e!311807)))

(declare-fun c!100591 () Bool)

(assert (=> b!520342 (= c!100591 (validKeyInArray!0 (select (arr!954 lt!216897) lt!216909)))))

(assert (= (and d!185834 c!100592) b!520340))

(assert (= (and d!185834 (not c!100592)) b!520342))

(assert (= (and b!520342 c!100591) b!520341))

(assert (= (and b!520342 (not c!100591)) b!520339))

(assert (= (or b!520341 b!520339) bm!38034))

(declare-fun m!767057 () Bool)

(assert (=> bm!38034 m!767057))

(declare-fun m!767059 () Bool)

(assert (=> b!520342 m!767059))

(assert (=> b!520342 m!767059))

(declare-fun m!767061 () Bool)

(assert (=> b!520342 m!767061))

(assert (=> d!185776 d!185834))

(declare-fun d!185836 () Bool)

(assert (=> d!185836 (arrayNoDuplicates!0 lt!216919 lt!216914 lt!216905)))

(declare-fun lt!216944 () Unit!8779)

(declare-fun choose!793 (array!2085 (_ BitVec 32) (_ BitVec 32) List!4810) Unit!8779)

(assert (=> d!185836 (= lt!216944 (choose!793 lt!216919 lt!216914 (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!216905))))

(assert (=> d!185836 (= (size!3912 lt!216919) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(assert (=> d!185836 (= (lemmaArrayNoDuplicatesInAll0Array!0 lt!216919 lt!216914 (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001) lt!216905) lt!216944)))

(declare-fun bs!60533 () Bool)

(assert (= bs!60533 d!185836))

(assert (=> bs!60533 m!766943))

(declare-fun m!767063 () Bool)

(assert (=> bs!60533 m!767063))

(assert (=> d!185776 d!185836))

(declare-fun b!520353 () Bool)

(declare-fun e!311818 () Bool)

(declare-fun call!38042 () Bool)

(assert (=> b!520353 (= e!311818 call!38042)))

(declare-fun bm!38037 () Bool)

(declare-fun c!100595 () Bool)

(assert (=> bm!38037 (= call!38042 (arrayNoDuplicates!0 lt!216919 (bvadd lt!216914 #b00000000000000000000000000000001) (ite c!100595 (Cons!4800 (select (arr!954 lt!216919) lt!216914) lt!216905) lt!216905)))))

(declare-fun d!185838 () Bool)

(declare-fun res!220941 () Bool)

(declare-fun e!311817 () Bool)

(assert (=> d!185838 (=> res!220941 e!311817)))

(assert (=> d!185838 (= res!220941 (bvsge lt!216914 (size!3912 lt!216919)))))

(assert (=> d!185838 (= (arrayNoDuplicates!0 lt!216919 lt!216914 lt!216905) e!311817)))

(declare-fun b!520354 () Bool)

(declare-fun e!311819 () Bool)

(assert (=> b!520354 (= e!311817 e!311819)))

(declare-fun res!220940 () Bool)

(assert (=> b!520354 (=> (not res!220940) (not e!311819))))

(declare-fun e!311820 () Bool)

(assert (=> b!520354 (= res!220940 (not e!311820))))

(declare-fun res!220942 () Bool)

(assert (=> b!520354 (=> (not res!220942) (not e!311820))))

(assert (=> b!520354 (= res!220942 (validKeyInArray!0 (select (arr!954 lt!216919) lt!216914)))))

(declare-fun b!520355 () Bool)

(declare-fun contains!1148 (List!4810 (_ BitVec 64)) Bool)

(assert (=> b!520355 (= e!311820 (contains!1148 lt!216905 (select (arr!954 lt!216919) lt!216914)))))

(declare-fun b!520356 () Bool)

(assert (=> b!520356 (= e!311819 e!311818)))

(assert (=> b!520356 (= c!100595 (validKeyInArray!0 (select (arr!954 lt!216919) lt!216914)))))

(declare-fun b!520357 () Bool)

(assert (=> b!520357 (= e!311818 call!38042)))

(assert (= (and d!185838 (not res!220941)) b!520354))

(assert (= (and b!520354 res!220942) b!520355))

(assert (= (and b!520354 res!220940) b!520356))

(assert (= (and b!520356 c!100595) b!520357))

(assert (= (and b!520356 (not c!100595)) b!520353))

(assert (= (or b!520357 b!520353) bm!38037))

(declare-fun m!767065 () Bool)

(assert (=> bm!38037 m!767065))

(declare-fun m!767067 () Bool)

(assert (=> bm!38037 m!767067))

(assert (=> b!520354 m!767065))

(assert (=> b!520354 m!767065))

(declare-fun m!767069 () Bool)

(assert (=> b!520354 m!767069))

(assert (=> b!520355 m!767065))

(assert (=> b!520355 m!767065))

(declare-fun m!767071 () Bool)

(assert (=> b!520355 m!767071))

(assert (=> b!520356 m!767065))

(assert (=> b!520356 m!767065))

(assert (=> b!520356 m!767069))

(assert (=> d!185776 d!185838))

(declare-fun d!185840 () Bool)

(declare-fun res!220943 () Bool)

(declare-fun e!311821 () Bool)

(assert (=> d!185840 (=> (not res!220943) (not e!311821))))

(assert (=> d!185840 (= res!220943 (simpleValid!2 lt!216918))))

(assert (=> d!185840 (= (valid!512 lt!216918) e!311821)))

(declare-fun b!520358 () Bool)

(declare-fun res!220944 () Bool)

(assert (=> b!520358 (=> (not res!220944) (not e!311821))))

(assert (=> b!520358 (= res!220944 (= (arrayCountValidKeys!0 (_keys!826 lt!216918) #b00000000000000000000000000000000 (size!3912 (_keys!826 lt!216918))) (_size!1179 lt!216918)))))

(declare-fun b!520359 () Bool)

(declare-fun res!220945 () Bool)

(assert (=> b!520359 (=> (not res!220945) (not e!311821))))

(assert (=> b!520359 (= res!220945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!826 lt!216918) (mask!1987 lt!216918)))))

(declare-fun b!520360 () Bool)

(assert (=> b!520360 (= e!311821 (arrayNoDuplicates!0 (_keys!826 lt!216918) #b00000000000000000000000000000000 Nil!4800))))

(assert (= (and d!185840 res!220943) b!520358))

(assert (= (and b!520358 res!220944) b!520359))

(assert (= (and b!520359 res!220945) b!520360))

(declare-fun m!767073 () Bool)

(assert (=> d!185840 m!767073))

(declare-fun m!767075 () Bool)

(assert (=> b!520358 m!767075))

(declare-fun m!767077 () Bool)

(assert (=> b!520359 m!767077))

(declare-fun m!767079 () Bool)

(assert (=> b!520360 m!767079))

(assert (=> d!185776 d!185840))

(declare-fun d!185842 () Bool)

(declare-fun res!220946 () Bool)

(declare-fun e!311822 () Bool)

(assert (=> d!185842 (=> res!220946 e!311822)))

(assert (=> d!185842 (= res!220946 ((_ is Nil!4796) (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))

(assert (=> d!185842 (= (forall!1462 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) lambda!14942) e!311822)))

(declare-fun b!520361 () Bool)

(declare-fun e!311823 () Bool)

(assert (=> b!520361 (= e!311822 e!311823)))

(declare-fun res!220947 () Bool)

(assert (=> b!520361 (=> (not res!220947) (not e!311823))))

(assert (=> b!520361 (= res!220947 (dynLambda!3010 lambda!14942 (h!10197 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))

(declare-fun b!520362 () Bool)

(assert (=> b!520362 (= e!311823 (forall!1462 (t!73396 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))) lambda!14942))))

(assert (= (and d!185842 (not res!220946)) b!520361))

(assert (= (and b!520361 res!220947) b!520362))

(declare-fun b_lambda!20323 () Bool)

(assert (=> (not b_lambda!20323) (not b!520361)))

(declare-fun m!767081 () Bool)

(assert (=> b!520361 m!767081))

(declare-fun m!767083 () Bool)

(assert (=> b!520362 m!767083))

(assert (=> b!520257 d!185842))

(declare-fun d!185844 () Bool)

(assert (=> d!185844 (= (valid!510 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))) (valid!512 (v!15891 (underlying!1249 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))

(declare-fun bs!60534 () Bool)

(assert (= bs!60534 d!185844))

(declare-fun m!767085 () Bool)

(assert (=> bs!60534 m!767085))

(assert (=> d!185784 d!185844))

(declare-fun d!185846 () Bool)

(assert (=> d!185846 (= (invariantList!86 (toList!442 lt!216923)) (noDuplicatedKeys!23 (toList!442 lt!216923)))))

(declare-fun bs!60535 () Bool)

(assert (= bs!60535 d!185846))

(declare-fun m!767087 () Bool)

(assert (=> bs!60535 m!767087))

(assert (=> d!185780 d!185846))

(declare-fun bs!60536 () Bool)

(declare-fun d!185848 () Bool)

(assert (= bs!60536 (and d!185848 b!520232)))

(declare-fun lambda!14953 () Int)

(assert (=> bs!60536 (= lambda!14953 lambda!14945)))

(declare-fun bs!60537 () Bool)

(assert (= bs!60537 (and d!185848 b!520258)))

(assert (=> bs!60537 (= lambda!14953 lambda!14946)))

(declare-fun bs!60538 () Bool)

(assert (= bs!60538 (and d!185848 d!185788)))

(assert (=> bs!60538 (not (= lambda!14953 lambda!14949))))

(declare-fun bs!60539 () Bool)

(assert (= bs!60539 (and d!185848 d!185806)))

(assert (=> bs!60539 (not (= lambda!14953 lambda!14950))))

(declare-fun lt!216947 () ListMap!221)

(assert (=> d!185848 (invariantList!86 (toList!442 lt!216947))))

(declare-fun e!311826 () ListMap!221)

(assert (=> d!185848 (= lt!216947 e!311826)))

(declare-fun c!100598 () Bool)

(assert (=> d!185848 (= c!100598 ((_ is Cons!4798) (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))

(assert (=> d!185848 (forall!1463 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))) lambda!14953)))

(assert (=> d!185848 (= (extractMap!28 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))) lt!216947)))

(declare-fun b!520367 () Bool)

(declare-fun addToMapMapFromBucket!7 (List!4806 ListMap!221) ListMap!221)

(assert (=> b!520367 (= e!311826 (addToMapMapFromBucket!7 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))) (extractMap!28 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))))

(declare-fun b!520368 () Bool)

(assert (=> b!520368 (= e!311826 (ListMap!222 Nil!4796))))

(assert (= (and d!185848 c!100598) b!520367))

(assert (= (and d!185848 (not c!100598)) b!520368))

(declare-fun m!767089 () Bool)

(assert (=> d!185848 m!767089))

(declare-fun m!767091 () Bool)

(assert (=> d!185848 m!767091))

(declare-fun m!767093 () Bool)

(assert (=> b!520367 m!767093))

(assert (=> b!520367 m!767093))

(declare-fun m!767095 () Bool)

(assert (=> b!520367 m!767095))

(assert (=> d!185780 d!185848))

(assert (=> d!185780 d!185808))

(assert (=> d!185780 d!185784))

(declare-fun d!185850 () Bool)

(assert (=> d!185850 (= (head!1165 (toList!443 (map!1095 lt!216904))) (h!10199 (toList!443 (map!1095 lt!216904))))))

(assert (=> b!520249 d!185850))

(assert (=> b!520249 d!185828))

(declare-fun d!185852 () Bool)

(declare-fun e!311829 () Bool)

(assert (=> d!185852 e!311829))

(declare-fun c!100601 () Bool)

(assert (=> d!185852 (= c!100601 (and (not (= (_1!3169 lt!216901) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!3169 lt!216901) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!216950 () Unit!8779)

(declare-fun choose!3723 (array!2085 array!2087 (_ BitVec 32) (_ BitVec 32) List!4806 List!4806 (_ BitVec 64) Int) Unit!8779)

(assert (=> d!185852 (= lt!216950 (choose!3723 lt!216898 (array!2088 ((as const (Array (_ BitVec 32) List!4806)) lt!216920) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!10 #b00000000000000000000000000000001) lt!216915 lt!216920 lt!216920 (_1!3169 lt!216901) lambda!14929))))

(assert (=> d!185852 (validMask!0 (bvsub initialSize!10 #b00000000000000000000000000000001))))

(assert (=> d!185852 (= (lemmaKeyInListMapIsInArray!3 lt!216898 (array!2088 ((as const (Array (_ BitVec 32) List!4806)) lt!216920) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (bvsub initialSize!10 #b00000000000000000000000000000001) lt!216915 lt!216920 lt!216920 (_1!3169 lt!216901) lambda!14929) lt!216950)))

(declare-fun b!520373 () Bool)

(assert (=> b!520373 (= e!311829 (arrayContainsKey!0 lt!216898 (_1!3169 lt!216901) #b00000000000000000000000000000000))))

(declare-fun b!520374 () Bool)

(assert (=> b!520374 (= e!311829 (ite (= (_1!3169 lt!216901) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!216915 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!216915 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!185852 c!100601) b!520373))

(assert (= (and d!185852 (not c!100601)) b!520374))

(declare-fun m!767097 () Bool)

(assert (=> d!185852 m!767097))

(assert (=> d!185852 m!766793))

(assert (=> b!520373 m!766927))

(assert (=> b!520249 d!185852))

(declare-fun d!185854 () Bool)

(declare-fun lt!216953 () (_ BitVec 32))

(assert (=> d!185854 (and (or (bvslt lt!216953 #b00000000000000000000000000000000) (bvsge lt!216953 (size!3912 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (and (bvsge lt!216953 #b00000000000000000000000000000000) (bvslt lt!216953 (size!3912 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))) (bvsge lt!216953 #b00000000000000000000000000000000) (bvslt lt!216953 (size!3912 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (= (select (arr!954 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) lt!216953) (_1!3169 lt!216901)))))

(declare-fun e!311832 () (_ BitVec 32))

(assert (=> d!185854 (= lt!216953 e!311832)))

(declare-fun c!100604 () Bool)

(assert (=> d!185854 (= c!100604 (= (select (arr!954 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b00000000000000000000000000000000) (_1!3169 lt!216901)))))

(assert (=> d!185854 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3912 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))) (bvslt (size!3912 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) #b01111111111111111111111111111111))))

(assert (=> d!185854 (= (arrayScanForKey!0 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!3169 lt!216901) #b00000000000000000000000000000000) lt!216953)))

(declare-fun b!520379 () Bool)

(assert (=> b!520379 (= e!311832 #b00000000000000000000000000000000)))

(declare-fun b!520380 () Bool)

(assert (=> b!520380 (= e!311832 (arrayScanForKey!0 (array!2086 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (bvsub initialSize!10 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (_1!3169 lt!216901) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!185854 c!100604) b!520379))

(assert (= (and d!185854 (not c!100604)) b!520380))

(declare-fun m!767099 () Bool)

(assert (=> d!185854 m!767099))

(declare-fun m!767101 () Bool)

(assert (=> d!185854 m!767101))

(declare-fun m!767103 () Bool)

(assert (=> b!520380 m!767103))

(assert (=> b!520249 d!185854))

(declare-fun d!185856 () Bool)

(assert (=> d!185856 (= (map!1095 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) (getCurrentListMap!4 (_keys!826 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) (_values!813 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) (mask!1987 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) (extraKeys!781 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) (zeroValue!791 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) (minValue!791 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758))))) #b00000000000000000000000000000000 (defaultEntry!886 (v!15891 (underlying!1249 (v!15892 (underlying!1250 lt!216758)))))))))

(declare-fun bs!60540 () Bool)

(assert (= bs!60540 d!185856))

(declare-fun m!767105 () Bool)

(assert (=> bs!60540 m!767105))

(assert (=> d!185790 d!185856))

(declare-fun d!185858 () Bool)

(assert (=> d!185858 (= (map!1095 lt!216918) (getCurrentListMap!4 (_keys!826 lt!216918) (_values!813 lt!216918) (mask!1987 lt!216918) (extraKeys!781 lt!216918) (zeroValue!791 lt!216918) (minValue!791 lt!216918) #b00000000000000000000000000000000 (defaultEntry!886 lt!216918)))))

(declare-fun bs!60541 () Bool)

(assert (= bs!60541 d!185858))

(declare-fun m!767107 () Bool)

(assert (=> bs!60541 m!767107))

(assert (=> b!520247 d!185858))

(declare-fun b_lambda!20325 () Bool)

(assert (= b_lambda!20317 (or b!520232 b_lambda!20325)))

(declare-fun bs!60542 () Bool)

(declare-fun d!185860 () Bool)

(assert (= bs!60542 (and d!185860 b!520232)))

(assert (=> bs!60542 (= (dynLambda!3011 lambda!14945 (h!10199 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758))))))) (noDuplicateKeys!24 (_2!3169 (h!10199 (t!73398 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))))))))

(declare-fun m!767109 () Bool)

(assert (=> bs!60542 m!767109))

(assert (=> b!520274 d!185860))

(declare-fun b_lambda!20327 () Bool)

(assert (= b_lambda!20319 (or b!520258 b_lambda!20327)))

(declare-fun bs!60543 () Bool)

(declare-fun d!185862 () Bool)

(assert (= bs!60543 (and d!185862 b!520258)))

(assert (=> bs!60543 (= (dynLambda!3011 lambda!14946 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))) (noDuplicateKeys!24 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))))))))

(declare-fun m!767111 () Bool)

(assert (=> bs!60543 m!767111))

(assert (=> b!520282 d!185862))

(declare-fun b_lambda!20329 () Bool)

(assert (= b_lambda!20323 (or b!520197 b_lambda!20329)))

(declare-fun bs!60544 () Bool)

(declare-fun d!185864 () Bool)

(assert (= bs!60544 (and d!185864 b!520197)))

(assert (=> bs!60544 (= (dynLambda!3010 lambda!14942 (h!10197 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))) (= (_2!3167 (h!10197 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10)))))))) (derivationStepZipperUp!2 (_1!3166 (_1!3167 (h!10197 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))) (_2!3166 (_1!3167 (h!10197 (t!73396 (toList!442 (map!1092 (cache!894 (CacheUp!199 (getEmptyHashMap!7 lambda!14919 hashF!390 initialSize!10))))))))))))))

(declare-fun m!767113 () Bool)

(assert (=> bs!60544 m!767113))

(assert (=> b!520361 d!185864))

(declare-fun b_lambda!20331 () Bool)

(assert (= b_lambda!20321 (or d!185788 b_lambda!20331)))

(declare-fun bs!60545 () Bool)

(declare-fun d!185866 () Bool)

(assert (= bs!60545 (and d!185866 d!185788)))

(declare-fun allKeysSameHash!23 (List!4806 (_ BitVec 64) Hashable!507) Bool)

(assert (=> bs!60545 (= (dynLambda!3011 lambda!14949 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))) (allKeysSameHash!23 (_2!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))) (_1!3169 (h!10199 (toList!443 (map!1093 (v!15892 (underlying!1250 lt!216758)))))) (hashF!2411 lt!216758)))))

(declare-fun m!767115 () Bool)

(assert (=> bs!60545 m!767115))

(assert (=> b!520317 d!185866))

(check-sat (not d!185856) (not d!185808) (not b!520296) (not bm!38028) (not b!520300) (not b!520318) (not b!520281) (not b!520298) (not b!520297) (not b!520362) (not d!185844) (not d!185820) (not b!520313) (not bs!60542) (not bm!38034) (not b!520316) (not b_lambda!20313) (not d!185828) (not b!520355) (not bm!38037) (not d!185840) (not d!185818) (not b_lambda!20327) (not b!520301) (not b!520358) (not b!520359) (not b_lambda!20329) (not d!185836) (not d!185848) (not b!520360) (not d!185852) (not b!520275) (not b_lambda!20315) (not d!185858) (not bm!38031) (not bs!60545) (not b!520299) (not d!185830) (not b!520373) (not b!520283) (not b!520328) (not b!520342) (not b!520380) (not d!185846) (not d!185806) (not d!185826) (not b!520289) (not bs!60543) (not b!520356) (not b_lambda!20311) (not b!520288) (not b!520367) (not b!520330) (not b!520354) (not b_lambda!20331) (not bs!60544) (not b!520280) (not b!520273) (not b_lambda!20325))
(check-sat)
