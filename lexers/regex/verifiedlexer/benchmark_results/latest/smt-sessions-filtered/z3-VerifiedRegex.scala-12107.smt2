; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!679416 () Bool)

(assert start!679416)

(declare-fun b!7031706 () Bool)

(assert (=> b!7031706 true))

(declare-fun b!7031688 () Bool)

(assert (=> b!7031688 true))

(declare-fun b!7031710 () Bool)

(assert (=> b!7031710 true))

(declare-fun bs!1870456 () Bool)

(declare-fun b!7031699 () Bool)

(assert (= bs!1870456 (and b!7031699 b!7031706)))

(declare-fun lambda!414479 () Int)

(declare-fun lambda!414475 () Int)

(assert (=> bs!1870456 (not (= lambda!414479 lambda!414475))))

(declare-fun b!7031683 () Bool)

(declare-fun e!4227164 () Bool)

(declare-fun e!4227179 () Bool)

(assert (=> b!7031683 (= e!4227164 e!4227179)))

(declare-fun res!2870437 () Bool)

(assert (=> b!7031683 (=> res!2870437 e!4227179)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35192 0))(
  ( (C!35193 (val!27298 Int)) )
))
(declare-datatypes ((Regex!17461 0))(
  ( (ElementMatch!17461 (c!1307778 C!35192)) (Concat!26306 (regOne!35434 Regex!17461) (regTwo!35434 Regex!17461)) (EmptyExpr!17461) (Star!17461 (reg!17790 Regex!17461)) (EmptyLang!17461) (Union!17461 (regOne!35435 Regex!17461) (regTwo!35435 Regex!17461)) )
))
(declare-datatypes ((List!67911 0))(
  ( (Nil!67787) (Cons!67787 (h!74235 Regex!17461) (t!381676 List!67911)) )
))
(declare-datatypes ((Context!12914 0))(
  ( (Context!12915 (exprs!6957 List!67911)) )
))
(declare-fun lt!2518126 () (InoxSet Context!12914))

(declare-fun lt!2518150 () (InoxSet Context!12914))

(assert (=> b!7031683 (= res!2870437 (not (= lt!2518126 lt!2518150)))))

(declare-fun lt!2518169 () (InoxSet Context!12914))

(declare-fun lt!2518145 () (InoxSet Context!12914))

(assert (=> b!7031683 (= lt!2518150 ((_ map or) lt!2518169 lt!2518145))))

(declare-fun lt!2518173 () Context!12914)

(declare-datatypes ((List!67912 0))(
  ( (Nil!67788) (Cons!67788 (h!74236 C!35192) (t!381677 List!67912)) )
))
(declare-fun s!7408 () List!67912)

(declare-fun derivationStepZipperUp!2071 (Context!12914 C!35192) (InoxSet Context!12914))

(assert (=> b!7031683 (= lt!2518145 (derivationStepZipperUp!2071 lt!2518173 (h!74236 s!7408)))))

(declare-fun lt!2518147 () Context!12914)

(declare-fun derivationStepZipperDown!2125 (Regex!17461 Context!12914 C!35192) (InoxSet Context!12914))

(assert (=> b!7031683 (= lt!2518169 (derivationStepZipperDown!2125 (h!74235 (exprs!6957 lt!2518147)) lt!2518173 (h!74236 s!7408)))))

(declare-fun lt!2518171 () List!67911)

(declare-fun ct2!306 () Context!12914)

(declare-fun ++!15502 (List!67911 List!67911) List!67911)

(assert (=> b!7031683 (= lt!2518173 (Context!12915 (++!15502 lt!2518171 (exprs!6957 ct2!306))))))

(declare-datatypes ((Unit!161592 0))(
  ( (Unit!161593) )
))
(declare-fun lt!2518135 () Unit!161592)

(declare-fun lambda!414477 () Int)

(declare-fun lemmaConcatPreservesForall!782 (List!67911 List!67911 Int) Unit!161592)

