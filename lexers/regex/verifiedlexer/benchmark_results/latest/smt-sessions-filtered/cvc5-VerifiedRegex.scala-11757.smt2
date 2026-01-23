; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663832 () Bool)

(assert start!663832)

(declare-fun b!6880733 () Bool)

(assert (=> b!6880733 true))

(assert (=> b!6880733 true))

(assert (=> b!6880733 true))

(declare-fun lambda!389450 () Int)

(declare-fun lambda!389449 () Int)

(assert (=> b!6880733 (not (= lambda!389450 lambda!389449))))

(assert (=> b!6880733 true))

(assert (=> b!6880733 true))

(assert (=> b!6880733 true))

(declare-fun b!6880728 () Bool)

(declare-fun e!4146513 () Bool)

(declare-fun tp!1892175 () Bool)

(declare-fun tp!1892169 () Bool)

(assert (=> b!6880728 (= e!4146513 (and tp!1892175 tp!1892169))))

(declare-fun b!6880729 () Bool)

(declare-fun e!4146511 () Bool)

(declare-fun tp!1892180 () Bool)

(assert (=> b!6880729 (= e!4146511 tp!1892180)))

(declare-fun b!6880730 () Bool)

(declare-fun tp_is_empty!42745 () Bool)

(assert (=> b!6880730 (= e!4146511 tp_is_empty!42745)))

(declare-fun b!6880731 () Bool)

(declare-fun e!4146510 () Bool)

(declare-fun tp!1892177 () Bool)

(declare-fun tp!1892172 () Bool)

(assert (=> b!6880731 (= e!4146510 (and tp!1892177 tp!1892172))))

(declare-fun b!6880732 () Bool)

(declare-fun e!4146512 () Bool)

(declare-fun e!4146514 () Bool)

(assert (=> b!6880732 (= e!4146512 (not e!4146514))))

(declare-fun res!2804891 () Bool)

(assert (=> b!6880732 (=> res!2804891 e!4146514)))

(declare-fun lt!2459647 () Bool)

(assert (=> b!6880732 (= res!2804891 (not lt!2459647))))

(declare-datatypes ((C!33790 0))(
  ( (C!33791 (val!26597 Int)) )
))
(declare-datatypes ((Regex!16760 0))(
  ( (ElementMatch!16760 (c!1280070 C!33790)) (Concat!25605 (regOne!34032 Regex!16760) (regTwo!34032 Regex!16760)) (EmptyExpr!16760) (Star!16760 (reg!17089 Regex!16760)) (EmptyLang!16760) (Union!16760 (regOne!34033 Regex!16760) (regTwo!34033 Regex!16760)) )
))
(declare-fun lt!2459650 () Regex!16760)

(declare-datatypes ((List!66517 0))(
  ( (Nil!66393) (Cons!66393 (h!72841 C!33790) (t!380260 List!66517)) )
))
(declare-fun s!14361 () List!66517)

(declare-fun matchR!8905 (Regex!16760 List!66517) Bool)

(declare-fun matchRSpec!3823 (Regex!16760 List!66517) Bool)

(assert (=> b!6880732 (= (matchR!8905 lt!2459650 s!14361) (matchRSpec!3823 lt!2459650 s!14361))))

(declare-datatypes ((Unit!160240 0))(
  ( (Unit!160241) )
))
(declare-fun lt!2459651 () Unit!160240)

(declare-fun mainMatchTheorem!3823 (Regex!16760 List!66517) Unit!160240)

(assert (=> b!6880732 (= lt!2459651 (mainMatchTheorem!3823 lt!2459650 s!14361))))

(declare-fun lt!2459646 () Regex!16760)

(assert (=> b!6880732 (= lt!2459647 (matchRSpec!3823 lt!2459646 s!14361))))

(assert (=> b!6880732 (= lt!2459647 (matchR!8905 lt!2459646 s!14361))))

(declare-fun lt!2459652 () Unit!160240)

(assert (=> b!6880732 (= lt!2459652 (mainMatchTheorem!3823 lt!2459646 s!14361))))

(declare-fun r1!6342 () Regex!16760)

(declare-fun r3!135 () Regex!16760)

