; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!273180 () Bool)

(assert start!273180)

(declare-fun b!2817185 () Bool)

(declare-fun b_free!80365 () Bool)

(declare-fun b_next!81069 () Bool)

(assert (=> b!2817185 (= b_free!80365 (not b_next!81069))))

(declare-fun tp!899400 () Bool)

(declare-fun b_and!205655 () Bool)

(assert (=> b!2817185 (= tp!899400 b_and!205655)))

(declare-fun b_free!80367 () Bool)

(declare-fun b_next!81071 () Bool)

(assert (=> b!2817185 (= b_free!80367 (not b_next!81071))))

(declare-fun tp!899398 () Bool)

(declare-fun b_and!205657 () Bool)

(assert (=> b!2817185 (= tp!899398 b_and!205657)))

(declare-fun b!2817198 () Bool)

(declare-fun b_free!80369 () Bool)

(declare-fun b_next!81073 () Bool)

(assert (=> b!2817198 (= b_free!80369 (not b_next!81073))))

(declare-fun tp!899397 () Bool)

(declare-fun b_and!205659 () Bool)

(assert (=> b!2817198 (= tp!899397 b_and!205659)))

(declare-fun b_free!80371 () Bool)

(declare-fun b_next!81075 () Bool)

(assert (=> b!2817198 (= b_free!80371 (not b_next!81075))))

(declare-fun tp!899402 () Bool)

(declare-fun b_and!205661 () Bool)

(assert (=> b!2817198 (= tp!899402 b_and!205661)))

(declare-fun b!2817209 () Bool)

(declare-fun e!1781654 () Bool)

(assert (=> b!2817209 (= e!1781654 true)))

(declare-fun b!2817208 () Bool)

(declare-fun e!1781653 () Bool)

(assert (=> b!2817208 (= e!1781653 e!1781654)))

(declare-fun b!2817207 () Bool)

(declare-fun e!1781652 () Bool)

(assert (=> b!2817207 (= e!1781652 e!1781653)))

(declare-fun b!2817191 () Bool)

(assert (=> b!2817191 e!1781652))

(assert (= b!2817208 b!2817209))

(assert (= b!2817207 b!2817208))

(declare-datatypes ((C!16818 0))(
  ( (C!16819 (val!10389 Int)) )
))
(declare-datatypes ((List!33098 0))(
  ( (Nil!32974) (Cons!32974 (h!38394 (_ BitVec 16)) (t!230153 List!33098)) )
))
(declare-datatypes ((TokenValue!5158 0))(
  ( (FloatLiteralValue!10316 (text!36551 List!33098)) (TokenValueExt!5157 (__x!21989 Int)) (Broken!25790 (value!158743 List!33098)) (Object!5281) (End!5158) (Def!5158) (Underscore!5158) (Match!5158) (Else!5158) (Error!5158) (Case!5158) (If!5158) (Extends!5158) (Abstract!5158) (Class!5158) (Val!5158) (DelimiterValue!10316 (del!5218 List!33098)) (KeywordValue!5164 (value!158744 List!33098)) (CommentValue!10316 (value!158745 List!33098)) (WhitespaceValue!10316 (value!158746 List!33098)) (IndentationValue!5158 (value!158747 List!33098)) (String!36247) (Int32!5158) (Broken!25791 (value!158748 List!33098)) (Boolean!5159) (Unit!46936) (OperatorValue!5161 (op!5218 List!33098)) (IdentifierValue!10316 (value!158749 List!33098)) (IdentifierValue!10317 (value!158750 List!33098)) (WhitespaceValue!10317 (value!158751 List!33098)) (True!10316) (False!10316) (Broken!25792 (value!158752 List!33098)) (Broken!25793 (value!158753 List!33098)) (True!10317) (RightBrace!5158) (RightBracket!5158) (Colon!5158) (Null!5158) (Comma!5158) (LeftBracket!5158) (False!10317) (LeftBrace!5158) (ImaginaryLiteralValue!5158 (text!36552 List!33098)) (StringLiteralValue!15474 (value!158754 List!33098)) (EOFValue!5158 (value!158755 List!33098)) (IdentValue!5158 (value!158756 List!33098)) (DelimiterValue!10317 (value!158757 List!33098)) (DedentValue!5158 (value!158758 List!33098)) (NewLineValue!5158 (value!158759 List!33098)) (IntegerValue!15474 (value!158760 (_ BitVec 32)) (text!36553 List!33098)) (IntegerValue!15475 (value!158761 Int) (text!36554 List!33098)) (Times!5158) (Or!5158) (Equal!5158) (Minus!5158) (Broken!25794 (value!158762 List!33098)) (And!5158) (Div!5158) (LessEqual!5158) (Mod!5158) (Concat!13476) (Not!5158) (Plus!5158) (SpaceValue!5158 (value!158763 List!33098)) (IntegerValue!15476 (value!158764 Int) (text!36555 List!33098)) (StringLiteralValue!15475 (text!36556 List!33098)) (FloatLiteralValue!10317 (text!36557 List!33098)) (BytesLiteralValue!5158 (value!158765 List!33098)) (CommentValue!10317 (value!158766 List!33098)) (StringLiteralValue!15476 (value!158767 List!33098)) (ErrorTokenValue!5158 (msg!5219 List!33098)) )
))
(declare-datatypes ((List!33099 0))(
  ( (Nil!32975) (Cons!32975 (h!38395 C!16818) (t!230154 List!33099)) )
))
(declare-datatypes ((IArray!20467 0))(
  ( (IArray!20468 (innerList!10291 List!33099)) )
))
(declare-datatypes ((Conc!10231 0))(
  ( (Node!10231 (left!24904 Conc!10231) (right!25234 Conc!10231) (csize!20692 Int) (cheight!10442 Int)) (Leaf!15587 (xs!13343 IArray!20467) (csize!20693 Int)) (Empty!10231) )
))
(declare-datatypes ((BalanceConc!20100 0))(
  ( (BalanceConc!20101 (c!456754 Conc!10231)) )
))
(declare-datatypes ((TokenValueInjection!9744 0))(
  ( (TokenValueInjection!9745 (toValue!6938 Int) (toChars!6797 Int)) )
))
(declare-datatypes ((Regex!8318 0))(
  ( (ElementMatch!8318 (c!456755 C!16818)) (Concat!13477 (regOne!17148 Regex!8318) (regTwo!17148 Regex!8318)) (EmptyExpr!8318) (Star!8318 (reg!8647 Regex!8318)) (EmptyLang!8318) (Union!8318 (regOne!17149 Regex!8318) (regTwo!17149 Regex!8318)) )
))
(declare-datatypes ((String!36248 0))(
  ( (String!36249 (value!158768 String)) )
))
(declare-datatypes ((Rule!9656 0))(
  ( (Rule!9657 (regex!4928 Regex!8318) (tag!5432 String!36248) (isSeparator!4928 Bool) (transformation!4928 TokenValueInjection!9744)) )
))
(declare-datatypes ((List!33100 0))(
  ( (Nil!32976) (Cons!32976 (h!38396 Rule!9656) (t!230155 List!33100)) )
))
(declare-fun rules!4424 () List!33100)

(assert (= (and b!2817191 (is-Cons!32976 rules!4424)) b!2817207))

(declare-fun order!17445 () Int)

(declare-fun lambda!103374 () Int)

(declare-fun order!17447 () Int)

(declare-fun dynLambda!13757 (Int Int) Int)

(declare-fun dynLambda!13758 (Int Int) Int)

