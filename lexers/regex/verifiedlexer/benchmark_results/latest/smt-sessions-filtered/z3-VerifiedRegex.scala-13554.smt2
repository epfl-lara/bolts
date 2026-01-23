; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!729252 () Bool)

(assert start!729252)

(declare-fun b!7540209 () Bool)

(declare-fun res!3021775 () Bool)

(declare-fun e!4492628 () Bool)

(assert (=> b!7540209 (=> res!3021775 e!4492628)))

(declare-datatypes ((C!40132 0))(
  ( (C!40133 (val!30506 Int)) )
))
(declare-datatypes ((List!72786 0))(
  ( (Nil!72662) (Cons!72662 (h!79110 C!40132) (t!387493 List!72786)) )
))
(declare-fun input!7874 () List!72786)

(declare-fun lt!2643071 () List!72786)

(declare-fun testedP!423 () List!72786)

(declare-fun ++!17420 (List!72786 List!72786) List!72786)

(assert (=> b!7540209 (= res!3021775 (not (= (++!17420 testedP!423 lt!2643071) input!7874)))))

(declare-fun res!3021777 () Bool)

(declare-fun e!4492622 () Bool)

(assert (=> start!729252 (=> (not res!3021777) (not e!4492622))))

(declare-datatypes ((Regex!19903 0))(
  ( (ElementMatch!19903 (c!1392150 C!40132)) (Concat!28748 (regOne!40318 Regex!19903) (regTwo!40318 Regex!19903)) (EmptyExpr!19903) (Star!19903 (reg!20232 Regex!19903)) (EmptyLang!19903) (Union!19903 (regOne!40319 Regex!19903) (regTwo!40319 Regex!19903)) )
))
(declare-fun baseR!101 () Regex!19903)

(declare-fun validRegex!10331 (Regex!19903) Bool)

(assert (=> start!729252 (= res!3021777 (validRegex!10331 baseR!101))))

(assert (=> start!729252 e!4492622))

(declare-fun e!4492629 () Bool)

(assert (=> start!729252 e!4492629))

(declare-fun e!4492630 () Bool)

(assert (=> start!729252 e!4492630))

(declare-fun e!4492627 () Bool)

(assert (=> start!729252 e!4492627))

(declare-fun e!4492633 () Bool)

(assert (=> start!729252 e!4492633))

(declare-fun e!4492632 () Bool)

(assert (=> start!729252 e!4492632))

(declare-fun b!7540210 () Bool)

(declare-fun e!4492631 () Bool)

(declare-fun lt!2643060 () List!72786)

(assert (=> b!7540210 (= e!4492631 (not (= lt!2643060 Nil!72662)))))

(declare-fun b!7540211 () Bool)

(declare-fun res!3021772 () Bool)

(assert (=> b!7540211 (=> (not res!3021772) (not e!4492622))))

(declare-fun isPrefix!6109 (List!72786 List!72786) Bool)

(assert (=> b!7540211 (= res!3021772 (isPrefix!6109 testedP!423 input!7874))))

(declare-fun b!7540212 () Bool)

(declare-fun res!3021769 () Bool)

(assert (=> b!7540212 (=> (not res!3021769) (not e!4492622))))

(declare-fun r!24333 () Regex!19903)

(assert (=> b!7540212 (= res!3021769 (validRegex!10331 r!24333))))

(declare-fun b!7540213 () Bool)

(declare-fun tp_is_empty!50161 () Bool)

(assert (=> b!7540213 (= e!4492632 tp_is_empty!50161)))

(declare-fun b!7540214 () Bool)

(declare-fun e!4492626 () Bool)

(assert (=> b!7540214 (= e!4492626 e!4492631)))

(declare-fun res!3021765 () Bool)

(assert (=> b!7540214 (=> res!3021765 e!4492631)))

(declare-fun lt!2643058 () C!40132)

(declare-fun head!15493 (List!72786) C!40132)

(assert (=> b!7540214 (= res!3021765 (not (= (head!15493 lt!2643060) lt!2643058)))))

(declare-fun lt!2643056 () List!72786)

(assert (=> b!7540214 (= lt!2643056 lt!2643071)))

(declare-datatypes ((Unit!166744 0))(
  ( (Unit!166745) )
))
(declare-fun lt!2643057 () Unit!166744)

(declare-fun lemmaSamePrefixThenSameSuffix!2837 (List!72786 List!72786 List!72786 List!72786 List!72786) Unit!166744)

(assert (=> b!7540214 (= lt!2643057 (lemmaSamePrefixThenSameSuffix!2837 testedP!423 lt!2643056 testedP!423 lt!2643071 input!7874))))

(declare-fun b!7540215 () Bool)

(assert (=> b!7540215 (= e!4492629 tp_is_empty!50161)))

(declare-fun b!7540216 () Bool)

(declare-fun res!3021767 () Bool)

(declare-fun e!4492624 () Bool)

(assert (=> b!7540216 (=> (not res!3021767) (not e!4492624))))

(declare-fun knownP!30 () List!72786)

(declare-fun matchR!9505 (Regex!19903 List!72786) Bool)

(assert (=> b!7540216 (= res!3021767 (matchR!9505 baseR!101 knownP!30))))

(declare-fun b!7540217 () Bool)

(declare-fun res!3021773 () Bool)

(declare-fun e!4492625 () Bool)

(assert (=> b!7540217 (=> res!3021773 e!4492625)))

(declare-fun lt!2643065 () Int)

(declare-fun size!42399 (List!72786) Int)

(assert (=> b!7540217 (= res!3021773 (>= lt!2643065 (size!42399 input!7874)))))

(declare-fun b!7540218 () Bool)

(assert (=> b!7540218 (= e!4492622 e!4492624)))

(declare-fun res!3021776 () Bool)

(assert (=> b!7540218 (=> (not res!3021776) (not e!4492624))))

(declare-fun lt!2643066 () Int)

(assert (=> b!7540218 (= res!3021776 (>= lt!2643066 lt!2643065))))

(assert (=> b!7540218 (= lt!2643065 (size!42399 testedP!423))))

(assert (=> b!7540218 (= lt!2643066 (size!42399 knownP!30))))

(declare-fun b!7540219 () Bool)

(declare-fun tp!2193228 () Bool)

(assert (=> b!7540219 (= e!4492629 tp!2193228)))

(declare-fun b!7540220 () Bool)

(declare-fun tp!2193222 () Bool)

(assert (=> b!7540220 (= e!4492632 tp!2193222)))

(declare-fun b!7540221 () Bool)

(declare-fun tp!2193223 () Bool)

(declare-fun tp!2193224 () Bool)

(assert (=> b!7540221 (= e!4492632 (and tp!2193223 tp!2193224))))

(declare-fun b!7540222 () Bool)

(declare-fun tp!2193226 () Bool)

(declare-fun tp!2193230 () Bool)

(assert (=> b!7540222 (= e!4492632 (and tp!2193226 tp!2193230))))

(declare-fun b!7540223 () Bool)

(declare-fun e!4492623 () Bool)

(assert (=> b!7540223 (= e!4492625 e!4492623)))

(declare-fun res!3021778 () Bool)

(assert (=> b!7540223 (=> res!3021778 e!4492623)))

(declare-fun lt!2643061 () List!72786)

(assert (=> b!7540223 (= res!3021778 (not (= (++!17420 knownP!30 lt!2643061) input!7874)))))

(declare-fun getSuffix!3589 (List!72786 List!72786) List!72786)

(assert (=> b!7540223 (= lt!2643061 (getSuffix!3589 input!7874 knownP!30))))

(declare-fun lt!2643064 () List!72786)

(declare-fun lt!2643062 () List!72786)

(assert (=> b!7540223 (= lt!2643064 (getSuffix!3589 knownP!30 lt!2643062))))

(assert (=> b!7540223 (isPrefix!6109 lt!2643062 knownP!30)))

(declare-fun lt!2643059 () Unit!166744)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!859 (List!72786 List!72786 List!72786) Unit!166744)

(assert (=> b!7540223 (= lt!2643059 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!859 knownP!30 lt!2643062 input!7874))))

(declare-fun derivative!435 (Regex!19903 List!72786) Regex!19903)

(declare-fun derivativeStep!5693 (Regex!19903 C!40132) Regex!19903)

(assert (=> b!7540223 (= (derivative!435 baseR!101 lt!2643062) (derivativeStep!5693 r!24333 lt!2643058))))

(declare-fun lt!2643068 () Unit!166744)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!141 (Regex!19903 Regex!19903 List!72786 C!40132) Unit!166744)

(assert (=> b!7540223 (= lt!2643068 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!141 baseR!101 r!24333 testedP!423 lt!2643058))))

(assert (=> b!7540223 (isPrefix!6109 lt!2643062 input!7874)))

(declare-fun lt!2643069 () Unit!166744)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1174 (List!72786 List!72786) Unit!166744)

(assert (=> b!7540223 (= lt!2643069 (lemmaAddHeadSuffixToPrefixStillPrefix!1174 testedP!423 input!7874))))

(assert (=> b!7540223 (= lt!2643062 (++!17420 testedP!423 (Cons!72662 lt!2643058 Nil!72662)))))

(assert (=> b!7540223 (= lt!2643058 (head!15493 lt!2643071))))

(assert (=> b!7540223 (= lt!2643071 (getSuffix!3589 input!7874 testedP!423))))

(declare-fun b!7540224 () Bool)

(declare-fun tp!2193229 () Bool)

(assert (=> b!7540224 (= e!4492627 (and tp_is_empty!50161 tp!2193229))))

(declare-fun b!7540225 () Bool)

(declare-fun res!3021768 () Bool)

(assert (=> b!7540225 (=> res!3021768 e!4492625)))

(assert (=> b!7540225 (= res!3021768 (not (= (derivative!435 baseR!101 testedP!423) r!24333)))))

(declare-fun b!7540226 () Bool)

(declare-fun res!3021766 () Bool)

(assert (=> b!7540226 (=> res!3021766 e!4492625)))

(assert (=> b!7540226 (= res!3021766 (= lt!2643065 lt!2643066))))

(declare-fun b!7540227 () Bool)

(assert (=> b!7540227 (= e!4492624 (not e!4492625))))

(declare-fun res!3021780 () Bool)

(assert (=> b!7540227 (=> res!3021780 e!4492625)))

(assert (=> b!7540227 (= res!3021780 (not (matchR!9505 r!24333 lt!2643060)))))

(assert (=> b!7540227 (= lt!2643060 (getSuffix!3589 knownP!30 testedP!423))))

(assert (=> b!7540227 (isPrefix!6109 testedP!423 knownP!30)))

(declare-fun lt!2643072 () Unit!166744)

(assert (=> b!7540227 (= lt!2643072 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!859 knownP!30 testedP!423 input!7874))))

(declare-fun b!7540228 () Bool)

(declare-fun tp!2193221 () Bool)

(assert (=> b!7540228 (= e!4492633 (and tp_is_empty!50161 tp!2193221))))

(declare-fun b!7540229 () Bool)

(assert (=> b!7540229 (= e!4492628 e!4492626)))

(declare-fun res!3021771 () Bool)

(assert (=> b!7540229 (=> res!3021771 e!4492626)))

(declare-fun lt!2643063 () List!72786)

(assert (=> b!7540229 (= res!3021771 (not (= lt!2643063 input!7874)))))

(declare-fun lt!2643067 () List!72786)

(assert (=> b!7540229 (= lt!2643067 lt!2643063)))

(assert (=> b!7540229 (= lt!2643063 (++!17420 testedP!423 lt!2643056))))

(assert (=> b!7540229 (= lt!2643056 (++!17420 lt!2643060 lt!2643061))))

(declare-fun lt!2643070 () Unit!166744)

(declare-fun lemmaConcatAssociativity!3068 (List!72786 List!72786 List!72786) Unit!166744)

(assert (=> b!7540229 (= lt!2643070 (lemmaConcatAssociativity!3068 testedP!423 lt!2643060 lt!2643061))))

(declare-fun b!7540230 () Bool)

(declare-fun tp!2193231 () Bool)

(assert (=> b!7540230 (= e!4492630 (and tp_is_empty!50161 tp!2193231))))

(declare-fun b!7540231 () Bool)

(declare-fun tp!2193227 () Bool)

(declare-fun tp!2193220 () Bool)

(assert (=> b!7540231 (= e!4492629 (and tp!2193227 tp!2193220))))

(declare-fun b!7540232 () Bool)

(assert (=> b!7540232 (= e!4492623 e!4492628)))

(declare-fun res!3021774 () Bool)

(assert (=> b!7540232 (=> res!3021774 e!4492628)))

(assert (=> b!7540232 (= res!3021774 (not (= lt!2643067 input!7874)))))

(assert (=> b!7540232 (= lt!2643067 (++!17420 (++!17420 testedP!423 lt!2643060) lt!2643061))))

(declare-fun b!7540233 () Bool)

(declare-fun res!3021779 () Bool)

(assert (=> b!7540233 (=> res!3021779 e!4492625)))

(declare-fun lostCause!1695 (Regex!19903) Bool)

(assert (=> b!7540233 (= res!3021779 (lostCause!1695 r!24333))))

(declare-fun b!7540234 () Bool)

(declare-fun tp!2193225 () Bool)

(declare-fun tp!2193219 () Bool)

(assert (=> b!7540234 (= e!4492629 (and tp!2193225 tp!2193219))))

(declare-fun b!7540235 () Bool)

(declare-fun res!3021770 () Bool)

(assert (=> b!7540235 (=> (not res!3021770) (not e!4492622))))

(assert (=> b!7540235 (= res!3021770 (isPrefix!6109 knownP!30 input!7874))))

(assert (= (and start!729252 res!3021777) b!7540212))

(assert (= (and b!7540212 res!3021769) b!7540211))

(assert (= (and b!7540211 res!3021772) b!7540235))

(assert (= (and b!7540235 res!3021770) b!7540218))

(assert (= (and b!7540218 res!3021776) b!7540216))

(assert (= (and b!7540216 res!3021767) b!7540227))

(assert (= (and b!7540227 (not res!3021780)) b!7540225))

(assert (= (and b!7540225 (not res!3021768)) b!7540233))

(assert (= (and b!7540233 (not res!3021779)) b!7540226))

(assert (= (and b!7540226 (not res!3021766)) b!7540217))

(assert (= (and b!7540217 (not res!3021773)) b!7540223))

(assert (= (and b!7540223 (not res!3021778)) b!7540232))

(assert (= (and b!7540232 (not res!3021774)) b!7540209))

