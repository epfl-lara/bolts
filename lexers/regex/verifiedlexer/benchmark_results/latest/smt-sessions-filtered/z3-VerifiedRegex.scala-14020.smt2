; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740602 () Bool)

(assert start!740602)

(declare-fun b!7782153 () Bool)

(declare-fun e!4609754 () Bool)

(declare-fun tp_is_empty!52025 () Bool)

(assert (=> b!7782153 (= e!4609754 tp_is_empty!52025)))

(declare-fun b!7782154 () Bool)

(declare-fun tp!2287544 () Bool)

(declare-fun tp!2287549 () Bool)

(assert (=> b!7782154 (= e!4609754 (and tp!2287544 tp!2287549))))

(declare-fun b!7782155 () Bool)

(declare-fun res!3102030 () Bool)

(declare-fun e!4609756 () Bool)

(assert (=> b!7782155 (=> (not res!3102030) (not e!4609756))))

(declare-datatypes ((C!41996 0))(
  ( (C!41997 (val!31438 Int)) )
))
(declare-datatypes ((Regex!20835 0))(
  ( (ElementMatch!20835 (c!1433856 C!41996)) (Concat!29680 (regOne!42182 Regex!20835) (regTwo!42182 Regex!20835)) (EmptyExpr!20835) (Star!20835 (reg!21164 Regex!20835)) (EmptyLang!20835) (Union!20835 (regOne!42183 Regex!20835) (regTwo!42183 Regex!20835)) )
))
(declare-fun r2!6217 () Regex!20835)

(declare-fun nullable!9221 (Regex!20835) Bool)

(assert (=> b!7782155 (= res!3102030 (nullable!9221 r2!6217))))

(declare-fun b!7782156 () Bool)

(declare-fun res!3102028 () Bool)

(assert (=> b!7782156 (=> (not res!3102028) (not e!4609756))))

(declare-datatypes ((List!73674 0))(
  ( (Nil!73550) (Cons!73550 (h!79998 C!41996) (t!388409 List!73674)) )
))
(declare-fun s!14292 () List!73674)

(get-info :version)

(assert (=> b!7782156 (= res!3102028 (not ((_ is Cons!73550) s!14292)))))

(declare-fun res!3102031 () Bool)

(assert (=> start!740602 (=> (not res!3102031) (not e!4609756))))

(declare-fun r1!6279 () Regex!20835)

(declare-fun validRegex!11249 (Regex!20835) Bool)

(assert (=> start!740602 (= res!3102031 (validRegex!11249 r1!6279))))

(assert (=> start!740602 e!4609756))

(assert (=> start!740602 e!4609754))

(declare-fun e!4609755 () Bool)

(assert (=> start!740602 e!4609755))

(declare-fun e!4609757 () Bool)

(assert (=> start!740602 e!4609757))

(declare-fun b!7782157 () Bool)

(declare-fun tp!2287550 () Bool)

(declare-fun tp!2287553 () Bool)

(assert (=> b!7782157 (= e!4609755 (and tp!2287550 tp!2287553))))

(declare-fun b!7782158 () Bool)

(declare-fun tp!2287551 () Bool)

(assert (=> b!7782158 (= e!4609755 tp!2287551)))

(declare-fun b!7782159 () Bool)

(assert (=> b!7782159 (= e!4609756 false)))

(declare-datatypes ((tuple2!69916 0))(
  ( (tuple2!69917 (_1!38261 List!73674) (_2!38261 List!73674)) )
))
(declare-datatypes ((Option!17752 0))(
  ( (None!17751) (Some!17751 (v!54886 tuple2!69916)) )
))
(declare-fun lt!2673208 () Option!17752)

(declare-fun findConcatSeparation!3782 (Regex!20835 Regex!20835 List!73674 List!73674 List!73674) Option!17752)

(assert (=> b!7782159 (= lt!2673208 (findConcatSeparation!3782 r1!6279 r2!6217 Nil!73550 Nil!73550 Nil!73550))))

(declare-fun b!7782160 () Bool)

