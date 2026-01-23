; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544184 () Bool)

(assert start!544184)

(declare-fun b!5139317 () Bool)

(declare-fun e!3205497 () Bool)

(declare-datatypes ((C!29156 0))(
  ( (C!29157 (val!24230 Int)) )
))
(declare-datatypes ((Regex!14445 0))(
  ( (ElementMatch!14445 (c!884967 C!29156)) (Concat!23290 (regOne!29402 Regex!14445) (regTwo!29402 Regex!14445)) (EmptyExpr!14445) (Star!14445 (reg!14774 Regex!14445)) (EmptyLang!14445) (Union!14445 (regOne!29403 Regex!14445) (regTwo!29403 Regex!14445)) )
))
(declare-datatypes ((List!59819 0))(
  ( (Nil!59695) (Cons!59695 (h!66143 Regex!14445) (t!372852 List!59819)) )
))
(declare-datatypes ((Context!7658 0))(
  ( (Context!7659 (exprs!4329 List!59819)) )
))
(declare-fun ctx!100 () Context!7658)

(declare-fun lostCause!1442 (Context!7658) Bool)

(assert (=> b!5139317 (= e!3205497 (lostCause!1442 ctx!100))))

(declare-fun b!5139318 () Bool)

(declare-fun e!3205500 () Bool)

(declare-fun e!3205501 () Bool)

(assert (=> b!5139318 (= e!3205500 (not e!3205501))))

(declare-fun res!2188812 () Bool)

(assert (=> b!5139318 (=> res!2188812 e!3205501)))

(declare-fun expr!117 () Regex!14445)

(declare-fun validRegex!6300 (Regex!14445) Bool)

(assert (=> b!5139318 (= res!2188812 (not (validRegex!6300 (regTwo!29402 expr!117))))))

(declare-fun lostCause!1443 (Regex!14445) Bool)

(assert (=> b!5139318 (not (lostCause!1443 (regOne!29402 expr!117)))))

(declare-datatypes ((Unit!151081 0))(
  ( (Unit!151082) )
))
(declare-fun lt!2120236 () Unit!151081)

(declare-fun lemmaNullableThenNotLostCause!68 (Regex!14445) Unit!151081)

(assert (=> b!5139318 (= lt!2120236 (lemmaNullableThenNotLostCause!68 (regOne!29402 expr!117)))))

(declare-fun b!5139320 () Bool)

(declare-fun res!2188811 () Bool)

(assert (=> b!5139320 (=> (not res!2188811) (not e!3205500))))

(assert (=> b!5139320 (= res!2188811 e!3205497)))

(declare-fun res!2188809 () Bool)

(assert (=> b!5139320 (=> res!2188809 e!3205497)))

(assert (=> b!5139320 (= res!2188809 (lostCause!1443 expr!117))))

(declare-fun b!5139321 () Bool)

(declare-fun e!3205498 () Bool)

(declare-fun tp_is_empty!38039 () Bool)

(assert (=> b!5139321 (= e!3205498 tp_is_empty!38039)))

(declare-fun b!5139322 () Bool)

(declare-fun tp!1433502 () Bool)

(assert (=> b!5139322 (= e!3205498 tp!1433502)))

(declare-fun b!5139323 () Bool)

(declare-fun tp!1433500 () Bool)

(declare-fun tp!1433501 () Bool)

(assert (=> b!5139323 (= e!3205498 (and tp!1433500 tp!1433501))))

(declare-fun b!5139324 () Bool)

(declare-fun tp!1433504 () Bool)

(declare-fun tp!1433505 () Bool)

(assert (=> b!5139324 (= e!3205498 (and tp!1433504 tp!1433505))))

(declare-fun b!5139325 () Bool)

(declare-fun res!2188814 () Bool)

(assert (=> b!5139325 (=> (not res!2188814) (not e!3205500))))

(declare-fun a!1296 () C!29156)

(get-info :version)

(assert (=> b!5139325 (= res!2188814 (and (or (not ((_ is ElementMatch!14445) expr!117)) (not (= (c!884967 expr!117) a!1296))) (not ((_ is Union!14445) expr!117)) ((_ is Concat!23290) expr!117)))))

(declare-fun res!2188813 () Bool)

(assert (=> start!544184 (=> (not res!2188813) (not e!3205500))))

(assert (=> start!544184 (= res!2188813 (validRegex!6300 expr!117))))

(assert (=> start!544184 e!3205500))

(assert (=> start!544184 e!3205498))

(declare-fun e!3205499 () Bool)

(declare-fun inv!79293 (Context!7658) Bool)

