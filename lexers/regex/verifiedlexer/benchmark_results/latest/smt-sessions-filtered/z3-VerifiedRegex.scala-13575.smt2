; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730024 () Bool)

(assert start!730024)

(declare-fun b!7549989 () Bool)

(declare-fun e!4497440 () Bool)

(declare-fun e!4497438 () Bool)

(assert (=> b!7549989 (= e!4497440 e!4497438)))

(declare-fun res!3026164 () Bool)

(assert (=> b!7549989 (=> res!3026164 e!4497438)))

(declare-datatypes ((C!40216 0))(
  ( (C!40217 (val!30548 Int)) )
))
(declare-datatypes ((List!72828 0))(
  ( (Nil!72704) (Cons!72704 (h!79152 C!40216) (t!387545 List!72828)) )
))
(declare-fun lt!2646579 () List!72828)

(declare-fun input!7874 () List!72828)

(assert (=> b!7549989 (= res!3026164 (not (= lt!2646579 input!7874)))))

(declare-fun lt!2646575 () List!72828)

(declare-fun lt!2646587 () List!72828)

(declare-fun testedP!423 () List!72828)

(declare-fun ++!17461 (List!72828 List!72828) List!72828)

(assert (=> b!7549989 (= lt!2646579 (++!17461 (++!17461 testedP!423 lt!2646575) lt!2646587))))

(declare-fun b!7549990 () Bool)

(declare-fun e!4497436 () Bool)

(declare-fun tp!2196420 () Bool)

(declare-fun tp!2196421 () Bool)

(assert (=> b!7549990 (= e!4497436 (and tp!2196420 tp!2196421))))

(declare-fun b!7549991 () Bool)

(declare-fun e!4497443 () Bool)

(declare-fun tp_is_empty!50245 () Bool)

(declare-fun tp!2196426 () Bool)

(assert (=> b!7549991 (= e!4497443 (and tp_is_empty!50245 tp!2196426))))

(declare-fun b!7549992 () Bool)

(declare-fun e!4497441 () Bool)

(declare-fun tp!2196419 () Bool)

(assert (=> b!7549992 (= e!4497441 (and tp_is_empty!50245 tp!2196419))))

(declare-fun b!7549993 () Bool)

(assert (=> b!7549993 (= e!4497436 tp_is_empty!50245)))

(declare-fun b!7549994 () Bool)

(declare-fun e!4497432 () Bool)

(declare-fun tp!2196418 () Bool)

(declare-fun tp!2196425 () Bool)

(assert (=> b!7549994 (= e!4497432 (and tp!2196418 tp!2196425))))

(declare-fun b!7549995 () Bool)

(declare-fun res!3026163 () Bool)

(declare-fun e!4497442 () Bool)

(assert (=> b!7549995 (=> (not res!3026163) (not e!4497442))))

(declare-fun knownP!30 () List!72828)

(declare-fun isPrefix!6151 (List!72828 List!72828) Bool)

(assert (=> b!7549995 (= res!3026163 (isPrefix!6151 knownP!30 input!7874))))

(declare-fun b!7549996 () Bool)

(declare-fun e!4497434 () Bool)

(declare-fun lt!2646580 () C!40216)

(declare-fun $colon$colon!3389 (List!72828 C!40216) List!72828)

(declare-fun tail!15077 (List!72828) List!72828)

(assert (=> b!7549996 (= e!4497434 (= lt!2646575 ($colon$colon!3389 (tail!15077 lt!2646575) lt!2646580)))))

(declare-fun b!7549997 () Bool)

(declare-fun e!4497435 () Bool)

(declare-fun e!4497433 () Bool)

(assert (=> b!7549997 (= e!4497435 (not e!4497433))))

(declare-fun res!3026162 () Bool)

(assert (=> b!7549997 (=> res!3026162 e!4497433)))

(declare-datatypes ((Regex!19945 0))(
  ( (ElementMatch!19945 (c!1393532 C!40216)) (Concat!28790 (regOne!40402 Regex!19945) (regTwo!40402 Regex!19945)) (EmptyExpr!19945) (Star!19945 (reg!20274 Regex!19945)) (EmptyLang!19945) (Union!19945 (regOne!40403 Regex!19945) (regTwo!40403 Regex!19945)) )
))
(declare-fun r!24333 () Regex!19945)

(declare-fun matchR!9547 (Regex!19945 List!72828) Bool)

(assert (=> b!7549997 (= res!3026162 (not (matchR!9547 r!24333 lt!2646575)))))

(declare-fun getSuffix!3631 (List!72828 List!72828) List!72828)

(assert (=> b!7549997 (= lt!2646575 (getSuffix!3631 knownP!30 testedP!423))))

(assert (=> b!7549997 (isPrefix!6151 testedP!423 knownP!30)))

(declare-datatypes ((Unit!166828 0))(
  ( (Unit!166829) )
))
(declare-fun lt!2646589 () Unit!166828)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!901 (List!72828 List!72828 List!72828) Unit!166828)

(assert (=> b!7549997 (= lt!2646589 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!901 knownP!30 testedP!423 input!7874))))

(declare-fun b!7549998 () Bool)

(declare-fun res!3026155 () Bool)

(assert (=> b!7549998 (=> res!3026155 e!4497433)))

(declare-fun lt!2646586 () Int)

(declare-fun size!42441 (List!72828) Int)

(assert (=> b!7549998 (= res!3026155 (>= lt!2646586 (size!42441 input!7874)))))

(declare-fun b!7549999 () Bool)

(declare-fun e!4497439 () Bool)

(assert (=> b!7549999 (= e!4497439 e!4497434)))

(declare-fun res!3026151 () Bool)

(assert (=> b!7549999 (=> res!3026151 e!4497434)))

(declare-fun head!15535 (List!72828) C!40216)

(assert (=> b!7549999 (= res!3026151 (not (= (head!15535 lt!2646575) lt!2646580)))))

(declare-fun lt!2646583 () List!72828)

(declare-fun lt!2646577 () List!72828)

(assert (=> b!7549999 (= lt!2646583 lt!2646577)))

(declare-fun lt!2646588 () Unit!166828)

(declare-fun lemmaSamePrefixThenSameSuffix!2867 (List!72828 List!72828 List!72828 List!72828 List!72828) Unit!166828)

(assert (=> b!7549999 (= lt!2646588 (lemmaSamePrefixThenSameSuffix!2867 testedP!423 lt!2646583 testedP!423 lt!2646577 input!7874))))

(declare-fun b!7550000 () Bool)

(declare-fun res!3026166 () Bool)

(assert (=> b!7550000 (=> (not res!3026166) (not e!4497442))))

(assert (=> b!7550000 (= res!3026166 (isPrefix!6151 testedP!423 input!7874))))

(declare-fun b!7550002 () Bool)

(declare-fun e!4497437 () Bool)

(declare-fun tp!2196423 () Bool)

(assert (=> b!7550002 (= e!4497437 (and tp_is_empty!50245 tp!2196423))))

(declare-fun b!7550003 () Bool)

(declare-fun res!3026156 () Bool)

(assert (=> b!7550003 (=> res!3026156 e!4497433)))

(declare-fun baseR!101 () Regex!19945)

(declare-fun derivative!477 (Regex!19945 List!72828) Regex!19945)

