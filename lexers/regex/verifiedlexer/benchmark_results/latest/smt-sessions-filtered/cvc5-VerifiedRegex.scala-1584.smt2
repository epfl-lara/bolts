; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81868 () Bool)

(assert start!81868)

(declare-fun b!910424 () Bool)

(assert (=> b!910424 true))

(assert (=> b!910424 true))

(declare-fun lambda!28992 () Int)

(declare-fun lambda!28991 () Int)

(assert (=> b!910424 (not (= lambda!28992 lambda!28991))))

(assert (=> b!910424 true))

(assert (=> b!910424 true))

(declare-fun e!593993 () Bool)

(declare-fun e!593994 () Bool)

(assert (=> b!910424 (= e!593993 e!593994)))

(declare-fun res!414004 () Bool)

(assert (=> b!910424 (=> res!414004 e!593994)))

(declare-datatypes ((C!5422 0))(
  ( (C!5423 (val!2959 Int)) )
))
(declare-datatypes ((List!9656 0))(
  ( (Nil!9640) (Cons!9640 (h!15041 C!5422) (t!100702 List!9656)) )
))
(declare-fun s!10566 () List!9656)

(declare-fun isEmpty!5855 (List!9656) Bool)

(assert (=> b!910424 (= res!414004 (isEmpty!5855 s!10566))))

(declare-fun Exists!199 (Int) Bool)

(assert (=> b!910424 (= (Exists!199 lambda!28991) (Exists!199 lambda!28992))))

(declare-datatypes ((Unit!14471 0))(
  ( (Unit!14472) )
))
(declare-fun lt!336511 () Unit!14471)

(declare-datatypes ((Regex!2426 0))(
  ( (ElementMatch!2426 (c!147475 C!5422)) (Concat!4259 (regOne!5364 Regex!2426) (regTwo!5364 Regex!2426)) (EmptyExpr!2426) (Star!2426 (reg!2755 Regex!2426)) (EmptyLang!2426) (Union!2426 (regOne!5365 Regex!2426) (regTwo!5365 Regex!2426)) )
))
(declare-fun r!15766 () Regex!2426)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!113 (Regex!2426 Regex!2426 List!9656) Unit!14471)

(assert (=> b!910424 (= lt!336511 (lemmaExistCutMatchRandMatchRSpecEquivalent!113 (regOne!5364 r!15766) EmptyExpr!2426 s!10566))))

(declare-datatypes ((tuple2!10842 0))(
  ( (tuple2!10843 (_1!6247 List!9656) (_2!6247 List!9656)) )
))
(declare-datatypes ((Option!2063 0))(
  ( (None!2062) (Some!2062 (v!19479 tuple2!10842)) )
))
(declare-fun lt!336513 () Option!2063)

(declare-fun isDefined!1705 (Option!2063) Bool)

(assert (=> b!910424 (= (isDefined!1705 lt!336513) (Exists!199 lambda!28991))))

(declare-fun findConcatSeparation!169 (Regex!2426 Regex!2426 List!9656 List!9656 List!9656) Option!2063)

(assert (=> b!910424 (= lt!336513 (findConcatSeparation!169 (regOne!5364 r!15766) EmptyExpr!2426 Nil!9640 s!10566 s!10566))))

(declare-fun lt!336515 () Unit!14471)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!169 (Regex!2426 Regex!2426 List!9656) Unit!14471)

(assert (=> b!910424 (= lt!336515 (lemmaFindConcatSeparationEquivalentToExists!169 (regOne!5364 r!15766) EmptyExpr!2426 s!10566))))

(declare-fun b!910425 () Bool)

(declare-fun e!593996 () Bool)

(assert (=> b!910425 (= e!593996 (not e!593993))))

(declare-fun res!414005 () Bool)

(assert (=> b!910425 (=> res!414005 e!593993)))

(declare-fun lt!336516 () Bool)

(assert (=> b!910425 (= res!414005 (or lt!336516 (and (is-Concat!4259 r!15766) (is-EmptyExpr!2426 (regOne!5364 r!15766))) (not (is-Concat!4259 r!15766)) (not (is-EmptyExpr!2426 (regTwo!5364 r!15766)))))))

(declare-fun matchRSpec!227 (Regex!2426 List!9656) Bool)

(assert (=> b!910425 (= lt!336516 (matchRSpec!227 r!15766 s!10566))))

(declare-fun matchR!964 (Regex!2426 List!9656) Bool)

(assert (=> b!910425 (= lt!336516 (matchR!964 r!15766 s!10566))))

(declare-fun lt!336510 () Unit!14471)

(declare-fun mainMatchTheorem!227 (Regex!2426 List!9656) Unit!14471)

(assert (=> b!910425 (= lt!336510 (mainMatchTheorem!227 r!15766 s!10566))))

(declare-fun b!910426 () Bool)

(declare-fun lt!336512 () Regex!2426)

(declare-fun validRegex!895 (Regex!2426) Bool)

(assert (=> b!910426 (= e!593994 (validRegex!895 lt!336512))))

(assert (=> b!910426 (= (matchR!964 (regOne!5364 r!15766) s!10566) (matchR!964 lt!336512 s!10566))))

(declare-fun removeUselessConcat!111 (Regex!2426) Regex!2426)

(assert (=> b!910426 (= lt!336512 (removeUselessConcat!111 (regOne!5364 r!15766)))))

(declare-fun lt!336514 () Unit!14471)

(declare-fun lemmaRemoveUselessConcatSound!97 (Regex!2426 List!9656) Unit!14471)

(assert (=> b!910426 (= lt!336514 (lemmaRemoveUselessConcatSound!97 (regOne!5364 r!15766) s!10566))))

(declare-fun b!910428 () Bool)

(declare-fun e!593992 () Bool)

(declare-fun tp!284766 () Bool)

(declare-fun tp!284763 () Bool)

(assert (=> b!910428 (= e!593992 (and tp!284766 tp!284763))))

(declare-fun b!910429 () Bool)

(declare-fun tp_is_empty!4495 () Bool)

(assert (=> b!910429 (= e!593992 tp_is_empty!4495)))

(declare-fun b!910430 () Bool)

(declare-fun e!593995 () Bool)

(declare-fun tp!284762 () Bool)

(assert (=> b!910430 (= e!593995 (and tp_is_empty!4495 tp!284762))))

(declare-fun res!414003 () Bool)

(assert (=> start!81868 (=> (not res!414003) (not e!593996))))

(assert (=> start!81868 (= res!414003 (validRegex!895 r!15766))))

(assert (=> start!81868 e!593996))

(assert (=> start!81868 e!593992))

(assert (=> start!81868 e!593995))

(declare-fun b!910427 () Bool)

(declare-fun tp!284761 () Bool)

(declare-fun tp!284764 () Bool)

(assert (=> b!910427 (= e!593992 (and tp!284761 tp!284764))))

(declare-fun b!910431 () Bool)

(declare-fun tp!284765 () Bool)

(assert (=> b!910431 (= e!593992 tp!284765)))

(declare-fun b!910432 () Bool)

(declare-fun res!414006 () Bool)

(assert (=> b!910432 (=> res!414006 e!593994)))

(declare-fun isEmpty!5856 (Option!2063) Bool)

(assert (=> b!910432 (= res!414006 (not (isEmpty!5856 lt!336513)))))

(assert (= (and start!81868 res!414003) b!910425))

(assert (= (and b!910425 (not res!414005)) b!910424))

(assert (= (and b!910424 (not res!414004)) b!910432))

(assert (= (and b!910432 (not res!414006)) b!910426))

(assert (= (and start!81868 (is-ElementMatch!2426 r!15766)) b!910429))

(assert (= (and start!81868 (is-Concat!4259 r!15766)) b!910427))

(assert (= (and start!81868 (is-Star!2426 r!15766)) b!910431))

(assert (= (and start!81868 (is-Union!2426 r!15766)) b!910428))

(assert (= (and start!81868 (is-Cons!9640 s!10566)) b!910430))

(declare-fun m!1142993 () Bool)

(assert (=> b!910425 m!1142993))

(declare-fun m!1142995 () Bool)

(assert (=> b!910425 m!1142995))

(declare-fun m!1142997 () Bool)

(assert (=> b!910425 m!1142997))

(declare-fun m!1142999 () Bool)

(assert (=> b!910424 m!1142999))

(declare-fun m!1143001 () Bool)

(assert (=> b!910424 m!1143001))

(declare-fun m!1143003 () Bool)

(assert (=> b!910424 m!1143003))

(assert (=> b!910424 m!1143001))

(declare-fun m!1143005 () Bool)

(assert (=> b!910424 m!1143005))

(declare-fun m!1143007 () Bool)

(assert (=> b!910424 m!1143007))

(declare-fun m!1143009 () Bool)

(assert (=> b!910424 m!1143009))

(declare-fun m!1143011 () Bool)

(assert (=> b!910424 m!1143011))

(declare-fun m!1143013 () Bool)

(assert (=> start!81868 m!1143013))