(assert (= (and b!7540209 (not res!3021775)) b!7540229))

(assert (= (and b!7540229 (not res!3021771)) b!7540214))

(assert (= (and b!7540214 (not res!3021765)) b!7540210))

(get-info :version)

(assert (= (and start!729252 ((_ is ElementMatch!19903) baseR!101)) b!7540215))

(assert (= (and start!729252 ((_ is Concat!28748) baseR!101)) b!7540231))

(assert (= (and start!729252 ((_ is Star!19903) baseR!101)) b!7540219))

(assert (= (and start!729252 ((_ is Union!19903) baseR!101)) b!7540234))

(assert (= (and start!729252 ((_ is Cons!72662) input!7874)) b!7540230))

(assert (= (and start!729252 ((_ is Cons!72662) knownP!30)) b!7540224))

(assert (= (and start!729252 ((_ is Cons!72662) testedP!423)) b!7540228))

(assert (= (and start!729252 ((_ is ElementMatch!19903) r!24333)) b!7540213))

(assert (= (and start!729252 ((_ is Concat!28748) r!24333)) b!7540222))

(assert (= (and start!729252 ((_ is Star!19903) r!24333)) b!7540220))

(assert (= (and start!729252 ((_ is Union!19903) r!24333)) b!7540221))

(declare-fun m!8109700 () Bool)

(assert (=> b!7540223 m!8109700))

(declare-fun m!8109702 () Bool)

(assert (=> b!7540223 m!8109702))

(declare-fun m!8109704 () Bool)

(assert (=> b!7540223 m!8109704))

(declare-fun m!8109706 () Bool)

(assert (=> b!7540223 m!8109706))

(declare-fun m!8109708 () Bool)

(assert (=> b!7540223 m!8109708))

(declare-fun m!8109710 () Bool)

(assert (=> b!7540223 m!8109710))

(declare-fun m!8109712 () Bool)

(assert (=> b!7540223 m!8109712))

(declare-fun m!8109714 () Bool)

(assert (=> b!7540223 m!8109714))

(declare-fun m!8109716 () Bool)

(assert (=> b!7540223 m!8109716))

(declare-fun m!8109718 () Bool)

(assert (=> b!7540223 m!8109718))

(declare-fun m!8109720 () Bool)

(assert (=> b!7540223 m!8109720))

(declare-fun m!8109722 () Bool)

(assert (=> b!7540223 m!8109722))

(declare-fun m!8109724 () Bool)

(assert (=> b!7540223 m!8109724))

(declare-fun m!8109726 () Bool)

(assert (=> b!7540214 m!8109726))

(declare-fun m!8109728 () Bool)

(assert (=> b!7540214 m!8109728))

(declare-fun m!8109730 () Bool)

(assert (=> b!7540235 m!8109730))

(declare-fun m!8109732 () Bool)

(assert (=> b!7540227 m!8109732))

(declare-fun m!8109734 () Bool)

(assert (=> b!7540227 m!8109734))

(declare-fun m!8109736 () Bool)

(assert (=> b!7540227 m!8109736))

(declare-fun m!8109738 () Bool)

(assert (=> b!7540227 m!8109738))

(declare-fun m!8109740 () Bool)

(assert (=> b!7540209 m!8109740))

(declare-fun m!8109742 () Bool)

(assert (=> start!729252 m!8109742))

(declare-fun m!8109744 () Bool)

(assert (=> b!7540212 m!8109744))

(declare-fun m!8109746 () Bool)

(assert (=> b!7540216 m!8109746))

(declare-fun m!8109748 () Bool)

(assert (=> b!7540218 m!8109748))

(declare-fun m!8109750 () Bool)

(assert (=> b!7540218 m!8109750))

(declare-fun m!8109752 () Bool)

(assert (=> b!7540211 m!8109752))

(declare-fun m!8109754 () Bool)

(assert (=> b!7540232 m!8109754))

(assert (=> b!7540232 m!8109754))

(declare-fun m!8109756 () Bool)

(assert (=> b!7540232 m!8109756))

(declare-fun m!8109758 () Bool)

(assert (=> b!7540217 m!8109758))

(declare-fun m!8109760 () Bool)

(assert (=> b!7540229 m!8109760))

(declare-fun m!8109762 () Bool)

(assert (=> b!7540229 m!8109762))

(declare-fun m!8109764 () Bool)

(assert (=> b!7540229 m!8109764))

(declare-fun m!8109766 () Bool)

(assert (=> b!7540225 m!8109766))

(declare-fun m!8109768 () Bool)

(assert (=> b!7540233 m!8109768))

(check-sat (not b!7540229) (not b!7540233) (not b!7540227) (not b!7540211) (not b!7540218) (not b!7540230) (not b!7540223) (not b!7540209) (not b!7540220) (not b!7540217) (not b!7540235) (not b!7540234) (not b!7540216) (not b!7540214) (not b!7540232) (not b!7540212) (not b!7540225) (not b!7540224) (not b!7540222) tp_is_empty!50161 (not b!7540228) (not b!7540221) (not b!7540219) (not b!7540231) (not start!729252))
(check-sat)
(get-model)

(declare-fun d!2311143 () Bool)

(declare-fun lt!2643075 () Int)

(assert (=> d!2311143 (>= lt!2643075 0)))

(declare-fun e!4492636 () Int)

(assert (=> d!2311143 (= lt!2643075 e!4492636)))

(declare-fun c!1392153 () Bool)

(assert (=> d!2311143 (= c!1392153 ((_ is Nil!72662) testedP!423))))

(assert (=> d!2311143 (= (size!42399 testedP!423) lt!2643075)))

(declare-fun b!7540240 () Bool)

(assert (=> b!7540240 (= e!4492636 0)))

(declare-fun b!7540241 () Bool)

(assert (=> b!7540241 (= e!4492636 (+ 1 (size!42399 (t!387493 testedP!423))))))

(assert (= (and d!2311143 c!1392153) b!7540240))

(assert (= (and d!2311143 (not c!1392153)) b!7540241))

(declare-fun m!8109770 () Bool)

(assert (=> b!7540241 m!8109770))

(assert (=> b!7540218 d!2311143))

(declare-fun d!2311145 () Bool)

(declare-fun lt!2643076 () Int)

(assert (=> d!2311145 (>= lt!2643076 0)))

(declare-fun e!4492637 () Int)

(assert (=> d!2311145 (= lt!2643076 e!4492637)))

(declare-fun c!1392154 () Bool)

(assert (=> d!2311145 (= c!1392154 ((_ is Nil!72662) knownP!30))))

(assert (=> d!2311145 (= (size!42399 knownP!30) lt!2643076)))

(declare-fun b!7540242 () Bool)

(assert (=> b!7540242 (= e!4492637 0)))

(declare-fun b!7540243 () Bool)

(assert (=> b!7540243 (= e!4492637 (+ 1 (size!42399 (t!387493 knownP!30))))))

(assert (= (and d!2311145 c!1392154) b!7540242))

(assert (= (and d!2311145 (not c!1392154)) b!7540243))

(declare-fun m!8109772 () Bool)

(assert (=> b!7540243 m!8109772))

(assert (=> b!7540218 d!2311145))

(declare-fun lt!2643079 () List!72786)

(declare-fun b!7540255 () Bool)

(declare-fun e!4492643 () Bool)

(assert (=> b!7540255 (= e!4492643 (or (not (= lt!2643056 Nil!72662)) (= lt!2643079 testedP!423)))))

(declare-fun b!7540254 () Bool)

(declare-fun res!3021785 () Bool)

(assert (=> b!7540254 (=> (not res!3021785) (not e!4492643))))

(assert (=> b!7540254 (= res!3021785 (= (size!42399 lt!2643079) (+ (size!42399 testedP!423) (size!42399 lt!2643056))))))

(declare-fun d!2311147 () Bool)

(assert (=> d!2311147 e!4492643))

(declare-fun res!3021786 () Bool)

