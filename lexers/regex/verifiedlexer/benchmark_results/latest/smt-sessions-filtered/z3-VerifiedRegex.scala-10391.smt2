; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538368 () Bool)

(assert start!538368)

(declare-fun b!5105562 () Bool)

(declare-fun e!3184306 () Bool)

(declare-fun tp!1424162 () Bool)

(assert (=> b!5105562 (= e!3184306 tp!1424162)))

(declare-datatypes ((C!28412 0))(
  ( (C!28413 (val!23858 Int)) )
))
(declare-datatypes ((Regex!14077 0))(
  ( (ElementMatch!14077 (c!877055 C!28412)) (Concat!22922 (regOne!28666 Regex!14077) (regTwo!28666 Regex!14077)) (EmptyExpr!14077) (Star!14077 (reg!14406 Regex!14077)) (EmptyLang!14077) (Union!14077 (regOne!28667 Regex!14077) (regTwo!28667 Regex!14077)) )
))
(declare-datatypes ((List!59017 0))(
  ( (Nil!58893) (Cons!58893 (h!65341 Regex!14077) (t!372018 List!59017)) )
))
(declare-datatypes ((Context!6922 0))(
  ( (Context!6923 (exprs!3961 List!59017)) )
))
(declare-fun setElem!29344 () Context!6922)

(declare-fun e!3184308 () Bool)

(declare-fun setNonEmpty!29344 () Bool)

(declare-fun setRes!29344 () Bool)

(declare-fun tp!1424165 () Bool)

(declare-fun inv!78367 (Context!6922) Bool)

(assert (=> setNonEmpty!29344 (= setRes!29344 (and tp!1424165 (inv!78367 setElem!29344) e!3184308))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6922))

(declare-fun setRest!29344 () (InoxSet Context!6922))

(assert (=> setNonEmpty!29344 (= z!4303 ((_ map or) (store ((as const (Array Context!6922 Bool)) false) setElem!29344 true) setRest!29344))))

(declare-fun b!5105563 () Bool)

(declare-fun e!3184304 () Bool)

(declare-fun e!3184300 () Bool)

(assert (=> b!5105563 (= e!3184304 e!3184300)))

(declare-fun res!2173169 () Bool)

(assert (=> b!5105563 (=> (not res!2173169) (not e!3184300))))

(declare-datatypes ((List!59018 0))(
  ( (Nil!58894) (Cons!58894 (h!65342 C!28412) (t!372019 List!59018)) )
))
(declare-fun lt!2101444 () List!59018)

(declare-fun input!5654 () List!59018)

(assert (=> b!5105563 (= res!2173169 (= lt!2101444 input!5654))))

(declare-datatypes ((tuple2!63540 0))(
  ( (tuple2!63541 (_1!35073 List!59018) (_2!35073 List!59018)) )
))
(declare-fun lt!2101439 () tuple2!63540)

(declare-fun ++!12926 (List!59018 List!59018) List!59018)

(assert (=> b!5105563 (= lt!2101444 (++!12926 (_1!35073 lt!2101439) (_2!35073 lt!2101439)))))

(declare-fun b!5105564 () Bool)

(declare-fun e!3184299 () Bool)

(declare-fun e!3184309 () Bool)

(assert (=> b!5105564 (= e!3184299 e!3184309)))

(declare-fun res!2173173 () Bool)

(assert (=> b!5105564 (=> res!2173173 e!3184309)))

(declare-fun e!3184301 () Bool)

(assert (=> b!5105564 (= res!2173173 e!3184301)))

(declare-fun res!2173170 () Bool)

(assert (=> b!5105564 (=> (not res!2173170) (not e!3184301))))

(declare-fun lt!2101451 () Bool)

(assert (=> b!5105564 (= res!2173170 (not lt!2101451))))

(declare-fun r!12920 () Regex!14077)

(declare-fun matchR!6862 (Regex!14077 List!59018) Bool)

(assert (=> b!5105564 (= lt!2101451 (matchR!6862 r!12920 (_1!35073 lt!2101439)))))

(declare-fun b!5105565 () Bool)

(declare-fun tp!1424161 () Bool)

