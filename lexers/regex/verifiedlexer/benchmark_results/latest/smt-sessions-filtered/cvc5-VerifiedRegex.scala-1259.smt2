; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!65550 () Bool)

(assert start!65550)

(assert (=> start!65550 true))

(declare-fun b!685123 () Bool)

(assert (=> b!685123 true))

(assert (=> b!685123 true))

(declare-fun b!685124 () Bool)

(assert (=> b!685124 true))

(declare-fun b!685135 () Bool)

(declare-fun e!430197 () Bool)

(declare-datatypes ((List!7325 0))(
  ( (Nil!7311) (Cons!7311 (h!12712 (_ BitVec 16)) (t!87107 List!7325)) )
))
(declare-datatypes ((IArray!5207 0))(
  ( (IArray!5208 (innerList!2661 List!7325)) )
))
(declare-datatypes ((Conc!2603 0))(
  ( (Node!2603 (left!5930 Conc!2603) (right!6260 Conc!2603) (csize!5436 Int) (cheight!2814 Int)) (Leaf!3863 (xs!5252 IArray!5207) (csize!5437 Int)) (Empty!2603) )
))
(declare-datatypes ((BalanceConc!5218 0))(
  ( (BalanceConc!5219 (c!121171 Conc!2603)) )
))
(declare-fun x!150327 () BalanceConc!5218)

(declare-fun tp!203171 () Bool)

(declare-fun inv!9411 (Conc!2603) Bool)

(assert (=> b!685135 (= e!430197 (and (inv!9411 (c!121171 x!150327)) tp!203171))))

(declare-fun inst!460 () Bool)

(declare-datatypes ((SpaceValueInjection!20 0))(
  ( (SpaceValueInjection!21) )
))
(declare-fun thiss!4519 () SpaceValueInjection!20)

(declare-fun inv!9412 (BalanceConc!5218) Bool)

(declare-fun list!3093 (BalanceConc!5218) List!7325)

(declare-datatypes ((TokenValue!1520 0))(
  ( (FloatLiteralValue!3040 (text!11085 List!7325)) (TokenValueExt!1519 (__x!5179 Int)) (Broken!7600 (value!47717 List!7325)) (Object!1533) (End!1520) (Def!1520) (Underscore!1520) (Match!1520) (Else!1520) (Error!1520) (Case!1520) (If!1520) (Extends!1520) (Abstract!1520) (Class!1520) (Val!1520) (DelimiterValue!3040 (del!1580 List!7325)) (KeywordValue!1526 (value!47718 List!7325)) (CommentValue!3040 (value!47719 List!7325)) (WhitespaceValue!3040 (value!47720 List!7325)) (IndentationValue!1520 (value!47721 List!7325)) (String!9325) (Int32!1520) (Broken!7601 (value!47722 List!7325)) (Boolean!1521) (Unit!12608) (OperatorValue!1523 (op!1580 List!7325)) (IdentifierValue!3040 (value!47723 List!7325)) (IdentifierValue!3041 (value!47724 List!7325)) (WhitespaceValue!3041 (value!47725 List!7325)) (True!3040) (False!3040) (Broken!7602 (value!47726 List!7325)) (Broken!7603 (value!47727 List!7325)) (True!3041) (RightBrace!1520) (RightBracket!1520) (Colon!1520) (Null!1520) (Comma!1520) (LeftBracket!1520) (False!3041) (LeftBrace!1520) (ImaginaryLiteralValue!1520 (text!11086 List!7325)) (StringLiteralValue!4560 (value!47728 List!7325)) (EOFValue!1520 (value!47729 List!7325)) (IdentValue!1520 (value!47730 List!7325)) (DelimiterValue!3041 (value!47731 List!7325)) (DedentValue!1520 (value!47732 List!7325)) (NewLineValue!1520 (value!47733 List!7325)) (IntegerValue!4560 (value!47734 (_ BitVec 32)) (text!11087 List!7325)) (IntegerValue!4561 (value!47735 Int) (text!11088 List!7325)) (Times!1520) (Or!1520) (Equal!1520) (Minus!1520) (Broken!7604 (value!47736 List!7325)) (And!1520) (Div!1520) (LessEqual!1520) (Mod!1520) (Concat!3334) (Not!1520) (Plus!1520) (SpaceValue!1520 (value!47737 List!7325)) (IntegerValue!4562 (value!47738 Int) (text!11089 List!7325)) (StringLiteralValue!4561 (text!11090 List!7325)) (FloatLiteralValue!3041 (text!11091 List!7325)) (BytesLiteralValue!1520 (value!47739 List!7325)) (CommentValue!3041 (value!47740 List!7325)) (StringLiteralValue!4562 (value!47741 List!7325)) (ErrorTokenValue!1520 (msg!1581 List!7325)) )
))
(declare-fun toCharacters!19 (SpaceValueInjection!20 TokenValue!1520) BalanceConc!5218)

(declare-fun toValue!26 (SpaceValueInjection!20 BalanceConc!5218) TokenValue!1520)

