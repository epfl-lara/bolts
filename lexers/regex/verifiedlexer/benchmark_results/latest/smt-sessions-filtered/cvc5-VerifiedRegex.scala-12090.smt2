; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677772 () Bool)

(assert start!677772)

(declare-fun b!7023410 () Bool)

(assert (=> b!7023410 true))

(declare-fun b!7023414 () Bool)

(assert (=> b!7023414 true))

(declare-fun e!4222039 () Bool)

(declare-fun e!4222041 () Bool)

(assert (=> b!7023410 (= e!4222039 (not e!4222041))))

(declare-fun res!2867098 () Bool)

(assert (=> b!7023410 (=> res!2867098 e!4222041)))

(declare-datatypes ((C!35122 0))(
  ( (C!35123 (val!27263 Int)) )
))
(declare-datatypes ((Regex!17426 0))(
  ( (ElementMatch!17426 (c!1305349 C!35122)) (Concat!26271 (regOne!35364 Regex!17426) (regTwo!35364 Regex!17426)) (EmptyExpr!17426) (Star!17426 (reg!17755 Regex!17426)) (EmptyLang!17426) (Union!17426 (regOne!35365 Regex!17426) (regTwo!35365 Regex!17426)) )
))
(declare-datatypes ((List!67806 0))(
  ( (Nil!67682) (Cons!67682 (h!74130 Regex!17426) (t!381561 List!67806)) )
))
(declare-datatypes ((Context!12844 0))(
  ( (Context!12845 (exprs!6922 List!67806)) )
))
(declare-fun lt!2513120 () Context!12844)

(declare-datatypes ((List!67807 0))(
  ( (Nil!67683) (Cons!67683 (h!74131 C!35122) (t!381562 List!67807)) )
))
(declare-fun s!7408 () List!67807)

(declare-fun matchZipper!2966 ((Set Context!12844) List!67807) Bool)

(assert (=> b!7023410 (= res!2867098 (not (matchZipper!2966 (set.insert lt!2513120 (as set.empty (Set Context!12844))) s!7408)))))

(declare-fun lt!2513123 () (Set Context!12844))

(declare-fun lambda!412246 () Int)

(declare-fun getWitness!1407 ((Set Context!12844) Int) Context!12844)

(assert (=> b!7023410 (= lt!2513120 (getWitness!1407 lt!2513123 lambda!412246))))

(declare-datatypes ((List!67808 0))(
  ( (Nil!67684) (Cons!67684 (h!74132 Context!12844) (t!381563 List!67808)) )
))
(declare-fun lt!2513124 () List!67808)

(declare-fun exists!3326 (List!67808 Int) Bool)

(assert (=> b!7023410 (exists!3326 lt!2513124 lambda!412246)))

(declare-datatypes ((Unit!161514 0))(
  ( (Unit!161515) )
))
(declare-fun lt!2513121 () Unit!161514)

(declare-fun lemmaZipperMatchesExistsMatchingContext!365 (List!67808 List!67807) Unit!161514)

(assert (=> b!7023410 (= lt!2513121 (lemmaZipperMatchesExistsMatchingContext!365 lt!2513124 s!7408))))

(declare-fun toList!10769 ((Set Context!12844)) List!67808)

(assert (=> b!7023410 (= lt!2513124 (toList!10769 lt!2513123))))

(declare-fun e!4222043 () Bool)

(declare-fun setRes!48881 () Bool)

(declare-fun setElem!48881 () Context!12844)

(declare-fun setNonEmpty!48881 () Bool)

(declare-fun tp!1934947 () Bool)

(declare-fun inv!86425 (Context!12844) Bool)

(assert (=> setNonEmpty!48881 (= setRes!48881 (and tp!1934947 (inv!86425 setElem!48881) e!4222043))))

(declare-fun z1!570 () (Set Context!12844))

(declare-fun setRest!48881 () (Set Context!12844))

(assert (=> setNonEmpty!48881 (= z1!570 (set.union (set.insert setElem!48881 (as set.empty (Set Context!12844))) setRest!48881))))

(declare-fun b!7023411 () Bool)

(declare-fun e!4222042 () Bool)

(declare-fun tp!1934946 () Bool)

