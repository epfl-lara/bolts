; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668148 () Bool)

(assert start!668148)

(declare-fun b!6964778 () Bool)

(declare-fun e!4187284 () Bool)

(declare-fun tp_is_empty!43441 () Bool)

(assert (=> b!6964778 (= e!4187284 tp_is_empty!43441)))

(declare-fun b!6964779 () Bool)

(declare-fun e!4187281 () Bool)

(declare-fun e!4187280 () Bool)

(assert (=> b!6964779 (= e!4187281 e!4187280)))

(declare-fun res!2841695 () Bool)

(assert (=> b!6964779 (=> res!2841695 e!4187280)))

(declare-datatypes ((C!34486 0))(
  ( (C!34487 (val!26945 Int)) )
))
(declare-datatypes ((Regex!17108 0))(
  ( (ElementMatch!17108 (c!1291326 C!34486)) (Concat!25953 (regOne!34728 Regex!17108) (regTwo!34728 Regex!17108)) (EmptyExpr!17108) (Star!17108 (reg!17437 Regex!17108)) (EmptyLang!17108) (Union!17108 (regOne!34729 Regex!17108) (regTwo!34729 Regex!17108)) )
))
(declare-datatypes ((List!66901 0))(
  ( (Nil!66777) (Cons!66777 (h!73225 Regex!17108) (t!380644 List!66901)) )
))
(declare-fun lt!2479307 () List!66901)

(declare-fun isEmpty!38983 (List!66901) Bool)

(assert (=> b!6964779 (= res!2841695 (not (isEmpty!38983 lt!2479307)))))

(declare-fun l!9142 () List!66901)

(declare-fun tail!13064 (List!66901) List!66901)

(assert (=> b!6964779 (= lt!2479307 (tail!13064 l!9142))))

(declare-fun b!6964780 () Bool)

(declare-fun e!4187279 () Bool)

(assert (=> b!6964780 (= e!4187279 (not e!4187281))))

(declare-fun res!2841694 () Bool)

(assert (=> b!6964780 (=> res!2841694 e!4187281)))

(declare-fun r!13765 () Regex!17108)

(assert (=> b!6964780 (= res!2841694 (not (is-Union!17108 r!13765)))))

(declare-datatypes ((List!66902 0))(
  ( (Nil!66778) (Cons!66778 (h!73226 C!34486) (t!380645 List!66902)) )
))
(declare-fun s!9351 () List!66902)

(declare-fun matchR!9214 (Regex!17108 List!66902) Bool)

(declare-fun matchRSpec!4129 (Regex!17108 List!66902) Bool)

(assert (=> b!6964780 (= (matchR!9214 r!13765 s!9351) (matchRSpec!4129 r!13765 s!9351))))

(declare-datatypes ((Unit!160876 0))(
  ( (Unit!160877) )
))
(declare-fun lt!2479306 () Unit!160876)

(declare-fun mainMatchTheorem!4123 (Regex!17108 List!66902) Unit!160876)

(assert (=> b!6964780 (= lt!2479306 (mainMatchTheorem!4123 r!13765 s!9351))))

(declare-fun res!2841691 () Bool)

(assert (=> start!668148 (=> (not res!2841691) (not e!4187279))))

(declare-fun lambda!397415 () Int)

(declare-fun forall!15979 (List!66901 Int) Bool)

(assert (=> start!668148 (= res!2841691 (forall!15979 l!9142 lambda!397415))))

(assert (=> start!668148 e!4187279))

(declare-fun e!4187283 () Bool)

(assert (=> start!668148 e!4187283))

(assert (=> start!668148 e!4187284))

(declare-fun e!4187282 () Bool)

(assert (=> start!668148 e!4187282))

(declare-fun b!6964781 () Bool)

(declare-fun tp!1920688 () Bool)

(declare-fun tp!1920690 () Bool)

(assert (=> b!6964781 (= e!4187284 (and tp!1920688 tp!1920690))))

(declare-fun b!6964782 () Bool)

(declare-fun tp!1920693 () Bool)

(assert (=> b!6964782 (= e!4187282 (and tp_is_empty!43441 tp!1920693))))

(declare-fun b!6964783 () Bool)

(declare-fun tp!1920686 () Bool)

(assert (=> b!6964783 (= e!4187284 tp!1920686)))

(declare-fun b!6964784 () Bool)

(declare-fun tp!1920692 () Bool)

(declare-fun tp!1920689 () Bool)

(assert (=> b!6964784 (= e!4187283 (and tp!1920692 tp!1920689))))

(declare-fun b!6964785 () Bool)

(declare-fun res!2841692 () Bool)

(assert (=> b!6964785 (=> (not res!2841692) (not e!4187279))))

(declare-fun generalisedUnion!2583 (List!66901) Regex!17108)

(assert (=> b!6964785 (= res!2841692 (= r!13765 (generalisedUnion!2583 l!9142)))))

(declare-fun b!6964786 () Bool)

(declare-fun res!2841693 () Bool)

(assert (=> b!6964786 (=> res!2841693 e!4187281)))

(assert (=> b!6964786 (= res!2841693 (isEmpty!38983 l!9142))))

(declare-fun b!6964787 () Bool)

(assert (=> b!6964787 (= e!4187280 (= (generalisedUnion!2583 lt!2479307) EmptyLang!17108))))

(declare-fun b!6964788 () Bool)

(declare-fun tp!1920691 () Bool)

(declare-fun tp!1920687 () Bool)

(assert (=> b!6964788 (= e!4187284 (and tp!1920691 tp!1920687))))

(assert (= (and start!668148 res!2841691) b!6964785))

