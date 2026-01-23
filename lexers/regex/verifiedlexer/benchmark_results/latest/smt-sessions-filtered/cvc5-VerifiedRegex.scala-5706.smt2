; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283922 () Bool)

(assert start!283922)

(declare-fun b!2913657 () Bool)

(assert (=> b!2913657 true))

(assert (=> b!2913657 true))

(declare-fun lambda!108274 () Int)

(declare-fun lambda!108273 () Int)

(assert (=> b!2913657 (not (= lambda!108274 lambda!108273))))

(assert (=> b!2913657 true))

(assert (=> b!2913657 true))

(declare-fun b!2913652 () Bool)

(declare-fun e!1838850 () Bool)

(declare-fun tp!935950 () Bool)

(assert (=> b!2913652 (= e!1838850 tp!935950)))

(declare-fun b!2913653 () Bool)

(declare-fun tp!935954 () Bool)

(declare-fun tp!935952 () Bool)

(assert (=> b!2913653 (= e!1838850 (and tp!935954 tp!935952))))

(declare-fun b!2913654 () Bool)

(declare-fun e!1838852 () Bool)

(declare-datatypes ((C!18110 0))(
  ( (C!18111 (val!11091 Int)) )
))
(declare-datatypes ((Regex!8962 0))(
  ( (ElementMatch!8962 (c!475120 C!18110)) (Concat!14283 (regOne!18436 Regex!8962) (regTwo!18436 Regex!8962)) (EmptyExpr!8962) (Star!8962 (reg!9291 Regex!8962)) (EmptyLang!8962) (Union!8962 (regOne!18437 Regex!8962) (regTwo!18437 Regex!8962)) )
))
(declare-fun r!17423 () Regex!8962)

(declare-fun validRegex!3695 (Regex!8962) Bool)

(assert (=> b!2913654 (= e!1838852 (validRegex!3695 (regTwo!18436 r!17423)))))

(declare-fun b!2913655 () Bool)

(declare-fun e!1838851 () Bool)

(declare-fun e!1838854 () Bool)

(assert (=> b!2913655 (= e!1838851 (not e!1838854))))

(declare-fun res!1202795 () Bool)

(assert (=> b!2913655 (=> res!1202795 e!1838854)))

(declare-fun lt!1024219 () Bool)

(assert (=> b!2913655 (= res!1202795 (or (not lt!1024219) (not (is-Concat!14283 r!17423))))))

(declare-datatypes ((List!34827 0))(
  ( (Nil!34703) (Cons!34703 (h!40123 C!18110) (t!233892 List!34827)) )
))
(declare-fun s!11993 () List!34827)

(declare-fun matchRSpec!1099 (Regex!8962 List!34827) Bool)

(assert (=> b!2913655 (= lt!1024219 (matchRSpec!1099 r!17423 s!11993))))

(declare-fun matchR!3844 (Regex!8962 List!34827) Bool)

(assert (=> b!2913655 (= lt!1024219 (matchR!3844 r!17423 s!11993))))

(declare-datatypes ((Unit!48263 0))(
  ( (Unit!48264) )
))
(declare-fun lt!1024216 () Unit!48263)

(declare-fun mainMatchTheorem!1099 (Regex!8962 List!34827) Unit!48263)

(assert (=> b!2913655 (= lt!1024216 (mainMatchTheorem!1099 r!17423 s!11993))))

(declare-fun res!1202798 () Bool)

(assert (=> start!283922 (=> (not res!1202798) (not e!1838851))))

(assert (=> start!283922 (= res!1202798 (validRegex!3695 r!17423))))

(assert (=> start!283922 e!1838851))

(assert (=> start!283922 e!1838850))

(declare-fun e!1838853 () Bool)

(assert (=> start!283922 e!1838853))

(declare-fun b!2913656 () Bool)

(declare-fun res!1202797 () Bool)

(assert (=> b!2913656 (=> res!1202797 e!1838854)))

(declare-fun isEmpty!18950 (List!34827) Bool)

(assert (=> b!2913656 (= res!1202797 (isEmpty!18950 s!11993))))

(assert (=> b!2913657 (= e!1838854 e!1838852)))

(declare-fun res!1202796 () Bool)

(assert (=> b!2913657 (=> res!1202796 e!1838852)))

(declare-datatypes ((tuple2!33662 0))(
  ( (tuple2!33663 (_1!19963 List!34827) (_2!19963 List!34827)) )
))
(declare-datatypes ((Option!6563 0))(
  ( (None!6562) (Some!6562 (v!34696 tuple2!33662)) )
))
(declare-fun lt!1024217 () Option!6563)

(declare-fun get!10545 (Option!6563) tuple2!33662)

(assert (=> b!2913657 (= res!1202796 (not (matchR!3844 (regOne!18436 r!17423) (_1!19963 (get!10545 lt!1024217)))))))

(declare-fun Exists!1342 (Int) Bool)

(assert (=> b!2913657 (= (Exists!1342 lambda!108273) (Exists!1342 lambda!108274))))

(declare-fun lt!1024218 () Unit!48263)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!483 (Regex!8962 Regex!8962 List!34827) Unit!48263)

(assert (=> b!2913657 (= lt!1024218 (lemmaExistCutMatchRandMatchRSpecEquivalent!483 (regOne!18436 r!17423) (regTwo!18436 r!17423) s!11993))))

(declare-fun isDefined!5114 (Option!6563) Bool)

(assert (=> b!2913657 (= (isDefined!5114 lt!1024217) (Exists!1342 lambda!108273))))

(declare-fun findConcatSeparation!957 (Regex!8962 Regex!8962 List!34827 List!34827 List!34827) Option!6563)

(assert (=> b!2913657 (= lt!1024217 (findConcatSeparation!957 (regOne!18436 r!17423) (regTwo!18436 r!17423) Nil!34703 s!11993 s!11993))))

(declare-fun lt!1024220 () Unit!48263)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!739 (Regex!8962 Regex!8962 List!34827) Unit!48263)

(assert (=> b!2913657 (= lt!1024220 (lemmaFindConcatSeparationEquivalentToExists!739 (regOne!18436 r!17423) (regTwo!18436 r!17423) s!11993))))

(declare-fun b!2913658 () Bool)

(declare-fun tp_is_empty!15487 () Bool)

(declare-fun tp!935951 () Bool)

(assert (=> b!2913658 (= e!1838853 (and tp_is_empty!15487 tp!935951))))

(declare-fun b!2913659 () Bool)

(assert (=> b!2913659 (= e!1838850 tp_is_empty!15487)))

(declare-fun b!2913660 () Bool)

(declare-fun tp!935955 () Bool)

(declare-fun tp!935953 () Bool)

(assert (=> b!2913660 (= e!1838850 (and tp!935955 tp!935953))))

(assert (= (and start!283922 res!1202798) b!2913655))

(assert (= (and b!2913655 (not res!1202795)) b!2913656))

(assert (= (and b!2913656 (not res!1202797)) b!2913657))

(assert (= (and b!2913657 (not res!1202796)) b!2913654))

(assert (= (and start!283922 (is-ElementMatch!8962 r!17423)) b!2913659))

(assert (= (and start!283922 (is-Concat!14283 r!17423)) b!2913653))

(assert (= (and start!283922 (is-Star!8962 r!17423)) b!2913652))

(assert (= (and start!283922 (is-Union!8962 r!17423)) b!2913660))

(assert (= (and start!283922 (is-Cons!34703 s!11993)) b!2913658))

(declare-fun m!3313573 () Bool)

(assert (=> b!2913656 m!3313573))

(declare-fun m!3313575 () Bool)