(assert (=> b!7023411 (= e!4222042 tp!1934946)))

(declare-fun b!7023412 () Bool)

(declare-fun e!4222040 () Bool)

(declare-fun tp_is_empty!44077 () Bool)

(declare-fun tp!1934949 () Bool)

(assert (=> b!7023412 (= e!4222040 (and tp_is_empty!44077 tp!1934949))))

(declare-fun b!7023413 () Bool)

(declare-fun res!2867097 () Bool)

(assert (=> b!7023413 (=> res!2867097 e!4222041)))

(assert (=> b!7023413 (= res!2867097 (not (set.member lt!2513120 lt!2513123)))))

(declare-fun lt!2513122 () Context!12844)

(declare-fun ct2!306 () Context!12844)

(declare-fun ++!15459 (List!67806 List!67806) List!67806)

(assert (=> b!7023414 (= e!4222041 (= (Context!12845 (++!15459 (exprs!6922 lt!2513122) (exprs!6922 ct2!306))) lt!2513120))))

(declare-fun lambda!412248 () Int)

(declare-fun lt!2513125 () Unit!161514)

(declare-fun lemmaConcatPreservesForall!747 (List!67806 List!67806 Int) Unit!161514)

(assert (=> b!7023414 (= lt!2513125 (lemmaConcatPreservesForall!747 (exprs!6922 lt!2513122) (exprs!6922 ct2!306) lambda!412248))))

(declare-fun lambda!412247 () Int)

(declare-fun mapPost2!267 ((Set Context!12844) Int Context!12844) Context!12844)

(assert (=> b!7023414 (= lt!2513122 (mapPost2!267 z1!570 lambda!412247 lt!2513120))))

(declare-fun b!7023415 () Bool)

(declare-fun tp!1934948 () Bool)

(assert (=> b!7023415 (= e!4222043 tp!1934948)))

(declare-fun res!2867096 () Bool)

(assert (=> start!677772 (=> (not res!2867096) (not e!4222039))))

(assert (=> start!677772 (= res!2867096 (matchZipper!2966 lt!2513123 s!7408))))

(declare-fun appendTo!547 ((Set Context!12844) Context!12844) (Set Context!12844))

(assert (=> start!677772 (= lt!2513123 (appendTo!547 z1!570 ct2!306))))

(assert (=> start!677772 e!4222039))

(declare-fun condSetEmpty!48881 () Bool)

(assert (=> start!677772 (= condSetEmpty!48881 (= z1!570 (as set.empty (Set Context!12844))))))

(assert (=> start!677772 setRes!48881))

(assert (=> start!677772 (and (inv!86425 ct2!306) e!4222042)))

(assert (=> start!677772 e!4222040))

(declare-fun setIsEmpty!48881 () Bool)

(assert (=> setIsEmpty!48881 setRes!48881))

(declare-fun b!7023416 () Bool)

(declare-fun res!2867099 () Bool)

(assert (=> b!7023416 (=> (not res!2867099) (not e!4222039))))

(assert (=> b!7023416 (= res!2867099 (is-Cons!67683 s!7408))))

(assert (= (and start!677772 res!2867096) b!7023416))

(assert (= (and b!7023416 res!2867099) b!7023410))

(assert (= (and b!7023410 (not res!2867098)) b!7023413))

(assert (= (and b!7023413 (not res!2867097)) b!7023414))

(assert (= (and start!677772 condSetEmpty!48881) setIsEmpty!48881))

(assert (= (and start!677772 (not condSetEmpty!48881)) setNonEmpty!48881))

(assert (= setNonEmpty!48881 b!7023415))

(assert (= start!677772 b!7023411))

(assert (= (and start!677772 (is-Cons!67683 s!7408)) b!7023412))

(declare-fun m!7725834 () Bool)

(assert (=> setNonEmpty!48881 m!7725834))

(declare-fun m!7725836 () Bool)

(assert (=> b!7023414 m!7725836))

(declare-fun m!7725838 () Bool)

(assert (=> b!7023414 m!7725838))

(declare-fun m!7725840 () Bool)

(assert (=> b!7023414 m!7725840))

(declare-fun m!7725842 () Bool)

(assert (=> b!7023410 m!7725842))

