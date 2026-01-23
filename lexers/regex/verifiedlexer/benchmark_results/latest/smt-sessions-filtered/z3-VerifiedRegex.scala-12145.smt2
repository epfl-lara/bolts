; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!682964 () Bool)

(assert start!682964)

(declare-fun b!7050458 () Bool)

(assert (=> b!7050458 true))

(declare-fun bs!1875744 () Bool)

(declare-fun b!7050462 () Bool)

(assert (= bs!1875744 (and b!7050462 b!7050458)))

(declare-fun lambda!418855 () Int)

(declare-fun lambda!418854 () Int)

(assert (=> bs!1875744 (not (= lambda!418855 lambda!418854))))

(declare-fun b!7050455 () Bool)

(declare-fun res!2878275 () Bool)

(declare-fun e!4238457 () Bool)

(assert (=> b!7050455 (=> (not res!2878275) (not e!4238457))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35344 0))(
  ( (C!35345 (val!27374 Int)) )
))
(declare-datatypes ((Regex!17537 0))(
  ( (ElementMatch!17537 (c!1313216 C!35344)) (Concat!26382 (regOne!35586 Regex!17537) (regTwo!35586 Regex!17537)) (EmptyExpr!17537) (Star!17537 (reg!17866 Regex!17537)) (EmptyLang!17537) (Union!17537 (regOne!35587 Regex!17537) (regTwo!35587 Regex!17537)) )
))
(declare-datatypes ((List!68136 0))(
  ( (Nil!68012) (Cons!68012 (h!74460 Regex!17537) (t!381915 List!68136)) )
))
(declare-datatypes ((Context!13066 0))(
  ( (Context!13067 (exprs!7033 List!68136)) )
))
(declare-fun lt!2529308 () (InoxSet Context!13066))

(declare-fun lambda!418852 () Int)

(declare-fun exists!3507 ((InoxSet Context!13066) Int) Bool)

(assert (=> b!7050455 (= res!2878275 (exists!3507 lt!2529308 lambda!418852))))

(declare-fun b!7050456 () Bool)

(declare-fun e!4238453 () Bool)

(declare-fun tp_is_empty!44299 () Bool)

(declare-fun tp!1938923 () Bool)

(assert (=> b!7050456 (= e!4238453 (and tp_is_empty!44299 tp!1938923))))

(declare-fun e!4238454 () Bool)

(declare-fun e!4238455 () Bool)

(assert (=> b!7050458 (= e!4238454 e!4238455)))

(declare-fun res!2878273 () Bool)

(assert (=> b!7050458 (=> (not res!2878273) (not e!4238455))))

(declare-fun lt!2529305 () List!68136)

(declare-fun lt!2529312 () Context!13066)

(assert (=> b!7050458 (= res!2878273 (= (Context!13067 lt!2529305) lt!2529312))))

(declare-fun lt!2529313 () Context!13066)

(declare-fun ct2!306 () Context!13066)

(declare-fun ++!15624 (List!68136 List!68136) List!68136)

(assert (=> b!7050458 (= lt!2529305 (++!15624 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)))))

(declare-datatypes ((Unit!161750 0))(
  ( (Unit!161751) )
))
(declare-fun lt!2529311 () Unit!161750)

(declare-fun lemmaConcatPreservesForall!852 (List!68136 List!68136 Int) Unit!161750)

(assert (=> b!7050458 (= lt!2529311 (lemmaConcatPreservesForall!852 (exprs!7033 lt!2529313) (exprs!7033 ct2!306) lambda!418854))))

(declare-fun z1!570 () (InoxSet Context!13066))

(declare-fun lambda!418853 () Int)

(declare-fun mapPost2!372 ((InoxSet Context!13066) Int Context!13066) Context!13066)

(assert (=> b!7050458 (= lt!2529313 (mapPost2!372 z1!570 lambda!418853 lt!2529312))))

(declare-fun b!7050459 () Bool)

(declare-fun e!4238456 () Bool)

(declare-fun nullableContext!93 (Context!13066) Bool)

(assert (=> b!7050459 (= e!4238456 (nullableContext!93 ct2!306))))

(declare-fun b!7050460 () Bool)

(assert (=> b!7050460 (= e!4238457 e!4238454)))

(declare-fun res!2878272 () Bool)

(assert (=> b!7050460 (=> (not res!2878272) (not e!4238454))))

(assert (=> b!7050460 (= res!2878272 (nullableContext!93 lt!2529312))))

(declare-fun getWitness!1581 ((InoxSet Context!13066) Int) Context!13066)

(assert (=> b!7050460 (= lt!2529312 (getWitness!1581 lt!2529308 lambda!418852))))

(declare-fun setIsEmpty!49627 () Bool)

(declare-fun setRes!49627 () Bool)

(assert (=> setIsEmpty!49627 setRes!49627))

(declare-fun b!7050461 () Bool)

(declare-fun e!4238452 () Bool)

(declare-fun tp!1938921 () Bool)

(assert (=> b!7050461 (= e!4238452 tp!1938921)))

(declare-fun res!2878274 () Bool)

(assert (=> start!682964 (=> (not res!2878274) (not e!4238457))))

(declare-datatypes ((List!68137 0))(
  ( (Nil!68013) (Cons!68013 (h!74461 C!35344) (t!381916 List!68137)) )
))
(declare-fun s!7408 () List!68137)

(declare-fun matchZipper!3077 ((InoxSet Context!13066) List!68137) Bool)

(assert (=> start!682964 (= res!2878274 (matchZipper!3077 lt!2529308 s!7408))))

(declare-fun appendTo!658 ((InoxSet Context!13066) Context!13066) (InoxSet Context!13066))

