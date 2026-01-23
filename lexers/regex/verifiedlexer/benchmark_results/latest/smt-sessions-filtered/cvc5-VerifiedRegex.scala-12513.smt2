; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695522 () Bool)

(assert start!695522)

(declare-fun b!7137358 () Bool)

(declare-fun res!2912271 () Bool)

(declare-fun e!4289466 () Bool)

(assert (=> b!7137358 (=> res!2912271 e!4289466)))

(declare-datatypes ((C!36542 0))(
  ( (C!36543 (val!28219 Int)) )
))
(declare-datatypes ((Regex!18134 0))(
  ( (ElementMatch!18134 (c!1331019 C!36542)) (Concat!26979 (regOne!36780 Regex!18134) (regTwo!36780 Regex!18134)) (EmptyExpr!18134) (Star!18134 (reg!18463 Regex!18134)) (EmptyLang!18134) (Union!18134 (regOne!36781 Regex!18134) (regTwo!36781 Regex!18134)) )
))
(declare-datatypes ((List!69346 0))(
  ( (Nil!69222) (Cons!69222 (h!75670 Regex!18134) (t!383363 List!69346)) )
))
(declare-datatypes ((Context!14256 0))(
  ( (Context!14257 (exprs!7628 List!69346)) )
))
(declare-fun z!3189 () (Set Context!14256))

(declare-fun lambda!433890 () Int)

(declare-fun exists!3889 ((Set Context!14256) Int) Bool)

(assert (=> b!7137358 (= res!2912271 (not (exists!3889 z!3189 lambda!433890)))))

(declare-fun b!7137360 () Bool)

(declare-fun e!4289463 () Bool)

(declare-fun tp_is_empty!45905 () Bool)

(assert (=> b!7137360 (= e!4289463 tp_is_empty!45905)))

(declare-fun b!7137361 () Bool)

(declare-fun e!4289465 () Bool)

(declare-fun tp!1967966 () Bool)

(assert (=> b!7137361 (= e!4289465 tp!1967966)))

(declare-fun b!7137362 () Bool)

(declare-fun tp!1967963 () Bool)

(declare-fun tp!1967965 () Bool)

(assert (=> b!7137362 (= e!4289463 (and tp!1967963 tp!1967965))))

(declare-fun b!7137363 () Bool)

(declare-fun tp!1967961 () Bool)

(assert (=> b!7137363 (= e!4289463 tp!1967961)))

(declare-fun b!7137364 () Bool)

(declare-fun e!4289461 () Bool)

(declare-fun e!4289467 () Bool)

(assert (=> b!7137364 (= e!4289461 e!4289467)))

(declare-fun res!2912277 () Bool)

(assert (=> b!7137364 (=> (not res!2912277) (not e!4289467))))

(declare-fun r!11483 () Regex!18134)

(declare-fun lt!2566192 () Regex!18134)

(assert (=> b!7137364 (= res!2912277 (= r!11483 lt!2566192))))

(declare-fun lt!2566189 () List!69346)

(declare-fun generalisedUnion!2639 (List!69346) Regex!18134)

(assert (=> b!7137364 (= lt!2566192 (generalisedUnion!2639 lt!2566189))))

(declare-datatypes ((List!69347 0))(
  ( (Nil!69223) (Cons!69223 (h!75671 Context!14256) (t!383364 List!69347)) )
))
(declare-fun lt!2566187 () List!69347)

(declare-fun unfocusZipperList!2175 (List!69347) List!69346)

(assert (=> b!7137364 (= lt!2566189 (unfocusZipperList!2175 lt!2566187))))

(declare-fun b!7137365 () Bool)

(declare-fun res!2912272 () Bool)

(assert (=> b!7137365 (=> res!2912272 e!4289466)))

(declare-fun lt!2566193 () Bool)

(assert (=> b!7137365 (= res!2912272 lt!2566193)))

(declare-fun b!7137366 () Bool)

(declare-fun res!2912275 () Bool)