(assert (=> b!2817209 (< (dynLambda!13757 order!17445 (toValue!6938 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103374))))

(declare-fun order!17449 () Int)

(declare-fun dynLambda!13759 (Int Int) Int)

(assert (=> b!2817209 (< (dynLambda!13759 order!17449 (toChars!6797 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103374))))

(declare-fun e!1781642 () Bool)

(declare-fun e!1781634 () Bool)

(declare-fun b!2817184 () Bool)

(declare-datatypes ((Token!9258 0))(
  ( (Token!9259 (value!158769 TokenValue!5158) (rule!7356 Rule!9656) (size!25688 Int) (originalCharacters!5660 List!33099)) )
))
(declare-datatypes ((List!33101 0))(
  ( (Nil!32977) (Cons!32977 (h!38397 Token!9258) (t!230156 List!33101)) )
))
(declare-fun l!6581 () List!33101)

(declare-fun tp!899399 () Bool)

(declare-fun inv!44892 (Token!9258) Bool)

(assert (=> b!2817184 (= e!1781642 (and (inv!44892 (h!38397 l!6581)) e!1781634 tp!899399))))

(declare-fun e!1781635 () Bool)

(assert (=> b!2817185 (= e!1781635 (and tp!899400 tp!899398))))

(declare-fun b!2817186 () Bool)

(declare-fun res!1172387 () Bool)

(declare-fun e!1781637 () Bool)

(assert (=> b!2817186 (=> (not res!1172387) (not e!1781637))))

(declare-datatypes ((LexerInterface!4519 0))(
  ( (LexerInterfaceExt!4516 (__x!21990 Int)) (Lexer!4517) )
))
(declare-fun thiss!27755 () LexerInterface!4519)

(declare-fun rulesInvariant!3937 (LexerInterface!4519 List!33100) Bool)

(assert (=> b!2817186 (= res!1172387 (rulesInvariant!3937 thiss!27755 rules!4424))))

(declare-fun b!2817187 () Bool)

(declare-fun e!1781643 () Bool)

(declare-fun e!1781645 () Bool)

(declare-fun tp!899401 () Bool)

(assert (=> b!2817187 (= e!1781643 (and e!1781645 tp!899401))))

(declare-fun b!2817188 () Bool)

(declare-fun res!1172390 () Bool)

(assert (=> b!2817188 (=> (not res!1172390) (not e!1781637))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!656 (LexerInterface!4519 List!33101 List!33100) Bool)

(assert (=> b!2817188 (= res!1172390 (tokensListTwoByTwoPredicateSeparableList!656 thiss!27755 l!6581 rules!4424))))

(declare-fun e!1781641 () Bool)

(declare-fun b!2817189 () Bool)

(declare-fun tp!899403 () Bool)

(declare-fun e!1781633 () Bool)

(declare-fun inv!44889 (String!36248) Bool)

(declare-fun inv!44893 (TokenValueInjection!9744) Bool)

(assert (=> b!2817189 (= e!1781641 (and tp!899403 (inv!44889 (tag!5432 (rule!7356 (h!38397 l!6581)))) (inv!44893 (transformation!4928 (rule!7356 (h!38397 l!6581)))) e!1781633))))

(declare-fun res!1172393 () Bool)

(assert (=> start!273180 (=> (not res!1172393) (not e!1781637))))

(assert (=> start!273180 (= res!1172393 (is-Lexer!4517 thiss!27755))))

(assert (=> start!273180 e!1781637))

(assert (=> start!273180 true))

(assert (=> start!273180 e!1781643))

(assert (=> start!273180 e!1781642))

(declare-fun b!2817190 () Bool)

(declare-fun res!1172391 () Bool)

(assert (=> b!2817190 (=> (not res!1172391) (not e!1781637))))

(declare-fun rulesProduceEachTokenIndividuallyList!1571 (LexerInterface!4519 List!33100 List!33101) Bool)

(assert (=> b!2817190 (= res!1172391 (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 l!6581))))

(declare-fun lt!1006034 () Bool)

(assert (=> b!2817191 (= e!1781637 (not lt!1006034))))

(declare-fun lt!1006033 () List!33101)

(declare-fun forall!6749 (List!33101 Int) Bool)

(assert (=> b!2817191 (forall!6749 lt!1006033 lambda!103374)))

(declare-datatypes ((Unit!46937 0))(
  ( (Unit!46938) )
))
(declare-fun lt!1006032 () Unit!46937)

(declare-fun lemmaForallSubseq!204 (List!33101 List!33101 Int) Unit!46937)

(assert (=> b!2817191 (= lt!1006032 (lemmaForallSubseq!204 lt!1006033 l!6581 lambda!103374))))

(declare-fun e!1781638 () Bool)

(assert (=> b!2817191 (= lt!1006034 e!1781638)))

(declare-fun res!1172389 () Bool)

(assert (=> b!2817191 (=> res!1172389 e!1781638)))

(assert (=> b!2817191 (= res!1172389 (not (is-Cons!32977 lt!1006033)))))

(assert (=> b!2817191 (= lt!1006034 (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 lt!1006033))))

(declare-fun i!1730 () Int)

(declare-fun take!522 (List!33101 Int) List!33101)

(assert (=> b!2817191 (= lt!1006033 (take!522 l!6581 i!1730))))

(declare-fun b!2817192 () Bool)

(declare-fun e!1781636 () Bool)

(assert (=> b!2817192 (= e!1781638 e!1781636)))

(declare-fun res!1172388 () Bool)

(assert (=> b!2817192 (=> (not res!1172388) (not e!1781636))))

(declare-fun rulesProduceIndividualToken!2059 (LexerInterface!4519 List!33100 Token!9258) Bool)

(assert (=> b!2817192 (= res!1172388 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 lt!1006033)))))

(declare-fun b!2817193 () Bool)

(declare-fun tp!899396 () Bool)

(assert (=> b!2817193 (= e!1781645 (and tp!899396 (inv!44889 (tag!5432 (h!38396 rules!4424))) (inv!44893 (transformation!4928 (h!38396 rules!4424))) e!1781635))))

(declare-fun b!2817194 () Bool)

(declare-fun res!1172392 () Bool)

(assert (=> b!2817194 (=> (not res!1172392) (not e!1781637))))

(assert (=> b!2817194 (= res!1172392 (is-Nil!32977 l!6581))))

(declare-fun b!2817195 () Bool)

(assert (=> b!2817195 (= e!1781636 (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 (t!230156 lt!1006033)))))

(declare-fun b!2817196 () Bool)

(declare-fun res!1172394 () Bool)

(assert (=> b!2817196 (=> (not res!1172394) (not e!1781637))))

(declare-fun isEmpty!18245 (List!33100) Bool)

(assert (=> b!2817196 (= res!1172394 (not (isEmpty!18245 rules!4424)))))

(declare-fun tp!899395 () Bool)

(declare-fun b!2817197 () Bool)

(declare-fun inv!21 (TokenValue!5158) Bool)

(assert (=> b!2817197 (= e!1781634 (and (inv!21 (value!158769 (h!38397 l!6581))) e!1781641 tp!899395))))

(assert (=> b!2817198 (= e!1781633 (and tp!899397 tp!899402))))

(assert (= (and start!273180 res!1172393) b!2817196))

(assert (= (and b!2817196 res!1172394) b!2817186))

(assert (= (and b!2817186 res!1172387) b!2817190))

(assert (= (and b!2817190 res!1172391) b!2817188))

(assert (= (and b!2817188 res!1172390) b!2817194))

(assert (= (and b!2817194 res!1172392) b!2817191))

(assert (= (and b!2817191 (not res!1172389)) b!2817192))

(assert (= (and b!2817192 res!1172388) b!2817195))

(assert (= b!2817193 b!2817185))

(assert (= b!2817187 b!2817193))

(assert (= (and start!273180 (is-Cons!32976 rules!4424)) b!2817187))

(assert (= b!2817189 b!2817198))

(assert (= b!2817197 b!2817189))

(assert (= b!2817184 b!2817197))

(assert (= (and start!273180 (is-Cons!32977 l!6581)) b!2817184))

(declare-fun m!3248111 () Bool)

(assert (=> b!2817195 m!3248111))

(declare-fun m!3248113 () Bool)

(assert (=> b!2817188 m!3248113))

(declare-fun m!3248115 () Bool)

(assert (=> b!2817190 m!3248115))

(declare-fun m!3248117 () Bool)

(assert (=> b!2817192 m!3248117))

(declare-fun m!3248119 () Bool)

(assert (=> b!2817189 m!3248119))

(declare-fun m!3248121 () Bool)

(assert (=> b!2817189 m!3248121))

(declare-fun m!3248123 () Bool)

(assert (=> b!2817193 m!3248123))

(declare-fun m!3248125 () Bool)

(assert (=> b!2817193 m!3248125))

(declare-fun m!3248127 () Bool)

(assert (=> b!2817197 m!3248127))

(declare-fun m!3248129 () Bool)

(assert (=> b!2817184 m!3248129))

(declare-fun m!3248131 () Bool)

(assert (=> b!2817196 m!3248131))

(declare-fun m!3248133 () Bool)

(assert (=> b!2817191 m!3248133))

(declare-fun m!3248135 () Bool)

(assert (=> b!2817191 m!3248135))

(declare-fun m!3248137 () Bool)

(assert (=> b!2817191 m!3248137))

(declare-fun m!3248139 () Bool)

(assert (=> b!2817191 m!3248139))

(declare-fun m!3248141 () Bool)

(assert (=> b!2817186 m!3248141))

(push 1)

(assert b_and!205659)

(assert b_and!205655)

(assert (not b!2817190))

(assert (not b_next!81075))

(assert (not b!2817197))

(assert (not b_next!81071))

(assert (not b_next!81069))

(assert (not b!2817191))

(assert b_and!205661)

(assert (not b!2817186))

(assert (not b_next!81073))

(assert (not b!2817188))

(assert (not b!2817195))

(assert (not b!2817187))

(assert (not b!2817207))

(assert (not b!2817193))

(assert (not b!2817192))

(assert (not b!2817196))

(assert b_and!205657)

(assert (not b!2817184))

(assert (not b!2817189))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81073))

