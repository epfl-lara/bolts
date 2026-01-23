; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278652 () Bool)

(assert start!278652)

(declare-fun b!2862809 () Bool)

(declare-fun condSetEmpty!25356 () Bool)

(declare-datatypes ((C!17450 0))(
  ( (C!17451 (val!10759 Int)) )
))
(declare-datatypes ((Regex!8634 0))(
  ( (ElementMatch!8634 (c!461477 C!17450)) (Concat!13955 (regOne!17780 Regex!8634) (regTwo!17780 Regex!8634)) (EmptyExpr!8634) (Star!8634 (reg!8963 Regex!8634)) (EmptyLang!8634) (Union!8634 (regOne!17781 Regex!8634) (regTwo!17781 Regex!8634)) )
))
(declare-datatypes ((List!34251 0))(
  ( (Nil!34127) (Cons!34127 (h!39547 Regex!8634) (t!233288 List!34251)) )
))
(declare-datatypes ((Context!5188 0))(
  ( (Context!5189 (exprs!3094 List!34251)) )
))
(declare-fun lt!1014851 () (Set Context!5188))

(assert (=> b!2862809 (= condSetEmpty!25356 (= lt!1014851 (as set.empty (Set Context!5188))))))

(declare-fun setRes!25356 () Bool)

(assert (=> b!2862809 setRes!25356))

(declare-fun setIsEmpty!25356 () Bool)

(assert (=> setIsEmpty!25356 setRes!25356))

(declare-fun setNonEmpty!25356 () Bool)

(assert (=> setNonEmpty!25356 (= setRes!25356 true)))

(declare-fun setElem!25356 () Context!5188)

(declare-fun setRest!25356 () (Set Context!5188))

(assert (=> setNonEmpty!25356 (= lt!1014851 (set.union (set.insert setElem!25356 (as set.empty (Set Context!5188))) setRest!25356))))

(assert (= (and b!2862809 condSetEmpty!25356) setIsEmpty!25356))

(assert (= (and b!2862809 (not condSetEmpty!25356)) setNonEmpty!25356))

(assert (=> b!2862809 true))

(declare-fun e!1812285 () Bool)

(declare-fun e!1812288 () Bool)

(assert (=> b!2862809 (= e!1812285 (not e!1812288))))

(declare-fun res!1188628 () Bool)

(assert (=> b!2862809 (=> res!1188628 e!1812288)))

(declare-datatypes ((List!34252 0))(
  ( (Nil!34128) (Cons!34128 (h!39548 C!17450) (t!233289 List!34252)) )
))
(declare-fun lt!1014850 () List!34252)

(declare-fun matchZipper!432 ((Set Context!5188) List!34252) Bool)

(assert (=> b!2862809 (= res!1188628 (not (matchZipper!432 lt!1014851 lt!1014850)))))

(declare-fun lambda!105354 () Int)

(declare-fun pickWitness!325 (Int) List!34252)

(assert (=> b!2862809 (= lt!1014850 (pickWitness!325 lambda!105354))))

(declare-fun Exists!1318 (Int) Bool)

(assert (=> b!2862809 (Exists!1318 lambda!105354)))

(assert (=> b!2862809 (Exists!1318 lambda!105354)))

(declare-datatypes ((Unit!47791 0))(
  ( (Unit!47792) )
))
(declare-fun lt!1014852 () Unit!47791)

(declare-fun prefix!919 () List!34252)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!364 ((Set Context!5188) List!34252) Unit!47791)

(assert (=> b!2862809 (= lt!1014852 (lemmaPrefixMatchThenExistsStringThatMatches!364 lt!1014851 (t!233289 prefix!919)))))

(declare-fun z!960 () (Set Context!5188))

(declare-fun derivationStepZipper!433 ((Set Context!5188) C!17450) (Set Context!5188))

(assert (=> b!2862809 (= lt!1014851 (derivationStepZipper!433 z!960 (h!39548 prefix!919)))))

(declare-fun setIsEmpty!25353 () Bool)

(declare-fun setRes!25353 () Bool)

(assert (=> setIsEmpty!25353 setRes!25353))

(declare-fun b!2862811 () Bool)

