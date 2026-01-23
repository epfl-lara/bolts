; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!4056 () Bool)

(assert start!4056)

(declare-fun b!53078 () Bool)

(declare-fun b_free!1713 () Bool)

(declare-fun b_next!1713 () Bool)

(assert (=> b!53078 (= b_free!1713 (not b_next!1713))))

(declare-fun tp!34318 () Bool)

(declare-fun b_and!1763 () Bool)

(assert (=> b!53078 (= tp!34318 b_and!1763)))

(declare-fun b_free!1715 () Bool)

(declare-fun b_next!1715 () Bool)

(assert (=> b!53078 (= b_free!1715 (not b_next!1715))))

(declare-fun tp!34315 () Bool)

(declare-fun b_and!1765 () Bool)

(assert (=> b!53078 (= tp!34315 b_and!1765)))

(declare-fun b!53073 () Bool)

(declare-fun res!34317 () Bool)

(declare-fun e!31333 () Bool)

(assert (=> b!53073 (=> (not res!34317) (not e!31333))))

(declare-datatypes ((List!1108 0))(
  ( (Nil!1102) (Cons!1102 (h!6499 (_ BitVec 16)) (t!17367 List!1108)) )
))
(declare-datatypes ((TokenValue!228 0))(
  ( (FloatLiteralValue!456 (text!2041 List!1108)) (TokenValueExt!227 (__x!1551 Int)) (Broken!1140 (value!9656 List!1108)) (Object!233) (End!228) (Def!228) (Underscore!228) (Match!228) (Else!228) (Error!228) (Case!228) (If!228) (Extends!228) (Abstract!228) (Class!228) (Val!228) (DelimiterValue!456 (del!288 List!1108)) (KeywordValue!234 (value!9657 List!1108)) (CommentValue!456 (value!9658 List!1108)) (WhitespaceValue!456 (value!9659 List!1108)) (IndentationValue!228 (value!9660 List!1108)) (String!1533) (Int32!228) (Broken!1141 (value!9661 List!1108)) (Boolean!229) (Unit!622) (OperatorValue!231 (op!288 List!1108)) (IdentifierValue!456 (value!9662 List!1108)) (IdentifierValue!457 (value!9663 List!1108)) (WhitespaceValue!457 (value!9664 List!1108)) (True!456) (False!456) (Broken!1142 (value!9665 List!1108)) (Broken!1143 (value!9666 List!1108)) (True!457) (RightBrace!228) (RightBracket!228) (Colon!228) (Null!228) (Comma!228) (LeftBracket!228) (False!457) (LeftBrace!228) (ImaginaryLiteralValue!228 (text!2042 List!1108)) (StringLiteralValue!684 (value!9667 List!1108)) (EOFValue!228 (value!9668 List!1108)) (IdentValue!228 (value!9669 List!1108)) (DelimiterValue!457 (value!9670 List!1108)) (DedentValue!228 (value!9671 List!1108)) (NewLineValue!228 (value!9672 List!1108)) (IntegerValue!684 (value!9673 (_ BitVec 32)) (text!2043 List!1108)) (IntegerValue!685 (value!9674 Int) (text!2044 List!1108)) (Times!228) (Or!228) (Equal!228) (Minus!228) (Broken!1144 (value!9675 List!1108)) (And!228) (Div!228) (LessEqual!228) (Mod!228) (Concat!534) (Not!228) (Plus!228) (SpaceValue!228 (value!9676 List!1108)) (IntegerValue!686 (value!9677 Int) (text!2045 List!1108)) (StringLiteralValue!685 (text!2046 List!1108)) (FloatLiteralValue!457 (text!2047 List!1108)) (BytesLiteralValue!228 (value!9678 List!1108)) (CommentValue!457 (value!9679 List!1108)) (StringLiteralValue!686 (value!9680 List!1108)) (ErrorTokenValue!228 (msg!289 List!1108)) )
))
(declare-datatypes ((String!1534 0))(
  ( (String!1535 (value!9681 String)) )
))
(declare-datatypes ((C!1534 0))(
  ( (C!1535 (val!374 Int)) )
))
(declare-datatypes ((List!1109 0))(
  ( (Nil!1103) (Cons!1103 (h!6500 C!1534) (t!17368 List!1109)) )
))
(declare-datatypes ((IArray!561 0))(
  ( (IArray!562 (innerList!338 List!1109)) )
))
(declare-datatypes ((Conc!280 0))(
  ( (Node!280 (left!836 Conc!280) (right!1166 Conc!280) (csize!790 Int) (cheight!491 Int)) (Leaf!535 (xs!2859 IArray!561) (csize!791 Int)) (Empty!280) )
))
(declare-datatypes ((BalanceConc!564 0))(
  ( (BalanceConc!565 (c!16963 Conc!280)) )
))
(declare-datatypes ((Regex!306 0))(
  ( (ElementMatch!306 (c!16964 C!1534)) (Concat!535 (regOne!1124 Regex!306) (regTwo!1124 Regex!306)) (EmptyExpr!306) (Star!306 (reg!635 Regex!306)) (EmptyLang!306) (Union!306 (regOne!1125 Regex!306) (regTwo!1125 Regex!306)) )
))
(declare-datatypes ((TokenValueInjection!280 0))(
  ( (TokenValueInjection!281 (toValue!717 Int) (toChars!576 Int)) )
))
(declare-datatypes ((Rule!276 0))(
  ( (Rule!277 (regex!238 Regex!306) (tag!416 String!1534) (isSeparator!238 Bool) (transformation!238 TokenValueInjection!280)) )
))
(declare-datatypes ((List!1110 0))(
  ( (Nil!1104) (Cons!1104 (h!6501 Rule!276) (t!17369 List!1110)) )
))
(declare-fun rules!1069 () List!1110)