(declare-fun tp!1424164 () Bool)

(assert (=> b!5105565 (= e!3184306 (and tp!1424161 tp!1424164))))

(declare-fun res!2173172 () Bool)

(declare-fun e!3184311 () Bool)

(assert (=> start!538368 (=> (not res!2173172) (not e!3184311))))

(declare-fun validRegex!6204 (Regex!14077) Bool)

(assert (=> start!538368 (= res!2173172 (validRegex!6204 r!12920))))

(assert (=> start!538368 e!3184311))

(assert (=> start!538368 e!3184306))

(declare-fun condSetEmpty!29344 () Bool)

(assert (=> start!538368 (= condSetEmpty!29344 (= z!4303 ((as const (Array Context!6922 Bool)) false)))))

(assert (=> start!538368 setRes!29344))

(declare-fun e!3184305 () Bool)

(assert (=> start!538368 e!3184305))

(declare-fun b!5105566 () Bool)

(declare-fun e!3184312 () Bool)

(assert (=> b!5105566 (= e!3184312 e!3184304)))

(declare-fun res!2173174 () Bool)

(assert (=> b!5105566 (=> (not res!2173174) (not e!3184304))))

(declare-fun lt!2101437 () List!59018)

(assert (=> b!5105566 (= res!2173174 (= lt!2101437 input!5654))))

(declare-fun lt!2101436 () tuple2!63540)

(assert (=> b!5105566 (= lt!2101437 (++!12926 (_1!35073 lt!2101436) (_2!35073 lt!2101436)))))

(declare-fun findLongestMatch!1907 (Regex!14077 List!59018) tuple2!63540)

