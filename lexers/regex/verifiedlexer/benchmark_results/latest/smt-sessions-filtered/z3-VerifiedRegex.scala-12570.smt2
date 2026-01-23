; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!697248 () Bool)

(assert start!697248)

(declare-fun b!7151614 () Bool)

(declare-fun res!2916986 () Bool)

(declare-fun e!4296973 () Bool)

(assert (=> b!7151614 (=> (not res!2916986) (not e!4296973))))

(declare-datatypes ((C!36772 0))(
  ( (C!36773 (val!28334 Int)) )
))
(declare-datatypes ((Regex!18249 0))(
  ( (ElementMatch!18249 (c!1333230 C!36772)) (Concat!27094 (regOne!37010 Regex!18249) (regTwo!37010 Regex!18249)) (EmptyExpr!18249) (Star!18249 (reg!18578 Regex!18249)) (EmptyLang!18249) (Union!18249 (regOne!37011 Regex!18249) (regTwo!37011 Regex!18249)) )
))
(declare-fun r!13749 () Regex!18249)

(declare-datatypes ((List!69553 0))(
  ( (Nil!69429) (Cons!69429 (h!75877 Regex!18249) (t!383570 List!69553)) )
))
(declare-fun l!9132 () List!69553)

(declare-fun generalisedUnion!2712 (List!69553) Regex!18249)

(assert (=> b!7151614 (= res!2916986 (= r!13749 (generalisedUnion!2712 l!9132)))))

(declare-fun b!7151615 () Bool)

(declare-fun e!4296974 () Bool)

(declare-fun tp_is_empty!46131 () Bool)

(assert (=> b!7151615 (= e!4296974 tp_is_empty!46131)))

(declare-fun b!7151616 () Bool)

(declare-fun tp!1975232 () Bool)

(declare-fun tp!1975229 () Bool)

(assert (=> b!7151616 (= e!4296974 (and tp!1975232 tp!1975229))))

(declare-fun b!7151617 () Bool)

(declare-fun res!2916990 () Bool)

(assert (=> b!7151617 (=> (not res!2916990) (not e!4296973))))

(declare-fun lambda!436174 () Int)

(declare-fun forall!17089 (List!69553 Int) Bool)

(assert (=> b!7151617 (= res!2916990 (forall!17089 (t!383570 l!9132) lambda!436174))))

(declare-fun b!7151618 () Bool)

(declare-fun res!2916985 () Bool)

(assert (=> b!7151618 (=> (not res!2916985) (not e!4296973))))

(declare-fun e!4296976 () Bool)

(assert (=> b!7151618 (= res!2916985 e!4296976)))

(declare-fun res!2916988 () Bool)

(assert (=> b!7151618 (=> res!2916988 e!4296976)))

(get-info :version)

(assert (=> b!7151618 (= res!2916988 (not ((_ is Cons!69429) l!9132)))))

(declare-fun b!7151619 () Bool)

(declare-fun tp!1975231 () Bool)

(declare-fun tp!1975234 () Bool)

(assert (=> b!7151619 (= e!4296974 (and tp!1975231 tp!1975234))))

(declare-fun b!7151620 () Bool)

(assert (=> b!7151620 (= e!4296973 (not (forall!17089 (t!383570 l!9132) lambda!436174)))))

(declare-fun b!7151621 () Bool)

(declare-fun isEmpty!40117 (List!69553) Bool)

(assert (=> b!7151621 (= e!4296976 (not (isEmpty!40117 (t!383570 l!9132))))))

(declare-fun b!7151622 () Bool)

(declare-fun e!4296975 () Bool)

(declare-fun tp!1975233 () Bool)

(declare-fun tp!1975230 () Bool)

(assert (=> b!7151622 (= e!4296975 (and tp!1975233 tp!1975230))))

(declare-fun b!7151623 () Bool)

(declare-fun tp!1975235 () Bool)

(assert (=> b!7151623 (= e!4296974 tp!1975235)))

(declare-fun res!2916989 () Bool)

(assert (=> start!697248 (=> (not res!2916989) (not e!4296973))))

(assert (=> start!697248 (= res!2916989 (forall!17089 l!9132 lambda!436174))))

(assert (=> start!697248 e!4296973))

(assert (=> start!697248 e!4296975))

(assert (=> start!697248 e!4296974))

(declare-fun b!7151624 () Bool)

(declare-fun res!2916991 () Bool)

(assert (=> b!7151624 (=> (not res!2916991) (not e!4296973))))

(assert (=> b!7151624 (= res!2916991 (and ((_ is Cons!69429) l!9132) ((_ is Union!18249) r!13749)))))

(declare-fun b!7151625 () Bool)

(declare-fun res!2916987 () Bool)

(assert (=> b!7151625 (=> (not res!2916987) (not e!4296973))))

(assert (=> b!7151625 (= res!2916987 (= (regTwo!37011 r!13749) (generalisedUnion!2712 (t!383570 l!9132))))))

(assert (= (and start!697248 res!2916989) b!7151614))

(assert (= (and b!7151614 res!2916986) b!7151618))

(assert (= (and b!7151618 (not res!2916988)) b!7151621))

(assert (= (and b!7151618 res!2916985) b!7151624))

(assert (= (and b!7151624 res!2916991) b!7151617))

(assert (= (and b!7151617 res!2916990) b!7151625))

(assert (= (and b!7151625 res!2916987) b!7151620))

(assert (= (and start!697248 ((_ is Cons!69429) l!9132)) b!7151622))

(assert (= (and start!697248 ((_ is ElementMatch!18249) r!13749)) b!7151615))

(assert (= (and start!697248 ((_ is Concat!27094) r!13749)) b!7151616))

(assert (= (and start!697248 ((_ is Star!18249) r!13749)) b!7151623))

(assert (= (and start!697248 ((_ is Union!18249) r!13749)) b!7151619))

(declare-fun m!7861470 () Bool)

(assert (=> b!7151620 m!7861470))

(assert (=> b!7151617 m!7861470))

(declare-fun m!7861472 () Bool)

(assert (=> b!7151621 m!7861472))

(declare-fun m!7861474 () Bool)

(assert (=> b!7151625 m!7861474))

(declare-fun m!7861476 () Bool)

(assert (=> b!7151614 m!7861476))

(declare-fun m!7861478 () Bool)

(assert (=> start!697248 m!7861478))

(check-sat (not b!7151617) (not start!697248) (not b!7151614) tp_is_empty!46131 (not b!7151619) (not b!7151620) (not b!7151616) (not b!7151621) (not b!7151625) (not b!7151622) (not b!7151623))
(check-sat)