(assert b_and!205659)

(assert b_and!205655)

(assert (not b_next!81075))

(assert (not b_next!81071))

(assert (not b_next!81069))

(assert b_and!205657)

(assert b_and!205661)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!818164 () Bool)

(declare-fun lt!1006049 () Bool)

(declare-fun e!1781708 () Bool)

(assert (=> d!818164 (= lt!1006049 e!1781708)))

(declare-fun res!1172431 () Bool)

(assert (=> d!818164 (=> (not res!1172431) (not e!1781708))))

(declare-datatypes ((IArray!20471 0))(
  ( (IArray!20472 (innerList!10293 List!33101)) )
))
(declare-datatypes ((Conc!10233 0))(
  ( (Node!10233 (left!24908 Conc!10233) (right!25238 Conc!10233) (csize!20696 Int) (cheight!10444 Int)) (Leaf!15589 (xs!13345 IArray!20471) (csize!20697 Int)) (Empty!10233) )
))
(declare-datatypes ((BalanceConc!20104 0))(
  ( (BalanceConc!20105 (c!456788 Conc!10233)) )
))
(declare-fun list!12373 (BalanceConc!20104) List!33101)

(declare-datatypes ((tuple2!33354 0))(
  ( (tuple2!33355 (_1!19770 BalanceConc!20104) (_2!19770 BalanceConc!20100)) )
))
(declare-fun lex!1979 (LexerInterface!4519 List!33100 BalanceConc!20100) tuple2!33354)

(declare-fun print!1698 (LexerInterface!4519 BalanceConc!20104) BalanceConc!20100)

(declare-fun singletonSeq!2119 (Token!9258) BalanceConc!20104)

(assert (=> d!818164 (= res!1172431 (= (list!12373 (_1!19770 (lex!1979 thiss!27755 rules!4424 (print!1698 thiss!27755 (singletonSeq!2119 (h!38397 lt!1006033)))))) (list!12373 (singletonSeq!2119 (h!38397 lt!1006033)))))))

(declare-fun e!1781707 () Bool)

(assert (=> d!818164 (= lt!1006049 e!1781707)))

(declare-fun res!1172430 () Bool)

(assert (=> d!818164 (=> (not res!1172430) (not e!1781707))))

(declare-fun lt!1006048 () tuple2!33354)

(declare-fun size!25690 (BalanceConc!20104) Int)

(assert (=> d!818164 (= res!1172430 (= (size!25690 (_1!19770 lt!1006048)) 1))))

(assert (=> d!818164 (= lt!1006048 (lex!1979 thiss!27755 rules!4424 (print!1698 thiss!27755 (singletonSeq!2119 (h!38397 lt!1006033)))))))

(assert (=> d!818164 (not (isEmpty!18245 rules!4424))))

(assert (=> d!818164 (= (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 lt!1006033)) lt!1006049)))

(declare-fun b!2817272 () Bool)

(declare-fun res!1172429 () Bool)

(assert (=> b!2817272 (=> (not res!1172429) (not e!1781707))))

(declare-fun apply!7706 (BalanceConc!20104 Int) Token!9258)

(assert (=> b!2817272 (= res!1172429 (= (apply!7706 (_1!19770 lt!1006048) 0) (h!38397 lt!1006033)))))

(declare-fun b!2817273 () Bool)

(declare-fun isEmpty!18247 (BalanceConc!20100) Bool)

(assert (=> b!2817273 (= e!1781707 (isEmpty!18247 (_2!19770 lt!1006048)))))

(declare-fun b!2817274 () Bool)

(assert (=> b!2817274 (= e!1781708 (isEmpty!18247 (_2!19770 (lex!1979 thiss!27755 rules!4424 (print!1698 thiss!27755 (singletonSeq!2119 (h!38397 lt!1006033)))))))))

(assert (= (and d!818164 res!1172430) b!2817272))

(assert (= (and b!2817272 res!1172429) b!2817273))

(assert (= (and d!818164 res!1172431) b!2817274))

(declare-fun m!3248175 () Bool)

(assert (=> d!818164 m!3248175))

(declare-fun m!3248177 () Bool)

(assert (=> d!818164 m!3248177))

(declare-fun m!3248179 () Bool)

(assert (=> d!818164 m!3248179))

(assert (=> d!818164 m!3248175))

(declare-fun m!3248181 () Bool)

(assert (=> d!818164 m!3248181))

(assert (=> d!818164 m!3248175))

(declare-fun m!3248183 () Bool)

(assert (=> d!818164 m!3248183))

(assert (=> d!818164 m!3248131))

(assert (=> d!818164 m!3248181))

(declare-fun m!3248185 () Bool)

(assert (=> d!818164 m!3248185))

(declare-fun m!3248187 () Bool)

(assert (=> b!2817272 m!3248187))

(declare-fun m!3248189 () Bool)

(assert (=> b!2817273 m!3248189))

(assert (=> b!2817274 m!3248175))

(assert (=> b!2817274 m!3248175))

(assert (=> b!2817274 m!3248181))

(assert (=> b!2817274 m!3248181))

(assert (=> b!2817274 m!3248185))

(declare-fun m!3248191 () Bool)

(assert (=> b!2817274 m!3248191))

(assert (=> b!2817192 d!818164))

(declare-fun b!2817285 () Bool)

(declare-fun e!1781716 () Bool)

(declare-fun e!1781717 () Bool)

(assert (=> b!2817285 (= e!1781716 e!1781717)))

(declare-fun c!456762 () Bool)

(assert (=> b!2817285 (= c!456762 (is-IntegerValue!15475 (value!158769 (h!38397 l!6581))))))

(declare-fun d!818168 () Bool)

(declare-fun c!456763 () Bool)

(assert (=> d!818168 (= c!456763 (is-IntegerValue!15474 (value!158769 (h!38397 l!6581))))))

(assert (=> d!818168 (= (inv!21 (value!158769 (h!38397 l!6581))) e!1781716)))

(declare-fun b!2817286 () Bool)

(declare-fun res!1172434 () Bool)

(declare-fun e!1781715 () Bool)

(assert (=> b!2817286 (=> res!1172434 e!1781715)))

(assert (=> b!2817286 (= res!1172434 (not (is-IntegerValue!15476 (value!158769 (h!38397 l!6581)))))))

(assert (=> b!2817286 (= e!1781717 e!1781715)))

(declare-fun b!2817287 () Bool)

(declare-fun inv!15 (TokenValue!5158) Bool)

(assert (=> b!2817287 (= e!1781715 (inv!15 (value!158769 (h!38397 l!6581))))))

(declare-fun b!2817288 () Bool)

(declare-fun inv!17 (TokenValue!5158) Bool)

(assert (=> b!2817288 (= e!1781717 (inv!17 (value!158769 (h!38397 l!6581))))))

(declare-fun b!2817289 () Bool)

(declare-fun inv!16 (TokenValue!5158) Bool)

(assert (=> b!2817289 (= e!1781716 (inv!16 (value!158769 (h!38397 l!6581))))))

(assert (= (and d!818168 c!456763) b!2817289))

(assert (= (and d!818168 (not c!456763)) b!2817285))

(assert (= (and b!2817285 c!456762) b!2817288))

(assert (= (and b!2817285 (not c!456762)) b!2817286))

