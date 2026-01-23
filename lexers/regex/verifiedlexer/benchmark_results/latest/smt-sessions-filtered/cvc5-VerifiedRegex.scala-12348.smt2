; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692238 () Bool)

(assert start!692238)

(declare-fun b!7111639 () Bool)

(declare-fun e!4273839 () Bool)

(declare-fun tp!1956346 () Bool)

(assert (=> b!7111639 (= e!4273839 tp!1956346)))

(declare-fun b!7111640 () Bool)

(declare-fun e!4273835 () Bool)

(declare-fun tp!1956345 () Bool)

(assert (=> b!7111640 (= e!4273835 tp!1956345)))

(declare-fun b!7111641 () Bool)

(declare-fun tp!1956344 () Bool)

(declare-fun tp!1956348 () Bool)

(assert (=> b!7111641 (= e!4273839 (and tp!1956344 tp!1956348))))

(declare-fun b!7111642 () Bool)

(declare-fun res!2902087 () Bool)

(declare-fun e!4273837 () Bool)

(assert (=> b!7111642 (=> (not res!2902087) (not e!4273837))))

(declare-fun e!4273838 () Bool)

(assert (=> b!7111642 (= res!2902087 e!4273838)))

(declare-fun res!2902083 () Bool)

(assert (=> b!7111642 (=> res!2902083 e!4273838)))

(declare-datatypes ((C!36146 0))(
  ( (C!36147 (val!27779 Int)) )
))
(declare-datatypes ((Regex!17938 0))(
  ( (ElementMatch!17938 (c!1327291 C!36146)) (Concat!26783 (regOne!36388 Regex!17938) (regTwo!36388 Regex!17938)) (EmptyExpr!17938) (Star!17938 (reg!18267 Regex!17938)) (EmptyLang!17938) (Union!17938 (regOne!36389 Regex!17938) (regTwo!36389 Regex!17938)) )
))
(declare-fun r!11554 () Regex!17938)

(assert (=> b!7111642 (= res!2902083 (not (is-Concat!26783 r!11554)))))

(declare-fun b!7111643 () Bool)

(declare-fun e!4273836 () Bool)

(declare-fun tp!1956349 () Bool)

(assert (=> b!7111643 (= e!4273836 tp!1956349)))

(declare-fun b!7111644 () Bool)

(declare-datatypes ((List!68899 0))(
  ( (Nil!68775) (Cons!68775 (h!75223 Regex!17938) (t!382734 List!68899)) )
))
(declare-datatypes ((Context!13864 0))(
  ( (Context!13865 (exprs!7432 List!68899)) )
))
(declare-fun c!9994 () Context!13864)

(declare-fun auxCtx!45 () Context!13864)

(declare-fun inv!87709 (Context!13864) Bool)

(declare-fun ++!16090 (List!68899 List!68899) List!68899)

(assert (=> b!7111644 (= e!4273837 (not (inv!87709 (Context!13865 (++!16090 (exprs!7432 c!9994) (exprs!7432 auxCtx!45))))))))

(declare-datatypes ((Unit!162547 0))(
  ( (Unit!162548) )
))
(declare-fun lt!2560132 () Unit!162547)

(declare-fun lambda!432086 () Int)

(declare-fun lemmaConcatPreservesForall!1223 (List!68899 List!68899 Int) Unit!162547)

(assert (=> b!7111644 (= lt!2560132 (lemmaConcatPreservesForall!1223 (exprs!7432 c!9994) (exprs!7432 auxCtx!45) lambda!432086))))

(declare-fun lt!2560131 () Unit!162547)

(assert (=> b!7111644 (= lt!2560131 (lemmaConcatPreservesForall!1223 (exprs!7432 c!9994) (exprs!7432 auxCtx!45) lambda!432086))))

(declare-fun b!7111646 () Bool)

(declare-fun res!2902085 () Bool)

(assert (=> b!7111646 (=> (not res!2902085) (not e!4273837))))

(declare-fun a!1901 () C!36146)

