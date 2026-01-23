; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!918 () Bool)

(assert start!918)

(assert (=> start!918 true))

(declare-fun b!27903 () Bool)

(declare-fun e!11180 () Bool)

(declare-datatypes ((List!133 0))(
  ( (Nil!131) (Cons!131 (h!5527 (_ BitVec 16)) (t!14616 List!133)) )
))
(declare-datatypes ((IArray!5 0))(
  ( (IArray!6 (innerList!60 List!133)) )
))
(declare-datatypes ((Conc!2 0))(
  ( (Node!2 (left!288 Conc!2) (right!618 Conc!2) (csize!234 Int) (cheight!213 Int)) (Leaf!123 (xs!2579 IArray!5) (csize!235 Int)) (Empty!2) )
))
(declare-datatypes ((BalanceConc!4 0))(
  ( (BalanceConc!5 (c!14770 Conc!2)) )
))
(declare-fun x!9542 () BalanceConc!4)

(declare-fun tp!19283 () Bool)

(declare-fun inv!390 (Conc!2) Bool)

(assert (=> b!27903 (= e!11180 (and (inv!390 (c!14770 x!9542)) tp!19283))))

(declare-fun inst!2 () Bool)

(declare-datatypes ((StringLiteralValueInjection!12 0))(
  ( (StringLiteralValueInjection!13) )
))
(declare-fun thiss!4744 () StringLiteralValueInjection!12)

(declare-fun inv!391 (BalanceConc!4) Bool)

(declare-fun list!55 (BalanceConc!4) List!133)

(declare-datatypes ((TokenValue!80 0))(
  ( (FloatLiteralValue!160 (text!1005 List!133)) (TokenValueExt!79 (__x!385 Int)) (Broken!400 (value!5277 List!133)) (Object!81) (End!80) (Def!80) (Underscore!80) (Match!80) (Else!80) (Error!80) (Case!80) (If!80) (Extends!80) (Abstract!80) (Class!80) (Val!80) (DelimiterValue!160 (del!140 List!133)) (KeywordValue!86 (value!5278 List!133)) (CommentValue!160 (value!5279 List!133)) (WhitespaceValue!160 (value!5280 List!133)) (IndentationValue!80 (value!5281 List!133)) (String!565) (Int32!80) (Broken!401 (value!5282 List!133)) (Boolean!81) (Unit!81) (OperatorValue!83 (op!140 List!133)) (IdentifierValue!160 (value!5283 List!133)) (IdentifierValue!161 (value!5284 List!133)) (WhitespaceValue!161 (value!5285 List!133)) (True!160) (False!160) (Broken!402 (value!5286 List!133)) (Broken!403 (value!5287 List!133)) (True!161) (RightBrace!80) (RightBracket!80) (Colon!80) (Null!80) (Comma!80) (LeftBracket!80) (False!161) (LeftBrace!80) (ImaginaryLiteralValue!80 (text!1006 List!133)) (StringLiteralValue!240 (value!5288 List!133)) (EOFValue!80 (value!5289 List!133)) (IdentValue!80 (value!5290 List!133)) (DelimiterValue!161 (value!5291 List!133)) (DedentValue!80 (value!5292 List!133)) (NewLineValue!80 (value!5293 List!133)) (IntegerValue!240 (value!5294 (_ BitVec 32)) (text!1007 List!133)) (IntegerValue!241 (value!5295 Int) (text!1008 List!133)) (Times!80) (Or!80) (Equal!80) (Minus!80) (Broken!404 (value!5296 List!133)) (And!80) (Div!80) (LessEqual!80) (Mod!80) (Concat!204) (Not!80) (Plus!80) (SpaceValue!80 (value!5297 List!133)) (IntegerValue!242 (value!5298 Int) (text!1009 List!133)) (StringLiteralValue!241 (text!1010 List!133)) (FloatLiteralValue!161 (text!1011 List!133)) (BytesLiteralValue!80 (value!5299 List!133)) (CommentValue!161 (value!5300 List!133)) (StringLiteralValue!242 (value!5301 List!133)) (ErrorTokenValue!80 (msg!141 List!133)) )
))
(declare-fun toCharacters!22 (StringLiteralValueInjection!12 TokenValue!80) BalanceConc!4)

