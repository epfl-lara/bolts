; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741938 () Bool)

(assert start!741938)

(declare-fun b!7819017 () Bool)

(declare-fun e!4626426 () Bool)

(declare-fun tp!2307076 () Bool)

(assert (=> b!7819017 (= e!4626426 tp!2307076)))

(declare-fun b!7819018 () Bool)

(declare-fun res!3112254 () Bool)

(declare-fun e!4626428 () Bool)

(assert (=> b!7819018 (=> (not res!3112254) (not e!4626428))))

(declare-datatypes ((C!42168 0))(
  ( (C!42169 (val!31524 Int)) )
))
(declare-datatypes ((List!73758 0))(
  ( (Nil!73634) (Cons!73634 (h!80082 C!42168) (t!388493 List!73758)) )
))
(declare-fun s1!4101 () List!73758)

(declare-fun s2!3721 () List!73758)

(declare-fun s!14274 () List!73758)

(declare-fun ++!17955 (List!73758 List!73758) List!73758)

(assert (=> b!7819018 (= res!3112254 (= (++!17955 s1!4101 s2!3721) s!14274))))

(declare-fun b!7819019 () Bool)

(declare-fun tp_is_empty!52197 () Bool)

(assert (=> b!7819019 (= e!4626426 tp_is_empty!52197)))

(declare-fun res!3112253 () Bool)

(assert (=> start!741938 (=> (not res!3112253) (not e!4626428))))

(declare-datatypes ((Regex!20921 0))(
  ( (ElementMatch!20921 (c!1439270 C!42168)) (Concat!29766 (regOne!42354 Regex!20921) (regTwo!42354 Regex!20921)) (EmptyExpr!20921) (Star!20921 (reg!21250 Regex!20921)) (EmptyLang!20921) (Union!20921 (regOne!42355 Regex!20921) (regTwo!42355 Regex!20921)) )
))
(declare-fun r1!6261 () Regex!20921)

(declare-fun validRegex!11335 (Regex!20921) Bool)

(assert (=> start!741938 (= res!3112253 (validRegex!11335 r1!6261))))

(assert (=> start!741938 e!4626428))

(declare-fun e!4626427 () Bool)

(assert (=> start!741938 e!4626427))

(declare-fun e!4626432 () Bool)

(assert (=> start!741938 e!4626432))

(declare-fun e!4626433 () Bool)

(assert (=> start!741938 e!4626433))

(declare-fun e!4626429 () Bool)

(assert (=> start!741938 e!4626429))

(declare-fun e!4626430 () Bool)

(assert (=> start!741938 e!4626430))

(assert (=> start!741938 e!4626426))

(declare-fun e!4626431 () Bool)

(assert (=> start!741938 e!4626431))

(declare-fun b!7819020 () Bool)

(declare-fun tp!2307081 () Bool)

(declare-fun tp!2307078 () Bool)

(assert (=> b!7819020 (= e!4626427 (and tp!2307081 tp!2307078))))

(declare-fun b!7819021 () Bool)

(declare-fun tp!2307073 () Bool)

(declare-fun tp!2307077 () Bool)

(assert (=> b!7819021 (= e!4626426 (and tp!2307073 tp!2307077))))

(declare-fun b!7819022 () Bool)

(declare-fun tp!2307083 () Bool)

(declare-fun tp!2307087 () Bool)

(assert (=> b!7819022 (= e!4626426 (and tp!2307083 tp!2307087))))

(declare-fun b!7819023 () Bool)

(declare-fun tp!2307082 () Bool)

(assert (=> b!7819023 (= e!4626433 (and tp_is_empty!52197 tp!2307082))))

(declare-fun b!7819024 () Bool)

(declare-fun tp!2307085 () Bool)

(assert (=> b!7819024 (= e!4626432 (and tp_is_empty!52197 tp!2307085))))

(declare-fun b!7819025 () Bool)

(declare-fun res!3112255 () Bool)

(assert (=> b!7819025 (=> (not res!3112255) (not e!4626428))))

(declare-fun s1Rec!453 () List!73758)

(declare-fun isPrefix!6271 (List!73758 List!73758) Bool)

(assert (=> b!7819025 (= res!3112255 (isPrefix!6271 s1Rec!453 s1!4101))))

