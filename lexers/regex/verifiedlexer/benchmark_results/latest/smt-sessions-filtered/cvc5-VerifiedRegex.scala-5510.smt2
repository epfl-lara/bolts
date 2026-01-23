; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!277996 () Bool)

(assert start!277996)

(declare-fun b!2855871 () Bool)

(assert (=> b!2855871 true))

(assert (=> b!2855871 true))

(declare-fun e!1808786 () Bool)

(assert (=> b!2855871 (= e!1808786 true)))

(declare-datatypes ((Unit!47699 0))(
  ( (Unit!47700) )
))
(declare-fun lt!1013936 () Unit!47699)

(declare-datatypes ((C!17330 0))(
  ( (C!17331 (val!10699 Int)) )
))
(declare-datatypes ((List!34171 0))(
  ( (Nil!34047) (Cons!34047 (h!39467 C!17330) (t!233202 List!34171)) )
))
(declare-fun lt!1013935 () List!34171)

(declare-fun lambda!105018 () Int)

(declare-fun ExistsThe!5 (List!34171 Int) Unit!47699)

(assert (=> b!2855871 (= lt!1013936 (ExistsThe!5 lt!1013935 lambda!105018))))

(declare-fun b!2855872 () Bool)

(declare-fun e!1808788 () Bool)

(declare-fun tp!919010 () Bool)

(declare-fun tp!919007 () Bool)

(assert (=> b!2855872 (= e!1808788 (and tp!919010 tp!919007))))

(declare-fun b!2855873 () Bool)

(declare-fun e!1808785 () Bool)

(declare-fun tp_is_empty!14885 () Bool)

(declare-fun tp!919005 () Bool)

(assert (=> b!2855873 (= e!1808785 (and tp_is_empty!14885 tp!919005))))

(declare-fun b!2855874 () Bool)

(declare-fun tp!919009 () Bool)

(assert (=> b!2855874 (= e!1808788 tp!919009)))

(declare-fun b!2855875 () Bool)

(declare-fun e!1808787 () Bool)

(assert (=> b!2855875 (= e!1808787 (not e!1808786))))

(declare-fun res!1186470 () Bool)

(assert (=> b!2855875 (=> res!1186470 e!1808786)))

(declare-fun prefix!1470 () List!34171)

(declare-fun isPrefix!2664 (List!34171 List!34171) Bool)

(assert (=> b!2855875 (= res!1186470 (not (isPrefix!2664 prefix!1470 lt!1013935)))))

(declare-datatypes ((Regex!8574 0))(
  ( (ElementMatch!8574 (c!460231 C!17330)) (Concat!13895 (regOne!17660 Regex!8574) (regTwo!17660 Regex!8574)) (EmptyExpr!8574) (Star!8574 (reg!8903 Regex!8574)) (EmptyLang!8574) (Union!8574 (regOne!17661 Regex!8574) (regTwo!17661 Regex!8574)) )
))
(declare-fun r!23423 () Regex!8574)

(declare-fun matchR!3689 (Regex!8574 List!34171) Bool)

(assert (=> b!2855875 (matchR!3689 r!23423 lt!1013935)))

(declare-fun lt!1013934 () Unit!47699)

(declare-fun lemmaGetWitnessMatches!13 (Regex!8574) Unit!47699)

(assert (=> b!2855875 (= lt!1013934 (lemmaGetWitnessMatches!13 r!23423))))

(declare-datatypes ((Option!6311 0))(
  ( (None!6310) (Some!6310 (v!34432 List!34171)) )
))
(declare-fun get!10194 (Option!6311) List!34171)

(declare-fun getLanguageWitness!242 (Regex!8574) Option!6311)

(assert (=> b!2855875 (= lt!1013935 (get!10194 (getLanguageWitness!242 r!23423)))))

(declare-fun b!2855876 () Bool)

(declare-fun res!1186467 () Bool)

(assert (=> b!2855876 (=> (not res!1186467) (not e!1808787))))

(declare-fun prefixMatch!882 (Regex!8574 List!34171) Bool)

(assert (=> b!2855876 (= res!1186467 (prefixMatch!882 r!23423 prefix!1470))))

(declare-fun b!2855877 () Bool)

(declare-fun tp!919006 () Bool)

(declare-fun tp!919008 () Bool)

(assert (=> b!2855877 (= e!1808788 (and tp!919006 tp!919008))))

(declare-fun b!2855878 () Bool)

(assert (=> b!2855878 (= e!1808788 tp_is_empty!14885)))

(declare-fun res!1186468 () Bool)

(assert (=> start!277996 (=> (not res!1186468) (not e!1808787))))

(declare-fun validRegex!3444 (Regex!8574) Bool)

(assert (=> start!277996 (= res!1186468 (validRegex!3444 r!23423))))

(assert (=> start!277996 e!1808787))

(assert (=> start!277996 e!1808788))

(assert (=> start!277996 e!1808785))

(declare-fun b!2855879 () Bool)

(declare-fun res!1186469 () Bool)

(assert (=> b!2855879 (=> (not res!1186469) (not e!1808787))))

(assert (=> b!2855879 (= res!1186469 (is-Nil!34047 prefix!1470))))

(assert (= (and start!277996 res!1186468) b!2855876))

(assert (= (and b!2855876 res!1186467) b!2855879))

(assert (= (and b!2855879 res!1186469) b!2855875))

(assert (= (and b!2855875 (not res!1186470)) b!2855871))

(assert (= (and start!277996 (is-ElementMatch!8574 r!23423)) b!2855878))

(assert (= (and start!277996 (is-Concat!13895 r!23423)) b!2855877))

(assert (= (and start!277996 (is-Star!8574 r!23423)) b!2855874))

(assert (= (and start!277996 (is-Union!8574 r!23423)) b!2855872))

(assert (= (and start!277996 (is-Cons!34047 prefix!1470)) b!2855873))

(declare-fun m!3278693 () Bool)

(assert (=> b!2855871 m!3278693))

(declare-fun m!3278695 () Bool)

(assert (=> b!2855875 m!3278695))

(declare-fun m!3278697 () Bool)

(assert (=> b!2855875 m!3278697))

(declare-fun m!3278699 () Bool)

(assert (=> b!2855875 m!3278699))

(declare-fun m!3278701 () Bool)

(assert (=> b!2855875 m!3278701))

(assert (=> b!2855875 m!3278699))

(declare-fun m!3278703 () Bool)

(assert (=> b!2855875 m!3278703))

(declare-fun m!3278705 () Bool)

(assert (=> b!2855876 m!3278705))

(declare-fun m!3278707 () Bool)

(assert (=> start!277996 m!3278707))

(push 1)

(assert (not b!2855875))

(assert tp_is_empty!14885)

(assert (not b!2855871))

(assert (not start!277996))

(assert (not b!2855872))

(assert (not b!2855876))

(assert (not b!2855873))

(assert (not b!2855874))

(assert (not b!2855877))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

