; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!678250 () Bool)

(assert start!678250)

(declare-fun b!7025584 () Bool)

(assert (=> b!7025584 true))

(declare-fun b!7025570 () Bool)

(assert (=> b!7025570 true))

(declare-fun b!7025574 () Bool)

(assert (=> b!7025574 true))

(declare-fun setIsEmpty!48973 () Bool)

(declare-fun setRes!48973 () Bool)

(assert (=> setIsEmpty!48973 setRes!48973))

(declare-fun b!7025571 () Bool)

(declare-fun e!4223388 () Bool)

(declare-fun e!4223390 () Bool)

(assert (=> b!7025571 (= e!4223388 e!4223390)))

(declare-fun res!2867987 () Bool)

(assert (=> b!7025571 (=> res!2867987 e!4223390)))

(declare-datatypes ((C!35154 0))(
  ( (C!35155 (val!27279 Int)) )
))
(declare-datatypes ((Regex!17442 0))(
  ( (ElementMatch!17442 (c!1305931 C!35154)) (Concat!26287 (regOne!35396 Regex!17442) (regTwo!35396 Regex!17442)) (EmptyExpr!17442) (Star!17442 (reg!17771 Regex!17442)) (EmptyLang!17442) (Union!17442 (regOne!35397 Regex!17442) (regTwo!35397 Regex!17442)) )
))
(declare-datatypes ((List!67854 0))(
  ( (Nil!67730) (Cons!67730 (h!74178 Regex!17442) (t!381611 List!67854)) )
))
(declare-datatypes ((Context!12876 0))(
  ( (Context!12877 (exprs!6938 List!67854)) )
))
(declare-fun lt!2514388 () (Set Context!12876))

(declare-datatypes ((List!67855 0))(
  ( (Nil!67731) (Cons!67731 (h!74179 C!35154) (t!381612 List!67855)) )
))
(declare-fun s!7408 () List!67855)

(declare-fun matchZipper!2982 ((Set Context!12876) List!67855) Bool)

(assert (=> b!7025571 (= res!2867987 (not (matchZipper!2982 lt!2514388 (t!381612 s!7408))))))

(declare-fun lambda!412910 () Int)

(declare-fun lt!2514374 () List!67854)

(declare-datatypes ((Unit!161547 0))(
  ( (Unit!161548) )
))
(declare-fun lt!2514403 () Unit!161547)

(declare-fun ct2!306 () Context!12876)

(declare-fun lemmaConcatPreservesForall!763 (List!67854 List!67854 Int) Unit!161547)