(assert (=> start!65550 (= inst!460 (=> (and (inv!9412 x!150327) e!430197) (= (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (list!3093 x!150327))))))

(assert (= start!65550 b!685135))

(declare-fun m!941971 () Bool)

(assert (=> b!685135 m!941971))

(declare-fun m!941973 () Bool)

(assert (=> start!65550 m!941973))

(declare-fun m!941975 () Bool)

(assert (=> start!65550 m!941975))

(assert (=> start!65550 m!941975))

(declare-fun m!941977 () Bool)

(assert (=> start!65550 m!941977))

(declare-fun m!941979 () Bool)

(assert (=> start!65550 m!941979))

(assert (=> start!65550 m!941977))

(declare-fun m!941981 () Bool)

(assert (=> start!65550 m!941981))

(declare-fun res!311949 () Bool)

(declare-fun e!430198 () Bool)

(assert (=> b!685124 (=> res!311949 e!430198)))

(declare-fun x!150328 () BalanceConc!5218)

(declare-fun x!150329 () BalanceConc!5218)

(assert (=> b!685124 (= res!311949 (not (= (list!3093 x!150328) (list!3093 x!150329))))))

(declare-fun e!430199 () Bool)

(declare-fun e!430200 () Bool)

(declare-fun inst!461 () Bool)

(assert (=> b!685124 (= inst!461 (=> (and (inv!9412 x!150328) e!430200 (inv!9412 x!150329) e!430199) e!430198))))

(declare-fun b!685136 () Bool)

(assert (=> b!685136 (= e!430198 (= (toValue!26 thiss!4519 x!150328) (toValue!26 thiss!4519 x!150329)))))

(declare-fun b!685137 () Bool)

(declare-fun tp!203172 () Bool)

(assert (=> b!685137 (= e!430200 (and (inv!9411 (c!121171 x!150328)) tp!203172))))

(declare-fun b!685138 () Bool)

(declare-fun tp!203173 () Bool)

(assert (=> b!685138 (= e!430199 (and (inv!9411 (c!121171 x!150329)) tp!203173))))

(assert (= (and b!685124 (not res!311949)) b!685136))

(assert (= b!685124 b!685137))

(assert (= b!685124 b!685138))

(declare-fun m!941983 () Bool)

(assert (=> b!685124 m!941983))

(declare-fun m!941985 () Bool)

(assert (=> b!685124 m!941985))

(declare-fun m!941987 () Bool)

(assert (=> b!685124 m!941987))

(declare-fun m!941989 () Bool)

(assert (=> b!685124 m!941989))

(declare-fun m!941991 () Bool)

(assert (=> b!685136 m!941991))

(declare-fun m!941993 () Bool)

(assert (=> b!685136 m!941993))

(declare-fun m!941995 () Bool)

(assert (=> b!685137 m!941995))

(declare-fun m!941997 () Bool)

(assert (=> b!685138 m!941997))

(declare-fun bs!131255 () Bool)

(declare-fun neg-inst!461 () Bool)

(declare-fun s!77675 () Bool)

(assert (= bs!131255 (and neg-inst!461 s!77675)))

(assert (=> bs!131255 (=> true (= (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (list!3093 x!150327)))))

(assert (=> m!941975 m!941977))

(assert (=> m!941975 m!941981))

(assert (=> m!941975 m!941973))

(assert (=> m!941975 s!77675))

(assert (=> m!941973 s!77675))

(declare-fun bs!131256 () Bool)

(assert (= bs!131256 (and neg-inst!461 start!65550)))

(assert (=> bs!131256 (= true inst!460)))

(declare-fun bs!131257 () Bool)

(declare-fun neg-inst!460 () Bool)

(declare-fun s!77677 () Bool)

(assert (= bs!131257 (and neg-inst!460 s!77677)))

(declare-fun res!311950 () Bool)

(declare-fun e!430201 () Bool)

(assert (=> bs!131257 (=> res!311950 e!430201)))

(assert (=> bs!131257 (= res!311950 (not (= (list!3093 x!150329) (list!3093 x!150329))))))

(assert (=> bs!131257 (=> true e!430201)))

(declare-fun b!685139 () Bool)

(assert (=> b!685139 (= e!430201 (= (toValue!26 thiss!4519 x!150329) (toValue!26 thiss!4519 x!150329)))))

(assert (= (and bs!131257 (not res!311950)) b!685139))

(assert (=> m!941993 m!941985))

(assert (=> m!941993 m!941985))

(assert (=> m!941993 s!77677))

(assert (=> m!941993 s!77677))

(declare-fun bs!131258 () Bool)

(declare-fun s!77679 () Bool)

(assert (= bs!131258 (and neg-inst!460 s!77679)))

(declare-fun res!311951 () Bool)

(declare-fun e!430202 () Bool)

(assert (=> bs!131258 (=> res!311951 e!430202)))

(assert (=> bs!131258 (= res!311951 (not (= (list!3093 x!150329) (list!3093 x!150327))))))

(assert (=> bs!131258 (=> true e!430202)))

(declare-fun b!685140 () Bool)

(assert (=> b!685140 (= e!430202 (= (toValue!26 thiss!4519 x!150329) (toValue!26 thiss!4519 x!150327)))))

(assert (= (and bs!131258 (not res!311951)) b!685140))

(declare-fun bs!131259 () Bool)

(assert (= bs!131259 (and m!941975 m!941993)))

(assert (=> bs!131259 m!941985))

(assert (=> bs!131259 m!941973))

(assert (=> bs!131259 s!77679))

(declare-fun bs!131260 () Bool)

(declare-fun s!77681 () Bool)

(assert (= bs!131260 (and neg-inst!460 s!77681)))

(declare-fun res!311952 () Bool)

(declare-fun e!430203 () Bool)

(assert (=> bs!131260 (=> res!311952 e!430203)))

(assert (=> bs!131260 (= res!311952 (not (= (list!3093 x!150327) (list!3093 x!150327))))))

(assert (=> bs!131260 (=> true e!430203)))

(declare-fun b!685141 () Bool)

(assert (=> b!685141 (= e!430203 (= (toValue!26 thiss!4519 x!150327) (toValue!26 thiss!4519 x!150327)))))

(assert (= (and bs!131260 (not res!311952)) b!685141))

(assert (=> m!941975 m!941973))

(assert (=> m!941975 m!941973))

(assert (=> m!941975 s!77681))

(declare-fun bs!131261 () Bool)

(declare-fun s!77683 () Bool)

(assert (= bs!131261 (and neg-inst!460 s!77683)))

(declare-fun res!311953 () Bool)

(declare-fun e!430204 () Bool)

(assert (=> bs!131261 (=> res!311953 e!430204)))

(assert (=> bs!131261 (= res!311953 (not (= (list!3093 x!150327) (list!3093 x!150329))))))

(assert (=> bs!131261 (=> true e!430204)))

(declare-fun b!685142 () Bool)

(assert (=> b!685142 (= e!430204 (= (toValue!26 thiss!4519 x!150327) (toValue!26 thiss!4519 x!150329)))))

(assert (= (and bs!131261 (not res!311953)) b!685142))

(assert (=> bs!131259 m!941973))

(assert (=> bs!131259 m!941985))

(assert (=> bs!131259 s!77683))

(assert (=> m!941975 s!77681))

(declare-fun bs!131262 () Bool)

(declare-fun s!77685 () Bool)

(assert (= bs!131262 (and neg-inst!460 s!77685)))

(declare-fun res!311954 () Bool)

(declare-fun e!430205 () Bool)

(assert (=> bs!131262 (=> res!311954 e!430205)))

(assert (=> bs!131262 (= res!311954 (not (= (list!3093 x!150329) (list!3093 x!150328))))))

(assert (=> bs!131262 (=> true e!430205)))

(declare-fun b!685143 () Bool)

(assert (=> b!685143 (= e!430205 (= (toValue!26 thiss!4519 x!150329) (toValue!26 thiss!4519 x!150328)))))

(assert (= (and bs!131262 (not res!311954)) b!685143))

(declare-fun bs!131263 () Bool)

(assert (= bs!131263 (and m!941983 m!941993)))

(assert (=> bs!131263 m!941985))

(assert (=> bs!131263 m!941983))

(assert (=> bs!131263 s!77685))

(declare-fun bs!131264 () Bool)

(declare-fun s!77687 () Bool)

(assert (= bs!131264 (and neg-inst!460 s!77687)))

(declare-fun res!311955 () Bool)

(declare-fun e!430206 () Bool)

(assert (=> bs!131264 (=> res!311955 e!430206)))

(assert (=> bs!131264 (= res!311955 (not (= (list!3093 x!150327) (list!3093 x!150328))))))

(assert (=> bs!131264 (=> true e!430206)))

(declare-fun b!685144 () Bool)

(assert (=> b!685144 (= e!430206 (= (toValue!26 thiss!4519 x!150327) (toValue!26 thiss!4519 x!150328)))))

(assert (= (and bs!131264 (not res!311955)) b!685144))

(declare-fun bs!131265 () Bool)

(assert (= bs!131265 (and m!941983 m!941975)))

(assert (=> bs!131265 m!941973))

(assert (=> bs!131265 m!941983))

(assert (=> bs!131265 s!77687))

(declare-fun bs!131266 () Bool)

(declare-fun s!77689 () Bool)

(assert (= bs!131266 (and neg-inst!460 s!77689)))

(declare-fun res!311956 () Bool)

(declare-fun e!430207 () Bool)

(assert (=> bs!131266 (=> res!311956 e!430207)))

(assert (=> bs!131266 (= res!311956 (not (= (list!3093 x!150328) (list!3093 x!150328))))))

(assert (=> bs!131266 (=> true e!430207)))

(declare-fun b!685145 () Bool)

(assert (=> b!685145 (= e!430207 (= (toValue!26 thiss!4519 x!150328) (toValue!26 thiss!4519 x!150328)))))

(assert (= (and bs!131266 (not res!311956)) b!685145))

(assert (=> m!941983 s!77689))

(declare-fun bs!131267 () Bool)

(declare-fun s!77691 () Bool)

(assert (= bs!131267 (and neg-inst!460 s!77691)))

(declare-fun res!311957 () Bool)

(declare-fun e!430208 () Bool)

(assert (=> bs!131267 (=> res!311957 e!430208)))

(assert (=> bs!131267 (= res!311957 (not (= (list!3093 x!150328) (list!3093 x!150329))))))

(assert (=> bs!131267 (=> true e!430208)))

(declare-fun b!685146 () Bool)

(assert (=> b!685146 (= e!430208 (= (toValue!26 thiss!4519 x!150328) (toValue!26 thiss!4519 x!150329)))))

(assert (= (and bs!131267 (not res!311957)) b!685146))

(assert (=> bs!131263 m!941983))

(assert (=> bs!131263 m!941985))

(assert (=> bs!131263 s!77691))

(declare-fun bs!131268 () Bool)

(declare-fun s!77693 () Bool)

(assert (= bs!131268 (and neg-inst!460 s!77693)))

(declare-fun res!311958 () Bool)

(declare-fun e!430209 () Bool)

(assert (=> bs!131268 (=> res!311958 e!430209)))

(assert (=> bs!131268 (= res!311958 (not (= (list!3093 x!150328) (list!3093 x!150327))))))

(assert (=> bs!131268 (=> true e!430209)))

(declare-fun b!685147 () Bool)

(assert (=> b!685147 (= e!430209 (= (toValue!26 thiss!4519 x!150328) (toValue!26 thiss!4519 x!150327)))))

(assert (= (and bs!131268 (not res!311958)) b!685147))

(assert (=> bs!131265 m!941983))

(assert (=> bs!131265 m!941973))

(assert (=> bs!131265 s!77693))

(assert (=> m!941983 s!77689))

(declare-fun bs!131269 () Bool)

(assert (= bs!131269 (and m!941973 m!941993)))

(assert (=> bs!131269 s!77679))

(declare-fun bs!131270 () Bool)

(assert (= bs!131270 (and m!941973 m!941983)))

(assert (=> bs!131270 s!77693))

(declare-fun bs!131271 () Bool)

(assert (= bs!131271 (and m!941973 m!941975)))

(assert (=> bs!131271 s!77681))

(assert (=> m!941973 s!77681))

(assert (=> bs!131269 s!77683))

(assert (=> bs!131270 s!77687))

(assert (=> bs!131271 s!77681))

(assert (=> m!941973 s!77681))

(declare-fun bs!131272 () Bool)

(assert (= bs!131272 (and m!941985 m!941993)))

(assert (=> bs!131272 s!77677))

(declare-fun bs!131273 () Bool)

(assert (= bs!131273 (and m!941985 m!941983)))

(assert (=> bs!131273 s!77691))

(declare-fun bs!131274 () Bool)

(assert (= bs!131274 (and m!941985 m!941975 m!941973)))

(assert (=> bs!131274 s!77683))

(assert (=> m!941985 s!77677))

(assert (=> bs!131272 s!77677))

(assert (=> bs!131273 s!77685))

(assert (=> bs!131274 s!77679))

(assert (=> m!941985 s!77677))

(declare-fun bs!131275 () Bool)

(assert (= bs!131275 (and m!941991 m!941993 m!941985)))

(assert (=> bs!131275 s!77685))

(declare-fun bs!131276 () Bool)

(assert (= bs!131276 (and m!941991 m!941983)))

(assert (=> bs!131276 s!77689))

(declare-fun bs!131277 () Bool)

(assert (= bs!131277 (and m!941991 m!941975 m!941973)))

(assert (=> bs!131277 s!77687))

(assert (=> m!941991 s!77689))

(assert (=> bs!131275 s!77691))

(assert (=> bs!131276 s!77689))

(assert (=> bs!131277 s!77693))

(assert (=> m!941991 s!77689))

(declare-fun bs!131278 () Bool)

(declare-fun s!77695 () Bool)

(assert (= bs!131278 (and neg-inst!460 s!77695)))

(declare-fun res!311959 () Bool)

(declare-fun e!430210 () Bool)

(assert (=> bs!131278 (=> res!311959 e!430210)))

(assert (=> bs!131278 (= res!311959 (not (= (list!3093 x!150329) (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))))))))

