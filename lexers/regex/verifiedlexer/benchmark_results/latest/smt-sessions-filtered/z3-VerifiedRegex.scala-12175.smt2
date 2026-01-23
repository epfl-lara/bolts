; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!685260 () Bool)

(assert start!685260)

(declare-fun b!7061891 () Bool)

(assert (=> b!7061891 true))

(declare-fun b!7061898 () Bool)

(assert (=> b!7061898 true))

(declare-fun b!7061905 () Bool)

(assert (=> b!7061905 true))

(declare-fun bs!1879219 () Bool)

(declare-fun b!7061908 () Bool)

(assert (= bs!1879219 (and b!7061908 b!7061891)))

(declare-fun lambda!422316 () Int)

(declare-fun lambda!422312 () Int)

(assert (=> bs!1879219 (not (= lambda!422316 lambda!422312))))

(declare-fun b!7061888 () Bool)

(declare-fun e!4245529 () Bool)

(declare-fun e!4245530 () Bool)

(assert (=> b!7061888 (= e!4245529 e!4245530)))

(declare-fun res!2883208 () Bool)

(assert (=> b!7061888 (=> res!2883208 e!4245530)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35464 0))(
  ( (C!35465 (val!27434 Int)) )
))
(declare-datatypes ((Regex!17597 0))(
  ( (ElementMatch!17597 (c!1316332 C!35464)) (Concat!26442 (regOne!35706 Regex!17597) (regTwo!35706 Regex!17597)) (EmptyExpr!17597) (Star!17597 (reg!17926 Regex!17597)) (EmptyLang!17597) (Union!17597 (regOne!35707 Regex!17597) (regTwo!35707 Regex!17597)) )
))
(declare-datatypes ((List!68317 0))(
  ( (Nil!68193) (Cons!68193 (h!74641 Regex!17597) (t!382098 List!68317)) )
))
(declare-datatypes ((Context!13186 0))(
  ( (Context!13187 (exprs!7093 List!68317)) )
))
(declare-fun lt!2536679 () (InoxSet Context!13186))

(declare-datatypes ((List!68318 0))(
  ( (Nil!68194) (Cons!68194 (h!74642 C!35464) (t!382099 List!68318)) )
))
(declare-datatypes ((tuple2!68196 0))(
  ( (tuple2!68197 (_1!37401 List!68318) (_2!37401 List!68318)) )
))
(declare-fun lt!2536670 () tuple2!68196)

(declare-fun matchZipper!3137 ((InoxSet Context!13186) List!68318) Bool)

(assert (=> b!7061888 (= res!2883208 (not (matchZipper!3137 lt!2536679 (_1!37401 lt!2536670))))))

(declare-fun exists!3608 ((InoxSet Context!13186) Int) Bool)

(assert (=> b!7061888 (exists!3608 lt!2536679 lambda!422316)))

(declare-datatypes ((Unit!161870 0))(
  ( (Unit!161871) )
))
(declare-fun lt!2536702 () Unit!161870)

(declare-fun lt!2536705 () Context!13186)

(declare-fun lemmaContainsThenExists!135 ((InoxSet Context!13186) Context!13186 Int) Unit!161870)

(assert (=> b!7061888 (= lt!2536702 (lemmaContainsThenExists!135 lt!2536679 lt!2536705 lambda!422316))))

(assert (=> b!7061888 (= lt!2536679 (store ((as const (Array Context!13186 Bool)) false) lt!2536705 true))))

(declare-fun lt!2536703 () (InoxSet Context!13186))

(assert (=> b!7061888 (exists!3608 lt!2536703 lambda!422316)))

(declare-fun lt!2536689 () Unit!161870)

(declare-fun lt!2536668 () Context!13186)

(assert (=> b!7061888 (= lt!2536689 (lemmaContainsThenExists!135 lt!2536703 lt!2536668 lambda!422316))))

(declare-fun b!7061889 () Bool)

(declare-fun e!4245525 () Bool)

(declare-fun e!4245521 () Bool)

(assert (=> b!7061889 (= e!4245525 e!4245521)))

(declare-fun res!2883199 () Bool)

(assert (=> b!7061889 (=> res!2883199 e!4245521)))

(declare-fun lt!2536683 () (InoxSet Context!13186))

(declare-fun lt!2536669 () (InoxSet Context!13186))

(assert (=> b!7061889 (= res!2883199 (not (= lt!2536683 lt!2536669)))))

(declare-fun lt!2536674 () (InoxSet Context!13186))

(declare-fun lt!2536697 () (InoxSet Context!13186))

(assert (=> b!7061889 (= lt!2536669 ((_ map or) lt!2536674 lt!2536697))))

(declare-fun lt!2536672 () Context!13186)

(declare-fun s!7408 () List!68318)

(declare-fun derivationStepZipperUp!2181 (Context!13186 C!35464) (InoxSet Context!13186))

(assert (=> b!7061889 (= lt!2536697 (derivationStepZipperUp!2181 lt!2536672 (h!74642 s!7408)))))