(assert (=> b!7137366 (=> res!2912275 e!4289466)))

(declare-fun lambda!433889 () Int)

(declare-fun exists!3890 (List!69346 Int) Bool)

(assert (=> b!7137366 (= res!2912275 (exists!3890 lt!2566189 lambda!433889))))

(declare-fun b!7137367 () Bool)

(declare-fun res!2912278 () Bool)

(declare-fun e!4289462 () Bool)

(assert (=> b!7137367 (=> res!2912278 e!4289462)))

(declare-fun lt!2566191 () Context!14256)

(declare-fun nullableContext!133 (Context!14256) Bool)

(assert (=> b!7137367 (= res!2912278 (not (nullableContext!133 lt!2566191)))))

(declare-fun b!7137368 () Bool)

(assert (=> b!7137368 (= e!4289462 true)))

(declare-fun lt!2566188 () Bool)

(declare-fun contains!20574 (List!69347 Context!14256) Bool)

(assert (=> b!7137368 (= lt!2566188 (contains!20574 lt!2566187 lt!2566191))))

(declare-fun b!7137359 () Bool)

(declare-fun e!4289464 () Bool)

(assert (=> b!7137359 (= e!4289464 e!4289461)))

(declare-fun res!2912270 () Bool)

(assert (=> b!7137359 (=> (not res!2912270) (not e!4289461))))

(declare-fun unfocusZipper!2482 (List!69347) Regex!18134)

(assert (=> b!7137359 (= res!2912270 (= r!11483 (unfocusZipper!2482 lt!2566187)))))

(declare-fun toList!11165 ((Set Context!14256)) List!69347)

(assert (=> b!7137359 (= lt!2566187 (toList!11165 z!3189))))

(declare-fun res!2912273 () Bool)

(assert (=> start!695522 (=> (not res!2912273) (not e!4289464))))

(declare-fun validRegex!9301 (Regex!18134) Bool)

(assert (=> start!695522 (= res!2912273 (validRegex!9301 r!11483))))

(assert (=> start!695522 e!4289464))

(assert (=> start!695522 e!4289463))

(declare-fun condSetEmpty!52402 () Bool)

(assert (=> start!695522 (= condSetEmpty!52402 (= z!3189 (as set.empty (Set Context!14256))))))

(declare-fun setRes!52402 () Bool)

(assert (=> start!695522 setRes!52402))

(declare-fun b!7137369 () Bool)

(declare-fun tp!1967964 () Bool)

(declare-fun tp!1967960 () Bool)

(assert (=> b!7137369 (= e!4289463 (and tp!1967964 tp!1967960))))

(declare-fun setElem!52402 () Context!14256)

(declare-fun tp!1967962 () Bool)

(declare-fun setNonEmpty!52402 () Bool)

(declare-fun inv!88400 (Context!14256) Bool)

(assert (=> setNonEmpty!52402 (= setRes!52402 (and tp!1967962 (inv!88400 setElem!52402) e!4289465))))

(declare-fun setRest!52402 () (Set Context!14256))

(assert (=> setNonEmpty!52402 (= z!3189 (set.union (set.insert setElem!52402 (as set.empty (Set Context!14256))) setRest!52402))))

(declare-fun b!7137370 () Bool)

(assert (=> b!7137370 (= e!4289467 (not e!4289466))))

(declare-fun res!2912276 () Bool)

(assert (=> b!7137370 (=> res!2912276 e!4289466)))

(assert (=> b!7137370 (= res!2912276 (not (= lt!2566193 (exists!3890 lt!2566189 lambda!433889))))))

(assert (=> b!7137370 (= lt!2566193 (exists!3890 lt!2566189 lambda!433889))))

(declare-fun nullable!7654 (Regex!18134) Bool)

(assert (=> b!7137370 (= lt!2566193 (nullable!7654 lt!2566192))))

(declare-datatypes ((Unit!163127 0))(
  ( (Unit!163128) )
))
(declare-fun lt!2566190 () Unit!163127)