(assert (=> b!7550003 (= res!3026156 (not (= (derivative!477 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7550004 () Bool)

(assert (=> b!7550004 (= e!4497442 e!4497435)))

(declare-fun res!3026157 () Bool)

(assert (=> b!7550004 (=> (not res!3026157) (not e!4497435))))

(declare-fun lt!2646578 () Int)

(assert (=> b!7550004 (= res!3026157 (>= lt!2646578 lt!2646586))))

(assert (=> b!7550004 (= lt!2646586 (size!42441 testedP!423))))

(assert (=> b!7550004 (= lt!2646578 (size!42441 knownP!30))))

(declare-fun b!7550005 () Bool)

(declare-fun res!3026153 () Bool)

(assert (=> b!7550005 (=> res!3026153 e!4497433)))

(declare-fun lostCause!1737 (Regex!19945) Bool)

(assert (=> b!7550005 (= res!3026153 (lostCause!1737 r!24333))))

(declare-fun b!7550006 () Bool)

(assert (=> b!7550006 (= e!4497433 e!4497440)))

(declare-fun res!3026160 () Bool)

(assert (=> b!7550006 (=> res!3026160 e!4497440)))

(assert (=> b!7550006 (= res!3026160 (not (= (++!17461 knownP!30 lt!2646587) input!7874)))))

(assert (=> b!7550006 (= lt!2646587 (getSuffix!3631 input!7874 knownP!30))))

(declare-fun lt!2646581 () List!72828)

(declare-fun lt!2646584 () List!72828)

(assert (=> b!7550006 (= lt!2646581 (getSuffix!3631 knownP!30 lt!2646584))))

(assert (=> b!7550006 (isPrefix!6151 lt!2646584 knownP!30)))

(declare-fun lt!2646585 () Unit!166828)

(assert (=> b!7550006 (= lt!2646585 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!901 knownP!30 lt!2646584 input!7874))))

(declare-fun derivativeStep!5735 (Regex!19945 C!40216) Regex!19945)

(assert (=> b!7550006 (= (derivative!477 baseR!101 lt!2646584) (derivativeStep!5735 r!24333 lt!2646580))))

(declare-fun lt!2646590 () Unit!166828)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!179 (Regex!19945 Regex!19945 List!72828 C!40216) Unit!166828)

(assert (=> b!7550006 (= lt!2646590 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!179 baseR!101 r!24333 testedP!423 lt!2646580))))

(assert (=> b!7550006 (isPrefix!6151 lt!2646584 input!7874)))

(declare-fun lt!2646574 () Unit!166828)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1212 (List!72828 List!72828) Unit!166828)

(assert (=> b!7550006 (= lt!2646574 (lemmaAddHeadSuffixToPrefixStillPrefix!1212 testedP!423 input!7874))))

(assert (=> b!7550006 (= lt!2646584 (++!17461 testedP!423 (Cons!72704 lt!2646580 Nil!72704)))))

(assert (=> b!7550006 (= lt!2646580 (head!15535 lt!2646577))))

(assert (=> b!7550006 (= lt!2646577 (getSuffix!3631 input!7874 testedP!423))))

(declare-fun b!7550007 () Bool)

(declare-fun tp!2196424 () Bool)

(assert (=> b!7550007 (= e!4497432 tp!2196424)))

(declare-fun b!7550008 () Bool)

(declare-fun tp!2196417 () Bool)

(assert (=> b!7550008 (= e!4497436 tp!2196417)))

(declare-fun b!7550009 () Bool)

(declare-fun tp!2196427 () Bool)

(declare-fun tp!2196428 () Bool)

(assert (=> b!7550009 (= e!4497432 (and tp!2196427 tp!2196428))))

(declare-fun b!7550010 () Bool)

(declare-fun res!3026158 () Bool)

(assert (=> b!7550010 (=> res!3026158 e!4497438)))

(assert (=> b!7550010 (= res!3026158 (not (= (++!17461 testedP!423 lt!2646577) input!7874)))))

(declare-fun b!7550011 () Bool)

(assert (=> b!7550011 (= e!4497432 tp_is_empty!50245)))

(declare-fun b!7550012 () Bool)

(declare-fun res!3026152 () Bool)

(assert (=> b!7550012 (=> (not res!3026152) (not e!4497442))))

(declare-fun validRegex!10373 (Regex!19945) Bool)

(assert (=> b!7550012 (= res!3026152 (validRegex!10373 r!24333))))

(declare-fun b!7550013 () Bool)

(declare-fun res!3026165 () Bool)

(assert (=> b!7550013 (=> (not res!3026165) (not e!4497435))))

(assert (=> b!7550013 (= res!3026165 (matchR!9547 baseR!101 knownP!30))))

(declare-fun b!7550014 () Bool)

(declare-fun res!3026159 () Bool)

(assert (=> b!7550014 (=> res!3026159 e!4497433)))

(assert (=> b!7550014 (= res!3026159 (= lt!2646586 lt!2646578))))

(declare-fun b!7550015 () Bool)

(assert (=> b!7550015 (= e!4497438 e!4497439)))

(declare-fun res!3026161 () Bool)

(assert (=> b!7550015 (=> res!3026161 e!4497439)))

(declare-fun lt!2646576 () List!72828)

(assert (=> b!7550015 (= res!3026161 (not (= lt!2646576 input!7874)))))

(assert (=> b!7550015 (= lt!2646579 lt!2646576)))

(assert (=> b!7550015 (= lt!2646576 (++!17461 testedP!423 lt!2646583))))

(assert (=> b!7550015 (= lt!2646583 (++!17461 lt!2646575 lt!2646587))))

(declare-fun lt!2646582 () Unit!166828)

(declare-fun lemmaConcatAssociativity!3100 (List!72828 List!72828 List!72828) Unit!166828)

(assert (=> b!7550015 (= lt!2646582 (lemmaConcatAssociativity!3100 testedP!423 lt!2646575 lt!2646587))))

(declare-fun res!3026154 () Bool)

(assert (=> start!730024 (=> (not res!3026154) (not e!4497442))))

(assert (=> start!730024 (= res!3026154 (validRegex!10373 baseR!101))))

(assert (=> start!730024 e!4497442))

(assert (=> start!730024 e!4497432))

(assert (=> start!730024 e!4497443))

(assert (=> start!730024 e!4497441))

(assert (=> start!730024 e!4497437))

(assert (=> start!730024 e!4497436))

(declare-fun b!7550001 () Bool)

(declare-fun tp!2196429 () Bool)

(declare-fun tp!2196422 () Bool)

(assert (=> b!7550001 (= e!4497436 (and tp!2196429 tp!2196422))))

(assert (= (and start!730024 res!3026154) b!7550012))

(assert (= (and b!7550012 res!3026152) b!7550000))

(assert (= (and b!7550000 res!3026166) b!7549995))

(assert (= (and b!7549995 res!3026163) b!7550004))

(assert (= (and b!7550004 res!3026157) b!7550013))

(assert (= (and b!7550013 res!3026165) b!7549997))

(assert (= (and b!7549997 (not res!3026162)) b!7550003))

(assert (= (and b!7550003 (not res!3026156)) b!7550005))

(assert (= (and b!7550005 (not res!3026153)) b!7550014))

(assert (= (and b!7550014 (not res!3026159)) b!7549998))

(assert (= (and b!7549998 (not res!3026155)) b!7550006))

(assert (= (and b!7550006 (not res!3026160)) b!7549989))

(assert (= (and b!7549989 (not res!3026164)) b!7550010))

(assert (= (and b!7550010 (not res!3026158)) b!7550015))

(assert (= (and b!7550015 (not res!3026161)) b!7549999))

(assert (= (and b!7549999 (not res!3026151)) b!7549996))

(get-info :version)

(assert (= (and start!730024 ((_ is ElementMatch!19945) baseR!101)) b!7550011))

(assert (= (and start!730024 ((_ is Concat!28790) baseR!101)) b!7550009))

(assert (= (and start!730024 ((_ is Star!19945) baseR!101)) b!7550007))

(assert (= (and start!730024 ((_ is Union!19945) baseR!101)) b!7549994))

(assert (= (and start!730024 ((_ is Cons!72704) input!7874)) b!7549991))

(assert (= (and start!730024 ((_ is Cons!72704) knownP!30)) b!7549992))

(assert (= (and start!730024 ((_ is Cons!72704) testedP!423)) b!7550002))

(assert (= (and start!730024 ((_ is ElementMatch!19945) r!24333)) b!7549993))

(assert (= (and start!730024 ((_ is Concat!28790) r!24333)) b!7549990))

(assert (= (and start!730024 ((_ is Star!19945) r!24333)) b!7550008))

(assert (= (and start!730024 ((_ is Union!19945) r!24333)) b!7550001))

(declare-fun m!8117172 () Bool)

(assert (=> b!7550004 m!8117172))

(declare-fun m!8117174 () Bool)

(assert (=> b!7550004 m!8117174))

(declare-fun m!8117176 () Bool)

(assert (=> b!7550003 m!8117176))

(declare-fun m!8117178 () Bool)

(assert (=> b!7549997 m!8117178))

(declare-fun m!8117180 () Bool)

(assert (=> b!7549997 m!8117180))

(declare-fun m!8117182 () Bool)

(assert (=> b!7549997 m!8117182))

(declare-fun m!8117184 () Bool)

(assert (=> b!7549997 m!8117184))

(declare-fun m!8117186 () Bool)

(assert (=> b!7549999 m!8117186))

(declare-fun m!8117188 () Bool)

(assert (=> b!7549999 m!8117188))

(declare-fun m!8117190 () Bool)

(assert (=> b!7550012 m!8117190))

(declare-fun m!8117192 () Bool)

(assert (=> b!7549989 m!8117192))

(assert (=> b!7549989 m!8117192))

(declare-fun m!8117194 () Bool)

(assert (=> b!7549989 m!8117194))

(declare-fun m!8117196 () Bool)

(assert (=> start!730024 m!8117196))

(declare-fun m!8117198 () Bool)

(assert (=> b!7550005 m!8117198))

(declare-fun m!8117200 () Bool)

(assert (=> b!7550013 m!8117200))

(declare-fun m!8117202 () Bool)

(assert (=> b!7549995 m!8117202))

(declare-fun m!8117204 () Bool)

(assert (=> b!7550000 m!8117204))

(declare-fun m!8117206 () Bool)

(assert (=> b!7549996 m!8117206))

(assert (=> b!7549996 m!8117206))

(declare-fun m!8117208 () Bool)

(assert (=> b!7549996 m!8117208))

(declare-fun m!8117210 () Bool)

(assert (=> b!7550006 m!8117210))

(declare-fun m!8117212 () Bool)

(assert (=> b!7550006 m!8117212))

(declare-fun m!8117214 () Bool)

(assert (=> b!7550006 m!8117214))

(declare-fun m!8117216 () Bool)

(assert (=> b!7550006 m!8117216))

(declare-fun m!8117218 () Bool)

(assert (=> b!7550006 m!8117218))

(declare-fun m!8117220 () Bool)

(assert (=> b!7550006 m!8117220))

(declare-fun m!8117222 () Bool)

(assert (=> b!7550006 m!8117222))

(declare-fun m!8117224 () Bool)

(assert (=> b!7550006 m!8117224))

(declare-fun m!8117226 () Bool)

(assert (=> b!7550006 m!8117226))

(declare-fun m!8117228 () Bool)

(assert (=> b!7550006 m!8117228))

(declare-fun m!8117230 () Bool)

(assert (=> b!7550006 m!8117230))

(declare-fun m!8117232 () Bool)

(assert (=> b!7550006 m!8117232))

(declare-fun m!8117234 () Bool)

(assert (=> b!7550006 m!8117234))

(declare-fun m!8117236 () Bool)

(assert (=> b!7550010 m!8117236))

(declare-fun m!8117238 () Bool)

(assert (=> b!7550015 m!8117238))

(declare-fun m!8117240 () Bool)

(assert (=> b!7550015 m!8117240))

(declare-fun m!8117242 () Bool)

(assert (=> b!7550015 m!8117242))

(declare-fun m!8117244 () Bool)

(assert (=> b!7549998 m!8117244))

(check-sat (not b!7550008) (not b!7550009) (not b!7549999) (not b!7550002) (not b!7550001) (not b!7550015) (not b!7549996) tp_is_empty!50245 (not b!7550012) (not start!730024) (not b!7549991) (not b!7550007) (not b!7550005) (not b!7549990) (not b!7549995) (not b!7549992) (not b!7550004) (not b!7550000) (not b!7550003) (not b!7550006) (not b!7549989) (not b!7549994) (not b!7550013) (not b!7550010) (not b!7549998) (not b!7549997))
(check-sat)
(get-model)

(declare-fun d!2312712 () Bool)

(declare-fun e!4497459 () Bool)

(assert (=> d!2312712 e!4497459))

(declare-fun c!1393540 () Bool)

(assert (=> d!2312712 (= c!1393540 ((_ is EmptyExpr!19945) r!24333))))

(declare-fun lt!2646593 () Bool)

(declare-fun e!4497464 () Bool)

(assert (=> d!2312712 (= lt!2646593 e!4497464)))

(declare-fun c!1393541 () Bool)

(declare-fun isEmpty!41396 (List!72828) Bool)

(assert (=> d!2312712 (= c!1393541 (isEmpty!41396 lt!2646575))))

(assert (=> d!2312712 (validRegex!10373 r!24333)))

(assert (=> d!2312712 (= (matchR!9547 r!24333 lt!2646575) lt!2646593)))

(declare-fun b!7550044 () Bool)

(declare-fun e!4497458 () Bool)

(assert (=> b!7550044 (= e!4497458 (not lt!2646593))))

(declare-fun b!7550045 () Bool)

(declare-fun e!4497463 () Bool)

(assert (=> b!7550045 (= e!4497463 (= (head!15535 lt!2646575) (c!1393532 r!24333)))))

(declare-fun b!7550046 () Bool)

(declare-fun e!4497462 () Bool)

(declare-fun e!4497461 () Bool)

(assert (=> b!7550046 (= e!4497462 e!4497461)))

(declare-fun res!3026186 () Bool)

(assert (=> b!7550046 (=> (not res!3026186) (not e!4497461))))

(assert (=> b!7550046 (= res!3026186 (not lt!2646593))))

(declare-fun b!7550047 () Bool)

(declare-fun e!4497460 () Bool)

(assert (=> b!7550047 (= e!4497461 e!4497460)))

(declare-fun res!3026189 () Bool)

(assert (=> b!7550047 (=> res!3026189 e!4497460)))

(declare-fun call!692287 () Bool)

(assert (=> b!7550047 (= res!3026189 call!692287)))

(declare-fun bm!692282 () Bool)

(assert (=> bm!692282 (= call!692287 (isEmpty!41396 lt!2646575))))

(declare-fun b!7550048 () Bool)

(assert (=> b!7550048 (= e!4497459 (= lt!2646593 call!692287))))

(declare-fun b!7550049 () Bool)

(assert (=> b!7550049 (= e!4497459 e!4497458)))

(declare-fun c!1393539 () Bool)

(assert (=> b!7550049 (= c!1393539 ((_ is EmptyLang!19945) r!24333))))

(declare-fun b!7550050 () Bool)

(assert (=> b!7550050 (= e!4497464 (matchR!9547 (derivativeStep!5735 r!24333 (head!15535 lt!2646575)) (tail!15077 lt!2646575)))))

(declare-fun b!7550051 () Bool)

(declare-fun res!3026188 () Bool)

(assert (=> b!7550051 (=> res!3026188 e!4497462)))

(assert (=> b!7550051 (= res!3026188 (not ((_ is ElementMatch!19945) r!24333)))))

(assert (=> b!7550051 (= e!4497458 e!4497462)))

(declare-fun b!7550052 () Bool)

(assert (=> b!7550052 (= e!4497460 (not (= (head!15535 lt!2646575) (c!1393532 r!24333))))))

(declare-fun b!7550053 () Bool)

(declare-fun res!3026183 () Bool)

(assert (=> b!7550053 (=> res!3026183 e!4497460)))

(assert (=> b!7550053 (= res!3026183 (not (isEmpty!41396 (tail!15077 lt!2646575))))))

(declare-fun b!7550054 () Bool)

(declare-fun res!3026187 () Bool)

(assert (=> b!7550054 (=> (not res!3026187) (not e!4497463))))

(assert (=> b!7550054 (= res!3026187 (isEmpty!41396 (tail!15077 lt!2646575)))))

(declare-fun b!7550055 () Bool)

(declare-fun res!3026184 () Bool)

(assert (=> b!7550055 (=> (not res!3026184) (not e!4497463))))

(assert (=> b!7550055 (= res!3026184 (not call!692287))))

(declare-fun b!7550056 () Bool)

(declare-fun nullable!8701 (Regex!19945) Bool)

(assert (=> b!7550056 (= e!4497464 (nullable!8701 r!24333))))

(declare-fun b!7550057 () Bool)

(declare-fun res!3026190 () Bool)

(assert (=> b!7550057 (=> res!3026190 e!4497462)))

(assert (=> b!7550057 (= res!3026190 e!4497463)))

(declare-fun res!3026185 () Bool)

(assert (=> b!7550057 (=> (not res!3026185) (not e!4497463))))

(assert (=> b!7550057 (= res!3026185 lt!2646593)))

(assert (= (and d!2312712 c!1393541) b!7550056))

(assert (= (and d!2312712 (not c!1393541)) b!7550050))

(assert (= (and d!2312712 c!1393540) b!7550048))

(assert (= (and d!2312712 (not c!1393540)) b!7550049))

(assert (= (and b!7550049 c!1393539) b!7550044))

(assert (= (and b!7550049 (not c!1393539)) b!7550051))

(assert (= (and b!7550051 (not res!3026188)) b!7550057))

(assert (= (and b!7550057 res!3026185) b!7550055))

(assert (= (and b!7550055 res!3026184) b!7550054))

(assert (= (and b!7550054 res!3026187) b!7550045))

(assert (= (and b!7550057 (not res!3026190)) b!7550046))

(assert (= (and b!7550046 res!3026186) b!7550047))

(assert (= (and b!7550047 (not res!3026189)) b!7550053))

(assert (= (and b!7550053 (not res!3026183)) b!7550052))

(assert (= (or b!7550048 b!7550047 b!7550055) bm!692282))

(assert (=> b!7550053 m!8117206))

(assert (=> b!7550053 m!8117206))

(declare-fun m!8117246 () Bool)

(assert (=> b!7550053 m!8117246))

(assert (=> b!7550052 m!8117186))

(declare-fun m!8117248 () Bool)

(assert (=> d!2312712 m!8117248))

(assert (=> d!2312712 m!8117190))

(assert (=> b!7550054 m!8117206))

(assert (=> b!7550054 m!8117206))

(assert (=> b!7550054 m!8117246))

(declare-fun m!8117250 () Bool)

(assert (=> b!7550056 m!8117250))

(assert (=> b!7550045 m!8117186))

(assert (=> bm!692282 m!8117248))

(assert (=> b!7550050 m!8117186))

(assert (=> b!7550050 m!8117186))

(declare-fun m!8117252 () Bool)

(assert (=> b!7550050 m!8117252))

(assert (=> b!7550050 m!8117206))

(assert (=> b!7550050 m!8117252))

(assert (=> b!7550050 m!8117206))

(declare-fun m!8117254 () Bool)

(assert (=> b!7550050 m!8117254))

(assert (=> b!7549997 d!2312712))

(declare-fun d!2312716 () Bool)

(declare-fun lt!2646601 () List!72828)

(assert (=> d!2312716 (= (++!17461 testedP!423 lt!2646601) knownP!30)))

(declare-fun e!4497469 () List!72828)

(assert (=> d!2312716 (= lt!2646601 e!4497469)))

(declare-fun c!1393547 () Bool)

(assert (=> d!2312716 (= c!1393547 ((_ is Cons!72704) testedP!423))))

(assert (=> d!2312716 (>= (size!42441 knownP!30) (size!42441 testedP!423))))

(assert (=> d!2312716 (= (getSuffix!3631 knownP!30 testedP!423) lt!2646601)))

(declare-fun b!7550066 () Bool)

(assert (=> b!7550066 (= e!4497469 (getSuffix!3631 (tail!15077 knownP!30) (t!387545 testedP!423)))))

(declare-fun b!7550067 () Bool)

(assert (=> b!7550067 (= e!4497469 knownP!30)))

(assert (= (and d!2312716 c!1393547) b!7550066))

(assert (= (and d!2312716 (not c!1393547)) b!7550067))

(declare-fun m!8117260 () Bool)

(assert (=> d!2312716 m!8117260))

(assert (=> d!2312716 m!8117174))

(assert (=> d!2312716 m!8117172))

(declare-fun m!8117262 () Bool)

(assert (=> b!7550066 m!8117262))

(assert (=> b!7550066 m!8117262))

(declare-fun m!8117264 () Bool)

(assert (=> b!7550066 m!8117264))

(assert (=> b!7549997 d!2312716))

(declare-fun b!7550088 () Bool)

(declare-fun e!4497482 () Bool)

(assert (=> b!7550088 (= e!4497482 (isPrefix!6151 (tail!15077 testedP!423) (tail!15077 knownP!30)))))

(declare-fun b!7550089 () Bool)

(declare-fun e!4497481 () Bool)

(assert (=> b!7550089 (= e!4497481 (>= (size!42441 knownP!30) (size!42441 testedP!423)))))

(declare-fun b!7550087 () Bool)

(declare-fun res!3026204 () Bool)

(assert (=> b!7550087 (=> (not res!3026204) (not e!4497482))))

(assert (=> b!7550087 (= res!3026204 (= (head!15535 testedP!423) (head!15535 knownP!30)))))

(declare-fun b!7550086 () Bool)

(declare-fun e!4497483 () Bool)

(assert (=> b!7550086 (= e!4497483 e!4497482)))

(declare-fun res!3026203 () Bool)

(assert (=> b!7550086 (=> (not res!3026203) (not e!4497482))))

(assert (=> b!7550086 (= res!3026203 (not ((_ is Nil!72704) knownP!30)))))

(declare-fun d!2312720 () Bool)

(assert (=> d!2312720 e!4497481))

(declare-fun res!3026206 () Bool)

(assert (=> d!2312720 (=> res!3026206 e!4497481)))

(declare-fun lt!2646607 () Bool)

(assert (=> d!2312720 (= res!3026206 (not lt!2646607))))

(assert (=> d!2312720 (= lt!2646607 e!4497483)))

(declare-fun res!3026205 () Bool)

(assert (=> d!2312720 (=> res!3026205 e!4497483)))

(assert (=> d!2312720 (= res!3026205 ((_ is Nil!72704) testedP!423))))

(assert (=> d!2312720 (= (isPrefix!6151 testedP!423 knownP!30) lt!2646607)))

(assert (= (and d!2312720 (not res!3026205)) b!7550086))

(assert (= (and b!7550086 res!3026203) b!7550087))

(assert (= (and b!7550087 res!3026204) b!7550088))

(assert (= (and d!2312720 (not res!3026206)) b!7550089))

(declare-fun m!8117272 () Bool)

(assert (=> b!7550088 m!8117272))

(assert (=> b!7550088 m!8117262))

(assert (=> b!7550088 m!8117272))

(assert (=> b!7550088 m!8117262))

(declare-fun m!8117274 () Bool)

(assert (=> b!7550088 m!8117274))

(assert (=> b!7550089 m!8117174))

(assert (=> b!7550089 m!8117172))

(declare-fun m!8117276 () Bool)

(assert (=> b!7550087 m!8117276))

(declare-fun m!8117278 () Bool)

(assert (=> b!7550087 m!8117278))

(assert (=> b!7549997 d!2312720))

(declare-fun d!2312724 () Bool)

(assert (=> d!2312724 (isPrefix!6151 testedP!423 knownP!30)))

(declare-fun lt!2646611 () Unit!166828)

(declare-fun choose!58429 (List!72828 List!72828 List!72828) Unit!166828)

(assert (=> d!2312724 (= lt!2646611 (choose!58429 knownP!30 testedP!423 input!7874))))

(assert (=> d!2312724 (isPrefix!6151 knownP!30 input!7874)))

(assert (=> d!2312724 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!901 knownP!30 testedP!423 input!7874) lt!2646611)))