(declare-fun m!7725844 () Bool)

(assert (=> b!7023410 m!7725844))

(declare-fun m!7725846 () Bool)

(assert (=> b!7023410 m!7725846))

(declare-fun m!7725848 () Bool)

(assert (=> b!7023410 m!7725848))

(declare-fun m!7725850 () Bool)

(assert (=> b!7023410 m!7725850))

(assert (=> b!7023410 m!7725842))

(declare-fun m!7725852 () Bool)

(assert (=> b!7023410 m!7725852))

(declare-fun m!7725854 () Bool)

(assert (=> start!677772 m!7725854))

(declare-fun m!7725856 () Bool)

(assert (=> start!677772 m!7725856))

(declare-fun m!7725858 () Bool)

(assert (=> start!677772 m!7725858))

(declare-fun m!7725860 () Bool)

(assert (=> b!7023413 m!7725860))

(push 1)

(assert tp_is_empty!44077)

(assert (not b!7023415))

(assert (not setNonEmpty!48881))

(assert (not b!7023410))

(assert (not b!7023414))

(assert (not b!7023411))

(assert (not start!677772))

(assert (not b!7023412))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2189353 () Bool)

(declare-fun c!1305359 () Bool)

(declare-fun isEmpty!39473 (List!67807) Bool)

(assert (=> d!2189353 (= c!1305359 (isEmpty!39473 s!7408))))

(declare-fun e!4222061 () Bool)

(assert (=> d!2189353 (= (matchZipper!2966 lt!2513123 s!7408) e!4222061)))

(declare-fun b!7023450 () Bool)

(declare-fun nullableZipper!2552 ((Set Context!12844)) Bool)

(assert (=> b!7023450 (= e!4222061 (nullableZipper!2552 lt!2513123))))

(declare-fun b!7023451 () Bool)

(declare-fun derivationStepZipper!2884 ((Set Context!12844) C!35122) (Set Context!12844))

(declare-fun head!14227 (List!67807) C!35122)

(declare-fun tail!13494 (List!67807) List!67807)

(assert (=> b!7023451 (= e!4222061 (matchZipper!2966 (derivationStepZipper!2884 lt!2513123 (head!14227 s!7408)) (tail!13494 s!7408)))))

(assert (= (and d!2189353 c!1305359) b!7023450))

(assert (= (and d!2189353 (not c!1305359)) b!7023451))

(declare-fun m!7725890 () Bool)

(assert (=> d!2189353 m!7725890))

(declare-fun m!7725892 () Bool)

(assert (=> b!7023450 m!7725892))

(declare-fun m!7725894 () Bool)

(assert (=> b!7023451 m!7725894))

(assert (=> b!7023451 m!7725894))

(declare-fun m!7725896 () Bool)

(assert (=> b!7023451 m!7725896))

(declare-fun m!7725898 () Bool)

(assert (=> b!7023451 m!7725898))

(assert (=> b!7023451 m!7725896))

(assert (=> b!7023451 m!7725898))

(declare-fun m!7725900 () Bool)

(assert (=> b!7023451 m!7725900))

(assert (=> start!677772 d!2189353))

(declare-fun bs!1868087 () Bool)

(declare-fun d!2189355 () Bool)

(assert (= bs!1868087 (and d!2189355 b!7023414)))

(declare-fun lambda!412266 () Int)

(assert (=> bs!1868087 (= lambda!412266 lambda!412247)))

(assert (=> d!2189355 true))

(declare-fun map!15712 ((Set Context!12844) Int) (Set Context!12844))

(assert (=> d!2189355 (= (appendTo!547 z1!570 ct2!306) (map!15712 z1!570 lambda!412266))))

(declare-fun bs!1868088 () Bool)

(assert (= bs!1868088 d!2189355))

(declare-fun m!7725902 () Bool)

(assert (=> bs!1868088 m!7725902))

(assert (=> start!677772 d!2189355))

(declare-fun bs!1868089 () Bool)

(declare-fun d!2189357 () Bool)

(assert (= bs!1868089 (and d!2189357 b!7023414)))

(declare-fun lambda!412269 () Int)

(assert (=> bs!1868089 (= lambda!412269 lambda!412248)))