(declare-fun isEmpty!224 (List!1110) Bool)

(assert (=> b!53073 (= res!34317 (not (isEmpty!224 rules!1069)))))

(declare-fun b!53075 () Bool)

(declare-fun e!31332 () Bool)

(declare-fun e!31327 () Bool)

(declare-fun tp!34316 () Bool)

(declare-fun inv!1454 (String!1534) Bool)

(declare-fun inv!1457 (TokenValueInjection!280) Bool)

(assert (=> b!53075 (= e!31327 (and tp!34316 (inv!1454 (tag!416 (h!6501 rules!1069))) (inv!1457 (transformation!238 (h!6501 rules!1069))) e!31332))))

(declare-fun b!53076 () Bool)

(declare-fun from!821 () Int)

(declare-datatypes ((Token!240 0))(
  ( (Token!241 (value!9682 TokenValue!228) (rule!713 Rule!276) (size!1004 Int) (originalCharacters!291 List!1109)) )
))
(declare-datatypes ((List!1111 0))(
  ( (Nil!1105) (Cons!1105 (h!6502 Token!240) (t!17370 List!1111)) )
))
(declare-fun lt!9525 () List!1111)

(declare-fun size!1005 (List!1111) Int)

(assert (=> b!53076 (= e!31333 (not (< from!821 (size!1005 lt!9525))))))

(declare-fun head!389 (List!1111) Token!240)

(declare-fun drop!49 (List!1111 Int) List!1111)

(declare-fun apply!118 (List!1111 Int) Token!240)

(assert (=> b!53076 (= (head!389 (drop!49 lt!9525 (+ 1 from!821))) (apply!118 lt!9525 (+ 1 from!821)))))

(declare-datatypes ((Unit!623 0))(
  ( (Unit!624) )
))
(declare-fun lt!9523 () Unit!623)

(declare-fun lemmaDropApply!49 (List!1111 Int) Unit!623)

(assert (=> b!53076 (= lt!9523 (lemmaDropApply!49 lt!9525 (+ 1 from!821)))))

(assert (=> b!53076 (= (head!389 (drop!49 lt!9525 from!821)) (apply!118 lt!9525 from!821))))

(declare-fun lt!9524 () Unit!623)

(assert (=> b!53076 (= lt!9524 (lemmaDropApply!49 lt!9525 from!821))))

(declare-datatypes ((IArray!563 0))(
  ( (IArray!564 (innerList!339 List!1111)) )
))
(declare-datatypes ((Conc!281 0))(
  ( (Node!281 (left!837 Conc!281) (right!1167 Conc!281) (csize!792 Int) (cheight!492 Int)) (Leaf!536 (xs!2860 IArray!563) (csize!793 Int)) (Empty!281) )
))
(declare-datatypes ((BalanceConc!566 0))(
  ( (BalanceConc!567 (c!16965 Conc!281)) )
))
(declare-fun v!6227 () BalanceConc!566)

(declare-fun list!284 (BalanceConc!566) List!1111)

(assert (=> b!53076 (= lt!9525 (list!284 v!6227))))

(declare-fun b!53077 () Bool)

(declare-fun e!31329 () Bool)

(assert (=> b!53077 (= e!31329 e!31333)))

(declare-fun res!34313 () Bool)

(assert (=> b!53077 (=> (not res!34313) (not e!31333))))

(declare-fun lt!9526 () Int)

(assert (=> b!53077 (= res!34313 (<= from!821 lt!9526))))

(declare-fun size!1006 (BalanceConc!566) Int)

(assert (=> b!53077 (= lt!9526 (size!1006 v!6227))))

(assert (=> b!53078 (= e!31332 (and tp!34318 tp!34315))))

(declare-fun b!53079 () Bool)

(declare-fun res!34315 () Bool)

(assert (=> b!53079 (=> (not res!34315) (not e!31333))))

(declare-datatypes ((LexerInterface!130 0))(
  ( (LexerInterfaceExt!127 (__x!1552 Int)) (Lexer!128) )
))
(declare-fun thiss!11059 () LexerInterface!130)

(declare-fun rulesProduceEachTokenIndividually!68 (LexerInterface!130 List!1110 BalanceConc!566) Bool)

(assert (=> b!53079 (= res!34315 (rulesProduceEachTokenIndividually!68 thiss!11059 rules!1069 v!6227))))

(declare-fun b!53080 () Bool)

(declare-fun res!34316 () Bool)

(assert (=> b!53080 (=> (not res!34316) (not e!31333))))

(assert (=> b!53080 (= res!34316 (< from!821 (- lt!9526 1)))))

(declare-fun b!53074 () Bool)

(declare-fun res!34314 () Bool)

(assert (=> b!53074 (=> (not res!34314) (not e!31333))))

(declare-fun rulesInvariant!124 (LexerInterface!130 List!1110) Bool)

(assert (=> b!53074 (= res!34314 (rulesInvariant!124 thiss!11059 rules!1069))))

(declare-fun res!34318 () Bool)

(assert (=> start!4056 (=> (not res!34318) (not e!31329))))

(assert (=> start!4056 (= res!34318 (and (is-Lexer!128 thiss!11059) (>= from!821 0)))))

(assert (=> start!4056 e!31329))

(assert (=> start!4056 true))

(declare-fun e!31328 () Bool)

(declare-fun inv!1458 (BalanceConc!566) Bool)

(assert (=> start!4056 (and (inv!1458 v!6227) e!31328)))

(declare-fun e!31330 () Bool)

