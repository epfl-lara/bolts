; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!284274 () Bool)

(assert start!284274)

(declare-fun b!2918650 () Bool)

(declare-fun e!1841479 () Bool)

(declare-fun tp_is_empty!15527 () Bool)

(declare-fun tp!936770 () Bool)

(assert (=> b!2918650 (= e!1841479 (and tp_is_empty!15527 tp!936770))))

(declare-fun b!2918651 () Bool)

(declare-fun e!1841477 () Bool)

(assert (=> b!2918651 (= e!1841477 true)))

(declare-fun lt!1025304 () Bool)

(declare-datatypes ((C!18150 0))(
  ( (C!18151 (val!11111 Int)) )
))
(declare-datatypes ((Regex!8982 0))(
  ( (ElementMatch!8982 (c!476168 C!18150)) (Concat!14303 (regOne!18476 Regex!8982) (regTwo!18476 Regex!8982)) (EmptyExpr!8982) (Star!8982 (reg!9311 Regex!8982)) (EmptyLang!8982) (Union!8982 (regOne!18477 Regex!8982) (regTwo!18477 Regex!8982)) )
))
(declare-fun r!17423 () Regex!8982)

(declare-datatypes ((List!34847 0))(
  ( (Nil!34723) (Cons!34723 (h!40143 C!18150) (t!233912 List!34847)) )
))
(declare-fun s!11993 () List!34847)

(declare-fun matchR!3864 (Regex!8982 List!34847) Bool)

(assert (=> b!2918651 (= lt!1025304 (matchR!3864 (Union!8982 (regOne!18477 r!17423) (regTwo!18477 r!17423)) s!11993))))

(declare-fun b!2918652 () Bool)

(declare-fun res!1204938 () Bool)

(assert (=> b!2918652 (=> res!1204938 e!1841477)))

(declare-fun validRegex!3715 (Regex!8982) Bool)

(assert (=> b!2918652 (= res!1204938 (not (validRegex!3715 (regTwo!18477 r!17423))))))

(declare-fun b!2918653 () Bool)

(declare-fun res!1204939 () Bool)

(assert (=> b!2918653 (=> res!1204939 e!1841477)))

(assert (=> b!2918653 (= res!1204939 (not (validRegex!3715 (regOne!18477 r!17423))))))

(declare-fun b!2918654 () Bool)

(declare-fun e!1841478 () Bool)

(declare-fun tp!936766 () Bool)

(assert (=> b!2918654 (= e!1841478 tp!936766)))

(declare-fun b!2918655 () Bool)

(declare-fun e!1841476 () Bool)

(assert (=> b!2918655 (= e!1841476 (not e!1841477))))

(declare-fun res!1204937 () Bool)

(assert (=> b!2918655 (=> res!1204937 e!1841477)))

(declare-fun lt!1025305 () Bool)

(assert (=> b!2918655 (= res!1204937 (or (not lt!1025305) (is-Concat!14303 r!17423) (not (is-Union!8982 r!17423))))))

(declare-fun matchRSpec!1119 (Regex!8982 List!34847) Bool)

(assert (=> b!2918655 (= lt!1025305 (matchRSpec!1119 r!17423 s!11993))))

(assert (=> b!2918655 (= lt!1025305 (matchR!3864 r!17423 s!11993))))

(declare-datatypes ((Unit!48303 0))(
  ( (Unit!48304) )
))
(declare-fun lt!1025306 () Unit!48303)

(declare-fun mainMatchTheorem!1119 (Regex!8982 List!34847) Unit!48303)

(assert (=> b!2918655 (= lt!1025306 (mainMatchTheorem!1119 r!17423 s!11993))))

(declare-fun b!2918657 () Bool)

(declare-fun tp!936769 () Bool)

(declare-fun tp!936768 () Bool)

(assert (=> b!2918657 (= e!1841478 (and tp!936769 tp!936768))))

(declare-fun b!2918658 () Bool)

(declare-fun tp!936771 () Bool)

(declare-fun tp!936767 () Bool)

(assert (=> b!2918658 (= e!1841478 (and tp!936771 tp!936767))))

(declare-fun b!2918656 () Bool)

(assert (=> b!2918656 (= e!1841478 tp_is_empty!15527)))

(declare-fun res!1204940 () Bool)

(assert (=> start!284274 (=> (not res!1204940) (not e!1841476))))

(assert (=> start!284274 (= res!1204940 (validRegex!3715 r!17423))))

(assert (=> start!284274 e!1841476))

(assert (=> start!284274 e!1841478))

(assert (=> start!284274 e!1841479))

(assert (= (and start!284274 res!1204940) b!2918655))

(assert (= (and b!2918655 (not res!1204937)) b!2918653))

(assert (= (and b!2918653 (not res!1204939)) b!2918652))

(assert (= (and b!2918652 (not res!1204938)) b!2918651))

(assert (= (and start!284274 (is-ElementMatch!8982 r!17423)) b!2918656))

(assert (= (and start!284274 (is-Concat!14303 r!17423)) b!2918658))

(assert (= (and start!284274 (is-Star!8982 r!17423)) b!2918654))

(assert (= (and start!284274 (is-Union!8982 r!17423)) b!2918657))

(assert (= (and start!284274 (is-Cons!34723 s!11993)) b!2918650))

(declare-fun m!3316225 () Bool)

(assert (=> b!2918653 m!3316225))

(declare-fun m!3316227 () Bool)

(assert (=> start!284274 m!3316227))

(declare-fun m!3316229 () Bool)

(assert (=> b!2918655 m!3316229))

(declare-fun m!3316231 () Bool)

(assert (=> b!2918655 m!3316231))

(declare-fun m!3316233 () Bool)

(assert (=> b!2918655 m!3316233))

(declare-fun m!3316235 () Bool)

(assert (=> b!2918652 m!3316235))

(declare-fun m!3316237 () Bool)

(assert (=> b!2918651 m!3316237))

(push 1)

(assert (not b!2918651))

(assert (not b!2918654))

(assert tp_is_empty!15527)

(assert (not b!2918650))

(assert (not start!284274))

(assert (not b!2918652))

(assert (not b!2918653))

(assert (not b!2918655))

(assert (not b!2918658))

(assert (not b!2918657))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