(assert (=> start!682964 (= lt!2529308 (appendTo!658 z1!570 ct2!306))))

(assert (=> start!682964 e!4238457))

(declare-fun condSetEmpty!49627 () Bool)

(assert (=> start!682964 (= condSetEmpty!49627 (= z1!570 ((as const (Array Context!13066 Bool)) false)))))

(assert (=> start!682964 setRes!49627))

(declare-fun e!4238458 () Bool)

(declare-fun inv!86701 (Context!13066) Bool)

(assert (=> start!682964 (and (inv!86701 ct2!306) e!4238458)))

(assert (=> start!682964 e!4238453))

(declare-fun b!7050457 () Bool)

(declare-fun tp!1938922 () Bool)

(assert (=> b!7050457 (= e!4238458 tp!1938922)))

(assert (=> b!7050462 (= e!4238455 (not e!4238456))))

(declare-fun res!2878271 () Bool)

(assert (=> b!7050462 (=> (not res!2878271) (not e!4238456))))

(assert (=> b!7050462 (= res!2878271 (nullableContext!93 lt!2529313))))

(declare-fun lt!2529306 () Unit!161750)

(declare-fun lemmaContentSubsetPreservesForall!348 (List!68136 List!68136 Int) Unit!161750)

(assert (=> b!7050462 (= lt!2529306 (lemmaContentSubsetPreservesForall!348 lt!2529305 (exprs!7033 ct2!306) lambda!418855))))

(declare-fun lt!2529309 () Unit!161750)

(assert (=> b!7050462 (= lt!2529309 (lemmaContentSubsetPreservesForall!348 lt!2529305 (exprs!7033 lt!2529313) lambda!418855))))

(declare-fun subseq!697 (List!68136 List!68136) Bool)

(assert (=> b!7050462 (subseq!697 (exprs!7033 ct2!306) lt!2529305)))

(declare-fun lt!2529310 () Unit!161750)

(declare-fun lemmaConcatThenSecondSubseqOfTot!18 (List!68136 List!68136) Unit!161750)

(assert (=> b!7050462 (= lt!2529310 (lemmaConcatThenSecondSubseqOfTot!18 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)))))

(assert (=> b!7050462 (subseq!697 (exprs!7033 lt!2529313) lt!2529305)))

(declare-fun lt!2529307 () Unit!161750)

(declare-fun lemmaConcatThenFirstSubseqOfTot!18 (List!68136 List!68136) Unit!161750)

(assert (=> b!7050462 (= lt!2529307 (lemmaConcatThenFirstSubseqOfTot!18 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)))))

(declare-fun b!7050463 () Bool)

(declare-fun res!2878276 () Bool)

(assert (=> b!7050463 (=> (not res!2878276) (not e!4238457))))

(declare-fun nullableZipper!2630 ((InoxSet Context!13066)) Bool)

(assert (=> b!7050463 (= res!2878276 (nullableZipper!2630 lt!2529308))))

(declare-fun setNonEmpty!49627 () Bool)

(declare-fun tp!1938924 () Bool)

(declare-fun setElem!49627 () Context!13066)

(assert (=> setNonEmpty!49627 (= setRes!49627 (and tp!1938924 (inv!86701 setElem!49627) e!4238452))))

(declare-fun setRest!49627 () (InoxSet Context!13066))

(assert (=> setNonEmpty!49627 (= z1!570 ((_ map or) (store ((as const (Array Context!13066 Bool)) false) setElem!49627 true) setRest!49627))))

(declare-fun b!7050464 () Bool)

(declare-fun res!2878277 () Bool)

(assert (=> b!7050464 (=> (not res!2878277) (not e!4238457))))

(get-info :version)

(assert (=> b!7050464 (= res!2878277 (not ((_ is Cons!68013) s!7408)))))

(assert (= (and start!682964 res!2878274) b!7050464))

(assert (= (and b!7050464 res!2878277) b!7050463))

(assert (= (and b!7050463 res!2878276) b!7050455))

(assert (= (and b!7050455 res!2878275) b!7050460))

(assert (= (and b!7050460 res!2878272) b!7050458))

(assert (= (and b!7050458 res!2878273) b!7050462))

(assert (= (and b!7050462 res!2878271) b!7050459))

(assert (= (and start!682964 condSetEmpty!49627) setIsEmpty!49627))

(assert (= (and start!682964 (not condSetEmpty!49627)) setNonEmpty!49627))

(assert (= setNonEmpty!49627 b!7050461))

(assert (= start!682964 b!7050457))

(assert (= (and start!682964 ((_ is Cons!68013) s!7408)) b!7050456))

(declare-fun m!7766132 () Bool)

(assert (=> b!7050463 m!7766132))

(declare-fun m!7766134 () Bool)

(assert (=> b!7050462 m!7766134))

(declare-fun m!7766136 () Bool)

(assert (=> b!7050462 m!7766136))

(declare-fun m!7766138 () Bool)

(assert (=> b!7050462 m!7766138))

(declare-fun m!7766140 () Bool)

(assert (=> b!7050462 m!7766140))

(declare-fun m!7766142 () Bool)

(assert (=> b!7050462 m!7766142))

(declare-fun m!7766144 () Bool)

(assert (=> b!7050462 m!7766144))

(declare-fun m!7766146 () Bool)

(assert (=> b!7050462 m!7766146))

(declare-fun m!7766148 () Bool)

(assert (=> start!682964 m!7766148))

(declare-fun m!7766150 () Bool)

(assert (=> start!682964 m!7766150))

(declare-fun m!7766152 () Bool)

(assert (=> start!682964 m!7766152))

(declare-fun m!7766154 () Bool)

(assert (=> b!7050455 m!7766154))

