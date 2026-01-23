; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!235726 () Bool)

(assert start!235726)

(declare-fun b!2404031 () Bool)

(declare-fun e!1531248 () Bool)

(declare-fun tp_is_empty!11509 () Bool)

(declare-fun tp!764990 () Bool)

(assert (=> b!2404031 (= e!1531248 (and tp_is_empty!11509 tp!764990))))

(declare-fun b!2404032 () Bool)

(declare-fun e!1531246 () Bool)

(declare-fun e!1531243 () Bool)

(assert (=> b!2404032 (= e!1531246 e!1531243)))

(declare-fun res!1021208 () Bool)

(assert (=> b!2404032 (=> res!1021208 e!1531243)))

(declare-datatypes ((C!14254 0))(
  ( (C!14255 (val!8369 Int)) )
))
(declare-datatypes ((Regex!7048 0))(
  ( (ElementMatch!7048 (c!382865 C!14254)) (Concat!11684 (regOne!14608 Regex!7048) (regTwo!14608 Regex!7048)) (EmptyExpr!7048) (Star!7048 (reg!7377 Regex!7048)) (EmptyLang!7048) (Union!7048 (regOne!14609 Regex!7048) (regTwo!14609 Regex!7048)) )
))
(declare-datatypes ((List!28334 0))(
  ( (Nil!28236) (Cons!28236 (h!33637 Regex!7048) (t!208311 List!28334)) )
))
(declare-fun l!9164 () List!28334)

(declare-fun validRegex!2773 (Regex!7048) Bool)

(assert (=> b!2404032 (= res!1021208 (not (validRegex!2773 (h!33637 l!9164))))))

(declare-fun lt!872823 () Regex!7048)

(declare-fun generalisedConcat!149 (List!28334) Regex!7048)

(assert (=> b!2404032 (= lt!872823 (generalisedConcat!149 (t!208311 l!9164)))))

(declare-fun b!2404033 () Bool)

(declare-fun res!1021205 () Bool)

(assert (=> b!2404033 (=> res!1021205 e!1531246)))

(declare-fun e!1531245 () Bool)

(assert (=> b!2404033 (= res!1021205 e!1531245)))

(declare-fun c!382864 () Bool)

(assert (=> b!2404033 (= c!382864 (is-Cons!28236 l!9164))))

(declare-fun b!2404034 () Bool)

(declare-fun res!1021209 () Bool)

(declare-fun e!1531247 () Bool)

(assert (=> b!2404034 (=> (not res!1021209) (not e!1531247))))

(declare-fun r!13927 () Regex!7048)

(assert (=> b!2404034 (= res!1021209 (= r!13927 (generalisedConcat!149 l!9164)))))

(declare-fun b!2404035 () Bool)

(declare-fun e!1531244 () Bool)

(declare-fun tp!764987 () Bool)

(declare-fun tp!764985 () Bool)

(assert (=> b!2404035 (= e!1531244 (and tp!764987 tp!764985))))

(declare-fun b!2404036 () Bool)

(declare-datatypes ((List!28335 0))(
  ( (Nil!28237) (Cons!28237 (h!33638 C!14254) (t!208312 List!28335)) )
))
(declare-fun s!9460 () List!28335)

(declare-fun ++!6991 (List!28335 List!28335) List!28335)

(assert (=> b!2404036 (= e!1531243 (= (++!6991 Nil!28237 s!9460) s!9460))))

(declare-fun b!2404037 () Bool)

(assert (=> b!2404037 (= e!1531247 (not e!1531246))))

(declare-fun res!1021206 () Bool)

(assert (=> b!2404037 (=> res!1021206 e!1531246)))

(assert (=> b!2404037 (= res!1021206 (or (is-Concat!11684 r!13927) (not (is-EmptyExpr!7048 r!13927))))))

(declare-fun lt!872821 () Bool)

(declare-fun matchRSpec!897 (Regex!7048 List!28335) Bool)

(assert (=> b!2404037 (= lt!872821 (matchRSpec!897 r!13927 s!9460))))

(declare-fun matchR!3165 (Regex!7048 List!28335) Bool)

(assert (=> b!2404037 (= lt!872821 (matchR!3165 r!13927 s!9460))))

(declare-datatypes ((Unit!41367 0))(
  ( (Unit!41368) )
))
(declare-fun lt!872822 () Unit!41367)

(declare-fun mainMatchTheorem!897 (Regex!7048 List!28335) Unit!41367)

(assert (=> b!2404037 (= lt!872822 (mainMatchTheorem!897 r!13927 s!9460))))

(declare-fun b!2404038 () Bool)

(declare-fun e!1531249 () Bool)

(declare-fun tp!764989 () Bool)

(declare-fun tp!764984 () Bool)

(assert (=> b!2404038 (= e!1531249 (and tp!764989 tp!764984))))

(declare-fun b!2404039 () Bool)

(declare-fun tp!764988 () Bool)

(assert (=> b!2404039 (= e!1531244 tp!764988)))

(declare-fun b!2404040 () Bool)

(assert (=> b!2404040 (= e!1531244 tp_is_empty!11509)))

(declare-fun b!2404041 () Bool)

(declare-fun tp!764991 () Bool)

(declare-fun tp!764986 () Bool)

(assert (=> b!2404041 (= e!1531244 (and tp!764991 tp!764986))))

(declare-fun b!2404042 () Bool)

(declare-datatypes ((tuple2!27936 0))(
  ( (tuple2!27937 (_1!16509 List!28335) (_2!16509 List!28335)) )
))
(declare-datatypes ((Option!5579 0))(
  ( (None!5578) (Some!5578 (v!30986 tuple2!27936)) )
))
(declare-fun isDefined!4407 (Option!5579) Bool)

(declare-fun findConcatSeparation!687 (Regex!7048 Regex!7048 List!28335 List!28335 List!28335) Option!5579)

(assert (=> b!2404042 (= e!1531245 (not (= lt!872821 (isDefined!4407 (findConcatSeparation!687 (h!33637 l!9164) (generalisedConcat!149 (t!208311 l!9164)) Nil!28237 s!9460 s!9460)))))))

(declare-fun b!2404043 () Bool)

(declare-fun res!1021207 () Bool)

(assert (=> b!2404043 (=> res!1021207 e!1531243)))

(assert (=> b!2404043 (= res!1021207 (not (validRegex!2773 lt!872823)))))

(declare-fun res!1021210 () Bool)

(assert (=> start!235726 (=> (not res!1021210) (not e!1531247))))

(declare-fun lambda!90398 () Int)

(declare-fun forall!5682 (List!28334 Int) Bool)

(assert (=> start!235726 (= res!1021210 (forall!5682 l!9164 lambda!90398))))

(assert (=> start!235726 e!1531247))

(assert (=> start!235726 e!1531249))

(assert (=> start!235726 e!1531244))

(assert (=> start!235726 e!1531248))

(declare-fun b!2404044 () Bool)

(declare-fun isEmpty!16238 (List!28335) Bool)

(assert (=> b!2404044 (= e!1531245 (not (= lt!872821 (isEmpty!16238 s!9460))))))

(declare-fun b!2404045 () Bool)

(declare-fun res!1021211 () Bool)

(assert (=> b!2404045 (=> res!1021211 e!1531246)))

(assert (=> b!2404045 (= res!1021211 (not (is-Cons!28236 l!9164)))))

(assert (= (and start!235726 res!1021210) b!2404034))

(assert (= (and b!2404034 res!1021209) b!2404037))

(assert (= (and b!2404037 (not res!1021206)) b!2404033))

(assert (= (and b!2404033 c!382864) b!2404042))

(assert (= (and b!2404033 (not c!382864)) b!2404044))

(assert (= (and b!2404033 (not res!1021205)) b!2404045))

(assert (= (and b!2404045 (not res!1021211)) b!2404032))

(assert (= (and b!2404032 (not res!1021208)) b!2404043))

(assert (= (and b!2404043 (not res!1021207)) b!2404036))

(assert (= (and start!235726 (is-Cons!28236 l!9164)) b!2404038))

(assert (= (and start!235726 (is-ElementMatch!7048 r!13927)) b!2404040))

(assert (= (and start!235726 (is-Concat!11684 r!13927)) b!2404035))

