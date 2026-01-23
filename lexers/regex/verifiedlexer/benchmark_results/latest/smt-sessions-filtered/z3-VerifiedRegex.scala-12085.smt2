; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677698 () Bool)

(assert start!677698)

(declare-fun b!7023068 () Bool)

(assert (=> b!7023068 true))

(declare-fun bs!1868034 () Bool)

(declare-fun b!7023066 () Bool)

(assert (= bs!1868034 (and b!7023066 b!7023068)))

(declare-fun lambda!412111 () Int)

(declare-fun lambda!412110 () Int)

(assert (=> bs!1868034 (not (= lambda!412111 lambda!412110))))

(declare-fun b!7023058 () Bool)

(declare-fun e!4221828 () Bool)

(declare-fun tp!1934771 () Bool)

(assert (=> b!7023058 (= e!4221828 tp!1934771)))

(declare-fun b!7023059 () Bool)

(declare-fun e!4221824 () Bool)

(declare-fun e!4221823 () Bool)

(assert (=> b!7023059 (= e!4221824 e!4221823)))

(declare-fun res!2866960 () Bool)

(assert (=> b!7023059 (=> (not res!2866960) (not e!4221823))))

(declare-datatypes ((C!35104 0))(
  ( (C!35105 (val!27254 Int)) )
))
(declare-datatypes ((Regex!17417 0))(
  ( (ElementMatch!17417 (c!1305270 C!35104)) (Concat!26262 (regOne!35346 Regex!17417) (regTwo!35346 Regex!17417)) (EmptyExpr!17417) (Star!17417 (reg!17746 Regex!17417)) (EmptyLang!17417) (Union!17417 (regOne!35347 Regex!17417) (regTwo!35347 Regex!17417)) )
))
(declare-datatypes ((List!67784 0))(
  ( (Nil!67660) (Cons!67660 (h!74108 Regex!17417) (t!381539 List!67784)) )
))
(declare-datatypes ((Context!12826 0))(
  ( (Context!12827 (exprs!6913 List!67784)) )
))
(declare-fun lt!2512919 () Context!12826)

(declare-fun nullableContext!77 (Context!12826) Bool)

