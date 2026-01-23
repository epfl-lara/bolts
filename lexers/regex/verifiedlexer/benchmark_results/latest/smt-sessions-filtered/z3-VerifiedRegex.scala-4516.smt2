; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239606 () Bool)

(assert start!239606)

(declare-fun b!2455175 () Bool)

(declare-fun e!1557891 () Bool)

(declare-fun tp!780934 () Bool)

(declare-fun tp!780938 () Bool)

(assert (=> b!2455175 (= e!1557891 (and tp!780934 tp!780938))))

(declare-fun res!1041128 () Bool)

(declare-fun e!1557892 () Bool)

(assert (=> start!239606 (=> (not res!1041128) (not e!1557892))))

(declare-datatypes ((C!14608 0))(
  ( (C!14609 (val!8546 Int)) )
))
(declare-datatypes ((Regex!7225 0))(
  ( (ElementMatch!7225 (c!391797 C!14608)) (Concat!11861 (regOne!14962 Regex!7225) (regTwo!14962 Regex!7225)) (EmptyExpr!7225) (Star!7225 (reg!7554 Regex!7225)) (EmptyLang!7225) (Union!7225 (regOne!14963 Regex!7225) (regTwo!14963 Regex!7225)) )
))
(declare-datatypes ((List!28686 0))(
  ( (Nil!28588) (Cons!28588 (h!33989 Regex!7225) (t!208663 List!28686)) )
))
(declare-fun l!9164 () List!28686)

(declare-fun lambda!93015 () Int)

(declare-fun forall!5859 (List!28686 Int) Bool)

(assert (=> start!239606 (= res!1041128 (forall!5859 l!9164 lambda!93015))))

(assert (=> start!239606 e!1557892))

(assert (=> start!239606 e!1557891))

(declare-fun e!1557894 () Bool)

(assert (=> start!239606 e!1557894))

(declare-fun e!1557888 () Bool)

(assert (=> start!239606 e!1557888))

(declare-fun b!2455176 () Bool)

(declare-fun tp_is_empty!11863 () Bool)

(assert (=> b!2455176 (= e!1557894 tp_is_empty!11863)))

(declare-fun b!2455177 () Bool)

(declare-fun res!1041130 () Bool)

(assert (=> b!2455177 (=> (not res!1041130) (not e!1557892))))

(declare-fun r!13927 () Regex!7225)

(declare-fun generalisedConcat!326 (List!28686) Regex!7225)

(assert (=> b!2455177 (= res!1041130 (= r!13927 (generalisedConcat!326 l!9164)))))

(declare-fun b!2455178 () Bool)

(declare-fun tp!780935 () Bool)

(declare-fun tp!780940 () Bool)

(assert (=> b!2455178 (= e!1557894 (and tp!780935 tp!780940))))

(declare-fun b!2455179 () Bool)

(declare-fun res!1041126 () Bool)

(declare-fun e!1557893 () Bool)

(assert (=> b!2455179 (=> res!1041126 e!1557893)))

(declare-fun lt!880247 () List!28686)

(assert (=> b!2455179 (= res!1041126 (not (= (generalisedConcat!326 lt!880247) EmptyExpr!7225)))))

(declare-fun b!2455180 () Bool)

(declare-fun e!1557887 () Bool)

(assert (=> b!2455180 (= e!1557893 e!1557887)))

(declare-fun res!1041129 () Bool)

(assert (=> b!2455180 (=> res!1041129 e!1557887)))

(declare-fun lt!880248 () Regex!7225)

(declare-datatypes ((List!28687 0))(
  ( (Nil!28589) (Cons!28589 (h!33990 C!14608) (t!208664 List!28687)) )
))
(declare-fun s!9460 () List!28687)

(declare-fun matchR!3340 (Regex!7225 List!28687) Bool)

(assert (=> b!2455180 (= res!1041129 (matchR!3340 lt!880248 s!9460))))

(declare-fun head!5605 (List!28686) Regex!7225)

(assert (=> b!2455180 (= lt!880248 (head!5605 l!9164))))

(declare-fun b!2455181 () Bool)

(declare-fun e!1557889 () Bool)

(assert (=> b!2455181 (= e!1557892 (not e!1557889))))

(declare-fun res!1041124 () Bool)

(assert (=> b!2455181 (=> res!1041124 e!1557889)))

(get-info :version)

(assert (=> b!2455181 (= res!1041124 (or ((_ is Concat!11861) r!13927) ((_ is EmptyExpr!7225) r!13927)))))

(declare-fun matchRSpec!1072 (Regex!7225 List!28687) Bool)

(assert (=> b!2455181 (= (matchR!3340 r!13927 s!9460) (matchRSpec!1072 r!13927 s!9460))))

(declare-datatypes ((Unit!41905 0))(
  ( (Unit!41906) )
))
(declare-fun lt!880246 () Unit!41905)

(declare-fun mainMatchTheorem!1072 (Regex!7225 List!28687) Unit!41905)

(assert (=> b!2455181 (= lt!880246 (mainMatchTheorem!1072 r!13927 s!9460))))

(declare-fun b!2455182 () Bool)

(declare-fun tp!780936 () Bool)

(assert (=> b!2455182 (= e!1557894 tp!780936)))

(declare-fun b!2455183 () Bool)

(declare-fun e!1557890 () Bool)

(assert (=> b!2455183 (= e!1557890 false)))

(declare-datatypes ((tuple2!28178 0))(
  ( (tuple2!28179 (_1!16630 List!28687) (_2!16630 List!28687)) )
))
(declare-fun lt!880243 () tuple2!28178)

(declare-fun ++!7113 (List!28687 List!28687) List!28687)

(assert (=> b!2455183 (matchR!3340 (Concat!11861 lt!880248 EmptyExpr!7225) (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))

(declare-fun lt!880245 () Unit!41905)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!98 (Regex!7225 Regex!7225 List!28687 List!28687 List!28687) Unit!41905)

(assert (=> b!2455183 (= lt!880245 (lemmaFindSeparationIsDefinedThenConcatMatches!98 lt!880248 EmptyExpr!7225 (_1!16630 lt!880243) (_2!16630 lt!880243) s!9460))))

(declare-datatypes ((Option!5700 0))(
  ( (None!5699) (Some!5699 (v!31107 tuple2!28178)) )
))
(declare-fun lt!880244 () Option!5700)

(declare-fun get!8844 (Option!5700) tuple2!28178)

(assert (=> b!2455183 (= lt!880243 (get!8844 lt!880244))))

(declare-fun b!2455184 () Bool)

(declare-fun res!1041123 () Bool)

(assert (=> b!2455184 (=> res!1041123 e!1557889)))

(declare-fun isEmpty!16615 (List!28686) Bool)

(assert (=> b!2455184 (= res!1041123 (isEmpty!16615 l!9164))))

(declare-fun b!2455185 () Bool)

(declare-fun tp!780937 () Bool)

(assert (=> b!2455185 (= e!1557888 (and tp_is_empty!11863 tp!780937))))

(declare-fun b!2455186 () Bool)

(assert (=> b!2455186 (= e!1557889 e!1557893)))

(declare-fun res!1041127 () Bool)

(assert (=> b!2455186 (=> res!1041127 e!1557893)))

(assert (=> b!2455186 (= res!1041127 (not (isEmpty!16615 lt!880247)))))

(declare-fun tail!3878 (List!28686) List!28686)

(assert (=> b!2455186 (= lt!880247 (tail!3878 l!9164))))

(declare-fun b!2455187 () Bool)

(assert (=> b!2455187 (= e!1557887 e!1557890)))

(declare-fun res!1041125 () Bool)

(assert (=> b!2455187 (=> res!1041125 e!1557890)))

(declare-fun isDefined!4526 (Option!5700) Bool)

(assert (=> b!2455187 (= res!1041125 (not (isDefined!4526 lt!880244)))))

(declare-fun findConcatSeparation!808 (Regex!7225 Regex!7225 List!28687 List!28687 List!28687) Option!5700)

(assert (=> b!2455187 (= lt!880244 (findConcatSeparation!808 lt!880248 EmptyExpr!7225 Nil!28589 s!9460 s!9460))))

(declare-fun b!2455188 () Bool)

(declare-fun tp!780939 () Bool)

(declare-fun tp!780941 () Bool)

(assert (=> b!2455188 (= e!1557894 (and tp!780939 tp!780941))))

(assert (= (and start!239606 res!1041128) b!2455177))

(assert (= (and b!2455177 res!1041130) b!2455181))

(assert (= (and b!2455181 (not res!1041124)) b!2455184))

(assert (= (and b!2455184 (not res!1041123)) b!2455186))

(assert (= (and b!2455186 (not res!1041127)) b!2455179))

(assert (= (and b!2455179 (not res!1041126)) b!2455180))

(assert (= (and b!2455180 (not res!1041129)) b!2455187))

(assert (= (and b!2455187 (not res!1041125)) b!2455183))

(assert (= (and start!239606 ((_ is Cons!28588) l!9164)) b!2455175))

(assert (= (and start!239606 ((_ is ElementMatch!7225) r!13927)) b!2455176))

(assert (= (and start!239606 ((_ is Concat!11861) r!13927)) b!2455178))

(assert (= (and start!239606 ((_ is Star!7225) r!13927)) b!2455182))

(assert (= (and start!239606 ((_ is Union!7225) r!13927)) b!2455188))

(assert (= (and start!239606 ((_ is Cons!28589) s!9460)) b!2455185))

(declare-fun m!2826725 () Bool)

(assert (=> b!2455186 m!2826725))

(declare-fun m!2826727 () Bool)

(assert (=> b!2455186 m!2826727))

(declare-fun m!2826729 () Bool)

(assert (=> b!2455181 m!2826729))

(declare-fun m!2826731 () Bool)

(assert (=> b!2455181 m!2826731))

(declare-fun m!2826733 () Bool)

(assert (=> b!2455181 m!2826733))

(declare-fun m!2826735 () Bool)

(assert (=> b!2455180 m!2826735))

(declare-fun m!2826737 () Bool)

(assert (=> b!2455180 m!2826737))

(declare-fun m!2826739 () Bool)

(assert (=> start!239606 m!2826739))

(declare-fun m!2826741 () Bool)

(assert (=> b!2455187 m!2826741))

(declare-fun m!2826743 () Bool)

(assert (=> b!2455187 m!2826743))

(declare-fun m!2826745 () Bool)

(assert (=> b!2455179 m!2826745))

(declare-fun m!2826747 () Bool)

(assert (=> b!2455177 m!2826747))

(declare-fun m!2826749 () Bool)

(assert (=> b!2455184 m!2826749))

(declare-fun m!2826751 () Bool)

(assert (=> b!2455183 m!2826751))

(assert (=> b!2455183 m!2826751))

(declare-fun m!2826753 () Bool)

(assert (=> b!2455183 m!2826753))

(declare-fun m!2826755 () Bool)

(assert (=> b!2455183 m!2826755))

(declare-fun m!2826757 () Bool)

(assert (=> b!2455183 m!2826757))

(check-sat (not b!2455182) (not start!239606) (not b!2455184) (not b!2455180) (not b!2455178) (not b!2455186) (not b!2455185) (not b!2455187) (not b!2455175) (not b!2455179) (not b!2455181) tp_is_empty!11863 (not b!2455177) (not b!2455188) (not b!2455183))
(check-sat)
(get-model)

(declare-fun b!2455316 () Bool)

(declare-fun e!1557968 () Bool)

(declare-fun nullable!2218 (Regex!7225) Bool)

(assert (=> b!2455316 (= e!1557968 (nullable!2218 (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun bm!150809 () Bool)

(declare-fun call!150814 () Bool)

(declare-fun isEmpty!16618 (List!28687) Bool)

(assert (=> bm!150809 (= call!150814 (isEmpty!16618 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))

(declare-fun b!2455317 () Bool)

(declare-fun e!1557966 () Bool)

(declare-fun lt!880266 () Bool)

(assert (=> b!2455317 (= e!1557966 (= lt!880266 call!150814))))

(declare-fun b!2455318 () Bool)

(declare-fun e!1557963 () Bool)

(assert (=> b!2455318 (= e!1557963 (not lt!880266))))

(declare-fun b!2455319 () Bool)

(declare-fun e!1557964 () Bool)

(declare-fun head!5607 (List!28687) C!14608)

(assert (=> b!2455319 (= e!1557964 (= (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) (c!391797 (Concat!11861 lt!880248 EmptyExpr!7225))))))

(declare-fun b!2455320 () Bool)

(declare-fun e!1557967 () Bool)

(declare-fun e!1557969 () Bool)

(assert (=> b!2455320 (= e!1557967 e!1557969)))

(declare-fun res!1041198 () Bool)

(assert (=> b!2455320 (=> (not res!1041198) (not e!1557969))))

(assert (=> b!2455320 (= res!1041198 (not lt!880266))))

(declare-fun b!2455321 () Bool)

(declare-fun derivativeStep!1872 (Regex!7225 C!14608) Regex!7225)

(declare-fun tail!3880 (List!28687) List!28687)

(assert (=> b!2455321 (= e!1557968 (matchR!3340 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2455322 () Bool)

(declare-fun res!1041192 () Bool)

(assert (=> b!2455322 (=> (not res!1041192) (not e!1557964))))

(assert (=> b!2455322 (= res!1041192 (not call!150814))))

(declare-fun b!2455323 () Bool)

(assert (=> b!2455323 (= e!1557966 e!1557963)))

(declare-fun c!391832 () Bool)

(assert (=> b!2455323 (= c!391832 ((_ is EmptyLang!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun b!2455324 () Bool)

(declare-fun e!1557965 () Bool)

(assert (=> b!2455324 (= e!1557969 e!1557965)))

(declare-fun res!1041193 () Bool)

(assert (=> b!2455324 (=> res!1041193 e!1557965)))

(assert (=> b!2455324 (= res!1041193 call!150814)))

(declare-fun b!2455325 () Bool)

(declare-fun res!1041199 () Bool)

(assert (=> b!2455325 (=> (not res!1041199) (not e!1557964))))

(assert (=> b!2455325 (= res!1041199 (isEmpty!16618 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2455326 () Bool)

(declare-fun res!1041194 () Bool)

(assert (=> b!2455326 (=> res!1041194 e!1557967)))

(assert (=> b!2455326 (= res!1041194 (not ((_ is ElementMatch!7225) (Concat!11861 lt!880248 EmptyExpr!7225))))))

(assert (=> b!2455326 (= e!1557963 e!1557967)))

(declare-fun d!707219 () Bool)

(assert (=> d!707219 e!1557966))

(declare-fun c!391833 () Bool)

(assert (=> d!707219 (= c!391833 ((_ is EmptyExpr!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(assert (=> d!707219 (= lt!880266 e!1557968)))

(declare-fun c!391831 () Bool)

(assert (=> d!707219 (= c!391831 (isEmpty!16618 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))

(declare-fun validRegex!2917 (Regex!7225) Bool)

(assert (=> d!707219 (validRegex!2917 (Concat!11861 lt!880248 EmptyExpr!7225))))

(assert (=> d!707219 (= (matchR!3340 (Concat!11861 lt!880248 EmptyExpr!7225) (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) lt!880266)))

(declare-fun b!2455327 () Bool)

(declare-fun res!1041196 () Bool)

(assert (=> b!2455327 (=> res!1041196 e!1557965)))

(assert (=> b!2455327 (= res!1041196 (not (isEmpty!16618 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2455328 () Bool)

(assert (=> b!2455328 (= e!1557965 (not (= (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) (c!391797 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun b!2455329 () Bool)

(declare-fun res!1041197 () Bool)

(assert (=> b!2455329 (=> res!1041197 e!1557967)))

(assert (=> b!2455329 (= res!1041197 e!1557964)))

(declare-fun res!1041195 () Bool)

(assert (=> b!2455329 (=> (not res!1041195) (not e!1557964))))

(assert (=> b!2455329 (= res!1041195 lt!880266)))

(assert (= (and d!707219 c!391831) b!2455316))

(assert (= (and d!707219 (not c!391831)) b!2455321))

(assert (= (and d!707219 c!391833) b!2455317))

(assert (= (and d!707219 (not c!391833)) b!2455323))

(assert (= (and b!2455323 c!391832) b!2455318))

(assert (= (and b!2455323 (not c!391832)) b!2455326))

(assert (= (and b!2455326 (not res!1041194)) b!2455329))

(assert (= (and b!2455329 res!1041195) b!2455322))

(assert (= (and b!2455322 res!1041192) b!2455325))

(assert (= (and b!2455325 res!1041199) b!2455319))

(assert (= (and b!2455329 (not res!1041197)) b!2455320))

(assert (= (and b!2455320 res!1041198) b!2455324))

(assert (= (and b!2455324 (not res!1041193)) b!2455327))

(assert (= (and b!2455327 (not res!1041196)) b!2455328))

(assert (= (or b!2455317 b!2455322 b!2455324) bm!150809))

(assert (=> b!2455327 m!2826751))

(declare-fun m!2826833 () Bool)

(assert (=> b!2455327 m!2826833))

(assert (=> b!2455327 m!2826833))

(declare-fun m!2826835 () Bool)

(assert (=> b!2455327 m!2826835))

(assert (=> d!707219 m!2826751))

(declare-fun m!2826837 () Bool)

(assert (=> d!707219 m!2826837))

(declare-fun m!2826839 () Bool)

(assert (=> d!707219 m!2826839))

(assert (=> b!2455325 m!2826751))

(assert (=> b!2455325 m!2826833))

(assert (=> b!2455325 m!2826833))

(assert (=> b!2455325 m!2826835))

(assert (=> b!2455321 m!2826751))

(declare-fun m!2826841 () Bool)

(assert (=> b!2455321 m!2826841))

(assert (=> b!2455321 m!2826841))

(declare-fun m!2826843 () Bool)

(assert (=> b!2455321 m!2826843))

(assert (=> b!2455321 m!2826751))

(assert (=> b!2455321 m!2826833))

(assert (=> b!2455321 m!2826843))

(assert (=> b!2455321 m!2826833))

(declare-fun m!2826845 () Bool)

(assert (=> b!2455321 m!2826845))

(assert (=> b!2455319 m!2826751))

(assert (=> b!2455319 m!2826841))

(declare-fun m!2826847 () Bool)

(assert (=> b!2455316 m!2826847))

(assert (=> b!2455328 m!2826751))

(assert (=> b!2455328 m!2826841))

(assert (=> bm!150809 m!2826751))

(assert (=> bm!150809 m!2826837))

(assert (=> b!2455183 d!707219))

(declare-fun b!2455397 () Bool)

(declare-fun e!1558007 () Bool)

(declare-fun lt!880278 () List!28687)

(assert (=> b!2455397 (= e!1558007 (or (not (= (_2!16630 lt!880243) Nil!28589)) (= lt!880278 (_1!16630 lt!880243))))))

(declare-fun b!2455394 () Bool)

(declare-fun e!1558006 () List!28687)

(assert (=> b!2455394 (= e!1558006 (_2!16630 lt!880243))))

(declare-fun b!2455396 () Bool)

(declare-fun res!1041234 () Bool)

(assert (=> b!2455396 (=> (not res!1041234) (not e!1558007))))

(declare-fun size!22276 (List!28687) Int)

(assert (=> b!2455396 (= res!1041234 (= (size!22276 lt!880278) (+ (size!22276 (_1!16630 lt!880243)) (size!22276 (_2!16630 lt!880243)))))))

(declare-fun b!2455395 () Bool)

(assert (=> b!2455395 (= e!1558006 (Cons!28589 (h!33990 (_1!16630 lt!880243)) (++!7113 (t!208664 (_1!16630 lt!880243)) (_2!16630 lt!880243))))))

(declare-fun d!707235 () Bool)

(assert (=> d!707235 e!1558007))

(declare-fun res!1041235 () Bool)

(assert (=> d!707235 (=> (not res!1041235) (not e!1558007))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3938 (List!28687) (InoxSet C!14608))

(assert (=> d!707235 (= res!1041235 (= (content!3938 lt!880278) ((_ map or) (content!3938 (_1!16630 lt!880243)) (content!3938 (_2!16630 lt!880243)))))))

(assert (=> d!707235 (= lt!880278 e!1558006)))

(declare-fun c!391849 () Bool)

(assert (=> d!707235 (= c!391849 ((_ is Nil!28589) (_1!16630 lt!880243)))))

(assert (=> d!707235 (= (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)) lt!880278)))

(assert (= (and d!707235 c!391849) b!2455394))

(assert (= (and d!707235 (not c!391849)) b!2455395))

(assert (= (and d!707235 res!1041235) b!2455396))

(assert (= (and b!2455396 res!1041234) b!2455397))

(declare-fun m!2826891 () Bool)

(assert (=> b!2455396 m!2826891))

(declare-fun m!2826893 () Bool)

(assert (=> b!2455396 m!2826893))

(declare-fun m!2826895 () Bool)

(assert (=> b!2455396 m!2826895))

(declare-fun m!2826897 () Bool)

(assert (=> b!2455395 m!2826897))

(declare-fun m!2826899 () Bool)

(assert (=> d!707235 m!2826899))

(declare-fun m!2826901 () Bool)

(assert (=> d!707235 m!2826901))

(declare-fun m!2826903 () Bool)

(assert (=> d!707235 m!2826903))

(assert (=> b!2455183 d!707235))

(declare-fun d!707249 () Bool)

(assert (=> d!707249 (matchR!3340 (Concat!11861 lt!880248 EmptyExpr!7225) (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))

(declare-fun lt!880281 () Unit!41905)

(declare-fun choose!14545 (Regex!7225 Regex!7225 List!28687 List!28687 List!28687) Unit!41905)

(assert (=> d!707249 (= lt!880281 (choose!14545 lt!880248 EmptyExpr!7225 (_1!16630 lt!880243) (_2!16630 lt!880243) s!9460))))

(assert (=> d!707249 (validRegex!2917 lt!880248)))

(assert (=> d!707249 (= (lemmaFindSeparationIsDefinedThenConcatMatches!98 lt!880248 EmptyExpr!7225 (_1!16630 lt!880243) (_2!16630 lt!880243) s!9460) lt!880281)))

(declare-fun bs!465861 () Bool)

(assert (= bs!465861 d!707249))

(assert (=> bs!465861 m!2826751))

(assert (=> bs!465861 m!2826751))

(assert (=> bs!465861 m!2826753))

(declare-fun m!2826905 () Bool)

(assert (=> bs!465861 m!2826905))

(declare-fun m!2826907 () Bool)

(assert (=> bs!465861 m!2826907))

(assert (=> b!2455183 d!707249))

(declare-fun d!707251 () Bool)

(assert (=> d!707251 (= (get!8844 lt!880244) (v!31107 lt!880244))))

(assert (=> b!2455183 d!707251))

(declare-fun bs!465865 () Bool)

(declare-fun d!707253 () Bool)

(assert (= bs!465865 (and d!707253 start!239606)))

(declare-fun lambda!93028 () Int)

(assert (=> bs!465865 (= lambda!93028 lambda!93015)))

(declare-fun b!2455509 () Bool)

(declare-fun e!1558060 () Regex!7225)

(assert (=> b!2455509 (= e!1558060 EmptyExpr!7225)))

(declare-fun b!2455510 () Bool)

(declare-fun e!1558064 () Bool)

(declare-fun e!1558061 () Bool)

(assert (=> b!2455510 (= e!1558064 e!1558061)))

(declare-fun c!391870 () Bool)

(assert (=> b!2455510 (= c!391870 (isEmpty!16615 l!9164))))

(declare-fun b!2455511 () Bool)

(declare-fun e!1558062 () Bool)

(declare-fun lt!880287 () Regex!7225)

(assert (=> b!2455511 (= e!1558062 (= lt!880287 (head!5605 l!9164)))))

(declare-fun b!2455512 () Bool)

(declare-fun isConcat!237 (Regex!7225) Bool)

(assert (=> b!2455512 (= e!1558062 (isConcat!237 lt!880287))))

(assert (=> d!707253 e!1558064))

(declare-fun res!1041260 () Bool)

(assert (=> d!707253 (=> (not res!1041260) (not e!1558064))))

(assert (=> d!707253 (= res!1041260 (validRegex!2917 lt!880287))))

(declare-fun e!1558063 () Regex!7225)

(assert (=> d!707253 (= lt!880287 e!1558063)))

(declare-fun c!391873 () Bool)

(declare-fun e!1558059 () Bool)

(assert (=> d!707253 (= c!391873 e!1558059)))

(declare-fun res!1041259 () Bool)

(assert (=> d!707253 (=> (not res!1041259) (not e!1558059))))

(assert (=> d!707253 (= res!1041259 ((_ is Cons!28588) l!9164))))

(assert (=> d!707253 (forall!5859 l!9164 lambda!93028)))

(assert (=> d!707253 (= (generalisedConcat!326 l!9164) lt!880287)))

(declare-fun b!2455513 () Bool)

(assert (=> b!2455513 (= e!1558063 e!1558060)))

(declare-fun c!391871 () Bool)

(assert (=> b!2455513 (= c!391871 ((_ is Cons!28588) l!9164))))

(declare-fun b!2455514 () Bool)

(assert (=> b!2455514 (= e!1558059 (isEmpty!16615 (t!208663 l!9164)))))

(declare-fun b!2455515 () Bool)

(assert (=> b!2455515 (= e!1558063 (h!33989 l!9164))))

(declare-fun b!2455516 () Bool)

(assert (=> b!2455516 (= e!1558061 e!1558062)))

(declare-fun c!391872 () Bool)

(assert (=> b!2455516 (= c!391872 (isEmpty!16615 (tail!3878 l!9164)))))

(declare-fun b!2455517 () Bool)

(assert (=> b!2455517 (= e!1558060 (Concat!11861 (h!33989 l!9164) (generalisedConcat!326 (t!208663 l!9164))))))

(declare-fun b!2455518 () Bool)

(declare-fun isEmptyExpr!237 (Regex!7225) Bool)

(assert (=> b!2455518 (= e!1558061 (isEmptyExpr!237 lt!880287))))

(assert (= (and d!707253 res!1041259) b!2455514))

(assert (= (and d!707253 c!391873) b!2455515))

(assert (= (and d!707253 (not c!391873)) b!2455513))

(assert (= (and b!2455513 c!391871) b!2455517))

(assert (= (and b!2455513 (not c!391871)) b!2455509))

(assert (= (and d!707253 res!1041260) b!2455510))

(assert (= (and b!2455510 c!391870) b!2455518))

(assert (= (and b!2455510 (not c!391870)) b!2455516))

(assert (= (and b!2455516 c!391872) b!2455511))

(assert (= (and b!2455516 (not c!391872)) b!2455512))

(assert (=> b!2455510 m!2826749))

(assert (=> b!2455511 m!2826737))

(declare-fun m!2826919 () Bool)

(assert (=> b!2455517 m!2826919))

(declare-fun m!2826921 () Bool)

(assert (=> b!2455512 m!2826921))

(declare-fun m!2826923 () Bool)

(assert (=> b!2455514 m!2826923))

(declare-fun m!2826925 () Bool)

(assert (=> b!2455518 m!2826925))

(assert (=> b!2455516 m!2826727))

(assert (=> b!2455516 m!2826727))

(declare-fun m!2826927 () Bool)

(assert (=> b!2455516 m!2826927))

(declare-fun m!2826929 () Bool)

(assert (=> d!707253 m!2826929))

(declare-fun m!2826931 () Bool)

(assert (=> d!707253 m!2826931))

(assert (=> b!2455177 d!707253))

(declare-fun d!707261 () Bool)

(declare-fun isEmpty!16619 (Option!5700) Bool)

(assert (=> d!707261 (= (isDefined!4526 lt!880244) (not (isEmpty!16619 lt!880244)))))

(declare-fun bs!465866 () Bool)

(assert (= bs!465866 d!707261))

(declare-fun m!2826933 () Bool)

(assert (=> bs!465866 m!2826933))

(assert (=> b!2455187 d!707261))

(declare-fun b!2455537 () Bool)

(declare-fun e!1558075 () Option!5700)

(assert (=> b!2455537 (= e!1558075 (Some!5699 (tuple2!28179 Nil!28589 s!9460)))))

(declare-fun b!2455538 () Bool)

(declare-fun e!1558079 () Bool)

(assert (=> b!2455538 (= e!1558079 (matchR!3340 EmptyExpr!7225 s!9460))))

(declare-fun b!2455539 () Bool)

(declare-fun e!1558076 () Option!5700)

(assert (=> b!2455539 (= e!1558076 None!5699)))

(declare-fun b!2455541 () Bool)

(declare-fun lt!880295 () Unit!41905)

(declare-fun lt!880294 () Unit!41905)

(assert (=> b!2455541 (= lt!880295 lt!880294)))

(assert (=> b!2455541 (= (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (t!208664 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!712 (List!28687 C!14608 List!28687 List!28687) Unit!41905)

(assert (=> b!2455541 (= lt!880294 (lemmaMoveElementToOtherListKeepsConcatEq!712 Nil!28589 (h!33990 s!9460) (t!208664 s!9460) s!9460))))

(assert (=> b!2455541 (= e!1558076 (findConcatSeparation!808 lt!880248 EmptyExpr!7225 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (t!208664 s!9460) s!9460))))

(declare-fun b!2455542 () Bool)

(assert (=> b!2455542 (= e!1558075 e!1558076)))

(declare-fun c!391878 () Bool)

(assert (=> b!2455542 (= c!391878 ((_ is Nil!28589) s!9460))))

(declare-fun b!2455543 () Bool)

(declare-fun res!1041274 () Bool)

(declare-fun e!1558078 () Bool)

(assert (=> b!2455543 (=> (not res!1041274) (not e!1558078))))

(declare-fun lt!880296 () Option!5700)

(assert (=> b!2455543 (= res!1041274 (matchR!3340 lt!880248 (_1!16630 (get!8844 lt!880296))))))

(declare-fun d!707263 () Bool)

(declare-fun e!1558077 () Bool)

(assert (=> d!707263 e!1558077))

(declare-fun res!1041272 () Bool)

(assert (=> d!707263 (=> res!1041272 e!1558077)))

(assert (=> d!707263 (= res!1041272 e!1558078)))

(declare-fun res!1041271 () Bool)

(assert (=> d!707263 (=> (not res!1041271) (not e!1558078))))

(assert (=> d!707263 (= res!1041271 (isDefined!4526 lt!880296))))

(assert (=> d!707263 (= lt!880296 e!1558075)))

(declare-fun c!391879 () Bool)

(assert (=> d!707263 (= c!391879 e!1558079)))

(declare-fun res!1041275 () Bool)

(assert (=> d!707263 (=> (not res!1041275) (not e!1558079))))

(assert (=> d!707263 (= res!1041275 (matchR!3340 lt!880248 Nil!28589))))

(assert (=> d!707263 (validRegex!2917 lt!880248)))

(assert (=> d!707263 (= (findConcatSeparation!808 lt!880248 EmptyExpr!7225 Nil!28589 s!9460 s!9460) lt!880296)))

(declare-fun b!2455540 () Bool)

(assert (=> b!2455540 (= e!1558077 (not (isDefined!4526 lt!880296)))))

(declare-fun b!2455544 () Bool)

(assert (=> b!2455544 (= e!1558078 (= (++!7113 (_1!16630 (get!8844 lt!880296)) (_2!16630 (get!8844 lt!880296))) s!9460))))

(declare-fun b!2455545 () Bool)

(declare-fun res!1041273 () Bool)

(assert (=> b!2455545 (=> (not res!1041273) (not e!1558078))))

(assert (=> b!2455545 (= res!1041273 (matchR!3340 EmptyExpr!7225 (_2!16630 (get!8844 lt!880296))))))

(assert (= (and d!707263 res!1041275) b!2455538))

(assert (= (and d!707263 c!391879) b!2455537))

(assert (= (and d!707263 (not c!391879)) b!2455542))

(assert (= (and b!2455542 c!391878) b!2455539))

(assert (= (and b!2455542 (not c!391878)) b!2455541))

(assert (= (and d!707263 res!1041271) b!2455543))

(assert (= (and b!2455543 res!1041274) b!2455545))

(assert (= (and b!2455545 res!1041273) b!2455544))

(assert (= (and d!707263 (not res!1041272)) b!2455540))

(declare-fun m!2826935 () Bool)

(assert (=> b!2455540 m!2826935))

(declare-fun m!2826937 () Bool)

(assert (=> b!2455538 m!2826937))

(declare-fun m!2826939 () Bool)

(assert (=> b!2455543 m!2826939))

(declare-fun m!2826941 () Bool)

(assert (=> b!2455543 m!2826941))

(assert (=> d!707263 m!2826935))

(declare-fun m!2826943 () Bool)

(assert (=> d!707263 m!2826943))

(assert (=> d!707263 m!2826907))

(assert (=> b!2455544 m!2826939))

(declare-fun m!2826945 () Bool)

(assert (=> b!2455544 m!2826945))

(declare-fun m!2826947 () Bool)

(assert (=> b!2455541 m!2826947))

(assert (=> b!2455541 m!2826947))

(declare-fun m!2826949 () Bool)

(assert (=> b!2455541 m!2826949))

(declare-fun m!2826951 () Bool)

(assert (=> b!2455541 m!2826951))

(assert (=> b!2455541 m!2826947))

(declare-fun m!2826953 () Bool)

(assert (=> b!2455541 m!2826953))

(assert (=> b!2455545 m!2826939))

(declare-fun m!2826955 () Bool)

(assert (=> b!2455545 m!2826955))

(assert (=> b!2455187 d!707263))

(declare-fun b!2455546 () Bool)

(declare-fun e!1558085 () Bool)

(assert (=> b!2455546 (= e!1558085 (nullable!2218 r!13927))))

(declare-fun bm!150818 () Bool)

(declare-fun call!150823 () Bool)

(assert (=> bm!150818 (= call!150823 (isEmpty!16618 s!9460))))

(declare-fun b!2455547 () Bool)

(declare-fun e!1558083 () Bool)

(declare-fun lt!880297 () Bool)

(assert (=> b!2455547 (= e!1558083 (= lt!880297 call!150823))))

(declare-fun b!2455548 () Bool)

(declare-fun e!1558080 () Bool)

(assert (=> b!2455548 (= e!1558080 (not lt!880297))))

(declare-fun b!2455549 () Bool)

(declare-fun e!1558081 () Bool)

(assert (=> b!2455549 (= e!1558081 (= (head!5607 s!9460) (c!391797 r!13927)))))

(declare-fun b!2455550 () Bool)

(declare-fun e!1558084 () Bool)

(declare-fun e!1558086 () Bool)

(assert (=> b!2455550 (= e!1558084 e!1558086)))

(declare-fun res!1041282 () Bool)

(assert (=> b!2455550 (=> (not res!1041282) (not e!1558086))))

(assert (=> b!2455550 (= res!1041282 (not lt!880297))))

(declare-fun b!2455551 () Bool)

(assert (=> b!2455551 (= e!1558085 (matchR!3340 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (tail!3880 s!9460)))))

(declare-fun b!2455552 () Bool)

(declare-fun res!1041276 () Bool)

(assert (=> b!2455552 (=> (not res!1041276) (not e!1558081))))

(assert (=> b!2455552 (= res!1041276 (not call!150823))))

(declare-fun b!2455553 () Bool)

(assert (=> b!2455553 (= e!1558083 e!1558080)))

(declare-fun c!391881 () Bool)

(assert (=> b!2455553 (= c!391881 ((_ is EmptyLang!7225) r!13927))))

(declare-fun b!2455554 () Bool)

(declare-fun e!1558082 () Bool)

(assert (=> b!2455554 (= e!1558086 e!1558082)))

(declare-fun res!1041277 () Bool)

(assert (=> b!2455554 (=> res!1041277 e!1558082)))

(assert (=> b!2455554 (= res!1041277 call!150823)))

(declare-fun b!2455555 () Bool)

(declare-fun res!1041283 () Bool)

(assert (=> b!2455555 (=> (not res!1041283) (not e!1558081))))

(assert (=> b!2455555 (= res!1041283 (isEmpty!16618 (tail!3880 s!9460)))))

(declare-fun b!2455556 () Bool)

(declare-fun res!1041278 () Bool)

(assert (=> b!2455556 (=> res!1041278 e!1558084)))

(assert (=> b!2455556 (= res!1041278 (not ((_ is ElementMatch!7225) r!13927)))))

(assert (=> b!2455556 (= e!1558080 e!1558084)))

(declare-fun d!707265 () Bool)

(assert (=> d!707265 e!1558083))

(declare-fun c!391882 () Bool)

(assert (=> d!707265 (= c!391882 ((_ is EmptyExpr!7225) r!13927))))

(assert (=> d!707265 (= lt!880297 e!1558085)))

(declare-fun c!391880 () Bool)

(assert (=> d!707265 (= c!391880 (isEmpty!16618 s!9460))))

(assert (=> d!707265 (validRegex!2917 r!13927)))

(assert (=> d!707265 (= (matchR!3340 r!13927 s!9460) lt!880297)))

(declare-fun b!2455557 () Bool)

(declare-fun res!1041280 () Bool)

(assert (=> b!2455557 (=> res!1041280 e!1558082)))

(assert (=> b!2455557 (= res!1041280 (not (isEmpty!16618 (tail!3880 s!9460))))))

(declare-fun b!2455558 () Bool)

(assert (=> b!2455558 (= e!1558082 (not (= (head!5607 s!9460) (c!391797 r!13927))))))

(declare-fun b!2455559 () Bool)

(declare-fun res!1041281 () Bool)

(assert (=> b!2455559 (=> res!1041281 e!1558084)))

(assert (=> b!2455559 (= res!1041281 e!1558081)))

(declare-fun res!1041279 () Bool)

(assert (=> b!2455559 (=> (not res!1041279) (not e!1558081))))

(assert (=> b!2455559 (= res!1041279 lt!880297)))

(assert (= (and d!707265 c!391880) b!2455546))

(assert (= (and d!707265 (not c!391880)) b!2455551))

(assert (= (and d!707265 c!391882) b!2455547))

(assert (= (and d!707265 (not c!391882)) b!2455553))

(assert (= (and b!2455553 c!391881) b!2455548))

(assert (= (and b!2455553 (not c!391881)) b!2455556))

(assert (= (and b!2455556 (not res!1041278)) b!2455559))

(assert (= (and b!2455559 res!1041279) b!2455552))

(assert (= (and b!2455552 res!1041276) b!2455555))

(assert (= (and b!2455555 res!1041283) b!2455549))

(assert (= (and b!2455559 (not res!1041281)) b!2455550))

(assert (= (and b!2455550 res!1041282) b!2455554))

(assert (= (and b!2455554 (not res!1041277)) b!2455557))

(assert (= (and b!2455557 (not res!1041280)) b!2455558))

(assert (= (or b!2455547 b!2455552 b!2455554) bm!150818))

(declare-fun m!2826957 () Bool)

(assert (=> b!2455557 m!2826957))

(assert (=> b!2455557 m!2826957))

(declare-fun m!2826959 () Bool)

(assert (=> b!2455557 m!2826959))

(declare-fun m!2826961 () Bool)

(assert (=> d!707265 m!2826961))

(declare-fun m!2826963 () Bool)

(assert (=> d!707265 m!2826963))

(assert (=> b!2455555 m!2826957))

(assert (=> b!2455555 m!2826957))

(assert (=> b!2455555 m!2826959))

(declare-fun m!2826965 () Bool)

(assert (=> b!2455551 m!2826965))

(assert (=> b!2455551 m!2826965))

(declare-fun m!2826967 () Bool)

(assert (=> b!2455551 m!2826967))

(assert (=> b!2455551 m!2826957))

(assert (=> b!2455551 m!2826967))

(assert (=> b!2455551 m!2826957))

(declare-fun m!2826969 () Bool)

(assert (=> b!2455551 m!2826969))

(assert (=> b!2455549 m!2826965))

(declare-fun m!2826971 () Bool)

(assert (=> b!2455546 m!2826971))

(assert (=> b!2455558 m!2826965))

(assert (=> bm!150818 m!2826961))

(assert (=> b!2455181 d!707265))

(declare-fun b!2455601 () Bool)

(assert (=> b!2455601 true))

(assert (=> b!2455601 true))

(declare-fun bs!465867 () Bool)

(declare-fun b!2455592 () Bool)

(assert (= bs!465867 (and b!2455592 b!2455601)))

(declare-fun lambda!93034 () Int)

(declare-fun lambda!93033 () Int)

(assert (=> bs!465867 (not (= lambda!93034 lambda!93033))))

(assert (=> b!2455592 true))

(assert (=> b!2455592 true))

(declare-fun call!150828 () Bool)

(declare-fun bm!150823 () Bool)

(declare-fun c!391891 () Bool)

(declare-fun Exists!1244 (Int) Bool)

(assert (=> bm!150823 (= call!150828 (Exists!1244 (ite c!391891 lambda!93033 lambda!93034)))))

(declare-fun e!1558108 () Bool)

(assert (=> b!2455592 (= e!1558108 call!150828)))

(declare-fun b!2455593 () Bool)

(declare-fun c!391893 () Bool)

(assert (=> b!2455593 (= c!391893 ((_ is Union!7225) r!13927))))

(declare-fun e!1558109 () Bool)

(declare-fun e!1558106 () Bool)

(assert (=> b!2455593 (= e!1558109 e!1558106)))

(declare-fun b!2455594 () Bool)

(declare-fun e!1558110 () Bool)

(assert (=> b!2455594 (= e!1558106 e!1558110)))

(declare-fun res!1041302 () Bool)

(assert (=> b!2455594 (= res!1041302 (matchRSpec!1072 (regOne!14963 r!13927) s!9460))))

(assert (=> b!2455594 (=> res!1041302 e!1558110)))

(declare-fun d!707267 () Bool)

(declare-fun c!391892 () Bool)

(assert (=> d!707267 (= c!391892 ((_ is EmptyExpr!7225) r!13927))))

(declare-fun e!1558111 () Bool)

(assert (=> d!707267 (= (matchRSpec!1072 r!13927 s!9460) e!1558111)))

(declare-fun b!2455595 () Bool)

(declare-fun e!1558105 () Bool)

(assert (=> b!2455595 (= e!1558111 e!1558105)))

(declare-fun res!1041301 () Bool)

(assert (=> b!2455595 (= res!1041301 (not ((_ is EmptyLang!7225) r!13927)))))

(assert (=> b!2455595 (=> (not res!1041301) (not e!1558105))))

(declare-fun b!2455596 () Bool)

(assert (=> b!2455596 (= e!1558106 e!1558108)))

(assert (=> b!2455596 (= c!391891 ((_ is Star!7225) r!13927))))

(declare-fun bm!150824 () Bool)

(declare-fun call!150829 () Bool)

(assert (=> bm!150824 (= call!150829 (isEmpty!16618 s!9460))))

(declare-fun b!2455597 () Bool)

(assert (=> b!2455597 (= e!1558111 call!150829)))

(declare-fun b!2455598 () Bool)

(assert (=> b!2455598 (= e!1558109 (= s!9460 (Cons!28589 (c!391797 r!13927) Nil!28589)))))

(declare-fun b!2455599 () Bool)

(assert (=> b!2455599 (= e!1558110 (matchRSpec!1072 (regTwo!14963 r!13927) s!9460))))

(declare-fun b!2455600 () Bool)

(declare-fun c!391894 () Bool)

(assert (=> b!2455600 (= c!391894 ((_ is ElementMatch!7225) r!13927))))

(assert (=> b!2455600 (= e!1558105 e!1558109)))

(declare-fun e!1558107 () Bool)

(assert (=> b!2455601 (= e!1558107 call!150828)))

(declare-fun b!2455602 () Bool)

(declare-fun res!1041300 () Bool)

(assert (=> b!2455602 (=> res!1041300 e!1558107)))

(assert (=> b!2455602 (= res!1041300 call!150829)))

(assert (=> b!2455602 (= e!1558108 e!1558107)))

(assert (= (and d!707267 c!391892) b!2455597))

(assert (= (and d!707267 (not c!391892)) b!2455595))

(assert (= (and b!2455595 res!1041301) b!2455600))

(assert (= (and b!2455600 c!391894) b!2455598))

(assert (= (and b!2455600 (not c!391894)) b!2455593))

(assert (= (and b!2455593 c!391893) b!2455594))

(assert (= (and b!2455593 (not c!391893)) b!2455596))

(assert (= (and b!2455594 (not res!1041302)) b!2455599))

(assert (= (and b!2455596 c!391891) b!2455602))

(assert (= (and b!2455596 (not c!391891)) b!2455592))

(assert (= (and b!2455602 (not res!1041300)) b!2455601))

(assert (= (or b!2455601 b!2455592) bm!150823))

(assert (= (or b!2455597 b!2455602) bm!150824))

(declare-fun m!2826973 () Bool)

(assert (=> bm!150823 m!2826973))

(declare-fun m!2826975 () Bool)

(assert (=> b!2455594 m!2826975))

(assert (=> bm!150824 m!2826961))

(declare-fun m!2826977 () Bool)

(assert (=> b!2455599 m!2826977))

(assert (=> b!2455181 d!707267))

(declare-fun d!707269 () Bool)

(assert (=> d!707269 (= (matchR!3340 r!13927 s!9460) (matchRSpec!1072 r!13927 s!9460))))

(declare-fun lt!880300 () Unit!41905)

(declare-fun choose!14546 (Regex!7225 List!28687) Unit!41905)

(assert (=> d!707269 (= lt!880300 (choose!14546 r!13927 s!9460))))

(assert (=> d!707269 (validRegex!2917 r!13927)))

(assert (=> d!707269 (= (mainMatchTheorem!1072 r!13927 s!9460) lt!880300)))

(declare-fun bs!465868 () Bool)

(assert (= bs!465868 d!707269))

(assert (=> bs!465868 m!2826729))

(assert (=> bs!465868 m!2826731))

(declare-fun m!2826979 () Bool)

(assert (=> bs!465868 m!2826979))

(assert (=> bs!465868 m!2826963))

(assert (=> b!2455181 d!707269))

(declare-fun d!707271 () Bool)

(assert (=> d!707271 (= (isEmpty!16615 lt!880247) ((_ is Nil!28588) lt!880247))))

(assert (=> b!2455186 d!707271))

(declare-fun d!707273 () Bool)

(assert (=> d!707273 (= (tail!3878 l!9164) (t!208663 l!9164))))

(assert (=> b!2455186 d!707273))

(declare-fun b!2455607 () Bool)

(declare-fun e!1558117 () Bool)

(assert (=> b!2455607 (= e!1558117 (nullable!2218 lt!880248))))

(declare-fun bm!150825 () Bool)

(declare-fun call!150830 () Bool)

(assert (=> bm!150825 (= call!150830 (isEmpty!16618 s!9460))))

(declare-fun b!2455608 () Bool)

(declare-fun e!1558115 () Bool)

(declare-fun lt!880301 () Bool)

(assert (=> b!2455608 (= e!1558115 (= lt!880301 call!150830))))

(declare-fun b!2455609 () Bool)

(declare-fun e!1558112 () Bool)

(assert (=> b!2455609 (= e!1558112 (not lt!880301))))

(declare-fun b!2455610 () Bool)

(declare-fun e!1558113 () Bool)

(assert (=> b!2455610 (= e!1558113 (= (head!5607 s!9460) (c!391797 lt!880248)))))

(declare-fun b!2455611 () Bool)

(declare-fun e!1558116 () Bool)

(declare-fun e!1558118 () Bool)

(assert (=> b!2455611 (= e!1558116 e!1558118)))

(declare-fun res!1041309 () Bool)

(assert (=> b!2455611 (=> (not res!1041309) (not e!1558118))))

(assert (=> b!2455611 (= res!1041309 (not lt!880301))))

(declare-fun b!2455612 () Bool)

(assert (=> b!2455612 (= e!1558117 (matchR!3340 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (tail!3880 s!9460)))))

(declare-fun b!2455613 () Bool)

(declare-fun res!1041303 () Bool)

(assert (=> b!2455613 (=> (not res!1041303) (not e!1558113))))

(assert (=> b!2455613 (= res!1041303 (not call!150830))))

(declare-fun b!2455614 () Bool)

(assert (=> b!2455614 (= e!1558115 e!1558112)))

(declare-fun c!391896 () Bool)

(assert (=> b!2455614 (= c!391896 ((_ is EmptyLang!7225) lt!880248))))

(declare-fun b!2455615 () Bool)

(declare-fun e!1558114 () Bool)

(assert (=> b!2455615 (= e!1558118 e!1558114)))

(declare-fun res!1041304 () Bool)

(assert (=> b!2455615 (=> res!1041304 e!1558114)))

(assert (=> b!2455615 (= res!1041304 call!150830)))

(declare-fun b!2455616 () Bool)

(declare-fun res!1041310 () Bool)

(assert (=> b!2455616 (=> (not res!1041310) (not e!1558113))))

(assert (=> b!2455616 (= res!1041310 (isEmpty!16618 (tail!3880 s!9460)))))

(declare-fun b!2455617 () Bool)

(declare-fun res!1041305 () Bool)

(assert (=> b!2455617 (=> res!1041305 e!1558116)))

(assert (=> b!2455617 (= res!1041305 (not ((_ is ElementMatch!7225) lt!880248)))))

(assert (=> b!2455617 (= e!1558112 e!1558116)))

(declare-fun d!707275 () Bool)

(assert (=> d!707275 e!1558115))

(declare-fun c!391897 () Bool)

(assert (=> d!707275 (= c!391897 ((_ is EmptyExpr!7225) lt!880248))))

(assert (=> d!707275 (= lt!880301 e!1558117)))

(declare-fun c!391895 () Bool)

(assert (=> d!707275 (= c!391895 (isEmpty!16618 s!9460))))

(assert (=> d!707275 (validRegex!2917 lt!880248)))

(assert (=> d!707275 (= (matchR!3340 lt!880248 s!9460) lt!880301)))

(declare-fun b!2455618 () Bool)

(declare-fun res!1041307 () Bool)

(assert (=> b!2455618 (=> res!1041307 e!1558114)))

(assert (=> b!2455618 (= res!1041307 (not (isEmpty!16618 (tail!3880 s!9460))))))

(declare-fun b!2455619 () Bool)

(assert (=> b!2455619 (= e!1558114 (not (= (head!5607 s!9460) (c!391797 lt!880248))))))

(declare-fun b!2455620 () Bool)

(declare-fun res!1041308 () Bool)

(assert (=> b!2455620 (=> res!1041308 e!1558116)))

(assert (=> b!2455620 (= res!1041308 e!1558113)))

(declare-fun res!1041306 () Bool)

(assert (=> b!2455620 (=> (not res!1041306) (not e!1558113))))

(assert (=> b!2455620 (= res!1041306 lt!880301)))

(assert (= (and d!707275 c!391895) b!2455607))

(assert (= (and d!707275 (not c!391895)) b!2455612))

(assert (= (and d!707275 c!391897) b!2455608))

(assert (= (and d!707275 (not c!391897)) b!2455614))

(assert (= (and b!2455614 c!391896) b!2455609))

(assert (= (and b!2455614 (not c!391896)) b!2455617))

(assert (= (and b!2455617 (not res!1041305)) b!2455620))

(assert (= (and b!2455620 res!1041306) b!2455613))

(assert (= (and b!2455613 res!1041303) b!2455616))

(assert (= (and b!2455616 res!1041310) b!2455610))

(assert (= (and b!2455620 (not res!1041308)) b!2455611))

(assert (= (and b!2455611 res!1041309) b!2455615))

(assert (= (and b!2455615 (not res!1041304)) b!2455618))

(assert (= (and b!2455618 (not res!1041307)) b!2455619))

(assert (= (or b!2455608 b!2455613 b!2455615) bm!150825))

(assert (=> b!2455618 m!2826957))

(assert (=> b!2455618 m!2826957))

(assert (=> b!2455618 m!2826959))

(assert (=> d!707275 m!2826961))

(assert (=> d!707275 m!2826907))

(assert (=> b!2455616 m!2826957))

(assert (=> b!2455616 m!2826957))

(assert (=> b!2455616 m!2826959))

(assert (=> b!2455612 m!2826965))

(assert (=> b!2455612 m!2826965))

(declare-fun m!2826981 () Bool)

(assert (=> b!2455612 m!2826981))

(assert (=> b!2455612 m!2826957))

(assert (=> b!2455612 m!2826981))

(assert (=> b!2455612 m!2826957))

(declare-fun m!2826983 () Bool)

(assert (=> b!2455612 m!2826983))

(assert (=> b!2455610 m!2826965))

(declare-fun m!2826985 () Bool)

(assert (=> b!2455607 m!2826985))

(assert (=> b!2455619 m!2826965))

(assert (=> bm!150825 m!2826961))

(assert (=> b!2455180 d!707275))

(declare-fun d!707277 () Bool)

(assert (=> d!707277 (= (head!5605 l!9164) (h!33989 l!9164))))

(assert (=> b!2455180 d!707277))

(declare-fun d!707279 () Bool)

(declare-fun res!1041315 () Bool)

(declare-fun e!1558123 () Bool)

(assert (=> d!707279 (=> res!1041315 e!1558123)))

(assert (=> d!707279 (= res!1041315 ((_ is Nil!28588) l!9164))))

(assert (=> d!707279 (= (forall!5859 l!9164 lambda!93015) e!1558123)))

(declare-fun b!2455625 () Bool)

(declare-fun e!1558124 () Bool)

(assert (=> b!2455625 (= e!1558123 e!1558124)))

(declare-fun res!1041316 () Bool)

(assert (=> b!2455625 (=> (not res!1041316) (not e!1558124))))

(declare-fun dynLambda!12274 (Int Regex!7225) Bool)

(assert (=> b!2455625 (= res!1041316 (dynLambda!12274 lambda!93015 (h!33989 l!9164)))))

(declare-fun b!2455626 () Bool)

(assert (=> b!2455626 (= e!1558124 (forall!5859 (t!208663 l!9164) lambda!93015))))

(assert (= (and d!707279 (not res!1041315)) b!2455625))

(assert (= (and b!2455625 res!1041316) b!2455626))

(declare-fun b_lambda!75155 () Bool)

(assert (=> (not b_lambda!75155) (not b!2455625)))

(declare-fun m!2826987 () Bool)

(assert (=> b!2455625 m!2826987))

(declare-fun m!2826989 () Bool)

(assert (=> b!2455626 m!2826989))

(assert (=> start!239606 d!707279))

(declare-fun bs!465869 () Bool)

(declare-fun d!707281 () Bool)

(assert (= bs!465869 (and d!707281 start!239606)))

(declare-fun lambda!93035 () Int)

(assert (=> bs!465869 (= lambda!93035 lambda!93015)))

(declare-fun bs!465870 () Bool)

(assert (= bs!465870 (and d!707281 d!707253)))

(assert (=> bs!465870 (= lambda!93035 lambda!93028)))

(declare-fun b!2455627 () Bool)

(declare-fun e!1558126 () Regex!7225)

(assert (=> b!2455627 (= e!1558126 EmptyExpr!7225)))

(declare-fun b!2455628 () Bool)

(declare-fun e!1558130 () Bool)

(declare-fun e!1558127 () Bool)

(assert (=> b!2455628 (= e!1558130 e!1558127)))

(declare-fun c!391898 () Bool)

(assert (=> b!2455628 (= c!391898 (isEmpty!16615 lt!880247))))

(declare-fun b!2455629 () Bool)

(declare-fun e!1558128 () Bool)

(declare-fun lt!880302 () Regex!7225)

(assert (=> b!2455629 (= e!1558128 (= lt!880302 (head!5605 lt!880247)))))

(declare-fun b!2455630 () Bool)

(assert (=> b!2455630 (= e!1558128 (isConcat!237 lt!880302))))

(assert (=> d!707281 e!1558130))

(declare-fun res!1041318 () Bool)

(assert (=> d!707281 (=> (not res!1041318) (not e!1558130))))

(assert (=> d!707281 (= res!1041318 (validRegex!2917 lt!880302))))

(declare-fun e!1558129 () Regex!7225)

(assert (=> d!707281 (= lt!880302 e!1558129)))

(declare-fun c!391901 () Bool)

(declare-fun e!1558125 () Bool)

(assert (=> d!707281 (= c!391901 e!1558125)))

(declare-fun res!1041317 () Bool)

(assert (=> d!707281 (=> (not res!1041317) (not e!1558125))))

(assert (=> d!707281 (= res!1041317 ((_ is Cons!28588) lt!880247))))

(assert (=> d!707281 (forall!5859 lt!880247 lambda!93035)))

(assert (=> d!707281 (= (generalisedConcat!326 lt!880247) lt!880302)))

(declare-fun b!2455631 () Bool)

(assert (=> b!2455631 (= e!1558129 e!1558126)))

(declare-fun c!391899 () Bool)

(assert (=> b!2455631 (= c!391899 ((_ is Cons!28588) lt!880247))))

(declare-fun b!2455632 () Bool)

(assert (=> b!2455632 (= e!1558125 (isEmpty!16615 (t!208663 lt!880247)))))

(declare-fun b!2455633 () Bool)

(assert (=> b!2455633 (= e!1558129 (h!33989 lt!880247))))

(declare-fun b!2455634 () Bool)

(assert (=> b!2455634 (= e!1558127 e!1558128)))

(declare-fun c!391900 () Bool)

(assert (=> b!2455634 (= c!391900 (isEmpty!16615 (tail!3878 lt!880247)))))

(declare-fun b!2455635 () Bool)

(assert (=> b!2455635 (= e!1558126 (Concat!11861 (h!33989 lt!880247) (generalisedConcat!326 (t!208663 lt!880247))))))

(declare-fun b!2455636 () Bool)

(assert (=> b!2455636 (= e!1558127 (isEmptyExpr!237 lt!880302))))

(assert (= (and d!707281 res!1041317) b!2455632))

(assert (= (and d!707281 c!391901) b!2455633))

(assert (= (and d!707281 (not c!391901)) b!2455631))

(assert (= (and b!2455631 c!391899) b!2455635))

(assert (= (and b!2455631 (not c!391899)) b!2455627))

(assert (= (and d!707281 res!1041318) b!2455628))

(assert (= (and b!2455628 c!391898) b!2455636))

(assert (= (and b!2455628 (not c!391898)) b!2455634))

(assert (= (and b!2455634 c!391900) b!2455629))

(assert (= (and b!2455634 (not c!391900)) b!2455630))

(assert (=> b!2455628 m!2826725))

(declare-fun m!2826991 () Bool)

(assert (=> b!2455629 m!2826991))

(declare-fun m!2826993 () Bool)

(assert (=> b!2455635 m!2826993))

(declare-fun m!2826995 () Bool)

(assert (=> b!2455630 m!2826995))

(declare-fun m!2826997 () Bool)

(assert (=> b!2455632 m!2826997))

(declare-fun m!2826999 () Bool)

(assert (=> b!2455636 m!2826999))

(declare-fun m!2827001 () Bool)

(assert (=> b!2455634 m!2827001))

(assert (=> b!2455634 m!2827001))

(declare-fun m!2827003 () Bool)

(assert (=> b!2455634 m!2827003))

(declare-fun m!2827005 () Bool)

(assert (=> d!707281 m!2827005))

(declare-fun m!2827007 () Bool)

(assert (=> d!707281 m!2827007))

(assert (=> b!2455179 d!707281))

(declare-fun d!707283 () Bool)

(assert (=> d!707283 (= (isEmpty!16615 l!9164) ((_ is Nil!28588) l!9164))))

(assert (=> b!2455184 d!707283))

(declare-fun b!2455647 () Bool)

(declare-fun e!1558133 () Bool)

(assert (=> b!2455647 (= e!1558133 tp_is_empty!11863)))

(declare-fun b!2455649 () Bool)

(declare-fun tp!781002 () Bool)

(assert (=> b!2455649 (= e!1558133 tp!781002)))

(declare-fun b!2455648 () Bool)

(declare-fun tp!781003 () Bool)

(declare-fun tp!781005 () Bool)

(assert (=> b!2455648 (= e!1558133 (and tp!781003 tp!781005))))

(declare-fun b!2455650 () Bool)

(declare-fun tp!781004 () Bool)

(declare-fun tp!781001 () Bool)

(assert (=> b!2455650 (= e!1558133 (and tp!781004 tp!781001))))

(assert (=> b!2455178 (= tp!780935 e!1558133)))

(assert (= (and b!2455178 ((_ is ElementMatch!7225) (regOne!14962 r!13927))) b!2455647))

(assert (= (and b!2455178 ((_ is Concat!11861) (regOne!14962 r!13927))) b!2455648))

(assert (= (and b!2455178 ((_ is Star!7225) (regOne!14962 r!13927))) b!2455649))

(assert (= (and b!2455178 ((_ is Union!7225) (regOne!14962 r!13927))) b!2455650))

(declare-fun b!2455651 () Bool)

(declare-fun e!1558134 () Bool)

(assert (=> b!2455651 (= e!1558134 tp_is_empty!11863)))

(declare-fun b!2455653 () Bool)

(declare-fun tp!781007 () Bool)

(assert (=> b!2455653 (= e!1558134 tp!781007)))

(declare-fun b!2455652 () Bool)

(declare-fun tp!781008 () Bool)

(declare-fun tp!781010 () Bool)

(assert (=> b!2455652 (= e!1558134 (and tp!781008 tp!781010))))

(declare-fun b!2455654 () Bool)

(declare-fun tp!781009 () Bool)

(declare-fun tp!781006 () Bool)

(assert (=> b!2455654 (= e!1558134 (and tp!781009 tp!781006))))

(assert (=> b!2455178 (= tp!780940 e!1558134)))

(assert (= (and b!2455178 ((_ is ElementMatch!7225) (regTwo!14962 r!13927))) b!2455651))

(assert (= (and b!2455178 ((_ is Concat!11861) (regTwo!14962 r!13927))) b!2455652))

(assert (= (and b!2455178 ((_ is Star!7225) (regTwo!14962 r!13927))) b!2455653))

(assert (= (and b!2455178 ((_ is Union!7225) (regTwo!14962 r!13927))) b!2455654))

(declare-fun b!2455655 () Bool)

(declare-fun e!1558135 () Bool)

(assert (=> b!2455655 (= e!1558135 tp_is_empty!11863)))

(declare-fun b!2455657 () Bool)

(declare-fun tp!781012 () Bool)

(assert (=> b!2455657 (= e!1558135 tp!781012)))

(declare-fun b!2455656 () Bool)

(declare-fun tp!781013 () Bool)

(declare-fun tp!781015 () Bool)

(assert (=> b!2455656 (= e!1558135 (and tp!781013 tp!781015))))

(declare-fun b!2455658 () Bool)

(declare-fun tp!781014 () Bool)

(declare-fun tp!781011 () Bool)

(assert (=> b!2455658 (= e!1558135 (and tp!781014 tp!781011))))

(assert (=> b!2455188 (= tp!780939 e!1558135)))

(assert (= (and b!2455188 ((_ is ElementMatch!7225) (regOne!14963 r!13927))) b!2455655))

(assert (= (and b!2455188 ((_ is Concat!11861) (regOne!14963 r!13927))) b!2455656))

(assert (= (and b!2455188 ((_ is Star!7225) (regOne!14963 r!13927))) b!2455657))

(assert (= (and b!2455188 ((_ is Union!7225) (regOne!14963 r!13927))) b!2455658))

(declare-fun b!2455659 () Bool)

(declare-fun e!1558136 () Bool)

(assert (=> b!2455659 (= e!1558136 tp_is_empty!11863)))

(declare-fun b!2455661 () Bool)

(declare-fun tp!781017 () Bool)

(assert (=> b!2455661 (= e!1558136 tp!781017)))

(declare-fun b!2455660 () Bool)

(declare-fun tp!781018 () Bool)

(declare-fun tp!781020 () Bool)

(assert (=> b!2455660 (= e!1558136 (and tp!781018 tp!781020))))

(declare-fun b!2455662 () Bool)

(declare-fun tp!781019 () Bool)

(declare-fun tp!781016 () Bool)

(assert (=> b!2455662 (= e!1558136 (and tp!781019 tp!781016))))

(assert (=> b!2455188 (= tp!780941 e!1558136)))

(assert (= (and b!2455188 ((_ is ElementMatch!7225) (regTwo!14963 r!13927))) b!2455659))

(assert (= (and b!2455188 ((_ is Concat!11861) (regTwo!14963 r!13927))) b!2455660))

(assert (= (and b!2455188 ((_ is Star!7225) (regTwo!14963 r!13927))) b!2455661))

(assert (= (and b!2455188 ((_ is Union!7225) (regTwo!14963 r!13927))) b!2455662))

(declare-fun b!2455663 () Bool)

(declare-fun e!1558137 () Bool)

(assert (=> b!2455663 (= e!1558137 tp_is_empty!11863)))

(declare-fun b!2455665 () Bool)

(declare-fun tp!781022 () Bool)

(assert (=> b!2455665 (= e!1558137 tp!781022)))

(declare-fun b!2455664 () Bool)

(declare-fun tp!781023 () Bool)

(declare-fun tp!781025 () Bool)

(assert (=> b!2455664 (= e!1558137 (and tp!781023 tp!781025))))

(declare-fun b!2455666 () Bool)

(declare-fun tp!781024 () Bool)

(declare-fun tp!781021 () Bool)

(assert (=> b!2455666 (= e!1558137 (and tp!781024 tp!781021))))

(assert (=> b!2455182 (= tp!780936 e!1558137)))

(assert (= (and b!2455182 ((_ is ElementMatch!7225) (reg!7554 r!13927))) b!2455663))

(assert (= (and b!2455182 ((_ is Concat!11861) (reg!7554 r!13927))) b!2455664))

(assert (= (and b!2455182 ((_ is Star!7225) (reg!7554 r!13927))) b!2455665))

(assert (= (and b!2455182 ((_ is Union!7225) (reg!7554 r!13927))) b!2455666))

(declare-fun b!2455667 () Bool)

(declare-fun e!1558138 () Bool)

(assert (=> b!2455667 (= e!1558138 tp_is_empty!11863)))

(declare-fun b!2455669 () Bool)

(declare-fun tp!781027 () Bool)

(assert (=> b!2455669 (= e!1558138 tp!781027)))

(declare-fun b!2455668 () Bool)

(declare-fun tp!781028 () Bool)

(declare-fun tp!781030 () Bool)

(assert (=> b!2455668 (= e!1558138 (and tp!781028 tp!781030))))

(declare-fun b!2455670 () Bool)

(declare-fun tp!781029 () Bool)

(declare-fun tp!781026 () Bool)

(assert (=> b!2455670 (= e!1558138 (and tp!781029 tp!781026))))

(assert (=> b!2455175 (= tp!780934 e!1558138)))

(assert (= (and b!2455175 ((_ is ElementMatch!7225) (h!33989 l!9164))) b!2455667))

(assert (= (and b!2455175 ((_ is Concat!11861) (h!33989 l!9164))) b!2455668))

(assert (= (and b!2455175 ((_ is Star!7225) (h!33989 l!9164))) b!2455669))

(assert (= (and b!2455175 ((_ is Union!7225) (h!33989 l!9164))) b!2455670))

(declare-fun b!2455675 () Bool)

(declare-fun e!1558141 () Bool)

(declare-fun tp!781035 () Bool)

(declare-fun tp!781036 () Bool)

(assert (=> b!2455675 (= e!1558141 (and tp!781035 tp!781036))))

(assert (=> b!2455175 (= tp!780938 e!1558141)))

(assert (= (and b!2455175 ((_ is Cons!28588) (t!208663 l!9164))) b!2455675))

(declare-fun b!2455680 () Bool)

(declare-fun e!1558144 () Bool)

(declare-fun tp!781039 () Bool)

(assert (=> b!2455680 (= e!1558144 (and tp_is_empty!11863 tp!781039))))

(assert (=> b!2455185 (= tp!780937 e!1558144)))

(assert (= (and b!2455185 ((_ is Cons!28589) (t!208664 s!9460))) b!2455680))

(declare-fun b_lambda!75157 () Bool)

(assert (= b_lambda!75155 (or start!239606 b_lambda!75157)))

(declare-fun bs!465871 () Bool)

(declare-fun d!707285 () Bool)

(assert (= bs!465871 (and d!707285 start!239606)))

(assert (=> bs!465871 (= (dynLambda!12274 lambda!93015 (h!33989 l!9164)) (validRegex!2917 (h!33989 l!9164)))))

(declare-fun m!2827009 () Bool)

(assert (=> bs!465871 m!2827009))

(assert (=> b!2455625 d!707285))

(check-sat (not b!2455648) (not bm!150809) (not b!2455558) (not b!2455629) (not b!2455658) (not b!2455327) (not d!707263) tp_is_empty!11863 (not b!2455626) (not b!2455650) (not b!2455516) (not b!2455541) (not b!2455517) (not bm!150818) (not d!707253) (not b!2455680) (not b!2455512) (not b!2455660) (not b!2455510) (not bm!150823) (not b!2455612) (not b!2455653) (not b!2455321) (not b!2455675) (not d!707265) (not b!2455319) (not d!707261) (not b!2455657) (not b!2455618) (not b!2455599) (not b!2455546) (not b!2455649) (not b!2455664) (not d!707219) (not b!2455544) (not b!2455540) (not d!707269) (not b!2455656) (not b!2455661) (not b!2455396) (not b!2455543) (not b!2455668) (not b!2455325) (not b!2455628) (not b!2455632) (not d!707249) (not b!2455545) (not b!2455634) (not b!2455518) (not b!2455316) (not b!2455555) (not b!2455636) (not d!707275) (not bm!150824) (not b!2455630) (not b!2455607) (not b!2455594) (not b!2455662) (not d!707281) (not b!2455619) (not b!2455652) (not b!2455635) (not b!2455511) (not b!2455616) (not b!2455666) (not b!2455328) (not b!2455549) (not b!2455670) (not b!2455538) (not b!2455395) (not b!2455557) (not b!2455551) (not b!2455610) (not bs!465871) (not b!2455669) (not b!2455514) (not bm!150825) (not b!2455654) (not b_lambda!75157) (not b!2455665) (not d!707235))
(check-sat)
(get-model)

(declare-fun b!2456120 () Bool)

(declare-fun e!1558368 () Bool)

(assert (=> b!2456120 (= e!1558368 (nullable!2218 (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(declare-fun bm!150881 () Bool)

(declare-fun call!150886 () Bool)

(assert (=> bm!150881 (= call!150886 (isEmpty!16618 (tail!3880 s!9460)))))

(declare-fun b!2456121 () Bool)

(declare-fun e!1558366 () Bool)

(declare-fun lt!880332 () Bool)

(assert (=> b!2456121 (= e!1558366 (= lt!880332 call!150886))))

(declare-fun b!2456122 () Bool)

(declare-fun e!1558363 () Bool)

(assert (=> b!2456122 (= e!1558363 (not lt!880332))))

(declare-fun b!2456123 () Bool)

(declare-fun e!1558364 () Bool)

(assert (=> b!2456123 (= e!1558364 (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))))

(declare-fun b!2456124 () Bool)

(declare-fun e!1558367 () Bool)

(declare-fun e!1558369 () Bool)

(assert (=> b!2456124 (= e!1558367 e!1558369)))

(declare-fun res!1041450 () Bool)

(assert (=> b!2456124 (=> (not res!1041450) (not e!1558369))))

(assert (=> b!2456124 (= res!1041450 (not lt!880332))))

(declare-fun b!2456125 () Bool)

(assert (=> b!2456125 (= e!1558368 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2456126 () Bool)

(declare-fun res!1041444 () Bool)

(assert (=> b!2456126 (=> (not res!1041444) (not e!1558364))))

(assert (=> b!2456126 (= res!1041444 (not call!150886))))

(declare-fun b!2456127 () Bool)

(assert (=> b!2456127 (= e!1558366 e!1558363)))

(declare-fun c!391997 () Bool)

(assert (=> b!2456127 (= c!391997 ((_ is EmptyLang!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(declare-fun b!2456128 () Bool)

(declare-fun e!1558365 () Bool)

(assert (=> b!2456128 (= e!1558369 e!1558365)))

(declare-fun res!1041445 () Bool)

(assert (=> b!2456128 (=> res!1041445 e!1558365)))

(assert (=> b!2456128 (= res!1041445 call!150886)))

(declare-fun b!2456129 () Bool)

(declare-fun res!1041451 () Bool)

(assert (=> b!2456129 (=> (not res!1041451) (not e!1558364))))

(assert (=> b!2456129 (= res!1041451 (isEmpty!16618 (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2456130 () Bool)

(declare-fun res!1041446 () Bool)

(assert (=> b!2456130 (=> res!1041446 e!1558367)))

(assert (=> b!2456130 (= res!1041446 (not ((_ is ElementMatch!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))))

(assert (=> b!2456130 (= e!1558363 e!1558367)))

(declare-fun d!707417 () Bool)

(assert (=> d!707417 e!1558366))

(declare-fun c!391998 () Bool)

(assert (=> d!707417 (= c!391998 ((_ is EmptyExpr!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(assert (=> d!707417 (= lt!880332 e!1558368)))

(declare-fun c!391996 () Bool)

(assert (=> d!707417 (= c!391996 (isEmpty!16618 (tail!3880 s!9460)))))

(assert (=> d!707417 (validRegex!2917 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))

(assert (=> d!707417 (= (matchR!3340 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (tail!3880 s!9460)) lt!880332)))

(declare-fun b!2456131 () Bool)

(declare-fun res!1041448 () Bool)

(assert (=> b!2456131 (=> res!1041448 e!1558365)))

(assert (=> b!2456131 (= res!1041448 (not (isEmpty!16618 (tail!3880 (tail!3880 s!9460)))))))

(declare-fun b!2456132 () Bool)

(assert (=> b!2456132 (= e!1558365 (not (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))))

(declare-fun b!2456133 () Bool)

(declare-fun res!1041449 () Bool)

(assert (=> b!2456133 (=> res!1041449 e!1558367)))

(assert (=> b!2456133 (= res!1041449 e!1558364)))

(declare-fun res!1041447 () Bool)

(assert (=> b!2456133 (=> (not res!1041447) (not e!1558364))))

(assert (=> b!2456133 (= res!1041447 lt!880332)))

(assert (= (and d!707417 c!391996) b!2456120))

(assert (= (and d!707417 (not c!391996)) b!2456125))

(assert (= (and d!707417 c!391998) b!2456121))

(assert (= (and d!707417 (not c!391998)) b!2456127))

(assert (= (and b!2456127 c!391997) b!2456122))

(assert (= (and b!2456127 (not c!391997)) b!2456130))

(assert (= (and b!2456130 (not res!1041446)) b!2456133))

(assert (= (and b!2456133 res!1041447) b!2456126))

(assert (= (and b!2456126 res!1041444) b!2456129))

(assert (= (and b!2456129 res!1041451) b!2456123))

(assert (= (and b!2456133 (not res!1041449)) b!2456124))

(assert (= (and b!2456124 res!1041450) b!2456128))

(assert (= (and b!2456128 (not res!1041445)) b!2456131))

(assert (= (and b!2456131 (not res!1041448)) b!2456132))

(assert (= (or b!2456121 b!2456126 b!2456128) bm!150881))

(assert (=> b!2456131 m!2826957))

(declare-fun m!2827317 () Bool)

(assert (=> b!2456131 m!2827317))

(assert (=> b!2456131 m!2827317))

(declare-fun m!2827319 () Bool)

(assert (=> b!2456131 m!2827319))

(assert (=> d!707417 m!2826957))

(assert (=> d!707417 m!2826959))

(assert (=> d!707417 m!2826981))

(declare-fun m!2827321 () Bool)

(assert (=> d!707417 m!2827321))

(assert (=> b!2456129 m!2826957))

(assert (=> b!2456129 m!2827317))

(assert (=> b!2456129 m!2827317))

(assert (=> b!2456129 m!2827319))

(assert (=> b!2456125 m!2826957))

(declare-fun m!2827323 () Bool)

(assert (=> b!2456125 m!2827323))

(assert (=> b!2456125 m!2826981))

(assert (=> b!2456125 m!2827323))

(declare-fun m!2827325 () Bool)

(assert (=> b!2456125 m!2827325))

(assert (=> b!2456125 m!2826957))

(assert (=> b!2456125 m!2827317))

(assert (=> b!2456125 m!2827325))

(assert (=> b!2456125 m!2827317))

(declare-fun m!2827327 () Bool)

(assert (=> b!2456125 m!2827327))

(assert (=> b!2456123 m!2826957))

(assert (=> b!2456123 m!2827323))

(assert (=> b!2456120 m!2826981))

(declare-fun m!2827329 () Bool)

(assert (=> b!2456120 m!2827329))

(assert (=> b!2456132 m!2826957))

(assert (=> b!2456132 m!2827323))

(assert (=> bm!150881 m!2826957))

(assert (=> bm!150881 m!2826959))

(assert (=> b!2455612 d!707417))

(declare-fun b!2456154 () Bool)

(declare-fun e!1558381 () Regex!7225)

(declare-fun e!1558380 () Regex!7225)

(assert (=> b!2456154 (= e!1558381 e!1558380)))

(declare-fun c!392009 () Bool)

(assert (=> b!2456154 (= c!392009 ((_ is ElementMatch!7225) lt!880248))))

(declare-fun bm!150890 () Bool)

(declare-fun c!392012 () Bool)

(declare-fun c!392011 () Bool)

(declare-fun call!150898 () Regex!7225)

(declare-fun c!392013 () Bool)

(assert (=> bm!150890 (= call!150898 (derivativeStep!1872 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))) (head!5607 s!9460)))))

(declare-fun b!2456155 () Bool)

(assert (=> b!2456155 (= e!1558380 (ite (= (head!5607 s!9460) (c!391797 lt!880248)) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!150891 () Bool)

(declare-fun call!150896 () Regex!7225)

(assert (=> bm!150891 (= call!150896 call!150898)))

(declare-fun b!2456156 () Bool)

(declare-fun e!1558384 () Regex!7225)

(assert (=> b!2456156 (= e!1558384 (Concat!11861 call!150896 lt!880248))))

(declare-fun e!1558382 () Regex!7225)

(declare-fun b!2456157 () Bool)

(declare-fun call!150895 () Regex!7225)

(declare-fun call!150897 () Regex!7225)

(assert (=> b!2456157 (= e!1558382 (Union!7225 (Concat!11861 call!150897 (regTwo!14962 lt!880248)) call!150895))))

(declare-fun d!707419 () Bool)

(declare-fun lt!880335 () Regex!7225)

(assert (=> d!707419 (validRegex!2917 lt!880335)))

(assert (=> d!707419 (= lt!880335 e!1558381)))

(declare-fun c!392010 () Bool)

(assert (=> d!707419 (= c!392010 (or ((_ is EmptyExpr!7225) lt!880248) ((_ is EmptyLang!7225) lt!880248)))))

(assert (=> d!707419 (validRegex!2917 lt!880248)))

(assert (=> d!707419 (= (derivativeStep!1872 lt!880248 (head!5607 s!9460)) lt!880335)))

(declare-fun bm!150892 () Bool)

(assert (=> bm!150892 (= call!150897 (derivativeStep!1872 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)) (head!5607 s!9460)))))

(declare-fun b!2456158 () Bool)

(assert (=> b!2456158 (= e!1558382 (Union!7225 (Concat!11861 call!150895 (regTwo!14962 lt!880248)) EmptyLang!7225))))

(declare-fun b!2456159 () Bool)

(assert (=> b!2456159 (= e!1558381 EmptyLang!7225)))

(declare-fun b!2456160 () Bool)

(assert (=> b!2456160 (= c!392011 (nullable!2218 (regOne!14962 lt!880248)))))

(assert (=> b!2456160 (= e!1558384 e!1558382)))

(declare-fun bm!150893 () Bool)

(assert (=> bm!150893 (= call!150895 call!150896)))

(declare-fun b!2456161 () Bool)

(declare-fun e!1558383 () Regex!7225)

(assert (=> b!2456161 (= e!1558383 (Union!7225 call!150897 call!150898))))

(declare-fun b!2456162 () Bool)

(assert (=> b!2456162 (= c!392013 ((_ is Union!7225) lt!880248))))

(assert (=> b!2456162 (= e!1558380 e!1558383)))

(declare-fun b!2456163 () Bool)

(assert (=> b!2456163 (= e!1558383 e!1558384)))

(assert (=> b!2456163 (= c!392012 ((_ is Star!7225) lt!880248))))

(assert (= (and d!707419 c!392010) b!2456159))

(assert (= (and d!707419 (not c!392010)) b!2456154))

(assert (= (and b!2456154 c!392009) b!2456155))

(assert (= (and b!2456154 (not c!392009)) b!2456162))

(assert (= (and b!2456162 c!392013) b!2456161))

(assert (= (and b!2456162 (not c!392013)) b!2456163))

(assert (= (and b!2456163 c!392012) b!2456156))

(assert (= (and b!2456163 (not c!392012)) b!2456160))

(assert (= (and b!2456160 c!392011) b!2456157))

(assert (= (and b!2456160 (not c!392011)) b!2456158))

(assert (= (or b!2456157 b!2456158) bm!150893))

(assert (= (or b!2456156 bm!150893) bm!150891))

(assert (= (or b!2456161 b!2456157) bm!150892))

(assert (= (or b!2456161 bm!150891) bm!150890))

(assert (=> bm!150890 m!2826965))

(declare-fun m!2827331 () Bool)

(assert (=> bm!150890 m!2827331))

(declare-fun m!2827333 () Bool)

(assert (=> d!707419 m!2827333))

(assert (=> d!707419 m!2826907))

(assert (=> bm!150892 m!2826965))

(declare-fun m!2827335 () Bool)

(assert (=> bm!150892 m!2827335))

(declare-fun m!2827337 () Bool)

(assert (=> b!2456160 m!2827337))

(assert (=> b!2455612 d!707419))

(declare-fun d!707421 () Bool)

(assert (=> d!707421 (= (head!5607 s!9460) (h!33990 s!9460))))

(assert (=> b!2455612 d!707421))

(declare-fun d!707423 () Bool)

(assert (=> d!707423 (= (tail!3880 s!9460) (t!208664 s!9460))))

(assert (=> b!2455612 d!707423))

(declare-fun d!707425 () Bool)

(declare-fun c!392016 () Bool)

(assert (=> d!707425 (= c!392016 ((_ is Nil!28589) lt!880278))))

(declare-fun e!1558387 () (InoxSet C!14608))

(assert (=> d!707425 (= (content!3938 lt!880278) e!1558387)))

(declare-fun b!2456168 () Bool)

(assert (=> b!2456168 (= e!1558387 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2456169 () Bool)

(assert (=> b!2456169 (= e!1558387 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 lt!880278) true) (content!3938 (t!208664 lt!880278))))))

(assert (= (and d!707425 c!392016) b!2456168))

(assert (= (and d!707425 (not c!392016)) b!2456169))

(declare-fun m!2827339 () Bool)

(assert (=> b!2456169 m!2827339))

(declare-fun m!2827341 () Bool)

(assert (=> b!2456169 m!2827341))

(assert (=> d!707235 d!707425))

(declare-fun d!707427 () Bool)

(declare-fun c!392017 () Bool)

(assert (=> d!707427 (= c!392017 ((_ is Nil!28589) (_1!16630 lt!880243)))))

(declare-fun e!1558388 () (InoxSet C!14608))

(assert (=> d!707427 (= (content!3938 (_1!16630 lt!880243)) e!1558388)))

(declare-fun b!2456170 () Bool)

(assert (=> b!2456170 (= e!1558388 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2456171 () Bool)

(assert (=> b!2456171 (= e!1558388 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (_1!16630 lt!880243)) true) (content!3938 (t!208664 (_1!16630 lt!880243)))))))

(assert (= (and d!707427 c!392017) b!2456170))

(assert (= (and d!707427 (not c!392017)) b!2456171))

(declare-fun m!2827343 () Bool)

(assert (=> b!2456171 m!2827343))

(declare-fun m!2827345 () Bool)

(assert (=> b!2456171 m!2827345))

(assert (=> d!707235 d!707427))

(declare-fun d!707429 () Bool)

(declare-fun c!392018 () Bool)

(assert (=> d!707429 (= c!392018 ((_ is Nil!28589) (_2!16630 lt!880243)))))

(declare-fun e!1558389 () (InoxSet C!14608))

(assert (=> d!707429 (= (content!3938 (_2!16630 lt!880243)) e!1558389)))

(declare-fun b!2456172 () Bool)

(assert (=> b!2456172 (= e!1558389 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2456173 () Bool)

(assert (=> b!2456173 (= e!1558389 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (_2!16630 lt!880243)) true) (content!3938 (t!208664 (_2!16630 lt!880243)))))))

(assert (= (and d!707429 c!392018) b!2456172))

(assert (= (and d!707429 (not c!392018)) b!2456173))

(declare-fun m!2827347 () Bool)

(assert (=> b!2456173 m!2827347))

(declare-fun m!2827349 () Bool)

(assert (=> b!2456173 m!2827349))

(assert (=> d!707235 d!707429))

(declare-fun d!707431 () Bool)

(assert (=> d!707431 (= (isEmpty!16619 lt!880244) (not ((_ is Some!5699) lt!880244)))))

(assert (=> d!707261 d!707431))

(declare-fun d!707433 () Bool)

(assert (=> d!707433 (= (isEmpty!16618 (tail!3880 s!9460)) ((_ is Nil!28589) (tail!3880 s!9460)))))

(assert (=> b!2455555 d!707433))

(assert (=> b!2455555 d!707423))

(assert (=> b!2455610 d!707421))

(declare-fun d!707435 () Bool)

(declare-fun choose!14548 (Int) Bool)

(assert (=> d!707435 (= (Exists!1244 (ite c!391891 lambda!93033 lambda!93034)) (choose!14548 (ite c!391891 lambda!93033 lambda!93034)))))

(declare-fun bs!465904 () Bool)

(assert (= bs!465904 d!707435))

(declare-fun m!2827351 () Bool)

(assert (=> bs!465904 m!2827351))

(assert (=> bm!150823 d!707435))

(assert (=> b!2455511 d!707277))

(assert (=> b!2455618 d!707433))

(assert (=> b!2455618 d!707423))

(declare-fun b!2456177 () Bool)

(declare-fun e!1558391 () Bool)

(declare-fun lt!880336 () List!28687)

(assert (=> b!2456177 (= e!1558391 (or (not (= (t!208664 s!9460) Nil!28589)) (= lt!880336 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(declare-fun b!2456174 () Bool)

(declare-fun e!1558390 () List!28687)

(assert (=> b!2456174 (= e!1558390 (t!208664 s!9460))))

(declare-fun b!2456176 () Bool)

(declare-fun res!1041452 () Bool)

(assert (=> b!2456176 (=> (not res!1041452) (not e!1558391))))

(assert (=> b!2456176 (= res!1041452 (= (size!22276 lt!880336) (+ (size!22276 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (size!22276 (t!208664 s!9460)))))))

(declare-fun b!2456175 () Bool)

(assert (=> b!2456175 (= e!1558390 (Cons!28589 (h!33990 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (++!7113 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (t!208664 s!9460))))))

(declare-fun d!707437 () Bool)

(assert (=> d!707437 e!1558391))

(declare-fun res!1041453 () Bool)

(assert (=> d!707437 (=> (not res!1041453) (not e!1558391))))

(assert (=> d!707437 (= res!1041453 (= (content!3938 lt!880336) ((_ map or) (content!3938 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (content!3938 (t!208664 s!9460)))))))

(assert (=> d!707437 (= lt!880336 e!1558390)))

(declare-fun c!392019 () Bool)

(assert (=> d!707437 (= c!392019 ((_ is Nil!28589) (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(assert (=> d!707437 (= (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (t!208664 s!9460)) lt!880336)))

(assert (= (and d!707437 c!392019) b!2456174))

(assert (= (and d!707437 (not c!392019)) b!2456175))

(assert (= (and d!707437 res!1041453) b!2456176))

(assert (= (and b!2456176 res!1041452) b!2456177))

(declare-fun m!2827353 () Bool)

(assert (=> b!2456176 m!2827353))

(assert (=> b!2456176 m!2826947))

(declare-fun m!2827355 () Bool)

(assert (=> b!2456176 m!2827355))

(declare-fun m!2827357 () Bool)

(assert (=> b!2456176 m!2827357))

(declare-fun m!2827359 () Bool)

(assert (=> b!2456175 m!2827359))

(declare-fun m!2827361 () Bool)

(assert (=> d!707437 m!2827361))

(assert (=> d!707437 m!2826947))

(declare-fun m!2827363 () Bool)

(assert (=> d!707437 m!2827363))

(declare-fun m!2827365 () Bool)

(assert (=> d!707437 m!2827365))

(assert (=> b!2455541 d!707437))

(declare-fun b!2456181 () Bool)

(declare-fun e!1558393 () Bool)

(declare-fun lt!880337 () List!28687)

(assert (=> b!2456181 (= e!1558393 (or (not (= (Cons!28589 (h!33990 s!9460) Nil!28589) Nil!28589)) (= lt!880337 Nil!28589)))))

(declare-fun b!2456178 () Bool)

(declare-fun e!1558392 () List!28687)

(assert (=> b!2456178 (= e!1558392 (Cons!28589 (h!33990 s!9460) Nil!28589))))

(declare-fun b!2456180 () Bool)

(declare-fun res!1041454 () Bool)

(assert (=> b!2456180 (=> (not res!1041454) (not e!1558393))))

(assert (=> b!2456180 (= res!1041454 (= (size!22276 lt!880337) (+ (size!22276 Nil!28589) (size!22276 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(declare-fun b!2456179 () Bool)

(assert (=> b!2456179 (= e!1558392 (Cons!28589 (h!33990 Nil!28589) (++!7113 (t!208664 Nil!28589) (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(declare-fun d!707439 () Bool)

(assert (=> d!707439 e!1558393))

(declare-fun res!1041455 () Bool)

(assert (=> d!707439 (=> (not res!1041455) (not e!1558393))))

(assert (=> d!707439 (= res!1041455 (= (content!3938 lt!880337) ((_ map or) (content!3938 Nil!28589) (content!3938 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(assert (=> d!707439 (= lt!880337 e!1558392)))

(declare-fun c!392020 () Bool)

(assert (=> d!707439 (= c!392020 ((_ is Nil!28589) Nil!28589))))

(assert (=> d!707439 (= (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) lt!880337)))

(assert (= (and d!707439 c!392020) b!2456178))

(assert (= (and d!707439 (not c!392020)) b!2456179))

(assert (= (and d!707439 res!1041455) b!2456180))

(assert (= (and b!2456180 res!1041454) b!2456181))

(declare-fun m!2827367 () Bool)

(assert (=> b!2456180 m!2827367))

(declare-fun m!2827369 () Bool)

(assert (=> b!2456180 m!2827369))

(declare-fun m!2827371 () Bool)

(assert (=> b!2456180 m!2827371))

(declare-fun m!2827373 () Bool)

(assert (=> b!2456179 m!2827373))

(declare-fun m!2827375 () Bool)

(assert (=> d!707439 m!2827375))

(declare-fun m!2827377 () Bool)

(assert (=> d!707439 m!2827377))

(declare-fun m!2827379 () Bool)

(assert (=> d!707439 m!2827379))

(assert (=> b!2455541 d!707439))

(declare-fun d!707441 () Bool)

(assert (=> d!707441 (= (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (t!208664 s!9460)) s!9460)))

(declare-fun lt!880340 () Unit!41905)

(declare-fun choose!14549 (List!28687 C!14608 List!28687 List!28687) Unit!41905)

(assert (=> d!707441 (= lt!880340 (choose!14549 Nil!28589 (h!33990 s!9460) (t!208664 s!9460) s!9460))))

(assert (=> d!707441 (= (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) (t!208664 s!9460))) s!9460)))

(assert (=> d!707441 (= (lemmaMoveElementToOtherListKeepsConcatEq!712 Nil!28589 (h!33990 s!9460) (t!208664 s!9460) s!9460) lt!880340)))

(declare-fun bs!465905 () Bool)

(assert (= bs!465905 d!707441))

(assert (=> bs!465905 m!2826947))

(assert (=> bs!465905 m!2826947))

(assert (=> bs!465905 m!2826949))

(declare-fun m!2827381 () Bool)

(assert (=> bs!465905 m!2827381))

(declare-fun m!2827383 () Bool)

(assert (=> bs!465905 m!2827383))

(assert (=> b!2455541 d!707441))

(declare-fun b!2456182 () Bool)

(declare-fun e!1558394 () Option!5700)

(assert (=> b!2456182 (= e!1558394 (Some!5699 (tuple2!28179 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (t!208664 s!9460))))))

(declare-fun b!2456183 () Bool)

(declare-fun e!1558398 () Bool)

(assert (=> b!2456183 (= e!1558398 (matchR!3340 EmptyExpr!7225 (t!208664 s!9460)))))

(declare-fun b!2456184 () Bool)

(declare-fun e!1558395 () Option!5700)

(assert (=> b!2456184 (= e!1558395 None!5699)))

(declare-fun b!2456186 () Bool)

(declare-fun lt!880342 () Unit!41905)

(declare-fun lt!880341 () Unit!41905)

(assert (=> b!2456186 (= lt!880342 lt!880341)))

(assert (=> b!2456186 (= (++!7113 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (t!208664 (t!208664 s!9460))) s!9460)))

(assert (=> b!2456186 (= lt!880341 (lemmaMoveElementToOtherListKeepsConcatEq!712 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (h!33990 (t!208664 s!9460)) (t!208664 (t!208664 s!9460)) s!9460))))

(assert (=> b!2456186 (= e!1558395 (findConcatSeparation!808 lt!880248 EmptyExpr!7225 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (t!208664 (t!208664 s!9460)) s!9460))))

(declare-fun b!2456187 () Bool)

(assert (=> b!2456187 (= e!1558394 e!1558395)))

(declare-fun c!392021 () Bool)

(assert (=> b!2456187 (= c!392021 ((_ is Nil!28589) (t!208664 s!9460)))))

(declare-fun b!2456188 () Bool)

(declare-fun res!1041459 () Bool)

(declare-fun e!1558397 () Bool)

(assert (=> b!2456188 (=> (not res!1041459) (not e!1558397))))

(declare-fun lt!880343 () Option!5700)

(assert (=> b!2456188 (= res!1041459 (matchR!3340 lt!880248 (_1!16630 (get!8844 lt!880343))))))

(declare-fun d!707443 () Bool)

(declare-fun e!1558396 () Bool)

(assert (=> d!707443 e!1558396))

(declare-fun res!1041457 () Bool)

(assert (=> d!707443 (=> res!1041457 e!1558396)))

(assert (=> d!707443 (= res!1041457 e!1558397)))

(declare-fun res!1041456 () Bool)

(assert (=> d!707443 (=> (not res!1041456) (not e!1558397))))

(assert (=> d!707443 (= res!1041456 (isDefined!4526 lt!880343))))

(assert (=> d!707443 (= lt!880343 e!1558394)))

(declare-fun c!392022 () Bool)

(assert (=> d!707443 (= c!392022 e!1558398)))

(declare-fun res!1041460 () Bool)

(assert (=> d!707443 (=> (not res!1041460) (not e!1558398))))

(assert (=> d!707443 (= res!1041460 (matchR!3340 lt!880248 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(assert (=> d!707443 (validRegex!2917 lt!880248)))

(assert (=> d!707443 (= (findConcatSeparation!808 lt!880248 EmptyExpr!7225 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (t!208664 s!9460) s!9460) lt!880343)))

(declare-fun b!2456185 () Bool)

(assert (=> b!2456185 (= e!1558396 (not (isDefined!4526 lt!880343)))))

(declare-fun b!2456189 () Bool)

(assert (=> b!2456189 (= e!1558397 (= (++!7113 (_1!16630 (get!8844 lt!880343)) (_2!16630 (get!8844 lt!880343))) s!9460))))

(declare-fun b!2456190 () Bool)

(declare-fun res!1041458 () Bool)

(assert (=> b!2456190 (=> (not res!1041458) (not e!1558397))))

(assert (=> b!2456190 (= res!1041458 (matchR!3340 EmptyExpr!7225 (_2!16630 (get!8844 lt!880343))))))

(assert (= (and d!707443 res!1041460) b!2456183))

(assert (= (and d!707443 c!392022) b!2456182))

(assert (= (and d!707443 (not c!392022)) b!2456187))

(assert (= (and b!2456187 c!392021) b!2456184))

(assert (= (and b!2456187 (not c!392021)) b!2456186))

(assert (= (and d!707443 res!1041456) b!2456188))

(assert (= (and b!2456188 res!1041459) b!2456190))

(assert (= (and b!2456190 res!1041458) b!2456189))

(assert (= (and d!707443 (not res!1041457)) b!2456185))

(declare-fun m!2827385 () Bool)

(assert (=> b!2456185 m!2827385))

(declare-fun m!2827387 () Bool)

(assert (=> b!2456183 m!2827387))

(declare-fun m!2827389 () Bool)

(assert (=> b!2456188 m!2827389))

(declare-fun m!2827391 () Bool)

(assert (=> b!2456188 m!2827391))

(assert (=> d!707443 m!2827385))

(assert (=> d!707443 m!2826947))

(declare-fun m!2827393 () Bool)

(assert (=> d!707443 m!2827393))

(assert (=> d!707443 m!2826907))

(assert (=> b!2456189 m!2827389))

(declare-fun m!2827395 () Bool)

(assert (=> b!2456189 m!2827395))

(assert (=> b!2456186 m!2826947))

(declare-fun m!2827397 () Bool)

(assert (=> b!2456186 m!2827397))

(assert (=> b!2456186 m!2827397))

(declare-fun m!2827399 () Bool)

(assert (=> b!2456186 m!2827399))

(assert (=> b!2456186 m!2826947))

(declare-fun m!2827401 () Bool)

(assert (=> b!2456186 m!2827401))

(assert (=> b!2456186 m!2827397))

(declare-fun m!2827403 () Bool)

(assert (=> b!2456186 m!2827403))

(assert (=> b!2456190 m!2827389))

(declare-fun m!2827405 () Bool)

(assert (=> b!2456190 m!2827405))

(assert (=> b!2455541 d!707443))

(assert (=> b!2455616 d!707433))

(assert (=> b!2455616 d!707423))

(declare-fun d!707445 () Bool)

(assert (=> d!707445 (= (isConcat!237 lt!880302) ((_ is Concat!11861) lt!880302))))

(assert (=> b!2455630 d!707445))

(declare-fun d!707447 () Bool)

(assert (=> d!707447 (= (isEmpty!16618 s!9460) ((_ is Nil!28589) s!9460))))

(assert (=> bm!150824 d!707447))

(assert (=> b!2455628 d!707271))

(declare-fun bs!465906 () Bool)

(declare-fun d!707449 () Bool)

(assert (= bs!465906 (and d!707449 start!239606)))

(declare-fun lambda!93042 () Int)

(assert (=> bs!465906 (= lambda!93042 lambda!93015)))

(declare-fun bs!465907 () Bool)

(assert (= bs!465907 (and d!707449 d!707253)))

(assert (=> bs!465907 (= lambda!93042 lambda!93028)))

(declare-fun bs!465908 () Bool)

(assert (= bs!465908 (and d!707449 d!707281)))

(assert (=> bs!465908 (= lambda!93042 lambda!93035)))

(declare-fun b!2456191 () Bool)

(declare-fun e!1558400 () Regex!7225)

(assert (=> b!2456191 (= e!1558400 EmptyExpr!7225)))

(declare-fun b!2456192 () Bool)

(declare-fun e!1558404 () Bool)

(declare-fun e!1558401 () Bool)

(assert (=> b!2456192 (= e!1558404 e!1558401)))

(declare-fun c!392023 () Bool)

(assert (=> b!2456192 (= c!392023 (isEmpty!16615 (t!208663 l!9164)))))

(declare-fun b!2456193 () Bool)

(declare-fun e!1558402 () Bool)

(declare-fun lt!880344 () Regex!7225)

(assert (=> b!2456193 (= e!1558402 (= lt!880344 (head!5605 (t!208663 l!9164))))))

(declare-fun b!2456194 () Bool)

(assert (=> b!2456194 (= e!1558402 (isConcat!237 lt!880344))))

(assert (=> d!707449 e!1558404))

(declare-fun res!1041462 () Bool)

(assert (=> d!707449 (=> (not res!1041462) (not e!1558404))))

(assert (=> d!707449 (= res!1041462 (validRegex!2917 lt!880344))))

(declare-fun e!1558403 () Regex!7225)

(assert (=> d!707449 (= lt!880344 e!1558403)))

(declare-fun c!392026 () Bool)

(declare-fun e!1558399 () Bool)

(assert (=> d!707449 (= c!392026 e!1558399)))

(declare-fun res!1041461 () Bool)

(assert (=> d!707449 (=> (not res!1041461) (not e!1558399))))

(assert (=> d!707449 (= res!1041461 ((_ is Cons!28588) (t!208663 l!9164)))))

(assert (=> d!707449 (forall!5859 (t!208663 l!9164) lambda!93042)))

(assert (=> d!707449 (= (generalisedConcat!326 (t!208663 l!9164)) lt!880344)))

(declare-fun b!2456195 () Bool)

(assert (=> b!2456195 (= e!1558403 e!1558400)))

(declare-fun c!392024 () Bool)

(assert (=> b!2456195 (= c!392024 ((_ is Cons!28588) (t!208663 l!9164)))))

(declare-fun b!2456196 () Bool)

(assert (=> b!2456196 (= e!1558399 (isEmpty!16615 (t!208663 (t!208663 l!9164))))))

(declare-fun b!2456197 () Bool)

(assert (=> b!2456197 (= e!1558403 (h!33989 (t!208663 l!9164)))))

(declare-fun b!2456198 () Bool)

(assert (=> b!2456198 (= e!1558401 e!1558402)))

(declare-fun c!392025 () Bool)

(assert (=> b!2456198 (= c!392025 (isEmpty!16615 (tail!3878 (t!208663 l!9164))))))

(declare-fun b!2456199 () Bool)

(assert (=> b!2456199 (= e!1558400 (Concat!11861 (h!33989 (t!208663 l!9164)) (generalisedConcat!326 (t!208663 (t!208663 l!9164)))))))

(declare-fun b!2456200 () Bool)

(assert (=> b!2456200 (= e!1558401 (isEmptyExpr!237 lt!880344))))

(assert (= (and d!707449 res!1041461) b!2456196))

(assert (= (and d!707449 c!392026) b!2456197))

(assert (= (and d!707449 (not c!392026)) b!2456195))

(assert (= (and b!2456195 c!392024) b!2456199))

(assert (= (and b!2456195 (not c!392024)) b!2456191))

(assert (= (and d!707449 res!1041462) b!2456192))

(assert (= (and b!2456192 c!392023) b!2456200))

(assert (= (and b!2456192 (not c!392023)) b!2456198))

(assert (= (and b!2456198 c!392025) b!2456193))

(assert (= (and b!2456198 (not c!392025)) b!2456194))

(assert (=> b!2456192 m!2826923))

(declare-fun m!2827407 () Bool)

(assert (=> b!2456193 m!2827407))

(declare-fun m!2827409 () Bool)

(assert (=> b!2456199 m!2827409))

(declare-fun m!2827411 () Bool)

(assert (=> b!2456194 m!2827411))

(declare-fun m!2827413 () Bool)

(assert (=> b!2456196 m!2827413))

(declare-fun m!2827415 () Bool)

(assert (=> b!2456200 m!2827415))

(declare-fun m!2827417 () Bool)

(assert (=> b!2456198 m!2827417))

(assert (=> b!2456198 m!2827417))

(declare-fun m!2827419 () Bool)

(assert (=> b!2456198 m!2827419))

(declare-fun m!2827421 () Bool)

(assert (=> d!707449 m!2827421))

(declare-fun m!2827423 () Bool)

(assert (=> d!707449 m!2827423))

(assert (=> b!2455517 d!707449))

(declare-fun d!707451 () Bool)

(declare-fun res!1041463 () Bool)

(declare-fun e!1558405 () Bool)

(assert (=> d!707451 (=> res!1041463 e!1558405)))

(assert (=> d!707451 (= res!1041463 ((_ is Nil!28588) (t!208663 l!9164)))))

(assert (=> d!707451 (= (forall!5859 (t!208663 l!9164) lambda!93015) e!1558405)))

(declare-fun b!2456201 () Bool)

(declare-fun e!1558406 () Bool)

(assert (=> b!2456201 (= e!1558405 e!1558406)))

(declare-fun res!1041464 () Bool)

(assert (=> b!2456201 (=> (not res!1041464) (not e!1558406))))

(assert (=> b!2456201 (= res!1041464 (dynLambda!12274 lambda!93015 (h!33989 (t!208663 l!9164))))))

(declare-fun b!2456202 () Bool)

(assert (=> b!2456202 (= e!1558406 (forall!5859 (t!208663 (t!208663 l!9164)) lambda!93015))))

(assert (= (and d!707451 (not res!1041463)) b!2456201))

(assert (= (and b!2456201 res!1041464) b!2456202))

(declare-fun b_lambda!75171 () Bool)

(assert (=> (not b_lambda!75171) (not b!2456201)))

(declare-fun m!2827425 () Bool)

(assert (=> b!2456201 m!2827425))

(declare-fun m!2827427 () Bool)

(assert (=> b!2456202 m!2827427))

(assert (=> b!2455626 d!707451))

(assert (=> b!2455557 d!707433))

(assert (=> b!2455557 d!707423))

(declare-fun d!707453 () Bool)

(assert (=> d!707453 (= (isEmpty!16618 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) ((_ is Nil!28589) (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))

(assert (=> bm!150809 d!707453))

(declare-fun d!707455 () Bool)

(assert (=> d!707455 (= (isEmptyExpr!237 lt!880302) ((_ is EmptyExpr!7225) lt!880302))))

(assert (=> b!2455636 d!707455))

(declare-fun bm!150900 () Bool)

(declare-fun call!150905 () Bool)

(declare-fun c!392032 () Bool)

(assert (=> bm!150900 (= call!150905 (validRegex!2917 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))))))

(declare-fun b!2456221 () Bool)

(declare-fun res!1041479 () Bool)

(declare-fun e!1558427 () Bool)

(assert (=> b!2456221 (=> (not res!1041479) (not e!1558427))))

(declare-fun call!150906 () Bool)

(assert (=> b!2456221 (= res!1041479 call!150906)))

(declare-fun e!1558421 () Bool)

(assert (=> b!2456221 (= e!1558421 e!1558427)))

(declare-fun b!2456222 () Bool)

(declare-fun e!1558424 () Bool)

(declare-fun call!150907 () Bool)

(assert (=> b!2456222 (= e!1558424 call!150907)))

(declare-fun bm!150901 () Bool)

(assert (=> bm!150901 (= call!150906 call!150907)))

(declare-fun b!2456223 () Bool)

(declare-fun e!1558423 () Bool)

(assert (=> b!2456223 (= e!1558423 e!1558424)))

(declare-fun res!1041475 () Bool)

(assert (=> b!2456223 (= res!1041475 (not (nullable!2218 (reg!7554 lt!880302))))))

(assert (=> b!2456223 (=> (not res!1041475) (not e!1558424))))

(declare-fun b!2456224 () Bool)

(declare-fun res!1041477 () Bool)

(declare-fun e!1558426 () Bool)

(assert (=> b!2456224 (=> res!1041477 e!1558426)))

(assert (=> b!2456224 (= res!1041477 (not ((_ is Concat!11861) lt!880302)))))

(assert (=> b!2456224 (= e!1558421 e!1558426)))

(declare-fun b!2456225 () Bool)

(declare-fun e!1558425 () Bool)

(assert (=> b!2456225 (= e!1558426 e!1558425)))

(declare-fun res!1041476 () Bool)

(assert (=> b!2456225 (=> (not res!1041476) (not e!1558425))))

(assert (=> b!2456225 (= res!1041476 call!150905)))

(declare-fun bm!150902 () Bool)

(declare-fun c!392031 () Bool)

(assert (=> bm!150902 (= call!150907 (validRegex!2917 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))))))

(declare-fun b!2456227 () Bool)

(assert (=> b!2456227 (= e!1558425 call!150906)))

(declare-fun b!2456228 () Bool)

(assert (=> b!2456228 (= e!1558423 e!1558421)))

(assert (=> b!2456228 (= c!392032 ((_ is Union!7225) lt!880302))))

(declare-fun b!2456229 () Bool)

(declare-fun e!1558422 () Bool)

(assert (=> b!2456229 (= e!1558422 e!1558423)))

(assert (=> b!2456229 (= c!392031 ((_ is Star!7225) lt!880302))))

(declare-fun b!2456226 () Bool)

(assert (=> b!2456226 (= e!1558427 call!150905)))

(declare-fun d!707457 () Bool)

(declare-fun res!1041478 () Bool)

(assert (=> d!707457 (=> res!1041478 e!1558422)))

(assert (=> d!707457 (= res!1041478 ((_ is ElementMatch!7225) lt!880302))))

(assert (=> d!707457 (= (validRegex!2917 lt!880302) e!1558422)))

(assert (= (and d!707457 (not res!1041478)) b!2456229))

(assert (= (and b!2456229 c!392031) b!2456223))

(assert (= (and b!2456229 (not c!392031)) b!2456228))

(assert (= (and b!2456223 res!1041475) b!2456222))

(assert (= (and b!2456228 c!392032) b!2456221))

(assert (= (and b!2456228 (not c!392032)) b!2456224))

(assert (= (and b!2456221 res!1041479) b!2456226))

(assert (= (and b!2456224 (not res!1041477)) b!2456225))

(assert (= (and b!2456225 res!1041476) b!2456227))

(assert (= (or b!2456221 b!2456227) bm!150901))

(assert (= (or b!2456226 b!2456225) bm!150900))

(assert (= (or b!2456222 bm!150901) bm!150902))

(declare-fun m!2827429 () Bool)

(assert (=> bm!150900 m!2827429))

(declare-fun m!2827431 () Bool)

(assert (=> b!2456223 m!2827431))

(declare-fun m!2827433 () Bool)

(assert (=> bm!150902 m!2827433))

(assert (=> d!707281 d!707457))

(declare-fun d!707459 () Bool)

(declare-fun res!1041480 () Bool)

(declare-fun e!1558428 () Bool)

(assert (=> d!707459 (=> res!1041480 e!1558428)))

(assert (=> d!707459 (= res!1041480 ((_ is Nil!28588) lt!880247))))

(assert (=> d!707459 (= (forall!5859 lt!880247 lambda!93035) e!1558428)))

(declare-fun b!2456230 () Bool)

(declare-fun e!1558429 () Bool)

(assert (=> b!2456230 (= e!1558428 e!1558429)))

(declare-fun res!1041481 () Bool)

(assert (=> b!2456230 (=> (not res!1041481) (not e!1558429))))

(assert (=> b!2456230 (= res!1041481 (dynLambda!12274 lambda!93035 (h!33989 lt!880247)))))

(declare-fun b!2456231 () Bool)

(assert (=> b!2456231 (= e!1558429 (forall!5859 (t!208663 lt!880247) lambda!93035))))

(assert (= (and d!707459 (not res!1041480)) b!2456230))

(assert (= (and b!2456230 res!1041481) b!2456231))

(declare-fun b_lambda!75173 () Bool)

(assert (=> (not b_lambda!75173) (not b!2456230)))

(declare-fun m!2827435 () Bool)

(assert (=> b!2456230 m!2827435))

(declare-fun m!2827437 () Bool)

(assert (=> b!2456231 m!2827437))

(assert (=> d!707281 d!707459))

(declare-fun b!2456232 () Bool)

(declare-fun e!1558435 () Bool)

(assert (=> b!2456232 (= e!1558435 (nullable!2218 EmptyExpr!7225))))

(declare-fun bm!150903 () Bool)

(declare-fun call!150908 () Bool)

(assert (=> bm!150903 (= call!150908 (isEmpty!16618 (_2!16630 (get!8844 lt!880296))))))

(declare-fun b!2456233 () Bool)

(declare-fun e!1558433 () Bool)

(declare-fun lt!880345 () Bool)

(assert (=> b!2456233 (= e!1558433 (= lt!880345 call!150908))))

(declare-fun b!2456234 () Bool)

(declare-fun e!1558430 () Bool)

(assert (=> b!2456234 (= e!1558430 (not lt!880345))))

(declare-fun b!2456235 () Bool)

(declare-fun e!1558431 () Bool)

(assert (=> b!2456235 (= e!1558431 (= (head!5607 (_2!16630 (get!8844 lt!880296))) (c!391797 EmptyExpr!7225)))))

(declare-fun b!2456236 () Bool)

(declare-fun e!1558434 () Bool)

(declare-fun e!1558436 () Bool)

(assert (=> b!2456236 (= e!1558434 e!1558436)))

(declare-fun res!1041488 () Bool)

(assert (=> b!2456236 (=> (not res!1041488) (not e!1558436))))

(assert (=> b!2456236 (= res!1041488 (not lt!880345))))

(declare-fun b!2456237 () Bool)

(assert (=> b!2456237 (= e!1558435 (matchR!3340 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296)))) (tail!3880 (_2!16630 (get!8844 lt!880296)))))))

(declare-fun b!2456238 () Bool)

(declare-fun res!1041482 () Bool)

(assert (=> b!2456238 (=> (not res!1041482) (not e!1558431))))

(assert (=> b!2456238 (= res!1041482 (not call!150908))))

(declare-fun b!2456239 () Bool)

(assert (=> b!2456239 (= e!1558433 e!1558430)))

(declare-fun c!392034 () Bool)

(assert (=> b!2456239 (= c!392034 ((_ is EmptyLang!7225) EmptyExpr!7225))))

(declare-fun b!2456240 () Bool)

(declare-fun e!1558432 () Bool)

(assert (=> b!2456240 (= e!1558436 e!1558432)))

(declare-fun res!1041483 () Bool)

(assert (=> b!2456240 (=> res!1041483 e!1558432)))

(assert (=> b!2456240 (= res!1041483 call!150908)))

(declare-fun b!2456241 () Bool)

(declare-fun res!1041489 () Bool)

(assert (=> b!2456241 (=> (not res!1041489) (not e!1558431))))

(assert (=> b!2456241 (= res!1041489 (isEmpty!16618 (tail!3880 (_2!16630 (get!8844 lt!880296)))))))

(declare-fun b!2456242 () Bool)

(declare-fun res!1041484 () Bool)

(assert (=> b!2456242 (=> res!1041484 e!1558434)))

(assert (=> b!2456242 (= res!1041484 (not ((_ is ElementMatch!7225) EmptyExpr!7225)))))

(assert (=> b!2456242 (= e!1558430 e!1558434)))

(declare-fun d!707461 () Bool)

(assert (=> d!707461 e!1558433))

(declare-fun c!392035 () Bool)

(assert (=> d!707461 (= c!392035 ((_ is EmptyExpr!7225) EmptyExpr!7225))))

(assert (=> d!707461 (= lt!880345 e!1558435)))

(declare-fun c!392033 () Bool)

(assert (=> d!707461 (= c!392033 (isEmpty!16618 (_2!16630 (get!8844 lt!880296))))))

(assert (=> d!707461 (validRegex!2917 EmptyExpr!7225)))

(assert (=> d!707461 (= (matchR!3340 EmptyExpr!7225 (_2!16630 (get!8844 lt!880296))) lt!880345)))

(declare-fun b!2456243 () Bool)

(declare-fun res!1041486 () Bool)

(assert (=> b!2456243 (=> res!1041486 e!1558432)))

(assert (=> b!2456243 (= res!1041486 (not (isEmpty!16618 (tail!3880 (_2!16630 (get!8844 lt!880296))))))))

(declare-fun b!2456244 () Bool)

(assert (=> b!2456244 (= e!1558432 (not (= (head!5607 (_2!16630 (get!8844 lt!880296))) (c!391797 EmptyExpr!7225))))))

(declare-fun b!2456245 () Bool)

(declare-fun res!1041487 () Bool)

(assert (=> b!2456245 (=> res!1041487 e!1558434)))

(assert (=> b!2456245 (= res!1041487 e!1558431)))

(declare-fun res!1041485 () Bool)

(assert (=> b!2456245 (=> (not res!1041485) (not e!1558431))))

(assert (=> b!2456245 (= res!1041485 lt!880345)))

(assert (= (and d!707461 c!392033) b!2456232))

(assert (= (and d!707461 (not c!392033)) b!2456237))

(assert (= (and d!707461 c!392035) b!2456233))

(assert (= (and d!707461 (not c!392035)) b!2456239))

(assert (= (and b!2456239 c!392034) b!2456234))

(assert (= (and b!2456239 (not c!392034)) b!2456242))

(assert (= (and b!2456242 (not res!1041484)) b!2456245))

(assert (= (and b!2456245 res!1041485) b!2456238))

(assert (= (and b!2456238 res!1041482) b!2456241))

(assert (= (and b!2456241 res!1041489) b!2456235))

(assert (= (and b!2456245 (not res!1041487)) b!2456236))

(assert (= (and b!2456236 res!1041488) b!2456240))

(assert (= (and b!2456240 (not res!1041483)) b!2456243))

(assert (= (and b!2456243 (not res!1041486)) b!2456244))

(assert (= (or b!2456233 b!2456238 b!2456240) bm!150903))

(declare-fun m!2827439 () Bool)

(assert (=> b!2456243 m!2827439))

(assert (=> b!2456243 m!2827439))

(declare-fun m!2827441 () Bool)

(assert (=> b!2456243 m!2827441))

(declare-fun m!2827443 () Bool)

(assert (=> d!707461 m!2827443))

(declare-fun m!2827445 () Bool)

(assert (=> d!707461 m!2827445))

(assert (=> b!2456241 m!2827439))

(assert (=> b!2456241 m!2827439))

(assert (=> b!2456241 m!2827441))

(declare-fun m!2827447 () Bool)

(assert (=> b!2456237 m!2827447))

(assert (=> b!2456237 m!2827447))

(declare-fun m!2827449 () Bool)

(assert (=> b!2456237 m!2827449))

(assert (=> b!2456237 m!2827439))

(assert (=> b!2456237 m!2827449))

(assert (=> b!2456237 m!2827439))

(declare-fun m!2827451 () Bool)

(assert (=> b!2456237 m!2827451))

(assert (=> b!2456235 m!2827447))

(declare-fun m!2827453 () Bool)

(assert (=> b!2456232 m!2827453))

(assert (=> b!2456244 m!2827447))

(assert (=> bm!150903 m!2827443))

(assert (=> b!2455545 d!707461))

(declare-fun d!707463 () Bool)

(assert (=> d!707463 (= (get!8844 lt!880296) (v!31107 lt!880296))))

(assert (=> b!2455545 d!707463))

(declare-fun d!707465 () Bool)

(assert (=> d!707465 (= (isDefined!4526 lt!880296) (not (isEmpty!16619 lt!880296)))))

(declare-fun bs!465909 () Bool)

(assert (= bs!465909 d!707465))

(declare-fun m!2827455 () Bool)

(assert (=> bs!465909 m!2827455))

(assert (=> d!707263 d!707465))

(declare-fun b!2456246 () Bool)

(declare-fun e!1558442 () Bool)

(assert (=> b!2456246 (= e!1558442 (nullable!2218 lt!880248))))

(declare-fun bm!150904 () Bool)

(declare-fun call!150909 () Bool)

(assert (=> bm!150904 (= call!150909 (isEmpty!16618 Nil!28589))))

(declare-fun b!2456247 () Bool)

(declare-fun e!1558440 () Bool)

(declare-fun lt!880346 () Bool)

(assert (=> b!2456247 (= e!1558440 (= lt!880346 call!150909))))

(declare-fun b!2456248 () Bool)

(declare-fun e!1558437 () Bool)

(assert (=> b!2456248 (= e!1558437 (not lt!880346))))

(declare-fun b!2456249 () Bool)

(declare-fun e!1558438 () Bool)

(assert (=> b!2456249 (= e!1558438 (= (head!5607 Nil!28589) (c!391797 lt!880248)))))

(declare-fun b!2456250 () Bool)

(declare-fun e!1558441 () Bool)

(declare-fun e!1558443 () Bool)

(assert (=> b!2456250 (= e!1558441 e!1558443)))

(declare-fun res!1041496 () Bool)

(assert (=> b!2456250 (=> (not res!1041496) (not e!1558443))))

(assert (=> b!2456250 (= res!1041496 (not lt!880346))))

(declare-fun b!2456251 () Bool)

(assert (=> b!2456251 (= e!1558442 (matchR!3340 (derivativeStep!1872 lt!880248 (head!5607 Nil!28589)) (tail!3880 Nil!28589)))))

(declare-fun b!2456252 () Bool)

(declare-fun res!1041490 () Bool)

(assert (=> b!2456252 (=> (not res!1041490) (not e!1558438))))

(assert (=> b!2456252 (= res!1041490 (not call!150909))))

(declare-fun b!2456253 () Bool)

(assert (=> b!2456253 (= e!1558440 e!1558437)))

(declare-fun c!392037 () Bool)

(assert (=> b!2456253 (= c!392037 ((_ is EmptyLang!7225) lt!880248))))

(declare-fun b!2456254 () Bool)

(declare-fun e!1558439 () Bool)

(assert (=> b!2456254 (= e!1558443 e!1558439)))

(declare-fun res!1041491 () Bool)

(assert (=> b!2456254 (=> res!1041491 e!1558439)))

(assert (=> b!2456254 (= res!1041491 call!150909)))

(declare-fun b!2456255 () Bool)

(declare-fun res!1041497 () Bool)

(assert (=> b!2456255 (=> (not res!1041497) (not e!1558438))))

(assert (=> b!2456255 (= res!1041497 (isEmpty!16618 (tail!3880 Nil!28589)))))

(declare-fun b!2456256 () Bool)

(declare-fun res!1041492 () Bool)

(assert (=> b!2456256 (=> res!1041492 e!1558441)))

(assert (=> b!2456256 (= res!1041492 (not ((_ is ElementMatch!7225) lt!880248)))))

(assert (=> b!2456256 (= e!1558437 e!1558441)))

(declare-fun d!707467 () Bool)

(assert (=> d!707467 e!1558440))

(declare-fun c!392038 () Bool)

(assert (=> d!707467 (= c!392038 ((_ is EmptyExpr!7225) lt!880248))))

(assert (=> d!707467 (= lt!880346 e!1558442)))

(declare-fun c!392036 () Bool)

(assert (=> d!707467 (= c!392036 (isEmpty!16618 Nil!28589))))

(assert (=> d!707467 (validRegex!2917 lt!880248)))

(assert (=> d!707467 (= (matchR!3340 lt!880248 Nil!28589) lt!880346)))

(declare-fun b!2456257 () Bool)

(declare-fun res!1041494 () Bool)

(assert (=> b!2456257 (=> res!1041494 e!1558439)))

(assert (=> b!2456257 (= res!1041494 (not (isEmpty!16618 (tail!3880 Nil!28589))))))

(declare-fun b!2456258 () Bool)

(assert (=> b!2456258 (= e!1558439 (not (= (head!5607 Nil!28589) (c!391797 lt!880248))))))

(declare-fun b!2456259 () Bool)

(declare-fun res!1041495 () Bool)

(assert (=> b!2456259 (=> res!1041495 e!1558441)))

(assert (=> b!2456259 (= res!1041495 e!1558438)))

(declare-fun res!1041493 () Bool)

(assert (=> b!2456259 (=> (not res!1041493) (not e!1558438))))

(assert (=> b!2456259 (= res!1041493 lt!880346)))

(assert (= (and d!707467 c!392036) b!2456246))

(assert (= (and d!707467 (not c!392036)) b!2456251))

(assert (= (and d!707467 c!392038) b!2456247))

(assert (= (and d!707467 (not c!392038)) b!2456253))

(assert (= (and b!2456253 c!392037) b!2456248))

(assert (= (and b!2456253 (not c!392037)) b!2456256))

(assert (= (and b!2456256 (not res!1041492)) b!2456259))

(assert (= (and b!2456259 res!1041493) b!2456252))

(assert (= (and b!2456252 res!1041490) b!2456255))

(assert (= (and b!2456255 res!1041497) b!2456249))

(assert (= (and b!2456259 (not res!1041495)) b!2456250))

(assert (= (and b!2456250 res!1041496) b!2456254))

(assert (= (and b!2456254 (not res!1041491)) b!2456257))

(assert (= (and b!2456257 (not res!1041494)) b!2456258))

(assert (= (or b!2456247 b!2456252 b!2456254) bm!150904))

(declare-fun m!2827457 () Bool)

(assert (=> b!2456257 m!2827457))

(assert (=> b!2456257 m!2827457))

(declare-fun m!2827459 () Bool)

(assert (=> b!2456257 m!2827459))

(declare-fun m!2827461 () Bool)

(assert (=> d!707467 m!2827461))

(assert (=> d!707467 m!2826907))

(assert (=> b!2456255 m!2827457))

(assert (=> b!2456255 m!2827457))

(assert (=> b!2456255 m!2827459))

(declare-fun m!2827463 () Bool)

(assert (=> b!2456251 m!2827463))

(assert (=> b!2456251 m!2827463))

(declare-fun m!2827465 () Bool)

(assert (=> b!2456251 m!2827465))

(assert (=> b!2456251 m!2827457))

(assert (=> b!2456251 m!2827465))

(assert (=> b!2456251 m!2827457))

(declare-fun m!2827467 () Bool)

(assert (=> b!2456251 m!2827467))

(assert (=> b!2456249 m!2827463))

(assert (=> b!2456246 m!2826985))

(assert (=> b!2456258 m!2827463))

(assert (=> bm!150904 m!2827461))

(assert (=> d!707263 d!707467))

(declare-fun bm!150905 () Bool)

(declare-fun call!150910 () Bool)

(declare-fun c!392040 () Bool)

(assert (=> bm!150905 (= call!150910 (validRegex!2917 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))))))

(declare-fun b!2456260 () Bool)

(declare-fun res!1041502 () Bool)

(declare-fun e!1558450 () Bool)

(assert (=> b!2456260 (=> (not res!1041502) (not e!1558450))))

(declare-fun call!150911 () Bool)

(assert (=> b!2456260 (= res!1041502 call!150911)))

(declare-fun e!1558444 () Bool)

(assert (=> b!2456260 (= e!1558444 e!1558450)))

(declare-fun b!2456261 () Bool)

(declare-fun e!1558447 () Bool)

(declare-fun call!150912 () Bool)

(assert (=> b!2456261 (= e!1558447 call!150912)))

(declare-fun bm!150906 () Bool)

(assert (=> bm!150906 (= call!150911 call!150912)))

(declare-fun b!2456262 () Bool)

(declare-fun e!1558446 () Bool)

(assert (=> b!2456262 (= e!1558446 e!1558447)))

(declare-fun res!1041498 () Bool)

(assert (=> b!2456262 (= res!1041498 (not (nullable!2218 (reg!7554 lt!880248))))))

(assert (=> b!2456262 (=> (not res!1041498) (not e!1558447))))

(declare-fun b!2456263 () Bool)

(declare-fun res!1041500 () Bool)

(declare-fun e!1558449 () Bool)

(assert (=> b!2456263 (=> res!1041500 e!1558449)))

(assert (=> b!2456263 (= res!1041500 (not ((_ is Concat!11861) lt!880248)))))

(assert (=> b!2456263 (= e!1558444 e!1558449)))

(declare-fun b!2456264 () Bool)

(declare-fun e!1558448 () Bool)

(assert (=> b!2456264 (= e!1558449 e!1558448)))

(declare-fun res!1041499 () Bool)

(assert (=> b!2456264 (=> (not res!1041499) (not e!1558448))))

(assert (=> b!2456264 (= res!1041499 call!150910)))

(declare-fun c!392039 () Bool)

(declare-fun bm!150907 () Bool)

(assert (=> bm!150907 (= call!150912 (validRegex!2917 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))))))

(declare-fun b!2456266 () Bool)

(assert (=> b!2456266 (= e!1558448 call!150911)))

(declare-fun b!2456267 () Bool)

(assert (=> b!2456267 (= e!1558446 e!1558444)))

(assert (=> b!2456267 (= c!392040 ((_ is Union!7225) lt!880248))))

(declare-fun b!2456268 () Bool)

(declare-fun e!1558445 () Bool)

(assert (=> b!2456268 (= e!1558445 e!1558446)))

(assert (=> b!2456268 (= c!392039 ((_ is Star!7225) lt!880248))))

(declare-fun b!2456265 () Bool)

(assert (=> b!2456265 (= e!1558450 call!150910)))

(declare-fun d!707469 () Bool)

(declare-fun res!1041501 () Bool)

(assert (=> d!707469 (=> res!1041501 e!1558445)))

(assert (=> d!707469 (= res!1041501 ((_ is ElementMatch!7225) lt!880248))))

(assert (=> d!707469 (= (validRegex!2917 lt!880248) e!1558445)))

(assert (= (and d!707469 (not res!1041501)) b!2456268))

(assert (= (and b!2456268 c!392039) b!2456262))

(assert (= (and b!2456268 (not c!392039)) b!2456267))

(assert (= (and b!2456262 res!1041498) b!2456261))

(assert (= (and b!2456267 c!392040) b!2456260))

(assert (= (and b!2456267 (not c!392040)) b!2456263))

(assert (= (and b!2456260 res!1041502) b!2456265))

(assert (= (and b!2456263 (not res!1041500)) b!2456264))

(assert (= (and b!2456264 res!1041499) b!2456266))

(assert (= (or b!2456260 b!2456266) bm!150906))

(assert (= (or b!2456265 b!2456264) bm!150905))

(assert (= (or b!2456261 bm!150906) bm!150907))

(declare-fun m!2827469 () Bool)

(assert (=> bm!150905 m!2827469))

(declare-fun m!2827471 () Bool)

(assert (=> b!2456262 m!2827471))

(declare-fun m!2827473 () Bool)

(assert (=> bm!150907 m!2827473))

(assert (=> d!707263 d!707469))

(declare-fun d!707471 () Bool)

(assert (=> d!707471 (= (isEmpty!16615 (tail!3878 lt!880247)) ((_ is Nil!28588) (tail!3878 lt!880247)))))

(assert (=> b!2455634 d!707471))

(declare-fun d!707473 () Bool)

(assert (=> d!707473 (= (tail!3878 lt!880247) (t!208663 lt!880247))))

(assert (=> b!2455634 d!707473))

(declare-fun d!707475 () Bool)

(assert (=> d!707475 (= (isEmpty!16615 (t!208663 lt!880247)) ((_ is Nil!28588) (t!208663 lt!880247)))))

(assert (=> b!2455632 d!707475))

(declare-fun b!2456269 () Bool)

(declare-fun e!1558456 () Bool)

(assert (=> b!2456269 (= e!1558456 (nullable!2218 lt!880248))))

(declare-fun bm!150908 () Bool)

(declare-fun call!150913 () Bool)

(assert (=> bm!150908 (= call!150913 (isEmpty!16618 (_1!16630 (get!8844 lt!880296))))))

(declare-fun b!2456270 () Bool)

(declare-fun e!1558454 () Bool)

(declare-fun lt!880347 () Bool)

(assert (=> b!2456270 (= e!1558454 (= lt!880347 call!150913))))

(declare-fun b!2456271 () Bool)

(declare-fun e!1558451 () Bool)

(assert (=> b!2456271 (= e!1558451 (not lt!880347))))

(declare-fun b!2456272 () Bool)

(declare-fun e!1558452 () Bool)

(assert (=> b!2456272 (= e!1558452 (= (head!5607 (_1!16630 (get!8844 lt!880296))) (c!391797 lt!880248)))))

(declare-fun b!2456273 () Bool)

(declare-fun e!1558455 () Bool)

(declare-fun e!1558457 () Bool)

(assert (=> b!2456273 (= e!1558455 e!1558457)))

(declare-fun res!1041509 () Bool)

(assert (=> b!2456273 (=> (not res!1041509) (not e!1558457))))

(assert (=> b!2456273 (= res!1041509 (not lt!880347))))

(declare-fun b!2456274 () Bool)

(assert (=> b!2456274 (= e!1558456 (matchR!3340 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296)))) (tail!3880 (_1!16630 (get!8844 lt!880296)))))))

(declare-fun b!2456275 () Bool)

(declare-fun res!1041503 () Bool)

(assert (=> b!2456275 (=> (not res!1041503) (not e!1558452))))

(assert (=> b!2456275 (= res!1041503 (not call!150913))))

(declare-fun b!2456276 () Bool)

(assert (=> b!2456276 (= e!1558454 e!1558451)))

(declare-fun c!392042 () Bool)

(assert (=> b!2456276 (= c!392042 ((_ is EmptyLang!7225) lt!880248))))

(declare-fun b!2456277 () Bool)

(declare-fun e!1558453 () Bool)

(assert (=> b!2456277 (= e!1558457 e!1558453)))

(declare-fun res!1041504 () Bool)

(assert (=> b!2456277 (=> res!1041504 e!1558453)))

(assert (=> b!2456277 (= res!1041504 call!150913)))

(declare-fun b!2456278 () Bool)

(declare-fun res!1041510 () Bool)

(assert (=> b!2456278 (=> (not res!1041510) (not e!1558452))))

(assert (=> b!2456278 (= res!1041510 (isEmpty!16618 (tail!3880 (_1!16630 (get!8844 lt!880296)))))))

(declare-fun b!2456279 () Bool)

(declare-fun res!1041505 () Bool)

(assert (=> b!2456279 (=> res!1041505 e!1558455)))

(assert (=> b!2456279 (= res!1041505 (not ((_ is ElementMatch!7225) lt!880248)))))

(assert (=> b!2456279 (= e!1558451 e!1558455)))

(declare-fun d!707477 () Bool)

(assert (=> d!707477 e!1558454))

(declare-fun c!392043 () Bool)

(assert (=> d!707477 (= c!392043 ((_ is EmptyExpr!7225) lt!880248))))

(assert (=> d!707477 (= lt!880347 e!1558456)))

(declare-fun c!392041 () Bool)

(assert (=> d!707477 (= c!392041 (isEmpty!16618 (_1!16630 (get!8844 lt!880296))))))

(assert (=> d!707477 (validRegex!2917 lt!880248)))

(assert (=> d!707477 (= (matchR!3340 lt!880248 (_1!16630 (get!8844 lt!880296))) lt!880347)))

(declare-fun b!2456280 () Bool)

(declare-fun res!1041507 () Bool)

(assert (=> b!2456280 (=> res!1041507 e!1558453)))

(assert (=> b!2456280 (= res!1041507 (not (isEmpty!16618 (tail!3880 (_1!16630 (get!8844 lt!880296))))))))

(declare-fun b!2456281 () Bool)

(assert (=> b!2456281 (= e!1558453 (not (= (head!5607 (_1!16630 (get!8844 lt!880296))) (c!391797 lt!880248))))))

(declare-fun b!2456282 () Bool)

(declare-fun res!1041508 () Bool)

(assert (=> b!2456282 (=> res!1041508 e!1558455)))

(assert (=> b!2456282 (= res!1041508 e!1558452)))

(declare-fun res!1041506 () Bool)

(assert (=> b!2456282 (=> (not res!1041506) (not e!1558452))))

(assert (=> b!2456282 (= res!1041506 lt!880347)))

(assert (= (and d!707477 c!392041) b!2456269))

(assert (= (and d!707477 (not c!392041)) b!2456274))

(assert (= (and d!707477 c!392043) b!2456270))

(assert (= (and d!707477 (not c!392043)) b!2456276))

(assert (= (and b!2456276 c!392042) b!2456271))

(assert (= (and b!2456276 (not c!392042)) b!2456279))

(assert (= (and b!2456279 (not res!1041505)) b!2456282))

(assert (= (and b!2456282 res!1041506) b!2456275))

(assert (= (and b!2456275 res!1041503) b!2456278))

(assert (= (and b!2456278 res!1041510) b!2456272))

(assert (= (and b!2456282 (not res!1041508)) b!2456273))

(assert (= (and b!2456273 res!1041509) b!2456277))

(assert (= (and b!2456277 (not res!1041504)) b!2456280))

(assert (= (and b!2456280 (not res!1041507)) b!2456281))

(assert (= (or b!2456270 b!2456275 b!2456277) bm!150908))

(declare-fun m!2827475 () Bool)

(assert (=> b!2456280 m!2827475))

(assert (=> b!2456280 m!2827475))

(declare-fun m!2827477 () Bool)

(assert (=> b!2456280 m!2827477))

(declare-fun m!2827479 () Bool)

(assert (=> d!707477 m!2827479))

(assert (=> d!707477 m!2826907))

(assert (=> b!2456278 m!2827475))

(assert (=> b!2456278 m!2827475))

(assert (=> b!2456278 m!2827477))

(declare-fun m!2827481 () Bool)

(assert (=> b!2456274 m!2827481))

(assert (=> b!2456274 m!2827481))

(declare-fun m!2827483 () Bool)

(assert (=> b!2456274 m!2827483))

(assert (=> b!2456274 m!2827475))

(assert (=> b!2456274 m!2827483))

(assert (=> b!2456274 m!2827475))

(declare-fun m!2827485 () Bool)

(assert (=> b!2456274 m!2827485))

(assert (=> b!2456272 m!2827481))

(assert (=> b!2456269 m!2826985))

(assert (=> b!2456281 m!2827481))

(assert (=> bm!150908 m!2827479))

(assert (=> b!2455543 d!707477))

(assert (=> b!2455543 d!707463))

(assert (=> b!2455510 d!707283))

(assert (=> bm!150825 d!707447))

(assert (=> d!707269 d!707265))

(assert (=> d!707269 d!707267))

(declare-fun d!707479 () Bool)

(assert (=> d!707479 (= (matchR!3340 r!13927 s!9460) (matchRSpec!1072 r!13927 s!9460))))

(assert (=> d!707479 true))

(declare-fun _$88!3304 () Unit!41905)

(assert (=> d!707479 (= (choose!14546 r!13927 s!9460) _$88!3304)))

(declare-fun bs!465910 () Bool)

(assert (= bs!465910 d!707479))

(assert (=> bs!465910 m!2826729))

(assert (=> bs!465910 m!2826731))

(assert (=> d!707269 d!707479))

(declare-fun bm!150909 () Bool)

(declare-fun call!150914 () Bool)

(declare-fun c!392045 () Bool)

(assert (=> bm!150909 (= call!150914 (validRegex!2917 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))))))

(declare-fun b!2456283 () Bool)

(declare-fun res!1041515 () Bool)

(declare-fun e!1558464 () Bool)

(assert (=> b!2456283 (=> (not res!1041515) (not e!1558464))))

(declare-fun call!150915 () Bool)

(assert (=> b!2456283 (= res!1041515 call!150915)))

(declare-fun e!1558458 () Bool)

(assert (=> b!2456283 (= e!1558458 e!1558464)))

(declare-fun b!2456284 () Bool)

(declare-fun e!1558461 () Bool)

(declare-fun call!150916 () Bool)

(assert (=> b!2456284 (= e!1558461 call!150916)))

(declare-fun bm!150910 () Bool)

(assert (=> bm!150910 (= call!150915 call!150916)))

(declare-fun b!2456285 () Bool)

(declare-fun e!1558460 () Bool)

(assert (=> b!2456285 (= e!1558460 e!1558461)))

(declare-fun res!1041511 () Bool)

(assert (=> b!2456285 (= res!1041511 (not (nullable!2218 (reg!7554 r!13927))))))

(assert (=> b!2456285 (=> (not res!1041511) (not e!1558461))))

(declare-fun b!2456286 () Bool)

(declare-fun res!1041513 () Bool)

(declare-fun e!1558463 () Bool)

(assert (=> b!2456286 (=> res!1041513 e!1558463)))

(assert (=> b!2456286 (= res!1041513 (not ((_ is Concat!11861) r!13927)))))

(assert (=> b!2456286 (= e!1558458 e!1558463)))

(declare-fun b!2456287 () Bool)

(declare-fun e!1558462 () Bool)

(assert (=> b!2456287 (= e!1558463 e!1558462)))

(declare-fun res!1041512 () Bool)

(assert (=> b!2456287 (=> (not res!1041512) (not e!1558462))))

(assert (=> b!2456287 (= res!1041512 call!150914)))

(declare-fun bm!150911 () Bool)

(declare-fun c!392044 () Bool)

(assert (=> bm!150911 (= call!150916 (validRegex!2917 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))))))

(declare-fun b!2456289 () Bool)

(assert (=> b!2456289 (= e!1558462 call!150915)))

(declare-fun b!2456290 () Bool)

(assert (=> b!2456290 (= e!1558460 e!1558458)))

(assert (=> b!2456290 (= c!392045 ((_ is Union!7225) r!13927))))

(declare-fun b!2456291 () Bool)

(declare-fun e!1558459 () Bool)

(assert (=> b!2456291 (= e!1558459 e!1558460)))

(assert (=> b!2456291 (= c!392044 ((_ is Star!7225) r!13927))))

(declare-fun b!2456288 () Bool)

(assert (=> b!2456288 (= e!1558464 call!150914)))

(declare-fun d!707481 () Bool)

(declare-fun res!1041514 () Bool)

(assert (=> d!707481 (=> res!1041514 e!1558459)))

(assert (=> d!707481 (= res!1041514 ((_ is ElementMatch!7225) r!13927))))

(assert (=> d!707481 (= (validRegex!2917 r!13927) e!1558459)))

(assert (= (and d!707481 (not res!1041514)) b!2456291))

(assert (= (and b!2456291 c!392044) b!2456285))

(assert (= (and b!2456291 (not c!392044)) b!2456290))

(assert (= (and b!2456285 res!1041511) b!2456284))

(assert (= (and b!2456290 c!392045) b!2456283))

(assert (= (and b!2456290 (not c!392045)) b!2456286))

(assert (= (and b!2456283 res!1041515) b!2456288))

(assert (= (and b!2456286 (not res!1041513)) b!2456287))

(assert (= (and b!2456287 res!1041512) b!2456289))

(assert (= (or b!2456283 b!2456289) bm!150910))

(assert (= (or b!2456288 b!2456287) bm!150909))

(assert (= (or b!2456284 bm!150910) bm!150911))

(declare-fun m!2827487 () Bool)

(assert (=> bm!150909 m!2827487))

(declare-fun m!2827489 () Bool)

(assert (=> b!2456285 m!2827489))

(declare-fun m!2827491 () Bool)

(assert (=> bm!150911 m!2827491))

(assert (=> d!707269 d!707481))

(declare-fun b!2456295 () Bool)

(declare-fun e!1558466 () Bool)

(declare-fun lt!880348 () List!28687)

(assert (=> b!2456295 (= e!1558466 (or (not (= (_2!16630 lt!880243) Nil!28589)) (= lt!880348 (t!208664 (_1!16630 lt!880243)))))))

(declare-fun b!2456292 () Bool)

(declare-fun e!1558465 () List!28687)

(assert (=> b!2456292 (= e!1558465 (_2!16630 lt!880243))))

(declare-fun b!2456294 () Bool)

(declare-fun res!1041516 () Bool)

(assert (=> b!2456294 (=> (not res!1041516) (not e!1558466))))

(assert (=> b!2456294 (= res!1041516 (= (size!22276 lt!880348) (+ (size!22276 (t!208664 (_1!16630 lt!880243))) (size!22276 (_2!16630 lt!880243)))))))

(declare-fun b!2456293 () Bool)

(assert (=> b!2456293 (= e!1558465 (Cons!28589 (h!33990 (t!208664 (_1!16630 lt!880243))) (++!7113 (t!208664 (t!208664 (_1!16630 lt!880243))) (_2!16630 lt!880243))))))

(declare-fun d!707483 () Bool)

(assert (=> d!707483 e!1558466))

(declare-fun res!1041517 () Bool)

(assert (=> d!707483 (=> (not res!1041517) (not e!1558466))))

(assert (=> d!707483 (= res!1041517 (= (content!3938 lt!880348) ((_ map or) (content!3938 (t!208664 (_1!16630 lt!880243))) (content!3938 (_2!16630 lt!880243)))))))

(assert (=> d!707483 (= lt!880348 e!1558465)))

(declare-fun c!392046 () Bool)

(assert (=> d!707483 (= c!392046 ((_ is Nil!28589) (t!208664 (_1!16630 lt!880243))))))

(assert (=> d!707483 (= (++!7113 (t!208664 (_1!16630 lt!880243)) (_2!16630 lt!880243)) lt!880348)))

(assert (= (and d!707483 c!392046) b!2456292))

(assert (= (and d!707483 (not c!392046)) b!2456293))

(assert (= (and d!707483 res!1041517) b!2456294))

(assert (= (and b!2456294 res!1041516) b!2456295))

(declare-fun m!2827493 () Bool)

(assert (=> b!2456294 m!2827493))

(declare-fun m!2827495 () Bool)

(assert (=> b!2456294 m!2827495))

(assert (=> b!2456294 m!2826895))

(declare-fun m!2827497 () Bool)

(assert (=> b!2456293 m!2827497))

(declare-fun m!2827499 () Bool)

(assert (=> d!707483 m!2827499))

(assert (=> d!707483 m!2827345))

(assert (=> d!707483 m!2826903))

(assert (=> b!2455395 d!707483))

(assert (=> bm!150818 d!707447))

(declare-fun b!2456296 () Bool)

(declare-fun e!1558472 () Bool)

(assert (=> b!2456296 (= e!1558472 (nullable!2218 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun bm!150912 () Bool)

(declare-fun call!150917 () Bool)

(assert (=> bm!150912 (= call!150917 (isEmpty!16618 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2456297 () Bool)

(declare-fun e!1558470 () Bool)

(declare-fun lt!880349 () Bool)

(assert (=> b!2456297 (= e!1558470 (= lt!880349 call!150917))))

(declare-fun b!2456298 () Bool)

(declare-fun e!1558467 () Bool)

(assert (=> b!2456298 (= e!1558467 (not lt!880349))))

(declare-fun b!2456299 () Bool)

(declare-fun e!1558468 () Bool)

(assert (=> b!2456299 (= e!1558468 (= (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (c!391797 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(declare-fun b!2456300 () Bool)

(declare-fun e!1558471 () Bool)

(declare-fun e!1558473 () Bool)

(assert (=> b!2456300 (= e!1558471 e!1558473)))

(declare-fun res!1041524 () Bool)

(assert (=> b!2456300 (=> (not res!1041524) (not e!1558473))))

(assert (=> b!2456300 (= res!1041524 (not lt!880349))))

(declare-fun b!2456301 () Bool)

(assert (=> b!2456301 (= e!1558472 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2456302 () Bool)

(declare-fun res!1041518 () Bool)

(assert (=> b!2456302 (=> (not res!1041518) (not e!1558468))))

(assert (=> b!2456302 (= res!1041518 (not call!150917))))

(declare-fun b!2456303 () Bool)

(assert (=> b!2456303 (= e!1558470 e!1558467)))

(declare-fun c!392048 () Bool)

(assert (=> b!2456303 (= c!392048 ((_ is EmptyLang!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2456304 () Bool)

(declare-fun e!1558469 () Bool)

(assert (=> b!2456304 (= e!1558473 e!1558469)))

(declare-fun res!1041519 () Bool)

(assert (=> b!2456304 (=> res!1041519 e!1558469)))

(assert (=> b!2456304 (= res!1041519 call!150917)))

(declare-fun b!2456305 () Bool)

(declare-fun res!1041525 () Bool)

(assert (=> b!2456305 (=> (not res!1041525) (not e!1558468))))

(assert (=> b!2456305 (= res!1041525 (isEmpty!16618 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2456306 () Bool)

(declare-fun res!1041520 () Bool)

(assert (=> b!2456306 (=> res!1041520 e!1558471)))

(assert (=> b!2456306 (= res!1041520 (not ((_ is ElementMatch!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(assert (=> b!2456306 (= e!1558467 e!1558471)))

(declare-fun d!707485 () Bool)

(assert (=> d!707485 e!1558470))

(declare-fun c!392049 () Bool)

(assert (=> d!707485 (= c!392049 ((_ is EmptyExpr!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(assert (=> d!707485 (= lt!880349 e!1558472)))

(declare-fun c!392047 () Bool)

(assert (=> d!707485 (= c!392047 (isEmpty!16618 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(assert (=> d!707485 (validRegex!2917 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(assert (=> d!707485 (= (matchR!3340 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) lt!880349)))

(declare-fun b!2456307 () Bool)

(declare-fun res!1041522 () Bool)

(assert (=> b!2456307 (=> res!1041522 e!1558469)))

(assert (=> b!2456307 (= res!1041522 (not (isEmpty!16618 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(declare-fun b!2456308 () Bool)

(assert (=> b!2456308 (= e!1558469 (not (= (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (c!391797 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))))

(declare-fun b!2456309 () Bool)

(declare-fun res!1041523 () Bool)

(assert (=> b!2456309 (=> res!1041523 e!1558471)))

(assert (=> b!2456309 (= res!1041523 e!1558468)))

(declare-fun res!1041521 () Bool)

(assert (=> b!2456309 (=> (not res!1041521) (not e!1558468))))

(assert (=> b!2456309 (= res!1041521 lt!880349)))

(assert (= (and d!707485 c!392047) b!2456296))

(assert (= (and d!707485 (not c!392047)) b!2456301))

(assert (= (and d!707485 c!392049) b!2456297))

(assert (= (and d!707485 (not c!392049)) b!2456303))

(assert (= (and b!2456303 c!392048) b!2456298))

(assert (= (and b!2456303 (not c!392048)) b!2456306))

(assert (= (and b!2456306 (not res!1041520)) b!2456309))

(assert (= (and b!2456309 res!1041521) b!2456302))

(assert (= (and b!2456302 res!1041518) b!2456305))

(assert (= (and b!2456305 res!1041525) b!2456299))

(assert (= (and b!2456309 (not res!1041523)) b!2456300))

(assert (= (and b!2456300 res!1041524) b!2456304))

(assert (= (and b!2456304 (not res!1041519)) b!2456307))

(assert (= (and b!2456307 (not res!1041522)) b!2456308))

(assert (= (or b!2456297 b!2456302 b!2456304) bm!150912))

(assert (=> b!2456307 m!2826833))

(declare-fun m!2827501 () Bool)

(assert (=> b!2456307 m!2827501))

(assert (=> b!2456307 m!2827501))

(declare-fun m!2827503 () Bool)

(assert (=> b!2456307 m!2827503))

(assert (=> d!707485 m!2826833))

(assert (=> d!707485 m!2826835))

(assert (=> d!707485 m!2826843))

(declare-fun m!2827505 () Bool)

(assert (=> d!707485 m!2827505))

(assert (=> b!2456305 m!2826833))

(assert (=> b!2456305 m!2827501))

(assert (=> b!2456305 m!2827501))

(assert (=> b!2456305 m!2827503))

(assert (=> b!2456301 m!2826833))

(declare-fun m!2827507 () Bool)

(assert (=> b!2456301 m!2827507))

(assert (=> b!2456301 m!2826843))

(assert (=> b!2456301 m!2827507))

(declare-fun m!2827509 () Bool)

(assert (=> b!2456301 m!2827509))

(assert (=> b!2456301 m!2826833))

(assert (=> b!2456301 m!2827501))

(assert (=> b!2456301 m!2827509))

(assert (=> b!2456301 m!2827501))

(declare-fun m!2827511 () Bool)

(assert (=> b!2456301 m!2827511))

(assert (=> b!2456299 m!2826833))

(assert (=> b!2456299 m!2827507))

(assert (=> b!2456296 m!2826843))

(declare-fun m!2827513 () Bool)

(assert (=> b!2456296 m!2827513))

(assert (=> b!2456308 m!2826833))

(assert (=> b!2456308 m!2827507))

(assert (=> bm!150912 m!2826833))

(assert (=> bm!150912 m!2826835))

(assert (=> b!2455321 d!707485))

(declare-fun b!2456310 () Bool)

(declare-fun e!1558475 () Regex!7225)

(declare-fun e!1558474 () Regex!7225)

(assert (=> b!2456310 (= e!1558475 e!1558474)))

(declare-fun c!392050 () Bool)

(assert (=> b!2456310 (= c!392050 ((_ is ElementMatch!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun c!392052 () Bool)

(declare-fun call!150921 () Regex!7225)

(declare-fun c!392054 () Bool)

(declare-fun bm!150913 () Bool)

(declare-fun c!392053 () Bool)

(assert (=> bm!150913 (= call!150921 (derivativeStep!1872 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2456311 () Bool)

(assert (=> b!2456311 (= e!1558474 (ite (= (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) (c!391797 (Concat!11861 lt!880248 EmptyExpr!7225))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!150914 () Bool)

(declare-fun call!150919 () Regex!7225)

(assert (=> bm!150914 (= call!150919 call!150921)))

(declare-fun b!2456312 () Bool)

(declare-fun e!1558478 () Regex!7225)

(assert (=> b!2456312 (= e!1558478 (Concat!11861 call!150919 (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun e!1558476 () Regex!7225)

(declare-fun b!2456313 () Bool)

(declare-fun call!150918 () Regex!7225)

(declare-fun call!150920 () Regex!7225)

(assert (=> b!2456313 (= e!1558476 (Union!7225 (Concat!11861 call!150920 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))) call!150918))))

(declare-fun d!707487 () Bool)

(declare-fun lt!880350 () Regex!7225)

(assert (=> d!707487 (validRegex!2917 lt!880350)))

(assert (=> d!707487 (= lt!880350 e!1558475)))

(declare-fun c!392051 () Bool)

(assert (=> d!707487 (= c!392051 (or ((_ is EmptyExpr!7225) (Concat!11861 lt!880248 EmptyExpr!7225)) ((_ is EmptyLang!7225) (Concat!11861 lt!880248 EmptyExpr!7225))))))

(assert (=> d!707487 (validRegex!2917 (Concat!11861 lt!880248 EmptyExpr!7225))))

(assert (=> d!707487 (= (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) lt!880350)))

(declare-fun bm!150915 () Bool)

(assert (=> bm!150915 (= call!150920 (derivativeStep!1872 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2456314 () Bool)

(assert (=> b!2456314 (= e!1558476 (Union!7225 (Concat!11861 call!150918 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))) EmptyLang!7225))))

(declare-fun b!2456315 () Bool)

(assert (=> b!2456315 (= e!1558475 EmptyLang!7225)))

(declare-fun b!2456316 () Bool)

(assert (=> b!2456316 (= c!392052 (nullable!2218 (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))

(assert (=> b!2456316 (= e!1558478 e!1558476)))

(declare-fun bm!150916 () Bool)

(assert (=> bm!150916 (= call!150918 call!150919)))

(declare-fun b!2456317 () Bool)

(declare-fun e!1558477 () Regex!7225)

(assert (=> b!2456317 (= e!1558477 (Union!7225 call!150920 call!150921))))

(declare-fun b!2456318 () Bool)

(assert (=> b!2456318 (= c!392054 ((_ is Union!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(assert (=> b!2456318 (= e!1558474 e!1558477)))

(declare-fun b!2456319 () Bool)

(assert (=> b!2456319 (= e!1558477 e!1558478)))

(assert (=> b!2456319 (= c!392053 ((_ is Star!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(assert (= (and d!707487 c!392051) b!2456315))

(assert (= (and d!707487 (not c!392051)) b!2456310))

(assert (= (and b!2456310 c!392050) b!2456311))

(assert (= (and b!2456310 (not c!392050)) b!2456318))

(assert (= (and b!2456318 c!392054) b!2456317))

(assert (= (and b!2456318 (not c!392054)) b!2456319))

(assert (= (and b!2456319 c!392053) b!2456312))

(assert (= (and b!2456319 (not c!392053)) b!2456316))

(assert (= (and b!2456316 c!392052) b!2456313))

(assert (= (and b!2456316 (not c!392052)) b!2456314))

(assert (= (or b!2456313 b!2456314) bm!150916))

(assert (= (or b!2456312 bm!150916) bm!150914))

(assert (= (or b!2456317 b!2456313) bm!150915))

(assert (= (or b!2456317 bm!150914) bm!150913))

(assert (=> bm!150913 m!2826841))

(declare-fun m!2827515 () Bool)

(assert (=> bm!150913 m!2827515))

(declare-fun m!2827517 () Bool)

(assert (=> d!707487 m!2827517))

(assert (=> d!707487 m!2826839))

(assert (=> bm!150915 m!2826841))

(declare-fun m!2827519 () Bool)

(assert (=> bm!150915 m!2827519))

(declare-fun m!2827521 () Bool)

(assert (=> b!2456316 m!2827521))

(assert (=> b!2455321 d!707487))

(declare-fun d!707489 () Bool)

(assert (=> d!707489 (= (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) (h!33990 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))

(assert (=> b!2455321 d!707489))

(declare-fun d!707491 () Bool)

(assert (=> d!707491 (= (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) (t!208664 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))

(assert (=> b!2455321 d!707491))

(declare-fun bs!465911 () Bool)

(declare-fun b!2456329 () Bool)

(assert (= bs!465911 (and b!2456329 b!2455601)))

(declare-fun lambda!93043 () Int)

(assert (=> bs!465911 (= (and (= (reg!7554 (regOne!14963 r!13927)) (reg!7554 r!13927)) (= (regOne!14963 r!13927) r!13927)) (= lambda!93043 lambda!93033))))

(declare-fun bs!465912 () Bool)

(assert (= bs!465912 (and b!2456329 b!2455592)))

(assert (=> bs!465912 (not (= lambda!93043 lambda!93034))))

(assert (=> b!2456329 true))

(assert (=> b!2456329 true))

(declare-fun bs!465913 () Bool)

(declare-fun b!2456320 () Bool)

(assert (= bs!465913 (and b!2456320 b!2455601)))

(declare-fun lambda!93044 () Int)

(assert (=> bs!465913 (not (= lambda!93044 lambda!93033))))

(declare-fun bs!465914 () Bool)

(assert (= bs!465914 (and b!2456320 b!2455592)))

(assert (=> bs!465914 (= (and (= (regOne!14962 (regOne!14963 r!13927)) (regOne!14962 r!13927)) (= (regTwo!14962 (regOne!14963 r!13927)) (regTwo!14962 r!13927))) (= lambda!93044 lambda!93034))))

(declare-fun bs!465915 () Bool)

(assert (= bs!465915 (and b!2456320 b!2456329)))

(assert (=> bs!465915 (not (= lambda!93044 lambda!93043))))

(assert (=> b!2456320 true))

(assert (=> b!2456320 true))

(declare-fun call!150922 () Bool)

(declare-fun bm!150917 () Bool)

(declare-fun c!392055 () Bool)

(assert (=> bm!150917 (= call!150922 (Exists!1244 (ite c!392055 lambda!93043 lambda!93044)))))

(declare-fun e!1558482 () Bool)

(assert (=> b!2456320 (= e!1558482 call!150922)))

(declare-fun b!2456321 () Bool)

(declare-fun c!392057 () Bool)

(assert (=> b!2456321 (= c!392057 ((_ is Union!7225) (regOne!14963 r!13927)))))

(declare-fun e!1558483 () Bool)

(declare-fun e!1558480 () Bool)

(assert (=> b!2456321 (= e!1558483 e!1558480)))

(declare-fun b!2456322 () Bool)

(declare-fun e!1558484 () Bool)

(assert (=> b!2456322 (= e!1558480 e!1558484)))

(declare-fun res!1041528 () Bool)

(assert (=> b!2456322 (= res!1041528 (matchRSpec!1072 (regOne!14963 (regOne!14963 r!13927)) s!9460))))

(assert (=> b!2456322 (=> res!1041528 e!1558484)))

(declare-fun d!707493 () Bool)

(declare-fun c!392056 () Bool)

(assert (=> d!707493 (= c!392056 ((_ is EmptyExpr!7225) (regOne!14963 r!13927)))))

(declare-fun e!1558485 () Bool)

(assert (=> d!707493 (= (matchRSpec!1072 (regOne!14963 r!13927) s!9460) e!1558485)))

(declare-fun b!2456323 () Bool)

(declare-fun e!1558479 () Bool)

(assert (=> b!2456323 (= e!1558485 e!1558479)))

(declare-fun res!1041527 () Bool)

(assert (=> b!2456323 (= res!1041527 (not ((_ is EmptyLang!7225) (regOne!14963 r!13927))))))

(assert (=> b!2456323 (=> (not res!1041527) (not e!1558479))))

(declare-fun b!2456324 () Bool)

(assert (=> b!2456324 (= e!1558480 e!1558482)))

(assert (=> b!2456324 (= c!392055 ((_ is Star!7225) (regOne!14963 r!13927)))))

(declare-fun bm!150918 () Bool)

(declare-fun call!150923 () Bool)

(assert (=> bm!150918 (= call!150923 (isEmpty!16618 s!9460))))

(declare-fun b!2456325 () Bool)

(assert (=> b!2456325 (= e!1558485 call!150923)))

(declare-fun b!2456326 () Bool)

(assert (=> b!2456326 (= e!1558483 (= s!9460 (Cons!28589 (c!391797 (regOne!14963 r!13927)) Nil!28589)))))

(declare-fun b!2456327 () Bool)

(assert (=> b!2456327 (= e!1558484 (matchRSpec!1072 (regTwo!14963 (regOne!14963 r!13927)) s!9460))))

(declare-fun b!2456328 () Bool)

(declare-fun c!392058 () Bool)

(assert (=> b!2456328 (= c!392058 ((_ is ElementMatch!7225) (regOne!14963 r!13927)))))

(assert (=> b!2456328 (= e!1558479 e!1558483)))

(declare-fun e!1558481 () Bool)

(assert (=> b!2456329 (= e!1558481 call!150922)))

(declare-fun b!2456330 () Bool)

(declare-fun res!1041526 () Bool)

(assert (=> b!2456330 (=> res!1041526 e!1558481)))

(assert (=> b!2456330 (= res!1041526 call!150923)))

(assert (=> b!2456330 (= e!1558482 e!1558481)))

(assert (= (and d!707493 c!392056) b!2456325))

(assert (= (and d!707493 (not c!392056)) b!2456323))

(assert (= (and b!2456323 res!1041527) b!2456328))

(assert (= (and b!2456328 c!392058) b!2456326))

(assert (= (and b!2456328 (not c!392058)) b!2456321))

(assert (= (and b!2456321 c!392057) b!2456322))

(assert (= (and b!2456321 (not c!392057)) b!2456324))

(assert (= (and b!2456322 (not res!1041528)) b!2456327))

(assert (= (and b!2456324 c!392055) b!2456330))

(assert (= (and b!2456324 (not c!392055)) b!2456320))

(assert (= (and b!2456330 (not res!1041526)) b!2456329))

(assert (= (or b!2456329 b!2456320) bm!150917))

(assert (= (or b!2456325 b!2456330) bm!150918))

(declare-fun m!2827523 () Bool)

(assert (=> bm!150917 m!2827523))

(declare-fun m!2827525 () Bool)

(assert (=> b!2456322 m!2827525))

(assert (=> bm!150918 m!2826961))

(declare-fun m!2827527 () Bool)

(assert (=> b!2456327 m!2827527))

(assert (=> b!2455594 d!707493))

(declare-fun d!707495 () Bool)

(assert (=> d!707495 (= (isEmpty!16615 (t!208663 l!9164)) ((_ is Nil!28588) (t!208663 l!9164)))))

(assert (=> b!2455514 d!707495))

(declare-fun d!707497 () Bool)

(assert (=> d!707497 (= (isConcat!237 lt!880287) ((_ is Concat!11861) lt!880287))))

(assert (=> b!2455512 d!707497))

(assert (=> b!2455319 d!707489))

(declare-fun bs!465916 () Bool)

(declare-fun b!2456340 () Bool)

(assert (= bs!465916 (and b!2456340 b!2455601)))

(declare-fun lambda!93045 () Int)

(assert (=> bs!465916 (= (and (= (reg!7554 (regTwo!14963 r!13927)) (reg!7554 r!13927)) (= (regTwo!14963 r!13927) r!13927)) (= lambda!93045 lambda!93033))))

(declare-fun bs!465917 () Bool)

(assert (= bs!465917 (and b!2456340 b!2455592)))

(assert (=> bs!465917 (not (= lambda!93045 lambda!93034))))

(declare-fun bs!465918 () Bool)

(assert (= bs!465918 (and b!2456340 b!2456329)))

(assert (=> bs!465918 (= (and (= (reg!7554 (regTwo!14963 r!13927)) (reg!7554 (regOne!14963 r!13927))) (= (regTwo!14963 r!13927) (regOne!14963 r!13927))) (= lambda!93045 lambda!93043))))

(declare-fun bs!465919 () Bool)

(assert (= bs!465919 (and b!2456340 b!2456320)))

(assert (=> bs!465919 (not (= lambda!93045 lambda!93044))))

(assert (=> b!2456340 true))

(assert (=> b!2456340 true))

(declare-fun bs!465920 () Bool)

(declare-fun b!2456331 () Bool)

(assert (= bs!465920 (and b!2456331 b!2456329)))

(declare-fun lambda!93046 () Int)

(assert (=> bs!465920 (not (= lambda!93046 lambda!93043))))

(declare-fun bs!465921 () Bool)

(assert (= bs!465921 (and b!2456331 b!2455601)))

(assert (=> bs!465921 (not (= lambda!93046 lambda!93033))))

(declare-fun bs!465922 () Bool)

(assert (= bs!465922 (and b!2456331 b!2456340)))

(assert (=> bs!465922 (not (= lambda!93046 lambda!93045))))

(declare-fun bs!465923 () Bool)

(assert (= bs!465923 (and b!2456331 b!2456320)))

(assert (=> bs!465923 (= (and (= (regOne!14962 (regTwo!14963 r!13927)) (regOne!14962 (regOne!14963 r!13927))) (= (regTwo!14962 (regTwo!14963 r!13927)) (regTwo!14962 (regOne!14963 r!13927)))) (= lambda!93046 lambda!93044))))

(declare-fun bs!465924 () Bool)

(assert (= bs!465924 (and b!2456331 b!2455592)))

(assert (=> bs!465924 (= (and (= (regOne!14962 (regTwo!14963 r!13927)) (regOne!14962 r!13927)) (= (regTwo!14962 (regTwo!14963 r!13927)) (regTwo!14962 r!13927))) (= lambda!93046 lambda!93034))))

(assert (=> b!2456331 true))

(assert (=> b!2456331 true))

(declare-fun bm!150919 () Bool)

(declare-fun call!150924 () Bool)

(declare-fun c!392059 () Bool)

(assert (=> bm!150919 (= call!150924 (Exists!1244 (ite c!392059 lambda!93045 lambda!93046)))))

(declare-fun e!1558489 () Bool)

(assert (=> b!2456331 (= e!1558489 call!150924)))

(declare-fun b!2456332 () Bool)

(declare-fun c!392061 () Bool)

(assert (=> b!2456332 (= c!392061 ((_ is Union!7225) (regTwo!14963 r!13927)))))

(declare-fun e!1558490 () Bool)

(declare-fun e!1558487 () Bool)

(assert (=> b!2456332 (= e!1558490 e!1558487)))

(declare-fun b!2456333 () Bool)

(declare-fun e!1558491 () Bool)

(assert (=> b!2456333 (= e!1558487 e!1558491)))

(declare-fun res!1041531 () Bool)

(assert (=> b!2456333 (= res!1041531 (matchRSpec!1072 (regOne!14963 (regTwo!14963 r!13927)) s!9460))))

(assert (=> b!2456333 (=> res!1041531 e!1558491)))

(declare-fun d!707499 () Bool)

(declare-fun c!392060 () Bool)

(assert (=> d!707499 (= c!392060 ((_ is EmptyExpr!7225) (regTwo!14963 r!13927)))))

(declare-fun e!1558492 () Bool)

(assert (=> d!707499 (= (matchRSpec!1072 (regTwo!14963 r!13927) s!9460) e!1558492)))

(declare-fun b!2456334 () Bool)

(declare-fun e!1558486 () Bool)

(assert (=> b!2456334 (= e!1558492 e!1558486)))

(declare-fun res!1041530 () Bool)

(assert (=> b!2456334 (= res!1041530 (not ((_ is EmptyLang!7225) (regTwo!14963 r!13927))))))

(assert (=> b!2456334 (=> (not res!1041530) (not e!1558486))))

(declare-fun b!2456335 () Bool)

(assert (=> b!2456335 (= e!1558487 e!1558489)))

(assert (=> b!2456335 (= c!392059 ((_ is Star!7225) (regTwo!14963 r!13927)))))

(declare-fun bm!150920 () Bool)

(declare-fun call!150925 () Bool)

(assert (=> bm!150920 (= call!150925 (isEmpty!16618 s!9460))))

(declare-fun b!2456336 () Bool)

(assert (=> b!2456336 (= e!1558492 call!150925)))

(declare-fun b!2456337 () Bool)

(assert (=> b!2456337 (= e!1558490 (= s!9460 (Cons!28589 (c!391797 (regTwo!14963 r!13927)) Nil!28589)))))

(declare-fun b!2456338 () Bool)

(assert (=> b!2456338 (= e!1558491 (matchRSpec!1072 (regTwo!14963 (regTwo!14963 r!13927)) s!9460))))

(declare-fun b!2456339 () Bool)

(declare-fun c!392062 () Bool)

(assert (=> b!2456339 (= c!392062 ((_ is ElementMatch!7225) (regTwo!14963 r!13927)))))

(assert (=> b!2456339 (= e!1558486 e!1558490)))

(declare-fun e!1558488 () Bool)

(assert (=> b!2456340 (= e!1558488 call!150924)))

(declare-fun b!2456341 () Bool)

(declare-fun res!1041529 () Bool)

(assert (=> b!2456341 (=> res!1041529 e!1558488)))

(assert (=> b!2456341 (= res!1041529 call!150925)))

(assert (=> b!2456341 (= e!1558489 e!1558488)))

(assert (= (and d!707499 c!392060) b!2456336))

(assert (= (and d!707499 (not c!392060)) b!2456334))

(assert (= (and b!2456334 res!1041530) b!2456339))

(assert (= (and b!2456339 c!392062) b!2456337))

(assert (= (and b!2456339 (not c!392062)) b!2456332))

(assert (= (and b!2456332 c!392061) b!2456333))

(assert (= (and b!2456332 (not c!392061)) b!2456335))

(assert (= (and b!2456333 (not res!1041531)) b!2456338))

(assert (= (and b!2456335 c!392059) b!2456341))

(assert (= (and b!2456335 (not c!392059)) b!2456331))

(assert (= (and b!2456341 (not res!1041529)) b!2456340))

(assert (= (or b!2456340 b!2456331) bm!150919))

(assert (= (or b!2456336 b!2456341) bm!150920))

(declare-fun m!2827529 () Bool)

(assert (=> bm!150919 m!2827529))

(declare-fun m!2827531 () Bool)

(assert (=> b!2456333 m!2827531))

(assert (=> bm!150920 m!2826961))

(declare-fun m!2827533 () Bool)

(assert (=> b!2456338 m!2827533))

(assert (=> b!2455599 d!707499))

(declare-fun d!707501 () Bool)

(assert (=> d!707501 (= (head!5605 lt!880247) (h!33989 lt!880247))))

(assert (=> b!2455629 d!707501))

(declare-fun d!707503 () Bool)

(assert (=> d!707503 (= (isEmptyExpr!237 lt!880287) ((_ is EmptyExpr!7225) lt!880287))))

(assert (=> b!2455518 d!707503))

(assert (=> b!2455540 d!707465))

(assert (=> b!2455558 d!707421))

(declare-fun d!707505 () Bool)

(assert (=> d!707505 (= (isEmpty!16615 (tail!3878 l!9164)) ((_ is Nil!28588) (tail!3878 l!9164)))))

(assert (=> b!2455516 d!707505))

(assert (=> b!2455516 d!707273))

(declare-fun b!2456342 () Bool)

(declare-fun e!1558498 () Bool)

(assert (=> b!2456342 (= e!1558498 (nullable!2218 EmptyExpr!7225))))

(declare-fun bm!150921 () Bool)

(declare-fun call!150926 () Bool)

(assert (=> bm!150921 (= call!150926 (isEmpty!16618 s!9460))))

(declare-fun b!2456343 () Bool)

(declare-fun e!1558496 () Bool)

(declare-fun lt!880351 () Bool)

(assert (=> b!2456343 (= e!1558496 (= lt!880351 call!150926))))

(declare-fun b!2456344 () Bool)

(declare-fun e!1558493 () Bool)

(assert (=> b!2456344 (= e!1558493 (not lt!880351))))

(declare-fun b!2456345 () Bool)

(declare-fun e!1558494 () Bool)

(assert (=> b!2456345 (= e!1558494 (= (head!5607 s!9460) (c!391797 EmptyExpr!7225)))))

(declare-fun b!2456346 () Bool)

(declare-fun e!1558497 () Bool)

(declare-fun e!1558499 () Bool)

(assert (=> b!2456346 (= e!1558497 e!1558499)))

(declare-fun res!1041538 () Bool)

(assert (=> b!2456346 (=> (not res!1041538) (not e!1558499))))

(assert (=> b!2456346 (= res!1041538 (not lt!880351))))

(declare-fun b!2456347 () Bool)

(assert (=> b!2456347 (= e!1558498 (matchR!3340 (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460)) (tail!3880 s!9460)))))

(declare-fun b!2456348 () Bool)

(declare-fun res!1041532 () Bool)

(assert (=> b!2456348 (=> (not res!1041532) (not e!1558494))))

(assert (=> b!2456348 (= res!1041532 (not call!150926))))

(declare-fun b!2456349 () Bool)

(assert (=> b!2456349 (= e!1558496 e!1558493)))

(declare-fun c!392064 () Bool)

(assert (=> b!2456349 (= c!392064 ((_ is EmptyLang!7225) EmptyExpr!7225))))

(declare-fun b!2456350 () Bool)

(declare-fun e!1558495 () Bool)

(assert (=> b!2456350 (= e!1558499 e!1558495)))

(declare-fun res!1041533 () Bool)

(assert (=> b!2456350 (=> res!1041533 e!1558495)))

(assert (=> b!2456350 (= res!1041533 call!150926)))

(declare-fun b!2456351 () Bool)

(declare-fun res!1041539 () Bool)

(assert (=> b!2456351 (=> (not res!1041539) (not e!1558494))))

(assert (=> b!2456351 (= res!1041539 (isEmpty!16618 (tail!3880 s!9460)))))

(declare-fun b!2456352 () Bool)

(declare-fun res!1041534 () Bool)

(assert (=> b!2456352 (=> res!1041534 e!1558497)))

(assert (=> b!2456352 (= res!1041534 (not ((_ is ElementMatch!7225) EmptyExpr!7225)))))

(assert (=> b!2456352 (= e!1558493 e!1558497)))

(declare-fun d!707507 () Bool)

(assert (=> d!707507 e!1558496))

(declare-fun c!392065 () Bool)

(assert (=> d!707507 (= c!392065 ((_ is EmptyExpr!7225) EmptyExpr!7225))))

(assert (=> d!707507 (= lt!880351 e!1558498)))

(declare-fun c!392063 () Bool)

(assert (=> d!707507 (= c!392063 (isEmpty!16618 s!9460))))

(assert (=> d!707507 (validRegex!2917 EmptyExpr!7225)))

(assert (=> d!707507 (= (matchR!3340 EmptyExpr!7225 s!9460) lt!880351)))

(declare-fun b!2456353 () Bool)

(declare-fun res!1041536 () Bool)

(assert (=> b!2456353 (=> res!1041536 e!1558495)))

(assert (=> b!2456353 (= res!1041536 (not (isEmpty!16618 (tail!3880 s!9460))))))

(declare-fun b!2456354 () Bool)

(assert (=> b!2456354 (= e!1558495 (not (= (head!5607 s!9460) (c!391797 EmptyExpr!7225))))))

(declare-fun b!2456355 () Bool)

(declare-fun res!1041537 () Bool)

(assert (=> b!2456355 (=> res!1041537 e!1558497)))

(assert (=> b!2456355 (= res!1041537 e!1558494)))

(declare-fun res!1041535 () Bool)

(assert (=> b!2456355 (=> (not res!1041535) (not e!1558494))))

(assert (=> b!2456355 (= res!1041535 lt!880351)))

(assert (= (and d!707507 c!392063) b!2456342))

(assert (= (and d!707507 (not c!392063)) b!2456347))

(assert (= (and d!707507 c!392065) b!2456343))

(assert (= (and d!707507 (not c!392065)) b!2456349))

(assert (= (and b!2456349 c!392064) b!2456344))

(assert (= (and b!2456349 (not c!392064)) b!2456352))

(assert (= (and b!2456352 (not res!1041534)) b!2456355))

(assert (= (and b!2456355 res!1041535) b!2456348))

(assert (= (and b!2456348 res!1041532) b!2456351))

(assert (= (and b!2456351 res!1041539) b!2456345))

(assert (= (and b!2456355 (not res!1041537)) b!2456346))

(assert (= (and b!2456346 res!1041538) b!2456350))

(assert (= (and b!2456350 (not res!1041533)) b!2456353))

(assert (= (and b!2456353 (not res!1041536)) b!2456354))

(assert (= (or b!2456343 b!2456348 b!2456350) bm!150921))

(assert (=> b!2456353 m!2826957))

(assert (=> b!2456353 m!2826957))

(assert (=> b!2456353 m!2826959))

(assert (=> d!707507 m!2826961))

(assert (=> d!707507 m!2827445))

(assert (=> b!2456351 m!2826957))

(assert (=> b!2456351 m!2826957))

(assert (=> b!2456351 m!2826959))

(assert (=> b!2456347 m!2826965))

(assert (=> b!2456347 m!2826965))

(declare-fun m!2827535 () Bool)

(assert (=> b!2456347 m!2827535))

(assert (=> b!2456347 m!2826957))

(assert (=> b!2456347 m!2827535))

(assert (=> b!2456347 m!2826957))

(declare-fun m!2827537 () Bool)

(assert (=> b!2456347 m!2827537))

(assert (=> b!2456345 m!2826965))

(assert (=> b!2456342 m!2827453))

(assert (=> b!2456354 m!2826965))

(assert (=> bm!150921 m!2826961))

(assert (=> b!2455538 d!707507))

(assert (=> d!707265 d!707447))

(assert (=> d!707265 d!707481))

(declare-fun d!707509 () Bool)

(declare-fun nullableFct!541 (Regex!7225) Bool)

(assert (=> d!707509 (= (nullable!2218 r!13927) (nullableFct!541 r!13927))))

(declare-fun bs!465925 () Bool)

(assert (= bs!465925 d!707509))

(declare-fun m!2827539 () Bool)

(assert (=> bs!465925 m!2827539))

(assert (=> b!2455546 d!707509))

(declare-fun bm!150922 () Bool)

(declare-fun call!150927 () Bool)

(declare-fun c!392067 () Bool)

(assert (=> bm!150922 (= call!150927 (validRegex!2917 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))))))

(declare-fun b!2456356 () Bool)

(declare-fun res!1041544 () Bool)

(declare-fun e!1558506 () Bool)

(assert (=> b!2456356 (=> (not res!1041544) (not e!1558506))))

(declare-fun call!150928 () Bool)

(assert (=> b!2456356 (= res!1041544 call!150928)))

(declare-fun e!1558500 () Bool)

(assert (=> b!2456356 (= e!1558500 e!1558506)))

(declare-fun b!2456357 () Bool)

(declare-fun e!1558503 () Bool)

(declare-fun call!150929 () Bool)

(assert (=> b!2456357 (= e!1558503 call!150929)))

(declare-fun bm!150923 () Bool)

(assert (=> bm!150923 (= call!150928 call!150929)))

(declare-fun b!2456358 () Bool)

(declare-fun e!1558502 () Bool)

(assert (=> b!2456358 (= e!1558502 e!1558503)))

(declare-fun res!1041540 () Bool)

(assert (=> b!2456358 (= res!1041540 (not (nullable!2218 (reg!7554 (h!33989 l!9164)))))))

(assert (=> b!2456358 (=> (not res!1041540) (not e!1558503))))

(declare-fun b!2456359 () Bool)

(declare-fun res!1041542 () Bool)

(declare-fun e!1558505 () Bool)

(assert (=> b!2456359 (=> res!1041542 e!1558505)))

(assert (=> b!2456359 (= res!1041542 (not ((_ is Concat!11861) (h!33989 l!9164))))))

(assert (=> b!2456359 (= e!1558500 e!1558505)))

(declare-fun b!2456360 () Bool)

(declare-fun e!1558504 () Bool)

(assert (=> b!2456360 (= e!1558505 e!1558504)))

(declare-fun res!1041541 () Bool)

(assert (=> b!2456360 (=> (not res!1041541) (not e!1558504))))

(assert (=> b!2456360 (= res!1041541 call!150927)))

(declare-fun c!392066 () Bool)

(declare-fun bm!150924 () Bool)

(assert (=> bm!150924 (= call!150929 (validRegex!2917 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))))))

(declare-fun b!2456362 () Bool)

(assert (=> b!2456362 (= e!1558504 call!150928)))

(declare-fun b!2456363 () Bool)

(assert (=> b!2456363 (= e!1558502 e!1558500)))

(assert (=> b!2456363 (= c!392067 ((_ is Union!7225) (h!33989 l!9164)))))

(declare-fun b!2456364 () Bool)

(declare-fun e!1558501 () Bool)

(assert (=> b!2456364 (= e!1558501 e!1558502)))

(assert (=> b!2456364 (= c!392066 ((_ is Star!7225) (h!33989 l!9164)))))

(declare-fun b!2456361 () Bool)

(assert (=> b!2456361 (= e!1558506 call!150927)))

(declare-fun d!707511 () Bool)

(declare-fun res!1041543 () Bool)

(assert (=> d!707511 (=> res!1041543 e!1558501)))

(assert (=> d!707511 (= res!1041543 ((_ is ElementMatch!7225) (h!33989 l!9164)))))

(assert (=> d!707511 (= (validRegex!2917 (h!33989 l!9164)) e!1558501)))

(assert (= (and d!707511 (not res!1041543)) b!2456364))

(assert (= (and b!2456364 c!392066) b!2456358))

(assert (= (and b!2456364 (not c!392066)) b!2456363))

(assert (= (and b!2456358 res!1041540) b!2456357))

(assert (= (and b!2456363 c!392067) b!2456356))

(assert (= (and b!2456363 (not c!392067)) b!2456359))

(assert (= (and b!2456356 res!1041544) b!2456361))

(assert (= (and b!2456359 (not res!1041542)) b!2456360))

(assert (= (and b!2456360 res!1041541) b!2456362))

(assert (= (or b!2456356 b!2456362) bm!150923))

(assert (= (or b!2456361 b!2456360) bm!150922))

(assert (= (or b!2456357 bm!150923) bm!150924))

(declare-fun m!2827541 () Bool)

(assert (=> bm!150922 m!2827541))

(declare-fun m!2827543 () Bool)

(assert (=> b!2456358 m!2827543))

(declare-fun m!2827545 () Bool)

(assert (=> bm!150924 m!2827545))

(assert (=> bs!465871 d!707511))

(assert (=> d!707249 d!707219))

(assert (=> d!707249 d!707235))

(declare-fun d!707513 () Bool)

(assert (=> d!707513 (matchR!3340 (Concat!11861 lt!880248 EmptyExpr!7225) (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))

(assert (=> d!707513 true))

(declare-fun _$120!207 () Unit!41905)

(assert (=> d!707513 (= (choose!14545 lt!880248 EmptyExpr!7225 (_1!16630 lt!880243) (_2!16630 lt!880243) s!9460) _$120!207)))

(declare-fun bs!465926 () Bool)

(assert (= bs!465926 d!707513))

(assert (=> bs!465926 m!2826751))

(assert (=> bs!465926 m!2826751))

(assert (=> bs!465926 m!2826753))

(assert (=> d!707249 d!707513))

(assert (=> d!707249 d!707469))

(declare-fun bs!465927 () Bool)

(declare-fun d!707515 () Bool)

(assert (= bs!465927 (and d!707515 start!239606)))

(declare-fun lambda!93047 () Int)

(assert (=> bs!465927 (= lambda!93047 lambda!93015)))

(declare-fun bs!465928 () Bool)

(assert (= bs!465928 (and d!707515 d!707253)))

(assert (=> bs!465928 (= lambda!93047 lambda!93028)))

(declare-fun bs!465929 () Bool)

(assert (= bs!465929 (and d!707515 d!707281)))

(assert (=> bs!465929 (= lambda!93047 lambda!93035)))

(declare-fun bs!465930 () Bool)

(assert (= bs!465930 (and d!707515 d!707449)))

(assert (=> bs!465930 (= lambda!93047 lambda!93042)))

(declare-fun b!2456365 () Bool)

(declare-fun e!1558508 () Regex!7225)

(assert (=> b!2456365 (= e!1558508 EmptyExpr!7225)))

(declare-fun b!2456366 () Bool)

(declare-fun e!1558512 () Bool)

(declare-fun e!1558509 () Bool)

(assert (=> b!2456366 (= e!1558512 e!1558509)))

(declare-fun c!392068 () Bool)

(assert (=> b!2456366 (= c!392068 (isEmpty!16615 (t!208663 lt!880247)))))

(declare-fun b!2456367 () Bool)

(declare-fun e!1558510 () Bool)

(declare-fun lt!880352 () Regex!7225)

(assert (=> b!2456367 (= e!1558510 (= lt!880352 (head!5605 (t!208663 lt!880247))))))

(declare-fun b!2456368 () Bool)

(assert (=> b!2456368 (= e!1558510 (isConcat!237 lt!880352))))

(assert (=> d!707515 e!1558512))

(declare-fun res!1041546 () Bool)

(assert (=> d!707515 (=> (not res!1041546) (not e!1558512))))

(assert (=> d!707515 (= res!1041546 (validRegex!2917 lt!880352))))

(declare-fun e!1558511 () Regex!7225)

(assert (=> d!707515 (= lt!880352 e!1558511)))

(declare-fun c!392071 () Bool)

(declare-fun e!1558507 () Bool)

(assert (=> d!707515 (= c!392071 e!1558507)))

(declare-fun res!1041545 () Bool)

(assert (=> d!707515 (=> (not res!1041545) (not e!1558507))))

(assert (=> d!707515 (= res!1041545 ((_ is Cons!28588) (t!208663 lt!880247)))))

(assert (=> d!707515 (forall!5859 (t!208663 lt!880247) lambda!93047)))

(assert (=> d!707515 (= (generalisedConcat!326 (t!208663 lt!880247)) lt!880352)))

(declare-fun b!2456369 () Bool)

(assert (=> b!2456369 (= e!1558511 e!1558508)))

(declare-fun c!392069 () Bool)

(assert (=> b!2456369 (= c!392069 ((_ is Cons!28588) (t!208663 lt!880247)))))

(declare-fun b!2456370 () Bool)

(assert (=> b!2456370 (= e!1558507 (isEmpty!16615 (t!208663 (t!208663 lt!880247))))))

(declare-fun b!2456371 () Bool)

(assert (=> b!2456371 (= e!1558511 (h!33989 (t!208663 lt!880247)))))

(declare-fun b!2456372 () Bool)

(assert (=> b!2456372 (= e!1558509 e!1558510)))

(declare-fun c!392070 () Bool)

(assert (=> b!2456372 (= c!392070 (isEmpty!16615 (tail!3878 (t!208663 lt!880247))))))

(declare-fun b!2456373 () Bool)

(assert (=> b!2456373 (= e!1558508 (Concat!11861 (h!33989 (t!208663 lt!880247)) (generalisedConcat!326 (t!208663 (t!208663 lt!880247)))))))

(declare-fun b!2456374 () Bool)

(assert (=> b!2456374 (= e!1558509 (isEmptyExpr!237 lt!880352))))

(assert (= (and d!707515 res!1041545) b!2456370))

(assert (= (and d!707515 c!392071) b!2456371))

(assert (= (and d!707515 (not c!392071)) b!2456369))

(assert (= (and b!2456369 c!392069) b!2456373))

(assert (= (and b!2456369 (not c!392069)) b!2456365))

(assert (= (and d!707515 res!1041546) b!2456366))

(assert (= (and b!2456366 c!392068) b!2456374))

(assert (= (and b!2456366 (not c!392068)) b!2456372))

(assert (= (and b!2456372 c!392070) b!2456367))

(assert (= (and b!2456372 (not c!392070)) b!2456368))

(assert (=> b!2456366 m!2826997))

(declare-fun m!2827547 () Bool)

(assert (=> b!2456367 m!2827547))

(declare-fun m!2827549 () Bool)

(assert (=> b!2456373 m!2827549))

(declare-fun m!2827551 () Bool)

(assert (=> b!2456368 m!2827551))

(declare-fun m!2827553 () Bool)

(assert (=> b!2456370 m!2827553))

(declare-fun m!2827555 () Bool)

(assert (=> b!2456374 m!2827555))

(declare-fun m!2827557 () Bool)

(assert (=> b!2456372 m!2827557))

(assert (=> b!2456372 m!2827557))

(declare-fun m!2827559 () Bool)

(assert (=> b!2456372 m!2827559))

(declare-fun m!2827561 () Bool)

(assert (=> d!707515 m!2827561))

(declare-fun m!2827563 () Bool)

(assert (=> d!707515 m!2827563))

(assert (=> b!2455635 d!707515))

(declare-fun d!707517 () Bool)

(assert (=> d!707517 (= (nullable!2218 (Concat!11861 lt!880248 EmptyExpr!7225)) (nullableFct!541 (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun bs!465931 () Bool)

(assert (= bs!465931 d!707517))

(declare-fun m!2827565 () Bool)

(assert (=> bs!465931 m!2827565))

(assert (=> b!2455316 d!707517))

(declare-fun d!707519 () Bool)

(assert (=> d!707519 (= (isEmpty!16618 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) ((_ is Nil!28589) (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(assert (=> b!2455325 d!707519))

(assert (=> b!2455325 d!707491))

(assert (=> b!2455619 d!707421))

(declare-fun bm!150925 () Bool)

(declare-fun call!150930 () Bool)

(declare-fun c!392073 () Bool)

(assert (=> bm!150925 (= call!150930 (validRegex!2917 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))))))

(declare-fun b!2456375 () Bool)

(declare-fun res!1041551 () Bool)

(declare-fun e!1558519 () Bool)

(assert (=> b!2456375 (=> (not res!1041551) (not e!1558519))))

(declare-fun call!150931 () Bool)

(assert (=> b!2456375 (= res!1041551 call!150931)))

(declare-fun e!1558513 () Bool)

(assert (=> b!2456375 (= e!1558513 e!1558519)))

(declare-fun b!2456376 () Bool)

(declare-fun e!1558516 () Bool)

(declare-fun call!150932 () Bool)

(assert (=> b!2456376 (= e!1558516 call!150932)))

(declare-fun bm!150926 () Bool)

(assert (=> bm!150926 (= call!150931 call!150932)))

(declare-fun b!2456377 () Bool)

(declare-fun e!1558515 () Bool)

(assert (=> b!2456377 (= e!1558515 e!1558516)))

(declare-fun res!1041547 () Bool)

(assert (=> b!2456377 (= res!1041547 (not (nullable!2218 (reg!7554 lt!880287))))))

(assert (=> b!2456377 (=> (not res!1041547) (not e!1558516))))

(declare-fun b!2456378 () Bool)

(declare-fun res!1041549 () Bool)

(declare-fun e!1558518 () Bool)

(assert (=> b!2456378 (=> res!1041549 e!1558518)))

(assert (=> b!2456378 (= res!1041549 (not ((_ is Concat!11861) lt!880287)))))

(assert (=> b!2456378 (= e!1558513 e!1558518)))

(declare-fun b!2456379 () Bool)

(declare-fun e!1558517 () Bool)

(assert (=> b!2456379 (= e!1558518 e!1558517)))

(declare-fun res!1041548 () Bool)

(assert (=> b!2456379 (=> (not res!1041548) (not e!1558517))))

(assert (=> b!2456379 (= res!1041548 call!150930)))

(declare-fun c!392072 () Bool)

(declare-fun bm!150927 () Bool)

(assert (=> bm!150927 (= call!150932 (validRegex!2917 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))))))

(declare-fun b!2456381 () Bool)

(assert (=> b!2456381 (= e!1558517 call!150931)))

(declare-fun b!2456382 () Bool)

(assert (=> b!2456382 (= e!1558515 e!1558513)))

(assert (=> b!2456382 (= c!392073 ((_ is Union!7225) lt!880287))))

(declare-fun b!2456383 () Bool)

(declare-fun e!1558514 () Bool)

(assert (=> b!2456383 (= e!1558514 e!1558515)))

(assert (=> b!2456383 (= c!392072 ((_ is Star!7225) lt!880287))))

(declare-fun b!2456380 () Bool)

(assert (=> b!2456380 (= e!1558519 call!150930)))

(declare-fun d!707521 () Bool)

(declare-fun res!1041550 () Bool)

(assert (=> d!707521 (=> res!1041550 e!1558514)))

(assert (=> d!707521 (= res!1041550 ((_ is ElementMatch!7225) lt!880287))))

(assert (=> d!707521 (= (validRegex!2917 lt!880287) e!1558514)))

(assert (= (and d!707521 (not res!1041550)) b!2456383))

(assert (= (and b!2456383 c!392072) b!2456377))

(assert (= (and b!2456383 (not c!392072)) b!2456382))

(assert (= (and b!2456377 res!1041547) b!2456376))

(assert (= (and b!2456382 c!392073) b!2456375))

(assert (= (and b!2456382 (not c!392073)) b!2456378))

(assert (= (and b!2456375 res!1041551) b!2456380))

(assert (= (and b!2456378 (not res!1041549)) b!2456379))

(assert (= (and b!2456379 res!1041548) b!2456381))

(assert (= (or b!2456375 b!2456381) bm!150926))

(assert (= (or b!2456380 b!2456379) bm!150925))

(assert (= (or b!2456376 bm!150926) bm!150927))

(declare-fun m!2827567 () Bool)

(assert (=> bm!150925 m!2827567))

(declare-fun m!2827569 () Bool)

(assert (=> b!2456377 m!2827569))

(declare-fun m!2827571 () Bool)

(assert (=> bm!150927 m!2827571))

(assert (=> d!707253 d!707521))

(declare-fun d!707523 () Bool)

(declare-fun res!1041552 () Bool)

(declare-fun e!1558520 () Bool)

(assert (=> d!707523 (=> res!1041552 e!1558520)))

(assert (=> d!707523 (= res!1041552 ((_ is Nil!28588) l!9164))))

(assert (=> d!707523 (= (forall!5859 l!9164 lambda!93028) e!1558520)))

(declare-fun b!2456384 () Bool)

(declare-fun e!1558521 () Bool)

(assert (=> b!2456384 (= e!1558520 e!1558521)))

(declare-fun res!1041553 () Bool)

(assert (=> b!2456384 (=> (not res!1041553) (not e!1558521))))

(assert (=> b!2456384 (= res!1041553 (dynLambda!12274 lambda!93028 (h!33989 l!9164)))))

(declare-fun b!2456385 () Bool)

(assert (=> b!2456385 (= e!1558521 (forall!5859 (t!208663 l!9164) lambda!93028))))

(assert (= (and d!707523 (not res!1041552)) b!2456384))

(assert (= (and b!2456384 res!1041553) b!2456385))

(declare-fun b_lambda!75175 () Bool)

(assert (=> (not b_lambda!75175) (not b!2456384)))

(declare-fun m!2827573 () Bool)

(assert (=> b!2456384 m!2827573))

(declare-fun m!2827575 () Bool)

(assert (=> b!2456385 m!2827575))

(assert (=> d!707253 d!707523))

(declare-fun b!2456389 () Bool)

(declare-fun e!1558523 () Bool)

(declare-fun lt!880353 () List!28687)

(assert (=> b!2456389 (= e!1558523 (or (not (= (_2!16630 (get!8844 lt!880296)) Nil!28589)) (= lt!880353 (_1!16630 (get!8844 lt!880296)))))))

(declare-fun b!2456386 () Bool)

(declare-fun e!1558522 () List!28687)

(assert (=> b!2456386 (= e!1558522 (_2!16630 (get!8844 lt!880296)))))

(declare-fun b!2456388 () Bool)

(declare-fun res!1041554 () Bool)

(assert (=> b!2456388 (=> (not res!1041554) (not e!1558523))))

(assert (=> b!2456388 (= res!1041554 (= (size!22276 lt!880353) (+ (size!22276 (_1!16630 (get!8844 lt!880296))) (size!22276 (_2!16630 (get!8844 lt!880296))))))))

(declare-fun b!2456387 () Bool)

(assert (=> b!2456387 (= e!1558522 (Cons!28589 (h!33990 (_1!16630 (get!8844 lt!880296))) (++!7113 (t!208664 (_1!16630 (get!8844 lt!880296))) (_2!16630 (get!8844 lt!880296)))))))

(declare-fun d!707525 () Bool)

(assert (=> d!707525 e!1558523))

(declare-fun res!1041555 () Bool)

(assert (=> d!707525 (=> (not res!1041555) (not e!1558523))))

(assert (=> d!707525 (= res!1041555 (= (content!3938 lt!880353) ((_ map or) (content!3938 (_1!16630 (get!8844 lt!880296))) (content!3938 (_2!16630 (get!8844 lt!880296))))))))

(assert (=> d!707525 (= lt!880353 e!1558522)))

(declare-fun c!392074 () Bool)

(assert (=> d!707525 (= c!392074 ((_ is Nil!28589) (_1!16630 (get!8844 lt!880296))))))

(assert (=> d!707525 (= (++!7113 (_1!16630 (get!8844 lt!880296)) (_2!16630 (get!8844 lt!880296))) lt!880353)))

(assert (= (and d!707525 c!392074) b!2456386))

(assert (= (and d!707525 (not c!392074)) b!2456387))

(assert (= (and d!707525 res!1041555) b!2456388))

(assert (= (and b!2456388 res!1041554) b!2456389))

(declare-fun m!2827577 () Bool)

(assert (=> b!2456388 m!2827577))

(declare-fun m!2827579 () Bool)

(assert (=> b!2456388 m!2827579))

(declare-fun m!2827581 () Bool)

(assert (=> b!2456388 m!2827581))

(declare-fun m!2827583 () Bool)

(assert (=> b!2456387 m!2827583))

(declare-fun m!2827585 () Bool)

(assert (=> d!707525 m!2827585))

(declare-fun m!2827587 () Bool)

(assert (=> d!707525 m!2827587))

(declare-fun m!2827589 () Bool)

(assert (=> d!707525 m!2827589))

(assert (=> b!2455544 d!707525))

(assert (=> b!2455544 d!707463))

(declare-fun b!2456390 () Bool)

(declare-fun e!1558529 () Bool)

(assert (=> b!2456390 (= e!1558529 (nullable!2218 (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(declare-fun bm!150928 () Bool)

(declare-fun call!150933 () Bool)

(assert (=> bm!150928 (= call!150933 (isEmpty!16618 (tail!3880 s!9460)))))

(declare-fun b!2456391 () Bool)

(declare-fun e!1558527 () Bool)

(declare-fun lt!880354 () Bool)

(assert (=> b!2456391 (= e!1558527 (= lt!880354 call!150933))))

(declare-fun b!2456392 () Bool)

(declare-fun e!1558524 () Bool)

(assert (=> b!2456392 (= e!1558524 (not lt!880354))))

(declare-fun b!2456393 () Bool)

(declare-fun e!1558525 () Bool)

(assert (=> b!2456393 (= e!1558525 (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 r!13927 (head!5607 s!9460)))))))

(declare-fun b!2456394 () Bool)

(declare-fun e!1558528 () Bool)

(declare-fun e!1558530 () Bool)

(assert (=> b!2456394 (= e!1558528 e!1558530)))

(declare-fun res!1041562 () Bool)

(assert (=> b!2456394 (=> (not res!1041562) (not e!1558530))))

(assert (=> b!2456394 (= res!1041562 (not lt!880354))))

(declare-fun b!2456395 () Bool)

(assert (=> b!2456395 (= e!1558529 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2456396 () Bool)

(declare-fun res!1041556 () Bool)

(assert (=> b!2456396 (=> (not res!1041556) (not e!1558525))))

(assert (=> b!2456396 (= res!1041556 (not call!150933))))

(declare-fun b!2456397 () Bool)

(assert (=> b!2456397 (= e!1558527 e!1558524)))

(declare-fun c!392076 () Bool)

(assert (=> b!2456397 (= c!392076 ((_ is EmptyLang!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(declare-fun b!2456398 () Bool)

(declare-fun e!1558526 () Bool)

(assert (=> b!2456398 (= e!1558530 e!1558526)))

(declare-fun res!1041557 () Bool)

(assert (=> b!2456398 (=> res!1041557 e!1558526)))

(assert (=> b!2456398 (= res!1041557 call!150933)))

(declare-fun b!2456399 () Bool)

(declare-fun res!1041563 () Bool)

(assert (=> b!2456399 (=> (not res!1041563) (not e!1558525))))

(assert (=> b!2456399 (= res!1041563 (isEmpty!16618 (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2456400 () Bool)

(declare-fun res!1041558 () Bool)

(assert (=> b!2456400 (=> res!1041558 e!1558528)))

(assert (=> b!2456400 (= res!1041558 (not ((_ is ElementMatch!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460)))))))

(assert (=> b!2456400 (= e!1558524 e!1558528)))

(declare-fun d!707527 () Bool)

(assert (=> d!707527 e!1558527))

(declare-fun c!392077 () Bool)

(assert (=> d!707527 (= c!392077 ((_ is EmptyExpr!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(assert (=> d!707527 (= lt!880354 e!1558529)))

(declare-fun c!392075 () Bool)

(assert (=> d!707527 (= c!392075 (isEmpty!16618 (tail!3880 s!9460)))))

(assert (=> d!707527 (validRegex!2917 (derivativeStep!1872 r!13927 (head!5607 s!9460)))))

(assert (=> d!707527 (= (matchR!3340 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (tail!3880 s!9460)) lt!880354)))

(declare-fun b!2456401 () Bool)

(declare-fun res!1041560 () Bool)

(assert (=> b!2456401 (=> res!1041560 e!1558526)))

(assert (=> b!2456401 (= res!1041560 (not (isEmpty!16618 (tail!3880 (tail!3880 s!9460)))))))

(declare-fun b!2456402 () Bool)

(assert (=> b!2456402 (= e!1558526 (not (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 r!13927 (head!5607 s!9460))))))))

(declare-fun b!2456403 () Bool)

(declare-fun res!1041561 () Bool)

(assert (=> b!2456403 (=> res!1041561 e!1558528)))

(assert (=> b!2456403 (= res!1041561 e!1558525)))

(declare-fun res!1041559 () Bool)

(assert (=> b!2456403 (=> (not res!1041559) (not e!1558525))))

(assert (=> b!2456403 (= res!1041559 lt!880354)))

(assert (= (and d!707527 c!392075) b!2456390))

(assert (= (and d!707527 (not c!392075)) b!2456395))

(assert (= (and d!707527 c!392077) b!2456391))

(assert (= (and d!707527 (not c!392077)) b!2456397))

(assert (= (and b!2456397 c!392076) b!2456392))

(assert (= (and b!2456397 (not c!392076)) b!2456400))

(assert (= (and b!2456400 (not res!1041558)) b!2456403))

(assert (= (and b!2456403 res!1041559) b!2456396))

(assert (= (and b!2456396 res!1041556) b!2456399))

(assert (= (and b!2456399 res!1041563) b!2456393))

(assert (= (and b!2456403 (not res!1041561)) b!2456394))

(assert (= (and b!2456394 res!1041562) b!2456398))

(assert (= (and b!2456398 (not res!1041557)) b!2456401))

(assert (= (and b!2456401 (not res!1041560)) b!2456402))

(assert (= (or b!2456391 b!2456396 b!2456398) bm!150928))

(assert (=> b!2456401 m!2826957))

(assert (=> b!2456401 m!2827317))

(assert (=> b!2456401 m!2827317))

(assert (=> b!2456401 m!2827319))

(assert (=> d!707527 m!2826957))

(assert (=> d!707527 m!2826959))

(assert (=> d!707527 m!2826967))

(declare-fun m!2827591 () Bool)

(assert (=> d!707527 m!2827591))

(assert (=> b!2456399 m!2826957))

(assert (=> b!2456399 m!2827317))

(assert (=> b!2456399 m!2827317))

(assert (=> b!2456399 m!2827319))

(assert (=> b!2456395 m!2826957))

(assert (=> b!2456395 m!2827323))

(assert (=> b!2456395 m!2826967))

(assert (=> b!2456395 m!2827323))

(declare-fun m!2827593 () Bool)

(assert (=> b!2456395 m!2827593))

(assert (=> b!2456395 m!2826957))

(assert (=> b!2456395 m!2827317))

(assert (=> b!2456395 m!2827593))

(assert (=> b!2456395 m!2827317))

(declare-fun m!2827595 () Bool)

(assert (=> b!2456395 m!2827595))

(assert (=> b!2456393 m!2826957))

(assert (=> b!2456393 m!2827323))

(assert (=> b!2456390 m!2826967))

(declare-fun m!2827597 () Bool)

(assert (=> b!2456390 m!2827597))

(assert (=> b!2456402 m!2826957))

(assert (=> b!2456402 m!2827323))

(assert (=> bm!150928 m!2826957))

(assert (=> bm!150928 m!2826959))

(assert (=> b!2455551 d!707527))

(declare-fun b!2456404 () Bool)

(declare-fun e!1558532 () Regex!7225)

(declare-fun e!1558531 () Regex!7225)

(assert (=> b!2456404 (= e!1558532 e!1558531)))

(declare-fun c!392078 () Bool)

(assert (=> b!2456404 (= c!392078 ((_ is ElementMatch!7225) r!13927))))

(declare-fun call!150937 () Regex!7225)

(declare-fun c!392082 () Bool)

(declare-fun bm!150929 () Bool)

(declare-fun c!392081 () Bool)

(declare-fun c!392080 () Bool)

(assert (=> bm!150929 (= call!150937 (derivativeStep!1872 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))) (head!5607 s!9460)))))

(declare-fun b!2456405 () Bool)

(assert (=> b!2456405 (= e!1558531 (ite (= (head!5607 s!9460) (c!391797 r!13927)) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!150930 () Bool)

(declare-fun call!150935 () Regex!7225)

(assert (=> bm!150930 (= call!150935 call!150937)))

(declare-fun b!2456406 () Bool)

(declare-fun e!1558535 () Regex!7225)

(assert (=> b!2456406 (= e!1558535 (Concat!11861 call!150935 r!13927))))

(declare-fun call!150936 () Regex!7225)

(declare-fun call!150934 () Regex!7225)

(declare-fun b!2456407 () Bool)

(declare-fun e!1558533 () Regex!7225)

(assert (=> b!2456407 (= e!1558533 (Union!7225 (Concat!11861 call!150936 (regTwo!14962 r!13927)) call!150934))))

(declare-fun d!707529 () Bool)

(declare-fun lt!880355 () Regex!7225)

(assert (=> d!707529 (validRegex!2917 lt!880355)))

(assert (=> d!707529 (= lt!880355 e!1558532)))

(declare-fun c!392079 () Bool)

(assert (=> d!707529 (= c!392079 (or ((_ is EmptyExpr!7225) r!13927) ((_ is EmptyLang!7225) r!13927)))))

(assert (=> d!707529 (validRegex!2917 r!13927)))

(assert (=> d!707529 (= (derivativeStep!1872 r!13927 (head!5607 s!9460)) lt!880355)))

(declare-fun bm!150931 () Bool)

(assert (=> bm!150931 (= call!150936 (derivativeStep!1872 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)) (head!5607 s!9460)))))

(declare-fun b!2456408 () Bool)

(assert (=> b!2456408 (= e!1558533 (Union!7225 (Concat!11861 call!150934 (regTwo!14962 r!13927)) EmptyLang!7225))))

(declare-fun b!2456409 () Bool)

(assert (=> b!2456409 (= e!1558532 EmptyLang!7225)))

(declare-fun b!2456410 () Bool)

(assert (=> b!2456410 (= c!392080 (nullable!2218 (regOne!14962 r!13927)))))

(assert (=> b!2456410 (= e!1558535 e!1558533)))

(declare-fun bm!150932 () Bool)

(assert (=> bm!150932 (= call!150934 call!150935)))

(declare-fun b!2456411 () Bool)

(declare-fun e!1558534 () Regex!7225)

(assert (=> b!2456411 (= e!1558534 (Union!7225 call!150936 call!150937))))

(declare-fun b!2456412 () Bool)

(assert (=> b!2456412 (= c!392082 ((_ is Union!7225) r!13927))))

(assert (=> b!2456412 (= e!1558531 e!1558534)))

(declare-fun b!2456413 () Bool)

(assert (=> b!2456413 (= e!1558534 e!1558535)))

(assert (=> b!2456413 (= c!392081 ((_ is Star!7225) r!13927))))

(assert (= (and d!707529 c!392079) b!2456409))

(assert (= (and d!707529 (not c!392079)) b!2456404))

(assert (= (and b!2456404 c!392078) b!2456405))

(assert (= (and b!2456404 (not c!392078)) b!2456412))

(assert (= (and b!2456412 c!392082) b!2456411))

(assert (= (and b!2456412 (not c!392082)) b!2456413))

(assert (= (and b!2456413 c!392081) b!2456406))

(assert (= (and b!2456413 (not c!392081)) b!2456410))

(assert (= (and b!2456410 c!392080) b!2456407))

(assert (= (and b!2456410 (not c!392080)) b!2456408))

(assert (= (or b!2456407 b!2456408) bm!150932))

(assert (= (or b!2456406 bm!150932) bm!150930))

(assert (= (or b!2456411 b!2456407) bm!150931))

(assert (= (or b!2456411 bm!150930) bm!150929))

(assert (=> bm!150929 m!2826965))

(declare-fun m!2827599 () Bool)

(assert (=> bm!150929 m!2827599))

(declare-fun m!2827601 () Bool)

(assert (=> d!707529 m!2827601))

(assert (=> d!707529 m!2826963))

(assert (=> bm!150931 m!2826965))

(declare-fun m!2827603 () Bool)

(assert (=> bm!150931 m!2827603))

(declare-fun m!2827605 () Bool)

(assert (=> b!2456410 m!2827605))

(assert (=> b!2455551 d!707529))

(assert (=> b!2455551 d!707421))

(assert (=> b!2455551 d!707423))

(declare-fun d!707531 () Bool)

(assert (=> d!707531 (= (nullable!2218 lt!880248) (nullableFct!541 lt!880248))))

(declare-fun bs!465932 () Bool)

(assert (= bs!465932 d!707531))

(declare-fun m!2827607 () Bool)

(assert (=> bs!465932 m!2827607))

(assert (=> b!2455607 d!707531))

(assert (=> d!707275 d!707447))

(assert (=> d!707275 d!707469))

(assert (=> b!2455549 d!707421))

(assert (=> b!2455328 d!707489))

(declare-fun d!707533 () Bool)

(declare-fun lt!880358 () Int)

(assert (=> d!707533 (>= lt!880358 0)))

(declare-fun e!1558538 () Int)

(assert (=> d!707533 (= lt!880358 e!1558538)))

(declare-fun c!392085 () Bool)

(assert (=> d!707533 (= c!392085 ((_ is Nil!28589) lt!880278))))

(assert (=> d!707533 (= (size!22276 lt!880278) lt!880358)))

(declare-fun b!2456418 () Bool)

(assert (=> b!2456418 (= e!1558538 0)))

(declare-fun b!2456419 () Bool)

(assert (=> b!2456419 (= e!1558538 (+ 1 (size!22276 (t!208664 lt!880278))))))

(assert (= (and d!707533 c!392085) b!2456418))

(assert (= (and d!707533 (not c!392085)) b!2456419))

(declare-fun m!2827609 () Bool)

(assert (=> b!2456419 m!2827609))

(assert (=> b!2455396 d!707533))

(declare-fun d!707535 () Bool)

(declare-fun lt!880359 () Int)

(assert (=> d!707535 (>= lt!880359 0)))

(declare-fun e!1558539 () Int)

(assert (=> d!707535 (= lt!880359 e!1558539)))

(declare-fun c!392086 () Bool)

(assert (=> d!707535 (= c!392086 ((_ is Nil!28589) (_1!16630 lt!880243)))))

(assert (=> d!707535 (= (size!22276 (_1!16630 lt!880243)) lt!880359)))

(declare-fun b!2456420 () Bool)

(assert (=> b!2456420 (= e!1558539 0)))

(declare-fun b!2456421 () Bool)

(assert (=> b!2456421 (= e!1558539 (+ 1 (size!22276 (t!208664 (_1!16630 lt!880243)))))))

(assert (= (and d!707535 c!392086) b!2456420))

(assert (= (and d!707535 (not c!392086)) b!2456421))

(assert (=> b!2456421 m!2827495))

(assert (=> b!2455396 d!707535))

(declare-fun d!707537 () Bool)

(declare-fun lt!880360 () Int)

(assert (=> d!707537 (>= lt!880360 0)))

(declare-fun e!1558540 () Int)

(assert (=> d!707537 (= lt!880360 e!1558540)))

(declare-fun c!392087 () Bool)

(assert (=> d!707537 (= c!392087 ((_ is Nil!28589) (_2!16630 lt!880243)))))

(assert (=> d!707537 (= (size!22276 (_2!16630 lt!880243)) lt!880360)))

(declare-fun b!2456422 () Bool)

(assert (=> b!2456422 (= e!1558540 0)))

(declare-fun b!2456423 () Bool)

(assert (=> b!2456423 (= e!1558540 (+ 1 (size!22276 (t!208664 (_2!16630 lt!880243)))))))

(assert (= (and d!707537 c!392087) b!2456422))

(assert (= (and d!707537 (not c!392087)) b!2456423))

(declare-fun m!2827611 () Bool)

(assert (=> b!2456423 m!2827611))

(assert (=> b!2455396 d!707537))

(assert (=> d!707219 d!707453))

(declare-fun bm!150933 () Bool)

(declare-fun call!150938 () Bool)

(declare-fun c!392089 () Bool)

(assert (=> bm!150933 (= call!150938 (validRegex!2917 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun b!2456424 () Bool)

(declare-fun res!1041568 () Bool)

(declare-fun e!1558547 () Bool)

(assert (=> b!2456424 (=> (not res!1041568) (not e!1558547))))

(declare-fun call!150939 () Bool)

(assert (=> b!2456424 (= res!1041568 call!150939)))

(declare-fun e!1558541 () Bool)

(assert (=> b!2456424 (= e!1558541 e!1558547)))

(declare-fun b!2456425 () Bool)

(declare-fun e!1558544 () Bool)

(declare-fun call!150940 () Bool)

(assert (=> b!2456425 (= e!1558544 call!150940)))

(declare-fun bm!150934 () Bool)

(assert (=> bm!150934 (= call!150939 call!150940)))

(declare-fun b!2456426 () Bool)

(declare-fun e!1558543 () Bool)

(assert (=> b!2456426 (= e!1558543 e!1558544)))

(declare-fun res!1041564 () Bool)

(assert (=> b!2456426 (= res!1041564 (not (nullable!2218 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(assert (=> b!2456426 (=> (not res!1041564) (not e!1558544))))

(declare-fun b!2456427 () Bool)

(declare-fun res!1041566 () Bool)

(declare-fun e!1558546 () Bool)

(assert (=> b!2456427 (=> res!1041566 e!1558546)))

(assert (=> b!2456427 (= res!1041566 (not ((_ is Concat!11861) (Concat!11861 lt!880248 EmptyExpr!7225))))))

(assert (=> b!2456427 (= e!1558541 e!1558546)))

(declare-fun b!2456428 () Bool)

(declare-fun e!1558545 () Bool)

(assert (=> b!2456428 (= e!1558546 e!1558545)))

(declare-fun res!1041565 () Bool)

(assert (=> b!2456428 (=> (not res!1041565) (not e!1558545))))

(assert (=> b!2456428 (= res!1041565 call!150938)))

(declare-fun bm!150935 () Bool)

(declare-fun c!392088 () Bool)

(assert (=> bm!150935 (= call!150940 (validRegex!2917 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(declare-fun b!2456430 () Bool)

(assert (=> b!2456430 (= e!1558545 call!150939)))

(declare-fun b!2456431 () Bool)

(assert (=> b!2456431 (= e!1558543 e!1558541)))

(assert (=> b!2456431 (= c!392089 ((_ is Union!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun b!2456432 () Bool)

(declare-fun e!1558542 () Bool)

(assert (=> b!2456432 (= e!1558542 e!1558543)))

(assert (=> b!2456432 (= c!392088 ((_ is Star!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun b!2456429 () Bool)

(assert (=> b!2456429 (= e!1558547 call!150938)))

(declare-fun d!707539 () Bool)

(declare-fun res!1041567 () Bool)

(assert (=> d!707539 (=> res!1041567 e!1558542)))

(assert (=> d!707539 (= res!1041567 ((_ is ElementMatch!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(assert (=> d!707539 (= (validRegex!2917 (Concat!11861 lt!880248 EmptyExpr!7225)) e!1558542)))

(assert (= (and d!707539 (not res!1041567)) b!2456432))

(assert (= (and b!2456432 c!392088) b!2456426))

(assert (= (and b!2456432 (not c!392088)) b!2456431))

(assert (= (and b!2456426 res!1041564) b!2456425))

(assert (= (and b!2456431 c!392089) b!2456424))

(assert (= (and b!2456431 (not c!392089)) b!2456427))

(assert (= (and b!2456424 res!1041568) b!2456429))

(assert (= (and b!2456427 (not res!1041566)) b!2456428))

(assert (= (and b!2456428 res!1041565) b!2456430))

(assert (= (or b!2456424 b!2456430) bm!150934))

(assert (= (or b!2456429 b!2456428) bm!150933))

(assert (= (or b!2456425 bm!150934) bm!150935))

(declare-fun m!2827613 () Bool)

(assert (=> bm!150933 m!2827613))

(declare-fun m!2827615 () Bool)

(assert (=> b!2456426 m!2827615))

(declare-fun m!2827617 () Bool)

(assert (=> bm!150935 m!2827617))

(assert (=> d!707219 d!707539))

(assert (=> b!2455327 d!707519))

(assert (=> b!2455327 d!707491))

(declare-fun b!2456433 () Bool)

(declare-fun e!1558548 () Bool)

(assert (=> b!2456433 (= e!1558548 tp_is_empty!11863)))

(declare-fun b!2456435 () Bool)

(declare-fun tp!781199 () Bool)

(assert (=> b!2456435 (= e!1558548 tp!781199)))

(declare-fun b!2456434 () Bool)

(declare-fun tp!781200 () Bool)

(declare-fun tp!781202 () Bool)

(assert (=> b!2456434 (= e!1558548 (and tp!781200 tp!781202))))

(declare-fun b!2456436 () Bool)

(declare-fun tp!781201 () Bool)

(declare-fun tp!781198 () Bool)

(assert (=> b!2456436 (= e!1558548 (and tp!781201 tp!781198))))

(assert (=> b!2455675 (= tp!781035 e!1558548)))

(assert (= (and b!2455675 ((_ is ElementMatch!7225) (h!33989 (t!208663 l!9164)))) b!2456433))

(assert (= (and b!2455675 ((_ is Concat!11861) (h!33989 (t!208663 l!9164)))) b!2456434))

(assert (= (and b!2455675 ((_ is Star!7225) (h!33989 (t!208663 l!9164)))) b!2456435))

(assert (= (and b!2455675 ((_ is Union!7225) (h!33989 (t!208663 l!9164)))) b!2456436))

(declare-fun b!2456437 () Bool)

(declare-fun e!1558549 () Bool)

(declare-fun tp!781203 () Bool)

(declare-fun tp!781204 () Bool)

(assert (=> b!2456437 (= e!1558549 (and tp!781203 tp!781204))))

(assert (=> b!2455675 (= tp!781036 e!1558549)))

(assert (= (and b!2455675 ((_ is Cons!28588) (t!208663 (t!208663 l!9164)))) b!2456437))

(declare-fun b!2456438 () Bool)

(declare-fun e!1558550 () Bool)

(assert (=> b!2456438 (= e!1558550 tp_is_empty!11863)))

(declare-fun b!2456440 () Bool)

(declare-fun tp!781206 () Bool)

(assert (=> b!2456440 (= e!1558550 tp!781206)))

(declare-fun b!2456439 () Bool)

(declare-fun tp!781207 () Bool)

(declare-fun tp!781209 () Bool)

(assert (=> b!2456439 (= e!1558550 (and tp!781207 tp!781209))))

(declare-fun b!2456441 () Bool)

(declare-fun tp!781208 () Bool)

(declare-fun tp!781205 () Bool)

(assert (=> b!2456441 (= e!1558550 (and tp!781208 tp!781205))))

(assert (=> b!2455650 (= tp!781004 e!1558550)))

(assert (= (and b!2455650 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14962 r!13927)))) b!2456438))

(assert (= (and b!2455650 ((_ is Concat!11861) (regOne!14963 (regOne!14962 r!13927)))) b!2456439))

(assert (= (and b!2455650 ((_ is Star!7225) (regOne!14963 (regOne!14962 r!13927)))) b!2456440))

(assert (= (and b!2455650 ((_ is Union!7225) (regOne!14963 (regOne!14962 r!13927)))) b!2456441))

(declare-fun b!2456442 () Bool)

(declare-fun e!1558551 () Bool)

(assert (=> b!2456442 (= e!1558551 tp_is_empty!11863)))

(declare-fun b!2456444 () Bool)

(declare-fun tp!781211 () Bool)

(assert (=> b!2456444 (= e!1558551 tp!781211)))

(declare-fun b!2456443 () Bool)

(declare-fun tp!781212 () Bool)

(declare-fun tp!781214 () Bool)

(assert (=> b!2456443 (= e!1558551 (and tp!781212 tp!781214))))

(declare-fun b!2456445 () Bool)

(declare-fun tp!781213 () Bool)

(declare-fun tp!781210 () Bool)

(assert (=> b!2456445 (= e!1558551 (and tp!781213 tp!781210))))

(assert (=> b!2455650 (= tp!781001 e!1558551)))

(assert (= (and b!2455650 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14962 r!13927)))) b!2456442))

(assert (= (and b!2455650 ((_ is Concat!11861) (regTwo!14963 (regOne!14962 r!13927)))) b!2456443))

(assert (= (and b!2455650 ((_ is Star!7225) (regTwo!14963 (regOne!14962 r!13927)))) b!2456444))

(assert (= (and b!2455650 ((_ is Union!7225) (regTwo!14963 (regOne!14962 r!13927)))) b!2456445))

(declare-fun b!2456446 () Bool)

(declare-fun e!1558552 () Bool)

(assert (=> b!2456446 (= e!1558552 tp_is_empty!11863)))

(declare-fun b!2456448 () Bool)

(declare-fun tp!781216 () Bool)

(assert (=> b!2456448 (= e!1558552 tp!781216)))

(declare-fun b!2456447 () Bool)

(declare-fun tp!781217 () Bool)

(declare-fun tp!781219 () Bool)

(assert (=> b!2456447 (= e!1558552 (and tp!781217 tp!781219))))

(declare-fun b!2456449 () Bool)

(declare-fun tp!781218 () Bool)

(declare-fun tp!781215 () Bool)

(assert (=> b!2456449 (= e!1558552 (and tp!781218 tp!781215))))

(assert (=> b!2455658 (= tp!781014 e!1558552)))

(assert (= (and b!2455658 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 r!13927)))) b!2456446))

(assert (= (and b!2455658 ((_ is Concat!11861) (regOne!14963 (regOne!14963 r!13927)))) b!2456447))

(assert (= (and b!2455658 ((_ is Star!7225) (regOne!14963 (regOne!14963 r!13927)))) b!2456448))

(assert (= (and b!2455658 ((_ is Union!7225) (regOne!14963 (regOne!14963 r!13927)))) b!2456449))

(declare-fun b!2456450 () Bool)

(declare-fun e!1558553 () Bool)

(assert (=> b!2456450 (= e!1558553 tp_is_empty!11863)))

(declare-fun b!2456452 () Bool)

(declare-fun tp!781221 () Bool)

(assert (=> b!2456452 (= e!1558553 tp!781221)))

(declare-fun b!2456451 () Bool)

(declare-fun tp!781222 () Bool)

(declare-fun tp!781224 () Bool)

(assert (=> b!2456451 (= e!1558553 (and tp!781222 tp!781224))))

(declare-fun b!2456453 () Bool)

(declare-fun tp!781223 () Bool)

(declare-fun tp!781220 () Bool)

(assert (=> b!2456453 (= e!1558553 (and tp!781223 tp!781220))))

(assert (=> b!2455658 (= tp!781011 e!1558553)))

(assert (= (and b!2455658 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 r!13927)))) b!2456450))

(assert (= (and b!2455658 ((_ is Concat!11861) (regTwo!14963 (regOne!14963 r!13927)))) b!2456451))

(assert (= (and b!2455658 ((_ is Star!7225) (regTwo!14963 (regOne!14963 r!13927)))) b!2456452))

(assert (= (and b!2455658 ((_ is Union!7225) (regTwo!14963 (regOne!14963 r!13927)))) b!2456453))

(declare-fun b!2456454 () Bool)

(declare-fun e!1558554 () Bool)

(assert (=> b!2456454 (= e!1558554 tp_is_empty!11863)))

(declare-fun b!2456456 () Bool)

(declare-fun tp!781226 () Bool)

(assert (=> b!2456456 (= e!1558554 tp!781226)))

(declare-fun b!2456455 () Bool)

(declare-fun tp!781227 () Bool)

(declare-fun tp!781229 () Bool)

(assert (=> b!2456455 (= e!1558554 (and tp!781227 tp!781229))))

(declare-fun b!2456457 () Bool)

(declare-fun tp!781228 () Bool)

(declare-fun tp!781225 () Bool)

(assert (=> b!2456457 (= e!1558554 (and tp!781228 tp!781225))))

(assert (=> b!2455653 (= tp!781007 e!1558554)))

(assert (= (and b!2455653 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14962 r!13927)))) b!2456454))

(assert (= (and b!2455653 ((_ is Concat!11861) (reg!7554 (regTwo!14962 r!13927)))) b!2456455))

(assert (= (and b!2455653 ((_ is Star!7225) (reg!7554 (regTwo!14962 r!13927)))) b!2456456))

(assert (= (and b!2455653 ((_ is Union!7225) (reg!7554 (regTwo!14962 r!13927)))) b!2456457))

(declare-fun b!2456458 () Bool)

(declare-fun e!1558555 () Bool)

(assert (=> b!2456458 (= e!1558555 tp_is_empty!11863)))

(declare-fun b!2456460 () Bool)

(declare-fun tp!781231 () Bool)

(assert (=> b!2456460 (= e!1558555 tp!781231)))

(declare-fun b!2456459 () Bool)

(declare-fun tp!781232 () Bool)

(declare-fun tp!781234 () Bool)

(assert (=> b!2456459 (= e!1558555 (and tp!781232 tp!781234))))

(declare-fun b!2456461 () Bool)

(declare-fun tp!781233 () Bool)

(declare-fun tp!781230 () Bool)

(assert (=> b!2456461 (= e!1558555 (and tp!781233 tp!781230))))

(assert (=> b!2455654 (= tp!781009 e!1558555)))

(assert (= (and b!2455654 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14962 r!13927)))) b!2456458))

(assert (= (and b!2455654 ((_ is Concat!11861) (regOne!14963 (regTwo!14962 r!13927)))) b!2456459))

(assert (= (and b!2455654 ((_ is Star!7225) (regOne!14963 (regTwo!14962 r!13927)))) b!2456460))

(assert (= (and b!2455654 ((_ is Union!7225) (regOne!14963 (regTwo!14962 r!13927)))) b!2456461))

(declare-fun b!2456462 () Bool)

(declare-fun e!1558556 () Bool)

(assert (=> b!2456462 (= e!1558556 tp_is_empty!11863)))

(declare-fun b!2456464 () Bool)

(declare-fun tp!781236 () Bool)

(assert (=> b!2456464 (= e!1558556 tp!781236)))

(declare-fun b!2456463 () Bool)

(declare-fun tp!781237 () Bool)

(declare-fun tp!781239 () Bool)

(assert (=> b!2456463 (= e!1558556 (and tp!781237 tp!781239))))

(declare-fun b!2456465 () Bool)

(declare-fun tp!781238 () Bool)

(declare-fun tp!781235 () Bool)

(assert (=> b!2456465 (= e!1558556 (and tp!781238 tp!781235))))

(assert (=> b!2455654 (= tp!781006 e!1558556)))

(assert (= (and b!2455654 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14962 r!13927)))) b!2456462))

(assert (= (and b!2455654 ((_ is Concat!11861) (regTwo!14963 (regTwo!14962 r!13927)))) b!2456463))

(assert (= (and b!2455654 ((_ is Star!7225) (regTwo!14963 (regTwo!14962 r!13927)))) b!2456464))

(assert (= (and b!2455654 ((_ is Union!7225) (regTwo!14963 (regTwo!14962 r!13927)))) b!2456465))

(declare-fun b!2456466 () Bool)

(declare-fun e!1558557 () Bool)

(assert (=> b!2456466 (= e!1558557 tp_is_empty!11863)))

(declare-fun b!2456468 () Bool)

(declare-fun tp!781241 () Bool)

(assert (=> b!2456468 (= e!1558557 tp!781241)))

(declare-fun b!2456467 () Bool)

(declare-fun tp!781242 () Bool)

(declare-fun tp!781244 () Bool)

(assert (=> b!2456467 (= e!1558557 (and tp!781242 tp!781244))))

(declare-fun b!2456469 () Bool)

(declare-fun tp!781243 () Bool)

(declare-fun tp!781240 () Bool)

(assert (=> b!2456469 (= e!1558557 (and tp!781243 tp!781240))))

(assert (=> b!2455649 (= tp!781002 e!1558557)))

(assert (= (and b!2455649 ((_ is ElementMatch!7225) (reg!7554 (regOne!14962 r!13927)))) b!2456466))

(assert (= (and b!2455649 ((_ is Concat!11861) (reg!7554 (regOne!14962 r!13927)))) b!2456467))

(assert (= (and b!2455649 ((_ is Star!7225) (reg!7554 (regOne!14962 r!13927)))) b!2456468))

(assert (= (and b!2455649 ((_ is Union!7225) (reg!7554 (regOne!14962 r!13927)))) b!2456469))

(declare-fun b!2456470 () Bool)

(declare-fun e!1558558 () Bool)

(assert (=> b!2456470 (= e!1558558 tp_is_empty!11863)))

(declare-fun b!2456472 () Bool)

(declare-fun tp!781246 () Bool)

(assert (=> b!2456472 (= e!1558558 tp!781246)))

(declare-fun b!2456471 () Bool)

(declare-fun tp!781247 () Bool)

(declare-fun tp!781249 () Bool)

(assert (=> b!2456471 (= e!1558558 (and tp!781247 tp!781249))))

(declare-fun b!2456473 () Bool)

(declare-fun tp!781248 () Bool)

(declare-fun tp!781245 () Bool)

(assert (=> b!2456473 (= e!1558558 (and tp!781248 tp!781245))))

(assert (=> b!2455652 (= tp!781008 e!1558558)))

(assert (= (and b!2455652 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14962 r!13927)))) b!2456470))

(assert (= (and b!2455652 ((_ is Concat!11861) (regOne!14962 (regTwo!14962 r!13927)))) b!2456471))

(assert (= (and b!2455652 ((_ is Star!7225) (regOne!14962 (regTwo!14962 r!13927)))) b!2456472))

(assert (= (and b!2455652 ((_ is Union!7225) (regOne!14962 (regTwo!14962 r!13927)))) b!2456473))

(declare-fun b!2456474 () Bool)

(declare-fun e!1558559 () Bool)

(assert (=> b!2456474 (= e!1558559 tp_is_empty!11863)))

(declare-fun b!2456476 () Bool)

(declare-fun tp!781251 () Bool)

(assert (=> b!2456476 (= e!1558559 tp!781251)))

(declare-fun b!2456475 () Bool)

(declare-fun tp!781252 () Bool)

(declare-fun tp!781254 () Bool)

(assert (=> b!2456475 (= e!1558559 (and tp!781252 tp!781254))))

(declare-fun b!2456477 () Bool)

(declare-fun tp!781253 () Bool)

(declare-fun tp!781250 () Bool)

(assert (=> b!2456477 (= e!1558559 (and tp!781253 tp!781250))))

(assert (=> b!2455652 (= tp!781010 e!1558559)))

(assert (= (and b!2455652 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14962 r!13927)))) b!2456474))

(assert (= (and b!2455652 ((_ is Concat!11861) (regTwo!14962 (regTwo!14962 r!13927)))) b!2456475))

(assert (= (and b!2455652 ((_ is Star!7225) (regTwo!14962 (regTwo!14962 r!13927)))) b!2456476))

(assert (= (and b!2455652 ((_ is Union!7225) (regTwo!14962 (regTwo!14962 r!13927)))) b!2456477))

(declare-fun b!2456478 () Bool)

(declare-fun e!1558560 () Bool)

(assert (=> b!2456478 (= e!1558560 tp_is_empty!11863)))

(declare-fun b!2456480 () Bool)

(declare-fun tp!781256 () Bool)

(assert (=> b!2456480 (= e!1558560 tp!781256)))

(declare-fun b!2456479 () Bool)

(declare-fun tp!781257 () Bool)

(declare-fun tp!781259 () Bool)

(assert (=> b!2456479 (= e!1558560 (and tp!781257 tp!781259))))

(declare-fun b!2456481 () Bool)

(declare-fun tp!781258 () Bool)

(declare-fun tp!781255 () Bool)

(assert (=> b!2456481 (= e!1558560 (and tp!781258 tp!781255))))

(assert (=> b!2455666 (= tp!781024 e!1558560)))

(assert (= (and b!2455666 ((_ is ElementMatch!7225) (regOne!14963 (reg!7554 r!13927)))) b!2456478))

(assert (= (and b!2455666 ((_ is Concat!11861) (regOne!14963 (reg!7554 r!13927)))) b!2456479))

(assert (= (and b!2455666 ((_ is Star!7225) (regOne!14963 (reg!7554 r!13927)))) b!2456480))

(assert (= (and b!2455666 ((_ is Union!7225) (regOne!14963 (reg!7554 r!13927)))) b!2456481))

(declare-fun b!2456482 () Bool)

(declare-fun e!1558561 () Bool)

(assert (=> b!2456482 (= e!1558561 tp_is_empty!11863)))

(declare-fun b!2456484 () Bool)

(declare-fun tp!781261 () Bool)

(assert (=> b!2456484 (= e!1558561 tp!781261)))

(declare-fun b!2456483 () Bool)

(declare-fun tp!781262 () Bool)

(declare-fun tp!781264 () Bool)

(assert (=> b!2456483 (= e!1558561 (and tp!781262 tp!781264))))

(declare-fun b!2456485 () Bool)

(declare-fun tp!781263 () Bool)

(declare-fun tp!781260 () Bool)

(assert (=> b!2456485 (= e!1558561 (and tp!781263 tp!781260))))

(assert (=> b!2455666 (= tp!781021 e!1558561)))

(assert (= (and b!2455666 ((_ is ElementMatch!7225) (regTwo!14963 (reg!7554 r!13927)))) b!2456482))

(assert (= (and b!2455666 ((_ is Concat!11861) (regTwo!14963 (reg!7554 r!13927)))) b!2456483))

(assert (= (and b!2455666 ((_ is Star!7225) (regTwo!14963 (reg!7554 r!13927)))) b!2456484))

(assert (= (and b!2455666 ((_ is Union!7225) (regTwo!14963 (reg!7554 r!13927)))) b!2456485))

(declare-fun b!2456486 () Bool)

(declare-fun e!1558562 () Bool)

(assert (=> b!2456486 (= e!1558562 tp_is_empty!11863)))

(declare-fun b!2456488 () Bool)

(declare-fun tp!781266 () Bool)

(assert (=> b!2456488 (= e!1558562 tp!781266)))

(declare-fun b!2456487 () Bool)

(declare-fun tp!781267 () Bool)

(declare-fun tp!781269 () Bool)

(assert (=> b!2456487 (= e!1558562 (and tp!781267 tp!781269))))

(declare-fun b!2456489 () Bool)

(declare-fun tp!781268 () Bool)

(declare-fun tp!781265 () Bool)

(assert (=> b!2456489 (= e!1558562 (and tp!781268 tp!781265))))

(assert (=> b!2455661 (= tp!781017 e!1558562)))

(assert (= (and b!2455661 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14963 r!13927)))) b!2456486))

(assert (= (and b!2455661 ((_ is Concat!11861) (reg!7554 (regTwo!14963 r!13927)))) b!2456487))

(assert (= (and b!2455661 ((_ is Star!7225) (reg!7554 (regTwo!14963 r!13927)))) b!2456488))

(assert (= (and b!2455661 ((_ is Union!7225) (reg!7554 (regTwo!14963 r!13927)))) b!2456489))

(declare-fun b!2456490 () Bool)

(declare-fun e!1558563 () Bool)

(assert (=> b!2456490 (= e!1558563 tp_is_empty!11863)))

(declare-fun b!2456492 () Bool)

(declare-fun tp!781271 () Bool)

(assert (=> b!2456492 (= e!1558563 tp!781271)))

(declare-fun b!2456491 () Bool)

(declare-fun tp!781272 () Bool)

(declare-fun tp!781274 () Bool)

(assert (=> b!2456491 (= e!1558563 (and tp!781272 tp!781274))))

(declare-fun b!2456493 () Bool)

(declare-fun tp!781273 () Bool)

(declare-fun tp!781270 () Bool)

(assert (=> b!2456493 (= e!1558563 (and tp!781273 tp!781270))))

(assert (=> b!2455662 (= tp!781019 e!1558563)))

(assert (= (and b!2455662 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 r!13927)))) b!2456490))

(assert (= (and b!2455662 ((_ is Concat!11861) (regOne!14963 (regTwo!14963 r!13927)))) b!2456491))

(assert (= (and b!2455662 ((_ is Star!7225) (regOne!14963 (regTwo!14963 r!13927)))) b!2456492))

(assert (= (and b!2455662 ((_ is Union!7225) (regOne!14963 (regTwo!14963 r!13927)))) b!2456493))

(declare-fun b!2456494 () Bool)

(declare-fun e!1558564 () Bool)

(assert (=> b!2456494 (= e!1558564 tp_is_empty!11863)))

(declare-fun b!2456496 () Bool)

(declare-fun tp!781276 () Bool)

(assert (=> b!2456496 (= e!1558564 tp!781276)))

(declare-fun b!2456495 () Bool)

(declare-fun tp!781277 () Bool)

(declare-fun tp!781279 () Bool)

(assert (=> b!2456495 (= e!1558564 (and tp!781277 tp!781279))))

(declare-fun b!2456497 () Bool)

(declare-fun tp!781278 () Bool)

(declare-fun tp!781275 () Bool)

(assert (=> b!2456497 (= e!1558564 (and tp!781278 tp!781275))))

(assert (=> b!2455662 (= tp!781016 e!1558564)))

(assert (= (and b!2455662 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 r!13927)))) b!2456494))

(assert (= (and b!2455662 ((_ is Concat!11861) (regTwo!14963 (regTwo!14963 r!13927)))) b!2456495))

(assert (= (and b!2455662 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 r!13927)))) b!2456496))

(assert (= (and b!2455662 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 r!13927)))) b!2456497))

(declare-fun b!2456498 () Bool)

(declare-fun e!1558565 () Bool)

(assert (=> b!2456498 (= e!1558565 tp_is_empty!11863)))

(declare-fun b!2456500 () Bool)

(declare-fun tp!781281 () Bool)

(assert (=> b!2456500 (= e!1558565 tp!781281)))

(declare-fun b!2456499 () Bool)

(declare-fun tp!781282 () Bool)

(declare-fun tp!781284 () Bool)

(assert (=> b!2456499 (= e!1558565 (and tp!781282 tp!781284))))

(declare-fun b!2456501 () Bool)

(declare-fun tp!781283 () Bool)

(declare-fun tp!781280 () Bool)

(assert (=> b!2456501 (= e!1558565 (and tp!781283 tp!781280))))

(assert (=> b!2455648 (= tp!781003 e!1558565)))

(assert (= (and b!2455648 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14962 r!13927)))) b!2456498))

(assert (= (and b!2455648 ((_ is Concat!11861) (regOne!14962 (regOne!14962 r!13927)))) b!2456499))

(assert (= (and b!2455648 ((_ is Star!7225) (regOne!14962 (regOne!14962 r!13927)))) b!2456500))

(assert (= (and b!2455648 ((_ is Union!7225) (regOne!14962 (regOne!14962 r!13927)))) b!2456501))

(declare-fun b!2456502 () Bool)

(declare-fun e!1558566 () Bool)

(assert (=> b!2456502 (= e!1558566 tp_is_empty!11863)))

(declare-fun b!2456504 () Bool)

(declare-fun tp!781286 () Bool)

(assert (=> b!2456504 (= e!1558566 tp!781286)))

(declare-fun b!2456503 () Bool)

(declare-fun tp!781287 () Bool)

(declare-fun tp!781289 () Bool)

(assert (=> b!2456503 (= e!1558566 (and tp!781287 tp!781289))))

(declare-fun b!2456505 () Bool)

(declare-fun tp!781288 () Bool)

(declare-fun tp!781285 () Bool)

(assert (=> b!2456505 (= e!1558566 (and tp!781288 tp!781285))))

(assert (=> b!2455648 (= tp!781005 e!1558566)))

(assert (= (and b!2455648 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14962 r!13927)))) b!2456502))

(assert (= (and b!2455648 ((_ is Concat!11861) (regTwo!14962 (regOne!14962 r!13927)))) b!2456503))

(assert (= (and b!2455648 ((_ is Star!7225) (regTwo!14962 (regOne!14962 r!13927)))) b!2456504))

(assert (= (and b!2455648 ((_ is Union!7225) (regTwo!14962 (regOne!14962 r!13927)))) b!2456505))

(declare-fun b!2456506 () Bool)

(declare-fun e!1558567 () Bool)

(assert (=> b!2456506 (= e!1558567 tp_is_empty!11863)))

(declare-fun b!2456508 () Bool)

(declare-fun tp!781291 () Bool)

(assert (=> b!2456508 (= e!1558567 tp!781291)))

(declare-fun b!2456507 () Bool)

(declare-fun tp!781292 () Bool)

(declare-fun tp!781294 () Bool)

(assert (=> b!2456507 (= e!1558567 (and tp!781292 tp!781294))))

(declare-fun b!2456509 () Bool)

(declare-fun tp!781293 () Bool)

(declare-fun tp!781290 () Bool)

(assert (=> b!2456509 (= e!1558567 (and tp!781293 tp!781290))))

(assert (=> b!2455657 (= tp!781012 e!1558567)))

(assert (= (and b!2455657 ((_ is ElementMatch!7225) (reg!7554 (regOne!14963 r!13927)))) b!2456506))

(assert (= (and b!2455657 ((_ is Concat!11861) (reg!7554 (regOne!14963 r!13927)))) b!2456507))

(assert (= (and b!2455657 ((_ is Star!7225) (reg!7554 (regOne!14963 r!13927)))) b!2456508))

(assert (= (and b!2455657 ((_ is Union!7225) (reg!7554 (regOne!14963 r!13927)))) b!2456509))

(declare-fun b!2456510 () Bool)

(declare-fun e!1558568 () Bool)

(declare-fun tp!781295 () Bool)

(assert (=> b!2456510 (= e!1558568 (and tp_is_empty!11863 tp!781295))))

(assert (=> b!2455680 (= tp!781039 e!1558568)))

(assert (= (and b!2455680 ((_ is Cons!28589) (t!208664 (t!208664 s!9460)))) b!2456510))

(declare-fun b!2456511 () Bool)

(declare-fun e!1558569 () Bool)

(assert (=> b!2456511 (= e!1558569 tp_is_empty!11863)))

(declare-fun b!2456513 () Bool)

(declare-fun tp!781297 () Bool)

(assert (=> b!2456513 (= e!1558569 tp!781297)))

(declare-fun b!2456512 () Bool)

(declare-fun tp!781298 () Bool)

(declare-fun tp!781300 () Bool)

(assert (=> b!2456512 (= e!1558569 (and tp!781298 tp!781300))))

(declare-fun b!2456514 () Bool)

(declare-fun tp!781299 () Bool)

(declare-fun tp!781296 () Bool)

(assert (=> b!2456514 (= e!1558569 (and tp!781299 tp!781296))))

(assert (=> b!2455660 (= tp!781018 e!1558569)))

(assert (= (and b!2455660 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14963 r!13927)))) b!2456511))

(assert (= (and b!2455660 ((_ is Concat!11861) (regOne!14962 (regTwo!14963 r!13927)))) b!2456512))

(assert (= (and b!2455660 ((_ is Star!7225) (regOne!14962 (regTwo!14963 r!13927)))) b!2456513))

(assert (= (and b!2455660 ((_ is Union!7225) (regOne!14962 (regTwo!14963 r!13927)))) b!2456514))

(declare-fun b!2456515 () Bool)

(declare-fun e!1558570 () Bool)

(assert (=> b!2456515 (= e!1558570 tp_is_empty!11863)))

(declare-fun b!2456517 () Bool)

(declare-fun tp!781302 () Bool)

(assert (=> b!2456517 (= e!1558570 tp!781302)))

(declare-fun b!2456516 () Bool)

(declare-fun tp!781303 () Bool)

(declare-fun tp!781305 () Bool)

(assert (=> b!2456516 (= e!1558570 (and tp!781303 tp!781305))))

(declare-fun b!2456518 () Bool)

(declare-fun tp!781304 () Bool)

(declare-fun tp!781301 () Bool)

(assert (=> b!2456518 (= e!1558570 (and tp!781304 tp!781301))))

(assert (=> b!2455660 (= tp!781020 e!1558570)))

(assert (= (and b!2455660 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14963 r!13927)))) b!2456515))

(assert (= (and b!2455660 ((_ is Concat!11861) (regTwo!14962 (regTwo!14963 r!13927)))) b!2456516))

(assert (= (and b!2455660 ((_ is Star!7225) (regTwo!14962 (regTwo!14963 r!13927)))) b!2456517))

(assert (= (and b!2455660 ((_ is Union!7225) (regTwo!14962 (regTwo!14963 r!13927)))) b!2456518))

(declare-fun b!2456519 () Bool)

(declare-fun e!1558571 () Bool)

(assert (=> b!2456519 (= e!1558571 tp_is_empty!11863)))

(declare-fun b!2456521 () Bool)

(declare-fun tp!781307 () Bool)

(assert (=> b!2456521 (= e!1558571 tp!781307)))

(declare-fun b!2456520 () Bool)

(declare-fun tp!781308 () Bool)

(declare-fun tp!781310 () Bool)

(assert (=> b!2456520 (= e!1558571 (and tp!781308 tp!781310))))

(declare-fun b!2456522 () Bool)

(declare-fun tp!781309 () Bool)

(declare-fun tp!781306 () Bool)

(assert (=> b!2456522 (= e!1558571 (and tp!781309 tp!781306))))

(assert (=> b!2455669 (= tp!781027 e!1558571)))

(assert (= (and b!2455669 ((_ is ElementMatch!7225) (reg!7554 (h!33989 l!9164)))) b!2456519))

(assert (= (and b!2455669 ((_ is Concat!11861) (reg!7554 (h!33989 l!9164)))) b!2456520))

(assert (= (and b!2455669 ((_ is Star!7225) (reg!7554 (h!33989 l!9164)))) b!2456521))

(assert (= (and b!2455669 ((_ is Union!7225) (reg!7554 (h!33989 l!9164)))) b!2456522))

(declare-fun b!2456523 () Bool)

(declare-fun e!1558572 () Bool)

(assert (=> b!2456523 (= e!1558572 tp_is_empty!11863)))

(declare-fun b!2456525 () Bool)

(declare-fun tp!781312 () Bool)

(assert (=> b!2456525 (= e!1558572 tp!781312)))

(declare-fun b!2456524 () Bool)

(declare-fun tp!781313 () Bool)

(declare-fun tp!781315 () Bool)

(assert (=> b!2456524 (= e!1558572 (and tp!781313 tp!781315))))

(declare-fun b!2456526 () Bool)

(declare-fun tp!781314 () Bool)

(declare-fun tp!781311 () Bool)

(assert (=> b!2456526 (= e!1558572 (and tp!781314 tp!781311))))

(assert (=> b!2455656 (= tp!781013 e!1558572)))

(assert (= (and b!2455656 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14963 r!13927)))) b!2456523))

(assert (= (and b!2455656 ((_ is Concat!11861) (regOne!14962 (regOne!14963 r!13927)))) b!2456524))

(assert (= (and b!2455656 ((_ is Star!7225) (regOne!14962 (regOne!14963 r!13927)))) b!2456525))

(assert (= (and b!2455656 ((_ is Union!7225) (regOne!14962 (regOne!14963 r!13927)))) b!2456526))

(declare-fun b!2456527 () Bool)

(declare-fun e!1558573 () Bool)

(assert (=> b!2456527 (= e!1558573 tp_is_empty!11863)))

(declare-fun b!2456529 () Bool)

(declare-fun tp!781317 () Bool)

(assert (=> b!2456529 (= e!1558573 tp!781317)))

(declare-fun b!2456528 () Bool)

(declare-fun tp!781318 () Bool)

(declare-fun tp!781320 () Bool)

(assert (=> b!2456528 (= e!1558573 (and tp!781318 tp!781320))))

(declare-fun b!2456530 () Bool)

(declare-fun tp!781319 () Bool)

(declare-fun tp!781316 () Bool)

(assert (=> b!2456530 (= e!1558573 (and tp!781319 tp!781316))))

(assert (=> b!2455656 (= tp!781015 e!1558573)))

(assert (= (and b!2455656 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14963 r!13927)))) b!2456527))

(assert (= (and b!2455656 ((_ is Concat!11861) (regTwo!14962 (regOne!14963 r!13927)))) b!2456528))

(assert (= (and b!2455656 ((_ is Star!7225) (regTwo!14962 (regOne!14963 r!13927)))) b!2456529))

(assert (= (and b!2455656 ((_ is Union!7225) (regTwo!14962 (regOne!14963 r!13927)))) b!2456530))

(declare-fun b!2456531 () Bool)

(declare-fun e!1558574 () Bool)

(assert (=> b!2456531 (= e!1558574 tp_is_empty!11863)))

(declare-fun b!2456533 () Bool)

(declare-fun tp!781322 () Bool)

(assert (=> b!2456533 (= e!1558574 tp!781322)))

(declare-fun b!2456532 () Bool)

(declare-fun tp!781323 () Bool)

(declare-fun tp!781325 () Bool)

(assert (=> b!2456532 (= e!1558574 (and tp!781323 tp!781325))))

(declare-fun b!2456534 () Bool)

(declare-fun tp!781324 () Bool)

(declare-fun tp!781321 () Bool)

(assert (=> b!2456534 (= e!1558574 (and tp!781324 tp!781321))))

(assert (=> b!2455670 (= tp!781029 e!1558574)))

(assert (= (and b!2455670 ((_ is ElementMatch!7225) (regOne!14963 (h!33989 l!9164)))) b!2456531))

(assert (= (and b!2455670 ((_ is Concat!11861) (regOne!14963 (h!33989 l!9164)))) b!2456532))

(assert (= (and b!2455670 ((_ is Star!7225) (regOne!14963 (h!33989 l!9164)))) b!2456533))

(assert (= (and b!2455670 ((_ is Union!7225) (regOne!14963 (h!33989 l!9164)))) b!2456534))

(declare-fun b!2456535 () Bool)

(declare-fun e!1558575 () Bool)

(assert (=> b!2456535 (= e!1558575 tp_is_empty!11863)))

(declare-fun b!2456537 () Bool)

(declare-fun tp!781327 () Bool)

(assert (=> b!2456537 (= e!1558575 tp!781327)))

(declare-fun b!2456536 () Bool)

(declare-fun tp!781328 () Bool)

(declare-fun tp!781330 () Bool)

(assert (=> b!2456536 (= e!1558575 (and tp!781328 tp!781330))))

(declare-fun b!2456538 () Bool)

(declare-fun tp!781329 () Bool)

(declare-fun tp!781326 () Bool)

(assert (=> b!2456538 (= e!1558575 (and tp!781329 tp!781326))))

(assert (=> b!2455670 (= tp!781026 e!1558575)))

(assert (= (and b!2455670 ((_ is ElementMatch!7225) (regTwo!14963 (h!33989 l!9164)))) b!2456535))

(assert (= (and b!2455670 ((_ is Concat!11861) (regTwo!14963 (h!33989 l!9164)))) b!2456536))

(assert (= (and b!2455670 ((_ is Star!7225) (regTwo!14963 (h!33989 l!9164)))) b!2456537))

(assert (= (and b!2455670 ((_ is Union!7225) (regTwo!14963 (h!33989 l!9164)))) b!2456538))

(declare-fun b!2456539 () Bool)

(declare-fun e!1558576 () Bool)

(assert (=> b!2456539 (= e!1558576 tp_is_empty!11863)))

(declare-fun b!2456541 () Bool)

(declare-fun tp!781332 () Bool)

(assert (=> b!2456541 (= e!1558576 tp!781332)))

(declare-fun b!2456540 () Bool)

(declare-fun tp!781333 () Bool)

(declare-fun tp!781335 () Bool)

(assert (=> b!2456540 (= e!1558576 (and tp!781333 tp!781335))))

(declare-fun b!2456542 () Bool)

(declare-fun tp!781334 () Bool)

(declare-fun tp!781331 () Bool)

(assert (=> b!2456542 (= e!1558576 (and tp!781334 tp!781331))))

(assert (=> b!2455665 (= tp!781022 e!1558576)))

(assert (= (and b!2455665 ((_ is ElementMatch!7225) (reg!7554 (reg!7554 r!13927)))) b!2456539))

(assert (= (and b!2455665 ((_ is Concat!11861) (reg!7554 (reg!7554 r!13927)))) b!2456540))

(assert (= (and b!2455665 ((_ is Star!7225) (reg!7554 (reg!7554 r!13927)))) b!2456541))

(assert (= (and b!2455665 ((_ is Union!7225) (reg!7554 (reg!7554 r!13927)))) b!2456542))

(declare-fun b!2456543 () Bool)

(declare-fun e!1558577 () Bool)

(assert (=> b!2456543 (= e!1558577 tp_is_empty!11863)))

(declare-fun b!2456545 () Bool)

(declare-fun tp!781337 () Bool)

(assert (=> b!2456545 (= e!1558577 tp!781337)))

(declare-fun b!2456544 () Bool)

(declare-fun tp!781338 () Bool)

(declare-fun tp!781340 () Bool)

(assert (=> b!2456544 (= e!1558577 (and tp!781338 tp!781340))))

(declare-fun b!2456546 () Bool)

(declare-fun tp!781339 () Bool)

(declare-fun tp!781336 () Bool)

(assert (=> b!2456546 (= e!1558577 (and tp!781339 tp!781336))))

(assert (=> b!2455668 (= tp!781028 e!1558577)))

(assert (= (and b!2455668 ((_ is ElementMatch!7225) (regOne!14962 (h!33989 l!9164)))) b!2456543))

(assert (= (and b!2455668 ((_ is Concat!11861) (regOne!14962 (h!33989 l!9164)))) b!2456544))

(assert (= (and b!2455668 ((_ is Star!7225) (regOne!14962 (h!33989 l!9164)))) b!2456545))

(assert (= (and b!2455668 ((_ is Union!7225) (regOne!14962 (h!33989 l!9164)))) b!2456546))

(declare-fun b!2456547 () Bool)

(declare-fun e!1558578 () Bool)

(assert (=> b!2456547 (= e!1558578 tp_is_empty!11863)))

(declare-fun b!2456549 () Bool)

(declare-fun tp!781342 () Bool)

(assert (=> b!2456549 (= e!1558578 tp!781342)))

(declare-fun b!2456548 () Bool)

(declare-fun tp!781343 () Bool)

(declare-fun tp!781345 () Bool)

(assert (=> b!2456548 (= e!1558578 (and tp!781343 tp!781345))))

(declare-fun b!2456550 () Bool)

(declare-fun tp!781344 () Bool)

(declare-fun tp!781341 () Bool)

(assert (=> b!2456550 (= e!1558578 (and tp!781344 tp!781341))))

(assert (=> b!2455668 (= tp!781030 e!1558578)))

(assert (= (and b!2455668 ((_ is ElementMatch!7225) (regTwo!14962 (h!33989 l!9164)))) b!2456547))

(assert (= (and b!2455668 ((_ is Concat!11861) (regTwo!14962 (h!33989 l!9164)))) b!2456548))

(assert (= (and b!2455668 ((_ is Star!7225) (regTwo!14962 (h!33989 l!9164)))) b!2456549))

(assert (= (and b!2455668 ((_ is Union!7225) (regTwo!14962 (h!33989 l!9164)))) b!2456550))

(declare-fun b!2456551 () Bool)

(declare-fun e!1558579 () Bool)

(assert (=> b!2456551 (= e!1558579 tp_is_empty!11863)))

(declare-fun b!2456553 () Bool)

(declare-fun tp!781347 () Bool)

(assert (=> b!2456553 (= e!1558579 tp!781347)))

(declare-fun b!2456552 () Bool)

(declare-fun tp!781348 () Bool)

(declare-fun tp!781350 () Bool)

(assert (=> b!2456552 (= e!1558579 (and tp!781348 tp!781350))))

(declare-fun b!2456554 () Bool)

(declare-fun tp!781349 () Bool)

(declare-fun tp!781346 () Bool)

(assert (=> b!2456554 (= e!1558579 (and tp!781349 tp!781346))))

(assert (=> b!2455664 (= tp!781023 e!1558579)))

(assert (= (and b!2455664 ((_ is ElementMatch!7225) (regOne!14962 (reg!7554 r!13927)))) b!2456551))

(assert (= (and b!2455664 ((_ is Concat!11861) (regOne!14962 (reg!7554 r!13927)))) b!2456552))

(assert (= (and b!2455664 ((_ is Star!7225) (regOne!14962 (reg!7554 r!13927)))) b!2456553))

(assert (= (and b!2455664 ((_ is Union!7225) (regOne!14962 (reg!7554 r!13927)))) b!2456554))

(declare-fun b!2456555 () Bool)

(declare-fun e!1558580 () Bool)

(assert (=> b!2456555 (= e!1558580 tp_is_empty!11863)))

(declare-fun b!2456557 () Bool)

(declare-fun tp!781352 () Bool)

(assert (=> b!2456557 (= e!1558580 tp!781352)))

(declare-fun b!2456556 () Bool)

(declare-fun tp!781353 () Bool)

(declare-fun tp!781355 () Bool)

(assert (=> b!2456556 (= e!1558580 (and tp!781353 tp!781355))))

(declare-fun b!2456558 () Bool)

(declare-fun tp!781354 () Bool)

(declare-fun tp!781351 () Bool)

(assert (=> b!2456558 (= e!1558580 (and tp!781354 tp!781351))))

(assert (=> b!2455664 (= tp!781025 e!1558580)))

(assert (= (and b!2455664 ((_ is ElementMatch!7225) (regTwo!14962 (reg!7554 r!13927)))) b!2456555))

(assert (= (and b!2455664 ((_ is Concat!11861) (regTwo!14962 (reg!7554 r!13927)))) b!2456556))

(assert (= (and b!2455664 ((_ is Star!7225) (regTwo!14962 (reg!7554 r!13927)))) b!2456557))

(assert (= (and b!2455664 ((_ is Union!7225) (regTwo!14962 (reg!7554 r!13927)))) b!2456558))

(declare-fun b_lambda!75177 () Bool)

(assert (= b_lambda!75171 (or start!239606 b_lambda!75177)))

(declare-fun bs!465933 () Bool)

(declare-fun d!707541 () Bool)

(assert (= bs!465933 (and d!707541 start!239606)))

(assert (=> bs!465933 (= (dynLambda!12274 lambda!93015 (h!33989 (t!208663 l!9164))) (validRegex!2917 (h!33989 (t!208663 l!9164))))))

(declare-fun m!2827619 () Bool)

(assert (=> bs!465933 m!2827619))

(assert (=> b!2456201 d!707541))

(declare-fun b_lambda!75179 () Bool)

(assert (= b_lambda!75175 (or d!707253 b_lambda!75179)))

(declare-fun bs!465934 () Bool)

(declare-fun d!707543 () Bool)

(assert (= bs!465934 (and d!707543 d!707253)))

(assert (=> bs!465934 (= (dynLambda!12274 lambda!93028 (h!33989 l!9164)) (validRegex!2917 (h!33989 l!9164)))))

(assert (=> bs!465934 m!2827009))

(assert (=> b!2456384 d!707543))

(declare-fun b_lambda!75181 () Bool)

(assert (= b_lambda!75173 (or d!707281 b_lambda!75181)))

(declare-fun bs!465935 () Bool)

(declare-fun d!707545 () Bool)

(assert (= bs!465935 (and d!707545 d!707281)))

(assert (=> bs!465935 (= (dynLambda!12274 lambda!93035 (h!33989 lt!880247)) (validRegex!2917 (h!33989 lt!880247)))))

(declare-fun m!2827621 () Bool)

(assert (=> bs!465935 m!2827621))

(assert (=> b!2456230 d!707545))

(check-sat (not b_lambda!75177) (not b!2456449) (not b!2456517) (not b!2456518) (not b!2456495) (not b!2456390) tp_is_empty!11863 (not b!2456464) (not b!2456272) (not b!2456513) (not bm!150922) (not b!2456307) (not b!2456237) (not b!2456480) (not b!2456505) (not b!2456231) (not d!707419) (not b!2456514) (not bm!150929) (not b!2456351) (not b!2456372) (not b!2456525) (not b!2456423) (not b!2456507) (not b!2456521) (not b!2456232) (not bm!150913) (not d!707417) (not b!2456452) (not b!2456280) (not b!2456534) (not bm!150927) (not b!2456471) (not b!2456262) (not b!2456459) (not b!2456496) (not bm!150917) (not b!2456322) (not b!2456402) (not b!2456192) (not d!707477) (not b!2456193) (not bm!150903) (not b!2456451) (not d!707513) (not b!2456530) (not b!2456373) (not d!707479) (not d!707467) (not b!2456485) (not b!2456443) (not b!2456493) (not b!2456553) (not b!2456448) (not bm!150924) (not b!2456347) (not b!2456196) (not b!2456545) (not bm!150921) (not b!2456393) (not bs!465933) (not d!707509) (not b_lambda!75179) (not b!2456301) (not b!2456541) (not bm!150919) (not b!2456536) (not bm!150935) (not b!2456296) (not b!2456285) (not b!2456469) (not d!707443) (not b!2456190) (not b!2456176) (not b!2456472) (not b!2456461) (not b!2456533) (not b!2456440) (not b!2456257) (not b!2456123) (not b!2456457) (not b!2456538) (not b!2456189) (not b_lambda!75181) (not b!2456512) (not d!707437) (not b!2456477) (not b!2456305) (not b!2456160) (not b!2456467) (not b!2456500) (not b!2456171) (not bm!150928) (not b!2456460) (not b!2456308) (not b!2456185) (not b!2456479) (not b!2456395) (not b!2456175) (not d!707439) (not b!2456388) (not d!707461) (not b!2456455) (not b!2456540) (not b!2456293) (not b!2456258) (not b!2456503) (not bm!150904) (not b!2456492) (not b!2456549) (not b!2456374) (not b!2456483) (not b!2456548) (not b!2456251) (not b!2456169) (not b!2456125) (not bm!150918) (not b!2456198) (not b!2456194) (not b!2456370) (not b!2456537) (not bm!150911) (not bm!150912) (not bm!150905) (not b!2456255) (not bm!150907) (not b!2456358) (not b!2456516) (not b!2456243) (not b!2456437) (not b!2456488) (not bm!150925) (not b!2456353) (not b!2456529) (not d!707527) (not bm!150892) (not bm!150890) (not b!2456501) (not d!707515) (not b!2456199) (not b!2456447) (not b!2456544) (not b!2456528) (not b!2456327) (not d!707529) (not b!2456299) (not bm!150931) (not b!2456436) (not bm!150900) (not d!707525) (not bs!465935) (not b!2456550) (not b!2456183) (not b!2456241) (not b!2456377) (not b!2456484) (not b!2456188) (not b!2456508) (not b!2456532) (not b!2456200) (not b!2456274) (not b!2456558) (not bm!150902) (not b!2456552) (not b!2456354) (not d!707507) (not b!2456445) (not b!2456235) (not b!2456421) (not b!2456441) (not b!2456473) (not b!2456173) (not b!2456453) (not b!2456366) (not bm!150908) (not b!2456180) (not b!2456522) (not b!2456491) (not b!2456497) (not b!2456294) (not b!2456179) (not b!2456481) (not b!2456410) (not b!2456489) (not b!2456129) (not d!707441) (not b!2456399) (not b!2456526) (not b!2456476) (not b!2456367) (not b!2456186) (not b!2456278) (not b!2456387) (not b!2456342) (not b!2456456) (not b!2456468) (not b!2456281) (not b!2456244) (not b!2456439) (not d!707483) (not b!2456463) (not d!707449) (not b!2456132) (not b!2456557) (not b!2456524) (not b!2456385) (not d!707487) (not b!2456499) (not b!2456487) (not b!2456426) (not bm!150915) (not d!707531) (not b!2456554) (not b!2456542) (not b!2456131) (not b!2456475) (not b!2456333) (not b!2456120) (not b!2456510) (not b!2456465) (not b!2456202) (not b!2456419) (not b!2456434) (not b!2456316) (not b!2456444) (not b!2456504) (not b!2456269) (not b!2456556) (not b!2456401) (not bm!150920) (not d!707435) (not bm!150909) (not d!707485) (not bs!465934) (not b!2456520) (not b!2456249) (not b!2456546) (not bm!150881) (not b!2456368) (not d!707517) (not b_lambda!75157) (not b!2456345) (not bm!150933) (not b!2456246) (not b!2456223) (not b!2456338) (not b!2456509) (not d!707465) (not b!2456435))
(check-sat)
(get-model)

(declare-fun d!707851 () Bool)

(assert (=> d!707851 (= (isEmpty!16618 (tail!3880 (_1!16630 (get!8844 lt!880296)))) ((_ is Nil!28589) (tail!3880 (_1!16630 (get!8844 lt!880296)))))))

(assert (=> b!2456278 d!707851))

(declare-fun d!707853 () Bool)

(assert (=> d!707853 (= (tail!3880 (_1!16630 (get!8844 lt!880296))) (t!208664 (_1!16630 (get!8844 lt!880296))))))

(assert (=> b!2456278 d!707853))

(assert (=> d!707527 d!707433))

(declare-fun c!392288 () Bool)

(declare-fun call!151083 () Bool)

(declare-fun bm!151078 () Bool)

(assert (=> bm!151078 (= call!151083 (validRegex!2917 (ite c!392288 (regTwo!14963 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (regOne!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460))))))))

(declare-fun b!2457839 () Bool)

(declare-fun res!1041836 () Bool)

(declare-fun e!1559153 () Bool)

(assert (=> b!2457839 (=> (not res!1041836) (not e!1559153))))

(declare-fun call!151084 () Bool)

(assert (=> b!2457839 (= res!1041836 call!151084)))

(declare-fun e!1559147 () Bool)

(assert (=> b!2457839 (= e!1559147 e!1559153)))

(declare-fun b!2457840 () Bool)

(declare-fun e!1559150 () Bool)

(declare-fun call!151085 () Bool)

(assert (=> b!2457840 (= e!1559150 call!151085)))

(declare-fun bm!151079 () Bool)

(assert (=> bm!151079 (= call!151084 call!151085)))

(declare-fun b!2457841 () Bool)

(declare-fun e!1559149 () Bool)

(assert (=> b!2457841 (= e!1559149 e!1559150)))

(declare-fun res!1041832 () Bool)

(assert (=> b!2457841 (= res!1041832 (not (nullable!2218 (reg!7554 (derivativeStep!1872 r!13927 (head!5607 s!9460))))))))

(assert (=> b!2457841 (=> (not res!1041832) (not e!1559150))))

(declare-fun b!2457842 () Bool)

(declare-fun res!1041834 () Bool)

(declare-fun e!1559152 () Bool)

(assert (=> b!2457842 (=> res!1041834 e!1559152)))

(assert (=> b!2457842 (= res!1041834 (not ((_ is Concat!11861) (derivativeStep!1872 r!13927 (head!5607 s!9460)))))))

(assert (=> b!2457842 (= e!1559147 e!1559152)))

(declare-fun b!2457843 () Bool)

(declare-fun e!1559151 () Bool)

(assert (=> b!2457843 (= e!1559152 e!1559151)))

(declare-fun res!1041833 () Bool)

(assert (=> b!2457843 (=> (not res!1041833) (not e!1559151))))

(assert (=> b!2457843 (= res!1041833 call!151083)))

(declare-fun bm!151080 () Bool)

(declare-fun c!392287 () Bool)

(assert (=> bm!151080 (= call!151085 (validRegex!2917 (ite c!392287 (reg!7554 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (ite c!392288 (regOne!14963 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (regTwo!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460)))))))))

(declare-fun b!2457845 () Bool)

(assert (=> b!2457845 (= e!1559151 call!151084)))

(declare-fun b!2457846 () Bool)

(assert (=> b!2457846 (= e!1559149 e!1559147)))

(assert (=> b!2457846 (= c!392288 ((_ is Union!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(declare-fun b!2457847 () Bool)

(declare-fun e!1559148 () Bool)

(assert (=> b!2457847 (= e!1559148 e!1559149)))

(assert (=> b!2457847 (= c!392287 ((_ is Star!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(declare-fun b!2457844 () Bool)

(assert (=> b!2457844 (= e!1559153 call!151083)))

(declare-fun d!707855 () Bool)

(declare-fun res!1041835 () Bool)

(assert (=> d!707855 (=> res!1041835 e!1559148)))

(assert (=> d!707855 (= res!1041835 ((_ is ElementMatch!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(assert (=> d!707855 (= (validRegex!2917 (derivativeStep!1872 r!13927 (head!5607 s!9460))) e!1559148)))

(assert (= (and d!707855 (not res!1041835)) b!2457847))

(assert (= (and b!2457847 c!392287) b!2457841))

(assert (= (and b!2457847 (not c!392287)) b!2457846))

(assert (= (and b!2457841 res!1041832) b!2457840))

(assert (= (and b!2457846 c!392288) b!2457839))

(assert (= (and b!2457846 (not c!392288)) b!2457842))

(assert (= (and b!2457839 res!1041836) b!2457844))

(assert (= (and b!2457842 (not res!1041834)) b!2457843))

(assert (= (and b!2457843 res!1041833) b!2457845))

(assert (= (or b!2457839 b!2457845) bm!151079))

(assert (= (or b!2457844 b!2457843) bm!151078))

(assert (= (or b!2457840 bm!151079) bm!151080))

(declare-fun m!2828267 () Bool)

(assert (=> bm!151078 m!2828267))

(declare-fun m!2828269 () Bool)

(assert (=> b!2457841 m!2828269))

(declare-fun m!2828271 () Bool)

(assert (=> bm!151080 m!2828271))

(assert (=> d!707527 d!707855))

(declare-fun d!707857 () Bool)

(assert (=> d!707857 (= (nullable!2218 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (nullableFct!541 (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(declare-fun bs!466045 () Bool)

(assert (= bs!466045 d!707857))

(assert (=> bs!466045 m!2826967))

(declare-fun m!2828273 () Bool)

(assert (=> bs!466045 m!2828273))

(assert (=> b!2456390 d!707857))

(declare-fun b!2457862 () Bool)

(declare-fun e!1559167 () Bool)

(declare-fun e!1559166 () Bool)

(assert (=> b!2457862 (= e!1559167 e!1559166)))

(declare-fun c!392291 () Bool)

(assert (=> b!2457862 (= c!392291 ((_ is Union!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun bm!151085 () Bool)

(declare-fun call!151091 () Bool)

(assert (=> bm!151085 (= call!151091 (nullable!2218 (ite c!392291 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun b!2457863 () Bool)

(declare-fun e!1559171 () Bool)

(assert (=> b!2457863 (= e!1559171 e!1559167)))

(declare-fun res!1041849 () Bool)

(assert (=> b!2457863 (=> res!1041849 e!1559167)))

(assert (=> b!2457863 (= res!1041849 ((_ is Star!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(declare-fun b!2457864 () Bool)

(declare-fun e!1559168 () Bool)

(assert (=> b!2457864 (= e!1559166 e!1559168)))

(declare-fun res!1041848 () Bool)

(declare-fun call!151090 () Bool)

(assert (=> b!2457864 (= res!1041848 call!151090)))

(assert (=> b!2457864 (=> (not res!1041848) (not e!1559168))))

(declare-fun b!2457865 () Bool)

(declare-fun e!1559169 () Bool)

(assert (=> b!2457865 (= e!1559169 e!1559171)))

(declare-fun res!1041851 () Bool)

(assert (=> b!2457865 (=> (not res!1041851) (not e!1559171))))

(assert (=> b!2457865 (= res!1041851 (and (not ((_ is EmptyLang!7225) (Concat!11861 lt!880248 EmptyExpr!7225))) (not ((_ is ElementMatch!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun d!707859 () Bool)

(declare-fun res!1041847 () Bool)

(assert (=> d!707859 (=> res!1041847 e!1559169)))

(assert (=> d!707859 (= res!1041847 ((_ is EmptyExpr!7225) (Concat!11861 lt!880248 EmptyExpr!7225)))))

(assert (=> d!707859 (= (nullableFct!541 (Concat!11861 lt!880248 EmptyExpr!7225)) e!1559169)))

(declare-fun b!2457866 () Bool)

(declare-fun e!1559170 () Bool)

(assert (=> b!2457866 (= e!1559170 call!151090)))

(declare-fun b!2457867 () Bool)

(assert (=> b!2457867 (= e!1559168 call!151091)))

(declare-fun bm!151086 () Bool)

(assert (=> bm!151086 (= call!151090 (nullable!2218 (ite c!392291 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun b!2457868 () Bool)

(assert (=> b!2457868 (= e!1559166 e!1559170)))

(declare-fun res!1041850 () Bool)

(assert (=> b!2457868 (= res!1041850 call!151091)))

(assert (=> b!2457868 (=> res!1041850 e!1559170)))

(assert (= (and d!707859 (not res!1041847)) b!2457865))

(assert (= (and b!2457865 res!1041851) b!2457863))

(assert (= (and b!2457863 (not res!1041849)) b!2457862))

(assert (= (and b!2457862 c!392291) b!2457868))

(assert (= (and b!2457862 (not c!392291)) b!2457864))

(assert (= (and b!2457868 (not res!1041850)) b!2457866))

(assert (= (and b!2457864 res!1041848) b!2457867))

(assert (= (or b!2457868 b!2457867) bm!151085))

(assert (= (or b!2457866 b!2457864) bm!151086))

(declare-fun m!2828275 () Bool)

(assert (=> bm!151085 m!2828275))

(declare-fun m!2828277 () Bool)

(assert (=> bm!151086 m!2828277))

(assert (=> d!707517 d!707859))

(declare-fun b!2457869 () Bool)

(declare-fun e!1559173 () Bool)

(declare-fun e!1559172 () Bool)

(assert (=> b!2457869 (= e!1559173 e!1559172)))

(declare-fun c!392292 () Bool)

(assert (=> b!2457869 (= c!392292 ((_ is Union!7225) lt!880248))))

(declare-fun bm!151087 () Bool)

(declare-fun call!151093 () Bool)

(assert (=> bm!151087 (= call!151093 (nullable!2218 (ite c!392292 (regOne!14963 lt!880248) (regTwo!14962 lt!880248))))))

(declare-fun b!2457870 () Bool)

(declare-fun e!1559177 () Bool)

(assert (=> b!2457870 (= e!1559177 e!1559173)))

(declare-fun res!1041854 () Bool)

(assert (=> b!2457870 (=> res!1041854 e!1559173)))

(assert (=> b!2457870 (= res!1041854 ((_ is Star!7225) lt!880248))))

(declare-fun b!2457871 () Bool)

(declare-fun e!1559174 () Bool)

(assert (=> b!2457871 (= e!1559172 e!1559174)))

(declare-fun res!1041853 () Bool)

(declare-fun call!151092 () Bool)

(assert (=> b!2457871 (= res!1041853 call!151092)))

(assert (=> b!2457871 (=> (not res!1041853) (not e!1559174))))

(declare-fun b!2457872 () Bool)

(declare-fun e!1559175 () Bool)

(assert (=> b!2457872 (= e!1559175 e!1559177)))

(declare-fun res!1041856 () Bool)

(assert (=> b!2457872 (=> (not res!1041856) (not e!1559177))))

(assert (=> b!2457872 (= res!1041856 (and (not ((_ is EmptyLang!7225) lt!880248)) (not ((_ is ElementMatch!7225) lt!880248))))))

(declare-fun d!707861 () Bool)

(declare-fun res!1041852 () Bool)

(assert (=> d!707861 (=> res!1041852 e!1559175)))

(assert (=> d!707861 (= res!1041852 ((_ is EmptyExpr!7225) lt!880248))))

(assert (=> d!707861 (= (nullableFct!541 lt!880248) e!1559175)))

(declare-fun b!2457873 () Bool)

(declare-fun e!1559176 () Bool)

(assert (=> b!2457873 (= e!1559176 call!151092)))

(declare-fun b!2457874 () Bool)

(assert (=> b!2457874 (= e!1559174 call!151093)))

(declare-fun bm!151088 () Bool)

(assert (=> bm!151088 (= call!151092 (nullable!2218 (ite c!392292 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))))))

(declare-fun b!2457875 () Bool)

(assert (=> b!2457875 (= e!1559172 e!1559176)))

(declare-fun res!1041855 () Bool)

(assert (=> b!2457875 (= res!1041855 call!151093)))

(assert (=> b!2457875 (=> res!1041855 e!1559176)))

(assert (= (and d!707861 (not res!1041852)) b!2457872))

(assert (= (and b!2457872 res!1041856) b!2457870))

(assert (= (and b!2457870 (not res!1041854)) b!2457869))

(assert (= (and b!2457869 c!392292) b!2457875))

(assert (= (and b!2457869 (not c!392292)) b!2457871))

(assert (= (and b!2457875 (not res!1041855)) b!2457873))

(assert (= (and b!2457871 res!1041853) b!2457874))

(assert (= (or b!2457875 b!2457874) bm!151087))

(assert (= (or b!2457873 b!2457871) bm!151088))

(declare-fun m!2828279 () Bool)

(assert (=> bm!151087 m!2828279))

(declare-fun m!2828281 () Bool)

(assert (=> bm!151088 m!2828281))

(assert (=> d!707531 d!707861))

(declare-fun d!707863 () Bool)

(assert (=> d!707863 (= (isEmptyExpr!237 lt!880352) ((_ is EmptyExpr!7225) lt!880352))))

(assert (=> b!2456374 d!707863))

(declare-fun c!392294 () Bool)

(declare-fun bm!151089 () Bool)

(declare-fun call!151094 () Bool)

(assert (=> bm!151089 (= call!151094 (validRegex!2917 (ite c!392294 (regTwo!14963 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))) (regOne!14962 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))))))))

(declare-fun b!2457876 () Bool)

(declare-fun res!1041861 () Bool)

(declare-fun e!1559184 () Bool)

(assert (=> b!2457876 (=> (not res!1041861) (not e!1559184))))

(declare-fun call!151095 () Bool)

(assert (=> b!2457876 (= res!1041861 call!151095)))

(declare-fun e!1559178 () Bool)

(assert (=> b!2457876 (= e!1559178 e!1559184)))

(declare-fun b!2457877 () Bool)

(declare-fun e!1559181 () Bool)

(declare-fun call!151096 () Bool)

(assert (=> b!2457877 (= e!1559181 call!151096)))

(declare-fun bm!151090 () Bool)

(assert (=> bm!151090 (= call!151095 call!151096)))

(declare-fun b!2457878 () Bool)

(declare-fun e!1559180 () Bool)

(assert (=> b!2457878 (= e!1559180 e!1559181)))

(declare-fun res!1041857 () Bool)

(assert (=> b!2457878 (= res!1041857 (not (nullable!2218 (reg!7554 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))))))))

(assert (=> b!2457878 (=> (not res!1041857) (not e!1559181))))

(declare-fun b!2457879 () Bool)

(declare-fun res!1041859 () Bool)

(declare-fun e!1559183 () Bool)

(assert (=> b!2457879 (=> res!1041859 e!1559183)))

(assert (=> b!2457879 (= res!1041859 (not ((_ is Concat!11861) (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287)))))))

(assert (=> b!2457879 (= e!1559178 e!1559183)))

(declare-fun b!2457880 () Bool)

(declare-fun e!1559182 () Bool)

(assert (=> b!2457880 (= e!1559183 e!1559182)))

(declare-fun res!1041858 () Bool)

(assert (=> b!2457880 (=> (not res!1041858) (not e!1559182))))

(assert (=> b!2457880 (= res!1041858 call!151094)))

(declare-fun bm!151091 () Bool)

(declare-fun c!392293 () Bool)

(assert (=> bm!151091 (= call!151096 (validRegex!2917 (ite c!392293 (reg!7554 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))) (ite c!392294 (regOne!14963 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))) (regTwo!14962 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287)))))))))

(declare-fun b!2457882 () Bool)

(assert (=> b!2457882 (= e!1559182 call!151095)))

(declare-fun b!2457883 () Bool)

(assert (=> b!2457883 (= e!1559180 e!1559178)))

(assert (=> b!2457883 (= c!392294 ((_ is Union!7225) (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))))))

(declare-fun b!2457884 () Bool)

(declare-fun e!1559179 () Bool)

(assert (=> b!2457884 (= e!1559179 e!1559180)))

(assert (=> b!2457884 (= c!392293 ((_ is Star!7225) (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))))))

(declare-fun b!2457881 () Bool)

(assert (=> b!2457881 (= e!1559184 call!151094)))

(declare-fun d!707865 () Bool)

(declare-fun res!1041860 () Bool)

(assert (=> d!707865 (=> res!1041860 e!1559179)))

(assert (=> d!707865 (= res!1041860 ((_ is ElementMatch!7225) (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))))))

(assert (=> d!707865 (= (validRegex!2917 (ite c!392073 (regTwo!14963 lt!880287) (regOne!14962 lt!880287))) e!1559179)))

(assert (= (and d!707865 (not res!1041860)) b!2457884))

(assert (= (and b!2457884 c!392293) b!2457878))

(assert (= (and b!2457884 (not c!392293)) b!2457883))

(assert (= (and b!2457878 res!1041857) b!2457877))

(assert (= (and b!2457883 c!392294) b!2457876))

(assert (= (and b!2457883 (not c!392294)) b!2457879))

(assert (= (and b!2457876 res!1041861) b!2457881))

(assert (= (and b!2457879 (not res!1041859)) b!2457880))

(assert (= (and b!2457880 res!1041858) b!2457882))

(assert (= (or b!2457876 b!2457882) bm!151090))

(assert (= (or b!2457881 b!2457880) bm!151089))

(assert (= (or b!2457877 bm!151090) bm!151091))

(declare-fun m!2828283 () Bool)

(assert (=> bm!151089 m!2828283))

(declare-fun m!2828285 () Bool)

(assert (=> b!2457878 m!2828285))

(declare-fun m!2828287 () Bool)

(assert (=> bm!151091 m!2828287))

(assert (=> bm!150925 d!707865))

(declare-fun d!707867 () Bool)

(declare-fun lt!880409 () Int)

(assert (=> d!707867 (>= lt!880409 0)))

(declare-fun e!1559185 () Int)

(assert (=> d!707867 (= lt!880409 e!1559185)))

(declare-fun c!392295 () Bool)

(assert (=> d!707867 (= c!392295 ((_ is Nil!28589) lt!880353))))

(assert (=> d!707867 (= (size!22276 lt!880353) lt!880409)))

(declare-fun b!2457885 () Bool)

(assert (=> b!2457885 (= e!1559185 0)))

(declare-fun b!2457886 () Bool)

(assert (=> b!2457886 (= e!1559185 (+ 1 (size!22276 (t!208664 lt!880353))))))

(assert (= (and d!707867 c!392295) b!2457885))

(assert (= (and d!707867 (not c!392295)) b!2457886))

(declare-fun m!2828289 () Bool)

(assert (=> b!2457886 m!2828289))

(assert (=> b!2456388 d!707867))

(declare-fun d!707869 () Bool)

(declare-fun lt!880410 () Int)

(assert (=> d!707869 (>= lt!880410 0)))

(declare-fun e!1559186 () Int)

(assert (=> d!707869 (= lt!880410 e!1559186)))

(declare-fun c!392296 () Bool)

(assert (=> d!707869 (= c!392296 ((_ is Nil!28589) (_1!16630 (get!8844 lt!880296))))))

(assert (=> d!707869 (= (size!22276 (_1!16630 (get!8844 lt!880296))) lt!880410)))

(declare-fun b!2457887 () Bool)

(assert (=> b!2457887 (= e!1559186 0)))

(declare-fun b!2457888 () Bool)

(assert (=> b!2457888 (= e!1559186 (+ 1 (size!22276 (t!208664 (_1!16630 (get!8844 lt!880296))))))))

(assert (= (and d!707869 c!392296) b!2457887))

(assert (= (and d!707869 (not c!392296)) b!2457888))

(declare-fun m!2828291 () Bool)

(assert (=> b!2457888 m!2828291))

(assert (=> b!2456388 d!707869))

(declare-fun d!707871 () Bool)

(declare-fun lt!880411 () Int)

(assert (=> d!707871 (>= lt!880411 0)))

(declare-fun e!1559187 () Int)

(assert (=> d!707871 (= lt!880411 e!1559187)))

(declare-fun c!392297 () Bool)

(assert (=> d!707871 (= c!392297 ((_ is Nil!28589) (_2!16630 (get!8844 lt!880296))))))

(assert (=> d!707871 (= (size!22276 (_2!16630 (get!8844 lt!880296))) lt!880411)))

(declare-fun b!2457889 () Bool)

(assert (=> b!2457889 (= e!1559187 0)))

(declare-fun b!2457890 () Bool)

(assert (=> b!2457890 (= e!1559187 (+ 1 (size!22276 (t!208664 (_2!16630 (get!8844 lt!880296))))))))

(assert (= (and d!707871 c!392297) b!2457889))

(assert (= (and d!707871 (not c!392297)) b!2457890))

(declare-fun m!2828293 () Bool)

(assert (=> b!2457890 m!2828293))

(assert (=> b!2456388 d!707871))

(declare-fun call!151097 () Bool)

(declare-fun bm!151092 () Bool)

(declare-fun c!392299 () Bool)

(assert (=> bm!151092 (= call!151097 (validRegex!2917 (ite c!392299 (regTwo!14963 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))) (regOne!14962 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))))))))

(declare-fun b!2457891 () Bool)

(declare-fun res!1041866 () Bool)

(declare-fun e!1559194 () Bool)

(assert (=> b!2457891 (=> (not res!1041866) (not e!1559194))))

(declare-fun call!151098 () Bool)

(assert (=> b!2457891 (= res!1041866 call!151098)))

(declare-fun e!1559188 () Bool)

(assert (=> b!2457891 (= e!1559188 e!1559194)))

(declare-fun b!2457892 () Bool)

(declare-fun e!1559191 () Bool)

(declare-fun call!151099 () Bool)

(assert (=> b!2457892 (= e!1559191 call!151099)))

(declare-fun bm!151093 () Bool)

(assert (=> bm!151093 (= call!151098 call!151099)))

(declare-fun b!2457893 () Bool)

(declare-fun e!1559190 () Bool)

(assert (=> b!2457893 (= e!1559190 e!1559191)))

(declare-fun res!1041862 () Bool)

(assert (=> b!2457893 (= res!1041862 (not (nullable!2218 (reg!7554 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))))))))

(assert (=> b!2457893 (=> (not res!1041862) (not e!1559191))))

(declare-fun b!2457894 () Bool)

(declare-fun res!1041864 () Bool)

(declare-fun e!1559193 () Bool)

(assert (=> b!2457894 (=> res!1041864 e!1559193)))

(assert (=> b!2457894 (= res!1041864 (not ((_ is Concat!11861) (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164))))))))

(assert (=> b!2457894 (= e!1559188 e!1559193)))

(declare-fun b!2457895 () Bool)

(declare-fun e!1559192 () Bool)

(assert (=> b!2457895 (= e!1559193 e!1559192)))

(declare-fun res!1041863 () Bool)

(assert (=> b!2457895 (=> (not res!1041863) (not e!1559192))))

(assert (=> b!2457895 (= res!1041863 call!151097)))

(declare-fun c!392298 () Bool)

(declare-fun bm!151094 () Bool)

(assert (=> bm!151094 (= call!151099 (validRegex!2917 (ite c!392298 (reg!7554 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))) (ite c!392299 (regOne!14963 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))) (regTwo!14962 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164))))))))))

(declare-fun b!2457897 () Bool)

(assert (=> b!2457897 (= e!1559192 call!151098)))

(declare-fun b!2457898 () Bool)

(assert (=> b!2457898 (= e!1559190 e!1559188)))

(assert (=> b!2457898 (= c!392299 ((_ is Union!7225) (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))))))

(declare-fun b!2457899 () Bool)

(declare-fun e!1559189 () Bool)

(assert (=> b!2457899 (= e!1559189 e!1559190)))

(assert (=> b!2457899 (= c!392298 ((_ is Star!7225) (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))))))

(declare-fun b!2457896 () Bool)

(assert (=> b!2457896 (= e!1559194 call!151097)))

(declare-fun d!707873 () Bool)

(declare-fun res!1041865 () Bool)

(assert (=> d!707873 (=> res!1041865 e!1559189)))

(assert (=> d!707873 (= res!1041865 ((_ is ElementMatch!7225) (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))))))

(assert (=> d!707873 (= (validRegex!2917 (ite c!392067 (regTwo!14963 (h!33989 l!9164)) (regOne!14962 (h!33989 l!9164)))) e!1559189)))

(assert (= (and d!707873 (not res!1041865)) b!2457899))

(assert (= (and b!2457899 c!392298) b!2457893))

(assert (= (and b!2457899 (not c!392298)) b!2457898))

(assert (= (and b!2457893 res!1041862) b!2457892))

(assert (= (and b!2457898 c!392299) b!2457891))

(assert (= (and b!2457898 (not c!392299)) b!2457894))

(assert (= (and b!2457891 res!1041866) b!2457896))

(assert (= (and b!2457894 (not res!1041864)) b!2457895))

(assert (= (and b!2457895 res!1041863) b!2457897))

(assert (= (or b!2457891 b!2457897) bm!151093))

(assert (= (or b!2457896 b!2457895) bm!151092))

(assert (= (or b!2457892 bm!151093) bm!151094))

(declare-fun m!2828295 () Bool)

(assert (=> bm!151092 m!2828295))

(declare-fun m!2828297 () Bool)

(assert (=> b!2457893 m!2828297))

(declare-fun m!2828299 () Bool)

(assert (=> bm!151094 m!2828299))

(assert (=> bm!150922 d!707873))

(declare-fun b!2457903 () Bool)

(declare-fun e!1559196 () Bool)

(declare-fun lt!880412 () List!28687)

(assert (=> b!2457903 (= e!1559196 (or (not (= (t!208664 (t!208664 s!9460)) Nil!28589)) (= lt!880412 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)))))))

(declare-fun b!2457900 () Bool)

(declare-fun e!1559195 () List!28687)

(assert (=> b!2457900 (= e!1559195 (t!208664 (t!208664 s!9460)))))

(declare-fun b!2457902 () Bool)

(declare-fun res!1041867 () Bool)

(assert (=> b!2457902 (=> (not res!1041867) (not e!1559196))))

(assert (=> b!2457902 (= res!1041867 (= (size!22276 lt!880412) (+ (size!22276 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))) (size!22276 (t!208664 (t!208664 s!9460))))))))

(declare-fun b!2457901 () Bool)

(assert (=> b!2457901 (= e!1559195 (Cons!28589 (h!33990 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))) (++!7113 (t!208664 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))) (t!208664 (t!208664 s!9460)))))))

(declare-fun d!707875 () Bool)

(assert (=> d!707875 e!1559196))

(declare-fun res!1041868 () Bool)

(assert (=> d!707875 (=> (not res!1041868) (not e!1559196))))

(assert (=> d!707875 (= res!1041868 (= (content!3938 lt!880412) ((_ map or) (content!3938 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))) (content!3938 (t!208664 (t!208664 s!9460))))))))

(assert (=> d!707875 (= lt!880412 e!1559195)))

(declare-fun c!392300 () Bool)

(assert (=> d!707875 (= c!392300 ((_ is Nil!28589) (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))))))

(assert (=> d!707875 (= (++!7113 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (t!208664 (t!208664 s!9460))) lt!880412)))

(assert (= (and d!707875 c!392300) b!2457900))

(assert (= (and d!707875 (not c!392300)) b!2457901))

(assert (= (and d!707875 res!1041868) b!2457902))

(assert (= (and b!2457902 res!1041867) b!2457903))

(declare-fun m!2828301 () Bool)

(assert (=> b!2457902 m!2828301))

(assert (=> b!2457902 m!2827397))

(declare-fun m!2828303 () Bool)

(assert (=> b!2457902 m!2828303))

(declare-fun m!2828305 () Bool)

(assert (=> b!2457902 m!2828305))

(declare-fun m!2828307 () Bool)

(assert (=> b!2457901 m!2828307))

(declare-fun m!2828309 () Bool)

(assert (=> d!707875 m!2828309))

(assert (=> d!707875 m!2827397))

(declare-fun m!2828311 () Bool)

(assert (=> d!707875 m!2828311))

(declare-fun m!2828313 () Bool)

(assert (=> d!707875 m!2828313))

(assert (=> b!2456186 d!707875))

(declare-fun b!2457907 () Bool)

(declare-fun e!1559198 () Bool)

(declare-fun lt!880413 () List!28687)

(assert (=> b!2457907 (= e!1559198 (or (not (= (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589) Nil!28589)) (= lt!880413 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(declare-fun b!2457904 () Bool)

(declare-fun e!1559197 () List!28687)

(assert (=> b!2457904 (= e!1559197 (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))))

(declare-fun b!2457906 () Bool)

(declare-fun res!1041869 () Bool)

(assert (=> b!2457906 (=> (not res!1041869) (not e!1559198))))

(assert (=> b!2457906 (= res!1041869 (= (size!22276 lt!880413) (+ (size!22276 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (size!22276 (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)))))))

(declare-fun b!2457905 () Bool)

(assert (=> b!2457905 (= e!1559197 (Cons!28589 (h!33990 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (++!7113 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))))))

(declare-fun d!707877 () Bool)

(assert (=> d!707877 e!1559198))

(declare-fun res!1041870 () Bool)

(assert (=> d!707877 (=> (not res!1041870) (not e!1559198))))

(assert (=> d!707877 (= res!1041870 (= (content!3938 lt!880413) ((_ map or) (content!3938 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (content!3938 (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)))))))

(assert (=> d!707877 (= lt!880413 e!1559197)))

(declare-fun c!392301 () Bool)

(assert (=> d!707877 (= c!392301 ((_ is Nil!28589) (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(assert (=> d!707877 (= (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) lt!880413)))

(assert (= (and d!707877 c!392301) b!2457904))

(assert (= (and d!707877 (not c!392301)) b!2457905))

(assert (= (and d!707877 res!1041870) b!2457906))

(assert (= (and b!2457906 res!1041869) b!2457907))

(declare-fun m!2828315 () Bool)

(assert (=> b!2457906 m!2828315))

(assert (=> b!2457906 m!2826947))

(assert (=> b!2457906 m!2827355))

(declare-fun m!2828317 () Bool)

(assert (=> b!2457906 m!2828317))

(declare-fun m!2828319 () Bool)

(assert (=> b!2457905 m!2828319))

(declare-fun m!2828321 () Bool)

(assert (=> d!707877 m!2828321))

(assert (=> d!707877 m!2826947))

(assert (=> d!707877 m!2827363))

(declare-fun m!2828323 () Bool)

(assert (=> d!707877 m!2828323))

(assert (=> b!2456186 d!707877))

(declare-fun d!707879 () Bool)

(assert (=> d!707879 (= (++!7113 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (t!208664 (t!208664 s!9460))) s!9460)))

(declare-fun lt!880414 () Unit!41905)

(assert (=> d!707879 (= lt!880414 (choose!14549 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (h!33990 (t!208664 s!9460)) (t!208664 (t!208664 s!9460)) s!9460))))

(assert (=> d!707879 (= (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) (t!208664 (t!208664 s!9460)))) s!9460)))

(assert (=> d!707879 (= (lemmaMoveElementToOtherListKeepsConcatEq!712 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (h!33990 (t!208664 s!9460)) (t!208664 (t!208664 s!9460)) s!9460) lt!880414)))

(declare-fun bs!466046 () Bool)

(assert (= bs!466046 d!707879))

(assert (=> bs!466046 m!2826947))

(assert (=> bs!466046 m!2827397))

(assert (=> bs!466046 m!2827397))

(assert (=> bs!466046 m!2827399))

(assert (=> bs!466046 m!2826947))

(declare-fun m!2828325 () Bool)

(assert (=> bs!466046 m!2828325))

(assert (=> bs!466046 m!2826947))

(declare-fun m!2828327 () Bool)

(assert (=> bs!466046 m!2828327))

(assert (=> b!2456186 d!707879))

(declare-fun b!2457908 () Bool)

(declare-fun e!1559199 () Option!5700)

(assert (=> b!2457908 (= e!1559199 (Some!5699 (tuple2!28179 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (t!208664 (t!208664 s!9460)))))))

(declare-fun b!2457909 () Bool)

(declare-fun e!1559203 () Bool)

(assert (=> b!2457909 (= e!1559203 (matchR!3340 EmptyExpr!7225 (t!208664 (t!208664 s!9460))))))

(declare-fun b!2457910 () Bool)

(declare-fun e!1559200 () Option!5700)

(assert (=> b!2457910 (= e!1559200 None!5699)))

(declare-fun b!2457912 () Bool)

(declare-fun lt!880416 () Unit!41905)

(declare-fun lt!880415 () Unit!41905)

(assert (=> b!2457912 (= lt!880416 lt!880415)))

(assert (=> b!2457912 (= (++!7113 (++!7113 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (Cons!28589 (h!33990 (t!208664 (t!208664 s!9460))) Nil!28589)) (t!208664 (t!208664 (t!208664 s!9460)))) s!9460)))

(assert (=> b!2457912 (= lt!880415 (lemmaMoveElementToOtherListKeepsConcatEq!712 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (h!33990 (t!208664 (t!208664 s!9460))) (t!208664 (t!208664 (t!208664 s!9460))) s!9460))))

(assert (=> b!2457912 (= e!1559200 (findConcatSeparation!808 lt!880248 EmptyExpr!7225 (++!7113 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (Cons!28589 (h!33990 (t!208664 (t!208664 s!9460))) Nil!28589)) (t!208664 (t!208664 (t!208664 s!9460))) s!9460))))

(declare-fun b!2457913 () Bool)

(assert (=> b!2457913 (= e!1559199 e!1559200)))

(declare-fun c!392302 () Bool)

(assert (=> b!2457913 (= c!392302 ((_ is Nil!28589) (t!208664 (t!208664 s!9460))))))

(declare-fun b!2457914 () Bool)

(declare-fun res!1041874 () Bool)

(declare-fun e!1559202 () Bool)

(assert (=> b!2457914 (=> (not res!1041874) (not e!1559202))))

(declare-fun lt!880417 () Option!5700)

(assert (=> b!2457914 (= res!1041874 (matchR!3340 lt!880248 (_1!16630 (get!8844 lt!880417))))))

(declare-fun d!707881 () Bool)

(declare-fun e!1559201 () Bool)

(assert (=> d!707881 e!1559201))

(declare-fun res!1041872 () Bool)

(assert (=> d!707881 (=> res!1041872 e!1559201)))

(assert (=> d!707881 (= res!1041872 e!1559202)))

(declare-fun res!1041871 () Bool)

(assert (=> d!707881 (=> (not res!1041871) (not e!1559202))))

(assert (=> d!707881 (= res!1041871 (isDefined!4526 lt!880417))))

(assert (=> d!707881 (= lt!880417 e!1559199)))

(declare-fun c!392303 () Bool)

(assert (=> d!707881 (= c!392303 e!1559203)))

(declare-fun res!1041875 () Bool)

(assert (=> d!707881 (=> (not res!1041875) (not e!1559203))))

(assert (=> d!707881 (= res!1041875 (matchR!3340 lt!880248 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589))))))

(assert (=> d!707881 (validRegex!2917 lt!880248)))

(assert (=> d!707881 (= (findConcatSeparation!808 lt!880248 EmptyExpr!7225 (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (Cons!28589 (h!33990 (t!208664 s!9460)) Nil!28589)) (t!208664 (t!208664 s!9460)) s!9460) lt!880417)))

(declare-fun b!2457911 () Bool)

(assert (=> b!2457911 (= e!1559201 (not (isDefined!4526 lt!880417)))))

(declare-fun b!2457915 () Bool)

(assert (=> b!2457915 (= e!1559202 (= (++!7113 (_1!16630 (get!8844 lt!880417)) (_2!16630 (get!8844 lt!880417))) s!9460))))

(declare-fun b!2457916 () Bool)

(declare-fun res!1041873 () Bool)

(assert (=> b!2457916 (=> (not res!1041873) (not e!1559202))))

(assert (=> b!2457916 (= res!1041873 (matchR!3340 EmptyExpr!7225 (_2!16630 (get!8844 lt!880417))))))

(assert (= (and d!707881 res!1041875) b!2457909))

(assert (= (and d!707881 c!392303) b!2457908))

(assert (= (and d!707881 (not c!392303)) b!2457913))

(assert (= (and b!2457913 c!392302) b!2457910))

(assert (= (and b!2457913 (not c!392302)) b!2457912))

(assert (= (and d!707881 res!1041871) b!2457914))

(assert (= (and b!2457914 res!1041874) b!2457916))

(assert (= (and b!2457916 res!1041873) b!2457915))

(assert (= (and d!707881 (not res!1041872)) b!2457911))

(declare-fun m!2828329 () Bool)

(assert (=> b!2457911 m!2828329))

(declare-fun m!2828331 () Bool)

(assert (=> b!2457909 m!2828331))

(declare-fun m!2828333 () Bool)

(assert (=> b!2457914 m!2828333))

(declare-fun m!2828335 () Bool)

(assert (=> b!2457914 m!2828335))

(assert (=> d!707881 m!2828329))

(assert (=> d!707881 m!2827397))

(declare-fun m!2828337 () Bool)

(assert (=> d!707881 m!2828337))

(assert (=> d!707881 m!2826907))

(assert (=> b!2457915 m!2828333))

(declare-fun m!2828339 () Bool)

(assert (=> b!2457915 m!2828339))

(assert (=> b!2457912 m!2827397))

(declare-fun m!2828341 () Bool)

(assert (=> b!2457912 m!2828341))

(assert (=> b!2457912 m!2828341))

(declare-fun m!2828343 () Bool)

(assert (=> b!2457912 m!2828343))

(assert (=> b!2457912 m!2827397))

(declare-fun m!2828345 () Bool)

(assert (=> b!2457912 m!2828345))

(assert (=> b!2457912 m!2828341))

(declare-fun m!2828347 () Bool)

(assert (=> b!2457912 m!2828347))

(assert (=> b!2457916 m!2828333))

(declare-fun m!2828349 () Bool)

(assert (=> b!2457916 m!2828349))

(assert (=> b!2456186 d!707881))

(declare-fun d!707883 () Bool)

(assert (=> d!707883 (= (isEmpty!16618 Nil!28589) true)))

(assert (=> bm!150904 d!707883))

(declare-fun d!707885 () Bool)

(assert (=> d!707885 (= (head!5607 (tail!3880 s!9460)) (h!33990 (tail!3880 s!9460)))))

(assert (=> b!2456393 d!707885))

(declare-fun d!707887 () Bool)

(declare-fun c!392304 () Bool)

(assert (=> d!707887 (= c!392304 ((_ is Nil!28589) lt!880336))))

(declare-fun e!1559204 () (InoxSet C!14608))

(assert (=> d!707887 (= (content!3938 lt!880336) e!1559204)))

(declare-fun b!2457917 () Bool)

(assert (=> b!2457917 (= e!1559204 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2457918 () Bool)

(assert (=> b!2457918 (= e!1559204 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 lt!880336) true) (content!3938 (t!208664 lt!880336))))))

(assert (= (and d!707887 c!392304) b!2457917))

(assert (= (and d!707887 (not c!392304)) b!2457918))

(declare-fun m!2828351 () Bool)

(assert (=> b!2457918 m!2828351))

(declare-fun m!2828353 () Bool)

(assert (=> b!2457918 m!2828353))

(assert (=> d!707437 d!707887))

(declare-fun d!707889 () Bool)

(declare-fun c!392305 () Bool)

(assert (=> d!707889 (= c!392305 ((_ is Nil!28589) (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(declare-fun e!1559205 () (InoxSet C!14608))

(assert (=> d!707889 (= (content!3938 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) e!1559205)))

(declare-fun b!2457919 () Bool)

(assert (=> b!2457919 (= e!1559205 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2457920 () Bool)

(assert (=> b!2457920 (= e!1559205 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) true) (content!3938 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))))

(assert (= (and d!707889 c!392305) b!2457919))

(assert (= (and d!707889 (not c!392305)) b!2457920))

(declare-fun m!2828355 () Bool)

(assert (=> b!2457920 m!2828355))

(declare-fun m!2828357 () Bool)

(assert (=> b!2457920 m!2828357))

(assert (=> d!707437 d!707889))

(declare-fun d!707891 () Bool)

(declare-fun c!392306 () Bool)

(assert (=> d!707891 (= c!392306 ((_ is Nil!28589) (t!208664 s!9460)))))

(declare-fun e!1559206 () (InoxSet C!14608))

(assert (=> d!707891 (= (content!3938 (t!208664 s!9460)) e!1559206)))

(declare-fun b!2457921 () Bool)

(assert (=> b!2457921 (= e!1559206 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2457922 () Bool)

(assert (=> b!2457922 (= e!1559206 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (t!208664 s!9460)) true) (content!3938 (t!208664 (t!208664 s!9460)))))))

(assert (= (and d!707891 c!392306) b!2457921))

(assert (= (and d!707891 (not c!392306)) b!2457922))

(declare-fun m!2828359 () Bool)

(assert (=> b!2457922 m!2828359))

(assert (=> b!2457922 m!2828313))

(assert (=> d!707437 d!707891))

(assert (=> d!707507 d!707447))

(declare-fun d!707893 () Bool)

(assert (=> d!707893 (= (validRegex!2917 EmptyExpr!7225) true)))

(assert (=> d!707507 d!707893))

(declare-fun bm!151095 () Bool)

(declare-fun c!392308 () Bool)

(declare-fun call!151100 () Bool)

(assert (=> bm!151095 (= call!151100 (validRegex!2917 (ite c!392308 (regTwo!14963 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))) (regOne!14962 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))))))))

(declare-fun b!2457923 () Bool)

(declare-fun res!1041880 () Bool)

(declare-fun e!1559213 () Bool)

(assert (=> b!2457923 (=> (not res!1041880) (not e!1559213))))

(declare-fun call!151101 () Bool)

(assert (=> b!2457923 (= res!1041880 call!151101)))

(declare-fun e!1559207 () Bool)

(assert (=> b!2457923 (= e!1559207 e!1559213)))

(declare-fun b!2457924 () Bool)

(declare-fun e!1559210 () Bool)

(declare-fun call!151102 () Bool)

(assert (=> b!2457924 (= e!1559210 call!151102)))

(declare-fun bm!151096 () Bool)

(assert (=> bm!151096 (= call!151101 call!151102)))

(declare-fun b!2457925 () Bool)

(declare-fun e!1559209 () Bool)

(assert (=> b!2457925 (= e!1559209 e!1559210)))

(declare-fun res!1041876 () Bool)

(assert (=> b!2457925 (= res!1041876 (not (nullable!2218 (reg!7554 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))))))))

(assert (=> b!2457925 (=> (not res!1041876) (not e!1559210))))

(declare-fun b!2457926 () Bool)

(declare-fun res!1041878 () Bool)

(declare-fun e!1559212 () Bool)

(assert (=> b!2457926 (=> res!1041878 e!1559212)))

(assert (=> b!2457926 (= res!1041878 (not ((_ is Concat!11861) (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927)))))))

(assert (=> b!2457926 (= e!1559207 e!1559212)))

(declare-fun b!2457927 () Bool)

(declare-fun e!1559211 () Bool)

(assert (=> b!2457927 (= e!1559212 e!1559211)))

(declare-fun res!1041877 () Bool)

(assert (=> b!2457927 (=> (not res!1041877) (not e!1559211))))

(assert (=> b!2457927 (= res!1041877 call!151100)))

(declare-fun c!392307 () Bool)

(declare-fun bm!151097 () Bool)

(assert (=> bm!151097 (= call!151102 (validRegex!2917 (ite c!392307 (reg!7554 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))) (ite c!392308 (regOne!14963 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))) (regTwo!14962 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927)))))))))

(declare-fun b!2457929 () Bool)

(assert (=> b!2457929 (= e!1559211 call!151101)))

(declare-fun b!2457930 () Bool)

(assert (=> b!2457930 (= e!1559209 e!1559207)))

(assert (=> b!2457930 (= c!392308 ((_ is Union!7225) (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))))))

(declare-fun b!2457931 () Bool)

(declare-fun e!1559208 () Bool)

(assert (=> b!2457931 (= e!1559208 e!1559209)))

(assert (=> b!2457931 (= c!392307 ((_ is Star!7225) (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))))))

(declare-fun b!2457928 () Bool)

(assert (=> b!2457928 (= e!1559213 call!151100)))

(declare-fun d!707895 () Bool)

(declare-fun res!1041879 () Bool)

(assert (=> d!707895 (=> res!1041879 e!1559208)))

(assert (=> d!707895 (= res!1041879 ((_ is ElementMatch!7225) (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))))))

(assert (=> d!707895 (= (validRegex!2917 (ite c!392045 (regTwo!14963 r!13927) (regOne!14962 r!13927))) e!1559208)))

(assert (= (and d!707895 (not res!1041879)) b!2457931))

(assert (= (and b!2457931 c!392307) b!2457925))

(assert (= (and b!2457931 (not c!392307)) b!2457930))

(assert (= (and b!2457925 res!1041876) b!2457924))

(assert (= (and b!2457930 c!392308) b!2457923))

(assert (= (and b!2457930 (not c!392308)) b!2457926))

(assert (= (and b!2457923 res!1041880) b!2457928))

(assert (= (and b!2457926 (not res!1041878)) b!2457927))

(assert (= (and b!2457927 res!1041877) b!2457929))

(assert (= (or b!2457923 b!2457929) bm!151096))

(assert (= (or b!2457928 b!2457927) bm!151095))

(assert (= (or b!2457924 bm!151096) bm!151097))

(declare-fun m!2828361 () Bool)

(assert (=> bm!151095 m!2828361))

(declare-fun m!2828363 () Bool)

(assert (=> b!2457925 m!2828363))

(declare-fun m!2828365 () Bool)

(assert (=> bm!151097 m!2828365))

(assert (=> bm!150909 d!707895))

(declare-fun d!707897 () Bool)

(assert (=> d!707897 (= (nullable!2218 EmptyExpr!7225) true)))

(assert (=> b!2456342 d!707897))

(declare-fun b!2457932 () Bool)

(declare-fun e!1559215 () Regex!7225)

(declare-fun e!1559214 () Regex!7225)

(assert (=> b!2457932 (= e!1559215 e!1559214)))

(declare-fun c!392309 () Bool)

(assert (=> b!2457932 (= c!392309 ((_ is ElementMatch!7225) (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))))))

(declare-fun c!392311 () Bool)

(declare-fun call!151106 () Regex!7225)

(declare-fun c!392313 () Bool)

(declare-fun bm!151098 () Bool)

(declare-fun c!392312 () Bool)

(assert (=> bm!151098 (= call!151106 (derivativeStep!1872 (ite c!392313 (regTwo!14963 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))) (ite c!392312 (reg!7554 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))) (ite c!392311 (regTwo!14962 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))) (regOne!14962 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))))) (head!5607 s!9460)))))

(declare-fun b!2457933 () Bool)

(assert (=> b!2457933 (= e!1559214 (ite (= (head!5607 s!9460) (c!391797 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151099 () Bool)

(declare-fun call!151104 () Regex!7225)

(assert (=> bm!151099 (= call!151104 call!151106)))

(declare-fun e!1559218 () Regex!7225)

(declare-fun b!2457934 () Bool)

(assert (=> b!2457934 (= e!1559218 (Concat!11861 call!151104 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))))))

(declare-fun e!1559216 () Regex!7225)

(declare-fun b!2457935 () Bool)

(declare-fun call!151105 () Regex!7225)

(declare-fun call!151103 () Regex!7225)

(assert (=> b!2457935 (= e!1559216 (Union!7225 (Concat!11861 call!151105 (regTwo!14962 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))) call!151103))))

(declare-fun d!707899 () Bool)

(declare-fun lt!880418 () Regex!7225)

(assert (=> d!707899 (validRegex!2917 lt!880418)))

(assert (=> d!707899 (= lt!880418 e!1559215)))

(declare-fun c!392310 () Bool)

(assert (=> d!707899 (= c!392310 (or ((_ is EmptyExpr!7225) (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))) ((_ is EmptyLang!7225) (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))))))

(assert (=> d!707899 (validRegex!2917 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))))

(assert (=> d!707899 (= (derivativeStep!1872 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)) (head!5607 s!9460)) lt!880418)))

(declare-fun bm!151100 () Bool)

(assert (=> bm!151100 (= call!151105 (derivativeStep!1872 (ite c!392313 (regOne!14963 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))) (regOne!14962 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))) (head!5607 s!9460)))))

(declare-fun b!2457936 () Bool)

(assert (=> b!2457936 (= e!1559216 (Union!7225 (Concat!11861 call!151103 (regTwo!14962 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))) EmptyLang!7225))))

(declare-fun b!2457937 () Bool)

(assert (=> b!2457937 (= e!1559215 EmptyLang!7225)))

(declare-fun b!2457938 () Bool)

(assert (=> b!2457938 (= c!392311 (nullable!2218 (regOne!14962 (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927)))))))

(assert (=> b!2457938 (= e!1559218 e!1559216)))

(declare-fun bm!151101 () Bool)

(assert (=> bm!151101 (= call!151103 call!151104)))

(declare-fun b!2457939 () Bool)

(declare-fun e!1559217 () Regex!7225)

(assert (=> b!2457939 (= e!1559217 (Union!7225 call!151105 call!151106))))

(declare-fun b!2457940 () Bool)

(assert (=> b!2457940 (= c!392313 ((_ is Union!7225) (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))))))

(assert (=> b!2457940 (= e!1559214 e!1559217)))

(declare-fun b!2457941 () Bool)

(assert (=> b!2457941 (= e!1559217 e!1559218)))

(assert (=> b!2457941 (= c!392312 ((_ is Star!7225) (ite c!392082 (regOne!14963 r!13927) (regOne!14962 r!13927))))))

(assert (= (and d!707899 c!392310) b!2457937))

(assert (= (and d!707899 (not c!392310)) b!2457932))

(assert (= (and b!2457932 c!392309) b!2457933))

(assert (= (and b!2457932 (not c!392309)) b!2457940))

(assert (= (and b!2457940 c!392313) b!2457939))

(assert (= (and b!2457940 (not c!392313)) b!2457941))

(assert (= (and b!2457941 c!392312) b!2457934))

(assert (= (and b!2457941 (not c!392312)) b!2457938))

(assert (= (and b!2457938 c!392311) b!2457935))

(assert (= (and b!2457938 (not c!392311)) b!2457936))

(assert (= (or b!2457935 b!2457936) bm!151101))

(assert (= (or b!2457934 bm!151101) bm!151099))

(assert (= (or b!2457939 b!2457935) bm!151100))

(assert (= (or b!2457939 bm!151099) bm!151098))

(assert (=> bm!151098 m!2826965))

(declare-fun m!2828367 () Bool)

(assert (=> bm!151098 m!2828367))

(declare-fun m!2828369 () Bool)

(assert (=> d!707899 m!2828369))

(declare-fun m!2828371 () Bool)

(assert (=> d!707899 m!2828371))

(assert (=> bm!151100 m!2826965))

(declare-fun m!2828373 () Bool)

(assert (=> bm!151100 m!2828373))

(declare-fun m!2828375 () Bool)

(assert (=> b!2457938 m!2828375))

(assert (=> bm!150931 d!707899))

(declare-fun d!707901 () Bool)

(assert (=> d!707901 (= (nullable!2218 (reg!7554 (h!33989 l!9164))) (nullableFct!541 (reg!7554 (h!33989 l!9164))))))

(declare-fun bs!466047 () Bool)

(assert (= bs!466047 d!707901))

(declare-fun m!2828377 () Bool)

(assert (=> bs!466047 m!2828377))

(assert (=> b!2456358 d!707901))

(declare-fun b!2457942 () Bool)

(declare-fun e!1559224 () Bool)

(assert (=> b!2457942 (= e!1559224 (nullable!2218 EmptyExpr!7225))))

(declare-fun bm!151102 () Bool)

(declare-fun call!151107 () Bool)

(assert (=> bm!151102 (= call!151107 (isEmpty!16618 (_2!16630 (get!8844 lt!880343))))))

(declare-fun b!2457943 () Bool)

(declare-fun e!1559222 () Bool)

(declare-fun lt!880419 () Bool)

(assert (=> b!2457943 (= e!1559222 (= lt!880419 call!151107))))

(declare-fun b!2457944 () Bool)

(declare-fun e!1559219 () Bool)

(assert (=> b!2457944 (= e!1559219 (not lt!880419))))

(declare-fun b!2457945 () Bool)

(declare-fun e!1559220 () Bool)

(assert (=> b!2457945 (= e!1559220 (= (head!5607 (_2!16630 (get!8844 lt!880343))) (c!391797 EmptyExpr!7225)))))

(declare-fun b!2457946 () Bool)

(declare-fun e!1559223 () Bool)

(declare-fun e!1559225 () Bool)

(assert (=> b!2457946 (= e!1559223 e!1559225)))

(declare-fun res!1041887 () Bool)

(assert (=> b!2457946 (=> (not res!1041887) (not e!1559225))))

(assert (=> b!2457946 (= res!1041887 (not lt!880419))))

(declare-fun b!2457947 () Bool)

(assert (=> b!2457947 (= e!1559224 (matchR!3340 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880343)))) (tail!3880 (_2!16630 (get!8844 lt!880343)))))))

(declare-fun b!2457948 () Bool)

(declare-fun res!1041881 () Bool)

(assert (=> b!2457948 (=> (not res!1041881) (not e!1559220))))

(assert (=> b!2457948 (= res!1041881 (not call!151107))))

(declare-fun b!2457949 () Bool)

(assert (=> b!2457949 (= e!1559222 e!1559219)))

(declare-fun c!392315 () Bool)

(assert (=> b!2457949 (= c!392315 ((_ is EmptyLang!7225) EmptyExpr!7225))))

(declare-fun b!2457950 () Bool)

(declare-fun e!1559221 () Bool)

(assert (=> b!2457950 (= e!1559225 e!1559221)))

(declare-fun res!1041882 () Bool)

(assert (=> b!2457950 (=> res!1041882 e!1559221)))

(assert (=> b!2457950 (= res!1041882 call!151107)))

(declare-fun b!2457951 () Bool)

(declare-fun res!1041888 () Bool)

(assert (=> b!2457951 (=> (not res!1041888) (not e!1559220))))

(assert (=> b!2457951 (= res!1041888 (isEmpty!16618 (tail!3880 (_2!16630 (get!8844 lt!880343)))))))

(declare-fun b!2457952 () Bool)

(declare-fun res!1041883 () Bool)

(assert (=> b!2457952 (=> res!1041883 e!1559223)))

(assert (=> b!2457952 (= res!1041883 (not ((_ is ElementMatch!7225) EmptyExpr!7225)))))

(assert (=> b!2457952 (= e!1559219 e!1559223)))

(declare-fun d!707903 () Bool)

(assert (=> d!707903 e!1559222))

(declare-fun c!392316 () Bool)

(assert (=> d!707903 (= c!392316 ((_ is EmptyExpr!7225) EmptyExpr!7225))))

(assert (=> d!707903 (= lt!880419 e!1559224)))

(declare-fun c!392314 () Bool)

(assert (=> d!707903 (= c!392314 (isEmpty!16618 (_2!16630 (get!8844 lt!880343))))))

(assert (=> d!707903 (validRegex!2917 EmptyExpr!7225)))

(assert (=> d!707903 (= (matchR!3340 EmptyExpr!7225 (_2!16630 (get!8844 lt!880343))) lt!880419)))

(declare-fun b!2457953 () Bool)

(declare-fun res!1041885 () Bool)

(assert (=> b!2457953 (=> res!1041885 e!1559221)))

(assert (=> b!2457953 (= res!1041885 (not (isEmpty!16618 (tail!3880 (_2!16630 (get!8844 lt!880343))))))))

(declare-fun b!2457954 () Bool)

(assert (=> b!2457954 (= e!1559221 (not (= (head!5607 (_2!16630 (get!8844 lt!880343))) (c!391797 EmptyExpr!7225))))))

(declare-fun b!2457955 () Bool)

(declare-fun res!1041886 () Bool)

(assert (=> b!2457955 (=> res!1041886 e!1559223)))

(assert (=> b!2457955 (= res!1041886 e!1559220)))

(declare-fun res!1041884 () Bool)

(assert (=> b!2457955 (=> (not res!1041884) (not e!1559220))))

(assert (=> b!2457955 (= res!1041884 lt!880419)))

(assert (= (and d!707903 c!392314) b!2457942))

(assert (= (and d!707903 (not c!392314)) b!2457947))

(assert (= (and d!707903 c!392316) b!2457943))

(assert (= (and d!707903 (not c!392316)) b!2457949))

(assert (= (and b!2457949 c!392315) b!2457944))

(assert (= (and b!2457949 (not c!392315)) b!2457952))

(assert (= (and b!2457952 (not res!1041883)) b!2457955))

(assert (= (and b!2457955 res!1041884) b!2457948))

(assert (= (and b!2457948 res!1041881) b!2457951))

(assert (= (and b!2457951 res!1041888) b!2457945))

(assert (= (and b!2457955 (not res!1041886)) b!2457946))

(assert (= (and b!2457946 res!1041887) b!2457950))

(assert (= (and b!2457950 (not res!1041882)) b!2457953))

(assert (= (and b!2457953 (not res!1041885)) b!2457954))

(assert (= (or b!2457943 b!2457948 b!2457950) bm!151102))

(declare-fun m!2828379 () Bool)

(assert (=> b!2457953 m!2828379))

(assert (=> b!2457953 m!2828379))

(declare-fun m!2828381 () Bool)

(assert (=> b!2457953 m!2828381))

(declare-fun m!2828383 () Bool)

(assert (=> d!707903 m!2828383))

(assert (=> d!707903 m!2827445))

(assert (=> b!2457951 m!2828379))

(assert (=> b!2457951 m!2828379))

(assert (=> b!2457951 m!2828381))

(declare-fun m!2828385 () Bool)

(assert (=> b!2457947 m!2828385))

(assert (=> b!2457947 m!2828385))

(declare-fun m!2828387 () Bool)

(assert (=> b!2457947 m!2828387))

(assert (=> b!2457947 m!2828379))

(assert (=> b!2457947 m!2828387))

(assert (=> b!2457947 m!2828379))

(declare-fun m!2828389 () Bool)

(assert (=> b!2457947 m!2828389))

(assert (=> b!2457945 m!2828385))

(assert (=> b!2457942 m!2827453))

(assert (=> b!2457954 m!2828385))

(assert (=> bm!151102 m!2828383))

(assert (=> b!2456190 d!707903))

(declare-fun d!707905 () Bool)

(assert (=> d!707905 (= (get!8844 lt!880343) (v!31107 lt!880343))))

(assert (=> b!2456190 d!707905))

(declare-fun d!707907 () Bool)

(assert (=> d!707907 (= (isEmpty!16618 (tail!3880 (tail!3880 s!9460))) ((_ is Nil!28589) (tail!3880 (tail!3880 s!9460))))))

(assert (=> b!2456401 d!707907))

(declare-fun d!707909 () Bool)

(assert (=> d!707909 (= (tail!3880 (tail!3880 s!9460)) (t!208664 (tail!3880 s!9460)))))

(assert (=> b!2456401 d!707909))

(declare-fun b!2457959 () Bool)

(declare-fun e!1559227 () Bool)

(declare-fun lt!880420 () List!28687)

(assert (=> b!2457959 (= e!1559227 (or (not (= (t!208664 s!9460) Nil!28589)) (= lt!880420 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))))

(declare-fun b!2457956 () Bool)

(declare-fun e!1559226 () List!28687)

(assert (=> b!2457956 (= e!1559226 (t!208664 s!9460))))

(declare-fun b!2457958 () Bool)

(declare-fun res!1041889 () Bool)

(assert (=> b!2457958 (=> (not res!1041889) (not e!1559227))))

(assert (=> b!2457958 (= res!1041889 (= (size!22276 lt!880420) (+ (size!22276 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))) (size!22276 (t!208664 s!9460)))))))

(declare-fun b!2457957 () Bool)

(assert (=> b!2457957 (= e!1559226 (Cons!28589 (h!33990 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))) (++!7113 (t!208664 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))) (t!208664 s!9460))))))

(declare-fun d!707911 () Bool)

(assert (=> d!707911 e!1559227))

(declare-fun res!1041890 () Bool)

(assert (=> d!707911 (=> (not res!1041890) (not e!1559227))))

(assert (=> d!707911 (= res!1041890 (= (content!3938 lt!880420) ((_ map or) (content!3938 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))) (content!3938 (t!208664 s!9460)))))))

(assert (=> d!707911 (= lt!880420 e!1559226)))

(declare-fun c!392317 () Bool)

(assert (=> d!707911 (= c!392317 ((_ is Nil!28589) (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(assert (=> d!707911 (= (++!7113 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (t!208664 s!9460)) lt!880420)))

(assert (= (and d!707911 c!392317) b!2457956))

(assert (= (and d!707911 (not c!392317)) b!2457957))

(assert (= (and d!707911 res!1041890) b!2457958))

(assert (= (and b!2457958 res!1041889) b!2457959))

(declare-fun m!2828391 () Bool)

(assert (=> b!2457958 m!2828391))

(declare-fun m!2828393 () Bool)

(assert (=> b!2457958 m!2828393))

(assert (=> b!2457958 m!2827357))

(declare-fun m!2828395 () Bool)

(assert (=> b!2457957 m!2828395))

(declare-fun m!2828397 () Bool)

(assert (=> d!707911 m!2828397))

(assert (=> d!707911 m!2828357))

(assert (=> d!707911 m!2827365))

(assert (=> b!2456175 d!707911))

(declare-fun d!707913 () Bool)

(assert (=> d!707913 (= (nullable!2218 (reg!7554 r!13927)) (nullableFct!541 (reg!7554 r!13927)))))

(declare-fun bs!466048 () Bool)

(assert (= bs!466048 d!707913))

(declare-fun m!2828399 () Bool)

(assert (=> bs!466048 m!2828399))

(assert (=> b!2456285 d!707913))

(assert (=> b!2456345 d!707421))

(declare-fun d!707915 () Bool)

(declare-fun res!1041891 () Bool)

(declare-fun e!1559228 () Bool)

(assert (=> d!707915 (=> res!1041891 e!1559228)))

(assert (=> d!707915 (= res!1041891 ((_ is Nil!28588) (t!208663 (t!208663 l!9164))))))

(assert (=> d!707915 (= (forall!5859 (t!208663 (t!208663 l!9164)) lambda!93015) e!1559228)))

(declare-fun b!2457960 () Bool)

(declare-fun e!1559229 () Bool)

(assert (=> b!2457960 (= e!1559228 e!1559229)))

(declare-fun res!1041892 () Bool)

(assert (=> b!2457960 (=> (not res!1041892) (not e!1559229))))

(assert (=> b!2457960 (= res!1041892 (dynLambda!12274 lambda!93015 (h!33989 (t!208663 (t!208663 l!9164)))))))

(declare-fun b!2457961 () Bool)

(assert (=> b!2457961 (= e!1559229 (forall!5859 (t!208663 (t!208663 (t!208663 l!9164))) lambda!93015))))

(assert (= (and d!707915 (not res!1041891)) b!2457960))

(assert (= (and b!2457960 res!1041892) b!2457961))

(declare-fun b_lambda!75203 () Bool)

(assert (=> (not b_lambda!75203) (not b!2457960)))

(declare-fun m!2828401 () Bool)

(assert (=> b!2457960 m!2828401))

(declare-fun m!2828403 () Bool)

(assert (=> b!2457961 m!2828403))

(assert (=> b!2456202 d!707915))

(declare-fun d!707917 () Bool)

(assert (=> d!707917 (= (nullable!2218 (reg!7554 lt!880287)) (nullableFct!541 (reg!7554 lt!880287)))))

(declare-fun bs!466049 () Bool)

(assert (= bs!466049 d!707917))

(declare-fun m!2828405 () Bool)

(assert (=> bs!466049 m!2828405))

(assert (=> b!2456377 d!707917))

(declare-fun d!707919 () Bool)

(declare-fun res!1041893 () Bool)

(declare-fun e!1559230 () Bool)

(assert (=> d!707919 (=> res!1041893 e!1559230)))

(assert (=> d!707919 (= res!1041893 ((_ is Nil!28588) (t!208663 l!9164)))))

(assert (=> d!707919 (= (forall!5859 (t!208663 l!9164) lambda!93028) e!1559230)))

(declare-fun b!2457962 () Bool)

(declare-fun e!1559231 () Bool)

(assert (=> b!2457962 (= e!1559230 e!1559231)))

(declare-fun res!1041894 () Bool)

(assert (=> b!2457962 (=> (not res!1041894) (not e!1559231))))

(assert (=> b!2457962 (= res!1041894 (dynLambda!12274 lambda!93028 (h!33989 (t!208663 l!9164))))))

(declare-fun b!2457963 () Bool)

(assert (=> b!2457963 (= e!1559231 (forall!5859 (t!208663 (t!208663 l!9164)) lambda!93028))))

(assert (= (and d!707919 (not res!1041893)) b!2457962))

(assert (= (and b!2457962 res!1041894) b!2457963))

(declare-fun b_lambda!75205 () Bool)

(assert (=> (not b_lambda!75205) (not b!2457962)))

(declare-fun m!2828407 () Bool)

(assert (=> b!2457962 m!2828407))

(declare-fun m!2828409 () Bool)

(assert (=> b!2457963 m!2828409))

(assert (=> b!2456385 d!707919))

(assert (=> b!2456353 d!707433))

(assert (=> b!2456353 d!707423))

(declare-fun d!707921 () Bool)

(declare-fun c!392318 () Bool)

(assert (=> d!707921 (= c!392318 ((_ is Nil!28589) lt!880353))))

(declare-fun e!1559232 () (InoxSet C!14608))

(assert (=> d!707921 (= (content!3938 lt!880353) e!1559232)))

(declare-fun b!2457964 () Bool)

(assert (=> b!2457964 (= e!1559232 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2457965 () Bool)

(assert (=> b!2457965 (= e!1559232 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 lt!880353) true) (content!3938 (t!208664 lt!880353))))))

(assert (= (and d!707921 c!392318) b!2457964))

(assert (= (and d!707921 (not c!392318)) b!2457965))

(declare-fun m!2828411 () Bool)

(assert (=> b!2457965 m!2828411))

(declare-fun m!2828413 () Bool)

(assert (=> b!2457965 m!2828413))

(assert (=> d!707525 d!707921))

(declare-fun d!707923 () Bool)

(declare-fun c!392319 () Bool)

(assert (=> d!707923 (= c!392319 ((_ is Nil!28589) (_1!16630 (get!8844 lt!880296))))))

(declare-fun e!1559233 () (InoxSet C!14608))

(assert (=> d!707923 (= (content!3938 (_1!16630 (get!8844 lt!880296))) e!1559233)))

(declare-fun b!2457966 () Bool)

(assert (=> b!2457966 (= e!1559233 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2457967 () Bool)

(assert (=> b!2457967 (= e!1559233 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (_1!16630 (get!8844 lt!880296))) true) (content!3938 (t!208664 (_1!16630 (get!8844 lt!880296))))))))

(assert (= (and d!707923 c!392319) b!2457966))

(assert (= (and d!707923 (not c!392319)) b!2457967))

(declare-fun m!2828415 () Bool)

(assert (=> b!2457967 m!2828415))

(declare-fun m!2828417 () Bool)

(assert (=> b!2457967 m!2828417))

(assert (=> d!707525 d!707923))

(declare-fun d!707925 () Bool)

(declare-fun c!392320 () Bool)

(assert (=> d!707925 (= c!392320 ((_ is Nil!28589) (_2!16630 (get!8844 lt!880296))))))

(declare-fun e!1559234 () (InoxSet C!14608))

(assert (=> d!707925 (= (content!3938 (_2!16630 (get!8844 lt!880296))) e!1559234)))

(declare-fun b!2457968 () Bool)

(assert (=> b!2457968 (= e!1559234 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2457969 () Bool)

(assert (=> b!2457969 (= e!1559234 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (_2!16630 (get!8844 lt!880296))) true) (content!3938 (t!208664 (_2!16630 (get!8844 lt!880296))))))))

(assert (= (and d!707925 c!392320) b!2457968))

(assert (= (and d!707925 (not c!392320)) b!2457969))

(declare-fun m!2828419 () Bool)

(assert (=> b!2457969 m!2828419))

(declare-fun m!2828421 () Bool)

(assert (=> b!2457969 m!2828421))

(assert (=> d!707525 d!707925))

(declare-fun bs!466050 () Bool)

(declare-fun b!2457979 () Bool)

(assert (= bs!466050 (and b!2457979 b!2456329)))

(declare-fun lambda!93058 () Int)

(assert (=> bs!466050 (= (and (= (reg!7554 (regTwo!14963 (regOne!14963 r!13927))) (reg!7554 (regOne!14963 r!13927))) (= (regTwo!14963 (regOne!14963 r!13927)) (regOne!14963 r!13927))) (= lambda!93058 lambda!93043))))

(declare-fun bs!466051 () Bool)

(assert (= bs!466051 (and b!2457979 b!2455601)))

(assert (=> bs!466051 (= (and (= (reg!7554 (regTwo!14963 (regOne!14963 r!13927))) (reg!7554 r!13927)) (= (regTwo!14963 (regOne!14963 r!13927)) r!13927)) (= lambda!93058 lambda!93033))))

(declare-fun bs!466052 () Bool)

(assert (= bs!466052 (and b!2457979 b!2456340)))

(assert (=> bs!466052 (= (and (= (reg!7554 (regTwo!14963 (regOne!14963 r!13927))) (reg!7554 (regTwo!14963 r!13927))) (= (regTwo!14963 (regOne!14963 r!13927)) (regTwo!14963 r!13927))) (= lambda!93058 lambda!93045))))

(declare-fun bs!466053 () Bool)

(assert (= bs!466053 (and b!2457979 b!2456331)))

(assert (=> bs!466053 (not (= lambda!93058 lambda!93046))))

(declare-fun bs!466054 () Bool)

(assert (= bs!466054 (and b!2457979 b!2456320)))

(assert (=> bs!466054 (not (= lambda!93058 lambda!93044))))

(declare-fun bs!466055 () Bool)

(assert (= bs!466055 (and b!2457979 b!2455592)))

(assert (=> bs!466055 (not (= lambda!93058 lambda!93034))))

(assert (=> b!2457979 true))

(assert (=> b!2457979 true))

(declare-fun bs!466056 () Bool)

(declare-fun b!2457970 () Bool)

(assert (= bs!466056 (and b!2457970 b!2456329)))

(declare-fun lambda!93059 () Int)

(assert (=> bs!466056 (not (= lambda!93059 lambda!93043))))

(declare-fun bs!466057 () Bool)

(assert (= bs!466057 (and b!2457970 b!2455601)))

(assert (=> bs!466057 (not (= lambda!93059 lambda!93033))))

(declare-fun bs!466058 () Bool)

(assert (= bs!466058 (and b!2457970 b!2456340)))

(assert (=> bs!466058 (not (= lambda!93059 lambda!93045))))

(declare-fun bs!466059 () Bool)

(assert (= bs!466059 (and b!2457970 b!2457979)))

(assert (=> bs!466059 (not (= lambda!93059 lambda!93058))))

(declare-fun bs!466060 () Bool)

(assert (= bs!466060 (and b!2457970 b!2456331)))

(assert (=> bs!466060 (= (and (= (regOne!14962 (regTwo!14963 (regOne!14963 r!13927))) (regOne!14962 (regTwo!14963 r!13927))) (= (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))) (regTwo!14962 (regTwo!14963 r!13927)))) (= lambda!93059 lambda!93046))))

(declare-fun bs!466061 () Bool)

(assert (= bs!466061 (and b!2457970 b!2456320)))

(assert (=> bs!466061 (= (and (= (regOne!14962 (regTwo!14963 (regOne!14963 r!13927))) (regOne!14962 (regOne!14963 r!13927))) (= (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))) (regTwo!14962 (regOne!14963 r!13927)))) (= lambda!93059 lambda!93044))))

(declare-fun bs!466062 () Bool)

(assert (= bs!466062 (and b!2457970 b!2455592)))

(assert (=> bs!466062 (= (and (= (regOne!14962 (regTwo!14963 (regOne!14963 r!13927))) (regOne!14962 r!13927)) (= (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))) (regTwo!14962 r!13927))) (= lambda!93059 lambda!93034))))

(assert (=> b!2457970 true))

(assert (=> b!2457970 true))

(declare-fun bm!151103 () Bool)

(declare-fun call!151108 () Bool)

(declare-fun c!392321 () Bool)

(assert (=> bm!151103 (= call!151108 (Exists!1244 (ite c!392321 lambda!93058 lambda!93059)))))

(declare-fun e!1559238 () Bool)

(assert (=> b!2457970 (= e!1559238 call!151108)))

(declare-fun b!2457971 () Bool)

(declare-fun c!392323 () Bool)

(assert (=> b!2457971 (= c!392323 ((_ is Union!7225) (regTwo!14963 (regOne!14963 r!13927))))))

(declare-fun e!1559239 () Bool)

(declare-fun e!1559236 () Bool)

(assert (=> b!2457971 (= e!1559239 e!1559236)))

(declare-fun b!2457972 () Bool)

(declare-fun e!1559240 () Bool)

(assert (=> b!2457972 (= e!1559236 e!1559240)))

(declare-fun res!1041897 () Bool)

(assert (=> b!2457972 (= res!1041897 (matchRSpec!1072 (regOne!14963 (regTwo!14963 (regOne!14963 r!13927))) s!9460))))

(assert (=> b!2457972 (=> res!1041897 e!1559240)))

(declare-fun d!707927 () Bool)

(declare-fun c!392322 () Bool)

(assert (=> d!707927 (= c!392322 ((_ is EmptyExpr!7225) (regTwo!14963 (regOne!14963 r!13927))))))

(declare-fun e!1559241 () Bool)

(assert (=> d!707927 (= (matchRSpec!1072 (regTwo!14963 (regOne!14963 r!13927)) s!9460) e!1559241)))

(declare-fun b!2457973 () Bool)

(declare-fun e!1559235 () Bool)

(assert (=> b!2457973 (= e!1559241 e!1559235)))

(declare-fun res!1041896 () Bool)

(assert (=> b!2457973 (= res!1041896 (not ((_ is EmptyLang!7225) (regTwo!14963 (regOne!14963 r!13927)))))))

(assert (=> b!2457973 (=> (not res!1041896) (not e!1559235))))

(declare-fun b!2457974 () Bool)

(assert (=> b!2457974 (= e!1559236 e!1559238)))

(assert (=> b!2457974 (= c!392321 ((_ is Star!7225) (regTwo!14963 (regOne!14963 r!13927))))))

(declare-fun bm!151104 () Bool)

(declare-fun call!151109 () Bool)

(assert (=> bm!151104 (= call!151109 (isEmpty!16618 s!9460))))

(declare-fun b!2457975 () Bool)

(assert (=> b!2457975 (= e!1559241 call!151109)))

(declare-fun b!2457976 () Bool)

(assert (=> b!2457976 (= e!1559239 (= s!9460 (Cons!28589 (c!391797 (regTwo!14963 (regOne!14963 r!13927))) Nil!28589)))))

(declare-fun b!2457977 () Bool)

(assert (=> b!2457977 (= e!1559240 (matchRSpec!1072 (regTwo!14963 (regTwo!14963 (regOne!14963 r!13927))) s!9460))))

(declare-fun b!2457978 () Bool)

(declare-fun c!392324 () Bool)

(assert (=> b!2457978 (= c!392324 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 r!13927))))))

(assert (=> b!2457978 (= e!1559235 e!1559239)))

(declare-fun e!1559237 () Bool)

(assert (=> b!2457979 (= e!1559237 call!151108)))

(declare-fun b!2457980 () Bool)

(declare-fun res!1041895 () Bool)

(assert (=> b!2457980 (=> res!1041895 e!1559237)))

(assert (=> b!2457980 (= res!1041895 call!151109)))

(assert (=> b!2457980 (= e!1559238 e!1559237)))

(assert (= (and d!707927 c!392322) b!2457975))

(assert (= (and d!707927 (not c!392322)) b!2457973))

(assert (= (and b!2457973 res!1041896) b!2457978))

(assert (= (and b!2457978 c!392324) b!2457976))

(assert (= (and b!2457978 (not c!392324)) b!2457971))

(assert (= (and b!2457971 c!392323) b!2457972))

(assert (= (and b!2457971 (not c!392323)) b!2457974))

(assert (= (and b!2457972 (not res!1041897)) b!2457977))

(assert (= (and b!2457974 c!392321) b!2457980))

(assert (= (and b!2457974 (not c!392321)) b!2457970))

(assert (= (and b!2457980 (not res!1041895)) b!2457979))

(assert (= (or b!2457979 b!2457970) bm!151103))

(assert (= (or b!2457975 b!2457980) bm!151104))

(declare-fun m!2828423 () Bool)

(assert (=> bm!151103 m!2828423))

(declare-fun m!2828425 () Bool)

(assert (=> b!2457972 m!2828425))

(assert (=> bm!151104 m!2826961))

(declare-fun m!2828427 () Bool)

(assert (=> b!2457977 m!2828427))

(assert (=> b!2456327 d!707927))

(declare-fun d!707929 () Bool)

(declare-fun c!392325 () Bool)

(assert (=> d!707929 (= c!392325 ((_ is Nil!28589) (t!208664 (_1!16630 lt!880243))))))

(declare-fun e!1559242 () (InoxSet C!14608))

(assert (=> d!707929 (= (content!3938 (t!208664 (_1!16630 lt!880243))) e!1559242)))

(declare-fun b!2457981 () Bool)

(assert (=> b!2457981 (= e!1559242 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2457982 () Bool)

(assert (=> b!2457982 (= e!1559242 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (t!208664 (_1!16630 lt!880243))) true) (content!3938 (t!208664 (t!208664 (_1!16630 lt!880243))))))))

(assert (= (and d!707929 c!392325) b!2457981))

(assert (= (and d!707929 (not c!392325)) b!2457982))

(declare-fun m!2828429 () Bool)

(assert (=> b!2457982 m!2828429))

(declare-fun m!2828431 () Bool)

(assert (=> b!2457982 m!2828431))

(assert (=> b!2456171 d!707929))

(declare-fun d!707931 () Bool)

(assert (=> d!707931 (= (isEmpty!16618 (_1!16630 (get!8844 lt!880296))) ((_ is Nil!28589) (_1!16630 (get!8844 lt!880296))))))

(assert (=> bm!150908 d!707931))

(declare-fun bs!466063 () Bool)

(declare-fun b!2457992 () Bool)

(assert (= bs!466063 (and b!2457992 b!2456329)))

(declare-fun lambda!93060 () Int)

(assert (=> bs!466063 (= (and (= (reg!7554 (regOne!14963 (regTwo!14963 r!13927))) (reg!7554 (regOne!14963 r!13927))) (= (regOne!14963 (regTwo!14963 r!13927)) (regOne!14963 r!13927))) (= lambda!93060 lambda!93043))))

(declare-fun bs!466064 () Bool)

(assert (= bs!466064 (and b!2457992 b!2455601)))

(assert (=> bs!466064 (= (and (= (reg!7554 (regOne!14963 (regTwo!14963 r!13927))) (reg!7554 r!13927)) (= (regOne!14963 (regTwo!14963 r!13927)) r!13927)) (= lambda!93060 lambda!93033))))

(declare-fun bs!466065 () Bool)

(assert (= bs!466065 (and b!2457992 b!2457970)))

(assert (=> bs!466065 (not (= lambda!93060 lambda!93059))))

(declare-fun bs!466066 () Bool)

(assert (= bs!466066 (and b!2457992 b!2456340)))

(assert (=> bs!466066 (= (and (= (reg!7554 (regOne!14963 (regTwo!14963 r!13927))) (reg!7554 (regTwo!14963 r!13927))) (= (regOne!14963 (regTwo!14963 r!13927)) (regTwo!14963 r!13927))) (= lambda!93060 lambda!93045))))

(declare-fun bs!466067 () Bool)

(assert (= bs!466067 (and b!2457992 b!2457979)))

(assert (=> bs!466067 (= (and (= (reg!7554 (regOne!14963 (regTwo!14963 r!13927))) (reg!7554 (regTwo!14963 (regOne!14963 r!13927)))) (= (regOne!14963 (regTwo!14963 r!13927)) (regTwo!14963 (regOne!14963 r!13927)))) (= lambda!93060 lambda!93058))))

(declare-fun bs!466068 () Bool)

(assert (= bs!466068 (and b!2457992 b!2456331)))

(assert (=> bs!466068 (not (= lambda!93060 lambda!93046))))

(declare-fun bs!466069 () Bool)

(assert (= bs!466069 (and b!2457992 b!2456320)))

(assert (=> bs!466069 (not (= lambda!93060 lambda!93044))))

(declare-fun bs!466070 () Bool)

(assert (= bs!466070 (and b!2457992 b!2455592)))

(assert (=> bs!466070 (not (= lambda!93060 lambda!93034))))

(assert (=> b!2457992 true))

(assert (=> b!2457992 true))

(declare-fun bs!466071 () Bool)

(declare-fun b!2457983 () Bool)

(assert (= bs!466071 (and b!2457983 b!2456329)))

(declare-fun lambda!93061 () Int)

(assert (=> bs!466071 (not (= lambda!93061 lambda!93043))))

(declare-fun bs!466072 () Bool)

(assert (= bs!466072 (and b!2457983 b!2457992)))

(assert (=> bs!466072 (not (= lambda!93061 lambda!93060))))

(declare-fun bs!466073 () Bool)

(assert (= bs!466073 (and b!2457983 b!2455601)))

(assert (=> bs!466073 (not (= lambda!93061 lambda!93033))))

(declare-fun bs!466074 () Bool)

(assert (= bs!466074 (and b!2457983 b!2457970)))

(assert (=> bs!466074 (= (and (= (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))) (regOne!14962 (regTwo!14963 (regOne!14963 r!13927)))) (= (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))) (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))))) (= lambda!93061 lambda!93059))))

(declare-fun bs!466075 () Bool)

(assert (= bs!466075 (and b!2457983 b!2456340)))

(assert (=> bs!466075 (not (= lambda!93061 lambda!93045))))

(declare-fun bs!466076 () Bool)

(assert (= bs!466076 (and b!2457983 b!2457979)))

(assert (=> bs!466076 (not (= lambda!93061 lambda!93058))))

(declare-fun bs!466077 () Bool)

(assert (= bs!466077 (and b!2457983 b!2456331)))

(assert (=> bs!466077 (= (and (= (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))) (regOne!14962 (regTwo!14963 r!13927))) (= (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))) (regTwo!14962 (regTwo!14963 r!13927)))) (= lambda!93061 lambda!93046))))

(declare-fun bs!466078 () Bool)

(assert (= bs!466078 (and b!2457983 b!2456320)))

(assert (=> bs!466078 (= (and (= (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))) (regOne!14962 (regOne!14963 r!13927))) (= (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))) (regTwo!14962 (regOne!14963 r!13927)))) (= lambda!93061 lambda!93044))))

(declare-fun bs!466079 () Bool)

(assert (= bs!466079 (and b!2457983 b!2455592)))

(assert (=> bs!466079 (= (and (= (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))) (regOne!14962 r!13927)) (= (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))) (regTwo!14962 r!13927))) (= lambda!93061 lambda!93034))))

(assert (=> b!2457983 true))

(assert (=> b!2457983 true))

(declare-fun call!151110 () Bool)

(declare-fun bm!151105 () Bool)

(declare-fun c!392326 () Bool)

(assert (=> bm!151105 (= call!151110 (Exists!1244 (ite c!392326 lambda!93060 lambda!93061)))))

(declare-fun e!1559246 () Bool)

(assert (=> b!2457983 (= e!1559246 call!151110)))

(declare-fun b!2457984 () Bool)

(declare-fun c!392328 () Bool)

(assert (=> b!2457984 (= c!392328 ((_ is Union!7225) (regOne!14963 (regTwo!14963 r!13927))))))

(declare-fun e!1559247 () Bool)

(declare-fun e!1559244 () Bool)

(assert (=> b!2457984 (= e!1559247 e!1559244)))

(declare-fun b!2457985 () Bool)

(declare-fun e!1559248 () Bool)

(assert (=> b!2457985 (= e!1559244 e!1559248)))

(declare-fun res!1041900 () Bool)

(assert (=> b!2457985 (= res!1041900 (matchRSpec!1072 (regOne!14963 (regOne!14963 (regTwo!14963 r!13927))) s!9460))))

(assert (=> b!2457985 (=> res!1041900 e!1559248)))

(declare-fun d!707933 () Bool)

(declare-fun c!392327 () Bool)

(assert (=> d!707933 (= c!392327 ((_ is EmptyExpr!7225) (regOne!14963 (regTwo!14963 r!13927))))))

(declare-fun e!1559249 () Bool)

(assert (=> d!707933 (= (matchRSpec!1072 (regOne!14963 (regTwo!14963 r!13927)) s!9460) e!1559249)))

(declare-fun b!2457986 () Bool)

(declare-fun e!1559243 () Bool)

(assert (=> b!2457986 (= e!1559249 e!1559243)))

(declare-fun res!1041899 () Bool)

(assert (=> b!2457986 (= res!1041899 (not ((_ is EmptyLang!7225) (regOne!14963 (regTwo!14963 r!13927)))))))

(assert (=> b!2457986 (=> (not res!1041899) (not e!1559243))))

(declare-fun b!2457987 () Bool)

(assert (=> b!2457987 (= e!1559244 e!1559246)))

(assert (=> b!2457987 (= c!392326 ((_ is Star!7225) (regOne!14963 (regTwo!14963 r!13927))))))

(declare-fun bm!151106 () Bool)

(declare-fun call!151111 () Bool)

(assert (=> bm!151106 (= call!151111 (isEmpty!16618 s!9460))))

(declare-fun b!2457988 () Bool)

(assert (=> b!2457988 (= e!1559249 call!151111)))

(declare-fun b!2457989 () Bool)

(assert (=> b!2457989 (= e!1559247 (= s!9460 (Cons!28589 (c!391797 (regOne!14963 (regTwo!14963 r!13927))) Nil!28589)))))

(declare-fun b!2457990 () Bool)

(assert (=> b!2457990 (= e!1559248 (matchRSpec!1072 (regTwo!14963 (regOne!14963 (regTwo!14963 r!13927))) s!9460))))

(declare-fun b!2457991 () Bool)

(declare-fun c!392329 () Bool)

(assert (=> b!2457991 (= c!392329 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 r!13927))))))

(assert (=> b!2457991 (= e!1559243 e!1559247)))

(declare-fun e!1559245 () Bool)

(assert (=> b!2457992 (= e!1559245 call!151110)))

(declare-fun b!2457993 () Bool)

(declare-fun res!1041898 () Bool)

(assert (=> b!2457993 (=> res!1041898 e!1559245)))

(assert (=> b!2457993 (= res!1041898 call!151111)))

(assert (=> b!2457993 (= e!1559246 e!1559245)))

(assert (= (and d!707933 c!392327) b!2457988))

(assert (= (and d!707933 (not c!392327)) b!2457986))

(assert (= (and b!2457986 res!1041899) b!2457991))

(assert (= (and b!2457991 c!392329) b!2457989))

(assert (= (and b!2457991 (not c!392329)) b!2457984))

(assert (= (and b!2457984 c!392328) b!2457985))

(assert (= (and b!2457984 (not c!392328)) b!2457987))

(assert (= (and b!2457985 (not res!1041900)) b!2457990))

(assert (= (and b!2457987 c!392326) b!2457993))

(assert (= (and b!2457987 (not c!392326)) b!2457983))

(assert (= (and b!2457993 (not res!1041898)) b!2457992))

(assert (= (or b!2457992 b!2457983) bm!151105))

(assert (= (or b!2457988 b!2457993) bm!151106))

(declare-fun m!2828433 () Bool)

(assert (=> bm!151105 m!2828433))

(declare-fun m!2828435 () Bool)

(assert (=> b!2457985 m!2828435))

(assert (=> bm!151106 m!2826961))

(declare-fun m!2828437 () Bool)

(assert (=> b!2457990 m!2828437))

(assert (=> b!2456333 d!707933))

(declare-fun b!2457994 () Bool)

(declare-fun e!1559255 () Bool)

(assert (=> b!2457994 (= e!1559255 (nullable!2218 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296))))))))

(declare-fun bm!151107 () Bool)

(declare-fun call!151112 () Bool)

(assert (=> bm!151107 (= call!151112 (isEmpty!16618 (tail!3880 (_2!16630 (get!8844 lt!880296)))))))

(declare-fun b!2457995 () Bool)

(declare-fun e!1559253 () Bool)

(declare-fun lt!880421 () Bool)

(assert (=> b!2457995 (= e!1559253 (= lt!880421 call!151112))))

(declare-fun b!2457996 () Bool)

(declare-fun e!1559250 () Bool)

(assert (=> b!2457996 (= e!1559250 (not lt!880421))))

(declare-fun b!2457997 () Bool)

(declare-fun e!1559251 () Bool)

(assert (=> b!2457997 (= e!1559251 (= (head!5607 (tail!3880 (_2!16630 (get!8844 lt!880296)))) (c!391797 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296)))))))))

(declare-fun b!2457998 () Bool)

(declare-fun e!1559254 () Bool)

(declare-fun e!1559256 () Bool)

(assert (=> b!2457998 (= e!1559254 e!1559256)))

(declare-fun res!1041907 () Bool)

(assert (=> b!2457998 (=> (not res!1041907) (not e!1559256))))

(assert (=> b!2457998 (= res!1041907 (not lt!880421))))

(declare-fun b!2457999 () Bool)

(assert (=> b!2457999 (= e!1559255 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296)))) (head!5607 (tail!3880 (_2!16630 (get!8844 lt!880296))))) (tail!3880 (tail!3880 (_2!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458000 () Bool)

(declare-fun res!1041901 () Bool)

(assert (=> b!2458000 (=> (not res!1041901) (not e!1559251))))

(assert (=> b!2458000 (= res!1041901 (not call!151112))))

(declare-fun b!2458001 () Bool)

(assert (=> b!2458001 (= e!1559253 e!1559250)))

(declare-fun c!392331 () Bool)

(assert (=> b!2458001 (= c!392331 ((_ is EmptyLang!7225) (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458002 () Bool)

(declare-fun e!1559252 () Bool)

(assert (=> b!2458002 (= e!1559256 e!1559252)))

(declare-fun res!1041902 () Bool)

(assert (=> b!2458002 (=> res!1041902 e!1559252)))

(assert (=> b!2458002 (= res!1041902 call!151112)))

(declare-fun b!2458003 () Bool)

(declare-fun res!1041908 () Bool)

(assert (=> b!2458003 (=> (not res!1041908) (not e!1559251))))

(assert (=> b!2458003 (= res!1041908 (isEmpty!16618 (tail!3880 (tail!3880 (_2!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458004 () Bool)

(declare-fun res!1041903 () Bool)

(assert (=> b!2458004 (=> res!1041903 e!1559254)))

(assert (=> b!2458004 (= res!1041903 (not ((_ is ElementMatch!7225) (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296)))))))))

(assert (=> b!2458004 (= e!1559250 e!1559254)))

(declare-fun d!707935 () Bool)

(assert (=> d!707935 e!1559253))

(declare-fun c!392332 () Bool)

(assert (=> d!707935 (= c!392332 ((_ is EmptyExpr!7225) (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296))))))))

(assert (=> d!707935 (= lt!880421 e!1559255)))

(declare-fun c!392330 () Bool)

(assert (=> d!707935 (= c!392330 (isEmpty!16618 (tail!3880 (_2!16630 (get!8844 lt!880296)))))))

(assert (=> d!707935 (validRegex!2917 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296)))))))

(assert (=> d!707935 (= (matchR!3340 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296)))) (tail!3880 (_2!16630 (get!8844 lt!880296)))) lt!880421)))

(declare-fun b!2458005 () Bool)

(declare-fun res!1041905 () Bool)

(assert (=> b!2458005 (=> res!1041905 e!1559252)))

(assert (=> b!2458005 (= res!1041905 (not (isEmpty!16618 (tail!3880 (tail!3880 (_2!16630 (get!8844 lt!880296)))))))))

(declare-fun b!2458006 () Bool)

(assert (=> b!2458006 (= e!1559252 (not (= (head!5607 (tail!3880 (_2!16630 (get!8844 lt!880296)))) (c!391797 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296))))))))))

(declare-fun b!2458007 () Bool)

(declare-fun res!1041906 () Bool)

(assert (=> b!2458007 (=> res!1041906 e!1559254)))

(assert (=> b!2458007 (= res!1041906 e!1559251)))

(declare-fun res!1041904 () Bool)

(assert (=> b!2458007 (=> (not res!1041904) (not e!1559251))))

(assert (=> b!2458007 (= res!1041904 lt!880421)))

(assert (= (and d!707935 c!392330) b!2457994))

(assert (= (and d!707935 (not c!392330)) b!2457999))

(assert (= (and d!707935 c!392332) b!2457995))

(assert (= (and d!707935 (not c!392332)) b!2458001))

(assert (= (and b!2458001 c!392331) b!2457996))

(assert (= (and b!2458001 (not c!392331)) b!2458004))

(assert (= (and b!2458004 (not res!1041903)) b!2458007))

(assert (= (and b!2458007 res!1041904) b!2458000))

(assert (= (and b!2458000 res!1041901) b!2458003))

(assert (= (and b!2458003 res!1041908) b!2457997))

(assert (= (and b!2458007 (not res!1041906)) b!2457998))

(assert (= (and b!2457998 res!1041907) b!2458002))

(assert (= (and b!2458002 (not res!1041902)) b!2458005))

(assert (= (and b!2458005 (not res!1041905)) b!2458006))

(assert (= (or b!2457995 b!2458000 b!2458002) bm!151107))

(assert (=> b!2458005 m!2827439))

(declare-fun m!2828439 () Bool)

(assert (=> b!2458005 m!2828439))

(assert (=> b!2458005 m!2828439))

(declare-fun m!2828441 () Bool)

(assert (=> b!2458005 m!2828441))

(assert (=> d!707935 m!2827439))

(assert (=> d!707935 m!2827441))

(assert (=> d!707935 m!2827449))

(declare-fun m!2828443 () Bool)

(assert (=> d!707935 m!2828443))

(assert (=> b!2458003 m!2827439))

(assert (=> b!2458003 m!2828439))

(assert (=> b!2458003 m!2828439))

(assert (=> b!2458003 m!2828441))

(assert (=> b!2457999 m!2827439))

(declare-fun m!2828445 () Bool)

(assert (=> b!2457999 m!2828445))

(assert (=> b!2457999 m!2827449))

(assert (=> b!2457999 m!2828445))

(declare-fun m!2828447 () Bool)

(assert (=> b!2457999 m!2828447))

(assert (=> b!2457999 m!2827439))

(assert (=> b!2457999 m!2828439))

(assert (=> b!2457999 m!2828447))

(assert (=> b!2457999 m!2828439))

(declare-fun m!2828449 () Bool)

(assert (=> b!2457999 m!2828449))

(assert (=> b!2457997 m!2827439))

(assert (=> b!2457997 m!2828445))

(assert (=> b!2457994 m!2827449))

(declare-fun m!2828451 () Bool)

(assert (=> b!2457994 m!2828451))

(assert (=> b!2458006 m!2827439))

(assert (=> b!2458006 m!2828445))

(assert (=> bm!151107 m!2827439))

(assert (=> bm!151107 m!2827441))

(assert (=> b!2456237 d!707935))

(declare-fun b!2458008 () Bool)

(declare-fun e!1559258 () Regex!7225)

(declare-fun e!1559257 () Regex!7225)

(assert (=> b!2458008 (= e!1559258 e!1559257)))

(declare-fun c!392333 () Bool)

(assert (=> b!2458008 (= c!392333 ((_ is ElementMatch!7225) EmptyExpr!7225))))

(declare-fun c!392336 () Bool)

(declare-fun call!151116 () Regex!7225)

(declare-fun c!392335 () Bool)

(declare-fun c!392337 () Bool)

(declare-fun bm!151108 () Bool)

(assert (=> bm!151108 (= call!151116 (derivativeStep!1872 (ite c!392337 (regTwo!14963 EmptyExpr!7225) (ite c!392336 (reg!7554 EmptyExpr!7225) (ite c!392335 (regTwo!14962 EmptyExpr!7225) (regOne!14962 EmptyExpr!7225)))) (head!5607 (_2!16630 (get!8844 lt!880296)))))))

(declare-fun b!2458009 () Bool)

(assert (=> b!2458009 (= e!1559257 (ite (= (head!5607 (_2!16630 (get!8844 lt!880296))) (c!391797 EmptyExpr!7225)) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151109 () Bool)

(declare-fun call!151114 () Regex!7225)

(assert (=> bm!151109 (= call!151114 call!151116)))

(declare-fun b!2458010 () Bool)

(declare-fun e!1559261 () Regex!7225)

(assert (=> b!2458010 (= e!1559261 (Concat!11861 call!151114 EmptyExpr!7225))))

(declare-fun b!2458011 () Bool)

(declare-fun e!1559259 () Regex!7225)

(declare-fun call!151115 () Regex!7225)

(declare-fun call!151113 () Regex!7225)

(assert (=> b!2458011 (= e!1559259 (Union!7225 (Concat!11861 call!151115 (regTwo!14962 EmptyExpr!7225)) call!151113))))

(declare-fun d!707937 () Bool)

(declare-fun lt!880422 () Regex!7225)

(assert (=> d!707937 (validRegex!2917 lt!880422)))

(assert (=> d!707937 (= lt!880422 e!1559258)))

(declare-fun c!392334 () Bool)

(assert (=> d!707937 (= c!392334 (or ((_ is EmptyExpr!7225) EmptyExpr!7225) ((_ is EmptyLang!7225) EmptyExpr!7225)))))

(assert (=> d!707937 (validRegex!2917 EmptyExpr!7225)))

(assert (=> d!707937 (= (derivativeStep!1872 EmptyExpr!7225 (head!5607 (_2!16630 (get!8844 lt!880296)))) lt!880422)))

(declare-fun bm!151110 () Bool)

(assert (=> bm!151110 (= call!151115 (derivativeStep!1872 (ite c!392337 (regOne!14963 EmptyExpr!7225) (regOne!14962 EmptyExpr!7225)) (head!5607 (_2!16630 (get!8844 lt!880296)))))))

(declare-fun b!2458012 () Bool)

(assert (=> b!2458012 (= e!1559259 (Union!7225 (Concat!11861 call!151113 (regTwo!14962 EmptyExpr!7225)) EmptyLang!7225))))

(declare-fun b!2458013 () Bool)

(assert (=> b!2458013 (= e!1559258 EmptyLang!7225)))

(declare-fun b!2458014 () Bool)

(assert (=> b!2458014 (= c!392335 (nullable!2218 (regOne!14962 EmptyExpr!7225)))))

(assert (=> b!2458014 (= e!1559261 e!1559259)))

(declare-fun bm!151111 () Bool)

(assert (=> bm!151111 (= call!151113 call!151114)))

(declare-fun b!2458015 () Bool)

(declare-fun e!1559260 () Regex!7225)

(assert (=> b!2458015 (= e!1559260 (Union!7225 call!151115 call!151116))))

(declare-fun b!2458016 () Bool)

(assert (=> b!2458016 (= c!392337 ((_ is Union!7225) EmptyExpr!7225))))

(assert (=> b!2458016 (= e!1559257 e!1559260)))

(declare-fun b!2458017 () Bool)

(assert (=> b!2458017 (= e!1559260 e!1559261)))

(assert (=> b!2458017 (= c!392336 ((_ is Star!7225) EmptyExpr!7225))))

(assert (= (and d!707937 c!392334) b!2458013))

(assert (= (and d!707937 (not c!392334)) b!2458008))

(assert (= (and b!2458008 c!392333) b!2458009))

(assert (= (and b!2458008 (not c!392333)) b!2458016))

(assert (= (and b!2458016 c!392337) b!2458015))

(assert (= (and b!2458016 (not c!392337)) b!2458017))

(assert (= (and b!2458017 c!392336) b!2458010))

(assert (= (and b!2458017 (not c!392336)) b!2458014))

(assert (= (and b!2458014 c!392335) b!2458011))

(assert (= (and b!2458014 (not c!392335)) b!2458012))

(assert (= (or b!2458011 b!2458012) bm!151111))

(assert (= (or b!2458010 bm!151111) bm!151109))

(assert (= (or b!2458015 b!2458011) bm!151110))

(assert (= (or b!2458015 bm!151109) bm!151108))

(assert (=> bm!151108 m!2827447))

(declare-fun m!2828453 () Bool)

(assert (=> bm!151108 m!2828453))

(declare-fun m!2828455 () Bool)

(assert (=> d!707937 m!2828455))

(assert (=> d!707937 m!2827445))

(assert (=> bm!151110 m!2827447))

(declare-fun m!2828457 () Bool)

(assert (=> bm!151110 m!2828457))

(declare-fun m!2828459 () Bool)

(assert (=> b!2458014 m!2828459))

(assert (=> b!2456237 d!707937))

(declare-fun d!707939 () Bool)

(assert (=> d!707939 (= (head!5607 (_2!16630 (get!8844 lt!880296))) (h!33990 (_2!16630 (get!8844 lt!880296))))))

(assert (=> b!2456237 d!707939))

(declare-fun d!707941 () Bool)

(assert (=> d!707941 (= (tail!3880 (_2!16630 (get!8844 lt!880296))) (t!208664 (_2!16630 (get!8844 lt!880296))))))

(assert (=> b!2456237 d!707941))

(assert (=> b!2456192 d!707495))

(assert (=> d!707485 d!707519))

(declare-fun bm!151112 () Bool)

(declare-fun c!392339 () Bool)

(declare-fun call!151117 () Bool)

(assert (=> bm!151112 (= call!151117 (validRegex!2917 (ite c!392339 (regTwo!14963 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (regOne!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))))

(declare-fun b!2458018 () Bool)

(declare-fun res!1041913 () Bool)

(declare-fun e!1559268 () Bool)

(assert (=> b!2458018 (=> (not res!1041913) (not e!1559268))))

(declare-fun call!151118 () Bool)

(assert (=> b!2458018 (= res!1041913 call!151118)))

(declare-fun e!1559262 () Bool)

(assert (=> b!2458018 (= e!1559262 e!1559268)))

(declare-fun b!2458019 () Bool)

(declare-fun e!1559265 () Bool)

(declare-fun call!151119 () Bool)

(assert (=> b!2458019 (= e!1559265 call!151119)))

(declare-fun bm!151113 () Bool)

(assert (=> bm!151113 (= call!151118 call!151119)))

(declare-fun b!2458020 () Bool)

(declare-fun e!1559264 () Bool)

(assert (=> b!2458020 (= e!1559264 e!1559265)))

(declare-fun res!1041909 () Bool)

(assert (=> b!2458020 (= res!1041909 (not (nullable!2218 (reg!7554 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))))

(assert (=> b!2458020 (=> (not res!1041909) (not e!1559265))))

(declare-fun b!2458021 () Bool)

(declare-fun res!1041911 () Bool)

(declare-fun e!1559267 () Bool)

(assert (=> b!2458021 (=> res!1041911 e!1559267)))

(assert (=> b!2458021 (= res!1041911 (not ((_ is Concat!11861) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(assert (=> b!2458021 (= e!1559262 e!1559267)))

(declare-fun b!2458022 () Bool)

(declare-fun e!1559266 () Bool)

(assert (=> b!2458022 (= e!1559267 e!1559266)))

(declare-fun res!1041910 () Bool)

(assert (=> b!2458022 (=> (not res!1041910) (not e!1559266))))

(assert (=> b!2458022 (= res!1041910 call!151117)))

(declare-fun bm!151114 () Bool)

(declare-fun c!392338 () Bool)

(assert (=> bm!151114 (= call!151119 (validRegex!2917 (ite c!392338 (reg!7554 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (ite c!392339 (regOne!14963 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (regTwo!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))))

(declare-fun b!2458024 () Bool)

(assert (=> b!2458024 (= e!1559266 call!151118)))

(declare-fun b!2458025 () Bool)

(assert (=> b!2458025 (= e!1559264 e!1559262)))

(assert (=> b!2458025 (= c!392339 ((_ is Union!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2458026 () Bool)

(declare-fun e!1559263 () Bool)

(assert (=> b!2458026 (= e!1559263 e!1559264)))

(assert (=> b!2458026 (= c!392338 ((_ is Star!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2458023 () Bool)

(assert (=> b!2458023 (= e!1559268 call!151117)))

(declare-fun d!707943 () Bool)

(declare-fun res!1041912 () Bool)

(assert (=> d!707943 (=> res!1041912 e!1559263)))

(assert (=> d!707943 (= res!1041912 ((_ is ElementMatch!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(assert (=> d!707943 (= (validRegex!2917 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) e!1559263)))

(assert (= (and d!707943 (not res!1041912)) b!2458026))

(assert (= (and b!2458026 c!392338) b!2458020))

(assert (= (and b!2458026 (not c!392338)) b!2458025))

(assert (= (and b!2458020 res!1041909) b!2458019))

(assert (= (and b!2458025 c!392339) b!2458018))

(assert (= (and b!2458025 (not c!392339)) b!2458021))

(assert (= (and b!2458018 res!1041913) b!2458023))

(assert (= (and b!2458021 (not res!1041911)) b!2458022))

(assert (= (and b!2458022 res!1041910) b!2458024))

(assert (= (or b!2458018 b!2458024) bm!151113))

(assert (= (or b!2458023 b!2458022) bm!151112))

(assert (= (or b!2458019 bm!151113) bm!151114))

(declare-fun m!2828461 () Bool)

(assert (=> bm!151112 m!2828461))

(declare-fun m!2828463 () Bool)

(assert (=> b!2458020 m!2828463))

(declare-fun m!2828465 () Bool)

(assert (=> bm!151114 m!2828465))

(assert (=> d!707485 d!707943))

(declare-fun d!707945 () Bool)

(assert (=> d!707945 (= (isEmpty!16618 (tail!3880 (_2!16630 (get!8844 lt!880296)))) ((_ is Nil!28589) (tail!3880 (_2!16630 (get!8844 lt!880296)))))))

(assert (=> b!2456243 d!707945))

(assert (=> b!2456243 d!707941))

(declare-fun d!707947 () Bool)

(assert (=> d!707947 (= (nullable!2218 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (nullableFct!541 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun bs!466080 () Bool)

(assert (= bs!466080 d!707947))

(assert (=> bs!466080 m!2826843))

(declare-fun m!2828467 () Bool)

(assert (=> bs!466080 m!2828467))

(assert (=> b!2456296 d!707947))

(declare-fun d!707949 () Bool)

(declare-fun c!392340 () Bool)

(assert (=> d!707949 (= c!392340 ((_ is Nil!28589) (t!208664 (_2!16630 lt!880243))))))

(declare-fun e!1559269 () (InoxSet C!14608))

(assert (=> d!707949 (= (content!3938 (t!208664 (_2!16630 lt!880243))) e!1559269)))

(declare-fun b!2458027 () Bool)

(assert (=> b!2458027 (= e!1559269 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2458028 () Bool)

(assert (=> b!2458028 (= e!1559269 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (t!208664 (_2!16630 lt!880243))) true) (content!3938 (t!208664 (t!208664 (_2!16630 lt!880243))))))))

(assert (= (and d!707949 c!392340) b!2458027))

(assert (= (and d!707949 (not c!392340)) b!2458028))

(declare-fun m!2828469 () Bool)

(assert (=> b!2458028 m!2828469))

(declare-fun m!2828471 () Bool)

(assert (=> b!2458028 m!2828471))

(assert (=> b!2456173 d!707949))

(assert (=> b!2456123 d!707885))

(assert (=> bm!150928 d!707433))

(declare-fun b!2458029 () Bool)

(declare-fun e!1559271 () Regex!7225)

(declare-fun e!1559270 () Regex!7225)

(assert (=> b!2458029 (= e!1559271 e!1559270)))

(declare-fun c!392341 () Bool)

(assert (=> b!2458029 (= c!392341 ((_ is ElementMatch!7225) (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))))))

(declare-fun c!392343 () Bool)

(declare-fun bm!151115 () Bool)

(declare-fun call!151123 () Regex!7225)

(declare-fun c!392344 () Bool)

(declare-fun c!392345 () Bool)

(assert (=> bm!151115 (= call!151123 (derivativeStep!1872 (ite c!392345 (regTwo!14963 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))) (ite c!392344 (reg!7554 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))) (ite c!392343 (regTwo!14962 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))) (regOne!14962 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))))) (head!5607 s!9460)))))

(declare-fun b!2458030 () Bool)

(assert (=> b!2458030 (= e!1559270 (ite (= (head!5607 s!9460) (c!391797 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151116 () Bool)

(declare-fun call!151121 () Regex!7225)

(assert (=> bm!151116 (= call!151121 call!151123)))

(declare-fun b!2458031 () Bool)

(declare-fun e!1559274 () Regex!7225)

(assert (=> b!2458031 (= e!1559274 (Concat!11861 call!151121 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))))))

(declare-fun b!2458032 () Bool)

(declare-fun call!151120 () Regex!7225)

(declare-fun e!1559272 () Regex!7225)

(declare-fun call!151122 () Regex!7225)

(assert (=> b!2458032 (= e!1559272 (Union!7225 (Concat!11861 call!151122 (regTwo!14962 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))) call!151120))))

(declare-fun d!707951 () Bool)

(declare-fun lt!880423 () Regex!7225)

(assert (=> d!707951 (validRegex!2917 lt!880423)))

(assert (=> d!707951 (= lt!880423 e!1559271)))

(declare-fun c!392342 () Bool)

(assert (=> d!707951 (= c!392342 (or ((_ is EmptyExpr!7225) (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))) ((_ is EmptyLang!7225) (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))))))

(assert (=> d!707951 (validRegex!2917 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))))

(assert (=> d!707951 (= (derivativeStep!1872 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))) (head!5607 s!9460)) lt!880423)))

(declare-fun bm!151117 () Bool)

(assert (=> bm!151117 (= call!151122 (derivativeStep!1872 (ite c!392345 (regOne!14963 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))) (regOne!14962 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))) (head!5607 s!9460)))))

(declare-fun b!2458033 () Bool)

(assert (=> b!2458033 (= e!1559272 (Union!7225 (Concat!11861 call!151120 (regTwo!14962 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))) EmptyLang!7225))))

(declare-fun b!2458034 () Bool)

(assert (=> b!2458034 (= e!1559271 EmptyLang!7225)))

(declare-fun b!2458035 () Bool)

(assert (=> b!2458035 (= c!392343 (nullable!2218 (regOne!14962 (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))))))))

(assert (=> b!2458035 (= e!1559274 e!1559272)))

(declare-fun bm!151118 () Bool)

(assert (=> bm!151118 (= call!151120 call!151121)))

(declare-fun b!2458036 () Bool)

(declare-fun e!1559273 () Regex!7225)

(assert (=> b!2458036 (= e!1559273 (Union!7225 call!151122 call!151123))))

(declare-fun b!2458037 () Bool)

(assert (=> b!2458037 (= c!392345 ((_ is Union!7225) (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))))))

(assert (=> b!2458037 (= e!1559270 e!1559273)))

(declare-fun b!2458038 () Bool)

(assert (=> b!2458038 (= e!1559273 e!1559274)))

(assert (=> b!2458038 (= c!392344 ((_ is Star!7225) (ite c!392013 (regTwo!14963 lt!880248) (ite c!392012 (reg!7554 lt!880248) (ite c!392011 (regTwo!14962 lt!880248) (regOne!14962 lt!880248))))))))

(assert (= (and d!707951 c!392342) b!2458034))

(assert (= (and d!707951 (not c!392342)) b!2458029))

(assert (= (and b!2458029 c!392341) b!2458030))

(assert (= (and b!2458029 (not c!392341)) b!2458037))

(assert (= (and b!2458037 c!392345) b!2458036))

(assert (= (and b!2458037 (not c!392345)) b!2458038))

(assert (= (and b!2458038 c!392344) b!2458031))

(assert (= (and b!2458038 (not c!392344)) b!2458035))

(assert (= (and b!2458035 c!392343) b!2458032))

(assert (= (and b!2458035 (not c!392343)) b!2458033))

(assert (= (or b!2458032 b!2458033) bm!151118))

(assert (= (or b!2458031 bm!151118) bm!151116))

(assert (= (or b!2458036 b!2458032) bm!151117))

(assert (= (or b!2458036 bm!151116) bm!151115))

(assert (=> bm!151115 m!2826965))

(declare-fun m!2828473 () Bool)

(assert (=> bm!151115 m!2828473))

(declare-fun m!2828475 () Bool)

(assert (=> d!707951 m!2828475))

(declare-fun m!2828477 () Bool)

(assert (=> d!707951 m!2828477))

(assert (=> bm!151117 m!2826965))

(declare-fun m!2828479 () Bool)

(assert (=> bm!151117 m!2828479))

(declare-fun m!2828481 () Bool)

(assert (=> b!2458035 m!2828481))

(assert (=> bm!150890 d!707951))

(declare-fun bs!466081 () Bool)

(declare-fun b!2458048 () Bool)

(assert (= bs!466081 (and b!2458048 b!2456329)))

(declare-fun lambda!93062 () Int)

(assert (=> bs!466081 (= (and (= (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))) (reg!7554 (regOne!14963 r!13927))) (= (regTwo!14963 (regTwo!14963 r!13927)) (regOne!14963 r!13927))) (= lambda!93062 lambda!93043))))

(declare-fun bs!466082 () Bool)

(assert (= bs!466082 (and b!2458048 b!2457992)))

(assert (=> bs!466082 (= (and (= (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))) (reg!7554 (regOne!14963 (regTwo!14963 r!13927)))) (= (regTwo!14963 (regTwo!14963 r!13927)) (regOne!14963 (regTwo!14963 r!13927)))) (= lambda!93062 lambda!93060))))

(declare-fun bs!466083 () Bool)

(assert (= bs!466083 (and b!2458048 b!2455601)))

(assert (=> bs!466083 (= (and (= (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))) (reg!7554 r!13927)) (= (regTwo!14963 (regTwo!14963 r!13927)) r!13927)) (= lambda!93062 lambda!93033))))

(declare-fun bs!466084 () Bool)

(assert (= bs!466084 (and b!2458048 b!2457983)))

(assert (=> bs!466084 (not (= lambda!93062 lambda!93061))))

(declare-fun bs!466085 () Bool)

(assert (= bs!466085 (and b!2458048 b!2457970)))

(assert (=> bs!466085 (not (= lambda!93062 lambda!93059))))

(declare-fun bs!466086 () Bool)

(assert (= bs!466086 (and b!2458048 b!2456340)))

(assert (=> bs!466086 (= (and (= (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))) (reg!7554 (regTwo!14963 r!13927))) (= (regTwo!14963 (regTwo!14963 r!13927)) (regTwo!14963 r!13927))) (= lambda!93062 lambda!93045))))

(declare-fun bs!466087 () Bool)

(assert (= bs!466087 (and b!2458048 b!2457979)))

(assert (=> bs!466087 (= (and (= (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))) (reg!7554 (regTwo!14963 (regOne!14963 r!13927)))) (= (regTwo!14963 (regTwo!14963 r!13927)) (regTwo!14963 (regOne!14963 r!13927)))) (= lambda!93062 lambda!93058))))

(declare-fun bs!466088 () Bool)

(assert (= bs!466088 (and b!2458048 b!2456331)))

(assert (=> bs!466088 (not (= lambda!93062 lambda!93046))))

(declare-fun bs!466089 () Bool)

(assert (= bs!466089 (and b!2458048 b!2456320)))

(assert (=> bs!466089 (not (= lambda!93062 lambda!93044))))

(declare-fun bs!466090 () Bool)

(assert (= bs!466090 (and b!2458048 b!2455592)))

(assert (=> bs!466090 (not (= lambda!93062 lambda!93034))))

(assert (=> b!2458048 true))

(assert (=> b!2458048 true))

(declare-fun bs!466091 () Bool)

(declare-fun b!2458039 () Bool)

(assert (= bs!466091 (and b!2458039 b!2456329)))

(declare-fun lambda!93063 () Int)

(assert (=> bs!466091 (not (= lambda!93063 lambda!93043))))

(declare-fun bs!466092 () Bool)

(assert (= bs!466092 (and b!2458039 b!2457992)))

(assert (=> bs!466092 (not (= lambda!93063 lambda!93060))))

(declare-fun bs!466093 () Bool)

(assert (= bs!466093 (and b!2458039 b!2455601)))

(assert (=> bs!466093 (not (= lambda!93063 lambda!93033))))

(declare-fun bs!466094 () Bool)

(assert (= bs!466094 (and b!2458039 b!2457983)))

(assert (=> bs!466094 (= (and (= (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regOne!14962 (regOne!14963 (regTwo!14963 r!13927)))) (= (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))))) (= lambda!93063 lambda!93061))))

(declare-fun bs!466095 () Bool)

(assert (= bs!466095 (and b!2458039 b!2457970)))

(assert (=> bs!466095 (= (and (= (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regOne!14962 (regTwo!14963 (regOne!14963 r!13927)))) (= (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))))) (= lambda!93063 lambda!93059))))

(declare-fun bs!466096 () Bool)

(assert (= bs!466096 (and b!2458039 b!2458048)))

(assert (=> bs!466096 (not (= lambda!93063 lambda!93062))))

(declare-fun bs!466097 () Bool)

(assert (= bs!466097 (and b!2458039 b!2456340)))

(assert (=> bs!466097 (not (= lambda!93063 lambda!93045))))

(declare-fun bs!466098 () Bool)

(assert (= bs!466098 (and b!2458039 b!2457979)))

(assert (=> bs!466098 (not (= lambda!93063 lambda!93058))))

(declare-fun bs!466099 () Bool)

(assert (= bs!466099 (and b!2458039 b!2456331)))

(assert (=> bs!466099 (= (and (= (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regOne!14962 (regTwo!14963 r!13927))) (= (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regTwo!14962 (regTwo!14963 r!13927)))) (= lambda!93063 lambda!93046))))

(declare-fun bs!466100 () Bool)

(assert (= bs!466100 (and b!2458039 b!2456320)))

(assert (=> bs!466100 (= (and (= (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regOne!14962 (regOne!14963 r!13927))) (= (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regTwo!14962 (regOne!14963 r!13927)))) (= lambda!93063 lambda!93044))))

(declare-fun bs!466101 () Bool)

(assert (= bs!466101 (and b!2458039 b!2455592)))

(assert (=> bs!466101 (= (and (= (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regOne!14962 r!13927)) (= (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))) (regTwo!14962 r!13927))) (= lambda!93063 lambda!93034))))

(assert (=> b!2458039 true))

(assert (=> b!2458039 true))

(declare-fun call!151124 () Bool)

(declare-fun c!392346 () Bool)

(declare-fun bm!151119 () Bool)

(assert (=> bm!151119 (= call!151124 (Exists!1244 (ite c!392346 lambda!93062 lambda!93063)))))

(declare-fun e!1559278 () Bool)

(assert (=> b!2458039 (= e!1559278 call!151124)))

(declare-fun b!2458040 () Bool)

(declare-fun c!392348 () Bool)

(assert (=> b!2458040 (= c!392348 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 r!13927))))))

(declare-fun e!1559279 () Bool)

(declare-fun e!1559276 () Bool)

(assert (=> b!2458040 (= e!1559279 e!1559276)))

(declare-fun b!2458041 () Bool)

(declare-fun e!1559280 () Bool)

(assert (=> b!2458041 (= e!1559276 e!1559280)))

(declare-fun res!1041916 () Bool)

(assert (=> b!2458041 (= res!1041916 (matchRSpec!1072 (regOne!14963 (regTwo!14963 (regTwo!14963 r!13927))) s!9460))))

(assert (=> b!2458041 (=> res!1041916 e!1559280)))

(declare-fun d!707953 () Bool)

(declare-fun c!392347 () Bool)

(assert (=> d!707953 (= c!392347 ((_ is EmptyExpr!7225) (regTwo!14963 (regTwo!14963 r!13927))))))

(declare-fun e!1559281 () Bool)

(assert (=> d!707953 (= (matchRSpec!1072 (regTwo!14963 (regTwo!14963 r!13927)) s!9460) e!1559281)))

(declare-fun b!2458042 () Bool)

(declare-fun e!1559275 () Bool)

(assert (=> b!2458042 (= e!1559281 e!1559275)))

(declare-fun res!1041915 () Bool)

(assert (=> b!2458042 (= res!1041915 (not ((_ is EmptyLang!7225) (regTwo!14963 (regTwo!14963 r!13927)))))))

(assert (=> b!2458042 (=> (not res!1041915) (not e!1559275))))

(declare-fun b!2458043 () Bool)

(assert (=> b!2458043 (= e!1559276 e!1559278)))

(assert (=> b!2458043 (= c!392346 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 r!13927))))))

(declare-fun bm!151120 () Bool)

(declare-fun call!151125 () Bool)

(assert (=> bm!151120 (= call!151125 (isEmpty!16618 s!9460))))

(declare-fun b!2458044 () Bool)

(assert (=> b!2458044 (= e!1559281 call!151125)))

(declare-fun b!2458045 () Bool)

(assert (=> b!2458045 (= e!1559279 (= s!9460 (Cons!28589 (c!391797 (regTwo!14963 (regTwo!14963 r!13927))) Nil!28589)))))

(declare-fun b!2458046 () Bool)

(assert (=> b!2458046 (= e!1559280 (matchRSpec!1072 (regTwo!14963 (regTwo!14963 (regTwo!14963 r!13927))) s!9460))))

(declare-fun b!2458047 () Bool)

(declare-fun c!392349 () Bool)

(assert (=> b!2458047 (= c!392349 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 r!13927))))))

(assert (=> b!2458047 (= e!1559275 e!1559279)))

(declare-fun e!1559277 () Bool)

(assert (=> b!2458048 (= e!1559277 call!151124)))

(declare-fun b!2458049 () Bool)

(declare-fun res!1041914 () Bool)

(assert (=> b!2458049 (=> res!1041914 e!1559277)))

(assert (=> b!2458049 (= res!1041914 call!151125)))

(assert (=> b!2458049 (= e!1559278 e!1559277)))

(assert (= (and d!707953 c!392347) b!2458044))

(assert (= (and d!707953 (not c!392347)) b!2458042))

(assert (= (and b!2458042 res!1041915) b!2458047))

(assert (= (and b!2458047 c!392349) b!2458045))

(assert (= (and b!2458047 (not c!392349)) b!2458040))

(assert (= (and b!2458040 c!392348) b!2458041))

(assert (= (and b!2458040 (not c!392348)) b!2458043))

(assert (= (and b!2458041 (not res!1041916)) b!2458046))

(assert (= (and b!2458043 c!392346) b!2458049))

(assert (= (and b!2458043 (not c!392346)) b!2458039))

(assert (= (and b!2458049 (not res!1041914)) b!2458048))

(assert (= (or b!2458048 b!2458039) bm!151119))

(assert (= (or b!2458044 b!2458049) bm!151120))

(declare-fun m!2828483 () Bool)

(assert (=> bm!151119 m!2828483))

(declare-fun m!2828485 () Bool)

(assert (=> b!2458041 m!2828485))

(assert (=> bm!151120 m!2826961))

(declare-fun m!2828487 () Bool)

(assert (=> b!2458046 m!2828487))

(assert (=> b!2456338 d!707953))

(declare-fun bm!151121 () Bool)

(declare-fun call!151126 () Bool)

(declare-fun c!392351 () Bool)

(assert (=> bm!151121 (= call!151126 (validRegex!2917 (ite c!392351 (regTwo!14963 (h!33989 (t!208663 l!9164))) (regOne!14962 (h!33989 (t!208663 l!9164))))))))

(declare-fun b!2458050 () Bool)

(declare-fun res!1041921 () Bool)

(declare-fun e!1559288 () Bool)

(assert (=> b!2458050 (=> (not res!1041921) (not e!1559288))))

(declare-fun call!151127 () Bool)

(assert (=> b!2458050 (= res!1041921 call!151127)))

(declare-fun e!1559282 () Bool)

(assert (=> b!2458050 (= e!1559282 e!1559288)))

(declare-fun b!2458051 () Bool)

(declare-fun e!1559285 () Bool)

(declare-fun call!151128 () Bool)

(assert (=> b!2458051 (= e!1559285 call!151128)))

(declare-fun bm!151122 () Bool)

(assert (=> bm!151122 (= call!151127 call!151128)))

(declare-fun b!2458052 () Bool)

(declare-fun e!1559284 () Bool)

(assert (=> b!2458052 (= e!1559284 e!1559285)))

(declare-fun res!1041917 () Bool)

(assert (=> b!2458052 (= res!1041917 (not (nullable!2218 (reg!7554 (h!33989 (t!208663 l!9164))))))))

(assert (=> b!2458052 (=> (not res!1041917) (not e!1559285))))

(declare-fun b!2458053 () Bool)

(declare-fun res!1041919 () Bool)

(declare-fun e!1559287 () Bool)

(assert (=> b!2458053 (=> res!1041919 e!1559287)))

(assert (=> b!2458053 (= res!1041919 (not ((_ is Concat!11861) (h!33989 (t!208663 l!9164)))))))

(assert (=> b!2458053 (= e!1559282 e!1559287)))

(declare-fun b!2458054 () Bool)

(declare-fun e!1559286 () Bool)

(assert (=> b!2458054 (= e!1559287 e!1559286)))

(declare-fun res!1041918 () Bool)

(assert (=> b!2458054 (=> (not res!1041918) (not e!1559286))))

(assert (=> b!2458054 (= res!1041918 call!151126)))

(declare-fun bm!151123 () Bool)

(declare-fun c!392350 () Bool)

(assert (=> bm!151123 (= call!151128 (validRegex!2917 (ite c!392350 (reg!7554 (h!33989 (t!208663 l!9164))) (ite c!392351 (regOne!14963 (h!33989 (t!208663 l!9164))) (regTwo!14962 (h!33989 (t!208663 l!9164)))))))))

(declare-fun b!2458056 () Bool)

(assert (=> b!2458056 (= e!1559286 call!151127)))

(declare-fun b!2458057 () Bool)

(assert (=> b!2458057 (= e!1559284 e!1559282)))

(assert (=> b!2458057 (= c!392351 ((_ is Union!7225) (h!33989 (t!208663 l!9164))))))

(declare-fun b!2458058 () Bool)

(declare-fun e!1559283 () Bool)

(assert (=> b!2458058 (= e!1559283 e!1559284)))

(assert (=> b!2458058 (= c!392350 ((_ is Star!7225) (h!33989 (t!208663 l!9164))))))

(declare-fun b!2458055 () Bool)

(assert (=> b!2458055 (= e!1559288 call!151126)))

(declare-fun d!707955 () Bool)

(declare-fun res!1041920 () Bool)

(assert (=> d!707955 (=> res!1041920 e!1559283)))

(assert (=> d!707955 (= res!1041920 ((_ is ElementMatch!7225) (h!33989 (t!208663 l!9164))))))

(assert (=> d!707955 (= (validRegex!2917 (h!33989 (t!208663 l!9164))) e!1559283)))

(assert (= (and d!707955 (not res!1041920)) b!2458058))

(assert (= (and b!2458058 c!392350) b!2458052))

(assert (= (and b!2458058 (not c!392350)) b!2458057))

(assert (= (and b!2458052 res!1041917) b!2458051))

(assert (= (and b!2458057 c!392351) b!2458050))

(assert (= (and b!2458057 (not c!392351)) b!2458053))

(assert (= (and b!2458050 res!1041921) b!2458055))

(assert (= (and b!2458053 (not res!1041919)) b!2458054))

(assert (= (and b!2458054 res!1041918) b!2458056))

(assert (= (or b!2458050 b!2458056) bm!151122))

(assert (= (or b!2458055 b!2458054) bm!151121))

(assert (= (or b!2458051 bm!151122) bm!151123))

(declare-fun m!2828489 () Bool)

(assert (=> bm!151121 m!2828489))

(declare-fun m!2828491 () Bool)

(assert (=> b!2458052 m!2828491))

(declare-fun m!2828493 () Bool)

(assert (=> bm!151123 m!2828493))

(assert (=> bs!465933 d!707955))

(assert (=> d!707479 d!707265))

(assert (=> d!707479 d!707267))

(declare-fun bm!151124 () Bool)

(declare-fun call!151129 () Bool)

(declare-fun c!392353 () Bool)

(assert (=> bm!151124 (= call!151129 (validRegex!2917 (ite c!392353 (regTwo!14963 lt!880344) (regOne!14962 lt!880344))))))

(declare-fun b!2458059 () Bool)

(declare-fun res!1041926 () Bool)

(declare-fun e!1559295 () Bool)

(assert (=> b!2458059 (=> (not res!1041926) (not e!1559295))))

(declare-fun call!151130 () Bool)

(assert (=> b!2458059 (= res!1041926 call!151130)))

(declare-fun e!1559289 () Bool)

(assert (=> b!2458059 (= e!1559289 e!1559295)))

(declare-fun b!2458060 () Bool)

(declare-fun e!1559292 () Bool)

(declare-fun call!151131 () Bool)

(assert (=> b!2458060 (= e!1559292 call!151131)))

(declare-fun bm!151125 () Bool)

(assert (=> bm!151125 (= call!151130 call!151131)))

(declare-fun b!2458061 () Bool)

(declare-fun e!1559291 () Bool)

(assert (=> b!2458061 (= e!1559291 e!1559292)))

(declare-fun res!1041922 () Bool)

(assert (=> b!2458061 (= res!1041922 (not (nullable!2218 (reg!7554 lt!880344))))))

(assert (=> b!2458061 (=> (not res!1041922) (not e!1559292))))

(declare-fun b!2458062 () Bool)

(declare-fun res!1041924 () Bool)

(declare-fun e!1559294 () Bool)

(assert (=> b!2458062 (=> res!1041924 e!1559294)))

(assert (=> b!2458062 (= res!1041924 (not ((_ is Concat!11861) lt!880344)))))

(assert (=> b!2458062 (= e!1559289 e!1559294)))

(declare-fun b!2458063 () Bool)

(declare-fun e!1559293 () Bool)

(assert (=> b!2458063 (= e!1559294 e!1559293)))

(declare-fun res!1041923 () Bool)

(assert (=> b!2458063 (=> (not res!1041923) (not e!1559293))))

(assert (=> b!2458063 (= res!1041923 call!151129)))

(declare-fun c!392352 () Bool)

(declare-fun bm!151126 () Bool)

(assert (=> bm!151126 (= call!151131 (validRegex!2917 (ite c!392352 (reg!7554 lt!880344) (ite c!392353 (regOne!14963 lt!880344) (regTwo!14962 lt!880344)))))))

(declare-fun b!2458065 () Bool)

(assert (=> b!2458065 (= e!1559293 call!151130)))

(declare-fun b!2458066 () Bool)

(assert (=> b!2458066 (= e!1559291 e!1559289)))

(assert (=> b!2458066 (= c!392353 ((_ is Union!7225) lt!880344))))

(declare-fun b!2458067 () Bool)

(declare-fun e!1559290 () Bool)

(assert (=> b!2458067 (= e!1559290 e!1559291)))

(assert (=> b!2458067 (= c!392352 ((_ is Star!7225) lt!880344))))

(declare-fun b!2458064 () Bool)

(assert (=> b!2458064 (= e!1559295 call!151129)))

(declare-fun d!707957 () Bool)

(declare-fun res!1041925 () Bool)

(assert (=> d!707957 (=> res!1041925 e!1559290)))

(assert (=> d!707957 (= res!1041925 ((_ is ElementMatch!7225) lt!880344))))

(assert (=> d!707957 (= (validRegex!2917 lt!880344) e!1559290)))

(assert (= (and d!707957 (not res!1041925)) b!2458067))

(assert (= (and b!2458067 c!392352) b!2458061))

(assert (= (and b!2458067 (not c!392352)) b!2458066))

(assert (= (and b!2458061 res!1041922) b!2458060))

(assert (= (and b!2458066 c!392353) b!2458059))

(assert (= (and b!2458066 (not c!392353)) b!2458062))

(assert (= (and b!2458059 res!1041926) b!2458064))

(assert (= (and b!2458062 (not res!1041924)) b!2458063))

(assert (= (and b!2458063 res!1041923) b!2458065))

(assert (= (or b!2458059 b!2458065) bm!151125))

(assert (= (or b!2458064 b!2458063) bm!151124))

(assert (= (or b!2458060 bm!151125) bm!151126))

(declare-fun m!2828495 () Bool)

(assert (=> bm!151124 m!2828495))

(declare-fun m!2828497 () Bool)

(assert (=> b!2458061 m!2828497))

(declare-fun m!2828499 () Bool)

(assert (=> bm!151126 m!2828499))

(assert (=> d!707449 d!707957))

(declare-fun d!707959 () Bool)

(declare-fun res!1041927 () Bool)

(declare-fun e!1559296 () Bool)

(assert (=> d!707959 (=> res!1041927 e!1559296)))

(assert (=> d!707959 (= res!1041927 ((_ is Nil!28588) (t!208663 l!9164)))))

(assert (=> d!707959 (= (forall!5859 (t!208663 l!9164) lambda!93042) e!1559296)))

(declare-fun b!2458068 () Bool)

(declare-fun e!1559297 () Bool)

(assert (=> b!2458068 (= e!1559296 e!1559297)))

(declare-fun res!1041928 () Bool)

(assert (=> b!2458068 (=> (not res!1041928) (not e!1559297))))

(assert (=> b!2458068 (= res!1041928 (dynLambda!12274 lambda!93042 (h!33989 (t!208663 l!9164))))))

(declare-fun b!2458069 () Bool)

(assert (=> b!2458069 (= e!1559297 (forall!5859 (t!208663 (t!208663 l!9164)) lambda!93042))))

(assert (= (and d!707959 (not res!1041927)) b!2458068))

(assert (= (and b!2458068 res!1041928) b!2458069))

(declare-fun b_lambda!75207 () Bool)

(assert (=> (not b_lambda!75207) (not b!2458068)))

(declare-fun m!2828501 () Bool)

(assert (=> b!2458068 m!2828501))

(declare-fun m!2828503 () Bool)

(assert (=> b!2458069 m!2828503))

(assert (=> d!707449 d!707959))

(declare-fun d!707961 () Bool)

(assert (=> d!707961 (= (isEmpty!16615 (tail!3878 (t!208663 l!9164))) ((_ is Nil!28588) (tail!3878 (t!208663 l!9164))))))

(assert (=> b!2456198 d!707961))

(declare-fun d!707963 () Bool)

(assert (=> d!707963 (= (tail!3878 (t!208663 l!9164)) (t!208663 (t!208663 l!9164)))))

(assert (=> b!2456198 d!707963))

(declare-fun d!707965 () Bool)

(assert (=> d!707965 (= (nullable!2218 (regOne!14962 lt!880248)) (nullableFct!541 (regOne!14962 lt!880248)))))

(declare-fun bs!466102 () Bool)

(assert (= bs!466102 d!707965))

(declare-fun m!2828505 () Bool)

(assert (=> bs!466102 m!2828505))

(assert (=> b!2456160 d!707965))

(declare-fun bm!151127 () Bool)

(declare-fun call!151132 () Bool)

(declare-fun c!392355 () Bool)

(assert (=> bm!151127 (= call!151132 (validRegex!2917 (ite c!392355 (regTwo!14963 (h!33989 lt!880247)) (regOne!14962 (h!33989 lt!880247)))))))

(declare-fun b!2458070 () Bool)

(declare-fun res!1041933 () Bool)

(declare-fun e!1559304 () Bool)

(assert (=> b!2458070 (=> (not res!1041933) (not e!1559304))))

(declare-fun call!151133 () Bool)

(assert (=> b!2458070 (= res!1041933 call!151133)))

(declare-fun e!1559298 () Bool)

(assert (=> b!2458070 (= e!1559298 e!1559304)))

(declare-fun b!2458071 () Bool)

(declare-fun e!1559301 () Bool)

(declare-fun call!151134 () Bool)

(assert (=> b!2458071 (= e!1559301 call!151134)))

(declare-fun bm!151128 () Bool)

(assert (=> bm!151128 (= call!151133 call!151134)))

(declare-fun b!2458072 () Bool)

(declare-fun e!1559300 () Bool)

(assert (=> b!2458072 (= e!1559300 e!1559301)))

(declare-fun res!1041929 () Bool)

(assert (=> b!2458072 (= res!1041929 (not (nullable!2218 (reg!7554 (h!33989 lt!880247)))))))

(assert (=> b!2458072 (=> (not res!1041929) (not e!1559301))))

(declare-fun b!2458073 () Bool)

(declare-fun res!1041931 () Bool)

(declare-fun e!1559303 () Bool)

(assert (=> b!2458073 (=> res!1041931 e!1559303)))

(assert (=> b!2458073 (= res!1041931 (not ((_ is Concat!11861) (h!33989 lt!880247))))))

(assert (=> b!2458073 (= e!1559298 e!1559303)))

(declare-fun b!2458074 () Bool)

(declare-fun e!1559302 () Bool)

(assert (=> b!2458074 (= e!1559303 e!1559302)))

(declare-fun res!1041930 () Bool)

(assert (=> b!2458074 (=> (not res!1041930) (not e!1559302))))

(assert (=> b!2458074 (= res!1041930 call!151132)))

(declare-fun c!392354 () Bool)

(declare-fun bm!151129 () Bool)

(assert (=> bm!151129 (= call!151134 (validRegex!2917 (ite c!392354 (reg!7554 (h!33989 lt!880247)) (ite c!392355 (regOne!14963 (h!33989 lt!880247)) (regTwo!14962 (h!33989 lt!880247))))))))

(declare-fun b!2458076 () Bool)

(assert (=> b!2458076 (= e!1559302 call!151133)))

(declare-fun b!2458077 () Bool)

(assert (=> b!2458077 (= e!1559300 e!1559298)))

(assert (=> b!2458077 (= c!392355 ((_ is Union!7225) (h!33989 lt!880247)))))

(declare-fun b!2458078 () Bool)

(declare-fun e!1559299 () Bool)

(assert (=> b!2458078 (= e!1559299 e!1559300)))

(assert (=> b!2458078 (= c!392354 ((_ is Star!7225) (h!33989 lt!880247)))))

(declare-fun b!2458075 () Bool)

(assert (=> b!2458075 (= e!1559304 call!151132)))

(declare-fun d!707967 () Bool)

(declare-fun res!1041932 () Bool)

(assert (=> d!707967 (=> res!1041932 e!1559299)))

(assert (=> d!707967 (= res!1041932 ((_ is ElementMatch!7225) (h!33989 lt!880247)))))

(assert (=> d!707967 (= (validRegex!2917 (h!33989 lt!880247)) e!1559299)))

(assert (= (and d!707967 (not res!1041932)) b!2458078))

(assert (= (and b!2458078 c!392354) b!2458072))

(assert (= (and b!2458078 (not c!392354)) b!2458077))

(assert (= (and b!2458072 res!1041929) b!2458071))

(assert (= (and b!2458077 c!392355) b!2458070))

(assert (= (and b!2458077 (not c!392355)) b!2458073))

(assert (= (and b!2458070 res!1041933) b!2458075))

(assert (= (and b!2458073 (not res!1041931)) b!2458074))

(assert (= (and b!2458074 res!1041930) b!2458076))

(assert (= (or b!2458070 b!2458076) bm!151128))

(assert (= (or b!2458075 b!2458074) bm!151127))

(assert (= (or b!2458071 bm!151128) bm!151129))

(declare-fun m!2828507 () Bool)

(assert (=> bm!151127 m!2828507))

(declare-fun m!2828509 () Bool)

(assert (=> b!2458072 m!2828509))

(declare-fun m!2828511 () Bool)

(assert (=> bm!151129 m!2828511))

(assert (=> bs!465935 d!707967))

(declare-fun c!392357 () Bool)

(declare-fun bm!151130 () Bool)

(declare-fun call!151135 () Bool)

(assert (=> bm!151130 (= call!151135 (validRegex!2917 (ite c!392357 (regTwo!14963 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))) (regOne!14962 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))))))))

(declare-fun b!2458079 () Bool)

(declare-fun res!1041938 () Bool)

(declare-fun e!1559311 () Bool)

(assert (=> b!2458079 (=> (not res!1041938) (not e!1559311))))

(declare-fun call!151136 () Bool)

(assert (=> b!2458079 (= res!1041938 call!151136)))

(declare-fun e!1559305 () Bool)

(assert (=> b!2458079 (= e!1559305 e!1559311)))

(declare-fun b!2458080 () Bool)

(declare-fun e!1559308 () Bool)

(declare-fun call!151137 () Bool)

(assert (=> b!2458080 (= e!1559308 call!151137)))

(declare-fun bm!151131 () Bool)

(assert (=> bm!151131 (= call!151136 call!151137)))

(declare-fun b!2458081 () Bool)

(declare-fun e!1559307 () Bool)

(assert (=> b!2458081 (= e!1559307 e!1559308)))

(declare-fun res!1041934 () Bool)

(assert (=> b!2458081 (= res!1041934 (not (nullable!2218 (reg!7554 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))))))))

(assert (=> b!2458081 (=> (not res!1041934) (not e!1559308))))

(declare-fun b!2458082 () Bool)

(declare-fun res!1041936 () Bool)

(declare-fun e!1559310 () Bool)

(assert (=> b!2458082 (=> res!1041936 e!1559310)))

(assert (=> b!2458082 (= res!1041936 (not ((_ is Concat!11861) (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302))))))))

(assert (=> b!2458082 (= e!1559305 e!1559310)))

(declare-fun b!2458083 () Bool)

(declare-fun e!1559309 () Bool)

(assert (=> b!2458083 (= e!1559310 e!1559309)))

(declare-fun res!1041935 () Bool)

(assert (=> b!2458083 (=> (not res!1041935) (not e!1559309))))

(assert (=> b!2458083 (= res!1041935 call!151135)))

(declare-fun c!392356 () Bool)

(declare-fun bm!151132 () Bool)

(assert (=> bm!151132 (= call!151137 (validRegex!2917 (ite c!392356 (reg!7554 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))) (ite c!392357 (regOne!14963 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))) (regTwo!14962 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302))))))))))

(declare-fun b!2458085 () Bool)

(assert (=> b!2458085 (= e!1559309 call!151136)))

(declare-fun b!2458086 () Bool)

(assert (=> b!2458086 (= e!1559307 e!1559305)))

(assert (=> b!2458086 (= c!392357 ((_ is Union!7225) (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))))))

(declare-fun b!2458087 () Bool)

(declare-fun e!1559306 () Bool)

(assert (=> b!2458087 (= e!1559306 e!1559307)))

(assert (=> b!2458087 (= c!392356 ((_ is Star!7225) (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))))))

(declare-fun b!2458084 () Bool)

(assert (=> b!2458084 (= e!1559311 call!151135)))

(declare-fun d!707969 () Bool)

(declare-fun res!1041937 () Bool)

(assert (=> d!707969 (=> res!1041937 e!1559306)))

(assert (=> d!707969 (= res!1041937 ((_ is ElementMatch!7225) (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))))))

(assert (=> d!707969 (= (validRegex!2917 (ite c!392031 (reg!7554 lt!880302) (ite c!392032 (regOne!14963 lt!880302) (regTwo!14962 lt!880302)))) e!1559306)))

(assert (= (and d!707969 (not res!1041937)) b!2458087))

(assert (= (and b!2458087 c!392356) b!2458081))

(assert (= (and b!2458087 (not c!392356)) b!2458086))

(assert (= (and b!2458081 res!1041934) b!2458080))

(assert (= (and b!2458086 c!392357) b!2458079))

(assert (= (and b!2458086 (not c!392357)) b!2458082))

(assert (= (and b!2458079 res!1041938) b!2458084))

(assert (= (and b!2458082 (not res!1041936)) b!2458083))

(assert (= (and b!2458083 res!1041935) b!2458085))

(assert (= (or b!2458079 b!2458085) bm!151131))

(assert (= (or b!2458084 b!2458083) bm!151130))

(assert (= (or b!2458080 bm!151131) bm!151132))

(declare-fun m!2828513 () Bool)

(assert (=> bm!151130 m!2828513))

(declare-fun m!2828515 () Bool)

(assert (=> b!2458081 m!2828515))

(declare-fun m!2828517 () Bool)

(assert (=> bm!151132 m!2828517))

(assert (=> bm!150902 d!707969))

(assert (=> bm!150921 d!707447))

(declare-fun bm!151133 () Bool)

(declare-fun c!392359 () Bool)

(declare-fun call!151138 () Bool)

(assert (=> bm!151133 (= call!151138 (validRegex!2917 (ite c!392359 (regTwo!14963 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) (regOne!14962 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))))

(declare-fun b!2458088 () Bool)

(declare-fun res!1041943 () Bool)

(declare-fun e!1559318 () Bool)

(assert (=> b!2458088 (=> (not res!1041943) (not e!1559318))))

(declare-fun call!151139 () Bool)

(assert (=> b!2458088 (= res!1041943 call!151139)))

(declare-fun e!1559312 () Bool)

(assert (=> b!2458088 (= e!1559312 e!1559318)))

(declare-fun b!2458089 () Bool)

(declare-fun e!1559315 () Bool)

(declare-fun call!151140 () Bool)

(assert (=> b!2458089 (= e!1559315 call!151140)))

(declare-fun bm!151134 () Bool)

(assert (=> bm!151134 (= call!151139 call!151140)))

(declare-fun b!2458090 () Bool)

(declare-fun e!1559314 () Bool)

(assert (=> b!2458090 (= e!1559314 e!1559315)))

(declare-fun res!1041939 () Bool)

(assert (=> b!2458090 (= res!1041939 (not (nullable!2218 (reg!7554 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))))

(assert (=> b!2458090 (=> (not res!1041939) (not e!1559315))))

(declare-fun b!2458091 () Bool)

(declare-fun res!1041941 () Bool)

(declare-fun e!1559317 () Bool)

(assert (=> b!2458091 (=> res!1041941 e!1559317)))

(assert (=> b!2458091 (= res!1041941 (not ((_ is Concat!11861) (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))

(assert (=> b!2458091 (= e!1559312 e!1559317)))

(declare-fun b!2458092 () Bool)

(declare-fun e!1559316 () Bool)

(assert (=> b!2458092 (= e!1559317 e!1559316)))

(declare-fun res!1041940 () Bool)

(assert (=> b!2458092 (=> (not res!1041940) (not e!1559316))))

(assert (=> b!2458092 (= res!1041940 call!151138)))

(declare-fun bm!151135 () Bool)

(declare-fun c!392358 () Bool)

(assert (=> bm!151135 (= call!151140 (validRegex!2917 (ite c!392358 (reg!7554 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) (ite c!392359 (regOne!14963 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) (regTwo!14962 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))))

(declare-fun b!2458094 () Bool)

(assert (=> b!2458094 (= e!1559316 call!151139)))

(declare-fun b!2458095 () Bool)

(assert (=> b!2458095 (= e!1559314 e!1559312)))

(assert (=> b!2458095 (= c!392359 ((_ is Union!7225) (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(declare-fun b!2458096 () Bool)

(declare-fun e!1559313 () Bool)

(assert (=> b!2458096 (= e!1559313 e!1559314)))

(assert (=> b!2458096 (= c!392358 ((_ is Star!7225) (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(declare-fun b!2458093 () Bool)

(assert (=> b!2458093 (= e!1559318 call!151138)))

(declare-fun d!707971 () Bool)

(declare-fun res!1041942 () Bool)

(assert (=> d!707971 (=> res!1041942 e!1559313)))

(assert (=> d!707971 (= res!1041942 ((_ is ElementMatch!7225) (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(assert (=> d!707971 (= (validRegex!2917 (ite c!392088 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392089 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) e!1559313)))

(assert (= (and d!707971 (not res!1041942)) b!2458096))

(assert (= (and b!2458096 c!392358) b!2458090))

(assert (= (and b!2458096 (not c!392358)) b!2458095))

(assert (= (and b!2458090 res!1041939) b!2458089))

(assert (= (and b!2458095 c!392359) b!2458088))

(assert (= (and b!2458095 (not c!392359)) b!2458091))

(assert (= (and b!2458088 res!1041943) b!2458093))

(assert (= (and b!2458091 (not res!1041941)) b!2458092))

(assert (= (and b!2458092 res!1041940) b!2458094))

(assert (= (or b!2458088 b!2458094) bm!151134))

(assert (= (or b!2458093 b!2458092) bm!151133))

(assert (= (or b!2458089 bm!151134) bm!151135))

(declare-fun m!2828519 () Bool)

(assert (=> bm!151133 m!2828519))

(declare-fun m!2828521 () Bool)

(assert (=> b!2458090 m!2828521))

(declare-fun m!2828523 () Bool)

(assert (=> bm!151135 m!2828523))

(assert (=> bm!150935 d!707971))

(declare-fun b!2458097 () Bool)

(declare-fun e!1559324 () Bool)

(assert (=> b!2458097 (= e!1559324 (nullable!2218 EmptyExpr!7225))))

(declare-fun bm!151136 () Bool)

(declare-fun call!151141 () Bool)

(assert (=> bm!151136 (= call!151141 (isEmpty!16618 (t!208664 s!9460)))))

(declare-fun b!2458098 () Bool)

(declare-fun e!1559322 () Bool)

(declare-fun lt!880424 () Bool)

(assert (=> b!2458098 (= e!1559322 (= lt!880424 call!151141))))

(declare-fun b!2458099 () Bool)

(declare-fun e!1559319 () Bool)

(assert (=> b!2458099 (= e!1559319 (not lt!880424))))

(declare-fun b!2458100 () Bool)

(declare-fun e!1559320 () Bool)

(assert (=> b!2458100 (= e!1559320 (= (head!5607 (t!208664 s!9460)) (c!391797 EmptyExpr!7225)))))

(declare-fun b!2458101 () Bool)

(declare-fun e!1559323 () Bool)

(declare-fun e!1559325 () Bool)

(assert (=> b!2458101 (= e!1559323 e!1559325)))

(declare-fun res!1041950 () Bool)

(assert (=> b!2458101 (=> (not res!1041950) (not e!1559325))))

(assert (=> b!2458101 (= res!1041950 (not lt!880424))))

(declare-fun b!2458102 () Bool)

(assert (=> b!2458102 (= e!1559324 (matchR!3340 (derivativeStep!1872 EmptyExpr!7225 (head!5607 (t!208664 s!9460))) (tail!3880 (t!208664 s!9460))))))

(declare-fun b!2458103 () Bool)

(declare-fun res!1041944 () Bool)

(assert (=> b!2458103 (=> (not res!1041944) (not e!1559320))))

(assert (=> b!2458103 (= res!1041944 (not call!151141))))

(declare-fun b!2458104 () Bool)

(assert (=> b!2458104 (= e!1559322 e!1559319)))

(declare-fun c!392361 () Bool)

(assert (=> b!2458104 (= c!392361 ((_ is EmptyLang!7225) EmptyExpr!7225))))

(declare-fun b!2458105 () Bool)

(declare-fun e!1559321 () Bool)

(assert (=> b!2458105 (= e!1559325 e!1559321)))

(declare-fun res!1041945 () Bool)

(assert (=> b!2458105 (=> res!1041945 e!1559321)))

(assert (=> b!2458105 (= res!1041945 call!151141)))

(declare-fun b!2458106 () Bool)

(declare-fun res!1041951 () Bool)

(assert (=> b!2458106 (=> (not res!1041951) (not e!1559320))))

(assert (=> b!2458106 (= res!1041951 (isEmpty!16618 (tail!3880 (t!208664 s!9460))))))

(declare-fun b!2458107 () Bool)

(declare-fun res!1041946 () Bool)

(assert (=> b!2458107 (=> res!1041946 e!1559323)))

(assert (=> b!2458107 (= res!1041946 (not ((_ is ElementMatch!7225) EmptyExpr!7225)))))

(assert (=> b!2458107 (= e!1559319 e!1559323)))

(declare-fun d!707973 () Bool)

(assert (=> d!707973 e!1559322))

(declare-fun c!392362 () Bool)

(assert (=> d!707973 (= c!392362 ((_ is EmptyExpr!7225) EmptyExpr!7225))))

(assert (=> d!707973 (= lt!880424 e!1559324)))

(declare-fun c!392360 () Bool)

(assert (=> d!707973 (= c!392360 (isEmpty!16618 (t!208664 s!9460)))))

(assert (=> d!707973 (validRegex!2917 EmptyExpr!7225)))

(assert (=> d!707973 (= (matchR!3340 EmptyExpr!7225 (t!208664 s!9460)) lt!880424)))

(declare-fun b!2458108 () Bool)

(declare-fun res!1041948 () Bool)

(assert (=> b!2458108 (=> res!1041948 e!1559321)))

(assert (=> b!2458108 (= res!1041948 (not (isEmpty!16618 (tail!3880 (t!208664 s!9460)))))))

(declare-fun b!2458109 () Bool)

(assert (=> b!2458109 (= e!1559321 (not (= (head!5607 (t!208664 s!9460)) (c!391797 EmptyExpr!7225))))))

(declare-fun b!2458110 () Bool)

(declare-fun res!1041949 () Bool)

(assert (=> b!2458110 (=> res!1041949 e!1559323)))

(assert (=> b!2458110 (= res!1041949 e!1559320)))

(declare-fun res!1041947 () Bool)

(assert (=> b!2458110 (=> (not res!1041947) (not e!1559320))))

(assert (=> b!2458110 (= res!1041947 lt!880424)))

(assert (= (and d!707973 c!392360) b!2458097))

(assert (= (and d!707973 (not c!392360)) b!2458102))

(assert (= (and d!707973 c!392362) b!2458098))

(assert (= (and d!707973 (not c!392362)) b!2458104))

(assert (= (and b!2458104 c!392361) b!2458099))

(assert (= (and b!2458104 (not c!392361)) b!2458107))

(assert (= (and b!2458107 (not res!1041946)) b!2458110))

(assert (= (and b!2458110 res!1041947) b!2458103))

(assert (= (and b!2458103 res!1041944) b!2458106))

(assert (= (and b!2458106 res!1041951) b!2458100))

(assert (= (and b!2458110 (not res!1041949)) b!2458101))

(assert (= (and b!2458101 res!1041950) b!2458105))

(assert (= (and b!2458105 (not res!1041945)) b!2458108))

(assert (= (and b!2458108 (not res!1041948)) b!2458109))

(assert (= (or b!2458098 b!2458103 b!2458105) bm!151136))

(declare-fun m!2828525 () Bool)

(assert (=> b!2458108 m!2828525))

(assert (=> b!2458108 m!2828525))

(declare-fun m!2828527 () Bool)

(assert (=> b!2458108 m!2828527))

(declare-fun m!2828529 () Bool)

(assert (=> d!707973 m!2828529))

(assert (=> d!707973 m!2827445))

(assert (=> b!2458106 m!2828525))

(assert (=> b!2458106 m!2828525))

(assert (=> b!2458106 m!2828527))

(declare-fun m!2828531 () Bool)

(assert (=> b!2458102 m!2828531))

(assert (=> b!2458102 m!2828531))

(declare-fun m!2828533 () Bool)

(assert (=> b!2458102 m!2828533))

(assert (=> b!2458102 m!2828525))

(assert (=> b!2458102 m!2828533))

(assert (=> b!2458102 m!2828525))

(declare-fun m!2828535 () Bool)

(assert (=> b!2458102 m!2828535))

(assert (=> b!2458100 m!2828531))

(assert (=> b!2458097 m!2827453))

(assert (=> b!2458109 m!2828531))

(assert (=> bm!151136 m!2828529))

(assert (=> b!2456183 d!707973))

(declare-fun d!707975 () Bool)

(assert (=> d!707975 (= (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (h!33990 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(assert (=> b!2456299 d!707975))

(declare-fun d!707977 () Bool)

(assert (not d!707977))

(assert (=> b!2456251 d!707977))

(declare-fun d!707979 () Bool)

(assert (not d!707979))

(assert (=> b!2456251 d!707979))

(declare-fun d!707981 () Bool)

(assert (not d!707981))

(assert (=> b!2456251 d!707981))

(declare-fun d!707983 () Bool)

(assert (not d!707983))

(assert (=> b!2456251 d!707983))

(assert (=> bm!150918 d!707447))

(declare-fun d!707985 () Bool)

(assert (=> d!707985 (= (isEmpty!16618 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) ((_ is Nil!28589) (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(assert (=> b!2456307 d!707985))

(declare-fun d!707987 () Bool)

(assert (=> d!707987 (= (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (t!208664 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(assert (=> b!2456307 d!707987))

(assert (=> b!2456366 d!707475))

(declare-fun d!707989 () Bool)

(assert (=> d!707989 (= (isDefined!4526 lt!880343) (not (isEmpty!16619 lt!880343)))))

(declare-fun bs!466103 () Bool)

(assert (= bs!466103 d!707989))

(declare-fun m!2828537 () Bool)

(assert (=> bs!466103 m!2828537))

(assert (=> d!707443 d!707989))

(declare-fun b!2458111 () Bool)

(declare-fun e!1559331 () Bool)

(assert (=> b!2458111 (= e!1559331 (nullable!2218 lt!880248))))

(declare-fun bm!151137 () Bool)

(declare-fun call!151142 () Bool)

(assert (=> bm!151137 (= call!151142 (isEmpty!16618 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(declare-fun b!2458112 () Bool)

(declare-fun e!1559329 () Bool)

(declare-fun lt!880425 () Bool)

(assert (=> b!2458112 (= e!1559329 (= lt!880425 call!151142))))

(declare-fun b!2458113 () Bool)

(declare-fun e!1559326 () Bool)

(assert (=> b!2458113 (= e!1559326 (not lt!880425))))

(declare-fun b!2458114 () Bool)

(declare-fun e!1559327 () Bool)

(assert (=> b!2458114 (= e!1559327 (= (head!5607 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (c!391797 lt!880248)))))

(declare-fun b!2458115 () Bool)

(declare-fun e!1559330 () Bool)

(declare-fun e!1559332 () Bool)

(assert (=> b!2458115 (= e!1559330 e!1559332)))

(declare-fun res!1041958 () Bool)

(assert (=> b!2458115 (=> (not res!1041958) (not e!1559332))))

(assert (=> b!2458115 (= res!1041958 (not lt!880425))))

(declare-fun b!2458116 () Bool)

(assert (=> b!2458116 (= e!1559331 (matchR!3340 (derivativeStep!1872 lt!880248 (head!5607 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))) (tail!3880 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(declare-fun b!2458117 () Bool)

(declare-fun res!1041952 () Bool)

(assert (=> b!2458117 (=> (not res!1041952) (not e!1559327))))

(assert (=> b!2458117 (= res!1041952 (not call!151142))))

(declare-fun b!2458118 () Bool)

(assert (=> b!2458118 (= e!1559329 e!1559326)))

(declare-fun c!392364 () Bool)

(assert (=> b!2458118 (= c!392364 ((_ is EmptyLang!7225) lt!880248))))

(declare-fun b!2458119 () Bool)

(declare-fun e!1559328 () Bool)

(assert (=> b!2458119 (= e!1559332 e!1559328)))

(declare-fun res!1041953 () Bool)

(assert (=> b!2458119 (=> res!1041953 e!1559328)))

(assert (=> b!2458119 (= res!1041953 call!151142)))

(declare-fun b!2458120 () Bool)

(declare-fun res!1041959 () Bool)

(assert (=> b!2458120 (=> (not res!1041959) (not e!1559327))))

(assert (=> b!2458120 (= res!1041959 (isEmpty!16618 (tail!3880 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(declare-fun b!2458121 () Bool)

(declare-fun res!1041954 () Bool)

(assert (=> b!2458121 (=> res!1041954 e!1559330)))

(assert (=> b!2458121 (= res!1041954 (not ((_ is ElementMatch!7225) lt!880248)))))

(assert (=> b!2458121 (= e!1559326 e!1559330)))

(declare-fun d!707991 () Bool)

(assert (=> d!707991 e!1559329))

(declare-fun c!392365 () Bool)

(assert (=> d!707991 (= c!392365 ((_ is EmptyExpr!7225) lt!880248))))

(assert (=> d!707991 (= lt!880425 e!1559331)))

(declare-fun c!392363 () Bool)

(assert (=> d!707991 (= c!392363 (isEmpty!16618 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(assert (=> d!707991 (validRegex!2917 lt!880248)))

(assert (=> d!707991 (= (matchR!3340 lt!880248 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) lt!880425)))

(declare-fun b!2458122 () Bool)

(declare-fun res!1041956 () Bool)

(assert (=> b!2458122 (=> res!1041956 e!1559328)))

(assert (=> b!2458122 (= res!1041956 (not (isEmpty!16618 (tail!3880 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))))

(declare-fun b!2458123 () Bool)

(assert (=> b!2458123 (= e!1559328 (not (= (head!5607 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) (c!391797 lt!880248))))))

(declare-fun b!2458124 () Bool)

(declare-fun res!1041957 () Bool)

(assert (=> b!2458124 (=> res!1041957 e!1559330)))

(assert (=> b!2458124 (= res!1041957 e!1559327)))

(declare-fun res!1041955 () Bool)

(assert (=> b!2458124 (=> (not res!1041955) (not e!1559327))))

(assert (=> b!2458124 (= res!1041955 lt!880425)))

(assert (= (and d!707991 c!392363) b!2458111))

(assert (= (and d!707991 (not c!392363)) b!2458116))

(assert (= (and d!707991 c!392365) b!2458112))

(assert (= (and d!707991 (not c!392365)) b!2458118))

(assert (= (and b!2458118 c!392364) b!2458113))

(assert (= (and b!2458118 (not c!392364)) b!2458121))

(assert (= (and b!2458121 (not res!1041954)) b!2458124))

(assert (= (and b!2458124 res!1041955) b!2458117))

(assert (= (and b!2458117 res!1041952) b!2458120))

(assert (= (and b!2458120 res!1041959) b!2458114))

(assert (= (and b!2458124 (not res!1041957)) b!2458115))

(assert (= (and b!2458115 res!1041958) b!2458119))

(assert (= (and b!2458119 (not res!1041953)) b!2458122))

(assert (= (and b!2458122 (not res!1041956)) b!2458123))

(assert (= (or b!2458112 b!2458117 b!2458119) bm!151137))

(assert (=> b!2458122 m!2826947))

(declare-fun m!2828539 () Bool)

(assert (=> b!2458122 m!2828539))

(assert (=> b!2458122 m!2828539))

(declare-fun m!2828541 () Bool)

(assert (=> b!2458122 m!2828541))

(assert (=> d!707991 m!2826947))

(declare-fun m!2828543 () Bool)

(assert (=> d!707991 m!2828543))

(assert (=> d!707991 m!2826907))

(assert (=> b!2458120 m!2826947))

(assert (=> b!2458120 m!2828539))

(assert (=> b!2458120 m!2828539))

(assert (=> b!2458120 m!2828541))

(assert (=> b!2458116 m!2826947))

(declare-fun m!2828545 () Bool)

(assert (=> b!2458116 m!2828545))

(assert (=> b!2458116 m!2828545))

(declare-fun m!2828547 () Bool)

(assert (=> b!2458116 m!2828547))

(assert (=> b!2458116 m!2826947))

(assert (=> b!2458116 m!2828539))

(assert (=> b!2458116 m!2828547))

(assert (=> b!2458116 m!2828539))

(declare-fun m!2828549 () Bool)

(assert (=> b!2458116 m!2828549))

(assert (=> b!2458114 m!2826947))

(assert (=> b!2458114 m!2828545))

(assert (=> b!2458111 m!2826985))

(assert (=> b!2458123 m!2826947))

(assert (=> b!2458123 m!2828545))

(assert (=> bm!151137 m!2826947))

(assert (=> bm!151137 m!2828543))

(assert (=> d!707443 d!707991))

(assert (=> d!707443 d!707469))

(declare-fun d!707993 () Bool)

(assert (=> d!707993 (= (Exists!1244 (ite c!392059 lambda!93045 lambda!93046)) (choose!14548 (ite c!392059 lambda!93045 lambda!93046)))))

(declare-fun bs!466104 () Bool)

(assert (= bs!466104 d!707993))

(declare-fun m!2828551 () Bool)

(assert (=> bs!466104 m!2828551))

(assert (=> bm!150919 d!707993))

(assert (=> b!2456131 d!707907))

(assert (=> b!2456131 d!707909))

(declare-fun d!707995 () Bool)

(declare-fun c!392366 () Bool)

(assert (=> d!707995 (= c!392366 ((_ is Nil!28589) lt!880337))))

(declare-fun e!1559333 () (InoxSet C!14608))

(assert (=> d!707995 (= (content!3938 lt!880337) e!1559333)))

(declare-fun b!2458125 () Bool)

(assert (=> b!2458125 (= e!1559333 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2458126 () Bool)

(assert (=> b!2458126 (= e!1559333 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 lt!880337) true) (content!3938 (t!208664 lt!880337))))))

(assert (= (and d!707995 c!392366) b!2458125))

(assert (= (and d!707995 (not c!392366)) b!2458126))

(declare-fun m!2828553 () Bool)

(assert (=> b!2458126 m!2828553))

(declare-fun m!2828555 () Bool)

(assert (=> b!2458126 m!2828555))

(assert (=> d!707439 d!707995))

(declare-fun d!707997 () Bool)

(assert (=> d!707997 (= (content!3938 Nil!28589) ((as const (Array C!14608 Bool)) false))))

(assert (=> d!707439 d!707997))

(declare-fun d!707999 () Bool)

(declare-fun c!392367 () Bool)

(assert (=> d!707999 (= c!392367 ((_ is Nil!28589) (Cons!28589 (h!33990 s!9460) Nil!28589)))))

(declare-fun e!1559334 () (InoxSet C!14608))

(assert (=> d!707999 (= (content!3938 (Cons!28589 (h!33990 s!9460) Nil!28589)) e!1559334)))

(declare-fun b!2458127 () Bool)

(assert (=> b!2458127 (= e!1559334 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2458128 () Bool)

(assert (=> b!2458128 (= e!1559334 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (Cons!28589 (h!33990 s!9460) Nil!28589)) true) (content!3938 (t!208664 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(assert (= (and d!707999 c!392367) b!2458127))

(assert (= (and d!707999 (not c!392367)) b!2458128))

(declare-fun m!2828557 () Bool)

(assert (=> b!2458128 m!2828557))

(declare-fun m!2828559 () Bool)

(assert (=> b!2458128 m!2828559))

(assert (=> d!707439 d!707999))

(declare-fun d!708001 () Bool)

(assert (=> d!708001 (= (isEmpty!16615 (t!208663 (t!208663 lt!880247))) ((_ is Nil!28588) (t!208663 (t!208663 lt!880247))))))

(assert (=> b!2456370 d!708001))

(declare-fun b!2458129 () Bool)

(declare-fun e!1559340 () Bool)

(assert (=> b!2458129 (= e!1559340 (nullable!2218 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296))))))))

(declare-fun bm!151138 () Bool)

(declare-fun call!151143 () Bool)

(assert (=> bm!151138 (= call!151143 (isEmpty!16618 (tail!3880 (_1!16630 (get!8844 lt!880296)))))))

(declare-fun b!2458130 () Bool)

(declare-fun e!1559338 () Bool)

(declare-fun lt!880426 () Bool)

(assert (=> b!2458130 (= e!1559338 (= lt!880426 call!151143))))

(declare-fun b!2458131 () Bool)

(declare-fun e!1559335 () Bool)

(assert (=> b!2458131 (= e!1559335 (not lt!880426))))

(declare-fun b!2458132 () Bool)

(declare-fun e!1559336 () Bool)

(assert (=> b!2458132 (= e!1559336 (= (head!5607 (tail!3880 (_1!16630 (get!8844 lt!880296)))) (c!391797 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296)))))))))

(declare-fun b!2458133 () Bool)

(declare-fun e!1559339 () Bool)

(declare-fun e!1559341 () Bool)

(assert (=> b!2458133 (= e!1559339 e!1559341)))

(declare-fun res!1041966 () Bool)

(assert (=> b!2458133 (=> (not res!1041966) (not e!1559341))))

(assert (=> b!2458133 (= res!1041966 (not lt!880426))))

(declare-fun b!2458134 () Bool)

(assert (=> b!2458134 (= e!1559340 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296)))) (head!5607 (tail!3880 (_1!16630 (get!8844 lt!880296))))) (tail!3880 (tail!3880 (_1!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458135 () Bool)

(declare-fun res!1041960 () Bool)

(assert (=> b!2458135 (=> (not res!1041960) (not e!1559336))))

(assert (=> b!2458135 (= res!1041960 (not call!151143))))

(declare-fun b!2458136 () Bool)

(assert (=> b!2458136 (= e!1559338 e!1559335)))

(declare-fun c!392369 () Bool)

(assert (=> b!2458136 (= c!392369 ((_ is EmptyLang!7225) (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458137 () Bool)

(declare-fun e!1559337 () Bool)

(assert (=> b!2458137 (= e!1559341 e!1559337)))

(declare-fun res!1041961 () Bool)

(assert (=> b!2458137 (=> res!1041961 e!1559337)))

(assert (=> b!2458137 (= res!1041961 call!151143)))

(declare-fun b!2458138 () Bool)

(declare-fun res!1041967 () Bool)

(assert (=> b!2458138 (=> (not res!1041967) (not e!1559336))))

(assert (=> b!2458138 (= res!1041967 (isEmpty!16618 (tail!3880 (tail!3880 (_1!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458139 () Bool)

(declare-fun res!1041962 () Bool)

(assert (=> b!2458139 (=> res!1041962 e!1559339)))

(assert (=> b!2458139 (= res!1041962 (not ((_ is ElementMatch!7225) (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296)))))))))

(assert (=> b!2458139 (= e!1559335 e!1559339)))

(declare-fun d!708003 () Bool)

(assert (=> d!708003 e!1559338))

(declare-fun c!392370 () Bool)

(assert (=> d!708003 (= c!392370 ((_ is EmptyExpr!7225) (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296))))))))

(assert (=> d!708003 (= lt!880426 e!1559340)))

(declare-fun c!392368 () Bool)

(assert (=> d!708003 (= c!392368 (isEmpty!16618 (tail!3880 (_1!16630 (get!8844 lt!880296)))))))

(assert (=> d!708003 (validRegex!2917 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296)))))))

(assert (=> d!708003 (= (matchR!3340 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296)))) (tail!3880 (_1!16630 (get!8844 lt!880296)))) lt!880426)))

(declare-fun b!2458140 () Bool)

(declare-fun res!1041964 () Bool)

(assert (=> b!2458140 (=> res!1041964 e!1559337)))

(assert (=> b!2458140 (= res!1041964 (not (isEmpty!16618 (tail!3880 (tail!3880 (_1!16630 (get!8844 lt!880296)))))))))

(declare-fun b!2458141 () Bool)

(assert (=> b!2458141 (= e!1559337 (not (= (head!5607 (tail!3880 (_1!16630 (get!8844 lt!880296)))) (c!391797 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296))))))))))

(declare-fun b!2458142 () Bool)

(declare-fun res!1041965 () Bool)

(assert (=> b!2458142 (=> res!1041965 e!1559339)))

(assert (=> b!2458142 (= res!1041965 e!1559336)))

(declare-fun res!1041963 () Bool)

(assert (=> b!2458142 (=> (not res!1041963) (not e!1559336))))

(assert (=> b!2458142 (= res!1041963 lt!880426)))

(assert (= (and d!708003 c!392368) b!2458129))

(assert (= (and d!708003 (not c!392368)) b!2458134))

(assert (= (and d!708003 c!392370) b!2458130))

(assert (= (and d!708003 (not c!392370)) b!2458136))

(assert (= (and b!2458136 c!392369) b!2458131))

(assert (= (and b!2458136 (not c!392369)) b!2458139))

(assert (= (and b!2458139 (not res!1041962)) b!2458142))

(assert (= (and b!2458142 res!1041963) b!2458135))

(assert (= (and b!2458135 res!1041960) b!2458138))

(assert (= (and b!2458138 res!1041967) b!2458132))

(assert (= (and b!2458142 (not res!1041965)) b!2458133))

(assert (= (and b!2458133 res!1041966) b!2458137))

(assert (= (and b!2458137 (not res!1041961)) b!2458140))

(assert (= (and b!2458140 (not res!1041964)) b!2458141))

(assert (= (or b!2458130 b!2458135 b!2458137) bm!151138))

(assert (=> b!2458140 m!2827475))

(declare-fun m!2828561 () Bool)

(assert (=> b!2458140 m!2828561))

(assert (=> b!2458140 m!2828561))

(declare-fun m!2828563 () Bool)

(assert (=> b!2458140 m!2828563))

(assert (=> d!708003 m!2827475))

(assert (=> d!708003 m!2827477))

(assert (=> d!708003 m!2827483))

(declare-fun m!2828565 () Bool)

(assert (=> d!708003 m!2828565))

(assert (=> b!2458138 m!2827475))

(assert (=> b!2458138 m!2828561))

(assert (=> b!2458138 m!2828561))

(assert (=> b!2458138 m!2828563))

(assert (=> b!2458134 m!2827475))

(declare-fun m!2828567 () Bool)

(assert (=> b!2458134 m!2828567))

(assert (=> b!2458134 m!2827483))

(assert (=> b!2458134 m!2828567))

(declare-fun m!2828569 () Bool)

(assert (=> b!2458134 m!2828569))

(assert (=> b!2458134 m!2827475))

(assert (=> b!2458134 m!2828561))

(assert (=> b!2458134 m!2828569))

(assert (=> b!2458134 m!2828561))

(declare-fun m!2828571 () Bool)

(assert (=> b!2458134 m!2828571))

(assert (=> b!2458132 m!2827475))

(assert (=> b!2458132 m!2828567))

(assert (=> b!2458129 m!2827483))

(declare-fun m!2828573 () Bool)

(assert (=> b!2458129 m!2828573))

(assert (=> b!2458141 m!2827475))

(assert (=> b!2458141 m!2828567))

(assert (=> bm!151138 m!2827475))

(assert (=> bm!151138 m!2827477))

(assert (=> b!2456274 d!708003))

(declare-fun b!2458143 () Bool)

(declare-fun e!1559343 () Regex!7225)

(declare-fun e!1559342 () Regex!7225)

(assert (=> b!2458143 (= e!1559343 e!1559342)))

(declare-fun c!392371 () Bool)

(assert (=> b!2458143 (= c!392371 ((_ is ElementMatch!7225) lt!880248))))

(declare-fun c!392375 () Bool)

(declare-fun call!151147 () Regex!7225)

(declare-fun c!392374 () Bool)

(declare-fun c!392373 () Bool)

(declare-fun bm!151139 () Bool)

(assert (=> bm!151139 (= call!151147 (derivativeStep!1872 (ite c!392375 (regTwo!14963 lt!880248) (ite c!392374 (reg!7554 lt!880248) (ite c!392373 (regTwo!14962 lt!880248) (regOne!14962 lt!880248)))) (head!5607 (_1!16630 (get!8844 lt!880296)))))))

(declare-fun b!2458144 () Bool)

(assert (=> b!2458144 (= e!1559342 (ite (= (head!5607 (_1!16630 (get!8844 lt!880296))) (c!391797 lt!880248)) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151140 () Bool)

(declare-fun call!151145 () Regex!7225)

(assert (=> bm!151140 (= call!151145 call!151147)))

(declare-fun b!2458145 () Bool)

(declare-fun e!1559346 () Regex!7225)

(assert (=> b!2458145 (= e!1559346 (Concat!11861 call!151145 lt!880248))))

(declare-fun b!2458146 () Bool)

(declare-fun call!151144 () Regex!7225)

(declare-fun call!151146 () Regex!7225)

(declare-fun e!1559344 () Regex!7225)

(assert (=> b!2458146 (= e!1559344 (Union!7225 (Concat!11861 call!151146 (regTwo!14962 lt!880248)) call!151144))))

(declare-fun d!708005 () Bool)

(declare-fun lt!880427 () Regex!7225)

(assert (=> d!708005 (validRegex!2917 lt!880427)))

(assert (=> d!708005 (= lt!880427 e!1559343)))

(declare-fun c!392372 () Bool)

(assert (=> d!708005 (= c!392372 (or ((_ is EmptyExpr!7225) lt!880248) ((_ is EmptyLang!7225) lt!880248)))))

(assert (=> d!708005 (validRegex!2917 lt!880248)))

(assert (=> d!708005 (= (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880296)))) lt!880427)))

(declare-fun bm!151141 () Bool)

(assert (=> bm!151141 (= call!151146 (derivativeStep!1872 (ite c!392375 (regOne!14963 lt!880248) (regOne!14962 lt!880248)) (head!5607 (_1!16630 (get!8844 lt!880296)))))))

(declare-fun b!2458147 () Bool)

(assert (=> b!2458147 (= e!1559344 (Union!7225 (Concat!11861 call!151144 (regTwo!14962 lt!880248)) EmptyLang!7225))))

(declare-fun b!2458148 () Bool)

(assert (=> b!2458148 (= e!1559343 EmptyLang!7225)))

(declare-fun b!2458149 () Bool)

(assert (=> b!2458149 (= c!392373 (nullable!2218 (regOne!14962 lt!880248)))))

(assert (=> b!2458149 (= e!1559346 e!1559344)))

(declare-fun bm!151142 () Bool)

(assert (=> bm!151142 (= call!151144 call!151145)))

(declare-fun b!2458150 () Bool)

(declare-fun e!1559345 () Regex!7225)

(assert (=> b!2458150 (= e!1559345 (Union!7225 call!151146 call!151147))))

(declare-fun b!2458151 () Bool)

(assert (=> b!2458151 (= c!392375 ((_ is Union!7225) lt!880248))))

(assert (=> b!2458151 (= e!1559342 e!1559345)))

(declare-fun b!2458152 () Bool)

(assert (=> b!2458152 (= e!1559345 e!1559346)))

(assert (=> b!2458152 (= c!392374 ((_ is Star!7225) lt!880248))))

(assert (= (and d!708005 c!392372) b!2458148))

(assert (= (and d!708005 (not c!392372)) b!2458143))

(assert (= (and b!2458143 c!392371) b!2458144))

(assert (= (and b!2458143 (not c!392371)) b!2458151))

(assert (= (and b!2458151 c!392375) b!2458150))

(assert (= (and b!2458151 (not c!392375)) b!2458152))

(assert (= (and b!2458152 c!392374) b!2458145))

(assert (= (and b!2458152 (not c!392374)) b!2458149))

(assert (= (and b!2458149 c!392373) b!2458146))

(assert (= (and b!2458149 (not c!392373)) b!2458147))

(assert (= (or b!2458146 b!2458147) bm!151142))

(assert (= (or b!2458145 bm!151142) bm!151140))

(assert (= (or b!2458150 b!2458146) bm!151141))

(assert (= (or b!2458150 bm!151140) bm!151139))

(assert (=> bm!151139 m!2827481))

(declare-fun m!2828575 () Bool)

(assert (=> bm!151139 m!2828575))

(declare-fun m!2828577 () Bool)

(assert (=> d!708005 m!2828577))

(assert (=> d!708005 m!2826907))

(assert (=> bm!151141 m!2827481))

(declare-fun m!2828579 () Bool)

(assert (=> bm!151141 m!2828579))

(assert (=> b!2458149 m!2827337))

(assert (=> b!2456274 d!708005))

(declare-fun d!708007 () Bool)

(assert (=> d!708007 (= (head!5607 (_1!16630 (get!8844 lt!880296))) (h!33990 (_1!16630 (get!8844 lt!880296))))))

(assert (=> b!2456274 d!708007))

(assert (=> b!2456274 d!707853))

(declare-fun d!708009 () Bool)

(assert (=> d!708009 true))

(assert (=> d!708009 true))

(declare-fun res!1041970 () Bool)

(assert (=> d!708009 (= (choose!14548 (ite c!391891 lambda!93033 lambda!93034)) res!1041970)))

(assert (=> d!707435 d!708009))

(declare-fun d!708011 () Bool)

(assert (not d!708011))

(assert (=> b!2456179 d!708011))

(assert (=> b!2456354 d!707421))

(declare-fun d!708013 () Bool)

(declare-fun lt!880428 () Int)

(assert (=> d!708013 (>= lt!880428 0)))

(declare-fun e!1559347 () Int)

(assert (=> d!708013 (= lt!880428 e!1559347)))

(declare-fun c!392376 () Bool)

(assert (=> d!708013 (= c!392376 ((_ is Nil!28589) lt!880336))))

(assert (=> d!708013 (= (size!22276 lt!880336) lt!880428)))

(declare-fun b!2458153 () Bool)

(assert (=> b!2458153 (= e!1559347 0)))

(declare-fun b!2458154 () Bool)

(assert (=> b!2458154 (= e!1559347 (+ 1 (size!22276 (t!208664 lt!880336))))))

(assert (= (and d!708013 c!392376) b!2458153))

(assert (= (and d!708013 (not c!392376)) b!2458154))

(declare-fun m!2828581 () Bool)

(assert (=> b!2458154 m!2828581))

(assert (=> b!2456176 d!708013))

(declare-fun d!708015 () Bool)

(declare-fun lt!880429 () Int)

(assert (=> d!708015 (>= lt!880429 0)))

(declare-fun e!1559348 () Int)

(assert (=> d!708015 (= lt!880429 e!1559348)))

(declare-fun c!392377 () Bool)

(assert (=> d!708015 (= c!392377 ((_ is Nil!28589) (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))

(assert (=> d!708015 (= (size!22276 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))) lt!880429)))

(declare-fun b!2458155 () Bool)

(assert (=> b!2458155 (= e!1559348 0)))

(declare-fun b!2458156 () Bool)

(assert (=> b!2458156 (= e!1559348 (+ 1 (size!22276 (t!208664 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589))))))))

(assert (= (and d!708015 c!392377) b!2458155))

(assert (= (and d!708015 (not c!392377)) b!2458156))

(assert (=> b!2458156 m!2828393))

(assert (=> b!2456176 d!708015))

(declare-fun d!708017 () Bool)

(declare-fun lt!880430 () Int)

(assert (=> d!708017 (>= lt!880430 0)))

(declare-fun e!1559349 () Int)

(assert (=> d!708017 (= lt!880430 e!1559349)))

(declare-fun c!392378 () Bool)

(assert (=> d!708017 (= c!392378 ((_ is Nil!28589) (t!208664 s!9460)))))

(assert (=> d!708017 (= (size!22276 (t!208664 s!9460)) lt!880430)))

(declare-fun b!2458157 () Bool)

(assert (=> b!2458157 (= e!1559349 0)))

(declare-fun b!2458158 () Bool)

(assert (=> b!2458158 (= e!1559349 (+ 1 (size!22276 (t!208664 (t!208664 s!9460)))))))

(assert (= (and d!708017 c!392378) b!2458157))

(assert (= (and d!708017 (not c!392378)) b!2458158))

(assert (=> b!2458158 m!2828305))

(assert (=> b!2456176 d!708017))

(assert (=> b!2456402 d!707885))

(declare-fun d!708019 () Bool)

(assert (=> d!708019 (= (head!5605 (t!208663 l!9164)) (h!33989 (t!208663 l!9164)))))

(assert (=> b!2456193 d!708019))

(declare-fun d!708021 () Bool)

(assert (not d!708021))

(assert (=> b!2456255 d!708021))

(assert (=> b!2456255 d!707983))

(declare-fun d!708023 () Bool)

(assert (=> d!708023 (= (isEmpty!16619 lt!880296) (not ((_ is Some!5699) lt!880296)))))

(assert (=> d!707465 d!708023))

(declare-fun d!708025 () Bool)

(assert (=> d!708025 (= (nullable!2218 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225))) (nullableFct!541 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225))))))

(declare-fun bs!466105 () Bool)

(assert (= bs!466105 d!708025))

(declare-fun m!2828583 () Bool)

(assert (=> bs!466105 m!2828583))

(assert (=> b!2456426 d!708025))

(declare-fun bs!466106 () Bool)

(declare-fun d!708027 () Bool)

(assert (= bs!466106 (and d!708027 d!707281)))

(declare-fun lambda!93064 () Int)

(assert (=> bs!466106 (= lambda!93064 lambda!93035)))

(declare-fun bs!466107 () Bool)

(assert (= bs!466107 (and d!708027 d!707515)))

(assert (=> bs!466107 (= lambda!93064 lambda!93047)))

(declare-fun bs!466108 () Bool)

(assert (= bs!466108 (and d!708027 d!707253)))

(assert (=> bs!466108 (= lambda!93064 lambda!93028)))

(declare-fun bs!466109 () Bool)

(assert (= bs!466109 (and d!708027 d!707449)))

(assert (=> bs!466109 (= lambda!93064 lambda!93042)))

(declare-fun bs!466110 () Bool)

(assert (= bs!466110 (and d!708027 start!239606)))

(assert (=> bs!466110 (= lambda!93064 lambda!93015)))

(declare-fun b!2458159 () Bool)

(declare-fun e!1559351 () Regex!7225)

(assert (=> b!2458159 (= e!1559351 EmptyExpr!7225)))

(declare-fun b!2458160 () Bool)

(declare-fun e!1559355 () Bool)

(declare-fun e!1559352 () Bool)

(assert (=> b!2458160 (= e!1559355 e!1559352)))

(declare-fun c!392379 () Bool)

(assert (=> b!2458160 (= c!392379 (isEmpty!16615 (t!208663 (t!208663 l!9164))))))

(declare-fun b!2458161 () Bool)

(declare-fun e!1559353 () Bool)

(declare-fun lt!880431 () Regex!7225)

(assert (=> b!2458161 (= e!1559353 (= lt!880431 (head!5605 (t!208663 (t!208663 l!9164)))))))

(declare-fun b!2458162 () Bool)

(assert (=> b!2458162 (= e!1559353 (isConcat!237 lt!880431))))

(assert (=> d!708027 e!1559355))

(declare-fun res!1041972 () Bool)

(assert (=> d!708027 (=> (not res!1041972) (not e!1559355))))

(assert (=> d!708027 (= res!1041972 (validRegex!2917 lt!880431))))

(declare-fun e!1559354 () Regex!7225)

(assert (=> d!708027 (= lt!880431 e!1559354)))

(declare-fun c!392382 () Bool)

(declare-fun e!1559350 () Bool)

(assert (=> d!708027 (= c!392382 e!1559350)))

(declare-fun res!1041971 () Bool)

(assert (=> d!708027 (=> (not res!1041971) (not e!1559350))))

(assert (=> d!708027 (= res!1041971 ((_ is Cons!28588) (t!208663 (t!208663 l!9164))))))

(assert (=> d!708027 (forall!5859 (t!208663 (t!208663 l!9164)) lambda!93064)))

(assert (=> d!708027 (= (generalisedConcat!326 (t!208663 (t!208663 l!9164))) lt!880431)))

(declare-fun b!2458163 () Bool)

(assert (=> b!2458163 (= e!1559354 e!1559351)))

(declare-fun c!392380 () Bool)

(assert (=> b!2458163 (= c!392380 ((_ is Cons!28588) (t!208663 (t!208663 l!9164))))))

(declare-fun b!2458164 () Bool)

(assert (=> b!2458164 (= e!1559350 (isEmpty!16615 (t!208663 (t!208663 (t!208663 l!9164)))))))

(declare-fun b!2458165 () Bool)

(assert (=> b!2458165 (= e!1559354 (h!33989 (t!208663 (t!208663 l!9164))))))

(declare-fun b!2458166 () Bool)

(assert (=> b!2458166 (= e!1559352 e!1559353)))

(declare-fun c!392381 () Bool)

(assert (=> b!2458166 (= c!392381 (isEmpty!16615 (tail!3878 (t!208663 (t!208663 l!9164)))))))

(declare-fun b!2458167 () Bool)

(assert (=> b!2458167 (= e!1559351 (Concat!11861 (h!33989 (t!208663 (t!208663 l!9164))) (generalisedConcat!326 (t!208663 (t!208663 (t!208663 l!9164))))))))

(declare-fun b!2458168 () Bool)

(assert (=> b!2458168 (= e!1559352 (isEmptyExpr!237 lt!880431))))

(assert (= (and d!708027 res!1041971) b!2458164))

(assert (= (and d!708027 c!392382) b!2458165))

(assert (= (and d!708027 (not c!392382)) b!2458163))

(assert (= (and b!2458163 c!392380) b!2458167))

(assert (= (and b!2458163 (not c!392380)) b!2458159))

(assert (= (and d!708027 res!1041972) b!2458160))

(assert (= (and b!2458160 c!392379) b!2458168))

(assert (= (and b!2458160 (not c!392379)) b!2458166))

(assert (= (and b!2458166 c!392381) b!2458161))

(assert (= (and b!2458166 (not c!392381)) b!2458162))

(assert (=> b!2458160 m!2827413))

(declare-fun m!2828585 () Bool)

(assert (=> b!2458161 m!2828585))

(declare-fun m!2828587 () Bool)

(assert (=> b!2458167 m!2828587))

(declare-fun m!2828589 () Bool)

(assert (=> b!2458162 m!2828589))

(declare-fun m!2828591 () Bool)

(assert (=> b!2458164 m!2828591))

(declare-fun m!2828593 () Bool)

(assert (=> b!2458168 m!2828593))

(declare-fun m!2828595 () Bool)

(assert (=> b!2458166 m!2828595))

(assert (=> b!2458166 m!2828595))

(declare-fun m!2828597 () Bool)

(assert (=> b!2458166 m!2828597))

(declare-fun m!2828599 () Bool)

(assert (=> d!708027 m!2828599))

(declare-fun m!2828601 () Bool)

(assert (=> d!708027 m!2828601))

(assert (=> b!2456199 d!708027))

(declare-fun d!708029 () Bool)

(assert (=> d!708029 (= (nullable!2218 (reg!7554 lt!880302)) (nullableFct!541 (reg!7554 lt!880302)))))

(declare-fun bs!466111 () Bool)

(assert (= bs!466111 d!708029))

(declare-fun m!2828603 () Bool)

(assert (=> bs!466111 m!2828603))

(assert (=> b!2456223 d!708029))

(declare-fun d!708031 () Bool)

(declare-fun res!1041973 () Bool)

(declare-fun e!1559356 () Bool)

(assert (=> d!708031 (=> res!1041973 e!1559356)))

(assert (=> d!708031 (= res!1041973 ((_ is Nil!28588) (t!208663 lt!880247)))))

(assert (=> d!708031 (= (forall!5859 (t!208663 lt!880247) lambda!93035) e!1559356)))

(declare-fun b!2458169 () Bool)

(declare-fun e!1559357 () Bool)

(assert (=> b!2458169 (= e!1559356 e!1559357)))

(declare-fun res!1041974 () Bool)

(assert (=> b!2458169 (=> (not res!1041974) (not e!1559357))))

(assert (=> b!2458169 (= res!1041974 (dynLambda!12274 lambda!93035 (h!33989 (t!208663 lt!880247))))))

(declare-fun b!2458170 () Bool)

(assert (=> b!2458170 (= e!1559357 (forall!5859 (t!208663 (t!208663 lt!880247)) lambda!93035))))

(assert (= (and d!708031 (not res!1041973)) b!2458169))

(assert (= (and b!2458169 res!1041974) b!2458170))

(declare-fun b_lambda!75209 () Bool)

(assert (=> (not b_lambda!75209) (not b!2458169)))

(declare-fun m!2828605 () Bool)

(assert (=> b!2458169 m!2828605))

(declare-fun m!2828607 () Bool)

(assert (=> b!2458170 m!2828607))

(assert (=> b!2456231 d!708031))

(declare-fun d!708033 () Bool)

(declare-fun c!392383 () Bool)

(assert (=> d!708033 (= c!392383 ((_ is Nil!28589) lt!880348))))

(declare-fun e!1559358 () (InoxSet C!14608))

(assert (=> d!708033 (= (content!3938 lt!880348) e!1559358)))

(declare-fun b!2458171 () Bool)

(assert (=> b!2458171 (= e!1559358 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2458172 () Bool)

(assert (=> b!2458172 (= e!1559358 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 lt!880348) true) (content!3938 (t!208664 lt!880348))))))

(assert (= (and d!708033 c!392383) b!2458171))

(assert (= (and d!708033 (not c!392383)) b!2458172))

(declare-fun m!2828609 () Bool)

(assert (=> b!2458172 m!2828609))

(declare-fun m!2828611 () Bool)

(assert (=> b!2458172 m!2828611))

(assert (=> d!707483 d!708033))

(assert (=> d!707483 d!707929))

(assert (=> d!707483 d!707429))

(declare-fun d!708035 () Bool)

(declare-fun lt!880432 () Int)

(assert (=> d!708035 (>= lt!880432 0)))

(declare-fun e!1559359 () Int)

(assert (=> d!708035 (= lt!880432 e!1559359)))

(declare-fun c!392384 () Bool)

(assert (=> d!708035 (= c!392384 ((_ is Nil!28589) (t!208664 lt!880278)))))

(assert (=> d!708035 (= (size!22276 (t!208664 lt!880278)) lt!880432)))

(declare-fun b!2458173 () Bool)

(assert (=> b!2458173 (= e!1559359 0)))

(declare-fun b!2458174 () Bool)

(assert (=> b!2458174 (= e!1559359 (+ 1 (size!22276 (t!208664 (t!208664 lt!880278)))))))

(assert (= (and d!708035 c!392384) b!2458173))

(assert (= (and d!708035 (not c!392384)) b!2458174))

(declare-fun m!2828613 () Bool)

(assert (=> b!2458174 m!2828613))

(assert (=> b!2456419 d!708035))

(assert (=> b!2456244 d!707939))

(assert (=> bm!150912 d!707519))

(declare-fun bm!151143 () Bool)

(declare-fun call!151148 () Bool)

(declare-fun c!392386 () Bool)

(assert (=> bm!151143 (= call!151148 (validRegex!2917 (ite c!392386 (regTwo!14963 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))) (regOne!14962 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))))))))

(declare-fun b!2458175 () Bool)

(declare-fun res!1041979 () Bool)

(declare-fun e!1559366 () Bool)

(assert (=> b!2458175 (=> (not res!1041979) (not e!1559366))))

(declare-fun call!151149 () Bool)

(assert (=> b!2458175 (= res!1041979 call!151149)))

(declare-fun e!1559360 () Bool)

(assert (=> b!2458175 (= e!1559360 e!1559366)))

(declare-fun b!2458176 () Bool)

(declare-fun e!1559363 () Bool)

(declare-fun call!151150 () Bool)

(assert (=> b!2458176 (= e!1559363 call!151150)))

(declare-fun bm!151144 () Bool)

(assert (=> bm!151144 (= call!151149 call!151150)))

(declare-fun b!2458177 () Bool)

(declare-fun e!1559362 () Bool)

(assert (=> b!2458177 (= e!1559362 e!1559363)))

(declare-fun res!1041975 () Bool)

(assert (=> b!2458177 (= res!1041975 (not (nullable!2218 (reg!7554 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))))))))

(assert (=> b!2458177 (=> (not res!1041975) (not e!1559363))))

(declare-fun b!2458178 () Bool)

(declare-fun res!1041977 () Bool)

(declare-fun e!1559365 () Bool)

(assert (=> b!2458178 (=> res!1041977 e!1559365)))

(assert (=> b!2458178 (= res!1041977 (not ((_ is Concat!11861) (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302)))))))

(assert (=> b!2458178 (= e!1559360 e!1559365)))

(declare-fun b!2458179 () Bool)

(declare-fun e!1559364 () Bool)

(assert (=> b!2458179 (= e!1559365 e!1559364)))

(declare-fun res!1041976 () Bool)

(assert (=> b!2458179 (=> (not res!1041976) (not e!1559364))))

(assert (=> b!2458179 (= res!1041976 call!151148)))

(declare-fun bm!151145 () Bool)

(declare-fun c!392385 () Bool)

(assert (=> bm!151145 (= call!151150 (validRegex!2917 (ite c!392385 (reg!7554 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))) (ite c!392386 (regOne!14963 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))) (regTwo!14962 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302)))))))))

(declare-fun b!2458181 () Bool)

(assert (=> b!2458181 (= e!1559364 call!151149)))

(declare-fun b!2458182 () Bool)

(assert (=> b!2458182 (= e!1559362 e!1559360)))

(assert (=> b!2458182 (= c!392386 ((_ is Union!7225) (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))))))

(declare-fun b!2458183 () Bool)

(declare-fun e!1559361 () Bool)

(assert (=> b!2458183 (= e!1559361 e!1559362)))

(assert (=> b!2458183 (= c!392385 ((_ is Star!7225) (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))))))

(declare-fun b!2458180 () Bool)

(assert (=> b!2458180 (= e!1559366 call!151148)))

(declare-fun d!708037 () Bool)

(declare-fun res!1041978 () Bool)

(assert (=> d!708037 (=> res!1041978 e!1559361)))

(assert (=> d!708037 (= res!1041978 ((_ is ElementMatch!7225) (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))))))

(assert (=> d!708037 (= (validRegex!2917 (ite c!392032 (regTwo!14963 lt!880302) (regOne!14962 lt!880302))) e!1559361)))

(assert (= (and d!708037 (not res!1041978)) b!2458183))

(assert (= (and b!2458183 c!392385) b!2458177))

(assert (= (and b!2458183 (not c!392385)) b!2458182))

(assert (= (and b!2458177 res!1041975) b!2458176))

(assert (= (and b!2458182 c!392386) b!2458175))

(assert (= (and b!2458182 (not c!392386)) b!2458178))

(assert (= (and b!2458175 res!1041979) b!2458180))

(assert (= (and b!2458178 (not res!1041977)) b!2458179))

(assert (= (and b!2458179 res!1041976) b!2458181))

(assert (= (or b!2458175 b!2458181) bm!151144))

(assert (= (or b!2458180 b!2458179) bm!151143))

(assert (= (or b!2458176 bm!151144) bm!151145))

(declare-fun m!2828615 () Bool)

(assert (=> bm!151143 m!2828615))

(declare-fun m!2828617 () Bool)

(assert (=> b!2458177 m!2828617))

(declare-fun m!2828619 () Bool)

(assert (=> bm!151145 m!2828619))

(assert (=> bm!150900 d!708037))

(assert (=> bm!150881 d!707433))

(assert (=> d!707513 d!707219))

(assert (=> d!707513 d!707235))

(declare-fun bm!151146 () Bool)

(declare-fun call!151151 () Bool)

(declare-fun c!392388 () Bool)

(assert (=> bm!151146 (= call!151151 (validRegex!2917 (ite c!392388 (regTwo!14963 lt!880335) (regOne!14962 lt!880335))))))

(declare-fun b!2458184 () Bool)

(declare-fun res!1041984 () Bool)

(declare-fun e!1559373 () Bool)

(assert (=> b!2458184 (=> (not res!1041984) (not e!1559373))))

(declare-fun call!151152 () Bool)

(assert (=> b!2458184 (= res!1041984 call!151152)))

(declare-fun e!1559367 () Bool)

(assert (=> b!2458184 (= e!1559367 e!1559373)))

(declare-fun b!2458185 () Bool)

(declare-fun e!1559370 () Bool)

(declare-fun call!151153 () Bool)

(assert (=> b!2458185 (= e!1559370 call!151153)))

(declare-fun bm!151147 () Bool)

(assert (=> bm!151147 (= call!151152 call!151153)))

(declare-fun b!2458186 () Bool)

(declare-fun e!1559369 () Bool)

(assert (=> b!2458186 (= e!1559369 e!1559370)))

(declare-fun res!1041980 () Bool)

(assert (=> b!2458186 (= res!1041980 (not (nullable!2218 (reg!7554 lt!880335))))))

(assert (=> b!2458186 (=> (not res!1041980) (not e!1559370))))

(declare-fun b!2458187 () Bool)

(declare-fun res!1041982 () Bool)

(declare-fun e!1559372 () Bool)

(assert (=> b!2458187 (=> res!1041982 e!1559372)))

(assert (=> b!2458187 (= res!1041982 (not ((_ is Concat!11861) lt!880335)))))

(assert (=> b!2458187 (= e!1559367 e!1559372)))

(declare-fun b!2458188 () Bool)

(declare-fun e!1559371 () Bool)

(assert (=> b!2458188 (= e!1559372 e!1559371)))

(declare-fun res!1041981 () Bool)

(assert (=> b!2458188 (=> (not res!1041981) (not e!1559371))))

(assert (=> b!2458188 (= res!1041981 call!151151)))

(declare-fun c!392387 () Bool)

(declare-fun bm!151148 () Bool)

(assert (=> bm!151148 (= call!151153 (validRegex!2917 (ite c!392387 (reg!7554 lt!880335) (ite c!392388 (regOne!14963 lt!880335) (regTwo!14962 lt!880335)))))))

(declare-fun b!2458190 () Bool)

(assert (=> b!2458190 (= e!1559371 call!151152)))

(declare-fun b!2458191 () Bool)

(assert (=> b!2458191 (= e!1559369 e!1559367)))

(assert (=> b!2458191 (= c!392388 ((_ is Union!7225) lt!880335))))

(declare-fun b!2458192 () Bool)

(declare-fun e!1559368 () Bool)

(assert (=> b!2458192 (= e!1559368 e!1559369)))

(assert (=> b!2458192 (= c!392387 ((_ is Star!7225) lt!880335))))

(declare-fun b!2458189 () Bool)

(assert (=> b!2458189 (= e!1559373 call!151151)))

(declare-fun d!708039 () Bool)

(declare-fun res!1041983 () Bool)

(assert (=> d!708039 (=> res!1041983 e!1559368)))

(assert (=> d!708039 (= res!1041983 ((_ is ElementMatch!7225) lt!880335))))

(assert (=> d!708039 (= (validRegex!2917 lt!880335) e!1559368)))

(assert (= (and d!708039 (not res!1041983)) b!2458192))

(assert (= (and b!2458192 c!392387) b!2458186))

(assert (= (and b!2458192 (not c!392387)) b!2458191))

(assert (= (and b!2458186 res!1041980) b!2458185))

(assert (= (and b!2458191 c!392388) b!2458184))

(assert (= (and b!2458191 (not c!392388)) b!2458187))

(assert (= (and b!2458184 res!1041984) b!2458189))

(assert (= (and b!2458187 (not res!1041982)) b!2458188))

(assert (= (and b!2458188 res!1041981) b!2458190))

(assert (= (or b!2458184 b!2458190) bm!151147))

(assert (= (or b!2458189 b!2458188) bm!151146))

(assert (= (or b!2458185 bm!151147) bm!151148))

(declare-fun m!2828621 () Bool)

(assert (=> bm!151146 m!2828621))

(declare-fun m!2828623 () Bool)

(assert (=> b!2458186 m!2828623))

(declare-fun m!2828625 () Bool)

(assert (=> bm!151148 m!2828625))

(assert (=> d!707419 d!708039))

(assert (=> d!707419 d!707469))

(declare-fun b!2458193 () Bool)

(declare-fun e!1559379 () Bool)

(assert (=> b!2458193 (= e!1559379 (nullable!2218 (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))

(declare-fun bm!151149 () Bool)

(declare-fun call!151154 () Bool)

(assert (=> bm!151149 (= call!151154 (isEmpty!16618 (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2458194 () Bool)

(declare-fun e!1559377 () Bool)

(declare-fun lt!880433 () Bool)

(assert (=> b!2458194 (= e!1559377 (= lt!880433 call!151154))))

(declare-fun b!2458195 () Bool)

(declare-fun e!1559374 () Bool)

(assert (=> b!2458195 (= e!1559374 (not lt!880433))))

(declare-fun b!2458196 () Bool)

(declare-fun e!1559375 () Bool)

(assert (=> b!2458196 (= e!1559375 (= (head!5607 (tail!3880 (tail!3880 s!9460))) (c!391797 (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))))))))

(declare-fun b!2458197 () Bool)

(declare-fun e!1559378 () Bool)

(declare-fun e!1559380 () Bool)

(assert (=> b!2458197 (= e!1559378 e!1559380)))

(declare-fun res!1041991 () Bool)

(assert (=> b!2458197 (=> (not res!1041991) (not e!1559380))))

(assert (=> b!2458197 (= res!1041991 (not lt!880433))))

(declare-fun b!2458198 () Bool)

(assert (=> b!2458198 (= e!1559379 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) (head!5607 (tail!3880 (tail!3880 s!9460)))) (tail!3880 (tail!3880 (tail!3880 s!9460)))))))

(declare-fun b!2458199 () Bool)

(declare-fun res!1041985 () Bool)

(assert (=> b!2458199 (=> (not res!1041985) (not e!1559375))))

(assert (=> b!2458199 (= res!1041985 (not call!151154))))

(declare-fun b!2458200 () Bool)

(assert (=> b!2458200 (= e!1559377 e!1559374)))

(declare-fun c!392390 () Bool)

(assert (=> b!2458200 (= c!392390 ((_ is EmptyLang!7225) (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))

(declare-fun b!2458201 () Bool)

(declare-fun e!1559376 () Bool)

(assert (=> b!2458201 (= e!1559380 e!1559376)))

(declare-fun res!1041986 () Bool)

(assert (=> b!2458201 (=> res!1041986 e!1559376)))

(assert (=> b!2458201 (= res!1041986 call!151154)))

(declare-fun b!2458202 () Bool)

(declare-fun res!1041992 () Bool)

(assert (=> b!2458202 (=> (not res!1041992) (not e!1559375))))

(assert (=> b!2458202 (= res!1041992 (isEmpty!16618 (tail!3880 (tail!3880 (tail!3880 s!9460)))))))

(declare-fun b!2458203 () Bool)

(declare-fun res!1041987 () Bool)

(assert (=> b!2458203 (=> res!1041987 e!1559378)))

(assert (=> b!2458203 (= res!1041987 (not ((_ is ElementMatch!7225) (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))))))))

(assert (=> b!2458203 (= e!1559374 e!1559378)))

(declare-fun d!708041 () Bool)

(assert (=> d!708041 e!1559377))

(declare-fun c!392391 () Bool)

(assert (=> d!708041 (= c!392391 ((_ is EmptyExpr!7225) (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))

(assert (=> d!708041 (= lt!880433 e!1559379)))

(declare-fun c!392389 () Bool)

(assert (=> d!708041 (= c!392389 (isEmpty!16618 (tail!3880 (tail!3880 s!9460))))))

(assert (=> d!708041 (validRegex!2917 (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))))))

(assert (=> d!708041 (= (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) (tail!3880 (tail!3880 s!9460))) lt!880433)))

(declare-fun b!2458204 () Bool)

(declare-fun res!1041989 () Bool)

(assert (=> b!2458204 (=> res!1041989 e!1559376)))

(assert (=> b!2458204 (= res!1041989 (not (isEmpty!16618 (tail!3880 (tail!3880 (tail!3880 s!9460))))))))

(declare-fun b!2458205 () Bool)

(assert (=> b!2458205 (= e!1559376 (not (= (head!5607 (tail!3880 (tail!3880 s!9460))) (c!391797 (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))))

(declare-fun b!2458206 () Bool)

(declare-fun res!1041990 () Bool)

(assert (=> b!2458206 (=> res!1041990 e!1559378)))

(assert (=> b!2458206 (= res!1041990 e!1559375)))

(declare-fun res!1041988 () Bool)

(assert (=> b!2458206 (=> (not res!1041988) (not e!1559375))))

(assert (=> b!2458206 (= res!1041988 lt!880433)))

(assert (= (and d!708041 c!392389) b!2458193))

(assert (= (and d!708041 (not c!392389)) b!2458198))

(assert (= (and d!708041 c!392391) b!2458194))

(assert (= (and d!708041 (not c!392391)) b!2458200))

(assert (= (and b!2458200 c!392390) b!2458195))

(assert (= (and b!2458200 (not c!392390)) b!2458203))

(assert (= (and b!2458203 (not res!1041987)) b!2458206))

(assert (= (and b!2458206 res!1041988) b!2458199))

(assert (= (and b!2458199 res!1041985) b!2458202))

(assert (= (and b!2458202 res!1041992) b!2458196))

(assert (= (and b!2458206 (not res!1041990)) b!2458197))

(assert (= (and b!2458197 res!1041991) b!2458201))

(assert (= (and b!2458201 (not res!1041986)) b!2458204))

(assert (= (and b!2458204 (not res!1041989)) b!2458205))

(assert (= (or b!2458194 b!2458199 b!2458201) bm!151149))

(assert (=> b!2458204 m!2827317))

(declare-fun m!2828627 () Bool)

(assert (=> b!2458204 m!2828627))

(assert (=> b!2458204 m!2828627))

(declare-fun m!2828629 () Bool)

(assert (=> b!2458204 m!2828629))

(assert (=> d!708041 m!2827317))

(assert (=> d!708041 m!2827319))

(assert (=> d!708041 m!2827593))

(declare-fun m!2828631 () Bool)

(assert (=> d!708041 m!2828631))

(assert (=> b!2458202 m!2827317))

(assert (=> b!2458202 m!2828627))

(assert (=> b!2458202 m!2828627))

(assert (=> b!2458202 m!2828629))

(assert (=> b!2458198 m!2827317))

(declare-fun m!2828633 () Bool)

(assert (=> b!2458198 m!2828633))

(assert (=> b!2458198 m!2827593))

(assert (=> b!2458198 m!2828633))

(declare-fun m!2828635 () Bool)

(assert (=> b!2458198 m!2828635))

(assert (=> b!2458198 m!2827317))

(assert (=> b!2458198 m!2828627))

(assert (=> b!2458198 m!2828635))

(assert (=> b!2458198 m!2828627))

(declare-fun m!2828637 () Bool)

(assert (=> b!2458198 m!2828637))

(assert (=> b!2458196 m!2827317))

(assert (=> b!2458196 m!2828633))

(assert (=> b!2458193 m!2827593))

(declare-fun m!2828639 () Bool)

(assert (=> b!2458193 m!2828639))

(assert (=> b!2458205 m!2827317))

(assert (=> b!2458205 m!2828633))

(assert (=> bm!151149 m!2827317))

(assert (=> bm!151149 m!2827319))

(assert (=> b!2456395 d!708041))

(declare-fun b!2458207 () Bool)

(declare-fun e!1559382 () Regex!7225)

(declare-fun e!1559381 () Regex!7225)

(assert (=> b!2458207 (= e!1559382 e!1559381)))

(declare-fun c!392392 () Bool)

(assert (=> b!2458207 (= c!392392 ((_ is ElementMatch!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(declare-fun c!392394 () Bool)

(declare-fun c!392395 () Bool)

(declare-fun bm!151150 () Bool)

(declare-fun c!392396 () Bool)

(declare-fun call!151158 () Regex!7225)

(assert (=> bm!151150 (= call!151158 (derivativeStep!1872 (ite c!392396 (regTwo!14963 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (ite c!392395 (reg!7554 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (ite c!392394 (regTwo!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (regOne!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460)))))) (head!5607 (tail!3880 s!9460))))))

(declare-fun b!2458208 () Bool)

(assert (=> b!2458208 (= e!1559381 (ite (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 r!13927 (head!5607 s!9460)))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151151 () Bool)

(declare-fun call!151156 () Regex!7225)

(assert (=> bm!151151 (= call!151156 call!151158)))

(declare-fun b!2458209 () Bool)

(declare-fun e!1559385 () Regex!7225)

(assert (=> b!2458209 (= e!1559385 (Concat!11861 call!151156 (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(declare-fun call!151157 () Regex!7225)

(declare-fun call!151155 () Regex!7225)

(declare-fun b!2458210 () Bool)

(declare-fun e!1559383 () Regex!7225)

(assert (=> b!2458210 (= e!1559383 (Union!7225 (Concat!11861 call!151157 (regTwo!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460)))) call!151155))))

(declare-fun d!708043 () Bool)

(declare-fun lt!880434 () Regex!7225)

(assert (=> d!708043 (validRegex!2917 lt!880434)))

(assert (=> d!708043 (= lt!880434 e!1559382)))

(declare-fun c!392393 () Bool)

(assert (=> d!708043 (= c!392393 (or ((_ is EmptyExpr!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))) ((_ is EmptyLang!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460)))))))

(assert (=> d!708043 (validRegex!2917 (derivativeStep!1872 r!13927 (head!5607 s!9460)))))

(assert (=> d!708043 (= (derivativeStep!1872 (derivativeStep!1872 r!13927 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) lt!880434)))

(declare-fun bm!151152 () Bool)

(assert (=> bm!151152 (= call!151157 (derivativeStep!1872 (ite c!392396 (regOne!14963 (derivativeStep!1872 r!13927 (head!5607 s!9460))) (regOne!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460)))) (head!5607 (tail!3880 s!9460))))))

(declare-fun b!2458211 () Bool)

(assert (=> b!2458211 (= e!1559383 (Union!7225 (Concat!11861 call!151155 (regTwo!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460)))) EmptyLang!7225))))

(declare-fun b!2458212 () Bool)

(assert (=> b!2458212 (= e!1559382 EmptyLang!7225)))

(declare-fun b!2458213 () Bool)

(assert (=> b!2458213 (= c!392394 (nullable!2218 (regOne!14962 (derivativeStep!1872 r!13927 (head!5607 s!9460)))))))

(assert (=> b!2458213 (= e!1559385 e!1559383)))

(declare-fun bm!151153 () Bool)

(assert (=> bm!151153 (= call!151155 call!151156)))

(declare-fun b!2458214 () Bool)

(declare-fun e!1559384 () Regex!7225)

(assert (=> b!2458214 (= e!1559384 (Union!7225 call!151157 call!151158))))

(declare-fun b!2458215 () Bool)

(assert (=> b!2458215 (= c!392396 ((_ is Union!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(assert (=> b!2458215 (= e!1559381 e!1559384)))

(declare-fun b!2458216 () Bool)

(assert (=> b!2458216 (= e!1559384 e!1559385)))

(assert (=> b!2458216 (= c!392395 ((_ is Star!7225) (derivativeStep!1872 r!13927 (head!5607 s!9460))))))

(assert (= (and d!708043 c!392393) b!2458212))

(assert (= (and d!708043 (not c!392393)) b!2458207))

(assert (= (and b!2458207 c!392392) b!2458208))

(assert (= (and b!2458207 (not c!392392)) b!2458215))

(assert (= (and b!2458215 c!392396) b!2458214))

(assert (= (and b!2458215 (not c!392396)) b!2458216))

(assert (= (and b!2458216 c!392395) b!2458209))

(assert (= (and b!2458216 (not c!392395)) b!2458213))

(assert (= (and b!2458213 c!392394) b!2458210))

(assert (= (and b!2458213 (not c!392394)) b!2458211))

(assert (= (or b!2458210 b!2458211) bm!151153))

(assert (= (or b!2458209 bm!151153) bm!151151))

(assert (= (or b!2458214 b!2458210) bm!151152))

(assert (= (or b!2458214 bm!151151) bm!151150))

(assert (=> bm!151150 m!2827323))

(declare-fun m!2828641 () Bool)

(assert (=> bm!151150 m!2828641))

(declare-fun m!2828643 () Bool)

(assert (=> d!708043 m!2828643))

(assert (=> d!708043 m!2826967))

(assert (=> d!708043 m!2827591))

(assert (=> bm!151152 m!2827323))

(declare-fun m!2828645 () Bool)

(assert (=> bm!151152 m!2828645))

(declare-fun m!2828647 () Bool)

(assert (=> b!2458213 m!2828647))

(assert (=> b!2456395 d!708043))

(assert (=> b!2456395 d!707885))

(assert (=> b!2456395 d!707909))

(declare-fun b!2458217 () Bool)

(declare-fun e!1559387 () Regex!7225)

(declare-fun e!1559386 () Regex!7225)

(assert (=> b!2458217 (= e!1559387 e!1559386)))

(declare-fun c!392397 () Bool)

(assert (=> b!2458217 (= c!392397 ((_ is ElementMatch!7225) (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))))))

(declare-fun c!392399 () Bool)

(declare-fun bm!151154 () Bool)

(declare-fun c!392401 () Bool)

(declare-fun c!392400 () Bool)

(declare-fun call!151162 () Regex!7225)

(assert (=> bm!151154 (= call!151162 (derivativeStep!1872 (ite c!392401 (regTwo!14963 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))) (ite c!392400 (reg!7554 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))) (ite c!392399 (regTwo!14962 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))) (regOne!14962 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))))) (head!5607 s!9460)))))

(declare-fun b!2458218 () Bool)

(assert (=> b!2458218 (= e!1559386 (ite (= (head!5607 s!9460) (c!391797 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151155 () Bool)

(declare-fun call!151160 () Regex!7225)

(assert (=> bm!151155 (= call!151160 call!151162)))

(declare-fun e!1559390 () Regex!7225)

(declare-fun b!2458219 () Bool)

(assert (=> b!2458219 (= e!1559390 (Concat!11861 call!151160 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))))))

(declare-fun b!2458220 () Bool)

(declare-fun call!151161 () Regex!7225)

(declare-fun call!151159 () Regex!7225)

(declare-fun e!1559388 () Regex!7225)

(assert (=> b!2458220 (= e!1559388 (Union!7225 (Concat!11861 call!151161 (regTwo!14962 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))) call!151159))))

(declare-fun d!708045 () Bool)

(declare-fun lt!880435 () Regex!7225)

(assert (=> d!708045 (validRegex!2917 lt!880435)))

(assert (=> d!708045 (= lt!880435 e!1559387)))

(declare-fun c!392398 () Bool)

(assert (=> d!708045 (= c!392398 (or ((_ is EmptyExpr!7225) (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))) ((_ is EmptyLang!7225) (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))))))

(assert (=> d!708045 (validRegex!2917 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))))

(assert (=> d!708045 (= (derivativeStep!1872 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)) (head!5607 s!9460)) lt!880435)))

(declare-fun bm!151156 () Bool)

(assert (=> bm!151156 (= call!151161 (derivativeStep!1872 (ite c!392401 (regOne!14963 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))) (regOne!14962 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))) (head!5607 s!9460)))))

(declare-fun b!2458221 () Bool)

(assert (=> b!2458221 (= e!1559388 (Union!7225 (Concat!11861 call!151159 (regTwo!14962 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))) EmptyLang!7225))))

(declare-fun b!2458222 () Bool)

(assert (=> b!2458222 (= e!1559387 EmptyLang!7225)))

(declare-fun b!2458223 () Bool)

(assert (=> b!2458223 (= c!392399 (nullable!2218 (regOne!14962 (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248)))))))

(assert (=> b!2458223 (= e!1559390 e!1559388)))

(declare-fun bm!151157 () Bool)

(assert (=> bm!151157 (= call!151159 call!151160)))

(declare-fun b!2458224 () Bool)

(declare-fun e!1559389 () Regex!7225)

(assert (=> b!2458224 (= e!1559389 (Union!7225 call!151161 call!151162))))

(declare-fun b!2458225 () Bool)

(assert (=> b!2458225 (= c!392401 ((_ is Union!7225) (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))))))

(assert (=> b!2458225 (= e!1559386 e!1559389)))

(declare-fun b!2458226 () Bool)

(assert (=> b!2458226 (= e!1559389 e!1559390)))

(assert (=> b!2458226 (= c!392400 ((_ is Star!7225) (ite c!392013 (regOne!14963 lt!880248) (regOne!14962 lt!880248))))))

(assert (= (and d!708045 c!392398) b!2458222))

(assert (= (and d!708045 (not c!392398)) b!2458217))

(assert (= (and b!2458217 c!392397) b!2458218))

(assert (= (and b!2458217 (not c!392397)) b!2458225))

(assert (= (and b!2458225 c!392401) b!2458224))

(assert (= (and b!2458225 (not c!392401)) b!2458226))

(assert (= (and b!2458226 c!392400) b!2458219))

(assert (= (and b!2458226 (not c!392400)) b!2458223))

(assert (= (and b!2458223 c!392399) b!2458220))

(assert (= (and b!2458223 (not c!392399)) b!2458221))

(assert (= (or b!2458220 b!2458221) bm!151157))

(assert (= (or b!2458219 bm!151157) bm!151155))

(assert (= (or b!2458224 b!2458220) bm!151156))

(assert (= (or b!2458224 bm!151155) bm!151154))

(assert (=> bm!151154 m!2826965))

(declare-fun m!2828649 () Bool)

(assert (=> bm!151154 m!2828649))

(declare-fun m!2828651 () Bool)

(assert (=> d!708045 m!2828651))

(declare-fun m!2828653 () Bool)

(assert (=> d!708045 m!2828653))

(assert (=> bm!151156 m!2826965))

(declare-fun m!2828655 () Bool)

(assert (=> bm!151156 m!2828655))

(declare-fun m!2828657 () Bool)

(assert (=> b!2458223 m!2828657))

(assert (=> bm!150892 d!708045))

(assert (=> bs!465934 d!707511))

(declare-fun d!708047 () Bool)

(declare-fun c!392402 () Bool)

(assert (=> d!708047 (= c!392402 ((_ is Nil!28589) (t!208664 lt!880278)))))

(declare-fun e!1559391 () (InoxSet C!14608))

(assert (=> d!708047 (= (content!3938 (t!208664 lt!880278)) e!1559391)))

(declare-fun b!2458227 () Bool)

(assert (=> b!2458227 (= e!1559391 ((as const (Array C!14608 Bool)) false))))

(declare-fun b!2458228 () Bool)

(assert (=> b!2458228 (= e!1559391 ((_ map or) (store ((as const (Array C!14608 Bool)) false) (h!33990 (t!208664 lt!880278)) true) (content!3938 (t!208664 (t!208664 lt!880278)))))))

(assert (= (and d!708047 c!392402) b!2458227))

(assert (= (and d!708047 (not c!392402)) b!2458228))

(declare-fun m!2828659 () Bool)

(assert (=> b!2458228 m!2828659))

(declare-fun m!2828661 () Bool)

(assert (=> b!2458228 m!2828661))

(assert (=> b!2456169 d!708047))

(assert (=> b!2456280 d!707851))

(assert (=> b!2456280 d!707853))

(declare-fun b!2458229 () Bool)

(declare-fun e!1559393 () Regex!7225)

(declare-fun e!1559392 () Regex!7225)

(assert (=> b!2458229 (= e!1559393 e!1559392)))

(declare-fun c!392403 () Bool)

(assert (=> b!2458229 (= c!392403 ((_ is ElementMatch!7225) (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))

(declare-fun c!392405 () Bool)

(declare-fun call!151166 () Regex!7225)

(declare-fun c!392407 () Bool)

(declare-fun bm!151158 () Bool)

(declare-fun c!392406 () Bool)

(assert (=> bm!151158 (= call!151166 (derivativeStep!1872 (ite c!392407 (regTwo!14963 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))) (ite c!392406 (reg!7554 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))) (ite c!392405 (regTwo!14962 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))) (regOne!14962 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2458230 () Bool)

(assert (=> b!2458230 (= e!1559392 (ite (= (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) (c!391797 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151159 () Bool)

(declare-fun call!151164 () Regex!7225)

(assert (=> bm!151159 (= call!151164 call!151166)))

(declare-fun e!1559396 () Regex!7225)

(declare-fun b!2458231 () Bool)

(assert (=> b!2458231 (= e!1559396 (Concat!11861 call!151164 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))

(declare-fun call!151165 () Regex!7225)

(declare-fun e!1559394 () Regex!7225)

(declare-fun b!2458232 () Bool)

(declare-fun call!151163 () Regex!7225)

(assert (=> b!2458232 (= e!1559394 (Union!7225 (Concat!11861 call!151165 (regTwo!14962 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))) call!151163))))

(declare-fun d!708049 () Bool)

(declare-fun lt!880436 () Regex!7225)

(assert (=> d!708049 (validRegex!2917 lt!880436)))

(assert (=> d!708049 (= lt!880436 e!1559393)))

(declare-fun c!392404 () Bool)

(assert (=> d!708049 (= c!392404 (or ((_ is EmptyExpr!7225) (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))) ((_ is EmptyLang!7225) (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))))

(assert (=> d!708049 (validRegex!2917 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(assert (=> d!708049 (= (derivativeStep!1872 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) lt!880436)))

(declare-fun bm!151160 () Bool)

(assert (=> bm!151160 (= call!151165 (derivativeStep!1872 (ite c!392407 (regOne!14963 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))) (regOne!14962 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2458233 () Bool)

(assert (=> b!2458233 (= e!1559394 (Union!7225 (Concat!11861 call!151163 (regTwo!14962 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))) EmptyLang!7225))))

(declare-fun b!2458234 () Bool)

(assert (=> b!2458234 (= e!1559393 EmptyLang!7225)))

(declare-fun b!2458235 () Bool)

(assert (=> b!2458235 (= c!392405 (nullable!2218 (regOne!14962 (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))))

(assert (=> b!2458235 (= e!1559396 e!1559394)))

(declare-fun bm!151161 () Bool)

(assert (=> bm!151161 (= call!151163 call!151164)))

(declare-fun b!2458236 () Bool)

(declare-fun e!1559395 () Regex!7225)

(assert (=> b!2458236 (= e!1559395 (Union!7225 call!151165 call!151166))))

(declare-fun b!2458237 () Bool)

(assert (=> b!2458237 (= c!392407 ((_ is Union!7225) (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))

(assert (=> b!2458237 (= e!1559392 e!1559395)))

(declare-fun b!2458238 () Bool)

(assert (=> b!2458238 (= e!1559395 e!1559396)))

(assert (=> b!2458238 (= c!392406 ((_ is Star!7225) (ite c!392054 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392053 (reg!7554 (Concat!11861 lt!880248 EmptyExpr!7225)) (ite c!392052 (regTwo!14962 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))

(assert (= (and d!708049 c!392404) b!2458234))

(assert (= (and d!708049 (not c!392404)) b!2458229))

(assert (= (and b!2458229 c!392403) b!2458230))

(assert (= (and b!2458229 (not c!392403)) b!2458237))

(assert (= (and b!2458237 c!392407) b!2458236))

(assert (= (and b!2458237 (not c!392407)) b!2458238))

(assert (= (and b!2458238 c!392406) b!2458231))

(assert (= (and b!2458238 (not c!392406)) b!2458235))

(assert (= (and b!2458235 c!392405) b!2458232))

(assert (= (and b!2458235 (not c!392405)) b!2458233))

(assert (= (or b!2458232 b!2458233) bm!151161))

(assert (= (or b!2458231 bm!151161) bm!151159))

(assert (= (or b!2458236 b!2458232) bm!151160))

(assert (= (or b!2458236 bm!151159) bm!151158))

(assert (=> bm!151158 m!2826841))

(declare-fun m!2828663 () Bool)

(assert (=> bm!151158 m!2828663))

(declare-fun m!2828665 () Bool)

(assert (=> d!708049 m!2828665))

(declare-fun m!2828667 () Bool)

(assert (=> d!708049 m!2828667))

(assert (=> bm!151160 m!2826841))

(declare-fun m!2828669 () Bool)

(assert (=> bm!151160 m!2828669))

(declare-fun m!2828671 () Bool)

(assert (=> b!2458235 m!2828671))

(assert (=> bm!150913 d!708049))

(assert (=> b!2456399 d!707907))

(assert (=> b!2456399 d!707909))

(declare-fun d!708051 () Bool)

(assert (=> d!708051 (= (head!5605 (t!208663 lt!880247)) (h!33989 (t!208663 lt!880247)))))

(assert (=> b!2456367 d!708051))

(declare-fun d!708053 () Bool)

(assert (=> d!708053 (= (nullable!2218 (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))) (nullableFct!541 (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))

(declare-fun bs!466112 () Bool)

(assert (= bs!466112 d!708053))

(declare-fun m!2828673 () Bool)

(assert (=> bs!466112 m!2828673))

(assert (=> b!2456316 d!708053))

(declare-fun bm!151162 () Bool)

(declare-fun call!151167 () Bool)

(declare-fun c!392409 () Bool)

(assert (=> bm!151162 (= call!151167 (validRegex!2917 (ite c!392409 (regTwo!14963 lt!880350) (regOne!14962 lt!880350))))))

(declare-fun b!2458239 () Bool)

(declare-fun res!1041997 () Bool)

(declare-fun e!1559403 () Bool)

(assert (=> b!2458239 (=> (not res!1041997) (not e!1559403))))

(declare-fun call!151168 () Bool)

(assert (=> b!2458239 (= res!1041997 call!151168)))

(declare-fun e!1559397 () Bool)

(assert (=> b!2458239 (= e!1559397 e!1559403)))

(declare-fun b!2458240 () Bool)

(declare-fun e!1559400 () Bool)

(declare-fun call!151169 () Bool)

(assert (=> b!2458240 (= e!1559400 call!151169)))

(declare-fun bm!151163 () Bool)

(assert (=> bm!151163 (= call!151168 call!151169)))

(declare-fun b!2458241 () Bool)

(declare-fun e!1559399 () Bool)

(assert (=> b!2458241 (= e!1559399 e!1559400)))

(declare-fun res!1041993 () Bool)

(assert (=> b!2458241 (= res!1041993 (not (nullable!2218 (reg!7554 lt!880350))))))

(assert (=> b!2458241 (=> (not res!1041993) (not e!1559400))))

(declare-fun b!2458242 () Bool)

(declare-fun res!1041995 () Bool)

(declare-fun e!1559402 () Bool)

(assert (=> b!2458242 (=> res!1041995 e!1559402)))

(assert (=> b!2458242 (= res!1041995 (not ((_ is Concat!11861) lt!880350)))))

(assert (=> b!2458242 (= e!1559397 e!1559402)))

(declare-fun b!2458243 () Bool)

(declare-fun e!1559401 () Bool)

(assert (=> b!2458243 (= e!1559402 e!1559401)))

(declare-fun res!1041994 () Bool)

(assert (=> b!2458243 (=> (not res!1041994) (not e!1559401))))

(assert (=> b!2458243 (= res!1041994 call!151167)))

(declare-fun c!392408 () Bool)

(declare-fun bm!151164 () Bool)

(assert (=> bm!151164 (= call!151169 (validRegex!2917 (ite c!392408 (reg!7554 lt!880350) (ite c!392409 (regOne!14963 lt!880350) (regTwo!14962 lt!880350)))))))

(declare-fun b!2458245 () Bool)

(assert (=> b!2458245 (= e!1559401 call!151168)))

(declare-fun b!2458246 () Bool)

(assert (=> b!2458246 (= e!1559399 e!1559397)))

(assert (=> b!2458246 (= c!392409 ((_ is Union!7225) lt!880350))))

(declare-fun b!2458247 () Bool)

(declare-fun e!1559398 () Bool)

(assert (=> b!2458247 (= e!1559398 e!1559399)))

(assert (=> b!2458247 (= c!392408 ((_ is Star!7225) lt!880350))))

(declare-fun b!2458244 () Bool)

(assert (=> b!2458244 (= e!1559403 call!151167)))

(declare-fun d!708055 () Bool)

(declare-fun res!1041996 () Bool)

(assert (=> d!708055 (=> res!1041996 e!1559398)))

(assert (=> d!708055 (= res!1041996 ((_ is ElementMatch!7225) lt!880350))))

(assert (=> d!708055 (= (validRegex!2917 lt!880350) e!1559398)))

(assert (= (and d!708055 (not res!1041996)) b!2458247))

(assert (= (and b!2458247 c!392408) b!2458241))

(assert (= (and b!2458247 (not c!392408)) b!2458246))

(assert (= (and b!2458241 res!1041993) b!2458240))

(assert (= (and b!2458246 c!392409) b!2458239))

(assert (= (and b!2458246 (not c!392409)) b!2458242))

(assert (= (and b!2458239 res!1041997) b!2458244))

(assert (= (and b!2458242 (not res!1041995)) b!2458243))

(assert (= (and b!2458243 res!1041994) b!2458245))

(assert (= (or b!2458239 b!2458245) bm!151163))

(assert (= (or b!2458244 b!2458243) bm!151162))

(assert (= (or b!2458240 bm!151163) bm!151164))

(declare-fun m!2828675 () Bool)

(assert (=> bm!151162 m!2828675))

(declare-fun m!2828677 () Bool)

(assert (=> b!2458241 m!2828677))

(declare-fun m!2828679 () Bool)

(assert (=> bm!151164 m!2828679))

(assert (=> d!707487 d!708055))

(assert (=> d!707487 d!707539))

(assert (=> b!2456132 d!707885))

(declare-fun bs!466113 () Bool)

(declare-fun b!2458257 () Bool)

(assert (= bs!466113 (and b!2458257 b!2456329)))

(declare-fun lambda!93065 () Int)

(assert (=> bs!466113 (= (and (= (reg!7554 (regOne!14963 (regOne!14963 r!13927))) (reg!7554 (regOne!14963 r!13927))) (= (regOne!14963 (regOne!14963 r!13927)) (regOne!14963 r!13927))) (= lambda!93065 lambda!93043))))

(declare-fun bs!466114 () Bool)

(assert (= bs!466114 (and b!2458257 b!2457992)))

(assert (=> bs!466114 (= (and (= (reg!7554 (regOne!14963 (regOne!14963 r!13927))) (reg!7554 (regOne!14963 (regTwo!14963 r!13927)))) (= (regOne!14963 (regOne!14963 r!13927)) (regOne!14963 (regTwo!14963 r!13927)))) (= lambda!93065 lambda!93060))))

(declare-fun bs!466115 () Bool)

(assert (= bs!466115 (and b!2458257 b!2455601)))

(assert (=> bs!466115 (= (and (= (reg!7554 (regOne!14963 (regOne!14963 r!13927))) (reg!7554 r!13927)) (= (regOne!14963 (regOne!14963 r!13927)) r!13927)) (= lambda!93065 lambda!93033))))

(declare-fun bs!466116 () Bool)

(assert (= bs!466116 (and b!2458257 b!2457983)))

(assert (=> bs!466116 (not (= lambda!93065 lambda!93061))))

(declare-fun bs!466117 () Bool)

(assert (= bs!466117 (and b!2458257 b!2457970)))

(assert (=> bs!466117 (not (= lambda!93065 lambda!93059))))

(declare-fun bs!466118 () Bool)

(assert (= bs!466118 (and b!2458257 b!2458048)))

(assert (=> bs!466118 (= (and (= (reg!7554 (regOne!14963 (regOne!14963 r!13927))) (reg!7554 (regTwo!14963 (regTwo!14963 r!13927)))) (= (regOne!14963 (regOne!14963 r!13927)) (regTwo!14963 (regTwo!14963 r!13927)))) (= lambda!93065 lambda!93062))))

(declare-fun bs!466119 () Bool)

(assert (= bs!466119 (and b!2458257 b!2456340)))

(assert (=> bs!466119 (= (and (= (reg!7554 (regOne!14963 (regOne!14963 r!13927))) (reg!7554 (regTwo!14963 r!13927))) (= (regOne!14963 (regOne!14963 r!13927)) (regTwo!14963 r!13927))) (= lambda!93065 lambda!93045))))

(declare-fun bs!466120 () Bool)

(assert (= bs!466120 (and b!2458257 b!2457979)))

(assert (=> bs!466120 (= (and (= (reg!7554 (regOne!14963 (regOne!14963 r!13927))) (reg!7554 (regTwo!14963 (regOne!14963 r!13927)))) (= (regOne!14963 (regOne!14963 r!13927)) (regTwo!14963 (regOne!14963 r!13927)))) (= lambda!93065 lambda!93058))))

(declare-fun bs!466121 () Bool)

(assert (= bs!466121 (and b!2458257 b!2456331)))

(assert (=> bs!466121 (not (= lambda!93065 lambda!93046))))

(declare-fun bs!466122 () Bool)

(assert (= bs!466122 (and b!2458257 b!2458039)))

(assert (=> bs!466122 (not (= lambda!93065 lambda!93063))))

(declare-fun bs!466123 () Bool)

(assert (= bs!466123 (and b!2458257 b!2456320)))

(assert (=> bs!466123 (not (= lambda!93065 lambda!93044))))

(declare-fun bs!466124 () Bool)

(assert (= bs!466124 (and b!2458257 b!2455592)))

(assert (=> bs!466124 (not (= lambda!93065 lambda!93034))))

(assert (=> b!2458257 true))

(assert (=> b!2458257 true))

(declare-fun bs!466125 () Bool)

(declare-fun b!2458248 () Bool)

(assert (= bs!466125 (and b!2458248 b!2456329)))

(declare-fun lambda!93066 () Int)

(assert (=> bs!466125 (not (= lambda!93066 lambda!93043))))

(declare-fun bs!466126 () Bool)

(assert (= bs!466126 (and b!2458248 b!2457992)))

(assert (=> bs!466126 (not (= lambda!93066 lambda!93060))))

(declare-fun bs!466127 () Bool)

(assert (= bs!466127 (and b!2458248 b!2455601)))

(assert (=> bs!466127 (not (= lambda!93066 lambda!93033))))

(declare-fun bs!466128 () Bool)

(assert (= bs!466128 (and b!2458248 b!2457983)))

(assert (=> bs!466128 (= (and (= (regOne!14962 (regOne!14963 (regOne!14963 r!13927))) (regOne!14962 (regOne!14963 (regTwo!14963 r!13927)))) (= (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))) (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))))) (= lambda!93066 lambda!93061))))

(declare-fun bs!466129 () Bool)

(assert (= bs!466129 (and b!2458248 b!2457970)))

(assert (=> bs!466129 (= (and (= (regOne!14962 (regOne!14963 (regOne!14963 r!13927))) (regOne!14962 (regTwo!14963 (regOne!14963 r!13927)))) (= (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))) (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))))) (= lambda!93066 lambda!93059))))

(declare-fun bs!466130 () Bool)

(assert (= bs!466130 (and b!2458248 b!2458048)))

(assert (=> bs!466130 (not (= lambda!93066 lambda!93062))))

(declare-fun bs!466131 () Bool)

(assert (= bs!466131 (and b!2458248 b!2456340)))

(assert (=> bs!466131 (not (= lambda!93066 lambda!93045))))

(declare-fun bs!466132 () Bool)

(assert (= bs!466132 (and b!2458248 b!2457979)))

(assert (=> bs!466132 (not (= lambda!93066 lambda!93058))))

(declare-fun bs!466133 () Bool)

(assert (= bs!466133 (and b!2458248 b!2456331)))

(assert (=> bs!466133 (= (and (= (regOne!14962 (regOne!14963 (regOne!14963 r!13927))) (regOne!14962 (regTwo!14963 r!13927))) (= (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))) (regTwo!14962 (regTwo!14963 r!13927)))) (= lambda!93066 lambda!93046))))

(declare-fun bs!466134 () Bool)

(assert (= bs!466134 (and b!2458248 b!2458257)))

(assert (=> bs!466134 (not (= lambda!93066 lambda!93065))))

(declare-fun bs!466135 () Bool)

(assert (= bs!466135 (and b!2458248 b!2458039)))

(assert (=> bs!466135 (= (and (= (regOne!14962 (regOne!14963 (regOne!14963 r!13927))) (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927)))) (= (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))) (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))))) (= lambda!93066 lambda!93063))))

(declare-fun bs!466136 () Bool)

(assert (= bs!466136 (and b!2458248 b!2456320)))

(assert (=> bs!466136 (= (and (= (regOne!14962 (regOne!14963 (regOne!14963 r!13927))) (regOne!14962 (regOne!14963 r!13927))) (= (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))) (regTwo!14962 (regOne!14963 r!13927)))) (= lambda!93066 lambda!93044))))

(declare-fun bs!466137 () Bool)

(assert (= bs!466137 (and b!2458248 b!2455592)))

(assert (=> bs!466137 (= (and (= (regOne!14962 (regOne!14963 (regOne!14963 r!13927))) (regOne!14962 r!13927)) (= (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))) (regTwo!14962 r!13927))) (= lambda!93066 lambda!93034))))

(assert (=> b!2458248 true))

(assert (=> b!2458248 true))

(declare-fun call!151170 () Bool)

(declare-fun bm!151165 () Bool)

(declare-fun c!392410 () Bool)

(assert (=> bm!151165 (= call!151170 (Exists!1244 (ite c!392410 lambda!93065 lambda!93066)))))

(declare-fun e!1559407 () Bool)

(assert (=> b!2458248 (= e!1559407 call!151170)))

(declare-fun b!2458249 () Bool)

(declare-fun c!392412 () Bool)

(assert (=> b!2458249 (= c!392412 ((_ is Union!7225) (regOne!14963 (regOne!14963 r!13927))))))

(declare-fun e!1559408 () Bool)

(declare-fun e!1559405 () Bool)

(assert (=> b!2458249 (= e!1559408 e!1559405)))

(declare-fun b!2458250 () Bool)

(declare-fun e!1559409 () Bool)

(assert (=> b!2458250 (= e!1559405 e!1559409)))

(declare-fun res!1042000 () Bool)

(assert (=> b!2458250 (= res!1042000 (matchRSpec!1072 (regOne!14963 (regOne!14963 (regOne!14963 r!13927))) s!9460))))

(assert (=> b!2458250 (=> res!1042000 e!1559409)))

(declare-fun d!708057 () Bool)

(declare-fun c!392411 () Bool)

(assert (=> d!708057 (= c!392411 ((_ is EmptyExpr!7225) (regOne!14963 (regOne!14963 r!13927))))))

(declare-fun e!1559410 () Bool)

(assert (=> d!708057 (= (matchRSpec!1072 (regOne!14963 (regOne!14963 r!13927)) s!9460) e!1559410)))

(declare-fun b!2458251 () Bool)

(declare-fun e!1559404 () Bool)

(assert (=> b!2458251 (= e!1559410 e!1559404)))

(declare-fun res!1041999 () Bool)

(assert (=> b!2458251 (= res!1041999 (not ((_ is EmptyLang!7225) (regOne!14963 (regOne!14963 r!13927)))))))

(assert (=> b!2458251 (=> (not res!1041999) (not e!1559404))))

(declare-fun b!2458252 () Bool)

(assert (=> b!2458252 (= e!1559405 e!1559407)))

(assert (=> b!2458252 (= c!392410 ((_ is Star!7225) (regOne!14963 (regOne!14963 r!13927))))))

(declare-fun bm!151166 () Bool)

(declare-fun call!151171 () Bool)

(assert (=> bm!151166 (= call!151171 (isEmpty!16618 s!9460))))

(declare-fun b!2458253 () Bool)

(assert (=> b!2458253 (= e!1559410 call!151171)))

(declare-fun b!2458254 () Bool)

(assert (=> b!2458254 (= e!1559408 (= s!9460 (Cons!28589 (c!391797 (regOne!14963 (regOne!14963 r!13927))) Nil!28589)))))

(declare-fun b!2458255 () Bool)

(assert (=> b!2458255 (= e!1559409 (matchRSpec!1072 (regTwo!14963 (regOne!14963 (regOne!14963 r!13927))) s!9460))))

(declare-fun b!2458256 () Bool)

(declare-fun c!392413 () Bool)

(assert (=> b!2458256 (= c!392413 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 r!13927))))))

(assert (=> b!2458256 (= e!1559404 e!1559408)))

(declare-fun e!1559406 () Bool)

(assert (=> b!2458257 (= e!1559406 call!151170)))

(declare-fun b!2458258 () Bool)

(declare-fun res!1041998 () Bool)

(assert (=> b!2458258 (=> res!1041998 e!1559406)))

(assert (=> b!2458258 (= res!1041998 call!151171)))

(assert (=> b!2458258 (= e!1559407 e!1559406)))

(assert (= (and d!708057 c!392411) b!2458253))

(assert (= (and d!708057 (not c!392411)) b!2458251))

(assert (= (and b!2458251 res!1041999) b!2458256))

(assert (= (and b!2458256 c!392413) b!2458254))

(assert (= (and b!2458256 (not c!392413)) b!2458249))

(assert (= (and b!2458249 c!392412) b!2458250))

(assert (= (and b!2458249 (not c!392412)) b!2458252))

(assert (= (and b!2458250 (not res!1042000)) b!2458255))

(assert (= (and b!2458252 c!392410) b!2458258))

(assert (= (and b!2458252 (not c!392410)) b!2458248))

(assert (= (and b!2458258 (not res!1041998)) b!2458257))

(assert (= (or b!2458257 b!2458248) bm!151165))

(assert (= (or b!2458253 b!2458258) bm!151166))

(declare-fun m!2828681 () Bool)

(assert (=> bm!151165 m!2828681))

(declare-fun m!2828683 () Bool)

(assert (=> b!2458250 m!2828683))

(assert (=> bm!151166 m!2826961))

(declare-fun m!2828685 () Bool)

(assert (=> b!2458255 m!2828685))

(assert (=> b!2456322 d!708057))

(declare-fun b!2458259 () Bool)

(declare-fun e!1559416 () Bool)

(assert (=> b!2458259 (= e!1559416 (nullable!2218 (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460))))))

(declare-fun bm!151167 () Bool)

(declare-fun call!151172 () Bool)

(assert (=> bm!151167 (= call!151172 (isEmpty!16618 (tail!3880 s!9460)))))

(declare-fun b!2458260 () Bool)

(declare-fun e!1559414 () Bool)

(declare-fun lt!880437 () Bool)

(assert (=> b!2458260 (= e!1559414 (= lt!880437 call!151172))))

(declare-fun b!2458261 () Bool)

(declare-fun e!1559411 () Bool)

(assert (=> b!2458261 (= e!1559411 (not lt!880437))))

(declare-fun b!2458262 () Bool)

(declare-fun e!1559412 () Bool)

(assert (=> b!2458262 (= e!1559412 (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460)))))))

(declare-fun b!2458263 () Bool)

(declare-fun e!1559415 () Bool)

(declare-fun e!1559417 () Bool)

(assert (=> b!2458263 (= e!1559415 e!1559417)))

(declare-fun res!1042007 () Bool)

(assert (=> b!2458263 (=> (not res!1042007) (not e!1559417))))

(assert (=> b!2458263 (= res!1042007 (not lt!880437))))

(declare-fun b!2458264 () Bool)

(assert (=> b!2458264 (= e!1559416 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2458265 () Bool)

(declare-fun res!1042001 () Bool)

(assert (=> b!2458265 (=> (not res!1042001) (not e!1559412))))

(assert (=> b!2458265 (= res!1042001 (not call!151172))))

(declare-fun b!2458266 () Bool)

(assert (=> b!2458266 (= e!1559414 e!1559411)))

(declare-fun c!392415 () Bool)

(assert (=> b!2458266 (= c!392415 ((_ is EmptyLang!7225) (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460))))))

(declare-fun b!2458267 () Bool)

(declare-fun e!1559413 () Bool)

(assert (=> b!2458267 (= e!1559417 e!1559413)))

(declare-fun res!1042002 () Bool)

(assert (=> b!2458267 (=> res!1042002 e!1559413)))

(assert (=> b!2458267 (= res!1042002 call!151172)))

(declare-fun b!2458268 () Bool)

(declare-fun res!1042008 () Bool)

(assert (=> b!2458268 (=> (not res!1042008) (not e!1559412))))

(assert (=> b!2458268 (= res!1042008 (isEmpty!16618 (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2458269 () Bool)

(declare-fun res!1042003 () Bool)

(assert (=> b!2458269 (=> res!1042003 e!1559415)))

(assert (=> b!2458269 (= res!1042003 (not ((_ is ElementMatch!7225) (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460)))))))

(assert (=> b!2458269 (= e!1559411 e!1559415)))

(declare-fun d!708059 () Bool)

(assert (=> d!708059 e!1559414))

(declare-fun c!392416 () Bool)

(assert (=> d!708059 (= c!392416 ((_ is EmptyExpr!7225) (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460))))))

(assert (=> d!708059 (= lt!880437 e!1559416)))

(declare-fun c!392414 () Bool)

(assert (=> d!708059 (= c!392414 (isEmpty!16618 (tail!3880 s!9460)))))

(assert (=> d!708059 (validRegex!2917 (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460)))))

(assert (=> d!708059 (= (matchR!3340 (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460)) (tail!3880 s!9460)) lt!880437)))

(declare-fun b!2458270 () Bool)

(declare-fun res!1042005 () Bool)

(assert (=> b!2458270 (=> res!1042005 e!1559413)))

(assert (=> b!2458270 (= res!1042005 (not (isEmpty!16618 (tail!3880 (tail!3880 s!9460)))))))

(declare-fun b!2458271 () Bool)

(assert (=> b!2458271 (= e!1559413 (not (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460))))))))

(declare-fun b!2458272 () Bool)

(declare-fun res!1042006 () Bool)

(assert (=> b!2458272 (=> res!1042006 e!1559415)))

(assert (=> b!2458272 (= res!1042006 e!1559412)))

(declare-fun res!1042004 () Bool)

(assert (=> b!2458272 (=> (not res!1042004) (not e!1559412))))

(assert (=> b!2458272 (= res!1042004 lt!880437)))

(assert (= (and d!708059 c!392414) b!2458259))

(assert (= (and d!708059 (not c!392414)) b!2458264))

(assert (= (and d!708059 c!392416) b!2458260))

(assert (= (and d!708059 (not c!392416)) b!2458266))

(assert (= (and b!2458266 c!392415) b!2458261))

(assert (= (and b!2458266 (not c!392415)) b!2458269))

(assert (= (and b!2458269 (not res!1042003)) b!2458272))

(assert (= (and b!2458272 res!1042004) b!2458265))

(assert (= (and b!2458265 res!1042001) b!2458268))

(assert (= (and b!2458268 res!1042008) b!2458262))

(assert (= (and b!2458272 (not res!1042006)) b!2458263))

(assert (= (and b!2458263 res!1042007) b!2458267))

(assert (= (and b!2458267 (not res!1042002)) b!2458270))

(assert (= (and b!2458270 (not res!1042005)) b!2458271))

(assert (= (or b!2458260 b!2458265 b!2458267) bm!151167))

(assert (=> b!2458270 m!2826957))

(assert (=> b!2458270 m!2827317))

(assert (=> b!2458270 m!2827317))

(assert (=> b!2458270 m!2827319))

(assert (=> d!708059 m!2826957))

(assert (=> d!708059 m!2826959))

(assert (=> d!708059 m!2827535))

(declare-fun m!2828687 () Bool)

(assert (=> d!708059 m!2828687))

(assert (=> b!2458268 m!2826957))

(assert (=> b!2458268 m!2827317))

(assert (=> b!2458268 m!2827317))

(assert (=> b!2458268 m!2827319))

(assert (=> b!2458264 m!2826957))

(assert (=> b!2458264 m!2827323))

(assert (=> b!2458264 m!2827535))

(assert (=> b!2458264 m!2827323))

(declare-fun m!2828689 () Bool)

(assert (=> b!2458264 m!2828689))

(assert (=> b!2458264 m!2826957))

(assert (=> b!2458264 m!2827317))

(assert (=> b!2458264 m!2828689))

(assert (=> b!2458264 m!2827317))

(declare-fun m!2828691 () Bool)

(assert (=> b!2458264 m!2828691))

(assert (=> b!2458262 m!2826957))

(assert (=> b!2458262 m!2827323))

(assert (=> b!2458259 m!2827535))

(declare-fun m!2828693 () Bool)

(assert (=> b!2458259 m!2828693))

(assert (=> b!2458271 m!2826957))

(assert (=> b!2458271 m!2827323))

(assert (=> bm!151167 m!2826957))

(assert (=> bm!151167 m!2826959))

(assert (=> b!2456347 d!708059))

(declare-fun b!2458273 () Bool)

(declare-fun e!1559419 () Regex!7225)

(declare-fun e!1559418 () Regex!7225)

(assert (=> b!2458273 (= e!1559419 e!1559418)))

(declare-fun c!392417 () Bool)

(assert (=> b!2458273 (= c!392417 ((_ is ElementMatch!7225) EmptyExpr!7225))))

(declare-fun c!392421 () Bool)

(declare-fun c!392419 () Bool)

(declare-fun call!151176 () Regex!7225)

(declare-fun bm!151168 () Bool)

(declare-fun c!392420 () Bool)

(assert (=> bm!151168 (= call!151176 (derivativeStep!1872 (ite c!392421 (regTwo!14963 EmptyExpr!7225) (ite c!392420 (reg!7554 EmptyExpr!7225) (ite c!392419 (regTwo!14962 EmptyExpr!7225) (regOne!14962 EmptyExpr!7225)))) (head!5607 s!9460)))))

(declare-fun b!2458274 () Bool)

(assert (=> b!2458274 (= e!1559418 (ite (= (head!5607 s!9460) (c!391797 EmptyExpr!7225)) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151169 () Bool)

(declare-fun call!151174 () Regex!7225)

(assert (=> bm!151169 (= call!151174 call!151176)))

(declare-fun b!2458275 () Bool)

(declare-fun e!1559422 () Regex!7225)

(assert (=> b!2458275 (= e!1559422 (Concat!11861 call!151174 EmptyExpr!7225))))

(declare-fun b!2458276 () Bool)

(declare-fun e!1559420 () Regex!7225)

(declare-fun call!151175 () Regex!7225)

(declare-fun call!151173 () Regex!7225)

(assert (=> b!2458276 (= e!1559420 (Union!7225 (Concat!11861 call!151175 (regTwo!14962 EmptyExpr!7225)) call!151173))))

(declare-fun d!708061 () Bool)

(declare-fun lt!880438 () Regex!7225)

(assert (=> d!708061 (validRegex!2917 lt!880438)))

(assert (=> d!708061 (= lt!880438 e!1559419)))

(declare-fun c!392418 () Bool)

(assert (=> d!708061 (= c!392418 (or ((_ is EmptyExpr!7225) EmptyExpr!7225) ((_ is EmptyLang!7225) EmptyExpr!7225)))))

(assert (=> d!708061 (validRegex!2917 EmptyExpr!7225)))

(assert (=> d!708061 (= (derivativeStep!1872 EmptyExpr!7225 (head!5607 s!9460)) lt!880438)))

(declare-fun bm!151170 () Bool)

(assert (=> bm!151170 (= call!151175 (derivativeStep!1872 (ite c!392421 (regOne!14963 EmptyExpr!7225) (regOne!14962 EmptyExpr!7225)) (head!5607 s!9460)))))

(declare-fun b!2458277 () Bool)

(assert (=> b!2458277 (= e!1559420 (Union!7225 (Concat!11861 call!151173 (regTwo!14962 EmptyExpr!7225)) EmptyLang!7225))))

(declare-fun b!2458278 () Bool)

(assert (=> b!2458278 (= e!1559419 EmptyLang!7225)))

(declare-fun b!2458279 () Bool)

(assert (=> b!2458279 (= c!392419 (nullable!2218 (regOne!14962 EmptyExpr!7225)))))

(assert (=> b!2458279 (= e!1559422 e!1559420)))

(declare-fun bm!151171 () Bool)

(assert (=> bm!151171 (= call!151173 call!151174)))

(declare-fun b!2458280 () Bool)

(declare-fun e!1559421 () Regex!7225)

(assert (=> b!2458280 (= e!1559421 (Union!7225 call!151175 call!151176))))

(declare-fun b!2458281 () Bool)

(assert (=> b!2458281 (= c!392421 ((_ is Union!7225) EmptyExpr!7225))))

(assert (=> b!2458281 (= e!1559418 e!1559421)))

(declare-fun b!2458282 () Bool)

(assert (=> b!2458282 (= e!1559421 e!1559422)))

(assert (=> b!2458282 (= c!392420 ((_ is Star!7225) EmptyExpr!7225))))

(assert (= (and d!708061 c!392418) b!2458278))

(assert (= (and d!708061 (not c!392418)) b!2458273))

(assert (= (and b!2458273 c!392417) b!2458274))

(assert (= (and b!2458273 (not c!392417)) b!2458281))

(assert (= (and b!2458281 c!392421) b!2458280))

(assert (= (and b!2458281 (not c!392421)) b!2458282))

(assert (= (and b!2458282 c!392420) b!2458275))

(assert (= (and b!2458282 (not c!392420)) b!2458279))

(assert (= (and b!2458279 c!392419) b!2458276))

(assert (= (and b!2458279 (not c!392419)) b!2458277))

(assert (= (or b!2458276 b!2458277) bm!151171))

(assert (= (or b!2458275 bm!151171) bm!151169))

(assert (= (or b!2458280 b!2458276) bm!151170))

(assert (= (or b!2458280 bm!151169) bm!151168))

(assert (=> bm!151168 m!2826965))

(declare-fun m!2828695 () Bool)

(assert (=> bm!151168 m!2828695))

(declare-fun m!2828697 () Bool)

(assert (=> d!708061 m!2828697))

(assert (=> d!708061 m!2827445))

(assert (=> bm!151170 m!2826965))

(declare-fun m!2828699 () Bool)

(assert (=> bm!151170 m!2828699))

(assert (=> b!2458279 m!2828459))

(assert (=> b!2456347 d!708061))

(assert (=> b!2456347 d!707421))

(assert (=> b!2456347 d!707423))

(declare-fun d!708063 () Bool)

(assert (=> d!708063 (= (isEmpty!16618 (_2!16630 (get!8844 lt!880296))) ((_ is Nil!28589) (_2!16630 (get!8844 lt!880296))))))

(assert (=> d!707461 d!708063))

(assert (=> d!707461 d!707893))

(declare-fun b!2458286 () Bool)

(declare-fun e!1559424 () Bool)

(declare-fun lt!880439 () List!28687)

(assert (=> b!2458286 (= e!1559424 (or (not (= (_2!16630 lt!880243) Nil!28589)) (= lt!880439 (t!208664 (t!208664 (_1!16630 lt!880243))))))))

(declare-fun b!2458283 () Bool)

(declare-fun e!1559423 () List!28687)

(assert (=> b!2458283 (= e!1559423 (_2!16630 lt!880243))))

(declare-fun b!2458285 () Bool)

(declare-fun res!1042009 () Bool)

(assert (=> b!2458285 (=> (not res!1042009) (not e!1559424))))

(assert (=> b!2458285 (= res!1042009 (= (size!22276 lt!880439) (+ (size!22276 (t!208664 (t!208664 (_1!16630 lt!880243)))) (size!22276 (_2!16630 lt!880243)))))))

(declare-fun b!2458284 () Bool)

(assert (=> b!2458284 (= e!1559423 (Cons!28589 (h!33990 (t!208664 (t!208664 (_1!16630 lt!880243)))) (++!7113 (t!208664 (t!208664 (t!208664 (_1!16630 lt!880243)))) (_2!16630 lt!880243))))))

(declare-fun d!708065 () Bool)

(assert (=> d!708065 e!1559424))

(declare-fun res!1042010 () Bool)

(assert (=> d!708065 (=> (not res!1042010) (not e!1559424))))

(assert (=> d!708065 (= res!1042010 (= (content!3938 lt!880439) ((_ map or) (content!3938 (t!208664 (t!208664 (_1!16630 lt!880243)))) (content!3938 (_2!16630 lt!880243)))))))

(assert (=> d!708065 (= lt!880439 e!1559423)))

(declare-fun c!392422 () Bool)

(assert (=> d!708065 (= c!392422 ((_ is Nil!28589) (t!208664 (t!208664 (_1!16630 lt!880243)))))))

(assert (=> d!708065 (= (++!7113 (t!208664 (t!208664 (_1!16630 lt!880243))) (_2!16630 lt!880243)) lt!880439)))

(assert (= (and d!708065 c!392422) b!2458283))

(assert (= (and d!708065 (not c!392422)) b!2458284))

(assert (= (and d!708065 res!1042010) b!2458285))

(assert (= (and b!2458285 res!1042009) b!2458286))

(declare-fun m!2828701 () Bool)

(assert (=> b!2458285 m!2828701))

(declare-fun m!2828703 () Bool)

(assert (=> b!2458285 m!2828703))

(assert (=> b!2458285 m!2826895))

(declare-fun m!2828705 () Bool)

(assert (=> b!2458284 m!2828705))

(declare-fun m!2828707 () Bool)

(assert (=> d!708065 m!2828707))

(assert (=> d!708065 m!2828431))

(assert (=> d!708065 m!2826903))

(assert (=> b!2456293 d!708065))

(assert (=> b!2456232 d!707897))

(declare-fun b!2458287 () Bool)

(declare-fun e!1559430 () Bool)

(assert (=> b!2458287 (= e!1559430 (nullable!2218 lt!880248))))

(declare-fun bm!151172 () Bool)

(declare-fun call!151177 () Bool)

(assert (=> bm!151172 (= call!151177 (isEmpty!16618 (_1!16630 (get!8844 lt!880343))))))

(declare-fun b!2458288 () Bool)

(declare-fun e!1559428 () Bool)

(declare-fun lt!880440 () Bool)

(assert (=> b!2458288 (= e!1559428 (= lt!880440 call!151177))))

(declare-fun b!2458289 () Bool)

(declare-fun e!1559425 () Bool)

(assert (=> b!2458289 (= e!1559425 (not lt!880440))))

(declare-fun b!2458290 () Bool)

(declare-fun e!1559426 () Bool)

(assert (=> b!2458290 (= e!1559426 (= (head!5607 (_1!16630 (get!8844 lt!880343))) (c!391797 lt!880248)))))

(declare-fun b!2458291 () Bool)

(declare-fun e!1559429 () Bool)

(declare-fun e!1559431 () Bool)

(assert (=> b!2458291 (= e!1559429 e!1559431)))

(declare-fun res!1042017 () Bool)

(assert (=> b!2458291 (=> (not res!1042017) (not e!1559431))))

(assert (=> b!2458291 (= res!1042017 (not lt!880440))))

(declare-fun b!2458292 () Bool)

(assert (=> b!2458292 (= e!1559430 (matchR!3340 (derivativeStep!1872 lt!880248 (head!5607 (_1!16630 (get!8844 lt!880343)))) (tail!3880 (_1!16630 (get!8844 lt!880343)))))))

(declare-fun b!2458293 () Bool)

(declare-fun res!1042011 () Bool)

(assert (=> b!2458293 (=> (not res!1042011) (not e!1559426))))

(assert (=> b!2458293 (= res!1042011 (not call!151177))))

(declare-fun b!2458294 () Bool)

(assert (=> b!2458294 (= e!1559428 e!1559425)))

(declare-fun c!392424 () Bool)

(assert (=> b!2458294 (= c!392424 ((_ is EmptyLang!7225) lt!880248))))

(declare-fun b!2458295 () Bool)

(declare-fun e!1559427 () Bool)

(assert (=> b!2458295 (= e!1559431 e!1559427)))

(declare-fun res!1042012 () Bool)

(assert (=> b!2458295 (=> res!1042012 e!1559427)))

(assert (=> b!2458295 (= res!1042012 call!151177)))

(declare-fun b!2458296 () Bool)

(declare-fun res!1042018 () Bool)

(assert (=> b!2458296 (=> (not res!1042018) (not e!1559426))))

(assert (=> b!2458296 (= res!1042018 (isEmpty!16618 (tail!3880 (_1!16630 (get!8844 lt!880343)))))))

(declare-fun b!2458297 () Bool)

(declare-fun res!1042013 () Bool)

(assert (=> b!2458297 (=> res!1042013 e!1559429)))

(assert (=> b!2458297 (= res!1042013 (not ((_ is ElementMatch!7225) lt!880248)))))

(assert (=> b!2458297 (= e!1559425 e!1559429)))

(declare-fun d!708067 () Bool)

(assert (=> d!708067 e!1559428))

(declare-fun c!392425 () Bool)

(assert (=> d!708067 (= c!392425 ((_ is EmptyExpr!7225) lt!880248))))

(assert (=> d!708067 (= lt!880440 e!1559430)))

(declare-fun c!392423 () Bool)

(assert (=> d!708067 (= c!392423 (isEmpty!16618 (_1!16630 (get!8844 lt!880343))))))

(assert (=> d!708067 (validRegex!2917 lt!880248)))

(assert (=> d!708067 (= (matchR!3340 lt!880248 (_1!16630 (get!8844 lt!880343))) lt!880440)))

(declare-fun b!2458298 () Bool)

(declare-fun res!1042015 () Bool)

(assert (=> b!2458298 (=> res!1042015 e!1559427)))

(assert (=> b!2458298 (= res!1042015 (not (isEmpty!16618 (tail!3880 (_1!16630 (get!8844 lt!880343))))))))

(declare-fun b!2458299 () Bool)

(assert (=> b!2458299 (= e!1559427 (not (= (head!5607 (_1!16630 (get!8844 lt!880343))) (c!391797 lt!880248))))))

(declare-fun b!2458300 () Bool)

(declare-fun res!1042016 () Bool)

(assert (=> b!2458300 (=> res!1042016 e!1559429)))

(assert (=> b!2458300 (= res!1042016 e!1559426)))

(declare-fun res!1042014 () Bool)

(assert (=> b!2458300 (=> (not res!1042014) (not e!1559426))))

(assert (=> b!2458300 (= res!1042014 lt!880440)))

(assert (= (and d!708067 c!392423) b!2458287))

(assert (= (and d!708067 (not c!392423)) b!2458292))

(assert (= (and d!708067 c!392425) b!2458288))

(assert (= (and d!708067 (not c!392425)) b!2458294))

(assert (= (and b!2458294 c!392424) b!2458289))

(assert (= (and b!2458294 (not c!392424)) b!2458297))

(assert (= (and b!2458297 (not res!1042013)) b!2458300))

(assert (= (and b!2458300 res!1042014) b!2458293))

(assert (= (and b!2458293 res!1042011) b!2458296))

(assert (= (and b!2458296 res!1042018) b!2458290))

(assert (= (and b!2458300 (not res!1042016)) b!2458291))

(assert (= (and b!2458291 res!1042017) b!2458295))

(assert (= (and b!2458295 (not res!1042012)) b!2458298))

(assert (= (and b!2458298 (not res!1042015)) b!2458299))

(assert (= (or b!2458288 b!2458293 b!2458295) bm!151172))

(declare-fun m!2828709 () Bool)

(assert (=> b!2458298 m!2828709))

(assert (=> b!2458298 m!2828709))

(declare-fun m!2828711 () Bool)

(assert (=> b!2458298 m!2828711))

(declare-fun m!2828713 () Bool)

(assert (=> d!708067 m!2828713))

(assert (=> d!708067 m!2826907))

(assert (=> b!2458296 m!2828709))

(assert (=> b!2458296 m!2828709))

(assert (=> b!2458296 m!2828711))

(declare-fun m!2828715 () Bool)

(assert (=> b!2458292 m!2828715))

(assert (=> b!2458292 m!2828715))

(declare-fun m!2828717 () Bool)

(assert (=> b!2458292 m!2828717))

(assert (=> b!2458292 m!2828709))

(assert (=> b!2458292 m!2828717))

(assert (=> b!2458292 m!2828709))

(declare-fun m!2828719 () Bool)

(assert (=> b!2458292 m!2828719))

(assert (=> b!2458290 m!2828715))

(assert (=> b!2458287 m!2826985))

(assert (=> b!2458299 m!2828715))

(assert (=> bm!151172 m!2828713))

(assert (=> b!2456188 d!708067))

(assert (=> b!2456188 d!707905))

(declare-fun d!708069 () Bool)

(assert (=> d!708069 (= (isConcat!237 lt!880344) ((_ is Concat!11861) lt!880344))))

(assert (=> b!2456194 d!708069))

(declare-fun d!708071 () Bool)

(assert (=> d!708071 (= (nullable!2218 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (nullableFct!541 (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(declare-fun bs!466138 () Bool)

(assert (= bs!466138 d!708071))

(assert (=> bs!466138 m!2826981))

(declare-fun m!2828721 () Bool)

(assert (=> bs!466138 m!2828721))

(assert (=> b!2456120 d!708071))

(assert (=> d!707417 d!707433))

(declare-fun bm!151173 () Bool)

(declare-fun call!151178 () Bool)

(declare-fun c!392427 () Bool)

(assert (=> bm!151173 (= call!151178 (validRegex!2917 (ite c!392427 (regTwo!14963 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (regOne!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))))

(declare-fun b!2458301 () Bool)

(declare-fun res!1042023 () Bool)

(declare-fun e!1559438 () Bool)

(assert (=> b!2458301 (=> (not res!1042023) (not e!1559438))))

(declare-fun call!151179 () Bool)

(assert (=> b!2458301 (= res!1042023 call!151179)))

(declare-fun e!1559432 () Bool)

(assert (=> b!2458301 (= e!1559432 e!1559438)))

(declare-fun b!2458302 () Bool)

(declare-fun e!1559435 () Bool)

(declare-fun call!151180 () Bool)

(assert (=> b!2458302 (= e!1559435 call!151180)))

(declare-fun bm!151174 () Bool)

(assert (=> bm!151174 (= call!151179 call!151180)))

(declare-fun b!2458303 () Bool)

(declare-fun e!1559434 () Bool)

(assert (=> b!2458303 (= e!1559434 e!1559435)))

(declare-fun res!1042019 () Bool)

(assert (=> b!2458303 (= res!1042019 (not (nullable!2218 (reg!7554 (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))))

(assert (=> b!2458303 (=> (not res!1042019) (not e!1559435))))

(declare-fun b!2458304 () Bool)

(declare-fun res!1042021 () Bool)

(declare-fun e!1559437 () Bool)

(assert (=> b!2458304 (=> res!1042021 e!1559437)))

(assert (=> b!2458304 (= res!1042021 (not ((_ is Concat!11861) (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))))

(assert (=> b!2458304 (= e!1559432 e!1559437)))

(declare-fun b!2458305 () Bool)

(declare-fun e!1559436 () Bool)

(assert (=> b!2458305 (= e!1559437 e!1559436)))

(declare-fun res!1042020 () Bool)

(assert (=> b!2458305 (=> (not res!1042020) (not e!1559436))))

(assert (=> b!2458305 (= res!1042020 call!151178)))

(declare-fun bm!151175 () Bool)

(declare-fun c!392426 () Bool)

(assert (=> bm!151175 (= call!151180 (validRegex!2917 (ite c!392426 (reg!7554 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (ite c!392427 (regOne!14963 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (regTwo!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))))))

(declare-fun b!2458307 () Bool)

(assert (=> b!2458307 (= e!1559436 call!151179)))

(declare-fun b!2458308 () Bool)

(assert (=> b!2458308 (= e!1559434 e!1559432)))

(assert (=> b!2458308 (= c!392427 ((_ is Union!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(declare-fun b!2458309 () Bool)

(declare-fun e!1559433 () Bool)

(assert (=> b!2458309 (= e!1559433 e!1559434)))

(assert (=> b!2458309 (= c!392426 ((_ is Star!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(declare-fun b!2458306 () Bool)

(assert (=> b!2458306 (= e!1559438 call!151178)))

(declare-fun d!708073 () Bool)

(declare-fun res!1042022 () Bool)

(assert (=> d!708073 (=> res!1042022 e!1559433)))

(assert (=> d!708073 (= res!1042022 ((_ is ElementMatch!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(assert (=> d!708073 (= (validRegex!2917 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) e!1559433)))

(assert (= (and d!708073 (not res!1042022)) b!2458309))

(assert (= (and b!2458309 c!392426) b!2458303))

(assert (= (and b!2458309 (not c!392426)) b!2458308))

(assert (= (and b!2458303 res!1042019) b!2458302))

(assert (= (and b!2458308 c!392427) b!2458301))

(assert (= (and b!2458308 (not c!392427)) b!2458304))

(assert (= (and b!2458301 res!1042023) b!2458306))

(assert (= (and b!2458304 (not res!1042021)) b!2458305))

(assert (= (and b!2458305 res!1042020) b!2458307))

(assert (= (or b!2458301 b!2458307) bm!151174))

(assert (= (or b!2458306 b!2458305) bm!151173))

(assert (= (or b!2458302 bm!151174) bm!151175))

(declare-fun m!2828723 () Bool)

(assert (=> bm!151173 m!2828723))

(declare-fun m!2828725 () Bool)

(assert (=> b!2458303 m!2828725))

(declare-fun m!2828727 () Bool)

(assert (=> bm!151175 m!2828727))

(assert (=> d!707417 d!708073))

(declare-fun bm!151176 () Bool)

(declare-fun call!151181 () Bool)

(declare-fun c!392429 () Bool)

(assert (=> bm!151176 (= call!151181 (validRegex!2917 (ite c!392429 (regTwo!14963 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))) (regOne!14962 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))))))))

(declare-fun b!2458310 () Bool)

(declare-fun res!1042028 () Bool)

(declare-fun e!1559445 () Bool)

(assert (=> b!2458310 (=> (not res!1042028) (not e!1559445))))

(declare-fun call!151182 () Bool)

(assert (=> b!2458310 (= res!1042028 call!151182)))

(declare-fun e!1559439 () Bool)

(assert (=> b!2458310 (= e!1559439 e!1559445)))

(declare-fun b!2458311 () Bool)

(declare-fun e!1559442 () Bool)

(declare-fun call!151183 () Bool)

(assert (=> b!2458311 (= e!1559442 call!151183)))

(declare-fun bm!151177 () Bool)

(assert (=> bm!151177 (= call!151182 call!151183)))

(declare-fun b!2458312 () Bool)

(declare-fun e!1559441 () Bool)

(assert (=> b!2458312 (= e!1559441 e!1559442)))

(declare-fun res!1042024 () Bool)

(assert (=> b!2458312 (= res!1042024 (not (nullable!2218 (reg!7554 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))))))))

(assert (=> b!2458312 (=> (not res!1042024) (not e!1559442))))

(declare-fun b!2458313 () Bool)

(declare-fun res!1042026 () Bool)

(declare-fun e!1559444 () Bool)

(assert (=> b!2458313 (=> res!1042026 e!1559444)))

(assert (=> b!2458313 (= res!1042026 (not ((_ is Concat!11861) (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248))))))))

(assert (=> b!2458313 (= e!1559439 e!1559444)))

(declare-fun b!2458314 () Bool)

(declare-fun e!1559443 () Bool)

(assert (=> b!2458314 (= e!1559444 e!1559443)))

(declare-fun res!1042025 () Bool)

(assert (=> b!2458314 (=> (not res!1042025) (not e!1559443))))

(assert (=> b!2458314 (= res!1042025 call!151181)))

(declare-fun bm!151178 () Bool)

(declare-fun c!392428 () Bool)

(assert (=> bm!151178 (= call!151183 (validRegex!2917 (ite c!392428 (reg!7554 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))) (ite c!392429 (regOne!14963 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))) (regTwo!14962 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248))))))))))

(declare-fun b!2458316 () Bool)

(assert (=> b!2458316 (= e!1559443 call!151182)))

(declare-fun b!2458317 () Bool)

(assert (=> b!2458317 (= e!1559441 e!1559439)))

(assert (=> b!2458317 (= c!392429 ((_ is Union!7225) (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))))))

(declare-fun b!2458318 () Bool)

(declare-fun e!1559440 () Bool)

(assert (=> b!2458318 (= e!1559440 e!1559441)))

(assert (=> b!2458318 (= c!392428 ((_ is Star!7225) (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))))))

(declare-fun b!2458315 () Bool)

(assert (=> b!2458315 (= e!1559445 call!151181)))

(declare-fun d!708075 () Bool)

(declare-fun res!1042027 () Bool)

(assert (=> d!708075 (=> res!1042027 e!1559440)))

(assert (=> d!708075 (= res!1042027 ((_ is ElementMatch!7225) (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))))))

(assert (=> d!708075 (= (validRegex!2917 (ite c!392039 (reg!7554 lt!880248) (ite c!392040 (regOne!14963 lt!880248) (regTwo!14962 lt!880248)))) e!1559440)))

(assert (= (and d!708075 (not res!1042027)) b!2458318))

(assert (= (and b!2458318 c!392428) b!2458312))

(assert (= (and b!2458318 (not c!392428)) b!2458317))

(assert (= (and b!2458312 res!1042024) b!2458311))

(assert (= (and b!2458317 c!392429) b!2458310))

(assert (= (and b!2458317 (not c!392429)) b!2458313))

(assert (= (and b!2458310 res!1042028) b!2458315))

(assert (= (and b!2458313 (not res!1042026)) b!2458314))

(assert (= (and b!2458314 res!1042025) b!2458316))

(assert (= (or b!2458310 b!2458316) bm!151177))

(assert (= (or b!2458315 b!2458314) bm!151176))

(assert (= (or b!2458311 bm!151177) bm!151178))

(declare-fun m!2828729 () Bool)

(assert (=> bm!151176 m!2828729))

(declare-fun m!2828731 () Bool)

(assert (=> b!2458312 m!2828731))

(declare-fun m!2828733 () Bool)

(assert (=> bm!151178 m!2828733))

(assert (=> bm!150907 d!708075))

(declare-fun d!708077 () Bool)

(declare-fun lt!880441 () Int)

(assert (=> d!708077 (>= lt!880441 0)))

(declare-fun e!1559446 () Int)

(assert (=> d!708077 (= lt!880441 e!1559446)))

(declare-fun c!392430 () Bool)

(assert (=> d!708077 (= c!392430 ((_ is Nil!28589) lt!880337))))

(assert (=> d!708077 (= (size!22276 lt!880337) lt!880441)))

(declare-fun b!2458319 () Bool)

(assert (=> b!2458319 (= e!1559446 0)))

(declare-fun b!2458320 () Bool)

(assert (=> b!2458320 (= e!1559446 (+ 1 (size!22276 (t!208664 lt!880337))))))

(assert (= (and d!708077 c!392430) b!2458319))

(assert (= (and d!708077 (not c!392430)) b!2458320))

(declare-fun m!2828735 () Bool)

(assert (=> b!2458320 m!2828735))

(assert (=> b!2456180 d!708077))

(declare-fun d!708079 () Bool)

(declare-fun lt!880442 () Int)

(assert (=> d!708079 (>= lt!880442 0)))

(declare-fun e!1559447 () Int)

(assert (=> d!708079 (= lt!880442 e!1559447)))

(declare-fun c!392431 () Bool)

(assert (=> d!708079 (= c!392431 ((_ is Nil!28589) Nil!28589))))

(assert (=> d!708079 (= (size!22276 Nil!28589) lt!880442)))

(declare-fun b!2458321 () Bool)

(assert (=> b!2458321 (= e!1559447 0)))

(declare-fun b!2458322 () Bool)

(assert (=> b!2458322 (= e!1559447 (+ 1 (size!22276 (t!208664 Nil!28589))))))

(assert (= (and d!708079 c!392431) b!2458321))

(assert (= (and d!708079 (not c!392431)) b!2458322))

(declare-fun m!2828737 () Bool)

(assert (=> b!2458322 m!2828737))

(assert (=> b!2456180 d!708079))

(declare-fun d!708081 () Bool)

(declare-fun lt!880443 () Int)

(assert (=> d!708081 (>= lt!880443 0)))

(declare-fun e!1559448 () Int)

(assert (=> d!708081 (= lt!880443 e!1559448)))

(declare-fun c!392432 () Bool)

(assert (=> d!708081 (= c!392432 ((_ is Nil!28589) (Cons!28589 (h!33990 s!9460) Nil!28589)))))

(assert (=> d!708081 (= (size!22276 (Cons!28589 (h!33990 s!9460) Nil!28589)) lt!880443)))

(declare-fun b!2458323 () Bool)

(assert (=> b!2458323 (= e!1559448 0)))

(declare-fun b!2458324 () Bool)

(assert (=> b!2458324 (= e!1559448 (+ 1 (size!22276 (t!208664 (Cons!28589 (h!33990 s!9460) Nil!28589)))))))

(assert (= (and d!708081 c!392432) b!2458323))

(assert (= (and d!708081 (not c!392432)) b!2458324))

(declare-fun m!2828739 () Bool)

(assert (=> b!2458324 m!2828739))

(assert (=> b!2456180 d!708081))

(declare-fun d!708083 () Bool)

(declare-fun lt!880444 () Int)

(assert (=> d!708083 (>= lt!880444 0)))

(declare-fun e!1559449 () Int)

(assert (=> d!708083 (= lt!880444 e!1559449)))

(declare-fun c!392433 () Bool)

(assert (=> d!708083 (= c!392433 ((_ is Nil!28589) (t!208664 (_2!16630 lt!880243))))))

(assert (=> d!708083 (= (size!22276 (t!208664 (_2!16630 lt!880243))) lt!880444)))

(declare-fun b!2458325 () Bool)

(assert (=> b!2458325 (= e!1559449 0)))

(declare-fun b!2458326 () Bool)

(assert (=> b!2458326 (= e!1559449 (+ 1 (size!22276 (t!208664 (t!208664 (_2!16630 lt!880243))))))))

(assert (= (and d!708083 c!392433) b!2458325))

(assert (= (and d!708083 (not c!392433)) b!2458326))

(declare-fun m!2828741 () Bool)

(assert (=> b!2458326 m!2828741))

(assert (=> b!2456423 d!708083))

(assert (=> b!2456351 d!707433))

(assert (=> b!2456351 d!707423))

(assert (=> d!707441 d!707437))

(assert (=> d!707441 d!707439))

(declare-fun d!708085 () Bool)

(assert (=> d!708085 (= (++!7113 (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) Nil!28589)) (t!208664 s!9460)) s!9460)))

(assert (=> d!708085 true))

(declare-fun _$68!628 () Unit!41905)

(assert (=> d!708085 (= (choose!14549 Nil!28589 (h!33990 s!9460) (t!208664 s!9460) s!9460) _$68!628)))

(declare-fun bs!466139 () Bool)

(assert (= bs!466139 d!708085))

(assert (=> bs!466139 m!2826947))

(assert (=> bs!466139 m!2826947))

(assert (=> bs!466139 m!2826949))

(assert (=> d!707441 d!708085))

(declare-fun b!2458330 () Bool)

(declare-fun e!1559451 () Bool)

(declare-fun lt!880445 () List!28687)

(assert (=> b!2458330 (= e!1559451 (or (not (= (Cons!28589 (h!33990 s!9460) (t!208664 s!9460)) Nil!28589)) (= lt!880445 Nil!28589)))))

(declare-fun b!2458327 () Bool)

(declare-fun e!1559450 () List!28687)

(assert (=> b!2458327 (= e!1559450 (Cons!28589 (h!33990 s!9460) (t!208664 s!9460)))))

(declare-fun b!2458329 () Bool)

(declare-fun res!1042029 () Bool)

(assert (=> b!2458329 (=> (not res!1042029) (not e!1559451))))

(assert (=> b!2458329 (= res!1042029 (= (size!22276 lt!880445) (+ (size!22276 Nil!28589) (size!22276 (Cons!28589 (h!33990 s!9460) (t!208664 s!9460))))))))

(declare-fun b!2458328 () Bool)

(assert (=> b!2458328 (= e!1559450 (Cons!28589 (h!33990 Nil!28589) (++!7113 (t!208664 Nil!28589) (Cons!28589 (h!33990 s!9460) (t!208664 s!9460)))))))

(declare-fun d!708087 () Bool)

(assert (=> d!708087 e!1559451))

(declare-fun res!1042030 () Bool)

(assert (=> d!708087 (=> (not res!1042030) (not e!1559451))))

(assert (=> d!708087 (= res!1042030 (= (content!3938 lt!880445) ((_ map or) (content!3938 Nil!28589) (content!3938 (Cons!28589 (h!33990 s!9460) (t!208664 s!9460))))))))

(assert (=> d!708087 (= lt!880445 e!1559450)))

(declare-fun c!392434 () Bool)

(assert (=> d!708087 (= c!392434 ((_ is Nil!28589) Nil!28589))))

(assert (=> d!708087 (= (++!7113 Nil!28589 (Cons!28589 (h!33990 s!9460) (t!208664 s!9460))) lt!880445)))

(assert (= (and d!708087 c!392434) b!2458327))

(assert (= (and d!708087 (not c!392434)) b!2458328))

(assert (= (and d!708087 res!1042030) b!2458329))

(assert (= (and b!2458329 res!1042029) b!2458330))

(declare-fun m!2828743 () Bool)

(assert (=> b!2458329 m!2828743))

(assert (=> b!2458329 m!2827369))

(declare-fun m!2828745 () Bool)

(assert (=> b!2458329 m!2828745))

(declare-fun m!2828747 () Bool)

(assert (=> b!2458328 m!2828747))

(declare-fun m!2828749 () Bool)

(assert (=> d!708087 m!2828749))

(assert (=> d!708087 m!2827377))

(declare-fun m!2828751 () Bool)

(assert (=> d!708087 m!2828751))

(assert (=> d!707441 d!708087))

(assert (=> b!2456235 d!707939))

(assert (=> b!2456308 d!707975))

(declare-fun d!708089 () Bool)

(assert (=> d!708089 (= (isEmptyExpr!237 lt!880344) ((_ is EmptyExpr!7225) lt!880344))))

(assert (=> b!2456200 d!708089))

(assert (=> b!2456241 d!707945))

(assert (=> b!2456241 d!707941))

(declare-fun bs!466140 () Bool)

(declare-fun d!708091 () Bool)

(assert (= bs!466140 (and d!708091 d!707281)))

(declare-fun lambda!93067 () Int)

(assert (=> bs!466140 (= lambda!93067 lambda!93035)))

(declare-fun bs!466141 () Bool)

(assert (= bs!466141 (and d!708091 d!707515)))

(assert (=> bs!466141 (= lambda!93067 lambda!93047)))

(declare-fun bs!466142 () Bool)

(assert (= bs!466142 (and d!708091 d!708027)))

(assert (=> bs!466142 (= lambda!93067 lambda!93064)))

(declare-fun bs!466143 () Bool)

(assert (= bs!466143 (and d!708091 d!707253)))

(assert (=> bs!466143 (= lambda!93067 lambda!93028)))

(declare-fun bs!466144 () Bool)

(assert (= bs!466144 (and d!708091 d!707449)))

(assert (=> bs!466144 (= lambda!93067 lambda!93042)))

(declare-fun bs!466145 () Bool)

(assert (= bs!466145 (and d!708091 start!239606)))

(assert (=> bs!466145 (= lambda!93067 lambda!93015)))

(declare-fun b!2458331 () Bool)

(declare-fun e!1559453 () Regex!7225)

(assert (=> b!2458331 (= e!1559453 EmptyExpr!7225)))

(declare-fun b!2458332 () Bool)

(declare-fun e!1559457 () Bool)

(declare-fun e!1559454 () Bool)

(assert (=> b!2458332 (= e!1559457 e!1559454)))

(declare-fun c!392435 () Bool)

(assert (=> b!2458332 (= c!392435 (isEmpty!16615 (t!208663 (t!208663 lt!880247))))))

(declare-fun b!2458333 () Bool)

(declare-fun e!1559455 () Bool)

(declare-fun lt!880446 () Regex!7225)

(assert (=> b!2458333 (= e!1559455 (= lt!880446 (head!5605 (t!208663 (t!208663 lt!880247)))))))

(declare-fun b!2458334 () Bool)

(assert (=> b!2458334 (= e!1559455 (isConcat!237 lt!880446))))

(assert (=> d!708091 e!1559457))

(declare-fun res!1042032 () Bool)

(assert (=> d!708091 (=> (not res!1042032) (not e!1559457))))

(assert (=> d!708091 (= res!1042032 (validRegex!2917 lt!880446))))

(declare-fun e!1559456 () Regex!7225)

(assert (=> d!708091 (= lt!880446 e!1559456)))

(declare-fun c!392438 () Bool)

(declare-fun e!1559452 () Bool)

(assert (=> d!708091 (= c!392438 e!1559452)))

(declare-fun res!1042031 () Bool)

(assert (=> d!708091 (=> (not res!1042031) (not e!1559452))))

(assert (=> d!708091 (= res!1042031 ((_ is Cons!28588) (t!208663 (t!208663 lt!880247))))))

(assert (=> d!708091 (forall!5859 (t!208663 (t!208663 lt!880247)) lambda!93067)))

(assert (=> d!708091 (= (generalisedConcat!326 (t!208663 (t!208663 lt!880247))) lt!880446)))

(declare-fun b!2458335 () Bool)

(assert (=> b!2458335 (= e!1559456 e!1559453)))

(declare-fun c!392436 () Bool)

(assert (=> b!2458335 (= c!392436 ((_ is Cons!28588) (t!208663 (t!208663 lt!880247))))))

(declare-fun b!2458336 () Bool)

(assert (=> b!2458336 (= e!1559452 (isEmpty!16615 (t!208663 (t!208663 (t!208663 lt!880247)))))))

(declare-fun b!2458337 () Bool)

(assert (=> b!2458337 (= e!1559456 (h!33989 (t!208663 (t!208663 lt!880247))))))

(declare-fun b!2458338 () Bool)

(assert (=> b!2458338 (= e!1559454 e!1559455)))

(declare-fun c!392437 () Bool)

(assert (=> b!2458338 (= c!392437 (isEmpty!16615 (tail!3878 (t!208663 (t!208663 lt!880247)))))))

(declare-fun b!2458339 () Bool)

(assert (=> b!2458339 (= e!1559453 (Concat!11861 (h!33989 (t!208663 (t!208663 lt!880247))) (generalisedConcat!326 (t!208663 (t!208663 (t!208663 lt!880247))))))))

(declare-fun b!2458340 () Bool)

(assert (=> b!2458340 (= e!1559454 (isEmptyExpr!237 lt!880446))))

(assert (= (and d!708091 res!1042031) b!2458336))

(assert (= (and d!708091 c!392438) b!2458337))

(assert (= (and d!708091 (not c!392438)) b!2458335))

(assert (= (and b!2458335 c!392436) b!2458339))

(assert (= (and b!2458335 (not c!392436)) b!2458331))

(assert (= (and d!708091 res!1042032) b!2458332))

(assert (= (and b!2458332 c!392435) b!2458340))

(assert (= (and b!2458332 (not c!392435)) b!2458338))

(assert (= (and b!2458338 c!392437) b!2458333))

(assert (= (and b!2458338 (not c!392437)) b!2458334))

(assert (=> b!2458332 m!2827553))

(declare-fun m!2828753 () Bool)

(assert (=> b!2458333 m!2828753))

(declare-fun m!2828755 () Bool)

(assert (=> b!2458339 m!2828755))

(declare-fun m!2828757 () Bool)

(assert (=> b!2458334 m!2828757))

(declare-fun m!2828759 () Bool)

(assert (=> b!2458336 m!2828759))

(declare-fun m!2828761 () Bool)

(assert (=> b!2458340 m!2828761))

(declare-fun m!2828763 () Bool)

(assert (=> b!2458338 m!2828763))

(assert (=> b!2458338 m!2828763))

(declare-fun m!2828765 () Bool)

(assert (=> b!2458338 m!2828765))

(declare-fun m!2828767 () Bool)

(assert (=> d!708091 m!2828767))

(declare-fun m!2828769 () Bool)

(assert (=> d!708091 m!2828769))

(assert (=> b!2456373 d!708091))

(declare-fun d!708093 () Bool)

(assert (=> d!708093 (= (isEmpty!16615 (t!208663 (t!208663 l!9164))) ((_ is Nil!28588) (t!208663 (t!208663 l!9164))))))

(assert (=> b!2456196 d!708093))

(assert (=> b!2456258 d!707981))

(declare-fun b!2458341 () Bool)

(declare-fun e!1559459 () Regex!7225)

(declare-fun e!1559458 () Regex!7225)

(assert (=> b!2458341 (= e!1559459 e!1559458)))

(declare-fun c!392439 () Bool)

(assert (=> b!2458341 (= c!392439 ((_ is ElementMatch!7225) (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))))))

(declare-fun c!392441 () Bool)

(declare-fun call!151187 () Regex!7225)

(declare-fun c!392442 () Bool)

(declare-fun bm!151179 () Bool)

(declare-fun c!392443 () Bool)

(assert (=> bm!151179 (= call!151187 (derivativeStep!1872 (ite c!392443 (regTwo!14963 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))) (ite c!392442 (reg!7554 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))) (ite c!392441 (regTwo!14962 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))) (regOne!14962 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))))) (head!5607 s!9460)))))

(declare-fun b!2458342 () Bool)

(assert (=> b!2458342 (= e!1559458 (ite (= (head!5607 s!9460) (c!391797 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151180 () Bool)

(declare-fun call!151185 () Regex!7225)

(assert (=> bm!151180 (= call!151185 call!151187)))

(declare-fun b!2458343 () Bool)

(declare-fun e!1559462 () Regex!7225)

(assert (=> b!2458343 (= e!1559462 (Concat!11861 call!151185 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))))))

(declare-fun b!2458344 () Bool)

(declare-fun call!151186 () Regex!7225)

(declare-fun call!151184 () Regex!7225)

(declare-fun e!1559460 () Regex!7225)

(assert (=> b!2458344 (= e!1559460 (Union!7225 (Concat!11861 call!151186 (regTwo!14962 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))) call!151184))))

(declare-fun d!708095 () Bool)

(declare-fun lt!880447 () Regex!7225)

(assert (=> d!708095 (validRegex!2917 lt!880447)))

(assert (=> d!708095 (= lt!880447 e!1559459)))

(declare-fun c!392440 () Bool)

(assert (=> d!708095 (= c!392440 (or ((_ is EmptyExpr!7225) (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))) ((_ is EmptyLang!7225) (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))))))

(assert (=> d!708095 (validRegex!2917 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))))

(assert (=> d!708095 (= (derivativeStep!1872 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))) (head!5607 s!9460)) lt!880447)))

(declare-fun bm!151181 () Bool)

(assert (=> bm!151181 (= call!151186 (derivativeStep!1872 (ite c!392443 (regOne!14963 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))) (regOne!14962 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))) (head!5607 s!9460)))))

(declare-fun b!2458345 () Bool)

(assert (=> b!2458345 (= e!1559460 (Union!7225 (Concat!11861 call!151184 (regTwo!14962 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))) EmptyLang!7225))))

(declare-fun b!2458346 () Bool)

(assert (=> b!2458346 (= e!1559459 EmptyLang!7225)))

(declare-fun b!2458347 () Bool)

(assert (=> b!2458347 (= c!392441 (nullable!2218 (regOne!14962 (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927)))))))))

(assert (=> b!2458347 (= e!1559462 e!1559460)))

(declare-fun bm!151182 () Bool)

(assert (=> bm!151182 (= call!151184 call!151185)))

(declare-fun b!2458348 () Bool)

(declare-fun e!1559461 () Regex!7225)

(assert (=> b!2458348 (= e!1559461 (Union!7225 call!151186 call!151187))))

(declare-fun b!2458349 () Bool)

(assert (=> b!2458349 (= c!392443 ((_ is Union!7225) (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))))))

(assert (=> b!2458349 (= e!1559458 e!1559461)))

(declare-fun b!2458350 () Bool)

(assert (=> b!2458350 (= e!1559461 e!1559462)))

(assert (=> b!2458350 (= c!392442 ((_ is Star!7225) (ite c!392082 (regTwo!14963 r!13927) (ite c!392081 (reg!7554 r!13927) (ite c!392080 (regTwo!14962 r!13927) (regOne!14962 r!13927))))))))

(assert (= (and d!708095 c!392440) b!2458346))

(assert (= (and d!708095 (not c!392440)) b!2458341))

(assert (= (and b!2458341 c!392439) b!2458342))

(assert (= (and b!2458341 (not c!392439)) b!2458349))

(assert (= (and b!2458349 c!392443) b!2458348))

(assert (= (and b!2458349 (not c!392443)) b!2458350))

(assert (= (and b!2458350 c!392442) b!2458343))

(assert (= (and b!2458350 (not c!392442)) b!2458347))

(assert (= (and b!2458347 c!392441) b!2458344))

(assert (= (and b!2458347 (not c!392441)) b!2458345))

(assert (= (or b!2458344 b!2458345) bm!151182))

(assert (= (or b!2458343 bm!151182) bm!151180))

(assert (= (or b!2458348 b!2458344) bm!151181))

(assert (= (or b!2458348 bm!151180) bm!151179))

(assert (=> bm!151179 m!2826965))

(declare-fun m!2828771 () Bool)

(assert (=> bm!151179 m!2828771))

(declare-fun m!2828773 () Bool)

(assert (=> d!708095 m!2828773))

(declare-fun m!2828775 () Bool)

(assert (=> d!708095 m!2828775))

(assert (=> bm!151181 m!2826965))

(declare-fun m!2828777 () Bool)

(assert (=> bm!151181 m!2828777))

(declare-fun m!2828779 () Bool)

(assert (=> b!2458347 m!2828779))

(assert (=> bm!150929 d!708095))

(assert (=> b!2456129 d!707907))

(assert (=> b!2456129 d!707909))

(assert (=> b!2456185 d!707989))

(declare-fun b!2458351 () Bool)

(declare-fun e!1559468 () Bool)

(assert (=> b!2458351 (= e!1559468 (nullable!2218 (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(declare-fun bm!151183 () Bool)

(declare-fun call!151188 () Bool)

(assert (=> bm!151183 (= call!151188 (isEmpty!16618 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2458352 () Bool)

(declare-fun e!1559466 () Bool)

(declare-fun lt!880448 () Bool)

(assert (=> b!2458352 (= e!1559466 (= lt!880448 call!151188))))

(declare-fun b!2458353 () Bool)

(declare-fun e!1559463 () Bool)

(assert (=> b!2458353 (= e!1559463 (not lt!880448))))

(declare-fun b!2458354 () Bool)

(declare-fun e!1559464 () Bool)

(assert (=> b!2458354 (= e!1559464 (= (head!5607 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (c!391797 (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))))

(declare-fun b!2458355 () Bool)

(declare-fun e!1559467 () Bool)

(declare-fun e!1559469 () Bool)

(assert (=> b!2458355 (= e!1559467 e!1559469)))

(declare-fun res!1042039 () Bool)

(assert (=> b!2458355 (=> (not res!1042039) (not e!1559469))))

(assert (=> b!2458355 (= res!1042039 (not lt!880448))))

(declare-fun b!2458356 () Bool)

(assert (=> b!2458356 (= e!1559468 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (head!5607 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))) (tail!3880 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(declare-fun b!2458357 () Bool)

(declare-fun res!1042033 () Bool)

(assert (=> b!2458357 (=> (not res!1042033) (not e!1559464))))

(assert (=> b!2458357 (= res!1042033 (not call!151188))))

(declare-fun b!2458358 () Bool)

(assert (=> b!2458358 (= e!1559466 e!1559463)))

(declare-fun c!392445 () Bool)

(assert (=> b!2458358 (= c!392445 ((_ is EmptyLang!7225) (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(declare-fun b!2458359 () Bool)

(declare-fun e!1559465 () Bool)

(assert (=> b!2458359 (= e!1559469 e!1559465)))

(declare-fun res!1042034 () Bool)

(assert (=> b!2458359 (=> res!1042034 e!1559465)))

(assert (=> b!2458359 (= res!1042034 call!151188)))

(declare-fun b!2458360 () Bool)

(declare-fun res!1042040 () Bool)

(assert (=> b!2458360 (=> (not res!1042040) (not e!1559464))))

(assert (=> b!2458360 (= res!1042040 (isEmpty!16618 (tail!3880 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(declare-fun b!2458361 () Bool)

(declare-fun res!1042035 () Bool)

(assert (=> b!2458361 (=> res!1042035 e!1559467)))

(assert (=> b!2458361 (= res!1042035 (not ((_ is ElementMatch!7225) (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))))

(assert (=> b!2458361 (= e!1559463 e!1559467)))

(declare-fun d!708097 () Bool)

(assert (=> d!708097 e!1559466))

(declare-fun c!392446 () Bool)

(assert (=> d!708097 (= c!392446 ((_ is EmptyExpr!7225) (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(assert (=> d!708097 (= lt!880448 e!1559468)))

(declare-fun c!392444 () Bool)

(assert (=> d!708097 (= c!392444 (isEmpty!16618 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(assert (=> d!708097 (validRegex!2917 (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(assert (=> d!708097 (= (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) lt!880448)))

(declare-fun b!2458362 () Bool)

(declare-fun res!1042037 () Bool)

(assert (=> b!2458362 (=> res!1042037 e!1559465)))

(assert (=> b!2458362 (= res!1042037 (not (isEmpty!16618 (tail!3880 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))))

(declare-fun b!2458363 () Bool)

(assert (=> b!2458363 (= e!1559465 (not (= (head!5607 (tail!3880 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (c!391797 (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))))

(declare-fun b!2458364 () Bool)

(declare-fun res!1042038 () Bool)

(assert (=> b!2458364 (=> res!1042038 e!1559467)))

(assert (=> b!2458364 (= res!1042038 e!1559464)))

(declare-fun res!1042036 () Bool)

(assert (=> b!2458364 (=> (not res!1042036) (not e!1559464))))

(assert (=> b!2458364 (= res!1042036 lt!880448)))

(assert (= (and d!708097 c!392444) b!2458351))

(assert (= (and d!708097 (not c!392444)) b!2458356))

(assert (= (and d!708097 c!392446) b!2458352))

(assert (= (and d!708097 (not c!392446)) b!2458358))

(assert (= (and b!2458358 c!392445) b!2458353))

(assert (= (and b!2458358 (not c!392445)) b!2458361))

(assert (= (and b!2458361 (not res!1042035)) b!2458364))

(assert (= (and b!2458364 res!1042036) b!2458357))

(assert (= (and b!2458357 res!1042033) b!2458360))

(assert (= (and b!2458360 res!1042040) b!2458354))

(assert (= (and b!2458364 (not res!1042038)) b!2458355))

(assert (= (and b!2458355 res!1042039) b!2458359))

(assert (= (and b!2458359 (not res!1042034)) b!2458362))

(assert (= (and b!2458362 (not res!1042037)) b!2458363))

(assert (= (or b!2458352 b!2458357 b!2458359) bm!151183))

(assert (=> b!2458362 m!2827501))

(declare-fun m!2828781 () Bool)

(assert (=> b!2458362 m!2828781))

(assert (=> b!2458362 m!2828781))

(declare-fun m!2828783 () Bool)

(assert (=> b!2458362 m!2828783))

(assert (=> d!708097 m!2827501))

(assert (=> d!708097 m!2827503))

(assert (=> d!708097 m!2827509))

(declare-fun m!2828785 () Bool)

(assert (=> d!708097 m!2828785))

(assert (=> b!2458360 m!2827501))

(assert (=> b!2458360 m!2828781))

(assert (=> b!2458360 m!2828781))

(assert (=> b!2458360 m!2828783))

(assert (=> b!2458356 m!2827501))

(declare-fun m!2828787 () Bool)

(assert (=> b!2458356 m!2828787))

(assert (=> b!2458356 m!2827509))

(assert (=> b!2458356 m!2828787))

(declare-fun m!2828789 () Bool)

(assert (=> b!2458356 m!2828789))

(assert (=> b!2458356 m!2827501))

(assert (=> b!2458356 m!2828781))

(assert (=> b!2458356 m!2828789))

(assert (=> b!2458356 m!2828781))

(declare-fun m!2828791 () Bool)

(assert (=> b!2458356 m!2828791))

(assert (=> b!2458354 m!2827501))

(assert (=> b!2458354 m!2828787))

(assert (=> b!2458351 m!2827509))

(declare-fun m!2828793 () Bool)

(assert (=> b!2458351 m!2828793))

(assert (=> b!2458363 m!2827501))

(assert (=> b!2458363 m!2828787))

(assert (=> bm!151183 m!2827501))

(assert (=> bm!151183 m!2827503))

(assert (=> b!2456301 d!708097))

(declare-fun b!2458365 () Bool)

(declare-fun e!1559471 () Regex!7225)

(declare-fun e!1559470 () Regex!7225)

(assert (=> b!2458365 (= e!1559471 e!1559470)))

(declare-fun c!392447 () Bool)

(assert (=> b!2458365 (= c!392447 ((_ is ElementMatch!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun bm!151184 () Bool)

(declare-fun call!151192 () Regex!7225)

(declare-fun c!392449 () Bool)

(declare-fun c!392450 () Bool)

(declare-fun c!392451 () Bool)

(assert (=> bm!151184 (= call!151192 (derivativeStep!1872 (ite c!392451 (regTwo!14963 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (ite c!392450 (reg!7554 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (ite c!392449 (regTwo!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (regOne!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2458366 () Bool)

(assert (=> b!2458366 (= e!1559470 (ite (= (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (c!391797 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151185 () Bool)

(declare-fun call!151190 () Regex!7225)

(assert (=> bm!151185 (= call!151190 call!151192)))

(declare-fun e!1559474 () Regex!7225)

(declare-fun b!2458367 () Bool)

(assert (=> b!2458367 (= e!1559474 (Concat!11861 call!151190 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun e!1559472 () Regex!7225)

(declare-fun call!151191 () Regex!7225)

(declare-fun b!2458368 () Bool)

(declare-fun call!151189 () Regex!7225)

(assert (=> b!2458368 (= e!1559472 (Union!7225 (Concat!11861 call!151191 (regTwo!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))) call!151189))))

(declare-fun d!708099 () Bool)

(declare-fun lt!880449 () Regex!7225)

(assert (=> d!708099 (validRegex!2917 lt!880449)))

(assert (=> d!708099 (= lt!880449 e!1559471)))

(declare-fun c!392448 () Bool)

(assert (=> d!708099 (= c!392448 (or ((_ is EmptyExpr!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) ((_ is EmptyLang!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(assert (=> d!708099 (validRegex!2917 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(assert (=> d!708099 (= (derivativeStep!1872 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) lt!880449)))

(declare-fun bm!151186 () Bool)

(assert (=> bm!151186 (= call!151191 (derivativeStep!1872 (ite c!392451 (regOne!14963 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))) (regOne!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))) (head!5607 (tail!3880 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(declare-fun b!2458369 () Bool)

(assert (=> b!2458369 (= e!1559472 (Union!7225 (Concat!11861 call!151189 (regTwo!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))) EmptyLang!7225))))

(declare-fun b!2458370 () Bool)

(assert (=> b!2458370 (= e!1559471 EmptyLang!7225)))

(declare-fun b!2458371 () Bool)

(assert (=> b!2458371 (= c!392449 (nullable!2218 (regOne!14962 (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))))

(assert (=> b!2458371 (= e!1559474 e!1559472)))

(declare-fun bm!151187 () Bool)

(assert (=> bm!151187 (= call!151189 call!151190)))

(declare-fun b!2458372 () Bool)

(declare-fun e!1559473 () Regex!7225)

(assert (=> b!2458372 (= e!1559473 (Union!7225 call!151191 call!151192))))

(declare-fun b!2458373 () Bool)

(assert (=> b!2458373 (= c!392451 ((_ is Union!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(assert (=> b!2458373 (= e!1559470 e!1559473)))

(declare-fun b!2458374 () Bool)

(assert (=> b!2458374 (= e!1559473 e!1559474)))

(assert (=> b!2458374 (= c!392450 ((_ is Star!7225) (derivativeStep!1872 (Concat!11861 lt!880248 EmptyExpr!7225) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))))))))

(assert (= (and d!708099 c!392448) b!2458370))

(assert (= (and d!708099 (not c!392448)) b!2458365))

(assert (= (and b!2458365 c!392447) b!2458366))

(assert (= (and b!2458365 (not c!392447)) b!2458373))

(assert (= (and b!2458373 c!392451) b!2458372))

(assert (= (and b!2458373 (not c!392451)) b!2458374))

(assert (= (and b!2458374 c!392450) b!2458367))

(assert (= (and b!2458374 (not c!392450)) b!2458371))

(assert (= (and b!2458371 c!392449) b!2458368))

(assert (= (and b!2458371 (not c!392449)) b!2458369))

(assert (= (or b!2458368 b!2458369) bm!151187))

(assert (= (or b!2458367 bm!151187) bm!151185))

(assert (= (or b!2458372 b!2458368) bm!151186))

(assert (= (or b!2458372 bm!151185) bm!151184))

(assert (=> bm!151184 m!2827507))

(declare-fun m!2828795 () Bool)

(assert (=> bm!151184 m!2828795))

(declare-fun m!2828797 () Bool)

(assert (=> d!708099 m!2828797))

(assert (=> d!708099 m!2826843))

(assert (=> d!708099 m!2827505))

(assert (=> bm!151186 m!2827507))

(declare-fun m!2828799 () Bool)

(assert (=> bm!151186 m!2828799))

(declare-fun m!2828801 () Bool)

(assert (=> b!2458371 m!2828801))

(assert (=> b!2456301 d!708099))

(assert (=> b!2456301 d!707975))

(assert (=> b!2456301 d!707987))

(assert (=> d!707467 d!707883))

(assert (=> d!707467 d!707469))

(assert (=> b!2456246 d!707531))

(declare-fun d!708101 () Bool)

(assert (=> d!708101 (= (nullable!2218 (regOne!14962 r!13927)) (nullableFct!541 (regOne!14962 r!13927)))))

(declare-fun bs!466146 () Bool)

(assert (= bs!466146 d!708101))

(declare-fun m!2828803 () Bool)

(assert (=> bs!466146 m!2828803))

(assert (=> b!2456410 d!708101))

(declare-fun bm!151188 () Bool)

(declare-fun call!151193 () Bool)

(declare-fun c!392453 () Bool)

(assert (=> bm!151188 (= call!151193 (validRegex!2917 (ite c!392453 (regTwo!14963 lt!880355) (regOne!14962 lt!880355))))))

(declare-fun b!2458375 () Bool)

(declare-fun res!1042045 () Bool)

(declare-fun e!1559481 () Bool)

(assert (=> b!2458375 (=> (not res!1042045) (not e!1559481))))

(declare-fun call!151194 () Bool)

(assert (=> b!2458375 (= res!1042045 call!151194)))

(declare-fun e!1559475 () Bool)

(assert (=> b!2458375 (= e!1559475 e!1559481)))

(declare-fun b!2458376 () Bool)

(declare-fun e!1559478 () Bool)

(declare-fun call!151195 () Bool)

(assert (=> b!2458376 (= e!1559478 call!151195)))

(declare-fun bm!151189 () Bool)

(assert (=> bm!151189 (= call!151194 call!151195)))

(declare-fun b!2458377 () Bool)

(declare-fun e!1559477 () Bool)

(assert (=> b!2458377 (= e!1559477 e!1559478)))

(declare-fun res!1042041 () Bool)

(assert (=> b!2458377 (= res!1042041 (not (nullable!2218 (reg!7554 lt!880355))))))

(assert (=> b!2458377 (=> (not res!1042041) (not e!1559478))))

(declare-fun b!2458378 () Bool)

(declare-fun res!1042043 () Bool)

(declare-fun e!1559480 () Bool)

(assert (=> b!2458378 (=> res!1042043 e!1559480)))

(assert (=> b!2458378 (= res!1042043 (not ((_ is Concat!11861) lt!880355)))))

(assert (=> b!2458378 (= e!1559475 e!1559480)))

(declare-fun b!2458379 () Bool)

(declare-fun e!1559479 () Bool)

(assert (=> b!2458379 (= e!1559480 e!1559479)))

(declare-fun res!1042042 () Bool)

(assert (=> b!2458379 (=> (not res!1042042) (not e!1559479))))

(assert (=> b!2458379 (= res!1042042 call!151193)))

(declare-fun c!392452 () Bool)

(declare-fun bm!151190 () Bool)

(assert (=> bm!151190 (= call!151195 (validRegex!2917 (ite c!392452 (reg!7554 lt!880355) (ite c!392453 (regOne!14963 lt!880355) (regTwo!14962 lt!880355)))))))

(declare-fun b!2458381 () Bool)

(assert (=> b!2458381 (= e!1559479 call!151194)))

(declare-fun b!2458382 () Bool)

(assert (=> b!2458382 (= e!1559477 e!1559475)))

(assert (=> b!2458382 (= c!392453 ((_ is Union!7225) lt!880355))))

(declare-fun b!2458383 () Bool)

(declare-fun e!1559476 () Bool)

(assert (=> b!2458383 (= e!1559476 e!1559477)))

(assert (=> b!2458383 (= c!392452 ((_ is Star!7225) lt!880355))))

(declare-fun b!2458380 () Bool)

(assert (=> b!2458380 (= e!1559481 call!151193)))

(declare-fun d!708103 () Bool)

(declare-fun res!1042044 () Bool)

(assert (=> d!708103 (=> res!1042044 e!1559476)))

(assert (=> d!708103 (= res!1042044 ((_ is ElementMatch!7225) lt!880355))))

(assert (=> d!708103 (= (validRegex!2917 lt!880355) e!1559476)))

(assert (= (and d!708103 (not res!1042044)) b!2458383))

(assert (= (and b!2458383 c!392452) b!2458377))

(assert (= (and b!2458383 (not c!392452)) b!2458382))

(assert (= (and b!2458377 res!1042041) b!2458376))

(assert (= (and b!2458382 c!392453) b!2458375))

(assert (= (and b!2458382 (not c!392453)) b!2458378))

(assert (= (and b!2458375 res!1042045) b!2458380))

(assert (= (and b!2458378 (not res!1042043)) b!2458379))

(assert (= (and b!2458379 res!1042042) b!2458381))

(assert (= (or b!2458375 b!2458381) bm!151189))

(assert (= (or b!2458380 b!2458379) bm!151188))

(assert (= (or b!2458376 bm!151189) bm!151190))

(declare-fun m!2828805 () Bool)

(assert (=> bm!151188 m!2828805))

(declare-fun m!2828807 () Bool)

(assert (=> b!2458377 m!2828807))

(declare-fun m!2828809 () Bool)

(assert (=> bm!151190 m!2828809))

(assert (=> d!707529 d!708103))

(assert (=> d!707529 d!707481))

(declare-fun b!2458384 () Bool)

(declare-fun e!1559483 () Bool)

(declare-fun e!1559482 () Bool)

(assert (=> b!2458384 (= e!1559483 e!1559482)))

(declare-fun c!392454 () Bool)

(assert (=> b!2458384 (= c!392454 ((_ is Union!7225) r!13927))))

(declare-fun bm!151191 () Bool)

(declare-fun call!151197 () Bool)

(assert (=> bm!151191 (= call!151197 (nullable!2218 (ite c!392454 (regOne!14963 r!13927) (regTwo!14962 r!13927))))))

(declare-fun b!2458385 () Bool)

(declare-fun e!1559487 () Bool)

(assert (=> b!2458385 (= e!1559487 e!1559483)))

(declare-fun res!1042048 () Bool)

(assert (=> b!2458385 (=> res!1042048 e!1559483)))

(assert (=> b!2458385 (= res!1042048 ((_ is Star!7225) r!13927))))

(declare-fun b!2458386 () Bool)

(declare-fun e!1559484 () Bool)

(assert (=> b!2458386 (= e!1559482 e!1559484)))

(declare-fun res!1042047 () Bool)

(declare-fun call!151196 () Bool)

(assert (=> b!2458386 (= res!1042047 call!151196)))

(assert (=> b!2458386 (=> (not res!1042047) (not e!1559484))))

(declare-fun b!2458387 () Bool)

(declare-fun e!1559485 () Bool)

(assert (=> b!2458387 (= e!1559485 e!1559487)))

(declare-fun res!1042050 () Bool)

(assert (=> b!2458387 (=> (not res!1042050) (not e!1559487))))

(assert (=> b!2458387 (= res!1042050 (and (not ((_ is EmptyLang!7225) r!13927)) (not ((_ is ElementMatch!7225) r!13927))))))

(declare-fun d!708105 () Bool)

(declare-fun res!1042046 () Bool)

(assert (=> d!708105 (=> res!1042046 e!1559485)))

(assert (=> d!708105 (= res!1042046 ((_ is EmptyExpr!7225) r!13927))))

(assert (=> d!708105 (= (nullableFct!541 r!13927) e!1559485)))

(declare-fun b!2458388 () Bool)

(declare-fun e!1559486 () Bool)

(assert (=> b!2458388 (= e!1559486 call!151196)))

(declare-fun b!2458389 () Bool)

(assert (=> b!2458389 (= e!1559484 call!151197)))

(declare-fun bm!151192 () Bool)

(assert (=> bm!151192 (= call!151196 (nullable!2218 (ite c!392454 (regTwo!14963 r!13927) (regOne!14962 r!13927))))))

(declare-fun b!2458390 () Bool)

(assert (=> b!2458390 (= e!1559482 e!1559486)))

(declare-fun res!1042049 () Bool)

(assert (=> b!2458390 (= res!1042049 call!151197)))

(assert (=> b!2458390 (=> res!1042049 e!1559486)))

(assert (= (and d!708105 (not res!1042046)) b!2458387))

(assert (= (and b!2458387 res!1042050) b!2458385))

(assert (= (and b!2458385 (not res!1042048)) b!2458384))

(assert (= (and b!2458384 c!392454) b!2458390))

(assert (= (and b!2458384 (not c!392454)) b!2458386))

(assert (= (and b!2458390 (not res!1042049)) b!2458388))

(assert (= (and b!2458386 res!1042047) b!2458389))

(assert (= (or b!2458390 b!2458389) bm!151191))

(assert (= (or b!2458388 b!2458386) bm!151192))

(declare-fun m!2828811 () Bool)

(assert (=> bm!151191 m!2828811))

(declare-fun m!2828813 () Bool)

(assert (=> bm!151192 m!2828813))

(assert (=> d!707509 d!708105))

(declare-fun b!2458391 () Bool)

(declare-fun e!1559493 () Bool)

(assert (=> b!2458391 (= e!1559493 (nullable!2218 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))

(declare-fun bm!151193 () Bool)

(declare-fun call!151198 () Bool)

(assert (=> bm!151193 (= call!151198 (isEmpty!16618 (tail!3880 (tail!3880 s!9460))))))

(declare-fun b!2458392 () Bool)

(declare-fun e!1559491 () Bool)

(declare-fun lt!880450 () Bool)

(assert (=> b!2458392 (= e!1559491 (= lt!880450 call!151198))))

(declare-fun b!2458393 () Bool)

(declare-fun e!1559488 () Bool)

(assert (=> b!2458393 (= e!1559488 (not lt!880450))))

(declare-fun b!2458394 () Bool)

(declare-fun e!1559489 () Bool)

(assert (=> b!2458394 (= e!1559489 (= (head!5607 (tail!3880 (tail!3880 s!9460))) (c!391797 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))))))))

(declare-fun b!2458395 () Bool)

(declare-fun e!1559492 () Bool)

(declare-fun e!1559494 () Bool)

(assert (=> b!2458395 (= e!1559492 e!1559494)))

(declare-fun res!1042057 () Bool)

(assert (=> b!2458395 (=> (not res!1042057) (not e!1559494))))

(assert (=> b!2458395 (= res!1042057 (not lt!880450))))

(declare-fun b!2458396 () Bool)

(assert (=> b!2458396 (= e!1559493 (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) (head!5607 (tail!3880 (tail!3880 s!9460)))) (tail!3880 (tail!3880 (tail!3880 s!9460)))))))

(declare-fun b!2458397 () Bool)

(declare-fun res!1042051 () Bool)

(assert (=> b!2458397 (=> (not res!1042051) (not e!1559489))))

(assert (=> b!2458397 (= res!1042051 (not call!151198))))

(declare-fun b!2458398 () Bool)

(assert (=> b!2458398 (= e!1559491 e!1559488)))

(declare-fun c!392456 () Bool)

(assert (=> b!2458398 (= c!392456 ((_ is EmptyLang!7225) (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))

(declare-fun b!2458399 () Bool)

(declare-fun e!1559490 () Bool)

(assert (=> b!2458399 (= e!1559494 e!1559490)))

(declare-fun res!1042052 () Bool)

(assert (=> b!2458399 (=> res!1042052 e!1559490)))

(assert (=> b!2458399 (= res!1042052 call!151198)))

(declare-fun b!2458400 () Bool)

(declare-fun res!1042058 () Bool)

(assert (=> b!2458400 (=> (not res!1042058) (not e!1559489))))

(assert (=> b!2458400 (= res!1042058 (isEmpty!16618 (tail!3880 (tail!3880 (tail!3880 s!9460)))))))

(declare-fun b!2458401 () Bool)

(declare-fun res!1042053 () Bool)

(assert (=> b!2458401 (=> res!1042053 e!1559492)))

(assert (=> b!2458401 (= res!1042053 (not ((_ is ElementMatch!7225) (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))))))))

(assert (=> b!2458401 (= e!1559488 e!1559492)))

(declare-fun d!708107 () Bool)

(assert (=> d!708107 e!1559491))

(declare-fun c!392457 () Bool)

(assert (=> d!708107 (= c!392457 ((_ is EmptyExpr!7225) (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))

(assert (=> d!708107 (= lt!880450 e!1559493)))

(declare-fun c!392455 () Bool)

(assert (=> d!708107 (= c!392455 (isEmpty!16618 (tail!3880 (tail!3880 s!9460))))))

(assert (=> d!708107 (validRegex!2917 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))))))

(assert (=> d!708107 (= (matchR!3340 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) (tail!3880 (tail!3880 s!9460))) lt!880450)))

(declare-fun b!2458402 () Bool)

(declare-fun res!1042055 () Bool)

(assert (=> b!2458402 (=> res!1042055 e!1559490)))

(assert (=> b!2458402 (= res!1042055 (not (isEmpty!16618 (tail!3880 (tail!3880 (tail!3880 s!9460))))))))

(declare-fun b!2458403 () Bool)

(assert (=> b!2458403 (= e!1559490 (not (= (head!5607 (tail!3880 (tail!3880 s!9460))) (c!391797 (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460)))))))))

(declare-fun b!2458404 () Bool)

(declare-fun res!1042056 () Bool)

(assert (=> b!2458404 (=> res!1042056 e!1559492)))

(assert (=> b!2458404 (= res!1042056 e!1559489)))

(declare-fun res!1042054 () Bool)

(assert (=> b!2458404 (=> (not res!1042054) (not e!1559489))))

(assert (=> b!2458404 (= res!1042054 lt!880450)))

(assert (= (and d!708107 c!392455) b!2458391))

(assert (= (and d!708107 (not c!392455)) b!2458396))

(assert (= (and d!708107 c!392457) b!2458392))

(assert (= (and d!708107 (not c!392457)) b!2458398))

(assert (= (and b!2458398 c!392456) b!2458393))

(assert (= (and b!2458398 (not c!392456)) b!2458401))

(assert (= (and b!2458401 (not res!1042053)) b!2458404))

(assert (= (and b!2458404 res!1042054) b!2458397))

(assert (= (and b!2458397 res!1042051) b!2458400))

(assert (= (and b!2458400 res!1042058) b!2458394))

(assert (= (and b!2458404 (not res!1042056)) b!2458395))

(assert (= (and b!2458395 res!1042057) b!2458399))

(assert (= (and b!2458399 (not res!1042052)) b!2458402))

(assert (= (and b!2458402 (not res!1042055)) b!2458403))

(assert (= (or b!2458392 b!2458397 b!2458399) bm!151193))

(assert (=> b!2458402 m!2827317))

(assert (=> b!2458402 m!2828627))

(assert (=> b!2458402 m!2828627))

(assert (=> b!2458402 m!2828629))

(assert (=> d!708107 m!2827317))

(assert (=> d!708107 m!2827319))

(assert (=> d!708107 m!2827325))

(declare-fun m!2828815 () Bool)

(assert (=> d!708107 m!2828815))

(assert (=> b!2458400 m!2827317))

(assert (=> b!2458400 m!2828627))

(assert (=> b!2458400 m!2828627))

(assert (=> b!2458400 m!2828629))

(assert (=> b!2458396 m!2827317))

(assert (=> b!2458396 m!2828633))

(assert (=> b!2458396 m!2827325))

(assert (=> b!2458396 m!2828633))

(declare-fun m!2828817 () Bool)

(assert (=> b!2458396 m!2828817))

(assert (=> b!2458396 m!2827317))

(assert (=> b!2458396 m!2828627))

(assert (=> b!2458396 m!2828817))

(assert (=> b!2458396 m!2828627))

(declare-fun m!2828819 () Bool)

(assert (=> b!2458396 m!2828819))

(assert (=> b!2458394 m!2827317))

(assert (=> b!2458394 m!2828633))

(assert (=> b!2458391 m!2827325))

(declare-fun m!2828821 () Bool)

(assert (=> b!2458391 m!2828821))

(assert (=> b!2458403 m!2827317))

(assert (=> b!2458403 m!2828633))

(assert (=> bm!151193 m!2827317))

(assert (=> bm!151193 m!2827319))

(assert (=> b!2456125 d!708107))

(declare-fun b!2458405 () Bool)

(declare-fun e!1559496 () Regex!7225)

(declare-fun e!1559495 () Regex!7225)

(assert (=> b!2458405 (= e!1559496 e!1559495)))

(declare-fun c!392458 () Bool)

(assert (=> b!2458405 (= c!392458 ((_ is ElementMatch!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(declare-fun bm!151194 () Bool)

(declare-fun c!392461 () Bool)

(declare-fun c!392462 () Bool)

(declare-fun call!151202 () Regex!7225)

(declare-fun c!392460 () Bool)

(assert (=> bm!151194 (= call!151202 (derivativeStep!1872 (ite c!392462 (regTwo!14963 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (ite c!392461 (reg!7554 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (ite c!392460 (regTwo!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (regOne!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))) (head!5607 (tail!3880 s!9460))))))

(declare-fun b!2458406 () Bool)

(assert (=> b!2458406 (= e!1559495 (ite (= (head!5607 (tail!3880 s!9460)) (c!391797 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151195 () Bool)

(declare-fun call!151200 () Regex!7225)

(assert (=> bm!151195 (= call!151200 call!151202)))

(declare-fun e!1559499 () Regex!7225)

(declare-fun b!2458407 () Bool)

(assert (=> b!2458407 (= e!1559499 (Concat!11861 call!151200 (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(declare-fun call!151201 () Regex!7225)

(declare-fun e!1559497 () Regex!7225)

(declare-fun call!151199 () Regex!7225)

(declare-fun b!2458408 () Bool)

(assert (=> b!2458408 (= e!1559497 (Union!7225 (Concat!11861 call!151201 (regTwo!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))) call!151199))))

(declare-fun d!708109 () Bool)

(declare-fun lt!880451 () Regex!7225)

(assert (=> d!708109 (validRegex!2917 lt!880451)))

(assert (=> d!708109 (= lt!880451 e!1559496)))

(declare-fun c!392459 () Bool)

(assert (=> d!708109 (= c!392459 (or ((_ is EmptyExpr!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))) ((_ is EmptyLang!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))))

(assert (=> d!708109 (validRegex!2917 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))

(assert (=> d!708109 (= (derivativeStep!1872 (derivativeStep!1872 lt!880248 (head!5607 s!9460)) (head!5607 (tail!3880 s!9460))) lt!880451)))

(declare-fun bm!151196 () Bool)

(assert (=> bm!151196 (= call!151201 (derivativeStep!1872 (ite c!392462 (regOne!14963 (derivativeStep!1872 lt!880248 (head!5607 s!9460))) (regOne!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))) (head!5607 (tail!3880 s!9460))))))

(declare-fun b!2458409 () Bool)

(assert (=> b!2458409 (= e!1559497 (Union!7225 (Concat!11861 call!151199 (regTwo!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))) EmptyLang!7225))))

(declare-fun b!2458410 () Bool)

(assert (=> b!2458410 (= e!1559496 EmptyLang!7225)))

(declare-fun b!2458411 () Bool)

(assert (=> b!2458411 (= c!392460 (nullable!2218 (regOne!14962 (derivativeStep!1872 lt!880248 (head!5607 s!9460)))))))

(assert (=> b!2458411 (= e!1559499 e!1559497)))

(declare-fun bm!151197 () Bool)

(assert (=> bm!151197 (= call!151199 call!151200)))

(declare-fun b!2458412 () Bool)

(declare-fun e!1559498 () Regex!7225)

(assert (=> b!2458412 (= e!1559498 (Union!7225 call!151201 call!151202))))

(declare-fun b!2458413 () Bool)

(assert (=> b!2458413 (= c!392462 ((_ is Union!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(assert (=> b!2458413 (= e!1559495 e!1559498)))

(declare-fun b!2458414 () Bool)

(assert (=> b!2458414 (= e!1559498 e!1559499)))

(assert (=> b!2458414 (= c!392461 ((_ is Star!7225) (derivativeStep!1872 lt!880248 (head!5607 s!9460))))))

(assert (= (and d!708109 c!392459) b!2458410))

(assert (= (and d!708109 (not c!392459)) b!2458405))

(assert (= (and b!2458405 c!392458) b!2458406))

(assert (= (and b!2458405 (not c!392458)) b!2458413))

(assert (= (and b!2458413 c!392462) b!2458412))

(assert (= (and b!2458413 (not c!392462)) b!2458414))

(assert (= (and b!2458414 c!392461) b!2458407))

(assert (= (and b!2458414 (not c!392461)) b!2458411))

(assert (= (and b!2458411 c!392460) b!2458408))

(assert (= (and b!2458411 (not c!392460)) b!2458409))

(assert (= (or b!2458408 b!2458409) bm!151197))

(assert (= (or b!2458407 bm!151197) bm!151195))

(assert (= (or b!2458412 b!2458408) bm!151196))

(assert (= (or b!2458412 bm!151195) bm!151194))

(assert (=> bm!151194 m!2827323))

(declare-fun m!2828823 () Bool)

(assert (=> bm!151194 m!2828823))

(declare-fun m!2828825 () Bool)

(assert (=> d!708109 m!2828825))

(assert (=> d!708109 m!2826981))

(assert (=> d!708109 m!2827321))

(assert (=> bm!151196 m!2827323))

(declare-fun m!2828827 () Bool)

(assert (=> bm!151196 m!2828827))

(declare-fun m!2828829 () Bool)

(assert (=> b!2458411 m!2828829))

(assert (=> b!2456125 d!708109))

(assert (=> b!2456125 d!707885))

(assert (=> b!2456125 d!707909))

(declare-fun d!708111 () Bool)

(assert (=> d!708111 (= (Exists!1244 (ite c!392055 lambda!93043 lambda!93044)) (choose!14548 (ite c!392055 lambda!93043 lambda!93044)))))

(declare-fun bs!466147 () Bool)

(assert (= bs!466147 d!708111))

(declare-fun m!2828831 () Bool)

(assert (=> bs!466147 m!2828831))

(assert (=> bm!150917 d!708111))

(declare-fun b!2458418 () Bool)

(declare-fun e!1559501 () Bool)

(declare-fun lt!880452 () List!28687)

(assert (=> b!2458418 (= e!1559501 (or (not (= (_2!16630 (get!8844 lt!880296)) Nil!28589)) (= lt!880452 (t!208664 (_1!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458415 () Bool)

(declare-fun e!1559500 () List!28687)

(assert (=> b!2458415 (= e!1559500 (_2!16630 (get!8844 lt!880296)))))

(declare-fun b!2458417 () Bool)

(declare-fun res!1042059 () Bool)

(assert (=> b!2458417 (=> (not res!1042059) (not e!1559501))))

(assert (=> b!2458417 (= res!1042059 (= (size!22276 lt!880452) (+ (size!22276 (t!208664 (_1!16630 (get!8844 lt!880296)))) (size!22276 (_2!16630 (get!8844 lt!880296))))))))

(declare-fun b!2458416 () Bool)

(assert (=> b!2458416 (= e!1559500 (Cons!28589 (h!33990 (t!208664 (_1!16630 (get!8844 lt!880296)))) (++!7113 (t!208664 (t!208664 (_1!16630 (get!8844 lt!880296)))) (_2!16630 (get!8844 lt!880296)))))))

(declare-fun d!708113 () Bool)

(assert (=> d!708113 e!1559501))

(declare-fun res!1042060 () Bool)

(assert (=> d!708113 (=> (not res!1042060) (not e!1559501))))

(assert (=> d!708113 (= res!1042060 (= (content!3938 lt!880452) ((_ map or) (content!3938 (t!208664 (_1!16630 (get!8844 lt!880296)))) (content!3938 (_2!16630 (get!8844 lt!880296))))))))

(assert (=> d!708113 (= lt!880452 e!1559500)))

(declare-fun c!392463 () Bool)

(assert (=> d!708113 (= c!392463 ((_ is Nil!28589) (t!208664 (_1!16630 (get!8844 lt!880296)))))))

(assert (=> d!708113 (= (++!7113 (t!208664 (_1!16630 (get!8844 lt!880296))) (_2!16630 (get!8844 lt!880296))) lt!880452)))

(assert (= (and d!708113 c!392463) b!2458415))

(assert (= (and d!708113 (not c!392463)) b!2458416))

(assert (= (and d!708113 res!1042060) b!2458417))

(assert (= (and b!2458417 res!1042059) b!2458418))

(declare-fun m!2828833 () Bool)

(assert (=> b!2458417 m!2828833))

(assert (=> b!2458417 m!2828291))

(assert (=> b!2458417 m!2827581))

(declare-fun m!2828835 () Bool)

(assert (=> b!2458416 m!2828835))

(declare-fun m!2828837 () Bool)

(assert (=> d!708113 m!2828837))

(assert (=> d!708113 m!2828417))

(assert (=> d!708113 m!2827589))

(assert (=> b!2456387 d!708113))

(assert (=> b!2456281 d!708007))

(declare-fun bm!151198 () Bool)

(declare-fun c!392465 () Bool)

(declare-fun call!151203 () Bool)

(assert (=> bm!151198 (= call!151203 (validRegex!2917 (ite c!392465 (regTwo!14963 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))) (regOne!14962 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))))))))

(declare-fun b!2458419 () Bool)

(declare-fun res!1042065 () Bool)

(declare-fun e!1559508 () Bool)

(assert (=> b!2458419 (=> (not res!1042065) (not e!1559508))))

(declare-fun call!151204 () Bool)

(assert (=> b!2458419 (= res!1042065 call!151204)))

(declare-fun e!1559502 () Bool)

(assert (=> b!2458419 (= e!1559502 e!1559508)))

(declare-fun b!2458420 () Bool)

(declare-fun e!1559505 () Bool)

(declare-fun call!151205 () Bool)

(assert (=> b!2458420 (= e!1559505 call!151205)))

(declare-fun bm!151199 () Bool)

(assert (=> bm!151199 (= call!151204 call!151205)))

(declare-fun b!2458421 () Bool)

(declare-fun e!1559504 () Bool)

(assert (=> b!2458421 (= e!1559504 e!1559505)))

(declare-fun res!1042061 () Bool)

(assert (=> b!2458421 (= res!1042061 (not (nullable!2218 (reg!7554 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))))))))

(assert (=> b!2458421 (=> (not res!1042061) (not e!1559505))))

(declare-fun b!2458422 () Bool)

(declare-fun res!1042063 () Bool)

(declare-fun e!1559507 () Bool)

(assert (=> b!2458422 (=> res!1042063 e!1559507)))

(assert (=> b!2458422 (= res!1042063 (not ((_ is Concat!11861) (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927))))))))

(assert (=> b!2458422 (= e!1559502 e!1559507)))

(declare-fun b!2458423 () Bool)

(declare-fun e!1559506 () Bool)

(assert (=> b!2458423 (= e!1559507 e!1559506)))

(declare-fun res!1042062 () Bool)

(assert (=> b!2458423 (=> (not res!1042062) (not e!1559506))))

(assert (=> b!2458423 (= res!1042062 call!151203)))

(declare-fun c!392464 () Bool)

(declare-fun bm!151200 () Bool)

(assert (=> bm!151200 (= call!151205 (validRegex!2917 (ite c!392464 (reg!7554 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))) (ite c!392465 (regOne!14963 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))) (regTwo!14962 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927))))))))))

(declare-fun b!2458425 () Bool)

(assert (=> b!2458425 (= e!1559506 call!151204)))

(declare-fun b!2458426 () Bool)

(assert (=> b!2458426 (= e!1559504 e!1559502)))

(assert (=> b!2458426 (= c!392465 ((_ is Union!7225) (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))))))

(declare-fun b!2458427 () Bool)

(declare-fun e!1559503 () Bool)

(assert (=> b!2458427 (= e!1559503 e!1559504)))

(assert (=> b!2458427 (= c!392464 ((_ is Star!7225) (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))))))

(declare-fun b!2458424 () Bool)

(assert (=> b!2458424 (= e!1559508 call!151203)))

(declare-fun d!708115 () Bool)

(declare-fun res!1042064 () Bool)

(assert (=> d!708115 (=> res!1042064 e!1559503)))

(assert (=> d!708115 (= res!1042064 ((_ is ElementMatch!7225) (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))))))

(assert (=> d!708115 (= (validRegex!2917 (ite c!392044 (reg!7554 r!13927) (ite c!392045 (regOne!14963 r!13927) (regTwo!14962 r!13927)))) e!1559503)))

(assert (= (and d!708115 (not res!1042064)) b!2458427))

(assert (= (and b!2458427 c!392464) b!2458421))

(assert (= (and b!2458427 (not c!392464)) b!2458426))

(assert (= (and b!2458421 res!1042061) b!2458420))

(assert (= (and b!2458426 c!392465) b!2458419))

(assert (= (and b!2458426 (not c!392465)) b!2458422))

(assert (= (and b!2458419 res!1042065) b!2458424))

(assert (= (and b!2458422 (not res!1042063)) b!2458423))

(assert (= (and b!2458423 res!1042062) b!2458425))

(assert (= (or b!2458419 b!2458425) bm!151199))

(assert (= (or b!2458424 b!2458423) bm!151198))

(assert (= (or b!2458420 bm!151199) bm!151200))

(declare-fun m!2828839 () Bool)

(assert (=> bm!151198 m!2828839))

(declare-fun m!2828841 () Bool)

(assert (=> b!2458421 m!2828841))

(declare-fun m!2828843 () Bool)

(assert (=> bm!151200 m!2828843))

(assert (=> bm!150911 d!708115))

(declare-fun d!708117 () Bool)

(declare-fun lt!880453 () Int)

(assert (=> d!708117 (>= lt!880453 0)))

(declare-fun e!1559509 () Int)

(assert (=> d!708117 (= lt!880453 e!1559509)))

(declare-fun c!392466 () Bool)

(assert (=> d!708117 (= c!392466 ((_ is Nil!28589) lt!880348))))

(assert (=> d!708117 (= (size!22276 lt!880348) lt!880453)))

(declare-fun b!2458428 () Bool)

(assert (=> b!2458428 (= e!1559509 0)))

(declare-fun b!2458429 () Bool)

(assert (=> b!2458429 (= e!1559509 (+ 1 (size!22276 (t!208664 lt!880348))))))

(assert (= (and d!708117 c!392466) b!2458428))

(assert (= (and d!708117 (not c!392466)) b!2458429))

(declare-fun m!2828845 () Bool)

(assert (=> b!2458429 m!2828845))

(assert (=> b!2456294 d!708117))

(declare-fun d!708119 () Bool)

(declare-fun lt!880454 () Int)

(assert (=> d!708119 (>= lt!880454 0)))

(declare-fun e!1559510 () Int)

(assert (=> d!708119 (= lt!880454 e!1559510)))

(declare-fun c!392467 () Bool)

(assert (=> d!708119 (= c!392467 ((_ is Nil!28589) (t!208664 (_1!16630 lt!880243))))))

(assert (=> d!708119 (= (size!22276 (t!208664 (_1!16630 lt!880243))) lt!880454)))

(declare-fun b!2458430 () Bool)

(assert (=> b!2458430 (= e!1559510 0)))

(declare-fun b!2458431 () Bool)

(assert (=> b!2458431 (= e!1559510 (+ 1 (size!22276 (t!208664 (t!208664 (_1!16630 lt!880243))))))))

(assert (= (and d!708119 c!392467) b!2458430))

(assert (= (and d!708119 (not c!392467)) b!2458431))

(assert (=> b!2458431 m!2828703))

(assert (=> b!2456294 d!708119))

(assert (=> b!2456294 d!707537))

(assert (=> bm!150903 d!708063))

(declare-fun d!708121 () Bool)

(assert (=> d!708121 (= (nullable!2218 (reg!7554 lt!880248)) (nullableFct!541 (reg!7554 lt!880248)))))

(declare-fun bs!466148 () Bool)

(assert (= bs!466148 d!708121))

(declare-fun m!2828847 () Bool)

(assert (=> bs!466148 m!2828847))

(assert (=> b!2456262 d!708121))

(declare-fun c!392469 () Bool)

(declare-fun call!151206 () Bool)

(declare-fun bm!151201 () Bool)

(assert (=> bm!151201 (= call!151206 (validRegex!2917 (ite c!392469 (regTwo!14963 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))) (regOne!14962 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))))))))

(declare-fun b!2458432 () Bool)

(declare-fun res!1042070 () Bool)

(declare-fun e!1559517 () Bool)

(assert (=> b!2458432 (=> (not res!1042070) (not e!1559517))))

(declare-fun call!151207 () Bool)

(assert (=> b!2458432 (= res!1042070 call!151207)))

(declare-fun e!1559511 () Bool)

(assert (=> b!2458432 (= e!1559511 e!1559517)))

(declare-fun b!2458433 () Bool)

(declare-fun e!1559514 () Bool)

(declare-fun call!151208 () Bool)

(assert (=> b!2458433 (= e!1559514 call!151208)))

(declare-fun bm!151202 () Bool)

(assert (=> bm!151202 (= call!151207 call!151208)))

(declare-fun b!2458434 () Bool)

(declare-fun e!1559513 () Bool)

(assert (=> b!2458434 (= e!1559513 e!1559514)))

(declare-fun res!1042066 () Bool)

(assert (=> b!2458434 (= res!1042066 (not (nullable!2218 (reg!7554 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))))))))

(assert (=> b!2458434 (=> (not res!1042066) (not e!1559514))))

(declare-fun b!2458435 () Bool)

(declare-fun res!1042068 () Bool)

(declare-fun e!1559516 () Bool)

(assert (=> b!2458435 (=> res!1042068 e!1559516)))

(assert (=> b!2458435 (= res!1042068 (not ((_ is Concat!11861) (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287))))))))

(assert (=> b!2458435 (= e!1559511 e!1559516)))

(declare-fun b!2458436 () Bool)

(declare-fun e!1559515 () Bool)

(assert (=> b!2458436 (= e!1559516 e!1559515)))

(declare-fun res!1042067 () Bool)

(assert (=> b!2458436 (=> (not res!1042067) (not e!1559515))))

(assert (=> b!2458436 (= res!1042067 call!151206)))

(declare-fun c!392468 () Bool)

(declare-fun bm!151203 () Bool)

(assert (=> bm!151203 (= call!151208 (validRegex!2917 (ite c!392468 (reg!7554 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))) (ite c!392469 (regOne!14963 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))) (regTwo!14962 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287))))))))))

(declare-fun b!2458438 () Bool)

(assert (=> b!2458438 (= e!1559515 call!151207)))

(declare-fun b!2458439 () Bool)

(assert (=> b!2458439 (= e!1559513 e!1559511)))

(assert (=> b!2458439 (= c!392469 ((_ is Union!7225) (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))))))

(declare-fun b!2458440 () Bool)

(declare-fun e!1559512 () Bool)

(assert (=> b!2458440 (= e!1559512 e!1559513)))

(assert (=> b!2458440 (= c!392468 ((_ is Star!7225) (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))))))

(declare-fun b!2458437 () Bool)

(assert (=> b!2458437 (= e!1559517 call!151206)))

(declare-fun d!708123 () Bool)

(declare-fun res!1042069 () Bool)

(assert (=> d!708123 (=> res!1042069 e!1559512)))

(assert (=> d!708123 (= res!1042069 ((_ is ElementMatch!7225) (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))))))

(assert (=> d!708123 (= (validRegex!2917 (ite c!392072 (reg!7554 lt!880287) (ite c!392073 (regOne!14963 lt!880287) (regTwo!14962 lt!880287)))) e!1559512)))

(assert (= (and d!708123 (not res!1042069)) b!2458440))

(assert (= (and b!2458440 c!392468) b!2458434))

(assert (= (and b!2458440 (not c!392468)) b!2458439))

(assert (= (and b!2458434 res!1042066) b!2458433))

(assert (= (and b!2458439 c!392469) b!2458432))

(assert (= (and b!2458439 (not c!392469)) b!2458435))

(assert (= (and b!2458432 res!1042070) b!2458437))

(assert (= (and b!2458435 (not res!1042068)) b!2458436))

(assert (= (and b!2458436 res!1042067) b!2458438))

(assert (= (or b!2458432 b!2458438) bm!151202))

(assert (= (or b!2458437 b!2458436) bm!151201))

(assert (= (or b!2458433 bm!151202) bm!151203))

(declare-fun m!2828849 () Bool)

(assert (=> bm!151201 m!2828849))

(declare-fun m!2828851 () Bool)

(assert (=> b!2458434 m!2828851))

(declare-fun m!2828853 () Bool)

(assert (=> bm!151203 m!2828853))

(assert (=> bm!150927 d!708123))

(assert (=> d!707477 d!707931))

(assert (=> d!707477 d!707469))

(assert (=> b!2456269 d!707531))

(declare-fun call!151209 () Bool)

(declare-fun bm!151204 () Bool)

(declare-fun c!392471 () Bool)

(assert (=> bm!151204 (= call!151209 (validRegex!2917 (ite c!392471 (regTwo!14963 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))) (regOne!14962 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))))))))

(declare-fun b!2458441 () Bool)

(declare-fun res!1042075 () Bool)

(declare-fun e!1559524 () Bool)

(assert (=> b!2458441 (=> (not res!1042075) (not e!1559524))))

(declare-fun call!151210 () Bool)

(assert (=> b!2458441 (= res!1042075 call!151210)))

(declare-fun e!1559518 () Bool)

(assert (=> b!2458441 (= e!1559518 e!1559524)))

(declare-fun b!2458442 () Bool)

(declare-fun e!1559521 () Bool)

(declare-fun call!151211 () Bool)

(assert (=> b!2458442 (= e!1559521 call!151211)))

(declare-fun bm!151205 () Bool)

(assert (=> bm!151205 (= call!151210 call!151211)))

(declare-fun b!2458443 () Bool)

(declare-fun e!1559520 () Bool)

(assert (=> b!2458443 (= e!1559520 e!1559521)))

(declare-fun res!1042071 () Bool)

(assert (=> b!2458443 (= res!1042071 (not (nullable!2218 (reg!7554 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))))))))

(assert (=> b!2458443 (=> (not res!1042071) (not e!1559521))))

(declare-fun b!2458444 () Bool)

(declare-fun res!1042073 () Bool)

(declare-fun e!1559523 () Bool)

(assert (=> b!2458444 (=> res!1042073 e!1559523)))

(assert (=> b!2458444 (= res!1042073 (not ((_ is Concat!11861) (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248)))))))

(assert (=> b!2458444 (= e!1559518 e!1559523)))

(declare-fun b!2458445 () Bool)

(declare-fun e!1559522 () Bool)

(assert (=> b!2458445 (= e!1559523 e!1559522)))

(declare-fun res!1042072 () Bool)

(assert (=> b!2458445 (=> (not res!1042072) (not e!1559522))))

(assert (=> b!2458445 (= res!1042072 call!151209)))

(declare-fun c!392470 () Bool)

(declare-fun bm!151206 () Bool)

(assert (=> bm!151206 (= call!151211 (validRegex!2917 (ite c!392470 (reg!7554 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))) (ite c!392471 (regOne!14963 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))) (regTwo!14962 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248)))))))))

(declare-fun b!2458447 () Bool)

(assert (=> b!2458447 (= e!1559522 call!151210)))

(declare-fun b!2458448 () Bool)

(assert (=> b!2458448 (= e!1559520 e!1559518)))

(assert (=> b!2458448 (= c!392471 ((_ is Union!7225) (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))))))

(declare-fun b!2458449 () Bool)

(declare-fun e!1559519 () Bool)

(assert (=> b!2458449 (= e!1559519 e!1559520)))

(assert (=> b!2458449 (= c!392470 ((_ is Star!7225) (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))))))

(declare-fun b!2458446 () Bool)

(assert (=> b!2458446 (= e!1559524 call!151209)))

(declare-fun d!708125 () Bool)

(declare-fun res!1042074 () Bool)

(assert (=> d!708125 (=> res!1042074 e!1559519)))

(assert (=> d!708125 (= res!1042074 ((_ is ElementMatch!7225) (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))))))

(assert (=> d!708125 (= (validRegex!2917 (ite c!392040 (regTwo!14963 lt!880248) (regOne!14962 lt!880248))) e!1559519)))

(assert (= (and d!708125 (not res!1042074)) b!2458449))

(assert (= (and b!2458449 c!392470) b!2458443))

(assert (= (and b!2458449 (not c!392470)) b!2458448))

(assert (= (and b!2458443 res!1042071) b!2458442))

(assert (= (and b!2458448 c!392471) b!2458441))

(assert (= (and b!2458448 (not c!392471)) b!2458444))

(assert (= (and b!2458441 res!1042075) b!2458446))

(assert (= (and b!2458444 (not res!1042073)) b!2458445))

(assert (= (and b!2458445 res!1042072) b!2458447))

(assert (= (or b!2458441 b!2458447) bm!151205))

(assert (= (or b!2458446 b!2458445) bm!151204))

(assert (= (or b!2458442 bm!151205) bm!151206))

(declare-fun m!2828855 () Bool)

(assert (=> bm!151204 m!2828855))

(declare-fun m!2828857 () Bool)

(assert (=> b!2458443 m!2828857))

(declare-fun m!2828859 () Bool)

(assert (=> bm!151206 m!2828859))

(assert (=> bm!150905 d!708125))

(declare-fun b!2458453 () Bool)

(declare-fun e!1559526 () Bool)

(declare-fun lt!880455 () List!28687)

(assert (=> b!2458453 (= e!1559526 (or (not (= (_2!16630 (get!8844 lt!880343)) Nil!28589)) (= lt!880455 (_1!16630 (get!8844 lt!880343)))))))

(declare-fun b!2458450 () Bool)

(declare-fun e!1559525 () List!28687)

(assert (=> b!2458450 (= e!1559525 (_2!16630 (get!8844 lt!880343)))))

(declare-fun b!2458452 () Bool)

(declare-fun res!1042076 () Bool)

(assert (=> b!2458452 (=> (not res!1042076) (not e!1559526))))

(assert (=> b!2458452 (= res!1042076 (= (size!22276 lt!880455) (+ (size!22276 (_1!16630 (get!8844 lt!880343))) (size!22276 (_2!16630 (get!8844 lt!880343))))))))

(declare-fun b!2458451 () Bool)

(assert (=> b!2458451 (= e!1559525 (Cons!28589 (h!33990 (_1!16630 (get!8844 lt!880343))) (++!7113 (t!208664 (_1!16630 (get!8844 lt!880343))) (_2!16630 (get!8844 lt!880343)))))))

(declare-fun d!708127 () Bool)

(assert (=> d!708127 e!1559526))

(declare-fun res!1042077 () Bool)

(assert (=> d!708127 (=> (not res!1042077) (not e!1559526))))

(assert (=> d!708127 (= res!1042077 (= (content!3938 lt!880455) ((_ map or) (content!3938 (_1!16630 (get!8844 lt!880343))) (content!3938 (_2!16630 (get!8844 lt!880343))))))))

(assert (=> d!708127 (= lt!880455 e!1559525)))

(declare-fun c!392472 () Bool)

(assert (=> d!708127 (= c!392472 ((_ is Nil!28589) (_1!16630 (get!8844 lt!880343))))))

(assert (=> d!708127 (= (++!7113 (_1!16630 (get!8844 lt!880343)) (_2!16630 (get!8844 lt!880343))) lt!880455)))

(assert (= (and d!708127 c!392472) b!2458450))

(assert (= (and d!708127 (not c!392472)) b!2458451))

(assert (= (and d!708127 res!1042077) b!2458452))

(assert (= (and b!2458452 res!1042076) b!2458453))

(declare-fun m!2828861 () Bool)

(assert (=> b!2458452 m!2828861))

(declare-fun m!2828863 () Bool)

(assert (=> b!2458452 m!2828863))

(declare-fun m!2828865 () Bool)

(assert (=> b!2458452 m!2828865))

(declare-fun m!2828867 () Bool)

(assert (=> b!2458451 m!2828867))

(declare-fun m!2828869 () Bool)

(assert (=> d!708127 m!2828869))

(declare-fun m!2828871 () Bool)

(assert (=> d!708127 m!2828871))

(declare-fun m!2828873 () Bool)

(assert (=> d!708127 m!2828873))

(assert (=> b!2456189 d!708127))

(assert (=> b!2456189 d!707905))

(assert (=> b!2456305 d!707985))

(assert (=> b!2456305 d!707987))

(assert (=> b!2456421 d!708119))

(assert (=> b!2456249 d!707981))

(declare-fun b!2458454 () Bool)

(declare-fun e!1559528 () Regex!7225)

(declare-fun e!1559527 () Regex!7225)

(assert (=> b!2458454 (= e!1559528 e!1559527)))

(declare-fun c!392473 () Bool)

(assert (=> b!2458454 (= c!392473 ((_ is ElementMatch!7225) (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun c!392477 () Bool)

(declare-fun c!392475 () Bool)

(declare-fun call!151215 () Regex!7225)

(declare-fun bm!151207 () Bool)

(declare-fun c!392476 () Bool)

(assert (=> bm!151207 (= call!151215 (derivativeStep!1872 (ite c!392477 (regTwo!14963 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) (ite c!392476 (reg!7554 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) (ite c!392475 (regTwo!14962 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) (regOne!14962 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2458455 () Bool)

(assert (=> b!2458455 (= e!1559527 (ite (= (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243))) (c!391797 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) EmptyExpr!7225 EmptyLang!7225))))

(declare-fun bm!151208 () Bool)

(declare-fun call!151213 () Regex!7225)

(assert (=> bm!151208 (= call!151213 call!151215)))

(declare-fun e!1559531 () Regex!7225)

(declare-fun b!2458456 () Bool)

(assert (=> b!2458456 (= e!1559531 (Concat!11861 call!151213 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun e!1559529 () Regex!7225)

(declare-fun call!151212 () Regex!7225)

(declare-fun b!2458457 () Bool)

(declare-fun call!151214 () Regex!7225)

(assert (=> b!2458457 (= e!1559529 (Union!7225 (Concat!11861 call!151214 (regTwo!14962 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) call!151212))))

(declare-fun d!708129 () Bool)

(declare-fun lt!880456 () Regex!7225)

(assert (=> d!708129 (validRegex!2917 lt!880456)))

(assert (=> d!708129 (= lt!880456 e!1559528)))

(declare-fun c!392474 () Bool)

(assert (=> d!708129 (= c!392474 (or ((_ is EmptyExpr!7225) (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) ((_ is EmptyLang!7225) (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(assert (=> d!708129 (validRegex!2917 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))

(assert (=> d!708129 (= (derivativeStep!1872 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))) lt!880456)))

(declare-fun bm!151209 () Bool)

(assert (=> bm!151209 (= call!151214 (derivativeStep!1872 (ite c!392477 (regOne!14963 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) (regOne!14962 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) (head!5607 (++!7113 (_1!16630 lt!880243) (_2!16630 lt!880243)))))))

(declare-fun b!2458458 () Bool)

(assert (=> b!2458458 (= e!1559529 (Union!7225 (Concat!11861 call!151212 (regTwo!14962 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))) EmptyLang!7225))))

(declare-fun b!2458459 () Bool)

(assert (=> b!2458459 (= e!1559528 EmptyLang!7225)))

(declare-fun b!2458460 () Bool)

(assert (=> b!2458460 (= c!392475 (nullable!2218 (regOne!14962 (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(assert (=> b!2458460 (= e!1559531 e!1559529)))

(declare-fun bm!151210 () Bool)

(assert (=> bm!151210 (= call!151212 call!151213)))

(declare-fun b!2458461 () Bool)

(declare-fun e!1559530 () Regex!7225)

(assert (=> b!2458461 (= e!1559530 (Union!7225 call!151214 call!151215))))

(declare-fun b!2458462 () Bool)

(assert (=> b!2458462 (= c!392477 ((_ is Union!7225) (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(assert (=> b!2458462 (= e!1559527 e!1559530)))

(declare-fun b!2458463 () Bool)

(assert (=> b!2458463 (= e!1559530 e!1559531)))

(assert (=> b!2458463 (= c!392476 ((_ is Star!7225) (ite c!392054 (regOne!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(assert (= (and d!708129 c!392474) b!2458459))

(assert (= (and d!708129 (not c!392474)) b!2458454))

(assert (= (and b!2458454 c!392473) b!2458455))

(assert (= (and b!2458454 (not c!392473)) b!2458462))

(assert (= (and b!2458462 c!392477) b!2458461))

(assert (= (and b!2458462 (not c!392477)) b!2458463))

(assert (= (and b!2458463 c!392476) b!2458456))

(assert (= (and b!2458463 (not c!392476)) b!2458460))

(assert (= (and b!2458460 c!392475) b!2458457))

(assert (= (and b!2458460 (not c!392475)) b!2458458))

(assert (= (or b!2458457 b!2458458) bm!151210))

(assert (= (or b!2458456 bm!151210) bm!151208))

(assert (= (or b!2458461 b!2458457) bm!151209))

(assert (= (or b!2458461 bm!151208) bm!151207))

(assert (=> bm!151207 m!2826841))

(declare-fun m!2828875 () Bool)

(assert (=> bm!151207 m!2828875))

(declare-fun m!2828877 () Bool)

(assert (=> d!708129 m!2828877))

(declare-fun m!2828879 () Bool)

(assert (=> d!708129 m!2828879))

(assert (=> bm!151209 m!2826841))

(declare-fun m!2828881 () Bool)

(assert (=> bm!151209 m!2828881))

(declare-fun m!2828883 () Bool)

(assert (=> b!2458460 m!2828883))

(assert (=> bm!150915 d!708129))

(assert (=> b!2456272 d!708007))

(assert (=> bm!150920 d!707447))

(declare-fun bm!151211 () Bool)

(declare-fun call!151216 () Bool)

(declare-fun c!392479 () Bool)

(assert (=> bm!151211 (= call!151216 (validRegex!2917 (ite c!392479 (regTwo!14963 lt!880352) (regOne!14962 lt!880352))))))

(declare-fun b!2458464 () Bool)

(declare-fun res!1042082 () Bool)

(declare-fun e!1559538 () Bool)

(assert (=> b!2458464 (=> (not res!1042082) (not e!1559538))))

(declare-fun call!151217 () Bool)

(assert (=> b!2458464 (= res!1042082 call!151217)))

(declare-fun e!1559532 () Bool)

(assert (=> b!2458464 (= e!1559532 e!1559538)))

(declare-fun b!2458465 () Bool)

(declare-fun e!1559535 () Bool)

(declare-fun call!151218 () Bool)

(assert (=> b!2458465 (= e!1559535 call!151218)))

(declare-fun bm!151212 () Bool)

(assert (=> bm!151212 (= call!151217 call!151218)))

(declare-fun b!2458466 () Bool)

(declare-fun e!1559534 () Bool)

(assert (=> b!2458466 (= e!1559534 e!1559535)))

(declare-fun res!1042078 () Bool)

(assert (=> b!2458466 (= res!1042078 (not (nullable!2218 (reg!7554 lt!880352))))))

(assert (=> b!2458466 (=> (not res!1042078) (not e!1559535))))

(declare-fun b!2458467 () Bool)

(declare-fun res!1042080 () Bool)

(declare-fun e!1559537 () Bool)

(assert (=> b!2458467 (=> res!1042080 e!1559537)))

(assert (=> b!2458467 (= res!1042080 (not ((_ is Concat!11861) lt!880352)))))

(assert (=> b!2458467 (= e!1559532 e!1559537)))

(declare-fun b!2458468 () Bool)

(declare-fun e!1559536 () Bool)

(assert (=> b!2458468 (= e!1559537 e!1559536)))

(declare-fun res!1042079 () Bool)

(assert (=> b!2458468 (=> (not res!1042079) (not e!1559536))))

(assert (=> b!2458468 (= res!1042079 call!151216)))

(declare-fun bm!151213 () Bool)

(declare-fun c!392478 () Bool)

(assert (=> bm!151213 (= call!151218 (validRegex!2917 (ite c!392478 (reg!7554 lt!880352) (ite c!392479 (regOne!14963 lt!880352) (regTwo!14962 lt!880352)))))))

(declare-fun b!2458470 () Bool)

(assert (=> b!2458470 (= e!1559536 call!151217)))

(declare-fun b!2458471 () Bool)

(assert (=> b!2458471 (= e!1559534 e!1559532)))

(assert (=> b!2458471 (= c!392479 ((_ is Union!7225) lt!880352))))

(declare-fun b!2458472 () Bool)

(declare-fun e!1559533 () Bool)

(assert (=> b!2458472 (= e!1559533 e!1559534)))

(assert (=> b!2458472 (= c!392478 ((_ is Star!7225) lt!880352))))

(declare-fun b!2458469 () Bool)

(assert (=> b!2458469 (= e!1559538 call!151216)))

(declare-fun d!708131 () Bool)

(declare-fun res!1042081 () Bool)

(assert (=> d!708131 (=> res!1042081 e!1559533)))

(assert (=> d!708131 (= res!1042081 ((_ is ElementMatch!7225) lt!880352))))

(assert (=> d!708131 (= (validRegex!2917 lt!880352) e!1559533)))

(assert (= (and d!708131 (not res!1042081)) b!2458472))

(assert (= (and b!2458472 c!392478) b!2458466))

(assert (= (and b!2458472 (not c!392478)) b!2458471))

(assert (= (and b!2458466 res!1042078) b!2458465))

(assert (= (and b!2458471 c!392479) b!2458464))

(assert (= (and b!2458471 (not c!392479)) b!2458467))

(assert (= (and b!2458464 res!1042082) b!2458469))

(assert (= (and b!2458467 (not res!1042080)) b!2458468))

(assert (= (and b!2458468 res!1042079) b!2458470))

(assert (= (or b!2458464 b!2458470) bm!151212))

(assert (= (or b!2458469 b!2458468) bm!151211))

(assert (= (or b!2458465 bm!151212) bm!151213))

(declare-fun m!2828885 () Bool)

(assert (=> bm!151211 m!2828885))

(declare-fun m!2828887 () Bool)

(assert (=> b!2458466 m!2828887))

(declare-fun m!2828889 () Bool)

(assert (=> bm!151213 m!2828889))

(assert (=> d!707515 d!708131))

(declare-fun d!708133 () Bool)

(declare-fun res!1042083 () Bool)

(declare-fun e!1559539 () Bool)

(assert (=> d!708133 (=> res!1042083 e!1559539)))

(assert (=> d!708133 (= res!1042083 ((_ is Nil!28588) (t!208663 lt!880247)))))

(assert (=> d!708133 (= (forall!5859 (t!208663 lt!880247) lambda!93047) e!1559539)))

(declare-fun b!2458473 () Bool)

(declare-fun e!1559540 () Bool)

(assert (=> b!2458473 (= e!1559539 e!1559540)))

(declare-fun res!1042084 () Bool)

(assert (=> b!2458473 (=> (not res!1042084) (not e!1559540))))

(assert (=> b!2458473 (= res!1042084 (dynLambda!12274 lambda!93047 (h!33989 (t!208663 lt!880247))))))

(declare-fun b!2458474 () Bool)

(assert (=> b!2458474 (= e!1559540 (forall!5859 (t!208663 (t!208663 lt!880247)) lambda!93047))))

(assert (= (and d!708133 (not res!1042083)) b!2458473))

(assert (= (and b!2458473 res!1042084) b!2458474))

(declare-fun b_lambda!75211 () Bool)

(assert (=> (not b_lambda!75211) (not b!2458473)))

(declare-fun m!2828891 () Bool)

(assert (=> b!2458473 m!2828891))

(declare-fun m!2828893 () Bool)

(assert (=> b!2458474 m!2828893))

(assert (=> d!707515 d!708133))

(declare-fun bm!151214 () Bool)

(declare-fun call!151219 () Bool)

(declare-fun c!392481 () Bool)

(assert (=> bm!151214 (= call!151219 (validRegex!2917 (ite c!392481 (regTwo!14963 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) (regOne!14962 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))

(declare-fun b!2458475 () Bool)

(declare-fun res!1042089 () Bool)

(declare-fun e!1559547 () Bool)

(assert (=> b!2458475 (=> (not res!1042089) (not e!1559547))))

(declare-fun call!151220 () Bool)

(assert (=> b!2458475 (= res!1042089 call!151220)))

(declare-fun e!1559541 () Bool)

(assert (=> b!2458475 (= e!1559541 e!1559547)))

(declare-fun b!2458476 () Bool)

(declare-fun e!1559544 () Bool)

(declare-fun call!151221 () Bool)

(assert (=> b!2458476 (= e!1559544 call!151221)))

(declare-fun bm!151215 () Bool)

(assert (=> bm!151215 (= call!151220 call!151221)))

(declare-fun b!2458477 () Bool)

(declare-fun e!1559543 () Bool)

(assert (=> b!2458477 (= e!1559543 e!1559544)))

(declare-fun res!1042085 () Bool)

(assert (=> b!2458477 (= res!1042085 (not (nullable!2218 (reg!7554 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))))

(assert (=> b!2458477 (=> (not res!1042085) (not e!1559544))))

(declare-fun b!2458478 () Bool)

(declare-fun res!1042087 () Bool)

(declare-fun e!1559546 () Bool)

(assert (=> b!2458478 (=> res!1042087 e!1559546)))

(assert (=> b!2458478 (= res!1042087 (not ((_ is Concat!11861) (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))

(assert (=> b!2458478 (= e!1559541 e!1559546)))

(declare-fun b!2458479 () Bool)

(declare-fun e!1559545 () Bool)

(assert (=> b!2458479 (= e!1559546 e!1559545)))

(declare-fun res!1042086 () Bool)

(assert (=> b!2458479 (=> (not res!1042086) (not e!1559545))))

(assert (=> b!2458479 (= res!1042086 call!151219)))

(declare-fun bm!151216 () Bool)

(declare-fun c!392480 () Bool)

(assert (=> bm!151216 (= call!151221 (validRegex!2917 (ite c!392480 (reg!7554 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) (ite c!392481 (regOne!14963 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) (regTwo!14962 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225))))))))))

(declare-fun b!2458481 () Bool)

(assert (=> b!2458481 (= e!1559545 call!151220)))

(declare-fun b!2458482 () Bool)

(assert (=> b!2458482 (= e!1559543 e!1559541)))

(assert (=> b!2458482 (= c!392481 ((_ is Union!7225) (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun b!2458483 () Bool)

(declare-fun e!1559542 () Bool)

(assert (=> b!2458483 (= e!1559542 e!1559543)))

(assert (=> b!2458483 (= c!392480 ((_ is Star!7225) (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(declare-fun b!2458480 () Bool)

(assert (=> b!2458480 (= e!1559547 call!151219)))

(declare-fun d!708135 () Bool)

(declare-fun res!1042088 () Bool)

(assert (=> d!708135 (=> res!1042088 e!1559542)))

(assert (=> d!708135 (= res!1042088 ((_ is ElementMatch!7225) (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))))))

(assert (=> d!708135 (= (validRegex!2917 (ite c!392089 (regTwo!14963 (Concat!11861 lt!880248 EmptyExpr!7225)) (regOne!14962 (Concat!11861 lt!880248 EmptyExpr!7225)))) e!1559542)))

(assert (= (and d!708135 (not res!1042088)) b!2458483))

(assert (= (and b!2458483 c!392480) b!2458477))

(assert (= (and b!2458483 (not c!392480)) b!2458482))

(assert (= (and b!2458477 res!1042085) b!2458476))

(assert (= (and b!2458482 c!392481) b!2458475))

(assert (= (and b!2458482 (not c!392481)) b!2458478))

(assert (= (and b!2458475 res!1042089) b!2458480))

(assert (= (and b!2458478 (not res!1042087)) b!2458479))

(assert (= (and b!2458479 res!1042086) b!2458481))

(assert (= (or b!2458475 b!2458481) bm!151215))

(assert (= (or b!2458480 b!2458479) bm!151214))

(assert (= (or b!2458476 bm!151215) bm!151216))

(declare-fun m!2828895 () Bool)

(assert (=> bm!151214 m!2828895))

(declare-fun m!2828897 () Bool)

(assert (=> b!2458477 m!2828897))

(declare-fun m!2828899 () Bool)

(assert (=> bm!151216 m!2828899))

(assert (=> bm!150933 d!708135))

(declare-fun d!708137 () Bool)

(assert (=> d!708137 (= (isEmpty!16615 (tail!3878 (t!208663 lt!880247))) ((_ is Nil!28588) (tail!3878 (t!208663 lt!880247))))))

(assert (=> b!2456372 d!708137))

(declare-fun d!708139 () Bool)

(assert (=> d!708139 (= (tail!3878 (t!208663 lt!880247)) (t!208663 (t!208663 lt!880247)))))

(assert (=> b!2456372 d!708139))

(assert (=> b!2456257 d!708021))

(assert (=> b!2456257 d!707983))

(declare-fun d!708141 () Bool)

(assert (=> d!708141 (= (isConcat!237 lt!880352) ((_ is Concat!11861) lt!880352))))

(assert (=> b!2456368 d!708141))

(declare-fun call!151222 () Bool)

(declare-fun c!392483 () Bool)

(declare-fun bm!151217 () Bool)

(assert (=> bm!151217 (= call!151222 (validRegex!2917 (ite c!392483 (regTwo!14963 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))) (regOne!14962 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))))))))

(declare-fun b!2458484 () Bool)

(declare-fun res!1042094 () Bool)

(declare-fun e!1559554 () Bool)

(assert (=> b!2458484 (=> (not res!1042094) (not e!1559554))))

(declare-fun call!151223 () Bool)

(assert (=> b!2458484 (= res!1042094 call!151223)))

(declare-fun e!1559548 () Bool)

(assert (=> b!2458484 (= e!1559548 e!1559554)))

(declare-fun b!2458485 () Bool)

(declare-fun e!1559551 () Bool)

(declare-fun call!151224 () Bool)

(assert (=> b!2458485 (= e!1559551 call!151224)))

(declare-fun bm!151218 () Bool)

(assert (=> bm!151218 (= call!151223 call!151224)))

(declare-fun b!2458486 () Bool)

(declare-fun e!1559550 () Bool)

(assert (=> b!2458486 (= e!1559550 e!1559551)))

(declare-fun res!1042090 () Bool)

(assert (=> b!2458486 (= res!1042090 (not (nullable!2218 (reg!7554 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))))))))

(assert (=> b!2458486 (=> (not res!1042090) (not e!1559551))))

(declare-fun b!2458487 () Bool)

(declare-fun res!1042092 () Bool)

(declare-fun e!1559553 () Bool)

(assert (=> b!2458487 (=> res!1042092 e!1559553)))

(assert (=> b!2458487 (= res!1042092 (not ((_ is Concat!11861) (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164)))))))))

(assert (=> b!2458487 (= e!1559548 e!1559553)))

(declare-fun b!2458488 () Bool)

(declare-fun e!1559552 () Bool)

(assert (=> b!2458488 (= e!1559553 e!1559552)))

(declare-fun res!1042091 () Bool)

(assert (=> b!2458488 (=> (not res!1042091) (not e!1559552))))

(assert (=> b!2458488 (= res!1042091 call!151222)))

(declare-fun bm!151219 () Bool)

(declare-fun c!392482 () Bool)

(assert (=> bm!151219 (= call!151224 (validRegex!2917 (ite c!392482 (reg!7554 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))) (ite c!392483 (regOne!14963 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))) (regTwo!14962 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164)))))))))))

(declare-fun b!2458490 () Bool)

(assert (=> b!2458490 (= e!1559552 call!151223)))

(declare-fun b!2458491 () Bool)

(assert (=> b!2458491 (= e!1559550 e!1559548)))

(assert (=> b!2458491 (= c!392483 ((_ is Union!7225) (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))))))

(declare-fun b!2458492 () Bool)

(declare-fun e!1559549 () Bool)

(assert (=> b!2458492 (= e!1559549 e!1559550)))

(assert (=> b!2458492 (= c!392482 ((_ is Star!7225) (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))))))

(declare-fun b!2458489 () Bool)

(assert (=> b!2458489 (= e!1559554 call!151222)))

(declare-fun d!708143 () Bool)

(declare-fun res!1042093 () Bool)

(assert (=> d!708143 (=> res!1042093 e!1559549)))

(assert (=> d!708143 (= res!1042093 ((_ is ElementMatch!7225) (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))))))

(assert (=> d!708143 (= (validRegex!2917 (ite c!392066 (reg!7554 (h!33989 l!9164)) (ite c!392067 (regOne!14963 (h!33989 l!9164)) (regTwo!14962 (h!33989 l!9164))))) e!1559549)))

(assert (= (and d!708143 (not res!1042093)) b!2458492))

(assert (= (and b!2458492 c!392482) b!2458486))

(assert (= (and b!2458492 (not c!392482)) b!2458491))

(assert (= (and b!2458486 res!1042090) b!2458485))

(assert (= (and b!2458491 c!392483) b!2458484))

(assert (= (and b!2458491 (not c!392483)) b!2458487))

(assert (= (and b!2458484 res!1042094) b!2458489))

(assert (= (and b!2458487 (not res!1042092)) b!2458488))

(assert (= (and b!2458488 res!1042091) b!2458490))

(assert (= (or b!2458484 b!2458490) bm!151218))

(assert (= (or b!2458489 b!2458488) bm!151217))

(assert (= (or b!2458485 bm!151218) bm!151219))

(declare-fun m!2828901 () Bool)

(assert (=> bm!151217 m!2828901))

(declare-fun m!2828903 () Bool)

(assert (=> b!2458486 m!2828903))

(declare-fun m!2828905 () Bool)

(assert (=> bm!151219 m!2828905))

(assert (=> bm!150924 d!708143))

(declare-fun b!2458493 () Bool)

(declare-fun e!1559555 () Bool)

(assert (=> b!2458493 (= e!1559555 tp_is_empty!11863)))

(declare-fun b!2458495 () Bool)

(declare-fun tp!782140 () Bool)

(assert (=> b!2458495 (= e!1559555 tp!782140)))

(declare-fun b!2458494 () Bool)

(declare-fun tp!782141 () Bool)

(declare-fun tp!782143 () Bool)

(assert (=> b!2458494 (= e!1559555 (and tp!782141 tp!782143))))

(declare-fun b!2458496 () Bool)

(declare-fun tp!782142 () Bool)

(declare-fun tp!782139 () Bool)

(assert (=> b!2458496 (= e!1559555 (and tp!782142 tp!782139))))

(assert (=> b!2456469 (= tp!781243 e!1559555)))

(assert (= (and b!2456469 ((_ is ElementMatch!7225) (regOne!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458493))

(assert (= (and b!2456469 ((_ is Concat!11861) (regOne!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458494))

(assert (= (and b!2456469 ((_ is Star!7225) (regOne!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458495))

(assert (= (and b!2456469 ((_ is Union!7225) (regOne!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458496))

(declare-fun b!2458497 () Bool)

(declare-fun e!1559556 () Bool)

(assert (=> b!2458497 (= e!1559556 tp_is_empty!11863)))

(declare-fun b!2458499 () Bool)

(declare-fun tp!782145 () Bool)

(assert (=> b!2458499 (= e!1559556 tp!782145)))

(declare-fun b!2458498 () Bool)

(declare-fun tp!782146 () Bool)

(declare-fun tp!782148 () Bool)

(assert (=> b!2458498 (= e!1559556 (and tp!782146 tp!782148))))

(declare-fun b!2458500 () Bool)

(declare-fun tp!782147 () Bool)

(declare-fun tp!782144 () Bool)

(assert (=> b!2458500 (= e!1559556 (and tp!782147 tp!782144))))

(assert (=> b!2456469 (= tp!781240 e!1559556)))

(assert (= (and b!2456469 ((_ is ElementMatch!7225) (regTwo!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458497))

(assert (= (and b!2456469 ((_ is Concat!11861) (regTwo!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458498))

(assert (= (and b!2456469 ((_ is Star!7225) (regTwo!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458499))

(assert (= (and b!2456469 ((_ is Union!7225) (regTwo!14963 (reg!7554 (regOne!14962 r!13927))))) b!2458500))

(declare-fun b!2458501 () Bool)

(declare-fun e!1559557 () Bool)

(assert (=> b!2458501 (= e!1559557 tp_is_empty!11863)))

(declare-fun b!2458503 () Bool)

(declare-fun tp!782150 () Bool)

(assert (=> b!2458503 (= e!1559557 tp!782150)))

(declare-fun b!2458502 () Bool)

(declare-fun tp!782151 () Bool)

(declare-fun tp!782153 () Bool)

(assert (=> b!2458502 (= e!1559557 (and tp!782151 tp!782153))))

(declare-fun b!2458504 () Bool)

(declare-fun tp!782152 () Bool)

(declare-fun tp!782149 () Bool)

(assert (=> b!2458504 (= e!1559557 (and tp!782152 tp!782149))))

(assert (=> b!2456546 (= tp!781339 e!1559557)))

(assert (= (and b!2456546 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14962 (h!33989 l!9164))))) b!2458501))

(assert (= (and b!2456546 ((_ is Concat!11861) (regOne!14963 (regOne!14962 (h!33989 l!9164))))) b!2458502))

(assert (= (and b!2456546 ((_ is Star!7225) (regOne!14963 (regOne!14962 (h!33989 l!9164))))) b!2458503))

(assert (= (and b!2456546 ((_ is Union!7225) (regOne!14963 (regOne!14962 (h!33989 l!9164))))) b!2458504))

(declare-fun b!2458505 () Bool)

(declare-fun e!1559558 () Bool)

(assert (=> b!2458505 (= e!1559558 tp_is_empty!11863)))

(declare-fun b!2458507 () Bool)

(declare-fun tp!782155 () Bool)

(assert (=> b!2458507 (= e!1559558 tp!782155)))

(declare-fun b!2458506 () Bool)

(declare-fun tp!782156 () Bool)

(declare-fun tp!782158 () Bool)

(assert (=> b!2458506 (= e!1559558 (and tp!782156 tp!782158))))

(declare-fun b!2458508 () Bool)

(declare-fun tp!782157 () Bool)

(declare-fun tp!782154 () Bool)

(assert (=> b!2458508 (= e!1559558 (and tp!782157 tp!782154))))

(assert (=> b!2456546 (= tp!781336 e!1559558)))

(assert (= (and b!2456546 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14962 (h!33989 l!9164))))) b!2458505))

(assert (= (and b!2456546 ((_ is Concat!11861) (regTwo!14963 (regOne!14962 (h!33989 l!9164))))) b!2458506))

(assert (= (and b!2456546 ((_ is Star!7225) (regTwo!14963 (regOne!14962 (h!33989 l!9164))))) b!2458507))

(assert (= (and b!2456546 ((_ is Union!7225) (regTwo!14963 (regOne!14962 (h!33989 l!9164))))) b!2458508))

(declare-fun b!2458509 () Bool)

(declare-fun e!1559559 () Bool)

(assert (=> b!2458509 (= e!1559559 tp_is_empty!11863)))

(declare-fun b!2458511 () Bool)

(declare-fun tp!782160 () Bool)

(assert (=> b!2458511 (= e!1559559 tp!782160)))

(declare-fun b!2458510 () Bool)

(declare-fun tp!782161 () Bool)

(declare-fun tp!782163 () Bool)

(assert (=> b!2458510 (= e!1559559 (and tp!782161 tp!782163))))

(declare-fun b!2458512 () Bool)

(declare-fun tp!782162 () Bool)

(declare-fun tp!782159 () Bool)

(assert (=> b!2458512 (= e!1559559 (and tp!782162 tp!782159))))

(assert (=> b!2456436 (= tp!781201 e!1559559)))

(assert (= (and b!2456436 ((_ is ElementMatch!7225) (regOne!14963 (h!33989 (t!208663 l!9164))))) b!2458509))

(assert (= (and b!2456436 ((_ is Concat!11861) (regOne!14963 (h!33989 (t!208663 l!9164))))) b!2458510))

(assert (= (and b!2456436 ((_ is Star!7225) (regOne!14963 (h!33989 (t!208663 l!9164))))) b!2458511))

(assert (= (and b!2456436 ((_ is Union!7225) (regOne!14963 (h!33989 (t!208663 l!9164))))) b!2458512))

(declare-fun b!2458513 () Bool)

(declare-fun e!1559560 () Bool)

(assert (=> b!2458513 (= e!1559560 tp_is_empty!11863)))

(declare-fun b!2458515 () Bool)

(declare-fun tp!782165 () Bool)

(assert (=> b!2458515 (= e!1559560 tp!782165)))

(declare-fun b!2458514 () Bool)

(declare-fun tp!782166 () Bool)

(declare-fun tp!782168 () Bool)

(assert (=> b!2458514 (= e!1559560 (and tp!782166 tp!782168))))

(declare-fun b!2458516 () Bool)

(declare-fun tp!782167 () Bool)

(declare-fun tp!782164 () Bool)

(assert (=> b!2458516 (= e!1559560 (and tp!782167 tp!782164))))

(assert (=> b!2456436 (= tp!781198 e!1559560)))

(assert (= (and b!2456436 ((_ is ElementMatch!7225) (regTwo!14963 (h!33989 (t!208663 l!9164))))) b!2458513))

(assert (= (and b!2456436 ((_ is Concat!11861) (regTwo!14963 (h!33989 (t!208663 l!9164))))) b!2458514))

(assert (= (and b!2456436 ((_ is Star!7225) (regTwo!14963 (h!33989 (t!208663 l!9164))))) b!2458515))

(assert (= (and b!2456436 ((_ is Union!7225) (regTwo!14963 (h!33989 (t!208663 l!9164))))) b!2458516))

(declare-fun b!2458517 () Bool)

(declare-fun e!1559561 () Bool)

(assert (=> b!2458517 (= e!1559561 tp_is_empty!11863)))

(declare-fun b!2458519 () Bool)

(declare-fun tp!782170 () Bool)

(assert (=> b!2458519 (= e!1559561 tp!782170)))

(declare-fun b!2458518 () Bool)

(declare-fun tp!782171 () Bool)

(declare-fun tp!782173 () Bool)

(assert (=> b!2458518 (= e!1559561 (and tp!782171 tp!782173))))

(declare-fun b!2458520 () Bool)

(declare-fun tp!782172 () Bool)

(declare-fun tp!782169 () Bool)

(assert (=> b!2458520 (= e!1559561 (and tp!782172 tp!782169))))

(assert (=> b!2456537 (= tp!781327 e!1559561)))

(assert (= (and b!2456537 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14963 (h!33989 l!9164))))) b!2458517))

(assert (= (and b!2456537 ((_ is Concat!11861) (reg!7554 (regTwo!14963 (h!33989 l!9164))))) b!2458518))

(assert (= (and b!2456537 ((_ is Star!7225) (reg!7554 (regTwo!14963 (h!33989 l!9164))))) b!2458519))

(assert (= (and b!2456537 ((_ is Union!7225) (reg!7554 (regTwo!14963 (h!33989 l!9164))))) b!2458520))

(declare-fun b!2458521 () Bool)

(declare-fun e!1559562 () Bool)

(assert (=> b!2458521 (= e!1559562 tp_is_empty!11863)))

(declare-fun b!2458523 () Bool)

(declare-fun tp!782175 () Bool)

(assert (=> b!2458523 (= e!1559562 tp!782175)))

(declare-fun b!2458522 () Bool)

(declare-fun tp!782176 () Bool)

(declare-fun tp!782178 () Bool)

(assert (=> b!2458522 (= e!1559562 (and tp!782176 tp!782178))))

(declare-fun b!2458524 () Bool)

(declare-fun tp!782177 () Bool)

(declare-fun tp!782174 () Bool)

(assert (=> b!2458524 (= e!1559562 (and tp!782177 tp!782174))))

(assert (=> b!2456460 (= tp!781231 e!1559562)))

(assert (= (and b!2456460 ((_ is ElementMatch!7225) (reg!7554 (regOne!14963 (regTwo!14962 r!13927))))) b!2458521))

(assert (= (and b!2456460 ((_ is Concat!11861) (reg!7554 (regOne!14963 (regTwo!14962 r!13927))))) b!2458522))

(assert (= (and b!2456460 ((_ is Star!7225) (reg!7554 (regOne!14963 (regTwo!14962 r!13927))))) b!2458523))

(assert (= (and b!2456460 ((_ is Union!7225) (reg!7554 (regOne!14963 (regTwo!14962 r!13927))))) b!2458524))

(declare-fun b!2458525 () Bool)

(declare-fun e!1559563 () Bool)

(assert (=> b!2458525 (= e!1559563 tp_is_empty!11863)))

(declare-fun b!2458527 () Bool)

(declare-fun tp!782180 () Bool)

(assert (=> b!2458527 (= e!1559563 tp!782180)))

(declare-fun b!2458526 () Bool)

(declare-fun tp!782181 () Bool)

(declare-fun tp!782183 () Bool)

(assert (=> b!2458526 (= e!1559563 (and tp!782181 tp!782183))))

(declare-fun b!2458528 () Bool)

(declare-fun tp!782182 () Bool)

(declare-fun tp!782179 () Bool)

(assert (=> b!2458528 (= e!1559563 (and tp!782182 tp!782179))))

(assert (=> b!2456451 (= tp!781222 e!1559563)))

(assert (= (and b!2456451 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458525))

(assert (= (and b!2456451 ((_ is Concat!11861) (regOne!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458526))

(assert (= (and b!2456451 ((_ is Star!7225) (regOne!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458527))

(assert (= (and b!2456451 ((_ is Union!7225) (regOne!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458528))

(declare-fun b!2458529 () Bool)

(declare-fun e!1559564 () Bool)

(assert (=> b!2458529 (= e!1559564 tp_is_empty!11863)))

(declare-fun b!2458531 () Bool)

(declare-fun tp!782185 () Bool)

(assert (=> b!2458531 (= e!1559564 tp!782185)))

(declare-fun b!2458530 () Bool)

(declare-fun tp!782186 () Bool)

(declare-fun tp!782188 () Bool)

(assert (=> b!2458530 (= e!1559564 (and tp!782186 tp!782188))))

(declare-fun b!2458532 () Bool)

(declare-fun tp!782187 () Bool)

(declare-fun tp!782184 () Bool)

(assert (=> b!2458532 (= e!1559564 (and tp!782187 tp!782184))))

(assert (=> b!2456451 (= tp!781224 e!1559564)))

(assert (= (and b!2456451 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458529))

(assert (= (and b!2456451 ((_ is Concat!11861) (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458530))

(assert (= (and b!2456451 ((_ is Star!7225) (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458531))

(assert (= (and b!2456451 ((_ is Union!7225) (regTwo!14962 (regTwo!14963 (regOne!14963 r!13927))))) b!2458532))

(declare-fun b!2458533 () Bool)

(declare-fun e!1559565 () Bool)

(assert (=> b!2458533 (= e!1559565 tp_is_empty!11863)))

(declare-fun b!2458535 () Bool)

(declare-fun tp!782190 () Bool)

(assert (=> b!2458535 (= e!1559565 tp!782190)))

(declare-fun b!2458534 () Bool)

(declare-fun tp!782191 () Bool)

(declare-fun tp!782193 () Bool)

(assert (=> b!2458534 (= e!1559565 (and tp!782191 tp!782193))))

(declare-fun b!2458536 () Bool)

(declare-fun tp!782192 () Bool)

(declare-fun tp!782189 () Bool)

(assert (=> b!2458536 (= e!1559565 (and tp!782192 tp!782189))))

(assert (=> b!2456437 (= tp!781203 e!1559565)))

(assert (= (and b!2456437 ((_ is ElementMatch!7225) (h!33989 (t!208663 (t!208663 l!9164))))) b!2458533))

(assert (= (and b!2456437 ((_ is Concat!11861) (h!33989 (t!208663 (t!208663 l!9164))))) b!2458534))

(assert (= (and b!2456437 ((_ is Star!7225) (h!33989 (t!208663 (t!208663 l!9164))))) b!2458535))

(assert (= (and b!2456437 ((_ is Union!7225) (h!33989 (t!208663 (t!208663 l!9164))))) b!2458536))

(declare-fun b!2458537 () Bool)

(declare-fun e!1559566 () Bool)

(declare-fun tp!782194 () Bool)

(declare-fun tp!782195 () Bool)

(assert (=> b!2458537 (= e!1559566 (and tp!782194 tp!782195))))

(assert (=> b!2456437 (= tp!781204 e!1559566)))

(assert (= (and b!2456437 ((_ is Cons!28588) (t!208663 (t!208663 (t!208663 l!9164))))) b!2458537))

(declare-fun b!2458538 () Bool)

(declare-fun e!1559567 () Bool)

(assert (=> b!2458538 (= e!1559567 tp_is_empty!11863)))

(declare-fun b!2458540 () Bool)

(declare-fun tp!782197 () Bool)

(assert (=> b!2458540 (= e!1559567 tp!782197)))

(declare-fun b!2458539 () Bool)

(declare-fun tp!782198 () Bool)

(declare-fun tp!782200 () Bool)

(assert (=> b!2458539 (= e!1559567 (and tp!782198 tp!782200))))

(declare-fun b!2458541 () Bool)

(declare-fun tp!782199 () Bool)

(declare-fun tp!782196 () Bool)

(assert (=> b!2458541 (= e!1559567 (and tp!782199 tp!782196))))

(assert (=> b!2456514 (= tp!781299 e!1559567)))

(assert (= (and b!2456514 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458538))

(assert (= (and b!2456514 ((_ is Concat!11861) (regOne!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458539))

(assert (= (and b!2456514 ((_ is Star!7225) (regOne!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458540))

(assert (= (and b!2456514 ((_ is Union!7225) (regOne!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458541))

(declare-fun b!2458542 () Bool)

(declare-fun e!1559568 () Bool)

(assert (=> b!2458542 (= e!1559568 tp_is_empty!11863)))

(declare-fun b!2458544 () Bool)

(declare-fun tp!782202 () Bool)

(assert (=> b!2458544 (= e!1559568 tp!782202)))

(declare-fun b!2458543 () Bool)

(declare-fun tp!782203 () Bool)

(declare-fun tp!782205 () Bool)

(assert (=> b!2458543 (= e!1559568 (and tp!782203 tp!782205))))

(declare-fun b!2458545 () Bool)

(declare-fun tp!782204 () Bool)

(declare-fun tp!782201 () Bool)

(assert (=> b!2458545 (= e!1559568 (and tp!782204 tp!782201))))

(assert (=> b!2456514 (= tp!781296 e!1559568)))

(assert (= (and b!2456514 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458542))

(assert (= (and b!2456514 ((_ is Concat!11861) (regTwo!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458543))

(assert (= (and b!2456514 ((_ is Star!7225) (regTwo!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458544))

(assert (= (and b!2456514 ((_ is Union!7225) (regTwo!14963 (regOne!14962 (regTwo!14963 r!13927))))) b!2458545))

(declare-fun b!2458546 () Bool)

(declare-fun e!1559569 () Bool)

(assert (=> b!2458546 (= e!1559569 tp_is_empty!11863)))

(declare-fun b!2458548 () Bool)

(declare-fun tp!782207 () Bool)

(assert (=> b!2458548 (= e!1559569 tp!782207)))

(declare-fun b!2458547 () Bool)

(declare-fun tp!782208 () Bool)

(declare-fun tp!782210 () Bool)

(assert (=> b!2458547 (= e!1559569 (and tp!782208 tp!782210))))

(declare-fun b!2458549 () Bool)

(declare-fun tp!782209 () Bool)

(declare-fun tp!782206 () Bool)

(assert (=> b!2458549 (= e!1559569 (and tp!782209 tp!782206))))

(assert (=> b!2456503 (= tp!781287 e!1559569)))

(assert (= (and b!2456503 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458546))

(assert (= (and b!2456503 ((_ is Concat!11861) (regOne!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458547))

(assert (= (and b!2456503 ((_ is Star!7225) (regOne!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458548))

(assert (= (and b!2456503 ((_ is Union!7225) (regOne!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458549))

(declare-fun b!2458550 () Bool)

(declare-fun e!1559570 () Bool)

(assert (=> b!2458550 (= e!1559570 tp_is_empty!11863)))

(declare-fun b!2458552 () Bool)

(declare-fun tp!782212 () Bool)

(assert (=> b!2458552 (= e!1559570 tp!782212)))

(declare-fun b!2458551 () Bool)

(declare-fun tp!782213 () Bool)

(declare-fun tp!782215 () Bool)

(assert (=> b!2458551 (= e!1559570 (and tp!782213 tp!782215))))

(declare-fun b!2458553 () Bool)

(declare-fun tp!782214 () Bool)

(declare-fun tp!782211 () Bool)

(assert (=> b!2458553 (= e!1559570 (and tp!782214 tp!782211))))

(assert (=> b!2456503 (= tp!781289 e!1559570)))

(assert (= (and b!2456503 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458550))

(assert (= (and b!2456503 ((_ is Concat!11861) (regTwo!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458551))

(assert (= (and b!2456503 ((_ is Star!7225) (regTwo!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458552))

(assert (= (and b!2456503 ((_ is Union!7225) (regTwo!14962 (regTwo!14962 (regOne!14962 r!13927))))) b!2458553))

(declare-fun b!2458554 () Bool)

(declare-fun e!1559571 () Bool)

(assert (=> b!2458554 (= e!1559571 tp_is_empty!11863)))

(declare-fun b!2458556 () Bool)

(declare-fun tp!782217 () Bool)

(assert (=> b!2458556 (= e!1559571 tp!782217)))

(declare-fun b!2458555 () Bool)

(declare-fun tp!782218 () Bool)

(declare-fun tp!782220 () Bool)

(assert (=> b!2458555 (= e!1559571 (and tp!782218 tp!782220))))

(declare-fun b!2458557 () Bool)

(declare-fun tp!782219 () Bool)

(declare-fun tp!782216 () Bool)

(assert (=> b!2458557 (= e!1559571 (and tp!782219 tp!782216))))

(assert (=> b!2456528 (= tp!781318 e!1559571)))

(assert (= (and b!2456528 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458554))

(assert (= (and b!2456528 ((_ is Concat!11861) (regOne!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458555))

(assert (= (and b!2456528 ((_ is Star!7225) (regOne!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458556))

(assert (= (and b!2456528 ((_ is Union!7225) (regOne!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458557))

(declare-fun b!2458558 () Bool)

(declare-fun e!1559572 () Bool)

(assert (=> b!2458558 (= e!1559572 tp_is_empty!11863)))

(declare-fun b!2458560 () Bool)

(declare-fun tp!782222 () Bool)

(assert (=> b!2458560 (= e!1559572 tp!782222)))

(declare-fun b!2458559 () Bool)

(declare-fun tp!782223 () Bool)

(declare-fun tp!782225 () Bool)

(assert (=> b!2458559 (= e!1559572 (and tp!782223 tp!782225))))

(declare-fun b!2458561 () Bool)

(declare-fun tp!782224 () Bool)

(declare-fun tp!782221 () Bool)

(assert (=> b!2458561 (= e!1559572 (and tp!782224 tp!782221))))

(assert (=> b!2456528 (= tp!781320 e!1559572)))

(assert (= (and b!2456528 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458558))

(assert (= (and b!2456528 ((_ is Concat!11861) (regTwo!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458559))

(assert (= (and b!2456528 ((_ is Star!7225) (regTwo!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458560))

(assert (= (and b!2456528 ((_ is Union!7225) (regTwo!14962 (regTwo!14962 (regOne!14963 r!13927))))) b!2458561))

(declare-fun b!2458562 () Bool)

(declare-fun e!1559573 () Bool)

(assert (=> b!2458562 (= e!1559573 tp_is_empty!11863)))

(declare-fun b!2458564 () Bool)

(declare-fun tp!782227 () Bool)

(assert (=> b!2458564 (= e!1559573 tp!782227)))

(declare-fun b!2458563 () Bool)

(declare-fun tp!782228 () Bool)

(declare-fun tp!782230 () Bool)

(assert (=> b!2458563 (= e!1559573 (and tp!782228 tp!782230))))

(declare-fun b!2458565 () Bool)

(declare-fun tp!782229 () Bool)

(declare-fun tp!782226 () Bool)

(assert (=> b!2458565 (= e!1559573 (and tp!782229 tp!782226))))

(assert (=> b!2456480 (= tp!781256 e!1559573)))

(assert (= (and b!2456480 ((_ is ElementMatch!7225) (reg!7554 (regOne!14963 (reg!7554 r!13927))))) b!2458562))

(assert (= (and b!2456480 ((_ is Concat!11861) (reg!7554 (regOne!14963 (reg!7554 r!13927))))) b!2458563))

(assert (= (and b!2456480 ((_ is Star!7225) (reg!7554 (regOne!14963 (reg!7554 r!13927))))) b!2458564))

(assert (= (and b!2456480 ((_ is Union!7225) (reg!7554 (regOne!14963 (reg!7554 r!13927))))) b!2458565))

(declare-fun b!2458566 () Bool)

(declare-fun e!1559574 () Bool)

(assert (=> b!2458566 (= e!1559574 tp_is_empty!11863)))

(declare-fun b!2458568 () Bool)

(declare-fun tp!782232 () Bool)

(assert (=> b!2458568 (= e!1559574 tp!782232)))

(declare-fun b!2458567 () Bool)

(declare-fun tp!782233 () Bool)

(declare-fun tp!782235 () Bool)

(assert (=> b!2458567 (= e!1559574 (and tp!782233 tp!782235))))

(declare-fun b!2458569 () Bool)

(declare-fun tp!782234 () Bool)

(declare-fun tp!782231 () Bool)

(assert (=> b!2458569 (= e!1559574 (and tp!782234 tp!782231))))

(assert (=> b!2456471 (= tp!781247 e!1559574)))

(assert (= (and b!2456471 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458566))

(assert (= (and b!2456471 ((_ is Concat!11861) (regOne!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458567))

(assert (= (and b!2456471 ((_ is Star!7225) (regOne!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458568))

(assert (= (and b!2456471 ((_ is Union!7225) (regOne!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458569))

(declare-fun b!2458570 () Bool)

(declare-fun e!1559575 () Bool)

(assert (=> b!2458570 (= e!1559575 tp_is_empty!11863)))

(declare-fun b!2458572 () Bool)

(declare-fun tp!782237 () Bool)

(assert (=> b!2458572 (= e!1559575 tp!782237)))

(declare-fun b!2458571 () Bool)

(declare-fun tp!782238 () Bool)

(declare-fun tp!782240 () Bool)

(assert (=> b!2458571 (= e!1559575 (and tp!782238 tp!782240))))

(declare-fun b!2458573 () Bool)

(declare-fun tp!782239 () Bool)

(declare-fun tp!782236 () Bool)

(assert (=> b!2458573 (= e!1559575 (and tp!782239 tp!782236))))

(assert (=> b!2456471 (= tp!781249 e!1559575)))

(assert (= (and b!2456471 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458570))

(assert (= (and b!2456471 ((_ is Concat!11861) (regTwo!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458571))

(assert (= (and b!2456471 ((_ is Star!7225) (regTwo!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458572))

(assert (= (and b!2456471 ((_ is Union!7225) (regTwo!14962 (regOne!14962 (regTwo!14962 r!13927))))) b!2458573))

(declare-fun b!2458574 () Bool)

(declare-fun e!1559576 () Bool)

(assert (=> b!2458574 (= e!1559576 tp_is_empty!11863)))

(declare-fun b!2458576 () Bool)

(declare-fun tp!782242 () Bool)

(assert (=> b!2458576 (= e!1559576 tp!782242)))

(declare-fun b!2458575 () Bool)

(declare-fun tp!782243 () Bool)

(declare-fun tp!782245 () Bool)

(assert (=> b!2458575 (= e!1559576 (and tp!782243 tp!782245))))

(declare-fun b!2458577 () Bool)

(declare-fun tp!782244 () Bool)

(declare-fun tp!782241 () Bool)

(assert (=> b!2458577 (= e!1559576 (and tp!782244 tp!782241))))

(assert (=> b!2456489 (= tp!781268 e!1559576)))

(assert (= (and b!2456489 ((_ is ElementMatch!7225) (regOne!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458574))

(assert (= (and b!2456489 ((_ is Concat!11861) (regOne!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458575))

(assert (= (and b!2456489 ((_ is Star!7225) (regOne!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458576))

(assert (= (and b!2456489 ((_ is Union!7225) (regOne!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458577))

(declare-fun b!2458578 () Bool)

(declare-fun e!1559577 () Bool)

(assert (=> b!2458578 (= e!1559577 tp_is_empty!11863)))

(declare-fun b!2458580 () Bool)

(declare-fun tp!782247 () Bool)

(assert (=> b!2458580 (= e!1559577 tp!782247)))

(declare-fun b!2458579 () Bool)

(declare-fun tp!782248 () Bool)

(declare-fun tp!782250 () Bool)

(assert (=> b!2458579 (= e!1559577 (and tp!782248 tp!782250))))

(declare-fun b!2458581 () Bool)

(declare-fun tp!782249 () Bool)

(declare-fun tp!782246 () Bool)

(assert (=> b!2458581 (= e!1559577 (and tp!782249 tp!782246))))

(assert (=> b!2456489 (= tp!781265 e!1559577)))

(assert (= (and b!2456489 ((_ is ElementMatch!7225) (regTwo!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458578))

(assert (= (and b!2456489 ((_ is Concat!11861) (regTwo!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458579))

(assert (= (and b!2456489 ((_ is Star!7225) (regTwo!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458580))

(assert (= (and b!2456489 ((_ is Union!7225) (regTwo!14963 (reg!7554 (regTwo!14963 r!13927))))) b!2458581))

(declare-fun b!2458582 () Bool)

(declare-fun e!1559578 () Bool)

(assert (=> b!2458582 (= e!1559578 tp_is_empty!11863)))

(declare-fun b!2458584 () Bool)

(declare-fun tp!782252 () Bool)

(assert (=> b!2458584 (= e!1559578 tp!782252)))

(declare-fun b!2458583 () Bool)

(declare-fun tp!782253 () Bool)

(declare-fun tp!782255 () Bool)

(assert (=> b!2458583 (= e!1559578 (and tp!782253 tp!782255))))

(declare-fun b!2458585 () Bool)

(declare-fun tp!782254 () Bool)

(declare-fun tp!782251 () Bool)

(assert (=> b!2458585 (= e!1559578 (and tp!782254 tp!782251))))

(assert (=> b!2456548 (= tp!781343 e!1559578)))

(assert (= (and b!2456548 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458582))

(assert (= (and b!2456548 ((_ is Concat!11861) (regOne!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458583))

(assert (= (and b!2456548 ((_ is Star!7225) (regOne!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458584))

(assert (= (and b!2456548 ((_ is Union!7225) (regOne!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458585))

(declare-fun b!2458586 () Bool)

(declare-fun e!1559579 () Bool)

(assert (=> b!2458586 (= e!1559579 tp_is_empty!11863)))

(declare-fun b!2458588 () Bool)

(declare-fun tp!782257 () Bool)

(assert (=> b!2458588 (= e!1559579 tp!782257)))

(declare-fun b!2458587 () Bool)

(declare-fun tp!782258 () Bool)

(declare-fun tp!782260 () Bool)

(assert (=> b!2458587 (= e!1559579 (and tp!782258 tp!782260))))

(declare-fun b!2458589 () Bool)

(declare-fun tp!782259 () Bool)

(declare-fun tp!782256 () Bool)

(assert (=> b!2458589 (= e!1559579 (and tp!782259 tp!782256))))

(assert (=> b!2456548 (= tp!781345 e!1559579)))

(assert (= (and b!2456548 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458586))

(assert (= (and b!2456548 ((_ is Concat!11861) (regTwo!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458587))

(assert (= (and b!2456548 ((_ is Star!7225) (regTwo!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458588))

(assert (= (and b!2456548 ((_ is Union!7225) (regTwo!14962 (regTwo!14962 (h!33989 l!9164))))) b!2458589))

(declare-fun b!2458590 () Bool)

(declare-fun e!1559580 () Bool)

(assert (=> b!2458590 (= e!1559580 tp_is_empty!11863)))

(declare-fun b!2458592 () Bool)

(declare-fun tp!782262 () Bool)

(assert (=> b!2458592 (= e!1559580 tp!782262)))

(declare-fun b!2458591 () Bool)

(declare-fun tp!782263 () Bool)

(declare-fun tp!782265 () Bool)

(assert (=> b!2458591 (= e!1559580 (and tp!782263 tp!782265))))

(declare-fun b!2458593 () Bool)

(declare-fun tp!782264 () Bool)

(declare-fun tp!782261 () Bool)

(assert (=> b!2458593 (= e!1559580 (and tp!782264 tp!782261))))

(assert (=> b!2456557 (= tp!781352 e!1559580)))

(assert (= (and b!2456557 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14962 (reg!7554 r!13927))))) b!2458590))

(assert (= (and b!2456557 ((_ is Concat!11861) (reg!7554 (regTwo!14962 (reg!7554 r!13927))))) b!2458591))

(assert (= (and b!2456557 ((_ is Star!7225) (reg!7554 (regTwo!14962 (reg!7554 r!13927))))) b!2458592))

(assert (= (and b!2456557 ((_ is Union!7225) (reg!7554 (regTwo!14962 (reg!7554 r!13927))))) b!2458593))

(declare-fun b!2458594 () Bool)

(declare-fun e!1559581 () Bool)

(assert (=> b!2458594 (= e!1559581 tp_is_empty!11863)))

(declare-fun b!2458596 () Bool)

(declare-fun tp!782267 () Bool)

(assert (=> b!2458596 (= e!1559581 tp!782267)))

(declare-fun b!2458595 () Bool)

(declare-fun tp!782268 () Bool)

(declare-fun tp!782270 () Bool)

(assert (=> b!2458595 (= e!1559581 (and tp!782268 tp!782270))))

(declare-fun b!2458597 () Bool)

(declare-fun tp!782269 () Bool)

(declare-fun tp!782266 () Bool)

(assert (=> b!2458597 (= e!1559581 (and tp!782269 tp!782266))))

(assert (=> b!2456500 (= tp!781281 e!1559581)))

(assert (= (and b!2456500 ((_ is ElementMatch!7225) (reg!7554 (regOne!14962 (regOne!14962 r!13927))))) b!2458594))

(assert (= (and b!2456500 ((_ is Concat!11861) (reg!7554 (regOne!14962 (regOne!14962 r!13927))))) b!2458595))

(assert (= (and b!2456500 ((_ is Star!7225) (reg!7554 (regOne!14962 (regOne!14962 r!13927))))) b!2458596))

(assert (= (and b!2456500 ((_ is Union!7225) (reg!7554 (regOne!14962 (regOne!14962 r!13927))))) b!2458597))

(declare-fun b!2458598 () Bool)

(declare-fun e!1559582 () Bool)

(assert (=> b!2458598 (= e!1559582 tp_is_empty!11863)))

(declare-fun b!2458600 () Bool)

(declare-fun tp!782272 () Bool)

(assert (=> b!2458600 (= e!1559582 tp!782272)))

(declare-fun b!2458599 () Bool)

(declare-fun tp!782273 () Bool)

(declare-fun tp!782275 () Bool)

(assert (=> b!2458599 (= e!1559582 (and tp!782273 tp!782275))))

(declare-fun b!2458601 () Bool)

(declare-fun tp!782274 () Bool)

(declare-fun tp!782271 () Bool)

(assert (=> b!2458601 (= e!1559582 (and tp!782274 tp!782271))))

(assert (=> b!2456491 (= tp!781272 e!1559582)))

(assert (= (and b!2456491 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458598))

(assert (= (and b!2456491 ((_ is Concat!11861) (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458599))

(assert (= (and b!2456491 ((_ is Star!7225) (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458600))

(assert (= (and b!2456491 ((_ is Union!7225) (regOne!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458601))

(declare-fun b!2458602 () Bool)

(declare-fun e!1559583 () Bool)

(assert (=> b!2458602 (= e!1559583 tp_is_empty!11863)))

(declare-fun b!2458604 () Bool)

(declare-fun tp!782277 () Bool)

(assert (=> b!2458604 (= e!1559583 tp!782277)))

(declare-fun b!2458603 () Bool)

(declare-fun tp!782278 () Bool)

(declare-fun tp!782280 () Bool)

(assert (=> b!2458603 (= e!1559583 (and tp!782278 tp!782280))))

(declare-fun b!2458605 () Bool)

(declare-fun tp!782279 () Bool)

(declare-fun tp!782276 () Bool)

(assert (=> b!2458605 (= e!1559583 (and tp!782279 tp!782276))))

(assert (=> b!2456491 (= tp!781274 e!1559583)))

(assert (= (and b!2456491 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458602))

(assert (= (and b!2456491 ((_ is Concat!11861) (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458603))

(assert (= (and b!2456491 ((_ is Star!7225) (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458604))

(assert (= (and b!2456491 ((_ is Union!7225) (regTwo!14962 (regOne!14963 (regTwo!14963 r!13927))))) b!2458605))

(declare-fun b!2458606 () Bool)

(declare-fun e!1559584 () Bool)

(assert (=> b!2458606 (= e!1559584 tp_is_empty!11863)))

(declare-fun b!2458608 () Bool)

(declare-fun tp!782282 () Bool)

(assert (=> b!2458608 (= e!1559584 tp!782282)))

(declare-fun b!2458607 () Bool)

(declare-fun tp!782283 () Bool)

(declare-fun tp!782285 () Bool)

(assert (=> b!2458607 (= e!1559584 (and tp!782283 tp!782285))))

(declare-fun b!2458609 () Bool)

(declare-fun tp!782284 () Bool)

(declare-fun tp!782281 () Bool)

(assert (=> b!2458609 (= e!1559584 (and tp!782284 tp!782281))))

(assert (=> b!2456448 (= tp!781216 e!1559584)))

(assert (= (and b!2456448 ((_ is ElementMatch!7225) (reg!7554 (regOne!14963 (regOne!14963 r!13927))))) b!2458606))

(assert (= (and b!2456448 ((_ is Concat!11861) (reg!7554 (regOne!14963 (regOne!14963 r!13927))))) b!2458607))

(assert (= (and b!2456448 ((_ is Star!7225) (reg!7554 (regOne!14963 (regOne!14963 r!13927))))) b!2458608))

(assert (= (and b!2456448 ((_ is Union!7225) (reg!7554 (regOne!14963 (regOne!14963 r!13927))))) b!2458609))

(declare-fun b!2458610 () Bool)

(declare-fun e!1559585 () Bool)

(assert (=> b!2458610 (= e!1559585 tp_is_empty!11863)))

(declare-fun b!2458612 () Bool)

(declare-fun tp!782287 () Bool)

(assert (=> b!2458612 (= e!1559585 tp!782287)))

(declare-fun b!2458611 () Bool)

(declare-fun tp!782288 () Bool)

(declare-fun tp!782290 () Bool)

(assert (=> b!2458611 (= e!1559585 (and tp!782288 tp!782290))))

(declare-fun b!2458613 () Bool)

(declare-fun tp!782289 () Bool)

(declare-fun tp!782286 () Bool)

(assert (=> b!2458613 (= e!1559585 (and tp!782289 tp!782286))))

(assert (=> b!2456439 (= tp!781207 e!1559585)))

(assert (= (and b!2456439 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458610))

(assert (= (and b!2456439 ((_ is Concat!11861) (regOne!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458611))

(assert (= (and b!2456439 ((_ is Star!7225) (regOne!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458612))

(assert (= (and b!2456439 ((_ is Union!7225) (regOne!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458613))

(declare-fun b!2458614 () Bool)

(declare-fun e!1559586 () Bool)

(assert (=> b!2458614 (= e!1559586 tp_is_empty!11863)))

(declare-fun b!2458616 () Bool)

(declare-fun tp!782292 () Bool)

(assert (=> b!2458616 (= e!1559586 tp!782292)))

(declare-fun b!2458615 () Bool)

(declare-fun tp!782293 () Bool)

(declare-fun tp!782295 () Bool)

(assert (=> b!2458615 (= e!1559586 (and tp!782293 tp!782295))))

(declare-fun b!2458617 () Bool)

(declare-fun tp!782294 () Bool)

(declare-fun tp!782291 () Bool)

(assert (=> b!2458617 (= e!1559586 (and tp!782294 tp!782291))))

(assert (=> b!2456439 (= tp!781209 e!1559586)))

(assert (= (and b!2456439 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458614))

(assert (= (and b!2456439 ((_ is Concat!11861) (regTwo!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458615))

(assert (= (and b!2456439 ((_ is Star!7225) (regTwo!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458616))

(assert (= (and b!2456439 ((_ is Union!7225) (regTwo!14962 (regOne!14963 (regOne!14962 r!13927))))) b!2458617))

(declare-fun b!2458618 () Bool)

(declare-fun e!1559587 () Bool)

(assert (=> b!2458618 (= e!1559587 tp_is_empty!11863)))

(declare-fun b!2458620 () Bool)

(declare-fun tp!782297 () Bool)

(assert (=> b!2458620 (= e!1559587 tp!782297)))

(declare-fun b!2458619 () Bool)

(declare-fun tp!782298 () Bool)

(declare-fun tp!782300 () Bool)

(assert (=> b!2458619 (= e!1559587 (and tp!782298 tp!782300))))

(declare-fun b!2458621 () Bool)

(declare-fun tp!782299 () Bool)

(declare-fun tp!782296 () Bool)

(assert (=> b!2458621 (= e!1559587 (and tp!782299 tp!782296))))

(assert (=> b!2456457 (= tp!781228 e!1559587)))

(assert (= (and b!2456457 ((_ is ElementMatch!7225) (regOne!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458618))

(assert (= (and b!2456457 ((_ is Concat!11861) (regOne!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458619))

(assert (= (and b!2456457 ((_ is Star!7225) (regOne!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458620))

(assert (= (and b!2456457 ((_ is Union!7225) (regOne!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458621))

(declare-fun b!2458622 () Bool)

(declare-fun e!1559588 () Bool)

(assert (=> b!2458622 (= e!1559588 tp_is_empty!11863)))

(declare-fun b!2458624 () Bool)

(declare-fun tp!782302 () Bool)

(assert (=> b!2458624 (= e!1559588 tp!782302)))

(declare-fun b!2458623 () Bool)

(declare-fun tp!782303 () Bool)

(declare-fun tp!782305 () Bool)

(assert (=> b!2458623 (= e!1559588 (and tp!782303 tp!782305))))

(declare-fun b!2458625 () Bool)

(declare-fun tp!782304 () Bool)

(declare-fun tp!782301 () Bool)

(assert (=> b!2458625 (= e!1559588 (and tp!782304 tp!782301))))

(assert (=> b!2456457 (= tp!781225 e!1559588)))

(assert (= (and b!2456457 ((_ is ElementMatch!7225) (regTwo!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458622))

(assert (= (and b!2456457 ((_ is Concat!11861) (regTwo!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458623))

(assert (= (and b!2456457 ((_ is Star!7225) (regTwo!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458624))

(assert (= (and b!2456457 ((_ is Union!7225) (regTwo!14963 (reg!7554 (regTwo!14962 r!13927))))) b!2458625))

(declare-fun b!2458626 () Bool)

(declare-fun e!1559589 () Bool)

(assert (=> b!2458626 (= e!1559589 tp_is_empty!11863)))

(declare-fun b!2458628 () Bool)

(declare-fun tp!782307 () Bool)

(assert (=> b!2458628 (= e!1559589 tp!782307)))

(declare-fun b!2458627 () Bool)

(declare-fun tp!782308 () Bool)

(declare-fun tp!782310 () Bool)

(assert (=> b!2458627 (= e!1559589 (and tp!782308 tp!782310))))

(declare-fun b!2458629 () Bool)

(declare-fun tp!782309 () Bool)

(declare-fun tp!782306 () Bool)

(assert (=> b!2458629 (= e!1559589 (and tp!782309 tp!782306))))

(assert (=> b!2456516 (= tp!781303 e!1559589)))

(assert (= (and b!2456516 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458626))

(assert (= (and b!2456516 ((_ is Concat!11861) (regOne!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458627))

(assert (= (and b!2456516 ((_ is Star!7225) (regOne!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458628))

(assert (= (and b!2456516 ((_ is Union!7225) (regOne!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458629))

(declare-fun b!2458630 () Bool)

(declare-fun e!1559590 () Bool)

(assert (=> b!2458630 (= e!1559590 tp_is_empty!11863)))

(declare-fun b!2458632 () Bool)

(declare-fun tp!782312 () Bool)

(assert (=> b!2458632 (= e!1559590 tp!782312)))

(declare-fun b!2458631 () Bool)

(declare-fun tp!782313 () Bool)

(declare-fun tp!782315 () Bool)

(assert (=> b!2458631 (= e!1559590 (and tp!782313 tp!782315))))

(declare-fun b!2458633 () Bool)

(declare-fun tp!782314 () Bool)

(declare-fun tp!782311 () Bool)

(assert (=> b!2458633 (= e!1559590 (and tp!782314 tp!782311))))

(assert (=> b!2456516 (= tp!781305 e!1559590)))

(assert (= (and b!2456516 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458630))

(assert (= (and b!2456516 ((_ is Concat!11861) (regTwo!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458631))

(assert (= (and b!2456516 ((_ is Star!7225) (regTwo!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458632))

(assert (= (and b!2456516 ((_ is Union!7225) (regTwo!14962 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458633))

(declare-fun b!2458634 () Bool)

(declare-fun e!1559591 () Bool)

(assert (=> b!2458634 (= e!1559591 tp_is_empty!11863)))

(declare-fun b!2458636 () Bool)

(declare-fun tp!782317 () Bool)

(assert (=> b!2458636 (= e!1559591 tp!782317)))

(declare-fun b!2458635 () Bool)

(declare-fun tp!782318 () Bool)

(declare-fun tp!782320 () Bool)

(assert (=> b!2458635 (= e!1559591 (and tp!782318 tp!782320))))

(declare-fun b!2458637 () Bool)

(declare-fun tp!782319 () Bool)

(declare-fun tp!782316 () Bool)

(assert (=> b!2458637 (= e!1559591 (and tp!782319 tp!782316))))

(assert (=> b!2456509 (= tp!781293 e!1559591)))

(assert (= (and b!2456509 ((_ is ElementMatch!7225) (regOne!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458634))

(assert (= (and b!2456509 ((_ is Concat!11861) (regOne!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458635))

(assert (= (and b!2456509 ((_ is Star!7225) (regOne!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458636))

(assert (= (and b!2456509 ((_ is Union!7225) (regOne!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458637))

(declare-fun b!2458638 () Bool)

(declare-fun e!1559592 () Bool)

(assert (=> b!2458638 (= e!1559592 tp_is_empty!11863)))

(declare-fun b!2458640 () Bool)

(declare-fun tp!782322 () Bool)

(assert (=> b!2458640 (= e!1559592 tp!782322)))

(declare-fun b!2458639 () Bool)

(declare-fun tp!782323 () Bool)

(declare-fun tp!782325 () Bool)

(assert (=> b!2458639 (= e!1559592 (and tp!782323 tp!782325))))

(declare-fun b!2458641 () Bool)

(declare-fun tp!782324 () Bool)

(declare-fun tp!782321 () Bool)

(assert (=> b!2458641 (= e!1559592 (and tp!782324 tp!782321))))

(assert (=> b!2456509 (= tp!781290 e!1559592)))

(assert (= (and b!2456509 ((_ is ElementMatch!7225) (regTwo!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458638))

(assert (= (and b!2456509 ((_ is Concat!11861) (regTwo!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458639))

(assert (= (and b!2456509 ((_ is Star!7225) (regTwo!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458640))

(assert (= (and b!2456509 ((_ is Union!7225) (regTwo!14963 (reg!7554 (regOne!14963 r!13927))))) b!2458641))

(declare-fun b!2458642 () Bool)

(declare-fun e!1559593 () Bool)

(assert (=> b!2458642 (= e!1559593 tp_is_empty!11863)))

(declare-fun b!2458644 () Bool)

(declare-fun tp!782327 () Bool)

(assert (=> b!2458644 (= e!1559593 tp!782327)))

(declare-fun b!2458643 () Bool)

(declare-fun tp!782328 () Bool)

(declare-fun tp!782330 () Bool)

(assert (=> b!2458643 (= e!1559593 (and tp!782328 tp!782330))))

(declare-fun b!2458645 () Bool)

(declare-fun tp!782329 () Bool)

(declare-fun tp!782326 () Bool)

(assert (=> b!2458645 (= e!1559593 (and tp!782329 tp!782326))))

(assert (=> b!2456534 (= tp!781324 e!1559593)))

(assert (= (and b!2456534 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 (h!33989 l!9164))))) b!2458642))

(assert (= (and b!2456534 ((_ is Concat!11861) (regOne!14963 (regOne!14963 (h!33989 l!9164))))) b!2458643))

(assert (= (and b!2456534 ((_ is Star!7225) (regOne!14963 (regOne!14963 (h!33989 l!9164))))) b!2458644))

(assert (= (and b!2456534 ((_ is Union!7225) (regOne!14963 (regOne!14963 (h!33989 l!9164))))) b!2458645))

(declare-fun b!2458646 () Bool)

(declare-fun e!1559594 () Bool)

(assert (=> b!2458646 (= e!1559594 tp_is_empty!11863)))

(declare-fun b!2458648 () Bool)

(declare-fun tp!782332 () Bool)

(assert (=> b!2458648 (= e!1559594 tp!782332)))

(declare-fun b!2458647 () Bool)

(declare-fun tp!782333 () Bool)

(declare-fun tp!782335 () Bool)

(assert (=> b!2458647 (= e!1559594 (and tp!782333 tp!782335))))

(declare-fun b!2458649 () Bool)

(declare-fun tp!782334 () Bool)

(declare-fun tp!782331 () Bool)

(assert (=> b!2458649 (= e!1559594 (and tp!782334 tp!782331))))

(assert (=> b!2456534 (= tp!781321 e!1559594)))

(assert (= (and b!2456534 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 (h!33989 l!9164))))) b!2458646))

(assert (= (and b!2456534 ((_ is Concat!11861) (regTwo!14963 (regOne!14963 (h!33989 l!9164))))) b!2458647))

(assert (= (and b!2456534 ((_ is Star!7225) (regTwo!14963 (regOne!14963 (h!33989 l!9164))))) b!2458648))

(assert (= (and b!2456534 ((_ is Union!7225) (regTwo!14963 (regOne!14963 (h!33989 l!9164))))) b!2458649))

(declare-fun b!2458650 () Bool)

(declare-fun e!1559595 () Bool)

(assert (=> b!2458650 (= e!1559595 tp_is_empty!11863)))

(declare-fun b!2458652 () Bool)

(declare-fun tp!782337 () Bool)

(assert (=> b!2458652 (= e!1559595 tp!782337)))

(declare-fun b!2458651 () Bool)

(declare-fun tp!782338 () Bool)

(declare-fun tp!782340 () Bool)

(assert (=> b!2458651 (= e!1559595 (and tp!782338 tp!782340))))

(declare-fun b!2458653 () Bool)

(declare-fun tp!782339 () Bool)

(declare-fun tp!782336 () Bool)

(assert (=> b!2458653 (= e!1559595 (and tp!782339 tp!782336))))

(assert (=> b!2456525 (= tp!781312 e!1559595)))

(assert (= (and b!2456525 ((_ is ElementMatch!7225) (reg!7554 (regOne!14962 (regOne!14963 r!13927))))) b!2458650))

(assert (= (and b!2456525 ((_ is Concat!11861) (reg!7554 (regOne!14962 (regOne!14963 r!13927))))) b!2458651))

(assert (= (and b!2456525 ((_ is Star!7225) (reg!7554 (regOne!14962 (regOne!14963 r!13927))))) b!2458652))

(assert (= (and b!2456525 ((_ is Union!7225) (reg!7554 (regOne!14962 (regOne!14963 r!13927))))) b!2458653))

(declare-fun b!2458654 () Bool)

(declare-fun e!1559596 () Bool)

(assert (=> b!2458654 (= e!1559596 tp_is_empty!11863)))

(declare-fun b!2458656 () Bool)

(declare-fun tp!782342 () Bool)

(assert (=> b!2458656 (= e!1559596 tp!782342)))

(declare-fun b!2458655 () Bool)

(declare-fun tp!782343 () Bool)

(declare-fun tp!782345 () Bool)

(assert (=> b!2458655 (= e!1559596 (and tp!782343 tp!782345))))

(declare-fun b!2458657 () Bool)

(declare-fun tp!782344 () Bool)

(declare-fun tp!782341 () Bool)

(assert (=> b!2458657 (= e!1559596 (and tp!782344 tp!782341))))

(assert (=> b!2456461 (= tp!781233 e!1559596)))

(assert (= (and b!2456461 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458654))

(assert (= (and b!2456461 ((_ is Concat!11861) (regOne!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458655))

(assert (= (and b!2456461 ((_ is Star!7225) (regOne!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458656))

(assert (= (and b!2456461 ((_ is Union!7225) (regOne!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458657))

(declare-fun b!2458658 () Bool)

(declare-fun e!1559597 () Bool)

(assert (=> b!2458658 (= e!1559597 tp_is_empty!11863)))

(declare-fun b!2458660 () Bool)

(declare-fun tp!782347 () Bool)

(assert (=> b!2458660 (= e!1559597 tp!782347)))

(declare-fun b!2458659 () Bool)

(declare-fun tp!782348 () Bool)

(declare-fun tp!782350 () Bool)

(assert (=> b!2458659 (= e!1559597 (and tp!782348 tp!782350))))

(declare-fun b!2458661 () Bool)

(declare-fun tp!782349 () Bool)

(declare-fun tp!782346 () Bool)

(assert (=> b!2458661 (= e!1559597 (and tp!782349 tp!782346))))

(assert (=> b!2456461 (= tp!781230 e!1559597)))

(assert (= (and b!2456461 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458658))

(assert (= (and b!2456461 ((_ is Concat!11861) (regTwo!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458659))

(assert (= (and b!2456461 ((_ is Star!7225) (regTwo!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458660))

(assert (= (and b!2456461 ((_ is Union!7225) (regTwo!14963 (regOne!14963 (regTwo!14962 r!13927))))) b!2458661))

(declare-fun b!2458662 () Bool)

(declare-fun e!1559598 () Bool)

(assert (=> b!2458662 (= e!1559598 tp_is_empty!11863)))

(declare-fun b!2458664 () Bool)

(declare-fun tp!782352 () Bool)

(assert (=> b!2458664 (= e!1559598 tp!782352)))

(declare-fun b!2458663 () Bool)

(declare-fun tp!782353 () Bool)

(declare-fun tp!782355 () Bool)

(assert (=> b!2458663 (= e!1559598 (and tp!782353 tp!782355))))

(declare-fun b!2458665 () Bool)

(declare-fun tp!782354 () Bool)

(declare-fun tp!782351 () Bool)

(assert (=> b!2458665 (= e!1559598 (and tp!782354 tp!782351))))

(assert (=> b!2456484 (= tp!781261 e!1559598)))

(assert (= (and b!2456484 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14963 (reg!7554 r!13927))))) b!2458662))

(assert (= (and b!2456484 ((_ is Concat!11861) (reg!7554 (regTwo!14963 (reg!7554 r!13927))))) b!2458663))

(assert (= (and b!2456484 ((_ is Star!7225) (reg!7554 (regTwo!14963 (reg!7554 r!13927))))) b!2458664))

(assert (= (and b!2456484 ((_ is Union!7225) (reg!7554 (regTwo!14963 (reg!7554 r!13927))))) b!2458665))

(declare-fun b!2458666 () Bool)

(declare-fun e!1559599 () Bool)

(assert (=> b!2458666 (= e!1559599 tp_is_empty!11863)))

(declare-fun b!2458668 () Bool)

(declare-fun tp!782357 () Bool)

(assert (=> b!2458668 (= e!1559599 tp!782357)))

(declare-fun b!2458667 () Bool)

(declare-fun tp!782358 () Bool)

(declare-fun tp!782360 () Bool)

(assert (=> b!2458667 (= e!1559599 (and tp!782358 tp!782360))))

(declare-fun b!2458669 () Bool)

(declare-fun tp!782359 () Bool)

(declare-fun tp!782356 () Bool)

(assert (=> b!2458669 (= e!1559599 (and tp!782359 tp!782356))))

(assert (=> b!2456475 (= tp!781252 e!1559599)))

(assert (= (and b!2456475 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458666))

(assert (= (and b!2456475 ((_ is Concat!11861) (regOne!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458667))

(assert (= (and b!2456475 ((_ is Star!7225) (regOne!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458668))

(assert (= (and b!2456475 ((_ is Union!7225) (regOne!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458669))

(declare-fun b!2458670 () Bool)

(declare-fun e!1559600 () Bool)

(assert (=> b!2458670 (= e!1559600 tp_is_empty!11863)))

(declare-fun b!2458672 () Bool)

(declare-fun tp!782362 () Bool)

(assert (=> b!2458672 (= e!1559600 tp!782362)))

(declare-fun b!2458671 () Bool)

(declare-fun tp!782363 () Bool)

(declare-fun tp!782365 () Bool)

(assert (=> b!2458671 (= e!1559600 (and tp!782363 tp!782365))))

(declare-fun b!2458673 () Bool)

(declare-fun tp!782364 () Bool)

(declare-fun tp!782361 () Bool)

(assert (=> b!2458673 (= e!1559600 (and tp!782364 tp!782361))))

(assert (=> b!2456475 (= tp!781254 e!1559600)))

(assert (= (and b!2456475 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458670))

(assert (= (and b!2456475 ((_ is Concat!11861) (regTwo!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458671))

(assert (= (and b!2456475 ((_ is Star!7225) (regTwo!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458672))

(assert (= (and b!2456475 ((_ is Union!7225) (regTwo!14962 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458673))

(declare-fun b!2458674 () Bool)

(declare-fun e!1559601 () Bool)

(assert (=> b!2458674 (= e!1559601 tp_is_empty!11863)))

(declare-fun b!2458676 () Bool)

(declare-fun tp!782367 () Bool)

(assert (=> b!2458676 (= e!1559601 tp!782367)))

(declare-fun b!2458675 () Bool)

(declare-fun tp!782368 () Bool)

(declare-fun tp!782370 () Bool)

(assert (=> b!2458675 (= e!1559601 (and tp!782368 tp!782370))))

(declare-fun b!2458677 () Bool)

(declare-fun tp!782369 () Bool)

(declare-fun tp!782366 () Bool)

(assert (=> b!2458677 (= e!1559601 (and tp!782369 tp!782366))))

(assert (=> b!2456552 (= tp!781348 e!1559601)))

(assert (= (and b!2456552 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458674))

(assert (= (and b!2456552 ((_ is Concat!11861) (regOne!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458675))

(assert (= (and b!2456552 ((_ is Star!7225) (regOne!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458676))

(assert (= (and b!2456552 ((_ is Union!7225) (regOne!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458677))

(declare-fun b!2458678 () Bool)

(declare-fun e!1559602 () Bool)

(assert (=> b!2458678 (= e!1559602 tp_is_empty!11863)))

(declare-fun b!2458680 () Bool)

(declare-fun tp!782372 () Bool)

(assert (=> b!2458680 (= e!1559602 tp!782372)))

(declare-fun b!2458679 () Bool)

(declare-fun tp!782373 () Bool)

(declare-fun tp!782375 () Bool)

(assert (=> b!2458679 (= e!1559602 (and tp!782373 tp!782375))))

(declare-fun b!2458681 () Bool)

(declare-fun tp!782374 () Bool)

(declare-fun tp!782371 () Bool)

(assert (=> b!2458681 (= e!1559602 (and tp!782374 tp!782371))))

(assert (=> b!2456552 (= tp!781350 e!1559602)))

(assert (= (and b!2456552 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458678))

(assert (= (and b!2456552 ((_ is Concat!11861) (regTwo!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458679))

(assert (= (and b!2456552 ((_ is Star!7225) (regTwo!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458680))

(assert (= (and b!2456552 ((_ is Union!7225) (regTwo!14962 (regOne!14962 (reg!7554 r!13927))))) b!2458681))

(declare-fun b!2458682 () Bool)

(declare-fun e!1559603 () Bool)

(assert (=> b!2458682 (= e!1559603 tp_is_empty!11863)))

(declare-fun b!2458684 () Bool)

(declare-fun tp!782377 () Bool)

(assert (=> b!2458684 (= e!1559603 tp!782377)))

(declare-fun b!2458683 () Bool)

(declare-fun tp!782378 () Bool)

(declare-fun tp!782380 () Bool)

(assert (=> b!2458683 (= e!1559603 (and tp!782378 tp!782380))))

(declare-fun b!2458685 () Bool)

(declare-fun tp!782379 () Bool)

(declare-fun tp!782376 () Bool)

(assert (=> b!2458685 (= e!1559603 (and tp!782379 tp!782376))))

(assert (=> b!2456538 (= tp!781329 e!1559603)))

(assert (= (and b!2456538 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458682))

(assert (= (and b!2456538 ((_ is Concat!11861) (regOne!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458683))

(assert (= (and b!2456538 ((_ is Star!7225) (regOne!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458684))

(assert (= (and b!2456538 ((_ is Union!7225) (regOne!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458685))

(declare-fun b!2458686 () Bool)

(declare-fun e!1559604 () Bool)

(assert (=> b!2458686 (= e!1559604 tp_is_empty!11863)))

(declare-fun b!2458688 () Bool)

(declare-fun tp!782382 () Bool)

(assert (=> b!2458688 (= e!1559604 tp!782382)))

(declare-fun b!2458687 () Bool)

(declare-fun tp!782383 () Bool)

(declare-fun tp!782385 () Bool)

(assert (=> b!2458687 (= e!1559604 (and tp!782383 tp!782385))))

(declare-fun b!2458689 () Bool)

(declare-fun tp!782384 () Bool)

(declare-fun tp!782381 () Bool)

(assert (=> b!2458689 (= e!1559604 (and tp!782384 tp!782381))))

(assert (=> b!2456538 (= tp!781326 e!1559604)))

(assert (= (and b!2456538 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458686))

(assert (= (and b!2456538 ((_ is Concat!11861) (regTwo!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458687))

(assert (= (and b!2456538 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458688))

(assert (= (and b!2456538 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 (h!33989 l!9164))))) b!2458689))

(declare-fun b!2458690 () Bool)

(declare-fun e!1559605 () Bool)

(assert (=> b!2458690 (= e!1559605 tp_is_empty!11863)))

(declare-fun b!2458692 () Bool)

(declare-fun tp!782387 () Bool)

(assert (=> b!2458692 (= e!1559605 tp!782387)))

(declare-fun b!2458691 () Bool)

(declare-fun tp!782388 () Bool)

(declare-fun tp!782390 () Bool)

(assert (=> b!2458691 (= e!1559605 (and tp!782388 tp!782390))))

(declare-fun b!2458693 () Bool)

(declare-fun tp!782389 () Bool)

(declare-fun tp!782386 () Bool)

(assert (=> b!2458693 (= e!1559605 (and tp!782389 tp!782386))))

(assert (=> b!2456529 (= tp!781317 e!1559605)))

(assert (= (and b!2456529 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14962 (regOne!14963 r!13927))))) b!2458690))

(assert (= (and b!2456529 ((_ is Concat!11861) (reg!7554 (regTwo!14962 (regOne!14963 r!13927))))) b!2458691))

(assert (= (and b!2456529 ((_ is Star!7225) (reg!7554 (regTwo!14962 (regOne!14963 r!13927))))) b!2458692))

(assert (= (and b!2456529 ((_ is Union!7225) (reg!7554 (regTwo!14962 (regOne!14963 r!13927))))) b!2458693))

(declare-fun b!2458694 () Bool)

(declare-fun e!1559606 () Bool)

(assert (=> b!2458694 (= e!1559606 tp_is_empty!11863)))

(declare-fun b!2458696 () Bool)

(declare-fun tp!782392 () Bool)

(assert (=> b!2458696 (= e!1559606 tp!782392)))

(declare-fun b!2458695 () Bool)

(declare-fun tp!782393 () Bool)

(declare-fun tp!782395 () Bool)

(assert (=> b!2458695 (= e!1559606 (and tp!782393 tp!782395))))

(declare-fun b!2458697 () Bool)

(declare-fun tp!782394 () Bool)

(declare-fun tp!782391 () Bool)

(assert (=> b!2458697 (= e!1559606 (and tp!782394 tp!782391))))

(assert (=> b!2456452 (= tp!781221 e!1559606)))

(assert (= (and b!2456452 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14963 (regOne!14963 r!13927))))) b!2458694))

(assert (= (and b!2456452 ((_ is Concat!11861) (reg!7554 (regTwo!14963 (regOne!14963 r!13927))))) b!2458695))

(assert (= (and b!2456452 ((_ is Star!7225) (reg!7554 (regTwo!14963 (regOne!14963 r!13927))))) b!2458696))

(assert (= (and b!2456452 ((_ is Union!7225) (reg!7554 (regTwo!14963 (regOne!14963 r!13927))))) b!2458697))

(declare-fun b!2458698 () Bool)

(declare-fun e!1559607 () Bool)

(assert (=> b!2458698 (= e!1559607 tp_is_empty!11863)))

(declare-fun b!2458700 () Bool)

(declare-fun tp!782397 () Bool)

(assert (=> b!2458700 (= e!1559607 tp!782397)))

(declare-fun b!2458699 () Bool)

(declare-fun tp!782398 () Bool)

(declare-fun tp!782400 () Bool)

(assert (=> b!2458699 (= e!1559607 (and tp!782398 tp!782400))))

(declare-fun b!2458701 () Bool)

(declare-fun tp!782399 () Bool)

(declare-fun tp!782396 () Bool)

(assert (=> b!2458701 (= e!1559607 (and tp!782399 tp!782396))))

(assert (=> b!2456443 (= tp!781212 e!1559607)))

(assert (= (and b!2456443 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458698))

(assert (= (and b!2456443 ((_ is Concat!11861) (regOne!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458699))

(assert (= (and b!2456443 ((_ is Star!7225) (regOne!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458700))

(assert (= (and b!2456443 ((_ is Union!7225) (regOne!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458701))

(declare-fun b!2458702 () Bool)

(declare-fun e!1559608 () Bool)

(assert (=> b!2458702 (= e!1559608 tp_is_empty!11863)))

(declare-fun b!2458704 () Bool)

(declare-fun tp!782402 () Bool)

(assert (=> b!2458704 (= e!1559608 tp!782402)))

(declare-fun b!2458703 () Bool)

(declare-fun tp!782403 () Bool)

(declare-fun tp!782405 () Bool)

(assert (=> b!2458703 (= e!1559608 (and tp!782403 tp!782405))))

(declare-fun b!2458705 () Bool)

(declare-fun tp!782404 () Bool)

(declare-fun tp!782401 () Bool)

(assert (=> b!2458705 (= e!1559608 (and tp!782404 tp!782401))))

(assert (=> b!2456443 (= tp!781214 e!1559608)))

(assert (= (and b!2456443 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458702))

(assert (= (and b!2456443 ((_ is Concat!11861) (regTwo!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458703))

(assert (= (and b!2456443 ((_ is Star!7225) (regTwo!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458704))

(assert (= (and b!2456443 ((_ is Union!7225) (regTwo!14962 (regTwo!14963 (regOne!14962 r!13927))))) b!2458705))

(declare-fun b!2458706 () Bool)

(declare-fun e!1559609 () Bool)

(assert (=> b!2458706 (= e!1559609 tp_is_empty!11863)))

(declare-fun b!2458708 () Bool)

(declare-fun tp!782407 () Bool)

(assert (=> b!2458708 (= e!1559609 tp!782407)))

(declare-fun b!2458707 () Bool)

(declare-fun tp!782408 () Bool)

(declare-fun tp!782410 () Bool)

(assert (=> b!2458707 (= e!1559609 (and tp!782408 tp!782410))))

(declare-fun b!2458709 () Bool)

(declare-fun tp!782409 () Bool)

(declare-fun tp!782406 () Bool)

(assert (=> b!2458709 (= e!1559609 (and tp!782409 tp!782406))))

(assert (=> b!2456504 (= tp!781286 e!1559609)))

(assert (= (and b!2456504 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14962 (regOne!14962 r!13927))))) b!2458706))

(assert (= (and b!2456504 ((_ is Concat!11861) (reg!7554 (regTwo!14962 (regOne!14962 r!13927))))) b!2458707))

(assert (= (and b!2456504 ((_ is Star!7225) (reg!7554 (regTwo!14962 (regOne!14962 r!13927))))) b!2458708))

(assert (= (and b!2456504 ((_ is Union!7225) (reg!7554 (regTwo!14962 (regOne!14962 r!13927))))) b!2458709))

(declare-fun b!2458710 () Bool)

(declare-fun e!1559610 () Bool)

(assert (=> b!2458710 (= e!1559610 tp_is_empty!11863)))

(declare-fun b!2458712 () Bool)

(declare-fun tp!782412 () Bool)

(assert (=> b!2458712 (= e!1559610 tp!782412)))

(declare-fun b!2458711 () Bool)

(declare-fun tp!782413 () Bool)

(declare-fun tp!782415 () Bool)

(assert (=> b!2458711 (= e!1559610 (and tp!782413 tp!782415))))

(declare-fun b!2458713 () Bool)

(declare-fun tp!782414 () Bool)

(declare-fun tp!782411 () Bool)

(assert (=> b!2458713 (= e!1559610 (and tp!782414 tp!782411))))

(assert (=> b!2456495 (= tp!781277 e!1559610)))

(assert (= (and b!2456495 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458710))

(assert (= (and b!2456495 ((_ is Concat!11861) (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458711))

(assert (= (and b!2456495 ((_ is Star!7225) (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458712))

(assert (= (and b!2456495 ((_ is Union!7225) (regOne!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458713))

(declare-fun b!2458714 () Bool)

(declare-fun e!1559611 () Bool)

(assert (=> b!2458714 (= e!1559611 tp_is_empty!11863)))

(declare-fun b!2458716 () Bool)

(declare-fun tp!782417 () Bool)

(assert (=> b!2458716 (= e!1559611 tp!782417)))

(declare-fun b!2458715 () Bool)

(declare-fun tp!782418 () Bool)

(declare-fun tp!782420 () Bool)

(assert (=> b!2458715 (= e!1559611 (and tp!782418 tp!782420))))

(declare-fun b!2458717 () Bool)

(declare-fun tp!782419 () Bool)

(declare-fun tp!782416 () Bool)

(assert (=> b!2458717 (= e!1559611 (and tp!782419 tp!782416))))

(assert (=> b!2456495 (= tp!781279 e!1559611)))

(assert (= (and b!2456495 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458714))

(assert (= (and b!2456495 ((_ is Concat!11861) (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458715))

(assert (= (and b!2456495 ((_ is Star!7225) (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458716))

(assert (= (and b!2456495 ((_ is Union!7225) (regTwo!14962 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458717))

(declare-fun b!2458718 () Bool)

(declare-fun e!1559612 () Bool)

(assert (=> b!2458718 (= e!1559612 tp_is_empty!11863)))

(declare-fun b!2458720 () Bool)

(declare-fun tp!782422 () Bool)

(assert (=> b!2458720 (= e!1559612 tp!782422)))

(declare-fun b!2458719 () Bool)

(declare-fun tp!782423 () Bool)

(declare-fun tp!782425 () Bool)

(assert (=> b!2458719 (= e!1559612 (and tp!782423 tp!782425))))

(declare-fun b!2458721 () Bool)

(declare-fun tp!782424 () Bool)

(declare-fun tp!782421 () Bool)

(assert (=> b!2458721 (= e!1559612 (and tp!782424 tp!782421))))

(assert (=> b!2456520 (= tp!781308 e!1559612)))

(assert (= (and b!2456520 ((_ is ElementMatch!7225) (regOne!14962 (reg!7554 (h!33989 l!9164))))) b!2458718))

(assert (= (and b!2456520 ((_ is Concat!11861) (regOne!14962 (reg!7554 (h!33989 l!9164))))) b!2458719))

(assert (= (and b!2456520 ((_ is Star!7225) (regOne!14962 (reg!7554 (h!33989 l!9164))))) b!2458720))

(assert (= (and b!2456520 ((_ is Union!7225) (regOne!14962 (reg!7554 (h!33989 l!9164))))) b!2458721))

(declare-fun b!2458722 () Bool)

(declare-fun e!1559613 () Bool)

(assert (=> b!2458722 (= e!1559613 tp_is_empty!11863)))

(declare-fun b!2458724 () Bool)

(declare-fun tp!782427 () Bool)

(assert (=> b!2458724 (= e!1559613 tp!782427)))

(declare-fun b!2458723 () Bool)

(declare-fun tp!782428 () Bool)

(declare-fun tp!782430 () Bool)

(assert (=> b!2458723 (= e!1559613 (and tp!782428 tp!782430))))

(declare-fun b!2458725 () Bool)

(declare-fun tp!782429 () Bool)

(declare-fun tp!782426 () Bool)

(assert (=> b!2458725 (= e!1559613 (and tp!782429 tp!782426))))

(assert (=> b!2456520 (= tp!781310 e!1559613)))

(assert (= (and b!2456520 ((_ is ElementMatch!7225) (regTwo!14962 (reg!7554 (h!33989 l!9164))))) b!2458722))

(assert (= (and b!2456520 ((_ is Concat!11861) (regTwo!14962 (reg!7554 (h!33989 l!9164))))) b!2458723))

(assert (= (and b!2456520 ((_ is Star!7225) (regTwo!14962 (reg!7554 (h!33989 l!9164))))) b!2458724))

(assert (= (and b!2456520 ((_ is Union!7225) (regTwo!14962 (reg!7554 (h!33989 l!9164))))) b!2458725))

(declare-fun b!2458726 () Bool)

(declare-fun e!1559614 () Bool)

(assert (=> b!2458726 (= e!1559614 tp_is_empty!11863)))

(declare-fun b!2458728 () Bool)

(declare-fun tp!782432 () Bool)

(assert (=> b!2458728 (= e!1559614 tp!782432)))

(declare-fun b!2458727 () Bool)

(declare-fun tp!782433 () Bool)

(declare-fun tp!782435 () Bool)

(assert (=> b!2458727 (= e!1559614 (and tp!782433 tp!782435))))

(declare-fun b!2458729 () Bool)

(declare-fun tp!782434 () Bool)

(declare-fun tp!782431 () Bool)

(assert (=> b!2458729 (= e!1559614 (and tp!782434 tp!782431))))

(assert (=> b!2456540 (= tp!781333 e!1559614)))

(assert (= (and b!2456540 ((_ is ElementMatch!7225) (regOne!14962 (reg!7554 (reg!7554 r!13927))))) b!2458726))

(assert (= (and b!2456540 ((_ is Concat!11861) (regOne!14962 (reg!7554 (reg!7554 r!13927))))) b!2458727))

(assert (= (and b!2456540 ((_ is Star!7225) (regOne!14962 (reg!7554 (reg!7554 r!13927))))) b!2458728))

(assert (= (and b!2456540 ((_ is Union!7225) (regOne!14962 (reg!7554 (reg!7554 r!13927))))) b!2458729))

(declare-fun b!2458730 () Bool)

(declare-fun e!1559615 () Bool)

(assert (=> b!2458730 (= e!1559615 tp_is_empty!11863)))

(declare-fun b!2458732 () Bool)

(declare-fun tp!782437 () Bool)

(assert (=> b!2458732 (= e!1559615 tp!782437)))

(declare-fun b!2458731 () Bool)

(declare-fun tp!782438 () Bool)

(declare-fun tp!782440 () Bool)

(assert (=> b!2458731 (= e!1559615 (and tp!782438 tp!782440))))

(declare-fun b!2458733 () Bool)

(declare-fun tp!782439 () Bool)

(declare-fun tp!782436 () Bool)

(assert (=> b!2458733 (= e!1559615 (and tp!782439 tp!782436))))

(assert (=> b!2456540 (= tp!781335 e!1559615)))

(assert (= (and b!2456540 ((_ is ElementMatch!7225) (regTwo!14962 (reg!7554 (reg!7554 r!13927))))) b!2458730))

(assert (= (and b!2456540 ((_ is Concat!11861) (regTwo!14962 (reg!7554 (reg!7554 r!13927))))) b!2458731))

(assert (= (and b!2456540 ((_ is Star!7225) (regTwo!14962 (reg!7554 (reg!7554 r!13927))))) b!2458732))

(assert (= (and b!2456540 ((_ is Union!7225) (regTwo!14962 (reg!7554 (reg!7554 r!13927))))) b!2458733))

(declare-fun b!2458734 () Bool)

(declare-fun e!1559616 () Bool)

(assert (=> b!2458734 (= e!1559616 tp_is_empty!11863)))

(declare-fun b!2458736 () Bool)

(declare-fun tp!782442 () Bool)

(assert (=> b!2458736 (= e!1559616 tp!782442)))

(declare-fun b!2458735 () Bool)

(declare-fun tp!782443 () Bool)

(declare-fun tp!782445 () Bool)

(assert (=> b!2458735 (= e!1559616 (and tp!782443 tp!782445))))

(declare-fun b!2458737 () Bool)

(declare-fun tp!782444 () Bool)

(declare-fun tp!782441 () Bool)

(assert (=> b!2458737 (= e!1559616 (and tp!782444 tp!782441))))

(assert (=> b!2456558 (= tp!781354 e!1559616)))

(assert (= (and b!2456558 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458734))

(assert (= (and b!2456558 ((_ is Concat!11861) (regOne!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458735))

(assert (= (and b!2456558 ((_ is Star!7225) (regOne!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458736))

(assert (= (and b!2456558 ((_ is Union!7225) (regOne!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458737))

(declare-fun b!2458738 () Bool)

(declare-fun e!1559617 () Bool)

(assert (=> b!2458738 (= e!1559617 tp_is_empty!11863)))

(declare-fun b!2458740 () Bool)

(declare-fun tp!782447 () Bool)

(assert (=> b!2458740 (= e!1559617 tp!782447)))

(declare-fun b!2458739 () Bool)

(declare-fun tp!782448 () Bool)

(declare-fun tp!782450 () Bool)

(assert (=> b!2458739 (= e!1559617 (and tp!782448 tp!782450))))

(declare-fun b!2458741 () Bool)

(declare-fun tp!782449 () Bool)

(declare-fun tp!782446 () Bool)

(assert (=> b!2458741 (= e!1559617 (and tp!782449 tp!782446))))

(assert (=> b!2456558 (= tp!781351 e!1559617)))

(assert (= (and b!2456558 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458738))

(assert (= (and b!2456558 ((_ is Concat!11861) (regTwo!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458739))

(assert (= (and b!2456558 ((_ is Star!7225) (regTwo!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458740))

(assert (= (and b!2456558 ((_ is Union!7225) (regTwo!14963 (regTwo!14962 (reg!7554 r!13927))))) b!2458741))

(declare-fun b!2458742 () Bool)

(declare-fun e!1559618 () Bool)

(assert (=> b!2458742 (= e!1559618 tp_is_empty!11863)))

(declare-fun b!2458744 () Bool)

(declare-fun tp!782452 () Bool)

(assert (=> b!2458744 (= e!1559618 tp!782452)))

(declare-fun b!2458743 () Bool)

(declare-fun tp!782453 () Bool)

(declare-fun tp!782455 () Bool)

(assert (=> b!2458743 (= e!1559618 (and tp!782453 tp!782455))))

(declare-fun b!2458745 () Bool)

(declare-fun tp!782454 () Bool)

(declare-fun tp!782451 () Bool)

(assert (=> b!2458745 (= e!1559618 (and tp!782454 tp!782451))))

(assert (=> b!2456549 (= tp!781342 e!1559618)))

(assert (= (and b!2456549 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14962 (h!33989 l!9164))))) b!2458742))

(assert (= (and b!2456549 ((_ is Concat!11861) (reg!7554 (regTwo!14962 (h!33989 l!9164))))) b!2458743))

(assert (= (and b!2456549 ((_ is Star!7225) (reg!7554 (regTwo!14962 (h!33989 l!9164))))) b!2458744))

(assert (= (and b!2456549 ((_ is Union!7225) (reg!7554 (regTwo!14962 (h!33989 l!9164))))) b!2458745))

(declare-fun b!2458746 () Bool)

(declare-fun e!1559619 () Bool)

(assert (=> b!2458746 (= e!1559619 tp_is_empty!11863)))

(declare-fun b!2458748 () Bool)

(declare-fun tp!782457 () Bool)

(assert (=> b!2458748 (= e!1559619 tp!782457)))

(declare-fun b!2458747 () Bool)

(declare-fun tp!782458 () Bool)

(declare-fun tp!782460 () Bool)

(assert (=> b!2458747 (= e!1559619 (and tp!782458 tp!782460))))

(declare-fun b!2458749 () Bool)

(declare-fun tp!782459 () Bool)

(declare-fun tp!782456 () Bool)

(assert (=> b!2458749 (= e!1559619 (and tp!782459 tp!782456))))

(assert (=> b!2456472 (= tp!781246 e!1559619)))

(assert (= (and b!2456472 ((_ is ElementMatch!7225) (reg!7554 (regOne!14962 (regTwo!14962 r!13927))))) b!2458746))

(assert (= (and b!2456472 ((_ is Concat!11861) (reg!7554 (regOne!14962 (regTwo!14962 r!13927))))) b!2458747))

(assert (= (and b!2456472 ((_ is Star!7225) (reg!7554 (regOne!14962 (regTwo!14962 r!13927))))) b!2458748))

(assert (= (and b!2456472 ((_ is Union!7225) (reg!7554 (regOne!14962 (regTwo!14962 r!13927))))) b!2458749))

(declare-fun b!2458750 () Bool)

(declare-fun e!1559620 () Bool)

(assert (=> b!2458750 (= e!1559620 tp_is_empty!11863)))

(declare-fun b!2458752 () Bool)

(declare-fun tp!782462 () Bool)

(assert (=> b!2458752 (= e!1559620 tp!782462)))

(declare-fun b!2458751 () Bool)

(declare-fun tp!782463 () Bool)

(declare-fun tp!782465 () Bool)

(assert (=> b!2458751 (= e!1559620 (and tp!782463 tp!782465))))

(declare-fun b!2458753 () Bool)

(declare-fun tp!782464 () Bool)

(declare-fun tp!782461 () Bool)

(assert (=> b!2458753 (= e!1559620 (and tp!782464 tp!782461))))

(assert (=> b!2456463 (= tp!781237 e!1559620)))

(assert (= (and b!2456463 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458750))

(assert (= (and b!2456463 ((_ is Concat!11861) (regOne!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458751))

(assert (= (and b!2456463 ((_ is Star!7225) (regOne!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458752))

(assert (= (and b!2456463 ((_ is Union!7225) (regOne!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458753))

(declare-fun b!2458754 () Bool)

(declare-fun e!1559621 () Bool)

(assert (=> b!2458754 (= e!1559621 tp_is_empty!11863)))

(declare-fun b!2458756 () Bool)

(declare-fun tp!782467 () Bool)

(assert (=> b!2458756 (= e!1559621 tp!782467)))

(declare-fun b!2458755 () Bool)

(declare-fun tp!782468 () Bool)

(declare-fun tp!782470 () Bool)

(assert (=> b!2458755 (= e!1559621 (and tp!782468 tp!782470))))

(declare-fun b!2458757 () Bool)

(declare-fun tp!782469 () Bool)

(declare-fun tp!782466 () Bool)

(assert (=> b!2458757 (= e!1559621 (and tp!782469 tp!782466))))

(assert (=> b!2456463 (= tp!781239 e!1559621)))

(assert (= (and b!2456463 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458754))

(assert (= (and b!2456463 ((_ is Concat!11861) (regTwo!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458755))

(assert (= (and b!2456463 ((_ is Star!7225) (regTwo!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458756))

(assert (= (and b!2456463 ((_ is Union!7225) (regTwo!14962 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458757))

(declare-fun b!2458758 () Bool)

(declare-fun e!1559622 () Bool)

(assert (=> b!2458758 (= e!1559622 tp_is_empty!11863)))

(declare-fun b!2458760 () Bool)

(declare-fun tp!782472 () Bool)

(assert (=> b!2458760 (= e!1559622 tp!782472)))

(declare-fun b!2458759 () Bool)

(declare-fun tp!782473 () Bool)

(declare-fun tp!782475 () Bool)

(assert (=> b!2458759 (= e!1559622 (and tp!782473 tp!782475))))

(declare-fun b!2458761 () Bool)

(declare-fun tp!782474 () Bool)

(declare-fun tp!782471 () Bool)

(assert (=> b!2458761 (= e!1559622 (and tp!782474 tp!782471))))

(assert (=> b!2456481 (= tp!781258 e!1559622)))

(assert (= (and b!2456481 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458758))

(assert (= (and b!2456481 ((_ is Concat!11861) (regOne!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458759))

(assert (= (and b!2456481 ((_ is Star!7225) (regOne!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458760))

(assert (= (and b!2456481 ((_ is Union!7225) (regOne!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458761))

(declare-fun b!2458762 () Bool)

(declare-fun e!1559623 () Bool)

(assert (=> b!2458762 (= e!1559623 tp_is_empty!11863)))

(declare-fun b!2458764 () Bool)

(declare-fun tp!782477 () Bool)

(assert (=> b!2458764 (= e!1559623 tp!782477)))

(declare-fun b!2458763 () Bool)

(declare-fun tp!782478 () Bool)

(declare-fun tp!782480 () Bool)

(assert (=> b!2458763 (= e!1559623 (and tp!782478 tp!782480))))

(declare-fun b!2458765 () Bool)

(declare-fun tp!782479 () Bool)

(declare-fun tp!782476 () Bool)

(assert (=> b!2458765 (= e!1559623 (and tp!782479 tp!782476))))

(assert (=> b!2456481 (= tp!781255 e!1559623)))

(assert (= (and b!2456481 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458762))

(assert (= (and b!2456481 ((_ is Concat!11861) (regTwo!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458763))

(assert (= (and b!2456481 ((_ is Star!7225) (regTwo!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458764))

(assert (= (and b!2456481 ((_ is Union!7225) (regTwo!14963 (regOne!14963 (reg!7554 r!13927))))) b!2458765))

(declare-fun b!2458766 () Bool)

(declare-fun e!1559624 () Bool)

(assert (=> b!2458766 (= e!1559624 tp_is_empty!11863)))

(declare-fun b!2458768 () Bool)

(declare-fun tp!782482 () Bool)

(assert (=> b!2458768 (= e!1559624 tp!782482)))

(declare-fun b!2458767 () Bool)

(declare-fun tp!782483 () Bool)

(declare-fun tp!782485 () Bool)

(assert (=> b!2458767 (= e!1559624 (and tp!782483 tp!782485))))

(declare-fun b!2458769 () Bool)

(declare-fun tp!782484 () Bool)

(declare-fun tp!782481 () Bool)

(assert (=> b!2458769 (= e!1559624 (and tp!782484 tp!782481))))

(assert (=> b!2456501 (= tp!781283 e!1559624)))

(assert (= (and b!2456501 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458766))

(assert (= (and b!2456501 ((_ is Concat!11861) (regOne!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458767))

(assert (= (and b!2456501 ((_ is Star!7225) (regOne!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458768))

(assert (= (and b!2456501 ((_ is Union!7225) (regOne!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458769))

(declare-fun b!2458770 () Bool)

(declare-fun e!1559625 () Bool)

(assert (=> b!2458770 (= e!1559625 tp_is_empty!11863)))

(declare-fun b!2458772 () Bool)

(declare-fun tp!782487 () Bool)

(assert (=> b!2458772 (= e!1559625 tp!782487)))

(declare-fun b!2458771 () Bool)

(declare-fun tp!782488 () Bool)

(declare-fun tp!782490 () Bool)

(assert (=> b!2458771 (= e!1559625 (and tp!782488 tp!782490))))

(declare-fun b!2458773 () Bool)

(declare-fun tp!782489 () Bool)

(declare-fun tp!782486 () Bool)

(assert (=> b!2458773 (= e!1559625 (and tp!782489 tp!782486))))

(assert (=> b!2456501 (= tp!781280 e!1559625)))

(assert (= (and b!2456501 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458770))

(assert (= (and b!2456501 ((_ is Concat!11861) (regTwo!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458771))

(assert (= (and b!2456501 ((_ is Star!7225) (regTwo!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458772))

(assert (= (and b!2456501 ((_ is Union!7225) (regTwo!14963 (regOne!14962 (regOne!14962 r!13927))))) b!2458773))

(declare-fun b!2458774 () Bool)

(declare-fun e!1559626 () Bool)

(assert (=> b!2458774 (= e!1559626 tp_is_empty!11863)))

(declare-fun b!2458776 () Bool)

(declare-fun tp!782492 () Bool)

(assert (=> b!2458776 (= e!1559626 tp!782492)))

(declare-fun b!2458775 () Bool)

(declare-fun tp!782493 () Bool)

(declare-fun tp!782495 () Bool)

(assert (=> b!2458775 (= e!1559626 (and tp!782493 tp!782495))))

(declare-fun b!2458777 () Bool)

(declare-fun tp!782494 () Bool)

(declare-fun tp!782491 () Bool)

(assert (=> b!2458777 (= e!1559626 (and tp!782494 tp!782491))))

(assert (=> b!2456526 (= tp!781314 e!1559626)))

(assert (= (and b!2456526 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458774))

(assert (= (and b!2456526 ((_ is Concat!11861) (regOne!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458775))

(assert (= (and b!2456526 ((_ is Star!7225) (regOne!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458776))

(assert (= (and b!2456526 ((_ is Union!7225) (regOne!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458777))

(declare-fun b!2458778 () Bool)

(declare-fun e!1559627 () Bool)

(assert (=> b!2458778 (= e!1559627 tp_is_empty!11863)))

(declare-fun b!2458780 () Bool)

(declare-fun tp!782497 () Bool)

(assert (=> b!2458780 (= e!1559627 tp!782497)))

(declare-fun b!2458779 () Bool)

(declare-fun tp!782498 () Bool)

(declare-fun tp!782500 () Bool)

(assert (=> b!2458779 (= e!1559627 (and tp!782498 tp!782500))))

(declare-fun b!2458781 () Bool)

(declare-fun tp!782499 () Bool)

(declare-fun tp!782496 () Bool)

(assert (=> b!2458781 (= e!1559627 (and tp!782499 tp!782496))))

(assert (=> b!2456526 (= tp!781311 e!1559627)))

(assert (= (and b!2456526 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458778))

(assert (= (and b!2456526 ((_ is Concat!11861) (regTwo!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458779))

(assert (= (and b!2456526 ((_ is Star!7225) (regTwo!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458780))

(assert (= (and b!2456526 ((_ is Union!7225) (regTwo!14963 (regOne!14962 (regOne!14963 r!13927))))) b!2458781))

(declare-fun b!2458782 () Bool)

(declare-fun e!1559628 () Bool)

(assert (=> b!2458782 (= e!1559628 tp_is_empty!11863)))

(declare-fun b!2458784 () Bool)

(declare-fun tp!782502 () Bool)

(assert (=> b!2458784 (= e!1559628 tp!782502)))

(declare-fun b!2458783 () Bool)

(declare-fun tp!782503 () Bool)

(declare-fun tp!782505 () Bool)

(assert (=> b!2458783 (= e!1559628 (and tp!782503 tp!782505))))

(declare-fun b!2458785 () Bool)

(declare-fun tp!782504 () Bool)

(declare-fun tp!782501 () Bool)

(assert (=> b!2458785 (= e!1559628 (and tp!782504 tp!782501))))

(assert (=> b!2456517 (= tp!781302 e!1559628)))

(assert (= (and b!2456517 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458782))

(assert (= (and b!2456517 ((_ is Concat!11861) (reg!7554 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458783))

(assert (= (and b!2456517 ((_ is Star!7225) (reg!7554 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458784))

(assert (= (and b!2456517 ((_ is Union!7225) (reg!7554 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458785))

(declare-fun b!2458786 () Bool)

(declare-fun e!1559629 () Bool)

(assert (=> b!2458786 (= e!1559629 tp_is_empty!11863)))

(declare-fun b!2458788 () Bool)

(declare-fun tp!782507 () Bool)

(assert (=> b!2458788 (= e!1559629 tp!782507)))

(declare-fun b!2458787 () Bool)

(declare-fun tp!782508 () Bool)

(declare-fun tp!782510 () Bool)

(assert (=> b!2458787 (= e!1559629 (and tp!782508 tp!782510))))

(declare-fun b!2458789 () Bool)

(declare-fun tp!782509 () Bool)

(declare-fun tp!782506 () Bool)

(assert (=> b!2458789 (= e!1559629 (and tp!782509 tp!782506))))

(assert (=> b!2456492 (= tp!781271 e!1559629)))

(assert (= (and b!2456492 ((_ is ElementMatch!7225) (reg!7554 (regOne!14963 (regTwo!14963 r!13927))))) b!2458786))

(assert (= (and b!2456492 ((_ is Concat!11861) (reg!7554 (regOne!14963 (regTwo!14963 r!13927))))) b!2458787))

(assert (= (and b!2456492 ((_ is Star!7225) (reg!7554 (regOne!14963 (regTwo!14963 r!13927))))) b!2458788))

(assert (= (and b!2456492 ((_ is Union!7225) (reg!7554 (regOne!14963 (regTwo!14963 r!13927))))) b!2458789))

(declare-fun b!2458790 () Bool)

(declare-fun e!1559630 () Bool)

(assert (=> b!2458790 (= e!1559630 tp_is_empty!11863)))

(declare-fun b!2458792 () Bool)

(declare-fun tp!782512 () Bool)

(assert (=> b!2458792 (= e!1559630 tp!782512)))

(declare-fun b!2458791 () Bool)

(declare-fun tp!782513 () Bool)

(declare-fun tp!782515 () Bool)

(assert (=> b!2458791 (= e!1559630 (and tp!782513 tp!782515))))

(declare-fun b!2458793 () Bool)

(declare-fun tp!782514 () Bool)

(declare-fun tp!782511 () Bool)

(assert (=> b!2458793 (= e!1559630 (and tp!782514 tp!782511))))

(assert (=> b!2456483 (= tp!781262 e!1559630)))

(assert (= (and b!2456483 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458790))

(assert (= (and b!2456483 ((_ is Concat!11861) (regOne!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458791))

(assert (= (and b!2456483 ((_ is Star!7225) (regOne!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458792))

(assert (= (and b!2456483 ((_ is Union!7225) (regOne!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458793))

(declare-fun b!2458794 () Bool)

(declare-fun e!1559631 () Bool)

(assert (=> b!2458794 (= e!1559631 tp_is_empty!11863)))

(declare-fun b!2458796 () Bool)

(declare-fun tp!782517 () Bool)

(assert (=> b!2458796 (= e!1559631 tp!782517)))

(declare-fun b!2458795 () Bool)

(declare-fun tp!782518 () Bool)

(declare-fun tp!782520 () Bool)

(assert (=> b!2458795 (= e!1559631 (and tp!782518 tp!782520))))

(declare-fun b!2458797 () Bool)

(declare-fun tp!782519 () Bool)

(declare-fun tp!782516 () Bool)

(assert (=> b!2458797 (= e!1559631 (and tp!782519 tp!782516))))

(assert (=> b!2456483 (= tp!781264 e!1559631)))

(assert (= (and b!2456483 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458794))

(assert (= (and b!2456483 ((_ is Concat!11861) (regTwo!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458795))

(assert (= (and b!2456483 ((_ is Star!7225) (regTwo!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458796))

(assert (= (and b!2456483 ((_ is Union!7225) (regTwo!14962 (regTwo!14963 (reg!7554 r!13927))))) b!2458797))

(declare-fun b!2458798 () Bool)

(declare-fun e!1559632 () Bool)

(assert (=> b!2458798 (= e!1559632 tp_is_empty!11863)))

(declare-fun b!2458800 () Bool)

(declare-fun tp!782522 () Bool)

(assert (=> b!2458800 (= e!1559632 tp!782522)))

(declare-fun b!2458799 () Bool)

(declare-fun tp!782523 () Bool)

(declare-fun tp!782525 () Bool)

(assert (=> b!2458799 (= e!1559632 (and tp!782523 tp!782525))))

(declare-fun b!2458801 () Bool)

(declare-fun tp!782524 () Bool)

(declare-fun tp!782521 () Bool)

(assert (=> b!2458801 (= e!1559632 (and tp!782524 tp!782521))))

(assert (=> b!2456440 (= tp!781206 e!1559632)))

(assert (= (and b!2456440 ((_ is ElementMatch!7225) (reg!7554 (regOne!14963 (regOne!14962 r!13927))))) b!2458798))

(assert (= (and b!2456440 ((_ is Concat!11861) (reg!7554 (regOne!14963 (regOne!14962 r!13927))))) b!2458799))

(assert (= (and b!2456440 ((_ is Star!7225) (reg!7554 (regOne!14963 (regOne!14962 r!13927))))) b!2458800))

(assert (= (and b!2456440 ((_ is Union!7225) (reg!7554 (regOne!14963 (regOne!14962 r!13927))))) b!2458801))

(declare-fun b!2458802 () Bool)

(declare-fun e!1559633 () Bool)

(assert (=> b!2458802 (= e!1559633 tp_is_empty!11863)))

(declare-fun b!2458804 () Bool)

(declare-fun tp!782527 () Bool)

(assert (=> b!2458804 (= e!1559633 tp!782527)))

(declare-fun b!2458803 () Bool)

(declare-fun tp!782528 () Bool)

(declare-fun tp!782530 () Bool)

(assert (=> b!2458803 (= e!1559633 (and tp!782528 tp!782530))))

(declare-fun b!2458805 () Bool)

(declare-fun tp!782529 () Bool)

(declare-fun tp!782526 () Bool)

(assert (=> b!2458805 (= e!1559633 (and tp!782529 tp!782526))))

(assert (=> b!2456449 (= tp!781218 e!1559633)))

(assert (= (and b!2456449 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458802))

(assert (= (and b!2456449 ((_ is Concat!11861) (regOne!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458803))

(assert (= (and b!2456449 ((_ is Star!7225) (regOne!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458804))

(assert (= (and b!2456449 ((_ is Union!7225) (regOne!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458805))

(declare-fun b!2458806 () Bool)

(declare-fun e!1559634 () Bool)

(assert (=> b!2458806 (= e!1559634 tp_is_empty!11863)))

(declare-fun b!2458808 () Bool)

(declare-fun tp!782532 () Bool)

(assert (=> b!2458808 (= e!1559634 tp!782532)))

(declare-fun b!2458807 () Bool)

(declare-fun tp!782533 () Bool)

(declare-fun tp!782535 () Bool)

(assert (=> b!2458807 (= e!1559634 (and tp!782533 tp!782535))))

(declare-fun b!2458809 () Bool)

(declare-fun tp!782534 () Bool)

(declare-fun tp!782531 () Bool)

(assert (=> b!2458809 (= e!1559634 (and tp!782534 tp!782531))))

(assert (=> b!2456449 (= tp!781215 e!1559634)))

(assert (= (and b!2456449 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458806))

(assert (= (and b!2456449 ((_ is Concat!11861) (regTwo!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458807))

(assert (= (and b!2456449 ((_ is Star!7225) (regTwo!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458808))

(assert (= (and b!2456449 ((_ is Union!7225) (regTwo!14963 (regOne!14963 (regOne!14963 r!13927))))) b!2458809))

(declare-fun b!2458810 () Bool)

(declare-fun e!1559635 () Bool)

(assert (=> b!2458810 (= e!1559635 tp_is_empty!11863)))

(declare-fun b!2458812 () Bool)

(declare-fun tp!782537 () Bool)

(assert (=> b!2458812 (= e!1559635 tp!782537)))

(declare-fun b!2458811 () Bool)

(declare-fun tp!782538 () Bool)

(declare-fun tp!782540 () Bool)

(assert (=> b!2458811 (= e!1559635 (and tp!782538 tp!782540))))

(declare-fun b!2458813 () Bool)

(declare-fun tp!782539 () Bool)

(declare-fun tp!782536 () Bool)

(assert (=> b!2458813 (= e!1559635 (and tp!782539 tp!782536))))

(assert (=> b!2456544 (= tp!781338 e!1559635)))

(assert (= (and b!2456544 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14962 (h!33989 l!9164))))) b!2458810))

(assert (= (and b!2456544 ((_ is Concat!11861) (regOne!14962 (regOne!14962 (h!33989 l!9164))))) b!2458811))

(assert (= (and b!2456544 ((_ is Star!7225) (regOne!14962 (regOne!14962 (h!33989 l!9164))))) b!2458812))

(assert (= (and b!2456544 ((_ is Union!7225) (regOne!14962 (regOne!14962 (h!33989 l!9164))))) b!2458813))

(declare-fun b!2458814 () Bool)

(declare-fun e!1559636 () Bool)

(assert (=> b!2458814 (= e!1559636 tp_is_empty!11863)))

(declare-fun b!2458816 () Bool)

(declare-fun tp!782542 () Bool)

(assert (=> b!2458816 (= e!1559636 tp!782542)))

(declare-fun b!2458815 () Bool)

(declare-fun tp!782543 () Bool)

(declare-fun tp!782545 () Bool)

(assert (=> b!2458815 (= e!1559636 (and tp!782543 tp!782545))))

(declare-fun b!2458817 () Bool)

(declare-fun tp!782544 () Bool)

(declare-fun tp!782541 () Bool)

(assert (=> b!2458817 (= e!1559636 (and tp!782544 tp!782541))))

(assert (=> b!2456544 (= tp!781340 e!1559636)))

(assert (= (and b!2456544 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14962 (h!33989 l!9164))))) b!2458814))

(assert (= (and b!2456544 ((_ is Concat!11861) (regTwo!14962 (regOne!14962 (h!33989 l!9164))))) b!2458815))

(assert (= (and b!2456544 ((_ is Star!7225) (regTwo!14962 (regOne!14962 (h!33989 l!9164))))) b!2458816))

(assert (= (and b!2456544 ((_ is Union!7225) (regTwo!14962 (regOne!14962 (h!33989 l!9164))))) b!2458817))

(declare-fun b!2458818 () Bool)

(declare-fun e!1559637 () Bool)

(assert (=> b!2458818 (= e!1559637 tp_is_empty!11863)))

(declare-fun b!2458820 () Bool)

(declare-fun tp!782547 () Bool)

(assert (=> b!2458820 (= e!1559637 tp!782547)))

(declare-fun b!2458819 () Bool)

(declare-fun tp!782548 () Bool)

(declare-fun tp!782550 () Bool)

(assert (=> b!2458819 (= e!1559637 (and tp!782548 tp!782550))))

(declare-fun b!2458821 () Bool)

(declare-fun tp!782549 () Bool)

(declare-fun tp!782546 () Bool)

(assert (=> b!2458821 (= e!1559637 (and tp!782549 tp!782546))))

(assert (=> b!2456434 (= tp!781200 e!1559637)))

(assert (= (and b!2456434 ((_ is ElementMatch!7225) (regOne!14962 (h!33989 (t!208663 l!9164))))) b!2458818))

(assert (= (and b!2456434 ((_ is Concat!11861) (regOne!14962 (h!33989 (t!208663 l!9164))))) b!2458819))

(assert (= (and b!2456434 ((_ is Star!7225) (regOne!14962 (h!33989 (t!208663 l!9164))))) b!2458820))

(assert (= (and b!2456434 ((_ is Union!7225) (regOne!14962 (h!33989 (t!208663 l!9164))))) b!2458821))

(declare-fun b!2458822 () Bool)

(declare-fun e!1559638 () Bool)

(assert (=> b!2458822 (= e!1559638 tp_is_empty!11863)))

(declare-fun b!2458824 () Bool)

(declare-fun tp!782552 () Bool)

(assert (=> b!2458824 (= e!1559638 tp!782552)))

(declare-fun b!2458823 () Bool)

(declare-fun tp!782553 () Bool)

(declare-fun tp!782555 () Bool)

(assert (=> b!2458823 (= e!1559638 (and tp!782553 tp!782555))))

(declare-fun b!2458825 () Bool)

(declare-fun tp!782554 () Bool)

(declare-fun tp!782551 () Bool)

(assert (=> b!2458825 (= e!1559638 (and tp!782554 tp!782551))))

(assert (=> b!2456434 (= tp!781202 e!1559638)))

(assert (= (and b!2456434 ((_ is ElementMatch!7225) (regTwo!14962 (h!33989 (t!208663 l!9164))))) b!2458822))

(assert (= (and b!2456434 ((_ is Concat!11861) (regTwo!14962 (h!33989 (t!208663 l!9164))))) b!2458823))

(assert (= (and b!2456434 ((_ is Star!7225) (regTwo!14962 (h!33989 (t!208663 l!9164))))) b!2458824))

(assert (= (and b!2456434 ((_ is Union!7225) (regTwo!14962 (h!33989 (t!208663 l!9164))))) b!2458825))

(declare-fun b!2458826 () Bool)

(declare-fun e!1559639 () Bool)

(assert (=> b!2458826 (= e!1559639 tp_is_empty!11863)))

(declare-fun b!2458828 () Bool)

(declare-fun tp!782557 () Bool)

(assert (=> b!2458828 (= e!1559639 tp!782557)))

(declare-fun b!2458827 () Bool)

(declare-fun tp!782558 () Bool)

(declare-fun tp!782560 () Bool)

(assert (=> b!2458827 (= e!1559639 (and tp!782558 tp!782560))))

(declare-fun b!2458829 () Bool)

(declare-fun tp!782559 () Bool)

(declare-fun tp!782556 () Bool)

(assert (=> b!2458829 (= e!1559639 (and tp!782559 tp!782556))))

(assert (=> b!2456485 (= tp!781263 e!1559639)))

(assert (= (and b!2456485 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458826))

(assert (= (and b!2456485 ((_ is Concat!11861) (regOne!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458827))

(assert (= (and b!2456485 ((_ is Star!7225) (regOne!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458828))

(assert (= (and b!2456485 ((_ is Union!7225) (regOne!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458829))

(declare-fun b!2458830 () Bool)

(declare-fun e!1559640 () Bool)

(assert (=> b!2458830 (= e!1559640 tp_is_empty!11863)))

(declare-fun b!2458832 () Bool)

(declare-fun tp!782562 () Bool)

(assert (=> b!2458832 (= e!1559640 tp!782562)))

(declare-fun b!2458831 () Bool)

(declare-fun tp!782563 () Bool)

(declare-fun tp!782565 () Bool)

(assert (=> b!2458831 (= e!1559640 (and tp!782563 tp!782565))))

(declare-fun b!2458833 () Bool)

(declare-fun tp!782564 () Bool)

(declare-fun tp!782561 () Bool)

(assert (=> b!2458833 (= e!1559640 (and tp!782564 tp!782561))))

(assert (=> b!2456485 (= tp!781260 e!1559640)))

(assert (= (and b!2456485 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458830))

(assert (= (and b!2456485 ((_ is Concat!11861) (regTwo!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458831))

(assert (= (and b!2456485 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458832))

(assert (= (and b!2456485 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 (reg!7554 r!13927))))) b!2458833))

(declare-fun b!2458834 () Bool)

(declare-fun e!1559641 () Bool)

(declare-fun tp!782566 () Bool)

(assert (=> b!2458834 (= e!1559641 (and tp_is_empty!11863 tp!782566))))

(assert (=> b!2456510 (= tp!781295 e!1559641)))

(assert (= (and b!2456510 ((_ is Cons!28589) (t!208664 (t!208664 (t!208664 s!9460))))) b!2458834))

(declare-fun b!2458835 () Bool)

(declare-fun e!1559642 () Bool)

(assert (=> b!2458835 (= e!1559642 tp_is_empty!11863)))

(declare-fun b!2458837 () Bool)

(declare-fun tp!782568 () Bool)

(assert (=> b!2458837 (= e!1559642 tp!782568)))

(declare-fun b!2458836 () Bool)

(declare-fun tp!782569 () Bool)

(declare-fun tp!782571 () Bool)

(assert (=> b!2458836 (= e!1559642 (and tp!782569 tp!782571))))

(declare-fun b!2458838 () Bool)

(declare-fun tp!782570 () Bool)

(declare-fun tp!782567 () Bool)

(assert (=> b!2458838 (= e!1559642 (and tp!782570 tp!782567))))

(assert (=> b!2456553 (= tp!781347 e!1559642)))

(assert (= (and b!2456553 ((_ is ElementMatch!7225) (reg!7554 (regOne!14962 (reg!7554 r!13927))))) b!2458835))

(assert (= (and b!2456553 ((_ is Concat!11861) (reg!7554 (regOne!14962 (reg!7554 r!13927))))) b!2458836))

(assert (= (and b!2456553 ((_ is Star!7225) (reg!7554 (regOne!14962 (reg!7554 r!13927))))) b!2458837))

(assert (= (and b!2456553 ((_ is Union!7225) (reg!7554 (regOne!14962 (reg!7554 r!13927))))) b!2458838))

(declare-fun b!2458839 () Bool)

(declare-fun e!1559643 () Bool)

(assert (=> b!2458839 (= e!1559643 tp_is_empty!11863)))

(declare-fun b!2458841 () Bool)

(declare-fun tp!782573 () Bool)

(assert (=> b!2458841 (= e!1559643 tp!782573)))

(declare-fun b!2458840 () Bool)

(declare-fun tp!782574 () Bool)

(declare-fun tp!782576 () Bool)

(assert (=> b!2458840 (= e!1559643 (and tp!782574 tp!782576))))

(declare-fun b!2458842 () Bool)

(declare-fun tp!782575 () Bool)

(declare-fun tp!782572 () Bool)

(assert (=> b!2458842 (= e!1559643 (and tp!782575 tp!782572))))

(assert (=> b!2456476 (= tp!781251 e!1559643)))

(assert (= (and b!2456476 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458839))

(assert (= (and b!2456476 ((_ is Concat!11861) (reg!7554 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458840))

(assert (= (and b!2456476 ((_ is Star!7225) (reg!7554 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458841))

(assert (= (and b!2456476 ((_ is Union!7225) (reg!7554 (regTwo!14962 (regTwo!14962 r!13927))))) b!2458842))

(declare-fun b!2458843 () Bool)

(declare-fun e!1559644 () Bool)

(assert (=> b!2458843 (= e!1559644 tp_is_empty!11863)))

(declare-fun b!2458845 () Bool)

(declare-fun tp!782578 () Bool)

(assert (=> b!2458845 (= e!1559644 tp!782578)))

(declare-fun b!2458844 () Bool)

(declare-fun tp!782579 () Bool)

(declare-fun tp!782581 () Bool)

(assert (=> b!2458844 (= e!1559644 (and tp!782579 tp!782581))))

(declare-fun b!2458846 () Bool)

(declare-fun tp!782580 () Bool)

(declare-fun tp!782577 () Bool)

(assert (=> b!2458846 (= e!1559644 (and tp!782580 tp!782577))))

(assert (=> b!2456467 (= tp!781242 e!1559644)))

(assert (= (and b!2456467 ((_ is ElementMatch!7225) (regOne!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458843))

(assert (= (and b!2456467 ((_ is Concat!11861) (regOne!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458844))

(assert (= (and b!2456467 ((_ is Star!7225) (regOne!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458845))

(assert (= (and b!2456467 ((_ is Union!7225) (regOne!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458846))

(declare-fun b!2458847 () Bool)

(declare-fun e!1559645 () Bool)

(assert (=> b!2458847 (= e!1559645 tp_is_empty!11863)))

(declare-fun b!2458849 () Bool)

(declare-fun tp!782583 () Bool)

(assert (=> b!2458849 (= e!1559645 tp!782583)))

(declare-fun b!2458848 () Bool)

(declare-fun tp!782584 () Bool)

(declare-fun tp!782586 () Bool)

(assert (=> b!2458848 (= e!1559645 (and tp!782584 tp!782586))))

(declare-fun b!2458850 () Bool)

(declare-fun tp!782585 () Bool)

(declare-fun tp!782582 () Bool)

(assert (=> b!2458850 (= e!1559645 (and tp!782585 tp!782582))))

(assert (=> b!2456467 (= tp!781244 e!1559645)))

(assert (= (and b!2456467 ((_ is ElementMatch!7225) (regTwo!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458847))

(assert (= (and b!2456467 ((_ is Concat!11861) (regTwo!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458848))

(assert (= (and b!2456467 ((_ is Star!7225) (regTwo!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458849))

(assert (= (and b!2456467 ((_ is Union!7225) (regTwo!14962 (reg!7554 (regOne!14962 r!13927))))) b!2458850))

(declare-fun b!2458851 () Bool)

(declare-fun e!1559646 () Bool)

(assert (=> b!2458851 (= e!1559646 tp_is_empty!11863)))

(declare-fun b!2458853 () Bool)

(declare-fun tp!782588 () Bool)

(assert (=> b!2458853 (= e!1559646 tp!782588)))

(declare-fun b!2458852 () Bool)

(declare-fun tp!782589 () Bool)

(declare-fun tp!782591 () Bool)

(assert (=> b!2458852 (= e!1559646 (and tp!782589 tp!782591))))

(declare-fun b!2458854 () Bool)

(declare-fun tp!782590 () Bool)

(declare-fun tp!782587 () Bool)

(assert (=> b!2458854 (= e!1559646 (and tp!782590 tp!782587))))

(assert (=> b!2456496 (= tp!781276 e!1559646)))

(assert (= (and b!2456496 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458851))

(assert (= (and b!2456496 ((_ is Concat!11861) (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458852))

(assert (= (and b!2456496 ((_ is Star!7225) (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458853))

(assert (= (and b!2456496 ((_ is Union!7225) (reg!7554 (regTwo!14963 (regTwo!14963 r!13927))))) b!2458854))

(declare-fun b!2458855 () Bool)

(declare-fun e!1559647 () Bool)

(assert (=> b!2458855 (= e!1559647 tp_is_empty!11863)))

(declare-fun b!2458857 () Bool)

(declare-fun tp!782593 () Bool)

(assert (=> b!2458857 (= e!1559647 tp!782593)))

(declare-fun b!2458856 () Bool)

(declare-fun tp!782594 () Bool)

(declare-fun tp!782596 () Bool)

(assert (=> b!2458856 (= e!1559647 (and tp!782594 tp!782596))))

(declare-fun b!2458858 () Bool)

(declare-fun tp!782595 () Bool)

(declare-fun tp!782592 () Bool)

(assert (=> b!2458858 (= e!1559647 (and tp!782595 tp!782592))))

(assert (=> b!2456487 (= tp!781267 e!1559647)))

(assert (= (and b!2456487 ((_ is ElementMatch!7225) (regOne!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458855))

(assert (= (and b!2456487 ((_ is Concat!11861) (regOne!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458856))

(assert (= (and b!2456487 ((_ is Star!7225) (regOne!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458857))

(assert (= (and b!2456487 ((_ is Union!7225) (regOne!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458858))

(declare-fun b!2458859 () Bool)

(declare-fun e!1559648 () Bool)

(assert (=> b!2458859 (= e!1559648 tp_is_empty!11863)))

(declare-fun b!2458861 () Bool)

(declare-fun tp!782598 () Bool)

(assert (=> b!2458861 (= e!1559648 tp!782598)))

(declare-fun b!2458860 () Bool)

(declare-fun tp!782599 () Bool)

(declare-fun tp!782601 () Bool)

(assert (=> b!2458860 (= e!1559648 (and tp!782599 tp!782601))))

(declare-fun b!2458862 () Bool)

(declare-fun tp!782600 () Bool)

(declare-fun tp!782597 () Bool)

(assert (=> b!2458862 (= e!1559648 (and tp!782600 tp!782597))))

(assert (=> b!2456487 (= tp!781269 e!1559648)))

(assert (= (and b!2456487 ((_ is ElementMatch!7225) (regTwo!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458859))

(assert (= (and b!2456487 ((_ is Concat!11861) (regTwo!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458860))

(assert (= (and b!2456487 ((_ is Star!7225) (regTwo!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458861))

(assert (= (and b!2456487 ((_ is Union!7225) (regTwo!14962 (reg!7554 (regTwo!14963 r!13927))))) b!2458862))

(declare-fun b!2458863 () Bool)

(declare-fun e!1559649 () Bool)

(assert (=> b!2458863 (= e!1559649 tp_is_empty!11863)))

(declare-fun b!2458865 () Bool)

(declare-fun tp!782603 () Bool)

(assert (=> b!2458865 (= e!1559649 tp!782603)))

(declare-fun b!2458864 () Bool)

(declare-fun tp!782604 () Bool)

(declare-fun tp!782606 () Bool)

(assert (=> b!2458864 (= e!1559649 (and tp!782604 tp!782606))))

(declare-fun b!2458866 () Bool)

(declare-fun tp!782605 () Bool)

(declare-fun tp!782602 () Bool)

(assert (=> b!2458866 (= e!1559649 (and tp!782605 tp!782602))))

(assert (=> b!2456512 (= tp!781298 e!1559649)))

(assert (= (and b!2456512 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458863))

(assert (= (and b!2456512 ((_ is Concat!11861) (regOne!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458864))

(assert (= (and b!2456512 ((_ is Star!7225) (regOne!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458865))

(assert (= (and b!2456512 ((_ is Union!7225) (regOne!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458866))

(declare-fun b!2458867 () Bool)

(declare-fun e!1559650 () Bool)

(assert (=> b!2458867 (= e!1559650 tp_is_empty!11863)))

(declare-fun b!2458869 () Bool)

(declare-fun tp!782608 () Bool)

(assert (=> b!2458869 (= e!1559650 tp!782608)))

(declare-fun b!2458868 () Bool)

(declare-fun tp!782609 () Bool)

(declare-fun tp!782611 () Bool)

(assert (=> b!2458868 (= e!1559650 (and tp!782609 tp!782611))))

(declare-fun b!2458870 () Bool)

(declare-fun tp!782610 () Bool)

(declare-fun tp!782607 () Bool)

(assert (=> b!2458870 (= e!1559650 (and tp!782610 tp!782607))))

(assert (=> b!2456512 (= tp!781300 e!1559650)))

(assert (= (and b!2456512 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458867))

(assert (= (and b!2456512 ((_ is Concat!11861) (regTwo!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458868))

(assert (= (and b!2456512 ((_ is Star!7225) (regTwo!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458869))

(assert (= (and b!2456512 ((_ is Union!7225) (regTwo!14962 (regOne!14962 (regTwo!14963 r!13927))))) b!2458870))

(declare-fun b!2458871 () Bool)

(declare-fun e!1559651 () Bool)

(assert (=> b!2458871 (= e!1559651 tp_is_empty!11863)))

(declare-fun b!2458873 () Bool)

(declare-fun tp!782613 () Bool)

(assert (=> b!2458873 (= e!1559651 tp!782613)))

(declare-fun b!2458872 () Bool)

(declare-fun tp!782614 () Bool)

(declare-fun tp!782616 () Bool)

(assert (=> b!2458872 (= e!1559651 (and tp!782614 tp!782616))))

(declare-fun b!2458874 () Bool)

(declare-fun tp!782615 () Bool)

(declare-fun tp!782612 () Bool)

(assert (=> b!2458874 (= e!1559651 (and tp!782615 tp!782612))))

(assert (=> b!2456505 (= tp!781288 e!1559651)))

(assert (= (and b!2456505 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458871))

(assert (= (and b!2456505 ((_ is Concat!11861) (regOne!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458872))

(assert (= (and b!2456505 ((_ is Star!7225) (regOne!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458873))

(assert (= (and b!2456505 ((_ is Union!7225) (regOne!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458874))

(declare-fun b!2458875 () Bool)

(declare-fun e!1559652 () Bool)

(assert (=> b!2458875 (= e!1559652 tp_is_empty!11863)))

(declare-fun b!2458877 () Bool)

(declare-fun tp!782618 () Bool)

(assert (=> b!2458877 (= e!1559652 tp!782618)))

(declare-fun b!2458876 () Bool)

(declare-fun tp!782619 () Bool)

(declare-fun tp!782621 () Bool)

(assert (=> b!2458876 (= e!1559652 (and tp!782619 tp!782621))))

(declare-fun b!2458878 () Bool)

(declare-fun tp!782620 () Bool)

(declare-fun tp!782617 () Bool)

(assert (=> b!2458878 (= e!1559652 (and tp!782620 tp!782617))))

(assert (=> b!2456505 (= tp!781285 e!1559652)))

(assert (= (and b!2456505 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458875))

(assert (= (and b!2456505 ((_ is Concat!11861) (regTwo!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458876))

(assert (= (and b!2456505 ((_ is Star!7225) (regTwo!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458877))

(assert (= (and b!2456505 ((_ is Union!7225) (regTwo!14963 (regTwo!14962 (regOne!14962 r!13927))))) b!2458878))

(declare-fun b!2458879 () Bool)

(declare-fun e!1559653 () Bool)

(assert (=> b!2458879 (= e!1559653 tp_is_empty!11863)))

(declare-fun b!2458881 () Bool)

(declare-fun tp!782623 () Bool)

(assert (=> b!2458881 (= e!1559653 tp!782623)))

(declare-fun b!2458880 () Bool)

(declare-fun tp!782624 () Bool)

(declare-fun tp!782626 () Bool)

(assert (=> b!2458880 (= e!1559653 (and tp!782624 tp!782626))))

(declare-fun b!2458882 () Bool)

(declare-fun tp!782625 () Bool)

(declare-fun tp!782622 () Bool)

(assert (=> b!2458882 (= e!1559653 (and tp!782625 tp!782622))))

(assert (=> b!2456453 (= tp!781223 e!1559653)))

(assert (= (and b!2456453 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458879))

(assert (= (and b!2456453 ((_ is Concat!11861) (regOne!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458880))

(assert (= (and b!2456453 ((_ is Star!7225) (regOne!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458881))

(assert (= (and b!2456453 ((_ is Union!7225) (regOne!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458882))

(declare-fun b!2458883 () Bool)

(declare-fun e!1559654 () Bool)

(assert (=> b!2458883 (= e!1559654 tp_is_empty!11863)))

(declare-fun b!2458885 () Bool)

(declare-fun tp!782628 () Bool)

(assert (=> b!2458885 (= e!1559654 tp!782628)))

(declare-fun b!2458884 () Bool)

(declare-fun tp!782629 () Bool)

(declare-fun tp!782631 () Bool)

(assert (=> b!2458884 (= e!1559654 (and tp!782629 tp!782631))))

(declare-fun b!2458886 () Bool)

(declare-fun tp!782630 () Bool)

(declare-fun tp!782627 () Bool)

(assert (=> b!2458886 (= e!1559654 (and tp!782630 tp!782627))))

(assert (=> b!2456453 (= tp!781220 e!1559654)))

(assert (= (and b!2456453 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458883))

(assert (= (and b!2456453 ((_ is Concat!11861) (regTwo!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458884))

(assert (= (and b!2456453 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458885))

(assert (= (and b!2456453 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 (regOne!14963 r!13927))))) b!2458886))

(declare-fun b!2458887 () Bool)

(declare-fun e!1559655 () Bool)

(assert (=> b!2458887 (= e!1559655 tp_is_empty!11863)))

(declare-fun b!2458889 () Bool)

(declare-fun tp!782633 () Bool)

(assert (=> b!2458889 (= e!1559655 tp!782633)))

(declare-fun b!2458888 () Bool)

(declare-fun tp!782634 () Bool)

(declare-fun tp!782636 () Bool)

(assert (=> b!2458888 (= e!1559655 (and tp!782634 tp!782636))))

(declare-fun b!2458890 () Bool)

(declare-fun tp!782635 () Bool)

(declare-fun tp!782632 () Bool)

(assert (=> b!2458890 (= e!1559655 (and tp!782635 tp!782632))))

(assert (=> b!2456530 (= tp!781319 e!1559655)))

(assert (= (and b!2456530 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458887))

(assert (= (and b!2456530 ((_ is Concat!11861) (regOne!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458888))

(assert (= (and b!2456530 ((_ is Star!7225) (regOne!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458889))

(assert (= (and b!2456530 ((_ is Union!7225) (regOne!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458890))

(declare-fun b!2458891 () Bool)

(declare-fun e!1559656 () Bool)

(assert (=> b!2458891 (= e!1559656 tp_is_empty!11863)))

(declare-fun b!2458893 () Bool)

(declare-fun tp!782638 () Bool)

(assert (=> b!2458893 (= e!1559656 tp!782638)))

(declare-fun b!2458892 () Bool)

(declare-fun tp!782639 () Bool)

(declare-fun tp!782641 () Bool)

(assert (=> b!2458892 (= e!1559656 (and tp!782639 tp!782641))))

(declare-fun b!2458894 () Bool)

(declare-fun tp!782640 () Bool)

(declare-fun tp!782637 () Bool)

(assert (=> b!2458894 (= e!1559656 (and tp!782640 tp!782637))))

(assert (=> b!2456530 (= tp!781316 e!1559656)))

(assert (= (and b!2456530 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458891))

(assert (= (and b!2456530 ((_ is Concat!11861) (regTwo!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458892))

(assert (= (and b!2456530 ((_ is Star!7225) (regTwo!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458893))

(assert (= (and b!2456530 ((_ is Union!7225) (regTwo!14963 (regTwo!14962 (regOne!14963 r!13927))))) b!2458894))

(declare-fun b!2458895 () Bool)

(declare-fun e!1559657 () Bool)

(assert (=> b!2458895 (= e!1559657 tp_is_empty!11863)))

(declare-fun b!2458897 () Bool)

(declare-fun tp!782643 () Bool)

(assert (=> b!2458897 (= e!1559657 tp!782643)))

(declare-fun b!2458896 () Bool)

(declare-fun tp!782644 () Bool)

(declare-fun tp!782646 () Bool)

(assert (=> b!2458896 (= e!1559657 (and tp!782644 tp!782646))))

(declare-fun b!2458898 () Bool)

(declare-fun tp!782645 () Bool)

(declare-fun tp!782642 () Bool)

(assert (=> b!2458898 (= e!1559657 (and tp!782645 tp!782642))))

(assert (=> b!2456521 (= tp!781307 e!1559657)))

(assert (= (and b!2456521 ((_ is ElementMatch!7225) (reg!7554 (reg!7554 (h!33989 l!9164))))) b!2458895))

(assert (= (and b!2456521 ((_ is Concat!11861) (reg!7554 (reg!7554 (h!33989 l!9164))))) b!2458896))

(assert (= (and b!2456521 ((_ is Star!7225) (reg!7554 (reg!7554 (h!33989 l!9164))))) b!2458897))

(assert (= (and b!2456521 ((_ is Union!7225) (reg!7554 (reg!7554 (h!33989 l!9164))))) b!2458898))

(declare-fun b!2458899 () Bool)

(declare-fun e!1559658 () Bool)

(assert (=> b!2458899 (= e!1559658 tp_is_empty!11863)))

(declare-fun b!2458901 () Bool)

(declare-fun tp!782648 () Bool)

(assert (=> b!2458901 (= e!1559658 tp!782648)))

(declare-fun b!2458900 () Bool)

(declare-fun tp!782649 () Bool)

(declare-fun tp!782651 () Bool)

(assert (=> b!2458900 (= e!1559658 (and tp!782649 tp!782651))))

(declare-fun b!2458902 () Bool)

(declare-fun tp!782650 () Bool)

(declare-fun tp!782647 () Bool)

(assert (=> b!2458902 (= e!1559658 (and tp!782650 tp!782647))))

(assert (=> b!2456444 (= tp!781211 e!1559658)))

(assert (= (and b!2456444 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14963 (regOne!14962 r!13927))))) b!2458899))

(assert (= (and b!2456444 ((_ is Concat!11861) (reg!7554 (regTwo!14963 (regOne!14962 r!13927))))) b!2458900))

(assert (= (and b!2456444 ((_ is Star!7225) (reg!7554 (regTwo!14963 (regOne!14962 r!13927))))) b!2458901))

(assert (= (and b!2456444 ((_ is Union!7225) (reg!7554 (regTwo!14963 (regOne!14962 r!13927))))) b!2458902))

(declare-fun b!2458903 () Bool)

(declare-fun e!1559659 () Bool)

(assert (=> b!2458903 (= e!1559659 tp_is_empty!11863)))

(declare-fun b!2458905 () Bool)

(declare-fun tp!782653 () Bool)

(assert (=> b!2458905 (= e!1559659 tp!782653)))

(declare-fun b!2458904 () Bool)

(declare-fun tp!782654 () Bool)

(declare-fun tp!782656 () Bool)

(assert (=> b!2458904 (= e!1559659 (and tp!782654 tp!782656))))

(declare-fun b!2458906 () Bool)

(declare-fun tp!782655 () Bool)

(declare-fun tp!782652 () Bool)

(assert (=> b!2458906 (= e!1559659 (and tp!782655 tp!782652))))

(assert (=> b!2456464 (= tp!781236 e!1559659)))

(assert (= (and b!2456464 ((_ is ElementMatch!7225) (reg!7554 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458903))

(assert (= (and b!2456464 ((_ is Concat!11861) (reg!7554 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458904))

(assert (= (and b!2456464 ((_ is Star!7225) (reg!7554 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458905))

(assert (= (and b!2456464 ((_ is Union!7225) (reg!7554 (regTwo!14963 (regTwo!14962 r!13927))))) b!2458906))

(declare-fun b!2458907 () Bool)

(declare-fun e!1559660 () Bool)

(assert (=> b!2458907 (= e!1559660 tp_is_empty!11863)))

(declare-fun b!2458909 () Bool)

(declare-fun tp!782658 () Bool)

(assert (=> b!2458909 (= e!1559660 tp!782658)))

(declare-fun b!2458908 () Bool)

(declare-fun tp!782659 () Bool)

(declare-fun tp!782661 () Bool)

(assert (=> b!2458908 (= e!1559660 (and tp!782659 tp!782661))))

(declare-fun b!2458910 () Bool)

(declare-fun tp!782660 () Bool)

(declare-fun tp!782657 () Bool)

(assert (=> b!2458910 (= e!1559660 (and tp!782660 tp!782657))))

(assert (=> b!2456455 (= tp!781227 e!1559660)))

(assert (= (and b!2456455 ((_ is ElementMatch!7225) (regOne!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458907))

(assert (= (and b!2456455 ((_ is Concat!11861) (regOne!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458908))

(assert (= (and b!2456455 ((_ is Star!7225) (regOne!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458909))

(assert (= (and b!2456455 ((_ is Union!7225) (regOne!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458910))

(declare-fun b!2458911 () Bool)

(declare-fun e!1559661 () Bool)

(assert (=> b!2458911 (= e!1559661 tp_is_empty!11863)))

(declare-fun b!2458913 () Bool)

(declare-fun tp!782663 () Bool)

(assert (=> b!2458913 (= e!1559661 tp!782663)))

(declare-fun b!2458912 () Bool)

(declare-fun tp!782664 () Bool)

(declare-fun tp!782666 () Bool)

(assert (=> b!2458912 (= e!1559661 (and tp!782664 tp!782666))))

(declare-fun b!2458914 () Bool)

(declare-fun tp!782665 () Bool)

(declare-fun tp!782662 () Bool)

(assert (=> b!2458914 (= e!1559661 (and tp!782665 tp!782662))))

(assert (=> b!2456455 (= tp!781229 e!1559661)))

(assert (= (and b!2456455 ((_ is ElementMatch!7225) (regTwo!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458911))

(assert (= (and b!2456455 ((_ is Concat!11861) (regTwo!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458912))

(assert (= (and b!2456455 ((_ is Star!7225) (regTwo!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458913))

(assert (= (and b!2456455 ((_ is Union!7225) (regTwo!14962 (reg!7554 (regTwo!14962 r!13927))))) b!2458914))

(declare-fun b!2458915 () Bool)

(declare-fun e!1559662 () Bool)

(assert (=> b!2458915 (= e!1559662 tp_is_empty!11863)))

(declare-fun b!2458917 () Bool)

(declare-fun tp!782668 () Bool)

(assert (=> b!2458917 (= e!1559662 tp!782668)))

(declare-fun b!2458916 () Bool)

(declare-fun tp!782669 () Bool)

(declare-fun tp!782671 () Bool)

(assert (=> b!2458916 (= e!1559662 (and tp!782669 tp!782671))))

(declare-fun b!2458918 () Bool)

(declare-fun tp!782670 () Bool)

(declare-fun tp!782667 () Bool)

(assert (=> b!2458918 (= e!1559662 (and tp!782670 tp!782667))))

(assert (=> b!2456473 (= tp!781248 e!1559662)))

(assert (= (and b!2456473 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458915))

(assert (= (and b!2456473 ((_ is Concat!11861) (regOne!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458916))

(assert (= (and b!2456473 ((_ is Star!7225) (regOne!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458917))

(assert (= (and b!2456473 ((_ is Union!7225) (regOne!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458918))

(declare-fun b!2458919 () Bool)

(declare-fun e!1559663 () Bool)

(assert (=> b!2458919 (= e!1559663 tp_is_empty!11863)))

(declare-fun b!2458921 () Bool)

(declare-fun tp!782673 () Bool)

(assert (=> b!2458921 (= e!1559663 tp!782673)))

(declare-fun b!2458920 () Bool)

(declare-fun tp!782674 () Bool)

(declare-fun tp!782676 () Bool)

(assert (=> b!2458920 (= e!1559663 (and tp!782674 tp!782676))))

(declare-fun b!2458922 () Bool)

(declare-fun tp!782675 () Bool)

(declare-fun tp!782672 () Bool)

(assert (=> b!2458922 (= e!1559663 (and tp!782675 tp!782672))))

(assert (=> b!2456473 (= tp!781245 e!1559663)))

(assert (= (and b!2456473 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458919))

(assert (= (and b!2456473 ((_ is Concat!11861) (regTwo!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458920))

(assert (= (and b!2456473 ((_ is Star!7225) (regTwo!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458921))

(assert (= (and b!2456473 ((_ is Union!7225) (regTwo!14963 (regOne!14962 (regTwo!14962 r!13927))))) b!2458922))

(declare-fun b!2458923 () Bool)

(declare-fun e!1559664 () Bool)

(assert (=> b!2458923 (= e!1559664 tp_is_empty!11863)))

(declare-fun b!2458925 () Bool)

(declare-fun tp!782678 () Bool)

(assert (=> b!2458925 (= e!1559664 tp!782678)))

(declare-fun b!2458924 () Bool)

(declare-fun tp!782679 () Bool)

(declare-fun tp!782681 () Bool)

(assert (=> b!2458924 (= e!1559664 (and tp!782679 tp!782681))))

(declare-fun b!2458926 () Bool)

(declare-fun tp!782680 () Bool)

(declare-fun tp!782677 () Bool)

(assert (=> b!2458926 (= e!1559664 (and tp!782680 tp!782677))))

(assert (=> b!2456532 (= tp!781323 e!1559664)))

(assert (= (and b!2456532 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14963 (h!33989 l!9164))))) b!2458923))

(assert (= (and b!2456532 ((_ is Concat!11861) (regOne!14962 (regOne!14963 (h!33989 l!9164))))) b!2458924))

(assert (= (and b!2456532 ((_ is Star!7225) (regOne!14962 (regOne!14963 (h!33989 l!9164))))) b!2458925))

(assert (= (and b!2456532 ((_ is Union!7225) (regOne!14962 (regOne!14963 (h!33989 l!9164))))) b!2458926))

(declare-fun b!2458927 () Bool)

(declare-fun e!1559665 () Bool)

(assert (=> b!2458927 (= e!1559665 tp_is_empty!11863)))

(declare-fun b!2458929 () Bool)

(declare-fun tp!782683 () Bool)

(assert (=> b!2458929 (= e!1559665 tp!782683)))

(declare-fun b!2458928 () Bool)

(declare-fun tp!782684 () Bool)

(declare-fun tp!782686 () Bool)

(assert (=> b!2458928 (= e!1559665 (and tp!782684 tp!782686))))

(declare-fun b!2458930 () Bool)

(declare-fun tp!782685 () Bool)

(declare-fun tp!782682 () Bool)

(assert (=> b!2458930 (= e!1559665 (and tp!782685 tp!782682))))

(assert (=> b!2456532 (= tp!781325 e!1559665)))

(assert (= (and b!2456532 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14963 (h!33989 l!9164))))) b!2458927))

(assert (= (and b!2456532 ((_ is Concat!11861) (regTwo!14962 (regOne!14963 (h!33989 l!9164))))) b!2458928))

(assert (= (and b!2456532 ((_ is Star!7225) (regTwo!14962 (regOne!14963 (h!33989 l!9164))))) b!2458929))

(assert (= (and b!2456532 ((_ is Union!7225) (regTwo!14962 (regOne!14963 (h!33989 l!9164))))) b!2458930))

(declare-fun b!2458931 () Bool)

(declare-fun e!1559666 () Bool)

(assert (=> b!2458931 (= e!1559666 tp_is_empty!11863)))

(declare-fun b!2458933 () Bool)

(declare-fun tp!782688 () Bool)

(assert (=> b!2458933 (= e!1559666 tp!782688)))

(declare-fun b!2458932 () Bool)

(declare-fun tp!782689 () Bool)

(declare-fun tp!782691 () Bool)

(assert (=> b!2458932 (= e!1559666 (and tp!782689 tp!782691))))

(declare-fun b!2458934 () Bool)

(declare-fun tp!782690 () Bool)

(declare-fun tp!782687 () Bool)

(assert (=> b!2458934 (= e!1559666 (and tp!782690 tp!782687))))

(assert (=> b!2456550 (= tp!781344 e!1559666)))

(assert (= (and b!2456550 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458931))

(assert (= (and b!2456550 ((_ is Concat!11861) (regOne!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458932))

(assert (= (and b!2456550 ((_ is Star!7225) (regOne!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458933))

(assert (= (and b!2456550 ((_ is Union!7225) (regOne!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458934))

(declare-fun b!2458935 () Bool)

(declare-fun e!1559667 () Bool)

(assert (=> b!2458935 (= e!1559667 tp_is_empty!11863)))

(declare-fun b!2458937 () Bool)

(declare-fun tp!782693 () Bool)

(assert (=> b!2458937 (= e!1559667 tp!782693)))

(declare-fun b!2458936 () Bool)

(declare-fun tp!782694 () Bool)

(declare-fun tp!782696 () Bool)

(assert (=> b!2458936 (= e!1559667 (and tp!782694 tp!782696))))

(declare-fun b!2458938 () Bool)

(declare-fun tp!782695 () Bool)

(declare-fun tp!782692 () Bool)

(assert (=> b!2458938 (= e!1559667 (and tp!782695 tp!782692))))

(assert (=> b!2456550 (= tp!781341 e!1559667)))

(assert (= (and b!2456550 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458935))

(assert (= (and b!2456550 ((_ is Concat!11861) (regTwo!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458936))

(assert (= (and b!2456550 ((_ is Star!7225) (regTwo!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458937))

(assert (= (and b!2456550 ((_ is Union!7225) (regTwo!14963 (regTwo!14962 (h!33989 l!9164))))) b!2458938))

(declare-fun b!2458939 () Bool)

(declare-fun e!1559668 () Bool)

(assert (=> b!2458939 (= e!1559668 tp_is_empty!11863)))

(declare-fun b!2458941 () Bool)

(declare-fun tp!782698 () Bool)

(assert (=> b!2458941 (= e!1559668 tp!782698)))

(declare-fun b!2458940 () Bool)

(declare-fun tp!782699 () Bool)

(declare-fun tp!782701 () Bool)

(assert (=> b!2458940 (= e!1559668 (and tp!782699 tp!782701))))

(declare-fun b!2458942 () Bool)

(declare-fun tp!782700 () Bool)

(declare-fun tp!782697 () Bool)

(assert (=> b!2458942 (= e!1559668 (and tp!782700 tp!782697))))

(assert (=> b!2456541 (= tp!781332 e!1559668)))

(assert (= (and b!2456541 ((_ is ElementMatch!7225) (reg!7554 (reg!7554 (reg!7554 r!13927))))) b!2458939))

(assert (= (and b!2456541 ((_ is Concat!11861) (reg!7554 (reg!7554 (reg!7554 r!13927))))) b!2458940))

(assert (= (and b!2456541 ((_ is Star!7225) (reg!7554 (reg!7554 (reg!7554 r!13927))))) b!2458941))

(assert (= (and b!2456541 ((_ is Union!7225) (reg!7554 (reg!7554 (reg!7554 r!13927))))) b!2458942))

(declare-fun b!2458943 () Bool)

(declare-fun e!1559669 () Bool)

(assert (=> b!2458943 (= e!1559669 tp_is_empty!11863)))

(declare-fun b!2458945 () Bool)

(declare-fun tp!782703 () Bool)

(assert (=> b!2458945 (= e!1559669 tp!782703)))

(declare-fun b!2458944 () Bool)

(declare-fun tp!782704 () Bool)

(declare-fun tp!782706 () Bool)

(assert (=> b!2458944 (= e!1559669 (and tp!782704 tp!782706))))

(declare-fun b!2458946 () Bool)

(declare-fun tp!782705 () Bool)

(declare-fun tp!782702 () Bool)

(assert (=> b!2458946 (= e!1559669 (and tp!782705 tp!782702))))

(assert (=> b!2456441 (= tp!781208 e!1559669)))

(assert (= (and b!2456441 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458943))

(assert (= (and b!2456441 ((_ is Concat!11861) (regOne!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458944))

(assert (= (and b!2456441 ((_ is Star!7225) (regOne!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458945))

(assert (= (and b!2456441 ((_ is Union!7225) (regOne!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458946))

(declare-fun b!2458947 () Bool)

(declare-fun e!1559670 () Bool)

(assert (=> b!2458947 (= e!1559670 tp_is_empty!11863)))

(declare-fun b!2458949 () Bool)

(declare-fun tp!782708 () Bool)

(assert (=> b!2458949 (= e!1559670 tp!782708)))

(declare-fun b!2458948 () Bool)

(declare-fun tp!782709 () Bool)

(declare-fun tp!782711 () Bool)

(assert (=> b!2458948 (= e!1559670 (and tp!782709 tp!782711))))

(declare-fun b!2458950 () Bool)

(declare-fun tp!782710 () Bool)

(declare-fun tp!782707 () Bool)

(assert (=> b!2458950 (= e!1559670 (and tp!782710 tp!782707))))

(assert (=> b!2456441 (= tp!781205 e!1559670)))

(assert (= (and b!2456441 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458947))

(assert (= (and b!2456441 ((_ is Concat!11861) (regTwo!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458948))

(assert (= (and b!2456441 ((_ is Star!7225) (regTwo!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458949))

(assert (= (and b!2456441 ((_ is Union!7225) (regTwo!14963 (regOne!14963 (regOne!14962 r!13927))))) b!2458950))

(declare-fun b!2458951 () Bool)

(declare-fun e!1559671 () Bool)

(assert (=> b!2458951 (= e!1559671 tp_is_empty!11863)))

(declare-fun b!2458953 () Bool)

(declare-fun tp!782713 () Bool)

(assert (=> b!2458953 (= e!1559671 tp!782713)))

(declare-fun b!2458952 () Bool)

(declare-fun tp!782714 () Bool)

(declare-fun tp!782716 () Bool)

(assert (=> b!2458952 (= e!1559671 (and tp!782714 tp!782716))))

(declare-fun b!2458954 () Bool)

(declare-fun tp!782715 () Bool)

(declare-fun tp!782712 () Bool)

(assert (=> b!2458954 (= e!1559671 (and tp!782715 tp!782712))))

(assert (=> b!2456493 (= tp!781273 e!1559671)))

(assert (= (and b!2456493 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458951))

(assert (= (and b!2456493 ((_ is Concat!11861) (regOne!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458952))

(assert (= (and b!2456493 ((_ is Star!7225) (regOne!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458953))

(assert (= (and b!2456493 ((_ is Union!7225) (regOne!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458954))

(declare-fun b!2458955 () Bool)

(declare-fun e!1559672 () Bool)

(assert (=> b!2458955 (= e!1559672 tp_is_empty!11863)))

(declare-fun b!2458957 () Bool)

(declare-fun tp!782718 () Bool)

(assert (=> b!2458957 (= e!1559672 tp!782718)))

(declare-fun b!2458956 () Bool)

(declare-fun tp!782719 () Bool)

(declare-fun tp!782721 () Bool)

(assert (=> b!2458956 (= e!1559672 (and tp!782719 tp!782721))))

(declare-fun b!2458958 () Bool)

(declare-fun tp!782720 () Bool)

(declare-fun tp!782717 () Bool)

(assert (=> b!2458958 (= e!1559672 (and tp!782720 tp!782717))))

(assert (=> b!2456493 (= tp!781270 e!1559672)))

(assert (= (and b!2456493 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458955))

(assert (= (and b!2456493 ((_ is Concat!11861) (regTwo!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458956))

(assert (= (and b!2456493 ((_ is Star!7225) (regTwo!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458957))

(assert (= (and b!2456493 ((_ is Union!7225) (regTwo!14963 (regOne!14963 (regTwo!14963 r!13927))))) b!2458958))

(declare-fun b!2458959 () Bool)

(declare-fun e!1559673 () Bool)

(assert (=> b!2458959 (= e!1559673 tp_is_empty!11863)))

(declare-fun b!2458961 () Bool)

(declare-fun tp!782723 () Bool)

(assert (=> b!2458961 (= e!1559673 tp!782723)))

(declare-fun b!2458960 () Bool)

(declare-fun tp!782724 () Bool)

(declare-fun tp!782726 () Bool)

(assert (=> b!2458960 (= e!1559673 (and tp!782724 tp!782726))))

(declare-fun b!2458962 () Bool)

(declare-fun tp!782725 () Bool)

(declare-fun tp!782722 () Bool)

(assert (=> b!2458962 (= e!1559673 (and tp!782725 tp!782722))))

(assert (=> b!2456518 (= tp!781304 e!1559673)))

(assert (= (and b!2456518 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458959))

(assert (= (and b!2456518 ((_ is Concat!11861) (regOne!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458960))

(assert (= (and b!2456518 ((_ is Star!7225) (regOne!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458961))

(assert (= (and b!2456518 ((_ is Union!7225) (regOne!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458962))

(declare-fun b!2458963 () Bool)

(declare-fun e!1559674 () Bool)

(assert (=> b!2458963 (= e!1559674 tp_is_empty!11863)))

(declare-fun b!2458965 () Bool)

(declare-fun tp!782728 () Bool)

(assert (=> b!2458965 (= e!1559674 tp!782728)))

(declare-fun b!2458964 () Bool)

(declare-fun tp!782729 () Bool)

(declare-fun tp!782731 () Bool)

(assert (=> b!2458964 (= e!1559674 (and tp!782729 tp!782731))))

(declare-fun b!2458966 () Bool)

(declare-fun tp!782730 () Bool)

(declare-fun tp!782727 () Bool)

(assert (=> b!2458966 (= e!1559674 (and tp!782730 tp!782727))))

(assert (=> b!2456518 (= tp!781301 e!1559674)))

(assert (= (and b!2456518 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458963))

(assert (= (and b!2456518 ((_ is Concat!11861) (regTwo!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458964))

(assert (= (and b!2456518 ((_ is Star!7225) (regTwo!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458965))

(assert (= (and b!2456518 ((_ is Union!7225) (regTwo!14963 (regTwo!14962 (regTwo!14963 r!13927))))) b!2458966))

(declare-fun b!2458967 () Bool)

(declare-fun e!1559675 () Bool)

(assert (=> b!2458967 (= e!1559675 tp_is_empty!11863)))

(declare-fun b!2458969 () Bool)

(declare-fun tp!782733 () Bool)

(assert (=> b!2458969 (= e!1559675 tp!782733)))

(declare-fun b!2458968 () Bool)

(declare-fun tp!782734 () Bool)

(declare-fun tp!782736 () Bool)

(assert (=> b!2458968 (= e!1559675 (and tp!782734 tp!782736))))

(declare-fun b!2458970 () Bool)

(declare-fun tp!782735 () Bool)

(declare-fun tp!782732 () Bool)

(assert (=> b!2458970 (= e!1559675 (and tp!782735 tp!782732))))

(assert (=> b!2456507 (= tp!781292 e!1559675)))

(assert (= (and b!2456507 ((_ is ElementMatch!7225) (regOne!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458967))

(assert (= (and b!2456507 ((_ is Concat!11861) (regOne!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458968))

(assert (= (and b!2456507 ((_ is Star!7225) (regOne!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458969))

(assert (= (and b!2456507 ((_ is Union!7225) (regOne!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458970))

(declare-fun b!2458971 () Bool)

(declare-fun e!1559676 () Bool)

(assert (=> b!2458971 (= e!1559676 tp_is_empty!11863)))

(declare-fun b!2458973 () Bool)

(declare-fun tp!782738 () Bool)

(assert (=> b!2458973 (= e!1559676 tp!782738)))

(declare-fun b!2458972 () Bool)

(declare-fun tp!782739 () Bool)

(declare-fun tp!782741 () Bool)

(assert (=> b!2458972 (= e!1559676 (and tp!782739 tp!782741))))

(declare-fun b!2458974 () Bool)

(declare-fun tp!782740 () Bool)

(declare-fun tp!782737 () Bool)

(assert (=> b!2458974 (= e!1559676 (and tp!782740 tp!782737))))

(assert (=> b!2456507 (= tp!781294 e!1559676)))

(assert (= (and b!2456507 ((_ is ElementMatch!7225) (regTwo!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458971))

(assert (= (and b!2456507 ((_ is Concat!11861) (regTwo!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458972))

(assert (= (and b!2456507 ((_ is Star!7225) (regTwo!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458973))

(assert (= (and b!2456507 ((_ is Union!7225) (regTwo!14962 (reg!7554 (regOne!14963 r!13927))))) b!2458974))

(declare-fun b!2458975 () Bool)

(declare-fun e!1559677 () Bool)

(assert (=> b!2458975 (= e!1559677 tp_is_empty!11863)))

(declare-fun b!2458977 () Bool)

(declare-fun tp!782743 () Bool)

(assert (=> b!2458977 (= e!1559677 tp!782743)))

(declare-fun b!2458976 () Bool)

(declare-fun tp!782744 () Bool)

(declare-fun tp!782746 () Bool)

(assert (=> b!2458976 (= e!1559677 (and tp!782744 tp!782746))))

(declare-fun b!2458978 () Bool)

(declare-fun tp!782745 () Bool)

(declare-fun tp!782742 () Bool)

(assert (=> b!2458978 (= e!1559677 (and tp!782745 tp!782742))))

(assert (=> b!2456554 (= tp!781349 e!1559677)))

(assert (= (and b!2456554 ((_ is ElementMatch!7225) (regOne!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458975))

(assert (= (and b!2456554 ((_ is Concat!11861) (regOne!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458976))

(assert (= (and b!2456554 ((_ is Star!7225) (regOne!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458977))

(assert (= (and b!2456554 ((_ is Union!7225) (regOne!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458978))

(declare-fun b!2458979 () Bool)

(declare-fun e!1559678 () Bool)

(assert (=> b!2458979 (= e!1559678 tp_is_empty!11863)))

(declare-fun b!2458981 () Bool)

(declare-fun tp!782748 () Bool)

(assert (=> b!2458981 (= e!1559678 tp!782748)))

(declare-fun b!2458980 () Bool)

(declare-fun tp!782749 () Bool)

(declare-fun tp!782751 () Bool)

(assert (=> b!2458980 (= e!1559678 (and tp!782749 tp!782751))))

(declare-fun b!2458982 () Bool)

(declare-fun tp!782750 () Bool)

(declare-fun tp!782747 () Bool)

(assert (=> b!2458982 (= e!1559678 (and tp!782750 tp!782747))))

(assert (=> b!2456554 (= tp!781346 e!1559678)))

(assert (= (and b!2456554 ((_ is ElementMatch!7225) (regTwo!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458979))

(assert (= (and b!2456554 ((_ is Concat!11861) (regTwo!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458980))

(assert (= (and b!2456554 ((_ is Star!7225) (regTwo!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458981))

(assert (= (and b!2456554 ((_ is Union!7225) (regTwo!14963 (regOne!14962 (reg!7554 r!13927))))) b!2458982))

(declare-fun b!2458983 () Bool)

(declare-fun e!1559679 () Bool)

(assert (=> b!2458983 (= e!1559679 tp_is_empty!11863)))

(declare-fun b!2458985 () Bool)

(declare-fun tp!782753 () Bool)

(assert (=> b!2458985 (= e!1559679 tp!782753)))

(declare-fun b!2458984 () Bool)

(declare-fun tp!782754 () Bool)

(declare-fun tp!782756 () Bool)

(assert (=> b!2458984 (= e!1559679 (and tp!782754 tp!782756))))

(declare-fun b!2458986 () Bool)

(declare-fun tp!782755 () Bool)

(declare-fun tp!782752 () Bool)

(assert (=> b!2458986 (= e!1559679 (and tp!782755 tp!782752))))

(assert (=> b!2456545 (= tp!781337 e!1559679)))

(assert (= (and b!2456545 ((_ is ElementMatch!7225) (reg!7554 (regOne!14962 (h!33989 l!9164))))) b!2458983))

(assert (= (and b!2456545 ((_ is Concat!11861) (reg!7554 (regOne!14962 (h!33989 l!9164))))) b!2458984))

(assert (= (and b!2456545 ((_ is Star!7225) (reg!7554 (regOne!14962 (h!33989 l!9164))))) b!2458985))

(assert (= (and b!2456545 ((_ is Union!7225) (reg!7554 (regOne!14962 (h!33989 l!9164))))) b!2458986))

(declare-fun b!2458987 () Bool)

(declare-fun e!1559680 () Bool)

(assert (=> b!2458987 (= e!1559680 tp_is_empty!11863)))

(declare-fun b!2458989 () Bool)

(declare-fun tp!782758 () Bool)

(assert (=> b!2458989 (= e!1559680 tp!782758)))

(declare-fun b!2458988 () Bool)

(declare-fun tp!782759 () Bool)

(declare-fun tp!782761 () Bool)

(assert (=> b!2458988 (= e!1559680 (and tp!782759 tp!782761))))

(declare-fun b!2458990 () Bool)

(declare-fun tp!782760 () Bool)

(declare-fun tp!782757 () Bool)

(assert (=> b!2458990 (= e!1559680 (and tp!782760 tp!782757))))

(assert (=> b!2456468 (= tp!781241 e!1559680)))

(assert (= (and b!2456468 ((_ is ElementMatch!7225) (reg!7554 (reg!7554 (regOne!14962 r!13927))))) b!2458987))

(assert (= (and b!2456468 ((_ is Concat!11861) (reg!7554 (reg!7554 (regOne!14962 r!13927))))) b!2458988))

(assert (= (and b!2456468 ((_ is Star!7225) (reg!7554 (reg!7554 (regOne!14962 r!13927))))) b!2458989))

(assert (= (and b!2456468 ((_ is Union!7225) (reg!7554 (reg!7554 (regOne!14962 r!13927))))) b!2458990))

(declare-fun b!2458991 () Bool)

(declare-fun e!1559681 () Bool)

(assert (=> b!2458991 (= e!1559681 tp_is_empty!11863)))

(declare-fun b!2458993 () Bool)

(declare-fun tp!782763 () Bool)

(assert (=> b!2458993 (= e!1559681 tp!782763)))

(declare-fun b!2458992 () Bool)

(declare-fun tp!782764 () Bool)

(declare-fun tp!782766 () Bool)

(assert (=> b!2458992 (= e!1559681 (and tp!782764 tp!782766))))

(declare-fun b!2458994 () Bool)

(declare-fun tp!782765 () Bool)

(declare-fun tp!782762 () Bool)

(assert (=> b!2458994 (= e!1559681 (and tp!782765 tp!782762))))

(assert (=> b!2456459 (= tp!781232 e!1559681)))

(assert (= (and b!2456459 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458991))

(assert (= (and b!2456459 ((_ is Concat!11861) (regOne!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458992))

(assert (= (and b!2456459 ((_ is Star!7225) (regOne!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458993))

(assert (= (and b!2456459 ((_ is Union!7225) (regOne!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458994))

(declare-fun b!2458995 () Bool)

(declare-fun e!1559682 () Bool)

(assert (=> b!2458995 (= e!1559682 tp_is_empty!11863)))

(declare-fun b!2458997 () Bool)

(declare-fun tp!782768 () Bool)

(assert (=> b!2458997 (= e!1559682 tp!782768)))

(declare-fun b!2458996 () Bool)

(declare-fun tp!782769 () Bool)

(declare-fun tp!782771 () Bool)

(assert (=> b!2458996 (= e!1559682 (and tp!782769 tp!782771))))

(declare-fun b!2458998 () Bool)

(declare-fun tp!782770 () Bool)

(declare-fun tp!782767 () Bool)

(assert (=> b!2458998 (= e!1559682 (and tp!782770 tp!782767))))

(assert (=> b!2456459 (= tp!781234 e!1559682)))

(assert (= (and b!2456459 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458995))

(assert (= (and b!2456459 ((_ is Concat!11861) (regTwo!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458996))

(assert (= (and b!2456459 ((_ is Star!7225) (regTwo!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458997))

(assert (= (and b!2456459 ((_ is Union!7225) (regTwo!14962 (regOne!14963 (regTwo!14962 r!13927))))) b!2458998))

(declare-fun b!2458999 () Bool)

(declare-fun e!1559683 () Bool)

(assert (=> b!2458999 (= e!1559683 tp_is_empty!11863)))

(declare-fun b!2459001 () Bool)

(declare-fun tp!782773 () Bool)

(assert (=> b!2459001 (= e!1559683 tp!782773)))

(declare-fun b!2459000 () Bool)

(declare-fun tp!782774 () Bool)

(declare-fun tp!782776 () Bool)

(assert (=> b!2459000 (= e!1559683 (and tp!782774 tp!782776))))

(declare-fun b!2459002 () Bool)

(declare-fun tp!782775 () Bool)

(declare-fun tp!782772 () Bool)

(assert (=> b!2459002 (= e!1559683 (and tp!782775 tp!782772))))

(assert (=> b!2456435 (= tp!781199 e!1559683)))

(assert (= (and b!2456435 ((_ is ElementMatch!7225) (reg!7554 (h!33989 (t!208663 l!9164))))) b!2458999))

(assert (= (and b!2456435 ((_ is Concat!11861) (reg!7554 (h!33989 (t!208663 l!9164))))) b!2459000))

(assert (= (and b!2456435 ((_ is Star!7225) (reg!7554 (h!33989 (t!208663 l!9164))))) b!2459001))

(assert (= (and b!2456435 ((_ is Union!7225) (reg!7554 (h!33989 (t!208663 l!9164))))) b!2459002))

(declare-fun b!2459003 () Bool)

(declare-fun e!1559684 () Bool)

(assert (=> b!2459003 (= e!1559684 tp_is_empty!11863)))

(declare-fun b!2459005 () Bool)

(declare-fun tp!782778 () Bool)

(assert (=> b!2459005 (= e!1559684 tp!782778)))

(declare-fun b!2459004 () Bool)

(declare-fun tp!782779 () Bool)

(declare-fun tp!782781 () Bool)

(assert (=> b!2459004 (= e!1559684 (and tp!782779 tp!782781))))

(declare-fun b!2459006 () Bool)

(declare-fun tp!782780 () Bool)

(declare-fun tp!782777 () Bool)

(assert (=> b!2459006 (= e!1559684 (and tp!782780 tp!782777))))

(assert (=> b!2456536 (= tp!781328 e!1559684)))

(assert (= (and b!2456536 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459003))

(assert (= (and b!2456536 ((_ is Concat!11861) (regOne!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459004))

(assert (= (and b!2456536 ((_ is Star!7225) (regOne!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459005))

(assert (= (and b!2456536 ((_ is Union!7225) (regOne!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459006))

(declare-fun b!2459007 () Bool)

(declare-fun e!1559685 () Bool)

(assert (=> b!2459007 (= e!1559685 tp_is_empty!11863)))

(declare-fun b!2459009 () Bool)

(declare-fun tp!782783 () Bool)

(assert (=> b!2459009 (= e!1559685 tp!782783)))

(declare-fun b!2459008 () Bool)

(declare-fun tp!782784 () Bool)

(declare-fun tp!782786 () Bool)

(assert (=> b!2459008 (= e!1559685 (and tp!782784 tp!782786))))

(declare-fun b!2459010 () Bool)

(declare-fun tp!782785 () Bool)

(declare-fun tp!782782 () Bool)

(assert (=> b!2459010 (= e!1559685 (and tp!782785 tp!782782))))

(assert (=> b!2456536 (= tp!781330 e!1559685)))

(assert (= (and b!2456536 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459007))

(assert (= (and b!2456536 ((_ is Concat!11861) (regTwo!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459008))

(assert (= (and b!2456536 ((_ is Star!7225) (regTwo!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459009))

(assert (= (and b!2456536 ((_ is Union!7225) (regTwo!14962 (regTwo!14963 (h!33989 l!9164))))) b!2459010))

(declare-fun b!2459011 () Bool)

(declare-fun e!1559686 () Bool)

(assert (=> b!2459011 (= e!1559686 tp_is_empty!11863)))

(declare-fun b!2459013 () Bool)

(declare-fun tp!782788 () Bool)

(assert (=> b!2459013 (= e!1559686 tp!782788)))

(declare-fun b!2459012 () Bool)

(declare-fun tp!782789 () Bool)

(declare-fun tp!782791 () Bool)

(assert (=> b!2459012 (= e!1559686 (and tp!782789 tp!782791))))

(declare-fun b!2459014 () Bool)

(declare-fun tp!782790 () Bool)

(declare-fun tp!782787 () Bool)

(assert (=> b!2459014 (= e!1559686 (and tp!782790 tp!782787))))

(assert (=> b!2456477 (= tp!781253 e!1559686)))

(assert (= (and b!2456477 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459011))

(assert (= (and b!2456477 ((_ is Concat!11861) (regOne!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459012))

(assert (= (and b!2456477 ((_ is Star!7225) (regOne!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459013))

(assert (= (and b!2456477 ((_ is Union!7225) (regOne!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459014))

(declare-fun b!2459015 () Bool)

(declare-fun e!1559687 () Bool)

(assert (=> b!2459015 (= e!1559687 tp_is_empty!11863)))

(declare-fun b!2459017 () Bool)

(declare-fun tp!782793 () Bool)

(assert (=> b!2459017 (= e!1559687 tp!782793)))

(declare-fun b!2459016 () Bool)

(declare-fun tp!782794 () Bool)

(declare-fun tp!782796 () Bool)

(assert (=> b!2459016 (= e!1559687 (and tp!782794 tp!782796))))

(declare-fun b!2459018 () Bool)

(declare-fun tp!782795 () Bool)

(declare-fun tp!782792 () Bool)

(assert (=> b!2459018 (= e!1559687 (and tp!782795 tp!782792))))

(assert (=> b!2456477 (= tp!781250 e!1559687)))

(assert (= (and b!2456477 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459015))

(assert (= (and b!2456477 ((_ is Concat!11861) (regTwo!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459016))

(assert (= (and b!2456477 ((_ is Star!7225) (regTwo!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459017))

(assert (= (and b!2456477 ((_ is Union!7225) (regTwo!14963 (regTwo!14962 (regTwo!14962 r!13927))))) b!2459018))

(declare-fun b!2459019 () Bool)

(declare-fun e!1559688 () Bool)

(assert (=> b!2459019 (= e!1559688 tp_is_empty!11863)))

(declare-fun b!2459021 () Bool)

(declare-fun tp!782798 () Bool)

(assert (=> b!2459021 (= e!1559688 tp!782798)))

(declare-fun b!2459020 () Bool)

(declare-fun tp!782799 () Bool)

(declare-fun tp!782801 () Bool)

(assert (=> b!2459020 (= e!1559688 (and tp!782799 tp!782801))))

(declare-fun b!2459022 () Bool)

(declare-fun tp!782800 () Bool)

(declare-fun tp!782797 () Bool)

(assert (=> b!2459022 (= e!1559688 (and tp!782800 tp!782797))))

(assert (=> b!2456522 (= tp!781309 e!1559688)))

(assert (= (and b!2456522 ((_ is ElementMatch!7225) (regOne!14963 (reg!7554 (h!33989 l!9164))))) b!2459019))

(assert (= (and b!2456522 ((_ is Concat!11861) (regOne!14963 (reg!7554 (h!33989 l!9164))))) b!2459020))

(assert (= (and b!2456522 ((_ is Star!7225) (regOne!14963 (reg!7554 (h!33989 l!9164))))) b!2459021))

(assert (= (and b!2456522 ((_ is Union!7225) (regOne!14963 (reg!7554 (h!33989 l!9164))))) b!2459022))

(declare-fun b!2459023 () Bool)

(declare-fun e!1559689 () Bool)

(assert (=> b!2459023 (= e!1559689 tp_is_empty!11863)))

(declare-fun b!2459025 () Bool)

(declare-fun tp!782803 () Bool)

(assert (=> b!2459025 (= e!1559689 tp!782803)))

(declare-fun b!2459024 () Bool)

(declare-fun tp!782804 () Bool)

(declare-fun tp!782806 () Bool)

(assert (=> b!2459024 (= e!1559689 (and tp!782804 tp!782806))))

(declare-fun b!2459026 () Bool)

(declare-fun tp!782805 () Bool)

(declare-fun tp!782802 () Bool)

(assert (=> b!2459026 (= e!1559689 (and tp!782805 tp!782802))))

(assert (=> b!2456522 (= tp!781306 e!1559689)))

(assert (= (and b!2456522 ((_ is ElementMatch!7225) (regTwo!14963 (reg!7554 (h!33989 l!9164))))) b!2459023))

(assert (= (and b!2456522 ((_ is Concat!11861) (regTwo!14963 (reg!7554 (h!33989 l!9164))))) b!2459024))

(assert (= (and b!2456522 ((_ is Star!7225) (regTwo!14963 (reg!7554 (h!33989 l!9164))))) b!2459025))

(assert (= (and b!2456522 ((_ is Union!7225) (regTwo!14963 (reg!7554 (h!33989 l!9164))))) b!2459026))

(declare-fun b!2459027 () Bool)

(declare-fun e!1559690 () Bool)

(assert (=> b!2459027 (= e!1559690 tp_is_empty!11863)))

(declare-fun b!2459029 () Bool)

(declare-fun tp!782808 () Bool)

(assert (=> b!2459029 (= e!1559690 tp!782808)))

(declare-fun b!2459028 () Bool)

(declare-fun tp!782809 () Bool)

(declare-fun tp!782811 () Bool)

(assert (=> b!2459028 (= e!1559690 (and tp!782809 tp!782811))))

(declare-fun b!2459030 () Bool)

(declare-fun tp!782810 () Bool)

(declare-fun tp!782807 () Bool)

(assert (=> b!2459030 (= e!1559690 (and tp!782810 tp!782807))))

(assert (=> b!2456513 (= tp!781297 e!1559690)))

(assert (= (and b!2456513 ((_ is ElementMatch!7225) (reg!7554 (regOne!14962 (regTwo!14963 r!13927))))) b!2459027))

(assert (= (and b!2456513 ((_ is Concat!11861) (reg!7554 (regOne!14962 (regTwo!14963 r!13927))))) b!2459028))

(assert (= (and b!2456513 ((_ is Star!7225) (reg!7554 (regOne!14962 (regTwo!14963 r!13927))))) b!2459029))

(assert (= (and b!2456513 ((_ is Union!7225) (reg!7554 (regOne!14962 (regTwo!14963 r!13927))))) b!2459030))

(declare-fun b!2459031 () Bool)

(declare-fun e!1559691 () Bool)

(assert (=> b!2459031 (= e!1559691 tp_is_empty!11863)))

(declare-fun b!2459033 () Bool)

(declare-fun tp!782813 () Bool)

(assert (=> b!2459033 (= e!1559691 tp!782813)))

(declare-fun b!2459032 () Bool)

(declare-fun tp!782814 () Bool)

(declare-fun tp!782816 () Bool)

(assert (=> b!2459032 (= e!1559691 (and tp!782814 tp!782816))))

(declare-fun b!2459034 () Bool)

(declare-fun tp!782815 () Bool)

(declare-fun tp!782812 () Bool)

(assert (=> b!2459034 (= e!1559691 (and tp!782815 tp!782812))))

(assert (=> b!2456488 (= tp!781266 e!1559691)))

(assert (= (and b!2456488 ((_ is ElementMatch!7225) (reg!7554 (reg!7554 (regTwo!14963 r!13927))))) b!2459031))

(assert (= (and b!2456488 ((_ is Concat!11861) (reg!7554 (reg!7554 (regTwo!14963 r!13927))))) b!2459032))

(assert (= (and b!2456488 ((_ is Star!7225) (reg!7554 (reg!7554 (regTwo!14963 r!13927))))) b!2459033))

(assert (= (and b!2456488 ((_ is Union!7225) (reg!7554 (reg!7554 (regTwo!14963 r!13927))))) b!2459034))

(declare-fun b!2459035 () Bool)

(declare-fun e!1559692 () Bool)

(assert (=> b!2459035 (= e!1559692 tp_is_empty!11863)))

(declare-fun b!2459037 () Bool)

(declare-fun tp!782818 () Bool)

(assert (=> b!2459037 (= e!1559692 tp!782818)))

(declare-fun b!2459036 () Bool)

(declare-fun tp!782819 () Bool)

(declare-fun tp!782821 () Bool)

(assert (=> b!2459036 (= e!1559692 (and tp!782819 tp!782821))))

(declare-fun b!2459038 () Bool)

(declare-fun tp!782820 () Bool)

(declare-fun tp!782817 () Bool)

(assert (=> b!2459038 (= e!1559692 (and tp!782820 tp!782817))))

(assert (=> b!2456479 (= tp!781257 e!1559692)))

(assert (= (and b!2456479 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459035))

(assert (= (and b!2456479 ((_ is Concat!11861) (regOne!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459036))

(assert (= (and b!2456479 ((_ is Star!7225) (regOne!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459037))

(assert (= (and b!2456479 ((_ is Union!7225) (regOne!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459038))

(declare-fun b!2459039 () Bool)

(declare-fun e!1559693 () Bool)

(assert (=> b!2459039 (= e!1559693 tp_is_empty!11863)))

(declare-fun b!2459041 () Bool)

(declare-fun tp!782823 () Bool)

(assert (=> b!2459041 (= e!1559693 tp!782823)))

(declare-fun b!2459040 () Bool)

(declare-fun tp!782824 () Bool)

(declare-fun tp!782826 () Bool)

(assert (=> b!2459040 (= e!1559693 (and tp!782824 tp!782826))))

(declare-fun b!2459042 () Bool)

(declare-fun tp!782825 () Bool)

(declare-fun tp!782822 () Bool)

(assert (=> b!2459042 (= e!1559693 (and tp!782825 tp!782822))))

(assert (=> b!2456479 (= tp!781259 e!1559693)))

(assert (= (and b!2456479 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459039))

(assert (= (and b!2456479 ((_ is Concat!11861) (regTwo!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459040))

(assert (= (and b!2456479 ((_ is Star!7225) (regTwo!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459041))

(assert (= (and b!2456479 ((_ is Union!7225) (regTwo!14962 (regOne!14963 (reg!7554 r!13927))))) b!2459042))

(declare-fun b!2459043 () Bool)

(declare-fun e!1559694 () Bool)

(assert (=> b!2459043 (= e!1559694 tp_is_empty!11863)))

(declare-fun b!2459045 () Bool)

(declare-fun tp!782828 () Bool)

(assert (=> b!2459045 (= e!1559694 tp!782828)))

(declare-fun b!2459044 () Bool)

(declare-fun tp!782829 () Bool)

(declare-fun tp!782831 () Bool)

(assert (=> b!2459044 (= e!1559694 (and tp!782829 tp!782831))))

(declare-fun b!2459046 () Bool)

(declare-fun tp!782830 () Bool)

(declare-fun tp!782827 () Bool)

(assert (=> b!2459046 (= e!1559694 (and tp!782830 tp!782827))))

(assert (=> b!2456497 (= tp!781278 e!1559694)))

(assert (= (and b!2456497 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459043))

(assert (= (and b!2456497 ((_ is Concat!11861) (regOne!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459044))

(assert (= (and b!2456497 ((_ is Star!7225) (regOne!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459045))

(assert (= (and b!2456497 ((_ is Union!7225) (regOne!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459046))

(declare-fun b!2459047 () Bool)

(declare-fun e!1559695 () Bool)

(assert (=> b!2459047 (= e!1559695 tp_is_empty!11863)))

(declare-fun b!2459049 () Bool)

(declare-fun tp!782833 () Bool)

(assert (=> b!2459049 (= e!1559695 tp!782833)))

(declare-fun b!2459048 () Bool)

(declare-fun tp!782834 () Bool)

(declare-fun tp!782836 () Bool)

(assert (=> b!2459048 (= e!1559695 (and tp!782834 tp!782836))))

(declare-fun b!2459050 () Bool)

(declare-fun tp!782835 () Bool)

(declare-fun tp!782832 () Bool)

(assert (=> b!2459050 (= e!1559695 (and tp!782835 tp!782832))))

(assert (=> b!2456497 (= tp!781275 e!1559695)))

(assert (= (and b!2456497 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459047))

(assert (= (and b!2456497 ((_ is Concat!11861) (regTwo!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459048))

(assert (= (and b!2456497 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459049))

(assert (= (and b!2456497 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 (regTwo!14963 r!13927))))) b!2459050))

(declare-fun b!2459051 () Bool)

(declare-fun e!1559696 () Bool)

(assert (=> b!2459051 (= e!1559696 tp_is_empty!11863)))

(declare-fun b!2459053 () Bool)

(declare-fun tp!782838 () Bool)

(assert (=> b!2459053 (= e!1559696 tp!782838)))

(declare-fun b!2459052 () Bool)

(declare-fun tp!782839 () Bool)

(declare-fun tp!782841 () Bool)

(assert (=> b!2459052 (= e!1559696 (and tp!782839 tp!782841))))

(declare-fun b!2459054 () Bool)

(declare-fun tp!782840 () Bool)

(declare-fun tp!782837 () Bool)

(assert (=> b!2459054 (= e!1559696 (and tp!782840 tp!782837))))

(assert (=> b!2456445 (= tp!781213 e!1559696)))

(assert (= (and b!2456445 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459051))

(assert (= (and b!2456445 ((_ is Concat!11861) (regOne!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459052))

(assert (= (and b!2456445 ((_ is Star!7225) (regOne!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459053))

(assert (= (and b!2456445 ((_ is Union!7225) (regOne!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459054))

(declare-fun b!2459055 () Bool)

(declare-fun e!1559697 () Bool)

(assert (=> b!2459055 (= e!1559697 tp_is_empty!11863)))

(declare-fun b!2459057 () Bool)

(declare-fun tp!782843 () Bool)

(assert (=> b!2459057 (= e!1559697 tp!782843)))

(declare-fun b!2459056 () Bool)

(declare-fun tp!782844 () Bool)

(declare-fun tp!782846 () Bool)

(assert (=> b!2459056 (= e!1559697 (and tp!782844 tp!782846))))

(declare-fun b!2459058 () Bool)

(declare-fun tp!782845 () Bool)

(declare-fun tp!782842 () Bool)

(assert (=> b!2459058 (= e!1559697 (and tp!782845 tp!782842))))

(assert (=> b!2456445 (= tp!781210 e!1559697)))

(assert (= (and b!2456445 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459055))

(assert (= (and b!2456445 ((_ is Concat!11861) (regTwo!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459056))

(assert (= (and b!2456445 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459057))

(assert (= (and b!2456445 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 (regOne!14962 r!13927))))) b!2459058))

(declare-fun b!2459059 () Bool)

(declare-fun e!1559698 () Bool)

(assert (=> b!2459059 (= e!1559698 tp_is_empty!11863)))

(declare-fun b!2459061 () Bool)

(declare-fun tp!782848 () Bool)

(assert (=> b!2459061 (= e!1559698 tp!782848)))

(declare-fun b!2459060 () Bool)

(declare-fun tp!782849 () Bool)

(declare-fun tp!782851 () Bool)

(assert (=> b!2459060 (= e!1559698 (and tp!782849 tp!782851))))

(declare-fun b!2459062 () Bool)

(declare-fun tp!782850 () Bool)

(declare-fun tp!782847 () Bool)

(assert (=> b!2459062 (= e!1559698 (and tp!782850 tp!782847))))

(assert (=> b!2456456 (= tp!781226 e!1559698)))

(assert (= (and b!2456456 ((_ is ElementMatch!7225) (reg!7554 (reg!7554 (regTwo!14962 r!13927))))) b!2459059))

(assert (= (and b!2456456 ((_ is Concat!11861) (reg!7554 (reg!7554 (regTwo!14962 r!13927))))) b!2459060))

(assert (= (and b!2456456 ((_ is Star!7225) (reg!7554 (reg!7554 (regTwo!14962 r!13927))))) b!2459061))

(assert (= (and b!2456456 ((_ is Union!7225) (reg!7554 (reg!7554 (regTwo!14962 r!13927))))) b!2459062))

(declare-fun b!2459063 () Bool)

(declare-fun e!1559699 () Bool)

(assert (=> b!2459063 (= e!1559699 tp_is_empty!11863)))

(declare-fun b!2459065 () Bool)

(declare-fun tp!782853 () Bool)

(assert (=> b!2459065 (= e!1559699 tp!782853)))

(declare-fun b!2459064 () Bool)

(declare-fun tp!782854 () Bool)

(declare-fun tp!782856 () Bool)

(assert (=> b!2459064 (= e!1559699 (and tp!782854 tp!782856))))

(declare-fun b!2459066 () Bool)

(declare-fun tp!782855 () Bool)

(declare-fun tp!782852 () Bool)

(assert (=> b!2459066 (= e!1559699 (and tp!782855 tp!782852))))

(assert (=> b!2456447 (= tp!781217 e!1559699)))

(assert (= (and b!2456447 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459063))

(assert (= (and b!2456447 ((_ is Concat!11861) (regOne!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459064))

(assert (= (and b!2456447 ((_ is Star!7225) (regOne!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459065))

(assert (= (and b!2456447 ((_ is Union!7225) (regOne!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459066))

(declare-fun b!2459067 () Bool)

(declare-fun e!1559700 () Bool)

(assert (=> b!2459067 (= e!1559700 tp_is_empty!11863)))

(declare-fun b!2459069 () Bool)

(declare-fun tp!782858 () Bool)

(assert (=> b!2459069 (= e!1559700 tp!782858)))

(declare-fun b!2459068 () Bool)

(declare-fun tp!782859 () Bool)

(declare-fun tp!782861 () Bool)

(assert (=> b!2459068 (= e!1559700 (and tp!782859 tp!782861))))

(declare-fun b!2459070 () Bool)

(declare-fun tp!782860 () Bool)

(declare-fun tp!782857 () Bool)

(assert (=> b!2459070 (= e!1559700 (and tp!782860 tp!782857))))

(assert (=> b!2456447 (= tp!781219 e!1559700)))

(assert (= (and b!2456447 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459067))

(assert (= (and b!2456447 ((_ is Concat!11861) (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459068))

(assert (= (and b!2456447 ((_ is Star!7225) (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459069))

(assert (= (and b!2456447 ((_ is Union!7225) (regTwo!14962 (regOne!14963 (regOne!14963 r!13927))))) b!2459070))

(declare-fun b!2459071 () Bool)

(declare-fun e!1559701 () Bool)

(assert (=> b!2459071 (= e!1559701 tp_is_empty!11863)))

(declare-fun b!2459073 () Bool)

(declare-fun tp!782863 () Bool)

(assert (=> b!2459073 (= e!1559701 tp!782863)))

(declare-fun b!2459072 () Bool)

(declare-fun tp!782864 () Bool)

(declare-fun tp!782866 () Bool)

(assert (=> b!2459072 (= e!1559701 (and tp!782864 tp!782866))))

(declare-fun b!2459074 () Bool)

(declare-fun tp!782865 () Bool)

(declare-fun tp!782862 () Bool)

(assert (=> b!2459074 (= e!1559701 (and tp!782865 tp!782862))))

(assert (=> b!2456465 (= tp!781238 e!1559701)))

(assert (= (and b!2456465 ((_ is ElementMatch!7225) (regOne!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459071))

(assert (= (and b!2456465 ((_ is Concat!11861) (regOne!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459072))

(assert (= (and b!2456465 ((_ is Star!7225) (regOne!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459073))

(assert (= (and b!2456465 ((_ is Union!7225) (regOne!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459074))

(declare-fun b!2459075 () Bool)

(declare-fun e!1559702 () Bool)

(assert (=> b!2459075 (= e!1559702 tp_is_empty!11863)))

(declare-fun b!2459077 () Bool)

(declare-fun tp!782868 () Bool)

(assert (=> b!2459077 (= e!1559702 tp!782868)))

(declare-fun b!2459076 () Bool)

(declare-fun tp!782869 () Bool)

(declare-fun tp!782871 () Bool)

(assert (=> b!2459076 (= e!1559702 (and tp!782869 tp!782871))))

(declare-fun b!2459078 () Bool)

(declare-fun tp!782870 () Bool)

(declare-fun tp!782867 () Bool)

(assert (=> b!2459078 (= e!1559702 (and tp!782870 tp!782867))))

(assert (=> b!2456465 (= tp!781235 e!1559702)))

(assert (= (and b!2456465 ((_ is ElementMatch!7225) (regTwo!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459075))

(assert (= (and b!2456465 ((_ is Concat!11861) (regTwo!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459076))

(assert (= (and b!2456465 ((_ is Star!7225) (regTwo!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459077))

(assert (= (and b!2456465 ((_ is Union!7225) (regTwo!14963 (regTwo!14963 (regTwo!14962 r!13927))))) b!2459078))

(declare-fun b!2459079 () Bool)

(declare-fun e!1559703 () Bool)

(assert (=> b!2459079 (= e!1559703 tp_is_empty!11863)))

(declare-fun b!2459081 () Bool)

(declare-fun tp!782873 () Bool)

(assert (=> b!2459081 (= e!1559703 tp!782873)))

(declare-fun b!2459080 () Bool)

(declare-fun tp!782874 () Bool)

(declare-fun tp!782876 () Bool)

(assert (=> b!2459080 (= e!1559703 (and tp!782874 tp!782876))))

(declare-fun b!2459082 () Bool)

(declare-fun tp!782875 () Bool)

(declare-fun tp!782872 () Bool)

(assert (=> b!2459082 (= e!1559703 (and tp!782875 tp!782872))))

(assert (=> b!2456556 (= tp!781353 e!1559703)))

(assert (= (and b!2456556 ((_ is ElementMatch!7225) (regOne!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459079))

(assert (= (and b!2456556 ((_ is Concat!11861) (regOne!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459080))

(assert (= (and b!2456556 ((_ is Star!7225) (regOne!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459081))

(assert (= (and b!2456556 ((_ is Union!7225) (regOne!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459082))

(declare-fun b!2459083 () Bool)

(declare-fun e!1559704 () Bool)

(assert (=> b!2459083 (= e!1559704 tp_is_empty!11863)))

(declare-fun b!2459085 () Bool)

(declare-fun tp!782878 () Bool)

(assert (=> b!2459085 (= e!1559704 tp!782878)))

(declare-fun b!2459084 () Bool)

(declare-fun tp!782879 () Bool)

(declare-fun tp!782881 () Bool)

(assert (=> b!2459084 (= e!1559704 (and tp!782879 tp!782881))))

(declare-fun b!2459086 () Bool)

(declare-fun tp!782880 () Bool)

(declare-fun tp!782877 () Bool)

(assert (=> b!2459086 (= e!1559704 (and tp!782880 tp!782877))))

(assert (=> b!2456556 (= tp!781355 e!1559704)))

(assert (= (and b!2456556 ((_ is ElementMatch!7225) (regTwo!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459083))

(assert (= (and b!2456556 ((_ is Concat!11861) (regTwo!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459084))

(assert (= (and b!2456556 ((_ is Star!7225) (regTwo!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459085))

(assert (= (and b!2456556 ((_ is Union!7225) (regTwo!14962 (regTwo!14962 (reg!7554 r!13927))))) b!2459086))

(declare-fun b!2459087 () Bool)

(declare-fun e!1559705 () Bool)

(assert (=> b!2459087 (= e!1559705 tp_is_empty!11863)))

(declare-fun b!2459089 () Bool)

(declare-fun tp!782883 () Bool)

(assert (=> b!2459089 (= e!1559705 tp!782883)))

(declare-fun b!2459088 () Bool)

(declare-fun tp!782884 () Bool)

(declare-fun tp!782886 () Bool)

(assert (=> b!2459088 (= e!1559705 (and tp!782884 tp!782886))))

(declare-fun b!2459090 () Bool)

(declare-fun tp!782885 () Bool)

(declare-fun tp!782882 () Bool)

(assert (=> b!2459090 (= e!1559705 (and tp!782885 tp!782882))))

(assert (=> b!2456524 (= tp!781313 e!1559705)))

(assert (= (and b!2456524 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459087))

(assert (= (and b!2456524 ((_ is Concat!11861) (regOne!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459088))

(assert (= (and b!2456524 ((_ is Star!7225) (regOne!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459089))

(assert (= (and b!2456524 ((_ is Union!7225) (regOne!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459090))

(declare-fun b!2459091 () Bool)

(declare-fun e!1559706 () Bool)

(assert (=> b!2459091 (= e!1559706 tp_is_empty!11863)))

(declare-fun b!2459093 () Bool)

(declare-fun tp!782888 () Bool)

(assert (=> b!2459093 (= e!1559706 tp!782888)))

(declare-fun b!2459092 () Bool)

(declare-fun tp!782889 () Bool)

(declare-fun tp!782891 () Bool)

(assert (=> b!2459092 (= e!1559706 (and tp!782889 tp!782891))))

(declare-fun b!2459094 () Bool)

(declare-fun tp!782890 () Bool)

(declare-fun tp!782887 () Bool)

(assert (=> b!2459094 (= e!1559706 (and tp!782890 tp!782887))))

(assert (=> b!2456524 (= tp!781315 e!1559706)))

(assert (= (and b!2456524 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459091))

(assert (= (and b!2456524 ((_ is Concat!11861) (regTwo!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459092))

(assert (= (and b!2456524 ((_ is Star!7225) (regTwo!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459093))

(assert (= (and b!2456524 ((_ is Union!7225) (regTwo!14962 (regOne!14962 (regOne!14963 r!13927))))) b!2459094))

(declare-fun b!2459095 () Bool)

(declare-fun e!1559707 () Bool)

(assert (=> b!2459095 (= e!1559707 tp_is_empty!11863)))

(declare-fun b!2459097 () Bool)

(declare-fun tp!782893 () Bool)

(assert (=> b!2459097 (= e!1559707 tp!782893)))

(declare-fun b!2459096 () Bool)

(declare-fun tp!782894 () Bool)

(declare-fun tp!782896 () Bool)

(assert (=> b!2459096 (= e!1559707 (and tp!782894 tp!782896))))

(declare-fun b!2459098 () Bool)

(declare-fun tp!782895 () Bool)

(declare-fun tp!782892 () Bool)

(assert (=> b!2459098 (= e!1559707 (and tp!782895 tp!782892))))

(assert (=> b!2456542 (= tp!781334 e!1559707)))

(assert (= (and b!2456542 ((_ is ElementMatch!7225) (regOne!14963 (reg!7554 (reg!7554 r!13927))))) b!2459095))

(assert (= (and b!2456542 ((_ is Concat!11861) (regOne!14963 (reg!7554 (reg!7554 r!13927))))) b!2459096))

(assert (= (and b!2456542 ((_ is Star!7225) (regOne!14963 (reg!7554 (reg!7554 r!13927))))) b!2459097))

(assert (= (and b!2456542 ((_ is Union!7225) (regOne!14963 (reg!7554 (reg!7554 r!13927))))) b!2459098))

(declare-fun b!2459099 () Bool)

(declare-fun e!1559708 () Bool)

(assert (=> b!2459099 (= e!1559708 tp_is_empty!11863)))

(declare-fun b!2459101 () Bool)

(declare-fun tp!782898 () Bool)

(assert (=> b!2459101 (= e!1559708 tp!782898)))

(declare-fun b!2459100 () Bool)

(declare-fun tp!782899 () Bool)

(declare-fun tp!782901 () Bool)

(assert (=> b!2459100 (= e!1559708 (and tp!782899 tp!782901))))

(declare-fun b!2459102 () Bool)

(declare-fun tp!782900 () Bool)

(declare-fun tp!782897 () Bool)

(assert (=> b!2459102 (= e!1559708 (and tp!782900 tp!782897))))

(assert (=> b!2456542 (= tp!781331 e!1559708)))

(assert (= (and b!2456542 ((_ is ElementMatch!7225) (regTwo!14963 (reg!7554 (reg!7554 r!13927))))) b!2459099))

(assert (= (and b!2456542 ((_ is Concat!11861) (regTwo!14963 (reg!7554 (reg!7554 r!13927))))) b!2459100))

(assert (= (and b!2456542 ((_ is Star!7225) (regTwo!14963 (reg!7554 (reg!7554 r!13927))))) b!2459101))

(assert (= (and b!2456542 ((_ is Union!7225) (regTwo!14963 (reg!7554 (reg!7554 r!13927))))) b!2459102))

(declare-fun b!2459103 () Bool)

(declare-fun e!1559709 () Bool)

(assert (=> b!2459103 (= e!1559709 tp_is_empty!11863)))

(declare-fun b!2459105 () Bool)

(declare-fun tp!782903 () Bool)

(assert (=> b!2459105 (= e!1559709 tp!782903)))

(declare-fun b!2459104 () Bool)

(declare-fun tp!782904 () Bool)

(declare-fun tp!782906 () Bool)

(assert (=> b!2459104 (= e!1559709 (and tp!782904 tp!782906))))

(declare-fun b!2459106 () Bool)

(declare-fun tp!782905 () Bool)

(declare-fun tp!782902 () Bool)

(assert (=> b!2459106 (= e!1559709 (and tp!782905 tp!782902))))

(assert (=> b!2456533 (= tp!781322 e!1559709)))

(assert (= (and b!2456533 ((_ is ElementMatch!7225) (reg!7554 (regOne!14963 (h!33989 l!9164))))) b!2459103))

(assert (= (and b!2456533 ((_ is Concat!11861) (reg!7554 (regOne!14963 (h!33989 l!9164))))) b!2459104))

(assert (= (and b!2456533 ((_ is Star!7225) (reg!7554 (regOne!14963 (h!33989 l!9164))))) b!2459105))

(assert (= (and b!2456533 ((_ is Union!7225) (reg!7554 (regOne!14963 (h!33989 l!9164))))) b!2459106))

(declare-fun b!2459107 () Bool)

(declare-fun e!1559710 () Bool)

(assert (=> b!2459107 (= e!1559710 tp_is_empty!11863)))

(declare-fun b!2459109 () Bool)

(declare-fun tp!782908 () Bool)

(assert (=> b!2459109 (= e!1559710 tp!782908)))

(declare-fun b!2459108 () Bool)

(declare-fun tp!782909 () Bool)

(declare-fun tp!782911 () Bool)

(assert (=> b!2459108 (= e!1559710 (and tp!782909 tp!782911))))

(declare-fun b!2459110 () Bool)

(declare-fun tp!782910 () Bool)

(declare-fun tp!782907 () Bool)

(assert (=> b!2459110 (= e!1559710 (and tp!782910 tp!782907))))

(assert (=> b!2456508 (= tp!781291 e!1559710)))

(assert (= (and b!2456508 ((_ is ElementMatch!7225) (reg!7554 (reg!7554 (regOne!14963 r!13927))))) b!2459107))

(assert (= (and b!2456508 ((_ is Concat!11861) (reg!7554 (reg!7554 (regOne!14963 r!13927))))) b!2459108))

(assert (= (and b!2456508 ((_ is Star!7225) (reg!7554 (reg!7554 (regOne!14963 r!13927))))) b!2459109))

(assert (= (and b!2456508 ((_ is Union!7225) (reg!7554 (reg!7554 (regOne!14963 r!13927))))) b!2459110))

(declare-fun b!2459111 () Bool)

(declare-fun e!1559711 () Bool)

(assert (=> b!2459111 (= e!1559711 tp_is_empty!11863)))

(declare-fun b!2459113 () Bool)

(declare-fun tp!782913 () Bool)

(assert (=> b!2459113 (= e!1559711 tp!782913)))

(declare-fun b!2459112 () Bool)

(declare-fun tp!782914 () Bool)

(declare-fun tp!782916 () Bool)

(assert (=> b!2459112 (= e!1559711 (and tp!782914 tp!782916))))

(declare-fun b!2459114 () Bool)

(declare-fun tp!782915 () Bool)

(declare-fun tp!782912 () Bool)

(assert (=> b!2459114 (= e!1559711 (and tp!782915 tp!782912))))

(assert (=> b!2456499 (= tp!781282 e!1559711)))

(assert (= (and b!2456499 ((_ is ElementMatch!7225) (regOne!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459111))

(assert (= (and b!2456499 ((_ is Concat!11861) (regOne!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459112))

(assert (= (and b!2456499 ((_ is Star!7225) (regOne!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459113))

(assert (= (and b!2456499 ((_ is Union!7225) (regOne!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459114))

(declare-fun b!2459115 () Bool)

(declare-fun e!1559712 () Bool)

(assert (=> b!2459115 (= e!1559712 tp_is_empty!11863)))

(declare-fun b!2459117 () Bool)

(declare-fun tp!782918 () Bool)

(assert (=> b!2459117 (= e!1559712 tp!782918)))

(declare-fun b!2459116 () Bool)

(declare-fun tp!782919 () Bool)

(declare-fun tp!782921 () Bool)

(assert (=> b!2459116 (= e!1559712 (and tp!782919 tp!782921))))

(declare-fun b!2459118 () Bool)

(declare-fun tp!782920 () Bool)

(declare-fun tp!782917 () Bool)

(assert (=> b!2459118 (= e!1559712 (and tp!782920 tp!782917))))

(assert (=> b!2456499 (= tp!781284 e!1559712)))

(assert (= (and b!2456499 ((_ is ElementMatch!7225) (regTwo!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459115))

(assert (= (and b!2456499 ((_ is Concat!11861) (regTwo!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459116))

(assert (= (and b!2456499 ((_ is Star!7225) (regTwo!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459117))

(assert (= (and b!2456499 ((_ is Union!7225) (regTwo!14962 (regOne!14962 (regOne!14962 r!13927))))) b!2459118))

(declare-fun b_lambda!75213 () Bool)

(assert (= b_lambda!75205 (or d!707253 b_lambda!75213)))

(declare-fun bs!466149 () Bool)

(declare-fun d!708145 () Bool)

(assert (= bs!466149 (and d!708145 d!707253)))

(assert (=> bs!466149 (= (dynLambda!12274 lambda!93028 (h!33989 (t!208663 l!9164))) (validRegex!2917 (h!33989 (t!208663 l!9164))))))

(assert (=> bs!466149 m!2827619))

(assert (=> b!2457962 d!708145))

(declare-fun b_lambda!75215 () Bool)

(assert (= b_lambda!75203 (or start!239606 b_lambda!75215)))

(declare-fun bs!466150 () Bool)

(declare-fun d!708147 () Bool)

(assert (= bs!466150 (and d!708147 start!239606)))

(assert (=> bs!466150 (= (dynLambda!12274 lambda!93015 (h!33989 (t!208663 (t!208663 l!9164)))) (validRegex!2917 (h!33989 (t!208663 (t!208663 l!9164)))))))

(declare-fun m!2828907 () Bool)

(assert (=> bs!466150 m!2828907))

(assert (=> b!2457960 d!708147))

(declare-fun b_lambda!75217 () Bool)

(assert (= b_lambda!75211 (or d!707515 b_lambda!75217)))

(declare-fun bs!466151 () Bool)

(declare-fun d!708149 () Bool)

(assert (= bs!466151 (and d!708149 d!707515)))

(assert (=> bs!466151 (= (dynLambda!12274 lambda!93047 (h!33989 (t!208663 lt!880247))) (validRegex!2917 (h!33989 (t!208663 lt!880247))))))

(declare-fun m!2828909 () Bool)

(assert (=> bs!466151 m!2828909))

(assert (=> b!2458473 d!708149))

(declare-fun b_lambda!75219 () Bool)

(assert (= b_lambda!75207 (or d!707449 b_lambda!75219)))

(declare-fun bs!466152 () Bool)

(declare-fun d!708151 () Bool)

(assert (= bs!466152 (and d!708151 d!707449)))

(assert (=> bs!466152 (= (dynLambda!12274 lambda!93042 (h!33989 (t!208663 l!9164))) (validRegex!2917 (h!33989 (t!208663 l!9164))))))

(assert (=> bs!466152 m!2827619))

(assert (=> b!2458068 d!708151))

(declare-fun b_lambda!75221 () Bool)

(assert (= b_lambda!75209 (or d!707281 b_lambda!75221)))

(declare-fun bs!466153 () Bool)

(declare-fun d!708153 () Bool)

(assert (= bs!466153 (and d!708153 d!707281)))

(assert (=> bs!466153 (= (dynLambda!12274 lambda!93035 (h!33989 (t!208663 lt!880247))) (validRegex!2917 (h!33989 (t!208663 lt!880247))))))

(assert (=> bs!466153 m!2828909))

(assert (=> b!2458169 d!708153))

(check-sat (not b!2458996) (not b!2458592) (not bm!151104) (not b!2458347) (not b!2457972) (not b!2458502) (not b!2458296) (not b!2458394) (not b!2458005) (not bm!151098) (not bm!151107) (not bm!151183) (not b!2457901) (not b!2458202) (not b_lambda!75177) (not b!2458787) (not d!708129) (not d!707875) (not b!2459017) (not b!2458506) (not d!708085) (not b!2458619) (not b!2458520) (not b!2459045) (not b!2458599) (not b!2458876) (not b!2458828) (not b!2459102) (not b!2459014) (not b!2458611) (not b!2458174) (not d!707935) (not b!2459021) (not b!2458498) (not bm!151152) (not bm!151154) (not b!2458667) tp_is_empty!11863 (not b!2458739) (not b!2458902) (not d!708067) (not b!2458745) (not b!2459053) (not b!2459116) (not b!2458968) (not b!2458572) (not b!2458563) (not b!2457969) (not b!2458693) (not b!2458852) (not b!2458930) (not b!2458354) (not b!2459018) (not b!2458588) (not b!2458913) (not b!2459084) (not b!2457890) (not b!2459002) (not b!2459106) (not b!2458884) (not b!2458720) (not b!2458270) (not b!2458824) (not bm!151156) (not b!2458287) (not b!2458700) (not b!2458974) (not b!2458668) (not b!2458072) (not b!2457947) (not bm!151114) (not b!2458156) (not b!2459041) (not b!2458894) (not b!2458892) (not b!2458905) (not b!2458771) (not b!2458555) (not b!2458736) (not b!2459086) (not b!2459038) (not b!2459066) (not b!2458861) (not b!2459078) (not b!2458003) (not b!2459004) (not b!2458952) (not b!2458683) (not b!2459009) (not b!2457920) (not d!708059) (not b!2457965) (not b!2457961) (not b!2458885) (not b!2458452) (not b!2458149) (not bm!151100) (not b!2458965) (not b!2458784) (not b!2458556) (not b!2458264) (not b!2458813) (not b!2458687) (not b!2458769) (not b!2458768) (not b!2458255) (not b!2458516) (not b!2458816) (not b!2459012) (not b!2458669) (not b!2459034) (not b!2458898) (not b!2458869) (not bs!466149) (not b!2459094) (not b!2458849) (not b!2458732) (not b!2458552) (not b!2458613) (not b!2458600) (not b!2458339) (not b!2458522) (not bm!151194) (not b!2458749) (not b!2458612) (not b!2458978) (not b!2458780) (not b!2458695) (not b!2459088) (not bm!151089) (not b!2458691) (not b!2458324) (not bm!151172) (not b_lambda!75217) (not b!2458020) (not b!2459013) (not bm!151203) (not b!2458120) (not b!2458303) (not d!708121) (not b!2459052) (not b!2458544) (not b!2458804) (not b!2458789) (not b!2458773) (not b!2458896) (not b!2459068) (not b!2458922) (not b!2458692) (not b!2458429) (not b!2458744) (not b!2458918) (not bm!151211) (not bm!151219) (not b!2458515) (not bm!151179) (not b_lambda!75179) (not b!2458761) (not b!2459118) (not b!2458756) (not b!2458840) (not d!708101) (not b!2458624) (not b!2458635) (not b!2458140) (not b!2458921) (not b!2458126) (not b!2458537) (not b!2458621) (not d!707965) (not b!2458957) (not b!2458271) (not bm!151149) (not b!2458772) (not d!707989) (not b!2458653) (not b!2458912) (not b!2458580) (not b!2458671) (not b!2458474) (not b!2458518) (not b!2458486) (not b!2458992) (not b!2458170) (not b!2458564) (not b!2459076) (not b!2458161) (not b!2458499) (not b!2458416) (not b!2458664) (not b!2459058) (not b!2458532) (not b!2459080) (not b!2457945) (not bm!151120) (not b!2458649) (not b!2458573) (not d!708113) (not d!707937) (not b!2458976) (not b!2458400) (not b!2458213) (not d!708025) (not b!2458198) (not b!2459090) (not b!2458760) (not bm!151192) (not b!2458956) (not b!2458132) (not b!2458982) (not bm!151196) (not b!2458767) (not b!2458512) (not b!2458713) (not b!2458705) (not d!707993) (not b!2458832) (not b!2458403) (not b!2458862) (not b!2458845) (not b!2457893) (not b!2458856) (not b!2458279) (not b!2459108) (not b!2458857) (not bm!151206) (not b!2458661) (not b!2458950) (not b!2458880) (not b!2458969) (not bm!151088) (not b!2458577) (not b!2458090) (not b!2458960) (not b!2458755) (not b!2457902) (not d!708087) (not b!2458052) (not b!2458417) (not b!2458936) (not b!2458466) (not b!2458677) (not b!2458709) (not b!2458639) (not b!2459033) (not b!2458106) (not d!708099) (not b!2458328) (not b!2458964) (not b!2459044) (not b!2457916) (not bm!151213) (not b!2458966) (not b!2458853) (not b!2458993) (not b!2459098) (not b!2458571) (not b!2458821) (not bm!151092) (not b_lambda!75181) (not b!2458981) (not b!2458656) (not b!2459050) (not b!2458858) (not b!2458596) (not b!2458322) (not b!2458752) (not b!2458721) (not bm!151178) (not b!2459085) (not d!708107) (not bm!151148) (not b!2458717) (not bm!151191) (not bm!151175) (not b!2459001) (not b!2458569) (not b!2458519) (not b!2458028) (not b!2458725) (not b!2458503) (not d!707857) (not b!2458940) (not b!2457909) (not b!2458123) (not d!708045) (not b!2457886) (not b!2458114) (not b!2458351) (not b!2458411) (not b!2459022) (not b!2458284) (not b!2458541) (not b!2458765) (not b!2458688) (not d!708041) (not d!707899) (not b!2458985) (not b!2458391) (not bm!151164) (not b!2458250) (not b!2458740) (not b!2457911) (not bm!151078) (not b!2458629) (not b!2458186) (not b!2458831) (not b!2457906) (not b!2459077) (not b!2458168) (not bm!151184) (not bm!151117) (not b!2458663) (not b!2458874) (not b!2458684) (not b!2457963) (not b!2458193) (not b!2458530) (not b!2457954) (not bm!151129) (not b!2458877) (not b!2458138) (not b!2458791) (not b!2458864) (not b!2458235) (not bm!151121) (not b!2459073) (not b!2458719) (not b!2459064) (not b!2458909) (not b!2458154) (not b!2459105) (not b!2458944) (not bm!151198) (not bm!151132) (not bm!151091) (not b!2458451) (not bm!151168) (not bm!151080) (not b!2458665) (not b!2458775) (not b!2458477) (not b!2458860) (not b!2458443) (not b!2458926) (not b!2458494) (not b!2458108) (not b!2458699) (not b!2458097) (not b!2458933) (not bm!151173) (not b!2458728) (not b!2458793) (not b!2458141) (not b!2458597) (not b!2459100) (not b!2458925) (not b!2458536) (not b!2458259) (not d!708005) (not b!2458946) (not b!2458707) (not b!2458727) (not b!2458128) (not b!2458970) (not b!2458854) (not b!2458593) (not b!2458838) (not b_lambda!75215) (not b!2458320) (not bm!151216) (not b!2458906) (not bm!151103) (not b!2458006) (not bm!151150) (not b!2457878) (not b!2457982) (not bm!151108) (not b!2458527) (not b!2458338) (not b!2458617) (not d!708071) (not b!2458842) (not b!2458329) (not b!2458817) (not b!2458723) (not b!2458061) (not b!2459089) (not b!2458954) (not b!2458812) (not b!2458371) (not b!2458336) (not b!2458545) (not b!2457918) (not b!2458724) (not bm!151176) (not b!2458929) (not b!2458583) (not bm!151201) (not b!2458528) (not d!708097) (not bm!151138) (not b!2457922) (not b!2458615) (not b!2458543) (not b!2458535) (not b!2458716) (not b!2458605) (not b!2459046) (not b!2459112) (not b!2458534) (not bm!151158) (not b!2458579) (not b!2458659) (not b!2459114) (not b!2457953) (not b!2459042) (not b!2458779) (not b!2458994) (not b!2459104) (not b!2458917) (not b!2458362) (not d!707947) (not b!2458160) (not b!2458805) (not b!2458421) (not b!2457985) (not b!2459040) (not b!2458737) (not b!2458850) (not b!2458116) (not b!2458223) (not bm!151170) (not b!2459117) (not b!2458958) (not bm!151126) (not bm!151207) (not b!2459060) (not b!2458510) (not b!2458980) (not d!708029) (not b!2458900) (not bm!151105) (not bm!151145) (not b!2458526) (not b!2458540) (not b!2458292) (not b!2458809) (not bm!151085) (not b!2458704) (not b!2458748) (not b!2458731) (not bm!151115) (not d!707951) (not d!708049) (not b!2458651) (not d!708027) (not b!2458548) (not b!2458549) (not b!2458334) (not b!2459070) (not d!708065) (not b!2459016) (not b!2458949) (not b!2458882) (not b!2458102) (not b!2458531) (not b!2458640) (not b!2458870) (not d!708091) (not b!2458035) (not b!2459109) (not b!2458601) (not b!2459024) (not b!2458402) (not d!707901) (not b!2458675) (not b!2458196) (not b!2458711) (not d!707973) (not b!2458676) (not b!2458607) (not b!2459026) (not bm!151214) (not b!2457999) (not bm!151097) (not b!2458100) (not b!2458627) (not b!2458776) (not b!2458547) (not bm!151165) (not b!2458631) (not bm!151124) (not b!2459092) (not b_lambda!75219) (not b!2457915) (not b!2458988) (not b!2458834) (not b!2458109) (not b!2459072) (not bm!151146) (not b!2458363) (not b!2458643) (not b!2458848) (not b!2458672) (not b!2458565) (not b!2458823) (not b!2458696) (not bm!151141) (not b!2458356) (not b!2458735) (not b!2458172) (not b!2458628) (not d!707991) (not b!2459074) (not b!2458285) (not b!2458743) (not b!2458972) (not b!2458158) (not b!2457997) (not b!2458866) (not b!2458567) (not b!2458799) (not b!2458868) (not b!2457888) (not d!707911) (not b!2458924) (not b!2458763) (not b!2458553) (not b!2458701) (not b!2458819) (not b!2458757) (not b!2459030) (not b!2458561) (not b!2458507) (not b!2459097) (not b!2458523) (not b!2459057) (not d!708043) (not b!2458581) (not b!2458800) (not b!2458685) (not b!2458673) (not b!2458557) (not bm!151112) (not b!2458836) (not b!2459000) (not b!2458129) (not d!707903) (not b!2458997) (not b!2458890) (not b!2457967) (not b!2458990) (not b!2458559) (not b!2458934) (not b!2458938) (not d!708003) (not b!2458753) (not b!2458941) (not b!2458844) (not b!2458820) (not b!2458589) (not b!2458587) (not b!2458162) (not bm!151204) (not b!2458576) (not bm!151119) (not b!2458046) (not b!2458689) (not bm!151095) (not bm!151190) (not b!2459006) (not b!2458948) (not bm!151193) (not b!2459082) (not b!2458783) (not b!2458616) (not b!2458715) (not b!2458962) (not d!708127) (not b!2458801) (not b!2458647) (not b!2459056) (not b!2458069) (not b!2457951) (not b!2457925) (not bm!151106) (not b!2458741) (not b!2458496) (not b!2459010) (not b!2458551) (not b_lambda!75221) (not b!2458332) (not b!2458326) (not b!2458795) (not b!2458608) (not b!2459048) (not b!2459025) (not b!2458431) (not bm!151127) (not b!2458681) (not b!2458729) (not b!2458897) (not b!2458568) (not b!2458177) (not b!2457914) (not b!2459037) (not d!708111) (not b!2458961) (not b!2458881) (not b!2458680) (not b!2458524) (not b!2458889) (not b!2458796) (not b!2458514) (not b!2459110) (not b!2458298) (not b!2458504) (not b!2458014) (not b!2458648) (not b!2458164) (not b!2458792) (not b!2458166) (not b!2458299) (not b!2458998) (not b!2459113) (not d!707917) (not bm!151166) (not b!2458645) (not b!2458603) (not b!2458878) (not bm!151139) (not b!2458268) (not b!2458781) (not b!2458901) (not b!2458575) (not b!2458910) (not b!2459008) (not b!2458973) (not bm!151086) (not b!2457994) (not b!2458759) (not b!2457938) (not b!2458815) (not b!2458747) (not d!708053) (not bs!466152) (not b!2458733) (not bm!151130) (not b!2458808) (not b!2458829) (not bm!151160) (not b!2458657) (not b!2459101) (not b!2458312) (not b!2458928) (not b!2458764) (not b!2458111) (not d!708061) (not b!2458644) (not b!2458977) (not b!2458641) (not b!2458989) (not b!2459096) (not b!2458846) (not bm!151217) (not b!2458751) (not b!2458511) (not b!2459081) (not b!2458932) (not bs!466151) (not bm!151123) (not b!2459020) (not b!2458623) (not b!2458333) (not b!2458908) (not b!2459032) (not b!2459029) (not bm!151133) (not b!2458904) (not b!2459061) (not b!2457912) (not b!2458262) (not d!707877) (not b!2458340) (not b!2458655) (not bm!151186) (not b!2458827) (not b!2458837) (not b!2458595) (not b!2458841) (not b!2458290) (not b!2458652) (not b!2458396) (not b!2457905) (not b!2458811) (not b!2458984) (not b!2457841) (not bm!151136) (not b!2458807) (not d!707879) (not b!2458632) (not b!2459054) (not b!2458803) (not bs!466153) (not b!2458788) (not b!2457957) (not b!2458228) (not bm!151188) (not b!2458708) (not b!2458539) (not d!708095) (not bm!151209) (not b!2458797) (not b!2458942) (not bm!151087) (not b!2458241) (not b!2458953) (not bm!151162) (not b!2458620) (not b!2458460) (not b!2458585) (not b!2459062) (not b!2458609) (not b!2458500) (not b!2459093) (not b!2458604) (not b!2458204) (not b!2457942) (not bm!151102) (not b!2458937) (not b!2458785) (not b!2458584) (not b!2458122) (not d!707881) (not b!2458893) (not b!2459049) (not d!708109) (not b!2459036) (not d!707913) (not bm!151181) (not b!2458625) (not bm!151094) (not b!2459065) (not b!2458873) (not b!2458041) (not b!2458865) (not b!2458872) (not b!2458660) (not bm!151167) (not b!2458434) (not b!2458712) (not bs!466150) (not b!2458495) (not b!2458833) (not b!2458081) (not b!2458167) (not b!2458888) (not bm!151135) (not b!2458679) (not b!2458360) (not b!2458591) (not b!2458636) (not b!2458825) (not b!2458637) (not b!2458986) (not b!2459005) (not b_lambda!75157) (not b!2459069) (not b!2458697) (not bm!151143) (not b!2458703) (not b!2458508) (not b!2458205) (not b!2458777) (not bm!151137) (not b!2458914) (not b!2458633) (not b!2458920) (not b!2458134) (not b!2458916) (not bm!151110) (not b!2458560) (not b_lambda!75213) (not b!2457958) (not bm!151200) (not b!2458945) (not b!2457977) (not b!2459028) (not b!2458886) (not b!2457990) (not b!2458377))
(check-sat)