(declare-fun forall!16325 (List!67806 Int) Bool)

(assert (=> d!2189357 (= (inv!86425 ct2!306) (forall!16325 (exprs!6922 ct2!306) lambda!412269))))

(declare-fun bs!1868090 () Bool)

(assert (= bs!1868090 d!2189357))

(declare-fun m!7725904 () Bool)

(assert (=> bs!1868090 m!7725904))

(assert (=> start!677772 d!2189357))

(declare-fun bs!1868091 () Bool)

(declare-fun d!2189359 () Bool)

(assert (= bs!1868091 (and d!2189359 b!7023414)))

(declare-fun lambda!412270 () Int)

(assert (=> bs!1868091 (= lambda!412270 lambda!412248)))

(declare-fun bs!1868092 () Bool)

(assert (= bs!1868092 (and d!2189359 d!2189357)))

(assert (=> bs!1868092 (= lambda!412270 lambda!412269)))

(assert (=> d!2189359 (= (inv!86425 setElem!48881) (forall!16325 (exprs!6922 setElem!48881) lambda!412270))))

(declare-fun bs!1868093 () Bool)

(assert (= bs!1868093 d!2189359))

(declare-fun m!7725906 () Bool)

(assert (=> bs!1868093 m!7725906))

(assert (=> setNonEmpty!48881 d!2189359))

(declare-fun d!2189361 () Bool)

(declare-fun c!1305361 () Bool)

(assert (=> d!2189361 (= c!1305361 (isEmpty!39473 s!7408))))

(declare-fun e!4222062 () Bool)

(assert (=> d!2189361 (= (matchZipper!2966 (set.insert lt!2513120 (as set.empty (Set Context!12844))) s!7408) e!4222062)))

(declare-fun b!7023452 () Bool)

(assert (=> b!7023452 (= e!4222062 (nullableZipper!2552 (set.insert lt!2513120 (as set.empty (Set Context!12844)))))))

(declare-fun b!7023453 () Bool)

(assert (=> b!7023453 (= e!4222062 (matchZipper!2966 (derivationStepZipper!2884 (set.insert lt!2513120 (as set.empty (Set Context!12844))) (head!14227 s!7408)) (tail!13494 s!7408)))))

(assert (= (and d!2189361 c!1305361) b!7023452))

(assert (= (and d!2189361 (not c!1305361)) b!7023453))

(assert (=> d!2189361 m!7725890))

(assert (=> b!7023452 m!7725842))

(declare-fun m!7725908 () Bool)

(assert (=> b!7023452 m!7725908))

(assert (=> b!7023453 m!7725894))

(assert (=> b!7023453 m!7725842))

(assert (=> b!7023453 m!7725894))

(declare-fun m!7725910 () Bool)

(assert (=> b!7023453 m!7725910))

(assert (=> b!7023453 m!7725898))

(assert (=> b!7023453 m!7725910))

(assert (=> b!7023453 m!7725898))

(declare-fun m!7725912 () Bool)

(assert (=> b!7023453 m!7725912))

(assert (=> b!7023410 d!2189361))

(declare-fun bs!1868094 () Bool)

(declare-fun d!2189363 () Bool)

(assert (= bs!1868094 (and d!2189363 b!7023410)))

(declare-fun lambda!412273 () Int)

(assert (=> bs!1868094 (= lambda!412273 lambda!412246)))

(assert (=> d!2189363 true))

(assert (=> d!2189363 (exists!3326 lt!2513124 lambda!412273)))

(declare-fun lt!2513150 () Unit!161514)

(declare-fun choose!53019 (List!67808 List!67807) Unit!161514)

(assert (=> d!2189363 (= lt!2513150 (choose!53019 lt!2513124 s!7408))))

(declare-fun content!13475 (List!67808) (Set Context!12844))

(assert (=> d!2189363 (matchZipper!2966 (content!13475 lt!2513124) s!7408)))

(assert (=> d!2189363 (= (lemmaZipperMatchesExistsMatchingContext!365 lt!2513124 s!7408) lt!2513150)))

(declare-fun bs!1868095 () Bool)

(assert (= bs!1868095 d!2189363))

(declare-fun m!7725914 () Bool)

