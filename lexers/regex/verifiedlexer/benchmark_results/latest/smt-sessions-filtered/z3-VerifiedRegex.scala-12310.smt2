; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691104 () Bool)

(assert start!691104)

(declare-fun b!7099635 () Bool)

(declare-fun res!2898964 () Bool)

(declare-fun e!4267431 () Bool)

(assert (=> b!7099635 (=> (not res!2898964) (not e!4267431))))

(declare-datatypes ((C!35996 0))(
  ( (C!35997 (val!27704 Int)) )
))
(declare-datatypes ((Regex!17863 0))(
  ( (ElementMatch!17863 (c!1324796 C!35996)) (Concat!26708 (regOne!36238 Regex!17863) (regTwo!36238 Regex!17863)) (EmptyExpr!17863) (Star!17863 (reg!18192 Regex!17863)) (EmptyLang!17863) (Union!17863 (regOne!36239 Regex!17863) (regTwo!36239 Regex!17863)) )
))
(declare-fun r!11554 () Regex!17863)

(declare-fun a!1901 () C!35996)

(get-info :version)

(assert (=> b!7099635 (= res!2898964 (and (or (not ((_ is ElementMatch!17863) r!11554)) (not (= (c!1324796 r!11554) a!1901))) (not ((_ is Union!17863) r!11554))))))

(declare-fun b!7099636 () Bool)

(declare-fun res!2898965 () Bool)

(assert (=> b!7099636 (=> (not res!2898965) (not e!4267431))))

(declare-fun e!4267430 () Bool)

(assert (=> b!7099636 (= res!2898965 e!4267430)))

(declare-fun res!2898960 () Bool)

(assert (=> b!7099636 (=> res!2898960 e!4267430)))

(assert (=> b!7099636 (= res!2898960 (not ((_ is Concat!26708) r!11554)))))

(declare-fun res!2898966 () Bool)

(assert (=> start!691104 (=> (not res!2898966) (not e!4267431))))

(declare-fun validRegex!9138 (Regex!17863) Bool)

(assert (=> start!691104 (= res!2898966 (validRegex!9138 r!11554))))

(assert (=> start!691104 e!4267431))

(declare-fun e!4267427 () Bool)

(assert (=> start!691104 e!4267427))

(declare-fun tp_is_empty!44959 () Bool)

(assert (=> start!691104 tp_is_empty!44959))

(declare-datatypes ((List!68826 0))(
  ( (Nil!68702) (Cons!68702 (h!75150 Regex!17863) (t!382637 List!68826)) )
))
(declare-datatypes ((Context!13718 0))(
  ( (Context!13719 (exprs!7359 List!68826)) )
))
(declare-fun c!9994 () Context!13718)

(declare-fun e!4267432 () Bool)

(declare-fun inv!87522 (Context!13718) Bool)

(assert (=> start!691104 (and (inv!87522 c!9994) e!4267432)))

(declare-fun auxCtx!45 () Context!13718)

(declare-fun e!4267434 () Bool)

(assert (=> start!691104 (and (inv!87522 auxCtx!45) e!4267434)))

(declare-fun b!7099637 () Bool)

(declare-fun e!4267428 () Bool)

(assert (=> b!7099637 (= e!4267428 true)))

(declare-datatypes ((Unit!162401 0))(
  ( (Unit!162402) )
))
(declare-fun lt!2557952 () Unit!162401)

(declare-fun lambda!430865 () Int)

(declare-fun lemmaConcatPreservesForall!1154 (List!68826 List!68826 Int) Unit!162401)

(assert (=> b!7099637 (= lt!2557952 (lemmaConcatPreservesForall!1154 (exprs!7359 c!9994) (exprs!7359 auxCtx!45) lambda!430865))))

(declare-fun b!7099638 () Bool)

(declare-fun e!4267433 () Bool)

(assert (=> b!7099638 (= e!4267431 e!4267433)))

(declare-fun res!2898959 () Bool)

(assert (=> b!7099638 (=> (not res!2898959) (not e!4267433))))

(assert (=> b!7099638 (= res!2898959 (validRegex!9138 r!11554))))

(declare-fun lt!2557958 () List!68826)