(assert (=> b!7023059 (= res!2866960 (nullableContext!77 lt!2512919))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2512924 () (InoxSet Context!12826))

(declare-fun lambda!412108 () Int)

(declare-fun getWitness!1397 ((InoxSet Context!12826) Int) Context!12826)

(assert (=> b!7023059 (= lt!2512919 (getWitness!1397 lt!2512924 lambda!412108))))

(declare-fun b!7023060 () Bool)

(declare-fun e!4221827 () Bool)

(declare-fun e!4221825 () Bool)

(assert (=> b!7023060 (= e!4221827 e!4221825)))

(declare-fun res!2866956 () Bool)

(assert (=> b!7023060 (=> res!2866956 e!4221825)))

(declare-fun z1!570 () (InoxSet Context!12826))

(declare-datatypes ((List!67785 0))(
  ( (Nil!67661) (Cons!67661 (h!74109 C!35104) (t!381540 List!67785)) )
))
(declare-fun matchZipper!2957 ((InoxSet Context!12826) List!67785) Bool)

(assert (=> b!7023060 (= res!2866956 (not (matchZipper!2957 z1!570 Nil!67661)))))

(declare-fun lt!2512920 () (InoxSet Context!12826))

(declare-fun exists!3316 ((InoxSet Context!12826) Int) Bool)

(assert (=> b!7023060 (exists!3316 lt!2512920 lambda!412108)))

(declare-datatypes ((Unit!161500 0))(
  ( (Unit!161501) )
))
(declare-fun lt!2512923 () Unit!161500)

(declare-fun ct2!306 () Context!12826)

(declare-fun lemmaContainsThenExists!115 ((InoxSet Context!12826) Context!12826 Int) Unit!161500)

(assert (=> b!7023060 (= lt!2512923 (lemmaContainsThenExists!115 lt!2512920 ct2!306 lambda!412108))))

(assert (=> b!7023060 (= lt!2512920 (store ((as const (Array Context!12826 Bool)) false) ct2!306 true))))

(assert (=> b!7023060 (exists!3316 z1!570 lambda!412108)))

(declare-fun lt!2512925 () Context!12826)

(declare-fun lt!2512921 () Unit!161500)

(assert (=> b!7023060 (= lt!2512921 (lemmaContainsThenExists!115 z1!570 lt!2512925 lambda!412108))))

(declare-fun b!7023062 () Bool)

(declare-fun e!4221826 () Bool)

(declare-fun tp!1934770 () Bool)

(assert (=> b!7023062 (= e!4221826 tp!1934770)))

(declare-fun b!7023063 () Bool)

(declare-fun res!2866959 () Bool)

(assert (=> b!7023063 (=> res!2866959 e!4221827)))

(assert (=> b!7023063 (= res!2866959 (not (nullableContext!77 ct2!306)))))

(declare-fun tp!1934772 () Bool)

(declare-fun setRes!48842 () Bool)

(declare-fun setElem!48842 () Context!12826)

(declare-fun setNonEmpty!48842 () Bool)

(declare-fun inv!86401 (Context!12826) Bool)

(assert (=> setNonEmpty!48842 (= setRes!48842 (and tp!1934772 (inv!86401 setElem!48842) e!4221828))))

(declare-fun setRest!48842 () (InoxSet Context!12826))

(assert (=> setNonEmpty!48842 (= z1!570 ((_ map or) (store ((as const (Array Context!12826 Bool)) false) setElem!48842 true) setRest!48842))))

(declare-fun b!7023064 () Bool)

(declare-fun e!4221821 () Bool)

(declare-fun tp_is_empty!44059 () Bool)

(declare-fun tp!1934773 () Bool)

(assert (=> b!7023064 (= e!4221821 (and tp_is_empty!44059 tp!1934773))))

(declare-fun b!7023065 () Bool)

(declare-fun res!2866955 () Bool)

(assert (=> b!7023065 (=> (not res!2866955) (not e!4221824))))

(assert (=> b!7023065 (= res!2866955 (exists!3316 lt!2512924 lambda!412108))))

(declare-fun e!4221822 () Bool)

(assert (=> b!7023066 (= e!4221822 (not e!4221827))))

(declare-fun res!2866953 () Bool)

(assert (=> b!7023066 (=> res!2866953 e!4221827)))

(assert (=> b!7023066 (= res!2866953 (not (nullableContext!77 lt!2512925)))))

(declare-fun lt!2512927 () Unit!161500)

(declare-fun lt!2512926 () List!67784)

(declare-fun lemmaContentSubsetPreservesForall!344 (List!67784 List!67784 Int) Unit!161500)

(assert (=> b!7023066 (= lt!2512927 (lemmaContentSubsetPreservesForall!344 lt!2512926 (exprs!6913 ct2!306) lambda!412111))))

(declare-fun lt!2512922 () Unit!161500)

(assert (=> b!7023066 (= lt!2512922 (lemmaContentSubsetPreservesForall!344 lt!2512926 (exprs!6913 lt!2512925) lambda!412111))))

(declare-fun subseq!693 (List!67784 List!67784) Bool)

(assert (=> b!7023066 (subseq!693 (exprs!6913 ct2!306) lt!2512926)))

(declare-fun lt!2512928 () Unit!161500)

(declare-fun lemmaConcatThenSecondSubseqOfTot!14 (List!67784 List!67784) Unit!161500)

(assert (=> b!7023066 (= lt!2512928 (lemmaConcatThenSecondSubseqOfTot!14 (exprs!6913 lt!2512925) (exprs!6913 ct2!306)))))

(assert (=> b!7023066 (subseq!693 (exprs!6913 lt!2512925) lt!2512926)))

(declare-fun lt!2512931 () Unit!161500)

(declare-fun lemmaConcatThenFirstSubseqOfTot!14 (List!67784 List!67784) Unit!161500)

(assert (=> b!7023066 (= lt!2512931 (lemmaConcatThenFirstSubseqOfTot!14 (exprs!6913 lt!2512925) (exprs!6913 ct2!306)))))

(declare-fun setIsEmpty!48842 () Bool)

(assert (=> setIsEmpty!48842 setRes!48842))

(declare-fun b!7023067 () Bool)

(declare-fun res!2866954 () Bool)

(assert (=> b!7023067 (=> (not res!2866954) (not e!4221824))))

(declare-fun nullableZipper!2546 ((InoxSet Context!12826)) Bool)

(assert (=> b!7023067 (= res!2866954 (nullableZipper!2546 lt!2512924))))

(assert (=> b!7023068 (= e!4221823 e!4221822)))

(declare-fun res!2866951 () Bool)

(assert (=> b!7023068 (=> (not res!2866951) (not e!4221822))))

(assert (=> b!7023068 (= res!2866951 (= (Context!12827 lt!2512926) lt!2512919))))

(declare-fun ++!15453 (List!67784 List!67784) List!67784)

(assert (=> b!7023068 (= lt!2512926 (++!15453 (exprs!6913 lt!2512925) (exprs!6913 ct2!306)))))

(declare-fun lt!2512929 () Unit!161500)

(declare-fun lemmaConcatPreservesForall!744 (List!67784 List!67784 Int) Unit!161500)

(assert (=> b!7023068 (= lt!2512929 (lemmaConcatPreservesForall!744 (exprs!6913 lt!2512925) (exprs!6913 ct2!306) lambda!412110))))

(declare-fun lambda!412109 () Int)

(declare-fun mapPost2!264 ((InoxSet Context!12826) Int Context!12826) Context!12826)

(assert (=> b!7023068 (= lt!2512925 (mapPost2!264 z1!570 lambda!412109 lt!2512919))))

(declare-fun b!7023061 () Bool)

(declare-fun res!2866957 () Bool)

(assert (=> b!7023061 (=> res!2866957 e!4221825)))

(assert (=> b!7023061 (= res!2866957 (not (matchZipper!2957 lt!2512920 Nil!67661)))))

(declare-fun res!2866958 () Bool)

(assert (=> start!677698 (=> (not res!2866958) (not e!4221824))))

(declare-fun s!7408 () List!67785)

(assert (=> start!677698 (= res!2866958 (matchZipper!2957 lt!2512924 s!7408))))

(declare-fun appendTo!538 ((InoxSet Context!12826) Context!12826) (InoxSet Context!12826))

(assert (=> start!677698 (= lt!2512924 (appendTo!538 z1!570 ct2!306))))

(assert (=> start!677698 e!4221824))

(declare-fun condSetEmpty!48842 () Bool)

(assert (=> start!677698 (= condSetEmpty!48842 (= z1!570 ((as const (Array Context!12826 Bool)) false)))))

(assert (=> start!677698 setRes!48842))

(assert (=> start!677698 (and (inv!86401 ct2!306) e!4221826)))

(assert (=> start!677698 e!4221821))

(declare-fun b!7023069 () Bool)

(declare-fun res!2866961 () Bool)

(assert (=> b!7023069 (=> (not res!2866961) (not e!4221824))))

(get-info :version)

(assert (=> b!7023069 (= res!2866961 (not ((_ is Cons!67661) s!7408)))))

(declare-fun b!7023070 () Bool)

(declare-fun res!2866952 () Bool)

(assert (=> b!7023070 (=> res!2866952 e!4221825)))

(declare-fun ++!15454 (List!67785 List!67785) List!67785)

(assert (=> b!7023070 (= res!2866952 (not (= (++!15454 Nil!67661 Nil!67661) Nil!67661)))))

(declare-fun b!7023071 () Bool)

(assert (=> b!7023071 (= e!4221825 true)))

(declare-fun lt!2512930 () Bool)

(declare-fun isPrefix!5836 (List!67785 List!67785) Bool)

(assert (=> b!7023071 (= lt!2512930 (isPrefix!5836 Nil!67661 Nil!67661))))

(assert (= (and start!677698 res!2866958) b!7023069))

(assert (= (and b!7023069 res!2866961) b!7023067))

(assert (= (and b!7023067 res!2866954) b!7023065))

(assert (= (and b!7023065 res!2866955) b!7023059))

(assert (= (and b!7023059 res!2866960) b!7023068))

(assert (= (and b!7023068 res!2866951) b!7023066))

(assert (= (and b!7023066 (not res!2866953)) b!7023063))

(assert (= (and b!7023063 (not res!2866959)) b!7023060))

(assert (= (and b!7023060 (not res!2866956)) b!7023061))

(assert (= (and b!7023061 (not res!2866957)) b!7023070))

(assert (= (and b!7023070 (not res!2866952)) b!7023071))

(assert (= (and start!677698 condSetEmpty!48842) setIsEmpty!48842))

(assert (= (and start!677698 (not condSetEmpty!48842)) setNonEmpty!48842))

(assert (= setNonEmpty!48842 b!7023058))

(assert (= start!677698 b!7023062))

(assert (= (and start!677698 ((_ is Cons!67661) s!7408)) b!7023064))

(declare-fun m!7725334 () Bool)

(assert (=> b!7023060 m!7725334))

(declare-fun m!7725336 () Bool)

(assert (=> b!7023060 m!7725336))

(declare-fun m!7725338 () Bool)

(assert (=> b!7023060 m!7725338))

(declare-fun m!7725340 () Bool)

(assert (=> b!7023060 m!7725340))

(declare-fun m!7725342 () Bool)

(assert (=> b!7023060 m!7725342))

(declare-fun m!7725344 () Bool)

(assert (=> b!7023060 m!7725344))

(declare-fun m!7725346 () Bool)

(assert (=> b!7023071 m!7725346))

(declare-fun m!7725348 () Bool)

(assert (=> b!7023061 m!7725348))

(declare-fun m!7725350 () Bool)

(assert (=> b!7023068 m!7725350))

(declare-fun m!7725352 () Bool)

(assert (=> b!7023068 m!7725352))

(declare-fun m!7725354 () Bool)

(assert (=> b!7023068 m!7725354))

(declare-fun m!7725356 () Bool)

(assert (=> b!7023059 m!7725356))

(declare-fun m!7725358 () Bool)

(assert (=> b!7023059 m!7725358))

(declare-fun m!7725360 () Bool)

(assert (=> setNonEmpty!48842 m!7725360))

(declare-fun m!7725362 () Bool)

(assert (=> b!7023070 m!7725362))

(declare-fun m!7725364 () Bool)

(assert (=> start!677698 m!7725364))

(declare-fun m!7725366 () Bool)

(assert (=> start!677698 m!7725366))

(declare-fun m!7725368 () Bool)

(assert (=> start!677698 m!7725368))

(declare-fun m!7725370 () Bool)

(assert (=> b!7023065 m!7725370))

(declare-fun m!7725372 () Bool)

(assert (=> b!7023067 m!7725372))

(declare-fun m!7725374 () Bool)

(assert (=> b!7023066 m!7725374))

(declare-fun m!7725376 () Bool)

(assert (=> b!7023066 m!7725376))

(declare-fun m!7725378 () Bool)

(assert (=> b!7023066 m!7725378))

(declare-fun m!7725380 () Bool)

(assert (=> b!7023066 m!7725380))

(declare-fun m!7725382 () Bool)

(assert (=> b!7023066 m!7725382))

(declare-fun m!7725384 () Bool)

(assert (=> b!7023066 m!7725384))

(declare-fun m!7725386 () Bool)

(assert (=> b!7023066 m!7725386))

(declare-fun m!7725388 () Bool)

(assert (=> b!7023063 m!7725388))

(check-sat (not b!7023065) (not b!7023067) (not b!7023060) (not b!7023071) (not b!7023058) tp_is_empty!44059 (not start!677698) (not b!7023062) (not b!7023070) (not b!7023059) (not setNonEmpty!48842) (not b!7023066) (not b!7023061) (not b!7023063) (not b!7023068) (not b!7023064))
(check-sat)
