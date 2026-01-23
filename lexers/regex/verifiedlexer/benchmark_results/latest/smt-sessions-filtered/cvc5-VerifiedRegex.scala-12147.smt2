; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!683158 () Bool)

(assert start!683158)

(declare-fun b!7051070 () Bool)

(assert (=> b!7051070 true))

(declare-fun bs!1876033 () Bool)

(declare-fun b!7051072 () Bool)

(assert (= bs!1876033 (and b!7051072 b!7051070)))

(declare-fun lambda!419011 () Int)

(declare-fun lambda!419010 () Int)

(assert (=> bs!1876033 (not (= lambda!419011 lambda!419010))))

(declare-fun b!7051063 () Bool)

(declare-fun res!2878604 () Bool)

(declare-fun e!4238878 () Bool)

(assert (=> b!7051063 (=> (not res!2878604) (not e!4238878))))

(declare-datatypes ((C!35350 0))(
  ( (C!35351 (val!27377 Int)) )
))
(declare-datatypes ((List!68146 0))(
  ( (Nil!68022) (Cons!68022 (h!74470 C!35350) (t!381925 List!68146)) )
))
(declare-fun s!7408 () List!68146)

(assert (=> b!7051063 (= res!2878604 (not (is-Cons!68022 s!7408)))))

(declare-fun b!7051064 () Bool)

(declare-fun e!4238884 () Bool)

(assert (=> b!7051064 (= e!4238878 e!4238884)))

(declare-fun res!2878608 () Bool)

(assert (=> b!7051064 (=> (not res!2878608) (not e!4238884))))

(declare-datatypes ((Regex!17540 0))(
  ( (ElementMatch!17540 (c!1313333 C!35350)) (Concat!26385 (regOne!35592 Regex!17540) (regTwo!35592 Regex!17540)) (EmptyExpr!17540) (Star!17540 (reg!17869 Regex!17540)) (EmptyLang!17540) (Union!17540 (regOne!35593 Regex!17540) (regTwo!35593 Regex!17540)) )
))
(declare-datatypes ((List!68147 0))(
  ( (Nil!68023) (Cons!68023 (h!74471 Regex!17540) (t!381926 List!68147)) )
))
(declare-datatypes ((Context!13072 0))(
  ( (Context!13073 (exprs!7036 List!68147)) )
))
(declare-fun lt!2529590 () Context!13072)

(declare-fun nullableContext!96 (Context!13072) Bool)

(assert (=> b!7051064 (= res!2878608 (nullableContext!96 lt!2529590))))

(declare-fun lt!2529584 () (Set Context!13072))

(declare-fun lambda!419008 () Int)

(declare-fun getWitness!1588 ((Set Context!13072) Int) Context!13072)

(assert (=> b!7051064 (= lt!2529590 (getWitness!1588 lt!2529584 lambda!419008))))

(declare-fun b!7051065 () Bool)

(declare-fun e!4238877 () Bool)

(declare-fun lt!2529583 () (Set Context!13072))

(declare-fun matchZipper!3080 ((Set Context!13072) List!68146) Bool)

(assert (=> b!7051065 (= e!4238877 (matchZipper!3080 lt!2529583 Nil!68022))))

(declare-fun b!7051066 () Bool)

(declare-fun res!2878606 () Bool)

(assert (=> b!7051066 (=> (not res!2878606) (not e!4238878))))

(declare-fun nullableZipper!2633 ((Set Context!13072)) Bool)

(assert (=> b!7051066 (= res!2878606 (nullableZipper!2633 lt!2529584))))

(declare-fun b!7051067 () Bool)

(declare-fun e!4238880 () Bool)

(declare-fun tp!1939091 () Bool)

(assert (=> b!7051067 (= e!4238880 tp!1939091)))

(declare-fun setIsEmpty!49650 () Bool)

(declare-fun setRes!49650 () Bool)

(assert (=> setIsEmpty!49650 setRes!49650))

(declare-fun b!7051068 () Bool)

(declare-fun e!4238879 () Bool)

(declare-fun tp_is_empty!44305 () Bool)

(declare-fun tp!1939089 () Bool)

(assert (=> b!7051068 (= e!4238879 (and tp_is_empty!44305 tp!1939089))))

(declare-fun b!7051069 () Bool)

(declare-fun res!2878610 () Bool)

(declare-fun e!4238882 () Bool)

(assert (=> b!7051069 (=> res!2878610 e!4238882)))

(declare-fun ct2!306 () Context!13072)

(assert (=> b!7051069 (= res!2878610 (not (nullableContext!96 ct2!306)))))

(declare-fun res!2878603 () Bool)

(assert (=> start!683158 (=> (not res!2878603) (not e!4238878))))

(assert (=> start!683158 (= res!2878603 (matchZipper!3080 lt!2529584 s!7408))))

(declare-fun z1!570 () (Set Context!13072))

(declare-fun appendTo!661 ((Set Context!13072) Context!13072) (Set Context!13072))

(assert (=> start!683158 (= lt!2529584 (appendTo!661 z1!570 ct2!306))))

(assert (=> start!683158 e!4238878))

(declare-fun condSetEmpty!49650 () Bool)

(assert (=> start!683158 (= condSetEmpty!49650 (= z1!570 (as set.empty (Set Context!13072))))))

(assert (=> start!683158 setRes!49650))

(declare-fun inv!86710 (Context!13072) Bool)

(assert (=> start!683158 (and (inv!86710 ct2!306) e!4238880)))

(assert (=> start!683158 e!4238879))

(declare-fun e!4238881 () Bool)

(assert (=> b!7051070 (= e!4238884 e!4238881)))

(declare-fun res!2878602 () Bool)

(assert (=> b!7051070 (=> (not res!2878602) (not e!4238881))))

(declare-fun lt!2529592 () List!68147)

(assert (=> b!7051070 (= res!2878602 (= (Context!13073 lt!2529592) lt!2529590))))

(declare-fun lt!2529586 () Context!13072)

(declare-fun ++!15627 (List!68147 List!68147) List!68147)