(assert (=> b!7031683 (= lt!2518135 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518153 () Unit!161592)

(assert (=> b!7031683 (= lt!2518153 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun b!7031684 () Bool)

(declare-fun res!2870440 () Bool)

(declare-fun e!4227171 () Bool)

(assert (=> b!7031684 (=> res!2870440 e!4227171)))

(declare-fun lt!2518166 () Context!12914)

(declare-fun lt!2518149 () (InoxSet Context!12914))

(assert (=> b!7031684 (= res!2870440 (not (select lt!2518149 lt!2518166)))))

(declare-fun b!7031685 () Bool)

(declare-fun e!4227173 () Bool)

(declare-fun tp!1936324 () Bool)

(assert (=> b!7031685 (= e!4227173 tp!1936324)))

(declare-fun b!7031686 () Bool)

(declare-fun res!2870451 () Bool)

(declare-fun e!4227178 () Bool)

(assert (=> b!7031686 (=> res!2870451 e!4227178)))

(declare-datatypes ((tuple2!68068 0))(
  ( (tuple2!68069 (_1!37337 List!67912) (_2!37337 List!67912)) )
))
(declare-fun lt!2518162 () tuple2!68068)

(declare-fun isEmpty!39532 (List!67912) Bool)

(assert (=> b!7031686 (= res!2870451 (not (isEmpty!39532 (_1!37337 lt!2518162))))))

(declare-fun b!7031687 () Bool)

(declare-fun e!4227168 () Bool)

(declare-fun e!4227172 () Bool)

(assert (=> b!7031687 (= e!4227168 e!4227172)))

(declare-fun res!2870455 () Bool)

(assert (=> b!7031687 (=> res!2870455 e!4227172)))

(declare-fun lt!2518128 () (InoxSet Context!12914))

(declare-fun matchZipper!3001 ((InoxSet Context!12914) List!67912) Bool)

(assert (=> b!7031687 (= res!2870455 (not (matchZipper!3001 lt!2518128 s!7408)))))

(declare-fun lt!2518136 () Unit!161592)

(assert (=> b!7031687 (= lt!2518136 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun e!4227177 () Bool)

(assert (=> b!7031688 (= e!4227171 e!4227177)))

(declare-fun res!2870456 () Bool)

(assert (=> b!7031688 (=> res!2870456 e!4227177)))

(declare-fun z1!570 () (InoxSet Context!12914))

(declare-fun lt!2518152 () Context!12914)

(assert (=> b!7031688 (= res!2870456 (or (not (= lt!2518152 lt!2518166)) (not (select z1!570 lt!2518147))))))

(assert (=> b!7031688 (= lt!2518152 (Context!12915 (++!15502 (exprs!6957 lt!2518147) (exprs!6957 ct2!306))))))

(declare-fun lt!2518129 () Unit!161592)

(assert (=> b!7031688 (= lt!2518129 (lemmaConcatPreservesForall!782 (exprs!6957 lt!2518147) (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lambda!414476 () Int)

(declare-fun mapPost2!302 ((InoxSet Context!12914) Int Context!12914) Context!12914)

(assert (=> b!7031688 (= lt!2518147 (mapPost2!302 z1!570 lambda!414476 lt!2518166))))

(declare-fun b!7031689 () Bool)

(declare-fun e!4227169 () Bool)

(assert (=> b!7031689 (= e!4227179 e!4227169)))

(declare-fun res!2870444 () Bool)

(assert (=> b!7031689 (=> res!2870444 e!4227169)))

(declare-fun e!4227181 () Bool)

(assert (=> b!7031689 (= res!2870444 e!4227181)))

(declare-fun res!2870441 () Bool)

(assert (=> b!7031689 (=> (not res!2870441) (not e!4227181))))

(declare-fun lt!2518130 () Bool)

(declare-fun lt!2518155 () Bool)

(assert (=> b!7031689 (= res!2870441 (not (= lt!2518130 lt!2518155)))))

(assert (=> b!7031689 (= lt!2518130 (matchZipper!3001 lt!2518126 (t!381677 s!7408)))))

(declare-fun lt!2518165 () Unit!161592)

(assert (=> b!7031689 (= lt!2518165 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun e!4227175 () Bool)

(assert (=> b!7031689 (= (matchZipper!3001 lt!2518150 (t!381677 s!7408)) e!4227175)))

(declare-fun res!2870438 () Bool)

(assert (=> b!7031689 (=> res!2870438 e!4227175)))

(assert (=> b!7031689 (= res!2870438 lt!2518155)))

(assert (=> b!7031689 (= lt!2518155 (matchZipper!3001 lt!2518169 (t!381677 s!7408)))))

(declare-fun lt!2518154 () Unit!161592)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1534 ((InoxSet Context!12914) (InoxSet Context!12914) List!67912) Unit!161592)

(assert (=> b!7031689 (= lt!2518154 (lemmaZipperConcatMatchesSameAsBothZippers!1534 lt!2518169 lt!2518145 (t!381677 s!7408)))))

(declare-fun lt!2518161 () Unit!161592)

(assert (=> b!7031689 (= lt!2518161 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518167 () Unit!161592)

(assert (=> b!7031689 (= lt!2518167 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun setIsEmpty!49136 () Bool)

(declare-fun setRes!49136 () Bool)

(assert (=> setIsEmpty!49136 setRes!49136))

(declare-fun b!7031691 () Bool)

(declare-fun res!2870445 () Bool)

(declare-fun e!4227165 () Bool)

(assert (=> b!7031691 (=> res!2870445 e!4227165)))

(get-info :version)

(assert (=> b!7031691 (= res!2870445 (not ((_ is Cons!67787) (exprs!6957 lt!2518147))))))

(declare-fun b!7031692 () Bool)

(declare-fun e!4227180 () Bool)

(assert (=> b!7031692 (= e!4227180 e!4227168)))

(declare-fun res!2870450 () Bool)

(assert (=> b!7031692 (=> res!2870450 e!4227168)))

(declare-fun derivationStepZipper!2917 ((InoxSet Context!12914) C!35192) (InoxSet Context!12914))

(assert (=> b!7031692 (= res!2870450 (not (= (derivationStepZipper!2917 lt!2518128 (h!74236 s!7408)) lt!2518145)))))

(declare-fun lt!2518132 () Unit!161592)

(assert (=> b!7031692 (= lt!2518132 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518125 () Unit!161592)

(assert (=> b!7031692 (= lt!2518125 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lambda!414478 () Int)

(declare-fun flatMap!2408 ((InoxSet Context!12914) Int) (InoxSet Context!12914))

(assert (=> b!7031692 (= (flatMap!2408 lt!2518128 lambda!414478) (derivationStepZipperUp!2071 lt!2518173 (h!74236 s!7408)))))

(declare-fun lt!2518159 () Unit!161592)

(declare-fun lemmaFlatMapOnSingletonSet!1922 ((InoxSet Context!12914) Context!12914 Int) Unit!161592)

(assert (=> b!7031692 (= lt!2518159 (lemmaFlatMapOnSingletonSet!1922 lt!2518128 lt!2518173 lambda!414478))))

(assert (=> b!7031692 (= lt!2518128 (store ((as const (Array Context!12914 Bool)) false) lt!2518173 true))))

(declare-fun lt!2518163 () Unit!161592)

(assert (=> b!7031692 (= lt!2518163 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518151 () Unit!161592)

(assert (=> b!7031692 (= lt!2518151 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun b!7031693 () Bool)

(declare-fun res!2870452 () Bool)

(assert (=> b!7031693 (=> res!2870452 e!4227165)))

(declare-fun isEmpty!39533 (List!67911) Bool)

(assert (=> b!7031693 (= res!2870452 (isEmpty!39533 (exprs!6957 lt!2518147)))))

(declare-fun b!7031694 () Bool)

(declare-fun res!2870449 () Bool)

(declare-fun e!4227176 () Bool)

(assert (=> b!7031694 (=> res!2870449 e!4227176)))

(declare-fun lt!2518156 () Context!12914)

(declare-fun lt!2518158 () Int)

(declare-datatypes ((List!67913 0))(
  ( (Nil!67789) (Cons!67789 (h!74237 Context!12914) (t!381678 List!67913)) )
))
(declare-fun zipperDepthTotal!524 (List!67913) Int)

(assert (=> b!7031694 (= res!2870449 (>= (zipperDepthTotal!524 (Cons!67789 lt!2518156 Nil!67789)) lt!2518158))))

(declare-fun b!7031695 () Bool)

(declare-fun e!4227174 () Bool)

(declare-fun tp_is_empty!44147 () Bool)

(declare-fun tp!1936325 () Bool)

(assert (=> b!7031695 (= e!4227174 (and tp_is_empty!44147 tp!1936325))))

(declare-fun b!7031696 () Bool)

(assert (=> b!7031696 (= e!4227172 e!4227176)))

(declare-fun res!2870443 () Bool)

(assert (=> b!7031696 (=> res!2870443 e!4227176)))

(declare-fun lt!2518170 () Int)

(declare-fun contextDepthTotal!496 (Context!12914) Int)

(assert (=> b!7031696 (= res!2870443 (<= lt!2518170 (contextDepthTotal!496 lt!2518156)))))

(assert (=> b!7031696 (<= lt!2518170 lt!2518158)))

(declare-fun lt!2518168 () List!67913)

(assert (=> b!7031696 (= lt!2518158 (zipperDepthTotal!524 lt!2518168))))

(assert (=> b!7031696 (= lt!2518170 (contextDepthTotal!496 lt!2518147))))

(declare-fun lt!2518131 () Unit!161592)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!64 (List!67913 Context!12914) Unit!161592)

(assert (=> b!7031696 (= lt!2518131 (lemmaTotalDepthZipperLargerThanOfAnyContext!64 lt!2518168 lt!2518147))))

(declare-fun toList!10804 ((InoxSet Context!12914)) List!67913)

(assert (=> b!7031696 (= lt!2518168 (toList!10804 z1!570))))

(declare-fun lt!2518143 () Unit!161592)

(assert (=> b!7031696 (= lt!2518143 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518138 () Unit!161592)

(assert (=> b!7031696 (= lt!2518138 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518123 () Unit!161592)

(assert (=> b!7031696 (= lt!2518123 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518172 () (InoxSet Context!12914))

(assert (=> b!7031696 (= (flatMap!2408 lt!2518172 lambda!414478) (derivationStepZipperUp!2071 lt!2518156 (h!74236 s!7408)))))

(declare-fun lt!2518157 () Unit!161592)

(assert (=> b!7031696 (= lt!2518157 (lemmaFlatMapOnSingletonSet!1922 lt!2518172 lt!2518156 lambda!414478))))

(declare-fun map!15759 ((InoxSet Context!12914) Int) (InoxSet Context!12914))

(assert (=> b!7031696 (= (map!15759 lt!2518172 lambda!414476) (store ((as const (Array Context!12914 Bool)) false) (Context!12915 (++!15502 lt!2518171 (exprs!6957 ct2!306))) true))))

(declare-fun lt!2518146 () Unit!161592)

(assert (=> b!7031696 (= lt!2518146 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun lt!2518127 () Unit!161592)

(declare-fun lemmaMapOnSingletonSet!372 ((InoxSet Context!12914) Context!12914 Int) Unit!161592)

(assert (=> b!7031696 (= lt!2518127 (lemmaMapOnSingletonSet!372 lt!2518172 lt!2518156 lambda!414476))))

(assert (=> b!7031696 (= lt!2518172 (store ((as const (Array Context!12914 Bool)) false) lt!2518156 true))))

(declare-fun b!7031697 () Bool)

(declare-fun res!2870439 () Bool)

(assert (=> b!7031697 (=> res!2870439 e!4227178)))

(declare-fun lt!2518122 () (InoxSet Context!12914))

(assert (=> b!7031697 (= res!2870439 (not (matchZipper!3001 lt!2518122 (_2!37337 lt!2518162))))))

(declare-fun b!7031698 () Bool)

(assert (=> b!7031698 (= e!4227165 e!4227164)))

(declare-fun res!2870435 () Bool)

(assert (=> b!7031698 (=> res!2870435 e!4227164)))

(declare-fun nullable!7172 (Regex!17461) Bool)

(assert (=> b!7031698 (= res!2870435 (not (nullable!7172 (h!74235 (exprs!6957 lt!2518147)))))))

(assert (=> b!7031698 (= lt!2518156 (Context!12915 lt!2518171))))

(declare-fun tail!13545 (List!67911) List!67911)

(assert (=> b!7031698 (= lt!2518171 (tail!13545 (exprs!6957 lt!2518147)))))

(declare-fun res!2870453 () Bool)

(assert (=> b!7031699 (=> res!2870453 e!4227178)))

(declare-fun exists!3384 ((InoxSet Context!12914) Int) Bool)

(assert (=> b!7031699 (= res!2870453 (not (exists!3384 lt!2518172 lambda!414479)))))

(declare-fun b!7031690 () Bool)

(declare-fun res!2870447 () Bool)

(assert (=> b!7031690 (=> res!2870447 e!4227169)))

(assert (=> b!7031690 (= res!2870447 (not lt!2518130))))

(declare-fun res!2870432 () Bool)

(declare-fun e!4227166 () Bool)

(assert (=> start!679416 (=> (not res!2870432) (not e!4227166))))

(assert (=> start!679416 (= res!2870432 (matchZipper!3001 lt!2518149 s!7408))))

(declare-fun appendTo!582 ((InoxSet Context!12914) Context!12914) (InoxSet Context!12914))

(assert (=> start!679416 (= lt!2518149 (appendTo!582 z1!570 ct2!306))))

(assert (=> start!679416 e!4227166))

(declare-fun condSetEmpty!49136 () Bool)

(assert (=> start!679416 (= condSetEmpty!49136 (= z1!570 ((as const (Array Context!12914 Bool)) false)))))

(assert (=> start!679416 setRes!49136))

(declare-fun e!4227170 () Bool)

(declare-fun inv!86511 (Context!12914) Bool)

(assert (=> start!679416 (and (inv!86511 ct2!306) e!4227170)))

(assert (=> start!679416 e!4227174))

(declare-fun b!7031700 () Bool)

(declare-fun nullableContext!81 (Context!12914) Bool)

(assert (=> b!7031700 (= e!4227178 (nullableContext!81 lt!2518156))))

(declare-fun lt!2518144 () Context!12914)

(declare-fun getWitness!1464 ((InoxSet Context!12914) Int) Context!12914)

(assert (=> b!7031700 (= lt!2518144 (getWitness!1464 lt!2518172 lambda!414479))))

(declare-fun b!7031701 () Bool)

(assert (=> b!7031701 (= e!4227176 e!4227178)))

(declare-fun res!2870454 () Bool)

(assert (=> b!7031701 (=> res!2870454 e!4227178)))

(assert (=> b!7031701 (= res!2870454 (not (matchZipper!3001 lt!2518172 (_1!37337 lt!2518162))))))

(declare-datatypes ((Option!16866 0))(
  ( (None!16865) (Some!16865 (v!53149 tuple2!68068)) )
))
(declare-fun lt!2518133 () Option!16866)

(declare-fun get!23747 (Option!16866) tuple2!68068)

(assert (=> b!7031701 (= lt!2518162 (get!23747 lt!2518133))))

(declare-fun isDefined!13567 (Option!16866) Bool)

(assert (=> b!7031701 (isDefined!13567 lt!2518133)))

(declare-fun findConcatSeparationZippers!382 ((InoxSet Context!12914) (InoxSet Context!12914) List!67912 List!67912 List!67912) Option!16866)

(assert (=> b!7031701 (= lt!2518133 (findConcatSeparationZippers!382 lt!2518172 lt!2518122 Nil!67788 s!7408 s!7408))))

(assert (=> b!7031701 (= lt!2518122 (store ((as const (Array Context!12914 Bool)) false) ct2!306 true))))

(declare-fun lt!2518148 () Unit!161592)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!370 ((InoxSet Context!12914) Context!12914 List!67912) Unit!161592)

(assert (=> b!7031701 (= lt!2518148 (lemmaConcatZipperMatchesStringThenFindConcatDefined!370 lt!2518172 ct2!306 s!7408))))

(declare-fun b!7031702 () Bool)

(assert (=> b!7031702 (= e!4227169 e!4227180)))

(declare-fun res!2870442 () Bool)

(assert (=> b!7031702 (=> res!2870442 e!4227180)))

(assert (=> b!7031702 (= res!2870442 (not (matchZipper!3001 lt!2518145 (t!381677 s!7408))))))

(declare-fun lt!2518137 () Unit!161592)

(assert (=> b!7031702 (= lt!2518137 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun b!7031703 () Bool)

(declare-fun e!4227167 () Bool)

(assert (=> b!7031703 (= e!4227177 e!4227167)))

(declare-fun res!2870446 () Bool)

(assert (=> b!7031703 (=> res!2870446 e!4227167)))

(declare-fun lt!2518139 () (InoxSet Context!12914))

(declare-fun lt!2518141 () (InoxSet Context!12914))

(assert (=> b!7031703 (= res!2870446 (not (= lt!2518139 lt!2518141)))))

(assert (=> b!7031703 (= lt!2518139 (store ((as const (Array Context!12914 Bool)) false) lt!2518152 true))))

(declare-fun lt!2518164 () Unit!161592)

(assert (=> b!7031703 (= lt!2518164 (lemmaConcatPreservesForall!782 (exprs!6957 lt!2518147) (exprs!6957 ct2!306) lambda!414477))))

(declare-fun setElem!49136 () Context!12914)

(declare-fun tp!1936326 () Bool)

(declare-fun setNonEmpty!49136 () Bool)

(assert (=> setNonEmpty!49136 (= setRes!49136 (and tp!1936326 (inv!86511 setElem!49136) e!4227173))))

(declare-fun setRest!49136 () (InoxSet Context!12914))

(assert (=> setNonEmpty!49136 (= z1!570 ((_ map or) (store ((as const (Array Context!12914 Bool)) false) setElem!49136 true) setRest!49136))))

(declare-fun b!7031704 () Bool)

(assert (=> b!7031704 (= e!4227181 (not (matchZipper!3001 lt!2518145 (t!381677 s!7408))))))

(declare-fun lt!2518142 () Unit!161592)

(assert (=> b!7031704 (= lt!2518142 (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(declare-fun b!7031705 () Bool)

(declare-fun res!2870433 () Bool)

(assert (=> b!7031705 (=> (not res!2870433) (not e!4227166))))

(assert (=> b!7031705 (= res!2870433 ((_ is Cons!67788) s!7408))))

(assert (=> b!7031706 (= e!4227166 (not e!4227171))))

(declare-fun res!2870436 () Bool)

(assert (=> b!7031706 (=> res!2870436 e!4227171)))

(assert (=> b!7031706 (= res!2870436 (not (matchZipper!3001 lt!2518141 s!7408)))))

(assert (=> b!7031706 (= lt!2518141 (store ((as const (Array Context!12914 Bool)) false) lt!2518166 true))))

(assert (=> b!7031706 (= lt!2518166 (getWitness!1464 lt!2518149 lambda!414475))))

(declare-fun lt!2518134 () List!67913)

(declare-fun exists!3385 (List!67913 Int) Bool)

(assert (=> b!7031706 (exists!3385 lt!2518134 lambda!414475)))

(declare-fun lt!2518160 () Unit!161592)

(declare-fun lemmaZipperMatchesExistsMatchingContext!400 (List!67913 List!67912) Unit!161592)

(assert (=> b!7031706 (= lt!2518160 (lemmaZipperMatchesExistsMatchingContext!400 lt!2518134 s!7408))))

(assert (=> b!7031706 (= lt!2518134 (toList!10804 lt!2518149))))

(declare-fun b!7031707 () Bool)

(assert (=> b!7031707 (= e!4227175 (matchZipper!3001 lt!2518145 (t!381677 s!7408)))))

(declare-fun b!7031708 () Bool)

(declare-fun res!2870434 () Bool)

(assert (=> b!7031708 (=> res!2870434 e!4227178)))

(declare-fun ++!15503 (List!67912 List!67912) List!67912)

(assert (=> b!7031708 (= res!2870434 (not (= (++!15503 (_1!37337 lt!2518162) (_2!37337 lt!2518162)) s!7408)))))

(declare-fun b!7031709 () Bool)

(declare-fun tp!1936327 () Bool)

(assert (=> b!7031709 (= e!4227170 tp!1936327)))

(assert (=> b!7031710 (= e!4227167 e!4227165)))

(declare-fun res!2870448 () Bool)

(assert (=> b!7031710 (=> res!2870448 e!4227165)))

(assert (=> b!7031710 (= res!2870448 (not (= (derivationStepZipper!2917 lt!2518139 (h!74236 s!7408)) lt!2518126)))))

(assert (=> b!7031710 (= (flatMap!2408 lt!2518139 lambda!414478) (derivationStepZipperUp!2071 lt!2518152 (h!74236 s!7408)))))

(declare-fun lt!2518124 () Unit!161592)

(assert (=> b!7031710 (= lt!2518124 (lemmaFlatMapOnSingletonSet!1922 lt!2518139 lt!2518152 lambda!414478))))

(assert (=> b!7031710 (= lt!2518126 (derivationStepZipperUp!2071 lt!2518152 (h!74236 s!7408)))))

(declare-fun lt!2518140 () Unit!161592)

(assert (=> b!7031710 (= lt!2518140 (lemmaConcatPreservesForall!782 (exprs!6957 lt!2518147) (exprs!6957 ct2!306) lambda!414477))))

(assert (= (and start!679416 res!2870432) b!7031705))

(assert (= (and b!7031705 res!2870433) b!7031706))

(assert (= (and b!7031706 (not res!2870436)) b!7031684))

(assert (= (and b!7031684 (not res!2870440)) b!7031688))

(assert (= (and b!7031688 (not res!2870456)) b!7031703))

(assert (= (and b!7031703 (not res!2870446)) b!7031710))

(assert (= (and b!7031710 (not res!2870448)) b!7031691))

(assert (= (and b!7031691 (not res!2870445)) b!7031693))

(assert (= (and b!7031693 (not res!2870452)) b!7031698))

(assert (= (and b!7031698 (not res!2870435)) b!7031683))

(assert (= (and b!7031683 (not res!2870437)) b!7031689))

(assert (= (and b!7031689 (not res!2870438)) b!7031707))

(assert (= (and b!7031689 res!2870441) b!7031704))

(assert (= (and b!7031689 (not res!2870444)) b!7031690))

(assert (= (and b!7031690 (not res!2870447)) b!7031702))

(assert (= (and b!7031702 (not res!2870442)) b!7031692))

(assert (= (and b!7031692 (not res!2870450)) b!7031687))

(assert (= (and b!7031687 (not res!2870455)) b!7031696))

(assert (= (and b!7031696 (not res!2870443)) b!7031694))

(assert (= (and b!7031694 (not res!2870449)) b!7031701))

(assert (= (and b!7031701 (not res!2870454)) b!7031697))

(assert (= (and b!7031697 (not res!2870439)) b!7031708))

(assert (= (and b!7031708 (not res!2870434)) b!7031686))

(assert (= (and b!7031686 (not res!2870451)) b!7031699))

(assert (= (and b!7031699 (not res!2870453)) b!7031700))

(assert (= (and start!679416 condSetEmpty!49136) setIsEmpty!49136))

(assert (= (and start!679416 (not condSetEmpty!49136)) setNonEmpty!49136))

(assert (= setNonEmpty!49136 b!7031685))

(assert (= start!679416 b!7031709))

(assert (= (and start!679416 ((_ is Cons!67788) s!7408)) b!7031695))

(declare-fun m!7737750 () Bool)

(assert (=> start!679416 m!7737750))

(declare-fun m!7737752 () Bool)

(assert (=> start!679416 m!7737752))

(declare-fun m!7737754 () Bool)

(assert (=> start!679416 m!7737754))

(declare-fun m!7737756 () Bool)

(assert (=> b!7031687 m!7737756))

(declare-fun m!7737758 () Bool)

(assert (=> b!7031687 m!7737758))

(declare-fun m!7737760 () Bool)

(assert (=> b!7031693 m!7737760))

(declare-fun m!7737762 () Bool)

(assert (=> b!7031704 m!7737762))

(assert (=> b!7031704 m!7737758))

(declare-fun m!7737764 () Bool)

(assert (=> b!7031696 m!7737764))

(declare-fun m!7737766 () Bool)

(assert (=> b!7031696 m!7737766))

(declare-fun m!7737768 () Bool)

(assert (=> b!7031696 m!7737768))

(declare-fun m!7737770 () Bool)

(assert (=> b!7031696 m!7737770))

(assert (=> b!7031696 m!7737758))

(declare-fun m!7737772 () Bool)

(assert (=> b!7031696 m!7737772))

(declare-fun m!7737774 () Bool)

(assert (=> b!7031696 m!7737774))

(declare-fun m!7737776 () Bool)

(assert (=> b!7031696 m!7737776))

(declare-fun m!7737778 () Bool)

(assert (=> b!7031696 m!7737778))

(declare-fun m!7737780 () Bool)

(assert (=> b!7031696 m!7737780))

(assert (=> b!7031696 m!7737758))

(declare-fun m!7737782 () Bool)

(assert (=> b!7031696 m!7737782))

(assert (=> b!7031696 m!7737758))

(declare-fun m!7737784 () Bool)

(assert (=> b!7031696 m!7737784))

(declare-fun m!7737786 () Bool)

(assert (=> b!7031696 m!7737786))

(declare-fun m!7737788 () Bool)

(assert (=> b!7031696 m!7737788))

(assert (=> b!7031696 m!7737758))

(declare-fun m!7737790 () Bool)

(assert (=> b!7031710 m!7737790))

(declare-fun m!7737792 () Bool)

(assert (=> b!7031710 m!7737792))

(declare-fun m!7737794 () Bool)

(assert (=> b!7031710 m!7737794))

(declare-fun m!7737796 () Bool)

(assert (=> b!7031710 m!7737796))

(declare-fun m!7737798 () Bool)

(assert (=> b!7031710 m!7737798))

(declare-fun m!7737800 () Bool)

(assert (=> b!7031703 m!7737800))

(assert (=> b!7031703 m!7737798))

(declare-fun m!7737802 () Bool)

(assert (=> b!7031694 m!7737802))

(assert (=> b!7031707 m!7737762))

(declare-fun m!7737804 () Bool)

(assert (=> b!7031684 m!7737804))

(declare-fun m!7737806 () Bool)

(assert (=> setNonEmpty!49136 m!7737806))

(assert (=> b!7031692 m!7737758))

(assert (=> b!7031692 m!7737758))

(declare-fun m!7737808 () Bool)

(assert (=> b!7031692 m!7737808))

(declare-fun m!7737810 () Bool)

(assert (=> b!7031692 m!7737810))

(declare-fun m!7737812 () Bool)

(assert (=> b!7031692 m!7737812))

(assert (=> b!7031692 m!7737758))

(declare-fun m!7737814 () Bool)

(assert (=> b!7031692 m!7737814))

(declare-fun m!7737816 () Bool)

(assert (=> b!7031692 m!7737816))

(assert (=> b!7031692 m!7737758))

(declare-fun m!7737818 () Bool)

(assert (=> b!7031708 m!7737818))

(assert (=> b!7031689 m!7737758))

(assert (=> b!7031689 m!7737758))

(declare-fun m!7737820 () Bool)

(assert (=> b!7031689 m!7737820))

(assert (=> b!7031689 m!7737758))

(declare-fun m!7737822 () Bool)

(assert (=> b!7031689 m!7737822))

(declare-fun m!7737824 () Bool)

(assert (=> b!7031689 m!7737824))

(declare-fun m!7737826 () Bool)

(assert (=> b!7031689 m!7737826))

(declare-fun m!7737828 () Bool)

(assert (=> b!7031688 m!7737828))

(declare-fun m!7737830 () Bool)

(assert (=> b!7031688 m!7737830))

(assert (=> b!7031688 m!7737798))

(declare-fun m!7737832 () Bool)

(assert (=> b!7031688 m!7737832))

(assert (=> b!7031683 m!7737772))

(assert (=> b!7031683 m!7737758))

(assert (=> b!7031683 m!7737812))

(assert (=> b!7031683 m!7737758))

(declare-fun m!7737834 () Bool)

(assert (=> b!7031683 m!7737834))

(declare-fun m!7737836 () Bool)

(assert (=> b!7031701 m!7737836))

(declare-fun m!7737838 () Bool)

(assert (=> b!7031701 m!7737838))

(declare-fun m!7737840 () Bool)

(assert (=> b!7031701 m!7737840))

(declare-fun m!7737842 () Bool)

(assert (=> b!7031701 m!7737842))

(declare-fun m!7737844 () Bool)

(assert (=> b!7031701 m!7737844))

(declare-fun m!7737846 () Bool)

(assert (=> b!7031701 m!7737846))

(declare-fun m!7737848 () Bool)

(assert (=> b!7031700 m!7737848))

(declare-fun m!7737850 () Bool)

(assert (=> b!7031700 m!7737850))

(declare-fun m!7737852 () Bool)

(assert (=> b!7031697 m!7737852))

(declare-fun m!7737854 () Bool)

(assert (=> b!7031698 m!7737854))

(declare-fun m!7737856 () Bool)

(assert (=> b!7031698 m!7737856))

(declare-fun m!7737858 () Bool)

(assert (=> b!7031699 m!7737858))

(declare-fun m!7737860 () Bool)

(assert (=> b!7031686 m!7737860))

(declare-fun m!7737862 () Bool)

(assert (=> b!7031706 m!7737862))

(declare-fun m!7737864 () Bool)

(assert (=> b!7031706 m!7737864))

(declare-fun m!7737866 () Bool)

(assert (=> b!7031706 m!7737866))

(declare-fun m!7737868 () Bool)

(assert (=> b!7031706 m!7737868))

(declare-fun m!7737870 () Bool)

(assert (=> b!7031706 m!7737870))

(declare-fun m!7737872 () Bool)

(assert (=> b!7031706 m!7737872))

(assert (=> b!7031702 m!7737762))

(assert (=> b!7031702 m!7737758))

(check-sat (not b!7031703) (not b!7031704) (not b!7031708) (not b!7031709) (not b!7031696) (not b!7031710) (not b!7031688) (not b!7031701) (not b!7031707) (not b!7031699) (not b!7031697) (not b!7031687) (not b!7031693) (not b!7031698) (not b!7031706) (not b!7031689) (not b!7031685) (not b!7031702) (not b!7031700) (not b!7031683) (not b!7031695) (not setNonEmpty!49136) (not b!7031692) (not start!679416) (not b!7031686) tp_is_empty!44147 (not b!7031694))
(check-sat)
(get-model)

(declare-fun d!2193604 () Bool)

(declare-fun c!1307828 () Bool)

(assert (=> d!2193604 (= c!1307828 (isEmpty!39532 (t!381677 s!7408)))))

(declare-fun e!4227254 () Bool)

(assert (=> d!2193604 (= (matchZipper!3001 lt!2518145 (t!381677 s!7408)) e!4227254)))

(declare-fun b!7031847 () Bool)

(declare-fun nullableZipper!2577 ((InoxSet Context!12914)) Bool)

(assert (=> b!7031847 (= e!4227254 (nullableZipper!2577 lt!2518145))))

(declare-fun b!7031848 () Bool)

(declare-fun head!14260 (List!67912) C!35192)

(declare-fun tail!13547 (List!67912) List!67912)

(assert (=> b!7031848 (= e!4227254 (matchZipper!3001 (derivationStepZipper!2917 lt!2518145 (head!14260 (t!381677 s!7408))) (tail!13547 (t!381677 s!7408))))))

(assert (= (and d!2193604 c!1307828) b!7031847))

(assert (= (and d!2193604 (not c!1307828)) b!7031848))

(declare-fun m!7738140 () Bool)

(assert (=> d!2193604 m!7738140))

(declare-fun m!7738142 () Bool)

(assert (=> b!7031847 m!7738142))

(declare-fun m!7738144 () Bool)

(assert (=> b!7031848 m!7738144))

(assert (=> b!7031848 m!7738144))

(declare-fun m!7738146 () Bool)

(assert (=> b!7031848 m!7738146))

(declare-fun m!7738148 () Bool)

(assert (=> b!7031848 m!7738148))

(assert (=> b!7031848 m!7738146))

(assert (=> b!7031848 m!7738148))

(declare-fun m!7738154 () Bool)

(assert (=> b!7031848 m!7738154))

(assert (=> b!7031704 d!2193604))

(declare-fun d!2193630 () Bool)

(declare-fun forall!16373 (List!67911 Int) Bool)

(assert (=> d!2193630 (forall!16373 (++!15502 lt!2518171 (exprs!6957 ct2!306)) lambda!414477)))

(declare-fun lt!2518238 () Unit!161592)

(declare-fun choose!53225 (List!67911 List!67911 Int) Unit!161592)

(assert (=> d!2193630 (= lt!2518238 (choose!53225 lt!2518171 (exprs!6957 ct2!306) lambda!414477))))

(assert (=> d!2193630 (forall!16373 lt!2518171 lambda!414477)))

(assert (=> d!2193630 (= (lemmaConcatPreservesForall!782 lt!2518171 (exprs!6957 ct2!306) lambda!414477) lt!2518238)))

(declare-fun bs!1870489 () Bool)

(assert (= bs!1870489 d!2193630))

(assert (=> bs!1870489 m!7737772))

(assert (=> bs!1870489 m!7737772))

(declare-fun m!7738178 () Bool)

(assert (=> bs!1870489 m!7738178))

(declare-fun m!7738180 () Bool)

(assert (=> bs!1870489 m!7738180))

(declare-fun m!7738182 () Bool)

(assert (=> bs!1870489 m!7738182))

(assert (=> b!7031704 d!2193630))

(declare-fun d!2193638 () Bool)

(assert (=> d!2193638 (= (isEmpty!39532 (_1!37337 lt!2518162)) ((_ is Nil!67788) (_1!37337 lt!2518162)))))

(assert (=> b!7031686 d!2193638))

(declare-fun d!2193640 () Bool)

(declare-fun e!4227264 () Bool)

(assert (=> d!2193640 e!4227264))

(declare-fun res!2870509 () Bool)

(assert (=> d!2193640 (=> (not res!2870509) (not e!4227264))))

(declare-fun lt!2518243 () List!67913)

(declare-fun noDuplicate!2625 (List!67913) Bool)

(assert (=> d!2193640 (= res!2870509 (noDuplicate!2625 lt!2518243))))

(declare-fun choose!53227 ((InoxSet Context!12914)) List!67913)

(assert (=> d!2193640 (= lt!2518243 (choose!53227 lt!2518149))))

(assert (=> d!2193640 (= (toList!10804 lt!2518149) lt!2518243)))

(declare-fun b!7031862 () Bool)

(declare-fun content!13526 (List!67913) (InoxSet Context!12914))

(assert (=> b!7031862 (= e!4227264 (= (content!13526 lt!2518243) lt!2518149))))

(assert (= (and d!2193640 res!2870509) b!7031862))

(declare-fun m!7738188 () Bool)

(assert (=> d!2193640 m!7738188))

(declare-fun m!7738190 () Bool)

(assert (=> d!2193640 m!7738190))

(declare-fun m!7738192 () Bool)

(assert (=> b!7031862 m!7738192))

(assert (=> b!7031706 d!2193640))

(declare-fun d!2193646 () Bool)

(declare-fun c!1307833 () Bool)

(assert (=> d!2193646 (= c!1307833 (isEmpty!39532 s!7408))))

(declare-fun e!4227266 () Bool)

(assert (=> d!2193646 (= (matchZipper!3001 lt!2518141 s!7408) e!4227266)))

(declare-fun b!7031867 () Bool)

(assert (=> b!7031867 (= e!4227266 (nullableZipper!2577 lt!2518141))))

(declare-fun b!7031868 () Bool)

(assert (=> b!7031868 (= e!4227266 (matchZipper!3001 (derivationStepZipper!2917 lt!2518141 (head!14260 s!7408)) (tail!13547 s!7408)))))

(assert (= (and d!2193646 c!1307833) b!7031867))

(assert (= (and d!2193646 (not c!1307833)) b!7031868))

(declare-fun m!7738194 () Bool)

(assert (=> d!2193646 m!7738194))

(declare-fun m!7738196 () Bool)

(assert (=> b!7031867 m!7738196))

(declare-fun m!7738198 () Bool)

(assert (=> b!7031868 m!7738198))

(assert (=> b!7031868 m!7738198))

(declare-fun m!7738200 () Bool)

(assert (=> b!7031868 m!7738200))

(declare-fun m!7738202 () Bool)

(assert (=> b!7031868 m!7738202))

(assert (=> b!7031868 m!7738200))

(assert (=> b!7031868 m!7738202))

(declare-fun m!7738204 () Bool)

(assert (=> b!7031868 m!7738204))

(assert (=> b!7031706 d!2193646))

(declare-fun bs!1870496 () Bool)

(declare-fun d!2193648 () Bool)

(assert (= bs!1870496 (and d!2193648 b!7031706)))

(declare-fun lambda!414504 () Int)

(assert (=> bs!1870496 (not (= lambda!414504 lambda!414475))))

(declare-fun bs!1870497 () Bool)

(assert (= bs!1870497 (and d!2193648 b!7031699)))

(assert (=> bs!1870497 (not (= lambda!414504 lambda!414479))))

(assert (=> d!2193648 true))

(declare-fun order!28169 () Int)

(declare-fun dynLambda!27369 (Int Int) Int)

(assert (=> d!2193648 (< (dynLambda!27369 order!28169 lambda!414475) (dynLambda!27369 order!28169 lambda!414504))))

(declare-fun forall!16374 (List!67913 Int) Bool)

(assert (=> d!2193648 (= (exists!3385 lt!2518134 lambda!414475) (not (forall!16374 lt!2518134 lambda!414504)))))

(declare-fun bs!1870498 () Bool)

(assert (= bs!1870498 d!2193648))

(declare-fun m!7738206 () Bool)

(assert (=> bs!1870498 m!7738206))

(assert (=> b!7031706 d!2193648))

(declare-fun d!2193650 () Bool)

(declare-fun e!4227296 () Bool)

(assert (=> d!2193650 e!4227296))

(declare-fun res!2870515 () Bool)

(assert (=> d!2193650 (=> (not res!2870515) (not e!4227296))))

(declare-fun lt!2518246 () Context!12914)

(declare-fun dynLambda!27370 (Int Context!12914) Bool)

(assert (=> d!2193650 (= res!2870515 (dynLambda!27370 lambda!414475 lt!2518246))))

(declare-fun getWitness!1466 (List!67913 Int) Context!12914)

(assert (=> d!2193650 (= lt!2518246 (getWitness!1466 (toList!10804 lt!2518149) lambda!414475))))

(assert (=> d!2193650 (exists!3384 lt!2518149 lambda!414475)))

(assert (=> d!2193650 (= (getWitness!1464 lt!2518149 lambda!414475) lt!2518246)))

(declare-fun b!7031918 () Bool)

(assert (=> b!7031918 (= e!4227296 (select lt!2518149 lt!2518246))))

(assert (= (and d!2193650 res!2870515) b!7031918))

(declare-fun b_lambda!266359 () Bool)

(assert (=> (not b_lambda!266359) (not d!2193650)))

(declare-fun m!7738228 () Bool)

(assert (=> d!2193650 m!7738228))

(assert (=> d!2193650 m!7737866))

(assert (=> d!2193650 m!7737866))

(declare-fun m!7738230 () Bool)

(assert (=> d!2193650 m!7738230))

(declare-fun m!7738236 () Bool)

(assert (=> d!2193650 m!7738236))

(declare-fun m!7738238 () Bool)

(assert (=> b!7031918 m!7738238))

(assert (=> b!7031706 d!2193650))

(declare-fun bs!1870506 () Bool)

(declare-fun d!2193666 () Bool)

(assert (= bs!1870506 (and d!2193666 b!7031706)))

(declare-fun lambda!414507 () Int)

(assert (=> bs!1870506 (= lambda!414507 lambda!414475)))

(declare-fun bs!1870507 () Bool)

(assert (= bs!1870507 (and d!2193666 b!7031699)))

(assert (=> bs!1870507 (not (= lambda!414507 lambda!414479))))

(declare-fun bs!1870508 () Bool)

(assert (= bs!1870508 (and d!2193666 d!2193648)))

(assert (=> bs!1870508 (not (= lambda!414507 lambda!414504))))

(assert (=> d!2193666 true))

(assert (=> d!2193666 (exists!3385 lt!2518134 lambda!414507)))

(declare-fun lt!2518251 () Unit!161592)

(declare-fun choose!53229 (List!67913 List!67912) Unit!161592)

(assert (=> d!2193666 (= lt!2518251 (choose!53229 lt!2518134 s!7408))))

(assert (=> d!2193666 (matchZipper!3001 (content!13526 lt!2518134) s!7408)))

(assert (=> d!2193666 (= (lemmaZipperMatchesExistsMatchingContext!400 lt!2518134 s!7408) lt!2518251)))

(declare-fun bs!1870509 () Bool)

(assert (= bs!1870509 d!2193666))

(declare-fun m!7738240 () Bool)

(assert (=> bs!1870509 m!7738240))

(declare-fun m!7738242 () Bool)

(assert (=> bs!1870509 m!7738242))

(declare-fun m!7738244 () Bool)

(assert (=> bs!1870509 m!7738244))

(assert (=> bs!1870509 m!7738244))

(declare-fun m!7738246 () Bool)

(assert (=> bs!1870509 m!7738246))

(assert (=> b!7031706 d!2193666))

(declare-fun d!2193668 () Bool)

(declare-fun c!1307850 () Bool)

(assert (=> d!2193668 (= c!1307850 (isEmpty!39532 s!7408))))

(declare-fun e!4227297 () Bool)

(assert (=> d!2193668 (= (matchZipper!3001 lt!2518128 s!7408) e!4227297)))

(declare-fun b!7031919 () Bool)

(assert (=> b!7031919 (= e!4227297 (nullableZipper!2577 lt!2518128))))

(declare-fun b!7031920 () Bool)

(assert (=> b!7031920 (= e!4227297 (matchZipper!3001 (derivationStepZipper!2917 lt!2518128 (head!14260 s!7408)) (tail!13547 s!7408)))))

(assert (= (and d!2193668 c!1307850) b!7031919))

(assert (= (and d!2193668 (not c!1307850)) b!7031920))

(assert (=> d!2193668 m!7738194))

(declare-fun m!7738248 () Bool)

(assert (=> b!7031919 m!7738248))

(assert (=> b!7031920 m!7738198))

(assert (=> b!7031920 m!7738198))

(declare-fun m!7738250 () Bool)

(assert (=> b!7031920 m!7738250))

(assert (=> b!7031920 m!7738202))

(assert (=> b!7031920 m!7738250))

(assert (=> b!7031920 m!7738202))

(declare-fun m!7738252 () Bool)

(assert (=> b!7031920 m!7738252))

(assert (=> b!7031687 d!2193668))

(assert (=> b!7031687 d!2193630))

(assert (=> b!7031707 d!2193604))

(declare-fun d!2193670 () Bool)

(declare-fun e!4227303 () Bool)

(assert (=> d!2193670 e!4227303))

(declare-fun res!2870521 () Bool)

(assert (=> d!2193670 (=> (not res!2870521) (not e!4227303))))

(declare-fun lt!2518254 () List!67911)

(declare-fun content!13527 (List!67911) (InoxSet Regex!17461))

(assert (=> d!2193670 (= res!2870521 (= (content!13527 lt!2518254) ((_ map or) (content!13527 (exprs!6957 lt!2518147)) (content!13527 (exprs!6957 ct2!306)))))))

(declare-fun e!4227302 () List!67911)

(assert (=> d!2193670 (= lt!2518254 e!4227302)))

(declare-fun c!1307853 () Bool)

(assert (=> d!2193670 (= c!1307853 ((_ is Nil!67787) (exprs!6957 lt!2518147)))))

(assert (=> d!2193670 (= (++!15502 (exprs!6957 lt!2518147) (exprs!6957 ct2!306)) lt!2518254)))

(declare-fun b!7031932 () Bool)

(assert (=> b!7031932 (= e!4227303 (or (not (= (exprs!6957 ct2!306) Nil!67787)) (= lt!2518254 (exprs!6957 lt!2518147))))))

(declare-fun b!7031931 () Bool)

(declare-fun res!2870520 () Bool)

(assert (=> b!7031931 (=> (not res!2870520) (not e!4227303))))

(declare-fun size!41058 (List!67911) Int)

(assert (=> b!7031931 (= res!2870520 (= (size!41058 lt!2518254) (+ (size!41058 (exprs!6957 lt!2518147)) (size!41058 (exprs!6957 ct2!306)))))))

(declare-fun b!7031930 () Bool)

(assert (=> b!7031930 (= e!4227302 (Cons!67787 (h!74235 (exprs!6957 lt!2518147)) (++!15502 (t!381676 (exprs!6957 lt!2518147)) (exprs!6957 ct2!306))))))

(declare-fun b!7031929 () Bool)

(assert (=> b!7031929 (= e!4227302 (exprs!6957 ct2!306))))

(assert (= (and d!2193670 c!1307853) b!7031929))

(assert (= (and d!2193670 (not c!1307853)) b!7031930))

(assert (= (and d!2193670 res!2870521) b!7031931))

(assert (= (and b!7031931 res!2870520) b!7031932))

(declare-fun m!7738254 () Bool)

(assert (=> d!2193670 m!7738254))

(declare-fun m!7738256 () Bool)

(assert (=> d!2193670 m!7738256))

(declare-fun m!7738258 () Bool)

(assert (=> d!2193670 m!7738258))

(declare-fun m!7738260 () Bool)

(assert (=> b!7031931 m!7738260))

(declare-fun m!7738262 () Bool)

(assert (=> b!7031931 m!7738262))

(declare-fun m!7738264 () Bool)

(assert (=> b!7031931 m!7738264))

(declare-fun m!7738266 () Bool)

(assert (=> b!7031930 m!7738266))

(assert (=> b!7031688 d!2193670))

(declare-fun d!2193672 () Bool)

(assert (=> d!2193672 (forall!16373 (++!15502 (exprs!6957 lt!2518147) (exprs!6957 ct2!306)) lambda!414477)))

(declare-fun lt!2518255 () Unit!161592)

(assert (=> d!2193672 (= lt!2518255 (choose!53225 (exprs!6957 lt!2518147) (exprs!6957 ct2!306) lambda!414477))))

(assert (=> d!2193672 (forall!16373 (exprs!6957 lt!2518147) lambda!414477)))

(assert (=> d!2193672 (= (lemmaConcatPreservesForall!782 (exprs!6957 lt!2518147) (exprs!6957 ct2!306) lambda!414477) lt!2518255)))

(declare-fun bs!1870510 () Bool)

(assert (= bs!1870510 d!2193672))

(assert (=> bs!1870510 m!7737830))

(assert (=> bs!1870510 m!7737830))

(declare-fun m!7738268 () Bool)

(assert (=> bs!1870510 m!7738268))

(declare-fun m!7738270 () Bool)

(assert (=> bs!1870510 m!7738270))

(declare-fun m!7738272 () Bool)

(assert (=> bs!1870510 m!7738272))

(assert (=> b!7031688 d!2193672))

(declare-fun d!2193674 () Bool)

(declare-fun e!4227306 () Bool)

(assert (=> d!2193674 e!4227306))

(declare-fun res!2870524 () Bool)

(assert (=> d!2193674 (=> (not res!2870524) (not e!4227306))))

(declare-fun lt!2518258 () Context!12914)

(declare-fun dynLambda!27371 (Int Context!12914) Context!12914)

(assert (=> d!2193674 (= res!2870524 (= lt!2518166 (dynLambda!27371 lambda!414476 lt!2518258)))))

(declare-fun choose!53230 ((InoxSet Context!12914) Int Context!12914) Context!12914)

(assert (=> d!2193674 (= lt!2518258 (choose!53230 z1!570 lambda!414476 lt!2518166))))

(assert (=> d!2193674 (select (map!15759 z1!570 lambda!414476) lt!2518166)))

(assert (=> d!2193674 (= (mapPost2!302 z1!570 lambda!414476 lt!2518166) lt!2518258)))

(declare-fun b!7031936 () Bool)

(assert (=> b!7031936 (= e!4227306 (select z1!570 lt!2518258))))

(assert (= (and d!2193674 res!2870524) b!7031936))

(declare-fun b_lambda!266361 () Bool)

(assert (=> (not b_lambda!266361) (not d!2193674)))

(declare-fun m!7738274 () Bool)

(assert (=> d!2193674 m!7738274))

(declare-fun m!7738276 () Bool)

(assert (=> d!2193674 m!7738276))

(declare-fun m!7738278 () Bool)

(assert (=> d!2193674 m!7738278))

(declare-fun m!7738280 () Bool)

(assert (=> d!2193674 m!7738280))

(declare-fun m!7738282 () Bool)

(assert (=> b!7031936 m!7738282))

(assert (=> b!7031688 d!2193674))

(declare-fun d!2193676 () Bool)

(declare-fun e!4227312 () Bool)

(assert (=> d!2193676 e!4227312))

(declare-fun res!2870529 () Bool)

(assert (=> d!2193676 (=> (not res!2870529) (not e!4227312))))

(declare-fun lt!2518261 () List!67912)

(declare-fun content!13528 (List!67912) (InoxSet C!35192))

(assert (=> d!2193676 (= res!2870529 (= (content!13528 lt!2518261) ((_ map or) (content!13528 (_1!37337 lt!2518162)) (content!13528 (_2!37337 lt!2518162)))))))

(declare-fun e!4227311 () List!67912)

(assert (=> d!2193676 (= lt!2518261 e!4227311)))

(declare-fun c!1307856 () Bool)

(assert (=> d!2193676 (= c!1307856 ((_ is Nil!67788) (_1!37337 lt!2518162)))))

(assert (=> d!2193676 (= (++!15503 (_1!37337 lt!2518162) (_2!37337 lt!2518162)) lt!2518261)))

(declare-fun b!7031948 () Bool)

(assert (=> b!7031948 (= e!4227312 (or (not (= (_2!37337 lt!2518162) Nil!67788)) (= lt!2518261 (_1!37337 lt!2518162))))))

(declare-fun b!7031947 () Bool)

(declare-fun res!2870530 () Bool)

(assert (=> b!7031947 (=> (not res!2870530) (not e!4227312))))

(declare-fun size!41059 (List!67912) Int)

(assert (=> b!7031947 (= res!2870530 (= (size!41059 lt!2518261) (+ (size!41059 (_1!37337 lt!2518162)) (size!41059 (_2!37337 lt!2518162)))))))

(declare-fun b!7031946 () Bool)

(assert (=> b!7031946 (= e!4227311 (Cons!67788 (h!74236 (_1!37337 lt!2518162)) (++!15503 (t!381677 (_1!37337 lt!2518162)) (_2!37337 lt!2518162))))))

(declare-fun b!7031945 () Bool)

(assert (=> b!7031945 (= e!4227311 (_2!37337 lt!2518162))))

(assert (= (and d!2193676 c!1307856) b!7031945))

(assert (= (and d!2193676 (not c!1307856)) b!7031946))

(assert (= (and d!2193676 res!2870529) b!7031947))

(assert (= (and b!7031947 res!2870530) b!7031948))

(declare-fun m!7738284 () Bool)

(assert (=> d!2193676 m!7738284))

(declare-fun m!7738286 () Bool)

(assert (=> d!2193676 m!7738286))

(declare-fun m!7738288 () Bool)

(assert (=> d!2193676 m!7738288))

(declare-fun m!7738290 () Bool)

(assert (=> b!7031947 m!7738290))

(declare-fun m!7738292 () Bool)

(assert (=> b!7031947 m!7738292))

(declare-fun m!7738294 () Bool)

(assert (=> b!7031947 m!7738294))

(declare-fun m!7738296 () Bool)

(assert (=> b!7031946 m!7738296))

(assert (=> b!7031708 d!2193676))

(declare-fun d!2193678 () Bool)

(declare-fun c!1307857 () Bool)

(assert (=> d!2193678 (= c!1307857 (isEmpty!39532 s!7408))))

(declare-fun e!4227313 () Bool)

(assert (=> d!2193678 (= (matchZipper!3001 lt!2518149 s!7408) e!4227313)))

(declare-fun b!7031949 () Bool)

(assert (=> b!7031949 (= e!4227313 (nullableZipper!2577 lt!2518149))))

(declare-fun b!7031950 () Bool)

(assert (=> b!7031950 (= e!4227313 (matchZipper!3001 (derivationStepZipper!2917 lt!2518149 (head!14260 s!7408)) (tail!13547 s!7408)))))

(assert (= (and d!2193678 c!1307857) b!7031949))

(assert (= (and d!2193678 (not c!1307857)) b!7031950))

(assert (=> d!2193678 m!7738194))

(declare-fun m!7738298 () Bool)

(assert (=> b!7031949 m!7738298))

(assert (=> b!7031950 m!7738198))

(assert (=> b!7031950 m!7738198))

(declare-fun m!7738300 () Bool)

(assert (=> b!7031950 m!7738300))

(assert (=> b!7031950 m!7738202))

(assert (=> b!7031950 m!7738300))

(assert (=> b!7031950 m!7738202))

(declare-fun m!7738302 () Bool)

(assert (=> b!7031950 m!7738302))

(assert (=> start!679416 d!2193678))

(declare-fun bs!1870511 () Bool)

(declare-fun d!2193680 () Bool)

(assert (= bs!1870511 (and d!2193680 b!7031688)))

(declare-fun lambda!414512 () Int)

(assert (=> bs!1870511 (= lambda!414512 lambda!414476)))

(assert (=> d!2193680 true))

(assert (=> d!2193680 (= (appendTo!582 z1!570 ct2!306) (map!15759 z1!570 lambda!414512))))

(declare-fun bs!1870512 () Bool)

(assert (= bs!1870512 d!2193680))

(declare-fun m!7738304 () Bool)

(assert (=> bs!1870512 m!7738304))

(assert (=> start!679416 d!2193680))

(declare-fun bs!1870513 () Bool)

(declare-fun d!2193682 () Bool)

(assert (= bs!1870513 (and d!2193682 b!7031688)))

(declare-fun lambda!414515 () Int)

(assert (=> bs!1870513 (= lambda!414515 lambda!414477)))

(assert (=> d!2193682 (= (inv!86511 ct2!306) (forall!16373 (exprs!6957 ct2!306) lambda!414515))))

(declare-fun bs!1870514 () Bool)

(assert (= bs!1870514 d!2193682))

(declare-fun m!7738306 () Bool)

(assert (=> bs!1870514 m!7738306))

(assert (=> start!679416 d!2193682))

(declare-fun d!2193684 () Bool)

(declare-fun e!4227316 () Bool)

(assert (=> d!2193684 (= (matchZipper!3001 ((_ map or) lt!2518169 lt!2518145) (t!381677 s!7408)) e!4227316)))

(declare-fun res!2870533 () Bool)

(assert (=> d!2193684 (=> res!2870533 e!4227316)))

(assert (=> d!2193684 (= res!2870533 (matchZipper!3001 lt!2518169 (t!381677 s!7408)))))

(declare-fun lt!2518266 () Unit!161592)

(declare-fun choose!53231 ((InoxSet Context!12914) (InoxSet Context!12914) List!67912) Unit!161592)

(assert (=> d!2193684 (= lt!2518266 (choose!53231 lt!2518169 lt!2518145 (t!381677 s!7408)))))

(assert (=> d!2193684 (= (lemmaZipperConcatMatchesSameAsBothZippers!1534 lt!2518169 lt!2518145 (t!381677 s!7408)) lt!2518266)))

(declare-fun b!7031953 () Bool)

(assert (=> b!7031953 (= e!4227316 (matchZipper!3001 lt!2518145 (t!381677 s!7408)))))

(assert (= (and d!2193684 (not res!2870533)) b!7031953))

(declare-fun m!7738308 () Bool)

(assert (=> d!2193684 m!7738308))

(assert (=> d!2193684 m!7737822))

(declare-fun m!7738310 () Bool)

(assert (=> d!2193684 m!7738310))

(assert (=> b!7031953 m!7737762))

(assert (=> b!7031689 d!2193684))

(declare-fun d!2193686 () Bool)

(declare-fun c!1307859 () Bool)

(assert (=> d!2193686 (= c!1307859 (isEmpty!39532 (t!381677 s!7408)))))

(declare-fun e!4227317 () Bool)

(assert (=> d!2193686 (= (matchZipper!3001 lt!2518169 (t!381677 s!7408)) e!4227317)))

(declare-fun b!7031954 () Bool)

(assert (=> b!7031954 (= e!4227317 (nullableZipper!2577 lt!2518169))))

(declare-fun b!7031955 () Bool)

(assert (=> b!7031955 (= e!4227317 (matchZipper!3001 (derivationStepZipper!2917 lt!2518169 (head!14260 (t!381677 s!7408))) (tail!13547 (t!381677 s!7408))))))

(assert (= (and d!2193686 c!1307859) b!7031954))

(assert (= (and d!2193686 (not c!1307859)) b!7031955))

(assert (=> d!2193686 m!7738140))

(declare-fun m!7738312 () Bool)

(assert (=> b!7031954 m!7738312))

(assert (=> b!7031955 m!7738144))

(assert (=> b!7031955 m!7738144))

(declare-fun m!7738314 () Bool)

(assert (=> b!7031955 m!7738314))

(assert (=> b!7031955 m!7738148))

(assert (=> b!7031955 m!7738314))

(assert (=> b!7031955 m!7738148))

(declare-fun m!7738316 () Bool)

(assert (=> b!7031955 m!7738316))

(assert (=> b!7031689 d!2193686))

(assert (=> b!7031689 d!2193630))

(declare-fun d!2193688 () Bool)

(declare-fun c!1307860 () Bool)

(assert (=> d!2193688 (= c!1307860 (isEmpty!39532 (t!381677 s!7408)))))

(declare-fun e!4227318 () Bool)

(assert (=> d!2193688 (= (matchZipper!3001 lt!2518126 (t!381677 s!7408)) e!4227318)))

(declare-fun b!7031956 () Bool)

(assert (=> b!7031956 (= e!4227318 (nullableZipper!2577 lt!2518126))))

(declare-fun b!7031957 () Bool)

(assert (=> b!7031957 (= e!4227318 (matchZipper!3001 (derivationStepZipper!2917 lt!2518126 (head!14260 (t!381677 s!7408))) (tail!13547 (t!381677 s!7408))))))

(assert (= (and d!2193688 c!1307860) b!7031956))

(assert (= (and d!2193688 (not c!1307860)) b!7031957))

(assert (=> d!2193688 m!7738140))

(declare-fun m!7738318 () Bool)

(assert (=> b!7031956 m!7738318))

(assert (=> b!7031957 m!7738144))

(assert (=> b!7031957 m!7738144))

(declare-fun m!7738320 () Bool)

(assert (=> b!7031957 m!7738320))

(assert (=> b!7031957 m!7738148))

(assert (=> b!7031957 m!7738320))

(assert (=> b!7031957 m!7738148))

(declare-fun m!7738322 () Bool)

(assert (=> b!7031957 m!7738322))

(assert (=> b!7031689 d!2193688))

(declare-fun d!2193690 () Bool)

(declare-fun c!1307861 () Bool)

(assert (=> d!2193690 (= c!1307861 (isEmpty!39532 (t!381677 s!7408)))))

(declare-fun e!4227319 () Bool)

(assert (=> d!2193690 (= (matchZipper!3001 lt!2518150 (t!381677 s!7408)) e!4227319)))

(declare-fun b!7031958 () Bool)

(assert (=> b!7031958 (= e!4227319 (nullableZipper!2577 lt!2518150))))

(declare-fun b!7031959 () Bool)

(assert (=> b!7031959 (= e!4227319 (matchZipper!3001 (derivationStepZipper!2917 lt!2518150 (head!14260 (t!381677 s!7408))) (tail!13547 (t!381677 s!7408))))))

(assert (= (and d!2193690 c!1307861) b!7031958))

(assert (= (and d!2193690 (not c!1307861)) b!7031959))

(assert (=> d!2193690 m!7738140))

(declare-fun m!7738324 () Bool)

(assert (=> b!7031958 m!7738324))

(assert (=> b!7031959 m!7738144))

(assert (=> b!7031959 m!7738144))

(declare-fun m!7738326 () Bool)

(assert (=> b!7031959 m!7738326))

(assert (=> b!7031959 m!7738148))

(assert (=> b!7031959 m!7738326))

(assert (=> b!7031959 m!7738148))

(declare-fun m!7738328 () Bool)

(assert (=> b!7031959 m!7738328))

(assert (=> b!7031689 d!2193690))

(declare-fun bs!1870515 () Bool)

(declare-fun d!2193692 () Bool)

(assert (= bs!1870515 (and d!2193692 b!7031688)))

(declare-fun lambda!414518 () Int)

(assert (=> bs!1870515 (not (= lambda!414518 lambda!414477))))

(declare-fun bs!1870516 () Bool)

(assert (= bs!1870516 (and d!2193692 d!2193682)))

(assert (=> bs!1870516 (not (= lambda!414518 lambda!414515))))

(assert (=> d!2193692 (= (nullableContext!81 lt!2518156) (forall!16373 (exprs!6957 lt!2518156) lambda!414518))))

(declare-fun bs!1870517 () Bool)

(assert (= bs!1870517 d!2193692))

(declare-fun m!7738330 () Bool)

(assert (=> bs!1870517 m!7738330))

(assert (=> b!7031700 d!2193692))

(declare-fun d!2193694 () Bool)

(declare-fun e!4227320 () Bool)

(assert (=> d!2193694 e!4227320))

(declare-fun res!2870534 () Bool)

(assert (=> d!2193694 (=> (not res!2870534) (not e!4227320))))

(declare-fun lt!2518267 () Context!12914)

(assert (=> d!2193694 (= res!2870534 (dynLambda!27370 lambda!414479 lt!2518267))))

(assert (=> d!2193694 (= lt!2518267 (getWitness!1466 (toList!10804 lt!2518172) lambda!414479))))

(assert (=> d!2193694 (exists!3384 lt!2518172 lambda!414479)))

(assert (=> d!2193694 (= (getWitness!1464 lt!2518172 lambda!414479) lt!2518267)))

(declare-fun b!7031960 () Bool)

(assert (=> b!7031960 (= e!4227320 (select lt!2518172 lt!2518267))))

(assert (= (and d!2193694 res!2870534) b!7031960))

(declare-fun b_lambda!266363 () Bool)

(assert (=> (not b_lambda!266363) (not d!2193694)))

(declare-fun m!7738332 () Bool)

(assert (=> d!2193694 m!7738332))

(declare-fun m!7738334 () Bool)

(assert (=> d!2193694 m!7738334))

(assert (=> d!2193694 m!7738334))

(declare-fun m!7738336 () Bool)

(assert (=> d!2193694 m!7738336))

(assert (=> d!2193694 m!7737858))

(declare-fun m!7738338 () Bool)

(assert (=> b!7031960 m!7738338))

(assert (=> b!7031700 d!2193694))

(declare-fun b!7031979 () Bool)

(declare-fun e!4227333 () Option!16866)

(assert (=> b!7031979 (= e!4227333 None!16865)))

(declare-fun b!7031980 () Bool)

(declare-fun e!4227335 () Bool)

(declare-fun lt!2518275 () Option!16866)

(assert (=> b!7031980 (= e!4227335 (= (++!15503 (_1!37337 (get!23747 lt!2518275)) (_2!37337 (get!23747 lt!2518275))) s!7408))))

(declare-fun d!2193696 () Bool)

(declare-fun e!4227332 () Bool)

(assert (=> d!2193696 e!4227332))

(declare-fun res!2870545 () Bool)

(assert (=> d!2193696 (=> res!2870545 e!4227332)))

(assert (=> d!2193696 (= res!2870545 e!4227335)))

(declare-fun res!2870548 () Bool)

(assert (=> d!2193696 (=> (not res!2870548) (not e!4227335))))

(assert (=> d!2193696 (= res!2870548 (isDefined!13567 lt!2518275))))

(declare-fun e!4227331 () Option!16866)

(assert (=> d!2193696 (= lt!2518275 e!4227331)))

(declare-fun c!1307868 () Bool)

(declare-fun e!4227334 () Bool)

(assert (=> d!2193696 (= c!1307868 e!4227334)))

(declare-fun res!2870546 () Bool)

(assert (=> d!2193696 (=> (not res!2870546) (not e!4227334))))

(assert (=> d!2193696 (= res!2870546 (matchZipper!3001 lt!2518172 Nil!67788))))

(assert (=> d!2193696 (= (++!15503 Nil!67788 s!7408) s!7408)))

(assert (=> d!2193696 (= (findConcatSeparationZippers!382 lt!2518172 lt!2518122 Nil!67788 s!7408 s!7408) lt!2518275)))

(declare-fun b!7031981 () Bool)

(assert (=> b!7031981 (= e!4227331 (Some!16865 (tuple2!68069 Nil!67788 s!7408)))))

(declare-fun b!7031982 () Bool)

(declare-fun lt!2518274 () Unit!161592)

(declare-fun lt!2518276 () Unit!161592)

(assert (=> b!7031982 (= lt!2518274 lt!2518276)))

(assert (=> b!7031982 (= (++!15503 (++!15503 Nil!67788 (Cons!67788 (h!74236 s!7408) Nil!67788)) (t!381677 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2921 (List!67912 C!35192 List!67912 List!67912) Unit!161592)

(assert (=> b!7031982 (= lt!2518276 (lemmaMoveElementToOtherListKeepsConcatEq!2921 Nil!67788 (h!74236 s!7408) (t!381677 s!7408) s!7408))))

(assert (=> b!7031982 (= e!4227333 (findConcatSeparationZippers!382 lt!2518172 lt!2518122 (++!15503 Nil!67788 (Cons!67788 (h!74236 s!7408) Nil!67788)) (t!381677 s!7408) s!7408))))

(declare-fun b!7031983 () Bool)

(assert (=> b!7031983 (= e!4227334 (matchZipper!3001 lt!2518122 s!7408))))

(declare-fun b!7031984 () Bool)

(assert (=> b!7031984 (= e!4227331 e!4227333)))

(declare-fun c!1307867 () Bool)

(assert (=> b!7031984 (= c!1307867 ((_ is Nil!67788) s!7408))))

(declare-fun b!7031985 () Bool)

(declare-fun res!2870549 () Bool)

(assert (=> b!7031985 (=> (not res!2870549) (not e!4227335))))

(assert (=> b!7031985 (= res!2870549 (matchZipper!3001 lt!2518172 (_1!37337 (get!23747 lt!2518275))))))

(declare-fun b!7031986 () Bool)

(declare-fun res!2870547 () Bool)

(assert (=> b!7031986 (=> (not res!2870547) (not e!4227335))))

(assert (=> b!7031986 (= res!2870547 (matchZipper!3001 lt!2518122 (_2!37337 (get!23747 lt!2518275))))))

(declare-fun b!7031987 () Bool)

(assert (=> b!7031987 (= e!4227332 (not (isDefined!13567 lt!2518275)))))

(assert (= (and d!2193696 res!2870546) b!7031983))

(assert (= (and d!2193696 c!1307868) b!7031981))

(assert (= (and d!2193696 (not c!1307868)) b!7031984))

(assert (= (and b!7031984 c!1307867) b!7031979))

(assert (= (and b!7031984 (not c!1307867)) b!7031982))

(assert (= (and d!2193696 res!2870548) b!7031985))

(assert (= (and b!7031985 res!2870549) b!7031986))

(assert (= (and b!7031986 res!2870547) b!7031980))

(assert (= (and d!2193696 (not res!2870545)) b!7031987))

(declare-fun m!7738340 () Bool)

(assert (=> b!7031987 m!7738340))

(declare-fun m!7738342 () Bool)

(assert (=> b!7031982 m!7738342))

(assert (=> b!7031982 m!7738342))

(declare-fun m!7738344 () Bool)

(assert (=> b!7031982 m!7738344))

(declare-fun m!7738346 () Bool)

(assert (=> b!7031982 m!7738346))

(assert (=> b!7031982 m!7738342))

(declare-fun m!7738348 () Bool)

(assert (=> b!7031982 m!7738348))

(declare-fun m!7738350 () Bool)

(assert (=> b!7031985 m!7738350))

(declare-fun m!7738352 () Bool)

(assert (=> b!7031985 m!7738352))

(assert (=> b!7031980 m!7738350))

(declare-fun m!7738354 () Bool)

(assert (=> b!7031980 m!7738354))

(assert (=> b!7031986 m!7738350))

(declare-fun m!7738356 () Bool)

(assert (=> b!7031986 m!7738356))

(assert (=> d!2193696 m!7738340))

(declare-fun m!7738358 () Bool)

(assert (=> d!2193696 m!7738358))

(declare-fun m!7738360 () Bool)

(assert (=> d!2193696 m!7738360))

(declare-fun m!7738362 () Bool)

(assert (=> b!7031983 m!7738362))

(assert (=> b!7031701 d!2193696))

(declare-fun d!2193698 () Bool)

(assert (=> d!2193698 (isDefined!13567 (findConcatSeparationZippers!382 lt!2518172 (store ((as const (Array Context!12914 Bool)) false) ct2!306 true) Nil!67788 s!7408 s!7408))))

(declare-fun lt!2518279 () Unit!161592)

(declare-fun choose!53232 ((InoxSet Context!12914) Context!12914 List!67912) Unit!161592)

(assert (=> d!2193698 (= lt!2518279 (choose!53232 lt!2518172 ct2!306 s!7408))))

(assert (=> d!2193698 (matchZipper!3001 (appendTo!582 lt!2518172 ct2!306) s!7408)))

(assert (=> d!2193698 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!370 lt!2518172 ct2!306 s!7408) lt!2518279)))

(declare-fun bs!1870518 () Bool)

(assert (= bs!1870518 d!2193698))

(declare-fun m!7738364 () Bool)

(assert (=> bs!1870518 m!7738364))

(declare-fun m!7738366 () Bool)

(assert (=> bs!1870518 m!7738366))

(assert (=> bs!1870518 m!7737838))

(declare-fun m!7738368 () Bool)

(assert (=> bs!1870518 m!7738368))

(declare-fun m!7738370 () Bool)

(assert (=> bs!1870518 m!7738370))

(assert (=> bs!1870518 m!7738368))

(declare-fun m!7738372 () Bool)

(assert (=> bs!1870518 m!7738372))

(assert (=> bs!1870518 m!7737838))

(assert (=> bs!1870518 m!7738364))

(assert (=> b!7031701 d!2193698))

(declare-fun d!2193700 () Bool)

(declare-fun isEmpty!39535 (Option!16866) Bool)

(assert (=> d!2193700 (= (isDefined!13567 lt!2518133) (not (isEmpty!39535 lt!2518133)))))

(declare-fun bs!1870519 () Bool)

(assert (= bs!1870519 d!2193700))

(declare-fun m!7738374 () Bool)

(assert (=> bs!1870519 m!7738374))

(assert (=> b!7031701 d!2193700))

(declare-fun d!2193702 () Bool)

(declare-fun c!1307869 () Bool)

(assert (=> d!2193702 (= c!1307869 (isEmpty!39532 (_1!37337 lt!2518162)))))

(declare-fun e!4227336 () Bool)

(assert (=> d!2193702 (= (matchZipper!3001 lt!2518172 (_1!37337 lt!2518162)) e!4227336)))

(declare-fun b!7031988 () Bool)

(assert (=> b!7031988 (= e!4227336 (nullableZipper!2577 lt!2518172))))

(declare-fun b!7031989 () Bool)

(assert (=> b!7031989 (= e!4227336 (matchZipper!3001 (derivationStepZipper!2917 lt!2518172 (head!14260 (_1!37337 lt!2518162))) (tail!13547 (_1!37337 lt!2518162))))))

(assert (= (and d!2193702 c!1307869) b!7031988))

(assert (= (and d!2193702 (not c!1307869)) b!7031989))

(assert (=> d!2193702 m!7737860))

(declare-fun m!7738376 () Bool)

(assert (=> b!7031988 m!7738376))

(declare-fun m!7738378 () Bool)

(assert (=> b!7031989 m!7738378))

(assert (=> b!7031989 m!7738378))

(declare-fun m!7738380 () Bool)

(assert (=> b!7031989 m!7738380))

(declare-fun m!7738382 () Bool)

(assert (=> b!7031989 m!7738382))

(assert (=> b!7031989 m!7738380))

(assert (=> b!7031989 m!7738382))

(declare-fun m!7738384 () Bool)

(assert (=> b!7031989 m!7738384))

(assert (=> b!7031701 d!2193702))

(declare-fun d!2193704 () Bool)

(assert (=> d!2193704 (= (get!23747 lt!2518133) (v!53149 lt!2518133))))

(assert (=> b!7031701 d!2193704))

(assert (=> b!7031702 d!2193604))

(assert (=> b!7031702 d!2193630))

(assert (=> b!7031703 d!2193672))

(assert (=> b!7031683 d!2193630))

(declare-fun call!638562 () (InoxSet Context!12914))

(declare-fun e!4227345 () (InoxSet Context!12914))

(declare-fun b!7032000 () Bool)

(assert (=> b!7032000 (= e!4227345 ((_ map or) call!638562 (derivationStepZipperUp!2071 (Context!12915 (t!381676 (exprs!6957 lt!2518173))) (h!74236 s!7408))))))

(declare-fun b!7032001 () Bool)

(declare-fun e!4227344 () (InoxSet Context!12914))

(assert (=> b!7032001 (= e!4227344 call!638562)))

(declare-fun b!7032002 () Bool)

(assert (=> b!7032002 (= e!4227345 e!4227344)))

(declare-fun c!1307874 () Bool)

(assert (=> b!7032002 (= c!1307874 ((_ is Cons!67787) (exprs!6957 lt!2518173)))))

(declare-fun bm!638557 () Bool)

(assert (=> bm!638557 (= call!638562 (derivationStepZipperDown!2125 (h!74235 (exprs!6957 lt!2518173)) (Context!12915 (t!381676 (exprs!6957 lt!2518173))) (h!74236 s!7408)))))

(declare-fun b!7032003 () Bool)

(assert (=> b!7032003 (= e!4227344 ((as const (Array Context!12914 Bool)) false))))

(declare-fun d!2193706 () Bool)

(declare-fun c!1307875 () Bool)

(declare-fun e!4227343 () Bool)

(assert (=> d!2193706 (= c!1307875 e!4227343)))

(declare-fun res!2870552 () Bool)

(assert (=> d!2193706 (=> (not res!2870552) (not e!4227343))))

(assert (=> d!2193706 (= res!2870552 ((_ is Cons!67787) (exprs!6957 lt!2518173)))))

(assert (=> d!2193706 (= (derivationStepZipperUp!2071 lt!2518173 (h!74236 s!7408)) e!4227345)))

(declare-fun b!7032004 () Bool)

(assert (=> b!7032004 (= e!4227343 (nullable!7172 (h!74235 (exprs!6957 lt!2518173))))))

(assert (= (and d!2193706 res!2870552) b!7032004))

(assert (= (and d!2193706 c!1307875) b!7032000))

(assert (= (and d!2193706 (not c!1307875)) b!7032002))

(assert (= (and b!7032002 c!1307874) b!7032001))

(assert (= (and b!7032002 (not c!1307874)) b!7032003))

(assert (= (or b!7032000 b!7032001) bm!638557))

(declare-fun m!7738386 () Bool)

(assert (=> b!7032000 m!7738386))

(declare-fun m!7738388 () Bool)

(assert (=> bm!638557 m!7738388))

(declare-fun m!7738390 () Bool)

(assert (=> b!7032004 m!7738390))

(assert (=> b!7031683 d!2193706))

(declare-fun b!7032027 () Bool)

(declare-fun e!4227361 () (InoxSet Context!12914))

(declare-fun e!4227363 () (InoxSet Context!12914))

(assert (=> b!7032027 (= e!4227361 e!4227363)))

(declare-fun c!1307887 () Bool)

(assert (=> b!7032027 (= c!1307887 ((_ is Union!17461) (h!74235 (exprs!6957 lt!2518147))))))

(declare-fun b!7032028 () Bool)

(declare-fun e!4227359 () (InoxSet Context!12914))

(declare-fun call!638580 () (InoxSet Context!12914))

(assert (=> b!7032028 (= e!4227359 call!638580)))

(declare-fun bm!638570 () Bool)

(declare-fun c!1307886 () Bool)

(declare-fun call!638575 () List!67911)

(declare-fun c!1307888 () Bool)

(declare-fun call!638578 () (InoxSet Context!12914))

(assert (=> bm!638570 (= call!638578 (derivationStepZipperDown!2125 (ite c!1307887 (regTwo!35435 (h!74235 (exprs!6957 lt!2518147))) (ite c!1307888 (regTwo!35434 (h!74235 (exprs!6957 lt!2518147))) (ite c!1307886 (regOne!35434 (h!74235 (exprs!6957 lt!2518147))) (reg!17790 (h!74235 (exprs!6957 lt!2518147)))))) (ite (or c!1307887 c!1307888) lt!2518173 (Context!12915 call!638575)) (h!74236 s!7408)))))

(declare-fun bm!638571 () Bool)

(declare-fun call!638579 () (InoxSet Context!12914))

(assert (=> bm!638571 (= call!638579 call!638578)))

(declare-fun b!7032029 () Bool)

(declare-fun call!638577 () (InoxSet Context!12914))

(assert (=> b!7032029 (= e!4227363 ((_ map or) call!638577 call!638578))))

(declare-fun b!7032030 () Bool)

(declare-fun e!4227362 () (InoxSet Context!12914))

(assert (=> b!7032030 (= e!4227362 call!638580)))

(declare-fun call!638576 () List!67911)

(declare-fun bm!638572 () Bool)

(declare-fun $colon$colon!2571 (List!67911 Regex!17461) List!67911)

(assert (=> bm!638572 (= call!638576 ($colon$colon!2571 (exprs!6957 lt!2518173) (ite (or c!1307888 c!1307886) (regTwo!35434 (h!74235 (exprs!6957 lt!2518147))) (h!74235 (exprs!6957 lt!2518147)))))))

(declare-fun bm!638573 () Bool)

(assert (=> bm!638573 (= call!638577 (derivationStepZipperDown!2125 (ite c!1307887 (regOne!35435 (h!74235 (exprs!6957 lt!2518147))) (regOne!35434 (h!74235 (exprs!6957 lt!2518147)))) (ite c!1307887 lt!2518173 (Context!12915 call!638576)) (h!74236 s!7408)))))

(declare-fun b!7032031 () Bool)

(declare-fun c!1307890 () Bool)

(assert (=> b!7032031 (= c!1307890 ((_ is Star!17461) (h!74235 (exprs!6957 lt!2518147))))))

(assert (=> b!7032031 (= e!4227359 e!4227362)))

(declare-fun b!7032032 () Bool)

(declare-fun e!4227360 () Bool)

(assert (=> b!7032032 (= e!4227360 (nullable!7172 (regOne!35434 (h!74235 (exprs!6957 lt!2518147)))))))

(declare-fun b!7032033 () Bool)

(assert (=> b!7032033 (= e!4227361 (store ((as const (Array Context!12914 Bool)) false) lt!2518173 true))))

(declare-fun b!7032034 () Bool)

(declare-fun e!4227358 () (InoxSet Context!12914))

(assert (=> b!7032034 (= e!4227358 ((_ map or) call!638577 call!638579))))

(declare-fun b!7032035 () Bool)

(assert (=> b!7032035 (= c!1307888 e!4227360)))

(declare-fun res!2870555 () Bool)

(assert (=> b!7032035 (=> (not res!2870555) (not e!4227360))))

(assert (=> b!7032035 (= res!2870555 ((_ is Concat!26306) (h!74235 (exprs!6957 lt!2518147))))))

(assert (=> b!7032035 (= e!4227363 e!4227358)))

(declare-fun b!7032036 () Bool)

(assert (=> b!7032036 (= e!4227358 e!4227359)))

(assert (=> b!7032036 (= c!1307886 ((_ is Concat!26306) (h!74235 (exprs!6957 lt!2518147))))))

(declare-fun bm!638574 () Bool)

(assert (=> bm!638574 (= call!638580 call!638579)))

(declare-fun d!2193708 () Bool)

(declare-fun c!1307889 () Bool)

(assert (=> d!2193708 (= c!1307889 (and ((_ is ElementMatch!17461) (h!74235 (exprs!6957 lt!2518147))) (= (c!1307778 (h!74235 (exprs!6957 lt!2518147))) (h!74236 s!7408))))))

(assert (=> d!2193708 (= (derivationStepZipperDown!2125 (h!74235 (exprs!6957 lt!2518147)) lt!2518173 (h!74236 s!7408)) e!4227361)))

(declare-fun b!7032037 () Bool)

(assert (=> b!7032037 (= e!4227362 ((as const (Array Context!12914 Bool)) false))))

(declare-fun bm!638575 () Bool)

(assert (=> bm!638575 (= call!638575 call!638576)))

(assert (= (and d!2193708 c!1307889) b!7032033))

(assert (= (and d!2193708 (not c!1307889)) b!7032027))

(assert (= (and b!7032027 c!1307887) b!7032029))

(assert (= (and b!7032027 (not c!1307887)) b!7032035))

(assert (= (and b!7032035 res!2870555) b!7032032))

(assert (= (and b!7032035 c!1307888) b!7032034))

(assert (= (and b!7032035 (not c!1307888)) b!7032036))

(assert (= (and b!7032036 c!1307886) b!7032028))

(assert (= (and b!7032036 (not c!1307886)) b!7032031))

(assert (= (and b!7032031 c!1307890) b!7032030))

(assert (= (and b!7032031 (not c!1307890)) b!7032037))

(assert (= (or b!7032028 b!7032030) bm!638575))

(assert (= (or b!7032028 b!7032030) bm!638574))

(assert (= (or b!7032034 bm!638574) bm!638571))

(assert (= (or b!7032034 bm!638575) bm!638572))

(assert (= (or b!7032029 b!7032034) bm!638573))

(assert (= (or b!7032029 bm!638571) bm!638570))

(declare-fun m!7738392 () Bool)

(assert (=> bm!638573 m!7738392))

(assert (=> b!7032033 m!7737810))

(declare-fun m!7738394 () Bool)

(assert (=> bm!638570 m!7738394))

(declare-fun m!7738396 () Bool)

(assert (=> b!7032032 m!7738396))

(declare-fun m!7738398 () Bool)

(assert (=> bm!638572 m!7738398))

(assert (=> b!7031683 d!2193708))

(declare-fun d!2193710 () Bool)

(declare-fun e!4227365 () Bool)

(assert (=> d!2193710 e!4227365))

(declare-fun res!2870557 () Bool)

(assert (=> d!2193710 (=> (not res!2870557) (not e!4227365))))

(declare-fun lt!2518280 () List!67911)

(assert (=> d!2193710 (= res!2870557 (= (content!13527 lt!2518280) ((_ map or) (content!13527 lt!2518171) (content!13527 (exprs!6957 ct2!306)))))))

(declare-fun e!4227364 () List!67911)

(assert (=> d!2193710 (= lt!2518280 e!4227364)))

(declare-fun c!1307891 () Bool)

(assert (=> d!2193710 (= c!1307891 ((_ is Nil!67787) lt!2518171))))

(assert (=> d!2193710 (= (++!15502 lt!2518171 (exprs!6957 ct2!306)) lt!2518280)))

(declare-fun b!7032041 () Bool)

(assert (=> b!7032041 (= e!4227365 (or (not (= (exprs!6957 ct2!306) Nil!67787)) (= lt!2518280 lt!2518171)))))

(declare-fun b!7032040 () Bool)

(declare-fun res!2870556 () Bool)

(assert (=> b!7032040 (=> (not res!2870556) (not e!4227365))))

(assert (=> b!7032040 (= res!2870556 (= (size!41058 lt!2518280) (+ (size!41058 lt!2518171) (size!41058 (exprs!6957 ct2!306)))))))

(declare-fun b!7032039 () Bool)

(assert (=> b!7032039 (= e!4227364 (Cons!67787 (h!74235 lt!2518171) (++!15502 (t!381676 lt!2518171) (exprs!6957 ct2!306))))))

(declare-fun b!7032038 () Bool)

(assert (=> b!7032038 (= e!4227364 (exprs!6957 ct2!306))))

(assert (= (and d!2193710 c!1307891) b!7032038))

(assert (= (and d!2193710 (not c!1307891)) b!7032039))

(assert (= (and d!2193710 res!2870557) b!7032040))

(assert (= (and b!7032040 res!2870556) b!7032041))

(declare-fun m!7738400 () Bool)

(assert (=> d!2193710 m!7738400))

(declare-fun m!7738402 () Bool)

(assert (=> d!2193710 m!7738402))

(assert (=> d!2193710 m!7738258))

(declare-fun m!7738404 () Bool)

(assert (=> b!7032040 m!7738404))

(declare-fun m!7738406 () Bool)

(assert (=> b!7032040 m!7738406))

(assert (=> b!7032040 m!7738264))

(declare-fun m!7738408 () Bool)

(assert (=> b!7032039 m!7738408))

(assert (=> b!7031683 d!2193710))

(declare-fun bs!1870520 () Bool)

(declare-fun d!2193712 () Bool)

(assert (= bs!1870520 (and d!2193712 b!7031688)))

(declare-fun lambda!414519 () Int)

(assert (=> bs!1870520 (= lambda!414519 lambda!414477)))

(declare-fun bs!1870521 () Bool)

(assert (= bs!1870521 (and d!2193712 d!2193682)))

(assert (=> bs!1870521 (= lambda!414519 lambda!414515)))

(declare-fun bs!1870522 () Bool)

(assert (= bs!1870522 (and d!2193712 d!2193692)))

(assert (=> bs!1870522 (not (= lambda!414519 lambda!414518))))

(assert (=> d!2193712 (= (inv!86511 setElem!49136) (forall!16373 (exprs!6957 setElem!49136) lambda!414519))))

(declare-fun bs!1870523 () Bool)

(assert (= bs!1870523 d!2193712))

(declare-fun m!7738410 () Bool)

(assert (=> bs!1870523 m!7738410))

(assert (=> setNonEmpty!49136 d!2193712))

(declare-fun d!2193714 () Bool)

(declare-fun lt!2518283 () Int)

(assert (=> d!2193714 (>= lt!2518283 0)))

(declare-fun e!4227368 () Int)

(assert (=> d!2193714 (= lt!2518283 e!4227368)))

(declare-fun c!1307894 () Bool)

(assert (=> d!2193714 (= c!1307894 ((_ is Cons!67789) (Cons!67789 lt!2518156 Nil!67789)))))

(assert (=> d!2193714 (= (zipperDepthTotal!524 (Cons!67789 lt!2518156 Nil!67789)) lt!2518283)))

(declare-fun b!7032046 () Bool)

(assert (=> b!7032046 (= e!4227368 (+ (contextDepthTotal!496 (h!74237 (Cons!67789 lt!2518156 Nil!67789))) (zipperDepthTotal!524 (t!381678 (Cons!67789 lt!2518156 Nil!67789)))))))

(declare-fun b!7032047 () Bool)

(assert (=> b!7032047 (= e!4227368 0)))

(assert (= (and d!2193714 c!1307894) b!7032046))

(assert (= (and d!2193714 (not c!1307894)) b!7032047))

(declare-fun m!7738412 () Bool)

(assert (=> b!7032046 m!7738412))

(declare-fun m!7738414 () Bool)

(assert (=> b!7032046 m!7738414))

(assert (=> b!7031694 d!2193714))

(declare-fun d!2193716 () Bool)

(assert (=> d!2193716 (= (map!15759 lt!2518172 lambda!414476) (store ((as const (Array Context!12914 Bool)) false) (dynLambda!27371 lambda!414476 lt!2518156) true))))

(declare-fun lt!2518286 () Unit!161592)

(declare-fun choose!53233 ((InoxSet Context!12914) Context!12914 Int) Unit!161592)

(assert (=> d!2193716 (= lt!2518286 (choose!53233 lt!2518172 lt!2518156 lambda!414476))))

(assert (=> d!2193716 (= lt!2518172 (store ((as const (Array Context!12914 Bool)) false) lt!2518156 true))))

(assert (=> d!2193716 (= (lemmaMapOnSingletonSet!372 lt!2518172 lt!2518156 lambda!414476) lt!2518286)))

(declare-fun b_lambda!266365 () Bool)

(assert (=> (not b_lambda!266365) (not d!2193716)))

(declare-fun bs!1870524 () Bool)

(assert (= bs!1870524 d!2193716))

(assert (=> bs!1870524 m!7737784))

(declare-fun m!7738416 () Bool)

(assert (=> bs!1870524 m!7738416))

(declare-fun m!7738418 () Bool)

(assert (=> bs!1870524 m!7738418))

(declare-fun m!7738420 () Bool)

(assert (=> bs!1870524 m!7738420))

(assert (=> bs!1870524 m!7737778))

(assert (=> bs!1870524 m!7738416))

(assert (=> b!7031696 d!2193716))

(declare-fun d!2193718 () Bool)

(declare-fun lt!2518289 () Int)

(assert (=> d!2193718 (>= lt!2518289 0)))

(declare-fun e!4227371 () Int)

(assert (=> d!2193718 (= lt!2518289 e!4227371)))

(declare-fun c!1307898 () Bool)

(assert (=> d!2193718 (= c!1307898 ((_ is Cons!67787) (exprs!6957 lt!2518156)))))

(assert (=> d!2193718 (= (contextDepthTotal!496 lt!2518156) lt!2518289)))

(declare-fun b!7032052 () Bool)

(declare-fun regexDepthTotal!300 (Regex!17461) Int)

(assert (=> b!7032052 (= e!4227371 (+ (regexDepthTotal!300 (h!74235 (exprs!6957 lt!2518156))) (contextDepthTotal!496 (Context!12915 (t!381676 (exprs!6957 lt!2518156))))))))

(declare-fun b!7032053 () Bool)

(assert (=> b!7032053 (= e!4227371 1)))

(assert (= (and d!2193718 c!1307898) b!7032052))

(assert (= (and d!2193718 (not c!1307898)) b!7032053))

(declare-fun m!7738422 () Bool)

(assert (=> b!7032052 m!7738422))

(declare-fun m!7738424 () Bool)

(assert (=> b!7032052 m!7738424))

(assert (=> b!7031696 d!2193718))

(declare-fun d!2193720 () Bool)

(declare-fun choose!53234 ((InoxSet Context!12914) Int) (InoxSet Context!12914))

(assert (=> d!2193720 (= (map!15759 lt!2518172 lambda!414476) (choose!53234 lt!2518172 lambda!414476))))

(declare-fun bs!1870525 () Bool)

(assert (= bs!1870525 d!2193720))

(declare-fun m!7738426 () Bool)

(assert (=> bs!1870525 m!7738426))

(assert (=> b!7031696 d!2193720))

(declare-fun d!2193722 () Bool)

(declare-fun e!4227372 () Bool)

(assert (=> d!2193722 e!4227372))

(declare-fun res!2870558 () Bool)

(assert (=> d!2193722 (=> (not res!2870558) (not e!4227372))))

(declare-fun lt!2518290 () List!67913)

(assert (=> d!2193722 (= res!2870558 (noDuplicate!2625 lt!2518290))))

(assert (=> d!2193722 (= lt!2518290 (choose!53227 z1!570))))

(assert (=> d!2193722 (= (toList!10804 z1!570) lt!2518290)))

(declare-fun b!7032054 () Bool)

(assert (=> b!7032054 (= e!4227372 (= (content!13526 lt!2518290) z1!570))))

(assert (= (and d!2193722 res!2870558) b!7032054))

(declare-fun m!7738428 () Bool)

(assert (=> d!2193722 m!7738428))

(declare-fun m!7738430 () Bool)

(assert (=> d!2193722 m!7738430))

(declare-fun m!7738432 () Bool)

(assert (=> b!7032054 m!7738432))

(assert (=> b!7031696 d!2193722))

(declare-fun d!2193724 () Bool)

(declare-fun lt!2518291 () Int)

(assert (=> d!2193724 (>= lt!2518291 0)))

(declare-fun e!4227373 () Int)

(assert (=> d!2193724 (= lt!2518291 e!4227373)))

(declare-fun c!1307899 () Bool)

(assert (=> d!2193724 (= c!1307899 ((_ is Cons!67787) (exprs!6957 lt!2518147)))))

(assert (=> d!2193724 (= (contextDepthTotal!496 lt!2518147) lt!2518291)))

(declare-fun b!7032055 () Bool)

(assert (=> b!7032055 (= e!4227373 (+ (regexDepthTotal!300 (h!74235 (exprs!6957 lt!2518147))) (contextDepthTotal!496 (Context!12915 (t!381676 (exprs!6957 lt!2518147))))))))

(declare-fun b!7032056 () Bool)

(assert (=> b!7032056 (= e!4227373 1)))

(assert (= (and d!2193724 c!1307899) b!7032055))

(assert (= (and d!2193724 (not c!1307899)) b!7032056))

(declare-fun m!7738434 () Bool)

(assert (=> b!7032055 m!7738434))

(declare-fun m!7738436 () Bool)

(assert (=> b!7032055 m!7738436))

(assert (=> b!7031696 d!2193724))

(declare-fun d!2193726 () Bool)

(declare-fun choose!53235 ((InoxSet Context!12914) Int) (InoxSet Context!12914))

(assert (=> d!2193726 (= (flatMap!2408 lt!2518172 lambda!414478) (choose!53235 lt!2518172 lambda!414478))))

(declare-fun bs!1870526 () Bool)

(assert (= bs!1870526 d!2193726))

(declare-fun m!7738438 () Bool)

(assert (=> bs!1870526 m!7738438))

(assert (=> b!7031696 d!2193726))

(declare-fun call!638581 () (InoxSet Context!12914))

(declare-fun b!7032057 () Bool)

(declare-fun e!4227376 () (InoxSet Context!12914))

(assert (=> b!7032057 (= e!4227376 ((_ map or) call!638581 (derivationStepZipperUp!2071 (Context!12915 (t!381676 (exprs!6957 lt!2518156))) (h!74236 s!7408))))))

(declare-fun b!7032058 () Bool)

(declare-fun e!4227375 () (InoxSet Context!12914))

(assert (=> b!7032058 (= e!4227375 call!638581)))

(declare-fun b!7032059 () Bool)

(assert (=> b!7032059 (= e!4227376 e!4227375)))

(declare-fun c!1307900 () Bool)

(assert (=> b!7032059 (= c!1307900 ((_ is Cons!67787) (exprs!6957 lt!2518156)))))

(declare-fun bm!638576 () Bool)

(assert (=> bm!638576 (= call!638581 (derivationStepZipperDown!2125 (h!74235 (exprs!6957 lt!2518156)) (Context!12915 (t!381676 (exprs!6957 lt!2518156))) (h!74236 s!7408)))))

(declare-fun b!7032060 () Bool)

(assert (=> b!7032060 (= e!4227375 ((as const (Array Context!12914 Bool)) false))))

(declare-fun d!2193728 () Bool)

(declare-fun c!1307901 () Bool)

(declare-fun e!4227374 () Bool)

(assert (=> d!2193728 (= c!1307901 e!4227374)))

(declare-fun res!2870559 () Bool)

(assert (=> d!2193728 (=> (not res!2870559) (not e!4227374))))

(assert (=> d!2193728 (= res!2870559 ((_ is Cons!67787) (exprs!6957 lt!2518156)))))

(assert (=> d!2193728 (= (derivationStepZipperUp!2071 lt!2518156 (h!74236 s!7408)) e!4227376)))

(declare-fun b!7032061 () Bool)

(assert (=> b!7032061 (= e!4227374 (nullable!7172 (h!74235 (exprs!6957 lt!2518156))))))

(assert (= (and d!2193728 res!2870559) b!7032061))

(assert (= (and d!2193728 c!1307901) b!7032057))

(assert (= (and d!2193728 (not c!1307901)) b!7032059))

(assert (= (and b!7032059 c!1307900) b!7032058))

(assert (= (and b!7032059 (not c!1307900)) b!7032060))

(assert (= (or b!7032057 b!7032058) bm!638576))

(declare-fun m!7738440 () Bool)

(assert (=> b!7032057 m!7738440))

(declare-fun m!7738442 () Bool)

(assert (=> bm!638576 m!7738442))

(declare-fun m!7738444 () Bool)

(assert (=> b!7032061 m!7738444))

(assert (=> b!7031696 d!2193728))

(declare-fun d!2193730 () Bool)

(declare-fun dynLambda!27372 (Int Context!12914) (InoxSet Context!12914))

(assert (=> d!2193730 (= (flatMap!2408 lt!2518172 lambda!414478) (dynLambda!27372 lambda!414478 lt!2518156))))

(declare-fun lt!2518294 () Unit!161592)

(declare-fun choose!53236 ((InoxSet Context!12914) Context!12914 Int) Unit!161592)

(assert (=> d!2193730 (= lt!2518294 (choose!53236 lt!2518172 lt!2518156 lambda!414478))))

(assert (=> d!2193730 (= lt!2518172 (store ((as const (Array Context!12914 Bool)) false) lt!2518156 true))))

(assert (=> d!2193730 (= (lemmaFlatMapOnSingletonSet!1922 lt!2518172 lt!2518156 lambda!414478) lt!2518294)))

(declare-fun b_lambda!266367 () Bool)

(assert (=> (not b_lambda!266367) (not d!2193730)))

(declare-fun bs!1870527 () Bool)

(assert (= bs!1870527 d!2193730))

(assert (=> bs!1870527 m!7737786))

(declare-fun m!7738446 () Bool)

(assert (=> bs!1870527 m!7738446))

(declare-fun m!7738448 () Bool)

(assert (=> bs!1870527 m!7738448))

(assert (=> bs!1870527 m!7737784))

(assert (=> b!7031696 d!2193730))

(assert (=> b!7031696 d!2193630))

(declare-fun d!2193732 () Bool)

(declare-fun lt!2518295 () Int)

(assert (=> d!2193732 (>= lt!2518295 0)))

(declare-fun e!4227377 () Int)

(assert (=> d!2193732 (= lt!2518295 e!4227377)))

(declare-fun c!1307902 () Bool)

(assert (=> d!2193732 (= c!1307902 ((_ is Cons!67789) lt!2518168))))

(assert (=> d!2193732 (= (zipperDepthTotal!524 lt!2518168) lt!2518295)))

(declare-fun b!7032062 () Bool)

(assert (=> b!7032062 (= e!4227377 (+ (contextDepthTotal!496 (h!74237 lt!2518168)) (zipperDepthTotal!524 (t!381678 lt!2518168))))))

(declare-fun b!7032063 () Bool)

(assert (=> b!7032063 (= e!4227377 0)))

(assert (= (and d!2193732 c!1307902) b!7032062))

(assert (= (and d!2193732 (not c!1307902)) b!7032063))

(declare-fun m!7738450 () Bool)

(assert (=> b!7032062 m!7738450))

(declare-fun m!7738452 () Bool)

(assert (=> b!7032062 m!7738452))

(assert (=> b!7031696 d!2193732))

(assert (=> b!7031696 d!2193710))

(declare-fun d!2193734 () Bool)

(assert (=> d!2193734 (<= (contextDepthTotal!496 lt!2518147) (zipperDepthTotal!524 lt!2518168))))

(declare-fun lt!2518298 () Unit!161592)

(declare-fun choose!53237 (List!67913 Context!12914) Unit!161592)

(assert (=> d!2193734 (= lt!2518298 (choose!53237 lt!2518168 lt!2518147))))

(declare-fun contains!20454 (List!67913 Context!12914) Bool)

(assert (=> d!2193734 (contains!20454 lt!2518168 lt!2518147)))

(assert (=> d!2193734 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!64 lt!2518168 lt!2518147) lt!2518298)))

(declare-fun bs!1870528 () Bool)

(assert (= bs!1870528 d!2193734))

(assert (=> bs!1870528 m!7737780))

(assert (=> bs!1870528 m!7737764))

(declare-fun m!7738454 () Bool)

(assert (=> bs!1870528 m!7738454))

(declare-fun m!7738456 () Bool)

(assert (=> bs!1870528 m!7738456))

(assert (=> b!7031696 d!2193734))

(declare-fun d!2193736 () Bool)

(declare-fun c!1307904 () Bool)

(assert (=> d!2193736 (= c!1307904 (isEmpty!39532 (_2!37337 lt!2518162)))))

(declare-fun e!4227378 () Bool)

(assert (=> d!2193736 (= (matchZipper!3001 lt!2518122 (_2!37337 lt!2518162)) e!4227378)))

(declare-fun b!7032064 () Bool)

(assert (=> b!7032064 (= e!4227378 (nullableZipper!2577 lt!2518122))))

(declare-fun b!7032065 () Bool)

(assert (=> b!7032065 (= e!4227378 (matchZipper!3001 (derivationStepZipper!2917 lt!2518122 (head!14260 (_2!37337 lt!2518162))) (tail!13547 (_2!37337 lt!2518162))))))

(assert (= (and d!2193736 c!1307904) b!7032064))

(assert (= (and d!2193736 (not c!1307904)) b!7032065))

(declare-fun m!7738458 () Bool)

(assert (=> d!2193736 m!7738458))

(declare-fun m!7738460 () Bool)

(assert (=> b!7032064 m!7738460))

(declare-fun m!7738462 () Bool)

(assert (=> b!7032065 m!7738462))

(assert (=> b!7032065 m!7738462))

(declare-fun m!7738464 () Bool)

(assert (=> b!7032065 m!7738464))

(declare-fun m!7738466 () Bool)

(assert (=> b!7032065 m!7738466))

(assert (=> b!7032065 m!7738464))

(assert (=> b!7032065 m!7738466))

(declare-fun m!7738468 () Bool)

(assert (=> b!7032065 m!7738468))

(assert (=> b!7031697 d!2193736))

(declare-fun d!2193738 () Bool)

(declare-fun nullableFct!2725 (Regex!17461) Bool)

(assert (=> d!2193738 (= (nullable!7172 (h!74235 (exprs!6957 lt!2518147))) (nullableFct!2725 (h!74235 (exprs!6957 lt!2518147))))))

(declare-fun bs!1870529 () Bool)

(assert (= bs!1870529 d!2193738))

(declare-fun m!7738470 () Bool)

(assert (=> bs!1870529 m!7738470))

(assert (=> b!7031698 d!2193738))

(declare-fun d!2193740 () Bool)

(assert (=> d!2193740 (= (tail!13545 (exprs!6957 lt!2518147)) (t!381676 (exprs!6957 lt!2518147)))))

(assert (=> b!7031698 d!2193740))

(declare-fun d!2193742 () Bool)

(declare-fun lt!2518301 () Bool)

(assert (=> d!2193742 (= lt!2518301 (exists!3385 (toList!10804 lt!2518172) lambda!414479))))

(declare-fun choose!53238 ((InoxSet Context!12914) Int) Bool)

(assert (=> d!2193742 (= lt!2518301 (choose!53238 lt!2518172 lambda!414479))))

(assert (=> d!2193742 (= (exists!3384 lt!2518172 lambda!414479) lt!2518301)))

(declare-fun bs!1870530 () Bool)

(assert (= bs!1870530 d!2193742))

(assert (=> bs!1870530 m!7738334))

(assert (=> bs!1870530 m!7738334))

(declare-fun m!7738472 () Bool)

(assert (=> bs!1870530 m!7738472))

(declare-fun m!7738474 () Bool)

(assert (=> bs!1870530 m!7738474))

(assert (=> b!7031699 d!2193742))

(declare-fun d!2193744 () Bool)

(assert (=> d!2193744 (= (flatMap!2408 lt!2518139 lambda!414478) (choose!53235 lt!2518139 lambda!414478))))

(declare-fun bs!1870531 () Bool)

(assert (= bs!1870531 d!2193744))

(declare-fun m!7738476 () Bool)

(assert (=> bs!1870531 m!7738476))

(assert (=> b!7031710 d!2193744))

(declare-fun d!2193746 () Bool)

(assert (=> d!2193746 (= (flatMap!2408 lt!2518139 lambda!414478) (dynLambda!27372 lambda!414478 lt!2518152))))

(declare-fun lt!2518302 () Unit!161592)

(assert (=> d!2193746 (= lt!2518302 (choose!53236 lt!2518139 lt!2518152 lambda!414478))))

(assert (=> d!2193746 (= lt!2518139 (store ((as const (Array Context!12914 Bool)) false) lt!2518152 true))))

(assert (=> d!2193746 (= (lemmaFlatMapOnSingletonSet!1922 lt!2518139 lt!2518152 lambda!414478) lt!2518302)))

(declare-fun b_lambda!266369 () Bool)

(assert (=> (not b_lambda!266369) (not d!2193746)))

(declare-fun bs!1870532 () Bool)

(assert (= bs!1870532 d!2193746))

(assert (=> bs!1870532 m!7737794))

(declare-fun m!7738478 () Bool)

(assert (=> bs!1870532 m!7738478))

(declare-fun m!7738480 () Bool)

(assert (=> bs!1870532 m!7738480))

(assert (=> bs!1870532 m!7737800))

(assert (=> b!7031710 d!2193746))

(declare-fun call!638582 () (InoxSet Context!12914))

(declare-fun b!7032066 () Bool)

(declare-fun e!4227381 () (InoxSet Context!12914))

(assert (=> b!7032066 (= e!4227381 ((_ map or) call!638582 (derivationStepZipperUp!2071 (Context!12915 (t!381676 (exprs!6957 lt!2518152))) (h!74236 s!7408))))))

(declare-fun b!7032067 () Bool)

(declare-fun e!4227380 () (InoxSet Context!12914))

(assert (=> b!7032067 (= e!4227380 call!638582)))

(declare-fun b!7032068 () Bool)

(assert (=> b!7032068 (= e!4227381 e!4227380)))

(declare-fun c!1307905 () Bool)

(assert (=> b!7032068 (= c!1307905 ((_ is Cons!67787) (exprs!6957 lt!2518152)))))

(declare-fun bm!638577 () Bool)

(assert (=> bm!638577 (= call!638582 (derivationStepZipperDown!2125 (h!74235 (exprs!6957 lt!2518152)) (Context!12915 (t!381676 (exprs!6957 lt!2518152))) (h!74236 s!7408)))))

(declare-fun b!7032069 () Bool)

(assert (=> b!7032069 (= e!4227380 ((as const (Array Context!12914 Bool)) false))))

(declare-fun d!2193748 () Bool)

(declare-fun c!1307906 () Bool)

(declare-fun e!4227379 () Bool)

(assert (=> d!2193748 (= c!1307906 e!4227379)))

(declare-fun res!2870560 () Bool)

(assert (=> d!2193748 (=> (not res!2870560) (not e!4227379))))

(assert (=> d!2193748 (= res!2870560 ((_ is Cons!67787) (exprs!6957 lt!2518152)))))

(assert (=> d!2193748 (= (derivationStepZipperUp!2071 lt!2518152 (h!74236 s!7408)) e!4227381)))

(declare-fun b!7032070 () Bool)

(assert (=> b!7032070 (= e!4227379 (nullable!7172 (h!74235 (exprs!6957 lt!2518152))))))

(assert (= (and d!2193748 res!2870560) b!7032070))

(assert (= (and d!2193748 c!1307906) b!7032066))

(assert (= (and d!2193748 (not c!1307906)) b!7032068))

(assert (= (and b!7032068 c!1307905) b!7032067))

(assert (= (and b!7032068 (not c!1307905)) b!7032069))

(assert (= (or b!7032066 b!7032067) bm!638577))

(declare-fun m!7738482 () Bool)

(assert (=> b!7032066 m!7738482))

(declare-fun m!7738484 () Bool)

(assert (=> bm!638577 m!7738484))

(declare-fun m!7738486 () Bool)

(assert (=> b!7032070 m!7738486))

(assert (=> b!7031710 d!2193748))

(assert (=> b!7031710 d!2193672))

(declare-fun bs!1870533 () Bool)

(declare-fun d!2193750 () Bool)

(assert (= bs!1870533 (and d!2193750 b!7031710)))

(declare-fun lambda!414522 () Int)

(assert (=> bs!1870533 (= lambda!414522 lambda!414478)))

(assert (=> d!2193750 true))

(assert (=> d!2193750 (= (derivationStepZipper!2917 lt!2518139 (h!74236 s!7408)) (flatMap!2408 lt!2518139 lambda!414522))))

(declare-fun bs!1870534 () Bool)

(assert (= bs!1870534 d!2193750))

(declare-fun m!7738488 () Bool)

(assert (=> bs!1870534 m!7738488))

(assert (=> b!7031710 d!2193750))

(declare-fun d!2193752 () Bool)

(assert (=> d!2193752 (= (flatMap!2408 lt!2518128 lambda!414478) (dynLambda!27372 lambda!414478 lt!2518173))))

(declare-fun lt!2518303 () Unit!161592)

(assert (=> d!2193752 (= lt!2518303 (choose!53236 lt!2518128 lt!2518173 lambda!414478))))

(assert (=> d!2193752 (= lt!2518128 (store ((as const (Array Context!12914 Bool)) false) lt!2518173 true))))

(assert (=> d!2193752 (= (lemmaFlatMapOnSingletonSet!1922 lt!2518128 lt!2518173 lambda!414478) lt!2518303)))

(declare-fun b_lambda!266371 () Bool)

(assert (=> (not b_lambda!266371) (not d!2193752)))

(declare-fun bs!1870535 () Bool)

(assert (= bs!1870535 d!2193752))

(assert (=> bs!1870535 m!7737808))

(declare-fun m!7738490 () Bool)

(assert (=> bs!1870535 m!7738490))

(declare-fun m!7738492 () Bool)

(assert (=> bs!1870535 m!7738492))

(assert (=> bs!1870535 m!7737810))

(assert (=> b!7031692 d!2193752))

(assert (=> b!7031692 d!2193706))

(declare-fun bs!1870536 () Bool)

(declare-fun d!2193754 () Bool)

(assert (= bs!1870536 (and d!2193754 b!7031710)))

(declare-fun lambda!414523 () Int)

(assert (=> bs!1870536 (= lambda!414523 lambda!414478)))

(declare-fun bs!1870537 () Bool)

(assert (= bs!1870537 (and d!2193754 d!2193750)))

(assert (=> bs!1870537 (= lambda!414523 lambda!414522)))

(assert (=> d!2193754 true))

(assert (=> d!2193754 (= (derivationStepZipper!2917 lt!2518128 (h!74236 s!7408)) (flatMap!2408 lt!2518128 lambda!414523))))

(declare-fun bs!1870538 () Bool)

(assert (= bs!1870538 d!2193754))

(declare-fun m!7738494 () Bool)

(assert (=> bs!1870538 m!7738494))

(assert (=> b!7031692 d!2193754))

(assert (=> b!7031692 d!2193630))

(declare-fun d!2193756 () Bool)

(assert (=> d!2193756 (= (flatMap!2408 lt!2518128 lambda!414478) (choose!53235 lt!2518128 lambda!414478))))

(declare-fun bs!1870539 () Bool)

(assert (= bs!1870539 d!2193756))

(declare-fun m!7738496 () Bool)

(assert (=> bs!1870539 m!7738496))

(assert (=> b!7031692 d!2193756))

(declare-fun d!2193758 () Bool)

(assert (=> d!2193758 (= (isEmpty!39533 (exprs!6957 lt!2518147)) ((_ is Nil!67787) (exprs!6957 lt!2518147)))))

(assert (=> b!7031693 d!2193758))

(declare-fun b!7032077 () Bool)

(declare-fun e!4227384 () Bool)

(declare-fun tp!1936349 () Bool)

(declare-fun tp!1936350 () Bool)

(assert (=> b!7032077 (= e!4227384 (and tp!1936349 tp!1936350))))

(assert (=> b!7031709 (= tp!1936327 e!4227384)))

(assert (= (and b!7031709 ((_ is Cons!67787) (exprs!6957 ct2!306))) b!7032077))

(declare-fun b!7032078 () Bool)

(declare-fun e!4227385 () Bool)

(declare-fun tp!1936351 () Bool)

(declare-fun tp!1936352 () Bool)

(assert (=> b!7032078 (= e!4227385 (and tp!1936351 tp!1936352))))

(assert (=> b!7031685 (= tp!1936324 e!4227385)))

(assert (= (and b!7031685 ((_ is Cons!67787) (exprs!6957 setElem!49136))) b!7032078))

(declare-fun b!7032083 () Bool)

(declare-fun e!4227388 () Bool)

(declare-fun tp!1936355 () Bool)

(assert (=> b!7032083 (= e!4227388 (and tp_is_empty!44147 tp!1936355))))

(assert (=> b!7031695 (= tp!1936325 e!4227388)))

(assert (= (and b!7031695 ((_ is Cons!67788) (t!381677 s!7408))) b!7032083))

(declare-fun condSetEmpty!49142 () Bool)

(assert (=> setNonEmpty!49136 (= condSetEmpty!49142 (= setRest!49136 ((as const (Array Context!12914 Bool)) false)))))

(declare-fun setRes!49142 () Bool)

(assert (=> setNonEmpty!49136 (= tp!1936326 setRes!49142)))

(declare-fun setIsEmpty!49142 () Bool)

(assert (=> setIsEmpty!49142 setRes!49142))

(declare-fun setElem!49142 () Context!12914)

(declare-fun tp!1936361 () Bool)

(declare-fun e!4227391 () Bool)

(declare-fun setNonEmpty!49142 () Bool)

(assert (=> setNonEmpty!49142 (= setRes!49142 (and tp!1936361 (inv!86511 setElem!49142) e!4227391))))

(declare-fun setRest!49142 () (InoxSet Context!12914))

(assert (=> setNonEmpty!49142 (= setRest!49136 ((_ map or) (store ((as const (Array Context!12914 Bool)) false) setElem!49142 true) setRest!49142))))

(declare-fun b!7032088 () Bool)

(declare-fun tp!1936360 () Bool)

(assert (=> b!7032088 (= e!4227391 tp!1936360)))

(assert (= (and setNonEmpty!49136 condSetEmpty!49142) setIsEmpty!49142))

(assert (= (and setNonEmpty!49136 (not condSetEmpty!49142)) setNonEmpty!49142))

(assert (= setNonEmpty!49142 b!7032088))

(declare-fun m!7738498 () Bool)

(assert (=> setNonEmpty!49142 m!7738498))

(declare-fun b_lambda!266373 () Bool)

(assert (= b_lambda!266367 (or b!7031710 b_lambda!266373)))

(declare-fun bs!1870540 () Bool)

(declare-fun d!2193760 () Bool)

(assert (= bs!1870540 (and d!2193760 b!7031710)))

(assert (=> bs!1870540 (= (dynLambda!27372 lambda!414478 lt!2518156) (derivationStepZipperUp!2071 lt!2518156 (h!74236 s!7408)))))

(assert (=> bs!1870540 m!7737788))

(assert (=> d!2193730 d!2193760))

(declare-fun b_lambda!266375 () Bool)

(assert (= b_lambda!266361 (or b!7031688 b_lambda!266375)))

(declare-fun bs!1870541 () Bool)

(declare-fun d!2193762 () Bool)

(assert (= bs!1870541 (and d!2193762 b!7031688)))

(declare-fun lt!2518304 () Unit!161592)

(assert (=> bs!1870541 (= lt!2518304 (lemmaConcatPreservesForall!782 (exprs!6957 lt!2518258) (exprs!6957 ct2!306) lambda!414477))))

(assert (=> bs!1870541 (= (dynLambda!27371 lambda!414476 lt!2518258) (Context!12915 (++!15502 (exprs!6957 lt!2518258) (exprs!6957 ct2!306))))))

(declare-fun m!7738500 () Bool)

(assert (=> bs!1870541 m!7738500))

(declare-fun m!7738502 () Bool)

(assert (=> bs!1870541 m!7738502))

(assert (=> d!2193674 d!2193762))

(declare-fun b_lambda!266377 () Bool)

(assert (= b_lambda!266363 (or b!7031699 b_lambda!266377)))

(declare-fun bs!1870542 () Bool)

(declare-fun d!2193764 () Bool)

(assert (= bs!1870542 (and d!2193764 b!7031699)))

(assert (=> bs!1870542 (= (dynLambda!27370 lambda!414479 lt!2518267) (nullableContext!81 lt!2518267))))

(declare-fun m!7738504 () Bool)

(assert (=> bs!1870542 m!7738504))

(assert (=> d!2193694 d!2193764))

(declare-fun b_lambda!266379 () Bool)

(assert (= b_lambda!266369 (or b!7031710 b_lambda!266379)))

(declare-fun bs!1870543 () Bool)

(declare-fun d!2193766 () Bool)

(assert (= bs!1870543 (and d!2193766 b!7031710)))

(assert (=> bs!1870543 (= (dynLambda!27372 lambda!414478 lt!2518152) (derivationStepZipperUp!2071 lt!2518152 (h!74236 s!7408)))))

(assert (=> bs!1870543 m!7737792))

(assert (=> d!2193746 d!2193766))

(declare-fun b_lambda!266381 () Bool)

(assert (= b_lambda!266359 (or b!7031706 b_lambda!266381)))

(declare-fun bs!1870544 () Bool)

(declare-fun d!2193768 () Bool)

(assert (= bs!1870544 (and d!2193768 b!7031706)))

(assert (=> bs!1870544 (= (dynLambda!27370 lambda!414475 lt!2518246) (matchZipper!3001 (store ((as const (Array Context!12914 Bool)) false) lt!2518246 true) s!7408))))

(declare-fun m!7738506 () Bool)

(assert (=> bs!1870544 m!7738506))

(assert (=> bs!1870544 m!7738506))

(declare-fun m!7738508 () Bool)

(assert (=> bs!1870544 m!7738508))

(assert (=> d!2193650 d!2193768))

(declare-fun b_lambda!266383 () Bool)

(assert (= b_lambda!266365 (or b!7031688 b_lambda!266383)))

(declare-fun bs!1870545 () Bool)

(declare-fun d!2193770 () Bool)

(assert (= bs!1870545 (and d!2193770 b!7031688)))

(declare-fun lt!2518305 () Unit!161592)

(assert (=> bs!1870545 (= lt!2518305 (lemmaConcatPreservesForall!782 (exprs!6957 lt!2518156) (exprs!6957 ct2!306) lambda!414477))))

(assert (=> bs!1870545 (= (dynLambda!27371 lambda!414476 lt!2518156) (Context!12915 (++!15502 (exprs!6957 lt!2518156) (exprs!6957 ct2!306))))))

(declare-fun m!7738510 () Bool)

(assert (=> bs!1870545 m!7738510))

(declare-fun m!7738512 () Bool)

(assert (=> bs!1870545 m!7738512))

(assert (=> d!2193716 d!2193770))

(declare-fun b_lambda!266385 () Bool)

(assert (= b_lambda!266371 (or b!7031710 b_lambda!266385)))

(declare-fun bs!1870546 () Bool)

(declare-fun d!2193772 () Bool)

(assert (= bs!1870546 (and d!2193772 b!7031710)))

(assert (=> bs!1870546 (= (dynLambda!27372 lambda!414478 lt!2518173) (derivationStepZipperUp!2071 lt!2518173 (h!74236 s!7408)))))

(assert (=> bs!1870546 m!7737812))

(assert (=> d!2193752 d!2193772))

(check-sat (not b!7031959) (not d!2193712) (not b!7031954) (not d!2193752) (not b!7032065) (not b!7031955) (not d!2193692) (not b!7031956) (not b!7031949) (not d!2193744) (not b!7032088) (not b!7032040) (not d!2193702) (not d!2193754) (not d!2193690) (not bm!638573) (not d!2193742) (not d!2193746) (not bs!1870544) (not b!7031848) (not d!2193716) (not setNonEmpty!49142) (not b!7032066) (not d!2193678) (not b!7031985) (not b!7031958) (not b!7032057) (not d!2193734) (not b!7031862) (not b!7031982) (not b!7032032) (not bs!1870546) (not b!7032000) (not b!7031931) (not d!2193698) (not b!7031980) (not b!7031847) (not b!7032070) (not bm!638570) (not b_lambda!266385) (not b!7031946) (not b!7031987) (not b!7031988) (not b!7031930) (not d!2193730) (not b_lambda!266379) (not d!2193672) (not d!2193676) (not bm!638557) (not b_lambda!266383) (not b_lambda!266373) (not d!2193684) (not b!7032062) (not d!2193720) (not b_lambda!266381) (not d!2193682) (not d!2193648) (not b!7032083) (not d!2193696) (not b!7032064) (not d!2193722) (not b!7032054) (not d!2193640) (not b!7032039) (not bs!1870542) (not b!7032077) (not b!7031947) (not b!7031953) (not b!7031868) (not d!2193756) (not bm!638576) (not d!2193750) (not b!7031957) (not d!2193694) (not d!2193710) (not b!7031920) (not b!7031989) (not bs!1870541) (not d!2193604) (not b!7032004) (not d!2193650) (not b!7031986) (not d!2193688) (not d!2193700) (not bs!1870545) (not b!7032052) (not d!2193668) (not d!2193666) (not b!7032078) (not b!7031950) tp_is_empty!44147 (not b_lambda!266377) (not bs!1870540) (not bm!638577) (not d!2193630) (not d!2193686) (not bs!1870543) (not b!7031919) (not b!7031983) (not d!2193680) (not b!7032046) (not d!2193738) (not b!7031867) (not bm!638572) (not d!2193736) (not b!7032061) (not b_lambda!266375) (not d!2193674) (not d!2193726) (not d!2193646) (not b!7032055) (not d!2193670))
(check-sat)