(declare-fun toValue!29 (StringLiteralValueInjection!12 BalanceConc!4) TokenValue!80)

(assert (=> start!918 (= inst!2 (=> (and (inv!391 x!9542) e!11180) (= (list!55 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542))) (list!55 x!9542))))))

(assert (= start!918 b!27903))

(declare-fun m!4311 () Bool)

(assert (=> b!27903 m!4311))

(declare-fun m!4313 () Bool)

(assert (=> start!918 m!4313))

(declare-fun m!4315 () Bool)

(assert (=> start!918 m!4315))

(declare-fun m!4317 () Bool)

(assert (=> start!918 m!4317))

(declare-fun m!4319 () Bool)

(assert (=> start!918 m!4319))

(assert (=> start!918 m!4313))

(assert (=> start!918 m!4315))

(declare-fun m!4321 () Bool)

(assert (=> start!918 m!4321))

(declare-fun bs!406 () Bool)

(declare-fun neg-inst!2 () Bool)

(declare-fun s!15441 () Bool)

(assert (= bs!406 (and neg-inst!2 s!15441)))

(assert (=> bs!406 (=> true (= (list!55 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542))) (list!55 x!9542)))))

(assert (=> m!4319 m!4313))

(assert (=> m!4319 m!4315))

(assert (=> m!4319 m!4321))

(assert (=> m!4319 s!15441))

(assert (=> m!4313 s!15441))

(declare-fun bs!407 () Bool)

(assert (= bs!407 (and neg-inst!2 start!918)))

(assert (=> bs!407 (= true inst!2)))

(declare-fun lambda!21 () Int)

(declare-fun Forall!1 (Int) Bool)

(assert (=> start!918 (= (Forall!1 lambda!21) inst!2)))

(assert (=> start!918 (not (Forall!1 lambda!21))))

(assert (=> start!918 true))

(assert (= neg-inst!2 inst!2))

(declare-fun m!4323 () Bool)

(assert (=> start!918 m!4323))

(assert (=> start!918 m!4323))

(push 1)

(assert (not b!27903))

(assert (not start!918))

(assert (not bs!406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1899 () Bool)

(declare-fun list!57 (Conc!2) List!133)

(assert (=> d!1899 (= (list!55 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542))) (list!57 (c!14770 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542)))))))

(declare-fun bs!410 () Bool)

(assert (= bs!410 d!1899))

(declare-fun m!4339 () Bool)

(assert (=> bs!410 m!4339))

(assert (=> bs!406 d!1899))

(declare-fun d!1901 () Bool)

(declare-fun c!14775 () Bool)

(assert (=> d!1901 (= c!14775 (is-StringLiteralValue!240 (toValue!29 thiss!4744 x!9542)))))

(declare-fun e!11186 () BalanceConc!4)

(assert (=> d!1901 (= (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542)) e!11186)))

(declare-fun b!27913 () Bool)

(declare-fun seqFromList!1 (List!133) BalanceConc!4)

(assert (=> b!27913 (= e!11186 (seqFromList!1 (value!5288 (toValue!29 thiss!4744 x!9542))))))

(declare-fun b!27914 () Bool)

(assert (=> b!27914 (= e!11186 (BalanceConc!5 Empty!2))))

(assert (= (and d!1901 c!14775) b!27913))

(assert (= (and d!1901 (not c!14775)) b!27914))

(declare-fun m!4341 () Bool)

(assert (=> b!27913 m!4341))

(assert (=> bs!406 d!1901))

(declare-fun d!1905 () Bool)

(declare-fun efficientList!4 (BalanceConc!4) List!133)

(assert (=> d!1905 (= (toValue!29 thiss!4744 x!9542) (StringLiteralValue!240 (efficientList!4 x!9542)))))

(declare-fun bs!412 () Bool)

(assert (= bs!412 d!1905))

(declare-fun m!4345 () Bool)

(assert (=> bs!412 m!4345))

(assert (=> bs!406 d!1905))

(declare-fun d!1909 () Bool)

