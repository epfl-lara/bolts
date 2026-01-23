; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!278072 () Bool)

(assert start!278072)

(declare-fun b!2856831 () Bool)

(assert (=> b!2856831 true))

(assert (=> b!2856831 true))

(declare-fun bs!520283 () Bool)

(declare-fun b!2856826 () Bool)

(assert (= bs!520283 (and b!2856826 b!2856831)))

(declare-datatypes ((C!17362 0))(
  ( (C!17363 (val!10715 Int)) )
))
(declare-datatypes ((List!34187 0))(
  ( (Nil!34063) (Cons!34063 (h!39483 C!17362) (t!233218 List!34187)) )
))
(declare-fun prefix!1470 () List!34187)

(declare-datatypes ((Regex!8590 0))(
  ( (ElementMatch!8590 (c!460351 C!17362)) (Concat!13911 (regOne!17692 Regex!8590) (regTwo!17692 Regex!8590)) (EmptyExpr!8590) (Star!8590 (reg!8919 Regex!8590)) (EmptyLang!8590) (Union!8590 (regOne!17693 Regex!8590) (regTwo!17693 Regex!8590)) )
))
(declare-fun r!23423 () Regex!8590)

(declare-fun lt!1014104 () Regex!8590)

(declare-fun lambda!105087 () Int)

(declare-fun lambda!105086 () Int)

(assert (=> bs!520283 (= (and (= r!23423 lt!1014104) (= prefix!1470 (t!233218 prefix!1470))) (= lambda!105087 lambda!105086))))

(assert (=> b!2856826 true))

(assert (=> b!2856826 true))

(declare-fun b!2856821 () Bool)

(declare-fun res!1186786 () Bool)

(declare-fun e!1809245 () Bool)

(assert (=> b!2856821 (=> (not res!1186786) (not e!1809245))))

(assert (=> b!2856821 (= res!1186786 (not (is-Nil!34063 prefix!1470)))))

(declare-fun b!2856822 () Bool)

(declare-fun e!1809246 () Bool)

(declare-fun tp_is_empty!14917 () Bool)

(declare-fun tp!919448 () Bool)

(assert (=> b!2856822 (= e!1809246 (and tp_is_empty!14917 tp!919448))))

(declare-fun res!1186787 () Bool)

(assert (=> start!278072 (=> (not res!1186787) (not e!1809245))))

(declare-fun validRegex!3460 (Regex!8590) Bool)

(assert (=> start!278072 (= res!1186787 (validRegex!3460 r!23423))))

(assert (=> start!278072 e!1809245))

(declare-fun e!1809248 () Bool)

(assert (=> start!278072 e!1809248))

(assert (=> start!278072 e!1809246))

(declare-fun b!2856823 () Bool)

(assert (=> b!2856823 (= e!1809248 tp_is_empty!14917)))

(declare-fun b!2856824 () Bool)

(declare-fun res!1186782 () Bool)

(declare-fun e!1809247 () Bool)

(assert (=> b!2856824 (=> res!1186782 e!1809247)))

(declare-fun lt!1014101 () List!34187)

(declare-fun isPrefix!2671 (List!34187 List!34187) Bool)

(assert (=> b!2856824 (= res!1186782 (not (isPrefix!2671 prefix!1470 lt!1014101)))))

(declare-fun b!2856825 () Bool)

(declare-fun res!1186785 () Bool)

(assert (=> b!2856825 (=> (not res!1186785) (not e!1809245))))

(declare-fun prefixMatch!898 (Regex!8590 List!34187) Bool)

(assert (=> b!2856825 (= res!1186785 (prefixMatch!898 r!23423 prefix!1470))))

(assert (=> b!2856826 (= e!1809247 true)))

(declare-datatypes ((Unit!47723 0))(
  ( (Unit!47724) )
))
(declare-fun lt!1014100 () Unit!47723)

(declare-fun ExistsThe!7 (List!34187 Int) Unit!47723)

(assert (=> b!2856826 (= lt!1014100 (ExistsThe!7 lt!1014101 lambda!105087))))

(declare-fun b!2856827 () Bool)

(declare-fun res!1186783 () Bool)

(declare-fun e!1809249 () Bool)

(assert (=> b!2856827 (=> res!1186783 e!1809249)))

(declare-fun lt!1014103 () List!34187)

(assert (=> b!2856827 (= res!1186783 (not (isPrefix!2671 (t!233218 prefix!1470) lt!1014103)))))

(declare-fun b!2856828 () Bool)

(assert (=> b!2856828 (= e!1809249 e!1809247)))

(declare-fun res!1186781 () Bool)

(assert (=> b!2856828 (=> res!1186781 e!1809247)))

