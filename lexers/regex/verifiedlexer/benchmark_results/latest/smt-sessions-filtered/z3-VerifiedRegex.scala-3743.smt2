; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!209502 () Bool)

(assert start!209502)

(declare-fun b!2159186 () Bool)

(declare-fun b_free!63805 () Bool)

(declare-fun b_next!64509 () Bool)

(assert (=> b!2159186 (= b_free!63805 (not b_next!64509))))

(declare-fun tp!673172 () Bool)

(declare-fun b_and!173421 () Bool)

(assert (=> b!2159186 (= tp!673172 b_and!173421)))

(declare-fun b!2159202 () Bool)

(declare-fun b_free!63807 () Bool)

(declare-fun b_next!64511 () Bool)

(assert (=> b!2159202 (= b_free!63807 (not b_next!64511))))

(declare-fun tp!673164 () Bool)

(declare-fun b_and!173423 () Bool)

(assert (=> b!2159202 (= tp!673164 b_and!173423)))

(declare-fun b!2159190 () Bool)

(assert (=> b!2159190 true))

(declare-fun res!930423 () Bool)

(declare-fun e!1381454 () Bool)

(assert (=> start!209502 (=> (not res!930423) (not e!1381454))))

(declare-datatypes ((C!12052 0))(
  ( (C!12053 (val!7012 Int)) )
))
(declare-datatypes ((List!25070 0))(
  ( (Nil!24986) (Cons!24986 (h!30387 C!12052) (t!197618 List!25070)) )
))
(declare-datatypes ((IArray!16183 0))(
  ( (IArray!16184 (innerList!8149 List!25070)) )
))
(declare-datatypes ((Conc!8089 0))(
  ( (Node!8089 (left!19240 Conc!8089) (right!19570 Conc!8089) (csize!16408 Int) (cheight!8300 Int)) (Leaf!11833 (xs!11031 IArray!16183) (csize!16409 Int)) (Empty!8089) )
))
(declare-datatypes ((BalanceConc!15940 0))(
  ( (BalanceConc!15941 (c!341794 Conc!8089)) )
))
(declare-fun localTotalInput!17 () BalanceConc!15940)

