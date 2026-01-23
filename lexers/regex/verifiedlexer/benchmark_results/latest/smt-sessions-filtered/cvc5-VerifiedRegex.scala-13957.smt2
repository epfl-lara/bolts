; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739558 () Bool)

(assert start!739558)

(declare-fun b!7763187 () Bool)

(assert (=> b!7763187 true))

(assert (=> b!7763187 true))

(assert (=> b!7763187 true))

(declare-fun b!7763178 () Bool)

(declare-fun e!4600590 () Bool)

(declare-fun tp_is_empty!51771 () Bool)

(assert (=> b!7763178 (= e!4600590 tp_is_empty!51771)))

(declare-fun b!7763179 () Bool)

(declare-fun tp!2280200 () Bool)

(declare-fun tp!2280197 () Bool)

(assert (=> b!7763179 (= e!4600590 (and tp!2280200 tp!2280197))))

(declare-fun b!7763181 () Bool)

(declare-fun e!4600593 () Bool)

(declare-fun e!4600592 () Bool)

(assert (=> b!7763181 (= e!4600593 e!4600592)))

(declare-fun res!3094829 () Bool)

(assert (=> b!7763181 (=> (not res!3094829) (not e!4600592))))

(declare-datatypes ((C!41742 0))(
  ( (C!41743 (val!31311 Int)) )
))
(declare-datatypes ((List!73551 0))(
  ( (Nil!73427) (Cons!73427 (h!79875 C!41742) (t!388286 List!73551)) )
))
(declare-datatypes ((tuple2!69802 0))(
  ( (tuple2!69803 (_1!38204 List!73551) (_2!38204 List!73551)) )
))
(declare-fun lt!2670564 () tuple2!69802)

(declare-fun s!10216 () List!73551)

(declare-fun ++!17883 (List!73551 List!73551) List!73551)

(assert (=> b!7763181 (= res!3094829 (= (++!17883 (_1!38204 lt!2670564) (_2!38204 lt!2670564)) s!10216))))

(declare-fun lambda!472062 () Int)

(declare-fun pickWitness!567 (Int) tuple2!69802)

(assert (=> b!7763181 (= lt!2670564 (pickWitness!567 lambda!472062))))

(declare-fun b!7763182 () Bool)

(declare-fun e!4600591 () Bool)

(declare-fun tp!2280195 () Bool)

(declare-fun tp!2280194 () Bool)

(assert (=> b!7763182 (= e!4600591 (and tp!2280195 tp!2280194))))

(declare-fun b!7763183 () Bool)

(declare-fun res!3094824 () Bool)

(assert (=> b!7763183 (=> (not res!3094824) (not e!4600592))))

(declare-datatypes ((Regex!20708 0))(
  ( (ElementMatch!20708 (c!1430989 C!41742)) (Concat!29553 (regOne!41928 Regex!20708) (regTwo!41928 Regex!20708)) (EmptyExpr!20708) (Star!20708 (reg!21037 Regex!20708)) (EmptyLang!20708) (Union!20708 (regOne!41929 Regex!20708) (regTwo!41929 Regex!20708)) )
))
(declare-fun r1!3330 () Regex!20708)

(declare-fun matchR!10174 (Regex!20708 List!73551) Bool)

(assert (=> b!7763183 (= res!3094824 (matchR!10174 r1!3330 (_1!38204 lt!2670564)))))

(declare-fun b!7763184 () Bool)

(declare-fun res!3094827 () Bool)

(declare-fun e!4600594 () Bool)

(assert (=> b!7763184 (=> (not res!3094827) (not e!4600594))))

(declare-fun r2!3230 () Regex!20708)

(declare-fun validRegex!11124 (Regex!20708) Bool)

(assert (=> b!7763184 (= res!3094827 (validRegex!11124 r2!3230))))

(declare-fun b!7763185 () Bool)

(assert (=> b!7763185 (= e!4600591 tp_is_empty!51771)))

(declare-fun b!7763186 () Bool)

(declare-fun tp!2280202 () Bool)

(assert (=> b!7763186 (= e!4600590 tp!2280202)))

(declare-fun res!3094823 () Bool)

(assert (=> b!7763187 (=> (not res!3094823) (not e!4600593))))

(declare-fun Exists!4746 (Int) Bool)

(assert (=> b!7763187 (= res!3094823 (Exists!4746 lambda!472062))))

(declare-fun b!7763188 () Bool)

(declare-fun res!3094825 () Bool)

(assert (=> b!7763188 (=> (not res!3094825) (not e!4600593))))

(declare-datatypes ((Option!17695 0))(
  ( (None!17694) (Some!17694 (v!54829 tuple2!69802)) )
))
(declare-fun lt!2670563 () Option!17695)

(declare-fun isEmpty!42097 (Option!17695) Bool)

(assert (=> b!7763188 (= res!3094825 (isEmpty!42097 lt!2670563))))

(declare-fun b!7763189 () Bool)

(declare-fun tp!2280204 () Bool)

(declare-fun tp!2280203 () Bool)

(assert (=> b!7763189 (= e!4600591 (and tp!2280204 tp!2280203))))

(declare-fun b!7763190 () Bool)

(assert (=> b!7763190 (= e!4600592 (not (matchR!10174 r2!3230 (_2!38204 lt!2670564))))))

(declare-fun b!7763191 () Bool)

(declare-fun tp!2280201 () Bool)

(declare-fun tp!2280198 () Bool)

(assert (=> b!7763191 (= e!4600590 (and tp!2280201 tp!2280198))))

(declare-fun b!7763180 () Bool)

(declare-fun tp!2280196 () Bool)

(assert (=> b!7763180 (= e!4600591 tp!2280196)))

(declare-fun res!3094826 () Bool)

(assert (=> start!739558 (=> (not res!3094826) (not e!4600594))))

(assert (=> start!739558 (= res!3094826 (validRegex!11124 r1!3330))))

(assert (=> start!739558 e!4600594))

(assert (=> start!739558 e!4600590))

(assert (=> start!739558 e!4600591))

(declare-fun e!4600595 () Bool)

(assert (=> start!739558 e!4600595))

(declare-fun b!7763192 () Bool)

(assert (=> b!7763192 (= e!4600594 e!4600593)))

(declare-fun res!3094828 () Bool)

(assert (=> b!7763192 (=> (not res!3094828) (not e!4600593))))

(declare-fun isDefined!14307 (Option!17695) Bool)

(assert (=> b!7763192 (= res!3094828 (not (isDefined!14307 lt!2670563)))))

(declare-fun findConcatSeparation!3725 (Regex!20708 Regex!20708 List!73551 List!73551 List!73551) Option!17695)

(assert (=> b!7763192 (= lt!2670563 (findConcatSeparation!3725 r1!3330 r2!3230 Nil!73427 s!10216 s!10216))))

(declare-fun b!7763193 () Bool)

(declare-fun tp!2280199 () Bool)

(assert (=> b!7763193 (= e!4600595 (and tp_is_empty!51771 tp!2280199))))

(assert (= (and start!739558 res!3094826) b!7763184))

(assert (= (and b!7763184 res!3094827) b!7763192))

(assert (= (and b!7763192 res!3094828) b!7763188))

(assert (= (and b!7763188 res!3094825) b!7763187))

(assert (= (and b!7763187 res!3094823) b!7763181))

(assert (= (and b!7763181 res!3094829) b!7763183))

(assert (= (and b!7763183 res!3094824) b!7763190))

(assert (= (and start!739558 (is-ElementMatch!20708 r1!3330)) b!7763178))

(assert (= (and start!739558 (is-Concat!29553 r1!3330)) b!7763191))

(assert (= (and start!739558 (is-Star!20708 r1!3330)) b!7763186))

(assert (= (and start!739558 (is-Union!20708 r1!3330)) b!7763179))

