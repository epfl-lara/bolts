; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546192 () Bool)

(assert start!546192)

(declare-fun res!2195209 () Bool)

(declare-fun e!3217164 () Bool)

(assert (=> start!546192 (=> (not res!2195209) (not e!3217164))))

(declare-datatypes ((C!29346 0))(
  ( (C!29347 (val!24375 Int)) )
))
(declare-datatypes ((List!60033 0))(
  ( (Nil!59909) (Cons!59909 (h!66357 C!29346) (t!373186 List!60033)) )
))
(declare-fun input!5707 () List!60033)

(declare-fun isPrefix!5671 (List!60033 List!60033) Bool)

(assert (=> start!546192 (= res!2195209 (isPrefix!5671 Nil!59909 input!5707))))

(assert (=> start!546192 e!3217164))

(declare-fun e!3217166 () Bool)

(assert (=> start!546192 e!3217166))

(declare-fun condSetEmpty!31409 () Bool)

(declare-datatypes ((Regex!14540 0))(
  ( (ElementMatch!14540 (c!888305 C!29346)) (Concat!23385 (regOne!29592 Regex!14540) (regTwo!29592 Regex!14540)) (EmptyExpr!14540) (Star!14540 (reg!14869 Regex!14540)) (EmptyLang!14540) (Union!14540 (regOne!29593 Regex!14540) (regTwo!29593 Regex!14540)) )
))
(declare-datatypes ((List!60034 0))(
  ( (Nil!59910) (Cons!59910 (h!66358 Regex!14540) (t!373187 List!60034)) )
))
(declare-datatypes ((Context!7848 0))(
  ( (Context!7849 (exprs!4424 List!60034)) )
))
(declare-fun z!4413 () (Set Context!7848))

(assert (=> start!546192 (= condSetEmpty!31409 (= z!4413 (as set.empty (Set Context!7848))))))

(declare-fun setRes!31409 () Bool)

(assert (=> start!546192 setRes!31409))

(declare-fun b!5163362 () Bool)

(declare-fun tp_is_empty!38329 () Bool)

(declare-fun tp!1448196 () Bool)

(assert (=> b!5163362 (= e!3217166 (and tp_is_empty!38329 tp!1448196))))

(declare-fun setIsEmpty!31409 () Bool)

(assert (=> setIsEmpty!31409 setRes!31409))

(declare-fun b!5163363 () Bool)

(declare-fun e!3217163 () Bool)

(assert (=> b!5163363 (= e!3217164 (not e!3217163))))

(declare-fun res!2195208 () Bool)

(assert (=> b!5163363 (=> res!2195208 e!3217163)))

(declare-fun lt!2123023 () Int)

(declare-fun lt!2123026 () Int)

(declare-fun isEmpty!32090 (List!60033) Bool)

(declare-datatypes ((tuple2!63654 0))(
  ( (tuple2!63655 (_1!35130 List!60033) (_2!35130 List!60033)) )
))
(declare-fun findLongestMatchInnerZipper!208 ((Set Context!7848) List!60033 Int List!60033 List!60033 Int) tuple2!63654)

(assert (=> b!5163363 (= res!2195208 (isEmpty!32090 (_1!35130 (findLongestMatchInnerZipper!208 z!4413 Nil!59909 lt!2123023 input!5707 input!5707 lt!2123026))))))

(declare-fun e!3217165 () Bool)

(assert (=> b!5163363 e!3217165))

(declare-fun res!2195210 () Bool)

(assert (=> b!5163363 (=> res!2195210 e!3217165)))

(declare-fun lt!2123022 () tuple2!63654)

(assert (=> b!5163363 (= res!2195210 (isEmpty!32090 (_1!35130 lt!2123022)))))

(declare-fun lt!2123025 () List!60033)

(assert (=> b!5163363 (= lt!2123022 (findLongestMatchInnerZipper!208 z!4413 Nil!59909 lt!2123023 lt!2123025 input!5707 lt!2123026))))

(declare-fun size!39576 (List!60033) Int)

(assert (=> b!5163363 (= lt!2123026 (size!39576 input!5707))))

(declare-fun getSuffix!3329 (List!60033 List!60033) List!60033)

(assert (=> b!5163363 (= lt!2123025 (getSuffix!3329 input!5707 Nil!59909))))

(assert (=> b!5163363 (= lt!2123023 (size!39576 Nil!59909))))

(declare-datatypes ((Unit!151351 0))(
  ( (Unit!151352) )
))
(declare-fun lt!2123024 () Unit!151351)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!6 ((Set Context!7848) (Set Context!7848) List!60033 List!60033) Unit!151351)

(assert (=> b!5163363 (= lt!2123024 (longestMatchIsAcceptedByMatchOrIsEmptyRec!6 z!4413 z!4413 Nil!59909 input!5707))))

(declare-fun setElem!31409 () Context!7848)

(declare-fun tp!1448197 () Bool)

(declare-fun e!3217167 () Bool)

(declare-fun setNonEmpty!31409 () Bool)

(declare-fun inv!79595 (Context!7848) Bool)

(assert (=> setNonEmpty!31409 (= setRes!31409 (and tp!1448197 (inv!79595 setElem!31409) e!3217167))))

(declare-fun setRest!31409 () (Set Context!7848))

(assert (=> setNonEmpty!31409 (= z!4413 (set.union (set.insert setElem!31409 (as set.empty (Set Context!7848))) setRest!31409))))

(declare-fun b!5163364 () Bool)

(declare-fun matchZipper!942 ((Set Context!7848) List!60033) Bool)

(assert (=> b!5163364 (= e!3217165 (matchZipper!942 z!4413 (_1!35130 lt!2123022)))))

(declare-fun b!5163365 () Bool)

(declare-fun res!2195207 () Bool)

(assert (=> b!5163365 (=> (not res!2195207) (not e!3217164))))

(declare-fun derivationZipper!163 ((Set Context!7848) List!60033) (Set Context!7848))

(assert (=> b!5163365 (= res!2195207 (= (derivationZipper!163 z!4413 Nil!59909) z!4413))))

(declare-fun b!5163366 () Bool)

(declare-fun tp!1448198 () Bool)

(assert (=> b!5163366 (= e!3217167 tp!1448198)))

(declare-fun b!5163367 () Bool)

(declare-fun ++!13089 (List!60033 List!60033) List!60033)

(assert (=> b!5163367 (= e!3217163 (= (++!13089 Nil!59909 input!5707) input!5707))))

(assert (= (and start!546192 res!2195209) b!5163365))

(assert (= (and b!5163365 res!2195207) b!5163363))

(assert (= (and b!5163363 (not res!2195210)) b!5163364))

(assert (= (and b!5163363 (not res!2195208)) b!5163367))

(assert (= (and start!546192 (is-Cons!59909 input!5707)) b!5163362))

(assert (= (and start!546192 condSetEmpty!31409) setIsEmpty!31409))

(assert (= (and start!546192 (not condSetEmpty!31409)) setNonEmpty!31409))

(assert (= setNonEmpty!31409 b!5163366))

(declare-fun m!6214000 () Bool)

(assert (=> b!5163364 m!6214000))

(declare-fun m!6214002 () Bool)

(assert (=> setNonEmpty!31409 m!6214002))

(declare-fun m!6214004 () Bool)

(assert (=> start!546192 m!6214004))

(declare-fun m!6214006 () Bool)

