; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13462 () Bool)

(assert start!13462)

(declare-fun b!130270 () Bool)

(declare-fun e!75067 () Bool)

(declare-fun e!75061 () Bool)

(assert (=> b!130270 (= e!75067 (not e!75061))))

(declare-fun res!60194 () Bool)

(assert (=> b!130270 (=> res!60194 e!75061)))

(declare-fun lt!39283 () Bool)

(assert (=> b!130270 (= res!60194 lt!39283)))

(declare-fun e!75064 () Bool)

(assert (=> b!130270 e!75064))

(declare-fun res!60196 () Bool)

(assert (=> b!130270 (=> (not res!60196) (not e!75064))))

(assert (=> b!130270 (= res!60196 (not lt!39283))))

(declare-datatypes ((B!737 0))(
  ( (B!738 (val!854 Int)) )
))
(declare-datatypes ((List!2172 0))(
  ( (Nil!2166) (Cons!2166 (h!7563 B!737) (t!22758 List!2172)) )
))
(declare-fun lt!39286 () List!2172)

(declare-fun noDuplicate!62 (List!2172) Bool)

(assert (=> b!130270 (= lt!39283 (not (noDuplicate!62 lt!39286)))))

(declare-fun lt!39282 () List!2172)

(declare-fun newList!20 () List!2172)

(declare-fun concatWithoutDuplicates!24 (List!2172 List!2172) List!2172)

(assert (=> b!130270 (= lt!39286 (concatWithoutDuplicates!24 lt!39282 (t!22758 newList!20)))))

(assert (=> b!130270 (noDuplicate!62 lt!39282)))

(declare-datatypes ((Unit!1716 0))(
  ( (Unit!1717) )
))
(declare-fun lt!39285 () Unit!1716)

(declare-fun baseList!9 () List!2172)

(declare-fun lemmaAppendNewElementElementPreserves!10 (List!2172 B!737) Unit!1716)

(assert (=> b!130270 (= lt!39285 (lemmaAppendNewElementElementPreserves!10 baseList!9 (h!7563 newList!20)))))

(declare-fun isPrefix!165 (List!2172 List!2172) Bool)

(assert (=> b!130270 (isPrefix!165 baseList!9 lt!39282)))

(declare-fun lt!39280 () List!2172)

(declare-fun ++!446 (List!2172 List!2172) List!2172)

(assert (=> b!130270 (= lt!39282 (++!446 baseList!9 lt!39280))))

(declare-fun lt!39284 () Unit!1716)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!92 (List!2172 List!2172) Unit!1716)

(assert (=> b!130270 (= lt!39284 (lemmaConcatTwoListThenFirstIsPrefix!92 baseList!9 lt!39280))))

(assert (=> b!130270 (= lt!39280 (Cons!2166 (h!7563 newList!20) Nil!2166))))

(declare-fun b!130271 () Bool)

(declare-fun e!75062 () Bool)

(assert (=> b!130271 (= e!75062 (isPrefix!165 lt!39282 lt!39286))))

(declare-fun b!130272 () Bool)

(declare-fun e!75063 () Bool)

(declare-fun tp_is_empty!1381 () Bool)

(declare-fun tp!70287 () Bool)

(assert (=> b!130272 (= e!75063 (and tp_is_empty!1381 tp!70287))))

(declare-fun b!130273 () Bool)

(assert (=> b!130273 (= e!75064 e!75062)))

(declare-fun res!60195 () Bool)

(assert (=> b!130273 (=> (not res!60195) (not e!75062))))

(declare-fun lt!39281 () List!2172)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!281 (List!2172) (InoxSet B!737))

(assert (=> b!130273 (= res!60195 (= (content!281 lt!39281) (content!281 lt!39286)))))

(assert (=> b!130273 (= lt!39281 (++!446 lt!39282 (t!22758 newList!20)))))

(declare-fun res!60198 () Bool)

(assert (=> start!13462 (=> (not res!60198) (not e!75067))))

(assert (=> start!13462 (= res!60198 (noDuplicate!62 baseList!9))))

(assert (=> start!13462 e!75067))

(assert (=> start!13462 e!75063))

(declare-fun e!75065 () Bool)

(assert (=> start!13462 e!75065))

(declare-fun b!130274 () Bool)

(declare-fun res!60200 () Bool)

(assert (=> b!130274 (=> (not res!60200) (not e!75067))))

(get-info :version)

(assert (=> b!130274 (= res!60200 ((_ is Cons!2166) newList!20))))

(declare-fun b!130275 () Bool)

(assert (=> b!130275 (= e!75061 (= (content!281 (++!446 lt!39282 newList!20)) (content!281 lt!39286)))))

(declare-fun b!130276 () Bool)

(declare-fun res!60193 () Bool)

(assert (=> b!130276 (=> (not res!60193) (not e!75062))))

(declare-fun subseq!37 (List!2172 List!2172) Bool)

(assert (=> b!130276 (= res!60193 (subseq!37 lt!39286 lt!39281))))

(declare-fun b!130277 () Bool)

(declare-fun res!60199 () Bool)

(assert (=> b!130277 (=> (not res!60199) (not e!75067))))

(declare-fun e!75066 () Bool)

(assert (=> b!130277 (= res!60199 e!75066)))

(declare-fun res!60197 () Bool)

(assert (=> b!130277 (=> res!60197 e!75066)))

(assert (=> b!130277 (= res!60197 (not ((_ is Cons!2166) newList!20)))))

(declare-fun b!130278 () Bool)

(declare-fun res!60192 () Bool)

(assert (=> b!130278 (=> (not res!60192) (not e!75067))))

(declare-fun contains!346 (List!2172 B!737) Bool)

(assert (=> b!130278 (= res!60192 (not (contains!346 baseList!9 (h!7563 newList!20))))))

(declare-fun b!130279 () Bool)

(assert (=> b!130279 (= e!75066 (not (contains!346 baseList!9 (h!7563 newList!20))))))

(declare-fun b!130280 () Bool)

(declare-fun tp!70288 () Bool)

(assert (=> b!130280 (= e!75065 (and tp_is_empty!1381 tp!70288))))

(assert (= (and start!13462 res!60198) b!130277))

(assert (= (and b!130277 (not res!60197)) b!130279))

(assert (= (and b!130277 res!60199) b!130274))

(assert (= (and b!130274 res!60200) b!130278))

(assert (= (and b!130278 res!60192) b!130270))

(assert (= (and b!130270 res!60196) b!130273))

(assert (= (and b!130273 res!60195) b!130276))

(assert (= (and b!130276 res!60193) b!130271))

(assert (= (and b!130270 (not res!60194)) b!130275))

(assert (= (and start!13462 ((_ is Cons!2166) baseList!9)) b!130272))

(assert (= (and start!13462 ((_ is Cons!2166) newList!20)) b!130280))

(declare-fun m!114801 () Bool)

(assert (=> b!130276 m!114801))

(declare-fun m!114803 () Bool)

(assert (=> b!130270 m!114803))

(declare-fun m!114805 () Bool)

(assert (=> b!130270 m!114805))

(declare-fun m!114807 () Bool)

(assert (=> b!130270 m!114807))

(declare-fun m!114809 () Bool)

(assert (=> b!130270 m!114809))

(declare-fun m!114811 () Bool)

(assert (=> b!130270 m!114811))

(declare-fun m!114813 () Bool)

(assert (=> b!130270 m!114813))

(declare-fun m!114815 () Bool)

(assert (=> b!130270 m!114815))

(declare-fun m!114817 () Bool)

(assert (=> b!130275 m!114817))

(assert (=> b!130275 m!114817))

(declare-fun m!114819 () Bool)

(assert (=> b!130275 m!114819))

(declare-fun m!114821 () Bool)

(assert (=> b!130275 m!114821))

(declare-fun m!114823 () Bool)

(assert (=> b!130279 m!114823))

(declare-fun m!114825 () Bool)

(assert (=> b!130273 m!114825))

(assert (=> b!130273 m!114821))

(declare-fun m!114827 () Bool)

(assert (=> b!130273 m!114827))

(assert (=> b!130278 m!114823))

(declare-fun m!114829 () Bool)

(assert (=> start!13462 m!114829))

(declare-fun m!114831 () Bool)

(assert (=> b!130271 m!114831))

(check-sat (not b!130273) (not b!130275) tp_is_empty!1381 (not b!130278) (not b!130272) (not b!130276) (not b!130270) (not b!130271) (not start!13462) (not b!130279) (not b!130280))
(check-sat)
(get-model)

(declare-fun b!130301 () Bool)

(declare-fun e!75081 () Bool)

(declare-fun e!75080 () Bool)

(assert (=> b!130301 (= e!75081 e!75080)))

(declare-fun res!60217 () Bool)

(assert (=> b!130301 (=> (not res!60217) (not e!75080))))

(assert (=> b!130301 (= res!60217 (not ((_ is Nil!2166) lt!39286)))))

(declare-fun b!130302 () Bool)

(declare-fun res!60215 () Bool)

(assert (=> b!130302 (=> (not res!60215) (not e!75080))))

(declare-fun head!517 (List!2172) B!737)

(assert (=> b!130302 (= res!60215 (= (head!517 lt!39282) (head!517 lt!39286)))))

(declare-fun d!30622 () Bool)

(declare-fun e!75082 () Bool)

(assert (=> d!30622 e!75082))

(declare-fun res!60218 () Bool)

(assert (=> d!30622 (=> res!60218 e!75082)))

(declare-fun lt!39292 () Bool)

(assert (=> d!30622 (= res!60218 (not lt!39292))))

(assert (=> d!30622 (= lt!39292 e!75081)))

(declare-fun res!60216 () Bool)

(assert (=> d!30622 (=> res!60216 e!75081)))

(assert (=> d!30622 (= res!60216 ((_ is Nil!2166) lt!39282))))

(assert (=> d!30622 (= (isPrefix!165 lt!39282 lt!39286) lt!39292)))

(declare-fun b!130303 () Bool)

(declare-fun tail!263 (List!2172) List!2172)

(assert (=> b!130303 (= e!75080 (isPrefix!165 (tail!263 lt!39282) (tail!263 lt!39286)))))

(declare-fun b!130304 () Bool)

(declare-fun size!1979 (List!2172) Int)

(assert (=> b!130304 (= e!75082 (>= (size!1979 lt!39286) (size!1979 lt!39282)))))

(assert (= (and d!30622 (not res!60216)) b!130301))

(assert (= (and b!130301 res!60217) b!130302))

(assert (= (and b!130302 res!60215) b!130303))

(assert (= (and d!30622 (not res!60218)) b!130304))

(declare-fun m!114847 () Bool)

(assert (=> b!130302 m!114847))

(declare-fun m!114849 () Bool)

(assert (=> b!130302 m!114849))

(declare-fun m!114851 () Bool)

(assert (=> b!130303 m!114851))

(declare-fun m!114853 () Bool)

(assert (=> b!130303 m!114853))

(assert (=> b!130303 m!114851))

(assert (=> b!130303 m!114853))

(declare-fun m!114855 () Bool)

(assert (=> b!130303 m!114855))

(declare-fun m!114857 () Bool)

(assert (=> b!130304 m!114857))

(declare-fun m!114859 () Bool)

(assert (=> b!130304 m!114859))

(assert (=> b!130271 d!30622))

(declare-fun d!30626 () Bool)

(declare-fun res!60229 () Bool)

(declare-fun e!75093 () Bool)

(assert (=> d!30626 (=> res!60229 e!75093)))

(assert (=> d!30626 (= res!60229 ((_ is Nil!2166) baseList!9))))

(assert (=> d!30626 (= (noDuplicate!62 baseList!9) e!75093)))

(declare-fun b!130315 () Bool)

(declare-fun e!75094 () Bool)

(assert (=> b!130315 (= e!75093 e!75094)))

(declare-fun res!60230 () Bool)

(assert (=> b!130315 (=> (not res!60230) (not e!75094))))

(assert (=> b!130315 (= res!60230 (not (contains!346 (t!22758 baseList!9) (h!7563 baseList!9))))))

(declare-fun b!130316 () Bool)

(assert (=> b!130316 (= e!75094 (noDuplicate!62 (t!22758 baseList!9)))))

(assert (= (and d!30626 (not res!60229)) b!130315))

(assert (= (and b!130315 res!60230) b!130316))

(declare-fun m!114865 () Bool)

(assert (=> b!130315 m!114865))

(declare-fun m!114867 () Bool)

(assert (=> b!130316 m!114867))

(assert (=> start!13462 d!30626))

(declare-fun b!130332 () Bool)

(declare-fun e!75108 () Bool)

(declare-fun e!75105 () Bool)

(assert (=> b!130332 (= e!75108 e!75105)))

(declare-fun res!60246 () Bool)

(assert (=> b!130332 (=> res!60246 e!75105)))

(declare-fun e!75107 () Bool)

(assert (=> b!130332 (= res!60246 e!75107)))

(declare-fun res!60245 () Bool)

(assert (=> b!130332 (=> (not res!60245) (not e!75107))))

(assert (=> b!130332 (= res!60245 (= (h!7563 lt!39286) (h!7563 lt!39281)))))

(declare-fun d!30630 () Bool)

(declare-fun res!60248 () Bool)