(declare-fun m!7766156 () Bool)

(assert (=> setNonEmpty!49627 m!7766156))

(declare-fun m!7766158 () Bool)

(assert (=> b!7050458 m!7766158))

(declare-fun m!7766160 () Bool)

(assert (=> b!7050458 m!7766160))

(declare-fun m!7766162 () Bool)

(assert (=> b!7050458 m!7766162))

(declare-fun m!7766164 () Bool)

(assert (=> b!7050460 m!7766164))

(declare-fun m!7766166 () Bool)

(assert (=> b!7050460 m!7766166))

(declare-fun m!7766168 () Bool)

(assert (=> b!7050459 m!7766168))

(check-sat (not setNonEmpty!49627) (not b!7050462) (not b!7050461) (not b!7050457) (not b!7050455) (not start!682964) tp_is_empty!44299 (not b!7050456) (not b!7050459) (not b!7050463) (not b!7050458) (not b!7050460))
(check-sat)
(get-model)

(declare-fun d!2202496 () Bool)

(declare-fun lt!2529322 () Bool)

(declare-datatypes ((List!68138 0))(
  ( (Nil!68014) (Cons!68014 (h!74462 Context!13066) (t!381917 List!68138)) )
))
(declare-fun exists!3508 (List!68138 Int) Bool)

(declare-fun toList!10877 ((InoxSet Context!13066)) List!68138)

(assert (=> d!2202496 (= lt!2529322 (exists!3508 (toList!10877 lt!2529308) lambda!418852))))

(declare-fun choose!53652 ((InoxSet Context!13066) Int) Bool)

(assert (=> d!2202496 (= lt!2529322 (choose!53652 lt!2529308 lambda!418852))))

(assert (=> d!2202496 (= (exists!3507 lt!2529308 lambda!418852) lt!2529322)))

(declare-fun bs!1875748 () Bool)

(assert (= bs!1875748 d!2202496))

(declare-fun m!7766192 () Bool)

(assert (=> bs!1875748 m!7766192))

(assert (=> bs!1875748 m!7766192))

(declare-fun m!7766194 () Bool)

(assert (=> bs!1875748 m!7766194))

(declare-fun m!7766196 () Bool)

(assert (=> bs!1875748 m!7766196))

(assert (=> b!7050455 d!2202496))

(declare-fun d!2202500 () Bool)

(declare-fun c!1313224 () Bool)

(declare-fun isEmpty!39684 (List!68137) Bool)

(assert (=> d!2202500 (= c!1313224 (isEmpty!39684 s!7408))))

(declare-fun e!4238470 () Bool)

(assert (=> d!2202500 (= (matchZipper!3077 lt!2529308 s!7408) e!4238470)))

(declare-fun b!7050487 () Bool)

(assert (=> b!7050487 (= e!4238470 (nullableZipper!2630 lt!2529308))))

(declare-fun b!7050488 () Bool)

(declare-fun derivationStepZipper!2989 ((InoxSet Context!13066) C!35344) (InoxSet Context!13066))

(declare-fun head!14325 (List!68137) C!35344)

(declare-fun tail!13658 (List!68137) List!68137)

(assert (=> b!7050488 (= e!4238470 (matchZipper!3077 (derivationStepZipper!2989 lt!2529308 (head!14325 s!7408)) (tail!13658 s!7408)))))

(assert (= (and d!2202500 c!1313224) b!7050487))

(assert (= (and d!2202500 (not c!1313224)) b!7050488))

(declare-fun m!7766208 () Bool)

(assert (=> d!2202500 m!7766208))

(assert (=> b!7050487 m!7766132))

(declare-fun m!7766210 () Bool)

(assert (=> b!7050488 m!7766210))

(assert (=> b!7050488 m!7766210))

(declare-fun m!7766212 () Bool)

(assert (=> b!7050488 m!7766212))

(declare-fun m!7766214 () Bool)

(assert (=> b!7050488 m!7766214))

(assert (=> b!7050488 m!7766212))

(assert (=> b!7050488 m!7766214))

(declare-fun m!7766216 () Bool)

(assert (=> b!7050488 m!7766216))

(assert (=> start!682964 d!2202500))

(declare-fun bs!1875750 () Bool)

(declare-fun d!2202504 () Bool)

(assert (= bs!1875750 (and d!2202504 b!7050458)))

(declare-fun lambda!418863 () Int)

(assert (=> bs!1875750 (= lambda!418863 lambda!418853)))

(assert (=> d!2202504 true))

(declare-fun map!15850 ((InoxSet Context!13066) Int) (InoxSet Context!13066))

(assert (=> d!2202504 (= (appendTo!658 z1!570 ct2!306) (map!15850 z1!570 lambda!418863))))

(declare-fun bs!1875751 () Bool)

(assert (= bs!1875751 d!2202504))

(declare-fun m!7766226 () Bool)

(assert (=> bs!1875751 m!7766226))

(assert (=> start!682964 d!2202504))

(declare-fun bs!1875753 () Bool)

(declare-fun d!2202510 () Bool)

(assert (= bs!1875753 (and d!2202510 b!7050458)))

(declare-fun lambda!418866 () Int)

(assert (=> bs!1875753 (= lambda!418866 lambda!418854)))

(declare-fun bs!1875754 () Bool)

(assert (= bs!1875754 (and d!2202510 b!7050462)))

(assert (=> bs!1875754 (not (= lambda!418866 lambda!418855))))

(declare-fun forall!16466 (List!68136 Int) Bool)

(assert (=> d!2202510 (= (inv!86701 ct2!306) (forall!16466 (exprs!7033 ct2!306) lambda!418866))))

(declare-fun bs!1875755 () Bool)