(assert (=> bs!131278 (=> true e!430210)))

(declare-fun b!685148 () Bool)

(assert (=> b!685148 (= e!430210 (= (toValue!26 thiss!4519 x!150329) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327)))))))

(assert (= (and bs!131278 (not res!311959)) b!685148))

(declare-fun bs!131279 () Bool)

(assert (= bs!131279 (and m!941981 m!941993 m!941985)))

(assert (=> bs!131279 m!941985))

(assert (=> bs!131279 m!941981))

(assert (=> bs!131279 s!77695))

(declare-fun bs!131280 () Bool)

(declare-fun s!77697 () Bool)

(assert (= bs!131280 (and neg-inst!460 s!77697)))

(declare-fun res!311960 () Bool)

(declare-fun e!430211 () Bool)

(assert (=> bs!131280 (=> res!311960 e!430211)))

(assert (=> bs!131280 (= res!311960 (not (= (list!3093 x!150328) (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))))))))

(assert (=> bs!131280 (=> true e!430211)))

(declare-fun b!685149 () Bool)

(assert (=> b!685149 (= e!430211 (= (toValue!26 thiss!4519 x!150328) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327)))))))

(assert (= (and bs!131280 (not res!311960)) b!685149))

(declare-fun bs!131281 () Bool)

(assert (= bs!131281 (and m!941981 m!941983 m!941991)))

(assert (=> bs!131281 m!941983))

(assert (=> bs!131281 m!941981))

(assert (=> bs!131281 s!77697))

