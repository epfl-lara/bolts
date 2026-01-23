; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732916 () Bool)

(assert start!732916)

(declare-fun b!7601961 () Bool)

(assert (=> b!7601961 true))

(assert (=> b!7601961 true))

(assert (=> b!7601961 true))

(declare-fun bs!1942434 () Bool)

(declare-fun b!7601949 () Bool)

(assert (= bs!1942434 (and b!7601949 b!7601961)))

(declare-fun lambda!467755 () Int)

(declare-fun lambda!467754 () Int)

(assert (=> bs!1942434 (not (= lambda!467755 lambda!467754))))

(assert (=> b!7601949 true))

(assert (=> b!7601949 true))

(assert (=> b!7601949 true))

(declare-fun res!3043899 () Bool)

(declare-fun e!4522466 () Bool)

(assert (=> start!732916 (=> (not res!3043899) (not e!4522466))))

(declare-datatypes ((C!40652 0))(
  ( (C!40653 (val!30766 Int)) )
))
(declare-datatypes ((Regex!20163 0))(
  ( (ElementMatch!20163 (c!1402252 C!40652)) (Concat!29008 (regOne!40838 Regex!20163) (regTwo!40838 Regex!20163)) (EmptyExpr!20163) (Star!20163 (reg!20492 Regex!20163)) (EmptyLang!20163) (Union!20163 (regOne!40839 Regex!20163) (regTwo!40839 Regex!20163)) )
))
(declare-fun r1!3349 () Regex!20163)

(declare-fun validRegex!10591 (Regex!20163) Bool)

(assert (=> start!732916 (= res!3043899 (validRegex!10591 r1!3349))))

(assert (=> start!732916 e!4522466))

(declare-fun e!4522468 () Bool)

(assert (=> start!732916 e!4522468))

(declare-fun e!4522469 () Bool)

(assert (=> start!732916 e!4522469))

(declare-fun e!4522464 () Bool)

(assert (=> start!732916 e!4522464))

(declare-fun e!4522465 () Bool)

(declare-fun e!4522467 () Bool)

(assert (=> start!732916 (and e!4522465 e!4522467)))

(declare-fun res!3043902 () Bool)

(assert (=> b!7601949 (=> (not res!3043902) (not e!4522466))))

(declare-fun Exists!4391 (Int) Bool)

(assert (=> b!7601949 (= res!3043902 (Exists!4391 lambda!467755))))

(declare-fun b!7601950 () Bool)

(declare-fun tp_is_empty!50681 () Bool)

(declare-fun tp!2216646 () Bool)

(assert (=> b!7601950 (= e!4522467 (and tp_is_empty!50681 tp!2216646))))

(declare-fun b!7601951 () Bool)

(declare-fun res!3043896 () Bool)

(declare-fun e!4522463 () Bool)

(assert (=> b!7601951 (=> res!3043896 e!4522463)))

(declare-fun lt!2654447 () Bool)

(declare-fun lt!2654448 () Bool)

(assert (=> b!7601951 (= res!3043896 (or (not lt!2654447) (not lt!2654448)))))

(declare-fun b!7601952 () Bool)

(declare-fun tp!2216649 () Bool)

(assert (=> b!7601952 (= e!4522465 (and tp_is_empty!50681 tp!2216649))))

(declare-fun b!7601953 () Bool)

(assert (=> b!7601953 (= e!4522463 true)))

(declare-fun lt!2654446 () Bool)

(declare-datatypes ((List!73046 0))(
  ( (Nil!72922) (Cons!72922 (h!79370 C!40652) (t!387781 List!73046)) )
))
(declare-datatypes ((tuple2!69040 0))(
  ( (tuple2!69041 (_1!37823 List!73046) (_2!37823 List!73046)) )
))
(declare-fun cut!38 () tuple2!69040)

(declare-fun matchR!9733 (Regex!20163 List!73046) Bool)

(assert (=> b!7601953 (= lt!2654446 (matchR!9733 r1!3349 (_1!37823 cut!38)))))

(declare-fun b!7601954 () Bool)

(declare-fun tp!2216639 () Bool)

