; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701426 () Bool)

(assert start!701426)

(declare-fun b!7230725 () Bool)

(assert (=> b!7230725 true))

(declare-fun b!7230718 () Bool)

(declare-fun e!4334667 () Bool)

(declare-fun tp!2033740 () Bool)

(assert (=> b!7230718 (= e!4334667 tp!2033740)))

(declare-fun res!2933680 () Bool)

(declare-fun e!4334662 () Bool)

(assert (=> start!701426 (=> (not res!2933680) (not e!4334662))))

(declare-datatypes ((C!37250 0))(
  ( (C!37251 (val!28573 Int)) )
))
(declare-datatypes ((Regex!18488 0))(
  ( (ElementMatch!18488 (c!1341438 C!37250)) (Concat!27333 (regOne!37488 Regex!18488) (regTwo!37488 Regex!18488)) (EmptyExpr!18488) (Star!18488 (reg!18817 Regex!18488)) (EmptyLang!18488) (Union!18488 (regOne!37489 Regex!18488) (regTwo!37489 Regex!18488)) )
))
(declare-datatypes ((List!70072 0))(
  ( (Nil!69948) (Cons!69948 (h!76396 Regex!18488) (t!384121 List!70072)) )
))
(declare-datatypes ((Context!14856 0))(
  ( (Context!14857 (exprs!7928 List!70072)) )
))
(declare-fun lt!2573110 () (Set Context!14856))

(declare-datatypes ((List!70073 0))(
  ( (Nil!69949) (Cons!69949 (h!76397 C!37250) (t!384122 List!70073)) )
))
(declare-fun s1!1971 () List!70073)

(declare-fun matchZipper!3398 ((Set Context!14856) List!70073) Bool)

(assert (=> start!701426 (= res!2933680 (matchZipper!3398 lt!2573110 s1!1971))))

(declare-fun ct1!232 () Context!14856)

(assert (=> start!701426 (= lt!2573110 (set.insert ct1!232 (as set.empty (Set Context!14856))))))

(assert (=> start!701426 e!4334662))

(declare-fun inv!89231 (Context!14856) Bool)

(assert (=> start!701426 (and (inv!89231 ct1!232) e!4334667)))

(declare-fun e!4334669 () Bool)

(assert (=> start!701426 e!4334669))

(declare-fun e!4334665 () Bool)

(assert (=> start!701426 e!4334665))

(declare-fun ct2!328 () Context!14856)

(declare-fun e!4334661 () Bool)

(assert (=> start!701426 (and (inv!89231 ct2!328) e!4334661)))

(declare-fun b!7230719 () Bool)

(declare-fun tp!2033737 () Bool)

(assert (=> b!7230719 (= e!4334661 tp!2033737)))

(declare-fun b!7230720 () Bool)

(declare-fun tp_is_empty!46441 () Bool)

(declare-fun tp!2033739 () Bool)

(assert (=> b!7230720 (= e!4334669 (and tp_is_empty!46441 tp!2033739))))

(declare-fun b!7230721 () Bool)

(declare-fun e!4334666 () Bool)

(assert (=> b!7230721 (= e!4334662 e!4334666)))

(declare-fun res!2933678 () Bool)

(assert (=> b!7230721 (=> (not res!2933678) (not e!4334666))))

(assert (=> b!7230721 (= res!2933678 (and (not (is-Nil!69948 (exprs!7928 ct1!232))) (is-Cons!69949 s1!1971)))))

(declare-fun lt!2573117 () List!70072)

(declare-fun ++!16276 (List!70072 List!70072) List!70072)

(assert (=> b!7230721 (= lt!2573117 (++!16276 (exprs!7928 ct1!232) (exprs!7928 ct2!328)))))

(declare-datatypes ((Unit!163511 0))(
  ( (Unit!163512) )
))
(declare-fun lt!2573113 () Unit!163511)

(declare-fun lambda!439186 () Int)

(declare-fun lemmaConcatPreservesForall!1297 (List!70072 List!70072 Int) Unit!163511)

(assert (=> b!7230721 (= lt!2573113 (lemmaConcatPreservesForall!1297 (exprs!7928 ct1!232) (exprs!7928 ct2!328) lambda!439186))))

(declare-fun b!7230722 () Bool)

(declare-fun e!4334664 () Bool)

(assert (=> b!7230722 (= e!4334666 e!4334664)))

(declare-fun res!2933679 () Bool)

(assert (=> b!7230722 (=> (not res!2933679) (not e!4334664))))

(declare-fun lt!2573111 () (Set Context!14856))

(assert (=> b!7230722 (= res!2933679 (matchZipper!3398 lt!2573111 (t!384122 s1!1971)))))

(declare-fun derivationStepZipper!3280 ((Set Context!14856) C!37250) (Set Context!14856))

(assert (=> b!7230722 (= lt!2573111 (derivationStepZipper!3280 lt!2573110 (h!76397 s1!1971)))))

(declare-fun b!7230723 () Bool)

(declare-fun e!4334668 () Bool)

(declare-fun forall!17309 (List!70072 Int) Bool)

(assert (=> b!7230723 (= e!4334668 (forall!17309 (exprs!7928 ct2!328) lambda!439186))))

(declare-fun b!7230724 () Bool)

(declare-fun tp!2033738 () Bool)

(assert (=> b!7230724 (= e!4334665 (and tp_is_empty!46441 tp!2033738))))

(declare-fun e!4334663 () Bool)

(assert (=> b!7230725 (= e!4334664 (not e!4334663))))

(declare-fun res!2933677 () Bool)

(assert (=> b!7230725 (=> res!2933677 e!4334663)))

(declare-fun lambda!439187 () Int)

(declare-fun exists!4119 ((Set Context!14856) Int) Bool)

(assert (=> b!7230725 (= res!2933677 (not (exists!4119 lt!2573111 lambda!439187)))))

(declare-datatypes ((List!70074 0))(
  ( (Nil!69950) (Cons!69950 (h!76398 Context!14856) (t!384123 List!70074)) )
))
(declare-fun lt!2573116 () List!70074)

(declare-fun exists!4120 (List!70074 Int) Bool)

(assert (=> b!7230725 (exists!4120 lt!2573116 lambda!439187)))

(declare-fun lt!2573118 () Unit!163511)

(declare-fun lemmaZipperMatchesExistsMatchingContext!631 (List!70074 List!70073) Unit!163511)

