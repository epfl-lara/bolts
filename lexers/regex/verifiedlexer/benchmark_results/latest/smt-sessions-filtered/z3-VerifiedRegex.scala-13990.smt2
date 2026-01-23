; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740206 () Bool)

(assert start!740206)

(declare-fun res!3098830 () Bool)

(declare-fun e!4605902 () Bool)

(assert (=> start!740206 (=> (not res!3098830) (not e!4605902))))

(declare-datatypes ((C!41876 0))(
  ( (C!41877 (val!31378 Int)) )
))
(declare-datatypes ((Regex!20775 0))(
  ( (ElementMatch!20775 (c!1432784 C!41876)) (Concat!29620 (regOne!42062 Regex!20775) (regTwo!42062 Regex!20775)) (EmptyExpr!20775) (Star!20775 (reg!21104 Regex!20775)) (EmptyLang!20775) (Union!20775 (regOne!42063 Regex!20775) (regTwo!42063 Regex!20775)) )
))
(declare-fun r1!6279 () Regex!20775)

(declare-fun validRegex!11189 (Regex!20775) Bool)

(assert (=> start!740206 (= res!3098830 (validRegex!11189 r1!6279))))

(assert (=> start!740206 e!4605902))

(declare-fun e!4605901 () Bool)

(assert (=> start!740206 e!4605901))

(declare-fun e!4605905 () Bool)

(assert (=> start!740206 e!4605905))

(declare-fun e!4605904 () Bool)

(assert (=> start!740206 e!4605904))

(declare-fun b!7774207 () Bool)

(declare-fun tp!2284308 () Bool)

(declare-fun tp!2284307 () Bool)

(assert (=> b!7774207 (= e!4605901 (and tp!2284308 tp!2284307))))

(declare-fun b!7774208 () Bool)

(declare-fun res!3098826 () Bool)

(declare-fun e!4605903 () Bool)

(assert (=> b!7774208 (=> (not res!3098826) (not e!4605903))))

(declare-datatypes ((List!73614 0))(
  ( (Nil!73490) (Cons!73490 (h!79938 C!41876) (t!388349 List!73614)) )
))
(declare-fun s!14292 () List!73614)

(get-info :version)

(assert (=> b!7774208 (= res!3098826 ((_ is Cons!73490) s!14292))))

(declare-fun b!7774209 () Bool)

(declare-fun tp_is_empty!51905 () Bool)

(assert (=> b!7774209 (= e!4605901 tp_is_empty!51905)))

(declare-fun b!7774210 () Bool)

(declare-fun tp!2284309 () Bool)

(declare-fun tp!2284311 () Bool)

(assert (=> b!7774210 (= e!4605905 (and tp!2284309 tp!2284311))))

(declare-fun b!7774211 () Bool)

(assert (=> b!7774211 (= e!4605903 false)))

(declare-fun lt!2671716 () Regex!20775)

(declare-fun derivativeStep!6118 (Regex!20775 C!41876) Regex!20775)

(assert (=> b!7774211 (= lt!2671716 (derivativeStep!6118 r1!6279 (h!79938 s!14292)))))

(declare-fun b!7774212 () Bool)

(declare-fun tp!2284304 () Bool)

(assert (=> b!7774212 (= e!4605904 (and tp_is_empty!51905 tp!2284304))))

(declare-fun b!7774213 () Bool)

(declare-fun tp!2284313 () Bool)

(declare-fun tp!2284312 () Bool)

(assert (=> b!7774213 (= e!4605905 (and tp!2284313 tp!2284312))))

(declare-fun b!7774214 () Bool)

(declare-fun res!3098828 () Bool)

(assert (=> b!7774214 (=> (not res!3098828) (not e!4605903))))

(declare-fun nullable!9163 (Regex!20775) Bool)

(assert (=> b!7774214 (= res!3098828 (nullable!9163 r1!6279))))

(declare-fun b!7774215 () Bool)

(declare-fun tp!2284310 () Bool)

(assert (=> b!7774215 (= e!4605901 tp!2284310)))

