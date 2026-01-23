; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666036 () Bool)

(assert start!666036)

(declare-fun b!6929898 () Bool)

(assert (=> b!6929898 true))

(assert (=> b!6929898 true))

(assert (=> b!6929898 true))

(declare-fun b!6929882 () Bool)

(declare-fun res!2826240 () Bool)

(declare-fun e!4169951 () Bool)

(assert (=> b!6929882 (=> (not res!2826240) (not e!4169951))))

(declare-datatypes ((C!34150 0))(
  ( (C!34151 (val!26777 Int)) )
))
(declare-datatypes ((Regex!16940 0))(
  ( (ElementMatch!16940 (c!1286222 C!34150)) (Concat!25785 (regOne!34392 Regex!16940) (regTwo!34392 Regex!16940)) (EmptyExpr!16940) (Star!16940 (reg!17269 Regex!16940)) (EmptyLang!16940) (Union!16940 (regOne!34393 Regex!16940) (regTwo!34393 Regex!16940)) )
))
(declare-fun r2!6280 () Regex!16940)

(declare-fun validRegex!8646 (Regex!16940) Bool)

(assert (=> b!6929882 (= res!2826240 (validRegex!8646 r2!6280))))

(declare-fun b!6929883 () Bool)

(declare-fun e!4169949 () Bool)

(declare-fun tp!1910220 () Bool)

(assert (=> b!6929883 (= e!4169949 tp!1910220)))

(declare-fun b!6929884 () Bool)

(declare-fun e!4169948 () Bool)

(declare-fun tp!1910225 () Bool)

(declare-fun tp!1910219 () Bool)

(assert (=> b!6929884 (= e!4169948 (and tp!1910225 tp!1910219))))

(declare-fun b!6929885 () Bool)

(declare-fun tp!1910212 () Bool)

(declare-fun tp!1910214 () Bool)

(assert (=> b!6929885 (= e!4169948 (and tp!1910212 tp!1910214))))

(declare-fun b!6929886 () Bool)

(declare-fun tp!1910223 () Bool)

(declare-fun tp!1910221 () Bool)

(assert (=> b!6929886 (= e!4169949 (and tp!1910223 tp!1910221))))

(declare-fun b!6929887 () Bool)

(declare-fun res!2826243 () Bool)

(assert (=> b!6929887 (=> (not res!2826243) (not e!4169951))))

(declare-fun r3!135 () Regex!16940)

(assert (=> b!6929887 (= res!2826243 (validRegex!8646 r3!135))))

(declare-fun b!6929889 () Bool)

(declare-fun e!4169950 () Bool)

(declare-fun tp!1910213 () Bool)

(assert (=> b!6929889 (= e!4169950 tp!1910213)))

(declare-fun b!6929890 () Bool)

(declare-fun tp!1910216 () Bool)

(declare-fun tp!1910226 () Bool)

(assert (=> b!6929890 (= e!4169950 (and tp!1910216 tp!1910226))))

(declare-fun b!6929891 () Bool)

(declare-fun e!4169952 () Bool)

(declare-fun tp_is_empty!43105 () Bool)

(declare-fun tp!1910222 () Bool)

(assert (=> b!6929891 (= e!4169952 (and tp_is_empty!43105 tp!1910222))))

(declare-fun b!6929892 () Bool)

(declare-fun e!4169947 () Bool)

(assert (=> b!6929892 (= e!4169951 (not e!4169947))))

(declare-fun res!2826241 () Bool)

(assert (=> b!6929892 (=> res!2826241 e!4169947)))

(declare-fun lt!2472892 () Bool)

(assert (=> b!6929892 (= res!2826241 lt!2472892)))

(declare-fun lt!2472888 () Regex!16940)

(declare-datatypes ((List!66693 0))(
  ( (Nil!66569) (Cons!66569 (h!73017 C!34150) (t!380436 List!66693)) )
))
(declare-fun s!14361 () List!66693)

