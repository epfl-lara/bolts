; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667728 () Bool)

(assert start!667728)

(declare-fun b!6958786 () Bool)

(declare-fun e!4184182 () Bool)

(declare-fun tp!1918410 () Bool)

(assert (=> b!6958786 (= e!4184182 tp!1918410)))

(declare-fun b!6958787 () Bool)

(declare-fun e!4184185 () Bool)

(declare-fun tp_is_empty!43369 () Bool)

(declare-fun tp!1918409 () Bool)

(assert (=> b!6958787 (= e!4184185 (and tp_is_empty!43369 tp!1918409))))

(declare-fun res!2839515 () Bool)

(declare-fun e!4184184 () Bool)

(assert (=> start!667728 (=> (not res!2839515) (not e!4184184))))

(declare-datatypes ((C!34414 0))(
  ( (C!34415 (val!26909 Int)) )
))
(declare-datatypes ((Regex!17072 0))(
  ( (ElementMatch!17072 (c!1290370 C!34414)) (Concat!25917 (regOne!34656 Regex!17072) (regTwo!34656 Regex!17072)) (EmptyExpr!17072) (Star!17072 (reg!17401 Regex!17072)) (EmptyLang!17072) (Union!17072 (regOne!34657 Regex!17072) (regTwo!34657 Regex!17072)) )
))
(declare-datatypes ((List!66829 0))(
  ( (Nil!66705) (Cons!66705 (h!73153 Regex!17072) (t!380572 List!66829)) )
))
(declare-fun l!9142 () List!66829)

(declare-fun lambda!397021 () Int)

(declare-fun forall!15943 (List!66829 Int) Bool)

(assert (=> start!667728 (= res!2839515 (forall!15943 l!9142 lambda!397021))))

(assert (=> start!667728 e!4184184))

(declare-fun e!4184183 () Bool)

(assert (=> start!667728 e!4184183))

(assert (=> start!667728 e!4184182))

(assert (=> start!667728 e!4184185))

(declare-fun b!6958788 () Bool)

(declare-fun res!2839519 () Bool)

(assert (=> b!6958788 (=> (not res!2839519) (not e!4184184))))

(declare-fun r!13765 () Regex!17072)

(declare-fun generalisedUnion!2547 (List!66829) Regex!17072)

(assert (=> b!6958788 (= res!2839519 (= r!13765 (generalisedUnion!2547 l!9142)))))

(declare-fun b!6958789 () Bool)

(declare-fun res!2839516 () Bool)

(declare-fun e!4184181 () Bool)

(assert (=> b!6958789 (=> res!2839516 e!4184181)))

(declare-fun isEmpty!38933 (List!66829) Bool)

(declare-fun tail!13014 (List!66829) List!66829)

(assert (=> b!6958789 (= res!2839516 (not (isEmpty!38933 (tail!13014 l!9142))))))

(declare-fun b!6958790 () Bool)

(declare-fun tp!1918411 () Bool)

(declare-fun tp!1918408 () Bool)

(assert (=> b!6958790 (= e!4184182 (and tp!1918411 tp!1918408))))

(declare-fun b!6958791 () Bool)

(assert (=> b!6958791 (= e!4184181 (not (= l!9142 Nil!66705)))))

(declare-fun b!6958792 () Bool)

(assert (=> b!6958792 (= e!4184182 tp_is_empty!43369)))

(declare-fun b!6958793 () Bool)

(assert (=> b!6958793 (= e!4184184 (not e!4184181))))

(declare-fun res!2839518 () Bool)

(assert (=> b!6958793 (=> res!2839518 e!4184181)))

(assert (=> b!6958793 (= res!2839518 (not (is-Union!17072 r!13765)))))

(declare-datatypes ((List!66830 0))(
  ( (Nil!66706) (Cons!66706 (h!73154 C!34414) (t!380573 List!66830)) )
))
(declare-fun s!9351 () List!66830)

(declare-fun matchR!9178 (Regex!17072 List!66830) Bool)

(declare-fun matchRSpec!4093 (Regex!17072 List!66830) Bool)

(assert (=> b!6958793 (= (matchR!9178 r!13765 s!9351) (matchRSpec!4093 r!13765 s!9351))))

(declare-datatypes ((Unit!160804 0))(
  ( (Unit!160805) )
))
(declare-fun lt!2478756 () Unit!160804)

(declare-fun mainMatchTheorem!4087 (Regex!17072 List!66830) Unit!160804)

(assert (=> b!6958793 (= lt!2478756 (mainMatchTheorem!4087 r!13765 s!9351))))

(declare-fun b!6958794 () Bool)

(declare-fun tp!1918412 () Bool)

(declare-fun tp!1918406 () Bool)

(assert (=> b!6958794 (= e!4184182 (and tp!1918412 tp!1918406))))

(declare-fun b!6958795 () Bool)

(declare-fun res!2839517 () Bool)