(assert (=> d!1909 (= (list!55 x!9542) (list!57 (c!14770 x!9542)))))

(declare-fun bs!413 () Bool)

(assert (= bs!413 d!1909))

(declare-fun m!4347 () Bool)

(assert (=> bs!413 m!4347))

(assert (=> bs!406 d!1909))

(push 1)

(assert (not b!27903))

(assert (not d!1899))

(assert (not start!918))

(assert (not d!1909))

(assert (not b!27913))

(assert (not d!1905))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1913 () Bool)

(declare-fun c!14784 () Bool)

(assert (=> d!1913 (= c!14784 (is-Empty!2 (c!14770 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542)))))))

(declare-fun e!11194 () List!133)

(assert (=> d!1913 (= (list!57 (c!14770 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542)))) e!11194)))

(declare-fun b!27932 () Bool)

(declare-fun e!11195 () List!133)

(declare-fun ++!29 (List!133 List!133) List!133)

(assert (=> b!27932 (= e!11195 (++!29 (list!57 (left!288 (c!14770 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542))))) (list!57 (right!618 (c!14770 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542)))))))))

(declare-fun b!27930 () Bool)

(assert (=> b!27930 (= e!11194 e!11195)))

(declare-fun c!14785 () Bool)

(assert (=> b!27930 (= c!14785 (is-Leaf!123 (c!14770 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542)))))))

(declare-fun b!27929 () Bool)

(assert (=> b!27929 (= e!11194 Nil!131)))

(declare-fun b!27931 () Bool)

(declare-fun list!59 (IArray!5) List!133)

(assert (=> b!27931 (= e!11195 (list!59 (xs!2579 (c!14770 (toCharacters!22 thiss!4744 (toValue!29 thiss!4744 x!9542))))))))

(assert (= (and d!1913 c!14784) b!27929))

(assert (= (and d!1913 (not c!14784)) b!27930))

(assert (= (and b!27930 c!14785) b!27931))

(assert (= (and b!27930 (not c!14785)) b!27932))

(declare-fun m!4355 () Bool)

(assert (=> b!27932 m!4355))

(declare-fun m!4357 () Bool)

(assert (=> b!27932 m!4357))

(assert (=> b!27932 m!4355))

(assert (=> b!27932 m!4357))

(declare-fun m!4359 () Bool)

(assert (=> b!27932 m!4359))

(declare-fun m!4361 () Bool)

(assert (=> b!27931 m!4361))

(assert (=> d!1899 d!1913))

(declare-fun d!1917 () Bool)

(declare-fun c!14786 () Bool)

(assert (=> d!1917 (= c!14786 (is-Empty!2 (c!14770 x!9542)))))

(declare-fun e!11196 () List!133)

(assert (=> d!1917 (= (list!57 (c!14770 x!9542)) e!11196)))

(declare-fun b!27936 () Bool)

(declare-fun e!11197 () List!133)

(assert (=> b!27936 (= e!11197 (++!29 (list!57 (left!288 (c!14770 x!9542))) (list!57 (right!618 (c!14770 x!9542)))))))

(declare-fun b!27934 () Bool)

(assert (=> b!27934 (= e!11196 e!11197)))

(declare-fun c!14787 () Bool)

(assert (=> b!27934 (= c!14787 (is-Leaf!123 (c!14770 x!9542)))))

(declare-fun b!27933 () Bool)

(assert (=> b!27933 (= e!11196 Nil!131)))

(declare-fun b!27935 () Bool)

(assert (=> b!27935 (= e!11197 (list!59 (xs!2579 (c!14770 x!9542))))))

(assert (= (and d!1917 c!14786) b!27933))

(assert (= (and d!1917 (not c!14786)) b!27934))

(assert (= (and b!27934 c!14787) b!27935))

(assert (= (and b!27934 (not c!14787)) b!27936))

(declare-fun m!4363 () Bool)

(assert (=> b!27936 m!4363))

(declare-fun m!4365 () Bool)

(assert (=> b!27936 m!4365))

(assert (=> b!27936 m!4363))

(assert (=> b!27936 m!4365))

(declare-fun m!4367 () Bool)

(assert (=> b!27936 m!4367))