(declare-fun matchR!9079 (Regex!16940 List!66693) Bool)

(declare-fun matchRSpec!3997 (Regex!16940 List!66693) Bool)

(assert (=> b!6929892 (= (matchR!9079 lt!2472888 s!14361) (matchRSpec!3997 lt!2472888 s!14361))))

(declare-datatypes ((Unit!160604 0))(
  ( (Unit!160605) )
))
(declare-fun lt!2472893 () Unit!160604)

(declare-fun mainMatchTheorem!3997 (Regex!16940 List!66693) Unit!160604)

(assert (=> b!6929892 (= lt!2472893 (mainMatchTheorem!3997 lt!2472888 s!14361))))

(declare-fun lt!2472890 () Regex!16940)

(assert (=> b!6929892 (= lt!2472892 (matchRSpec!3997 lt!2472890 s!14361))))

(assert (=> b!6929892 (= lt!2472892 (matchR!9079 lt!2472890 s!14361))))

(declare-fun lt!2472891 () Unit!160604)

(assert (=> b!6929892 (= lt!2472891 (mainMatchTheorem!3997 lt!2472890 s!14361))))

(declare-fun r1!6342 () Regex!16940)

(declare-fun lt!2472894 () Regex!16940)

(assert (=> b!6929892 (= lt!2472888 (Concat!25785 r1!6342 lt!2472894))))

(assert (=> b!6929892 (= lt!2472894 (Concat!25785 r2!6280 r3!135))))

(assert (=> b!6929892 (= lt!2472890 (Concat!25785 (Concat!25785 r1!6342 r2!6280) r3!135))))

(declare-fun b!6929893 () Bool)

(assert (=> b!6929893 (= e!4169948 tp_is_empty!43105)))

(declare-fun b!6929894 () Bool)

(declare-fun tp!1910218 () Bool)

(declare-fun tp!1910215 () Bool)

(assert (=> b!6929894 (= e!4169949 (and tp!1910218 tp!1910215))))

(declare-fun b!6929895 () Bool)

(declare-fun tp!1910227 () Bool)

(assert (=> b!6929895 (= e!4169948 tp!1910227)))

(declare-fun b!6929888 () Bool)

(declare-fun res!2826242 () Bool)

(assert (=> b!6929888 (=> res!2826242 e!4169947)))

(declare-datatypes ((tuple2!67594 0))(
  ( (tuple2!67595 (_1!37100 List!66693) (_2!37100 List!66693)) )
))
(declare-datatypes ((Option!16709 0))(
  ( (None!16708) (Some!16708 (v!52980 tuple2!67594)) )
))
(declare-fun isDefined!13410 (Option!16709) Bool)

(declare-fun findConcatSeparation!3123 (Regex!16940 Regex!16940 List!66693 List!66693 List!66693) Option!16709)

(assert (=> b!6929888 (= res!2826242 (not (isDefined!13410 (findConcatSeparation!3123 r1!6342 lt!2472894 Nil!66569 s!14361 s!14361))))))

(declare-fun res!2826239 () Bool)

(assert (=> start!666036 (=> (not res!2826239) (not e!4169951))))

(assert (=> start!666036 (= res!2826239 (validRegex!8646 r1!6342))))

(assert (=> start!666036 e!4169951))

(assert (=> start!666036 e!4169950))

(assert (=> start!666036 e!4169948))

(assert (=> start!666036 e!4169949))

(assert (=> start!666036 e!4169952))

(declare-fun b!6929896 () Bool)

(assert (=> b!6929896 (= e!4169949 tp_is_empty!43105)))

(declare-fun b!6929897 () Bool)

(assert (=> b!6929897 (= e!4169950 tp_is_empty!43105)))

(assert (=> b!6929898 (= e!4169947 true)))

(declare-fun lambda!394341 () Int)

(declare-fun Exists!3940 (Int) Bool)

