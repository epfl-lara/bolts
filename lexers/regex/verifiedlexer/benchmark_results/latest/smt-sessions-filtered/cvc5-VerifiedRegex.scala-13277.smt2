; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722396 () Bool)

(assert start!722396)

(declare-fun b!7433507 () Bool)

(declare-fun res!2985095 () Bool)

(declare-fun e!4439784 () Bool)

(assert (=> b!7433507 (=> (not res!2985095) (not e!4439784))))

(declare-datatypes ((C!39130 0))(
  ( (C!39131 (val!29939 Int)) )
))
(declare-datatypes ((Regex!19428 0))(
  ( (ElementMatch!19428 (c!1376246 C!39130)) (Concat!28273 (regOne!39368 Regex!19428) (regTwo!39368 Regex!19428)) (EmptyExpr!19428) (Star!19428 (reg!19757 Regex!19428)) (EmptyLang!19428) (Union!19428 (regOne!39369 Regex!19428) (regTwo!39369 Regex!19428)) )
))
(declare-datatypes ((List!72064 0))(
  ( (Nil!71940) (Cons!71940 (h!78388 Regex!19428) (t!386625 List!72064)) )
))
(declare-datatypes ((Context!16736 0))(
  ( (Context!16737 (exprs!8868 List!72064)) )
))
(declare-fun lt!2619127 () (Set Context!16736))

(assert (=> b!7433507 (= res!2985095 (not (= lt!2619127 (as set.empty (Set Context!16736)))))))

(declare-fun b!7433508 () Bool)

(declare-fun e!4439785 () Bool)

(declare-fun tp!2145143 () Bool)

(assert (=> b!7433508 (= e!4439785 tp!2145143)))

(declare-fun setIsEmpty!56420 () Bool)

(declare-fun setRes!56420 () Bool)

(assert (=> setIsEmpty!56420 setRes!56420))

(declare-fun tp!2145142 () Bool)

(declare-fun setNonEmpty!56420 () Bool)

(declare-fun setElem!56420 () Context!16736)

(declare-fun inv!91932 (Context!16736) Bool)

(assert (=> setNonEmpty!56420 (= setRes!56420 (and tp!2145142 (inv!91932 setElem!56420) e!4439785))))

(declare-fun z!3488 () (Set Context!16736))

(declare-fun setRest!56420 () (Set Context!16736))

(assert (=> setNonEmpty!56420 (= z!3488 (set.union (set.insert setElem!56420 (as set.empty (Set Context!16736))) setRest!56420))))

(declare-fun b!7433509 () Bool)

(declare-datatypes ((List!72065 0))(
  ( (Nil!71941) (Cons!71941 (h!78389 Context!16736) (t!386626 List!72065)) )
))
(declare-fun toList!11773 ((Set Context!16736)) List!72065)

(assert (=> b!7433509 (= e!4439784 (= (toList!11773 lt!2619127) Nil!71941))))

(declare-fun b!7433510 () Bool)

(declare-fun e!4439786 () Bool)

(declare-fun tp_is_empty!49119 () Bool)

(declare-fun tp!2145141 () Bool)

(assert (=> b!7433510 (= e!4439786 (and tp_is_empty!49119 tp!2145141))))

(declare-fun res!2985096 () Bool)

(declare-fun e!4439787 () Bool)

(assert (=> start!722396 (=> (not res!2985096) (not e!4439787))))

(declare-fun lt!2619126 () Context!16736)

(declare-datatypes ((List!72066 0))(
  ( (Nil!71942) (Cons!71942 (h!78390 C!39130) (t!386627 List!72066)) )
))
(declare-fun s!7945 () List!72066)

(assert (=> start!722396 (= res!2985096 (and (= z!3488 (set.insert lt!2619126 (as set.empty (Set Context!16736)))) (is-Cons!71942 s!7945)))))

(assert (=> start!722396 (= lt!2619126 (Context!16737 Nil!71940))))

(assert (=> start!722396 e!4439787))

(declare-fun condSetEmpty!56420 () Bool)

(assert (=> start!722396 (= condSetEmpty!56420 (= z!3488 (as set.empty (Set Context!16736))))))

(assert (=> start!722396 setRes!56420))

(assert (=> start!722396 e!4439786))

(declare-fun b!7433506 () Bool)

(assert (=> b!7433506 (= e!4439787 e!4439784)))

(declare-fun res!2985097 () Bool)

(assert (=> b!7433506 (=> (not res!2985097) (not e!4439784))))

(declare-fun derivationStepZipperUp!2824 (Context!16736 C!39130) (Set Context!16736))

(assert (=> b!7433506 (= res!2985097 (= (derivationStepZipperUp!2824 lt!2619126 (h!78390 s!7945)) (as set.empty (Set Context!16736))))))

(declare-fun derivationStepZipper!3696 ((Set Context!16736) C!39130) (Set Context!16736))

