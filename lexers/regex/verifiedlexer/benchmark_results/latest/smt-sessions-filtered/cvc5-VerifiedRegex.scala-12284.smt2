; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690494 () Bool)

(assert start!690494)

(declare-fun b!7093543 () Bool)

(assert (=> b!7093543 true))

(declare-fun b!7093535 () Bool)

(declare-fun e!4264178 () Bool)

(declare-fun tp!1948835 () Bool)

(declare-fun tp!1948833 () Bool)

(assert (=> b!7093535 (= e!4264178 (and tp!1948835 tp!1948833))))

(declare-fun b!7093536 () Bool)

(declare-fun e!4264173 () Bool)

(declare-fun tp!1948831 () Bool)

(assert (=> b!7093536 (= e!4264173 tp!1948831)))

(declare-fun b!7093537 () Bool)

(declare-fun tp_is_empty!44853 () Bool)

(assert (=> b!7093537 (= e!4264178 tp_is_empty!44853)))

(declare-fun b!7093538 () Bool)

(declare-fun res!2896809 () Bool)

(declare-fun e!4264175 () Bool)

(assert (=> b!7093538 (=> (not res!2896809) (not e!4264175))))

(declare-datatypes ((C!35890 0))(
  ( (C!35891 (val!27651 Int)) )
))
(declare-datatypes ((Regex!17810 0))(
  ( (ElementMatch!17810 (c!1323871 C!35890)) (Concat!26655 (regOne!36132 Regex!17810) (regTwo!36132 Regex!17810)) (EmptyExpr!17810) (Star!17810 (reg!18139 Regex!17810)) (EmptyLang!17810) (Union!17810 (regOne!36133 Regex!17810) (regTwo!36133 Regex!17810)) )
))
(declare-fun r!11554 () Regex!17810)

(declare-fun nullable!7450 (Regex!17810) Bool)

(assert (=> b!7093538 (= res!2896809 (nullable!7450 (regOne!36132 r!11554)))))

(declare-fun b!7093539 () Bool)

(declare-fun e!4264177 () Bool)

(assert (=> b!7093539 (= e!4264175 e!4264177)))

(declare-fun res!2896812 () Bool)

(assert (=> b!7093539 (=> (not res!2896812) (not e!4264177))))

(declare-fun validRegex!9085 (Regex!17810) Bool)

(assert (=> b!7093539 (= res!2896812 (validRegex!9085 (regTwo!36132 r!11554)))))

(declare-datatypes ((List!68773 0))(
  ( (Nil!68649) (Cons!68649 (h!75097 Regex!17810) (t!382568 List!68773)) )
))
(declare-datatypes ((Context!13612 0))(
  ( (Context!13613 (exprs!7306 List!68773)) )
))
(declare-fun c!9994 () Context!13612)

(declare-fun lambda!430205 () Int)

(declare-datatypes ((Unit!162311 0))(
  ( (Unit!162312) )
))
(declare-fun lt!2556855 () Unit!162311)

(declare-fun auxCtx!45 () Context!13612)

(declare-fun lemmaConcatPreservesForall!1109 (List!68773 List!68773 Int) Unit!162311)

(assert (=> b!7093539 (= lt!2556855 (lemmaConcatPreservesForall!1109 (exprs!7306 c!9994) (exprs!7306 auxCtx!45) lambda!430205))))

(declare-fun lt!2556847 () Context!13612)

(declare-fun lt!2556841 () List!68773)

(assert (=> b!7093539 (= lt!2556847 (Context!13613 lt!2556841))))

(declare-fun ++!15979 (List!68773 List!68773) List!68773)

(assert (=> b!7093539 (= lt!2556841 (++!15979 (exprs!7306 c!9994) (exprs!7306 auxCtx!45)))))

(declare-fun lt!2556846 () Unit!162311)

(assert (=> b!7093539 (= lt!2556846 (lemmaConcatPreservesForall!1109 (exprs!7306 c!9994) (exprs!7306 auxCtx!45) lambda!430205))))

(declare-fun lt!2556843 () Unit!162311)

(assert (=> b!7093539 (= lt!2556843 (lemmaConcatPreservesForall!1109 (exprs!7306 c!9994) (exprs!7306 auxCtx!45) lambda!430205))))

(declare-fun b!7093540 () Bool)

(declare-fun tp!1948836 () Bool)

(assert (=> b!7093540 (= e!4264178 tp!1948836)))

(declare-fun b!7093541 () Bool)

(declare-fun e!4264174 () Bool)

(declare-fun e!4264176 () Bool)

(assert (=> b!7093541 (= e!4264174 (not e!4264176))))

(declare-fun res!2896814 () Bool)

(assert (=> b!7093541 (=> res!2896814 e!4264176)))

(declare-fun lt!2556856 () (Set Context!13612))

(declare-fun a!1901 () C!35890)

(declare-fun appendTo!881 ((Set Context!13612) Context!13612) (Set Context!13612))

(declare-fun derivationStepZipperDown!2373 (Regex!17810 Context!13612 C!35890) (Set Context!13612))