(declare-fun e!75106 () Bool)

(assert (=> d!30630 (=> res!60248 e!75106)))

(assert (=> d!30630 (= res!60248 ((_ is Nil!2166) lt!39286))))

(assert (=> d!30630 (= (subseq!37 lt!39286 lt!39281) e!75106)))

(declare-fun b!130331 () Bool)

(assert (=> b!130331 (= e!75106 e!75108)))

(declare-fun res!60247 () Bool)

(assert (=> b!130331 (=> (not res!60247) (not e!75108))))

(assert (=> b!130331 (= res!60247 ((_ is Cons!2166) lt!39281))))

(declare-fun b!130333 () Bool)

(assert (=> b!130333 (= e!75107 (subseq!37 (t!22758 lt!39286) (t!22758 lt!39281)))))

(declare-fun b!130334 () Bool)

(assert (=> b!130334 (= e!75105 (subseq!37 lt!39286 (t!22758 lt!39281)))))

(assert (= (and d!30630 (not res!60248)) b!130331))

(assert (= (and b!130331 res!60247) b!130332))

(assert (= (and b!130332 res!60245) b!130333))

(assert (= (and b!130332 (not res!60246)) b!130334))

(declare-fun m!114869 () Bool)

(assert (=> b!130333 m!114869))

(declare-fun m!114871 () Bool)

(assert (=> b!130334 m!114871))

(assert (=> b!130276 d!30630))

(declare-fun d!30632 () Bool)

(declare-fun c!28244 () Bool)

(assert (=> d!30632 (= c!28244 ((_ is Nil!2166) (++!446 lt!39282 newList!20)))))

(declare-fun e!75112 () (InoxSet B!737))

(assert (=> d!30632 (= (content!281 (++!446 lt!39282 newList!20)) e!75112)))

(declare-fun b!130342 () Bool)

(assert (=> b!130342 (= e!75112 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130343 () Bool)

(assert (=> b!130343 (= e!75112 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 (++!446 lt!39282 newList!20)) true) (content!281 (t!22758 (++!446 lt!39282 newList!20)))))))

(assert (= (and d!30632 c!28244) b!130342))

(assert (= (and d!30632 (not c!28244)) b!130343))

(declare-fun m!114885 () Bool)

(assert (=> b!130343 m!114885))

(declare-fun m!114887 () Bool)

(assert (=> b!130343 m!114887))

(assert (=> b!130275 d!30632))

(declare-fun b!130355 () Bool)

(declare-fun e!75119 () List!2172)

(assert (=> b!130355 (= e!75119 (Cons!2166 (h!7563 lt!39282) (++!446 (t!22758 lt!39282) newList!20)))))

(declare-fun d!30636 () Bool)

(declare-fun e!75120 () Bool)

(assert (=> d!30636 e!75120))

(declare-fun res!60259 () Bool)

(assert (=> d!30636 (=> (not res!60259) (not e!75120))))

(declare-fun lt!39304 () List!2172)

(assert (=> d!30636 (= res!60259 (= (content!281 lt!39304) ((_ map or) (content!281 lt!39282) (content!281 newList!20))))))

(assert (=> d!30636 (= lt!39304 e!75119)))

(declare-fun c!28247 () Bool)

(assert (=> d!30636 (= c!28247 ((_ is Nil!2166) lt!39282))))

(assert (=> d!30636 (= (++!446 lt!39282 newList!20) lt!39304)))

(declare-fun b!130357 () Bool)

(assert (=> b!130357 (= e!75120 (or (not (= newList!20 Nil!2166)) (= lt!39304 lt!39282)))))

(declare-fun b!130356 () Bool)

(declare-fun res!60258 () Bool)

(assert (=> b!130356 (=> (not res!60258) (not e!75120))))

(assert (=> b!130356 (= res!60258 (= (size!1979 lt!39304) (+ (size!1979 lt!39282) (size!1979 newList!20))))))

(declare-fun b!130354 () Bool)

(assert (=> b!130354 (= e!75119 newList!20)))

(assert (= (and d!30636 c!28247) b!130354))

(assert (= (and d!30636 (not c!28247)) b!130355))

(assert (= (and d!30636 res!60259) b!130356))

(assert (= (and b!130356 res!60258) b!130357))

(declare-fun m!114903 () Bool)

(assert (=> b!130355 m!114903))

(declare-fun m!114905 () Bool)

(assert (=> d!30636 m!114905))

(declare-fun m!114907 () Bool)

(assert (=> d!30636 m!114907))

(declare-fun m!114909 () Bool)

(assert (=> d!30636 m!114909))

(declare-fun m!114911 () Bool)

(assert (=> b!130356 m!114911))

(assert (=> b!130356 m!114859))

(declare-fun m!114913 () Bool)

(assert (=> b!130356 m!114913))

(assert (=> b!130275 d!30636))

(declare-fun d!30644 () Bool)

(declare-fun c!28248 () Bool)

(assert (=> d!30644 (= c!28248 ((_ is Nil!2166) lt!39286))))

(declare-fun e!75121 () (InoxSet B!737))

(assert (=> d!30644 (= (content!281 lt!39286) e!75121)))

(declare-fun b!130358 () Bool)

(assert (=> b!130358 (= e!75121 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130359 () Bool)

(assert (=> b!130359 (= e!75121 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39286) true) (content!281 (t!22758 lt!39286))))))

(assert (= (and d!30644 c!28248) b!130358))

(assert (= (and d!30644 (not c!28248)) b!130359))

(declare-fun m!114915 () Bool)

(assert (=> b!130359 m!114915))

(declare-fun m!114917 () Bool)

(assert (=> b!130359 m!114917))

(assert (=> b!130275 d!30644))

(declare-fun d!30646 () Bool)

(assert (=> d!30646 (isPrefix!165 baseList!9 (++!446 baseList!9 lt!39280))))

(declare-fun lt!39309 () Unit!1716)

(declare-fun choose!1653 (List!2172 List!2172) Unit!1716)

(assert (=> d!30646 (= lt!39309 (choose!1653 baseList!9 lt!39280))))

(assert (=> d!30646 (= (lemmaConcatTwoListThenFirstIsPrefix!92 baseList!9 lt!39280) lt!39309)))

(declare-fun bs!12602 () Bool)

(assert (= bs!12602 d!30646))

(assert (=> bs!12602 m!114809))

(assert (=> bs!12602 m!114809))

(declare-fun m!114919 () Bool)

(assert (=> bs!12602 m!114919))

(declare-fun m!114921 () Bool)

(assert (=> bs!12602 m!114921))

(assert (=> b!130270 d!30646))

(declare-fun d!30648 () Bool)

(declare-fun res!60268 () Bool)

(declare-fun e!75128 () Bool)

(assert (=> d!30648 (=> res!60268 e!75128)))

(assert (=> d!30648 (= res!60268 ((_ is Nil!2166) lt!39286))))

(assert (=> d!30648 (= (noDuplicate!62 lt!39286) e!75128)))

(declare-fun b!130368 () Bool)

(declare-fun e!75129 () Bool)

(assert (=> b!130368 (= e!75128 e!75129)))

(declare-fun res!60269 () Bool)

(assert (=> b!130368 (=> (not res!60269) (not e!75129))))

(assert (=> b!130368 (= res!60269 (not (contains!346 (t!22758 lt!39286) (h!7563 lt!39286))))))

(declare-fun b!130369 () Bool)

(assert (=> b!130369 (= e!75129 (noDuplicate!62 (t!22758 lt!39286)))))

(assert (= (and d!30648 (not res!60268)) b!130368))

(assert (= (and b!130368 res!60269) b!130369))

(declare-fun m!114923 () Bool)

(assert (=> b!130368 m!114923))

(declare-fun m!114925 () Bool)

(assert (=> b!130369 m!114925))

(assert (=> b!130270 d!30648))

(declare-fun d!30650 () Bool)

(declare-fun res!60270 () Bool)

(declare-fun e!75130 () Bool)

(assert (=> d!30650 (=> res!60270 e!75130)))

(assert (=> d!30650 (= res!60270 ((_ is Nil!2166) lt!39282))))

(assert (=> d!30650 (= (noDuplicate!62 lt!39282) e!75130)))

(declare-fun b!130370 () Bool)

(declare-fun e!75131 () Bool)

(assert (=> b!130370 (= e!75130 e!75131)))

(declare-fun res!60271 () Bool)

(assert (=> b!130370 (=> (not res!60271) (not e!75131))))

(assert (=> b!130370 (= res!60271 (not (contains!346 (t!22758 lt!39282) (h!7563 lt!39282))))))

(declare-fun b!130371 () Bool)

(assert (=> b!130371 (= e!75131 (noDuplicate!62 (t!22758 lt!39282)))))

(assert (= (and d!30650 (not res!60270)) b!130370))

(assert (= (and b!130370 res!60271) b!130371))

(declare-fun m!114927 () Bool)

(assert (=> b!130370 m!114927))

(declare-fun m!114929 () Bool)

(assert (=> b!130371 m!114929))

(assert (=> b!130270 d!30650))

(declare-fun d!30652 () Bool)

(declare-fun e!75146 () Bool)

(assert (=> d!30652 e!75146))

(declare-fun res!60293 () Bool)

(assert (=> d!30652 (=> (not res!60293) (not e!75146))))

(declare-fun lt!39317 () List!2172)

(assert (=> d!30652 (= res!60293 (noDuplicate!62 lt!39317))))

(declare-fun choose!1654 (List!2172 List!2172) List!2172)

(assert (=> d!30652 (= lt!39317 (choose!1654 lt!39282 (t!22758 newList!20)))))

(assert (=> d!30652 (noDuplicate!62 lt!39282)))

(assert (=> d!30652 (= (concatWithoutDuplicates!24 lt!39282 (t!22758 newList!20)) lt!39317)))

(declare-fun b!130392 () Bool)

(declare-fun res!60294 () Bool)

(assert (=> b!130392 (=> (not res!60294) (not e!75146))))

(assert (=> b!130392 (= res!60294 (= (content!281 (++!446 lt!39282 (t!22758 newList!20))) (content!281 lt!39317)))))

(declare-fun b!130393 () Bool)

(declare-fun res!60292 () Bool)

(assert (=> b!130393 (=> (not res!60292) (not e!75146))))

(assert (=> b!130393 (= res!60292 (subseq!37 lt!39317 (++!446 lt!39282 (t!22758 newList!20))))))

(declare-fun b!130394 () Bool)

(assert (=> b!130394 (= e!75146 (isPrefix!165 lt!39282 lt!39317))))

(assert (= (and d!30652 res!60293) b!130392))

(assert (= (and b!130392 res!60294) b!130393))

(assert (= (and b!130393 res!60292) b!130394))

(declare-fun m!114955 () Bool)

(assert (=> d!30652 m!114955))

(declare-fun m!114957 () Bool)

(assert (=> d!30652 m!114957))

(assert (=> d!30652 m!114805))

(assert (=> b!130392 m!114827))

(assert (=> b!130392 m!114827))

(declare-fun m!114959 () Bool)

(assert (=> b!130392 m!114959))

(declare-fun m!114961 () Bool)

(assert (=> b!130392 m!114961))

(assert (=> b!130393 m!114827))

(assert (=> b!130393 m!114827))

(declare-fun m!114963 () Bool)

(assert (=> b!130393 m!114963))

(declare-fun m!114965 () Bool)

(assert (=> b!130394 m!114965))

(assert (=> b!130270 d!30652))

(declare-fun b!130399 () Bool)

(declare-fun e!75150 () Bool)

(declare-fun e!75149 () Bool)

(assert (=> b!130399 (= e!75150 e!75149)))

(declare-fun res!60297 () Bool)

(assert (=> b!130399 (=> (not res!60297) (not e!75149))))

(assert (=> b!130399 (= res!60297 (not ((_ is Nil!2166) lt!39282)))))

(declare-fun b!130400 () Bool)

(declare-fun res!60295 () Bool)

(assert (=> b!130400 (=> (not res!60295) (not e!75149))))

(assert (=> b!130400 (= res!60295 (= (head!517 baseList!9) (head!517 lt!39282)))))

(declare-fun d!30660 () Bool)

(declare-fun e!75151 () Bool)

(assert (=> d!30660 e!75151))

(declare-fun res!60298 () Bool)

(assert (=> d!30660 (=> res!60298 e!75151)))

(declare-fun lt!39318 () Bool)

(assert (=> d!30660 (= res!60298 (not lt!39318))))

(assert (=> d!30660 (= lt!39318 e!75150)))

(declare-fun res!60296 () Bool)

(assert (=> d!30660 (=> res!60296 e!75150)))

(assert (=> d!30660 (= res!60296 ((_ is Nil!2166) baseList!9))))

(assert (=> d!30660 (= (isPrefix!165 baseList!9 lt!39282) lt!39318)))

(declare-fun b!130401 () Bool)

(assert (=> b!130401 (= e!75149 (isPrefix!165 (tail!263 baseList!9) (tail!263 lt!39282)))))

(declare-fun b!130402 () Bool)

(assert (=> b!130402 (= e!75151 (>= (size!1979 lt!39282) (size!1979 baseList!9)))))

(assert (= (and d!30660 (not res!60296)) b!130399))