(assert (= (and b!6964785 res!2841692) b!6964780))

(assert (= (and b!6964780 (not res!2841694)) b!6964786))

(assert (= (and b!6964786 (not res!2841693)) b!6964779))

(assert (= (and b!6964779 (not res!2841695)) b!6964787))

(assert (= (and start!668148 (is-Cons!66777 l!9142)) b!6964784))

(assert (= (and start!668148 (is-ElementMatch!17108 r!13765)) b!6964778))

(assert (= (and start!668148 (is-Concat!25953 r!13765)) b!6964781))

(assert (= (and start!668148 (is-Star!17108 r!13765)) b!6964783))

(assert (= (and start!668148 (is-Union!17108 r!13765)) b!6964788))

(assert (= (and start!668148 (is-Cons!66778 s!9351)) b!6964782))

(declare-fun m!7657596 () Bool)

(assert (=> start!668148 m!7657596))

(declare-fun m!7657598 () Bool)

(assert (=> b!6964780 m!7657598))

(declare-fun m!7657600 () Bool)

(assert (=> b!6964780 m!7657600))

(declare-fun m!7657602 () Bool)

(assert (=> b!6964780 m!7657602))

(declare-fun m!7657604 () Bool)

(assert (=> b!6964786 m!7657604))

(declare-fun m!7657606 () Bool)

(assert (=> b!6964787 m!7657606))

(declare-fun m!7657608 () Bool)

(assert (=> b!6964779 m!7657608))

(declare-fun m!7657610 () Bool)

(assert (=> b!6964779 m!7657610))

(declare-fun m!7657612 () Bool)

(assert (=> b!6964785 m!7657612))

(push 1)

(assert (not b!6964780))

(assert (not b!6964783))

(assert (not b!6964779))

(assert (not b!6964781))

(assert tp_is_empty!43441)

(assert (not b!6964787))

(assert (not b!6964784))

(assert (not start!668148))

(assert (not b!6964785))

(assert (not b!6964786))

(assert (not b!6964782))

