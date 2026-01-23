; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234242 () Bool)

(assert start!234242)

(declare-fun b!2387035 () Bool)

(assert (=> b!2387035 true))

(assert (=> b!2387035 true))

(declare-fun lambda!89218 () Int)

(declare-fun lambda!89217 () Int)

(assert (=> b!2387035 (not (= lambda!89218 lambda!89217))))

(assert (=> b!2387035 true))

(assert (=> b!2387035 true))

(declare-fun b!2387027 () Bool)

(declare-fun res!1013978 () Bool)

(declare-fun e!1521932 () Bool)

(assert (=> b!2387027 (=> (not res!1013978) (not e!1521932))))

(declare-datatypes ((C!14154 0))(
  ( (C!14155 (val!8319 Int)) )
))
(declare-datatypes ((Regex!6998 0))(
  ( (ElementMatch!6998 (c!379578 C!14154)) (Concat!11634 (regOne!14508 Regex!6998) (regTwo!14508 Regex!6998)) (EmptyExpr!6998) (Star!6998 (reg!7327 Regex!6998)) (EmptyLang!6998) (Union!6998 (regOne!14509 Regex!6998) (regTwo!14509 Regex!6998)) )
))
(declare-fun r!13927 () Regex!6998)

(declare-datatypes ((List!28234 0))(
  ( (Nil!28136) (Cons!28136 (h!33537 Regex!6998) (t!208211 List!28234)) )
))
(declare-fun l!9164 () List!28234)

(declare-fun generalisedConcat!99 (List!28234) Regex!6998)

(assert (=> b!2387027 (= res!1013978 (= r!13927 (generalisedConcat!99 l!9164)))))

(declare-fun b!2387028 () Bool)

(declare-fun e!1521935 () Bool)

(declare-fun tp!761335 () Bool)

(declare-fun tp!761337 () Bool)

(assert (=> b!2387028 (= e!1521935 (and tp!761335 tp!761337))))

(declare-fun res!1013975 () Bool)

(assert (=> start!234242 (=> (not res!1013975) (not e!1521932))))

(declare-fun lambda!89216 () Int)

(declare-fun forall!5632 (List!28234 Int) Bool)

(assert (=> start!234242 (= res!1013975 (forall!5632 l!9164 lambda!89216))))

(assert (=> start!234242 e!1521932))

(declare-fun e!1521937 () Bool)

(assert (=> start!234242 e!1521937))

(assert (=> start!234242 e!1521935))

(declare-fun e!1521934 () Bool)

(assert (=> start!234242 e!1521934))

(declare-fun b!2387029 () Bool)

(declare-fun e!1521936 () Bool)

(assert (=> b!2387029 (= e!1521932 (not e!1521936))))

(declare-fun res!1013973 () Bool)

(assert (=> b!2387029 (=> res!1013973 e!1521936)))

(assert (=> b!2387029 (= res!1013973 (not (is-Concat!11634 r!13927)))))

(declare-fun lt!869580 () Bool)

(declare-fun lt!869581 () Bool)

(assert (=> b!2387029 (= lt!869580 lt!869581)))

(declare-datatypes ((List!28235 0))(
  ( (Nil!28137) (Cons!28137 (h!33538 C!14154) (t!208212 List!28235)) )
))
(declare-fun s!9460 () List!28235)

(declare-fun matchRSpec!847 (Regex!6998 List!28235) Bool)

(assert (=> b!2387029 (= lt!869581 (matchRSpec!847 r!13927 s!9460))))

(declare-fun matchR!3115 (Regex!6998 List!28235) Bool)

(assert (=> b!2387029 (= lt!869580 (matchR!3115 r!13927 s!9460))))

(declare-datatypes ((Unit!41099 0))(
  ( (Unit!41100) )
))
(declare-fun lt!869579 () Unit!41099)

(declare-fun mainMatchTheorem!847 (Regex!6998 List!28235) Unit!41099)

(assert (=> b!2387029 (= lt!869579 (mainMatchTheorem!847 r!13927 s!9460))))

(declare-fun b!2387030 () Bool)

(declare-fun tp!761336 () Bool)

(assert (=> b!2387030 (= e!1521935 tp!761336)))

(declare-fun b!2387031 () Bool)

(declare-fun tp_is_empty!11409 () Bool)

(declare-fun tp!761334 () Bool)

(assert (=> b!2387031 (= e!1521934 (and tp_is_empty!11409 tp!761334))))

(declare-fun b!2387032 () Bool)

(declare-fun tp!761340 () Bool)

(declare-fun tp!761341 () Bool)

(assert (=> b!2387032 (= e!1521937 (and tp!761340 tp!761341))))

(declare-fun b!2387033 () Bool)

(declare-fun tp!761338 () Bool)

(declare-fun tp!761339 () Bool)

(assert (=> b!2387033 (= e!1521935 (and tp!761338 tp!761339))))

(declare-fun b!2387034 () Bool)

(declare-fun e!1521933 () Bool)

(declare-fun e!1521931 () Bool)

(assert (=> b!2387034 (= e!1521933 e!1521931)))

(declare-fun res!1013976 () Bool)

(assert (=> b!2387034 (=> res!1013976 e!1521931)))

(declare-fun lt!869582 () List!28234)

(declare-fun isEmpty!16103 (List!28234) Bool)

(assert (=> b!2387034 (= res!1013976 (isEmpty!16103 lt!869582))))

(declare-fun tail!3498 (List!28234) List!28234)

(assert (=> b!2387034 (= lt!869582 (tail!3498 l!9164))))

(assert (=> b!2387035 (= e!1521936 e!1521933)))

(declare-fun res!1013974 () Bool)

(assert (=> b!2387035 (=> res!1013974 e!1521933)))

(declare-fun lt!869586 () Bool)

(assert (=> b!2387035 (= res!1013974 (not (= lt!869581 lt!869586)))))

(declare-fun Exists!1060 (Int) Bool)

(assert (=> b!2387035 (= (Exists!1060 lambda!89217) (Exists!1060 lambda!89218))))

(declare-fun lt!869585 () Unit!41099)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!399 (Regex!6998 Regex!6998 List!28235) Unit!41099)

(assert (=> b!2387035 (= lt!869585 (lemmaExistCutMatchRandMatchRSpecEquivalent!399 (regOne!14508 r!13927) (regTwo!14508 r!13927) s!9460))))

(assert (=> b!2387035 (= lt!869586 (Exists!1060 lambda!89217))))

(declare-datatypes ((tuple2!27860 0))(
  ( (tuple2!27861 (_1!16471 List!28235) (_2!16471 List!28235)) )
))
(declare-datatypes ((Option!5541 0))(
  ( (None!5540) (Some!5540 (v!30948 tuple2!27860)) )
))
(declare-fun isDefined!4369 (Option!5541) Bool)

(declare-fun findConcatSeparation!649 (Regex!6998 Regex!6998 List!28235 List!28235 List!28235) Option!5541)

(assert (=> b!2387035 (= lt!869586 (isDefined!4369 (findConcatSeparation!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) Nil!28137 s!9460 s!9460)))))

(declare-fun lt!869584 () Unit!41099)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!649 (Regex!6998 Regex!6998 List!28235) Unit!41099)

(assert (=> b!2387035 (= lt!869584 (lemmaFindConcatSeparationEquivalentToExists!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) s!9460))))

(declare-fun b!2387036 () Bool)

(assert (=> b!2387036 (= e!1521935 tp_is_empty!11409)))

(declare-fun b!2387037 () Bool)

(declare-fun res!1013977 () Bool)

(assert (=> b!2387037 (=> res!1013977 e!1521933)))

(assert (=> b!2387037 (= res!1013977 (isEmpty!16103 l!9164))))

(declare-fun b!2387038 () Bool)

(declare-fun validRegex!2723 (Regex!6998) Bool)

(declare-fun head!5228 (List!28234) Regex!6998)

(assert (=> b!2387038 (= e!1521931 (validRegex!2723 (head!5228 l!9164)))))

(declare-fun lt!869583 () Regex!6998)

(assert (=> b!2387038 (= lt!869583 (generalisedConcat!99 lt!869582))))

(assert (= (and start!234242 res!1013975) b!2387027))