(declare-fun bs!131282 () Bool)

(declare-fun s!77699 () Bool)

(assert (= bs!131282 (and neg-inst!460 s!77699)))

(declare-fun res!311961 () Bool)

(declare-fun e!430212 () Bool)

(assert (=> bs!131282 (=> res!311961 e!430212)))

(assert (=> bs!131282 (= res!311961 (not (= (list!3093 x!150327) (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))))))))

(assert (=> bs!131282 (=> true e!430212)))

(declare-fun b!685150 () Bool)

(assert (=> b!685150 (= e!430212 (= (toValue!26 thiss!4519 x!150327) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327)))))))

(assert (= (and bs!131282 (not res!311961)) b!685150))

(declare-fun bs!131283 () Bool)

(assert (= bs!131283 (and m!941981 m!941975 m!941973)))

(assert (=> bs!131283 m!941973))

(assert (=> bs!131283 m!941981))

(assert (=> bs!131283 s!77699))

(declare-fun bs!131284 () Bool)

(declare-fun s!77701 () Bool)

(assert (= bs!131284 (and neg-inst!460 s!77701)))

(declare-fun res!311962 () Bool)

(declare-fun e!430213 () Bool)

(assert (=> bs!131284 (=> res!311962 e!430213)))

(assert (=> bs!131284 (= res!311962 (not (= (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))))))))

(assert (=> bs!131284 (=> true e!430213)))

(declare-fun b!685151 () Bool)

(assert (=> b!685151 (= e!430213 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327)))))))

(assert (= (and bs!131284 (not res!311962)) b!685151))

(assert (=> m!941981 s!77701))

(declare-fun bs!131285 () Bool)

(declare-fun s!77703 () Bool)

(assert (= bs!131285 (and neg-inst!460 s!77703)))

(declare-fun res!311963 () Bool)

(declare-fun e!430214 () Bool)

(assert (=> bs!131285 (=> res!311963 e!430214)))

(assert (=> bs!131285 (= res!311963 (not (= (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (list!3093 x!150329))))))

(assert (=> bs!131285 (=> true e!430214)))

(declare-fun b!685152 () Bool)

(assert (=> b!685152 (= e!430214 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (toValue!26 thiss!4519 x!150329)))))

(assert (= (and bs!131285 (not res!311963)) b!685152))

(assert (=> bs!131279 m!941981))

(assert (=> bs!131279 m!941985))

(assert (=> bs!131279 s!77703))

(declare-fun bs!131286 () Bool)

(declare-fun s!77705 () Bool)

(assert (= bs!131286 (and neg-inst!460 s!77705)))

(declare-fun res!311964 () Bool)

(declare-fun e!430215 () Bool)

(assert (=> bs!131286 (=> res!311964 e!430215)))

(assert (=> bs!131286 (= res!311964 (not (= (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (list!3093 x!150328))))))

(assert (=> bs!131286 (=> true e!430215)))

(declare-fun b!685153 () Bool)

(assert (=> b!685153 (= e!430215 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (toValue!26 thiss!4519 x!150328)))))

(assert (= (and bs!131286 (not res!311964)) b!685153))

(assert (=> bs!131281 m!941981))

(assert (=> bs!131281 m!941983))

(assert (=> bs!131281 s!77705))

(declare-fun bs!131287 () Bool)

(declare-fun s!77707 () Bool)

(assert (= bs!131287 (and neg-inst!460 s!77707)))

(declare-fun res!311965 () Bool)

(declare-fun e!430216 () Bool)

(assert (=> bs!131287 (=> res!311965 e!430216)))

(assert (=> bs!131287 (= res!311965 (not (= (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (list!3093 x!150327))))))

(assert (=> bs!131287 (=> true e!430216)))

(declare-fun b!685154 () Bool)

(assert (=> b!685154 (= e!430216 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (toValue!26 thiss!4519 x!150327)))))

(assert (= (and bs!131287 (not res!311965)) b!685154))

(assert (=> bs!131283 m!941981))

(assert (=> bs!131283 m!941973))

(assert (=> bs!131283 s!77707))

(assert (=> m!941981 s!77701))

(declare-fun bs!131288 () Bool)

(assert (= bs!131288 (and neg-inst!460 b!685124)))

(assert (=> bs!131288 (= true inst!461)))

(declare-fun res!311947 () Bool)

(declare-fun e!430193 () Bool)

(assert (=> start!65550 (=> res!311947 e!430193)))

(declare-fun lambda!21163 () Int)

(declare-fun Forall!350 (Int) Bool)

(assert (=> start!65550 (= res!311947 (not (Forall!350 lambda!21163)))))

(assert (=> start!65550 (= (Forall!350 lambda!21163) inst!460)))

(assert (=> start!65550 (not e!430193)))

(assert (=> start!65550 true))

(declare-fun b!685126 () Bool)

(declare-fun e!430196 () Bool)

(declare-fun lambda!21165 () Int)

(declare-fun lambda!21164 () Int)

(declare-datatypes ((TokenValueInjection!2776 0))(
  ( (TokenValueInjection!2777 (toValue!2426 Int) (toChars!2285 Int)) )
))
(declare-fun inv!9413 (TokenValueInjection!2776) Bool)

(assert (=> b!685126 (= e!430196 (inv!9413 (TokenValueInjection!2777 lambda!21165 lambda!21164)))))

(declare-fun b!685125 () Bool)

(declare-fun e!430195 () Bool)

(assert (=> b!685125 (= e!430195 e!430196)))

(declare-fun res!311948 () Bool)

(assert (=> b!685125 (=> res!311948 e!430196)))

(declare-fun equivClasses!538 (Int Int) Bool)

(assert (=> b!685125 (= res!311948 (not (equivClasses!538 lambda!21164 lambda!21165)))))

(declare-fun lambda!21166 () Int)

(declare-fun Forall2!268 (Int) Bool)

(assert (=> b!685125 (= (equivClasses!538 lambda!21164 lambda!21165) (Forall2!268 lambda!21166))))

(declare-fun e!430194 () Bool)

(assert (=> b!685123 (= e!430193 e!430194)))

(declare-fun res!311946 () Bool)

(assert (=> b!685123 (=> res!311946 e!430194)))

(declare-fun semiInverseModEq!563 (Int Int) Bool)

(assert (=> b!685123 (= res!311946 (not (semiInverseModEq!563 lambda!21164 lambda!21165)))))

(assert (=> b!685123 (= (semiInverseModEq!563 lambda!21164 lambda!21165) (Forall!350 lambda!21163))))

(assert (=> b!685124 (= e!430194 e!430195)))

(declare-fun res!311945 () Bool)

(assert (=> b!685124 (=> res!311945 e!430195)))

(assert (=> b!685124 (= res!311945 (not (Forall2!268 lambda!21166)))))

(assert (=> b!685124 (= (Forall2!268 lambda!21166) inst!461)))

(assert (= neg-inst!461 inst!460))