(assert (=> b!7025571 (= lt!2514403 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun b!7025572 () Bool)

(declare-fun e!4223386 () Bool)

(declare-fun e!4223389 () Bool)

(assert (=> b!7025572 (= e!4223386 e!4223389)))

(declare-fun res!2867982 () Bool)

(assert (=> b!7025572 (=> res!2867982 e!4223389)))

(declare-fun lt!2514385 () Context!12876)

(declare-fun nullable!7153 (Regex!17442) Bool)

(assert (=> b!7025572 (= res!2867982 (not (nullable!7153 (h!74178 (exprs!6938 lt!2514385)))))))

(declare-fun tail!13513 (List!67854) List!67854)

(assert (=> b!7025572 (= lt!2514374 (tail!13513 (exprs!6938 lt!2514385)))))

(declare-fun b!7025573 () Bool)

(declare-fun e!4223383 () Bool)

(assert (=> b!7025573 (= e!4223383 (matchZipper!2982 lt!2514388 (t!381612 s!7408)))))

(declare-fun e!4223387 () Bool)

(assert (=> b!7025574 (= e!4223387 e!4223386)))

(declare-fun res!2867976 () Bool)

(assert (=> b!7025574 (=> res!2867976 e!4223386)))

(declare-fun lt!2514401 () (Set Context!12876))

(declare-fun lt!2514382 () (Set Context!12876))

(declare-fun derivationStepZipper!2898 ((Set Context!12876) C!35154) (Set Context!12876))

(assert (=> b!7025574 (= res!2867976 (not (= (derivationStepZipper!2898 lt!2514401 (h!74179 s!7408)) lt!2514382)))))

(declare-fun lt!2514383 () Context!12876)

(declare-fun lambda!412911 () Int)

(declare-fun flatMap!2389 ((Set Context!12876) Int) (Set Context!12876))

(declare-fun derivationStepZipperUp!2052 (Context!12876 C!35154) (Set Context!12876))

(assert (=> b!7025574 (= (flatMap!2389 lt!2514401 lambda!412911) (derivationStepZipperUp!2052 lt!2514383 (h!74179 s!7408)))))

(declare-fun lt!2514398 () Unit!161547)

(declare-fun lemmaFlatMapOnSingletonSet!1903 ((Set Context!12876) Context!12876 Int) Unit!161547)

(assert (=> b!7025574 (= lt!2514398 (lemmaFlatMapOnSingletonSet!1903 lt!2514401 lt!2514383 lambda!412911))))

(assert (=> b!7025574 (= lt!2514382 (derivationStepZipperUp!2052 lt!2514383 (h!74179 s!7408)))))

(declare-fun lt!2514373 () Unit!161547)

(assert (=> b!7025574 (= lt!2514373 (lemmaConcatPreservesForall!763 (exprs!6938 lt!2514385) (exprs!6938 ct2!306) lambda!412910))))

(declare-fun b!7025575 () Bool)

(declare-fun e!4223385 () Bool)

(assert (=> b!7025575 (= e!4223389 e!4223385)))

(declare-fun res!2867980 () Bool)

(assert (=> b!7025575 (=> res!2867980 e!4223385)))

(declare-fun lt!2514375 () (Set Context!12876))

(assert (=> b!7025575 (= res!2867980 (not (= lt!2514382 lt!2514375)))))

(declare-fun lt!2514380 () (Set Context!12876))

(assert (=> b!7025575 (= lt!2514375 (set.union lt!2514380 lt!2514388))))

(declare-fun lt!2514404 () Context!12876)

(assert (=> b!7025575 (= lt!2514388 (derivationStepZipperUp!2052 lt!2514404 (h!74179 s!7408)))))

(declare-fun derivationStepZipperDown!2106 (Regex!17442 Context!12876 C!35154) (Set Context!12876))

(assert (=> b!7025575 (= lt!2514380 (derivationStepZipperDown!2106 (h!74178 (exprs!6938 lt!2514385)) lt!2514404 (h!74179 s!7408)))))

(declare-fun ++!15475 (List!67854 List!67854) List!67854)

(assert (=> b!7025575 (= lt!2514404 (Context!12877 (++!15475 lt!2514374 (exprs!6938 ct2!306))))))

(declare-fun lt!2514402 () Unit!161547)

(assert (=> b!7025575 (= lt!2514402 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun lt!2514396 () Unit!161547)

(assert (=> b!7025575 (= lt!2514396 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun b!7025576 () Bool)

(assert (=> b!7025576 (= e!4223385 e!4223388)))

(declare-fun res!2867984 () Bool)

(assert (=> b!7025576 (=> res!2867984 e!4223388)))

(declare-fun e!4223376 () Bool)

(assert (=> b!7025576 (= res!2867984 e!4223376)))

(declare-fun res!2867977 () Bool)

(assert (=> b!7025576 (=> (not res!2867977) (not e!4223376))))

(declare-fun lt!2514395 () Bool)

(declare-fun lt!2514378 () Bool)

(assert (=> b!7025576 (= res!2867977 (not (= lt!2514395 lt!2514378)))))

(assert (=> b!7025576 (= lt!2514395 (matchZipper!2982 lt!2514382 (t!381612 s!7408)))))

(declare-fun lt!2514377 () Unit!161547)

(assert (=> b!7025576 (= lt!2514377 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(assert (=> b!7025576 (= (matchZipper!2982 lt!2514375 (t!381612 s!7408)) e!4223383)))

(declare-fun res!2867975 () Bool)

(assert (=> b!7025576 (=> res!2867975 e!4223383)))

(assert (=> b!7025576 (= res!2867975 lt!2514378)))

(assert (=> b!7025576 (= lt!2514378 (matchZipper!2982 lt!2514380 (t!381612 s!7408)))))

(declare-fun lt!2514400 () Unit!161547)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1515 ((Set Context!12876) (Set Context!12876) List!67855) Unit!161547)

(assert (=> b!7025576 (= lt!2514400 (lemmaZipperConcatMatchesSameAsBothZippers!1515 lt!2514380 lt!2514388 (t!381612 s!7408)))))

(declare-fun lt!2514381 () Unit!161547)

(assert (=> b!7025576 (= lt!2514381 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun lt!2514397 () Unit!161547)

(assert (=> b!7025576 (= lt!2514397 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun b!7025577 () Bool)

(declare-fun e!4223384 () Bool)

(assert (=> b!7025577 (= e!4223384 e!4223387)))

(declare-fun res!2867985 () Bool)

(assert (=> b!7025577 (=> res!2867985 e!4223387)))

(declare-fun lt!2514393 () (Set Context!12876))

(assert (=> b!7025577 (= res!2867985 (not (= lt!2514401 lt!2514393)))))

(assert (=> b!7025577 (= lt!2514401 (set.insert lt!2514383 (as set.empty (Set Context!12876))))))

(declare-fun lt!2514389 () Unit!161547)

(assert (=> b!7025577 (= lt!2514389 (lemmaConcatPreservesForall!763 (exprs!6938 lt!2514385) (exprs!6938 ct2!306) lambda!412910))))

(declare-fun b!7025578 () Bool)

(declare-fun res!2867989 () Bool)

(declare-fun e!4223381 () Bool)

(assert (=> b!7025578 (=> res!2867989 e!4223381)))

(declare-fun lt!2514372 () Context!12876)

(declare-fun lt!2514386 () (Set Context!12876))

(assert (=> b!7025578 (= res!2867989 (not (set.member lt!2514372 lt!2514386)))))

(declare-fun b!7025579 () Bool)

(declare-fun e!4223379 () Bool)

(assert (=> b!7025579 (= e!4223390 e!4223379)))

(declare-fun res!2867988 () Bool)

(assert (=> b!7025579 (=> res!2867988 e!4223379)))

(declare-fun lt!2514391 () (Set Context!12876))

(assert (=> b!7025579 (= res!2867988 (not (= (derivationStepZipper!2898 lt!2514391 (h!74179 s!7408)) lt!2514388)))))

(declare-fun lt!2514405 () Unit!161547)

(assert (=> b!7025579 (= lt!2514405 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun lt!2514399 () Unit!161547)

(assert (=> b!7025579 (= lt!2514399 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(assert (=> b!7025579 (= (flatMap!2389 lt!2514391 lambda!412911) (derivationStepZipperUp!2052 lt!2514404 (h!74179 s!7408)))))

(declare-fun lt!2514387 () Unit!161547)

(assert (=> b!7025579 (= lt!2514387 (lemmaFlatMapOnSingletonSet!1903 lt!2514391 lt!2514404 lambda!412911))))

(assert (=> b!7025579 (= lt!2514391 (set.insert lt!2514404 (as set.empty (Set Context!12876))))))

(declare-fun lt!2514394 () Unit!161547)

(assert (=> b!7025579 (= lt!2514394 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun lt!2514384 () Unit!161547)

(assert (=> b!7025579 (= lt!2514384 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun b!7025580 () Bool)

(declare-fun res!2867973 () Bool)

(assert (=> b!7025580 (=> res!2867973 e!4223386)))

(declare-fun isEmpty!39492 (List!67854) Bool)

(assert (=> b!7025580 (= res!2867973 (isEmpty!39492 (exprs!6938 lt!2514385)))))

(declare-fun b!7025581 () Bool)

(assert (=> b!7025581 (= e!4223376 (not (matchZipper!2982 lt!2514388 (t!381612 s!7408))))))

(declare-fun lt!2514406 () Unit!161547)

(assert (=> b!7025581 (= lt!2514406 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(assert (=> b!7025570 (= e!4223381 e!4223384)))

(declare-fun res!2867978 () Bool)

(assert (=> b!7025570 (=> res!2867978 e!4223384)))

(declare-fun z1!570 () (Set Context!12876))

(assert (=> b!7025570 (= res!2867978 (or (not (= lt!2514383 lt!2514372)) (not (set.member lt!2514385 z1!570))))))

(assert (=> b!7025570 (= lt!2514383 (Context!12877 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306))))))

(declare-fun lt!2514390 () Unit!161547)

(assert (=> b!7025570 (= lt!2514390 (lemmaConcatPreservesForall!763 (exprs!6938 lt!2514385) (exprs!6938 ct2!306) lambda!412910))))

(declare-fun lambda!412909 () Int)

(declare-fun mapPost2!283 ((Set Context!12876) Int Context!12876) Context!12876)

(assert (=> b!7025570 (= lt!2514385 (mapPost2!283 z1!570 lambda!412909 lt!2514372))))

(declare-fun res!2867981 () Bool)

(declare-fun e!4223382 () Bool)

(assert (=> start!678250 (=> (not res!2867981) (not e!4223382))))

(assert (=> start!678250 (= res!2867981 (matchZipper!2982 lt!2514386 s!7408))))

(declare-fun appendTo!563 ((Set Context!12876) Context!12876) (Set Context!12876))

(assert (=> start!678250 (= lt!2514386 (appendTo!563 z1!570 ct2!306))))

(assert (=> start!678250 e!4223382))

(declare-fun condSetEmpty!48973 () Bool)

(assert (=> start!678250 (= condSetEmpty!48973 (= z1!570 (as set.empty (Set Context!12876))))))

(assert (=> start!678250 setRes!48973))

(declare-fun e!4223380 () Bool)

(declare-fun inv!86465 (Context!12876) Bool)

(assert (=> start!678250 (and (inv!86465 ct2!306) e!4223380)))

(declare-fun e!4223377 () Bool)

(assert (=> start!678250 e!4223377))

(declare-fun b!7025582 () Bool)

(declare-fun res!2867986 () Bool)

(assert (=> b!7025582 (=> res!2867986 e!4223386)))

(assert (=> b!7025582 (= res!2867986 (not (is-Cons!67730 (exprs!6938 lt!2514385))))))

(declare-fun b!7025583 () Bool)

(declare-fun res!2867983 () Bool)

(assert (=> b!7025583 (=> res!2867983 e!4223388)))

(assert (=> b!7025583 (= res!2867983 (not lt!2514395))))

(assert (=> b!7025584 (= e!4223382 (not e!4223381))))

(declare-fun res!2867974 () Bool)

(assert (=> b!7025584 (=> res!2867974 e!4223381)))

(assert (=> b!7025584 (= res!2867974 (not (matchZipper!2982 lt!2514393 s!7408)))))

(assert (=> b!7025584 (= lt!2514393 (set.insert lt!2514372 (as set.empty (Set Context!12876))))))

(declare-fun lambda!412908 () Int)

(declare-fun getWitness!1433 ((Set Context!12876) Int) Context!12876)

(assert (=> b!7025584 (= lt!2514372 (getWitness!1433 lt!2514386 lambda!412908))))

(declare-datatypes ((List!67856 0))(
  ( (Nil!67732) (Cons!67732 (h!74180 Context!12876) (t!381613 List!67856)) )
))
(declare-fun lt!2514376 () List!67856)

(declare-fun exists!3352 (List!67856 Int) Bool)

(assert (=> b!7025584 (exists!3352 lt!2514376 lambda!412908)))

(declare-fun lt!2514392 () Unit!161547)

(declare-fun lemmaZipperMatchesExistsMatchingContext!381 (List!67856 List!67855) Unit!161547)

(assert (=> b!7025584 (= lt!2514392 (lemmaZipperMatchesExistsMatchingContext!381 lt!2514376 s!7408))))

(declare-fun toList!10785 ((Set Context!12876)) List!67856)

(assert (=> b!7025584 (= lt!2514376 (toList!10785 lt!2514386))))

(declare-fun b!7025585 () Bool)

(declare-fun tp_is_empty!44109 () Bool)

(declare-fun tp!1935430 () Bool)

(assert (=> b!7025585 (= e!4223377 (and tp_is_empty!44109 tp!1935430))))

(declare-fun setElem!48973 () Context!12876)

(declare-fun e!4223378 () Bool)

(declare-fun tp!1935431 () Bool)

(declare-fun setNonEmpty!48973 () Bool)

(assert (=> setNonEmpty!48973 (= setRes!48973 (and tp!1935431 (inv!86465 setElem!48973) e!4223378))))

(declare-fun setRest!48973 () (Set Context!12876))

(assert (=> setNonEmpty!48973 (= z1!570 (set.union (set.insert setElem!48973 (as set.empty (Set Context!12876))) setRest!48973))))

(declare-fun b!7025586 () Bool)

(declare-fun tp!1935432 () Bool)

(assert (=> b!7025586 (= e!4223378 tp!1935432)))

(declare-fun b!7025587 () Bool)

(declare-fun res!2867979 () Bool)

(assert (=> b!7025587 (=> (not res!2867979) (not e!4223382))))

(assert (=> b!7025587 (= res!2867979 (is-Cons!67731 s!7408))))

(declare-fun b!7025588 () Bool)

(assert (=> b!7025588 (= e!4223379 (matchZipper!2982 lt!2514391 s!7408))))

(declare-fun lt!2514379 () Unit!161547)

(assert (=> b!7025588 (= lt!2514379 (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(declare-fun b!7025589 () Bool)

(declare-fun tp!1935433 () Bool)

(assert (=> b!7025589 (= e!4223380 tp!1935433)))

(assert (= (and start!678250 res!2867981) b!7025587))

(assert (= (and b!7025587 res!2867979) b!7025584))

(assert (= (and b!7025584 (not res!2867974)) b!7025578))

(assert (= (and b!7025578 (not res!2867989)) b!7025570))

(assert (= (and b!7025570 (not res!2867978)) b!7025577))

(assert (= (and b!7025577 (not res!2867985)) b!7025574))

(assert (= (and b!7025574 (not res!2867976)) b!7025582))

(assert (= (and b!7025582 (not res!2867986)) b!7025580))

(assert (= (and b!7025580 (not res!2867973)) b!7025572))

(assert (= (and b!7025572 (not res!2867982)) b!7025575))

(assert (= (and b!7025575 (not res!2867980)) b!7025576))

(assert (= (and b!7025576 (not res!2867975)) b!7025573))

(assert (= (and b!7025576 res!2867977) b!7025581))

(assert (= (and b!7025576 (not res!2867984)) b!7025583))

(assert (= (and b!7025583 (not res!2867983)) b!7025571))

(assert (= (and b!7025571 (not res!2867987)) b!7025579))

(assert (= (and b!7025579 (not res!2867988)) b!7025588))

(assert (= (and start!678250 condSetEmpty!48973) setIsEmpty!48973))

(assert (= (and start!678250 (not condSetEmpty!48973)) setNonEmpty!48973))

(assert (= setNonEmpty!48973 b!7025586))

(assert (= start!678250 b!7025589))

(assert (= (and start!678250 (is-Cons!67731 s!7408)) b!7025585))

(declare-fun m!7728724 () Bool)

(assert (=> b!7025571 m!7728724))

(declare-fun m!7728726 () Bool)

(assert (=> b!7025571 m!7728726))

(declare-fun m!7728728 () Bool)

(assert (=> start!678250 m!7728728))

(declare-fun m!7728730 () Bool)

(assert (=> start!678250 m!7728730))

(declare-fun m!7728732 () Bool)

(assert (=> start!678250 m!7728732))

(assert (=> b!7025573 m!7728724))

(assert (=> b!7025581 m!7728724))

(assert (=> b!7025581 m!7728726))

(declare-fun m!7728734 () Bool)

(assert (=> b!7025572 m!7728734))

(declare-fun m!7728736 () Bool)

(assert (=> b!7025572 m!7728736))

(declare-fun m!7728738 () Bool)

(assert (=> b!7025580 m!7728738))

(declare-fun m!7728740 () Bool)

(assert (=> b!7025574 m!7728740))

(declare-fun m!7728742 () Bool)

(assert (=> b!7025574 m!7728742))

(declare-fun m!7728744 () Bool)

(assert (=> b!7025574 m!7728744))

(declare-fun m!7728746 () Bool)

(assert (=> b!7025574 m!7728746))

(declare-fun m!7728748 () Bool)

(assert (=> b!7025574 m!7728748))

(declare-fun m!7728750 () Bool)

(assert (=> b!7025570 m!7728750))

(declare-fun m!7728752 () Bool)

(assert (=> b!7025570 m!7728752))

(assert (=> b!7025570 m!7728748))

(declare-fun m!7728754 () Bool)

(assert (=> b!7025570 m!7728754))

(declare-fun m!7728756 () Bool)

(assert (=> b!7025578 m!7728756))

(declare-fun m!7728758 () Bool)

(assert (=> b!7025576 m!7728758))

(assert (=> b!7025576 m!7728726))

(assert (=> b!7025576 m!7728726))

(assert (=> b!7025576 m!7728726))

(declare-fun m!7728760 () Bool)

(assert (=> b!7025576 m!7728760))

(declare-fun m!7728762 () Bool)

(assert (=> b!7025576 m!7728762))

(declare-fun m!7728764 () Bool)

(assert (=> b!7025576 m!7728764))

(declare-fun m!7728766 () Bool)

(assert (=> b!7025577 m!7728766))

(assert (=> b!7025577 m!7728748))

(declare-fun m!7728768 () Bool)

(assert (=> setNonEmpty!48973 m!7728768))

(declare-fun m!7728770 () Bool)

(assert (=> b!7025584 m!7728770))

(declare-fun m!7728772 () Bool)

(assert (=> b!7025584 m!7728772))

(declare-fun m!7728774 () Bool)

(assert (=> b!7025584 m!7728774))

(declare-fun m!7728776 () Bool)

(assert (=> b!7025584 m!7728776))

(declare-fun m!7728778 () Bool)

(assert (=> b!7025584 m!7728778))

(declare-fun m!7728780 () Bool)

(assert (=> b!7025584 m!7728780))

(declare-fun m!7728782 () Bool)

(assert (=> b!7025579 m!7728782))

(assert (=> b!7025579 m!7728726))

(assert (=> b!7025579 m!7728726))

(assert (=> b!7025579 m!7728726))

(assert (=> b!7025579 m!7728726))

(declare-fun m!7728784 () Bool)

(assert (=> b!7025579 m!7728784))

(declare-fun m!7728786 () Bool)

(assert (=> b!7025579 m!7728786))

(declare-fun m!7728788 () Bool)

(assert (=> b!7025579 m!7728788))

(declare-fun m!7728790 () Bool)

(assert (=> b!7025579 m!7728790))

(declare-fun m!7728792 () Bool)

(assert (=> b!7025588 m!7728792))

(assert (=> b!7025588 m!7728726))

(declare-fun m!7728794 () Bool)

(assert (=> b!7025575 m!7728794))

(assert (=> b!7025575 m!7728726))

(assert (=> b!7025575 m!7728726))

(declare-fun m!7728796 () Bool)

(assert (=> b!7025575 m!7728796))

(assert (=> b!7025575 m!7728784))

(push 1)

(assert (not start!678250))

(assert (not b!7025570))

(assert (not b!7025584))

(assert (not b!7025576))

(assert (not b!7025580))

(assert (not setNonEmpty!48973))

(assert (not b!7025575))

(assert tp_is_empty!44109)

(assert (not b!7025586))

(assert (not b!7025572))

(assert (not b!7025588))

(assert (not b!7025571))

(assert (not b!7025589))

(assert (not b!7025581))

(assert (not b!7025573))

(assert (not b!7025579))

(assert (not b!7025577))

(assert (not b!7025585))

(assert (not b!7025574))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2190257 () Bool)

(declare-fun c!1305945 () Bool)

(declare-fun isEmpty!39494 (List!67855) Bool)

(assert (=> d!2190257 (= c!1305945 (isEmpty!39494 (t!381612 s!7408)))))

(declare-fun e!4223438 () Bool)

(assert (=> d!2190257 (= (matchZipper!2982 lt!2514388 (t!381612 s!7408)) e!4223438)))

(declare-fun b!7025666 () Bool)

(declare-fun nullableZipper!2563 ((Set Context!12876)) Bool)

(assert (=> b!7025666 (= e!4223438 (nullableZipper!2563 lt!2514388))))

(declare-fun b!7025667 () Bool)

(declare-fun head!14239 (List!67855) C!35154)

(declare-fun tail!13515 (List!67855) List!67855)

(assert (=> b!7025667 (= e!4223438 (matchZipper!2982 (derivationStepZipper!2898 lt!2514388 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))))))

(assert (= (and d!2190257 c!1305945) b!7025666))

(assert (= (and d!2190257 (not c!1305945)) b!7025667))

(declare-fun m!7728872 () Bool)

(assert (=> d!2190257 m!7728872))

(declare-fun m!7728874 () Bool)

(assert (=> b!7025666 m!7728874))

(declare-fun m!7728876 () Bool)

(assert (=> b!7025667 m!7728876))

(assert (=> b!7025667 m!7728876))

(declare-fun m!7728878 () Bool)

(assert (=> b!7025667 m!7728878))

(declare-fun m!7728880 () Bool)

(assert (=> b!7025667 m!7728880))

(assert (=> b!7025667 m!7728878))

(assert (=> b!7025667 m!7728880))

(declare-fun m!7728882 () Bool)

(assert (=> b!7025667 m!7728882))

(assert (=> b!7025581 d!2190257))

(declare-fun d!2190259 () Bool)

(declare-fun forall!16346 (List!67854 Int) Bool)

(assert (=> d!2190259 (forall!16346 (++!15475 lt!2514374 (exprs!6938 ct2!306)) lambda!412910)))

(declare-fun lt!2514516 () Unit!161547)

(declare-fun choose!53080 (List!67854 List!67854 Int) Unit!161547)

(assert (=> d!2190259 (= lt!2514516 (choose!53080 lt!2514374 (exprs!6938 ct2!306) lambda!412910))))

(assert (=> d!2190259 (forall!16346 lt!2514374 lambda!412910)))

(assert (=> d!2190259 (= (lemmaConcatPreservesForall!763 lt!2514374 (exprs!6938 ct2!306) lambda!412910) lt!2514516)))

(declare-fun bs!1868580 () Bool)

(assert (= bs!1868580 d!2190259))

(assert (=> bs!1868580 m!7728794))

(assert (=> bs!1868580 m!7728794))

(declare-fun m!7728884 () Bool)

(assert (=> bs!1868580 m!7728884))

(declare-fun m!7728886 () Bool)

(assert (=> bs!1868580 m!7728886))

(declare-fun m!7728888 () Bool)

(assert (=> bs!1868580 m!7728888))

(assert (=> b!7025581 d!2190259))

(declare-fun d!2190261 () Bool)

(declare-fun nullableFct!2712 (Regex!17442) Bool)

(assert (=> d!2190261 (= (nullable!7153 (h!74178 (exprs!6938 lt!2514385))) (nullableFct!2712 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun bs!1868581 () Bool)

(assert (= bs!1868581 d!2190261))

(declare-fun m!7728890 () Bool)

(assert (=> bs!1868581 m!7728890))

(assert (=> b!7025572 d!2190261))

(declare-fun d!2190263 () Bool)

(assert (=> d!2190263 (= (tail!13513 (exprs!6938 lt!2514385)) (t!381611 (exprs!6938 lt!2514385)))))

(assert (=> b!7025572 d!2190263))

(assert (=> b!7025571 d!2190257))

(assert (=> b!7025571 d!2190259))

(declare-fun d!2190265 () Bool)

(declare-fun c!1305946 () Bool)

(assert (=> d!2190265 (= c!1305946 (isEmpty!39494 s!7408))))

(declare-fun e!4223439 () Bool)

(assert (=> d!2190265 (= (matchZipper!2982 lt!2514391 s!7408) e!4223439)))

(declare-fun b!7025668 () Bool)

(assert (=> b!7025668 (= e!4223439 (nullableZipper!2563 lt!2514391))))

(declare-fun b!7025669 () Bool)

(assert (=> b!7025669 (= e!4223439 (matchZipper!2982 (derivationStepZipper!2898 lt!2514391 (head!14239 s!7408)) (tail!13515 s!7408)))))

(assert (= (and d!2190265 c!1305946) b!7025668))

(assert (= (and d!2190265 (not c!1305946)) b!7025669))

(declare-fun m!7728892 () Bool)

(assert (=> d!2190265 m!7728892))

(declare-fun m!7728894 () Bool)

(assert (=> b!7025668 m!7728894))

(declare-fun m!7728896 () Bool)

(assert (=> b!7025669 m!7728896))

(assert (=> b!7025669 m!7728896))

(declare-fun m!7728898 () Bool)

(assert (=> b!7025669 m!7728898))

(declare-fun m!7728900 () Bool)

(assert (=> b!7025669 m!7728900))

(assert (=> b!7025669 m!7728898))

(assert (=> b!7025669 m!7728900))

(declare-fun m!7728902 () Bool)

(assert (=> b!7025669 m!7728902))

(assert (=> b!7025588 d!2190265))

(assert (=> b!7025588 d!2190259))

(declare-fun d!2190267 () Bool)

(declare-fun c!1305947 () Bool)

(assert (=> d!2190267 (= c!1305947 (isEmpty!39494 s!7408))))

(declare-fun e!4223440 () Bool)

(assert (=> d!2190267 (= (matchZipper!2982 lt!2514386 s!7408) e!4223440)))

(declare-fun b!7025670 () Bool)

(assert (=> b!7025670 (= e!4223440 (nullableZipper!2563 lt!2514386))))

(declare-fun b!7025671 () Bool)

(assert (=> b!7025671 (= e!4223440 (matchZipper!2982 (derivationStepZipper!2898 lt!2514386 (head!14239 s!7408)) (tail!13515 s!7408)))))

(assert (= (and d!2190267 c!1305947) b!7025670))

(assert (= (and d!2190267 (not c!1305947)) b!7025671))

(assert (=> d!2190267 m!7728892))

(declare-fun m!7728904 () Bool)

(assert (=> b!7025670 m!7728904))

(assert (=> b!7025671 m!7728896))

(assert (=> b!7025671 m!7728896))

(declare-fun m!7728906 () Bool)

(assert (=> b!7025671 m!7728906))

(assert (=> b!7025671 m!7728900))

(assert (=> b!7025671 m!7728906))

(assert (=> b!7025671 m!7728900))

(declare-fun m!7728908 () Bool)

(assert (=> b!7025671 m!7728908))

(assert (=> start!678250 d!2190267))

(declare-fun bs!1868582 () Bool)

(declare-fun d!2190269 () Bool)

(assert (= bs!1868582 (and d!2190269 b!7025570)))

(declare-fun lambda!412962 () Int)

(assert (=> bs!1868582 (= lambda!412962 lambda!412909)))

(assert (=> d!2190269 true))

(declare-fun map!15731 ((Set Context!12876) Int) (Set Context!12876))

(assert (=> d!2190269 (= (appendTo!563 z1!570 ct2!306) (map!15731 z1!570 lambda!412962))))

(declare-fun bs!1868583 () Bool)

(assert (= bs!1868583 d!2190269))

(declare-fun m!7728910 () Bool)

(assert (=> bs!1868583 m!7728910))

(assert (=> start!678250 d!2190269))

(declare-fun bs!1868584 () Bool)

(declare-fun d!2190271 () Bool)

(assert (= bs!1868584 (and d!2190271 b!7025570)))

(declare-fun lambda!412965 () Int)

(assert (=> bs!1868584 (= lambda!412965 lambda!412910)))

(assert (=> d!2190271 (= (inv!86465 ct2!306) (forall!16346 (exprs!6938 ct2!306) lambda!412965))))

(declare-fun bs!1868585 () Bool)

(assert (= bs!1868585 d!2190271))

(declare-fun m!7728912 () Bool)

(assert (=> bs!1868585 m!7728912))

(assert (=> start!678250 d!2190271))

(declare-fun d!2190273 () Bool)

(assert (=> d!2190273 (= (isEmpty!39492 (exprs!6938 lt!2514385)) (is-Nil!67730 (exprs!6938 lt!2514385)))))

(assert (=> b!7025580 d!2190273))

(declare-fun b!7025680 () Bool)

(declare-fun e!4223445 () List!67854)

(assert (=> b!7025680 (= e!4223445 (exprs!6938 ct2!306))))

(declare-fun b!7025683 () Bool)

(declare-fun e!4223446 () Bool)

(declare-fun lt!2514521 () List!67854)

(assert (=> b!7025683 (= e!4223446 (or (not (= (exprs!6938 ct2!306) Nil!67730)) (= lt!2514521 (exprs!6938 lt!2514385))))))

(declare-fun b!7025682 () Bool)

(declare-fun res!2868047 () Bool)

(assert (=> b!7025682 (=> (not res!2868047) (not e!4223446))))

(declare-fun size!41041 (List!67854) Int)

(assert (=> b!7025682 (= res!2868047 (= (size!41041 lt!2514521) (+ (size!41041 (exprs!6938 lt!2514385)) (size!41041 (exprs!6938 ct2!306)))))))

(declare-fun b!7025681 () Bool)

(assert (=> b!7025681 (= e!4223445 (Cons!67730 (h!74178 (exprs!6938 lt!2514385)) (++!15475 (t!381611 (exprs!6938 lt!2514385)) (exprs!6938 ct2!306))))))

(declare-fun d!2190275 () Bool)

(assert (=> d!2190275 e!4223446))

(declare-fun res!2868046 () Bool)

(assert (=> d!2190275 (=> (not res!2868046) (not e!4223446))))

(declare-fun content!13496 (List!67854) (Set Regex!17442))

(assert (=> d!2190275 (= res!2868046 (= (content!13496 lt!2514521) (set.union (content!13496 (exprs!6938 lt!2514385)) (content!13496 (exprs!6938 ct2!306)))))))

(assert (=> d!2190275 (= lt!2514521 e!4223445)))

(declare-fun c!1305951 () Bool)

(assert (=> d!2190275 (= c!1305951 (is-Nil!67730 (exprs!6938 lt!2514385)))))

(assert (=> d!2190275 (= (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306)) lt!2514521)))

(assert (= (and d!2190275 c!1305951) b!7025680))

(assert (= (and d!2190275 (not c!1305951)) b!7025681))

(assert (= (and d!2190275 res!2868046) b!7025682))

(assert (= (and b!7025682 res!2868047) b!7025683))

(declare-fun m!7728914 () Bool)

(assert (=> b!7025682 m!7728914))

(declare-fun m!7728916 () Bool)

(assert (=> b!7025682 m!7728916))

(declare-fun m!7728918 () Bool)

(assert (=> b!7025682 m!7728918))

(declare-fun m!7728920 () Bool)

(assert (=> b!7025681 m!7728920))

(declare-fun m!7728922 () Bool)

(assert (=> d!2190275 m!7728922))

(declare-fun m!7728924 () Bool)

(assert (=> d!2190275 m!7728924))

(declare-fun m!7728926 () Bool)

(assert (=> d!2190275 m!7728926))

(assert (=> b!7025570 d!2190275))

(declare-fun d!2190277 () Bool)

(assert (=> d!2190277 (forall!16346 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306)) lambda!412910)))

(declare-fun lt!2514522 () Unit!161547)

(assert (=> d!2190277 (= lt!2514522 (choose!53080 (exprs!6938 lt!2514385) (exprs!6938 ct2!306) lambda!412910))))

(assert (=> d!2190277 (forall!16346 (exprs!6938 lt!2514385) lambda!412910)))

(assert (=> d!2190277 (= (lemmaConcatPreservesForall!763 (exprs!6938 lt!2514385) (exprs!6938 ct2!306) lambda!412910) lt!2514522)))

(declare-fun bs!1868586 () Bool)

(assert (= bs!1868586 d!2190277))

(assert (=> bs!1868586 m!7728752))

(assert (=> bs!1868586 m!7728752))

(declare-fun m!7728928 () Bool)

(assert (=> bs!1868586 m!7728928))

(declare-fun m!7728930 () Bool)

(assert (=> bs!1868586 m!7728930))

(declare-fun m!7728932 () Bool)

(assert (=> bs!1868586 m!7728932))

(assert (=> b!7025570 d!2190277))

(declare-fun d!2190279 () Bool)

(declare-fun e!4223449 () Bool)

(assert (=> d!2190279 e!4223449))

(declare-fun res!2868050 () Bool)

(assert (=> d!2190279 (=> (not res!2868050) (not e!4223449))))

(declare-fun lt!2514525 () Context!12876)

(declare-fun dynLambda!27308 (Int Context!12876) Context!12876)

(assert (=> d!2190279 (= res!2868050 (= lt!2514372 (dynLambda!27308 lambda!412909 lt!2514525)))))

(declare-fun choose!53081 ((Set Context!12876) Int Context!12876) Context!12876)

(assert (=> d!2190279 (= lt!2514525 (choose!53081 z1!570 lambda!412909 lt!2514372))))

(assert (=> d!2190279 (set.member lt!2514372 (map!15731 z1!570 lambda!412909))))

(assert (=> d!2190279 (= (mapPost2!283 z1!570 lambda!412909 lt!2514372) lt!2514525)))

(declare-fun b!7025687 () Bool)

(assert (=> b!7025687 (= e!4223449 (set.member lt!2514525 z1!570))))

(assert (= (and d!2190279 res!2868050) b!7025687))

(declare-fun b_lambda!265579 () Bool)

(assert (=> (not b_lambda!265579) (not d!2190279)))

(declare-fun m!7728934 () Bool)

(assert (=> d!2190279 m!7728934))

(declare-fun m!7728936 () Bool)

(assert (=> d!2190279 m!7728936))

(declare-fun m!7728938 () Bool)

(assert (=> d!2190279 m!7728938))

(declare-fun m!7728940 () Bool)

(assert (=> d!2190279 m!7728940))

(declare-fun m!7728942 () Bool)

(assert (=> b!7025687 m!7728942))

(assert (=> b!7025570 d!2190279))

(declare-fun d!2190281 () Bool)

(declare-fun choose!53082 ((Set Context!12876) Int) (Set Context!12876))

(assert (=> d!2190281 (= (flatMap!2389 lt!2514391 lambda!412911) (choose!53082 lt!2514391 lambda!412911))))

(declare-fun bs!1868587 () Bool)

(assert (= bs!1868587 d!2190281))

(declare-fun m!7728944 () Bool)

(assert (=> bs!1868587 m!7728944))

(assert (=> b!7025579 d!2190281))

(declare-fun b!7025698 () Bool)

(declare-fun call!637851 () (Set Context!12876))

(declare-fun e!4223457 () (Set Context!12876))

(assert (=> b!7025698 (= e!4223457 (set.union call!637851 (derivationStepZipperUp!2052 (Context!12877 (t!381611 (exprs!6938 lt!2514404))) (h!74179 s!7408))))))

(declare-fun b!7025699 () Bool)

(declare-fun e!4223456 () (Set Context!12876))

(assert (=> b!7025699 (= e!4223456 call!637851)))

(declare-fun bm!637846 () Bool)

(assert (=> bm!637846 (= call!637851 (derivationStepZipperDown!2106 (h!74178 (exprs!6938 lt!2514404)) (Context!12877 (t!381611 (exprs!6938 lt!2514404))) (h!74179 s!7408)))))

(declare-fun b!7025700 () Bool)

(assert (=> b!7025700 (= e!4223456 (as set.empty (Set Context!12876)))))

(declare-fun b!7025701 () Bool)

(declare-fun e!4223458 () Bool)

(assert (=> b!7025701 (= e!4223458 (nullable!7153 (h!74178 (exprs!6938 lt!2514404))))))

(declare-fun b!7025702 () Bool)

(assert (=> b!7025702 (= e!4223457 e!4223456)))

(declare-fun c!1305956 () Bool)

(assert (=> b!7025702 (= c!1305956 (is-Cons!67730 (exprs!6938 lt!2514404)))))

(declare-fun d!2190283 () Bool)

(declare-fun c!1305957 () Bool)

(assert (=> d!2190283 (= c!1305957 e!4223458)))

(declare-fun res!2868053 () Bool)

(assert (=> d!2190283 (=> (not res!2868053) (not e!4223458))))

(assert (=> d!2190283 (= res!2868053 (is-Cons!67730 (exprs!6938 lt!2514404)))))

(assert (=> d!2190283 (= (derivationStepZipperUp!2052 lt!2514404 (h!74179 s!7408)) e!4223457)))

(assert (= (and d!2190283 res!2868053) b!7025701))

(assert (= (and d!2190283 c!1305957) b!7025698))

(assert (= (and d!2190283 (not c!1305957)) b!7025702))

(assert (= (and b!7025702 c!1305956) b!7025699))

(assert (= (and b!7025702 (not c!1305956)) b!7025700))

(assert (= (or b!7025698 b!7025699) bm!637846))

(declare-fun m!7728946 () Bool)

(assert (=> b!7025698 m!7728946))

(declare-fun m!7728948 () Bool)

(assert (=> bm!637846 m!7728948))

(declare-fun m!7728950 () Bool)

(assert (=> b!7025701 m!7728950))

(assert (=> b!7025579 d!2190283))

(declare-fun bs!1868588 () Bool)

(declare-fun d!2190285 () Bool)

(assert (= bs!1868588 (and d!2190285 b!7025574)))

(declare-fun lambda!412968 () Int)

(assert (=> bs!1868588 (= lambda!412968 lambda!412911)))

(assert (=> d!2190285 true))

(assert (=> d!2190285 (= (derivationStepZipper!2898 lt!2514391 (h!74179 s!7408)) (flatMap!2389 lt!2514391 lambda!412968))))

(declare-fun bs!1868589 () Bool)

(assert (= bs!1868589 d!2190285))

(declare-fun m!7728952 () Bool)

(assert (=> bs!1868589 m!7728952))

(assert (=> b!7025579 d!2190285))

(declare-fun d!2190287 () Bool)

(declare-fun dynLambda!27309 (Int Context!12876) (Set Context!12876))

(assert (=> d!2190287 (= (flatMap!2389 lt!2514391 lambda!412911) (dynLambda!27309 lambda!412911 lt!2514404))))

(declare-fun lt!2514528 () Unit!161547)

(declare-fun choose!53083 ((Set Context!12876) Context!12876 Int) Unit!161547)

(assert (=> d!2190287 (= lt!2514528 (choose!53083 lt!2514391 lt!2514404 lambda!412911))))

(assert (=> d!2190287 (= lt!2514391 (set.insert lt!2514404 (as set.empty (Set Context!12876))))))

(assert (=> d!2190287 (= (lemmaFlatMapOnSingletonSet!1903 lt!2514391 lt!2514404 lambda!412911) lt!2514528)))

(declare-fun b_lambda!265581 () Bool)

(assert (=> (not b_lambda!265581) (not d!2190287)))

(declare-fun bs!1868590 () Bool)

(assert (= bs!1868590 d!2190287))

(assert (=> bs!1868590 m!7728790))

(declare-fun m!7728954 () Bool)

(assert (=> bs!1868590 m!7728954))

(declare-fun m!7728956 () Bool)

(assert (=> bs!1868590 m!7728956))

(assert (=> bs!1868590 m!7728786))

(assert (=> b!7025579 d!2190287))

(assert (=> b!7025579 d!2190259))

(declare-fun d!2190289 () Bool)

(declare-fun c!1305960 () Bool)

(assert (=> d!2190289 (= c!1305960 (isEmpty!39494 (t!381612 s!7408)))))

(declare-fun e!4223459 () Bool)

(assert (=> d!2190289 (= (matchZipper!2982 lt!2514382 (t!381612 s!7408)) e!4223459)))

(declare-fun b!7025705 () Bool)

(assert (=> b!7025705 (= e!4223459 (nullableZipper!2563 lt!2514382))))

(declare-fun b!7025706 () Bool)

(assert (=> b!7025706 (= e!4223459 (matchZipper!2982 (derivationStepZipper!2898 lt!2514382 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))))))

(assert (= (and d!2190289 c!1305960) b!7025705))

(assert (= (and d!2190289 (not c!1305960)) b!7025706))

(assert (=> d!2190289 m!7728872))

(declare-fun m!7728958 () Bool)

(assert (=> b!7025705 m!7728958))

(assert (=> b!7025706 m!7728876))

(assert (=> b!7025706 m!7728876))

(declare-fun m!7728960 () Bool)

(assert (=> b!7025706 m!7728960))

(assert (=> b!7025706 m!7728880))

(assert (=> b!7025706 m!7728960))

(assert (=> b!7025706 m!7728880))

(declare-fun m!7728962 () Bool)

(assert (=> b!7025706 m!7728962))

(assert (=> b!7025576 d!2190289))

(declare-fun d!2190291 () Bool)

(declare-fun c!1305961 () Bool)

(assert (=> d!2190291 (= c!1305961 (isEmpty!39494 (t!381612 s!7408)))))

(declare-fun e!4223460 () Bool)

(assert (=> d!2190291 (= (matchZipper!2982 lt!2514380 (t!381612 s!7408)) e!4223460)))

(declare-fun b!7025707 () Bool)

(assert (=> b!7025707 (= e!4223460 (nullableZipper!2563 lt!2514380))))

(declare-fun b!7025708 () Bool)

(assert (=> b!7025708 (= e!4223460 (matchZipper!2982 (derivationStepZipper!2898 lt!2514380 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))))))

(assert (= (and d!2190291 c!1305961) b!7025707))

(assert (= (and d!2190291 (not c!1305961)) b!7025708))

(assert (=> d!2190291 m!7728872))

(declare-fun m!7728964 () Bool)

(assert (=> b!7025707 m!7728964))

(assert (=> b!7025708 m!7728876))

(assert (=> b!7025708 m!7728876))

(declare-fun m!7728966 () Bool)

(assert (=> b!7025708 m!7728966))

(assert (=> b!7025708 m!7728880))

(assert (=> b!7025708 m!7728966))

(assert (=> b!7025708 m!7728880))

(declare-fun m!7728968 () Bool)

(assert (=> b!7025708 m!7728968))

(assert (=> b!7025576 d!2190291))

(declare-fun d!2190293 () Bool)

(declare-fun c!1305962 () Bool)

(assert (=> d!2190293 (= c!1305962 (isEmpty!39494 (t!381612 s!7408)))))

(declare-fun e!4223461 () Bool)

(assert (=> d!2190293 (= (matchZipper!2982 lt!2514375 (t!381612 s!7408)) e!4223461)))

(declare-fun b!7025709 () Bool)

(assert (=> b!7025709 (= e!4223461 (nullableZipper!2563 lt!2514375))))

(declare-fun b!7025710 () Bool)

(assert (=> b!7025710 (= e!4223461 (matchZipper!2982 (derivationStepZipper!2898 lt!2514375 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))))))

(assert (= (and d!2190293 c!1305962) b!7025709))

(assert (= (and d!2190293 (not c!1305962)) b!7025710))

(assert (=> d!2190293 m!7728872))

(declare-fun m!7728970 () Bool)

(assert (=> b!7025709 m!7728970))

(assert (=> b!7025710 m!7728876))

(assert (=> b!7025710 m!7728876))

(declare-fun m!7728972 () Bool)

(assert (=> b!7025710 m!7728972))

(assert (=> b!7025710 m!7728880))

(assert (=> b!7025710 m!7728972))

(assert (=> b!7025710 m!7728880))

(declare-fun m!7728974 () Bool)

(assert (=> b!7025710 m!7728974))

(assert (=> b!7025576 d!2190293))

(declare-fun d!2190295 () Bool)

(declare-fun e!4223464 () Bool)

(assert (=> d!2190295 (= (matchZipper!2982 (set.union lt!2514380 lt!2514388) (t!381612 s!7408)) e!4223464)))

(declare-fun res!2868056 () Bool)

(assert (=> d!2190295 (=> res!2868056 e!4223464)))

(assert (=> d!2190295 (= res!2868056 (matchZipper!2982 lt!2514380 (t!381612 s!7408)))))

(declare-fun lt!2514531 () Unit!161547)

(declare-fun choose!53084 ((Set Context!12876) (Set Context!12876) List!67855) Unit!161547)

(assert (=> d!2190295 (= lt!2514531 (choose!53084 lt!2514380 lt!2514388 (t!381612 s!7408)))))

(assert (=> d!2190295 (= (lemmaZipperConcatMatchesSameAsBothZippers!1515 lt!2514380 lt!2514388 (t!381612 s!7408)) lt!2514531)))

(declare-fun b!7025713 () Bool)

(assert (=> b!7025713 (= e!4223464 (matchZipper!2982 lt!2514388 (t!381612 s!7408)))))

(assert (= (and d!2190295 (not res!2868056)) b!7025713))

(declare-fun m!7728976 () Bool)

(assert (=> d!2190295 m!7728976))

(assert (=> d!2190295 m!7728764))

(declare-fun m!7728978 () Bool)

(assert (=> d!2190295 m!7728978))

(assert (=> b!7025713 m!7728724))

(assert (=> b!7025576 d!2190295))

(assert (=> b!7025576 d!2190259))

(declare-fun bs!1868591 () Bool)

(declare-fun d!2190297 () Bool)

(assert (= bs!1868591 (and d!2190297 b!7025570)))

(declare-fun lambda!412969 () Int)

(assert (=> bs!1868591 (= lambda!412969 lambda!412910)))

(declare-fun bs!1868592 () Bool)

(assert (= bs!1868592 (and d!2190297 d!2190271)))

(assert (=> bs!1868592 (= lambda!412969 lambda!412965)))

(assert (=> d!2190297 (= (inv!86465 setElem!48973) (forall!16346 (exprs!6938 setElem!48973) lambda!412969))))

(declare-fun bs!1868593 () Bool)

(assert (= bs!1868593 d!2190297))

(declare-fun m!7728980 () Bool)

(assert (=> bs!1868593 m!7728980))

(assert (=> setNonEmpty!48973 d!2190297))

(assert (=> b!7025575 d!2190259))

(assert (=> b!7025575 d!2190283))

(declare-fun b!7025714 () Bool)

(declare-fun e!4223465 () List!67854)

(assert (=> b!7025714 (= e!4223465 (exprs!6938 ct2!306))))

(declare-fun lt!2514532 () List!67854)

(declare-fun b!7025717 () Bool)

(declare-fun e!4223466 () Bool)

(assert (=> b!7025717 (= e!4223466 (or (not (= (exprs!6938 ct2!306) Nil!67730)) (= lt!2514532 lt!2514374)))))

(declare-fun b!7025716 () Bool)

(declare-fun res!2868058 () Bool)

(assert (=> b!7025716 (=> (not res!2868058) (not e!4223466))))

(assert (=> b!7025716 (= res!2868058 (= (size!41041 lt!2514532) (+ (size!41041 lt!2514374) (size!41041 (exprs!6938 ct2!306)))))))

(declare-fun b!7025715 () Bool)

(assert (=> b!7025715 (= e!4223465 (Cons!67730 (h!74178 lt!2514374) (++!15475 (t!381611 lt!2514374) (exprs!6938 ct2!306))))))

(declare-fun d!2190299 () Bool)

(assert (=> d!2190299 e!4223466))

(declare-fun res!2868057 () Bool)

(assert (=> d!2190299 (=> (not res!2868057) (not e!4223466))))

(assert (=> d!2190299 (= res!2868057 (= (content!13496 lt!2514532) (set.union (content!13496 lt!2514374) (content!13496 (exprs!6938 ct2!306)))))))

(assert (=> d!2190299 (= lt!2514532 e!4223465)))

(declare-fun c!1305963 () Bool)

(assert (=> d!2190299 (= c!1305963 (is-Nil!67730 lt!2514374))))

(assert (=> d!2190299 (= (++!15475 lt!2514374 (exprs!6938 ct2!306)) lt!2514532)))

(assert (= (and d!2190299 c!1305963) b!7025714))

(assert (= (and d!2190299 (not c!1305963)) b!7025715))

(assert (= (and d!2190299 res!2868057) b!7025716))

(assert (= (and b!7025716 res!2868058) b!7025717))

(declare-fun m!7728982 () Bool)

(assert (=> b!7025716 m!7728982))

(declare-fun m!7728984 () Bool)

(assert (=> b!7025716 m!7728984))

(assert (=> b!7025716 m!7728918))

(declare-fun m!7728986 () Bool)

(assert (=> b!7025715 m!7728986))

(declare-fun m!7728988 () Bool)

(assert (=> d!2190299 m!7728988))

(declare-fun m!7728990 () Bool)

(assert (=> d!2190299 m!7728990))

(assert (=> d!2190299 m!7728926))

(assert (=> b!7025575 d!2190299))

(declare-fun b!7025741 () Bool)

(declare-fun c!1305976 () Bool)

(declare-fun e!4223484 () Bool)

(assert (=> b!7025741 (= c!1305976 e!4223484)))

(declare-fun res!2868061 () Bool)

(assert (=> b!7025741 (=> (not res!2868061) (not e!4223484))))

(assert (=> b!7025741 (= res!2868061 (is-Concat!26287 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun e!4223480 () (Set Context!12876))

(declare-fun e!4223482 () (Set Context!12876))

(assert (=> b!7025741 (= e!4223480 e!4223482)))

(declare-fun bm!637859 () Bool)

(declare-fun call!637867 () (Set Context!12876))

(declare-fun call!637869 () (Set Context!12876))

(assert (=> bm!637859 (= call!637867 call!637869)))

(declare-fun bm!637860 () Bool)

(declare-fun call!637868 () List!67854)

(declare-fun call!637866 () (Set Context!12876))

(declare-fun c!1305978 () Bool)

(declare-fun c!1305977 () Bool)

(assert (=> bm!637860 (= call!637866 (derivationStepZipperDown!2106 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385)))))) (ite (or c!1305977 c!1305976) lt!2514404 (Context!12877 call!637868)) (h!74179 s!7408)))))

(declare-fun b!7025742 () Bool)

(declare-fun c!1305974 () Bool)

(assert (=> b!7025742 (= c!1305974 (is-Star!17442 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun e!4223481 () (Set Context!12876))

(declare-fun e!4223479 () (Set Context!12876))

(assert (=> b!7025742 (= e!4223481 e!4223479)))

(declare-fun b!7025743 () Bool)

(assert (=> b!7025743 (= e!4223479 call!637867)))

(declare-fun d!2190301 () Bool)

(declare-fun c!1305975 () Bool)

(assert (=> d!2190301 (= c!1305975 (and (is-ElementMatch!17442 (h!74178 (exprs!6938 lt!2514385))) (= (c!1305931 (h!74178 (exprs!6938 lt!2514385))) (h!74179 s!7408))))))

(declare-fun e!4223483 () (Set Context!12876))

(assert (=> d!2190301 (= (derivationStepZipperDown!2106 (h!74178 (exprs!6938 lt!2514385)) lt!2514404 (h!74179 s!7408)) e!4223483)))

(declare-fun b!7025740 () Bool)

(assert (=> b!7025740 (= e!4223479 (as set.empty (Set Context!12876)))))

(declare-fun bm!637861 () Bool)

(declare-fun call!637865 () List!67854)

(declare-fun $colon$colon!2558 (List!67854 Regex!17442) List!67854)

(assert (=> bm!637861 (= call!637865 ($colon$colon!2558 (exprs!6938 lt!2514404) (ite (or c!1305976 c!1305978) (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (h!74178 (exprs!6938 lt!2514385)))))))

(declare-fun bm!637862 () Bool)

(assert (=> bm!637862 (= call!637868 call!637865)))

(declare-fun b!7025744 () Bool)

(declare-fun call!637864 () (Set Context!12876))

(assert (=> b!7025744 (= e!4223482 (set.union call!637864 call!637869))))

(declare-fun b!7025745 () Bool)

(assert (=> b!7025745 (= e!4223481 call!637867)))

(declare-fun b!7025746 () Bool)

(assert (=> b!7025746 (= e!4223484 (nullable!7153 (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))))))

(declare-fun bm!637863 () Bool)

(assert (=> bm!637863 (= call!637864 (derivationStepZipperDown!2106 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))) (ite c!1305977 lt!2514404 (Context!12877 call!637865)) (h!74179 s!7408)))))

(declare-fun bm!637864 () Bool)

(assert (=> bm!637864 (= call!637869 call!637866)))

(declare-fun b!7025747 () Bool)

(assert (=> b!7025747 (= e!4223483 e!4223480)))

(assert (=> b!7025747 (= c!1305977 (is-Union!17442 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun b!7025748 () Bool)

(assert (=> b!7025748 (= e!4223480 (set.union call!637864 call!637866))))

(declare-fun b!7025749 () Bool)

(assert (=> b!7025749 (= e!4223483 (set.insert lt!2514404 (as set.empty (Set Context!12876))))))

(declare-fun b!7025750 () Bool)

(assert (=> b!7025750 (= e!4223482 e!4223481)))

(assert (=> b!7025750 (= c!1305978 (is-Concat!26287 (h!74178 (exprs!6938 lt!2514385))))))

(assert (= (and d!2190301 c!1305975) b!7025749))

(assert (= (and d!2190301 (not c!1305975)) b!7025747))

(assert (= (and b!7025747 c!1305977) b!7025748))

(assert (= (and b!7025747 (not c!1305977)) b!7025741))

(assert (= (and b!7025741 res!2868061) b!7025746))

(assert (= (and b!7025741 c!1305976) b!7025744))

(assert (= (and b!7025741 (not c!1305976)) b!7025750))

(assert (= (and b!7025750 c!1305978) b!7025745))

(assert (= (and b!7025750 (not c!1305978)) b!7025742))

(assert (= (and b!7025742 c!1305974) b!7025743))

(assert (= (and b!7025742 (not c!1305974)) b!7025740))

(assert (= (or b!7025745 b!7025743) bm!637862))

(assert (= (or b!7025745 b!7025743) bm!637859))

(assert (= (or b!7025744 bm!637859) bm!637864))

(assert (= (or b!7025744 bm!637862) bm!637861))

(assert (= (or b!7025748 b!7025744) bm!637863))

(assert (= (or b!7025748 bm!637864) bm!637860))

(declare-fun m!7728992 () Bool)

(assert (=> b!7025746 m!7728992))

(declare-fun m!7728994 () Bool)

(assert (=> bm!637860 m!7728994))

(declare-fun m!7728996 () Bool)

(assert (=> bm!637863 m!7728996))

(assert (=> b!7025749 m!7728786))

(declare-fun m!7728998 () Bool)

(assert (=> bm!637861 m!7728998))

(assert (=> b!7025575 d!2190301))

(assert (=> b!7025577 d!2190277))

(declare-fun d!2190303 () Bool)

(declare-fun c!1305979 () Bool)

(assert (=> d!2190303 (= c!1305979 (isEmpty!39494 s!7408))))

(declare-fun e!4223485 () Bool)

(assert (=> d!2190303 (= (matchZipper!2982 lt!2514393 s!7408) e!4223485)))

(declare-fun b!7025751 () Bool)

(assert (=> b!7025751 (= e!4223485 (nullableZipper!2563 lt!2514393))))

(declare-fun b!7025752 () Bool)

(assert (=> b!7025752 (= e!4223485 (matchZipper!2982 (derivationStepZipper!2898 lt!2514393 (head!14239 s!7408)) (tail!13515 s!7408)))))

(assert (= (and d!2190303 c!1305979) b!7025751))

(assert (= (and d!2190303 (not c!1305979)) b!7025752))

(assert (=> d!2190303 m!7728892))

(declare-fun m!7729000 () Bool)

(assert (=> b!7025751 m!7729000))

(assert (=> b!7025752 m!7728896))

(assert (=> b!7025752 m!7728896))

(declare-fun m!7729002 () Bool)

(assert (=> b!7025752 m!7729002))

(assert (=> b!7025752 m!7728900))

(assert (=> b!7025752 m!7729002))

(assert (=> b!7025752 m!7728900))

(declare-fun m!7729004 () Bool)

(assert (=> b!7025752 m!7729004))

(assert (=> b!7025584 d!2190303))

(declare-fun d!2190305 () Bool)

(declare-fun e!4223488 () Bool)

(assert (=> d!2190305 e!4223488))

(declare-fun res!2868064 () Bool)

(assert (=> d!2190305 (=> (not res!2868064) (not e!4223488))))

(declare-fun lt!2514535 () Context!12876)

(declare-fun dynLambda!27310 (Int Context!12876) Bool)

(assert (=> d!2190305 (= res!2868064 (dynLambda!27310 lambda!412908 lt!2514535))))

(declare-fun getWitness!1435 (List!67856 Int) Context!12876)

(assert (=> d!2190305 (= lt!2514535 (getWitness!1435 (toList!10785 lt!2514386) lambda!412908))))

(declare-fun exists!3354 ((Set Context!12876) Int) Bool)

(assert (=> d!2190305 (exists!3354 lt!2514386 lambda!412908)))

(assert (=> d!2190305 (= (getWitness!1433 lt!2514386 lambda!412908) lt!2514535)))

(declare-fun b!7025755 () Bool)

(assert (=> b!7025755 (= e!4223488 (set.member lt!2514535 lt!2514386))))

(assert (= (and d!2190305 res!2868064) b!7025755))

(declare-fun b_lambda!265583 () Bool)

(assert (=> (not b_lambda!265583) (not d!2190305)))

(declare-fun m!7729006 () Bool)

(assert (=> d!2190305 m!7729006))

(assert (=> d!2190305 m!7728780))

(assert (=> d!2190305 m!7728780))

(declare-fun m!7729008 () Bool)

(assert (=> d!2190305 m!7729008))

(declare-fun m!7729010 () Bool)

(assert (=> d!2190305 m!7729010))

(declare-fun m!7729012 () Bool)

(assert (=> b!7025755 m!7729012))

(assert (=> b!7025584 d!2190305))

(declare-fun bs!1868594 () Bool)

(declare-fun d!2190307 () Bool)

(assert (= bs!1868594 (and d!2190307 b!7025584)))

(declare-fun lambda!412972 () Int)

(assert (=> bs!1868594 (= lambda!412972 lambda!412908)))

(assert (=> d!2190307 true))

(assert (=> d!2190307 (exists!3352 lt!2514376 lambda!412972)))

(declare-fun lt!2514538 () Unit!161547)

(declare-fun choose!53085 (List!67856 List!67855) Unit!161547)

(assert (=> d!2190307 (= lt!2514538 (choose!53085 lt!2514376 s!7408))))

(declare-fun content!13497 (List!67856) (Set Context!12876))

(assert (=> d!2190307 (matchZipper!2982 (content!13497 lt!2514376) s!7408)))

(assert (=> d!2190307 (= (lemmaZipperMatchesExistsMatchingContext!381 lt!2514376 s!7408) lt!2514538)))

(declare-fun bs!1868595 () Bool)

(assert (= bs!1868595 d!2190307))

(declare-fun m!7729014 () Bool)

(assert (=> bs!1868595 m!7729014))

(declare-fun m!7729016 () Bool)

(assert (=> bs!1868595 m!7729016))

(declare-fun m!7729018 () Bool)

(assert (=> bs!1868595 m!7729018))

(assert (=> bs!1868595 m!7729018))

(declare-fun m!7729020 () Bool)

(assert (=> bs!1868595 m!7729020))

(assert (=> b!7025584 d!2190307))

(declare-fun bs!1868596 () Bool)

(declare-fun d!2190309 () Bool)

(assert (= bs!1868596 (and d!2190309 b!7025584)))

(declare-fun lambda!412975 () Int)

(assert (=> bs!1868596 (not (= lambda!412975 lambda!412908))))

(declare-fun bs!1868597 () Bool)

(assert (= bs!1868597 (and d!2190309 d!2190307)))

(assert (=> bs!1868597 (not (= lambda!412975 lambda!412972))))

(assert (=> d!2190309 true))

(declare-fun order!28141 () Int)

(declare-fun dynLambda!27311 (Int Int) Int)

(assert (=> d!2190309 (< (dynLambda!27311 order!28141 lambda!412908) (dynLambda!27311 order!28141 lambda!412975))))

(declare-fun forall!16347 (List!67856 Int) Bool)

(assert (=> d!2190309 (= (exists!3352 lt!2514376 lambda!412908) (not (forall!16347 lt!2514376 lambda!412975)))))

(declare-fun bs!1868598 () Bool)

(assert (= bs!1868598 d!2190309))

(declare-fun m!7729022 () Bool)

(assert (=> bs!1868598 m!7729022))

(assert (=> b!7025584 d!2190309))

(declare-fun d!2190311 () Bool)

(declare-fun e!4223491 () Bool)

(assert (=> d!2190311 e!4223491))

(declare-fun res!2868067 () Bool)

(assert (=> d!2190311 (=> (not res!2868067) (not e!4223491))))

(declare-fun lt!2514541 () List!67856)

(declare-fun noDuplicate!2612 (List!67856) Bool)

(assert (=> d!2190311 (= res!2868067 (noDuplicate!2612 lt!2514541))))

(declare-fun choose!53086 ((Set Context!12876)) List!67856)

(assert (=> d!2190311 (= lt!2514541 (choose!53086 lt!2514386))))

(assert (=> d!2190311 (= (toList!10785 lt!2514386) lt!2514541)))

(declare-fun b!7025760 () Bool)

(assert (=> b!7025760 (= e!4223491 (= (content!13497 lt!2514541) lt!2514386))))

(assert (= (and d!2190311 res!2868067) b!7025760))

(declare-fun m!7729024 () Bool)

(assert (=> d!2190311 m!7729024))

(declare-fun m!7729026 () Bool)

(assert (=> d!2190311 m!7729026))

(declare-fun m!7729028 () Bool)

(assert (=> b!7025760 m!7729028))

(assert (=> b!7025584 d!2190311))

(assert (=> b!7025573 d!2190257))

(declare-fun bs!1868599 () Bool)

(declare-fun d!2190313 () Bool)

(assert (= bs!1868599 (and d!2190313 b!7025574)))

(declare-fun lambda!412976 () Int)

(assert (=> bs!1868599 (= lambda!412976 lambda!412911)))

(declare-fun bs!1868600 () Bool)

(assert (= bs!1868600 (and d!2190313 d!2190285)))

(assert (=> bs!1868600 (= lambda!412976 lambda!412968)))

(assert (=> d!2190313 true))

(assert (=> d!2190313 (= (derivationStepZipper!2898 lt!2514401 (h!74179 s!7408)) (flatMap!2389 lt!2514401 lambda!412976))))

(declare-fun bs!1868601 () Bool)

(assert (= bs!1868601 d!2190313))

(declare-fun m!7729030 () Bool)

(assert (=> bs!1868601 m!7729030))

(assert (=> b!7025574 d!2190313))

(declare-fun b!7025761 () Bool)

(declare-fun call!637870 () (Set Context!12876))

(declare-fun e!4223493 () (Set Context!12876))

(assert (=> b!7025761 (= e!4223493 (set.union call!637870 (derivationStepZipperUp!2052 (Context!12877 (t!381611 (exprs!6938 lt!2514383))) (h!74179 s!7408))))))

(declare-fun b!7025762 () Bool)

(declare-fun e!4223492 () (Set Context!12876))

(assert (=> b!7025762 (= e!4223492 call!637870)))

(declare-fun bm!637865 () Bool)

(assert (=> bm!637865 (= call!637870 (derivationStepZipperDown!2106 (h!74178 (exprs!6938 lt!2514383)) (Context!12877 (t!381611 (exprs!6938 lt!2514383))) (h!74179 s!7408)))))

(declare-fun b!7025763 () Bool)

(assert (=> b!7025763 (= e!4223492 (as set.empty (Set Context!12876)))))

(declare-fun b!7025764 () Bool)

(declare-fun e!4223494 () Bool)

(assert (=> b!7025764 (= e!4223494 (nullable!7153 (h!74178 (exprs!6938 lt!2514383))))))

(declare-fun b!7025765 () Bool)

(assert (=> b!7025765 (= e!4223493 e!4223492)))

(declare-fun c!1305982 () Bool)

(assert (=> b!7025765 (= c!1305982 (is-Cons!67730 (exprs!6938 lt!2514383)))))

(declare-fun d!2190315 () Bool)

(declare-fun c!1305983 () Bool)

(assert (=> d!2190315 (= c!1305983 e!4223494)))

(declare-fun res!2868068 () Bool)

(assert (=> d!2190315 (=> (not res!2868068) (not e!4223494))))

(assert (=> d!2190315 (= res!2868068 (is-Cons!67730 (exprs!6938 lt!2514383)))))

(assert (=> d!2190315 (= (derivationStepZipperUp!2052 lt!2514383 (h!74179 s!7408)) e!4223493)))

(assert (= (and d!2190315 res!2868068) b!7025764))

(assert (= (and d!2190315 c!1305983) b!7025761))

(assert (= (and d!2190315 (not c!1305983)) b!7025765))

(assert (= (and b!7025765 c!1305982) b!7025762))

(assert (= (and b!7025765 (not c!1305982)) b!7025763))

(assert (= (or b!7025761 b!7025762) bm!637865))

(declare-fun m!7729032 () Bool)

(assert (=> b!7025761 m!7729032))

(declare-fun m!7729034 () Bool)

(assert (=> bm!637865 m!7729034))

(declare-fun m!7729036 () Bool)

(assert (=> b!7025764 m!7729036))

(assert (=> b!7025574 d!2190315))

(assert (=> b!7025574 d!2190277))

(declare-fun d!2190317 () Bool)

(assert (=> d!2190317 (= (flatMap!2389 lt!2514401 lambda!412911) (dynLambda!27309 lambda!412911 lt!2514383))))

(declare-fun lt!2514542 () Unit!161547)

(assert (=> d!2190317 (= lt!2514542 (choose!53083 lt!2514401 lt!2514383 lambda!412911))))

(assert (=> d!2190317 (= lt!2514401 (set.insert lt!2514383 (as set.empty (Set Context!12876))))))

(assert (=> d!2190317 (= (lemmaFlatMapOnSingletonSet!1903 lt!2514401 lt!2514383 lambda!412911) lt!2514542)))

(declare-fun b_lambda!265585 () Bool)

(assert (=> (not b_lambda!265585) (not d!2190317)))

(declare-fun bs!1868602 () Bool)

(assert (= bs!1868602 d!2190317))

(assert (=> bs!1868602 m!7728744))

(declare-fun m!7729038 () Bool)

(assert (=> bs!1868602 m!7729038))

(declare-fun m!7729040 () Bool)

(assert (=> bs!1868602 m!7729040))

(assert (=> bs!1868602 m!7728766))

(assert (=> b!7025574 d!2190317))

(declare-fun d!2190319 () Bool)

(assert (=> d!2190319 (= (flatMap!2389 lt!2514401 lambda!412911) (choose!53082 lt!2514401 lambda!412911))))

(declare-fun bs!1868603 () Bool)

(assert (= bs!1868603 d!2190319))

(declare-fun m!7729042 () Bool)

(assert (=> bs!1868603 m!7729042))

(assert (=> b!7025574 d!2190319))

(declare-fun condSetEmpty!48979 () Bool)

(assert (=> setNonEmpty!48973 (= condSetEmpty!48979 (= setRest!48973 (as set.empty (Set Context!12876))))))

(declare-fun setRes!48979 () Bool)

(assert (=> setNonEmpty!48973 (= tp!1935431 setRes!48979)))

(declare-fun setIsEmpty!48979 () Bool)

(assert (=> setIsEmpty!48979 setRes!48979))

(declare-fun setNonEmpty!48979 () Bool)

(declare-fun setElem!48979 () Context!12876)

(declare-fun tp!1935450 () Bool)

(declare-fun e!4223497 () Bool)

(assert (=> setNonEmpty!48979 (= setRes!48979 (and tp!1935450 (inv!86465 setElem!48979) e!4223497))))

(declare-fun setRest!48979 () (Set Context!12876))

(assert (=> setNonEmpty!48979 (= setRest!48973 (set.union (set.insert setElem!48979 (as set.empty (Set Context!12876))) setRest!48979))))

(declare-fun b!7025770 () Bool)

(declare-fun tp!1935451 () Bool)

(assert (=> b!7025770 (= e!4223497 tp!1935451)))

(assert (= (and setNonEmpty!48973 condSetEmpty!48979) setIsEmpty!48979))

(assert (= (and setNonEmpty!48973 (not condSetEmpty!48979)) setNonEmpty!48979))

(assert (= setNonEmpty!48979 b!7025770))

(declare-fun m!7729044 () Bool)

(assert (=> setNonEmpty!48979 m!7729044))

(declare-fun b!7025775 () Bool)

(declare-fun e!4223500 () Bool)

(declare-fun tp!1935456 () Bool)

(declare-fun tp!1935457 () Bool)

(assert (=> b!7025775 (= e!4223500 (and tp!1935456 tp!1935457))))

(assert (=> b!7025586 (= tp!1935432 e!4223500)))

(assert (= (and b!7025586 (is-Cons!67730 (exprs!6938 setElem!48973))) b!7025775))

(declare-fun b!7025780 () Bool)

(declare-fun e!4223503 () Bool)

(declare-fun tp!1935460 () Bool)

(assert (=> b!7025780 (= e!4223503 (and tp_is_empty!44109 tp!1935460))))

(assert (=> b!7025585 (= tp!1935430 e!4223503)))

(assert (= (and b!7025585 (is-Cons!67731 (t!381612 s!7408))) b!7025780))

(declare-fun b!7025781 () Bool)

(declare-fun e!4223504 () Bool)

(declare-fun tp!1935461 () Bool)

(declare-fun tp!1935462 () Bool)

(assert (=> b!7025781 (= e!4223504 (and tp!1935461 tp!1935462))))

(assert (=> b!7025589 (= tp!1935433 e!4223504)))

(assert (= (and b!7025589 (is-Cons!67730 (exprs!6938 ct2!306))) b!7025781))

(declare-fun b_lambda!265587 () Bool)

(assert (= b_lambda!265583 (or b!7025584 b_lambda!265587)))

(declare-fun bs!1868604 () Bool)

(declare-fun d!2190321 () Bool)

(assert (= bs!1868604 (and d!2190321 b!7025584)))

(assert (=> bs!1868604 (= (dynLambda!27310 lambda!412908 lt!2514535) (matchZipper!2982 (set.insert lt!2514535 (as set.empty (Set Context!12876))) s!7408))))

(declare-fun m!7729046 () Bool)

(assert (=> bs!1868604 m!7729046))

(assert (=> bs!1868604 m!7729046))

(declare-fun m!7729048 () Bool)

(assert (=> bs!1868604 m!7729048))

(assert (=> d!2190305 d!2190321))

(declare-fun b_lambda!265589 () Bool)

(assert (= b_lambda!265585 (or b!7025574 b_lambda!265589)))

(declare-fun bs!1868605 () Bool)

(declare-fun d!2190323 () Bool)

(assert (= bs!1868605 (and d!2190323 b!7025574)))

(assert (=> bs!1868605 (= (dynLambda!27309 lambda!412911 lt!2514383) (derivationStepZipperUp!2052 lt!2514383 (h!74179 s!7408)))))

(assert (=> bs!1868605 m!7728746))

(assert (=> d!2190317 d!2190323))

(declare-fun b_lambda!265591 () Bool)

(assert (= b_lambda!265581 (or b!7025574 b_lambda!265591)))

(declare-fun bs!1868606 () Bool)

(declare-fun d!2190325 () Bool)

(assert (= bs!1868606 (and d!2190325 b!7025574)))

(assert (=> bs!1868606 (= (dynLambda!27309 lambda!412911 lt!2514404) (derivationStepZipperUp!2052 lt!2514404 (h!74179 s!7408)))))

(assert (=> bs!1868606 m!7728784))

(assert (=> d!2190287 d!2190325))

(declare-fun b_lambda!265593 () Bool)

(assert (= b_lambda!265579 (or b!7025570 b_lambda!265593)))

(declare-fun bs!1868607 () Bool)

(declare-fun d!2190327 () Bool)

(assert (= bs!1868607 (and d!2190327 b!7025570)))

(declare-fun lt!2514543 () Unit!161547)

(assert (=> bs!1868607 (= lt!2514543 (lemmaConcatPreservesForall!763 (exprs!6938 lt!2514525) (exprs!6938 ct2!306) lambda!412910))))

(assert (=> bs!1868607 (= (dynLambda!27308 lambda!412909 lt!2514525) (Context!12877 (++!15475 (exprs!6938 lt!2514525) (exprs!6938 ct2!306))))))

(declare-fun m!7729050 () Bool)

(assert (=> bs!1868607 m!7729050))

(declare-fun m!7729052 () Bool)

(assert (=> bs!1868607 m!7729052))

(assert (=> d!2190279 d!2190327))

(push 1)

(assert (not b!7025713))

(assert (not d!2190307))

(assert (not b!7025682))

(assert (not b!7025751))

(assert (not bm!637863))

(assert (not bs!1868607))

(assert (not b!7025780))

(assert (not d!2190317))

(assert (not bs!1868606))

(assert tp_is_empty!44109)

(assert (not b!7025681))

(assert (not d!2190309))

(assert (not d!2190265))

(assert (not d!2190297))

(assert (not b!7025746))

(assert (not bm!637861))

(assert (not d!2190275))

(assert (not d!2190299))

(assert (not d!2190287))

(assert (not d!2190271))

(assert (not d!2190311))

(assert (not b!7025709))

(assert (not b!7025701))

(assert (not d!2190291))

(assert (not d!2190303))

(assert (not b_lambda!265589))

(assert (not b!7025671))

(assert (not b!7025707))

(assert (not b!7025706))

(assert (not b!7025668))

(assert (not b!7025764))

(assert (not bm!637865))

(assert (not d!2190269))

(assert (not b_lambda!265593))

(assert (not bm!637860))

(assert (not b!7025781))

(assert (not b!7025760))

(assert (not b!7025698))

(assert (not bs!1868604))

(assert (not b!7025666))

(assert (not d!2190261))

(assert (not b!7025716))

(assert (not b!7025710))

(assert (not b!7025708))

(assert (not b_lambda!265591))

(assert (not b!7025761))

(assert (not b!7025670))

(assert (not b!7025669))

(assert (not d!2190293))

(assert (not d!2190281))

(assert (not b_lambda!265587))

(assert (not bm!637846))

(assert (not d!2190277))

(assert (not bs!1868605))

(assert (not d!2190285))

(assert (not setNonEmpty!48979))

(assert (not d!2190257))

(assert (not b!7025715))

(assert (not d!2190313))

(assert (not d!2190305))

(assert (not b!7025775))

(assert (not b!7025705))

(assert (not b!7025770))

(assert (not d!2190279))

(assert (not b!7025752))

(assert (not b!7025667))

(assert (not d!2190295))

(assert (not d!2190267))

(assert (not d!2190289))

(assert (not d!2190319))

(assert (not d!2190259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2190401 () Bool)

(assert (=> d!2190401 true))

(declare-fun setRes!48985 () Bool)

(assert (=> d!2190401 setRes!48985))

(declare-fun condSetEmpty!48985 () Bool)

(declare-fun res!2868099 () (Set Context!12876))

(assert (=> d!2190401 (= condSetEmpty!48985 (= res!2868099 (as set.empty (Set Context!12876))))))

(assert (=> d!2190401 (= (choose!53082 lt!2514391 lambda!412911) res!2868099)))

(declare-fun setIsEmpty!48985 () Bool)

(assert (=> setIsEmpty!48985 setRes!48985))

(declare-fun setElem!48985 () Context!12876)

(declare-fun tp!1935484 () Bool)

(declare-fun e!4223576 () Bool)

(declare-fun setNonEmpty!48985 () Bool)

(assert (=> setNonEmpty!48985 (= setRes!48985 (and tp!1935484 (inv!86465 setElem!48985) e!4223576))))

(declare-fun setRest!48985 () (Set Context!12876))

(assert (=> setNonEmpty!48985 (= res!2868099 (set.union (set.insert setElem!48985 (as set.empty (Set Context!12876))) setRest!48985))))

(declare-fun b!7025904 () Bool)

(declare-fun tp!1935485 () Bool)

(assert (=> b!7025904 (= e!4223576 tp!1935485)))

(assert (= (and d!2190401 condSetEmpty!48985) setIsEmpty!48985))

(assert (= (and d!2190401 (not condSetEmpty!48985)) setNonEmpty!48985))

(assert (= setNonEmpty!48985 b!7025904))

(declare-fun m!7729236 () Bool)

(assert (=> setNonEmpty!48985 m!7729236))

(assert (=> d!2190281 d!2190401))

(declare-fun d!2190403 () Bool)

(declare-fun res!2868104 () Bool)

(declare-fun e!4223581 () Bool)

(assert (=> d!2190403 (=> res!2868104 e!4223581)))

(assert (=> d!2190403 (= res!2868104 (is-Nil!67730 (++!15475 lt!2514374 (exprs!6938 ct2!306))))))

(assert (=> d!2190403 (= (forall!16346 (++!15475 lt!2514374 (exprs!6938 ct2!306)) lambda!412910) e!4223581)))

(declare-fun b!7025909 () Bool)

(declare-fun e!4223582 () Bool)

(assert (=> b!7025909 (= e!4223581 e!4223582)))

(declare-fun res!2868105 () Bool)

(assert (=> b!7025909 (=> (not res!2868105) (not e!4223582))))

(declare-fun dynLambda!27316 (Int Regex!17442) Bool)

(assert (=> b!7025909 (= res!2868105 (dynLambda!27316 lambda!412910 (h!74178 (++!15475 lt!2514374 (exprs!6938 ct2!306)))))))

(declare-fun b!7025910 () Bool)

(assert (=> b!7025910 (= e!4223582 (forall!16346 (t!381611 (++!15475 lt!2514374 (exprs!6938 ct2!306))) lambda!412910))))

(assert (= (and d!2190403 (not res!2868104)) b!7025909))

(assert (= (and b!7025909 res!2868105) b!7025910))

(declare-fun b_lambda!265611 () Bool)

(assert (=> (not b_lambda!265611) (not b!7025909)))

(declare-fun m!7729238 () Bool)

(assert (=> b!7025909 m!7729238))

(declare-fun m!7729240 () Bool)

(assert (=> b!7025910 m!7729240))

(assert (=> d!2190259 d!2190403))

(assert (=> d!2190259 d!2190299))

(declare-fun d!2190405 () Bool)

(assert (=> d!2190405 (forall!16346 (++!15475 lt!2514374 (exprs!6938 ct2!306)) lambda!412910)))

(assert (=> d!2190405 true))

(declare-fun _$78!549 () Unit!161547)

(assert (=> d!2190405 (= (choose!53080 lt!2514374 (exprs!6938 ct2!306) lambda!412910) _$78!549)))

(declare-fun bs!1868636 () Bool)

(assert (= bs!1868636 d!2190405))

(assert (=> bs!1868636 m!7728794))

(assert (=> bs!1868636 m!7728794))

(assert (=> bs!1868636 m!7728884))

(assert (=> d!2190259 d!2190405))

(declare-fun d!2190407 () Bool)

(declare-fun res!2868106 () Bool)

(declare-fun e!4223583 () Bool)

(assert (=> d!2190407 (=> res!2868106 e!4223583)))

(assert (=> d!2190407 (= res!2868106 (is-Nil!67730 lt!2514374))))

(assert (=> d!2190407 (= (forall!16346 lt!2514374 lambda!412910) e!4223583)))

(declare-fun b!7025911 () Bool)

(declare-fun e!4223584 () Bool)

(assert (=> b!7025911 (= e!4223583 e!4223584)))

(declare-fun res!2868107 () Bool)

(assert (=> b!7025911 (=> (not res!2868107) (not e!4223584))))

(assert (=> b!7025911 (= res!2868107 (dynLambda!27316 lambda!412910 (h!74178 lt!2514374)))))

(declare-fun b!7025912 () Bool)

(assert (=> b!7025912 (= e!4223584 (forall!16346 (t!381611 lt!2514374) lambda!412910))))

(assert (= (and d!2190407 (not res!2868106)) b!7025911))

(assert (= (and b!7025911 res!2868107) b!7025912))

(declare-fun b_lambda!265613 () Bool)

(assert (=> (not b_lambda!265613) (not b!7025911)))

(declare-fun m!7729242 () Bool)

(assert (=> b!7025911 m!7729242))

(declare-fun m!7729244 () Bool)

(assert (=> b!7025912 m!7729244))

(assert (=> d!2190259 d!2190407))

(declare-fun d!2190409 () Bool)

(declare-fun c!1306025 () Bool)

(assert (=> d!2190409 (= c!1306025 (isEmpty!39494 (tail!13515 (t!381612 s!7408))))))

(declare-fun e!4223585 () Bool)

(assert (=> d!2190409 (= (matchZipper!2982 (derivationStepZipper!2898 lt!2514382 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))) e!4223585)))

(declare-fun b!7025913 () Bool)

(assert (=> b!7025913 (= e!4223585 (nullableZipper!2563 (derivationStepZipper!2898 lt!2514382 (head!14239 (t!381612 s!7408)))))))

(declare-fun b!7025914 () Bool)

(assert (=> b!7025914 (= e!4223585 (matchZipper!2982 (derivationStepZipper!2898 (derivationStepZipper!2898 lt!2514382 (head!14239 (t!381612 s!7408))) (head!14239 (tail!13515 (t!381612 s!7408)))) (tail!13515 (tail!13515 (t!381612 s!7408)))))))

(assert (= (and d!2190409 c!1306025) b!7025913))

(assert (= (and d!2190409 (not c!1306025)) b!7025914))

(assert (=> d!2190409 m!7728880))

(declare-fun m!7729246 () Bool)

(assert (=> d!2190409 m!7729246))

(assert (=> b!7025913 m!7728960))

(declare-fun m!7729248 () Bool)

(assert (=> b!7025913 m!7729248))

(assert (=> b!7025914 m!7728880))

(declare-fun m!7729250 () Bool)

(assert (=> b!7025914 m!7729250))

(assert (=> b!7025914 m!7728960))

(assert (=> b!7025914 m!7729250))

(declare-fun m!7729252 () Bool)

(assert (=> b!7025914 m!7729252))

(assert (=> b!7025914 m!7728880))

(declare-fun m!7729254 () Bool)

(assert (=> b!7025914 m!7729254))

(assert (=> b!7025914 m!7729252))

(assert (=> b!7025914 m!7729254))

(declare-fun m!7729256 () Bool)

(assert (=> b!7025914 m!7729256))

(assert (=> b!7025706 d!2190409))

(declare-fun bs!1868637 () Bool)

(declare-fun d!2190411 () Bool)

(assert (= bs!1868637 (and d!2190411 b!7025574)))

(declare-fun lambda!412996 () Int)

(assert (=> bs!1868637 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!412996 lambda!412911))))

(declare-fun bs!1868638 () Bool)

(assert (= bs!1868638 (and d!2190411 d!2190285)))

(assert (=> bs!1868638 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!412996 lambda!412968))))

(declare-fun bs!1868639 () Bool)

(assert (= bs!1868639 (and d!2190411 d!2190313)))

(assert (=> bs!1868639 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!412996 lambda!412976))))

(assert (=> d!2190411 true))

(assert (=> d!2190411 (= (derivationStepZipper!2898 lt!2514382 (head!14239 (t!381612 s!7408))) (flatMap!2389 lt!2514382 lambda!412996))))

(declare-fun bs!1868640 () Bool)

(assert (= bs!1868640 d!2190411))

(declare-fun m!7729258 () Bool)

(assert (=> bs!1868640 m!7729258))

(assert (=> b!7025706 d!2190411))

(declare-fun d!2190413 () Bool)

(assert (=> d!2190413 (= (head!14239 (t!381612 s!7408)) (h!74179 (t!381612 s!7408)))))

(assert (=> b!7025706 d!2190413))

(declare-fun d!2190415 () Bool)

(assert (=> d!2190415 (= (tail!13515 (t!381612 s!7408)) (t!381612 (t!381612 s!7408)))))

(assert (=> b!7025706 d!2190415))

(assert (=> d!2190317 d!2190319))

(declare-fun d!2190417 () Bool)

(assert (=> d!2190417 (= (flatMap!2389 lt!2514401 lambda!412911) (dynLambda!27309 lambda!412911 lt!2514383))))

(assert (=> d!2190417 true))

(declare-fun _$13!4436 () Unit!161547)

(assert (=> d!2190417 (= (choose!53083 lt!2514401 lt!2514383 lambda!412911) _$13!4436)))

(declare-fun b_lambda!265615 () Bool)

(assert (=> (not b_lambda!265615) (not d!2190417)))

(declare-fun bs!1868641 () Bool)

(assert (= bs!1868641 d!2190417))

(assert (=> bs!1868641 m!7728744))

(assert (=> bs!1868641 m!7729038))

(assert (=> d!2190317 d!2190417))

(assert (=> d!2190287 d!2190281))

(declare-fun d!2190419 () Bool)

(assert (=> d!2190419 (= (flatMap!2389 lt!2514391 lambda!412911) (dynLambda!27309 lambda!412911 lt!2514404))))

(assert (=> d!2190419 true))

(declare-fun _$13!4437 () Unit!161547)

(assert (=> d!2190419 (= (choose!53083 lt!2514391 lt!2514404 lambda!412911) _$13!4437)))

(declare-fun b_lambda!265617 () Bool)

(assert (=> (not b_lambda!265617) (not d!2190419)))

(declare-fun bs!1868642 () Bool)

(assert (= bs!1868642 d!2190419))

(assert (=> bs!1868642 m!7728790))

(assert (=> bs!1868642 m!7728954))

(assert (=> d!2190287 d!2190419))

(declare-fun bs!1868643 () Bool)

(declare-fun d!2190421 () Bool)

(assert (= bs!1868643 (and d!2190421 b!7025584)))

(declare-fun lambda!412999 () Int)

(assert (=> bs!1868643 (not (= lambda!412999 lambda!412908))))

(declare-fun bs!1868644 () Bool)

(assert (= bs!1868644 (and d!2190421 d!2190307)))

(assert (=> bs!1868644 (not (= lambda!412999 lambda!412972))))

(declare-fun bs!1868645 () Bool)

(assert (= bs!1868645 (and d!2190421 d!2190309)))

(assert (=> bs!1868645 (not (= lambda!412999 lambda!412975))))

(assert (=> d!2190421 (= (nullableZipper!2563 lt!2514375) (exists!3354 lt!2514375 lambda!412999))))

(declare-fun bs!1868646 () Bool)

(assert (= bs!1868646 d!2190421))

(declare-fun m!7729260 () Bool)

(assert (=> bs!1868646 m!7729260))

(assert (=> b!7025709 d!2190421))

(declare-fun bs!1868647 () Bool)

(declare-fun d!2190423 () Bool)

(assert (= bs!1868647 (and d!2190423 b!7025584)))

(declare-fun lambda!413000 () Int)

(assert (=> bs!1868647 (not (= lambda!413000 lambda!412908))))

(declare-fun bs!1868648 () Bool)

(assert (= bs!1868648 (and d!2190423 d!2190307)))

(assert (=> bs!1868648 (not (= lambda!413000 lambda!412972))))

(declare-fun bs!1868649 () Bool)

(assert (= bs!1868649 (and d!2190423 d!2190309)))

(assert (=> bs!1868649 (not (= lambda!413000 lambda!412975))))

(declare-fun bs!1868650 () Bool)

(assert (= bs!1868650 (and d!2190423 d!2190421)))

(assert (=> bs!1868650 (= lambda!413000 lambda!412999)))

(assert (=> d!2190423 (= (nullableZipper!2563 lt!2514393) (exists!3354 lt!2514393 lambda!413000))))

(declare-fun bs!1868651 () Bool)

(assert (= bs!1868651 d!2190423))

(declare-fun m!7729262 () Bool)

(assert (=> bs!1868651 m!7729262))

(assert (=> b!7025751 d!2190423))

(declare-fun d!2190425 () Bool)

(declare-fun c!1306028 () Bool)

(assert (=> d!2190425 (= c!1306028 (isEmpty!39494 s!7408))))

(declare-fun e!4223586 () Bool)

(assert (=> d!2190425 (= (matchZipper!2982 (set.insert lt!2514535 (as set.empty (Set Context!12876))) s!7408) e!4223586)))

(declare-fun b!7025915 () Bool)

(assert (=> b!7025915 (= e!4223586 (nullableZipper!2563 (set.insert lt!2514535 (as set.empty (Set Context!12876)))))))

(declare-fun b!7025916 () Bool)

(assert (=> b!7025916 (= e!4223586 (matchZipper!2982 (derivationStepZipper!2898 (set.insert lt!2514535 (as set.empty (Set Context!12876))) (head!14239 s!7408)) (tail!13515 s!7408)))))

(assert (= (and d!2190425 c!1306028) b!7025915))

(assert (= (and d!2190425 (not c!1306028)) b!7025916))

(assert (=> d!2190425 m!7728892))

(assert (=> b!7025915 m!7729046))

(declare-fun m!7729264 () Bool)

(assert (=> b!7025915 m!7729264))

(assert (=> b!7025916 m!7728896))

(assert (=> b!7025916 m!7729046))

(assert (=> b!7025916 m!7728896))

(declare-fun m!7729266 () Bool)

(assert (=> b!7025916 m!7729266))

(assert (=> b!7025916 m!7728900))

(assert (=> b!7025916 m!7729266))

(assert (=> b!7025916 m!7728900))

(declare-fun m!7729268 () Bool)

(assert (=> b!7025916 m!7729268))

(assert (=> bs!1868604 d!2190425))

(declare-fun d!2190427 () Bool)

(declare-fun c!1306031 () Bool)

(assert (=> d!2190427 (= c!1306031 (is-Nil!67730 lt!2514532))))

(declare-fun e!4223589 () (Set Regex!17442))

(assert (=> d!2190427 (= (content!13496 lt!2514532) e!4223589)))

(declare-fun b!7025921 () Bool)

(assert (=> b!7025921 (= e!4223589 (as set.empty (Set Regex!17442)))))

(declare-fun b!7025922 () Bool)

(assert (=> b!7025922 (= e!4223589 (set.union (set.insert (h!74178 lt!2514532) (as set.empty (Set Regex!17442))) (content!13496 (t!381611 lt!2514532))))))

(assert (= (and d!2190427 c!1306031) b!7025921))

(assert (= (and d!2190427 (not c!1306031)) b!7025922))

(declare-fun m!7729270 () Bool)

(assert (=> b!7025922 m!7729270))

(declare-fun m!7729272 () Bool)

(assert (=> b!7025922 m!7729272))

(assert (=> d!2190299 d!2190427))

(declare-fun d!2190429 () Bool)

(declare-fun c!1306032 () Bool)

(assert (=> d!2190429 (= c!1306032 (is-Nil!67730 lt!2514374))))

(declare-fun e!4223590 () (Set Regex!17442))

(assert (=> d!2190429 (= (content!13496 lt!2514374) e!4223590)))

(declare-fun b!7025923 () Bool)

(assert (=> b!7025923 (= e!4223590 (as set.empty (Set Regex!17442)))))

(declare-fun b!7025924 () Bool)

(assert (=> b!7025924 (= e!4223590 (set.union (set.insert (h!74178 lt!2514374) (as set.empty (Set Regex!17442))) (content!13496 (t!381611 lt!2514374))))))

(assert (= (and d!2190429 c!1306032) b!7025923))

(assert (= (and d!2190429 (not c!1306032)) b!7025924))

(declare-fun m!7729274 () Bool)

(assert (=> b!7025924 m!7729274))

(declare-fun m!7729276 () Bool)

(assert (=> b!7025924 m!7729276))

(assert (=> d!2190299 d!2190429))

(declare-fun d!2190431 () Bool)

(declare-fun c!1306033 () Bool)

(assert (=> d!2190431 (= c!1306033 (is-Nil!67730 (exprs!6938 ct2!306)))))

(declare-fun e!4223591 () (Set Regex!17442))

(assert (=> d!2190431 (= (content!13496 (exprs!6938 ct2!306)) e!4223591)))

(declare-fun b!7025925 () Bool)

(assert (=> b!7025925 (= e!4223591 (as set.empty (Set Regex!17442)))))

(declare-fun b!7025926 () Bool)

(assert (=> b!7025926 (= e!4223591 (set.union (set.insert (h!74178 (exprs!6938 ct2!306)) (as set.empty (Set Regex!17442))) (content!13496 (t!381611 (exprs!6938 ct2!306)))))))

(assert (= (and d!2190431 c!1306033) b!7025925))

(assert (= (and d!2190431 (not c!1306033)) b!7025926))

(declare-fun m!7729278 () Bool)

(assert (=> b!7025926 m!7729278))

(declare-fun m!7729280 () Bool)

(assert (=> b!7025926 m!7729280))

(assert (=> d!2190299 d!2190431))

(declare-fun d!2190433 () Bool)

(assert (=> d!2190433 (= (isEmpty!39494 s!7408) (is-Nil!67731 s!7408))))

(assert (=> d!2190303 d!2190433))

(declare-fun d!2190435 () Bool)

(assert (=> d!2190435 (= (nullable!7153 (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))) (nullableFct!2712 (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))))))

(declare-fun bs!1868652 () Bool)

(assert (= bs!1868652 d!2190435))

(declare-fun m!7729282 () Bool)

(assert (=> bs!1868652 m!7729282))

(assert (=> b!7025746 d!2190435))

(declare-fun d!2190437 () Bool)

(assert (=> d!2190437 (= (isEmpty!39494 (t!381612 s!7408)) (is-Nil!67731 (t!381612 s!7408)))))

(assert (=> d!2190289 d!2190437))

(declare-fun b!7025941 () Bool)

(declare-fun e!4223608 () Bool)

(declare-fun e!4223609 () Bool)

(assert (=> b!7025941 (= e!4223608 e!4223609)))

(declare-fun c!1306036 () Bool)

(assert (=> b!7025941 (= c!1306036 (is-Union!17442 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun b!7025943 () Bool)

(declare-fun e!4223604 () Bool)

(assert (=> b!7025943 (= e!4223604 e!4223608)))

(declare-fun res!2868120 () Bool)

(assert (=> b!7025943 (=> res!2868120 e!4223608)))

(assert (=> b!7025943 (= res!2868120 (is-Star!17442 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun bm!637892 () Bool)

(declare-fun call!637898 () Bool)

(assert (=> bm!637892 (= call!637898 (nullable!7153 (ite c!1306036 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))))))))

(declare-fun b!7025944 () Bool)

(declare-fun e!4223607 () Bool)

(assert (=> b!7025944 (= e!4223607 call!637898)))

(declare-fun b!7025945 () Bool)

(declare-fun e!4223606 () Bool)

(assert (=> b!7025945 (= e!4223606 e!4223604)))

(declare-fun res!2868122 () Bool)

(assert (=> b!7025945 (=> (not res!2868122) (not e!4223604))))

(assert (=> b!7025945 (= res!2868122 (and (not (is-EmptyLang!17442 (h!74178 (exprs!6938 lt!2514385)))) (not (is-ElementMatch!17442 (h!74178 (exprs!6938 lt!2514385))))))))

(declare-fun bm!637893 () Bool)

(declare-fun call!637897 () Bool)

(assert (=> bm!637893 (= call!637897 (nullable!7153 (ite c!1306036 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))))))

(declare-fun b!7025946 () Bool)

(declare-fun e!4223605 () Bool)

(assert (=> b!7025946 (= e!4223605 call!637897)))

(declare-fun b!7025947 () Bool)

(assert (=> b!7025947 (= e!4223609 e!4223605)))

(declare-fun res!2868119 () Bool)

(assert (=> b!7025947 (= res!2868119 call!637898)))

(assert (=> b!7025947 (=> res!2868119 e!4223605)))

(declare-fun b!7025942 () Bool)

(assert (=> b!7025942 (= e!4223609 e!4223607)))

(declare-fun res!2868121 () Bool)

(assert (=> b!7025942 (= res!2868121 call!637897)))

(assert (=> b!7025942 (=> (not res!2868121) (not e!4223607))))

(declare-fun d!2190439 () Bool)

(declare-fun res!2868118 () Bool)

(assert (=> d!2190439 (=> res!2868118 e!4223606)))

(assert (=> d!2190439 (= res!2868118 (is-EmptyExpr!17442 (h!74178 (exprs!6938 lt!2514385))))))

(assert (=> d!2190439 (= (nullableFct!2712 (h!74178 (exprs!6938 lt!2514385))) e!4223606)))

(assert (= (and d!2190439 (not res!2868118)) b!7025945))

(assert (= (and b!7025945 res!2868122) b!7025943))

(assert (= (and b!7025943 (not res!2868120)) b!7025941))

(assert (= (and b!7025941 c!1306036) b!7025947))

(assert (= (and b!7025941 (not c!1306036)) b!7025942))

(assert (= (and b!7025947 (not res!2868119)) b!7025946))

(assert (= (and b!7025942 res!2868121) b!7025944))

(assert (= (or b!7025946 b!7025942) bm!637893))

(assert (= (or b!7025947 b!7025944) bm!637892))

(declare-fun m!7729284 () Bool)

(assert (=> bm!637892 m!7729284))

(declare-fun m!7729286 () Bool)

(assert (=> bm!637893 m!7729286))

(assert (=> d!2190261 d!2190439))

(declare-fun d!2190441 () Bool)

(assert (=> d!2190441 (= (flatMap!2389 lt!2514401 lambda!412976) (choose!53082 lt!2514401 lambda!412976))))

(declare-fun bs!1868653 () Bool)

(assert (= bs!1868653 d!2190441))

(declare-fun m!7729288 () Bool)

(assert (=> bs!1868653 m!7729288))

(assert (=> d!2190313 d!2190441))

(declare-fun d!2190443 () Bool)

(assert (=> d!2190443 (= ($colon$colon!2558 (exprs!6938 lt!2514404) (ite (or c!1305976 c!1305978) (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (h!74178 (exprs!6938 lt!2514385)))) (Cons!67730 (ite (or c!1305976 c!1305978) (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (h!74178 (exprs!6938 lt!2514385))) (exprs!6938 lt!2514404)))))

(assert (=> bm!637861 d!2190443))

(declare-fun d!2190445 () Bool)

(declare-fun c!1306037 () Bool)

(assert (=> d!2190445 (= c!1306037 (isEmpty!39494 (tail!13515 s!7408)))))

(declare-fun e!4223610 () Bool)

(assert (=> d!2190445 (= (matchZipper!2982 (derivationStepZipper!2898 lt!2514391 (head!14239 s!7408)) (tail!13515 s!7408)) e!4223610)))

(declare-fun b!7025948 () Bool)

(assert (=> b!7025948 (= e!4223610 (nullableZipper!2563 (derivationStepZipper!2898 lt!2514391 (head!14239 s!7408))))))

(declare-fun b!7025949 () Bool)

(assert (=> b!7025949 (= e!4223610 (matchZipper!2982 (derivationStepZipper!2898 (derivationStepZipper!2898 lt!2514391 (head!14239 s!7408)) (head!14239 (tail!13515 s!7408))) (tail!13515 (tail!13515 s!7408))))))

(assert (= (and d!2190445 c!1306037) b!7025948))

(assert (= (and d!2190445 (not c!1306037)) b!7025949))

(assert (=> d!2190445 m!7728900))

(declare-fun m!7729290 () Bool)

(assert (=> d!2190445 m!7729290))

(assert (=> b!7025948 m!7728898))

(declare-fun m!7729292 () Bool)

(assert (=> b!7025948 m!7729292))

(assert (=> b!7025949 m!7728900))

(declare-fun m!7729294 () Bool)

(assert (=> b!7025949 m!7729294))

(assert (=> b!7025949 m!7728898))

(assert (=> b!7025949 m!7729294))

(declare-fun m!7729296 () Bool)

(assert (=> b!7025949 m!7729296))

(assert (=> b!7025949 m!7728900))

(declare-fun m!7729298 () Bool)

(assert (=> b!7025949 m!7729298))

(assert (=> b!7025949 m!7729296))

(assert (=> b!7025949 m!7729298))

(declare-fun m!7729300 () Bool)

(assert (=> b!7025949 m!7729300))

(assert (=> b!7025669 d!2190445))

(declare-fun bs!1868654 () Bool)

(declare-fun d!2190447 () Bool)

(assert (= bs!1868654 (and d!2190447 b!7025574)))

(declare-fun lambda!413001 () Int)

(assert (=> bs!1868654 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413001 lambda!412911))))

(declare-fun bs!1868655 () Bool)

(assert (= bs!1868655 (and d!2190447 d!2190285)))

(assert (=> bs!1868655 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413001 lambda!412968))))

(declare-fun bs!1868656 () Bool)

(assert (= bs!1868656 (and d!2190447 d!2190313)))

(assert (=> bs!1868656 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413001 lambda!412976))))

(declare-fun bs!1868657 () Bool)

(assert (= bs!1868657 (and d!2190447 d!2190411)))

(assert (=> bs!1868657 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413001 lambda!412996))))

(assert (=> d!2190447 true))

(assert (=> d!2190447 (= (derivationStepZipper!2898 lt!2514391 (head!14239 s!7408)) (flatMap!2389 lt!2514391 lambda!413001))))

(declare-fun bs!1868658 () Bool)

(assert (= bs!1868658 d!2190447))

(declare-fun m!7729302 () Bool)

(assert (=> bs!1868658 m!7729302))

(assert (=> b!7025669 d!2190447))

(declare-fun d!2190449 () Bool)

(assert (=> d!2190449 (= (head!14239 s!7408) (h!74179 s!7408))))

(assert (=> b!7025669 d!2190449))

(declare-fun d!2190451 () Bool)

(assert (=> d!2190451 (= (tail!13515 s!7408) (t!381612 s!7408))))

(assert (=> b!7025669 d!2190451))

(declare-fun d!2190453 () Bool)

(declare-fun e!4223616 () Bool)

(assert (=> d!2190453 e!4223616))

(declare-fun res!2868125 () Bool)

(assert (=> d!2190453 (=> (not res!2868125) (not e!4223616))))

(declare-fun a!13131 () Context!12876)

(assert (=> d!2190453 (= res!2868125 (= lt!2514372 (dynLambda!27308 lambda!412909 a!13131)))))

(declare-fun e!4223615 () Bool)

(assert (=> d!2190453 (and (inv!86465 a!13131) e!4223615)))

(assert (=> d!2190453 (= (choose!53081 z1!570 lambda!412909 lt!2514372) a!13131)))

(declare-fun b!7025955 () Bool)

(declare-fun tp!1935488 () Bool)

(assert (=> b!7025955 (= e!4223615 tp!1935488)))

(declare-fun b!7025956 () Bool)

(assert (=> b!7025956 (= e!4223616 (set.member a!13131 z1!570))))

(assert (= d!2190453 b!7025955))

(assert (= (and d!2190453 res!2868125) b!7025956))

(declare-fun b_lambda!265619 () Bool)

(assert (=> (not b_lambda!265619) (not d!2190453)))

(declare-fun m!7729304 () Bool)

(assert (=> d!2190453 m!7729304))

(declare-fun m!7729306 () Bool)

(assert (=> d!2190453 m!7729306))

(declare-fun m!7729308 () Bool)

(assert (=> b!7025956 m!7729308))

(assert (=> d!2190279 d!2190453))

(declare-fun d!2190455 () Bool)

(declare-fun choose!53094 ((Set Context!12876) Int) (Set Context!12876))

(assert (=> d!2190455 (= (map!15731 z1!570 lambda!412909) (choose!53094 z1!570 lambda!412909))))

(declare-fun bs!1868659 () Bool)

(assert (= bs!1868659 d!2190455))

(declare-fun m!7729310 () Bool)

(assert (=> bs!1868659 m!7729310))

(assert (=> d!2190279 d!2190455))

(declare-fun d!2190457 () Bool)

(assert (=> d!2190457 (forall!16346 (++!15475 (exprs!6938 lt!2514525) (exprs!6938 ct2!306)) lambda!412910)))

(declare-fun lt!2514574 () Unit!161547)

(assert (=> d!2190457 (= lt!2514574 (choose!53080 (exprs!6938 lt!2514525) (exprs!6938 ct2!306) lambda!412910))))

(assert (=> d!2190457 (forall!16346 (exprs!6938 lt!2514525) lambda!412910)))

(assert (=> d!2190457 (= (lemmaConcatPreservesForall!763 (exprs!6938 lt!2514525) (exprs!6938 ct2!306) lambda!412910) lt!2514574)))

(declare-fun bs!1868660 () Bool)

(assert (= bs!1868660 d!2190457))

(assert (=> bs!1868660 m!7729052))

(assert (=> bs!1868660 m!7729052))

(declare-fun m!7729312 () Bool)

(assert (=> bs!1868660 m!7729312))

(declare-fun m!7729314 () Bool)

(assert (=> bs!1868660 m!7729314))

(declare-fun m!7729316 () Bool)

(assert (=> bs!1868660 m!7729316))

(assert (=> bs!1868607 d!2190457))

(declare-fun b!7025957 () Bool)

(declare-fun e!4223617 () List!67854)

(assert (=> b!7025957 (= e!4223617 (exprs!6938 ct2!306))))

(declare-fun b!7025960 () Bool)

(declare-fun e!4223618 () Bool)

(declare-fun lt!2514575 () List!67854)

(assert (=> b!7025960 (= e!4223618 (or (not (= (exprs!6938 ct2!306) Nil!67730)) (= lt!2514575 (exprs!6938 lt!2514525))))))

(declare-fun b!7025959 () Bool)

(declare-fun res!2868127 () Bool)

(assert (=> b!7025959 (=> (not res!2868127) (not e!4223618))))

(assert (=> b!7025959 (= res!2868127 (= (size!41041 lt!2514575) (+ (size!41041 (exprs!6938 lt!2514525)) (size!41041 (exprs!6938 ct2!306)))))))

(declare-fun b!7025958 () Bool)

(assert (=> b!7025958 (= e!4223617 (Cons!67730 (h!74178 (exprs!6938 lt!2514525)) (++!15475 (t!381611 (exprs!6938 lt!2514525)) (exprs!6938 ct2!306))))))

(declare-fun d!2190459 () Bool)

(assert (=> d!2190459 e!4223618))

(declare-fun res!2868126 () Bool)

(assert (=> d!2190459 (=> (not res!2868126) (not e!4223618))))

(assert (=> d!2190459 (= res!2868126 (= (content!13496 lt!2514575) (set.union (content!13496 (exprs!6938 lt!2514525)) (content!13496 (exprs!6938 ct2!306)))))))

(assert (=> d!2190459 (= lt!2514575 e!4223617)))

(declare-fun c!1306038 () Bool)

(assert (=> d!2190459 (= c!1306038 (is-Nil!67730 (exprs!6938 lt!2514525)))))

(assert (=> d!2190459 (= (++!15475 (exprs!6938 lt!2514525) (exprs!6938 ct2!306)) lt!2514575)))

(assert (= (and d!2190459 c!1306038) b!7025957))

(assert (= (and d!2190459 (not c!1306038)) b!7025958))

(assert (= (and d!2190459 res!2868126) b!7025959))

(assert (= (and b!7025959 res!2868127) b!7025960))

(declare-fun m!7729318 () Bool)

(assert (=> b!7025959 m!7729318))

(declare-fun m!7729320 () Bool)

(assert (=> b!7025959 m!7729320))

(assert (=> b!7025959 m!7728918))

(declare-fun m!7729322 () Bool)

(assert (=> b!7025958 m!7729322))

(declare-fun m!7729324 () Bool)

(assert (=> d!2190459 m!7729324))

(declare-fun m!7729326 () Bool)

(assert (=> d!2190459 m!7729326))

(assert (=> d!2190459 m!7728926))

(assert (=> bs!1868607 d!2190459))

(declare-fun d!2190461 () Bool)

(declare-fun c!1306039 () Bool)

(assert (=> d!2190461 (= c!1306039 (isEmpty!39494 (t!381612 s!7408)))))

(declare-fun e!4223619 () Bool)

(assert (=> d!2190461 (= (matchZipper!2982 (set.union lt!2514380 lt!2514388) (t!381612 s!7408)) e!4223619)))

(declare-fun b!7025961 () Bool)

(assert (=> b!7025961 (= e!4223619 (nullableZipper!2563 (set.union lt!2514380 lt!2514388)))))

(declare-fun b!7025962 () Bool)

(assert (=> b!7025962 (= e!4223619 (matchZipper!2982 (derivationStepZipper!2898 (set.union lt!2514380 lt!2514388) (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))))))

(assert (= (and d!2190461 c!1306039) b!7025961))

(assert (= (and d!2190461 (not c!1306039)) b!7025962))

(assert (=> d!2190461 m!7728872))

(declare-fun m!7729328 () Bool)

(assert (=> b!7025961 m!7729328))

(assert (=> b!7025962 m!7728876))

(assert (=> b!7025962 m!7728876))

(declare-fun m!7729330 () Bool)

(assert (=> b!7025962 m!7729330))

(assert (=> b!7025962 m!7728880))

(assert (=> b!7025962 m!7729330))

(assert (=> b!7025962 m!7728880))

(declare-fun m!7729332 () Bool)

(assert (=> b!7025962 m!7729332))

(assert (=> d!2190295 d!2190461))

(assert (=> d!2190295 d!2190291))

(declare-fun e!4223622 () Bool)

(declare-fun d!2190463 () Bool)

(assert (=> d!2190463 (= (matchZipper!2982 (set.union lt!2514380 lt!2514388) (t!381612 s!7408)) e!4223622)))

(declare-fun res!2868130 () Bool)

(assert (=> d!2190463 (=> res!2868130 e!4223622)))

(assert (=> d!2190463 (= res!2868130 (matchZipper!2982 lt!2514380 (t!381612 s!7408)))))

(assert (=> d!2190463 true))

(declare-fun _$48!2461 () Unit!161547)

(assert (=> d!2190463 (= (choose!53084 lt!2514380 lt!2514388 (t!381612 s!7408)) _$48!2461)))

(declare-fun b!7025965 () Bool)

(assert (=> b!7025965 (= e!4223622 (matchZipper!2982 lt!2514388 (t!381612 s!7408)))))

(assert (= (and d!2190463 (not res!2868130)) b!7025965))

(assert (=> d!2190463 m!7728976))

(assert (=> d!2190463 m!7728764))

(assert (=> b!7025965 m!7728724))

(assert (=> d!2190295 d!2190463))

(declare-fun bs!1868661 () Bool)

(declare-fun d!2190465 () Bool)

(assert (= bs!1868661 (and d!2190465 d!2190307)))

(declare-fun lambda!413002 () Int)

(assert (=> bs!1868661 (not (= lambda!413002 lambda!412972))))

(declare-fun bs!1868662 () Bool)

(assert (= bs!1868662 (and d!2190465 d!2190309)))

(assert (=> bs!1868662 (not (= lambda!413002 lambda!412975))))

(declare-fun bs!1868663 () Bool)

(assert (= bs!1868663 (and d!2190465 d!2190421)))

(assert (=> bs!1868663 (= lambda!413002 lambda!412999)))

(declare-fun bs!1868664 () Bool)

(assert (= bs!1868664 (and d!2190465 d!2190423)))

(assert (=> bs!1868664 (= lambda!413002 lambda!413000)))

(declare-fun bs!1868665 () Bool)

(assert (= bs!1868665 (and d!2190465 b!7025584)))

(assert (=> bs!1868665 (not (= lambda!413002 lambda!412908))))

(assert (=> d!2190465 (= (nullableZipper!2563 lt!2514380) (exists!3354 lt!2514380 lambda!413002))))

(declare-fun bs!1868666 () Bool)

(assert (= bs!1868666 d!2190465))

(declare-fun m!7729334 () Bool)

(assert (=> bs!1868666 m!7729334))

(assert (=> b!7025707 d!2190465))

(declare-fun d!2190467 () Bool)

(assert (=> d!2190467 (= (nullable!7153 (h!74178 (exprs!6938 lt!2514404))) (nullableFct!2712 (h!74178 (exprs!6938 lt!2514404))))))

(declare-fun bs!1868667 () Bool)

(assert (= bs!1868667 d!2190467))

(declare-fun m!7729336 () Bool)

(assert (=> bs!1868667 m!7729336))

(assert (=> b!7025701 d!2190467))

(declare-fun d!2190469 () Bool)

(declare-fun res!2868135 () Bool)

(declare-fun e!4223627 () Bool)

(assert (=> d!2190469 (=> res!2868135 e!4223627)))

(assert (=> d!2190469 (= res!2868135 (is-Nil!67732 lt!2514541))))

(assert (=> d!2190469 (= (noDuplicate!2612 lt!2514541) e!4223627)))

(declare-fun b!7025970 () Bool)

(declare-fun e!4223628 () Bool)

(assert (=> b!7025970 (= e!4223627 e!4223628)))

(declare-fun res!2868136 () Bool)

(assert (=> b!7025970 (=> (not res!2868136) (not e!4223628))))

(declare-fun contains!20441 (List!67856 Context!12876) Bool)

(assert (=> b!7025970 (= res!2868136 (not (contains!20441 (t!381613 lt!2514541) (h!74180 lt!2514541))))))

(declare-fun b!7025971 () Bool)

(assert (=> b!7025971 (= e!4223628 (noDuplicate!2612 (t!381613 lt!2514541)))))

(assert (= (and d!2190469 (not res!2868135)) b!7025970))

(assert (= (and b!7025970 res!2868136) b!7025971))

(declare-fun m!7729338 () Bool)

(assert (=> b!7025970 m!7729338))

(declare-fun m!7729340 () Bool)

(assert (=> b!7025971 m!7729340))

(assert (=> d!2190311 d!2190469))

(declare-fun d!2190471 () Bool)

(declare-fun e!4223637 () Bool)

(assert (=> d!2190471 e!4223637))

(declare-fun res!2868141 () Bool)

(assert (=> d!2190471 (=> (not res!2868141) (not e!4223637))))

(declare-fun res!2868142 () List!67856)

(assert (=> d!2190471 (= res!2868141 (noDuplicate!2612 res!2868142))))

(declare-fun e!4223636 () Bool)

(assert (=> d!2190471 e!4223636))

(assert (=> d!2190471 (= (choose!53086 lt!2514386) res!2868142)))

(declare-fun b!7025979 () Bool)

(declare-fun e!4223635 () Bool)

(declare-fun tp!1935493 () Bool)

(assert (=> b!7025979 (= e!4223635 tp!1935493)))

(declare-fun tp!1935494 () Bool)

(declare-fun b!7025978 () Bool)

(assert (=> b!7025978 (= e!4223636 (and (inv!86465 (h!74180 res!2868142)) e!4223635 tp!1935494))))

(declare-fun b!7025980 () Bool)

(assert (=> b!7025980 (= e!4223637 (= (content!13497 res!2868142) lt!2514386))))

(assert (= b!7025978 b!7025979))

(assert (= (and d!2190471 (is-Cons!67732 res!2868142)) b!7025978))

(assert (= (and d!2190471 res!2868141) b!7025980))

(declare-fun m!7729342 () Bool)

(assert (=> d!2190471 m!7729342))

(declare-fun m!7729344 () Bool)

(assert (=> b!7025978 m!7729344))

(declare-fun m!7729346 () Bool)

(assert (=> b!7025980 m!7729346))

(assert (=> d!2190311 d!2190471))

(declare-fun d!2190473 () Bool)

(declare-fun res!2868143 () Bool)

(declare-fun e!4223638 () Bool)

(assert (=> d!2190473 (=> res!2868143 e!4223638)))

(assert (=> d!2190473 (= res!2868143 (is-Nil!67730 (exprs!6938 setElem!48973)))))

(assert (=> d!2190473 (= (forall!16346 (exprs!6938 setElem!48973) lambda!412969) e!4223638)))

(declare-fun b!7025981 () Bool)

(declare-fun e!4223639 () Bool)

(assert (=> b!7025981 (= e!4223638 e!4223639)))

(declare-fun res!2868144 () Bool)

(assert (=> b!7025981 (=> (not res!2868144) (not e!4223639))))

(assert (=> b!7025981 (= res!2868144 (dynLambda!27316 lambda!412969 (h!74178 (exprs!6938 setElem!48973))))))

(declare-fun b!7025982 () Bool)

(assert (=> b!7025982 (= e!4223639 (forall!16346 (t!381611 (exprs!6938 setElem!48973)) lambda!412969))))

(assert (= (and d!2190473 (not res!2868143)) b!7025981))

(assert (= (and b!7025981 res!2868144) b!7025982))

(declare-fun b_lambda!265621 () Bool)

(assert (=> (not b_lambda!265621) (not b!7025981)))

(declare-fun m!7729348 () Bool)

(assert (=> b!7025981 m!7729348))

(declare-fun m!7729350 () Bool)

(assert (=> b!7025982 m!7729350))

(assert (=> d!2190297 d!2190473))

(declare-fun bs!1868668 () Bool)

(declare-fun d!2190475 () Bool)

(assert (= bs!1868668 (and d!2190475 d!2190307)))

(declare-fun lambda!413003 () Int)

(assert (=> bs!1868668 (not (= lambda!413003 lambda!412972))))

(declare-fun bs!1868669 () Bool)

(assert (= bs!1868669 (and d!2190475 d!2190309)))

(assert (=> bs!1868669 (not (= lambda!413003 lambda!412975))))

(declare-fun bs!1868670 () Bool)

(assert (= bs!1868670 (and d!2190475 d!2190421)))

(assert (=> bs!1868670 (= lambda!413003 lambda!412999)))

(declare-fun bs!1868671 () Bool)

(assert (= bs!1868671 (and d!2190475 d!2190423)))

(assert (=> bs!1868671 (= lambda!413003 lambda!413000)))

(declare-fun bs!1868672 () Bool)

(assert (= bs!1868672 (and d!2190475 d!2190465)))

(assert (=> bs!1868672 (= lambda!413003 lambda!413002)))

(declare-fun bs!1868673 () Bool)

(assert (= bs!1868673 (and d!2190475 b!7025584)))

(assert (=> bs!1868673 (not (= lambda!413003 lambda!412908))))

(assert (=> d!2190475 (= (nullableZipper!2563 lt!2514386) (exists!3354 lt!2514386 lambda!413003))))

(declare-fun bs!1868674 () Bool)

(assert (= bs!1868674 d!2190475))

(declare-fun m!7729352 () Bool)

(assert (=> bs!1868674 m!7729352))

(assert (=> b!7025670 d!2190475))

(declare-fun d!2190477 () Bool)

(declare-fun c!1306040 () Bool)

(assert (=> d!2190477 (= c!1306040 (isEmpty!39494 (tail!13515 (t!381612 s!7408))))))

(declare-fun e!4223640 () Bool)

(assert (=> d!2190477 (= (matchZipper!2982 (derivationStepZipper!2898 lt!2514388 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))) e!4223640)))

(declare-fun b!7025983 () Bool)

(assert (=> b!7025983 (= e!4223640 (nullableZipper!2563 (derivationStepZipper!2898 lt!2514388 (head!14239 (t!381612 s!7408)))))))

(declare-fun b!7025984 () Bool)

(assert (=> b!7025984 (= e!4223640 (matchZipper!2982 (derivationStepZipper!2898 (derivationStepZipper!2898 lt!2514388 (head!14239 (t!381612 s!7408))) (head!14239 (tail!13515 (t!381612 s!7408)))) (tail!13515 (tail!13515 (t!381612 s!7408)))))))

(assert (= (and d!2190477 c!1306040) b!7025983))

(assert (= (and d!2190477 (not c!1306040)) b!7025984))

(assert (=> d!2190477 m!7728880))

(assert (=> d!2190477 m!7729246))

(assert (=> b!7025983 m!7728878))

(declare-fun m!7729354 () Bool)

(assert (=> b!7025983 m!7729354))

(assert (=> b!7025984 m!7728880))

(assert (=> b!7025984 m!7729250))

(assert (=> b!7025984 m!7728878))

(assert (=> b!7025984 m!7729250))

(declare-fun m!7729356 () Bool)

(assert (=> b!7025984 m!7729356))

(assert (=> b!7025984 m!7728880))

(assert (=> b!7025984 m!7729254))

(assert (=> b!7025984 m!7729356))

(assert (=> b!7025984 m!7729254))

(declare-fun m!7729358 () Bool)

(assert (=> b!7025984 m!7729358))

(assert (=> b!7025667 d!2190477))

(declare-fun bs!1868675 () Bool)

(declare-fun d!2190479 () Bool)

(assert (= bs!1868675 (and d!2190479 d!2190411)))

(declare-fun lambda!413004 () Int)

(assert (=> bs!1868675 (= lambda!413004 lambda!412996)))

(declare-fun bs!1868676 () Bool)

(assert (= bs!1868676 (and d!2190479 b!7025574)))

(assert (=> bs!1868676 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413004 lambda!412911))))

(declare-fun bs!1868677 () Bool)

(assert (= bs!1868677 (and d!2190479 d!2190313)))

(assert (=> bs!1868677 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413004 lambda!412976))))

(declare-fun bs!1868678 () Bool)

(assert (= bs!1868678 (and d!2190479 d!2190447)))

(assert (=> bs!1868678 (= (= (head!14239 (t!381612 s!7408)) (head!14239 s!7408)) (= lambda!413004 lambda!413001))))

(declare-fun bs!1868679 () Bool)

(assert (= bs!1868679 (and d!2190479 d!2190285)))

(assert (=> bs!1868679 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413004 lambda!412968))))

(assert (=> d!2190479 true))

(assert (=> d!2190479 (= (derivationStepZipper!2898 lt!2514388 (head!14239 (t!381612 s!7408))) (flatMap!2389 lt!2514388 lambda!413004))))

(declare-fun bs!1868680 () Bool)

(assert (= bs!1868680 d!2190479))

(declare-fun m!7729360 () Bool)

(assert (=> bs!1868680 m!7729360))

(assert (=> b!7025667 d!2190479))

(assert (=> b!7025667 d!2190413))

(assert (=> b!7025667 d!2190415))

(declare-fun b!7025985 () Bool)

(declare-fun call!637899 () (Set Context!12876))

(declare-fun e!4223642 () (Set Context!12876))

(assert (=> b!7025985 (= e!4223642 (set.union call!637899 (derivationStepZipperUp!2052 (Context!12877 (t!381611 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514404)))))) (h!74179 s!7408))))))