(assert (=> bs!1868095 m!7725914))

(declare-fun m!7725916 () Bool)

(assert (=> bs!1868095 m!7725916))

(declare-fun m!7725918 () Bool)

(assert (=> bs!1868095 m!7725918))

(assert (=> bs!1868095 m!7725918))

(declare-fun m!7725920 () Bool)

(assert (=> bs!1868095 m!7725920))

(assert (=> b!7023410 d!2189363))

(declare-fun bs!1868096 () Bool)

(declare-fun d!2189365 () Bool)

(assert (= bs!1868096 (and d!2189365 b!7023410)))

(declare-fun lambda!412276 () Int)

(assert (=> bs!1868096 (not (= lambda!412276 lambda!412246))))

(declare-fun bs!1868097 () Bool)

(assert (= bs!1868097 (and d!2189365 d!2189363)))

(assert (=> bs!1868097 (not (= lambda!412276 lambda!412273))))

(assert (=> d!2189365 true))

(declare-fun order!28117 () Int)

(declare-fun dynLambda!27269 (Int Int) Int)

(assert (=> d!2189365 (< (dynLambda!27269 order!28117 lambda!412246) (dynLambda!27269 order!28117 lambda!412276))))

(declare-fun forall!16326 (List!67808 Int) Bool)

(assert (=> d!2189365 (= (exists!3326 lt!2513124 lambda!412246) (not (forall!16326 lt!2513124 lambda!412276)))))

(declare-fun bs!1868098 () Bool)

(assert (= bs!1868098 d!2189365))

(declare-fun m!7725922 () Bool)

(assert (=> bs!1868098 m!7725922))

(assert (=> b!7023410 d!2189365))

(declare-fun d!2189369 () Bool)

(declare-fun e!4222065 () Bool)

(assert (=> d!2189369 e!4222065))

(declare-fun res!2867116 () Bool)

(assert (=> d!2189369 (=> (not res!2867116) (not e!4222065))))

(declare-fun lt!2513153 () Context!12844)

(declare-fun dynLambda!27270 (Int Context!12844) Bool)

(assert (=> d!2189369 (= res!2867116 (dynLambda!27270 lambda!412246 lt!2513153))))

(declare-fun getWitness!1409 (List!67808 Int) Context!12844)

(assert (=> d!2189369 (= lt!2513153 (getWitness!1409 (toList!10769 lt!2513123) lambda!412246))))

(declare-fun exists!3328 ((Set Context!12844) Int) Bool)

(assert (=> d!2189369 (exists!3328 lt!2513123 lambda!412246)))

(assert (=> d!2189369 (= (getWitness!1407 lt!2513123 lambda!412246) lt!2513153)))

(declare-fun b!7023458 () Bool)

(assert (=> b!7023458 (= e!4222065 (set.member lt!2513153 lt!2513123))))

(assert (= (and d!2189369 res!2867116) b!7023458))

(declare-fun b_lambda!265355 () Bool)

(assert (=> (not b_lambda!265355) (not d!2189369)))

(declare-fun m!7725924 () Bool)

(assert (=> d!2189369 m!7725924))

(assert (=> d!2189369 m!7725848))

(assert (=> d!2189369 m!7725848))

(declare-fun m!7725926 () Bool)

(assert (=> d!2189369 m!7725926))

(declare-fun m!7725928 () Bool)

(assert (=> d!2189369 m!7725928))

(declare-fun m!7725930 () Bool)

(assert (=> b!7023458 m!7725930))

(assert (=> b!7023410 d!2189369))

(declare-fun d!2189371 () Bool)

(declare-fun e!4222070 () Bool)

(assert (=> d!2189371 e!4222070))

(declare-fun res!2867119 () Bool)

(assert (=> d!2189371 (=> (not res!2867119) (not e!4222070))))

(declare-fun lt!2513156 () List!67808)

(declare-fun noDuplicate!2602 (List!67808) Bool)

(assert (=> d!2189371 (= res!2867119 (noDuplicate!2602 lt!2513156))))

(declare-fun choose!53020 ((Set Context!12844)) List!67808)

(assert (=> d!2189371 (= lt!2513156 (choose!53020 lt!2513123))))