(assert (= (and start!235726 (is-Star!7048 r!13927)) b!2404039))

(assert (= (and start!235726 (is-Union!7048 r!13927)) b!2404041))

(assert (= (and start!235726 (is-Cons!28237 s!9460)) b!2404031))

(declare-fun m!2799151 () Bool)

(assert (=> b!2404037 m!2799151))

(declare-fun m!2799153 () Bool)

(assert (=> b!2404037 m!2799153))

(declare-fun m!2799155 () Bool)

(assert (=> b!2404037 m!2799155))

(declare-fun m!2799157 () Bool)

(assert (=> b!2404042 m!2799157))

(assert (=> b!2404042 m!2799157))

(declare-fun m!2799159 () Bool)

(assert (=> b!2404042 m!2799159))

(assert (=> b!2404042 m!2799159))

(declare-fun m!2799161 () Bool)

(assert (=> b!2404042 m!2799161))

(declare-fun m!2799163 () Bool)

(assert (=> b!2404036 m!2799163))

(declare-fun m!2799165 () Bool)

(assert (=> b!2404043 m!2799165))

(declare-fun m!2799167 () Bool)

(assert (=> b!2404034 m!2799167))

(declare-fun m!2799169 () Bool)

(assert (=> start!235726 m!2799169))

(declare-fun m!2799171 () Bool)

(assert (=> b!2404044 m!2799171))

(declare-fun m!2799173 () Bool)

(assert (=> b!2404032 m!2799173))

(assert (=> b!2404032 m!2799157))

(push 1)

(assert (not b!2404031))

(assert (not b!2404042))

(assert (not b!2404032))

(assert (not start!235726))

(assert (not b!2404036))

(assert (not b!2404039))

(assert (not b!2404041))

(assert (not b!2404034))

(assert (not b!2404044))

(assert (not b!2404035))

(assert (not b!2404037))

(assert tp_is_empty!11509)

(assert (not b!2404043))

(assert (not b!2404038))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!699915 () Bool)

(declare-fun res!1021237 () Bool)

(declare-fun e!1531275 () Bool)

(assert (=> d!699915 (=> res!1021237 e!1531275)))

(assert (=> d!699915 (= res!1021237 (is-Nil!28236 l!9164))))

(assert (=> d!699915 (= (forall!5682 l!9164 lambda!90398) e!1531275)))

(declare-fun b!2404095 () Bool)

(declare-fun e!1531276 () Bool)

(assert (=> b!2404095 (= e!1531275 e!1531276)))

(declare-fun res!1021238 () Bool)

(assert (=> b!2404095 (=> (not res!1021238) (not e!1531276))))

(declare-fun dynLambda!12160 (Int Regex!7048) Bool)

(assert (=> b!2404095 (= res!1021238 (dynLambda!12160 lambda!90398 (h!33637 l!9164)))))

(declare-fun b!2404096 () Bool)

(assert (=> b!2404096 (= e!1531276 (forall!5682 (t!208311 l!9164) lambda!90398))))

(assert (= (and d!699915 (not res!1021237)) b!2404095))

(assert (= (and b!2404095 res!1021238) b!2404096))

(declare-fun b_lambda!74379 () Bool)

(assert (=> (not b_lambda!74379) (not b!2404095)))

(declare-fun m!2799199 () Bool)

(assert (=> b!2404095 m!2799199))

(declare-fun m!2799201 () Bool)

(assert (=> b!2404096 m!2799201))

(assert (=> start!235726 d!699915))

(declare-fun d!699917 () Bool)

(assert (=> d!699917 (= (isEmpty!16238 s!9460) (is-Nil!28237 s!9460))))

(assert (=> b!2404044 d!699917))

(declare-fun bs!463241 () Bool)

(declare-fun d!699919 () Bool)

(assert (= bs!463241 (and d!699919 start!235726)))

(declare-fun lambda!90406 () Int)

(assert (=> bs!463241 (= lambda!90406 lambda!90398)))

(declare-fun b!2404145 () Bool)

(declare-fun e!1531307 () Bool)

(declare-fun lt!872835 () Regex!7048)

(declare-fun head!5324 (List!28334) Regex!7048)

(assert (=> b!2404145 (= e!1531307 (= lt!872835 (head!5324 l!9164)))))

(declare-fun b!2404146 () Bool)

(declare-fun isConcat!116 (Regex!7048) Bool)

(assert (=> b!2404146 (= e!1531307 (isConcat!116 lt!872835))))

(declare-fun b!2404147 () Bool)

(declare-fun e!1531305 () Bool)

(declare-fun isEmptyExpr!116 (Regex!7048) Bool)

(assert (=> b!2404147 (= e!1531305 (isEmptyExpr!116 lt!872835))))

(declare-fun e!1531309 () Bool)

(assert (=> d!699919 e!1531309))

(declare-fun res!1021255 () Bool)

(assert (=> d!699919 (=> (not res!1021255) (not e!1531309))))

(assert (=> d!699919 (= res!1021255 (validRegex!2773 lt!872835))))

(declare-fun e!1531306 () Regex!7048)

(assert (=> d!699919 (= lt!872835 e!1531306)))

(declare-fun c!382889 () Bool)

(declare-fun e!1531308 () Bool)

(assert (=> d!699919 (= c!382889 e!1531308)))

(declare-fun res!1021256 () Bool)

(assert (=> d!699919 (=> (not res!1021256) (not e!1531308))))

(assert (=> d!699919 (= res!1021256 (is-Cons!28236 l!9164))))

(assert (=> d!699919 (forall!5682 l!9164 lambda!90406)))

(assert (=> d!699919 (= (generalisedConcat!149 l!9164) lt!872835)))

(declare-fun b!2404148 () Bool)

(assert (=> b!2404148 (= e!1531306 (h!33637 l!9164))))

(declare-fun b!2404149 () Bool)

(declare-fun e!1531310 () Regex!7048)

(assert (=> b!2404149 (= e!1531306 e!1531310)))

(declare-fun c!382887 () Bool)

(assert (=> b!2404149 (= c!382887 (is-Cons!28236 l!9164))))

(declare-fun b!2404150 () Bool)

(declare-fun isEmpty!16240 (List!28334) Bool)

(assert (=> b!2404150 (= e!1531308 (isEmpty!16240 (t!208311 l!9164)))))

(declare-fun b!2404151 () Bool)

(assert (=> b!2404151 (= e!1531310 (Concat!11684 (h!33637 l!9164) (generalisedConcat!149 (t!208311 l!9164))))))

(declare-fun b!2404152 () Bool)

(assert (=> b!2404152 (= e!1531305 e!1531307)))

(declare-fun c!382888 () Bool)

(declare-fun tail!3594 (List!28334) List!28334)

(assert (=> b!2404152 (= c!382888 (isEmpty!16240 (tail!3594 l!9164)))))

(declare-fun b!2404153 () Bool)

(assert (=> b!2404153 (= e!1531309 e!1531305)))

(declare-fun c!382886 () Bool)

(assert (=> b!2404153 (= c!382886 (isEmpty!16240 l!9164))))

(declare-fun b!2404154 () Bool)

(assert (=> b!2404154 (= e!1531310 EmptyExpr!7048)))

(assert (= (and d!699919 res!1021256) b!2404150))

(assert (= (and d!699919 c!382889) b!2404148))

(assert (= (and d!699919 (not c!382889)) b!2404149))

(assert (= (and b!2404149 c!382887) b!2404151))

(assert (= (and b!2404149 (not c!382887)) b!2404154))

(assert (= (and d!699919 res!1021255) b!2404153))

(assert (= (and b!2404153 c!382886) b!2404147))

(assert (= (and b!2404153 (not c!382886)) b!2404152))

(assert (= (and b!2404152 c!382888) b!2404145))

(assert (= (and b!2404152 (not c!382888)) b!2404146))

(declare-fun m!2799203 () Bool)

(assert (=> b!2404146 m!2799203))

(declare-fun m!2799205 () Bool)

(assert (=> b!2404152 m!2799205))

(assert (=> b!2404152 m!2799205))

(declare-fun m!2799207 () Bool)

(assert (=> b!2404152 m!2799207))

(declare-fun m!2799209 () Bool)

(assert (=> b!2404153 m!2799209))