(declare-fun b!7025986 () Bool)

(declare-fun e!4223641 () (Set Context!12876))

(assert (=> b!7025986 (= e!4223641 call!637899)))

(declare-fun bm!637894 () Bool)

(assert (=> bm!637894 (= call!637899 (derivationStepZipperDown!2106 (h!74178 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514404))))) (Context!12877 (t!381611 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514404)))))) (h!74179 s!7408)))))

(declare-fun b!7025987 () Bool)

(assert (=> b!7025987 (= e!4223641 (as set.empty (Set Context!12876)))))

(declare-fun b!7025988 () Bool)

(declare-fun e!4223643 () Bool)

(assert (=> b!7025988 (= e!4223643 (nullable!7153 (h!74178 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514404)))))))))

(declare-fun b!7025989 () Bool)

(assert (=> b!7025989 (= e!4223642 e!4223641)))

(declare-fun c!1306041 () Bool)

(assert (=> b!7025989 (= c!1306041 (is-Cons!67730 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514404))))))))

(declare-fun d!2190481 () Bool)

(declare-fun c!1306042 () Bool)

(assert (=> d!2190481 (= c!1306042 e!4223643)))

(declare-fun res!2868145 () Bool)

(assert (=> d!2190481 (=> (not res!2868145) (not e!4223643))))