(declare-datatypes ((Regex!5953 0))(
  ( (ElementMatch!5953 (c!341795 C!12052)) (Concat!10255 (regOne!12418 Regex!5953) (regTwo!12418 Regex!5953)) (EmptyExpr!5953) (Star!5953 (reg!6282 Regex!5953)) (EmptyLang!5953) (Union!5953 (regOne!12419 Regex!5953) (regTwo!12419 Regex!5953)) )
))
(declare-datatypes ((List!25071 0))(
  ( (Nil!24987) (Cons!24987 (h!30388 Regex!5953) (t!197619 List!25071)) )
))
(declare-datatypes ((Context!3046 0))(
  ( (Context!3047 (exprs!2023 List!25071)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!3790 0))(
  ( (tuple3!3791 (_1!14709 (InoxSet Context!3046)) (_2!14709 Int) (_3!2365 Int)) )
))
(declare-datatypes ((array!10105 0))(
  ( (array!10106 (arr!4504 (Array (_ BitVec 32) (_ BitVec 64))) (size!19538 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!24688 0))(
  ( (tuple2!24689 (_1!14710 tuple3!3790) (_2!14710 Int)) )
))
(declare-datatypes ((List!25072 0))(
  ( (Nil!24988) (Cons!24988 (h!30389 tuple2!24688) (t!197620 List!25072)) )
))
(declare-datatypes ((array!10107 0))(
  ( (array!10108 (arr!4505 (Array (_ BitVec 32) List!25072)) (size!19539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5908 0))(
  ( (LongMapFixedSize!5909 (defaultEntry!3319 Int) (mask!7246 (_ BitVec 32)) (extraKeys!3202 (_ BitVec 32)) (zeroValue!3212 List!25072) (minValue!3212 List!25072) (_size!5959 (_ BitVec 32)) (_keys!3251 array!10105) (_values!3234 array!10107) (_vacant!3015 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!11641 0))(
  ( (Cell!11642 (v!29377 LongMapFixedSize!5908)) )
))
(declare-datatypes ((MutLongMap!2954 0))(
  ( (LongMap!2954 (underlying!6103 Cell!11641)) (MutLongMapExt!2953 (__x!17038 Int)) )
))
(declare-datatypes ((Cell!11643 0))(
  ( (Cell!11644 (v!29378 MutLongMap!2954)) )
))
(declare-datatypes ((Hashable!2868 0))(
  ( (HashableExt!2867 (__x!17039 Int)) )
))
(declare-datatypes ((MutableMap!2868 0))(
  ( (MutableMapExt!2867 (__x!17040 Int)) (HashMap!2868 (underlying!6104 Cell!11643) (hashF!4791 Hashable!2868) (_size!5960 (_ BitVec 32)) (defaultValue!3030 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!1094 0))(
  ( (CacheFurthestNullable!1095 (cache!3249 MutableMap!2868) (totalInput!3411 BalanceConc!15940)) )
))
(declare-fun thiss!29220 () CacheFurthestNullable!1094)

(assert (=> start!209502 (= res!930423 (= localTotalInput!17 (totalInput!3411 thiss!29220)))))

(assert (=> start!209502 e!1381454))

(declare-fun e!1381456 () Bool)

(declare-fun inv!33080 (BalanceConc!15940) Bool)

(assert (=> start!209502 (and (inv!33080 localTotalInput!17) e!1381456)))

(assert (=> start!209502 true))

(declare-fun condSetEmpty!17932 () Bool)

(declare-fun z!540 () (InoxSet Context!3046))

(assert (=> start!209502 (= condSetEmpty!17932 (= z!540 ((as const (Array Context!3046 Bool)) false)))))

(declare-fun setRes!17932 () Bool)

(assert (=> start!209502 setRes!17932))

(declare-fun e!1381464 () Bool)

(declare-fun inv!33081 (CacheFurthestNullable!1094) Bool)

(assert (=> start!209502 (and (inv!33081 thiss!29220) e!1381464)))

(declare-fun b!2159184 () Bool)

(declare-fun tp!673165 () Bool)

(declare-fun inv!33082 (Conc!8089) Bool)

(assert (=> b!2159184 (= e!1381456 (and (inv!33082 (c!341794 localTotalInput!17)) tp!673165))))

(declare-fun b!2159185 () Bool)

(declare-fun e!1381462 () Bool)

(declare-fun from!970 () Int)

(declare-fun res!14508 () Int)

(declare-fun lastNullablePos!109 () Int)

(declare-fun validCacheMapFurthestNullableBody!36 (tuple2!24688 BalanceConc!15940) Bool)

(assert (=> b!2159185 (= e!1381462 (not (validCacheMapFurthestNullableBody!36 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508) localTotalInput!17)))))

(declare-fun e!1381451 () Bool)

(declare-fun e!1381453 () Bool)

(assert (=> b!2159186 (= e!1381451 (and e!1381453 tp!673172))))

(declare-fun mapIsEmpty!13943 () Bool)

(declare-fun mapRes!13943 () Bool)

(assert (=> mapIsEmpty!13943 mapRes!13943))

(declare-fun b!2159187 () Bool)

(declare-fun res!930422 () Bool)

(assert (=> b!2159187 (=> (not res!930422) (not e!1381462))))

(declare-fun e!1381455 () Bool)

(assert (=> b!2159187 (= res!930422 e!1381455)))

(declare-fun res!930426 () Bool)

(assert (=> b!2159187 (=> res!930426 e!1381455)))

(declare-fun nullableZipper!242 ((InoxSet Context!3046)) Bool)

(assert (=> b!2159187 (= res!930426 (not (nullableZipper!242 z!540)))))

(declare-fun b!2159188 () Bool)

(declare-fun e!1381463 () Bool)

(declare-fun e!1381452 () Bool)

(assert (=> b!2159188 (= e!1381463 e!1381452)))

(declare-fun b!2159189 () Bool)

(declare-fun res!930425 () Bool)

(assert (=> b!2159189 (=> (not res!930425) (not e!1381462))))

(declare-fun lt!802469 () Int)

(declare-fun furthestNullablePosition!151 ((InoxSet Context!3046) Int BalanceConc!15940 Int Int) Int)

(assert (=> b!2159189 (= res!930425 (= res!14508 (furthestNullablePosition!151 z!540 from!970 (totalInput!3411 thiss!29220) lt!802469 lastNullablePos!109)))))

(declare-fun res!930419 () Bool)

(assert (=> b!2159190 (=> (not res!930419) (not e!1381462))))

(declare-fun lambda!81551 () Int)

(declare-fun forall!5144 (List!25072 Int) Bool)

(declare-datatypes ((ListMap!735 0))(
  ( (ListMap!736 (toList!1136 List!25072)) )
))
(declare-fun map!5039 (MutableMap!2868) ListMap!735)

(assert (=> b!2159190 (= res!930419 (forall!5144 (toList!1136 (map!5039 (cache!3249 thiss!29220))) lambda!81551))))

(declare-fun b!2159191 () Bool)

(assert (=> b!2159191 (= e!1381454 e!1381462)))

(declare-fun res!930420 () Bool)

(assert (=> b!2159191 (=> (not res!930420) (not e!1381462))))

(assert (=> b!2159191 (= res!930420 (and (<= from!970 lt!802469) (>= lastNullablePos!109 (- 1)) (< lastNullablePos!109 from!970)))))

(declare-fun size!19540 (BalanceConc!15940) Int)

(assert (=> b!2159191 (= lt!802469 (size!19540 (totalInput!3411 thiss!29220)))))

(declare-fun b!2159192 () Bool)

(declare-fun e!1381457 () Bool)

(declare-fun tp!673168 () Bool)

(assert (=> b!2159192 (= e!1381457 tp!673168)))

(declare-fun b!2159193 () Bool)

(declare-fun res!930421 () Bool)

(assert (=> b!2159193 (=> (not res!930421) (not e!1381454))))

(declare-fun validCacheMapFurthestNullable!191 (MutableMap!2868 BalanceConc!15940) Bool)

(assert (=> b!2159193 (= res!930421 (validCacheMapFurthestNullable!191 (cache!3249 thiss!29220) (totalInput!3411 thiss!29220)))))

(declare-fun b!2159194 () Bool)

(assert (=> b!2159194 (= e!1381455 (= lastNullablePos!109 (- from!970 1)))))

(declare-fun b!2159195 () Bool)

(declare-fun res!930418 () Bool)

(assert (=> b!2159195 (=> (not res!930418) (not e!1381462))))

(declare-fun valid!2279 (MutableMap!2868) Bool)

(assert (=> b!2159195 (= res!930418 (valid!2279 (cache!3249 thiss!29220)))))

(declare-fun setIsEmpty!17932 () Bool)

(assert (=> setIsEmpty!17932 setRes!17932))

(declare-fun b!2159196 () Bool)

(declare-fun e!1381461 () Bool)

(assert (=> b!2159196 (= e!1381461 e!1381463)))

(declare-fun b!2159197 () Bool)

(declare-fun lt!802468 () MutLongMap!2954)

(get-info :version)

(assert (=> b!2159197 (= e!1381453 (and e!1381461 ((_ is LongMap!2954) lt!802468)))))

(assert (=> b!2159197 (= lt!802468 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))

(declare-fun b!2159198 () Bool)

(declare-fun e!1381459 () Bool)

(declare-fun tp!673171 () Bool)

(assert (=> b!2159198 (= e!1381459 (and tp!673171 mapRes!13943))))

(declare-fun condMapEmpty!13943 () Bool)

(declare-fun mapDefault!13943 () List!25072)

(assert (=> b!2159198 (= condMapEmpty!13943 (= (arr!4505 (_values!3234 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) ((as const (Array (_ BitVec 32) List!25072)) mapDefault!13943)))))

(declare-fun mapNonEmpty!13943 () Bool)

(declare-fun tp!673170 () Bool)

(declare-fun tp!673162 () Bool)

(assert (=> mapNonEmpty!13943 (= mapRes!13943 (and tp!673170 tp!673162))))

(declare-fun mapKey!13943 () (_ BitVec 32))

(declare-fun mapRest!13943 () (Array (_ BitVec 32) List!25072))

(declare-fun mapValue!13943 () List!25072)

(assert (=> mapNonEmpty!13943 (= (arr!4505 (_values!3234 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) (store mapRest!13943 mapKey!13943 mapValue!13943))))

(declare-fun b!2159199 () Bool)

(declare-fun res!930417 () Bool)

(assert (=> b!2159199 (=> (not res!930417) (not e!1381462))))

(assert (=> b!2159199 (= res!930417 ((_ is HashMap!2868) (cache!3249 thiss!29220)))))

(declare-fun e!1381458 () Bool)

(declare-fun b!2159200 () Bool)

(assert (=> b!2159200 (= e!1381464 (and e!1381451 (inv!33080 (totalInput!3411 thiss!29220)) e!1381458))))

(declare-fun b!2159201 () Bool)

(declare-fun res!930424 () Bool)

(assert (=> b!2159201 (=> (not res!930424) (not e!1381454))))

(assert (=> b!2159201 (= res!930424 (>= from!970 0))))

(declare-fun tp!673163 () Bool)

(declare-fun tp!673169 () Bool)

(declare-fun array_inv!3232 (array!10105) Bool)

(declare-fun array_inv!3233 (array!10107) Bool)

(assert (=> b!2159202 (= e!1381452 (and tp!673164 tp!673169 tp!673163 (array_inv!3232 (_keys!3251 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) (array_inv!3233 (_values!3234 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) e!1381459))))

(declare-fun setElem!17932 () Context!3046)

(declare-fun tp!673167 () Bool)

(declare-fun setNonEmpty!17932 () Bool)

(declare-fun inv!33083 (Context!3046) Bool)

(assert (=> setNonEmpty!17932 (= setRes!17932 (and tp!673167 (inv!33083 setElem!17932) e!1381457))))

(declare-fun setRest!17932 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17932 (= z!540 ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17932 true) setRest!17932))))

(declare-fun b!2159203 () Bool)

(declare-fun tp!673166 () Bool)

(assert (=> b!2159203 (= e!1381458 (and (inv!33082 (c!341794 (totalInput!3411 thiss!29220))) tp!673166))))

(assert (= (and start!209502 res!930423) b!2159193))

(assert (= (and b!2159193 res!930421) b!2159201))

(assert (= (and b!2159201 res!930424) b!2159191))

(assert (= (and b!2159191 res!930420) b!2159187))

(assert (= (and b!2159187 (not res!930426)) b!2159194))

(assert (= (and b!2159187 res!930422) b!2159189))

(assert (= (and b!2159189 res!930425) b!2159199))

(assert (= (and b!2159199 res!930417) b!2159195))

(assert (= (and b!2159195 res!930418) b!2159190))

(assert (= (and b!2159190 res!930419) b!2159185))

(assert (= start!209502 b!2159184))

(assert (= (and start!209502 condSetEmpty!17932) setIsEmpty!17932))

(assert (= (and start!209502 (not condSetEmpty!17932)) setNonEmpty!17932))

(assert (= setNonEmpty!17932 b!2159192))

(assert (= (and b!2159198 condMapEmpty!13943) mapIsEmpty!13943))

(assert (= (and b!2159198 (not condMapEmpty!13943)) mapNonEmpty!13943))

(assert (= b!2159202 b!2159198))

(assert (= b!2159188 b!2159202))

(assert (= b!2159196 b!2159188))

(assert (= (and b!2159197 ((_ is LongMap!2954) (v!29378 (underlying!6104 (cache!3249 thiss!29220))))) b!2159196))

(assert (= b!2159186 b!2159197))

(assert (= (and b!2159200 ((_ is HashMap!2868) (cache!3249 thiss!29220))) b!2159186))

(assert (= b!2159200 b!2159203))

(assert (= start!209502 b!2159200))

(declare-fun m!2599015 () Bool)

(assert (=> b!2159202 m!2599015))

(declare-fun m!2599017 () Bool)

(assert (=> b!2159202 m!2599017))

(declare-fun m!2599019 () Bool)

(assert (=> b!2159191 m!2599019))

(declare-fun m!2599021 () Bool)

(assert (=> b!2159184 m!2599021))

(declare-fun m!2599023 () Bool)

(assert (=> b!2159190 m!2599023))

(declare-fun m!2599025 () Bool)

(assert (=> b!2159190 m!2599025))

(declare-fun m!2599027 () Bool)

(assert (=> b!2159193 m!2599027))

(declare-fun m!2599029 () Bool)

(assert (=> b!2159189 m!2599029))

(declare-fun m!2599031 () Bool)

(assert (=> start!209502 m!2599031))

(declare-fun m!2599033 () Bool)

(assert (=> start!209502 m!2599033))

(declare-fun m!2599035 () Bool)

(assert (=> setNonEmpty!17932 m!2599035))

(declare-fun m!2599037 () Bool)

(assert (=> b!2159187 m!2599037))

(declare-fun m!2599039 () Bool)

(assert (=> mapNonEmpty!13943 m!2599039))

(declare-fun m!2599041 () Bool)

(assert (=> b!2159203 m!2599041))

(declare-fun m!2599043 () Bool)

(assert (=> b!2159195 m!2599043))

(declare-fun m!2599045 () Bool)

(assert (=> b!2159185 m!2599045))

(declare-fun m!2599047 () Bool)

(assert (=> b!2159200 m!2599047))

(check-sat b_and!173423 (not b!2159187) (not setNonEmpty!17932) b_and!173421 (not b!2159192) (not b!2159202) (not b!2159185) (not b!2159198) (not b!2159184) (not b!2159193) (not b!2159200) (not mapNonEmpty!13943) (not b!2159191) (not b!2159189) (not b_next!64509) (not b_next!64511) (not b!2159195) (not start!209502) (not b!2159203) (not b!2159190))
(check-sat b_and!173423 b_and!173421 (not b_next!64511) (not b_next!64509))
(get-model)

(declare-fun d!646772 () Bool)

(declare-fun isBalanced!2513 (Conc!8089) Bool)

(assert (=> d!646772 (= (inv!33080 (totalInput!3411 thiss!29220)) (isBalanced!2513 (c!341794 (totalInput!3411 thiss!29220))))))

(declare-fun bs!445992 () Bool)

(assert (= bs!445992 d!646772))

(declare-fun m!2599049 () Bool)

(assert (=> bs!445992 m!2599049))

(assert (=> b!2159200 d!646772))

(declare-fun d!646774 () Bool)

(declare-fun lt!802472 () Int)

(declare-fun size!19541 (List!25070) Int)

(declare-fun list!9575 (BalanceConc!15940) List!25070)

(assert (=> d!646774 (= lt!802472 (size!19541 (list!9575 (totalInput!3411 thiss!29220))))))

(declare-fun size!19542 (Conc!8089) Int)

(assert (=> d!646774 (= lt!802472 (size!19542 (c!341794 (totalInput!3411 thiss!29220))))))

(assert (=> d!646774 (= (size!19540 (totalInput!3411 thiss!29220)) lt!802472)))

(declare-fun bs!445993 () Bool)

(assert (= bs!445993 d!646774))

(declare-fun m!2599051 () Bool)

(assert (=> bs!445993 m!2599051))

(assert (=> bs!445993 m!2599051))

(declare-fun m!2599053 () Bool)

(assert (=> bs!445993 m!2599053))

(declare-fun m!2599055 () Bool)

(assert (=> bs!445993 m!2599055))

(assert (=> b!2159191 d!646774))

(declare-fun bs!445994 () Bool)

(declare-fun b!2159211 () Bool)

(assert (= bs!445994 (and b!2159211 b!2159190)))

(declare-fun lambda!81554 () Int)

(assert (=> bs!445994 (= (= (totalInput!3411 thiss!29220) localTotalInput!17) (= lambda!81554 lambda!81551))))

(assert (=> b!2159211 true))

(declare-fun d!646776 () Bool)

(declare-fun res!930431 () Bool)

(declare-fun e!1381467 () Bool)

(assert (=> d!646776 (=> (not res!930431) (not e!1381467))))

(assert (=> d!646776 (= res!930431 (valid!2279 (cache!3249 thiss!29220)))))

(assert (=> d!646776 (= (validCacheMapFurthestNullable!191 (cache!3249 thiss!29220) (totalInput!3411 thiss!29220)) e!1381467)))

(declare-fun b!2159210 () Bool)

(declare-fun res!930432 () Bool)

(assert (=> b!2159210 (=> (not res!930432) (not e!1381467))))

(declare-fun invariantList!337 (List!25072) Bool)

(assert (=> b!2159210 (= res!930432 (invariantList!337 (toList!1136 (map!5039 (cache!3249 thiss!29220)))))))

(assert (=> b!2159211 (= e!1381467 (forall!5144 (toList!1136 (map!5039 (cache!3249 thiss!29220))) lambda!81554))))

(assert (= (and d!646776 res!930431) b!2159210))

(assert (= (and b!2159210 res!930432) b!2159211))

(assert (=> d!646776 m!2599043))

(assert (=> b!2159210 m!2599023))

(declare-fun m!2599058 () Bool)

(assert (=> b!2159210 m!2599058))

(assert (=> b!2159211 m!2599023))

(declare-fun m!2599060 () Bool)

(assert (=> b!2159211 m!2599060))

(assert (=> b!2159193 d!646776))

(declare-fun b!2159222 () Bool)

(declare-fun e!1381476 () Int)

(assert (=> b!2159222 (= e!1381476 lastNullablePos!109)))

(declare-fun b!2159224 () Bool)

(declare-fun e!1381475 () Int)

(assert (=> b!2159224 (= e!1381475 lastNullablePos!109)))

(declare-fun b!2159225 () Bool)

(declare-fun lt!802478 () (InoxSet Context!3046))

(assert (=> b!2159225 (= e!1381475 (furthestNullablePosition!151 lt!802478 (+ from!970 1) (totalInput!3411 thiss!29220) lt!802469 e!1381476))))

(declare-fun derivationStepZipper!115 ((InoxSet Context!3046) C!12052) (InoxSet Context!3046))

(declare-fun apply!6050 (BalanceConc!15940 Int) C!12052)

(assert (=> b!2159225 (= lt!802478 (derivationStepZipper!115 z!540 (apply!6050 (totalInput!3411 thiss!29220) from!970)))))

(declare-fun c!341800 () Bool)

(assert (=> b!2159225 (= c!341800 (nullableZipper!242 lt!802478))))

(declare-fun b!2159226 () Bool)

(declare-fun e!1381474 () Bool)

(declare-fun lostCauseZipper!148 ((InoxSet Context!3046)) Bool)

(assert (=> b!2159226 (= e!1381474 (lostCauseZipper!148 z!540))))

(declare-fun d!646778 () Bool)

(declare-fun lt!802477 () Int)

(assert (=> d!646778 (and (>= lt!802477 (- 1)) (< lt!802477 lt!802469) (>= lt!802477 lastNullablePos!109) (or (= lt!802477 lastNullablePos!109) (>= lt!802477 from!970)))))

(assert (=> d!646778 (= lt!802477 e!1381475)))

(declare-fun c!341801 () Bool)

(assert (=> d!646778 (= c!341801 e!1381474)))

(declare-fun res!930435 () Bool)

(assert (=> d!646778 (=> res!930435 e!1381474)))

(assert (=> d!646778 (= res!930435 (= from!970 lt!802469))))

(assert (=> d!646778 (and (>= from!970 0) (<= from!970 lt!802469))))

(assert (=> d!646778 (= (furthestNullablePosition!151 z!540 from!970 (totalInput!3411 thiss!29220) lt!802469 lastNullablePos!109) lt!802477)))

(declare-fun b!2159223 () Bool)

(assert (=> b!2159223 (= e!1381476 from!970)))

(assert (= (and d!646778 (not res!930435)) b!2159226))

(assert (= (and d!646778 c!341801) b!2159224))

(assert (= (and d!646778 (not c!341801)) b!2159225))

(assert (= (and b!2159225 c!341800) b!2159223))

(assert (= (and b!2159225 (not c!341800)) b!2159222))

(declare-fun m!2599062 () Bool)

(assert (=> b!2159225 m!2599062))

(declare-fun m!2599064 () Bool)

(assert (=> b!2159225 m!2599064))

(assert (=> b!2159225 m!2599064))

(declare-fun m!2599066 () Bool)

(assert (=> b!2159225 m!2599066))

(declare-fun m!2599068 () Bool)

(assert (=> b!2159225 m!2599068))

(declare-fun m!2599070 () Bool)

(assert (=> b!2159226 m!2599070))

(assert (=> b!2159189 d!646778))

(declare-fun d!646780 () Bool)

(declare-fun res!930440 () Bool)

(declare-fun e!1381481 () Bool)

(assert (=> d!646780 (=> res!930440 e!1381481)))

(assert (=> d!646780 (= res!930440 ((_ is Nil!24988) (toList!1136 (map!5039 (cache!3249 thiss!29220)))))))

(assert (=> d!646780 (= (forall!5144 (toList!1136 (map!5039 (cache!3249 thiss!29220))) lambda!81551) e!1381481)))

(declare-fun b!2159231 () Bool)

(declare-fun e!1381482 () Bool)

(assert (=> b!2159231 (= e!1381481 e!1381482)))

(declare-fun res!930441 () Bool)

(assert (=> b!2159231 (=> (not res!930441) (not e!1381482))))

(declare-fun dynLambda!11424 (Int tuple2!24688) Bool)

(assert (=> b!2159231 (= res!930441 (dynLambda!11424 lambda!81551 (h!30389 (toList!1136 (map!5039 (cache!3249 thiss!29220))))))))

(declare-fun b!2159232 () Bool)

(assert (=> b!2159232 (= e!1381482 (forall!5144 (t!197620 (toList!1136 (map!5039 (cache!3249 thiss!29220)))) lambda!81551))))

(assert (= (and d!646780 (not res!930440)) b!2159231))

(assert (= (and b!2159231 res!930441) b!2159232))

(declare-fun b_lambda!71037 () Bool)

(assert (=> (not b_lambda!71037) (not b!2159231)))

(declare-fun m!2599072 () Bool)

(assert (=> b!2159231 m!2599072))

(declare-fun m!2599074 () Bool)

(assert (=> b!2159232 m!2599074))

(assert (=> b!2159190 d!646780))

(declare-fun d!646782 () Bool)

(declare-fun lt!802481 () ListMap!735)

(assert (=> d!646782 (invariantList!337 (toList!1136 lt!802481))))

(declare-datatypes ((tuple2!24690 0))(
  ( (tuple2!24691 (_1!14711 (_ BitVec 64)) (_2!14711 List!25072)) )
))
(declare-datatypes ((List!25073 0))(
  ( (Nil!24989) (Cons!24989 (h!30390 tuple2!24690) (t!197621 List!25073)) )
))
(declare-fun extractMap!87 (List!25073) ListMap!735)

(declare-datatypes ((ListLongMap!275 0))(
  ( (ListLongMap!276 (toList!1137 List!25073)) )
))
(declare-fun map!5040 (MutLongMap!2954) ListLongMap!275)

(assert (=> d!646782 (= lt!802481 (extractMap!87 (toList!1137 (map!5040 (v!29378 (underlying!6104 (cache!3249 thiss!29220)))))))))

(assert (=> d!646782 (valid!2279 (cache!3249 thiss!29220))))

(assert (=> d!646782 (= (map!5039 (cache!3249 thiss!29220)) lt!802481)))

(declare-fun bs!445995 () Bool)

(assert (= bs!445995 d!646782))

(declare-fun m!2599076 () Bool)

(assert (=> bs!445995 m!2599076))

(declare-fun m!2599078 () Bool)

(assert (=> bs!445995 m!2599078))

(declare-fun m!2599080 () Bool)

(assert (=> bs!445995 m!2599080))

(assert (=> bs!445995 m!2599043))

(assert (=> b!2159190 d!646782))

(declare-fun d!646784 () Bool)

(assert (=> d!646784 (= (inv!33080 localTotalInput!17) (isBalanced!2513 (c!341794 localTotalInput!17)))))

(declare-fun bs!445996 () Bool)

(assert (= bs!445996 d!646784))

(declare-fun m!2599082 () Bool)

(assert (=> bs!445996 m!2599082))

(assert (=> start!209502 d!646784))

(declare-fun d!646786 () Bool)

(declare-fun res!930444 () Bool)

(declare-fun e!1381485 () Bool)

(assert (=> d!646786 (=> (not res!930444) (not e!1381485))))

(assert (=> d!646786 (= res!930444 ((_ is HashMap!2868) (cache!3249 thiss!29220)))))

(assert (=> d!646786 (= (inv!33081 thiss!29220) e!1381485)))

(declare-fun b!2159235 () Bool)

(assert (=> b!2159235 (= e!1381485 (validCacheMapFurthestNullable!191 (cache!3249 thiss!29220) (totalInput!3411 thiss!29220)))))

(assert (= (and d!646786 res!930444) b!2159235))

(assert (=> b!2159235 m!2599027))

(assert (=> start!209502 d!646786))

(declare-fun d!646788 () Bool)

(declare-fun lambda!81557 () Int)

(declare-fun exists!745 ((InoxSet Context!3046) Int) Bool)

(assert (=> d!646788 (= (nullableZipper!242 z!540) (exists!745 z!540 lambda!81557))))

(declare-fun bs!445997 () Bool)

(assert (= bs!445997 d!646788))

(declare-fun m!2599084 () Bool)

(assert (=> bs!445997 m!2599084))

(assert (=> b!2159187 d!646788))

(declare-fun d!646790 () Bool)

(declare-fun lambda!81560 () Int)

(declare-fun forall!5145 (List!25071 Int) Bool)

(assert (=> d!646790 (= (inv!33083 setElem!17932) (forall!5145 (exprs!2023 setElem!17932) lambda!81560))))

(declare-fun bs!445998 () Bool)

(assert (= bs!445998 d!646790))

(declare-fun m!2599086 () Bool)

(assert (=> bs!445998 m!2599086))

(assert (=> setNonEmpty!17932 d!646790))

(declare-fun d!646792 () Bool)

(declare-fun c!341806 () Bool)

(assert (=> d!646792 (= c!341806 ((_ is Node!8089) (c!341794 localTotalInput!17)))))

(declare-fun e!1381490 () Bool)

(assert (=> d!646792 (= (inv!33082 (c!341794 localTotalInput!17)) e!1381490)))

(declare-fun b!2159242 () Bool)

(declare-fun inv!33084 (Conc!8089) Bool)

(assert (=> b!2159242 (= e!1381490 (inv!33084 (c!341794 localTotalInput!17)))))

(declare-fun b!2159243 () Bool)

(declare-fun e!1381491 () Bool)

(assert (=> b!2159243 (= e!1381490 e!1381491)))

(declare-fun res!930447 () Bool)

(assert (=> b!2159243 (= res!930447 (not ((_ is Leaf!11833) (c!341794 localTotalInput!17))))))

(assert (=> b!2159243 (=> res!930447 e!1381491)))

(declare-fun b!2159244 () Bool)

(declare-fun inv!33085 (Conc!8089) Bool)

(assert (=> b!2159244 (= e!1381491 (inv!33085 (c!341794 localTotalInput!17)))))

(assert (= (and d!646792 c!341806) b!2159242))

(assert (= (and d!646792 (not c!341806)) b!2159243))

(assert (= (and b!2159243 (not res!930447)) b!2159244))

(declare-fun m!2599088 () Bool)

(assert (=> b!2159242 m!2599088))

(declare-fun m!2599090 () Bool)

(assert (=> b!2159244 m!2599090))

(assert (=> b!2159184 d!646792))

(declare-fun d!646794 () Bool)

(assert (=> d!646794 (= (array_inv!3232 (_keys!3251 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) (bvsge (size!19538 (_keys!3251 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2159202 d!646794))

(declare-fun d!646796 () Bool)

(assert (=> d!646796 (= (array_inv!3233 (_values!3234 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) (bvsge (size!19539 (_values!3234 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))) #b00000000000000000000000000000000))))

(assert (=> b!2159202 d!646796))

(declare-fun d!646798 () Bool)

(declare-fun c!341807 () Bool)

(assert (=> d!646798 (= c!341807 ((_ is Node!8089) (c!341794 (totalInput!3411 thiss!29220))))))

(declare-fun e!1381492 () Bool)

(assert (=> d!646798 (= (inv!33082 (c!341794 (totalInput!3411 thiss!29220))) e!1381492)))

(declare-fun b!2159245 () Bool)

(assert (=> b!2159245 (= e!1381492 (inv!33084 (c!341794 (totalInput!3411 thiss!29220))))))

(declare-fun b!2159246 () Bool)

(declare-fun e!1381493 () Bool)

(assert (=> b!2159246 (= e!1381492 e!1381493)))

(declare-fun res!930448 () Bool)

(assert (=> b!2159246 (= res!930448 (not ((_ is Leaf!11833) (c!341794 (totalInput!3411 thiss!29220)))))))

(assert (=> b!2159246 (=> res!930448 e!1381493)))

(declare-fun b!2159247 () Bool)

(assert (=> b!2159247 (= e!1381493 (inv!33085 (c!341794 (totalInput!3411 thiss!29220))))))

(assert (= (and d!646798 c!341807) b!2159245))

(assert (= (and d!646798 (not c!341807)) b!2159246))

(assert (= (and b!2159246 (not res!930448)) b!2159247))

(declare-fun m!2599092 () Bool)

(assert (=> b!2159245 m!2599092))

(declare-fun m!2599094 () Bool)

(assert (=> b!2159247 m!2599094))

(assert (=> b!2159203 d!646798))

(declare-fun d!646800 () Bool)

(declare-fun res!930453 () Bool)

(declare-fun e!1381496 () Bool)

(assert (=> d!646800 (=> (not res!930453) (not e!1381496))))

(declare-fun valid!2280 (MutLongMap!2954) Bool)

(assert (=> d!646800 (= res!930453 (valid!2280 (v!29378 (underlying!6104 (cache!3249 thiss!29220)))))))

(assert (=> d!646800 (= (valid!2279 (cache!3249 thiss!29220)) e!1381496)))

(declare-fun b!2159252 () Bool)

(declare-fun res!930454 () Bool)

(assert (=> b!2159252 (=> (not res!930454) (not e!1381496))))

(declare-fun lambda!81563 () Int)

(declare-fun forall!5146 (List!25073 Int) Bool)

(assert (=> b!2159252 (= res!930454 (forall!5146 (toList!1137 (map!5040 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))) lambda!81563))))

(declare-fun b!2159253 () Bool)

(declare-fun allKeysSameHashInMap!92 (ListLongMap!275 Hashable!2868) Bool)

(assert (=> b!2159253 (= e!1381496 (allKeysSameHashInMap!92 (map!5040 (v!29378 (underlying!6104 (cache!3249 thiss!29220)))) (hashF!4791 (cache!3249 thiss!29220))))))

(assert (= (and d!646800 res!930453) b!2159252))

(assert (= (and b!2159252 res!930454) b!2159253))

(declare-fun m!2599096 () Bool)

(assert (=> d!646800 m!2599096))

(assert (=> b!2159252 m!2599078))

(declare-fun m!2599098 () Bool)

(assert (=> b!2159252 m!2599098))

(assert (=> b!2159253 m!2599078))

(assert (=> b!2159253 m!2599078))

(declare-fun m!2599100 () Bool)

(assert (=> b!2159253 m!2599100))

(assert (=> b!2159195 d!646800))

(declare-fun b!2159264 () Bool)

(declare-fun e!1381501 () Bool)

(assert (=> b!2159264 (= e!1381501 (= (_3!2365 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) (- (_2!14709 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) 1)))))

(declare-fun b!2159265 () Bool)

(declare-fun res!930467 () Bool)

(declare-fun e!1381502 () Bool)

(assert (=> b!2159265 (=> (not res!930467) (not e!1381502))))

(assert (=> b!2159265 (= res!930467 (<= (_2!14709 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) (size!19540 localTotalInput!17)))))

(declare-fun d!646802 () Bool)

(declare-fun res!930468 () Bool)

(assert (=> d!646802 (=> (not res!930468) (not e!1381502))))

(assert (=> d!646802 (= res!930468 (>= (_2!14709 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) 0))))

(assert (=> d!646802 (= (validCacheMapFurthestNullableBody!36 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508) localTotalInput!17) e!1381502)))

(declare-fun b!2159266 () Bool)

(declare-fun res!930465 () Bool)

(assert (=> b!2159266 (=> (not res!930465) (not e!1381502))))

(assert (=> b!2159266 (= res!930465 e!1381501)))

(declare-fun res!930469 () Bool)

(assert (=> b!2159266 (=> res!930469 e!1381501)))

(assert (=> b!2159266 (= res!930469 (not (nullableZipper!242 (_1!14709 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))))))))

(declare-fun b!2159267 () Bool)

(declare-fun res!930466 () Bool)

(assert (=> b!2159267 (=> (not res!930466) (not e!1381502))))

(assert (=> b!2159267 (= res!930466 (and (>= (_3!2365 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) (- 1)) (< (_3!2365 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) (_2!14709 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))))))))

(declare-fun b!2159268 () Bool)

(assert (=> b!2159268 (= e!1381502 (= (_2!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508)) (furthestNullablePosition!151 (_1!14709 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) (_2!14709 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))) localTotalInput!17 (size!19540 localTotalInput!17) (_3!2365 (_1!14710 (tuple2!24689 (tuple3!3791 z!540 from!970 lastNullablePos!109) res!14508))))))))

(assert (= (and d!646802 res!930468) b!2159265))

(assert (= (and b!2159265 res!930467) b!2159267))

(assert (= (and b!2159267 res!930466) b!2159266))

(assert (= (and b!2159266 (not res!930469)) b!2159264))

(assert (= (and b!2159266 res!930465) b!2159268))

(declare-fun m!2599102 () Bool)

(assert (=> b!2159265 m!2599102))

(declare-fun m!2599104 () Bool)

(assert (=> b!2159266 m!2599104))

(assert (=> b!2159268 m!2599102))

(assert (=> b!2159268 m!2599102))

(declare-fun m!2599106 () Bool)

(assert (=> b!2159268 m!2599106))

(assert (=> b!2159185 d!646802))

(declare-fun b!2159273 () Bool)

(declare-fun e!1381505 () Bool)

(declare-fun tp!673177 () Bool)

(declare-fun tp!673178 () Bool)

(assert (=> b!2159273 (= e!1381505 (and tp!673177 tp!673178))))

(assert (=> b!2159192 (= tp!673168 e!1381505)))

(assert (= (and b!2159192 ((_ is Cons!24987) (exprs!2023 setElem!17932))) b!2159273))

(declare-fun condSetEmpty!17935 () Bool)

(assert (=> setNonEmpty!17932 (= condSetEmpty!17935 (= setRest!17932 ((as const (Array Context!3046 Bool)) false)))))

(declare-fun setRes!17935 () Bool)

(assert (=> setNonEmpty!17932 (= tp!673167 setRes!17935)))

(declare-fun setIsEmpty!17935 () Bool)

(assert (=> setIsEmpty!17935 setRes!17935))

(declare-fun setNonEmpty!17935 () Bool)

(declare-fun setElem!17935 () Context!3046)

(declare-fun e!1381508 () Bool)

(declare-fun tp!673184 () Bool)

(assert (=> setNonEmpty!17935 (= setRes!17935 (and tp!673184 (inv!33083 setElem!17935) e!1381508))))

(declare-fun setRest!17935 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17935 (= setRest!17932 ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17935 true) setRest!17935))))

(declare-fun b!2159278 () Bool)

(declare-fun tp!673183 () Bool)

(assert (=> b!2159278 (= e!1381508 tp!673183)))

(assert (= (and setNonEmpty!17932 condSetEmpty!17935) setIsEmpty!17935))

(assert (= (and setNonEmpty!17932 (not condSetEmpty!17935)) setNonEmpty!17935))

(assert (= setNonEmpty!17935 b!2159278))

(declare-fun m!2599108 () Bool)

(assert (=> setNonEmpty!17935 m!2599108))

(declare-fun e!1381513 () Bool)

(assert (=> b!2159198 (= tp!673171 e!1381513)))

(declare-fun b!2159285 () Bool)

(declare-fun setRes!17938 () Bool)

(declare-fun tp!673192 () Bool)

(assert (=> b!2159285 (= e!1381513 (and setRes!17938 tp!673192))))

(declare-fun condSetEmpty!17938 () Bool)

(assert (=> b!2159285 (= condSetEmpty!17938 (= (_1!14709 (_1!14710 (h!30389 mapDefault!13943))) ((as const (Array Context!3046 Bool)) false)))))

(declare-fun setIsEmpty!17938 () Bool)

(assert (=> setIsEmpty!17938 setRes!17938))

(declare-fun setNonEmpty!17938 () Bool)

(declare-fun tp!673191 () Bool)

(declare-fun e!1381514 () Bool)

(declare-fun setElem!17938 () Context!3046)

(assert (=> setNonEmpty!17938 (= setRes!17938 (and tp!673191 (inv!33083 setElem!17938) e!1381514))))

(declare-fun setRest!17938 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17938 (= (_1!14709 (_1!14710 (h!30389 mapDefault!13943))) ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17938 true) setRest!17938))))

(declare-fun b!2159286 () Bool)

(declare-fun tp!673193 () Bool)

(assert (=> b!2159286 (= e!1381514 tp!673193)))

(assert (= (and b!2159285 condSetEmpty!17938) setIsEmpty!17938))

(assert (= (and b!2159285 (not condSetEmpty!17938)) setNonEmpty!17938))

(assert (= setNonEmpty!17938 b!2159286))

(assert (= (and b!2159198 ((_ is Cons!24988) mapDefault!13943)) b!2159285))

(declare-fun m!2599110 () Bool)

(assert (=> setNonEmpty!17938 m!2599110))

(declare-fun e!1381520 () Bool)

(declare-fun b!2159295 () Bool)

(declare-fun tp!673201 () Bool)

(declare-fun tp!673202 () Bool)

(assert (=> b!2159295 (= e!1381520 (and (inv!33082 (left!19240 (c!341794 localTotalInput!17))) tp!673202 (inv!33082 (right!19570 (c!341794 localTotalInput!17))) tp!673201))))

(declare-fun b!2159297 () Bool)

(declare-fun e!1381519 () Bool)

(declare-fun tp!673200 () Bool)

(assert (=> b!2159297 (= e!1381519 tp!673200)))

(declare-fun b!2159296 () Bool)

(declare-fun inv!33086 (IArray!16183) Bool)

(assert (=> b!2159296 (= e!1381520 (and (inv!33086 (xs!11031 (c!341794 localTotalInput!17))) e!1381519))))

(assert (=> b!2159184 (= tp!673165 (and (inv!33082 (c!341794 localTotalInput!17)) e!1381520))))

(assert (= (and b!2159184 ((_ is Node!8089) (c!341794 localTotalInput!17))) b!2159295))

(assert (= b!2159296 b!2159297))

(assert (= (and b!2159184 ((_ is Leaf!11833) (c!341794 localTotalInput!17))) b!2159296))

(declare-fun m!2599112 () Bool)

(assert (=> b!2159295 m!2599112))

(declare-fun m!2599114 () Bool)

(assert (=> b!2159295 m!2599114))

(declare-fun m!2599116 () Bool)

(assert (=> b!2159296 m!2599116))

(assert (=> b!2159184 m!2599021))

(declare-fun e!1381521 () Bool)

(assert (=> b!2159202 (= tp!673169 e!1381521)))

(declare-fun b!2159298 () Bool)

(declare-fun setRes!17939 () Bool)

(declare-fun tp!673204 () Bool)

(assert (=> b!2159298 (= e!1381521 (and setRes!17939 tp!673204))))

(declare-fun condSetEmpty!17939 () Bool)

(assert (=> b!2159298 (= condSetEmpty!17939 (= (_1!14709 (_1!14710 (h!30389 (zeroValue!3212 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))))) ((as const (Array Context!3046 Bool)) false)))))

(declare-fun setIsEmpty!17939 () Bool)

(assert (=> setIsEmpty!17939 setRes!17939))

(declare-fun setNonEmpty!17939 () Bool)

(declare-fun e!1381522 () Bool)

(declare-fun setElem!17939 () Context!3046)

(declare-fun tp!673203 () Bool)

(assert (=> setNonEmpty!17939 (= setRes!17939 (and tp!673203 (inv!33083 setElem!17939) e!1381522))))

(declare-fun setRest!17939 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17939 (= (_1!14709 (_1!14710 (h!30389 (zeroValue!3212 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17939 true) setRest!17939))))

(declare-fun b!2159299 () Bool)

(declare-fun tp!673205 () Bool)

(assert (=> b!2159299 (= e!1381522 tp!673205)))

(assert (= (and b!2159298 condSetEmpty!17939) setIsEmpty!17939))

(assert (= (and b!2159298 (not condSetEmpty!17939)) setNonEmpty!17939))

(assert (= setNonEmpty!17939 b!2159299))

(assert (= (and b!2159202 ((_ is Cons!24988) (zeroValue!3212 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220)))))))) b!2159298))