(assert (=> start!4056 e!31330))

(declare-fun b!53081 () Bool)

(declare-fun tp!34317 () Bool)

(assert (=> b!53081 (= e!31330 (and e!31327 tp!34317))))

(declare-fun b!53082 () Bool)

(declare-fun tp!34319 () Bool)

(declare-fun inv!1459 (Conc!281) Bool)

(assert (=> b!53082 (= e!31328 (and (inv!1459 (c!16965 v!6227)) tp!34319))))

(assert (= (and start!4056 res!34318) b!53077))

(assert (= (and b!53077 res!34313) b!53073))

(assert (= (and b!53073 res!34317) b!53074))

(assert (= (and b!53074 res!34314) b!53079))

(assert (= (and b!53079 res!34315) b!53080))

(assert (= (and b!53080 res!34316) b!53076))

(assert (= start!4056 b!53082))

(assert (= b!53075 b!53078))

(assert (= b!53081 b!53075))

(assert (= (and start!4056 (is-Cons!1104 rules!1069)) b!53081))

(declare-fun m!27086 () Bool)

(assert (=> b!53076 m!27086))

(declare-fun m!27088 () Bool)

(assert (=> b!53076 m!27088))

(declare-fun m!27090 () Bool)

(assert (=> b!53076 m!27090))

(declare-fun m!27092 () Bool)

(assert (=> b!53076 m!27092))

(declare-fun m!27094 () Bool)

(assert (=> b!53076 m!27094))

(declare-fun m!27096 () Bool)

(assert (=> b!53076 m!27096))

(declare-fun m!27098 () Bool)

(assert (=> b!53076 m!27098))

(declare-fun m!27100 () Bool)

(assert (=> b!53076 m!27100))

(assert (=> b!53076 m!27096))

(declare-fun m!27102 () Bool)

(assert (=> b!53076 m!27102))

(assert (=> b!53076 m!27094))

(declare-fun m!27104 () Bool)

(assert (=> b!53076 m!27104))

(declare-fun m!27106 () Bool)

(assert (=> b!53079 m!27106))

(declare-fun m!27108 () Bool)

(assert (=> b!53082 m!27108))

(declare-fun m!27110 () Bool)

(assert (=> b!53074 m!27110))

(declare-fun m!27112 () Bool)

(assert (=> b!53075 m!27112))

(declare-fun m!27114 () Bool)

(assert (=> b!53075 m!27114))

(declare-fun m!27116 () Bool)

(assert (=> b!53073 m!27116))

(declare-fun m!27118 () Bool)

(assert (=> start!4056 m!27118))

(declare-fun m!27120 () Bool)

(assert (=> b!53077 m!27120))

(push 1)

(assert b_and!1765)

(assert (not b!53079))

(assert (not b!53076))

(assert (not b_next!1713))

(assert (not b!53073))

(assert b_and!1763)

(assert (not b!53082))

(assert (not b_next!1715))

(assert (not start!4056))

(assert (not b!53074))

(assert (not b!53075))

(assert (not b!53077))

(assert (not b!53081))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1765)

(assert b_and!1763)

(assert (not b_next!1713))

(assert (not b_next!1715))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6559 () Bool)

(declare-fun lt!9541 () Int)

(assert (=> d!6559 (= lt!9541 (size!1005 (list!284 v!6227)))))

(declare-fun size!1010 (Conc!281) Int)

(assert (=> d!6559 (= lt!9541 (size!1010 (c!16965 v!6227)))))

(assert (=> d!6559 (= (size!1006 v!6227) lt!9541)))

(declare-fun bs!6715 () Bool)

(assert (= bs!6715 d!6559))

(assert (=> bs!6715 m!27086))

(assert (=> bs!6715 m!27086))

(declare-fun m!27158 () Bool)

(assert (=> bs!6715 m!27158))

(declare-fun m!27160 () Bool)

(assert (=> bs!6715 m!27160))

(assert (=> b!53077 d!6559))

(declare-fun d!6561 () Bool)

(declare-fun c!16971 () Bool)

(assert (=> d!6561 (= c!16971 (is-Node!281 (c!16965 v!6227)))))

(declare-fun e!31359 () Bool)

(assert (=> d!6561 (= (inv!1459 (c!16965 v!6227)) e!31359)))

(declare-fun b!53119 () Bool)

(declare-fun inv!1463 (Conc!281) Bool)

(assert (=> b!53119 (= e!31359 (inv!1463 (c!16965 v!6227)))))

(declare-fun b!53120 () Bool)

(declare-fun e!31360 () Bool)

(assert (=> b!53120 (= e!31359 e!31360)))

(declare-fun res!34343 () Bool)

(assert (=> b!53120 (= res!34343 (not (is-Leaf!536 (c!16965 v!6227))))))

(assert (=> b!53120 (=> res!34343 e!31360)))

(declare-fun b!53121 () Bool)

(declare-fun inv!1464 (Conc!281) Bool)

(assert (=> b!53121 (= e!31360 (inv!1464 (c!16965 v!6227)))))

(assert (= (and d!6561 c!16971) b!53119))

(assert (= (and d!6561 (not c!16971)) b!53120))

(assert (= (and b!53120 (not res!34343)) b!53121))

(declare-fun m!27162 () Bool)

(assert (=> b!53119 m!27162))

(declare-fun m!27164 () Bool)

(assert (=> b!53121 m!27164))

(assert (=> b!53082 d!6561))

(declare-fun d!6563 () Bool)

(declare-fun isBalanced!41 (Conc!281) Bool)

(assert (=> d!6563 (= (inv!1458 v!6227) (isBalanced!41 (c!16965 v!6227)))))