(declare-fun nullableGenUnionSpec!23 (Regex!18134 List!69346) Unit!163127)

(assert (=> b!7137370 (= lt!2566190 (nullableGenUnionSpec!23 lt!2566192 lt!2566189))))

(declare-fun setIsEmpty!52402 () Bool)

(assert (=> setIsEmpty!52402 setRes!52402))

(declare-fun b!7137371 () Bool)

(assert (=> b!7137371 (= e!4289466 e!4289462)))

(declare-fun res!2912274 () Bool)

(assert (=> b!7137371 (=> res!2912274 e!4289462)))

(assert (=> b!7137371 (= res!2912274 (not (set.member lt!2566191 z!3189)))))

(declare-fun getWitness!1895 ((Set Context!14256) Int) Context!14256)

(assert (=> b!7137371 (= lt!2566191 (getWitness!1895 z!3189 lambda!433890))))

(assert (= (and start!695522 res!2912273) b!7137359))

(assert (= (and b!7137359 res!2912270) b!7137364))

(assert (= (and b!7137364 res!2912277) b!7137370))

(assert (= (and b!7137370 (not res!2912276)) b!7137365))

(assert (= (and b!7137365 (not res!2912272)) b!7137366))

(assert (= (and b!7137366 (not res!2912275)) b!7137358))

(assert (= (and b!7137358 (not res!2912271)) b!7137371))

(assert (= (and b!7137371 (not res!2912274)) b!7137367))

(assert (= (and b!7137367 (not res!2912278)) b!7137368))

(assert (= (and start!695522 (is-ElementMatch!18134 r!11483)) b!7137360))

(assert (= (and start!695522 (is-Concat!26979 r!11483)) b!7137369))

(assert (= (and start!695522 (is-Star!18134 r!11483)) b!7137363))

(assert (= (and start!695522 (is-Union!18134 r!11483)) b!7137362))

(assert (= (and start!695522 condSetEmpty!52402) setIsEmpty!52402))

(assert (= (and start!695522 (not condSetEmpty!52402)) setNonEmpty!52402))

(assert (= setNonEmpty!52402 b!7137361))

(declare-fun m!7853166 () Bool)

(assert (=> b!7137371 m!7853166))

(declare-fun m!7853168 () Bool)

(assert (=> b!7137371 m!7853168))

(declare-fun m!7853170 () Bool)

(assert (=> b!7137367 m!7853170))

(declare-fun m!7853172 () Bool)

(assert (=> b!7137364 m!7853172))

(declare-fun m!7853174 () Bool)

(assert (=> b!7137364 m!7853174))

(declare-fun m!7853176 () Bool)

(assert (=> b!7137366 m!7853176))

(declare-fun m!7853178 () Bool)

(assert (=> b!7137358 m!7853178))

(declare-fun m!7853180 () Bool)

(assert (=> b!7137368 m!7853180))

(declare-fun m!7853182 () Bool)

(assert (=> setNonEmpty!52402 m!7853182))

(declare-fun m!7853184 () Bool)

(assert (=> start!695522 m!7853184))

(declare-fun m!7853186 () Bool)

(assert (=> b!7137359 m!7853186))

(declare-fun m!7853188 () Bool)

(assert (=> b!7137359 m!7853188))

(assert (=> b!7137370 m!7853176))

(assert (=> b!7137370 m!7853176))

(declare-fun m!7853190 () Bool)

(assert (=> b!7137370 m!7853190))

(declare-fun m!7853192 () Bool)

(assert (=> b!7137370 m!7853192))

(push 1)

(assert (not start!695522))

(assert (not b!7137364))

(assert (not b!7137363))

(assert (not b!7137367))

(assert (not setNonEmpty!52402))

(assert (not b!7137369))

(assert (not b!7137358))

(assert (not b!7137366))

(assert (not b!7137359))

(assert (not b!7137370))

(assert (not b!7137371))

(assert tp_is_empty!45905)

(assert (not b!7137362))

(assert (not b!7137368))

(assert (not b!7137361))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