(assert (=> b!7433506 (= lt!2619127 (derivationStepZipper!3696 z!3488 (h!78390 s!7945)))))

(assert (= (and start!722396 res!2985096) b!7433506))

(assert (= (and b!7433506 res!2985097) b!7433507))

(assert (= (and b!7433507 res!2985095) b!7433509))

(assert (= (and start!722396 condSetEmpty!56420) setIsEmpty!56420))

(assert (= (and start!722396 (not condSetEmpty!56420)) setNonEmpty!56420))

(assert (= setNonEmpty!56420 b!7433508))

(assert (= (and start!722396 (is-Cons!71942 s!7945)) b!7433510))

(declare-fun m!8049728 () Bool)

(assert (=> setNonEmpty!56420 m!8049728))

(declare-fun m!8049730 () Bool)

(assert (=> b!7433509 m!8049730))

(declare-fun m!8049732 () Bool)

(assert (=> start!722396 m!8049732))

(declare-fun m!8049734 () Bool)

(assert (=> b!7433506 m!8049734))

(declare-fun m!8049736 () Bool)

(assert (=> b!7433506 m!8049736))

(push 1)

(assert (not b!7433510))

(assert (not b!7433508))

(assert tp_is_empty!49119)

(assert (not b!7433509))

(assert (not b!7433506))

