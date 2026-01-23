; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279638 () Bool)

(assert start!279638)

(declare-fun b!2866128 () Bool)

(declare-fun e!1814478 () Bool)

(declare-fun tp!922920 () Bool)

(assert (=> b!2866128 (= e!1814478 tp!922920)))

(declare-fun b!2866129 () Bool)

(declare-fun e!1814481 () Bool)

(assert (=> b!2866129 (= e!1814481 true)))

(declare-fun lt!1016801 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17580 0))(
  ( (C!17581 (val!10824 Int)) )
))
(declare-datatypes ((Regex!8699 0))(
  ( (ElementMatch!8699 (c!462768 C!17580)) (Concat!14020 (regOne!17910 Regex!8699) (regTwo!17910 Regex!8699)) (EmptyExpr!8699) (Star!8699 (reg!9028 Regex!8699)) (EmptyLang!8699) (Union!8699 (regOne!17911 Regex!8699) (regTwo!17911 Regex!8699)) )
))
(declare-datatypes ((List!34422 0))(
  ( (Nil!34298) (Cons!34298 (h!39718 Regex!8699) (t!233465 List!34422)) )
))
(declare-datatypes ((Context!5318 0))(
  ( (Context!5319 (exprs!3159 List!34422)) )
))
(declare-fun lt!1016799 () (InoxSet Context!5318))

(declare-datatypes ((List!34423 0))(
  ( (Nil!34299) (Cons!34299 (h!39719 C!17580) (t!233466 List!34423)) )
))
(declare-datatypes ((Option!6378 0))(
  ( (None!6377) (Some!6377 (v!34499 List!34423)) )
))
(declare-fun lt!1016797 () Option!6378)

(declare-fun matchZipper!465 ((InoxSet Context!5318) List!34423) Bool)

(assert (=> b!2866129 (= lt!1016801 (matchZipper!465 lt!1016799 (v!34499 lt!1016797)))))

(declare-fun lt!1016802 () (InoxSet Context!5318))

(declare-fun lt!1016803 () Option!6378)

(assert (=> b!2866129 (matchZipper!465 lt!1016802 (v!34499 lt!1016803))))

(declare-fun c!7184 () Context!5318)

(declare-datatypes ((Unit!47935 0))(
  ( (Unit!47936) )
))
(declare-fun lt!1016796 () Unit!47935)

(declare-fun lt!1016795 () Context!5318)

(declare-datatypes ((List!34424 0))(
  ( (Nil!34300) (Cons!34300 (h!39720 Context!5318) (t!233467 List!34424)) )
))
(declare-fun theoremZipperRegexEquiv!109 ((InoxSet Context!5318) List!34424 Regex!8699 List!34423) Unit!47935)

(assert (=> b!2866129 (= lt!1016796 (theoremZipperRegexEquiv!109 lt!1016802 (Cons!34300 lt!1016795 Nil!34300) (h!39718 (exprs!3159 c!7184)) (v!34499 lt!1016803)))))

(assert (=> b!2866129 (= lt!1016802 (store ((as const (Array Context!5318 Bool)) false) lt!1016795 true))))

(assert (=> b!2866129 (= lt!1016795 (Context!5319 (Cons!34298 (h!39718 (exprs!3159 c!7184)) Nil!34298)))))

(declare-fun b!2866130 () Bool)

(declare-fun e!1814479 () Bool)

(declare-fun e!1814477 () Bool)

(assert (=> b!2866130 (= e!1814479 e!1814477)))

(declare-fun res!1189902 () Bool)

(assert (=> b!2866130 (=> (not res!1189902) (not e!1814477))))

(get-info :version)

(assert (=> b!2866130 (= res!1189902 ((_ is Some!6377) lt!1016797))))

(declare-fun lt!1016804 () Context!5318)

(declare-fun getLanguageWitness!362 (Context!5318) Option!6378)

(assert (=> b!2866130 (= lt!1016797 (getLanguageWitness!362 lt!1016804))))

(assert (=> b!2866130 (= lt!1016804 (Context!5319 (t!233465 (exprs!3159 c!7184))))))

(declare-fun b!2866131 () Bool)

(declare-fun e!1814480 () Bool)

(assert (=> b!2866131 (= e!1814480 e!1814479)))

(declare-fun res!1189904 () Bool)

(assert (=> b!2866131 (=> (not res!1189904) (not e!1814479))))

(assert (=> b!2866131 (= res!1189904 ((_ is Some!6377) lt!1016803))))

(declare-fun getLanguageWitness!363 (Regex!8699) Option!6378)