(declare-fun tp!2287547 () Bool)

(declare-fun tp!2287546 () Bool)

(assert (=> b!7782160 (= e!4609754 (and tp!2287547 tp!2287546))))

(declare-fun b!7782161 () Bool)

(declare-fun res!3102029 () Bool)

(assert (=> b!7782161 (=> (not res!3102029) (not e!4609756))))

(assert (=> b!7782161 (= res!3102029 (nullable!9221 r1!6279))))

(declare-fun b!7782162 () Bool)

(assert (=> b!7782162 (= e!4609755 tp_is_empty!52025)))

(declare-fun b!7782163 () Bool)

(declare-fun res!3102027 () Bool)

(assert (=> b!7782163 (=> (not res!3102027) (not e!4609756))))

(declare-fun matchR!10295 (Regex!20835 List!73674) Bool)

(assert (=> b!7782163 (= res!3102027 (matchR!10295 (Concat!29680 r1!6279 r2!6217) s!14292))))

(declare-fun b!7782164 () Bool)

(declare-fun tp!2287545 () Bool)

(assert (=> b!7782164 (= e!4609757 (and tp_is_empty!52025 tp!2287545))))

(declare-fun b!7782165 () Bool)

(declare-fun tp!2287548 () Bool)

(declare-fun tp!2287543 () Bool)

(assert (=> b!7782165 (= e!4609755 (and tp!2287548 tp!2287543))))

(declare-fun b!7782166 () Bool)

(declare-fun res!3102032 () Bool)

(assert (=> b!7782166 (=> (not res!3102032) (not e!4609756))))

(assert (=> b!7782166 (= res!3102032 (validRegex!11249 r2!6217))))

(declare-fun b!7782167 () Bool)

(declare-fun tp!2287552 () Bool)

(assert (=> b!7782167 (= e!4609754 tp!2287552)))

(assert (= (and start!740602 res!3102031) b!7782166))

(assert (= (and b!7782166 res!3102032) b!7782163))

(assert (= (and b!7782163 res!3102027) b!7782156))

(assert (= (and b!7782156 res!3102028) b!7782161))

(assert (= (and b!7782161 res!3102029) b!7782155))

(assert (= (and b!7782155 res!3102030) b!7782159))

(assert (= (and start!740602 ((_ is ElementMatch!20835) r1!6279)) b!7782153))

(assert (= (and start!740602 ((_ is Concat!29680) r1!6279)) b!7782160))

(assert (= (and start!740602 ((_ is Star!20835) r1!6279)) b!7782167))

(assert (= (and start!740602 ((_ is Union!20835) r1!6279)) b!7782154))

(assert (= (and start!740602 ((_ is ElementMatch!20835) r2!6217)) b!7782162))

(assert (= (and start!740602 ((_ is Concat!29680) r2!6217)) b!7782157))

(assert (= (and start!740602 ((_ is Star!20835) r2!6217)) b!7782158))

(assert (= (and start!740602 ((_ is Union!20835) r2!6217)) b!7782165))

(assert (= (and start!740602 ((_ is Cons!73550) s!14292)) b!7782164))

(declare-fun m!8229602 () Bool)

(assert (=> b!7782155 m!8229602))

(declare-fun m!8229604 () Bool)

(assert (=> b!7782166 m!8229604))

(declare-fun m!8229606 () Bool)

(assert (=> b!7782159 m!8229606))

(declare-fun m!8229608 () Bool)

(assert (=> b!7782161 m!8229608))

(declare-fun m!8229610 () Bool)

(assert (=> start!740602 m!8229610))

(declare-fun m!8229612 () Bool)

(assert (=> b!7782163 m!8229612))

(check-sat (not b!7782167) (not b!7782166) (not b!7782154) (not b!7782161) (not start!740602) (not b!7782159) (not b!7782157) (not b!7782164) (not b!7782158) (not b!7782163) (not b!7782165) tp_is_empty!52025 (not b!7782155) (not b!7782160))
(check-sat)