(declare-fun bs!6716 () Bool)

(assert (= bs!6716 d!6563))

(declare-fun m!27166 () Bool)

(assert (=> bs!6716 m!27166))

(assert (=> start!4056 d!6563))

(declare-fun d!6567 () Bool)

(assert (=> d!6567 (= (head!389 (drop!49 lt!9525 from!821)) (h!6502 (drop!49 lt!9525 from!821)))))

(assert (=> b!53076 d!6567))

(declare-fun d!6569 () Bool)

(assert (=> d!6569 (= (head!389 (drop!49 lt!9525 (+ 1 from!821))) (apply!118 lt!9525 (+ 1 from!821)))))

(declare-fun lt!9544 () Unit!623)

(declare-fun choose!1192 (List!1111 Int) Unit!623)

(assert (=> d!6569 (= lt!9544 (choose!1192 lt!9525 (+ 1 from!821)))))

(declare-fun e!31363 () Bool)

(assert (=> d!6569 e!31363))

(declare-fun res!34346 () Bool)

(assert (=> d!6569 (=> (not res!34346) (not e!31363))))

(assert (=> d!6569 (= res!34346 (>= (+ 1 from!821) 0))))

(assert (=> d!6569 (= (lemmaDropApply!49 lt!9525 (+ 1 from!821)) lt!9544)))

(declare-fun b!53124 () Bool)

(assert (=> b!53124 (= e!31363 (< (+ 1 from!821) (size!1005 lt!9525)))))

(assert (= (and d!6569 res!34346) b!53124))

(assert (=> d!6569 m!27094))

(assert (=> d!6569 m!27094))

(assert (=> d!6569 m!27104))

(assert (=> d!6569 m!27100))

(declare-fun m!27168 () Bool)

(assert (=> d!6569 m!27168))

(assert (=> b!53124 m!27088))

(assert (=> b!53076 d!6569))

(declare-fun d!6573 () Bool)

(declare-fun lt!9547 () Int)

(assert (=> d!6573 (>= lt!9547 0)))

(declare-fun e!31366 () Int)

(assert (=> d!6573 (= lt!9547 e!31366)))

(declare-fun c!16974 () Bool)

(assert (=> d!6573 (= c!16974 (is-Nil!1105 lt!9525))))

(assert (=> d!6573 (= (size!1005 lt!9525) lt!9547)))

(declare-fun b!53129 () Bool)

(assert (=> b!53129 (= e!31366 0)))

(declare-fun b!53130 () Bool)

(assert (=> b!53130 (= e!31366 (+ 1 (size!1005 (t!17370 lt!9525))))))

(assert (= (and d!6573 c!16974) b!53129))

(assert (= (and d!6573 (not c!16974)) b!53130))

(declare-fun m!27170 () Bool)

(assert (=> b!53130 m!27170))

(assert (=> b!53076 d!6573))

(declare-fun d!6575 () Bool)

(assert (=> d!6575 (= (head!389 (drop!49 lt!9525 from!821)) (apply!118 lt!9525 from!821))))

(declare-fun lt!9548 () Unit!623)

(assert (=> d!6575 (= lt!9548 (choose!1192 lt!9525 from!821))))

(declare-fun e!31367 () Bool)

(assert (=> d!6575 e!31367))

(declare-fun res!34347 () Bool)

(assert (=> d!6575 (=> (not res!34347) (not e!31367))))

(assert (=> d!6575 (= res!34347 (>= from!821 0))))

(assert (=> d!6575 (= (lemmaDropApply!49 lt!9525 from!821) lt!9548)))

(declare-fun b!53131 () Bool)

(assert (=> b!53131 (= e!31367 (< from!821 (size!1005 lt!9525)))))

(assert (= (and d!6575 res!34347) b!53131))

(assert (=> d!6575 m!27096))

(assert (=> d!6575 m!27096))

(assert (=> d!6575 m!27102))

(assert (=> d!6575 m!27092))

(declare-fun m!27172 () Bool)

(assert (=> d!6575 m!27172))

(assert (=> b!53131 m!27088))

(assert (=> b!53076 d!6575))

(declare-fun d!6577 () Bool)

(declare-fun lt!9551 () Token!240)

(declare-fun contains!133 (List!1111 Token!240) Bool)

(assert (=> d!6577 (contains!133 lt!9525 lt!9551)))

(declare-fun e!31375 () Token!240)

(assert (=> d!6577 (= lt!9551 e!31375)))

(declare-fun c!16977 () Bool)

(assert (=> d!6577 (= c!16977 (= from!821 0))))

(declare-fun e!31376 () Bool)

(assert (=> d!6577 e!31376))

(declare-fun res!34353 () Bool)

(assert (=> d!6577 (=> (not res!34353) (not e!31376))))

(assert (=> d!6577 (= res!34353 (<= 0 from!821))))

(assert (=> d!6577 (= (apply!118 lt!9525 from!821) lt!9551)))

(declare-fun b!53141 () Bool)

(assert (=> b!53141 (= e!31376 (< from!821 (size!1005 lt!9525)))))

(declare-fun b!53142 () Bool)

(assert (=> b!53142 (= e!31375 (head!389 lt!9525))))

(declare-fun b!53143 () Bool)

(declare-fun tail!74 (List!1111) List!1111)

(assert (=> b!53143 (= e!31375 (apply!118 (tail!74 lt!9525) (- from!821 1)))))

(assert (= (and d!6577 res!34353) b!53141))

(assert (= (and d!6577 c!16977) b!53142))

(assert (= (and d!6577 (not c!16977)) b!53143))