(declare-fun res!1188629 () Bool)

(assert (=> b!2862811 (=> (not res!1188629) (not e!1812285))))

(assert (=> b!2862811 (= res!1188629 (not (is-Nil!34128 prefix!919)))))

(declare-fun b!2862812 () Bool)

(declare-fun e!1812287 () Bool)

(declare-fun tp_is_empty!15005 () Bool)

(declare-fun tp!921808 () Bool)

(assert (=> b!2862812 (= e!1812287 (and tp_is_empty!15005 tp!921808))))

(declare-fun tp!921809 () Bool)

(declare-fun setElem!25353 () Context!5188)

(declare-fun setNonEmpty!25353 () Bool)

(declare-fun e!1812286 () Bool)

(declare-fun inv!46173 (Context!5188) Bool)

(assert (=> setNonEmpty!25353 (= setRes!25353 (and tp!921809 (inv!46173 setElem!25353) e!1812286))))

(declare-fun setRest!25353 () (Set Context!5188))

(assert (=> setNonEmpty!25353 (= z!960 (set.union (set.insert setElem!25353 (as set.empty (Set Context!5188))) setRest!25353))))

(declare-fun b!2862813 () Bool)

(declare-fun isPrefix!2693 (List!34252 List!34252) Bool)

(assert (=> b!2862813 (= e!1812288 (isPrefix!2693 (t!233289 prefix!919) lt!1014850))))

(declare-fun res!1188627 () Bool)

(assert (=> start!278652 (=> (not res!1188627) (not e!1812285))))

(declare-fun prefixMatchZipper!316 ((Set Context!5188) List!34252) Bool)

(assert (=> start!278652 (= res!1188627 (prefixMatchZipper!316 z!960 prefix!919))))

(assert (=> start!278652 e!1812285))

(declare-fun condSetEmpty!25353 () Bool)

(assert (=> start!278652 (= condSetEmpty!25353 (= z!960 (as set.empty (Set Context!5188))))))

(assert (=> start!278652 setRes!25353))

(assert (=> start!278652 e!1812287))

(declare-fun b!2862810 () Bool)

(declare-fun tp!921807 () Bool)

(assert (=> b!2862810 (= e!1812286 tp!921807)))

(assert (= (and start!278652 res!1188627) b!2862811))

(assert (= (and b!2862811 res!1188629) b!2862809))

(assert (= (and b!2862809 (not res!1188628)) b!2862813))

(assert (= (and start!278652 condSetEmpty!25353) setIsEmpty!25353))

(assert (= (and start!278652 (not condSetEmpty!25353)) setNonEmpty!25353))

(assert (= setNonEmpty!25353 b!2862810))

(assert (= (and start!278652 (is-Cons!34128 prefix!919)) b!2862812))

(declare-fun m!3282113 () Bool)

(assert (=> b!2862809 m!3282113))

(declare-fun m!3282115 () Bool)

(assert (=> b!2862809 m!3282115))

(declare-fun m!3282117 () Bool)

(assert (=> b!2862809 m!3282117))

(declare-fun m!3282119 () Bool)

(assert (=> b!2862809 m!3282119))

(declare-fun m!3282121 () Bool)

(assert (=> b!2862809 m!3282121))

(assert (=> b!2862809 m!3282117))

(declare-fun m!3282123 () Bool)

(assert (=> setNonEmpty!25353 m!3282123))

(declare-fun m!3282125 () Bool)

(assert (=> b!2862813 m!3282125))

(declare-fun m!3282127 () Bool)

(assert (=> start!278652 m!3282127))

(push 1)

(assert tp_is_empty!15005)

(assert (not b!2862810))

(assert (not start!278652))

(assert (not b!2862812))

(assert (not setNonEmpty!25356))

(assert (not b!2862813))

(assert (not setNonEmpty!25353))

(assert (not b!2862809))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!827453 () Bool)

(declare-fun c!461481 () Bool)

(declare-fun isEmpty!18629 (List!34252) Bool)

(assert (=> d!827453 (= c!461481 (isEmpty!18629 lt!1014850))))

(declare-fun e!1812307 () Bool)