(declare-fun bs!1940176 () Bool)

(assert (= bs!1940176 d!2312724))

(assert (=> bs!1940176 m!8117182))

(declare-fun m!8117292 () Bool)

(assert (=> bs!1940176 m!8117292))

(assert (=> bs!1940176 m!8117202))

(assert (=> b!7549997 d!2312724))

(declare-fun d!2312728 () Bool)

(declare-fun lt!2646617 () Int)

(assert (=> d!2312728 (>= lt!2646617 0)))

(declare-fun e!4497497 () Int)

(assert (=> d!2312728 (= lt!2646617 e!4497497)))

(declare-fun c!1393554 () Bool)

(assert (=> d!2312728 (= c!1393554 ((_ is Nil!72704) input!7874))))

(assert (=> d!2312728 (= (size!42441 input!7874) lt!2646617)))

(declare-fun b!7550110 () Bool)

(assert (=> b!7550110 (= e!4497497 0)))

(declare-fun b!7550111 () Bool)

(assert (=> b!7550111 (= e!4497497 (+ 1 (size!42441 (t!387545 input!7874))))))

(assert (= (and d!2312728 c!1393554) b!7550110))

(assert (= (and d!2312728 (not c!1393554)) b!7550111))

(declare-fun m!8117294 () Bool)

(assert (=> b!7550111 m!8117294))

(assert (=> b!7549998 d!2312728))

(declare-fun d!2312730 () Bool)

(assert (=> d!2312730 (= ($colon$colon!3389 (tail!15077 lt!2646575) lt!2646580) (Cons!72704 lt!2646580 (tail!15077 lt!2646575)))))

(assert (=> b!7549996 d!2312730))

(declare-fun d!2312734 () Bool)

(assert (=> d!2312734 (= (tail!15077 lt!2646575) (t!387545 lt!2646575))))

(assert (=> b!7549996 d!2312734))

(declare-fun d!2312736 () Bool)

(declare-fun lostCauseFct!454 (Regex!19945) Bool)

(assert (=> d!2312736 (= (lostCause!1737 r!24333) (lostCauseFct!454 r!24333))))

(declare-fun bs!1940177 () Bool)

(assert (= bs!1940177 d!2312736))

(declare-fun m!8117308 () Bool)

(assert (=> bs!1940177 m!8117308))

(assert (=> b!7550005 d!2312736))

(declare-fun b!7550114 () Bool)

(declare-fun e!4497499 () Bool)

(assert (=> b!7550114 (= e!4497499 (isPrefix!6151 (tail!15077 knownP!30) (tail!15077 input!7874)))))

(declare-fun b!7550115 () Bool)

(declare-fun e!4497498 () Bool)

(assert (=> b!7550115 (= e!4497498 (>= (size!42441 input!7874) (size!42441 knownP!30)))))

(declare-fun b!7550113 () Bool)

(declare-fun res!3026222 () Bool)

(assert (=> b!7550113 (=> (not res!3026222) (not e!4497499))))

(assert (=> b!7550113 (= res!3026222 (= (head!15535 knownP!30) (head!15535 input!7874)))))

(declare-fun b!7550112 () Bool)

(declare-fun e!4497500 () Bool)

(assert (=> b!7550112 (= e!4497500 e!4497499)))

(declare-fun res!3026221 () Bool)

(assert (=> b!7550112 (=> (not res!3026221) (not e!4497499))))

(assert (=> b!7550112 (= res!3026221 (not ((_ is Nil!72704) input!7874)))))

(declare-fun d!2312738 () Bool)

(assert (=> d!2312738 e!4497498))

(declare-fun res!3026224 () Bool)

(assert (=> d!2312738 (=> res!3026224 e!4497498)))

(declare-fun lt!2646618 () Bool)

(assert (=> d!2312738 (= res!3026224 (not lt!2646618))))

(assert (=> d!2312738 (= lt!2646618 e!4497500)))

(declare-fun res!3026223 () Bool)

(assert (=> d!2312738 (=> res!3026223 e!4497500)))

(assert (=> d!2312738 (= res!3026223 ((_ is Nil!72704) knownP!30))))

(assert (=> d!2312738 (= (isPrefix!6151 knownP!30 input!7874) lt!2646618)))

(assert (= (and d!2312738 (not res!3026223)) b!7550112))

(assert (= (and b!7550112 res!3026221) b!7550113))

(assert (= (and b!7550113 res!3026222) b!7550114))

(assert (= (and d!2312738 (not res!3026224)) b!7550115))

(assert (=> b!7550114 m!8117262))

(declare-fun m!8117310 () Bool)

(assert (=> b!7550114 m!8117310))

(assert (=> b!7550114 m!8117262))

(assert (=> b!7550114 m!8117310))

(declare-fun m!8117312 () Bool)

(assert (=> b!7550114 m!8117312))

(assert (=> b!7550115 m!8117244))

(assert (=> b!7550115 m!8117174))

(assert (=> b!7550113 m!8117278))

(declare-fun m!8117314 () Bool)

(assert (=> b!7550113 m!8117314))

(assert (=> b!7549995 d!2312738))

(declare-fun b!7550176 () Bool)

(declare-fun e!4497532 () Regex!19945)

(assert (=> b!7550176 (= e!4497532 (ite (= lt!2646580 (c!1393532 r!24333)) EmptyExpr!19945 EmptyLang!19945))))

(declare-fun b!7550177 () Bool)

(declare-fun e!4497533 () Regex!19945)

(declare-fun call!692310 () Regex!19945)

(assert (=> b!7550177 (= e!4497533 (Concat!28790 call!692310 r!24333))))

(declare-fun b!7550178 () Bool)

(declare-fun e!4497531 () Regex!19945)

(assert (=> b!7550178 (= e!4497531 e!4497532)))

(declare-fun c!1393585 () Bool)

(assert (=> b!7550178 (= c!1393585 ((_ is ElementMatch!19945) r!24333))))

(declare-fun bm!692303 () Bool)

(declare-fun call!692309 () Regex!19945)

(assert (=> bm!692303 (= call!692309 call!692310)))

(declare-fun b!7550179 () Bool)

(declare-fun e!4497535 () Regex!19945)

(assert (=> b!7550179 (= e!4497535 (Union!19945 (Concat!28790 call!692309 (regTwo!40402 r!24333)) EmptyLang!19945))))

(declare-fun b!7550180 () Bool)

(assert (=> b!7550180 (= e!4497531 EmptyLang!19945)))

(declare-fun call!692308 () Regex!19945)

(declare-fun bm!692304 () Bool)

(declare-fun c!1393587 () Bool)

(assert (=> bm!692304 (= call!692308 (derivativeStep!5735 (ite c!1393587 (regTwo!40403 r!24333) (regTwo!40402 r!24333)) lt!2646580))))

(declare-fun b!7550181 () Bool)

(assert (=> b!7550181 (= e!4497535 (Union!19945 (Concat!28790 call!692309 (regTwo!40402 r!24333)) call!692308))))

(declare-fun b!7550182 () Bool)

(declare-fun e!4497534 () Regex!19945)

(assert (=> b!7550182 (= e!4497534 e!4497533)))

(declare-fun c!1393588 () Bool)

(assert (=> b!7550182 (= c!1393588 ((_ is Star!19945) r!24333))))

(declare-fun b!7550183 () Bool)

(assert (=> b!7550183 (= c!1393587 ((_ is Union!19945) r!24333))))

(assert (=> b!7550183 (= e!4497532 e!4497534)))

(declare-fun b!7550184 () Bool)

(declare-fun call!692311 () Regex!19945)

(assert (=> b!7550184 (= e!4497534 (Union!19945 call!692311 call!692308))))

(declare-fun b!7550185 () Bool)

(declare-fun c!1393586 () Bool)

(assert (=> b!7550185 (= c!1393586 (nullable!8701 (regOne!40402 r!24333)))))

(assert (=> b!7550185 (= e!4497533 e!4497535)))

(declare-fun d!2312740 () Bool)

(declare-fun lt!2646628 () Regex!19945)

(assert (=> d!2312740 (validRegex!10373 lt!2646628)))

(assert (=> d!2312740 (= lt!2646628 e!4497531)))

(declare-fun c!1393584 () Bool)

(assert (=> d!2312740 (= c!1393584 (or ((_ is EmptyExpr!19945) r!24333) ((_ is EmptyLang!19945) r!24333)))))

(assert (=> d!2312740 (validRegex!10373 r!24333)))

(assert (=> d!2312740 (= (derivativeStep!5735 r!24333 lt!2646580) lt!2646628)))

(declare-fun bm!692305 () Bool)

(assert (=> bm!692305 (= call!692310 call!692311)))

(declare-fun bm!692306 () Bool)

(assert (=> bm!692306 (= call!692311 (derivativeStep!5735 (ite c!1393587 (regOne!40403 r!24333) (ite c!1393588 (reg!20274 r!24333) (regOne!40402 r!24333))) lt!2646580))))

(assert (= (and d!2312740 c!1393584) b!7550180))

(assert (= (and d!2312740 (not c!1393584)) b!7550178))

(assert (= (and b!7550178 c!1393585) b!7550176))

(assert (= (and b!7550178 (not c!1393585)) b!7550183))

(assert (= (and b!7550183 c!1393587) b!7550184))

(assert (= (and b!7550183 (not c!1393587)) b!7550182))

(assert (= (and b!7550182 c!1393588) b!7550177))

(assert (= (and b!7550182 (not c!1393588)) b!7550185))

(assert (= (and b!7550185 c!1393586) b!7550181))

(assert (= (and b!7550185 (not c!1393586)) b!7550179))

(assert (= (or b!7550181 b!7550179) bm!692303))

(assert (= (or b!7550177 bm!692303) bm!692305))

(assert (= (or b!7550184 b!7550181) bm!692304))

(assert (= (or b!7550184 bm!692305) bm!692306))

(declare-fun m!8117342 () Bool)

(assert (=> bm!692304 m!8117342))

(declare-fun m!8117344 () Bool)

(assert (=> b!7550185 m!8117344))

(declare-fun m!8117346 () Bool)

(assert (=> d!2312740 m!8117346))

(assert (=> d!2312740 m!8117190))

(declare-fun m!8117348 () Bool)

(assert (=> bm!692306 m!8117348))

(assert (=> b!7550006 d!2312740))

(declare-fun d!2312748 () Bool)

(declare-fun lt!2646629 () List!72828)

(assert (=> d!2312748 (= (++!17461 testedP!423 lt!2646629) input!7874)))

(declare-fun e!4497536 () List!72828)

(assert (=> d!2312748 (= lt!2646629 e!4497536)))

(declare-fun c!1393589 () Bool)

(assert (=> d!2312748 (= c!1393589 ((_ is Cons!72704) testedP!423))))

(assert (=> d!2312748 (>= (size!42441 input!7874) (size!42441 testedP!423))))

(assert (=> d!2312748 (= (getSuffix!3631 input!7874 testedP!423) lt!2646629)))

(declare-fun b!7550186 () Bool)

(assert (=> b!7550186 (= e!4497536 (getSuffix!3631 (tail!15077 input!7874) (t!387545 testedP!423)))))

(declare-fun b!7550187 () Bool)

(assert (=> b!7550187 (= e!4497536 input!7874)))

(assert (= (and d!2312748 c!1393589) b!7550186))

(assert (= (and d!2312748 (not c!1393589)) b!7550187))

(declare-fun m!8117350 () Bool)

(assert (=> d!2312748 m!8117350))

(assert (=> d!2312748 m!8117244))

(assert (=> d!2312748 m!8117172))

(assert (=> b!7550186 m!8117310))

(assert (=> b!7550186 m!8117310))

(declare-fun m!8117352 () Bool)

(assert (=> b!7550186 m!8117352))

(assert (=> b!7550006 d!2312748))

(declare-fun b!7550190 () Bool)

(declare-fun e!4497538 () Bool)

(assert (=> b!7550190 (= e!4497538 (isPrefix!6151 (tail!15077 lt!2646584) (tail!15077 knownP!30)))))

(declare-fun b!7550191 () Bool)

(declare-fun e!4497537 () Bool)

(assert (=> b!7550191 (= e!4497537 (>= (size!42441 knownP!30) (size!42441 lt!2646584)))))

