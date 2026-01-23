; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663964 () Bool)

(assert start!663964)

(declare-fun b!6883010 () Bool)

(assert (=> b!6883010 true))

(assert (=> b!6883010 true))

(assert (=> b!6883010 true))

(declare-fun lambda!389620 () Int)

(declare-fun lambda!389619 () Int)

(assert (=> b!6883010 (not (= lambda!389620 lambda!389619))))

(assert (=> b!6883010 true))

(assert (=> b!6883010 true))

(assert (=> b!6883010 true))

(declare-fun b!6882994 () Bool)

(declare-fun e!4147595 () Bool)

(declare-fun tp!1893091 () Bool)

(declare-fun tp!1893081 () Bool)

(assert (=> b!6882994 (= e!4147595 (and tp!1893091 tp!1893081))))

(declare-fun b!6882995 () Bool)

(declare-fun e!4147594 () Bool)

(declare-fun e!4147596 () Bool)

(assert (=> b!6882995 (= e!4147594 (not e!4147596))))

(declare-fun res!2805782 () Bool)

(assert (=> b!6882995 (=> res!2805782 e!4147596)))

(declare-fun lt!2460018 () Bool)

(assert (=> b!6882995 (= res!2805782 (not lt!2460018))))

(declare-datatypes ((C!33806 0))(
  ( (C!33807 (val!26605 Int)) )
))
(declare-datatypes ((Regex!16768 0))(
  ( (ElementMatch!16768 (c!1280370 C!33806)) (Concat!25613 (regOne!34048 Regex!16768) (regTwo!34048 Regex!16768)) (EmptyExpr!16768) (Star!16768 (reg!17097 Regex!16768)) (EmptyLang!16768) (Union!16768 (regOne!34049 Regex!16768) (regTwo!34049 Regex!16768)) )
))
(declare-fun lt!2460019 () Regex!16768)

(declare-datatypes ((List!66525 0))(
  ( (Nil!66401) (Cons!66401 (h!72849 C!33806) (t!380268 List!66525)) )
))
(declare-fun s!14361 () List!66525)

(declare-fun matchR!8913 (Regex!16768 List!66525) Bool)

(declare-fun matchRSpec!3831 (Regex!16768 List!66525) Bool)

(assert (=> b!6882995 (= (matchR!8913 lt!2460019 s!14361) (matchRSpec!3831 lt!2460019 s!14361))))

(declare-datatypes ((Unit!160256 0))(
  ( (Unit!160257) )
))
(declare-fun lt!2460017 () Unit!160256)

(declare-fun mainMatchTheorem!3831 (Regex!16768 List!66525) Unit!160256)

(assert (=> b!6882995 (= lt!2460017 (mainMatchTheorem!3831 lt!2460019 s!14361))))

(declare-fun lt!2460016 () Regex!16768)

(assert (=> b!6882995 (= lt!2460018 (matchRSpec!3831 lt!2460016 s!14361))))

(assert (=> b!6882995 (= lt!2460018 (matchR!8913 lt!2460016 s!14361))))

(declare-fun lt!2460020 () Unit!160256)

(assert (=> b!6882995 (= lt!2460020 (mainMatchTheorem!3831 lt!2460016 s!14361))))

(declare-fun r1!6342 () Regex!16768)

(declare-fun r3!135 () Regex!16768)

(declare-fun r2!6280 () Regex!16768)

(assert (=> b!6882995 (= lt!2460019 (Concat!25613 r1!6342 (Concat!25613 r2!6280 r3!135)))))

(declare-fun lt!2460026 () Regex!16768)

(assert (=> b!6882995 (= lt!2460016 (Concat!25613 lt!2460026 r3!135))))

(assert (=> b!6882995 (= lt!2460026 (Concat!25613 r1!6342 r2!6280))))

(declare-fun b!6882996 () Bool)

(declare-fun e!4147591 () Bool)

(declare-fun tp!1893086 () Bool)

(declare-fun tp!1893092 () Bool)

(assert (=> b!6882996 (= e!4147591 (and tp!1893086 tp!1893092))))

(declare-fun b!6882997 () Bool)

(declare-fun e!4147593 () Bool)

(declare-fun tp_is_empty!42761 () Bool)

(declare-fun tp!1893080 () Bool)

(assert (=> b!6882997 (= e!4147593 (and tp_is_empty!42761 tp!1893080))))

(declare-fun b!6882998 () Bool)

(declare-fun res!2805781 () Bool)

