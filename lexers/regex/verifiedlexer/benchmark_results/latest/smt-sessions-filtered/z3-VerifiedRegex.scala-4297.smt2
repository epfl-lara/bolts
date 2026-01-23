; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230360 () Bool)

(assert start!230360)

(declare-fun b!2331508 () Bool)

(declare-fun res!995249 () Bool)

(declare-fun e!1493612 () Bool)

(assert (=> b!2331508 (=> (not res!995249) (not e!1493612))))

(declare-datatypes ((C!13824 0))(
  ( (C!13825 (val!8072 Int)) )
))
(declare-datatypes ((Regex!6833 0))(
  ( (ElementMatch!6833 (c!370417 C!13824)) (Concat!11455 (regOne!14178 Regex!6833) (regTwo!14178 Regex!6833)) (EmptyExpr!6833) (Star!6833 (reg!7162 Regex!6833)) (EmptyLang!6833) (Union!6833 (regOne!14179 Regex!6833) (regTwo!14179 Regex!6833)) )
))
(declare-fun r!26197 () Regex!6833)

(declare-fun c!13498 () C!13824)

(declare-fun nullable!1912 (Regex!6833) Bool)

(declare-fun derivativeStep!1572 (Regex!6833 C!13824) Regex!6833)

(assert (=> b!2331508 (= res!995249 (nullable!1912 (derivativeStep!1572 (regTwo!14178 r!26197) c!13498)))))

(declare-fun res!995253 () Bool)

(assert (=> start!230360 (=> (not res!995253) (not e!1493612))))

(declare-fun validRegex!2578 (Regex!6833) Bool)

(assert (=> start!230360 (= res!995253 (validRegex!2578 r!26197))))

(assert (=> start!230360 e!1493612))

(declare-fun e!1493611 () Bool)

(assert (=> start!230360 e!1493611))

(declare-fun tp_is_empty!10977 () Bool)

(assert (=> start!230360 tp_is_empty!10977))

(declare-fun b!2331509 () Bool)

(declare-fun tp!738867 () Bool)

(declare-fun tp!738868 () Bool)

(assert (=> b!2331509 (= e!1493611 (and tp!738867 tp!738868))))

(declare-fun b!2331510 () Bool)

(declare-fun res!995254 () Bool)

(assert (=> b!2331510 (=> (not res!995254) (not e!1493612))))

(assert (=> b!2331510 (= res!995254 (nullable!1912 (derivativeStep!1572 r!26197 c!13498)))))

(declare-fun b!2331511 () Bool)

(declare-fun res!995250 () Bool)

(assert (=> b!2331511 (=> (not res!995250) (not e!1493612))))

(assert (=> b!2331511 (= res!995250 (not (nullable!1912 (Concat!11455 (derivativeStep!1572 (regOne!14178 r!26197) c!13498) (regTwo!14178 r!26197)))))))

(declare-fun b!2331512 () Bool)

(assert (=> b!2331512 (= e!1493612 false)))

(declare-fun b!2331513 () Bool)

(declare-fun tp!738870 () Bool)

(assert (=> b!2331513 (= e!1493611 tp!738870)))

(declare-fun b!2331514 () Bool)

(declare-fun tp!738869 () Bool)

(declare-fun tp!738871 () Bool)

(assert (=> b!2331514 (= e!1493611 (and tp!738869 tp!738871))))

(declare-fun b!2331515 () Bool)

(assert (=> b!2331515 (= e!1493611 tp_is_empty!10977)))

(declare-fun b!2331516 () Bool)

(declare-fun res!995251 () Bool)

(assert (=> b!2331516 (=> (not res!995251) (not e!1493612))))

(assert (=> b!2331516 (= res!995251 (not (nullable!1912 r!26197)))))

(declare-fun b!2331517 () Bool)

(declare-fun res!995252 () Bool)

(assert (=> b!2331517 (=> (not res!995252) (not e!1493612))))

(assert (=> b!2331517 (= res!995252 (nullable!1912 (regOne!14178 r!26197)))))

(declare-fun b!2331518 () Bool)

(declare-fun res!995255 () Bool)

(assert (=> b!2331518 (=> (not res!995255) (not e!1493612))))

(get-info :version)

(assert (=> b!2331518 (= res!995255 (and (not ((_ is EmptyExpr!6833) r!26197)) (not ((_ is EmptyLang!6833) r!26197)) (not ((_ is ElementMatch!6833) r!26197)) (not ((_ is Union!6833) r!26197)) (not ((_ is Star!6833) r!26197))))))

(assert (= (and start!230360 res!995253) b!2331516))

(assert (= (and b!2331516 res!995251) b!2331510))

(assert (= (and b!2331510 res!995254) b!2331518))

(assert (= (and b!2331518 res!995255) b!2331517))

(assert (= (and b!2331517 res!995252) b!2331511))

(assert (= (and b!2331511 res!995250) b!2331508))

(assert (= (and b!2331508 res!995249) b!2331512))

(assert (= (and start!230360 ((_ is ElementMatch!6833) r!26197)) b!2331515))

(assert (= (and start!230360 ((_ is Concat!11455) r!26197)) b!2331509))

(assert (= (and start!230360 ((_ is Star!6833) r!26197)) b!2331513))

(assert (= (and start!230360 ((_ is Union!6833) r!26197)) b!2331514))

(declare-fun m!2761001 () Bool)

(assert (=> b!2331516 m!2761001))

(declare-fun m!2761003 () Bool)

(assert (=> b!2331511 m!2761003))

(declare-fun m!2761005 () Bool)

(assert (=> b!2331511 m!2761005))

(declare-fun m!2761007 () Bool)

(assert (=> b!2331517 m!2761007))

(declare-fun m!2761009 () Bool)

(assert (=> b!2331508 m!2761009))

(assert (=> b!2331508 m!2761009))

(declare-fun m!2761011 () Bool)

(assert (=> b!2331508 m!2761011))

(declare-fun m!2761013 () Bool)

(assert (=> start!230360 m!2761013))

(declare-fun m!2761015 () Bool)

(assert (=> b!2331510 m!2761015))

(assert (=> b!2331510 m!2761015))

(declare-fun m!2761017 () Bool)

(assert (=> b!2331510 m!2761017))

(check-sat (not b!2331511) (not b!2331514) (not b!2331513) (not start!230360) tp_is_empty!10977 (not b!2331516) (not b!2331508) (not b!2331509) (not b!2331517) (not b!2331510))
(check-sat)