(assert (=> b!5163363 m!6214006))

(declare-fun m!6214008 () Bool)

(assert (=> b!5163363 m!6214008))

(declare-fun m!6214010 () Bool)

(assert (=> b!5163363 m!6214010))

(declare-fun m!6214012 () Bool)

(assert (=> b!5163363 m!6214012))

(declare-fun m!6214014 () Bool)

(assert (=> b!5163363 m!6214014))

(declare-fun m!6214016 () Bool)

(assert (=> b!5163363 m!6214016))

(declare-fun m!6214018 () Bool)

(assert (=> b!5163363 m!6214018))

(declare-fun m!6214020 () Bool)

(assert (=> b!5163363 m!6214020))

(declare-fun m!6214022 () Bool)

(assert (=> b!5163365 m!6214022))

(declare-fun m!6214024 () Bool)

(assert (=> b!5163367 m!6214024))

(push 1)

(assert (not setNonEmpty!31409))

(assert (not b!5163363))

(assert (not b!5163366))

(assert (not b!5163365))

(assert (not start!546192))

(assert (not b!5163364))

(assert (not b!5163367))

(assert (not b!5163362))

(assert tp_is_empty!38329)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1666163 () Bool)

(declare-fun lt!2123044 () Int)

(assert (=> d!1666163 (>= lt!2123044 0)))

(declare-fun e!3217185 () Int)

(assert (=> d!1666163 (= lt!2123044 e!3217185)))

(declare-fun c!888309 () Bool)

(assert (=> d!1666163 (= c!888309 (is-Nil!59909 input!5707))))

(assert (=> d!1666163 (= (size!39576 input!5707) lt!2123044)))

(declare-fun b!5163390 () Bool)

(assert (=> b!5163390 (= e!3217185 0)))

(declare-fun b!5163391 () Bool)

(assert (=> b!5163391 (= e!3217185 (+ 1 (size!39576 (t!373186 input!5707))))))

(assert (= (and d!1666163 c!888309) b!5163390))

(assert (= (and d!1666163 (not c!888309)) b!5163391))

(declare-fun m!6214052 () Bool)

(assert (=> b!5163391 m!6214052))

(assert (=> b!5163363 d!1666163))

(declare-fun d!1666167 () Bool)

(declare-fun lt!2123047 () List!60033)

(assert (=> d!1666167 (= (++!13089 Nil!59909 lt!2123047) input!5707)))

(declare-fun e!3217188 () List!60033)

(assert (=> d!1666167 (= lt!2123047 e!3217188)))

(declare-fun c!888312 () Bool)

(assert (=> d!1666167 (= c!888312 (is-Cons!59909 Nil!59909))))

(assert (=> d!1666167 (>= (size!39576 input!5707) (size!39576 Nil!59909))))

(assert (=> d!1666167 (= (getSuffix!3329 input!5707 Nil!59909) lt!2123047)))

(declare-fun b!5163396 () Bool)

(declare-fun tail!10107 (List!60033) List!60033)

(assert (=> b!5163396 (= e!3217188 (getSuffix!3329 (tail!10107 input!5707) (t!373186 Nil!59909)))))

(declare-fun b!5163397 () Bool)

(assert (=> b!5163397 (= e!3217188 input!5707)))

(assert (= (and d!1666167 c!888312) b!5163396))

(assert (= (and d!1666167 (not c!888312)) b!5163397))

(declare-fun m!6214054 () Bool)

(assert (=> d!1666167 m!6214054))

(assert (=> d!1666167 m!6214016))

(assert (=> d!1666167 m!6214018))

(declare-fun m!6214056 () Bool)

(assert (=> b!5163396 m!6214056))

(assert (=> b!5163396 m!6214056))

(declare-fun m!6214058 () Bool)

(assert (=> b!5163396 m!6214058))

(assert (=> b!5163363 d!1666167))

(declare-fun d!1666169 () Bool)

(declare-fun e!3217200 () Bool)

(assert (=> d!1666169 e!3217200))

(declare-fun res!2195237 () Bool)

(assert (=> d!1666169 (=> res!2195237 e!3217200)))

(assert (=> d!1666169 (= res!2195237 (isEmpty!32090 (_1!35130 (findLongestMatchInnerZipper!208 z!4413 Nil!59909 (size!39576 Nil!59909) (getSuffix!3329 input!5707 Nil!59909) input!5707 (size!39576 input!5707)))))))

(declare-fun lt!2123053 () Unit!151351)

(declare-fun choose!38197 ((Set Context!7848) (Set Context!7848) List!60033 List!60033) Unit!151351)

(assert (=> d!1666169 (= lt!2123053 (choose!38197 z!4413 z!4413 Nil!59909 input!5707))))

(assert (=> d!1666169 (isPrefix!5671 Nil!59909 input!5707)))

(assert (=> d!1666169 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!6 z!4413 z!4413 Nil!59909 input!5707) lt!2123053)))

(declare-fun b!5163412 () Bool)

(assert (=> b!5163412 (= e!3217200 (matchZipper!942 z!4413 (_1!35130 (findLongestMatchInnerZipper!208 z!4413 Nil!59909 (size!39576 Nil!59909) (getSuffix!3329 input!5707 Nil!59909) input!5707 (size!39576 input!5707)))))))

(assert (= (and d!1666169 (not res!2195237)) b!5163412))

(assert (=> d!1666169 m!6214004))

(assert (=> d!1666169 m!6214008))

(declare-fun m!6214070 () Bool)

(assert (=> d!1666169 m!6214070))

(assert (=> d!1666169 m!6214018))

(declare-fun m!6214072 () Bool)

(assert (=> d!1666169 m!6214072))

(assert (=> d!1666169 m!6214016))

(assert (=> d!1666169 m!6214018))

(assert (=> d!1666169 m!6214008))

(assert (=> d!1666169 m!6214016))

(declare-fun m!6214074 () Bool)

(assert (=> d!1666169 m!6214074))

(declare-fun m!6214076 () Bool)

(assert (=> b!5163412 m!6214076))

(assert (=> b!5163412 m!6214008))

(assert (=> b!5163412 m!6214018))

(assert (=> b!5163412 m!6214016))

(assert (=> b!5163412 m!6214018))

(assert (=> b!5163412 m!6214008))

(assert (=> b!5163412 m!6214016))

(assert (=> b!5163412 m!6214074))

(assert (=> b!5163363 d!1666169))

(declare-fun d!1666175 () Bool)

(declare-fun lt!2123054 () Int)

(assert (=> d!1666175 (>= lt!2123054 0)))

(declare-fun e!3217201 () Int)

(assert (=> d!1666175 (= lt!2123054 e!3217201)))

(declare-fun c!888313 () Bool)

(assert (=> d!1666175 (= c!888313 (is-Nil!59909 Nil!59909))))

(assert (=> d!1666175 (= (size!39576 Nil!59909) lt!2123054)))

(declare-fun b!5163413 () Bool)

(assert (=> b!5163413 (= e!3217201 0)))

(declare-fun b!5163414 () Bool)

(assert (=> b!5163414 (= e!3217201 (+ 1 (size!39576 (t!373186 Nil!59909))))))

(assert (= (and d!1666175 c!888313) b!5163413))

(assert (= (and d!1666175 (not c!888313)) b!5163414))

(declare-fun m!6214078 () Bool)

(assert (=> b!5163414 m!6214078))

