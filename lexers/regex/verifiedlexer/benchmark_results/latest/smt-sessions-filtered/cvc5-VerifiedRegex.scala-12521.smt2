; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695778 () Bool)

(assert start!695778)

(declare-fun res!2912986 () Bool)

(declare-fun e!4290458 () Bool)

(assert (=> start!695778 (=> (not res!2912986) (not e!4290458))))

(declare-datatypes ((C!36574 0))(
  ( (C!36575 (val!28235 Int)) )
))
(declare-datatypes ((Regex!18150 0))(
  ( (ElementMatch!18150 (c!1331339 C!36574)) (Concat!26995 (regOne!36812 Regex!18150) (regTwo!36812 Regex!18150)) (EmptyExpr!18150) (Star!18150 (reg!18479 Regex!18150)) (EmptyLang!18150) (Union!18150 (regOne!36813 Regex!18150) (regTwo!36813 Regex!18150)) )
))
(declare-fun r!11483 () Regex!18150)

(declare-fun validRegex!9317 (Regex!18150) Bool)

(assert (=> start!695778 (= res!2912986 (validRegex!9317 r!11483))))

(assert (=> start!695778 e!4290458))

(declare-fun e!4290459 () Bool)

(assert (=> start!695778 e!4290459))

(declare-fun condSetEmpty!52474 () Bool)

(declare-datatypes ((List!69378 0))(
  ( (Nil!69254) (Cons!69254 (h!75702 Regex!18150) (t!383395 List!69378)) )
))
(declare-datatypes ((Context!14288 0))(
  ( (Context!14289 (exprs!7644 List!69378)) )
))
(declare-fun z!3189 () (Set Context!14288))

(assert (=> start!695778 (= condSetEmpty!52474 (= z!3189 (as set.empty (Set Context!14288))))))

(declare-fun setRes!52474 () Bool)

(assert (=> start!695778 setRes!52474))

(declare-fun b!7139126 () Bool)

(declare-fun e!4290457 () Bool)

(assert (=> b!7139126 (= e!4290458 e!4290457)))

(declare-fun res!2912988 () Bool)

(assert (=> b!7139126 (=> (not res!2912988) (not e!4290457))))

(declare-datatypes ((List!69379 0))(
  ( (Nil!69255) (Cons!69255 (h!75703 Context!14288) (t!383396 List!69379)) )
))
(declare-fun lt!2566745 () List!69379)

(declare-fun unfocusZipper!2498 (List!69379) Regex!18150)

(assert (=> b!7139126 (= res!2912988 (= r!11483 (unfocusZipper!2498 lt!2566745)))))

(declare-fun toList!11181 ((Set Context!14288)) List!69379)

(assert (=> b!7139126 (= lt!2566745 (toList!11181 z!3189))))

(declare-fun b!7139127 () Bool)

(declare-fun tp!1968677 () Bool)

(declare-fun tp!1968675 () Bool)

(assert (=> b!7139127 (= e!4290459 (and tp!1968677 tp!1968675))))

(declare-fun b!7139128 () Bool)

(declare-fun e!4290461 () Bool)

(declare-fun tp!1968674 () Bool)

(assert (=> b!7139128 (= e!4290461 tp!1968674)))

(declare-fun b!7139129 () Bool)

(declare-fun tp!1968678 () Bool)

(assert (=> b!7139129 (= e!4290459 tp!1968678)))

(declare-fun setIsEmpty!52474 () Bool)

(assert (=> setIsEmpty!52474 setRes!52474))

(declare-fun b!7139130 () Bool)

(declare-fun e!4290460 () Bool)

(assert (=> b!7139130 (= e!4290457 e!4290460)))

(declare-fun res!2912987 () Bool)

(assert (=> b!7139130 (=> (not res!2912987) (not e!4290460))))

(declare-fun lt!2566741 () Regex!18150)

(assert (=> b!7139130 (= res!2912987 (= r!11483 lt!2566741))))

(declare-fun lt!2566742 () List!69378)

(declare-fun generalisedUnion!2655 (List!69378) Regex!18150)

(assert (=> b!7139130 (= lt!2566741 (generalisedUnion!2655 lt!2566742))))