(assert (= (and b!2817286 (not res!1172434)) b!2817287))

(declare-fun m!3248193 () Bool)

(assert (=> b!2817287 m!3248193))

(declare-fun m!3248195 () Bool)

(assert (=> b!2817288 m!3248195))

(declare-fun m!3248197 () Bool)

(assert (=> b!2817289 m!3248197))

(assert (=> b!2817197 d!818168))

(declare-fun d!818170 () Bool)

(declare-fun res!1172449 () Bool)

(declare-fun e!1781728 () Bool)

(assert (=> d!818170 (=> res!1172449 e!1781728)))

(assert (=> d!818170 (= res!1172449 (or (not (is-Cons!32977 l!6581)) (not (is-Cons!32977 (t!230156 l!6581)))))))

(assert (=> d!818170 (= (tokensListTwoByTwoPredicateSeparableList!656 thiss!27755 l!6581 rules!4424) e!1781728)))

(declare-fun b!2817303 () Bool)

(declare-fun e!1781729 () Bool)

(assert (=> b!2817303 (= e!1781728 e!1781729)))

(declare-fun res!1172448 () Bool)

(assert (=> b!2817303 (=> (not res!1172448) (not e!1781729))))

(declare-fun separableTokensPredicate!882 (LexerInterface!4519 Token!9258 Token!9258 List!33100) Bool)

(assert (=> b!2817303 (= res!1172448 (separableTokensPredicate!882 thiss!27755 (h!38397 l!6581) (h!38397 (t!230156 l!6581)) rules!4424))))

(declare-fun lt!1006072 () Unit!46937)

(declare-fun Unit!46942 () Unit!46937)

(assert (=> b!2817303 (= lt!1006072 Unit!46942)))

(declare-fun size!25691 (BalanceConc!20100) Int)

(declare-fun charsOf!3057 (Token!9258) BalanceConc!20100)

(assert (=> b!2817303 (> (size!25691 (charsOf!3057 (h!38397 (t!230156 l!6581)))) 0)))

(declare-fun lt!1006070 () Unit!46937)

(declare-fun Unit!46943 () Unit!46937)

(assert (=> b!2817303 (= lt!1006070 Unit!46943)))

(assert (=> b!2817303 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 (t!230156 l!6581)))))

(declare-fun lt!1006076 () Unit!46937)

(declare-fun Unit!46944 () Unit!46937)

(assert (=> b!2817303 (= lt!1006076 Unit!46944)))

(assert (=> b!2817303 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 l!6581))))

(declare-fun lt!1006071 () Unit!46937)

(declare-fun lt!1006075 () Unit!46937)

(assert (=> b!2817303 (= lt!1006071 lt!1006075)))

(assert (=> b!2817303 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 (t!230156 l!6581)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!696 (LexerInterface!4519 List!33100 List!33101 Token!9258) Unit!46937)

(assert (=> b!2817303 (= lt!1006075 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!696 thiss!27755 rules!4424 l!6581 (h!38397 (t!230156 l!6581))))))

(declare-fun lt!1006074 () Unit!46937)

(declare-fun lt!1006073 () Unit!46937)

(assert (=> b!2817303 (= lt!1006074 lt!1006073)))

(assert (=> b!2817303 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 l!6581))))

(assert (=> b!2817303 (= lt!1006073 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!696 thiss!27755 rules!4424 l!6581 (h!38397 l!6581)))))

(declare-fun b!2817304 () Bool)

(assert (=> b!2817304 (= e!1781729 (tokensListTwoByTwoPredicateSeparableList!656 thiss!27755 (Cons!32977 (h!38397 (t!230156 l!6581)) (t!230156 (t!230156 l!6581))) rules!4424))))

(assert (= (and d!818170 (not res!1172449)) b!2817303))

(assert (= (and b!2817303 res!1172448) b!2817304))

(declare-fun m!3248217 () Bool)

(assert (=> b!2817303 m!3248217))

(declare-fun m!3248219 () Bool)

(assert (=> b!2817303 m!3248219))

(declare-fun m!3248221 () Bool)

(assert (=> b!2817303 m!3248221))

(declare-fun m!3248223 () Bool)

(assert (=> b!2817303 m!3248223))

(declare-fun m!3248225 () Bool)

(assert (=> b!2817303 m!3248225))

(assert (=> b!2817303 m!3248223))

(declare-fun m!3248227 () Bool)

(assert (=> b!2817303 m!3248227))

(declare-fun m!3248229 () Bool)

(assert (=> b!2817303 m!3248229))

(declare-fun m!3248231 () Bool)

(assert (=> b!2817304 m!3248231))

(assert (=> b!2817188 d!818170))

(declare-fun d!818174 () Bool)

(assert (=> d!818174 (= (inv!44889 (tag!5432 (h!38396 rules!4424))) (= (mod (str.len (value!158768 (tag!5432 (h!38396 rules!4424)))) 2) 0))))

(assert (=> b!2817193 d!818174))

(declare-fun d!818176 () Bool)

(declare-fun res!1172452 () Bool)

(declare-fun e!1781732 () Bool)

(assert (=> d!818176 (=> (not res!1172452) (not e!1781732))))

(declare-fun semiInverseModEq!2041 (Int Int) Bool)

(assert (=> d!818176 (= res!1172452 (semiInverseModEq!2041 (toChars!6797 (transformation!4928 (h!38396 rules!4424))) (toValue!6938 (transformation!4928 (h!38396 rules!4424)))))))

(assert (=> d!818176 (= (inv!44893 (transformation!4928 (h!38396 rules!4424))) e!1781732)))

(declare-fun b!2817307 () Bool)

(declare-fun equivClasses!1940 (Int Int) Bool)

(assert (=> b!2817307 (= e!1781732 (equivClasses!1940 (toChars!6797 (transformation!4928 (h!38396 rules!4424))) (toValue!6938 (transformation!4928 (h!38396 rules!4424)))))))

(assert (= (and d!818176 res!1172452) b!2817307))

(declare-fun m!3248233 () Bool)

(assert (=> d!818176 m!3248233))

(declare-fun m!3248235 () Bool)

(assert (=> b!2817307 m!3248235))

(assert (=> b!2817193 d!818176))

(declare-fun d!818178 () Bool)

(declare-fun res!1172457 () Bool)

(declare-fun e!1781735 () Bool)

(assert (=> d!818178 (=> (not res!1172457) (not e!1781735))))

(declare-fun isEmpty!18248 (List!33099) Bool)

(assert (=> d!818178 (= res!1172457 (not (isEmpty!18248 (originalCharacters!5660 (h!38397 l!6581)))))))

(assert (=> d!818178 (= (inv!44892 (h!38397 l!6581)) e!1781735)))

(declare-fun b!2817312 () Bool)

(declare-fun res!1172458 () Bool)

(assert (=> b!2817312 (=> (not res!1172458) (not e!1781735))))

(declare-fun list!12374 (BalanceConc!20100) List!33099)

(declare-fun dynLambda!13763 (Int TokenValue!5158) BalanceConc!20100)

(assert (=> b!2817312 (= res!1172458 (= (originalCharacters!5660 (h!38397 l!6581)) (list!12374 (dynLambda!13763 (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))) (value!158769 (h!38397 l!6581))))))))

(declare-fun b!2817313 () Bool)

(declare-fun size!25692 (List!33099) Int)

(assert (=> b!2817313 (= e!1781735 (= (size!25688 (h!38397 l!6581)) (size!25692 (originalCharacters!5660 (h!38397 l!6581)))))))

(assert (= (and d!818178 res!1172457) b!2817312))

(assert (= (and b!2817312 res!1172458) b!2817313))

(declare-fun b_lambda!84215 () Bool)

(assert (=> (not b_lambda!84215) (not b!2817312)))

(declare-fun tb!153669 () Bool)

(declare-fun t!230166 () Bool)

(assert (=> (and b!2817185 (= (toChars!6797 (transformation!4928 (h!38396 rules!4424))) (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581))))) t!230166) tb!153669))

(declare-fun b!2817318 () Bool)

(declare-fun e!1781738 () Bool)

(declare-fun tp!899433 () Bool)

(declare-fun inv!44896 (Conc!10231) Bool)

(assert (=> b!2817318 (= e!1781738 (and (inv!44896 (c!456754 (dynLambda!13763 (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))) (value!158769 (h!38397 l!6581))))) tp!899433))))