(assert (=> b!2913654 m!3313575))

(declare-fun m!3313577 () Bool)

(assert (=> b!2913655 m!3313577))

(declare-fun m!3313579 () Bool)

(assert (=> b!2913655 m!3313579))

(declare-fun m!3313581 () Bool)

(assert (=> b!2913655 m!3313581))

(declare-fun m!3313583 () Bool)

(assert (=> b!2913657 m!3313583))

(declare-fun m!3313585 () Bool)

(assert (=> b!2913657 m!3313585))

(declare-fun m!3313587 () Bool)

(assert (=> b!2913657 m!3313587))

(declare-fun m!3313589 () Bool)

(assert (=> b!2913657 m!3313589))

(declare-fun m!3313591 () Bool)

(assert (=> b!2913657 m!3313591))

(assert (=> b!2913657 m!3313583))

(declare-fun m!3313593 () Bool)

(assert (=> b!2913657 m!3313593))

(declare-fun m!3313595 () Bool)

(assert (=> b!2913657 m!3313595))

(declare-fun m!3313597 () Bool)

(assert (=> b!2913657 m!3313597))

(declare-fun m!3313599 () Bool)

(assert (=> start!283922 m!3313599))

(push 1)

(assert (not b!2913655))

(assert (not b!2913657))

(assert tp_is_empty!15487)

(assert (not b!2913653))

(assert (not b!2913654))

(assert (not start!283922))

(assert (not b!2913652))

(assert (not b!2913656))

(assert (not b!2913658))

