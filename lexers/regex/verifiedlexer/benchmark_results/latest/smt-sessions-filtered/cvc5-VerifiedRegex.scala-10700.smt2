; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!547886 () Bool)

(assert start!547886)

(declare-fun res!2198991 () Bool)

(declare-fun e!3224047 () Bool)

(assert (=> start!547886 (=> (not res!2198991) (not e!3224047))))

(declare-datatypes ((C!29562 0))(
  ( (C!29563 (val!24483 Int)) )
))
(declare-datatypes ((List!60263 0))(
  ( (Nil!60139) (Cons!60139 (h!66587 C!29562) (t!373416 List!60263)) )
))
(declare-fun testedP!294 () List!60263)

(declare-fun input!5817 () List!60263)

(declare-fun isPrefix!5779 (List!60263 List!60263) Bool)

(assert (=> start!547886 (= res!2198991 (isPrefix!5779 testedP!294 input!5817))))

(assert (=> start!547886 e!3224047))

(declare-fun e!3224048 () Bool)

(assert (=> start!547886 e!3224048))

(declare-fun e!3224044 () Bool)

(assert (=> start!547886 e!3224044))

(declare-fun condSetEmpty!32229 () Bool)

(declare-datatypes ((Regex!14646 0))(
  ( (ElementMatch!14646 (c!890859 C!29562)) (Concat!23491 (regOne!29804 Regex!14646) (regTwo!29804 Regex!14646)) (EmptyExpr!14646) (Star!14646 (reg!14975 Regex!14646)) (EmptyLang!14646) (Union!14646 (regOne!29805 Regex!14646) (regTwo!29805 Regex!14646)) )
))
(declare-datatypes ((List!60264 0))(
  ( (Nil!60140) (Cons!60140 (h!66588 Regex!14646) (t!373417 List!60264)) )
))
(declare-datatypes ((Context!8060 0))(
  ( (Context!8061 (exprs!4530 List!60264)) )
))
(declare-fun baseZ!62 () (Set Context!8060))

(assert (=> start!547886 (= condSetEmpty!32229 (= baseZ!62 (as set.empty (Set Context!8060))))))

(declare-fun setRes!32229 () Bool)

(assert (=> start!547886 setRes!32229))

(declare-fun condSetEmpty!32230 () Bool)

(declare-fun z!4581 () (Set Context!8060))

(assert (=> start!547886 (= condSetEmpty!32230 (= z!4581 (as set.empty (Set Context!8060))))))

(declare-fun setRes!32230 () Bool)

(assert (=> start!547886 setRes!32230))

(declare-fun setElem!32229 () Context!8060)

(declare-fun setNonEmpty!32229 () Bool)

(declare-fun tp!1451625 () Bool)

(declare-fun e!3224045 () Bool)

(declare-fun inv!79863 (Context!8060) Bool)

(assert (=> setNonEmpty!32229 (= setRes!32230 (and tp!1451625 (inv!79863 setElem!32229) e!3224045))))

(declare-fun setRest!32229 () (Set Context!8060))

(assert (=> setNonEmpty!32229 (= z!4581 (set.union (set.insert setElem!32229 (as set.empty (Set Context!8060))) setRest!32229))))

(declare-fun b!5174142 () Bool)

(declare-fun tp_is_empty!38545 () Bool)

(declare-fun tp!1451623 () Bool)

(assert (=> b!5174142 (= e!3224044 (and tp_is_empty!38545 tp!1451623))))

(declare-fun setIsEmpty!32229 () Bool)

(assert (=> setIsEmpty!32229 setRes!32230))

(declare-fun setIsEmpty!32230 () Bool)

(assert (=> setIsEmpty!32230 setRes!32229))

(declare-fun b!5174143 () Bool)

(declare-fun e!3224043 () Bool)

(declare-datatypes ((tuple2!63842 0))(
  ( (tuple2!63843 (_1!35224 List!60263) (_2!35224 List!60263)) )
))
(declare-fun lt!2131217 () tuple2!63842)

(declare-fun matchZipper!982 ((Set Context!8060) List!60263) Bool)

(assert (=> b!5174143 (= e!3224043 (not (matchZipper!982 baseZ!62 (_1!35224 lt!2131217))))))

(declare-fun b!5174144 () Bool)

(declare-fun tp!1451620 () Bool)

(assert (=> b!5174144 (= e!3224048 (and tp_is_empty!38545 tp!1451620))))

(declare-fun b!5174145 () Bool)

(declare-fun e!3224046 () Bool)

(declare-fun tp!1451624 () Bool)

(assert (=> b!5174145 (= e!3224046 tp!1451624)))

(declare-fun b!5174146 () Bool)

(declare-fun res!2198988 () Bool)

(assert (=> b!5174146 (=> (not res!2198988) (not e!3224043))))

(declare-fun nullableZipper!1188 ((Set Context!8060)) Bool)

(assert (=> b!5174146 (= res!2198988 (not (nullableZipper!1188 z!4581)))))

(declare-fun b!5174147 () Bool)

(declare-fun res!2198990 () Bool)

(assert (=> b!5174147 (=> (not res!2198990) (not e!3224047))))

(declare-fun derivationZipper!269 ((Set Context!8060) List!60263) (Set Context!8060))

(assert (=> b!5174147 (= res!2198990 (= (derivationZipper!269 baseZ!62 testedP!294) z!4581))))

(declare-fun b!5174148 () Bool)

(assert (=> b!5174148 (= e!3224047 e!3224043)))

(declare-fun res!2198989 () Bool)