(assert (=> b!6882998 (=> (not res!2805781) (not e!4147594))))

(declare-fun validRegex!8476 (Regex!16768) Bool)

(assert (=> b!6882998 (= res!2805781 (validRegex!8476 r3!135))))

(declare-fun b!6882999 () Bool)

(declare-fun e!4147592 () Bool)

(declare-fun tp!1893085 () Bool)

(declare-fun tp!1893089 () Bool)

(assert (=> b!6882999 (= e!4147592 (and tp!1893085 tp!1893089))))

(declare-fun b!6883000 () Bool)

(declare-fun tp!1893083 () Bool)

(declare-fun tp!1893093 () Bool)

(assert (=> b!6883000 (= e!4147595 (and tp!1893083 tp!1893093))))

(declare-fun b!6883002 () Bool)

(declare-fun tp!1893094 () Bool)

(declare-fun tp!1893095 () Bool)

(assert (=> b!6883002 (= e!4147591 (and tp!1893094 tp!1893095))))

(declare-fun b!6883003 () Bool)

(assert (=> b!6883003 (= e!4147591 tp_is_empty!42761)))

(declare-fun b!6883004 () Bool)

(assert (=> b!6883004 (= e!4147592 tp_is_empty!42761)))

(declare-fun b!6883005 () Bool)

(assert (=> b!6883005 (= e!4147595 tp_is_empty!42761)))

(declare-fun b!6883006 () Bool)

(declare-fun tp!1893090 () Bool)

(assert (=> b!6883006 (= e!4147591 tp!1893090)))

(declare-fun b!6883007 () Bool)

(declare-fun tp!1893087 () Bool)

(assert (=> b!6883007 (= e!4147592 tp!1893087)))

(declare-fun b!6883008 () Bool)

(declare-fun tp!1893082 () Bool)

(assert (=> b!6883008 (= e!4147595 tp!1893082)))

(declare-fun b!6883001 () Bool)

(declare-fun res!2805780 () Bool)

(assert (=> b!6883001 (=> (not res!2805780) (not e!4147594))))

(assert (=> b!6883001 (= res!2805780 (validRegex!8476 r2!6280))))

(declare-fun res!2805779 () Bool)

(assert (=> start!663964 (=> (not res!2805779) (not e!4147594))))

(assert (=> start!663964 (= res!2805779 (validRegex!8476 r1!6342))))

(assert (=> start!663964 e!4147594))

(assert (=> start!663964 e!4147591))

(assert (=> start!663964 e!4147595))

(assert (=> start!663964 e!4147592))

(assert (=> start!663964 e!4147593))

(declare-fun b!6883009 () Bool)

(declare-fun tp!1893088 () Bool)

(declare-fun tp!1893084 () Bool)

(assert (=> b!6883009 (= e!4147592 (and tp!1893088 tp!1893084))))

(assert (=> b!6883010 (= e!4147596 true)))

(declare-datatypes ((tuple2!67282 0))(
  ( (tuple2!67283 (_1!36944 List!66525) (_2!36944 List!66525)) )
))
(declare-fun lt!2460021 () tuple2!67282)

(assert (=> b!6883010 (= (matchR!8913 lt!2460026 (_1!36944 lt!2460021)) (matchRSpec!3831 lt!2460026 (_1!36944 lt!2460021)))))

(declare-fun lt!2460022 () Unit!160256)

(assert (=> b!6883010 (= lt!2460022 (mainMatchTheorem!3831 lt!2460026 (_1!36944 lt!2460021)))))

(declare-datatypes ((Option!16553 0))(
  ( (None!16552) (Some!16552 (v!52824 tuple2!67282)) )
))
(declare-fun lt!2460023 () Option!16553)

(declare-fun get!23115 (Option!16553) tuple2!67282)

(assert (=> b!6883010 (= lt!2460021 (get!23115 lt!2460023))))

(declare-fun Exists!3780 (Int) Bool)

(assert (=> b!6883010 (= (Exists!3780 lambda!389619) (Exists!3780 lambda!389620))))

(declare-fun lt!2460024 () Unit!160256)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2259 (Regex!16768 Regex!16768 List!66525) Unit!160256)

(assert (=> b!6883010 (= lt!2460024 (lemmaExistCutMatchRandMatchRSpecEquivalent!2259 lt!2460026 r3!135 s!14361))))

(declare-fun isDefined!13256 (Option!16553) Bool)