(assert (= (and b!2387027 res!1013978) b!2387029))

(assert (= (and b!2387029 (not res!1013973)) b!2387035))

(assert (= (and b!2387035 (not res!1013974)) b!2387037))

(assert (= (and b!2387037 (not res!1013977)) b!2387034))

(assert (= (and b!2387034 (not res!1013976)) b!2387038))

(assert (= (and start!234242 (is-Cons!28136 l!9164)) b!2387032))

(assert (= (and start!234242 (is-ElementMatch!6998 r!13927)) b!2387036))

(assert (= (and start!234242 (is-Concat!11634 r!13927)) b!2387033))

(assert (= (and start!234242 (is-Star!6998 r!13927)) b!2387030))

(assert (= (and start!234242 (is-Union!6998 r!13927)) b!2387028))

(assert (= (and start!234242 (is-Cons!28137 s!9460)) b!2387031))

(declare-fun m!2788557 () Bool)

(assert (=> b!2387037 m!2788557))

(declare-fun m!2788559 () Bool)

(assert (=> b!2387038 m!2788559))

(assert (=> b!2387038 m!2788559))

(declare-fun m!2788561 () Bool)

(assert (=> b!2387038 m!2788561))

(declare-fun m!2788563 () Bool)

(assert (=> b!2387038 m!2788563))

(declare-fun m!2788565 () Bool)

(assert (=> b!2387034 m!2788565))

(declare-fun m!2788567 () Bool)

(assert (=> b!2387034 m!2788567))

(declare-fun m!2788569 () Bool)

(assert (=> b!2387027 m!2788569))

(declare-fun m!2788571 () Bool)

(assert (=> b!2387029 m!2788571))

(declare-fun m!2788573 () Bool)

(assert (=> b!2387029 m!2788573))

(declare-fun m!2788575 () Bool)

(assert (=> b!2387029 m!2788575))

(declare-fun m!2788577 () Bool)

(assert (=> start!234242 m!2788577))

(declare-fun m!2788579 () Bool)

(assert (=> b!2387035 m!2788579))

(declare-fun m!2788581 () Bool)

(assert (=> b!2387035 m!2788581))

(declare-fun m!2788583 () Bool)

(assert (=> b!2387035 m!2788583))

(assert (=> b!2387035 m!2788579))

(declare-fun m!2788585 () Bool)

(assert (=> b!2387035 m!2788585))

(declare-fun m!2788587 () Bool)

(assert (=> b!2387035 m!2788587))

(assert (=> b!2387035 m!2788585))

(declare-fun m!2788589 () Bool)

(assert (=> b!2387035 m!2788589))

(push 1)

(assert (not start!234242))

(assert (not b!2387028))

(assert (not b!2387030))

(assert (not b!2387035))

(assert (not b!2387034))

(assert (not b!2387033))

(assert (not b!2387029))

(assert (not b!2387037))

(assert (not b!2387032))

(assert tp_is_empty!11409)

(assert (not b!2387038))

(assert (not b!2387027))

