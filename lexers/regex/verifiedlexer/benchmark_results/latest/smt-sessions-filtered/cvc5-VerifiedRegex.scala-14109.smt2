; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742532 () Bool)

(assert start!742532)

(declare-fun b!7839296 () Bool)

(declare-fun e!4635192 () Bool)

(declare-datatypes ((C!42350 0))(
  ( (C!42351 (val!31615 Int)) )
))
(declare-datatypes ((Regex!21012 0))(
  ( (ElementMatch!21012 (c!1441393 C!42350)) (Concat!29857 (regOne!42536 Regex!21012) (regTwo!42536 Regex!21012)) (EmptyExpr!21012) (Star!21012 (reg!21341 Regex!21012)) (EmptyLang!21012) (Union!21012 (regOne!42537 Regex!21012) (regTwo!42537 Regex!21012)) )
))
(declare-fun r2!3226 () Regex!21012)

(declare-datatypes ((List!73849 0))(
  ( (Nil!73725) (Cons!73725 (h!80173 C!42350) (t!388584 List!73849)) )
))
(declare-fun s2!2463 () List!73849)

(declare-fun matchR!10468 (Regex!21012 List!73849) Bool)

(assert (=> b!7839296 (= e!4635192 (not (matchR!10468 r2!3226 s2!2463)))))

(declare-fun res!3117916 () Bool)

(declare-fun e!4635193 () Bool)

(assert (=> start!742532 (=> (not res!3117916) (not e!4635193))))

(declare-fun r1!3326 () Regex!21012)

(declare-fun validRegex!11426 (Regex!21012) Bool)

(assert (=> start!742532 (= res!3117916 (validRegex!11426 r1!3326))))

(assert (=> start!742532 e!4635193))

(declare-fun e!4635190 () Bool)

(assert (=> start!742532 e!4635190))

(declare-fun e!4635188 () Bool)

(assert (=> start!742532 e!4635188))

(declare-fun e!4635194 () Bool)

(assert (=> start!742532 e!4635194))

(declare-fun e!4635191 () Bool)

(assert (=> start!742532 e!4635191))

(declare-fun e!4635195 () Bool)

(assert (=> start!742532 e!4635195))

(declare-fun b!7839297 () Bool)

(declare-fun tp!2319832 () Bool)

(assert (=> b!7839297 (= e!4635188 tp!2319832)))

(declare-fun b!7839298 () Bool)

(declare-fun tp!2319824 () Bool)

(assert (=> b!7839298 (= e!4635191 tp!2319824)))

(declare-fun b!7839299 () Bool)

(declare-fun tp_is_empty!52379 () Bool)

(assert (=> b!7839299 (= e!4635191 tp_is_empty!52379)))

(declare-fun b!7839300 () Bool)

(declare-fun res!3117915 () Bool)

(assert (=> b!7839300 (=> (not res!3117915) (not e!4635193))))

(declare-fun s1!2717 () List!73849)

(declare-fun s!10212 () List!73849)

(declare-fun ++!18046 (List!73849 List!73849) List!73849)

(assert (=> b!7839300 (= res!3117915 (= (++!18046 s1!2717 s2!2463) s!10212))))

(declare-fun b!7839301 () Bool)

(declare-fun tp!2319830 () Bool)

(declare-fun tp!2319828 () Bool)

(assert (=> b!7839301 (= e!4635188 (and tp!2319830 tp!2319828))))

(declare-fun b!7839302 () Bool)

(declare-fun tp!2319822 () Bool)

(declare-fun tp!2319829 () Bool)

(assert (=> b!7839302 (= e!4635191 (and tp!2319822 tp!2319829))))

(declare-fun b!7839303 () Bool)

(declare-fun tp!2319823 () Bool)

(assert (=> b!7839303 (= e!4635194 (and tp_is_empty!52379 tp!2319823))))

(declare-fun b!7839304 () Bool)

(declare-fun res!3117912 () Bool)

(assert (=> b!7839304 (=> (not res!3117912) (not e!4635193))))

(assert (=> b!7839304 (= res!3117912 (not (is-Nil!73725 s2!2463)))))

(declare-fun b!7839305 () Bool)

(declare-fun tp!2319831 () Bool)

(declare-fun tp!2319826 () Bool)

(assert (=> b!7839305 (= e!4635191 (and tp!2319831 tp!2319826))))

(declare-fun b!7839306 () Bool)

(assert (=> b!7839306 (= e!4635188 tp_is_empty!52379)))

(declare-fun b!7839307 () Bool)

(declare-fun res!3117913 () Bool)

(assert (=> b!7839307 (=> (not res!3117913) (not e!4635193))))

(assert (=> b!7839307 (= res!3117913 (validRegex!11426 r2!3226))))

(declare-fun b!7839308 () Bool)

(declare-fun tp!2319825 () Bool)

(assert (=> b!7839308 (= e!4635190 (and tp_is_empty!52379 tp!2319825))))

(declare-fun b!7839309 () Bool)

(declare-fun e!4635189 () Bool)

(assert (=> b!7839309 (= e!4635193 (not e!4635189))))

(declare-fun res!3117917 () Bool)

(assert (=> b!7839309 (=> res!3117917 e!4635189)))

(declare-datatypes ((tuple2!70018 0))(
  ( (tuple2!70019 (_1!38312 List!73849) (_2!38312 List!73849)) )
))
(declare-datatypes ((Option!17803 0))(
  ( (None!17802) (Some!17802 (v!54937 tuple2!70018)) )
))
(declare-fun lt!2678314 () Option!17803)

(declare-fun isDefined!14403 (Option!17803) Bool)