(declare-fun result!191254 () Bool)

(declare-fun inv!44897 (BalanceConc!20100) Bool)

(assert (=> tb!153669 (= result!191254 (and (inv!44897 (dynLambda!13763 (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))) (value!158769 (h!38397 l!6581)))) e!1781738))))

(assert (= tb!153669 b!2817318))

(declare-fun m!3248237 () Bool)

(assert (=> b!2817318 m!3248237))

(declare-fun m!3248239 () Bool)

(assert (=> tb!153669 m!3248239))

(assert (=> b!2817312 t!230166))

(declare-fun b_and!205671 () Bool)

(assert (= b_and!205657 (and (=> t!230166 result!191254) b_and!205671)))

(declare-fun t!230168 () Bool)

(declare-fun tb!153671 () Bool)

(assert (=> (and b!2817198 (= (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))) (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581))))) t!230168) tb!153671))

(declare-fun result!191258 () Bool)

(assert (= result!191258 result!191254))

(assert (=> b!2817312 t!230168))

(declare-fun b_and!205673 () Bool)

(assert (= b_and!205661 (and (=> t!230168 result!191258) b_and!205673)))

(declare-fun m!3248241 () Bool)

(assert (=> d!818178 m!3248241))

(declare-fun m!3248243 () Bool)

(assert (=> b!2817312 m!3248243))

(assert (=> b!2817312 m!3248243))

(declare-fun m!3248245 () Bool)

(assert (=> b!2817312 m!3248245))

(declare-fun m!3248247 () Bool)

(assert (=> b!2817313 m!3248247))

(assert (=> b!2817184 d!818178))

(declare-fun d!818180 () Bool)

(assert (=> d!818180 (= (inv!44889 (tag!5432 (rule!7356 (h!38397 l!6581)))) (= (mod (str.len (value!158768 (tag!5432 (rule!7356 (h!38397 l!6581))))) 2) 0))))

(assert (=> b!2817189 d!818180))

(declare-fun d!818182 () Bool)

(declare-fun res!1172459 () Bool)

(declare-fun e!1781739 () Bool)

(assert (=> d!818182 (=> (not res!1172459) (not e!1781739))))

(assert (=> d!818182 (= res!1172459 (semiInverseModEq!2041 (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))) (toValue!6938 (transformation!4928 (rule!7356 (h!38397 l!6581))))))))

(assert (=> d!818182 (= (inv!44893 (transformation!4928 (rule!7356 (h!38397 l!6581)))) e!1781739)))

(declare-fun b!2817319 () Bool)

(assert (=> b!2817319 (= e!1781739 (equivClasses!1940 (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))) (toValue!6938 (transformation!4928 (rule!7356 (h!38397 l!6581))))))))

(assert (= (and d!818182 res!1172459) b!2817319))

(declare-fun m!3248249 () Bool)

(assert (=> d!818182 m!3248249))

(declare-fun m!3248251 () Bool)

(assert (=> b!2817319 m!3248251))

(assert (=> b!2817189 d!818182))

(declare-fun bs!517053 () Bool)

(declare-fun d!818184 () Bool)

(assert (= bs!517053 (and d!818184 b!2817191)))

(declare-fun lambda!103383 () Int)

(assert (=> bs!517053 (= (= thiss!27755 Lexer!4517) (= lambda!103383 lambda!103374))))

(declare-fun b!2817339 () Bool)

(declare-fun e!1781757 () Bool)

(assert (=> b!2817339 (= e!1781757 true)))

(declare-fun b!2817338 () Bool)

(declare-fun e!1781756 () Bool)

(assert (=> b!2817338 (= e!1781756 e!1781757)))

(declare-fun b!2817337 () Bool)

(declare-fun e!1781755 () Bool)

(assert (=> b!2817337 (= e!1781755 e!1781756)))

(assert (=> d!818184 e!1781755))

(assert (= b!2817338 b!2817339))

(assert (= b!2817337 b!2817338))

(assert (= (and d!818184 (is-Cons!32976 rules!4424)) b!2817337))

(assert (=> b!2817339 (< (dynLambda!13757 order!17445 (toValue!6938 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103383))))

(assert (=> b!2817339 (< (dynLambda!13759 order!17449 (toChars!6797 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103383))))

(assert (=> d!818184 true))

(declare-fun lt!1006082 () Bool)

(assert (=> d!818184 (= lt!1006082 (forall!6749 l!6581 lambda!103383))))

(declare-fun e!1781754 () Bool)

(assert (=> d!818184 (= lt!1006082 e!1781754)))

(declare-fun res!1172470 () Bool)

(assert (=> d!818184 (=> res!1172470 e!1781754)))

(assert (=> d!818184 (= res!1172470 (not (is-Cons!32977 l!6581)))))

(assert (=> d!818184 (not (isEmpty!18245 rules!4424))))

(assert (=> d!818184 (= (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 l!6581) lt!1006082)))

(declare-fun b!2817335 () Bool)

(declare-fun e!1781753 () Bool)

(assert (=> b!2817335 (= e!1781754 e!1781753)))

(declare-fun res!1172471 () Bool)

(assert (=> b!2817335 (=> (not res!1172471) (not e!1781753))))

(assert (=> b!2817335 (= res!1172471 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 l!6581)))))

(declare-fun b!2817336 () Bool)

(assert (=> b!2817336 (= e!1781753 (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 (t!230156 l!6581)))))

(assert (= (and d!818184 (not res!1172470)) b!2817335))

(assert (= (and b!2817335 res!1172471) b!2817336))

(declare-fun m!3248259 () Bool)

(assert (=> d!818184 m!3248259))

(assert (=> d!818184 m!3248131))

(assert (=> b!2817335 m!3248229))

(declare-fun m!3248261 () Bool)

(assert (=> b!2817336 m!3248261))

(assert (=> b!2817190 d!818184))

(declare-fun bs!517054 () Bool)

(declare-fun d!818190 () Bool)

(assert (= bs!517054 (and d!818190 b!2817191)))

(declare-fun lambda!103384 () Int)

(assert (=> bs!517054 (= (= thiss!27755 Lexer!4517) (= lambda!103384 lambda!103374))))

(declare-fun bs!517055 () Bool)

(assert (= bs!517055 (and d!818190 d!818184)))

(assert (=> bs!517055 (= lambda!103384 lambda!103383)))

(declare-fun b!2817349 () Bool)

(declare-fun e!1781765 () Bool)

(assert (=> b!2817349 (= e!1781765 true)))

(declare-fun b!2817348 () Bool)

(declare-fun e!1781764 () Bool)

(assert (=> b!2817348 (= e!1781764 e!1781765)))

(declare-fun b!2817347 () Bool)

(declare-fun e!1781763 () Bool)

(assert (=> b!2817347 (= e!1781763 e!1781764)))

(assert (=> d!818190 e!1781763))

(assert (= b!2817348 b!2817349))

(assert (= b!2817347 b!2817348))

(assert (= (and d!818190 (is-Cons!32976 rules!4424)) b!2817347))

(assert (=> b!2817349 (< (dynLambda!13757 order!17445 (toValue!6938 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103384))))

(assert (=> b!2817349 (< (dynLambda!13759 order!17449 (toChars!6797 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103384))))

(assert (=> d!818190 true))

(declare-fun lt!1006083 () Bool)

(assert (=> d!818190 (= lt!1006083 (forall!6749 (t!230156 lt!1006033) lambda!103384))))

(declare-fun e!1781762 () Bool)

(assert (=> d!818190 (= lt!1006083 e!1781762)))

(declare-fun res!1172475 () Bool)

(assert (=> d!818190 (=> res!1172475 e!1781762)))

(assert (=> d!818190 (= res!1172475 (not (is-Cons!32977 (t!230156 lt!1006033))))))

(assert (=> d!818190 (not (isEmpty!18245 rules!4424))))

(assert (=> d!818190 (= (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 (t!230156 lt!1006033)) lt!1006083)))

(declare-fun b!2817345 () Bool)

(declare-fun e!1781761 () Bool)

(assert (=> b!2817345 (= e!1781762 e!1781761)))

(declare-fun res!1172476 () Bool)

(assert (=> b!2817345 (=> (not res!1172476) (not e!1781761))))

(assert (=> b!2817345 (= res!1172476 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 (t!230156 lt!1006033))))))