(assert (=> b!6958795 (=> res!2839517 e!4184181)))

(assert (=> b!6958795 (= res!2839517 (isEmpty!38933 l!9142))))

(declare-fun b!6958796 () Bool)

(declare-fun tp!1918407 () Bool)

(declare-fun tp!1918413 () Bool)

(assert (=> b!6958796 (= e!4184183 (and tp!1918407 tp!1918413))))

(assert (= (and start!667728 res!2839515) b!6958788))

(assert (= (and b!6958788 res!2839519) b!6958793))

(assert (= (and b!6958793 (not res!2839518)) b!6958795))

(assert (= (and b!6958795 (not res!2839517)) b!6958789))

(assert (= (and b!6958789 (not res!2839516)) b!6958791))

(assert (= (and start!667728 (is-Cons!66705 l!9142)) b!6958796))

(assert (= (and start!667728 (is-ElementMatch!17072 r!13765)) b!6958792))

(assert (= (and start!667728 (is-Concat!25917 r!13765)) b!6958794))

(assert (= (and start!667728 (is-Star!17072 r!13765)) b!6958786))

(assert (= (and start!667728 (is-Union!17072 r!13765)) b!6958790))

(assert (= (and start!667728 (is-Cons!66706 s!9351)) b!6958787))

(declare-fun m!7655376 () Bool)

(assert (=> start!667728 m!7655376))

(declare-fun m!7655378 () Bool)

(assert (=> b!6958793 m!7655378))

(declare-fun m!7655380 () Bool)

(assert (=> b!6958793 m!7655380))

(declare-fun m!7655382 () Bool)

(assert (=> b!6958793 m!7655382))

(declare-fun m!7655384 () Bool)

(assert (=> b!6958795 m!7655384))

(declare-fun m!7655386 () Bool)

(assert (=> b!6958789 m!7655386))

(assert (=> b!6958789 m!7655386))

(declare-fun m!7655388 () Bool)

(assert (=> b!6958789 m!7655388))

(declare-fun m!7655390 () Bool)

(assert (=> b!6958788 m!7655390))

(push 1)

(assert (not b!6958793))

(assert (not b!6958794))

(assert (not b!6958789))

(assert (not b!6958787))

(assert tp_is_empty!43369)

(assert (not b!6958796))

(assert (not start!667728))

(assert (not b!6958795))

(assert (not b!6958786))

(assert (not b!6958790))