(assert (not b!2387031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!462281 () Bool)

(declare-fun d!697604 () Bool)

(assert (= bs!462281 (and d!697604 start!234242)))

(declare-fun lambda!89232 () Int)

(assert (=> bs!462281 (= lambda!89232 lambda!89216)))

(declare-fun b!2387116 () Bool)

(declare-fun e!1521978 () Bool)

(declare-fun e!1521981 () Bool)

(assert (=> b!2387116 (= e!1521978 e!1521981)))

(declare-fun c!379588 () Bool)

(assert (=> b!2387116 (= c!379588 (isEmpty!16103 l!9164))))

(declare-fun b!2387117 () Bool)

(declare-fun e!1521979 () Regex!6998)

(declare-fun e!1521977 () Regex!6998)

(assert (=> b!2387117 (= e!1521979 e!1521977)))

(declare-fun c!379591 () Bool)

(assert (=> b!2387117 (= c!379591 (is-Cons!28136 l!9164))))

(declare-fun b!2387118 () Bool)

(declare-fun e!1521982 () Bool)

(assert (=> b!2387118 (= e!1521982 (isEmpty!16103 (t!208211 l!9164)))))

(declare-fun b!2387119 () Bool)

(declare-fun e!1521980 () Bool)

(assert (=> b!2387119 (= e!1521981 e!1521980)))

(declare-fun c!379590 () Bool)

(assert (=> b!2387119 (= c!379590 (isEmpty!16103 (tail!3498 l!9164)))))

(declare-fun b!2387120 () Bool)

(declare-fun lt!869613 () Regex!6998)

(assert (=> b!2387120 (= e!1521980 (= lt!869613 (head!5228 l!9164)))))

(declare-fun b!2387121 () Bool)

(assert (=> b!2387121 (= e!1521977 EmptyExpr!6998)))

(declare-fun b!2387122 () Bool)

(assert (=> b!2387122 (= e!1521979 (h!33537 l!9164))))

(assert (=> d!697604 e!1521978))

(declare-fun res!1014013 () Bool)

(assert (=> d!697604 (=> (not res!1014013) (not e!1521978))))

(assert (=> d!697604 (= res!1014013 (validRegex!2723 lt!869613))))

(assert (=> d!697604 (= lt!869613 e!1521979)))

(declare-fun c!379589 () Bool)

(assert (=> d!697604 (= c!379589 e!1521982)))

(declare-fun res!1014014 () Bool)

(assert (=> d!697604 (=> (not res!1014014) (not e!1521982))))

(assert (=> d!697604 (= res!1014014 (is-Cons!28136 l!9164))))

(assert (=> d!697604 (forall!5632 l!9164 lambda!89232)))

(assert (=> d!697604 (= (generalisedConcat!99 l!9164) lt!869613)))

(declare-fun b!2387115 () Bool)

(assert (=> b!2387115 (= e!1521977 (Concat!11634 (h!33537 l!9164) (generalisedConcat!99 (t!208211 l!9164))))))

(declare-fun b!2387123 () Bool)

(declare-fun isConcat!68 (Regex!6998) Bool)

(assert (=> b!2387123 (= e!1521980 (isConcat!68 lt!869613))))

(declare-fun b!2387124 () Bool)

(declare-fun isEmptyExpr!68 (Regex!6998) Bool)

(assert (=> b!2387124 (= e!1521981 (isEmptyExpr!68 lt!869613))))

(assert (= (and d!697604 res!1014014) b!2387118))

(assert (= (and d!697604 c!379589) b!2387122))

(assert (= (and d!697604 (not c!379589)) b!2387117))

(assert (= (and b!2387117 c!379591) b!2387115))

(assert (= (and b!2387117 (not c!379591)) b!2387121))

(assert (= (and d!697604 res!1014013) b!2387116))

(assert (= (and b!2387116 c!379588) b!2387124))

(assert (= (and b!2387116 (not c!379588)) b!2387119))

(assert (= (and b!2387119 c!379590) b!2387120))

(assert (= (and b!2387119 (not c!379590)) b!2387123))

(assert (=> b!2387119 m!2788567))

(assert (=> b!2387119 m!2788567))

(declare-fun m!2788625 () Bool)

(assert (=> b!2387119 m!2788625))

(declare-fun m!2788627 () Bool)

(assert (=> b!2387123 m!2788627))

(assert (=> b!2387116 m!2788557))

(declare-fun m!2788629 () Bool)

(assert (=> b!2387124 m!2788629))

(declare-fun m!2788631 () Bool)

(assert (=> b!2387115 m!2788631))

(assert (=> b!2387120 m!2788559))

(declare-fun m!2788633 () Bool)

(assert (=> b!2387118 m!2788633))

(declare-fun m!2788635 () Bool)

(assert (=> d!697604 m!2788635))

(declare-fun m!2788637 () Bool)

(assert (=> d!697604 m!2788637))

(assert (=> b!2387027 d!697604))

(declare-fun b!2387143 () Bool)

(declare-fun e!1522003 () Bool)

(declare-fun e!1521998 () Bool)

(assert (=> b!2387143 (= e!1522003 e!1521998)))

(declare-fun c!379597 () Bool)

(assert (=> b!2387143 (= c!379597 (is-Union!6998 (head!5228 l!9164)))))

(declare-fun b!2387144 () Bool)

(declare-fun res!1014027 () Bool)

(declare-fun e!1521999 () Bool)

(assert (=> b!2387144 (=> res!1014027 e!1521999)))

(assert (=> b!2387144 (= res!1014027 (not (is-Concat!11634 (head!5228 l!9164))))))

(assert (=> b!2387144 (= e!1521998 e!1521999)))

(declare-fun bm!145132 () Bool)

(declare-fun call!145138 () Bool)

(declare-fun call!145139 () Bool)

(assert (=> bm!145132 (= call!145138 call!145139)))

(declare-fun bm!145133 () Bool)

(declare-fun call!145137 () Bool)

(assert (=> bm!145133 (= call!145137 (validRegex!2723 (ite c!379597 (regOne!14509 (head!5228 l!9164)) (regTwo!14508 (head!5228 l!9164)))))))

(declare-fun b!2387145 () Bool)

(declare-fun e!1522002 () Bool)

(assert (=> b!2387145 (= e!1521999 e!1522002)))

(declare-fun res!1014025 () Bool)

(assert (=> b!2387145 (=> (not res!1014025) (not e!1522002))))

(assert (=> b!2387145 (= res!1014025 call!145138)))

(declare-fun b!2387147 () Bool)

(declare-fun e!1521997 () Bool)

(assert (=> b!2387147 (= e!1521997 call!145138)))

(declare-fun b!2387148 () Bool)

(declare-fun e!1522001 () Bool)

(assert (=> b!2387148 (= e!1522001 call!145139)))

(declare-fun b!2387149 () Bool)

(declare-fun e!1522000 () Bool)

(assert (=> b!2387149 (= e!1522000 e!1522003)))

(declare-fun c!379596 () Bool)

(assert (=> b!2387149 (= c!379596 (is-Star!6998 (head!5228 l!9164)))))

(declare-fun b!2387150 () Bool)

(declare-fun res!1014029 () Bool)

(assert (=> b!2387150 (=> (not res!1014029) (not e!1521997))))

(assert (=> b!2387150 (= res!1014029 call!145137)))

(assert (=> b!2387150 (= e!1521998 e!1521997)))

(declare-fun bm!145134 () Bool)

(assert (=> bm!145134 (= call!145139 (validRegex!2723 (ite c!379596 (reg!7327 (head!5228 l!9164)) (ite c!379597 (regTwo!14509 (head!5228 l!9164)) (regOne!14508 (head!5228 l!9164))))))))

(declare-fun b!2387151 () Bool)

(assert (=> b!2387151 (= e!1522002 call!145137)))

(declare-fun b!2387146 () Bool)

(assert (=> b!2387146 (= e!1522003 e!1522001)))

(declare-fun res!1014028 () Bool)

(declare-fun nullable!2047 (Regex!6998) Bool)

(assert (=> b!2387146 (= res!1014028 (not (nullable!2047 (reg!7327 (head!5228 l!9164)))))))

(assert (=> b!2387146 (=> (not res!1014028) (not e!1522001))))

(declare-fun d!697606 () Bool)

(declare-fun res!1014026 () Bool)

(assert (=> d!697606 (=> res!1014026 e!1522000)))

(assert (=> d!697606 (= res!1014026 (is-ElementMatch!6998 (head!5228 l!9164)))))

(assert (=> d!697606 (= (validRegex!2723 (head!5228 l!9164)) e!1522000)))

(assert (= (and d!697606 (not res!1014026)) b!2387149))

(assert (= (and b!2387149 c!379596) b!2387146))

(assert (= (and b!2387149 (not c!379596)) b!2387143))

(assert (= (and b!2387146 res!1014028) b!2387148))

(assert (= (and b!2387143 c!379597) b!2387150))

(assert (= (and b!2387143 (not c!379597)) b!2387144))

(assert (= (and b!2387150 res!1014029) b!2387147))

(assert (= (and b!2387144 (not res!1014027)) b!2387145))

(assert (= (and b!2387145 res!1014025) b!2387151))

(assert (= (or b!2387150 b!2387151) bm!145133))

(assert (= (or b!2387147 b!2387145) bm!145132))

(assert (= (or b!2387148 bm!145132) bm!145134))

(declare-fun m!2788639 () Bool)

(assert (=> bm!145133 m!2788639))

(declare-fun m!2788641 () Bool)

(assert (=> bm!145134 m!2788641))

(declare-fun m!2788643 () Bool)

(assert (=> b!2387146 m!2788643))

(assert (=> b!2387038 d!697606))

(declare-fun d!697608 () Bool)

(assert (=> d!697608 (= (head!5228 l!9164) (h!33537 l!9164))))

(assert (=> b!2387038 d!697608))

(declare-fun bs!462282 () Bool)

(declare-fun d!697610 () Bool)

(assert (= bs!462282 (and d!697610 start!234242)))

(declare-fun lambda!89233 () Int)

(assert (=> bs!462282 (= lambda!89233 lambda!89216)))

(declare-fun bs!462283 () Bool)

(assert (= bs!462283 (and d!697610 d!697604)))

(assert (=> bs!462283 (= lambda!89233 lambda!89232)))

(declare-fun b!2387153 () Bool)

(declare-fun e!1522005 () Bool)

(declare-fun e!1522008 () Bool)

(assert (=> b!2387153 (= e!1522005 e!1522008)))

(declare-fun c!379598 () Bool)

(assert (=> b!2387153 (= c!379598 (isEmpty!16103 lt!869582))))

(declare-fun b!2387154 () Bool)

(declare-fun e!1522006 () Regex!6998)

(declare-fun e!1522004 () Regex!6998)

(assert (=> b!2387154 (= e!1522006 e!1522004)))

(declare-fun c!379601 () Bool)

(assert (=> b!2387154 (= c!379601 (is-Cons!28136 lt!869582))))

(declare-fun b!2387155 () Bool)

(declare-fun e!1522009 () Bool)

(assert (=> b!2387155 (= e!1522009 (isEmpty!16103 (t!208211 lt!869582)))))

(declare-fun b!2387156 () Bool)

(declare-fun e!1522007 () Bool)

(assert (=> b!2387156 (= e!1522008 e!1522007)))

(declare-fun c!379600 () Bool)

(assert (=> b!2387156 (= c!379600 (isEmpty!16103 (tail!3498 lt!869582)))))

(declare-fun b!2387157 () Bool)

(declare-fun lt!869614 () Regex!6998)

(assert (=> b!2387157 (= e!1522007 (= lt!869614 (head!5228 lt!869582)))))

(declare-fun b!2387158 () Bool)

(assert (=> b!2387158 (= e!1522004 EmptyExpr!6998)))

(declare-fun b!2387159 () Bool)

(assert (=> b!2387159 (= e!1522006 (h!33537 lt!869582))))

(assert (=> d!697610 e!1522005))

(declare-fun res!1014030 () Bool)

(assert (=> d!697610 (=> (not res!1014030) (not e!1522005))))

(assert (=> d!697610 (= res!1014030 (validRegex!2723 lt!869614))))

(assert (=> d!697610 (= lt!869614 e!1522006)))

(declare-fun c!379599 () Bool)

(assert (=> d!697610 (= c!379599 e!1522009)))

(declare-fun res!1014031 () Bool)

(assert (=> d!697610 (=> (not res!1014031) (not e!1522009))))

(assert (=> d!697610 (= res!1014031 (is-Cons!28136 lt!869582))))

(assert (=> d!697610 (forall!5632 lt!869582 lambda!89233)))

(assert (=> d!697610 (= (generalisedConcat!99 lt!869582) lt!869614)))

(declare-fun b!2387152 () Bool)

(assert (=> b!2387152 (= e!1522004 (Concat!11634 (h!33537 lt!869582) (generalisedConcat!99 (t!208211 lt!869582))))))

(declare-fun b!2387160 () Bool)

(assert (=> b!2387160 (= e!1522007 (isConcat!68 lt!869614))))

(declare-fun b!2387161 () Bool)

(assert (=> b!2387161 (= e!1522008 (isEmptyExpr!68 lt!869614))))

(assert (= (and d!697610 res!1014031) b!2387155))

(assert (= (and d!697610 c!379599) b!2387159))

(assert (= (and d!697610 (not c!379599)) b!2387154))

(assert (= (and b!2387154 c!379601) b!2387152))

(assert (= (and b!2387154 (not c!379601)) b!2387158))

(assert (= (and d!697610 res!1014030) b!2387153))

(assert (= (and b!2387153 c!379598) b!2387161))

(assert (= (and b!2387153 (not c!379598)) b!2387156))

(assert (= (and b!2387156 c!379600) b!2387157))

(assert (= (and b!2387156 (not c!379600)) b!2387160))

(declare-fun m!2788645 () Bool)

(assert (=> b!2387156 m!2788645))

(assert (=> b!2387156 m!2788645))

(declare-fun m!2788647 () Bool)

(assert (=> b!2387156 m!2788647))

(declare-fun m!2788649 () Bool)

(assert (=> b!2387160 m!2788649))

(assert (=> b!2387153 m!2788565))

(declare-fun m!2788651 () Bool)

(assert (=> b!2387161 m!2788651))

(declare-fun m!2788653 () Bool)

(assert (=> b!2387152 m!2788653))

(declare-fun m!2788655 () Bool)

(assert (=> b!2387157 m!2788655))

(declare-fun m!2788657 () Bool)

(assert (=> b!2387155 m!2788657))

(declare-fun m!2788659 () Bool)

(assert (=> d!697610 m!2788659))

(declare-fun m!2788661 () Bool)

(assert (=> d!697610 m!2788661))

(assert (=> b!2387038 d!697610))

(declare-fun bs!462287 () Bool)

(declare-fun b!2387202 () Bool)

(assert (= bs!462287 (and b!2387202 b!2387035)))

(declare-fun lambda!89238 () Int)

(assert (=> bs!462287 (not (= lambda!89238 lambda!89217))))

(assert (=> bs!462287 (not (= lambda!89238 lambda!89218))))

(assert (=> b!2387202 true))

(assert (=> b!2387202 true))

(declare-fun bs!462288 () Bool)

(declare-fun b!2387204 () Bool)

(assert (= bs!462288 (and b!2387204 b!2387035)))

(declare-fun lambda!89239 () Int)

(assert (=> bs!462288 (not (= lambda!89239 lambda!89217))))

(assert (=> bs!462288 (= lambda!89239 lambda!89218)))

(declare-fun bs!462289 () Bool)

(assert (= bs!462289 (and b!2387204 b!2387202)))

(assert (=> bs!462289 (not (= lambda!89239 lambda!89238))))

(assert (=> b!2387204 true))

(assert (=> b!2387204 true))

(declare-fun b!2387194 () Bool)

(declare-fun e!1522032 () Bool)

(declare-fun e!1522031 () Bool)

(assert (=> b!2387194 (= e!1522032 e!1522031)))

(declare-fun c!379610 () Bool)

(assert (=> b!2387194 (= c!379610 (is-Star!6998 r!13927))))

(declare-fun b!2387195 () Bool)

(declare-fun e!1522029 () Bool)

(declare-fun call!145145 () Bool)

(assert (=> b!2387195 (= e!1522029 call!145145)))

(declare-fun b!2387196 () Bool)

(declare-fun c!379612 () Bool)

(assert (=> b!2387196 (= c!379612 (is-Union!6998 r!13927))))

(declare-fun e!1522028 () Bool)

(assert (=> b!2387196 (= e!1522028 e!1522032)))

(declare-fun b!2387197 () Bool)

(declare-fun res!1014048 () Bool)

(declare-fun e!1522033 () Bool)

(assert (=> b!2387197 (=> res!1014048 e!1522033)))

(assert (=> b!2387197 (= res!1014048 call!145145)))

(assert (=> b!2387197 (= e!1522031 e!1522033)))

(declare-fun b!2387198 () Bool)

(declare-fun c!379611 () Bool)

(assert (=> b!2387198 (= c!379611 (is-ElementMatch!6998 r!13927))))

(declare-fun e!1522034 () Bool)

(assert (=> b!2387198 (= e!1522034 e!1522028)))

(declare-fun b!2387199 () Bool)

(declare-fun e!1522030 () Bool)

(assert (=> b!2387199 (= e!1522030 (matchRSpec!847 (regTwo!14509 r!13927) s!9460))))

(declare-fun b!2387200 () Bool)

(assert (=> b!2387200 (= e!1522028 (= s!9460 (Cons!28137 (c!379578 r!13927) Nil!28137)))))

(declare-fun b!2387201 () Bool)

(assert (=> b!2387201 (= e!1522029 e!1522034)))

(declare-fun res!1014049 () Bool)

(assert (=> b!2387201 (= res!1014049 (not (is-EmptyLang!6998 r!13927)))))

(assert (=> b!2387201 (=> (not res!1014049) (not e!1522034))))

(declare-fun call!145144 () Bool)

(assert (=> b!2387202 (= e!1522033 call!145144)))

(declare-fun b!2387203 () Bool)

(assert (=> b!2387203 (= e!1522032 e!1522030)))

(declare-fun res!1014050 () Bool)

(assert (=> b!2387203 (= res!1014050 (matchRSpec!847 (regOne!14509 r!13927) s!9460))))

(assert (=> b!2387203 (=> res!1014050 e!1522030)))

(declare-fun bm!145139 () Bool)

(assert (=> bm!145139 (= call!145144 (Exists!1060 (ite c!379610 lambda!89238 lambda!89239)))))

(declare-fun d!697612 () Bool)

(declare-fun c!379613 () Bool)

(assert (=> d!697612 (= c!379613 (is-EmptyExpr!6998 r!13927))))

(assert (=> d!697612 (= (matchRSpec!847 r!13927 s!9460) e!1522029)))

(assert (=> b!2387204 (= e!1522031 call!145144)))

(declare-fun bm!145140 () Bool)

(declare-fun isEmpty!16105 (List!28235) Bool)

(assert (=> bm!145140 (= call!145145 (isEmpty!16105 s!9460))))

(assert (= (and d!697612 c!379613) b!2387195))

(assert (= (and d!697612 (not c!379613)) b!2387201))

(assert (= (and b!2387201 res!1014049) b!2387198))

(assert (= (and b!2387198 c!379611) b!2387200))

(assert (= (and b!2387198 (not c!379611)) b!2387196))

(assert (= (and b!2387196 c!379612) b!2387203))

(assert (= (and b!2387196 (not c!379612)) b!2387194))

(assert (= (and b!2387203 (not res!1014050)) b!2387199))

(assert (= (and b!2387194 c!379610) b!2387197))

(assert (= (and b!2387194 (not c!379610)) b!2387204))

(assert (= (and b!2387197 (not res!1014048)) b!2387202))

(assert (= (or b!2387202 b!2387204) bm!145139))

(assert (= (or b!2387195 b!2387197) bm!145140))

(declare-fun m!2788669 () Bool)

(assert (=> b!2387199 m!2788669))

(declare-fun m!2788671 () Bool)

(assert (=> b!2387203 m!2788671))

(declare-fun m!2788673 () Bool)

(assert (=> bm!145139 m!2788673))

(declare-fun m!2788675 () Bool)

(assert (=> bm!145140 m!2788675))

(assert (=> b!2387029 d!697612))

(declare-fun b!2387238 () Bool)

(declare-fun e!1522055 () Bool)

(declare-fun lt!869620 () Bool)

(assert (=> b!2387238 (= e!1522055 (not lt!869620))))

(declare-fun b!2387239 () Bool)

(declare-fun e!1522054 () Bool)

(assert (=> b!2387239 (= e!1522054 (nullable!2047 r!13927))))

(declare-fun b!2387240 () Bool)

(declare-fun e!1522057 () Bool)

(assert (=> b!2387240 (= e!1522057 e!1522055)))

(declare-fun c!379622 () Bool)

(assert (=> b!2387240 (= c!379622 (is-EmptyLang!6998 r!13927))))

(declare-fun b!2387241 () Bool)

(declare-fun e!1522052 () Bool)

(declare-fun e!1522056 () Bool)

(assert (=> b!2387241 (= e!1522052 e!1522056)))

(declare-fun res!1014074 () Bool)

(assert (=> b!2387241 (=> res!1014074 e!1522056)))

(declare-fun call!145148 () Bool)

(assert (=> b!2387241 (= res!1014074 call!145148)))

(declare-fun b!2387242 () Bool)

(declare-fun res!1014073 () Bool)

(declare-fun e!1522051 () Bool)

(assert (=> b!2387242 (=> res!1014073 e!1522051)))

(declare-fun e!1522053 () Bool)

(assert (=> b!2387242 (= res!1014073 e!1522053)))

(declare-fun res!1014071 () Bool)

(assert (=> b!2387242 (=> (not res!1014071) (not e!1522053))))

(assert (=> b!2387242 (= res!1014071 lt!869620)))

(declare-fun b!2387243 () Bool)

(declare-fun res!1014075 () Bool)

(assert (=> b!2387243 (=> (not res!1014075) (not e!1522053))))

(declare-fun tail!3500 (List!28235) List!28235)

(assert (=> b!2387243 (= res!1014075 (isEmpty!16105 (tail!3500 s!9460)))))

(declare-fun b!2387244 () Bool)

(declare-fun head!5230 (List!28235) C!14154)

(assert (=> b!2387244 (= e!1522056 (not (= (head!5230 s!9460) (c!379578 r!13927))))))

(declare-fun bm!145143 () Bool)

(assert (=> bm!145143 (= call!145148 (isEmpty!16105 s!9460))))

(declare-fun b!2387245 () Bool)

(declare-fun derivativeStep!1705 (Regex!6998 C!14154) Regex!6998)

(assert (=> b!2387245 (= e!1522054 (matchR!3115 (derivativeStep!1705 r!13927 (head!5230 s!9460)) (tail!3500 s!9460)))))

(declare-fun d!697624 () Bool)

(assert (=> d!697624 e!1522057))

(declare-fun c!379621 () Bool)

(assert (=> d!697624 (= c!379621 (is-EmptyExpr!6998 r!13927))))

(assert (=> d!697624 (= lt!869620 e!1522054)))

(declare-fun c!379620 () Bool)

(assert (=> d!697624 (= c!379620 (isEmpty!16105 s!9460))))

(assert (=> d!697624 (validRegex!2723 r!13927)))

(assert (=> d!697624 (= (matchR!3115 r!13927 s!9460) lt!869620)))

(declare-fun b!2387237 () Bool)

(declare-fun res!1014076 () Bool)

(assert (=> b!2387237 (=> res!1014076 e!1522051)))

(assert (=> b!2387237 (= res!1014076 (not (is-ElementMatch!6998 r!13927)))))

(assert (=> b!2387237 (= e!1522055 e!1522051)))

(declare-fun b!2387246 () Bool)

(assert (=> b!2387246 (= e!1522053 (= (head!5230 s!9460) (c!379578 r!13927)))))

(declare-fun b!2387247 () Bool)

(declare-fun res!1014078 () Bool)

(assert (=> b!2387247 (=> (not res!1014078) (not e!1522053))))

(assert (=> b!2387247 (= res!1014078 (not call!145148))))

(declare-fun b!2387248 () Bool)

(declare-fun res!1014077 () Bool)

(assert (=> b!2387248 (=> res!1014077 e!1522056)))

(assert (=> b!2387248 (= res!1014077 (not (isEmpty!16105 (tail!3500 s!9460))))))

(declare-fun b!2387249 () Bool)

(assert (=> b!2387249 (= e!1522051 e!1522052)))

(declare-fun res!1014072 () Bool)

(assert (=> b!2387249 (=> (not res!1014072) (not e!1522052))))

(assert (=> b!2387249 (= res!1014072 (not lt!869620))))

(declare-fun b!2387250 () Bool)

(assert (=> b!2387250 (= e!1522057 (= lt!869620 call!145148))))

(assert (= (and d!697624 c!379620) b!2387239))

(assert (= (and d!697624 (not c!379620)) b!2387245))

(assert (= (and d!697624 c!379621) b!2387250))

(assert (= (and d!697624 (not c!379621)) b!2387240))

(assert (= (and b!2387240 c!379622) b!2387238))

(assert (= (and b!2387240 (not c!379622)) b!2387237))

(assert (= (and b!2387237 (not res!1014076)) b!2387242))

(assert (= (and b!2387242 res!1014071) b!2387247))

(assert (= (and b!2387247 res!1014078) b!2387243))

(assert (= (and b!2387243 res!1014075) b!2387246))

(assert (= (and b!2387242 (not res!1014073)) b!2387249))

(assert (= (and b!2387249 res!1014072) b!2387241))

(assert (= (and b!2387241 (not res!1014074)) b!2387248))

(assert (= (and b!2387248 (not res!1014077)) b!2387244))

(assert (= (or b!2387250 b!2387241 b!2387247) bm!145143))

(declare-fun m!2788683 () Bool)

(assert (=> b!2387246 m!2788683))

(declare-fun m!2788685 () Bool)

(assert (=> b!2387239 m!2788685))

(assert (=> d!697624 m!2788675))

(declare-fun m!2788687 () Bool)

(assert (=> d!697624 m!2788687))

(declare-fun m!2788689 () Bool)

(assert (=> b!2387248 m!2788689))

(assert (=> b!2387248 m!2788689))

(declare-fun m!2788691 () Bool)

(assert (=> b!2387248 m!2788691))

(assert (=> bm!145143 m!2788675))

(assert (=> b!2387245 m!2788683))

(assert (=> b!2387245 m!2788683))

(declare-fun m!2788693 () Bool)

(assert (=> b!2387245 m!2788693))

(assert (=> b!2387245 m!2788689))

(assert (=> b!2387245 m!2788693))

(assert (=> b!2387245 m!2788689))

(declare-fun m!2788695 () Bool)

(assert (=> b!2387245 m!2788695))

(assert (=> b!2387243 m!2788689))

(assert (=> b!2387243 m!2788689))

(assert (=> b!2387243 m!2788691))

(assert (=> b!2387244 m!2788683))

(assert (=> b!2387029 d!697624))

(declare-fun d!697628 () Bool)

(assert (=> d!697628 (= (matchR!3115 r!13927 s!9460) (matchRSpec!847 r!13927 s!9460))))

(declare-fun lt!869623 () Unit!41099)

(declare-fun choose!14021 (Regex!6998 List!28235) Unit!41099)

(assert (=> d!697628 (= lt!869623 (choose!14021 r!13927 s!9460))))

(assert (=> d!697628 (validRegex!2723 r!13927)))

(assert (=> d!697628 (= (mainMatchTheorem!847 r!13927 s!9460) lt!869623)))

(declare-fun bs!462292 () Bool)

(assert (= bs!462292 d!697628))

(assert (=> bs!462292 m!2788573))

(assert (=> bs!462292 m!2788571))

(declare-fun m!2788697 () Bool)

(assert (=> bs!462292 m!2788697))

(assert (=> bs!462292 m!2788687))

(assert (=> b!2387029 d!697628))

(declare-fun d!697630 () Bool)

(assert (=> d!697630 (= (isEmpty!16103 lt!869582) (is-Nil!28136 lt!869582))))

(assert (=> b!2387034 d!697630))

(declare-fun d!697632 () Bool)

(assert (=> d!697632 (= (tail!3498 l!9164) (t!208211 l!9164))))

(assert (=> b!2387034 d!697632))

(declare-fun d!697634 () Bool)

(declare-fun isEmpty!16106 (Option!5541) Bool)

(assert (=> d!697634 (= (isDefined!4369 (findConcatSeparation!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) Nil!28137 s!9460 s!9460)) (not (isEmpty!16106 (findConcatSeparation!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) Nil!28137 s!9460 s!9460))))))

