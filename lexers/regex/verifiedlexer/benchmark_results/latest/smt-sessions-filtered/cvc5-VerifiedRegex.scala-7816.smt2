; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410620 () Bool)

(assert start!410620)

(assert (=> start!410620 true))

(declare-fun b!4276172 () Bool)

(declare-fun e!2654861 () Bool)

(declare-datatypes ((List!47464 0))(
  ( (Nil!47340) (Cons!47340 (h!52760 (_ BitVec 16)) (t!353975 List!47464)) )
))
(declare-datatypes ((IArray!28649 0))(
  ( (IArray!28650 (innerList!14382 List!47464)) )
))
(declare-datatypes ((Conc!14322 0))(
  ( (Node!14322 (left!35256 Conc!14322) (right!35586 Conc!14322) (csize!28874 Int) (cheight!14533 Int)) (Leaf!22139 (xs!17628 IArray!28649) (csize!28875 Int)) (Empty!14322) )
))
(declare-datatypes ((BalanceConc!28154 0))(
  ( (BalanceConc!28155 (c!728206 Conc!14322)) )
))
(declare-fun x!743465 () BalanceConc!28154)

(declare-fun tp!1308587 () Bool)

(declare-fun inv!62625 (Conc!14322) Bool)

(assert (=> b!4276172 (= e!2654861 (and (inv!62625 (c!728206 x!743465)) tp!1308587))))

(declare-datatypes ((CommentValueInjection!28 0))(
  ( (CommentValueInjection!29) )
))
(declare-fun thiss!2788 () CommentValueInjection!28)

(declare-fun inst!1826 () Bool)

(declare-fun inv!62626 (BalanceConc!28154) Bool)

(declare-fun list!17239 (BalanceConc!28154) List!47464)

(declare-datatypes ((TokenValue!8295 0))(
  ( (FloatLiteralValue!16590 (text!58510 List!47464)) (TokenValueExt!8294 (__x!28741 Int)) (Broken!41475 (value!250295 List!47464)) (Object!8418) (End!8295) (Def!8295) (Underscore!8295) (Match!8295) (Else!8295) (Error!8295) (Case!8295) (If!8295) (Extends!8295) (Abstract!8295) (Class!8295) (Val!8295) (DelimiterValue!16590 (del!8355 List!47464)) (KeywordValue!8301 (value!250296 List!47464)) (CommentValue!16590 (value!250297 List!47464)) (WhitespaceValue!16590 (value!250298 List!47464)) (IndentationValue!8295 (value!250299 List!47464)) (String!55362) (Int32!8295) (Broken!41476 (value!250300 List!47464)) (Boolean!8296) (Unit!66287) (OperatorValue!8298 (op!8355 List!47464)) (IdentifierValue!16590 (value!250301 List!47464)) (IdentifierValue!16591 (value!250302 List!47464)) (WhitespaceValue!16591 (value!250303 List!47464)) (True!16590) (False!16590) (Broken!41477 (value!250304 List!47464)) (Broken!41478 (value!250305 List!47464)) (True!16591) (RightBrace!8295) (RightBracket!8295) (Colon!8295) (Null!8295) (Comma!8295) (LeftBracket!8295) (False!16591) (LeftBrace!8295) (ImaginaryLiteralValue!8295 (text!58511 List!47464)) (StringLiteralValue!24885 (value!250306 List!47464)) (EOFValue!8295 (value!250307 List!47464)) (IdentValue!8295 (value!250308 List!47464)) (DelimiterValue!16591 (value!250309 List!47464)) (DedentValue!8295 (value!250310 List!47464)) (NewLineValue!8295 (value!250311 List!47464)) (IntegerValue!24885 (value!250312 (_ BitVec 32)) (text!58512 List!47464)) (IntegerValue!24886 (value!250313 Int) (text!58513 List!47464)) (Times!8295) (Or!8295) (Equal!8295) (Minus!8295) (Broken!41479 (value!250314 List!47464)) (And!8295) (Div!8295) (LessEqual!8295) (Mod!8295) (Concat!21193) (Not!8295) (Plus!8295) (SpaceValue!8295 (value!250315 List!47464)) (IntegerValue!24887 (value!250316 Int) (text!58514 List!47464)) (StringLiteralValue!24886 (text!58515 List!47464)) (FloatLiteralValue!16591 (text!58516 List!47464)) (BytesLiteralValue!8295 (value!250317 List!47464)) (CommentValue!16591 (value!250318 List!47464)) (StringLiteralValue!24887 (value!250319 List!47464)) (ErrorTokenValue!8295 (msg!8356 List!47464)) )
))
(declare-fun toCharacters!14 (CommentValueInjection!28 TokenValue!8295) BalanceConc!28154)