(assert (= bs!1875755 d!2202510))

(declare-fun m!7766234 () Bool)

(assert (=> bs!1875755 m!7766234))

(assert (=> start!682964 d!2202510))

(declare-fun bs!1875756 () Bool)

(declare-fun d!2202514 () Bool)

(assert (= bs!1875756 (and d!2202514 b!7050458)))

(declare-fun lambda!418867 () Int)

(assert (=> bs!1875756 (= lambda!418867 lambda!418854)))

(declare-fun bs!1875757 () Bool)

(assert (= bs!1875757 (and d!2202514 b!7050462)))

(assert (=> bs!1875757 (not (= lambda!418867 lambda!418855))))

(declare-fun bs!1875758 () Bool)

(assert (= bs!1875758 (and d!2202514 d!2202510)))

(assert (=> bs!1875758 (= lambda!418867 lambda!418866)))

(assert (=> d!2202514 (= (inv!86701 setElem!49627) (forall!16466 (exprs!7033 setElem!49627) lambda!418867))))

(declare-fun bs!1875760 () Bool)

(assert (= bs!1875760 d!2202514))

(declare-fun m!7766236 () Bool)

(assert (=> bs!1875760 m!7766236))

(assert (=> setNonEmpty!49627 d!2202514))

(declare-fun bs!1875761 () Bool)

(declare-fun d!2202516 () Bool)

(assert (= bs!1875761 (and d!2202516 b!7050458)))

(declare-fun lambda!418872 () Int)

(assert (=> bs!1875761 (not (= lambda!418872 lambda!418854))))

(declare-fun bs!1875762 () Bool)

(assert (= bs!1875762 (and d!2202516 b!7050462)))

(assert (=> bs!1875762 (= lambda!418872 lambda!418855)))

(declare-fun bs!1875763 () Bool)

(assert (= bs!1875763 (and d!2202516 d!2202510)))

(assert (=> bs!1875763 (not (= lambda!418872 lambda!418866))))

(declare-fun bs!1875764 () Bool)

(assert (= bs!1875764 (and d!2202516 d!2202514)))

(assert (=> bs!1875764 (not (= lambda!418872 lambda!418867))))

(assert (=> d!2202516 (= (nullableContext!93 lt!2529312) (forall!16466 (exprs!7033 lt!2529312) lambda!418872))))

(declare-fun bs!1875765 () Bool)

(assert (= bs!1875765 d!2202516))

(declare-fun m!7766246 () Bool)

(assert (=> bs!1875765 m!7766246))

(assert (=> b!7050460 d!2202516))

(declare-fun d!2202522 () Bool)

(declare-fun e!4238489 () Bool)

(assert (=> d!2202522 e!4238489))

(declare-fun res!2878307 () Bool)

(assert (=> d!2202522 (=> (not res!2878307) (not e!4238489))))

(declare-fun lt!2529340 () Context!13066)

(declare-fun dynLambda!27553 (Int Context!13066) Bool)

(assert (=> d!2202522 (= res!2878307 (dynLambda!27553 lambda!418852 lt!2529340))))

(declare-fun getWitness!1582 (List!68138 Int) Context!13066)

(assert (=> d!2202522 (= lt!2529340 (getWitness!1582 (toList!10877 lt!2529308) lambda!418852))))

(assert (=> d!2202522 (exists!3507 lt!2529308 lambda!418852)))

(assert (=> d!2202522 (= (getWitness!1581 lt!2529308 lambda!418852) lt!2529340)))

(declare-fun b!7050509 () Bool)

(assert (=> b!7050509 (= e!4238489 (select lt!2529308 lt!2529340))))

(assert (= (and d!2202522 res!2878307) b!7050509))

(declare-fun b_lambda!268081 () Bool)

(assert (=> (not b_lambda!268081) (not d!2202522)))

(declare-fun m!7766254 () Bool)

(assert (=> d!2202522 m!7766254))

(assert (=> d!2202522 m!7766192))

(assert (=> d!2202522 m!7766192))

(declare-fun m!7766256 () Bool)

(assert (=> d!2202522 m!7766256))

(assert (=> d!2202522 m!7766154))

(declare-fun m!7766258 () Bool)

(assert (=> b!7050509 m!7766258))

(assert (=> b!7050460 d!2202522))

(declare-fun bs!1875770 () Bool)

(declare-fun d!2202528 () Bool)

(assert (= bs!1875770 (and d!2202528 b!7050462)))

(declare-fun lambda!418874 () Int)

(assert (=> bs!1875770 (= lambda!418874 lambda!418855)))

(declare-fun bs!1875771 () Bool)

(assert (= bs!1875771 (and d!2202528 d!2202516)))

(assert (=> bs!1875771 (= lambda!418874 lambda!418872)))

(declare-fun bs!1875772 () Bool)

(assert (= bs!1875772 (and d!2202528 d!2202510)))

(assert (=> bs!1875772 (not (= lambda!418874 lambda!418866))))

(declare-fun bs!1875773 () Bool)

(assert (= bs!1875773 (and d!2202528 d!2202514)))

(assert (=> bs!1875773 (not (= lambda!418874 lambda!418867))))

(declare-fun bs!1875774 () Bool)

(assert (= bs!1875774 (and d!2202528 b!7050458)))

(assert (=> bs!1875774 (not (= lambda!418874 lambda!418854))))

(assert (=> d!2202528 (= (nullableContext!93 ct2!306) (forall!16466 (exprs!7033 ct2!306) lambda!418874))))

(declare-fun bs!1875775 () Bool)

(assert (= bs!1875775 d!2202528))

(declare-fun m!7766260 () Bool)

(assert (=> bs!1875775 m!7766260))