(declare-fun ++!16023 (List!68826 List!68826) List!68826)

(assert (=> b!7099638 (= lt!2557958 (++!16023 (exprs!7359 c!9994) (exprs!7359 auxCtx!45)))))

(declare-fun lt!2557956 () Unit!162401)

(assert (=> b!7099638 (= lt!2557956 (lemmaConcatPreservesForall!1154 (exprs!7359 c!9994) (exprs!7359 auxCtx!45) lambda!430865))))

(declare-fun lt!2557955 () Unit!162401)

(assert (=> b!7099638 (= lt!2557955 (lemmaConcatPreservesForall!1154 (exprs!7359 c!9994) (exprs!7359 auxCtx!45) lambda!430865))))

(declare-fun b!7099639 () Bool)

(declare-fun res!2898962 () Bool)

(assert (=> b!7099639 (=> (not res!2898962) (not e!4267431))))

(assert (=> b!7099639 (= res!2898962 (and (not ((_ is Concat!26708) r!11554)) ((_ is Star!17863) r!11554)))))

(declare-fun b!7099640 () Bool)

(declare-fun e!4267429 () Bool)

(assert (=> b!7099640 (= e!4267433 e!4267429)))

(declare-fun res!2898961 () Bool)

(assert (=> b!7099640 (=> (not res!2898961) (not e!4267429))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2557953 () (InoxSet Context!13718))

(declare-fun derivationStepZipperDown!2402 (Regex!17863 Context!13718 C!35996) (InoxSet Context!13718))

(declare-fun $colon$colon!2746 (List!68826 Regex!17863) List!68826)

(assert (=> b!7099640 (= res!2898961 (= lt!2557953 (derivationStepZipperDown!2402 (reg!18192 r!11554) (Context!13719 ($colon$colon!2746 lt!2557958 r!11554)) a!1901)))))

(assert (=> b!7099640 (= lt!2557953 (derivationStepZipperDown!2402 r!11554 (Context!13719 lt!2557958) a!1901))))

(declare-fun b!7099641 () Bool)

(assert (=> b!7099641 (= e!4267429 (not e!4267428))))

(declare-fun res!2898963 () Bool)

(assert (=> b!7099641 (=> res!2898963 e!4267428)))

(declare-fun appendTo!906 ((InoxSet Context!13718) Context!13718) (InoxSet Context!13718))

(assert (=> b!7099641 (= res!2898963 (not (= lt!2557953 (appendTo!906 (derivationStepZipperDown!2402 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2557954 () Unit!162401)

(assert (=> b!7099641 (= lt!2557954 (lemmaConcatPreservesForall!1154 (exprs!7359 c!9994) (exprs!7359 auxCtx!45) lambda!430865))))

(declare-fun lt!2557957 () Context!13718)

(declare-fun lt!2557950 () List!68826)

(assert (=> b!7099641 (= (derivationStepZipperDown!2402 (reg!18192 r!11554) (Context!13719 (++!16023 lt!2557950 (exprs!7359 auxCtx!45))) a!1901) (appendTo!906 (derivationStepZipperDown!2402 (reg!18192 r!11554) lt!2557957 a!1901) auxCtx!45))))

(declare-fun lt!2557949 () Unit!162401)

(assert (=> b!7099641 (= lt!2557949 (lemmaConcatPreservesForall!1154 lt!2557950 (exprs!7359 auxCtx!45) lambda!430865))))

(declare-fun lt!2557951 () Unit!162401)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!214 (Context!13718 Regex!17863 C!35996 Context!13718) Unit!162401)

(assert (=> b!7099641 (= lt!2557951 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!214 lt!2557957 (reg!18192 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7099641 (= lt!2557957 (Context!13719 lt!2557950))))

(assert (=> b!7099641 (= lt!2557950 ($colon$colon!2746 (exprs!7359 c!9994) r!11554))))

(declare-fun b!7099642 () Bool)

(declare-fun tp!1951478 () Bool)

(assert (=> b!7099642 (= e!4267427 tp!1951478)))

(declare-fun b!7099643 () Bool)

(declare-fun tp!1951475 () Bool)

(declare-fun tp!1951473 () Bool)

(assert (=> b!7099643 (= e!4267427 (and tp!1951475 tp!1951473))))

(declare-fun b!7099644 () Bool)

(assert (=> b!7099644 (= e!4267427 tp_is_empty!44959)))

(declare-fun b!7099645 () Bool)

(declare-fun tp!1951476 () Bool)

(assert (=> b!7099645 (= e!4267432 tp!1951476)))

(declare-fun b!7099646 () Bool)

(declare-fun tp!1951472 () Bool)

(assert (=> b!7099646 (= e!4267434 tp!1951472)))

(declare-fun b!7099647 () Bool)

(declare-fun nullable!7503 (Regex!17863) Bool)

(assert (=> b!7099647 (= e!4267430 (not (nullable!7503 (regOne!36238 r!11554))))))

(declare-fun b!7099648 () Bool)

(declare-fun tp!1951477 () Bool)

(declare-fun tp!1951474 () Bool)

(assert (=> b!7099648 (= e!4267427 (and tp!1951477 tp!1951474))))

(assert (= (and start!691104 res!2898966) b!7099635))

(assert (= (and b!7099635 res!2898964) b!7099636))

(assert (= (and b!7099636 (not res!2898960)) b!7099647))

(assert (= (and b!7099636 res!2898965) b!7099639))

(assert (= (and b!7099639 res!2898962) b!7099638))

(assert (= (and b!7099638 res!2898959) b!7099640))

(assert (= (and b!7099640 res!2898961) b!7099641))

(assert (= (and b!7099641 (not res!2898963)) b!7099637))

(assert (= (and start!691104 ((_ is ElementMatch!17863) r!11554)) b!7099644))

(assert (= (and start!691104 ((_ is Concat!26708) r!11554)) b!7099648))

(assert (= (and start!691104 ((_ is Star!17863) r!11554)) b!7099642))

(assert (= (and start!691104 ((_ is Union!17863) r!11554)) b!7099643))

(assert (= start!691104 b!7099645))

(assert (= start!691104 b!7099646))

(declare-fun m!7825784 () Bool)

(assert (=> start!691104 m!7825784))

(declare-fun m!7825786 () Bool)

(assert (=> start!691104 m!7825786))

(declare-fun m!7825788 () Bool)

(assert (=> start!691104 m!7825788))

(assert (=> b!7099638 m!7825784))

(declare-fun m!7825790 () Bool)

(assert (=> b!7099638 m!7825790))

(declare-fun m!7825792 () Bool)

(assert (=> b!7099638 m!7825792))

(assert (=> b!7099638 m!7825792))

(assert (=> b!7099637 m!7825792))

(declare-fun m!7825794 () Bool)

(assert (=> b!7099640 m!7825794))

(declare-fun m!7825796 () Bool)

(assert (=> b!7099640 m!7825796))

(declare-fun m!7825798 () Bool)

(assert (=> b!7099640 m!7825798))

(declare-fun m!7825800 () Bool)

(assert (=> b!7099641 m!7825800))

(declare-fun m!7825802 () Bool)

(assert (=> b!7099641 m!7825802))

(declare-fun m!7825804 () Bool)

(assert (=> b!7099641 m!7825804))

(declare-fun m!7825806 () Bool)

(assert (=> b!7099641 m!7825806))

(assert (=> b!7099641 m!7825792))

(declare-fun m!7825808 () Bool)

(assert (=> b!7099641 m!7825808))

(assert (=> b!7099641 m!7825802))

(assert (=> b!7099641 m!7825800))

(declare-fun m!7825810 () Bool)

(assert (=> b!7099641 m!7825810))

(declare-fun m!7825812 () Bool)

(assert (=> b!7099641 m!7825812))

(declare-fun m!7825814 () Bool)

(assert (=> b!7099641 m!7825814))

(declare-fun m!7825816 () Bool)

(assert (=> b!7099641 m!7825816))

(declare-fun m!7825818 () Bool)

(assert (=> b!7099647 m!7825818))

(check-sat (not start!691104) (not b!7099648) (not b!7099642) (not b!7099637) (not b!7099643) (not b!7099645) (not b!7099647) (not b!7099646) tp_is_empty!44959 (not b!7099640) (not b!7099641) (not b!7099638))
(check-sat)