(declare-fun m!27178 () Bool)

(assert (=> d!6577 m!27178))

(assert (=> b!53141 m!27088))

(declare-fun m!27180 () Bool)

(assert (=> b!53142 m!27180))

(declare-fun m!27182 () Bool)

(assert (=> b!53143 m!27182))

(assert (=> b!53143 m!27182))

(declare-fun m!27184 () Bool)

(assert (=> b!53143 m!27184))

(assert (=> b!53076 d!6577))

(declare-fun b!53162 () Bool)

(declare-fun e!31387 () Int)

(declare-fun call!3385 () Int)

(assert (=> b!53162 (= e!31387 call!3385)))

(declare-fun b!53163 () Bool)

(declare-fun e!31388 () Int)

(assert (=> b!53163 (= e!31388 (- call!3385 from!821))))

(declare-fun b!53164 () Bool)

(assert (=> b!53164 (= e!31388 0)))

(declare-fun b!53165 () Bool)

(declare-fun e!31389 () Bool)

(declare-fun lt!9554 () List!1111)

(assert (=> b!53165 (= e!31389 (= (size!1005 lt!9554) e!31387))))

(declare-fun c!16989 () Bool)

(assert (=> b!53165 (= c!16989 (<= from!821 0))))

(declare-fun d!6581 () Bool)

(assert (=> d!6581 e!31389))

(declare-fun res!34356 () Bool)

(assert (=> d!6581 (=> (not res!34356) (not e!31389))))

(declare-fun content!33 (List!1111) (Set Token!240))

(assert (=> d!6581 (= res!34356 (set.subset (content!33 lt!9554) (content!33 lt!9525)))))

(declare-fun e!31391 () List!1111)

(assert (=> d!6581 (= lt!9554 e!31391)))

(declare-fun c!16987 () Bool)

(assert (=> d!6581 (= c!16987 (is-Nil!1105 lt!9525))))

(assert (=> d!6581 (= (drop!49 lt!9525 from!821) lt!9554)))

(declare-fun b!53166 () Bool)

(assert (=> b!53166 (= e!31391 Nil!1105)))

(declare-fun bm!3380 () Bool)

(assert (=> bm!3380 (= call!3385 (size!1005 lt!9525))))

(declare-fun b!53167 () Bool)

(declare-fun e!31390 () List!1111)

(assert (=> b!53167 (= e!31390 (drop!49 (t!17370 lt!9525) (- from!821 1)))))

(declare-fun b!53168 () Bool)

(assert (=> b!53168 (= e!31390 lt!9525)))

(declare-fun b!53169 () Bool)

(assert (=> b!53169 (= e!31391 e!31390)))

(declare-fun c!16986 () Bool)

(assert (=> b!53169 (= c!16986 (<= from!821 0))))

(declare-fun b!53170 () Bool)

(assert (=> b!53170 (= e!31387 e!31388)))

(declare-fun c!16988 () Bool)

(assert (=> b!53170 (= c!16988 (>= from!821 call!3385))))

(assert (= (and d!6581 c!16987) b!53166))

(assert (= (and d!6581 (not c!16987)) b!53169))

(assert (= (and b!53169 c!16986) b!53168))

(assert (= (and b!53169 (not c!16986)) b!53167))

(assert (= (and d!6581 res!34356) b!53165))

(assert (= (and b!53165 c!16989) b!53162))

(assert (= (and b!53165 (not c!16989)) b!53170))

(assert (= (and b!53170 c!16988) b!53164))

(assert (= (and b!53170 (not c!16988)) b!53163))

(assert (= (or b!53162 b!53170 b!53163) bm!3380))

(declare-fun m!27186 () Bool)

(assert (=> b!53165 m!27186))

(declare-fun m!27188 () Bool)

(assert (=> d!6581 m!27188))

(declare-fun m!27190 () Bool)

(assert (=> d!6581 m!27190))

(assert (=> bm!3380 m!27088))

(declare-fun m!27192 () Bool)

(assert (=> b!53167 m!27192))

(assert (=> b!53076 d!6581))

(declare-fun d!6585 () Bool)

(assert (=> d!6585 (= (head!389 (drop!49 lt!9525 (+ 1 from!821))) (h!6502 (drop!49 lt!9525 (+ 1 from!821))))))

(assert (=> b!53076 d!6585))

(declare-fun d!6587 () Bool)

(declare-fun list!286 (Conc!281) List!1111)

(assert (=> d!6587 (= (list!284 v!6227) (list!286 (c!16965 v!6227)))))

(declare-fun bs!6717 () Bool)

(assert (= bs!6717 d!6587))

(declare-fun m!27194 () Bool)

(assert (=> bs!6717 m!27194))

(assert (=> b!53076 d!6587))

(declare-fun d!6589 () Bool)

(declare-fun lt!9555 () Token!240)

(assert (=> d!6589 (contains!133 lt!9525 lt!9555)))

(declare-fun e!31392 () Token!240)

(assert (=> d!6589 (= lt!9555 e!31392)))

(declare-fun c!16990 () Bool)

(assert (=> d!6589 (= c!16990 (= (+ 1 from!821) 0))))

(declare-fun e!31393 () Bool)

(assert (=> d!6589 e!31393))

(declare-fun res!34357 () Bool)

(assert (=> d!6589 (=> (not res!34357) (not e!31393))))

(assert (=> d!6589 (= res!34357 (<= 0 (+ 1 from!821)))))

(assert (=> d!6589 (= (apply!118 lt!9525 (+ 1 from!821)) lt!9555)))

(declare-fun b!53171 () Bool)

(assert (=> b!53171 (= e!31393 (< (+ 1 from!821) (size!1005 lt!9525)))))