(assert (=> b!2404151 m!2799157))

(declare-fun m!2799211 () Bool)

(assert (=> b!2404145 m!2799211))

(declare-fun m!2799213 () Bool)

(assert (=> d!699919 m!2799213))

(declare-fun m!2799215 () Bool)

(assert (=> d!699919 m!2799215))

(declare-fun m!2799217 () Bool)

(assert (=> b!2404150 m!2799217))

(declare-fun m!2799219 () Bool)

(assert (=> b!2404147 m!2799219))

(assert (=> b!2404034 d!699919))

(declare-fun b!2404177 () Bool)

(declare-fun e!1531330 () Bool)

(declare-fun e!1531333 () Bool)

(assert (=> b!2404177 (= e!1531330 e!1531333)))

(declare-fun c!382894 () Bool)

(assert (=> b!2404177 (= c!382894 (is-Star!7048 (h!33637 l!9164)))))

(declare-fun b!2404178 () Bool)

(declare-fun e!1531328 () Bool)

(assert (=> b!2404178 (= e!1531333 e!1531328)))

(declare-fun c!382895 () Bool)

(assert (=> b!2404178 (= c!382895 (is-Union!7048 (h!33637 l!9164)))))

(declare-fun b!2404179 () Bool)

(declare-fun res!1021274 () Bool)

(declare-fun e!1531329 () Bool)

(assert (=> b!2404179 (=> (not res!1021274) (not e!1531329))))

(declare-fun call!146887 () Bool)

(assert (=> b!2404179 (= res!1021274 call!146887)))

(assert (=> b!2404179 (= e!1531328 e!1531329)))

(declare-fun bm!146880 () Bool)

(assert (=> bm!146880 (= call!146887 (validRegex!2773 (ite c!382895 (regOne!14609 (h!33637 l!9164)) (regTwo!14608 (h!33637 l!9164)))))))

(declare-fun bm!146881 () Bool)

(declare-fun call!146886 () Bool)

(declare-fun call!146885 () Bool)

(assert (=> bm!146881 (= call!146886 call!146885)))

(declare-fun b!2404181 () Bool)

(declare-fun e!1531327 () Bool)

(assert (=> b!2404181 (= e!1531327 call!146887)))

(declare-fun b!2404182 () Bool)

(declare-fun e!1531332 () Bool)

(assert (=> b!2404182 (= e!1531332 e!1531327)))

(declare-fun res!1021273 () Bool)

(assert (=> b!2404182 (=> (not res!1021273) (not e!1531327))))

(assert (=> b!2404182 (= res!1021273 call!146886)))

(declare-fun b!2404183 () Bool)

(declare-fun e!1531331 () Bool)

(assert (=> b!2404183 (= e!1531331 call!146885)))

(declare-fun bm!146882 () Bool)

(assert (=> bm!146882 (= call!146885 (validRegex!2773 (ite c!382894 (reg!7377 (h!33637 l!9164)) (ite c!382895 (regTwo!14609 (h!33637 l!9164)) (regOne!14608 (h!33637 l!9164))))))))

(declare-fun b!2404180 () Bool)

(assert (=> b!2404180 (= e!1531333 e!1531331)))

(declare-fun res!1021272 () Bool)

(declare-fun nullable!2096 (Regex!7048) Bool)

(assert (=> b!2404180 (= res!1021272 (not (nullable!2096 (reg!7377 (h!33637 l!9164)))))))

(assert (=> b!2404180 (=> (not res!1021272) (not e!1531331))))

(declare-fun d!699921 () Bool)

(declare-fun res!1021275 () Bool)

(assert (=> d!699921 (=> res!1021275 e!1531330)))

(assert (=> d!699921 (= res!1021275 (is-ElementMatch!7048 (h!33637 l!9164)))))

(assert (=> d!699921 (= (validRegex!2773 (h!33637 l!9164)) e!1531330)))

(declare-fun b!2404184 () Bool)

(declare-fun res!1021271 () Bool)

(assert (=> b!2404184 (=> res!1021271 e!1531332)))

(assert (=> b!2404184 (= res!1021271 (not (is-Concat!11684 (h!33637 l!9164))))))

(assert (=> b!2404184 (= e!1531328 e!1531332)))

(declare-fun b!2404185 () Bool)

(assert (=> b!2404185 (= e!1531329 call!146886)))

(assert (= (and d!699921 (not res!1021275)) b!2404177))

(assert (= (and b!2404177 c!382894) b!2404180))

(assert (= (and b!2404177 (not c!382894)) b!2404178))

(assert (= (and b!2404180 res!1021272) b!2404183))

(assert (= (and b!2404178 c!382895) b!2404179))

(assert (= (and b!2404178 (not c!382895)) b!2404184))

(assert (= (and b!2404179 res!1021274) b!2404185))

(assert (= (and b!2404184 (not res!1021271)) b!2404182))

(assert (= (and b!2404182 res!1021273) b!2404181))

(assert (= (or b!2404179 b!2404181) bm!146880))

(assert (= (or b!2404185 b!2404182) bm!146881))

(assert (= (or b!2404183 bm!146881) bm!146882))

(declare-fun m!2799221 () Bool)

(assert (=> bm!146880 m!2799221))

(declare-fun m!2799223 () Bool)

(assert (=> bm!146882 m!2799223))

(declare-fun m!2799225 () Bool)

(assert (=> b!2404180 m!2799225))

(assert (=> b!2404032 d!699921))

(declare-fun bs!463242 () Bool)

(declare-fun d!699923 () Bool)

(assert (= bs!463242 (and d!699923 start!235726)))

(declare-fun lambda!90409 () Int)

(assert (=> bs!463242 (= lambda!90409 lambda!90398)))

(declare-fun bs!463243 () Bool)

(assert (= bs!463243 (and d!699923 d!699919)))

(assert (=> bs!463243 (= lambda!90409 lambda!90406)))

(declare-fun b!2404186 () Bool)

(declare-fun e!1531336 () Bool)

(declare-fun lt!872836 () Regex!7048)

(assert (=> b!2404186 (= e!1531336 (= lt!872836 (head!5324 (t!208311 l!9164))))))

(declare-fun b!2404187 () Bool)

(assert (=> b!2404187 (= e!1531336 (isConcat!116 lt!872836))))

(declare-fun b!2404188 () Bool)

(declare-fun e!1531334 () Bool)

(assert (=> b!2404188 (= e!1531334 (isEmptyExpr!116 lt!872836))))

(declare-fun e!1531338 () Bool)

(assert (=> d!699923 e!1531338))

(declare-fun res!1021276 () Bool)

(assert (=> d!699923 (=> (not res!1021276) (not e!1531338))))

(assert (=> d!699923 (= res!1021276 (validRegex!2773 lt!872836))))

(declare-fun e!1531335 () Regex!7048)

(assert (=> d!699923 (= lt!872836 e!1531335)))

(declare-fun c!382899 () Bool)

(declare-fun e!1531337 () Bool)

(assert (=> d!699923 (= c!382899 e!1531337)))

(declare-fun res!1021277 () Bool)

(assert (=> d!699923 (=> (not res!1021277) (not e!1531337))))

(assert (=> d!699923 (= res!1021277 (is-Cons!28236 (t!208311 l!9164)))))

(assert (=> d!699923 (forall!5682 (t!208311 l!9164) lambda!90409)))

(assert (=> d!699923 (= (generalisedConcat!149 (t!208311 l!9164)) lt!872836)))

(declare-fun b!2404189 () Bool)

(assert (=> b!2404189 (= e!1531335 (h!33637 (t!208311 l!9164)))))

(declare-fun b!2404190 () Bool)

(declare-fun e!1531339 () Regex!7048)

(assert (=> b!2404190 (= e!1531335 e!1531339)))

(declare-fun c!382897 () Bool)

(assert (=> b!2404190 (= c!382897 (is-Cons!28236 (t!208311 l!9164)))))

(declare-fun b!2404191 () Bool)

(assert (=> b!2404191 (= e!1531337 (isEmpty!16240 (t!208311 (t!208311 l!9164))))))

(declare-fun b!2404192 () Bool)