(assert (= (and start!65550 (not res!311947)) b!685123))

(assert (= (and b!685123 (not res!311946)) b!685124))

(assert (= neg-inst!460 inst!461))

(assert (= (and b!685124 (not res!311945)) b!685125))

(assert (= (and b!685125 (not res!311948)) b!685126))

(declare-fun m!941999 () Bool)

(assert (=> start!65550 m!941999))

(assert (=> start!65550 m!941999))

(declare-fun m!942001 () Bool)

(assert (=> b!685124 m!942001))

(assert (=> b!685124 m!942001))

(declare-fun m!942003 () Bool)

(assert (=> b!685123 m!942003))

(assert (=> b!685123 m!942003))

(assert (=> b!685123 m!941999))

(declare-fun m!942005 () Bool)

(assert (=> b!685125 m!942005))

(assert (=> b!685125 m!942005))

(assert (=> b!685125 m!942001))

(declare-fun m!942007 () Bool)

(assert (=> b!685126 m!942007))

(push 1)

(assert (not bs!131264))

(assert (not b!685151))

(assert (not bs!131261))

(assert (not b!685126))

(assert (not b!685138))

(assert (not bs!131255))

(assert (not bs!131267))

(assert (not b!685148))

(assert (not b!685125))

(assert (not bs!131286))

(assert (not bs!131284))

(assert (not b!685145))

(assert (not bs!131262))

(assert (not b!685144))

(assert (not bs!131260))

(assert (not b!685141))

(assert (not start!65550))

(assert (not bs!131280))

(assert (not b!685152))

(assert (not b!685139))

(assert (not b!685135))

(assert (not b!685149))

(assert (not b!685124))

(assert (not b!685123))

(assert (not b!685150))

(assert (not bs!131258))

(assert (not b!685146))

(assert (not bs!131257))

(assert (not b!685140))

(assert (not b!685142))

(assert (not bs!131287))

(assert (not bs!131282))

(assert (not b!685137))

(assert (not bs!131266))

(assert (not bs!131285))

(assert (not b!685154))

(assert (not b!685153))

(assert (not b!685136))

(assert (not bs!131268))

(assert (not b!685143))

(assert (not bs!131278))

(assert (not b!685147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!131322 () Bool)

(assert (= bs!131322 (and m!941993 b!685139)))

(assert (=> bs!131322 m!941993))

(assert (=> bs!131322 m!941993))

(declare-fun bs!131323 () Bool)

(assert (= bs!131323 (and m!941975 m!941993 b!685140)))

(assert (=> bs!131323 m!941993))

(assert (=> bs!131323 m!941975))

(declare-fun bs!131324 () Bool)

(assert (= bs!131324 (and m!941975 b!685141)))

(assert (=> bs!131324 m!941975))

(assert (=> bs!131324 m!941975))

(declare-fun bs!131325 () Bool)

(assert (= bs!131325 (and m!941975 m!941993 b!685142)))

(assert (=> bs!131325 m!941975))

(assert (=> bs!131325 m!941993))

(declare-fun bs!131326 () Bool)

(assert (= bs!131326 (and m!941983 m!941993 b!685143)))

(assert (=> bs!131326 m!941993))

(assert (=> bs!131326 m!941991))

(declare-fun bs!131327 () Bool)

(assert (= bs!131327 (and m!941983 m!941975 b!685144)))

(assert (=> bs!131327 m!941975))

(assert (=> bs!131327 m!941991))

(declare-fun bs!131328 () Bool)

(assert (= bs!131328 (and m!941983 b!685145)))

(assert (=> bs!131328 m!941991))

(assert (=> bs!131328 m!941991))

(declare-fun bs!131329 () Bool)

(assert (= bs!131329 (and m!941983 m!941993 b!685146)))

(assert (=> bs!131329 m!941991))

(assert (=> bs!131329 m!941993))

(declare-fun bs!131330 () Bool)

(assert (= bs!131330 (and m!941983 m!941975 b!685147)))

(assert (=> bs!131330 m!941991))

(assert (=> bs!131330 m!941975))

(declare-fun bs!131331 () Bool)

(assert (= bs!131331 (and m!941981 m!941993 m!941985 b!685148)))

(assert (=> bs!131331 m!941993))

(declare-fun m!942047 () Bool)

(assert (=> bs!131331 m!942047))

(declare-fun bs!131332 () Bool)

(assert (= bs!131332 (and m!941981 m!941983 m!941991 b!685149)))

(assert (=> bs!131332 m!941991))

(assert (=> bs!131332 m!942047))

(declare-fun bs!131333 () Bool)

(assert (= bs!131333 (and m!941981 m!941975 m!941973 b!685150)))

(assert (=> bs!131333 m!941975))

(assert (=> bs!131333 m!942047))

(declare-fun bs!131334 () Bool)

(assert (= bs!131334 (and m!941981 b!685151)))

(assert (=> bs!131334 m!942047))

(assert (=> bs!131334 m!942047))

(declare-fun bs!131335 () Bool)

(assert (= bs!131335 (and m!941981 m!941993 m!941985 b!685152)))

(assert (=> bs!131335 m!942047))

(assert (=> bs!131335 m!941993))

(declare-fun bs!131336 () Bool)

(assert (= bs!131336 (and m!941981 m!941983 m!941991 b!685153)))

(assert (=> bs!131336 m!942047))

(assert (=> bs!131336 m!941991))

(declare-fun bs!131337 () Bool)

(assert (= bs!131337 (and m!941981 m!941975 m!941973 b!685154)))

(assert (=> bs!131337 m!942047))

(assert (=> bs!131337 m!941975))

(push 1)

(assert (not bs!131264))

(assert (not b!685151))

(assert (not bs!131261))

(assert (not b!685126))

(assert (not b!685138))

(assert (not bs!131255))

(assert (not bs!131267))

(assert (not b!685148))

(assert (not b!685125))

(assert (not bs!131286))

(assert (not bs!131284))

(assert (not b!685145))

(assert (not bs!131262))

(assert (not b!685144))

(assert (not bs!131260))

(assert (not b!685141))

(assert (not start!65550))

(assert (not bs!131280))

(assert (not b!685152))

(assert (not b!685139))

(assert (not b!685135))

(assert (not b!685149))

(assert (not b!685124))

(assert (not b!685123))

(assert (not b!685150))

(assert (not bs!131258))

(assert (not b!685146))

(assert (not bs!131257))

(assert (not b!685140))

(assert (not b!685142))

(assert (not bs!131287))

(assert (not bs!131282))

(assert (not b!685137))

(assert (not bs!131266))

(assert (not bs!131285))

(assert (not b!685154))

(assert (not b!685153))

(assert (not b!685136))

(assert (not bs!131268))

(assert (not b!685143))

(assert (not bs!131278))

(assert (not b!685147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!231016 () Bool)

(declare-fun list!3096 (Conc!2603) List!7325)

(assert (=> d!231016 (= (list!3093 x!150328) (list!3096 (c!121171 x!150328)))))

(declare-fun bs!131362 () Bool)

(assert (= bs!131362 d!231016))

(declare-fun m!942067 () Bool)

(assert (=> bs!131362 m!942067))

(assert (=> bs!131268 d!231016))

(declare-fun d!231018 () Bool)

(assert (=> d!231018 (= (list!3093 x!150327) (list!3096 (c!121171 x!150327)))))

(declare-fun bs!131363 () Bool)

(assert (= bs!131363 d!231018))

(declare-fun m!942069 () Bool)

(assert (=> bs!131363 m!942069))

(assert (=> bs!131268 d!231018))

(assert (=> bs!131280 d!231016))

(declare-fun d!231020 () Bool)

(assert (=> d!231020 (= (list!3093 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (list!3096 (c!121171 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327)))))))

(declare-fun bs!131364 () Bool)

(assert (= bs!131364 d!231020))

(declare-fun m!942071 () Bool)

(assert (=> bs!131364 m!942071))

(assert (=> bs!131280 d!231020))

(declare-fun d!231022 () Bool)

(declare-fun efficientList!105 (BalanceConc!5218) List!7325)

(assert (=> d!231022 (= (toValue!26 thiss!4519 x!150329) (SpaceValue!1520 (efficientList!105 x!150329)))))

(declare-fun bs!131365 () Bool)

(assert (= bs!131365 d!231022))

(declare-fun m!942073 () Bool)

(assert (=> bs!131365 m!942073))

(assert (=> b!685140 d!231022))

(declare-fun d!231024 () Bool)

(assert (=> d!231024 (= (toValue!26 thiss!4519 x!150327) (SpaceValue!1520 (efficientList!105 x!150327)))))

(declare-fun bs!131366 () Bool)

(assert (= bs!131366 d!231024))

(declare-fun m!942075 () Bool)

(assert (=> bs!131366 m!942075))

(assert (=> b!685140 d!231024))

(declare-fun d!231026 () Bool)

(assert (=> d!231026 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327))) (SpaceValue!1520 (efficientList!105 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327)))))))