(assert (=> b!7051070 (= lt!2529592 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(declare-datatypes ((Unit!161758 0))(
  ( (Unit!161759) )
))
(declare-fun lt!2529593 () Unit!161758)

(declare-fun lemmaConcatPreservesForall!855 (List!68147 List!68147 Int) Unit!161758)

(assert (=> b!7051070 (= lt!2529593 (lemmaConcatPreservesForall!855 (exprs!7036 lt!2529586) (exprs!7036 ct2!306) lambda!419010))))

(declare-fun lambda!419009 () Int)

(declare-fun mapPost2!375 ((Set Context!13072) Int Context!13072) Context!13072)

(assert (=> b!7051070 (= lt!2529586 (mapPost2!375 z1!570 lambda!419009 lt!2529590))))

(declare-fun b!7051071 () Bool)

(declare-fun res!2878605 () Bool)

(assert (=> b!7051071 (=> (not res!2878605) (not e!4238878))))

(declare-fun exists!3514 ((Set Context!13072) Int) Bool)

(assert (=> b!7051071 (= res!2878605 (exists!3514 lt!2529584 lambda!419008))))

(assert (=> b!7051072 (= e!4238881 (not e!4238882))))

(declare-fun res!2878607 () Bool)

(assert (=> b!7051072 (=> res!2878607 e!4238882)))

(assert (=> b!7051072 (= res!2878607 (not (nullableContext!96 lt!2529586)))))

(declare-fun lt!2529588 () Unit!161758)

(declare-fun lemmaContentSubsetPreservesForall!351 (List!68147 List!68147 Int) Unit!161758)

(assert (=> b!7051072 (= lt!2529588 (lemmaContentSubsetPreservesForall!351 lt!2529592 (exprs!7036 ct2!306) lambda!419011))))

(declare-fun lt!2529585 () Unit!161758)

(assert (=> b!7051072 (= lt!2529585 (lemmaContentSubsetPreservesForall!351 lt!2529592 (exprs!7036 lt!2529586) lambda!419011))))

(declare-fun subseq!700 (List!68147 List!68147) Bool)

(assert (=> b!7051072 (subseq!700 (exprs!7036 ct2!306) lt!2529592)))

(declare-fun lt!2529587 () Unit!161758)

(declare-fun lemmaConcatThenSecondSubseqOfTot!21 (List!68147 List!68147) Unit!161758)

(assert (=> b!7051072 (= lt!2529587 (lemmaConcatThenSecondSubseqOfTot!21 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(assert (=> b!7051072 (subseq!700 (exprs!7036 lt!2529586) lt!2529592)))

(declare-fun lt!2529591 () Unit!161758)

(declare-fun lemmaConcatThenFirstSubseqOfTot!21 (List!68147 List!68147) Unit!161758)

(assert (=> b!7051072 (= lt!2529591 (lemmaConcatThenFirstSubseqOfTot!21 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(declare-fun b!7051073 () Bool)

(declare-fun e!4238883 () Bool)

(declare-fun tp!1939092 () Bool)

(assert (=> b!7051073 (= e!4238883 tp!1939092)))

(declare-fun setElem!49650 () Context!13072)

(declare-fun tp!1939090 () Bool)

(declare-fun setNonEmpty!49650 () Bool)

(assert (=> setNonEmpty!49650 (= setRes!49650 (and tp!1939090 (inv!86710 setElem!49650) e!4238883))))

(declare-fun setRest!49650 () (Set Context!13072))

(assert (=> setNonEmpty!49650 (= z1!570 (set.union (set.insert setElem!49650 (as set.empty (Set Context!13072))) setRest!49650))))

(declare-fun b!7051074 () Bool)

(assert (=> b!7051074 (= e!4238882 e!4238877)))

(declare-fun res!2878609 () Bool)

(assert (=> b!7051074 (=> res!2878609 e!4238877)))

(assert (=> b!7051074 (= res!2878609 (not (matchZipper!3080 z1!570 Nil!68022)))))

(assert (=> b!7051074 (exists!3514 lt!2529583 lambda!419008)))

(declare-fun lt!2529582 () Unit!161758)

(declare-fun lemmaContainsThenExists!124 ((Set Context!13072) Context!13072 Int) Unit!161758)

(assert (=> b!7051074 (= lt!2529582 (lemmaContainsThenExists!124 lt!2529583 ct2!306 lambda!419008))))

(assert (=> b!7051074 (= lt!2529583 (set.insert ct2!306 (as set.empty (Set Context!13072))))))

(assert (=> b!7051074 (exists!3514 z1!570 lambda!419008)))

(declare-fun lt!2529589 () Unit!161758)

(assert (=> b!7051074 (= lt!2529589 (lemmaContainsThenExists!124 z1!570 lt!2529586 lambda!419008))))

(assert (= (and start!683158 res!2878603) b!7051063))

(assert (= (and b!7051063 res!2878604) b!7051066))

(assert (= (and b!7051066 res!2878606) b!7051071))

(assert (= (and b!7051071 res!2878605) b!7051064))

(assert (= (and b!7051064 res!2878608) b!7051070))

(assert (= (and b!7051070 res!2878602) b!7051072))

(assert (= (and b!7051072 (not res!2878607)) b!7051069))

(assert (= (and b!7051069 (not res!2878610)) b!7051074))

(assert (= (and b!7051074 (not res!2878609)) b!7051065))

(assert (= (and start!683158 condSetEmpty!49650) setIsEmpty!49650))

(assert (= (and start!683158 (not condSetEmpty!49650)) setNonEmpty!49650))

(assert (= setNonEmpty!49650 b!7051073))

(assert (= start!683158 b!7051067))

(assert (= (and start!683158 (is-Cons!68022 s!7408)) b!7051068))

(declare-fun m!7767122 () Bool)

(assert (=> start!683158 m!7767122))

(declare-fun m!7767124 () Bool)

(assert (=> start!683158 m!7767124))

(declare-fun m!7767126 () Bool)

(assert (=> start!683158 m!7767126))

(declare-fun m!7767128 () Bool)

(assert (=> b!7051071 m!7767128))

(declare-fun m!7767130 () Bool)

(assert (=> b!7051066 m!7767130))

(declare-fun m!7767132 () Bool)

(assert (=> b!7051072 m!7767132))

(declare-fun m!7767134 () Bool)

(assert (=> b!7051072 m!7767134))

(declare-fun m!7767136 () Bool)

(assert (=> b!7051072 m!7767136))

(declare-fun m!7767138 () Bool)

(assert (=> b!7051072 m!7767138))

(declare-fun m!7767140 () Bool)

(assert (=> b!7051072 m!7767140))

(declare-fun m!7767142 () Bool)

(assert (=> b!7051072 m!7767142))

(declare-fun m!7767144 () Bool)

(assert (=> b!7051072 m!7767144))

(declare-fun m!7767146 () Bool)

(assert (=> b!7051064 m!7767146))

(declare-fun m!7767148 () Bool)

(assert (=> b!7051064 m!7767148))

(declare-fun m!7767150 () Bool)

(assert (=> b!7051065 m!7767150))

(declare-fun m!7767152 () Bool)

(assert (=> b!7051069 m!7767152))

(declare-fun m!7767154 () Bool)

(assert (=> setNonEmpty!49650 m!7767154))

(declare-fun m!7767156 () Bool)

(assert (=> b!7051074 m!7767156))

(declare-fun m!7767158 () Bool)

(assert (=> b!7051074 m!7767158))

(declare-fun m!7767160 () Bool)

(assert (=> b!7051074 m!7767160))

(declare-fun m!7767162 () Bool)

(assert (=> b!7051074 m!7767162))

(declare-fun m!7767164 () Bool)

(assert (=> b!7051074 m!7767164))

(declare-fun m!7767166 () Bool)

(assert (=> b!7051074 m!7767166))

(declare-fun m!7767168 () Bool)

(assert (=> b!7051070 m!7767168))

(declare-fun m!7767170 () Bool)

(assert (=> b!7051070 m!7767170))

(declare-fun m!7767172 () Bool)

(assert (=> b!7051070 m!7767172))

(push 1)

(assert (not b!7051066))

(assert (not b!7051067))

(assert (not b!7051070))

(assert (not b!7051068))

(assert (not start!683158))

(assert (not b!7051073))

(assert tp_is_empty!44305)

(assert (not b!7051074))

(assert (not b!7051071))

(assert (not b!7051069))

(assert (not setNonEmpty!49650))

(assert (not b!7051064))

(assert (not b!7051065))

(assert (not b!7051072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2202968 () Bool)

(declare-fun c!1313347 () Bool)

(declare-fun isEmpty!39688 (List!68146) Bool)

(assert (=> d!2202968 (= c!1313347 (isEmpty!39688 s!7408))))

(declare-fun e!4238911 () Bool)

(assert (=> d!2202968 (= (matchZipper!3080 lt!2529584 s!7408) e!4238911)))

(declare-fun b!7051119 () Bool)

(assert (=> b!7051119 (= e!4238911 (nullableZipper!2633 lt!2529584))))

(declare-fun b!7051120 () Bool)

(declare-fun derivationStepZipper!2993 ((Set Context!13072) C!35350) (Set Context!13072))

(declare-fun head!14331 (List!68146) C!35350)

(declare-fun tail!13662 (List!68146) List!68146)

(assert (=> b!7051120 (= e!4238911 (matchZipper!3080 (derivationStepZipper!2993 lt!2529584 (head!14331 s!7408)) (tail!13662 s!7408)))))

(assert (= (and d!2202968 c!1313347) b!7051119))

(assert (= (and d!2202968 (not c!1313347)) b!7051120))

(declare-fun m!7767226 () Bool)

(assert (=> d!2202968 m!7767226))

(assert (=> b!7051119 m!7767130))

(declare-fun m!7767228 () Bool)

(assert (=> b!7051120 m!7767228))

(assert (=> b!7051120 m!7767228))

(declare-fun m!7767230 () Bool)

(assert (=> b!7051120 m!7767230))

(declare-fun m!7767232 () Bool)

(assert (=> b!7051120 m!7767232))

(assert (=> b!7051120 m!7767230))

(assert (=> b!7051120 m!7767232))

(declare-fun m!7767234 () Bool)

(assert (=> b!7051120 m!7767234))

(assert (=> start!683158 d!2202968))

(declare-fun bs!1876035 () Bool)

(declare-fun d!2202970 () Bool)

(assert (= bs!1876035 (and d!2202970 b!7051070)))

(declare-fun lambda!419038 () Int)

(assert (=> bs!1876035 (= lambda!419038 lambda!419009)))

(assert (=> d!2202970 true))

(declare-fun map!15855 ((Set Context!13072) Int) (Set Context!13072))

(assert (=> d!2202970 (= (appendTo!661 z1!570 ct2!306) (map!15855 z1!570 lambda!419038))))

(declare-fun bs!1876036 () Bool)

(assert (= bs!1876036 d!2202970))

(declare-fun m!7767236 () Bool)

(assert (=> bs!1876036 m!7767236))

(assert (=> start!683158 d!2202970))

(declare-fun bs!1876037 () Bool)

(declare-fun d!2202972 () Bool)

(assert (= bs!1876037 (and d!2202972 b!7051070)))

(declare-fun lambda!419041 () Int)

(assert (=> bs!1876037 (= lambda!419041 lambda!419010)))

(declare-fun bs!1876038 () Bool)

(assert (= bs!1876038 (and d!2202972 b!7051072)))

(assert (=> bs!1876038 (not (= lambda!419041 lambda!419011))))

(declare-fun forall!16471 (List!68147 Int) Bool)

(assert (=> d!2202972 (= (inv!86710 ct2!306) (forall!16471 (exprs!7036 ct2!306) lambda!419041))))

(declare-fun bs!1876039 () Bool)

(assert (= bs!1876039 d!2202972))

(declare-fun m!7767238 () Bool)

(assert (=> bs!1876039 m!7767238))

(assert (=> start!683158 d!2202972))

(declare-fun bs!1876040 () Bool)

(declare-fun d!2202974 () Bool)

(assert (= bs!1876040 (and d!2202974 b!7051070)))

(declare-fun lambda!419042 () Int)

(assert (=> bs!1876040 (= lambda!419042 lambda!419010)))

(declare-fun bs!1876041 () Bool)

(assert (= bs!1876041 (and d!2202974 b!7051072)))

(assert (=> bs!1876041 (not (= lambda!419042 lambda!419011))))

(declare-fun bs!1876042 () Bool)

(assert (= bs!1876042 (and d!2202974 d!2202972)))

(assert (=> bs!1876042 (= lambda!419042 lambda!419041)))

(assert (=> d!2202974 (= (inv!86710 setElem!49650) (forall!16471 (exprs!7036 setElem!49650) lambda!419042))))

(declare-fun bs!1876043 () Bool)

(assert (= bs!1876043 d!2202974))

(declare-fun m!7767240 () Bool)

(assert (=> bs!1876043 m!7767240))

(assert (=> setNonEmpty!49650 d!2202974))

(declare-fun bs!1876044 () Bool)

(declare-fun d!2202976 () Bool)

(assert (= bs!1876044 (and d!2202976 b!7051070)))

(declare-fun lambda!419045 () Int)

(assert (=> bs!1876044 (not (= lambda!419045 lambda!419010))))

(declare-fun bs!1876045 () Bool)

(assert (= bs!1876045 (and d!2202976 b!7051072)))

(assert (=> bs!1876045 (= lambda!419045 lambda!419011)))

(declare-fun bs!1876046 () Bool)

(assert (= bs!1876046 (and d!2202976 d!2202972)))

(assert (=> bs!1876046 (not (= lambda!419045 lambda!419041))))

(declare-fun bs!1876047 () Bool)

(assert (= bs!1876047 (and d!2202976 d!2202974)))

(assert (=> bs!1876047 (not (= lambda!419045 lambda!419042))))

(assert (=> d!2202976 (= (nullableContext!96 lt!2529590) (forall!16471 (exprs!7036 lt!2529590) lambda!419045))))

(declare-fun bs!1876048 () Bool)

(assert (= bs!1876048 d!2202976))

(declare-fun m!7767242 () Bool)

(assert (=> bs!1876048 m!7767242))

(assert (=> b!7051064 d!2202976))

(declare-fun d!2202978 () Bool)

(declare-fun e!4238914 () Bool)

(assert (=> d!2202978 e!4238914))

(declare-fun res!2878642 () Bool)

(assert (=> d!2202978 (=> (not res!2878642) (not e!4238914))))

(declare-fun lt!2529636 () Context!13072)

(declare-fun dynLambda!27564 (Int Context!13072) Bool)

(assert (=> d!2202978 (= res!2878642 (dynLambda!27564 lambda!419008 lt!2529636))))

(declare-datatypes ((List!68150 0))(
  ( (Nil!68026) (Cons!68026 (h!74474 Context!13072) (t!381929 List!68150)) )
))
(declare-fun getWitness!1590 (List!68150 Int) Context!13072)

(declare-fun toList!10881 ((Set Context!13072)) List!68150)

(assert (=> d!2202978 (= lt!2529636 (getWitness!1590 (toList!10881 lt!2529584) lambda!419008))))

(assert (=> d!2202978 (exists!3514 lt!2529584 lambda!419008)))

(assert (=> d!2202978 (= (getWitness!1588 lt!2529584 lambda!419008) lt!2529636)))

(declare-fun b!7051123 () Bool)

(assert (=> b!7051123 (= e!4238914 (set.member lt!2529636 lt!2529584))))

(assert (= (and d!2202978 res!2878642) b!7051123))

(declare-fun b_lambda!268215 () Bool)

(assert (=> (not b_lambda!268215) (not d!2202978)))

(declare-fun m!7767244 () Bool)

(assert (=> d!2202978 m!7767244))

(declare-fun m!7767246 () Bool)

(assert (=> d!2202978 m!7767246))

(assert (=> d!2202978 m!7767246))

(declare-fun m!7767248 () Bool)

(assert (=> d!2202978 m!7767248))

(assert (=> d!2202978 m!7767128))

(declare-fun m!7767250 () Bool)

(assert (=> b!7051123 m!7767250))

(assert (=> b!7051064 d!2202978))

(declare-fun d!2202980 () Bool)

(declare-fun c!1313350 () Bool)

(assert (=> d!2202980 (= c!1313350 (isEmpty!39688 Nil!68022))))

(declare-fun e!4238915 () Bool)

(assert (=> d!2202980 (= (matchZipper!3080 lt!2529583 Nil!68022) e!4238915)))

(declare-fun b!7051124 () Bool)

(assert (=> b!7051124 (= e!4238915 (nullableZipper!2633 lt!2529583))))

(declare-fun b!7051125 () Bool)

(assert (=> b!7051125 (= e!4238915 (matchZipper!3080 (derivationStepZipper!2993 lt!2529583 (head!14331 Nil!68022)) (tail!13662 Nil!68022)))))

(assert (= (and d!2202980 c!1313350) b!7051124))

(assert (= (and d!2202980 (not c!1313350)) b!7051125))

(declare-fun m!7767252 () Bool)

(assert (=> d!2202980 m!7767252))

(declare-fun m!7767254 () Bool)

(assert (=> b!7051124 m!7767254))

(declare-fun m!7767256 () Bool)

(assert (=> b!7051125 m!7767256))

(assert (=> b!7051125 m!7767256))

(declare-fun m!7767258 () Bool)

(assert (=> b!7051125 m!7767258))

(declare-fun m!7767260 () Bool)

(assert (=> b!7051125 m!7767260))

(assert (=> b!7051125 m!7767258))

(assert (=> b!7051125 m!7767260))

(declare-fun m!7767262 () Bool)

(assert (=> b!7051125 m!7767262))

(assert (=> b!7051065 d!2202980))

(declare-fun bs!1876049 () Bool)

(declare-fun d!2202982 () Bool)

(assert (= bs!1876049 (and d!2202982 b!7051070)))

(declare-fun lambda!419046 () Int)

(assert (=> bs!1876049 (not (= lambda!419046 lambda!419010))))

(declare-fun bs!1876050 () Bool)

(assert (= bs!1876050 (and d!2202982 b!7051072)))

(assert (=> bs!1876050 (= lambda!419046 lambda!419011)))

(declare-fun bs!1876051 () Bool)

(assert (= bs!1876051 (and d!2202982 d!2202972)))

(assert (=> bs!1876051 (not (= lambda!419046 lambda!419041))))

(declare-fun bs!1876052 () Bool)

(assert (= bs!1876052 (and d!2202982 d!2202976)))

(assert (=> bs!1876052 (= lambda!419046 lambda!419045)))

(declare-fun bs!1876053 () Bool)

(assert (= bs!1876053 (and d!2202982 d!2202974)))

(assert (=> bs!1876053 (not (= lambda!419046 lambda!419042))))

(assert (=> d!2202982 (= (nullableContext!96 ct2!306) (forall!16471 (exprs!7036 ct2!306) lambda!419046))))

(declare-fun bs!1876054 () Bool)

(assert (= bs!1876054 d!2202982))

(declare-fun m!7767264 () Bool)

(assert (=> bs!1876054 m!7767264))

(assert (=> b!7051069 d!2202982))

(declare-fun d!2202984 () Bool)

(declare-fun e!4238921 () Bool)

(assert (=> d!2202984 e!4238921))

(declare-fun res!2878648 () Bool)

(assert (=> d!2202984 (=> (not res!2878648) (not e!4238921))))

(declare-fun lt!2529639 () List!68147)

(declare-fun content!13643 (List!68147) (Set Regex!17540))

(assert (=> d!2202984 (= res!2878648 (= (content!13643 lt!2529639) (set.union (content!13643 (exprs!7036 lt!2529586)) (content!13643 (exprs!7036 ct2!306)))))))

(declare-fun e!4238920 () List!68147)

(assert (=> d!2202984 (= lt!2529639 e!4238920)))

(declare-fun c!1313353 () Bool)

(assert (=> d!2202984 (= c!1313353 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2202984 (= (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) lt!2529639)))

(declare-fun b!7051136 () Bool)

(declare-fun res!2878647 () Bool)

(assert (=> b!7051136 (=> (not res!2878647) (not e!4238921))))

(declare-fun size!41132 (List!68147) Int)

(assert (=> b!7051136 (= res!2878647 (= (size!41132 lt!2529639) (+ (size!41132 (exprs!7036 lt!2529586)) (size!41132 (exprs!7036 ct2!306)))))))

(declare-fun b!7051134 () Bool)

(assert (=> b!7051134 (= e!4238920 (exprs!7036 ct2!306))))

(declare-fun b!7051135 () Bool)

(assert (=> b!7051135 (= e!4238920 (Cons!68023 (h!74471 (exprs!7036 lt!2529586)) (++!15627 (t!381926 (exprs!7036 lt!2529586)) (exprs!7036 ct2!306))))))

(declare-fun b!7051137 () Bool)

(assert (=> b!7051137 (= e!4238921 (or (not (= (exprs!7036 ct2!306) Nil!68023)) (= lt!2529639 (exprs!7036 lt!2529586))))))

(assert (= (and d!2202984 c!1313353) b!7051134))

(assert (= (and d!2202984 (not c!1313353)) b!7051135))

(assert (= (and d!2202984 res!2878648) b!7051136))

(assert (= (and b!7051136 res!2878647) b!7051137))

(declare-fun m!7767266 () Bool)

(assert (=> d!2202984 m!7767266))

(declare-fun m!7767268 () Bool)

(assert (=> d!2202984 m!7767268))

(declare-fun m!7767270 () Bool)

(assert (=> d!2202984 m!7767270))

(declare-fun m!7767272 () Bool)

(assert (=> b!7051136 m!7767272))

(declare-fun m!7767274 () Bool)

(assert (=> b!7051136 m!7767274))

(declare-fun m!7767276 () Bool)

(assert (=> b!7051136 m!7767276))

(declare-fun m!7767278 () Bool)

(assert (=> b!7051135 m!7767278))

(assert (=> b!7051070 d!2202984))

(declare-fun d!2202988 () Bool)

(assert (=> d!2202988 (forall!16471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) lambda!419010)))

(declare-fun lt!2529642 () Unit!161758)

(declare-fun choose!53681 (List!68147 List!68147 Int) Unit!161758)

(assert (=> d!2202988 (= lt!2529642 (choose!53681 (exprs!7036 lt!2529586) (exprs!7036 ct2!306) lambda!419010))))

(assert (=> d!2202988 (forall!16471 (exprs!7036 lt!2529586) lambda!419010)))

(assert (=> d!2202988 (= (lemmaConcatPreservesForall!855 (exprs!7036 lt!2529586) (exprs!7036 ct2!306) lambda!419010) lt!2529642)))

(declare-fun bs!1876058 () Bool)

(assert (= bs!1876058 d!2202988))

(assert (=> bs!1876058 m!7767168))

(assert (=> bs!1876058 m!7767168))

(declare-fun m!7767282 () Bool)

(assert (=> bs!1876058 m!7767282))

(declare-fun m!7767284 () Bool)

(assert (=> bs!1876058 m!7767284))

(declare-fun m!7767286 () Bool)

(assert (=> bs!1876058 m!7767286))

(assert (=> b!7051070 d!2202988))

(declare-fun d!2202992 () Bool)

(declare-fun e!4238924 () Bool)

(assert (=> d!2202992 e!4238924))

(declare-fun res!2878651 () Bool)

(assert (=> d!2202992 (=> (not res!2878651) (not e!4238924))))

(declare-fun lt!2529645 () Context!13072)

(declare-fun dynLambda!27565 (Int Context!13072) Context!13072)

(assert (=> d!2202992 (= res!2878651 (= lt!2529590 (dynLambda!27565 lambda!419009 lt!2529645)))))

(declare-fun choose!53682 ((Set Context!13072) Int Context!13072) Context!13072)

(assert (=> d!2202992 (= lt!2529645 (choose!53682 z1!570 lambda!419009 lt!2529590))))

(assert (=> d!2202992 (set.member lt!2529590 (map!15855 z1!570 lambda!419009))))

(assert (=> d!2202992 (= (mapPost2!375 z1!570 lambda!419009 lt!2529590) lt!2529645)))

(declare-fun b!7051141 () Bool)

(assert (=> b!7051141 (= e!4238924 (set.member lt!2529645 z1!570))))

(assert (= (and d!2202992 res!2878651) b!7051141))

(declare-fun b_lambda!268217 () Bool)

(assert (=> (not b_lambda!268217) (not d!2202992)))

(declare-fun m!7767288 () Bool)

(assert (=> d!2202992 m!7767288))

(declare-fun m!7767290 () Bool)

(assert (=> d!2202992 m!7767290))

(declare-fun m!7767292 () Bool)

(assert (=> d!2202992 m!7767292))

(declare-fun m!7767294 () Bool)

(assert (=> d!2202992 m!7767294))

(declare-fun m!7767296 () Bool)

(assert (=> b!7051141 m!7767296))

(assert (=> b!7051070 d!2202992))

(declare-fun d!2202994 () Bool)

(assert (=> d!2202994 (exists!3514 lt!2529583 lambda!419008)))

(declare-fun lt!2529648 () Unit!161758)

(declare-fun choose!53683 ((Set Context!13072) Context!13072 Int) Unit!161758)

(assert (=> d!2202994 (= lt!2529648 (choose!53683 lt!2529583 ct2!306 lambda!419008))))

(assert (=> d!2202994 (set.member ct2!306 lt!2529583)))

(assert (=> d!2202994 (= (lemmaContainsThenExists!124 lt!2529583 ct2!306 lambda!419008) lt!2529648)))

(declare-fun bs!1876061 () Bool)

(assert (= bs!1876061 d!2202994))

(assert (=> bs!1876061 m!7767162))

(declare-fun m!7767300 () Bool)

(assert (=> bs!1876061 m!7767300))

(declare-fun m!7767302 () Bool)

(assert (=> bs!1876061 m!7767302))

(assert (=> b!7051074 d!2202994))

(declare-fun d!2202998 () Bool)

(declare-fun c!1313356 () Bool)

(assert (=> d!2202998 (= c!1313356 (isEmpty!39688 Nil!68022))))

(declare-fun e!4238926 () Bool)

(assert (=> d!2202998 (= (matchZipper!3080 z1!570 Nil!68022) e!4238926)))

(declare-fun b!7051142 () Bool)

(assert (=> b!7051142 (= e!4238926 (nullableZipper!2633 z1!570))))

(declare-fun b!7051143 () Bool)

(assert (=> b!7051143 (= e!4238926 (matchZipper!3080 (derivationStepZipper!2993 z1!570 (head!14331 Nil!68022)) (tail!13662 Nil!68022)))))

(assert (= (and d!2202998 c!1313356) b!7051142))

(assert (= (and d!2202998 (not c!1313356)) b!7051143))

(assert (=> d!2202998 m!7767252))

(declare-fun m!7767304 () Bool)

(assert (=> b!7051142 m!7767304))

(assert (=> b!7051143 m!7767256))

(assert (=> b!7051143 m!7767256))

(declare-fun m!7767306 () Bool)

(assert (=> b!7051143 m!7767306))

(assert (=> b!7051143 m!7767260))

(assert (=> b!7051143 m!7767306))

(assert (=> b!7051143 m!7767260))

(declare-fun m!7767308 () Bool)

(assert (=> b!7051143 m!7767308))

(assert (=> b!7051074 d!2202998))

(declare-fun d!2203000 () Bool)

(declare-fun lt!2529651 () Bool)

(declare-fun exists!3516 (List!68150 Int) Bool)

(assert (=> d!2203000 (= lt!2529651 (exists!3516 (toList!10881 z1!570) lambda!419008))))

(declare-fun choose!53684 ((Set Context!13072) Int) Bool)

(assert (=> d!2203000 (= lt!2529651 (choose!53684 z1!570 lambda!419008))))

(assert (=> d!2203000 (= (exists!3514 z1!570 lambda!419008) lt!2529651)))

(declare-fun bs!1876062 () Bool)

(assert (= bs!1876062 d!2203000))

(declare-fun m!7767310 () Bool)

(assert (=> bs!1876062 m!7767310))

(assert (=> bs!1876062 m!7767310))

(declare-fun m!7767312 () Bool)

(assert (=> bs!1876062 m!7767312))

(declare-fun m!7767314 () Bool)

(assert (=> bs!1876062 m!7767314))

(assert (=> b!7051074 d!2203000))

(declare-fun d!2203002 () Bool)

(declare-fun lt!2529652 () Bool)

(assert (=> d!2203002 (= lt!2529652 (exists!3516 (toList!10881 lt!2529583) lambda!419008))))

(assert (=> d!2203002 (= lt!2529652 (choose!53684 lt!2529583 lambda!419008))))

(assert (=> d!2203002 (= (exists!3514 lt!2529583 lambda!419008) lt!2529652)))

(declare-fun bs!1876063 () Bool)

(assert (= bs!1876063 d!2203002))

(declare-fun m!7767316 () Bool)

(assert (=> bs!1876063 m!7767316))

(assert (=> bs!1876063 m!7767316))

(declare-fun m!7767318 () Bool)

(assert (=> bs!1876063 m!7767318))

(declare-fun m!7767320 () Bool)

(assert (=> bs!1876063 m!7767320))

(assert (=> b!7051074 d!2203002))

(declare-fun d!2203004 () Bool)

(assert (=> d!2203004 (exists!3514 z1!570 lambda!419008)))

(declare-fun lt!2529653 () Unit!161758)

(assert (=> d!2203004 (= lt!2529653 (choose!53683 z1!570 lt!2529586 lambda!419008))))

(assert (=> d!2203004 (set.member lt!2529586 z1!570)))

(assert (=> d!2203004 (= (lemmaContainsThenExists!124 z1!570 lt!2529586 lambda!419008) lt!2529653)))

(declare-fun bs!1876064 () Bool)

(assert (= bs!1876064 d!2203004))

(assert (=> bs!1876064 m!7767164))

(declare-fun m!7767322 () Bool)

(assert (=> bs!1876064 m!7767322))

(declare-fun m!7767324 () Bool)

(assert (=> bs!1876064 m!7767324))

(assert (=> b!7051074 d!2203004))

(declare-fun bs!1876066 () Bool)

(declare-fun d!2203006 () Bool)

(assert (= bs!1876066 (and d!2203006 b!7051071)))

(declare-fun lambda!419055 () Int)

(assert (=> bs!1876066 (= lambda!419055 lambda!419008)))

(assert (=> d!2203006 (= (nullableZipper!2633 lt!2529584) (exists!3514 lt!2529584 lambda!419055))))

(declare-fun bs!1876067 () Bool)

(assert (= bs!1876067 d!2203006))

(declare-fun m!7767332 () Bool)

(assert (=> bs!1876067 m!7767332))

(assert (=> b!7051066 d!2203006))

(declare-fun d!2203010 () Bool)

(declare-fun lt!2529657 () Bool)

(assert (=> d!2203010 (= lt!2529657 (exists!3516 (toList!10881 lt!2529584) lambda!419008))))

(assert (=> d!2203010 (= lt!2529657 (choose!53684 lt!2529584 lambda!419008))))

(assert (=> d!2203010 (= (exists!3514 lt!2529584 lambda!419008) lt!2529657)))

(declare-fun bs!1876068 () Bool)

(assert (= bs!1876068 d!2203010))

(assert (=> bs!1876068 m!7767246))

(assert (=> bs!1876068 m!7767246))

(declare-fun m!7767334 () Bool)

(assert (=> bs!1876068 m!7767334))

(declare-fun m!7767336 () Bool)

(assert (=> bs!1876068 m!7767336))

(assert (=> b!7051071 d!2203010))

(declare-fun b!7051153 () Bool)

(declare-fun e!4238939 () Bool)

(declare-fun e!4238937 () Bool)

(assert (=> b!7051153 (= e!4238939 e!4238937)))

(declare-fun res!2878662 () Bool)

(assert (=> b!7051153 (=> res!2878662 e!4238937)))

(declare-fun e!4238938 () Bool)

(assert (=> b!7051153 (= res!2878662 e!4238938)))

(declare-fun res!2878661 () Bool)

(assert (=> b!7051153 (=> (not res!2878661) (not e!4238938))))

(assert (=> b!7051153 (= res!2878661 (= (h!74471 (exprs!7036 ct2!306)) (h!74471 lt!2529592)))))

(declare-fun b!7051152 () Bool)

(declare-fun e!4238936 () Bool)

(assert (=> b!7051152 (= e!4238936 e!4238939)))

(declare-fun res!2878660 () Bool)

(assert (=> b!7051152 (=> (not res!2878660) (not e!4238939))))

(assert (=> b!7051152 (= res!2878660 (is-Cons!68023 lt!2529592))))

(declare-fun b!7051154 () Bool)

(assert (=> b!7051154 (= e!4238938 (subseq!700 (t!381926 (exprs!7036 ct2!306)) (t!381926 lt!2529592)))))

(declare-fun d!2203012 () Bool)

(declare-fun res!2878663 () Bool)

(assert (=> d!2203012 (=> res!2878663 e!4238936)))

(assert (=> d!2203012 (= res!2878663 (is-Nil!68023 (exprs!7036 ct2!306)))))

(assert (=> d!2203012 (= (subseq!700 (exprs!7036 ct2!306) lt!2529592) e!4238936)))

(declare-fun b!7051155 () Bool)

(assert (=> b!7051155 (= e!4238937 (subseq!700 (exprs!7036 ct2!306) (t!381926 lt!2529592)))))

(assert (= (and d!2203012 (not res!2878663)) b!7051152))

(assert (= (and b!7051152 res!2878660) b!7051153))

(assert (= (and b!7051153 res!2878661) b!7051154))

(assert (= (and b!7051153 (not res!2878662)) b!7051155))

(declare-fun m!7767338 () Bool)

(assert (=> b!7051154 m!7767338))

(declare-fun m!7767340 () Bool)

(assert (=> b!7051155 m!7767340))

(assert (=> b!7051072 d!2203012))

(declare-fun bs!1876069 () Bool)

(declare-fun d!2203014 () Bool)

(assert (= bs!1876069 (and d!2203014 b!7051070)))

(declare-fun lambda!419056 () Int)

(assert (=> bs!1876069 (not (= lambda!419056 lambda!419010))))

(declare-fun bs!1876070 () Bool)

(assert (= bs!1876070 (and d!2203014 b!7051072)))

(assert (=> bs!1876070 (= lambda!419056 lambda!419011)))

(declare-fun bs!1876071 () Bool)

(assert (= bs!1876071 (and d!2203014 d!2202972)))

(assert (=> bs!1876071 (not (= lambda!419056 lambda!419041))))

(declare-fun bs!1876072 () Bool)

(assert (= bs!1876072 (and d!2203014 d!2202974)))

(assert (=> bs!1876072 (not (= lambda!419056 lambda!419042))))

(declare-fun bs!1876073 () Bool)

(assert (= bs!1876073 (and d!2203014 d!2202976)))

(assert (=> bs!1876073 (= lambda!419056 lambda!419045)))

(declare-fun bs!1876074 () Bool)

(assert (= bs!1876074 (and d!2203014 d!2202982)))

(assert (=> bs!1876074 (= lambda!419056 lambda!419046)))

(assert (=> d!2203014 (= (nullableContext!96 lt!2529586) (forall!16471 (exprs!7036 lt!2529586) lambda!419056))))

(declare-fun bs!1876075 () Bool)

(assert (= bs!1876075 d!2203014))

(declare-fun m!7767342 () Bool)

(assert (=> bs!1876075 m!7767342))

(assert (=> b!7051072 d!2203014))

(declare-fun b!7051157 () Bool)

(declare-fun e!4238943 () Bool)

(declare-fun e!4238941 () Bool)

(assert (=> b!7051157 (= e!4238943 e!4238941)))

(declare-fun res!2878666 () Bool)

(assert (=> b!7051157 (=> res!2878666 e!4238941)))

(declare-fun e!4238942 () Bool)

(assert (=> b!7051157 (= res!2878666 e!4238942)))

(declare-fun res!2878665 () Bool)

(assert (=> b!7051157 (=> (not res!2878665) (not e!4238942))))

(assert (=> b!7051157 (= res!2878665 (= (h!74471 (exprs!7036 lt!2529586)) (h!74471 lt!2529592)))))

(declare-fun b!7051156 () Bool)

(declare-fun e!4238940 () Bool)

(assert (=> b!7051156 (= e!4238940 e!4238943)))

(declare-fun res!2878664 () Bool)

(assert (=> b!7051156 (=> (not res!2878664) (not e!4238943))))

(assert (=> b!7051156 (= res!2878664 (is-Cons!68023 lt!2529592))))

(declare-fun b!7051158 () Bool)

(assert (=> b!7051158 (= e!4238942 (subseq!700 (t!381926 (exprs!7036 lt!2529586)) (t!381926 lt!2529592)))))

(declare-fun d!2203016 () Bool)

(declare-fun res!2878667 () Bool)

(assert (=> d!2203016 (=> res!2878667 e!4238940)))

(assert (=> d!2203016 (= res!2878667 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2203016 (= (subseq!700 (exprs!7036 lt!2529586) lt!2529592) e!4238940)))

(declare-fun b!7051159 () Bool)

(assert (=> b!7051159 (= e!4238941 (subseq!700 (exprs!7036 lt!2529586) (t!381926 lt!2529592)))))

(assert (= (and d!2203016 (not res!2878667)) b!7051156))

(assert (= (and b!7051156 res!2878664) b!7051157))

(assert (= (and b!7051157 res!2878665) b!7051158))

(assert (= (and b!7051157 (not res!2878666)) b!7051159))

(declare-fun m!7767344 () Bool)

(assert (=> b!7051158 m!7767344))

(declare-fun m!7767346 () Bool)

(assert (=> b!7051159 m!7767346))

(assert (=> b!7051072 d!2203016))

(declare-fun d!2203018 () Bool)

(assert (=> d!2203018 (forall!16471 (exprs!7036 ct2!306) lambda!419011)))

(declare-fun lt!2529665 () Unit!161758)

(declare-fun choose!53685 (List!68147 List!68147 Int) Unit!161758)

(assert (=> d!2203018 (= lt!2529665 (choose!53685 lt!2529592 (exprs!7036 ct2!306) lambda!419011))))

(assert (=> d!2203018 (forall!16471 lt!2529592 lambda!419011)))

(assert (=> d!2203018 (= (lemmaContentSubsetPreservesForall!351 lt!2529592 (exprs!7036 ct2!306) lambda!419011) lt!2529665)))

(declare-fun bs!1876079 () Bool)

(assert (= bs!1876079 d!2203018))

(declare-fun m!7767362 () Bool)

(assert (=> bs!1876079 m!7767362))

(declare-fun m!7767364 () Bool)

(assert (=> bs!1876079 m!7767364))

(declare-fun m!7767366 () Bool)

(assert (=> bs!1876079 m!7767366))

(assert (=> b!7051072 d!2203018))

(declare-fun d!2203026 () Bool)

(assert (=> d!2203026 (subseq!700 (exprs!7036 ct2!306) (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(declare-fun lt!2529668 () Unit!161758)

(declare-fun choose!53686 (List!68147 List!68147) Unit!161758)

(assert (=> d!2203026 (= lt!2529668 (choose!53686 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(assert (=> d!2203026 (= (lemmaConcatThenSecondSubseqOfTot!21 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) lt!2529668)))

(declare-fun bs!1876080 () Bool)

(assert (= bs!1876080 d!2203026))

(assert (=> bs!1876080 m!7767168))

(assert (=> bs!1876080 m!7767168))

(declare-fun m!7767368 () Bool)

(assert (=> bs!1876080 m!7767368))

(declare-fun m!7767370 () Bool)

(assert (=> bs!1876080 m!7767370))

(assert (=> b!7051072 d!2203026))

(declare-fun d!2203028 () Bool)

(assert (=> d!2203028 (forall!16471 (exprs!7036 lt!2529586) lambda!419011)))

(declare-fun lt!2529669 () Unit!161758)

(assert (=> d!2203028 (= lt!2529669 (choose!53685 lt!2529592 (exprs!7036 lt!2529586) lambda!419011))))

(assert (=> d!2203028 (forall!16471 lt!2529592 lambda!419011)))

(assert (=> d!2203028 (= (lemmaContentSubsetPreservesForall!351 lt!2529592 (exprs!7036 lt!2529586) lambda!419011) lt!2529669)))

(declare-fun bs!1876081 () Bool)

(assert (= bs!1876081 d!2203028))

(declare-fun m!7767372 () Bool)

(assert (=> bs!1876081 m!7767372))

(declare-fun m!7767374 () Bool)

(assert (=> bs!1876081 m!7767374))

(assert (=> bs!1876081 m!7767366))

(assert (=> b!7051072 d!2203028))

(declare-fun d!2203030 () Bool)

(assert (=> d!2203030 (subseq!700 (exprs!7036 lt!2529586) (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(declare-fun lt!2529672 () Unit!161758)

(declare-fun choose!53687 (List!68147 List!68147) Unit!161758)

(assert (=> d!2203030 (= lt!2529672 (choose!53687 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(assert (=> d!2203030 (= (lemmaConcatThenFirstSubseqOfTot!21 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) lt!2529672)))

(declare-fun bs!1876082 () Bool)

(assert (= bs!1876082 d!2203030))

(assert (=> bs!1876082 m!7767168))

(assert (=> bs!1876082 m!7767168))

(declare-fun m!7767376 () Bool)

(assert (=> bs!1876082 m!7767376))

(declare-fun m!7767378 () Bool)

(assert (=> bs!1876082 m!7767378))

(assert (=> b!7051072 d!2203030))

(declare-fun condSetEmpty!49656 () Bool)

(assert (=> setNonEmpty!49650 (= condSetEmpty!49656 (= setRest!49650 (as set.empty (Set Context!13072))))))

(declare-fun setRes!49656 () Bool)

(assert (=> setNonEmpty!49650 (= tp!1939090 setRes!49656)))

(declare-fun setIsEmpty!49656 () Bool)

(assert (=> setIsEmpty!49656 setRes!49656))

(declare-fun e!4238946 () Bool)

(declare-fun setNonEmpty!49656 () Bool)

(declare-fun setElem!49656 () Context!13072)

(declare-fun tp!1939109 () Bool)

(assert (=> setNonEmpty!49656 (= setRes!49656 (and tp!1939109 (inv!86710 setElem!49656) e!4238946))))

(declare-fun setRest!49656 () (Set Context!13072))

(assert (=> setNonEmpty!49656 (= setRest!49650 (set.union (set.insert setElem!49656 (as set.empty (Set Context!13072))) setRest!49656))))

(declare-fun b!7051164 () Bool)

(declare-fun tp!1939110 () Bool)

(assert (=> b!7051164 (= e!4238946 tp!1939110)))

(assert (= (and setNonEmpty!49650 condSetEmpty!49656) setIsEmpty!49656))

(assert (= (and setNonEmpty!49650 (not condSetEmpty!49656)) setNonEmpty!49656))

(assert (= setNonEmpty!49656 b!7051164))

(declare-fun m!7767380 () Bool)

(assert (=> setNonEmpty!49656 m!7767380))

(declare-fun b!7051171 () Bool)

(declare-fun e!4238949 () Bool)

(declare-fun tp!1939115 () Bool)

(declare-fun tp!1939116 () Bool)

(assert (=> b!7051171 (= e!4238949 (and tp!1939115 tp!1939116))))

(assert (=> b!7051067 (= tp!1939091 e!4238949)))

(assert (= (and b!7051067 (is-Cons!68023 (exprs!7036 ct2!306))) b!7051171))

(declare-fun b!7051178 () Bool)

(declare-fun e!4238954 () Bool)

(declare-fun tp!1939119 () Bool)

(assert (=> b!7051178 (= e!4238954 (and tp_is_empty!44305 tp!1939119))))

(assert (=> b!7051068 (= tp!1939089 e!4238954)))

(assert (= (and b!7051068 (is-Cons!68022 (t!381925 s!7408))) b!7051178))

(declare-fun b!7051179 () Bool)

(declare-fun e!4238955 () Bool)

(declare-fun tp!1939120 () Bool)

(declare-fun tp!1939121 () Bool)

(assert (=> b!7051179 (= e!4238955 (and tp!1939120 tp!1939121))))

(assert (=> b!7051073 (= tp!1939092 e!4238955)))

(assert (= (and b!7051073 (is-Cons!68023 (exprs!7036 setElem!49650))) b!7051179))

(declare-fun b_lambda!268219 () Bool)

(assert (= b_lambda!268217 (or b!7051070 b_lambda!268219)))

(declare-fun bs!1876083 () Bool)

(declare-fun d!2203032 () Bool)

(assert (= bs!1876083 (and d!2203032 b!7051070)))

(declare-fun lt!2529673 () Unit!161758)

(assert (=> bs!1876083 (= lt!2529673 (lemmaConcatPreservesForall!855 (exprs!7036 lt!2529645) (exprs!7036 ct2!306) lambda!419010))))

(assert (=> bs!1876083 (= (dynLambda!27565 lambda!419009 lt!2529645) (Context!13073 (++!15627 (exprs!7036 lt!2529645) (exprs!7036 ct2!306))))))

(declare-fun m!7767382 () Bool)

(assert (=> bs!1876083 m!7767382))

(declare-fun m!7767384 () Bool)

(assert (=> bs!1876083 m!7767384))

(assert (=> d!2202992 d!2203032))

(declare-fun b_lambda!268221 () Bool)

(assert (= b_lambda!268215 (or b!7051071 b_lambda!268221)))

(declare-fun bs!1876084 () Bool)

(declare-fun d!2203034 () Bool)

(assert (= bs!1876084 (and d!2203034 b!7051071)))

(assert (=> bs!1876084 (= (dynLambda!27564 lambda!419008 lt!2529636) (nullableContext!96 lt!2529636))))

(declare-fun m!7767386 () Bool)

(assert (=> bs!1876084 m!7767386))

(assert (=> d!2202978 d!2203034))

(push 1)

(assert (not d!2203014))

(assert (not setNonEmpty!49656))

(assert (not d!2202972))

(assert (not b!7051155))

(assert (not d!2203028))

(assert (not b!7051143))

(assert (not b!7051159))

(assert (not b!7051154))

(assert (not b!7051120))

(assert (not d!2202982))

(assert (not b_lambda!268221))

(assert (not b!7051125))

(assert (not d!2202980))

(assert (not d!2203002))

(assert (not b!7051135))

(assert (not b!7051124))

(assert (not d!2203004))

(assert (not b!7051142))

(assert (not b!7051178))

(assert (not d!2202968))

(assert (not b!7051119))

(assert (not d!2203006))

(assert (not b_lambda!268219))

(assert (not d!2203026))

(assert (not d!2202976))

(assert (not bs!1876083))

(assert (not d!2202998))

(assert (not b!7051164))

(assert (not d!2203018))

(assert (not d!2202970))

(assert (not b!7051179))

(assert (not b!7051171))

(assert (not d!2203000))

(assert (not d!2202978))

(assert (not bs!1876084))

(assert (not b!7051136))

(assert (not d!2202988))

(assert tp_is_empty!44305)

(assert (not d!2202992))

(assert (not d!2202994))

(assert (not d!2202974))

(assert (not d!2203010))

(assert (not d!2203030))

(assert (not d!2202984))

(assert (not b!7051158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2203076 () Bool)

(declare-fun res!2878700 () Bool)

(declare-fun e!4239001 () Bool)

(assert (=> d!2203076 (=> res!2878700 e!4239001)))

(assert (=> d!2203076 (= res!2878700 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2203076 (= (forall!16471 (exprs!7036 lt!2529586) lambda!419056) e!4239001)))

(declare-fun b!7051241 () Bool)

(declare-fun e!4239002 () Bool)

(assert (=> b!7051241 (= e!4239001 e!4239002)))

(declare-fun res!2878701 () Bool)

(assert (=> b!7051241 (=> (not res!2878701) (not e!4239002))))

(declare-fun dynLambda!27568 (Int Regex!17540) Bool)

(assert (=> b!7051241 (= res!2878701 (dynLambda!27568 lambda!419056 (h!74471 (exprs!7036 lt!2529586))))))

(declare-fun b!7051242 () Bool)

(assert (=> b!7051242 (= e!4239002 (forall!16471 (t!381926 (exprs!7036 lt!2529586)) lambda!419056))))

(assert (= (and d!2203076 (not res!2878700)) b!7051241))

(assert (= (and b!7051241 res!2878701) b!7051242))

(declare-fun b_lambda!268231 () Bool)

(assert (=> (not b_lambda!268231) (not b!7051241)))

(declare-fun m!7767502 () Bool)

(assert (=> b!7051241 m!7767502))

(declare-fun m!7767504 () Bool)

(assert (=> b!7051242 m!7767504))

(assert (=> d!2203014 d!2203076))

(declare-fun d!2203078 () Bool)

(declare-fun lt!2529700 () Bool)

(assert (=> d!2203078 (= lt!2529700 (exists!3516 (toList!10881 lt!2529584) lambda!419055))))

(assert (=> d!2203078 (= lt!2529700 (choose!53684 lt!2529584 lambda!419055))))

(assert (=> d!2203078 (= (exists!3514 lt!2529584 lambda!419055) lt!2529700)))

(declare-fun bs!1876117 () Bool)

(assert (= bs!1876117 d!2203078))

(assert (=> bs!1876117 m!7767246))

(assert (=> bs!1876117 m!7767246))

(declare-fun m!7767506 () Bool)

(assert (=> bs!1876117 m!7767506))

(declare-fun m!7767508 () Bool)

(assert (=> bs!1876117 m!7767508))

(assert (=> d!2203006 d!2203078))

(declare-fun bs!1876118 () Bool)

(declare-fun d!2203080 () Bool)

(assert (= bs!1876118 (and d!2203080 b!7051070)))

(declare-fun lambda!419068 () Int)

(assert (=> bs!1876118 (not (= lambda!419068 lambda!419010))))

(declare-fun bs!1876119 () Bool)

(assert (= bs!1876119 (and d!2203080 b!7051072)))

(assert (=> bs!1876119 (= lambda!419068 lambda!419011)))

(declare-fun bs!1876120 () Bool)

(assert (= bs!1876120 (and d!2203080 d!2203014)))

(assert (=> bs!1876120 (= lambda!419068 lambda!419056)))

(declare-fun bs!1876121 () Bool)

(assert (= bs!1876121 (and d!2203080 d!2202972)))

(assert (=> bs!1876121 (not (= lambda!419068 lambda!419041))))

(declare-fun bs!1876122 () Bool)

(assert (= bs!1876122 (and d!2203080 d!2202974)))

(assert (=> bs!1876122 (not (= lambda!419068 lambda!419042))))

(declare-fun bs!1876123 () Bool)

(assert (= bs!1876123 (and d!2203080 d!2202976)))

(assert (=> bs!1876123 (= lambda!419068 lambda!419045)))

(declare-fun bs!1876124 () Bool)

(assert (= bs!1876124 (and d!2203080 d!2202982)))

(assert (=> bs!1876124 (= lambda!419068 lambda!419046)))

(assert (=> d!2203080 (= (nullableContext!96 lt!2529636) (forall!16471 (exprs!7036 lt!2529636) lambda!419068))))

(declare-fun bs!1876125 () Bool)

(assert (= bs!1876125 d!2203080))

(declare-fun m!7767510 () Bool)

(assert (=> bs!1876125 m!7767510))

(assert (=> bs!1876084 d!2203080))

(declare-fun bs!1876126 () Bool)

(declare-fun d!2203082 () Bool)

(assert (= bs!1876126 (and d!2203082 b!7051071)))

(declare-fun lambda!419071 () Int)

(assert (=> bs!1876126 (not (= lambda!419071 lambda!419008))))

(declare-fun bs!1876127 () Bool)

(assert (= bs!1876127 (and d!2203082 d!2203006)))

(assert (=> bs!1876127 (not (= lambda!419071 lambda!419055))))

(assert (=> d!2203082 true))

(declare-fun order!28265 () Int)

(declare-fun dynLambda!27569 (Int Int) Int)

(assert (=> d!2203082 (< (dynLambda!27569 order!28265 lambda!419008) (dynLambda!27569 order!28265 lambda!419071))))

(declare-fun forall!16473 (List!68150 Int) Bool)

(assert (=> d!2203082 (= (exists!3516 (toList!10881 lt!2529583) lambda!419008) (not (forall!16473 (toList!10881 lt!2529583) lambda!419071)))))

(declare-fun bs!1876128 () Bool)

(assert (= bs!1876128 d!2203082))

(assert (=> bs!1876128 m!7767316))

(declare-fun m!7767512 () Bool)

(assert (=> bs!1876128 m!7767512))

(assert (=> d!2203002 d!2203082))

(declare-fun d!2203084 () Bool)

(declare-fun e!4239005 () Bool)

(assert (=> d!2203084 e!4239005))

(declare-fun res!2878704 () Bool)

(assert (=> d!2203084 (=> (not res!2878704) (not e!4239005))))

(declare-fun lt!2529703 () List!68150)

(declare-fun noDuplicate!2667 (List!68150) Bool)

(assert (=> d!2203084 (= res!2878704 (noDuplicate!2667 lt!2529703))))

(declare-fun choose!53695 ((Set Context!13072)) List!68150)

(assert (=> d!2203084 (= lt!2529703 (choose!53695 lt!2529583))))

(assert (=> d!2203084 (= (toList!10881 lt!2529583) lt!2529703)))

(declare-fun b!7051247 () Bool)

(declare-fun content!13645 (List!68150) (Set Context!13072))

(assert (=> b!7051247 (= e!4239005 (= (content!13645 lt!2529703) lt!2529583))))

(assert (= (and d!2203084 res!2878704) b!7051247))

(declare-fun m!7767514 () Bool)

(assert (=> d!2203084 m!7767514))

(declare-fun m!7767516 () Bool)

(assert (=> d!2203084 m!7767516))

(declare-fun m!7767518 () Bool)

(assert (=> b!7051247 m!7767518))

(assert (=> d!2203002 d!2203084))

(declare-fun d!2203086 () Bool)

(declare-fun res!2878707 () Bool)

(assert (=> d!2203086 (= res!2878707 (exists!3516 (toList!10881 lt!2529583) lambda!419008))))

(assert (=> d!2203086 true))

(assert (=> d!2203086 (= (choose!53684 lt!2529583 lambda!419008) res!2878707)))

(declare-fun bs!1876129 () Bool)

(assert (= bs!1876129 d!2203086))

(assert (=> bs!1876129 m!7767316))

(assert (=> bs!1876129 m!7767316))

(assert (=> bs!1876129 m!7767318))

(assert (=> d!2203002 d!2203086))

(declare-fun d!2203088 () Bool)

(declare-fun res!2878708 () Bool)

(declare-fun e!4239006 () Bool)

(assert (=> d!2203088 (=> res!2878708 e!4239006)))

(assert (=> d!2203088 (= res!2878708 (is-Nil!68023 (exprs!7036 setElem!49650)))))

(assert (=> d!2203088 (= (forall!16471 (exprs!7036 setElem!49650) lambda!419042) e!4239006)))

(declare-fun b!7051248 () Bool)

(declare-fun e!4239007 () Bool)

(assert (=> b!7051248 (= e!4239006 e!4239007)))

(declare-fun res!2878709 () Bool)

(assert (=> b!7051248 (=> (not res!2878709) (not e!4239007))))

(assert (=> b!7051248 (= res!2878709 (dynLambda!27568 lambda!419042 (h!74471 (exprs!7036 setElem!49650))))))

(declare-fun b!7051249 () Bool)

(assert (=> b!7051249 (= e!4239007 (forall!16471 (t!381926 (exprs!7036 setElem!49650)) lambda!419042))))

(assert (= (and d!2203088 (not res!2878708)) b!7051248))

(assert (= (and b!7051248 res!2878709) b!7051249))

(declare-fun b_lambda!268233 () Bool)

(assert (=> (not b_lambda!268233) (not b!7051248)))

(declare-fun m!7767520 () Bool)

(assert (=> b!7051248 m!7767520))

(declare-fun m!7767522 () Bool)

(assert (=> b!7051249 m!7767522))

(assert (=> d!2202974 d!2203088))

(declare-fun d!2203090 () Bool)

(assert (=> d!2203090 (= (isEmpty!39688 Nil!68022) true)))

(assert (=> d!2202980 d!2203090))

(declare-fun b!7051251 () Bool)

(declare-fun e!4239011 () Bool)

(declare-fun e!4239009 () Bool)

(assert (=> b!7051251 (= e!4239011 e!4239009)))

(declare-fun res!2878712 () Bool)

(assert (=> b!7051251 (=> res!2878712 e!4239009)))

(declare-fun e!4239010 () Bool)

(assert (=> b!7051251 (= res!2878712 e!4239010)))

(declare-fun res!2878711 () Bool)

(assert (=> b!7051251 (=> (not res!2878711) (not e!4239010))))

(assert (=> b!7051251 (= res!2878711 (= (h!74471 (exprs!7036 lt!2529586)) (h!74471 (t!381926 lt!2529592))))))

(declare-fun b!7051250 () Bool)

(declare-fun e!4239008 () Bool)

(assert (=> b!7051250 (= e!4239008 e!4239011)))

(declare-fun res!2878710 () Bool)

(assert (=> b!7051250 (=> (not res!2878710) (not e!4239011))))

(assert (=> b!7051250 (= res!2878710 (is-Cons!68023 (t!381926 lt!2529592)))))

(declare-fun b!7051252 () Bool)

(assert (=> b!7051252 (= e!4239010 (subseq!700 (t!381926 (exprs!7036 lt!2529586)) (t!381926 (t!381926 lt!2529592))))))

(declare-fun d!2203092 () Bool)

(declare-fun res!2878713 () Bool)

(assert (=> d!2203092 (=> res!2878713 e!4239008)))

(assert (=> d!2203092 (= res!2878713 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2203092 (= (subseq!700 (exprs!7036 lt!2529586) (t!381926 lt!2529592)) e!4239008)))

(declare-fun b!7051253 () Bool)

(assert (=> b!7051253 (= e!4239009 (subseq!700 (exprs!7036 lt!2529586) (t!381926 (t!381926 lt!2529592))))))

(assert (= (and d!2203092 (not res!2878713)) b!7051250))

(assert (= (and b!7051250 res!2878710) b!7051251))

(assert (= (and b!7051251 res!2878711) b!7051252))

(assert (= (and b!7051251 (not res!2878712)) b!7051253))

(declare-fun m!7767524 () Bool)

(assert (=> b!7051252 m!7767524))

(declare-fun m!7767526 () Bool)

(assert (=> b!7051253 m!7767526))

(assert (=> b!7051159 d!2203092))

(assert (=> b!7051119 d!2203006))

(declare-fun d!2203094 () Bool)

(declare-fun c!1313369 () Bool)

(assert (=> d!2203094 (= c!1313369 (isEmpty!39688 (tail!13662 s!7408)))))

(declare-fun e!4239012 () Bool)

(assert (=> d!2203094 (= (matchZipper!3080 (derivationStepZipper!2993 lt!2529584 (head!14331 s!7408)) (tail!13662 s!7408)) e!4239012)))

(declare-fun b!7051254 () Bool)

(assert (=> b!7051254 (= e!4239012 (nullableZipper!2633 (derivationStepZipper!2993 lt!2529584 (head!14331 s!7408))))))

(declare-fun b!7051255 () Bool)

(assert (=> b!7051255 (= e!4239012 (matchZipper!3080 (derivationStepZipper!2993 (derivationStepZipper!2993 lt!2529584 (head!14331 s!7408)) (head!14331 (tail!13662 s!7408))) (tail!13662 (tail!13662 s!7408))))))

(assert (= (and d!2203094 c!1313369) b!7051254))

(assert (= (and d!2203094 (not c!1313369)) b!7051255))

(assert (=> d!2203094 m!7767232))

(declare-fun m!7767528 () Bool)

(assert (=> d!2203094 m!7767528))

(assert (=> b!7051254 m!7767230))

(declare-fun m!7767530 () Bool)

(assert (=> b!7051254 m!7767530))

(assert (=> b!7051255 m!7767232))

(declare-fun m!7767532 () Bool)

(assert (=> b!7051255 m!7767532))

(assert (=> b!7051255 m!7767230))

(assert (=> b!7051255 m!7767532))

(declare-fun m!7767534 () Bool)

(assert (=> b!7051255 m!7767534))

(assert (=> b!7051255 m!7767232))

(declare-fun m!7767536 () Bool)

(assert (=> b!7051255 m!7767536))

(assert (=> b!7051255 m!7767534))

(assert (=> b!7051255 m!7767536))

(declare-fun m!7767538 () Bool)

(assert (=> b!7051255 m!7767538))

(assert (=> b!7051120 d!2203094))

(declare-fun d!2203096 () Bool)

(assert (=> d!2203096 true))

(declare-fun lambda!419074 () Int)

(declare-fun flatMap!2478 ((Set Context!13072) Int) (Set Context!13072))

(assert (=> d!2203096 (= (derivationStepZipper!2993 lt!2529584 (head!14331 s!7408)) (flatMap!2478 lt!2529584 lambda!419074))))

(declare-fun bs!1876130 () Bool)

(assert (= bs!1876130 d!2203096))

(declare-fun m!7767540 () Bool)

(assert (=> bs!1876130 m!7767540))

(assert (=> b!7051120 d!2203096))

(declare-fun d!2203098 () Bool)

(assert (=> d!2203098 (= (head!14331 s!7408) (h!74470 s!7408))))

(assert (=> b!7051120 d!2203098))

(declare-fun d!2203100 () Bool)

(assert (=> d!2203100 (= (tail!13662 s!7408) (t!381925 s!7408))))

(assert (=> b!7051120 d!2203100))

(declare-fun d!2203102 () Bool)

(declare-fun res!2878714 () Bool)

(declare-fun e!4239013 () Bool)

(assert (=> d!2203102 (=> res!2878714 e!4239013)))

(assert (=> d!2203102 (= res!2878714 (is-Nil!68023 (exprs!7036 ct2!306)))))

(assert (=> d!2203102 (= (forall!16471 (exprs!7036 ct2!306) lambda!419046) e!4239013)))

(declare-fun b!7051258 () Bool)

(declare-fun e!4239014 () Bool)

(assert (=> b!7051258 (= e!4239013 e!4239014)))

(declare-fun res!2878715 () Bool)

(assert (=> b!7051258 (=> (not res!2878715) (not e!4239014))))

(assert (=> b!7051258 (= res!2878715 (dynLambda!27568 lambda!419046 (h!74471 (exprs!7036 ct2!306))))))

(declare-fun b!7051259 () Bool)

(assert (=> b!7051259 (= e!4239014 (forall!16471 (t!381926 (exprs!7036 ct2!306)) lambda!419046))))

(assert (= (and d!2203102 (not res!2878714)) b!7051258))

(assert (= (and b!7051258 res!2878715) b!7051259))

(declare-fun b_lambda!268235 () Bool)

(assert (=> (not b_lambda!268235) (not b!7051258)))

(declare-fun m!7767542 () Bool)

(assert (=> b!7051258 m!7767542))

(declare-fun m!7767544 () Bool)

(assert (=> b!7051259 m!7767544))

(assert (=> d!2202982 d!2203102))

(declare-fun d!2203104 () Bool)

(declare-fun res!2878716 () Bool)

(declare-fun e!4239015 () Bool)

(assert (=> d!2203104 (=> res!2878716 e!4239015)))

(assert (=> d!2203104 (= res!2878716 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2203104 (= (forall!16471 (exprs!7036 lt!2529586) lambda!419011) e!4239015)))

(declare-fun b!7051260 () Bool)

(declare-fun e!4239016 () Bool)

(assert (=> b!7051260 (= e!4239015 e!4239016)))

(declare-fun res!2878717 () Bool)

(assert (=> b!7051260 (=> (not res!2878717) (not e!4239016))))

(assert (=> b!7051260 (= res!2878717 (dynLambda!27568 lambda!419011 (h!74471 (exprs!7036 lt!2529586))))))

(declare-fun b!7051261 () Bool)

(assert (=> b!7051261 (= e!4239016 (forall!16471 (t!381926 (exprs!7036 lt!2529586)) lambda!419011))))

(assert (= (and d!2203104 (not res!2878716)) b!7051260))

(assert (= (and b!7051260 res!2878717) b!7051261))

(declare-fun b_lambda!268237 () Bool)

(assert (=> (not b_lambda!268237) (not b!7051260)))

(declare-fun m!7767546 () Bool)

(assert (=> b!7051260 m!7767546))

(declare-fun m!7767548 () Bool)

(assert (=> b!7051261 m!7767548))

(assert (=> d!2203028 d!2203104))

(declare-fun d!2203106 () Bool)

(assert (=> d!2203106 (forall!16471 (exprs!7036 lt!2529586) lambda!419011)))

(assert (=> d!2203106 true))

(declare-fun _$83!307 () Unit!161758)

(assert (=> d!2203106 (= (choose!53685 lt!2529592 (exprs!7036 lt!2529586) lambda!419011) _$83!307)))

(declare-fun bs!1876131 () Bool)

(assert (= bs!1876131 d!2203106))

(assert (=> bs!1876131 m!7767372))

(assert (=> d!2203028 d!2203106))

(declare-fun d!2203108 () Bool)

(declare-fun res!2878718 () Bool)

(declare-fun e!4239017 () Bool)

(assert (=> d!2203108 (=> res!2878718 e!4239017)))

(assert (=> d!2203108 (= res!2878718 (is-Nil!68023 lt!2529592))))

(assert (=> d!2203108 (= (forall!16471 lt!2529592 lambda!419011) e!4239017)))

(declare-fun b!7051262 () Bool)

(declare-fun e!4239018 () Bool)

(assert (=> b!7051262 (= e!4239017 e!4239018)))

(declare-fun res!2878719 () Bool)

(assert (=> b!7051262 (=> (not res!2878719) (not e!4239018))))

(assert (=> b!7051262 (= res!2878719 (dynLambda!27568 lambda!419011 (h!74471 lt!2529592)))))

(declare-fun b!7051263 () Bool)

(assert (=> b!7051263 (= e!4239018 (forall!16471 (t!381926 lt!2529592) lambda!419011))))

(assert (= (and d!2203108 (not res!2878718)) b!7051262))

(assert (= (and b!7051262 res!2878719) b!7051263))

(declare-fun b_lambda!268239 () Bool)

(assert (=> (not b_lambda!268239) (not b!7051262)))

(declare-fun m!7767550 () Bool)

(assert (=> b!7051262 m!7767550))

(declare-fun m!7767552 () Bool)

(assert (=> b!7051263 m!7767552))

(assert (=> d!2203028 d!2203108))

(declare-fun b!7051265 () Bool)

(declare-fun e!4239022 () Bool)

(declare-fun e!4239020 () Bool)

(assert (=> b!7051265 (= e!4239022 e!4239020)))

(declare-fun res!2878722 () Bool)

(assert (=> b!7051265 (=> res!2878722 e!4239020)))

(declare-fun e!4239021 () Bool)

(assert (=> b!7051265 (= res!2878722 e!4239021)))

(declare-fun res!2878721 () Bool)

(assert (=> b!7051265 (=> (not res!2878721) (not e!4239021))))

(assert (=> b!7051265 (= res!2878721 (= (h!74471 (t!381926 (exprs!7036 lt!2529586))) (h!74471 (t!381926 lt!2529592))))))

(declare-fun b!7051264 () Bool)

(declare-fun e!4239019 () Bool)

(assert (=> b!7051264 (= e!4239019 e!4239022)))

(declare-fun res!2878720 () Bool)

(assert (=> b!7051264 (=> (not res!2878720) (not e!4239022))))

(assert (=> b!7051264 (= res!2878720 (is-Cons!68023 (t!381926 lt!2529592)))))

(declare-fun b!7051266 () Bool)

(assert (=> b!7051266 (= e!4239021 (subseq!700 (t!381926 (t!381926 (exprs!7036 lt!2529586))) (t!381926 (t!381926 lt!2529592))))))

(declare-fun d!2203110 () Bool)

(declare-fun res!2878723 () Bool)

(assert (=> d!2203110 (=> res!2878723 e!4239019)))

(assert (=> d!2203110 (= res!2878723 (is-Nil!68023 (t!381926 (exprs!7036 lt!2529586))))))

(assert (=> d!2203110 (= (subseq!700 (t!381926 (exprs!7036 lt!2529586)) (t!381926 lt!2529592)) e!4239019)))

(declare-fun b!7051267 () Bool)

(assert (=> b!7051267 (= e!4239020 (subseq!700 (t!381926 (exprs!7036 lt!2529586)) (t!381926 (t!381926 lt!2529592))))))

(assert (= (and d!2203110 (not res!2878723)) b!7051264))

(assert (= (and b!7051264 res!2878720) b!7051265))

(assert (= (and b!7051265 res!2878721) b!7051266))

(assert (= (and b!7051265 (not res!2878722)) b!7051267))

(declare-fun m!7767554 () Bool)

(assert (=> b!7051266 m!7767554))

(assert (=> b!7051267 m!7767524))

(assert (=> b!7051158 d!2203110))

(declare-fun d!2203112 () Bool)

(assert (=> d!2203112 (= (isEmpty!39688 s!7408) (is-Nil!68022 s!7408))))

(assert (=> d!2202968 d!2203112))

(declare-fun bs!1876132 () Bool)

(declare-fun d!2203114 () Bool)

(assert (= bs!1876132 (and d!2203114 b!7051071)))

(declare-fun lambda!419075 () Int)

(assert (=> bs!1876132 (not (= lambda!419075 lambda!419008))))

(declare-fun bs!1876133 () Bool)

(assert (= bs!1876133 (and d!2203114 d!2203006)))

(assert (=> bs!1876133 (not (= lambda!419075 lambda!419055))))

(declare-fun bs!1876134 () Bool)

(assert (= bs!1876134 (and d!2203114 d!2203082)))

(assert (=> bs!1876134 (= lambda!419075 lambda!419071)))

(assert (=> d!2203114 true))

(assert (=> d!2203114 (< (dynLambda!27569 order!28265 lambda!419008) (dynLambda!27569 order!28265 lambda!419075))))

(assert (=> d!2203114 (= (exists!3516 (toList!10881 z1!570) lambda!419008) (not (forall!16473 (toList!10881 z1!570) lambda!419075)))))

(declare-fun bs!1876135 () Bool)

(assert (= bs!1876135 d!2203114))

(assert (=> bs!1876135 m!7767310))

(declare-fun m!7767556 () Bool)

(assert (=> bs!1876135 m!7767556))

(assert (=> d!2203000 d!2203114))

(declare-fun d!2203116 () Bool)

(declare-fun e!4239023 () Bool)

(assert (=> d!2203116 e!4239023))

(declare-fun res!2878724 () Bool)

(assert (=> d!2203116 (=> (not res!2878724) (not e!4239023))))

(declare-fun lt!2529704 () List!68150)

(assert (=> d!2203116 (= res!2878724 (noDuplicate!2667 lt!2529704))))

(assert (=> d!2203116 (= lt!2529704 (choose!53695 z1!570))))

(assert (=> d!2203116 (= (toList!10881 z1!570) lt!2529704)))

(declare-fun b!7051268 () Bool)

(assert (=> b!7051268 (= e!4239023 (= (content!13645 lt!2529704) z1!570))))

(assert (= (and d!2203116 res!2878724) b!7051268))

(declare-fun m!7767558 () Bool)

(assert (=> d!2203116 m!7767558))

(declare-fun m!7767560 () Bool)

(assert (=> d!2203116 m!7767560))

(declare-fun m!7767562 () Bool)

(assert (=> b!7051268 m!7767562))

(assert (=> d!2203000 d!2203116))

(declare-fun d!2203118 () Bool)

(declare-fun res!2878725 () Bool)

(assert (=> d!2203118 (= res!2878725 (exists!3516 (toList!10881 z1!570) lambda!419008))))

(assert (=> d!2203118 true))

(assert (=> d!2203118 (= (choose!53684 z1!570 lambda!419008) res!2878725)))

(declare-fun bs!1876136 () Bool)

(assert (= bs!1876136 d!2203118))

(assert (=> bs!1876136 m!7767310))

(assert (=> bs!1876136 m!7767310))

(assert (=> bs!1876136 m!7767312))

(assert (=> d!2203000 d!2203118))

(declare-fun bs!1876137 () Bool)

(declare-fun d!2203120 () Bool)

(assert (= bs!1876137 (and d!2203120 b!7051071)))

(declare-fun lambda!419076 () Int)

(assert (=> bs!1876137 (not (= lambda!419076 lambda!419008))))

(declare-fun bs!1876138 () Bool)

(assert (= bs!1876138 (and d!2203120 d!2203006)))

(assert (=> bs!1876138 (not (= lambda!419076 lambda!419055))))

(declare-fun bs!1876139 () Bool)

(assert (= bs!1876139 (and d!2203120 d!2203082)))

(assert (=> bs!1876139 (= lambda!419076 lambda!419071)))

(declare-fun bs!1876140 () Bool)

(assert (= bs!1876140 (and d!2203120 d!2203114)))

(assert (=> bs!1876140 (= lambda!419076 lambda!419075)))

(assert (=> d!2203120 true))

(assert (=> d!2203120 (< (dynLambda!27569 order!28265 lambda!419008) (dynLambda!27569 order!28265 lambda!419076))))

(assert (=> d!2203120 (= (exists!3516 (toList!10881 lt!2529584) lambda!419008) (not (forall!16473 (toList!10881 lt!2529584) lambda!419076)))))

(declare-fun bs!1876141 () Bool)

(assert (= bs!1876141 d!2203120))

(assert (=> bs!1876141 m!7767246))

(declare-fun m!7767564 () Bool)

(assert (=> bs!1876141 m!7767564))

(assert (=> d!2203010 d!2203120))

(declare-fun d!2203122 () Bool)

(declare-fun e!4239024 () Bool)

(assert (=> d!2203122 e!4239024))

(declare-fun res!2878726 () Bool)

(assert (=> d!2203122 (=> (not res!2878726) (not e!4239024))))

(declare-fun lt!2529705 () List!68150)

(assert (=> d!2203122 (= res!2878726 (noDuplicate!2667 lt!2529705))))

(assert (=> d!2203122 (= lt!2529705 (choose!53695 lt!2529584))))

(assert (=> d!2203122 (= (toList!10881 lt!2529584) lt!2529705)))

(declare-fun b!7051269 () Bool)

(assert (=> b!7051269 (= e!4239024 (= (content!13645 lt!2529705) lt!2529584))))

(assert (= (and d!2203122 res!2878726) b!7051269))

(declare-fun m!7767566 () Bool)

(assert (=> d!2203122 m!7767566))

(declare-fun m!7767568 () Bool)

(assert (=> d!2203122 m!7767568))

(declare-fun m!7767570 () Bool)

(assert (=> b!7051269 m!7767570))

(assert (=> d!2203010 d!2203122))

(declare-fun d!2203124 () Bool)

(declare-fun res!2878727 () Bool)

(assert (=> d!2203124 (= res!2878727 (exists!3516 (toList!10881 lt!2529584) lambda!419008))))

(assert (=> d!2203124 true))

(assert (=> d!2203124 (= (choose!53684 lt!2529584 lambda!419008) res!2878727)))

(declare-fun bs!1876142 () Bool)

(assert (= bs!1876142 d!2203124))

(assert (=> bs!1876142 m!7767246))

(assert (=> bs!1876142 m!7767246))

(assert (=> bs!1876142 m!7767334))

(assert (=> d!2203010 d!2203124))

(declare-fun b!7051271 () Bool)

(declare-fun e!4239028 () Bool)

(declare-fun e!4239026 () Bool)

(assert (=> b!7051271 (= e!4239028 e!4239026)))

(declare-fun res!2878730 () Bool)

(assert (=> b!7051271 (=> res!2878730 e!4239026)))

(declare-fun e!4239027 () Bool)

(assert (=> b!7051271 (= res!2878730 e!4239027)))

(declare-fun res!2878729 () Bool)

(assert (=> b!7051271 (=> (not res!2878729) (not e!4239027))))

(assert (=> b!7051271 (= res!2878729 (= (h!74471 (exprs!7036 ct2!306)) (h!74471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(declare-fun b!7051270 () Bool)

(declare-fun e!4239025 () Bool)

(assert (=> b!7051270 (= e!4239025 e!4239028)))

(declare-fun res!2878728 () Bool)

(assert (=> b!7051270 (=> (not res!2878728) (not e!4239028))))

(assert (=> b!7051270 (= res!2878728 (is-Cons!68023 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306))))))

(declare-fun b!7051272 () Bool)

(assert (=> b!7051272 (= e!4239027 (subseq!700 (t!381926 (exprs!7036 ct2!306)) (t!381926 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(declare-fun d!2203126 () Bool)

(declare-fun res!2878731 () Bool)

(assert (=> d!2203126 (=> res!2878731 e!4239025)))

(assert (=> d!2203126 (= res!2878731 (is-Nil!68023 (exprs!7036 ct2!306)))))

(assert (=> d!2203126 (= (subseq!700 (exprs!7036 ct2!306) (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306))) e!4239025)))

(declare-fun b!7051273 () Bool)

(assert (=> b!7051273 (= e!4239026 (subseq!700 (exprs!7036 ct2!306) (t!381926 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(assert (= (and d!2203126 (not res!2878731)) b!7051270))

(assert (= (and b!7051270 res!2878728) b!7051271))

(assert (= (and b!7051271 res!2878729) b!7051272))

(assert (= (and b!7051271 (not res!2878730)) b!7051273))

(declare-fun m!7767572 () Bool)

(assert (=> b!7051272 m!7767572))

(declare-fun m!7767574 () Bool)

(assert (=> b!7051273 m!7767574))

(assert (=> d!2203026 d!2203126))

(assert (=> d!2203026 d!2202984))

(declare-fun d!2203128 () Bool)

(assert (=> d!2203128 (subseq!700 (exprs!7036 ct2!306) (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(assert (=> d!2203128 true))

(declare-fun _$85!242 () Unit!161758)

(assert (=> d!2203128 (= (choose!53686 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) _$85!242)))

(declare-fun bs!1876143 () Bool)

(assert (= bs!1876143 d!2203128))

(assert (=> bs!1876143 m!7767168))

(assert (=> bs!1876143 m!7767168))

(assert (=> bs!1876143 m!7767368))

(assert (=> d!2203026 d!2203128))

(declare-fun d!2203130 () Bool)

(assert (=> d!2203130 (forall!16471 (++!15627 (exprs!7036 lt!2529645) (exprs!7036 ct2!306)) lambda!419010)))

(declare-fun lt!2529706 () Unit!161758)

(assert (=> d!2203130 (= lt!2529706 (choose!53681 (exprs!7036 lt!2529645) (exprs!7036 ct2!306) lambda!419010))))

(assert (=> d!2203130 (forall!16471 (exprs!7036 lt!2529645) lambda!419010)))

(assert (=> d!2203130 (= (lemmaConcatPreservesForall!855 (exprs!7036 lt!2529645) (exprs!7036 ct2!306) lambda!419010) lt!2529706)))

(declare-fun bs!1876144 () Bool)

(assert (= bs!1876144 d!2203130))

(assert (=> bs!1876144 m!7767384))

(assert (=> bs!1876144 m!7767384))

(declare-fun m!7767576 () Bool)

(assert (=> bs!1876144 m!7767576))

(declare-fun m!7767578 () Bool)

(assert (=> bs!1876144 m!7767578))

(declare-fun m!7767580 () Bool)

(assert (=> bs!1876144 m!7767580))

(assert (=> bs!1876083 d!2203130))

(declare-fun d!2203132 () Bool)

(declare-fun e!4239030 () Bool)

(assert (=> d!2203132 e!4239030))

(declare-fun res!2878733 () Bool)

(assert (=> d!2203132 (=> (not res!2878733) (not e!4239030))))

(declare-fun lt!2529707 () List!68147)

(assert (=> d!2203132 (= res!2878733 (= (content!13643 lt!2529707) (set.union (content!13643 (exprs!7036 lt!2529645)) (content!13643 (exprs!7036 ct2!306)))))))

(declare-fun e!4239029 () List!68147)

(assert (=> d!2203132 (= lt!2529707 e!4239029)))

(declare-fun c!1313372 () Bool)

(assert (=> d!2203132 (= c!1313372 (is-Nil!68023 (exprs!7036 lt!2529645)))))

(assert (=> d!2203132 (= (++!15627 (exprs!7036 lt!2529645) (exprs!7036 ct2!306)) lt!2529707)))

(declare-fun b!7051276 () Bool)

(declare-fun res!2878732 () Bool)

(assert (=> b!7051276 (=> (not res!2878732) (not e!4239030))))

(assert (=> b!7051276 (= res!2878732 (= (size!41132 lt!2529707) (+ (size!41132 (exprs!7036 lt!2529645)) (size!41132 (exprs!7036 ct2!306)))))))

(declare-fun b!7051274 () Bool)

(assert (=> b!7051274 (= e!4239029 (exprs!7036 ct2!306))))

(declare-fun b!7051275 () Bool)

(assert (=> b!7051275 (= e!4239029 (Cons!68023 (h!74471 (exprs!7036 lt!2529645)) (++!15627 (t!381926 (exprs!7036 lt!2529645)) (exprs!7036 ct2!306))))))

(declare-fun b!7051277 () Bool)

(assert (=> b!7051277 (= e!4239030 (or (not (= (exprs!7036 ct2!306) Nil!68023)) (= lt!2529707 (exprs!7036 lt!2529645))))))

(assert (= (and d!2203132 c!1313372) b!7051274))

(assert (= (and d!2203132 (not c!1313372)) b!7051275))

(assert (= (and d!2203132 res!2878733) b!7051276))

(assert (= (and b!7051276 res!2878732) b!7051277))

(declare-fun m!7767582 () Bool)

(assert (=> d!2203132 m!7767582))

(declare-fun m!7767584 () Bool)

(assert (=> d!2203132 m!7767584))

(assert (=> d!2203132 m!7767270))

(declare-fun m!7767586 () Bool)

(assert (=> b!7051276 m!7767586))

(declare-fun m!7767588 () Bool)

(assert (=> b!7051276 m!7767588))

(assert (=> b!7051276 m!7767276))

(declare-fun m!7767590 () Bool)

(assert (=> b!7051275 m!7767590))

(assert (=> bs!1876083 d!2203132))

(declare-fun b!7051279 () Bool)

(declare-fun e!4239034 () Bool)

(declare-fun e!4239032 () Bool)

(assert (=> b!7051279 (= e!4239034 e!4239032)))

(declare-fun res!2878736 () Bool)

(assert (=> b!7051279 (=> res!2878736 e!4239032)))

(declare-fun e!4239033 () Bool)

(assert (=> b!7051279 (= res!2878736 e!4239033)))

(declare-fun res!2878735 () Bool)

(assert (=> b!7051279 (=> (not res!2878735) (not e!4239033))))

(assert (=> b!7051279 (= res!2878735 (= (h!74471 (exprs!7036 lt!2529586)) (h!74471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(declare-fun b!7051278 () Bool)

(declare-fun e!4239031 () Bool)

(assert (=> b!7051278 (= e!4239031 e!4239034)))

(declare-fun res!2878734 () Bool)

(assert (=> b!7051278 (=> (not res!2878734) (not e!4239034))))

(assert (=> b!7051278 (= res!2878734 (is-Cons!68023 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306))))))

(declare-fun b!7051280 () Bool)

(assert (=> b!7051280 (= e!4239033 (subseq!700 (t!381926 (exprs!7036 lt!2529586)) (t!381926 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(declare-fun d!2203134 () Bool)

(declare-fun res!2878737 () Bool)

(assert (=> d!2203134 (=> res!2878737 e!4239031)))

(assert (=> d!2203134 (= res!2878737 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2203134 (= (subseq!700 (exprs!7036 lt!2529586) (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306))) e!4239031)))

(declare-fun b!7051281 () Bool)

(assert (=> b!7051281 (= e!4239032 (subseq!700 (exprs!7036 lt!2529586) (t!381926 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(assert (= (and d!2203134 (not res!2878737)) b!7051278))

(assert (= (and b!7051278 res!2878734) b!7051279))

(assert (= (and b!7051279 res!2878735) b!7051280))

(assert (= (and b!7051279 (not res!2878736)) b!7051281))

(declare-fun m!7767592 () Bool)

(assert (=> b!7051280 m!7767592))

(declare-fun m!7767594 () Bool)

(assert (=> b!7051281 m!7767594))

(assert (=> d!2203030 d!2203134))

(assert (=> d!2203030 d!2202984))

(declare-fun d!2203136 () Bool)

(assert (=> d!2203136 (subseq!700 (exprs!7036 lt!2529586) (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))

(assert (=> d!2203136 true))

(declare-fun _$84!52 () Unit!161758)

(assert (=> d!2203136 (= (choose!53687 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) _$84!52)))

(declare-fun bs!1876145 () Bool)

(assert (= bs!1876145 d!2203136))

(assert (=> bs!1876145 m!7767168))

(assert (=> bs!1876145 m!7767168))

(assert (=> bs!1876145 m!7767376))

(assert (=> d!2203030 d!2203136))

(declare-fun d!2203138 () Bool)

(declare-fun res!2878738 () Bool)

(declare-fun e!4239035 () Bool)

(assert (=> d!2203138 (=> res!2878738 e!4239035)))

(assert (=> d!2203138 (= res!2878738 (is-Nil!68023 (exprs!7036 ct2!306)))))

(assert (=> d!2203138 (= (forall!16471 (exprs!7036 ct2!306) lambda!419011) e!4239035)))

(declare-fun b!7051282 () Bool)

(declare-fun e!4239036 () Bool)

(assert (=> b!7051282 (= e!4239035 e!4239036)))

(declare-fun res!2878739 () Bool)

(assert (=> b!7051282 (=> (not res!2878739) (not e!4239036))))

(assert (=> b!7051282 (= res!2878739 (dynLambda!27568 lambda!419011 (h!74471 (exprs!7036 ct2!306))))))

(declare-fun b!7051283 () Bool)

(assert (=> b!7051283 (= e!4239036 (forall!16471 (t!381926 (exprs!7036 ct2!306)) lambda!419011))))

(assert (= (and d!2203138 (not res!2878738)) b!7051282))

(assert (= (and b!7051282 res!2878739) b!7051283))

(declare-fun b_lambda!268241 () Bool)

(assert (=> (not b_lambda!268241) (not b!7051282)))

(declare-fun m!7767596 () Bool)

(assert (=> b!7051282 m!7767596))

(declare-fun m!7767598 () Bool)

(assert (=> b!7051283 m!7767598))

(assert (=> d!2203018 d!2203138))

(declare-fun d!2203140 () Bool)

(assert (=> d!2203140 (forall!16471 (exprs!7036 ct2!306) lambda!419011)))

(assert (=> d!2203140 true))

(declare-fun _$83!308 () Unit!161758)

(assert (=> d!2203140 (= (choose!53685 lt!2529592 (exprs!7036 ct2!306) lambda!419011) _$83!308)))

(declare-fun bs!1876146 () Bool)

(assert (= bs!1876146 d!2203140))

(assert (=> bs!1876146 m!7767362))

(assert (=> d!2203018 d!2203140))

(assert (=> d!2203018 d!2203108))

(declare-fun d!2203142 () Bool)

(declare-fun res!2878740 () Bool)

(declare-fun e!4239037 () Bool)

(assert (=> d!2203142 (=> res!2878740 e!4239037)))

(assert (=> d!2203142 (= res!2878740 (is-Nil!68023 (exprs!7036 ct2!306)))))

(assert (=> d!2203142 (= (forall!16471 (exprs!7036 ct2!306) lambda!419041) e!4239037)))

(declare-fun b!7051284 () Bool)

(declare-fun e!4239038 () Bool)

(assert (=> b!7051284 (= e!4239037 e!4239038)))

(declare-fun res!2878741 () Bool)

(assert (=> b!7051284 (=> (not res!2878741) (not e!4239038))))

(assert (=> b!7051284 (= res!2878741 (dynLambda!27568 lambda!419041 (h!74471 (exprs!7036 ct2!306))))))

(declare-fun b!7051285 () Bool)

(assert (=> b!7051285 (= e!4239038 (forall!16471 (t!381926 (exprs!7036 ct2!306)) lambda!419041))))

(assert (= (and d!2203142 (not res!2878740)) b!7051284))

(assert (= (and b!7051284 res!2878741) b!7051285))

(declare-fun b_lambda!268243 () Bool)

(assert (=> (not b_lambda!268243) (not b!7051284)))

(declare-fun m!7767600 () Bool)

(assert (=> b!7051284 m!7767600))

(declare-fun m!7767602 () Bool)

(assert (=> b!7051285 m!7767602))

(assert (=> d!2202972 d!2203142))

(declare-fun bs!1876147 () Bool)

(declare-fun d!2203144 () Bool)

(assert (= bs!1876147 (and d!2203144 b!7051071)))

(declare-fun lambda!419077 () Int)

(assert (=> bs!1876147 (= lambda!419077 lambda!419008)))

(declare-fun bs!1876148 () Bool)

(assert (= bs!1876148 (and d!2203144 d!2203082)))

(assert (=> bs!1876148 (not (= lambda!419077 lambda!419071))))

(declare-fun bs!1876149 () Bool)

(assert (= bs!1876149 (and d!2203144 d!2203120)))

(assert (=> bs!1876149 (not (= lambda!419077 lambda!419076))))

(declare-fun bs!1876150 () Bool)

(assert (= bs!1876150 (and d!2203144 d!2203114)))

(assert (=> bs!1876150 (not (= lambda!419077 lambda!419075))))

(declare-fun bs!1876151 () Bool)

(assert (= bs!1876151 (and d!2203144 d!2203006)))

(assert (=> bs!1876151 (= lambda!419077 lambda!419055)))

(assert (=> d!2203144 (= (nullableZipper!2633 lt!2529583) (exists!3514 lt!2529583 lambda!419077))))

(declare-fun bs!1876152 () Bool)

(assert (= bs!1876152 d!2203144))

(declare-fun m!7767604 () Bool)

(assert (=> bs!1876152 m!7767604))

(assert (=> b!7051124 d!2203144))

(declare-fun d!2203146 () Bool)

(assert (not d!2203146))

(assert (=> b!7051125 d!2203146))

(declare-fun d!2203148 () Bool)

(assert (not d!2203148))

(assert (=> b!7051125 d!2203148))

(declare-fun d!2203150 () Bool)

(assert (not d!2203150))

(assert (=> b!7051125 d!2203150))

(declare-fun d!2203152 () Bool)

(assert (not d!2203152))

(assert (=> b!7051125 d!2203152))

(assert (=> d!2203004 d!2203000))

(declare-fun d!2203154 () Bool)

(assert (=> d!2203154 (exists!3514 z1!570 lambda!419008)))

(assert (=> d!2203154 true))

(declare-fun _$17!649 () Unit!161758)

(assert (=> d!2203154 (= (choose!53683 z1!570 lt!2529586 lambda!419008) _$17!649)))

(declare-fun bs!1876153 () Bool)

(assert (= bs!1876153 d!2203154))

(assert (=> bs!1876153 m!7767164))

(assert (=> d!2203004 d!2203154))

(declare-fun b!7051287 () Bool)

(declare-fun e!4239043 () Bool)

(declare-fun e!4239041 () Bool)

(assert (=> b!7051287 (= e!4239043 e!4239041)))

(declare-fun res!2878744 () Bool)

(assert (=> b!7051287 (=> res!2878744 e!4239041)))

(declare-fun e!4239042 () Bool)

(assert (=> b!7051287 (= res!2878744 e!4239042)))

(declare-fun res!2878743 () Bool)

(assert (=> b!7051287 (=> (not res!2878743) (not e!4239042))))

(assert (=> b!7051287 (= res!2878743 (= (h!74471 (t!381926 (exprs!7036 ct2!306))) (h!74471 (t!381926 lt!2529592))))))

(declare-fun b!7051286 () Bool)

(declare-fun e!4239040 () Bool)

(assert (=> b!7051286 (= e!4239040 e!4239043)))

(declare-fun res!2878742 () Bool)

(assert (=> b!7051286 (=> (not res!2878742) (not e!4239043))))

(assert (=> b!7051286 (= res!2878742 (is-Cons!68023 (t!381926 lt!2529592)))))

(declare-fun b!7051288 () Bool)

(assert (=> b!7051288 (= e!4239042 (subseq!700 (t!381926 (t!381926 (exprs!7036 ct2!306))) (t!381926 (t!381926 lt!2529592))))))

(declare-fun d!2203156 () Bool)

(declare-fun res!2878745 () Bool)

(assert (=> d!2203156 (=> res!2878745 e!4239040)))

(assert (=> d!2203156 (= res!2878745 (is-Nil!68023 (t!381926 (exprs!7036 ct2!306))))))

(assert (=> d!2203156 (= (subseq!700 (t!381926 (exprs!7036 ct2!306)) (t!381926 lt!2529592)) e!4239040)))

(declare-fun b!7051289 () Bool)

(assert (=> b!7051289 (= e!4239041 (subseq!700 (t!381926 (exprs!7036 ct2!306)) (t!381926 (t!381926 lt!2529592))))))

(assert (= (and d!2203156 (not res!2878745)) b!7051286))

(assert (= (and b!7051286 res!2878742) b!7051287))

(assert (= (and b!7051287 res!2878743) b!7051288))

(assert (= (and b!7051287 (not res!2878744)) b!7051289))

(declare-fun m!7767606 () Bool)

(assert (=> b!7051288 m!7767606))

(declare-fun m!7767608 () Bool)

(assert (=> b!7051289 m!7767608))

(assert (=> b!7051154 d!2203156))

(declare-fun d!2203158 () Bool)

(declare-fun lt!2529710 () Int)

(assert (=> d!2203158 (>= lt!2529710 0)))

(declare-fun e!4239046 () Int)

(assert (=> d!2203158 (= lt!2529710 e!4239046)))

(declare-fun c!1313375 () Bool)

(assert (=> d!2203158 (= c!1313375 (is-Nil!68023 lt!2529639))))

(assert (=> d!2203158 (= (size!41132 lt!2529639) lt!2529710)))

(declare-fun b!7051294 () Bool)

(assert (=> b!7051294 (= e!4239046 0)))

(declare-fun b!7051295 () Bool)

(assert (=> b!7051295 (= e!4239046 (+ 1 (size!41132 (t!381926 lt!2529639))))))

(assert (= (and d!2203158 c!1313375) b!7051294))

(assert (= (and d!2203158 (not c!1313375)) b!7051295))

(declare-fun m!7767610 () Bool)

(assert (=> b!7051295 m!7767610))

(assert (=> b!7051136 d!2203158))

(declare-fun d!2203160 () Bool)

(declare-fun lt!2529711 () Int)

(assert (=> d!2203160 (>= lt!2529711 0)))

(declare-fun e!4239047 () Int)

(assert (=> d!2203160 (= lt!2529711 e!4239047)))

(declare-fun c!1313376 () Bool)

(assert (=> d!2203160 (= c!1313376 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2203160 (= (size!41132 (exprs!7036 lt!2529586)) lt!2529711)))

(declare-fun b!7051296 () Bool)

(assert (=> b!7051296 (= e!4239047 0)))

(declare-fun b!7051297 () Bool)

(assert (=> b!7051297 (= e!4239047 (+ 1 (size!41132 (t!381926 (exprs!7036 lt!2529586)))))))

(assert (= (and d!2203160 c!1313376) b!7051296))

(assert (= (and d!2203160 (not c!1313376)) b!7051297))

(declare-fun m!7767612 () Bool)

(assert (=> b!7051297 m!7767612))

(assert (=> b!7051136 d!2203160))

(declare-fun d!2203162 () Bool)

(declare-fun lt!2529712 () Int)

(assert (=> d!2203162 (>= lt!2529712 0)))

(declare-fun e!4239048 () Int)

(assert (=> d!2203162 (= lt!2529712 e!4239048)))

(declare-fun c!1313377 () Bool)

(assert (=> d!2203162 (= c!1313377 (is-Nil!68023 (exprs!7036 ct2!306)))))

(assert (=> d!2203162 (= (size!41132 (exprs!7036 ct2!306)) lt!2529712)))

(declare-fun b!7051298 () Bool)

(assert (=> b!7051298 (= e!4239048 0)))

(declare-fun b!7051299 () Bool)

(assert (=> b!7051299 (= e!4239048 (+ 1 (size!41132 (t!381926 (exprs!7036 ct2!306)))))))

(assert (= (and d!2203162 c!1313377) b!7051298))

(assert (= (and d!2203162 (not c!1313377)) b!7051299))

(declare-fun m!7767614 () Bool)

(assert (=> b!7051299 m!7767614))

(assert (=> b!7051136 d!2203162))

(declare-fun bs!1876154 () Bool)

(declare-fun d!2203164 () Bool)

(assert (= bs!1876154 (and d!2203164 b!7051071)))

(declare-fun lambda!419078 () Int)

(assert (=> bs!1876154 (= lambda!419078 lambda!419008)))

(declare-fun bs!1876155 () Bool)

(assert (= bs!1876155 (and d!2203164 d!2203144)))

(assert (=> bs!1876155 (= lambda!419078 lambda!419077)))

(declare-fun bs!1876156 () Bool)

(assert (= bs!1876156 (and d!2203164 d!2203082)))

(assert (=> bs!1876156 (not (= lambda!419078 lambda!419071))))

(declare-fun bs!1876157 () Bool)

(assert (= bs!1876157 (and d!2203164 d!2203120)))

(assert (=> bs!1876157 (not (= lambda!419078 lambda!419076))))

(declare-fun bs!1876158 () Bool)

(assert (= bs!1876158 (and d!2203164 d!2203114)))

(assert (=> bs!1876158 (not (= lambda!419078 lambda!419075))))

(declare-fun bs!1876159 () Bool)

(assert (= bs!1876159 (and d!2203164 d!2203006)))

(assert (=> bs!1876159 (= lambda!419078 lambda!419055)))

(assert (=> d!2203164 (= (nullableZipper!2633 z1!570) (exists!3514 z1!570 lambda!419078))))

(declare-fun bs!1876160 () Bool)

(assert (= bs!1876160 d!2203164))

(declare-fun m!7767616 () Bool)

(assert (=> bs!1876160 m!7767616))

(assert (=> b!7051142 d!2203164))

(declare-fun b!7051301 () Bool)

(declare-fun e!4239052 () Bool)

(declare-fun e!4239050 () Bool)

(assert (=> b!7051301 (= e!4239052 e!4239050)))

(declare-fun res!2878748 () Bool)

(assert (=> b!7051301 (=> res!2878748 e!4239050)))

(declare-fun e!4239051 () Bool)

(assert (=> b!7051301 (= res!2878748 e!4239051)))

(declare-fun res!2878747 () Bool)

(assert (=> b!7051301 (=> (not res!2878747) (not e!4239051))))

(assert (=> b!7051301 (= res!2878747 (= (h!74471 (exprs!7036 ct2!306)) (h!74471 (t!381926 lt!2529592))))))

(declare-fun b!7051300 () Bool)

(declare-fun e!4239049 () Bool)

(assert (=> b!7051300 (= e!4239049 e!4239052)))

(declare-fun res!2878746 () Bool)

(assert (=> b!7051300 (=> (not res!2878746) (not e!4239052))))

(assert (=> b!7051300 (= res!2878746 (is-Cons!68023 (t!381926 lt!2529592)))))

(declare-fun b!7051302 () Bool)

(assert (=> b!7051302 (= e!4239051 (subseq!700 (t!381926 (exprs!7036 ct2!306)) (t!381926 (t!381926 lt!2529592))))))

(declare-fun d!2203166 () Bool)

(declare-fun res!2878749 () Bool)

(assert (=> d!2203166 (=> res!2878749 e!4239049)))

(assert (=> d!2203166 (= res!2878749 (is-Nil!68023 (exprs!7036 ct2!306)))))

(assert (=> d!2203166 (= (subseq!700 (exprs!7036 ct2!306) (t!381926 lt!2529592)) e!4239049)))

(declare-fun b!7051303 () Bool)

(assert (=> b!7051303 (= e!4239050 (subseq!700 (exprs!7036 ct2!306) (t!381926 (t!381926 lt!2529592))))))

(assert (= (and d!2203166 (not res!2878749)) b!7051300))

(assert (= (and b!7051300 res!2878746) b!7051301))

(assert (= (and b!7051301 res!2878747) b!7051302))

(assert (= (and b!7051301 (not res!2878748)) b!7051303))

(assert (=> b!7051302 m!7767608))

(declare-fun m!7767618 () Bool)

(assert (=> b!7051303 m!7767618))

(assert (=> b!7051155 d!2203166))

(declare-fun d!2203168 () Bool)

(declare-fun e!4239058 () Bool)

(assert (=> d!2203168 e!4239058))

(declare-fun res!2878752 () Bool)

(assert (=> d!2203168 (=> (not res!2878752) (not e!4239058))))

(declare-fun a!13416 () Context!13072)

(assert (=> d!2203168 (= res!2878752 (= lt!2529590 (dynLambda!27565 lambda!419009 a!13416)))))

(declare-fun e!4239057 () Bool)

(assert (=> d!2203168 (and (inv!86710 a!13416) e!4239057)))

(assert (=> d!2203168 (= (choose!53682 z1!570 lambda!419009 lt!2529590) a!13416)))

(declare-fun b!7051309 () Bool)

(declare-fun tp!1939141 () Bool)

(assert (=> b!7051309 (= e!4239057 tp!1939141)))

(declare-fun b!7051310 () Bool)

(assert (=> b!7051310 (= e!4239058 (set.member a!13416 z1!570))))

(assert (= d!2203168 b!7051309))

(assert (= (and d!2203168 res!2878752) b!7051310))

(declare-fun b_lambda!268245 () Bool)

(assert (=> (not b_lambda!268245) (not d!2203168)))

(declare-fun m!7767620 () Bool)

(assert (=> d!2203168 m!7767620))

(declare-fun m!7767622 () Bool)

(assert (=> d!2203168 m!7767622))

(declare-fun m!7767624 () Bool)

(assert (=> b!7051310 m!7767624))

(assert (=> d!2202992 d!2203168))

(declare-fun d!2203170 () Bool)

(declare-fun choose!53697 ((Set Context!13072) Int) (Set Context!13072))

(assert (=> d!2203170 (= (map!15855 z1!570 lambda!419009) (choose!53697 z1!570 lambda!419009))))

(declare-fun bs!1876161 () Bool)

(assert (= bs!1876161 d!2203170))

(declare-fun m!7767626 () Bool)

(assert (=> bs!1876161 m!7767626))

(assert (=> d!2202992 d!2203170))

(declare-fun d!2203172 () Bool)

(assert (not d!2203172))

(assert (=> b!7051143 d!2203172))

(declare-fun d!2203174 () Bool)

(assert (not d!2203174))

(assert (=> b!7051143 d!2203174))

(assert (=> b!7051143 d!2203150))

(assert (=> b!7051143 d!2203152))

(assert (=> d!2202994 d!2203002))

(declare-fun d!2203176 () Bool)

(assert (=> d!2203176 (exists!3514 lt!2529583 lambda!419008)))

(assert (=> d!2203176 true))

(declare-fun _$17!650 () Unit!161758)

(assert (=> d!2203176 (= (choose!53683 lt!2529583 ct2!306 lambda!419008) _$17!650)))

(declare-fun bs!1876162 () Bool)

(assert (= bs!1876162 d!2203176))

(assert (=> bs!1876162 m!7767162))

(assert (=> d!2202994 d!2203176))

(declare-fun b!7051323 () Bool)

(declare-fun e!4239070 () Context!13072)

(assert (=> b!7051323 (= e!4239070 (h!74474 (toList!10881 lt!2529584)))))

(declare-fun b!7051324 () Bool)

(declare-fun e!4239068 () Context!13072)

(assert (=> b!7051324 (= e!4239070 e!4239068)))

(declare-fun c!1313382 () Bool)

(assert (=> b!7051324 (= c!1313382 (is-Cons!68026 (toList!10881 lt!2529584)))))

(declare-fun b!7051325 () Bool)

(declare-fun lt!2529718 () Unit!161758)

(declare-fun Unit!161763 () Unit!161758)

(assert (=> b!7051325 (= lt!2529718 Unit!161763)))

(assert (=> b!7051325 false))

(declare-fun head!14333 (List!68150) Context!13072)

(assert (=> b!7051325 (= e!4239068 (head!14333 (toList!10881 lt!2529584)))))

(declare-fun d!2203178 () Bool)

(declare-fun e!4239069 () Bool)

(assert (=> d!2203178 e!4239069))

(declare-fun res!2878757 () Bool)

(assert (=> d!2203178 (=> (not res!2878757) (not e!4239069))))

(declare-fun lt!2529717 () Context!13072)

(assert (=> d!2203178 (= res!2878757 (dynLambda!27564 lambda!419008 lt!2529717))))

(assert (=> d!2203178 (= lt!2529717 e!4239070)))

(declare-fun c!1313383 () Bool)

(declare-fun e!4239067 () Bool)

(assert (=> d!2203178 (= c!1313383 e!4239067)))

(declare-fun res!2878758 () Bool)

(assert (=> d!2203178 (=> (not res!2878758) (not e!4239067))))

(assert (=> d!2203178 (= res!2878758 (is-Cons!68026 (toList!10881 lt!2529584)))))

(assert (=> d!2203178 (exists!3516 (toList!10881 lt!2529584) lambda!419008)))

(assert (=> d!2203178 (= (getWitness!1590 (toList!10881 lt!2529584) lambda!419008) lt!2529717)))

(declare-fun b!7051326 () Bool)

(declare-fun contains!20480 (List!68150 Context!13072) Bool)

(assert (=> b!7051326 (= e!4239069 (contains!20480 (toList!10881 lt!2529584) lt!2529717))))

(declare-fun b!7051327 () Bool)

(assert (=> b!7051327 (= e!4239067 (dynLambda!27564 lambda!419008 (h!74474 (toList!10881 lt!2529584))))))

(declare-fun b!7051328 () Bool)

(assert (=> b!7051328 (= e!4239068 (getWitness!1590 (t!381929 (toList!10881 lt!2529584)) lambda!419008))))

(assert (= (and d!2203178 res!2878758) b!7051327))

(assert (= (and d!2203178 c!1313383) b!7051323))

(assert (= (and d!2203178 (not c!1313383)) b!7051324))

(assert (= (and b!7051324 c!1313382) b!7051328))

(assert (= (and b!7051324 (not c!1313382)) b!7051325))

(assert (= (and d!2203178 res!2878757) b!7051326))

(declare-fun b_lambda!268247 () Bool)

(assert (=> (not b_lambda!268247) (not d!2203178)))

(declare-fun b_lambda!268249 () Bool)

(assert (=> (not b_lambda!268249) (not b!7051327)))

(declare-fun m!7767628 () Bool)

(assert (=> d!2203178 m!7767628))

(assert (=> d!2203178 m!7767246))

(assert (=> d!2203178 m!7767334))

(assert (=> b!7051325 m!7767246))

(declare-fun m!7767630 () Bool)

(assert (=> b!7051325 m!7767630))

(declare-fun m!7767632 () Bool)

(assert (=> b!7051327 m!7767632))

(declare-fun m!7767634 () Bool)

(assert (=> b!7051328 m!7767634))

(assert (=> b!7051326 m!7767246))

(declare-fun m!7767636 () Bool)

(assert (=> b!7051326 m!7767636))

(assert (=> d!2202978 d!2203178))

(assert (=> d!2202978 d!2203122))

(assert (=> d!2202978 d!2203010))

(assert (=> d!2202998 d!2203090))

(declare-fun d!2203180 () Bool)

(declare-fun res!2878759 () Bool)

(declare-fun e!4239071 () Bool)

(assert (=> d!2203180 (=> res!2878759 e!4239071)))

(assert (=> d!2203180 (= res!2878759 (is-Nil!68023 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306))))))

(assert (=> d!2203180 (= (forall!16471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) lambda!419010) e!4239071)))

(declare-fun b!7051329 () Bool)

(declare-fun e!4239072 () Bool)

(assert (=> b!7051329 (= e!4239071 e!4239072)))

(declare-fun res!2878760 () Bool)

(assert (=> b!7051329 (=> (not res!2878760) (not e!4239072))))

(assert (=> b!7051329 (= res!2878760 (dynLambda!27568 lambda!419010 (h!74471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(declare-fun b!7051330 () Bool)

(assert (=> b!7051330 (= e!4239072 (forall!16471 (t!381926 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306))) lambda!419010))))

(assert (= (and d!2203180 (not res!2878759)) b!7051329))

(assert (= (and b!7051329 res!2878760) b!7051330))

(declare-fun b_lambda!268251 () Bool)

(assert (=> (not b_lambda!268251) (not b!7051329)))

(declare-fun m!7767638 () Bool)

(assert (=> b!7051329 m!7767638))

(declare-fun m!7767640 () Bool)

(assert (=> b!7051330 m!7767640))

(assert (=> d!2202988 d!2203180))

(assert (=> d!2202988 d!2202984))

(declare-fun d!2203182 () Bool)

(assert (=> d!2203182 (forall!16471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)) lambda!419010)))

(assert (=> d!2203182 true))

(declare-fun _$78!643 () Unit!161758)

(assert (=> d!2203182 (= (choose!53681 (exprs!7036 lt!2529586) (exprs!7036 ct2!306) lambda!419010) _$78!643)))

(declare-fun bs!1876163 () Bool)

(assert (= bs!1876163 d!2203182))

(assert (=> bs!1876163 m!7767168))

(assert (=> bs!1876163 m!7767168))

(assert (=> bs!1876163 m!7767282))

(assert (=> d!2202988 d!2203182))

(declare-fun d!2203184 () Bool)

(declare-fun res!2878761 () Bool)

(declare-fun e!4239073 () Bool)

(assert (=> d!2203184 (=> res!2878761 e!4239073)))

(assert (=> d!2203184 (= res!2878761 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(assert (=> d!2203184 (= (forall!16471 (exprs!7036 lt!2529586) lambda!419010) e!4239073)))

(declare-fun b!7051331 () Bool)

(declare-fun e!4239074 () Bool)

(assert (=> b!7051331 (= e!4239073 e!4239074)))

(declare-fun res!2878762 () Bool)

(assert (=> b!7051331 (=> (not res!2878762) (not e!4239074))))

(assert (=> b!7051331 (= res!2878762 (dynLambda!27568 lambda!419010 (h!74471 (exprs!7036 lt!2529586))))))

(declare-fun b!7051332 () Bool)

(assert (=> b!7051332 (= e!4239074 (forall!16471 (t!381926 (exprs!7036 lt!2529586)) lambda!419010))))

(assert (= (and d!2203184 (not res!2878761)) b!7051331))

(assert (= (and b!7051331 res!2878762) b!7051332))

(declare-fun b_lambda!268253 () Bool)

(assert (=> (not b_lambda!268253) (not b!7051331)))

(declare-fun m!7767642 () Bool)

(assert (=> b!7051331 m!7767642))

(declare-fun m!7767644 () Bool)

(assert (=> b!7051332 m!7767644))

(assert (=> d!2202988 d!2203184))

(declare-fun d!2203186 () Bool)

(declare-fun res!2878763 () Bool)

(declare-fun e!4239075 () Bool)

(assert (=> d!2203186 (=> res!2878763 e!4239075)))

(assert (=> d!2203186 (= res!2878763 (is-Nil!68023 (exprs!7036 lt!2529590)))))

(assert (=> d!2203186 (= (forall!16471 (exprs!7036 lt!2529590) lambda!419045) e!4239075)))

(declare-fun b!7051333 () Bool)

(declare-fun e!4239076 () Bool)

(assert (=> b!7051333 (= e!4239075 e!4239076)))

(declare-fun res!2878764 () Bool)

(assert (=> b!7051333 (=> (not res!2878764) (not e!4239076))))

(assert (=> b!7051333 (= res!2878764 (dynLambda!27568 lambda!419045 (h!74471 (exprs!7036 lt!2529590))))))

(declare-fun b!7051334 () Bool)

(assert (=> b!7051334 (= e!4239076 (forall!16471 (t!381926 (exprs!7036 lt!2529590)) lambda!419045))))

(assert (= (and d!2203186 (not res!2878763)) b!7051333))

(assert (= (and b!7051333 res!2878764) b!7051334))

(declare-fun b_lambda!268255 () Bool)

(assert (=> (not b_lambda!268255) (not b!7051333)))

(declare-fun m!7767646 () Bool)

(assert (=> b!7051333 m!7767646))

(declare-fun m!7767648 () Bool)

(assert (=> b!7051334 m!7767648))

(assert (=> d!2202976 d!2203186))

(declare-fun d!2203188 () Bool)

(assert (=> d!2203188 (= (map!15855 z1!570 lambda!419038) (choose!53697 z1!570 lambda!419038))))

(declare-fun bs!1876164 () Bool)

(assert (= bs!1876164 d!2203188))

(declare-fun m!7767650 () Bool)

(assert (=> bs!1876164 m!7767650))

(assert (=> d!2202970 d!2203188))

(declare-fun d!2203190 () Bool)

(declare-fun c!1313386 () Bool)

(assert (=> d!2203190 (= c!1313386 (is-Nil!68023 lt!2529639))))

(declare-fun e!4239079 () (Set Regex!17540))

(assert (=> d!2203190 (= (content!13643 lt!2529639) e!4239079)))

(declare-fun b!7051339 () Bool)

(assert (=> b!7051339 (= e!4239079 (as set.empty (Set Regex!17540)))))

(declare-fun b!7051340 () Bool)

(assert (=> b!7051340 (= e!4239079 (set.union (set.insert (h!74471 lt!2529639) (as set.empty (Set Regex!17540))) (content!13643 (t!381926 lt!2529639))))))

(assert (= (and d!2203190 c!1313386) b!7051339))

(assert (= (and d!2203190 (not c!1313386)) b!7051340))

(declare-fun m!7767652 () Bool)

(assert (=> b!7051340 m!7767652))

(declare-fun m!7767654 () Bool)

(assert (=> b!7051340 m!7767654))

(assert (=> d!2202984 d!2203190))

(declare-fun d!2203192 () Bool)

(declare-fun c!1313387 () Bool)

(assert (=> d!2203192 (= c!1313387 (is-Nil!68023 (exprs!7036 lt!2529586)))))

(declare-fun e!4239080 () (Set Regex!17540))

(assert (=> d!2203192 (= (content!13643 (exprs!7036 lt!2529586)) e!4239080)))

(declare-fun b!7051341 () Bool)

(assert (=> b!7051341 (= e!4239080 (as set.empty (Set Regex!17540)))))

(declare-fun b!7051342 () Bool)

(assert (=> b!7051342 (= e!4239080 (set.union (set.insert (h!74471 (exprs!7036 lt!2529586)) (as set.empty (Set Regex!17540))) (content!13643 (t!381926 (exprs!7036 lt!2529586)))))))

(assert (= (and d!2203192 c!1313387) b!7051341))

(assert (= (and d!2203192 (not c!1313387)) b!7051342))

(declare-fun m!7767656 () Bool)

(assert (=> b!7051342 m!7767656))

(declare-fun m!7767658 () Bool)

(assert (=> b!7051342 m!7767658))

(assert (=> d!2202984 d!2203192))

(declare-fun d!2203194 () Bool)

(declare-fun c!1313388 () Bool)

(assert (=> d!2203194 (= c!1313388 (is-Nil!68023 (exprs!7036 ct2!306)))))

(declare-fun e!4239081 () (Set Regex!17540))

(assert (=> d!2203194 (= (content!13643 (exprs!7036 ct2!306)) e!4239081)))

(declare-fun b!7051343 () Bool)

(assert (=> b!7051343 (= e!4239081 (as set.empty (Set Regex!17540)))))

(declare-fun b!7051344 () Bool)

(assert (=> b!7051344 (= e!4239081 (set.union (set.insert (h!74471 (exprs!7036 ct2!306)) (as set.empty (Set Regex!17540))) (content!13643 (t!381926 (exprs!7036 ct2!306)))))))

(assert (= (and d!2203194 c!1313388) b!7051343))

(assert (= (and d!2203194 (not c!1313388)) b!7051344))

(declare-fun m!7767660 () Bool)

(assert (=> b!7051344 m!7767660))

(declare-fun m!7767662 () Bool)

(assert (=> b!7051344 m!7767662))

(assert (=> d!2202984 d!2203194))

(declare-fun d!2203196 () Bool)

(declare-fun e!4239083 () Bool)

(assert (=> d!2203196 e!4239083))

(declare-fun res!2878766 () Bool)

(assert (=> d!2203196 (=> (not res!2878766) (not e!4239083))))

(declare-fun lt!2529719 () List!68147)

(assert (=> d!2203196 (= res!2878766 (= (content!13643 lt!2529719) (set.union (content!13643 (t!381926 (exprs!7036 lt!2529586))) (content!13643 (exprs!7036 ct2!306)))))))

(declare-fun e!4239082 () List!68147)

(assert (=> d!2203196 (= lt!2529719 e!4239082)))

(declare-fun c!1313389 () Bool)

(assert (=> d!2203196 (= c!1313389 (is-Nil!68023 (t!381926 (exprs!7036 lt!2529586))))))

(assert (=> d!2203196 (= (++!15627 (t!381926 (exprs!7036 lt!2529586)) (exprs!7036 ct2!306)) lt!2529719)))

(declare-fun b!7051347 () Bool)

(declare-fun res!2878765 () Bool)

(assert (=> b!7051347 (=> (not res!2878765) (not e!4239083))))

(assert (=> b!7051347 (= res!2878765 (= (size!41132 lt!2529719) (+ (size!41132 (t!381926 (exprs!7036 lt!2529586))) (size!41132 (exprs!7036 ct2!306)))))))

(declare-fun b!7051345 () Bool)

(assert (=> b!7051345 (= e!4239082 (exprs!7036 ct2!306))))

(declare-fun b!7051346 () Bool)

(assert (=> b!7051346 (= e!4239082 (Cons!68023 (h!74471 (t!381926 (exprs!7036 lt!2529586))) (++!15627 (t!381926 (t!381926 (exprs!7036 lt!2529586))) (exprs!7036 ct2!306))))))

(declare-fun b!7051348 () Bool)

(assert (=> b!7051348 (= e!4239083 (or (not (= (exprs!7036 ct2!306) Nil!68023)) (= lt!2529719 (t!381926 (exprs!7036 lt!2529586)))))))

(assert (= (and d!2203196 c!1313389) b!7051345))

(assert (= (and d!2203196 (not c!1313389)) b!7051346))

(assert (= (and d!2203196 res!2878766) b!7051347))

(assert (= (and b!7051347 res!2878765) b!7051348))

(declare-fun m!7767664 () Bool)

(assert (=> d!2203196 m!7767664))

(assert (=> d!2203196 m!7767658))

(assert (=> d!2203196 m!7767270))

(declare-fun m!7767666 () Bool)

(assert (=> b!7051347 m!7767666))

(assert (=> b!7051347 m!7767612))

(assert (=> b!7051347 m!7767276))

(declare-fun m!7767668 () Bool)

(assert (=> b!7051346 m!7767668))

(assert (=> b!7051135 d!2203196))

(declare-fun bs!1876165 () Bool)

(declare-fun d!2203198 () Bool)

(assert (= bs!1876165 (and d!2203198 b!7051070)))

(declare-fun lambda!419079 () Int)

(assert (=> bs!1876165 (= lambda!419079 lambda!419010)))

(declare-fun bs!1876166 () Bool)

(assert (= bs!1876166 (and d!2203198 b!7051072)))

(assert (=> bs!1876166 (not (= lambda!419079 lambda!419011))))

(declare-fun bs!1876167 () Bool)

(assert (= bs!1876167 (and d!2203198 d!2203014)))

(assert (=> bs!1876167 (not (= lambda!419079 lambda!419056))))

(declare-fun bs!1876168 () Bool)

(assert (= bs!1876168 (and d!2203198 d!2203080)))

(assert (=> bs!1876168 (not (= lambda!419079 lambda!419068))))

(declare-fun bs!1876169 () Bool)

(assert (= bs!1876169 (and d!2203198 d!2202972)))

(assert (=> bs!1876169 (= lambda!419079 lambda!419041)))

(declare-fun bs!1876170 () Bool)

(assert (= bs!1876170 (and d!2203198 d!2202974)))

(assert (=> bs!1876170 (= lambda!419079 lambda!419042)))

(declare-fun bs!1876171 () Bool)

(assert (= bs!1876171 (and d!2203198 d!2202976)))

(assert (=> bs!1876171 (not (= lambda!419079 lambda!419045))))

(declare-fun bs!1876172 () Bool)

(assert (= bs!1876172 (and d!2203198 d!2202982)))

(assert (=> bs!1876172 (not (= lambda!419079 lambda!419046))))

(assert (=> d!2203198 (= (inv!86710 setElem!49656) (forall!16471 (exprs!7036 setElem!49656) lambda!419079))))

(declare-fun bs!1876173 () Bool)

(assert (= bs!1876173 d!2203198))

(declare-fun m!7767670 () Bool)

(assert (=> bs!1876173 m!7767670))

(assert (=> setNonEmpty!49656 d!2203198))

(declare-fun b!7051359 () Bool)

(declare-fun e!4239086 () Bool)

(assert (=> b!7051359 (= e!4239086 tp_is_empty!44305)))

(declare-fun b!7051362 () Bool)

(declare-fun tp!1939153 () Bool)

(declare-fun tp!1939155 () Bool)

(assert (=> b!7051362 (= e!4239086 (and tp!1939153 tp!1939155))))

(assert (=> b!7051171 (= tp!1939115 e!4239086)))

(declare-fun b!7051360 () Bool)

(declare-fun tp!1939152 () Bool)

(declare-fun tp!1939156 () Bool)

(assert (=> b!7051360 (= e!4239086 (and tp!1939152 tp!1939156))))

(declare-fun b!7051361 () Bool)

(declare-fun tp!1939154 () Bool)

(assert (=> b!7051361 (= e!4239086 tp!1939154)))

(assert (= (and b!7051171 (is-ElementMatch!17540 (h!74471 (exprs!7036 ct2!306)))) b!7051359))

(assert (= (and b!7051171 (is-Concat!26385 (h!74471 (exprs!7036 ct2!306)))) b!7051360))

(assert (= (and b!7051171 (is-Star!17540 (h!74471 (exprs!7036 ct2!306)))) b!7051361))

(assert (= (and b!7051171 (is-Union!17540 (h!74471 (exprs!7036 ct2!306)))) b!7051362))

(declare-fun b!7051363 () Bool)

(declare-fun e!4239087 () Bool)

(declare-fun tp!1939157 () Bool)

(declare-fun tp!1939158 () Bool)

(assert (=> b!7051363 (= e!4239087 (and tp!1939157 tp!1939158))))

(assert (=> b!7051171 (= tp!1939116 e!4239087)))

(assert (= (and b!7051171 (is-Cons!68023 (t!381926 (exprs!7036 ct2!306)))) b!7051363))

(declare-fun b!7051364 () Bool)

(declare-fun e!4239088 () Bool)

(declare-fun tp!1939159 () Bool)

(declare-fun tp!1939160 () Bool)

(assert (=> b!7051364 (= e!4239088 (and tp!1939159 tp!1939160))))

(assert (=> b!7051164 (= tp!1939110 e!4239088)))

(assert (= (and b!7051164 (is-Cons!68023 (exprs!7036 setElem!49656))) b!7051364))

(declare-fun b!7051365 () Bool)

(declare-fun e!4239089 () Bool)

(assert (=> b!7051365 (= e!4239089 tp_is_empty!44305)))

(declare-fun b!7051368 () Bool)

(declare-fun tp!1939162 () Bool)

(declare-fun tp!1939164 () Bool)

(assert (=> b!7051368 (= e!4239089 (and tp!1939162 tp!1939164))))

(assert (=> b!7051179 (= tp!1939120 e!4239089)))

(declare-fun b!7051366 () Bool)

(declare-fun tp!1939161 () Bool)

(declare-fun tp!1939165 () Bool)

(assert (=> b!7051366 (= e!4239089 (and tp!1939161 tp!1939165))))

(declare-fun b!7051367 () Bool)

(declare-fun tp!1939163 () Bool)

(assert (=> b!7051367 (= e!4239089 tp!1939163)))

(assert (= (and b!7051179 (is-ElementMatch!17540 (h!74471 (exprs!7036 setElem!49650)))) b!7051365))

(assert (= (and b!7051179 (is-Concat!26385 (h!74471 (exprs!7036 setElem!49650)))) b!7051366))

(assert (= (and b!7051179 (is-Star!17540 (h!74471 (exprs!7036 setElem!49650)))) b!7051367))

(assert (= (and b!7051179 (is-Union!17540 (h!74471 (exprs!7036 setElem!49650)))) b!7051368))

(declare-fun b!7051369 () Bool)

(declare-fun e!4239090 () Bool)

(declare-fun tp!1939166 () Bool)

(declare-fun tp!1939167 () Bool)

(assert (=> b!7051369 (= e!4239090 (and tp!1939166 tp!1939167))))

(assert (=> b!7051179 (= tp!1939121 e!4239090)))

(assert (= (and b!7051179 (is-Cons!68023 (t!381926 (exprs!7036 setElem!49650)))) b!7051369))

(declare-fun condSetEmpty!49660 () Bool)

(assert (=> setNonEmpty!49656 (= condSetEmpty!49660 (= setRest!49656 (as set.empty (Set Context!13072))))))

(declare-fun setRes!49660 () Bool)

(assert (=> setNonEmpty!49656 (= tp!1939109 setRes!49660)))

(declare-fun setIsEmpty!49660 () Bool)

(assert (=> setIsEmpty!49660 setRes!49660))

(declare-fun setNonEmpty!49660 () Bool)

(declare-fun setElem!49660 () Context!13072)

(declare-fun e!4239091 () Bool)

(declare-fun tp!1939168 () Bool)

(assert (=> setNonEmpty!49660 (= setRes!49660 (and tp!1939168 (inv!86710 setElem!49660) e!4239091))))

(declare-fun setRest!49660 () (Set Context!13072))

(assert (=> setNonEmpty!49660 (= setRest!49656 (set.union (set.insert setElem!49660 (as set.empty (Set Context!13072))) setRest!49660))))

(declare-fun b!7051370 () Bool)

(declare-fun tp!1939169 () Bool)

(assert (=> b!7051370 (= e!4239091 tp!1939169)))

(assert (= (and setNonEmpty!49656 condSetEmpty!49660) setIsEmpty!49660))

(assert (= (and setNonEmpty!49656 (not condSetEmpty!49660)) setNonEmpty!49660))

(assert (= setNonEmpty!49660 b!7051370))

(declare-fun m!7767672 () Bool)

(assert (=> setNonEmpty!49660 m!7767672))

(declare-fun b!7051371 () Bool)

(declare-fun e!4239092 () Bool)

(declare-fun tp!1939170 () Bool)

(assert (=> b!7051371 (= e!4239092 (and tp_is_empty!44305 tp!1939170))))

(assert (=> b!7051178 (= tp!1939119 e!4239092)))

(assert (= (and b!7051178 (is-Cons!68022 (t!381925 (t!381925 s!7408)))) b!7051371))

(declare-fun b_lambda!268257 () Bool)

(assert (= b_lambda!268255 (or d!2202976 b_lambda!268257)))

(declare-fun bs!1876174 () Bool)

(declare-fun d!2203200 () Bool)

(assert (= bs!1876174 (and d!2203200 d!2202976)))

(declare-fun nullable!7236 (Regex!17540) Bool)

(assert (=> bs!1876174 (= (dynLambda!27568 lambda!419045 (h!74471 (exprs!7036 lt!2529590))) (nullable!7236 (h!74471 (exprs!7036 lt!2529590))))))

(declare-fun m!7767674 () Bool)

(assert (=> bs!1876174 m!7767674))

(assert (=> b!7051333 d!2203200))

(declare-fun b_lambda!268259 () Bool)

(assert (= b_lambda!268233 (or d!2202974 b_lambda!268259)))

(declare-fun bs!1876175 () Bool)

(declare-fun d!2203202 () Bool)

(assert (= bs!1876175 (and d!2203202 d!2202974)))

(declare-fun validRegex!8958 (Regex!17540) Bool)

(assert (=> bs!1876175 (= (dynLambda!27568 lambda!419042 (h!74471 (exprs!7036 setElem!49650))) (validRegex!8958 (h!74471 (exprs!7036 setElem!49650))))))

(declare-fun m!7767676 () Bool)

(assert (=> bs!1876175 m!7767676))

(assert (=> b!7051248 d!2203202))

(declare-fun b_lambda!268261 () Bool)

(assert (= b_lambda!268243 (or d!2202972 b_lambda!268261)))

(declare-fun bs!1876176 () Bool)

(declare-fun d!2203204 () Bool)

(assert (= bs!1876176 (and d!2203204 d!2202972)))

(assert (=> bs!1876176 (= (dynLambda!27568 lambda!419041 (h!74471 (exprs!7036 ct2!306))) (validRegex!8958 (h!74471 (exprs!7036 ct2!306))))))

(declare-fun m!7767678 () Bool)

(assert (=> bs!1876176 m!7767678))

(assert (=> b!7051284 d!2203204))

(declare-fun b_lambda!268263 () Bool)

(assert (= b_lambda!268247 (or b!7051071 b_lambda!268263)))

(declare-fun bs!1876177 () Bool)

(declare-fun d!2203206 () Bool)

(assert (= bs!1876177 (and d!2203206 b!7051071)))

(assert (=> bs!1876177 (= (dynLambda!27564 lambda!419008 lt!2529717) (nullableContext!96 lt!2529717))))

(declare-fun m!7767680 () Bool)

(assert (=> bs!1876177 m!7767680))

(assert (=> d!2203178 d!2203206))

(declare-fun b_lambda!268265 () Bool)

(assert (= b_lambda!268235 (or d!2202982 b_lambda!268265)))

(declare-fun bs!1876178 () Bool)

(declare-fun d!2203208 () Bool)

(assert (= bs!1876178 (and d!2203208 d!2202982)))

(assert (=> bs!1876178 (= (dynLambda!27568 lambda!419046 (h!74471 (exprs!7036 ct2!306))) (nullable!7236 (h!74471 (exprs!7036 ct2!306))))))

(declare-fun m!7767682 () Bool)

(assert (=> bs!1876178 m!7767682))

(assert (=> b!7051258 d!2203208))

(declare-fun b_lambda!268267 () Bool)

(assert (= b_lambda!268237 (or b!7051072 b_lambda!268267)))

(declare-fun bs!1876179 () Bool)

(declare-fun d!2203210 () Bool)

(assert (= bs!1876179 (and d!2203210 b!7051072)))

(assert (=> bs!1876179 (= (dynLambda!27568 lambda!419011 (h!74471 (exprs!7036 lt!2529586))) (nullable!7236 (h!74471 (exprs!7036 lt!2529586))))))

(declare-fun m!7767684 () Bool)

(assert (=> bs!1876179 m!7767684))

(assert (=> b!7051260 d!2203210))

(declare-fun b_lambda!268269 () Bool)

(assert (= b_lambda!268253 (or b!7051070 b_lambda!268269)))

(declare-fun bs!1876180 () Bool)

(declare-fun d!2203212 () Bool)

(assert (= bs!1876180 (and d!2203212 b!7051070)))

(assert (=> bs!1876180 (= (dynLambda!27568 lambda!419010 (h!74471 (exprs!7036 lt!2529586))) (validRegex!8958 (h!74471 (exprs!7036 lt!2529586))))))

(declare-fun m!7767686 () Bool)

(assert (=> bs!1876180 m!7767686))

(assert (=> b!7051331 d!2203212))

(declare-fun b_lambda!268271 () Bool)

(assert (= b_lambda!268241 (or b!7051072 b_lambda!268271)))

(declare-fun bs!1876181 () Bool)

(declare-fun d!2203214 () Bool)

(assert (= bs!1876181 (and d!2203214 b!7051072)))

(assert (=> bs!1876181 (= (dynLambda!27568 lambda!419011 (h!74471 (exprs!7036 ct2!306))) (nullable!7236 (h!74471 (exprs!7036 ct2!306))))))

(assert (=> bs!1876181 m!7767682))

(assert (=> b!7051282 d!2203214))

(declare-fun b_lambda!268273 () Bool)

(assert (= b_lambda!268245 (or b!7051070 b_lambda!268273)))

(declare-fun bs!1876182 () Bool)

(declare-fun d!2203216 () Bool)

(assert (= bs!1876182 (and d!2203216 b!7051070)))

(declare-fun lt!2529720 () Unit!161758)

(assert (=> bs!1876182 (= lt!2529720 (lemmaConcatPreservesForall!855 (exprs!7036 a!13416) (exprs!7036 ct2!306) lambda!419010))))

(assert (=> bs!1876182 (= (dynLambda!27565 lambda!419009 a!13416) (Context!13073 (++!15627 (exprs!7036 a!13416) (exprs!7036 ct2!306))))))

(declare-fun m!7767688 () Bool)

(assert (=> bs!1876182 m!7767688))

(declare-fun m!7767690 () Bool)

(assert (=> bs!1876182 m!7767690))

(assert (=> d!2203168 d!2203216))

(declare-fun b_lambda!268275 () Bool)

(assert (= b_lambda!268249 (or b!7051071 b_lambda!268275)))

(declare-fun bs!1876183 () Bool)

(declare-fun d!2203218 () Bool)

(assert (= bs!1876183 (and d!2203218 b!7051071)))

(assert (=> bs!1876183 (= (dynLambda!27564 lambda!419008 (h!74474 (toList!10881 lt!2529584))) (nullableContext!96 (h!74474 (toList!10881 lt!2529584))))))

(declare-fun m!7767692 () Bool)

(assert (=> bs!1876183 m!7767692))

(assert (=> b!7051327 d!2203218))

(declare-fun b_lambda!268277 () Bool)

(assert (= b_lambda!268251 (or b!7051070 b_lambda!268277)))

(declare-fun bs!1876184 () Bool)

(declare-fun d!2203220 () Bool)

(assert (= bs!1876184 (and d!2203220 b!7051070)))

(assert (=> bs!1876184 (= (dynLambda!27568 lambda!419010 (h!74471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))) (validRegex!8958 (h!74471 (++!15627 (exprs!7036 lt!2529586) (exprs!7036 ct2!306)))))))

(declare-fun m!7767694 () Bool)

(assert (=> bs!1876184 m!7767694))

(assert (=> b!7051329 d!2203220))

(declare-fun b_lambda!268279 () Bool)

(assert (= b_lambda!268231 (or d!2203014 b_lambda!268279)))

(declare-fun bs!1876185 () Bool)

(declare-fun d!2203222 () Bool)

(assert (= bs!1876185 (and d!2203222 d!2203014)))

(assert (=> bs!1876185 (= (dynLambda!27568 lambda!419056 (h!74471 (exprs!7036 lt!2529586))) (nullable!7236 (h!74471 (exprs!7036 lt!2529586))))))

(assert (=> bs!1876185 m!7767684))

(assert (=> b!7051241 d!2203222))

(declare-fun b_lambda!268281 () Bool)

(assert (= b_lambda!268239 (or b!7051072 b_lambda!268281)))

(declare-fun bs!1876186 () Bool)

(declare-fun d!2203224 () Bool)

(assert (= bs!1876186 (and d!2203224 b!7051072)))

(assert (=> bs!1876186 (= (dynLambda!27568 lambda!419011 (h!74471 lt!2529592)) (nullable!7236 (h!74471 lt!2529592)))))

(declare-fun m!7767696 () Bool)

(assert (=> bs!1876186 m!7767696))

(assert (=> b!7051262 d!2203224))

(push 1)

(assert (not b_lambda!268221))

(assert (not b!7051281))

(assert (not b!7051325))

(assert (not b!7051261))

(assert (not d!2203168))

(assert (not d!2203106))

(assert (not d!2203182))

(assert (not b!7051369))

(assert (not d!2203084))

(assert (not b!7051253))

(assert (not b!7051303))

(assert (not b!7051346))

(assert (not b!7051272))

(assert (not b!7051330))

(assert (not b!7051276))

(assert (not bs!1876181))

(assert (not d!2203078))

(assert (not bs!1876176))

(assert (not d!2203132))

(assert (not b_lambda!268263))

(assert (not d!2203136))

(assert (not b!7051259))

(assert (not b!7051263))

(assert (not b!7051371))

(assert (not b!7051288))

(assert (not d!2203130))

(assert (not b_lambda!268261))

(assert (not d!2203124))

(assert (not b!7051247))

(assert (not b!7051268))

(assert (not b!7051326))

(assert (not b!7051283))

(assert (not d!2203154))

(assert (not b!7051366))

(assert (not b!7051254))

(assert (not b!7051297))

(assert (not d!2203122))

(assert (not b!7051285))

(assert (not d!2203094))

(assert (not b!7051370))

(assert (not d!2203082))

(assert (not bs!1876178))

(assert (not b_lambda!268267))

(assert (not d!2203118))

(assert (not b!7051275))

(assert (not b!7051302))

(assert (not d!2203198))

(assert (not b_lambda!268219))

(assert (not b_lambda!268269))

(assert (not d!2203086))

(assert (not bs!1876174))

(assert (not b!7051340))

(assert (not b!7051368))

(assert (not b_lambda!268273))

(assert (not b!7051362))

(assert (not bs!1876175))

(assert (not d!2203120))

(assert (not bs!1876179))

(assert (not d!2203170))

(assert (not d!2203164))

(assert (not d!2203144))

(assert (not d!2203080))

(assert (not b!7051364))

(assert (not b!7051342))

(assert (not b_lambda!268271))

(assert (not b!7051266))

(assert (not bs!1876183))

(assert (not setNonEmpty!49660))

(assert (not d!2203116))

(assert (not d!2203140))

(assert (not d!2203178))

(assert (not bs!1876184))

(assert (not d!2203188))

(assert (not b_lambda!268279))

(assert (not bs!1876185))

(assert (not b!7051344))

(assert (not b!7051242))

(assert (not b_lambda!268277))

(assert (not b!7051299))

(assert (not b!7051280))

(assert (not b!7051363))

(assert (not b!7051334))

(assert (not b_lambda!268259))

(assert (not b_lambda!268265))

(assert (not d!2203096))

(assert (not b!7051249))

(assert (not d!2203114))

(assert (not d!2203196))

(assert (not bs!1876177))

(assert (not b!7051295))

(assert (not d!2203176))

(assert (not b!7051309))

(assert tp_is_empty!44305)

(assert (not b!7051367))

(assert (not b_lambda!268281))

(assert (not b!7051267))

(assert (not b!7051289))

(assert (not b_lambda!268275))

(assert (not d!2203128))

(assert (not b!7051347))

(assert (not bs!1876186))

(assert (not bs!1876180))

(assert (not b!7051269))

(assert (not b!7051332))

(assert (not b!7051255))

(assert (not b!7051273))

(assert (not b!7051252))

(assert (not b!7051328))

(assert (not b!7051361))

(assert (not bs!1876182))

(assert (not b!7051360))

(assert (not b_lambda!268257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