(assert (=> b!7050459 d!2202528))

(declare-fun bs!1875776 () Bool)

(declare-fun d!2202530 () Bool)

(assert (= bs!1875776 (and d!2202530 b!7050455)))

(declare-fun lambda!418877 () Int)

(assert (=> bs!1875776 (= lambda!418877 lambda!418852)))

(assert (=> d!2202530 (= (nullableZipper!2630 lt!2529308) (exists!3507 lt!2529308 lambda!418877))))

(declare-fun bs!1875777 () Bool)

(assert (= bs!1875777 d!2202530))

(declare-fun m!7766272 () Bool)

(assert (=> bs!1875777 m!7766272))

(assert (=> b!7050463 d!2202530))

(declare-fun bs!1875778 () Bool)

(declare-fun d!2202534 () Bool)

(assert (= bs!1875778 (and d!2202534 b!7050462)))

(declare-fun lambda!418878 () Int)

(assert (=> bs!1875778 (= lambda!418878 lambda!418855)))

(declare-fun bs!1875779 () Bool)

(assert (= bs!1875779 (and d!2202534 d!2202516)))

(assert (=> bs!1875779 (= lambda!418878 lambda!418872)))

(declare-fun bs!1875780 () Bool)

(assert (= bs!1875780 (and d!2202534 d!2202510)))

(assert (=> bs!1875780 (not (= lambda!418878 lambda!418866))))

(declare-fun bs!1875781 () Bool)

(assert (= bs!1875781 (and d!2202534 d!2202528)))

(assert (=> bs!1875781 (= lambda!418878 lambda!418874)))

(declare-fun bs!1875782 () Bool)

(assert (= bs!1875782 (and d!2202534 d!2202514)))

(assert (=> bs!1875782 (not (= lambda!418878 lambda!418867))))

(declare-fun bs!1875783 () Bool)

(assert (= bs!1875783 (and d!2202534 b!7050458)))

(assert (=> bs!1875783 (not (= lambda!418878 lambda!418854))))

(assert (=> d!2202534 (= (nullableContext!93 lt!2529313) (forall!16466 (exprs!7033 lt!2529313) lambda!418878))))

(declare-fun bs!1875784 () Bool)

(assert (= bs!1875784 d!2202534))

(declare-fun m!7766274 () Bool)

(assert (=> bs!1875784 m!7766274))

(assert (=> b!7050462 d!2202534))

(declare-fun b!7050523 () Bool)

(declare-fun e!4238503 () Bool)

(declare-fun e!4238502 () Bool)

(assert (=> b!7050523 (= e!4238503 e!4238502)))

(declare-fun res!2878319 () Bool)

(assert (=> b!7050523 (=> res!2878319 e!4238502)))

(declare-fun e!4238501 () Bool)

(assert (=> b!7050523 (= res!2878319 e!4238501)))

(declare-fun res!2878318 () Bool)

(assert (=> b!7050523 (=> (not res!2878318) (not e!4238501))))

(assert (=> b!7050523 (= res!2878318 (= (h!74460 (exprs!7033 lt!2529313)) (h!74460 lt!2529305)))))

(declare-fun d!2202536 () Bool)

(declare-fun res!2878317 () Bool)

(declare-fun e!4238504 () Bool)

(assert (=> d!2202536 (=> res!2878317 e!4238504)))

(assert (=> d!2202536 (= res!2878317 ((_ is Nil!68012) (exprs!7033 lt!2529313)))))

(assert (=> d!2202536 (= (subseq!697 (exprs!7033 lt!2529313) lt!2529305) e!4238504)))

(declare-fun b!7050525 () Bool)

(assert (=> b!7050525 (= e!4238502 (subseq!697 (exprs!7033 lt!2529313) (t!381915 lt!2529305)))))

(declare-fun b!7050522 () Bool)

(assert (=> b!7050522 (= e!4238504 e!4238503)))

(declare-fun res!2878316 () Bool)

(assert (=> b!7050522 (=> (not res!2878316) (not e!4238503))))

(assert (=> b!7050522 (= res!2878316 ((_ is Cons!68012) lt!2529305))))

(declare-fun b!7050524 () Bool)

(assert (=> b!7050524 (= e!4238501 (subseq!697 (t!381915 (exprs!7033 lt!2529313)) (t!381915 lt!2529305)))))

(assert (= (and d!2202536 (not res!2878317)) b!7050522))

(assert (= (and b!7050522 res!2878316) b!7050523))

(assert (= (and b!7050523 res!2878318) b!7050524))

(assert (= (and b!7050523 (not res!2878319)) b!7050525))

(declare-fun m!7766278 () Bool)

(assert (=> b!7050525 m!7766278))

(declare-fun m!7766280 () Bool)

(assert (=> b!7050524 m!7766280))

(assert (=> b!7050462 d!2202536))

(declare-fun d!2202540 () Bool)

(assert (=> d!2202540 (forall!16466 (exprs!7033 ct2!306) lambda!418855)))

(declare-fun lt!2529345 () Unit!161750)

(declare-fun choose!53657 (List!68136 List!68136 Int) Unit!161750)

(assert (=> d!2202540 (= lt!2529345 (choose!53657 lt!2529305 (exprs!7033 ct2!306) lambda!418855))))

(assert (=> d!2202540 (forall!16466 lt!2529305 lambda!418855)))

(assert (=> d!2202540 (= (lemmaContentSubsetPreservesForall!348 lt!2529305 (exprs!7033 ct2!306) lambda!418855) lt!2529345)))

(declare-fun bs!1875802 () Bool)

(assert (= bs!1875802 d!2202540))

(declare-fun m!7766288 () Bool)

(assert (=> bs!1875802 m!7766288))