(declare-fun r2!6280 () Regex!16760)

(assert (=> b!6880732 (= lt!2459650 (Concat!25605 r1!6342 (Concat!25605 r2!6280 r3!135)))))

(declare-fun lt!2459648 () Regex!16760)

(assert (=> b!6880732 (= lt!2459646 (Concat!25605 lt!2459648 r3!135))))

(assert (=> b!6880732 (= lt!2459648 (Concat!25605 r1!6342 r2!6280))))

(declare-fun res!2804892 () Bool)

(assert (=> start!663832 (=> (not res!2804892) (not e!4146512))))

(declare-fun validRegex!8468 (Regex!16760) Bool)

(assert (=> start!663832 (= res!2804892 (validRegex!8468 r1!6342))))

(assert (=> start!663832 e!4146512))

(assert (=> start!663832 e!4146513))

(assert (=> start!663832 e!4146511))

(assert (=> start!663832 e!4146510))

(declare-fun e!4146509 () Bool)

(assert (=> start!663832 e!4146509))

(assert (=> b!6880733 (= e!4146514 true)))

(declare-fun Exists!3772 (Int) Bool)

(assert (=> b!6880733 (= (Exists!3772 lambda!389449) (Exists!3772 lambda!389450))))

(declare-fun lt!2459653 () Unit!160240)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2251 (Regex!16760 Regex!16760 List!66517) Unit!160240)

(assert (=> b!6880733 (= lt!2459653 (lemmaExistCutMatchRandMatchRSpecEquivalent!2251 lt!2459648 r3!135 s!14361))))

(declare-datatypes ((tuple2!67266 0))(
  ( (tuple2!67267 (_1!36936 List!66517) (_2!36936 List!66517)) )
))
(declare-datatypes ((Option!16545 0))(
  ( (None!16544) (Some!16544 (v!52816 tuple2!67266)) )
))
(declare-fun isDefined!13248 (Option!16545) Bool)

(declare-fun findConcatSeparation!2959 (Regex!16760 Regex!16760 List!66517 List!66517 List!66517) Option!16545)

(assert (=> b!6880733 (= (isDefined!13248 (findConcatSeparation!2959 lt!2459648 r3!135 Nil!66393 s!14361 s!14361)) (Exists!3772 lambda!389449))))

(declare-fun lt!2459649 () Unit!160240)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2723 (Regex!16760 Regex!16760 List!66517) Unit!160240)

(assert (=> b!6880733 (= lt!2459649 (lemmaFindConcatSeparationEquivalentToExists!2723 lt!2459648 r3!135 s!14361))))

(declare-fun b!6880734 () Bool)

(declare-fun tp!1892179 () Bool)

(declare-fun tp!1892173 () Bool)

(assert (=> b!6880734 (= e!4146513 (and tp!1892179 tp!1892173))))

(declare-fun b!6880735 () Bool)

(assert (=> b!6880735 (= e!4146513 tp_is_empty!42745)))

(declare-fun b!6880736 () Bool)

(declare-fun tp!1892183 () Bool)

(assert (=> b!6880736 (= e!4146509 (and tp_is_empty!42745 tp!1892183))))

(declare-fun b!6880737 () Bool)

(declare-fun res!2804894 () Bool)

(assert (=> b!6880737 (=> (not res!2804894) (not e!4146512))))

(assert (=> b!6880737 (= res!2804894 (validRegex!8468 r2!6280))))

(declare-fun b!6880738 () Bool)

(declare-fun tp!1892171 () Bool)

(assert (=> b!6880738 (= e!4146513 tp!1892171)))

(declare-fun b!6880739 () Bool)

(declare-fun tp!1892168 () Bool)

(declare-fun tp!1892178 () Bool)

(assert (=> b!6880739 (= e!4146510 (and tp!1892168 tp!1892178))))

(declare-fun b!6880740 () Bool)

(declare-fun tp!1892170 () Bool)

(assert (=> b!6880740 (= e!4146510 tp!1892170)))

(declare-fun b!6880741 () Bool)

(declare-fun tp!1892176 () Bool)

(declare-fun tp!1892181 () Bool)