(assert (=> b!7230725 (= lt!2573118 (lemmaZipperMatchesExistsMatchingContext!631 lt!2573116 (t!384122 s1!1971)))))

(declare-fun toList!11345 ((Set Context!14856)) List!70074)

(assert (=> b!7230725 (= lt!2573116 (toList!11345 lt!2573111))))

(declare-fun b!7230726 () Bool)

(declare-fun res!2933675 () Bool)

(assert (=> b!7230726 (=> (not res!2933675) (not e!4334662))))

(declare-fun s2!1849 () List!70073)

(assert (=> b!7230726 (= res!2933675 (matchZipper!3398 (set.insert ct2!328 (as set.empty (Set Context!14856))) s2!1849))))

(declare-fun b!7230727 () Bool)

(assert (=> b!7230727 (= e!4334663 e!4334668)))

(declare-fun res!2933676 () Bool)

(assert (=> b!7230727 (=> res!2933676 e!4334668)))

(declare-fun lt!2573114 () Context!14856)

(assert (=> b!7230727 (= res!2933676 (not (forall!17309 (exprs!7928 lt!2573114) lambda!439186)))))

(declare-fun ++!16277 (List!70073 List!70073) List!70073)

(assert (=> b!7230727 (matchZipper!3398 (set.insert (Context!14857 (++!16276 (exprs!7928 lt!2573114) (exprs!7928 ct2!328))) (as set.empty (Set Context!14856))) (++!16277 (t!384122 s1!1971) s2!1849))))

(declare-fun lt!2573112 () Unit!163511)

(assert (=> b!7230727 (= lt!2573112 (lemmaConcatPreservesForall!1297 (exprs!7928 lt!2573114) (exprs!7928 ct2!328) lambda!439186))))

(declare-fun lt!2573115 () Unit!163511)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!279 (Context!14856 Context!14856 List!70073 List!70073) Unit!163511)

(assert (=> b!7230727 (= lt!2573115 (lemmaConcatenateContextMatchesConcatOfStrings!279 lt!2573114 ct2!328 (t!384122 s1!1971) s2!1849))))

(declare-fun getWitness!1998 ((Set Context!14856) Int) Context!14856)

(assert (=> b!7230727 (= lt!2573114 (getWitness!1998 lt!2573111 lambda!439187))))

(assert (= (and start!701426 res!2933680) b!7230726))

(assert (= (and b!7230726 res!2933675) b!7230721))

(assert (= (and b!7230721 res!2933678) b!7230722))

(assert (= (and b!7230722 res!2933679) b!7230725))

(assert (= (and b!7230725 (not res!2933677)) b!7230727))

(assert (= (and b!7230727 (not res!2933676)) b!7230723))

(assert (= start!701426 b!7230718))

(assert (= (and start!701426 (is-Cons!69949 s1!1971)) b!7230720))

(assert (= (and start!701426 (is-Cons!69949 s2!1849)) b!7230724))

(assert (= start!701426 b!7230719))

(declare-fun m!7899160 () Bool)

(assert (=> b!7230721 m!7899160))

(declare-fun m!7899162 () Bool)

(assert (=> b!7230721 m!7899162))

(declare-fun m!7899164 () Bool)

(assert (=> b!7230722 m!7899164))

(declare-fun m!7899166 () Bool)

(assert (=> b!7230722 m!7899166))

(declare-fun m!7899168 () Bool)

(assert (=> b!7230723 m!7899168))

(declare-fun m!7899170 () Bool)

(assert (=> start!701426 m!7899170))

(declare-fun m!7899172 () Bool)

(assert (=> start!701426 m!7899172))

(declare-fun m!7899174 () Bool)

(assert (=> start!701426 m!7899174))

(declare-fun m!7899176 () Bool)

(assert (=> start!701426 m!7899176))

(declare-fun m!7899178 () Bool)

(assert (=> b!7230725 m!7899178))

(declare-fun m!7899180 () Bool)

(assert (=> b!7230725 m!7899180))

(declare-fun m!7899182 () Bool)

(assert (=> b!7230725 m!7899182))

(declare-fun m!7899184 () Bool)

(assert (=> b!7230725 m!7899184))

(declare-fun m!7899186 () Bool)

(assert (=> b!7230726 m!7899186))

(assert (=> b!7230726 m!7899186))

(declare-fun m!7899188 () Bool)

(assert (=> b!7230726 m!7899188))

(declare-fun m!7899190 () Bool)

(assert (=> b!7230727 m!7899190))

(declare-fun m!7899192 () Bool)

(assert (=> b!7230727 m!7899192))

(declare-fun m!7899194 () Bool)

(assert (=> b!7230727 m!7899194))

(declare-fun m!7899196 () Bool)

(assert (=> b!7230727 m!7899196))

(assert (=> b!7230727 m!7899190))

(declare-fun m!7899198 () Bool)

(assert (=> b!7230727 m!7899198))

(declare-fun m!7899200 () Bool)

(assert (=> b!7230727 m!7899200))

(assert (=> b!7230727 m!7899198))

(declare-fun m!7899202 () Bool)

(assert (=> b!7230727 m!7899202))

(declare-fun m!7899204 () Bool)

(assert (=> b!7230727 m!7899204))

(push 1)

(assert (not b!7230720))

(assert (not b!7230723))

(assert (not b!7230721))

(assert (not b!7230718))

(assert (not b!7230719))

(assert (not b!7230726))

(assert (not b!7230722))

(assert (not b!7230727))

(assert tp_is_empty!46441)

(assert (not start!701426))

(assert (not b!7230725))