(assert (= (and b!130399 res!60297) b!130400))

(assert (= (and b!130400 res!60295) b!130401))

(assert (= (and d!30660 (not res!60298)) b!130402))

(declare-fun m!114967 () Bool)

(assert (=> b!130400 m!114967))

(assert (=> b!130400 m!114847))

(declare-fun m!114969 () Bool)

(assert (=> b!130401 m!114969))

(assert (=> b!130401 m!114851))

(assert (=> b!130401 m!114969))

(assert (=> b!130401 m!114851))

(declare-fun m!114971 () Bool)

(assert (=> b!130401 m!114971))

(assert (=> b!130402 m!114859))

(declare-fun m!114975 () Bool)

(assert (=> b!130402 m!114975))

(assert (=> b!130270 d!30660))

(declare-fun d!30662 () Bool)

(assert (=> d!30662 (noDuplicate!62 (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166)))))

(declare-fun lt!39323 () Unit!1716)

(declare-fun choose!1655 (List!2172 B!737) Unit!1716)

(assert (=> d!30662 (= lt!39323 (choose!1655 baseList!9 (h!7563 newList!20)))))

(assert (=> d!30662 (noDuplicate!62 baseList!9)))

(assert (=> d!30662 (= (lemmaAppendNewElementElementPreserves!10 baseList!9 (h!7563 newList!20)) lt!39323)))

(declare-fun bs!12603 () Bool)

(assert (= bs!12603 d!30662))

(declare-fun m!115013 () Bool)

(assert (=> bs!12603 m!115013))

(assert (=> bs!12603 m!115013))

(declare-fun m!115015 () Bool)

(assert (=> bs!12603 m!115015))

(declare-fun m!115017 () Bool)

(assert (=> bs!12603 m!115017))

(assert (=> bs!12603 m!114829))

(assert (=> b!130270 d!30662))

(declare-fun b!130424 () Bool)

(declare-fun e!75165 () List!2172)

(assert (=> b!130424 (= e!75165 (Cons!2166 (h!7563 baseList!9) (++!446 (t!22758 baseList!9) lt!39280)))))

(declare-fun d!30676 () Bool)

(declare-fun e!75166 () Bool)

(assert (=> d!30676 e!75166))

(declare-fun res!60310 () Bool)

(assert (=> d!30676 (=> (not res!60310) (not e!75166))))

(declare-fun lt!39324 () List!2172)

(assert (=> d!30676 (= res!60310 (= (content!281 lt!39324) ((_ map or) (content!281 baseList!9) (content!281 lt!39280))))))

(assert (=> d!30676 (= lt!39324 e!75165)))

(declare-fun c!28256 () Bool)

(assert (=> d!30676 (= c!28256 ((_ is Nil!2166) baseList!9))))

(assert (=> d!30676 (= (++!446 baseList!9 lt!39280) lt!39324)))

(declare-fun b!130426 () Bool)

(assert (=> b!130426 (= e!75166 (or (not (= lt!39280 Nil!2166)) (= lt!39324 baseList!9)))))

(declare-fun b!130425 () Bool)

(declare-fun res!60309 () Bool)

(assert (=> b!130425 (=> (not res!60309) (not e!75166))))

(assert (=> b!130425 (= res!60309 (= (size!1979 lt!39324) (+ (size!1979 baseList!9) (size!1979 lt!39280))))))

(declare-fun b!130423 () Bool)

(assert (=> b!130423 (= e!75165 lt!39280)))

(assert (= (and d!30676 c!28256) b!130423))

(assert (= (and d!30676 (not c!28256)) b!130424))

(assert (= (and d!30676 res!60310) b!130425))

(assert (= (and b!130425 res!60309) b!130426))

(declare-fun m!115019 () Bool)

(assert (=> b!130424 m!115019))

(declare-fun m!115021 () Bool)

(assert (=> d!30676 m!115021))

(declare-fun m!115023 () Bool)

(assert (=> d!30676 m!115023))

(declare-fun m!115025 () Bool)

(assert (=> d!30676 m!115025))

(declare-fun m!115027 () Bool)

(assert (=> b!130425 m!115027))

(assert (=> b!130425 m!114975))

(declare-fun m!115029 () Bool)

(assert (=> b!130425 m!115029))

(assert (=> b!130270 d!30676))

(declare-fun d!30678 () Bool)

(declare-fun lt!39327 () Bool)

(assert (=> d!30678 (= lt!39327 (select (content!281 baseList!9) (h!7563 newList!20)))))

(declare-fun e!75183 () Bool)

(assert (=> d!30678 (= lt!39327 e!75183)))

(declare-fun res!60324 () Bool)

(assert (=> d!30678 (=> (not res!60324) (not e!75183))))

(assert (=> d!30678 (= res!60324 ((_ is Cons!2166) baseList!9))))

(assert (=> d!30678 (= (contains!346 baseList!9 (h!7563 newList!20)) lt!39327)))

(declare-fun b!130445 () Bool)

(declare-fun e!75184 () Bool)

(assert (=> b!130445 (= e!75183 e!75184)))

(declare-fun res!60323 () Bool)

(assert (=> b!130445 (=> res!60323 e!75184)))

(assert (=> b!130445 (= res!60323 (= (h!7563 baseList!9) (h!7563 newList!20)))))

(declare-fun b!130446 () Bool)

(assert (=> b!130446 (= e!75184 (contains!346 (t!22758 baseList!9) (h!7563 newList!20)))))

(assert (= (and d!30678 res!60324) b!130445))

(assert (= (and b!130445 (not res!60323)) b!130446))

(assert (=> d!30678 m!115023))

(declare-fun m!115035 () Bool)

(assert (=> d!30678 m!115035))

(declare-fun m!115037 () Bool)

(assert (=> b!130446 m!115037))

(assert (=> b!130279 d!30678))

(declare-fun d!30680 () Bool)

(declare-fun c!28257 () Bool)

(assert (=> d!30680 (= c!28257 ((_ is Nil!2166) lt!39281))))

(declare-fun e!75185 () (InoxSet B!737))

(assert (=> d!30680 (= (content!281 lt!39281) e!75185)))

(declare-fun b!130447 () Bool)

(assert (=> b!130447 (= e!75185 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130448 () Bool)

(assert (=> b!130448 (= e!75185 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39281) true) (content!281 (t!22758 lt!39281))))))

(assert (= (and d!30680 c!28257) b!130447))

(assert (= (and d!30680 (not c!28257)) b!130448))

(declare-fun m!115039 () Bool)

(assert (=> b!130448 m!115039))

(declare-fun m!115041 () Bool)

(assert (=> b!130448 m!115041))

(assert (=> b!130273 d!30680))

(assert (=> b!130273 d!30644))

(declare-fun b!130450 () Bool)

(declare-fun e!75186 () List!2172)

(assert (=> b!130450 (= e!75186 (Cons!2166 (h!7563 lt!39282) (++!446 (t!22758 lt!39282) (t!22758 newList!20))))))

(declare-fun d!30682 () Bool)

(declare-fun e!75187 () Bool)

(assert (=> d!30682 e!75187))

(declare-fun res!60326 () Bool)

(assert (=> d!30682 (=> (not res!60326) (not e!75187))))

(declare-fun lt!39328 () List!2172)

(assert (=> d!30682 (= res!60326 (= (content!281 lt!39328) ((_ map or) (content!281 lt!39282) (content!281 (t!22758 newList!20)))))))

(assert (=> d!30682 (= lt!39328 e!75186)))

(declare-fun c!28258 () Bool)

(assert (=> d!30682 (= c!28258 ((_ is Nil!2166) lt!39282))))

(assert (=> d!30682 (= (++!446 lt!39282 (t!22758 newList!20)) lt!39328)))

(declare-fun b!130452 () Bool)

(assert (=> b!130452 (= e!75187 (or (not (= (t!22758 newList!20) Nil!2166)) (= lt!39328 lt!39282)))))

(declare-fun b!130451 () Bool)

(declare-fun res!60325 () Bool)

(assert (=> b!130451 (=> (not res!60325) (not e!75187))))

(assert (=> b!130451 (= res!60325 (= (size!1979 lt!39328) (+ (size!1979 lt!39282) (size!1979 (t!22758 newList!20)))))))

(declare-fun b!130449 () Bool)

(assert (=> b!130449 (= e!75186 (t!22758 newList!20))))

(assert (= (and d!30682 c!28258) b!130449))

(assert (= (and d!30682 (not c!28258)) b!130450))

(assert (= (and d!30682 res!60326) b!130451))

(assert (= (and b!130451 res!60325) b!130452))

(declare-fun m!115043 () Bool)

(assert (=> b!130450 m!115043))

(declare-fun m!115045 () Bool)

(assert (=> d!30682 m!115045))

(assert (=> d!30682 m!114907))

(declare-fun m!115047 () Bool)

(assert (=> d!30682 m!115047))

(declare-fun m!115049 () Bool)

(assert (=> b!130451 m!115049))

(assert (=> b!130451 m!114859))

(declare-fun m!115051 () Bool)

(assert (=> b!130451 m!115051))

(assert (=> b!130273 d!30682))

(assert (=> b!130278 d!30678))

(declare-fun b!130457 () Bool)

(declare-fun e!75190 () Bool)

(declare-fun tp!70295 () Bool)

(assert (=> b!130457 (= e!75190 (and tp_is_empty!1381 tp!70295))))

(assert (=> b!130272 (= tp!70287 e!75190)))

(assert (= (and b!130272 ((_ is Cons!2166) (t!22758 baseList!9))) b!130457))

(declare-fun b!130458 () Bool)

(declare-fun e!75191 () Bool)

(declare-fun tp!70296 () Bool)

(assert (=> b!130458 (= e!75191 (and tp_is_empty!1381 tp!70296))))

(assert (=> b!130280 (= tp!70288 e!75191)))

(assert (= (and b!130280 ((_ is Cons!2166) (t!22758 newList!20))) b!130458))

(check-sat (not b!130369) (not b!130448) (not b!130425) tp_is_empty!1381 (not b!130458) (not d!30682) (not d!30676) (not b!130424) (not b!130303) (not b!130392) (not b!130451) (not b!130393) (not d!30662) (not b!130370) (not b!130368) (not d!30678) (not b!130450) (not b!130446) (not d!30652) (not b!130457) (not b!130394) (not d!30636) (not b!130371) (not b!130400) (not b!130304) (not b!130315) (not b!130355) (not b!130356) (not d!30646) (not b!130316) (not b!130401) (not b!130302) (not b!130402) (not b!130359) (not b!130343) (not b!130334) (not b!130333))
(check-sat)
(get-model)

(declare-fun d!30684 () Bool)

(assert (=> d!30684 (= (head!517 baseList!9) (h!7563 baseList!9))))

(assert (=> b!130400 d!30684))

(declare-fun d!30686 () Bool)

(assert (=> d!30686 (= (head!517 lt!39282) (h!7563 lt!39282))))

(assert (=> b!130400 d!30686))

(declare-fun d!30688 () Bool)

(declare-fun c!28259 () Bool)

(assert (=> d!30688 (= c!28259 ((_ is Nil!2166) (t!22758 lt!39286)))))

(declare-fun e!75192 () (InoxSet B!737))

(assert (=> d!30688 (= (content!281 (t!22758 lt!39286)) e!75192)))

(declare-fun b!130459 () Bool)

(assert (=> b!130459 (= e!75192 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130460 () Bool)

(assert (=> b!130460 (= e!75192 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 (t!22758 lt!39286)) true) (content!281 (t!22758 (t!22758 lt!39286)))))))

(assert (= (and d!30688 c!28259) b!130459))

(assert (= (and d!30688 (not c!28259)) b!130460))

(declare-fun m!115053 () Bool)

(assert (=> b!130460 m!115053))

(declare-fun m!115055 () Bool)

(assert (=> b!130460 m!115055))

(assert (=> b!130359 d!30688))

(declare-fun d!30690 () Bool)

(declare-fun res!60327 () Bool)

(declare-fun e!75193 () Bool)

(assert (=> d!30690 (=> res!60327 e!75193)))

(assert (=> d!30690 (= res!60327 ((_ is Nil!2166) (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166))))))

(assert (=> d!30690 (= (noDuplicate!62 (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166))) e!75193)))

(declare-fun b!130461 () Bool)

(declare-fun e!75194 () Bool)

(assert (=> b!130461 (= e!75193 e!75194)))

(declare-fun res!60328 () Bool)

(assert (=> b!130461 (=> (not res!60328) (not e!75194))))

(assert (=> b!130461 (= res!60328 (not (contains!346 (t!22758 (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166))) (h!7563 (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166))))))))

(declare-fun b!130462 () Bool)

(assert (=> b!130462 (= e!75194 (noDuplicate!62 (t!22758 (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166)))))))

(assert (= (and d!30690 (not res!60327)) b!130461))

(assert (= (and b!130461 res!60328) b!130462))

(declare-fun m!115057 () Bool)

(assert (=> b!130461 m!115057))

(declare-fun m!115059 () Bool)

(assert (=> b!130462 m!115059))

(assert (=> d!30662 d!30690))

(declare-fun b!130464 () Bool)

(declare-fun e!75195 () List!2172)