(declare-fun toValue!21 (CommentValueInjection!28 BalanceConc!28154) TokenValue!8295)

(assert (=> start!410620 (= inst!1826 (=> (and (inv!62626 x!743465) e!2654861) (= (list!17239 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465))) (list!17239 x!743465))))))

(assert (= start!410620 b!4276172))

(declare-fun m!4871919 () Bool)

(assert (=> b!4276172 m!4871919))

(declare-fun m!4871921 () Bool)

(assert (=> start!410620 m!4871921))

(declare-fun m!4871923 () Bool)

(assert (=> start!410620 m!4871923))

(declare-fun m!4871925 () Bool)

(assert (=> start!410620 m!4871925))

(declare-fun m!4871927 () Bool)

(assert (=> start!410620 m!4871927))

(declare-fun m!4871929 () Bool)

(assert (=> start!410620 m!4871929))

(assert (=> start!410620 m!4871923))

(assert (=> start!410620 m!4871929))

(declare-fun bs!602263 () Bool)

(declare-fun neg-inst!1826 () Bool)

(declare-fun s!240444 () Bool)

(assert (= bs!602263 (and neg-inst!1826 s!240444)))

(assert (=> bs!602263 (=> true (= (list!17239 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465))) (list!17239 x!743465)))))

(assert (=> m!4871929 m!4871923))

(assert (=> m!4871929 m!4871925))

(assert (=> m!4871929 m!4871921))

(assert (=> m!4871929 s!240444))

(assert (=> m!4871921 s!240444))

(declare-fun bs!602264 () Bool)

(assert (= bs!602264 (and neg-inst!1826 start!410620)))

(assert (=> bs!602264 (= true inst!1826)))

(declare-fun lambda!131362 () Int)

(declare-fun Forall!1661 (Int) Bool)

(assert (=> start!410620 (= (Forall!1661 lambda!131362) inst!1826)))

(assert (=> start!410620 (not (Forall!1661 lambda!131362))))

(assert (=> start!410620 true))

(assert (= neg-inst!1826 inst!1826))

(declare-fun m!4871931 () Bool)

(assert (=> start!410620 m!4871931))

(assert (=> start!410620 m!4871931))

(push 1)

(assert (not b!4276172))

(assert (not bs!602263))

(assert (not start!410620))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262289 () Bool)

(declare-fun list!17241 (Conc!14322) List!47464)

(assert (=> d!1262289 (= (list!17239 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465))) (list!17241 (c!728206 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465)))))))

(declare-fun bs!602267 () Bool)

(assert (= bs!602267 d!1262289))

(declare-fun m!4871947 () Bool)

(assert (=> bs!602267 m!4871947))

(assert (=> bs!602263 d!1262289))

(declare-fun d!1262291 () Bool)

(declare-fun c!728211 () Bool)

(assert (=> d!1262291 (= c!728211 (is-CommentValue!16590 (toValue!21 thiss!2788 x!743465)))))

(declare-fun e!2654867 () BalanceConc!28154)

(assert (=> d!1262291 (= (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465)) e!2654867)))

(declare-fun b!4276182 () Bool)