(assert (=> d!2311147 (=> (not res!3021786) (not e!4492643))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15365 (List!72786) (InoxSet C!40132))

(assert (=> d!2311147 (= res!3021786 (= (content!15365 lt!2643079) ((_ map or) (content!15365 testedP!423) (content!15365 lt!2643056))))))

(declare-fun e!4492642 () List!72786)

(assert (=> d!2311147 (= lt!2643079 e!4492642)))

(declare-fun c!1392157 () Bool)

(assert (=> d!2311147 (= c!1392157 ((_ is Nil!72662) testedP!423))))

(assert (=> d!2311147 (= (++!17420 testedP!423 lt!2643056) lt!2643079)))

(declare-fun b!7540252 () Bool)

(assert (=> b!7540252 (= e!4492642 lt!2643056)))

(declare-fun b!7540253 () Bool)

(assert (=> b!7540253 (= e!4492642 (Cons!72662 (h!79110 testedP!423) (++!17420 (t!387493 testedP!423) lt!2643056)))))

(assert (= (and d!2311147 c!1392157) b!7540252))

(assert (= (and d!2311147 (not c!1392157)) b!7540253))

(assert (= (and d!2311147 res!3021786) b!7540254))

(assert (= (and b!7540254 res!3021785) b!7540255))

(declare-fun m!8109774 () Bool)

(assert (=> b!7540254 m!8109774))

(assert (=> b!7540254 m!8109748))

(declare-fun m!8109776 () Bool)

(assert (=> b!7540254 m!8109776))

(declare-fun m!8109778 () Bool)

(assert (=> d!2311147 m!8109778))

(declare-fun m!8109780 () Bool)

(assert (=> d!2311147 m!8109780))

(declare-fun m!8109782 () Bool)

(assert (=> d!2311147 m!8109782))

(declare-fun m!8109784 () Bool)

(assert (=> b!7540253 m!8109784))

(assert (=> b!7540229 d!2311147))

(declare-fun e!4492645 () Bool)

(declare-fun lt!2643080 () List!72786)

(declare-fun b!7540259 () Bool)

(assert (=> b!7540259 (= e!4492645 (or (not (= lt!2643061 Nil!72662)) (= lt!2643080 lt!2643060)))))

(declare-fun b!7540258 () Bool)

(declare-fun res!3021787 () Bool)

(assert (=> b!7540258 (=> (not res!3021787) (not e!4492645))))

(assert (=> b!7540258 (= res!3021787 (= (size!42399 lt!2643080) (+ (size!42399 lt!2643060) (size!42399 lt!2643061))))))

(declare-fun d!2311149 () Bool)

(assert (=> d!2311149 e!4492645))

(declare-fun res!3021788 () Bool)

(assert (=> d!2311149 (=> (not res!3021788) (not e!4492645))))

(assert (=> d!2311149 (= res!3021788 (= (content!15365 lt!2643080) ((_ map or) (content!15365 lt!2643060) (content!15365 lt!2643061))))))

(declare-fun e!4492644 () List!72786)

(assert (=> d!2311149 (= lt!2643080 e!4492644)))

(declare-fun c!1392158 () Bool)

(assert (=> d!2311149 (= c!1392158 ((_ is Nil!72662) lt!2643060))))

(assert (=> d!2311149 (= (++!17420 lt!2643060 lt!2643061) lt!2643080)))

(declare-fun b!7540256 () Bool)

(assert (=> b!7540256 (= e!4492644 lt!2643061)))

(declare-fun b!7540257 () Bool)

(assert (=> b!7540257 (= e!4492644 (Cons!72662 (h!79110 lt!2643060) (++!17420 (t!387493 lt!2643060) lt!2643061)))))

(assert (= (and d!2311149 c!1392158) b!7540256))

(assert (= (and d!2311149 (not c!1392158)) b!7540257))

(assert (= (and d!2311149 res!3021788) b!7540258))

(assert (= (and b!7540258 res!3021787) b!7540259))

(declare-fun m!8109786 () Bool)

(assert (=> b!7540258 m!8109786))

(declare-fun m!8109788 () Bool)

(assert (=> b!7540258 m!8109788))

(declare-fun m!8109790 () Bool)

(assert (=> b!7540258 m!8109790))

(declare-fun m!8109792 () Bool)

(assert (=> d!2311149 m!8109792))

(declare-fun m!8109794 () Bool)

(assert (=> d!2311149 m!8109794))

(declare-fun m!8109796 () Bool)

(assert (=> d!2311149 m!8109796))

(declare-fun m!8109798 () Bool)

(assert (=> b!7540257 m!8109798))

(assert (=> b!7540229 d!2311149))

(declare-fun d!2311151 () Bool)

(assert (=> d!2311151 (= (++!17420 (++!17420 testedP!423 lt!2643060) lt!2643061) (++!17420 testedP!423 (++!17420 lt!2643060 lt!2643061)))))

(declare-fun lt!2643083 () Unit!166744)

(declare-fun choose!58335 (List!72786 List!72786 List!72786) Unit!166744)

(assert (=> d!2311151 (= lt!2643083 (choose!58335 testedP!423 lt!2643060 lt!2643061))))

(assert (=> d!2311151 (= (lemmaConcatAssociativity!3068 testedP!423 lt!2643060 lt!2643061) lt!2643083)))

(declare-fun bs!1939985 () Bool)

(assert (= bs!1939985 d!2311151))

(assert (=> bs!1939985 m!8109754))

(assert (=> bs!1939985 m!8109756))

(declare-fun m!8109800 () Bool)

(assert (=> bs!1939985 m!8109800))

(assert (=> bs!1939985 m!8109754))

(assert (=> bs!1939985 m!8109762))

(declare-fun m!8109802 () Bool)

(assert (=> bs!1939985 m!8109802))

(assert (=> bs!1939985 m!8109762))

(assert (=> b!7540229 d!2311151))

(declare-fun b!7540288 () Bool)

(declare-fun e!4492660 () Bool)

(declare-fun lt!2643089 () Bool)

(assert (=> b!7540288 (= e!4492660 (not lt!2643089))))

(declare-fun b!7540289 () Bool)

(declare-fun res!3021812 () Bool)

(declare-fun e!4492664 () Bool)

(assert (=> b!7540289 (=> res!3021812 e!4492664)))

(declare-fun isEmpty!41372 (List!72786) Bool)

(declare-fun tail!15038 (List!72786) List!72786)

(assert (=> b!7540289 (= res!3021812 (not (isEmpty!41372 (tail!15038 lt!2643060))))))

(declare-fun b!7540290 () Bool)

(declare-fun e!4492661 () Bool)

(declare-fun call!691659 () Bool)

(assert (=> b!7540290 (= e!4492661 (= lt!2643089 call!691659))))

(declare-fun bm!691654 () Bool)

(assert (=> bm!691654 (= call!691659 (isEmpty!41372 lt!2643060))))

(declare-fun d!2311153 () Bool)

(assert (=> d!2311153 e!4492661))

(declare-fun c!1392167 () Bool)

(assert (=> d!2311153 (= c!1392167 ((_ is EmptyExpr!19903) r!24333))))

(declare-fun e!4492663 () Bool)

(assert (=> d!2311153 (= lt!2643089 e!4492663)))

(declare-fun c!1392165 () Bool)

(assert (=> d!2311153 (= c!1392165 (isEmpty!41372 lt!2643060))))

(assert (=> d!2311153 (validRegex!10331 r!24333)))

(assert (=> d!2311153 (= (matchR!9505 r!24333 lt!2643060) lt!2643089)))

(declare-fun b!7540291 () Bool)

(assert (=> b!7540291 (= e!4492663 (matchR!9505 (derivativeStep!5693 r!24333 (head!15493 lt!2643060)) (tail!15038 lt!2643060)))))

(declare-fun b!7540292 () Bool)

(declare-fun res!3021810 () Bool)

(declare-fun e!4492662 () Bool)

(assert (=> b!7540292 (=> res!3021810 e!4492662)))

(assert (=> b!7540292 (= res!3021810 (not ((_ is ElementMatch!19903) r!24333)))))

(assert (=> b!7540292 (= e!4492660 e!4492662)))

(declare-fun b!7540293 () Bool)

(declare-fun res!3021808 () Bool)

(assert (=> b!7540293 (=> res!3021808 e!4492662)))

(declare-fun e!4492665 () Bool)

(assert (=> b!7540293 (= res!3021808 e!4492665)))

(declare-fun res!3021806 () Bool)

(assert (=> b!7540293 (=> (not res!3021806) (not e!4492665))))

(assert (=> b!7540293 (= res!3021806 lt!2643089)))

(declare-fun b!7540294 () Bool)

(declare-fun e!4492666 () Bool)

(assert (=> b!7540294 (= e!4492666 e!4492664)))

(declare-fun res!3021807 () Bool)

(assert (=> b!7540294 (=> res!3021807 e!4492664)))

(assert (=> b!7540294 (= res!3021807 call!691659)))

(declare-fun b!7540295 () Bool)

(declare-fun nullable!8676 (Regex!19903) Bool)

(assert (=> b!7540295 (= e!4492663 (nullable!8676 r!24333))))

(declare-fun b!7540296 () Bool)

(declare-fun res!3021809 () Bool)

(assert (=> b!7540296 (=> (not res!3021809) (not e!4492665))))

(assert (=> b!7540296 (= res!3021809 (not call!691659))))

(declare-fun b!7540297 () Bool)

(assert (=> b!7540297 (= e!4492662 e!4492666)))

(declare-fun res!3021805 () Bool)

(assert (=> b!7540297 (=> (not res!3021805) (not e!4492666))))

(assert (=> b!7540297 (= res!3021805 (not lt!2643089))))

(declare-fun b!7540298 () Bool)

(assert (=> b!7540298 (= e!4492661 e!4492660)))

(declare-fun c!1392166 () Bool)

(assert (=> b!7540298 (= c!1392166 ((_ is EmptyLang!19903) r!24333))))

(declare-fun b!7540299 () Bool)

(assert (=> b!7540299 (= e!4492664 (not (= (head!15493 lt!2643060) (c!1392150 r!24333))))))

(declare-fun b!7540300 () Bool)

(assert (=> b!7540300 (= e!4492665 (= (head!15493 lt!2643060) (c!1392150 r!24333)))))

(declare-fun b!7540301 () Bool)

(declare-fun res!3021811 () Bool)

(assert (=> b!7540301 (=> (not res!3021811) (not e!4492665))))

(assert (=> b!7540301 (= res!3021811 (isEmpty!41372 (tail!15038 lt!2643060)))))

(assert (= (and d!2311153 c!1392165) b!7540295))

(assert (= (and d!2311153 (not c!1392165)) b!7540291))

(assert (= (and d!2311153 c!1392167) b!7540290))

(assert (= (and d!2311153 (not c!1392167)) b!7540298))

(assert (= (and b!7540298 c!1392166) b!7540288))

(assert (= (and b!7540298 (not c!1392166)) b!7540292))

(assert (= (and b!7540292 (not res!3021810)) b!7540293))

(assert (= (and b!7540293 res!3021806) b!7540296))

(assert (= (and b!7540296 res!3021809) b!7540301))

(assert (= (and b!7540301 res!3021811) b!7540300))

(assert (= (and b!7540293 (not res!3021808)) b!7540297))

(assert (= (and b!7540297 res!3021805) b!7540294))

(assert (= (and b!7540294 (not res!3021807)) b!7540289))

(assert (= (and b!7540289 (not res!3021812)) b!7540299))

(assert (= (or b!7540290 b!7540294 b!7540296) bm!691654))

(assert (=> b!7540299 m!8109726))

(declare-fun m!8109806 () Bool)

(assert (=> b!7540295 m!8109806))

(assert (=> b!7540291 m!8109726))

(assert (=> b!7540291 m!8109726))

(declare-fun m!8109808 () Bool)

(assert (=> b!7540291 m!8109808))

(declare-fun m!8109810 () Bool)

(assert (=> b!7540291 m!8109810))

(assert (=> b!7540291 m!8109808))

(assert (=> b!7540291 m!8109810))

(declare-fun m!8109812 () Bool)

(assert (=> b!7540291 m!8109812))

(assert (=> b!7540300 m!8109726))

(assert (=> b!7540289 m!8109810))

(assert (=> b!7540289 m!8109810))

(declare-fun m!8109814 () Bool)

(assert (=> b!7540289 m!8109814))

(declare-fun m!8109816 () Bool)

(assert (=> d!2311153 m!8109816))

(assert (=> d!2311153 m!8109744))

(assert (=> bm!691654 m!8109816))

(assert (=> b!7540301 m!8109810))

(assert (=> b!7540301 m!8109810))

(assert (=> b!7540301 m!8109814))

(assert (=> b!7540227 d!2311153))

(declare-fun d!2311161 () Bool)

(declare-fun lt!2643092 () List!72786)

(assert (=> d!2311161 (= (++!17420 testedP!423 lt!2643092) knownP!30)))

(declare-fun e!4492669 () List!72786)

(assert (=> d!2311161 (= lt!2643092 e!4492669)))

(declare-fun c!1392170 () Bool)

(assert (=> d!2311161 (= c!1392170 ((_ is Cons!72662) testedP!423))))

(assert (=> d!2311161 (>= (size!42399 knownP!30) (size!42399 testedP!423))))

(assert (=> d!2311161 (= (getSuffix!3589 knownP!30 testedP!423) lt!2643092)))

(declare-fun b!7540306 () Bool)

(assert (=> b!7540306 (= e!4492669 (getSuffix!3589 (tail!15038 knownP!30) (t!387493 testedP!423)))))

(declare-fun b!7540307 () Bool)

(assert (=> b!7540307 (= e!4492669 knownP!30)))

(assert (= (and d!2311161 c!1392170) b!7540306))

(assert (= (and d!2311161 (not c!1392170)) b!7540307))

(declare-fun m!8109820 () Bool)

(assert (=> d!2311161 m!8109820))

(assert (=> d!2311161 m!8109750))

(assert (=> d!2311161 m!8109748))

(declare-fun m!8109822 () Bool)

(assert (=> b!7540306 m!8109822))

(assert (=> b!7540306 m!8109822))

(declare-fun m!8109824 () Bool)

(assert (=> b!7540306 m!8109824))

(assert (=> b!7540227 d!2311161))

(declare-fun d!2311165 () Bool)

(declare-fun e!4492682 () Bool)

(assert (=> d!2311165 e!4492682))

(declare-fun res!3021829 () Bool)

(assert (=> d!2311165 (=> res!3021829 e!4492682)))

(declare-fun lt!2643097 () Bool)

(assert (=> d!2311165 (= res!3021829 (not lt!2643097))))

(declare-fun e!4492683 () Bool)

(assert (=> d!2311165 (= lt!2643097 e!4492683)))

(declare-fun res!3021831 () Bool)

(assert (=> d!2311165 (=> res!3021831 e!4492683)))

(assert (=> d!2311165 (= res!3021831 ((_ is Nil!72662) testedP!423))))

(assert (=> d!2311165 (= (isPrefix!6109 testedP!423 knownP!30) lt!2643097)))

(declare-fun b!7540324 () Bool)

(declare-fun e!4492684 () Bool)

(assert (=> b!7540324 (= e!4492683 e!4492684)))

(declare-fun res!3021830 () Bool)

(assert (=> b!7540324 (=> (not res!3021830) (not e!4492684))))

(assert (=> b!7540324 (= res!3021830 (not ((_ is Nil!72662) knownP!30)))))

(declare-fun b!7540326 () Bool)

(assert (=> b!7540326 (= e!4492684 (isPrefix!6109 (tail!15038 testedP!423) (tail!15038 knownP!30)))))

(declare-fun b!7540327 () Bool)

(assert (=> b!7540327 (= e!4492682 (>= (size!42399 knownP!30) (size!42399 testedP!423)))))

(declare-fun b!7540325 () Bool)

(declare-fun res!3021832 () Bool)

(assert (=> b!7540325 (=> (not res!3021832) (not e!4492684))))

(assert (=> b!7540325 (= res!3021832 (= (head!15493 testedP!423) (head!15493 knownP!30)))))

(assert (= (and d!2311165 (not res!3021831)) b!7540324))

(assert (= (and b!7540324 res!3021830) b!7540325))

(assert (= (and b!7540325 res!3021832) b!7540326))

(assert (= (and d!2311165 (not res!3021829)) b!7540327))

(declare-fun m!8109826 () Bool)

(assert (=> b!7540326 m!8109826))

(assert (=> b!7540326 m!8109822))

(assert (=> b!7540326 m!8109826))

(assert (=> b!7540326 m!8109822))

(declare-fun m!8109828 () Bool)

(assert (=> b!7540326 m!8109828))

(assert (=> b!7540327 m!8109750))

(assert (=> b!7540327 m!8109748))

(declare-fun m!8109830 () Bool)

(assert (=> b!7540325 m!8109830))

(declare-fun m!8109832 () Bool)

(assert (=> b!7540325 m!8109832))

(assert (=> b!7540227 d!2311165))

(declare-fun d!2311167 () Bool)

(assert (=> d!2311167 (isPrefix!6109 testedP!423 knownP!30)))

(declare-fun lt!2643101 () Unit!166744)

(declare-fun choose!58336 (List!72786 List!72786 List!72786) Unit!166744)

(assert (=> d!2311167 (= lt!2643101 (choose!58336 knownP!30 testedP!423 input!7874))))

(assert (=> d!2311167 (isPrefix!6109 knownP!30 input!7874)))

(assert (=> d!2311167 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!859 knownP!30 testedP!423 input!7874) lt!2643101)))

(declare-fun bs!1939988 () Bool)

(assert (= bs!1939988 d!2311167))

(assert (=> bs!1939988 m!8109736))

(declare-fun m!8109844 () Bool)

(assert (=> bs!1939988 m!8109844))

(assert (=> bs!1939988 m!8109730))

(assert (=> b!7540227 d!2311167))

(declare-fun d!2311171 () Bool)

(declare-fun lt!2643102 () Int)

(assert (=> d!2311171 (>= lt!2643102 0)))

(declare-fun e!4492688 () Int)

(assert (=> d!2311171 (= lt!2643102 e!4492688)))

(declare-fun c!1392171 () Bool)

(assert (=> d!2311171 (= c!1392171 ((_ is Nil!72662) input!7874))))

(assert (=> d!2311171 (= (size!42399 input!7874) lt!2643102)))

(declare-fun b!7540332 () Bool)

(assert (=> b!7540332 (= e!4492688 0)))

(declare-fun b!7540333 () Bool)

(assert (=> b!7540333 (= e!4492688 (+ 1 (size!42399 (t!387493 input!7874))))))

(assert (= (and d!2311171 c!1392171) b!7540332))

(assert (= (and d!2311171 (not c!1392171)) b!7540333))

(declare-fun m!8109846 () Bool)

(assert (=> b!7540333 m!8109846))

(assert (=> b!7540217 d!2311171))

(declare-fun e!4492690 () Bool)

(declare-fun lt!2643103 () List!72786)

(declare-fun b!7540337 () Bool)

(assert (=> b!7540337 (= e!4492690 (or (not (= lt!2643061 Nil!72662)) (= lt!2643103 (++!17420 testedP!423 lt!2643060))))))

(declare-fun b!7540336 () Bool)

(declare-fun res!3021837 () Bool)

(assert (=> b!7540336 (=> (not res!3021837) (not e!4492690))))

(assert (=> b!7540336 (= res!3021837 (= (size!42399 lt!2643103) (+ (size!42399 (++!17420 testedP!423 lt!2643060)) (size!42399 lt!2643061))))))

(declare-fun d!2311173 () Bool)

(assert (=> d!2311173 e!4492690))

(declare-fun res!3021838 () Bool)

(assert (=> d!2311173 (=> (not res!3021838) (not e!4492690))))

(assert (=> d!2311173 (= res!3021838 (= (content!15365 lt!2643103) ((_ map or) (content!15365 (++!17420 testedP!423 lt!2643060)) (content!15365 lt!2643061))))))

(declare-fun e!4492689 () List!72786)

(assert (=> d!2311173 (= lt!2643103 e!4492689)))

(declare-fun c!1392172 () Bool)

(assert (=> d!2311173 (= c!1392172 ((_ is Nil!72662) (++!17420 testedP!423 lt!2643060)))))

(assert (=> d!2311173 (= (++!17420 (++!17420 testedP!423 lt!2643060) lt!2643061) lt!2643103)))

(declare-fun b!7540334 () Bool)

(assert (=> b!7540334 (= e!4492689 lt!2643061)))

(declare-fun b!7540335 () Bool)

(assert (=> b!7540335 (= e!4492689 (Cons!72662 (h!79110 (++!17420 testedP!423 lt!2643060)) (++!17420 (t!387493 (++!17420 testedP!423 lt!2643060)) lt!2643061)))))

(assert (= (and d!2311173 c!1392172) b!7540334))

(assert (= (and d!2311173 (not c!1392172)) b!7540335))

(assert (= (and d!2311173 res!3021838) b!7540336))

(assert (= (and b!7540336 res!3021837) b!7540337))

(declare-fun m!8109848 () Bool)