(assert (=> b!130464 (= e!75195 (Cons!2166 (h!7563 baseList!9) (++!446 (t!22758 baseList!9) (Cons!2166 (h!7563 newList!20) Nil!2166))))))

(declare-fun d!30692 () Bool)

(declare-fun e!75196 () Bool)

(assert (=> d!30692 e!75196))

(declare-fun res!60330 () Bool)

(assert (=> d!30692 (=> (not res!60330) (not e!75196))))

(declare-fun lt!39329 () List!2172)

(assert (=> d!30692 (= res!60330 (= (content!281 lt!39329) ((_ map or) (content!281 baseList!9) (content!281 (Cons!2166 (h!7563 newList!20) Nil!2166)))))))

(assert (=> d!30692 (= lt!39329 e!75195)))

(declare-fun c!28260 () Bool)

(assert (=> d!30692 (= c!28260 ((_ is Nil!2166) baseList!9))))

(assert (=> d!30692 (= (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166)) lt!39329)))

(declare-fun b!130466 () Bool)

(assert (=> b!130466 (= e!75196 (or (not (= (Cons!2166 (h!7563 newList!20) Nil!2166) Nil!2166)) (= lt!39329 baseList!9)))))

(declare-fun b!130465 () Bool)

(declare-fun res!60329 () Bool)

(assert (=> b!130465 (=> (not res!60329) (not e!75196))))

(assert (=> b!130465 (= res!60329 (= (size!1979 lt!39329) (+ (size!1979 baseList!9) (size!1979 (Cons!2166 (h!7563 newList!20) Nil!2166)))))))

(declare-fun b!130463 () Bool)

(assert (=> b!130463 (= e!75195 (Cons!2166 (h!7563 newList!20) Nil!2166))))

(assert (= (and d!30692 c!28260) b!130463))

(assert (= (and d!30692 (not c!28260)) b!130464))

(assert (= (and d!30692 res!60330) b!130465))

(assert (= (and b!130465 res!60329) b!130466))

(declare-fun m!115061 () Bool)

(assert (=> b!130464 m!115061))

(declare-fun m!115063 () Bool)

(assert (=> d!30692 m!115063))

(assert (=> d!30692 m!115023))

(declare-fun m!115065 () Bool)

(assert (=> d!30692 m!115065))

(declare-fun m!115067 () Bool)

(assert (=> b!130465 m!115067))

(assert (=> b!130465 m!114975))

(declare-fun m!115069 () Bool)

(assert (=> b!130465 m!115069))

(assert (=> d!30662 d!30692))

(declare-fun d!30694 () Bool)

(assert (=> d!30694 (noDuplicate!62 (++!446 baseList!9 (Cons!2166 (h!7563 newList!20) Nil!2166)))))

(assert (=> d!30694 true))

(declare-fun _$70!77 () Unit!1716)

(assert (=> d!30694 (= (choose!1655 baseList!9 (h!7563 newList!20)) _$70!77)))

(declare-fun bs!12604 () Bool)

(assert (= bs!12604 d!30694))

(assert (=> bs!12604 m!115013))

(assert (=> bs!12604 m!115013))

(assert (=> bs!12604 m!115015))

(assert (=> d!30662 d!30694))

(assert (=> d!30662 d!30626))

(declare-fun d!30696 () Bool)

(declare-fun c!28261 () Bool)

(assert (=> d!30696 (= c!28261 ((_ is Nil!2166) lt!39324))))

(declare-fun e!75197 () (InoxSet B!737))

(assert (=> d!30696 (= (content!281 lt!39324) e!75197)))

(declare-fun b!130467 () Bool)

(assert (=> b!130467 (= e!75197 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130468 () Bool)

(assert (=> b!130468 (= e!75197 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39324) true) (content!281 (t!22758 lt!39324))))))

(assert (= (and d!30696 c!28261) b!130467))

(assert (= (and d!30696 (not c!28261)) b!130468))

(declare-fun m!115071 () Bool)

(assert (=> b!130468 m!115071))

(declare-fun m!115073 () Bool)

(assert (=> b!130468 m!115073))

(assert (=> d!30676 d!30696))

(declare-fun d!30698 () Bool)

(declare-fun c!28262 () Bool)

(assert (=> d!30698 (= c!28262 ((_ is Nil!2166) baseList!9))))

(declare-fun e!75198 () (InoxSet B!737))

(assert (=> d!30698 (= (content!281 baseList!9) e!75198)))

(declare-fun b!130469 () Bool)

(assert (=> b!130469 (= e!75198 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130470 () Bool)

(assert (=> b!130470 (= e!75198 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 baseList!9) true) (content!281 (t!22758 baseList!9))))))

(assert (= (and d!30698 c!28262) b!130469))

(assert (= (and d!30698 (not c!28262)) b!130470))

(declare-fun m!115075 () Bool)

(assert (=> b!130470 m!115075))

(declare-fun m!115077 () Bool)

(assert (=> b!130470 m!115077))

(assert (=> d!30676 d!30698))

(declare-fun d!30700 () Bool)

(declare-fun c!28263 () Bool)

(assert (=> d!30700 (= c!28263 ((_ is Nil!2166) lt!39280))))

(declare-fun e!75199 () (InoxSet B!737))

(assert (=> d!30700 (= (content!281 lt!39280) e!75199)))

(declare-fun b!130471 () Bool)

(assert (=> b!130471 (= e!75199 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130472 () Bool)

(assert (=> b!130472 (= e!75199 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39280) true) (content!281 (t!22758 lt!39280))))))

(assert (= (and d!30700 c!28263) b!130471))

(assert (= (and d!30700 (not c!28263)) b!130472))

(declare-fun m!115079 () Bool)

(assert (=> b!130472 m!115079))

(declare-fun m!115081 () Bool)

(assert (=> b!130472 m!115081))

(assert (=> d!30676 d!30700))

(declare-fun d!30702 () Bool)

(declare-fun lt!39332 () Int)

(assert (=> d!30702 (>= lt!39332 0)))

(declare-fun e!75202 () Int)

(assert (=> d!30702 (= lt!39332 e!75202)))

(declare-fun c!28266 () Bool)

(assert (=> d!30702 (= c!28266 ((_ is Nil!2166) lt!39328))))

(assert (=> d!30702 (= (size!1979 lt!39328) lt!39332)))

(declare-fun b!130477 () Bool)

(assert (=> b!130477 (= e!75202 0)))

(declare-fun b!130478 () Bool)

(assert (=> b!130478 (= e!75202 (+ 1 (size!1979 (t!22758 lt!39328))))))

(assert (= (and d!30702 c!28266) b!130477))

(assert (= (and d!30702 (not c!28266)) b!130478))

(declare-fun m!115083 () Bool)

(assert (=> b!130478 m!115083))

(assert (=> b!130451 d!30702))

(declare-fun d!30704 () Bool)

(declare-fun lt!39333 () Int)

(assert (=> d!30704 (>= lt!39333 0)))

(declare-fun e!75203 () Int)

(assert (=> d!30704 (= lt!39333 e!75203)))

(declare-fun c!28267 () Bool)

(assert (=> d!30704 (= c!28267 ((_ is Nil!2166) lt!39282))))

(assert (=> d!30704 (= (size!1979 lt!39282) lt!39333)))

(declare-fun b!130479 () Bool)

(assert (=> b!130479 (= e!75203 0)))

(declare-fun b!130480 () Bool)

(assert (=> b!130480 (= e!75203 (+ 1 (size!1979 (t!22758 lt!39282))))))

(assert (= (and d!30704 c!28267) b!130479))

(assert (= (and d!30704 (not c!28267)) b!130480))

(declare-fun m!115085 () Bool)

(assert (=> b!130480 m!115085))

(assert (=> b!130451 d!30704))

(declare-fun d!30706 () Bool)

(declare-fun lt!39334 () Int)

(assert (=> d!30706 (>= lt!39334 0)))

(declare-fun e!75204 () Int)

(assert (=> d!30706 (= lt!39334 e!75204)))

(declare-fun c!28268 () Bool)

(assert (=> d!30706 (= c!28268 ((_ is Nil!2166) (t!22758 newList!20)))))

(assert (=> d!30706 (= (size!1979 (t!22758 newList!20)) lt!39334)))

(declare-fun b!130481 () Bool)

(assert (=> b!130481 (= e!75204 0)))

(declare-fun b!130482 () Bool)

(assert (=> b!130482 (= e!75204 (+ 1 (size!1979 (t!22758 (t!22758 newList!20)))))))

(assert (= (and d!30706 c!28268) b!130481))

(assert (= (and d!30706 (not c!28268)) b!130482))

(declare-fun m!115087 () Bool)

(assert (=> b!130482 m!115087))

(assert (=> b!130451 d!30706))

(assert (=> d!30678 d!30698))

(declare-fun b!130484 () Bool)

(declare-fun e!75205 () List!2172)

(assert (=> b!130484 (= e!75205 (Cons!2166 (h!7563 (t!22758 lt!39282)) (++!446 (t!22758 (t!22758 lt!39282)) (t!22758 newList!20))))))

(declare-fun d!30708 () Bool)

(declare-fun e!75206 () Bool)

(assert (=> d!30708 e!75206))

(declare-fun res!60332 () Bool)

(assert (=> d!30708 (=> (not res!60332) (not e!75206))))

(declare-fun lt!39335 () List!2172)

(assert (=> d!30708 (= res!60332 (= (content!281 lt!39335) ((_ map or) (content!281 (t!22758 lt!39282)) (content!281 (t!22758 newList!20)))))))

(assert (=> d!30708 (= lt!39335 e!75205)))

(declare-fun c!28269 () Bool)

(assert (=> d!30708 (= c!28269 ((_ is Nil!2166) (t!22758 lt!39282)))))

(assert (=> d!30708 (= (++!446 (t!22758 lt!39282) (t!22758 newList!20)) lt!39335)))

(declare-fun b!130486 () Bool)

(assert (=> b!130486 (= e!75206 (or (not (= (t!22758 newList!20) Nil!2166)) (= lt!39335 (t!22758 lt!39282))))))

(declare-fun b!130485 () Bool)

(declare-fun res!60331 () Bool)

(assert (=> b!130485 (=> (not res!60331) (not e!75206))))

(assert (=> b!130485 (= res!60331 (= (size!1979 lt!39335) (+ (size!1979 (t!22758 lt!39282)) (size!1979 (t!22758 newList!20)))))))

(declare-fun b!130483 () Bool)

(assert (=> b!130483 (= e!75205 (t!22758 newList!20))))

(assert (= (and d!30708 c!28269) b!130483))

(assert (= (and d!30708 (not c!28269)) b!130484))

(assert (= (and d!30708 res!60332) b!130485))

(assert (= (and b!130485 res!60331) b!130486))

(declare-fun m!115089 () Bool)

(assert (=> b!130484 m!115089))

(declare-fun m!115091 () Bool)

(assert (=> d!30708 m!115091))

(declare-fun m!115093 () Bool)

(assert (=> d!30708 m!115093))

(assert (=> d!30708 m!115047))

(declare-fun m!115095 () Bool)

(assert (=> b!130485 m!115095))

(assert (=> b!130485 m!115085))

(assert (=> b!130485 m!115051))

(assert (=> b!130450 d!30708))

(declare-fun b!130487 () Bool)

(declare-fun e!75208 () Bool)

(declare-fun e!75207 () Bool)

(assert (=> b!130487 (= e!75208 e!75207)))

(declare-fun res!60335 () Bool)

(assert (=> b!130487 (=> (not res!60335) (not e!75207))))

(assert (=> b!130487 (= res!60335 (not ((_ is Nil!2166) (++!446 baseList!9 lt!39280))))))

(declare-fun b!130488 () Bool)

(declare-fun res!60333 () Bool)

(assert (=> b!130488 (=> (not res!60333) (not e!75207))))

(assert (=> b!130488 (= res!60333 (= (head!517 baseList!9) (head!517 (++!446 baseList!9 lt!39280))))))

(declare-fun d!30710 () Bool)

(declare-fun e!75209 () Bool)

(assert (=> d!30710 e!75209))

(declare-fun res!60336 () Bool)

(assert (=> d!30710 (=> res!60336 e!75209)))

(declare-fun lt!39336 () Bool)

(assert (=> d!30710 (= res!60336 (not lt!39336))))

(assert (=> d!30710 (= lt!39336 e!75208)))

(declare-fun res!60334 () Bool)

(assert (=> d!30710 (=> res!60334 e!75208)))

(assert (=> d!30710 (= res!60334 ((_ is Nil!2166) baseList!9))))

(assert (=> d!30710 (= (isPrefix!165 baseList!9 (++!446 baseList!9 lt!39280)) lt!39336)))

(declare-fun b!130489 () Bool)

(assert (=> b!130489 (= e!75207 (isPrefix!165 (tail!263 baseList!9) (tail!263 (++!446 baseList!9 lt!39280))))))

(declare-fun b!130490 () Bool)

(assert (=> b!130490 (= e!75209 (>= (size!1979 (++!446 baseList!9 lt!39280)) (size!1979 baseList!9)))))

(assert (= (and d!30710 (not res!60334)) b!130487))

(assert (= (and b!130487 res!60335) b!130488))

