; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667184 () Bool)

(assert start!667184)

(declare-fun b!6951175 () Bool)

(assert (=> b!6951175 true))

(assert (=> b!6951175 true))

(declare-fun bs!1857710 () Bool)

(declare-fun b!6951168 () Bool)

(assert (= bs!1857710 (and b!6951168 b!6951175)))

(declare-fun lambda!396412 () Int)

(declare-fun lambda!396411 () Int)

(assert (=> bs!1857710 (not (= lambda!396412 lambda!396411))))

(assert (=> b!6951168 true))

(assert (=> b!6951168 true))

(declare-fun b!6951166 () Bool)

(declare-fun res!2835933 () Bool)

(declare-fun e!4180581 () Bool)

(assert (=> b!6951166 (=> (not res!2835933) (not e!4180581))))

(declare-datatypes ((C!34314 0))(
  ( (C!34315 (val!26859 Int)) )
))
(declare-datatypes ((Regex!17022 0))(
  ( (ElementMatch!17022 (c!1289346 C!34314)) (Concat!25867 (regOne!34556 Regex!17022) (regTwo!34556 Regex!17022)) (EmptyExpr!17022) (Star!17022 (reg!17351 Regex!17022)) (EmptyLang!17022) (Union!17022 (regOne!34557 Regex!17022) (regTwo!34557 Regex!17022)) )
))
(declare-fun rInner!765 () Regex!17022)

(declare-fun nullable!6835 (Regex!17022) Bool)

(assert (=> b!6951166 (= res!2835933 (not (nullable!6835 rInner!765)))))

(declare-fun b!6951167 () Bool)

(declare-fun e!4180579 () Bool)

(declare-fun tp!1916242 () Bool)

(assert (=> b!6951167 (= e!4180579 tp!1916242)))

(declare-fun res!2835932 () Bool)

(assert (=> b!6951168 (=> (not res!2835932) (not e!4180581))))

(declare-fun Exists!4018 (Int) Bool)

(assert (=> b!6951168 (= res!2835932 (Exists!4018 lambda!396412))))

(declare-fun b!6951169 () Bool)

(declare-fun tp!1916241 () Bool)

(declare-fun tp!1916243 () Bool)

(assert (=> b!6951169 (= e!4180579 (and tp!1916241 tp!1916243))))

(declare-fun b!6951170 () Bool)

(assert (=> b!6951170 (= e!4180581 false)))

(declare-datatypes ((List!66775 0))(
  ( (Nil!66651) (Cons!66651 (h!73099 C!34314) (t!380518 List!66775)) )
))
(declare-datatypes ((tuple2!67750 0))(
  ( (tuple2!67751 (_1!37178 List!66775) (_2!37178 List!66775)) )
))
(declare-fun lt!2477912 () tuple2!67750)

(declare-fun pickWitness!353 (Int) tuple2!67750)

(assert (=> b!6951170 (= lt!2477912 (pickWitness!353 lambda!396412))))

(declare-fun b!6951171 () Bool)

(declare-fun tp_is_empty!43269 () Bool)

(assert (=> b!6951171 (= e!4180579 tp_is_empty!43269)))

(declare-fun b!6951172 () Bool)

(declare-fun e!4180580 () Bool)

(declare-fun tp!1916240 () Bool)

(assert (=> b!6951172 (= e!4180580 (and tp_is_empty!43269 tp!1916240))))

(declare-fun b!6951173 () Bool)

(declare-fun res!2835931 () Bool)

(assert (=> b!6951173 (=> (not res!2835931) (not e!4180581))))

(assert (=> b!6951173 (= res!2835931 (not (Exists!4018 lambda!396411)))))

(declare-fun b!6951174 () Bool)

(declare-fun tp!1916238 () Bool)

(declare-fun tp!1916239 () Bool)

(assert (=> b!6951174 (= e!4180579 (and tp!1916238 tp!1916239))))

(declare-fun res!2835934 () Bool)

(assert (=> b!6951175 (=> (not res!2835934) (not e!4180581))))

(assert (=> b!6951175 (= res!2835934 (not (Exists!4018 lambda!396411)))))

(declare-fun res!2835935 () Bool)

(assert (=> start!667184 (=> (not res!2835935) (not e!4180581))))

(declare-fun validRegex!8728 (Regex!17022) Bool)

(assert (=> start!667184 (= res!2835935 (validRegex!8728 rInner!765))))

(assert (=> start!667184 e!4180581))

(assert (=> start!667184 e!4180579))

(assert (=> start!667184 e!4180580))

(assert (= (and start!667184 res!2835935) b!6951166))

(assert (= (and b!6951166 res!2835933) b!6951175))

(assert (= (and b!6951175 res!2835934) b!6951173))

(assert (= (and b!6951173 res!2835931) b!6951168))

(assert (= (and b!6951168 res!2835932) b!6951170))

(assert (= (and start!667184 (is-ElementMatch!17022 rInner!765)) b!6951171))

(assert (= (and start!667184 (is-Concat!25867 rInner!765)) b!6951174))

(assert (= (and start!667184 (is-Star!17022 rInner!765)) b!6951167))

(assert (= (and start!667184 (is-Union!17022 rInner!765)) b!6951169))

(declare-fun s!10388 () List!66775)

(assert (= (and start!667184 (is-Cons!66651 s!10388)) b!6951172))

(declare-fun m!7652360 () Bool)

(assert (=> b!6951168 m!7652360))

(declare-fun m!7652362 () Bool)

(assert (=> b!6951175 m!7652362))

(assert (=> b!6951173 m!7652362))

(declare-fun m!7652364 () Bool)

(assert (=> b!6951170 m!7652364))

(declare-fun m!7652366 () Bool)

(assert (=> b!6951166 m!7652366))

(declare-fun m!7652368 () Bool)

(assert (=> start!667184 m!7652368))

(push 1)

(assert (not b!6951174))

(assert (not b!6951170))

(assert (not b!6951169))

(assert (not b!6951172))

(assert (not b!6951175))

(assert (not start!667184))

(assert tp_is_empty!43269)

(assert (not b!6951167))

(assert (not b!6951166))

(assert (not b!6951168))

(assert (not b!6951173))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