(declare-fun m!2599118 () Bool)

(assert (=> setNonEmpty!17939 m!2599118))

(declare-fun e!1381523 () Bool)

(assert (=> b!2159202 (= tp!673163 e!1381523)))

(declare-fun b!2159300 () Bool)

(declare-fun setRes!17940 () Bool)

(declare-fun tp!673207 () Bool)

(assert (=> b!2159300 (= e!1381523 (and setRes!17940 tp!673207))))

(declare-fun condSetEmpty!17940 () Bool)

(assert (=> b!2159300 (= condSetEmpty!17940 (= (_1!14709 (_1!14710 (h!30389 (minValue!3212 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))))) ((as const (Array Context!3046 Bool)) false)))))

(declare-fun setIsEmpty!17940 () Bool)

(assert (=> setIsEmpty!17940 setRes!17940))

(declare-fun setElem!17940 () Context!3046)

(declare-fun setNonEmpty!17940 () Bool)

(declare-fun tp!673206 () Bool)

(declare-fun e!1381524 () Bool)

(assert (=> setNonEmpty!17940 (= setRes!17940 (and tp!673206 (inv!33083 setElem!17940) e!1381524))))

(declare-fun setRest!17940 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17940 (= (_1!14709 (_1!14710 (h!30389 (minValue!3212 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220))))))))) ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17940 true) setRest!17940))))