(assert (=> b!7540336 m!8109848))

(assert (=> b!7540336 m!8109754))

(declare-fun m!8109850 () Bool)

(assert (=> b!7540336 m!8109850))

(assert (=> b!7540336 m!8109790))

(declare-fun m!8109852 () Bool)

(assert (=> d!2311173 m!8109852))

(assert (=> d!2311173 m!8109754))

(declare-fun m!8109854 () Bool)

(assert (=> d!2311173 m!8109854))

(assert (=> d!2311173 m!8109796))

(declare-fun m!8109856 () Bool)

(assert (=> b!7540335 m!8109856))

(assert (=> b!7540232 d!2311173))

(declare-fun b!7540341 () Bool)

(declare-fun lt!2643104 () List!72786)

(declare-fun e!4492692 () Bool)

(assert (=> b!7540341 (= e!4492692 (or (not (= lt!2643060 Nil!72662)) (= lt!2643104 testedP!423)))))

(declare-fun b!7540340 () Bool)

(declare-fun res!3021839 () Bool)

(assert (=> b!7540340 (=> (not res!3021839) (not e!4492692))))

(assert (=> b!7540340 (= res!3021839 (= (size!42399 lt!2643104) (+ (size!42399 testedP!423) (size!42399 lt!2643060))))))

(declare-fun d!2311175 () Bool)

(assert (=> d!2311175 e!4492692))

(declare-fun res!3021840 () Bool)

(assert (=> d!2311175 (=> (not res!3021840) (not e!4492692))))

(assert (=> d!2311175 (= res!3021840 (= (content!15365 lt!2643104) ((_ map or) (content!15365 testedP!423) (content!15365 lt!2643060))))))

(declare-fun e!4492691 () List!72786)

(assert (=> d!2311175 (= lt!2643104 e!4492691)))

(declare-fun c!1392173 () Bool)

(assert (=> d!2311175 (= c!1392173 ((_ is Nil!72662) testedP!423))))

(assert (=> d!2311175 (= (++!17420 testedP!423 lt!2643060) lt!2643104)))

(declare-fun b!7540338 () Bool)

(assert (=> b!7540338 (= e!4492691 lt!2643060)))

(declare-fun b!7540339 () Bool)

(assert (=> b!7540339 (= e!4492691 (Cons!72662 (h!79110 testedP!423) (++!17420 (t!387493 testedP!423) lt!2643060)))))

(assert (= (and d!2311175 c!1392173) b!7540338))

(assert (= (and d!2311175 (not c!1392173)) b!7540339))

(assert (= (and d!2311175 res!3021840) b!7540340))

(assert (= (and b!7540340 res!3021839) b!7540341))

(declare-fun m!8109858 () Bool)

(assert (=> b!7540340 m!8109858))

(assert (=> b!7540340 m!8109748))

(assert (=> b!7540340 m!8109788))

(declare-fun m!8109860 () Bool)

(assert (=> d!2311175 m!8109860))

(assert (=> d!2311175 m!8109780))

(assert (=> d!2311175 m!8109794))

(declare-fun m!8109862 () Bool)

(assert (=> b!7540339 m!8109862))

(assert (=> b!7540232 d!2311175))

(declare-fun lt!2643107 () List!72786)

(declare-fun b!7540349 () Bool)

(declare-fun e!4492696 () Bool)

(assert (=> b!7540349 (= e!4492696 (or (not (= lt!2643071 Nil!72662)) (= lt!2643107 testedP!423)))))

(declare-fun b!7540348 () Bool)

(declare-fun res!3021841 () Bool)

(assert (=> b!7540348 (=> (not res!3021841) (not e!4492696))))

(assert (=> b!7540348 (= res!3021841 (= (size!42399 lt!2643107) (+ (size!42399 testedP!423) (size!42399 lt!2643071))))))

(declare-fun d!2311177 () Bool)

(assert (=> d!2311177 e!4492696))

(declare-fun res!3021842 () Bool)

(assert (=> d!2311177 (=> (not res!3021842) (not e!4492696))))

(assert (=> d!2311177 (= res!3021842 (= (content!15365 lt!2643107) ((_ map or) (content!15365 testedP!423) (content!15365 lt!2643071))))))

(declare-fun e!4492695 () List!72786)

(assert (=> d!2311177 (= lt!2643107 e!4492695)))

(declare-fun c!1392176 () Bool)

(assert (=> d!2311177 (= c!1392176 ((_ is Nil!72662) testedP!423))))

(assert (=> d!2311177 (= (++!17420 testedP!423 lt!2643071) lt!2643107)))

(declare-fun b!7540346 () Bool)

(assert (=> b!7540346 (= e!4492695 lt!2643071)))

(declare-fun b!7540347 () Bool)

(assert (=> b!7540347 (= e!4492695 (Cons!72662 (h!79110 testedP!423) (++!17420 (t!387493 testedP!423) lt!2643071)))))

(assert (= (and d!2311177 c!1392176) b!7540346))

(assert (= (and d!2311177 (not c!1392176)) b!7540347))

(assert (= (and d!2311177 res!3021842) b!7540348))

(assert (= (and b!7540348 res!3021841) b!7540349))

(declare-fun m!8109864 () Bool)

(assert (=> b!7540348 m!8109864))

(assert (=> b!7540348 m!8109748))

(declare-fun m!8109866 () Bool)

(assert (=> b!7540348 m!8109866))

(declare-fun m!8109868 () Bool)

(assert (=> d!2311177 m!8109868))

(assert (=> d!2311177 m!8109780))

(declare-fun m!8109870 () Bool)

(assert (=> d!2311177 m!8109870))

(declare-fun m!8109872 () Bool)

(assert (=> b!7540347 m!8109872))

(assert (=> b!7540209 d!2311177))

(declare-fun b!7540374 () Bool)

(declare-fun res!3021853 () Bool)

(declare-fun e!4492720 () Bool)

(assert (=> b!7540374 (=> res!3021853 e!4492720)))

(assert (=> b!7540374 (= res!3021853 (not ((_ is Concat!28748) baseR!101)))))

(declare-fun e!4492714 () Bool)

(assert (=> b!7540374 (= e!4492714 e!4492720)))

(declare-fun b!7540375 () Bool)

(declare-fun e!4492715 () Bool)

(declare-fun call!691668 () Bool)

(assert (=> b!7540375 (= e!4492715 call!691668)))

(declare-fun b!7540376 () Bool)

(declare-fun e!4492717 () Bool)

(declare-fun e!4492718 () Bool)

(assert (=> b!7540376 (= e!4492717 e!4492718)))

(declare-fun res!3021854 () Bool)

(assert (=> b!7540376 (= res!3021854 (not (nullable!8676 (reg!20232 baseR!101))))))

(assert (=> b!7540376 (=> (not res!3021854) (not e!4492718))))

(declare-fun b!7540377 () Bool)

(assert (=> b!7540377 (= e!4492720 e!4492715)))

(declare-fun res!3021857 () Bool)

(assert (=> b!7540377 (=> (not res!3021857) (not e!4492715))))

(declare-fun call!691667 () Bool)

(assert (=> b!7540377 (= res!3021857 call!691667)))

(declare-fun b!7540378 () Bool)

(declare-fun e!4492719 () Bool)

(assert (=> b!7540378 (= e!4492719 call!691668)))

(declare-fun b!7540379 () Bool)

(assert (=> b!7540379 (= e!4492717 e!4492714)))

(declare-fun c!1392184 () Bool)

(assert (=> b!7540379 (= c!1392184 ((_ is Union!19903) baseR!101))))

(declare-fun b!7540380 () Bool)

(declare-fun res!3021855 () Bool)

(assert (=> b!7540380 (=> (not res!3021855) (not e!4492719))))

(assert (=> b!7540380 (= res!3021855 call!691667)))

(assert (=> b!7540380 (= e!4492714 e!4492719)))

(declare-fun bm!691661 () Bool)

(assert (=> bm!691661 (= call!691668 (validRegex!10331 (ite c!1392184 (regTwo!40319 baseR!101) (regTwo!40318 baseR!101))))))

(declare-fun bm!691662 () Bool)

(declare-fun c!1392185 () Bool)

(declare-fun call!691666 () Bool)

(assert (=> bm!691662 (= call!691666 (validRegex!10331 (ite c!1392185 (reg!20232 baseR!101) (ite c!1392184 (regOne!40319 baseR!101) (regOne!40318 baseR!101)))))))

(declare-fun b!7540381 () Bool)

(assert (=> b!7540381 (= e!4492718 call!691666)))

(declare-fun d!2311179 () Bool)

(declare-fun res!3021856 () Bool)

(declare-fun e!4492716 () Bool)

(assert (=> d!2311179 (=> res!3021856 e!4492716)))

(assert (=> d!2311179 (= res!3021856 ((_ is ElementMatch!19903) baseR!101))))

(assert (=> d!2311179 (= (validRegex!10331 baseR!101) e!4492716)))

(declare-fun bm!691663 () Bool)

(assert (=> bm!691663 (= call!691667 call!691666)))

(declare-fun b!7540382 () Bool)

(assert (=> b!7540382 (= e!4492716 e!4492717)))

(assert (=> b!7540382 (= c!1392185 ((_ is Star!19903) baseR!101))))

(assert (= (and d!2311179 (not res!3021856)) b!7540382))

(assert (= (and b!7540382 c!1392185) b!7540376))

(assert (= (and b!7540382 (not c!1392185)) b!7540379))

(assert (= (and b!7540376 res!3021854) b!7540381))

(assert (= (and b!7540379 c!1392184) b!7540380))

(assert (= (and b!7540379 (not c!1392184)) b!7540374))

(assert (= (and b!7540380 res!3021855) b!7540378))

(assert (= (and b!7540374 (not res!3021853)) b!7540377))

(assert (= (and b!7540377 res!3021857) b!7540375))

(assert (= (or b!7540380 b!7540377) bm!691663))

(assert (= (or b!7540378 b!7540375) bm!691661))

(assert (= (or b!7540381 bm!691663) bm!691662))

(declare-fun m!8109876 () Bool)

(assert (=> b!7540376 m!8109876))

(declare-fun m!8109878 () Bool)

(assert (=> bm!691661 m!8109878))

(declare-fun m!8109880 () Bool)

(assert (=> bm!691662 m!8109880))

(assert (=> start!729252 d!2311179))

(declare-fun d!2311183 () Bool)

(declare-fun e!4492721 () Bool)

(assert (=> d!2311183 e!4492721))

(declare-fun res!3021858 () Bool)

(assert (=> d!2311183 (=> res!3021858 e!4492721)))

(declare-fun lt!2643111 () Bool)

(assert (=> d!2311183 (= res!3021858 (not lt!2643111))))

(declare-fun e!4492722 () Bool)

(assert (=> d!2311183 (= lt!2643111 e!4492722)))

(declare-fun res!3021860 () Bool)

(assert (=> d!2311183 (=> res!3021860 e!4492722)))

(assert (=> d!2311183 (= res!3021860 ((_ is Nil!72662) lt!2643062))))

(assert (=> d!2311183 (= (isPrefix!6109 lt!2643062 knownP!30) lt!2643111)))

(declare-fun b!7540383 () Bool)

(declare-fun e!4492723 () Bool)

(assert (=> b!7540383 (= e!4492722 e!4492723)))

(declare-fun res!3021859 () Bool)

(assert (=> b!7540383 (=> (not res!3021859) (not e!4492723))))

(assert (=> b!7540383 (= res!3021859 (not ((_ is Nil!72662) knownP!30)))))

(declare-fun b!7540385 () Bool)

(assert (=> b!7540385 (= e!4492723 (isPrefix!6109 (tail!15038 lt!2643062) (tail!15038 knownP!30)))))

(declare-fun b!7540386 () Bool)

(assert (=> b!7540386 (= e!4492721 (>= (size!42399 knownP!30) (size!42399 lt!2643062)))))

(declare-fun b!7540384 () Bool)

(declare-fun res!3021861 () Bool)

(assert (=> b!7540384 (=> (not res!3021861) (not e!4492723))))

(assert (=> b!7540384 (= res!3021861 (= (head!15493 lt!2643062) (head!15493 knownP!30)))))

(assert (= (and d!2311183 (not res!3021860)) b!7540383))

(assert (= (and b!7540383 res!3021859) b!7540384))

(assert (= (and b!7540384 res!3021861) b!7540385))

(assert (= (and d!2311183 (not res!3021858)) b!7540386))

(declare-fun m!8109882 () Bool)

(assert (=> b!7540385 m!8109882))

(assert (=> b!7540385 m!8109822))

(assert (=> b!7540385 m!8109882))

(assert (=> b!7540385 m!8109822))

(declare-fun m!8109884 () Bool)

(assert (=> b!7540385 m!8109884))

(assert (=> b!7540386 m!8109750))

(declare-fun m!8109886 () Bool)

(assert (=> b!7540386 m!8109886))

(declare-fun m!8109888 () Bool)

(assert (=> b!7540384 m!8109888))

(assert (=> b!7540384 m!8109832))

(assert (=> b!7540223 d!2311183))

(declare-fun d!2311185 () Bool)

(assert (=> d!2311185 (isPrefix!6109 lt!2643062 knownP!30)))

(declare-fun lt!2643113 () Unit!166744)

(assert (=> d!2311185 (= lt!2643113 (choose!58336 knownP!30 lt!2643062 input!7874))))

(assert (=> d!2311185 (isPrefix!6109 knownP!30 input!7874)))

(assert (=> d!2311185 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!859 knownP!30 lt!2643062 input!7874) lt!2643113)))

(declare-fun bs!1939989 () Bool)

(assert (= bs!1939989 d!2311185))

(assert (=> bs!1939989 m!8109714))

(declare-fun m!8109890 () Bool)

(assert (=> bs!1939989 m!8109890))

(assert (=> bs!1939989 m!8109730))

(assert (=> b!7540223 d!2311185))

(declare-fun e!4492726 () Bool)

(declare-fun b!7540392 () Bool)

(declare-fun lt!2643114 () List!72786)

(assert (=> b!7540392 (= e!4492726 (or (not (= lt!2643061 Nil!72662)) (= lt!2643114 knownP!30)))))

(declare-fun b!7540391 () Bool)

(declare-fun res!3021862 () Bool)

(assert (=> b!7540391 (=> (not res!3021862) (not e!4492726))))

(assert (=> b!7540391 (= res!3021862 (= (size!42399 lt!2643114) (+ (size!42399 knownP!30) (size!42399 lt!2643061))))))