(declare-fun seqFromList!5888 (List!47464) BalanceConc!28154)

(assert (=> b!4276182 (= e!2654867 (seqFromList!5888 (value!250297 (toValue!21 thiss!2788 x!743465))))))

(declare-fun b!4276183 () Bool)

(assert (=> b!4276183 (= e!2654867 (BalanceConc!28155 Empty!14322))))

(assert (= (and d!1262291 c!728211) b!4276182))

(assert (= (and d!1262291 (not c!728211)) b!4276183))

(declare-fun m!4871949 () Bool)

(assert (=> b!4276182 m!4871949))

(assert (=> bs!602263 d!1262291))

(declare-fun d!1262295 () Bool)

(declare-fun efficientList!577 (BalanceConc!28154) List!47464)

(assert (=> d!1262295 (= (toValue!21 thiss!2788 x!743465) (CommentValue!16590 (efficientList!577 x!743465)))))

(declare-fun bs!602269 () Bool)

(assert (= bs!602269 d!1262295))

(declare-fun m!4871953 () Bool)

(assert (=> bs!602269 m!4871953))

(assert (=> bs!602263 d!1262295))

(declare-fun d!1262299 () Bool)

(assert (=> d!1262299 (= (list!17239 x!743465) (list!17241 (c!728206 x!743465)))))

(declare-fun bs!602270 () Bool)

(assert (= bs!602270 d!1262299))

(declare-fun m!4871955 () Bool)

(assert (=> bs!602270 m!4871955))

(assert (=> bs!602263 d!1262299))

(push 1)

(assert (not d!1262289))

(assert (not d!1262299))

(assert (not d!1262295))

(assert (not b!4276182))

(assert (not start!410620))

(assert (not b!4276172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4276201 () Bool)

(declare-fun e!2654876 () List!47464)

(declare-fun ++!12090 (List!47464 List!47464) List!47464)

(assert (=> b!4276201 (= e!2654876 (++!12090 (list!17241 (left!35256 (c!728206 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465))))) (list!17241 (right!35586 (c!728206 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465)))))))))

(declare-fun b!4276199 () Bool)

(declare-fun e!2654875 () List!47464)

(assert (=> b!4276199 (= e!2654875 e!2654876)))

(declare-fun c!728221 () Bool)

(assert (=> b!4276199 (= c!728221 (is-Leaf!22139 (c!728206 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465)))))))

(declare-fun b!4276198 () Bool)

(assert (=> b!4276198 (= e!2654875 Nil!47340)))

(declare-fun b!4276200 () Bool)

(declare-fun list!17243 (IArray!28649) List!47464)

(assert (=> b!4276200 (= e!2654876 (list!17243 (xs!17628 (c!728206 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465))))))))

(declare-fun d!1262305 () Bool)

(declare-fun c!728220 () Bool)

(assert (=> d!1262305 (= c!728220 (is-Empty!14322 (c!728206 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465)))))))

(assert (=> d!1262305 (= (list!17241 (c!728206 (toCharacters!14 thiss!2788 (toValue!21 thiss!2788 x!743465)))) e!2654875)))

(assert (= (and d!1262305 c!728220) b!4276198))

(assert (= (and d!1262305 (not c!728220)) b!4276199))

(assert (= (and b!4276199 c!728221) b!4276200))

(assert (= (and b!4276199 (not c!728221)) b!4276201))

(declare-fun m!4871963 () Bool)

(assert (=> b!4276201 m!4871963))

(declare-fun m!4871965 () Bool)

(assert (=> b!4276201 m!4871965))

(assert (=> b!4276201 m!4871963))

(assert (=> b!4276201 m!4871965))

(declare-fun m!4871967 () Bool)

(assert (=> b!4276201 m!4871967))

(declare-fun m!4871969 () Bool)

(assert (=> b!4276200 m!4871969))

(assert (=> d!1262289 d!1262305))

(declare-fun d!1262307 () Bool)