(declare-fun b!2817346 () Bool)

(assert (=> b!2817346 (= e!1781761 (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 (t!230156 (t!230156 lt!1006033))))))

(assert (= (and d!818190 (not res!1172475)) b!2817345))

(assert (= (and b!2817345 res!1172476) b!2817346))

(declare-fun m!3248267 () Bool)

(assert (=> d!818190 m!3248267))

(assert (=> d!818190 m!3248131))

(declare-fun m!3248269 () Bool)

(assert (=> b!2817345 m!3248269))

(declare-fun m!3248271 () Bool)

(assert (=> b!2817346 m!3248271))

(assert (=> b!2817195 d!818190))

(declare-fun d!818194 () Bool)

(assert (=> d!818194 (= (isEmpty!18245 rules!4424) (is-Nil!32976 rules!4424))))

(assert (=> b!2817196 d!818194))

(declare-fun d!818196 () Bool)

(declare-fun res!1172486 () Bool)

(declare-fun e!1781775 () Bool)

(assert (=> d!818196 (=> (not res!1172486) (not e!1781775))))

(declare-fun rulesValid!1811 (LexerInterface!4519 List!33100) Bool)

(assert (=> d!818196 (= res!1172486 (rulesValid!1811 thiss!27755 rules!4424))))

(assert (=> d!818196 (= (rulesInvariant!3937 thiss!27755 rules!4424) e!1781775)))

(declare-fun b!2817359 () Bool)

(declare-datatypes ((List!33106 0))(
  ( (Nil!32982) (Cons!32982 (h!38402 String!36248) (t!230181 List!33106)) )
))
(declare-fun noDuplicateTag!1807 (LexerInterface!4519 List!33100 List!33106) Bool)

(assert (=> b!2817359 (= e!1781775 (noDuplicateTag!1807 thiss!27755 rules!4424 Nil!32982))))

(assert (= (and d!818196 res!1172486) b!2817359))

(declare-fun m!3248277 () Bool)

(assert (=> d!818196 m!3248277))

(declare-fun m!3248279 () Bool)

(assert (=> b!2817359 m!3248279))

(assert (=> b!2817186 d!818196))

(declare-fun d!818200 () Bool)

(declare-fun res!1172493 () Bool)

(declare-fun e!1781782 () Bool)

(assert (=> d!818200 (=> res!1172493 e!1781782)))

(assert (=> d!818200 (= res!1172493 (is-Nil!32977 lt!1006033))))

(assert (=> d!818200 (= (forall!6749 lt!1006033 lambda!103374) e!1781782)))

(declare-fun b!2817366 () Bool)

(declare-fun e!1781783 () Bool)

(assert (=> b!2817366 (= e!1781782 e!1781783)))

(declare-fun res!1172494 () Bool)

(assert (=> b!2817366 (=> (not res!1172494) (not e!1781783))))

(declare-fun dynLambda!13764 (Int Token!9258) Bool)

(assert (=> b!2817366 (= res!1172494 (dynLambda!13764 lambda!103374 (h!38397 lt!1006033)))))

(declare-fun b!2817367 () Bool)

(assert (=> b!2817367 (= e!1781783 (forall!6749 (t!230156 lt!1006033) lambda!103374))))

(assert (= (and d!818200 (not res!1172493)) b!2817366))

(assert (= (and b!2817366 res!1172494) b!2817367))

(declare-fun b_lambda!84219 () Bool)

(assert (=> (not b_lambda!84219) (not b!2817366)))

(declare-fun m!3248285 () Bool)

(assert (=> b!2817366 m!3248285))

(declare-fun m!3248287 () Bool)

(assert (=> b!2817367 m!3248287))

(assert (=> b!2817191 d!818200))

(declare-fun d!818204 () Bool)

(assert (=> d!818204 (forall!6749 lt!1006033 lambda!103374)))

(declare-fun lt!1006090 () Unit!46937)

(declare-fun choose!16664 (List!33101 List!33101 Int) Unit!46937)

(assert (=> d!818204 (= lt!1006090 (choose!16664 lt!1006033 l!6581 lambda!103374))))

(assert (=> d!818204 (forall!6749 l!6581 lambda!103374)))

(assert (=> d!818204 (= (lemmaForallSubseq!204 lt!1006033 l!6581 lambda!103374) lt!1006090)))

(declare-fun bs!517059 () Bool)

(assert (= bs!517059 d!818204))

(assert (=> bs!517059 m!3248133))

(declare-fun m!3248295 () Bool)

(assert (=> bs!517059 m!3248295))

(declare-fun m!3248297 () Bool)

(assert (=> bs!517059 m!3248297))

(assert (=> b!2817191 d!818204))

(declare-fun bs!517060 () Bool)

(declare-fun d!818210 () Bool)

(assert (= bs!517060 (and d!818210 b!2817191)))

(declare-fun lambda!103386 () Int)

(assert (=> bs!517060 (= (= thiss!27755 Lexer!4517) (= lambda!103386 lambda!103374))))

(declare-fun bs!517061 () Bool)

(assert (= bs!517061 (and d!818210 d!818184)))

(assert (=> bs!517061 (= lambda!103386 lambda!103383)))

(declare-fun bs!517062 () Bool)

(assert (= bs!517062 (and d!818210 d!818190)))

(assert (=> bs!517062 (= lambda!103386 lambda!103384)))

(declare-fun b!2817377 () Bool)

(declare-fun e!1781793 () Bool)

(assert (=> b!2817377 (= e!1781793 true)))

(declare-fun b!2817376 () Bool)

(declare-fun e!1781792 () Bool)

(assert (=> b!2817376 (= e!1781792 e!1781793)))

(declare-fun b!2817375 () Bool)

(declare-fun e!1781791 () Bool)

(assert (=> b!2817375 (= e!1781791 e!1781792)))

(assert (=> d!818210 e!1781791))

(assert (= b!2817376 b!2817377))

(assert (= b!2817375 b!2817376))

(assert (= (and d!818210 (is-Cons!32976 rules!4424)) b!2817375))