(declare-fun m!4369 () Bool)

(assert (=> b!27935 m!4369))

(assert (=> d!1909 d!1917))

(declare-fun d!1919 () Bool)

(declare-fun lt!1118 () List!133)

(assert (=> d!1919 (= lt!1118 (list!55 x!9542))))

(declare-fun efficientList!6 (Conc!2 List!133) List!133)

(declare-fun efficientList$default$2!1 (Conc!2) List!133)

(assert (=> d!1919 (= lt!1118 (efficientList!6 (c!14770 x!9542) (efficientList$default$2!1 (c!14770 x!9542))))))

(assert (=> d!1919 (= (efficientList!4 x!9542) lt!1118)))

(declare-fun bs!416 () Bool)

(assert (= bs!416 d!1919))

(assert (=> bs!416 m!4319))

(declare-fun m!4371 () Bool)

(assert (=> bs!416 m!4371))

(assert (=> bs!416 m!4371))

(declare-fun m!4373 () Bool)

(assert (=> bs!416 m!4373))

(assert (=> d!1905 d!1919))

(push 1)

(assert (not b!27903))

(assert (not b!27936))

(assert (not b!27935))

(assert (not start!918))

(assert (not b!27932))

(assert (not d!1919))

(assert (not b!27913))

(assert (not b!27931))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1923 () Bool)

(declare-fun c!14790 () Bool)

(assert (=> d!1923 (= c!14790 (is-Node!2 (c!14770 x!9542)))))

(declare-fun e!11202 () Bool)

(assert (=> d!1923 (= (inv!390 (c!14770 x!9542)) e!11202)))

(declare-fun b!27943 () Bool)

(declare-fun inv!394 (Conc!2) Bool)

(assert (=> b!27943 (= e!11202 (inv!394 (c!14770 x!9542)))))

(declare-fun b!27944 () Bool)

(declare-fun e!11203 () Bool)

(assert (=> b!27944 (= e!11202 e!11203)))

(declare-fun res!25727 () Bool)

(assert (=> b!27944 (= res!25727 (not (is-Leaf!123 (c!14770 x!9542))))))

(assert (=> b!27944 (=> res!25727 e!11203)))

(declare-fun b!27945 () Bool)

(declare-fun inv!395 (Conc!2) Bool)

(assert (=> b!27945 (= e!11203 (inv!395 (c!14770 x!9542)))))

(assert (= (and d!1923 c!14790) b!27943))

(assert (= (and d!1923 (not c!14790)) b!27944))

(assert (= (and b!27944 (not res!25727)) b!27945))

(declare-fun m!4375 () Bool)

(assert (=> b!27943 m!4375))

(declare-fun m!4377 () Bool)

(assert (=> b!27945 m!4377))

(assert (=> b!27903 d!1923))

(assert (=> start!918 d!1905))

(assert (=> start!918 d!1899))

(declare-fun d!1925 () Bool)

(declare-fun isBalanced!2 (Conc!2) Bool)

(assert (=> d!1925 (= (inv!391 x!9542) (isBalanced!2 (c!14770 x!9542)))))

(declare-fun bs!417 () Bool)

(assert (= bs!417 d!1925))

(declare-fun m!4379 () Bool)

(assert (=> bs!417 m!4379))

(assert (=> start!918 d!1925))

(assert (=> start!918 d!1901))

(assert (=> start!918 d!1909))

(declare-fun d!1927 () Bool)

(declare-fun choose!1122 (Int) Bool)

(assert (=> d!1927 (= (Forall!1 lambda!21) (choose!1122 lambda!21))))

(declare-fun bs!418 () Bool)

(assert (= bs!418 d!1927))

(declare-fun m!4381 () Bool)

(assert (=> bs!418 m!4381))

(assert (=> start!918 d!1927))

(assert (=> d!1919 d!1909))

(declare-fun b!27970 () Bool)

(declare-fun e!11217 () List!133)

(declare-fun efficientList!8 (IArray!5) List!133)

(assert (=> b!27970 (= e!11217 (efficientList!8 (xs!2579 (c!14770 x!9542))))))

(declare-fun b!27971 () Bool)

(declare-fun e!11216 () List!133)