(assert (not setNonEmpty!56420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7433536 () Bool)

(declare-fun call!683137 () (Set Context!16736))

(declare-fun e!4439808 () (Set Context!16736))

(assert (=> b!7433536 (= e!4439808 (set.union call!683137 (derivationStepZipperUp!2824 (Context!16737 (t!386625 (exprs!8868 lt!2619126))) (h!78390 s!7945))))))

(declare-fun b!7433537 () Bool)

(declare-fun e!4439806 () (Set Context!16736))

(assert (=> b!7433537 (= e!4439808 e!4439806)))

(declare-fun c!1376253 () Bool)

(assert (=> b!7433537 (= c!1376253 (is-Cons!71940 (exprs!8868 lt!2619126)))))

(declare-fun b!7433540 () Bool)

(declare-fun e!4439807 () Bool)

(declare-fun nullable!8468 (Regex!19428) Bool)

(assert (=> b!7433540 (= e!4439807 (nullable!8468 (h!78388 (exprs!8868 lt!2619126))))))

(declare-fun b!7433541 () Bool)

(assert (=> b!7433541 (= e!4439806 call!683137)))

(declare-fun d!2293894 () Bool)

(declare-fun c!1376252 () Bool)

(assert (=> d!2293894 (= c!1376252 e!4439807)))

(declare-fun res!2985109 () Bool)

(assert (=> d!2293894 (=> (not res!2985109) (not e!4439807))))

(assert (=> d!2293894 (= res!2985109 (is-Cons!71940 (exprs!8868 lt!2619126)))))

(assert (=> d!2293894 (= (derivationStepZipperUp!2824 lt!2619126 (h!78390 s!7945)) e!4439808)))

(declare-fun bm!683132 () Bool)

(declare-fun derivationStepZipperDown!3216 (Regex!19428 Context!16736 C!39130) (Set Context!16736))

(assert (=> bm!683132 (= call!683137 (derivationStepZipperDown!3216 (h!78388 (exprs!8868 lt!2619126)) (Context!16737 (t!386625 (exprs!8868 lt!2619126))) (h!78390 s!7945)))))

(declare-fun b!7433542 () Bool)

(assert (=> b!7433542 (= e!4439806 (as set.empty (Set Context!16736)))))

(assert (= (and d!2293894 res!2985109) b!7433540))

(assert (= (and d!2293894 c!1376252) b!7433536))

(assert (= (and d!2293894 (not c!1376252)) b!7433537))

(assert (= (and b!7433537 c!1376253) b!7433541))

(assert (= (and b!7433537 (not c!1376253)) b!7433542))

(assert (= (or b!7433536 b!7433541) bm!683132))

(declare-fun m!8049748 () Bool)

(assert (=> b!7433536 m!8049748))

(declare-fun m!8049750 () Bool)

(assert (=> b!7433540 m!8049750))

(declare-fun m!8049752 () Bool)

(assert (=> bm!683132 m!8049752))

(assert (=> b!7433506 d!2293894))

(declare-fun d!2293898 () Bool)

(assert (=> d!2293898 true))

(declare-fun lambda!460194 () Int)

(declare-fun flatMap!3222 ((Set Context!16736) Int) (Set Context!16736))

(assert (=> d!2293898 (= (derivationStepZipper!3696 z!3488 (h!78390 s!7945)) (flatMap!3222 z!3488 lambda!460194))))

(declare-fun bs!1925505 () Bool)

(assert (= bs!1925505 d!2293898))

(declare-fun m!8049760 () Bool)

(assert (=> bs!1925505 m!8049760))

(assert (=> b!7433506 d!2293898))

(declare-fun d!2293902 () Bool)

(declare-fun e!4439820 () Bool)

(assert (=> d!2293902 e!4439820))

(declare-fun res!2985115 () Bool)

(assert (=> d!2293902 (=> (not res!2985115) (not e!4439820))))

(declare-fun lt!2619136 () List!72065)

(declare-fun noDuplicate!3115 (List!72065) Bool)

(assert (=> d!2293902 (= res!2985115 (noDuplicate!3115 lt!2619136))))

(declare-fun choose!57499 ((Set Context!16736)) List!72065)

(assert (=> d!2293902 (= lt!2619136 (choose!57499 lt!2619127))))

(assert (=> d!2293902 (= (toList!11773 lt!2619127) lt!2619136)))

(declare-fun b!7433560 () Bool)

(declare-fun content!15227 (List!72065) (Set Context!16736))

(assert (=> b!7433560 (= e!4439820 (= (content!15227 lt!2619136) lt!2619127))))

(assert (= (and d!2293902 res!2985115) b!7433560))

(declare-fun m!8049762 () Bool)

(assert (=> d!2293902 m!8049762))

(declare-fun m!8049764 () Bool)

(assert (=> d!2293902 m!8049764))

(declare-fun m!8049766 () Bool)

(assert (=> b!7433560 m!8049766))

(assert (=> b!7433509 d!2293902))

(declare-fun d!2293904 () Bool)

(declare-fun lambda!460197 () Int)

(declare-fun forall!18212 (List!72064 Int) Bool)

(assert (=> d!2293904 (= (inv!91932 setElem!56420) (forall!18212 (exprs!8868 setElem!56420) lambda!460197))))

(declare-fun bs!1925506 () Bool)

(assert (= bs!1925506 d!2293904))

(declare-fun m!8049768 () Bool)

(assert (=> bs!1925506 m!8049768))

(assert (=> setNonEmpty!56420 d!2293904))

(declare-fun b!7433565 () Bool)

(declare-fun e!4439823 () Bool)

(declare-fun tp!2145155 () Bool)

(assert (=> b!7433565 (= e!4439823 (and tp_is_empty!49119 tp!2145155))))

(assert (=> b!7433510 (= tp!2145141 e!4439823)))

(assert (= (and b!7433510 (is-Cons!71942 (t!386627 s!7945))) b!7433565))

(declare-fun b!7433570 () Bool)

(declare-fun e!4439826 () Bool)

(declare-fun tp!2145160 () Bool)

(declare-fun tp!2145161 () Bool)

(assert (=> b!7433570 (= e!4439826 (and tp!2145160 tp!2145161))))

(assert (=> b!7433508 (= tp!2145143 e!4439826)))

(assert (= (and b!7433508 (is-Cons!71940 (exprs!8868 setElem!56420))) b!7433570))

(declare-fun condSetEmpty!56426 () Bool)

(assert (=> setNonEmpty!56420 (= condSetEmpty!56426 (= setRest!56420 (as set.empty (Set Context!16736))))))

(declare-fun setRes!56426 () Bool)

(assert (=> setNonEmpty!56420 (= tp!2145142 setRes!56426)))

(declare-fun setIsEmpty!56426 () Bool)

(assert (=> setIsEmpty!56426 setRes!56426))

(declare-fun setElem!56426 () Context!16736)

(declare-fun setNonEmpty!56426 () Bool)

(declare-fun tp!2145167 () Bool)

(declare-fun e!4439829 () Bool)

(assert (=> setNonEmpty!56426 (= setRes!56426 (and tp!2145167 (inv!91932 setElem!56426) e!4439829))))

(declare-fun setRest!56426 () (Set Context!16736))

(assert (=> setNonEmpty!56426 (= setRest!56420 (set.union (set.insert setElem!56426 (as set.empty (Set Context!16736))) setRest!56426))))

(declare-fun b!7433575 () Bool)

(declare-fun tp!2145166 () Bool)

(assert (=> b!7433575 (= e!4439829 tp!2145166)))

(assert (= (and setNonEmpty!56420 condSetEmpty!56426) setIsEmpty!56426))

(assert (= (and setNonEmpty!56420 (not condSetEmpty!56426)) setNonEmpty!56426))

(assert (= setNonEmpty!56426 b!7433575))

(declare-fun m!8049770 () Bool)

(assert (=> setNonEmpty!56426 m!8049770))

(push 1)

(assert (not b!7433536))

(assert (not setNonEmpty!56426))

(assert tp_is_empty!49119)

(assert (not d!2293902))

(assert (not b!7433540))

(assert (not b!7433570))

(assert (not d!2293898))

(assert (not b!7433565))

(assert (not d!2293904))

(assert (not b!7433560))

(assert (not b!7433575))

(assert (not bm!683132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2293910 () Bool)

(declare-fun c!1376266 () Bool)

(assert (=> d!2293910 (= c!1376266 (is-Nil!71941 lt!2619136))))

(declare-fun e!4439844 () (Set Context!16736))

(assert (=> d!2293910 (= (content!15227 lt!2619136) e!4439844)))

(declare-fun b!7433600 () Bool)

(assert (=> b!7433600 (= e!4439844 (as set.empty (Set Context!16736)))))

(declare-fun b!7433601 () Bool)

(assert (=> b!7433601 (= e!4439844 (set.union (set.insert (h!78389 lt!2619136) (as set.empty (Set Context!16736))) (content!15227 (t!386626 lt!2619136))))))

(assert (= (and d!2293910 c!1376266) b!7433600))

(assert (= (and d!2293910 (not c!1376266)) b!7433601))

(declare-fun m!8049784 () Bool)

(assert (=> b!7433601 m!8049784))

(declare-fun m!8049786 () Bool)

(assert (=> b!7433601 m!8049786))

(assert (=> b!7433560 d!2293910))

(declare-fun bs!1925509 () Bool)

(declare-fun d!2293912 () Bool)

(assert (= bs!1925509 (and d!2293912 d!2293904)))

(declare-fun lambda!460204 () Int)

(assert (=> bs!1925509 (= lambda!460204 lambda!460197)))

(assert (=> d!2293912 (= (inv!91932 setElem!56426) (forall!18212 (exprs!8868 setElem!56426) lambda!460204))))

(declare-fun bs!1925510 () Bool)

(assert (= bs!1925510 d!2293912))

(declare-fun m!8049788 () Bool)

(assert (=> bs!1925510 m!8049788))

(assert (=> setNonEmpty!56426 d!2293912))

(declare-fun d!2293914 () Bool)

(declare-fun choose!57501 ((Set Context!16736) Int) (Set Context!16736))

(assert (=> d!2293914 (= (flatMap!3222 z!3488 lambda!460194) (choose!57501 z!3488 lambda!460194))))

(declare-fun bs!1925511 () Bool)

(assert (= bs!1925511 d!2293914))

(declare-fun m!8049790 () Bool)

(assert (=> bs!1925511 m!8049790))

(assert (=> d!2293898 d!2293914))

(declare-fun d!2293916 () Bool)

(declare-fun nullableFct!3415 (Regex!19428) Bool)

(assert (=> d!2293916 (= (nullable!8468 (h!78388 (exprs!8868 lt!2619126))) (nullableFct!3415 (h!78388 (exprs!8868 lt!2619126))))))

(declare-fun bs!1925512 () Bool)

(assert (= bs!1925512 d!2293916))

(declare-fun m!8049792 () Bool)

(assert (=> bs!1925512 m!8049792))

(assert (=> b!7433540 d!2293916))

(declare-fun d!2293918 () Bool)

(declare-fun res!2985123 () Bool)

(declare-fun e!4439849 () Bool)

(assert (=> d!2293918 (=> res!2985123 e!4439849)))

(assert (=> d!2293918 (= res!2985123 (is-Nil!71941 lt!2619136))))

(assert (=> d!2293918 (= (noDuplicate!3115 lt!2619136) e!4439849)))

(declare-fun b!7433606 () Bool)

(declare-fun e!4439850 () Bool)

(assert (=> b!7433606 (= e!4439849 e!4439850)))

(declare-fun res!2985124 () Bool)

(assert (=> b!7433606 (=> (not res!2985124) (not e!4439850))))

(declare-fun contains!20856 (List!72065 Context!16736) Bool)

(assert (=> b!7433606 (= res!2985124 (not (contains!20856 (t!386626 lt!2619136) (h!78389 lt!2619136))))))

(declare-fun b!7433607 () Bool)

(assert (=> b!7433607 (= e!4439850 (noDuplicate!3115 (t!386626 lt!2619136)))))

(assert (= (and d!2293918 (not res!2985123)) b!7433606))

(assert (= (and b!7433606 res!2985124) b!7433607))

(declare-fun m!8049794 () Bool)

(assert (=> b!7433606 m!8049794))

(declare-fun m!8049796 () Bool)

(assert (=> b!7433607 m!8049796))

(assert (=> d!2293902 d!2293918))

(declare-fun d!2293920 () Bool)

(declare-fun e!4439859 () Bool)

(assert (=> d!2293920 e!4439859))

(declare-fun res!2985129 () Bool)

(assert (=> d!2293920 (=> (not res!2985129) (not e!4439859))))

(declare-fun res!2985130 () List!72065)

(assert (=> d!2293920 (= res!2985129 (noDuplicate!3115 res!2985130))))

(declare-fun e!4439858 () Bool)

(assert (=> d!2293920 e!4439858))

(assert (=> d!2293920 (= (choose!57499 lt!2619127) res!2985130)))

(declare-fun b!7433615 () Bool)

(declare-fun e!4439857 () Bool)

(declare-fun tp!2145187 () Bool)

(assert (=> b!7433615 (= e!4439857 tp!2145187)))

(declare-fun b!7433614 () Bool)

(declare-fun tp!2145188 () Bool)

(assert (=> b!7433614 (= e!4439858 (and (inv!91932 (h!78389 res!2985130)) e!4439857 tp!2145188))))

(declare-fun b!7433616 () Bool)

(assert (=> b!7433616 (= e!4439859 (= (content!15227 res!2985130) lt!2619127))))

(assert (= b!7433614 b!7433615))

(assert (= (and d!2293920 (is-Cons!71941 res!2985130)) b!7433614))

(assert (= (and d!2293920 res!2985129) b!7433616))

(declare-fun m!8049798 () Bool)

(assert (=> d!2293920 m!8049798))

(declare-fun m!8049800 () Bool)

(assert (=> b!7433614 m!8049800))

(declare-fun m!8049802 () Bool)

(assert (=> b!7433616 m!8049802))

(assert (=> d!2293902 d!2293920))

(declare-fun d!2293922 () Bool)

(declare-fun res!2985135 () Bool)

(declare-fun e!4439864 () Bool)

(assert (=> d!2293922 (=> res!2985135 e!4439864)))

(assert (=> d!2293922 (= res!2985135 (is-Nil!71940 (exprs!8868 setElem!56420)))))

(assert (=> d!2293922 (= (forall!18212 (exprs!8868 setElem!56420) lambda!460197) e!4439864)))

(declare-fun b!7433621 () Bool)

(declare-fun e!4439865 () Bool)

(assert (=> b!7433621 (= e!4439864 e!4439865)))

(declare-fun res!2985136 () Bool)

(assert (=> b!7433621 (=> (not res!2985136) (not e!4439865))))

(declare-fun dynLambda!29706 (Int Regex!19428) Bool)

(assert (=> b!7433621 (= res!2985136 (dynLambda!29706 lambda!460197 (h!78388 (exprs!8868 setElem!56420))))))

(declare-fun b!7433622 () Bool)

(assert (=> b!7433622 (= e!4439865 (forall!18212 (t!386625 (exprs!8868 setElem!56420)) lambda!460197))))

(assert (= (and d!2293922 (not res!2985135)) b!7433621))

(assert (= (and b!7433621 res!2985136) b!7433622))

(declare-fun b_lambda!287127 () Bool)

(assert (=> (not b_lambda!287127) (not b!7433621)))

(declare-fun m!8049804 () Bool)

(assert (=> b!7433621 m!8049804))

(declare-fun m!8049806 () Bool)

(assert (=> b!7433622 m!8049806))

(assert (=> d!2293904 d!2293922))

(declare-fun b!7433645 () Bool)

(declare-fun e!4439882 () (Set Context!16736))

(declare-fun e!4439878 () (Set Context!16736))

(assert (=> b!7433645 (= e!4439882 e!4439878)))

(declare-fun c!1376277 () Bool)

(assert (=> b!7433645 (= c!1376277 (is-Concat!28273 (h!78388 (exprs!8868 lt!2619126))))))

(declare-fun b!7433646 () Bool)

(declare-fun call!683156 () (Set Context!16736))

(declare-fun call!683158 () (Set Context!16736))

(assert (=> b!7433646 (= e!4439882 (set.union call!683156 call!683158))))

(declare-fun call!683155 () List!72064)

(declare-fun bm!683148 () Bool)

(declare-fun c!1376280 () Bool)

(assert (=> bm!683148 (= call!683156 (derivationStepZipperDown!3216 (ite c!1376280 (regTwo!39369 (h!78388 (exprs!8868 lt!2619126))) (regOne!39368 (h!78388 (exprs!8868 lt!2619126)))) (ite c!1376280 (Context!16737 (t!386625 (exprs!8868 lt!2619126))) (Context!16737 call!683155)) (h!78390 s!7945)))))

(declare-fun bm!683149 () Bool)

(declare-fun call!683157 () (Set Context!16736))

(assert (=> bm!683149 (= call!683157 call!683158)))

(declare-fun b!7433647 () Bool)

(declare-fun e!4439881 () (Set Context!16736))

(assert (=> b!7433647 (= e!4439881 (set.insert (Context!16737 (t!386625 (exprs!8868 lt!2619126))) (as set.empty (Set Context!16736))))))

(declare-fun b!7433648 () Bool)

(declare-fun c!1376278 () Bool)

(declare-fun e!4439879 () Bool)

(assert (=> b!7433648 (= c!1376278 e!4439879)))

(declare-fun res!2985139 () Bool)

(assert (=> b!7433648 (=> (not res!2985139) (not e!4439879))))

(assert (=> b!7433648 (= res!2985139 (is-Concat!28273 (h!78388 (exprs!8868 lt!2619126))))))

(declare-fun e!4439883 () (Set Context!16736))

(assert (=> b!7433648 (= e!4439883 e!4439882)))

(declare-fun b!7433649 () Bool)

(declare-fun call!683153 () (Set Context!16736))

(assert (=> b!7433649 (= e!4439883 (set.union call!683153 call!683156))))

(declare-fun bm!683151 () Bool)

(assert (=> bm!683151 (= call!683158 call!683153)))

(declare-fun b!7433650 () Bool)

(assert (=> b!7433650 (= e!4439879 (nullable!8468 (regOne!39368 (h!78388 (exprs!8868 lt!2619126)))))))

(declare-fun b!7433651 () Bool)

(declare-fun e!4439880 () (Set Context!16736))

(assert (=> b!7433651 (= e!4439880 call!683157)))

(declare-fun bm!683152 () Bool)

(declare-fun call!683154 () List!72064)

(assert (=> bm!683152 (= call!683153 (derivationStepZipperDown!3216 (ite c!1376280 (regOne!39369 (h!78388 (exprs!8868 lt!2619126))) (ite c!1376278 (regTwo!39368 (h!78388 (exprs!8868 lt!2619126))) (ite c!1376277 (regOne!39368 (h!78388 (exprs!8868 lt!2619126))) (reg!19757 (h!78388 (exprs!8868 lt!2619126)))))) (ite (or c!1376280 c!1376278) (Context!16737 (t!386625 (exprs!8868 lt!2619126))) (Context!16737 call!683154)) (h!78390 s!7945)))))

(declare-fun b!7433652 () Bool)

(assert (=> b!7433652 (= e!4439880 (as set.empty (Set Context!16736)))))

(declare-fun bm!683150 () Bool)

(declare-fun $colon$colon!3349 (List!72064 Regex!19428) List!72064)

(assert (=> bm!683150 (= call!683155 ($colon$colon!3349 (exprs!8868 (Context!16737 (t!386625 (exprs!8868 lt!2619126)))) (ite (or c!1376278 c!1376277) (regTwo!39368 (h!78388 (exprs!8868 lt!2619126))) (h!78388 (exprs!8868 lt!2619126)))))))

(declare-fun d!2293924 () Bool)

(declare-fun c!1376279 () Bool)

(assert (=> d!2293924 (= c!1376279 (and (is-ElementMatch!19428 (h!78388 (exprs!8868 lt!2619126))) (= (c!1376246 (h!78388 (exprs!8868 lt!2619126))) (h!78390 s!7945))))))

(assert (=> d!2293924 (= (derivationStepZipperDown!3216 (h!78388 (exprs!8868 lt!2619126)) (Context!16737 (t!386625 (exprs!8868 lt!2619126))) (h!78390 s!7945)) e!4439881)))

(declare-fun b!7433653 () Bool)

(assert (=> b!7433653 (= e!4439881 e!4439883)))

(assert (=> b!7433653 (= c!1376280 (is-Union!19428 (h!78388 (exprs!8868 lt!2619126))))))

(declare-fun b!7433654 () Bool)

(declare-fun c!1376281 () Bool)

(assert (=> b!7433654 (= c!1376281 (is-Star!19428 (h!78388 (exprs!8868 lt!2619126))))))

(assert (=> b!7433654 (= e!4439878 e!4439880)))

(declare-fun bm!683153 () Bool)

(assert (=> bm!683153 (= call!683154 call!683155)))

(declare-fun b!7433655 () Bool)

(assert (=> b!7433655 (= e!4439878 call!683157)))

(assert (= (and d!2293924 c!1376279) b!7433647))

(assert (= (and d!2293924 (not c!1376279)) b!7433653))

(assert (= (and b!7433653 c!1376280) b!7433649))

(assert (= (and b!7433653 (not c!1376280)) b!7433648))

(assert (= (and b!7433648 res!2985139) b!7433650))

(assert (= (and b!7433648 c!1376278) b!7433646))

(assert (= (and b!7433648 (not c!1376278)) b!7433645))

(assert (= (and b!7433645 c!1376277) b!7433655))

(assert (= (and b!7433645 (not c!1376277)) b!7433654))

(assert (= (and b!7433654 c!1376281) b!7433651))

(assert (= (and b!7433654 (not c!1376281)) b!7433652))

(assert (= (or b!7433655 b!7433651) bm!683153))

(assert (= (or b!7433655 b!7433651) bm!683149))

(assert (= (or b!7433646 bm!683149) bm!683151))

(assert (= (or b!7433646 bm!683153) bm!683150))

(assert (= (or b!7433649 b!7433646) bm!683148))

(assert (= (or b!7433649 bm!683151) bm!683152))

(declare-fun m!8049808 () Bool)

(assert (=> b!7433650 m!8049808))

(declare-fun m!8049810 () Bool)

(assert (=> bm!683152 m!8049810))

(declare-fun m!8049812 () Bool)

(assert (=> bm!683150 m!8049812))

(declare-fun m!8049814 () Bool)

(assert (=> bm!683148 m!8049814))

(declare-fun m!8049816 () Bool)

(assert (=> b!7433647 m!8049816))

(assert (=> bm!683132 d!2293924))

(declare-fun call!683159 () (Set Context!16736))

(declare-fun e!4439886 () (Set Context!16736))

(declare-fun b!7433656 () Bool)

(assert (=> b!7433656 (= e!4439886 (set.union call!683159 (derivationStepZipperUp!2824 (Context!16737 (t!386625 (exprs!8868 (Context!16737 (t!386625 (exprs!8868 lt!2619126)))))) (h!78390 s!7945))))))

(declare-fun b!7433657 () Bool)

(declare-fun e!4439884 () (Set Context!16736))

(assert (=> b!7433657 (= e!4439886 e!4439884)))

(declare-fun c!1376283 () Bool)

(assert (=> b!7433657 (= c!1376283 (is-Cons!71940 (exprs!8868 (Context!16737 (t!386625 (exprs!8868 lt!2619126))))))))

(declare-fun b!7433658 () Bool)

(declare-fun e!4439885 () Bool)

(assert (=> b!7433658 (= e!4439885 (nullable!8468 (h!78388 (exprs!8868 (Context!16737 (t!386625 (exprs!8868 lt!2619126)))))))))

(declare-fun b!7433659 () Bool)

(assert (=> b!7433659 (= e!4439884 call!683159)))

(declare-fun d!2293926 () Bool)

(declare-fun c!1376282 () Bool)

(assert (=> d!2293926 (= c!1376282 e!4439885)))

(declare-fun res!2985140 () Bool)

(assert (=> d!2293926 (=> (not res!2985140) (not e!4439885))))

(assert (=> d!2293926 (= res!2985140 (is-Cons!71940 (exprs!8868 (Context!16737 (t!386625 (exprs!8868 lt!2619126))))))))

(assert (=> d!2293926 (= (derivationStepZipperUp!2824 (Context!16737 (t!386625 (exprs!8868 lt!2619126))) (h!78390 s!7945)) e!4439886)))

(declare-fun bm!683154 () Bool)

(assert (=> bm!683154 (= call!683159 (derivationStepZipperDown!3216 (h!78388 (exprs!8868 (Context!16737 (t!386625 (exprs!8868 lt!2619126))))) (Context!16737 (t!386625 (exprs!8868 (Context!16737 (t!386625 (exprs!8868 lt!2619126)))))) (h!78390 s!7945)))))

(declare-fun b!7433660 () Bool)

(assert (=> b!7433660 (= e!4439884 (as set.empty (Set Context!16736)))))

(assert (= (and d!2293926 res!2985140) b!7433658))

(assert (= (and d!2293926 c!1376282) b!7433656))

(assert (= (and d!2293926 (not c!1376282)) b!7433657))

(assert (= (and b!7433657 c!1376283) b!7433659))

(assert (= (and b!7433657 (not c!1376283)) b!7433660))

(assert (= (or b!7433656 b!7433659) bm!683154))

(declare-fun m!8049818 () Bool)

(assert (=> b!7433656 m!8049818))

(declare-fun m!8049820 () Bool)

(assert (=> b!7433658 m!8049820))

(declare-fun m!8049822 () Bool)

(assert (=> bm!683154 m!8049822))

(assert (=> b!7433536 d!2293926))

(declare-fun condSetEmpty!56430 () Bool)

(assert (=> setNonEmpty!56426 (= condSetEmpty!56430 (= setRest!56426 (as set.empty (Set Context!16736))))))

(declare-fun setRes!56430 () Bool)

(assert (=> setNonEmpty!56426 (= tp!2145167 setRes!56430)))

(declare-fun setIsEmpty!56430 () Bool)

(assert (=> setIsEmpty!56430 setRes!56430))

(declare-fun setElem!56430 () Context!16736)

(declare-fun e!4439887 () Bool)

(declare-fun tp!2145190 () Bool)

(declare-fun setNonEmpty!56430 () Bool)

(assert (=> setNonEmpty!56430 (= setRes!56430 (and tp!2145190 (inv!91932 setElem!56430) e!4439887))))

(declare-fun setRest!56430 () (Set Context!16736))

(assert (=> setNonEmpty!56430 (= setRest!56426 (set.union (set.insert setElem!56430 (as set.empty (Set Context!16736))) setRest!56430))))

(declare-fun b!7433661 () Bool)

(declare-fun tp!2145189 () Bool)

(assert (=> b!7433661 (= e!4439887 tp!2145189)))

(assert (= (and setNonEmpty!56426 condSetEmpty!56430) setIsEmpty!56430))

(assert (= (and setNonEmpty!56426 (not condSetEmpty!56430)) setNonEmpty!56430))

(assert (= setNonEmpty!56430 b!7433661))

(declare-fun m!8049824 () Bool)

(assert (=> setNonEmpty!56430 m!8049824))

(declare-fun b!7433662 () Bool)

(declare-fun e!4439888 () Bool)

(declare-fun tp!2145191 () Bool)

(declare-fun tp!2145192 () Bool)

(assert (=> b!7433662 (= e!4439888 (and tp!2145191 tp!2145192))))

(assert (=> b!7433575 (= tp!2145166 e!4439888)))

(assert (= (and b!7433575 (is-Cons!71940 (exprs!8868 setElem!56426))) b!7433662))

(declare-fun b!7433663 () Bool)

(declare-fun e!4439889 () Bool)

(declare-fun tp!2145193 () Bool)

(assert (=> b!7433663 (= e!4439889 (and tp_is_empty!49119 tp!2145193))))

(assert (=> b!7433565 (= tp!2145155 e!4439889)))

(assert (= (and b!7433565 (is-Cons!71942 (t!386627 (t!386627 s!7945)))) b!7433663))

(declare-fun e!4439892 () Bool)

(assert (=> b!7433570 (= tp!2145160 e!4439892)))

(declare-fun b!7433676 () Bool)

(declare-fun tp!2145205 () Bool)

(assert (=> b!7433676 (= e!4439892 tp!2145205)))

(declare-fun b!7433677 () Bool)

(declare-fun tp!2145204 () Bool)

(declare-fun tp!2145208 () Bool)

(assert (=> b!7433677 (= e!4439892 (and tp!2145204 tp!2145208))))

(declare-fun b!7433675 () Bool)

(declare-fun tp!2145207 () Bool)

(declare-fun tp!2145206 () Bool)

(assert (=> b!7433675 (= e!4439892 (and tp!2145207 tp!2145206))))

(declare-fun b!7433674 () Bool)

(assert (=> b!7433674 (= e!4439892 tp_is_empty!49119)))

(assert (= (and b!7433570 (is-ElementMatch!19428 (h!78388 (exprs!8868 setElem!56420)))) b!7433674))

(assert (= (and b!7433570 (is-Concat!28273 (h!78388 (exprs!8868 setElem!56420)))) b!7433675))

(assert (= (and b!7433570 (is-Star!19428 (h!78388 (exprs!8868 setElem!56420)))) b!7433676))

(assert (= (and b!7433570 (is-Union!19428 (h!78388 (exprs!8868 setElem!56420)))) b!7433677))

(declare-fun b!7433678 () Bool)

(declare-fun e!4439893 () Bool)

(declare-fun tp!2145209 () Bool)

(declare-fun tp!2145210 () Bool)

(assert (=> b!7433678 (= e!4439893 (and tp!2145209 tp!2145210))))

(assert (=> b!7433570 (= tp!2145161 e!4439893)))

(assert (= (and b!7433570 (is-Cons!71940 (t!386625 (exprs!8868 setElem!56420)))) b!7433678))

(declare-fun b_lambda!287129 () Bool)

(assert (= b_lambda!287127 (or d!2293904 b_lambda!287129)))

(declare-fun bs!1925513 () Bool)

(declare-fun d!2293928 () Bool)

(assert (= bs!1925513 (and d!2293928 d!2293904)))

(declare-fun validRegex!9972 (Regex!19428) Bool)

(assert (=> bs!1925513 (= (dynLambda!29706 lambda!460197 (h!78388 (exprs!8868 setElem!56420))) (validRegex!9972 (h!78388 (exprs!8868 setElem!56420))))))

(declare-fun m!8049826 () Bool)

(assert (=> bs!1925513 m!8049826))

(assert (=> b!7433621 d!2293928))

(push 1)

(assert (not b!7433607))

(assert (not b!7433650))

(assert (not b_lambda!287129))

(assert (not b!7433678))

(assert (not b!7433601))

(assert (not b!7433677))

(assert tp_is_empty!49119)

(assert (not b!7433614))

(assert (not b!7433622))

(assert (not bm!683148))

(assert (not b!7433661))

(assert (not d!2293912))

(assert (not b!7433656))

(assert (not setNonEmpty!56430))

(assert (not d!2293914))

(assert (not bm!683152))

(assert (not bm!683150))

(assert (not b!7433662))

(assert (not d!2293920))

(assert (not b!7433615))

(assert (not b!7433675))

(assert (not bm!683154))

(assert (not b!7433658))

(assert (not b!7433663))

(assert (not b!7433616))

(assert (not b!7433606))

(assert (not bs!1925513))

(assert (not d!2293916))

(assert (not b!7433676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

