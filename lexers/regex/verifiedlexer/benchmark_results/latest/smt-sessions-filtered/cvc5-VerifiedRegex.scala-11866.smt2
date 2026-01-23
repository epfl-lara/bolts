; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!666812 () Bool)

(assert start!666812)

(declare-fun b!6945796 () Bool)

(declare-fun e!4177927 () Bool)

(declare-fun tp!1914484 () Bool)

(declare-fun tp!1914482 () Bool)

(assert (=> b!6945796 (= e!4177927 (and tp!1914484 tp!1914482))))

(declare-fun b!6945797 () Bool)

(declare-fun tp!1914485 () Bool)

(assert (=> b!6945797 (= e!4177927 tp!1914485)))

(declare-fun b!6945798 () Bool)

(declare-fun e!4177925 () Bool)

(assert (=> b!6945798 (= e!4177925 false)))

(declare-datatypes ((C!34226 0))(
  ( (C!34227 (val!26815 Int)) )
))
(declare-datatypes ((List!66731 0))(
  ( (Nil!66607) (Cons!66607 (h!73055 C!34226) (t!380474 List!66731)) )
))
(declare-fun lt!2477338 () List!66731)

(declare-datatypes ((tuple2!67670 0))(
  ( (tuple2!67671 (_1!37138 List!66731) (_2!37138 List!66731)) )
))
(declare-fun cut!43 () tuple2!67670)

(declare-fun ++!15017 (List!66731 List!66731) List!66731)

(assert (=> b!6945798 (= lt!2477338 (++!15017 (_1!37138 cut!43) (_2!37138 cut!43)))))

(declare-fun res!2833538 () Bool)

(assert (=> start!666812 (=> (not res!2833538) (not e!4177925))))

(declare-datatypes ((Regex!16978 0))(
  ( (ElementMatch!16978 (c!1288676 C!34226)) (Concat!25823 (regOne!34468 Regex!16978) (regTwo!34468 Regex!16978)) (EmptyExpr!16978) (Star!16978 (reg!17307 Regex!16978)) (EmptyLang!16978) (Union!16978 (regOne!34469 Regex!16978) (regTwo!34469 Regex!16978)) )
))
(declare-fun rInner!765 () Regex!16978)

(declare-fun validRegex!8684 (Regex!16978) Bool)

(assert (=> start!666812 (= res!2833538 (validRegex!8684 rInner!765))))

(assert (=> start!666812 e!4177925))

(assert (=> start!666812 e!4177927))

(declare-fun e!4177928 () Bool)

(declare-fun e!4177926 () Bool)

(assert (=> start!666812 (and e!4177928 e!4177926)))

(declare-fun b!6945799 () Bool)

(declare-fun res!2833537 () Bool)

(assert (=> b!6945799 (=> (not res!2833537) (not e!4177925))))

(declare-fun nullable!6791 (Regex!16978) Bool)

(assert (=> b!6945799 (= res!2833537 (not (nullable!6791 rInner!765)))))

(declare-fun b!6945800 () Bool)

(declare-fun tp!1914488 () Bool)

(declare-fun tp!1914483 () Bool)

(assert (=> b!6945800 (= e!4177927 (and tp!1914488 tp!1914483))))

(declare-fun b!6945801 () Bool)

(declare-fun tp_is_empty!43181 () Bool)

(declare-fun tp!1914487 () Bool)

(assert (=> b!6945801 (= e!4177926 (and tp_is_empty!43181 tp!1914487))))

(declare-fun b!6945802 () Bool)

(assert (=> b!6945802 (= e!4177927 tp_is_empty!43181)))

(declare-fun b!6945803 () Bool)

(declare-fun tp!1914486 () Bool)

(assert (=> b!6945803 (= e!4177928 (and tp_is_empty!43181 tp!1914486))))

(assert (= (and start!666812 res!2833538) b!6945799))

(assert (= (and b!6945799 res!2833537) b!6945798))

(assert (= (and start!666812 (is-ElementMatch!16978 rInner!765)) b!6945802))

(assert (= (and start!666812 (is-Concat!25823 rInner!765)) b!6945800))

(assert (= (and start!666812 (is-Star!16978 rInner!765)) b!6945797))

(assert (= (and start!666812 (is-Union!16978 rInner!765)) b!6945796))

(assert (= (and start!666812 (is-Cons!66607 (_1!37138 cut!43))) b!6945803))

(assert (= (and start!666812 (is-Cons!66607 (_2!37138 cut!43))) b!6945801))

(declare-fun m!7650288 () Bool)

(assert (=> b!6945798 m!7650288))

(declare-fun m!7650290 () Bool)

(assert (=> start!666812 m!7650290))

(declare-fun m!7650292 () Bool)

(assert (=> b!6945799 m!7650292))

(push 1)

(assert (not b!6945801))

(assert (not b!6945799))

(assert (not b!6945800))

(assert (not b!6945803))

(assert (not b!6945796))

(assert (not b!6945797))

(assert (not b!6945798))

(assert (not start!666812))

(assert tp_is_empty!43181)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