(declare-fun b!2159301 () Bool)

(declare-fun tp!673208 () Bool)

(assert (=> b!2159301 (= e!1381524 tp!673208)))

(assert (= (and b!2159300 condSetEmpty!17940) setIsEmpty!17940))

(assert (= (and b!2159300 (not condSetEmpty!17940)) setNonEmpty!17940))

(assert (= setNonEmpty!17940 b!2159301))

(assert (= (and b!2159202 ((_ is Cons!24988) (minValue!3212 (v!29377 (underlying!6103 (v!29378 (underlying!6104 (cache!3249 thiss!29220)))))))) b!2159300))

(declare-fun m!2599120 () Bool)

(assert (=> setNonEmpty!17940 m!2599120))

(declare-fun b!2159302 () Bool)

(declare-fun e!1381526 () Bool)

(declare-fun tp!673211 () Bool)

(declare-fun tp!673210 () Bool)

(assert (=> b!2159302 (= e!1381526 (and (inv!33082 (left!19240 (c!341794 (totalInput!3411 thiss!29220)))) tp!673211 (inv!33082 (right!19570 (c!341794 (totalInput!3411 thiss!29220)))) tp!673210))))

(declare-fun b!2159304 () Bool)

(declare-fun e!1381525 () Bool)

(declare-fun tp!673209 () Bool)