(assert (=> b!7093541 (= res!2896814 (not (= lt!2556856 (appendTo!881 (derivationStepZipperDown!2373 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2556858 () Unit!162311)

(assert (=> b!7093541 (= lt!2556858 (lemmaConcatPreservesForall!1109 (exprs!7306 c!9994) (exprs!7306 auxCtx!45) lambda!430205))))

(declare-fun lt!2556851 () (Set Context!13612))

(declare-fun lambda!430204 () Int)

(declare-fun lt!2556850 () (Set Context!13612))

(declare-fun map!16162 ((Set Context!13612) Int) (Set Context!13612))

(assert (=> b!7093541 (= (set.union (map!16162 lt!2556851 lambda!430204) (map!16162 lt!2556850 lambda!430204)) (map!16162 (set.union lt!2556851 lt!2556850) lambda!430204))))

(declare-fun lt!2556860 () Unit!162311)

(declare-fun lemmaMapAssociative!23 ((Set Context!13612) (Set Context!13612) Int) Unit!162311)

(assert (=> b!7093541 (= lt!2556860 (lemmaMapAssociative!23 lt!2556851 lt!2556850 lambda!430204))))

(declare-fun lt!2556844 () (Set Context!13612))

(assert (=> b!7093541 (= lt!2556844 (appendTo!881 lt!2556850 auxCtx!45))))

(assert (=> b!7093541 (= lt!2556850 (derivationStepZipperDown!2373 (regTwo!36132 r!11554) c!9994 a!1901))))

(declare-fun lt!2556845 () Unit!162311)

(assert (=> b!7093541 (= lt!2556845 (lemmaConcatPreservesForall!1109 (exprs!7306 c!9994) (exprs!7306 auxCtx!45) lambda!430205))))

(declare-fun lt!2556852 () Unit!162311)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!189 (Context!13612 Regex!17810 C!35890 Context!13612) Unit!162311)

(assert (=> b!7093541 (= lt!2556852 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!189 c!9994 (regTwo!36132 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2556853 () List!68773)

(assert (=> b!7093541 (= (derivationStepZipperDown!2373 (regOne!36132 r!11554) (Context!13613 lt!2556853) a!1901) (appendTo!881 lt!2556851 auxCtx!45))))

(declare-fun lt!2556842 () Context!13612)

(assert (=> b!7093541 (= lt!2556851 (derivationStepZipperDown!2373 (regOne!36132 r!11554) lt!2556842 a!1901))))

(declare-fun lt!2556854 () List!68773)

(assert (=> b!7093541 (= lt!2556853 (++!15979 lt!2556854 (exprs!7306 auxCtx!45)))))

(declare-fun lt!2556848 () Unit!162311)

(assert (=> b!7093541 (= lt!2556848 (lemmaConcatPreservesForall!1109 lt!2556854 (exprs!7306 auxCtx!45) lambda!430205))))

(declare-fun lt!2556849 () Unit!162311)

(assert (=> b!7093541 (= lt!2556849 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!189 lt!2556842 (regOne!36132 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7093541 (= lt!2556842 (Context!13613 lt!2556854))))

(declare-fun $colon$colon!2717 (List!68773 Regex!17810) List!68773)

(assert (=> b!7093541 (= lt!2556854 ($colon$colon!2717 (exprs!7306 c!9994) (regTwo!36132 r!11554)))))

(declare-fun b!7093542 () Bool)

(assert (=> b!7093542 (= e!4264177 e!4264174)))

(declare-fun res!2896813 () Bool)

(assert (=> b!7093542 (=> (not res!2896813) (not e!4264174))))

(declare-fun lt!2556859 () (Set Context!13612))

(assert (=> b!7093542 (= res!2896813 (= lt!2556856 (set.union lt!2556859 lt!2556844)))))

(assert (=> b!7093542 (= lt!2556856 (derivationStepZipperDown!2373 r!11554 lt!2556847 a!1901))))

(assert (=> b!7093542 (= lt!2556844 (derivationStepZipperDown!2373 (regTwo!36132 r!11554) lt!2556847 a!1901))))

(assert (=> b!7093542 (= lt!2556859 (derivationStepZipperDown!2373 (regOne!36132 r!11554) (Context!13613 ($colon$colon!2717 lt!2556841 (regTwo!36132 r!11554))) a!1901))))

(declare-fun e!4264179 () Bool)

(assert (=> b!7093543 (= e!4264179 e!4264175)))

(declare-fun res!2896811 () Bool)

(assert (=> b!7093543 (=> (not res!2896811) (not e!4264175))))

(assert (=> b!7093543 (= res!2896811 (and (or (not (is-ElementMatch!17810 r!11554)) (not (= (c!1323871 r!11554) a!1901))) (not (is-Union!17810 r!11554)) (is-Concat!26655 r!11554)))))

(declare-fun b!7093544 () Bool)

(declare-fun tp!1948837 () Bool)

(declare-fun tp!1948832 () Bool)

(assert (=> b!7093544 (= e!4264178 (and tp!1948837 tp!1948832))))

(declare-fun res!2896810 () Bool)

(assert (=> start!690494 (=> (not res!2896810) (not e!4264179))))

(assert (=> start!690494 (= res!2896810 (validRegex!9085 r!11554))))

(assert (=> start!690494 e!4264179))

(assert (=> start!690494 e!4264178))

(declare-fun e!4264180 () Bool)

(declare-fun inv!87391 (Context!13612) Bool)

(assert (=> start!690494 (and (inv!87391 c!9994) e!4264180)))

(assert (=> start!690494 tp_is_empty!44853))

(assert (=> start!690494 (and (inv!87391 auxCtx!45) e!4264173)))

(declare-fun b!7093545 () Bool)

(declare-fun tp!1948834 () Bool)

(assert (=> b!7093545 (= e!4264180 tp!1948834)))

(declare-fun b!7093546 () Bool)

(assert (=> b!7093546 (= e!4264176 true)))

(declare-fun lt!2556857 () Unit!162311)

(assert (=> b!7093546 (= lt!2556857 (lemmaConcatPreservesForall!1109 (exprs!7306 c!9994) (exprs!7306 auxCtx!45) lambda!430205))))

(assert (= (and start!690494 res!2896810) b!7093543))

(assert (= (and b!7093543 res!2896811) b!7093538))

(assert (= (and b!7093538 res!2896809) b!7093539))

(assert (= (and b!7093539 res!2896812) b!7093542))

(assert (= (and b!7093542 res!2896813) b!7093541))

(assert (= (and b!7093541 (not res!2896814)) b!7093546))

(assert (= (and start!690494 (is-ElementMatch!17810 r!11554)) b!7093537))

(assert (= (and start!690494 (is-Concat!26655 r!11554)) b!7093535))

(assert (= (and start!690494 (is-Star!17810 r!11554)) b!7093540))

(assert (= (and start!690494 (is-Union!17810 r!11554)) b!7093544))

(assert (= start!690494 b!7093545))

(assert (= start!690494 b!7093536))

(declare-fun m!7822172 () Bool)

(assert (=> b!7093541 m!7822172))

(declare-fun m!7822174 () Bool)

(assert (=> b!7093541 m!7822174))

(declare-fun m!7822176 () Bool)

(assert (=> b!7093541 m!7822176))

(declare-fun m!7822178 () Bool)

(assert (=> b!7093541 m!7822178))

(declare-fun m!7822180 () Bool)

(assert (=> b!7093541 m!7822180))

(assert (=> b!7093541 m!7822180))

(declare-fun m!7822182 () Bool)

(assert (=> b!7093541 m!7822182))

(declare-fun m!7822184 () Bool)

(assert (=> b!7093541 m!7822184))

(declare-fun m!7822186 () Bool)

(assert (=> b!7093541 m!7822186))

(declare-fun m!7822188 () Bool)

(assert (=> b!7093541 m!7822188))

(declare-fun m!7822190 () Bool)

(assert (=> b!7093541 m!7822190))

(assert (=> b!7093541 m!7822176))

(declare-fun m!7822192 () Bool)

(assert (=> b!7093541 m!7822192))

(declare-fun m!7822194 () Bool)

(assert (=> b!7093541 m!7822194))

(declare-fun m!7822196 () Bool)

(assert (=> b!7093541 m!7822196))

(declare-fun m!7822198 () Bool)

(assert (=> b!7093541 m!7822198))

(declare-fun m!7822200 () Bool)

(assert (=> b!7093541 m!7822200))

(declare-fun m!7822202 () Bool)

(assert (=> b!7093541 m!7822202))

(declare-fun m!7822204 () Bool)

(assert (=> b!7093541 m!7822204))

(assert (=> b!7093539 m!7822180))

(assert (=> b!7093539 m!7822180))

(assert (=> b!7093539 m!7822180))

(declare-fun m!7822206 () Bool)

(assert (=> b!7093539 m!7822206))

(declare-fun m!7822208 () Bool)

(assert (=> b!7093539 m!7822208))

(declare-fun m!7822210 () Bool)

(assert (=> b!7093542 m!7822210))

(declare-fun m!7822212 () Bool)

(assert (=> b!7093542 m!7822212))

(declare-fun m!7822214 () Bool)

(assert (=> b!7093542 m!7822214))

(declare-fun m!7822216 () Bool)

(assert (=> b!7093542 m!7822216))

(assert (=> b!7093546 m!7822180))

(declare-fun m!7822218 () Bool)

(assert (=> start!690494 m!7822218))

(declare-fun m!7822220 () Bool)

(assert (=> start!690494 m!7822220))

(declare-fun m!7822222 () Bool)

(assert (=> start!690494 m!7822222))

(declare-fun m!7822224 () Bool)

(assert (=> b!7093538 m!7822224))

(push 1)

(assert (not b!7093538))

(assert (not b!7093535))

(assert (not b!7093545))

(assert (not b!7093536))

(assert (not start!690494))

(assert (not b!7093539))

(assert (not b!7093546))

(assert (not b!7093542))

(assert (not b!7093541))

(assert (not b!7093540))

(assert tp_is_empty!44853)

(assert (not b!7093544))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