(assert (not b!2913660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837879 () Bool)

(assert (=> d!837879 (= (isEmpty!18950 s!11993) (is-Nil!34703 s!11993))))

(assert (=> b!2913656 d!837879))

(declare-fun bs!524691 () Bool)

(declare-fun b!2913763 () Bool)

(assert (= bs!524691 (and b!2913763 b!2913657)))

(declare-fun lambda!108287 () Int)

(assert (=> bs!524691 (not (= lambda!108287 lambda!108273))))

(assert (=> bs!524691 (not (= lambda!108287 lambda!108274))))

(assert (=> b!2913763 true))

(assert (=> b!2913763 true))

(declare-fun bs!524692 () Bool)

(declare-fun b!2913766 () Bool)

(assert (= bs!524692 (and b!2913766 b!2913657)))

(declare-fun lambda!108288 () Int)

(assert (=> bs!524692 (not (= lambda!108288 lambda!108273))))

(assert (=> bs!524692 (= lambda!108288 lambda!108274)))

(declare-fun bs!524693 () Bool)

(assert (= bs!524693 (and b!2913766 b!2913763)))

(assert (=> bs!524693 (not (= lambda!108288 lambda!108287))))

(assert (=> b!2913766 true))

(assert (=> b!2913766 true))

(declare-fun b!2913762 () Bool)

(declare-fun e!1838911 () Bool)

(declare-fun call!190261 () Bool)

(assert (=> b!2913762 (= e!1838911 call!190261)))

(declare-fun e!1838914 () Bool)

(declare-fun call!190262 () Bool)

(assert (=> b!2913763 (= e!1838914 call!190262)))

(declare-fun d!837881 () Bool)

(declare-fun c!475138 () Bool)

(assert (=> d!837881 (= c!475138 (is-EmptyExpr!8962 r!17423))))

(assert (=> d!837881 (= (matchRSpec!1099 r!17423 s!11993) e!1838911)))

(declare-fun b!2913764 () Bool)

(declare-fun c!475139 () Bool)

(assert (=> b!2913764 (= c!475139 (is-Union!8962 r!17423))))

(declare-fun e!1838913 () Bool)

(declare-fun e!1838910 () Bool)

(assert (=> b!2913764 (= e!1838913 e!1838910)))

(declare-fun b!2913765 () Bool)

(assert (=> b!2913765 (= e!1838913 (= s!11993 (Cons!34703 (c!475120 r!17423) Nil!34703)))))

(declare-fun e!1838909 () Bool)

(assert (=> b!2913766 (= e!1838909 call!190262)))

(declare-fun b!2913767 () Bool)

(declare-fun e!1838912 () Bool)

(assert (=> b!2913767 (= e!1838912 (matchRSpec!1099 (regTwo!18437 r!17423) s!11993))))

(declare-fun bm!190256 () Bool)

(declare-fun c!475141 () Bool)

(assert (=> bm!190256 (= call!190262 (Exists!1342 (ite c!475141 lambda!108287 lambda!108288)))))

(declare-fun bm!190257 () Bool)

(assert (=> bm!190257 (= call!190261 (isEmpty!18950 s!11993))))

(declare-fun b!2913768 () Bool)

(assert (=> b!2913768 (= e!1838910 e!1838912)))

(declare-fun res!1202846 () Bool)

(assert (=> b!2913768 (= res!1202846 (matchRSpec!1099 (regOne!18437 r!17423) s!11993))))

(assert (=> b!2913768 (=> res!1202846 e!1838912)))

(declare-fun b!2913769 () Bool)

(assert (=> b!2913769 (= e!1838910 e!1838909)))

(assert (=> b!2913769 (= c!475141 (is-Star!8962 r!17423))))

(declare-fun b!2913770 () Bool)

(declare-fun c!475140 () Bool)

(assert (=> b!2913770 (= c!475140 (is-ElementMatch!8962 r!17423))))

(declare-fun e!1838908 () Bool)

(assert (=> b!2913770 (= e!1838908 e!1838913)))

(declare-fun b!2913771 () Bool)

(assert (=> b!2913771 (= e!1838911 e!1838908)))

(declare-fun res!1202845 () Bool)

(assert (=> b!2913771 (= res!1202845 (not (is-EmptyLang!8962 r!17423)))))

(assert (=> b!2913771 (=> (not res!1202845) (not e!1838908))))

(declare-fun b!2913772 () Bool)

(declare-fun res!1202847 () Bool)

(assert (=> b!2913772 (=> res!1202847 e!1838914)))

(assert (=> b!2913772 (= res!1202847 call!190261)))

(assert (=> b!2913772 (= e!1838909 e!1838914)))

(assert (= (and d!837881 c!475138) b!2913762))

(assert (= (and d!837881 (not c!475138)) b!2913771))

(assert (= (and b!2913771 res!1202845) b!2913770))

(assert (= (and b!2913770 c!475140) b!2913765))

(assert (= (and b!2913770 (not c!475140)) b!2913764))

(assert (= (and b!2913764 c!475139) b!2913768))

(assert (= (and b!2913764 (not c!475139)) b!2913769))

(assert (= (and b!2913768 (not res!1202846)) b!2913767))

(assert (= (and b!2913769 c!475141) b!2913772))

(assert (= (and b!2913769 (not c!475141)) b!2913766))

(assert (= (and b!2913772 (not res!1202847)) b!2913763))

(assert (= (or b!2913763 b!2913766) bm!190256))

(assert (= (or b!2913762 b!2913772) bm!190257))

(declare-fun m!3313629 () Bool)

(assert (=> b!2913767 m!3313629))

(declare-fun m!3313631 () Bool)

(assert (=> bm!190256 m!3313631))

(assert (=> bm!190257 m!3313573))

(declare-fun m!3313633 () Bool)

(assert (=> b!2913768 m!3313633))

(assert (=> b!2913655 d!837881))

(declare-fun b!2913811 () Bool)

(declare-fun res!1202875 () Bool)

(declare-fun e!1838933 () Bool)

(assert (=> b!2913811 (=> (not res!1202875) (not e!1838933))))

(declare-fun call!190267 () Bool)

(assert (=> b!2913811 (= res!1202875 (not call!190267))))

(declare-fun b!2913812 () Bool)

(declare-fun e!1838934 () Bool)

(declare-fun derivativeStep!2414 (Regex!8962 C!18110) Regex!8962)

(declare-fun head!6473 (List!34827) C!18110)

(declare-fun tail!4699 (List!34827) List!34827)

(assert (=> b!2913812 (= e!1838934 (matchR!3844 (derivativeStep!2414 r!17423 (head!6473 s!11993)) (tail!4699 s!11993)))))

(declare-fun b!2913813 () Bool)

(declare-fun e!1838937 () Bool)

(declare-fun lt!1024238 () Bool)

(assert (=> b!2913813 (= e!1838937 (= lt!1024238 call!190267))))

(declare-fun b!2913814 () Bool)

(declare-fun e!1838935 () Bool)

(declare-fun e!1838938 () Bool)

(assert (=> b!2913814 (= e!1838935 e!1838938)))

(declare-fun res!1202878 () Bool)

(assert (=> b!2913814 (=> res!1202878 e!1838938)))

(assert (=> b!2913814 (= res!1202878 call!190267)))

(declare-fun b!2913815 () Bool)

(declare-fun nullable!2800 (Regex!8962) Bool)

(assert (=> b!2913815 (= e!1838934 (nullable!2800 r!17423))))

(declare-fun b!2913816 () Bool)

(declare-fun res!1202880 () Bool)

(declare-fun e!1838936 () Bool)

(assert (=> b!2913816 (=> res!1202880 e!1838936)))

(assert (=> b!2913816 (= res!1202880 (not (is-ElementMatch!8962 r!17423)))))

(declare-fun e!1838939 () Bool)

(assert (=> b!2913816 (= e!1838939 e!1838936)))

(declare-fun b!2913817 () Bool)

(declare-fun res!1202881 () Bool)

(assert (=> b!2913817 (=> (not res!1202881) (not e!1838933))))

(assert (=> b!2913817 (= res!1202881 (isEmpty!18950 (tail!4699 s!11993)))))

(declare-fun b!2913818 () Bool)

(assert (=> b!2913818 (= e!1838933 (= (head!6473 s!11993) (c!475120 r!17423)))))

(declare-fun d!837885 () Bool)

(assert (=> d!837885 e!1838937))

(declare-fun c!475148 () Bool)

(assert (=> d!837885 (= c!475148 (is-EmptyExpr!8962 r!17423))))

(assert (=> d!837885 (= lt!1024238 e!1838934)))

(declare-fun c!475149 () Bool)

(assert (=> d!837885 (= c!475149 (isEmpty!18950 s!11993))))

(assert (=> d!837885 (validRegex!3695 r!17423)))

(assert (=> d!837885 (= (matchR!3844 r!17423 s!11993) lt!1024238)))

(declare-fun b!2913819 () Bool)

(declare-fun res!1202879 () Bool)

(assert (=> b!2913819 (=> res!1202879 e!1838936)))

(assert (=> b!2913819 (= res!1202879 e!1838933)))

(declare-fun res!1202874 () Bool)

(assert (=> b!2913819 (=> (not res!1202874) (not e!1838933))))

(assert (=> b!2913819 (= res!1202874 lt!1024238)))

(declare-fun b!2913820 () Bool)

(declare-fun res!1202876 () Bool)

(assert (=> b!2913820 (=> res!1202876 e!1838938)))

(assert (=> b!2913820 (= res!1202876 (not (isEmpty!18950 (tail!4699 s!11993))))))

(declare-fun b!2913821 () Bool)

(assert (=> b!2913821 (= e!1838938 (not (= (head!6473 s!11993) (c!475120 r!17423))))))

(declare-fun b!2913822 () Bool)

(assert (=> b!2913822 (= e!1838939 (not lt!1024238))))

(declare-fun b!2913823 () Bool)

(assert (=> b!2913823 (= e!1838937 e!1838939)))

(declare-fun c!475150 () Bool)

(assert (=> b!2913823 (= c!475150 (is-EmptyLang!8962 r!17423))))

(declare-fun b!2913824 () Bool)

(assert (=> b!2913824 (= e!1838936 e!1838935)))

(declare-fun res!1202877 () Bool)

(assert (=> b!2913824 (=> (not res!1202877) (not e!1838935))))

(assert (=> b!2913824 (= res!1202877 (not lt!1024238))))

(declare-fun bm!190262 () Bool)

(assert (=> bm!190262 (= call!190267 (isEmpty!18950 s!11993))))

(assert (= (and d!837885 c!475149) b!2913815))

(assert (= (and d!837885 (not c!475149)) b!2913812))

(assert (= (and d!837885 c!475148) b!2913813))

(assert (= (and d!837885 (not c!475148)) b!2913823))

(assert (= (and b!2913823 c!475150) b!2913822))

(assert (= (and b!2913823 (not c!475150)) b!2913816))

(assert (= (and b!2913816 (not res!1202880)) b!2913819))

(assert (= (and b!2913819 res!1202874) b!2913811))

(assert (= (and b!2913811 res!1202875) b!2913817))

(assert (= (and b!2913817 res!1202881) b!2913818))

(assert (= (and b!2913819 (not res!1202879)) b!2913824))

(assert (= (and b!2913824 res!1202877) b!2913814))

(assert (= (and b!2913814 (not res!1202878)) b!2913820))

(assert (= (and b!2913820 (not res!1202876)) b!2913821))

(assert (= (or b!2913813 b!2913811 b!2913814) bm!190262))

(declare-fun m!3313635 () Bool)

(assert (=> b!2913820 m!3313635))

(assert (=> b!2913820 m!3313635))

(declare-fun m!3313637 () Bool)

(assert (=> b!2913820 m!3313637))

(declare-fun m!3313639 () Bool)

(assert (=> b!2913818 m!3313639))

(assert (=> b!2913812 m!3313639))

(assert (=> b!2913812 m!3313639))

(declare-fun m!3313641 () Bool)

(assert (=> b!2913812 m!3313641))

(assert (=> b!2913812 m!3313635))

(assert (=> b!2913812 m!3313641))

(assert (=> b!2913812 m!3313635))

(declare-fun m!3313643 () Bool)

(assert (=> b!2913812 m!3313643))

(declare-fun m!3313645 () Bool)

(assert (=> b!2913815 m!3313645))

(assert (=> bm!190262 m!3313573))

(assert (=> b!2913821 m!3313639))

(assert (=> d!837885 m!3313573))

(assert (=> d!837885 m!3313599))

(assert (=> b!2913817 m!3313635))

(assert (=> b!2913817 m!3313635))

(assert (=> b!2913817 m!3313637))

(assert (=> b!2913655 d!837885))

(declare-fun d!837887 () Bool)

(assert (=> d!837887 (= (matchR!3844 r!17423 s!11993) (matchRSpec!1099 r!17423 s!11993))))

(declare-fun lt!1024241 () Unit!48263)

(declare-fun choose!17144 (Regex!8962 List!34827) Unit!48263)

(assert (=> d!837887 (= lt!1024241 (choose!17144 r!17423 s!11993))))

(assert (=> d!837887 (validRegex!3695 r!17423)))

(assert (=> d!837887 (= (mainMatchTheorem!1099 r!17423 s!11993) lt!1024241)))

(declare-fun bs!524694 () Bool)

(assert (= bs!524694 d!837887))

(assert (=> bs!524694 m!3313579))

(assert (=> bs!524694 m!3313577))

(declare-fun m!3313647 () Bool)

(assert (=> bs!524694 m!3313647))

(assert (=> bs!524694 m!3313599))

(assert (=> b!2913655 d!837887))

(declare-fun d!837889 () Bool)

(declare-fun choose!17145 (Int) Bool)

(assert (=> d!837889 (= (Exists!1342 lambda!108273) (choose!17145 lambda!108273))))

(declare-fun bs!524695 () Bool)

(assert (= bs!524695 d!837889))

(declare-fun m!3313649 () Bool)

(assert (=> bs!524695 m!3313649))

(assert (=> b!2913657 d!837889))

(declare-fun bs!524699 () Bool)

(declare-fun d!837891 () Bool)

(assert (= bs!524699 (and d!837891 b!2913657)))

(declare-fun lambda!108299 () Int)

(assert (=> bs!524699 (= lambda!108299 lambda!108273)))

(assert (=> bs!524699 (not (= lambda!108299 lambda!108274))))

(declare-fun bs!524700 () Bool)

(assert (= bs!524700 (and d!837891 b!2913763)))

(assert (=> bs!524700 (not (= lambda!108299 lambda!108287))))

(declare-fun bs!524701 () Bool)

(assert (= bs!524701 (and d!837891 b!2913766)))

(assert (=> bs!524701 (not (= lambda!108299 lambda!108288))))

(assert (=> d!837891 true))

(assert (=> d!837891 true))

(assert (=> d!837891 true))

(declare-fun lambda!108300 () Int)

(assert (=> bs!524699 (not (= lambda!108300 lambda!108273))))

(assert (=> bs!524701 (= lambda!108300 lambda!108288)))

(declare-fun bs!524702 () Bool)

(assert (= bs!524702 d!837891))

(assert (=> bs!524702 (not (= lambda!108300 lambda!108299))))

(assert (=> bs!524699 (= lambda!108300 lambda!108274)))

(assert (=> bs!524700 (not (= lambda!108300 lambda!108287))))

(assert (=> d!837891 true))

(assert (=> d!837891 true))

(assert (=> d!837891 true))

(assert (=> d!837891 (= (Exists!1342 lambda!108299) (Exists!1342 lambda!108300))))

(declare-fun lt!1024244 () Unit!48263)

(declare-fun choose!17146 (Regex!8962 Regex!8962 List!34827) Unit!48263)

(assert (=> d!837891 (= lt!1024244 (choose!17146 (regOne!18436 r!17423) (regTwo!18436 r!17423) s!11993))))

(assert (=> d!837891 (validRegex!3695 (regOne!18436 r!17423))))

(assert (=> d!837891 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!483 (regOne!18436 r!17423) (regTwo!18436 r!17423) s!11993) lt!1024244)))