(assert (=> d!2190481 (= res!2868145 (is-Cons!67730 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514404))))))))

(assert (=> d!2190481 (= (derivationStepZipperUp!2052 (Context!12877 (t!381611 (exprs!6938 lt!2514404))) (h!74179 s!7408)) e!4223642)))

(assert (= (and d!2190481 res!2868145) b!7025988))

(assert (= (and d!2190481 c!1306042) b!7025985))

(assert (= (and d!2190481 (not c!1306042)) b!7025989))

(assert (= (and b!7025989 c!1306041) b!7025986))

(assert (= (and b!7025989 (not c!1306041)) b!7025987))

(assert (= (or b!7025985 b!7025986) bm!637894))

(declare-fun m!7729362 () Bool)

(assert (=> b!7025985 m!7729362))

(declare-fun m!7729364 () Bool)

(assert (=> bm!637894 m!7729364))

(declare-fun m!7729366 () Bool)

(assert (=> b!7025988 m!7729366))

(assert (=> b!7025698 d!2190481))

(declare-fun d!2190483 () Bool)

(declare-fun lt!2514578 () Int)

(assert (=> d!2190483 (>= lt!2514578 0)))

(declare-fun e!4223646 () Int)

(assert (=> d!2190483 (= lt!2514578 e!4223646)))

