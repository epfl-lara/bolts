; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544202 () Bool)

(assert start!544202)

(declare-fun b!5139692 () Bool)

(declare-fun e!3205669 () Bool)

(declare-fun tp_is_empty!38057 () Bool)

(assert (=> b!5139692 (= e!3205669 tp_is_empty!38057)))

(declare-fun b!5139693 () Bool)

(declare-fun res!2189053 () Bool)

(declare-fun e!3205667 () Bool)

(assert (=> b!5139693 (=> (not res!2189053) (not e!3205667))))

(declare-fun e!3205668 () Bool)

(assert (=> b!5139693 (= res!2189053 e!3205668)))

(declare-fun res!2189050 () Bool)

(assert (=> b!5139693 (=> res!2189050 e!3205668)))

(declare-datatypes ((C!29174 0))(
  ( (C!29175 (val!24239 Int)) )
))
(declare-datatypes ((Regex!14454 0))(
  ( (ElementMatch!14454 (c!884984 C!29174)) (Concat!23299 (regOne!29420 Regex!14454) (regTwo!29420 Regex!14454)) (EmptyExpr!14454) (Star!14454 (reg!14783 Regex!14454)) (EmptyLang!14454) (Union!14454 (regOne!29421 Regex!14454) (regTwo!29421 Regex!14454)) )
))
(declare-fun expr!117 () Regex!14454)

(declare-fun lostCause!1460 (Regex!14454) Bool)

(assert (=> b!5139693 (= res!2189050 (lostCause!1460 expr!117))))

(declare-fun b!5139694 () Bool)

(declare-fun res!2189056 () Bool)

(assert (=> b!5139694 (=> (not res!2189056) (not e!3205667))))

(declare-fun e!3205666 () Bool)

(assert (=> b!5139694 (= res!2189056 e!3205666)))

(declare-fun res!2189055 () Bool)

(assert (=> b!5139694 (=> res!2189055 e!3205666)))

(assert (=> b!5139694 (= res!2189055 (not (is-Concat!23299 expr!117)))))

(declare-fun b!5139695 () Bool)

(declare-fun res!2189052 () Bool)

(assert (=> b!5139695 (=> (not res!2189052) (not e!3205667))))

(assert (=> b!5139695 (= res!2189052 (and (not (is-Concat!23299 expr!117)) (is-Star!14454 expr!117)))))

(declare-fun b!5139696 () Bool)

(assert (=> b!5139696 (= e!3205667 false)))

(declare-fun lt!2120341 () Bool)

(declare-fun e!3205664 () Bool)

(assert (=> b!5139696 (= lt!2120341 e!3205664)))

(declare-fun res!2189049 () Bool)

(assert (=> b!5139696 (=> res!2189049 e!3205664)))

(assert (=> b!5139696 (= res!2189049 (lostCause!1460 (reg!14783 expr!117)))))

(declare-fun res!2189054 () Bool)

(assert (=> start!544202 (=> (not res!2189054) (not e!3205667))))

(declare-fun validRegex!6309 (Regex!14454) Bool)

(assert (=> start!544202 (= res!2189054 (validRegex!6309 expr!117))))

(assert (=> start!544202 e!3205667))

(assert (=> start!544202 e!3205669))

(declare-datatypes ((List!59828 0))(
  ( (Nil!59704) (Cons!59704 (h!66152 Regex!14454) (t!372861 List!59828)) )
))
(declare-datatypes ((Context!7676 0))(
  ( (Context!7677 (exprs!4338 List!59828)) )
))
(declare-fun ctx!100 () Context!7676)

(declare-fun e!3205665 () Bool)

(declare-fun inv!79317 (Context!7676) Bool)

(assert (=> start!544202 (and (inv!79317 ctx!100) e!3205665)))

(assert (=> start!544202 tp_is_empty!38057))

(declare-fun b!5139697 () Bool)

(declare-fun res!2189051 () Bool)

(assert (=> b!5139697 (=> (not res!2189051) (not e!3205667))))

(assert (=> b!5139697 (= res!2189051 (validRegex!6309 (reg!14783 expr!117)))))

(declare-fun b!5139698 () Bool)