(assert (=> d!2189371 (= (toList!10769 lt!2513123) lt!2513156)))

(declare-fun b!7023465 () Bool)

(assert (=> b!7023465 (= e!4222070 (= (content!13475 lt!2513156) lt!2513123))))

(assert (= (and d!2189371 res!2867119) b!7023465))

(declare-fun m!7725932 () Bool)

(assert (=> d!2189371 m!7725932))

(declare-fun m!7725934 () Bool)

(assert (=> d!2189371 m!7725934))

(declare-fun m!7725936 () Bool)

(assert (=> b!7023465 m!7725936))

(assert (=> b!7023410 d!2189371))

(declare-fun b!7023478 () Bool)

(declare-fun res!2867124 () Bool)

(declare-fun e!4222077 () Bool)

(assert (=> b!7023478 (=> (not res!2867124) (not e!4222077))))

(declare-fun lt!2513159 () List!67806)

(declare-fun size!41030 (List!67806) Int)

(assert (=> b!7023478 (= res!2867124 (= (size!41030 lt!2513159) (+ (size!41030 (exprs!6922 lt!2513122)) (size!41030 (exprs!6922 ct2!306)))))))

(declare-fun b!7023476 () Bool)

(declare-fun e!4222076 () List!67806)

(assert (=> b!7023476 (= e!4222076 (exprs!6922 ct2!306))))

(declare-fun b!7023479 () Bool)

(assert (=> b!7023479 (= e!4222077 (or (not (= (exprs!6922 ct2!306) Nil!67682)) (= lt!2513159 (exprs!6922 lt!2513122))))))

(declare-fun d!2189373 () Bool)

(assert (=> d!2189373 e!4222077))

(declare-fun res!2867125 () Bool)

(assert (=> d!2189373 (=> (not res!2867125) (not e!4222077))))

(declare-fun content!13476 (List!67806) (Set Regex!17426))

(assert (=> d!2189373 (= res!2867125 (= (content!13476 lt!2513159) (set.union (content!13476 (exprs!6922 lt!2513122)) (content!13476 (exprs!6922 ct2!306)))))))

(assert (=> d!2189373 (= lt!2513159 e!4222076)))

(declare-fun c!1305369 () Bool)

(assert (=> d!2189373 (= c!1305369 (is-Nil!67682 (exprs!6922 lt!2513122)))))

(assert (=> d!2189373 (= (++!15459 (exprs!6922 lt!2513122) (exprs!6922 ct2!306)) lt!2513159)))

(declare-fun b!7023477 () Bool)

(assert (=> b!7023477 (= e!4222076 (Cons!67682 (h!74130 (exprs!6922 lt!2513122)) (++!15459 (t!381561 (exprs!6922 lt!2513122)) (exprs!6922 ct2!306))))))

(assert (= (and d!2189373 c!1305369) b!7023476))

(assert (= (and d!2189373 (not c!1305369)) b!7023477))

(assert (= (and d!2189373 res!2867125) b!7023478))

(assert (= (and b!7023478 res!2867124) b!7023479))

(declare-fun m!7725950 () Bool)

(assert (=> b!7023478 m!7725950))

(declare-fun m!7725952 () Bool)

(assert (=> b!7023478 m!7725952))

(declare-fun m!7725954 () Bool)

(assert (=> b!7023478 m!7725954))

(declare-fun m!7725956 () Bool)

(assert (=> d!2189373 m!7725956))

(declare-fun m!7725958 () Bool)

(assert (=> d!2189373 m!7725958))

(declare-fun m!7725960 () Bool)

(assert (=> d!2189373 m!7725960))

(declare-fun m!7725962 () Bool)

(assert (=> b!7023477 m!7725962))

(assert (=> b!7023414 d!2189373))

(declare-fun d!2189377 () Bool)

(assert (=> d!2189377 (forall!16325 (++!15459 (exprs!6922 lt!2513122) (exprs!6922 ct2!306)) lambda!412248)))

(declare-fun lt!2513162 () Unit!161514)

(declare-fun choose!53021 (List!67806 List!67806 Int) Unit!161514)

(assert (=> d!2189377 (= lt!2513162 (choose!53021 (exprs!6922 lt!2513122) (exprs!6922 ct2!306) lambda!412248))))

