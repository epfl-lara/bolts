; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697250 () Bool)

(assert start!697250)

(declare-fun b!7151650 () Bool)

(declare-fun e!4296985 () Bool)

(assert (=> b!7151650 (= e!4296985 false)))

(declare-fun b!7151651 () Bool)

(declare-fun res!2917011 () Bool)

(assert (=> b!7151651 (=> (not res!2917011) (not e!4296985))))

(declare-datatypes ((C!36774 0))(
  ( (C!36775 (val!28335 Int)) )
))
(declare-datatypes ((Regex!18250 0))(
  ( (ElementMatch!18250 (c!1333231 C!36774)) (Concat!27095 (regOne!37012 Regex!18250) (regTwo!37012 Regex!18250)) (EmptyExpr!18250) (Star!18250 (reg!18579 Regex!18250)) (EmptyLang!18250) (Union!18250 (regOne!37013 Regex!18250) (regTwo!37013 Regex!18250)) )
))
(declare-datatypes ((List!69554 0))(
  ( (Nil!69430) (Cons!69430 (h!75878 Regex!18250) (t!383571 List!69554)) )
))
(declare-fun l!9132 () List!69554)

(declare-fun lambda!436179 () Int)

(declare-fun forall!17090 (List!69554 Int) Bool)

(assert (=> b!7151651 (= res!2917011 (forall!17090 (t!383571 l!9132) lambda!436179))))

(declare-fun b!7151652 () Bool)

(declare-fun res!2917010 () Bool)

(assert (=> b!7151652 (=> (not res!2917010) (not e!4296985))))

(declare-fun r!13749 () Regex!18250)

(assert (=> b!7151652 (= res!2917010 (and (is-Cons!69430 l!9132) (is-Union!18250 r!13749)))))

(declare-fun res!2917009 () Bool)

(assert (=> start!697250 (=> (not res!2917009) (not e!4296985))))

(assert (=> start!697250 (= res!2917009 (forall!17090 l!9132 lambda!436179))))

(assert (=> start!697250 e!4296985))

(declare-fun e!4296988 () Bool)

(assert (=> start!697250 e!4296988))

(declare-fun e!4296986 () Bool)

(assert (=> start!697250 e!4296986))

(declare-fun b!7151653 () Bool)

(declare-fun tp!1975250 () Bool)

(declare-fun tp!1975251 () Bool)

(assert (=> b!7151653 (= e!4296986 (and tp!1975250 tp!1975251))))

(declare-fun b!7151654 () Bool)

(declare-fun tp!1975255 () Bool)

(assert (=> b!7151654 (= e!4296986 tp!1975255)))

(declare-fun b!7151655 () Bool)

(declare-fun res!2917006 () Bool)

(assert (=> b!7151655 (=> (not res!2917006) (not e!4296985))))

(declare-fun generalisedUnion!2713 (List!69554) Regex!18250)

(assert (=> b!7151655 (= res!2917006 (= (regTwo!37013 r!13749) (generalisedUnion!2713 (t!383571 l!9132))))))

(declare-fun b!7151656 () Bool)

(declare-fun res!2917012 () Bool)

(assert (=> b!7151656 (=> (not res!2917012) (not e!4296985))))

(assert (=> b!7151656 (= res!2917012 (= r!13749 (generalisedUnion!2713 l!9132)))))

(declare-fun b!7151657 () Bool)

(declare-fun tp!1975254 () Bool)

(declare-fun tp!1975256 () Bool)

(assert (=> b!7151657 (= e!4296988 (and tp!1975254 tp!1975256))))

(declare-fun b!7151658 () Bool)

(declare-fun e!4296987 () Bool)

(declare-fun isEmpty!40118 (List!69554) Bool)

(assert (=> b!7151658 (= e!4296987 (not (isEmpty!40118 (t!383571 l!9132))))))

(declare-fun b!7151659 () Bool)

(declare-fun tp!1975252 () Bool)

(declare-fun tp!1975253 () Bool)

(assert (=> b!7151659 (= e!4296986 (and tp!1975252 tp!1975253))))

(declare-fun b!7151660 () Bool)

(declare-fun res!2917007 () Bool)

(assert (=> b!7151660 (=> (not res!2917007) (not e!4296985))))

(assert (=> b!7151660 (= res!2917007 e!4296987)))

(declare-fun res!2917008 () Bool)

(assert (=> b!7151660 (=> res!2917008 e!4296987)))

(assert (=> b!7151660 (= res!2917008 (not (is-Cons!69430 l!9132)))))

(declare-fun b!7151661 () Bool)

(declare-fun tp_is_empty!46133 () Bool)

(assert (=> b!7151661 (= e!4296986 tp_is_empty!46133)))

(assert (= (and start!697250 res!2917009) b!7151656))

(assert (= (and b!7151656 res!2917012) b!7151660))

(assert (= (and b!7151660 (not res!2917008)) b!7151658))

(assert (= (and b!7151660 res!2917007) b!7151652))

(assert (= (and b!7151652 res!2917010) b!7151651))

(assert (= (and b!7151651 res!2917011) b!7151655))

(assert (= (and b!7151655 res!2917006) b!7151650))

(assert (= (and start!697250 (is-Cons!69430 l!9132)) b!7151657))

(assert (= (and start!697250 (is-ElementMatch!18250 r!13749)) b!7151661))

(assert (= (and start!697250 (is-Concat!27095 r!13749)) b!7151659))

(assert (= (and start!697250 (is-Star!18250 r!13749)) b!7151654))

(assert (= (and start!697250 (is-Union!18250 r!13749)) b!7151653))

(declare-fun m!7861480 () Bool)

(assert (=> b!7151651 m!7861480))

(declare-fun m!7861482 () Bool)

(assert (=> b!7151658 m!7861482))

(declare-fun m!7861484 () Bool)

(assert (=> start!697250 m!7861484))

(declare-fun m!7861486 () Bool)

(assert (=> b!7151655 m!7861486))

(declare-fun m!7861488 () Bool)

(assert (=> b!7151656 m!7861488))

(push 1)

(assert (not start!697250))

(assert (not b!7151656))

(assert (not b!7151657))

(assert (not b!7151653))

(assert (not b!7151654))

(assert (not b!7151658))

(assert tp_is_empty!46133)

(assert (not b!7151651))

(assert (not b!7151659))

(assert (not b!7151655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

