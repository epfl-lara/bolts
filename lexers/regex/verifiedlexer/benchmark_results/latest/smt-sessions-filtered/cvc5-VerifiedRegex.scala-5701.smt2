; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283738 () Bool)

(assert start!283738)

(declare-fun b!2911642 () Bool)

(assert (=> b!2911642 true))

(assert (=> b!2911642 true))

(declare-fun b!2911638 () Bool)

(declare-fun e!1837796 () Bool)

(declare-fun tp!935467 () Bool)

(assert (=> b!2911638 (= e!1837796 tp!935467)))

(declare-fun b!2911639 () Bool)

(declare-fun e!1837794 () Bool)

(declare-fun tp_is_empty!15467 () Bool)

(declare-fun tp!935466 () Bool)

(assert (=> b!2911639 (= e!1837794 (and tp_is_empty!15467 tp!935466))))

(declare-fun res!1201833 () Bool)

(declare-fun e!1837795 () Bool)

(assert (=> start!283738 (=> (not res!1201833) (not e!1837795))))

(declare-datatypes ((C!18090 0))(
  ( (C!18091 (val!11081 Int)) )
))
(declare-datatypes ((Regex!8952 0))(
  ( (ElementMatch!8952 (c!474820 C!18090)) (Concat!14273 (regOne!18416 Regex!8952) (regTwo!18416 Regex!8952)) (EmptyExpr!8952) (Star!8952 (reg!9281 Regex!8952)) (EmptyLang!8952) (Union!8952 (regOne!18417 Regex!8952) (regTwo!18417 Regex!8952)) )
))
(declare-fun r!17423 () Regex!8952)

(declare-fun validRegex!3685 (Regex!8952) Bool)

(assert (=> start!283738 (= res!1201833 (validRegex!3685 r!17423))))

(assert (=> start!283738 e!1837795))

(assert (=> start!283738 e!1837796))

(assert (=> start!283738 e!1837794))

(declare-fun b!2911640 () Bool)

(declare-fun tp!935469 () Bool)

(declare-fun tp!935471 () Bool)

(assert (=> b!2911640 (= e!1837796 (and tp!935469 tp!935471))))

(declare-fun b!2911641 () Bool)

(declare-fun res!1201831 () Bool)

(declare-fun e!1837797 () Bool)

(assert (=> b!2911641 (=> res!1201831 e!1837797)))

(declare-datatypes ((List!34817 0))(
  ( (Nil!34693) (Cons!34693 (h!40113 C!18090) (t!233882 List!34817)) )
))
(declare-fun s!11993 () List!34817)

(declare-fun isEmpty!18933 (List!34817) Bool)

(assert (=> b!2911641 (= res!1201831 (isEmpty!18933 s!11993))))

(assert (=> b!2911642 (= e!1837797 true)))

(declare-fun lambda!108079 () Int)

(declare-datatypes ((tuple2!33642 0))(
  ( (tuple2!33643 (_1!19953 List!34817) (_2!19953 List!34817)) )
))
(declare-datatypes ((Option!6553 0))(
  ( (None!6552) (Some!6552 (v!34686 tuple2!33642)) )
))
(declare-fun isDefined!5104 (Option!6553) Bool)

(declare-fun findConcatSeparation!947 (Regex!8952 Regex!8952 List!34817 List!34817 List!34817) Option!6553)

(declare-fun Exists!1332 (Int) Bool)

(assert (=> b!2911642 (= (isDefined!5104 (findConcatSeparation!947 (regOne!18416 r!17423) (regTwo!18416 r!17423) Nil!34693 s!11993 s!11993)) (Exists!1332 lambda!108079))))

(declare-datatypes ((Unit!48243 0))(
  ( (Unit!48244) )
))
(declare-fun lt!1023920 () Unit!48243)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!729 (Regex!8952 Regex!8952 List!34817) Unit!48243)

(assert (=> b!2911642 (= lt!1023920 (lemmaFindConcatSeparationEquivalentToExists!729 (regOne!18416 r!17423) (regTwo!18416 r!17423) s!11993))))

(declare-fun b!2911643 () Bool)

(declare-fun tp!935468 () Bool)

(declare-fun tp!935470 () Bool)

(assert (=> b!2911643 (= e!1837796 (and tp!935468 tp!935470))))

(declare-fun b!2911644 () Bool)

(assert (=> b!2911644 (= e!1837796 tp_is_empty!15467)))

(declare-fun b!2911645 () Bool)

(assert (=> b!2911645 (= e!1837795 (not e!1837797))))

(declare-fun res!1201832 () Bool)

(assert (=> b!2911645 (=> res!1201832 e!1837797)))

(declare-fun lt!1023919 () Bool)

(assert (=> b!2911645 (= res!1201832 (or (not lt!1023919) (not (is-Concat!14273 r!17423))))))

(declare-fun matchRSpec!1089 (Regex!8952 List!34817) Bool)

(assert (=> b!2911645 (= lt!1023919 (matchRSpec!1089 r!17423 s!11993))))

(declare-fun matchR!3834 (Regex!8952 List!34817) Bool)

(assert (=> b!2911645 (= lt!1023919 (matchR!3834 r!17423 s!11993))))

(declare-fun lt!1023918 () Unit!48243)

(declare-fun mainMatchTheorem!1089 (Regex!8952 List!34817) Unit!48243)

(assert (=> b!2911645 (= lt!1023918 (mainMatchTheorem!1089 r!17423 s!11993))))

(assert (= (and start!283738 res!1201833) b!2911645))

(assert (= (and b!2911645 (not res!1201832)) b!2911641))

(assert (= (and b!2911641 (not res!1201831)) b!2911642))

(assert (= (and start!283738 (is-ElementMatch!8952 r!17423)) b!2911644))

(assert (= (and start!283738 (is-Concat!14273 r!17423)) b!2911643))

(assert (= (and start!283738 (is-Star!8952 r!17423)) b!2911638))

(assert (= (and start!283738 (is-Union!8952 r!17423)) b!2911640))

(assert (= (and start!283738 (is-Cons!34693 s!11993)) b!2911639))

(declare-fun m!3312733 () Bool)

(assert (=> start!283738 m!3312733))

(declare-fun m!3312735 () Bool)

(assert (=> b!2911641 m!3312735))

(declare-fun m!3312737 () Bool)

(assert (=> b!2911642 m!3312737))

(assert (=> b!2911642 m!3312737))

(declare-fun m!3312739 () Bool)

(assert (=> b!2911642 m!3312739))

(declare-fun m!3312741 () Bool)

(assert (=> b!2911642 m!3312741))

(declare-fun m!3312743 () Bool)

(assert (=> b!2911642 m!3312743))

(declare-fun m!3312745 () Bool)

(assert (=> b!2911645 m!3312745))

(declare-fun m!3312747 () Bool)

(assert (=> b!2911645 m!3312747))

(declare-fun m!3312749 () Bool)

(assert (=> b!2911645 m!3312749))

(push 1)

(assert (not start!283738))

(assert (not b!2911641))

(assert tp_is_empty!15467)

(assert (not b!2911639))

(assert (not b!2911643))

(assert (not b!2911638))

(assert (not b!2911640))

(assert (not b!2911645))

(assert (not b!2911642))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