(declare-fun d!2311187 () Bool)

(assert (=> d!2311187 e!4492726))

(declare-fun res!3021863 () Bool)

(assert (=> d!2311187 (=> (not res!3021863) (not e!4492726))))

(assert (=> d!2311187 (= res!3021863 (= (content!15365 lt!2643114) ((_ map or) (content!15365 knownP!30) (content!15365 lt!2643061))))))

(declare-fun e!4492725 () List!72786)

(assert (=> d!2311187 (= lt!2643114 e!4492725)))

(declare-fun c!1392187 () Bool)

(assert (=> d!2311187 (= c!1392187 ((_ is Nil!72662) knownP!30))))

(assert (=> d!2311187 (= (++!17420 knownP!30 lt!2643061) lt!2643114)))

(declare-fun b!7540389 () Bool)

(assert (=> b!7540389 (= e!4492725 lt!2643061)))

(declare-fun b!7540390 () Bool)

(assert (=> b!7540390 (= e!4492725 (Cons!72662 (h!79110 knownP!30) (++!17420 (t!387493 knownP!30) lt!2643061)))))

(assert (= (and d!2311187 c!1392187) b!7540389))

(assert (= (and d!2311187 (not c!1392187)) b!7540390))

(assert (= (and d!2311187 res!3021863) b!7540391))

(assert (= (and b!7540391 res!3021862) b!7540392))

(declare-fun m!8109898 () Bool)

(assert (=> b!7540391 m!8109898))

(assert (=> b!7540391 m!8109750))

(assert (=> b!7540391 m!8109790))

(declare-fun m!8109900 () Bool)

(assert (=> d!2311187 m!8109900))

(declare-fun m!8109902 () Bool)

(assert (=> d!2311187 m!8109902))

(assert (=> d!2311187 m!8109796))

(declare-fun m!8109904 () Bool)

(assert (=> b!7540390 m!8109904))

(assert (=> b!7540223 d!2311187))

(declare-fun d!2311191 () Bool)

(declare-fun lt!2643117 () Regex!19903)

(assert (=> d!2311191 (validRegex!10331 lt!2643117)))

(declare-fun e!4492729 () Regex!19903)

(assert (=> d!2311191 (= lt!2643117 e!4492729)))

(declare-fun c!1392190 () Bool)

(assert (=> d!2311191 (= c!1392190 ((_ is Cons!72662) lt!2643062))))

(assert (=> d!2311191 (validRegex!10331 baseR!101)))

(assert (=> d!2311191 (= (derivative!435 baseR!101 lt!2643062) lt!2643117)))

(declare-fun b!7540397 () Bool)

(assert (=> b!7540397 (= e!4492729 (derivative!435 (derivativeStep!5693 baseR!101 (h!79110 lt!2643062)) (t!387493 lt!2643062)))))

(declare-fun b!7540398 () Bool)

(assert (=> b!7540398 (= e!4492729 baseR!101)))

(assert (= (and d!2311191 c!1392190) b!7540397))

(assert (= (and d!2311191 (not c!1392190)) b!7540398))

(declare-fun m!8109906 () Bool)

(assert (=> d!2311191 m!8109906))

(assert (=> d!2311191 m!8109742))

(declare-fun m!8109908 () Bool)

(assert (=> b!7540397 m!8109908))

(assert (=> b!7540397 m!8109908))

(declare-fun m!8109910 () Bool)

(assert (=> b!7540397 m!8109910))

(assert (=> b!7540223 d!2311191))

(declare-fun d!2311193 () Bool)

(declare-fun lt!2643118 () List!72786)

(assert (=> d!2311193 (= (++!17420 testedP!423 lt!2643118) input!7874)))

(declare-fun e!4492730 () List!72786)

(assert (=> d!2311193 (= lt!2643118 e!4492730)))

(declare-fun c!1392191 () Bool)

(assert (=> d!2311193 (= c!1392191 ((_ is Cons!72662) testedP!423))))

(assert (=> d!2311193 (>= (size!42399 input!7874) (size!42399 testedP!423))))

(assert (=> d!2311193 (= (getSuffix!3589 input!7874 testedP!423) lt!2643118)))

(declare-fun b!7540399 () Bool)

(assert (=> b!7540399 (= e!4492730 (getSuffix!3589 (tail!15038 input!7874) (t!387493 testedP!423)))))

(declare-fun b!7540400 () Bool)

(assert (=> b!7540400 (= e!4492730 input!7874)))

(assert (= (and d!2311193 c!1392191) b!7540399))

(assert (= (and d!2311193 (not c!1392191)) b!7540400))

(declare-fun m!8109912 () Bool)

(assert (=> d!2311193 m!8109912))

(assert (=> d!2311193 m!8109758))

(assert (=> d!2311193 m!8109748))

(declare-fun m!8109914 () Bool)

(assert (=> b!7540399 m!8109914))

(assert (=> b!7540399 m!8109914))

(declare-fun m!8109916 () Bool)

(assert (=> b!7540399 m!8109916))

(assert (=> b!7540223 d!2311193))

(declare-fun d!2311195 () Bool)

(declare-fun lt!2643119 () List!72786)

(assert (=> d!2311195 (= (++!17420 lt!2643062 lt!2643119) knownP!30)))

(declare-fun e!4492731 () List!72786)

(assert (=> d!2311195 (= lt!2643119 e!4492731)))

(declare-fun c!1392192 () Bool)

(assert (=> d!2311195 (= c!1392192 ((_ is Cons!72662) lt!2643062))))

(assert (=> d!2311195 (>= (size!42399 knownP!30) (size!42399 lt!2643062))))

(assert (=> d!2311195 (= (getSuffix!3589 knownP!30 lt!2643062) lt!2643119)))

(declare-fun b!7540401 () Bool)

(assert (=> b!7540401 (= e!4492731 (getSuffix!3589 (tail!15038 knownP!30) (t!387493 lt!2643062)))))

(declare-fun b!7540402 () Bool)

(assert (=> b!7540402 (= e!4492731 knownP!30)))

(assert (= (and d!2311195 c!1392192) b!7540401))

(assert (= (and d!2311195 (not c!1392192)) b!7540402))

(declare-fun m!8109918 () Bool)

(assert (=> d!2311195 m!8109918))

(assert (=> d!2311195 m!8109750))

(assert (=> d!2311195 m!8109886))

(assert (=> b!7540401 m!8109822))

(assert (=> b!7540401 m!8109822))

(declare-fun m!8109920 () Bool)

(assert (=> b!7540401 m!8109920))

(assert (=> b!7540223 d!2311195))

(declare-fun lt!2643120 () List!72786)

(declare-fun e!4492733 () Bool)

(declare-fun b!7540406 () Bool)

(assert (=> b!7540406 (= e!4492733 (or (not (= (Cons!72662 lt!2643058 Nil!72662) Nil!72662)) (= lt!2643120 testedP!423)))))

(declare-fun b!7540405 () Bool)

(declare-fun res!3021864 () Bool)

(assert (=> b!7540405 (=> (not res!3021864) (not e!4492733))))

(assert (=> b!7540405 (= res!3021864 (= (size!42399 lt!2643120) (+ (size!42399 testedP!423) (size!42399 (Cons!72662 lt!2643058 Nil!72662)))))))

(declare-fun d!2311197 () Bool)

(assert (=> d!2311197 e!4492733))

(declare-fun res!3021865 () Bool)

(assert (=> d!2311197 (=> (not res!3021865) (not e!4492733))))

(assert (=> d!2311197 (= res!3021865 (= (content!15365 lt!2643120) ((_ map or) (content!15365 testedP!423) (content!15365 (Cons!72662 lt!2643058 Nil!72662)))))))

(declare-fun e!4492732 () List!72786)

(assert (=> d!2311197 (= lt!2643120 e!4492732)))

(declare-fun c!1392193 () Bool)

(assert (=> d!2311197 (= c!1392193 ((_ is Nil!72662) testedP!423))))

(assert (=> d!2311197 (= (++!17420 testedP!423 (Cons!72662 lt!2643058 Nil!72662)) lt!2643120)))

(declare-fun b!7540403 () Bool)

(assert (=> b!7540403 (= e!4492732 (Cons!72662 lt!2643058 Nil!72662))))

(declare-fun b!7540404 () Bool)

(assert (=> b!7540404 (= e!4492732 (Cons!72662 (h!79110 testedP!423) (++!17420 (t!387493 testedP!423) (Cons!72662 lt!2643058 Nil!72662))))))

(assert (= (and d!2311197 c!1392193) b!7540403))

(assert (= (and d!2311197 (not c!1392193)) b!7540404))

(assert (= (and d!2311197 res!3021865) b!7540405))

(assert (= (and b!7540405 res!3021864) b!7540406))

(declare-fun m!8109922 () Bool)

(assert (=> b!7540405 m!8109922))

(assert (=> b!7540405 m!8109748))

(declare-fun m!8109924 () Bool)

(assert (=> b!7540405 m!8109924))

(declare-fun m!8109926 () Bool)

(assert (=> d!2311197 m!8109926))

(assert (=> d!2311197 m!8109780))

(declare-fun m!8109928 () Bool)

(assert (=> d!2311197 m!8109928))

(declare-fun m!8109930 () Bool)

(assert (=> b!7540404 m!8109930))

(assert (=> b!7540223 d!2311197))

(declare-fun d!2311199 () Bool)

(declare-fun lt!2643121 () List!72786)

(assert (=> d!2311199 (= (++!17420 knownP!30 lt!2643121) input!7874)))

(declare-fun e!4492734 () List!72786)

(assert (=> d!2311199 (= lt!2643121 e!4492734)))

(declare-fun c!1392194 () Bool)

(assert (=> d!2311199 (= c!1392194 ((_ is Cons!72662) knownP!30))))

(assert (=> d!2311199 (>= (size!42399 input!7874) (size!42399 knownP!30))))

(assert (=> d!2311199 (= (getSuffix!3589 input!7874 knownP!30) lt!2643121)))

(declare-fun b!7540407 () Bool)

(assert (=> b!7540407 (= e!4492734 (getSuffix!3589 (tail!15038 input!7874) (t!387493 knownP!30)))))

(declare-fun b!7540408 () Bool)

(assert (=> b!7540408 (= e!4492734 input!7874)))

(assert (= (and d!2311199 c!1392194) b!7540407))

(assert (= (and d!2311199 (not c!1392194)) b!7540408))

(declare-fun m!8109932 () Bool)

(assert (=> d!2311199 m!8109932))

(assert (=> d!2311199 m!8109758))

(assert (=> d!2311199 m!8109750))

(assert (=> b!7540407 m!8109914))

(assert (=> b!7540407 m!8109914))

(declare-fun m!8109934 () Bool)

(assert (=> b!7540407 m!8109934))

(assert (=> b!7540223 d!2311199))

(declare-fun b!7540449 () Bool)

(declare-fun e!4492757 () Regex!19903)

(declare-fun e!4492755 () Regex!19903)

(assert (=> b!7540449 (= e!4492757 e!4492755)))

(declare-fun c!1392219 () Bool)

(assert (=> b!7540449 (= c!1392219 ((_ is ElementMatch!19903) r!24333))))

(declare-fun bm!691680 () Bool)

(declare-fun c!1392217 () Bool)

(declare-fun call!691685 () Regex!19903)

(assert (=> bm!691680 (= call!691685 (derivativeStep!5693 (ite c!1392217 (regOne!40319 r!24333) (regTwo!40318 r!24333)) lt!2643058))))

(declare-fun bm!691681 () Bool)

(declare-fun call!691686 () Regex!19903)

(declare-fun call!691687 () Regex!19903)

(assert (=> bm!691681 (= call!691686 call!691687)))

(declare-fun b!7540450 () Bool)

(assert (=> b!7540450 (= e!4492755 (ite (= lt!2643058 (c!1392150 r!24333)) EmptyExpr!19903 EmptyLang!19903))))

(declare-fun b!7540451 () Bool)

(assert (=> b!7540451 (= c!1392217 ((_ is Union!19903) r!24333))))

(declare-fun e!4492759 () Regex!19903)

(assert (=> b!7540451 (= e!4492755 e!4492759)))

(declare-fun b!7540452 () Bool)

(declare-fun e!4492756 () Regex!19903)

(assert (=> b!7540452 (= e!4492756 (Concat!28748 call!691686 r!24333))))

(declare-fun d!2311201 () Bool)

(declare-fun lt!2643126 () Regex!19903)

(assert (=> d!2311201 (validRegex!10331 lt!2643126)))

(assert (=> d!2311201 (= lt!2643126 e!4492757)))

(declare-fun c!1392215 () Bool)

(assert (=> d!2311201 (= c!1392215 (or ((_ is EmptyExpr!19903) r!24333) ((_ is EmptyLang!19903) r!24333)))))

(assert (=> d!2311201 (validRegex!10331 r!24333)))

(assert (=> d!2311201 (= (derivativeStep!5693 r!24333 lt!2643058) lt!2643126)))

(declare-fun c!1392218 () Bool)

(declare-fun bm!691682 () Bool)

(assert (=> bm!691682 (= call!691687 (derivativeStep!5693 (ite c!1392217 (regTwo!40319 r!24333) (ite c!1392218 (reg!20232 r!24333) (regOne!40318 r!24333))) lt!2643058))))

(declare-fun bm!691683 () Bool)

(declare-fun call!691688 () Regex!19903)

(assert (=> bm!691683 (= call!691688 call!691686)))

(declare-fun b!7540453 () Bool)

(declare-fun c!1392216 () Bool)

(assert (=> b!7540453 (= c!1392216 (nullable!8676 (regOne!40318 r!24333)))))

(declare-fun e!4492758 () Regex!19903)

(assert (=> b!7540453 (= e!4492756 e!4492758)))

(declare-fun b!7540454 () Bool)

(assert (=> b!7540454 (= e!4492757 EmptyLang!19903)))

(declare-fun b!7540455 () Bool)

(assert (=> b!7540455 (= e!4492758 (Union!19903 (Concat!28748 call!691688 (regTwo!40318 r!24333)) call!691685))))

(declare-fun b!7540456 () Bool)

(assert (=> b!7540456 (= e!4492759 (Union!19903 call!691685 call!691687))))

(declare-fun b!7540457 () Bool)

(assert (=> b!7540457 (= e!4492759 e!4492756)))

(assert (=> b!7540457 (= c!1392218 ((_ is Star!19903) r!24333))))

(declare-fun b!7540458 () Bool)