(assert (=> b!5174148 (=> (not res!2198989) (not e!3224043))))

(declare-fun isEmpty!32198 (List!60263) Bool)

(assert (=> b!5174148 (= res!2198989 (not (isEmpty!32198 (_1!35224 lt!2131217))))))

(declare-fun findLongestMatchInnerZipper!302 ((Set Context!8060) List!60263 Int List!60263 List!60263 Int) tuple2!63842)

(declare-fun size!39682 (List!60263) Int)

(declare-fun getSuffix!3427 (List!60263 List!60263) List!60263)

(assert (=> b!5174148 (= lt!2131217 (findLongestMatchInnerZipper!302 z!4581 testedP!294 (size!39682 testedP!294) (getSuffix!3427 input!5817 testedP!294) input!5817 (size!39682 input!5817)))))

(declare-fun b!5174149 () Bool)

(declare-fun tp!1451621 () Bool)

(assert (=> b!5174149 (= e!3224045 tp!1451621)))

(declare-fun setElem!32230 () Context!8060)

(declare-fun setNonEmpty!32230 () Bool)

(declare-fun tp!1451622 () Bool)

(assert (=> setNonEmpty!32230 (= setRes!32229 (and tp!1451622 (inv!79863 setElem!32230) e!3224046))))

(declare-fun setRest!32230 () (Set Context!8060))

(assert (=> setNonEmpty!32230 (= baseZ!62 (set.union (set.insert setElem!32230 (as set.empty (Set Context!8060))) setRest!32230))))

(declare-fun b!5174150 () Bool)

(declare-fun res!2198987 () Bool)

(assert (=> b!5174150 (=> (not res!2198987) (not e!3224043))))

(assert (=> b!5174150 (= res!2198987 (= testedP!294 input!5817))))

(assert (= (and start!547886 res!2198991) b!5174147))

(assert (= (and b!5174147 res!2198990) b!5174148))

(assert (= (and b!5174148 res!2198989) b!5174150))

(assert (= (and b!5174150 res!2198987) b!5174146))

(assert (= (and b!5174146 res!2198988) b!5174143))

(assert (= (and start!547886 (is-Cons!60139 testedP!294)) b!5174144))

(assert (= (and start!547886 (is-Cons!60139 input!5817)) b!5174142))

(assert (= (and start!547886 condSetEmpty!32229) setIsEmpty!32230))

(assert (= (and start!547886 (not condSetEmpty!32229)) setNonEmpty!32230))

(assert (= setNonEmpty!32230 b!5174145))

(assert (= (and start!547886 condSetEmpty!32230) setIsEmpty!32229))

(assert (= (and start!547886 (not condSetEmpty!32230)) setNonEmpty!32229))

(assert (= setNonEmpty!32229 b!5174149))

(declare-fun m!6228064 () Bool)

(assert (=> setNonEmpty!32230 m!6228064))

(declare-fun m!6228066 () Bool)

(assert (=> b!5174147 m!6228066))

(declare-fun m!6228068 () Bool)

(assert (=> b!5174146 m!6228068))

(declare-fun m!6228070 () Bool)

(assert (=> b!5174143 m!6228070))

(declare-fun m!6228072 () Bool)

(assert (=> start!547886 m!6228072))

(declare-fun m!6228074 () Bool)

(assert (=> b!5174148 m!6228074))

(declare-fun m!6228076 () Bool)

(assert (=> b!5174148 m!6228076))

(declare-fun m!6228078 () Bool)

(assert (=> b!5174148 m!6228078))

(declare-fun m!6228080 () Bool)

(assert (=> b!5174148 m!6228080))

(assert (=> b!5174148 m!6228074))

(assert (=> b!5174148 m!6228076))

(assert (=> b!5174148 m!6228078))

(declare-fun m!6228082 () Bool)

(assert (=> b!5174148 m!6228082))

(declare-fun m!6228084 () Bool)

(assert (=> setNonEmpty!32229 m!6228084))

(push 1)

(assert (not b!5174144))

(assert (not setNonEmpty!32230))

(assert (not b!5174148))

(assert tp_is_empty!38545)

(assert (not b!5174145))

(assert (not setNonEmpty!32229))

(assert (not b!5174146))

(assert (not start!547886))

(assert (not b!5174149))

(assert (not b!5174147))

(assert (not b!5174143))