(declare-fun m!3313657 () Bool)

(assert (=> bs!524702 m!3313657))

(declare-fun m!3313659 () Bool)

(assert (=> bs!524702 m!3313659))

(declare-fun m!3313661 () Bool)

(assert (=> bs!524702 m!3313661))

(declare-fun m!3313663 () Bool)

(assert (=> bs!524702 m!3313663))

(assert (=> b!2913657 d!837891))

(declare-fun d!837895 () Bool)

(assert (=> d!837895 (= (get!10545 lt!1024217) (v!34696 lt!1024217))))

(assert (=> b!2913657 d!837895))

(declare-fun d!837897 () Bool)

(declare-fun isEmpty!18952 (Option!6563) Bool)

(assert (=> d!837897 (= (isDefined!5114 lt!1024217) (not (isEmpty!18952 lt!1024217)))))

(declare-fun bs!524703 () Bool)

(assert (= bs!524703 d!837897))

(declare-fun m!3313665 () Bool)

(assert (=> bs!524703 m!3313665))

(assert (=> b!2913657 d!837897))

(declare-fun b!2913844 () Bool)

(declare-fun res!1202894 () Bool)

(declare-fun e!1838951 () Bool)

(assert (=> b!2913844 (=> (not res!1202894) (not e!1838951))))

(declare-fun call!190272 () Bool)

(assert (=> b!2913844 (= res!1202894 (not call!190272))))

(declare-fun b!2913845 () Bool)

(declare-fun e!1838952 () Bool)

(assert (=> b!2913845 (= e!1838952 (matchR!3844 (derivativeStep!2414 (regOne!18436 r!17423) (head!6473 (_1!19963 (get!10545 lt!1024217)))) (tail!4699 (_1!19963 (get!10545 lt!1024217)))))))

(declare-fun b!2913846 () Bool)

(declare-fun e!1838955 () Bool)

(declare-fun lt!1024245 () Bool)

(assert (=> b!2913846 (= e!1838955 (= lt!1024245 call!190272))))

(declare-fun b!2913847 () Bool)

(declare-fun e!1838953 () Bool)

(declare-fun e!1838956 () Bool)

(assert (=> b!2913847 (= e!1838953 e!1838956)))

(declare-fun res!1202897 () Bool)

(assert (=> b!2913847 (=> res!1202897 e!1838956)))

(assert (=> b!2913847 (= res!1202897 call!190272)))

(declare-fun b!2913848 () Bool)

(assert (=> b!2913848 (= e!1838952 (nullable!2800 (regOne!18436 r!17423)))))

(declare-fun b!2913849 () Bool)

(declare-fun res!1202899 () Bool)

(declare-fun e!1838954 () Bool)

(assert (=> b!2913849 (=> res!1202899 e!1838954)))

(assert (=> b!2913849 (= res!1202899 (not (is-ElementMatch!8962 (regOne!18436 r!17423))))))

(declare-fun e!1838957 () Bool)

(assert (=> b!2913849 (= e!1838957 e!1838954)))

(declare-fun b!2913850 () Bool)

(declare-fun res!1202900 () Bool)

(assert (=> b!2913850 (=> (not res!1202900) (not e!1838951))))

(assert (=> b!2913850 (= res!1202900 (isEmpty!18950 (tail!4699 (_1!19963 (get!10545 lt!1024217)))))))

(declare-fun b!2913851 () Bool)

(assert (=> b!2913851 (= e!1838951 (= (head!6473 (_1!19963 (get!10545 lt!1024217))) (c!475120 (regOne!18436 r!17423))))))

(declare-fun d!837899 () Bool)

(assert (=> d!837899 e!1838955))

(declare-fun c!475155 () Bool)

(assert (=> d!837899 (= c!475155 (is-EmptyExpr!8962 (regOne!18436 r!17423)))))

(assert (=> d!837899 (= lt!1024245 e!1838952)))

(declare-fun c!475156 () Bool)

(assert (=> d!837899 (= c!475156 (isEmpty!18950 (_1!19963 (get!10545 lt!1024217))))))

(assert (=> d!837899 (validRegex!3695 (regOne!18436 r!17423))))

(assert (=> d!837899 (= (matchR!3844 (regOne!18436 r!17423) (_1!19963 (get!10545 lt!1024217))) lt!1024245)))

(declare-fun b!2913852 () Bool)

(declare-fun res!1202898 () Bool)

(assert (=> b!2913852 (=> res!1202898 e!1838954)))

(assert (=> b!2913852 (= res!1202898 e!1838951)))

(declare-fun res!1202893 () Bool)

(assert (=> b!2913852 (=> (not res!1202893) (not e!1838951))))

(assert (=> b!2913852 (= res!1202893 lt!1024245)))

(declare-fun b!2913853 () Bool)

(declare-fun res!1202895 () Bool)

(assert (=> b!2913853 (=> res!1202895 e!1838956)))

(assert (=> b!2913853 (= res!1202895 (not (isEmpty!18950 (tail!4699 (_1!19963 (get!10545 lt!1024217))))))))

