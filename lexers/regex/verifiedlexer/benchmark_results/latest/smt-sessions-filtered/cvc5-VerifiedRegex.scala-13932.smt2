; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!739246 () Bool)

(assert start!739246)

(declare-fun b!7757866 () Bool)

(declare-fun e!4598229 () Bool)

(declare-fun tp!2277317 () Bool)

(declare-fun tp!2277316 () Bool)

(assert (=> b!7757866 (= e!4598229 (and tp!2277317 tp!2277316))))

(declare-fun b!7757867 () Bool)

(declare-fun tp_is_empty!51671 () Bool)

(assert (=> b!7757867 (= e!4598229 tp_is_empty!51671)))

(declare-fun b!7757868 () Bool)

(declare-fun res!3092856 () Bool)

(declare-fun e!4598224 () Bool)

(assert (=> b!7757868 (=> (not res!3092856) (not e!4598224))))

(declare-datatypes ((C!41642 0))(
  ( (C!41643 (val!31261 Int)) )
))
(declare-datatypes ((Regex!20658 0))(
  ( (ElementMatch!20658 (c!1430553 C!41642)) (Concat!29503 (regOne!41828 Regex!20658) (regTwo!41828 Regex!20658)) (EmptyExpr!20658) (Star!20658 (reg!20987 Regex!20658)) (EmptyLang!20658) (Union!20658 (regOne!41829 Regex!20658) (regTwo!41829 Regex!20658)) )
))
(declare-fun r2!3230 () Regex!20658)

(declare-fun validRegex!11074 (Regex!20658) Bool)

(assert (=> b!7757868 (= res!3092856 (validRegex!11074 r2!3230))))

(declare-fun b!7757869 () Bool)

(declare-fun e!4598223 () Bool)

(assert (=> b!7757869 (= e!4598224 e!4598223)))

(declare-fun res!3092861 () Bool)

(assert (=> b!7757869 (=> (not res!3092861) (not e!4598223))))

(declare-datatypes ((List!73501 0))(
  ( (Nil!73377) (Cons!73377 (h!79825 C!41642) (t!388236 List!73501)) )
))
(declare-datatypes ((tuple2!69702 0))(
  ( (tuple2!69703 (_1!38154 List!73501) (_2!38154 List!73501)) )
))
(declare-datatypes ((Option!17645 0))(
  ( (None!17644) (Some!17644 (v!54779 tuple2!69702)) )
))
(declare-fun lt!2669965 () Option!17645)

(declare-fun isDefined!14257 (Option!17645) Bool)

(assert (=> b!7757869 (= res!3092861 (isDefined!14257 lt!2669965))))

(declare-fun s!10216 () List!73501)

(declare-fun r1!3330 () Regex!20658)

(declare-fun findConcatSeparation!3675 (Regex!20658 Regex!20658 List!73501 List!73501 List!73501) Option!17645)

(assert (=> b!7757869 (= lt!2669965 (findConcatSeparation!3675 r1!3330 r2!3230 Nil!73377 s!10216 s!10216))))

(declare-fun b!7757870 () Bool)

(declare-fun e!4598226 () Bool)

(declare-fun tp!2277308 () Bool)

(assert (=> b!7757870 (= e!4598226 (and tp_is_empty!51671 tp!2277308))))

(declare-fun b!7757871 () Bool)

(declare-fun tp!2277307 () Bool)

(assert (=> b!7757871 (= e!4598229 tp!2277307)))

(declare-fun b!7757872 () Bool)

(declare-fun res!3092860 () Bool)

(declare-fun e!4598225 () Bool)

(assert (=> b!7757872 (=> (not res!3092860) (not e!4598225))))

(declare-fun cut!22 () tuple2!69702)

(declare-fun ++!17835 (List!73501 List!73501) List!73501)

(assert (=> b!7757872 (= res!3092860 (= (++!17835 (_1!38154 cut!22) (_2!38154 cut!22)) s!10216))))

(declare-fun b!7757873 () Bool)

(declare-fun e!4598222 () Bool)

(declare-fun tp!2277315 () Bool)

(assert (=> b!7757873 (= e!4598222 (and tp_is_empty!51671 tp!2277315))))

(declare-fun b!7757874 () Bool)

(declare-fun res!3092855 () Bool)

(assert (=> b!7757874 (=> (not res!3092855) (not e!4598225))))

(declare-fun lt!2669967 () tuple2!69702)

(declare-fun matchR!10134 (Regex!20658 List!73501) Bool)

(assert (=> b!7757874 (= res!3092855 (matchR!10134 r1!3330 (_1!38154 lt!2669967)))))

(declare-fun b!7757875 () Bool)

(assert (=> b!7757875 (= e!4598223 e!4598225)))

(declare-fun res!3092857 () Bool)

(assert (=> b!7757875 (=> (not res!3092857) (not e!4598225))))

(assert (=> b!7757875 (= res!3092857 (= (++!17835 (_1!38154 lt!2669967) (_2!38154 lt!2669967)) s!10216))))

(declare-fun get!26140 (Option!17645) tuple2!69702)

(assert (=> b!7757875 (= lt!2669967 (get!26140 lt!2669965))))

(declare-fun b!7757876 () Bool)

(declare-fun e!4598227 () Bool)

