; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732920 () Bool)

(assert start!732920)

(declare-fun b!7602108 () Bool)

(assert (=> b!7602108 true))

(assert (=> b!7602108 true))

(assert (=> b!7602108 true))

(declare-fun bs!1942438 () Bool)

(declare-fun b!7602100 () Bool)

(assert (= bs!1942438 (and b!7602100 b!7602108)))

(declare-fun lambda!467779 () Int)

(declare-fun lambda!467778 () Int)

(assert (=> bs!1942438 (not (= lambda!467779 lambda!467778))))

(assert (=> b!7602100 true))

(assert (=> b!7602100 true))

(assert (=> b!7602100 true))

(declare-fun b!7602096 () Bool)

(declare-fun e!4522515 () Bool)

(declare-fun tp!2216714 () Bool)

(declare-fun tp!2216713 () Bool)

(assert (=> b!7602096 (= e!4522515 (and tp!2216714 tp!2216713))))

(declare-fun b!7602097 () Bool)

(declare-fun e!4522519 () Bool)

(declare-fun tp_is_empty!50685 () Bool)

(declare-fun tp!2216707 () Bool)

(assert (=> b!7602097 (= e!4522519 (and tp_is_empty!50685 tp!2216707))))

(declare-fun b!7602098 () Bool)

(declare-fun tp!2216715 () Bool)

(declare-fun tp!2216708 () Bool)

(assert (=> b!7602098 (= e!4522515 (and tp!2216715 tp!2216708))))

(declare-fun b!7602099 () Bool)

(declare-fun res!3043980 () Bool)

(declare-fun e!4522517 () Bool)

(assert (=> b!7602099 (=> (not res!3043980) (not e!4522517))))

(declare-fun Exists!4393 (Int) Bool)

(assert (=> b!7602099 (= res!3043980 (not (Exists!4393 lambda!467778)))))

(declare-fun res!3043983 () Bool)

(assert (=> b!7602100 (=> (not res!3043983) (not e!4522517))))

(assert (=> b!7602100 (= res!3043983 (Exists!4393 lambda!467779))))

(declare-fun b!7602101 () Bool)

(declare-fun e!4522518 () Bool)

(assert (=> b!7602101 (= e!4522518 true)))

(declare-datatypes ((Unit!167230 0))(
  ( (Unit!167231) )
))
(declare-fun lt!2654486 () Unit!167230)

(declare-datatypes ((C!40656 0))(
  ( (C!40657 (val!30768 Int)) )
))
(declare-datatypes ((List!73048 0))(
  ( (Nil!72924) (Cons!72924 (h!79372 C!40656) (t!387783 List!73048)) )
))
(declare-datatypes ((tuple2!69044 0))(
  ( (tuple2!69045 (_1!37825 List!73048) (_2!37825 List!73048)) )
))
(declare-fun lt!2654483 () tuple2!69044)

(declare-fun ExistsThe!36 (tuple2!69044 Int) Unit!167230)

(assert (=> b!7602101 (= lt!2654486 (ExistsThe!36 (tuple2!69045 (_1!37825 lt!2654483) (_2!37825 lt!2654483)) lambda!467778))))

(declare-fun b!7602102 () Bool)

(declare-fun e!4522516 () Bool)

(assert (=> b!7602102 (= e!4522516 tp_is_empty!50685)))

(declare-fun b!7602103 () Bool)

(assert (=> b!7602103 (= e!4522515 tp_is_empty!50685)))

(declare-fun b!7602104 () Bool)

(declare-fun tp!2216712 () Bool)

(declare-fun tp!2216710 () Bool)

(assert (=> b!7602104 (= e!4522516 (and tp!2216712 tp!2216710))))

(declare-fun res!3043982 () Bool)

(assert (=> start!732920 (=> (not res!3043982) (not e!4522517))))

(declare-datatypes ((Regex!20165 0))(
  ( (ElementMatch!20165 (c!1402254 C!40656)) (Concat!29010 (regOne!40842 Regex!20165) (regTwo!40842 Regex!20165)) (EmptyExpr!20165) (Star!20165 (reg!20494 Regex!20165)) (EmptyLang!20165) (Union!20165 (regOne!40843 Regex!20165) (regTwo!40843 Regex!20165)) )
))
(declare-fun r1!3349 () Regex!20165)

(declare-fun validRegex!10593 (Regex!20165) Bool)

(assert (=> start!732920 (= res!3043982 (validRegex!10593 r1!3349))))

(assert (=> start!732920 e!4522517))

(assert (=> start!732920 e!4522515))

(assert (=> start!732920 e!4522516))

(assert (=> start!732920 e!4522519))

(declare-fun b!7602105 () Bool)

(declare-fun res!3043981 () Bool)

(assert (=> b!7602105 (=> res!3043981 e!4522518)))

(declare-fun lt!2654482 () Bool)

(declare-fun lt!2654484 () Bool)

(assert (=> b!7602105 (= res!3043981 (or (not lt!2654482) (not lt!2654484)))))

(declare-fun b!7602106 () Bool)

(declare-fun tp!2216711 () Bool)

(assert (=> b!7602106 (= e!4522515 tp!2216711)))

(declare-fun b!7602107 () Bool)

(declare-fun res!3043984 () Bool)

(assert (=> b!7602107 (=> (not res!3043984) (not e!4522517))))

(declare-fun r2!3249 () Regex!20165)

(assert (=> b!7602107 (= res!3043984 (validRegex!10593 r2!3249))))