(declare-fun lt!1513797 () List!47464)

(assert (=> d!1262307 (= lt!1513797 (list!17239 x!743465))))

(declare-fun efficientList!579 (Conc!14322 List!47464) List!47464)

(declare-fun efficientList$default$2!201 (Conc!14322) List!47464)

(assert (=> d!1262307 (= lt!1513797 (efficientList!579 (c!728206 x!743465) (efficientList$default$2!201 (c!728206 x!743465))))))

(assert (=> d!1262307 (= (efficientList!577 x!743465) lt!1513797)))

(declare-fun bs!602273 () Bool)

(assert (= bs!602273 d!1262307))

(assert (=> bs!602273 m!4871921))

(declare-fun m!4871971 () Bool)

(assert (=> bs!602273 m!4871971))

(assert (=> bs!602273 m!4871971))

(declare-fun m!4871973 () Bool)

(assert (=> bs!602273 m!4871973))

(assert (=> d!1262295 d!1262307))

(declare-fun b!4276205 () Bool)

(declare-fun e!2654878 () List!47464)

(assert (=> b!4276205 (= e!2654878 (++!12090 (list!17241 (left!35256 (c!728206 x!743465))) (list!17241 (right!35586 (c!728206 x!743465)))))))

(declare-fun b!4276203 () Bool)

(declare-fun e!2654877 () List!47464)

(assert (=> b!4276203 (= e!2654877 e!2654878)))

(declare-fun c!728223 () Bool)

(assert (=> b!4276203 (= c!728223 (is-Leaf!22139 (c!728206 x!743465)))))

(declare-fun b!4276202 () Bool)

(assert (=> b!4276202 (= e!2654877 Nil!47340)))

(declare-fun b!4276204 () Bool)

(assert (=> b!4276204 (= e!2654878 (list!17243 (xs!17628 (c!728206 x!743465))))))

(declare-fun d!1262309 () Bool)

(declare-fun c!728222 () Bool)

(assert (=> d!1262309 (= c!728222 (is-Empty!14322 (c!728206 x!743465)))))

(assert (=> d!1262309 (= (list!17241 (c!728206 x!743465)) e!2654877)))

(assert (= (and d!1262309 c!728222) b!4276202))

(assert (= (and d!1262309 (not c!728222)) b!4276203))

(assert (= (and b!4276203 c!728223) b!4276204))

(assert (= (and b!4276203 (not c!728223)) b!4276205))

(declare-fun m!4871975 () Bool)

(assert (=> b!4276205 m!4871975))

(declare-fun m!4871977 () Bool)

(assert (=> b!4276205 m!4871977))

(assert (=> b!4276205 m!4871975))

(assert (=> b!4276205 m!4871977))

(declare-fun m!4871979 () Bool)

(assert (=> b!4276205 m!4871979))

(declare-fun m!4871981 () Bool)

(assert (=> b!4276204 m!4871981))

(assert (=> d!1262299 d!1262309))

(push 1)

(assert (not b!4276201))

(assert (not b!4276200))

(assert (not d!1262307))

(assert (not start!410620))

(assert (not b!4276182))

(assert (not b!4276204))

(assert (not b!4276205))