(declare-fun bs!131367 () Bool)

(assert (= bs!131367 d!231026))

(assert (=> bs!131367 m!941977))

(declare-fun m!942077 () Bool)

(assert (=> bs!131367 m!942077))

(assert (=> b!685152 d!231026))

(assert (=> b!685152 d!231022))

(assert (=> bs!131264 d!231018))

(assert (=> bs!131264 d!231016))

(declare-fun d!231028 () Bool)

(assert (=> d!231028 (= (toValue!26 thiss!4519 x!150328) (SpaceValue!1520 (efficientList!105 x!150328)))))

(declare-fun bs!131368 () Bool)

(assert (= bs!131368 d!231028))

(declare-fun m!942079 () Bool)

(assert (=> bs!131368 m!942079))

(assert (=> b!685147 d!231028))

(assert (=> b!685147 d!231024))

(assert (=> b!685149 d!231028))

(assert (=> b!685149 d!231026))

(assert (=> bs!131260 d!231018))

(assert (=> bs!131286 d!231020))

(assert (=> bs!131286 d!231016))

(assert (=> b!685144 d!231024))

(assert (=> b!685144 d!231028))

(assert (=> bs!131282 d!231018))

(assert (=> bs!131282 d!231020))

(assert (=> b!685141 d!231024))

(assert (=> b!685153 d!231026))

(assert (=> b!685153 d!231028))

(declare-fun d!231030 () Bool)

(declare-fun c!121175 () Bool)

(assert (=> d!231030 (= c!121175 (is-Node!2603 (c!121171 x!150327)))))

(declare-fun e!430269 () Bool)

(assert (=> d!231030 (= (inv!9411 (c!121171 x!150327)) e!430269)))

(declare-fun b!685217 () Bool)

(declare-fun inv!9417 (Conc!2603) Bool)

(assert (=> b!685217 (= e!430269 (inv!9417 (c!121171 x!150327)))))

(declare-fun b!685218 () Bool)

(declare-fun e!430270 () Bool)

(assert (=> b!685218 (= e!430269 e!430270)))

(declare-fun res!312013 () Bool)

(assert (=> b!685218 (= res!312013 (not (is-Leaf!3863 (c!121171 x!150327))))))

(assert (=> b!685218 (=> res!312013 e!430270)))

(declare-fun b!685219 () Bool)

(declare-fun inv!9418 (Conc!2603) Bool)

(assert (=> b!685219 (= e!430270 (inv!9418 (c!121171 x!150327)))))

(assert (= (and d!231030 c!121175) b!685217))

(assert (= (and d!231030 (not c!121175)) b!685218))

(assert (= (and b!685218 (not res!312013)) b!685219))

(declare-fun m!942081 () Bool)

(assert (=> b!685217 m!942081))

(declare-fun m!942083 () Bool)

(assert (=> b!685219 m!942083))

(assert (=> b!685135 d!231030))

(assert (=> bs!131255 d!231020))

(declare-fun d!231032 () Bool)

(declare-fun c!121179 () Bool)

(assert (=> d!231032 (= c!121179 (is-SpaceValue!1520 (toValue!26 thiss!4519 x!150327)))))

(declare-fun e!430273 () BalanceConc!5218)

(assert (=> d!231032 (= (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!150327)) e!430273)))

(declare-fun b!685224 () Bool)

(declare-fun seqFromList!1473 (List!7325) BalanceConc!5218)

(assert (=> b!685224 (= e!430273 (seqFromList!1473 (value!47737 (toValue!26 thiss!4519 x!150327))))))

(declare-fun b!685225 () Bool)

(assert (=> b!685225 (= e!430273 (BalanceConc!5219 Empty!2603))))

(assert (= (and d!231032 c!121179) b!685224))

(assert (= (and d!231032 (not c!121179)) b!685225))

(declare-fun m!942085 () Bool)

(assert (=> b!685224 m!942085))

(assert (=> bs!131255 d!231032))

(assert (=> bs!131255 d!231024))

(assert (=> bs!131255 d!231018))

(assert (=> bs!131266 d!231016))

(assert (=> b!685136 d!231028))

(assert (=> b!685136 d!231022))

(declare-fun d!231034 () Bool)

(declare-fun c!121180 () Bool)

(assert (=> d!231034 (= c!121180 (is-Node!2603 (c!121171 x!150328)))))

(declare-fun e!430274 () Bool)

(assert (=> d!231034 (= (inv!9411 (c!121171 x!150328)) e!430274)))

(declare-fun b!685226 () Bool)

(assert (=> b!685226 (= e!430274 (inv!9417 (c!121171 x!150328)))))

(declare-fun b!685227 () Bool)

(declare-fun e!430275 () Bool)

(assert (=> b!685227 (= e!430274 e!430275)))

(declare-fun res!312014 () Bool)

(assert (=> b!685227 (= res!312014 (not (is-Leaf!3863 (c!121171 x!150328))))))