(declare-fun res!3043979 () Bool)

(assert (=> b!7602108 (=> (not res!3043979) (not e!4522517))))

(assert (=> b!7602108 (= res!3043979 (not (Exists!4393 lambda!467778)))))

(declare-fun b!7602109 () Bool)

(declare-fun tp!2216709 () Bool)

(assert (=> b!7602109 (= e!4522516 tp!2216709)))

(declare-fun b!7602110 () Bool)

(assert (=> b!7602110 (= e!4522517 (not e!4522518))))

(declare-fun res!3043978 () Bool)

(assert (=> b!7602110 (=> res!3043978 e!4522518)))

(declare-fun s!10235 () List!73048)

(declare-fun ++!17565 (List!73048 List!73048) List!73048)

(assert (=> b!7602110 (= res!3043978 (not (= (++!17565 (_1!37825 lt!2654483) (_2!37825 lt!2654483)) s!10235)))))

(declare-fun matchRSpec!4450 (Regex!20165 List!73048) Bool)

(assert (=> b!7602110 (= lt!2654484 (matchRSpec!4450 r2!3249 (_2!37825 lt!2654483)))))

(declare-fun matchR!9735 (Regex!20165 List!73048) Bool)

(assert (=> b!7602110 (= lt!2654484 (matchR!9735 r2!3249 (_2!37825 lt!2654483)))))

(declare-fun lt!2654481 () Unit!167230)

(declare-fun mainMatchTheorem!4444 (Regex!20165 List!73048) Unit!167230)

(assert (=> b!7602110 (= lt!2654481 (mainMatchTheorem!4444 r2!3249 (_2!37825 lt!2654483)))))

(assert (=> b!7602110 (= lt!2654482 (matchRSpec!4450 r1!3349 (_1!37825 lt!2654483)))))

(assert (=> b!7602110 (= lt!2654482 (matchR!9735 r1!3349 (_1!37825 lt!2654483)))))

(declare-fun lt!2654485 () Unit!167230)

(assert (=> b!7602110 (= lt!2654485 (mainMatchTheorem!4444 r1!3349 (_1!37825 lt!2654483)))))

(declare-fun pickWitness!416 (Int) tuple2!69044)

(assert (=> b!7602110 (= lt!2654483 (pickWitness!416 lambda!467779))))

(declare-fun b!7602111 () Bool)

(declare-fun tp!2216717 () Bool)

(declare-fun tp!2216716 () Bool)

(assert (=> b!7602111 (= e!4522516 (and tp!2216717 tp!2216716))))

(assert (= (and start!732920 res!3043982) b!7602107))

(assert (= (and b!7602107 res!3043984) b!7602108))

(assert (= (and b!7602108 res!3043979) b!7602099))

(assert (= (and b!7602099 res!3043980) b!7602100))

(assert (= (and b!7602100 res!3043983) b!7602110))

(assert (= (and b!7602110 (not res!3043978)) b!7602105))

(assert (= (and b!7602105 (not res!3043981)) b!7602101))

(get-info :version)

(assert (= (and start!732920 ((_ is ElementMatch!20165) r1!3349)) b!7602103))

(assert (= (and start!732920 ((_ is Concat!29010) r1!3349)) b!7602098))

(assert (= (and start!732920 ((_ is Star!20165) r1!3349)) b!7602106))

(assert (= (and start!732920 ((_ is Union!20165) r1!3349)) b!7602096))

(assert (= (and start!732920 ((_ is ElementMatch!20165) r2!3249)) b!7602102))

(assert (= (and start!732920 ((_ is Concat!29010) r2!3249)) b!7602111))

(assert (= (and start!732920 ((_ is Star!20165) r2!3249)) b!7602109))

(assert (= (and start!732920 ((_ is Union!20165) r2!3249)) b!7602104))

(assert (= (and start!732920 ((_ is Cons!72924) s!10235)) b!7602097))

(declare-fun m!8145364 () Bool)

(assert (=> start!732920 m!8145364))

(declare-fun m!8145366 () Bool)

(assert (=> b!7602108 m!8145366))

(assert (=> b!7602099 m!8145366))

(declare-fun m!8145368 () Bool)

(assert (=> b!7602100 m!8145368))

(declare-fun m!8145370 () Bool)

(assert (=> b!7602101 m!8145370))

(declare-fun m!8145372 () Bool)

(assert (=> b!7602110 m!8145372))

(declare-fun m!8145374 () Bool)

(assert (=> b!7602110 m!8145374))

(declare-fun m!8145376 () Bool)

(assert (=> b!7602110 m!8145376))

(declare-fun m!8145378 () Bool)

(assert (=> b!7602110 m!8145378))

(declare-fun m!8145380 () Bool)

(assert (=> b!7602110 m!8145380))

(declare-fun m!8145382 () Bool)

(assert (=> b!7602110 m!8145382))

(declare-fun m!8145384 () Bool)

(assert (=> b!7602110 m!8145384))

(declare-fun m!8145386 () Bool)

(assert (=> b!7602110 m!8145386))

(declare-fun m!8145388 () Bool)

(assert (=> b!7602107 m!8145388))

(check-sat (not b!7602111) tp_is_empty!50685 (not b!7602098) (not b!7602104) (not b!7602110) (not b!7602108) (not b!7602100) (not b!7602101) (not b!7602096) (not b!7602106) (not b!7602099) (not b!7602109) (not start!732920) (not b!7602107) (not b!7602097))
(check-sat)
