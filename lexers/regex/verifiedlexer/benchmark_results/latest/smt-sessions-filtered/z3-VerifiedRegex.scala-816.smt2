; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45460 () Bool)

(assert start!45460)

(declare-fun b!473290 () Bool)

(declare-fun res!210145 () Bool)

(declare-fun e!289365 () Bool)

(assert (=> b!473290 (=> (not res!210145) (not e!289365))))

(declare-fun e!289367 () Bool)

(assert (=> b!473290 (= res!210145 e!289367)))

(declare-fun res!210144 () Bool)

(assert (=> b!473290 (=> res!210144 e!289367)))

(declare-datatypes ((C!3180 0))(
  ( (C!3181 (val!1576 Int)) )
))
(declare-datatypes ((Regex!1129 0))(
  ( (ElementMatch!1129 (c!94930 C!3180)) (Concat!2029 (regOne!2770 Regex!1129) (regTwo!2770 Regex!1129)) (EmptyExpr!1129) (Star!1129 (reg!1458 Regex!1129)) (EmptyLang!1129) (Union!1129 (regOne!2771 Regex!1129) (regTwo!2771 Regex!1129)) )
))
(declare-fun r!20230 () Regex!1129)

(declare-fun lostCause!123 (Regex!1129) Bool)

(assert (=> b!473290 (= res!210144 (lostCause!123 (regOne!2770 r!20230)))))

(declare-fun b!473291 () Bool)

(declare-fun res!210143 () Bool)

(assert (=> b!473291 (=> (not res!210143) (not e!289365))))

(get-info :version)

(assert (=> b!473291 (= res!210143 (and (not ((_ is EmptyLang!1129) r!20230)) (not ((_ is EmptyExpr!1129) r!20230)) (not ((_ is ElementMatch!1129) r!20230)) (not ((_ is Union!1129) r!20230)) (not ((_ is Star!1129) r!20230))))))

(declare-fun b!473293 () Bool)

(declare-fun e!289366 () Bool)

(declare-fun tp_is_empty!2255 () Bool)

(assert (=> b!473293 (= e!289366 tp_is_empty!2255)))

(declare-fun b!473294 () Bool)

(assert (=> b!473294 (= e!289365 false)))

(declare-fun b!473295 () Bool)

(declare-fun tp!131268 () Bool)

(declare-fun tp!131269 () Bool)

(assert (=> b!473295 (= e!289366 (and tp!131268 tp!131269))))

(declare-fun b!473296 () Bool)

(declare-fun tp!131271 () Bool)

(assert (=> b!473296 (= e!289366 tp!131271)))

(declare-fun b!473292 () Bool)

(assert (=> b!473292 (= e!289367 (lostCause!123 (regTwo!2770 r!20230)))))

(declare-fun res!210147 () Bool)

(assert (=> start!45460 (=> (not res!210147) (not e!289365))))

(declare-fun validRegex!357 (Regex!1129) Bool)

(assert (=> start!45460 (= res!210147 (validRegex!357 r!20230))))

(assert (=> start!45460 e!289365))

(assert (=> start!45460 e!289366))

(declare-fun b!473297 () Bool)

(declare-fun tp!131267 () Bool)

(declare-fun tp!131270 () Bool)

(assert (=> b!473297 (= e!289366 (and tp!131267 tp!131270))))

(declare-fun b!473298 () Bool)

(declare-fun res!210146 () Bool)

(assert (=> b!473298 (=> (not res!210146) (not e!289365))))

(assert (=> b!473298 (= res!210146 (lostCause!123 r!20230))))

(assert (= (and start!45460 res!210147) b!473298))

(assert (= (and b!473298 res!210146) b!473291))

(assert (= (and b!473291 res!210143) b!473290))

(assert (= (and b!473290 (not res!210144)) b!473292))

(assert (= (and b!473290 res!210145) b!473294))

(assert (= (and start!45460 ((_ is ElementMatch!1129) r!20230)) b!473293))

(assert (= (and start!45460 ((_ is Concat!2029) r!20230)) b!473295))

(assert (= (and start!45460 ((_ is Star!1129) r!20230)) b!473296))

(assert (= (and start!45460 ((_ is Union!1129) r!20230)) b!473297))

(declare-fun m!746579 () Bool)

(assert (=> b!473290 m!746579))

(declare-fun m!746581 () Bool)

(assert (=> b!473292 m!746581))

(declare-fun m!746583 () Bool)

(assert (=> start!45460 m!746583))

(declare-fun m!746585 () Bool)

(assert (=> b!473298 m!746585))

(check-sat (not start!45460) (not b!473292) (not b!473290) (not b!473296) (not b!473297) (not b!473298) tp_is_empty!2255 (not b!473295))
(check-sat)