(assert (=> b!2159304 (= e!1381525 tp!673209)))

(declare-fun b!2159303 () Bool)

(assert (=> b!2159303 (= e!1381526 (and (inv!33086 (xs!11031 (c!341794 (totalInput!3411 thiss!29220)))) e!1381525))))

(assert (=> b!2159203 (= tp!673166 (and (inv!33082 (c!341794 (totalInput!3411 thiss!29220))) e!1381526))))

(assert (= (and b!2159203 ((_ is Node!8089) (c!341794 (totalInput!3411 thiss!29220)))) b!2159302))

(assert (= b!2159303 b!2159304))

(assert (= (and b!2159203 ((_ is Leaf!11833) (c!341794 (totalInput!3411 thiss!29220)))) b!2159303))

(declare-fun m!2599122 () Bool)

(assert (=> b!2159302 m!2599122))

(declare-fun m!2599124 () Bool)

(assert (=> b!2159302 m!2599124))

(declare-fun m!2599126 () Bool)

(assert (=> b!2159303 m!2599126))

(assert (=> b!2159203 m!2599041))

(declare-fun b!2159315 () Bool)

(declare-fun e!1381536 () Bool)

(declare-fun tp!673232 () Bool)

(assert (=> b!2159315 (= e!1381536 tp!673232)))