(declare-fun lostCause!1461 (Context!7676) Bool)

(assert (=> b!5139698 (= e!3205668 (lostCause!1461 ctx!100))))

(declare-fun b!5139699 () Bool)

(declare-fun tp!1433666 () Bool)

(assert (=> b!5139699 (= e!3205669 tp!1433666)))

(declare-fun b!5139700 () Bool)

(declare-fun $colon$colon!1192 (List!59828 Regex!14454) List!59828)

(assert (=> b!5139700 (= e!3205664 (lostCause!1461 (Context!7677 ($colon$colon!1192 (exprs!4338 ctx!100) expr!117))))))

(declare-fun b!5139701 () Bool)

(declare-fun tp!1433662 () Bool)

(declare-fun tp!1433665 () Bool)

(assert (=> b!5139701 (= e!3205669 (and tp!1433662 tp!1433665))))

(declare-fun b!5139702 () Bool)

(declare-fun tp!1433667 () Bool)

(assert (=> b!5139702 (= e!3205665 tp!1433667)))

(declare-fun b!5139703 () Bool)

(declare-fun tp!1433664 () Bool)

(declare-fun tp!1433663 () Bool)

(assert (=> b!5139703 (= e!3205669 (and tp!1433664 tp!1433663))))

(declare-fun b!5139704 () Bool)

(declare-fun res!2189057 () Bool)

(assert (=> b!5139704 (=> (not res!2189057) (not e!3205667))))

(declare-fun a!1296 () C!29174)

(assert (=> b!5139704 (= res!2189057 (and (or (not (is-ElementMatch!14454 expr!117)) (not (= (c!884984 expr!117) a!1296))) (not (is-Union!14454 expr!117))))))

(declare-fun b!5139705 () Bool)

(declare-fun nullable!4813 (Regex!14454) Bool)

(assert (=> b!5139705 (= e!3205666 (not (nullable!4813 (regOne!29420 expr!117))))))

(assert (= (and start!544202 res!2189054) b!5139693))

(assert (= (and b!5139693 (not res!2189050)) b!5139698))

(assert (= (and b!5139693 res!2189053) b!5139704))

(assert (= (and b!5139704 res!2189057) b!5139694))

(assert (= (and b!5139694 (not res!2189055)) b!5139705))

(assert (= (and b!5139694 res!2189056) b!5139695))

(assert (= (and b!5139695 res!2189052) b!5139697))

(assert (= (and b!5139697 res!2189051) b!5139696))

(assert (= (and b!5139696 (not res!2189049)) b!5139700))

(assert (= (and start!544202 (is-ElementMatch!14454 expr!117)) b!5139692))

(assert (= (and start!544202 (is-Concat!23299 expr!117)) b!5139703))

(assert (= (and start!544202 (is-Star!14454 expr!117)) b!5139699))

(assert (= (and start!544202 (is-Union!14454 expr!117)) b!5139701))

(assert (= start!544202 b!5139702))

(declare-fun m!6204136 () Bool)

(assert (=> b!5139697 m!6204136))

(declare-fun m!6204138 () Bool)

(assert (=> start!544202 m!6204138))

(declare-fun m!6204140 () Bool)

(assert (=> start!544202 m!6204140))

(declare-fun m!6204142 () Bool)

(assert (=> b!5139700 m!6204142))

(declare-fun m!6204144 () Bool)

(assert (=> b!5139700 m!6204144))

(declare-fun m!6204146 () Bool)

(assert (=> b!5139698 m!6204146))

(declare-fun m!6204148 () Bool)

(assert (=> b!5139693 m!6204148))

(declare-fun m!6204150 () Bool)

(assert (=> b!5139705 m!6204150))

(declare-fun m!6204152 () Bool)

(assert (=> b!5139696 m!6204152))

(push 1)

(assert (not b!5139699))

(assert (not b!5139696))

(assert (not start!544202))

(assert (not b!5139705))

(assert (not b!5139702))

(assert (not b!5139703))

(assert tp_is_empty!38057)

(assert (not b!5139698))

(assert (not b!5139701))

(assert (not b!5139700))

(assert (not b!5139697))

(assert (not b!5139693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