(declare-fun b!7550189 () Bool)

(declare-fun res!3026228 () Bool)

(assert (=> b!7550189 (=> (not res!3026228) (not e!4497538))))

(assert (=> b!7550189 (= res!3026228 (= (head!15535 lt!2646584) (head!15535 knownP!30)))))

(declare-fun b!7550188 () Bool)

(declare-fun e!4497539 () Bool)

(assert (=> b!7550188 (= e!4497539 e!4497538)))

(declare-fun res!3026227 () Bool)

(assert (=> b!7550188 (=> (not res!3026227) (not e!4497538))))

(assert (=> b!7550188 (= res!3026227 (not ((_ is Nil!72704) knownP!30)))))

(declare-fun d!2312750 () Bool)

(assert (=> d!2312750 e!4497537))

(declare-fun res!3026230 () Bool)

(assert (=> d!2312750 (=> res!3026230 e!4497537)))

(declare-fun lt!2646632 () Bool)

(assert (=> d!2312750 (= res!3026230 (not lt!2646632))))

(assert (=> d!2312750 (= lt!2646632 e!4497539)))

(declare-fun res!3026229 () Bool)

(assert (=> d!2312750 (=> res!3026229 e!4497539)))

(assert (=> d!2312750 (= res!3026229 ((_ is Nil!72704) lt!2646584))))

(assert (=> d!2312750 (= (isPrefix!6151 lt!2646584 knownP!30) lt!2646632)))

(assert (= (and d!2312750 (not res!3026229)) b!7550188))

(assert (= (and b!7550188 res!3026227) b!7550189))

(assert (= (and b!7550189 res!3026228) b!7550190))

(assert (= (and d!2312750 (not res!3026230)) b!7550191))

(declare-fun m!8117354 () Bool)

(assert (=> b!7550190 m!8117354))

(assert (=> b!7550190 m!8117262))

(assert (=> b!7550190 m!8117354))

(assert (=> b!7550190 m!8117262))

(declare-fun m!8117356 () Bool)

(assert (=> b!7550190 m!8117356))

(assert (=> b!7550191 m!8117174))

(declare-fun m!8117358 () Bool)

(assert (=> b!7550191 m!8117358))

(declare-fun m!8117360 () Bool)

(assert (=> b!7550189 m!8117360))

(assert (=> b!7550189 m!8117278))

(assert (=> b!7550006 d!2312750))

(declare-fun d!2312752 () Bool)

(declare-fun lt!2646633 () List!72828)

(assert (=> d!2312752 (= (++!17461 knownP!30 lt!2646633) input!7874)))

(declare-fun e!4497540 () List!72828)

(assert (=> d!2312752 (= lt!2646633 e!4497540)))

(declare-fun c!1393590 () Bool)

(assert (=> d!2312752 (= c!1393590 ((_ is Cons!72704) knownP!30))))

(assert (=> d!2312752 (>= (size!42441 input!7874) (size!42441 knownP!30))))

(assert (=> d!2312752 (= (getSuffix!3631 input!7874 knownP!30) lt!2646633)))

(declare-fun b!7550192 () Bool)

(assert (=> b!7550192 (= e!4497540 (getSuffix!3631 (tail!15077 input!7874) (t!387545 knownP!30)))))

(declare-fun b!7550193 () Bool)

(assert (=> b!7550193 (= e!4497540 input!7874)))

(assert (= (and d!2312752 c!1393590) b!7550192))

(assert (= (and d!2312752 (not c!1393590)) b!7550193))

(declare-fun m!8117362 () Bool)

(assert (=> d!2312752 m!8117362))

(assert (=> d!2312752 m!8117244))

(assert (=> d!2312752 m!8117174))

(assert (=> b!7550192 m!8117310))

(assert (=> b!7550192 m!8117310))

(declare-fun m!8117366 () Bool)

(assert (=> b!7550192 m!8117366))

(assert (=> b!7550006 d!2312752))

(declare-fun d!2312754 () Bool)

(assert (=> d!2312754 (isPrefix!6151 lt!2646584 knownP!30)))

(declare-fun lt!2646635 () Unit!166828)

(assert (=> d!2312754 (= lt!2646635 (choose!58429 knownP!30 lt!2646584 input!7874))))

(assert (=> d!2312754 (isPrefix!6151 knownP!30 input!7874)))

(assert (=> d!2312754 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!901 knownP!30 lt!2646584 input!7874) lt!2646635)))

(declare-fun bs!1940179 () Bool)

(assert (= bs!1940179 d!2312754))

(assert (=> bs!1940179 m!8117226))

(declare-fun m!8117374 () Bool)

(assert (=> bs!1940179 m!8117374))

(assert (=> bs!1940179 m!8117202))

(assert (=> b!7550006 d!2312754))

(declare-fun d!2312758 () Bool)

(assert (=> d!2312758 (= (derivative!477 baseR!101 (++!17461 testedP!423 (Cons!72704 lt!2646580 Nil!72704))) (derivativeStep!5735 r!24333 lt!2646580))))

(declare-fun lt!2646644 () Unit!166828)

(declare-fun choose!58432 (Regex!19945 Regex!19945 List!72828 C!40216) Unit!166828)

(assert (=> d!2312758 (= lt!2646644 (choose!58432 baseR!101 r!24333 testedP!423 lt!2646580))))

(assert (=> d!2312758 (validRegex!10373 baseR!101)))

(assert (=> d!2312758 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!179 baseR!101 r!24333 testedP!423 lt!2646580) lt!2646644)))

(declare-fun bs!1940181 () Bool)

(assert (= bs!1940181 d!2312758))

(assert (=> bs!1940181 m!8117224))

(assert (=> bs!1940181 m!8117196))

(declare-fun m!8117390 () Bool)

(assert (=> bs!1940181 m!8117390))

(assert (=> bs!1940181 m!8117234))

(assert (=> bs!1940181 m!8117234))

(declare-fun m!8117392 () Bool)

(assert (=> bs!1940181 m!8117392))

(assert (=> b!7550006 d!2312758))

(declare-fun d!2312770 () Bool)

(assert (=> d!2312770 (= (head!15535 lt!2646577) (h!79152 lt!2646577))))

(assert (=> b!7550006 d!2312770))

(declare-fun b!7550210 () Bool)

(declare-fun e!4497550 () Bool)

(assert (=> b!7550210 (= e!4497550 (isPrefix!6151 (tail!15077 lt!2646584) (tail!15077 input!7874)))))

(declare-fun b!7550211 () Bool)

(declare-fun e!4497549 () Bool)

(assert (=> b!7550211 (= e!4497549 (>= (size!42441 input!7874) (size!42441 lt!2646584)))))

(declare-fun b!7550209 () Bool)

(declare-fun res!3026236 () Bool)

(assert (=> b!7550209 (=> (not res!3026236) (not e!4497550))))

(assert (=> b!7550209 (= res!3026236 (= (head!15535 lt!2646584) (head!15535 input!7874)))))

(declare-fun b!7550208 () Bool)

(declare-fun e!4497551 () Bool)

(assert (=> b!7550208 (= e!4497551 e!4497550)))

(declare-fun res!3026235 () Bool)

(assert (=> b!7550208 (=> (not res!3026235) (not e!4497550))))

(assert (=> b!7550208 (= res!3026235 (not ((_ is Nil!72704) input!7874)))))

(declare-fun d!2312772 () Bool)

(assert (=> d!2312772 e!4497549))

(declare-fun res!3026238 () Bool)

(assert (=> d!2312772 (=> res!3026238 e!4497549)))

(declare-fun lt!2646648 () Bool)

(assert (=> d!2312772 (= res!3026238 (not lt!2646648))))

(assert (=> d!2312772 (= lt!2646648 e!4497551)))

(declare-fun res!3026237 () Bool)

(assert (=> d!2312772 (=> res!3026237 e!4497551)))

(assert (=> d!2312772 (= res!3026237 ((_ is Nil!72704) lt!2646584))))

(assert (=> d!2312772 (= (isPrefix!6151 lt!2646584 input!7874) lt!2646648)))

(assert (= (and d!2312772 (not res!3026237)) b!7550208))

(assert (= (and b!7550208 res!3026235) b!7550209))

(assert (= (and b!7550209 res!3026236) b!7550210))

(assert (= (and d!2312772 (not res!3026238)) b!7550211))

(assert (=> b!7550210 m!8117354))

(assert (=> b!7550210 m!8117310))

(assert (=> b!7550210 m!8117354))

(assert (=> b!7550210 m!8117310))

(declare-fun m!8117400 () Bool)

(assert (=> b!7550210 m!8117400))

(assert (=> b!7550211 m!8117244))

(assert (=> b!7550211 m!8117358))

(assert (=> b!7550209 m!8117360))

(assert (=> b!7550209 m!8117314))

(assert (=> b!7550006 d!2312772))

(declare-fun b!7550261 () Bool)

(declare-fun res!3026262 () Bool)

(declare-fun e!4497584 () Bool)

(assert (=> b!7550261 (=> (not res!3026262) (not e!4497584))))

(declare-fun lt!2646658 () List!72828)

(assert (=> b!7550261 (= res!3026262 (= (size!42441 lt!2646658) (+ (size!42441 knownP!30) (size!42441 lt!2646587))))))

(declare-fun b!7550259 () Bool)

(declare-fun e!4497583 () List!72828)

(assert (=> b!7550259 (= e!4497583 lt!2646587)))

(declare-fun d!2312780 () Bool)

(assert (=> d!2312780 e!4497584))

(declare-fun res!3026263 () Bool)

(assert (=> d!2312780 (=> (not res!3026263) (not e!4497584))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15388 (List!72828) (InoxSet C!40216))

(assert (=> d!2312780 (= res!3026263 (= (content!15388 lt!2646658) ((_ map or) (content!15388 knownP!30) (content!15388 lt!2646587))))))

(assert (=> d!2312780 (= lt!2646658 e!4497583)))

(declare-fun c!1393609 () Bool)

(assert (=> d!2312780 (= c!1393609 ((_ is Nil!72704) knownP!30))))

(assert (=> d!2312780 (= (++!17461 knownP!30 lt!2646587) lt!2646658)))

(declare-fun b!7550260 () Bool)

(assert (=> b!7550260 (= e!4497583 (Cons!72704 (h!79152 knownP!30) (++!17461 (t!387545 knownP!30) lt!2646587)))))

(declare-fun b!7550262 () Bool)

(assert (=> b!7550262 (= e!4497584 (or (not (= lt!2646587 Nil!72704)) (= lt!2646658 knownP!30)))))

(assert (= (and d!2312780 c!1393609) b!7550259))

(assert (= (and d!2312780 (not c!1393609)) b!7550260))

(assert (= (and d!2312780 res!3026263) b!7550261))

(assert (= (and b!7550261 res!3026262) b!7550262))

(declare-fun m!8117432 () Bool)

(assert (=> b!7550261 m!8117432))

(assert (=> b!7550261 m!8117174))

(declare-fun m!8117434 () Bool)

(assert (=> b!7550261 m!8117434))

(declare-fun m!8117436 () Bool)

(assert (=> d!2312780 m!8117436))

(declare-fun m!8117438 () Bool)

(assert (=> d!2312780 m!8117438))

(declare-fun m!8117440 () Bool)

(assert (=> d!2312780 m!8117440))

(declare-fun m!8117442 () Bool)

(assert (=> b!7550260 m!8117442))

(assert (=> b!7550006 d!2312780))

(declare-fun d!2312792 () Bool)

(declare-fun lt!2646659 () List!72828)

(assert (=> d!2312792 (= (++!17461 lt!2646584 lt!2646659) knownP!30)))

(declare-fun e!4497585 () List!72828)

(assert (=> d!2312792 (= lt!2646659 e!4497585)))

(declare-fun c!1393610 () Bool)

(assert (=> d!2312792 (= c!1393610 ((_ is Cons!72704) lt!2646584))))

(assert (=> d!2312792 (>= (size!42441 knownP!30) (size!42441 lt!2646584))))

(assert (=> d!2312792 (= (getSuffix!3631 knownP!30 lt!2646584) lt!2646659)))

(declare-fun b!7550263 () Bool)

(assert (=> b!7550263 (= e!4497585 (getSuffix!3631 (tail!15077 knownP!30) (t!387545 lt!2646584)))))

(declare-fun b!7550264 () Bool)

(assert (=> b!7550264 (= e!4497585 knownP!30)))

(assert (= (and d!2312792 c!1393610) b!7550263))

(assert (= (and d!2312792 (not c!1393610)) b!7550264))

(declare-fun m!8117444 () Bool)

(assert (=> d!2312792 m!8117444))

(assert (=> d!2312792 m!8117174))

(assert (=> d!2312792 m!8117358))

(assert (=> b!7550263 m!8117262))

(assert (=> b!7550263 m!8117262))

(declare-fun m!8117446 () Bool)

(assert (=> b!7550263 m!8117446))

(assert (=> b!7550006 d!2312792))

(declare-fun b!7550267 () Bool)

(declare-fun res!3026264 () Bool)

(declare-fun e!4497587 () Bool)

(assert (=> b!7550267 (=> (not res!3026264) (not e!4497587))))

(declare-fun lt!2646660 () List!72828)

(assert (=> b!7550267 (= res!3026264 (= (size!42441 lt!2646660) (+ (size!42441 testedP!423) (size!42441 (Cons!72704 lt!2646580 Nil!72704)))))))

(declare-fun b!7550265 () Bool)

(declare-fun e!4497586 () List!72828)

(assert (=> b!7550265 (= e!4497586 (Cons!72704 lt!2646580 Nil!72704))))

(declare-fun d!2312794 () Bool)

(assert (=> d!2312794 e!4497587))

(declare-fun res!3026265 () Bool)

(assert (=> d!2312794 (=> (not res!3026265) (not e!4497587))))

(assert (=> d!2312794 (= res!3026265 (= (content!15388 lt!2646660) ((_ map or) (content!15388 testedP!423) (content!15388 (Cons!72704 lt!2646580 Nil!72704)))))))

(assert (=> d!2312794 (= lt!2646660 e!4497586)))

(declare-fun c!1393611 () Bool)

(assert (=> d!2312794 (= c!1393611 ((_ is Nil!72704) testedP!423))))

(assert (=> d!2312794 (= (++!17461 testedP!423 (Cons!72704 lt!2646580 Nil!72704)) lt!2646660)))

(declare-fun b!7550266 () Bool)

(assert (=> b!7550266 (= e!4497586 (Cons!72704 (h!79152 testedP!423) (++!17461 (t!387545 testedP!423) (Cons!72704 lt!2646580 Nil!72704))))))

(declare-fun b!7550268 () Bool)

(assert (=> b!7550268 (= e!4497587 (or (not (= (Cons!72704 lt!2646580 Nil!72704) Nil!72704)) (= lt!2646660 testedP!423)))))

(assert (= (and d!2312794 c!1393611) b!7550265))

(assert (= (and d!2312794 (not c!1393611)) b!7550266))

(assert (= (and d!2312794 res!3026265) b!7550267))

(assert (= (and b!7550267 res!3026264) b!7550268))

(declare-fun m!8117450 () Bool)

(assert (=> b!7550267 m!8117450))

(assert (=> b!7550267 m!8117172))

(declare-fun m!8117452 () Bool)

(assert (=> b!7550267 m!8117452))

(declare-fun m!8117454 () Bool)

(assert (=> d!2312794 m!8117454))

(declare-fun m!8117456 () Bool)

(assert (=> d!2312794 m!8117456))

(declare-fun m!8117458 () Bool)

(assert (=> d!2312794 m!8117458))

(declare-fun m!8117460 () Bool)

(assert (=> b!7550266 m!8117460))

(assert (=> b!7550006 d!2312794))

(declare-fun d!2312798 () Bool)

(declare-fun lt!2646668 () Regex!19945)

(assert (=> d!2312798 (validRegex!10373 lt!2646668)))

(declare-fun e!4497604 () Regex!19945)

(assert (=> d!2312798 (= lt!2646668 e!4497604)))

(declare-fun c!1393620 () Bool)

(assert (=> d!2312798 (= c!1393620 ((_ is Cons!72704) lt!2646584))))

(assert (=> d!2312798 (validRegex!10373 baseR!101)))

(assert (=> d!2312798 (= (derivative!477 baseR!101 lt!2646584) lt!2646668)))

(declare-fun b!7550301 () Bool)

(assert (=> b!7550301 (= e!4497604 (derivative!477 (derivativeStep!5735 baseR!101 (h!79152 lt!2646584)) (t!387545 lt!2646584)))))

(declare-fun b!7550302 () Bool)

(assert (=> b!7550302 (= e!4497604 baseR!101)))

(assert (= (and d!2312798 c!1393620) b!7550301))

(assert (= (and d!2312798 (not c!1393620)) b!7550302))

(declare-fun m!8117462 () Bool)

(assert (=> d!2312798 m!8117462))

(assert (=> d!2312798 m!8117196))

(declare-fun m!8117464 () Bool)

(assert (=> b!7550301 m!8117464))

(assert (=> b!7550301 m!8117464))

(declare-fun m!8117466 () Bool)

(assert (=> b!7550301 m!8117466))

(assert (=> b!7550006 d!2312798))

(declare-fun d!2312800 () Bool)

(assert (=> d!2312800 (isPrefix!6151 (++!17461 testedP!423 (Cons!72704 (head!15535 (getSuffix!3631 input!7874 testedP!423)) Nil!72704)) input!7874)))

(declare-fun lt!2646676 () Unit!166828)

(declare-fun choose!58433 (List!72828 List!72828) Unit!166828)

(assert (=> d!2312800 (= lt!2646676 (choose!58433 testedP!423 input!7874))))

(assert (=> d!2312800 (isPrefix!6151 testedP!423 input!7874)))

(assert (=> d!2312800 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1212 testedP!423 input!7874) lt!2646676)))