(declare-fun m!7766290 () Bool)

(assert (=> bs!1875802 m!7766290))

(declare-fun m!7766292 () Bool)

(assert (=> bs!1875802 m!7766292))

(assert (=> b!7050462 d!2202540))

(declare-fun d!2202548 () Bool)

(assert (=> d!2202548 (subseq!697 (exprs!7033 ct2!306) (++!15624 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)))))

(declare-fun lt!2529348 () Unit!161750)

(declare-fun choose!53658 (List!68136 List!68136) Unit!161750)

(assert (=> d!2202548 (= lt!2529348 (choose!53658 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)))))

(assert (=> d!2202548 (= (lemmaConcatThenSecondSubseqOfTot!18 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)) lt!2529348)))

(declare-fun bs!1875803 () Bool)

(assert (= bs!1875803 d!2202548))

(assert (=> bs!1875803 m!7766158))

(assert (=> bs!1875803 m!7766158))

(declare-fun m!7766294 () Bool)

(assert (=> bs!1875803 m!7766294))

(declare-fun m!7766296 () Bool)

(assert (=> bs!1875803 m!7766296))

(assert (=> b!7050462 d!2202548))

(declare-fun b!7050529 () Bool)

(declare-fun e!4238509 () Bool)

(declare-fun e!4238508 () Bool)

(assert (=> b!7050529 (= e!4238509 e!4238508)))

(declare-fun res!2878325 () Bool)

(assert (=> b!7050529 (=> res!2878325 e!4238508)))

(declare-fun e!4238507 () Bool)

(assert (=> b!7050529 (= res!2878325 e!4238507)))

(declare-fun res!2878324 () Bool)

(assert (=> b!7050529 (=> (not res!2878324) (not e!4238507))))

(assert (=> b!7050529 (= res!2878324 (= (h!74460 (exprs!7033 ct2!306)) (h!74460 lt!2529305)))))

(declare-fun d!2202550 () Bool)

(declare-fun res!2878323 () Bool)

(declare-fun e!4238510 () Bool)

(assert (=> d!2202550 (=> res!2878323 e!4238510)))

(assert (=> d!2202550 (= res!2878323 ((_ is Nil!68012) (exprs!7033 ct2!306)))))

(assert (=> d!2202550 (= (subseq!697 (exprs!7033 ct2!306) lt!2529305) e!4238510)))

(declare-fun b!7050531 () Bool)

(assert (=> b!7050531 (= e!4238508 (subseq!697 (exprs!7033 ct2!306) (t!381915 lt!2529305)))))

(declare-fun b!7050528 () Bool)

(assert (=> b!7050528 (= e!4238510 e!4238509)))

(declare-fun res!2878322 () Bool)

(assert (=> b!7050528 (=> (not res!2878322) (not e!4238509))))

(assert (=> b!7050528 (= res!2878322 ((_ is Cons!68012) lt!2529305))))

(declare-fun b!7050530 () Bool)

(assert (=> b!7050530 (= e!4238507 (subseq!697 (t!381915 (exprs!7033 ct2!306)) (t!381915 lt!2529305)))))

(assert (= (and d!2202550 (not res!2878323)) b!7050528))

(assert (= (and b!7050528 res!2878322) b!7050529))

(assert (= (and b!7050529 res!2878324) b!7050530))

(assert (= (and b!7050529 (not res!2878325)) b!7050531))

(declare-fun m!7766298 () Bool)

(assert (=> b!7050531 m!7766298))

(declare-fun m!7766300 () Bool)

(assert (=> b!7050530 m!7766300))

(assert (=> b!7050462 d!2202550))

(declare-fun d!2202552 () Bool)

(assert (=> d!2202552 (subseq!697 (exprs!7033 lt!2529313) (++!15624 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)))))

(declare-fun lt!2529354 () Unit!161750)

(declare-fun choose!53659 (List!68136 List!68136) Unit!161750)

(assert (=> d!2202552 (= lt!2529354 (choose!53659 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)))))

(assert (=> d!2202552 (= (lemmaConcatThenFirstSubseqOfTot!18 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)) lt!2529354)))

(declare-fun bs!1875810 () Bool)

(assert (= bs!1875810 d!2202552))

(assert (=> bs!1875810 m!7766158))

(assert (=> bs!1875810 m!7766158))

(declare-fun m!7766312 () Bool)

(assert (=> bs!1875810 m!7766312))

(declare-fun m!7766314 () Bool)

(assert (=> bs!1875810 m!7766314))

(assert (=> b!7050462 d!2202552))

(declare-fun d!2202558 () Bool)

(assert (=> d!2202558 (forall!16466 (exprs!7033 lt!2529313) lambda!418855)))

(declare-fun lt!2529355 () Unit!161750)

(assert (=> d!2202558 (= lt!2529355 (choose!53657 lt!2529305 (exprs!7033 lt!2529313) lambda!418855))))

(assert (=> d!2202558 (forall!16466 lt!2529305 lambda!418855)))

(assert (=> d!2202558 (= (lemmaContentSubsetPreservesForall!348 lt!2529305 (exprs!7033 lt!2529313) lambda!418855) lt!2529355)))

(declare-fun bs!1875812 () Bool)

(assert (= bs!1875812 d!2202558))

(declare-fun m!7766316 () Bool)

(assert (=> bs!1875812 m!7766316))

(declare-fun m!7766318 () Bool)

(assert (=> bs!1875812 m!7766318))

(assert (=> bs!1875812 m!7766292))

(assert (=> b!7050462 d!2202558))

(declare-fun b!7050557 () Bool)

(declare-fun e!4238526 () List!68136)

(assert (=> b!7050557 (= e!4238526 (exprs!7033 ct2!306))))