(assert (=> b!7111646 (= res!2902085 (and (or (not (is-ElementMatch!17938 r!11554)) (not (= (c!1327291 r!11554) a!1901))) (not (is-Union!17938 r!11554))))))

(declare-fun b!7111647 () Bool)

(declare-fun tp_is_empty!45109 () Bool)

(assert (=> b!7111647 (= e!4273839 tp_is_empty!45109)))

(declare-fun b!7111648 () Bool)

(declare-fun res!2902084 () Bool)

(assert (=> b!7111648 (=> (not res!2902084) (not e!4273837))))

(assert (=> b!7111648 (= res!2902084 (is-Concat!26783 r!11554))))

(declare-fun b!7111649 () Bool)

(declare-fun nullable!7575 (Regex!17938) Bool)

(assert (=> b!7111649 (= e!4273838 (not (nullable!7575 (regOne!36388 r!11554))))))

(declare-fun res!2902086 () Bool)

(assert (=> start!692238 (=> (not res!2902086) (not e!4273837))))

(declare-fun validRegex!9211 (Regex!17938) Bool)

(assert (=> start!692238 (= res!2902086 (validRegex!9211 r!11554))))

(assert (=> start!692238 e!4273837))

(assert (=> start!692238 e!4273839))

(assert (=> start!692238 tp_is_empty!45109))

(assert (=> start!692238 (and (inv!87709 c!9994) e!4273835)))

(assert (=> start!692238 (and (inv!87709 auxCtx!45) e!4273836)))

(declare-fun b!7111645 () Bool)

(declare-fun tp!1956343 () Bool)

(declare-fun tp!1956347 () Bool)

(assert (=> b!7111645 (= e!4273839 (and tp!1956343 tp!1956347))))

(assert (= (and start!692238 res!2902086) b!7111646))

(assert (= (and b!7111646 res!2902085) b!7111642))

(assert (= (and b!7111642 (not res!2902083)) b!7111649))

(assert (= (and b!7111642 res!2902087) b!7111648))

(assert (= (and b!7111648 res!2902084) b!7111644))

(assert (= (and start!692238 (is-ElementMatch!17938 r!11554)) b!7111647))

(assert (= (and start!692238 (is-Concat!26783 r!11554)) b!7111641))

(assert (= (and start!692238 (is-Star!17938 r!11554)) b!7111639))

(assert (= (and start!692238 (is-Union!17938 r!11554)) b!7111645))

(assert (= start!692238 b!7111640))

(assert (= start!692238 b!7111643))

(declare-fun m!7832788 () Bool)

(assert (=> b!7111644 m!7832788))

(declare-fun m!7832790 () Bool)

(assert (=> b!7111644 m!7832790))

(declare-fun m!7832792 () Bool)

(assert (=> b!7111644 m!7832792))

(assert (=> b!7111644 m!7832792))

(declare-fun m!7832794 () Bool)

(assert (=> b!7111649 m!7832794))

(declare-fun m!7832796 () Bool)

(assert (=> start!692238 m!7832796))

(declare-fun m!7832798 () Bool)

(assert (=> start!692238 m!7832798))

(declare-fun m!7832800 () Bool)

(assert (=> start!692238 m!7832800))

(push 1)

(assert (not start!692238))

(assert (not b!7111649))

(assert tp_is_empty!45109)

(assert (not b!7111640))

(assert (not b!7111641))

(assert (not b!7111644))

(assert (not b!7111645))

(assert (not b!7111639))