(declare-fun setIsEmpty!17945 () Bool)

(declare-fun setRes!17945 () Bool)

(assert (=> setIsEmpty!17945 setRes!17945))

(declare-fun mapIsEmpty!13946 () Bool)

(declare-fun mapRes!13946 () Bool)

(assert (=> mapIsEmpty!13946 mapRes!13946))

(declare-fun setIsEmpty!17946 () Bool)

(declare-fun setRes!17946 () Bool)

(assert (=> setIsEmpty!17946 setRes!17946))

(declare-fun setElem!17945 () Context!3046)

(declare-fun setNonEmpty!17945 () Bool)

(declare-fun tp!673229 () Bool)

(assert (=> setNonEmpty!17945 (= setRes!17946 (and tp!673229 (inv!33083 setElem!17945) e!1381536))))

(declare-fun mapValue!13946 () List!25072)

(declare-fun setRest!17945 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17945 (= (_1!14709 (_1!14710 (h!30389 mapValue!13946))) ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17945 true) setRest!17945))))

(declare-fun mapNonEmpty!13946 () Bool)

(declare-fun tp!673226 () Bool)

(declare-fun e!1381537 () Bool)

(assert (=> mapNonEmpty!13946 (= mapRes!13946 (and tp!673226 e!1381537))))