(assert (=> b!5163363 d!1666175))

(declare-fun d!1666177 () Bool)

(assert (=> d!1666177 (= (isEmpty!32090 (_1!35130 (findLongestMatchInnerZipper!208 z!4413 Nil!59909 lt!2123023 input!5707 input!5707 lt!2123026))) (is-Nil!59909 (_1!35130 (findLongestMatchInnerZipper!208 z!4413 Nil!59909 lt!2123023 input!5707 input!5707 lt!2123026))))))

(assert (=> b!5163363 d!1666177))

(declare-fun b!5163443 () Bool)

(declare-fun e!3217219 () tuple2!63654)

(declare-fun lt!2123115 () tuple2!63654)

(assert (=> b!5163443 (= e!3217219 lt!2123115)))

(declare-fun bm!362071 () Bool)

(declare-fun call!362076 () C!29346)

(declare-fun head!10996 (List!60033) C!29346)

(assert (=> bm!362071 (= call!362076 (head!10996 input!5707))))

(declare-fun b!5163444 () Bool)

(declare-fun e!3217223 () tuple2!63654)

(declare-fun e!3217220 () tuple2!63654)

(assert (=> b!5163444 (= e!3217223 e!3217220)))

(declare-fun c!888329 () Bool)

(assert (=> b!5163444 (= c!888329 (= lt!2123023 lt!2123026))))

(declare-fun bm!362072 () Bool)

(declare-fun call!362077 () Unit!151351)

(declare-fun lemmaIsPrefixRefl!3711 (List!60033 List!60033) Unit!151351)

(assert (=> bm!362072 (= call!362077 (lemmaIsPrefixRefl!3711 input!5707 input!5707))))

(declare-fun b!5163445 () Bool)

(declare-fun c!888327 () Bool)

(declare-fun call!362081 () Bool)

(assert (=> b!5163445 (= c!888327 call!362081)))

(declare-fun lt!2123109 () Unit!151351)

(declare-fun lt!2123129 () Unit!151351)

(assert (=> b!5163445 (= lt!2123109 lt!2123129)))

(declare-fun lt!2123119 () C!29346)

(declare-fun lt!2123124 () List!60033)