(assert (=> b!2404192 (= e!1531339 (Concat!11684 (h!33637 (t!208311 l!9164)) (generalisedConcat!149 (t!208311 (t!208311 l!9164)))))))

(declare-fun b!2404193 () Bool)

(assert (=> b!2404193 (= e!1531334 e!1531336)))

(declare-fun c!382898 () Bool)

(assert (=> b!2404193 (= c!382898 (isEmpty!16240 (tail!3594 (t!208311 l!9164))))))

(declare-fun b!2404194 () Bool)

(assert (=> b!2404194 (= e!1531338 e!1531334)))

(declare-fun c!382896 () Bool)

(assert (=> b!2404194 (= c!382896 (isEmpty!16240 (t!208311 l!9164)))))

(declare-fun b!2404195 () Bool)

(assert (=> b!2404195 (= e!1531339 EmptyExpr!7048)))

(assert (= (and d!699923 res!1021277) b!2404191))

(assert (= (and d!699923 c!382899) b!2404189))

(assert (= (and d!699923 (not c!382899)) b!2404190))

(assert (= (and b!2404190 c!382897) b!2404192))

(assert (= (and b!2404190 (not c!382897)) b!2404195))

(assert (= (and d!699923 res!1021276) b!2404194))

(assert (= (and b!2404194 c!382896) b!2404188))

(assert (= (and b!2404194 (not c!382896)) b!2404193))

(assert (= (and b!2404193 c!382898) b!2404186))

(assert (= (and b!2404193 (not c!382898)) b!2404187))

(declare-fun m!2799227 () Bool)

(assert (=> b!2404187 m!2799227))

(declare-fun m!2799229 () Bool)

(assert (=> b!2404193 m!2799229))

(assert (=> b!2404193 m!2799229))

(declare-fun m!2799231 () Bool)

(assert (=> b!2404193 m!2799231))

(assert (=> b!2404194 m!2799217))

(declare-fun m!2799233 () Bool)

(assert (=> b!2404192 m!2799233))

(declare-fun m!2799235 () Bool)

(assert (=> b!2404186 m!2799235))

(declare-fun m!2799237 () Bool)

(assert (=> d!699923 m!2799237))

(declare-fun m!2799239 () Bool)

(assert (=> d!699923 m!2799239))

(declare-fun m!2799241 () Bool)

(assert (=> b!2404191 m!2799241))

(declare-fun m!2799243 () Bool)

(assert (=> b!2404188 m!2799243))

(assert (=> b!2404032 d!699923))

(declare-fun b!2404246 () Bool)

(assert (=> b!2404246 true))

(assert (=> b!2404246 true))

(declare-fun bs!463245 () Bool)

(declare-fun b!2404251 () Bool)

(assert (= bs!463245 (and b!2404251 b!2404246)))

(declare-fun lambda!90417 () Int)

(declare-fun lambda!90416 () Int)

(assert (=> bs!463245 (not (= lambda!90417 lambda!90416))))

(assert (=> b!2404251 true))

(assert (=> b!2404251 true))

(declare-fun bm!146891 () Bool)

(declare-fun call!146897 () Bool)

(assert (=> bm!146891 (= call!146897 (isEmpty!16238 s!9460))))

(declare-fun d!699925 () Bool)

(declare-fun c!382914 () Bool)

(assert (=> d!699925 (= c!382914 (is-EmptyExpr!7048 r!13927))))

(declare-fun e!1531367 () Bool)

(assert (=> d!699925 (= (matchRSpec!897 r!13927 s!9460) e!1531367)))

(declare-fun b!2404243 () Bool)

(declare-fun e!1531370 () Bool)

(assert (=> b!2404243 (= e!1531370 (matchRSpec!897 (regTwo!14609 r!13927) s!9460))))

(declare-fun b!2404244 () Bool)

(declare-fun e!1531365 () Bool)

(assert (=> b!2404244 (= e!1531367 e!1531365)))

(declare-fun res!1021297 () Bool)

(assert (=> b!2404244 (= res!1021297 (not (is-EmptyLang!7048 r!13927)))))

(assert (=> b!2404244 (=> (not res!1021297) (not e!1531365))))

(declare-fun b!2404245 () Bool)

(assert (=> b!2404245 (= e!1531367 call!146897)))

(declare-fun e!1531369 () Bool)

(declare-fun call!146896 () Bool)

(assert (=> b!2404246 (= e!1531369 call!146896)))

(declare-fun b!2404247 () Bool)

(declare-fun e!1531368 () Bool)

(assert (=> b!2404247 (= e!1531368 e!1531370)))

(declare-fun res!1021298 () Bool)

(assert (=> b!2404247 (= res!1021298 (matchRSpec!897 (regOne!14609 r!13927) s!9460))))

(assert (=> b!2404247 (=> res!1021298 e!1531370)))

(declare-fun b!2404248 () Bool)

(declare-fun c!382912 () Bool)

(assert (=> b!2404248 (= c!382912 (is-Union!7048 r!13927))))

(declare-fun e!1531371 () Bool)

(assert (=> b!2404248 (= e!1531371 e!1531368)))

(declare-fun b!2404249 () Bool)

(declare-fun e!1531366 () Bool)

(assert (=> b!2404249 (= e!1531368 e!1531366)))

(declare-fun c!382913 () Bool)

(assert (=> b!2404249 (= c!382913 (is-Star!7048 r!13927))))

(declare-fun b!2404250 () Bool)

(declare-fun c!382915 () Bool)

(assert (=> b!2404250 (= c!382915 (is-ElementMatch!7048 r!13927))))

(assert (=> b!2404250 (= e!1531365 e!1531371)))

(assert (=> b!2404251 (= e!1531366 call!146896)))

(declare-fun b!2404252 () Bool)

(declare-fun res!1021299 () Bool)

(assert (=> b!2404252 (=> res!1021299 e!1531369)))

(assert (=> b!2404252 (= res!1021299 call!146897)))

(assert (=> b!2404252 (= e!1531366 e!1531369)))

(declare-fun bm!146892 () Bool)

(declare-fun Exists!1106 (Int) Bool)

(assert (=> bm!146892 (= call!146896 (Exists!1106 (ite c!382913 lambda!90416 lambda!90417)))))

(declare-fun b!2404253 () Bool)

(assert (=> b!2404253 (= e!1531371 (= s!9460 (Cons!28237 (c!382865 r!13927) Nil!28237)))))

(assert (= (and d!699925 c!382914) b!2404245))

(assert (= (and d!699925 (not c!382914)) b!2404244))

(assert (= (and b!2404244 res!1021297) b!2404250))

(assert (= (and b!2404250 c!382915) b!2404253))

(assert (= (and b!2404250 (not c!382915)) b!2404248))

(assert (= (and b!2404248 c!382912) b!2404247))

(assert (= (and b!2404248 (not c!382912)) b!2404249))

(assert (= (and b!2404247 (not res!1021298)) b!2404243))

(assert (= (and b!2404249 c!382913) b!2404252))

(assert (= (and b!2404249 (not c!382913)) b!2404251))

(assert (= (and b!2404252 (not res!1021299)) b!2404246))

(assert (= (or b!2404246 b!2404251) bm!146892))

(assert (= (or b!2404245 b!2404252) bm!146891))

(assert (=> bm!146891 m!2799171))

(declare-fun m!2799251 () Bool)

(assert (=> b!2404243 m!2799251))

(declare-fun m!2799253 () Bool)

(assert (=> b!2404247 m!2799253))

(declare-fun m!2799255 () Bool)

(assert (=> bm!146892 m!2799255))

(assert (=> b!2404037 d!699925))

(declare-fun b!2404304 () Bool)

(declare-fun e!1531401 () Bool)

(declare-fun derivativeStep!1753 (Regex!7048 C!14254) Regex!7048)

(declare-fun head!5325 (List!28335) C!14254)

(declare-fun tail!3595 (List!28335) List!28335)

(assert (=> b!2404304 (= e!1531401 (matchR!3165 (derivativeStep!1753 r!13927 (head!5325 s!9460)) (tail!3595 s!9460)))))

(declare-fun b!2404305 () Bool)

(declare-fun res!1021325 () Bool)

(declare-fun e!1531396 () Bool)

(assert (=> b!2404305 (=> (not res!1021325) (not e!1531396))))