(assert (=> d!827453 (= (matchZipper!432 lt!1014851 lt!1014850) e!1812307)))

(declare-fun b!2862845 () Bool)

(declare-fun nullableZipper!686 ((Set Context!5188)) Bool)

(assert (=> b!2862845 (= e!1812307 (nullableZipper!686 lt!1014851))))

(declare-fun b!2862846 () Bool)

(declare-fun head!6301 (List!34252) C!17450)

(declare-fun tail!4526 (List!34252) List!34252)

(assert (=> b!2862846 (= e!1812307 (matchZipper!432 (derivationStepZipper!433 lt!1014851 (head!6301 lt!1014850)) (tail!4526 lt!1014850)))))

(assert (= (and d!827453 c!461481) b!2862845))

(assert (= (and d!827453 (not c!461481)) b!2862846))

(declare-fun m!3282145 () Bool)

(assert (=> d!827453 m!3282145))

(declare-fun m!3282147 () Bool)

(assert (=> b!2862845 m!3282147))

(declare-fun m!3282149 () Bool)

(assert (=> b!2862846 m!3282149))

(assert (=> b!2862846 m!3282149))

(declare-fun m!3282151 () Bool)

(assert (=> b!2862846 m!3282151))

(declare-fun m!3282153 () Bool)

(assert (=> b!2862846 m!3282153))

(assert (=> b!2862846 m!3282151))

(assert (=> b!2862846 m!3282153))

(declare-fun m!3282155 () Bool)

(assert (=> b!2862846 m!3282155))

(assert (=> b!2862809 d!827453))

(declare-fun d!827455 () Bool)

(declare-fun choose!16847 (Int) Bool)

(assert (=> d!827455 (= (Exists!1318 lambda!105354) (choose!16847 lambda!105354))))

(declare-fun bs!520499 () Bool)

(assert (= bs!520499 d!827455))

(declare-fun m!3282157 () Bool)

(assert (=> bs!520499 m!3282157))

(assert (=> b!2862809 d!827455))

(declare-fun bs!520501 () Bool)

(declare-fun d!827457 () Bool)

(assert (= bs!520501 (and d!827457 b!2862809)))

(declare-fun lambda!105365 () Int)

(assert (=> bs!520501 (= lambda!105365 lambda!105354)))

(assert (=> d!827457 true))

(declare-fun condSetEmpty!25363 () Bool)

(assert (=> d!827457 (= condSetEmpty!25363 (= lt!1014851 (as set.empty (Set Context!5188))))))

(declare-fun setRes!25363 () Bool)

(assert (=> d!827457 setRes!25363))

(declare-fun setIsEmpty!25363 () Bool)

(assert (=> setIsEmpty!25363 setRes!25363))

(declare-fun setNonEmpty!25363 () Bool)

(assert (=> setNonEmpty!25363 (= setRes!25363 true)))

(declare-fun setElem!25363 () Context!5188)

(declare-fun setRest!25363 () (Set Context!5188))

(assert (=> setNonEmpty!25363 (= lt!1014851 (set.union (set.insert setElem!25363 (as set.empty (Set Context!5188))) setRest!25363))))

(assert (= (and d!827457 condSetEmpty!25363) setIsEmpty!25363))

(assert (= (and d!827457 (not condSetEmpty!25363)) setNonEmpty!25363))

(assert (=> d!827457 (Exists!1318 lambda!105365)))

(declare-fun lt!1014864 () Unit!47791)

(declare-fun choose!16848 ((Set Context!5188) List!34252) Unit!47791)

(assert (=> d!827457 (= lt!1014864 (choose!16848 lt!1014851 (t!233289 prefix!919)))))

(assert (=> d!827457 (prefixMatchZipper!316 lt!1014851 (t!233289 prefix!919))))

(assert (=> d!827457 (= (lemmaPrefixMatchThenExistsStringThatMatches!364 lt!1014851 (t!233289 prefix!919)) lt!1014864)))

(declare-fun m!3282161 () Bool)

(assert (=> d!827457 m!3282161))

(declare-fun m!3282163 () Bool)

(assert (=> d!827457 m!3282163))

(declare-fun m!3282165 () Bool)