(assert (=> b!5163445 (= (++!13089 (++!13089 Nil!59909 (Cons!59909 lt!2123119 Nil!59909)) lt!2123124) input!5707)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1550 (List!60033 C!29346 List!60033 List!60033) Unit!151351)

(assert (=> b!5163445 (= lt!2123129 (lemmaMoveElementToOtherListKeepsConcatEq!1550 Nil!59909 lt!2123119 lt!2123124 input!5707))))

(assert (=> b!5163445 (= lt!2123124 (tail!10107 input!5707))))

(assert (=> b!5163445 (= lt!2123119 (head!10996 input!5707))))

(declare-fun lt!2123108 () Unit!151351)

(declare-fun lt!2123126 () Unit!151351)

(assert (=> b!5163445 (= lt!2123108 lt!2123126)))

(assert (=> b!5163445 (isPrefix!5671 (++!13089 Nil!59909 (Cons!59909 (head!10996 (getSuffix!3329 input!5707 Nil!59909)) Nil!59909)) input!5707)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1025 (List!60033 List!60033) Unit!151351)

(assert (=> b!5163445 (= lt!2123126 (lemmaAddHeadSuffixToPrefixStillPrefix!1025 Nil!59909 input!5707))))

(declare-fun lt!2123117 () List!60033)

(assert (=> b!5163445 (= lt!2123117 (++!13089 Nil!59909 (Cons!59909 (head!10996 input!5707) Nil!59909)))))

(declare-fun lt!2123125 () Unit!151351)

(declare-fun e!3217218 () Unit!151351)

(assert (=> b!5163445 (= lt!2123125 e!3217218)))

(declare-fun c!888328 () Bool)

(assert (=> b!5163445 (= c!888328 (= (size!39576 Nil!59909) (size!39576 input!5707)))))

(declare-fun lt!2123130 () Unit!151351)

(declare-fun lt!2123107 () Unit!151351)

(assert (=> b!5163445 (= lt!2123130 lt!2123107)))

(assert (=> b!5163445 (<= (size!39576 Nil!59909) (size!39576 input!5707))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!865 (List!60033 List!60033) Unit!151351)

(assert (=> b!5163445 (= lt!2123107 (lemmaIsPrefixThenSmallerEqSize!865 Nil!59909 input!5707))))

(declare-fun e!3217221 () tuple2!63654)

(assert (=> b!5163445 (= e!3217220 e!3217221)))

(declare-fun bm!362073 () Bool)

(declare-fun call!362080 () List!60033)

(assert (=> bm!362073 (= call!362080 (tail!10107 input!5707))))

(declare-fun bm!362074 () Bool)

(declare-fun call!362079 () (Set Context!7848))

(declare-fun derivationStepZipper!931 ((Set Context!7848) C!29346) (Set Context!7848))

(assert (=> bm!362074 (= call!362079 (derivationStepZipper!931 z!4413 call!362076))))

(declare-fun bm!362075 () Bool)

(declare-fun nullableZipper!1113 ((Set Context!7848)) Bool)

(assert (=> bm!362075 (= call!362081 (nullableZipper!1113 z!4413))))

(declare-fun bm!362076 () Bool)

(declare-fun call!362083 () Unit!151351)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1355 (List!60033 List!60033 List!60033) Unit!151351)

(assert (=> bm!362076 (= call!362083 (lemmaIsPrefixSameLengthThenSameList!1355 input!5707 Nil!59909 input!5707))))

(declare-fun b!5163446 () Bool)

(declare-fun call!362078 () tuple2!63654)

(assert (=> b!5163446 (= e!3217221 call!362078)))

(declare-fun b!5163447 () Bool)

(declare-fun Unit!151355 () Unit!151351)

(assert (=> b!5163447 (= e!3217218 Unit!151355)))

(declare-fun lt!2123112 () Unit!151351)

(assert (=> b!5163447 (= lt!2123112 call!362077)))

(declare-fun call!362082 () Bool)

(assert (=> b!5163447 call!362082))

(declare-fun lt!2123120 () Unit!151351)

(assert (=> b!5163447 (= lt!2123120 lt!2123112)))

(declare-fun lt!2123131 () Unit!151351)

(assert (=> b!5163447 (= lt!2123131 call!362083)))

(assert (=> b!5163447 (= input!5707 Nil!59909)))

(declare-fun lt!2123127 () Unit!151351)

(assert (=> b!5163447 (= lt!2123127 lt!2123131)))

(assert (=> b!5163447 false))

(declare-fun b!5163449 () Bool)

(declare-fun e!3217224 () tuple2!63654)

(assert (=> b!5163449 (= e!3217224 (tuple2!63655 Nil!59909 input!5707))))

(declare-fun b!5163450 () Bool)

(declare-fun Unit!151356 () Unit!151351)

(assert (=> b!5163450 (= e!3217218 Unit!151356)))

(declare-fun b!5163451 () Bool)

(declare-fun e!3217222 () Bool)

(declare-fun lt!2123114 () tuple2!63654)

(assert (=> b!5163451 (= e!3217222 (>= (size!39576 (_1!35130 lt!2123114)) (size!39576 Nil!59909)))))

(declare-fun b!5163452 () Bool)

(assert (=> b!5163452 (= e!3217223 (tuple2!63655 Nil!59909 input!5707))))

(declare-fun b!5163453 () Bool)

(declare-fun c!888331 () Bool)

(assert (=> b!5163453 (= c!888331 call!362081)))

(declare-fun lt!2123110 () Unit!151351)

(declare-fun lt!2123113 () Unit!151351)

(assert (=> b!5163453 (= lt!2123110 lt!2123113)))

(assert (=> b!5163453 (= input!5707 Nil!59909)))

(assert (=> b!5163453 (= lt!2123113 call!362083)))

(declare-fun lt!2123123 () Unit!151351)

(declare-fun lt!2123121 () Unit!151351)

(assert (=> b!5163453 (= lt!2123123 lt!2123121)))

(assert (=> b!5163453 call!362082))

(assert (=> b!5163453 (= lt!2123121 call!362077)))

(assert (=> b!5163453 (= e!3217220 e!3217224)))

(declare-fun b!5163454 () Bool)

(assert (=> b!5163454 (= e!3217221 e!3217219)))

(assert (=> b!5163454 (= lt!2123115 call!362078)))

(declare-fun c!888326 () Bool)

(assert (=> b!5163454 (= c!888326 (isEmpty!32090 (_1!35130 lt!2123115)))))

(declare-fun b!5163455 () Bool)

(assert (=> b!5163455 (= e!3217224 (tuple2!63655 Nil!59909 Nil!59909))))

(declare-fun b!5163456 () Bool)

(assert (=> b!5163456 (= e!3217219 (tuple2!63655 Nil!59909 input!5707))))

(declare-fun bm!362077 () Bool)

(assert (=> bm!362077 (= call!362078 (findLongestMatchInnerZipper!208 call!362079 lt!2123117 (+ lt!2123023 1) call!362080 input!5707 lt!2123026))))

(declare-fun bm!362078 () Bool)

(assert (=> bm!362078 (= call!362082 (isPrefix!5671 input!5707 input!5707))))

(declare-fun b!5163448 () Bool)

(declare-fun e!3217225 () Bool)

(assert (=> b!5163448 (= e!3217225 e!3217222)))

(declare-fun res!2195242 () Bool)

(assert (=> b!5163448 (=> res!2195242 e!3217222)))

(assert (=> b!5163448 (= res!2195242 (isEmpty!32090 (_1!35130 lt!2123114)))))

(declare-fun d!1666179 () Bool)

(assert (=> d!1666179 e!3217225))

(declare-fun res!2195243 () Bool)

(assert (=> d!1666179 (=> (not res!2195243) (not e!3217225))))

(assert (=> d!1666179 (= res!2195243 (= (++!13089 (_1!35130 lt!2123114) (_2!35130 lt!2123114)) input!5707))))

(assert (=> d!1666179 (= lt!2123114 e!3217223)))

(declare-fun c!888330 () Bool)

(declare-fun lostCauseZipper!1302 ((Set Context!7848)) Bool)

(assert (=> d!1666179 (= c!888330 (lostCauseZipper!1302 z!4413))))

(declare-fun lt!2123132 () Unit!151351)

(declare-fun Unit!151357 () Unit!151351)

(assert (=> d!1666179 (= lt!2123132 Unit!151357)))

(assert (=> d!1666179 (= (getSuffix!3329 input!5707 Nil!59909) input!5707)))

(declare-fun lt!2123122 () Unit!151351)

(declare-fun lt!2123111 () Unit!151351)

(assert (=> d!1666179 (= lt!2123122 lt!2123111)))

(declare-fun lt!2123118 () List!60033)

(assert (=> d!1666179 (= input!5707 lt!2123118)))

(declare-fun lemmaSamePrefixThenSameSuffix!2669 (List!60033 List!60033 List!60033 List!60033 List!60033) Unit!151351)

(assert (=> d!1666179 (= lt!2123111 (lemmaSamePrefixThenSameSuffix!2669 Nil!59909 input!5707 Nil!59909 lt!2123118 input!5707))))

(assert (=> d!1666179 (= lt!2123118 (getSuffix!3329 input!5707 Nil!59909))))

(declare-fun lt!2123128 () Unit!151351)

(declare-fun lt!2123116 () Unit!151351)

(assert (=> d!1666179 (= lt!2123128 lt!2123116)))

(assert (=> d!1666179 (isPrefix!5671 Nil!59909 (++!13089 Nil!59909 input!5707))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3563 (List!60033 List!60033) Unit!151351)

(assert (=> d!1666179 (= lt!2123116 (lemmaConcatTwoListThenFirstIsPrefix!3563 Nil!59909 input!5707))))

(assert (=> d!1666179 (= (++!13089 Nil!59909 input!5707) input!5707)))

(assert (=> d!1666179 (= (findLongestMatchInnerZipper!208 z!4413 Nil!59909 lt!2123023 input!5707 input!5707 lt!2123026) lt!2123114)))

(assert (= (and d!1666179 c!888330) b!5163452))

(assert (= (and d!1666179 (not c!888330)) b!5163444))

(assert (= (and b!5163444 c!888329) b!5163453))

(assert (= (and b!5163444 (not c!888329)) b!5163445))

(assert (= (and b!5163453 c!888331) b!5163455))

(assert (= (and b!5163453 (not c!888331)) b!5163449))

(assert (= (and b!5163445 c!888328) b!5163447))

(assert (= (and b!5163445 (not c!888328)) b!5163450))

(assert (= (and b!5163445 c!888327) b!5163454))

(assert (= (and b!5163445 (not c!888327)) b!5163446))

(assert (= (and b!5163454 c!888326) b!5163456))

(assert (= (and b!5163454 (not c!888326)) b!5163443))

(assert (= (or b!5163454 b!5163446) bm!362071))

(assert (= (or b!5163454 b!5163446) bm!362073))

(assert (= (or b!5163454 b!5163446) bm!362074))

(assert (= (or b!5163454 b!5163446) bm!362077))

(assert (= (or b!5163453 b!5163447) bm!362078))

(assert (= (or b!5163453 b!5163447) bm!362072))

(assert (= (or b!5163453 b!5163445) bm!362075))

(assert (= (or b!5163453 b!5163447) bm!362076))

(assert (= (and d!1666179 res!2195243) b!5163448))

(assert (= (and b!5163448 (not res!2195242)) b!5163451))

(declare-fun m!6214080 () Bool)

(assert (=> bm!362074 m!6214080))

(declare-fun m!6214082 () Bool)

(assert (=> bm!362078 m!6214082))

(declare-fun m!6214084 () Bool)

(assert (=> bm!362072 m!6214084))

(declare-fun m!6214086 () Bool)

(assert (=> b!5163448 m!6214086))

(declare-fun m!6214088 () Bool)

(assert (=> bm!362075 m!6214088))

(assert (=> b!5163445 m!6214018))

(declare-fun m!6214090 () Bool)

(assert (=> b!5163445 m!6214090))

(assert (=> b!5163445 m!6214008))

(declare-fun m!6214092 () Bool)

(assert (=> b!5163445 m!6214092))

(declare-fun m!6214094 () Bool)

(assert (=> b!5163445 m!6214094))

(assert (=> b!5163445 m!6214016))

(declare-fun m!6214096 () Bool)

(assert (=> b!5163445 m!6214096))

(declare-fun m!6214098 () Bool)

(assert (=> b!5163445 m!6214098))

(assert (=> b!5163445 m!6214056))

(declare-fun m!6214100 () Bool)

(assert (=> b!5163445 m!6214100))

(assert (=> b!5163445 m!6214100))

(declare-fun m!6214102 () Bool)

(assert (=> b!5163445 m!6214102))

(declare-fun m!6214104 () Bool)

(assert (=> b!5163445 m!6214104))

(assert (=> b!5163445 m!6214008))

(declare-fun m!6214106 () Bool)

(assert (=> b!5163445 m!6214106))

(assert (=> b!5163445 m!6214090))

(declare-fun m!6214108 () Bool)

(assert (=> b!5163445 m!6214108))

(declare-fun m!6214110 () Bool)

(assert (=> bm!362077 m!6214110))

(assert (=> bm!362073 m!6214056))

(assert (=> d!1666179 m!6214024))

(declare-fun m!6214112 () Bool)

(assert (=> d!1666179 m!6214112))

(declare-fun m!6214114 () Bool)

(assert (=> d!1666179 m!6214114))

(declare-fun m!6214116 () Bool)

(assert (=> d!1666179 m!6214116))

(assert (=> d!1666179 m!6214008))

(assert (=> d!1666179 m!6214024))

(declare-fun m!6214118 () Bool)

(assert (=> d!1666179 m!6214118))

(declare-fun m!6214120 () Bool)

(assert (=> d!1666179 m!6214120))

(declare-fun m!6214122 () Bool)

(assert (=> b!5163451 m!6214122))

(assert (=> b!5163451 m!6214018))

(declare-fun m!6214124 () Bool)

(assert (=> b!5163454 m!6214124))

(assert (=> bm!362071 m!6214094))

(declare-fun m!6214126 () Bool)

(assert (=> bm!362076 m!6214126))

(assert (=> b!5163363 d!1666179))

(declare-fun b!5163457 () Bool)

(declare-fun e!3217227 () tuple2!63654)

(declare-fun lt!2123141 () tuple2!63654)

(assert (=> b!5163457 (= e!3217227 lt!2123141)))

(declare-fun bm!362079 () Bool)

(declare-fun call!362084 () C!29346)

(assert (=> bm!362079 (= call!362084 (head!10996 lt!2123025))))

(declare-fun b!5163458 () Bool)

(declare-fun e!3217231 () tuple2!63654)

(declare-fun e!3217228 () tuple2!63654)

(assert (=> b!5163458 (= e!3217231 e!3217228)))

(declare-fun c!888335 () Bool)

(assert (=> b!5163458 (= c!888335 (= lt!2123023 lt!2123026))))

(declare-fun bm!362080 () Bool)

(declare-fun call!362085 () Unit!151351)

(assert (=> bm!362080 (= call!362085 (lemmaIsPrefixRefl!3711 input!5707 input!5707))))

(declare-fun b!5163459 () Bool)

(declare-fun c!888333 () Bool)

(declare-fun call!362089 () Bool)

(assert (=> b!5163459 (= c!888333 call!362089)))

(declare-fun lt!2123135 () Unit!151351)

(declare-fun lt!2123155 () Unit!151351)

(assert (=> b!5163459 (= lt!2123135 lt!2123155)))

(declare-fun lt!2123145 () C!29346)

(declare-fun lt!2123150 () List!60033)

(assert (=> b!5163459 (= (++!13089 (++!13089 Nil!59909 (Cons!59909 lt!2123145 Nil!59909)) lt!2123150) input!5707)))

(assert (=> b!5163459 (= lt!2123155 (lemmaMoveElementToOtherListKeepsConcatEq!1550 Nil!59909 lt!2123145 lt!2123150 input!5707))))

(assert (=> b!5163459 (= lt!2123150 (tail!10107 lt!2123025))))

(assert (=> b!5163459 (= lt!2123145 (head!10996 lt!2123025))))

(declare-fun lt!2123134 () Unit!151351)

(declare-fun lt!2123152 () Unit!151351)

(assert (=> b!5163459 (= lt!2123134 lt!2123152)))

(assert (=> b!5163459 (isPrefix!5671 (++!13089 Nil!59909 (Cons!59909 (head!10996 (getSuffix!3329 input!5707 Nil!59909)) Nil!59909)) input!5707)))

(assert (=> b!5163459 (= lt!2123152 (lemmaAddHeadSuffixToPrefixStillPrefix!1025 Nil!59909 input!5707))))

(declare-fun lt!2123143 () List!60033)

(assert (=> b!5163459 (= lt!2123143 (++!13089 Nil!59909 (Cons!59909 (head!10996 lt!2123025) Nil!59909)))))

(declare-fun lt!2123151 () Unit!151351)

(declare-fun e!3217226 () Unit!151351)

(assert (=> b!5163459 (= lt!2123151 e!3217226)))

(declare-fun c!888334 () Bool)

(assert (=> b!5163459 (= c!888334 (= (size!39576 Nil!59909) (size!39576 input!5707)))))

(declare-fun lt!2123156 () Unit!151351)

(declare-fun lt!2123133 () Unit!151351)

(assert (=> b!5163459 (= lt!2123156 lt!2123133)))

(assert (=> b!5163459 (<= (size!39576 Nil!59909) (size!39576 input!5707))))

(assert (=> b!5163459 (= lt!2123133 (lemmaIsPrefixThenSmallerEqSize!865 Nil!59909 input!5707))))

(declare-fun e!3217229 () tuple2!63654)

(assert (=> b!5163459 (= e!3217228 e!3217229)))

(declare-fun bm!362081 () Bool)

(declare-fun call!362088 () List!60033)

(assert (=> bm!362081 (= call!362088 (tail!10107 lt!2123025))))

(declare-fun bm!362082 () Bool)

(declare-fun call!362087 () (Set Context!7848))

(assert (=> bm!362082 (= call!362087 (derivationStepZipper!931 z!4413 call!362084))))

(declare-fun bm!362083 () Bool)

(assert (=> bm!362083 (= call!362089 (nullableZipper!1113 z!4413))))

(declare-fun bm!362084 () Bool)

(declare-fun call!362091 () Unit!151351)

(assert (=> bm!362084 (= call!362091 (lemmaIsPrefixSameLengthThenSameList!1355 input!5707 Nil!59909 input!5707))))

(declare-fun b!5163460 () Bool)

(declare-fun call!362086 () tuple2!63654)

(assert (=> b!5163460 (= e!3217229 call!362086)))

(declare-fun b!5163461 () Bool)

(declare-fun Unit!151358 () Unit!151351)

(assert (=> b!5163461 (= e!3217226 Unit!151358)))

(declare-fun lt!2123138 () Unit!151351)

(assert (=> b!5163461 (= lt!2123138 call!362085)))

(declare-fun call!362090 () Bool)

(assert (=> b!5163461 call!362090))

(declare-fun lt!2123146 () Unit!151351)

(assert (=> b!5163461 (= lt!2123146 lt!2123138)))

(declare-fun lt!2123157 () Unit!151351)

(assert (=> b!5163461 (= lt!2123157 call!362091)))

(assert (=> b!5163461 (= input!5707 Nil!59909)))

(declare-fun lt!2123153 () Unit!151351)

(assert (=> b!5163461 (= lt!2123153 lt!2123157)))

(assert (=> b!5163461 false))

(declare-fun b!5163463 () Bool)

(declare-fun e!3217232 () tuple2!63654)

(assert (=> b!5163463 (= e!3217232 (tuple2!63655 Nil!59909 input!5707))))

(declare-fun b!5163464 () Bool)

(declare-fun Unit!151359 () Unit!151351)

(assert (=> b!5163464 (= e!3217226 Unit!151359)))

(declare-fun b!5163465 () Bool)

(declare-fun e!3217230 () Bool)

(declare-fun lt!2123140 () tuple2!63654)

(assert (=> b!5163465 (= e!3217230 (>= (size!39576 (_1!35130 lt!2123140)) (size!39576 Nil!59909)))))

(declare-fun b!5163466 () Bool)

(assert (=> b!5163466 (= e!3217231 (tuple2!63655 Nil!59909 input!5707))))

(declare-fun b!5163467 () Bool)

(declare-fun c!888337 () Bool)

(assert (=> b!5163467 (= c!888337 call!362089)))

(declare-fun lt!2123136 () Unit!151351)

(declare-fun lt!2123139 () Unit!151351)

(assert (=> b!5163467 (= lt!2123136 lt!2123139)))

(assert (=> b!5163467 (= input!5707 Nil!59909)))

(assert (=> b!5163467 (= lt!2123139 call!362091)))

(declare-fun lt!2123149 () Unit!151351)

(declare-fun lt!2123147 () Unit!151351)

(assert (=> b!5163467 (= lt!2123149 lt!2123147)))

(assert (=> b!5163467 call!362090))

(assert (=> b!5163467 (= lt!2123147 call!362085)))

(assert (=> b!5163467 (= e!3217228 e!3217232)))

(declare-fun b!5163468 () Bool)

(assert (=> b!5163468 (= e!3217229 e!3217227)))

(assert (=> b!5163468 (= lt!2123141 call!362086)))

(declare-fun c!888332 () Bool)

(assert (=> b!5163468 (= c!888332 (isEmpty!32090 (_1!35130 lt!2123141)))))

(declare-fun b!5163469 () Bool)

(assert (=> b!5163469 (= e!3217232 (tuple2!63655 Nil!59909 Nil!59909))))

(declare-fun b!5163470 () Bool)

(assert (=> b!5163470 (= e!3217227 (tuple2!63655 Nil!59909 lt!2123025))))

(declare-fun bm!362085 () Bool)

(assert (=> bm!362085 (= call!362086 (findLongestMatchInnerZipper!208 call!362087 lt!2123143 (+ lt!2123023 1) call!362088 input!5707 lt!2123026))))

(declare-fun bm!362086 () Bool)

(assert (=> bm!362086 (= call!362090 (isPrefix!5671 input!5707 input!5707))))

(declare-fun b!5163462 () Bool)

(declare-fun e!3217233 () Bool)

(assert (=> b!5163462 (= e!3217233 e!3217230)))

(declare-fun res!2195244 () Bool)

(assert (=> b!5163462 (=> res!2195244 e!3217230)))

(assert (=> b!5163462 (= res!2195244 (isEmpty!32090 (_1!35130 lt!2123140)))))

(declare-fun d!1666181 () Bool)

(assert (=> d!1666181 e!3217233))

(declare-fun res!2195245 () Bool)

(assert (=> d!1666181 (=> (not res!2195245) (not e!3217233))))

(assert (=> d!1666181 (= res!2195245 (= (++!13089 (_1!35130 lt!2123140) (_2!35130 lt!2123140)) input!5707))))

(assert (=> d!1666181 (= lt!2123140 e!3217231)))

(declare-fun c!888336 () Bool)

(assert (=> d!1666181 (= c!888336 (lostCauseZipper!1302 z!4413))))

(declare-fun lt!2123158 () Unit!151351)

(declare-fun Unit!151360 () Unit!151351)

(assert (=> d!1666181 (= lt!2123158 Unit!151360)))

(assert (=> d!1666181 (= (getSuffix!3329 input!5707 Nil!59909) lt!2123025)))

(declare-fun lt!2123148 () Unit!151351)

(declare-fun lt!2123137 () Unit!151351)

(assert (=> d!1666181 (= lt!2123148 lt!2123137)))

(declare-fun lt!2123144 () List!60033)

(assert (=> d!1666181 (= lt!2123025 lt!2123144)))

(assert (=> d!1666181 (= lt!2123137 (lemmaSamePrefixThenSameSuffix!2669 Nil!59909 lt!2123025 Nil!59909 lt!2123144 input!5707))))

(assert (=> d!1666181 (= lt!2123144 (getSuffix!3329 input!5707 Nil!59909))))

(declare-fun lt!2123154 () Unit!151351)

(declare-fun lt!2123142 () Unit!151351)

(assert (=> d!1666181 (= lt!2123154 lt!2123142)))

(assert (=> d!1666181 (isPrefix!5671 Nil!59909 (++!13089 Nil!59909 lt!2123025))))

(assert (=> d!1666181 (= lt!2123142 (lemmaConcatTwoListThenFirstIsPrefix!3563 Nil!59909 lt!2123025))))

(assert (=> d!1666181 (= (++!13089 Nil!59909 lt!2123025) input!5707)))

(assert (=> d!1666181 (= (findLongestMatchInnerZipper!208 z!4413 Nil!59909 lt!2123023 lt!2123025 input!5707 lt!2123026) lt!2123140)))

(assert (= (and d!1666181 c!888336) b!5163466))

(assert (= (and d!1666181 (not c!888336)) b!5163458))

(assert (= (and b!5163458 c!888335) b!5163467))

(assert (= (and b!5163458 (not c!888335)) b!5163459))

(assert (= (and b!5163467 c!888337) b!5163469))

(assert (= (and b!5163467 (not c!888337)) b!5163463))

(assert (= (and b!5163459 c!888334) b!5163461))

(assert (= (and b!5163459 (not c!888334)) b!5163464))

(assert (= (and b!5163459 c!888333) b!5163468))

(assert (= (and b!5163459 (not c!888333)) b!5163460))

(assert (= (and b!5163468 c!888332) b!5163470))

(assert (= (and b!5163468 (not c!888332)) b!5163457))

(assert (= (or b!5163468 b!5163460) bm!362079))

(assert (= (or b!5163468 b!5163460) bm!362081))

(assert (= (or b!5163468 b!5163460) bm!362082))

(assert (= (or b!5163468 b!5163460) bm!362085))

(assert (= (or b!5163467 b!5163461) bm!362086))

(assert (= (or b!5163467 b!5163461) bm!362080))

(assert (= (or b!5163467 b!5163459) bm!362083))

(assert (= (or b!5163467 b!5163461) bm!362084))

(assert (= (and d!1666181 res!2195245) b!5163462))

(assert (= (and b!5163462 (not res!2195244)) b!5163465))

(declare-fun m!6214128 () Bool)

(assert (=> bm!362082 m!6214128))

(assert (=> bm!362086 m!6214082))

(assert (=> bm!362080 m!6214084))

(declare-fun m!6214130 () Bool)

(assert (=> b!5163462 m!6214130))

(assert (=> bm!362083 m!6214088))

(assert (=> b!5163459 m!6214018))

(assert (=> b!5163459 m!6214090))

(assert (=> b!5163459 m!6214008))

(assert (=> b!5163459 m!6214092))

(declare-fun m!6214132 () Bool)

(assert (=> b!5163459 m!6214132))

(assert (=> b!5163459 m!6214016))

(declare-fun m!6214134 () Bool)

(assert (=> b!5163459 m!6214134))

(assert (=> b!5163459 m!6214098))

(declare-fun m!6214136 () Bool)

(assert (=> b!5163459 m!6214136))

(declare-fun m!6214138 () Bool)

(assert (=> b!5163459 m!6214138))

(assert (=> b!5163459 m!6214138))

(declare-fun m!6214140 () Bool)

(assert (=> b!5163459 m!6214140))

(assert (=> b!5163459 m!6214104))

(assert (=> b!5163459 m!6214008))

(declare-fun m!6214142 () Bool)

(assert (=> b!5163459 m!6214142))

(assert (=> b!5163459 m!6214090))

(assert (=> b!5163459 m!6214108))

(declare-fun m!6214144 () Bool)

(assert (=> bm!362085 m!6214144))

(assert (=> bm!362081 m!6214136))

(declare-fun m!6214146 () Bool)

(assert (=> d!1666181 m!6214146))

(declare-fun m!6214148 () Bool)

(assert (=> d!1666181 m!6214148))

(assert (=> d!1666181 m!6214114))

(declare-fun m!6214150 () Bool)

(assert (=> d!1666181 m!6214150))

(assert (=> d!1666181 m!6214008))

(assert (=> d!1666181 m!6214146))

(declare-fun m!6214152 () Bool)

(assert (=> d!1666181 m!6214152))

(declare-fun m!6214154 () Bool)

(assert (=> d!1666181 m!6214154))

(declare-fun m!6214156 () Bool)

(assert (=> b!5163465 m!6214156))

(assert (=> b!5163465 m!6214018))

(declare-fun m!6214158 () Bool)

(assert (=> b!5163468 m!6214158))

(assert (=> bm!362079 m!6214132))

(assert (=> bm!362084 m!6214126))

(assert (=> b!5163363 d!1666181))

(declare-fun d!1666183 () Bool)

(assert (=> d!1666183 (= (isEmpty!32090 (_1!35130 lt!2123022)) (is-Nil!59909 (_1!35130 lt!2123022)))))

(assert (=> b!5163363 d!1666183))

(declare-fun b!5163482 () Bool)

(declare-fun e!3217239 () Bool)

(declare-fun lt!2123161 () List!60033)

(assert (=> b!5163482 (= e!3217239 (or (not (= input!5707 Nil!59909)) (= lt!2123161 Nil!59909)))))

(declare-fun b!5163480 () Bool)

(declare-fun e!3217238 () List!60033)

(assert (=> b!5163480 (= e!3217238 (Cons!59909 (h!66357 Nil!59909) (++!13089 (t!373186 Nil!59909) input!5707)))))

(declare-fun d!1666185 () Bool)

(assert (=> d!1666185 e!3217239))

(declare-fun res!2195251 () Bool)

(assert (=> d!1666185 (=> (not res!2195251) (not e!3217239))))

(declare-fun content!10621 (List!60033) (Set C!29346))

(assert (=> d!1666185 (= res!2195251 (= (content!10621 lt!2123161) (set.union (content!10621 Nil!59909) (content!10621 input!5707))))))

(assert (=> d!1666185 (= lt!2123161 e!3217238)))

(declare-fun c!888340 () Bool)

(assert (=> d!1666185 (= c!888340 (is-Nil!59909 Nil!59909))))

(assert (=> d!1666185 (= (++!13089 Nil!59909 input!5707) lt!2123161)))

(declare-fun b!5163479 () Bool)

(assert (=> b!5163479 (= e!3217238 input!5707)))

(declare-fun b!5163481 () Bool)

(declare-fun res!2195250 () Bool)

(assert (=> b!5163481 (=> (not res!2195250) (not e!3217239))))

(assert (=> b!5163481 (= res!2195250 (= (size!39576 lt!2123161) (+ (size!39576 Nil!59909) (size!39576 input!5707))))))

(assert (= (and d!1666185 c!888340) b!5163479))

(assert (= (and d!1666185 (not c!888340)) b!5163480))

(assert (= (and d!1666185 res!2195251) b!5163481))

(assert (= (and b!5163481 res!2195250) b!5163482))

(declare-fun m!6214160 () Bool)

(assert (=> b!5163480 m!6214160))

(declare-fun m!6214162 () Bool)

(assert (=> d!1666185 m!6214162))

(declare-fun m!6214164 () Bool)

(assert (=> d!1666185 m!6214164))

(declare-fun m!6214166 () Bool)

(assert (=> d!1666185 m!6214166))

(declare-fun m!6214168 () Bool)

(assert (=> b!5163481 m!6214168))

(assert (=> b!5163481 m!6214018))

(assert (=> b!5163481 m!6214016))

(assert (=> b!5163367 d!1666185))

(declare-fun b!5163493 () Bool)

(declare-fun e!3217246 () Bool)

(assert (=> b!5163493 (= e!3217246 (isPrefix!5671 (tail!10107 Nil!59909) (tail!10107 input!5707)))))

(declare-fun d!1666187 () Bool)

(declare-fun e!3217248 () Bool)

(assert (=> d!1666187 e!3217248))

(declare-fun res!2195261 () Bool)

(assert (=> d!1666187 (=> res!2195261 e!3217248)))

(declare-fun lt!2123164 () Bool)

(assert (=> d!1666187 (= res!2195261 (not lt!2123164))))

(declare-fun e!3217247 () Bool)

(assert (=> d!1666187 (= lt!2123164 e!3217247)))

(declare-fun res!2195260 () Bool)

(assert (=> d!1666187 (=> res!2195260 e!3217247)))

(assert (=> d!1666187 (= res!2195260 (is-Nil!59909 Nil!59909))))

(assert (=> d!1666187 (= (isPrefix!5671 Nil!59909 input!5707) lt!2123164)))

(declare-fun b!5163494 () Bool)

(assert (=> b!5163494 (= e!3217248 (>= (size!39576 input!5707) (size!39576 Nil!59909)))))

(declare-fun b!5163491 () Bool)

(assert (=> b!5163491 (= e!3217247 e!3217246)))

(declare-fun res!2195263 () Bool)

(assert (=> b!5163491 (=> (not res!2195263) (not e!3217246))))

(assert (=> b!5163491 (= res!2195263 (not (is-Nil!59909 input!5707)))))

(declare-fun b!5163492 () Bool)

(declare-fun res!2195262 () Bool)

(assert (=> b!5163492 (=> (not res!2195262) (not e!3217246))))

(assert (=> b!5163492 (= res!2195262 (= (head!10996 Nil!59909) (head!10996 input!5707)))))

(assert (= (and d!1666187 (not res!2195260)) b!5163491))

(assert (= (and b!5163491 res!2195263) b!5163492))

(assert (= (and b!5163492 res!2195262) b!5163493))

(assert (= (and d!1666187 (not res!2195261)) b!5163494))

(declare-fun m!6214170 () Bool)

(assert (=> b!5163493 m!6214170))

(assert (=> b!5163493 m!6214056))

(assert (=> b!5163493 m!6214170))

(assert (=> b!5163493 m!6214056))

(declare-fun m!6214172 () Bool)

(assert (=> b!5163493 m!6214172))

(assert (=> b!5163494 m!6214016))

(assert (=> b!5163494 m!6214018))

(declare-fun m!6214174 () Bool)

(assert (=> b!5163492 m!6214174))

(assert (=> b!5163492 m!6214094))

(assert (=> start!546192 d!1666187))

(declare-fun d!1666189 () Bool)

(declare-fun lambda!257710 () Int)

(declare-fun forall!14092 (List!60034 Int) Bool)

(assert (=> d!1666189 (= (inv!79595 setElem!31409) (forall!14092 (exprs!4424 setElem!31409) lambda!257710))))

(declare-fun bs!1202725 () Bool)

(assert (= bs!1202725 d!1666189))

(declare-fun m!6214270 () Bool)

(assert (=> bs!1202725 m!6214270))

(assert (=> setNonEmpty!31409 d!1666189))

(declare-fun d!1666205 () Bool)

(declare-fun c!888374 () Bool)

(assert (=> d!1666205 (= c!888374 (is-Cons!59909 Nil!59909))))

(declare-fun e!3217293 () (Set Context!7848))

(assert (=> d!1666205 (= (derivationZipper!163 z!4413 Nil!59909) e!3217293)))

(declare-fun b!5163572 () Bool)

(assert (=> b!5163572 (= e!3217293 (derivationZipper!163 (derivationStepZipper!931 z!4413 (h!66357 Nil!59909)) (t!373186 Nil!59909)))))

(declare-fun b!5163573 () Bool)

(assert (=> b!5163573 (= e!3217293 z!4413)))

(assert (= (and d!1666205 c!888374) b!5163572))

(assert (= (and d!1666205 (not c!888374)) b!5163573))

(declare-fun m!6214272 () Bool)

(assert (=> b!5163572 m!6214272))

(assert (=> b!5163572 m!6214272))

(declare-fun m!6214274 () Bool)

(assert (=> b!5163572 m!6214274))

(assert (=> b!5163365 d!1666205))

(declare-fun d!1666207 () Bool)

(declare-fun c!888377 () Bool)

(assert (=> d!1666207 (= c!888377 (isEmpty!32090 (_1!35130 lt!2123022)))))

(declare-fun e!3217296 () Bool)

(assert (=> d!1666207 (= (matchZipper!942 z!4413 (_1!35130 lt!2123022)) e!3217296)))

(declare-fun b!5163578 () Bool)

(assert (=> b!5163578 (= e!3217296 (nullableZipper!1113 z!4413))))

(declare-fun b!5163579 () Bool)

(assert (=> b!5163579 (= e!3217296 (matchZipper!942 (derivationStepZipper!931 z!4413 (head!10996 (_1!35130 lt!2123022))) (tail!10107 (_1!35130 lt!2123022))))))

(assert (= (and d!1666207 c!888377) b!5163578))

(assert (= (and d!1666207 (not c!888377)) b!5163579))

(assert (=> d!1666207 m!6214014))

(assert (=> b!5163578 m!6214088))

(declare-fun m!6214276 () Bool)

(assert (=> b!5163579 m!6214276))

(assert (=> b!5163579 m!6214276))

(declare-fun m!6214278 () Bool)

(assert (=> b!5163579 m!6214278))

(declare-fun m!6214280 () Bool)

(assert (=> b!5163579 m!6214280))

(assert (=> b!5163579 m!6214278))

(assert (=> b!5163579 m!6214280))

(declare-fun m!6214282 () Bool)

(assert (=> b!5163579 m!6214282))

(assert (=> b!5163364 d!1666207))

(declare-fun b!5163584 () Bool)

(declare-fun e!3217299 () Bool)

(declare-fun tp!1448212 () Bool)

(declare-fun tp!1448213 () Bool)

(assert (=> b!5163584 (= e!3217299 (and tp!1448212 tp!1448213))))

(assert (=> b!5163366 (= tp!1448198 e!3217299)))

(assert (= (and b!5163366 (is-Cons!59910 (exprs!4424 setElem!31409))) b!5163584))

(declare-fun b!5163589 () Bool)

(declare-fun e!3217302 () Bool)

(declare-fun tp!1448216 () Bool)

(assert (=> b!5163589 (= e!3217302 (and tp_is_empty!38329 tp!1448216))))

(assert (=> b!5163362 (= tp!1448196 e!3217302)))

(assert (= (and b!5163362 (is-Cons!59909 (t!373186 input!5707))) b!5163589))

(declare-fun condSetEmpty!31415 () Bool)

(assert (=> setNonEmpty!31409 (= condSetEmpty!31415 (= setRest!31409 (as set.empty (Set Context!7848))))))

(declare-fun setRes!31415 () Bool)

(assert (=> setNonEmpty!31409 (= tp!1448197 setRes!31415)))

(declare-fun setIsEmpty!31415 () Bool)

(assert (=> setIsEmpty!31415 setRes!31415))

(declare-fun setNonEmpty!31415 () Bool)

(declare-fun setElem!31415 () Context!7848)

(declare-fun tp!1448222 () Bool)

(declare-fun e!3217305 () Bool)

(assert (=> setNonEmpty!31415 (= setRes!31415 (and tp!1448222 (inv!79595 setElem!31415) e!3217305))))

(declare-fun setRest!31415 () (Set Context!7848))

(assert (=> setNonEmpty!31415 (= setRest!31409 (set.union (set.insert setElem!31415 (as set.empty (Set Context!7848))) setRest!31415))))

(declare-fun b!5163594 () Bool)

(declare-fun tp!1448221 () Bool)

(assert (=> b!5163594 (= e!3217305 tp!1448221)))

(assert (= (and setNonEmpty!31409 condSetEmpty!31415) setIsEmpty!31415))

(assert (= (and setNonEmpty!31409 (not condSetEmpty!31415)) setNonEmpty!31415))

(assert (= setNonEmpty!31415 b!5163594))

(declare-fun m!6214284 () Bool)

(assert (=> setNonEmpty!31415 m!6214284))

(push 1)

(assert (not b!5163396))

(assert (not bm!362077))

(assert (not b!5163589))

(assert (not b!5163465))

(assert (not b!5163572))

(assert (not d!1666185))

(assert (not bm!362074))

(assert (not bm!362082))

(assert (not b!5163445))

(assert (not b!5163493))

(assert (not b!5163584))

(assert (not bm!362075))

(assert (not bm!362081))

(assert (not bm!362071))

(assert (not b!5163481))

(assert (not b!5163480))

(assert (not b!5163494))

(assert (not d!1666179))

(assert (not d!1666169))

(assert (not bm!362080))

(assert (not b!5163578))

(assert (not d!1666189))

(assert (not bm!362076))

(assert (not b!5163468))

(assert (not b!5163579))

(assert (not bm!362073))

(assert (not d!1666207))

(assert (not d!1666167))

(assert (not bm!362079))

(assert (not b!5163492))

(assert (not b!5163451))

(assert (not bm!362072))

(assert (not setNonEmpty!31415))

(assert (not b!5163594))

(assert (not bm!362083))

(assert (not bm!362085))

(assert (not b!5163462))

(assert (not bm!362086))

(assert (not bm!362078))

(assert (not b!5163414))

(assert (not bm!362084))

(assert tp_is_empty!38329)

(assert (not b!5163448))

(assert (not b!5163454))

(assert (not b!5163412))

(assert (not b!5163391))

(assert (not d!1666181))

(assert (not b!5163459))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