(declare-fun bs!462293 () Bool)

(assert (= bs!462293 d!697634))

(assert (=> bs!462293 m!2788579))

(declare-fun m!2788699 () Bool)

(assert (=> bs!462293 m!2788699))

(assert (=> b!2387035 d!697634))

(declare-fun d!697636 () Bool)

(declare-fun choose!14022 (Int) Bool)

(assert (=> d!697636 (= (Exists!1060 lambda!89218) (choose!14022 lambda!89218))))

(declare-fun bs!462294 () Bool)

(assert (= bs!462294 d!697636))

(declare-fun m!2788701 () Bool)

(assert (=> bs!462294 m!2788701))

(assert (=> b!2387035 d!697636))

(declare-fun bs!462295 () Bool)

(declare-fun d!697638 () Bool)

(assert (= bs!462295 (and d!697638 b!2387035)))

(declare-fun lambda!89251 () Int)

(assert (=> bs!462295 (= lambda!89251 lambda!89217)))

(assert (=> bs!462295 (not (= lambda!89251 lambda!89218))))

(declare-fun bs!462296 () Bool)

(assert (= bs!462296 (and d!697638 b!2387202)))

(assert (=> bs!462296 (not (= lambda!89251 lambda!89238))))

(declare-fun bs!462297 () Bool)