(assert (=> b!6883010 (= (isDefined!13256 lt!2460023) (Exists!3780 lambda!389619))))

(declare-fun findConcatSeparation!2967 (Regex!16768 Regex!16768 List!66525 List!66525 List!66525) Option!16553)

(assert (=> b!6883010 (= lt!2460023 (findConcatSeparation!2967 lt!2460026 r3!135 Nil!66401 s!14361 s!14361))))

(declare-fun lt!2460025 () Unit!160256)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2731 (Regex!16768 Regex!16768 List!66525) Unit!160256)

(assert (=> b!6883010 (= lt!2460025 (lemmaFindConcatSeparationEquivalentToExists!2731 lt!2460026 r3!135 s!14361))))

(assert (= (and start!663964 res!2805779) b!6883001))

(assert (= (and b!6883001 res!2805780) b!6882998))

(assert (= (and b!6882998 res!2805781) b!6882995))

(assert (= (and b!6882995 (not res!2805782)) b!6883010))

(assert (= (and start!663964 (is-ElementMatch!16768 r1!6342)) b!6883003))

(assert (= (and start!663964 (is-Concat!25613 r1!6342)) b!6883002))

(assert (= (and start!663964 (is-Star!16768 r1!6342)) b!6883006))

(assert (= (and start!663964 (is-Union!16768 r1!6342)) b!6882996))

(assert (= (and start!663964 (is-ElementMatch!16768 r2!6280)) b!6883005))

(assert (= (and start!663964 (is-Concat!25613 r2!6280)) b!6882994))

(assert (= (and start!663964 (is-Star!16768 r2!6280)) b!6883008))

(assert (= (and start!663964 (is-Union!16768 r2!6280)) b!6883000))

(assert (= (and start!663964 (is-ElementMatch!16768 r3!135)) b!6883004))

(assert (= (and start!663964 (is-Concat!25613 r3!135)) b!6882999))

(assert (= (and start!663964 (is-Star!16768 r3!135)) b!6883007))

(assert (= (and start!663964 (is-Union!16768 r3!135)) b!6883009))

(assert (= (and start!663964 (is-Cons!66401 s!14361)) b!6882997))

(declare-fun m!7607148 () Bool)

(assert (=> b!6883001 m!7607148))

(declare-fun m!7607150 () Bool)

(assert (=> b!6882995 m!7607150))

(declare-fun m!7607152 () Bool)

(assert (=> b!6882995 m!7607152))

(declare-fun m!7607154 () Bool)

(assert (=> b!6882995 m!7607154))

(declare-fun m!7607156 () Bool)

(assert (=> b!6882995 m!7607156))

(declare-fun m!7607158 () Bool)

(assert (=> b!6882995 m!7607158))

(declare-fun m!7607160 () Bool)

(assert (=> b!6882995 m!7607160))

(declare-fun m!7607162 () Bool)

(assert (=> b!6883010 m!7607162))

(declare-fun m!7607164 () Bool)

(assert (=> b!6883010 m!7607164))

(declare-fun m!7607166 () Bool)

(assert (=> b!6883010 m!7607166))

(declare-fun m!7607168 () Bool)

(assert (=> b!6883010 m!7607168))

(declare-fun m!7607170 () Bool)

(assert (=> b!6883010 m!7607170))

(assert (=> b!6883010 m!7607166))

(declare-fun m!7607172 () Bool)

(assert (=> b!6883010 m!7607172))

(declare-fun m!7607174 () Bool)

(assert (=> b!6883010 m!7607174))

(declare-fun m!7607176 () Bool)

(assert (=> b!6883010 m!7607176))

(declare-fun m!7607178 () Bool)

(assert (=> b!6883010 m!7607178))

(declare-fun m!7607180 () Bool)

(assert (=> b!6883010 m!7607180))

(declare-fun m!7607182 () Bool)

(assert (=> b!6882998 m!7607182))

(declare-fun m!7607184 () Bool)

(assert (=> start!663964 m!7607184))

(push 1)

(assert (not b!6883001))

(assert (not b!6883006))

(assert (not b!6883010))

(assert (not b!6882994))

(assert (not b!6882997))

(assert (not b!6883008))

(assert (not b!6882998))

(assert (not b!6882995))

(assert tp_is_empty!42761)

(assert (not b!6882999))

(assert (not b!6883007))

(assert (not b!6883009))

(assert (not b!6882996))

(assert (not b!6883000))

(assert (not b!6883002))

(assert (not start!663964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

