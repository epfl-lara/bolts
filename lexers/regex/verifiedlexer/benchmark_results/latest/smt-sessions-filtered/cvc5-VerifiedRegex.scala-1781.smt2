; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!88848 () Bool)

(assert start!88848)

(declare-fun b!1020642 () Bool)

(assert (=> b!1020642 true))

(assert (=> b!1020642 true))

(declare-fun lambda!36264 () Int)

(declare-fun lambda!36263 () Int)

(assert (=> b!1020642 (not (= lambda!36264 lambda!36263))))

(assert (=> b!1020642 true))

(assert (=> b!1020642 true))

(declare-fun b!1020638 () Bool)

(declare-fun e!651829 () Bool)

(declare-fun tp!310148 () Bool)

(declare-fun tp!310147 () Bool)

(assert (=> b!1020638 (= e!651829 (and tp!310148 tp!310147))))

(declare-fun b!1020639 () Bool)

(declare-fun e!651827 () Bool)

(declare-fun e!651831 () Bool)

(assert (=> b!1020639 (= e!651827 e!651831)))

(declare-fun res!458616 () Bool)

(assert (=> b!1020639 (=> res!458616 e!651831)))

(declare-fun lt!354267 () Bool)

(declare-fun lt!354269 () Bool)

(assert (=> b!1020639 (= res!458616 (or (not lt!354267) (not lt!354269)))))

(assert (=> b!1020639 (= lt!354269 lt!354267)))

(declare-datatypes ((C!6210 0))(
  ( (C!6211 (val!3353 Int)) )
))
(declare-datatypes ((Regex!2820 0))(
  ( (ElementMatch!2820 (c!169131 C!6210)) (Concat!4653 (regOne!6152 Regex!2820) (regTwo!6152 Regex!2820)) (EmptyExpr!2820) (Star!2820 (reg!3149 Regex!2820)) (EmptyLang!2820) (Union!2820 (regOne!6153 Regex!2820) (regTwo!6153 Regex!2820)) )
))
(declare-fun lt!354268 () Regex!2820)

(declare-datatypes ((List!10050 0))(
  ( (Nil!10034) (Cons!10034 (h!15435 C!6210) (t!101096 List!10050)) )
))
(declare-fun s!10566 () List!10050)

(declare-fun matchR!1356 (Regex!2820 List!10050) Bool)

(assert (=> b!1020639 (= lt!354267 (matchR!1356 lt!354268 s!10566))))

(declare-fun r!15766 () Regex!2820)

(assert (=> b!1020639 (= lt!354269 (matchR!1356 (regTwo!6152 r!15766) s!10566))))

(declare-fun removeUselessConcat!389 (Regex!2820) Regex!2820)

(assert (=> b!1020639 (= lt!354268 (removeUselessConcat!389 (regTwo!6152 r!15766)))))

(declare-datatypes ((Unit!15315 0))(
  ( (Unit!15316) )
))
(declare-fun lt!354266 () Unit!15315)

(declare-fun lemmaRemoveUselessConcatSound!229 (Regex!2820 List!10050) Unit!15315)

(assert (=> b!1020639 (= lt!354266 (lemmaRemoveUselessConcatSound!229 (regTwo!6152 r!15766) s!10566))))

(declare-fun b!1020640 () Bool)

(declare-fun res!458614 () Bool)

(assert (=> b!1020640 (=> res!458614 e!651827)))

(declare-datatypes ((tuple2!11422 0))(
  ( (tuple2!11423 (_1!6537 List!10050) (_2!6537 List!10050)) )
))
(declare-datatypes ((Option!2353 0))(
  ( (None!2352) (Some!2352 (v!19769 tuple2!11422)) )
))
(declare-fun lt!354274 () Option!2353)

(declare-fun isEmpty!6387 (Option!2353) Bool)

(assert (=> b!1020640 (= res!458614 (not (isEmpty!6387 lt!354274)))))

(declare-fun res!458617 () Bool)

(declare-fun e!651828 () Bool)

(assert (=> start!88848 (=> (not res!458617) (not e!651828))))

(declare-fun validRegex!1289 (Regex!2820) Bool)

(assert (=> start!88848 (= res!458617 (validRegex!1289 r!15766))))

(assert (=> start!88848 e!651828))

(assert (=> start!88848 e!651829))

(declare-fun e!651830 () Bool)

(assert (=> start!88848 e!651830))

(declare-fun b!1020641 () Bool)

(declare-fun tp!310149 () Bool)

(assert (=> b!1020641 (= e!651829 tp!310149)))

(declare-fun e!651826 () Bool)

(assert (=> b!1020642 (= e!651826 e!651827)))

(declare-fun res!458613 () Bool)

(assert (=> b!1020642 (=> res!458613 e!651827)))

(declare-fun isEmpty!6388 (List!10050) Bool)

(assert (=> b!1020642 (= res!458613 (isEmpty!6388 s!10566))))

(declare-fun Exists!549 (Int) Bool)

(assert (=> b!1020642 (= (Exists!549 lambda!36263) (Exists!549 lambda!36264))))

(declare-fun lt!354272 () Unit!15315)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!251 (Regex!2820 Regex!2820 List!10050) Unit!15315)

(assert (=> b!1020642 (= lt!354272 (lemmaExistCutMatchRandMatchRSpecEquivalent!251 EmptyExpr!2820 (regTwo!6152 r!15766) s!10566))))

(declare-fun isDefined!1995 (Option!2353) Bool)

(assert (=> b!1020642 (= (isDefined!1995 lt!354274) (Exists!549 lambda!36263))))

(declare-fun findConcatSeparation!459 (Regex!2820 Regex!2820 List!10050 List!10050 List!10050) Option!2353)

(assert (=> b!1020642 (= lt!354274 (findConcatSeparation!459 EmptyExpr!2820 (regTwo!6152 r!15766) Nil!10034 s!10566 s!10566))))

(declare-fun lt!354271 () Unit!15315)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!459 (Regex!2820 Regex!2820 List!10050) Unit!15315)

(assert (=> b!1020642 (= lt!354271 (lemmaFindConcatSeparationEquivalentToExists!459 EmptyExpr!2820 (regTwo!6152 r!15766) s!10566))))

(declare-fun b!1020643 () Bool)

(declare-fun tp_is_empty!5283 () Bool)

(assert (=> b!1020643 (= e!651829 tp_is_empty!5283)))

(declare-fun b!1020644 () Bool)

(assert (=> b!1020644 (= e!651831 (validRegex!1289 (regTwo!6152 r!15766)))))

(declare-fun b!1020645 () Bool)

(declare-fun tp!310145 () Bool)

(declare-fun tp!310146 () Bool)

(assert (=> b!1020645 (= e!651829 (and tp!310145 tp!310146))))

(declare-fun b!1020646 () Bool)

(assert (=> b!1020646 (= e!651828 (not e!651826))))

(declare-fun res!458615 () Bool)

(assert (=> b!1020646 (=> res!458615 e!651826)))

(declare-fun lt!354270 () Bool)

(assert (=> b!1020646 (= res!458615 (or lt!354270 (not (is-Concat!4653 r!15766)) (not (is-EmptyExpr!2820 (regOne!6152 r!15766)))))))

(declare-fun matchRSpec!619 (Regex!2820 List!10050) Bool)

(assert (=> b!1020646 (= lt!354270 (matchRSpec!619 r!15766 s!10566))))

(assert (=> b!1020646 (= lt!354270 (matchR!1356 r!15766 s!10566))))

(declare-fun lt!354273 () Unit!15315)

(declare-fun mainMatchTheorem!619 (Regex!2820 List!10050) Unit!15315)

(assert (=> b!1020646 (= lt!354273 (mainMatchTheorem!619 r!15766 s!10566))))

(declare-fun b!1020647 () Bool)

(declare-fun tp!310150 () Bool)

(assert (=> b!1020647 (= e!651830 (and tp_is_empty!5283 tp!310150))))

(assert (= (and start!88848 res!458617) b!1020646))

(assert (= (and b!1020646 (not res!458615)) b!1020642))

(assert (= (and b!1020642 (not res!458613)) b!1020640))

(assert (= (and b!1020640 (not res!458614)) b!1020639))

(assert (= (and b!1020639 (not res!458616)) b!1020644))

(assert (= (and start!88848 (is-ElementMatch!2820 r!15766)) b!1020643))

(assert (= (and start!88848 (is-Concat!4653 r!15766)) b!1020645))

(assert (= (and start!88848 (is-Star!2820 r!15766)) b!1020641))

(assert (= (and start!88848 (is-Union!2820 r!15766)) b!1020638))

(assert (= (and start!88848 (is-Cons!10034 s!10566)) b!1020647))

(declare-fun m!1199837 () Bool)

(assert (=> b!1020644 m!1199837))

(declare-fun m!1199839 () Bool)

(assert (=> b!1020640 m!1199839))

(declare-fun m!1199841 () Bool)

(assert (=> start!88848 m!1199841))

(declare-fun m!1199843 () Bool)

(assert (=> b!1020646 m!1199843))

(declare-fun m!1199845 () Bool)

(assert (=> b!1020646 m!1199845))

(declare-fun m!1199847 () Bool)

(assert (=> b!1020646 m!1199847))

(declare-fun m!1199849 () Bool)

(assert (=> b!1020639 m!1199849))

(declare-fun m!1199851 () Bool)