(assert (=> b!27971 (= e!11216 (efficientList$default$2!1 (c!14770 x!9542)))))

(declare-fun bm!2538 () Bool)

(declare-fun c!14803 () Bool)

(declare-fun c!14805 () Bool)

(assert (=> bm!2538 (= c!14803 c!14805)))

(declare-fun lt!1130 () List!133)

(declare-fun call!2543 () List!133)

(assert (=> bm!2538 (= call!2543 (++!29 e!11217 (ite c!14805 (efficientList$default$2!1 (c!14770 x!9542)) lt!1130)))))

(declare-fun d!1929 () Bool)

(declare-fun lt!1132 () List!133)

(assert (=> d!1929 (= lt!1132 (++!29 (list!57 (c!14770 x!9542)) (efficientList$default$2!1 (c!14770 x!9542))))))

(assert (=> d!1929 (= lt!1132 e!11216)))

(declare-fun c!14804 () Bool)

(assert (=> d!1929 (= c!14804 (is-Empty!2 (c!14770 x!9542)))))

(assert (=> d!1929 (= (efficientList!6 (c!14770 x!9542) (efficientList$default$2!1 (c!14770 x!9542))) lt!1132)))

(declare-fun b!27972 () Bool)

(declare-fun lt!1131 () List!133)

(assert (=> b!27972 (= e!11217 lt!1131)))

(declare-fun b!27973 () Bool)

(declare-datatypes ((Unit!83 0))(
  ( (Unit!84) )
))
(declare-fun lt!1133 () Unit!83)

(declare-fun lt!1129 () Unit!83)

(assert (=> b!27973 (= lt!1133 lt!1129)))

(assert (=> b!27973 (= (++!29 call!2543 (efficientList$default$2!1 (c!14770 x!9542))) (++!29 lt!1131 (++!29 lt!1130 (efficientList$default$2!1 (c!14770 x!9542)))))))

(declare-fun lemmaConcatAssociativity!3 (List!133 List!133 List!133) Unit!83)

(assert (=> b!27973 (= lt!1129 (lemmaConcatAssociativity!3 lt!1131 lt!1130 (efficientList$default$2!1 (c!14770 x!9542))))))

(assert (=> b!27973 (= lt!1130 (list!57 (right!618 (c!14770 x!9542))))))

(assert (=> b!27973 (= lt!1131 (list!57 (left!288 (c!14770 x!9542))))))

(declare-fun e!11218 () List!133)

(assert (=> b!27973 (= e!11218 (efficientList!6 (left!288 (c!14770 x!9542)) (efficientList!6 (right!618 (c!14770 x!9542)) (efficientList$default$2!1 (c!14770 x!9542)))))))

(declare-fun b!27974 () Bool)

(assert (=> b!27974 (= e!11216 e!11218)))

(assert (=> b!27974 (= c!14805 (is-Leaf!123 (c!14770 x!9542)))))

(declare-fun b!27975 () Bool)

(assert (=> b!27975 (= e!11218 call!2543)))

(assert (= (and d!1929 c!14804) b!27971))

(assert (= (and d!1929 (not c!14804)) b!27974))

(assert (= (and b!27974 c!14805) b!27975))

(assert (= (and b!27974 (not c!14805)) b!27973))

(assert (= (or b!27975 b!27973) bm!2538))

(assert (= (and bm!2538 c!14803) b!27970))

(assert (= (and bm!2538 (not c!14803)) b!27972))

(declare-fun m!4391 () Bool)

(assert (=> b!27970 m!4391))

(declare-fun m!4393 () Bool)

(assert (=> bm!2538 m!4393))

(assert (=> d!1929 m!4347))

(assert (=> d!1929 m!4347))

(assert (=> d!1929 m!4371))

(declare-fun m!4395 () Bool)

(assert (=> d!1929 m!4395))

(assert (=> b!27973 m!4371))

(declare-fun m!4397 () Bool)

(assert (=> b!27973 m!4397))

(assert (=> b!27973 m!4371))

(declare-fun m!4399 () Bool)

(assert (=> b!27973 m!4399))

(assert (=> b!27973 m!4371))