(assert (= (and start!739558 (is-ElementMatch!20708 r2!3230)) b!7763185))

(assert (= (and start!739558 (is-Concat!29553 r2!3230)) b!7763189))

(assert (= (and start!739558 (is-Star!20708 r2!3230)) b!7763180))

(assert (= (and start!739558 (is-Union!20708 r2!3230)) b!7763182))

(assert (= (and start!739558 (is-Cons!73427 s!10216)) b!7763193))

(declare-fun m!8221514 () Bool)

(assert (=> b!7763184 m!8221514))

(declare-fun m!8221516 () Bool)

(assert (=> b!7763188 m!8221516))

(declare-fun m!8221518 () Bool)

(assert (=> b!7763192 m!8221518))

(declare-fun m!8221520 () Bool)

(assert (=> b!7763192 m!8221520))

(declare-fun m!8221522 () Bool)

(assert (=> b!7763187 m!8221522))

(declare-fun m!8221524 () Bool)

(assert (=> start!739558 m!8221524))

(declare-fun m!8221526 () Bool)

(assert (=> b!7763181 m!8221526))

(declare-fun m!8221528 () Bool)

(assert (=> b!7763181 m!8221528))

(declare-fun m!8221530 () Bool)

(assert (=> b!7763183 m!8221530))

(declare-fun m!8221532 () Bool)

(assert (=> b!7763190 m!8221532))

(push 1)

(assert tp_is_empty!51771)

(assert (not b!7763190))

(assert (not b!7763191))

(assert (not b!7763182))

(assert (not b!7763187))

(assert (not b!7763179))

(assert (not b!7763188))

(assert (not b!7763183))

(assert (not b!7763181))

(assert (not b!7763184))

(assert (not start!739558))

(assert (not b!7763189))

(assert (not b!7763193))

(assert (not b!7763186))

(assert (not b!7763180))