(assert (=> b!685227 (=> res!312014 e!430275)))

(declare-fun b!685228 () Bool)

(assert (=> b!685228 (= e!430275 (inv!9418 (c!121171 x!150328)))))

(assert (= (and d!231034 c!121180) b!685226))

(assert (= (and d!231034 (not c!121180)) b!685227))

(assert (= (and b!685227 (not res!312014)) b!685228))

(declare-fun m!942087 () Bool)

(assert (=> b!685226 m!942087))

(declare-fun m!942089 () Bool)

(assert (=> b!685228 m!942089))

(assert (=> b!685137 d!231034))

(assert (=> b!685150 d!231024))

(assert (=> b!685150 d!231026))

(assert (=> bs!131261 d!231018))

(declare-fun d!231036 () Bool)

(assert (=> d!231036 (= (list!3093 x!150329) (list!3096 (c!121171 x!150329)))))

(declare-fun bs!131369 () Bool)

(assert (= bs!131369 d!231036))

(declare-fun m!942091 () Bool)

(assert (=> bs!131369 m!942091))

(assert (=> bs!131261 d!231036))

(assert (=> bs!131287 d!231020))

(assert (=> bs!131287 d!231018))

(declare-fun d!231038 () Bool)

(declare-fun c!121181 () Bool)

(assert (=> d!231038 (= c!121181 (is-Node!2603 (c!121171 x!150329)))))

(declare-fun e!430276 () Bool)

(assert (=> d!231038 (= (inv!9411 (c!121171 x!150329)) e!430276)))

(declare-fun b!685229 () Bool)

(assert (=> b!685229 (= e!430276 (inv!9417 (c!121171 x!150329)))))

(declare-fun b!685230 () Bool)

(declare-fun e!430277 () Bool)

(assert (=> b!685230 (= e!430276 e!430277)))

(declare-fun res!312015 () Bool)

(assert (=> b!685230 (= res!312015 (not (is-Leaf!3863 (c!121171 x!150329))))))

(assert (=> b!685230 (=> res!312015 e!430277)))

(declare-fun b!685231 () Bool)

(assert (=> b!685231 (= e!430277 (inv!9418 (c!121171 x!150329)))))

(assert (= (and d!231038 c!121181) b!685229))

(assert (= (and d!231038 (not c!121181)) b!685230))

(assert (= (and b!685230 (not res!312015)) b!685231))

(declare-fun m!942093 () Bool)

(assert (=> b!685229 m!942093))

(declare-fun m!942095 () Bool)

(assert (=> b!685231 m!942095))

(assert (=> b!685138 d!231038))

(declare-fun bs!131370 () Bool)

(declare-fun d!231040 () Bool)

(assert (= bs!131370 (and d!231040 start!65550)))

(declare-fun lambda!21205 () Int)

(assert (=> bs!131370 (not (= lambda!21205 lambda!21163))))

(assert (=> d!231040 true))

(declare-fun order!5311 () Int)

(declare-fun order!5309 () Int)

(declare-fun dynLambda!3856 (Int Int) Int)

(declare-fun dynLambda!3857 (Int Int) Int)

(assert (=> d!231040 (< (dynLambda!3856 order!5309 lambda!21164) (dynLambda!3857 order!5311 lambda!21205))))

(assert (=> d!231040 true))

(declare-fun order!5313 () Int)

(declare-fun dynLambda!3858 (Int Int) Int)

(assert (=> d!231040 (< (dynLambda!3858 order!5313 lambda!21165) (dynLambda!3857 order!5311 lambda!21205))))

(assert (=> d!231040 (= (semiInverseModEq!563 lambda!21164 lambda!21165) (Forall!350 lambda!21205))))

(declare-fun bs!131371 () Bool)

(assert (= bs!131371 d!231040))

(declare-fun m!942097 () Bool)

(assert (=> bs!131371 m!942097))

(assert (=> b!685123 d!231040))

(declare-fun d!231042 () Bool)

(declare-fun choose!4691 (Int) Bool)

(assert (=> d!231042 (= (Forall!350 lambda!21163) (choose!4691 lambda!21163))))

(declare-fun bs!131372 () Bool)

(assert (= bs!131372 d!231042))

(declare-fun m!942099 () Bool)

(assert (=> bs!131372 m!942099))

(assert (=> b!685123 d!231042))

(assert (=> b!685145 d!231028))

(assert (=> b!685124 d!231036))

(declare-fun d!231044 () Bool)

(declare-fun isBalanced!686 (Conc!2603) Bool)

(assert (=> d!231044 (= (inv!9412 x!150329) (isBalanced!686 (c!121171 x!150329)))))

(declare-fun bs!131373 () Bool)

(assert (= bs!131373 d!231044))

(declare-fun m!942101 () Bool)

(assert (=> bs!131373 m!942101))

(assert (=> b!685124 d!231044))

(assert (=> b!685124 d!231016))

(declare-fun d!231046 () Bool)

(declare-fun choose!4692 (Int) Bool)

(assert (=> d!231046 (= (Forall2!268 lambda!21166) (choose!4692 lambda!21166))))

(declare-fun bs!131374 () Bool)

(assert (= bs!131374 d!231046))

(declare-fun m!942103 () Bool)

(assert (=> bs!131374 m!942103))

(assert (=> b!685124 d!231046))

(declare-fun d!231048 () Bool)

(assert (=> d!231048 (= (inv!9412 x!150328) (isBalanced!686 (c!121171 x!150328)))))

(declare-fun bs!131375 () Bool)

(assert (= bs!131375 d!231048))

(declare-fun m!942105 () Bool)

(assert (=> bs!131375 m!942105))

(assert (=> b!685124 d!231048))

(assert (=> bs!131257 d!231036))

(declare-fun bs!131376 () Bool)

(declare-fun d!231050 () Bool)

(assert (= bs!131376 (and d!231050 b!685124)))

(declare-fun lambda!21208 () Int)

(assert (=> bs!131376 (not (= lambda!21208 lambda!21166))))

(assert (=> d!231050 true))

(declare-fun order!5315 () Int)

(declare-fun dynLambda!3859 (Int Int) Int)

(assert (=> d!231050 (< (dynLambda!3858 order!5313 lambda!21165) (dynLambda!3859 order!5315 lambda!21208))))

(assert (=> d!231050 (= (equivClasses!538 lambda!21164 lambda!21165) (Forall2!268 lambda!21208))))

(declare-fun bs!131377 () Bool)

(assert (= bs!131377 d!231050))

(declare-fun m!942107 () Bool)

(assert (=> bs!131377 m!942107))

(assert (=> b!685125 d!231050))

(assert (=> b!685125 d!231046))

(assert (=> b!685142 d!231024))

(assert (=> b!685142 d!231022))

(assert (=> b!685154 d!231026))

(assert (=> b!685154 d!231024))

(declare-fun d!231052 () Bool)

(declare-fun res!312020 () Bool)