(declare-fun mapKey!13946 () (_ BitVec 32))

(declare-fun mapRest!13946 () (Array (_ BitVec 32) List!25072))

(assert (=> mapNonEmpty!13946 (= mapRest!13943 (store mapRest!13946 mapKey!13946 mapValue!13946))))

(declare-fun condMapEmpty!13946 () Bool)

(declare-fun mapDefault!13946 () List!25072)

(assert (=> mapNonEmpty!13943 (= condMapEmpty!13946 (= mapRest!13943 ((as const (Array (_ BitVec 32) List!25072)) mapDefault!13946)))))

(declare-fun e!1381538 () Bool)

(assert (=> mapNonEmpty!13943 (= tp!673170 (and e!1381538 mapRes!13946))))

(declare-fun b!2159316 () Bool)

(declare-fun tp!673227 () Bool)

(assert (=> b!2159316 (= e!1381537 (and setRes!17946 tp!673227))))

(declare-fun condSetEmpty!17946 () Bool)

(assert (=> b!2159316 (= condSetEmpty!17946 (= (_1!14709 (_1!14710 (h!30389 mapValue!13946))) ((as const (Array Context!3046 Bool)) false)))))

(declare-fun setNonEmpty!17946 () Bool)

(declare-fun setElem!17946 () Context!3046)