(assert (= bs!462297 (and d!697638 b!2387204)))

(assert (=> bs!462297 (not (= lambda!89251 lambda!89239))))

(assert (=> d!697638 true))

(assert (=> d!697638 true))

(assert (=> d!697638 true))

(declare-fun lambda!89252 () Int)

(assert (=> bs!462297 (= lambda!89252 lambda!89239)))

(declare-fun bs!462298 () Bool)

(assert (= bs!462298 d!697638))

(assert (=> bs!462298 (not (= lambda!89252 lambda!89251))))

(assert (=> bs!462295 (= lambda!89252 lambda!89218)))

(assert (=> bs!462296 (not (= lambda!89252 lambda!89238))))

(assert (=> bs!462295 (not (= lambda!89252 lambda!89217))))

(assert (=> d!697638 true))

(assert (=> d!697638 true))

(assert (=> d!697638 true))

(assert (=> d!697638 (= (Exists!1060 lambda!89251) (Exists!1060 lambda!89252))))

(declare-fun lt!869628 () Unit!41099)

(declare-fun choose!14023 (Regex!6998 Regex!6998 List!28235) Unit!41099)

(assert (=> d!697638 (= lt!869628 (choose!14023 (regOne!14508 r!13927) (regTwo!14508 r!13927) s!9460))))