(declare-fun e!430282 () Bool)

(assert (=> d!231052 (=> (not res!312020) (not e!430282))))

(assert (=> d!231052 (= res!312020 (semiInverseModEq!563 (toChars!2285 (TokenValueInjection!2777 lambda!21165 lambda!21164)) (toValue!2426 (TokenValueInjection!2777 lambda!21165 lambda!21164))))))

(assert (=> d!231052 (= (inv!9413 (TokenValueInjection!2777 lambda!21165 lambda!21164)) e!430282)))

(declare-fun b!685242 () Bool)

(assert (=> b!685242 (= e!430282 (equivClasses!538 (toChars!2285 (TokenValueInjection!2777 lambda!21165 lambda!21164)) (toValue!2426 (TokenValueInjection!2777 lambda!21165 lambda!21164))))))

(assert (= (and d!231052 res!312020) b!685242))

(declare-fun m!942109 () Bool)

(assert (=> d!231052 m!942109))

(declare-fun m!942111 () Bool)

(assert (=> b!685242 m!942111))

(assert (=> b!685126 d!231052))

(assert (=> bs!131284 d!231020))

(assert (=> bs!131278 d!231036))

(assert (=> bs!131278 d!231020))

(assert (=> bs!131267 d!231016))

(assert (=> bs!131267 d!231036))

(assert (=> b!685139 d!231022))

(assert (=> bs!131262 d!231036))

(assert (=> bs!131262 d!231016))

(assert (=> b!685151 d!231026))

(assert (=> b!685148 d!231022))

(assert (=> b!685148 d!231026))

(assert (=> b!685146 d!231028))

(assert (=> b!685146 d!231022))

(assert (=> bs!131258 d!231036))

(assert (=> bs!131258 d!231018))

(assert (=> b!685143 d!231022))

(assert (=> b!685143 d!231028))

(assert (=> bs!131285 d!231020))

(assert (=> bs!131285 d!231036))

(declare-fun d!231054 () Bool)

(assert (=> d!231054 (= (inv!9412 x!150327) (isBalanced!686 (c!121171 x!150327)))))

(declare-fun bs!131378 () Bool)

(assert (= bs!131378 d!231054))

(declare-fun m!942113 () Bool)

(assert (=> bs!131378 m!942113))

(assert (=> start!65550 d!231054))

(assert (=> start!65550 d!231024))

(assert (=> start!65550 d!231032))

(assert (=> start!65550 d!231020))

(assert (=> start!65550 d!231042))

(assert (=> start!65550 d!231018))

(declare-fun tp!203188 () Bool)

(declare-fun tp!203187 () Bool)

(declare-fun b!685249 () Bool)

(declare-fun e!430287 () Bool)

(assert (=> b!685249 (= e!430287 (and (inv!9411 (left!5930 (c!121171 x!150329))) tp!203187 (inv!9411 (right!6260 (c!121171 x!150329))) tp!203188))))

(declare-fun b!685250 () Bool)

(declare-fun inv!9419 (IArray!5207) Bool)

(assert (=> b!685250 (= e!430287 (inv!9419 (xs!5252 (c!121171 x!150329))))))

(assert (=> b!685138 (= tp!203173 (and (inv!9411 (c!121171 x!150329)) e!430287))))

(assert (= (and b!685138 (is-Node!2603 (c!121171 x!150329))) b!685249))

(assert (= (and b!685138 (is-Leaf!3863 (c!121171 x!150329))) b!685250))

(declare-fun m!942115 () Bool)

(assert (=> b!685249 m!942115))

(declare-fun m!942117 () Bool)

(assert (=> b!685249 m!942117))

(declare-fun m!942119 () Bool)

(assert (=> b!685250 m!942119))

(assert (=> b!685138 m!941997))

(declare-fun e!430289 () Bool)

(declare-fun tp!203190 () Bool)

(declare-fun b!685251 () Bool)

(declare-fun tp!203189 () Bool)

(assert (=> b!685251 (= e!430289 (and (inv!9411 (left!5930 (c!121171 x!150327))) tp!203189 (inv!9411 (right!6260 (c!121171 x!150327))) tp!203190))))

(declare-fun b!685252 () Bool)

(assert (=> b!685252 (= e!430289 (inv!9419 (xs!5252 (c!121171 x!150327))))))

(assert (=> b!685135 (= tp!203171 (and (inv!9411 (c!121171 x!150327)) e!430289))))

(assert (= (and b!685135 (is-Node!2603 (c!121171 x!150327))) b!685251))

(assert (= (and b!685135 (is-Leaf!3863 (c!121171 x!150327))) b!685252))

(declare-fun m!942121 () Bool)

(assert (=> b!685251 m!942121))

(declare-fun m!942123 () Bool)

(assert (=> b!685251 m!942123))

(declare-fun m!942125 () Bool)

(assert (=> b!685252 m!942125))

(assert (=> b!685135 m!941971))

(declare-fun e!430291 () Bool)

(declare-fun b!685253 () Bool)

(declare-fun tp!203192 () Bool)

(declare-fun tp!203191 () Bool)

(assert (=> b!685253 (= e!430291 (and (inv!9411 (left!5930 (c!121171 x!150328))) tp!203191 (inv!9411 (right!6260 (c!121171 x!150328))) tp!203192))))

(declare-fun b!685254 () Bool)

(assert (=> b!685254 (= e!430291 (inv!9419 (xs!5252 (c!121171 x!150328))))))

(assert (=> b!685137 (= tp!203172 (and (inv!9411 (c!121171 x!150328)) e!430291))))

(assert (= (and b!685137 (is-Node!2603 (c!121171 x!150328))) b!685253))

(assert (= (and b!685137 (is-Leaf!3863 (c!121171 x!150328))) b!685254))

(declare-fun m!942127 () Bool)

(assert (=> b!685253 m!942127))

(declare-fun m!942129 () Bool)

(assert (=> b!685253 m!942129))

(declare-fun m!942131 () Bool)

(assert (=> b!685254 m!942131))

(assert (=> b!685137 m!941995))

(push 1)

(assert (not b!685231))

(assert (not d!231050))

(assert (not d!231028))

(assert (not b!685250))

(assert (not b!685228))

(assert (not d!231018))

(assert (not d!231022))

(assert (not b!685252))

(assert (not d!231048))

(assert (not b!685217))

(assert (not d!231042))

(assert (not b!685249))

(assert (not d!231016))

(assert (not b!685226))

(assert (not b!685135))

(assert (not d!231044))

(assert (not b!685219))

(assert (not d!231046))

(assert (not b!685251))

(assert (not b!685242))

(assert (not d!231020))

(assert (not b!685224))

(assert (not d!231040))

(assert (not d!231054))

(assert (not b!685138))

(assert (not b!685229))

(assert (not d!231026))

(assert (not b!685253))

(assert (not b!685137))

(assert (not d!231024))

(assert (not d!231052))

(assert (not d!231036))

(assert (not b!685254))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