(assert (not b!7763192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!719290 () Bool)

(declare-fun call!719295 () Bool)

(declare-fun isEmpty!42099 (List!73551) Bool)

(assert (=> bm!719290 (= call!719295 (isEmpty!42099 (_1!38204 lt!2670564)))))

(declare-fun b!7763286 () Bool)

(declare-fun res!3094877 () Bool)

(declare-fun e!4600632 () Bool)

(assert (=> b!7763286 (=> (not res!3094877) (not e!4600632))))

(declare-fun tail!15397 (List!73551) List!73551)

(assert (=> b!7763286 (= res!3094877 (isEmpty!42099 (tail!15397 (_1!38204 lt!2670564))))))

(declare-fun b!7763287 () Bool)

(declare-fun e!4600638 () Bool)

(declare-fun e!4600636 () Bool)

(assert (=> b!7763287 (= e!4600638 e!4600636)))

(declare-fun res!3094878 () Bool)

(assert (=> b!7763287 (=> res!3094878 e!4600636)))

(assert (=> b!7763287 (= res!3094878 call!719295)))

(declare-fun b!7763288 () Bool)

(declare-fun head!15857 (List!73551) C!41742)

(assert (=> b!7763288 (= e!4600632 (= (head!15857 (_1!38204 lt!2670564)) (c!1430989 r1!3330)))))

(declare-fun b!7763289 () Bool)

(declare-fun res!3094881 () Bool)

(declare-fun e!4600634 () Bool)

(assert (=> b!7763289 (=> res!3094881 e!4600634)))

(assert (=> b!7763289 (= res!3094881 (not (is-ElementMatch!20708 r1!3330)))))

(declare-fun e!4600637 () Bool)

(assert (=> b!7763289 (= e!4600637 e!4600634)))

(declare-fun b!7763290 () Bool)

(declare-fun e!4600635 () Bool)

(declare-fun nullable!9118 (Regex!20708) Bool)

(assert (=> b!7763290 (= e!4600635 (nullable!9118 r1!3330))))

(declare-fun b!7763291 () Bool)

(declare-fun derivativeStep!6061 (Regex!20708 C!41742) Regex!20708)

(assert (=> b!7763291 (= e!4600635 (matchR!10174 (derivativeStep!6061 r1!3330 (head!15857 (_1!38204 lt!2670564))) (tail!15397 (_1!38204 lt!2670564))))))

(declare-fun b!7763292 () Bool)

(assert (=> b!7763292 (= e!4600636 (not (= (head!15857 (_1!38204 lt!2670564)) (c!1430989 r1!3330))))))

(declare-fun b!7763293 () Bool)

(declare-fun e!4600633 () Bool)

(assert (=> b!7763293 (= e!4600633 e!4600637)))

(declare-fun c!1430997 () Bool)

(assert (=> b!7763293 (= c!1430997 (is-EmptyLang!20708 r1!3330))))

(declare-fun b!7763294 () Bool)

(declare-fun res!3094875 () Bool)

(assert (=> b!7763294 (=> (not res!3094875) (not e!4600632))))

(assert (=> b!7763294 (= res!3094875 (not call!719295))))

(declare-fun b!7763295 () Bool)

(declare-fun lt!2670573 () Bool)

(assert (=> b!7763295 (= e!4600637 (not lt!2670573))))

(declare-fun b!7763296 () Bool)

(declare-fun res!3094882 () Bool)

(assert (=> b!7763296 (=> res!3094882 e!4600634)))

(assert (=> b!7763296 (= res!3094882 e!4600632)))

(declare-fun res!3094880 () Bool)

(assert (=> b!7763296 (=> (not res!3094880) (not e!4600632))))

(assert (=> b!7763296 (= res!3094880 lt!2670573)))

(declare-fun d!2343722 () Bool)

(assert (=> d!2343722 e!4600633))

(declare-fun c!1430999 () Bool)

(assert (=> d!2343722 (= c!1430999 (is-EmptyExpr!20708 r1!3330))))

(assert (=> d!2343722 (= lt!2670573 e!4600635)))

(declare-fun c!1430998 () Bool)

(assert (=> d!2343722 (= c!1430998 (isEmpty!42099 (_1!38204 lt!2670564)))))

(assert (=> d!2343722 (validRegex!11124 r1!3330)))

(assert (=> d!2343722 (= (matchR!10174 r1!3330 (_1!38204 lt!2670564)) lt!2670573)))

(declare-fun b!7763297 () Bool)

(assert (=> b!7763297 (= e!4600633 (= lt!2670573 call!719295))))

(declare-fun b!7763298 () Bool)

(assert (=> b!7763298 (= e!4600634 e!4600638)))

(declare-fun res!3094876 () Bool)

(assert (=> b!7763298 (=> (not res!3094876) (not e!4600638))))

(assert (=> b!7763298 (= res!3094876 (not lt!2670573))))

(declare-fun b!7763299 () Bool)

(declare-fun res!3094879 () Bool)

(assert (=> b!7763299 (=> res!3094879 e!4600636)))

(assert (=> b!7763299 (= res!3094879 (not (isEmpty!42099 (tail!15397 (_1!38204 lt!2670564)))))))

(assert (= (and d!2343722 c!1430998) b!7763290))

(assert (= (and d!2343722 (not c!1430998)) b!7763291))

(assert (= (and d!2343722 c!1430999) b!7763297))

(assert (= (and d!2343722 (not c!1430999)) b!7763293))

(assert (= (and b!7763293 c!1430997) b!7763295))

(assert (= (and b!7763293 (not c!1430997)) b!7763289))

(assert (= (and b!7763289 (not res!3094881)) b!7763296))

(assert (= (and b!7763296 res!3094880) b!7763294))

(assert (= (and b!7763294 res!3094875) b!7763286))

(assert (= (and b!7763286 res!3094877) b!7763288))

(assert (= (and b!7763296 (not res!3094882)) b!7763298))

(assert (= (and b!7763298 res!3094876) b!7763287))

(assert (= (and b!7763287 (not res!3094878)) b!7763299))

(assert (= (and b!7763299 (not res!3094879)) b!7763292))

(assert (= (or b!7763297 b!7763287 b!7763294) bm!719290))

(declare-fun m!8221554 () Bool)

(assert (=> bm!719290 m!8221554))

(declare-fun m!8221556 () Bool)

(assert (=> b!7763288 m!8221556))

(declare-fun m!8221558 () Bool)

(assert (=> b!7763299 m!8221558))

(assert (=> b!7763299 m!8221558))

(declare-fun m!8221560 () Bool)

(assert (=> b!7763299 m!8221560))

(declare-fun m!8221562 () Bool)

(assert (=> b!7763290 m!8221562))

(assert (=> d!2343722 m!8221554))

(assert (=> d!2343722 m!8221524))

(assert (=> b!7763292 m!8221556))

(assert (=> b!7763291 m!8221556))

(assert (=> b!7763291 m!8221556))

(declare-fun m!8221564 () Bool)

(assert (=> b!7763291 m!8221564))

(assert (=> b!7763291 m!8221558))

(assert (=> b!7763291 m!8221564))

(assert (=> b!7763291 m!8221558))

(declare-fun m!8221566 () Bool)

(assert (=> b!7763291 m!8221566))

(assert (=> b!7763286 m!8221558))

(assert (=> b!7763286 m!8221558))

(assert (=> b!7763286 m!8221560))

(assert (=> b!7763183 d!2343722))

(declare-fun d!2343726 () Bool)

(assert (=> d!2343726 (= (isEmpty!42097 lt!2670563) (not (is-Some!17694 lt!2670563)))))

(assert (=> b!7763188 d!2343726))

(declare-fun bm!719291 () Bool)

(declare-fun call!719296 () Bool)

(assert (=> bm!719291 (= call!719296 (isEmpty!42099 (_2!38204 lt!2670564)))))

(declare-fun b!7763308 () Bool)

(declare-fun res!3094889 () Bool)

(declare-fun e!4600643 () Bool)

(assert (=> b!7763308 (=> (not res!3094889) (not e!4600643))))

(assert (=> b!7763308 (= res!3094889 (isEmpty!42099 (tail!15397 (_2!38204 lt!2670564))))))

(declare-fun b!7763309 () Bool)

(declare-fun e!4600649 () Bool)

(declare-fun e!4600647 () Bool)

(assert (=> b!7763309 (= e!4600649 e!4600647)))

(declare-fun res!3094890 () Bool)

(assert (=> b!7763309 (=> res!3094890 e!4600647)))

(assert (=> b!7763309 (= res!3094890 call!719296)))

(declare-fun b!7763310 () Bool)

(assert (=> b!7763310 (= e!4600643 (= (head!15857 (_2!38204 lt!2670564)) (c!1430989 r2!3230)))))

(declare-fun b!7763311 () Bool)

(declare-fun res!3094893 () Bool)

(declare-fun e!4600645 () Bool)

(assert (=> b!7763311 (=> res!3094893 e!4600645)))

(assert (=> b!7763311 (= res!3094893 (not (is-ElementMatch!20708 r2!3230)))))

(declare-fun e!4600648 () Bool)

(assert (=> b!7763311 (= e!4600648 e!4600645)))

(declare-fun b!7763312 () Bool)

(declare-fun e!4600646 () Bool)

(assert (=> b!7763312 (= e!4600646 (nullable!9118 r2!3230))))

(declare-fun b!7763313 () Bool)

(assert (=> b!7763313 (= e!4600646 (matchR!10174 (derivativeStep!6061 r2!3230 (head!15857 (_2!38204 lt!2670564))) (tail!15397 (_2!38204 lt!2670564))))))

(declare-fun b!7763314 () Bool)

(assert (=> b!7763314 (= e!4600647 (not (= (head!15857 (_2!38204 lt!2670564)) (c!1430989 r2!3230))))))

(declare-fun b!7763315 () Bool)

(declare-fun e!4600644 () Bool)

(assert (=> b!7763315 (= e!4600644 e!4600648)))

(declare-fun c!1431002 () Bool)

(assert (=> b!7763315 (= c!1431002 (is-EmptyLang!20708 r2!3230))))

(declare-fun b!7763316 () Bool)

(declare-fun res!3094887 () Bool)

(assert (=> b!7763316 (=> (not res!3094887) (not e!4600643))))

(assert (=> b!7763316 (= res!3094887 (not call!719296))))

(declare-fun b!7763317 () Bool)

(declare-fun lt!2670576 () Bool)

(assert (=> b!7763317 (= e!4600648 (not lt!2670576))))

(declare-fun b!7763318 () Bool)

(declare-fun res!3094894 () Bool)

(assert (=> b!7763318 (=> res!3094894 e!4600645)))

(assert (=> b!7763318 (= res!3094894 e!4600643)))

(declare-fun res!3094892 () Bool)

(assert (=> b!7763318 (=> (not res!3094892) (not e!4600643))))

(assert (=> b!7763318 (= res!3094892 lt!2670576)))

(declare-fun d!2343728 () Bool)

(assert (=> d!2343728 e!4600644))

(declare-fun c!1431004 () Bool)

(assert (=> d!2343728 (= c!1431004 (is-EmptyExpr!20708 r2!3230))))

(assert (=> d!2343728 (= lt!2670576 e!4600646)))

(declare-fun c!1431003 () Bool)

(assert (=> d!2343728 (= c!1431003 (isEmpty!42099 (_2!38204 lt!2670564)))))

(assert (=> d!2343728 (validRegex!11124 r2!3230)))

(assert (=> d!2343728 (= (matchR!10174 r2!3230 (_2!38204 lt!2670564)) lt!2670576)))

(declare-fun b!7763319 () Bool)

(assert (=> b!7763319 (= e!4600644 (= lt!2670576 call!719296))))

(declare-fun b!7763320 () Bool)

(assert (=> b!7763320 (= e!4600645 e!4600649)))

(declare-fun res!3094888 () Bool)

(assert (=> b!7763320 (=> (not res!3094888) (not e!4600649))))

(assert (=> b!7763320 (= res!3094888 (not lt!2670576))))

(declare-fun b!7763321 () Bool)

(declare-fun res!3094891 () Bool)

(assert (=> b!7763321 (=> res!3094891 e!4600647)))

(assert (=> b!7763321 (= res!3094891 (not (isEmpty!42099 (tail!15397 (_2!38204 lt!2670564)))))))

(assert (= (and d!2343728 c!1431003) b!7763312))

(assert (= (and d!2343728 (not c!1431003)) b!7763313))

(assert (= (and d!2343728 c!1431004) b!7763319))

(assert (= (and d!2343728 (not c!1431004)) b!7763315))

(assert (= (and b!7763315 c!1431002) b!7763317))

(assert (= (and b!7763315 (not c!1431002)) b!7763311))

(assert (= (and b!7763311 (not res!3094893)) b!7763318))

(assert (= (and b!7763318 res!3094892) b!7763316))

(assert (= (and b!7763316 res!3094887) b!7763308))

(assert (= (and b!7763308 res!3094889) b!7763310))

(assert (= (and b!7763318 (not res!3094894)) b!7763320))

(assert (= (and b!7763320 res!3094888) b!7763309))

(assert (= (and b!7763309 (not res!3094890)) b!7763321))

(assert (= (and b!7763321 (not res!3094891)) b!7763314))

(assert (= (or b!7763319 b!7763309 b!7763316) bm!719291))

(declare-fun m!8221568 () Bool)

(assert (=> bm!719291 m!8221568))

(declare-fun m!8221570 () Bool)

(assert (=> b!7763310 m!8221570))

(declare-fun m!8221572 () Bool)

(assert (=> b!7763321 m!8221572))

(assert (=> b!7763321 m!8221572))

(declare-fun m!8221574 () Bool)

(assert (=> b!7763321 m!8221574))

(declare-fun m!8221576 () Bool)

(assert (=> b!7763312 m!8221576))

(assert (=> d!2343728 m!8221568))

(assert (=> d!2343728 m!8221514))

(assert (=> b!7763314 m!8221570))

(assert (=> b!7763313 m!8221570))

(assert (=> b!7763313 m!8221570))

(declare-fun m!8221578 () Bool)

(assert (=> b!7763313 m!8221578))

(assert (=> b!7763313 m!8221572))

(assert (=> b!7763313 m!8221578))

(assert (=> b!7763313 m!8221572))

(declare-fun m!8221580 () Bool)

(assert (=> b!7763313 m!8221580))

(assert (=> b!7763308 m!8221572))

(assert (=> b!7763308 m!8221572))

(assert (=> b!7763308 m!8221574))

(assert (=> b!7763190 d!2343728))

(declare-fun bm!719298 () Bool)

(declare-fun call!719305 () Bool)

(declare-fun call!719303 () Bool)

(assert (=> bm!719298 (= call!719305 call!719303)))

(declare-fun b!7763345 () Bool)

(declare-fun e!4600671 () Bool)

(assert (=> b!7763345 (= e!4600671 call!719305)))

(declare-fun b!7763346 () Bool)

(declare-fun res!3094907 () Bool)

(declare-fun e!4600670 () Bool)

(assert (=> b!7763346 (=> res!3094907 e!4600670)))

(assert (=> b!7763346 (= res!3094907 (not (is-Concat!29553 r2!3230)))))

(declare-fun e!4600672 () Bool)

(assert (=> b!7763346 (= e!4600672 e!4600670)))

(declare-fun b!7763347 () Bool)

(declare-fun e!4600667 () Bool)

(assert (=> b!7763347 (= e!4600667 call!719303)))

(declare-fun b!7763348 () Bool)

(declare-fun e!4600668 () Bool)

(assert (=> b!7763348 (= e!4600668 e!4600672)))

(declare-fun c!1431011 () Bool)

(assert (=> b!7763348 (= c!1431011 (is-Union!20708 r2!3230))))

(declare-fun bm!719299 () Bool)

(declare-fun c!1431010 () Bool)

(assert (=> bm!719299 (= call!719303 (validRegex!11124 (ite c!1431010 (reg!21037 r2!3230) (ite c!1431011 (regTwo!41929 r2!3230) (regTwo!41928 r2!3230)))))))

(declare-fun b!7763349 () Bool)

(assert (=> b!7763349 (= e!4600668 e!4600667)))

(declare-fun res!3094910 () Bool)

(assert (=> b!7763349 (= res!3094910 (not (nullable!9118 (reg!21037 r2!3230))))))

(assert (=> b!7763349 (=> (not res!3094910) (not e!4600667))))

(declare-fun b!7763344 () Bool)

(assert (=> b!7763344 (= e!4600670 e!4600671)))

(declare-fun res!3094908 () Bool)

(assert (=> b!7763344 (=> (not res!3094908) (not e!4600671))))

(declare-fun call!719304 () Bool)

(assert (=> b!7763344 (= res!3094908 call!719304)))

(declare-fun d!2343730 () Bool)

(declare-fun res!3094911 () Bool)

(declare-fun e!4600669 () Bool)

(assert (=> d!2343730 (=> res!3094911 e!4600669)))

(assert (=> d!2343730 (= res!3094911 (is-ElementMatch!20708 r2!3230))))

(assert (=> d!2343730 (= (validRegex!11124 r2!3230) e!4600669)))

(declare-fun b!7763350 () Bool)

(assert (=> b!7763350 (= e!4600669 e!4600668)))

(assert (=> b!7763350 (= c!1431010 (is-Star!20708 r2!3230))))

(declare-fun b!7763351 () Bool)

(declare-fun e!4600666 () Bool)

(assert (=> b!7763351 (= e!4600666 call!719305)))

(declare-fun b!7763352 () Bool)

(declare-fun res!3094909 () Bool)

(assert (=> b!7763352 (=> (not res!3094909) (not e!4600666))))

(assert (=> b!7763352 (= res!3094909 call!719304)))

(assert (=> b!7763352 (= e!4600672 e!4600666)))

(declare-fun bm!719300 () Bool)

(assert (=> bm!719300 (= call!719304 (validRegex!11124 (ite c!1431011 (regOne!41929 r2!3230) (regOne!41928 r2!3230))))))

(assert (= (and d!2343730 (not res!3094911)) b!7763350))

(assert (= (and b!7763350 c!1431010) b!7763349))

(assert (= (and b!7763350 (not c!1431010)) b!7763348))

(assert (= (and b!7763349 res!3094910) b!7763347))

(assert (= (and b!7763348 c!1431011) b!7763352))

(assert (= (and b!7763348 (not c!1431011)) b!7763346))

(assert (= (and b!7763352 res!3094909) b!7763351))

(assert (= (and b!7763346 (not res!3094907)) b!7763344))

(assert (= (and b!7763344 res!3094908) b!7763345))

(assert (= (or b!7763352 b!7763344) bm!719300))

(assert (= (or b!7763351 b!7763345) bm!719298))

(assert (= (or b!7763347 bm!719298) bm!719299))

(declare-fun m!8221596 () Bool)

(assert (=> bm!719299 m!8221596))

(declare-fun m!8221598 () Bool)

(assert (=> b!7763349 m!8221598))

(declare-fun m!8221602 () Bool)

(assert (=> bm!719300 m!8221602))

(assert (=> b!7763184 d!2343730))

(declare-fun bm!719301 () Bool)

(declare-fun call!719308 () Bool)

(declare-fun call!719306 () Bool)

(assert (=> bm!719301 (= call!719308 call!719306)))

(declare-fun b!7763354 () Bool)

(declare-fun e!4600678 () Bool)

(assert (=> b!7763354 (= e!4600678 call!719308)))

(declare-fun b!7763355 () Bool)

(declare-fun res!3094912 () Bool)

(declare-fun e!4600677 () Bool)

(assert (=> b!7763355 (=> res!3094912 e!4600677)))

(assert (=> b!7763355 (= res!3094912 (not (is-Concat!29553 r1!3330)))))

(declare-fun e!4600679 () Bool)

(assert (=> b!7763355 (= e!4600679 e!4600677)))

(declare-fun b!7763356 () Bool)

(declare-fun e!4600674 () Bool)

(assert (=> b!7763356 (= e!4600674 call!719306)))

(declare-fun b!7763357 () Bool)

(declare-fun e!4600675 () Bool)

(assert (=> b!7763357 (= e!4600675 e!4600679)))

(declare-fun c!1431013 () Bool)

(assert (=> b!7763357 (= c!1431013 (is-Union!20708 r1!3330))))

(declare-fun c!1431012 () Bool)

(declare-fun bm!719302 () Bool)

(assert (=> bm!719302 (= call!719306 (validRegex!11124 (ite c!1431012 (reg!21037 r1!3330) (ite c!1431013 (regTwo!41929 r1!3330) (regTwo!41928 r1!3330)))))))

(declare-fun b!7763358 () Bool)

(assert (=> b!7763358 (= e!4600675 e!4600674)))

(declare-fun res!3094915 () Bool)

(assert (=> b!7763358 (= res!3094915 (not (nullable!9118 (reg!21037 r1!3330))))))

(assert (=> b!7763358 (=> (not res!3094915) (not e!4600674))))

(declare-fun b!7763353 () Bool)

(assert (=> b!7763353 (= e!4600677 e!4600678)))

(declare-fun res!3094913 () Bool)

(assert (=> b!7763353 (=> (not res!3094913) (not e!4600678))))

(declare-fun call!719307 () Bool)

(assert (=> b!7763353 (= res!3094913 call!719307)))

(declare-fun d!2343734 () Bool)

(declare-fun res!3094916 () Bool)

(declare-fun e!4600676 () Bool)

(assert (=> d!2343734 (=> res!3094916 e!4600676)))

(assert (=> d!2343734 (= res!3094916 (is-ElementMatch!20708 r1!3330))))

(assert (=> d!2343734 (= (validRegex!11124 r1!3330) e!4600676)))

(declare-fun b!7763359 () Bool)

(assert (=> b!7763359 (= e!4600676 e!4600675)))

(assert (=> b!7763359 (= c!1431012 (is-Star!20708 r1!3330))))

(declare-fun b!7763360 () Bool)

(declare-fun e!4600673 () Bool)

(assert (=> b!7763360 (= e!4600673 call!719308)))

(declare-fun b!7763361 () Bool)

(declare-fun res!3094914 () Bool)

(assert (=> b!7763361 (=> (not res!3094914) (not e!4600673))))

(assert (=> b!7763361 (= res!3094914 call!719307)))

(assert (=> b!7763361 (= e!4600679 e!4600673)))

(declare-fun bm!719303 () Bool)

(assert (=> bm!719303 (= call!719307 (validRegex!11124 (ite c!1431013 (regOne!41929 r1!3330) (regOne!41928 r1!3330))))))

(assert (= (and d!2343734 (not res!3094916)) b!7763359))

(assert (= (and b!7763359 c!1431012) b!7763358))

(assert (= (and b!7763359 (not c!1431012)) b!7763357))

(assert (= (and b!7763358 res!3094915) b!7763356))

(assert (= (and b!7763357 c!1431013) b!7763361))

(assert (= (and b!7763357 (not c!1431013)) b!7763355))

(assert (= (and b!7763361 res!3094914) b!7763360))

(assert (= (and b!7763355 (not res!3094912)) b!7763353))

(assert (= (and b!7763353 res!3094913) b!7763354))

(assert (= (or b!7763361 b!7763353) bm!719303))

(assert (= (or b!7763360 b!7763354) bm!719301))

(assert (= (or b!7763356 bm!719301) bm!719302))

(declare-fun m!8221606 () Bool)

(assert (=> bm!719302 m!8221606))

(declare-fun m!8221608 () Bool)

(assert (=> b!7763358 m!8221608))

(declare-fun m!8221610 () Bool)

(assert (=> bm!719303 m!8221610))

(assert (=> start!739558 d!2343734))

(declare-fun d!2343738 () Bool)

(declare-fun choose!59447 (Int) Bool)

(assert (=> d!2343738 (= (Exists!4746 lambda!472062) (choose!59447 lambda!472062))))

(declare-fun bs!1965988 () Bool)

(assert (= bs!1965988 d!2343738))

(declare-fun m!8221612 () Bool)

(assert (=> bs!1965988 m!8221612))

(assert (=> b!7763187 d!2343738))

(declare-fun b!7763389 () Bool)

(declare-fun e!4600698 () List!73551)

(assert (=> b!7763389 (= e!4600698 (Cons!73427 (h!79875 (_1!38204 lt!2670564)) (++!17883 (t!388286 (_1!38204 lt!2670564)) (_2!38204 lt!2670564))))))

(declare-fun d!2343740 () Bool)

(declare-fun e!4600699 () Bool)

(assert (=> d!2343740 e!4600699))

(declare-fun res!3094932 () Bool)

(assert (=> d!2343740 (=> (not res!3094932) (not e!4600699))))

(declare-fun lt!2670583 () List!73551)

(declare-fun content!15584 (List!73551) (Set C!41742))

(assert (=> d!2343740 (= res!3094932 (= (content!15584 lt!2670583) (set.union (content!15584 (_1!38204 lt!2670564)) (content!15584 (_2!38204 lt!2670564)))))))

(assert (=> d!2343740 (= lt!2670583 e!4600698)))

(declare-fun c!1431020 () Bool)

(assert (=> d!2343740 (= c!1431020 (is-Nil!73427 (_1!38204 lt!2670564)))))

(assert (=> d!2343740 (= (++!17883 (_1!38204 lt!2670564) (_2!38204 lt!2670564)) lt!2670583)))

(declare-fun b!7763390 () Bool)

(declare-fun res!3094931 () Bool)

(assert (=> b!7763390 (=> (not res!3094931) (not e!4600699))))

(declare-fun size!42687 (List!73551) Int)

(assert (=> b!7763390 (= res!3094931 (= (size!42687 lt!2670583) (+ (size!42687 (_1!38204 lt!2670564)) (size!42687 (_2!38204 lt!2670564)))))))

(declare-fun b!7763388 () Bool)

(assert (=> b!7763388 (= e!4600698 (_2!38204 lt!2670564))))

(declare-fun b!7763391 () Bool)

(assert (=> b!7763391 (= e!4600699 (or (not (= (_2!38204 lt!2670564) Nil!73427)) (= lt!2670583 (_1!38204 lt!2670564))))))

(assert (= (and d!2343740 c!1431020) b!7763388))

(assert (= (and d!2343740 (not c!1431020)) b!7763389))

(assert (= (and d!2343740 res!3094932) b!7763390))

(assert (= (and b!7763390 res!3094931) b!7763391))

(declare-fun m!8221614 () Bool)

(assert (=> b!7763389 m!8221614))

(declare-fun m!8221616 () Bool)

(assert (=> d!2343740 m!8221616))

(declare-fun m!8221618 () Bool)

(assert (=> d!2343740 m!8221618))

(declare-fun m!8221620 () Bool)

(assert (=> d!2343740 m!8221620))

(declare-fun m!8221622 () Bool)

(assert (=> b!7763390 m!8221622))

(declare-fun m!8221624 () Bool)

(assert (=> b!7763390 m!8221624))

(declare-fun m!8221626 () Bool)

(assert (=> b!7763390 m!8221626))

(assert (=> b!7763181 d!2343740))

(declare-fun d!2343742 () Bool)

(declare-fun lt!2670586 () tuple2!69802)

(declare-fun dynLambda!29993 (Int tuple2!69802) Bool)

(assert (=> d!2343742 (dynLambda!29993 lambda!472062 lt!2670586)))

(declare-fun choose!59448 (Int) tuple2!69802)

(assert (=> d!2343742 (= lt!2670586 (choose!59448 lambda!472062))))

(assert (=> d!2343742 (Exists!4746 lambda!472062)))

(assert (=> d!2343742 (= (pickWitness!567 lambda!472062) lt!2670586)))

(declare-fun b_lambda!289461 () Bool)

(assert (=> (not b_lambda!289461) (not d!2343742)))

(declare-fun bs!1965989 () Bool)

(assert (= bs!1965989 d!2343742))

(declare-fun m!8221628 () Bool)

(assert (=> bs!1965989 m!8221628))

(declare-fun m!8221630 () Bool)

(assert (=> bs!1965989 m!8221630))

(assert (=> bs!1965989 m!8221522))

(assert (=> b!7763181 d!2343742))

(declare-fun d!2343744 () Bool)

(assert (=> d!2343744 (= (isDefined!14307 lt!2670563) (not (isEmpty!42097 lt!2670563)))))

(declare-fun bs!1965990 () Bool)

(assert (= bs!1965990 d!2343744))

(assert (=> bs!1965990 m!8221516))

(assert (=> b!7763192 d!2343744))

(declare-fun b!7763419 () Bool)

(declare-fun res!3094951 () Bool)

(declare-fun e!4600719 () Bool)

(assert (=> b!7763419 (=> (not res!3094951) (not e!4600719))))

(declare-fun lt!2670594 () Option!17695)

(declare-fun get!26193 (Option!17695) tuple2!69802)

(assert (=> b!7763419 (= res!3094951 (matchR!10174 r2!3230 (_2!38204 (get!26193 lt!2670594))))))

(declare-fun b!7763420 () Bool)

(declare-fun e!4600717 () Option!17695)

(assert (=> b!7763420 (= e!4600717 (Some!17694 (tuple2!69803 Nil!73427 s!10216)))))

(declare-fun b!7763421 () Bool)

(declare-fun e!4600718 () Option!17695)

(assert (=> b!7763421 (= e!4600717 e!4600718)))

(declare-fun c!1431027 () Bool)

(assert (=> b!7763421 (= c!1431027 (is-Nil!73427 s!10216))))

(declare-fun b!7763422 () Bool)

(declare-datatypes ((Unit!168406 0))(
  ( (Unit!168407) )
))
(declare-fun lt!2670593 () Unit!168406)

(declare-fun lt!2670595 () Unit!168406)

(assert (=> b!7763422 (= lt!2670593 lt!2670595)))

(assert (=> b!7763422 (= (++!17883 (++!17883 Nil!73427 (Cons!73427 (h!79875 s!10216) Nil!73427)) (t!388286 s!10216)) s!10216)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3369 (List!73551 C!41742 List!73551 List!73551) Unit!168406)

(assert (=> b!7763422 (= lt!2670595 (lemmaMoveElementToOtherListKeepsConcatEq!3369 Nil!73427 (h!79875 s!10216) (t!388286 s!10216) s!10216))))

(assert (=> b!7763422 (= e!4600718 (findConcatSeparation!3725 r1!3330 r2!3230 (++!17883 Nil!73427 (Cons!73427 (h!79875 s!10216) Nil!73427)) (t!388286 s!10216) s!10216))))

(declare-fun b!7763423 () Bool)

(declare-fun e!4600721 () Bool)

(assert (=> b!7763423 (= e!4600721 (not (isDefined!14307 lt!2670594)))))

(declare-fun d!2343746 () Bool)

(assert (=> d!2343746 e!4600721))

(declare-fun res!3094952 () Bool)

(assert (=> d!2343746 (=> res!3094952 e!4600721)))

(assert (=> d!2343746 (= res!3094952 e!4600719)))

(declare-fun res!3094949 () Bool)

(assert (=> d!2343746 (=> (not res!3094949) (not e!4600719))))

(assert (=> d!2343746 (= res!3094949 (isDefined!14307 lt!2670594))))

(assert (=> d!2343746 (= lt!2670594 e!4600717)))

(declare-fun c!1431028 () Bool)

(declare-fun e!4600720 () Bool)

(assert (=> d!2343746 (= c!1431028 e!4600720)))

(declare-fun res!3094950 () Bool)

(assert (=> d!2343746 (=> (not res!3094950) (not e!4600720))))

(assert (=> d!2343746 (= res!3094950 (matchR!10174 r1!3330 Nil!73427))))

(assert (=> d!2343746 (validRegex!11124 r1!3330)))

(assert (=> d!2343746 (= (findConcatSeparation!3725 r1!3330 r2!3230 Nil!73427 s!10216 s!10216) lt!2670594)))

(declare-fun b!7763424 () Bool)

(assert (=> b!7763424 (= e!4600720 (matchR!10174 r2!3230 s!10216))))

(declare-fun b!7763425 () Bool)

(assert (=> b!7763425 (= e!4600718 None!17694)))

(declare-fun b!7763426 () Bool)

(assert (=> b!7763426 (= e!4600719 (= (++!17883 (_1!38204 (get!26193 lt!2670594)) (_2!38204 (get!26193 lt!2670594))) s!10216))))

(declare-fun b!7763427 () Bool)

(declare-fun res!3094948 () Bool)

(assert (=> b!7763427 (=> (not res!3094948) (not e!4600719))))

(assert (=> b!7763427 (= res!3094948 (matchR!10174 r1!3330 (_1!38204 (get!26193 lt!2670594))))))

(assert (= (and d!2343746 res!3094950) b!7763424))

(assert (= (and d!2343746 c!1431028) b!7763420))

(assert (= (and d!2343746 (not c!1431028)) b!7763421))

(assert (= (and b!7763421 c!1431027) b!7763425))

(assert (= (and b!7763421 (not c!1431027)) b!7763422))

(assert (= (and d!2343746 res!3094949) b!7763427))

(assert (= (and b!7763427 res!3094948) b!7763419))

(assert (= (and b!7763419 res!3094951) b!7763426))

(assert (= (and d!2343746 (not res!3094952)) b!7763423))

(declare-fun m!8221638 () Bool)

(assert (=> b!7763423 m!8221638))

(declare-fun m!8221640 () Bool)

(assert (=> b!7763427 m!8221640))

(declare-fun m!8221642 () Bool)

(assert (=> b!7763427 m!8221642))

(declare-fun m!8221644 () Bool)

(assert (=> b!7763424 m!8221644))

(assert (=> b!7763426 m!8221640))

(declare-fun m!8221646 () Bool)

(assert (=> b!7763426 m!8221646))

(assert (=> d!2343746 m!8221638))

(declare-fun m!8221648 () Bool)

(assert (=> d!2343746 m!8221648))

(assert (=> d!2343746 m!8221524))

(declare-fun m!8221650 () Bool)

(assert (=> b!7763422 m!8221650))

(assert (=> b!7763422 m!8221650))

(declare-fun m!8221652 () Bool)

(assert (=> b!7763422 m!8221652))

(declare-fun m!8221654 () Bool)

(assert (=> b!7763422 m!8221654))

(assert (=> b!7763422 m!8221650))

(declare-fun m!8221656 () Bool)

(assert (=> b!7763422 m!8221656))

(assert (=> b!7763419 m!8221640))

(declare-fun m!8221658 () Bool)

(assert (=> b!7763419 m!8221658))

(assert (=> b!7763192 d!2343746))

(declare-fun b!7763432 () Bool)

(declare-fun e!4600724 () Bool)

(declare-fun tp!2280240 () Bool)

(assert (=> b!7763432 (= e!4600724 (and tp_is_empty!51771 tp!2280240))))

(assert (=> b!7763193 (= tp!2280199 e!4600724)))

(assert (= (and b!7763193 (is-Cons!73427 (t!388286 s!10216))) b!7763432))

(declare-fun b!7763448 () Bool)

(declare-fun e!4600729 () Bool)

(declare-fun tp!2280251 () Bool)

(declare-fun tp!2280252 () Bool)

(assert (=> b!7763448 (= e!4600729 (and tp!2280251 tp!2280252))))

(declare-fun b!7763450 () Bool)

(declare-fun tp!2280254 () Bool)

(declare-fun tp!2280255 () Bool)

(assert (=> b!7763450 (= e!4600729 (and tp!2280254 tp!2280255))))

(declare-fun b!7763447 () Bool)

(assert (=> b!7763447 (= e!4600729 tp_is_empty!51771)))

(assert (=> b!7763179 (= tp!2280200 e!4600729)))

(declare-fun b!7763449 () Bool)

(declare-fun tp!2280253 () Bool)

(assert (=> b!7763449 (= e!4600729 tp!2280253)))

(assert (= (and b!7763179 (is-ElementMatch!20708 (regOne!41929 r1!3330))) b!7763447))

(assert (= (and b!7763179 (is-Concat!29553 (regOne!41929 r1!3330))) b!7763448))

(assert (= (and b!7763179 (is-Star!20708 (regOne!41929 r1!3330))) b!7763449))

(assert (= (and b!7763179 (is-Union!20708 (regOne!41929 r1!3330))) b!7763450))

(declare-fun b!7763452 () Bool)

(declare-fun e!4600730 () Bool)

(declare-fun tp!2280256 () Bool)

(declare-fun tp!2280257 () Bool)

(assert (=> b!7763452 (= e!4600730 (and tp!2280256 tp!2280257))))

(declare-fun b!7763454 () Bool)

(declare-fun tp!2280259 () Bool)

(declare-fun tp!2280260 () Bool)

(assert (=> b!7763454 (= e!4600730 (and tp!2280259 tp!2280260))))

(declare-fun b!7763451 () Bool)

(assert (=> b!7763451 (= e!4600730 tp_is_empty!51771)))

(assert (=> b!7763179 (= tp!2280197 e!4600730)))

(declare-fun b!7763453 () Bool)

(declare-fun tp!2280258 () Bool)

(assert (=> b!7763453 (= e!4600730 tp!2280258)))

(assert (= (and b!7763179 (is-ElementMatch!20708 (regTwo!41929 r1!3330))) b!7763451))

(assert (= (and b!7763179 (is-Concat!29553 (regTwo!41929 r1!3330))) b!7763452))

(assert (= (and b!7763179 (is-Star!20708 (regTwo!41929 r1!3330))) b!7763453))

(assert (= (and b!7763179 (is-Union!20708 (regTwo!41929 r1!3330))) b!7763454))

(declare-fun b!7763456 () Bool)

(declare-fun e!4600731 () Bool)

(declare-fun tp!2280261 () Bool)

(declare-fun tp!2280262 () Bool)

(assert (=> b!7763456 (= e!4600731 (and tp!2280261 tp!2280262))))

(declare-fun b!7763458 () Bool)

(declare-fun tp!2280264 () Bool)

(declare-fun tp!2280265 () Bool)

(assert (=> b!7763458 (= e!4600731 (and tp!2280264 tp!2280265))))

(declare-fun b!7763455 () Bool)

(assert (=> b!7763455 (= e!4600731 tp_is_empty!51771)))

(assert (=> b!7763189 (= tp!2280204 e!4600731)))

(declare-fun b!7763457 () Bool)

(declare-fun tp!2280263 () Bool)

(assert (=> b!7763457 (= e!4600731 tp!2280263)))

(assert (= (and b!7763189 (is-ElementMatch!20708 (regOne!41928 r2!3230))) b!7763455))

(assert (= (and b!7763189 (is-Concat!29553 (regOne!41928 r2!3230))) b!7763456))

(assert (= (and b!7763189 (is-Star!20708 (regOne!41928 r2!3230))) b!7763457))

(assert (= (and b!7763189 (is-Union!20708 (regOne!41928 r2!3230))) b!7763458))

(declare-fun b!7763462 () Bool)

(declare-fun e!4600732 () Bool)

(declare-fun tp!2280266 () Bool)

(declare-fun tp!2280267 () Bool)

(assert (=> b!7763462 (= e!4600732 (and tp!2280266 tp!2280267))))

(declare-fun b!7763464 () Bool)

(declare-fun tp!2280269 () Bool)

(declare-fun tp!2280270 () Bool)

(assert (=> b!7763464 (= e!4600732 (and tp!2280269 tp!2280270))))

(declare-fun b!7763461 () Bool)

(assert (=> b!7763461 (= e!4600732 tp_is_empty!51771)))

(assert (=> b!7763189 (= tp!2280203 e!4600732)))

(declare-fun b!7763463 () Bool)

(declare-fun tp!2280268 () Bool)

(assert (=> b!7763463 (= e!4600732 tp!2280268)))

(assert (= (and b!7763189 (is-ElementMatch!20708 (regTwo!41928 r2!3230))) b!7763461))

(assert (= (and b!7763189 (is-Concat!29553 (regTwo!41928 r2!3230))) b!7763462))

(assert (= (and b!7763189 (is-Star!20708 (regTwo!41928 r2!3230))) b!7763463))

(assert (= (and b!7763189 (is-Union!20708 (regTwo!41928 r2!3230))) b!7763464))

(declare-fun b!7763468 () Bool)

(declare-fun e!4600735 () Bool)

(declare-fun tp!2280271 () Bool)

(declare-fun tp!2280272 () Bool)

(assert (=> b!7763468 (= e!4600735 (and tp!2280271 tp!2280272))))

(declare-fun b!7763470 () Bool)

(declare-fun tp!2280274 () Bool)

(declare-fun tp!2280275 () Bool)

(assert (=> b!7763470 (= e!4600735 (and tp!2280274 tp!2280275))))

(declare-fun b!7763467 () Bool)

(assert (=> b!7763467 (= e!4600735 tp_is_empty!51771)))

(assert (=> b!7763191 (= tp!2280201 e!4600735)))

(declare-fun b!7763469 () Bool)

(declare-fun tp!2280273 () Bool)

(assert (=> b!7763469 (= e!4600735 tp!2280273)))

(assert (= (and b!7763191 (is-ElementMatch!20708 (regOne!41928 r1!3330))) b!7763467))

(assert (= (and b!7763191 (is-Concat!29553 (regOne!41928 r1!3330))) b!7763468))

(assert (= (and b!7763191 (is-Star!20708 (regOne!41928 r1!3330))) b!7763469))

(assert (= (and b!7763191 (is-Union!20708 (regOne!41928 r1!3330))) b!7763470))

(declare-fun b!7763476 () Bool)

(declare-fun e!4600738 () Bool)

(declare-fun tp!2280276 () Bool)

(declare-fun tp!2280277 () Bool)

(assert (=> b!7763476 (= e!4600738 (and tp!2280276 tp!2280277))))

(declare-fun b!7763478 () Bool)

(declare-fun tp!2280279 () Bool)

(declare-fun tp!2280280 () Bool)

(assert (=> b!7763478 (= e!4600738 (and tp!2280279 tp!2280280))))

(declare-fun b!7763475 () Bool)

(assert (=> b!7763475 (= e!4600738 tp_is_empty!51771)))

(assert (=> b!7763191 (= tp!2280198 e!4600738)))

(declare-fun b!7763477 () Bool)

(declare-fun tp!2280278 () Bool)

(assert (=> b!7763477 (= e!4600738 tp!2280278)))

(assert (= (and b!7763191 (is-ElementMatch!20708 (regTwo!41928 r1!3330))) b!7763475))

(assert (= (and b!7763191 (is-Concat!29553 (regTwo!41928 r1!3330))) b!7763476))

(assert (= (and b!7763191 (is-Star!20708 (regTwo!41928 r1!3330))) b!7763477))

(assert (= (and b!7763191 (is-Union!20708 (regTwo!41928 r1!3330))) b!7763478))

(declare-fun b!7763484 () Bool)

(declare-fun e!4600743 () Bool)

(declare-fun tp!2280281 () Bool)

(declare-fun tp!2280282 () Bool)

(assert (=> b!7763484 (= e!4600743 (and tp!2280281 tp!2280282))))

(declare-fun b!7763486 () Bool)

(declare-fun tp!2280284 () Bool)

(declare-fun tp!2280285 () Bool)

(assert (=> b!7763486 (= e!4600743 (and tp!2280284 tp!2280285))))

(declare-fun b!7763483 () Bool)

(assert (=> b!7763483 (= e!4600743 tp_is_empty!51771)))

(assert (=> b!7763186 (= tp!2280202 e!4600743)))

(declare-fun b!7763485 () Bool)

(declare-fun tp!2280283 () Bool)

(assert (=> b!7763485 (= e!4600743 tp!2280283)))

(assert (= (and b!7763186 (is-ElementMatch!20708 (reg!21037 r1!3330))) b!7763483))

(assert (= (and b!7763186 (is-Concat!29553 (reg!21037 r1!3330))) b!7763484))

(assert (= (and b!7763186 (is-Star!20708 (reg!21037 r1!3330))) b!7763485))

(assert (= (and b!7763186 (is-Union!20708 (reg!21037 r1!3330))) b!7763486))

(declare-fun b!7763494 () Bool)

(declare-fun e!4600744 () Bool)

(declare-fun tp!2280286 () Bool)

(declare-fun tp!2280287 () Bool)

(assert (=> b!7763494 (= e!4600744 (and tp!2280286 tp!2280287))))

(declare-fun b!7763496 () Bool)

(declare-fun tp!2280289 () Bool)

(declare-fun tp!2280290 () Bool)

(assert (=> b!7763496 (= e!4600744 (and tp!2280289 tp!2280290))))

(declare-fun b!7763493 () Bool)

(assert (=> b!7763493 (= e!4600744 tp_is_empty!51771)))

(assert (=> b!7763180 (= tp!2280196 e!4600744)))

(declare-fun b!7763495 () Bool)

(declare-fun tp!2280288 () Bool)

(assert (=> b!7763495 (= e!4600744 tp!2280288)))

(assert (= (and b!7763180 (is-ElementMatch!20708 (reg!21037 r2!3230))) b!7763493))

(assert (= (and b!7763180 (is-Concat!29553 (reg!21037 r2!3230))) b!7763494))

(assert (= (and b!7763180 (is-Star!20708 (reg!21037 r2!3230))) b!7763495))

(assert (= (and b!7763180 (is-Union!20708 (reg!21037 r2!3230))) b!7763496))

(declare-fun b!7763502 () Bool)

(declare-fun e!4600749 () Bool)

(declare-fun tp!2280291 () Bool)

(declare-fun tp!2280292 () Bool)

(assert (=> b!7763502 (= e!4600749 (and tp!2280291 tp!2280292))))

(declare-fun b!7763504 () Bool)

(declare-fun tp!2280294 () Bool)

(declare-fun tp!2280295 () Bool)

(assert (=> b!7763504 (= e!4600749 (and tp!2280294 tp!2280295))))

(declare-fun b!7763501 () Bool)

(assert (=> b!7763501 (= e!4600749 tp_is_empty!51771)))

(assert (=> b!7763182 (= tp!2280195 e!4600749)))

(declare-fun b!7763503 () Bool)

(declare-fun tp!2280293 () Bool)

(assert (=> b!7763503 (= e!4600749 tp!2280293)))

(assert (= (and b!7763182 (is-ElementMatch!20708 (regOne!41929 r2!3230))) b!7763501))

(assert (= (and b!7763182 (is-Concat!29553 (regOne!41929 r2!3230))) b!7763502))

(assert (= (and b!7763182 (is-Star!20708 (regOne!41929 r2!3230))) b!7763503))

(assert (= (and b!7763182 (is-Union!20708 (regOne!41929 r2!3230))) b!7763504))

(declare-fun b!7763508 () Bool)

(declare-fun e!4600750 () Bool)

(declare-fun tp!2280296 () Bool)

(declare-fun tp!2280297 () Bool)

(assert (=> b!7763508 (= e!4600750 (and tp!2280296 tp!2280297))))

(declare-fun b!7763510 () Bool)

(declare-fun tp!2280299 () Bool)

(declare-fun tp!2280300 () Bool)

(assert (=> b!7763510 (= e!4600750 (and tp!2280299 tp!2280300))))

(declare-fun b!7763507 () Bool)

(assert (=> b!7763507 (= e!4600750 tp_is_empty!51771)))

(assert (=> b!7763182 (= tp!2280194 e!4600750)))

(declare-fun b!7763509 () Bool)

(declare-fun tp!2280298 () Bool)

(assert (=> b!7763509 (= e!4600750 tp!2280298)))

(assert (= (and b!7763182 (is-ElementMatch!20708 (regTwo!41929 r2!3230))) b!7763507))

(assert (= (and b!7763182 (is-Concat!29553 (regTwo!41929 r2!3230))) b!7763508))

(assert (= (and b!7763182 (is-Star!20708 (regTwo!41929 r2!3230))) b!7763509))

(assert (= (and b!7763182 (is-Union!20708 (regTwo!41929 r2!3230))) b!7763510))

(declare-fun b_lambda!289463 () Bool)

(assert (= b_lambda!289461 (or b!7763187 b_lambda!289463)))

(declare-fun bs!1965991 () Bool)

(declare-fun d!2343750 () Bool)

(assert (= bs!1965991 (and d!2343750 b!7763187)))

(declare-fun res!3094969 () Bool)

(declare-fun e!4600751 () Bool)

(assert (=> bs!1965991 (=> (not res!3094969) (not e!4600751))))

(assert (=> bs!1965991 (= res!3094969 (= (++!17883 (_1!38204 lt!2670586) (_2!38204 lt!2670586)) s!10216))))

(assert (=> bs!1965991 (= (dynLambda!29993 lambda!472062 lt!2670586) e!4600751)))

(declare-fun b!7763511 () Bool)

(declare-fun res!3094970 () Bool)

(assert (=> b!7763511 (=> (not res!3094970) (not e!4600751))))

(assert (=> b!7763511 (= res!3094970 (matchR!10174 r1!3330 (_1!38204 lt!2670586)))))

(declare-fun b!7763512 () Bool)

(assert (=> b!7763512 (= e!4600751 (matchR!10174 r2!3230 (_2!38204 lt!2670586)))))

(assert (= (and bs!1965991 res!3094969) b!7763511))

(assert (= (and b!7763511 res!3094970) b!7763512))

(declare-fun m!8221660 () Bool)

(assert (=> bs!1965991 m!8221660))

(declare-fun m!8221662 () Bool)

(assert (=> b!7763511 m!8221662))

(declare-fun m!8221664 () Bool)

(assert (=> b!7763512 m!8221664))

(assert (=> d!2343742 d!2343750))

(push 1)

(assert (not b!7763464))

(assert (not b!7763313))

(assert (not b!7763478))

(assert (not b!7763423))

(assert (not d!2343744))

(assert (not b!7763496))

(assert (not b!7763288))

(assert (not b!7763510))

(assert (not bm!719302))

(assert (not b!7763503))

(assert tp_is_empty!51771)

(assert (not b!7763494))

(assert (not b!7763349))

(assert (not b!7763390))

(assert (not b!7763462))

(assert (not b!7763419))

(assert (not bs!1965991))

(assert (not b!7763314))

(assert (not b!7763310))

(assert (not bm!719299))

(assert (not bm!719290))

(assert (not b_lambda!289463))

(assert (not b!7763286))

(assert (not d!2343738))

(assert (not d!2343742))

(assert (not b!7763312))

(assert (not b!7763502))

(assert (not b!7763476))

(assert (not b!7763452))

(assert (not b!7763426))

(assert (not b!7763448))

(assert (not b!7763427))

(assert (not b!7763469))

(assert (not d!2343722))

(assert (not b!7763299))

(assert (not b!7763457))

(assert (not b!7763511))

(assert (not b!7763290))

(assert (not d!2343728))

(assert (not b!7763486))

(assert (not d!2343746))

(assert (not b!7763454))

(assert (not b!7763512))

(assert (not d!2343740))

(assert (not b!7763485))

(assert (not bm!719291))

(assert (not b!7763508))

(assert (not b!7763358))

(assert (not b!7763449))

(assert (not b!7763509))

(assert (not bm!719300))

(assert (not b!7763432))

(assert (not b!7763321))

(assert (not b!7763389))

(assert (not bm!719303))

(assert (not b!7763463))

(assert (not b!7763484))

(assert (not b!7763470))

(assert (not b!7763456))

(assert (not b!7763308))

(assert (not b!7763495))

(assert (not b!7763422))

(assert (not b!7763291))

(assert (not b!7763450))

(assert (not b!7763453))

(assert (not b!7763292))

(assert (not b!7763468))

(assert (not b!7763504))

(assert (not b!7763458))

(assert (not b!7763424))

(assert (not b!7763477))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