(assert (= (and b!130488 res!60333) b!130489))

(assert (= (and d!30710 (not res!60336)) b!130490))

(assert (=> b!130488 m!114967))

(assert (=> b!130488 m!114809))

(declare-fun m!115097 () Bool)

(assert (=> b!130488 m!115097))

(assert (=> b!130489 m!114969))

(assert (=> b!130489 m!114809))

(declare-fun m!115099 () Bool)

(assert (=> b!130489 m!115099))

(assert (=> b!130489 m!114969))

(assert (=> b!130489 m!115099))

(declare-fun m!115101 () Bool)

(assert (=> b!130489 m!115101))

(assert (=> b!130490 m!114809))

(declare-fun m!115103 () Bool)

(assert (=> b!130490 m!115103))

(assert (=> b!130490 m!114975))

(assert (=> d!30646 d!30710))

(assert (=> d!30646 d!30676))

(declare-fun d!30712 () Bool)

(assert (=> d!30712 (isPrefix!165 baseList!9 (++!446 baseList!9 lt!39280))))

(assert (=> d!30712 true))

(declare-fun _$46!728 () Unit!1716)

(assert (=> d!30712 (= (choose!1653 baseList!9 lt!39280) _$46!728)))

(declare-fun bs!12605 () Bool)

(assert (= bs!12605 d!30712))

(assert (=> bs!12605 m!114809))

(assert (=> bs!12605 m!114809))

(assert (=> bs!12605 m!114919))

(assert (=> d!30646 d!30712))

(declare-fun b!130492 () Bool)

(declare-fun e!75213 () Bool)

(declare-fun e!75210 () Bool)

(assert (=> b!130492 (= e!75213 e!75210)))

(declare-fun res!60338 () Bool)

(assert (=> b!130492 (=> res!60338 e!75210)))

(declare-fun e!75212 () Bool)

(assert (=> b!130492 (= res!60338 e!75212)))

(declare-fun res!60337 () Bool)

(assert (=> b!130492 (=> (not res!60337) (not e!75212))))

(assert (=> b!130492 (= res!60337 (= (h!7563 (t!22758 lt!39286)) (h!7563 (t!22758 lt!39281))))))

(declare-fun d!30714 () Bool)

(declare-fun res!60340 () Bool)

(declare-fun e!75211 () Bool)

(assert (=> d!30714 (=> res!60340 e!75211)))

(assert (=> d!30714 (= res!60340 ((_ is Nil!2166) (t!22758 lt!39286)))))

(assert (=> d!30714 (= (subseq!37 (t!22758 lt!39286) (t!22758 lt!39281)) e!75211)))

(declare-fun b!130491 () Bool)

(assert (=> b!130491 (= e!75211 e!75213)))

(declare-fun res!60339 () Bool)

(assert (=> b!130491 (=> (not res!60339) (not e!75213))))

(assert (=> b!130491 (= res!60339 ((_ is Cons!2166) (t!22758 lt!39281)))))

(declare-fun b!130493 () Bool)

(assert (=> b!130493 (= e!75212 (subseq!37 (t!22758 (t!22758 lt!39286)) (t!22758 (t!22758 lt!39281))))))

(declare-fun b!130494 () Bool)

(assert (=> b!130494 (= e!75210 (subseq!37 (t!22758 lt!39286) (t!22758 (t!22758 lt!39281))))))

(assert (= (and d!30714 (not res!60340)) b!130491))

(assert (= (and b!130491 res!60339) b!130492))

(assert (= (and b!130492 res!60337) b!130493))

(assert (= (and b!130492 (not res!60338)) b!130494))

(declare-fun m!115105 () Bool)

(assert (=> b!130493 m!115105))

(declare-fun m!115107 () Bool)

(assert (=> b!130494 m!115107))

(assert (=> b!130333 d!30714))

(declare-fun d!30716 () Bool)

(declare-fun res!60341 () Bool)

(declare-fun e!75214 () Bool)

(assert (=> d!30716 (=> res!60341 e!75214)))

(assert (=> d!30716 (= res!60341 ((_ is Nil!2166) (t!22758 baseList!9)))))

(assert (=> d!30716 (= (noDuplicate!62 (t!22758 baseList!9)) e!75214)))

(declare-fun b!130495 () Bool)

(declare-fun e!75215 () Bool)

(assert (=> b!130495 (= e!75214 e!75215)))

(declare-fun res!60342 () Bool)

(assert (=> b!130495 (=> (not res!60342) (not e!75215))))

(assert (=> b!130495 (= res!60342 (not (contains!346 (t!22758 (t!22758 baseList!9)) (h!7563 (t!22758 baseList!9)))))))

(declare-fun b!130496 () Bool)

(assert (=> b!130496 (= e!75215 (noDuplicate!62 (t!22758 (t!22758 baseList!9))))))

(assert (= (and d!30716 (not res!60341)) b!130495))

(assert (= (and b!130495 res!60342) b!130496))

(declare-fun m!115109 () Bool)

(assert (=> b!130495 m!115109))

(declare-fun m!115111 () Bool)

(assert (=> b!130496 m!115111))

(assert (=> b!130316 d!30716))

(declare-fun d!30718 () Bool)

(declare-fun c!28270 () Bool)

(assert (=> d!30718 (= c!28270 ((_ is Nil!2166) (t!22758 lt!39281)))))

(declare-fun e!75216 () (InoxSet B!737))

(assert (=> d!30718 (= (content!281 (t!22758 lt!39281)) e!75216)))

(declare-fun b!130497 () Bool)

(assert (=> b!130497 (= e!75216 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130498 () Bool)

(assert (=> b!130498 (= e!75216 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 (t!22758 lt!39281)) true) (content!281 (t!22758 (t!22758 lt!39281)))))))

(assert (= (and d!30718 c!28270) b!130497))

(assert (= (and d!30718 (not c!28270)) b!130498))

(declare-fun m!115113 () Bool)

(assert (=> b!130498 m!115113))

(declare-fun m!115115 () Bool)

(assert (=> b!130498 m!115115))

(assert (=> b!130448 d!30718))

(declare-fun d!30720 () Bool)

(declare-fun lt!39337 () Bool)

(assert (=> d!30720 (= lt!39337 (select (content!281 (t!22758 baseList!9)) (h!7563 baseList!9)))))

(declare-fun e!75217 () Bool)

(assert (=> d!30720 (= lt!39337 e!75217)))

(declare-fun res!60344 () Bool)

(assert (=> d!30720 (=> (not res!60344) (not e!75217))))

(assert (=> d!30720 (= res!60344 ((_ is Cons!2166) (t!22758 baseList!9)))))

(assert (=> d!30720 (= (contains!346 (t!22758 baseList!9) (h!7563 baseList!9)) lt!39337)))

(declare-fun b!130499 () Bool)

(declare-fun e!75218 () Bool)

(assert (=> b!130499 (= e!75217 e!75218)))

(declare-fun res!60343 () Bool)

(assert (=> b!130499 (=> res!60343 e!75218)))

(assert (=> b!130499 (= res!60343 (= (h!7563 (t!22758 baseList!9)) (h!7563 baseList!9)))))

(declare-fun b!130500 () Bool)

(assert (=> b!130500 (= e!75218 (contains!346 (t!22758 (t!22758 baseList!9)) (h!7563 baseList!9)))))

(assert (= (and d!30720 res!60344) b!130499))

(assert (= (and b!130499 (not res!60343)) b!130500))

(assert (=> d!30720 m!115077))

(declare-fun m!115117 () Bool)

(assert (=> d!30720 m!115117))

(declare-fun m!115119 () Bool)

(assert (=> b!130500 m!115119))

(assert (=> b!130315 d!30720))

(declare-fun d!30722 () Bool)

(declare-fun lt!39338 () Int)

(assert (=> d!30722 (>= lt!39338 0)))

(declare-fun e!75219 () Int)

(assert (=> d!30722 (= lt!39338 e!75219)))

(declare-fun c!28271 () Bool)

(assert (=> d!30722 (= c!28271 ((_ is Nil!2166) lt!39304))))

(assert (=> d!30722 (= (size!1979 lt!39304) lt!39338)))

(declare-fun b!130501 () Bool)

(assert (=> b!130501 (= e!75219 0)))

(declare-fun b!130502 () Bool)

(assert (=> b!130502 (= e!75219 (+ 1 (size!1979 (t!22758 lt!39304))))))

(assert (= (and d!30722 c!28271) b!130501))

(assert (= (and d!30722 (not c!28271)) b!130502))

(declare-fun m!115121 () Bool)

(assert (=> b!130502 m!115121))

(assert (=> b!130356 d!30722))

(assert (=> b!130356 d!30704))

(declare-fun d!30724 () Bool)

(declare-fun lt!39339 () Int)

(assert (=> d!30724 (>= lt!39339 0)))

(declare-fun e!75220 () Int)

(assert (=> d!30724 (= lt!39339 e!75220)))

(declare-fun c!28272 () Bool)

(assert (=> d!30724 (= c!28272 ((_ is Nil!2166) newList!20))))

(assert (=> d!30724 (= (size!1979 newList!20) lt!39339)))

(declare-fun b!130503 () Bool)

(assert (=> b!130503 (= e!75220 0)))

(declare-fun b!130504 () Bool)

(assert (=> b!130504 (= e!75220 (+ 1 (size!1979 (t!22758 newList!20))))))

(assert (= (and d!30724 c!28272) b!130503))

(assert (= (and d!30724 (not c!28272)) b!130504))

(assert (=> b!130504 m!115051))

(assert (=> b!130356 d!30724))

(assert (=> b!130402 d!30704))

(declare-fun d!30726 () Bool)

(declare-fun lt!39340 () Int)

(assert (=> d!30726 (>= lt!39340 0)))

(declare-fun e!75221 () Int)

(assert (=> d!30726 (= lt!39340 e!75221)))

(declare-fun c!28273 () Bool)

(assert (=> d!30726 (= c!28273 ((_ is Nil!2166) baseList!9))))

(assert (=> d!30726 (= (size!1979 baseList!9) lt!39340)))

(declare-fun b!130505 () Bool)

(assert (=> b!130505 (= e!75221 0)))

(declare-fun b!130506 () Bool)

(assert (=> b!130506 (= e!75221 (+ 1 (size!1979 (t!22758 baseList!9))))))

(assert (= (and d!30726 c!28273) b!130505))

(assert (= (and d!30726 (not c!28273)) b!130506))

(declare-fun m!115123 () Bool)

(assert (=> b!130506 m!115123))

(assert (=> b!130402 d!30726))

(declare-fun b!130507 () Bool)

(declare-fun e!75223 () Bool)

(declare-fun e!75222 () Bool)

(assert (=> b!130507 (= e!75223 e!75222)))

(declare-fun res!60347 () Bool)

(assert (=> b!130507 (=> (not res!60347) (not e!75222))))

(assert (=> b!130507 (= res!60347 (not ((_ is Nil!2166) (tail!263 lt!39282))))))

(declare-fun b!130508 () Bool)

(declare-fun res!60345 () Bool)

(assert (=> b!130508 (=> (not res!60345) (not e!75222))))

(assert (=> b!130508 (= res!60345 (= (head!517 (tail!263 baseList!9)) (head!517 (tail!263 lt!39282))))))

(declare-fun d!30728 () Bool)

(declare-fun e!75224 () Bool)

(assert (=> d!30728 e!75224))

(declare-fun res!60348 () Bool)

(assert (=> d!30728 (=> res!60348 e!75224)))

(declare-fun lt!39341 () Bool)

(assert (=> d!30728 (= res!60348 (not lt!39341))))

(assert (=> d!30728 (= lt!39341 e!75223)))

(declare-fun res!60346 () Bool)

(assert (=> d!30728 (=> res!60346 e!75223)))

(assert (=> d!30728 (= res!60346 ((_ is Nil!2166) (tail!263 baseList!9)))))

(assert (=> d!30728 (= (isPrefix!165 (tail!263 baseList!9) (tail!263 lt!39282)) lt!39341)))

(declare-fun b!130509 () Bool)

(assert (=> b!130509 (= e!75222 (isPrefix!165 (tail!263 (tail!263 baseList!9)) (tail!263 (tail!263 lt!39282))))))

(declare-fun b!130510 () Bool)

(assert (=> b!130510 (= e!75224 (>= (size!1979 (tail!263 lt!39282)) (size!1979 (tail!263 baseList!9))))))

(assert (= (and d!30728 (not res!60346)) b!130507))

(assert (= (and b!130507 res!60347) b!130508))

(assert (= (and b!130508 res!60345) b!130509))

(assert (= (and d!30728 (not res!60348)) b!130510))

(assert (=> b!130508 m!114969))

(declare-fun m!115125 () Bool)

(assert (=> b!130508 m!115125))

(assert (=> b!130508 m!114851))

(declare-fun m!115127 () Bool)

(assert (=> b!130508 m!115127))

(assert (=> b!130509 m!114969))

(declare-fun m!115129 () Bool)

(assert (=> b!130509 m!115129))

(assert (=> b!130509 m!114851))

(declare-fun m!115131 () Bool)

(assert (=> b!130509 m!115131))

(assert (=> b!130509 m!115129))

(assert (=> b!130509 m!115131))