(declare-fun bs!1940185 () Bool)

(assert (= bs!1940185 d!2312800))

(declare-fun m!8117504 () Bool)

(assert (=> bs!1940185 m!8117504))

(declare-fun m!8117508 () Bool)

(assert (=> bs!1940185 m!8117508))

(assert (=> bs!1940185 m!8117204))

(assert (=> bs!1940185 m!8117218))

(declare-fun m!8117510 () Bool)

(assert (=> bs!1940185 m!8117510))

(declare-fun m!8117512 () Bool)

(assert (=> bs!1940185 m!8117512))

(assert (=> bs!1940185 m!8117504))

(assert (=> bs!1940185 m!8117218))

(assert (=> b!7550006 d!2312800))

(declare-fun d!2312814 () Bool)

(declare-fun lt!2646678 () Int)

(assert (=> d!2312814 (>= lt!2646678 0)))

(declare-fun e!4497627 () Int)

(assert (=> d!2312814 (= lt!2646678 e!4497627)))

(declare-fun c!1393629 () Bool)

(assert (=> d!2312814 (= c!1393629 ((_ is Nil!72704) testedP!423))))

(assert (=> d!2312814 (= (size!42441 testedP!423) lt!2646678)))

(declare-fun b!7550340 () Bool)

(assert (=> b!7550340 (= e!4497627 0)))

(declare-fun b!7550341 () Bool)

(assert (=> b!7550341 (= e!4497627 (+ 1 (size!42441 (t!387545 testedP!423))))))

(assert (= (and d!2312814 c!1393629) b!7550340))

(assert (= (and d!2312814 (not c!1393629)) b!7550341))

(declare-fun m!8117526 () Bool)

(assert (=> b!7550341 m!8117526))

(assert (=> b!7550004 d!2312814))

(declare-fun d!2312820 () Bool)

(declare-fun lt!2646681 () Int)

(assert (=> d!2312820 (>= lt!2646681 0)))

(declare-fun e!4497632 () Int)

(assert (=> d!2312820 (= lt!2646681 e!4497632)))

(declare-fun c!1393631 () Bool)

(assert (=> d!2312820 (= c!1393631 ((_ is Nil!72704) knownP!30))))

(assert (=> d!2312820 (= (size!42441 knownP!30) lt!2646681)))

(declare-fun b!7550348 () Bool)

(assert (=> b!7550348 (= e!4497632 0)))

(declare-fun b!7550349 () Bool)

(assert (=> b!7550349 (= e!4497632 (+ 1 (size!42441 (t!387545 knownP!30))))))

(assert (= (and d!2312820 c!1393631) b!7550348))

(assert (= (and d!2312820 (not c!1393631)) b!7550349))

(declare-fun m!8117528 () Bool)

(assert (=> b!7550349 m!8117528))

(assert (=> b!7550004 d!2312820))

(declare-fun b!7550352 () Bool)

(declare-fun res!3026307 () Bool)

(declare-fun e!4497634 () Bool)

(assert (=> b!7550352 (=> (not res!3026307) (not e!4497634))))

(declare-fun lt!2646682 () List!72828)

(assert (=> b!7550352 (= res!3026307 (= (size!42441 lt!2646682) (+ (size!42441 testedP!423) (size!42441 lt!2646583))))))

(declare-fun b!7550350 () Bool)

(declare-fun e!4497633 () List!72828)

(assert (=> b!7550350 (= e!4497633 lt!2646583)))

(declare-fun d!2312822 () Bool)

(assert (=> d!2312822 e!4497634))

(declare-fun res!3026308 () Bool)

(assert (=> d!2312822 (=> (not res!3026308) (not e!4497634))))

(assert (=> d!2312822 (= res!3026308 (= (content!15388 lt!2646682) ((_ map or) (content!15388 testedP!423) (content!15388 lt!2646583))))))

(assert (=> d!2312822 (= lt!2646682 e!4497633)))

(declare-fun c!1393632 () Bool)

(assert (=> d!2312822 (= c!1393632 ((_ is Nil!72704) testedP!423))))

(assert (=> d!2312822 (= (++!17461 testedP!423 lt!2646583) lt!2646682)))

(declare-fun b!7550351 () Bool)

(assert (=> b!7550351 (= e!4497633 (Cons!72704 (h!79152 testedP!423) (++!17461 (t!387545 testedP!423) lt!2646583)))))

(declare-fun b!7550353 () Bool)

(assert (=> b!7550353 (= e!4497634 (or (not (= lt!2646583 Nil!72704)) (= lt!2646682 testedP!423)))))

(assert (= (and d!2312822 c!1393632) b!7550350))

(assert (= (and d!2312822 (not c!1393632)) b!7550351))

(assert (= (and d!2312822 res!3026308) b!7550352))

(assert (= (and b!7550352 res!3026307) b!7550353))

(declare-fun m!8117542 () Bool)

(assert (=> b!7550352 m!8117542))

(assert (=> b!7550352 m!8117172))

(declare-fun m!8117544 () Bool)

(assert (=> b!7550352 m!8117544))

(declare-fun m!8117546 () Bool)

(assert (=> d!2312822 m!8117546))

(assert (=> d!2312822 m!8117456))

(declare-fun m!8117548 () Bool)

(assert (=> d!2312822 m!8117548))

(declare-fun m!8117550 () Bool)

(assert (=> b!7550351 m!8117550))

(assert (=> b!7550015 d!2312822))

(declare-fun b!7550360 () Bool)

(declare-fun res!3026311 () Bool)

(declare-fun e!4497638 () Bool)

(assert (=> b!7550360 (=> (not res!3026311) (not e!4497638))))

(declare-fun lt!2646684 () List!72828)

(assert (=> b!7550360 (= res!3026311 (= (size!42441 lt!2646684) (+ (size!42441 lt!2646575) (size!42441 lt!2646587))))))

(declare-fun b!7550358 () Bool)

(declare-fun e!4497637 () List!72828)

(assert (=> b!7550358 (= e!4497637 lt!2646587)))

(declare-fun d!2312828 () Bool)

(assert (=> d!2312828 e!4497638))

(declare-fun res!3026312 () Bool)

(assert (=> d!2312828 (=> (not res!3026312) (not e!4497638))))

(assert (=> d!2312828 (= res!3026312 (= (content!15388 lt!2646684) ((_ map or) (content!15388 lt!2646575) (content!15388 lt!2646587))))))

(assert (=> d!2312828 (= lt!2646684 e!4497637)))

(declare-fun c!1393634 () Bool)

(assert (=> d!2312828 (= c!1393634 ((_ is Nil!72704) lt!2646575))))

(assert (=> d!2312828 (= (++!17461 lt!2646575 lt!2646587) lt!2646684)))

(declare-fun b!7550359 () Bool)

(assert (=> b!7550359 (= e!4497637 (Cons!72704 (h!79152 lt!2646575) (++!17461 (t!387545 lt!2646575) lt!2646587)))))

(declare-fun b!7550361 () Bool)

(assert (=> b!7550361 (= e!4497638 (or (not (= lt!2646587 Nil!72704)) (= lt!2646684 lt!2646575)))))

(assert (= (and d!2312828 c!1393634) b!7550358))

(assert (= (and d!2312828 (not c!1393634)) b!7550359))

(assert (= (and d!2312828 res!3026312) b!7550360))

(assert (= (and b!7550360 res!3026311) b!7550361))

(declare-fun m!8117552 () Bool)

(assert (=> b!7550360 m!8117552))

(declare-fun m!8117554 () Bool)

(assert (=> b!7550360 m!8117554))

(assert (=> b!7550360 m!8117434))

(declare-fun m!8117556 () Bool)

(assert (=> d!2312828 m!8117556))

(declare-fun m!8117558 () Bool)

(assert (=> d!2312828 m!8117558))

(assert (=> d!2312828 m!8117440))

(declare-fun m!8117560 () Bool)

(assert (=> b!7550359 m!8117560))

(assert (=> b!7550015 d!2312828))

(declare-fun d!2312834 () Bool)

(assert (=> d!2312834 (= (++!17461 (++!17461 testedP!423 lt!2646575) lt!2646587) (++!17461 testedP!423 (++!17461 lt!2646575 lt!2646587)))))

(declare-fun lt!2646689 () Unit!166828)

(declare-fun choose!58434 (List!72828 List!72828 List!72828) Unit!166828)

(assert (=> d!2312834 (= lt!2646689 (choose!58434 testedP!423 lt!2646575 lt!2646587))))

(assert (=> d!2312834 (= (lemmaConcatAssociativity!3100 testedP!423 lt!2646575 lt!2646587) lt!2646689)))

(declare-fun bs!1940187 () Bool)

(assert (= bs!1940187 d!2312834))

(assert (=> bs!1940187 m!8117240))

(declare-fun m!8117576 () Bool)

(assert (=> bs!1940187 m!8117576))

(assert (=> bs!1940187 m!8117240))

(assert (=> bs!1940187 m!8117192))

(assert (=> bs!1940187 m!8117194))

(declare-fun m!8117578 () Bool)

(assert (=> bs!1940187 m!8117578))

(assert (=> bs!1940187 m!8117192))

(assert (=> b!7550015 d!2312834))

(declare-fun d!2312840 () Bool)

(declare-fun e!4497655 () Bool)

(assert (=> d!2312840 e!4497655))

(declare-fun c!1393639 () Bool)

(assert (=> d!2312840 (= c!1393639 ((_ is EmptyExpr!19945) baseR!101))))

(declare-fun lt!2646690 () Bool)

(declare-fun e!4497660 () Bool)

(assert (=> d!2312840 (= lt!2646690 e!4497660)))

(declare-fun c!1393640 () Bool)

(assert (=> d!2312840 (= c!1393640 (isEmpty!41396 knownP!30))))

(assert (=> d!2312840 (validRegex!10373 baseR!101)))

(assert (=> d!2312840 (= (matchR!9547 baseR!101 knownP!30) lt!2646690)))

(declare-fun b!7550398 () Bool)

(declare-fun e!4497654 () Bool)

(assert (=> b!7550398 (= e!4497654 (not lt!2646690))))

(declare-fun b!7550399 () Bool)

(declare-fun e!4497659 () Bool)

(assert (=> b!7550399 (= e!4497659 (= (head!15535 knownP!30) (c!1393532 baseR!101)))))

(declare-fun b!7550400 () Bool)

(declare-fun e!4497658 () Bool)

(declare-fun e!4497657 () Bool)

(assert (=> b!7550400 (= e!4497658 e!4497657)))

(declare-fun res!3026328 () Bool)

(assert (=> b!7550400 (=> (not res!3026328) (not e!4497657))))

(assert (=> b!7550400 (= res!3026328 (not lt!2646690))))

(declare-fun b!7550401 () Bool)

(declare-fun e!4497656 () Bool)

(assert (=> b!7550401 (= e!4497657 e!4497656)))

(declare-fun res!3026331 () Bool)

(assert (=> b!7550401 (=> res!3026331 e!4497656)))

(declare-fun call!692328 () Bool)

(assert (=> b!7550401 (= res!3026331 call!692328)))

(declare-fun bm!692323 () Bool)

(assert (=> bm!692323 (= call!692328 (isEmpty!41396 knownP!30))))

(declare-fun b!7550402 () Bool)

(assert (=> b!7550402 (= e!4497655 (= lt!2646690 call!692328))))