(assert (=> b!2817377 (< (dynLambda!13757 order!17445 (toValue!6938 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103386))))

(assert (=> b!2817377 (< (dynLambda!13759 order!17449 (toChars!6797 (transformation!4928 (h!38396 rules!4424)))) (dynLambda!13758 order!17447 lambda!103386))))

(assert (=> d!818210 true))

(declare-fun lt!1006091 () Bool)

(assert (=> d!818210 (= lt!1006091 (forall!6749 lt!1006033 lambda!103386))))

(declare-fun e!1781790 () Bool)

(assert (=> d!818210 (= lt!1006091 e!1781790)))

(declare-fun res!1172497 () Bool)

(assert (=> d!818210 (=> res!1172497 e!1781790)))

(assert (=> d!818210 (= res!1172497 (not (is-Cons!32977 lt!1006033)))))

(assert (=> d!818210 (not (isEmpty!18245 rules!4424))))

(assert (=> d!818210 (= (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 lt!1006033) lt!1006091)))

(declare-fun b!2817373 () Bool)

(declare-fun e!1781789 () Bool)

(assert (=> b!2817373 (= e!1781790 e!1781789)))

(declare-fun res!1172498 () Bool)

(assert (=> b!2817373 (=> (not res!1172498) (not e!1781789))))

(assert (=> b!2817373 (= res!1172498 (rulesProduceIndividualToken!2059 thiss!27755 rules!4424 (h!38397 lt!1006033)))))

(declare-fun b!2817374 () Bool)

(assert (=> b!2817374 (= e!1781789 (rulesProduceEachTokenIndividuallyList!1571 thiss!27755 rules!4424 (t!230156 lt!1006033)))))

(assert (= (and d!818210 (not res!1172497)) b!2817373))

(assert (= (and b!2817373 res!1172498) b!2817374))

(declare-fun m!3248299 () Bool)

(assert (=> d!818210 m!3248299))

(assert (=> d!818210 m!3248131))

(assert (=> b!2817373 m!3248117))

(assert (=> b!2817374 m!3248111))

(assert (=> b!2817191 d!818210))

(declare-fun b!2817419 () Bool)

(declare-fun e!1781820 () Bool)

(declare-fun lt!1006098 () List!33101)

(declare-fun e!1781819 () Int)

(declare-fun size!25693 (List!33101) Int)

(assert (=> b!2817419 (= e!1781820 (= (size!25693 lt!1006098) e!1781819))))

(declare-fun c!456780 () Bool)

(assert (=> b!2817419 (= c!456780 (<= i!1730 0))))

(declare-fun b!2817420 () Bool)

(declare-fun e!1781821 () List!33101)

(assert (=> b!2817420 (= e!1781821 (Cons!32977 (h!38397 l!6581) (take!522 (t!230156 l!6581) (- i!1730 1))))))

(declare-fun b!2817421 () Bool)

(assert (=> b!2817421 (= e!1781821 Nil!32977)))

(declare-fun b!2817422 () Bool)

(declare-fun e!1781822 () Int)

(assert (=> b!2817422 (= e!1781819 e!1781822)))

(declare-fun c!456779 () Bool)

(assert (=> b!2817422 (= c!456779 (>= i!1730 (size!25693 l!6581)))))

(declare-fun b!2817423 () Bool)

(assert (=> b!2817423 (= e!1781822 (size!25693 l!6581))))

(declare-fun b!2817424 () Bool)

(assert (=> b!2817424 (= e!1781822 i!1730)))

(declare-fun b!2817418 () Bool)

(assert (=> b!2817418 (= e!1781819 0)))

(declare-fun d!818212 () Bool)

(assert (=> d!818212 e!1781820))

(declare-fun res!1172506 () Bool)

(assert (=> d!818212 (=> (not res!1172506) (not e!1781820))))

(declare-fun content!4601 (List!33101) (Set Token!9258))

(assert (=> d!818212 (= res!1172506 (set.subset (content!4601 lt!1006098) (content!4601 l!6581)))))

(assert (=> d!818212 (= lt!1006098 e!1781821)))

(declare-fun c!456781 () Bool)

(assert (=> d!818212 (= c!456781 (or (is-Nil!32977 l!6581) (<= i!1730 0)))))

(assert (=> d!818212 (= (take!522 l!6581 i!1730) lt!1006098)))

(assert (= (and d!818212 c!456781) b!2817421))

(assert (= (and d!818212 (not c!456781)) b!2817420))

(assert (= (and d!818212 res!1172506) b!2817419))

(assert (= (and b!2817419 c!456780) b!2817418))

(assert (= (and b!2817419 (not c!456780)) b!2817422))

(assert (= (and b!2817422 c!456779) b!2817423))

(assert (= (and b!2817422 (not c!456779)) b!2817424))

(declare-fun m!3248311 () Bool)

(assert (=> d!818212 m!3248311))

(declare-fun m!3248313 () Bool)

(assert (=> d!818212 m!3248313))

(declare-fun m!3248315 () Bool)

(assert (=> b!2817423 m!3248315))

(assert (=> b!2817422 m!3248315))

(declare-fun m!3248317 () Bool)

(assert (=> b!2817419 m!3248317))

(declare-fun m!3248319 () Bool)

(assert (=> b!2817420 m!3248319))

(assert (=> b!2817191 d!818212))

(declare-fun b!2817429 () Bool)

(declare-fun e!1781825 () Bool)

(declare-fun tp_is_empty!14429 () Bool)

(declare-fun tp!899436 () Bool)

(assert (=> b!2817429 (= e!1781825 (and tp_is_empty!14429 tp!899436))))

(assert (=> b!2817197 (= tp!899395 e!1781825)))

(assert (= (and b!2817197 (is-Cons!32975 (originalCharacters!5660 (h!38397 l!6581)))) b!2817429))

(declare-fun b!2817432 () Bool)

(declare-fun e!1781828 () Bool)

(assert (=> b!2817432 (= e!1781828 true)))

(declare-fun b!2817431 () Bool)

(declare-fun e!1781827 () Bool)

(assert (=> b!2817431 (= e!1781827 e!1781828)))

(declare-fun b!2817430 () Bool)

(declare-fun e!1781826 () Bool)

(assert (=> b!2817430 (= e!1781826 e!1781827)))

(assert (=> b!2817207 e!1781826))

(assert (= b!2817431 b!2817432))

(assert (= b!2817430 b!2817431))

(assert (= (and b!2817207 (is-Cons!32976 (t!230155 rules!4424))) b!2817430))

(assert (=> b!2817432 (< (dynLambda!13757 order!17445 (toValue!6938 (transformation!4928 (h!38396 (t!230155 rules!4424))))) (dynLambda!13758 order!17447 lambda!103374))))

(assert (=> b!2817432 (< (dynLambda!13759 order!17449 (toChars!6797 (transformation!4928 (h!38396 (t!230155 rules!4424))))) (dynLambda!13758 order!17447 lambda!103374))))

(declare-fun b!2817453 () Bool)

(declare-fun b_free!80381 () Bool)

(declare-fun b_next!81085 () Bool)

(assert (=> b!2817453 (= b_free!80381 (not b_next!81085))))

(declare-fun tp!899446 () Bool)

(declare-fun b_and!205675 () Bool)

(assert (=> b!2817453 (= tp!899446 b_and!205675)))

(declare-fun b_free!80383 () Bool)

(declare-fun b_next!81087 () Bool)

(assert (=> b!2817453 (= b_free!80383 (not b_next!81087))))

(declare-fun tb!153673 () Bool)

(declare-fun t!230174 () Bool)

(assert (=> (and b!2817453 (= (toChars!6797 (transformation!4928 (h!38396 (t!230155 rules!4424)))) (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581))))) t!230174) tb!153673))

(declare-fun result!191264 () Bool)

(assert (= result!191264 result!191254))

(assert (=> b!2817312 t!230174))

(declare-fun tp!899447 () Bool)

(declare-fun b_and!205677 () Bool)

(assert (=> b!2817453 (= tp!899447 (and (=> t!230174 result!191264) b_and!205677))))

(declare-fun e!1781843 () Bool)

(assert (=> b!2817453 (= e!1781843 (and tp!899446 tp!899447))))

(declare-fun tp!899445 () Bool)

(declare-fun b!2817452 () Bool)

(declare-fun e!1781844 () Bool)

(assert (=> b!2817452 (= e!1781844 (and tp!899445 (inv!44889 (tag!5432 (h!38396 (t!230155 rules!4424)))) (inv!44893 (transformation!4928 (h!38396 (t!230155 rules!4424)))) e!1781843))))

(declare-fun b!2817451 () Bool)

(declare-fun e!1781845 () Bool)

(declare-fun tp!899448 () Bool)

(assert (=> b!2817451 (= e!1781845 (and e!1781844 tp!899448))))

(assert (=> b!2817187 (= tp!899401 e!1781845)))

(assert (= b!2817452 b!2817453))

(assert (= b!2817451 b!2817452))

(assert (= (and b!2817187 (is-Cons!32976 (t!230155 rules!4424))) b!2817451))

(declare-fun m!3248327 () Bool)

(assert (=> b!2817452 m!3248327))

(declare-fun m!3248329 () Bool)

(assert (=> b!2817452 m!3248329))

(declare-fun e!1781852 () Bool)

(assert (=> b!2817193 (= tp!899396 e!1781852)))

(declare-fun b!2817471 () Bool)

(declare-fun tp!899462 () Bool)

(assert (=> b!2817471 (= e!1781852 tp!899462)))

(declare-fun b!2817470 () Bool)

(declare-fun tp!899460 () Bool)

(declare-fun tp!899459 () Bool)

(assert (=> b!2817470 (= e!1781852 (and tp!899460 tp!899459))))

(declare-fun b!2817472 () Bool)

(declare-fun tp!899461 () Bool)

(declare-fun tp!899463 () Bool)

(assert (=> b!2817472 (= e!1781852 (and tp!899461 tp!899463))))

(declare-fun b!2817469 () Bool)

(assert (=> b!2817469 (= e!1781852 tp_is_empty!14429)))

(assert (= (and b!2817193 (is-ElementMatch!8318 (regex!4928 (h!38396 rules!4424)))) b!2817469))

(assert (= (and b!2817193 (is-Concat!13477 (regex!4928 (h!38396 rules!4424)))) b!2817470))

(assert (= (and b!2817193 (is-Star!8318 (regex!4928 (h!38396 rules!4424)))) b!2817471))

(assert (= (and b!2817193 (is-Union!8318 (regex!4928 (h!38396 rules!4424)))) b!2817472))

(declare-fun b!2817491 () Bool)