(assert (=> d!827457 m!3282165))

(assert (=> b!2862809 d!827457))

(declare-fun d!827463 () Bool)

(declare-fun lt!1014867 () List!34252)

(declare-fun dynLambda!14247 (Int List!34252) Bool)

(assert (=> d!827463 (dynLambda!14247 lambda!105354 lt!1014867)))

(declare-fun choose!16849 (Int) List!34252)

(assert (=> d!827463 (= lt!1014867 (choose!16849 lambda!105354))))

(assert (=> d!827463 (Exists!1318 lambda!105354)))

(assert (=> d!827463 (= (pickWitness!325 lambda!105354) lt!1014867)))

(declare-fun b_lambda!85787 () Bool)

(assert (=> (not b_lambda!85787) (not d!827463)))

(declare-fun bs!520502 () Bool)

(assert (= bs!520502 d!827463))

(declare-fun m!3282167 () Bool)

(assert (=> bs!520502 m!3282167))

(declare-fun m!3282169 () Bool)

(assert (=> bs!520502 m!3282169))

(assert (=> bs!520502 m!3282117))

(assert (=> b!2862809 d!827463))

(declare-fun d!827465 () Bool)

(assert (=> d!827465 true))

(declare-fun lambda!105368 () Int)

(declare-fun flatMap!205 ((Set Context!5188) Int) (Set Context!5188))

(assert (=> d!827465 (= (derivationStepZipper!433 z!960 (h!39548 prefix!919)) (flatMap!205 z!960 lambda!105368))))

(declare-fun bs!520503 () Bool)

(assert (= bs!520503 d!827465))

(declare-fun m!3282171 () Bool)

(assert (=> bs!520503 m!3282171))

(assert (=> b!2862809 d!827465))

(declare-fun d!827467 () Bool)

(declare-fun c!461489 () Bool)

(assert (=> d!827467 (= c!461489 (isEmpty!18629 prefix!919))))

(declare-fun e!1812324 () Bool)

(assert (=> d!827467 (= (prefixMatchZipper!316 z!960 prefix!919) e!1812324)))

(declare-fun b!2862873 () Bool)

(declare-fun lostCauseZipper!544 ((Set Context!5188)) Bool)

(assert (=> b!2862873 (= e!1812324 (not (lostCauseZipper!544 z!960)))))

(declare-fun b!2862874 () Bool)

(assert (=> b!2862874 (= e!1812324 (prefixMatchZipper!316 (derivationStepZipper!433 z!960 (head!6301 prefix!919)) (tail!4526 prefix!919)))))

(assert (= (and d!827467 c!461489) b!2862873))

(assert (= (and d!827467 (not c!461489)) b!2862874))

(declare-fun m!3282199 () Bool)

(assert (=> d!827467 m!3282199))

(declare-fun m!3282201 () Bool)

(assert (=> b!2862873 m!3282201))

(declare-fun m!3282203 () Bool)

(assert (=> b!2862874 m!3282203))

(assert (=> b!2862874 m!3282203))

(declare-fun m!3282205 () Bool)

(assert (=> b!2862874 m!3282205))

(declare-fun m!3282207 () Bool)

(assert (=> b!2862874 m!3282207))

(assert (=> b!2862874 m!3282205))

(assert (=> b!2862874 m!3282207))

(declare-fun m!3282209 () Bool)

(assert (=> b!2862874 m!3282209))

(assert (=> start!278652 d!827467))

(declare-fun d!827473 () Bool)

(declare-fun lambda!105373 () Int)

(declare-fun forall!6969 (List!34251 Int) Bool)

(assert (=> d!827473 (= (inv!46173 setElem!25353) (forall!6969 (exprs!3094 setElem!25353) lambda!105373))))

(declare-fun bs!520506 () Bool)

(assert (= bs!520506 d!827473))

(declare-fun m!3282217 () Bool)

(assert (=> bs!520506 m!3282217))

(assert (=> setNonEmpty!25353 d!827473))

(declare-fun b!2862893 () Bool)

(declare-fun e!1812335 () Bool)