(assert (=> d!2189377 (forall!16325 (exprs!6922 lt!2513122) lambda!412248)))

(assert (=> d!2189377 (= (lemmaConcatPreservesForall!747 (exprs!6922 lt!2513122) (exprs!6922 ct2!306) lambda!412248) lt!2513162)))

(declare-fun bs!1868099 () Bool)

(assert (= bs!1868099 d!2189377))

(assert (=> bs!1868099 m!7725836))

(assert (=> bs!1868099 m!7725836))

(declare-fun m!7725964 () Bool)

(assert (=> bs!1868099 m!7725964))

(declare-fun m!7725966 () Bool)

(assert (=> bs!1868099 m!7725966))

(declare-fun m!7725968 () Bool)

(assert (=> bs!1868099 m!7725968))

(assert (=> b!7023414 d!2189377))

(declare-fun d!2189379 () Bool)

(declare-fun e!4222080 () Bool)

(assert (=> d!2189379 e!4222080))

(declare-fun res!2867128 () Bool)

(assert (=> d!2189379 (=> (not res!2867128) (not e!4222080))))

(declare-fun lt!2513167 () Context!12844)

(declare-fun dynLambda!27271 (Int Context!12844) Context!12844)

(assert (=> d!2189379 (= res!2867128 (= lt!2513120 (dynLambda!27271 lambda!412247 lt!2513167)))))

(declare-fun choose!53022 ((Set Context!12844) Int Context!12844) Context!12844)

(assert (=> d!2189379 (= lt!2513167 (choose!53022 z1!570 lambda!412247 lt!2513120))))

(assert (=> d!2189379 (set.member lt!2513120 (map!15712 z1!570 lambda!412247))))

(assert (=> d!2189379 (= (mapPost2!267 z1!570 lambda!412247 lt!2513120) lt!2513167)))

(declare-fun b!7023483 () Bool)

(assert (=> b!7023483 (= e!4222080 (set.member lt!2513167 z1!570))))

(assert (= (and d!2189379 res!2867128) b!7023483))

(declare-fun b_lambda!265357 () Bool)

(assert (=> (not b_lambda!265357) (not d!2189379)))

(declare-fun m!7725970 () Bool)

(assert (=> d!2189379 m!7725970))

(declare-fun m!7725972 () Bool)

(assert (=> d!2189379 m!7725972))

(declare-fun m!7725974 () Bool)

(assert (=> d!2189379 m!7725974))

(declare-fun m!7725976 () Bool)

(assert (=> d!2189379 m!7725976))

(declare-fun m!7725978 () Bool)

(assert (=> b!7023483 m!7725978))

(assert (=> b!7023414 d!2189379))

(declare-fun b!7023488 () Bool)

(declare-fun e!4222083 () Bool)

(declare-fun tp!1934966 () Bool)

(declare-fun tp!1934967 () Bool)

(assert (=> b!7023488 (= e!4222083 (and tp!1934966 tp!1934967))))

(assert (=> b!7023411 (= tp!1934946 e!4222083)))

(assert (= (and b!7023411 (is-Cons!67682 (exprs!6922 ct2!306))) b!7023488))

(declare-fun condSetEmpty!48887 () Bool)

(assert (=> setNonEmpty!48881 (= condSetEmpty!48887 (= setRest!48881 (as set.empty (Set Context!12844))))))

(declare-fun setRes!48887 () Bool)

(assert (=> setNonEmpty!48881 (= tp!1934947 setRes!48887)))

(declare-fun setIsEmpty!48887 () Bool)

(assert (=> setIsEmpty!48887 setRes!48887))

(declare-fun setNonEmpty!48887 () Bool)

(declare-fun e!4222086 () Bool)

(declare-fun tp!1934973 () Bool)

(declare-fun setElem!48887 () Context!12844)

(assert (=> setNonEmpty!48887 (= setRes!48887 (and tp!1934973 (inv!86425 setElem!48887) e!4222086))))

(declare-fun setRest!48887 () (Set Context!12844))

(assert (=> setNonEmpty!48887 (= setRest!48881 (set.union (set.insert setElem!48887 (as set.empty (Set Context!12844))) setRest!48887))))