(declare-fun b!53172 () Bool)

(assert (=> b!53172 (= e!31392 (head!389 lt!9525))))

(declare-fun b!53173 () Bool)

(assert (=> b!53173 (= e!31392 (apply!118 (tail!74 lt!9525) (- (+ 1 from!821) 1)))))

(assert (= (and d!6589 res!34357) b!53171))

(assert (= (and d!6589 c!16990) b!53172))

(assert (= (and d!6589 (not c!16990)) b!53173))

(declare-fun m!27196 () Bool)

(assert (=> d!6589 m!27196))

(assert (=> b!53171 m!27088))

(assert (=> b!53172 m!27180))

(assert (=> b!53173 m!27182))

(assert (=> b!53173 m!27182))

(declare-fun m!27198 () Bool)

(assert (=> b!53173 m!27198))

(assert (=> b!53076 d!6589))

(declare-fun b!53174 () Bool)

(declare-fun e!31394 () Int)

(declare-fun call!3386 () Int)

(assert (=> b!53174 (= e!31394 call!3386)))

(declare-fun b!53175 () Bool)

(declare-fun e!31395 () Int)

(assert (=> b!53175 (= e!31395 (- call!3386 (+ 1 from!821)))))

(declare-fun b!53176 () Bool)

(assert (=> b!53176 (= e!31395 0)))

(declare-fun b!53177 () Bool)

(declare-fun e!31396 () Bool)

(declare-fun lt!9556 () List!1111)

(assert (=> b!53177 (= e!31396 (= (size!1005 lt!9556) e!31394))))

(declare-fun c!16994 () Bool)

(assert (=> b!53177 (= c!16994 (<= (+ 1 from!821) 0))))

(declare-fun d!6591 () Bool)

(assert (=> d!6591 e!31396))

(declare-fun res!34358 () Bool)

(assert (=> d!6591 (=> (not res!34358) (not e!31396))))

(assert (=> d!6591 (= res!34358 (set.subset (content!33 lt!9556) (content!33 lt!9525)))))

(declare-fun e!31398 () List!1111)

(assert (=> d!6591 (= lt!9556 e!31398)))

(declare-fun c!16992 () Bool)

(assert (=> d!6591 (= c!16992 (is-Nil!1105 lt!9525))))

(assert (=> d!6591 (= (drop!49 lt!9525 (+ 1 from!821)) lt!9556)))

(declare-fun b!53178 () Bool)

(assert (=> b!53178 (= e!31398 Nil!1105)))

(declare-fun bm!3381 () Bool)

(assert (=> bm!3381 (= call!3386 (size!1005 lt!9525))))

(declare-fun b!53179 () Bool)

(declare-fun e!31397 () List!1111)

(assert (=> b!53179 (= e!31397 (drop!49 (t!17370 lt!9525) (- (+ 1 from!821) 1)))))

(declare-fun b!53180 () Bool)

(assert (=> b!53180 (= e!31397 lt!9525)))

(declare-fun b!53181 () Bool)

(assert (=> b!53181 (= e!31398 e!31397)))

(declare-fun c!16991 () Bool)

(assert (=> b!53181 (= c!16991 (<= (+ 1 from!821) 0))))

(declare-fun b!53182 () Bool)

(assert (=> b!53182 (= e!31394 e!31395)))

(declare-fun c!16993 () Bool)

(assert (=> b!53182 (= c!16993 (>= (+ 1 from!821) call!3386))))

(assert (= (and d!6591 c!16992) b!53178))

(assert (= (and d!6591 (not c!16992)) b!53181))

(assert (= (and b!53181 c!16991) b!53180))

(assert (= (and b!53181 (not c!16991)) b!53179))

(assert (= (and d!6591 res!34358) b!53177))

(assert (= (and b!53177 c!16994) b!53174))

(assert (= (and b!53177 (not c!16994)) b!53182))

(assert (= (and b!53182 c!16993) b!53176))

(assert (= (and b!53182 (not c!16993)) b!53175))

(assert (= (or b!53174 b!53182 b!53175) bm!3381))

(declare-fun m!27200 () Bool)

(assert (=> b!53177 m!27200))

(declare-fun m!27202 () Bool)

(assert (=> d!6591 m!27202))

(assert (=> d!6591 m!27190))

(assert (=> bm!3381 m!27088))

(declare-fun m!27204 () Bool)

(assert (=> b!53179 m!27204))

(assert (=> b!53076 d!6591))

(declare-fun d!6593 () Bool)

(assert (=> d!6593 (= (inv!1454 (tag!416 (h!6501 rules!1069))) (= (mod (str.len (value!9681 (tag!416 (h!6501 rules!1069)))) 2) 0))))

(assert (=> b!53075 d!6593))

(declare-fun d!6595 () Bool)

(declare-fun res!34361 () Bool)

(declare-fun e!31401 () Bool)

(assert (=> d!6595 (=> (not res!34361) (not e!31401))))

(declare-fun semiInverseModEq!24 (Int Int) Bool)

(assert (=> d!6595 (= res!34361 (semiInverseModEq!24 (toChars!576 (transformation!238 (h!6501 rules!1069))) (toValue!717 (transformation!238 (h!6501 rules!1069)))))))

(assert (=> d!6595 (= (inv!1457 (transformation!238 (h!6501 rules!1069))) e!31401)))

(declare-fun b!53185 () Bool)

(declare-fun equivClasses!20 (Int Int) Bool)

(assert (=> b!53185 (= e!31401 (equivClasses!20 (toChars!576 (transformation!238 (h!6501 rules!1069))) (toValue!717 (transformation!238 (h!6501 rules!1069)))))))