(assert (=> b!7540458 (= e!4492758 (Union!19903 (Concat!28748 call!691688 (regTwo!40318 r!24333)) EmptyLang!19903))))

(assert (= (and d!2311201 c!1392215) b!7540454))

(assert (= (and d!2311201 (not c!1392215)) b!7540449))

(assert (= (and b!7540449 c!1392219) b!7540450))

(assert (= (and b!7540449 (not c!1392219)) b!7540451))

(assert (= (and b!7540451 c!1392217) b!7540456))

(assert (= (and b!7540451 (not c!1392217)) b!7540457))

(assert (= (and b!7540457 c!1392218) b!7540452))

(assert (= (and b!7540457 (not c!1392218)) b!7540453))

(assert (= (and b!7540453 c!1392216) b!7540455))

(assert (= (and b!7540453 (not c!1392216)) b!7540458))

(assert (= (or b!7540455 b!7540458) bm!691683))

(assert (= (or b!7540452 bm!691683) bm!691681))

(assert (= (or b!7540456 bm!691681) bm!691682))

(assert (= (or b!7540456 b!7540455) bm!691680))

(declare-fun m!8109936 () Bool)

(assert (=> bm!691680 m!8109936))

(declare-fun m!8109938 () Bool)

(assert (=> d!2311201 m!8109938))

(assert (=> d!2311201 m!8109744))

(declare-fun m!8109940 () Bool)

(assert (=> bm!691682 m!8109940))

(declare-fun m!8109942 () Bool)

(assert (=> b!7540453 m!8109942))

(assert (=> b!7540223 d!2311201))

(declare-fun d!2311203 () Bool)

(assert (=> d!2311203 (= (head!15493 lt!2643071) (h!79110 lt!2643071))))

(assert (=> b!7540223 d!2311203))

(declare-fun d!2311205 () Bool)

(assert (=> d!2311205 (isPrefix!6109 (++!17420 testedP!423 (Cons!72662 (head!15493 (getSuffix!3589 input!7874 testedP!423)) Nil!72662)) input!7874)))

(declare-fun lt!2643129 () Unit!166744)

(declare-fun choose!58341 (List!72786 List!72786) Unit!166744)

(assert (=> d!2311205 (= lt!2643129 (choose!58341 testedP!423 input!7874))))

(assert (=> d!2311205 (isPrefix!6109 testedP!423 input!7874)))

(assert (=> d!2311205 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1174 testedP!423 input!7874) lt!2643129)))

(declare-fun bs!1939990 () Bool)

(assert (= bs!1939990 d!2311205))

(declare-fun m!8109944 () Bool)

(assert (=> bs!1939990 m!8109944))

(assert (=> bs!1939990 m!8109704))

(declare-fun m!8109946 () Bool)

(assert (=> bs!1939990 m!8109946))

(declare-fun m!8109948 () Bool)

(assert (=> bs!1939990 m!8109948))

(assert (=> bs!1939990 m!8109946))

(assert (=> bs!1939990 m!8109704))

(declare-fun m!8109950 () Bool)

(assert (=> bs!1939990 m!8109950))

(assert (=> bs!1939990 m!8109752))

(assert (=> b!7540223 d!2311205))

(declare-fun d!2311207 () Bool)

(declare-fun e!4492765 () Bool)

(assert (=> d!2311207 e!4492765))

(declare-fun res!3021866 () Bool)

(assert (=> d!2311207 (=> res!3021866 e!4492765)))

(declare-fun lt!2643131 () Bool)

(assert (=> d!2311207 (= res!3021866 (not lt!2643131))))

(declare-fun e!4492766 () Bool)

(assert (=> d!2311207 (= lt!2643131 e!4492766)))

(declare-fun res!3021868 () Bool)

(assert (=> d!2311207 (=> res!3021868 e!4492766)))

(assert (=> d!2311207 (= res!3021868 ((_ is Nil!72662) lt!2643062))))

(assert (=> d!2311207 (= (isPrefix!6109 lt!2643062 input!7874) lt!2643131)))

(declare-fun b!7540469 () Bool)

(declare-fun e!4492767 () Bool)

(assert (=> b!7540469 (= e!4492766 e!4492767)))

(declare-fun res!3021867 () Bool)

(assert (=> b!7540469 (=> (not res!3021867) (not e!4492767))))

(assert (=> b!7540469 (= res!3021867 (not ((_ is Nil!72662) input!7874)))))

(declare-fun b!7540471 () Bool)

(assert (=> b!7540471 (= e!4492767 (isPrefix!6109 (tail!15038 lt!2643062) (tail!15038 input!7874)))))

(declare-fun b!7540472 () Bool)

(assert (=> b!7540472 (= e!4492765 (>= (size!42399 input!7874) (size!42399 lt!2643062)))))

(declare-fun b!7540470 () Bool)

(declare-fun res!3021869 () Bool)

(assert (=> b!7540470 (=> (not res!3021869) (not e!4492767))))

(assert (=> b!7540470 (= res!3021869 (= (head!15493 lt!2643062) (head!15493 input!7874)))))

(assert (= (and d!2311207 (not res!3021868)) b!7540469))

(assert (= (and b!7540469 res!3021867) b!7540470))

(assert (= (and b!7540470 res!3021869) b!7540471))

(assert (= (and d!2311207 (not res!3021866)) b!7540472))

(assert (=> b!7540471 m!8109882))

(assert (=> b!7540471 m!8109914))

(assert (=> b!7540471 m!8109882))

(assert (=> b!7540471 m!8109914))

(declare-fun m!8109952 () Bool)

(assert (=> b!7540471 m!8109952))

(assert (=> b!7540472 m!8109758))

(assert (=> b!7540472 m!8109886))

(assert (=> b!7540470 m!8109888))

(declare-fun m!8109954 () Bool)

(assert (=> b!7540470 m!8109954))

(assert (=> b!7540223 d!2311207))

(declare-fun d!2311209 () Bool)

(assert (=> d!2311209 (= (derivative!435 baseR!101 (++!17420 testedP!423 (Cons!72662 lt!2643058 Nil!72662))) (derivativeStep!5693 r!24333 lt!2643058))))

(declare-fun lt!2643134 () Unit!166744)

(declare-fun choose!58342 (Regex!19903 Regex!19903 List!72786 C!40132) Unit!166744)

(assert (=> d!2311209 (= lt!2643134 (choose!58342 baseR!101 r!24333 testedP!423 lt!2643058))))

(assert (=> d!2311209 (validRegex!10331 baseR!101)))

(assert (=> d!2311209 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!141 baseR!101 r!24333 testedP!423 lt!2643058) lt!2643134)))

(declare-fun bs!1939991 () Bool)

(assert (= bs!1939991 d!2311209))

(assert (=> bs!1939991 m!8109718))

(assert (=> bs!1939991 m!8109716))

(declare-fun m!8109964 () Bool)

(assert (=> bs!1939991 m!8109964))

(assert (=> bs!1939991 m!8109716))

(assert (=> bs!1939991 m!8109742))

(declare-fun m!8109966 () Bool)

(assert (=> bs!1939991 m!8109966))

(assert (=> b!7540223 d!2311209))

(declare-fun d!2311213 () Bool)

(declare-fun e!4492768 () Bool)

(assert (=> d!2311213 e!4492768))

(declare-fun res!3021870 () Bool)

(assert (=> d!2311213 (=> res!3021870 e!4492768)))

(declare-fun lt!2643135 () Bool)

(assert (=> d!2311213 (= res!3021870 (not lt!2643135))))

(declare-fun e!4492769 () Bool)

(assert (=> d!2311213 (= lt!2643135 e!4492769)))

(declare-fun res!3021872 () Bool)

(assert (=> d!2311213 (=> res!3021872 e!4492769)))

(assert (=> d!2311213 (= res!3021872 ((_ is Nil!72662) testedP!423))))

(assert (=> d!2311213 (= (isPrefix!6109 testedP!423 input!7874) lt!2643135)))

(declare-fun b!7540473 () Bool)

(declare-fun e!4492770 () Bool)

(assert (=> b!7540473 (= e!4492769 e!4492770)))

(declare-fun res!3021871 () Bool)

(assert (=> b!7540473 (=> (not res!3021871) (not e!4492770))))

(assert (=> b!7540473 (= res!3021871 (not ((_ is Nil!72662) input!7874)))))

(declare-fun b!7540475 () Bool)

(assert (=> b!7540475 (= e!4492770 (isPrefix!6109 (tail!15038 testedP!423) (tail!15038 input!7874)))))

(declare-fun b!7540476 () Bool)

(assert (=> b!7540476 (= e!4492768 (>= (size!42399 input!7874) (size!42399 testedP!423)))))

(declare-fun b!7540474 () Bool)

(declare-fun res!3021873 () Bool)

(assert (=> b!7540474 (=> (not res!3021873) (not e!4492770))))

(assert (=> b!7540474 (= res!3021873 (= (head!15493 testedP!423) (head!15493 input!7874)))))

(assert (= (and d!2311213 (not res!3021872)) b!7540473))

(assert (= (and b!7540473 res!3021871) b!7540474))

(assert (= (and b!7540474 res!3021873) b!7540475))

(assert (= (and d!2311213 (not res!3021870)) b!7540476))

(assert (=> b!7540475 m!8109826))

(assert (=> b!7540475 m!8109914))

(assert (=> b!7540475 m!8109826))

(assert (=> b!7540475 m!8109914))

(declare-fun m!8109968 () Bool)

(assert (=> b!7540475 m!8109968))

(assert (=> b!7540476 m!8109758))

(assert (=> b!7540476 m!8109748))

(assert (=> b!7540474 m!8109830))

(assert (=> b!7540474 m!8109954))

(assert (=> b!7540211 d!2311213))

(declare-fun b!7540477 () Bool)

(declare-fun res!3021874 () Bool)

(declare-fun e!4492777 () Bool)

(assert (=> b!7540477 (=> res!3021874 e!4492777)))

(assert (=> b!7540477 (= res!3021874 (not ((_ is Concat!28748) r!24333)))))

(declare-fun e!4492771 () Bool)

(assert (=> b!7540477 (= e!4492771 e!4492777)))

(declare-fun b!7540478 () Bool)

(declare-fun e!4492772 () Bool)

(declare-fun call!691695 () Bool)

(assert (=> b!7540478 (= e!4492772 call!691695)))

(declare-fun b!7540479 () Bool)

(declare-fun e!4492774 () Bool)

(declare-fun e!4492775 () Bool)

(assert (=> b!7540479 (= e!4492774 e!4492775)))

(declare-fun res!3021875 () Bool)

(assert (=> b!7540479 (= res!3021875 (not (nullable!8676 (reg!20232 r!24333))))))

(assert (=> b!7540479 (=> (not res!3021875) (not e!4492775))))

(declare-fun b!7540480 () Bool)

(assert (=> b!7540480 (= e!4492777 e!4492772)))

(declare-fun res!3021878 () Bool)

(assert (=> b!7540480 (=> (not res!3021878) (not e!4492772))))

(declare-fun call!691694 () Bool)

(assert (=> b!7540480 (= res!3021878 call!691694)))

(declare-fun b!7540481 () Bool)

(declare-fun e!4492776 () Bool)

(assert (=> b!7540481 (= e!4492776 call!691695)))

(declare-fun b!7540482 () Bool)

(assert (=> b!7540482 (= e!4492774 e!4492771)))

(declare-fun c!1392226 () Bool)

(assert (=> b!7540482 (= c!1392226 ((_ is Union!19903) r!24333))))

(declare-fun b!7540483 () Bool)

(declare-fun res!3021876 () Bool)

(assert (=> b!7540483 (=> (not res!3021876) (not e!4492776))))

(assert (=> b!7540483 (= res!3021876 call!691694)))

(assert (=> b!7540483 (= e!4492771 e!4492776)))

(declare-fun bm!691688 () Bool)

(assert (=> bm!691688 (= call!691695 (validRegex!10331 (ite c!1392226 (regTwo!40319 r!24333) (regTwo!40318 r!24333))))))

(declare-fun call!691693 () Bool)

(declare-fun c!1392227 () Bool)

(declare-fun bm!691689 () Bool)

(assert (=> bm!691689 (= call!691693 (validRegex!10331 (ite c!1392227 (reg!20232 r!24333) (ite c!1392226 (regOne!40319 r!24333) (regOne!40318 r!24333)))))))

(declare-fun b!7540484 () Bool)

(assert (=> b!7540484 (= e!4492775 call!691693)))

(declare-fun d!2311215 () Bool)

(declare-fun res!3021877 () Bool)

(declare-fun e!4492773 () Bool)

(assert (=> d!2311215 (=> res!3021877 e!4492773)))

(assert (=> d!2311215 (= res!3021877 ((_ is ElementMatch!19903) r!24333))))

(assert (=> d!2311215 (= (validRegex!10331 r!24333) e!4492773)))

(declare-fun bm!691690 () Bool)

(assert (=> bm!691690 (= call!691694 call!691693)))

(declare-fun b!7540485 () Bool)

(assert (=> b!7540485 (= e!4492773 e!4492774)))

(assert (=> b!7540485 (= c!1392227 ((_ is Star!19903) r!24333))))

(assert (= (and d!2311215 (not res!3021877)) b!7540485))

(assert (= (and b!7540485 c!1392227) b!7540479))

(assert (= (and b!7540485 (not c!1392227)) b!7540482))

(assert (= (and b!7540479 res!3021875) b!7540484))

(assert (= (and b!7540482 c!1392226) b!7540483))

(assert (= (and b!7540482 (not c!1392226)) b!7540477))

(assert (= (and b!7540483 res!3021876) b!7540481))

(assert (= (and b!7540477 (not res!3021874)) b!7540480))

(assert (= (and b!7540480 res!3021878) b!7540478))

(assert (= (or b!7540483 b!7540480) bm!691690))

(assert (= (or b!7540481 b!7540478) bm!691688))

(assert (= (or b!7540484 bm!691690) bm!691689))

(declare-fun m!8109970 () Bool)

(assert (=> b!7540479 m!8109970))

(declare-fun m!8109972 () Bool)

(assert (=> bm!691688 m!8109972))

(declare-fun m!8109974 () Bool)

(assert (=> bm!691689 m!8109974))

(assert (=> b!7540212 d!2311215))

(declare-fun d!2311217 () Bool)

(declare-fun lostCauseFct!433 (Regex!19903) Bool)

(assert (=> d!2311217 (= (lostCause!1695 r!24333) (lostCauseFct!433 r!24333))))

(declare-fun bs!1939992 () Bool)

(assert (= bs!1939992 d!2311217))