(declare-fun c!1306045 () Bool)

(assert (=> d!2190483 (= c!1306045 (is-Nil!67730 lt!2514532))))

(assert (=> d!2190483 (= (size!41041 lt!2514532) lt!2514578)))

(declare-fun b!7025994 () Bool)

(assert (=> b!7025994 (= e!4223646 0)))

(declare-fun b!7025995 () Bool)

(assert (=> b!7025995 (= e!4223646 (+ 1 (size!41041 (t!381611 lt!2514532))))))

(assert (= (and d!2190483 c!1306045) b!7025994))

(assert (= (and d!2190483 (not c!1306045)) b!7025995))

(declare-fun m!7729368 () Bool)

(assert (=> b!7025995 m!7729368))

(assert (=> b!7025716 d!2190483))

(declare-fun d!2190485 () Bool)

(declare-fun lt!2514579 () Int)

(assert (=> d!2190485 (>= lt!2514579 0)))

(declare-fun e!4223647 () Int)

(assert (=> d!2190485 (= lt!2514579 e!4223647)))

(declare-fun c!1306046 () Bool)

(assert (=> d!2190485 (= c!1306046 (is-Nil!67730 lt!2514374))))

(assert (=> d!2190485 (= (size!41041 lt!2514374) lt!2514579)))

(declare-fun b!7025996 () Bool)

(assert (=> b!7025996 (= e!4223647 0)))

(declare-fun b!7025997 () Bool)

(assert (=> b!7025997 (= e!4223647 (+ 1 (size!41041 (t!381611 lt!2514374))))))

(assert (= (and d!2190485 c!1306046) b!7025996))

(assert (= (and d!2190485 (not c!1306046)) b!7025997))

(declare-fun m!7729370 () Bool)

(assert (=> b!7025997 m!7729370))

(assert (=> b!7025716 d!2190485))

(declare-fun d!2190487 () Bool)

(declare-fun lt!2514580 () Int)

(assert (=> d!2190487 (>= lt!2514580 0)))

(declare-fun e!4223648 () Int)

(assert (=> d!2190487 (= lt!2514580 e!4223648)))

(declare-fun c!1306047 () Bool)

(assert (=> d!2190487 (= c!1306047 (is-Nil!67730 (exprs!6938 ct2!306)))))

(assert (=> d!2190487 (= (size!41041 (exprs!6938 ct2!306)) lt!2514580)))

(declare-fun b!7025998 () Bool)

(assert (=> b!7025998 (= e!4223648 0)))

(declare-fun b!7025999 () Bool)

(assert (=> b!7025999 (= e!4223648 (+ 1 (size!41041 (t!381611 (exprs!6938 ct2!306)))))))

(assert (= (and d!2190487 c!1306047) b!7025998))

(assert (= (and d!2190487 (not c!1306047)) b!7025999))

(declare-fun m!7729372 () Bool)

(assert (=> b!7025999 m!7729372))

(assert (=> b!7025716 d!2190487))

(declare-fun b!7026001 () Bool)

(declare-fun c!1306050 () Bool)

(declare-fun e!4223654 () Bool)

(assert (=> b!7026001 (= c!1306050 e!4223654)))

(declare-fun res!2868146 () Bool)

(assert (=> b!7026001 (=> (not res!2868146) (not e!4223654))))

(assert (=> b!7026001 (= res!2868146 (is-Concat!26287 (h!74178 (exprs!6938 lt!2514404))))))

(declare-fun e!4223650 () (Set Context!12876))

(declare-fun e!4223652 () (Set Context!12876))

(assert (=> b!7026001 (= e!4223650 e!4223652)))

(declare-fun bm!637895 () Bool)

(declare-fun call!637903 () (Set Context!12876))

(declare-fun call!637905 () (Set Context!12876))

(assert (=> bm!637895 (= call!637903 call!637905)))

(declare-fun call!637902 () (Set Context!12876))

(declare-fun c!1306052 () Bool)

(declare-fun bm!637896 () Bool)

(declare-fun c!1306051 () Bool)

(declare-fun call!637904 () List!67854)

(assert (=> bm!637896 (= call!637902 (derivationStepZipperDown!2106 (ite c!1306051 (regTwo!35397 (h!74178 (exprs!6938 lt!2514404))) (ite c!1306050 (regTwo!35396 (h!74178 (exprs!6938 lt!2514404))) (ite c!1306052 (regOne!35396 (h!74178 (exprs!6938 lt!2514404))) (reg!17771 (h!74178 (exprs!6938 lt!2514404)))))) (ite (or c!1306051 c!1306050) (Context!12877 (t!381611 (exprs!6938 lt!2514404))) (Context!12877 call!637904)) (h!74179 s!7408)))))

(declare-fun b!7026002 () Bool)

(declare-fun c!1306048 () Bool)

(assert (=> b!7026002 (= c!1306048 (is-Star!17442 (h!74178 (exprs!6938 lt!2514404))))))

(declare-fun e!4223651 () (Set Context!12876))

(declare-fun e!4223649 () (Set Context!12876))

(assert (=> b!7026002 (= e!4223651 e!4223649)))

(declare-fun b!7026003 () Bool)

(assert (=> b!7026003 (= e!4223649 call!637903)))

(declare-fun d!2190489 () Bool)

(declare-fun c!1306049 () Bool)

(assert (=> d!2190489 (= c!1306049 (and (is-ElementMatch!17442 (h!74178 (exprs!6938 lt!2514404))) (= (c!1305931 (h!74178 (exprs!6938 lt!2514404))) (h!74179 s!7408))))))

(declare-fun e!4223653 () (Set Context!12876))

(assert (=> d!2190489 (= (derivationStepZipperDown!2106 (h!74178 (exprs!6938 lt!2514404)) (Context!12877 (t!381611 (exprs!6938 lt!2514404))) (h!74179 s!7408)) e!4223653)))

(declare-fun b!7026000 () Bool)

(assert (=> b!7026000 (= e!4223649 (as set.empty (Set Context!12876)))))

(declare-fun call!637901 () List!67854)

(declare-fun bm!637897 () Bool)

(assert (=> bm!637897 (= call!637901 ($colon$colon!2558 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514404)))) (ite (or c!1306050 c!1306052) (regTwo!35396 (h!74178 (exprs!6938 lt!2514404))) (h!74178 (exprs!6938 lt!2514404)))))))

(declare-fun bm!637898 () Bool)

(assert (=> bm!637898 (= call!637904 call!637901)))

(declare-fun b!7026004 () Bool)

(declare-fun call!637900 () (Set Context!12876))

(assert (=> b!7026004 (= e!4223652 (set.union call!637900 call!637905))))

(declare-fun b!7026005 () Bool)

(assert (=> b!7026005 (= e!4223651 call!637903)))

(declare-fun b!7026006 () Bool)

(assert (=> b!7026006 (= e!4223654 (nullable!7153 (regOne!35396 (h!74178 (exprs!6938 lt!2514404)))))))

(declare-fun bm!637899 () Bool)

(assert (=> bm!637899 (= call!637900 (derivationStepZipperDown!2106 (ite c!1306051 (regOne!35397 (h!74178 (exprs!6938 lt!2514404))) (regOne!35396 (h!74178 (exprs!6938 lt!2514404)))) (ite c!1306051 (Context!12877 (t!381611 (exprs!6938 lt!2514404))) (Context!12877 call!637901)) (h!74179 s!7408)))))

(declare-fun bm!637900 () Bool)

(assert (=> bm!637900 (= call!637905 call!637902)))

(declare-fun b!7026007 () Bool)

(assert (=> b!7026007 (= e!4223653 e!4223650)))

(assert (=> b!7026007 (= c!1306051 (is-Union!17442 (h!74178 (exprs!6938 lt!2514404))))))

(declare-fun b!7026008 () Bool)

(assert (=> b!7026008 (= e!4223650 (set.union call!637900 call!637902))))

(declare-fun b!7026009 () Bool)

(assert (=> b!7026009 (= e!4223653 (set.insert (Context!12877 (t!381611 (exprs!6938 lt!2514404))) (as set.empty (Set Context!12876))))))

(declare-fun b!7026010 () Bool)

(assert (=> b!7026010 (= e!4223652 e!4223651)))

(assert (=> b!7026010 (= c!1306052 (is-Concat!26287 (h!74178 (exprs!6938 lt!2514404))))))

(assert (= (and d!2190489 c!1306049) b!7026009))

(assert (= (and d!2190489 (not c!1306049)) b!7026007))

(assert (= (and b!7026007 c!1306051) b!7026008))

(assert (= (and b!7026007 (not c!1306051)) b!7026001))

(assert (= (and b!7026001 res!2868146) b!7026006))

(assert (= (and b!7026001 c!1306050) b!7026004))

(assert (= (and b!7026001 (not c!1306050)) b!7026010))

(assert (= (and b!7026010 c!1306052) b!7026005))

(assert (= (and b!7026010 (not c!1306052)) b!7026002))

(assert (= (and b!7026002 c!1306048) b!7026003))

(assert (= (and b!7026002 (not c!1306048)) b!7026000))

(assert (= (or b!7026005 b!7026003) bm!637898))

(assert (= (or b!7026005 b!7026003) bm!637895))

(assert (= (or b!7026004 bm!637895) bm!637900))

(assert (= (or b!7026004 bm!637898) bm!637897))

(assert (= (or b!7026008 b!7026004) bm!637899))

(assert (= (or b!7026008 bm!637900) bm!637896))

(declare-fun m!7729374 () Bool)

(assert (=> b!7026006 m!7729374))

(declare-fun m!7729376 () Bool)

(assert (=> bm!637896 m!7729376))

(declare-fun m!7729378 () Bool)

(assert (=> bm!637899 m!7729378))

(declare-fun m!7729380 () Bool)

(assert (=> b!7026009 m!7729380))

(declare-fun m!7729382 () Bool)

(assert (=> bm!637897 m!7729382))

(assert (=> bm!637846 d!2190489))

(assert (=> d!2190265 d!2190433))

(declare-fun d!2190491 () Bool)

(declare-fun lt!2514581 () Int)

(assert (=> d!2190491 (>= lt!2514581 0)))

(declare-fun e!4223655 () Int)

(assert (=> d!2190491 (= lt!2514581 e!4223655)))

(declare-fun c!1306053 () Bool)

(assert (=> d!2190491 (= c!1306053 (is-Nil!67730 lt!2514521))))

(assert (=> d!2190491 (= (size!41041 lt!2514521) lt!2514581)))

(declare-fun b!7026011 () Bool)

(assert (=> b!7026011 (= e!4223655 0)))

(declare-fun b!7026012 () Bool)

(assert (=> b!7026012 (= e!4223655 (+ 1 (size!41041 (t!381611 lt!2514521))))))

(assert (= (and d!2190491 c!1306053) b!7026011))

(assert (= (and d!2190491 (not c!1306053)) b!7026012))

(declare-fun m!7729384 () Bool)

(assert (=> b!7026012 m!7729384))

(assert (=> b!7025682 d!2190491))

(declare-fun d!2190493 () Bool)

(declare-fun lt!2514582 () Int)

(assert (=> d!2190493 (>= lt!2514582 0)))

(declare-fun e!4223656 () Int)

(assert (=> d!2190493 (= lt!2514582 e!4223656)))

(declare-fun c!1306054 () Bool)

(assert (=> d!2190493 (= c!1306054 (is-Nil!67730 (exprs!6938 lt!2514385)))))

(assert (=> d!2190493 (= (size!41041 (exprs!6938 lt!2514385)) lt!2514582)))

(declare-fun b!7026013 () Bool)

(assert (=> b!7026013 (= e!4223656 0)))

(declare-fun b!7026014 () Bool)

(assert (=> b!7026014 (= e!4223656 (+ 1 (size!41041 (t!381611 (exprs!6938 lt!2514385)))))))

(assert (= (and d!2190493 c!1306054) b!7026013))

(assert (= (and d!2190493 (not c!1306054)) b!7026014))

(declare-fun m!7729386 () Bool)

(assert (=> b!7026014 m!7729386))

(assert (=> b!7025682 d!2190493))

(assert (=> b!7025682 d!2190487))

(declare-fun d!2190495 () Bool)

(declare-fun c!1306057 () Bool)

(assert (=> d!2190495 (= c!1306057 (is-Nil!67732 lt!2514541))))

(declare-fun e!4223659 () (Set Context!12876))

(assert (=> d!2190495 (= (content!13497 lt!2514541) e!4223659)))

(declare-fun b!7026019 () Bool)

(assert (=> b!7026019 (= e!4223659 (as set.empty (Set Context!12876)))))

(declare-fun b!7026020 () Bool)

(assert (=> b!7026020 (= e!4223659 (set.union (set.insert (h!74180 lt!2514541) (as set.empty (Set Context!12876))) (content!13497 (t!381613 lt!2514541))))))

(assert (= (and d!2190495 c!1306057) b!7026019))

(assert (= (and d!2190495 (not c!1306057)) b!7026020))

(declare-fun m!7729388 () Bool)

(assert (=> b!7026020 m!7729388))

(declare-fun m!7729390 () Bool)

(assert (=> b!7026020 m!7729390))

(assert (=> b!7025760 d!2190495))

(assert (=> b!7025713 d!2190257))

(declare-fun d!2190497 () Bool)

(declare-fun res!2868147 () Bool)

(declare-fun e!4223660 () Bool)

(assert (=> d!2190497 (=> res!2868147 e!4223660)))

(assert (=> d!2190497 (= res!2868147 (is-Nil!67730 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306))))))

(assert (=> d!2190497 (= (forall!16346 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306)) lambda!412910) e!4223660)))

(declare-fun b!7026021 () Bool)

(declare-fun e!4223661 () Bool)

(assert (=> b!7026021 (= e!4223660 e!4223661)))

(declare-fun res!2868148 () Bool)

(assert (=> b!7026021 (=> (not res!2868148) (not e!4223661))))

(assert (=> b!7026021 (= res!2868148 (dynLambda!27316 lambda!412910 (h!74178 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306)))))))

(declare-fun b!7026022 () Bool)

(assert (=> b!7026022 (= e!4223661 (forall!16346 (t!381611 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306))) lambda!412910))))

(assert (= (and d!2190497 (not res!2868147)) b!7026021))

(assert (= (and b!7026021 res!2868148) b!7026022))

(declare-fun b_lambda!265623 () Bool)

(assert (=> (not b_lambda!265623) (not b!7026021)))

(declare-fun m!7729392 () Bool)

(assert (=> b!7026021 m!7729392))

(declare-fun m!7729394 () Bool)

(assert (=> b!7026022 m!7729394))

(assert (=> d!2190277 d!2190497))

(assert (=> d!2190277 d!2190275))

(declare-fun d!2190499 () Bool)

(assert (=> d!2190499 (forall!16346 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306)) lambda!412910)))

(assert (=> d!2190499 true))

(declare-fun _$78!550 () Unit!161547)

(assert (=> d!2190499 (= (choose!53080 (exprs!6938 lt!2514385) (exprs!6938 ct2!306) lambda!412910) _$78!550)))

(declare-fun bs!1868681 () Bool)

(assert (= bs!1868681 d!2190499))

(assert (=> bs!1868681 m!7728752))

(assert (=> bs!1868681 m!7728752))

(assert (=> bs!1868681 m!7728928))

(assert (=> d!2190277 d!2190499))

(declare-fun d!2190501 () Bool)

(declare-fun res!2868149 () Bool)

(declare-fun e!4223662 () Bool)

(assert (=> d!2190501 (=> res!2868149 e!4223662)))

(assert (=> d!2190501 (= res!2868149 (is-Nil!67730 (exprs!6938 lt!2514385)))))

(assert (=> d!2190501 (= (forall!16346 (exprs!6938 lt!2514385) lambda!412910) e!4223662)))

(declare-fun b!7026023 () Bool)

(declare-fun e!4223663 () Bool)

(assert (=> b!7026023 (= e!4223662 e!4223663)))

(declare-fun res!2868150 () Bool)

(assert (=> b!7026023 (=> (not res!2868150) (not e!4223663))))