(declare-fun b!7550403 () Bool)

(assert (=> b!7550403 (= e!4497655 e!4497654)))

(declare-fun c!1393638 () Bool)

(assert (=> b!7550403 (= c!1393638 ((_ is EmptyLang!19945) baseR!101))))

(declare-fun b!7550404 () Bool)

(assert (=> b!7550404 (= e!4497660 (matchR!9547 (derivativeStep!5735 baseR!101 (head!15535 knownP!30)) (tail!15077 knownP!30)))))

(declare-fun b!7550405 () Bool)

(declare-fun res!3026330 () Bool)

(assert (=> b!7550405 (=> res!3026330 e!4497658)))

(assert (=> b!7550405 (= res!3026330 (not ((_ is ElementMatch!19945) baseR!101)))))

(assert (=> b!7550405 (= e!4497654 e!4497658)))

(declare-fun b!7550406 () Bool)

(assert (=> b!7550406 (= e!4497656 (not (= (head!15535 knownP!30) (c!1393532 baseR!101))))))

(declare-fun b!7550407 () Bool)

(declare-fun res!3026325 () Bool)

(assert (=> b!7550407 (=> res!3026325 e!4497656)))

(assert (=> b!7550407 (= res!3026325 (not (isEmpty!41396 (tail!15077 knownP!30))))))

(declare-fun b!7550408 () Bool)

(declare-fun res!3026329 () Bool)

(assert (=> b!7550408 (=> (not res!3026329) (not e!4497659))))

(assert (=> b!7550408 (= res!3026329 (isEmpty!41396 (tail!15077 knownP!30)))))

(declare-fun b!7550409 () Bool)

(declare-fun res!3026326 () Bool)

(assert (=> b!7550409 (=> (not res!3026326) (not e!4497659))))

(assert (=> b!7550409 (= res!3026326 (not call!692328))))

(declare-fun b!7550410 () Bool)

(assert (=> b!7550410 (= e!4497660 (nullable!8701 baseR!101))))

(declare-fun b!7550411 () Bool)

(declare-fun res!3026332 () Bool)

(assert (=> b!7550411 (=> res!3026332 e!4497658)))

(assert (=> b!7550411 (= res!3026332 e!4497659)))

(declare-fun res!3026327 () Bool)

(assert (=> b!7550411 (=> (not res!3026327) (not e!4497659))))

(assert (=> b!7550411 (= res!3026327 lt!2646690)))

(assert (= (and d!2312840 c!1393640) b!7550410))

(assert (= (and d!2312840 (not c!1393640)) b!7550404))

(assert (= (and d!2312840 c!1393639) b!7550402))

(assert (= (and d!2312840 (not c!1393639)) b!7550403))

(assert (= (and b!7550403 c!1393638) b!7550398))

(assert (= (and b!7550403 (not c!1393638)) b!7550405))

(assert (= (and b!7550405 (not res!3026330)) b!7550411))

(assert (= (and b!7550411 res!3026327) b!7550409))

(assert (= (and b!7550409 res!3026326) b!7550408))

(assert (= (and b!7550408 res!3026329) b!7550399))

(assert (= (and b!7550411 (not res!3026332)) b!7550400))

(assert (= (and b!7550400 res!3026328) b!7550401))

(assert (= (and b!7550401 (not res!3026331)) b!7550407))

(assert (= (and b!7550407 (not res!3026325)) b!7550406))

(assert (= (or b!7550402 b!7550401 b!7550409) bm!692323))

(assert (=> b!7550407 m!8117262))

(assert (=> b!7550407 m!8117262))

(declare-fun m!8117580 () Bool)

(assert (=> b!7550407 m!8117580))

(assert (=> b!7550406 m!8117278))

(declare-fun m!8117582 () Bool)

(assert (=> d!2312840 m!8117582))

(assert (=> d!2312840 m!8117196))

(assert (=> b!7550408 m!8117262))

(assert (=> b!7550408 m!8117262))

(assert (=> b!7550408 m!8117580))

(declare-fun m!8117584 () Bool)

(assert (=> b!7550410 m!8117584))

(assert (=> b!7550399 m!8117278))

(assert (=> bm!692323 m!8117582))

(assert (=> b!7550404 m!8117278))

(assert (=> b!7550404 m!8117278))

(declare-fun m!8117586 () Bool)

(assert (=> b!7550404 m!8117586))

(assert (=> b!7550404 m!8117262))

(assert (=> b!7550404 m!8117586))

(assert (=> b!7550404 m!8117262))

(declare-fun m!8117588 () Bool)

(assert (=> b!7550404 m!8117588))

(assert (=> b!7550013 d!2312840))

(declare-fun b!7550469 () Bool)

(declare-fun res!3026345 () Bool)

(declare-fun e!4497687 () Bool)

(assert (=> b!7550469 (=> res!3026345 e!4497687)))

(assert (=> b!7550469 (= res!3026345 (not ((_ is Concat!28790) baseR!101)))))

(declare-fun e!4497688 () Bool)

(assert (=> b!7550469 (= e!4497688 e!4497687)))

(declare-fun d!2312842 () Bool)

(declare-fun res!3026343 () Bool)

(declare-fun e!4497691 () Bool)

(assert (=> d!2312842 (=> res!3026343 e!4497691)))

(assert (=> d!2312842 (= res!3026343 ((_ is ElementMatch!19945) baseR!101))))

(assert (=> d!2312842 (= (validRegex!10373 baseR!101) e!4497691)))

(declare-fun b!7550470 () Bool)

(declare-fun e!4497693 () Bool)

(assert (=> b!7550470 (= e!4497687 e!4497693)))

(declare-fun res!3026344 () Bool)

(assert (=> b!7550470 (=> (not res!3026344) (not e!4497693))))

(declare-fun call!692336 () Bool)

(assert (=> b!7550470 (= res!3026344 call!692336)))

(declare-fun bm!692330 () Bool)

(declare-fun c!1393646 () Bool)

(declare-fun call!692337 () Bool)

(declare-fun c!1393645 () Bool)

(assert (=> bm!692330 (= call!692337 (validRegex!10373 (ite c!1393646 (reg!20274 baseR!101) (ite c!1393645 (regOne!40403 baseR!101) (regOne!40402 baseR!101)))))))

(declare-fun bm!692331 () Bool)

(declare-fun call!692335 () Bool)

(assert (=> bm!692331 (= call!692335 (validRegex!10373 (ite c!1393645 (regTwo!40403 baseR!101) (regTwo!40402 baseR!101))))))

(declare-fun b!7550471 () Bool)

(declare-fun e!4497689 () Bool)

(assert (=> b!7550471 (= e!4497689 e!4497688)))

(assert (=> b!7550471 (= c!1393645 ((_ is Union!19945) baseR!101))))

(declare-fun b!7550472 () Bool)

(declare-fun e!4497692 () Bool)

(assert (=> b!7550472 (= e!4497692 call!692335)))

(declare-fun bm!692332 () Bool)

(assert (=> bm!692332 (= call!692336 call!692337)))

(declare-fun b!7550473 () Bool)

(declare-fun res!3026346 () Bool)

(assert (=> b!7550473 (=> (not res!3026346) (not e!4497692))))

(assert (=> b!7550473 (= res!3026346 call!692336)))

(assert (=> b!7550473 (= e!4497688 e!4497692)))

(declare-fun b!7550474 () Bool)

(assert (=> b!7550474 (= e!4497691 e!4497689)))

(assert (=> b!7550474 (= c!1393646 ((_ is Star!19945) baseR!101))))

(declare-fun b!7550475 () Bool)

(declare-fun e!4497690 () Bool)

(assert (=> b!7550475 (= e!4497689 e!4497690)))

(declare-fun res!3026347 () Bool)

(assert (=> b!7550475 (= res!3026347 (not (nullable!8701 (reg!20274 baseR!101))))))

(assert (=> b!7550475 (=> (not res!3026347) (not e!4497690))))

(declare-fun b!7550476 () Bool)

(assert (=> b!7550476 (= e!4497693 call!692335)))

(declare-fun b!7550477 () Bool)

(assert (=> b!7550477 (= e!4497690 call!692337)))

(assert (= (and d!2312842 (not res!3026343)) b!7550474))

(assert (= (and b!7550474 c!1393646) b!7550475))

(assert (= (and b!7550474 (not c!1393646)) b!7550471))

(assert (= (and b!7550475 res!3026347) b!7550477))

(assert (= (and b!7550471 c!1393645) b!7550473))

(assert (= (and b!7550471 (not c!1393645)) b!7550469))

(assert (= (and b!7550473 res!3026346) b!7550472))

(assert (= (and b!7550469 (not res!3026345)) b!7550470))

(assert (= (and b!7550470 res!3026344) b!7550476))

(assert (= (or b!7550473 b!7550470) bm!692332))

(assert (= (or b!7550472 b!7550476) bm!692331))

(assert (= (or b!7550477 bm!692332) bm!692330))

(declare-fun m!8117590 () Bool)

(assert (=> bm!692330 m!8117590))

(declare-fun m!8117592 () Bool)

(assert (=> bm!692331 m!8117592))

(declare-fun m!8117594 () Bool)

(assert (=> b!7550475 m!8117594))

(assert (=> start!730024 d!2312842))

(declare-fun d!2312844 () Bool)

(declare-fun lt!2646691 () Regex!19945)

(assert (=> d!2312844 (validRegex!10373 lt!2646691)))

(declare-fun e!4497694 () Regex!19945)

(assert (=> d!2312844 (= lt!2646691 e!4497694)))

(declare-fun c!1393647 () Bool)

(assert (=> d!2312844 (= c!1393647 ((_ is Cons!72704) testedP!423))))

(assert (=> d!2312844 (validRegex!10373 baseR!101)))

(assert (=> d!2312844 (= (derivative!477 baseR!101 testedP!423) lt!2646691)))

(declare-fun b!7550478 () Bool)

(assert (=> b!7550478 (= e!4497694 (derivative!477 (derivativeStep!5735 baseR!101 (h!79152 testedP!423)) (t!387545 testedP!423)))))

(declare-fun b!7550479 () Bool)

(assert (=> b!7550479 (= e!4497694 baseR!101)))

(assert (= (and d!2312844 c!1393647) b!7550478))

(assert (= (and d!2312844 (not c!1393647)) b!7550479))

(declare-fun m!8117596 () Bool)

(assert (=> d!2312844 m!8117596))

(assert (=> d!2312844 m!8117196))

(declare-fun m!8117598 () Bool)

(assert (=> b!7550478 m!8117598))

(assert (=> b!7550478 m!8117598))

(declare-fun m!8117600 () Bool)

(assert (=> b!7550478 m!8117600))

(assert (=> b!7550003 d!2312844))

(declare-fun b!7550480 () Bool)

(declare-fun res!3026350 () Bool)

(declare-fun e!4497695 () Bool)

(assert (=> b!7550480 (=> res!3026350 e!4497695)))

(assert (=> b!7550480 (= res!3026350 (not ((_ is Concat!28790) r!24333)))))

(declare-fun e!4497696 () Bool)

(assert (=> b!7550480 (= e!4497696 e!4497695)))

(declare-fun d!2312846 () Bool)

(declare-fun res!3026348 () Bool)

(declare-fun e!4497699 () Bool)

(assert (=> d!2312846 (=> res!3026348 e!4497699)))

(assert (=> d!2312846 (= res!3026348 ((_ is ElementMatch!19945) r!24333))))

(assert (=> d!2312846 (= (validRegex!10373 r!24333) e!4497699)))

(declare-fun b!7550481 () Bool)

(declare-fun e!4497701 () Bool)

(assert (=> b!7550481 (= e!4497695 e!4497701)))

(declare-fun res!3026349 () Bool)

(assert (=> b!7550481 (=> (not res!3026349) (not e!4497701))))

(declare-fun call!692339 () Bool)

(assert (=> b!7550481 (= res!3026349 call!692339)))

(declare-fun call!692340 () Bool)

(declare-fun c!1393649 () Bool)

(declare-fun bm!692333 () Bool)

(declare-fun c!1393648 () Bool)

(assert (=> bm!692333 (= call!692340 (validRegex!10373 (ite c!1393649 (reg!20274 r!24333) (ite c!1393648 (regOne!40403 r!24333) (regOne!40402 r!24333)))))))

(declare-fun bm!692334 () Bool)

(declare-fun call!692338 () Bool)

(assert (=> bm!692334 (= call!692338 (validRegex!10373 (ite c!1393648 (regTwo!40403 r!24333) (regTwo!40402 r!24333))))))

(declare-fun b!7550482 () Bool)

(declare-fun e!4497697 () Bool)

(assert (=> b!7550482 (= e!4497697 e!4497696)))

(assert (=> b!7550482 (= c!1393648 ((_ is Union!19945) r!24333))))

(declare-fun b!7550483 () Bool)

(declare-fun e!4497700 () Bool)

(assert (=> b!7550483 (= e!4497700 call!692338)))

(declare-fun bm!692335 () Bool)

(assert (=> bm!692335 (= call!692339 call!692340)))

(declare-fun b!7550484 () Bool)

(declare-fun res!3026351 () Bool)

(assert (=> b!7550484 (=> (not res!3026351) (not e!4497700))))

(assert (=> b!7550484 (= res!3026351 call!692339)))

(assert (=> b!7550484 (= e!4497696 e!4497700)))

(declare-fun b!7550485 () Bool)

(assert (=> b!7550485 (= e!4497699 e!4497697)))

(assert (=> b!7550485 (= c!1393649 ((_ is Star!19945) r!24333))))

(declare-fun b!7550486 () Bool)

(declare-fun e!4497698 () Bool)

(assert (=> b!7550486 (= e!4497697 e!4497698)))

(declare-fun res!3026352 () Bool)

(assert (=> b!7550486 (= res!3026352 (not (nullable!8701 (reg!20274 r!24333))))))

(assert (=> b!7550486 (=> (not res!3026352) (not e!4497698))))

(declare-fun b!7550487 () Bool)

(assert (=> b!7550487 (= e!4497701 call!692338)))

(declare-fun b!7550488 () Bool)

(assert (=> b!7550488 (= e!4497698 call!692340)))

(assert (= (and d!2312846 (not res!3026348)) b!7550485))

(assert (= (and b!7550485 c!1393649) b!7550486))

(assert (= (and b!7550485 (not c!1393649)) b!7550482))

(assert (= (and b!7550486 res!3026352) b!7550488))

(assert (= (and b!7550482 c!1393648) b!7550484))

(assert (= (and b!7550482 (not c!1393648)) b!7550480))

(assert (= (and b!7550484 res!3026351) b!7550483))

