; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!517828 () Bool)

(assert start!517828)

(declare-fun b!4930718 () Bool)

(declare-fun e!3080605 () Bool)

(declare-fun tp!1384269 () Bool)

(assert (=> b!4930718 (= e!3080605 tp!1384269)))

(declare-fun b!4930719 () Bool)

(declare-fun e!3080602 () Bool)

(declare-fun e!3080603 () Bool)

(assert (=> b!4930719 (= e!3080602 (not e!3080603))))

(declare-fun res!2104179 () Bool)

(assert (=> b!4930719 (=> res!2104179 e!3080603)))

(declare-datatypes ((C!27016 0))(
  ( (C!27017 (val!22842 Int)) )
))
(declare-datatypes ((List!56867 0))(
  ( (Nil!56743) (Cons!56743 (h!63191 C!27016) (t!367343 List!56867)) )
))
(declare-fun testedP!110 () List!56867)

(declare-fun lt!2029773 () List!56867)

(declare-fun isPrefix!4991 (List!56867 List!56867) Bool)

(assert (=> b!4930719 (= res!2104179 (not (isPrefix!4991 testedP!110 lt!2029773)))))

(declare-fun lt!2029769 () List!56867)

(assert (=> b!4930719 (isPrefix!4991 testedP!110 lt!2029769)))

(declare-datatypes ((Unit!147373 0))(
  ( (Unit!147374) )
))
(declare-fun lt!2029770 () Unit!147373)

(declare-fun testedSuffix!70 () List!56867)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3215 (List!56867 List!56867) Unit!147373)

(assert (=> b!4930719 (= lt!2029770 (lemmaConcatTwoListThenFirstIsPrefix!3215 testedP!110 testedSuffix!70))))

(declare-fun b!4930720 () Bool)

(declare-fun res!2104182 () Bool)

(assert (=> b!4930720 (=> (not res!2104182) (not e!3080602))))

(declare-fun testedPSize!70 () Int)

(declare-fun size!37553 (List!56867) Int)

(assert (=> b!4930720 (= res!2104182 (= testedPSize!70 (size!37553 testedP!110)))))

(declare-fun setNonEmpty!27620 () Bool)

(declare-datatypes ((Regex!13393 0))(
  ( (ElementMatch!13393 (c!840255 C!27016)) (Concat!21966 (regOne!27298 Regex!13393) (regTwo!27298 Regex!13393)) (EmptyExpr!13393) (Star!13393 (reg!13722 Regex!13393)) (EmptyLang!13393) (Union!13393 (regOne!27299 Regex!13393) (regTwo!27299 Regex!13393)) )
))
(declare-datatypes ((List!56868 0))(
  ( (Nil!56744) (Cons!56744 (h!63192 Regex!13393) (t!367344 List!56868)) )
))
(declare-datatypes ((Context!6070 0))(
  ( (Context!6071 (exprs!3535 List!56868)) )
))
(declare-fun setElem!27620 () Context!6070)

(declare-fun setRes!27620 () Bool)

(declare-fun tp!1384270 () Bool)

(declare-fun inv!73629 (Context!6070) Bool)

(assert (=> setNonEmpty!27620 (= setRes!27620 (and tp!1384270 (inv!73629 setElem!27620) e!3080605))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6070))

(declare-fun setRest!27620 () (InoxSet Context!6070))

(assert (=> setNonEmpty!27620 (= z!3568 ((_ map or) (store ((as const (Array Context!6070 Bool)) false) setElem!27620 true) setRest!27620))))

(declare-fun b!4930721 () Bool)

(declare-fun e!3080606 () Bool)

(declare-datatypes ((IArray!29865 0))(
  ( (IArray!29866 (innerList!14990 List!56867)) )
))
(declare-datatypes ((Conc!14902 0))(
  ( (Node!14902 (left!41387 Conc!14902) (right!41717 Conc!14902) (csize!30034 Int) (cheight!15113 Int)) (Leaf!24786 (xs!18226 IArray!29865) (csize!30035 Int)) (Empty!14902) )
))
(declare-datatypes ((BalanceConc!29234 0))(
  ( (BalanceConc!29235 (c!840256 Conc!14902)) )
))
(declare-fun totalInput!685 () BalanceConc!29234)

(declare-fun isBalanced!4099 (Conc!14902) Bool)

(assert (=> b!4930721 (= e!3080606 (isBalanced!4099 (c!840256 totalInput!685)))))

(declare-fun b!4930722 () Bool)

(declare-fun res!2104181 () Bool)