(assert (=> b!7026023 (= res!2868150 (dynLambda!27316 lambda!412910 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun b!7026024 () Bool)

(assert (=> b!7026024 (= e!4223663 (forall!16346 (t!381611 (exprs!6938 lt!2514385)) lambda!412910))))

(assert (= (and d!2190501 (not res!2868149)) b!7026023))

(assert (= (and b!7026023 res!2868150) b!7026024))

(declare-fun b_lambda!265625 () Bool)

(assert (=> (not b_lambda!265625) (not b!7026023)))

(declare-fun m!7729396 () Bool)

(assert (=> b!7026023 m!7729396))

(declare-fun m!7729398 () Bool)

(assert (=> b!7026024 m!7729398))

(assert (=> d!2190277 d!2190501))

(assert (=> bs!1868605 d!2190315))

(declare-fun b!7026037 () Bool)

(declare-fun e!4223672 () Bool)

(assert (=> b!7026037 (= e!4223672 (dynLambda!27310 lambda!412908 (h!74180 (toList!10785 lt!2514386))))))

(declare-fun b!7026039 () Bool)

(declare-fun e!4223675 () Context!12876)

(declare-fun e!4223674 () Context!12876)

(assert (=> b!7026039 (= e!4223675 e!4223674)))

(declare-fun c!1306062 () Bool)

(assert (=> b!7026039 (= c!1306062 (is-Cons!67732 (toList!10785 lt!2514386)))))

(declare-fun b!7026040 () Bool)

(declare-fun lt!2514587 () Unit!161547)

(declare-fun Unit!161551 () Unit!161547)

(assert (=> b!7026040 (= lt!2514587 Unit!161551)))

(assert (=> b!7026040 false))

(declare-fun head!14241 (List!67856) Context!12876)

(assert (=> b!7026040 (= e!4223674 (head!14241 (toList!10785 lt!2514386)))))

(declare-fun b!7026041 () Bool)

(assert (=> b!7026041 (= e!4223675 (h!74180 (toList!10785 lt!2514386)))))

(declare-fun b!7026042 () Bool)

(declare-fun e!4223673 () Bool)

(declare-fun lt!2514588 () Context!12876)

(assert (=> b!7026042 (= e!4223673 (contains!20441 (toList!10785 lt!2514386) lt!2514588))))

(declare-fun b!7026038 () Bool)

(assert (=> b!7026038 (= e!4223674 (getWitness!1435 (t!381613 (toList!10785 lt!2514386)) lambda!412908))))

(declare-fun d!2190503 () Bool)

(assert (=> d!2190503 e!4223673))

(declare-fun res!2868156 () Bool)

(assert (=> d!2190503 (=> (not res!2868156) (not e!4223673))))

(assert (=> d!2190503 (= res!2868156 (dynLambda!27310 lambda!412908 lt!2514588))))

(assert (=> d!2190503 (= lt!2514588 e!4223675)))

(declare-fun c!1306063 () Bool)

(assert (=> d!2190503 (= c!1306063 e!4223672)))

(declare-fun res!2868155 () Bool)

(assert (=> d!2190503 (=> (not res!2868155) (not e!4223672))))

(assert (=> d!2190503 (= res!2868155 (is-Cons!67732 (toList!10785 lt!2514386)))))

(assert (=> d!2190503 (exists!3352 (toList!10785 lt!2514386) lambda!412908)))

(assert (=> d!2190503 (= (getWitness!1435 (toList!10785 lt!2514386) lambda!412908) lt!2514588)))

(assert (= (and d!2190503 res!2868155) b!7026037))

(assert (= (and d!2190503 c!1306063) b!7026041))

(assert (= (and d!2190503 (not c!1306063)) b!7026039))

(assert (= (and b!7026039 c!1306062) b!7026038))

(assert (= (and b!7026039 (not c!1306062)) b!7026040))

(assert (= (and d!2190503 res!2868156) b!7026042))

(declare-fun b_lambda!265627 () Bool)

(assert (=> (not b_lambda!265627) (not b!7026037)))

(declare-fun b_lambda!265629 () Bool)

(assert (=> (not b_lambda!265629) (not d!2190503)))

(declare-fun m!7729400 () Bool)

(assert (=> d!2190503 m!7729400))

(assert (=> d!2190503 m!7728780))

(declare-fun m!7729402 () Bool)

(assert (=> d!2190503 m!7729402))

(declare-fun m!7729404 () Bool)

(assert (=> b!7026038 m!7729404))

(assert (=> b!7026042 m!7728780))

(declare-fun m!7729406 () Bool)

(assert (=> b!7026042 m!7729406))

(assert (=> b!7026040 m!7728780))

(declare-fun m!7729408 () Bool)

(assert (=> b!7026040 m!7729408))

(declare-fun m!7729410 () Bool)

(assert (=> b!7026037 m!7729410))

(assert (=> d!2190305 d!2190503))

(assert (=> d!2190305 d!2190311))

(declare-fun d!2190505 () Bool)

(declare-fun lt!2514591 () Bool)

(assert (=> d!2190505 (= lt!2514591 (exists!3352 (toList!10785 lt!2514386) lambda!412908))))

(declare-fun choose!53095 ((Set Context!12876) Int) Bool)

(assert (=> d!2190505 (= lt!2514591 (choose!53095 lt!2514386 lambda!412908))))

(assert (=> d!2190505 (= (exists!3354 lt!2514386 lambda!412908) lt!2514591)))

(declare-fun bs!1868682 () Bool)

(assert (= bs!1868682 d!2190505))

(assert (=> bs!1868682 m!7728780))

(assert (=> bs!1868682 m!7728780))

(assert (=> bs!1868682 m!7729402))

(declare-fun m!7729412 () Bool)

(assert (=> bs!1868682 m!7729412))

(assert (=> d!2190305 d!2190505))

(declare-fun d!2190507 () Bool)

(declare-fun res!2868161 () Bool)

(declare-fun e!4223680 () Bool)

(assert (=> d!2190507 (=> res!2868161 e!4223680)))

(assert (=> d!2190507 (= res!2868161 (is-Nil!67732 lt!2514376))))

(assert (=> d!2190507 (= (forall!16347 lt!2514376 lambda!412975) e!4223680)))

(declare-fun b!7026047 () Bool)

(declare-fun e!4223681 () Bool)

(assert (=> b!7026047 (= e!4223680 e!4223681)))

(declare-fun res!2868162 () Bool)

(assert (=> b!7026047 (=> (not res!2868162) (not e!4223681))))

(assert (=> b!7026047 (= res!2868162 (dynLambda!27310 lambda!412975 (h!74180 lt!2514376)))))

(declare-fun b!7026048 () Bool)

(assert (=> b!7026048 (= e!4223681 (forall!16347 (t!381613 lt!2514376) lambda!412975))))

(assert (= (and d!2190507 (not res!2868161)) b!7026047))

(assert (= (and b!7026047 res!2868162) b!7026048))

(declare-fun b_lambda!265631 () Bool)

(assert (=> (not b_lambda!265631) (not b!7026047)))

(declare-fun m!7729414 () Bool)

(assert (=> b!7026047 m!7729414))

(declare-fun m!7729416 () Bool)

(assert (=> b!7026048 m!7729416))

(assert (=> d!2190309 d!2190507))

(declare-fun d!2190509 () Bool)

(declare-fun c!1306064 () Bool)

(assert (=> d!2190509 (= c!1306064 (isEmpty!39494 (tail!13515 (t!381612 s!7408))))))

(declare-fun e!4223682 () Bool)

(assert (=> d!2190509 (= (matchZipper!2982 (derivationStepZipper!2898 lt!2514375 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))) e!4223682)))

(declare-fun b!7026049 () Bool)

(assert (=> b!7026049 (= e!4223682 (nullableZipper!2563 (derivationStepZipper!2898 lt!2514375 (head!14239 (t!381612 s!7408)))))))

(declare-fun b!7026050 () Bool)

(assert (=> b!7026050 (= e!4223682 (matchZipper!2982 (derivationStepZipper!2898 (derivationStepZipper!2898 lt!2514375 (head!14239 (t!381612 s!7408))) (head!14239 (tail!13515 (t!381612 s!7408)))) (tail!13515 (tail!13515 (t!381612 s!7408)))))))

(assert (= (and d!2190509 c!1306064) b!7026049))

(assert (= (and d!2190509 (not c!1306064)) b!7026050))

(assert (=> d!2190509 m!7728880))

(assert (=> d!2190509 m!7729246))

(assert (=> b!7026049 m!7728972))

(declare-fun m!7729418 () Bool)

(assert (=> b!7026049 m!7729418))

(assert (=> b!7026050 m!7728880))

(assert (=> b!7026050 m!7729250))

(assert (=> b!7026050 m!7728972))

(assert (=> b!7026050 m!7729250))

(declare-fun m!7729420 () Bool)

(assert (=> b!7026050 m!7729420))

(assert (=> b!7026050 m!7728880))

(assert (=> b!7026050 m!7729254))

(assert (=> b!7026050 m!7729420))

(assert (=> b!7026050 m!7729254))

(declare-fun m!7729422 () Bool)

(assert (=> b!7026050 m!7729422))

(assert (=> b!7025710 d!2190509))

(declare-fun bs!1868683 () Bool)

(declare-fun d!2190511 () Bool)

(assert (= bs!1868683 (and d!2190511 d!2190479)))

(declare-fun lambda!413005 () Int)

(assert (=> bs!1868683 (= lambda!413005 lambda!413004)))

(declare-fun bs!1868684 () Bool)

(assert (= bs!1868684 (and d!2190511 d!2190411)))

(assert (=> bs!1868684 (= lambda!413005 lambda!412996)))

(declare-fun bs!1868685 () Bool)

(assert (= bs!1868685 (and d!2190511 b!7025574)))

(assert (=> bs!1868685 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413005 lambda!412911))))

(declare-fun bs!1868686 () Bool)

(assert (= bs!1868686 (and d!2190511 d!2190313)))

(assert (=> bs!1868686 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413005 lambda!412976))))

(declare-fun bs!1868687 () Bool)

(assert (= bs!1868687 (and d!2190511 d!2190447)))

(assert (=> bs!1868687 (= (= (head!14239 (t!381612 s!7408)) (head!14239 s!7408)) (= lambda!413005 lambda!413001))))

(declare-fun bs!1868688 () Bool)

(assert (= bs!1868688 (and d!2190511 d!2190285)))

(assert (=> bs!1868688 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413005 lambda!412968))))

(assert (=> d!2190511 true))

(assert (=> d!2190511 (= (derivationStepZipper!2898 lt!2514375 (head!14239 (t!381612 s!7408))) (flatMap!2389 lt!2514375 lambda!413005))))

(declare-fun bs!1868689 () Bool)

(assert (= bs!1868689 d!2190511))

(declare-fun m!7729424 () Bool)

(assert (=> bs!1868689 m!7729424))

(assert (=> b!7025710 d!2190511))

(assert (=> b!7025710 d!2190413))

(assert (=> b!7025710 d!2190415))

(declare-fun d!2190513 () Bool)

(declare-fun res!2868163 () Bool)

(declare-fun e!4223683 () Bool)

(assert (=> d!2190513 (=> res!2868163 e!4223683)))

(assert (=> d!2190513 (= res!2868163 (is-Nil!67730 (exprs!6938 ct2!306)))))

(assert (=> d!2190513 (= (forall!16346 (exprs!6938 ct2!306) lambda!412965) e!4223683)))

(declare-fun b!7026051 () Bool)

(declare-fun e!4223684 () Bool)

(assert (=> b!7026051 (= e!4223683 e!4223684)))

(declare-fun res!2868164 () Bool)

(assert (=> b!7026051 (=> (not res!2868164) (not e!4223684))))

(assert (=> b!7026051 (= res!2868164 (dynLambda!27316 lambda!412965 (h!74178 (exprs!6938 ct2!306))))))

(declare-fun b!7026052 () Bool)

(assert (=> b!7026052 (= e!4223684 (forall!16346 (t!381611 (exprs!6938 ct2!306)) lambda!412965))))

(assert (= (and d!2190513 (not res!2868163)) b!7026051))

(assert (= (and b!7026051 res!2868164) b!7026052))

(declare-fun b_lambda!265633 () Bool)

(assert (=> (not b_lambda!265633) (not b!7026051)))

(declare-fun m!7729426 () Bool)

(assert (=> b!7026051 m!7729426))

(declare-fun m!7729428 () Bool)

(assert (=> b!7026052 m!7729428))

(assert (=> d!2190271 d!2190513))

(declare-fun d!2190515 () Bool)

(declare-fun c!1306065 () Bool)

(assert (=> d!2190515 (= c!1306065 (is-Nil!67730 lt!2514521))))

(declare-fun e!4223685 () (Set Regex!17442))

(assert (=> d!2190515 (= (content!13496 lt!2514521) e!4223685)))

(declare-fun b!7026053 () Bool)

(assert (=> b!7026053 (= e!4223685 (as set.empty (Set Regex!17442)))))

(declare-fun b!7026054 () Bool)

(assert (=> b!7026054 (= e!4223685 (set.union (set.insert (h!74178 lt!2514521) (as set.empty (Set Regex!17442))) (content!13496 (t!381611 lt!2514521))))))

(assert (= (and d!2190515 c!1306065) b!7026053))

(assert (= (and d!2190515 (not c!1306065)) b!7026054))

(declare-fun m!7729430 () Bool)

(assert (=> b!7026054 m!7729430))

(declare-fun m!7729432 () Bool)

(assert (=> b!7026054 m!7729432))

(assert (=> d!2190275 d!2190515))

(declare-fun d!2190517 () Bool)

(declare-fun c!1306066 () Bool)

(assert (=> d!2190517 (= c!1306066 (is-Nil!67730 (exprs!6938 lt!2514385)))))

(declare-fun e!4223686 () (Set Regex!17442))

(assert (=> d!2190517 (= (content!13496 (exprs!6938 lt!2514385)) e!4223686)))

(declare-fun b!7026055 () Bool)

(assert (=> b!7026055 (= e!4223686 (as set.empty (Set Regex!17442)))))

(declare-fun b!7026056 () Bool)

(assert (=> b!7026056 (= e!4223686 (set.union (set.insert (h!74178 (exprs!6938 lt!2514385)) (as set.empty (Set Regex!17442))) (content!13496 (t!381611 (exprs!6938 lt!2514385)))))))

(assert (= (and d!2190517 c!1306066) b!7026055))

(assert (= (and d!2190517 (not c!1306066)) b!7026056))

(declare-fun m!7729434 () Bool)

(assert (=> b!7026056 m!7729434))

(declare-fun m!7729436 () Bool)

(assert (=> b!7026056 m!7729436))

(assert (=> d!2190275 d!2190517))

(assert (=> d!2190275 d!2190431))

(declare-fun b!7026058 () Bool)

(declare-fun c!1306069 () Bool)

(declare-fun e!4223692 () Bool)

(assert (=> b!7026058 (= c!1306069 e!4223692)))

(declare-fun res!2868165 () Bool)

(assert (=> b!7026058 (=> (not res!2868165) (not e!4223692))))

(assert (=> b!7026058 (= res!2868165 (is-Concat!26287 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))))))

(declare-fun e!4223688 () (Set Context!12876))

(declare-fun e!4223690 () (Set Context!12876))

(assert (=> b!7026058 (= e!4223688 e!4223690)))

(declare-fun bm!637901 () Bool)

(declare-fun call!637909 () (Set Context!12876))

(declare-fun call!637911 () (Set Context!12876))

(assert (=> bm!637901 (= call!637909 call!637911)))

(declare-fun bm!637902 () Bool)

(declare-fun c!1306070 () Bool)

(declare-fun c!1306071 () Bool)

(declare-fun call!637908 () (Set Context!12876))

(declare-fun call!637910 () List!67854)

(assert (=> bm!637902 (= call!637908 (derivationStepZipperDown!2106 (ite c!1306070 (regTwo!35397 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))) (ite c!1306069 (regTwo!35396 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))) (ite c!1306071 (regOne!35396 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))) (reg!17771 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))))))) (ite (or c!1306070 c!1306069) (ite c!1305977 lt!2514404 (Context!12877 call!637865)) (Context!12877 call!637910)) (h!74179 s!7408)))))

(declare-fun b!7026059 () Bool)

(declare-fun c!1306067 () Bool)

(assert (=> b!7026059 (= c!1306067 (is-Star!17442 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))))))

(declare-fun e!4223689 () (Set Context!12876))

(declare-fun e!4223687 () (Set Context!12876))

(assert (=> b!7026059 (= e!4223689 e!4223687)))

(declare-fun b!7026060 () Bool)

(assert (=> b!7026060 (= e!4223687 call!637909)))

(declare-fun d!2190519 () Bool)

(declare-fun c!1306068 () Bool)

(assert (=> d!2190519 (= c!1306068 (and (is-ElementMatch!17442 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))) (= (c!1305931 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))) (h!74179 s!7408))))))

(declare-fun e!4223691 () (Set Context!12876))

(assert (=> d!2190519 (= (derivationStepZipperDown!2106 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))) (ite c!1305977 lt!2514404 (Context!12877 call!637865)) (h!74179 s!7408)) e!4223691)))

(declare-fun b!7026057 () Bool)

(assert (=> b!7026057 (= e!4223687 (as set.empty (Set Context!12876)))))

(declare-fun bm!637903 () Bool)

(declare-fun call!637907 () List!67854)

(assert (=> bm!637903 (= call!637907 ($colon$colon!2558 (exprs!6938 (ite c!1305977 lt!2514404 (Context!12877 call!637865))) (ite (or c!1306069 c!1306071) (regTwo!35396 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))) (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))))))))

(declare-fun bm!637904 () Bool)

(assert (=> bm!637904 (= call!637910 call!637907)))

(declare-fun b!7026061 () Bool)

(declare-fun call!637906 () (Set Context!12876))

(assert (=> b!7026061 (= e!4223690 (set.union call!637906 call!637911))))

(declare-fun b!7026062 () Bool)

(assert (=> b!7026062 (= e!4223689 call!637909)))

(declare-fun b!7026063 () Bool)

(assert (=> b!7026063 (= e!4223692 (nullable!7153 (regOne!35396 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))))))))

(declare-fun bm!637905 () Bool)

(assert (=> bm!637905 (= call!637906 (derivationStepZipperDown!2106 (ite c!1306070 (regOne!35397 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))) (regOne!35396 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385)))))) (ite c!1306070 (ite c!1305977 lt!2514404 (Context!12877 call!637865)) (Context!12877 call!637907)) (h!74179 s!7408)))))

(declare-fun bm!637906 () Bool)

(assert (=> bm!637906 (= call!637911 call!637908)))

(declare-fun b!7026064 () Bool)

(assert (=> b!7026064 (= e!4223691 e!4223688)))

(assert (=> b!7026064 (= c!1306070 (is-Union!17442 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))))))

(declare-fun b!7026065 () Bool)

(assert (=> b!7026065 (= e!4223688 (set.union call!637906 call!637908))))

(declare-fun b!7026066 () Bool)

(assert (=> b!7026066 (= e!4223691 (set.insert (ite c!1305977 lt!2514404 (Context!12877 call!637865)) (as set.empty (Set Context!12876))))))

(declare-fun b!7026067 () Bool)

(assert (=> b!7026067 (= e!4223690 e!4223689)))

(assert (=> b!7026067 (= c!1306071 (is-Concat!26287 (ite c!1305977 (regOne!35397 (h!74178 (exprs!6938 lt!2514385))) (regOne!35396 (h!74178 (exprs!6938 lt!2514385))))))))

(assert (= (and d!2190519 c!1306068) b!7026066))

(assert (= (and d!2190519 (not c!1306068)) b!7026064))

(assert (= (and b!7026064 c!1306070) b!7026065))

(assert (= (and b!7026064 (not c!1306070)) b!7026058))

(assert (= (and b!7026058 res!2868165) b!7026063))

(assert (= (and b!7026058 c!1306069) b!7026061))

(assert (= (and b!7026058 (not c!1306069)) b!7026067))

(assert (= (and b!7026067 c!1306071) b!7026062))

(assert (= (and b!7026067 (not c!1306071)) b!7026059))

(assert (= (and b!7026059 c!1306067) b!7026060))

(assert (= (and b!7026059 (not c!1306067)) b!7026057))

(assert (= (or b!7026062 b!7026060) bm!637904))

(assert (= (or b!7026062 b!7026060) bm!637901))

(assert (= (or b!7026061 bm!637901) bm!637906))

(assert (= (or b!7026061 bm!637904) bm!637903))

(assert (= (or b!7026065 b!7026061) bm!637905))

(assert (= (or b!7026065 bm!637906) bm!637902))

(declare-fun m!7729438 () Bool)

(assert (=> b!7026063 m!7729438))

(declare-fun m!7729440 () Bool)

(assert (=> bm!637902 m!7729440))

(declare-fun m!7729442 () Bool)

(assert (=> bm!637905 m!7729442))

(declare-fun m!7729444 () Bool)

(assert (=> b!7026066 m!7729444))

(declare-fun m!7729446 () Bool)

(assert (=> bm!637903 m!7729446))

(assert (=> bm!637863 d!2190519))

(declare-fun d!2190521 () Bool)

(declare-fun c!1306072 () Bool)

(assert (=> d!2190521 (= c!1306072 (isEmpty!39494 (tail!13515 s!7408)))))

(declare-fun e!4223693 () Bool)

(assert (=> d!2190521 (= (matchZipper!2982 (derivationStepZipper!2898 lt!2514393 (head!14239 s!7408)) (tail!13515 s!7408)) e!4223693)))

(declare-fun b!7026068 () Bool)

(assert (=> b!7026068 (= e!4223693 (nullableZipper!2563 (derivationStepZipper!2898 lt!2514393 (head!14239 s!7408))))))

(declare-fun b!7026069 () Bool)

(assert (=> b!7026069 (= e!4223693 (matchZipper!2982 (derivationStepZipper!2898 (derivationStepZipper!2898 lt!2514393 (head!14239 s!7408)) (head!14239 (tail!13515 s!7408))) (tail!13515 (tail!13515 s!7408))))))

(assert (= (and d!2190521 c!1306072) b!7026068))

(assert (= (and d!2190521 (not c!1306072)) b!7026069))

(assert (=> d!2190521 m!7728900))

(assert (=> d!2190521 m!7729290))

(assert (=> b!7026068 m!7729002))

(declare-fun m!7729448 () Bool)

(assert (=> b!7026068 m!7729448))

(assert (=> b!7026069 m!7728900))

(assert (=> b!7026069 m!7729294))

(assert (=> b!7026069 m!7729002))

(assert (=> b!7026069 m!7729294))

(declare-fun m!7729450 () Bool)

(assert (=> b!7026069 m!7729450))

(assert (=> b!7026069 m!7728900))

(assert (=> b!7026069 m!7729298))

(assert (=> b!7026069 m!7729450))

(assert (=> b!7026069 m!7729298))

(declare-fun m!7729452 () Bool)

(assert (=> b!7026069 m!7729452))

(assert (=> b!7025752 d!2190521))

(declare-fun bs!1868690 () Bool)

(declare-fun d!2190523 () Bool)

(assert (= bs!1868690 (and d!2190523 d!2190479)))

(declare-fun lambda!413006 () Int)

(assert (=> bs!1868690 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413006 lambda!413004))))

(declare-fun bs!1868691 () Bool)

(assert (= bs!1868691 (and d!2190523 d!2190411)))

(assert (=> bs!1868691 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413006 lambda!412996))))

(declare-fun bs!1868692 () Bool)

(assert (= bs!1868692 (and d!2190523 b!7025574)))

(assert (=> bs!1868692 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413006 lambda!412911))))

(declare-fun bs!1868693 () Bool)

(assert (= bs!1868693 (and d!2190523 d!2190511)))

(assert (=> bs!1868693 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413006 lambda!413005))))

(declare-fun bs!1868694 () Bool)

(assert (= bs!1868694 (and d!2190523 d!2190313)))

(assert (=> bs!1868694 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413006 lambda!412976))))

(declare-fun bs!1868695 () Bool)

(assert (= bs!1868695 (and d!2190523 d!2190447)))

(assert (=> bs!1868695 (= lambda!413006 lambda!413001)))

(declare-fun bs!1868696 () Bool)

(assert (= bs!1868696 (and d!2190523 d!2190285)))

(assert (=> bs!1868696 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413006 lambda!412968))))

(assert (=> d!2190523 true))

(assert (=> d!2190523 (= (derivationStepZipper!2898 lt!2514393 (head!14239 s!7408)) (flatMap!2389 lt!2514393 lambda!413006))))

(declare-fun bs!1868697 () Bool)

(assert (= bs!1868697 d!2190523))

(declare-fun m!7729454 () Bool)

(assert (=> bs!1868697 m!7729454))

(assert (=> b!7025752 d!2190523))

(assert (=> b!7025752 d!2190449))

(assert (=> b!7025752 d!2190451))

(declare-fun d!2190525 () Bool)

(assert (=> d!2190525 (= (flatMap!2389 lt!2514391 lambda!412968) (choose!53082 lt!2514391 lambda!412968))))

(declare-fun bs!1868698 () Bool)

(assert (= bs!1868698 d!2190525))

(declare-fun m!7729456 () Bool)

(assert (=> bs!1868698 m!7729456))

(assert (=> d!2190285 d!2190525))

(assert (=> d!2190293 d!2190437))

(declare-fun bs!1868699 () Bool)

(declare-fun d!2190527 () Bool)

(assert (= bs!1868699 (and d!2190527 d!2190307)))

(declare-fun lambda!413007 () Int)

(assert (=> bs!1868699 (not (= lambda!413007 lambda!412972))))

(declare-fun bs!1868700 () Bool)

(assert (= bs!1868700 (and d!2190527 d!2190309)))

(assert (=> bs!1868700 (not (= lambda!413007 lambda!412975))))

(declare-fun bs!1868701 () Bool)

(assert (= bs!1868701 (and d!2190527 d!2190421)))

(assert (=> bs!1868701 (= lambda!413007 lambda!412999)))

(declare-fun bs!1868702 () Bool)

(assert (= bs!1868702 (and d!2190527 d!2190423)))

(assert (=> bs!1868702 (= lambda!413007 lambda!413000)))

(declare-fun bs!1868703 () Bool)

(assert (= bs!1868703 (and d!2190527 d!2190465)))

(assert (=> bs!1868703 (= lambda!413007 lambda!413002)))

(declare-fun bs!1868704 () Bool)

(assert (= bs!1868704 (and d!2190527 b!7025584)))

(assert (=> bs!1868704 (not (= lambda!413007 lambda!412908))))

(declare-fun bs!1868705 () Bool)

(assert (= bs!1868705 (and d!2190527 d!2190475)))

(assert (=> bs!1868705 (= lambda!413007 lambda!413003)))

(assert (=> d!2190527 (= (nullableZipper!2563 lt!2514382) (exists!3354 lt!2514382 lambda!413007))))

(declare-fun bs!1868706 () Bool)

(assert (= bs!1868706 d!2190527))

(declare-fun m!7729458 () Bool)

(assert (=> bs!1868706 m!7729458))

(assert (=> b!7025705 d!2190527))

(declare-fun d!2190529 () Bool)

(assert (=> d!2190529 (= (map!15731 z1!570 lambda!412962) (choose!53094 z1!570 lambda!412962))))

(declare-fun bs!1868707 () Bool)

(assert (= bs!1868707 d!2190529))

(declare-fun m!7729460 () Bool)

(assert (=> bs!1868707 m!7729460))

(assert (=> d!2190269 d!2190529))

(declare-fun bs!1868708 () Bool)

(declare-fun d!2190531 () Bool)

(assert (= bs!1868708 (and d!2190531 d!2190307)))

(declare-fun lambda!413008 () Int)

(assert (=> bs!1868708 (not (= lambda!413008 lambda!412972))))

(declare-fun bs!1868709 () Bool)

(assert (= bs!1868709 (and d!2190531 d!2190309)))

(assert (=> bs!1868709 (= (= lambda!412972 lambda!412908) (= lambda!413008 lambda!412975))))

(declare-fun bs!1868710 () Bool)

(assert (= bs!1868710 (and d!2190531 d!2190421)))

(assert (=> bs!1868710 (not (= lambda!413008 lambda!412999))))

(declare-fun bs!1868711 () Bool)

(assert (= bs!1868711 (and d!2190531 d!2190465)))

(assert (=> bs!1868711 (not (= lambda!413008 lambda!413002))))

(declare-fun bs!1868712 () Bool)

(assert (= bs!1868712 (and d!2190531 d!2190527)))

(assert (=> bs!1868712 (not (= lambda!413008 lambda!413007))))

(declare-fun bs!1868713 () Bool)

(assert (= bs!1868713 (and d!2190531 d!2190423)))

(assert (=> bs!1868713 (not (= lambda!413008 lambda!413000))))

(declare-fun bs!1868714 () Bool)

(assert (= bs!1868714 (and d!2190531 b!7025584)))

(assert (=> bs!1868714 (not (= lambda!413008 lambda!412908))))

(declare-fun bs!1868715 () Bool)

(assert (= bs!1868715 (and d!2190531 d!2190475)))

(assert (=> bs!1868715 (not (= lambda!413008 lambda!413003))))

(assert (=> d!2190531 true))

(assert (=> d!2190531 (< (dynLambda!27311 order!28141 lambda!412972) (dynLambda!27311 order!28141 lambda!413008))))

(assert (=> d!2190531 (= (exists!3352 lt!2514376 lambda!412972) (not (forall!16347 lt!2514376 lambda!413008)))))

(declare-fun bs!1868716 () Bool)

(assert (= bs!1868716 d!2190531))

(declare-fun m!7729462 () Bool)

(assert (=> bs!1868716 m!7729462))

(assert (=> d!2190307 d!2190531))

(declare-fun bs!1868717 () Bool)

(declare-fun d!2190533 () Bool)

(assert (= bs!1868717 (and d!2190533 d!2190307)))

(declare-fun lambda!413011 () Int)

(assert (=> bs!1868717 (= lambda!413011 lambda!412972)))

(declare-fun bs!1868718 () Bool)

(assert (= bs!1868718 (and d!2190533 d!2190309)))

(assert (=> bs!1868718 (not (= lambda!413011 lambda!412975))))

(declare-fun bs!1868719 () Bool)

(assert (= bs!1868719 (and d!2190533 d!2190421)))

(assert (=> bs!1868719 (not (= lambda!413011 lambda!412999))))

(declare-fun bs!1868720 () Bool)

(assert (= bs!1868720 (and d!2190533 d!2190465)))

(assert (=> bs!1868720 (not (= lambda!413011 lambda!413002))))

(declare-fun bs!1868721 () Bool)

(assert (= bs!1868721 (and d!2190533 d!2190531)))

(assert (=> bs!1868721 (not (= lambda!413011 lambda!413008))))

(declare-fun bs!1868722 () Bool)

(assert (= bs!1868722 (and d!2190533 d!2190527)))

(assert (=> bs!1868722 (not (= lambda!413011 lambda!413007))))

(declare-fun bs!1868723 () Bool)

(assert (= bs!1868723 (and d!2190533 d!2190423)))

(assert (=> bs!1868723 (not (= lambda!413011 lambda!413000))))

(declare-fun bs!1868724 () Bool)

(assert (= bs!1868724 (and d!2190533 b!7025584)))

(assert (=> bs!1868724 (= lambda!413011 lambda!412908)))

(declare-fun bs!1868725 () Bool)

(assert (= bs!1868725 (and d!2190533 d!2190475)))

(assert (=> bs!1868725 (not (= lambda!413011 lambda!413003))))

(assert (=> d!2190533 true))

(assert (=> d!2190533 (exists!3352 lt!2514376 lambda!413011)))

(assert (=> d!2190533 true))

(declare-fun _$60!1099 () Unit!161547)

(assert (=> d!2190533 (= (choose!53085 lt!2514376 s!7408) _$60!1099)))

(declare-fun bs!1868726 () Bool)

(assert (= bs!1868726 d!2190533))

(declare-fun m!7729464 () Bool)

(assert (=> bs!1868726 m!7729464))

(assert (=> d!2190307 d!2190533))

(declare-fun d!2190535 () Bool)

(declare-fun c!1306075 () Bool)

(assert (=> d!2190535 (= c!1306075 (isEmpty!39494 s!7408))))

(declare-fun e!4223694 () Bool)

(assert (=> d!2190535 (= (matchZipper!2982 (content!13497 lt!2514376) s!7408) e!4223694)))

(declare-fun b!7026070 () Bool)

(assert (=> b!7026070 (= e!4223694 (nullableZipper!2563 (content!13497 lt!2514376)))))

(declare-fun b!7026071 () Bool)

(assert (=> b!7026071 (= e!4223694 (matchZipper!2982 (derivationStepZipper!2898 (content!13497 lt!2514376) (head!14239 s!7408)) (tail!13515 s!7408)))))

(assert (= (and d!2190535 c!1306075) b!7026070))

(assert (= (and d!2190535 (not c!1306075)) b!7026071))

(assert (=> d!2190535 m!7728892))