(assert (=> start!544184 (and (inv!79293 ctx!100) e!3205499)))

(assert (=> start!544184 tp_is_empty!38039))

(declare-fun b!5139319 () Bool)

(declare-fun tp!1433503 () Bool)

(assert (=> b!5139319 (= e!3205499 tp!1433503)))

(declare-fun b!5139326 () Bool)

(assert (=> b!5139326 (= e!3205501 true)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1257 ((InoxSet Context!7658)) Bool)

(declare-fun derivationStepZipperDown!138 (Regex!14445 Context!7658 C!29156) (InoxSet Context!7658))

(assert (=> b!5139326 (lostCauseZipper!1257 (derivationStepZipperDown!138 (regTwo!29402 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120235 () Unit!151081)

(declare-fun lemmaLostCauseFixPointDerivDown!30 (Regex!14445 Context!7658 C!29156) Unit!151081)

(assert (=> b!5139326 (= lt!2120235 (lemmaLostCauseFixPointDerivDown!30 (regTwo!29402 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120233 () Context!7658)

(assert (=> b!5139326 (lostCauseZipper!1257 (derivationStepZipperDown!138 (regOne!29402 expr!117) lt!2120233 a!1296))))

(declare-fun lt!2120234 () Unit!151081)

(assert (=> b!5139326 (= lt!2120234 (lemmaLostCauseFixPointDerivDown!30 (regOne!29402 expr!117) lt!2120233 a!1296))))

(declare-fun $colon$colon!1183 (List!59819 Regex!14445) List!59819)

(assert (=> b!5139326 (= lt!2120233 (Context!7659 ($colon$colon!1183 (exprs!4329 ctx!100) (regTwo!29402 expr!117))))))

(declare-fun b!5139327 () Bool)

(declare-fun res!2188810 () Bool)

(assert (=> b!5139327 (=> (not res!2188810) (not e!3205500))))

(declare-fun nullable!4804 (Regex!14445) Bool)

(assert (=> b!5139327 (= res!2188810 (nullable!4804 (regOne!29402 expr!117)))))

(assert (= (and start!544184 res!2188813) b!5139320))

(assert (= (and b!5139320 (not res!2188809)) b!5139317))

(assert (= (and b!5139320 res!2188811) b!5139325))

(assert (= (and b!5139325 res!2188814) b!5139327))

(assert (= (and b!5139327 res!2188810) b!5139318))

(assert (= (and b!5139318 (not res!2188812)) b!5139326))

(assert (= (and start!544184 ((_ is ElementMatch!14445) expr!117)) b!5139321))

(assert (= (and start!544184 ((_ is Concat!23290) expr!117)) b!5139324))

(assert (= (and start!544184 ((_ is Star!14445) expr!117)) b!5139322))

(assert (= (and start!544184 ((_ is Union!14445) expr!117)) b!5139323))

(assert (= start!544184 b!5139319))

(declare-fun m!6203870 () Bool)

(assert (=> b!5139326 m!6203870))

(declare-fun m!6203872 () Bool)

(assert (=> b!5139326 m!6203872))

(declare-fun m!6203874 () Bool)

(assert (=> b!5139326 m!6203874))

(declare-fun m!6203876 () Bool)

(assert (=> b!5139326 m!6203876))

(declare-fun m!6203878 () Bool)

(assert (=> b!5139326 m!6203878))

(declare-fun m!6203880 () Bool)

(assert (=> b!5139326 m!6203880))

(assert (=> b!5139326 m!6203870))

(assert (=> b!5139326 m!6203878))

(declare-fun m!6203882 () Bool)

(assert (=> b!5139326 m!6203882))

(declare-fun m!6203884 () Bool)

(assert (=> b!5139327 m!6203884))

(declare-fun m!6203886 () Bool)

(assert (=> start!544184 m!6203886))

(declare-fun m!6203888 () Bool)

(assert (=> start!544184 m!6203888))

(declare-fun m!6203890 () Bool)

(assert (=> b!5139318 m!6203890))

(declare-fun m!6203892 () Bool)

(assert (=> b!5139318 m!6203892))

(declare-fun m!6203894 () Bool)

(assert (=> b!5139318 m!6203894))

(declare-fun m!6203896 () Bool)

(assert (=> b!5139320 m!6203896))

(declare-fun m!6203898 () Bool)

(assert (=> b!5139317 m!6203898))

(check-sat (not b!5139327) tp_is_empty!38039 (not start!544184) (not b!5139326) (not b!5139323) (not b!5139322) (not b!5139319) (not b!5139317) (not b!5139320) (not b!5139318) (not b!5139324))
(check-sat)