(assert (not b!7111643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2220399 () Bool)

(declare-fun nullableFct!2929 (Regex!17938) Bool)

(assert (=> d!2220399 (= (nullable!7575 (regOne!36388 r!11554)) (nullableFct!2929 (regOne!36388 r!11554)))))

(declare-fun bs!1885243 () Bool)

(assert (= bs!1885243 d!2220399))

(declare-fun m!7832816 () Bool)

(assert (=> bs!1885243 m!7832816))

(assert (=> b!7111649 d!2220399))

(declare-fun bs!1885244 () Bool)

(declare-fun d!2220401 () Bool)

(assert (= bs!1885244 (and d!2220401 b!7111644)))

(declare-fun lambda!432094 () Int)

(assert (=> bs!1885244 (= lambda!432094 lambda!432086)))

(declare-fun forall!16838 (List!68899 Int) Bool)

(assert (=> d!2220401 (= (inv!87709 (Context!13865 (++!16090 (exprs!7432 c!9994) (exprs!7432 auxCtx!45)))) (forall!16838 (exprs!7432 (Context!13865 (++!16090 (exprs!7432 c!9994) (exprs!7432 auxCtx!45)))) lambda!432094))))

(declare-fun bs!1885245 () Bool)

(assert (= bs!1885245 d!2220401))

(declare-fun m!7832818 () Bool)

(assert (=> bs!1885245 m!7832818))

(assert (=> b!7111644 d!2220401))

(declare-fun b!7111693 () Bool)

(declare-fun res!2902108 () Bool)

(declare-fun e!4273859 () Bool)

(assert (=> b!7111693 (=> (not res!2902108) (not e!4273859))))

(declare-fun lt!2560141 () List!68899)

(declare-fun size!41398 (List!68899) Int)

(assert (=> b!7111693 (= res!2902108 (= (size!41398 lt!2560141) (+ (size!41398 (exprs!7432 c!9994)) (size!41398 (exprs!7432 auxCtx!45)))))))

(declare-fun b!7111691 () Bool)

(declare-fun e!4273860 () List!68899)

(assert (=> b!7111691 (= e!4273860 (exprs!7432 auxCtx!45))))

(declare-fun b!7111694 () Bool)

(assert (=> b!7111694 (= e!4273859 (or (not (= (exprs!7432 auxCtx!45) Nil!68775)) (= lt!2560141 (exprs!7432 c!9994))))))

(declare-fun b!7111692 () Bool)

(assert (=> b!7111692 (= e!4273860 (Cons!68775 (h!75223 (exprs!7432 c!9994)) (++!16090 (t!382734 (exprs!7432 c!9994)) (exprs!7432 auxCtx!45))))))

(declare-fun d!2220403 () Bool)

(assert (=> d!2220403 e!4273859))

(declare-fun res!2902107 () Bool)

(assert (=> d!2220403 (=> (not res!2902107) (not e!4273859))))

(declare-fun content!14023 (List!68899) (Set Regex!17938))

(assert (=> d!2220403 (= res!2902107 (= (content!14023 lt!2560141) (set.union (content!14023 (exprs!7432 c!9994)) (content!14023 (exprs!7432 auxCtx!45)))))))

(assert (=> d!2220403 (= lt!2560141 e!4273860)))

(declare-fun c!1327295 () Bool)

(assert (=> d!2220403 (= c!1327295 (is-Nil!68775 (exprs!7432 c!9994)))))

(assert (=> d!2220403 (= (++!16090 (exprs!7432 c!9994) (exprs!7432 auxCtx!45)) lt!2560141)))

(assert (= (and d!2220403 c!1327295) b!7111691))

(assert (= (and d!2220403 (not c!1327295)) b!7111692))

(assert (= (and d!2220403 res!2902107) b!7111693))

(assert (= (and b!7111693 res!2902108) b!7111694))

(declare-fun m!7832820 () Bool)

(assert (=> b!7111693 m!7832820))

(declare-fun m!7832822 () Bool)

(assert (=> b!7111693 m!7832822))

(declare-fun m!7832824 () Bool)

(assert (=> b!7111693 m!7832824))

(declare-fun m!7832826 () Bool)

(assert (=> b!7111692 m!7832826))

(declare-fun m!7832828 () Bool)

(assert (=> d!2220403 m!7832828))

(declare-fun m!7832830 () Bool)

(assert (=> d!2220403 m!7832830))

(declare-fun m!7832832 () Bool)

(assert (=> d!2220403 m!7832832))

(assert (=> b!7111644 d!2220403))

(declare-fun d!2220405 () Bool)

(assert (=> d!2220405 (forall!16838 (++!16090 (exprs!7432 c!9994) (exprs!7432 auxCtx!45)) lambda!432086)))

(declare-fun lt!2560144 () Unit!162547)

(declare-fun choose!54867 (List!68899 List!68899 Int) Unit!162547)

(assert (=> d!2220405 (= lt!2560144 (choose!54867 (exprs!7432 c!9994) (exprs!7432 auxCtx!45) lambda!432086))))

(assert (=> d!2220405 (forall!16838 (exprs!7432 c!9994) lambda!432086)))

(assert (=> d!2220405 (= (lemmaConcatPreservesForall!1223 (exprs!7432 c!9994) (exprs!7432 auxCtx!45) lambda!432086) lt!2560144)))

(declare-fun bs!1885246 () Bool)

(assert (= bs!1885246 d!2220405))

(assert (=> bs!1885246 m!7832788))

(assert (=> bs!1885246 m!7832788))

(declare-fun m!7832834 () Bool)

(assert (=> bs!1885246 m!7832834))

(declare-fun m!7832836 () Bool)

(assert (=> bs!1885246 m!7832836))

(declare-fun m!7832838 () Bool)

(assert (=> bs!1885246 m!7832838))

(assert (=> b!7111644 d!2220405))

(declare-fun b!7111721 () Bool)

(declare-fun e!4273885 () Bool)

(declare-fun e!4273887 () Bool)

(assert (=> b!7111721 (= e!4273885 e!4273887)))

(declare-fun res!2902124 () Bool)

(assert (=> b!7111721 (= res!2902124 (not (nullable!7575 (reg!18267 r!11554))))))

(assert (=> b!7111721 (=> (not res!2902124) (not e!4273887))))

(declare-fun bm!649065 () Bool)

(declare-fun call!649070 () Bool)

(declare-fun c!1327302 () Bool)

(assert (=> bm!649065 (= call!649070 (validRegex!9211 (ite c!1327302 (regOne!36389 r!11554) (regTwo!36388 r!11554))))))

(declare-fun d!2220407 () Bool)

(declare-fun res!2902125 () Bool)

(declare-fun e!4273883 () Bool)

(assert (=> d!2220407 (=> res!2902125 e!4273883)))

(assert (=> d!2220407 (= res!2902125 (is-ElementMatch!17938 r!11554))))

(assert (=> d!2220407 (= (validRegex!9211 r!11554) e!4273883)))

(declare-fun call!649072 () Bool)

(declare-fun bm!649066 () Bool)

(declare-fun c!1327303 () Bool)

(assert (=> bm!649066 (= call!649072 (validRegex!9211 (ite c!1327303 (reg!18267 r!11554) (ite c!1327302 (regTwo!36389 r!11554) (regOne!36388 r!11554)))))))

(declare-fun b!7111722 () Bool)

(declare-fun res!2902123 () Bool)

(declare-fun e!4273882 () Bool)

(assert (=> b!7111722 (=> (not res!2902123) (not e!4273882))))

(assert (=> b!7111722 (= res!2902123 call!649070)))

(declare-fun e!4273884 () Bool)

(assert (=> b!7111722 (= e!4273884 e!4273882)))

(declare-fun b!7111723 () Bool)

(declare-fun call!649071 () Bool)

(assert (=> b!7111723 (= e!4273882 call!649071)))

(declare-fun b!7111724 () Bool)

(declare-fun e!4273886 () Bool)

(declare-fun e!4273881 () Bool)

(assert (=> b!7111724 (= e!4273886 e!4273881)))

(declare-fun res!2902126 () Bool)

(assert (=> b!7111724 (=> (not res!2902126) (not e!4273881))))

(assert (=> b!7111724 (= res!2902126 call!649071)))

(declare-fun b!7111725 () Bool)

(assert (=> b!7111725 (= e!4273885 e!4273884)))

(assert (=> b!7111725 (= c!1327302 (is-Union!17938 r!11554))))

(declare-fun b!7111726 () Bool)

(assert (=> b!7111726 (= e!4273887 call!649072)))

(declare-fun b!7111727 () Bool)

(declare-fun res!2902127 () Bool)

(assert (=> b!7111727 (=> res!2902127 e!4273886)))

(assert (=> b!7111727 (= res!2902127 (not (is-Concat!26783 r!11554)))))

(assert (=> b!7111727 (= e!4273884 e!4273886)))

(declare-fun b!7111728 () Bool)

(assert (=> b!7111728 (= e!4273881 call!649070)))

(declare-fun bm!649067 () Bool)

(assert (=> bm!649067 (= call!649071 call!649072)))

(declare-fun b!7111729 () Bool)

(assert (=> b!7111729 (= e!4273883 e!4273885)))

(assert (=> b!7111729 (= c!1327303 (is-Star!17938 r!11554))))

(assert (= (and d!2220407 (not res!2902125)) b!7111729))

(assert (= (and b!7111729 c!1327303) b!7111721))

(assert (= (and b!7111729 (not c!1327303)) b!7111725))

(assert (= (and b!7111721 res!2902124) b!7111726))

(assert (= (and b!7111725 c!1327302) b!7111722))

(assert (= (and b!7111725 (not c!1327302)) b!7111727))

(assert (= (and b!7111722 res!2902123) b!7111723))

(assert (= (and b!7111727 (not res!2902127)) b!7111724))

(assert (= (and b!7111724 res!2902126) b!7111728))

(assert (= (or b!7111722 b!7111728) bm!649065))

(assert (= (or b!7111723 b!7111724) bm!649067))

(assert (= (or b!7111726 bm!649067) bm!649066))

(declare-fun m!7832840 () Bool)

(assert (=> b!7111721 m!7832840))

(declare-fun m!7832842 () Bool)

(assert (=> bm!649065 m!7832842))

(declare-fun m!7832844 () Bool)

(assert (=> bm!649066 m!7832844))

(assert (=> start!692238 d!2220407))

(declare-fun bs!1885247 () Bool)

(declare-fun d!2220411 () Bool)

(assert (= bs!1885247 (and d!2220411 b!7111644)))

(declare-fun lambda!432095 () Int)

(assert (=> bs!1885247 (= lambda!432095 lambda!432086)))

(declare-fun bs!1885248 () Bool)

(assert (= bs!1885248 (and d!2220411 d!2220401)))

(assert (=> bs!1885248 (= lambda!432095 lambda!432094)))

(assert (=> d!2220411 (= (inv!87709 c!9994) (forall!16838 (exprs!7432 c!9994) lambda!432095))))

(declare-fun bs!1885249 () Bool)

(assert (= bs!1885249 d!2220411))

(declare-fun m!7832846 () Bool)

(assert (=> bs!1885249 m!7832846))

(assert (=> start!692238 d!2220411))

(declare-fun bs!1885250 () Bool)

(declare-fun d!2220413 () Bool)

(assert (= bs!1885250 (and d!2220413 b!7111644)))

(declare-fun lambda!432096 () Int)

(assert (=> bs!1885250 (= lambda!432096 lambda!432086)))

(declare-fun bs!1885251 () Bool)

(assert (= bs!1885251 (and d!2220413 d!2220401)))

(assert (=> bs!1885251 (= lambda!432096 lambda!432094)))

(declare-fun bs!1885252 () Bool)

(assert (= bs!1885252 (and d!2220413 d!2220411)))

(assert (=> bs!1885252 (= lambda!432096 lambda!432095)))

(assert (=> d!2220413 (= (inv!87709 auxCtx!45) (forall!16838 (exprs!7432 auxCtx!45) lambda!432096))))

(declare-fun bs!1885253 () Bool)

(assert (= bs!1885253 d!2220413))

(declare-fun m!7832848 () Bool)

(assert (=> bs!1885253 m!7832848))

(assert (=> start!692238 d!2220413))

(declare-fun b!7111750 () Bool)

(declare-fun e!4273898 () Bool)

(assert (=> b!7111750 (= e!4273898 tp_is_empty!45109)))

(assert (=> b!7111639 (= tp!1956346 e!4273898)))

(declare-fun b!7111752 () Bool)

(declare-fun tp!1956381 () Bool)

(assert (=> b!7111752 (= e!4273898 tp!1956381)))

(declare-fun b!7111751 () Bool)

(declare-fun tp!1956385 () Bool)

(declare-fun tp!1956383 () Bool)

(assert (=> b!7111751 (= e!4273898 (and tp!1956385 tp!1956383))))

(declare-fun b!7111753 () Bool)

(declare-fun tp!1956384 () Bool)

(declare-fun tp!1956382 () Bool)

(assert (=> b!7111753 (= e!4273898 (and tp!1956384 tp!1956382))))

(assert (= (and b!7111639 (is-ElementMatch!17938 (reg!18267 r!11554))) b!7111750))

(assert (= (and b!7111639 (is-Concat!26783 (reg!18267 r!11554))) b!7111751))

(assert (= (and b!7111639 (is-Star!17938 (reg!18267 r!11554))) b!7111752))

(assert (= (and b!7111639 (is-Union!17938 (reg!18267 r!11554))) b!7111753))

(declare-fun b!7111758 () Bool)

(declare-fun e!4273901 () Bool)

(declare-fun tp!1956390 () Bool)

(declare-fun tp!1956391 () Bool)

(assert (=> b!7111758 (= e!4273901 (and tp!1956390 tp!1956391))))

(assert (=> b!7111643 (= tp!1956349 e!4273901)))

(assert (= (and b!7111643 (is-Cons!68775 (exprs!7432 auxCtx!45))) b!7111758))

(declare-fun b!7111759 () Bool)

(declare-fun e!4273902 () Bool)

(assert (=> b!7111759 (= e!4273902 tp_is_empty!45109)))

(assert (=> b!7111641 (= tp!1956344 e!4273902)))

(declare-fun b!7111761 () Bool)

(declare-fun tp!1956392 () Bool)

(assert (=> b!7111761 (= e!4273902 tp!1956392)))

(declare-fun b!7111760 () Bool)

(declare-fun tp!1956396 () Bool)

(declare-fun tp!1956394 () Bool)

(assert (=> b!7111760 (= e!4273902 (and tp!1956396 tp!1956394))))

(declare-fun b!7111762 () Bool)

(declare-fun tp!1956395 () Bool)

(declare-fun tp!1956393 () Bool)

(assert (=> b!7111762 (= e!4273902 (and tp!1956395 tp!1956393))))

(assert (= (and b!7111641 (is-ElementMatch!17938 (regOne!36388 r!11554))) b!7111759))

(assert (= (and b!7111641 (is-Concat!26783 (regOne!36388 r!11554))) b!7111760))

(assert (= (and b!7111641 (is-Star!17938 (regOne!36388 r!11554))) b!7111761))

(assert (= (and b!7111641 (is-Union!17938 (regOne!36388 r!11554))) b!7111762))

(declare-fun b!7111763 () Bool)

(declare-fun e!4273903 () Bool)

(assert (=> b!7111763 (= e!4273903 tp_is_empty!45109)))

(assert (=> b!7111641 (= tp!1956348 e!4273903)))

(declare-fun b!7111765 () Bool)

(declare-fun tp!1956397 () Bool)

(assert (=> b!7111765 (= e!4273903 tp!1956397)))

(declare-fun b!7111764 () Bool)

(declare-fun tp!1956401 () Bool)

(declare-fun tp!1956399 () Bool)

(assert (=> b!7111764 (= e!4273903 (and tp!1956401 tp!1956399))))

(declare-fun b!7111766 () Bool)

(declare-fun tp!1956400 () Bool)

(declare-fun tp!1956398 () Bool)

(assert (=> b!7111766 (= e!4273903 (and tp!1956400 tp!1956398))))

(assert (= (and b!7111641 (is-ElementMatch!17938 (regTwo!36388 r!11554))) b!7111763))

(assert (= (and b!7111641 (is-Concat!26783 (regTwo!36388 r!11554))) b!7111764))

(assert (= (and b!7111641 (is-Star!17938 (regTwo!36388 r!11554))) b!7111765))

(assert (= (and b!7111641 (is-Union!17938 (regTwo!36388 r!11554))) b!7111766))

(declare-fun b!7111767 () Bool)

(declare-fun e!4273904 () Bool)

(assert (=> b!7111767 (= e!4273904 tp_is_empty!45109)))

(assert (=> b!7111645 (= tp!1956343 e!4273904)))

(declare-fun b!7111769 () Bool)

(declare-fun tp!1956402 () Bool)

(assert (=> b!7111769 (= e!4273904 tp!1956402)))

(declare-fun b!7111768 () Bool)

(declare-fun tp!1956406 () Bool)

(declare-fun tp!1956404 () Bool)

(assert (=> b!7111768 (= e!4273904 (and tp!1956406 tp!1956404))))

(declare-fun b!7111770 () Bool)

(declare-fun tp!1956405 () Bool)

(declare-fun tp!1956403 () Bool)

(assert (=> b!7111770 (= e!4273904 (and tp!1956405 tp!1956403))))

(assert (= (and b!7111645 (is-ElementMatch!17938 (regOne!36389 r!11554))) b!7111767))

(assert (= (and b!7111645 (is-Concat!26783 (regOne!36389 r!11554))) b!7111768))

(assert (= (and b!7111645 (is-Star!17938 (regOne!36389 r!11554))) b!7111769))

(assert (= (and b!7111645 (is-Union!17938 (regOne!36389 r!11554))) b!7111770))

(declare-fun b!7111771 () Bool)

(declare-fun e!4273905 () Bool)

(assert (=> b!7111771 (= e!4273905 tp_is_empty!45109)))

(assert (=> b!7111645 (= tp!1956347 e!4273905)))

(declare-fun b!7111773 () Bool)

(declare-fun tp!1956407 () Bool)

(assert (=> b!7111773 (= e!4273905 tp!1956407)))

(declare-fun b!7111772 () Bool)

(declare-fun tp!1956411 () Bool)

(declare-fun tp!1956409 () Bool)

(assert (=> b!7111772 (= e!4273905 (and tp!1956411 tp!1956409))))

(declare-fun b!7111774 () Bool)

(declare-fun tp!1956410 () Bool)

(declare-fun tp!1956408 () Bool)

(assert (=> b!7111774 (= e!4273905 (and tp!1956410 tp!1956408))))

(assert (= (and b!7111645 (is-ElementMatch!17938 (regTwo!36389 r!11554))) b!7111771))

(assert (= (and b!7111645 (is-Concat!26783 (regTwo!36389 r!11554))) b!7111772))

(assert (= (and b!7111645 (is-Star!17938 (regTwo!36389 r!11554))) b!7111773))

(assert (= (and b!7111645 (is-Union!17938 (regTwo!36389 r!11554))) b!7111774))

(declare-fun b!7111775 () Bool)

(declare-fun e!4273906 () Bool)

(declare-fun tp!1956412 () Bool)

(declare-fun tp!1956413 () Bool)

(assert (=> b!7111775 (= e!4273906 (and tp!1956412 tp!1956413))))

(assert (=> b!7111640 (= tp!1956345 e!4273906)))

(assert (= (and b!7111640 (is-Cons!68775 (exprs!7432 c!9994))) b!7111775))

(push 1)

(assert (not b!7111775))

(assert (not d!2220413))

(assert (not b!7111693))

(assert (not b!7111753))

(assert tp_is_empty!45109)

(assert (not b!7111768))

(assert (not bm!649065))

(assert (not b!7111772))

(assert (not d!2220411))

(assert (not b!7111752))

(assert (not b!7111721))

(assert (not d!2220401))

(assert (not b!7111751))

(assert (not b!7111774))

(assert (not b!7111770))

(assert (not d!2220399))

(assert (not d!2220405))

(assert (not b!7111773))

(assert (not b!7111760))

(assert (not d!2220403))

(assert (not b!7111692))

(assert (not b!7111758))

(assert (not b!7111765))

(assert (not b!7111761))

(assert (not bm!649066))

(assert (not b!7111766))

(assert (not b!7111762))

(assert (not b!7111764))

(assert (not b!7111769))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