(assert (= (and b!7550480 (not res!3026350)) b!7550481))

(assert (= (and b!7550481 res!3026349) b!7550487))

(assert (= (or b!7550484 b!7550481) bm!692335))

(assert (= (or b!7550483 b!7550487) bm!692334))

(assert (= (or b!7550488 bm!692335) bm!692333))

(declare-fun m!8117602 () Bool)

(assert (=> bm!692333 m!8117602))

(declare-fun m!8117604 () Bool)

(assert (=> bm!692334 m!8117604))

(declare-fun m!8117606 () Bool)

(assert (=> b!7550486 m!8117606))

(assert (=> b!7550012 d!2312846))

(declare-fun b!7550491 () Bool)

(declare-fun res!3026353 () Bool)

(declare-fun e!4497703 () Bool)

(assert (=> b!7550491 (=> (not res!3026353) (not e!4497703))))

(declare-fun lt!2646692 () List!72828)

(assert (=> b!7550491 (= res!3026353 (= (size!42441 lt!2646692) (+ (size!42441 (++!17461 testedP!423 lt!2646575)) (size!42441 lt!2646587))))))

(declare-fun b!7550489 () Bool)

(declare-fun e!4497702 () List!72828)

(assert (=> b!7550489 (= e!4497702 lt!2646587)))

(declare-fun d!2312848 () Bool)

(assert (=> d!2312848 e!4497703))

(declare-fun res!3026354 () Bool)

(assert (=> d!2312848 (=> (not res!3026354) (not e!4497703))))

(assert (=> d!2312848 (= res!3026354 (= (content!15388 lt!2646692) ((_ map or) (content!15388 (++!17461 testedP!423 lt!2646575)) (content!15388 lt!2646587))))))

(assert (=> d!2312848 (= lt!2646692 e!4497702)))

(declare-fun c!1393650 () Bool)

(assert (=> d!2312848 (= c!1393650 ((_ is Nil!72704) (++!17461 testedP!423 lt!2646575)))))

(assert (=> d!2312848 (= (++!17461 (++!17461 testedP!423 lt!2646575) lt!2646587) lt!2646692)))

(declare-fun b!7550490 () Bool)

(assert (=> b!7550490 (= e!4497702 (Cons!72704 (h!79152 (++!17461 testedP!423 lt!2646575)) (++!17461 (t!387545 (++!17461 testedP!423 lt!2646575)) lt!2646587)))))

(declare-fun b!7550492 () Bool)

(assert (=> b!7550492 (= e!4497703 (or (not (= lt!2646587 Nil!72704)) (= lt!2646692 (++!17461 testedP!423 lt!2646575))))))

(assert (= (and d!2312848 c!1393650) b!7550489))

(assert (= (and d!2312848 (not c!1393650)) b!7550490))

(assert (= (and d!2312848 res!3026354) b!7550491))

(assert (= (and b!7550491 res!3026353) b!7550492))

(declare-fun m!8117608 () Bool)

(assert (=> b!7550491 m!8117608))

(assert (=> b!7550491 m!8117192))

(declare-fun m!8117610 () Bool)

(assert (=> b!7550491 m!8117610))

(assert (=> b!7550491 m!8117434))

(declare-fun m!8117612 () Bool)

(assert (=> d!2312848 m!8117612))

(assert (=> d!2312848 m!8117192))

(declare-fun m!8117614 () Bool)

(assert (=> d!2312848 m!8117614))

(assert (=> d!2312848 m!8117440))

(declare-fun m!8117616 () Bool)

(assert (=> b!7550490 m!8117616))

(assert (=> b!7549989 d!2312848))

(declare-fun b!7550495 () Bool)

(declare-fun res!3026355 () Bool)

(declare-fun e!4497705 () Bool)

(assert (=> b!7550495 (=> (not res!3026355) (not e!4497705))))

(declare-fun lt!2646693 () List!72828)

(assert (=> b!7550495 (= res!3026355 (= (size!42441 lt!2646693) (+ (size!42441 testedP!423) (size!42441 lt!2646575))))))

(declare-fun b!7550493 () Bool)

(declare-fun e!4497704 () List!72828)

(assert (=> b!7550493 (= e!4497704 lt!2646575)))

(declare-fun d!2312850 () Bool)

(assert (=> d!2312850 e!4497705))

(declare-fun res!3026356 () Bool)

(assert (=> d!2312850 (=> (not res!3026356) (not e!4497705))))

(assert (=> d!2312850 (= res!3026356 (= (content!15388 lt!2646693) ((_ map or) (content!15388 testedP!423) (content!15388 lt!2646575))))))

(assert (=> d!2312850 (= lt!2646693 e!4497704)))

(declare-fun c!1393651 () Bool)

(assert (=> d!2312850 (= c!1393651 ((_ is Nil!72704) testedP!423))))

(assert (=> d!2312850 (= (++!17461 testedP!423 lt!2646575) lt!2646693)))

(declare-fun b!7550494 () Bool)

(assert (=> b!7550494 (= e!4497704 (Cons!72704 (h!79152 testedP!423) (++!17461 (t!387545 testedP!423) lt!2646575)))))

(declare-fun b!7550496 () Bool)

(assert (=> b!7550496 (= e!4497705 (or (not (= lt!2646575 Nil!72704)) (= lt!2646693 testedP!423)))))

(assert (= (and d!2312850 c!1393651) b!7550493))

(assert (= (and d!2312850 (not c!1393651)) b!7550494))

(assert (= (and d!2312850 res!3026356) b!7550495))

(assert (= (and b!7550495 res!3026355) b!7550496))

(declare-fun m!8117618 () Bool)

(assert (=> b!7550495 m!8117618))

(assert (=> b!7550495 m!8117172))

(assert (=> b!7550495 m!8117554))

(declare-fun m!8117620 () Bool)

(assert (=> d!2312850 m!8117620))

(assert (=> d!2312850 m!8117456))

(assert (=> d!2312850 m!8117558))

(declare-fun m!8117622 () Bool)

(assert (=> b!7550494 m!8117622))

(assert (=> b!7549989 d!2312850))

(declare-fun b!7550499 () Bool)

(declare-fun e!4497707 () Bool)

(assert (=> b!7550499 (= e!4497707 (isPrefix!6151 (tail!15077 testedP!423) (tail!15077 input!7874)))))

(declare-fun b!7550500 () Bool)

(declare-fun e!4497706 () Bool)

(assert (=> b!7550500 (= e!4497706 (>= (size!42441 input!7874) (size!42441 testedP!423)))))

(declare-fun b!7550498 () Bool)

(declare-fun res!3026358 () Bool)

(assert (=> b!7550498 (=> (not res!3026358) (not e!4497707))))

(assert (=> b!7550498 (= res!3026358 (= (head!15535 testedP!423) (head!15535 input!7874)))))

(declare-fun b!7550497 () Bool)

(declare-fun e!4497708 () Bool)

(assert (=> b!7550497 (= e!4497708 e!4497707)))

(declare-fun res!3026357 () Bool)

(assert (=> b!7550497 (=> (not res!3026357) (not e!4497707))))

(assert (=> b!7550497 (= res!3026357 (not ((_ is Nil!72704) input!7874)))))

(declare-fun d!2312852 () Bool)

(assert (=> d!2312852 e!4497706))

(declare-fun res!3026360 () Bool)

(assert (=> d!2312852 (=> res!3026360 e!4497706)))

(declare-fun lt!2646694 () Bool)

(assert (=> d!2312852 (= res!3026360 (not lt!2646694))))

(assert (=> d!2312852 (= lt!2646694 e!4497708)))

(declare-fun res!3026359 () Bool)

(assert (=> d!2312852 (=> res!3026359 e!4497708)))

(assert (=> d!2312852 (= res!3026359 ((_ is Nil!72704) testedP!423))))

(assert (=> d!2312852 (= (isPrefix!6151 testedP!423 input!7874) lt!2646694)))

(assert (= (and d!2312852 (not res!3026359)) b!7550497))

(assert (= (and b!7550497 res!3026357) b!7550498))

(assert (= (and b!7550498 res!3026358) b!7550499))

(assert (= (and d!2312852 (not res!3026360)) b!7550500))

(assert (=> b!7550499 m!8117272))

(assert (=> b!7550499 m!8117310))

(assert (=> b!7550499 m!8117272))

(assert (=> b!7550499 m!8117310))

(declare-fun m!8117624 () Bool)

(assert (=> b!7550499 m!8117624))

(assert (=> b!7550500 m!8117244))

(assert (=> b!7550500 m!8117172))

(assert (=> b!7550498 m!8117276))

(assert (=> b!7550498 m!8117314))

(assert (=> b!7550000 d!2312852))

(declare-fun d!2312854 () Bool)

(assert (=> d!2312854 (= (head!15535 lt!2646575) (h!79152 lt!2646575))))

(assert (=> b!7549999 d!2312854))

(declare-fun d!2312856 () Bool)

(assert (=> d!2312856 (= lt!2646583 lt!2646577)))

(declare-fun lt!2646697 () Unit!166828)

(declare-fun choose!58435 (List!72828 List!72828 List!72828 List!72828 List!72828) Unit!166828)

(assert (=> d!2312856 (= lt!2646697 (choose!58435 testedP!423 lt!2646583 testedP!423 lt!2646577 input!7874))))

(assert (=> d!2312856 (isPrefix!6151 testedP!423 input!7874)))

(assert (=> d!2312856 (= (lemmaSamePrefixThenSameSuffix!2867 testedP!423 lt!2646583 testedP!423 lt!2646577 input!7874) lt!2646697)))

(declare-fun bs!1940188 () Bool)

(assert (= bs!1940188 d!2312856))

(declare-fun m!8117626 () Bool)

(assert (=> bs!1940188 m!8117626))

(assert (=> bs!1940188 m!8117204))

(assert (=> b!7549999 d!2312856))

(declare-fun b!7550503 () Bool)

(declare-fun res!3026361 () Bool)

(declare-fun e!4497710 () Bool)

(assert (=> b!7550503 (=> (not res!3026361) (not e!4497710))))

(declare-fun lt!2646698 () List!72828)

(assert (=> b!7550503 (= res!3026361 (= (size!42441 lt!2646698) (+ (size!42441 testedP!423) (size!42441 lt!2646577))))))

(declare-fun b!7550501 () Bool)

(declare-fun e!4497709 () List!72828)

(assert (=> b!7550501 (= e!4497709 lt!2646577)))

(declare-fun d!2312858 () Bool)

(assert (=> d!2312858 e!4497710))

(declare-fun res!3026362 () Bool)

(assert (=> d!2312858 (=> (not res!3026362) (not e!4497710))))

(assert (=> d!2312858 (= res!3026362 (= (content!15388 lt!2646698) ((_ map or) (content!15388 testedP!423) (content!15388 lt!2646577))))))

(assert (=> d!2312858 (= lt!2646698 e!4497709)))

(declare-fun c!1393652 () Bool)

(assert (=> d!2312858 (= c!1393652 ((_ is Nil!72704) testedP!423))))

(assert (=> d!2312858 (= (++!17461 testedP!423 lt!2646577) lt!2646698)))

(declare-fun b!7550502 () Bool)

(assert (=> b!7550502 (= e!4497709 (Cons!72704 (h!79152 testedP!423) (++!17461 (t!387545 testedP!423) lt!2646577)))))

(declare-fun b!7550504 () Bool)

(assert (=> b!7550504 (= e!4497710 (or (not (= lt!2646577 Nil!72704)) (= lt!2646698 testedP!423)))))

(assert (= (and d!2312858 c!1393652) b!7550501))

(assert (= (and d!2312858 (not c!1393652)) b!7550502))

(assert (= (and d!2312858 res!3026362) b!7550503))

(assert (= (and b!7550503 res!3026361) b!7550504))

(declare-fun m!8117628 () Bool)

(assert (=> b!7550503 m!8117628))

(assert (=> b!7550503 m!8117172))

(declare-fun m!8117630 () Bool)

(assert (=> b!7550503 m!8117630))

(declare-fun m!8117632 () Bool)

(assert (=> d!2312858 m!8117632))

(assert (=> d!2312858 m!8117456))

(declare-fun m!8117634 () Bool)

(assert (=> d!2312858 m!8117634))

(declare-fun m!8117636 () Bool)

(assert (=> b!7550502 m!8117636))

(assert (=> b!7550010 d!2312858))

(declare-fun b!7550509 () Bool)

(declare-fun e!4497713 () Bool)

(declare-fun tp!2196497 () Bool)

(assert (=> b!7550509 (= e!4497713 (and tp_is_empty!50245 tp!2196497))))

(assert (=> b!7549992 (= tp!2196419 e!4497713)))

(assert (= (and b!7549992 ((_ is Cons!72704) (t!387545 knownP!30))) b!7550509))

(declare-fun b!7550523 () Bool)

(declare-fun e!4497716 () Bool)

(declare-fun tp!2196508 () Bool)

(declare-fun tp!2196511 () Bool)

(assert (=> b!7550523 (= e!4497716 (and tp!2196508 tp!2196511))))

(declare-fun b!7550522 () Bool)

(declare-fun tp!2196509 () Bool)

(assert (=> b!7550522 (= e!4497716 tp!2196509)))

(assert (=> b!7550008 (= tp!2196417 e!4497716)))

(declare-fun b!7550521 () Bool)

(declare-fun tp!2196512 () Bool)

(declare-fun tp!2196510 () Bool)

(assert (=> b!7550521 (= e!4497716 (and tp!2196512 tp!2196510))))

(declare-fun b!7550520 () Bool)

(assert (=> b!7550520 (= e!4497716 tp_is_empty!50245)))

(assert (= (and b!7550008 ((_ is ElementMatch!19945) (reg!20274 r!24333))) b!7550520))

(assert (= (and b!7550008 ((_ is Concat!28790) (reg!20274 r!24333))) b!7550521))

(assert (= (and b!7550008 ((_ is Star!19945) (reg!20274 r!24333))) b!7550522))

(assert (= (and b!7550008 ((_ is Union!19945) (reg!20274 r!24333))) b!7550523))

(declare-fun b!7550527 () Bool)

(declare-fun e!4497717 () Bool)

(declare-fun tp!2196513 () Bool)

(declare-fun tp!2196516 () Bool)

(assert (=> b!7550527 (= e!4497717 (and tp!2196513 tp!2196516))))

(declare-fun b!7550526 () Bool)

(declare-fun tp!2196514 () Bool)

(assert (=> b!7550526 (= e!4497717 tp!2196514)))

(assert (=> b!7550001 (= tp!2196429 e!4497717)))

(declare-fun b!7550525 () Bool)