(assert (= (and d!6595 res!34361) b!53185))

(declare-fun m!27206 () Bool)

(assert (=> d!6595 m!27206))

(declare-fun m!27208 () Bool)

(assert (=> b!53185 m!27208))

(assert (=> b!53075 d!6595))

(declare-fun d!6597 () Bool)

(declare-fun res!34364 () Bool)

(declare-fun e!31404 () Bool)

(assert (=> d!6597 (=> (not res!34364) (not e!31404))))

(declare-fun rulesValid!34 (LexerInterface!130 List!1110) Bool)

(assert (=> d!6597 (= res!34364 (rulesValid!34 thiss!11059 rules!1069))))

(assert (=> d!6597 (= (rulesInvariant!124 thiss!11059 rules!1069) e!31404)))

(declare-fun b!53188 () Bool)

(declare-datatypes ((List!1116 0))(
  ( (Nil!1110) (Cons!1110 (h!6507 String!1534) (t!17381 List!1116)) )
))
(declare-fun noDuplicateTag!34 (LexerInterface!130 List!1110 List!1116) Bool)

(assert (=> b!53188 (= e!31404 (noDuplicateTag!34 thiss!11059 rules!1069 Nil!1110))))

(assert (= (and d!6597 res!34364) b!53188))

(declare-fun m!27210 () Bool)

(assert (=> d!6597 m!27210))

(declare-fun m!27212 () Bool)

(assert (=> b!53188 m!27212))

(assert (=> b!53074 d!6597))

(declare-fun b!53202 () Bool)

(declare-fun e!31416 () Bool)

(assert (=> b!53202 (= e!31416 true)))

(declare-fun b!53201 () Bool)

(declare-fun e!31415 () Bool)

(assert (=> b!53201 (= e!31415 e!31416)))

(declare-fun b!53200 () Bool)

(declare-fun e!31414 () Bool)

(assert (=> b!53200 (= e!31414 e!31415)))

(declare-fun d!6599 () Bool)

(assert (=> d!6599 e!31414))

(assert (= b!53201 b!53202))

(assert (= b!53200 b!53201))

(assert (= (and d!6599 (is-Cons!1104 rules!1069)) b!53200))

(declare-fun order!337 () Int)

(declare-fun order!339 () Int)

(declare-fun lambda!1084 () Int)

(declare-fun dynLambda!195 (Int Int) Int)

(declare-fun dynLambda!196 (Int Int) Int)

(assert (=> b!53202 (< (dynLambda!195 order!337 (toValue!717 (transformation!238 (h!6501 rules!1069)))) (dynLambda!196 order!339 lambda!1084))))

(declare-fun order!341 () Int)

(declare-fun dynLambda!197 (Int Int) Int)

(assert (=> b!53202 (< (dynLambda!197 order!341 (toChars!576 (transformation!238 (h!6501 rules!1069)))) (dynLambda!196 order!339 lambda!1084))))

(assert (=> d!6599 true))

(declare-fun e!31407 () Bool)

(assert (=> d!6599 e!31407))

(declare-fun res!34367 () Bool)

(assert (=> d!6599 (=> (not res!34367) (not e!31407))))

(declare-fun lt!9561 () Bool)

(declare-fun forall!131 (List!1111 Int) Bool)

(assert (=> d!6599 (= res!34367 (= lt!9561 (forall!131 (list!284 v!6227) lambda!1084)))))

(declare-fun forall!132 (BalanceConc!566 Int) Bool)

(assert (=> d!6599 (= lt!9561 (forall!132 v!6227 lambda!1084))))

(assert (=> d!6599 (not (isEmpty!224 rules!1069))))

(assert (=> d!6599 (= (rulesProduceEachTokenIndividually!68 thiss!11059 rules!1069 v!6227) lt!9561)))

(declare-fun b!53191 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!42 (LexerInterface!130 List!1110 List!1111) Bool)

(assert (=> b!53191 (= e!31407 (= lt!9561 (rulesProduceEachTokenIndividuallyList!42 thiss!11059 rules!1069 (list!284 v!6227))))))

(assert (= (and d!6599 res!34367) b!53191))

(assert (=> d!6599 m!27086))

(assert (=> d!6599 m!27086))

(declare-fun m!27214 () Bool)

(assert (=> d!6599 m!27214))

(declare-fun m!27216 () Bool)

(assert (=> d!6599 m!27216))

(assert (=> d!6599 m!27116))

(assert (=> b!53191 m!27086))

(assert (=> b!53191 m!27086))

(declare-fun m!27218 () Bool)

(assert (=> b!53191 m!27218))

(assert (=> b!53079 d!6599))

(declare-fun d!6601 () Bool)

(assert (=> d!6601 (= (isEmpty!224 rules!1069) (is-Nil!1104 rules!1069))))

(assert (=> b!53073 d!6601))

(declare-fun tp!34342 () Bool)

(declare-fun b!53213 () Bool)

(declare-fun tp!34341 () Bool)

(declare-fun e!31422 () Bool)

(assert (=> b!53213 (= e!31422 (and (inv!1459 (left!837 (c!16965 v!6227))) tp!34341 (inv!1459 (right!1167 (c!16965 v!6227))) tp!34342))))

(declare-fun b!53215 () Bool)

(declare-fun e!31421 () Bool)

(declare-fun tp!34343 () Bool)

(assert (=> b!53215 (= e!31421 tp!34343)))

(declare-fun b!53214 () Bool)

(declare-fun inv!1465 (IArray!563) Bool)

(assert (=> b!53214 (= e!31422 (and (inv!1465 (xs!2860 (c!16965 v!6227))) e!31421))))