(declare-fun derivationStepZipperDown!2231 (Regex!17597 Context!13186 C!35464) (InoxSet Context!13186))

(assert (=> b!7061889 (= lt!2536674 (derivationStepZipperDown!2231 (h!74641 (exprs!7093 lt!2536705)) lt!2536672 (h!74642 s!7408)))))

(declare-fun lt!2536687 () List!68317)

(declare-fun ct2!306 () Context!13186)

(declare-fun ++!15691 (List!68317 List!68317) List!68317)

(assert (=> b!7061889 (= lt!2536672 (Context!13187 (++!15691 lt!2536687 (exprs!7093 ct2!306))))))

(declare-fun lambda!422314 () Int)

(declare-fun lt!2536655 () Unit!161870)

(declare-fun lemmaConcatPreservesForall!908 (List!68317 List!68317 Int) Unit!161870)

(assert (=> b!7061889 (= lt!2536655 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lt!2536660 () Unit!161870)

(assert (=> b!7061889 (= lt!2536660 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun b!7061890 () Bool)

(declare-fun res!2883204 () Bool)

(declare-fun e!4245523 () Bool)

(assert (=> b!7061890 (=> res!2883204 e!4245523)))

(declare-fun lt!2536678 () Int)

(declare-datatypes ((List!68319 0))(
  ( (Nil!68195) (Cons!68195 (h!74643 Context!13186) (t!382100 List!68319)) )
))
(declare-fun zipperDepthTotal!562 (List!68319) Int)

(assert (=> b!7061890 (= res!2883204 (>= (zipperDepthTotal!562 (Cons!68195 lt!2536668 Nil!68195)) lt!2536678))))

(declare-fun res!2883217 () Bool)

(declare-fun e!4245520 () Bool)

(assert (=> start!685260 (=> (not res!2883217) (not e!4245520))))

(declare-fun lt!2536662 () (InoxSet Context!13186))

(assert (=> start!685260 (= res!2883217 (matchZipper!3137 lt!2536662 s!7408))))

(declare-fun z1!570 () (InoxSet Context!13186))

(declare-fun appendTo!718 ((InoxSet Context!13186) Context!13186) (InoxSet Context!13186))

(assert (=> start!685260 (= lt!2536662 (appendTo!718 z1!570 ct2!306))))

(assert (=> start!685260 e!4245520))

(declare-fun condSetEmpty!50019 () Bool)

(assert (=> start!685260 (= condSetEmpty!50019 (= z1!570 ((as const (Array Context!13186 Bool)) false)))))

(declare-fun setRes!50019 () Bool)

(assert (=> start!685260 setRes!50019))

(declare-fun e!4245527 () Bool)

(declare-fun inv!86851 (Context!13186) Bool)

(assert (=> start!685260 (and (inv!86851 ct2!306) e!4245527)))

(declare-fun e!4245524 () Bool)

(assert (=> start!685260 e!4245524))

(declare-fun e!4245532 () Bool)

(assert (=> b!7061891 (= e!4245520 (not e!4245532))))

(declare-fun res!2883218 () Bool)

(assert (=> b!7061891 (=> res!2883218 e!4245532)))

(declare-fun lt!2536696 () (InoxSet Context!13186))

(assert (=> b!7061891 (= res!2883218 (not (matchZipper!3137 lt!2536696 s!7408)))))

(declare-fun lt!2536664 () Context!13186)

(assert (=> b!7061891 (= lt!2536696 (store ((as const (Array Context!13186 Bool)) false) lt!2536664 true))))

(declare-fun getWitness!1674 ((InoxSet Context!13186) Int) Context!13186)

(assert (=> b!7061891 (= lt!2536664 (getWitness!1674 lt!2536662 lambda!422312))))

(declare-fun lt!2536701 () List!68319)

(declare-fun exists!3609 (List!68319 Int) Bool)

(assert (=> b!7061891 (exists!3609 lt!2536701 lambda!422312)))

(declare-fun lt!2536693 () Unit!161870)

(declare-fun lemmaZipperMatchesExistsMatchingContext!518 (List!68319 List!68318) Unit!161870)

(assert (=> b!7061891 (= lt!2536693 (lemmaZipperMatchesExistsMatchingContext!518 lt!2536701 s!7408))))

(declare-fun toList!10938 ((InoxSet Context!13186)) List!68319)

(assert (=> b!7061891 (= lt!2536701 (toList!10938 lt!2536662))))

(declare-fun b!7061892 () Bool)

(declare-fun res!2883214 () Bool)

(assert (=> b!7061892 (=> (not res!2883214) (not e!4245520))))

(get-info :version)

(assert (=> b!7061892 (= res!2883214 ((_ is Cons!68194) s!7408))))

(declare-fun b!7061893 () Bool)

(declare-fun e!4245517 () Bool)

(declare-fun tp!1941151 () Bool)

(assert (=> b!7061893 (= e!4245517 tp!1941151)))

(declare-fun b!7061894 () Bool)

(declare-fun res!2883210 () Bool)

(declare-fun e!4245526 () Bool)

(assert (=> b!7061894 (=> res!2883210 e!4245526)))

(declare-fun isEmpty!39781 (List!68318) Bool)

(assert (=> b!7061894 (= res!2883210 (not (isEmpty!39781 (_1!37401 lt!2536670))))))

(declare-fun b!7061895 () Bool)

(declare-fun e!4245531 () Bool)

(assert (=> b!7061895 (= e!4245531 e!4245525)))

(declare-fun res!2883215 () Bool)

(assert (=> b!7061895 (=> res!2883215 e!4245525)))

(declare-fun nullable!7280 (Regex!17597) Bool)

(assert (=> b!7061895 (= res!2883215 (not (nullable!7280 (h!74641 (exprs!7093 lt!2536705)))))))

(assert (=> b!7061895 (= lt!2536668 (Context!13187 lt!2536687))))

(declare-fun tail!13743 (List!68317) List!68317)

(assert (=> b!7061895 (= lt!2536687 (tail!13743 (exprs!7093 lt!2536705)))))

(declare-fun b!7061896 () Bool)

(assert (=> b!7061896 (= e!4245523 e!4245526)))

(declare-fun res!2883200 () Bool)

(assert (=> b!7061896 (=> res!2883200 e!4245526)))

(assert (=> b!7061896 (= res!2883200 (not (matchZipper!3137 lt!2536703 (_1!37401 lt!2536670))))))

(declare-datatypes ((Option!16930 0))(
  ( (None!16929) (Some!16929 (v!53223 tuple2!68196)) )
))
(declare-fun lt!2536681 () Option!16930)

(declare-fun get!23879 (Option!16930) tuple2!68196)

(assert (=> b!7061896 (= lt!2536670 (get!23879 lt!2536681))))

(declare-fun isDefined!13631 (Option!16930) Bool)

(assert (=> b!7061896 (isDefined!13631 lt!2536681)))

(declare-fun lt!2536684 () (InoxSet Context!13186))

(declare-fun findConcatSeparationZippers!446 ((InoxSet Context!13186) (InoxSet Context!13186) List!68318 List!68318 List!68318) Option!16930)

(assert (=> b!7061896 (= lt!2536681 (findConcatSeparationZippers!446 lt!2536703 lt!2536684 Nil!68194 s!7408 s!7408))))

(assert (=> b!7061896 (= lt!2536684 (store ((as const (Array Context!13186 Bool)) false) ct2!306 true))))

(declare-fun lt!2536667 () Unit!161870)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!434 ((InoxSet Context!13186) Context!13186 List!68318) Unit!161870)

(assert (=> b!7061896 (= lt!2536667 (lemmaConcatZipperMatchesStringThenFindConcatDefined!434 lt!2536703 ct2!306 s!7408))))

(declare-fun b!7061897 () Bool)

(declare-fun res!2883203 () Bool)

(assert (=> b!7061897 (=> res!2883203 e!4245526)))

(declare-fun ++!15692 (List!68318 List!68318) List!68318)

(assert (=> b!7061897 (= res!2883203 (not (= (++!15692 (_1!37401 lt!2536670) (_2!37401 lt!2536670)) s!7408)))))

(declare-fun e!4245516 () Bool)

(assert (=> b!7061898 (= e!4245532 e!4245516)))

(declare-fun res!2883198 () Bool)

(assert (=> b!7061898 (=> res!2883198 e!4245516)))

(declare-fun lt!2536654 () Context!13186)

(assert (=> b!7061898 (= res!2883198 (or (not (= lt!2536654 lt!2536664)) (not (select z1!570 lt!2536705))))))

(assert (=> b!7061898 (= lt!2536654 (Context!13187 (++!15691 (exprs!7093 lt!2536705) (exprs!7093 ct2!306))))))

(declare-fun lt!2536699 () Unit!161870)

(assert (=> b!7061898 (= lt!2536699 (lemmaConcatPreservesForall!908 (exprs!7093 lt!2536705) (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lambda!422313 () Int)

(declare-fun mapPost2!426 ((InoxSet Context!13186) Int Context!13186) Context!13186)

(assert (=> b!7061898 (= lt!2536705 (mapPost2!426 z1!570 lambda!422313 lt!2536664))))

(declare-fun b!7061899 () Bool)

(declare-fun res!2883205 () Bool)

(assert (=> b!7061899 (=> res!2883205 e!4245526)))

(assert (=> b!7061899 (= res!2883205 (not (matchZipper!3137 lt!2536684 (_2!37401 lt!2536670))))))

(declare-fun setIsEmpty!50019 () Bool)

(assert (=> setIsEmpty!50019 setRes!50019))

(declare-fun b!7061900 () Bool)

(declare-fun res!2883201 () Bool)

(declare-fun e!4245518 () Bool)

(assert (=> b!7061900 (=> res!2883201 e!4245518)))

(declare-fun lt!2536665 () Bool)

(assert (=> b!7061900 (= res!2883201 (not lt!2536665))))

(declare-fun b!7061901 () Bool)

(declare-fun res!2883216 () Bool)

(assert (=> b!7061901 (=> res!2883216 e!4245531)))

(declare-fun isEmpty!39782 (List!68317) Bool)

(assert (=> b!7061901 (= res!2883216 (isEmpty!39782 (exprs!7093 lt!2536705)))))

(declare-fun b!7061902 () Bool)

(declare-fun e!4245514 () Bool)

(assert (=> b!7061902 (= e!4245514 (matchZipper!3137 lt!2536697 (t!382099 s!7408)))))

(declare-fun b!7061903 () Bool)

(declare-fun e!4245513 () Bool)

(declare-fun e!4245519 () Bool)

(assert (=> b!7061903 (= e!4245513 e!4245519)))

(declare-fun res!2883202 () Bool)

(assert (=> b!7061903 (=> res!2883202 e!4245519)))

(declare-fun lt!2536651 () (InoxSet Context!13186))

(declare-fun derivationStepZipper!3047 ((InoxSet Context!13186) C!35464) (InoxSet Context!13186))

(assert (=> b!7061903 (= res!2883202 (not (= (derivationStepZipper!3047 lt!2536651 (h!74642 s!7408)) lt!2536697)))))

(declare-fun lt!2536694 () Unit!161870)

(assert (=> b!7061903 (= lt!2536694 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lt!2536691 () Unit!161870)

(assert (=> b!7061903 (= lt!2536691 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lambda!422315 () Int)

(declare-fun flatMap!2523 ((InoxSet Context!13186) Int) (InoxSet Context!13186))

(assert (=> b!7061903 (= (flatMap!2523 lt!2536651 lambda!422315) (derivationStepZipperUp!2181 lt!2536672 (h!74642 s!7408)))))

(declare-fun lt!2536656 () Unit!161870)

(declare-fun lemmaFlatMapOnSingletonSet!2032 ((InoxSet Context!13186) Context!13186 Int) Unit!161870)

(assert (=> b!7061903 (= lt!2536656 (lemmaFlatMapOnSingletonSet!2032 lt!2536651 lt!2536672 lambda!422315))))

(assert (=> b!7061903 (= lt!2536651 (store ((as const (Array Context!13186 Bool)) false) lt!2536672 true))))

(declare-fun lt!2536686 () Unit!161870)

(assert (=> b!7061903 (= lt!2536686 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lt!2536663 () Unit!161870)

(assert (=> b!7061903 (= lt!2536663 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun b!7061904 () Bool)

(declare-fun e!4245515 () Bool)

(assert (=> b!7061904 (= e!4245515 e!4245523)))

(declare-fun res!2883212 () Bool)

(assert (=> b!7061904 (=> res!2883212 e!4245523)))

(declare-fun lt!2536675 () Int)

(declare-fun contextDepthTotal!533 (Context!13186) Int)

(assert (=> b!7061904 (= res!2883212 (<= lt!2536675 (contextDepthTotal!533 lt!2536668)))))

(assert (=> b!7061904 (<= lt!2536675 lt!2536678)))

(declare-fun lt!2536652 () List!68319)

(assert (=> b!7061904 (= lt!2536678 (zipperDepthTotal!562 lt!2536652))))

(assert (=> b!7061904 (= lt!2536675 (contextDepthTotal!533 lt!2536705))))

(declare-fun lt!2536659 () Unit!161870)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!100 (List!68319 Context!13186) Unit!161870)

(assert (=> b!7061904 (= lt!2536659 (lemmaTotalDepthZipperLargerThanOfAnyContext!100 lt!2536652 lt!2536705))))

(assert (=> b!7061904 (= lt!2536652 (toList!10938 z1!570))))

(declare-fun lt!2536704 () Unit!161870)

(assert (=> b!7061904 (= lt!2536704 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lt!2536685 () Unit!161870)

(assert (=> b!7061904 (= lt!2536685 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lt!2536657 () Unit!161870)

(assert (=> b!7061904 (= lt!2536657 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(assert (=> b!7061904 (= (flatMap!2523 lt!2536703 lambda!422315) (derivationStepZipperUp!2181 lt!2536668 (h!74642 s!7408)))))

(declare-fun lt!2536692 () Unit!161870)

(assert (=> b!7061904 (= lt!2536692 (lemmaFlatMapOnSingletonSet!2032 lt!2536703 lt!2536668 lambda!422315))))

(declare-fun map!15928 ((InoxSet Context!13186) Int) (InoxSet Context!13186))

(assert (=> b!7061904 (= (map!15928 lt!2536703 lambda!422313) (store ((as const (Array Context!13186 Bool)) false) (Context!13187 (++!15691 lt!2536687 (exprs!7093 ct2!306))) true))))

(declare-fun lt!2536653 () Unit!161870)

(assert (=> b!7061904 (= lt!2536653 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lt!2536658 () Unit!161870)

(declare-fun lemmaMapOnSingletonSet!414 ((InoxSet Context!13186) Context!13186 Int) Unit!161870)

(assert (=> b!7061904 (= lt!2536658 (lemmaMapOnSingletonSet!414 lt!2536703 lt!2536668 lambda!422313))))

(assert (=> b!7061904 (= lt!2536703 (store ((as const (Array Context!13186 Bool)) false) lt!2536668 true))))

(declare-fun e!4245528 () Bool)

(assert (=> b!7061905 (= e!4245528 e!4245531)))

(declare-fun res!2883209 () Bool)

(assert (=> b!7061905 (=> res!2883209 e!4245531)))

(declare-fun lt!2536677 () (InoxSet Context!13186))

(assert (=> b!7061905 (= res!2883209 (not (= (derivationStepZipper!3047 lt!2536677 (h!74642 s!7408)) lt!2536683)))))

(assert (=> b!7061905 (= (flatMap!2523 lt!2536677 lambda!422315) (derivationStepZipperUp!2181 lt!2536654 (h!74642 s!7408)))))

(declare-fun lt!2536650 () Unit!161870)

(assert (=> b!7061905 (= lt!2536650 (lemmaFlatMapOnSingletonSet!2032 lt!2536677 lt!2536654 lambda!422315))))

(assert (=> b!7061905 (= lt!2536683 (derivationStepZipperUp!2181 lt!2536654 (h!74642 s!7408)))))

(declare-fun lt!2536690 () Unit!161870)

(assert (=> b!7061905 (= lt!2536690 (lemmaConcatPreservesForall!908 (exprs!7093 lt!2536705) (exprs!7093 ct2!306) lambda!422314))))

(declare-fun b!7061906 () Bool)

(assert (=> b!7061906 (= e!4245519 e!4245515)))

(declare-fun res!2883213 () Bool)

(assert (=> b!7061906 (=> res!2883213 e!4245515)))

(assert (=> b!7061906 (= res!2883213 (not (matchZipper!3137 lt!2536651 s!7408)))))

(declare-fun lt!2536688 () Unit!161870)

(assert (=> b!7061906 (= lt!2536688 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun b!7061907 () Bool)

(declare-fun res!2883221 () Bool)

(assert (=> b!7061907 (=> res!2883221 e!4245531)))

(assert (=> b!7061907 (= res!2883221 (not ((_ is Cons!68193) (exprs!7093 lt!2536705))))))

(declare-fun res!2883211 () Bool)

(assert (=> b!7061908 (=> res!2883211 e!4245526)))

(assert (=> b!7061908 (= res!2883211 (not (exists!3608 lt!2536703 lambda!422316)))))

(declare-fun b!7061909 () Bool)

(assert (=> b!7061909 (= e!4245521 e!4245518)))

(declare-fun res!2883196 () Bool)

(assert (=> b!7061909 (=> res!2883196 e!4245518)))

(declare-fun e!4245522 () Bool)

(assert (=> b!7061909 (= res!2883196 e!4245522)))

(declare-fun res!2883197 () Bool)

(assert (=> b!7061909 (=> (not res!2883197) (not e!4245522))))

(declare-fun lt!2536666 () Bool)

(assert (=> b!7061909 (= res!2883197 (not (= lt!2536665 lt!2536666)))))

(assert (=> b!7061909 (= lt!2536665 (matchZipper!3137 lt!2536683 (t!382099 s!7408)))))

(declare-fun lt!2536673 () Unit!161870)

(assert (=> b!7061909 (= lt!2536673 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(assert (=> b!7061909 (= (matchZipper!3137 lt!2536669 (t!382099 s!7408)) e!4245514)))

(declare-fun res!2883219 () Bool)

(assert (=> b!7061909 (=> res!2883219 e!4245514)))

(assert (=> b!7061909 (= res!2883219 lt!2536666)))

(assert (=> b!7061909 (= lt!2536666 (matchZipper!3137 lt!2536674 (t!382099 s!7408)))))

(declare-fun lt!2536698 () Unit!161870)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1610 ((InoxSet Context!13186) (InoxSet Context!13186) List!68318) Unit!161870)

(assert (=> b!7061909 (= lt!2536698 (lemmaZipperConcatMatchesSameAsBothZippers!1610 lt!2536674 lt!2536697 (t!382099 s!7408)))))

(declare-fun lt!2536676 () Unit!161870)

(assert (=> b!7061909 (= lt!2536676 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun lt!2536680 () Unit!161870)

(assert (=> b!7061909 (= lt!2536680 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun setElem!50019 () Context!13186)

(declare-fun setNonEmpty!50019 () Bool)

(declare-fun tp!1941152 () Bool)

(assert (=> setNonEmpty!50019 (= setRes!50019 (and tp!1941152 (inv!86851 setElem!50019) e!4245517))))

(declare-fun setRest!50019 () (InoxSet Context!13186))

(assert (=> setNonEmpty!50019 (= z1!570 ((_ map or) (store ((as const (Array Context!13186 Bool)) false) setElem!50019 true) setRest!50019))))

(declare-fun b!7061910 () Bool)

(assert (=> b!7061910 (= e!4245516 e!4245528)))

(declare-fun res!2883195 () Bool)

(assert (=> b!7061910 (=> res!2883195 e!4245528)))

(assert (=> b!7061910 (= res!2883195 (not (= lt!2536677 lt!2536696)))))

(assert (=> b!7061910 (= lt!2536677 (store ((as const (Array Context!13186 Bool)) false) lt!2536654 true))))

(declare-fun lt!2536671 () Unit!161870)

(assert (=> b!7061910 (= lt!2536671 (lemmaConcatPreservesForall!908 (exprs!7093 lt!2536705) (exprs!7093 ct2!306) lambda!422314))))

(declare-fun b!7061911 () Bool)

(assert (=> b!7061911 (= e!4245530 true)))

(assert (=> b!7061911 (isDefined!13631 (findConcatSeparationZippers!446 lt!2536679 lt!2536684 Nil!68194 s!7408 s!7408))))

(declare-fun lt!2536695 () Unit!161870)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!50 ((InoxSet Context!13186) (InoxSet Context!13186) List!68318 List!68318 List!68318 List!68318 List!68318) Unit!161870)

(assert (=> b!7061911 (= lt!2536695 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!50 lt!2536679 lt!2536684 (_1!37401 lt!2536670) (_2!37401 lt!2536670) s!7408 Nil!68194 s!7408))))

(declare-fun b!7061912 () Bool)

(assert (=> b!7061912 (= e!4245518 e!4245513)))

(declare-fun res!2883220 () Bool)

(assert (=> b!7061912 (=> res!2883220 e!4245513)))

(assert (=> b!7061912 (= res!2883220 (not (matchZipper!3137 lt!2536697 (t!382099 s!7408))))))

(declare-fun lt!2536661 () Unit!161870)

(assert (=> b!7061912 (= lt!2536661 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun b!7061913 () Bool)

(assert (=> b!7061913 (= e!4245522 (not (matchZipper!3137 lt!2536697 (t!382099 s!7408))))))

(declare-fun lt!2536682 () Unit!161870)

(assert (=> b!7061913 (= lt!2536682 (lemmaConcatPreservesForall!908 lt!2536687 (exprs!7093 ct2!306) lambda!422314))))

(declare-fun b!7061914 () Bool)

(declare-fun res!2883222 () Bool)

(assert (=> b!7061914 (=> res!2883222 e!4245529)))

(declare-fun nullableContext!109 (Context!13186) Bool)

(assert (=> b!7061914 (= res!2883222 (not (nullableContext!109 lt!2536705)))))

(declare-fun b!7061915 () Bool)

(declare-fun tp!1941153 () Bool)

(assert (=> b!7061915 (= e!4245527 tp!1941153)))

(declare-fun b!7061916 () Bool)

(declare-fun res!2883207 () Bool)

(assert (=> b!7061916 (=> res!2883207 e!4245532)))

(assert (=> b!7061916 (= res!2883207 (not (select lt!2536662 lt!2536664)))))

(declare-fun b!7061917 () Bool)

(assert (=> b!7061917 (= e!4245526 e!4245529)))

(declare-fun res!2883206 () Bool)

(assert (=> b!7061917 (=> res!2883206 e!4245529)))

(assert (=> b!7061917 (= res!2883206 (not (nullableContext!109 lt!2536668)))))

(declare-fun lt!2536700 () Context!13186)

(assert (=> b!7061917 (= lt!2536700 (getWitness!1674 lt!2536703 lambda!422316))))

(declare-fun b!7061918 () Bool)

(declare-fun tp_is_empty!44419 () Bool)

(declare-fun tp!1941154 () Bool)

(assert (=> b!7061918 (= e!4245524 (and tp_is_empty!44419 tp!1941154))))

(assert (= (and start!685260 res!2883217) b!7061892))

(assert (= (and b!7061892 res!2883214) b!7061891))

(assert (= (and b!7061891 (not res!2883218)) b!7061916))

(assert (= (and b!7061916 (not res!2883207)) b!7061898))

(assert (= (and b!7061898 (not res!2883198)) b!7061910))

(assert (= (and b!7061910 (not res!2883195)) b!7061905))

(assert (= (and b!7061905 (not res!2883209)) b!7061907))

(assert (= (and b!7061907 (not res!2883221)) b!7061901))

(assert (= (and b!7061901 (not res!2883216)) b!7061895))

(assert (= (and b!7061895 (not res!2883215)) b!7061889))

(assert (= (and b!7061889 (not res!2883199)) b!7061909))

(assert (= (and b!7061909 (not res!2883219)) b!7061902))

(assert (= (and b!7061909 res!2883197) b!7061913))

(assert (= (and b!7061909 (not res!2883196)) b!7061900))

(assert (= (and b!7061900 (not res!2883201)) b!7061912))

(assert (= (and b!7061912 (not res!2883220)) b!7061903))

(assert (= (and b!7061903 (not res!2883202)) b!7061906))

(assert (= (and b!7061906 (not res!2883213)) b!7061904))

(assert (= (and b!7061904 (not res!2883212)) b!7061890))

(assert (= (and b!7061890 (not res!2883204)) b!7061896))

(assert (= (and b!7061896 (not res!2883200)) b!7061899))

(assert (= (and b!7061899 (not res!2883205)) b!7061897))

(assert (= (and b!7061897 (not res!2883203)) b!7061894))

(assert (= (and b!7061894 (not res!2883210)) b!7061908))

(assert (= (and b!7061908 (not res!2883211)) b!7061917))

(assert (= (and b!7061917 (not res!2883206)) b!7061914))

(assert (= (and b!7061914 (not res!2883222)) b!7061888))

(assert (= (and b!7061888 (not res!2883208)) b!7061911))

(assert (= (and start!685260 condSetEmpty!50019) setIsEmpty!50019))

(assert (= (and start!685260 (not condSetEmpty!50019)) setNonEmpty!50019))

(assert (= setNonEmpty!50019 b!7061893))

(assert (= start!685260 b!7061915))

(assert (= (and start!685260 ((_ is Cons!68194) s!7408)) b!7061918))

(declare-fun m!7782600 () Bool)

(assert (=> b!7061896 m!7782600))

(declare-fun m!7782602 () Bool)

(assert (=> b!7061896 m!7782602))

(declare-fun m!7782604 () Bool)

(assert (=> b!7061896 m!7782604))

(declare-fun m!7782606 () Bool)

(assert (=> b!7061896 m!7782606))

(declare-fun m!7782608 () Bool)

(assert (=> b!7061896 m!7782608))

(declare-fun m!7782610 () Bool)

(assert (=> b!7061896 m!7782610))

(declare-fun m!7782612 () Bool)

(assert (=> b!7061908 m!7782612))

(declare-fun m!7782614 () Bool)

(assert (=> start!685260 m!7782614))

(declare-fun m!7782616 () Bool)

(assert (=> start!685260 m!7782616))

(declare-fun m!7782618 () Bool)

(assert (=> start!685260 m!7782618))

(declare-fun m!7782620 () Bool)

(assert (=> b!7061902 m!7782620))

(declare-fun m!7782622 () Bool)

(assert (=> b!7061903 m!7782622))

(declare-fun m!7782624 () Bool)

(assert (=> b!7061903 m!7782624))

(assert (=> b!7061903 m!7782622))

(declare-fun m!7782626 () Bool)

(assert (=> b!7061903 m!7782626))

(assert (=> b!7061903 m!7782622))

(declare-fun m!7782628 () Bool)

(assert (=> b!7061903 m!7782628))

(declare-fun m!7782630 () Bool)

(assert (=> b!7061903 m!7782630))

(declare-fun m!7782632 () Bool)

(assert (=> b!7061903 m!7782632))

(assert (=> b!7061903 m!7782622))

(declare-fun m!7782634 () Bool)

(assert (=> b!7061911 m!7782634))

(assert (=> b!7061911 m!7782634))

(declare-fun m!7782636 () Bool)

(assert (=> b!7061911 m!7782636))

(declare-fun m!7782638 () Bool)

(assert (=> b!7061911 m!7782638))

(assert (=> b!7061912 m!7782620))

(assert (=> b!7061912 m!7782622))

(declare-fun m!7782640 () Bool)

(assert (=> setNonEmpty!50019 m!7782640))

(declare-fun m!7782642 () Bool)

(assert (=> b!7061890 m!7782642))

(declare-fun m!7782644 () Bool)

(assert (=> b!7061910 m!7782644))

(declare-fun m!7782646 () Bool)

(assert (=> b!7061910 m!7782646))

(declare-fun m!7782648 () Bool)

(assert (=> b!7061894 m!7782648))

(declare-fun m!7782650 () Bool)

(assert (=> b!7061905 m!7782650))

(declare-fun m!7782652 () Bool)

(assert (=> b!7061905 m!7782652))

(declare-fun m!7782654 () Bool)

(assert (=> b!7061905 m!7782654))

(declare-fun m!7782656 () Bool)

(assert (=> b!7061905 m!7782656))

(assert (=> b!7061905 m!7782646))

(declare-fun m!7782658 () Bool)

(assert (=> b!7061917 m!7782658))

(declare-fun m!7782660 () Bool)

(assert (=> b!7061917 m!7782660))

(assert (=> b!7061909 m!7782622))

(assert (=> b!7061909 m!7782622))

(declare-fun m!7782662 () Bool)

(assert (=> b!7061909 m!7782662))

(assert (=> b!7061909 m!7782622))

(declare-fun m!7782664 () Bool)

(assert (=> b!7061909 m!7782664))

(declare-fun m!7782666 () Bool)

(assert (=> b!7061909 m!7782666))

(declare-fun m!7782668 () Bool)

(assert (=> b!7061909 m!7782668))

(assert (=> b!7061913 m!7782620))

(assert (=> b!7061913 m!7782622))

(declare-fun m!7782670 () Bool)

(assert (=> b!7061906 m!7782670))

(assert (=> b!7061906 m!7782622))

(declare-fun m!7782672 () Bool)

(assert (=> b!7061899 m!7782672))

(declare-fun m!7782674 () Bool)

(assert (=> b!7061901 m!7782674))

(declare-fun m!7782676 () Bool)

(assert (=> b!7061891 m!7782676))

(declare-fun m!7782678 () Bool)

(assert (=> b!7061891 m!7782678))

(declare-fun m!7782680 () Bool)

(assert (=> b!7061891 m!7782680))

(declare-fun m!7782682 () Bool)

(assert (=> b!7061891 m!7782682))

(declare-fun m!7782684 () Bool)

(assert (=> b!7061891 m!7782684))

(declare-fun m!7782686 () Bool)

(assert (=> b!7061891 m!7782686))

(assert (=> b!7061889 m!7782622))

(declare-fun m!7782688 () Bool)

(assert (=> b!7061889 m!7782688))

(assert (=> b!7061889 m!7782624))

(declare-fun m!7782690 () Bool)

(assert (=> b!7061889 m!7782690))

(assert (=> b!7061889 m!7782622))

(declare-fun m!7782692 () Bool)

(assert (=> b!7061898 m!7782692))

(declare-fun m!7782694 () Bool)

(assert (=> b!7061898 m!7782694))

(assert (=> b!7061898 m!7782646))

(declare-fun m!7782696 () Bool)

(assert (=> b!7061898 m!7782696))

(assert (=> b!7061888 m!7782612))

(declare-fun m!7782698 () Bool)

(assert (=> b!7061888 m!7782698))

(declare-fun m!7782700 () Bool)

(assert (=> b!7061888 m!7782700))

(declare-fun m!7782702 () Bool)

(assert (=> b!7061888 m!7782702))

(declare-fun m!7782704 () Bool)

(assert (=> b!7061888 m!7782704))

(declare-fun m!7782706 () Bool)

(assert (=> b!7061888 m!7782706))

(declare-fun m!7782708 () Bool)

(assert (=> b!7061895 m!7782708))

(declare-fun m!7782710 () Bool)

(assert (=> b!7061895 m!7782710))

(declare-fun m!7782712 () Bool)

(assert (=> b!7061916 m!7782712))

(declare-fun m!7782714 () Bool)

(assert (=> b!7061904 m!7782714))

(declare-fun m!7782716 () Bool)

(assert (=> b!7061904 m!7782716))

(declare-fun m!7782718 () Bool)

(assert (=> b!7061904 m!7782718))

(declare-fun m!7782720 () Bool)

(assert (=> b!7061904 m!7782720))

(assert (=> b!7061904 m!7782622))

(declare-fun m!7782722 () Bool)

(assert (=> b!7061904 m!7782722))

(declare-fun m!7782724 () Bool)

(assert (=> b!7061904 m!7782724))

(declare-fun m!7782726 () Bool)

(assert (=> b!7061904 m!7782726))

(declare-fun m!7782728 () Bool)

(assert (=> b!7061904 m!7782728))

(declare-fun m!7782730 () Bool)

(assert (=> b!7061904 m!7782730))

(assert (=> b!7061904 m!7782688))

(declare-fun m!7782732 () Bool)

(assert (=> b!7061904 m!7782732))

(declare-fun m!7782734 () Bool)

(assert (=> b!7061904 m!7782734))

(declare-fun m!7782736 () Bool)

(assert (=> b!7061904 m!7782736))

(assert (=> b!7061904 m!7782622))

(assert (=> b!7061904 m!7782622))

(assert (=> b!7061904 m!7782622))

(declare-fun m!7782738 () Bool)

(assert (=> b!7061914 m!7782738))

(declare-fun m!7782740 () Bool)

(assert (=> b!7061897 m!7782740))

(check-sat (not b!7061917) (not b!7061914) (not b!7061891) (not b!7061898) (not b!7061905) (not b!7061888) tp_is_empty!44419 (not b!7061902) (not b!7061894) (not b!7061913) (not b!7061911) (not b!7061908) (not b!7061904) (not b!7061899) (not b!7061910) (not b!7061901) (not b!7061918) (not b!7061915) (not b!7061912) (not b!7061893) (not b!7061890) (not b!7061906) (not b!7061896) (not b!7061909) (not b!7061889) (not b!7061897) (not start!685260) (not setNonEmpty!50019) (not b!7061895) (not b!7061903))
(check-sat)