(declare-fun m!1143015 () Bool)

(assert (=> b!910426 m!1143015))

(declare-fun m!1143017 () Bool)

(assert (=> b!910426 m!1143017))

(declare-fun m!1143019 () Bool)

(assert (=> b!910426 m!1143019))

(declare-fun m!1143021 () Bool)

(assert (=> b!910426 m!1143021))

(declare-fun m!1143023 () Bool)

(assert (=> b!910426 m!1143023))

(declare-fun m!1143025 () Bool)

(assert (=> b!910432 m!1143025))

(push 1)

(assert (not b!910431))

(assert tp_is_empty!4495)

(assert (not b!910432))

(assert (not start!81868))

(assert (not b!910424))

(assert (not b!910428))

(assert (not b!910426))

(assert (not b!910430))

(assert (not b!910425))

(assert (not b!910427))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!910498 () Bool)

(declare-fun lt!336545 () Unit!14471)

(declare-fun lt!336546 () Unit!14471)

(assert (=> b!910498 (= lt!336545 lt!336546)))

(declare-fun ++!2534 (List!9656 List!9656) List!9656)

(assert (=> b!910498 (= (++!2534 (++!2534 Nil!9640 (Cons!9640 (h!15041 s!10566) Nil!9640)) (t!100702 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!151 (List!9656 C!5422 List!9656 List!9656) Unit!14471)

(assert (=> b!910498 (= lt!336546 (lemmaMoveElementToOtherListKeepsConcatEq!151 Nil!9640 (h!15041 s!10566) (t!100702 s!10566) s!10566))))

(declare-fun e!594030 () Option!2063)

(assert (=> b!910498 (= e!594030 (findConcatSeparation!169 (regOne!5364 r!15766) EmptyExpr!2426 (++!2534 Nil!9640 (Cons!9640 (h!15041 s!10566) Nil!9640)) (t!100702 s!10566) s!10566))))

(declare-fun b!910499 () Bool)

(declare-fun e!594031 () Option!2063)

(assert (=> b!910499 (= e!594031 e!594030)))

(declare-fun c!147482 () Bool)

(assert (=> b!910499 (= c!147482 (is-Nil!9640 s!10566))))

(declare-fun b!910500 () Bool)

(assert (=> b!910500 (= e!594030 None!2062)))

(declare-fun b!910501 () Bool)

(declare-fun e!594032 () Bool)

(declare-fun lt!336544 () Option!2063)

(assert (=> b!910501 (= e!594032 (not (isDefined!1705 lt!336544)))))

(declare-fun b!910502 () Bool)

(declare-fun e!594028 () Bool)

(assert (=> b!910502 (= e!594028 (matchR!964 EmptyExpr!2426 s!10566))))

(declare-fun b!910503 () Bool)

(assert (=> b!910503 (= e!594031 (Some!2062 (tuple2!10843 Nil!9640 s!10566)))))

(declare-fun b!910504 () Bool)

(declare-fun res!414043 () Bool)

(declare-fun e!594029 () Bool)

(assert (=> b!910504 (=> (not res!414043) (not e!594029))))

(declare-fun get!3105 (Option!2063) tuple2!10842)

(assert (=> b!910504 (= res!414043 (matchR!964 (regOne!5364 r!15766) (_1!6247 (get!3105 lt!336544))))))

(declare-fun b!910505 () Bool)

(assert (=> b!910505 (= e!594029 (= (++!2534 (_1!6247 (get!3105 lt!336544)) (_2!6247 (get!3105 lt!336544))) s!10566))))

(declare-fun b!910506 () Bool)

(declare-fun res!414044 () Bool)

(assert (=> b!910506 (=> (not res!414044) (not e!594029))))

(assert (=> b!910506 (= res!414044 (matchR!964 EmptyExpr!2426 (_2!6247 (get!3105 lt!336544))))))

(declare-fun d!279249 () Bool)

(assert (=> d!279249 e!594032))

(declare-fun res!414042 () Bool)

(assert (=> d!279249 (=> res!414042 e!594032)))

(assert (=> d!279249 (= res!414042 e!594029)))

(declare-fun res!414041 () Bool)

(assert (=> d!279249 (=> (not res!414041) (not e!594029))))

(assert (=> d!279249 (= res!414041 (isDefined!1705 lt!336544))))

(assert (=> d!279249 (= lt!336544 e!594031)))

(declare-fun c!147481 () Bool)

(assert (=> d!279249 (= c!147481 e!594028)))

(declare-fun res!414045 () Bool)

(assert (=> d!279249 (=> (not res!414045) (not e!594028))))

(assert (=> d!279249 (= res!414045 (matchR!964 (regOne!5364 r!15766) Nil!9640))))

(assert (=> d!279249 (validRegex!895 (regOne!5364 r!15766))))

(assert (=> d!279249 (= (findConcatSeparation!169 (regOne!5364 r!15766) EmptyExpr!2426 Nil!9640 s!10566 s!10566) lt!336544)))

(assert (= (and d!279249 res!414045) b!910502))

(assert (= (and d!279249 c!147481) b!910503))

(assert (= (and d!279249 (not c!147481)) b!910499))

(assert (= (and b!910499 c!147482) b!910500))

(assert (= (and b!910499 (not c!147482)) b!910498))

(assert (= (and d!279249 res!414041) b!910504))

(assert (= (and b!910504 res!414043) b!910506))

(assert (= (and b!910506 res!414044) b!910505))

(assert (= (and d!279249 (not res!414042)) b!910501))

(declare-fun m!1143061 () Bool)

(assert (=> b!910501 m!1143061))

(declare-fun m!1143063 () Bool)

(assert (=> b!910506 m!1143063))

(declare-fun m!1143065 () Bool)

(assert (=> b!910506 m!1143065))

(declare-fun m!1143067 () Bool)

(assert (=> b!910502 m!1143067))

(assert (=> d!279249 m!1143061))

(declare-fun m!1143069 () Bool)

(assert (=> d!279249 m!1143069))

(declare-fun m!1143071 () Bool)

(assert (=> d!279249 m!1143071))

(assert (=> b!910504 m!1143063))

(declare-fun m!1143073 () Bool)

(assert (=> b!910504 m!1143073))

(declare-fun m!1143075 () Bool)

(assert (=> b!910498 m!1143075))

(assert (=> b!910498 m!1143075))

(declare-fun m!1143077 () Bool)

(assert (=> b!910498 m!1143077))

(declare-fun m!1143079 () Bool)

(assert (=> b!910498 m!1143079))

(assert (=> b!910498 m!1143075))

(declare-fun m!1143081 () Bool)

(assert (=> b!910498 m!1143081))

(assert (=> b!910505 m!1143063))

(declare-fun m!1143083 () Bool)

(assert (=> b!910505 m!1143083))

(assert (=> b!910424 d!279249))

(declare-fun d!279255 () Bool)

(assert (=> d!279255 (= (isDefined!1705 lt!336513) (not (isEmpty!5856 lt!336513)))))

(declare-fun bs!235736 () Bool)

(assert (= bs!235736 d!279255))

(assert (=> bs!235736 m!1143025))

(assert (=> b!910424 d!279255))

(declare-fun d!279257 () Bool)

(assert (=> d!279257 (= (isEmpty!5855 s!10566) (is-Nil!9640 s!10566))))

(assert (=> b!910424 d!279257))

(declare-fun d!279259 () Bool)

(declare-fun choose!5528 (Int) Bool)

(assert (=> d!279259 (= (Exists!199 lambda!28991) (choose!5528 lambda!28991))))

(declare-fun bs!235737 () Bool)

(assert (= bs!235737 d!279259))

(declare-fun m!1143085 () Bool)

(assert (=> bs!235737 m!1143085))

(assert (=> b!910424 d!279259))

(declare-fun bs!235738 () Bool)

(declare-fun d!279261 () Bool)

(assert (= bs!235738 (and d!279261 b!910424)))

(declare-fun lambda!29003 () Int)

(assert (=> bs!235738 (= lambda!29003 lambda!28991)))

(assert (=> bs!235738 (not (= lambda!29003 lambda!28992))))

(assert (=> d!279261 true))

(assert (=> d!279261 true))

(assert (=> d!279261 true))

(assert (=> d!279261 (= (isDefined!1705 (findConcatSeparation!169 (regOne!5364 r!15766) EmptyExpr!2426 Nil!9640 s!10566 s!10566)) (Exists!199 lambda!29003))))

(declare-fun lt!336549 () Unit!14471)

(declare-fun choose!5529 (Regex!2426 Regex!2426 List!9656) Unit!14471)

(assert (=> d!279261 (= lt!336549 (choose!5529 (regOne!5364 r!15766) EmptyExpr!2426 s!10566))))

(assert (=> d!279261 (validRegex!895 (regOne!5364 r!15766))))

(assert (=> d!279261 (= (lemmaFindConcatSeparationEquivalentToExists!169 (regOne!5364 r!15766) EmptyExpr!2426 s!10566) lt!336549)))

(declare-fun bs!235739 () Bool)

(assert (= bs!235739 d!279261))

(declare-fun m!1143087 () Bool)

(assert (=> bs!235739 m!1143087))

(assert (=> bs!235739 m!1143003))

(assert (=> bs!235739 m!1143003))

(declare-fun m!1143089 () Bool)

(assert (=> bs!235739 m!1143089))

(declare-fun m!1143091 () Bool)

(assert (=> bs!235739 m!1143091))

(assert (=> bs!235739 m!1143071))

(assert (=> b!910424 d!279261))

(declare-fun bs!235740 () Bool)

(declare-fun d!279263 () Bool)

(assert (= bs!235740 (and d!279263 b!910424)))

(declare-fun lambda!29008 () Int)

(assert (=> bs!235740 (= lambda!29008 lambda!28991)))

(assert (=> bs!235740 (not (= lambda!29008 lambda!28992))))

(declare-fun bs!235741 () Bool)

(assert (= bs!235741 (and d!279263 d!279261)))

(assert (=> bs!235741 (= lambda!29008 lambda!29003)))

(assert (=> d!279263 true))

(assert (=> d!279263 true))

(assert (=> d!279263 true))

(declare-fun lambda!29009 () Int)

(assert (=> bs!235740 (not (= lambda!29009 lambda!28991))))

(assert (=> bs!235740 (= lambda!29009 lambda!28992)))

(assert (=> bs!235741 (not (= lambda!29009 lambda!29003))))

(declare-fun bs!235742 () Bool)

(assert (= bs!235742 d!279263))

(assert (=> bs!235742 (not (= lambda!29009 lambda!29008))))

(assert (=> d!279263 true))

(assert (=> d!279263 true))

(assert (=> d!279263 true))

(assert (=> d!279263 (= (Exists!199 lambda!29008) (Exists!199 lambda!29009))))

(declare-fun lt!336552 () Unit!14471)

(declare-fun choose!5530 (Regex!2426 Regex!2426 List!9656) Unit!14471)

(assert (=> d!279263 (= lt!336552 (choose!5530 (regOne!5364 r!15766) EmptyExpr!2426 s!10566))))

(assert (=> d!279263 (validRegex!895 (regOne!5364 r!15766))))

(assert (=> d!279263 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!113 (regOne!5364 r!15766) EmptyExpr!2426 s!10566) lt!336552)))

(declare-fun m!1143093 () Bool)

(assert (=> bs!235742 m!1143093))

(declare-fun m!1143095 () Bool)

(assert (=> bs!235742 m!1143095))

(declare-fun m!1143097 () Bool)

(assert (=> bs!235742 m!1143097))

(assert (=> bs!235742 m!1143071))

(assert (=> b!910424 d!279263))

(declare-fun d!279265 () Bool)

(assert (=> d!279265 (= (Exists!199 lambda!28992) (choose!5528 lambda!28992))))

(declare-fun bs!235743 () Bool)

(assert (= bs!235743 d!279265))

(declare-fun m!1143099 () Bool)

(assert (=> bs!235743 m!1143099))

(assert (=> b!910424 d!279265))

(declare-fun bs!235744 () Bool)

(declare-fun b!910583 () Bool)

(assert (= bs!235744 (and b!910583 d!279263)))

(declare-fun lambda!29014 () Int)

(assert (=> bs!235744 (not (= lambda!29014 lambda!29008))))

(declare-fun bs!235745 () Bool)

(assert (= bs!235745 (and b!910583 b!910424)))

(assert (=> bs!235745 (not (= lambda!29014 lambda!28992))))

(declare-fun bs!235746 () Bool)

(assert (= bs!235746 (and b!910583 d!279261)))

(assert (=> bs!235746 (not (= lambda!29014 lambda!29003))))

(assert (=> bs!235745 (not (= lambda!29014 lambda!28991))))

(assert (=> bs!235744 (not (= lambda!29014 lambda!29009))))

(assert (=> b!910583 true))

(assert (=> b!910583 true))

(declare-fun bs!235747 () Bool)

(declare-fun b!910579 () Bool)

(assert (= bs!235747 (and b!910579 d!279263)))

(declare-fun lambda!29015 () Int)

(assert (=> bs!235747 (not (= lambda!29015 lambda!29008))))

(declare-fun bs!235748 () Bool)

(assert (= bs!235748 (and b!910579 b!910424)))

(assert (=> bs!235748 (= (= (regTwo!5364 r!15766) EmptyExpr!2426) (= lambda!29015 lambda!28992))))

(declare-fun bs!235749 () Bool)

(assert (= bs!235749 (and b!910579 d!279261)))

(assert (=> bs!235749 (not (= lambda!29015 lambda!29003))))

(assert (=> bs!235748 (not (= lambda!29015 lambda!28991))))

(assert (=> bs!235747 (= (= (regTwo!5364 r!15766) EmptyExpr!2426) (= lambda!29015 lambda!29009))))

(declare-fun bs!235751 () Bool)

(assert (= bs!235751 (and b!910579 b!910583)))

(assert (=> bs!235751 (not (= lambda!29015 lambda!29014))))

(assert (=> b!910579 true))

(assert (=> b!910579 true))

(declare-fun b!910578 () Bool)

(declare-fun c!147498 () Bool)

(assert (=> b!910578 (= c!147498 (is-Union!2426 r!15766))))

(declare-fun e!594078 () Bool)

(declare-fun e!594073 () Bool)

(assert (=> b!910578 (= e!594078 e!594073)))

(declare-fun e!594075 () Bool)

(declare-fun call!54693 () Bool)

(assert (=> b!910579 (= e!594075 call!54693)))

(declare-fun c!147499 () Bool)

(declare-fun bm!54687 () Bool)

(assert (=> bm!54687 (= call!54693 (Exists!199 (ite c!147499 lambda!29014 lambda!29015)))))

(declare-fun b!910580 () Bool)

(declare-fun e!594076 () Bool)

(declare-fun e!594077 () Bool)

(assert (=> b!910580 (= e!594076 e!594077)))

(declare-fun res!414090 () Bool)

(assert (=> b!910580 (= res!414090 (not (is-EmptyLang!2426 r!15766)))))

(assert (=> b!910580 (=> (not res!414090) (not e!594077))))

(declare-fun b!910581 () Bool)

(assert (=> b!910581 (= e!594078 (= s!10566 (Cons!9640 (c!147475 r!15766) Nil!9640)))))

(declare-fun b!910582 () Bool)

(assert (=> b!910582 (= e!594073 e!594075)))

(assert (=> b!910582 (= c!147499 (is-Star!2426 r!15766))))

(declare-fun e!594072 () Bool)

(assert (=> b!910583 (= e!594072 call!54693)))

(declare-fun d!279267 () Bool)

(declare-fun c!147497 () Bool)

(assert (=> d!279267 (= c!147497 (is-EmptyExpr!2426 r!15766))))

(assert (=> d!279267 (= (matchRSpec!227 r!15766 s!10566) e!594076)))

(declare-fun b!910584 () Bool)

(declare-fun res!414091 () Bool)

(assert (=> b!910584 (=> res!414091 e!594072)))

(declare-fun call!54692 () Bool)

(assert (=> b!910584 (= res!414091 call!54692)))

(assert (=> b!910584 (= e!594075 e!594072)))

(declare-fun b!910585 () Bool)

(declare-fun e!594074 () Bool)

(assert (=> b!910585 (= e!594074 (matchRSpec!227 (regTwo!5365 r!15766) s!10566))))

(declare-fun b!910586 () Bool)

(assert (=> b!910586 (= e!594076 call!54692)))

(declare-fun b!910587 () Bool)

(declare-fun c!147500 () Bool)

(assert (=> b!910587 (= c!147500 (is-ElementMatch!2426 r!15766))))

(assert (=> b!910587 (= e!594077 e!594078)))

(declare-fun bm!54688 () Bool)

(assert (=> bm!54688 (= call!54692 (isEmpty!5855 s!10566))))

(declare-fun b!910588 () Bool)

(assert (=> b!910588 (= e!594073 e!594074)))

(declare-fun res!414089 () Bool)

(assert (=> b!910588 (= res!414089 (matchRSpec!227 (regOne!5365 r!15766) s!10566))))

(assert (=> b!910588 (=> res!414089 e!594074)))

(assert (= (and d!279267 c!147497) b!910586))

(assert (= (and d!279267 (not c!147497)) b!910580))

(assert (= (and b!910580 res!414090) b!910587))

(assert (= (and b!910587 c!147500) b!910581))

(assert (= (and b!910587 (not c!147500)) b!910578))

(assert (= (and b!910578 c!147498) b!910588))

(assert (= (and b!910578 (not c!147498)) b!910582))

(assert (= (and b!910588 (not res!414089)) b!910585))

(assert (= (and b!910582 c!147499) b!910584))

(assert (= (and b!910582 (not c!147499)) b!910579))

(assert (= (and b!910584 (not res!414091)) b!910583))

(assert (= (or b!910583 b!910579) bm!54687))

(assert (= (or b!910586 b!910584) bm!54688))

(declare-fun m!1143127 () Bool)

(assert (=> bm!54687 m!1143127))

(declare-fun m!1143129 () Bool)

(assert (=> b!910585 m!1143129))

(assert (=> bm!54688 m!1143009))

(declare-fun m!1143131 () Bool)

(assert (=> b!910588 m!1143131))

(assert (=> b!910425 d!279267))

(declare-fun b!910617 () Bool)

(declare-fun e!594099 () Bool)

(declare-fun e!594097 () Bool)

(assert (=> b!910617 (= e!594099 e!594097)))

(declare-fun c!147509 () Bool)

(assert (=> b!910617 (= c!147509 (is-EmptyLang!2426 r!15766))))

(declare-fun b!910618 () Bool)

(declare-fun res!414115 () Bool)

(declare-fun e!594093 () Bool)

(assert (=> b!910618 (=> res!414115 e!594093)))

(declare-fun e!594098 () Bool)

(assert (=> b!910618 (= res!414115 e!594098)))

(declare-fun res!414113 () Bool)

(assert (=> b!910618 (=> (not res!414113) (not e!594098))))

(declare-fun lt!336564 () Bool)

(assert (=> b!910618 (= res!414113 lt!336564)))

(declare-fun b!910619 () Bool)

(declare-fun e!594094 () Bool)

(declare-fun derivativeStep!466 (Regex!2426 C!5422) Regex!2426)

(declare-fun head!1619 (List!9656) C!5422)

(declare-fun tail!1181 (List!9656) List!9656)

(assert (=> b!910619 (= e!594094 (matchR!964 (derivativeStep!466 r!15766 (head!1619 s!10566)) (tail!1181 s!10566)))))

(declare-fun b!910620 () Bool)

(declare-fun nullable!656 (Regex!2426) Bool)

(assert (=> b!910620 (= e!594094 (nullable!656 r!15766))))

(declare-fun b!910621 () Bool)

(declare-fun e!594095 () Bool)

(assert (=> b!910621 (= e!594093 e!594095)))

(declare-fun res!414108 () Bool)

(assert (=> b!910621 (=> (not res!414108) (not e!594095))))

(assert (=> b!910621 (= res!414108 (not lt!336564))))

(declare-fun bm!54691 () Bool)

(declare-fun call!54696 () Bool)

(assert (=> bm!54691 (= call!54696 (isEmpty!5855 s!10566))))

(declare-fun b!910622 () Bool)

(declare-fun res!414110 () Bool)

(assert (=> b!910622 (=> (not res!414110) (not e!594098))))

(assert (=> b!910622 (= res!414110 (not call!54696))))

(declare-fun b!910623 () Bool)

(assert (=> b!910623 (= e!594099 (= lt!336564 call!54696))))

(declare-fun b!910624 () Bool)

(declare-fun res!414112 () Bool)

(assert (=> b!910624 (=> (not res!414112) (not e!594098))))

(assert (=> b!910624 (= res!414112 (isEmpty!5855 (tail!1181 s!10566)))))

(declare-fun b!910625 () Bool)

(declare-fun res!414114 () Bool)

(declare-fun e!594096 () Bool)

(assert (=> b!910625 (=> res!414114 e!594096)))

(assert (=> b!910625 (= res!414114 (not (isEmpty!5855 (tail!1181 s!10566))))))

(declare-fun d!279275 () Bool)

(assert (=> d!279275 e!594099))

(declare-fun c!147508 () Bool)

(assert (=> d!279275 (= c!147508 (is-EmptyExpr!2426 r!15766))))

(assert (=> d!279275 (= lt!336564 e!594094)))

(declare-fun c!147507 () Bool)

(assert (=> d!279275 (= c!147507 (isEmpty!5855 s!10566))))

(assert (=> d!279275 (validRegex!895 r!15766)))

(assert (=> d!279275 (= (matchR!964 r!15766 s!10566) lt!336564)))

(declare-fun b!910626 () Bool)

(assert (=> b!910626 (= e!594098 (= (head!1619 s!10566) (c!147475 r!15766)))))

(declare-fun b!910627 () Bool)

(declare-fun res!414111 () Bool)

(assert (=> b!910627 (=> res!414111 e!594093)))

(assert (=> b!910627 (= res!414111 (not (is-ElementMatch!2426 r!15766)))))

(assert (=> b!910627 (= e!594097 e!594093)))

(declare-fun b!910628 () Bool)

(assert (=> b!910628 (= e!594095 e!594096)))

(declare-fun res!414109 () Bool)

(assert (=> b!910628 (=> res!414109 e!594096)))

(assert (=> b!910628 (= res!414109 call!54696)))

(declare-fun b!910629 () Bool)

(assert (=> b!910629 (= e!594096 (not (= (head!1619 s!10566) (c!147475 r!15766))))))

(declare-fun b!910630 () Bool)

(assert (=> b!910630 (= e!594097 (not lt!336564))))

(assert (= (and d!279275 c!147507) b!910620))

(assert (= (and d!279275 (not c!147507)) b!910619))

(assert (= (and d!279275 c!147508) b!910623))

(assert (= (and d!279275 (not c!147508)) b!910617))

(assert (= (and b!910617 c!147509) b!910630))

(assert (= (and b!910617 (not c!147509)) b!910627))

(assert (= (and b!910627 (not res!414111)) b!910618))

(assert (= (and b!910618 res!414113) b!910622))

(assert (= (and b!910622 res!414110) b!910624))

(assert (= (and b!910624 res!414112) b!910626))

(assert (= (and b!910618 (not res!414115)) b!910621))

(assert (= (and b!910621 res!414108) b!910628))

(assert (= (and b!910628 (not res!414109)) b!910625))

(assert (= (and b!910625 (not res!414114)) b!910629))

(assert (= (or b!910623 b!910622 b!910628) bm!54691))

(declare-fun m!1143133 () Bool)

(assert (=> b!910625 m!1143133))

(assert (=> b!910625 m!1143133))

(declare-fun m!1143135 () Bool)

(assert (=> b!910625 m!1143135))

(assert (=> b!910624 m!1143133))

(assert (=> b!910624 m!1143133))

(assert (=> b!910624 m!1143135))

(assert (=> d!279275 m!1143009))

(assert (=> d!279275 m!1143013))

(declare-fun m!1143137 () Bool)

(assert (=> b!910629 m!1143137))

(declare-fun m!1143139 () Bool)

(assert (=> b!910620 m!1143139))

(assert (=> b!910626 m!1143137))

(assert (=> bm!54691 m!1143009))

(assert (=> b!910619 m!1143137))

(assert (=> b!910619 m!1143137))

(declare-fun m!1143141 () Bool)

(assert (=> b!910619 m!1143141))

(assert (=> b!910619 m!1143133))

(assert (=> b!910619 m!1143141))

(assert (=> b!910619 m!1143133))

(declare-fun m!1143143 () Bool)

(assert (=> b!910619 m!1143143))

(assert (=> b!910425 d!279275))

(declare-fun d!279279 () Bool)

(assert (=> d!279279 (= (matchR!964 r!15766 s!10566) (matchRSpec!227 r!15766 s!10566))))

(declare-fun lt!336569 () Unit!14471)

(declare-fun choose!5531 (Regex!2426 List!9656) Unit!14471)

(assert (=> d!279279 (= lt!336569 (choose!5531 r!15766 s!10566))))

(assert (=> d!279279 (validRegex!895 r!15766)))

(assert (=> d!279279 (= (mainMatchTheorem!227 r!15766 s!10566) lt!336569)))

(declare-fun bs!235753 () Bool)

(assert (= bs!235753 d!279279))

(assert (=> bs!235753 m!1142995))

(assert (=> bs!235753 m!1142993))

(declare-fun m!1143145 () Bool)

(assert (=> bs!235753 m!1143145))

(assert (=> bs!235753 m!1143013))

(assert (=> b!910425 d!279279))

(declare-fun d!279281 () Bool)

(assert (=> d!279281 (= (isEmpty!5856 lt!336513) (not (is-Some!2062 lt!336513)))))

(assert (=> b!910432 d!279281))

(declare-fun d!279283 () Bool)

(declare-fun res!414130 () Bool)

(declare-fun e!594121 () Bool)

(assert (=> d!279283 (=> res!414130 e!594121)))

(assert (=> d!279283 (= res!414130 (is-ElementMatch!2426 r!15766))))

(assert (=> d!279283 (= (validRegex!895 r!15766) e!594121)))

(declare-fun b!910653 () Bool)

(declare-fun e!594116 () Bool)

(declare-fun call!54703 () Bool)

(assert (=> b!910653 (= e!594116 call!54703)))

(declare-fun b!910654 () Bool)

(declare-fun res!414132 () Bool)

(assert (=> b!910654 (=> (not res!414132) (not e!594116))))

(declare-fun call!54704 () Bool)

(assert (=> b!910654 (= res!414132 call!54704)))

(declare-fun e!594119 () Bool)

(assert (=> b!910654 (= e!594119 e!594116)))

(declare-fun b!910655 () Bool)

(declare-fun e!594118 () Bool)

(assert (=> b!910655 (= e!594121 e!594118)))

(declare-fun c!147515 () Bool)

(assert (=> b!910655 (= c!147515 (is-Star!2426 r!15766))))

(declare-fun b!910656 () Bool)

(declare-fun res!414134 () Bool)

(declare-fun e!594120 () Bool)

(assert (=> b!910656 (=> res!414134 e!594120)))

(assert (=> b!910656 (= res!414134 (not (is-Concat!4259 r!15766)))))

(assert (=> b!910656 (= e!594119 e!594120)))

(declare-fun b!910657 () Bool)

(declare-fun e!594117 () Bool)

(declare-fun call!54705 () Bool)

(assert (=> b!910657 (= e!594117 call!54705)))

(declare-fun bm!54698 () Bool)

(assert (=> bm!54698 (= call!54704 call!54705)))

(declare-fun b!910658 () Bool)

(declare-fun e!594122 () Bool)

(assert (=> b!910658 (= e!594122 call!54703)))

(declare-fun b!910659 () Bool)

(assert (=> b!910659 (= e!594120 e!594122)))

(declare-fun res!414133 () Bool)

(assert (=> b!910659 (=> (not res!414133) (not e!594122))))

(assert (=> b!910659 (= res!414133 call!54704)))

(declare-fun bm!54699 () Bool)

(declare-fun c!147514 () Bool)

(assert (=> bm!54699 (= call!54703 (validRegex!895 (ite c!147514 (regTwo!5365 r!15766) (regTwo!5364 r!15766))))))

(declare-fun bm!54700 () Bool)

(assert (=> bm!54700 (= call!54705 (validRegex!895 (ite c!147515 (reg!2755 r!15766) (ite c!147514 (regOne!5365 r!15766) (regOne!5364 r!15766)))))))

(declare-fun b!910660 () Bool)

(assert (=> b!910660 (= e!594118 e!594119)))

(assert (=> b!910660 (= c!147514 (is-Union!2426 r!15766))))

(declare-fun b!910661 () Bool)

(assert (=> b!910661 (= e!594118 e!594117)))

(declare-fun res!414131 () Bool)

(assert (=> b!910661 (= res!414131 (not (nullable!656 (reg!2755 r!15766))))))

(assert (=> b!910661 (=> (not res!414131) (not e!594117))))

(assert (= (and d!279283 (not res!414130)) b!910655))

(assert (= (and b!910655 c!147515) b!910661))

(assert (= (and b!910655 (not c!147515)) b!910660))

(assert (= (and b!910661 res!414131) b!910657))

(assert (= (and b!910660 c!147514) b!910654))

(assert (= (and b!910660 (not c!147514)) b!910656))

(assert (= (and b!910654 res!414132) b!910653))

(assert (= (and b!910656 (not res!414134)) b!910659))

(assert (= (and b!910659 res!414133) b!910658))

(assert (= (or b!910653 b!910658) bm!54699))

(assert (= (or b!910654 b!910659) bm!54698))

(assert (= (or b!910657 bm!54698) bm!54700))

(declare-fun m!1143155 () Bool)

(assert (=> bm!54699 m!1143155))

(declare-fun m!1143157 () Bool)

(assert (=> bm!54700 m!1143157))

(declare-fun m!1143159 () Bool)

(assert (=> b!910661 m!1143159))

(assert (=> start!81868 d!279283))

(declare-fun b!910662 () Bool)

(declare-fun e!594129 () Bool)

(declare-fun e!594127 () Bool)

(assert (=> b!910662 (= e!594129 e!594127)))

(declare-fun c!147518 () Bool)

(assert (=> b!910662 (= c!147518 (is-EmptyLang!2426 lt!336512))))

(declare-fun b!910663 () Bool)

(declare-fun res!414142 () Bool)

(declare-fun e!594123 () Bool)

(assert (=> b!910663 (=> res!414142 e!594123)))

(declare-fun e!594128 () Bool)

(assert (=> b!910663 (= res!414142 e!594128)))

(declare-fun res!414140 () Bool)

(assert (=> b!910663 (=> (not res!414140) (not e!594128))))

(declare-fun lt!336571 () Bool)

(assert (=> b!910663 (= res!414140 lt!336571)))

(declare-fun b!910664 () Bool)

(declare-fun e!594124 () Bool)

(assert (=> b!910664 (= e!594124 (matchR!964 (derivativeStep!466 lt!336512 (head!1619 s!10566)) (tail!1181 s!10566)))))

(declare-fun b!910665 () Bool)

(assert (=> b!910665 (= e!594124 (nullable!656 lt!336512))))

(declare-fun b!910666 () Bool)

(declare-fun e!594125 () Bool)

(assert (=> b!910666 (= e!594123 e!594125)))

(declare-fun res!414135 () Bool)

(assert (=> b!910666 (=> (not res!414135) (not e!594125))))

(assert (=> b!910666 (= res!414135 (not lt!336571))))

(declare-fun bm!54701 () Bool)

(declare-fun call!54706 () Bool)

(assert (=> bm!54701 (= call!54706 (isEmpty!5855 s!10566))))

(declare-fun b!910667 () Bool)

(declare-fun res!414137 () Bool)

(assert (=> b!910667 (=> (not res!414137) (not e!594128))))

(assert (=> b!910667 (= res!414137 (not call!54706))))

(declare-fun b!910668 () Bool)

(assert (=> b!910668 (= e!594129 (= lt!336571 call!54706))))

(declare-fun b!910669 () Bool)

(declare-fun res!414139 () Bool)

(assert (=> b!910669 (=> (not res!414139) (not e!594128))))

(assert (=> b!910669 (= res!414139 (isEmpty!5855 (tail!1181 s!10566)))))

(declare-fun b!910670 () Bool)

(declare-fun res!414141 () Bool)

(declare-fun e!594126 () Bool)

(assert (=> b!910670 (=> res!414141 e!594126)))

(assert (=> b!910670 (= res!414141 (not (isEmpty!5855 (tail!1181 s!10566))))))

(declare-fun d!279289 () Bool)

(assert (=> d!279289 e!594129))

(declare-fun c!147517 () Bool)

(assert (=> d!279289 (= c!147517 (is-EmptyExpr!2426 lt!336512))))

(assert (=> d!279289 (= lt!336571 e!594124)))

(declare-fun c!147516 () Bool)

(assert (=> d!279289 (= c!147516 (isEmpty!5855 s!10566))))

(assert (=> d!279289 (validRegex!895 lt!336512)))

(assert (=> d!279289 (= (matchR!964 lt!336512 s!10566) lt!336571)))

(declare-fun b!910671 () Bool)

(assert (=> b!910671 (= e!594128 (= (head!1619 s!10566) (c!147475 lt!336512)))))

(declare-fun b!910672 () Bool)

(declare-fun res!414138 () Bool)

(assert (=> b!910672 (=> res!414138 e!594123)))

(assert (=> b!910672 (= res!414138 (not (is-ElementMatch!2426 lt!336512)))))

(assert (=> b!910672 (= e!594127 e!594123)))

(declare-fun b!910673 () Bool)

(assert (=> b!910673 (= e!594125 e!594126)))

(declare-fun res!414136 () Bool)

(assert (=> b!910673 (=> res!414136 e!594126)))

(assert (=> b!910673 (= res!414136 call!54706)))

(declare-fun b!910674 () Bool)

(assert (=> b!910674 (= e!594126 (not (= (head!1619 s!10566) (c!147475 lt!336512))))))

(declare-fun b!910675 () Bool)

(assert (=> b!910675 (= e!594127 (not lt!336571))))

(assert (= (and d!279289 c!147516) b!910665))

(assert (= (and d!279289 (not c!147516)) b!910664))

(assert (= (and d!279289 c!147517) b!910668))

(assert (= (and d!279289 (not c!147517)) b!910662))

(assert (= (and b!910662 c!147518) b!910675))

(assert (= (and b!910662 (not c!147518)) b!910672))

(assert (= (and b!910672 (not res!414138)) b!910663))

(assert (= (and b!910663 res!414140) b!910667))

(assert (= (and b!910667 res!414137) b!910669))

(assert (= (and b!910669 res!414139) b!910671))

(assert (= (and b!910663 (not res!414142)) b!910666))

(assert (= (and b!910666 res!414135) b!910673))

(assert (= (and b!910673 (not res!414136)) b!910670))

(assert (= (and b!910670 (not res!414141)) b!910674))

(assert (= (or b!910668 b!910667 b!910673) bm!54701))

(assert (=> b!910670 m!1143133))

(assert (=> b!910670 m!1143133))

(assert (=> b!910670 m!1143135))

(assert (=> b!910669 m!1143133))

(assert (=> b!910669 m!1143133))

(assert (=> b!910669 m!1143135))

(assert (=> d!279289 m!1143009))

(assert (=> d!279289 m!1143019))

(assert (=> b!910674 m!1143137))

(declare-fun m!1143161 () Bool)

(assert (=> b!910665 m!1143161))

(assert (=> b!910671 m!1143137))

(assert (=> bm!54701 m!1143009))

(assert (=> b!910664 m!1143137))

(assert (=> b!910664 m!1143137))

(declare-fun m!1143163 () Bool)

(assert (=> b!910664 m!1143163))

(assert (=> b!910664 m!1143133))

(assert (=> b!910664 m!1143163))

(assert (=> b!910664 m!1143133))

(declare-fun m!1143165 () Bool)

(assert (=> b!910664 m!1143165))

(assert (=> b!910426 d!279289))

(declare-fun d!279291 () Bool)

(declare-fun res!414143 () Bool)

(declare-fun e!594135 () Bool)

(assert (=> d!279291 (=> res!414143 e!594135)))

(assert (=> d!279291 (= res!414143 (is-ElementMatch!2426 lt!336512))))

(assert (=> d!279291 (= (validRegex!895 lt!336512) e!594135)))

(declare-fun b!910676 () Bool)

(declare-fun e!594130 () Bool)

(declare-fun call!54707 () Bool)

(assert (=> b!910676 (= e!594130 call!54707)))

(declare-fun b!910677 () Bool)

(declare-fun res!414145 () Bool)

(assert (=> b!910677 (=> (not res!414145) (not e!594130))))

(declare-fun call!54708 () Bool)

(assert (=> b!910677 (= res!414145 call!54708)))

(declare-fun e!594133 () Bool)

(assert (=> b!910677 (= e!594133 e!594130)))

(declare-fun b!910678 () Bool)

(declare-fun e!594132 () Bool)

(assert (=> b!910678 (= e!594135 e!594132)))

(declare-fun c!147520 () Bool)

(assert (=> b!910678 (= c!147520 (is-Star!2426 lt!336512))))

(declare-fun b!910679 () Bool)

(declare-fun res!414147 () Bool)

(declare-fun e!594134 () Bool)

(assert (=> b!910679 (=> res!414147 e!594134)))

(assert (=> b!910679 (= res!414147 (not (is-Concat!4259 lt!336512)))))

(assert (=> b!910679 (= e!594133 e!594134)))

(declare-fun b!910680 () Bool)

(declare-fun e!594131 () Bool)

(declare-fun call!54709 () Bool)

(assert (=> b!910680 (= e!594131 call!54709)))

(declare-fun bm!54702 () Bool)

(assert (=> bm!54702 (= call!54708 call!54709)))

(declare-fun b!910681 () Bool)

(declare-fun e!594136 () Bool)

(assert (=> b!910681 (= e!594136 call!54707)))

(declare-fun b!910682 () Bool)

(assert (=> b!910682 (= e!594134 e!594136)))

(declare-fun res!414146 () Bool)

(assert (=> b!910682 (=> (not res!414146) (not e!594136))))

(assert (=> b!910682 (= res!414146 call!54708)))

(declare-fun bm!54703 () Bool)

(declare-fun c!147519 () Bool)

(assert (=> bm!54703 (= call!54707 (validRegex!895 (ite c!147519 (regTwo!5365 lt!336512) (regTwo!5364 lt!336512))))))

(declare-fun bm!54704 () Bool)

(assert (=> bm!54704 (= call!54709 (validRegex!895 (ite c!147520 (reg!2755 lt!336512) (ite c!147519 (regOne!5365 lt!336512) (regOne!5364 lt!336512)))))))

(declare-fun b!910683 () Bool)

(assert (=> b!910683 (= e!594132 e!594133)))

(assert (=> b!910683 (= c!147519 (is-Union!2426 lt!336512))))

(declare-fun b!910684 () Bool)

(assert (=> b!910684 (= e!594132 e!594131)))

(declare-fun res!414144 () Bool)

(assert (=> b!910684 (= res!414144 (not (nullable!656 (reg!2755 lt!336512))))))

(assert (=> b!910684 (=> (not res!414144) (not e!594131))))

(assert (= (and d!279291 (not res!414143)) b!910678))

(assert (= (and b!910678 c!147520) b!910684))

(assert (= (and b!910678 (not c!147520)) b!910683))

(assert (= (and b!910684 res!414144) b!910680))

(assert (= (and b!910683 c!147519) b!910677))

(assert (= (and b!910683 (not c!147519)) b!910679))

(assert (= (and b!910677 res!414145) b!910676))

(assert (= (and b!910679 (not res!414147)) b!910682))

(assert (= (and b!910682 res!414146) b!910681))

(assert (= (or b!910676 b!910681) bm!54703))

(assert (= (or b!910677 b!910682) bm!54702))

(assert (= (or b!910680 bm!54702) bm!54704))

(declare-fun m!1143167 () Bool)

(assert (=> bm!54703 m!1143167))

(declare-fun m!1143169 () Bool)

(assert (=> bm!54704 m!1143169))

(declare-fun m!1143171 () Bool)

(assert (=> b!910684 m!1143171))

(assert (=> b!910426 d!279291))

(declare-fun b!910685 () Bool)

(declare-fun e!594143 () Bool)

(declare-fun e!594141 () Bool)

(assert (=> b!910685 (= e!594143 e!594141)))

(declare-fun c!147523 () Bool)

(assert (=> b!910685 (= c!147523 (is-EmptyLang!2426 (regOne!5364 r!15766)))))

(declare-fun b!910686 () Bool)

(declare-fun res!414155 () Bool)

(declare-fun e!594137 () Bool)

(assert (=> b!910686 (=> res!414155 e!594137)))

(declare-fun e!594142 () Bool)

(assert (=> b!910686 (= res!414155 e!594142)))

(declare-fun res!414153 () Bool)

(assert (=> b!910686 (=> (not res!414153) (not e!594142))))

(declare-fun lt!336572 () Bool)

(assert (=> b!910686 (= res!414153 lt!336572)))

(declare-fun b!910687 () Bool)

(declare-fun e!594138 () Bool)

(assert (=> b!910687 (= e!594138 (matchR!964 (derivativeStep!466 (regOne!5364 r!15766) (head!1619 s!10566)) (tail!1181 s!10566)))))

(declare-fun b!910688 () Bool)

(assert (=> b!910688 (= e!594138 (nullable!656 (regOne!5364 r!15766)))))

(declare-fun b!910689 () Bool)

(declare-fun e!594139 () Bool)

(assert (=> b!910689 (= e!594137 e!594139)))

(declare-fun res!414148 () Bool)

(assert (=> b!910689 (=> (not res!414148) (not e!594139))))

(assert (=> b!910689 (= res!414148 (not lt!336572))))

(declare-fun bm!54705 () Bool)

(declare-fun call!54710 () Bool)

(assert (=> bm!54705 (= call!54710 (isEmpty!5855 s!10566))))

(declare-fun b!910690 () Bool)

(declare-fun res!414150 () Bool)

(assert (=> b!910690 (=> (not res!414150) (not e!594142))))

(assert (=> b!910690 (= res!414150 (not call!54710))))

(declare-fun b!910691 () Bool)

(assert (=> b!910691 (= e!594143 (= lt!336572 call!54710))))

(declare-fun b!910692 () Bool)

(declare-fun res!414152 () Bool)

(assert (=> b!910692 (=> (not res!414152) (not e!594142))))

(assert (=> b!910692 (= res!414152 (isEmpty!5855 (tail!1181 s!10566)))))

(declare-fun b!910693 () Bool)

(declare-fun res!414154 () Bool)

(declare-fun e!594140 () Bool)

(assert (=> b!910693 (=> res!414154 e!594140)))

(assert (=> b!910693 (= res!414154 (not (isEmpty!5855 (tail!1181 s!10566))))))

(declare-fun d!279293 () Bool)

(assert (=> d!279293 e!594143))

(declare-fun c!147522 () Bool)

(assert (=> d!279293 (= c!147522 (is-EmptyExpr!2426 (regOne!5364 r!15766)))))

(assert (=> d!279293 (= lt!336572 e!594138)))

(declare-fun c!147521 () Bool)

(assert (=> d!279293 (= c!147521 (isEmpty!5855 s!10566))))

(assert (=> d!279293 (validRegex!895 (regOne!5364 r!15766))))

(assert (=> d!279293 (= (matchR!964 (regOne!5364 r!15766) s!10566) lt!336572)))

(declare-fun b!910694 () Bool)

(assert (=> b!910694 (= e!594142 (= (head!1619 s!10566) (c!147475 (regOne!5364 r!15766))))))

(declare-fun b!910695 () Bool)

(declare-fun res!414151 () Bool)

(assert (=> b!910695 (=> res!414151 e!594137)))

(assert (=> b!910695 (= res!414151 (not (is-ElementMatch!2426 (regOne!5364 r!15766))))))

(assert (=> b!910695 (= e!594141 e!594137)))

(declare-fun b!910696 () Bool)

(assert (=> b!910696 (= e!594139 e!594140)))

(declare-fun res!414149 () Bool)

(assert (=> b!910696 (=> res!414149 e!594140)))

(assert (=> b!910696 (= res!414149 call!54710)))

(declare-fun b!910697 () Bool)

(assert (=> b!910697 (= e!594140 (not (= (head!1619 s!10566) (c!147475 (regOne!5364 r!15766)))))))

(declare-fun b!910698 () Bool)

(assert (=> b!910698 (= e!594141 (not lt!336572))))

(assert (= (and d!279293 c!147521) b!910688))

(assert (= (and d!279293 (not c!147521)) b!910687))

(assert (= (and d!279293 c!147522) b!910691))

(assert (= (and d!279293 (not c!147522)) b!910685))

(assert (= (and b!910685 c!147523) b!910698))

(assert (= (and b!910685 (not c!147523)) b!910695))

(assert (= (and b!910695 (not res!414151)) b!910686))

(assert (= (and b!910686 res!414153) b!910690))

(assert (= (and b!910690 res!414150) b!910692))

(assert (= (and b!910692 res!414152) b!910694))

(assert (= (and b!910686 (not res!414155)) b!910689))

(assert (= (and b!910689 res!414148) b!910696))

(assert (= (and b!910696 (not res!414149)) b!910693))

(assert (= (and b!910693 (not res!414154)) b!910697))

(assert (= (or b!910691 b!910690 b!910696) bm!54705))

(assert (=> b!910693 m!1143133))

(assert (=> b!910693 m!1143133))

(assert (=> b!910693 m!1143135))

(assert (=> b!910692 m!1143133))

(assert (=> b!910692 m!1143133))

(assert (=> b!910692 m!1143135))

(assert (=> d!279293 m!1143009))

(assert (=> d!279293 m!1143071))

(assert (=> b!910697 m!1143137))

(declare-fun m!1143173 () Bool)

(assert (=> b!910688 m!1143173))

(assert (=> b!910694 m!1143137))

(assert (=> bm!54705 m!1143009))

(assert (=> b!910687 m!1143137))

(assert (=> b!910687 m!1143137))

(declare-fun m!1143175 () Bool)

(assert (=> b!910687 m!1143175))

(assert (=> b!910687 m!1143133))

(assert (=> b!910687 m!1143175))

(assert (=> b!910687 m!1143133))

(declare-fun m!1143177 () Bool)

(assert (=> b!910687 m!1143177))

(assert (=> b!910426 d!279293))

(declare-fun d!279295 () Bool)

(assert (=> d!279295 (= (matchR!964 (regOne!5364 r!15766) s!10566) (matchR!964 (removeUselessConcat!111 (regOne!5364 r!15766)) s!10566))))

(declare-fun lt!336575 () Unit!14471)

(declare-fun choose!5532 (Regex!2426 List!9656) Unit!14471)

(assert (=> d!279295 (= lt!336575 (choose!5532 (regOne!5364 r!15766) s!10566))))

(assert (=> d!279295 (validRegex!895 (regOne!5364 r!15766))))

(assert (=> d!279295 (= (lemmaRemoveUselessConcatSound!97 (regOne!5364 r!15766) s!10566) lt!336575)))

(declare-fun bs!235757 () Bool)

(assert (= bs!235757 d!279295))

(assert (=> bs!235757 m!1143021))

(assert (=> bs!235757 m!1143071))

(assert (=> bs!235757 m!1143015))

(assert (=> bs!235757 m!1143021))

(declare-fun m!1143179 () Bool)

(assert (=> bs!235757 m!1143179))

(declare-fun m!1143181 () Bool)

(assert (=> bs!235757 m!1143181))

(assert (=> b!910426 d!279295))

(declare-fun bm!54716 () Bool)

(declare-fun call!54724 () Regex!2426)

(declare-fun c!147535 () Bool)

(declare-fun c!147538 () Bool)

(assert (=> bm!54716 (= call!54724 (removeUselessConcat!111 (ite (or c!147538 c!147535) (regOne!5364 (regOne!5364 r!15766)) (regOne!5365 (regOne!5364 r!15766)))))))

(declare-fun b!910725 () Bool)

(declare-fun e!594158 () Regex!2426)

(declare-fun call!54723 () Regex!2426)

(assert (=> b!910725 (= e!594158 (Star!2426 call!54723))))

(declare-fun b!910726 () Bool)

(declare-fun c!147537 () Bool)

(assert (=> b!910726 (= c!147537 (is-Star!2426 (regOne!5364 r!15766)))))

(declare-fun e!594163 () Regex!2426)

(assert (=> b!910726 (= e!594163 e!594158)))

(declare-fun bm!54717 () Bool)

(declare-fun c!147536 () Bool)

(declare-fun call!54721 () Regex!2426)

(declare-fun c!147534 () Bool)

(assert (=> bm!54717 (= call!54721 (removeUselessConcat!111 (ite (or c!147536 c!147535) (regTwo!5364 (regOne!5364 r!15766)) (ite c!147534 (regTwo!5365 (regOne!5364 r!15766)) (reg!2755 (regOne!5364 r!15766))))))))

(declare-fun d!279297 () Bool)

(declare-fun e!594162 () Bool)

(assert (=> d!279297 e!594162))

(declare-fun res!414162 () Bool)

(assert (=> d!279297 (=> (not res!414162) (not e!594162))))

(declare-fun lt!336580 () Regex!2426)

(assert (=> d!279297 (= res!414162 (validRegex!895 lt!336580))))

(declare-fun e!594159 () Regex!2426)

(assert (=> d!279297 (= lt!336580 e!594159)))

(assert (=> d!279297 (= c!147536 (and (is-Concat!4259 (regOne!5364 r!15766)) (is-EmptyExpr!2426 (regOne!5364 (regOne!5364 r!15766)))))))

(assert (=> d!279297 (validRegex!895 (regOne!5364 r!15766))))

(assert (=> d!279297 (= (removeUselessConcat!111 (regOne!5364 r!15766)) lt!336580)))

(declare-fun b!910727 () Bool)

(assert (=> b!910727 (= e!594158 (regOne!5364 r!15766))))

(declare-fun bm!54718 () Bool)

(declare-fun call!54725 () Regex!2426)

(assert (=> bm!54718 (= call!54725 call!54724)))

(declare-fun b!910728 () Bool)

(declare-fun e!594160 () Regex!2426)

(assert (=> b!910728 (= e!594159 e!594160)))

(assert (=> b!910728 (= c!147538 (and (is-Concat!4259 (regOne!5364 r!15766)) (is-EmptyExpr!2426 (regTwo!5364 (regOne!5364 r!15766)))))))

(declare-fun b!910729 () Bool)

(assert (=> b!910729 (= c!147535 (is-Concat!4259 (regOne!5364 r!15766)))))

(declare-fun e!594161 () Regex!2426)

(assert (=> b!910729 (= e!594160 e!594161)))

(declare-fun bm!54719 () Bool)

(declare-fun call!54722 () Regex!2426)

(assert (=> bm!54719 (= call!54723 call!54722)))

(declare-fun b!910730 () Bool)

(assert (=> b!910730 (= e!594159 call!54721)))

(declare-fun bm!54720 () Bool)

(assert (=> bm!54720 (= call!54722 call!54721)))

(declare-fun b!910731 () Bool)

(assert (=> b!910731 (= e!594162 (= (nullable!656 lt!336580) (nullable!656 (regOne!5364 r!15766))))))

(declare-fun b!910732 () Bool)

(assert (=> b!910732 (= e!594163 (Union!2426 call!54725 call!54723))))

(declare-fun b!910733 () Bool)

(assert (=> b!910733 (= e!594161 (Concat!4259 call!54725 call!54722))))

(declare-fun b!910734 () Bool)

(assert (=> b!910734 (= e!594160 call!54724)))

(declare-fun b!910735 () Bool)

(assert (=> b!910735 (= e!594161 e!594163)))

(assert (=> b!910735 (= c!147534 (is-Union!2426 (regOne!5364 r!15766)))))

(assert (= (and d!279297 c!147536) b!910730))

(assert (= (and d!279297 (not c!147536)) b!910728))

(assert (= (and b!910728 c!147538) b!910734))

(assert (= (and b!910728 (not c!147538)) b!910729))

(assert (= (and b!910729 c!147535) b!910733))

(assert (= (and b!910729 (not c!147535)) b!910735))

(assert (= (and b!910735 c!147534) b!910732))

(assert (= (and b!910735 (not c!147534)) b!910726))

(assert (= (and b!910726 c!147537) b!910725))

(assert (= (and b!910726 (not c!147537)) b!910727))

(assert (= (or b!910732 b!910725) bm!54719))

(assert (= (or b!910733 bm!54719) bm!54720))

(assert (= (or b!910733 b!910732) bm!54718))

(assert (= (or b!910734 bm!54718) bm!54716))

(assert (= (or b!910730 bm!54720) bm!54717))

(assert (= (and d!279297 res!414162) b!910731))

(declare-fun m!1143183 () Bool)

(assert (=> bm!54716 m!1143183))

(declare-fun m!1143185 () Bool)

(assert (=> bm!54717 m!1143185))

(declare-fun m!1143187 () Bool)

(assert (=> d!279297 m!1143187))

(assert (=> d!279297 m!1143071))

(declare-fun m!1143189 () Bool)

(assert (=> b!910731 m!1143189))

(assert (=> b!910731 m!1143173))

(assert (=> b!910426 d!279297))

(declare-fun e!594166 () Bool)

(assert (=> b!910428 (= tp!284766 e!594166)))

(declare-fun b!910747 () Bool)

(declare-fun tp!284798 () Bool)

(declare-fun tp!284799 () Bool)

(assert (=> b!910747 (= e!594166 (and tp!284798 tp!284799))))

(declare-fun b!910746 () Bool)

(assert (=> b!910746 (= e!594166 tp_is_empty!4495)))

(declare-fun b!910749 () Bool)

(declare-fun tp!284797 () Bool)

(declare-fun tp!284795 () Bool)

(assert (=> b!910749 (= e!594166 (and tp!284797 tp!284795))))

(declare-fun b!910748 () Bool)

(declare-fun tp!284796 () Bool)

(assert (=> b!910748 (= e!594166 tp!284796)))

(assert (= (and b!910428 (is-ElementMatch!2426 (regOne!5365 r!15766))) b!910746))

(assert (= (and b!910428 (is-Concat!4259 (regOne!5365 r!15766))) b!910747))

(assert (= (and b!910428 (is-Star!2426 (regOne!5365 r!15766))) b!910748))

(assert (= (and b!910428 (is-Union!2426 (regOne!5365 r!15766))) b!910749))

(declare-fun e!594167 () Bool)

(assert (=> b!910428 (= tp!284763 e!594167)))

(declare-fun b!910751 () Bool)

(declare-fun tp!284803 () Bool)

(declare-fun tp!284804 () Bool)

(assert (=> b!910751 (= e!594167 (and tp!284803 tp!284804))))

(declare-fun b!910750 () Bool)

(assert (=> b!910750 (= e!594167 tp_is_empty!4495)))

(declare-fun b!910753 () Bool)

(declare-fun tp!284802 () Bool)

(declare-fun tp!284800 () Bool)

(assert (=> b!910753 (= e!594167 (and tp!284802 tp!284800))))

(declare-fun b!910752 () Bool)

(declare-fun tp!284801 () Bool)

(assert (=> b!910752 (= e!594167 tp!284801)))

(assert (= (and b!910428 (is-ElementMatch!2426 (regTwo!5365 r!15766))) b!910750))

(assert (= (and b!910428 (is-Concat!4259 (regTwo!5365 r!15766))) b!910751))

(assert (= (and b!910428 (is-Star!2426 (regTwo!5365 r!15766))) b!910752))

(assert (= (and b!910428 (is-Union!2426 (regTwo!5365 r!15766))) b!910753))

(declare-fun e!594168 () Bool)

(assert (=> b!910427 (= tp!284761 e!594168)))

(declare-fun b!910755 () Bool)

(declare-fun tp!284808 () Bool)

(declare-fun tp!284809 () Bool)

(assert (=> b!910755 (= e!594168 (and tp!284808 tp!284809))))

(declare-fun b!910754 () Bool)

(assert (=> b!910754 (= e!594168 tp_is_empty!4495)))

(declare-fun b!910757 () Bool)

(declare-fun tp!284807 () Bool)

(declare-fun tp!284805 () Bool)

(assert (=> b!910757 (= e!594168 (and tp!284807 tp!284805))))

(declare-fun b!910756 () Bool)

(declare-fun tp!284806 () Bool)

(assert (=> b!910756 (= e!594168 tp!284806)))

(assert (= (and b!910427 (is-ElementMatch!2426 (regOne!5364 r!15766))) b!910754))

(assert (= (and b!910427 (is-Concat!4259 (regOne!5364 r!15766))) b!910755))

(assert (= (and b!910427 (is-Star!2426 (regOne!5364 r!15766))) b!910756))

(assert (= (and b!910427 (is-Union!2426 (regOne!5364 r!15766))) b!910757))

(declare-fun e!594169 () Bool)

(assert (=> b!910427 (= tp!284764 e!594169)))

(declare-fun b!910759 () Bool)

(declare-fun tp!284813 () Bool)

(declare-fun tp!284814 () Bool)

(assert (=> b!910759 (= e!594169 (and tp!284813 tp!284814))))

(declare-fun b!910758 () Bool)

(assert (=> b!910758 (= e!594169 tp_is_empty!4495)))

(declare-fun b!910761 () Bool)

(declare-fun tp!284812 () Bool)

(declare-fun tp!284810 () Bool)

(assert (=> b!910761 (= e!594169 (and tp!284812 tp!284810))))

(declare-fun b!910760 () Bool)

(declare-fun tp!284811 () Bool)

(assert (=> b!910760 (= e!594169 tp!284811)))

(assert (= (and b!910427 (is-ElementMatch!2426 (regTwo!5364 r!15766))) b!910758))

(assert (= (and b!910427 (is-Concat!4259 (regTwo!5364 r!15766))) b!910759))

(assert (= (and b!910427 (is-Star!2426 (regTwo!5364 r!15766))) b!910760))

(assert (= (and b!910427 (is-Union!2426 (regTwo!5364 r!15766))) b!910761))

(declare-fun b!910770 () Bool)

(declare-fun e!594174 () Bool)

(declare-fun tp!284817 () Bool)

(assert (=> b!910770 (= e!594174 (and tp_is_empty!4495 tp!284817))))

(assert (=> b!910430 (= tp!284762 e!594174)))

(assert (= (and b!910430 (is-Cons!9640 (t!100702 s!10566))) b!910770))

(declare-fun e!594175 () Bool)

(assert (=> b!910431 (= tp!284765 e!594175)))

(declare-fun b!910772 () Bool)

(declare-fun tp!284821 () Bool)

(declare-fun tp!284822 () Bool)

(assert (=> b!910772 (= e!594175 (and tp!284821 tp!284822))))

(declare-fun b!910771 () Bool)

(assert (=> b!910771 (= e!594175 tp_is_empty!4495)))

(declare-fun b!910774 () Bool)

(declare-fun tp!284820 () Bool)

(declare-fun tp!284818 () Bool)

(assert (=> b!910774 (= e!594175 (and tp!284820 tp!284818))))

(declare-fun b!910773 () Bool)

(declare-fun tp!284819 () Bool)

(assert (=> b!910773 (= e!594175 tp!284819)))

(assert (= (and b!910431 (is-ElementMatch!2426 (reg!2755 r!15766))) b!910771))

(assert (= (and b!910431 (is-Concat!4259 (reg!2755 r!15766))) b!910772))

(assert (= (and b!910431 (is-Star!2426 (reg!2755 r!15766))) b!910773))

(assert (= (and b!910431 (is-Union!2426 (reg!2755 r!15766))) b!910774))

(push 1)

(assert (not bm!54716))

(assert (not b!910670))

(assert (not bm!54700))

(assert (not d!279249))

(assert (not b!910671))

(assert (not b!910588))

(assert (not d!279293))

(assert (not d!279297))

(assert (not b!910625))

(assert (not bm!54688))

(assert (not b!910697))

(assert (not d!279261))

(assert (not d!279289))

(assert tp_is_empty!4495)

(assert (not b!910498))

(assert (not b!910731))

(assert (not bm!54691))

(assert (not b!910620))

(assert (not b!910749))

(assert (not b!910760))

(assert (not d!279295))

(assert (not b!910761))

(assert (not b!910501))

(assert (not bm!54699))

(assert (not bm!54687))

(assert (not bm!54717))

(assert (not b!910661))

(assert (not d!279263))

(assert (not bm!54703))

(assert (not b!910502))

(assert (not b!910753))

(assert (not d!279265))

(assert (not b!910756))

(assert (not bm!54701))

(assert (not b!910693))

(assert (not b!910752))

(assert (not bm!54704))

(assert (not b!910665))

(assert (not b!910748))

(assert (not b!910684))

(assert (not b!910694))

(assert (not b!910619))

(assert (not d!279279))

(assert (not b!910751))

(assert (not b!910674))

(assert (not d!279259))

(assert (not d!279255))

(assert (not b!910747))

(assert (not b!910755))

(assert (not b!910773))

(assert (not b!910629))

(assert (not b!910759))

(assert (not b!910626))

(assert (not bm!54705))

(assert (not b!910774))

(assert (not b!910688))

(assert (not b!910772))

(assert (not d!279275))

(assert (not b!910505))

(assert (not b!910757))

(assert (not b!910692))

(assert (not b!910669))

(assert (not b!910687))

(assert (not b!910585))

(assert (not b!910770))

(assert (not b!910504))

(assert (not b!910624))

(assert (not b!910664))

(assert (not b!910506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