(assert (=> b!7026070 m!7729018))

(declare-fun m!7729466 () Bool)

(assert (=> b!7026070 m!7729466))

(assert (=> b!7026071 m!7728896))

(assert (=> b!7026071 m!7729018))

(assert (=> b!7026071 m!7728896))

(declare-fun m!7729468 () Bool)

(assert (=> b!7026071 m!7729468))

(assert (=> b!7026071 m!7728900))

(assert (=> b!7026071 m!7729468))

(assert (=> b!7026071 m!7728900))

(declare-fun m!7729470 () Bool)

(assert (=> b!7026071 m!7729470))

(assert (=> d!2190307 d!2190535))

(declare-fun d!2190537 () Bool)

(declare-fun c!1306076 () Bool)

(assert (=> d!2190537 (= c!1306076 (is-Nil!67732 lt!2514376))))

(declare-fun e!4223695 () (Set Context!12876))

(assert (=> d!2190537 (= (content!13497 lt!2514376) e!4223695)))

(declare-fun b!7026072 () Bool)

(assert (=> b!7026072 (= e!4223695 (as set.empty (Set Context!12876)))))

(declare-fun b!7026073 () Bool)

(assert (=> b!7026073 (= e!4223695 (set.union (set.insert (h!74180 lt!2514376) (as set.empty (Set Context!12876))) (content!13497 (t!381613 lt!2514376))))))

(assert (= (and d!2190537 c!1306076) b!7026072))

(assert (= (and d!2190537 (not c!1306076)) b!7026073))

(declare-fun m!7729472 () Bool)

(assert (=> b!7026073 m!7729472))

(declare-fun m!7729474 () Bool)

(assert (=> b!7026073 m!7729474))

(assert (=> d!2190307 d!2190537))

(assert (=> d!2190257 d!2190437))

(declare-fun b!7026075 () Bool)

(declare-fun c!1306079 () Bool)

(declare-fun e!4223701 () Bool)

(assert (=> b!7026075 (= c!1306079 e!4223701)))

(declare-fun res!2868166 () Bool)

(assert (=> b!7026075 (=> (not res!2868166) (not e!4223701))))

(assert (=> b!7026075 (= res!2868166 (is-Concat!26287 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))))))

(declare-fun e!4223697 () (Set Context!12876))

(declare-fun e!4223699 () (Set Context!12876))

(assert (=> b!7026075 (= e!4223697 e!4223699)))

(declare-fun bm!637907 () Bool)

(declare-fun call!637915 () (Set Context!12876))

(declare-fun call!637917 () (Set Context!12876))

(assert (=> bm!637907 (= call!637915 call!637917)))

(declare-fun call!637916 () List!67854)

(declare-fun call!637914 () (Set Context!12876))

(declare-fun c!1306080 () Bool)

(declare-fun bm!637908 () Bool)

(declare-fun c!1306081 () Bool)

(assert (=> bm!637908 (= call!637914 (derivationStepZipperDown!2106 (ite c!1306080 (regTwo!35397 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))) (ite c!1306079 (regTwo!35396 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))) (ite c!1306081 (regOne!35396 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))) (reg!17771 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385)))))))))) (ite (or c!1306080 c!1306079) (ite (or c!1305977 c!1305976) lt!2514404 (Context!12877 call!637868)) (Context!12877 call!637916)) (h!74179 s!7408)))))

(declare-fun b!7026076 () Bool)

(declare-fun c!1306077 () Bool)

(assert (=> b!7026076 (= c!1306077 (is-Star!17442 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))))))

(declare-fun e!4223698 () (Set Context!12876))

(declare-fun e!4223696 () (Set Context!12876))

(assert (=> b!7026076 (= e!4223698 e!4223696)))

(declare-fun b!7026077 () Bool)

(assert (=> b!7026077 (= e!4223696 call!637915)))

(declare-fun c!1306078 () Bool)

(declare-fun d!2190539 () Bool)

(assert (=> d!2190539 (= c!1306078 (and (is-ElementMatch!17442 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))) (= (c!1305931 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))) (h!74179 s!7408))))))

(declare-fun e!4223700 () (Set Context!12876))

(assert (=> d!2190539 (= (derivationStepZipperDown!2106 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385)))))) (ite (or c!1305977 c!1305976) lt!2514404 (Context!12877 call!637868)) (h!74179 s!7408)) e!4223700)))

(declare-fun b!7026074 () Bool)

(assert (=> b!7026074 (= e!4223696 (as set.empty (Set Context!12876)))))

(declare-fun call!637913 () List!67854)

(declare-fun bm!637909 () Bool)

(assert (=> bm!637909 (= call!637913 ($colon$colon!2558 (exprs!6938 (ite (or c!1305977 c!1305976) lt!2514404 (Context!12877 call!637868))) (ite (or c!1306079 c!1306081) (regTwo!35396 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))) (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385)))))))))))

(declare-fun bm!637910 () Bool)

(assert (=> bm!637910 (= call!637916 call!637913)))

(declare-fun b!7026078 () Bool)

(declare-fun call!637912 () (Set Context!12876))

(assert (=> b!7026078 (= e!4223699 (set.union call!637912 call!637917))))

(declare-fun b!7026079 () Bool)

(assert (=> b!7026079 (= e!4223698 call!637915)))

(declare-fun b!7026080 () Bool)

(assert (=> b!7026080 (= e!4223701 (nullable!7153 (regOne!35396 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385)))))))))))

(declare-fun bm!637911 () Bool)

(assert (=> bm!637911 (= call!637912 (derivationStepZipperDown!2106 (ite c!1306080 (regOne!35397 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))) (regOne!35396 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385)))))))) (ite c!1306080 (ite (or c!1305977 c!1305976) lt!2514404 (Context!12877 call!637868)) (Context!12877 call!637913)) (h!74179 s!7408)))))

(declare-fun bm!637912 () Bool)

(assert (=> bm!637912 (= call!637917 call!637914)))

(declare-fun b!7026081 () Bool)

(assert (=> b!7026081 (= e!4223700 e!4223697)))

(assert (=> b!7026081 (= c!1306080 (is-Union!17442 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))))))

(declare-fun b!7026082 () Bool)

(assert (=> b!7026082 (= e!4223697 (set.union call!637912 call!637914))))

(declare-fun b!7026083 () Bool)

(assert (=> b!7026083 (= e!4223700 (set.insert (ite (or c!1305977 c!1305976) lt!2514404 (Context!12877 call!637868)) (as set.empty (Set Context!12876))))))

(declare-fun b!7026084 () Bool)

(assert (=> b!7026084 (= e!4223699 e!4223698)))

(assert (=> b!7026084 (= c!1306081 (is-Concat!26287 (ite c!1305977 (regTwo!35397 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305976 (regTwo!35396 (h!74178 (exprs!6938 lt!2514385))) (ite c!1305978 (regOne!35396 (h!74178 (exprs!6938 lt!2514385))) (reg!17771 (h!74178 (exprs!6938 lt!2514385))))))))))

(assert (= (and d!2190539 c!1306078) b!7026083))

(assert (= (and d!2190539 (not c!1306078)) b!7026081))

(assert (= (and b!7026081 c!1306080) b!7026082))

(assert (= (and b!7026081 (not c!1306080)) b!7026075))

(assert (= (and b!7026075 res!2868166) b!7026080))

(assert (= (and b!7026075 c!1306079) b!7026078))

(assert (= (and b!7026075 (not c!1306079)) b!7026084))

(assert (= (and b!7026084 c!1306081) b!7026079))

(assert (= (and b!7026084 (not c!1306081)) b!7026076))

(assert (= (and b!7026076 c!1306077) b!7026077))

(assert (= (and b!7026076 (not c!1306077)) b!7026074))

(assert (= (or b!7026079 b!7026077) bm!637910))

(assert (= (or b!7026079 b!7026077) bm!637907))

(assert (= (or b!7026078 bm!637907) bm!637912))

(assert (= (or b!7026078 bm!637910) bm!637909))

(assert (= (or b!7026082 b!7026078) bm!637911))

(assert (= (or b!7026082 bm!637912) bm!637908))

(declare-fun m!7729476 () Bool)

(assert (=> b!7026080 m!7729476))

(declare-fun m!7729478 () Bool)

(assert (=> bm!637908 m!7729478))

(declare-fun m!7729480 () Bool)

(assert (=> bm!637911 m!7729480))

(declare-fun m!7729482 () Bool)

(assert (=> b!7026083 m!7729482))

(declare-fun m!7729484 () Bool)

(assert (=> bm!637909 m!7729484))

(assert (=> bm!637860 d!2190539))

(declare-fun bs!1868727 () Bool)

(declare-fun d!2190541 () Bool)

(assert (= bs!1868727 (and d!2190541 b!7025570)))

(declare-fun lambda!413012 () Int)

(assert (=> bs!1868727 (= lambda!413012 lambda!412910)))

(declare-fun bs!1868728 () Bool)

(assert (= bs!1868728 (and d!2190541 d!2190271)))

(assert (=> bs!1868728 (= lambda!413012 lambda!412965)))

(declare-fun bs!1868729 () Bool)

(assert (= bs!1868729 (and d!2190541 d!2190297)))

(assert (=> bs!1868729 (= lambda!413012 lambda!412969)))

(assert (=> d!2190541 (= (inv!86465 setElem!48979) (forall!16346 (exprs!6938 setElem!48979) lambda!413012))))

(declare-fun bs!1868730 () Bool)

(assert (= bs!1868730 d!2190541))

(declare-fun m!7729486 () Bool)

(assert (=> bs!1868730 m!7729486))

(assert (=> setNonEmpty!48979 d!2190541))

(declare-fun b!7026086 () Bool)

(declare-fun c!1306084 () Bool)

(declare-fun e!4223707 () Bool)

(assert (=> b!7026086 (= c!1306084 e!4223707)))

(declare-fun res!2868167 () Bool)

(assert (=> b!7026086 (=> (not res!2868167) (not e!4223707))))

(assert (=> b!7026086 (= res!2868167 (is-Concat!26287 (h!74178 (exprs!6938 lt!2514383))))))

(declare-fun e!4223703 () (Set Context!12876))

(declare-fun e!4223705 () (Set Context!12876))

(assert (=> b!7026086 (= e!4223703 e!4223705)))

(declare-fun bm!637913 () Bool)

(declare-fun call!637921 () (Set Context!12876))

(declare-fun call!637923 () (Set Context!12876))

(assert (=> bm!637913 (= call!637921 call!637923)))

(declare-fun c!1306085 () Bool)

(declare-fun c!1306086 () Bool)

(declare-fun call!637922 () List!67854)

(declare-fun call!637920 () (Set Context!12876))

(declare-fun bm!637914 () Bool)

(assert (=> bm!637914 (= call!637920 (derivationStepZipperDown!2106 (ite c!1306085 (regTwo!35397 (h!74178 (exprs!6938 lt!2514383))) (ite c!1306084 (regTwo!35396 (h!74178 (exprs!6938 lt!2514383))) (ite c!1306086 (regOne!35396 (h!74178 (exprs!6938 lt!2514383))) (reg!17771 (h!74178 (exprs!6938 lt!2514383)))))) (ite (or c!1306085 c!1306084) (Context!12877 (t!381611 (exprs!6938 lt!2514383))) (Context!12877 call!637922)) (h!74179 s!7408)))))

(declare-fun b!7026087 () Bool)

(declare-fun c!1306082 () Bool)

(assert (=> b!7026087 (= c!1306082 (is-Star!17442 (h!74178 (exprs!6938 lt!2514383))))))

(declare-fun e!4223704 () (Set Context!12876))

(declare-fun e!4223702 () (Set Context!12876))

(assert (=> b!7026087 (= e!4223704 e!4223702)))

(declare-fun b!7026088 () Bool)

(assert (=> b!7026088 (= e!4223702 call!637921)))

(declare-fun d!2190543 () Bool)

(declare-fun c!1306083 () Bool)

(assert (=> d!2190543 (= c!1306083 (and (is-ElementMatch!17442 (h!74178 (exprs!6938 lt!2514383))) (= (c!1305931 (h!74178 (exprs!6938 lt!2514383))) (h!74179 s!7408))))))

(declare-fun e!4223706 () (Set Context!12876))

(assert (=> d!2190543 (= (derivationStepZipperDown!2106 (h!74178 (exprs!6938 lt!2514383)) (Context!12877 (t!381611 (exprs!6938 lt!2514383))) (h!74179 s!7408)) e!4223706)))

(declare-fun b!7026085 () Bool)

(assert (=> b!7026085 (= e!4223702 (as set.empty (Set Context!12876)))))

(declare-fun call!637919 () List!67854)

(declare-fun bm!637915 () Bool)

(assert (=> bm!637915 (= call!637919 ($colon$colon!2558 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514383)))) (ite (or c!1306084 c!1306086) (regTwo!35396 (h!74178 (exprs!6938 lt!2514383))) (h!74178 (exprs!6938 lt!2514383)))))))

(declare-fun bm!637916 () Bool)

(assert (=> bm!637916 (= call!637922 call!637919)))

(declare-fun b!7026089 () Bool)

(declare-fun call!637918 () (Set Context!12876))

(assert (=> b!7026089 (= e!4223705 (set.union call!637918 call!637923))))

(declare-fun b!7026090 () Bool)

(assert (=> b!7026090 (= e!4223704 call!637921)))

(declare-fun b!7026091 () Bool)

(assert (=> b!7026091 (= e!4223707 (nullable!7153 (regOne!35396 (h!74178 (exprs!6938 lt!2514383)))))))

(declare-fun bm!637917 () Bool)

(assert (=> bm!637917 (= call!637918 (derivationStepZipperDown!2106 (ite c!1306085 (regOne!35397 (h!74178 (exprs!6938 lt!2514383))) (regOne!35396 (h!74178 (exprs!6938 lt!2514383)))) (ite c!1306085 (Context!12877 (t!381611 (exprs!6938 lt!2514383))) (Context!12877 call!637919)) (h!74179 s!7408)))))

(declare-fun bm!637918 () Bool)

(assert (=> bm!637918 (= call!637923 call!637920)))

(declare-fun b!7026092 () Bool)

(assert (=> b!7026092 (= e!4223706 e!4223703)))

(assert (=> b!7026092 (= c!1306085 (is-Union!17442 (h!74178 (exprs!6938 lt!2514383))))))

(declare-fun b!7026093 () Bool)

(assert (=> b!7026093 (= e!4223703 (set.union call!637918 call!637920))))

(declare-fun b!7026094 () Bool)

(assert (=> b!7026094 (= e!4223706 (set.insert (Context!12877 (t!381611 (exprs!6938 lt!2514383))) (as set.empty (Set Context!12876))))))

(declare-fun b!7026095 () Bool)

(assert (=> b!7026095 (= e!4223705 e!4223704)))

(assert (=> b!7026095 (= c!1306086 (is-Concat!26287 (h!74178 (exprs!6938 lt!2514383))))))

(assert (= (and d!2190543 c!1306083) b!7026094))

(assert (= (and d!2190543 (not c!1306083)) b!7026092))

(assert (= (and b!7026092 c!1306085) b!7026093))

(assert (= (and b!7026092 (not c!1306085)) b!7026086))

(assert (= (and b!7026086 res!2868167) b!7026091))

(assert (= (and b!7026086 c!1306084) b!7026089))

(assert (= (and b!7026086 (not c!1306084)) b!7026095))

(assert (= (and b!7026095 c!1306086) b!7026090))

(assert (= (and b!7026095 (not c!1306086)) b!7026087))

(assert (= (and b!7026087 c!1306082) b!7026088))

(assert (= (and b!7026087 (not c!1306082)) b!7026085))

(assert (= (or b!7026090 b!7026088) bm!637916))

(assert (= (or b!7026090 b!7026088) bm!637913))

(assert (= (or b!7026089 bm!637913) bm!637918))

(assert (= (or b!7026089 bm!637916) bm!637915))

(assert (= (or b!7026093 b!7026089) bm!637917))

(assert (= (or b!7026093 bm!637918) bm!637914))

(declare-fun m!7729488 () Bool)

(assert (=> b!7026091 m!7729488))

(declare-fun m!7729490 () Bool)

(assert (=> bm!637914 m!7729490))

(declare-fun m!7729492 () Bool)

(assert (=> bm!637917 m!7729492))

(declare-fun m!7729494 () Bool)

(assert (=> b!7026094 m!7729494))

(declare-fun m!7729496 () Bool)

(assert (=> bm!637915 m!7729496))

(assert (=> bm!637865 d!2190543))

(declare-fun d!2190545 () Bool)

(assert (=> d!2190545 (= (nullable!7153 (h!74178 (exprs!6938 lt!2514383))) (nullableFct!2712 (h!74178 (exprs!6938 lt!2514383))))))

(declare-fun bs!1868731 () Bool)

(assert (= bs!1868731 d!2190545))

(declare-fun m!7729498 () Bool)

(assert (=> bs!1868731 m!7729498))

(assert (=> b!7025764 d!2190545))

(declare-fun d!2190547 () Bool)

(declare-fun c!1306087 () Bool)

(assert (=> d!2190547 (= c!1306087 (isEmpty!39494 (tail!13515 (t!381612 s!7408))))))

(declare-fun e!4223708 () Bool)

(assert (=> d!2190547 (= (matchZipper!2982 (derivationStepZipper!2898 lt!2514380 (head!14239 (t!381612 s!7408))) (tail!13515 (t!381612 s!7408))) e!4223708)))

(declare-fun b!7026096 () Bool)

(assert (=> b!7026096 (= e!4223708 (nullableZipper!2563 (derivationStepZipper!2898 lt!2514380 (head!14239 (t!381612 s!7408)))))))

(declare-fun b!7026097 () Bool)

(assert (=> b!7026097 (= e!4223708 (matchZipper!2982 (derivationStepZipper!2898 (derivationStepZipper!2898 lt!2514380 (head!14239 (t!381612 s!7408))) (head!14239 (tail!13515 (t!381612 s!7408)))) (tail!13515 (tail!13515 (t!381612 s!7408)))))))

(assert (= (and d!2190547 c!1306087) b!7026096))

(assert (= (and d!2190547 (not c!1306087)) b!7026097))

(assert (=> d!2190547 m!7728880))

(assert (=> d!2190547 m!7729246))

(assert (=> b!7026096 m!7728966))

(declare-fun m!7729500 () Bool)

(assert (=> b!7026096 m!7729500))

(assert (=> b!7026097 m!7728880))

(assert (=> b!7026097 m!7729250))

(assert (=> b!7026097 m!7728966))

(assert (=> b!7026097 m!7729250))

(declare-fun m!7729502 () Bool)

(assert (=> b!7026097 m!7729502))

(assert (=> b!7026097 m!7728880))

(assert (=> b!7026097 m!7729254))

(assert (=> b!7026097 m!7729502))

(assert (=> b!7026097 m!7729254))

(declare-fun m!7729504 () Bool)

(assert (=> b!7026097 m!7729504))

(assert (=> b!7025708 d!2190547))

(declare-fun bs!1868732 () Bool)

(declare-fun d!2190549 () Bool)

(assert (= bs!1868732 (and d!2190549 d!2190479)))

(declare-fun lambda!413013 () Int)

(assert (=> bs!1868732 (= lambda!413013 lambda!413004)))

(declare-fun bs!1868733 () Bool)

(assert (= bs!1868733 (and d!2190549 d!2190411)))

(assert (=> bs!1868733 (= lambda!413013 lambda!412996)))

(declare-fun bs!1868734 () Bool)

(assert (= bs!1868734 (and d!2190549 b!7025574)))

(assert (=> bs!1868734 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413013 lambda!412911))))

(declare-fun bs!1868735 () Bool)

(assert (= bs!1868735 (and d!2190549 d!2190511)))

(assert (=> bs!1868735 (= lambda!413013 lambda!413005)))

(declare-fun bs!1868736 () Bool)

(assert (= bs!1868736 (and d!2190549 d!2190447)))

(assert (=> bs!1868736 (= (= (head!14239 (t!381612 s!7408)) (head!14239 s!7408)) (= lambda!413013 lambda!413001))))

(declare-fun bs!1868737 () Bool)

(assert (= bs!1868737 (and d!2190549 d!2190285)))

(assert (=> bs!1868737 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413013 lambda!412968))))

(declare-fun bs!1868738 () Bool)

(assert (= bs!1868738 (and d!2190549 d!2190523)))

(assert (=> bs!1868738 (= (= (head!14239 (t!381612 s!7408)) (head!14239 s!7408)) (= lambda!413013 lambda!413006))))

(declare-fun bs!1868739 () Bool)

(assert (= bs!1868739 (and d!2190549 d!2190313)))

(assert (=> bs!1868739 (= (= (head!14239 (t!381612 s!7408)) (h!74179 s!7408)) (= lambda!413013 lambda!412976))))

(assert (=> d!2190549 true))

(assert (=> d!2190549 (= (derivationStepZipper!2898 lt!2514380 (head!14239 (t!381612 s!7408))) (flatMap!2389 lt!2514380 lambda!413013))))

(declare-fun bs!1868740 () Bool)

(assert (= bs!1868740 d!2190549))

(declare-fun m!7729506 () Bool)

(assert (=> bs!1868740 m!7729506))

(assert (=> b!7025708 d!2190549))

(assert (=> b!7025708 d!2190413))

(assert (=> b!7025708 d!2190415))

(declare-fun bs!1868741 () Bool)

(declare-fun d!2190551 () Bool)

(assert (= bs!1868741 (and d!2190551 d!2190307)))

(declare-fun lambda!413014 () Int)

(assert (=> bs!1868741 (not (= lambda!413014 lambda!412972))))

(declare-fun bs!1868742 () Bool)

(assert (= bs!1868742 (and d!2190551 d!2190309)))

(assert (=> bs!1868742 (not (= lambda!413014 lambda!412975))))

(declare-fun bs!1868743 () Bool)

(assert (= bs!1868743 (and d!2190551 d!2190421)))

(assert (=> bs!1868743 (= lambda!413014 lambda!412999)))

(declare-fun bs!1868744 () Bool)

(assert (= bs!1868744 (and d!2190551 d!2190465)))

(assert (=> bs!1868744 (= lambda!413014 lambda!413002)))

(declare-fun bs!1868745 () Bool)

(assert (= bs!1868745 (and d!2190551 d!2190533)))

(assert (=> bs!1868745 (not (= lambda!413014 lambda!413011))))

(declare-fun bs!1868746 () Bool)

(assert (= bs!1868746 (and d!2190551 d!2190531)))

(assert (=> bs!1868746 (not (= lambda!413014 lambda!413008))))

(declare-fun bs!1868747 () Bool)

(assert (= bs!1868747 (and d!2190551 d!2190527)))

(assert (=> bs!1868747 (= lambda!413014 lambda!413007)))

(declare-fun bs!1868748 () Bool)

(assert (= bs!1868748 (and d!2190551 d!2190423)))

(assert (=> bs!1868748 (= lambda!413014 lambda!413000)))

(declare-fun bs!1868749 () Bool)

(assert (= bs!1868749 (and d!2190551 b!7025584)))

(assert (=> bs!1868749 (not (= lambda!413014 lambda!412908))))

(declare-fun bs!1868750 () Bool)

(assert (= bs!1868750 (and d!2190551 d!2190475)))

(assert (=> bs!1868750 (= lambda!413014 lambda!413003)))

(assert (=> d!2190551 (= (nullableZipper!2563 lt!2514391) (exists!3354 lt!2514391 lambda!413014))))

(declare-fun bs!1868751 () Bool)

(assert (= bs!1868751 d!2190551))

(declare-fun m!7729508 () Bool)

(assert (=> bs!1868751 m!7729508))

(assert (=> b!7025668 d!2190551))

(declare-fun e!4223710 () (Set Context!12876))

(declare-fun b!7026098 () Bool)

(declare-fun call!637924 () (Set Context!12876))

(assert (=> b!7026098 (= e!4223710 (set.union call!637924 (derivationStepZipperUp!2052 (Context!12877 (t!381611 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514383)))))) (h!74179 s!7408))))))

(declare-fun b!7026099 () Bool)

(declare-fun e!4223709 () (Set Context!12876))

(assert (=> b!7026099 (= e!4223709 call!637924)))

(declare-fun bm!637919 () Bool)

(assert (=> bm!637919 (= call!637924 (derivationStepZipperDown!2106 (h!74178 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514383))))) (Context!12877 (t!381611 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514383)))))) (h!74179 s!7408)))))

(declare-fun b!7026100 () Bool)

(assert (=> b!7026100 (= e!4223709 (as set.empty (Set Context!12876)))))

(declare-fun b!7026101 () Bool)

(declare-fun e!4223711 () Bool)

(assert (=> b!7026101 (= e!4223711 (nullable!7153 (h!74178 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514383)))))))))

(declare-fun b!7026102 () Bool)

(assert (=> b!7026102 (= e!4223710 e!4223709)))

(declare-fun c!1306088 () Bool)

(assert (=> b!7026102 (= c!1306088 (is-Cons!67730 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514383))))))))

(declare-fun d!2190553 () Bool)

(declare-fun c!1306089 () Bool)

(assert (=> d!2190553 (= c!1306089 e!4223711)))

(declare-fun res!2868168 () Bool)

(assert (=> d!2190553 (=> (not res!2868168) (not e!4223711))))

(assert (=> d!2190553 (= res!2868168 (is-Cons!67730 (exprs!6938 (Context!12877 (t!381611 (exprs!6938 lt!2514383))))))))

(assert (=> d!2190553 (= (derivationStepZipperUp!2052 (Context!12877 (t!381611 (exprs!6938 lt!2514383))) (h!74179 s!7408)) e!4223710)))

(assert (= (and d!2190553 res!2868168) b!7026101))

(assert (= (and d!2190553 c!1306089) b!7026098))

(assert (= (and d!2190553 (not c!1306089)) b!7026102))

(assert (= (and b!7026102 c!1306088) b!7026099))

(assert (= (and b!7026102 (not c!1306088)) b!7026100))

(assert (= (or b!7026098 b!7026099) bm!637919))

(declare-fun m!7729510 () Bool)

(assert (=> b!7026098 m!7729510))

(declare-fun m!7729512 () Bool)

(assert (=> bm!637919 m!7729512))

(declare-fun m!7729514 () Bool)

(assert (=> b!7026101 m!7729514))

(assert (=> b!7025761 d!2190553))

(assert (=> bs!1868606 d!2190283))

(declare-fun b!7026103 () Bool)

(declare-fun e!4223712 () List!67854)

(assert (=> b!7026103 (= e!4223712 (exprs!6938 ct2!306))))

(declare-fun e!4223713 () Bool)

(declare-fun b!7026106 () Bool)

(declare-fun lt!2514592 () List!67854)

(assert (=> b!7026106 (= e!4223713 (or (not (= (exprs!6938 ct2!306) Nil!67730)) (= lt!2514592 (t!381611 (exprs!6938 lt!2514385)))))))

(declare-fun b!7026105 () Bool)

(declare-fun res!2868170 () Bool)

(assert (=> b!7026105 (=> (not res!2868170) (not e!4223713))))

(assert (=> b!7026105 (= res!2868170 (= (size!41041 lt!2514592) (+ (size!41041 (t!381611 (exprs!6938 lt!2514385))) (size!41041 (exprs!6938 ct2!306)))))))

(declare-fun b!7026104 () Bool)

(assert (=> b!7026104 (= e!4223712 (Cons!67730 (h!74178 (t!381611 (exprs!6938 lt!2514385))) (++!15475 (t!381611 (t!381611 (exprs!6938 lt!2514385))) (exprs!6938 ct2!306))))))

(declare-fun d!2190555 () Bool)

(assert (=> d!2190555 e!4223713))

(declare-fun res!2868169 () Bool)

(assert (=> d!2190555 (=> (not res!2868169) (not e!4223713))))

(assert (=> d!2190555 (= res!2868169 (= (content!13496 lt!2514592) (set.union (content!13496 (t!381611 (exprs!6938 lt!2514385))) (content!13496 (exprs!6938 ct2!306)))))))

(assert (=> d!2190555 (= lt!2514592 e!4223712)))

(declare-fun c!1306090 () Bool)

(assert (=> d!2190555 (= c!1306090 (is-Nil!67730 (t!381611 (exprs!6938 lt!2514385))))))

(assert (=> d!2190555 (= (++!15475 (t!381611 (exprs!6938 lt!2514385)) (exprs!6938 ct2!306)) lt!2514592)))

(assert (= (and d!2190555 c!1306090) b!7026103))

(assert (= (and d!2190555 (not c!1306090)) b!7026104))

(assert (= (and d!2190555 res!2868169) b!7026105))

(assert (= (and b!7026105 res!2868170) b!7026106))

(declare-fun m!7729516 () Bool)

(assert (=> b!7026105 m!7729516))

(assert (=> b!7026105 m!7729386))

(assert (=> b!7026105 m!7728918))

(declare-fun m!7729518 () Bool)

(assert (=> b!7026104 m!7729518))

(declare-fun m!7729520 () Bool)

(assert (=> d!2190555 m!7729520))

(assert (=> d!2190555 m!7729436))

(assert (=> d!2190555 m!7728926))

(assert (=> b!7025681 d!2190555))

(assert (=> d!2190291 d!2190437))

(declare-fun d!2190557 () Bool)

(declare-fun c!1306091 () Bool)

(assert (=> d!2190557 (= c!1306091 (isEmpty!39494 (tail!13515 s!7408)))))

(declare-fun e!4223714 () Bool)

(assert (=> d!2190557 (= (matchZipper!2982 (derivationStepZipper!2898 lt!2514386 (head!14239 s!7408)) (tail!13515 s!7408)) e!4223714)))

(declare-fun b!7026107 () Bool)