(assert (=> b!2866131 (= lt!1016803 (getLanguageWitness!363 (h!39718 (exprs!3159 c!7184))))))

(declare-fun b!2866132 () Bool)

(assert (=> b!2866132 (= e!1814477 (not e!1814481))))

(declare-fun res!1189903 () Bool)

(assert (=> b!2866132 (=> res!1189903 e!1814481)))

(declare-fun matchR!3719 (Regex!8699 List!34423) Bool)

(assert (=> b!2866132 (= res!1189903 (not (matchR!3719 (h!39718 (exprs!3159 c!7184)) (v!34499 lt!1016803))))))

(declare-fun get!10295 (Option!6378) List!34423)

(assert (=> b!2866132 (matchZipper!465 lt!1016799 (get!10295 lt!1016797))))

(assert (=> b!2866132 (= lt!1016799 (store ((as const (Array Context!5318 Bool)) false) lt!1016804 true))))

(declare-fun lt!1016798 () Unit!47935)

(declare-fun lemmaGetWitnessMatchesContext!24 (Context!5318) Unit!47935)

(assert (=> b!2866132 (= lt!1016798 (lemmaGetWitnessMatchesContext!24 lt!1016804))))

(assert (=> b!2866132 (matchR!3719 (h!39718 (exprs!3159 c!7184)) (get!10295 lt!1016803))))

(declare-fun lt!1016800 () Unit!47935)

(declare-fun lemmaGetWitnessMatches!26 (Regex!8699) Unit!47935)

(assert (=> b!2866132 (= lt!1016800 (lemmaGetWitnessMatches!26 (h!39718 (exprs!3159 c!7184))))))

(declare-fun b!2866133 () Bool)

(declare-fun res!1189901 () Bool)

(assert (=> b!2866133 (=> (not res!1189901) (not e!1814480))))

(assert (=> b!2866133 (= res!1189901 ((_ is Cons!34298) (exprs!3159 c!7184)))))

(declare-fun res!1189905 () Bool)

(assert (=> start!279638 (=> (not res!1189905) (not e!1814480))))

(declare-fun lostCause!791 (Context!5318) Bool)

(assert (=> start!279638 (= res!1189905 (not (lostCause!791 c!7184)))))

(assert (=> start!279638 e!1814480))

(declare-fun inv!46334 (Context!5318) Bool)

(assert (=> start!279638 (and (inv!46334 c!7184) e!1814478)))

(assert (= (and start!279638 res!1189905) b!2866133))

(assert (= (and b!2866133 res!1189901) b!2866131))

(assert (= (and b!2866131 res!1189904) b!2866130))

(assert (= (and b!2866130 res!1189902) b!2866132))

(assert (= (and b!2866132 (not res!1189903)) b!2866129))

(assert (= start!279638 b!2866128))

(declare-fun m!3286419 () Bool)

(assert (=> b!2866131 m!3286419))

(declare-fun m!3286421 () Bool)

(assert (=> b!2866132 m!3286421))

(declare-fun m!3286423 () Bool)

(assert (=> b!2866132 m!3286423))

(declare-fun m!3286425 () Bool)

(assert (=> b!2866132 m!3286425))

(declare-fun m!3286427 () Bool)

(assert (=> b!2866132 m!3286427))

(declare-fun m!3286429 () Bool)

(assert (=> b!2866132 m!3286429))

(declare-fun m!3286431 () Bool)

(assert (=> b!2866132 m!3286431))

(assert (=> b!2866132 m!3286427))

(declare-fun m!3286433 () Bool)

(assert (=> b!2866132 m!3286433))

(assert (=> b!2866132 m!3286421))

(declare-fun m!3286435 () Bool)

(assert (=> b!2866132 m!3286435))

(declare-fun m!3286437 () Bool)

(assert (=> b!2866129 m!3286437))

(declare-fun m!3286439 () Bool)

(assert (=> b!2866129 m!3286439))

(declare-fun m!3286441 () Bool)

(assert (=> b!2866129 m!3286441))

(declare-fun m!3286443 () Bool)

(assert (=> b!2866129 m!3286443))

(declare-fun m!3286445 () Bool)

(assert (=> start!279638 m!3286445))

(declare-fun m!3286447 () Bool)

(assert (=> start!279638 m!3286447))

(declare-fun m!3286449 () Bool)

(assert (=> b!2866130 m!3286449))

(check-sat (not b!2866131) (not b!2866132) (not b!2866130) (not b!2866129) (not start!279638) (not b!2866128))
(check-sat)