(declare-fun lt!2529362 () List!68136)

(declare-fun e!4238527 () Bool)

(declare-fun b!7050560 () Bool)

(assert (=> b!7050560 (= e!4238527 (or (not (= (exprs!7033 ct2!306) Nil!68012)) (= lt!2529362 (exprs!7033 lt!2529313))))))

(declare-fun b!7050558 () Bool)

(assert (=> b!7050558 (= e!4238526 (Cons!68012 (h!74460 (exprs!7033 lt!2529313)) (++!15624 (t!381915 (exprs!7033 lt!2529313)) (exprs!7033 ct2!306))))))

(declare-fun d!2202560 () Bool)

(assert (=> d!2202560 e!4238527))

(declare-fun res!2878331 () Bool)

(assert (=> d!2202560 (=> (not res!2878331) (not e!4238527))))

(declare-fun content!13638 (List!68136) (InoxSet Regex!17537))

(assert (=> d!2202560 (= res!2878331 (= (content!13638 lt!2529362) ((_ map or) (content!13638 (exprs!7033 lt!2529313)) (content!13638 (exprs!7033 ct2!306)))))))

(assert (=> d!2202560 (= lt!2529362 e!4238526)))

(declare-fun c!1313236 () Bool)

(assert (=> d!2202560 (= c!1313236 ((_ is Nil!68012) (exprs!7033 lt!2529313)))))

(assert (=> d!2202560 (= (++!15624 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)) lt!2529362)))

(declare-fun b!7050559 () Bool)

(declare-fun res!2878332 () Bool)

(assert (=> b!7050559 (=> (not res!2878332) (not e!4238527))))

(declare-fun size!41129 (List!68136) Int)

(assert (=> b!7050559 (= res!2878332 (= (size!41129 lt!2529362) (+ (size!41129 (exprs!7033 lt!2529313)) (size!41129 (exprs!7033 ct2!306)))))))

(assert (= (and d!2202560 c!1313236) b!7050557))

(assert (= (and d!2202560 (not c!1313236)) b!7050558))

(assert (= (and d!2202560 res!2878331) b!7050559))

(assert (= (and b!7050559 res!2878332) b!7050560))

(declare-fun m!7766332 () Bool)

(assert (=> b!7050558 m!7766332))

(declare-fun m!7766334 () Bool)

(assert (=> d!2202560 m!7766334))

(declare-fun m!7766336 () Bool)

(assert (=> d!2202560 m!7766336))

(declare-fun m!7766338 () Bool)

(assert (=> d!2202560 m!7766338))

(declare-fun m!7766340 () Bool)

(assert (=> b!7050559 m!7766340))

(declare-fun m!7766342 () Bool)

(assert (=> b!7050559 m!7766342))

(declare-fun m!7766344 () Bool)

(assert (=> b!7050559 m!7766344))

(assert (=> b!7050458 d!2202560))

(declare-fun d!2202566 () Bool)

(assert (=> d!2202566 (forall!16466 (++!15624 (exprs!7033 lt!2529313) (exprs!7033 ct2!306)) lambda!418854)))

(declare-fun lt!2529365 () Unit!161750)

(declare-fun choose!53661 (List!68136 List!68136 Int) Unit!161750)

(assert (=> d!2202566 (= lt!2529365 (choose!53661 (exprs!7033 lt!2529313) (exprs!7033 ct2!306) lambda!418854))))

(assert (=> d!2202566 (forall!16466 (exprs!7033 lt!2529313) lambda!418854)))

(assert (=> d!2202566 (= (lemmaConcatPreservesForall!852 (exprs!7033 lt!2529313) (exprs!7033 ct2!306) lambda!418854) lt!2529365)))

(declare-fun bs!1875816 () Bool)

(assert (= bs!1875816 d!2202566))

(assert (=> bs!1875816 m!7766158))

(assert (=> bs!1875816 m!7766158))

(declare-fun m!7766346 () Bool)

(assert (=> bs!1875816 m!7766346))

(declare-fun m!7766348 () Bool)

(assert (=> bs!1875816 m!7766348))

(declare-fun m!7766350 () Bool)

(assert (=> bs!1875816 m!7766350))

(assert (=> b!7050458 d!2202566))

(declare-fun d!2202568 () Bool)

(declare-fun e!4238530 () Bool)

(assert (=> d!2202568 e!4238530))

(declare-fun res!2878335 () Bool)

(assert (=> d!2202568 (=> (not res!2878335) (not e!4238530))))

(declare-fun lt!2529368 () Context!13066)

(declare-fun dynLambda!27555 (Int Context!13066) Context!13066)

(assert (=> d!2202568 (= res!2878335 (= lt!2529312 (dynLambda!27555 lambda!418853 lt!2529368)))))

(declare-fun choose!53662 ((InoxSet Context!13066) Int Context!13066) Context!13066)

(assert (=> d!2202568 (= lt!2529368 (choose!53662 z1!570 lambda!418853 lt!2529312))))

(assert (=> d!2202568 (select (map!15850 z1!570 lambda!418853) lt!2529312)))

(assert (=> d!2202568 (= (mapPost2!372 z1!570 lambda!418853 lt!2529312) lt!2529368)))

(declare-fun b!7050564 () Bool)

(assert (=> b!7050564 (= e!4238530 (select z1!570 lt!2529368))))

(assert (= (and d!2202568 res!2878335) b!7050564))

(declare-fun b_lambda!268089 () Bool)

(assert (=> (not b_lambda!268089) (not d!2202568)))

(declare-fun m!7766352 () Bool)

(assert (=> d!2202568 m!7766352))

(declare-fun m!7766354 () Bool)