(assert (not b!5174142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1670009 () Bool)

(declare-fun lt!2131223 () Int)

(assert (=> d!1670009 (>= lt!2131223 0)))

(declare-fun e!3224069 () Int)

(assert (=> d!1670009 (= lt!2131223 e!3224069)))

(declare-fun c!890863 () Bool)

(assert (=> d!1670009 (= c!890863 (is-Nil!60139 input!5817))))

(assert (=> d!1670009 (= (size!39682 input!5817) lt!2131223)))

(declare-fun b!5174182 () Bool)

(assert (=> b!5174182 (= e!3224069 0)))

(declare-fun b!5174183 () Bool)

(assert (=> b!5174183 (= e!3224069 (+ 1 (size!39682 (t!373416 input!5817))))))

(assert (= (and d!1670009 c!890863) b!5174182))

(assert (= (and d!1670009 (not c!890863)) b!5174183))

(declare-fun m!6228108 () Bool)

(assert (=> b!5174183 m!6228108))

(assert (=> b!5174148 d!1670009))

(declare-fun d!1670011 () Bool)

(assert (=> d!1670011 (= (isEmpty!32198 (_1!35224 lt!2131217)) (is-Nil!60139 (_1!35224 lt!2131217)))))

(assert (=> b!5174148 d!1670011))

(declare-fun d!1670013 () Bool)

(declare-fun lt!2131226 () List!60263)

(declare-fun ++!13166 (List!60263 List!60263) List!60263)

(assert (=> d!1670013 (= (++!13166 testedP!294 lt!2131226) input!5817)))

(declare-fun e!3224072 () List!60263)

(assert (=> d!1670013 (= lt!2131226 e!3224072)))

(declare-fun c!890866 () Bool)

(assert (=> d!1670013 (= c!890866 (is-Cons!60139 testedP!294))))

(assert (=> d!1670013 (>= (size!39682 input!5817) (size!39682 testedP!294))))

(assert (=> d!1670013 (= (getSuffix!3427 input!5817 testedP!294) lt!2131226)))

(declare-fun b!5174188 () Bool)

(declare-fun tail!10167 (List!60263) List!60263)

(assert (=> b!5174188 (= e!3224072 (getSuffix!3427 (tail!10167 input!5817) (t!373416 testedP!294)))))

(declare-fun b!5174189 () Bool)

(assert (=> b!5174189 (= e!3224072 input!5817)))

(assert (= (and d!1670013 c!890866) b!5174188))

(assert (= (and d!1670013 (not c!890866)) b!5174189))

(declare-fun m!6228110 () Bool)

(assert (=> d!1670013 m!6228110))

(assert (=> d!1670013 m!6228078))

(assert (=> d!1670013 m!6228074))

(declare-fun m!6228112 () Bool)

(assert (=> b!5174188 m!6228112))

(assert (=> b!5174188 m!6228112))

(declare-fun m!6228114 () Bool)

(assert (=> b!5174188 m!6228114))

(assert (=> b!5174148 d!1670013))

(declare-fun b!5174218 () Bool)

(declare-datatypes ((Unit!151896 0))(
  ( (Unit!151897) )
))
(declare-fun e!3224089 () Unit!151896)

(declare-fun Unit!151898 () Unit!151896)

(assert (=> b!5174218 (= e!3224089 Unit!151898)))

(declare-fun lt!2131286 () Unit!151896)

(declare-fun call!363383 () Unit!151896)

(assert (=> b!5174218 (= lt!2131286 call!363383)))

(declare-fun call!363381 () Bool)

(assert (=> b!5174218 call!363381))

(declare-fun lt!2131304 () Unit!151896)

(assert (=> b!5174218 (= lt!2131304 lt!2131286)))

(declare-fun lt!2131294 () Unit!151896)

(declare-fun call!363382 () Unit!151896)

(assert (=> b!5174218 (= lt!2131294 call!363382)))

(assert (=> b!5174218 (= input!5817 testedP!294)))

(declare-fun lt!2131300 () Unit!151896)

(assert (=> b!5174218 (= lt!2131300 lt!2131294)))

(assert (=> b!5174218 false))

(declare-fun call!363380 () tuple2!63842)

(declare-fun call!363378 () List!60263)

(declare-fun lt!2131287 () List!60263)

(declare-fun bm!363371 () Bool)

(declare-fun call!363377 () (Set Context!8060))

(assert (=> bm!363371 (= call!363380 (findLongestMatchInnerZipper!302 call!363377 lt!2131287 (+ (size!39682 testedP!294) 1) call!363378 input!5817 (size!39682 input!5817)))))

(declare-fun b!5174219 () Bool)

(declare-fun e!3224093 () tuple2!63842)

(assert (=> b!5174219 (= e!3224093 (tuple2!63843 Nil!60139 input!5817))))

(declare-fun d!1670015 () Bool)

(declare-fun e!3224092 () Bool)

(assert (=> d!1670015 e!3224092))

(declare-fun res!2199012 () Bool)

(assert (=> d!1670015 (=> (not res!2199012) (not e!3224092))))

(declare-fun lt!2131291 () tuple2!63842)

(assert (=> d!1670015 (= res!2199012 (= (++!13166 (_1!35224 lt!2131291) (_2!35224 lt!2131291)) input!5817))))

(declare-fun e!3224090 () tuple2!63842)

(assert (=> d!1670015 (= lt!2131291 e!3224090)))

(declare-fun c!890880 () Bool)

(declare-fun lostCauseZipper!1337 ((Set Context!8060)) Bool)

(assert (=> d!1670015 (= c!890880 (lostCauseZipper!1337 z!4581))))

(declare-fun lt!2131296 () Unit!151896)

(declare-fun Unit!151899 () Unit!151896)

(assert (=> d!1670015 (= lt!2131296 Unit!151899)))

(assert (=> d!1670015 (= (getSuffix!3427 input!5817 testedP!294) (getSuffix!3427 input!5817 testedP!294))))

(declare-fun lt!2131297 () Unit!151896)

(declare-fun lt!2131295 () Unit!151896)

(assert (=> d!1670015 (= lt!2131297 lt!2131295)))

(declare-fun lt!2131293 () List!60263)

(assert (=> d!1670015 (= (getSuffix!3427 input!5817 testedP!294) lt!2131293)))

(declare-fun lemmaSamePrefixThenSameSuffix!2704 (List!60263 List!60263 List!60263 List!60263 List!60263) Unit!151896)

(assert (=> d!1670015 (= lt!2131295 (lemmaSamePrefixThenSameSuffix!2704 testedP!294 (getSuffix!3427 input!5817 testedP!294) testedP!294 lt!2131293 input!5817))))

(assert (=> d!1670015 (= lt!2131293 (getSuffix!3427 input!5817 testedP!294))))

(declare-fun lt!2131285 () Unit!151896)

(declare-fun lt!2131284 () Unit!151896)

(assert (=> d!1670015 (= lt!2131285 lt!2131284)))

(assert (=> d!1670015 (isPrefix!5779 testedP!294 (++!13166 testedP!294 (getSuffix!3427 input!5817 testedP!294)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3598 (List!60263 List!60263) Unit!151896)

(assert (=> d!1670015 (= lt!2131284 (lemmaConcatTwoListThenFirstIsPrefix!3598 testedP!294 (getSuffix!3427 input!5817 testedP!294)))))

(assert (=> d!1670015 (= (++!13166 testedP!294 (getSuffix!3427 input!5817 testedP!294)) input!5817)))

(assert (=> d!1670015 (= (findLongestMatchInnerZipper!302 z!4581 testedP!294 (size!39682 testedP!294) (getSuffix!3427 input!5817 testedP!294) input!5817 (size!39682 input!5817)) lt!2131291)))

(declare-fun b!5174220 () Bool)

(declare-fun c!890881 () Bool)

(declare-fun call!363376 () Bool)

(assert (=> b!5174220 (= c!890881 call!363376)))

(declare-fun lt!2131299 () Unit!151896)

(declare-fun lt!2131282 () Unit!151896)

(assert (=> b!5174220 (= lt!2131299 lt!2131282)))

(declare-fun lt!2131290 () List!60263)

(declare-fun lt!2131280 () C!29562)

(assert (=> b!5174220 (= (++!13166 (++!13166 testedP!294 (Cons!60139 lt!2131280 Nil!60139)) lt!2131290) input!5817)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1585 (List!60263 C!29562 List!60263 List!60263) Unit!151896)

(assert (=> b!5174220 (= lt!2131282 (lemmaMoveElementToOtherListKeepsConcatEq!1585 testedP!294 lt!2131280 lt!2131290 input!5817))))

(assert (=> b!5174220 (= lt!2131290 (tail!10167 (getSuffix!3427 input!5817 testedP!294)))))

(declare-fun head!11068 (List!60263) C!29562)

(assert (=> b!5174220 (= lt!2131280 (head!11068 (getSuffix!3427 input!5817 testedP!294)))))

(declare-fun lt!2131279 () Unit!151896)

(declare-fun lt!2131298 () Unit!151896)

(assert (=> b!5174220 (= lt!2131279 lt!2131298)))

(assert (=> b!5174220 (isPrefix!5779 (++!13166 testedP!294 (Cons!60139 (head!11068 (getSuffix!3427 input!5817 testedP!294)) Nil!60139)) input!5817)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1088 (List!60263 List!60263) Unit!151896)

(assert (=> b!5174220 (= lt!2131298 (lemmaAddHeadSuffixToPrefixStillPrefix!1088 testedP!294 input!5817))))

(assert (=> b!5174220 (= lt!2131287 (++!13166 testedP!294 (Cons!60139 (head!11068 (getSuffix!3427 input!5817 testedP!294)) Nil!60139)))))

(declare-fun lt!2131281 () Unit!151896)

(assert (=> b!5174220 (= lt!2131281 e!3224089)))

(declare-fun c!890879 () Bool)

(assert (=> b!5174220 (= c!890879 (= (size!39682 testedP!294) (size!39682 input!5817)))))

(declare-fun lt!2131302 () Unit!151896)

(declare-fun lt!2131289 () Unit!151896)

(assert (=> b!5174220 (= lt!2131302 lt!2131289)))

(assert (=> b!5174220 (<= (size!39682 testedP!294) (size!39682 input!5817))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!940 (List!60263 List!60263) Unit!151896)

(assert (=> b!5174220 (= lt!2131289 (lemmaIsPrefixThenSmallerEqSize!940 testedP!294 input!5817))))

(declare-fun e!3224091 () tuple2!63842)

(declare-fun e!3224096 () tuple2!63842)

(assert (=> b!5174220 (= e!3224091 e!3224096)))

(declare-fun bm!363372 () Bool)

(assert (=> bm!363372 (= call!363376 (nullableZipper!1188 z!4581))))

(declare-fun b!5174221 () Bool)

(declare-fun e!3224095 () Bool)

(assert (=> b!5174221 (= e!3224095 (>= (size!39682 (_1!35224 lt!2131291)) (size!39682 testedP!294)))))

(declare-fun bm!363373 () Bool)

(declare-fun call!363379 () C!29562)

(assert (=> bm!363373 (= call!363379 (head!11068 (getSuffix!3427 input!5817 testedP!294)))))

(declare-fun b!5174222 () Bool)

(assert (=> b!5174222 (= e!3224092 e!3224095)))

(declare-fun res!2199011 () Bool)

(assert (=> b!5174222 (=> res!2199011 e!3224095)))

(assert (=> b!5174222 (= res!2199011 (isEmpty!32198 (_1!35224 lt!2131291)))))

(declare-fun b!5174223 () Bool)

(declare-fun c!890882 () Bool)

(assert (=> b!5174223 (= c!890882 call!363376)))

(declare-fun lt!2131288 () Unit!151896)

(declare-fun lt!2131283 () Unit!151896)

(assert (=> b!5174223 (= lt!2131288 lt!2131283)))

(assert (=> b!5174223 (= input!5817 testedP!294)))

(assert (=> b!5174223 (= lt!2131283 call!363382)))

(declare-fun lt!2131292 () Unit!151896)

(declare-fun lt!2131301 () Unit!151896)

(assert (=> b!5174223 (= lt!2131292 lt!2131301)))

(assert (=> b!5174223 call!363381))

(assert (=> b!5174223 (= lt!2131301 call!363383)))

(assert (=> b!5174223 (= e!3224091 e!3224093)))

(declare-fun b!5174224 () Bool)

(assert (=> b!5174224 (= e!3224093 (tuple2!63843 testedP!294 Nil!60139))))

(declare-fun b!5174225 () Bool)

(assert (=> b!5174225 (= e!3224090 e!3224091)))

(declare-fun c!890884 () Bool)

(assert (=> b!5174225 (= c!890884 (= (size!39682 testedP!294) (size!39682 input!5817)))))

(declare-fun b!5174226 () Bool)

(declare-fun e!3224094 () tuple2!63842)

(assert (=> b!5174226 (= e!3224094 (tuple2!63843 testedP!294 (getSuffix!3427 input!5817 testedP!294)))))

(declare-fun b!5174227 () Bool)

(assert (=> b!5174227 (= e!3224096 call!363380)))

(declare-fun b!5174228 () Bool)

(assert (=> b!5174228 (= e!3224090 (tuple2!63843 Nil!60139 input!5817))))

(declare-fun bm!363374 () Bool)

(declare-fun lemmaIsPrefixRefl!3784 (List!60263 List!60263) Unit!151896)

(assert (=> bm!363374 (= call!363383 (lemmaIsPrefixRefl!3784 input!5817 input!5817))))

(declare-fun bm!363375 () Bool)

(assert (=> bm!363375 (= call!363378 (tail!10167 (getSuffix!3427 input!5817 testedP!294)))))

(declare-fun bm!363376 () Bool)

(assert (=> bm!363376 (= call!363381 (isPrefix!5779 input!5817 input!5817))))

(declare-fun b!5174229 () Bool)

(declare-fun Unit!151900 () Unit!151896)

(assert (=> b!5174229 (= e!3224089 Unit!151900)))

(declare-fun b!5174230 () Bool)

(declare-fun lt!2131303 () tuple2!63842)

(assert (=> b!5174230 (= e!3224094 lt!2131303)))

(declare-fun bm!363377 () Bool)

(declare-fun derivationStepZipper!996 ((Set Context!8060) C!29562) (Set Context!8060))

(assert (=> bm!363377 (= call!363377 (derivationStepZipper!996 z!4581 call!363379))))

(declare-fun b!5174231 () Bool)

(assert (=> b!5174231 (= e!3224096 e!3224094)))

(assert (=> b!5174231 (= lt!2131303 call!363380)))

(declare-fun c!890883 () Bool)

(assert (=> b!5174231 (= c!890883 (isEmpty!32198 (_1!35224 lt!2131303)))))

(declare-fun bm!363378 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1426 (List!60263 List!60263 List!60263) Unit!151896)

(assert (=> bm!363378 (= call!363382 (lemmaIsPrefixSameLengthThenSameList!1426 input!5817 testedP!294 input!5817))))

(assert (= (and d!1670015 c!890880) b!5174228))

(assert (= (and d!1670015 (not c!890880)) b!5174225))

(assert (= (and b!5174225 c!890884) b!5174223))

(assert (= (and b!5174225 (not c!890884)) b!5174220))

(assert (= (and b!5174223 c!890882) b!5174224))

(assert (= (and b!5174223 (not c!890882)) b!5174219))

(assert (= (and b!5174220 c!890879) b!5174218))

(assert (= (and b!5174220 (not c!890879)) b!5174229))

(assert (= (and b!5174220 c!890881) b!5174231))

(assert (= (and b!5174220 (not c!890881)) b!5174227))

(assert (= (and b!5174231 c!890883) b!5174226))

(assert (= (and b!5174231 (not c!890883)) b!5174230))

(assert (= (or b!5174231 b!5174227) bm!363375))

(assert (= (or b!5174231 b!5174227) bm!363373))

(assert (= (or b!5174231 b!5174227) bm!363377))

(assert (= (or b!5174231 b!5174227) bm!363371))

(assert (= (or b!5174223 b!5174218) bm!363374))

(assert (= (or b!5174223 b!5174220) bm!363372))

(assert (= (or b!5174223 b!5174218) bm!363376))

(assert (= (or b!5174223 b!5174218) bm!363378))

(assert (= (and d!1670015 res!2199012) b!5174222))

(assert (= (and b!5174222 (not res!2199011)) b!5174221))

(declare-fun m!6228116 () Bool)

(assert (=> bm!363378 m!6228116))

(declare-fun m!6228118 () Bool)

(assert (=> b!5174221 m!6228118))

(assert (=> b!5174221 m!6228074))

(declare-fun m!6228120 () Bool)

(assert (=> b!5174231 m!6228120))

(declare-fun m!6228122 () Bool)

(assert (=> bm!363377 m!6228122))

(assert (=> d!1670015 m!6228076))

(declare-fun m!6228124 () Bool)

(assert (=> d!1670015 m!6228124))

(assert (=> d!1670015 m!6228076))

(declare-fun m!6228126 () Bool)

(assert (=> d!1670015 m!6228126))

(declare-fun m!6228128 () Bool)

(assert (=> d!1670015 m!6228128))

(assert (=> d!1670015 m!6228076))

(declare-fun m!6228130 () Bool)

(assert (=> d!1670015 m!6228130))

(assert (=> d!1670015 m!6228076))

(assert (=> d!1670015 m!6228126))

(declare-fun m!6228132 () Bool)

(assert (=> d!1670015 m!6228132))

(declare-fun m!6228134 () Bool)

(assert (=> d!1670015 m!6228134))

(assert (=> bm!363372 m!6228068))

(declare-fun m!6228136 () Bool)

(assert (=> b!5174222 m!6228136))

(declare-fun m!6228138 () Bool)

(assert (=> b!5174220 m!6228138))

(declare-fun m!6228140 () Bool)

(assert (=> b!5174220 m!6228140))

(declare-fun m!6228142 () Bool)

(assert (=> b!5174220 m!6228142))

(declare-fun m!6228144 () Bool)

(assert (=> b!5174220 m!6228144))

(declare-fun m!6228146 () Bool)

(assert (=> b!5174220 m!6228146))

(declare-fun m!6228148 () Bool)

(assert (=> b!5174220 m!6228148))

(assert (=> b!5174220 m!6228076))

(declare-fun m!6228150 () Bool)

(assert (=> b!5174220 m!6228150))

(assert (=> b!5174220 m!6228076))

(declare-fun m!6228152 () Bool)

(assert (=> b!5174220 m!6228152))

(assert (=> b!5174220 m!6228140))

(assert (=> b!5174220 m!6228074))

(assert (=> b!5174220 m!6228076))

(assert (=> b!5174220 m!6228152))

(assert (=> b!5174220 m!6228146))

(assert (=> b!5174220 m!6228076))

(declare-fun m!6228154 () Bool)

(assert (=> b!5174220 m!6228154))

(assert (=> b!5174220 m!6228140))

(assert (=> b!5174220 m!6228078))

(assert (=> bm!363371 m!6228078))

(declare-fun m!6228156 () Bool)

(assert (=> bm!363371 m!6228156))

(declare-fun m!6228158 () Bool)

(assert (=> bm!363376 m!6228158))

(assert (=> bm!363373 m!6228076))

(assert (=> bm!363373 m!6228152))

(assert (=> bm!363375 m!6228076))

(assert (=> bm!363375 m!6228150))

(declare-fun m!6228160 () Bool)

(assert (=> bm!363374 m!6228160))

(assert (=> b!5174148 d!1670015))

(declare-fun d!1670017 () Bool)

(declare-fun lt!2131305 () Int)

(assert (=> d!1670017 (>= lt!2131305 0)))

(declare-fun e!3224097 () Int)

(assert (=> d!1670017 (= lt!2131305 e!3224097)))

(declare-fun c!890885 () Bool)

(assert (=> d!1670017 (= c!890885 (is-Nil!60139 testedP!294))))

(assert (=> d!1670017 (= (size!39682 testedP!294) lt!2131305)))

(declare-fun b!5174232 () Bool)

(assert (=> b!5174232 (= e!3224097 0)))

(declare-fun b!5174233 () Bool)

(assert (=> b!5174233 (= e!3224097 (+ 1 (size!39682 (t!373416 testedP!294))))))

(assert (= (and d!1670017 c!890885) b!5174232))

(assert (= (and d!1670017 (not c!890885)) b!5174233))

(declare-fun m!6228162 () Bool)

(assert (=> b!5174233 m!6228162))

(assert (=> b!5174148 d!1670017))

(declare-fun d!1670019 () Bool)

(declare-fun c!890888 () Bool)

(assert (=> d!1670019 (= c!890888 (isEmpty!32198 (_1!35224 lt!2131217)))))

(declare-fun e!3224100 () Bool)

(assert (=> d!1670019 (= (matchZipper!982 baseZ!62 (_1!35224 lt!2131217)) e!3224100)))

(declare-fun b!5174238 () Bool)

(assert (=> b!5174238 (= e!3224100 (nullableZipper!1188 baseZ!62))))

(declare-fun b!5174239 () Bool)

(assert (=> b!5174239 (= e!3224100 (matchZipper!982 (derivationStepZipper!996 baseZ!62 (head!11068 (_1!35224 lt!2131217))) (tail!10167 (_1!35224 lt!2131217))))))

(assert (= (and d!1670019 c!890888) b!5174238))

(assert (= (and d!1670019 (not c!890888)) b!5174239))

(assert (=> d!1670019 m!6228080))

(declare-fun m!6228164 () Bool)

(assert (=> b!5174238 m!6228164))

(declare-fun m!6228166 () Bool)

(assert (=> b!5174239 m!6228166))

(assert (=> b!5174239 m!6228166))

(declare-fun m!6228168 () Bool)

(assert (=> b!5174239 m!6228168))

(declare-fun m!6228170 () Bool)

(assert (=> b!5174239 m!6228170))

(assert (=> b!5174239 m!6228168))

(assert (=> b!5174239 m!6228170))

(declare-fun m!6228172 () Bool)

(assert (=> b!5174239 m!6228172))

(assert (=> b!5174143 d!1670019))

(declare-fun d!1670021 () Bool)

(declare-fun e!3224107 () Bool)

(assert (=> d!1670021 e!3224107))

(declare-fun res!2199024 () Bool)

(assert (=> d!1670021 (=> res!2199024 e!3224107)))

(declare-fun lt!2131308 () Bool)

(assert (=> d!1670021 (= res!2199024 (not lt!2131308))))

(declare-fun e!3224108 () Bool)

(assert (=> d!1670021 (= lt!2131308 e!3224108)))

(declare-fun res!2199022 () Bool)

(assert (=> d!1670021 (=> res!2199022 e!3224108)))

(assert (=> d!1670021 (= res!2199022 (is-Nil!60139 testedP!294))))

(assert (=> d!1670021 (= (isPrefix!5779 testedP!294 input!5817) lt!2131308)))

(declare-fun b!5174249 () Bool)

(declare-fun res!2199023 () Bool)

(declare-fun e!3224109 () Bool)

(assert (=> b!5174249 (=> (not res!2199023) (not e!3224109))))

(assert (=> b!5174249 (= res!2199023 (= (head!11068 testedP!294) (head!11068 input!5817)))))

(declare-fun b!5174250 () Bool)

(assert (=> b!5174250 (= e!3224109 (isPrefix!5779 (tail!10167 testedP!294) (tail!10167 input!5817)))))

(declare-fun b!5174248 () Bool)

(assert (=> b!5174248 (= e!3224108 e!3224109)))

(declare-fun res!2199021 () Bool)

(assert (=> b!5174248 (=> (not res!2199021) (not e!3224109))))

(assert (=> b!5174248 (= res!2199021 (not (is-Nil!60139 input!5817)))))

(declare-fun b!5174251 () Bool)

(assert (=> b!5174251 (= e!3224107 (>= (size!39682 input!5817) (size!39682 testedP!294)))))

(assert (= (and d!1670021 (not res!2199022)) b!5174248))

(assert (= (and b!5174248 res!2199021) b!5174249))

(assert (= (and b!5174249 res!2199023) b!5174250))

(assert (= (and d!1670021 (not res!2199024)) b!5174251))

(declare-fun m!6228174 () Bool)

(assert (=> b!5174249 m!6228174))

(declare-fun m!6228176 () Bool)

(assert (=> b!5174249 m!6228176))

(declare-fun m!6228178 () Bool)

(assert (=> b!5174250 m!6228178))

(assert (=> b!5174250 m!6228112))

(assert (=> b!5174250 m!6228178))

(assert (=> b!5174250 m!6228112))

(declare-fun m!6228180 () Bool)

(assert (=> b!5174250 m!6228180))

(assert (=> b!5174251 m!6228078))

(assert (=> b!5174251 m!6228074))

(assert (=> start!547886 d!1670021))

(declare-fun d!1670023 () Bool)

(declare-fun lambda!258410 () Int)

(declare-fun forall!14151 (List!60264 Int) Bool)

(assert (=> d!1670023 (= (inv!79863 setElem!32229) (forall!14151 (exprs!4530 setElem!32229) lambda!258410))))

(declare-fun bs!1203920 () Bool)

(assert (= bs!1203920 d!1670023))

(declare-fun m!6228204 () Bool)

(assert (=> bs!1203920 m!6228204))

(assert (=> setNonEmpty!32229 d!1670023))

(declare-fun bs!1203921 () Bool)

(declare-fun d!1670037 () Bool)

(assert (= bs!1203921 (and d!1670037 d!1670023)))

(declare-fun lambda!258411 () Int)

(assert (=> bs!1203921 (= lambda!258411 lambda!258410)))

(assert (=> d!1670037 (= (inv!79863 setElem!32230) (forall!14151 (exprs!4530 setElem!32230) lambda!258411))))

(declare-fun bs!1203922 () Bool)

(assert (= bs!1203922 d!1670037))

(declare-fun m!6228206 () Bool)

(assert (=> bs!1203922 m!6228206))

(assert (=> setNonEmpty!32230 d!1670037))

(declare-fun d!1670039 () Bool)

(declare-fun lambda!258414 () Int)

(declare-fun exists!1932 ((Set Context!8060) Int) Bool)

(assert (=> d!1670039 (= (nullableZipper!1188 z!4581) (exists!1932 z!4581 lambda!258414))))

(declare-fun bs!1203923 () Bool)

(assert (= bs!1203923 d!1670039))

(declare-fun m!6228208 () Bool)

(assert (=> bs!1203923 m!6228208))

(assert (=> b!5174146 d!1670039))

(declare-fun d!1670041 () Bool)

(declare-fun c!890904 () Bool)

(assert (=> d!1670041 (= c!890904 (is-Cons!60139 testedP!294))))

(declare-fun e!3224121 () (Set Context!8060))

(assert (=> d!1670041 (= (derivationZipper!269 baseZ!62 testedP!294) e!3224121)))

(declare-fun b!5174274 () Bool)

(assert (=> b!5174274 (= e!3224121 (derivationZipper!269 (derivationStepZipper!996 baseZ!62 (h!66587 testedP!294)) (t!373416 testedP!294)))))

(declare-fun b!5174275 () Bool)

(assert (=> b!5174275 (= e!3224121 baseZ!62)))

(assert (= (and d!1670041 c!890904) b!5174274))

(assert (= (and d!1670041 (not c!890904)) b!5174275))

(declare-fun m!6228210 () Bool)

(assert (=> b!5174274 m!6228210))

(assert (=> b!5174274 m!6228210))

(declare-fun m!6228212 () Bool)

(assert (=> b!5174274 m!6228212))

(assert (=> b!5174147 d!1670041))

(declare-fun b!5174280 () Bool)

(declare-fun e!3224124 () Bool)

(declare-fun tp!1451648 () Bool)

(declare-fun tp!1451649 () Bool)

(assert (=> b!5174280 (= e!3224124 (and tp!1451648 tp!1451649))))

(assert (=> b!5174149 (= tp!1451621 e!3224124)))

(assert (= (and b!5174149 (is-Cons!60140 (exprs!4530 setElem!32229))) b!5174280))

(declare-fun b!5174285 () Bool)

(declare-fun e!3224127 () Bool)

(declare-fun tp!1451652 () Bool)

(assert (=> b!5174285 (= e!3224127 (and tp_is_empty!38545 tp!1451652))))

(assert (=> b!5174144 (= tp!1451620 e!3224127)))

(assert (= (and b!5174144 (is-Cons!60139 (t!373416 testedP!294))) b!5174285))

(declare-fun condSetEmpty!32239 () Bool)

(assert (=> setNonEmpty!32229 (= condSetEmpty!32239 (= setRest!32229 (as set.empty (Set Context!8060))))))

(declare-fun setRes!32239 () Bool)

(assert (=> setNonEmpty!32229 (= tp!1451625 setRes!32239)))

(declare-fun setIsEmpty!32239 () Bool)

(assert (=> setIsEmpty!32239 setRes!32239))

(declare-fun tp!1451657 () Bool)

(declare-fun e!3224130 () Bool)

(declare-fun setElem!32239 () Context!8060)

(declare-fun setNonEmpty!32239 () Bool)

(assert (=> setNonEmpty!32239 (= setRes!32239 (and tp!1451657 (inv!79863 setElem!32239) e!3224130))))

(declare-fun setRest!32239 () (Set Context!8060))

(assert (=> setNonEmpty!32239 (= setRest!32229 (set.union (set.insert setElem!32239 (as set.empty (Set Context!8060))) setRest!32239))))

(declare-fun b!5174290 () Bool)

(declare-fun tp!1451658 () Bool)

(assert (=> b!5174290 (= e!3224130 tp!1451658)))

(assert (= (and setNonEmpty!32229 condSetEmpty!32239) setIsEmpty!32239))

(assert (= (and setNonEmpty!32229 (not condSetEmpty!32239)) setNonEmpty!32239))

(assert (= setNonEmpty!32239 b!5174290))

(declare-fun m!6228214 () Bool)

(assert (=> setNonEmpty!32239 m!6228214))

(declare-fun condSetEmpty!32240 () Bool)

(assert (=> setNonEmpty!32230 (= condSetEmpty!32240 (= setRest!32230 (as set.empty (Set Context!8060))))))

(declare-fun setRes!32240 () Bool)

(assert (=> setNonEmpty!32230 (= tp!1451622 setRes!32240)))

(declare-fun setIsEmpty!32240 () Bool)

(assert (=> setIsEmpty!32240 setRes!32240))

(declare-fun setElem!32240 () Context!8060)

(declare-fun tp!1451659 () Bool)

(declare-fun setNonEmpty!32240 () Bool)

(declare-fun e!3224131 () Bool)

(assert (=> setNonEmpty!32240 (= setRes!32240 (and tp!1451659 (inv!79863 setElem!32240) e!3224131))))

(declare-fun setRest!32240 () (Set Context!8060))

(assert (=> setNonEmpty!32240 (= setRest!32230 (set.union (set.insert setElem!32240 (as set.empty (Set Context!8060))) setRest!32240))))

(declare-fun b!5174291 () Bool)

(declare-fun tp!1451660 () Bool)

(assert (=> b!5174291 (= e!3224131 tp!1451660)))

(assert (= (and setNonEmpty!32230 condSetEmpty!32240) setIsEmpty!32240))

(assert (= (and setNonEmpty!32230 (not condSetEmpty!32240)) setNonEmpty!32240))

(assert (= setNonEmpty!32240 b!5174291))

(declare-fun m!6228216 () Bool)

(assert (=> setNonEmpty!32240 m!6228216))

(declare-fun b!5174292 () Bool)

(declare-fun e!3224132 () Bool)

(declare-fun tp!1451661 () Bool)

(declare-fun tp!1451662 () Bool)

(assert (=> b!5174292 (= e!3224132 (and tp!1451661 tp!1451662))))

(assert (=> b!5174145 (= tp!1451624 e!3224132)))

(assert (= (and b!5174145 (is-Cons!60140 (exprs!4530 setElem!32230))) b!5174292))

(declare-fun b!5174293 () Bool)

(declare-fun e!3224133 () Bool)

(declare-fun tp!1451663 () Bool)

(assert (=> b!5174293 (= e!3224133 (and tp_is_empty!38545 tp!1451663))))

(assert (=> b!5174142 (= tp!1451623 e!3224133)))

(assert (= (and b!5174142 (is-Cons!60139 (t!373416 input!5817))) b!5174293))

(push 1)

(assert (not bm!363373))

(assert (not d!1670037))

(assert (not b!5174274))

(assert (not b!5174183))

(assert (not bm!363378))

(assert (not b!5174249))

(assert (not bm!363375))

(assert (not b!5174251))

(assert tp_is_empty!38545)

(assert (not b!5174293))

(assert (not d!1670013))

(assert (not d!1670019))

(assert (not bm!363376))

(assert (not b!5174188))

(assert (not b!5174285))

(assert (not d!1670039))

(assert (not b!5174239))

(assert (not b!5174220))

(assert (not setNonEmpty!32240))

(assert (not b!5174290))

(assert (not setNonEmpty!32239))

(assert (not b!5174292))

(assert (not bm!363374))

(assert (not d!1670015))

(assert (not b!5174221))

(assert (not b!5174233))

(assert (not b!5174250))

(assert (not b!5174238))

(assert (not b!5174222))

(assert (not bm!363377))

(assert (not b!5174280))

(assert (not b!5174231))

(assert (not b!5174291))

(assert (not bm!363371))

(assert (not bm!363372))

(assert (not d!1670023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