(declare-fun b!2913854 () Bool)

(assert (=> b!2913854 (= e!1838956 (not (= (head!6473 (_1!19963 (get!10545 lt!1024217))) (c!475120 (regOne!18436 r!17423)))))))

(declare-fun b!2913855 () Bool)

(assert (=> b!2913855 (= e!1838957 (not lt!1024245))))

(declare-fun b!2913856 () Bool)

(assert (=> b!2913856 (= e!1838955 e!1838957)))

(declare-fun c!475157 () Bool)

(assert (=> b!2913856 (= c!475157 (is-EmptyLang!8962 (regOne!18436 r!17423)))))

(declare-fun b!2913857 () Bool)

(assert (=> b!2913857 (= e!1838954 e!1838953)))

(declare-fun res!1202896 () Bool)

(assert (=> b!2913857 (=> (not res!1202896) (not e!1838953))))

(assert (=> b!2913857 (= res!1202896 (not lt!1024245))))

(declare-fun bm!190267 () Bool)

(assert (=> bm!190267 (= call!190272 (isEmpty!18950 (_1!19963 (get!10545 lt!1024217))))))

(assert (= (and d!837899 c!475156) b!2913848))

(assert (= (and d!837899 (not c!475156)) b!2913845))

(assert (= (and d!837899 c!475155) b!2913846))

(assert (= (and d!837899 (not c!475155)) b!2913856))

(assert (= (and b!2913856 c!475157) b!2913855))

(assert (= (and b!2913856 (not c!475157)) b!2913849))

(assert (= (and b!2913849 (not res!1202899)) b!2913852))

(assert (= (and b!2913852 res!1202893) b!2913844))

(assert (= (and b!2913844 res!1202894) b!2913850))

(assert (= (and b!2913850 res!1202900) b!2913851))

(assert (= (and b!2913852 (not res!1202898)) b!2913857))

(assert (= (and b!2913857 res!1202896) b!2913847))

(assert (= (and b!2913847 (not res!1202897)) b!2913853))

(assert (= (and b!2913853 (not res!1202895)) b!2913854))

(assert (= (or b!2913846 b!2913844 b!2913847) bm!190267))

(declare-fun m!3313667 () Bool)

(assert (=> b!2913853 m!3313667))

(assert (=> b!2913853 m!3313667))

(declare-fun m!3313669 () Bool)

(assert (=> b!2913853 m!3313669))

(declare-fun m!3313671 () Bool)

(assert (=> b!2913851 m!3313671))

(assert (=> b!2913845 m!3313671))

(assert (=> b!2913845 m!3313671))

(declare-fun m!3313673 () Bool)

(assert (=> b!2913845 m!3313673))

(assert (=> b!2913845 m!3313667))

(assert (=> b!2913845 m!3313673))

(assert (=> b!2913845 m!3313667))

(declare-fun m!3313675 () Bool)

(assert (=> b!2913845 m!3313675))

(declare-fun m!3313677 () Bool)

(assert (=> b!2913848 m!3313677))

(declare-fun m!3313679 () Bool)

(assert (=> bm!190267 m!3313679))

(assert (=> b!2913854 m!3313671))

(assert (=> d!837899 m!3313679))

(assert (=> d!837899 m!3313663))

(assert (=> b!2913850 m!3313667))

(assert (=> b!2913850 m!3313667))

(assert (=> b!2913850 m!3313669))

(assert (=> b!2913657 d!837899))

(declare-fun d!837901 () Bool)

(assert (=> d!837901 (= (Exists!1342 lambda!108274) (choose!17145 lambda!108274))))

(declare-fun bs!524704 () Bool)

(assert (= bs!524704 d!837901))

(declare-fun m!3313681 () Bool)

(assert (=> bs!524704 m!3313681))

(assert (=> b!2913657 d!837901))

(declare-fun d!837903 () Bool)

(declare-fun e!1838986 () Bool)

(assert (=> d!837903 e!1838986))

(declare-fun res!1202928 () Bool)

(assert (=> d!837903 (=> res!1202928 e!1838986)))

(declare-fun e!1838982 () Bool)

(assert (=> d!837903 (= res!1202928 e!1838982)))

(declare-fun res!1202927 () Bool)

(assert (=> d!837903 (=> (not res!1202927) (not e!1838982))))

(declare-fun lt!1024254 () Option!6563)

(assert (=> d!837903 (= res!1202927 (isDefined!5114 lt!1024254))))

(declare-fun e!1838985 () Option!6563)

(assert (=> d!837903 (= lt!1024254 e!1838985)))

(declare-fun c!475168 () Bool)

(declare-fun e!1838983 () Bool)

(assert (=> d!837903 (= c!475168 e!1838983)))

(declare-fun res!1202930 () Bool)

(assert (=> d!837903 (=> (not res!1202930) (not e!1838983))))

(assert (=> d!837903 (= res!1202930 (matchR!3844 (regOne!18436 r!17423) Nil!34703))))

(assert (=> d!837903 (validRegex!3695 (regOne!18436 r!17423))))

(assert (=> d!837903 (= (findConcatSeparation!957 (regOne!18436 r!17423) (regTwo!18436 r!17423) Nil!34703 s!11993 s!11993) lt!1024254)))

(declare-fun b!2913904 () Bool)

(declare-fun res!1202929 () Bool)

(assert (=> b!2913904 (=> (not res!1202929) (not e!1838982))))

(assert (=> b!2913904 (= res!1202929 (matchR!3844 (regOne!18436 r!17423) (_1!19963 (get!10545 lt!1024254))))))

(declare-fun b!2913905 () Bool)

(assert (=> b!2913905 (= e!1838986 (not (isDefined!5114 lt!1024254)))))

(declare-fun b!2913906 () Bool)

(declare-fun res!1202931 () Bool)

(assert (=> b!2913906 (=> (not res!1202931) (not e!1838982))))

(assert (=> b!2913906 (= res!1202931 (matchR!3844 (regTwo!18436 r!17423) (_2!19963 (get!10545 lt!1024254))))))

(declare-fun b!2913907 () Bool)

(declare-fun ++!8274 (List!34827 List!34827) List!34827)

(assert (=> b!2913907 (= e!1838982 (= (++!8274 (_1!19963 (get!10545 lt!1024254)) (_2!19963 (get!10545 lt!1024254))) s!11993))))

(declare-fun b!2913908 () Bool)

(declare-fun e!1838984 () Option!6563)

(assert (=> b!2913908 (= e!1838984 None!6562)))

(declare-fun b!2913909 () Bool)

(assert (=> b!2913909 (= e!1838985 (Some!6562 (tuple2!33663 Nil!34703 s!11993)))))

(declare-fun b!2913910 () Bool)

(assert (=> b!2913910 (= e!1838985 e!1838984)))

(declare-fun c!475169 () Bool)

(assert (=> b!2913910 (= c!475169 (is-Nil!34703 s!11993))))

(declare-fun b!2913911 () Bool)

(declare-fun lt!1024255 () Unit!48263)

(declare-fun lt!1024256 () Unit!48263)

(assert (=> b!2913911 (= lt!1024255 lt!1024256)))