(assert (not b!6958788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6958858 () Bool)

(declare-fun e!4184216 () Bool)

(declare-fun nullable!6881 (Regex!17072) Bool)

(assert (=> b!6958858 (= e!4184216 (nullable!6881 r!13765))))

(declare-fun b!6958859 () Bool)

(declare-fun res!2839552 () Bool)

(declare-fun e!4184215 () Bool)

(assert (=> b!6958859 (=> (not res!2839552) (not e!4184215))))

(declare-fun call!631912 () Bool)

(assert (=> b!6958859 (= res!2839552 (not call!631912))))

(declare-fun b!6958860 () Bool)

(declare-fun res!2839554 () Bool)

(declare-fun e!4184220 () Bool)

(assert (=> b!6958860 (=> res!2839554 e!4184220)))

(assert (=> b!6958860 (= res!2839554 e!4184215)))

(declare-fun res!2839553 () Bool)

(assert (=> b!6958860 (=> (not res!2839553) (not e!4184215))))

(declare-fun lt!2478762 () Bool)

(assert (=> b!6958860 (= res!2839553 lt!2478762)))

(declare-fun b!6958861 () Bool)

(declare-fun e!4184221 () Bool)

(declare-fun e!4184217 () Bool)

(assert (=> b!6958861 (= e!4184221 e!4184217)))

(declare-fun c!1290379 () Bool)

(assert (=> b!6958861 (= c!1290379 (is-EmptyLang!17072 r!13765))))

(declare-fun bm!631907 () Bool)

(declare-fun isEmpty!38935 (List!66830) Bool)

(assert (=> bm!631907 (= call!631912 (isEmpty!38935 s!9351))))

(declare-fun b!6958862 () Bool)

(declare-fun res!2839556 () Bool)

(assert (=> b!6958862 (=> (not res!2839556) (not e!4184215))))

(declare-fun tail!13016 (List!66830) List!66830)

(assert (=> b!6958862 (= res!2839556 (isEmpty!38935 (tail!13016 s!9351)))))

(declare-fun b!6958863 () Bool)

(declare-fun res!2839558 () Bool)

(declare-fun e!4184219 () Bool)

(assert (=> b!6958863 (=> res!2839558 e!4184219)))

(assert (=> b!6958863 (= res!2839558 (not (isEmpty!38935 (tail!13016 s!9351))))))

(declare-fun b!6958864 () Bool)

(declare-fun head!13962 (List!66830) C!34414)

(assert (=> b!6958864 (= e!4184219 (not (= (head!13962 s!9351) (c!1290370 r!13765))))))

(declare-fun d!2169836 () Bool)

(assert (=> d!2169836 e!4184221))

(declare-fun c!1290380 () Bool)

(assert (=> d!2169836 (= c!1290380 (is-EmptyExpr!17072 r!13765))))

(assert (=> d!2169836 (= lt!2478762 e!4184216)))

(declare-fun c!1290378 () Bool)

(assert (=> d!2169836 (= c!1290378 (isEmpty!38935 s!9351))))

(declare-fun validRegex!8774 (Regex!17072) Bool)

(assert (=> d!2169836 (validRegex!8774 r!13765)))

(assert (=> d!2169836 (= (matchR!9178 r!13765 s!9351) lt!2478762)))

(declare-fun b!6958865 () Bool)

(assert (=> b!6958865 (= e!4184221 (= lt!2478762 call!631912))))

(declare-fun b!6958866 () Bool)

(declare-fun e!4184218 () Bool)

(assert (=> b!6958866 (= e!4184218 e!4184219)))

(declare-fun res!2839557 () Bool)

(assert (=> b!6958866 (=> res!2839557 e!4184219)))

(assert (=> b!6958866 (= res!2839557 call!631912)))

(declare-fun b!6958867 () Bool)

(declare-fun derivativeStep!5507 (Regex!17072 C!34414) Regex!17072)

(assert (=> b!6958867 (= e!4184216 (matchR!9178 (derivativeStep!5507 r!13765 (head!13962 s!9351)) (tail!13016 s!9351)))))

(declare-fun b!6958868 () Bool)

(assert (=> b!6958868 (= e!4184215 (= (head!13962 s!9351) (c!1290370 r!13765)))))

(declare-fun b!6958869 () Bool)

(assert (=> b!6958869 (= e!4184217 (not lt!2478762))))

(declare-fun b!6958870 () Bool)

(declare-fun res!2839555 () Bool)

(assert (=> b!6958870 (=> res!2839555 e!4184220)))

(assert (=> b!6958870 (= res!2839555 (not (is-ElementMatch!17072 r!13765)))))

(assert (=> b!6958870 (= e!4184217 e!4184220)))

(declare-fun b!6958871 () Bool)

(assert (=> b!6958871 (= e!4184220 e!4184218)))

(declare-fun res!2839551 () Bool)

(assert (=> b!6958871 (=> (not res!2839551) (not e!4184218))))

(assert (=> b!6958871 (= res!2839551 (not lt!2478762))))

(assert (= (and d!2169836 c!1290378) b!6958858))

(assert (= (and d!2169836 (not c!1290378)) b!6958867))

(assert (= (and d!2169836 c!1290380) b!6958865))

(assert (= (and d!2169836 (not c!1290380)) b!6958861))

(assert (= (and b!6958861 c!1290379) b!6958869))

(assert (= (and b!6958861 (not c!1290379)) b!6958870))

(assert (= (and b!6958870 (not res!2839555)) b!6958860))

(assert (= (and b!6958860 res!2839553) b!6958859))

(assert (= (and b!6958859 res!2839552) b!6958862))

(assert (= (and b!6958862 res!2839556) b!6958868))

(assert (= (and b!6958860 (not res!2839554)) b!6958871))

(assert (= (and b!6958871 res!2839551) b!6958866))

(assert (= (and b!6958866 (not res!2839557)) b!6958863))

(assert (= (and b!6958863 (not res!2839558)) b!6958864))

(assert (= (or b!6958865 b!6958859 b!6958866) bm!631907))

(declare-fun m!7655408 () Bool)

(assert (=> b!6958864 m!7655408))

(declare-fun m!7655410 () Bool)

(assert (=> b!6958862 m!7655410))

(assert (=> b!6958862 m!7655410))

(declare-fun m!7655412 () Bool)

(assert (=> b!6958862 m!7655412))

(declare-fun m!7655414 () Bool)

(assert (=> b!6958858 m!7655414))

(declare-fun m!7655416 () Bool)

(assert (=> bm!631907 m!7655416))

(assert (=> b!6958867 m!7655408))

(assert (=> b!6958867 m!7655408))

(declare-fun m!7655418 () Bool)

(assert (=> b!6958867 m!7655418))

(assert (=> b!6958867 m!7655410))

(assert (=> b!6958867 m!7655418))

(assert (=> b!6958867 m!7655410))

(declare-fun m!7655420 () Bool)

(assert (=> b!6958867 m!7655420))

(assert (=> b!6958863 m!7655410))

(assert (=> b!6958863 m!7655410))

(assert (=> b!6958863 m!7655412))

(assert (=> b!6958868 m!7655408))

(assert (=> d!2169836 m!7655416))

(declare-fun m!7655422 () Bool)

(assert (=> d!2169836 m!7655422))

(assert (=> b!6958793 d!2169836))

(declare-fun b!6958934 () Bool)

(assert (=> b!6958934 true))

(assert (=> b!6958934 true))

(declare-fun bs!1858255 () Bool)

(declare-fun b!6958944 () Bool)

(assert (= bs!1858255 (and b!6958944 b!6958934)))

(declare-fun lambda!397033 () Int)

(declare-fun lambda!397032 () Int)

(assert (=> bs!1858255 (not (= lambda!397033 lambda!397032))))

(assert (=> b!6958944 true))

(assert (=> b!6958944 true))

(declare-fun e!4184262 () Bool)

(declare-fun call!631917 () Bool)

(assert (=> b!6958934 (= e!4184262 call!631917)))

(declare-fun b!6958935 () Bool)

(declare-fun e!4184261 () Bool)

(declare-fun e!4184260 () Bool)

(assert (=> b!6958935 (= e!4184261 e!4184260)))

(declare-fun res!2839583 () Bool)

(assert (=> b!6958935 (= res!2839583 (not (is-EmptyLang!17072 r!13765)))))

(assert (=> b!6958935 (=> (not res!2839583) (not e!4184260))))

(declare-fun d!2169842 () Bool)

(declare-fun c!1290401 () Bool)

(assert (=> d!2169842 (= c!1290401 (is-EmptyExpr!17072 r!13765))))

(assert (=> d!2169842 (= (matchRSpec!4093 r!13765 s!9351) e!4184261)))

(declare-fun b!6958936 () Bool)

(declare-fun call!631918 () Bool)

(assert (=> b!6958936 (= e!4184261 call!631918)))

(declare-fun b!6958937 () Bool)

(declare-fun c!1290402 () Bool)

(assert (=> b!6958937 (= c!1290402 (is-ElementMatch!17072 r!13765))))

(declare-fun e!4184258 () Bool)

(assert (=> b!6958937 (= e!4184260 e!4184258)))

(declare-fun b!6958938 () Bool)

(assert (=> b!6958938 (= e!4184258 (= s!9351 (Cons!66706 (c!1290370 r!13765) Nil!66706)))))

(declare-fun b!6958939 () Bool)

(declare-fun e!4184259 () Bool)

(declare-fun e!4184264 () Bool)

(assert (=> b!6958939 (= e!4184259 e!4184264)))

(declare-fun res!2839581 () Bool)

(assert (=> b!6958939 (= res!2839581 (matchRSpec!4093 (regOne!34657 r!13765) s!9351))))

(assert (=> b!6958939 (=> res!2839581 e!4184264)))

(declare-fun b!6958940 () Bool)

(assert (=> b!6958940 (= e!4184264 (matchRSpec!4093 (regTwo!34657 r!13765) s!9351))))

(declare-fun b!6958941 () Bool)

(declare-fun e!4184263 () Bool)

(assert (=> b!6958941 (= e!4184259 e!4184263)))

(declare-fun c!1290403 () Bool)

(assert (=> b!6958941 (= c!1290403 (is-Star!17072 r!13765))))

(declare-fun b!6958942 () Bool)

(declare-fun c!1290404 () Bool)

(assert (=> b!6958942 (= c!1290404 (is-Union!17072 r!13765))))

(assert (=> b!6958942 (= e!4184258 e!4184259)))

(declare-fun b!6958943 () Bool)

(declare-fun res!2839582 () Bool)

(assert (=> b!6958943 (=> res!2839582 e!4184262)))

(assert (=> b!6958943 (= res!2839582 call!631918)))

(assert (=> b!6958943 (= e!4184263 e!4184262)))

(declare-fun bm!631912 () Bool)

(declare-fun Exists!4063 (Int) Bool)

(assert (=> bm!631912 (= call!631917 (Exists!4063 (ite c!1290403 lambda!397032 lambda!397033)))))

(declare-fun bm!631913 () Bool)

(assert (=> bm!631913 (= call!631918 (isEmpty!38935 s!9351))))

(assert (=> b!6958944 (= e!4184263 call!631917)))

(assert (= (and d!2169842 c!1290401) b!6958936))

(assert (= (and d!2169842 (not c!1290401)) b!6958935))

(assert (= (and b!6958935 res!2839583) b!6958937))

(assert (= (and b!6958937 c!1290402) b!6958938))

(assert (= (and b!6958937 (not c!1290402)) b!6958942))

(assert (= (and b!6958942 c!1290404) b!6958939))

(assert (= (and b!6958942 (not c!1290404)) b!6958941))

(assert (= (and b!6958939 (not res!2839581)) b!6958940))

(assert (= (and b!6958941 c!1290403) b!6958943))

(assert (= (and b!6958941 (not c!1290403)) b!6958944))

(assert (= (and b!6958943 (not res!2839582)) b!6958934))

(assert (= (or b!6958934 b!6958944) bm!631912))

(assert (= (or b!6958936 b!6958943) bm!631913))

(declare-fun m!7655438 () Bool)

(assert (=> b!6958939 m!7655438))

(declare-fun m!7655440 () Bool)

(assert (=> b!6958940 m!7655440))

(declare-fun m!7655442 () Bool)

(assert (=> bm!631912 m!7655442))

(assert (=> bm!631913 m!7655416))

(assert (=> b!6958793 d!2169842))

(declare-fun d!2169846 () Bool)

(assert (=> d!2169846 (= (matchR!9178 r!13765 s!9351) (matchRSpec!4093 r!13765 s!9351))))

(declare-fun lt!2478768 () Unit!160804)

(declare-fun choose!51874 (Regex!17072 List!66830) Unit!160804)

(assert (=> d!2169846 (= lt!2478768 (choose!51874 r!13765 s!9351))))

(assert (=> d!2169846 (validRegex!8774 r!13765)))

(assert (=> d!2169846 (= (mainMatchTheorem!4087 r!13765 s!9351) lt!2478768)))

(declare-fun bs!1858256 () Bool)

(assert (= bs!1858256 d!2169846))

(assert (=> bs!1858256 m!7655378))

(assert (=> bs!1858256 m!7655380))

(declare-fun m!7655444 () Bool)

(assert (=> bs!1858256 m!7655444))

(assert (=> bs!1858256 m!7655422))

(assert (=> b!6958793 d!2169846))

(declare-fun bs!1858257 () Bool)

(declare-fun d!2169848 () Bool)

(assert (= bs!1858257 (and d!2169848 start!667728)))

(declare-fun lambda!397036 () Int)

(assert (=> bs!1858257 (= lambda!397036 lambda!397021)))

(declare-fun b!6958969 () Bool)

(declare-fun e!4184278 () Bool)

(declare-fun lt!2478771 () Regex!17072)

(declare-fun isUnion!1462 (Regex!17072) Bool)

(assert (=> b!6958969 (= e!4184278 (isUnion!1462 lt!2478771))))

(declare-fun b!6958970 () Bool)

(declare-fun e!4184277 () Bool)

(assert (=> b!6958970 (= e!4184277 e!4184278)))

(declare-fun c!1290413 () Bool)

(assert (=> b!6958970 (= c!1290413 (isEmpty!38933 (tail!13014 l!9142)))))

(declare-fun b!6958971 () Bool)

(declare-fun head!13963 (List!66829) Regex!17072)

(assert (=> b!6958971 (= e!4184278 (= lt!2478771 (head!13963 l!9142)))))

(declare-fun e!4184282 () Bool)

(assert (=> d!2169848 e!4184282))

(declare-fun res!2839589 () Bool)

(assert (=> d!2169848 (=> (not res!2839589) (not e!4184282))))

(assert (=> d!2169848 (= res!2839589 (validRegex!8774 lt!2478771))))

(declare-fun e!4184280 () Regex!17072)

(assert (=> d!2169848 (= lt!2478771 e!4184280)))

(declare-fun c!1290414 () Bool)

(declare-fun e!4184281 () Bool)

(assert (=> d!2169848 (= c!1290414 e!4184281)))

(declare-fun res!2839588 () Bool)

(assert (=> d!2169848 (=> (not res!2839588) (not e!4184281))))

(assert (=> d!2169848 (= res!2839588 (is-Cons!66705 l!9142))))

(assert (=> d!2169848 (forall!15943 l!9142 lambda!397036)))

(assert (=> d!2169848 (= (generalisedUnion!2547 l!9142) lt!2478771)))

(declare-fun b!6958972 () Bool)

(assert (=> b!6958972 (= e!4184281 (isEmpty!38933 (t!380572 l!9142)))))

(declare-fun b!6958973 () Bool)

(assert (=> b!6958973 (= e!4184282 e!4184277)))

(declare-fun c!1290415 () Bool)

(assert (=> b!6958973 (= c!1290415 (isEmpty!38933 l!9142))))

(declare-fun b!6958974 () Bool)

(declare-fun e!4184279 () Regex!17072)

(assert (=> b!6958974 (= e!4184279 (Union!17072 (h!73153 l!9142) (generalisedUnion!2547 (t!380572 l!9142))))))

(declare-fun b!6958975 () Bool)

(assert (=> b!6958975 (= e!4184280 e!4184279)))

(declare-fun c!1290416 () Bool)

(assert (=> b!6958975 (= c!1290416 (is-Cons!66705 l!9142))))

(declare-fun b!6958976 () Bool)

(assert (=> b!6958976 (= e!4184280 (h!73153 l!9142))))

(declare-fun b!6958977 () Bool)

(declare-fun isEmptyLang!2034 (Regex!17072) Bool)

(assert (=> b!6958977 (= e!4184277 (isEmptyLang!2034 lt!2478771))))

(declare-fun b!6958978 () Bool)

(assert (=> b!6958978 (= e!4184279 EmptyLang!17072)))

(assert (= (and d!2169848 res!2839588) b!6958972))

(assert (= (and d!2169848 c!1290414) b!6958976))

(assert (= (and d!2169848 (not c!1290414)) b!6958975))

(assert (= (and b!6958975 c!1290416) b!6958974))

(assert (= (and b!6958975 (not c!1290416)) b!6958978))

(assert (= (and d!2169848 res!2839589) b!6958973))

(assert (= (and b!6958973 c!1290415) b!6958977))

(assert (= (and b!6958973 (not c!1290415)) b!6958970))

(assert (= (and b!6958970 c!1290413) b!6958971))

(assert (= (and b!6958970 (not c!1290413)) b!6958969))

(declare-fun m!7655446 () Bool)

(assert (=> b!6958971 m!7655446))

(assert (=> b!6958973 m!7655384))

(declare-fun m!7655448 () Bool)

(assert (=> b!6958977 m!7655448))

(assert (=> b!6958970 m!7655386))

(assert (=> b!6958970 m!7655386))

(assert (=> b!6958970 m!7655388))

(declare-fun m!7655450 () Bool)

(assert (=> d!2169848 m!7655450))

(declare-fun m!7655452 () Bool)

(assert (=> d!2169848 m!7655452))

(declare-fun m!7655454 () Bool)

(assert (=> b!6958974 m!7655454))

(declare-fun m!7655456 () Bool)

(assert (=> b!6958969 m!7655456))

(declare-fun m!7655458 () Bool)

(assert (=> b!6958972 m!7655458))

(assert (=> b!6958788 d!2169848))

(declare-fun d!2169850 () Bool)

(assert (=> d!2169850 (= (isEmpty!38933 (tail!13014 l!9142)) (is-Nil!66705 (tail!13014 l!9142)))))

(assert (=> b!6958789 d!2169850))

(declare-fun d!2169852 () Bool)

(assert (=> d!2169852 (= (tail!13014 l!9142) (t!380572 l!9142))))

(assert (=> b!6958789 d!2169852))

(declare-fun d!2169854 () Bool)

(assert (=> d!2169854 (= (isEmpty!38933 l!9142) (is-Nil!66705 l!9142))))

(assert (=> b!6958795 d!2169854))

(declare-fun d!2169856 () Bool)

(declare-fun res!2839610 () Bool)

(declare-fun e!4184301 () Bool)

(assert (=> d!2169856 (=> res!2839610 e!4184301)))

(assert (=> d!2169856 (= res!2839610 (is-Nil!66705 l!9142))))

(assert (=> d!2169856 (= (forall!15943 l!9142 lambda!397021) e!4184301)))

(declare-fun b!6959011 () Bool)

(declare-fun e!4184302 () Bool)

(assert (=> b!6959011 (= e!4184301 e!4184302)))

(declare-fun res!2839611 () Bool)

(assert (=> b!6959011 (=> (not res!2839611) (not e!4184302))))

(declare-fun dynLambda!26605 (Int Regex!17072) Bool)

(assert (=> b!6959011 (= res!2839611 (dynLambda!26605 lambda!397021 (h!73153 l!9142)))))

(declare-fun b!6959012 () Bool)

(assert (=> b!6959012 (= e!4184302 (forall!15943 (t!380572 l!9142) lambda!397021))))

(assert (= (and d!2169856 (not res!2839610)) b!6959011))

(assert (= (and b!6959011 res!2839611) b!6959012))

(declare-fun b_lambda!260521 () Bool)

(assert (=> (not b_lambda!260521) (not b!6959011)))

(declare-fun m!7655460 () Bool)

(assert (=> b!6959011 m!7655460))

(declare-fun m!7655462 () Bool)

(assert (=> b!6959012 m!7655462))

(assert (=> start!667728 d!2169856))

(declare-fun b!6959017 () Bool)

(declare-fun e!4184305 () Bool)

(declare-fun tp!1918440 () Bool)

(assert (=> b!6959017 (= e!4184305 (and tp_is_empty!43369 tp!1918440))))

(assert (=> b!6958787 (= tp!1918409 e!4184305)))

(assert (= (and b!6958787 (is-Cons!66706 (t!380573 s!9351))) b!6959017))

(declare-fun b!6959031 () Bool)

(declare-fun e!4184308 () Bool)

(declare-fun tp!1918453 () Bool)

(declare-fun tp!1918452 () Bool)

(assert (=> b!6959031 (= e!4184308 (and tp!1918453 tp!1918452))))

(declare-fun b!6959028 () Bool)

(assert (=> b!6959028 (= e!4184308 tp_is_empty!43369)))

(declare-fun b!6959029 () Bool)

(declare-fun tp!1918455 () Bool)

(declare-fun tp!1918454 () Bool)

(assert (=> b!6959029 (= e!4184308 (and tp!1918455 tp!1918454))))

(assert (=> b!6958794 (= tp!1918412 e!4184308)))

(declare-fun b!6959030 () Bool)

(declare-fun tp!1918451 () Bool)

(assert (=> b!6959030 (= e!4184308 tp!1918451)))

(assert (= (and b!6958794 (is-ElementMatch!17072 (regOne!34656 r!13765))) b!6959028))

(assert (= (and b!6958794 (is-Concat!25917 (regOne!34656 r!13765))) b!6959029))

(assert (= (and b!6958794 (is-Star!17072 (regOne!34656 r!13765))) b!6959030))

(assert (= (and b!6958794 (is-Union!17072 (regOne!34656 r!13765))) b!6959031))

(declare-fun b!6959035 () Bool)

(declare-fun e!4184309 () Bool)

(declare-fun tp!1918458 () Bool)

(declare-fun tp!1918457 () Bool)

(assert (=> b!6959035 (= e!4184309 (and tp!1918458 tp!1918457))))

(declare-fun b!6959032 () Bool)

(assert (=> b!6959032 (= e!4184309 tp_is_empty!43369)))

(declare-fun b!6959033 () Bool)

(declare-fun tp!1918460 () Bool)

(declare-fun tp!1918459 () Bool)

(assert (=> b!6959033 (= e!4184309 (and tp!1918460 tp!1918459))))

(assert (=> b!6958794 (= tp!1918406 e!4184309)))

(declare-fun b!6959034 () Bool)

(declare-fun tp!1918456 () Bool)

(assert (=> b!6959034 (= e!4184309 tp!1918456)))

(assert (= (and b!6958794 (is-ElementMatch!17072 (regTwo!34656 r!13765))) b!6959032))

(assert (= (and b!6958794 (is-Concat!25917 (regTwo!34656 r!13765))) b!6959033))

(assert (= (and b!6958794 (is-Star!17072 (regTwo!34656 r!13765))) b!6959034))

(assert (= (and b!6958794 (is-Union!17072 (regTwo!34656 r!13765))) b!6959035))

(declare-fun b!6959039 () Bool)

(declare-fun e!4184310 () Bool)

(declare-fun tp!1918463 () Bool)

(declare-fun tp!1918462 () Bool)

(assert (=> b!6959039 (= e!4184310 (and tp!1918463 tp!1918462))))

(declare-fun b!6959036 () Bool)

(assert (=> b!6959036 (= e!4184310 tp_is_empty!43369)))

(declare-fun b!6959037 () Bool)

(declare-fun tp!1918465 () Bool)

(declare-fun tp!1918464 () Bool)

(assert (=> b!6959037 (= e!4184310 (and tp!1918465 tp!1918464))))

(assert (=> b!6958790 (= tp!1918411 e!4184310)))

(declare-fun b!6959038 () Bool)

(declare-fun tp!1918461 () Bool)

(assert (=> b!6959038 (= e!4184310 tp!1918461)))

(assert (= (and b!6958790 (is-ElementMatch!17072 (regOne!34657 r!13765))) b!6959036))

(assert (= (and b!6958790 (is-Concat!25917 (regOne!34657 r!13765))) b!6959037))

(assert (= (and b!6958790 (is-Star!17072 (regOne!34657 r!13765))) b!6959038))

(assert (= (and b!6958790 (is-Union!17072 (regOne!34657 r!13765))) b!6959039))

(declare-fun b!6959043 () Bool)

(declare-fun e!4184311 () Bool)

(declare-fun tp!1918468 () Bool)

(declare-fun tp!1918467 () Bool)

(assert (=> b!6959043 (= e!4184311 (and tp!1918468 tp!1918467))))

(declare-fun b!6959040 () Bool)

(assert (=> b!6959040 (= e!4184311 tp_is_empty!43369)))

(declare-fun b!6959041 () Bool)

(declare-fun tp!1918470 () Bool)

(declare-fun tp!1918469 () Bool)

(assert (=> b!6959041 (= e!4184311 (and tp!1918470 tp!1918469))))

(assert (=> b!6958790 (= tp!1918408 e!4184311)))

(declare-fun b!6959042 () Bool)

(declare-fun tp!1918466 () Bool)

(assert (=> b!6959042 (= e!4184311 tp!1918466)))

(assert (= (and b!6958790 (is-ElementMatch!17072 (regTwo!34657 r!13765))) b!6959040))

(assert (= (and b!6958790 (is-Concat!25917 (regTwo!34657 r!13765))) b!6959041))

(assert (= (and b!6958790 (is-Star!17072 (regTwo!34657 r!13765))) b!6959042))

(assert (= (and b!6958790 (is-Union!17072 (regTwo!34657 r!13765))) b!6959043))

(declare-fun b!6959047 () Bool)

(declare-fun e!4184312 () Bool)

(declare-fun tp!1918473 () Bool)

(declare-fun tp!1918472 () Bool)

(assert (=> b!6959047 (= e!4184312 (and tp!1918473 tp!1918472))))

(declare-fun b!6959044 () Bool)

(assert (=> b!6959044 (= e!4184312 tp_is_empty!43369)))

(declare-fun b!6959045 () Bool)

(declare-fun tp!1918475 () Bool)

(declare-fun tp!1918474 () Bool)

(assert (=> b!6959045 (= e!4184312 (and tp!1918475 tp!1918474))))

(assert (=> b!6958796 (= tp!1918407 e!4184312)))

(declare-fun b!6959046 () Bool)

(declare-fun tp!1918471 () Bool)

(assert (=> b!6959046 (= e!4184312 tp!1918471)))

(assert (= (and b!6958796 (is-ElementMatch!17072 (h!73153 l!9142))) b!6959044))

(assert (= (and b!6958796 (is-Concat!25917 (h!73153 l!9142))) b!6959045))

(assert (= (and b!6958796 (is-Star!17072 (h!73153 l!9142))) b!6959046))

(assert (= (and b!6958796 (is-Union!17072 (h!73153 l!9142))) b!6959047))

(declare-fun b!6959052 () Bool)

(declare-fun e!4184315 () Bool)

(declare-fun tp!1918480 () Bool)

(declare-fun tp!1918481 () Bool)

(assert (=> b!6959052 (= e!4184315 (and tp!1918480 tp!1918481))))

(assert (=> b!6958796 (= tp!1918413 e!4184315)))

(assert (= (and b!6958796 (is-Cons!66705 (t!380572 l!9142))) b!6959052))

(declare-fun b!6959056 () Bool)

(declare-fun e!4184316 () Bool)

(declare-fun tp!1918484 () Bool)

(declare-fun tp!1918483 () Bool)

(assert (=> b!6959056 (= e!4184316 (and tp!1918484 tp!1918483))))

(declare-fun b!6959053 () Bool)

(assert (=> b!6959053 (= e!4184316 tp_is_empty!43369)))

(declare-fun b!6959054 () Bool)

(declare-fun tp!1918486 () Bool)

(declare-fun tp!1918485 () Bool)

(assert (=> b!6959054 (= e!4184316 (and tp!1918486 tp!1918485))))

(assert (=> b!6958786 (= tp!1918410 e!4184316)))

(declare-fun b!6959055 () Bool)

(declare-fun tp!1918482 () Bool)

(assert (=> b!6959055 (= e!4184316 tp!1918482)))

(assert (= (and b!6958786 (is-ElementMatch!17072 (reg!17401 r!13765))) b!6959053))

(assert (= (and b!6958786 (is-Concat!25917 (reg!17401 r!13765))) b!6959054))

(assert (= (and b!6958786 (is-Star!17072 (reg!17401 r!13765))) b!6959055))

(assert (= (and b!6958786 (is-Union!17072 (reg!17401 r!13765))) b!6959056))

(declare-fun b_lambda!260523 () Bool)

(assert (= b_lambda!260521 (or start!667728 b_lambda!260523)))

(declare-fun bs!1858258 () Bool)

(declare-fun d!2169858 () Bool)

(assert (= bs!1858258 (and d!2169858 start!667728)))

(assert (=> bs!1858258 (= (dynLambda!26605 lambda!397021 (h!73153 l!9142)) (validRegex!8774 (h!73153 l!9142)))))

(declare-fun m!7655464 () Bool)

(assert (=> bs!1858258 m!7655464))

(assert (=> b!6959011 d!2169858))

(push 1)

(assert (not b!6959056))

(assert (not bm!631907))

(assert (not b!6959039))

(assert (not b!6959052))

(assert (not b!6958977))

(assert (not d!2169836))

(assert (not d!2169848))

(assert (not b!6959029))

(assert (not b!6959047))

(assert (not b!6958868))

(assert (not b!6959041))

(assert (not b!6959035))

(assert (not b!6959030))

(assert (not b!6958864))

(assert (not b!6958972))

(assert (not b!6959043))

(assert (not b!6959054))

(assert (not b!6959034))

(assert (not b!6958970))

(assert (not b!6958969))

(assert (not b!6959033))

(assert (not b_lambda!260523))

(assert tp_is_empty!43369)

(assert (not bm!631912))

(assert (not b!6959055))

(assert (not b!6958867))

(assert (not b!6959038))

(assert (not b!6958939))

(assert (not b!6959017))

(assert (not b!6958863))

(assert (not b!6959042))

(assert (not bs!1858258))

(assert (not b!6958971))

(assert (not b!6959045))

(assert (not b!6958858))

(assert (not b!6959012))

(assert (not b!6959031))

(assert (not bm!631913))

(assert (not b!6959046))

(assert (not b!6958940))

(assert (not b!6958862))

(assert (not d!2169846))

(assert (not b!6958973))

(assert (not b!6958974))

(assert (not b!6959037))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