(assert (=> b!7601954 (= e!4522469 tp!2216639)))

(declare-fun b!7601955 () Bool)

(declare-fun tp!2216644 () Bool)

(declare-fun tp!2216651 () Bool)

(assert (=> b!7601955 (= e!4522469 (and tp!2216644 tp!2216651))))

(declare-fun b!7601956 () Bool)

(declare-fun tp!2216648 () Bool)

(declare-fun tp!2216640 () Bool)

(assert (=> b!7601956 (= e!4522468 (and tp!2216648 tp!2216640))))

(declare-fun b!7601957 () Bool)

(declare-fun tp!2216642 () Bool)

(assert (=> b!7601957 (= e!4522464 (and tp_is_empty!50681 tp!2216642))))

(declare-fun b!7601958 () Bool)

(declare-fun tp!2216643 () Bool)

(assert (=> b!7601958 (= e!4522468 tp!2216643)))

(declare-fun b!7601959 () Bool)

(assert (=> b!7601959 (= e!4522468 tp_is_empty!50681)))

(declare-fun b!7601960 () Bool)

(assert (=> b!7601960 (= e!4522466 (not e!4522463))))

(declare-fun res!3043900 () Bool)

(assert (=> b!7601960 (=> res!3043900 e!4522463)))

(declare-fun lt!2654449 () tuple2!69040)

(declare-fun s!10235 () List!73046)

(declare-fun ++!17563 (List!73046 List!73046) List!73046)

(assert (=> b!7601960 (= res!3043900 (not (= (++!17563 (_1!37823 lt!2654449) (_2!37823 lt!2654449)) s!10235)))))

(declare-fun r2!3249 () Regex!20163)

(declare-fun matchRSpec!4448 (Regex!20163 List!73046) Bool)

(assert (=> b!7601960 (= lt!2654448 (matchRSpec!4448 r2!3249 (_2!37823 lt!2654449)))))

(assert (=> b!7601960 (= lt!2654448 (matchR!9733 r2!3249 (_2!37823 lt!2654449)))))

(declare-datatypes ((Unit!167226 0))(
  ( (Unit!167227) )
))
(declare-fun lt!2654450 () Unit!167226)

(declare-fun mainMatchTheorem!4442 (Regex!20163 List!73046) Unit!167226)

(assert (=> b!7601960 (= lt!2654450 (mainMatchTheorem!4442 r2!3249 (_2!37823 lt!2654449)))))

(assert (=> b!7601960 (= lt!2654447 (matchRSpec!4448 r1!3349 (_1!37823 lt!2654449)))))

(assert (=> b!7601960 (= lt!2654447 (matchR!9733 r1!3349 (_1!37823 lt!2654449)))))

(declare-fun lt!2654445 () Unit!167226)

(assert (=> b!7601960 (= lt!2654445 (mainMatchTheorem!4442 r1!3349 (_1!37823 lt!2654449)))))

(declare-fun pickWitness!414 (Int) tuple2!69040)

(assert (=> b!7601960 (= lt!2654449 (pickWitness!414 lambda!467755))))

(declare-fun res!3043901 () Bool)

(assert (=> b!7601961 (=> (not res!3043901) (not e!4522466))))

(assert (=> b!7601961 (= res!3043901 (not (Exists!4391 lambda!467754)))))

(declare-fun b!7601962 () Bool)

(declare-fun res!3043895 () Bool)

(assert (=> b!7601962 (=> (not res!3043895) (not e!4522466))))

(assert (=> b!7601962 (= res!3043895 (not (Exists!4391 lambda!467754)))))

(declare-fun b!7601963 () Bool)

(assert (=> b!7601963 (= e!4522469 tp_is_empty!50681)))

(declare-fun b!7601964 () Bool)

(declare-fun tp!2216641 () Bool)

(declare-fun tp!2216645 () Bool)

(assert (=> b!7601964 (= e!4522468 (and tp!2216641 tp!2216645))))

(declare-fun b!7601965 () Bool)

(declare-fun tp!2216650 () Bool)

(declare-fun tp!2216647 () Bool)