(assert (=> b!2913911 (= (++!8274 (++!8274 Nil!34703 (Cons!34703 (h!40123 s!11993) Nil!34703)) (t!233892 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!910 (List!34827 C!18110 List!34827 List!34827) Unit!48263)

(assert (=> b!2913911 (= lt!1024256 (lemmaMoveElementToOtherListKeepsConcatEq!910 Nil!34703 (h!40123 s!11993) (t!233892 s!11993) s!11993))))

(assert (=> b!2913911 (= e!1838984 (findConcatSeparation!957 (regOne!18436 r!17423) (regTwo!18436 r!17423) (++!8274 Nil!34703 (Cons!34703 (h!40123 s!11993) Nil!34703)) (t!233892 s!11993) s!11993))))

(declare-fun b!2913912 () Bool)

(assert (=> b!2913912 (= e!1838983 (matchR!3844 (regTwo!18436 r!17423) s!11993))))

(assert (= (and d!837903 res!1202930) b!2913912))

(assert (= (and d!837903 c!475168) b!2913909))

(assert (= (and d!837903 (not c!475168)) b!2913910))

(assert (= (and b!2913910 c!475169) b!2913908))

(assert (= (and b!2913910 (not c!475169)) b!2913911))

(assert (= (and d!837903 res!1202927) b!2913904))

(assert (= (and b!2913904 res!1202929) b!2913906))

(assert (= (and b!2913906 res!1202931) b!2913907))

(assert (= (and d!837903 (not res!1202928)) b!2913905))

(declare-fun m!3313683 () Bool)

(assert (=> b!2913905 m!3313683))

(declare-fun m!3313685 () Bool)

(assert (=> b!2913907 m!3313685))

(declare-fun m!3313687 () Bool)

(assert (=> b!2913907 m!3313687))

(declare-fun m!3313689 () Bool)

(assert (=> b!2913911 m!3313689))

(assert (=> b!2913911 m!3313689))

(declare-fun m!3313691 () Bool)

(assert (=> b!2913911 m!3313691))

(declare-fun m!3313693 () Bool)

(assert (=> b!2913911 m!3313693))

(assert (=> b!2913911 m!3313689))

(declare-fun m!3313695 () Bool)

(assert (=> b!2913911 m!3313695))

(declare-fun m!3313697 () Bool)

(assert (=> b!2913912 m!3313697))

(assert (=> b!2913906 m!3313685))

(declare-fun m!3313699 () Bool)

(assert (=> b!2913906 m!3313699))

(assert (=> b!2913904 m!3313685))

(declare-fun m!3313701 () Bool)

(assert (=> b!2913904 m!3313701))

(assert (=> d!837903 m!3313683))

(declare-fun m!3313703 () Bool)

(assert (=> d!837903 m!3313703))

(assert (=> d!837903 m!3313663))

(assert (=> b!2913657 d!837903))

(declare-fun bs!524705 () Bool)

(declare-fun d!837905 () Bool)

(assert (= bs!524705 (and d!837905 b!2913657)))

(declare-fun lambda!108303 () Int)

(assert (=> bs!524705 (= lambda!108303 lambda!108273)))

(declare-fun bs!524706 () Bool)

(assert (= bs!524706 (and d!837905 d!837891)))

(assert (=> bs!524706 (not (= lambda!108303 lambda!108300))))

(declare-fun bs!524707 () Bool)

(assert (= bs!524707 (and d!837905 b!2913766)))

(assert (=> bs!524707 (not (= lambda!108303 lambda!108288))))

(assert (=> bs!524706 (= lambda!108303 lambda!108299)))

(assert (=> bs!524705 (not (= lambda!108303 lambda!108274))))

(declare-fun bs!524708 () Bool)

(assert (= bs!524708 (and d!837905 b!2913763)))

(assert (=> bs!524708 (not (= lambda!108303 lambda!108287))))

(assert (=> d!837905 true))

(assert (=> d!837905 true))

(assert (=> d!837905 true))

(assert (=> d!837905 (= (isDefined!5114 (findConcatSeparation!957 (regOne!18436 r!17423) (regTwo!18436 r!17423) Nil!34703 s!11993 s!11993)) (Exists!1342 lambda!108303))))

(declare-fun lt!1024260 () Unit!48263)

(declare-fun choose!17147 (Regex!8962 Regex!8962 List!34827) Unit!48263)

(assert (=> d!837905 (= lt!1024260 (choose!17147 (regOne!18436 r!17423) (regTwo!18436 r!17423) s!11993))))

(assert (=> d!837905 (validRegex!3695 (regOne!18436 r!17423))))

(assert (=> d!837905 (= (lemmaFindConcatSeparationEquivalentToExists!739 (regOne!18436 r!17423) (regTwo!18436 r!17423) s!11993) lt!1024260)))

(declare-fun bs!524709 () Bool)

(assert (= bs!524709 d!837905))

(declare-fun m!3313717 () Bool)

(assert (=> bs!524709 m!3313717))

(declare-fun m!3313719 () Bool)

(assert (=> bs!524709 m!3313719))

(assert (=> bs!524709 m!3313663))

(assert (=> bs!524709 m!3313591))

(declare-fun m!3313721 () Bool)

(assert (=> bs!524709 m!3313721))

(assert (=> bs!524709 m!3313591))

(assert (=> b!2913657 d!837905))

(declare-fun b!2913949 () Bool)

(declare-fun res!1202956 () Bool)

(declare-fun e!1839010 () Bool)

(assert (=> b!2913949 (=> res!1202956 e!1839010)))

(assert (=> b!2913949 (= res!1202956 (not (is-Concat!14283 r!17423)))))

(declare-fun e!1839014 () Bool)

(assert (=> b!2913949 (= e!1839014 e!1839010)))

(declare-fun bm!190277 () Bool)

(declare-fun call!190283 () Bool)

(declare-fun c!475177 () Bool)

(assert (=> bm!190277 (= call!190283 (validRegex!3695 (ite c!475177 (regTwo!18437 r!17423) (regOne!18436 r!17423))))))

(declare-fun b!2913950 () Bool)

(declare-fun e!1839015 () Bool)

(declare-fun call!190284 () Bool)

(assert (=> b!2913950 (= e!1839015 call!190284)))

(declare-fun b!2913951 () Bool)

(declare-fun res!1202954 () Bool)

(declare-fun e!1839012 () Bool)

(assert (=> b!2913951 (=> (not res!1202954) (not e!1839012))))

(declare-fun call!190282 () Bool)

(assert (=> b!2913951 (= res!1202954 call!190282)))

(assert (=> b!2913951 (= e!1839014 e!1839012)))

(declare-fun b!2913952 () Bool)

(assert (=> b!2913952 (= e!1839012 call!190283)))

(declare-fun b!2913953 () Bool)

(declare-fun e!1839016 () Bool)

(declare-fun e!1839011 () Bool)

(assert (=> b!2913953 (= e!1839016 e!1839011)))

(declare-fun c!475178 () Bool)

(assert (=> b!2913953 (= c!475178 (is-Star!8962 r!17423))))

(declare-fun b!2913954 () Bool)

(declare-fun e!1839013 () Bool)

(assert (=> b!2913954 (= e!1839013 call!190282)))

(declare-fun bm!190278 () Bool)

(assert (=> bm!190278 (= call!190284 (validRegex!3695 (ite c!475178 (reg!9291 r!17423) (ite c!475177 (regOne!18437 r!17423) (regTwo!18436 r!17423)))))))

(declare-fun d!837909 () Bool)

(declare-fun res!1202958 () Bool)

(assert (=> d!837909 (=> res!1202958 e!1839016)))

(assert (=> d!837909 (= res!1202958 (is-ElementMatch!8962 r!17423))))

(assert (=> d!837909 (= (validRegex!3695 r!17423) e!1839016)))

(declare-fun b!2913955 () Bool)

(assert (=> b!2913955 (= e!1839011 e!1839015)))

(declare-fun res!1202955 () Bool)

(assert (=> b!2913955 (= res!1202955 (not (nullable!2800 (reg!9291 r!17423))))))

(assert (=> b!2913955 (=> (not res!1202955) (not e!1839015))))

(declare-fun b!2913956 () Bool)

(assert (=> b!2913956 (= e!1839010 e!1839013)))

(declare-fun res!1202957 () Bool)

(assert (=> b!2913956 (=> (not res!1202957) (not e!1839013))))

(assert (=> b!2913956 (= res!1202957 call!190283)))

(declare-fun b!2913957 () Bool)

(assert (=> b!2913957 (= e!1839011 e!1839014)))

(assert (=> b!2913957 (= c!475177 (is-Union!8962 r!17423))))

(declare-fun bm!190279 () Bool)

(assert (=> bm!190279 (= call!190282 call!190284)))

(assert (= (and d!837909 (not res!1202958)) b!2913953))

(assert (= (and b!2913953 c!475178) b!2913955))

(assert (= (and b!2913953 (not c!475178)) b!2913957))

(assert (= (and b!2913955 res!1202955) b!2913950))

(assert (= (and b!2913957 c!475177) b!2913951))

(assert (= (and b!2913957 (not c!475177)) b!2913949))

(assert (= (and b!2913951 res!1202954) b!2913952))

(assert (= (and b!2913949 (not res!1202956)) b!2913956))

(assert (= (and b!2913956 res!1202957) b!2913954))

(assert (= (or b!2913951 b!2913954) bm!190279))

(assert (= (or b!2913952 b!2913956) bm!190277))

(assert (= (or b!2913950 bm!190279) bm!190278))

(declare-fun m!3313723 () Bool)

(assert (=> bm!190277 m!3313723))

(declare-fun m!3313725 () Bool)

(assert (=> bm!190278 m!3313725))

(declare-fun m!3313727 () Bool)

(assert (=> b!2913955 m!3313727))

(assert (=> start!283922 d!837909))

(declare-fun b!2913958 () Bool)

(declare-fun res!1202961 () Bool)

(declare-fun e!1839017 () Bool)

(assert (=> b!2913958 (=> res!1202961 e!1839017)))

(assert (=> b!2913958 (= res!1202961 (not (is-Concat!14283 (regTwo!18436 r!17423))))))

(declare-fun e!1839021 () Bool)

(assert (=> b!2913958 (= e!1839021 e!1839017)))

(declare-fun bm!190280 () Bool)

(declare-fun call!190286 () Bool)

(declare-fun c!475179 () Bool)

(assert (=> bm!190280 (= call!190286 (validRegex!3695 (ite c!475179 (regTwo!18437 (regTwo!18436 r!17423)) (regOne!18436 (regTwo!18436 r!17423)))))))

(declare-fun b!2913959 () Bool)

(declare-fun e!1839022 () Bool)

(declare-fun call!190287 () Bool)

(assert (=> b!2913959 (= e!1839022 call!190287)))

(declare-fun b!2913960 () Bool)

(declare-fun res!1202959 () Bool)

(declare-fun e!1839019 () Bool)

(assert (=> b!2913960 (=> (not res!1202959) (not e!1839019))))

(declare-fun call!190285 () Bool)

(assert (=> b!2913960 (= res!1202959 call!190285)))

(assert (=> b!2913960 (= e!1839021 e!1839019)))

(declare-fun b!2913961 () Bool)

(assert (=> b!2913961 (= e!1839019 call!190286)))

(declare-fun b!2913962 () Bool)

(declare-fun e!1839023 () Bool)

(declare-fun e!1839018 () Bool)

(assert (=> b!2913962 (= e!1839023 e!1839018)))

(declare-fun c!475180 () Bool)

(assert (=> b!2913962 (= c!475180 (is-Star!8962 (regTwo!18436 r!17423)))))

(declare-fun b!2913963 () Bool)

(declare-fun e!1839020 () Bool)

(assert (=> b!2913963 (= e!1839020 call!190285)))

(declare-fun bm!190281 () Bool)

(assert (=> bm!190281 (= call!190287 (validRegex!3695 (ite c!475180 (reg!9291 (regTwo!18436 r!17423)) (ite c!475179 (regOne!18437 (regTwo!18436 r!17423)) (regTwo!18436 (regTwo!18436 r!17423))))))))

(declare-fun d!837911 () Bool)

(declare-fun res!1202963 () Bool)

(assert (=> d!837911 (=> res!1202963 e!1839023)))

(assert (=> d!837911 (= res!1202963 (is-ElementMatch!8962 (regTwo!18436 r!17423)))))

(assert (=> d!837911 (= (validRegex!3695 (regTwo!18436 r!17423)) e!1839023)))

(declare-fun b!2913964 () Bool)

(assert (=> b!2913964 (= e!1839018 e!1839022)))

(declare-fun res!1202960 () Bool)

(assert (=> b!2913964 (= res!1202960 (not (nullable!2800 (reg!9291 (regTwo!18436 r!17423)))))))

(assert (=> b!2913964 (=> (not res!1202960) (not e!1839022))))

(declare-fun b!2913965 () Bool)

(assert (=> b!2913965 (= e!1839017 e!1839020)))

(declare-fun res!1202962 () Bool)

(assert (=> b!2913965 (=> (not res!1202962) (not e!1839020))))

(assert (=> b!2913965 (= res!1202962 call!190286)))

(declare-fun b!2913966 () Bool)

(assert (=> b!2913966 (= e!1839018 e!1839021)))

(assert (=> b!2913966 (= c!475179 (is-Union!8962 (regTwo!18436 r!17423)))))

(declare-fun bm!190282 () Bool)

(assert (=> bm!190282 (= call!190285 call!190287)))

(assert (= (and d!837911 (not res!1202963)) b!2913962))

(assert (= (and b!2913962 c!475180) b!2913964))

(assert (= (and b!2913962 (not c!475180)) b!2913966))

(assert (= (and b!2913964 res!1202960) b!2913959))

(assert (= (and b!2913966 c!475179) b!2913960))

(assert (= (and b!2913966 (not c!475179)) b!2913958))

(assert (= (and b!2913960 res!1202959) b!2913961))

(assert (= (and b!2913958 (not res!1202961)) b!2913965))

(assert (= (and b!2913965 res!1202962) b!2913963))

(assert (= (or b!2913960 b!2913963) bm!190282))

(assert (= (or b!2913961 b!2913965) bm!190280))

(assert (= (or b!2913959 bm!190282) bm!190281))

(declare-fun m!3313731 () Bool)

(assert (=> bm!190280 m!3313731))

(declare-fun m!3313733 () Bool)

(assert (=> bm!190281 m!3313733))

(declare-fun m!3313735 () Bool)

(assert (=> b!2913964 m!3313735))

(assert (=> b!2913654 d!837911))

(declare-fun b!2913978 () Bool)

(declare-fun e!1839026 () Bool)

(declare-fun tp!935985 () Bool)

(declare-fun tp!935988 () Bool)

(assert (=> b!2913978 (= e!1839026 (and tp!935985 tp!935988))))

(assert (=> b!2913652 (= tp!935950 e!1839026)))

(declare-fun b!2913979 () Bool)

(declare-fun tp!935986 () Bool)

(assert (=> b!2913979 (= e!1839026 tp!935986)))

(declare-fun b!2913977 () Bool)

(assert (=> b!2913977 (= e!1839026 tp_is_empty!15487)))

(declare-fun b!2913980 () Bool)

(declare-fun tp!935984 () Bool)

(declare-fun tp!935987 () Bool)

(assert (=> b!2913980 (= e!1839026 (and tp!935984 tp!935987))))

(assert (= (and b!2913652 (is-ElementMatch!8962 (reg!9291 r!17423))) b!2913977))

(assert (= (and b!2913652 (is-Concat!14283 (reg!9291 r!17423))) b!2913978))

(assert (= (and b!2913652 (is-Star!8962 (reg!9291 r!17423))) b!2913979))

(assert (= (and b!2913652 (is-Union!8962 (reg!9291 r!17423))) b!2913980))

(declare-fun b!2913982 () Bool)

(declare-fun e!1839027 () Bool)

(declare-fun tp!935990 () Bool)

(declare-fun tp!935993 () Bool)

(assert (=> b!2913982 (= e!1839027 (and tp!935990 tp!935993))))

(assert (=> b!2913653 (= tp!935954 e!1839027)))

(declare-fun b!2913983 () Bool)

(declare-fun tp!935991 () Bool)

(assert (=> b!2913983 (= e!1839027 tp!935991)))

(declare-fun b!2913981 () Bool)

(assert (=> b!2913981 (= e!1839027 tp_is_empty!15487)))

(declare-fun b!2913984 () Bool)

(declare-fun tp!935989 () Bool)

(declare-fun tp!935992 () Bool)

(assert (=> b!2913984 (= e!1839027 (and tp!935989 tp!935992))))

(assert (= (and b!2913653 (is-ElementMatch!8962 (regOne!18436 r!17423))) b!2913981))

(assert (= (and b!2913653 (is-Concat!14283 (regOne!18436 r!17423))) b!2913982))

(assert (= (and b!2913653 (is-Star!8962 (regOne!18436 r!17423))) b!2913983))

(assert (= (and b!2913653 (is-Union!8962 (regOne!18436 r!17423))) b!2913984))

(declare-fun b!2913986 () Bool)

(declare-fun e!1839028 () Bool)

(declare-fun tp!935995 () Bool)

(declare-fun tp!935998 () Bool)

(assert (=> b!2913986 (= e!1839028 (and tp!935995 tp!935998))))

(assert (=> b!2913653 (= tp!935952 e!1839028)))

(declare-fun b!2913987 () Bool)

(declare-fun tp!935996 () Bool)

(assert (=> b!2913987 (= e!1839028 tp!935996)))

(declare-fun b!2913985 () Bool)

(assert (=> b!2913985 (= e!1839028 tp_is_empty!15487)))

(declare-fun b!2913988 () Bool)

(declare-fun tp!935994 () Bool)

(declare-fun tp!935997 () Bool)

(assert (=> b!2913988 (= e!1839028 (and tp!935994 tp!935997))))

(assert (= (and b!2913653 (is-ElementMatch!8962 (regTwo!18436 r!17423))) b!2913985))

(assert (= (and b!2913653 (is-Concat!14283 (regTwo!18436 r!17423))) b!2913986))

(assert (= (and b!2913653 (is-Star!8962 (regTwo!18436 r!17423))) b!2913987))

(assert (= (and b!2913653 (is-Union!8962 (regTwo!18436 r!17423))) b!2913988))

(declare-fun b!2913993 () Bool)

(declare-fun e!1839031 () Bool)

(declare-fun tp!936001 () Bool)

(assert (=> b!2913993 (= e!1839031 (and tp_is_empty!15487 tp!936001))))

(assert (=> b!2913658 (= tp!935951 e!1839031)))

(assert (= (and b!2913658 (is-Cons!34703 (t!233892 s!11993))) b!2913993))

(declare-fun b!2913995 () Bool)

(declare-fun e!1839032 () Bool)

(declare-fun tp!936003 () Bool)

(declare-fun tp!936006 () Bool)

(assert (=> b!2913995 (= e!1839032 (and tp!936003 tp!936006))))

(assert (=> b!2913660 (= tp!935955 e!1839032)))

(declare-fun b!2913996 () Bool)

(declare-fun tp!936004 () Bool)

(assert (=> b!2913996 (= e!1839032 tp!936004)))

(declare-fun b!2913994 () Bool)

(assert (=> b!2913994 (= e!1839032 tp_is_empty!15487)))

(declare-fun b!2913997 () Bool)

(declare-fun tp!936002 () Bool)

(declare-fun tp!936005 () Bool)

(assert (=> b!2913997 (= e!1839032 (and tp!936002 tp!936005))))

(assert (= (and b!2913660 (is-ElementMatch!8962 (regOne!18437 r!17423))) b!2913994))

(assert (= (and b!2913660 (is-Concat!14283 (regOne!18437 r!17423))) b!2913995))

(assert (= (and b!2913660 (is-Star!8962 (regOne!18437 r!17423))) b!2913996))

(assert (= (and b!2913660 (is-Union!8962 (regOne!18437 r!17423))) b!2913997))

(declare-fun b!2913999 () Bool)

(declare-fun e!1839033 () Bool)

(declare-fun tp!936008 () Bool)

(declare-fun tp!936011 () Bool)

(assert (=> b!2913999 (= e!1839033 (and tp!936008 tp!936011))))

(assert (=> b!2913660 (= tp!935953 e!1839033)))

(declare-fun b!2914000 () Bool)

(declare-fun tp!936009 () Bool)

(assert (=> b!2914000 (= e!1839033 tp!936009)))

(declare-fun b!2913998 () Bool)

(assert (=> b!2913998 (= e!1839033 tp_is_empty!15487)))

(declare-fun b!2914001 () Bool)

(declare-fun tp!936007 () Bool)

(declare-fun tp!936010 () Bool)

(assert (=> b!2914001 (= e!1839033 (and tp!936007 tp!936010))))

(assert (= (and b!2913660 (is-ElementMatch!8962 (regTwo!18437 r!17423))) b!2913998))

(assert (= (and b!2913660 (is-Concat!14283 (regTwo!18437 r!17423))) b!2913999))

(assert (= (and b!2913660 (is-Star!8962 (regTwo!18437 r!17423))) b!2914000))

(assert (= (and b!2913660 (is-Union!8962 (regTwo!18437 r!17423))) b!2914001))

(push 1)

(assert (not b!2913983))

(assert (not bm!190278))

(assert (not bm!190277))

(assert (not bm!190262))

(assert (not b!2913912))

(assert (not b!2913911))

(assert (not b!2913964))

(assert (not d!837887))

(assert (not d!837903))

(assert (not b!2913995))

(assert (not b!2913815))

(assert (not b!2913978))

(assert (not bm!190280))

(assert (not b!2914000))

(assert tp_is_empty!15487)

(assert (not b!2913988))

(assert (not d!837897))

(assert (not d!837905))

(assert (not b!2913853))

(assert (not b!2913996))

(assert (not b!2913854))

(assert (not b!2913987))

(assert (not b!2913820))

(assert (not b!2913767))

(assert (not b!2913982))

(assert (not b!2913845))

(assert (not b!2913850))

(assert (not b!2913821))

(assert (not d!837891))

(assert (not bm!190281))

(assert (not b!2913984))

(assert (not bm!190267))

(assert (not d!837901))

(assert (not b!2913980))

(assert (not bm!190257))

(assert (not b!2913905))

(assert (not b!2913904))

(assert (not b!2913955))

(assert (not bm!190256))

(assert (not b!2913979))

(assert (not d!837885))

(assert (not b!2913906))

(assert (not b!2913817))

(assert (not b!2913997))

(assert (not b!2913818))

(assert (not b!2913907))

(assert (not b!2913999))

(assert (not d!837889))

(assert (not b!2913768))

(assert (not b!2913986))

(assert (not b!2913812))

(assert (not d!837899))

(assert (not b!2913848))

(assert (not b!2913851))

(assert (not b!2914001))

(assert (not b!2913993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