(declare-fun m!8109976 () Bool)

(assert (=> bs!1939992 m!8109976))

(assert (=> b!7540233 d!2311217))

(declare-fun b!7540494 () Bool)

(declare-fun e!4492782 () Bool)

(declare-fun lt!2643138 () Bool)

(assert (=> b!7540494 (= e!4492782 (not lt!2643138))))

(declare-fun b!7540495 () Bool)

(declare-fun res!3021890 () Bool)

(declare-fun e!4492786 () Bool)

(assert (=> b!7540495 (=> res!3021890 e!4492786)))

(assert (=> b!7540495 (= res!3021890 (not (isEmpty!41372 (tail!15038 knownP!30))))))

(declare-fun b!7540496 () Bool)

(declare-fun e!4492783 () Bool)

(declare-fun call!691696 () Bool)

(assert (=> b!7540496 (= e!4492783 (= lt!2643138 call!691696))))

(declare-fun bm!691691 () Bool)

(assert (=> bm!691691 (= call!691696 (isEmpty!41372 knownP!30))))

(declare-fun d!2311219 () Bool)

(assert (=> d!2311219 e!4492783))

(declare-fun c!1392232 () Bool)

(assert (=> d!2311219 (= c!1392232 ((_ is EmptyExpr!19903) baseR!101))))

(declare-fun e!4492785 () Bool)

(assert (=> d!2311219 (= lt!2643138 e!4492785)))

(declare-fun c!1392230 () Bool)

(assert (=> d!2311219 (= c!1392230 (isEmpty!41372 knownP!30))))

(assert (=> d!2311219 (validRegex!10331 baseR!101)))

(assert (=> d!2311219 (= (matchR!9505 baseR!101 knownP!30) lt!2643138)))

(declare-fun b!7540497 () Bool)

(assert (=> b!7540497 (= e!4492785 (matchR!9505 (derivativeStep!5693 baseR!101 (head!15493 knownP!30)) (tail!15038 knownP!30)))))

(declare-fun b!7540498 () Bool)

(declare-fun res!3021888 () Bool)

(declare-fun e!4492784 () Bool)

(assert (=> b!7540498 (=> res!3021888 e!4492784)))

(assert (=> b!7540498 (= res!3021888 (not ((_ is ElementMatch!19903) baseR!101)))))

(assert (=> b!7540498 (= e!4492782 e!4492784)))

(declare-fun b!7540499 () Bool)

(declare-fun res!3021886 () Bool)

(assert (=> b!7540499 (=> res!3021886 e!4492784)))

(declare-fun e!4492787 () Bool)

(assert (=> b!7540499 (= res!3021886 e!4492787)))

(declare-fun res!3021884 () Bool)

(assert (=> b!7540499 (=> (not res!3021884) (not e!4492787))))

(assert (=> b!7540499 (= res!3021884 lt!2643138)))

(declare-fun b!7540500 () Bool)

(declare-fun e!4492788 () Bool)

(assert (=> b!7540500 (= e!4492788 e!4492786)))

(declare-fun res!3021885 () Bool)

(assert (=> b!7540500 (=> res!3021885 e!4492786)))

(assert (=> b!7540500 (= res!3021885 call!691696)))

(declare-fun b!7540501 () Bool)

(assert (=> b!7540501 (= e!4492785 (nullable!8676 baseR!101))))

(declare-fun b!7540502 () Bool)

(declare-fun res!3021887 () Bool)

(assert (=> b!7540502 (=> (not res!3021887) (not e!4492787))))

(assert (=> b!7540502 (= res!3021887 (not call!691696))))

(declare-fun b!7540503 () Bool)

(assert (=> b!7540503 (= e!4492784 e!4492788)))

(declare-fun res!3021883 () Bool)

(assert (=> b!7540503 (=> (not res!3021883) (not e!4492788))))

(assert (=> b!7540503 (= res!3021883 (not lt!2643138))))

(declare-fun b!7540504 () Bool)

(assert (=> b!7540504 (= e!4492783 e!4492782)))

(declare-fun c!1392231 () Bool)

(assert (=> b!7540504 (= c!1392231 ((_ is EmptyLang!19903) baseR!101))))

(declare-fun b!7540505 () Bool)

(assert (=> b!7540505 (= e!4492786 (not (= (head!15493 knownP!30) (c!1392150 baseR!101))))))

(declare-fun b!7540506 () Bool)

(assert (=> b!7540506 (= e!4492787 (= (head!15493 knownP!30) (c!1392150 baseR!101)))))

(declare-fun b!7540507 () Bool)

(declare-fun res!3021889 () Bool)

(assert (=> b!7540507 (=> (not res!3021889) (not e!4492787))))

(assert (=> b!7540507 (= res!3021889 (isEmpty!41372 (tail!15038 knownP!30)))))

(assert (= (and d!2311219 c!1392230) b!7540501))

(assert (= (and d!2311219 (not c!1392230)) b!7540497))

(assert (= (and d!2311219 c!1392232) b!7540496))

(assert (= (and d!2311219 (not c!1392232)) b!7540504))

(assert (= (and b!7540504 c!1392231) b!7540494))

(assert (= (and b!7540504 (not c!1392231)) b!7540498))

(assert (= (and b!7540498 (not res!3021888)) b!7540499))

(assert (= (and b!7540499 res!3021884) b!7540502))

(assert (= (and b!7540502 res!3021887) b!7540507))

(assert (= (and b!7540507 res!3021889) b!7540506))

(assert (= (and b!7540499 (not res!3021886)) b!7540503))

(assert (= (and b!7540503 res!3021883) b!7540500))

(assert (= (and b!7540500 (not res!3021885)) b!7540495))

(assert (= (and b!7540495 (not res!3021890)) b!7540505))

(assert (= (or b!7540496 b!7540500 b!7540502) bm!691691))

(assert (=> b!7540505 m!8109832))

(declare-fun m!8109978 () Bool)

(assert (=> b!7540501 m!8109978))

(assert (=> b!7540497 m!8109832))

(assert (=> b!7540497 m!8109832))

(declare-fun m!8109980 () Bool)

(assert (=> b!7540497 m!8109980))

(assert (=> b!7540497 m!8109822))

(assert (=> b!7540497 m!8109980))

(assert (=> b!7540497 m!8109822))

(declare-fun m!8109982 () Bool)

(assert (=> b!7540497 m!8109982))

(assert (=> b!7540506 m!8109832))

(assert (=> b!7540495 m!8109822))

(assert (=> b!7540495 m!8109822))

(declare-fun m!8109984 () Bool)

(assert (=> b!7540495 m!8109984))

(declare-fun m!8109986 () Bool)

(assert (=> d!2311219 m!8109986))

(assert (=> d!2311219 m!8109742))

(assert (=> bm!691691 m!8109986))

(assert (=> b!7540507 m!8109822))

(assert (=> b!7540507 m!8109822))

(assert (=> b!7540507 m!8109984))

(assert (=> b!7540216 d!2311219))

(declare-fun d!2311221 () Bool)

(assert (=> d!2311221 (= (head!15493 lt!2643060) (h!79110 lt!2643060))))

(assert (=> b!7540214 d!2311221))

(declare-fun d!2311223 () Bool)

(assert (=> d!2311223 (= lt!2643056 lt!2643071)))

(declare-fun lt!2643142 () Unit!166744)

(declare-fun choose!58344 (List!72786 List!72786 List!72786 List!72786 List!72786) Unit!166744)

(assert (=> d!2311223 (= lt!2643142 (choose!58344 testedP!423 lt!2643056 testedP!423 lt!2643071 input!7874))))

(assert (=> d!2311223 (isPrefix!6109 testedP!423 input!7874)))

(assert (=> d!2311223 (= (lemmaSamePrefixThenSameSuffix!2837 testedP!423 lt!2643056 testedP!423 lt!2643071 input!7874) lt!2643142)))

(declare-fun bs!1939993 () Bool)

(assert (= bs!1939993 d!2311223))

(declare-fun m!8109988 () Bool)

(assert (=> bs!1939993 m!8109988))

(assert (=> bs!1939993 m!8109752))

(assert (=> b!7540214 d!2311223))

(declare-fun d!2311225 () Bool)

(declare-fun e!4492791 () Bool)

(assert (=> d!2311225 e!4492791))

(declare-fun res!3021893 () Bool)

(assert (=> d!2311225 (=> res!3021893 e!4492791)))

(declare-fun lt!2643143 () Bool)

(assert (=> d!2311225 (= res!3021893 (not lt!2643143))))

(declare-fun e!4492792 () Bool)

(assert (=> d!2311225 (= lt!2643143 e!4492792)))

(declare-fun res!3021895 () Bool)

(assert (=> d!2311225 (=> res!3021895 e!4492792)))

(assert (=> d!2311225 (= res!3021895 ((_ is Nil!72662) knownP!30))))

(assert (=> d!2311225 (= (isPrefix!6109 knownP!30 input!7874) lt!2643143)))

(declare-fun b!7540512 () Bool)

(declare-fun e!4492793 () Bool)

(assert (=> b!7540512 (= e!4492792 e!4492793)))

(declare-fun res!3021894 () Bool)

(assert (=> b!7540512 (=> (not res!3021894) (not e!4492793))))

(assert (=> b!7540512 (= res!3021894 (not ((_ is Nil!72662) input!7874)))))

(declare-fun b!7540514 () Bool)

(assert (=> b!7540514 (= e!4492793 (isPrefix!6109 (tail!15038 knownP!30) (tail!15038 input!7874)))))

(declare-fun b!7540515 () Bool)

(assert (=> b!7540515 (= e!4492791 (>= (size!42399 input!7874) (size!42399 knownP!30)))))

(declare-fun b!7540513 () Bool)

(declare-fun res!3021896 () Bool)

(assert (=> b!7540513 (=> (not res!3021896) (not e!4492793))))

(assert (=> b!7540513 (= res!3021896 (= (head!15493 knownP!30) (head!15493 input!7874)))))

(assert (= (and d!2311225 (not res!3021895)) b!7540512))

(assert (= (and b!7540512 res!3021894) b!7540513))

(assert (= (and b!7540513 res!3021896) b!7540514))

(assert (= (and d!2311225 (not res!3021893)) b!7540515))

(assert (=> b!7540514 m!8109822))

(assert (=> b!7540514 m!8109914))

(assert (=> b!7540514 m!8109822))

(assert (=> b!7540514 m!8109914))

(declare-fun m!8110002 () Bool)

(assert (=> b!7540514 m!8110002))

(assert (=> b!7540515 m!8109758))

(assert (=> b!7540515 m!8109750))

(assert (=> b!7540513 m!8109832))

(assert (=> b!7540513 m!8109954))

(assert (=> b!7540235 d!2311225))

(declare-fun d!2311229 () Bool)

(declare-fun lt!2643144 () Regex!19903)

(assert (=> d!2311229 (validRegex!10331 lt!2643144)))

(declare-fun e!4492794 () Regex!19903)

(assert (=> d!2311229 (= lt!2643144 e!4492794)))

(declare-fun c!1392234 () Bool)

(assert (=> d!2311229 (= c!1392234 ((_ is Cons!72662) testedP!423))))

(assert (=> d!2311229 (validRegex!10331 baseR!101)))

(assert (=> d!2311229 (= (derivative!435 baseR!101 testedP!423) lt!2643144)))

(declare-fun b!7540516 () Bool)

(assert (=> b!7540516 (= e!4492794 (derivative!435 (derivativeStep!5693 baseR!101 (h!79110 testedP!423)) (t!387493 testedP!423)))))

(declare-fun b!7540517 () Bool)

(assert (=> b!7540517 (= e!4492794 baseR!101)))

(assert (= (and d!2311229 c!1392234) b!7540516))

(assert (= (and d!2311229 (not c!1392234)) b!7540517))

(declare-fun m!8110004 () Bool)

(assert (=> d!2311229 m!8110004))

(assert (=> d!2311229 m!8109742))

(declare-fun m!8110006 () Bool)

(assert (=> b!7540516 m!8110006))

(assert (=> b!7540516 m!8110006))

(declare-fun m!8110008 () Bool)

(assert (=> b!7540516 m!8110008))

(assert (=> b!7540225 d!2311229))

(declare-fun b!7540528 () Bool)

(declare-fun e!4492797 () Bool)

(assert (=> b!7540528 (= e!4492797 tp_is_empty!50161)))

(assert (=> b!7540234 (= tp!2193225 e!4492797)))

(declare-fun b!7540531 () Bool)

(declare-fun tp!2193242 () Bool)

(declare-fun tp!2193244 () Bool)

(assert (=> b!7540531 (= e!4492797 (and tp!2193242 tp!2193244))))

(declare-fun b!7540529 () Bool)

(declare-fun tp!2193246 () Bool)

(declare-fun tp!2193243 () Bool)

(assert (=> b!7540529 (= e!4492797 (and tp!2193246 tp!2193243))))

(declare-fun b!7540530 () Bool)

(declare-fun tp!2193245 () Bool)

(assert (=> b!7540530 (= e!4492797 tp!2193245)))

(assert (= (and b!7540234 ((_ is ElementMatch!19903) (regOne!40319 baseR!101))) b!7540528))

(assert (= (and b!7540234 ((_ is Concat!28748) (regOne!40319 baseR!101))) b!7540529))

(assert (= (and b!7540234 ((_ is Star!19903) (regOne!40319 baseR!101))) b!7540530))

(assert (= (and b!7540234 ((_ is Union!19903) (regOne!40319 baseR!101))) b!7540531))

(declare-fun b!7540532 () Bool)

(declare-fun e!4492798 () Bool)

(assert (=> b!7540532 (= e!4492798 tp_is_empty!50161)))

(assert (=> b!7540234 (= tp!2193219 e!4492798)))

(declare-fun b!7540535 () Bool)

(declare-fun tp!2193247 () Bool)

(declare-fun tp!2193249 () Bool)

(assert (=> b!7540535 (= e!4492798 (and tp!2193247 tp!2193249))))

(declare-fun b!7540533 () Bool)

(declare-fun tp!2193251 () Bool)

(declare-fun tp!2193248 () Bool)

(assert (=> b!7540533 (= e!4492798 (and tp!2193251 tp!2193248))))

(declare-fun b!7540534 () Bool)

(declare-fun tp!2193250 () Bool)

(assert (=> b!7540534 (= e!4492798 tp!2193250)))

(assert (= (and b!7540234 ((_ is ElementMatch!19903) (regTwo!40319 baseR!101))) b!7540532))