(assert (=> d!697638 (validRegex!2723 (regOne!14508 r!13927))))

(assert (=> d!697638 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!399 (regOne!14508 r!13927) (regTwo!14508 r!13927) s!9460) lt!869628)))

(declare-fun m!2788703 () Bool)

(assert (=> bs!462298 m!2788703))

(declare-fun m!2788705 () Bool)

(assert (=> bs!462298 m!2788705))

(declare-fun m!2788707 () Bool)

(assert (=> bs!462298 m!2788707))

(declare-fun m!2788709 () Bool)

(assert (=> bs!462298 m!2788709))

(assert (=> b!2387035 d!697638))

(declare-fun b!2387285 () Bool)

(declare-fun res!1014107 () Bool)

(declare-fun e!1522079 () Bool)

(assert (=> b!2387285 (=> (not res!1014107) (not e!1522079))))

(declare-fun lt!869638 () Option!5541)

(declare-fun get!8595 (Option!5541) tuple2!27860)

(assert (=> b!2387285 (= res!1014107 (matchR!3115 (regOne!14508 r!13927) (_1!16471 (get!8595 lt!869638))))))

(declare-fun b!2387286 () Bool)

(declare-fun e!1522078 () Option!5541)

(assert (=> b!2387286 (= e!1522078 (Some!5540 (tuple2!27861 Nil!28137 s!9460)))))

(declare-fun b!2387287 () Bool)

(declare-fun e!1522077 () Option!5541)

(assert (=> b!2387287 (= e!1522078 e!1522077)))

(declare-fun c!379627 () Bool)

(assert (=> b!2387287 (= c!379627 (is-Nil!28137 s!9460))))

(declare-fun b!2387288 () Bool)

(declare-fun lt!869636 () Unit!41099)

(declare-fun lt!869637 () Unit!41099)

(assert (=> b!2387288 (= lt!869636 lt!869637)))

(declare-fun ++!6952 (List!28235 List!28235) List!28235)