(declare-fun m!4401 () Bool)

(assert (=> b!27973 m!4401))

(assert (=> b!27973 m!4401))

(declare-fun m!4403 () Bool)

(assert (=> b!27973 m!4403))

(assert (=> b!27973 m!4397))

(declare-fun m!4405 () Bool)

(assert (=> b!27973 m!4405))

(assert (=> b!27973 m!4365))

(assert (=> b!27973 m!4363))

(assert (=> b!27973 m!4371))

(declare-fun m!4407 () Bool)

(assert (=> b!27973 m!4407))

(assert (=> d!1919 d!1929))

(declare-fun d!1933 () Bool)

(assert (=> d!1933 (= (efficientList$default$2!1 (c!14770 x!9542)) Nil!131)))

(assert (=> d!1919 d!1933))

(declare-fun d!1935 () Bool)

(declare-fun fromListB!1 (List!133) BalanceConc!4)

(assert (=> d!1935 (= (seqFromList!1 (value!5288 (toValue!29 thiss!4744 x!9542))) (fromListB!1 (value!5288 (toValue!29 thiss!4744 x!9542))))))

(declare-fun bs!419 () Bool)

(assert (= bs!419 d!1935))

(declare-fun m!4409 () Bool)

(assert (=> bs!419 m!4409))

(assert (=> b!27913 d!1935))

(declare-fun e!11223 () Bool)

(declare-fun b!27982 () Bool)

(declare-fun tp!19292 () Bool)

(declare-fun tp!19291 () Bool)

(assert (=> b!27982 (= e!11223 (and (inv!390 (left!288 (c!14770 x!9542))) tp!19291 (inv!390 (right!618 (c!14770 x!9542))) tp!19292))))

(declare-fun b!27983 () Bool)

(declare-fun inv!396 (IArray!5) Bool)

(assert (=> b!27983 (= e!11223 (inv!396 (xs!2579 (c!14770 x!9542))))))

(assert (=> b!27903 (= tp!19283 (and (inv!390 (c!14770 x!9542)) e!11223))))

(assert (= (and b!27903 (is-Node!2 (c!14770 x!9542))) b!27982))

(assert (= (and b!27903 (is-Leaf!123 (c!14770 x!9542))) b!27983))

(declare-fun m!4411 () Bool)

(assert (=> b!27982 m!4411))

(declare-fun m!4413 () Bool)

(assert (=> b!27982 m!4413))

(declare-fun m!4415 () Bool)

(assert (=> b!27983 m!4415))

(assert (=> b!27903 m!4311))

(push 1)

(assert (not d!1927))

(assert (not b!27935))

(assert (not d!1925))

(assert (not b!27932))

(assert (not b!27982))

(assert (not bm!2538))

(assert (not b!27945))

(assert (not d!1929))

(assert (not b!27903))

(assert (not d!1935))

(assert (not b!27936))

(assert (not b!27943))

(assert (not b!27970))

(assert (not b!27983))

(assert (not b!27931))