(assert (=> b!7757876 (= e!4598227 tp_is_empty!51671)))

(declare-fun b!7757877 () Bool)

(declare-fun res!3092859 () Bool)

(assert (=> b!7757877 (=> (not res!3092859) (not e!4598225))))

(assert (=> b!7757877 (= res!3092859 (matchR!10134 r2!3230 (_2!38154 lt!2669967)))))

(declare-fun b!7757878 () Bool)

(declare-fun e!4598228 () Bool)

(declare-fun tp!2277314 () Bool)

(assert (=> b!7757878 (= e!4598228 (and tp_is_empty!51671 tp!2277314))))

(declare-fun b!7757879 () Bool)

(declare-fun tp!2277311 () Bool)

(declare-fun tp!2277312 () Bool)

(assert (=> b!7757879 (= e!4598227 (and tp!2277311 tp!2277312))))

(declare-fun b!7757880 () Bool)

(declare-fun tp!2277313 () Bool)

(declare-fun tp!2277309 () Bool)

(assert (=> b!7757880 (= e!4598229 (and tp!2277313 tp!2277309))))

(declare-fun b!7757881 () Bool)

(declare-fun tp!2277318 () Bool)

(declare-fun tp!2277310 () Bool)

(assert (=> b!7757881 (= e!4598227 (and tp!2277318 tp!2277310))))

(declare-fun res!3092858 () Bool)

(assert (=> start!739246 (=> (not res!3092858) (not e!4598224))))

(assert (=> start!739246 (= res!3092858 (validRegex!11074 r1!3330))))

(assert (=> start!739246 e!4598224))

(assert (=> start!739246 e!4598229))

(assert (=> start!739246 e!4598227))

(assert (=> start!739246 (and e!4598222 e!4598228)))

(assert (=> start!739246 e!4598226))

(declare-fun b!7757882 () Bool)

(assert (=> b!7757882 (= e!4598225 false)))

(declare-fun lt!2669966 () Bool)

(assert (=> b!7757882 (= lt!2669966 (matchR!10134 r1!3330 (_1!38154 cut!22)))))

(declare-fun b!7757883 () Bool)

(declare-fun tp!2277306 () Bool)

(assert (=> b!7757883 (= e!4598227 tp!2277306)))

(assert (= (and start!739246 res!3092858) b!7757868))

(assert (= (and b!7757868 res!3092856) b!7757869))

(assert (= (and b!7757869 res!3092861) b!7757875))

(assert (= (and b!7757875 res!3092857) b!7757874))

(assert (= (and b!7757874 res!3092855) b!7757877))

(assert (= (and b!7757877 res!3092859) b!7757872))

(assert (= (and b!7757872 res!3092860) b!7757882))

(assert (= (and start!739246 (is-ElementMatch!20658 r1!3330)) b!7757867))

(assert (= (and start!739246 (is-Concat!29503 r1!3330)) b!7757866))

(assert (= (and start!739246 (is-Star!20658 r1!3330)) b!7757871))

(assert (= (and start!739246 (is-Union!20658 r1!3330)) b!7757880))

(assert (= (and start!739246 (is-ElementMatch!20658 r2!3230)) b!7757876))

(assert (= (and start!739246 (is-Concat!29503 r2!3230)) b!7757881))

(assert (= (and start!739246 (is-Star!20658 r2!3230)) b!7757883))

(assert (= (and start!739246 (is-Union!20658 r2!3230)) b!7757879))

(assert (= (and start!739246 (is-Cons!73377 (_1!38154 cut!22))) b!7757873))

(assert (= (and start!739246 (is-Cons!73377 (_2!38154 cut!22))) b!7757878))

(assert (= (and start!739246 (is-Cons!73377 s!10216)) b!7757870))

(declare-fun m!8219578 () Bool)

(assert (=> b!7757868 m!8219578))

(declare-fun m!8219580 () Bool)

(assert (=> b!7757875 m!8219580))

(declare-fun m!8219582 () Bool)

(assert (=> b!7757875 m!8219582))

(declare-fun m!8219584 () Bool)

(assert (=> b!7757869 m!8219584))

(declare-fun m!8219586 () Bool)

(assert (=> b!7757869 m!8219586))

(declare-fun m!8219588 () Bool)

(assert (=> b!7757872 m!8219588))

(declare-fun m!8219590 () Bool)

(assert (=> b!7757877 m!8219590))

(declare-fun m!8219592 () Bool)

(assert (=> b!7757882 m!8219592))

(declare-fun m!8219594 () Bool)

(assert (=> start!739246 m!8219594))

(declare-fun m!8219596 () Bool)

(assert (=> b!7757874 m!8219596))

(push 1)

(assert (not b!7757869))

(assert (not b!7757881))

(assert (not b!7757877))

(assert (not b!7757880))

(assert (not b!7757875))

(assert (not b!7757882))

(assert (not b!7757872))

(assert (not b!7757870))

(assert (not b!7757866))

(assert (not b!7757879))

(assert (not b!7757878))

(assert (not b!7757868))

(assert (not b!7757873))

(assert tp_is_empty!51671)

(assert (not b!7757883))

(assert (not start!739246))

(assert (not b!7757871))

(assert (not b!7757874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