(declare-fun unfocusZipperList!2191 (List!69379) List!69378)

(assert (=> b!7139130 (= lt!2566742 (unfocusZipperList!2191 lt!2566745))))

(declare-fun tp!1968676 () Bool)

(declare-fun setElem!52474 () Context!14288)

(declare-fun setNonEmpty!52474 () Bool)

(declare-fun inv!88440 (Context!14288) Bool)

(assert (=> setNonEmpty!52474 (= setRes!52474 (and tp!1968676 (inv!88440 setElem!52474) e!4290461))))

(declare-fun setRest!52474 () (Set Context!14288))

(assert (=> setNonEmpty!52474 (= z!3189 (set.union (set.insert setElem!52474 (as set.empty (Set Context!14288))) setRest!52474))))

(declare-fun b!7139131 () Bool)

(declare-fun tp!1968672 () Bool)

(declare-fun tp!1968673 () Bool)

(assert (=> b!7139131 (= e!4290459 (and tp!1968672 tp!1968673))))

(declare-fun b!7139132 () Bool)

(declare-fun lt!2566743 () Bool)

(declare-fun lambda!434277 () Int)

(declare-fun exists!3922 (List!69378 Int) Bool)

(assert (=> b!7139132 (= e!4290460 (not (= lt!2566743 (exists!3922 lt!2566742 lambda!434277))))))

(assert (=> b!7139132 (= lt!2566743 (exists!3922 lt!2566742 lambda!434277))))

(declare-fun nullable!7669 (Regex!18150) Bool)

(assert (=> b!7139132 (= lt!2566743 (nullable!7669 lt!2566741))))

(declare-datatypes ((Unit!163155 0))(
  ( (Unit!163156) )
))
(declare-fun lt!2566744 () Unit!163155)

(declare-fun nullableGenUnionSpec!37 (Regex!18150 List!69378) Unit!163155)

(assert (=> b!7139132 (= lt!2566744 (nullableGenUnionSpec!37 lt!2566741 lt!2566742))))

(declare-fun b!7139133 () Bool)

(declare-fun tp_is_empty!45937 () Bool)

(assert (=> b!7139133 (= e!4290459 tp_is_empty!45937)))

(assert (= (and start!695778 res!2912986) b!7139126))

(assert (= (and b!7139126 res!2912988) b!7139130))

(assert (= (and b!7139130 res!2912987) b!7139132))

(assert (= (and start!695778 (is-ElementMatch!18150 r!11483)) b!7139133))

(assert (= (and start!695778 (is-Concat!26995 r!11483)) b!7139131))

(assert (= (and start!695778 (is-Star!18150 r!11483)) b!7139129))

(assert (= (and start!695778 (is-Union!18150 r!11483)) b!7139127))

(assert (= (and start!695778 condSetEmpty!52474) setIsEmpty!52474))

(assert (= (and start!695778 (not condSetEmpty!52474)) setNonEmpty!52474))

(assert (= setNonEmpty!52474 b!7139128))

(declare-fun m!7854474 () Bool)

(assert (=> start!695778 m!7854474))

(declare-fun m!7854476 () Bool)

(assert (=> b!7139126 m!7854476))

(declare-fun m!7854478 () Bool)

(assert (=> b!7139126 m!7854478))

(declare-fun m!7854480 () Bool)

(assert (=> b!7139130 m!7854480))

(declare-fun m!7854482 () Bool)

(assert (=> b!7139130 m!7854482))

(declare-fun m!7854484 () Bool)

(assert (=> b!7139132 m!7854484))

(assert (=> b!7139132 m!7854484))

(declare-fun m!7854486 () Bool)

(assert (=> b!7139132 m!7854486))

(declare-fun m!7854488 () Bool)

(assert (=> b!7139132 m!7854488))

(declare-fun m!7854490 () Bool)

(assert (=> setNonEmpty!52474 m!7854490))

(push 1)

(assert (not b!7139128))

(assert (not b!7139130))

(assert (not b!7139132))

(assert (not b!7139127))

(assert (not setNonEmpty!52474))

(assert (not b!7139126))

(assert (not start!695778))

(assert tp_is_empty!45937)

(assert (not b!7139129))

(assert (not b!7139131))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