(assert (=> b!7026107 (= e!4223714 (nullableZipper!2563 (derivationStepZipper!2898 lt!2514386 (head!14239 s!7408))))))

(declare-fun b!7026108 () Bool)

(assert (=> b!7026108 (= e!4223714 (matchZipper!2982 (derivationStepZipper!2898 (derivationStepZipper!2898 lt!2514386 (head!14239 s!7408)) (head!14239 (tail!13515 s!7408))) (tail!13515 (tail!13515 s!7408))))))

(assert (= (and d!2190557 c!1306091) b!7026107))

(assert (= (and d!2190557 (not c!1306091)) b!7026108))

(assert (=> d!2190557 m!7728900))

(assert (=> d!2190557 m!7729290))

(assert (=> b!7026107 m!7728906))

(declare-fun m!7729522 () Bool)

(assert (=> b!7026107 m!7729522))

(assert (=> b!7026108 m!7728900))

(assert (=> b!7026108 m!7729294))

(assert (=> b!7026108 m!7728906))

(assert (=> b!7026108 m!7729294))

(declare-fun m!7729524 () Bool)

(assert (=> b!7026108 m!7729524))

(assert (=> b!7026108 m!7728900))

(assert (=> b!7026108 m!7729298))

(assert (=> b!7026108 m!7729524))

(assert (=> b!7026108 m!7729298))

(declare-fun m!7729526 () Bool)

(assert (=> b!7026108 m!7729526))

(assert (=> b!7025671 d!2190557))

(declare-fun bs!1868752 () Bool)

(declare-fun d!2190559 () Bool)

(assert (= bs!1868752 (and d!2190559 d!2190479)))

(declare-fun lambda!413015 () Int)

(assert (=> bs!1868752 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413015 lambda!413004))))

(declare-fun bs!1868753 () Bool)

(assert (= bs!1868753 (and d!2190559 d!2190411)))

(assert (=> bs!1868753 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413015 lambda!412996))))

(declare-fun bs!1868754 () Bool)

(assert (= bs!1868754 (and d!2190559 d!2190511)))

(assert (=> bs!1868754 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413015 lambda!413005))))

(declare-fun bs!1868755 () Bool)

(assert (= bs!1868755 (and d!2190559 b!7025574)))

(assert (=> bs!1868755 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413015 lambda!412911))))

(declare-fun bs!1868756 () Bool)

(assert (= bs!1868756 (and d!2190559 d!2190549)))

(assert (=> bs!1868756 (= (= (head!14239 s!7408) (head!14239 (t!381612 s!7408))) (= lambda!413015 lambda!413013))))

(declare-fun bs!1868757 () Bool)

(assert (= bs!1868757 (and d!2190559 d!2190447)))

(assert (=> bs!1868757 (= lambda!413015 lambda!413001)))

(declare-fun bs!1868758 () Bool)

(assert (= bs!1868758 (and d!2190559 d!2190285)))

(assert (=> bs!1868758 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413015 lambda!412968))))

(declare-fun bs!1868759 () Bool)

(assert (= bs!1868759 (and d!2190559 d!2190523)))

(assert (=> bs!1868759 (= lambda!413015 lambda!413006)))

(declare-fun bs!1868760 () Bool)

(assert (= bs!1868760 (and d!2190559 d!2190313)))

(assert (=> bs!1868760 (= (= (head!14239 s!7408) (h!74179 s!7408)) (= lambda!413015 lambda!412976))))

(assert (=> d!2190559 true))

(assert (=> d!2190559 (= (derivationStepZipper!2898 lt!2514386 (head!14239 s!7408)) (flatMap!2389 lt!2514386 lambda!413015))))

(declare-fun bs!1868761 () Bool)

(assert (= bs!1868761 d!2190559))

(declare-fun m!7729528 () Bool)

(assert (=> bs!1868761 m!7729528))

(assert (=> b!7025671 d!2190559))

(assert (=> b!7025671 d!2190449))

(assert (=> b!7025671 d!2190451))

(declare-fun d!2190561 () Bool)

(assert (=> d!2190561 true))

(declare-fun setRes!48986 () Bool)

(assert (=> d!2190561 setRes!48986))

(declare-fun condSetEmpty!48986 () Bool)

(declare-fun res!2868171 () (Set Context!12876))

(assert (=> d!2190561 (= condSetEmpty!48986 (= res!2868171 (as set.empty (Set Context!12876))))))

(assert (=> d!2190561 (= (choose!53082 lt!2514401 lambda!412911) res!2868171)))

(declare-fun setIsEmpty!48986 () Bool)

(assert (=> setIsEmpty!48986 setRes!48986))

(declare-fun setNonEmpty!48986 () Bool)

(declare-fun tp!1935495 () Bool)

(declare-fun setElem!48986 () Context!12876)

(declare-fun e!4223715 () Bool)

(assert (=> setNonEmpty!48986 (= setRes!48986 (and tp!1935495 (inv!86465 setElem!48986) e!4223715))))

(declare-fun setRest!48986 () (Set Context!12876))

(assert (=> setNonEmpty!48986 (= res!2868171 (set.union (set.insert setElem!48986 (as set.empty (Set Context!12876))) setRest!48986))))

(declare-fun b!7026109 () Bool)

(declare-fun tp!1935496 () Bool)

(assert (=> b!7026109 (= e!4223715 tp!1935496)))

(assert (= (and d!2190561 condSetEmpty!48986) setIsEmpty!48986))

(assert (= (and d!2190561 (not condSetEmpty!48986)) setNonEmpty!48986))

(assert (= setNonEmpty!48986 b!7026109))

(declare-fun m!7729530 () Bool)

(assert (=> setNonEmpty!48986 m!7729530))

(assert (=> d!2190319 d!2190561))

(assert (=> d!2190267 d!2190433))

(declare-fun bs!1868762 () Bool)

(declare-fun d!2190563 () Bool)

(assert (= bs!1868762 (and d!2190563 d!2190551)))

(declare-fun lambda!413016 () Int)

(assert (=> bs!1868762 (= lambda!413016 lambda!413014)))

(declare-fun bs!1868763 () Bool)

(assert (= bs!1868763 (and d!2190563 d!2190307)))

(assert (=> bs!1868763 (not (= lambda!413016 lambda!412972))))

(declare-fun bs!1868764 () Bool)

(assert (= bs!1868764 (and d!2190563 d!2190309)))

(assert (=> bs!1868764 (not (= lambda!413016 lambda!412975))))

(declare-fun bs!1868765 () Bool)

(assert (= bs!1868765 (and d!2190563 d!2190421)))

(assert (=> bs!1868765 (= lambda!413016 lambda!412999)))

(declare-fun bs!1868766 () Bool)

(assert (= bs!1868766 (and d!2190563 d!2190465)))

(assert (=> bs!1868766 (= lambda!413016 lambda!413002)))

(declare-fun bs!1868767 () Bool)

(assert (= bs!1868767 (and d!2190563 d!2190533)))

(assert (=> bs!1868767 (not (= lambda!413016 lambda!413011))))

(declare-fun bs!1868768 () Bool)

(assert (= bs!1868768 (and d!2190563 d!2190531)))

(assert (=> bs!1868768 (not (= lambda!413016 lambda!413008))))

(declare-fun bs!1868769 () Bool)

(assert (= bs!1868769 (and d!2190563 d!2190527)))

(assert (=> bs!1868769 (= lambda!413016 lambda!413007)))

(declare-fun bs!1868770 () Bool)

(assert (= bs!1868770 (and d!2190563 d!2190423)))

(assert (=> bs!1868770 (= lambda!413016 lambda!413000)))

(declare-fun bs!1868771 () Bool)

(assert (= bs!1868771 (and d!2190563 b!7025584)))

(assert (=> bs!1868771 (not (= lambda!413016 lambda!412908))))

(declare-fun bs!1868772 () Bool)

(assert (= bs!1868772 (and d!2190563 d!2190475)))

(assert (=> bs!1868772 (= lambda!413016 lambda!413003)))

(assert (=> d!2190563 (= (nullableZipper!2563 lt!2514388) (exists!3354 lt!2514388 lambda!413016))))

(declare-fun bs!1868773 () Bool)

(assert (= bs!1868773 d!2190563))

(declare-fun m!7729532 () Bool)

(assert (=> bs!1868773 m!7729532))

(assert (=> b!7025666 d!2190563))

(declare-fun b!7026110 () Bool)

(declare-fun e!4223716 () List!67854)

(assert (=> b!7026110 (= e!4223716 (exprs!6938 ct2!306))))

(declare-fun e!4223717 () Bool)

(declare-fun lt!2514593 () List!67854)

(declare-fun b!7026113 () Bool)

(assert (=> b!7026113 (= e!4223717 (or (not (= (exprs!6938 ct2!306) Nil!67730)) (= lt!2514593 (t!381611 lt!2514374))))))

(declare-fun b!7026112 () Bool)

(declare-fun res!2868173 () Bool)

(assert (=> b!7026112 (=> (not res!2868173) (not e!4223717))))

(assert (=> b!7026112 (= res!2868173 (= (size!41041 lt!2514593) (+ (size!41041 (t!381611 lt!2514374)) (size!41041 (exprs!6938 ct2!306)))))))

(declare-fun b!7026111 () Bool)

(assert (=> b!7026111 (= e!4223716 (Cons!67730 (h!74178 (t!381611 lt!2514374)) (++!15475 (t!381611 (t!381611 lt!2514374)) (exprs!6938 ct2!306))))))

(declare-fun d!2190565 () Bool)

(assert (=> d!2190565 e!4223717))

(declare-fun res!2868172 () Bool)

(assert (=> d!2190565 (=> (not res!2868172) (not e!4223717))))

(assert (=> d!2190565 (= res!2868172 (= (content!13496 lt!2514593) (set.union (content!13496 (t!381611 lt!2514374)) (content!13496 (exprs!6938 ct2!306)))))))

(assert (=> d!2190565 (= lt!2514593 e!4223716)))

(declare-fun c!1306092 () Bool)

(assert (=> d!2190565 (= c!1306092 (is-Nil!67730 (t!381611 lt!2514374)))))

(assert (=> d!2190565 (= (++!15475 (t!381611 lt!2514374) (exprs!6938 ct2!306)) lt!2514593)))

(assert (= (and d!2190565 c!1306092) b!7026110))

(assert (= (and d!2190565 (not c!1306092)) b!7026111))

(assert (= (and d!2190565 res!2868172) b!7026112))

(assert (= (and b!7026112 res!2868173) b!7026113))

(declare-fun m!7729534 () Bool)

(assert (=> b!7026112 m!7729534))

(assert (=> b!7026112 m!7729370))

(assert (=> b!7026112 m!7728918))

(declare-fun m!7729536 () Bool)

(assert (=> b!7026111 m!7729536))

(declare-fun m!7729538 () Bool)

(assert (=> d!2190565 m!7729538))

(assert (=> d!2190565 m!7729276))

(assert (=> d!2190565 m!7728926))

(assert (=> b!7025715 d!2190565))

(declare-fun b!7026114 () Bool)

(declare-fun e!4223718 () Bool)

(declare-fun tp!1935497 () Bool)

(assert (=> b!7026114 (= e!4223718 (and tp_is_empty!44109 tp!1935497))))

(assert (=> b!7025780 (= tp!1935460 e!4223718)))

(assert (= (and b!7025780 (is-Cons!67731 (t!381612 (t!381612 s!7408)))) b!7026114))

(declare-fun b!7026127 () Bool)

(declare-fun e!4223721 () Bool)

(declare-fun tp!1935508 () Bool)

(assert (=> b!7026127 (= e!4223721 tp!1935508)))

(declare-fun b!7026128 () Bool)

(declare-fun tp!1935510 () Bool)

(declare-fun tp!1935509 () Bool)

(assert (=> b!7026128 (= e!4223721 (and tp!1935510 tp!1935509))))

(declare-fun b!7026126 () Bool)

(declare-fun tp!1935512 () Bool)

(declare-fun tp!1935511 () Bool)

(assert (=> b!7026126 (= e!4223721 (and tp!1935512 tp!1935511))))

(assert (=> b!7025775 (= tp!1935456 e!4223721)))

(declare-fun b!7026125 () Bool)

(assert (=> b!7026125 (= e!4223721 tp_is_empty!44109)))

(assert (= (and b!7025775 (is-ElementMatch!17442 (h!74178 (exprs!6938 setElem!48973)))) b!7026125))

(assert (= (and b!7025775 (is-Concat!26287 (h!74178 (exprs!6938 setElem!48973)))) b!7026126))

(assert (= (and b!7025775 (is-Star!17442 (h!74178 (exprs!6938 setElem!48973)))) b!7026127))

(assert (= (and b!7025775 (is-Union!17442 (h!74178 (exprs!6938 setElem!48973)))) b!7026128))

(declare-fun b!7026129 () Bool)

(declare-fun e!4223722 () Bool)

(declare-fun tp!1935513 () Bool)

(declare-fun tp!1935514 () Bool)

(assert (=> b!7026129 (= e!4223722 (and tp!1935513 tp!1935514))))

(assert (=> b!7025775 (= tp!1935457 e!4223722)))

(assert (= (and b!7025775 (is-Cons!67730 (t!381611 (exprs!6938 setElem!48973)))) b!7026129))

(declare-fun condSetEmpty!48987 () Bool)

(assert (=> setNonEmpty!48979 (= condSetEmpty!48987 (= setRest!48979 (as set.empty (Set Context!12876))))))

(declare-fun setRes!48987 () Bool)

(assert (=> setNonEmpty!48979 (= tp!1935450 setRes!48987)))

(declare-fun setIsEmpty!48987 () Bool)

(assert (=> setIsEmpty!48987 setRes!48987))

(declare-fun tp!1935515 () Bool)

(declare-fun e!4223723 () Bool)

(declare-fun setNonEmpty!48987 () Bool)

(declare-fun setElem!48987 () Context!12876)

(assert (=> setNonEmpty!48987 (= setRes!48987 (and tp!1935515 (inv!86465 setElem!48987) e!4223723))))

(declare-fun setRest!48987 () (Set Context!12876))

(assert (=> setNonEmpty!48987 (= setRest!48979 (set.union (set.insert setElem!48987 (as set.empty (Set Context!12876))) setRest!48987))))

(declare-fun b!7026130 () Bool)

(declare-fun tp!1935516 () Bool)

(assert (=> b!7026130 (= e!4223723 tp!1935516)))

(assert (= (and setNonEmpty!48979 condSetEmpty!48987) setIsEmpty!48987))

(assert (= (and setNonEmpty!48979 (not condSetEmpty!48987)) setNonEmpty!48987))

(assert (= setNonEmpty!48987 b!7026130))

(declare-fun m!7729540 () Bool)

(assert (=> setNonEmpty!48987 m!7729540))

(declare-fun b!7026131 () Bool)

(declare-fun e!4223724 () Bool)

(declare-fun tp!1935517 () Bool)

(declare-fun tp!1935518 () Bool)

(assert (=> b!7026131 (= e!4223724 (and tp!1935517 tp!1935518))))

(assert (=> b!7025770 (= tp!1935451 e!4223724)))

(assert (= (and b!7025770 (is-Cons!67730 (exprs!6938 setElem!48979))) b!7026131))

(declare-fun b!7026134 () Bool)

(declare-fun e!4223725 () Bool)

(declare-fun tp!1935519 () Bool)

(assert (=> b!7026134 (= e!4223725 tp!1935519)))

(declare-fun b!7026135 () Bool)

(declare-fun tp!1935521 () Bool)

(declare-fun tp!1935520 () Bool)

(assert (=> b!7026135 (= e!4223725 (and tp!1935521 tp!1935520))))

(declare-fun b!7026133 () Bool)

(declare-fun tp!1935523 () Bool)

(declare-fun tp!1935522 () Bool)

(assert (=> b!7026133 (= e!4223725 (and tp!1935523 tp!1935522))))

(assert (=> b!7025781 (= tp!1935461 e!4223725)))

(declare-fun b!7026132 () Bool)

(assert (=> b!7026132 (= e!4223725 tp_is_empty!44109)))

(assert (= (and b!7025781 (is-ElementMatch!17442 (h!74178 (exprs!6938 ct2!306)))) b!7026132))

(assert (= (and b!7025781 (is-Concat!26287 (h!74178 (exprs!6938 ct2!306)))) b!7026133))

(assert (= (and b!7025781 (is-Star!17442 (h!74178 (exprs!6938 ct2!306)))) b!7026134))

(assert (= (and b!7025781 (is-Union!17442 (h!74178 (exprs!6938 ct2!306)))) b!7026135))

(declare-fun b!7026136 () Bool)

(declare-fun e!4223726 () Bool)

(declare-fun tp!1935524 () Bool)

(declare-fun tp!1935525 () Bool)

(assert (=> b!7026136 (= e!4223726 (and tp!1935524 tp!1935525))))

(assert (=> b!7025781 (= tp!1935462 e!4223726)))

(assert (= (and b!7025781 (is-Cons!67730 (t!381611 (exprs!6938 ct2!306)))) b!7026136))

(declare-fun b_lambda!265635 () Bool)

(assert (= b_lambda!265631 (or d!2190309 b_lambda!265635)))

(declare-fun bs!1868774 () Bool)

(declare-fun d!2190567 () Bool)

(assert (= bs!1868774 (and d!2190567 d!2190309)))

(assert (=> bs!1868774 (= (dynLambda!27310 lambda!412975 (h!74180 lt!2514376)) (not (dynLambda!27310 lambda!412908 (h!74180 lt!2514376))))))

(declare-fun b_lambda!265659 () Bool)

(assert (=> (not b_lambda!265659) (not bs!1868774)))

(declare-fun m!7729542 () Bool)

(assert (=> bs!1868774 m!7729542))

(assert (=> b!7026047 d!2190567))

(declare-fun b_lambda!265637 () Bool)

(assert (= b_lambda!265619 (or b!7025570 b_lambda!265637)))

(declare-fun bs!1868775 () Bool)

(declare-fun d!2190569 () Bool)

(assert (= bs!1868775 (and d!2190569 b!7025570)))

(declare-fun lt!2514594 () Unit!161547)

(assert (=> bs!1868775 (= lt!2514594 (lemmaConcatPreservesForall!763 (exprs!6938 a!13131) (exprs!6938 ct2!306) lambda!412910))))

(assert (=> bs!1868775 (= (dynLambda!27308 lambda!412909 a!13131) (Context!12877 (++!15475 (exprs!6938 a!13131) (exprs!6938 ct2!306))))))

(declare-fun m!7729544 () Bool)

(assert (=> bs!1868775 m!7729544))

(declare-fun m!7729546 () Bool)

(assert (=> bs!1868775 m!7729546))

(assert (=> d!2190453 d!2190569))

(declare-fun b_lambda!265639 () Bool)

(assert (= b_lambda!265629 (or b!7025584 b_lambda!265639)))

(declare-fun bs!1868776 () Bool)

(declare-fun d!2190571 () Bool)

(assert (= bs!1868776 (and d!2190571 b!7025584)))

(assert (=> bs!1868776 (= (dynLambda!27310 lambda!412908 lt!2514588) (matchZipper!2982 (set.insert lt!2514588 (as set.empty (Set Context!12876))) s!7408))))

(declare-fun m!7729548 () Bool)

(assert (=> bs!1868776 m!7729548))

(assert (=> bs!1868776 m!7729548))

(declare-fun m!7729550 () Bool)

(assert (=> bs!1868776 m!7729550))

(assert (=> d!2190503 d!2190571))

(declare-fun b_lambda!265641 () Bool)

(assert (= b_lambda!265621 (or d!2190297 b_lambda!265641)))

(declare-fun bs!1868777 () Bool)

(declare-fun d!2190573 () Bool)

(assert (= bs!1868777 (and d!2190573 d!2190297)))

(declare-fun validRegex!8923 (Regex!17442) Bool)

(assert (=> bs!1868777 (= (dynLambda!27316 lambda!412969 (h!74178 (exprs!6938 setElem!48973))) (validRegex!8923 (h!74178 (exprs!6938 setElem!48973))))))

(declare-fun m!7729552 () Bool)

(assert (=> bs!1868777 m!7729552))

(assert (=> b!7025981 d!2190573))

(declare-fun b_lambda!265643 () Bool)

(assert (= b_lambda!265611 (or b!7025570 b_lambda!265643)))

(declare-fun bs!1868778 () Bool)

(declare-fun d!2190575 () Bool)

(assert (= bs!1868778 (and d!2190575 b!7025570)))

(assert (=> bs!1868778 (= (dynLambda!27316 lambda!412910 (h!74178 (++!15475 lt!2514374 (exprs!6938 ct2!306)))) (validRegex!8923 (h!74178 (++!15475 lt!2514374 (exprs!6938 ct2!306)))))))

(declare-fun m!7729554 () Bool)

(assert (=> bs!1868778 m!7729554))

(assert (=> b!7025909 d!2190575))

(declare-fun b_lambda!265645 () Bool)

(assert (= b_lambda!265617 (or b!7025574 b_lambda!265645)))

(assert (=> d!2190419 d!2190325))

(declare-fun b_lambda!265647 () Bool)

(assert (= b_lambda!265633 (or d!2190271 b_lambda!265647)))

(declare-fun bs!1868779 () Bool)

(declare-fun d!2190577 () Bool)

(assert (= bs!1868779 (and d!2190577 d!2190271)))

(assert (=> bs!1868779 (= (dynLambda!27316 lambda!412965 (h!74178 (exprs!6938 ct2!306))) (validRegex!8923 (h!74178 (exprs!6938 ct2!306))))))

(declare-fun m!7729556 () Bool)

(assert (=> bs!1868779 m!7729556))

(assert (=> b!7026051 d!2190577))

(declare-fun b_lambda!265649 () Bool)

(assert (= b_lambda!265613 (or b!7025570 b_lambda!265649)))

(declare-fun bs!1868780 () Bool)

(declare-fun d!2190579 () Bool)

(assert (= bs!1868780 (and d!2190579 b!7025570)))

(assert (=> bs!1868780 (= (dynLambda!27316 lambda!412910 (h!74178 lt!2514374)) (validRegex!8923 (h!74178 lt!2514374)))))

(declare-fun m!7729558 () Bool)

(assert (=> bs!1868780 m!7729558))

(assert (=> b!7025911 d!2190579))

(declare-fun b_lambda!265651 () Bool)

(assert (= b_lambda!265615 (or b!7025574 b_lambda!265651)))

(assert (=> d!2190417 d!2190323))

(declare-fun b_lambda!265653 () Bool)

(assert (= b_lambda!265623 (or b!7025570 b_lambda!265653)))

(declare-fun bs!1868781 () Bool)

(declare-fun d!2190581 () Bool)

(assert (= bs!1868781 (and d!2190581 b!7025570)))

(assert (=> bs!1868781 (= (dynLambda!27316 lambda!412910 (h!74178 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306)))) (validRegex!8923 (h!74178 (++!15475 (exprs!6938 lt!2514385) (exprs!6938 ct2!306)))))))

(declare-fun m!7729560 () Bool)

(assert (=> bs!1868781 m!7729560))

(assert (=> b!7026021 d!2190581))

(declare-fun b_lambda!265655 () Bool)

(assert (= b_lambda!265627 (or b!7025584 b_lambda!265655)))

(declare-fun bs!1868782 () Bool)

(declare-fun d!2190583 () Bool)

(assert (= bs!1868782 (and d!2190583 b!7025584)))

(assert (=> bs!1868782 (= (dynLambda!27310 lambda!412908 (h!74180 (toList!10785 lt!2514386))) (matchZipper!2982 (set.insert (h!74180 (toList!10785 lt!2514386)) (as set.empty (Set Context!12876))) s!7408))))

(declare-fun m!7729562 () Bool)

(assert (=> bs!1868782 m!7729562))

(assert (=> bs!1868782 m!7729562))

(declare-fun m!7729564 () Bool)

(assert (=> bs!1868782 m!7729564))

(assert (=> b!7026037 d!2190583))

(declare-fun b_lambda!265657 () Bool)

(assert (= b_lambda!265625 (or b!7025570 b_lambda!265657)))

(declare-fun bs!1868783 () Bool)

(declare-fun d!2190585 () Bool)

(assert (= bs!1868783 (and d!2190585 b!7025570)))

(assert (=> bs!1868783 (= (dynLambda!27316 lambda!412910 (h!74178 (exprs!6938 lt!2514385))) (validRegex!8923 (h!74178 (exprs!6938 lt!2514385))))))

(declare-fun m!7729566 () Bool)

(assert (=> bs!1868783 m!7729566))

(assert (=> b!7026023 d!2190585))

(push 1)

(assert (not b!7025985))

(assert (not b!7025962))

(assert (not b!7025999))

(assert (not b!7026014))

(assert (not b!7026056))

(assert (not d!2190457))

(assert (not d!2190459))

(assert tp_is_empty!44109)

(assert (not d!2190453))

(assert (not b!7025984))

(assert (not d!2190529))

(assert (not b!7026096))

(assert (not bs!1868779))

(assert (not d!2190545))

(assert (not b!7026052))

(assert (not d!2190475))

(assert (not b!7026012))

(assert (not b!7025965))

(assert (not b_lambda!265643))

(assert (not bm!637897))

(assert (not bm!637894))

(assert (not b!7026131))

(assert (not d!2190555))

(assert (not b!7026091))

(assert (not bs!1868783))

(assert (not b!7026108))

(assert (not b!7026006))

(assert (not d!2190557))

(assert (not d!2190503))

(assert (not d!2190521))

(assert (not bm!637899))

(assert (not bm!637908))

(assert (not b!7026104))

(assert (not d!2190531))

(assert (not b!7026073))

(assert (not b_lambda!265645))

(assert (not bs!1868775))

(assert (not b!7025948))

(assert (not d!2190541))

(assert (not b!7025915))

(assert (not b_lambda!265651))

(assert (not d!2190409))

(assert (not b!7026114))

(assert (not d!2190563))

(assert (not b!7026112))

(assert (not b!7025949))

(assert (not b!7025926))

(assert (not d!2190547))

(assert (not b_lambda!265647))

(assert (not b!7025982))

(assert (not d!2190559))

(assert (not bs!1868782))

(assert (not b!7025961))

(assert (not b!7026024))

(assert (not b_lambda!265637))

(assert (not b_lambda!265655))

(assert (not b!7026068))

(assert (not d!2190447))

(assert (not d!2190467))

(assert (not d!2190527))

(assert (not d!2190499))

(assert (not d!2190411))

(assert (not b_lambda!265589))

(assert (not bs!1868781))

(assert (not d!2190505))

(assert (not bm!637919))

(assert (not b!7025970))

(assert (not bm!637902))

(assert (not b!7025922))

(assert (not setNonEmpty!48987))

(assert (not b!7025988))

(assert (not b!7025971))

(assert (not b_lambda!265635))

(assert (not d!2190525))

(assert (not d!2190511))

(assert (not b!7025904))

(assert (not b!7026069))

(assert (not b_lambda!265593))

(assert (not b!7025959))

(assert (not d!2190465))

(assert (not b!7026063))

(assert (not b!7026040))

(assert (not bm!637909))

(assert (not b!7026050))

(assert (not bm!637915))

(assert (not b!7026042))

(assert (not d!2190533))

(assert (not d!2190419))

(assert (not d!2190471))

(assert (not bs!1868777))

(assert (not b!7026109))

(assert (not b!7025910))

(assert (not d!2190423))

(assert (not b!7026105))

(assert (not bm!637917))

(assert (not b!7026038))

(assert (not b!7025914))

(assert (not d!2190535))

(assert (not d!2190405))

(assert (not d!2190565))

(assert (not bm!637905))

(assert (not setNonEmpty!48986))

(assert (not bs!1868778))

(assert (not b!7025958))

(assert (not d!2190417))

(assert (not b!7025980))

(assert (not b_lambda!265653))

(assert (not b_lambda!265591))

(assert (not d!2190509))

(assert (not d!2190463))

(assert (not b!7026133))

(assert (not d!2190455))

(assert (not b_lambda!265659))

(assert (not b!7026127))

(assert (not d!2190461))

(assert (not d!2190445))

(assert (not b!7025955))

(assert (not b_lambda!265641))

(assert (not b!7026049))

(assert (not b!7025979))

(assert (not d!2190479))

(assert (not d!2190425))

(assert (not b!7025912))

(assert (not b!7025913))

(assert (not d!2190549))

(assert (not b!7026101))

(assert (not bm!637903))

(assert (not b!7026022))

(assert (not b_lambda!265587))

(assert (not d!2190435))

(assert (not b!7026111))

(assert (not b!7026070))

(assert (not b!7026136))

(assert (not b!7025983))

(assert (not bs!1868776))

(assert (not d!2190441))

(assert (not b_lambda!265649))

(assert (not d!2190523))

(assert (not b_lambda!265657))

(assert (not b!7026097))

(assert (not d!2190421))

(assert (not d!2190551))

(assert (not d!2190477))

(assert (not bm!637911))

(assert (not b!7025916))

(assert (not bm!637892))

(assert (not b!7026071))

(assert (not b!7025995))

(assert (not setNonEmpty!48985))

(assert (not b!7025997))

(assert (not b!7026048))

(assert (not b!7025924))

(assert (not b!7026080))

(assert (not bm!637893))

(assert (not bm!637914))

(assert (not b!7026129))

(assert (not b!7026126))

(assert (not b!7026107))

(assert (not b!7026130))

(assert (not b!7026135))

(assert (not bm!637896))

(assert (not bs!1868780))

(assert (not b!7026054))

(assert (not b_lambda!265639))

(assert (not b!7025978))

(assert (not b!7026134))

(assert (not b!7026128))

(assert (not b!7026020))

(assert (not b!7026098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