(declare-fun tp!2196517 () Bool)

(declare-fun tp!2196515 () Bool)

(assert (=> b!7550525 (= e!4497717 (and tp!2196517 tp!2196515))))

(declare-fun b!7550524 () Bool)

(assert (=> b!7550524 (= e!4497717 tp_is_empty!50245)))

(assert (= (and b!7550001 ((_ is ElementMatch!19945) (regOne!40403 r!24333))) b!7550524))

(assert (= (and b!7550001 ((_ is Concat!28790) (regOne!40403 r!24333))) b!7550525))

(assert (= (and b!7550001 ((_ is Star!19945) (regOne!40403 r!24333))) b!7550526))

(assert (= (and b!7550001 ((_ is Union!19945) (regOne!40403 r!24333))) b!7550527))

(declare-fun b!7550531 () Bool)

(declare-fun e!4497718 () Bool)

(declare-fun tp!2196518 () Bool)

(declare-fun tp!2196521 () Bool)

(assert (=> b!7550531 (= e!4497718 (and tp!2196518 tp!2196521))))

(declare-fun b!7550530 () Bool)

(declare-fun tp!2196519 () Bool)

(assert (=> b!7550530 (= e!4497718 tp!2196519)))

(assert (=> b!7550001 (= tp!2196422 e!4497718)))

(declare-fun b!7550529 () Bool)

(declare-fun tp!2196522 () Bool)

(declare-fun tp!2196520 () Bool)

(assert (=> b!7550529 (= e!4497718 (and tp!2196522 tp!2196520))))

(declare-fun b!7550528 () Bool)

(assert (=> b!7550528 (= e!4497718 tp_is_empty!50245)))

(assert (= (and b!7550001 ((_ is ElementMatch!19945) (regTwo!40403 r!24333))) b!7550528))

(assert (= (and b!7550001 ((_ is Concat!28790) (regTwo!40403 r!24333))) b!7550529))

(assert (= (and b!7550001 ((_ is Star!19945) (regTwo!40403 r!24333))) b!7550530))

(assert (= (and b!7550001 ((_ is Union!19945) (regTwo!40403 r!24333))) b!7550531))

(declare-fun b!7550532 () Bool)

(declare-fun e!4497719 () Bool)

(declare-fun tp!2196523 () Bool)

(assert (=> b!7550532 (= e!4497719 (and tp_is_empty!50245 tp!2196523))))

(assert (=> b!7549991 (= tp!2196426 e!4497719)))

(assert (= (and b!7549991 ((_ is Cons!72704) (t!387545 input!7874))) b!7550532))

(declare-fun b!7550536 () Bool)

(declare-fun e!4497720 () Bool)

(declare-fun tp!2196524 () Bool)

(declare-fun tp!2196527 () Bool)

(assert (=> b!7550536 (= e!4497720 (and tp!2196524 tp!2196527))))

(declare-fun b!7550535 () Bool)

(declare-fun tp!2196525 () Bool)

(assert (=> b!7550535 (= e!4497720 tp!2196525)))

(assert (=> b!7550007 (= tp!2196424 e!4497720)))

(declare-fun b!7550534 () Bool)

(declare-fun tp!2196528 () Bool)

(declare-fun tp!2196526 () Bool)

(assert (=> b!7550534 (= e!4497720 (and tp!2196528 tp!2196526))))

(declare-fun b!7550533 () Bool)

(assert (=> b!7550533 (= e!4497720 tp_is_empty!50245)))

(assert (= (and b!7550007 ((_ is ElementMatch!19945) (reg!20274 baseR!101))) b!7550533))

(assert (= (and b!7550007 ((_ is Concat!28790) (reg!20274 baseR!101))) b!7550534))

(assert (= (and b!7550007 ((_ is Star!19945) (reg!20274 baseR!101))) b!7550535))

(assert (= (and b!7550007 ((_ is Union!19945) (reg!20274 baseR!101))) b!7550536))

(declare-fun b!7550537 () Bool)

(declare-fun e!4497721 () Bool)

(declare-fun tp!2196529 () Bool)

(assert (=> b!7550537 (= e!4497721 (and tp_is_empty!50245 tp!2196529))))

(assert (=> b!7550002 (= tp!2196423 e!4497721)))

(assert (= (and b!7550002 ((_ is Cons!72704) (t!387545 testedP!423))) b!7550537))

(declare-fun b!7550541 () Bool)

(declare-fun e!4497722 () Bool)

(declare-fun tp!2196530 () Bool)

(declare-fun tp!2196533 () Bool)

(assert (=> b!7550541 (= e!4497722 (and tp!2196530 tp!2196533))))

(declare-fun b!7550540 () Bool)

(declare-fun tp!2196531 () Bool)

(assert (=> b!7550540 (= e!4497722 tp!2196531)))

(assert (=> b!7549990 (= tp!2196420 e!4497722)))

(declare-fun b!7550539 () Bool)

(declare-fun tp!2196534 () Bool)

(declare-fun tp!2196532 () Bool)

(assert (=> b!7550539 (= e!4497722 (and tp!2196534 tp!2196532))))

(declare-fun b!7550538 () Bool)

(assert (=> b!7550538 (= e!4497722 tp_is_empty!50245)))

(assert (= (and b!7549990 ((_ is ElementMatch!19945) (regOne!40402 r!24333))) b!7550538))

(assert (= (and b!7549990 ((_ is Concat!28790) (regOne!40402 r!24333))) b!7550539))

(assert (= (and b!7549990 ((_ is Star!19945) (regOne!40402 r!24333))) b!7550540))

(assert (= (and b!7549990 ((_ is Union!19945) (regOne!40402 r!24333))) b!7550541))

(declare-fun b!7550545 () Bool)

(declare-fun e!4497723 () Bool)

(declare-fun tp!2196535 () Bool)

(declare-fun tp!2196538 () Bool)

(assert (=> b!7550545 (= e!4497723 (and tp!2196535 tp!2196538))))

(declare-fun b!7550544 () Bool)

(declare-fun tp!2196536 () Bool)

(assert (=> b!7550544 (= e!4497723 tp!2196536)))

(assert (=> b!7549990 (= tp!2196421 e!4497723)))

(declare-fun b!7550543 () Bool)

(declare-fun tp!2196539 () Bool)

(declare-fun tp!2196537 () Bool)

(assert (=> b!7550543 (= e!4497723 (and tp!2196539 tp!2196537))))

(declare-fun b!7550542 () Bool)

(assert (=> b!7550542 (= e!4497723 tp_is_empty!50245)))

(assert (= (and b!7549990 ((_ is ElementMatch!19945) (regTwo!40402 r!24333))) b!7550542))

(assert (= (and b!7549990 ((_ is Concat!28790) (regTwo!40402 r!24333))) b!7550543))

(assert (= (and b!7549990 ((_ is Star!19945) (regTwo!40402 r!24333))) b!7550544))

(assert (= (and b!7549990 ((_ is Union!19945) (regTwo!40402 r!24333))) b!7550545))

(declare-fun b!7550549 () Bool)

(declare-fun e!4497724 () Bool)

(declare-fun tp!2196540 () Bool)

(declare-fun tp!2196543 () Bool)

(assert (=> b!7550549 (= e!4497724 (and tp!2196540 tp!2196543))))

(declare-fun b!7550548 () Bool)

(declare-fun tp!2196541 () Bool)

(assert (=> b!7550548 (= e!4497724 tp!2196541)))

(assert (=> b!7550009 (= tp!2196427 e!4497724)))

(declare-fun b!7550547 () Bool)

(declare-fun tp!2196544 () Bool)

(declare-fun tp!2196542 () Bool)

(assert (=> b!7550547 (= e!4497724 (and tp!2196544 tp!2196542))))

(declare-fun b!7550546 () Bool)

(assert (=> b!7550546 (= e!4497724 tp_is_empty!50245)))

(assert (= (and b!7550009 ((_ is ElementMatch!19945) (regOne!40402 baseR!101))) b!7550546))

(assert (= (and b!7550009 ((_ is Concat!28790) (regOne!40402 baseR!101))) b!7550547))

(assert (= (and b!7550009 ((_ is Star!19945) (regOne!40402 baseR!101))) b!7550548))

(assert (= (and b!7550009 ((_ is Union!19945) (regOne!40402 baseR!101))) b!7550549))

(declare-fun b!7550553 () Bool)

(declare-fun e!4497725 () Bool)

(declare-fun tp!2196545 () Bool)

(declare-fun tp!2196548 () Bool)

(assert (=> b!7550553 (= e!4497725 (and tp!2196545 tp!2196548))))

(declare-fun b!7550552 () Bool)

(declare-fun tp!2196546 () Bool)

(assert (=> b!7550552 (= e!4497725 tp!2196546)))

(assert (=> b!7550009 (= tp!2196428 e!4497725)))

(declare-fun b!7550551 () Bool)

(declare-fun tp!2196549 () Bool)

(declare-fun tp!2196547 () Bool)

(assert (=> b!7550551 (= e!4497725 (and tp!2196549 tp!2196547))))

(declare-fun b!7550550 () Bool)

(assert (=> b!7550550 (= e!4497725 tp_is_empty!50245)))

(assert (= (and b!7550009 ((_ is ElementMatch!19945) (regTwo!40402 baseR!101))) b!7550550))

(assert (= (and b!7550009 ((_ is Concat!28790) (regTwo!40402 baseR!101))) b!7550551))

(assert (= (and b!7550009 ((_ is Star!19945) (regTwo!40402 baseR!101))) b!7550552))

(assert (= (and b!7550009 ((_ is Union!19945) (regTwo!40402 baseR!101))) b!7550553))

(declare-fun b!7550557 () Bool)

(declare-fun e!4497726 () Bool)

(declare-fun tp!2196550 () Bool)

(declare-fun tp!2196553 () Bool)

(assert (=> b!7550557 (= e!4497726 (and tp!2196550 tp!2196553))))

(declare-fun b!7550556 () Bool)

(declare-fun tp!2196551 () Bool)

(assert (=> b!7550556 (= e!4497726 tp!2196551)))

(assert (=> b!7549994 (= tp!2196418 e!4497726)))

(declare-fun b!7550555 () Bool)

(declare-fun tp!2196554 () Bool)

(declare-fun tp!2196552 () Bool)

(assert (=> b!7550555 (= e!4497726 (and tp!2196554 tp!2196552))))

(declare-fun b!7550554 () Bool)

(assert (=> b!7550554 (= e!4497726 tp_is_empty!50245)))

(assert (= (and b!7549994 ((_ is ElementMatch!19945) (regOne!40403 baseR!101))) b!7550554))

(assert (= (and b!7549994 ((_ is Concat!28790) (regOne!40403 baseR!101))) b!7550555))

(assert (= (and b!7549994 ((_ is Star!19945) (regOne!40403 baseR!101))) b!7550556))

(assert (= (and b!7549994 ((_ is Union!19945) (regOne!40403 baseR!101))) b!7550557))

(declare-fun b!7550561 () Bool)

(declare-fun e!4497727 () Bool)

(declare-fun tp!2196555 () Bool)

(declare-fun tp!2196558 () Bool)

(assert (=> b!7550561 (= e!4497727 (and tp!2196555 tp!2196558))))

(declare-fun b!7550560 () Bool)

(declare-fun tp!2196556 () Bool)

(assert (=> b!7550560 (= e!4497727 tp!2196556)))

(assert (=> b!7549994 (= tp!2196425 e!4497727)))

(declare-fun b!7550559 () Bool)

(declare-fun tp!2196559 () Bool)

(declare-fun tp!2196557 () Bool)

(assert (=> b!7550559 (= e!4497727 (and tp!2196559 tp!2196557))))

(declare-fun b!7550558 () Bool)

(assert (=> b!7550558 (= e!4497727 tp_is_empty!50245)))

(assert (= (and b!7549994 ((_ is ElementMatch!19945) (regTwo!40403 baseR!101))) b!7550558))

(assert (= (and b!7549994 ((_ is Concat!28790) (regTwo!40403 baseR!101))) b!7550559))

(assert (= (and b!7549994 ((_ is Star!19945) (regTwo!40403 baseR!101))) b!7550560))

(assert (= (and b!7549994 ((_ is Union!19945) (regTwo!40403 baseR!101))) b!7550561))

(check-sat (not b!7550551) (not b!7550559) (not d!2312844) (not b!7550185) (not b!7550209) (not d!2312736) (not d!2312800) (not b!7550045) (not d!2312748) (not d!2312794) (not bm!692282) (not b!7550532) (not b!7550548) (not d!2312858) (not b!7550478) (not b!7550066) (not d!2312840) (not b!7550191) (not b!7550541) (not b!7550543) (not b!7550500) (not b!7550545) (not b!7550539) (not b!7550190) (not b!7550556) (not b!7550088) (not b!7550408) (not b!7550499) (not b!7550502) (not b!7550189) (not b!7550056) (not b!7550490) (not bm!692334) (not bm!692330) (not b!7550525) (not d!2312834) (not b!7550052) (not d!2312792) (not b!7550561) (not d!2312780) (not d!2312724) (not b!7550406) (not b!7550536) (not b!7550475) (not d!2312856) (not b!7550407) (not d!2312822) (not b!7550054) (not b!7550555) (not b!7550351) (not b!7550260) (not b!7550087) (not b!7550491) (not d!2312740) (not d!2312712) (not b!7550529) (not bm!692333) (not b!7550089) (not b!7550486) (not b!7550410) (not b!7550359) (not bm!692331) (not b!7550263) (not d!2312758) (not b!7550360) (not b!7550113) (not b!7550552) (not b!7550114) (not b!7550557) (not b!7550531) (not b!7550192) (not b!7550503) (not d!2312752) (not b!7550549) (not b!7550111) (not b!7550530) (not b!7550404) (not b!7550537) (not b!7550544) (not d!2312828) (not bm!692323) (not bm!692306) (not b!7550301) (not b!7550495) (not b!7550540) (not b!7550341) (not b!7550115) (not b!7550521) (not b!7550547) (not b!7550535) (not b!7550560) (not b!7550266) tp_is_empty!50245 (not b!7550494) (not b!7550509) (not d!2312716) (not b!7550186) (not b!7550399) (not d!2312850) (not bm!692304) (not b!7550267) (not b!7550526) (not b!7550498) (not b!7550523) (not b!7550050) (not b!7550211) (not b!7550522) (not b!7550553) (not b!7550352) (not b!7550053) (not d!2312848) (not b!7550527) (not b!7550349) (not d!2312754) (not b!7550534) (not b!7550210) (not d!2312798) (not b!7550261))
(check-sat)