(assert (=> b!5105566 (= lt!2101439 (findLongestMatch!1907 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!101 ((InoxSet Context!6922) List!59018) tuple2!63540)

(assert (=> b!5105566 (= lt!2101436 (findLongestMatchZipper!101 z!4303 input!5654))))

(declare-fun setIsEmpty!29344 () Bool)

(assert (=> setIsEmpty!29344 setRes!29344))

(declare-fun b!5105567 () Bool)

(declare-fun isEmpty!31822 (List!59018) Bool)

(assert (=> b!5105567 (= e!3184301 (not (isEmpty!31822 (_1!35073 lt!2101439))))))

(declare-fun b!5105568 () Bool)

(declare-fun tp_is_empty!37419 () Bool)

(assert (=> b!5105568 (= e!3184306 tp_is_empty!37419)))

(declare-fun b!5105569 () Bool)

(declare-fun e!3184302 () Bool)

(declare-fun lt!2101443 () tuple2!63540)

(assert (=> b!5105569 (= e!3184302 (matchR!6862 r!12920 (_1!35073 lt!2101443)))))

(declare-fun b!5105570 () Bool)

(declare-fun e!3184303 () Bool)

(assert (=> b!5105570 (= e!3184309 e!3184303)))

(declare-fun res!2173164 () Bool)

(assert (=> b!5105570 (=> res!2173164 e!3184303)))

(declare-fun lt!2101435 () Int)

(declare-fun lt!2101441 () Int)

(assert (=> b!5105570 (= res!2173164 (or (> lt!2101435 lt!2101441) (> lt!2101441 lt!2101435)))))

(declare-fun size!39379 (List!59018) Int)

(assert (=> b!5105570 (= lt!2101441 (size!39379 (_1!35073 lt!2101436)))))

(assert (=> b!5105570 (= lt!2101435 (size!39379 (_1!35073 lt!2101439)))))

(declare-fun lt!2101448 () Bool)

(assert (=> b!5105570 (= (matchR!6862 r!12920 (_1!35073 lt!2101436)) lt!2101448)))

(declare-datatypes ((List!59019 0))(
  ( (Nil!58895) (Cons!58895 (h!65343 Context!6922) (t!372020 List!59019)) )
))
(declare-fun lt!2101454 () List!59019)

(declare-datatypes ((Unit!149948 0))(
  ( (Unit!149949) )
))
(declare-fun lt!2101445 () Unit!149948)

(declare-fun theoremZipperRegexEquiv!241 ((InoxSet Context!6922) List!59019 Regex!14077 List!59018) Unit!149948)

(assert (=> b!5105570 (= lt!2101445 (theoremZipperRegexEquiv!241 z!4303 lt!2101454 r!12920 (_1!35073 lt!2101436)))))

(declare-fun matchZipper!749 ((InoxSet Context!6922) List!59018) Bool)

(assert (=> b!5105570 (= lt!2101451 (matchZipper!749 z!4303 (_1!35073 lt!2101439)))))

(declare-fun lt!2101442 () Unit!149948)

(assert (=> b!5105570 (= lt!2101442 (theoremZipperRegexEquiv!241 z!4303 lt!2101454 r!12920 (_1!35073 lt!2101439)))))

(declare-fun b!5105571 () Bool)

(declare-fun tp!1424166 () Bool)

(assert (=> b!5105571 (= e!3184305 (and tp_is_empty!37419 tp!1424166))))

(declare-fun b!5105572 () Bool)

(declare-fun e!3184313 () Bool)

(declare-fun lt!2101450 () tuple2!63540)

(assert (=> b!5105572 (= e!3184313 (matchZipper!749 z!4303 (_1!35073 lt!2101450)))))

(declare-fun b!5105573 () Bool)

(declare-fun e!3184310 () Bool)

(declare-fun isPrefix!5478 (List!59018 List!59018) Bool)

(assert (=> b!5105573 (= e!3184310 (isPrefix!5478 (_1!35073 lt!2101439) input!5654))))

(declare-fun b!5105574 () Bool)

(assert (=> b!5105574 (= e!3184311 e!3184312)))

(declare-fun res!2173165 () Bool)

(assert (=> b!5105574 (=> (not res!2173165) (not e!3184312))))

(declare-fun unfocusZipper!419 (List!59019) Regex!14077)

(assert (=> b!5105574 (= res!2173165 (= (unfocusZipper!419 lt!2101454) r!12920))))

(declare-fun toList!8211 ((InoxSet Context!6922)) List!59019)

(assert (=> b!5105574 (= lt!2101454 (toList!8211 z!4303))))

(declare-fun b!5105575 () Bool)

(assert (=> b!5105575 (= e!3184303 e!3184310)))

(declare-fun res!2173167 () Bool)

(assert (=> b!5105575 (=> res!2173167 e!3184310)))

(assert (=> b!5105575 (= res!2173167 (not (isPrefix!5478 (_1!35073 lt!2101436) input!5654)))))

(assert (=> b!5105575 (= (_1!35073 lt!2101436) (_1!35073 lt!2101439))))

(declare-fun lt!2101449 () Unit!149948)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1313 (List!59018 List!59018 List!59018) Unit!149948)

(assert (=> b!5105575 (= lt!2101449 (lemmaIsPrefixSameLengthThenSameList!1313 (_1!35073 lt!2101436) (_1!35073 lt!2101439) input!5654))))

(declare-fun b!5105576 () Bool)

(declare-fun e!3184307 () Bool)

(assert (=> b!5105576 (= e!3184307 (not (isEmpty!31822 (_1!35073 lt!2101436))))))

(declare-fun b!5105577 () Bool)

(assert (=> b!5105577 (= e!3184300 (not e!3184299))))

(declare-fun res!2173163 () Bool)

(assert (=> b!5105577 (=> res!2173163 e!3184299)))

(assert (=> b!5105577 (= res!2173163 e!3184307)))

(declare-fun res!2173168 () Bool)

(assert (=> b!5105577 (=> (not res!2173168) (not e!3184307))))

(assert (=> b!5105577 (= res!2173168 (not lt!2101448))))

(assert (=> b!5105577 (= lt!2101448 (matchZipper!749 z!4303 (_1!35073 lt!2101436)))))

(assert (=> b!5105577 e!3184302))

(declare-fun res!2173171 () Bool)

(assert (=> b!5105577 (=> res!2173171 e!3184302)))

(assert (=> b!5105577 (= res!2173171 (isEmpty!31822 (_1!35073 lt!2101443)))))

(declare-fun lt!2101440 () Int)

(declare-fun lt!2101447 () Int)

(declare-fun findLongestMatchInner!2090 (Regex!14077 List!59018 Int List!59018 List!59018 Int) tuple2!63540)

(assert (=> b!5105577 (= lt!2101443 (findLongestMatchInner!2090 r!12920 Nil!58894 lt!2101440 input!5654 input!5654 lt!2101447))))

(declare-fun lt!2101438 () Unit!149948)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2100 (Regex!14077 List!59018) Unit!149948)

(assert (=> b!5105577 (= lt!2101438 (longestMatchIsAcceptedByMatchOrIsEmpty!2100 r!12920 input!5654))))

(assert (=> b!5105577 e!3184313))

(declare-fun res!2173166 () Bool)

(assert (=> b!5105577 (=> res!2173166 e!3184313)))

(assert (=> b!5105577 (= res!2173166 (isEmpty!31822 (_1!35073 lt!2101450)))))

(declare-fun findLongestMatchInnerZipper!151 ((InoxSet Context!6922) List!59018 Int List!59018 List!59018 Int) tuple2!63540)

(assert (=> b!5105577 (= lt!2101450 (findLongestMatchInnerZipper!151 z!4303 Nil!58894 lt!2101440 input!5654 input!5654 lt!2101447))))

(assert (=> b!5105577 (= lt!2101447 (size!39379 input!5654))))

(assert (=> b!5105577 (= lt!2101440 (size!39379 Nil!58894))))

(declare-fun lt!2101453 () Unit!149948)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2101 ((InoxSet Context!6922) List!59018) Unit!149948)