(assert (= (and b!7540234 ((_ is Concat!28748) (regTwo!40319 baseR!101))) b!7540533))

(assert (= (and b!7540234 ((_ is Star!19903) (regTwo!40319 baseR!101))) b!7540534))

(assert (= (and b!7540234 ((_ is Union!19903) (regTwo!40319 baseR!101))) b!7540535))

(declare-fun b!7540540 () Bool)

(declare-fun e!4492801 () Bool)

(declare-fun tp!2193254 () Bool)

(assert (=> b!7540540 (= e!4492801 (and tp_is_empty!50161 tp!2193254))))

(assert (=> b!7540224 (= tp!2193229 e!4492801)))

(assert (= (and b!7540224 ((_ is Cons!72662) (t!387493 knownP!30))) b!7540540))

(declare-fun b!7540541 () Bool)

(declare-fun e!4492802 () Bool)

(assert (=> b!7540541 (= e!4492802 tp_is_empty!50161)))

(assert (=> b!7540222 (= tp!2193226 e!4492802)))

(declare-fun b!7540544 () Bool)

(declare-fun tp!2193255 () Bool)

(declare-fun tp!2193257 () Bool)

(assert (=> b!7540544 (= e!4492802 (and tp!2193255 tp!2193257))))

(declare-fun b!7540542 () Bool)

(declare-fun tp!2193259 () Bool)

(declare-fun tp!2193256 () Bool)

(assert (=> b!7540542 (= e!4492802 (and tp!2193259 tp!2193256))))

(declare-fun b!7540543 () Bool)

(declare-fun tp!2193258 () Bool)

(assert (=> b!7540543 (= e!4492802 tp!2193258)))

(assert (= (and b!7540222 ((_ is ElementMatch!19903) (regOne!40318 r!24333))) b!7540541))

(assert (= (and b!7540222 ((_ is Concat!28748) (regOne!40318 r!24333))) b!7540542))

(assert (= (and b!7540222 ((_ is Star!19903) (regOne!40318 r!24333))) b!7540543))

(assert (= (and b!7540222 ((_ is Union!19903) (regOne!40318 r!24333))) b!7540544))

(declare-fun b!7540545 () Bool)

(declare-fun e!4492803 () Bool)

(assert (=> b!7540545 (= e!4492803 tp_is_empty!50161)))

(assert (=> b!7540222 (= tp!2193230 e!4492803)))

(declare-fun b!7540548 () Bool)

(declare-fun tp!2193260 () Bool)

(declare-fun tp!2193262 () Bool)

(assert (=> b!7540548 (= e!4492803 (and tp!2193260 tp!2193262))))

(declare-fun b!7540546 () Bool)

(declare-fun tp!2193264 () Bool)

(declare-fun tp!2193261 () Bool)

(assert (=> b!7540546 (= e!4492803 (and tp!2193264 tp!2193261))))

(declare-fun b!7540547 () Bool)

(declare-fun tp!2193263 () Bool)

(assert (=> b!7540547 (= e!4492803 tp!2193263)))

(assert (= (and b!7540222 ((_ is ElementMatch!19903) (regTwo!40318 r!24333))) b!7540545))

(assert (= (and b!7540222 ((_ is Concat!28748) (regTwo!40318 r!24333))) b!7540546))

(assert (= (and b!7540222 ((_ is Star!19903) (regTwo!40318 r!24333))) b!7540547))

(assert (= (and b!7540222 ((_ is Union!19903) (regTwo!40318 r!24333))) b!7540548))

(declare-fun b!7540549 () Bool)

(declare-fun e!4492804 () Bool)

(declare-fun tp!2193265 () Bool)

(assert (=> b!7540549 (= e!4492804 (and tp_is_empty!50161 tp!2193265))))

(assert (=> b!7540228 (= tp!2193221 e!4492804)))

(assert (= (and b!7540228 ((_ is Cons!72662) (t!387493 testedP!423))) b!7540549))

(declare-fun b!7540550 () Bool)

(declare-fun e!4492805 () Bool)

(assert (=> b!7540550 (= e!4492805 tp_is_empty!50161)))

(assert (=> b!7540231 (= tp!2193227 e!4492805)))

(declare-fun b!7540553 () Bool)

(declare-fun tp!2193266 () Bool)

(declare-fun tp!2193268 () Bool)

(assert (=> b!7540553 (= e!4492805 (and tp!2193266 tp!2193268))))

(declare-fun b!7540551 () Bool)

(declare-fun tp!2193270 () Bool)

(declare-fun tp!2193267 () Bool)

(assert (=> b!7540551 (= e!4492805 (and tp!2193270 tp!2193267))))

(declare-fun b!7540552 () Bool)

(declare-fun tp!2193269 () Bool)

(assert (=> b!7540552 (= e!4492805 tp!2193269)))

(assert (= (and b!7540231 ((_ is ElementMatch!19903) (regOne!40318 baseR!101))) b!7540550))

(assert (= (and b!7540231 ((_ is Concat!28748) (regOne!40318 baseR!101))) b!7540551))

(assert (= (and b!7540231 ((_ is Star!19903) (regOne!40318 baseR!101))) b!7540552))

(assert (= (and b!7540231 ((_ is Union!19903) (regOne!40318 baseR!101))) b!7540553))

(declare-fun b!7540554 () Bool)

(declare-fun e!4492806 () Bool)

(assert (=> b!7540554 (= e!4492806 tp_is_empty!50161)))

(assert (=> b!7540231 (= tp!2193220 e!4492806)))

(declare-fun b!7540557 () Bool)

(declare-fun tp!2193271 () Bool)

(declare-fun tp!2193273 () Bool)

(assert (=> b!7540557 (= e!4492806 (and tp!2193271 tp!2193273))))

(declare-fun b!7540555 () Bool)

(declare-fun tp!2193275 () Bool)

(declare-fun tp!2193272 () Bool)

(assert (=> b!7540555 (= e!4492806 (and tp!2193275 tp!2193272))))

(declare-fun b!7540556 () Bool)

(declare-fun tp!2193274 () Bool)

(assert (=> b!7540556 (= e!4492806 tp!2193274)))

(assert (= (and b!7540231 ((_ is ElementMatch!19903) (regTwo!40318 baseR!101))) b!7540554))

(assert (= (and b!7540231 ((_ is Concat!28748) (regTwo!40318 baseR!101))) b!7540555))

(assert (= (and b!7540231 ((_ is Star!19903) (regTwo!40318 baseR!101))) b!7540556))

(assert (= (and b!7540231 ((_ is Union!19903) (regTwo!40318 baseR!101))) b!7540557))

(declare-fun b!7540562 () Bool)

(declare-fun e!4492809 () Bool)

(assert (=> b!7540562 (= e!4492809 tp_is_empty!50161)))

(assert (=> b!7540221 (= tp!2193223 e!4492809)))

(declare-fun b!7540565 () Bool)

(declare-fun tp!2193276 () Bool)

(declare-fun tp!2193278 () Bool)

(assert (=> b!7540565 (= e!4492809 (and tp!2193276 tp!2193278))))

(declare-fun b!7540563 () Bool)

(declare-fun tp!2193280 () Bool)

(declare-fun tp!2193277 () Bool)

(assert (=> b!7540563 (= e!4492809 (and tp!2193280 tp!2193277))))

(declare-fun b!7540564 () Bool)

(declare-fun tp!2193279 () Bool)

(assert (=> b!7540564 (= e!4492809 tp!2193279)))

(assert (= (and b!7540221 ((_ is ElementMatch!19903) (regOne!40319 r!24333))) b!7540562))

(assert (= (and b!7540221 ((_ is Concat!28748) (regOne!40319 r!24333))) b!7540563))

(assert (= (and b!7540221 ((_ is Star!19903) (regOne!40319 r!24333))) b!7540564))

(assert (= (and b!7540221 ((_ is Union!19903) (regOne!40319 r!24333))) b!7540565))

(declare-fun b!7540566 () Bool)

(declare-fun e!4492810 () Bool)

(assert (=> b!7540566 (= e!4492810 tp_is_empty!50161)))

(assert (=> b!7540221 (= tp!2193224 e!4492810)))

(declare-fun b!7540569 () Bool)

(declare-fun tp!2193281 () Bool)

(declare-fun tp!2193283 () Bool)

(assert (=> b!7540569 (= e!4492810 (and tp!2193281 tp!2193283))))

(declare-fun b!7540567 () Bool)

(declare-fun tp!2193285 () Bool)

(declare-fun tp!2193282 () Bool)

(assert (=> b!7540567 (= e!4492810 (and tp!2193285 tp!2193282))))

(declare-fun b!7540568 () Bool)

(declare-fun tp!2193284 () Bool)

(assert (=> b!7540568 (= e!4492810 tp!2193284)))

(assert (= (and b!7540221 ((_ is ElementMatch!19903) (regTwo!40319 r!24333))) b!7540566))

(assert (= (and b!7540221 ((_ is Concat!28748) (regTwo!40319 r!24333))) b!7540567))

(assert (= (and b!7540221 ((_ is Star!19903) (regTwo!40319 r!24333))) b!7540568))

(assert (= (and b!7540221 ((_ is Union!19903) (regTwo!40319 r!24333))) b!7540569))

(declare-fun b!7540570 () Bool)

(declare-fun e!4492811 () Bool)

(declare-fun tp!2193286 () Bool)

(assert (=> b!7540570 (= e!4492811 (and tp_is_empty!50161 tp!2193286))))

(assert (=> b!7540230 (= tp!2193231 e!4492811)))

(assert (= (and b!7540230 ((_ is Cons!72662) (t!387493 input!7874))) b!7540570))

(declare-fun b!7540571 () Bool)

(declare-fun e!4492812 () Bool)

(assert (=> b!7540571 (= e!4492812 tp_is_empty!50161)))

(assert (=> b!7540219 (= tp!2193228 e!4492812)))

(declare-fun b!7540574 () Bool)

(declare-fun tp!2193287 () Bool)

(declare-fun tp!2193289 () Bool)

(assert (=> b!7540574 (= e!4492812 (and tp!2193287 tp!2193289))))

(declare-fun b!7540572 () Bool)

(declare-fun tp!2193291 () Bool)

(declare-fun tp!2193288 () Bool)

(assert (=> b!7540572 (= e!4492812 (and tp!2193291 tp!2193288))))

(declare-fun b!7540573 () Bool)

(declare-fun tp!2193290 () Bool)

(assert (=> b!7540573 (= e!4492812 tp!2193290)))

(assert (= (and b!7540219 ((_ is ElementMatch!19903) (reg!20232 baseR!101))) b!7540571))

(assert (= (and b!7540219 ((_ is Concat!28748) (reg!20232 baseR!101))) b!7540572))

(assert (= (and b!7540219 ((_ is Star!19903) (reg!20232 baseR!101))) b!7540573))

(assert (= (and b!7540219 ((_ is Union!19903) (reg!20232 baseR!101))) b!7540574))

(declare-fun b!7540575 () Bool)

(declare-fun e!4492813 () Bool)

(assert (=> b!7540575 (= e!4492813 tp_is_empty!50161)))

(assert (=> b!7540220 (= tp!2193222 e!4492813)))

(declare-fun b!7540578 () Bool)

(declare-fun tp!2193292 () Bool)

(declare-fun tp!2193294 () Bool)

(assert (=> b!7540578 (= e!4492813 (and tp!2193292 tp!2193294))))

(declare-fun b!7540576 () Bool)

(declare-fun tp!2193296 () Bool)

(declare-fun tp!2193293 () Bool)

(assert (=> b!7540576 (= e!4492813 (and tp!2193296 tp!2193293))))

(declare-fun b!7540577 () Bool)

(declare-fun tp!2193295 () Bool)

(assert (=> b!7540577 (= e!4492813 tp!2193295)))

(assert (= (and b!7540220 ((_ is ElementMatch!19903) (reg!20232 r!24333))) b!7540575))

(assert (= (and b!7540220 ((_ is Concat!28748) (reg!20232 r!24333))) b!7540576))

(assert (= (and b!7540220 ((_ is Star!19903) (reg!20232 r!24333))) b!7540577))

(assert (= (and b!7540220 ((_ is Union!19903) (reg!20232 r!24333))) b!7540578))

(check-sat (not b!7540513) (not b!7540535) (not b!7540501) (not bm!691682) (not d!2311201) (not b!7540295) (not b!7540306) (not b!7540505) (not b!7540348) (not bm!691680) (not b!7540325) (not d!2311193) (not d!2311167) (not b!7540336) (not b!7540471) (not b!7540557) (not b!7540542) (not b!7540555) (not d!2311217) (not b!7540530) (not b!7540333) (not b!7540570) (not bm!691691) (not d!2311205) (not b!7540548) (not b!7540386) (not b!7540552) (not b!7540574) (not b!7540243) (not b!7540376) (not b!7540254) (not b!7540572) (not b!7540391) (not b!7540399) (not d!2311153) (not d!2311229) (not b!7540339) (not d!2311187) (not b!7540390) (not b!7540453) (not b!7540506) (not b!7540474) (not b!7540326) (not b!7540385) (not b!7540534) (not b!7540556) (not b!7540401) (not b!7540347) (not d!2311197) (not b!7540300) (not b!7540576) (not b!7540569) (not b!7540495) (not b!7540547) (not d!2311161) (not b!7540257) (not b!7540397) (not b!7540404) (not d!2311219) (not b!7540472) (not b!7540529) (not b!7540563) (not b!7540531) (not b!7540507) (not d!2311149) (not bm!691662) (not bm!691689) (not b!7540291) (not b!7540301) (not d!2311195) (not b!7540551) (not d!2311175) (not b!7540405) (not d!2311151) (not b!7540553) (not b!7540407) (not b!7540567) (not b!7540475) (not b!7540549) (not b!7540515) (not b!7540497) (not b!7540258) (not b!7540479) (not bm!691654) (not d!2311177) (not d!2311209) (not b!7540543) (not d!2311173) (not d!2311199) (not b!7540577) (not d!2311147) (not d!2311185) (not b!7540533) (not b!7540578) (not b!7540540) (not b!7540546) (not b!7540340) (not bm!691661) (not d!2311223) (not b!7540573) (not b!7540470) (not b!7540241) (not b!7540568) (not b!7540299) (not b!7540514) (not b!7540253) (not b!7540384) (not b!7540327) (not b!7540544) tp_is_empty!50161 (not b!7540565) (not b!7540289) (not b!7540476) (not b!7540335) (not b!7540564) (not b!7540516) (not d!2311191) (not bm!691688))
(check-sat)