(assert (not b!4276172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1262317 () Bool)

(declare-fun fromListB!2672 (List!47464) BalanceConc!28154)

(assert (=> d!1262317 (= (seqFromList!5888 (value!250297 (toValue!21 thiss!2788 x!743465))) (fromListB!2672 (value!250297 (toValue!21 thiss!2788 x!743465))))))

(declare-fun bs!602275 () Bool)

(assert (= bs!602275 d!1262317))

(declare-fun m!4872003 () Bool)

(assert (=> bs!602275 m!4872003))

(assert (=> b!4276182 d!1262317))

(declare-fun d!1262319 () Bool)

(declare-fun c!728234 () Bool)

(assert (=> d!1262319 (= c!728234 (is-Node!14322 (c!728206 x!743465)))))

(declare-fun e!2654891 () Bool)

(assert (=> d!1262319 (= (inv!62625 (c!728206 x!743465)) e!2654891)))

(declare-fun b!4276228 () Bool)

(declare-fun inv!62629 (Conc!14322) Bool)

(assert (=> b!4276228 (= e!2654891 (inv!62629 (c!728206 x!743465)))))

(declare-fun b!4276229 () Bool)

(declare-fun e!2654892 () Bool)

(assert (=> b!4276229 (= e!2654891 e!2654892)))

(declare-fun res!1755938 () Bool)

(assert (=> b!4276229 (= res!1755938 (not (is-Leaf!22139 (c!728206 x!743465))))))

(assert (=> b!4276229 (=> res!1755938 e!2654892)))

(declare-fun b!4276230 () Bool)

(declare-fun inv!62630 (Conc!14322) Bool)

(assert (=> b!4276230 (= e!2654892 (inv!62630 (c!728206 x!743465)))))

(assert (= (and d!1262319 c!728234) b!4276228))

(assert (= (and d!1262319 (not c!728234)) b!4276229))

(assert (= (and b!4276229 (not res!1755938)) b!4276230))

(declare-fun m!4872005 () Bool)

(assert (=> b!4276228 m!4872005))

(declare-fun m!4872007 () Bool)

(assert (=> b!4276230 m!4872007))

(assert (=> b!4276172 d!1262319))

(assert (=> d!1262307 d!1262299))

(declare-fun b!4276243 () Bool)

(declare-datatypes ((Unit!66289 0))(
  ( (Unit!66290) )
))
(declare-fun lt!1513813 () Unit!66289)

(declare-fun lt!1513814 () Unit!66289)

(assert (=> b!4276243 (= lt!1513813 lt!1513814)))

(declare-fun lt!1513815 () List!47464)

(declare-fun lt!1513811 () List!47464)

(declare-fun call!294244 () List!47464)

(assert (=> b!4276243 (= (++!12090 call!294244 (efficientList$default$2!201 (c!728206 x!743465))) (++!12090 lt!1513811 (++!12090 lt!1513815 (efficientList$default$2!201 (c!728206 x!743465)))))))

(declare-fun lemmaConcatAssociativity!2725 (List!47464 List!47464 List!47464) Unit!66289)

(assert (=> b!4276243 (= lt!1513814 (lemmaConcatAssociativity!2725 lt!1513811 lt!1513815 (efficientList$default$2!201 (c!728206 x!743465))))))

(assert (=> b!4276243 (= lt!1513815 (list!17241 (right!35586 (c!728206 x!743465))))))

(assert (=> b!4276243 (= lt!1513811 (list!17241 (left!35256 (c!728206 x!743465))))))

(declare-fun e!2654901 () List!47464)

(assert (=> b!4276243 (= e!2654901 (efficientList!579 (left!35256 (c!728206 x!743465)) (efficientList!579 (right!35586 (c!728206 x!743465)) (efficientList$default$2!201 (c!728206 x!743465)))))))

(declare-fun bm!294239 () Bool)

(declare-fun c!728241 () Bool)

(declare-fun c!728243 () Bool)

(assert (=> bm!294239 (= c!728241 c!728243)))

(declare-fun e!2654899 () List!47464)

(assert (=> bm!294239 (= call!294244 (++!12090 e!2654899 (ite c!728243 (efficientList$default$2!201 (c!728206 x!743465)) lt!1513815)))))

(declare-fun b!4276244 () Bool)

(assert (=> b!4276244 (= e!2654899 lt!1513811)))

(declare-fun b!4276245 () Bool)

(declare-fun e!2654900 () List!47464)

(assert (=> b!4276245 (= e!2654900 e!2654901)))

(assert (=> b!4276245 (= c!728243 (is-Leaf!22139 (c!728206 x!743465)))))

(declare-fun d!1262321 () Bool)

(declare-fun lt!1513812 () List!47464)

(assert (=> d!1262321 (= lt!1513812 (++!12090 (list!17241 (c!728206 x!743465)) (efficientList$default$2!201 (c!728206 x!743465))))))

(assert (=> d!1262321 (= lt!1513812 e!2654900)))

(declare-fun c!728242 () Bool)

(assert (=> d!1262321 (= c!728242 (is-Empty!14322 (c!728206 x!743465)))))

(assert (=> d!1262321 (= (efficientList!579 (c!728206 x!743465) (efficientList$default$2!201 (c!728206 x!743465))) lt!1513812)))

(declare-fun b!4276246 () Bool)

(declare-fun efficientList!581 (IArray!28649) List!47464)

(assert (=> b!4276246 (= e!2654899 (efficientList!581 (xs!17628 (c!728206 x!743465))))))

(declare-fun b!4276247 () Bool)

(assert (=> b!4276247 (= e!2654900 (efficientList$default$2!201 (c!728206 x!743465)))))

(declare-fun b!4276248 () Bool)

(assert (=> b!4276248 (= e!2654901 call!294244)))

(assert (= (and d!1262321 c!728242) b!4276247))

(assert (= (and d!1262321 (not c!728242)) b!4276245))

(assert (= (and b!4276245 c!728243) b!4276248))

(assert (= (and b!4276245 (not c!728243)) b!4276243))

(assert (= (or b!4276248 b!4276243) bm!294239))

(assert (= (and bm!294239 c!728241) b!4276246))

(assert (= (and bm!294239 (not c!728241)) b!4276244))

(declare-fun m!4872009 () Bool)

(assert (=> b!4276243 m!4872009))

(declare-fun m!4872011 () Bool)

(assert (=> b!4276243 m!4872011))

(assert (=> b!4276243 m!4871971))

(declare-fun m!4872013 () Bool)

(assert (=> b!4276243 m!4872013))

(assert (=> b!4276243 m!4871975))

(assert (=> b!4276243 m!4871977))

(declare-fun m!4872015 () Bool)

(assert (=> b!4276243 m!4872015))

(declare-fun m!4872017 () Bool)

(assert (=> b!4276243 m!4872017))

(assert (=> b!4276243 m!4871971))

(declare-fun m!4872019 () Bool)

(assert (=> b!4276243 m!4872019))

(assert (=> b!4276243 m!4871971))

(assert (=> b!4276243 m!4872015))

(assert (=> b!4276243 m!4871971))

(assert (=> b!4276243 m!4872009))

(declare-fun m!4872021 () Bool)

(assert (=> bm!294239 m!4872021))

(assert (=> d!1262321 m!4871955))

(assert (=> d!1262321 m!4871955))

(assert (=> d!1262321 m!4871971))

(declare-fun m!4872023 () Bool)

(assert (=> d!1262321 m!4872023))

(declare-fun m!4872025 () Bool)

(assert (=> b!4276246 m!4872025))

(assert (=> d!1262307 d!1262321))

(declare-fun d!1262323 () Bool)

(assert (=> d!1262323 (= (efficientList$default$2!201 (c!728206 x!743465)) Nil!47340)))

(assert (=> d!1262307 d!1262323))

(declare-fun d!1262325 () Bool)

(declare-fun choose!26075 (Int) Bool)

(assert (=> d!1262325 (= (Forall!1661 lambda!131362) (choose!26075 lambda!131362))))

(declare-fun bs!602276 () Bool)

(assert (= bs!602276 d!1262325))

(declare-fun m!4872027 () Bool)

(assert (=> bs!602276 m!4872027))

(assert (=> start!410620 d!1262325))

(assert (=> start!410620 d!1262295))

(assert (=> start!410620 d!1262299))

(declare-fun d!1262327 () Bool)

(declare-fun isBalanced!3864 (Conc!14322) Bool)

(assert (=> d!1262327 (= (inv!62626 x!743465) (isBalanced!3864 (c!728206 x!743465)))))

(declare-fun bs!602277 () Bool)

(assert (= bs!602277 d!1262327))

(declare-fun m!4872029 () Bool)

(assert (=> bs!602277 m!4872029))

(assert (=> start!410620 d!1262327))

(assert (=> start!410620 d!1262291))

(assert (=> start!410620 d!1262289))

(declare-fun e!2654906 () Bool)

(declare-fun tp!1308595 () Bool)

(declare-fun tp!1308596 () Bool)

(declare-fun b!4276255 () Bool)

(assert (=> b!4276255 (= e!2654906 (and (inv!62625 (left!35256 (c!728206 x!743465))) tp!1308595 (inv!62625 (right!35586 (c!728206 x!743465))) tp!1308596))))

(declare-fun b!4276256 () Bool)

(declare-fun inv!62631 (IArray!28649) Bool)

(assert (=> b!4276256 (= e!2654906 (inv!62631 (xs!17628 (c!728206 x!743465))))))

(assert (=> b!4276172 (= tp!1308587 (and (inv!62625 (c!728206 x!743465)) e!2654906))))

(assert (= (and b!4276172 (is-Node!14322 (c!728206 x!743465))) b!4276255))

(assert (= (and b!4276172 (is-Leaf!22139 (c!728206 x!743465))) b!4276256))

(declare-fun m!4872031 () Bool)

(assert (=> b!4276255 m!4872031))

(declare-fun m!4872033 () Bool)

(assert (=> b!4276255 m!4872033))

(declare-fun m!4872035 () Bool)

(assert (=> b!4276256 m!4872035))

(assert (=> b!4276172 m!4871919))

(push 1)

(assert (not d!1262327))

(assert (not b!4276201))

(assert (not b!4276200))

(assert (not b!4276246))

(assert (not d!1262325))

(assert (not b!4276230))

(assert (not d!1262317))

(assert (not d!1262321))

(assert (not b!4276204))

(assert (not b!4276256))

(assert (not b!4276228))

(assert (not b!4276255))

(assert (not bm!294239))

(assert (not b!4276205))

(assert (not b!4276172))

(assert (not b!4276243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4276301 () Bool)

(declare-fun e!2654934 () List!47464)

(assert (=> b!4276301 (= e!2654934 (Cons!47340 (h!52760 (list!17241 (c!728206 x!743465))) (++!12090 (t!353975 (list!17241 (c!728206 x!743465))) (efficientList$default$2!201 (c!728206 x!743465)))))))

(declare-fun b!4276302 () Bool)

(declare-fun res!1755946 () Bool)

(declare-fun e!2654933 () Bool)

(assert (=> b!4276302 (=> (not res!1755946) (not e!2654933))))

(declare-fun lt!1513833 () List!47464)

(declare-fun size!34655 (List!47464) Int)

(assert (=> b!4276302 (= res!1755946 (= (size!34655 lt!1513833) (+ (size!34655 (list!17241 (c!728206 x!743465))) (size!34655 (efficientList$default$2!201 (c!728206 x!743465))))))))

(declare-fun d!1262341 () Bool)

(assert (=> d!1262341 e!2654933))

(declare-fun res!1755947 () Bool)

(assert (=> d!1262341 (=> (not res!1755947) (not e!2654933))))

(declare-fun content!7482 (List!47464) (Set (_ BitVec 16)))

(assert (=> d!1262341 (= res!1755947 (= (content!7482 lt!1513833) (set.union (content!7482 (list!17241 (c!728206 x!743465))) (content!7482 (efficientList$default$2!201 (c!728206 x!743465))))))))

(assert (=> d!1262341 (= lt!1513833 e!2654934)))

(declare-fun c!728258 () Bool)

(assert (=> d!1262341 (= c!728258 (is-Nil!47340 (list!17241 (c!728206 x!743465))))))

(assert (=> d!1262341 (= (++!12090 (list!17241 (c!728206 x!743465)) (efficientList$default$2!201 (c!728206 x!743465))) lt!1513833)))

(declare-fun b!4276300 () Bool)

(assert (=> b!4276300 (= e!2654934 (efficientList$default$2!201 (c!728206 x!743465)))))

(declare-fun b!4276303 () Bool)

(assert (=> b!4276303 (= e!2654933 (or (not (= (efficientList$default$2!201 (c!728206 x!743465)) Nil!47340)) (= lt!1513833 (list!17241 (c!728206 x!743465)))))))

(assert (= (and d!1262341 c!728258) b!4276300))

(assert (= (and d!1262341 (not c!728258)) b!4276301))

(assert (= (and d!1262341 res!1755947) b!4276302))

(assert (= (and b!4276302 res!1755946) b!4276303))

(assert (=> b!4276301 m!4871971))

(declare-fun m!4872071 () Bool)

(assert (=> b!4276301 m!4872071))

(declare-fun m!4872073 () Bool)

(assert (=> b!4276302 m!4872073))

(assert (=> b!4276302 m!4871955))

(declare-fun m!4872075 () Bool)

(assert (=> b!4276302 m!4872075))

(assert (=> b!4276302 m!4871971))

(declare-fun m!4872077 () Bool)

(assert (=> b!4276302 m!4872077))

(declare-fun m!4872079 () Bool)

(assert (=> d!1262341 m!4872079))

(assert (=> d!1262341 m!4871955))

(declare-fun m!4872081 () Bool)

(assert (=> d!1262341 m!4872081))

(assert (=> d!1262341 m!4871971))

(declare-fun m!4872083 () Bool)

(assert (=> d!1262341 m!4872083))

(assert (=> d!1262321 d!1262341))

(assert (=> d!1262321 d!1262309))

(declare-fun d!1262343 () Bool)

(declare-fun e!2654937 () Bool)

(assert (=> d!1262343 e!2654937))

(declare-fun res!1755950 () Bool)

(assert (=> d!1262343 (=> (not res!1755950) (not e!2654937))))

(declare-fun lt!1513836 () BalanceConc!28154)

(assert (=> d!1262343 (= res!1755950 (= (list!17239 lt!1513836) (value!250297 (toValue!21 thiss!2788 x!743465))))))

(declare-fun fromList!930 (List!47464) Conc!14322)

(assert (=> d!1262343 (= lt!1513836 (BalanceConc!28155 (fromList!930 (value!250297 (toValue!21 thiss!2788 x!743465)))))))

(assert (=> d!1262343 (= (fromListB!2672 (value!250297 (toValue!21 thiss!2788 x!743465))) lt!1513836)))

(declare-fun b!4276306 () Bool)

(assert (=> b!4276306 (= e!2654937 (isBalanced!3864 (fromList!930 (value!250297 (toValue!21 thiss!2788 x!743465)))))))

(assert (= (and d!1262343 res!1755950) b!4276306))

(declare-fun m!4872085 () Bool)

(assert (=> d!1262343 m!4872085))

(declare-fun m!4872087 () Bool)

(assert (=> d!1262343 m!4872087))

(assert (=> b!4276306 m!4872087))

(assert (=> b!4276306 m!4872087))

(declare-fun m!4872089 () Bool)

(assert (=> b!4276306 m!4872089))

(assert (=> d!1262317 d!1262343))

(push 1)

(assert (not d!1262327))

(assert (not b!4276201))

(assert (not b!4276200))

(assert (not d!1262341))

(assert (not b!4276246))

(assert (not d!1262325))

(assert (not b!4276230))

(assert (not b!4276306))

(assert (not b!4276204))

(assert (not b!4276256))

(assert (not b!4276301))

(assert (not b!4276302))

(assert (not d!1262343))

(assert (not b!4276228))

(assert (not b!4276255))

(assert (not bm!294239))

(assert (not b!4276205))

(assert (not b!4276172))

(assert (not b!4276243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

