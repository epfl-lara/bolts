; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!722670 () Bool)

(assert start!722670)

(declare-fun b!7440230 () Bool)

(assert (=> b!7440230 true))

(declare-fun b!7440231 () Bool)

(declare-fun m!8052464 () Bool)

(assert (=> b!7440231 m!8052464))

(assert (=> b!7440231 true))

(assert (=> b!7440231 true))

(declare-fun res!2986226 () Bool)

(declare-fun e!4442863 () Bool)

(assert (=> start!722670 (=> (not res!2986226) (not e!4442863))))

(declare-datatypes ((C!39170 0))(
  ( (C!39171 (val!29959 Int)) )
))
(declare-datatypes ((Regex!19448 0))(
  ( (ElementMatch!19448 (c!1376934 C!39170)) (Concat!28293 (regOne!39408 Regex!19448) (regTwo!39408 Regex!19448)) (EmptyExpr!19448) (Star!19448 (reg!19777 Regex!19448)) (EmptyLang!19448) (Union!19448 (regOne!39409 Regex!19448) (regTwo!39409 Regex!19448)) )
))
(declare-datatypes ((List!72114 0))(
  ( (Nil!71990) (Cons!71990 (h!78438 Regex!19448) (t!386677 List!72114)) )
))
(declare-datatypes ((Context!16776 0))(
  ( (Context!16777 (exprs!8888 List!72114)) )
))
(declare-fun z!3488 () (Set Context!16776))

(declare-datatypes ((List!72115 0))(
  ( (Nil!71991) (Cons!71991 (h!78439 C!39170) (t!386678 List!72115)) )
))
(declare-fun s!7945 () List!72115)

(declare-fun lt!2619323 () Context!16776)

(assert (=> start!722670 (= res!2986226 (and (= z!3488 (set.insert lt!2619323 (as set.empty (Set Context!16776)))) (is-Cons!71991 s!7945)))))

(assert (=> start!722670 (= lt!2619323 (Context!16777 Nil!71990))))

(assert (=> start!722670 e!4442863))

(declare-fun condSetEmpty!56546 () Bool)

(assert (=> start!722670 (= condSetEmpty!56546 (= z!3488 (as set.empty (Set Context!16776))))))

(declare-fun setRes!56546 () Bool)

(assert (=> start!722670 setRes!56546))

(declare-fun e!4442862 () Bool)

(assert (=> start!722670 e!4442862))

(declare-fun b!7440229 () Bool)

(declare-fun res!2986224 () Bool)

(declare-fun e!4442859 () Bool)

(assert (=> b!7440229 (=> (not res!2986224) (not e!4442859))))

(declare-fun lt!2619324 () Context!16776)

(declare-fun lt!2619325 () (Set Context!16776))

(assert (=> b!7440229 (= res!2986224 (set.member lt!2619324 lt!2619325))))

(declare-fun e!4442860 () Bool)

(assert (=> b!7440230 (= e!4442860 e!4442859)))

(declare-fun res!2986229 () Bool)

(assert (=> b!7440230 (=> (not res!2986229) (not e!4442859))))

(declare-fun lambda!460362 () Int)

(declare-fun flatMap!3232 ((Set Context!16776) Int) (Set Context!16776))

(assert (=> b!7440230 (= res!2986229 (set.member lt!2619324 (flatMap!3232 z!3488 lambda!460362)))))

(declare-datatypes ((List!72116 0))(
  ( (Nil!71992) (Cons!71992 (h!78440 Context!16776) (t!386679 List!72116)) )
))
(declare-fun head!15258 (List!72116) Context!16776)

(declare-fun toList!11785 ((Set Context!16776)) List!72116)

(assert (=> b!7440230 (= lt!2619324 (head!15258 (toList!11785 lt!2619325)))))

(declare-fun e!4442857 () Bool)

(assert (=> b!7440231 (= e!4442859 (not e!4442857))))

(declare-fun res!2986228 () Bool)

(assert (=> b!7440231 (=> res!2986228 e!4442857)))

(declare-fun lambda!460363 () Int)

(declare-fun exists!4803 ((Set Context!16776) Int) Bool)

(assert (=> b!7440231 (= res!2986228 (not (exists!4803 z!3488 lambda!460363)))))

(declare-fun empty!3651 () Context!16776)

(declare-fun flatMapPost!233 ((Set Context!16776) Int Context!16776) Context!16776)

(assert (=> b!7440231 (= (flatMapPost!233 z!3488 lambda!460362 lt!2619324) empty!3651)))

(assert (=> b!7440231 true))

(declare-fun e!4442858 () Bool)

(declare-fun inv!91982 (Context!16776) Bool)

(assert (=> b!7440231 (and (inv!91982 empty!3651) e!4442858)))

(declare-fun b!7440232 () Bool)