(assert (not b!6964788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1858598 () Bool)

(declare-fun d!2170420 () Bool)

(assert (= bs!1858598 (and d!2170420 start!668148)))

(declare-fun lambda!397421 () Int)

(assert (=> bs!1858598 (= lambda!397421 lambda!397415)))

(declare-fun b!6964842 () Bool)

(declare-fun e!4187320 () Bool)

(assert (=> b!6964842 (= e!4187320 (isEmpty!38983 (t!380644 l!9142)))))

(declare-fun b!6964843 () Bool)

(declare-fun e!4187315 () Bool)

(declare-fun e!4187316 () Bool)

(assert (=> b!6964843 (= e!4187315 e!4187316)))

(declare-fun c!1291338 () Bool)

(assert (=> b!6964843 (= c!1291338 (isEmpty!38983 (tail!13064 l!9142)))))

(declare-fun b!6964844 () Bool)

(declare-fun e!4187317 () Regex!17108)

(assert (=> b!6964844 (= e!4187317 EmptyLang!17108)))

(declare-fun e!4187318 () Bool)

(assert (=> d!2170420 e!4187318))

(declare-fun res!2841716 () Bool)

(assert (=> d!2170420 (=> (not res!2841716) (not e!4187318))))

(declare-fun lt!2479316 () Regex!17108)

(declare-fun validRegex!8792 (Regex!17108) Bool)

(assert (=> d!2170420 (= res!2841716 (validRegex!8792 lt!2479316))))

(declare-fun e!4187319 () Regex!17108)

(assert (=> d!2170420 (= lt!2479316 e!4187319)))

(declare-fun c!1291337 () Bool)

(assert (=> d!2170420 (= c!1291337 e!4187320)))

(declare-fun res!2841715 () Bool)

(assert (=> d!2170420 (=> (not res!2841715) (not e!4187320))))

(assert (=> d!2170420 (= res!2841715 (is-Cons!66777 l!9142))))

(assert (=> d!2170420 (forall!15979 l!9142 lambda!397421)))

(assert (=> d!2170420 (= (generalisedUnion!2583 l!9142) lt!2479316)))

(declare-fun b!6964845 () Bool)

(assert (=> b!6964845 (= e!4187318 e!4187315)))

(declare-fun c!1291336 () Bool)

(assert (=> b!6964845 (= c!1291336 (isEmpty!38983 l!9142))))

(declare-fun b!6964846 () Bool)

(assert (=> b!6964846 (= e!4187319 e!4187317)))

(declare-fun c!1291339 () Bool)

(assert (=> b!6964846 (= c!1291339 (is-Cons!66777 l!9142))))

(declare-fun b!6964847 () Bool)

(assert (=> b!6964847 (= e!4187317 (Union!17108 (h!73225 l!9142) (generalisedUnion!2583 (t!380644 l!9142))))))

(declare-fun b!6964848 () Bool)

(declare-fun isUnion!1477 (Regex!17108) Bool)

(assert (=> b!6964848 (= e!4187316 (isUnion!1477 lt!2479316))))

(declare-fun b!6964849 () Bool)

(declare-fun isEmptyLang!2049 (Regex!17108) Bool)

(assert (=> b!6964849 (= e!4187315 (isEmptyLang!2049 lt!2479316))))

(declare-fun b!6964850 () Bool)

(assert (=> b!6964850 (= e!4187319 (h!73225 l!9142))))

(declare-fun b!6964851 () Bool)

(declare-fun head!13996 (List!66901) Regex!17108)

(assert (=> b!6964851 (= e!4187316 (= lt!2479316 (head!13996 l!9142)))))

(assert (= (and d!2170420 res!2841715) b!6964842))

(assert (= (and d!2170420 c!1291337) b!6964850))

(assert (= (and d!2170420 (not c!1291337)) b!6964846))

(assert (= (and b!6964846 c!1291339) b!6964847))

(assert (= (and b!6964846 (not c!1291339)) b!6964844))

(assert (= (and d!2170420 res!2841716) b!6964845))

(assert (= (and b!6964845 c!1291336) b!6964849))

(assert (= (and b!6964845 (not c!1291336)) b!6964843))

(assert (= (and b!6964843 c!1291338) b!6964851))

(assert (= (and b!6964843 (not c!1291338)) b!6964848))

(declare-fun m!7657632 () Bool)

(assert (=> b!6964848 m!7657632))

(assert (=> b!6964845 m!7657604))

(declare-fun m!7657634 () Bool)

(assert (=> b!6964842 m!7657634))

(declare-fun m!7657636 () Bool)

(assert (=> b!6964849 m!7657636))

(declare-fun m!7657638 () Bool)

(assert (=> d!2170420 m!7657638))

(declare-fun m!7657640 () Bool)

(assert (=> d!2170420 m!7657640))

(declare-fun m!7657642 () Bool)

(assert (=> b!6964851 m!7657642))

(declare-fun m!7657644 () Bool)

(assert (=> b!6964847 m!7657644))

(assert (=> b!6964843 m!7657610))

(assert (=> b!6964843 m!7657610))

(declare-fun m!7657646 () Bool)

(assert (=> b!6964843 m!7657646))

(assert (=> b!6964785 d!2170420))

(declare-fun d!2170422 () Bool)

(assert (=> d!2170422 (= (isEmpty!38983 lt!2479307) (is-Nil!66777 lt!2479307))))

(assert (=> b!6964779 d!2170422))

(declare-fun d!2170424 () Bool)

(assert (=> d!2170424 (= (tail!13064 l!9142) (t!380644 l!9142))))

(assert (=> b!6964779 d!2170424))

(declare-fun d!2170428 () Bool)

(assert (=> d!2170428 (= (isEmpty!38983 l!9142) (is-Nil!66777 l!9142))))

(assert (=> b!6964786 d!2170428))

(declare-fun b!6964880 () Bool)

(declare-fun res!2841739 () Bool)

(declare-fun e!4187337 () Bool)

(assert (=> b!6964880 (=> res!2841739 e!4187337)))

(declare-fun e!4187335 () Bool)

(assert (=> b!6964880 (= res!2841739 e!4187335)))

(declare-fun res!2841736 () Bool)

(assert (=> b!6964880 (=> (not res!2841736) (not e!4187335))))

(declare-fun lt!2479319 () Bool)

(assert (=> b!6964880 (= res!2841736 lt!2479319)))

(declare-fun b!6964881 () Bool)

(declare-fun res!2841735 () Bool)

(declare-fun e!4187341 () Bool)

(assert (=> b!6964881 (=> res!2841735 e!4187341)))

(declare-fun isEmpty!38985 (List!66902) Bool)

(declare-fun tail!13066 (List!66902) List!66902)

(assert (=> b!6964881 (= res!2841735 (not (isEmpty!38985 (tail!13066 s!9351))))))

(declare-fun b!6964882 () Bool)

(declare-fun e!4187338 () Bool)

(declare-fun derivativeStep!5525 (Regex!17108 C!34486) Regex!17108)

(declare-fun head!13997 (List!66902) C!34486)

(assert (=> b!6964882 (= e!4187338 (matchR!9214 (derivativeStep!5525 r!13765 (head!13997 s!9351)) (tail!13066 s!9351)))))

(declare-fun b!6964883 () Bool)

(assert (=> b!6964883 (= e!4187335 (= (head!13997 s!9351) (c!1291326 r!13765)))))

(declare-fun b!6964884 () Bool)

(declare-fun res!2841740 () Bool)

(assert (=> b!6964884 (=> (not res!2841740) (not e!4187335))))

(assert (=> b!6964884 (= res!2841740 (isEmpty!38985 (tail!13066 s!9351)))))

(declare-fun b!6964885 () Bool)

(assert (=> b!6964885 (= e!4187341 (not (= (head!13997 s!9351) (c!1291326 r!13765))))))

(declare-fun b!6964886 () Bool)

(declare-fun res!2841734 () Bool)

(assert (=> b!6964886 (=> (not res!2841734) (not e!4187335))))

(declare-fun call!632314 () Bool)

(assert (=> b!6964886 (= res!2841734 (not call!632314))))

(declare-fun b!6964887 () Bool)

(declare-fun e!4187339 () Bool)

(assert (=> b!6964887 (= e!4187339 (= lt!2479319 call!632314))))

(declare-fun b!6964888 () Bool)

(declare-fun nullable!6899 (Regex!17108) Bool)

(assert (=> b!6964888 (= e!4187338 (nullable!6899 r!13765))))

(declare-fun d!2170430 () Bool)

(assert (=> d!2170430 e!4187339))

(declare-fun c!1291348 () Bool)

(assert (=> d!2170430 (= c!1291348 (is-EmptyExpr!17108 r!13765))))

(assert (=> d!2170430 (= lt!2479319 e!4187338)))

(declare-fun c!1291347 () Bool)

(assert (=> d!2170430 (= c!1291347 (isEmpty!38985 s!9351))))

(assert (=> d!2170430 (validRegex!8792 r!13765)))

(assert (=> d!2170430 (= (matchR!9214 r!13765 s!9351) lt!2479319)))

(declare-fun b!6964889 () Bool)

(declare-fun e!4187336 () Bool)

(assert (=> b!6964889 (= e!4187336 e!4187341)))

(declare-fun res!2841733 () Bool)

(assert (=> b!6964889 (=> res!2841733 e!4187341)))

(assert (=> b!6964889 (= res!2841733 call!632314)))

(declare-fun bm!632309 () Bool)

(assert (=> bm!632309 (= call!632314 (isEmpty!38985 s!9351))))

(declare-fun b!6964890 () Bool)

(assert (=> b!6964890 (= e!4187337 e!4187336)))

(declare-fun res!2841737 () Bool)

(assert (=> b!6964890 (=> (not res!2841737) (not e!4187336))))

(assert (=> b!6964890 (= res!2841737 (not lt!2479319))))

(declare-fun b!6964891 () Bool)

(declare-fun e!4187340 () Bool)

(assert (=> b!6964891 (= e!4187340 (not lt!2479319))))

(declare-fun b!6964892 () Bool)

(assert (=> b!6964892 (= e!4187339 e!4187340)))

(declare-fun c!1291346 () Bool)

(assert (=> b!6964892 (= c!1291346 (is-EmptyLang!17108 r!13765))))

(declare-fun b!6964893 () Bool)

(declare-fun res!2841738 () Bool)

(assert (=> b!6964893 (=> res!2841738 e!4187337)))

(assert (=> b!6964893 (= res!2841738 (not (is-ElementMatch!17108 r!13765)))))

(assert (=> b!6964893 (= e!4187340 e!4187337)))

(assert (= (and d!2170430 c!1291347) b!6964888))

(assert (= (and d!2170430 (not c!1291347)) b!6964882))

(assert (= (and d!2170430 c!1291348) b!6964887))

(assert (= (and d!2170430 (not c!1291348)) b!6964892))

(assert (= (and b!6964892 c!1291346) b!6964891))

(assert (= (and b!6964892 (not c!1291346)) b!6964893))

(assert (= (and b!6964893 (not res!2841738)) b!6964880))

(assert (= (and b!6964880 res!2841736) b!6964886))

(assert (= (and b!6964886 res!2841734) b!6964884))

(assert (= (and b!6964884 res!2841740) b!6964883))

(assert (= (and b!6964880 (not res!2841739)) b!6964890))

(assert (= (and b!6964890 res!2841737) b!6964889))

(assert (= (and b!6964889 (not res!2841733)) b!6964881))

(assert (= (and b!6964881 (not res!2841735)) b!6964885))

(assert (= (or b!6964887 b!6964886 b!6964889) bm!632309))

(declare-fun m!7657648 () Bool)

(assert (=> d!2170430 m!7657648))

(declare-fun m!7657650 () Bool)

(assert (=> d!2170430 m!7657650))

(declare-fun m!7657652 () Bool)

(assert (=> b!6964884 m!7657652))

(assert (=> b!6964884 m!7657652))

(declare-fun m!7657654 () Bool)

(assert (=> b!6964884 m!7657654))

(declare-fun m!7657656 () Bool)

(assert (=> b!6964885 m!7657656))

(assert (=> b!6964881 m!7657652))

(assert (=> b!6964881 m!7657652))

(assert (=> b!6964881 m!7657654))

(assert (=> bm!632309 m!7657648))

(assert (=> b!6964883 m!7657656))

(assert (=> b!6964882 m!7657656))

(assert (=> b!6964882 m!7657656))

(declare-fun m!7657658 () Bool)

(assert (=> b!6964882 m!7657658))

(assert (=> b!6964882 m!7657652))

(assert (=> b!6964882 m!7657658))

(assert (=> b!6964882 m!7657652))

(declare-fun m!7657660 () Bool)

(assert (=> b!6964882 m!7657660))

(declare-fun m!7657662 () Bool)

(assert (=> b!6964888 m!7657662))

(assert (=> b!6964780 d!2170430))

(declare-fun b!6964969 () Bool)

(assert (=> b!6964969 true))

(assert (=> b!6964969 true))

(declare-fun bs!1858602 () Bool)

(declare-fun b!6964971 () Bool)

(assert (= bs!1858602 (and b!6964971 b!6964969)))

(declare-fun lambda!397431 () Int)

(declare-fun lambda!397430 () Int)

(assert (=> bs!1858602 (not (= lambda!397431 lambda!397430))))

(assert (=> b!6964971 true))

(assert (=> b!6964971 true))

(declare-fun b!6964966 () Bool)

(declare-fun e!4187384 () Bool)

(declare-fun call!632320 () Bool)

(assert (=> b!6964966 (= e!4187384 call!632320)))

(declare-fun b!6964967 () Bool)

(declare-fun e!4187385 () Bool)

(declare-fun e!4187386 () Bool)

(assert (=> b!6964967 (= e!4187385 e!4187386)))

(declare-fun res!2841765 () Bool)

(assert (=> b!6964967 (= res!2841765 (matchRSpec!4129 (regOne!34729 r!13765) s!9351))))

(assert (=> b!6964967 (=> res!2841765 e!4187386)))

(declare-fun b!6964968 () Bool)

(declare-fun res!2841766 () Bool)

(declare-fun e!4187387 () Bool)

(assert (=> b!6964968 (=> res!2841766 e!4187387)))

(assert (=> b!6964968 (= res!2841766 call!632320)))

(declare-fun e!4187390 () Bool)

(assert (=> b!6964968 (= e!4187390 e!4187387)))

(declare-fun call!632319 () Bool)

(assert (=> b!6964969 (= e!4187387 call!632319)))

(declare-fun bm!632314 () Bool)

(assert (=> bm!632314 (= call!632320 (isEmpty!38985 s!9351))))

(assert (=> b!6964971 (= e!4187390 call!632319)))

(declare-fun b!6964972 () Bool)

(assert (=> b!6964972 (= e!4187385 e!4187390)))

(declare-fun c!1291376 () Bool)

(assert (=> b!6964972 (= c!1291376 (is-Star!17108 r!13765))))

(declare-fun bm!632315 () Bool)

(declare-fun Exists!4079 (Int) Bool)

(assert (=> bm!632315 (= call!632319 (Exists!4079 (ite c!1291376 lambda!397430 lambda!397431)))))

(declare-fun b!6964973 () Bool)

(declare-fun e!4187388 () Bool)

(assert (=> b!6964973 (= e!4187388 (= s!9351 (Cons!66778 (c!1291326 r!13765) Nil!66778)))))

(declare-fun b!6964974 () Bool)

(declare-fun c!1291375 () Bool)

(assert (=> b!6964974 (= c!1291375 (is-ElementMatch!17108 r!13765))))

(declare-fun e!4187389 () Bool)

(assert (=> b!6964974 (= e!4187389 e!4187388)))

(declare-fun b!6964975 () Bool)

(declare-fun c!1291373 () Bool)

(assert (=> b!6964975 (= c!1291373 (is-Union!17108 r!13765))))

(assert (=> b!6964975 (= e!4187388 e!4187385)))

(declare-fun b!6964976 () Bool)

(assert (=> b!6964976 (= e!4187386 (matchRSpec!4129 (regTwo!34729 r!13765) s!9351))))

(declare-fun d!2170436 () Bool)

(declare-fun c!1291374 () Bool)

(assert (=> d!2170436 (= c!1291374 (is-EmptyExpr!17108 r!13765))))

(assert (=> d!2170436 (= (matchRSpec!4129 r!13765 s!9351) e!4187384)))

(declare-fun b!6964970 () Bool)

(assert (=> b!6964970 (= e!4187384 e!4187389)))

(declare-fun res!2841767 () Bool)

(assert (=> b!6964970 (= res!2841767 (not (is-EmptyLang!17108 r!13765)))))

(assert (=> b!6964970 (=> (not res!2841767) (not e!4187389))))

(assert (= (and d!2170436 c!1291374) b!6964966))

(assert (= (and d!2170436 (not c!1291374)) b!6964970))

(assert (= (and b!6964970 res!2841767) b!6964974))

(assert (= (and b!6964974 c!1291375) b!6964973))

(assert (= (and b!6964974 (not c!1291375)) b!6964975))

(assert (= (and b!6964975 c!1291373) b!6964967))

(assert (= (and b!6964975 (not c!1291373)) b!6964972))

(assert (= (and b!6964967 (not res!2841765)) b!6964976))

(assert (= (and b!6964972 c!1291376) b!6964968))

(assert (= (and b!6964972 (not c!1291376)) b!6964971))

(assert (= (and b!6964968 (not res!2841766)) b!6964969))

(assert (= (or b!6964969 b!6964971) bm!632315))

(assert (= (or b!6964966 b!6964968) bm!632314))

(declare-fun m!7657698 () Bool)

(assert (=> b!6964967 m!7657698))

(assert (=> bm!632314 m!7657648))

(declare-fun m!7657700 () Bool)

(assert (=> bm!632315 m!7657700))

(declare-fun m!7657702 () Bool)

(assert (=> b!6964976 m!7657702))

(assert (=> b!6964780 d!2170436))

(declare-fun d!2170444 () Bool)

(assert (=> d!2170444 (= (matchR!9214 r!13765 s!9351) (matchRSpec!4129 r!13765 s!9351))))

(declare-fun lt!2479326 () Unit!160876)

(declare-fun choose!51894 (Regex!17108 List!66902) Unit!160876)

(assert (=> d!2170444 (= lt!2479326 (choose!51894 r!13765 s!9351))))

(assert (=> d!2170444 (validRegex!8792 r!13765)))

(assert (=> d!2170444 (= (mainMatchTheorem!4123 r!13765 s!9351) lt!2479326)))

(declare-fun bs!1858603 () Bool)

(assert (= bs!1858603 d!2170444))

(assert (=> bs!1858603 m!7657598))

(assert (=> bs!1858603 m!7657600))

(declare-fun m!7657704 () Bool)

(assert (=> bs!1858603 m!7657704))

(assert (=> bs!1858603 m!7657650))

(assert (=> b!6964780 d!2170444))

(declare-fun bs!1858604 () Bool)

(declare-fun d!2170446 () Bool)

(assert (= bs!1858604 (and d!2170446 start!668148)))

(declare-fun lambda!397432 () Int)

(assert (=> bs!1858604 (= lambda!397432 lambda!397415)))

(declare-fun bs!1858605 () Bool)

(assert (= bs!1858605 (and d!2170446 d!2170420)))

(assert (=> bs!1858605 (= lambda!397432 lambda!397421)))

(declare-fun b!6964987 () Bool)

(declare-fun e!4187402 () Bool)

(assert (=> b!6964987 (= e!4187402 (isEmpty!38983 (t!380644 lt!2479307)))))

(declare-fun b!6964988 () Bool)

(declare-fun e!4187397 () Bool)

(declare-fun e!4187398 () Bool)

(assert (=> b!6964988 (= e!4187397 e!4187398)))

(declare-fun c!1291379 () Bool)

(assert (=> b!6964988 (= c!1291379 (isEmpty!38983 (tail!13064 lt!2479307)))))

(declare-fun b!6964989 () Bool)

(declare-fun e!4187399 () Regex!17108)

(assert (=> b!6964989 (= e!4187399 EmptyLang!17108)))

(declare-fun e!4187400 () Bool)

(assert (=> d!2170446 e!4187400))

(declare-fun res!2841775 () Bool)

(assert (=> d!2170446 (=> (not res!2841775) (not e!4187400))))

(declare-fun lt!2479327 () Regex!17108)

(assert (=> d!2170446 (= res!2841775 (validRegex!8792 lt!2479327))))

(declare-fun e!4187401 () Regex!17108)

(assert (=> d!2170446 (= lt!2479327 e!4187401)))

(declare-fun c!1291378 () Bool)

(assert (=> d!2170446 (= c!1291378 e!4187402)))

(declare-fun res!2841774 () Bool)

(assert (=> d!2170446 (=> (not res!2841774) (not e!4187402))))

(assert (=> d!2170446 (= res!2841774 (is-Cons!66777 lt!2479307))))

(assert (=> d!2170446 (forall!15979 lt!2479307 lambda!397432)))

(assert (=> d!2170446 (= (generalisedUnion!2583 lt!2479307) lt!2479327)))

(declare-fun b!6964990 () Bool)

(assert (=> b!6964990 (= e!4187400 e!4187397)))

(declare-fun c!1291377 () Bool)

(assert (=> b!6964990 (= c!1291377 (isEmpty!38983 lt!2479307))))

(declare-fun b!6964991 () Bool)

(assert (=> b!6964991 (= e!4187401 e!4187399)))

(declare-fun c!1291380 () Bool)

(assert (=> b!6964991 (= c!1291380 (is-Cons!66777 lt!2479307))))

(declare-fun b!6964992 () Bool)

(assert (=> b!6964992 (= e!4187399 (Union!17108 (h!73225 lt!2479307) (generalisedUnion!2583 (t!380644 lt!2479307))))))

(declare-fun b!6964993 () Bool)

(assert (=> b!6964993 (= e!4187398 (isUnion!1477 lt!2479327))))

(declare-fun b!6964994 () Bool)

(assert (=> b!6964994 (= e!4187397 (isEmptyLang!2049 lt!2479327))))

(declare-fun b!6964995 () Bool)

(assert (=> b!6964995 (= e!4187401 (h!73225 lt!2479307))))

(declare-fun b!6964996 () Bool)

(assert (=> b!6964996 (= e!4187398 (= lt!2479327 (head!13996 lt!2479307)))))

(assert (= (and d!2170446 res!2841774) b!6964987))

(assert (= (and d!2170446 c!1291378) b!6964995))

(assert (= (and d!2170446 (not c!1291378)) b!6964991))

(assert (= (and b!6964991 c!1291380) b!6964992))

(assert (= (and b!6964991 (not c!1291380)) b!6964989))

(assert (= (and d!2170446 res!2841775) b!6964990))

(assert (= (and b!6964990 c!1291377) b!6964994))

(assert (= (and b!6964990 (not c!1291377)) b!6964988))

(assert (= (and b!6964988 c!1291379) b!6964996))

(assert (= (and b!6964988 (not c!1291379)) b!6964993))

(declare-fun m!7657710 () Bool)

(assert (=> b!6964993 m!7657710))

(assert (=> b!6964990 m!7657608))

(declare-fun m!7657712 () Bool)

(assert (=> b!6964987 m!7657712))

(declare-fun m!7657714 () Bool)

(assert (=> b!6964994 m!7657714))

(declare-fun m!7657716 () Bool)

(assert (=> d!2170446 m!7657716))

(declare-fun m!7657718 () Bool)

(assert (=> d!2170446 m!7657718))

(declare-fun m!7657720 () Bool)

(assert (=> b!6964996 m!7657720))

(declare-fun m!7657722 () Bool)

(assert (=> b!6964992 m!7657722))

(declare-fun m!7657724 () Bool)

(assert (=> b!6964988 m!7657724))

(assert (=> b!6964988 m!7657724))

(declare-fun m!7657726 () Bool)

(assert (=> b!6964988 m!7657726))

(assert (=> b!6964787 d!2170446))

(declare-fun d!2170450 () Bool)

(declare-fun res!2841780 () Bool)

(declare-fun e!4187407 () Bool)

(assert (=> d!2170450 (=> res!2841780 e!4187407)))

(assert (=> d!2170450 (= res!2841780 (is-Nil!66777 l!9142))))

(assert (=> d!2170450 (= (forall!15979 l!9142 lambda!397415) e!4187407)))

(declare-fun b!6965001 () Bool)

(declare-fun e!4187408 () Bool)

(assert (=> b!6965001 (= e!4187407 e!4187408)))

(declare-fun res!2841781 () Bool)

(assert (=> b!6965001 (=> (not res!2841781) (not e!4187408))))

(declare-fun dynLambda!26622 (Int Regex!17108) Bool)

(assert (=> b!6965001 (= res!2841781 (dynLambda!26622 lambda!397415 (h!73225 l!9142)))))

(declare-fun b!6965002 () Bool)

(assert (=> b!6965002 (= e!4187408 (forall!15979 (t!380644 l!9142) lambda!397415))))

(assert (= (and d!2170450 (not res!2841780)) b!6965001))

(assert (= (and b!6965001 res!2841781) b!6965002))

(declare-fun b_lambda!260627 () Bool)

(assert (=> (not b_lambda!260627) (not b!6965001)))

(declare-fun m!7657728 () Bool)

(assert (=> b!6965001 m!7657728))

(declare-fun m!7657730 () Bool)

(assert (=> b!6965002 m!7657730))

(assert (=> start!668148 d!2170450))

(declare-fun b!6965013 () Bool)

(declare-fun e!4187411 () Bool)

(assert (=> b!6965013 (= e!4187411 tp_is_empty!43441)))

(declare-fun b!6965016 () Bool)

(declare-fun tp!1920729 () Bool)

(declare-fun tp!1920731 () Bool)

(assert (=> b!6965016 (= e!4187411 (and tp!1920729 tp!1920731))))

(declare-fun b!6965015 () Bool)

(declare-fun tp!1920728 () Bool)

(assert (=> b!6965015 (= e!4187411 tp!1920728)))

(assert (=> b!6964784 (= tp!1920692 e!4187411)))

(declare-fun b!6965014 () Bool)

(declare-fun tp!1920732 () Bool)

(declare-fun tp!1920730 () Bool)

(assert (=> b!6965014 (= e!4187411 (and tp!1920732 tp!1920730))))

(assert (= (and b!6964784 (is-ElementMatch!17108 (h!73225 l!9142))) b!6965013))

(assert (= (and b!6964784 (is-Concat!25953 (h!73225 l!9142))) b!6965014))

(assert (= (and b!6964784 (is-Star!17108 (h!73225 l!9142))) b!6965015))

(assert (= (and b!6964784 (is-Union!17108 (h!73225 l!9142))) b!6965016))

(declare-fun b!6965021 () Bool)

(declare-fun e!4187414 () Bool)

(declare-fun tp!1920737 () Bool)

(declare-fun tp!1920738 () Bool)

(assert (=> b!6965021 (= e!4187414 (and tp!1920737 tp!1920738))))

(assert (=> b!6964784 (= tp!1920689 e!4187414)))

(assert (= (and b!6964784 (is-Cons!66777 (t!380644 l!9142))) b!6965021))

(declare-fun b!6965022 () Bool)

(declare-fun e!4187415 () Bool)

(assert (=> b!6965022 (= e!4187415 tp_is_empty!43441)))

(declare-fun b!6965025 () Bool)

(declare-fun tp!1920740 () Bool)

(declare-fun tp!1920742 () Bool)

(assert (=> b!6965025 (= e!4187415 (and tp!1920740 tp!1920742))))

(declare-fun b!6965024 () Bool)

(declare-fun tp!1920739 () Bool)

(assert (=> b!6965024 (= e!4187415 tp!1920739)))

(assert (=> b!6964781 (= tp!1920688 e!4187415)))

(declare-fun b!6965023 () Bool)

(declare-fun tp!1920743 () Bool)

(declare-fun tp!1920741 () Bool)

(assert (=> b!6965023 (= e!4187415 (and tp!1920743 tp!1920741))))

(assert (= (and b!6964781 (is-ElementMatch!17108 (regOne!34728 r!13765))) b!6965022))

(assert (= (and b!6964781 (is-Concat!25953 (regOne!34728 r!13765))) b!6965023))

(assert (= (and b!6964781 (is-Star!17108 (regOne!34728 r!13765))) b!6965024))

(assert (= (and b!6964781 (is-Union!17108 (regOne!34728 r!13765))) b!6965025))

(declare-fun b!6965026 () Bool)

(declare-fun e!4187416 () Bool)

(assert (=> b!6965026 (= e!4187416 tp_is_empty!43441)))

(declare-fun b!6965029 () Bool)

(declare-fun tp!1920745 () Bool)

(declare-fun tp!1920747 () Bool)

(assert (=> b!6965029 (= e!4187416 (and tp!1920745 tp!1920747))))

(declare-fun b!6965028 () Bool)

(declare-fun tp!1920744 () Bool)

(assert (=> b!6965028 (= e!4187416 tp!1920744)))

(assert (=> b!6964781 (= tp!1920690 e!4187416)))

(declare-fun b!6965027 () Bool)

(declare-fun tp!1920748 () Bool)

(declare-fun tp!1920746 () Bool)

(assert (=> b!6965027 (= e!4187416 (and tp!1920748 tp!1920746))))

(assert (= (and b!6964781 (is-ElementMatch!17108 (regTwo!34728 r!13765))) b!6965026))

(assert (= (and b!6964781 (is-Concat!25953 (regTwo!34728 r!13765))) b!6965027))

(assert (= (and b!6964781 (is-Star!17108 (regTwo!34728 r!13765))) b!6965028))

(assert (= (and b!6964781 (is-Union!17108 (regTwo!34728 r!13765))) b!6965029))

(declare-fun b!6965034 () Bool)

(declare-fun e!4187419 () Bool)

(declare-fun tp!1920751 () Bool)

(assert (=> b!6965034 (= e!4187419 (and tp_is_empty!43441 tp!1920751))))

(assert (=> b!6964782 (= tp!1920693 e!4187419)))

(assert (= (and b!6964782 (is-Cons!66778 (t!380645 s!9351))) b!6965034))

(declare-fun b!6965035 () Bool)

(declare-fun e!4187420 () Bool)

(assert (=> b!6965035 (= e!4187420 tp_is_empty!43441)))

(declare-fun b!6965038 () Bool)

(declare-fun tp!1920753 () Bool)

(declare-fun tp!1920755 () Bool)

(assert (=> b!6965038 (= e!4187420 (and tp!1920753 tp!1920755))))

(declare-fun b!6965037 () Bool)

(declare-fun tp!1920752 () Bool)

(assert (=> b!6965037 (= e!4187420 tp!1920752)))

(assert (=> b!6964788 (= tp!1920691 e!4187420)))

(declare-fun b!6965036 () Bool)

(declare-fun tp!1920756 () Bool)

(declare-fun tp!1920754 () Bool)

(assert (=> b!6965036 (= e!4187420 (and tp!1920756 tp!1920754))))

(assert (= (and b!6964788 (is-ElementMatch!17108 (regOne!34729 r!13765))) b!6965035))

(assert (= (and b!6964788 (is-Concat!25953 (regOne!34729 r!13765))) b!6965036))

(assert (= (and b!6964788 (is-Star!17108 (regOne!34729 r!13765))) b!6965037))

(assert (= (and b!6964788 (is-Union!17108 (regOne!34729 r!13765))) b!6965038))

(declare-fun b!6965039 () Bool)

(declare-fun e!4187421 () Bool)

(assert (=> b!6965039 (= e!4187421 tp_is_empty!43441)))

(declare-fun b!6965042 () Bool)

(declare-fun tp!1920758 () Bool)

(declare-fun tp!1920760 () Bool)

(assert (=> b!6965042 (= e!4187421 (and tp!1920758 tp!1920760))))

(declare-fun b!6965041 () Bool)

(declare-fun tp!1920757 () Bool)

(assert (=> b!6965041 (= e!4187421 tp!1920757)))

(assert (=> b!6964788 (= tp!1920687 e!4187421)))

(declare-fun b!6965040 () Bool)

(declare-fun tp!1920761 () Bool)

(declare-fun tp!1920759 () Bool)

(assert (=> b!6965040 (= e!4187421 (and tp!1920761 tp!1920759))))

(assert (= (and b!6964788 (is-ElementMatch!17108 (regTwo!34729 r!13765))) b!6965039))

(assert (= (and b!6964788 (is-Concat!25953 (regTwo!34729 r!13765))) b!6965040))

(assert (= (and b!6964788 (is-Star!17108 (regTwo!34729 r!13765))) b!6965041))

(assert (= (and b!6964788 (is-Union!17108 (regTwo!34729 r!13765))) b!6965042))

(declare-fun b!6965043 () Bool)

(declare-fun e!4187422 () Bool)

(assert (=> b!6965043 (= e!4187422 tp_is_empty!43441)))

(declare-fun b!6965046 () Bool)

(declare-fun tp!1920763 () Bool)

(declare-fun tp!1920765 () Bool)

(assert (=> b!6965046 (= e!4187422 (and tp!1920763 tp!1920765))))

(declare-fun b!6965045 () Bool)

(declare-fun tp!1920762 () Bool)

(assert (=> b!6965045 (= e!4187422 tp!1920762)))

(assert (=> b!6964783 (= tp!1920686 e!4187422)))

(declare-fun b!6965044 () Bool)

(declare-fun tp!1920766 () Bool)

(declare-fun tp!1920764 () Bool)

(assert (=> b!6965044 (= e!4187422 (and tp!1920766 tp!1920764))))

(assert (= (and b!6964783 (is-ElementMatch!17108 (reg!17437 r!13765))) b!6965043))

(assert (= (and b!6964783 (is-Concat!25953 (reg!17437 r!13765))) b!6965044))

(assert (= (and b!6964783 (is-Star!17108 (reg!17437 r!13765))) b!6965045))

(assert (= (and b!6964783 (is-Union!17108 (reg!17437 r!13765))) b!6965046))

(declare-fun b_lambda!260629 () Bool)

(assert (= b_lambda!260627 (or start!668148 b_lambda!260629)))

(declare-fun bs!1858606 () Bool)

(declare-fun d!2170452 () Bool)

(assert (= bs!1858606 (and d!2170452 start!668148)))

(assert (=> bs!1858606 (= (dynLambda!26622 lambda!397415 (h!73225 l!9142)) (validRegex!8792 (h!73225 l!9142)))))

(declare-fun m!7657732 () Bool)

(assert (=> bs!1858606 m!7657732))

(assert (=> b!6965001 d!2170452))

(push 1)

(assert (not b!6964849))

(assert (not b!6964883))

(assert (not b!6965041))

(assert (not bm!632314))

(assert (not b!6965016))

(assert (not b!6964845))

(assert (not b!6964882))

(assert (not d!2170444))

(assert (not b!6964993))

(assert (not b!6964885))

(assert (not b!6964988))

(assert (not b!6965025))

(assert (not bm!632309))

(assert (not b!6965023))

(assert (not b!6964994))

(assert (not b!6964992))

(assert (not b!6965029))

(assert (not b!6965036))

(assert (not b!6965021))

(assert (not b!6965038))

(assert (not b!6965002))

(assert (not b!6965046))

(assert (not b!6965044))

(assert (not b!6964848))

(assert (not b!6965040))

(assert tp_is_empty!43441)

(assert (not b!6965024))

(assert (not b!6965027))

(assert (not d!2170446))

(assert (not d!2170420))

(assert (not b!6964888))

(assert (not b!6964884))

(assert (not b!6964842))

(assert (not b!6964990))

(assert (not b!6964851))

(assert (not b!6964967))

(assert (not b!6965014))

(assert (not b!6964996))

(assert (not b!6965028))

(assert (not b!6965042))

(assert (not b!6965015))

(assert (not b!6964843))

(assert (not bs!1858606))

(assert (not b!6964881))

(assert (not b!6965037))

(assert (not b!6965034))

(assert (not d!2170430))

(assert (not b!6964847))

(assert (not b!6964976))

(assert (not b_lambda!260629))

(assert (not b!6965045))

(assert (not bm!632315))

(assert (not b!6964987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