(assert (=> b!1020639 m!1199851))

(declare-fun m!1199853 () Bool)

(assert (=> b!1020639 m!1199853))

(declare-fun m!1199855 () Bool)

(assert (=> b!1020639 m!1199855))

(declare-fun m!1199857 () Bool)

(assert (=> b!1020642 m!1199857))

(declare-fun m!1199859 () Bool)

(assert (=> b!1020642 m!1199859))

(declare-fun m!1199861 () Bool)

(assert (=> b!1020642 m!1199861))

(declare-fun m!1199863 () Bool)

(assert (=> b!1020642 m!1199863))

(declare-fun m!1199865 () Bool)

(assert (=> b!1020642 m!1199865))

(declare-fun m!1199867 () Bool)

(assert (=> b!1020642 m!1199867))

(assert (=> b!1020642 m!1199865))

(declare-fun m!1199869 () Bool)

(assert (=> b!1020642 m!1199869))

(push 1)

(assert (not b!1020640))

(assert tp_is_empty!5283)

(assert (not b!1020646))

(assert (not b!1020647))

(assert (not start!88848))

(assert (not b!1020639))

(assert (not b!1020644))

(assert (not b!1020645))

(assert (not b!1020641))

(assert (not b!1020642))

(assert (not b!1020638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!246656 () Bool)

(declare-fun b!1020738 () Bool)

(assert (= bs!246656 (and b!1020738 b!1020642)))

(declare-fun lambda!36277 () Int)

(assert (=> bs!246656 (not (= lambda!36277 lambda!36263))))

(assert (=> bs!246656 (not (= lambda!36277 lambda!36264))))

(assert (=> b!1020738 true))

(assert (=> b!1020738 true))

(declare-fun bs!246657 () Bool)

(declare-fun b!1020735 () Bool)

(assert (= bs!246657 (and b!1020735 b!1020642)))

(declare-fun lambda!36278 () Int)

(assert (=> bs!246657 (not (= lambda!36278 lambda!36263))))

(assert (=> bs!246657 (= (= (regOne!6152 r!15766) EmptyExpr!2820) (= lambda!36278 lambda!36264))))

(declare-fun bs!246658 () Bool)

(assert (= bs!246658 (and b!1020735 b!1020738)))

(assert (=> bs!246658 (not (= lambda!36278 lambda!36277))))

(assert (=> b!1020735 true))

(assert (=> b!1020735 true))

(declare-fun b!1020730 () Bool)

(declare-fun e!651874 () Bool)

(declare-fun e!651878 () Bool)

(assert (=> b!1020730 (= e!651874 e!651878)))

(declare-fun res!458661 () Bool)

(assert (=> b!1020730 (= res!458661 (not (is-EmptyLang!2820 r!15766)))))

(assert (=> b!1020730 (=> (not res!458661) (not e!651878))))

(declare-fun b!1020731 () Bool)

(declare-fun e!651877 () Bool)

(declare-fun e!651876 () Bool)

(assert (=> b!1020731 (= e!651877 e!651876)))

(declare-fun c!169143 () Bool)

(assert (=> b!1020731 (= c!169143 (is-Star!2820 r!15766))))

(declare-fun b!1020732 () Bool)

(declare-fun e!651875 () Bool)

(assert (=> b!1020732 (= e!651875 (= s!10566 (Cons!10034 (c!169131 r!15766) Nil!10034)))))

(declare-fun d!294350 () Bool)

(declare-fun c!169141 () Bool)

(assert (=> d!294350 (= c!169141 (is-EmptyExpr!2820 r!15766))))

(assert (=> d!294350 (= (matchRSpec!619 r!15766 s!10566) e!651874)))

(declare-fun b!1020733 () Bool)

(declare-fun call!69846 () Bool)

(assert (=> b!1020733 (= e!651874 call!69846)))

(declare-fun b!1020734 () Bool)

(declare-fun res!458662 () Bool)

(declare-fun e!651880 () Bool)

(assert (=> b!1020734 (=> res!458662 e!651880)))

(assert (=> b!1020734 (= res!458662 call!69846)))

(assert (=> b!1020734 (= e!651876 e!651880)))

(declare-fun call!69847 () Bool)

(assert (=> b!1020735 (= e!651876 call!69847)))

(declare-fun b!1020736 () Bool)

(declare-fun c!169142 () Bool)

(assert (=> b!1020736 (= c!169142 (is-ElementMatch!2820 r!15766))))

(assert (=> b!1020736 (= e!651878 e!651875)))

(declare-fun bm!69841 () Bool)

(assert (=> bm!69841 (= call!69847 (Exists!549 (ite c!169143 lambda!36277 lambda!36278)))))

(declare-fun bm!69842 () Bool)

(assert (=> bm!69842 (= call!69846 (isEmpty!6388 s!10566))))

(declare-fun b!1020737 () Bool)

(declare-fun c!169144 () Bool)

(assert (=> b!1020737 (= c!169144 (is-Union!2820 r!15766))))

(assert (=> b!1020737 (= e!651875 e!651877)))

(assert (=> b!1020738 (= e!651880 call!69847)))

(declare-fun b!1020739 () Bool)

(declare-fun e!651879 () Bool)

(assert (=> b!1020739 (= e!651879 (matchRSpec!619 (regTwo!6153 r!15766) s!10566))))

(declare-fun b!1020740 () Bool)

(assert (=> b!1020740 (= e!651877 e!651879)))

(declare-fun res!458663 () Bool)

(assert (=> b!1020740 (= res!458663 (matchRSpec!619 (regOne!6153 r!15766) s!10566))))

(assert (=> b!1020740 (=> res!458663 e!651879)))

(assert (= (and d!294350 c!169141) b!1020733))

(assert (= (and d!294350 (not c!169141)) b!1020730))

(assert (= (and b!1020730 res!458661) b!1020736))

(assert (= (and b!1020736 c!169142) b!1020732))

(assert (= (and b!1020736 (not c!169142)) b!1020737))

(assert (= (and b!1020737 c!169144) b!1020740))

(assert (= (and b!1020737 (not c!169144)) b!1020731))

(assert (= (and b!1020740 (not res!458663)) b!1020739))

(assert (= (and b!1020731 c!169143) b!1020734))

(assert (= (and b!1020731 (not c!169143)) b!1020735))

(assert (= (and b!1020734 (not res!458662)) b!1020738))

(assert (= (or b!1020738 b!1020735) bm!69841))

(assert (= (or b!1020733 b!1020734) bm!69842))

(declare-fun m!1199905 () Bool)

(assert (=> bm!69841 m!1199905))

(assert (=> bm!69842 m!1199867))

(declare-fun m!1199907 () Bool)

(assert (=> b!1020739 m!1199907))

(declare-fun m!1199909 () Bool)

(assert (=> b!1020740 m!1199909))

(assert (=> b!1020646 d!294350))

(declare-fun bm!69845 () Bool)

(declare-fun call!69850 () Bool)

(assert (=> bm!69845 (= call!69850 (isEmpty!6388 s!10566))))

(declare-fun b!1020791 () Bool)

(declare-fun e!651912 () Bool)

(declare-fun head!1879 (List!10050) C!6210)

(assert (=> b!1020791 (= e!651912 (= (head!1879 s!10566) (c!169131 r!15766)))))

(declare-fun b!1020792 () Bool)

(declare-fun e!651913 () Bool)

(declare-fun derivativeStep!725 (Regex!2820 C!6210) Regex!2820)

(declare-fun tail!1441 (List!10050) List!10050)

(assert (=> b!1020792 (= e!651913 (matchR!1356 (derivativeStep!725 r!15766 (head!1879 s!10566)) (tail!1441 s!10566)))))

(declare-fun b!1020793 () Bool)

(declare-fun nullable!923 (Regex!2820) Bool)

(assert (=> b!1020793 (= e!651913 (nullable!923 r!15766))))

(declare-fun d!294354 () Bool)

(declare-fun e!651909 () Bool)

(assert (=> d!294354 e!651909))

(declare-fun c!169160 () Bool)

(assert (=> d!294354 (= c!169160 (is-EmptyExpr!2820 r!15766))))

(declare-fun lt!354304 () Bool)

(assert (=> d!294354 (= lt!354304 e!651913)))

(declare-fun c!169159 () Bool)

(assert (=> d!294354 (= c!169159 (isEmpty!6388 s!10566))))

(assert (=> d!294354 (validRegex!1289 r!15766)))

(assert (=> d!294354 (= (matchR!1356 r!15766 s!10566) lt!354304)))

(declare-fun b!1020794 () Bool)

(declare-fun e!651911 () Bool)

(assert (=> b!1020794 (= e!651909 e!651911)))

(declare-fun c!169161 () Bool)

(assert (=> b!1020794 (= c!169161 (is-EmptyLang!2820 r!15766))))

(declare-fun b!1020795 () Bool)

(declare-fun res!458692 () Bool)

(declare-fun e!651914 () Bool)

(assert (=> b!1020795 (=> res!458692 e!651914)))

(assert (=> b!1020795 (= res!458692 (not (isEmpty!6388 (tail!1441 s!10566))))))

(declare-fun b!1020796 () Bool)

(declare-fun res!458690 () Bool)

(declare-fun e!651915 () Bool)

(assert (=> b!1020796 (=> res!458690 e!651915)))

(assert (=> b!1020796 (= res!458690 e!651912)))

(declare-fun res!458691 () Bool)

(assert (=> b!1020796 (=> (not res!458691) (not e!651912))))

(assert (=> b!1020796 (= res!458691 lt!354304)))

(declare-fun b!1020797 () Bool)

(assert (=> b!1020797 (= e!651911 (not lt!354304))))

(declare-fun b!1020798 () Bool)

(declare-fun e!651910 () Bool)

(assert (=> b!1020798 (= e!651910 e!651914)))

(declare-fun res!458689 () Bool)

(assert (=> b!1020798 (=> res!458689 e!651914)))

(assert (=> b!1020798 (= res!458689 call!69850)))

(declare-fun b!1020799 () Bool)

(assert (=> b!1020799 (= e!651915 e!651910)))

(declare-fun res!458687 () Bool)

(assert (=> b!1020799 (=> (not res!458687) (not e!651910))))

(assert (=> b!1020799 (= res!458687 (not lt!354304))))

(declare-fun b!1020800 () Bool)

(assert (=> b!1020800 (= e!651909 (= lt!354304 call!69850))))

(declare-fun b!1020801 () Bool)

(declare-fun res!458688 () Bool)

(assert (=> b!1020801 (=> (not res!458688) (not e!651912))))

(assert (=> b!1020801 (= res!458688 (not call!69850))))

(declare-fun b!1020802 () Bool)

(assert (=> b!1020802 (= e!651914 (not (= (head!1879 s!10566) (c!169131 r!15766))))))

(declare-fun b!1020803 () Bool)

(declare-fun res!458686 () Bool)

(assert (=> b!1020803 (=> res!458686 e!651915)))

(assert (=> b!1020803 (= res!458686 (not (is-ElementMatch!2820 r!15766)))))

(assert (=> b!1020803 (= e!651911 e!651915)))

(declare-fun b!1020804 () Bool)

(declare-fun res!458693 () Bool)

(assert (=> b!1020804 (=> (not res!458693) (not e!651912))))

(assert (=> b!1020804 (= res!458693 (isEmpty!6388 (tail!1441 s!10566)))))

(assert (= (and d!294354 c!169159) b!1020793))

(assert (= (and d!294354 (not c!169159)) b!1020792))

(assert (= (and d!294354 c!169160) b!1020800))

(assert (= (and d!294354 (not c!169160)) b!1020794))

(assert (= (and b!1020794 c!169161) b!1020797))

(assert (= (and b!1020794 (not c!169161)) b!1020803))

(assert (= (and b!1020803 (not res!458686)) b!1020796))

(assert (= (and b!1020796 res!458691) b!1020801))

(assert (= (and b!1020801 res!458688) b!1020804))

(assert (= (and b!1020804 res!458693) b!1020791))

(assert (= (and b!1020796 (not res!458690)) b!1020799))

(assert (= (and b!1020799 res!458687) b!1020798))

(assert (= (and b!1020798 (not res!458689)) b!1020795))

(assert (= (and b!1020795 (not res!458692)) b!1020802))

(assert (= (or b!1020800 b!1020798 b!1020801) bm!69845))

(declare-fun m!1199911 () Bool)

(assert (=> b!1020795 m!1199911))

(assert (=> b!1020795 m!1199911))

(declare-fun m!1199913 () Bool)

(assert (=> b!1020795 m!1199913))

(assert (=> b!1020804 m!1199911))

(assert (=> b!1020804 m!1199911))

(assert (=> b!1020804 m!1199913))

(declare-fun m!1199915 () Bool)

(assert (=> b!1020791 m!1199915))

(declare-fun m!1199917 () Bool)

(assert (=> b!1020793 m!1199917))

(assert (=> b!1020792 m!1199915))

(assert (=> b!1020792 m!1199915))

(declare-fun m!1199919 () Bool)

(assert (=> b!1020792 m!1199919))

(assert (=> b!1020792 m!1199911))

(assert (=> b!1020792 m!1199919))

(assert (=> b!1020792 m!1199911))

(declare-fun m!1199921 () Bool)

(assert (=> b!1020792 m!1199921))

(assert (=> b!1020802 m!1199915))

(assert (=> d!294354 m!1199867))

(assert (=> d!294354 m!1199841))

(assert (=> bm!69845 m!1199867))

(assert (=> b!1020646 d!294354))

(declare-fun d!294356 () Bool)

(assert (=> d!294356 (= (matchR!1356 r!15766 s!10566) (matchRSpec!619 r!15766 s!10566))))

(declare-fun lt!354307 () Unit!15315)

(declare-fun choose!6450 (Regex!2820 List!10050) Unit!15315)

(assert (=> d!294356 (= lt!354307 (choose!6450 r!15766 s!10566))))

(assert (=> d!294356 (validRegex!1289 r!15766)))

(assert (=> d!294356 (= (mainMatchTheorem!619 r!15766 s!10566) lt!354307)))

(declare-fun bs!246659 () Bool)

(assert (= bs!246659 d!294356))

(assert (=> bs!246659 m!1199845))

(assert (=> bs!246659 m!1199843))

(declare-fun m!1199923 () Bool)

(assert (=> bs!246659 m!1199923))

(assert (=> bs!246659 m!1199841))

(assert (=> b!1020646 d!294356))

(declare-fun d!294358 () Bool)

(assert (=> d!294358 (= (isEmpty!6387 lt!354274) (not (is-Some!2352 lt!354274)))))

(assert (=> b!1020640 d!294358))

(declare-fun b!1020833 () Bool)

(declare-fun e!651939 () Bool)

(declare-fun e!651937 () Bool)

(assert (=> b!1020833 (= e!651939 e!651937)))

(declare-fun c!169166 () Bool)

(assert (=> b!1020833 (= c!169166 (is-Union!2820 (regTwo!6152 r!15766)))))

(declare-fun b!1020834 () Bool)

(declare-fun e!651940 () Bool)

(declare-fun call!69861 () Bool)

(assert (=> b!1020834 (= e!651940 call!69861)))

(declare-fun b!1020835 () Bool)

(declare-fun e!651938 () Bool)

(assert (=> b!1020835 (= e!651938 e!651939)))

(declare-fun c!169167 () Bool)

(assert (=> b!1020835 (= c!169167 (is-Star!2820 (regTwo!6152 r!15766)))))

(declare-fun b!1020836 () Bool)

(declare-fun e!651936 () Bool)

(declare-fun call!69860 () Bool)

(assert (=> b!1020836 (= e!651936 call!69860)))

(declare-fun b!1020837 () Bool)

(declare-fun e!651935 () Bool)

(assert (=> b!1020837 (= e!651935 e!651940)))

(declare-fun res!458717 () Bool)

(assert (=> b!1020837 (=> (not res!458717) (not e!651940))))

(declare-fun call!69859 () Bool)

(assert (=> b!1020837 (= res!458717 call!69859)))

(declare-fun b!1020838 () Bool)

(declare-fun res!458714 () Bool)

(declare-fun e!651934 () Bool)

(assert (=> b!1020838 (=> (not res!458714) (not e!651934))))

(assert (=> b!1020838 (= res!458714 call!69859)))

(assert (=> b!1020838 (= e!651937 e!651934)))

(declare-fun b!1020840 () Bool)

(assert (=> b!1020840 (= e!651939 e!651936)))

(declare-fun res!458715 () Bool)

(assert (=> b!1020840 (= res!458715 (not (nullable!923 (reg!3149 (regTwo!6152 r!15766)))))))

(assert (=> b!1020840 (=> (not res!458715) (not e!651936))))

(declare-fun bm!69854 () Bool)

(assert (=> bm!69854 (= call!69860 (validRegex!1289 (ite c!169167 (reg!3149 (regTwo!6152 r!15766)) (ite c!169166 (regTwo!6153 (regTwo!6152 r!15766)) (regTwo!6152 (regTwo!6152 r!15766))))))))

(declare-fun bm!69855 () Bool)

(assert (=> bm!69855 (= call!69859 (validRegex!1289 (ite c!169166 (regOne!6153 (regTwo!6152 r!15766)) (regOne!6152 (regTwo!6152 r!15766)))))))

(declare-fun bm!69856 () Bool)

(assert (=> bm!69856 (= call!69861 call!69860)))

(declare-fun b!1020841 () Bool)

(declare-fun res!458716 () Bool)

(assert (=> b!1020841 (=> res!458716 e!651935)))

(assert (=> b!1020841 (= res!458716 (not (is-Concat!4653 (regTwo!6152 r!15766))))))

(assert (=> b!1020841 (= e!651937 e!651935)))

(declare-fun b!1020839 () Bool)

(assert (=> b!1020839 (= e!651934 call!69861)))

(declare-fun d!294360 () Bool)

(declare-fun res!458718 () Bool)

(assert (=> d!294360 (=> res!458718 e!651938)))

(assert (=> d!294360 (= res!458718 (is-ElementMatch!2820 (regTwo!6152 r!15766)))))

(assert (=> d!294360 (= (validRegex!1289 (regTwo!6152 r!15766)) e!651938)))

(assert (= (and d!294360 (not res!458718)) b!1020835))

(assert (= (and b!1020835 c!169167) b!1020840))

(assert (= (and b!1020835 (not c!169167)) b!1020833))

(assert (= (and b!1020840 res!458715) b!1020836))

(assert (= (and b!1020833 c!169166) b!1020838))

(assert (= (and b!1020833 (not c!169166)) b!1020841))

(assert (= (and b!1020838 res!458714) b!1020839))

(assert (= (and b!1020841 (not res!458716)) b!1020837))

(assert (= (and b!1020837 res!458717) b!1020834))

(assert (= (or b!1020839 b!1020834) bm!69856))

(assert (= (or b!1020838 b!1020837) bm!69855))

(assert (= (or b!1020836 bm!69856) bm!69854))

(declare-fun m!1199925 () Bool)

(assert (=> b!1020840 m!1199925))

(declare-fun m!1199927 () Bool)

(assert (=> bm!69854 m!1199927))

(declare-fun m!1199929 () Bool)

(assert (=> bm!69855 m!1199929))

(assert (=> b!1020644 d!294360))

(declare-fun bm!69857 () Bool)

(declare-fun call!69864 () Bool)

(assert (=> bm!69857 (= call!69864 (isEmpty!6388 s!10566))))

(declare-fun b!1020842 () Bool)

(declare-fun e!651944 () Bool)

(assert (=> b!1020842 (= e!651944 (= (head!1879 s!10566) (c!169131 lt!354268)))))

(declare-fun b!1020843 () Bool)

(declare-fun e!651945 () Bool)

(assert (=> b!1020843 (= e!651945 (matchR!1356 (derivativeStep!725 lt!354268 (head!1879 s!10566)) (tail!1441 s!10566)))))

(declare-fun b!1020844 () Bool)

(assert (=> b!1020844 (= e!651945 (nullable!923 lt!354268))))

(declare-fun d!294362 () Bool)

(declare-fun e!651941 () Bool)

(assert (=> d!294362 e!651941))

(declare-fun c!169169 () Bool)

(assert (=> d!294362 (= c!169169 (is-EmptyExpr!2820 lt!354268))))

(declare-fun lt!354308 () Bool)

(assert (=> d!294362 (= lt!354308 e!651945)))

(declare-fun c!169168 () Bool)

(assert (=> d!294362 (= c!169168 (isEmpty!6388 s!10566))))

(assert (=> d!294362 (validRegex!1289 lt!354268)))

(assert (=> d!294362 (= (matchR!1356 lt!354268 s!10566) lt!354308)))

(declare-fun b!1020845 () Bool)

(declare-fun e!651943 () Bool)

(assert (=> b!1020845 (= e!651941 e!651943)))

(declare-fun c!169170 () Bool)

(assert (=> b!1020845 (= c!169170 (is-EmptyLang!2820 lt!354268))))

(declare-fun b!1020846 () Bool)

(declare-fun res!458725 () Bool)

(declare-fun e!651946 () Bool)

(assert (=> b!1020846 (=> res!458725 e!651946)))

(assert (=> b!1020846 (= res!458725 (not (isEmpty!6388 (tail!1441 s!10566))))))

(declare-fun b!1020847 () Bool)

(declare-fun res!458723 () Bool)

(declare-fun e!651947 () Bool)

(assert (=> b!1020847 (=> res!458723 e!651947)))

(assert (=> b!1020847 (= res!458723 e!651944)))

(declare-fun res!458724 () Bool)

(assert (=> b!1020847 (=> (not res!458724) (not e!651944))))

(assert (=> b!1020847 (= res!458724 lt!354308)))

(declare-fun b!1020848 () Bool)

(assert (=> b!1020848 (= e!651943 (not lt!354308))))

(declare-fun b!1020849 () Bool)

(declare-fun e!651942 () Bool)

(assert (=> b!1020849 (= e!651942 e!651946)))

(declare-fun res!458722 () Bool)

(assert (=> b!1020849 (=> res!458722 e!651946)))

(assert (=> b!1020849 (= res!458722 call!69864)))

(declare-fun b!1020850 () Bool)

(assert (=> b!1020850 (= e!651947 e!651942)))

(declare-fun res!458720 () Bool)

(assert (=> b!1020850 (=> (not res!458720) (not e!651942))))

(assert (=> b!1020850 (= res!458720 (not lt!354308))))

(declare-fun b!1020851 () Bool)

(assert (=> b!1020851 (= e!651941 (= lt!354308 call!69864))))

(declare-fun b!1020852 () Bool)

(declare-fun res!458721 () Bool)

(assert (=> b!1020852 (=> (not res!458721) (not e!651944))))

(assert (=> b!1020852 (= res!458721 (not call!69864))))

(declare-fun b!1020853 () Bool)

(assert (=> b!1020853 (= e!651946 (not (= (head!1879 s!10566) (c!169131 lt!354268))))))

(declare-fun b!1020854 () Bool)

(declare-fun res!458719 () Bool)

(assert (=> b!1020854 (=> res!458719 e!651947)))

(assert (=> b!1020854 (= res!458719 (not (is-ElementMatch!2820 lt!354268)))))

(assert (=> b!1020854 (= e!651943 e!651947)))

(declare-fun b!1020855 () Bool)

(declare-fun res!458726 () Bool)

(assert (=> b!1020855 (=> (not res!458726) (not e!651944))))

(assert (=> b!1020855 (= res!458726 (isEmpty!6388 (tail!1441 s!10566)))))

(assert (= (and d!294362 c!169168) b!1020844))

(assert (= (and d!294362 (not c!169168)) b!1020843))

(assert (= (and d!294362 c!169169) b!1020851))

(assert (= (and d!294362 (not c!169169)) b!1020845))

(assert (= (and b!1020845 c!169170) b!1020848))

(assert (= (and b!1020845 (not c!169170)) b!1020854))

(assert (= (and b!1020854 (not res!458719)) b!1020847))

(assert (= (and b!1020847 res!458724) b!1020852))

(assert (= (and b!1020852 res!458721) b!1020855))

(assert (= (and b!1020855 res!458726) b!1020842))

(assert (= (and b!1020847 (not res!458723)) b!1020850))

(assert (= (and b!1020850 res!458720) b!1020849))

(assert (= (and b!1020849 (not res!458722)) b!1020846))

(assert (= (and b!1020846 (not res!458725)) b!1020853))

(assert (= (or b!1020851 b!1020849 b!1020852) bm!69857))

(assert (=> b!1020846 m!1199911))

(assert (=> b!1020846 m!1199911))

(assert (=> b!1020846 m!1199913))

(assert (=> b!1020855 m!1199911))

(assert (=> b!1020855 m!1199911))

(assert (=> b!1020855 m!1199913))

(assert (=> b!1020842 m!1199915))

(declare-fun m!1199931 () Bool)

(assert (=> b!1020844 m!1199931))

(assert (=> b!1020843 m!1199915))

(assert (=> b!1020843 m!1199915))

(declare-fun m!1199933 () Bool)

(assert (=> b!1020843 m!1199933))

(assert (=> b!1020843 m!1199911))

(assert (=> b!1020843 m!1199933))

(assert (=> b!1020843 m!1199911))

(declare-fun m!1199935 () Bool)

(assert (=> b!1020843 m!1199935))

(assert (=> b!1020853 m!1199915))

(assert (=> d!294362 m!1199867))

(declare-fun m!1199937 () Bool)

(assert (=> d!294362 m!1199937))

(assert (=> bm!69857 m!1199867))

(assert (=> b!1020639 d!294362))

(declare-fun bm!69860 () Bool)

(declare-fun call!69865 () Bool)

(assert (=> bm!69860 (= call!69865 (isEmpty!6388 s!10566))))

(declare-fun b!1020856 () Bool)

(declare-fun e!651951 () Bool)

(assert (=> b!1020856 (= e!651951 (= (head!1879 s!10566) (c!169131 (regTwo!6152 r!15766))))))

(declare-fun b!1020857 () Bool)

(declare-fun e!651952 () Bool)

(assert (=> b!1020857 (= e!651952 (matchR!1356 (derivativeStep!725 (regTwo!6152 r!15766) (head!1879 s!10566)) (tail!1441 s!10566)))))

(declare-fun b!1020858 () Bool)

(assert (=> b!1020858 (= e!651952 (nullable!923 (regTwo!6152 r!15766)))))

(declare-fun d!294364 () Bool)

(declare-fun e!651948 () Bool)

(assert (=> d!294364 e!651948))

(declare-fun c!169172 () Bool)

(assert (=> d!294364 (= c!169172 (is-EmptyExpr!2820 (regTwo!6152 r!15766)))))

(declare-fun lt!354309 () Bool)

(assert (=> d!294364 (= lt!354309 e!651952)))

(declare-fun c!169171 () Bool)

(assert (=> d!294364 (= c!169171 (isEmpty!6388 s!10566))))

(assert (=> d!294364 (validRegex!1289 (regTwo!6152 r!15766))))

(assert (=> d!294364 (= (matchR!1356 (regTwo!6152 r!15766) s!10566) lt!354309)))

(declare-fun b!1020859 () Bool)

(declare-fun e!651950 () Bool)

(assert (=> b!1020859 (= e!651948 e!651950)))

(declare-fun c!169173 () Bool)

(assert (=> b!1020859 (= c!169173 (is-EmptyLang!2820 (regTwo!6152 r!15766)))))

(declare-fun b!1020860 () Bool)

(declare-fun res!458733 () Bool)

(declare-fun e!651953 () Bool)

(assert (=> b!1020860 (=> res!458733 e!651953)))

(assert (=> b!1020860 (= res!458733 (not (isEmpty!6388 (tail!1441 s!10566))))))

(declare-fun b!1020861 () Bool)

(declare-fun res!458731 () Bool)

(declare-fun e!651954 () Bool)

(assert (=> b!1020861 (=> res!458731 e!651954)))

(assert (=> b!1020861 (= res!458731 e!651951)))

(declare-fun res!458732 () Bool)

(assert (=> b!1020861 (=> (not res!458732) (not e!651951))))

(assert (=> b!1020861 (= res!458732 lt!354309)))

(declare-fun b!1020862 () Bool)

(assert (=> b!1020862 (= e!651950 (not lt!354309))))

(declare-fun b!1020863 () Bool)

(declare-fun e!651949 () Bool)

(assert (=> b!1020863 (= e!651949 e!651953)))

(declare-fun res!458730 () Bool)

(assert (=> b!1020863 (=> res!458730 e!651953)))

(assert (=> b!1020863 (= res!458730 call!69865)))

(declare-fun b!1020864 () Bool)

(assert (=> b!1020864 (= e!651954 e!651949)))

(declare-fun res!458728 () Bool)

(assert (=> b!1020864 (=> (not res!458728) (not e!651949))))

(assert (=> b!1020864 (= res!458728 (not lt!354309))))

(declare-fun b!1020865 () Bool)

(assert (=> b!1020865 (= e!651948 (= lt!354309 call!69865))))

(declare-fun b!1020866 () Bool)

(declare-fun res!458729 () Bool)

(assert (=> b!1020866 (=> (not res!458729) (not e!651951))))

(assert (=> b!1020866 (= res!458729 (not call!69865))))

(declare-fun b!1020867 () Bool)

(assert (=> b!1020867 (= e!651953 (not (= (head!1879 s!10566) (c!169131 (regTwo!6152 r!15766)))))))

(declare-fun b!1020868 () Bool)

(declare-fun res!458727 () Bool)

(assert (=> b!1020868 (=> res!458727 e!651954)))

(assert (=> b!1020868 (= res!458727 (not (is-ElementMatch!2820 (regTwo!6152 r!15766))))))

(assert (=> b!1020868 (= e!651950 e!651954)))

(declare-fun b!1020869 () Bool)

(declare-fun res!458734 () Bool)

(assert (=> b!1020869 (=> (not res!458734) (not e!651951))))

(assert (=> b!1020869 (= res!458734 (isEmpty!6388 (tail!1441 s!10566)))))

(assert (= (and d!294364 c!169171) b!1020858))

(assert (= (and d!294364 (not c!169171)) b!1020857))

(assert (= (and d!294364 c!169172) b!1020865))

(assert (= (and d!294364 (not c!169172)) b!1020859))

(assert (= (and b!1020859 c!169173) b!1020862))

(assert (= (and b!1020859 (not c!169173)) b!1020868))

(assert (= (and b!1020868 (not res!458727)) b!1020861))

(assert (= (and b!1020861 res!458732) b!1020866))

(assert (= (and b!1020866 res!458729) b!1020869))

(assert (= (and b!1020869 res!458734) b!1020856))

(assert (= (and b!1020861 (not res!458731)) b!1020864))

(assert (= (and b!1020864 res!458728) b!1020863))

(assert (= (and b!1020863 (not res!458730)) b!1020860))

(assert (= (and b!1020860 (not res!458733)) b!1020867))

(assert (= (or b!1020865 b!1020863 b!1020866) bm!69860))

(assert (=> b!1020860 m!1199911))

(assert (=> b!1020860 m!1199911))

(assert (=> b!1020860 m!1199913))

(assert (=> b!1020869 m!1199911))

(assert (=> b!1020869 m!1199911))

(assert (=> b!1020869 m!1199913))

(assert (=> b!1020856 m!1199915))

(declare-fun m!1199939 () Bool)

(assert (=> b!1020858 m!1199939))

(assert (=> b!1020857 m!1199915))

(assert (=> b!1020857 m!1199915))

(declare-fun m!1199941 () Bool)

(assert (=> b!1020857 m!1199941))

(assert (=> b!1020857 m!1199911))

(assert (=> b!1020857 m!1199941))

(assert (=> b!1020857 m!1199911))

(declare-fun m!1199943 () Bool)

(assert (=> b!1020857 m!1199943))

(assert (=> b!1020867 m!1199915))

(assert (=> d!294364 m!1199867))

(assert (=> d!294364 m!1199837))

(assert (=> bm!69860 m!1199867))

(assert (=> b!1020639 d!294364))

(declare-fun d!294366 () Bool)

(declare-fun e!651975 () Bool)

(assert (=> d!294366 e!651975))

(declare-fun res!458740 () Bool)

(assert (=> d!294366 (=> (not res!458740) (not e!651975))))

(declare-fun lt!354312 () Regex!2820)

(assert (=> d!294366 (= res!458740 (validRegex!1289 lt!354312))))

(declare-fun e!651978 () Regex!2820)

(assert (=> d!294366 (= lt!354312 e!651978)))

(declare-fun c!169190 () Bool)

(assert (=> d!294366 (= c!169190 (and (is-Concat!4653 (regTwo!6152 r!15766)) (is-EmptyExpr!2820 (regOne!6152 (regTwo!6152 r!15766)))))))

(assert (=> d!294366 (validRegex!1289 (regTwo!6152 r!15766))))

(assert (=> d!294366 (= (removeUselessConcat!389 (regTwo!6152 r!15766)) lt!354312)))

(declare-fun b!1020903 () Bool)

(declare-fun e!651977 () Regex!2820)

(declare-fun call!69882 () Regex!2820)

(assert (=> b!1020903 (= e!651977 (Star!2820 call!69882))))

(declare-fun b!1020904 () Bool)

(declare-fun call!69879 () Regex!2820)

(assert (=> b!1020904 (= e!651978 call!69879)))

(declare-fun b!1020905 () Bool)

(declare-fun c!169189 () Bool)

(assert (=> b!1020905 (= c!169189 (is-Star!2820 (regTwo!6152 r!15766)))))

(declare-fun e!651974 () Regex!2820)

(assert (=> b!1020905 (= e!651974 e!651977)))

(declare-fun b!1020906 () Bool)

(declare-fun e!651979 () Regex!2820)

(declare-fun call!69878 () Regex!2820)

(assert (=> b!1020906 (= e!651979 call!69878)))

(declare-fun bm!69873 () Bool)

(declare-fun call!69881 () Regex!2820)

(assert (=> bm!69873 (= call!69881 call!69879)))

(declare-fun b!1020907 () Bool)

(declare-fun c!169191 () Bool)

(assert (=> b!1020907 (= c!169191 (is-Concat!4653 (regTwo!6152 r!15766)))))

(declare-fun e!651976 () Regex!2820)

(assert (=> b!1020907 (= e!651979 e!651976)))

(declare-fun b!1020908 () Bool)

(assert (=> b!1020908 (= e!651976 e!651974)))

(declare-fun c!169188 () Bool)

(assert (=> b!1020908 (= c!169188 (is-Union!2820 (regTwo!6152 r!15766)))))

(declare-fun bm!69874 () Bool)

(assert (=> bm!69874 (= call!69882 call!69881)))

(declare-fun bm!69875 () Bool)

(declare-fun call!69880 () Regex!2820)

(assert (=> bm!69875 (= call!69880 call!69878)))

(declare-fun b!1020909 () Bool)

(assert (=> b!1020909 (= e!651975 (= (nullable!923 lt!354312) (nullable!923 (regTwo!6152 r!15766))))))

(declare-fun b!1020910 () Bool)

(assert (=> b!1020910 (= e!651974 (Union!2820 call!69880 call!69882))))

(declare-fun b!1020911 () Bool)

(assert (=> b!1020911 (= e!651978 e!651979)))

(declare-fun c!169192 () Bool)

(assert (=> b!1020911 (= c!169192 (and (is-Concat!4653 (regTwo!6152 r!15766)) (is-EmptyExpr!2820 (regTwo!6152 (regTwo!6152 r!15766)))))))

(declare-fun bm!69876 () Bool)

(assert (=> bm!69876 (= call!69879 (removeUselessConcat!389 (ite (or c!169190 c!169191) (regTwo!6152 (regTwo!6152 r!15766)) (ite c!169188 (regTwo!6153 (regTwo!6152 r!15766)) (reg!3149 (regTwo!6152 r!15766))))))))

(declare-fun b!1020912 () Bool)

(assert (=> b!1020912 (= e!651977 (regTwo!6152 r!15766))))

(declare-fun bm!69877 () Bool)

(assert (=> bm!69877 (= call!69878 (removeUselessConcat!389 (ite (or c!169192 c!169191) (regOne!6152 (regTwo!6152 r!15766)) (regOne!6153 (regTwo!6152 r!15766)))))))

(declare-fun b!1020913 () Bool)

(assert (=> b!1020913 (= e!651976 (Concat!4653 call!69880 call!69881))))

(assert (= (and d!294366 c!169190) b!1020904))

(assert (= (and d!294366 (not c!169190)) b!1020911))

(assert (= (and b!1020911 c!169192) b!1020906))

(assert (= (and b!1020911 (not c!169192)) b!1020907))

(assert (= (and b!1020907 c!169191) b!1020913))

(assert (= (and b!1020907 (not c!169191)) b!1020908))

(assert (= (and b!1020908 c!169188) b!1020910))

(assert (= (and b!1020908 (not c!169188)) b!1020905))

(assert (= (and b!1020905 c!169189) b!1020903))

(assert (= (and b!1020905 (not c!169189)) b!1020912))

(assert (= (or b!1020910 b!1020903) bm!69874))

(assert (= (or b!1020913 bm!69874) bm!69873))

(assert (= (or b!1020913 b!1020910) bm!69875))

(assert (= (or b!1020906 bm!69875) bm!69877))

(assert (= (or b!1020904 bm!69873) bm!69876))

(assert (= (and d!294366 res!458740) b!1020909))

(declare-fun m!1199947 () Bool)

(assert (=> d!294366 m!1199947))

(assert (=> d!294366 m!1199837))

(declare-fun m!1199949 () Bool)

(assert (=> b!1020909 m!1199949))

(assert (=> b!1020909 m!1199939))

(declare-fun m!1199953 () Bool)

(assert (=> bm!69876 m!1199953))

(declare-fun m!1199957 () Bool)

(assert (=> bm!69877 m!1199957))

(assert (=> b!1020639 d!294366))

(declare-fun d!294368 () Bool)

(assert (=> d!294368 (= (matchR!1356 (regTwo!6152 r!15766) s!10566) (matchR!1356 (removeUselessConcat!389 (regTwo!6152 r!15766)) s!10566))))

(declare-fun lt!354315 () Unit!15315)

(declare-fun choose!6451 (Regex!2820 List!10050) Unit!15315)

(assert (=> d!294368 (= lt!354315 (choose!6451 (regTwo!6152 r!15766) s!10566))))

(assert (=> d!294368 (validRegex!1289 (regTwo!6152 r!15766))))

(assert (=> d!294368 (= (lemmaRemoveUselessConcatSound!229 (regTwo!6152 r!15766) s!10566) lt!354315)))

(declare-fun bs!246663 () Bool)

(assert (= bs!246663 d!294368))

(assert (=> bs!246663 m!1199853))

(assert (=> bs!246663 m!1199853))

(declare-fun m!1199959 () Bool)

(assert (=> bs!246663 m!1199959))

(assert (=> bs!246663 m!1199851))

(assert (=> bs!246663 m!1199837))

(declare-fun m!1199961 () Bool)

(assert (=> bs!246663 m!1199961))

(assert (=> b!1020639 d!294368))

(declare-fun b!1020914 () Bool)

(declare-fun e!651985 () Bool)

(declare-fun e!651983 () Bool)

(assert (=> b!1020914 (= e!651985 e!651983)))

(declare-fun c!169193 () Bool)

(assert (=> b!1020914 (= c!169193 (is-Union!2820 r!15766))))

(declare-fun b!1020915 () Bool)

(declare-fun e!651986 () Bool)

(declare-fun call!69885 () Bool)

(assert (=> b!1020915 (= e!651986 call!69885)))

(declare-fun b!1020916 () Bool)

(declare-fun e!651984 () Bool)

(assert (=> b!1020916 (= e!651984 e!651985)))

(declare-fun c!169194 () Bool)

(assert (=> b!1020916 (= c!169194 (is-Star!2820 r!15766))))

(declare-fun b!1020917 () Bool)

(declare-fun e!651982 () Bool)

(declare-fun call!69884 () Bool)

(assert (=> b!1020917 (= e!651982 call!69884)))

(declare-fun b!1020918 () Bool)

(declare-fun e!651981 () Bool)

(assert (=> b!1020918 (= e!651981 e!651986)))

(declare-fun res!458744 () Bool)

(assert (=> b!1020918 (=> (not res!458744) (not e!651986))))

(declare-fun call!69883 () Bool)

(assert (=> b!1020918 (= res!458744 call!69883)))

(declare-fun b!1020919 () Bool)

(declare-fun res!458741 () Bool)

(declare-fun e!651980 () Bool)

(assert (=> b!1020919 (=> (not res!458741) (not e!651980))))

(assert (=> b!1020919 (= res!458741 call!69883)))

(assert (=> b!1020919 (= e!651983 e!651980)))

(declare-fun b!1020921 () Bool)

(assert (=> b!1020921 (= e!651985 e!651982)))

(declare-fun res!458742 () Bool)

(assert (=> b!1020921 (= res!458742 (not (nullable!923 (reg!3149 r!15766))))))

(assert (=> b!1020921 (=> (not res!458742) (not e!651982))))

(declare-fun bm!69878 () Bool)

(assert (=> bm!69878 (= call!69884 (validRegex!1289 (ite c!169194 (reg!3149 r!15766) (ite c!169193 (regTwo!6153 r!15766) (regTwo!6152 r!15766)))))))

(declare-fun bm!69879 () Bool)

(assert (=> bm!69879 (= call!69883 (validRegex!1289 (ite c!169193 (regOne!6153 r!15766) (regOne!6152 r!15766))))))

(declare-fun bm!69880 () Bool)

(assert (=> bm!69880 (= call!69885 call!69884)))

(declare-fun b!1020922 () Bool)

(declare-fun res!458743 () Bool)

(assert (=> b!1020922 (=> res!458743 e!651981)))

(assert (=> b!1020922 (= res!458743 (not (is-Concat!4653 r!15766)))))

(assert (=> b!1020922 (= e!651983 e!651981)))

(declare-fun b!1020920 () Bool)

(assert (=> b!1020920 (= e!651980 call!69885)))

(declare-fun d!294372 () Bool)

(declare-fun res!458745 () Bool)

(assert (=> d!294372 (=> res!458745 e!651984)))

(assert (=> d!294372 (= res!458745 (is-ElementMatch!2820 r!15766))))

(assert (=> d!294372 (= (validRegex!1289 r!15766) e!651984)))

(assert (= (and d!294372 (not res!458745)) b!1020916))

(assert (= (and b!1020916 c!169194) b!1020921))

(assert (= (and b!1020916 (not c!169194)) b!1020914))

(assert (= (and b!1020921 res!458742) b!1020917))

(assert (= (and b!1020914 c!169193) b!1020919))

(assert (= (and b!1020914 (not c!169193)) b!1020922))

(assert (= (and b!1020919 res!458741) b!1020920))

(assert (= (and b!1020922 (not res!458743)) b!1020918))

(assert (= (and b!1020918 res!458744) b!1020915))

(assert (= (or b!1020920 b!1020915) bm!69880))

(assert (= (or b!1020919 b!1020918) bm!69879))

(assert (= (or b!1020917 bm!69880) bm!69878))

(declare-fun m!1199963 () Bool)

(assert (=> b!1020921 m!1199963))

(declare-fun m!1199965 () Bool)

(assert (=> bm!69878 m!1199965))

(declare-fun m!1199967 () Bool)

(assert (=> bm!69879 m!1199967))

(assert (=> start!88848 d!294372))

(declare-fun d!294374 () Bool)

(assert (=> d!294374 (= (isEmpty!6388 s!10566) (is-Nil!10034 s!10566))))

(assert (=> b!1020642 d!294374))

(declare-fun b!1020969 () Bool)

(declare-fun e!652014 () Option!2353)

(assert (=> b!1020969 (= e!652014 None!2352)))

(declare-fun b!1020970 () Bool)

(declare-fun e!652015 () Bool)

(assert (=> b!1020970 (= e!652015 (matchR!1356 (regTwo!6152 r!15766) s!10566))))

(declare-fun b!1020971 () Bool)

(declare-fun lt!354324 () Unit!15315)

(declare-fun lt!354325 () Unit!15315)

(assert (=> b!1020971 (= lt!354324 lt!354325)))

(declare-fun ++!2738 (List!10050 List!10050) List!10050)

(assert (=> b!1020971 (= (++!2738 (++!2738 Nil!10034 (Cons!10034 (h!15435 s!10566) Nil!10034)) (t!101096 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!338 (List!10050 C!6210 List!10050 List!10050) Unit!15315)

(assert (=> b!1020971 (= lt!354325 (lemmaMoveElementToOtherListKeepsConcatEq!338 Nil!10034 (h!15435 s!10566) (t!101096 s!10566) s!10566))))

(assert (=> b!1020971 (= e!652014 (findConcatSeparation!459 EmptyExpr!2820 (regTwo!6152 r!15766) (++!2738 Nil!10034 (Cons!10034 (h!15435 s!10566) Nil!10034)) (t!101096 s!10566) s!10566))))

(declare-fun b!1020972 () Bool)

(declare-fun e!652012 () Bool)

(declare-fun lt!354326 () Option!2353)

(declare-fun get!3532 (Option!2353) tuple2!11422)

(assert (=> b!1020972 (= e!652012 (= (++!2738 (_1!6537 (get!3532 lt!354326)) (_2!6537 (get!3532 lt!354326))) s!10566))))

(declare-fun b!1020973 () Bool)

(declare-fun e!652013 () Option!2353)

(assert (=> b!1020973 (= e!652013 e!652014)))

(declare-fun c!169206 () Bool)

(assert (=> b!1020973 (= c!169206 (is-Nil!10034 s!10566))))

(declare-fun b!1020974 () Bool)

(declare-fun e!652011 () Bool)

(assert (=> b!1020974 (= e!652011 (not (isDefined!1995 lt!354326)))))

(declare-fun b!1020975 () Bool)

(declare-fun res!458772 () Bool)

(assert (=> b!1020975 (=> (not res!458772) (not e!652012))))

(assert (=> b!1020975 (= res!458772 (matchR!1356 EmptyExpr!2820 (_1!6537 (get!3532 lt!354326))))))

(declare-fun b!1020976 () Bool)

(assert (=> b!1020976 (= e!652013 (Some!2352 (tuple2!11423 Nil!10034 s!10566)))))

(declare-fun b!1020977 () Bool)

(declare-fun res!458776 () Bool)

(assert (=> b!1020977 (=> (not res!458776) (not e!652012))))

(assert (=> b!1020977 (= res!458776 (matchR!1356 (regTwo!6152 r!15766) (_2!6537 (get!3532 lt!354326))))))

(declare-fun d!294376 () Bool)

(assert (=> d!294376 e!652011))

(declare-fun res!458775 () Bool)

(assert (=> d!294376 (=> res!458775 e!652011)))

(assert (=> d!294376 (= res!458775 e!652012)))

(declare-fun res!458774 () Bool)

(assert (=> d!294376 (=> (not res!458774) (not e!652012))))

(assert (=> d!294376 (= res!458774 (isDefined!1995 lt!354326))))

(assert (=> d!294376 (= lt!354326 e!652013)))

(declare-fun c!169205 () Bool)

(assert (=> d!294376 (= c!169205 e!652015)))

(declare-fun res!458773 () Bool)

(assert (=> d!294376 (=> (not res!458773) (not e!652015))))

(assert (=> d!294376 (= res!458773 (matchR!1356 EmptyExpr!2820 Nil!10034))))

(assert (=> d!294376 (validRegex!1289 EmptyExpr!2820)))

(assert (=> d!294376 (= (findConcatSeparation!459 EmptyExpr!2820 (regTwo!6152 r!15766) Nil!10034 s!10566 s!10566) lt!354326)))

(assert (= (and d!294376 res!458773) b!1020970))

(assert (= (and d!294376 c!169205) b!1020976))

(assert (= (and d!294376 (not c!169205)) b!1020973))

(assert (= (and b!1020973 c!169206) b!1020969))

(assert (= (and b!1020973 (not c!169206)) b!1020971))

(assert (= (and d!294376 res!458774) b!1020975))

(assert (= (and b!1020975 res!458772) b!1020977))

(assert (= (and b!1020977 res!458776) b!1020972))

(assert (= (and d!294376 (not res!458775)) b!1020974))

(declare-fun m!1199969 () Bool)

(assert (=> b!1020977 m!1199969))

(declare-fun m!1199971 () Bool)

(assert (=> b!1020977 m!1199971))

(assert (=> b!1020975 m!1199969))

(declare-fun m!1199973 () Bool)

(assert (=> b!1020975 m!1199973))

(assert (=> b!1020970 m!1199851))

(declare-fun m!1199975 () Bool)

(assert (=> b!1020974 m!1199975))

(declare-fun m!1199977 () Bool)

(assert (=> b!1020971 m!1199977))

(assert (=> b!1020971 m!1199977))

(declare-fun m!1199979 () Bool)

(assert (=> b!1020971 m!1199979))

(declare-fun m!1199981 () Bool)

(assert (=> b!1020971 m!1199981))

(assert (=> b!1020971 m!1199977))

(declare-fun m!1199983 () Bool)

(assert (=> b!1020971 m!1199983))

(assert (=> d!294376 m!1199975))

(declare-fun m!1199985 () Bool)

(assert (=> d!294376 m!1199985))

(declare-fun m!1199987 () Bool)

(assert (=> d!294376 m!1199987))

(assert (=> b!1020972 m!1199969))

(declare-fun m!1199989 () Bool)

(assert (=> b!1020972 m!1199989))

(assert (=> b!1020642 d!294376))

(declare-fun bs!246664 () Bool)

(declare-fun d!294378 () Bool)

(assert (= bs!246664 (and d!294378 b!1020642)))

(declare-fun lambda!36287 () Int)

(assert (=> bs!246664 (= lambda!36287 lambda!36263)))

(assert (=> bs!246664 (not (= lambda!36287 lambda!36264))))

(declare-fun bs!246665 () Bool)

(assert (= bs!246665 (and d!294378 b!1020738)))

(assert (=> bs!246665 (not (= lambda!36287 lambda!36277))))

(declare-fun bs!246666 () Bool)

(assert (= bs!246666 (and d!294378 b!1020735)))

(assert (=> bs!246666 (not (= lambda!36287 lambda!36278))))

(assert (=> d!294378 true))

(assert (=> d!294378 true))

(assert (=> d!294378 true))

(assert (=> d!294378 (= (isDefined!1995 (findConcatSeparation!459 EmptyExpr!2820 (regTwo!6152 r!15766) Nil!10034 s!10566 s!10566)) (Exists!549 lambda!36287))))

(declare-fun lt!354330 () Unit!15315)

(declare-fun choose!6452 (Regex!2820 Regex!2820 List!10050) Unit!15315)

(assert (=> d!294378 (= lt!354330 (choose!6452 EmptyExpr!2820 (regTwo!6152 r!15766) s!10566))))

(assert (=> d!294378 (validRegex!1289 EmptyExpr!2820)))

(assert (=> d!294378 (= (lemmaFindConcatSeparationEquivalentToExists!459 EmptyExpr!2820 (regTwo!6152 r!15766) s!10566) lt!354330)))

(declare-fun bs!246667 () Bool)

(assert (= bs!246667 d!294378))

(declare-fun m!1200003 () Bool)

(assert (=> bs!246667 m!1200003))

(assert (=> bs!246667 m!1199869))

(declare-fun m!1200005 () Bool)

(assert (=> bs!246667 m!1200005))

(assert (=> bs!246667 m!1199987))

(declare-fun m!1200007 () Bool)

(assert (=> bs!246667 m!1200007))

(assert (=> bs!246667 m!1199869))

(assert (=> b!1020642 d!294378))

(declare-fun d!294382 () Bool)

(declare-fun choose!6453 (Int) Bool)

(assert (=> d!294382 (= (Exists!549 lambda!36263) (choose!6453 lambda!36263))))

(declare-fun bs!246668 () Bool)

(assert (= bs!246668 d!294382))

(declare-fun m!1200009 () Bool)

(assert (=> bs!246668 m!1200009))

(assert (=> b!1020642 d!294382))

(declare-fun d!294384 () Bool)

(assert (=> d!294384 (= (Exists!549 lambda!36264) (choose!6453 lambda!36264))))

(declare-fun bs!246669 () Bool)

(assert (= bs!246669 d!294384))

(declare-fun m!1200011 () Bool)

(assert (=> bs!246669 m!1200011))

(assert (=> b!1020642 d!294384))

(declare-fun bs!246671 () Bool)

(declare-fun d!294386 () Bool)

(assert (= bs!246671 (and d!294386 b!1020738)))

(declare-fun lambda!36292 () Int)

(assert (=> bs!246671 (not (= lambda!36292 lambda!36277))))

(declare-fun bs!246672 () Bool)

(assert (= bs!246672 (and d!294386 b!1020642)))

(assert (=> bs!246672 (= lambda!36292 lambda!36263)))

(declare-fun bs!246673 () Bool)

(assert (= bs!246673 (and d!294386 b!1020735)))

(assert (=> bs!246673 (not (= lambda!36292 lambda!36278))))

(assert (=> bs!246672 (not (= lambda!36292 lambda!36264))))

(declare-fun bs!246674 () Bool)

(assert (= bs!246674 (and d!294386 d!294378)))

(assert (=> bs!246674 (= lambda!36292 lambda!36287)))

(assert (=> d!294386 true))

(assert (=> d!294386 true))

(assert (=> d!294386 true))

(declare-fun lambda!36293 () Int)

(assert (=> bs!246671 (not (= lambda!36293 lambda!36277))))

(declare-fun bs!246675 () Bool)

(assert (= bs!246675 d!294386))

(assert (=> bs!246675 (not (= lambda!36293 lambda!36292))))

(assert (=> bs!246672 (not (= lambda!36293 lambda!36263))))

(assert (=> bs!246673 (= (= EmptyExpr!2820 (regOne!6152 r!15766)) (= lambda!36293 lambda!36278))))

(assert (=> bs!246672 (= lambda!36293 lambda!36264)))

(assert (=> bs!246674 (not (= lambda!36293 lambda!36287))))

(assert (=> d!294386 true))

(assert (=> d!294386 true))

(assert (=> d!294386 true))

(assert (=> d!294386 (= (Exists!549 lambda!36292) (Exists!549 lambda!36293))))

(declare-fun lt!354336 () Unit!15315)

(declare-fun choose!6454 (Regex!2820 Regex!2820 List!10050) Unit!15315)

(assert (=> d!294386 (= lt!354336 (choose!6454 EmptyExpr!2820 (regTwo!6152 r!15766) s!10566))))

(assert (=> d!294386 (validRegex!1289 EmptyExpr!2820)))

(assert (=> d!294386 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!251 EmptyExpr!2820 (regTwo!6152 r!15766) s!10566) lt!354336)))

(declare-fun m!1200015 () Bool)

(assert (=> bs!246675 m!1200015))

(declare-fun m!1200017 () Bool)

(assert (=> bs!246675 m!1200017))

(declare-fun m!1200019 () Bool)

(assert (=> bs!246675 m!1200019))

(assert (=> bs!246675 m!1199987))

(assert (=> b!1020642 d!294386))

(declare-fun d!294390 () Bool)

(assert (=> d!294390 (= (isDefined!1995 lt!354274) (not (isEmpty!6387 lt!354274)))))

(declare-fun bs!246676 () Bool)

(assert (= bs!246676 d!294390))

(assert (=> bs!246676 m!1199839))

(assert (=> b!1020642 d!294390))

(declare-fun b!1021026 () Bool)

(declare-fun e!652045 () Bool)

(declare-fun tp!310171 () Bool)

(assert (=> b!1021026 (= e!652045 (and tp_is_empty!5283 tp!310171))))

(assert (=> b!1020647 (= tp!310150 e!652045)))

(assert (= (and b!1020647 (is-Cons!10034 (t!101096 s!10566))) b!1021026))

(declare-fun b!1021039 () Bool)

(declare-fun e!652048 () Bool)

(declare-fun tp!310184 () Bool)

(assert (=> b!1021039 (= e!652048 tp!310184)))

(declare-fun b!1021040 () Bool)

(declare-fun tp!310183 () Bool)

(declare-fun tp!310186 () Bool)

(assert (=> b!1021040 (= e!652048 (and tp!310183 tp!310186))))

(declare-fun b!1021038 () Bool)

(declare-fun tp!310185 () Bool)

(declare-fun tp!310182 () Bool)

(assert (=> b!1021038 (= e!652048 (and tp!310185 tp!310182))))

(assert (=> b!1020641 (= tp!310149 e!652048)))

(declare-fun b!1021037 () Bool)

(assert (=> b!1021037 (= e!652048 tp_is_empty!5283)))

(assert (= (and b!1020641 (is-ElementMatch!2820 (reg!3149 r!15766))) b!1021037))

(assert (= (and b!1020641 (is-Concat!4653 (reg!3149 r!15766))) b!1021038))

(assert (= (and b!1020641 (is-Star!2820 (reg!3149 r!15766))) b!1021039))

(assert (= (and b!1020641 (is-Union!2820 (reg!3149 r!15766))) b!1021040))

(declare-fun b!1021043 () Bool)

(declare-fun e!652049 () Bool)

(declare-fun tp!310189 () Bool)

(assert (=> b!1021043 (= e!652049 tp!310189)))

(declare-fun b!1021044 () Bool)

(declare-fun tp!310188 () Bool)

(declare-fun tp!310191 () Bool)

(assert (=> b!1021044 (= e!652049 (and tp!310188 tp!310191))))

(declare-fun b!1021042 () Bool)

(declare-fun tp!310190 () Bool)

(declare-fun tp!310187 () Bool)

(assert (=> b!1021042 (= e!652049 (and tp!310190 tp!310187))))

(assert (=> b!1020645 (= tp!310145 e!652049)))

(declare-fun b!1021041 () Bool)

(assert (=> b!1021041 (= e!652049 tp_is_empty!5283)))

(assert (= (and b!1020645 (is-ElementMatch!2820 (regOne!6152 r!15766))) b!1021041))

(assert (= (and b!1020645 (is-Concat!4653 (regOne!6152 r!15766))) b!1021042))

(assert (= (and b!1020645 (is-Star!2820 (regOne!6152 r!15766))) b!1021043))

(assert (= (and b!1020645 (is-Union!2820 (regOne!6152 r!15766))) b!1021044))

(declare-fun b!1021047 () Bool)

(declare-fun e!652050 () Bool)

(declare-fun tp!310194 () Bool)

(assert (=> b!1021047 (= e!652050 tp!310194)))

(declare-fun b!1021048 () Bool)

(declare-fun tp!310193 () Bool)

(declare-fun tp!310196 () Bool)

(assert (=> b!1021048 (= e!652050 (and tp!310193 tp!310196))))

(declare-fun b!1021046 () Bool)

(declare-fun tp!310195 () Bool)

(declare-fun tp!310192 () Bool)

(assert (=> b!1021046 (= e!652050 (and tp!310195 tp!310192))))

(assert (=> b!1020645 (= tp!310146 e!652050)))

(declare-fun b!1021045 () Bool)

(assert (=> b!1021045 (= e!652050 tp_is_empty!5283)))

(assert (= (and b!1020645 (is-ElementMatch!2820 (regTwo!6152 r!15766))) b!1021045))

(assert (= (and b!1020645 (is-Concat!4653 (regTwo!6152 r!15766))) b!1021046))

(assert (= (and b!1020645 (is-Star!2820 (regTwo!6152 r!15766))) b!1021047))

(assert (= (and b!1020645 (is-Union!2820 (regTwo!6152 r!15766))) b!1021048))

(declare-fun b!1021051 () Bool)

(declare-fun e!652051 () Bool)

(declare-fun tp!310199 () Bool)

(assert (=> b!1021051 (= e!652051 tp!310199)))

(declare-fun b!1021052 () Bool)

(declare-fun tp!310198 () Bool)

(declare-fun tp!310201 () Bool)

(assert (=> b!1021052 (= e!652051 (and tp!310198 tp!310201))))

(declare-fun b!1021050 () Bool)

(declare-fun tp!310200 () Bool)

(declare-fun tp!310197 () Bool)

(assert (=> b!1021050 (= e!652051 (and tp!310200 tp!310197))))

(assert (=> b!1020638 (= tp!310148 e!652051)))

(declare-fun b!1021049 () Bool)

(assert (=> b!1021049 (= e!652051 tp_is_empty!5283)))

(assert (= (and b!1020638 (is-ElementMatch!2820 (regOne!6153 r!15766))) b!1021049))

(assert (= (and b!1020638 (is-Concat!4653 (regOne!6153 r!15766))) b!1021050))

(assert (= (and b!1020638 (is-Star!2820 (regOne!6153 r!15766))) b!1021051))

(assert (= (and b!1020638 (is-Union!2820 (regOne!6153 r!15766))) b!1021052))

(declare-fun b!1021055 () Bool)

(declare-fun e!652052 () Bool)

(declare-fun tp!310204 () Bool)

(assert (=> b!1021055 (= e!652052 tp!310204)))

(declare-fun b!1021056 () Bool)

(declare-fun tp!310203 () Bool)

(declare-fun tp!310206 () Bool)

(assert (=> b!1021056 (= e!652052 (and tp!310203 tp!310206))))

(declare-fun b!1021054 () Bool)

(declare-fun tp!310205 () Bool)

(declare-fun tp!310202 () Bool)

(assert (=> b!1021054 (= e!652052 (and tp!310205 tp!310202))))

(assert (=> b!1020638 (= tp!310147 e!652052)))

(declare-fun b!1021053 () Bool)

(assert (=> b!1021053 (= e!652052 tp_is_empty!5283)))

(assert (= (and b!1020638 (is-ElementMatch!2820 (regTwo!6153 r!15766))) b!1021053))

(assert (= (and b!1020638 (is-Concat!4653 (regTwo!6153 r!15766))) b!1021054))

(assert (= (and b!1020638 (is-Star!2820 (regTwo!6153 r!15766))) b!1021055))

(assert (= (and b!1020638 (is-Union!2820 (regTwo!6153 r!15766))) b!1021056))

(push 1)

(assert (not b!1021056))

(assert (not b!1020802))

(assert (not b!1020975))

(assert (not d!294390))

(assert (not b!1021038))

(assert (not b!1020971))

(assert (not d!294386))

(assert (not b!1020860))

(assert (not b!1020840))

(assert (not b!1020842))

(assert (not d!294364))

(assert (not b!1020795))

(assert (not d!294378))

(assert (not bm!69860))

(assert (not b!1020740))

(assert (not d!294354))

(assert (not b!1021044))

(assert (not d!294384))

(assert (not bm!69876))

(assert (not b!1020844))

(assert (not bm!69877))

(assert (not bm!69855))

(assert (not b!1020974))

(assert (not b!1021052))

(assert (not b!1020858))

(assert (not b!1020869))

(assert (not d!294366))

(assert (not b!1020856))

(assert (not b!1021055))

(assert (not b!1020855))

(assert (not b!1021043))

(assert (not b!1020909))

(assert (not d!294382))

(assert (not b!1021042))

(assert (not b!1021051))

(assert (not bm!69879))

(assert (not d!294376))

(assert (not b!1020793))

(assert (not b!1021040))

(assert (not b!1020791))

(assert (not b!1020970))

(assert (not d!294356))

(assert (not d!294362))

(assert (not b!1020804))

(assert (not bm!69845))

(assert (not b!1020867))

(assert (not b!1020972))

(assert tp_is_empty!5283)

(assert (not b!1020921))

(assert (not bm!69841))

(assert (not b!1021054))

(assert (not b!1021047))

(assert (not b!1020857))

(assert (not b!1021050))

(assert (not b!1020853))

(assert (not bm!69857))

(assert (not bm!69842))

(assert (not b!1020846))

(assert (not b!1021026))

(assert (not b!1020792))

(assert (not b!1020843))

(assert (not bm!69878))

(assert (not b!1021039))

(assert (not d!294368))

(assert (not bm!69854))

(assert (not b!1021046))

(assert (not b!1020977))

(assert (not b!1021048))

(assert (not b!1020739))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