(assert (=> b!6929898 (Exists!3940 lambda!394341)))

(declare-fun lt!2472889 () Unit!160604)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2881 (Regex!16940 Regex!16940 List!66693) Unit!160604)

(assert (=> b!6929898 (= lt!2472889 (lemmaFindConcatSeparationEquivalentToExists!2881 r1!6342 lt!2472894 s!14361))))

(declare-fun b!6929899 () Bool)

(declare-fun tp!1910224 () Bool)

(declare-fun tp!1910217 () Bool)

(assert (=> b!6929899 (= e!4169950 (and tp!1910224 tp!1910217))))

(assert (= (and start!666036 res!2826239) b!6929882))

(assert (= (and b!6929882 res!2826240) b!6929887))

(assert (= (and b!6929887 res!2826243) b!6929892))

(assert (= (and b!6929892 (not res!2826241)) b!6929888))

(assert (= (and b!6929888 (not res!2826242)) b!6929898))

(assert (= (and start!666036 (is-ElementMatch!16940 r1!6342)) b!6929897))

(assert (= (and start!666036 (is-Concat!25785 r1!6342)) b!6929890))

(assert (= (and start!666036 (is-Star!16940 r1!6342)) b!6929889))

(assert (= (and start!666036 (is-Union!16940 r1!6342)) b!6929899))

(assert (= (and start!666036 (is-ElementMatch!16940 r2!6280)) b!6929893))

(assert (= (and start!666036 (is-Concat!25785 r2!6280)) b!6929884))

(assert (= (and start!666036 (is-Star!16940 r2!6280)) b!6929895))

(assert (= (and start!666036 (is-Union!16940 r2!6280)) b!6929885))

(assert (= (and start!666036 (is-ElementMatch!16940 r3!135)) b!6929896))

(assert (= (and start!666036 (is-Concat!25785 r3!135)) b!6929886))

(assert (= (and start!666036 (is-Star!16940 r3!135)) b!6929883))

(assert (= (and start!666036 (is-Union!16940 r3!135)) b!6929894))

(assert (= (and start!666036 (is-Cons!66569 s!14361)) b!6929891))

(declare-fun m!7637704 () Bool)

(assert (=> b!6929892 m!7637704))

(declare-fun m!7637706 () Bool)

(assert (=> b!6929892 m!7637706))

(declare-fun m!7637708 () Bool)

(assert (=> b!6929892 m!7637708))

(declare-fun m!7637710 () Bool)

(assert (=> b!6929892 m!7637710))

(declare-fun m!7637712 () Bool)

(assert (=> b!6929892 m!7637712))

(declare-fun m!7637714 () Bool)

(assert (=> b!6929892 m!7637714))

(declare-fun m!7637716 () Bool)

(assert (=> b!6929888 m!7637716))

(assert (=> b!6929888 m!7637716))

(declare-fun m!7637718 () Bool)

(assert (=> b!6929888 m!7637718))

(declare-fun m!7637720 () Bool)

(assert (=> b!6929898 m!7637720))

(declare-fun m!7637722 () Bool)

(assert (=> b!6929898 m!7637722))

(declare-fun m!7637724 () Bool)

(assert (=> b!6929887 m!7637724))

(declare-fun m!7637726 () Bool)

(assert (=> b!6929882 m!7637726))

(declare-fun m!7637728 () Bool)

(assert (=> start!666036 m!7637728))

(push 1)

(assert (not b!6929886))

(assert (not b!6929889))

(assert (not b!6929883))

(assert (not b!6929882))

(assert (not b!6929885))

(assert (not b!6929895))

(assert (not b!6929891))

(assert (not b!6929888))

(assert (not b!6929894))

(assert (not b!6929884))

(assert (not b!6929887))

(assert (not b!6929892))

(assert (not b!6929890))

(assert (not b!6929898))

(assert tp_is_empty!43105)

(assert (not start!666036))

(assert (not b!6929899))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