(declare-fun b!7819026 () Bool)

(declare-fun res!3112256 () Bool)

(assert (=> b!7819026 (=> (not res!3112256) (not e!4626428))))

(declare-fun r2!6199 () Regex!20921)

(assert (=> b!7819026 (= res!3112256 (validRegex!11335 r2!6199))))

(declare-fun b!7819027 () Bool)

(declare-fun tp!2307080 () Bool)

(assert (=> b!7819027 (= e!4626430 (and tp_is_empty!52197 tp!2307080))))

(declare-fun b!7819028 () Bool)

(assert (=> b!7819028 (= e!4626427 tp_is_empty!52197)))

(declare-fun b!7819029 () Bool)

(declare-fun tp!2307079 () Bool)

(assert (=> b!7819029 (= e!4626427 tp!2307079)))

(declare-fun b!7819030 () Bool)

(assert (=> b!7819030 (= e!4626428 false)))

(declare-fun lt!2676102 () List!73758)

(declare-fun s2Rec!453 () List!73758)

(assert (=> b!7819030 (= lt!2676102 (++!17955 s1Rec!453 s2Rec!453))))

(declare-fun b!7819031 () Bool)

(declare-fun tp!2307075 () Bool)

(assert (=> b!7819031 (= e!4626429 (and tp_is_empty!52197 tp!2307075))))

(declare-fun b!7819032 () Bool)

(declare-fun tp!2307084 () Bool)

(declare-fun tp!2307074 () Bool)

(assert (=> b!7819032 (= e!4626427 (and tp!2307084 tp!2307074))))

(declare-fun b!7819033 () Bool)

(declare-fun tp!2307086 () Bool)

(assert (=> b!7819033 (= e!4626431 (and tp_is_empty!52197 tp!2307086))))

(assert (= (and start!741938 res!3112253) b!7819026))

(assert (= (and b!7819026 res!3112256) b!7819018))

(assert (= (and b!7819018 res!3112254) b!7819025))

(assert (= (and b!7819025 res!3112255) b!7819030))

(get-info :version)

(assert (= (and start!741938 ((_ is ElementMatch!20921) r2!6199)) b!7819028))

(assert (= (and start!741938 ((_ is Concat!29766) r2!6199)) b!7819032))

(assert (= (and start!741938 ((_ is Star!20921) r2!6199)) b!7819029))

(assert (= (and start!741938 ((_ is Union!20921) r2!6199)) b!7819020))

(assert (= (and start!741938 ((_ is Cons!73634) s1!4101)) b!7819024))

(assert (= (and start!741938 ((_ is Cons!73634) s2!3721)) b!7819023))

(assert (= (and start!741938 ((_ is Cons!73634) s2Rec!453)) b!7819031))

(assert (= (and start!741938 ((_ is Cons!73634) s!14274)) b!7819027))

(assert (= (and start!741938 ((_ is ElementMatch!20921) r1!6261)) b!7819019))

(assert (= (and start!741938 ((_ is Concat!29766) r1!6261)) b!7819021))

(assert (= (and start!741938 ((_ is Star!20921) r1!6261)) b!7819017))

(assert (= (and start!741938 ((_ is Union!20921) r1!6261)) b!7819022))

(assert (= (and start!741938 ((_ is Cons!73634) s1Rec!453)) b!7819033))

(declare-fun m!8244392 () Bool)

(assert (=> start!741938 m!8244392))

(declare-fun m!8244394 () Bool)

(assert (=> b!7819026 m!8244394))

(declare-fun m!8244396 () Bool)

(assert (=> b!7819025 m!8244396))

(declare-fun m!8244398 () Bool)

(assert (=> b!7819018 m!8244398))

(declare-fun m!8244400 () Bool)

(assert (=> b!7819030 m!8244400))

(check-sat (not b!7819024) tp_is_empty!52197 (not b!7819022) (not b!7819020) (not b!7819029) (not start!741938) (not b!7819032) (not b!7819027) (not b!7819033) (not b!7819018) (not b!7819026) (not b!7819021) (not b!7819017) (not b!7819030) (not b!7819023) (not b!7819031) (not b!7819025))
(check-sat)