(declare-fun b_free!80385 () Bool)

(declare-fun b_next!81089 () Bool)

(assert (=> b!2817491 (= b_free!80385 (not b_next!81089))))

(declare-fun tp!899476 () Bool)

(declare-fun b_and!205679 () Bool)

(assert (=> b!2817491 (= tp!899476 b_and!205679)))

(declare-fun b_free!80387 () Bool)

(declare-fun b_next!81091 () Bool)

(assert (=> b!2817491 (= b_free!80387 (not b_next!81091))))

(declare-fun t!230176 () Bool)

(declare-fun tb!153675 () Bool)

(assert (=> (and b!2817491 (= (toChars!6797 (transformation!4928 (rule!7356 (h!38397 (t!230156 l!6581))))) (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581))))) t!230176) tb!153675))

(declare-fun result!191270 () Bool)

(assert (= result!191270 result!191254))

(assert (=> b!2817312 t!230176))

(declare-fun b_and!205681 () Bool)

(declare-fun tp!899474 () Bool)

(assert (=> b!2817491 (= tp!899474 (and (=> t!230176 result!191270) b_and!205681))))

(declare-fun e!1781871 () Bool)

(declare-fun e!1781868 () Bool)

(declare-fun b!2817490 () Bool)

(declare-fun tp!899478 () Bool)

(assert (=> b!2817490 (= e!1781871 (and tp!899478 (inv!44889 (tag!5432 (rule!7356 (h!38397 (t!230156 l!6581))))) (inv!44893 (transformation!4928 (rule!7356 (h!38397 (t!230156 l!6581))))) e!1781868))))

(declare-fun e!1781872 () Bool)

(declare-fun e!1781870 () Bool)

(declare-fun b!2817488 () Bool)

(declare-fun tp!899475 () Bool)

(assert (=> b!2817488 (= e!1781870 (and (inv!44892 (h!38397 (t!230156 l!6581))) e!1781872 tp!899475))))

(assert (=> b!2817184 (= tp!899399 e!1781870)))

(declare-fun b!2817489 () Bool)

(declare-fun tp!899477 () Bool)

(assert (=> b!2817489 (= e!1781872 (and (inv!21 (value!158769 (h!38397 (t!230156 l!6581)))) e!1781871 tp!899477))))

(assert (=> b!2817491 (= e!1781868 (and tp!899476 tp!899474))))

(assert (= b!2817490 b!2817491))

(assert (= b!2817489 b!2817490))

(assert (= b!2817488 b!2817489))

(assert (= (and b!2817184 (is-Cons!32977 (t!230156 l!6581))) b!2817488))

(declare-fun m!3248341 () Bool)

(assert (=> b!2817490 m!3248341))

(declare-fun m!3248343 () Bool)

(assert (=> b!2817490 m!3248343))

(declare-fun m!3248345 () Bool)

(assert (=> b!2817488 m!3248345))

(declare-fun m!3248347 () Bool)

(assert (=> b!2817489 m!3248347))

(declare-fun e!1781875 () Bool)

(assert (=> b!2817189 (= tp!899403 e!1781875)))

(declare-fun b!2817496 () Bool)

(declare-fun tp!899482 () Bool)

(assert (=> b!2817496 (= e!1781875 tp!899482)))

(declare-fun b!2817495 () Bool)

(declare-fun tp!899480 () Bool)

(declare-fun tp!899479 () Bool)

(assert (=> b!2817495 (= e!1781875 (and tp!899480 tp!899479))))

(declare-fun b!2817497 () Bool)

(declare-fun tp!899481 () Bool)

(declare-fun tp!899483 () Bool)

(assert (=> b!2817497 (= e!1781875 (and tp!899481 tp!899483))))

(declare-fun b!2817494 () Bool)

(assert (=> b!2817494 (= e!1781875 tp_is_empty!14429)))

(assert (= (and b!2817189 (is-ElementMatch!8318 (regex!4928 (rule!7356 (h!38397 l!6581))))) b!2817494))

(assert (= (and b!2817189 (is-Concat!13477 (regex!4928 (rule!7356 (h!38397 l!6581))))) b!2817495))

(assert (= (and b!2817189 (is-Star!8318 (regex!4928 (rule!7356 (h!38397 l!6581))))) b!2817496))

(assert (= (and b!2817189 (is-Union!8318 (regex!4928 (rule!7356 (h!38397 l!6581))))) b!2817497))

(declare-fun b_lambda!84223 () Bool)

(assert (= b_lambda!84219 (or b!2817191 b_lambda!84223)))

(declare-fun bs!517066 () Bool)

(declare-fun d!818226 () Bool)

(assert (= bs!517066 (and d!818226 b!2817191)))

(assert (=> bs!517066 (= (dynLambda!13764 lambda!103374 (h!38397 lt!1006033)) (rulesProduceIndividualToken!2059 Lexer!4517 rules!4424 (h!38397 lt!1006033)))))

(declare-fun m!3248349 () Bool)

(assert (=> bs!517066 m!3248349))

(assert (=> b!2817366 d!818226))

(declare-fun b_lambda!84225 () Bool)

(assert (= b_lambda!84215 (or (and b!2817185 b_free!80367 (= (toChars!6797 (transformation!4928 (h!38396 rules!4424))) (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))))) (and b!2817198 b_free!80371) (and b!2817453 b_free!80383 (= (toChars!6797 (transformation!4928 (h!38396 (t!230155 rules!4424)))) (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))))) (and b!2817491 b_free!80387 (= (toChars!6797 (transformation!4928 (rule!7356 (h!38397 (t!230156 l!6581))))) (toChars!6797 (transformation!4928 (rule!7356 (h!38397 l!6581)))))) b_lambda!84225)))

(push 1)

(assert (not b!2817273))

(assert (not b!2817452))

(assert (not b!2817312))

(assert (not b_next!81069))

(assert (not b_next!81073))

(assert (not b!2817274))

(assert (not b!2817287))

(assert (not b!2817451))

(assert (not b!2817472))

(assert (not b!2817307))

(assert b_and!205671)

(assert b_and!205659)

(assert (not b!2817419))

(assert (not b!2817488))

(assert (not b!2817272))

(assert (not b!2817489))

(assert (not b_next!81087))

(assert (not b!2817346))

(assert (not b!2817373))

(assert (not b!2817289))

(assert b_and!205655)

(assert (not b!2817422))

(assert (not d!818190))

(assert (not d!818184))

(assert b_and!205679)

(assert (not b_next!81075))

(assert (not d!818176))

(assert (not b!2817304))

(assert (not b!2817429))

(assert (not b!2817490))

(assert (not bs!517066))

(assert b_and!205675)

(assert (not b!2817318))

(assert (not b_next!81071))

(assert (not b_next!81089))

(assert b_and!205677)

(assert (not d!818210))

(assert (not b!2817496))

(assert (not b!2817367))

(assert (not b!2817288))

(assert (not b!2817375))

(assert (not d!818164))

(assert (not b!2817319))

(assert (not b!2817347))

(assert b_and!205673)

(assert (not tb!153669))

(assert (not b!2817335))

(assert (not b!2817495))

(assert (not b!2817430))

(assert tp_is_empty!14429)

(assert (not b!2817336))

(assert b_and!205681)

(assert (not b!2817313))

(assert (not b_lambda!84225))

(assert (not d!818204))

(assert (not b_next!81091))

(assert (not b_lambda!84223))

(assert (not b!2817303))

(assert (not b!2817470))

(assert (not b_next!81085))

(assert (not b!2817497))

(assert (not b!2817423))

(assert (not d!818196))

(assert (not b!2817374))

(assert (not d!818178))

(assert (not b!2817345))

(assert (not b!2817471))

(assert (not d!818182))

(assert (not b!2817337))

(assert (not b!2817420))

(assert (not d!818212))

(assert (not b!2817359))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!81073))

(assert b_and!205671)

(assert b_and!205659)

(assert (not b_next!81087))

(assert b_and!205655)

(assert b_and!205679)

(assert (not b_next!81075))

(assert b_and!205675)

(assert b_and!205673)

(assert (not b_next!81069))

(assert b_and!205681)

(assert (not b_next!81091))

(assert (not b_next!81085))

(assert (not b_next!81071))

(assert (not b_next!81089))

(assert b_and!205677)

(check-sat)

(pop 1)