(declare-fun m!115133 () Bool)

(assert (=> b!130509 m!115133))

(assert (=> b!130510 m!114851))

(declare-fun m!115135 () Bool)

(assert (=> b!130510 m!115135))

(assert (=> b!130510 m!114969))

(declare-fun m!115137 () Bool)

(assert (=> b!130510 m!115137))

(assert (=> b!130401 d!30728))

(declare-fun d!30730 () Bool)

(assert (=> d!30730 (= (tail!263 baseList!9) (t!22758 baseList!9))))

(assert (=> b!130401 d!30730))

(declare-fun d!30732 () Bool)

(assert (=> d!30732 (= (tail!263 lt!39282) (t!22758 lt!39282))))

(assert (=> b!130401 d!30732))

(declare-fun d!30734 () Bool)

(declare-fun res!60349 () Bool)

(declare-fun e!75225 () Bool)

(assert (=> d!30734 (=> res!60349 e!75225)))

(assert (=> d!30734 (= res!60349 ((_ is Nil!2166) (t!22758 lt!39282)))))

(assert (=> d!30734 (= (noDuplicate!62 (t!22758 lt!39282)) e!75225)))

(declare-fun b!130511 () Bool)

(declare-fun e!75226 () Bool)

(assert (=> b!130511 (= e!75225 e!75226)))

(declare-fun res!60350 () Bool)

(assert (=> b!130511 (=> (not res!60350) (not e!75226))))

(assert (=> b!130511 (= res!60350 (not (contains!346 (t!22758 (t!22758 lt!39282)) (h!7563 (t!22758 lt!39282)))))))

(declare-fun b!130512 () Bool)

(assert (=> b!130512 (= e!75226 (noDuplicate!62 (t!22758 (t!22758 lt!39282))))))

(assert (= (and d!30734 (not res!60349)) b!130511))

(assert (= (and b!130511 res!60350) b!130512))

(declare-fun m!115139 () Bool)

(assert (=> b!130511 m!115139))

(declare-fun m!115141 () Bool)

(assert (=> b!130512 m!115141))

(assert (=> b!130371 d!30734))

(declare-fun d!30736 () Bool)

(declare-fun lt!39342 () Bool)

(assert (=> d!30736 (= lt!39342 (select (content!281 (t!22758 lt!39282)) (h!7563 lt!39282)))))

(declare-fun e!75227 () Bool)

(assert (=> d!30736 (= lt!39342 e!75227)))

(declare-fun res!60352 () Bool)

(assert (=> d!30736 (=> (not res!60352) (not e!75227))))

(assert (=> d!30736 (= res!60352 ((_ is Cons!2166) (t!22758 lt!39282)))))

(assert (=> d!30736 (= (contains!346 (t!22758 lt!39282) (h!7563 lt!39282)) lt!39342)))

(declare-fun b!130513 () Bool)

(declare-fun e!75228 () Bool)

(assert (=> b!130513 (= e!75227 e!75228)))

(declare-fun res!60351 () Bool)

(assert (=> b!130513 (=> res!60351 e!75228)))

(assert (=> b!130513 (= res!60351 (= (h!7563 (t!22758 lt!39282)) (h!7563 lt!39282)))))

(declare-fun b!130514 () Bool)

(assert (=> b!130514 (= e!75228 (contains!346 (t!22758 (t!22758 lt!39282)) (h!7563 lt!39282)))))

(assert (= (and d!30736 res!60352) b!130513))

(assert (= (and b!130513 (not res!60351)) b!130514))

(assert (=> d!30736 m!115093))

(declare-fun m!115143 () Bool)

(assert (=> d!30736 m!115143))

(declare-fun m!115145 () Bool)

(assert (=> b!130514 m!115145))

(assert (=> b!130370 d!30736))

(declare-fun b!130516 () Bool)

(declare-fun e!75229 () List!2172)

(assert (=> b!130516 (= e!75229 (Cons!2166 (h!7563 (t!22758 lt!39282)) (++!446 (t!22758 (t!22758 lt!39282)) newList!20)))))

(declare-fun d!30738 () Bool)

(declare-fun e!75230 () Bool)

(assert (=> d!30738 e!75230))

(declare-fun res!60354 () Bool)

(assert (=> d!30738 (=> (not res!60354) (not e!75230))))

(declare-fun lt!39343 () List!2172)

(assert (=> d!30738 (= res!60354 (= (content!281 lt!39343) ((_ map or) (content!281 (t!22758 lt!39282)) (content!281 newList!20))))))

(assert (=> d!30738 (= lt!39343 e!75229)))

(declare-fun c!28274 () Bool)

(assert (=> d!30738 (= c!28274 ((_ is Nil!2166) (t!22758 lt!39282)))))

(assert (=> d!30738 (= (++!446 (t!22758 lt!39282) newList!20) lt!39343)))

(declare-fun b!130518 () Bool)

(assert (=> b!130518 (= e!75230 (or (not (= newList!20 Nil!2166)) (= lt!39343 (t!22758 lt!39282))))))

(declare-fun b!130517 () Bool)

(declare-fun res!60353 () Bool)

(assert (=> b!130517 (=> (not res!60353) (not e!75230))))

(assert (=> b!130517 (= res!60353 (= (size!1979 lt!39343) (+ (size!1979 (t!22758 lt!39282)) (size!1979 newList!20))))))

(declare-fun b!130515 () Bool)

(assert (=> b!130515 (= e!75229 newList!20)))

(assert (= (and d!30738 c!28274) b!130515))

(assert (= (and d!30738 (not c!28274)) b!130516))

(assert (= (and d!30738 res!60354) b!130517))

(assert (= (and b!130517 res!60353) b!130518))

(declare-fun m!115147 () Bool)

(assert (=> b!130516 m!115147))

(declare-fun m!115149 () Bool)

(assert (=> d!30738 m!115149))

(assert (=> d!30738 m!115093))

(assert (=> d!30738 m!114909))

(declare-fun m!115151 () Bool)

(assert (=> b!130517 m!115151))

(assert (=> b!130517 m!115085))

(assert (=> b!130517 m!114913))

(assert (=> b!130355 d!30738))

(declare-fun d!30740 () Bool)

(declare-fun res!60355 () Bool)

(declare-fun e!75231 () Bool)

(assert (=> d!30740 (=> res!60355 e!75231)))

(assert (=> d!30740 (= res!60355 ((_ is Nil!2166) (t!22758 lt!39286)))))

(assert (=> d!30740 (= (noDuplicate!62 (t!22758 lt!39286)) e!75231)))

(declare-fun b!130519 () Bool)

(declare-fun e!75232 () Bool)

(assert (=> b!130519 (= e!75231 e!75232)))

(declare-fun res!60356 () Bool)

(assert (=> b!130519 (=> (not res!60356) (not e!75232))))

(assert (=> b!130519 (= res!60356 (not (contains!346 (t!22758 (t!22758 lt!39286)) (h!7563 (t!22758 lt!39286)))))))

(declare-fun b!130520 () Bool)

(assert (=> b!130520 (= e!75232 (noDuplicate!62 (t!22758 (t!22758 lt!39286))))))

(assert (= (and d!30740 (not res!60355)) b!130519))

(assert (= (and b!130519 res!60356) b!130520))

(declare-fun m!115153 () Bool)

(assert (=> b!130519 m!115153))

(declare-fun m!115155 () Bool)

(assert (=> b!130520 m!115155))

(assert (=> b!130369 d!30740))

(declare-fun d!30742 () Bool)

(declare-fun lt!39344 () Bool)

(assert (=> d!30742 (= lt!39344 (select (content!281 (t!22758 lt!39286)) (h!7563 lt!39286)))))

(declare-fun e!75233 () Bool)

(assert (=> d!30742 (= lt!39344 e!75233)))

(declare-fun res!60358 () Bool)

(assert (=> d!30742 (=> (not res!60358) (not e!75233))))

(assert (=> d!30742 (= res!60358 ((_ is Cons!2166) (t!22758 lt!39286)))))

(assert (=> d!30742 (= (contains!346 (t!22758 lt!39286) (h!7563 lt!39286)) lt!39344)))

(declare-fun b!130521 () Bool)

(declare-fun e!75234 () Bool)

(assert (=> b!130521 (= e!75233 e!75234)))

(declare-fun res!60357 () Bool)

(assert (=> b!130521 (=> res!60357 e!75234)))

(assert (=> b!130521 (= res!60357 (= (h!7563 (t!22758 lt!39286)) (h!7563 lt!39286)))))

(declare-fun b!130522 () Bool)

(assert (=> b!130522 (= e!75234 (contains!346 (t!22758 (t!22758 lt!39286)) (h!7563 lt!39286)))))

(assert (= (and d!30742 res!60358) b!130521))

(assert (= (and b!130521 (not res!60357)) b!130522))

(assert (=> d!30742 m!114917))

(declare-fun m!115157 () Bool)

(assert (=> d!30742 m!115157))

(declare-fun m!115159 () Bool)

(assert (=> b!130522 m!115159))

(assert (=> b!130368 d!30742))

(declare-fun b!130523 () Bool)

(declare-fun e!75236 () Bool)

(declare-fun e!75235 () Bool)

(assert (=> b!130523 (= e!75236 e!75235)))

(declare-fun res!60361 () Bool)

(assert (=> b!130523 (=> (not res!60361) (not e!75235))))

(assert (=> b!130523 (= res!60361 (not ((_ is Nil!2166) (tail!263 lt!39286))))))

(declare-fun b!130524 () Bool)

(declare-fun res!60359 () Bool)

(assert (=> b!130524 (=> (not res!60359) (not e!75235))))

(assert (=> b!130524 (= res!60359 (= (head!517 (tail!263 lt!39282)) (head!517 (tail!263 lt!39286))))))

(declare-fun d!30744 () Bool)

(declare-fun e!75237 () Bool)

(assert (=> d!30744 e!75237))

(declare-fun res!60362 () Bool)

(assert (=> d!30744 (=> res!60362 e!75237)))

(declare-fun lt!39345 () Bool)

(assert (=> d!30744 (= res!60362 (not lt!39345))))

(assert (=> d!30744 (= lt!39345 e!75236)))

(declare-fun res!60360 () Bool)

(assert (=> d!30744 (=> res!60360 e!75236)))

(assert (=> d!30744 (= res!60360 ((_ is Nil!2166) (tail!263 lt!39282)))))

(assert (=> d!30744 (= (isPrefix!165 (tail!263 lt!39282) (tail!263 lt!39286)) lt!39345)))

(declare-fun b!130525 () Bool)

(assert (=> b!130525 (= e!75235 (isPrefix!165 (tail!263 (tail!263 lt!39282)) (tail!263 (tail!263 lt!39286))))))

(declare-fun b!130526 () Bool)

(assert (=> b!130526 (= e!75237 (>= (size!1979 (tail!263 lt!39286)) (size!1979 (tail!263 lt!39282))))))

(assert (= (and d!30744 (not res!60360)) b!130523))

(assert (= (and b!130523 res!60361) b!130524))

(assert (= (and b!130524 res!60359) b!130525))

(assert (= (and d!30744 (not res!60362)) b!130526))

(assert (=> b!130524 m!114851))

(assert (=> b!130524 m!115127))

(assert (=> b!130524 m!114853))

(declare-fun m!115161 () Bool)

(assert (=> b!130524 m!115161))

(assert (=> b!130525 m!114851))

(assert (=> b!130525 m!115131))

(assert (=> b!130525 m!114853))

(declare-fun m!115163 () Bool)

(assert (=> b!130525 m!115163))

(assert (=> b!130525 m!115131))

(assert (=> b!130525 m!115163))

(declare-fun m!115165 () Bool)

(assert (=> b!130525 m!115165))

(assert (=> b!130526 m!114853))

(declare-fun m!115167 () Bool)

(assert (=> b!130526 m!115167))

(assert (=> b!130526 m!114851))

(assert (=> b!130526 m!115135))

(assert (=> b!130303 d!30744))

(assert (=> b!130303 d!30732))

(declare-fun d!30746 () Bool)

(assert (=> d!30746 (= (tail!263 lt!39286) (t!22758 lt!39286))))

(assert (=> b!130303 d!30746))

(assert (=> b!130302 d!30686))

(declare-fun d!30748 () Bool)

(assert (=> d!30748 (= (head!517 lt!39286) (h!7563 lt!39286))))

(assert (=> b!130302 d!30748))

(declare-fun d!30750 () Bool)

(declare-fun c!28275 () Bool)

(assert (=> d!30750 (= c!28275 ((_ is Nil!2166) lt!39328))))

(declare-fun e!75238 () (InoxSet B!737))

(assert (=> d!30750 (= (content!281 lt!39328) e!75238)))

(declare-fun b!130527 () Bool)

(assert (=> b!130527 (= e!75238 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130528 () Bool)

(assert (=> b!130528 (= e!75238 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39328) true) (content!281 (t!22758 lt!39328))))))

(assert (= (and d!30750 c!28275) b!130527))

(assert (= (and d!30750 (not c!28275)) b!130528))

(declare-fun m!115169 () Bool)

(assert (=> b!130528 m!115169))

(declare-fun m!115171 () Bool)

(assert (=> b!130528 m!115171))

(assert (=> d!30682 d!30750))