(declare-fun b!7023493 () Bool)

(declare-fun tp!1934972 () Bool)

(assert (=> b!7023493 (= e!4222086 tp!1934972)))

(assert (= (and setNonEmpty!48881 condSetEmpty!48887) setIsEmpty!48887))

(assert (= (and setNonEmpty!48881 (not condSetEmpty!48887)) setNonEmpty!48887))

(assert (= setNonEmpty!48887 b!7023493))

(declare-fun m!7725980 () Bool)

(assert (=> setNonEmpty!48887 m!7725980))

(declare-fun b!7023498 () Bool)

(declare-fun e!4222089 () Bool)

(declare-fun tp!1934976 () Bool)

(assert (=> b!7023498 (= e!4222089 (and tp_is_empty!44077 tp!1934976))))

(assert (=> b!7023412 (= tp!1934949 e!4222089)))

(assert (= (and b!7023412 (is-Cons!67683 (t!381562 s!7408))) b!7023498))

(declare-fun b!7023499 () Bool)

(declare-fun e!4222090 () Bool)

(declare-fun tp!1934977 () Bool)

(declare-fun tp!1934978 () Bool)

(assert (=> b!7023499 (= e!4222090 (and tp!1934977 tp!1934978))))

(assert (=> b!7023415 (= tp!1934948 e!4222090)))

(assert (= (and b!7023415 (is-Cons!67682 (exprs!6922 setElem!48881))) b!7023499))

(declare-fun b_lambda!265359 () Bool)

(assert (= b_lambda!265355 (or b!7023410 b_lambda!265359)))

(declare-fun bs!1868100 () Bool)

(declare-fun d!2189381 () Bool)

(assert (= bs!1868100 (and d!2189381 b!7023410)))

(assert (=> bs!1868100 (= (dynLambda!27270 lambda!412246 lt!2513153) (matchZipper!2966 (set.insert lt!2513153 (as set.empty (Set Context!12844))) s!7408))))

(declare-fun m!7725982 () Bool)

(assert (=> bs!1868100 m!7725982))

(assert (=> bs!1868100 m!7725982))

(declare-fun m!7725984 () Bool)

(assert (=> bs!1868100 m!7725984))

(assert (=> d!2189369 d!2189381))

(declare-fun b_lambda!265361 () Bool)

(assert (= b_lambda!265357 (or b!7023414 b_lambda!265361)))

(declare-fun bs!1868101 () Bool)

(declare-fun d!2189383 () Bool)

(assert (= bs!1868101 (and d!2189383 b!7023414)))

(declare-fun lt!2513168 () Unit!161514)

(assert (=> bs!1868101 (= lt!2513168 (lemmaConcatPreservesForall!747 (exprs!6922 lt!2513167) (exprs!6922 ct2!306) lambda!412248))))

(assert (=> bs!1868101 (= (dynLambda!27271 lambda!412247 lt!2513167) (Context!12845 (++!15459 (exprs!6922 lt!2513167) (exprs!6922 ct2!306))))))

(declare-fun m!7725986 () Bool)

(assert (=> bs!1868101 m!7725986))

(declare-fun m!7725988 () Bool)

(assert (=> bs!1868101 m!7725988))

(assert (=> d!2189379 d!2189383))

(push 1)

(assert tp_is_empty!44077)

(assert (not d!2189377))

(assert (not d!2189359))

(assert (not d!2189357))

(assert (not b_lambda!265361))

(assert (not b!7023493))

(assert (not d!2189353))

(assert (not bs!1868101))

(assert (not b!7023478))

(assert (not d!2189373))

(assert (not d!2189379))

(assert (not d!2189363))

(assert (not b!7023450))

(assert (not b!7023465))

(assert (not d!2189371))

(assert (not b!7023452))

(assert (not setNonEmpty!48887))

(assert (not d!2189365))

(assert (not b!7023477))

(assert (not d!2189361))

(assert (not bs!1868100))

(assert (not b!7023488))

(assert (not b!7023499))

(assert (not b!7023498))

(assert (not d!2189355))

(assert (not b!7023451))

(assert (not b!7023453))

(assert (not d!2189369))

(assert (not b_lambda!265359))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