(assert (=> b!2387288 (= (++!6952 (++!6952 Nil!28137 (Cons!28137 (h!33538 s!9460) Nil!28137)) (t!208212 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!594 (List!28235 C!14154 List!28235 List!28235) Unit!41099)

(assert (=> b!2387288 (= lt!869637 (lemmaMoveElementToOtherListKeepsConcatEq!594 Nil!28137 (h!33538 s!9460) (t!208212 s!9460) s!9460))))

(assert (=> b!2387288 (= e!1522077 (findConcatSeparation!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) (++!6952 Nil!28137 (Cons!28137 (h!33538 s!9460) Nil!28137)) (t!208212 s!9460) s!9460))))

(declare-fun b!2387289 () Bool)

(declare-fun res!1014106 () Bool)

(assert (=> b!2387289 (=> (not res!1014106) (not e!1522079))))

(assert (=> b!2387289 (= res!1014106 (matchR!3115 (regTwo!14508 r!13927) (_2!16471 (get!8595 lt!869638))))))

(declare-fun b!2387290 () Bool)

(declare-fun e!1522080 () Bool)

(assert (=> b!2387290 (= e!1522080 (matchR!3115 (regTwo!14508 r!13927) s!9460))))

(declare-fun b!2387291 () Bool)

(declare-fun e!1522076 () Bool)

(assert (=> b!2387291 (= e!1522076 (not (isDefined!4369 lt!869638)))))

(declare-fun d!697640 () Bool)

(assert (=> d!697640 e!1522076))

(declare-fun res!1014108 () Bool)

(assert (=> d!697640 (=> res!1014108 e!1522076)))

(assert (=> d!697640 (= res!1014108 e!1522079)))

(declare-fun res!1014109 () Bool)

(assert (=> d!697640 (=> (not res!1014109) (not e!1522079))))

(assert (=> d!697640 (= res!1014109 (isDefined!4369 lt!869638))))

(assert (=> d!697640 (= lt!869638 e!1522078)))

(declare-fun c!379628 () Bool)

(assert (=> d!697640 (= c!379628 e!1522080)))

(declare-fun res!1014105 () Bool)

(assert (=> d!697640 (=> (not res!1014105) (not e!1522080))))

(assert (=> d!697640 (= res!1014105 (matchR!3115 (regOne!14508 r!13927) Nil!28137))))

(assert (=> d!697640 (validRegex!2723 (regOne!14508 r!13927))))

(assert (=> d!697640 (= (findConcatSeparation!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) Nil!28137 s!9460 s!9460) lt!869638)))

(declare-fun b!2387292 () Bool)

(assert (=> b!2387292 (= e!1522079 (= (++!6952 (_1!16471 (get!8595 lt!869638)) (_2!16471 (get!8595 lt!869638))) s!9460))))

(declare-fun b!2387293 () Bool)

(assert (=> b!2387293 (= e!1522077 None!5540)))

(assert (= (and d!697640 res!1014105) b!2387290))

(assert (= (and d!697640 c!379628) b!2387286))

(assert (= (and d!697640 (not c!379628)) b!2387287))

(assert (= (and b!2387287 c!379627) b!2387293))

(assert (= (and b!2387287 (not c!379627)) b!2387288))

(assert (= (and d!697640 res!1014109) b!2387285))

(assert (= (and b!2387285 res!1014107) b!2387289))

(assert (= (and b!2387289 res!1014106) b!2387292))

(assert (= (and d!697640 (not res!1014108)) b!2387291))

(declare-fun m!2788717 () Bool)

(assert (=> b!2387289 m!2788717))

(declare-fun m!2788719 () Bool)

(assert (=> b!2387289 m!2788719))

(declare-fun m!2788721 () Bool)

(assert (=> b!2387291 m!2788721))

(assert (=> d!697640 m!2788721))

(declare-fun m!2788723 () Bool)

(assert (=> d!697640 m!2788723))

(assert (=> d!697640 m!2788709))

(declare-fun m!2788725 () Bool)

(assert (=> b!2387288 m!2788725))

(assert (=> b!2387288 m!2788725))

(declare-fun m!2788727 () Bool)

(assert (=> b!2387288 m!2788727))

(declare-fun m!2788729 () Bool)

(assert (=> b!2387288 m!2788729))

(assert (=> b!2387288 m!2788725))

(declare-fun m!2788731 () Bool)

(assert (=> b!2387288 m!2788731))

(declare-fun m!2788733 () Bool)

(assert (=> b!2387290 m!2788733))

(assert (=> b!2387292 m!2788717))

(declare-fun m!2788735 () Bool)

(assert (=> b!2387292 m!2788735))

(assert (=> b!2387285 m!2788717))

(declare-fun m!2788737 () Bool)

(assert (=> b!2387285 m!2788737))

(assert (=> b!2387035 d!697640))

(declare-fun bs!462302 () Bool)

(declare-fun d!697644 () Bool)

(assert (= bs!462302 (and d!697644 b!2387204)))

(declare-fun lambda!89257 () Int)

(assert (=> bs!462302 (not (= lambda!89257 lambda!89239))))

(declare-fun bs!462303 () Bool)

(assert (= bs!462303 (and d!697644 d!697638)))

(assert (=> bs!462303 (= lambda!89257 lambda!89251)))

(declare-fun bs!462304 () Bool)

(assert (= bs!462304 (and d!697644 b!2387035)))

(assert (=> bs!462304 (not (= lambda!89257 lambda!89218))))

(declare-fun bs!462305 () Bool)

(assert (= bs!462305 (and d!697644 b!2387202)))

(assert (=> bs!462305 (not (= lambda!89257 lambda!89238))))

(assert (=> bs!462304 (= lambda!89257 lambda!89217)))

(assert (=> bs!462303 (not (= lambda!89257 lambda!89252))))

(assert (=> d!697644 true))

(assert (=> d!697644 true))

(assert (=> d!697644 true))

(assert (=> d!697644 (= (isDefined!4369 (findConcatSeparation!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) Nil!28137 s!9460 s!9460)) (Exists!1060 lambda!89257))))

(declare-fun lt!869641 () Unit!41099)

(declare-fun choose!14024 (Regex!6998 Regex!6998 List!28235) Unit!41099)

(assert (=> d!697644 (= lt!869641 (choose!14024 (regOne!14508 r!13927) (regTwo!14508 r!13927) s!9460))))

(assert (=> d!697644 (validRegex!2723 (regOne!14508 r!13927))))

(assert (=> d!697644 (= (lemmaFindConcatSeparationEquivalentToExists!649 (regOne!14508 r!13927) (regTwo!14508 r!13927) s!9460) lt!869641)))

(declare-fun bs!462306 () Bool)

(assert (= bs!462306 d!697644))

(declare-fun m!2788739 () Bool)

(assert (=> bs!462306 m!2788739))

(assert (=> bs!462306 m!2788579))

(assert (=> bs!462306 m!2788579))

(assert (=> bs!462306 m!2788581))

(assert (=> bs!462306 m!2788709))

(declare-fun m!2788741 () Bool)

(assert (=> bs!462306 m!2788741))

(assert (=> b!2387035 d!697644))

(declare-fun d!697646 () Bool)

(assert (=> d!697646 (= (Exists!1060 lambda!89217) (choose!14022 lambda!89217))))

(declare-fun bs!462307 () Bool)

(assert (= bs!462307 d!697646))

(declare-fun m!2788743 () Bool)

(assert (=> bs!462307 m!2788743))

(assert (=> b!2387035 d!697646))

(declare-fun d!697648 () Bool)

(assert (=> d!697648 (= (isEmpty!16103 l!9164) (is-Nil!28136 l!9164))))

(assert (=> b!2387037 d!697648))

(declare-fun d!697650 () Bool)

(declare-fun res!1014120 () Bool)

(declare-fun e!1522093 () Bool)

(assert (=> d!697650 (=> res!1014120 e!1522093)))

(assert (=> d!697650 (= res!1014120 (is-Nil!28136 l!9164))))

(assert (=> d!697650 (= (forall!5632 l!9164 lambda!89216) e!1522093)))

(declare-fun b!2387312 () Bool)

(declare-fun e!1522096 () Bool)

(assert (=> b!2387312 (= e!1522093 e!1522096)))

(declare-fun res!1014122 () Bool)

(assert (=> b!2387312 (=> (not res!1014122) (not e!1522096))))

(declare-fun dynLambda!12115 (Int Regex!6998) Bool)

(assert (=> b!2387312 (= res!1014122 (dynLambda!12115 lambda!89216 (h!33537 l!9164)))))

(declare-fun b!2387313 () Bool)

(assert (=> b!2387313 (= e!1522096 (forall!5632 (t!208211 l!9164) lambda!89216))))

(assert (= (and d!697650 (not res!1014120)) b!2387312))

(assert (= (and b!2387312 res!1014122) b!2387313))

(declare-fun b_lambda!74147 () Bool)

(assert (=> (not b_lambda!74147) (not b!2387312)))

(declare-fun m!2788745 () Bool)

(assert (=> b!2387312 m!2788745))

(declare-fun m!2788747 () Bool)

(assert (=> b!2387313 m!2788747))

(assert (=> start!234242 d!697650))

(declare-fun b!2387335 () Bool)

(declare-fun e!1522101 () Bool)

(declare-fun tp!761380 () Bool)

(declare-fun tp!761379 () Bool)

(assert (=> b!2387335 (= e!1522101 (and tp!761380 tp!761379))))

(assert (=> b!2387033 (= tp!761338 e!1522101)))

(declare-fun b!2387333 () Bool)

(declare-fun tp!761377 () Bool)

(declare-fun tp!761376 () Bool)

(assert (=> b!2387333 (= e!1522101 (and tp!761377 tp!761376))))

(declare-fun b!2387334 () Bool)

(declare-fun tp!761378 () Bool)

(assert (=> b!2387334 (= e!1522101 tp!761378)))

(declare-fun b!2387332 () Bool)

(assert (=> b!2387332 (= e!1522101 tp_is_empty!11409)))

(assert (= (and b!2387033 (is-ElementMatch!6998 (regOne!14508 r!13927))) b!2387332))

(assert (= (and b!2387033 (is-Concat!11634 (regOne!14508 r!13927))) b!2387333))

(assert (= (and b!2387033 (is-Star!6998 (regOne!14508 r!13927))) b!2387334))

(assert (= (and b!2387033 (is-Union!6998 (regOne!14508 r!13927))) b!2387335))

(declare-fun b!2387339 () Bool)

(declare-fun e!1522102 () Bool)

(declare-fun tp!761385 () Bool)

(declare-fun tp!761384 () Bool)

(assert (=> b!2387339 (= e!1522102 (and tp!761385 tp!761384))))

(assert (=> b!2387033 (= tp!761339 e!1522102)))

(declare-fun b!2387337 () Bool)

(declare-fun tp!761382 () Bool)

(declare-fun tp!761381 () Bool)

(assert (=> b!2387337 (= e!1522102 (and tp!761382 tp!761381))))

(declare-fun b!2387338 () Bool)

(declare-fun tp!761383 () Bool)

(assert (=> b!2387338 (= e!1522102 tp!761383)))

(declare-fun b!2387336 () Bool)

(assert (=> b!2387336 (= e!1522102 tp_is_empty!11409)))

(assert (= (and b!2387033 (is-ElementMatch!6998 (regTwo!14508 r!13927))) b!2387336))

(assert (= (and b!2387033 (is-Concat!11634 (regTwo!14508 r!13927))) b!2387337))

(assert (= (and b!2387033 (is-Star!6998 (regTwo!14508 r!13927))) b!2387338))

(assert (= (and b!2387033 (is-Union!6998 (regTwo!14508 r!13927))) b!2387339))

(declare-fun b!2387343 () Bool)

(declare-fun e!1522103 () Bool)

(declare-fun tp!761390 () Bool)

(declare-fun tp!761389 () Bool)

(assert (=> b!2387343 (= e!1522103 (and tp!761390 tp!761389))))

(assert (=> b!2387028 (= tp!761335 e!1522103)))

(declare-fun b!2387341 () Bool)

(declare-fun tp!761387 () Bool)

(declare-fun tp!761386 () Bool)

(assert (=> b!2387341 (= e!1522103 (and tp!761387 tp!761386))))

(declare-fun b!2387342 () Bool)

(declare-fun tp!761388 () Bool)

(assert (=> b!2387342 (= e!1522103 tp!761388)))

(declare-fun b!2387340 () Bool)

(assert (=> b!2387340 (= e!1522103 tp_is_empty!11409)))

(assert (= (and b!2387028 (is-ElementMatch!6998 (regOne!14509 r!13927))) b!2387340))

(assert (= (and b!2387028 (is-Concat!11634 (regOne!14509 r!13927))) b!2387341))

(assert (= (and b!2387028 (is-Star!6998 (regOne!14509 r!13927))) b!2387342))

(assert (= (and b!2387028 (is-Union!6998 (regOne!14509 r!13927))) b!2387343))

(declare-fun b!2387347 () Bool)

(declare-fun e!1522104 () Bool)

(declare-fun tp!761395 () Bool)

(declare-fun tp!761394 () Bool)

(assert (=> b!2387347 (= e!1522104 (and tp!761395 tp!761394))))

(assert (=> b!2387028 (= tp!761337 e!1522104)))

(declare-fun b!2387345 () Bool)

(declare-fun tp!761392 () Bool)

(declare-fun tp!761391 () Bool)

(assert (=> b!2387345 (= e!1522104 (and tp!761392 tp!761391))))

(declare-fun b!2387346 () Bool)

(declare-fun tp!761393 () Bool)

(assert (=> b!2387346 (= e!1522104 tp!761393)))

(declare-fun b!2387344 () Bool)

(assert (=> b!2387344 (= e!1522104 tp_is_empty!11409)))

(assert (= (and b!2387028 (is-ElementMatch!6998 (regTwo!14509 r!13927))) b!2387344))

(assert (= (and b!2387028 (is-Concat!11634 (regTwo!14509 r!13927))) b!2387345))

(assert (= (and b!2387028 (is-Star!6998 (regTwo!14509 r!13927))) b!2387346))

(assert (= (and b!2387028 (is-Union!6998 (regTwo!14509 r!13927))) b!2387347))

(declare-fun b!2387351 () Bool)

(declare-fun e!1522105 () Bool)

(declare-fun tp!761400 () Bool)

(declare-fun tp!761399 () Bool)

(assert (=> b!2387351 (= e!1522105 (and tp!761400 tp!761399))))

(assert (=> b!2387030 (= tp!761336 e!1522105)))

(declare-fun b!2387349 () Bool)

(declare-fun tp!761397 () Bool)

(declare-fun tp!761396 () Bool)

(assert (=> b!2387349 (= e!1522105 (and tp!761397 tp!761396))))

(declare-fun b!2387350 () Bool)

(declare-fun tp!761398 () Bool)

(assert (=> b!2387350 (= e!1522105 tp!761398)))

(declare-fun b!2387348 () Bool)

(assert (=> b!2387348 (= e!1522105 tp_is_empty!11409)))

(assert (= (and b!2387030 (is-ElementMatch!6998 (reg!7327 r!13927))) b!2387348))

(assert (= (and b!2387030 (is-Concat!11634 (reg!7327 r!13927))) b!2387349))

(assert (= (and b!2387030 (is-Star!6998 (reg!7327 r!13927))) b!2387350))

(assert (= (and b!2387030 (is-Union!6998 (reg!7327 r!13927))) b!2387351))

(declare-fun b!2387355 () Bool)

(declare-fun e!1522106 () Bool)

(declare-fun tp!761405 () Bool)

(declare-fun tp!761404 () Bool)

(assert (=> b!2387355 (= e!1522106 (and tp!761405 tp!761404))))

(assert (=> b!2387032 (= tp!761340 e!1522106)))

(declare-fun b!2387353 () Bool)

(declare-fun tp!761402 () Bool)

(declare-fun tp!761401 () Bool)

(assert (=> b!2387353 (= e!1522106 (and tp!761402 tp!761401))))

(declare-fun b!2387354 () Bool)

(declare-fun tp!761403 () Bool)

(assert (=> b!2387354 (= e!1522106 tp!761403)))

(declare-fun b!2387352 () Bool)

(assert (=> b!2387352 (= e!1522106 tp_is_empty!11409)))

(assert (= (and b!2387032 (is-ElementMatch!6998 (h!33537 l!9164))) b!2387352))

(assert (= (and b!2387032 (is-Concat!11634 (h!33537 l!9164))) b!2387353))

(assert (= (and b!2387032 (is-Star!6998 (h!33537 l!9164))) b!2387354))

(assert (= (and b!2387032 (is-Union!6998 (h!33537 l!9164))) b!2387355))

(declare-fun b!2387360 () Bool)

(declare-fun e!1522109 () Bool)

(declare-fun tp!761410 () Bool)

(declare-fun tp!761411 () Bool)

(assert (=> b!2387360 (= e!1522109 (and tp!761410 tp!761411))))

(assert (=> b!2387032 (= tp!761341 e!1522109)))

(assert (= (and b!2387032 (is-Cons!28136 (t!208211 l!9164))) b!2387360))

(declare-fun b!2387365 () Bool)

(declare-fun e!1522112 () Bool)

(declare-fun tp!761414 () Bool)

(assert (=> b!2387365 (= e!1522112 (and tp_is_empty!11409 tp!761414))))

(assert (=> b!2387031 (= tp!761334 e!1522112)))

(assert (= (and b!2387031 (is-Cons!28137 (t!208212 s!9460))) b!2387365))

(declare-fun b_lambda!74149 () Bool)

(assert (= b_lambda!74147 (or start!234242 b_lambda!74149)))

(declare-fun bs!462308 () Bool)

(declare-fun d!697652 () Bool)

(assert (= bs!462308 (and d!697652 start!234242)))

(assert (=> bs!462308 (= (dynLambda!12115 lambda!89216 (h!33537 l!9164)) (validRegex!2723 (h!33537 l!9164)))))

(declare-fun m!2788749 () Bool)

(assert (=> bs!462308 m!2788749))

(assert (=> b!2387312 d!697652))

(push 1)

(assert (not b!2387245))

(assert (not bm!145134))

(assert (not d!697636))

(assert (not b!2387351))

(assert (not b!2387243))

(assert (not b!2387160))

(assert (not b!2387339))

(assert (not b!2387152))

(assert (not b!2387365))

(assert (not d!697646))

(assert (not bm!145139))

(assert (not b!2387333))

(assert (not bm!145143))

(assert (not b!2387285))

(assert (not b!2387157))

(assert (not b!2387156))

(assert (not b!2387334))

(assert (not bs!462308))

(assert (not b!2387288))

(assert (not b!2387354))

(assert (not d!697624))

(assert (not b!2387289))

(assert (not b!2387155))

(assert (not b!2387292))

(assert (not b!2387353))

(assert (not bm!145140))

(assert (not b!2387343))

(assert (not b!2387337))

(assert (not b!2387153))

(assert (not d!697604))

(assert (not b!2387290))

(assert (not b!2387345))

(assert (not b!2387341))

(assert (not bm!145133))

(assert (not b!2387349))

(assert tp_is_empty!11409)

(assert (not b!2387123))

(assert (not b!2387120))

(assert (not b!2387335))

(assert (not b!2387244))

(assert (not b!2387360))

(assert (not d!697628))

(assert (not d!697644))

(assert (not b!2387116))

(assert (not d!697640))

(assert (not b!2387115))

(assert (not b!2387346))

(assert (not b!2387350))

(assert (not b!2387239))

(assert (not b!2387342))

(assert (not b!2387291))

(assert (not d!697638))

(assert (not b!2387119))

(assert (not b!2387199))

(assert (not b!2387124))

(assert (not b!2387246))

(assert (not d!697610))

(assert (not b!2387146))

(assert (not b!2387203))

(assert (not b!2387347))

(assert (not b!2387118))

(assert (not b!2387338))

(assert (not b_lambda!74149))

(assert (not b!2387313))

(assert (not b!2387248))

(assert (not d!697634))

(assert (not b!2387161))

(assert (not b!2387355))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