(declare-fun tp!673230 () Bool)

(declare-fun e!1381535 () Bool)

(assert (=> setNonEmpty!17946 (= setRes!17945 (and tp!673230 (inv!33083 setElem!17946) e!1381535))))

(declare-fun setRest!17946 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17946 (= (_1!14709 (_1!14710 (h!30389 mapDefault!13946))) ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17946 true) setRest!17946))))

(declare-fun b!2159317 () Bool)

(declare-fun tp!673231 () Bool)

(assert (=> b!2159317 (= e!1381535 tp!673231)))

(declare-fun b!2159318 () Bool)

(declare-fun tp!673228 () Bool)

(assert (=> b!2159318 (= e!1381538 (and setRes!17945 tp!673228))))

(declare-fun condSetEmpty!17945 () Bool)

(assert (=> b!2159318 (= condSetEmpty!17945 (= (_1!14709 (_1!14710 (h!30389 mapDefault!13946))) ((as const (Array Context!3046 Bool)) false)))))

(assert (= (and mapNonEmpty!13943 condMapEmpty!13946) mapIsEmpty!13946))

(assert (= (and mapNonEmpty!13943 (not condMapEmpty!13946)) mapNonEmpty!13946))

(assert (= (and b!2159316 condSetEmpty!17946) setIsEmpty!17946))

(assert (= (and b!2159316 (not condSetEmpty!17946)) setNonEmpty!17945))

(assert (= setNonEmpty!17945 b!2159315))

(assert (= (and mapNonEmpty!13946 ((_ is Cons!24988) mapValue!13946)) b!2159316))

(assert (= (and b!2159318 condSetEmpty!17945) setIsEmpty!17945))

(assert (= (and b!2159318 (not condSetEmpty!17945)) setNonEmpty!17946))

(assert (= setNonEmpty!17946 b!2159317))

(assert (= (and mapNonEmpty!13943 ((_ is Cons!24988) mapDefault!13946)) b!2159318))

(declare-fun m!2599128 () Bool)

(assert (=> setNonEmpty!17945 m!2599128))

(declare-fun m!2599130 () Bool)

(assert (=> mapNonEmpty!13946 m!2599130))

(declare-fun m!2599132 () Bool)

(assert (=> setNonEmpty!17946 m!2599132))

(declare-fun e!1381539 () Bool)

(assert (=> mapNonEmpty!13943 (= tp!673162 e!1381539)))

(declare-fun b!2159319 () Bool)

(declare-fun setRes!17947 () Bool)

(declare-fun tp!673234 () Bool)

(assert (=> b!2159319 (= e!1381539 (and setRes!17947 tp!673234))))

(declare-fun condSetEmpty!17947 () Bool)

(assert (=> b!2159319 (= condSetEmpty!17947 (= (_1!14709 (_1!14710 (h!30389 mapValue!13943))) ((as const (Array Context!3046 Bool)) false)))))

(declare-fun setIsEmpty!17947 () Bool)

(assert (=> setIsEmpty!17947 setRes!17947))

(declare-fun setElem!17947 () Context!3046)

(declare-fun setNonEmpty!17947 () Bool)

(declare-fun e!1381540 () Bool)

(declare-fun tp!673233 () Bool)

(assert (=> setNonEmpty!17947 (= setRes!17947 (and tp!673233 (inv!33083 setElem!17947) e!1381540))))

(declare-fun setRest!17947 () (InoxSet Context!3046))

(assert (=> setNonEmpty!17947 (= (_1!14709 (_1!14710 (h!30389 mapValue!13943))) ((_ map or) (store ((as const (Array Context!3046 Bool)) false) setElem!17947 true) setRest!17947))))

(declare-fun b!2159320 () Bool)

(declare-fun tp!673235 () Bool)

(assert (=> b!2159320 (= e!1381540 tp!673235)))

(assert (= (and b!2159319 condSetEmpty!17947) setIsEmpty!17947))

(assert (= (and b!2159319 (not condSetEmpty!17947)) setNonEmpty!17947))

(assert (= setNonEmpty!17947 b!2159320))

(assert (= (and mapNonEmpty!13943 ((_ is Cons!24988) mapValue!13943)) b!2159319))

(declare-fun m!2599134 () Bool)

(assert (=> setNonEmpty!17947 m!2599134))

(declare-fun b_lambda!71039 () Bool)

(assert (= b_lambda!71037 (or b!2159190 b_lambda!71039)))

(declare-fun bs!445999 () Bool)

(declare-fun d!646804 () Bool)

(assert (= bs!445999 (and d!646804 b!2159190)))

(assert (=> bs!445999 (= (dynLambda!11424 lambda!81551 (h!30389 (toList!1136 (map!5039 (cache!3249 thiss!29220))))) (validCacheMapFurthestNullableBody!36 (h!30389 (toList!1136 (map!5039 (cache!3249 thiss!29220)))) localTotalInput!17))))

(declare-fun m!2599136 () Bool)

(assert (=> bs!445999 m!2599136))

(assert (=> b!2159231 d!646804))

(check-sat b_and!173423 b_and!173421 (not b_lambda!71039) (not b!2159242) (not b!2159298) (not b!2159225) (not b!2159318) (not b!2159210) (not b!2159184) (not d!646788) (not b!2159317) (not d!646800) (not b!2159232) (not b!2159286) (not bs!445999) (not b!2159300) (not setNonEmpty!17938) (not b!2159295) (not b!2159266) (not setNonEmpty!17939) (not b!2159297) (not b!2159320) (not mapNonEmpty!13946) (not b!2159299) (not b!2159245) (not b!2159235) (not setNonEmpty!17947) (not b!2159302) (not b!2159304) (not b!2159247) (not b!2159301) (not b!2159252) (not b!2159226) (not b!2159296) (not setNonEmpty!17945) (not b!2159211) (not d!646784) (not setNonEmpty!17946) (not d!646776) (not b!2159278) (not b!2159268) (not b!2159316) (not b!2159303) (not b_next!64509) (not b_next!64511) (not d!646772) (not d!646774) (not setNonEmpty!17940) (not b!2159315) (not d!646790) (not setNonEmpty!17935) (not b!2159253) (not b!2159319) (not d!646782) (not b!2159285) (not b!2159273) (not b!2159244) (not b!2159203) (not b!2159265))
(check-sat b_and!173423 b_and!173421 (not b_next!64511) (not b_next!64509))