(assert (=> b!2404305 (= res!1021325 (isEmpty!16238 (tail!3595 s!9460)))))

(declare-fun d!699929 () Bool)

(declare-fun e!1531398 () Bool)

(assert (=> d!699929 e!1531398))

(declare-fun c!382930 () Bool)

(assert (=> d!699929 (= c!382930 (is-EmptyExpr!7048 r!13927))))

(declare-fun lt!872841 () Bool)

(assert (=> d!699929 (= lt!872841 e!1531401)))

(declare-fun c!382928 () Bool)

(assert (=> d!699929 (= c!382928 (isEmpty!16238 s!9460))))

(assert (=> d!699929 (validRegex!2773 r!13927)))

(assert (=> d!699929 (= (matchR!3165 r!13927 s!9460) lt!872841)))

(declare-fun b!2404306 () Bool)

(declare-fun res!1021324 () Bool)

(declare-fun e!1531397 () Bool)

(assert (=> b!2404306 (=> res!1021324 e!1531397)))

(assert (=> b!2404306 (= res!1021324 (not (is-ElementMatch!7048 r!13927)))))

(declare-fun e!1531399 () Bool)

(assert (=> b!2404306 (= e!1531399 e!1531397)))

(declare-fun b!2404307 () Bool)

(assert (=> b!2404307 (= e!1531401 (nullable!2096 r!13927))))

(declare-fun b!2404308 () Bool)

(assert (=> b!2404308 (= e!1531398 e!1531399)))

(declare-fun c!382929 () Bool)

(assert (=> b!2404308 (= c!382929 (is-EmptyLang!7048 r!13927))))

(declare-fun b!2404309 () Bool)

(declare-fun res!1021329 () Bool)

(assert (=> b!2404309 (=> res!1021329 e!1531397)))

(assert (=> b!2404309 (= res!1021329 e!1531396)))

(declare-fun res!1021328 () Bool)

(assert (=> b!2404309 (=> (not res!1021328) (not e!1531396))))

(assert (=> b!2404309 (= res!1021328 lt!872841)))

(declare-fun b!2404310 () Bool)

(declare-fun e!1531402 () Bool)

(declare-fun e!1531400 () Bool)

(assert (=> b!2404310 (= e!1531402 e!1531400)))

(declare-fun res!1021327 () Bool)

(assert (=> b!2404310 (=> res!1021327 e!1531400)))

(declare-fun call!146900 () Bool)

(assert (=> b!2404310 (= res!1021327 call!146900)))

(declare-fun b!2404311 () Bool)

(assert (=> b!2404311 (= e!1531396 (= (head!5325 s!9460) (c!382865 r!13927)))))

(declare-fun b!2404312 () Bool)

(assert (=> b!2404312 (= e!1531399 (not lt!872841))))

(declare-fun b!2404313 () Bool)

(assert (=> b!2404313 (= e!1531398 (= lt!872841 call!146900))))

(declare-fun bm!146895 () Bool)

(assert (=> bm!146895 (= call!146900 (isEmpty!16238 s!9460))))

(declare-fun b!2404314 () Bool)

(assert (=> b!2404314 (= e!1531400 (not (= (head!5325 s!9460) (c!382865 r!13927))))))

(declare-fun b!2404315 () Bool)

(assert (=> b!2404315 (= e!1531397 e!1531402)))

(declare-fun res!1021331 () Bool)

(assert (=> b!2404315 (=> (not res!1021331) (not e!1531402))))

(assert (=> b!2404315 (= res!1021331 (not lt!872841))))

(declare-fun b!2404316 () Bool)

(declare-fun res!1021330 () Bool)

(assert (=> b!2404316 (=> res!1021330 e!1531400)))

(assert (=> b!2404316 (= res!1021330 (not (isEmpty!16238 (tail!3595 s!9460))))))

(declare-fun b!2404317 () Bool)

(declare-fun res!1021326 () Bool)

(assert (=> b!2404317 (=> (not res!1021326) (not e!1531396))))

(assert (=> b!2404317 (= res!1021326 (not call!146900))))

(assert (= (and d!699929 c!382928) b!2404307))

(assert (= (and d!699929 (not c!382928)) b!2404304))

(assert (= (and d!699929 c!382930) b!2404313))

(assert (= (and d!699929 (not c!382930)) b!2404308))

(assert (= (and b!2404308 c!382929) b!2404312))

(assert (= (and b!2404308 (not c!382929)) b!2404306))

(assert (= (and b!2404306 (not res!1021324)) b!2404309))

(assert (= (and b!2404309 res!1021328) b!2404317))

(assert (= (and b!2404317 res!1021326) b!2404305))

(assert (= (and b!2404305 res!1021325) b!2404311))

(assert (= (and b!2404309 (not res!1021329)) b!2404315))

(assert (= (and b!2404315 res!1021331) b!2404310))

(assert (= (and b!2404310 (not res!1021327)) b!2404316))

(assert (= (and b!2404316 (not res!1021330)) b!2404314))

(assert (= (or b!2404313 b!2404310 b!2404317) bm!146895))

(declare-fun m!2799257 () Bool)

(assert (=> b!2404304 m!2799257))

(assert (=> b!2404304 m!2799257))

(declare-fun m!2799259 () Bool)

(assert (=> b!2404304 m!2799259))

(declare-fun m!2799261 () Bool)

(assert (=> b!2404304 m!2799261))

(assert (=> b!2404304 m!2799259))

(assert (=> b!2404304 m!2799261))

(declare-fun m!2799263 () Bool)

(assert (=> b!2404304 m!2799263))

(assert (=> b!2404316 m!2799261))

(assert (=> b!2404316 m!2799261))

(declare-fun m!2799265 () Bool)

(assert (=> b!2404316 m!2799265))

(assert (=> b!2404314 m!2799257))

(assert (=> b!2404311 m!2799257))

(assert (=> d!699929 m!2799171))

(declare-fun m!2799267 () Bool)

(assert (=> d!699929 m!2799267))

(declare-fun m!2799269 () Bool)

(assert (=> b!2404307 m!2799269))

(assert (=> b!2404305 m!2799261))

(assert (=> b!2404305 m!2799261))

(assert (=> b!2404305 m!2799265))

(assert (=> bm!146895 m!2799171))

(assert (=> b!2404037 d!699929))

(declare-fun d!699931 () Bool)

(assert (=> d!699931 (= (matchR!3165 r!13927 s!9460) (matchRSpec!897 r!13927 s!9460))))

(declare-fun lt!872844 () Unit!41367)

(declare-fun choose!14223 (Regex!7048 List!28335) Unit!41367)

(assert (=> d!699931 (= lt!872844 (choose!14223 r!13927 s!9460))))

(assert (=> d!699931 (validRegex!2773 r!13927)))

(assert (=> d!699931 (= (mainMatchTheorem!897 r!13927 s!9460) lt!872844)))

(declare-fun bs!463246 () Bool)

(assert (= bs!463246 d!699931))

(assert (=> bs!463246 m!2799153))

(assert (=> bs!463246 m!2799151))

(declare-fun m!2799271 () Bool)

(assert (=> bs!463246 m!2799271))

(assert (=> bs!463246 m!2799267))

(assert (=> b!2404037 d!699931))

(declare-fun b!2404328 () Bool)

(declare-fun e!1531410 () Bool)

(declare-fun e!1531413 () Bool)

(assert (=> b!2404328 (= e!1531410 e!1531413)))

(declare-fun c!382931 () Bool)

(assert (=> b!2404328 (= c!382931 (is-Star!7048 lt!872823))))

(declare-fun b!2404329 () Bool)

(declare-fun e!1531408 () Bool)

(assert (=> b!2404329 (= e!1531413 e!1531408)))

(declare-fun c!382932 () Bool)

(assert (=> b!2404329 (= c!382932 (is-Union!7048 lt!872823))))

(declare-fun b!2404330 () Bool)

(declare-fun res!1021343 () Bool)

(declare-fun e!1531409 () Bool)

(assert (=> b!2404330 (=> (not res!1021343) (not e!1531409))))

(declare-fun call!146905 () Bool)

(assert (=> b!2404330 (= res!1021343 call!146905)))

(assert (=> b!2404330 (= e!1531408 e!1531409)))