(assert (=> b!53082 (= tp!34319 (and (inv!1459 (c!16965 v!6227)) e!31422))))

(assert (= (and b!53082 (is-Node!281 (c!16965 v!6227))) b!53213))

(assert (= b!53214 b!53215))

(assert (= (and b!53082 (is-Leaf!536 (c!16965 v!6227))) b!53214))

(declare-fun m!27220 () Bool)

(assert (=> b!53213 m!27220))

(declare-fun m!27222 () Bool)

(assert (=> b!53213 m!27222))

(declare-fun m!27224 () Bool)

(assert (=> b!53214 m!27224))

(assert (=> b!53082 m!27108))

(declare-fun b!53226 () Bool)

(declare-fun b_free!1721 () Bool)

(declare-fun b_next!1721 () Bool)

(assert (=> b!53226 (= b_free!1721 (not b_next!1721))))

(declare-fun tp!34352 () Bool)

(declare-fun b_and!1771 () Bool)

(assert (=> b!53226 (= tp!34352 b_and!1771)))

(declare-fun b_free!1723 () Bool)

(declare-fun b_next!1723 () Bool)

(assert (=> b!53226 (= b_free!1723 (not b_next!1723))))

(declare-fun tp!34354 () Bool)

(declare-fun b_and!1773 () Bool)

(assert (=> b!53226 (= tp!34354 b_and!1773)))

(declare-fun e!31434 () Bool)

(assert (=> b!53226 (= e!31434 (and tp!34352 tp!34354))))

(declare-fun b!53225 () Bool)

(declare-fun tp!34355 () Bool)

(declare-fun e!31432 () Bool)

(assert (=> b!53225 (= e!31432 (and tp!34355 (inv!1454 (tag!416 (h!6501 (t!17369 rules!1069)))) (inv!1457 (transformation!238 (h!6501 (t!17369 rules!1069)))) e!31434))))

(declare-fun b!53224 () Bool)

(declare-fun e!31433 () Bool)

(declare-fun tp!34353 () Bool)

(assert (=> b!53224 (= e!31433 (and e!31432 tp!34353))))

(assert (=> b!53081 (= tp!34317 e!31433)))

(assert (= b!53225 b!53226))

(assert (= b!53224 b!53225))

(assert (= (and b!53081 (is-Cons!1104 (t!17369 rules!1069))) b!53224))

(declare-fun m!27226 () Bool)

(assert (=> b!53225 m!27226))

(declare-fun m!27228 () Bool)

(assert (=> b!53225 m!27228))

(declare-fun b!53239 () Bool)

(declare-fun e!31437 () Bool)

(declare-fun tp!34368 () Bool)

(assert (=> b!53239 (= e!31437 tp!34368)))

(declare-fun b!53238 () Bool)

(declare-fun tp!34367 () Bool)

(declare-fun tp!34370 () Bool)

(assert (=> b!53238 (= e!31437 (and tp!34367 tp!34370))))

(declare-fun b!53240 () Bool)

(declare-fun tp!34366 () Bool)

(declare-fun tp!34369 () Bool)

(assert (=> b!53240 (= e!31437 (and tp!34366 tp!34369))))

(declare-fun b!53237 () Bool)

(declare-fun tp_is_empty!547 () Bool)

(assert (=> b!53237 (= e!31437 tp_is_empty!547)))

(assert (=> b!53075 (= tp!34316 e!31437)))

(assert (= (and b!53075 (is-ElementMatch!306 (regex!238 (h!6501 rules!1069)))) b!53237))

(assert (= (and b!53075 (is-Concat!535 (regex!238 (h!6501 rules!1069)))) b!53238))

(assert (= (and b!53075 (is-Star!306 (regex!238 (h!6501 rules!1069)))) b!53239))

(assert (= (and b!53075 (is-Union!306 (regex!238 (h!6501 rules!1069)))) b!53240))

(push 1)

(assert (not b!53177))

(assert (not d!6581))

(assert (not b!53179))

(assert (not b!53240))

(assert (not b!53173))

(assert (not d!6589))

(assert b_and!1771)

(assert (not d!6577))

(assert (not d!6559))

(assert (not b!53172))

(assert (not b!53171))

(assert (not bm!3381))

(assert b_and!1765)

(assert (not d!6587))

(assert (not bm!3380))

(assert (not b!53165))

(assert tp_is_empty!547)

(assert (not b!53213))

(assert (not d!6563))

(assert (not b!53143))

(assert (not b!53121))

(assert (not b!53130))

(assert (not b!53124))

(assert (not b_next!1723))

(assert (not b!53188))

(assert (not b!53214))

(assert (not b_next!1713))

(assert (not d!6591))

(assert (not b!53215))

(assert (not b!53185))

(assert (not d!6575))

(assert (not d!6599))

(assert (not d!6597))

(assert (not b!53141))

(assert (not b!53131))

(assert (not b!53238))

(assert (not b!53200))

(assert (not b!53167))

(assert (not b!53191))

(assert (not d!6569))

(assert b_and!1763)

(assert (not b_next!1721))

(assert (not b!53239))

(assert (not b!53224))

(assert (not b!53119))

(assert (not b!53082))

(assert (not d!6595))

(assert (not b_next!1715))

(assert (not b!53142))

(assert b_and!1773)

(assert (not b!53225))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1765)

(assert (not b_next!1723))

(assert (not b_next!1713))

(assert b_and!1771)

(assert (not b_next!1715))

(assert b_and!1773)

(assert b_and!1763)

(assert (not b_next!1721))

(check-sat)

(pop 1)

