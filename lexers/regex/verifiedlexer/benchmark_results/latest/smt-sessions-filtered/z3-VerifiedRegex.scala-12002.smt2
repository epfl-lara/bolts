; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672466 () Bool)

(assert start!672466)

(declare-fun b!6994199 () Bool)

(assert (=> b!6994199 true))

(declare-fun b!6994200 () Bool)

(assert (=> b!6994200 true))

(declare-fun b!6994175 () Bool)

(assert (=> b!6994175 true))

(declare-fun bs!1862760 () Bool)

(declare-fun b!6994180 () Bool)

(assert (= bs!1862760 (and b!6994180 b!6994199)))

(declare-fun lambda!403740 () Int)

(declare-fun lambda!403736 () Int)

(assert (=> bs!1862760 (not (= lambda!403740 lambda!403736))))

(declare-fun b!6994171 () Bool)

(declare-fun res!2852969 () Bool)

(declare-fun e!4204002 () Bool)

(assert (=> b!6994171 (=> res!2852969 e!4204002)))

(declare-datatypes ((C!34772 0))(
  ( (C!34773 (val!27088 Int)) )
))
(declare-datatypes ((List!67298 0))(
  ( (Nil!67174) (Cons!67174 (h!73622 C!34772) (t!381045 List!67298)) )
))
(declare-datatypes ((tuple2!67848 0))(
  ( (tuple2!67849 (_1!37227 List!67298) (_2!37227 List!67298)) )
))
(declare-fun lt!2491702 () tuple2!67848)

(declare-fun s!7408 () List!67298)

(declare-fun ++!15203 (List!67298 List!67298) List!67298)

(assert (=> b!6994171 (= res!2852969 (not (= (++!15203 (_1!37227 lt!2491702) (_2!37227 lt!2491702)) s!7408)))))

(declare-fun b!6994172 () Bool)

(declare-fun res!2852951 () Bool)

(declare-fun e!4204018 () Bool)

(assert (=> b!6994172 (=> res!2852951 e!4204018)))

(declare-datatypes ((Regex!17251 0))(
  ( (ElementMatch!17251 (c!1297582 C!34772)) (Concat!26096 (regOne!35014 Regex!17251) (regTwo!35014 Regex!17251)) (EmptyExpr!17251) (Star!17251 (reg!17580 Regex!17251)) (EmptyLang!17251) (Union!17251 (regOne!35015 Regex!17251) (regTwo!35015 Regex!17251)) )
))
(declare-datatypes ((List!67299 0))(
  ( (Nil!67175) (Cons!67175 (h!73623 Regex!17251) (t!381046 List!67299)) )
))
(declare-datatypes ((Context!12494 0))(
  ( (Context!12495 (exprs!6747 List!67299)) )
))
(declare-fun lt!2491664 () Context!12494)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2491666 () (InoxSet Context!12494))

(assert (=> b!6994172 (= res!2852951 (not (select lt!2491666 lt!2491664)))))

(declare-fun b!6994173 () Bool)

(declare-fun e!4204003 () Bool)

(declare-fun tp!1930367 () Bool)

(assert (=> b!6994173 (= e!4204003 tp!1930367)))

(declare-fun b!6994174 () Bool)

(declare-fun e!4204009 () Bool)

(declare-fun e!4204014 () Bool)

(assert (=> b!6994174 (= e!4204009 e!4204014)))

(declare-fun res!2852961 () Bool)

(assert (=> b!6994174 (=> res!2852961 e!4204014)))

(declare-fun lt!2491655 () (InoxSet Context!12494))

(declare-fun matchZipper!2791 ((InoxSet Context!12494) List!67298) Bool)

(assert (=> b!6994174 (= res!2852961 (not (matchZipper!2791 lt!2491655 (t!381045 s!7408))))))

(declare-fun lt!2491699 () List!67299)

(declare-fun ct2!306 () Context!12494)

(declare-fun lambda!403738 () Int)

(declare-datatypes ((Unit!161157 0))(
  ( (Unit!161158) )
))
(declare-fun lt!2491693 () Unit!161157)

(declare-fun lemmaConcatPreservesForall!587 (List!67299 List!67299 Int) Unit!161157)