(declare-fun bm!146898 () Bool)

(assert (=> bm!146898 (= call!146905 (validRegex!2773 (ite c!382932 (regOne!14609 lt!872823) (regTwo!14608 lt!872823))))))

(declare-fun bm!146899 () Bool)

(declare-fun call!146904 () Bool)

(declare-fun call!146903 () Bool)

(assert (=> bm!146899 (= call!146904 call!146903)))

(declare-fun b!2404332 () Bool)

(declare-fun e!1531407 () Bool)

(assert (=> b!2404332 (= e!1531407 call!146905)))

(declare-fun b!2404333 () Bool)

(declare-fun e!1531412 () Bool)

(assert (=> b!2404333 (= e!1531412 e!1531407)))

(declare-fun res!1021342 () Bool)

(assert (=> b!2404333 (=> (not res!1021342) (not e!1531407))))

(assert (=> b!2404333 (= res!1021342 call!146904)))

(declare-fun b!2404334 () Bool)

(declare-fun e!1531411 () Bool)

(assert (=> b!2404334 (= e!1531411 call!146903)))

(declare-fun bm!146900 () Bool)

(assert (=> bm!146900 (= call!146903 (validRegex!2773 (ite c!382931 (reg!7377 lt!872823) (ite c!382932 (regTwo!14609 lt!872823) (regOne!14608 lt!872823)))))))

(declare-fun b!2404331 () Bool)

(assert (=> b!2404331 (= e!1531413 e!1531411)))

(declare-fun res!1021341 () Bool)

(assert (=> b!2404331 (= res!1021341 (not (nullable!2096 (reg!7377 lt!872823))))))

(assert (=> b!2404331 (=> (not res!1021341) (not e!1531411))))

(declare-fun d!699933 () Bool)

(declare-fun res!1021344 () Bool)

(assert (=> d!699933 (=> res!1021344 e!1531410)))

(assert (=> d!699933 (= res!1021344 (is-ElementMatch!7048 lt!872823))))

(assert (=> d!699933 (= (validRegex!2773 lt!872823) e!1531410)))

(declare-fun b!2404335 () Bool)

(declare-fun res!1021340 () Bool)

(assert (=> b!2404335 (=> res!1021340 e!1531412)))

(assert (=> b!2404335 (= res!1021340 (not (is-Concat!11684 lt!872823)))))

(assert (=> b!2404335 (= e!1531408 e!1531412)))

(declare-fun b!2404336 () Bool)

(assert (=> b!2404336 (= e!1531409 call!146904)))

(assert (= (and d!699933 (not res!1021344)) b!2404328))

(assert (= (and b!2404328 c!382931) b!2404331))

(assert (= (and b!2404328 (not c!382931)) b!2404329))

(assert (= (and b!2404331 res!1021341) b!2404334))

(assert (= (and b!2404329 c!382932) b!2404330))

(assert (= (and b!2404329 (not c!382932)) b!2404335))

(assert (= (and b!2404330 res!1021343) b!2404336))

(assert (= (and b!2404335 (not res!1021340)) b!2404333))

(assert (= (and b!2404333 res!1021342) b!2404332))

(assert (= (or b!2404330 b!2404332) bm!146898))

(assert (= (or b!2404336 b!2404333) bm!146899))

(assert (= (or b!2404334 bm!146899) bm!146900))

(declare-fun m!2799273 () Bool)

(assert (=> bm!146898 m!2799273))

(declare-fun m!2799275 () Bool)

(assert (=> bm!146900 m!2799275))

(declare-fun m!2799277 () Bool)

(assert (=> b!2404331 m!2799277))

(assert (=> b!2404043 d!699933))

(declare-fun b!2404347 () Bool)

(declare-fun res!1021349 () Bool)

(declare-fun e!1531418 () Bool)

(assert (=> b!2404347 (=> (not res!1021349) (not e!1531418))))

(declare-fun lt!872847 () List!28335)

(declare-fun size!22204 (List!28335) Int)

(assert (=> b!2404347 (= res!1021349 (= (size!22204 lt!872847) (+ (size!22204 Nil!28237) (size!22204 s!9460))))))

(declare-fun d!699935 () Bool)

(assert (=> d!699935 e!1531418))

(declare-fun res!1021350 () Bool)

(assert (=> d!699935 (=> (not res!1021350) (not e!1531418))))

(declare-fun content!3866 (List!28335) (Set C!14254))

(assert (=> d!699935 (= res!1021350 (= (content!3866 lt!872847) (set.union (content!3866 Nil!28237) (content!3866 s!9460))))))

(declare-fun e!1531419 () List!28335)

(assert (=> d!699935 (= lt!872847 e!1531419)))

(declare-fun c!382935 () Bool)

(assert (=> d!699935 (= c!382935 (is-Nil!28237 Nil!28237))))

(assert (=> d!699935 (= (++!6991 Nil!28237 s!9460) lt!872847)))

(declare-fun b!2404346 () Bool)

(assert (=> b!2404346 (= e!1531419 (Cons!28237 (h!33638 Nil!28237) (++!6991 (t!208312 Nil!28237) s!9460)))))

(declare-fun b!2404345 () Bool)

(assert (=> b!2404345 (= e!1531419 s!9460)))

(declare-fun b!2404348 () Bool)

(assert (=> b!2404348 (= e!1531418 (or (not (= s!9460 Nil!28237)) (= lt!872847 Nil!28237)))))

(assert (= (and d!699935 c!382935) b!2404345))

(assert (= (and d!699935 (not c!382935)) b!2404346))

(assert (= (and d!699935 res!1021350) b!2404347))

(assert (= (and b!2404347 res!1021349) b!2404348))

(declare-fun m!2799279 () Bool)

(assert (=> b!2404347 m!2799279))

(declare-fun m!2799281 () Bool)

(assert (=> b!2404347 m!2799281))

(declare-fun m!2799283 () Bool)

(assert (=> b!2404347 m!2799283))

(declare-fun m!2799285 () Bool)

(assert (=> d!699935 m!2799285))

(declare-fun m!2799287 () Bool)

(assert (=> d!699935 m!2799287))

(declare-fun m!2799289 () Bool)

(assert (=> d!699935 m!2799289))

(declare-fun m!2799291 () Bool)

(assert (=> b!2404346 m!2799291))

(assert (=> b!2404036 d!699935))

(declare-fun d!699937 () Bool)

(declare-fun isEmpty!16241 (Option!5579) Bool)

(assert (=> d!699937 (= (isDefined!4407 (findConcatSeparation!687 (h!33637 l!9164) (generalisedConcat!149 (t!208311 l!9164)) Nil!28237 s!9460 s!9460)) (not (isEmpty!16241 (findConcatSeparation!687 (h!33637 l!9164) (generalisedConcat!149 (t!208311 l!9164)) Nil!28237 s!9460 s!9460))))))

(declare-fun bs!463247 () Bool)

(assert (= bs!463247 d!699937))

(assert (=> bs!463247 m!2799159))

(declare-fun m!2799293 () Bool)

(assert (=> bs!463247 m!2799293))

(assert (=> b!2404042 d!699937))

(declare-fun b!2404381 () Bool)

(declare-fun e!1531440 () Option!5579)

(declare-fun e!1531438 () Option!5579)

(assert (=> b!2404381 (= e!1531440 e!1531438)))

(declare-fun c!382943 () Bool)

(assert (=> b!2404381 (= c!382943 (is-Nil!28237 s!9460))))

(declare-fun d!699939 () Bool)

(declare-fun e!1531437 () Bool)

(assert (=> d!699939 e!1531437))

(declare-fun res!1021373 () Bool)

(assert (=> d!699939 (=> res!1021373 e!1531437)))

(declare-fun e!1531441 () Bool)

(assert (=> d!699939 (= res!1021373 e!1531441)))

(declare-fun res!1021371 () Bool)

(assert (=> d!699939 (=> (not res!1021371) (not e!1531441))))

(declare-fun lt!872858 () Option!5579)

(assert (=> d!699939 (= res!1021371 (isDefined!4407 lt!872858))))

(assert (=> d!699939 (= lt!872858 e!1531440)))

(declare-fun c!382944 () Bool)

(declare-fun e!1531439 () Bool)