(assert (=> b!7601965 (= e!4522469 (and tp!2216650 tp!2216647))))

(declare-fun b!7601966 () Bool)

(declare-fun res!3043897 () Bool)

(assert (=> b!7601966 (=> res!3043897 e!4522463)))

(assert (=> b!7601966 (= res!3043897 (not (= (++!17563 (_1!37823 cut!38) (_2!37823 cut!38)) s!10235)))))

(declare-fun b!7601967 () Bool)

(declare-fun res!3043898 () Bool)

(assert (=> b!7601967 (=> (not res!3043898) (not e!4522466))))

(assert (=> b!7601967 (= res!3043898 (validRegex!10591 r2!3249))))

(assert (= (and start!732916 res!3043899) b!7601967))

(assert (= (and b!7601967 res!3043898) b!7601961))

(assert (= (and b!7601961 res!3043901) b!7601962))

(assert (= (and b!7601962 res!3043895) b!7601949))

(assert (= (and b!7601949 res!3043902) b!7601960))

(assert (= (and b!7601960 (not res!3043900)) b!7601951))

(assert (= (and b!7601951 (not res!3043896)) b!7601966))

(assert (= (and b!7601966 (not res!3043897)) b!7601953))

(get-info :version)

(assert (= (and start!732916 ((_ is ElementMatch!20163) r1!3349)) b!7601959))

(assert (= (and start!732916 ((_ is Concat!29008) r1!3349)) b!7601964))

(assert (= (and start!732916 ((_ is Star!20163) r1!3349)) b!7601958))

(assert (= (and start!732916 ((_ is Union!20163) r1!3349)) b!7601956))

(assert (= (and start!732916 ((_ is ElementMatch!20163) r2!3249)) b!7601963))

(assert (= (and start!732916 ((_ is Concat!29008) r2!3249)) b!7601955))

(assert (= (and start!732916 ((_ is Star!20163) r2!3249)) b!7601954))

(assert (= (and start!732916 ((_ is Union!20163) r2!3249)) b!7601965))

(assert (= (and start!732916 ((_ is Cons!72922) s!10235)) b!7601957))

(assert (= (and start!732916 ((_ is Cons!72922) (_1!37823 cut!38))) b!7601952))

(assert (= (and start!732916 ((_ is Cons!72922) (_2!37823 cut!38))) b!7601950))

(declare-fun m!8145310 () Bool)

(assert (=> b!7601953 m!8145310))

(declare-fun m!8145312 () Bool)

(assert (=> b!7601961 m!8145312))

(declare-fun m!8145314 () Bool)

(assert (=> b!7601949 m!8145314))

(declare-fun m!8145316 () Bool)

(assert (=> b!7601967 m!8145316))

(declare-fun m!8145318 () Bool)

(assert (=> start!732916 m!8145318))

(declare-fun m!8145320 () Bool)

(assert (=> b!7601966 m!8145320))

(assert (=> b!7601962 m!8145312))

(declare-fun m!8145322 () Bool)

(assert (=> b!7601960 m!8145322))

(declare-fun m!8145324 () Bool)

(assert (=> b!7601960 m!8145324))

(declare-fun m!8145326 () Bool)

(assert (=> b!7601960 m!8145326))

(declare-fun m!8145328 () Bool)

(assert (=> b!7601960 m!8145328))

(declare-fun m!8145330 () Bool)

(assert (=> b!7601960 m!8145330))

(declare-fun m!8145332 () Bool)

(assert (=> b!7601960 m!8145332))

(declare-fun m!8145334 () Bool)

(assert (=> b!7601960 m!8145334))

(declare-fun m!8145336 () Bool)

(assert (=> b!7601960 m!8145336))

(check-sat (not b!7601966) (not b!7601949) (not b!7601952) tp_is_empty!50681 (not b!7601954) (not b!7601961) (not b!7601957) (not b!7601955) (not start!732916) (not b!7601953) (not b!7601950) (not b!7601964) (not b!7601967) (not b!7601956) (not b!7601962) (not b!7601960) (not b!7601965) (not b!7601958))
(check-sat)