(declare-fun matchR!3696 (Regex!8590 List!34187) Bool)

(assert (=> b!2856828 (= res!1186781 (not (matchR!3696 r!23423 lt!1014101)))))

(declare-fun $colon$colon!592 (List!34187 C!17362) List!34187)

(assert (=> b!2856828 (= lt!1014101 ($colon$colon!592 lt!1014103 (h!39483 prefix!1470)))))

(declare-fun b!2856829 () Bool)

(declare-fun tp!919446 () Bool)

(assert (=> b!2856829 (= e!1809248 tp!919446)))

(declare-fun b!2856830 () Bool)

(declare-fun tp!919450 () Bool)

(declare-fun tp!919447 () Bool)

(assert (=> b!2856830 (= e!1809248 (and tp!919450 tp!919447))))

(assert (=> b!2856831 (= e!1809245 (not e!1809249))))

(declare-fun res!1186784 () Bool)

(assert (=> b!2856831 (=> res!1186784 e!1809249)))

(assert (=> b!2856831 (= res!1186784 (not (matchR!3696 lt!1014104 lt!1014103)))))

(declare-fun pickWitness!309 (Int) List!34187)

(assert (=> b!2856831 (= lt!1014103 (pickWitness!309 lambda!105086))))

(declare-fun Exists!1296 (Int) Bool)

(assert (=> b!2856831 (Exists!1296 lambda!105086)))

(assert (=> b!2856831 (Exists!1296 lambda!105086)))

(declare-fun lt!1014102 () Unit!47723)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!344 (Regex!8590 List!34187) Unit!47723)

(assert (=> b!2856831 (= lt!1014102 (lemmaPrefixMatchThenExistsStringThatMatches!344 lt!1014104 (t!233218 prefix!1470)))))

(declare-fun derivativeStep!2279 (Regex!8590 C!17362) Regex!8590)

(assert (=> b!2856831 (= lt!1014104 (derivativeStep!2279 r!23423 (h!39483 prefix!1470)))))

(declare-fun b!2856832 () Bool)

(declare-fun tp!919445 () Bool)

(declare-fun tp!919449 () Bool)

(assert (=> b!2856832 (= e!1809248 (and tp!919445 tp!919449))))

(assert (= (and start!278072 res!1186787) b!2856825))

(assert (= (and b!2856825 res!1186785) b!2856821))

(assert (= (and b!2856821 res!1186786) b!2856831))

(assert (= (and b!2856831 (not res!1186784)) b!2856827))

(assert (= (and b!2856827 (not res!1186783)) b!2856828))

(assert (= (and b!2856828 (not res!1186781)) b!2856824))

(assert (= (and b!2856824 (not res!1186782)) b!2856826))

(assert (= (and start!278072 (is-ElementMatch!8590 r!23423)) b!2856823))

(assert (= (and start!278072 (is-Concat!13911 r!23423)) b!2856832))

(assert (= (and start!278072 (is-Star!8590 r!23423)) b!2856829))

(assert (= (and start!278072 (is-Union!8590 r!23423)) b!2856830))

(assert (= (and start!278072 (is-Cons!34063 prefix!1470)) b!2856822))

(declare-fun m!3279069 () Bool)

(assert (=> b!2856831 m!3279069))

(declare-fun m!3279071 () Bool)

(assert (=> b!2856831 m!3279071))

(assert (=> b!2856831 m!3279069))

(declare-fun m!3279073 () Bool)

(assert (=> b!2856831 m!3279073))

(declare-fun m!3279075 () Bool)

(assert (=> b!2856831 m!3279075))

(declare-fun m!3279077 () Bool)

(assert (=> b!2856831 m!3279077))

(declare-fun m!3279079 () Bool)

(assert (=> b!2856824 m!3279079))

(declare-fun m!3279081 () Bool)

(assert (=> b!2856826 m!3279081))

(declare-fun m!3279083 () Bool)

(assert (=> b!2856827 m!3279083))

(declare-fun m!3279085 () Bool)

(assert (=> b!2856828 m!3279085))

(declare-fun m!3279087 () Bool)

(assert (=> b!2856828 m!3279087))

(declare-fun m!3279089 () Bool)

(assert (=> b!2856825 m!3279089))

(declare-fun m!3279091 () Bool)

(assert (=> start!278072 m!3279091))

(push 1)

(assert (not b!2856824))

(assert (not b!2856831))

(assert (not b!2856822))

(assert (not b!2856829))

(assert (not b!2856827))

(assert (not start!278072))

(assert (not b!2856825))

(assert (not b!2856830))

(assert (not b!2856828))

(assert tp_is_empty!14917)

(assert (not b!2856832))

(assert (not b!2856826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