(assert (=> d!699939 (= c!382944 e!1531439)))

(declare-fun res!1021370 () Bool)

(assert (=> d!699939 (=> (not res!1021370) (not e!1531439))))

(assert (=> d!699939 (= res!1021370 (matchR!3165 (h!33637 l!9164) Nil!28237))))

(assert (=> d!699939 (validRegex!2773 (h!33637 l!9164))))

(assert (=> d!699939 (= (findConcatSeparation!687 (h!33637 l!9164) (generalisedConcat!149 (t!208311 l!9164)) Nil!28237 s!9460 s!9460) lt!872858)))

(declare-fun b!2404382 () Bool)

(declare-fun lt!872859 () Unit!41367)

(declare-fun lt!872860 () Unit!41367)

(assert (=> b!2404382 (= lt!872859 lt!872860)))

(assert (=> b!2404382 (= (++!6991 (++!6991 Nil!28237 (Cons!28237 (h!33638 s!9460) Nil!28237)) (t!208312 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!631 (List!28335 C!14254 List!28335 List!28335) Unit!41367)

(assert (=> b!2404382 (= lt!872860 (lemmaMoveElementToOtherListKeepsConcatEq!631 Nil!28237 (h!33638 s!9460) (t!208312 s!9460) s!9460))))

(assert (=> b!2404382 (= e!1531438 (findConcatSeparation!687 (h!33637 l!9164) (generalisedConcat!149 (t!208311 l!9164)) (++!6991 Nil!28237 (Cons!28237 (h!33638 s!9460) Nil!28237)) (t!208312 s!9460) s!9460))))

(declare-fun b!2404383 () Bool)

(assert (=> b!2404383 (= e!1531439 (matchR!3165 (generalisedConcat!149 (t!208311 l!9164)) s!9460))))

(declare-fun b!2404384 () Bool)

(assert (=> b!2404384 (= e!1531438 None!5578)))

(declare-fun b!2404385 () Bool)

(assert (=> b!2404385 (= e!1531437 (not (isDefined!4407 lt!872858)))))

(declare-fun b!2404386 () Bool)

(declare-fun get!8657 (Option!5579) tuple2!27936)

(assert (=> b!2404386 (= e!1531441 (= (++!6991 (_1!16509 (get!8657 lt!872858)) (_2!16509 (get!8657 lt!872858))) s!9460))))

(declare-fun b!2404387 () Bool)

(declare-fun res!1021372 () Bool)

(assert (=> b!2404387 (=> (not res!1021372) (not e!1531441))))

(assert (=> b!2404387 (= res!1021372 (matchR!3165 (h!33637 l!9164) (_1!16509 (get!8657 lt!872858))))))

(declare-fun b!2404388 () Bool)

(assert (=> b!2404388 (= e!1531440 (Some!5578 (tuple2!27937 Nil!28237 s!9460)))))

(declare-fun b!2404389 () Bool)

(declare-fun res!1021369 () Bool)

(assert (=> b!2404389 (=> (not res!1021369) (not e!1531441))))

(assert (=> b!2404389 (= res!1021369 (matchR!3165 (generalisedConcat!149 (t!208311 l!9164)) (_2!16509 (get!8657 lt!872858))))))

(assert (= (and d!699939 res!1021370) b!2404383))

(assert (= (and d!699939 c!382944) b!2404388))

(assert (= (and d!699939 (not c!382944)) b!2404381))

(assert (= (and b!2404381 c!382943) b!2404384))

(assert (= (and b!2404381 (not c!382943)) b!2404382))

(assert (= (and d!699939 res!1021371) b!2404387))

(assert (= (and b!2404387 res!1021372) b!2404389))

(assert (= (and b!2404389 res!1021369) b!2404386))

(assert (= (and d!699939 (not res!1021373)) b!2404385))

(declare-fun m!2799311 () Bool)

(assert (=> b!2404387 m!2799311))

(declare-fun m!2799313 () Bool)

(assert (=> b!2404387 m!2799313))

(assert (=> b!2404389 m!2799311))

(assert (=> b!2404389 m!2799157))

(declare-fun m!2799315 () Bool)

(assert (=> b!2404389 m!2799315))

(declare-fun m!2799317 () Bool)

(assert (=> b!2404385 m!2799317))

(assert (=> b!2404386 m!2799311))

(declare-fun m!2799319 () Bool)

(assert (=> b!2404386 m!2799319))

(assert (=> b!2404383 m!2799157))

(declare-fun m!2799321 () Bool)

(assert (=> b!2404383 m!2799321))

(declare-fun m!2799323 () Bool)

(assert (=> b!2404382 m!2799323))

(assert (=> b!2404382 m!2799323))

(declare-fun m!2799325 () Bool)

(assert (=> b!2404382 m!2799325))

(declare-fun m!2799327 () Bool)

(assert (=> b!2404382 m!2799327))

(assert (=> b!2404382 m!2799157))

(assert (=> b!2404382 m!2799323))

(declare-fun m!2799329 () Bool)

(assert (=> b!2404382 m!2799329))

(assert (=> d!699939 m!2799317))

(declare-fun m!2799331 () Bool)

(assert (=> d!699939 m!2799331))

(assert (=> d!699939 m!2799173))

(assert (=> b!2404042 d!699939))

(assert (=> b!2404042 d!699923))

(declare-fun e!1531444 () Bool)

(assert (=> b!2404035 (= tp!764987 e!1531444)))

(declare-fun b!2404402 () Bool)

(declare-fun tp!765027 () Bool)

(assert (=> b!2404402 (= e!1531444 tp!765027)))

(declare-fun b!2404400 () Bool)

(assert (=> b!2404400 (= e!1531444 tp_is_empty!11509)))

(declare-fun b!2404403 () Bool)

(declare-fun tp!765028 () Bool)

(declare-fun tp!765030 () Bool)

(assert (=> b!2404403 (= e!1531444 (and tp!765028 tp!765030))))

(declare-fun b!2404401 () Bool)

(declare-fun tp!765026 () Bool)

(declare-fun tp!765029 () Bool)

(assert (=> b!2404401 (= e!1531444 (and tp!765026 tp!765029))))

(assert (= (and b!2404035 (is-ElementMatch!7048 (regOne!14608 r!13927))) b!2404400))

(assert (= (and b!2404035 (is-Concat!11684 (regOne!14608 r!13927))) b!2404401))

(assert (= (and b!2404035 (is-Star!7048 (regOne!14608 r!13927))) b!2404402))

(assert (= (and b!2404035 (is-Union!7048 (regOne!14608 r!13927))) b!2404403))

(declare-fun e!1531445 () Bool)

(assert (=> b!2404035 (= tp!764985 e!1531445)))

(declare-fun b!2404408 () Bool)

(declare-fun tp!765032 () Bool)

(assert (=> b!2404408 (= e!1531445 tp!765032)))

(declare-fun b!2404406 () Bool)

(assert (=> b!2404406 (= e!1531445 tp_is_empty!11509)))

(declare-fun b!2404409 () Bool)

(declare-fun tp!765033 () Bool)

(declare-fun tp!765035 () Bool)

(assert (=> b!2404409 (= e!1531445 (and tp!765033 tp!765035))))

(declare-fun b!2404407 () Bool)

(declare-fun tp!765031 () Bool)

(declare-fun tp!765034 () Bool)

(assert (=> b!2404407 (= e!1531445 (and tp!765031 tp!765034))))

(assert (= (and b!2404035 (is-ElementMatch!7048 (regTwo!14608 r!13927))) b!2404406))

(assert (= (and b!2404035 (is-Concat!11684 (regTwo!14608 r!13927))) b!2404407))

(assert (= (and b!2404035 (is-Star!7048 (regTwo!14608 r!13927))) b!2404408))

(assert (= (and b!2404035 (is-Union!7048 (regTwo!14608 r!13927))) b!2404409))

(declare-fun e!1531448 () Bool)

(assert (=> b!2404039 (= tp!764988 e!1531448)))

(declare-fun b!2404414 () Bool)

(declare-fun tp!765037 () Bool)

(assert (=> b!2404414 (= e!1531448 tp!765037)))

(declare-fun b!2404412 () Bool)

(assert (=> b!2404412 (= e!1531448 tp_is_empty!11509)))

(declare-fun b!2404415 () Bool)

(declare-fun tp!765038 () Bool)

(declare-fun tp!765040 () Bool)

(assert (=> b!2404415 (= e!1531448 (and tp!765038 tp!765040))))

(declare-fun b!2404413 () Bool)

(declare-fun tp!765036 () Bool)

(declare-fun tp!765039 () Bool)

(assert (=> b!2404413 (= e!1531448 (and tp!765036 tp!765039))))

(assert (= (and b!2404039 (is-ElementMatch!7048 (reg!7377 r!13927))) b!2404412))

(assert (= (and b!2404039 (is-Concat!11684 (reg!7377 r!13927))) b!2404413))

(assert (= (and b!2404039 (is-Star!7048 (reg!7377 r!13927))) b!2404414))

(assert (= (and b!2404039 (is-Union!7048 (reg!7377 r!13927))) b!2404415))

(declare-fun e!1531449 () Bool)

(assert (=> b!2404038 (= tp!764989 e!1531449)))

(declare-fun b!2404418 () Bool)

(declare-fun tp!765042 () Bool)

(assert (=> b!2404418 (= e!1531449 tp!765042)))

(declare-fun b!2404416 () Bool)

(assert (=> b!2404416 (= e!1531449 tp_is_empty!11509)))

(declare-fun b!2404419 () Bool)

(declare-fun tp!765043 () Bool)

(declare-fun tp!765045 () Bool)

(assert (=> b!2404419 (= e!1531449 (and tp!765043 tp!765045))))

(declare-fun b!2404417 () Bool)

(declare-fun tp!765041 () Bool)

(declare-fun tp!765044 () Bool)

(assert (=> b!2404417 (= e!1531449 (and tp!765041 tp!765044))))

(assert (= (and b!2404038 (is-ElementMatch!7048 (h!33637 l!9164))) b!2404416))

(assert (= (and b!2404038 (is-Concat!11684 (h!33637 l!9164))) b!2404417))

(assert (= (and b!2404038 (is-Star!7048 (h!33637 l!9164))) b!2404418))

(assert (= (and b!2404038 (is-Union!7048 (h!33637 l!9164))) b!2404419))

(declare-fun b!2404426 () Bool)

(declare-fun e!1531454 () Bool)

(declare-fun tp!765050 () Bool)

(declare-fun tp!765051 () Bool)

(assert (=> b!2404426 (= e!1531454 (and tp!765050 tp!765051))))

(assert (=> b!2404038 (= tp!764984 e!1531454)))

(assert (= (and b!2404038 (is-Cons!28236 (t!208311 l!9164))) b!2404426))

(declare-fun e!1531455 () Bool)

(assert (=> b!2404041 (= tp!764991 e!1531455)))

(declare-fun b!2404431 () Bool)

(declare-fun tp!765053 () Bool)

(assert (=> b!2404431 (= e!1531455 tp!765053)))

(declare-fun b!2404429 () Bool)

(assert (=> b!2404429 (= e!1531455 tp_is_empty!11509)))

(declare-fun b!2404432 () Bool)

(declare-fun tp!765054 () Bool)

(declare-fun tp!765056 () Bool)

(assert (=> b!2404432 (= e!1531455 (and tp!765054 tp!765056))))

(declare-fun b!2404430 () Bool)

(declare-fun tp!765052 () Bool)

(declare-fun tp!765055 () Bool)

(assert (=> b!2404430 (= e!1531455 (and tp!765052 tp!765055))))

(assert (= (and b!2404041 (is-ElementMatch!7048 (regOne!14609 r!13927))) b!2404429))

(assert (= (and b!2404041 (is-Concat!11684 (regOne!14609 r!13927))) b!2404430))

(assert (= (and b!2404041 (is-Star!7048 (regOne!14609 r!13927))) b!2404431))

(assert (= (and b!2404041 (is-Union!7048 (regOne!14609 r!13927))) b!2404432))

(declare-fun e!1531456 () Bool)

(assert (=> b!2404041 (= tp!764986 e!1531456)))

(declare-fun b!2404435 () Bool)

(declare-fun tp!765058 () Bool)

(assert (=> b!2404435 (= e!1531456 tp!765058)))

(declare-fun b!2404433 () Bool)

(assert (=> b!2404433 (= e!1531456 tp_is_empty!11509)))

(declare-fun b!2404436 () Bool)

(declare-fun tp!765059 () Bool)

(declare-fun tp!765061 () Bool)

(assert (=> b!2404436 (= e!1531456 (and tp!765059 tp!765061))))

(declare-fun b!2404434 () Bool)

(declare-fun tp!765057 () Bool)

(declare-fun tp!765060 () Bool)

(assert (=> b!2404434 (= e!1531456 (and tp!765057 tp!765060))))

(assert (= (and b!2404041 (is-ElementMatch!7048 (regTwo!14609 r!13927))) b!2404433))

(assert (= (and b!2404041 (is-Concat!11684 (regTwo!14609 r!13927))) b!2404434))

(assert (= (and b!2404041 (is-Star!7048 (regTwo!14609 r!13927))) b!2404435))

(assert (= (and b!2404041 (is-Union!7048 (regTwo!14609 r!13927))) b!2404436))

(declare-fun b!2404441 () Bool)

(declare-fun e!1531459 () Bool)

(declare-fun tp!765064 () Bool)

(assert (=> b!2404441 (= e!1531459 (and tp_is_empty!11509 tp!765064))))

(assert (=> b!2404031 (= tp!764990 e!1531459)))

(assert (= (and b!2404031 (is-Cons!28237 (t!208312 s!9460))) b!2404441))

(declare-fun b_lambda!74381 () Bool)

(assert (= b_lambda!74379 (or start!235726 b_lambda!74381)))

(declare-fun bs!463249 () Bool)

(declare-fun d!699945 () Bool)

(assert (= bs!463249 (and d!699945 start!235726)))

(assert (=> bs!463249 (= (dynLambda!12160 lambda!90398 (h!33637 l!9164)) (validRegex!2773 (h!33637 l!9164)))))

(assert (=> bs!463249 m!2799173))

(assert (=> b!2404095 d!699945))

(push 1)

(assert (not b!2404096))

(assert (not b!2404387))

(assert (not b!2404409))

(assert (not b!2404403))

(assert (not b!2404385))

(assert (not b!2404402))

(assert (not b!2404314))

(assert (not bm!146900))

(assert (not b!2404243))

(assert (not b!2404305))

(assert (not b!2404307))

(assert (not bm!146892))

(assert (not d!699929))

(assert (not b!2404152))

(assert (not b!2404311))

(assert (not bm!146882))

(assert (not b!2404386))

(assert (not b!2404441))

(assert (not b!2404191))

(assert (not b!2404146))

(assert (not b!2404432))

(assert (not b!2404304))

(assert (not b!2404186))

(assert (not b!2404431))

(assert (not b!2404383))

(assert (not b!2404145))

(assert (not b!2404426))

(assert tp_is_empty!11509)

(assert (not d!699939))

(assert (not d!699937))

(assert (not b!2404417))

(assert (not b!2404150))

(assert (not b!2404151))

(assert (not bm!146880))

(assert (not bm!146891))

(assert (not b!2404180))

(assert (not d!699919))

(assert (not d!699935))

(assert (not b!2404194))

(assert (not b_lambda!74381))

(assert (not b!2404415))

(assert (not b!2404436))

(assert (not bm!146895))

(assert (not b!2404407))

(assert (not b!2404187))

(assert (not b!2404389))

(assert (not b!2404434))

(assert (not b!2404401))

(assert (not d!699923))

(assert (not b!2404192))

(assert (not d!699931))

(assert (not b!2404430))

(assert (not bs!463249))

(assert (not b!2404418))

(assert (not b!2404188))

(assert (not b!2404419))

(assert (not b!2404414))

(assert (not b!2404413))

(assert (not b!2404247))

(assert (not b!2404346))

(assert (not b!2404193))

(assert (not b!2404153))

(assert (not b!2404347))

(assert (not b!2404316))

(assert (not b!2404408))

(assert (not b!2404331))

(assert (not b!2404147))

(assert (not bm!146898))

(assert (not b!2404382))

(assert (not b!2404435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