(assert (=> b!5105577 (= lt!2101453 (longestMatchIsAcceptedByMatchOrIsEmpty!2101 z!4303 input!5654))))

(assert (=> b!5105577 (isPrefix!5478 (_1!35073 lt!2101439) lt!2101444)))

(declare-fun lt!2101446 () Unit!149948)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3536 (List!59018 List!59018) Unit!149948)

(assert (=> b!5105577 (= lt!2101446 (lemmaConcatTwoListThenFirstIsPrefix!3536 (_1!35073 lt!2101439) (_2!35073 lt!2101439)))))

(assert (=> b!5105577 (isPrefix!5478 (_1!35073 lt!2101436) lt!2101437)))

(declare-fun lt!2101452 () Unit!149948)

(assert (=> b!5105577 (= lt!2101452 (lemmaConcatTwoListThenFirstIsPrefix!3536 (_1!35073 lt!2101436) (_2!35073 lt!2101436)))))

(declare-fun b!5105578 () Bool)

(declare-fun tp!1424160 () Bool)

(declare-fun tp!1424167 () Bool)

(assert (=> b!5105578 (= e!3184306 (and tp!1424160 tp!1424167))))

(declare-fun b!5105579 () Bool)

(declare-fun tp!1424163 () Bool)

(assert (=> b!5105579 (= e!3184308 tp!1424163)))

(assert (= (and start!538368 res!2173172) b!5105574))

(assert (= (and b!5105574 res!2173165) b!5105566))

(assert (= (and b!5105566 res!2173174) b!5105563))

(assert (= (and b!5105563 res!2173169) b!5105577))

(assert (= (and b!5105577 (not res!2173166)) b!5105572))

(assert (= (and b!5105577 (not res!2173171)) b!5105569))

(assert (= (and b!5105577 res!2173168) b!5105576))

(assert (= (and b!5105577 (not res!2173163)) b!5105564))

(assert (= (and b!5105564 res!2173170) b!5105567))

(assert (= (and b!5105564 (not res!2173173)) b!5105570))

(assert (= (and b!5105570 (not res!2173164)) b!5105575))

(assert (= (and b!5105575 (not res!2173167)) b!5105573))

(get-info :version)

(assert (= (and start!538368 ((_ is ElementMatch!14077) r!12920)) b!5105568))

(assert (= (and start!538368 ((_ is Concat!22922) r!12920)) b!5105578))

(assert (= (and start!538368 ((_ is Star!14077) r!12920)) b!5105562))