(assert (=> d!2202568 m!7766354))

(declare-fun m!7766356 () Bool)

(assert (=> d!2202568 m!7766356))

(declare-fun m!7766358 () Bool)

(assert (=> d!2202568 m!7766358))

(declare-fun m!7766360 () Bool)

(assert (=> b!7050564 m!7766360))

(assert (=> b!7050458 d!2202568))

(declare-fun b!7050569 () Bool)

(declare-fun e!4238533 () Bool)

(declare-fun tp!1938946 () Bool)

(declare-fun tp!1938947 () Bool)

(assert (=> b!7050569 (= e!4238533 (and tp!1938946 tp!1938947))))

(assert (=> b!7050457 (= tp!1938922 e!4238533)))

(assert (= (and b!7050457 ((_ is Cons!68012) (exprs!7033 ct2!306))) b!7050569))

(declare-fun b!7050570 () Bool)

(declare-fun e!4238534 () Bool)

(declare-fun tp!1938948 () Bool)

(declare-fun tp!1938949 () Bool)

(assert (=> b!7050570 (= e!4238534 (and tp!1938948 tp!1938949))))

(assert (=> b!7050461 (= tp!1938921 e!4238534)))

(assert (= (and b!7050461 ((_ is Cons!68012) (exprs!7033 setElem!49627))) b!7050570))

(declare-fun b!7050575 () Bool)

(declare-fun e!4238537 () Bool)

(declare-fun tp!1938952 () Bool)

(assert (=> b!7050575 (= e!4238537 (and tp_is_empty!44299 tp!1938952))))

(assert (=> b!7050456 (= tp!1938923 e!4238537)))

(assert (= (and b!7050456 ((_ is Cons!68013) (t!381916 s!7408))) b!7050575))

(declare-fun condSetEmpty!49633 () Bool)

(assert (=> setNonEmpty!49627 (= condSetEmpty!49633 (= setRest!49627 ((as const (Array Context!13066 Bool)) false)))))

(declare-fun setRes!49633 () Bool)

(assert (=> setNonEmpty!49627 (= tp!1938924 setRes!49633)))

(declare-fun setIsEmpty!49633 () Bool)

(assert (=> setIsEmpty!49633 setRes!49633))

(declare-fun setElem!49633 () Context!13066)

(declare-fun setNonEmpty!49633 () Bool)

(declare-fun e!4238540 () Bool)

(declare-fun tp!1938958 () Bool)

(assert (=> setNonEmpty!49633 (= setRes!49633 (and tp!1938958 (inv!86701 setElem!49633) e!4238540))))

(declare-fun setRest!49633 () (InoxSet Context!13066))

(assert (=> setNonEmpty!49633 (= setRest!49627 ((_ map or) (store ((as const (Array Context!13066 Bool)) false) setElem!49633 true) setRest!49633))))

(declare-fun b!7050580 () Bool)

(declare-fun tp!1938957 () Bool)

(assert (=> b!7050580 (= e!4238540 tp!1938957)))

(assert (= (and setNonEmpty!49627 condSetEmpty!49633) setIsEmpty!49633))

(assert (= (and setNonEmpty!49627 (not condSetEmpty!49633)) setNonEmpty!49633))

(assert (= setNonEmpty!49633 b!7050580))

(declare-fun m!7766362 () Bool)

(assert (=> setNonEmpty!49633 m!7766362))

(declare-fun b_lambda!268091 () Bool)

(assert (= b_lambda!268081 (or b!7050455 b_lambda!268091)))

(declare-fun bs!1875817 () Bool)

(declare-fun d!2202570 () Bool)

(assert (= bs!1875817 (and d!2202570 b!7050455)))

(assert (=> bs!1875817 (= (dynLambda!27553 lambda!418852 lt!2529340) (nullableContext!93 lt!2529340))))

(declare-fun m!7766364 () Bool)

(assert (=> bs!1875817 m!7766364))

(assert (=> d!2202522 d!2202570))

(declare-fun b_lambda!268093 () Bool)

(assert (= b_lambda!268089 (or b!7050458 b_lambda!268093)))

(declare-fun bs!1875818 () Bool)

(declare-fun d!2202572 () Bool)

(assert (= bs!1875818 (and d!2202572 b!7050458)))

(declare-fun lt!2529369 () Unit!161750)

(assert (=> bs!1875818 (= lt!2529369 (lemmaConcatPreservesForall!852 (exprs!7033 lt!2529368) (exprs!7033 ct2!306) lambda!418854))))

(assert (=> bs!1875818 (= (dynLambda!27555 lambda!418853 lt!2529368) (Context!13067 (++!15624 (exprs!7033 lt!2529368) (exprs!7033 ct2!306))))))

(declare-fun m!7766366 () Bool)

(assert (=> bs!1875818 m!7766366))

(declare-fun m!7766368 () Bool)

(assert (=> bs!1875818 m!7766368))

(assert (=> d!2202568 d!2202572))

(check-sat (not bs!1875818) (not d!2202500) (not d!2202540) (not b_lambda!268093) (not d!2202530) (not d!2202566) (not d!2202496) (not b!7050531) (not d!2202514) (not d!2202510) (not d!2202558) (not d!2202534) (not d!2202552) (not b!7050558) (not setNonEmpty!49633) (not b!7050525) (not d!2202548) (not d!2202560) (not d!2202528) (not b!7050488) (not b_lambda!268091) (not d!2202522) (not d!2202568) (not b!7050559) (not b!7050530) (not d!2202504) (not b!7050524) (not b!7050580) (not b!7050570) (not b!7050569) (not b!7050487) tp_is_empty!44299 (not b!7050575) (not bs!1875817) (not d!2202516))
(check-sat)