(assert (=> b!6880741 (= e!4146511 (and tp!1892176 tp!1892181))))

(declare-fun b!6880742 () Bool)

(declare-fun tp!1892182 () Bool)

(declare-fun tp!1892174 () Bool)

(assert (=> b!6880742 (= e!4146511 (and tp!1892182 tp!1892174))))

(declare-fun b!6880743 () Bool)

(assert (=> b!6880743 (= e!4146510 tp_is_empty!42745)))

(declare-fun b!6880744 () Bool)

(declare-fun res!2804893 () Bool)

(assert (=> b!6880744 (=> (not res!2804893) (not e!4146512))))

(assert (=> b!6880744 (= res!2804893 (validRegex!8468 r3!135))))

(assert (= (and start!663832 res!2804892) b!6880737))

(assert (= (and b!6880737 res!2804894) b!6880744))

(assert (= (and b!6880744 res!2804893) b!6880732))

(assert (= (and b!6880732 (not res!2804891)) b!6880733))

(assert (= (and start!663832 (is-ElementMatch!16760 r1!6342)) b!6880735))

(assert (= (and start!663832 (is-Concat!25605 r1!6342)) b!6880734))

(assert (= (and start!663832 (is-Star!16760 r1!6342)) b!6880738))

(assert (= (and start!663832 (is-Union!16760 r1!6342)) b!6880728))

(assert (= (and start!663832 (is-ElementMatch!16760 r2!6280)) b!6880730))

(assert (= (and start!663832 (is-Concat!25605 r2!6280)) b!6880741))

(assert (= (and start!663832 (is-Star!16760 r2!6280)) b!6880729))

(assert (= (and start!663832 (is-Union!16760 r2!6280)) b!6880742))

(assert (= (and start!663832 (is-ElementMatch!16760 r3!135)) b!6880743))

(assert (= (and start!663832 (is-Concat!25605 r3!135)) b!6880731))

(assert (= (and start!663832 (is-Star!16760 r3!135)) b!6880740))

(assert (= (and start!663832 (is-Union!16760 r3!135)) b!6880739))

(assert (= (and start!663832 (is-Cons!66393 s!14361)) b!6880736))

(declare-fun m!7606200 () Bool)

(assert (=> start!663832 m!7606200))

(declare-fun m!7606202 () Bool)

(assert (=> b!6880733 m!7606202))

(declare-fun m!7606204 () Bool)

(assert (=> b!6880733 m!7606204))

(declare-fun m!7606206 () Bool)

(assert (=> b!6880733 m!7606206))

(assert (=> b!6880733 m!7606206))

(declare-fun m!7606208 () Bool)

(assert (=> b!6880733 m!7606208))

(declare-fun m!7606210 () Bool)

(assert (=> b!6880733 m!7606210))

(assert (=> b!6880733 m!7606210))

(declare-fun m!7606212 () Bool)

(assert (=> b!6880733 m!7606212))

(declare-fun m!7606214 () Bool)

(assert (=> b!6880732 m!7606214))

(declare-fun m!7606216 () Bool)

(assert (=> b!6880732 m!7606216))

(declare-fun m!7606218 () Bool)

(assert (=> b!6880732 m!7606218))

(declare-fun m!7606220 () Bool)

(assert (=> b!6880732 m!7606220))

(declare-fun m!7606222 () Bool)

(assert (=> b!6880732 m!7606222))

(declare-fun m!7606224 () Bool)

(assert (=> b!6880732 m!7606224))

(declare-fun m!7606226 () Bool)

(assert (=> b!6880737 m!7606226))

(declare-fun m!7606228 () Bool)

(assert (=> b!6880744 m!7606228))

(push 1)

(assert (not b!6880729))

(assert (not b!6880731))

(assert (not b!6880742))

(assert (not b!6880733))

(assert (not b!6880744))

(assert (not b!6880738))

(assert (not b!6880732))

(assert (not b!6880741))

(assert (not b!6880734))

(assert (not b!6880736))

(assert (not start!663832))

(assert tp_is_empty!42745)

(assert (not b!6880739))

(assert (not b!6880728))

(assert (not b!6880740))

(assert (not b!6880737))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