(assert (= (and start!538368 ((_ is Union!14077) r!12920)) b!5105565))

(assert (= (and start!538368 condSetEmpty!29344) setIsEmpty!29344))

(assert (= (and start!538368 (not condSetEmpty!29344)) setNonEmpty!29344))

(assert (= setNonEmpty!29344 b!5105579))

(assert (= (and start!538368 ((_ is Cons!58894) input!5654)) b!5105571))

(declare-fun m!6162920 () Bool)

(assert (=> b!5105563 m!6162920))

(declare-fun m!6162922 () Bool)

(assert (=> b!5105566 m!6162922))

(declare-fun m!6162924 () Bool)

(assert (=> b!5105566 m!6162924))

(declare-fun m!6162926 () Bool)

(assert (=> b!5105566 m!6162926))

(declare-fun m!6162928 () Bool)

(assert (=> b!5105575 m!6162928))

(declare-fun m!6162930 () Bool)

(assert (=> b!5105575 m!6162930))

(declare-fun m!6162932 () Bool)

(assert (=> b!5105570 m!6162932))

(declare-fun m!6162934 () Bool)

(assert (=> b!5105570 m!6162934))

(declare-fun m!6162936 () Bool)

(assert (=> b!5105570 m!6162936))

(declare-fun m!6162938 () Bool)

(assert (=> b!5105570 m!6162938))

(declare-fun m!6162940 () Bool)

(assert (=> b!5105570 m!6162940))

(declare-fun m!6162942 () Bool)

(assert (=> b!5105570 m!6162942))

(declare-fun m!6162944 () Bool)

(assert (=> start!538368 m!6162944))

(declare-fun m!6162946 () Bool)

(assert (=> b!5105577 m!6162946))

(declare-fun m!6162948 () Bool)

(assert (=> b!5105577 m!6162948))

(declare-fun m!6162950 () Bool)

(assert (=> b!5105577 m!6162950))

(declare-fun m!6162952 () Bool)

(assert (=> b!5105577 m!6162952))

(declare-fun m!6162954 () Bool)

(assert (=> b!5105577 m!6162954))

(declare-fun m!6162956 () Bool)

(assert (=> b!5105577 m!6162956))

(declare-fun m!6162958 () Bool)

(assert (=> b!5105577 m!6162958))

(declare-fun m!6162960 () Bool)

(assert (=> b!5105577 m!6162960))

(declare-fun m!6162962 () Bool)

(assert (=> b!5105577 m!6162962))

(declare-fun m!6162964 () Bool)

(assert (=> b!5105577 m!6162964))

(declare-fun m!6162966 () Bool)

(assert (=> b!5105577 m!6162966))

(declare-fun m!6162968 () Bool)

(assert (=> b!5105577 m!6162968))

(declare-fun m!6162970 () Bool)

(assert (=> b!5105577 m!6162970))

(declare-fun m!6162972 () Bool)

(assert (=> b!5105576 m!6162972))

(declare-fun m!6162974 () Bool)

(assert (=> b!5105564 m!6162974))

(declare-fun m!6162976 () Bool)

(assert (=> b!5105574 m!6162976))

(declare-fun m!6162978 () Bool)

(assert (=> b!5105574 m!6162978))

(declare-fun m!6162980 () Bool)

(assert (=> b!5105567 m!6162980))

(declare-fun m!6162982 () Bool)

(assert (=> b!5105569 m!6162982))

(declare-fun m!6162984 () Bool)

(assert (=> setNonEmpty!29344 m!6162984))

(declare-fun m!6162986 () Bool)

(assert (=> b!5105573 m!6162986))

(declare-fun m!6162988 () Bool)

(assert (=> b!5105572 m!6162988))

(check-sat (not b!5105566) (not b!5105563) (not b!5105562) (not start!538368) (not b!5105576) (not b!5105574) (not setNonEmpty!29344) (not b!5105567) (not b!5105573) tp_is_empty!37419 (not b!5105575) (not b!5105565) (not b!5105564) (not b!5105577) (not b!5105572) (not b!5105570) (not b!5105579) (not b!5105569) (not b!5105578) (not b!5105571))
(check-sat)