(assert (not b!27973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!27996 () Bool)

(declare-fun e!11231 () List!133)

(assert (=> b!27996 (= e!11231 (efficientList$default$2!1 (c!14770 x!9542)))))

(declare-fun b!27997 () Bool)

(assert (=> b!27997 (= e!11231 (Cons!131 (h!5527 (list!57 (c!14770 x!9542))) (++!29 (t!14616 (list!57 (c!14770 x!9542))) (efficientList$default$2!1 (c!14770 x!9542)))))))

(declare-fun b!27999 () Bool)

(declare-fun e!11232 () Bool)

(declare-fun lt!1139 () List!133)

(assert (=> b!27999 (= e!11232 (or (not (= (efficientList$default$2!1 (c!14770 x!9542)) Nil!131)) (= lt!1139 (list!57 (c!14770 x!9542)))))))

(declare-fun d!1943 () Bool)

(assert (=> d!1943 e!11232))

(declare-fun res!25733 () Bool)

(assert (=> d!1943 (=> (not res!25733) (not e!11232))))

(declare-fun content!13 (List!133) (Set (_ BitVec 16)))

(assert (=> d!1943 (= res!25733 (= (content!13 lt!1139) (set.union (content!13 (list!57 (c!14770 x!9542))) (content!13 (efficientList$default$2!1 (c!14770 x!9542))))))))

(assert (=> d!1943 (= lt!1139 e!11231)))

(declare-fun c!14810 () Bool)

(assert (=> d!1943 (= c!14810 (is-Nil!131 (list!57 (c!14770 x!9542))))))

(assert (=> d!1943 (= (++!29 (list!57 (c!14770 x!9542)) (efficientList$default$2!1 (c!14770 x!9542))) lt!1139)))

(declare-fun b!27998 () Bool)

(declare-fun res!25732 () Bool)

(assert (=> b!27998 (=> (not res!25732) (not e!11232))))

(declare-fun size!238 (List!133) Int)

(assert (=> b!27998 (= res!25732 (= (size!238 lt!1139) (+ (size!238 (list!57 (c!14770 x!9542))) (size!238 (efficientList$default$2!1 (c!14770 x!9542))))))))

(assert (= (and d!1943 c!14810) b!27996))

(assert (= (and d!1943 (not c!14810)) b!27997))

(assert (= (and d!1943 res!25733) b!27998))

(assert (= (and b!27998 res!25732) b!27999))

(assert (=> b!27997 m!4371))

(declare-fun m!4433 () Bool)

(assert (=> b!27997 m!4433))

(declare-fun m!4435 () Bool)

(assert (=> d!1943 m!4435))

(assert (=> d!1943 m!4347))

(declare-fun m!4437 () Bool)

(assert (=> d!1943 m!4437))

(assert (=> d!1943 m!4371))

(declare-fun m!4439 () Bool)

(assert (=> d!1943 m!4439))

(declare-fun m!4441 () Bool)

(assert (=> b!27998 m!4441))

(assert (=> b!27998 m!4347))

(declare-fun m!4443 () Bool)

(assert (=> b!27998 m!4443))

(assert (=> b!27998 m!4371))

(declare-fun m!4445 () Bool)

(assert (=> b!27998 m!4445))

(assert (=> d!1929 d!1943))

(assert (=> d!1929 d!1917))

(declare-fun d!1947 () Bool)

(declare-fun e!11235 () Bool)

(assert (=> d!1947 e!11235))

(declare-fun res!25736 () Bool)

(assert (=> d!1947 (=> (not res!25736) (not e!11235))))

(declare-fun lt!1142 () BalanceConc!4)

(assert (=> d!1947 (= res!25736 (= (list!55 lt!1142) (value!5288 (toValue!29 thiss!4744 x!9542))))))

(declare-fun fromList!3 (List!133) Conc!2)

(assert (=> d!1947 (= lt!1142 (BalanceConc!5 (fromList!3 (value!5288 (toValue!29 thiss!4744 x!9542)))))))

(assert (=> d!1947 (= (fromListB!1 (value!5288 (toValue!29 thiss!4744 x!9542))) lt!1142)))

(declare-fun b!28002 () Bool)

(assert (=> b!28002 (= e!11235 (isBalanced!2 (fromList!3 (value!5288 (toValue!29 thiss!4744 x!9542)))))))

(assert (= (and d!1947 res!25736) b!28002))

(declare-fun m!4447 () Bool)

(assert (=> d!1947 m!4447))

(declare-fun m!4449 () Bool)

(assert (=> d!1947 m!4449))

(assert (=> b!28002 m!4449))

(assert (=> b!28002 m!4449))

(declare-fun m!4451 () Bool)

(assert (=> b!28002 m!4451))

(assert (=> d!1935 d!1947))

(push 1)

(assert (not b!27903))

(assert (not d!1927))

(assert (not b!27935))

(assert (not b!27998))

(assert (not d!1925))

(assert (not b!27932))

(assert (not bm!2538))

(assert (not d!1943))

(assert (not d!1947))

(assert (not b!27945))

(assert (not b!28002))

(assert (not b!27936))

(assert (not b!27943))

(assert (not b!27997))

(assert (not b!27982))

(assert (not b!27970))

(assert (not b!27983))

(assert (not b!27931))

(assert (not b!27973))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