(assert (=> b!7839309 (= res!3117917 (not (isDefined!14403 lt!2678314)))))

(declare-fun lt!2678315 () List!73849)

(declare-fun findConcatSeparation!3825 (Regex!21012 Regex!21012 List!73849 List!73849 List!73849) Option!17803)

(assert (=> b!7839309 (= lt!2678314 (findConcatSeparation!3825 r1!3326 r2!3226 lt!2678315 (t!388584 s2!2463) s!10212))))

(assert (=> b!7839309 (= (++!18046 lt!2678315 (t!388584 s2!2463)) s!10212)))

(assert (=> b!7839309 (= lt!2678315 (++!18046 s1!2717 (Cons!73725 (h!80173 s2!2463) Nil!73725)))))

(declare-datatypes ((Unit!168822 0))(
  ( (Unit!168823) )
))
(declare-fun lt!2678316 () Unit!168822)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3457 (List!73849 C!42350 List!73849 List!73849) Unit!168822)

(assert (=> b!7839309 (= lt!2678316 (lemmaMoveElementToOtherListKeepsConcatEq!3457 s1!2717 (h!80173 s2!2463) (t!388584 s2!2463) s!10212))))

(declare-fun b!7839310 () Bool)

(declare-fun tp!2319821 () Bool)

(declare-fun tp!2319820 () Bool)

(assert (=> b!7839310 (= e!4635188 (and tp!2319821 tp!2319820))))

(declare-fun b!7839311 () Bool)

(assert (=> b!7839311 (= e!4635189 true)))

(declare-fun lt!2678313 () Bool)

(declare-fun get!26424 (Option!17803) tuple2!70018)

(assert (=> b!7839311 (= lt!2678313 (matchR!10468 r1!3326 (_1!38312 (get!26424 lt!2678314))))))

(declare-fun b!7839312 () Bool)

(declare-fun tp!2319827 () Bool)

(assert (=> b!7839312 (= e!4635195 (and tp_is_empty!52379 tp!2319827))))

(declare-fun b!7839313 () Bool)

(declare-fun res!3117914 () Bool)

(assert (=> b!7839313 (=> (not res!3117914) (not e!4635193))))

(assert (=> b!7839313 (= res!3117914 e!4635192)))

(declare-fun res!3117911 () Bool)

(assert (=> b!7839313 (=> res!3117911 e!4635192)))

(assert (=> b!7839313 (= res!3117911 (not (matchR!10468 r1!3326 s1!2717)))))

(assert (= (and start!742532 res!3117916) b!7839307))

(assert (= (and b!7839307 res!3117913) b!7839300))

(assert (= (and b!7839300 res!3117915) b!7839313))

(assert (= (and b!7839313 (not res!3117911)) b!7839296))

(assert (= (and b!7839313 res!3117914) b!7839304))

(assert (= (and b!7839304 res!3117912) b!7839309))

(assert (= (and b!7839309 (not res!3117917)) b!7839311))

(assert (= (and start!742532 (is-Cons!73725 s1!2717)) b!7839308))

(assert (= (and start!742532 (is-ElementMatch!21012 r1!3326)) b!7839306))

(assert (= (and start!742532 (is-Concat!29857 r1!3326)) b!7839301))

(assert (= (and start!742532 (is-Star!21012 r1!3326)) b!7839297))

(assert (= (and start!742532 (is-Union!21012 r1!3326)) b!7839310))

(assert (= (and start!742532 (is-Cons!73725 s!10212)) b!7839303))

(assert (= (and start!742532 (is-ElementMatch!21012 r2!3226)) b!7839299))

(assert (= (and start!742532 (is-Concat!29857 r2!3226)) b!7839305))

(assert (= (and start!742532 (is-Star!21012 r2!3226)) b!7839298))

(assert (= (and start!742532 (is-Union!21012 r2!3226)) b!7839302))

(assert (= (and start!742532 (is-Cons!73725 s2!2463)) b!7839312))

(declare-fun m!8252874 () Bool)

(assert (=> b!7839311 m!8252874))

(declare-fun m!8252876 () Bool)

(assert (=> b!7839311 m!8252876))

(declare-fun m!8252878 () Bool)

(assert (=> start!742532 m!8252878))

(declare-fun m!8252880 () Bool)

(assert (=> b!7839307 m!8252880))

(declare-fun m!8252882 () Bool)

(assert (=> b!7839300 m!8252882))

(declare-fun m!8252884 () Bool)

(assert (=> b!7839296 m!8252884))

(declare-fun m!8252886 () Bool)

(assert (=> b!7839309 m!8252886))

(declare-fun m!8252888 () Bool)

(assert (=> b!7839309 m!8252888))

(declare-fun m!8252890 () Bool)

(assert (=> b!7839309 m!8252890))

(declare-fun m!8252892 () Bool)

(assert (=> b!7839309 m!8252892))

(declare-fun m!8252894 () Bool)

(assert (=> b!7839309 m!8252894))

(declare-fun m!8252896 () Bool)

(assert (=> b!7839313 m!8252896))

(push 1)

(assert (not b!7839300))

(assert (not b!7839305))

(assert (not b!7839309))

(assert (not b!7839311))

(assert (not b!7839298))

(assert (not b!7839307))

(assert (not start!742532))

(assert (not b!7839313))

(assert (not b!7839302))

(assert (not b!7839297))

(assert (not b!7839303))

(assert (not b!7839310))

(assert (not b!7839296))

(assert (not b!7839312))

(assert (not b!7839301))

(assert tp_is_empty!52379)

(assert (not b!7839308))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