(declare-fun b!7774216 () Bool)

(declare-fun res!3098825 () Bool)

(assert (=> b!7774216 (=> (not res!3098825) (not e!4605903))))

(declare-fun lt!2671715 () Regex!20775)

(declare-fun matchR!10235 (Regex!20775 List!73614) Bool)

(assert (=> b!7774216 (= res!3098825 (matchR!10235 (derivativeStep!6118 lt!2671715 (h!79938 s!14292)) (t!388349 s!14292)))))

(declare-fun b!7774217 () Bool)

(assert (=> b!7774217 (= e!4605905 tp_is_empty!51905)))

(declare-fun b!7774218 () Bool)

(declare-fun tp!2284305 () Bool)

(declare-fun tp!2284306 () Bool)

(assert (=> b!7774218 (= e!4605901 (and tp!2284305 tp!2284306))))

(declare-fun b!7774219 () Bool)

(declare-fun res!3098827 () Bool)

(assert (=> b!7774219 (=> (not res!3098827) (not e!4605902))))

(declare-fun r2!6217 () Regex!20775)

(assert (=> b!7774219 (= res!3098827 (validRegex!11189 r2!6217))))

(declare-fun b!7774220 () Bool)

(assert (=> b!7774220 (= e!4605902 e!4605903)))

(declare-fun res!3098829 () Bool)

(assert (=> b!7774220 (=> (not res!3098829) (not e!4605903))))

(assert (=> b!7774220 (= res!3098829 (matchR!10235 lt!2671715 s!14292))))

(assert (=> b!7774220 (= lt!2671715 (Concat!29620 r1!6279 r2!6217))))

(declare-fun b!7774221 () Bool)

(declare-fun tp!2284303 () Bool)

(assert (=> b!7774221 (= e!4605905 tp!2284303)))

(assert (= (and start!740206 res!3098830) b!7774219))

(assert (= (and b!7774219 res!3098827) b!7774220))

(assert (= (and b!7774220 res!3098829) b!7774208))

(assert (= (and b!7774208 res!3098826) b!7774216))

(assert (= (and b!7774216 res!3098825) b!7774214))

(assert (= (and b!7774214 res!3098828) b!7774211))

(assert (= (and start!740206 ((_ is ElementMatch!20775) r1!6279)) b!7774209))

(assert (= (and start!740206 ((_ is Concat!29620) r1!6279)) b!7774218))

(assert (= (and start!740206 ((_ is Star!20775) r1!6279)) b!7774215))

(assert (= (and start!740206 ((_ is Union!20775) r1!6279)) b!7774207))

(assert (= (and start!740206 ((_ is ElementMatch!20775) r2!6217)) b!7774217))

(assert (= (and start!740206 ((_ is Concat!29620) r2!6217)) b!7774213))

(assert (= (and start!740206 ((_ is Star!20775) r2!6217)) b!7774221))

(assert (= (and start!740206 ((_ is Union!20775) r2!6217)) b!7774210))

(assert (= (and start!740206 ((_ is Cons!73490) s!14292)) b!7774212))

(declare-fun m!8226096 () Bool)

(assert (=> b!7774211 m!8226096))

(declare-fun m!8226098 () Bool)

(assert (=> start!740206 m!8226098))

(declare-fun m!8226100 () Bool)

(assert (=> b!7774220 m!8226100))

(declare-fun m!8226102 () Bool)

(assert (=> b!7774214 m!8226102))

(declare-fun m!8226104 () Bool)

(assert (=> b!7774219 m!8226104))

(declare-fun m!8226106 () Bool)

(assert (=> b!7774216 m!8226106))

(assert (=> b!7774216 m!8226106))

(declare-fun m!8226108 () Bool)

(assert (=> b!7774216 m!8226108))

(check-sat (not b!7774213) (not start!740206) tp_is_empty!51905 (not b!7774221) (not b!7774216) (not b!7774220) (not b!7774210) (not b!7774215) (not b!7774212) (not b!7774214) (not b!7774211) (not b!7774207) (not b!7774219) (not b!7774218))
(check-sat)