(assert (not b!7230724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2245509 () Bool)

(declare-fun lt!2573148 () Bool)

(assert (=> d!2245509 (= lt!2573148 (exists!4120 (toList!11345 lt!2573111) lambda!439187))))

(declare-fun choose!55493 ((Set Context!14856) Int) Bool)

(assert (=> d!2245509 (= lt!2573148 (choose!55493 lt!2573111 lambda!439187))))

(assert (=> d!2245509 (= (exists!4119 lt!2573111 lambda!439187) lt!2573148)))

(declare-fun bs!1902445 () Bool)

(assert (= bs!1902445 d!2245509))

(assert (=> bs!1902445 m!7899184))

(assert (=> bs!1902445 m!7899184))

(declare-fun m!7899252 () Bool)

(assert (=> bs!1902445 m!7899252))

(declare-fun m!7899254 () Bool)

(assert (=> bs!1902445 m!7899254))

(assert (=> b!7230725 d!2245509))

(declare-fun bs!1902446 () Bool)

(declare-fun d!2245511 () Bool)

(assert (= bs!1902446 (and d!2245511 b!7230725)))

(declare-fun lambda!439204 () Int)

(assert (=> bs!1902446 (not (= lambda!439204 lambda!439187))))

(assert (=> d!2245511 true))

(declare-fun order!28807 () Int)

(declare-fun dynLambda!28502 (Int Int) Int)

(assert (=> d!2245511 (< (dynLambda!28502 order!28807 lambda!439187) (dynLambda!28502 order!28807 lambda!439204))))

(declare-fun forall!17311 (List!70074 Int) Bool)

(assert (=> d!2245511 (= (exists!4120 lt!2573116 lambda!439187) (not (forall!17311 lt!2573116 lambda!439204)))))

(declare-fun bs!1902447 () Bool)

(assert (= bs!1902447 d!2245511))

(declare-fun m!7899256 () Bool)

(assert (=> bs!1902447 m!7899256))

(assert (=> b!7230725 d!2245511))

(declare-fun bs!1902448 () Bool)

(declare-fun d!2245513 () Bool)

(assert (= bs!1902448 (and d!2245513 b!7230725)))

(declare-fun lambda!439207 () Int)

(assert (=> bs!1902448 (= lambda!439207 lambda!439187)))

(declare-fun bs!1902449 () Bool)

(assert (= bs!1902449 (and d!2245513 d!2245511)))

(assert (=> bs!1902449 (not (= lambda!439207 lambda!439204))))

(assert (=> d!2245513 true))

(assert (=> d!2245513 (exists!4120 lt!2573116 lambda!439207)))

(declare-fun lt!2573151 () Unit!163511)

(declare-fun choose!55494 (List!70074 List!70073) Unit!163511)

(assert (=> d!2245513 (= lt!2573151 (choose!55494 lt!2573116 (t!384122 s1!1971)))))

(declare-fun content!14364 (List!70074) (Set Context!14856))

(assert (=> d!2245513 (matchZipper!3398 (content!14364 lt!2573116) (t!384122 s1!1971))))

(assert (=> d!2245513 (= (lemmaZipperMatchesExistsMatchingContext!631 lt!2573116 (t!384122 s1!1971)) lt!2573151)))

(declare-fun bs!1902450 () Bool)

(assert (= bs!1902450 d!2245513))

(declare-fun m!7899258 () Bool)

(assert (=> bs!1902450 m!7899258))

(declare-fun m!7899260 () Bool)

(assert (=> bs!1902450 m!7899260))

(declare-fun m!7899262 () Bool)

(assert (=> bs!1902450 m!7899262))

(assert (=> bs!1902450 m!7899262))

(declare-fun m!7899264 () Bool)

(assert (=> bs!1902450 m!7899264))

(assert (=> b!7230725 d!2245513))

(declare-fun d!2245517 () Bool)

(declare-fun e!4334699 () Bool)

(assert (=> d!2245517 e!4334699))

(declare-fun res!2933701 () Bool)

(assert (=> d!2245517 (=> (not res!2933701) (not e!4334699))))

(declare-fun lt!2573154 () List!70074)

(declare-fun noDuplicate!2916 (List!70074) Bool)

(assert (=> d!2245517 (= res!2933701 (noDuplicate!2916 lt!2573154))))

(declare-fun choose!55495 ((Set Context!14856)) List!70074)

(assert (=> d!2245517 (= lt!2573154 (choose!55495 lt!2573111))))

(assert (=> d!2245517 (= (toList!11345 lt!2573111) lt!2573154)))

(declare-fun b!7230766 () Bool)

(assert (=> b!7230766 (= e!4334699 (= (content!14364 lt!2573154) lt!2573111))))

(assert (= (and d!2245517 res!2933701) b!7230766))

(declare-fun m!7899266 () Bool)

(assert (=> d!2245517 m!7899266))

(declare-fun m!7899268 () Bool)

(assert (=> d!2245517 m!7899268))

(declare-fun m!7899270 () Bool)

(assert (=> b!7230766 m!7899270))

(assert (=> b!7230725 d!2245517))

(declare-fun d!2245519 () Bool)

(declare-fun c!1341452 () Bool)

(declare-fun isEmpty!40315 (List!70073) Bool)

(assert (=> d!2245519 (= c!1341452 (isEmpty!40315 s2!1849))))

(declare-fun e!4334704 () Bool)

(assert (=> d!2245519 (= (matchZipper!3398 (set.insert ct2!328 (as set.empty (Set Context!14856))) s2!1849) e!4334704)))

(declare-fun b!7230775 () Bool)

(declare-fun nullableZipper!2804 ((Set Context!14856)) Bool)

(assert (=> b!7230775 (= e!4334704 (nullableZipper!2804 (set.insert ct2!328 (as set.empty (Set Context!14856)))))))

(declare-fun b!7230776 () Bool)

(declare-fun head!14790 (List!70073) C!37250)

(declare-fun tail!14105 (List!70073) List!70073)

(assert (=> b!7230776 (= e!4334704 (matchZipper!3398 (derivationStepZipper!3280 (set.insert ct2!328 (as set.empty (Set Context!14856))) (head!14790 s2!1849)) (tail!14105 s2!1849)))))

(assert (= (and d!2245519 c!1341452) b!7230775))

(assert (= (and d!2245519 (not c!1341452)) b!7230776))

(declare-fun m!7899272 () Bool)

(assert (=> d!2245519 m!7899272))

(assert (=> b!7230775 m!7899186))

(declare-fun m!7899274 () Bool)

(assert (=> b!7230775 m!7899274))

(declare-fun m!7899276 () Bool)

(assert (=> b!7230776 m!7899276))

(assert (=> b!7230776 m!7899186))

(assert (=> b!7230776 m!7899276))

(declare-fun m!7899278 () Bool)

(assert (=> b!7230776 m!7899278))

(declare-fun m!7899280 () Bool)

(assert (=> b!7230776 m!7899280))

(assert (=> b!7230776 m!7899278))

(assert (=> b!7230776 m!7899280))

(declare-fun m!7899282 () Bool)

(assert (=> b!7230776 m!7899282))

(assert (=> b!7230726 d!2245519))

(declare-fun b!7230794 () Bool)

(declare-fun e!4334713 () List!70072)

(assert (=> b!7230794 (= e!4334713 (Cons!69948 (h!76396 (exprs!7928 ct1!232)) (++!16276 (t!384121 (exprs!7928 ct1!232)) (exprs!7928 ct2!328))))))

(declare-fun d!2245521 () Bool)

(declare-fun e!4334714 () Bool)

(assert (=> d!2245521 e!4334714))

(declare-fun res!2933712 () Bool)

(assert (=> d!2245521 (=> (not res!2933712) (not e!4334714))))

(declare-fun lt!2573160 () List!70072)

(declare-fun content!14365 (List!70072) (Set Regex!18488))

(assert (=> d!2245521 (= res!2933712 (= (content!14365 lt!2573160) (set.union (content!14365 (exprs!7928 ct1!232)) (content!14365 (exprs!7928 ct2!328)))))))

(assert (=> d!2245521 (= lt!2573160 e!4334713)))

(declare-fun c!1341456 () Bool)

(assert (=> d!2245521 (= c!1341456 (is-Nil!69948 (exprs!7928 ct1!232)))))

(assert (=> d!2245521 (= (++!16276 (exprs!7928 ct1!232) (exprs!7928 ct2!328)) lt!2573160)))

(declare-fun b!7230795 () Bool)

(declare-fun res!2933713 () Bool)

(assert (=> b!7230795 (=> (not res!2933713) (not e!4334714))))

(declare-fun size!41542 (List!70072) Int)

(assert (=> b!7230795 (= res!2933713 (= (size!41542 lt!2573160) (+ (size!41542 (exprs!7928 ct1!232)) (size!41542 (exprs!7928 ct2!328)))))))

(declare-fun b!7230793 () Bool)

(assert (=> b!7230793 (= e!4334713 (exprs!7928 ct2!328))))

(declare-fun b!7230796 () Bool)

(assert (=> b!7230796 (= e!4334714 (or (not (= (exprs!7928 ct2!328) Nil!69948)) (= lt!2573160 (exprs!7928 ct1!232))))))

(assert (= (and d!2245521 c!1341456) b!7230793))

(assert (= (and d!2245521 (not c!1341456)) b!7230794))

(assert (= (and d!2245521 res!2933712) b!7230795))

(assert (= (and b!7230795 res!2933713) b!7230796))

(declare-fun m!7899284 () Bool)

(assert (=> b!7230794 m!7899284))

(declare-fun m!7899286 () Bool)

(assert (=> d!2245521 m!7899286))

(declare-fun m!7899288 () Bool)

(assert (=> d!2245521 m!7899288))

(declare-fun m!7899290 () Bool)

(assert (=> d!2245521 m!7899290))

(declare-fun m!7899292 () Bool)

(assert (=> b!7230795 m!7899292))

(declare-fun m!7899294 () Bool)

(assert (=> b!7230795 m!7899294))

(declare-fun m!7899296 () Bool)

(assert (=> b!7230795 m!7899296))

(assert (=> b!7230721 d!2245521))

(declare-fun d!2245523 () Bool)

(assert (=> d!2245523 (forall!17309 (++!16276 (exprs!7928 ct1!232) (exprs!7928 ct2!328)) lambda!439186)))

(declare-fun lt!2573163 () Unit!163511)

(declare-fun choose!55496 (List!70072 List!70072 Int) Unit!163511)

(assert (=> d!2245523 (= lt!2573163 (choose!55496 (exprs!7928 ct1!232) (exprs!7928 ct2!328) lambda!439186))))

(assert (=> d!2245523 (forall!17309 (exprs!7928 ct1!232) lambda!439186)))

(assert (=> d!2245523 (= (lemmaConcatPreservesForall!1297 (exprs!7928 ct1!232) (exprs!7928 ct2!328) lambda!439186) lt!2573163)))

(declare-fun bs!1902451 () Bool)

(assert (= bs!1902451 d!2245523))

(assert (=> bs!1902451 m!7899160))

(assert (=> bs!1902451 m!7899160))

(declare-fun m!7899312 () Bool)

(assert (=> bs!1902451 m!7899312))

(declare-fun m!7899314 () Bool)

(assert (=> bs!1902451 m!7899314))

(declare-fun m!7899316 () Bool)

(assert (=> bs!1902451 m!7899316))

(assert (=> b!7230721 d!2245523))

(declare-fun d!2245527 () Bool)

(assert (=> d!2245527 (forall!17309 (++!16276 (exprs!7928 lt!2573114) (exprs!7928 ct2!328)) lambda!439186)))

(declare-fun lt!2573164 () Unit!163511)

(assert (=> d!2245527 (= lt!2573164 (choose!55496 (exprs!7928 lt!2573114) (exprs!7928 ct2!328) lambda!439186))))

(assert (=> d!2245527 (forall!17309 (exprs!7928 lt!2573114) lambda!439186)))

(assert (=> d!2245527 (= (lemmaConcatPreservesForall!1297 (exprs!7928 lt!2573114) (exprs!7928 ct2!328) lambda!439186) lt!2573164)))

(declare-fun bs!1902452 () Bool)

(assert (= bs!1902452 d!2245527))

(assert (=> bs!1902452 m!7899204))

(assert (=> bs!1902452 m!7899204))

(declare-fun m!7899318 () Bool)

(assert (=> bs!1902452 m!7899318))

(declare-fun m!7899320 () Bool)

(assert (=> bs!1902452 m!7899320))

(assert (=> bs!1902452 m!7899196))

(assert (=> b!7230727 d!2245527))

(declare-fun d!2245529 () Bool)

(declare-fun c!1341457 () Bool)

(assert (=> d!2245529 (= c!1341457 (isEmpty!40315 (++!16277 (t!384122 s1!1971) s2!1849)))))

(declare-fun e!4334715 () Bool)

(assert (=> d!2245529 (= (matchZipper!3398 (set.insert (Context!14857 (++!16276 (exprs!7928 lt!2573114) (exprs!7928 ct2!328))) (as set.empty (Set Context!14856))) (++!16277 (t!384122 s1!1971) s2!1849)) e!4334715)))

(declare-fun b!7230797 () Bool)

(assert (=> b!7230797 (= e!4334715 (nullableZipper!2804 (set.insert (Context!14857 (++!16276 (exprs!7928 lt!2573114) (exprs!7928 ct2!328))) (as set.empty (Set Context!14856)))))))

(declare-fun b!7230798 () Bool)

(assert (=> b!7230798 (= e!4334715 (matchZipper!3398 (derivationStepZipper!3280 (set.insert (Context!14857 (++!16276 (exprs!7928 lt!2573114) (exprs!7928 ct2!328))) (as set.empty (Set Context!14856))) (head!14790 (++!16277 (t!384122 s1!1971) s2!1849))) (tail!14105 (++!16277 (t!384122 s1!1971) s2!1849))))))

(assert (= (and d!2245529 c!1341457) b!7230797))

(assert (= (and d!2245529 (not c!1341457)) b!7230798))

(assert (=> d!2245529 m!7899198))

(declare-fun m!7899322 () Bool)

(assert (=> d!2245529 m!7899322))

(assert (=> b!7230797 m!7899190))

(declare-fun m!7899324 () Bool)

(assert (=> b!7230797 m!7899324))

(assert (=> b!7230798 m!7899198))

(declare-fun m!7899326 () Bool)

(assert (=> b!7230798 m!7899326))

(assert (=> b!7230798 m!7899190))

(assert (=> b!7230798 m!7899326))

(declare-fun m!7899328 () Bool)

(assert (=> b!7230798 m!7899328))

(assert (=> b!7230798 m!7899198))

(declare-fun m!7899330 () Bool)

(assert (=> b!7230798 m!7899330))

(assert (=> b!7230798 m!7899328))

(assert (=> b!7230798 m!7899330))

(declare-fun m!7899332 () Bool)

(assert (=> b!7230798 m!7899332))

(assert (=> b!7230727 d!2245529))

(declare-fun d!2245531 () Bool)

(declare-fun res!2933718 () Bool)

(declare-fun e!4334720 () Bool)

(assert (=> d!2245531 (=> res!2933718 e!4334720)))

(assert (=> d!2245531 (= res!2933718 (is-Nil!69948 (exprs!7928 lt!2573114)))))

(assert (=> d!2245531 (= (forall!17309 (exprs!7928 lt!2573114) lambda!439186) e!4334720)))

(declare-fun b!7230803 () Bool)

(declare-fun e!4334721 () Bool)

(assert (=> b!7230803 (= e!4334720 e!4334721)))

(declare-fun res!2933719 () Bool)

(assert (=> b!7230803 (=> (not res!2933719) (not e!4334721))))

(declare-fun dynLambda!28503 (Int Regex!18488) Bool)

(assert (=> b!7230803 (= res!2933719 (dynLambda!28503 lambda!439186 (h!76396 (exprs!7928 lt!2573114))))))

(declare-fun b!7230804 () Bool)

(assert (=> b!7230804 (= e!4334721 (forall!17309 (t!384121 (exprs!7928 lt!2573114)) lambda!439186))))

(assert (= (and d!2245531 (not res!2933718)) b!7230803))

(assert (= (and b!7230803 res!2933719) b!7230804))

(declare-fun b_lambda!277035 () Bool)

(assert (=> (not b_lambda!277035) (not b!7230803)))

(declare-fun m!7899334 () Bool)

(assert (=> b!7230803 m!7899334))

(declare-fun m!7899336 () Bool)

(assert (=> b!7230804 m!7899336))

(assert (=> b!7230727 d!2245531))

(declare-fun d!2245533 () Bool)

(declare-fun e!4334728 () Bool)

(assert (=> d!2245533 e!4334728))

(declare-fun res!2933726 () Bool)

(assert (=> d!2245533 (=> (not res!2933726) (not e!4334728))))

(declare-fun lt!2573170 () Context!14856)

(declare-fun dynLambda!28504 (Int Context!14856) Bool)

(assert (=> d!2245533 (= res!2933726 (dynLambda!28504 lambda!439187 lt!2573170))))

(declare-fun getWitness!2000 (List!70074 Int) Context!14856)

(assert (=> d!2245533 (= lt!2573170 (getWitness!2000 (toList!11345 lt!2573111) lambda!439187))))

(assert (=> d!2245533 (exists!4119 lt!2573111 lambda!439187)))

(assert (=> d!2245533 (= (getWitness!1998 lt!2573111 lambda!439187) lt!2573170)))

(declare-fun b!7230811 () Bool)

(assert (=> b!7230811 (= e!4334728 (set.member lt!2573170 lt!2573111))))

(assert (= (and d!2245533 res!2933726) b!7230811))

(declare-fun b_lambda!277037 () Bool)

(assert (=> (not b_lambda!277037) (not d!2245533)))

(declare-fun m!7899344 () Bool)

(assert (=> d!2245533 m!7899344))

(assert (=> d!2245533 m!7899184))

(assert (=> d!2245533 m!7899184))

(declare-fun m!7899346 () Bool)

(assert (=> d!2245533 m!7899346))

(assert (=> d!2245533 m!7899178))

(declare-fun m!7899348 () Bool)

(assert (=> b!7230811 m!7899348))

(assert (=> b!7230727 d!2245533))

(declare-fun bs!1902455 () Bool)

(declare-fun d!2245537 () Bool)

(assert (= bs!1902455 (and d!2245537 b!7230721)))

(declare-fun lambda!439210 () Int)

(assert (=> bs!1902455 (= lambda!439210 lambda!439186)))

(assert (=> d!2245537 (matchZipper!3398 (set.insert (Context!14857 (++!16276 (exprs!7928 lt!2573114) (exprs!7928 ct2!328))) (as set.empty (Set Context!14856))) (++!16277 (t!384122 s1!1971) s2!1849))))

(declare-fun lt!2573179 () Unit!163511)

(assert (=> d!2245537 (= lt!2573179 (lemmaConcatPreservesForall!1297 (exprs!7928 lt!2573114) (exprs!7928 ct2!328) lambda!439210))))

(declare-fun lt!2573178 () Unit!163511)

(declare-fun choose!55497 (Context!14856 Context!14856 List!70073 List!70073) Unit!163511)

(assert (=> d!2245537 (= lt!2573178 (choose!55497 lt!2573114 ct2!328 (t!384122 s1!1971) s2!1849))))

(assert (=> d!2245537 (matchZipper!3398 (set.insert lt!2573114 (as set.empty (Set Context!14856))) (t!384122 s1!1971))))

(assert (=> d!2245537 (= (lemmaConcatenateContextMatchesConcatOfStrings!279 lt!2573114 ct2!328 (t!384122 s1!1971) s2!1849) lt!2573178)))

(declare-fun bs!1902456 () Bool)

(assert (= bs!1902456 d!2245537))

(declare-fun m!7899358 () Bool)

(assert (=> bs!1902456 m!7899358))

(declare-fun m!7899360 () Bool)

(assert (=> bs!1902456 m!7899360))

(assert (=> bs!1902456 m!7899190))

(assert (=> bs!1902456 m!7899198))

(assert (=> bs!1902456 m!7899200))

(declare-fun m!7899362 () Bool)

(assert (=> bs!1902456 m!7899362))

(assert (=> bs!1902456 m!7899204))

(declare-fun m!7899364 () Bool)

(assert (=> bs!1902456 m!7899364))

(assert (=> bs!1902456 m!7899198))

(assert (=> bs!1902456 m!7899190))

(assert (=> bs!1902456 m!7899358))

(assert (=> b!7230727 d!2245537))

(declare-fun b!7230825 () Bool)

(declare-fun e!4334735 () List!70073)

(assert (=> b!7230825 (= e!4334735 (Cons!69949 (h!76397 (t!384122 s1!1971)) (++!16277 (t!384122 (t!384122 s1!1971)) s2!1849)))))

(declare-fun e!4334736 () Bool)

(declare-fun b!7230827 () Bool)

(declare-fun lt!2573182 () List!70073)

(assert (=> b!7230827 (= e!4334736 (or (not (= s2!1849 Nil!69949)) (= lt!2573182 (t!384122 s1!1971))))))

(declare-fun d!2245543 () Bool)

(assert (=> d!2245543 e!4334736))

(declare-fun res!2933734 () Bool)

(assert (=> d!2245543 (=> (not res!2933734) (not e!4334736))))

(declare-fun content!14366 (List!70073) (Set C!37250))

(assert (=> d!2245543 (= res!2933734 (= (content!14366 lt!2573182) (set.union (content!14366 (t!384122 s1!1971)) (content!14366 s2!1849))))))

(assert (=> d!2245543 (= lt!2573182 e!4334735)))

(declare-fun c!1341460 () Bool)

(assert (=> d!2245543 (= c!1341460 (is-Nil!69949 (t!384122 s1!1971)))))

(assert (=> d!2245543 (= (++!16277 (t!384122 s1!1971) s2!1849) lt!2573182)))

(declare-fun b!7230824 () Bool)

(assert (=> b!7230824 (= e!4334735 s2!1849)))

(declare-fun b!7230826 () Bool)

(declare-fun res!2933733 () Bool)

(assert (=> b!7230826 (=> (not res!2933733) (not e!4334736))))

(declare-fun size!41543 (List!70073) Int)

(assert (=> b!7230826 (= res!2933733 (= (size!41543 lt!2573182) (+ (size!41543 (t!384122 s1!1971)) (size!41543 s2!1849))))))

(assert (= (and d!2245543 c!1341460) b!7230824))

(assert (= (and d!2245543 (not c!1341460)) b!7230825))

(assert (= (and d!2245543 res!2933734) b!7230826))

(assert (= (and b!7230826 res!2933733) b!7230827))

(declare-fun m!7899368 () Bool)

(assert (=> b!7230825 m!7899368))

(declare-fun m!7899370 () Bool)

(assert (=> d!2245543 m!7899370))

(declare-fun m!7899372 () Bool)

(assert (=> d!2245543 m!7899372))

(declare-fun m!7899374 () Bool)

(assert (=> d!2245543 m!7899374))

(declare-fun m!7899376 () Bool)

(assert (=> b!7230826 m!7899376))

(declare-fun m!7899378 () Bool)

(assert (=> b!7230826 m!7899378))

(declare-fun m!7899380 () Bool)

(assert (=> b!7230826 m!7899380))

(assert (=> b!7230727 d!2245543))

(declare-fun b!7230829 () Bool)

(declare-fun e!4334737 () List!70072)

(assert (=> b!7230829 (= e!4334737 (Cons!69948 (h!76396 (exprs!7928 lt!2573114)) (++!16276 (t!384121 (exprs!7928 lt!2573114)) (exprs!7928 ct2!328))))))

(declare-fun d!2245547 () Bool)

(declare-fun e!4334738 () Bool)

(assert (=> d!2245547 e!4334738))

(declare-fun res!2933735 () Bool)

(assert (=> d!2245547 (=> (not res!2933735) (not e!4334738))))

(declare-fun lt!2573183 () List!70072)

(assert (=> d!2245547 (= res!2933735 (= (content!14365 lt!2573183) (set.union (content!14365 (exprs!7928 lt!2573114)) (content!14365 (exprs!7928 ct2!328)))))))

(assert (=> d!2245547 (= lt!2573183 e!4334737)))

(declare-fun c!1341461 () Bool)

(assert (=> d!2245547 (= c!1341461 (is-Nil!69948 (exprs!7928 lt!2573114)))))

(assert (=> d!2245547 (= (++!16276 (exprs!7928 lt!2573114) (exprs!7928 ct2!328)) lt!2573183)))

(declare-fun b!7230830 () Bool)

(declare-fun res!2933736 () Bool)

(assert (=> b!7230830 (=> (not res!2933736) (not e!4334738))))

(assert (=> b!7230830 (= res!2933736 (= (size!41542 lt!2573183) (+ (size!41542 (exprs!7928 lt!2573114)) (size!41542 (exprs!7928 ct2!328)))))))

(declare-fun b!7230828 () Bool)

(assert (=> b!7230828 (= e!4334737 (exprs!7928 ct2!328))))

(declare-fun b!7230831 () Bool)

(assert (=> b!7230831 (= e!4334738 (or (not (= (exprs!7928 ct2!328) Nil!69948)) (= lt!2573183 (exprs!7928 lt!2573114))))))

(assert (= (and d!2245547 c!1341461) b!7230828))

(assert (= (and d!2245547 (not c!1341461)) b!7230829))

(assert (= (and d!2245547 res!2933735) b!7230830))

(assert (= (and b!7230830 res!2933736) b!7230831))

(declare-fun m!7899382 () Bool)

(assert (=> b!7230829 m!7899382))

(declare-fun m!7899384 () Bool)

(assert (=> d!2245547 m!7899384))

(declare-fun m!7899386 () Bool)

(assert (=> d!2245547 m!7899386))

(assert (=> d!2245547 m!7899290))

(declare-fun m!7899388 () Bool)

(assert (=> b!7230830 m!7899388))

(declare-fun m!7899390 () Bool)

(assert (=> b!7230830 m!7899390))

(assert (=> b!7230830 m!7899296))

(assert (=> b!7230727 d!2245547))

(declare-fun d!2245549 () Bool)

(declare-fun c!1341462 () Bool)

(assert (=> d!2245549 (= c!1341462 (isEmpty!40315 (t!384122 s1!1971)))))

(declare-fun e!4334739 () Bool)

(assert (=> d!2245549 (= (matchZipper!3398 lt!2573111 (t!384122 s1!1971)) e!4334739)))

(declare-fun b!7230832 () Bool)

(assert (=> b!7230832 (= e!4334739 (nullableZipper!2804 lt!2573111))))

(declare-fun b!7230833 () Bool)

(assert (=> b!7230833 (= e!4334739 (matchZipper!3398 (derivationStepZipper!3280 lt!2573111 (head!14790 (t!384122 s1!1971))) (tail!14105 (t!384122 s1!1971))))))

(assert (= (and d!2245549 c!1341462) b!7230832))

(assert (= (and d!2245549 (not c!1341462)) b!7230833))

(declare-fun m!7899392 () Bool)

(assert (=> d!2245549 m!7899392))

(declare-fun m!7899394 () Bool)

(assert (=> b!7230832 m!7899394))

(declare-fun m!7899396 () Bool)

(assert (=> b!7230833 m!7899396))

(assert (=> b!7230833 m!7899396))

(declare-fun m!7899398 () Bool)

(assert (=> b!7230833 m!7899398))

(declare-fun m!7899400 () Bool)

(assert (=> b!7230833 m!7899400))

(assert (=> b!7230833 m!7899398))

(assert (=> b!7230833 m!7899400))

(declare-fun m!7899402 () Bool)

(assert (=> b!7230833 m!7899402))

(assert (=> b!7230722 d!2245549))

(declare-fun d!2245551 () Bool)

(assert (=> d!2245551 true))

(declare-fun lambda!439216 () Int)

(declare-fun flatMap!2698 ((Set Context!14856) Int) (Set Context!14856))

(assert (=> d!2245551 (= (derivationStepZipper!3280 lt!2573110 (h!76397 s1!1971)) (flatMap!2698 lt!2573110 lambda!439216))))

(declare-fun bs!1902459 () Bool)

(assert (= bs!1902459 d!2245551))

(declare-fun m!7899404 () Bool)

(assert (=> bs!1902459 m!7899404))

(assert (=> b!7230722 d!2245551))

(declare-fun d!2245553 () Bool)

(declare-fun c!1341465 () Bool)

(assert (=> d!2245553 (= c!1341465 (isEmpty!40315 s1!1971))))

(declare-fun e!4334740 () Bool)

(assert (=> d!2245553 (= (matchZipper!3398 lt!2573110 s1!1971) e!4334740)))

(declare-fun b!7230836 () Bool)

(assert (=> b!7230836 (= e!4334740 (nullableZipper!2804 lt!2573110))))

(declare-fun b!7230837 () Bool)

(assert (=> b!7230837 (= e!4334740 (matchZipper!3398 (derivationStepZipper!3280 lt!2573110 (head!14790 s1!1971)) (tail!14105 s1!1971)))))

(assert (= (and d!2245553 c!1341465) b!7230836))

(assert (= (and d!2245553 (not c!1341465)) b!7230837))

(declare-fun m!7899406 () Bool)

(assert (=> d!2245553 m!7899406))

(declare-fun m!7899408 () Bool)

(assert (=> b!7230836 m!7899408))

(declare-fun m!7899410 () Bool)

(assert (=> b!7230837 m!7899410))

(assert (=> b!7230837 m!7899410))

(declare-fun m!7899412 () Bool)

(assert (=> b!7230837 m!7899412))

(declare-fun m!7899414 () Bool)

(assert (=> b!7230837 m!7899414))

(assert (=> b!7230837 m!7899412))

(assert (=> b!7230837 m!7899414))

(declare-fun m!7899416 () Bool)

(assert (=> b!7230837 m!7899416))

(assert (=> start!701426 d!2245553))

(declare-fun bs!1902460 () Bool)

(declare-fun d!2245555 () Bool)

(assert (= bs!1902460 (and d!2245555 b!7230721)))

(declare-fun lambda!439219 () Int)

(assert (=> bs!1902460 (= lambda!439219 lambda!439186)))

(declare-fun bs!1902461 () Bool)

(assert (= bs!1902461 (and d!2245555 d!2245537)))

(assert (=> bs!1902461 (= lambda!439219 lambda!439210)))

(assert (=> d!2245555 (= (inv!89231 ct1!232) (forall!17309 (exprs!7928 ct1!232) lambda!439219))))

(declare-fun bs!1902462 () Bool)

(assert (= bs!1902462 d!2245555))

(declare-fun m!7899418 () Bool)

(assert (=> bs!1902462 m!7899418))

(assert (=> start!701426 d!2245555))

(declare-fun bs!1902463 () Bool)

(declare-fun d!2245557 () Bool)

(assert (= bs!1902463 (and d!2245557 b!7230721)))

(declare-fun lambda!439220 () Int)

(assert (=> bs!1902463 (= lambda!439220 lambda!439186)))

(declare-fun bs!1902464 () Bool)

(assert (= bs!1902464 (and d!2245557 d!2245537)))

(assert (=> bs!1902464 (= lambda!439220 lambda!439210)))

(declare-fun bs!1902465 () Bool)

(assert (= bs!1902465 (and d!2245557 d!2245555)))

(assert (=> bs!1902465 (= lambda!439220 lambda!439219)))

(assert (=> d!2245557 (= (inv!89231 ct2!328) (forall!17309 (exprs!7928 ct2!328) lambda!439220))))

(declare-fun bs!1902466 () Bool)

(assert (= bs!1902466 d!2245557))

(declare-fun m!7899420 () Bool)

(assert (=> bs!1902466 m!7899420))

(assert (=> start!701426 d!2245557))

(declare-fun d!2245559 () Bool)

(declare-fun res!2933737 () Bool)

(declare-fun e!4334741 () Bool)

(assert (=> d!2245559 (=> res!2933737 e!4334741)))

(assert (=> d!2245559 (= res!2933737 (is-Nil!69948 (exprs!7928 ct2!328)))))

(assert (=> d!2245559 (= (forall!17309 (exprs!7928 ct2!328) lambda!439186) e!4334741)))

(declare-fun b!7230838 () Bool)

(declare-fun e!4334742 () Bool)

(assert (=> b!7230838 (= e!4334741 e!4334742)))

(declare-fun res!2933738 () Bool)

(assert (=> b!7230838 (=> (not res!2933738) (not e!4334742))))

(assert (=> b!7230838 (= res!2933738 (dynLambda!28503 lambda!439186 (h!76396 (exprs!7928 ct2!328))))))

(declare-fun b!7230839 () Bool)

(assert (=> b!7230839 (= e!4334742 (forall!17309 (t!384121 (exprs!7928 ct2!328)) lambda!439186))))

(assert (= (and d!2245559 (not res!2933737)) b!7230838))

(assert (= (and b!7230838 res!2933738) b!7230839))

(declare-fun b_lambda!277041 () Bool)

(assert (=> (not b_lambda!277041) (not b!7230838)))

(declare-fun m!7899422 () Bool)

(assert (=> b!7230838 m!7899422))

(declare-fun m!7899424 () Bool)

(assert (=> b!7230839 m!7899424))

(assert (=> b!7230723 d!2245559))

(declare-fun b!7230844 () Bool)

(declare-fun e!4334745 () Bool)

(declare-fun tp!2033755 () Bool)

(assert (=> b!7230844 (= e!4334745 (and tp_is_empty!46441 tp!2033755))))

(assert (=> b!7230720 (= tp!2033739 e!4334745)))

(assert (= (and b!7230720 (is-Cons!69949 (t!384122 s1!1971))) b!7230844))

(declare-fun b!7230849 () Bool)

(declare-fun e!4334748 () Bool)

(declare-fun tp!2033760 () Bool)

(declare-fun tp!2033761 () Bool)

(assert (=> b!7230849 (= e!4334748 (and tp!2033760 tp!2033761))))

(assert (=> b!7230718 (= tp!2033740 e!4334748)))

(assert (= (and b!7230718 (is-Cons!69948 (exprs!7928 ct1!232))) b!7230849))

(declare-fun b!7230850 () Bool)

(declare-fun e!4334749 () Bool)

(declare-fun tp!2033762 () Bool)

(assert (=> b!7230850 (= e!4334749 (and tp_is_empty!46441 tp!2033762))))

(assert (=> b!7230724 (= tp!2033738 e!4334749)))

(assert (= (and b!7230724 (is-Cons!69949 (t!384122 s2!1849))) b!7230850))

(declare-fun b!7230851 () Bool)

(declare-fun e!4334750 () Bool)

(declare-fun tp!2033763 () Bool)

(declare-fun tp!2033764 () Bool)

(assert (=> b!7230851 (= e!4334750 (and tp!2033763 tp!2033764))))

(assert (=> b!7230719 (= tp!2033737 e!4334750)))

(assert (= (and b!7230719 (is-Cons!69948 (exprs!7928 ct2!328))) b!7230851))

(declare-fun b_lambda!277043 () Bool)

(assert (= b_lambda!277035 (or b!7230721 b_lambda!277043)))

(declare-fun bs!1902467 () Bool)

(declare-fun d!2245561 () Bool)

(assert (= bs!1902467 (and d!2245561 b!7230721)))

(declare-fun validRegex!9506 (Regex!18488) Bool)

(assert (=> bs!1902467 (= (dynLambda!28503 lambda!439186 (h!76396 (exprs!7928 lt!2573114))) (validRegex!9506 (h!76396 (exprs!7928 lt!2573114))))))

(declare-fun m!7899426 () Bool)

(assert (=> bs!1902467 m!7899426))

(assert (=> b!7230803 d!2245561))

(declare-fun b_lambda!277045 () Bool)

(assert (= b_lambda!277037 (or b!7230725 b_lambda!277045)))

(declare-fun bs!1902468 () Bool)

(declare-fun d!2245563 () Bool)

(assert (= bs!1902468 (and d!2245563 b!7230725)))

(assert (=> bs!1902468 (= (dynLambda!28504 lambda!439187 lt!2573170) (matchZipper!3398 (set.insert lt!2573170 (as set.empty (Set Context!14856))) (t!384122 s1!1971)))))

(declare-fun m!7899428 () Bool)

(assert (=> bs!1902468 m!7899428))

(assert (=> bs!1902468 m!7899428))

(declare-fun m!7899430 () Bool)

(assert (=> bs!1902468 m!7899430))

(assert (=> d!2245533 d!2245563))

(declare-fun b_lambda!277047 () Bool)

(assert (= b_lambda!277041 (or b!7230721 b_lambda!277047)))

(declare-fun bs!1902469 () Bool)

(declare-fun d!2245565 () Bool)

(assert (= bs!1902469 (and d!2245565 b!7230721)))

(assert (=> bs!1902469 (= (dynLambda!28503 lambda!439186 (h!76396 (exprs!7928 ct2!328))) (validRegex!9506 (h!76396 (exprs!7928 ct2!328))))))

(declare-fun m!7899432 () Bool)

(assert (=> bs!1902469 m!7899432))

(assert (=> b!7230838 d!2245565))

(push 1)

(assert (not b!7230826))

(assert (not d!2245537))

(assert (not d!2245553))

(assert (not d!2245517))

(assert (not b!7230833))

(assert (not b!7230776))

(assert (not d!2245557))

(assert (not b!7230825))

(assert (not b!7230794))

(assert (not d!2245511))

(assert (not d!2245529))

(assert (not b!7230849))

(assert (not d!2245519))

(assert (not d!2245543))

(assert (not b_lambda!277043))

(assert (not bs!1902467))

(assert (not b!7230804))

(assert (not b!7230829))

(assert (not b!7230832))

(assert (not b!7230830))

(assert (not d!2245549))

(assert (not d!2245555))

(assert (not b!7230775))

(assert (not b!7230844))

(assert (not b_lambda!277045))

(assert (not b!7230795))

(assert (not bs!1902469))

(assert (not b!7230766))

(assert tp_is_empty!46441)

(assert (not d!2245533))

(assert (not d!2245547))

(assert (not b!7230839))

(assert (not d!2245551))

(assert (not d!2245527))

(assert (not b!7230851))

(assert (not b!7230797))

(assert (not b!7230798))

(assert (not bs!1902468))

(assert (not b!7230837))

(assert (not d!2245509))

(assert (not b!7230836))

(assert (not d!2245523))

(assert (not d!2245521))

(assert (not d!2245513))

(assert (not b!7230850))

(assert (not b_lambda!277047))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