(assert (=> b!4930722 (=> (not res!2104181) (not e!3080602))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37554 (BalanceConc!29234) Int)

(assert (=> b!4930722 (= res!2104181 (= totalInputSize!132 (size!37554 totalInput!685)))))

(declare-fun res!2104180 () Bool)

(assert (=> start!517828 (=> (not res!2104180) (not e!3080602))))

(assert (=> start!517828 (= res!2104180 (= lt!2029769 lt!2029773))))

(declare-fun list!17997 (BalanceConc!29234) List!56867)

(assert (=> start!517828 (= lt!2029773 (list!17997 totalInput!685))))

(declare-fun ++!12358 (List!56867 List!56867) List!56867)

(assert (=> start!517828 (= lt!2029769 (++!12358 testedP!110 testedSuffix!70))))

(assert (=> start!517828 e!3080602))

(declare-fun e!3080608 () Bool)

(assert (=> start!517828 e!3080608))

(declare-fun condSetEmpty!27620 () Bool)

(assert (=> start!517828 (= condSetEmpty!27620 (= z!3568 ((as const (Array Context!6070 Bool)) false)))))

(assert (=> start!517828 setRes!27620))

(assert (=> start!517828 true))

(declare-fun e!3080604 () Bool)

(declare-fun inv!73630 (BalanceConc!29234) Bool)

(assert (=> start!517828 (and (inv!73630 totalInput!685) e!3080604)))

(declare-fun e!3080607 () Bool)

(assert (=> start!517828 e!3080607))

(declare-fun setIsEmpty!27620 () Bool)

(assert (=> setIsEmpty!27620 setRes!27620))

(declare-fun b!4930723 () Bool)

(declare-fun res!2104178 () Bool)

(assert (=> b!4930723 (=> res!2104178 e!3080606)))

(assert (=> b!4930723 (= res!2104178 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4930724 () Bool)

(assert (=> b!4930724 (= e!3080603 e!3080606)))

(declare-fun res!2104177 () Bool)

(assert (=> b!4930724 (=> res!2104177 e!3080606)))

(declare-fun lostCauseZipper!711 ((InoxSet Context!6070)) Bool)

(assert (=> b!4930724 (= res!2104177 (lostCauseZipper!711 z!3568))))

(declare-fun lt!2029771 () List!56867)

(assert (=> b!4930724 (and (= testedSuffix!70 lt!2029771) (= lt!2029771 testedSuffix!70))))

(declare-fun lt!2029772 () Unit!147373)

(declare-fun lemmaSamePrefixThenSameSuffix!2389 (List!56867 List!56867 List!56867 List!56867 List!56867) Unit!147373)

(assert (=> b!4930724 (= lt!2029772 (lemmaSamePrefixThenSameSuffix!2389 testedP!110 testedSuffix!70 testedP!110 lt!2029771 lt!2029773))))

(declare-fun getSuffix!2975 (List!56867 List!56867) List!56867)

(assert (=> b!4930724 (= lt!2029771 (getSuffix!2975 lt!2029773 testedP!110))))

(declare-fun b!4930725 () Bool)

(declare-fun tp!1384272 () Bool)

(declare-fun inv!73631 (Conc!14902) Bool)

(assert (=> b!4930725 (= e!3080604 (and (inv!73631 (c!840256 totalInput!685)) tp!1384272))))

(declare-fun b!4930726 () Bool)

(declare-fun tp_is_empty!35963 () Bool)

(declare-fun tp!1384271 () Bool)

(assert (=> b!4930726 (= e!3080607 (and tp_is_empty!35963 tp!1384271))))

(declare-fun b!4930727 () Bool)

(declare-fun tp!1384273 () Bool)

(assert (=> b!4930727 (= e!3080608 (and tp_is_empty!35963 tp!1384273))))

(assert (= (and start!517828 res!2104180) b!4930720))

(assert (= (and b!4930720 res!2104182) b!4930722))

(assert (= (and b!4930722 res!2104181) b!4930719))

(assert (= (and b!4930719 (not res!2104179)) b!4930724))

(assert (= (and b!4930724 (not res!2104177)) b!4930723))

(assert (= (and b!4930723 (not res!2104178)) b!4930721))

(get-info :version)

(assert (= (and start!517828 ((_ is Cons!56743) testedP!110)) b!4930727))

(assert (= (and start!517828 condSetEmpty!27620) setIsEmpty!27620))

(assert (= (and start!517828 (not condSetEmpty!27620)) setNonEmpty!27620))

(assert (= setNonEmpty!27620 b!4930718))

(assert (= start!517828 b!4930725))

(assert (= (and start!517828 ((_ is Cons!56743) testedSuffix!70)) b!4930726))

(declare-fun m!5950832 () Bool)

(assert (=> b!4930722 m!5950832))

(declare-fun m!5950834 () Bool)

(assert (=> setNonEmpty!27620 m!5950834))

(declare-fun m!5950836 () Bool)

(assert (=> start!517828 m!5950836))

(declare-fun m!5950838 () Bool)

(assert (=> start!517828 m!5950838))

(declare-fun m!5950840 () Bool)

(assert (=> start!517828 m!5950840))

(declare-fun m!5950842 () Bool)

(assert (=> b!4930724 m!5950842))

(declare-fun m!5950844 () Bool)

(assert (=> b!4930724 m!5950844))

(declare-fun m!5950846 () Bool)

(assert (=> b!4930724 m!5950846))

(declare-fun m!5950848 () Bool)

(assert (=> b!4930721 m!5950848))

(declare-fun m!5950850 () Bool)

(assert (=> b!4930725 m!5950850))

(declare-fun m!5950852 () Bool)

(assert (=> b!4930720 m!5950852))

(declare-fun m!5950854 () Bool)

(assert (=> b!4930719 m!5950854))

(declare-fun m!5950856 () Bool)

(assert (=> b!4930719 m!5950856))

(declare-fun m!5950858 () Bool)

(assert (=> b!4930719 m!5950858))

(check-sat (not b!4930718) (not b!4930719) (not b!4930724) (not b!4930722) (not b!4930727) tp_is_empty!35963 (not b!4930720) (not start!517828) (not b!4930726) (not b!4930721) (not b!4930725) (not setNonEmpty!27620))
(check-sat)
(get-model)

(declare-fun bs!1180290 () Bool)

(declare-fun b!4930772 () Bool)

(declare-fun d!1587352 () Bool)

(assert (= bs!1180290 (and b!4930772 d!1587352)))

(declare-fun lambda!245442 () Int)

(declare-fun lambda!245441 () Int)

(assert (=> bs!1180290 (not (= lambda!245442 lambda!245441))))

(declare-fun bs!1180291 () Bool)

(declare-fun b!4930773 () Bool)

(assert (= bs!1180291 (and b!4930773 d!1587352)))

(declare-fun lambda!245443 () Int)

(assert (=> bs!1180291 (not (= lambda!245443 lambda!245441))))

(declare-fun bs!1180292 () Bool)

(assert (= bs!1180292 (and b!4930773 b!4930772)))

(assert (=> bs!1180292 (= lambda!245443 lambda!245442)))

(declare-fun lt!2029806 () Bool)

(declare-datatypes ((Option!14167 0))(
  ( (None!14166) (Some!14166 (v!50136 List!56867)) )
))
(declare-fun isEmpty!30588 (Option!14167) Bool)

(declare-fun getLanguageWitness!625 ((InoxSet Context!6070)) Option!14167)

(assert (=> d!1587352 (= lt!2029806 (isEmpty!30588 (getLanguageWitness!625 z!3568)))))

(declare-fun forall!13152 ((InoxSet Context!6070) Int) Bool)

(assert (=> d!1587352 (= lt!2029806 (forall!13152 z!3568 lambda!245441))))

(declare-fun lt!2029805 () Unit!147373)

(declare-fun e!3080632 () Unit!147373)

(assert (=> d!1587352 (= lt!2029805 e!3080632)))

(declare-fun c!840277 () Bool)

(assert (=> d!1587352 (= c!840277 (not (forall!13152 z!3568 lambda!245441)))))

(assert (=> d!1587352 (= (lostCauseZipper!711 z!3568) lt!2029806)))

(declare-fun Unit!147375 () Unit!147373)

(assert (=> b!4930773 (= e!3080632 Unit!147375)))

(declare-datatypes ((List!56869 0))(
  ( (Nil!56745) (Cons!56745 (h!63193 Context!6070) (t!367347 List!56869)) )
))
(declare-fun lt!2029804 () List!56869)

(declare-fun call!344129 () List!56869)

(assert (=> b!4930773 (= lt!2029804 call!344129)))

(declare-fun lt!2029810 () Unit!147373)

(declare-fun lemmaForallThenNotExists!170 (List!56869 Int) Unit!147373)

(assert (=> b!4930773 (= lt!2029810 (lemmaForallThenNotExists!170 lt!2029804 lambda!245441))))

(declare-fun call!344130 () Bool)

(assert (=> b!4930773 (not call!344130)))

(declare-fun lt!2029809 () Unit!147373)

(assert (=> b!4930773 (= lt!2029809 lt!2029810)))

(declare-fun Unit!147376 () Unit!147373)

(assert (=> b!4930772 (= e!3080632 Unit!147376)))

(declare-fun lt!2029808 () List!56869)

(assert (=> b!4930772 (= lt!2029808 call!344129)))

(declare-fun lt!2029807 () Unit!147373)

(declare-fun lemmaNotForallThenExists!187 (List!56869 Int) Unit!147373)

(assert (=> b!4930772 (= lt!2029807 (lemmaNotForallThenExists!187 lt!2029808 lambda!245441))))

(assert (=> b!4930772 call!344130))

(declare-fun lt!2029803 () Unit!147373)

(assert (=> b!4930772 (= lt!2029803 lt!2029807)))

(declare-fun bm!344125 () Bool)

(declare-fun toList!7949 ((InoxSet Context!6070)) List!56869)

(assert (=> bm!344125 (= call!344129 (toList!7949 z!3568))))

(declare-fun bm!344124 () Bool)

(declare-fun exists!1256 (List!56869 Int) Bool)

(assert (=> bm!344124 (= call!344130 (exists!1256 (ite c!840277 lt!2029808 lt!2029804) (ite c!840277 lambda!245442 lambda!245443)))))

(assert (= (and d!1587352 c!840277) b!4930772))

(assert (= (and d!1587352 (not c!840277)) b!4930773))

(assert (= (or b!4930772 b!4930773) bm!344124))

(assert (= (or b!4930772 b!4930773) bm!344125))

(declare-fun m!5950892 () Bool)

(assert (=> b!4930772 m!5950892))

(declare-fun m!5950894 () Bool)

(assert (=> bm!344125 m!5950894))

(declare-fun m!5950896 () Bool)

(assert (=> bm!344124 m!5950896))

(declare-fun m!5950898 () Bool)

(assert (=> b!4930773 m!5950898))

(declare-fun m!5950900 () Bool)

(assert (=> d!1587352 m!5950900))

(assert (=> d!1587352 m!5950900))

(declare-fun m!5950902 () Bool)

(assert (=> d!1587352 m!5950902))

(declare-fun m!5950904 () Bool)

(assert (=> d!1587352 m!5950904))

(assert (=> d!1587352 m!5950904))

(assert (=> b!4930724 d!1587352))

(declare-fun d!1587368 () Bool)

(assert (=> d!1587368 (= testedSuffix!70 lt!2029771)))

(declare-fun lt!2029813 () Unit!147373)

(declare-fun choose!36132 (List!56867 List!56867 List!56867 List!56867 List!56867) Unit!147373)

(assert (=> d!1587368 (= lt!2029813 (choose!36132 testedP!110 testedSuffix!70 testedP!110 lt!2029771 lt!2029773))))

(assert (=> d!1587368 (isPrefix!4991 testedP!110 lt!2029773)))

(assert (=> d!1587368 (= (lemmaSamePrefixThenSameSuffix!2389 testedP!110 testedSuffix!70 testedP!110 lt!2029771 lt!2029773) lt!2029813)))

(declare-fun bs!1180293 () Bool)

(assert (= bs!1180293 d!1587368))

(declare-fun m!5950906 () Bool)

(assert (=> bs!1180293 m!5950906))

(assert (=> bs!1180293 m!5950854))

(assert (=> b!4930724 d!1587368))

(declare-fun d!1587370 () Bool)

(declare-fun lt!2029816 () List!56867)

(assert (=> d!1587370 (= (++!12358 testedP!110 lt!2029816) lt!2029773)))

(declare-fun e!3080635 () List!56867)

(assert (=> d!1587370 (= lt!2029816 e!3080635)))

(declare-fun c!840280 () Bool)

(assert (=> d!1587370 (= c!840280 ((_ is Cons!56743) testedP!110))))

(assert (=> d!1587370 (>= (size!37553 lt!2029773) (size!37553 testedP!110))))

(assert (=> d!1587370 (= (getSuffix!2975 lt!2029773 testedP!110) lt!2029816)))

(declare-fun b!4930778 () Bool)

(declare-fun tail!9680 (List!56867) List!56867)

(assert (=> b!4930778 (= e!3080635 (getSuffix!2975 (tail!9680 lt!2029773) (t!367343 testedP!110)))))

(declare-fun b!4930779 () Bool)

(assert (=> b!4930779 (= e!3080635 lt!2029773)))

(assert (= (and d!1587370 c!840280) b!4930778))

(assert (= (and d!1587370 (not c!840280)) b!4930779))

(declare-fun m!5950908 () Bool)

(assert (=> d!1587370 m!5950908))

(declare-fun m!5950910 () Bool)

(assert (=> d!1587370 m!5950910))

(assert (=> d!1587370 m!5950852))

(declare-fun m!5950912 () Bool)

(assert (=> b!4930778 m!5950912))

(assert (=> b!4930778 m!5950912))

(declare-fun m!5950914 () Bool)

(assert (=> b!4930778 m!5950914))

(assert (=> b!4930724 d!1587370))

(declare-fun d!1587372 () Bool)

(declare-fun lambda!245446 () Int)

(declare-fun forall!13153 (List!56868 Int) Bool)

(assert (=> d!1587372 (= (inv!73629 setElem!27620) (forall!13153 (exprs!3535 setElem!27620) lambda!245446))))

(declare-fun bs!1180294 () Bool)

(assert (= bs!1180294 d!1587372))

(declare-fun m!5950916 () Bool)

(assert (=> bs!1180294 m!5950916))

(assert (=> setNonEmpty!27620 d!1587372))

(declare-fun d!1587374 () Bool)

(declare-fun c!840287 () Bool)

(assert (=> d!1587374 (= c!840287 ((_ is Node!14902) (c!840256 totalInput!685)))))

(declare-fun e!3080642 () Bool)

(assert (=> d!1587374 (= (inv!73631 (c!840256 totalInput!685)) e!3080642)))

(declare-fun b!4930786 () Bool)

(declare-fun inv!73632 (Conc!14902) Bool)

(assert (=> b!4930786 (= e!3080642 (inv!73632 (c!840256 totalInput!685)))))

(declare-fun b!4930787 () Bool)

(declare-fun e!3080643 () Bool)

(assert (=> b!4930787 (= e!3080642 e!3080643)))

(declare-fun res!2104209 () Bool)

(assert (=> b!4930787 (= res!2104209 (not ((_ is Leaf!24786) (c!840256 totalInput!685))))))

(assert (=> b!4930787 (=> res!2104209 e!3080643)))

(declare-fun b!4930788 () Bool)

(declare-fun inv!73633 (Conc!14902) Bool)

(assert (=> b!4930788 (= e!3080643 (inv!73633 (c!840256 totalInput!685)))))

(assert (= (and d!1587374 c!840287) b!4930786))

(assert (= (and d!1587374 (not c!840287)) b!4930787))

(assert (= (and b!4930787 (not res!2104209)) b!4930788))

(declare-fun m!5950918 () Bool)

(assert (=> b!4930786 m!5950918))

(declare-fun m!5950920 () Bool)

(assert (=> b!4930788 m!5950920))

(assert (=> b!4930725 d!1587374))

(declare-fun d!1587376 () Bool)

(declare-fun lt!2029831 () Int)

(assert (=> d!1587376 (>= lt!2029831 0)))

(declare-fun e!3080648 () Int)

(assert (=> d!1587376 (= lt!2029831 e!3080648)))

(declare-fun c!840292 () Bool)

(assert (=> d!1587376 (= c!840292 ((_ is Nil!56743) testedP!110))))

(assert (=> d!1587376 (= (size!37553 testedP!110) lt!2029831)))

(declare-fun b!4930793 () Bool)

(assert (=> b!4930793 (= e!3080648 0)))

(declare-fun b!4930794 () Bool)

(assert (=> b!4930794 (= e!3080648 (+ 1 (size!37553 (t!367343 testedP!110))))))

(assert (= (and d!1587376 c!840292) b!4930793))

(assert (= (and d!1587376 (not c!840292)) b!4930794))

(declare-fun m!5950922 () Bool)

(assert (=> b!4930794 m!5950922))

(assert (=> b!4930720 d!1587376))

(declare-fun b!4930806 () Bool)

(declare-fun res!2104220 () Bool)

(declare-fun e!3080656 () Bool)

(assert (=> b!4930806 (=> (not res!2104220) (not e!3080656))))

(declare-fun head!10533 (List!56867) C!27016)

(assert (=> b!4930806 (= res!2104220 (= (head!10533 testedP!110) (head!10533 lt!2029773)))))

(declare-fun b!4930805 () Bool)

(declare-fun e!3080658 () Bool)

(assert (=> b!4930805 (= e!3080658 e!3080656)))

(declare-fun res!2104219 () Bool)

(assert (=> b!4930805 (=> (not res!2104219) (not e!3080656))))

(assert (=> b!4930805 (= res!2104219 (not ((_ is Nil!56743) lt!2029773)))))

(declare-fun b!4930807 () Bool)

(assert (=> b!4930807 (= e!3080656 (isPrefix!4991 (tail!9680 testedP!110) (tail!9680 lt!2029773)))))

(declare-fun d!1587378 () Bool)

(declare-fun e!3080657 () Bool)

(assert (=> d!1587378 e!3080657))

(declare-fun res!2104221 () Bool)

(assert (=> d!1587378 (=> res!2104221 e!3080657)))

(declare-fun lt!2029842 () Bool)

(assert (=> d!1587378 (= res!2104221 (not lt!2029842))))

(assert (=> d!1587378 (= lt!2029842 e!3080658)))

(declare-fun res!2104218 () Bool)

(assert (=> d!1587378 (=> res!2104218 e!3080658)))

(assert (=> d!1587378 (= res!2104218 ((_ is Nil!56743) testedP!110))))

(assert (=> d!1587378 (= (isPrefix!4991 testedP!110 lt!2029773) lt!2029842)))

(declare-fun b!4930808 () Bool)

(assert (=> b!4930808 (= e!3080657 (>= (size!37553 lt!2029773) (size!37553 testedP!110)))))

(assert (= (and d!1587378 (not res!2104218)) b!4930805))

(assert (= (and b!4930805 res!2104219) b!4930806))

(assert (= (and b!4930806 res!2104220) b!4930807))

(assert (= (and d!1587378 (not res!2104221)) b!4930808))

(declare-fun m!5950938 () Bool)

(assert (=> b!4930806 m!5950938))

(declare-fun m!5950940 () Bool)

(assert (=> b!4930806 m!5950940))

(declare-fun m!5950942 () Bool)

(assert (=> b!4930807 m!5950942))

(assert (=> b!4930807 m!5950912))

(assert (=> b!4930807 m!5950942))

(assert (=> b!4930807 m!5950912))

(declare-fun m!5950944 () Bool)

(assert (=> b!4930807 m!5950944))

(assert (=> b!4930808 m!5950910))

(assert (=> b!4930808 m!5950852))

(assert (=> b!4930719 d!1587378))

(declare-fun b!4930810 () Bool)

(declare-fun res!2104224 () Bool)

(declare-fun e!3080659 () Bool)

(assert (=> b!4930810 (=> (not res!2104224) (not e!3080659))))

(assert (=> b!4930810 (= res!2104224 (= (head!10533 testedP!110) (head!10533 lt!2029769)))))

(declare-fun b!4930809 () Bool)

(declare-fun e!3080661 () Bool)

(assert (=> b!4930809 (= e!3080661 e!3080659)))

(declare-fun res!2104223 () Bool)

(assert (=> b!4930809 (=> (not res!2104223) (not e!3080659))))

(assert (=> b!4930809 (= res!2104223 (not ((_ is Nil!56743) lt!2029769)))))

(declare-fun b!4930811 () Bool)

(assert (=> b!4930811 (= e!3080659 (isPrefix!4991 (tail!9680 testedP!110) (tail!9680 lt!2029769)))))

(declare-fun d!1587382 () Bool)

(declare-fun e!3080660 () Bool)

(assert (=> d!1587382 e!3080660))

(declare-fun res!2104225 () Bool)

(assert (=> d!1587382 (=> res!2104225 e!3080660)))

(declare-fun lt!2029843 () Bool)

(assert (=> d!1587382 (= res!2104225 (not lt!2029843))))

(assert (=> d!1587382 (= lt!2029843 e!3080661)))

(declare-fun res!2104222 () Bool)

(assert (=> d!1587382 (=> res!2104222 e!3080661)))

(assert (=> d!1587382 (= res!2104222 ((_ is Nil!56743) testedP!110))))

(assert (=> d!1587382 (= (isPrefix!4991 testedP!110 lt!2029769) lt!2029843)))

(declare-fun b!4930812 () Bool)

(assert (=> b!4930812 (= e!3080660 (>= (size!37553 lt!2029769) (size!37553 testedP!110)))))

(assert (= (and d!1587382 (not res!2104222)) b!4930809))

(assert (= (and b!4930809 res!2104223) b!4930810))

(assert (= (and b!4930810 res!2104224) b!4930811))

(assert (= (and d!1587382 (not res!2104225)) b!4930812))

(assert (=> b!4930810 m!5950938))

(declare-fun m!5950946 () Bool)

(assert (=> b!4930810 m!5950946))

(assert (=> b!4930811 m!5950942))

(declare-fun m!5950948 () Bool)

(assert (=> b!4930811 m!5950948))

(assert (=> b!4930811 m!5950942))

(assert (=> b!4930811 m!5950948))

(declare-fun m!5950950 () Bool)

(assert (=> b!4930811 m!5950950))

(declare-fun m!5950952 () Bool)

(assert (=> b!4930812 m!5950952))

(assert (=> b!4930812 m!5950852))

(assert (=> b!4930719 d!1587382))

(declare-fun d!1587384 () Bool)

(assert (=> d!1587384 (isPrefix!4991 testedP!110 (++!12358 testedP!110 testedSuffix!70))))

(declare-fun lt!2029849 () Unit!147373)

(declare-fun choose!36133 (List!56867 List!56867) Unit!147373)

(assert (=> d!1587384 (= lt!2029849 (choose!36133 testedP!110 testedSuffix!70))))

(assert (=> d!1587384 (= (lemmaConcatTwoListThenFirstIsPrefix!3215 testedP!110 testedSuffix!70) lt!2029849)))

(declare-fun bs!1180299 () Bool)

(assert (= bs!1180299 d!1587384))

(assert (=> bs!1180299 m!5950838))

(assert (=> bs!1180299 m!5950838))

(declare-fun m!5950956 () Bool)

(assert (=> bs!1180299 m!5950956))

(declare-fun m!5950958 () Bool)

(assert (=> bs!1180299 m!5950958))

(assert (=> b!4930719 d!1587384))

(declare-fun b!4930831 () Bool)

(declare-fun res!2104241 () Bool)

(declare-fun e!3080670 () Bool)

(assert (=> b!4930831 (=> (not res!2104241) (not e!3080670))))

(assert (=> b!4930831 (= res!2104241 (isBalanced!4099 (right!41717 (c!840256 totalInput!685))))))

(declare-fun b!4930832 () Bool)

(declare-fun res!2104243 () Bool)

(assert (=> b!4930832 (=> (not res!2104243) (not e!3080670))))

(declare-fun isEmpty!30591 (Conc!14902) Bool)

(assert (=> b!4930832 (= res!2104243 (not (isEmpty!30591 (left!41387 (c!840256 totalInput!685)))))))

(declare-fun b!4930833 () Bool)

(declare-fun res!2104239 () Bool)

(assert (=> b!4930833 (=> (not res!2104239) (not e!3080670))))

(declare-fun height!1988 (Conc!14902) Int)

(assert (=> b!4930833 (= res!2104239 (<= (- (height!1988 (left!41387 (c!840256 totalInput!685))) (height!1988 (right!41717 (c!840256 totalInput!685)))) 1))))

(declare-fun b!4930834 () Bool)

(declare-fun e!3080669 () Bool)

(assert (=> b!4930834 (= e!3080669 e!3080670)))

(declare-fun res!2104238 () Bool)

(assert (=> b!4930834 (=> (not res!2104238) (not e!3080670))))

(assert (=> b!4930834 (= res!2104238 (<= (- 1) (- (height!1988 (left!41387 (c!840256 totalInput!685))) (height!1988 (right!41717 (c!840256 totalInput!685))))))))

(declare-fun b!4930835 () Bool)

(assert (=> b!4930835 (= e!3080670 (not (isEmpty!30591 (right!41717 (c!840256 totalInput!685)))))))

(declare-fun d!1587388 () Bool)

(declare-fun res!2104242 () Bool)

(assert (=> d!1587388 (=> res!2104242 e!3080669)))

(assert (=> d!1587388 (= res!2104242 (not ((_ is Node!14902) (c!840256 totalInput!685))))))

(assert (=> d!1587388 (= (isBalanced!4099 (c!840256 totalInput!685)) e!3080669)))

(declare-fun b!4930836 () Bool)

(declare-fun res!2104240 () Bool)

(assert (=> b!4930836 (=> (not res!2104240) (not e!3080670))))

(assert (=> b!4930836 (= res!2104240 (isBalanced!4099 (left!41387 (c!840256 totalInput!685))))))

(assert (= (and d!1587388 (not res!2104242)) b!4930834))

(assert (= (and b!4930834 res!2104238) b!4930833))

(assert (= (and b!4930833 res!2104239) b!4930836))

(assert (= (and b!4930836 res!2104240) b!4930831))

(assert (= (and b!4930831 res!2104241) b!4930832))

(assert (= (and b!4930832 res!2104243) b!4930835))

(declare-fun m!5950968 () Bool)

(assert (=> b!4930833 m!5950968))

(declare-fun m!5950970 () Bool)

(assert (=> b!4930833 m!5950970))

(declare-fun m!5950972 () Bool)

(assert (=> b!4930835 m!5950972))

(declare-fun m!5950974 () Bool)

(assert (=> b!4930832 m!5950974))

(declare-fun m!5950976 () Bool)

(assert (=> b!4930836 m!5950976))

(declare-fun m!5950978 () Bool)

(assert (=> b!4930831 m!5950978))

(assert (=> b!4930834 m!5950968))

(assert (=> b!4930834 m!5950970))

(assert (=> b!4930721 d!1587388))

(declare-fun d!1587392 () Bool)

(declare-fun list!17999 (Conc!14902) List!56867)

(assert (=> d!1587392 (= (list!17997 totalInput!685) (list!17999 (c!840256 totalInput!685)))))

(declare-fun bs!1180301 () Bool)

(assert (= bs!1180301 d!1587392))

(declare-fun m!5950982 () Bool)

(assert (=> bs!1180301 m!5950982))

(assert (=> start!517828 d!1587392))

(declare-fun b!4930854 () Bool)

(declare-fun e!3080681 () List!56867)

(assert (=> b!4930854 (= e!3080681 testedSuffix!70)))

(declare-fun d!1587396 () Bool)

(declare-fun e!3080682 () Bool)

(assert (=> d!1587396 e!3080682))

(declare-fun res!2104252 () Bool)

(assert (=> d!1587396 (=> (not res!2104252) (not e!3080682))))

(declare-fun lt!2029855 () List!56867)

(declare-fun content!10085 (List!56867) (InoxSet C!27016))

(assert (=> d!1587396 (= res!2104252 (= (content!10085 lt!2029855) ((_ map or) (content!10085 testedP!110) (content!10085 testedSuffix!70))))))

(assert (=> d!1587396 (= lt!2029855 e!3080681)))

(declare-fun c!840302 () Bool)

(assert (=> d!1587396 (= c!840302 ((_ is Nil!56743) testedP!110))))

(assert (=> d!1587396 (= (++!12358 testedP!110 testedSuffix!70) lt!2029855)))

(declare-fun b!4930856 () Bool)

(declare-fun res!2104251 () Bool)

(assert (=> b!4930856 (=> (not res!2104251) (not e!3080682))))

(assert (=> b!4930856 (= res!2104251 (= (size!37553 lt!2029855) (+ (size!37553 testedP!110) (size!37553 testedSuffix!70))))))

(declare-fun b!4930857 () Bool)

(assert (=> b!4930857 (= e!3080682 (or (not (= testedSuffix!70 Nil!56743)) (= lt!2029855 testedP!110)))))

(declare-fun b!4930855 () Bool)

(assert (=> b!4930855 (= e!3080681 (Cons!56743 (h!63191 testedP!110) (++!12358 (t!367343 testedP!110) testedSuffix!70)))))

(assert (= (and d!1587396 c!840302) b!4930854))

(assert (= (and d!1587396 (not c!840302)) b!4930855))

(assert (= (and d!1587396 res!2104252) b!4930856))

(assert (= (and b!4930856 res!2104251) b!4930857))

(declare-fun m!5950988 () Bool)

(assert (=> d!1587396 m!5950988))

(declare-fun m!5950990 () Bool)

(assert (=> d!1587396 m!5950990))

(declare-fun m!5950992 () Bool)

(assert (=> d!1587396 m!5950992))

(declare-fun m!5950994 () Bool)

(assert (=> b!4930856 m!5950994))

(assert (=> b!4930856 m!5950852))

(declare-fun m!5950996 () Bool)

(assert (=> b!4930856 m!5950996))

(declare-fun m!5950998 () Bool)

(assert (=> b!4930855 m!5950998))

(assert (=> start!517828 d!1587396))

(declare-fun d!1587400 () Bool)

(assert (=> d!1587400 (= (inv!73630 totalInput!685) (isBalanced!4099 (c!840256 totalInput!685)))))

(declare-fun bs!1180302 () Bool)

(assert (= bs!1180302 d!1587400))

(assert (=> bs!1180302 m!5950848))

(assert (=> start!517828 d!1587400))

(declare-fun d!1587402 () Bool)

(declare-fun lt!2029861 () Int)

(assert (=> d!1587402 (= lt!2029861 (size!37553 (list!17997 totalInput!685)))))

(declare-fun size!37556 (Conc!14902) Int)

(assert (=> d!1587402 (= lt!2029861 (size!37556 (c!840256 totalInput!685)))))

(assert (=> d!1587402 (= (size!37554 totalInput!685) lt!2029861)))

(declare-fun bs!1180303 () Bool)

(assert (= bs!1180303 d!1587402))

(assert (=> bs!1180303 m!5950836))

(assert (=> bs!1180303 m!5950836))

(declare-fun m!5951008 () Bool)

(assert (=> bs!1180303 m!5951008))

(declare-fun m!5951010 () Bool)

(assert (=> bs!1180303 m!5951010))

(assert (=> b!4930722 d!1587402))

(declare-fun condSetEmpty!27623 () Bool)

(assert (=> setNonEmpty!27620 (= condSetEmpty!27623 (= setRest!27620 ((as const (Array Context!6070 Bool)) false)))))

(declare-fun setRes!27623 () Bool)

(assert (=> setNonEmpty!27620 (= tp!1384270 setRes!27623)))

(declare-fun setIsEmpty!27623 () Bool)

(assert (=> setIsEmpty!27623 setRes!27623))

(declare-fun setElem!27623 () Context!6070)

(declare-fun setNonEmpty!27623 () Bool)

(declare-fun tp!1384279 () Bool)

(declare-fun e!3080697 () Bool)

(assert (=> setNonEmpty!27623 (= setRes!27623 (and tp!1384279 (inv!73629 setElem!27623) e!3080697))))

(declare-fun setRest!27623 () (InoxSet Context!6070))

(assert (=> setNonEmpty!27623 (= setRest!27620 ((_ map or) (store ((as const (Array Context!6070 Bool)) false) setElem!27623 true) setRest!27623))))

(declare-fun b!4930878 () Bool)

(declare-fun tp!1384278 () Bool)

(assert (=> b!4930878 (= e!3080697 tp!1384278)))

(assert (= (and setNonEmpty!27620 condSetEmpty!27623) setIsEmpty!27623))

(assert (= (and setNonEmpty!27620 (not condSetEmpty!27623)) setNonEmpty!27623))

(assert (= setNonEmpty!27623 b!4930878))

(declare-fun m!5951020 () Bool)

(assert (=> setNonEmpty!27623 m!5951020))

(declare-fun tp!1384288 () Bool)

(declare-fun e!3080704 () Bool)

(declare-fun tp!1384289 () Bool)

(declare-fun b!4930891 () Bool)

(assert (=> b!4930891 (= e!3080704 (and (inv!73631 (left!41387 (c!840256 totalInput!685))) tp!1384289 (inv!73631 (right!41717 (c!840256 totalInput!685))) tp!1384288))))

(declare-fun b!4930893 () Bool)

(declare-fun e!3080705 () Bool)

(declare-fun tp!1384290 () Bool)

(assert (=> b!4930893 (= e!3080705 tp!1384290)))

(declare-fun b!4930892 () Bool)

(declare-fun inv!73636 (IArray!29865) Bool)

(assert (=> b!4930892 (= e!3080704 (and (inv!73636 (xs!18226 (c!840256 totalInput!685))) e!3080705))))

(assert (=> b!4930725 (= tp!1384272 (and (inv!73631 (c!840256 totalInput!685)) e!3080704))))

(assert (= (and b!4930725 ((_ is Node!14902) (c!840256 totalInput!685))) b!4930891))

(assert (= b!4930892 b!4930893))

(assert (= (and b!4930725 ((_ is Leaf!24786) (c!840256 totalInput!685))) b!4930892))

(declare-fun m!5951026 () Bool)

(assert (=> b!4930891 m!5951026))

(declare-fun m!5951028 () Bool)

(assert (=> b!4930891 m!5951028))

(declare-fun m!5951030 () Bool)

(assert (=> b!4930892 m!5951030))

(assert (=> b!4930725 m!5950850))

(declare-fun b!4930906 () Bool)

(declare-fun e!3080712 () Bool)

(declare-fun tp!1384302 () Bool)

(declare-fun tp!1384303 () Bool)

(assert (=> b!4930906 (= e!3080712 (and tp!1384302 tp!1384303))))

(assert (=> b!4930718 (= tp!1384269 e!3080712)))

(assert (= (and b!4930718 ((_ is Cons!56744) (exprs!3535 setElem!27620))) b!4930906))

(declare-fun b!4930913 () Bool)

(declare-fun e!3080717 () Bool)

(declare-fun tp!1384310 () Bool)

(assert (=> b!4930913 (= e!3080717 (and tp_is_empty!35963 tp!1384310))))

(assert (=> b!4930727 (= tp!1384273 e!3080717)))

(assert (= (and b!4930727 ((_ is Cons!56743) (t!367343 testedP!110))) b!4930913))

(declare-fun b!4930914 () Bool)

(declare-fun e!3080718 () Bool)

(declare-fun tp!1384311 () Bool)

(assert (=> b!4930914 (= e!3080718 (and tp_is_empty!35963 tp!1384311))))

(assert (=> b!4930726 (= tp!1384271 e!3080718)))

(assert (= (and b!4930726 ((_ is Cons!56743) (t!367343 testedSuffix!70))) b!4930914))

(check-sat (not b!4930913) (not d!1587392) (not setNonEmpty!27623) (not b!4930772) (not d!1587372) (not bm!344124) (not d!1587370) (not b!4930914) (not b!4930810) (not b!4930725) (not b!4930806) (not b!4930856) (not b!4930893) (not b!4930811) (not b!4930808) (not b!4930807) (not b!4930891) (not d!1587352) (not b!4930812) (not b!4930788) (not d!1587384) (not d!1587368) (not bm!344125) (not b!4930778) (not b!4930835) (not b!4930831) (not b!4930833) (not b!4930786) (not b!4930773) (not b!4930906) tp_is_empty!35963 (not d!1587400) (not b!4930892) (not d!1587396) (not b!4930794) (not d!1587402) (not b!4930878) (not b!4930836) (not b!4930834) (not b!4930832) (not b!4930855))
(check-sat)