(declare-fun d!30752 () Bool)

(declare-fun c!28276 () Bool)

(assert (=> d!30752 (= c!28276 ((_ is Nil!2166) lt!39282))))

(declare-fun e!75239 () (InoxSet B!737))

(assert (=> d!30752 (= (content!281 lt!39282) e!75239)))

(declare-fun b!130529 () Bool)

(assert (=> b!130529 (= e!75239 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130530 () Bool)

(assert (=> b!130530 (= e!75239 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39282) true) (content!281 (t!22758 lt!39282))))))

(assert (= (and d!30752 c!28276) b!130529))

(assert (= (and d!30752 (not c!28276)) b!130530))

(declare-fun m!115173 () Bool)

(assert (=> b!130530 m!115173))

(assert (=> b!130530 m!115093))

(assert (=> d!30682 d!30752))

(declare-fun d!30754 () Bool)

(declare-fun c!28277 () Bool)

(assert (=> d!30754 (= c!28277 ((_ is Nil!2166) (t!22758 newList!20)))))

(declare-fun e!75240 () (InoxSet B!737))

(assert (=> d!30754 (= (content!281 (t!22758 newList!20)) e!75240)))

(declare-fun b!130531 () Bool)

(assert (=> b!130531 (= e!75240 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130532 () Bool)

(assert (=> b!130532 (= e!75240 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 (t!22758 newList!20)) true) (content!281 (t!22758 (t!22758 newList!20)))))))

(assert (= (and d!30754 c!28277) b!130531))

(assert (= (and d!30754 (not c!28277)) b!130532))

(declare-fun m!115175 () Bool)

(assert (=> b!130532 m!115175))

(declare-fun m!115177 () Bool)

(assert (=> b!130532 m!115177))

(assert (=> d!30682 d!30754))

(declare-fun b!130533 () Bool)

(declare-fun e!75242 () Bool)

(declare-fun e!75241 () Bool)

(assert (=> b!130533 (= e!75242 e!75241)))

(declare-fun res!60365 () Bool)

(assert (=> b!130533 (=> (not res!60365) (not e!75241))))

(assert (=> b!130533 (= res!60365 (not ((_ is Nil!2166) lt!39317)))))

(declare-fun b!130534 () Bool)

(declare-fun res!60363 () Bool)

(assert (=> b!130534 (=> (not res!60363) (not e!75241))))

(assert (=> b!130534 (= res!60363 (= (head!517 lt!39282) (head!517 lt!39317)))))

(declare-fun d!30756 () Bool)

(declare-fun e!75243 () Bool)

(assert (=> d!30756 e!75243))

(declare-fun res!60366 () Bool)

(assert (=> d!30756 (=> res!60366 e!75243)))

(declare-fun lt!39346 () Bool)

(assert (=> d!30756 (= res!60366 (not lt!39346))))

(assert (=> d!30756 (= lt!39346 e!75242)))

(declare-fun res!60364 () Bool)

(assert (=> d!30756 (=> res!60364 e!75242)))

(assert (=> d!30756 (= res!60364 ((_ is Nil!2166) lt!39282))))

(assert (=> d!30756 (= (isPrefix!165 lt!39282 lt!39317) lt!39346)))

(declare-fun b!130535 () Bool)

(assert (=> b!130535 (= e!75241 (isPrefix!165 (tail!263 lt!39282) (tail!263 lt!39317)))))

(declare-fun b!130536 () Bool)

(assert (=> b!130536 (= e!75243 (>= (size!1979 lt!39317) (size!1979 lt!39282)))))

(assert (= (and d!30756 (not res!60364)) b!130533))

(assert (= (and b!130533 res!60365) b!130534))

(assert (= (and b!130534 res!60363) b!130535))

(assert (= (and d!30756 (not res!60366)) b!130536))

(assert (=> b!130534 m!114847))

(declare-fun m!115179 () Bool)

(assert (=> b!130534 m!115179))

(assert (=> b!130535 m!114851))

(declare-fun m!115181 () Bool)

(assert (=> b!130535 m!115181))

(assert (=> b!130535 m!114851))

(assert (=> b!130535 m!115181))

(declare-fun m!115183 () Bool)

(assert (=> b!130535 m!115183))

(declare-fun m!115185 () Bool)

(assert (=> b!130536 m!115185))

(assert (=> b!130536 m!114859))

(assert (=> b!130394 d!30756))

(declare-fun d!30758 () Bool)

(declare-fun res!60367 () Bool)

(declare-fun e!75244 () Bool)

(assert (=> d!30758 (=> res!60367 e!75244)))

(assert (=> d!30758 (= res!60367 ((_ is Nil!2166) lt!39317))))

(assert (=> d!30758 (= (noDuplicate!62 lt!39317) e!75244)))

(declare-fun b!130537 () Bool)

(declare-fun e!75245 () Bool)

(assert (=> b!130537 (= e!75244 e!75245)))

(declare-fun res!60368 () Bool)

(assert (=> b!130537 (=> (not res!60368) (not e!75245))))

(assert (=> b!130537 (= res!60368 (not (contains!346 (t!22758 lt!39317) (h!7563 lt!39317))))))

(declare-fun b!130538 () Bool)

(assert (=> b!130538 (= e!75245 (noDuplicate!62 (t!22758 lt!39317)))))

(assert (= (and d!30758 (not res!60367)) b!130537))

(assert (= (and b!130537 res!60368) b!130538))

(declare-fun m!115187 () Bool)

(assert (=> b!130537 m!115187))

(declare-fun m!115189 () Bool)

(assert (=> b!130538 m!115189))

(assert (=> d!30652 d!30758))

(declare-fun b!130555 () Bool)

(declare-fun res!60386 () Bool)

(declare-fun e!75256 () Bool)

(assert (=> b!130555 (=> (not res!60386) (not e!75256))))

(declare-fun res!60385 () List!2172)

(assert (=> b!130555 (= res!60386 (subseq!37 res!60385 (++!446 lt!39282 (t!22758 newList!20))))))

(declare-fun b!130556 () Bool)

(assert (=> b!130556 (= e!75256 (isPrefix!165 lt!39282 res!60385))))

(declare-fun d!30760 () Bool)

(assert (=> d!30760 e!75256))

(declare-fun res!60383 () Bool)

(assert (=> d!30760 (=> (not res!60383) (not e!75256))))

(assert (=> d!30760 (= res!60383 (noDuplicate!62 res!60385))))

(declare-fun e!75255 () Bool)

(assert (=> d!30760 e!75255))

(assert (=> d!30760 (= (choose!1654 lt!39282 (t!22758 newList!20)) res!60385)))

(declare-fun b!130554 () Bool)

(declare-fun res!60384 () Bool)

(assert (=> b!130554 (=> (not res!60384) (not e!75256))))

(assert (=> b!130554 (= res!60384 (= (content!281 (++!446 lt!39282 (t!22758 newList!20))) (content!281 res!60385)))))

(declare-fun b!130553 () Bool)

(declare-fun tp!70299 () Bool)

(assert (=> b!130553 (= e!75255 (and tp_is_empty!1381 tp!70299))))

(assert (= (and d!30760 ((_ is Cons!2166) res!60385)) b!130553))

(assert (= (and d!30760 res!60383) b!130554))

(assert (= (and b!130554 res!60384) b!130555))

(assert (= (and b!130555 res!60386) b!130556))

(assert (=> b!130555 m!114827))

(assert (=> b!130555 m!114827))

(declare-fun m!115203 () Bool)

(assert (=> b!130555 m!115203))

(declare-fun m!115205 () Bool)

(assert (=> b!130556 m!115205))

(declare-fun m!115207 () Bool)

(assert (=> d!30760 m!115207))

(assert (=> b!130554 m!114827))

(assert (=> b!130554 m!114827))

(assert (=> b!130554 m!114959))

(declare-fun m!115209 () Bool)

(assert (=> b!130554 m!115209))

(assert (=> d!30652 d!30760))

(assert (=> d!30652 d!30650))

(declare-fun b!130558 () Bool)

(declare-fun e!75260 () Bool)

(declare-fun e!75257 () Bool)

(assert (=> b!130558 (= e!75260 e!75257)))

(declare-fun res!60388 () Bool)

(assert (=> b!130558 (=> res!60388 e!75257)))

(declare-fun e!75259 () Bool)

(assert (=> b!130558 (= res!60388 e!75259)))

(declare-fun res!60387 () Bool)

(assert (=> b!130558 (=> (not res!60387) (not e!75259))))

(assert (=> b!130558 (= res!60387 (= (h!7563 lt!39317) (h!7563 (++!446 lt!39282 (t!22758 newList!20)))))))

(declare-fun d!30768 () Bool)

(declare-fun res!60390 () Bool)

(declare-fun e!75258 () Bool)

(assert (=> d!30768 (=> res!60390 e!75258)))

(assert (=> d!30768 (= res!60390 ((_ is Nil!2166) lt!39317))))

(assert (=> d!30768 (= (subseq!37 lt!39317 (++!446 lt!39282 (t!22758 newList!20))) e!75258)))

(declare-fun b!130557 () Bool)

(assert (=> b!130557 (= e!75258 e!75260)))

(declare-fun res!60389 () Bool)

(assert (=> b!130557 (=> (not res!60389) (not e!75260))))

(assert (=> b!130557 (= res!60389 ((_ is Cons!2166) (++!446 lt!39282 (t!22758 newList!20))))))

(declare-fun b!130559 () Bool)

(assert (=> b!130559 (= e!75259 (subseq!37 (t!22758 lt!39317) (t!22758 (++!446 lt!39282 (t!22758 newList!20)))))))

(declare-fun b!130560 () Bool)

(assert (=> b!130560 (= e!75257 (subseq!37 lt!39317 (t!22758 (++!446 lt!39282 (t!22758 newList!20)))))))

(assert (= (and d!30768 (not res!60390)) b!130557))

(assert (= (and b!130557 res!60389) b!130558))

(assert (= (and b!130558 res!60387) b!130559))

(assert (= (and b!130558 (not res!60388)) b!130560))

(declare-fun m!115211 () Bool)

(assert (=> b!130559 m!115211))

(declare-fun m!115213 () Bool)

(assert (=> b!130560 m!115213))

(assert (=> b!130393 d!30768))

(assert (=> b!130393 d!30682))

(declare-fun d!30770 () Bool)

(declare-fun c!28278 () Bool)

(assert (=> d!30770 (= c!28278 ((_ is Nil!2166) (++!446 lt!39282 (t!22758 newList!20))))))

(declare-fun e!75261 () (InoxSet B!737))

(assert (=> d!30770 (= (content!281 (++!446 lt!39282 (t!22758 newList!20))) e!75261)))

(declare-fun b!130561 () Bool)

(assert (=> b!130561 (= e!75261 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130562 () Bool)

(assert (=> b!130562 (= e!75261 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 (++!446 lt!39282 (t!22758 newList!20))) true) (content!281 (t!22758 (++!446 lt!39282 (t!22758 newList!20))))))))

(assert (= (and d!30770 c!28278) b!130561))

(assert (= (and d!30770 (not c!28278)) b!130562))

(declare-fun m!115215 () Bool)

(assert (=> b!130562 m!115215))

(declare-fun m!115217 () Bool)

(assert (=> b!130562 m!115217))

(assert (=> b!130392 d!30770))

(assert (=> b!130392 d!30682))

(declare-fun d!30772 () Bool)

(declare-fun c!28279 () Bool)

(assert (=> d!30772 (= c!28279 ((_ is Nil!2166) lt!39317))))

(declare-fun e!75264 () (InoxSet B!737))

(assert (=> d!30772 (= (content!281 lt!39317) e!75264)))

(declare-fun b!130565 () Bool)

(assert (=> b!130565 (= e!75264 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130566 () Bool)

(assert (=> b!130566 (= e!75264 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39317) true) (content!281 (t!22758 lt!39317))))))

(assert (= (and d!30772 c!28279) b!130565))

(assert (= (and d!30772 (not c!28279)) b!130566))

(declare-fun m!115219 () Bool)

(assert (=> b!130566 m!115219))

(declare-fun m!115221 () Bool)

(assert (=> b!130566 m!115221))

(assert (=> b!130392 d!30772))

(declare-fun b!130570 () Bool)

(declare-fun e!75270 () Bool)

(declare-fun e!75267 () Bool)

(assert (=> b!130570 (= e!75270 e!75267)))

(declare-fun res!60396 () Bool)

(assert (=> b!130570 (=> res!60396 e!75267)))

(declare-fun e!75269 () Bool)

(assert (=> b!130570 (= res!60396 e!75269)))

(declare-fun res!60395 () Bool)

(assert (=> b!130570 (=> (not res!60395) (not e!75269))))

(assert (=> b!130570 (= res!60395 (= (h!7563 lt!39286) (h!7563 (t!22758 lt!39281))))))

(declare-fun d!30774 () Bool)

(declare-fun res!60398 () Bool)

(declare-fun e!75268 () Bool)

(assert (=> d!30774 (=> res!60398 e!75268)))

(assert (=> d!30774 (= res!60398 ((_ is Nil!2166) lt!39286))))

(assert (=> d!30774 (= (subseq!37 lt!39286 (t!22758 lt!39281)) e!75268)))