(assert (=> b!6994174 (= lt!2491693 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun setIsEmpty!47955 () Bool)

(declare-fun setRes!47955 () Bool)

(assert (=> setIsEmpty!47955 setRes!47955))

(declare-fun setNonEmpty!47955 () Bool)

(declare-fun e!4204001 () Bool)

(declare-fun tp!1930368 () Bool)

(declare-fun setElem!47955 () Context!12494)

(declare-fun inv!85986 (Context!12494) Bool)

(assert (=> setNonEmpty!47955 (= setRes!47955 (and tp!1930368 (inv!85986 setElem!47955) e!4204001))))

(declare-fun z1!570 () (InoxSet Context!12494))

(declare-fun setRest!47955 () (InoxSet Context!12494))

(assert (=> setNonEmpty!47955 (= z1!570 ((_ map or) (store ((as const (Array Context!12494 Bool)) false) setElem!47955 true) setRest!47955))))

(declare-fun e!4204013 () Bool)

(declare-fun e!4204016 () Bool)

(assert (=> b!6994175 (= e!4204013 e!4204016)))

(declare-fun res!2852970 () Bool)

(assert (=> b!6994175 (=> res!2852970 e!4204016)))

(declare-fun lt!2491659 () (InoxSet Context!12494))

(declare-fun lt!2491697 () (InoxSet Context!12494))

(declare-fun derivationStepZipper!2731 ((InoxSet Context!12494) C!34772) (InoxSet Context!12494))

(assert (=> b!6994175 (= res!2852970 (not (= (derivationStepZipper!2731 lt!2491659 (h!73622 s!7408)) lt!2491697)))))

(declare-fun lt!2491674 () Context!12494)

(declare-fun lambda!403739 () Int)

(declare-fun flatMap!2237 ((InoxSet Context!12494) Int) (InoxSet Context!12494))

(declare-fun derivationStepZipperUp!1901 (Context!12494 C!34772) (InoxSet Context!12494))

(assert (=> b!6994175 (= (flatMap!2237 lt!2491659 lambda!403739) (derivationStepZipperUp!1901 lt!2491674 (h!73622 s!7408)))))

(declare-fun lt!2491653 () Unit!161157)

(declare-fun lemmaFlatMapOnSingletonSet!1752 ((InoxSet Context!12494) Context!12494 Int) Unit!161157)

(assert (=> b!6994175 (= lt!2491653 (lemmaFlatMapOnSingletonSet!1752 lt!2491659 lt!2491674 lambda!403739))))

(assert (=> b!6994175 (= lt!2491697 (derivationStepZipperUp!1901 lt!2491674 (h!73622 s!7408)))))

(declare-fun lt!2491669 () Unit!161157)

(declare-fun lt!2491675 () Context!12494)

(assert (=> b!6994175 (= lt!2491669 (lemmaConcatPreservesForall!587 (exprs!6747 lt!2491675) (exprs!6747 ct2!306) lambda!403738))))

(declare-fun res!2852953 () Bool)

(declare-fun e!4204015 () Bool)

(assert (=> start!672466 (=> (not res!2852953) (not e!4204015))))

(assert (=> start!672466 (= res!2852953 (matchZipper!2791 lt!2491666 s!7408))))

(declare-fun appendTo!372 ((InoxSet Context!12494) Context!12494) (InoxSet Context!12494))

(assert (=> start!672466 (= lt!2491666 (appendTo!372 z1!570 ct2!306))))

(assert (=> start!672466 e!4204015))

(declare-fun condSetEmpty!47955 () Bool)

(assert (=> start!672466 (= condSetEmpty!47955 (= z1!570 ((as const (Array Context!12494 Bool)) false)))))

(assert (=> start!672466 setRes!47955))

(assert (=> start!672466 (and (inv!85986 ct2!306) e!4204003)))

(declare-fun e!4204006 () Bool)

(assert (=> start!672466 e!4204006))

(declare-fun b!6994176 () Bool)

(declare-fun e!4204017 () Bool)

(assert (=> b!6994176 (= e!4204017 e!4204013)))

(declare-fun res!2852948 () Bool)

(assert (=> b!6994176 (=> res!2852948 e!4204013)))

(declare-fun lt!2491692 () (InoxSet Context!12494))

(assert (=> b!6994176 (= res!2852948 (not (= lt!2491659 lt!2491692)))))

(assert (=> b!6994176 (= lt!2491659 (store ((as const (Array Context!12494 Bool)) false) lt!2491674 true))))

(declare-fun lt!2491658 () Unit!161157)

(assert (=> b!6994176 (= lt!2491658 (lemmaConcatPreservesForall!587 (exprs!6747 lt!2491675) (exprs!6747 ct2!306) lambda!403738))))

(declare-fun b!6994177 () Bool)

(declare-fun res!2852949 () Bool)

(assert (=> b!6994177 (=> res!2852949 e!4204002)))

(declare-fun isEmpty!39205 (List!67298) Bool)

(assert (=> b!6994177 (= res!2852949 (not (isEmpty!39205 (_1!37227 lt!2491702))))))

(declare-fun b!6994178 () Bool)

(declare-fun tp!1930365 () Bool)

(assert (=> b!6994178 (= e!4204001 tp!1930365)))

(declare-fun b!6994179 () Bool)

(declare-fun res!2852973 () Bool)

(declare-fun e!4204005 () Bool)

(assert (=> b!6994179 (=> res!2852973 e!4204005)))

(declare-fun lt!2491694 () Context!12494)

(declare-fun lt!2491654 () Int)

(declare-datatypes ((List!67300 0))(
  ( (Nil!67176) (Cons!67176 (h!73624 Context!12494) (t!381047 List!67300)) )
))
(declare-fun zipperDepthTotal!472 (List!67300) Int)

(assert (=> b!6994179 (= res!2852973 (>= (zipperDepthTotal!472 (Cons!67176 lt!2491694 Nil!67176)) lt!2491654))))

(declare-fun res!2852958 () Bool)

(assert (=> b!6994180 (=> res!2852958 e!4204002)))

(declare-fun lt!2491701 () (InoxSet Context!12494))

(declare-fun exists!3053 ((InoxSet Context!12494) Int) Bool)

(assert (=> b!6994180 (= res!2852958 (not (exists!3053 lt!2491701 lambda!403740)))))

(declare-fun b!6994181 () Bool)

(declare-fun res!2852972 () Bool)

(assert (=> b!6994181 (=> (not res!2852972) (not e!4204015))))

(get-info :version)

(assert (=> b!6994181 (= res!2852972 ((_ is Cons!67174) s!7408))))

(declare-fun b!6994182 () Bool)

(declare-fun res!2852950 () Bool)

(assert (=> b!6994182 (=> res!2852950 e!4204016)))

(assert (=> b!6994182 (= res!2852950 (not ((_ is Cons!67175) (exprs!6747 lt!2491675))))))

(declare-fun b!6994183 () Bool)

(declare-fun e!4204012 () Bool)

(assert (=> b!6994183 (= e!4204002 e!4204012)))

(declare-fun res!2852959 () Bool)

(assert (=> b!6994183 (=> res!2852959 e!4204012)))

(declare-fun nullableContext!48 (Context!12494) Bool)

(assert (=> b!6994183 (= res!2852959 (not (nullableContext!48 lt!2491694)))))

(declare-fun lt!2491668 () Context!12494)

(declare-fun getWitness!1160 ((InoxSet Context!12494) Int) Context!12494)

(assert (=> b!6994183 (= lt!2491668 (getWitness!1160 lt!2491701 lambda!403740))))

(declare-fun b!6994184 () Bool)

(declare-fun res!2852952 () Bool)

(assert (=> b!6994184 (=> res!2852952 e!4204016)))

(declare-fun isEmpty!39206 (List!67299) Bool)

(assert (=> b!6994184 (= res!2852952 (isEmpty!39206 (exprs!6747 lt!2491675)))))

(declare-fun b!6994185 () Bool)

(declare-fun e!4204007 () Bool)

(assert (=> b!6994185 (= e!4204016 e!4204007)))

(declare-fun res!2852963 () Bool)

(assert (=> b!6994185 (=> res!2852963 e!4204007)))

(declare-fun nullable!7011 (Regex!17251) Bool)

(assert (=> b!6994185 (= res!2852963 (not (nullable!7011 (h!73623 (exprs!6747 lt!2491675)))))))

(assert (=> b!6994185 (= lt!2491694 (Context!12495 lt!2491699))))

(declare-fun tail!13275 (List!67299) List!67299)

(assert (=> b!6994185 (= lt!2491699 (tail!13275 (exprs!6747 lt!2491675)))))

(declare-fun b!6994186 () Bool)

(declare-fun e!4204010 () Bool)

(assert (=> b!6994186 (= e!4204010 (matchZipper!2791 lt!2491655 (t!381045 s!7408)))))

(declare-fun b!6994187 () Bool)

(declare-fun e!4204000 () Bool)

(declare-fun e!4204004 () Bool)

(assert (=> b!6994187 (= e!4204000 e!4204004)))

(declare-fun res!2852964 () Bool)

(assert (=> b!6994187 (=> res!2852964 e!4204004)))

(declare-fun lt!2491681 () (InoxSet Context!12494))

(assert (=> b!6994187 (= res!2852964 (not (matchZipper!2791 lt!2491681 s!7408)))))

(declare-fun lt!2491657 () Unit!161157)

(assert (=> b!6994187 (= lt!2491657 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun b!6994188 () Bool)

(assert (=> b!6994188 (= e!4204012 true)))

(assert (=> b!6994188 (exists!3053 lt!2491701 lambda!403740)))

(declare-fun lt!2491684 () Unit!161157)

(declare-fun lemmaContainsThenExists!81 ((InoxSet Context!12494) Context!12494 Int) Unit!161157)

(assert (=> b!6994188 (= lt!2491684 (lemmaContainsThenExists!81 lt!2491701 lt!2491694 lambda!403740))))

(declare-fun b!6994189 () Bool)

(declare-fun e!4204008 () Bool)

(assert (=> b!6994189 (= e!4204008 e!4204009)))

(declare-fun res!2852967 () Bool)

(assert (=> b!6994189 (=> res!2852967 e!4204009)))

(declare-fun e!4204011 () Bool)

(assert (=> b!6994189 (= res!2852967 e!4204011)))

(declare-fun res!2852974 () Bool)

(assert (=> b!6994189 (=> (not res!2852974) (not e!4204011))))

(declare-fun lt!2491685 () Bool)

(declare-fun lt!2491660 () Bool)

(assert (=> b!6994189 (= res!2852974 (not (= lt!2491685 lt!2491660)))))

(assert (=> b!6994189 (= lt!2491685 (matchZipper!2791 lt!2491697 (t!381045 s!7408)))))

(declare-fun lt!2491673 () Unit!161157)

(assert (=> b!6994189 (= lt!2491673 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491691 () (InoxSet Context!12494))

(assert (=> b!6994189 (= (matchZipper!2791 lt!2491691 (t!381045 s!7408)) e!4204010)))

(declare-fun res!2852966 () Bool)

(assert (=> b!6994189 (=> res!2852966 e!4204010)))

(assert (=> b!6994189 (= res!2852966 lt!2491660)))

(declare-fun lt!2491700 () (InoxSet Context!12494))

(assert (=> b!6994189 (= lt!2491660 (matchZipper!2791 lt!2491700 (t!381045 s!7408)))))

(declare-fun lt!2491689 () Unit!161157)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1424 ((InoxSet Context!12494) (InoxSet Context!12494) List!67298) Unit!161157)

(assert (=> b!6994189 (= lt!2491689 (lemmaZipperConcatMatchesSameAsBothZippers!1424 lt!2491700 lt!2491655 (t!381045 s!7408)))))

(declare-fun lt!2491688 () Unit!161157)

(assert (=> b!6994189 (= lt!2491688 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491687 () Unit!161157)

(assert (=> b!6994189 (= lt!2491687 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun b!6994190 () Bool)

(assert (=> b!6994190 (= e!4204014 e!4204000)))

(declare-fun res!2852955 () Bool)

(assert (=> b!6994190 (=> res!2852955 e!4204000)))

(assert (=> b!6994190 (= res!2852955 (not (= (derivationStepZipper!2731 lt!2491681 (h!73622 s!7408)) lt!2491655)))))

(declare-fun lt!2491662 () Unit!161157)

(assert (=> b!6994190 (= lt!2491662 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491705 () Unit!161157)

(assert (=> b!6994190 (= lt!2491705 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491670 () Context!12494)

(assert (=> b!6994190 (= (flatMap!2237 lt!2491681 lambda!403739) (derivationStepZipperUp!1901 lt!2491670 (h!73622 s!7408)))))

(declare-fun lt!2491672 () Unit!161157)

(assert (=> b!6994190 (= lt!2491672 (lemmaFlatMapOnSingletonSet!1752 lt!2491681 lt!2491670 lambda!403739))))

(assert (=> b!6994190 (= lt!2491681 (store ((as const (Array Context!12494 Bool)) false) lt!2491670 true))))

(declare-fun lt!2491695 () Unit!161157)

(assert (=> b!6994190 (= lt!2491695 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491656 () Unit!161157)

(assert (=> b!6994190 (= lt!2491656 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun b!6994191 () Bool)

(assert (=> b!6994191 (= e!4204005 e!4204002)))

(declare-fun res!2852968 () Bool)

(assert (=> b!6994191 (=> res!2852968 e!4204002)))

(assert (=> b!6994191 (= res!2852968 (not (matchZipper!2791 lt!2491701 (_1!37227 lt!2491702))))))

(declare-datatypes ((Option!16756 0))(
  ( (None!16755) (Some!16755 (v!53027 tuple2!67848)) )
))
(declare-fun lt!2491677 () Option!16756)

(declare-fun get!23546 (Option!16756) tuple2!67848)

(assert (=> b!6994191 (= lt!2491702 (get!23546 lt!2491677))))

(declare-fun isDefined!13457 (Option!16756) Bool)

(assert (=> b!6994191 (isDefined!13457 lt!2491677)))

(declare-fun lt!2491698 () (InoxSet Context!12494))

(declare-fun findConcatSeparationZippers!272 ((InoxSet Context!12494) (InoxSet Context!12494) List!67298 List!67298 List!67298) Option!16756)

(assert (=> b!6994191 (= lt!2491677 (findConcatSeparationZippers!272 lt!2491701 lt!2491698 Nil!67174 s!7408 s!7408))))

(assert (=> b!6994191 (= lt!2491698 (store ((as const (Array Context!12494 Bool)) false) ct2!306 true))))

(declare-fun lt!2491703 () Unit!161157)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!272 ((InoxSet Context!12494) Context!12494 List!67298) Unit!161157)

(assert (=> b!6994191 (= lt!2491703 (lemmaConcatZipperMatchesStringThenFindConcatDefined!272 lt!2491701 ct2!306 s!7408))))

(declare-fun b!6994192 () Bool)

(declare-fun res!2852965 () Bool)

(assert (=> b!6994192 (=> res!2852965 e!4204002)))

(assert (=> b!6994192 (= res!2852965 (not (matchZipper!2791 lt!2491698 (_2!37227 lt!2491702))))))

(declare-fun b!6994193 () Bool)

(declare-fun res!2852956 () Bool)

(assert (=> b!6994193 (=> res!2852956 e!4204012)))

(assert (=> b!6994193 (= res!2852956 (not (nullableContext!48 lt!2491675)))))

(declare-fun b!6994194 () Bool)

(declare-fun res!2852954 () Bool)

(assert (=> b!6994194 (=> res!2852954 e!4204009)))

(assert (=> b!6994194 (= res!2852954 (not lt!2491685))))

(declare-fun b!6994195 () Bool)

(declare-fun tp_is_empty!43727 () Bool)

(declare-fun tp!1930366 () Bool)

(assert (=> b!6994195 (= e!4204006 (and tp_is_empty!43727 tp!1930366))))

(declare-fun b!6994196 () Bool)

(assert (=> b!6994196 (= e!4204011 (not (matchZipper!2791 lt!2491655 (t!381045 s!7408))))))

(declare-fun lt!2491661 () Unit!161157)

(assert (=> b!6994196 (= lt!2491661 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun b!6994197 () Bool)

(assert (=> b!6994197 (= e!4204004 e!4204005)))

(declare-fun res!2852971 () Bool)

(assert (=> b!6994197 (=> res!2852971 e!4204005)))

(declare-fun lt!2491667 () Int)

(declare-fun contextDepthTotal!444 (Context!12494) Int)

(assert (=> b!6994197 (= res!2852971 (<= lt!2491667 (contextDepthTotal!444 lt!2491694)))))

(assert (=> b!6994197 (<= lt!2491667 lt!2491654)))

(declare-fun lt!2491679 () List!67300)

(assert (=> b!6994197 (= lt!2491654 (zipperDepthTotal!472 lt!2491679))))

(assert (=> b!6994197 (= lt!2491667 (contextDepthTotal!444 lt!2491675))))

(declare-fun lt!2491690 () Unit!161157)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!12 (List!67300 Context!12494) Unit!161157)

(assert (=> b!6994197 (= lt!2491690 (lemmaTotalDepthZipperLargerThanOfAnyContext!12 lt!2491679 lt!2491675))))

(declare-fun toList!10611 ((InoxSet Context!12494)) List!67300)

(assert (=> b!6994197 (= lt!2491679 (toList!10611 z1!570))))

(declare-fun lt!2491683 () Unit!161157)

(assert (=> b!6994197 (= lt!2491683 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491663 () Unit!161157)

(assert (=> b!6994197 (= lt!2491663 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491682 () Unit!161157)

(assert (=> b!6994197 (= lt!2491682 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(assert (=> b!6994197 (= (flatMap!2237 lt!2491701 lambda!403739) (derivationStepZipperUp!1901 lt!2491694 (h!73622 s!7408)))))

(declare-fun lt!2491671 () Unit!161157)

(assert (=> b!6994197 (= lt!2491671 (lemmaFlatMapOnSingletonSet!1752 lt!2491701 lt!2491694 lambda!403739))))

(declare-fun lambda!403737 () Int)

(declare-fun map!15523 ((InoxSet Context!12494) Int) (InoxSet Context!12494))

(declare-fun ++!15204 (List!67299 List!67299) List!67299)

(assert (=> b!6994197 (= (map!15523 lt!2491701 lambda!403737) (store ((as const (Array Context!12494 Bool)) false) (Context!12495 (++!15204 lt!2491699 (exprs!6747 ct2!306))) true))))

(declare-fun lt!2491696 () Unit!161157)

(assert (=> b!6994197 (= lt!2491696 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491680 () Unit!161157)

(declare-fun lemmaMapOnSingletonSet!316 ((InoxSet Context!12494) Context!12494 Int) Unit!161157)

(assert (=> b!6994197 (= lt!2491680 (lemmaMapOnSingletonSet!316 lt!2491701 lt!2491694 lambda!403737))))

(assert (=> b!6994197 (= lt!2491701 (store ((as const (Array Context!12494 Bool)) false) lt!2491694 true))))

(declare-fun b!6994198 () Bool)

(assert (=> b!6994198 (= e!4204007 e!4204008)))

(declare-fun res!2852962 () Bool)

(assert (=> b!6994198 (=> res!2852962 e!4204008)))

(assert (=> b!6994198 (= res!2852962 (not (= lt!2491697 lt!2491691)))))

(assert (=> b!6994198 (= lt!2491691 ((_ map or) lt!2491700 lt!2491655))))

(assert (=> b!6994198 (= lt!2491655 (derivationStepZipperUp!1901 lt!2491670 (h!73622 s!7408)))))

(declare-fun derivationStepZipperDown!1969 (Regex!17251 Context!12494 C!34772) (InoxSet Context!12494))

(assert (=> b!6994198 (= lt!2491700 (derivationStepZipperDown!1969 (h!73623 (exprs!6747 lt!2491675)) lt!2491670 (h!73622 s!7408)))))

(assert (=> b!6994198 (= lt!2491670 (Context!12495 (++!15204 lt!2491699 (exprs!6747 ct2!306))))))

(declare-fun lt!2491678 () Unit!161157)

(assert (=> b!6994198 (= lt!2491678 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(declare-fun lt!2491686 () Unit!161157)

(assert (=> b!6994198 (= lt!2491686 (lemmaConcatPreservesForall!587 lt!2491699 (exprs!6747 ct2!306) lambda!403738))))

(assert (=> b!6994199 (= e!4204015 (not e!4204018))))

(declare-fun res!2852957 () Bool)

(assert (=> b!6994199 (=> res!2852957 e!4204018)))

(assert (=> b!6994199 (= res!2852957 (not (matchZipper!2791 lt!2491692 s!7408)))))

(assert (=> b!6994199 (= lt!2491692 (store ((as const (Array Context!12494 Bool)) false) lt!2491664 true))))

(assert (=> b!6994199 (= lt!2491664 (getWitness!1160 lt!2491666 lambda!403736))))

(declare-fun lt!2491665 () List!67300)

(declare-fun exists!3054 (List!67300 Int) Bool)

(assert (=> b!6994199 (exists!3054 lt!2491665 lambda!403736)))

(declare-fun lt!2491676 () Unit!161157)

(declare-fun lemmaZipperMatchesExistsMatchingContext!220 (List!67300 List!67298) Unit!161157)

(assert (=> b!6994199 (= lt!2491676 (lemmaZipperMatchesExistsMatchingContext!220 lt!2491665 s!7408))))

(assert (=> b!6994199 (= lt!2491665 (toList!10611 lt!2491666))))

(assert (=> b!6994200 (= e!4204018 e!4204017)))

(declare-fun res!2852960 () Bool)

(assert (=> b!6994200 (=> res!2852960 e!4204017)))

(assert (=> b!6994200 (= res!2852960 (or (not (= lt!2491674 lt!2491664)) (not (select z1!570 lt!2491675))))))

(assert (=> b!6994200 (= lt!2491674 (Context!12495 (++!15204 (exprs!6747 lt!2491675) (exprs!6747 ct2!306))))))

(declare-fun lt!2491704 () Unit!161157)

(assert (=> b!6994200 (= lt!2491704 (lemmaConcatPreservesForall!587 (exprs!6747 lt!2491675) (exprs!6747 ct2!306) lambda!403738))))

(declare-fun mapPost2!106 ((InoxSet Context!12494) Int Context!12494) Context!12494)

(assert (=> b!6994200 (= lt!2491675 (mapPost2!106 z1!570 lambda!403737 lt!2491664))))

(assert (= (and start!672466 res!2852953) b!6994181))

(assert (= (and b!6994181 res!2852972) b!6994199))

(assert (= (and b!6994199 (not res!2852957)) b!6994172))

(assert (= (and b!6994172 (not res!2852951)) b!6994200))

(assert (= (and b!6994200 (not res!2852960)) b!6994176))

(assert (= (and b!6994176 (not res!2852948)) b!6994175))

(assert (= (and b!6994175 (not res!2852970)) b!6994182))

(assert (= (and b!6994182 (not res!2852950)) b!6994184))

(assert (= (and b!6994184 (not res!2852952)) b!6994185))

(assert (= (and b!6994185 (not res!2852963)) b!6994198))

(assert (= (and b!6994198 (not res!2852962)) b!6994189))

(assert (= (and b!6994189 (not res!2852966)) b!6994186))

(assert (= (and b!6994189 res!2852974) b!6994196))

(assert (= (and b!6994189 (not res!2852967)) b!6994194))

(assert (= (and b!6994194 (not res!2852954)) b!6994174))

(assert (= (and b!6994174 (not res!2852961)) b!6994190))

(assert (= (and b!6994190 (not res!2852955)) b!6994187))

(assert (= (and b!6994187 (not res!2852964)) b!6994197))

(assert (= (and b!6994197 (not res!2852971)) b!6994179))

(assert (= (and b!6994179 (not res!2852973)) b!6994191))

(assert (= (and b!6994191 (not res!2852968)) b!6994192))

(assert (= (and b!6994192 (not res!2852965)) b!6994171))

(assert (= (and b!6994171 (not res!2852969)) b!6994177))

(assert (= (and b!6994177 (not res!2852949)) b!6994180))

(assert (= (and b!6994180 (not res!2852958)) b!6994183))

(assert (= (and b!6994183 (not res!2852959)) b!6994193))

(assert (= (and b!6994193 (not res!2852956)) b!6994188))

(assert (= (and start!672466 condSetEmpty!47955) setIsEmpty!47955))

(assert (= (and start!672466 (not condSetEmpty!47955)) setNonEmpty!47955))

(assert (= setNonEmpty!47955 b!6994178))

(assert (= start!672466 b!6994173))

(assert (= (and start!672466 ((_ is Cons!67174) s!7408)) b!6994195))

(declare-fun m!7684744 () Bool)

(assert (=> b!6994177 m!7684744))

(declare-fun m!7684746 () Bool)

(assert (=> b!6994193 m!7684746))

(declare-fun m!7684748 () Bool)

(assert (=> b!6994171 m!7684748))

(declare-fun m!7684750 () Bool)

(assert (=> b!6994200 m!7684750))

(declare-fun m!7684752 () Bool)

(assert (=> b!6994200 m!7684752))

(declare-fun m!7684754 () Bool)

(assert (=> b!6994200 m!7684754))

(declare-fun m!7684756 () Bool)

(assert (=> b!6994200 m!7684756))

(declare-fun m!7684758 () Bool)

(assert (=> b!6994196 m!7684758))

(declare-fun m!7684760 () Bool)

(assert (=> b!6994196 m!7684760))

(declare-fun m!7684762 () Bool)

(assert (=> b!6994183 m!7684762))

(declare-fun m!7684764 () Bool)

(assert (=> b!6994183 m!7684764))

(declare-fun m!7684766 () Bool)

(assert (=> b!6994187 m!7684766))

(assert (=> b!6994187 m!7684760))

(declare-fun m!7684768 () Bool)

(assert (=> setNonEmpty!47955 m!7684768))

(assert (=> b!6994189 m!7684760))

(assert (=> b!6994189 m!7684760))

(declare-fun m!7684770 () Bool)

(assert (=> b!6994189 m!7684770))

(declare-fun m!7684772 () Bool)

(assert (=> b!6994189 m!7684772))

(declare-fun m!7684774 () Bool)

(assert (=> b!6994189 m!7684774))

(assert (=> b!6994189 m!7684760))

(declare-fun m!7684776 () Bool)

(assert (=> b!6994189 m!7684776))

(assert (=> b!6994186 m!7684758))

(declare-fun m!7684778 () Bool)

(assert (=> b!6994172 m!7684778))

(declare-fun m!7684780 () Bool)

(assert (=> b!6994180 m!7684780))

(declare-fun m!7684782 () Bool)

(assert (=> b!6994191 m!7684782))

(declare-fun m!7684784 () Bool)

(assert (=> b!6994191 m!7684784))

(declare-fun m!7684786 () Bool)

(assert (=> b!6994191 m!7684786))

(declare-fun m!7684788 () Bool)

(assert (=> b!6994191 m!7684788))

(declare-fun m!7684790 () Bool)

(assert (=> b!6994191 m!7684790))

(declare-fun m!7684792 () Bool)

(assert (=> b!6994191 m!7684792))

(declare-fun m!7684794 () Bool)

(assert (=> b!6994192 m!7684794))

(declare-fun m!7684796 () Bool)

(assert (=> b!6994199 m!7684796))

(declare-fun m!7684798 () Bool)

(assert (=> b!6994199 m!7684798))

(declare-fun m!7684800 () Bool)

(assert (=> b!6994199 m!7684800))

(declare-fun m!7684802 () Bool)

(assert (=> b!6994199 m!7684802))

(declare-fun m!7684804 () Bool)

(assert (=> b!6994199 m!7684804))

(declare-fun m!7684806 () Bool)

(assert (=> b!6994199 m!7684806))

(assert (=> b!6994198 m!7684760))

(declare-fun m!7684808 () Bool)

(assert (=> b!6994198 m!7684808))

(declare-fun m!7684810 () Bool)

(assert (=> b!6994198 m!7684810))

(assert (=> b!6994198 m!7684760))

(declare-fun m!7684812 () Bool)

(assert (=> b!6994198 m!7684812))

(declare-fun m!7684814 () Bool)

(assert (=> b!6994175 m!7684814))

(declare-fun m!7684816 () Bool)

(assert (=> b!6994175 m!7684816))

(declare-fun m!7684818 () Bool)

(assert (=> b!6994175 m!7684818))

(assert (=> b!6994175 m!7684754))

(declare-fun m!7684820 () Bool)

(assert (=> b!6994175 m!7684820))

(declare-fun m!7684822 () Bool)

(assert (=> b!6994190 m!7684822))

(assert (=> b!6994190 m!7684760))

(assert (=> b!6994190 m!7684760))

(declare-fun m!7684824 () Bool)

(assert (=> b!6994190 m!7684824))

(assert (=> b!6994190 m!7684760))

(assert (=> b!6994190 m!7684760))

(declare-fun m!7684826 () Bool)

(assert (=> b!6994190 m!7684826))

(declare-fun m!7684828 () Bool)

(assert (=> b!6994190 m!7684828))

(assert (=> b!6994190 m!7684812))

(declare-fun m!7684830 () Bool)

(assert (=> b!6994185 m!7684830))

(declare-fun m!7684832 () Bool)

(assert (=> b!6994185 m!7684832))

(declare-fun m!7684834 () Bool)

(assert (=> b!6994176 m!7684834))

(assert (=> b!6994176 m!7684754))

(assert (=> b!6994174 m!7684758))

(assert (=> b!6994174 m!7684760))

(assert (=> b!6994197 m!7684760))

(declare-fun m!7684836 () Bool)

(assert (=> b!6994197 m!7684836))

(declare-fun m!7684838 () Bool)

(assert (=> b!6994197 m!7684838))

(declare-fun m!7684840 () Bool)

(assert (=> b!6994197 m!7684840))

(declare-fun m!7684842 () Bool)

(assert (=> b!6994197 m!7684842))

(declare-fun m!7684844 () Bool)

(assert (=> b!6994197 m!7684844))

(assert (=> b!6994197 m!7684760))

(declare-fun m!7684846 () Bool)

(assert (=> b!6994197 m!7684846))

(declare-fun m!7684848 () Bool)

(assert (=> b!6994197 m!7684848))

(declare-fun m!7684850 () Bool)

(assert (=> b!6994197 m!7684850))

(assert (=> b!6994197 m!7684760))

(declare-fun m!7684852 () Bool)

(assert (=> b!6994197 m!7684852))

(declare-fun m!7684854 () Bool)

(assert (=> b!6994197 m!7684854))

(assert (=> b!6994197 m!7684810))

(declare-fun m!7684856 () Bool)

(assert (=> b!6994197 m!7684856))

(declare-fun m!7684858 () Bool)

(assert (=> b!6994197 m!7684858))

(assert (=> b!6994197 m!7684760))

(declare-fun m!7684860 () Bool)

(assert (=> b!6994179 m!7684860))

(declare-fun m!7684862 () Bool)

(assert (=> start!672466 m!7684862))

(declare-fun m!7684864 () Bool)

(assert (=> start!672466 m!7684864))

(declare-fun m!7684866 () Bool)

(assert (=> start!672466 m!7684866))

(assert (=> b!6994188 m!7684780))

(declare-fun m!7684868 () Bool)

(assert (=> b!6994188 m!7684868))

(declare-fun m!7684870 () Bool)

(assert (=> b!6994184 m!7684870))

(check-sat (not b!6994189) (not setNonEmpty!47955) (not b!6994178) (not b!6994171) (not b!6994175) (not b!6994177) (not b!6994186) (not b!6994193) (not b!6994180) (not b!6994174) (not b!6994179) (not b!6994187) (not b!6994197) (not b!6994195) (not start!672466) (not b!6994196) (not b!6994199) (not b!6994185) (not b!6994192) (not b!6994176) (not b!6994188) (not b!6994183) (not b!6994191) tp_is_empty!43727 (not b!6994198) (not b!6994173) (not b!6994184) (not b!6994190) (not b!6994200))
(check-sat)