(assert (=> b!7440232 (= e!4442857 (inv!91982 lt!2619323))))

(declare-fun setIsEmpty!56546 () Bool)

(assert (=> setIsEmpty!56546 setRes!56546))

(declare-fun b!7440233 () Bool)

(declare-fun tp_is_empty!49155 () Bool)

(declare-fun tp!2150507 () Bool)

(assert (=> b!7440233 (= e!4442862 (and tp_is_empty!49155 tp!2150507))))

(declare-fun b!7440234 () Bool)

(declare-fun res!2986225 () Bool)

(assert (=> b!7440234 (=> (not res!2986225) (not e!4442860))))

(assert (=> b!7440234 (= res!2986225 (not (= lt!2619325 (as set.empty (Set Context!16776)))))))

(declare-fun b!7440235 () Bool)

(declare-fun tp!2150510 () Bool)

(assert (=> b!7440235 (= e!4442858 tp!2150510)))

(declare-fun b!7440236 () Bool)

(declare-fun e!4442861 () Bool)

(declare-fun tp!2150508 () Bool)

(assert (=> b!7440236 (= e!4442861 tp!2150508)))

(declare-fun b!7440237 () Bool)

(assert (=> b!7440237 (= e!4442863 e!4442860)))

(declare-fun res!2986227 () Bool)

(assert (=> b!7440237 (=> (not res!2986227) (not e!4442860))))

(declare-fun derivationStepZipperUp!2838 (Context!16776 C!39170) (Set Context!16776))

(assert (=> b!7440237 (= res!2986227 (= (derivationStepZipperUp!2838 lt!2619323 (h!78439 s!7945)) (as set.empty (Set Context!16776))))))

(declare-fun derivationStepZipper!3708 ((Set Context!16776) C!39170) (Set Context!16776))

(assert (=> b!7440237 (= lt!2619325 (derivationStepZipper!3708 z!3488 (h!78439 s!7945)))))

(declare-fun setNonEmpty!56546 () Bool)

(declare-fun setElem!56546 () Context!16776)

(declare-fun tp!2150509 () Bool)

(assert (=> setNonEmpty!56546 (= setRes!56546 (and tp!2150509 (inv!91982 setElem!56546) e!4442861))))

(declare-fun setRest!56546 () (Set Context!16776))

(assert (=> setNonEmpty!56546 (= z!3488 (set.union (set.insert setElem!56546 (as set.empty (Set Context!16776))) setRest!56546))))

(assert (= (and start!722670 res!2986226) b!7440237))

(assert (= (and b!7440237 res!2986227) b!7440234))

(assert (= (and b!7440234 res!2986225) b!7440230))

(assert (= (and b!7440230 res!2986229) b!7440229))

(assert (= (and b!7440229 res!2986224) b!7440231))

(assert (= b!7440231 b!7440235))

(assert (= (and b!7440231 (not res!2986228)) b!7440232))

(assert (= (and start!722670 condSetEmpty!56546) setIsEmpty!56546))

(assert (= (and start!722670 (not condSetEmpty!56546)) setNonEmpty!56546))

(assert (= setNonEmpty!56546 b!7440236))

(assert (= (and start!722670 (is-Cons!71991 s!7945)) b!7440233))

(declare-fun m!8052466 () Bool)

(assert (=> b!7440229 m!8052466))

(declare-fun m!8052468 () Bool)

(assert (=> start!722670 m!8052468))

(declare-fun m!8052470 () Bool)

(assert (=> b!7440237 m!8052470))

(declare-fun m!8052472 () Bool)

(assert (=> b!7440237 m!8052472))

(declare-fun m!8052474 () Bool)

(assert (=> b!7440230 m!8052474))

(declare-fun m!8052476 () Bool)

(assert (=> b!7440230 m!8052476))

(declare-fun m!8052478 () Bool)

(assert (=> b!7440230 m!8052478))

(assert (=> b!7440230 m!8052478))

(declare-fun m!8052480 () Bool)

(assert (=> b!7440230 m!8052480))

(declare-fun m!8052482 () Bool)

(assert (=> b!7440231 m!8052482))

(declare-fun m!8052484 () Bool)

(assert (=> b!7440231 m!8052484))

(declare-fun m!8052486 () Bool)

(assert (=> b!7440231 m!8052486))

(declare-fun m!8052488 () Bool)

(assert (=> setNonEmpty!56546 m!8052488))

(declare-fun m!8052490 () Bool)

(assert (=> b!7440232 m!8052490))

(push 1)

(assert (not b!7440235))

(assert (not b!7440230))

(assert (not setNonEmpty!56546))

(assert (not b!7440236))

(assert (not b!7440232))

(assert (not b!7440231))

(assert (not b!7440237))

(assert (not b!7440233))

(assert tp_is_empty!49155)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