(assert (=> b!2862893 (= e!1812335 (isPrefix!2693 (tail!4526 (t!233289 prefix!919)) (tail!4526 lt!1014850)))))

(declare-fun b!2862891 () Bool)

(declare-fun e!1812334 () Bool)

(assert (=> b!2862891 (= e!1812334 e!1812335)))

(declare-fun res!1188668 () Bool)

(assert (=> b!2862891 (=> (not res!1188668) (not e!1812335))))

(assert (=> b!2862891 (= res!1188668 (not (is-Nil!34128 lt!1014850)))))

(declare-fun b!2862894 () Bool)

(declare-fun e!1812336 () Bool)

(declare-fun size!26289 (List!34252) Int)

(assert (=> b!2862894 (= e!1812336 (>= (size!26289 lt!1014850) (size!26289 (t!233289 prefix!919))))))

(declare-fun b!2862892 () Bool)

(declare-fun res!1188665 () Bool)

(assert (=> b!2862892 (=> (not res!1188665) (not e!1812335))))

(assert (=> b!2862892 (= res!1188665 (= (head!6301 (t!233289 prefix!919)) (head!6301 lt!1014850)))))

(declare-fun d!827479 () Bool)

(assert (=> d!827479 e!1812336))

(declare-fun res!1188667 () Bool)

(assert (=> d!827479 (=> res!1188667 e!1812336)))

(declare-fun lt!1014876 () Bool)

(assert (=> d!827479 (= res!1188667 (not lt!1014876))))

(assert (=> d!827479 (= lt!1014876 e!1812334)))

(declare-fun res!1188666 () Bool)

(assert (=> d!827479 (=> res!1188666 e!1812334)))

(assert (=> d!827479 (= res!1188666 (is-Nil!34128 (t!233289 prefix!919)))))

(assert (=> d!827479 (= (isPrefix!2693 (t!233289 prefix!919) lt!1014850) lt!1014876)))

(assert (= (and d!827479 (not res!1188666)) b!2862891))

(assert (= (and b!2862891 res!1188668) b!2862892))

(assert (= (and b!2862892 res!1188665) b!2862893))

(assert (= (and d!827479 (not res!1188667)) b!2862894))

(declare-fun m!3282229 () Bool)

(assert (=> b!2862893 m!3282229))

(assert (=> b!2862893 m!3282153))

(assert (=> b!2862893 m!3282229))

(assert (=> b!2862893 m!3282153))

(declare-fun m!3282231 () Bool)

(assert (=> b!2862893 m!3282231))

(declare-fun m!3282233 () Bool)

(assert (=> b!2862894 m!3282233))

(declare-fun m!3282235 () Bool)

(assert (=> b!2862894 m!3282235))

(declare-fun m!3282237 () Bool)

(assert (=> b!2862892 m!3282237))

(assert (=> b!2862892 m!3282149))

(assert (=> b!2862813 d!827479))

(declare-fun condSetEmpty!25366 () Bool)

(assert (=> setNonEmpty!25353 (= condSetEmpty!25366 (= setRest!25353 (as set.empty (Set Context!5188))))))

(declare-fun setRes!25366 () Bool)

(assert (=> setNonEmpty!25353 (= tp!921809 setRes!25366)))

(declare-fun setIsEmpty!25366 () Bool)

(assert (=> setIsEmpty!25366 setRes!25366))

(declare-fun tp!921823 () Bool)

(declare-fun e!1812339 () Bool)

(declare-fun setElem!25366 () Context!5188)

(declare-fun setNonEmpty!25366 () Bool)

(assert (=> setNonEmpty!25366 (= setRes!25366 (and tp!921823 (inv!46173 setElem!25366) e!1812339))))

(declare-fun setRest!25366 () (Set Context!5188))

(assert (=> setNonEmpty!25366 (= setRest!25353 (set.union (set.insert setElem!25366 (as set.empty (Set Context!5188))) setRest!25366))))

(declare-fun b!2862899 () Bool)

(declare-fun tp!921824 () Bool)

(assert (=> b!2862899 (= e!1812339 tp!921824)))

(assert (= (and setNonEmpty!25353 condSetEmpty!25366) setIsEmpty!25366))