(declare-fun b!130569 () Bool)

(assert (=> b!130569 (= e!75268 e!75270)))

(declare-fun res!60397 () Bool)

(assert (=> b!130569 (=> (not res!60397) (not e!75270))))

(assert (=> b!130569 (= res!60397 ((_ is Cons!2166) (t!22758 lt!39281)))))

(declare-fun b!130571 () Bool)

(assert (=> b!130571 (= e!75269 (subseq!37 (t!22758 lt!39286) (t!22758 (t!22758 lt!39281))))))

(declare-fun b!130572 () Bool)

(assert (=> b!130572 (= e!75267 (subseq!37 lt!39286 (t!22758 (t!22758 lt!39281))))))

(assert (= (and d!30774 (not res!60398)) b!130569))

(assert (= (and b!130569 res!60397) b!130570))

(assert (= (and b!130570 res!60395) b!130571))

(assert (= (and b!130570 (not res!60396)) b!130572))

(assert (=> b!130571 m!115107))

(declare-fun m!115223 () Bool)

(assert (=> b!130572 m!115223))

(assert (=> b!130334 d!30774))

(declare-fun d!30776 () Bool)

(declare-fun c!28280 () Bool)

(assert (=> d!30776 (= c!28280 ((_ is Nil!2166) (t!22758 (++!446 lt!39282 newList!20))))))

(declare-fun e!75271 () (InoxSet B!737))

(assert (=> d!30776 (= (content!281 (t!22758 (++!446 lt!39282 newList!20))) e!75271)))

(declare-fun b!130577 () Bool)

(assert (=> b!130577 (= e!75271 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130578 () Bool)

(assert (=> b!130578 (= e!75271 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 (t!22758 (++!446 lt!39282 newList!20))) true) (content!281 (t!22758 (t!22758 (++!446 lt!39282 newList!20))))))))

(assert (= (and d!30776 c!28280) b!130577))

(assert (= (and d!30776 (not c!28280)) b!130578))

(declare-fun m!115225 () Bool)

(assert (=> b!130578 m!115225))

(declare-fun m!115227 () Bool)

(assert (=> b!130578 m!115227))

(assert (=> b!130343 d!30776))

(declare-fun d!30778 () Bool)

(declare-fun lt!39348 () Bool)

(assert (=> d!30778 (= lt!39348 (select (content!281 (t!22758 baseList!9)) (h!7563 newList!20)))))

(declare-fun e!75272 () Bool)

(assert (=> d!30778 (= lt!39348 e!75272)))

(declare-fun res!60404 () Bool)

(assert (=> d!30778 (=> (not res!60404) (not e!75272))))

(assert (=> d!30778 (= res!60404 ((_ is Cons!2166) (t!22758 baseList!9)))))

(assert (=> d!30778 (= (contains!346 (t!22758 baseList!9) (h!7563 newList!20)) lt!39348)))

(declare-fun b!130579 () Bool)

(declare-fun e!75273 () Bool)

(assert (=> b!130579 (= e!75272 e!75273)))

(declare-fun res!60403 () Bool)

(assert (=> b!130579 (=> res!60403 e!75273)))

(assert (=> b!130579 (= res!60403 (= (h!7563 (t!22758 baseList!9)) (h!7563 newList!20)))))

(declare-fun b!130580 () Bool)

(assert (=> b!130580 (= e!75273 (contains!346 (t!22758 (t!22758 baseList!9)) (h!7563 newList!20)))))

(assert (= (and d!30778 res!60404) b!130579))

(assert (= (and b!130579 (not res!60403)) b!130580))

(assert (=> d!30778 m!115077))

(declare-fun m!115229 () Bool)

(assert (=> d!30778 m!115229))

(declare-fun m!115231 () Bool)

(assert (=> b!130580 m!115231))

(assert (=> b!130446 d!30778))

(declare-fun d!30780 () Bool)

(declare-fun lt!39349 () Int)

(assert (=> d!30780 (>= lt!39349 0)))

(declare-fun e!75274 () Int)

(assert (=> d!30780 (= lt!39349 e!75274)))

(declare-fun c!28281 () Bool)

(assert (=> d!30780 (= c!28281 ((_ is Nil!2166) lt!39324))))

(assert (=> d!30780 (= (size!1979 lt!39324) lt!39349)))

(declare-fun b!130581 () Bool)

(assert (=> b!130581 (= e!75274 0)))

(declare-fun b!130582 () Bool)

(assert (=> b!130582 (= e!75274 (+ 1 (size!1979 (t!22758 lt!39324))))))

(assert (= (and d!30780 c!28281) b!130581))

(assert (= (and d!30780 (not c!28281)) b!130582))

(declare-fun m!115233 () Bool)

(assert (=> b!130582 m!115233))

(assert (=> b!130425 d!30780))

(assert (=> b!130425 d!30726))

(declare-fun d!30782 () Bool)

(declare-fun lt!39350 () Int)

(assert (=> d!30782 (>= lt!39350 0)))

(declare-fun e!75275 () Int)

(assert (=> d!30782 (= lt!39350 e!75275)))

(declare-fun c!28282 () Bool)

(assert (=> d!30782 (= c!28282 ((_ is Nil!2166) lt!39280))))

(assert (=> d!30782 (= (size!1979 lt!39280) lt!39350)))

(declare-fun b!130583 () Bool)

(assert (=> b!130583 (= e!75275 0)))

(declare-fun b!130584 () Bool)

(assert (=> b!130584 (= e!75275 (+ 1 (size!1979 (t!22758 lt!39280))))))

(assert (= (and d!30782 c!28282) b!130583))

(assert (= (and d!30782 (not c!28282)) b!130584))

(declare-fun m!115235 () Bool)

(assert (=> b!130584 m!115235))

(assert (=> b!130425 d!30782))

(declare-fun b!130586 () Bool)

(declare-fun e!75276 () List!2172)

(assert (=> b!130586 (= e!75276 (Cons!2166 (h!7563 (t!22758 baseList!9)) (++!446 (t!22758 (t!22758 baseList!9)) lt!39280)))))

(declare-fun d!30784 () Bool)

(declare-fun e!75277 () Bool)

(assert (=> d!30784 e!75277))

(declare-fun res!60406 () Bool)

(assert (=> d!30784 (=> (not res!60406) (not e!75277))))

(declare-fun lt!39351 () List!2172)

(assert (=> d!30784 (= res!60406 (= (content!281 lt!39351) ((_ map or) (content!281 (t!22758 baseList!9)) (content!281 lt!39280))))))

(assert (=> d!30784 (= lt!39351 e!75276)))

(declare-fun c!28283 () Bool)

(assert (=> d!30784 (= c!28283 ((_ is Nil!2166) (t!22758 baseList!9)))))

(assert (=> d!30784 (= (++!446 (t!22758 baseList!9) lt!39280) lt!39351)))

(declare-fun b!130588 () Bool)

(assert (=> b!130588 (= e!75277 (or (not (= lt!39280 Nil!2166)) (= lt!39351 (t!22758 baseList!9))))))

(declare-fun b!130587 () Bool)

(declare-fun res!60405 () Bool)

(assert (=> b!130587 (=> (not res!60405) (not e!75277))))

(assert (=> b!130587 (= res!60405 (= (size!1979 lt!39351) (+ (size!1979 (t!22758 baseList!9)) (size!1979 lt!39280))))))

(declare-fun b!130585 () Bool)

(assert (=> b!130585 (= e!75276 lt!39280)))

(assert (= (and d!30784 c!28283) b!130585))

(assert (= (and d!30784 (not c!28283)) b!130586))

(assert (= (and d!30784 res!60406) b!130587))

(assert (= (and b!130587 res!60405) b!130588))

(declare-fun m!115237 () Bool)

(assert (=> b!130586 m!115237))

(declare-fun m!115239 () Bool)

(assert (=> d!30784 m!115239))

(assert (=> d!30784 m!115077))

(assert (=> d!30784 m!115025))

(declare-fun m!115241 () Bool)

(assert (=> b!130587 m!115241))

(assert (=> b!130587 m!115123))

(assert (=> b!130587 m!115029))

(assert (=> b!130424 d!30784))

(declare-fun d!30786 () Bool)

(declare-fun c!28284 () Bool)

(assert (=> d!30786 (= c!28284 ((_ is Nil!2166) lt!39304))))

(declare-fun e!75278 () (InoxSet B!737))

(assert (=> d!30786 (= (content!281 lt!39304) e!75278)))

(declare-fun b!130589 () Bool)

(assert (=> b!130589 (= e!75278 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130590 () Bool)

(assert (=> b!130590 (= e!75278 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 lt!39304) true) (content!281 (t!22758 lt!39304))))))

(assert (= (and d!30786 c!28284) b!130589))

(assert (= (and d!30786 (not c!28284)) b!130590))

(declare-fun m!115243 () Bool)

(assert (=> b!130590 m!115243))

(declare-fun m!115245 () Bool)

(assert (=> b!130590 m!115245))

(assert (=> d!30636 d!30786))

(assert (=> d!30636 d!30752))

(declare-fun d!30788 () Bool)

(declare-fun c!28285 () Bool)

(assert (=> d!30788 (= c!28285 ((_ is Nil!2166) newList!20))))

(declare-fun e!75279 () (InoxSet B!737))

(assert (=> d!30788 (= (content!281 newList!20) e!75279)))

(declare-fun b!130591 () Bool)

(assert (=> b!130591 (= e!75279 ((as const (Array B!737 Bool)) false))))

(declare-fun b!130592 () Bool)

(assert (=> b!130592 (= e!75279 ((_ map or) (store ((as const (Array B!737 Bool)) false) (h!7563 newList!20) true) (content!281 (t!22758 newList!20))))))

(assert (= (and d!30788 c!28285) b!130591))

(assert (= (and d!30788 (not c!28285)) b!130592))

(declare-fun m!115247 () Bool)

(assert (=> b!130592 m!115247))

(assert (=> b!130592 m!115047))

(assert (=> d!30636 d!30788))

(declare-fun d!30790 () Bool)

(declare-fun lt!39352 () Int)

(assert (=> d!30790 (>= lt!39352 0)))

(declare-fun e!75282 () Int)

(assert (=> d!30790 (= lt!39352 e!75282)))

(declare-fun c!28286 () Bool)

(assert (=> d!30790 (= c!28286 ((_ is Nil!2166) lt!39286))))

(assert (=> d!30790 (= (size!1979 lt!39286) lt!39352)))

(declare-fun b!130597 () Bool)

(assert (=> b!130597 (= e!75282 0)))

(declare-fun b!130598 () Bool)

(assert (=> b!130598 (= e!75282 (+ 1 (size!1979 (t!22758 lt!39286))))))

(assert (= (and d!30790 c!28286) b!130597))

(assert (= (and d!30790 (not c!28286)) b!130598))

(declare-fun m!115249 () Bool)

(assert (=> b!130598 m!115249))

(assert (=> b!130304 d!30790))

(assert (=> b!130304 d!30704))

(declare-fun b!130599 () Bool)

(declare-fun e!75283 () Bool)

(declare-fun tp!70303 () Bool)

(assert (=> b!130599 (= e!75283 (and tp_is_empty!1381 tp!70303))))

(assert (=> b!130458 (= tp!70296 e!75283)))

(assert (= (and b!130458 ((_ is Cons!2166) (t!22758 (t!22758 newList!20)))) b!130599))

(declare-fun b!130600 () Bool)

(declare-fun e!75284 () Bool)

(declare-fun tp!70304 () Bool)

(assert (=> b!130600 (= e!75284 (and tp_is_empty!1381 tp!70304))))

(assert (=> b!130457 (= tp!70295 e!75284)))

(assert (= (and b!130457 ((_ is Cons!2166) (t!22758 (t!22758 baseList!9)))) b!130600))

(check-sat (not b!130532) (not b!130493) (not b!130488) (not b!130489) (not b!130537) (not b!130514) (not b!130478) (not b!130498) (not b!130472) (not b!130590) (not d!30784) (not b!130536) (not b!130461) (not b!130599) (not b!130559) (not b!130509) (not b!130554) (not b!130519) (not b!130506) (not b!130485) (not b!130511) (not b!130553) (not b!130587) (not b!130508) (not b!130480) (not b!130560) (not b!130520) (not b!130468) (not b!130572) (not b!130538) (not b!130556) (not b!130580) (not b!130465) (not b!130598) (not d!30712) (not b!130494) (not b!130516) tp_is_empty!1381 (not b!130571) (not b!130562) (not b!130484) (not b!130504) (not d!30694) (not b!130528) (not b!130600) (not b!130525) (not b!130555) (not b!130517) (not d!30778) (not b!130460) (not b!130534) (not d!30692) (not d!30720) (not b!130522) (not b!130495) (not d!30760) (not b!130524) (not b!130535) (not b!130490) (not b!130510) (not d!30742) (not b!130512) (not b!130502) (not b!130500) (not d!30736) (not b!130578) (not b!130592) (not b!130464) (not b!130530) (not b!130470) (not b!130586) (not b!130584) (not b!130462) (not b!130496) (not d!30708) (not d!30738) (not b!130582) (not b!130566) (not b!130482) (not b!130526))
(check-sat)