(assert (= (and setNonEmpty!25353 (not condSetEmpty!25366)) setNonEmpty!25366))

(assert (= setNonEmpty!25366 b!2862899))

(declare-fun m!3282239 () Bool)

(assert (=> setNonEmpty!25366 m!3282239))

(declare-fun b!2862904 () Bool)

(declare-fun e!1812342 () Bool)

(declare-fun tp!921827 () Bool)

(assert (=> b!2862904 (= e!1812342 (and tp_is_empty!15005 tp!921827))))

(assert (=> b!2862812 (= tp!921808 e!1812342)))

(assert (= (and b!2862812 (is-Cons!34128 (t!233289 prefix!919))) b!2862904))

(declare-fun condSetEmpty!25367 () Bool)

(assert (=> setNonEmpty!25356 (= condSetEmpty!25367 (= setRest!25356 (as set.empty (Set Context!5188))))))

(declare-fun setRes!25367 () Bool)

(assert (=> setNonEmpty!25356 setRes!25367))

(declare-fun setIsEmpty!25367 () Bool)

(assert (=> setIsEmpty!25367 setRes!25367))

(declare-fun setNonEmpty!25367 () Bool)

(assert (=> setNonEmpty!25367 (= setRes!25367 true)))

(declare-fun setElem!25367 () Context!5188)

(declare-fun setRest!25367 () (Set Context!5188))

(assert (=> setNonEmpty!25367 (= setRest!25356 (set.union (set.insert setElem!25367 (as set.empty (Set Context!5188))) setRest!25367))))

(assert (= (and setNonEmpty!25356 condSetEmpty!25367) setIsEmpty!25367))

(assert (= (and setNonEmpty!25356 (not condSetEmpty!25367)) setNonEmpty!25367))

(declare-fun b!2862909 () Bool)

(declare-fun e!1812345 () Bool)

(declare-fun tp!921832 () Bool)

(declare-fun tp!921833 () Bool)

(assert (=> b!2862909 (= e!1812345 (and tp!921832 tp!921833))))

(assert (=> b!2862810 (= tp!921807 e!1812345)))

(assert (= (and b!2862810 (is-Cons!34127 (exprs!3094 setElem!25353))) b!2862909))

(declare-fun b_lambda!85791 () Bool)

(assert (= b_lambda!85787 (or b!2862809 b_lambda!85791)))

(declare-fun bs!520508 () Bool)

(declare-fun d!827485 () Bool)

(assert (= bs!520508 (and d!827485 b!2862809)))

(declare-fun res!1188669 () Bool)

(declare-fun e!1812346 () Bool)

(assert (=> bs!520508 (=> (not res!1188669) (not e!1812346))))

(assert (=> bs!520508 (= res!1188669 (matchZipper!432 lt!1014851 lt!1014867))))

(assert (=> bs!520508 (= (dynLambda!14247 lambda!105354 lt!1014867) e!1812346)))

(declare-fun b!2862910 () Bool)

(assert (=> b!2862910 (= e!1812346 (isPrefix!2693 (t!233289 prefix!919) lt!1014867))))

(assert (= (and bs!520508 res!1188669) b!2862910))

(declare-fun m!3282241 () Bool)

(assert (=> bs!520508 m!3282241))

(declare-fun m!3282243 () Bool)

(assert (=> b!2862910 m!3282243))

(assert (=> d!827463 d!827485))

(push 1)

(assert tp_is_empty!15005)

(assert (not d!827465))

(assert (not b!2862892))

(assert (not b!2862873))

(assert (not b!2862894))

(assert (not d!827455))

(assert (not b!2862910))

(assert (not d!827467))

(assert (not setNonEmpty!25366))

(assert (not setNonEmpty!25367))

(assert (not b!2862874))

(assert (not setNonEmpty!25363))

(assert (not b!2862909))

(assert (not bs!520508))

(assert (not b_lambda!85791))

(assert (not b!2862904))

(assert (not b!2862899))

(assert (not d!827453))

(assert (not d!827457))

(assert (not d!827463))

(assert (not d!827473))

(assert (not b!2862893))

(assert (not b!2862846))

(assert (not b!2862845))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

