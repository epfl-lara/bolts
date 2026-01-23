; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!118916 () Bool)

(assert start!118916)

(declare-fun b!1335692 () Bool)

(declare-fun b_free!32495 () Bool)

(declare-fun b_next!33199 () Bool)

(assert (=> b!1335692 (= b_free!32495 (not b_next!33199))))

(declare-fun tp!386466 () Bool)

(declare-fun b_and!89343 () Bool)

(assert (=> b!1335692 (= tp!386466 b_and!89343)))

(declare-fun b_free!32497 () Bool)

(declare-fun b_next!33201 () Bool)

(assert (=> b!1335692 (= b_free!32497 (not b_next!33201))))

(declare-fun tp!386461 () Bool)

(declare-fun b_and!89345 () Bool)

(assert (=> b!1335692 (= tp!386461 b_and!89345)))

(declare-fun b!1335702 () Bool)

(declare-fun b_free!32499 () Bool)

(declare-fun b_next!33203 () Bool)

(assert (=> b!1335702 (= b_free!32499 (not b_next!33203))))

(declare-fun tp!386465 () Bool)

(declare-fun b_and!89347 () Bool)

(assert (=> b!1335702 (= tp!386465 b_and!89347)))

(declare-fun b_free!32501 () Bool)

(declare-fun b_next!33205 () Bool)

(assert (=> b!1335702 (= b_free!32501 (not b_next!33205))))

(declare-fun tp!386469 () Bool)

(declare-fun b_and!89349 () Bool)

(assert (=> b!1335702 (= tp!386469 b_and!89349)))

(declare-fun b!1335707 () Bool)

(declare-fun b_free!32503 () Bool)

(declare-fun b_next!33207 () Bool)

(assert (=> b!1335707 (= b_free!32503 (not b_next!33207))))

(declare-fun tp!386468 () Bool)

(declare-fun b_and!89351 () Bool)

(assert (=> b!1335707 (= tp!386468 b_and!89351)))

(declare-fun b_free!32505 () Bool)

(declare-fun b_next!33209 () Bool)

(assert (=> b!1335707 (= b_free!32505 (not b_next!33209))))

(declare-fun tp!386463 () Bool)

(declare-fun b_and!89353 () Bool)

(assert (=> b!1335707 (= tp!386463 b_and!89353)))

(declare-fun b!1335709 () Bool)

(assert (=> b!1335709 true))

(assert (=> b!1335709 true))

(declare-fun e!855657 () Bool)

(assert (=> b!1335692 (= e!855657 (and tp!386466 tp!386461))))

(declare-fun b!1335693 () Bool)

(declare-fun res!602259 () Bool)

(declare-fun e!855662 () Bool)

(assert (=> b!1335693 (=> (not res!602259) (not e!855662))))

(declare-datatypes ((List!13701 0))(
  ( (Nil!13635) (Cons!13635 (h!19036 (_ BitVec 16)) (t!119232 List!13701)) )
))
(declare-datatypes ((TokenValue!2454 0))(
  ( (FloatLiteralValue!4908 (text!17623 List!13701)) (TokenValueExt!2453 (__x!8737 Int)) (Broken!12270 (value!76982 List!13701)) (Object!2519) (End!2454) (Def!2454) (Underscore!2454) (Match!2454) (Else!2454) (Error!2454) (Case!2454) (If!2454) (Extends!2454) (Abstract!2454) (Class!2454) (Val!2454) (DelimiterValue!4908 (del!2514 List!13701)) (KeywordValue!2460 (value!76983 List!13701)) (CommentValue!4908 (value!76984 List!13701)) (WhitespaceValue!4908 (value!76985 List!13701)) (IndentationValue!2454 (value!76986 List!13701)) (String!16507) (Int32!2454) (Broken!12271 (value!76987 List!13701)) (Boolean!2455) (Unit!19771) (OperatorValue!2457 (op!2514 List!13701)) (IdentifierValue!4908 (value!76988 List!13701)) (IdentifierValue!4909 (value!76989 List!13701)) (WhitespaceValue!4909 (value!76990 List!13701)) (True!4908) (False!4908) (Broken!12272 (value!76991 List!13701)) (Broken!12273 (value!76992 List!13701)) (True!4909) (RightBrace!2454) (RightBracket!2454) (Colon!2454) (Null!2454) (Comma!2454) (LeftBracket!2454) (False!4909) (LeftBrace!2454) (ImaginaryLiteralValue!2454 (text!17624 List!13701)) (StringLiteralValue!7362 (value!76993 List!13701)) (EOFValue!2454 (value!76994 List!13701)) (IdentValue!2454 (value!76995 List!13701)) (DelimiterValue!4909 (value!76996 List!13701)) (DedentValue!2454 (value!76997 List!13701)) (NewLineValue!2454 (value!76998 List!13701)) (IntegerValue!7362 (value!76999 (_ BitVec 32)) (text!17625 List!13701)) (IntegerValue!7363 (value!77000 Int) (text!17626 List!13701)) (Times!2454) (Or!2454) (Equal!2454) (Minus!2454) (Broken!12274 (value!77001 List!13701)) (And!2454) (Div!2454) (LessEqual!2454) (Mod!2454) (Concat!6132) (Not!2454) (Plus!2454) (SpaceValue!2454 (value!77002 List!13701)) (IntegerValue!7364 (value!77003 Int) (text!17627 List!13701)) (StringLiteralValue!7363 (text!17628 List!13701)) (FloatLiteralValue!4909 (text!17629 List!13701)) (BytesLiteralValue!2454 (value!77004 List!13701)) (CommentValue!4909 (value!77005 List!13701)) (StringLiteralValue!7364 (value!77006 List!13701)) (ErrorTokenValue!2454 (msg!2515 List!13701)) )
))
(declare-datatypes ((C!7646 0))(
  ( (C!7647 (val!4383 Int)) )
))
(declare-datatypes ((List!13702 0))(
  ( (Nil!13636) (Cons!13636 (h!19037 C!7646) (t!119233 List!13702)) )
))
(declare-datatypes ((IArray!8993 0))(
  ( (IArray!8994 (innerList!4554 List!13702)) )
))
(declare-datatypes ((Conc!4494 0))(
  ( (Node!4494 (left!11704 Conc!4494) (right!12034 Conc!4494) (csize!9218 Int) (cheight!4705 Int)) (Leaf!6873 (xs!7209 IArray!8993) (csize!9219 Int)) (Empty!4494) )
))
(declare-datatypes ((BalanceConc!8928 0))(
  ( (BalanceConc!8929 (c!218721 Conc!4494)) )
))
(declare-datatypes ((Regex!3678 0))(
  ( (ElementMatch!3678 (c!218722 C!7646)) (Concat!6133 (regOne!7868 Regex!3678) (regTwo!7868 Regex!3678)) (EmptyExpr!3678) (Star!3678 (reg!4007 Regex!3678)) (EmptyLang!3678) (Union!3678 (regOne!7869 Regex!3678) (regTwo!7869 Regex!3678)) )
))
(declare-datatypes ((String!16508 0))(
  ( (String!16509 (value!77007 String)) )
))
(declare-datatypes ((TokenValueInjection!4568 0))(
  ( (TokenValueInjection!4569 (toValue!3599 Int) (toChars!3458 Int)) )
))
(declare-datatypes ((Rule!4528 0))(
  ( (Rule!4529 (regex!2364 Regex!3678) (tag!2626 String!16508) (isSeparator!2364 Bool) (transformation!2364 TokenValueInjection!4568)) )
))
(declare-datatypes ((List!13703 0))(
  ( (Nil!13637) (Cons!13637 (h!19038 Rule!4528) (t!119234 List!13703)) )
))
(declare-fun rules!2550 () List!13703)

(declare-fun isEmpty!8132 (List!13703) Bool)

(assert (=> b!1335693 (= res!602259 (not (isEmpty!8132 rules!2550)))))

(declare-fun b!1335694 () Bool)

(declare-fun res!602256 () Bool)

(assert (=> b!1335694 (=> (not res!602256) (not e!855662))))

(declare-datatypes ((Token!4390 0))(
  ( (Token!4391 (value!77008 TokenValue!2454) (rule!4109 Rule!4528) (size!11101 Int) (originalCharacters!3226 List!13702)) )
))
(declare-fun t1!34 () Token!4390)

(declare-fun t2!34 () Token!4390)

(assert (=> b!1335694 (= res!602256 (not (= (isSeparator!2364 (rule!4109 t1!34)) (isSeparator!2364 (rule!4109 t2!34)))))))

(declare-fun b!1335695 () Bool)

(declare-fun res!602254 () Bool)

(assert (=> b!1335695 (=> (not res!602254) (not e!855662))))

(declare-datatypes ((LexerInterface!2059 0))(
  ( (LexerInterfaceExt!2056 (__x!8738 Int)) (Lexer!2057) )
))
(declare-fun thiss!19762 () LexerInterface!2059)

(declare-fun rulesInvariant!1929 (LexerInterface!2059 List!13703) Bool)

(assert (=> b!1335695 (= res!602254 (rulesInvariant!1929 thiss!19762 rules!2550))))

(declare-fun b!1335696 () Bool)

(declare-fun res!602255 () Bool)

(assert (=> b!1335696 (=> (not res!602255) (not e!855662))))

(declare-fun rulesProduceIndividualToken!1028 (LexerInterface!2059 List!13703 Token!4390) Bool)

(assert (=> b!1335696 (= res!602255 (rulesProduceIndividualToken!1028 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1335697 () Bool)

(declare-fun res!602253 () Bool)

(declare-fun e!855660 () Bool)

(assert (=> b!1335697 (=> (not res!602253) (not e!855660))))

(declare-fun separableTokensPredicate!342 (LexerInterface!2059 Token!4390 Token!4390 List!13703) Bool)

(assert (=> b!1335697 (= res!602253 (not (separableTokensPredicate!342 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun tp!386472 () Bool)

(declare-fun e!855654 () Bool)

(declare-fun e!855650 () Bool)

(declare-fun b!1335698 () Bool)

(declare-fun inv!21 (TokenValue!2454) Bool)

(assert (=> b!1335698 (= e!855650 (and (inv!21 (value!77008 t1!34)) e!855654 tp!386472))))

(declare-fun b!1335699 () Bool)

(declare-fun e!855649 () Bool)

(declare-fun e!855663 () Bool)

(declare-fun tp!386471 () Bool)

(assert (=> b!1335699 (= e!855649 (and e!855663 tp!386471))))

(declare-fun b!1335700 () Bool)

(declare-fun tp!386470 () Bool)

(declare-fun e!855653 () Bool)

(declare-fun e!855659 () Bool)

(declare-fun inv!17971 (String!16508) Bool)

(declare-fun inv!17974 (TokenValueInjection!4568) Bool)

(assert (=> b!1335700 (= e!855659 (and tp!386470 (inv!17971 (tag!2626 (rule!4109 t2!34))) (inv!17974 (transformation!2364 (rule!4109 t2!34))) e!855653))))

(declare-fun b!1335701 () Bool)

(declare-fun tp!386467 () Bool)

(assert (=> b!1335701 (= e!855663 (and tp!386467 (inv!17971 (tag!2626 (h!19038 rules!2550))) (inv!17974 (transformation!2364 (h!19038 rules!2550))) e!855657))))

(declare-fun e!855652 () Bool)

(assert (=> b!1335702 (= e!855652 (and tp!386465 tp!386469))))

(declare-fun b!1335703 () Bool)

(declare-fun tp!386464 () Bool)

(assert (=> b!1335703 (= e!855654 (and tp!386464 (inv!17971 (tag!2626 (rule!4109 t1!34))) (inv!17974 (transformation!2364 (rule!4109 t1!34))) e!855652))))

(declare-fun e!855665 () Bool)

(declare-fun tp!386462 () Bool)

(declare-fun b!1335704 () Bool)

(assert (=> b!1335704 (= e!855665 (and (inv!21 (value!77008 t2!34)) e!855659 tp!386462))))

(declare-fun b!1335705 () Bool)

(assert (=> b!1335705 (= e!855662 e!855660)))

(declare-fun res!602258 () Bool)

(assert (=> b!1335705 (=> (not res!602258) (not e!855660))))

(declare-fun lt!442225 () BalanceConc!8928)

(declare-fun size!11102 (BalanceConc!8928) Int)

(assert (=> b!1335705 (= res!602258 (> (size!11102 lt!442225) 0))))

(declare-fun charsOf!1336 (Token!4390) BalanceConc!8928)

(assert (=> b!1335705 (= lt!442225 (charsOf!1336 t2!34))))

(declare-fun b!1335706 () Bool)

(declare-fun e!855666 () Bool)

(declare-fun lt!442223 () List!13702)

(declare-fun lt!442222 () List!13702)

(declare-fun ++!3483 (List!13702 List!13702) List!13702)

(declare-fun getSuffix!526 (List!13702 List!13702) List!13702)

(assert (=> b!1335706 (= e!855666 (= lt!442223 (++!3483 lt!442222 (getSuffix!526 lt!442223 lt!442222))))))

(declare-fun lambda!55974 () Int)

(declare-fun pickWitness!133 (Int) List!13702)

(assert (=> b!1335706 (= lt!442223 (pickWitness!133 lambda!55974))))

(assert (=> b!1335707 (= e!855653 (and tp!386468 tp!386463))))

(declare-fun b!1335708 () Bool)

(declare-fun res!602252 () Bool)

(assert (=> b!1335708 (=> (not res!602252) (not e!855662))))

(assert (=> b!1335708 (= res!602252 (rulesProduceIndividualToken!1028 thiss!19762 rules!2550 t1!34))))

(declare-fun e!855651 () Bool)

(assert (=> b!1335709 (= e!855651 (not e!855666))))

(declare-fun res!602251 () Bool)

(assert (=> b!1335709 (=> res!602251 e!855666)))

(declare-fun Exists!830 (Int) Bool)

(assert (=> b!1335709 (= res!602251 (not (Exists!830 lambda!55974)))))

(assert (=> b!1335709 (Exists!830 lambda!55974)))

(declare-datatypes ((Unit!19772 0))(
  ( (Unit!19773) )
))
(declare-fun lt!442224 () Unit!19772)

(declare-fun lt!442221 () Regex!3678)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!148 (Regex!3678 List!13702) Unit!19772)

(assert (=> b!1335709 (= lt!442224 (lemmaPrefixMatchThenExistsStringThatMatches!148 lt!442221 lt!442222))))

(declare-fun b!1335710 () Bool)

(assert (=> b!1335710 (= e!855660 e!855651)))

(declare-fun res!602257 () Bool)

(assert (=> b!1335710 (=> (not res!602257) (not e!855651))))

(declare-fun prefixMatch!187 (Regex!3678 List!13702) Bool)

(assert (=> b!1335710 (= res!602257 (prefixMatch!187 lt!442221 lt!442222))))

(declare-fun rulesRegex!247 (LexerInterface!2059 List!13703) Regex!3678)

(assert (=> b!1335710 (= lt!442221 (rulesRegex!247 thiss!19762 rules!2550))))

(declare-fun list!5180 (BalanceConc!8928) List!13702)

(declare-fun apply!3186 (BalanceConc!8928 Int) C!7646)

(assert (=> b!1335710 (= lt!442222 (++!3483 (list!5180 (charsOf!1336 t1!34)) (Cons!13636 (apply!3186 lt!442225 0) Nil!13636)))))

(declare-fun b!1335711 () Bool)

(declare-fun res!602261 () Bool)

(assert (=> b!1335711 (=> (not res!602261) (not e!855660))))

(declare-fun sepAndNonSepRulesDisjointChars!737 (List!13703 List!13703) Bool)

(assert (=> b!1335711 (= res!602261 (sepAndNonSepRulesDisjointChars!737 rules!2550 rules!2550))))

(declare-fun res!602260 () Bool)

(assert (=> start!118916 (=> (not res!602260) (not e!855662))))

(assert (=> start!118916 (= res!602260 (is-Lexer!2057 thiss!19762))))

(assert (=> start!118916 e!855662))

(assert (=> start!118916 true))

(assert (=> start!118916 e!855649))

(declare-fun inv!17975 (Token!4390) Bool)

(assert (=> start!118916 (and (inv!17975 t1!34) e!855650)))

(assert (=> start!118916 (and (inv!17975 t2!34) e!855665)))

(assert (= (and start!118916 res!602260) b!1335693))

(assert (= (and b!1335693 res!602259) b!1335695))

(assert (= (and b!1335695 res!602254) b!1335708))

(assert (= (and b!1335708 res!602252) b!1335696))

(assert (= (and b!1335696 res!602255) b!1335694))

(assert (= (and b!1335694 res!602256) b!1335705))

(assert (= (and b!1335705 res!602258) b!1335711))

(assert (= (and b!1335711 res!602261) b!1335697))

(assert (= (and b!1335697 res!602253) b!1335710))

(assert (= (and b!1335710 res!602257) b!1335709))

(assert (= (and b!1335709 (not res!602251)) b!1335706))

(assert (= b!1335701 b!1335692))

(assert (= b!1335699 b!1335701))

(assert (= (and start!118916 (is-Cons!13637 rules!2550)) b!1335699))

(assert (= b!1335703 b!1335702))

(assert (= b!1335698 b!1335703))

(assert (= start!118916 b!1335698))

(assert (= b!1335700 b!1335707))

(assert (= b!1335704 b!1335700))

(assert (= start!118916 b!1335704))

(declare-fun m!1493143 () Bool)

(assert (=> b!1335693 m!1493143))

(declare-fun m!1493145 () Bool)

(assert (=> b!1335709 m!1493145))

(assert (=> b!1335709 m!1493145))

(declare-fun m!1493147 () Bool)

(assert (=> b!1335709 m!1493147))

(declare-fun m!1493149 () Bool)

(assert (=> b!1335704 m!1493149))

(declare-fun m!1493151 () Bool)

(assert (=> b!1335705 m!1493151))

(declare-fun m!1493153 () Bool)

(assert (=> b!1335705 m!1493153))

(declare-fun m!1493155 () Bool)

(assert (=> b!1335697 m!1493155))

(declare-fun m!1493157 () Bool)

(assert (=> b!1335700 m!1493157))

(declare-fun m!1493159 () Bool)

(assert (=> b!1335700 m!1493159))

(declare-fun m!1493161 () Bool)

(assert (=> b!1335708 m!1493161))

(declare-fun m!1493163 () Bool)

(assert (=> b!1335701 m!1493163))

(declare-fun m!1493165 () Bool)

(assert (=> b!1335701 m!1493165))

(declare-fun m!1493167 () Bool)

(assert (=> b!1335698 m!1493167))

(declare-fun m!1493169 () Bool)

(assert (=> b!1335696 m!1493169))

(declare-fun m!1493171 () Bool)

(assert (=> b!1335710 m!1493171))

(declare-fun m!1493173 () Bool)

(assert (=> b!1335710 m!1493173))

(declare-fun m!1493175 () Bool)

(assert (=> b!1335710 m!1493175))

(declare-fun m!1493177 () Bool)

(assert (=> b!1335710 m!1493177))

(declare-fun m!1493179 () Bool)

(assert (=> b!1335710 m!1493179))

(assert (=> b!1335710 m!1493173))

(declare-fun m!1493181 () Bool)

(assert (=> b!1335710 m!1493181))

(assert (=> b!1335710 m!1493171))

(declare-fun m!1493183 () Bool)

(assert (=> b!1335711 m!1493183))

(declare-fun m!1493185 () Bool)

(assert (=> start!118916 m!1493185))

(declare-fun m!1493187 () Bool)

(assert (=> start!118916 m!1493187))

(declare-fun m!1493189 () Bool)

(assert (=> b!1335703 m!1493189))

(declare-fun m!1493191 () Bool)

(assert (=> b!1335703 m!1493191))

(declare-fun m!1493193 () Bool)

(assert (=> b!1335695 m!1493193))

(declare-fun m!1493195 () Bool)

(assert (=> b!1335706 m!1493195))

(assert (=> b!1335706 m!1493195))

(declare-fun m!1493197 () Bool)

(assert (=> b!1335706 m!1493197))

(declare-fun m!1493199 () Bool)

(assert (=> b!1335706 m!1493199))

(push 1)

(assert (not b!1335697))

(assert (not b!1335708))

(assert (not b!1335700))

(assert (not b_next!33201))

(assert b_and!89349)

(assert (not b!1335698))

(assert (not b_next!33207))

(assert (not b!1335703))

(assert b_and!89351)

(assert b_and!89347)

(assert (not b!1335711))

(assert (not b!1335710))

(assert (not b!1335706))

(assert b_and!89345)

(assert (not b!1335696))

(assert (not b_next!33209))

(assert (not start!118916))

(assert (not b!1335709))

(assert (not b!1335704))

(assert (not b!1335705))

(assert (not b_next!33199))

(assert (not b!1335693))

(assert (not b!1335695))

(assert b_and!89353)

(assert b_and!89343)

(assert (not b!1335701))

(assert (not b!1335699))

(assert (not b_next!33203))

(assert (not b_next!33205))

(check-sat)

(pop 1)

(push 1)

(assert b_and!89345)

(assert (not b_next!33201))

(assert b_and!89349)

(assert (not b_next!33207))

(assert (not b_next!33209))

(assert (not b_next!33199))

(assert b_and!89351)

(assert b_and!89347)

(assert b_and!89353)

(assert b_and!89343)

(assert (not b_next!33203))

(assert (not b_next!33205))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!376243 () Bool)

(declare-fun lt!442243 () Int)

(declare-fun size!11105 (List!13702) Int)

(assert (=> d!376243 (= lt!442243 (size!11105 (list!5180 lt!442225)))))

(declare-fun size!11106 (Conc!4494) Int)

(assert (=> d!376243 (= lt!442243 (size!11106 (c!218721 lt!442225)))))

(assert (=> d!376243 (= (size!11102 lt!442225) lt!442243)))

(declare-fun bs!331929 () Bool)

(assert (= bs!331929 d!376243))

(declare-fun m!1493259 () Bool)

(assert (=> bs!331929 m!1493259))

(assert (=> bs!331929 m!1493259))

(declare-fun m!1493261 () Bool)

(assert (=> bs!331929 m!1493261))

(declare-fun m!1493263 () Bool)

(assert (=> bs!331929 m!1493263))

(assert (=> b!1335705 d!376243))

(declare-fun d!376245 () Bool)

(declare-fun lt!442246 () BalanceConc!8928)

(assert (=> d!376245 (= (list!5180 lt!442246) (originalCharacters!3226 t2!34))))

(declare-fun dynLambda!6003 (Int TokenValue!2454) BalanceConc!8928)

(assert (=> d!376245 (= lt!442246 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (value!77008 t2!34)))))

(assert (=> d!376245 (= (charsOf!1336 t2!34) lt!442246)))

(declare-fun b_lambda!39391 () Bool)

(assert (=> (not b_lambda!39391) (not d!376245)))

(declare-fun t!119239 () Bool)

(declare-fun tb!70441 () Bool)

(assert (=> (and b!1335692 (= (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toChars!3458 (transformation!2364 (rule!4109 t2!34)))) t!119239) tb!70441))

(declare-fun b!1335790 () Bool)

(declare-fun e!855729 () Bool)

(declare-fun tp!386511 () Bool)

(declare-fun inv!17978 (Conc!4494) Bool)

(assert (=> b!1335790 (= e!855729 (and (inv!17978 (c!218721 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (value!77008 t2!34)))) tp!386511))))

(declare-fun result!85570 () Bool)

(declare-fun inv!17979 (BalanceConc!8928) Bool)

(assert (=> tb!70441 (= result!85570 (and (inv!17979 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (value!77008 t2!34))) e!855729))))

(assert (= tb!70441 b!1335790))

(declare-fun m!1493265 () Bool)

(assert (=> b!1335790 m!1493265))

(declare-fun m!1493267 () Bool)

(assert (=> tb!70441 m!1493267))

(assert (=> d!376245 t!119239))

(declare-fun b_and!89367 () Bool)

(assert (= b_and!89345 (and (=> t!119239 result!85570) b_and!89367)))

(declare-fun t!119241 () Bool)

(declare-fun tb!70443 () Bool)

(assert (=> (and b!1335702 (= (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (toChars!3458 (transformation!2364 (rule!4109 t2!34)))) t!119241) tb!70443))

(declare-fun result!85574 () Bool)

(assert (= result!85574 result!85570))

(assert (=> d!376245 t!119241))

(declare-fun b_and!89369 () Bool)

(assert (= b_and!89349 (and (=> t!119241 result!85574) b_and!89369)))

(declare-fun t!119243 () Bool)

(declare-fun tb!70445 () Bool)

(assert (=> (and b!1335707 (= (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (toChars!3458 (transformation!2364 (rule!4109 t2!34)))) t!119243) tb!70445))

(declare-fun result!85576 () Bool)

(assert (= result!85576 result!85570))

(assert (=> d!376245 t!119243))

(declare-fun b_and!89371 () Bool)

(assert (= b_and!89353 (and (=> t!119243 result!85576) b_and!89371)))

(declare-fun m!1493269 () Bool)

(assert (=> d!376245 m!1493269))

(declare-fun m!1493271 () Bool)

(assert (=> d!376245 m!1493271))

(assert (=> b!1335705 d!376245))

(declare-fun d!376247 () Bool)

(declare-fun lt!442260 () Bool)

(declare-fun e!855745 () Bool)

(assert (=> d!376247 (= lt!442260 e!855745)))

(declare-fun res!602322 () Bool)

(assert (=> d!376247 (=> (not res!602322) (not e!855745))))

(declare-datatypes ((List!13707 0))(
  ( (Nil!13641) (Cons!13641 (h!19042 Token!4390) (t!119261 List!13707)) )
))
(declare-datatypes ((IArray!8997 0))(
  ( (IArray!8998 (innerList!4556 List!13707)) )
))
(declare-datatypes ((Conc!4496 0))(
  ( (Node!4496 (left!11708 Conc!4496) (right!12038 Conc!4496) (csize!9222 Int) (cheight!4707 Int)) (Leaf!6875 (xs!7211 IArray!8997) (csize!9223 Int)) (Empty!4496) )
))
(declare-datatypes ((BalanceConc!8932 0))(
  ( (BalanceConc!8933 (c!218743 Conc!4496)) )
))
(declare-fun list!5182 (BalanceConc!8932) List!13707)

(declare-datatypes ((tuple2!13268 0))(
  ( (tuple2!13269 (_1!7520 BalanceConc!8932) (_2!7520 BalanceConc!8928)) )
))
(declare-fun lex!890 (LexerInterface!2059 List!13703 BalanceConc!8928) tuple2!13268)

(declare-fun print!829 (LexerInterface!2059 BalanceConc!8932) BalanceConc!8928)

(declare-fun singletonSeq!963 (Token!4390) BalanceConc!8932)

(assert (=> d!376247 (= res!602322 (= (list!5182 (_1!7520 (lex!890 thiss!19762 rules!2550 (print!829 thiss!19762 (singletonSeq!963 t2!34))))) (list!5182 (singletonSeq!963 t2!34))))))

(declare-fun e!855744 () Bool)

(assert (=> d!376247 (= lt!442260 e!855744)))

(declare-fun res!602323 () Bool)

(assert (=> d!376247 (=> (not res!602323) (not e!855744))))

(declare-fun lt!442261 () tuple2!13268)

(declare-fun size!11107 (BalanceConc!8932) Int)

(assert (=> d!376247 (= res!602323 (= (size!11107 (_1!7520 lt!442261)) 1))))

(assert (=> d!376247 (= lt!442261 (lex!890 thiss!19762 rules!2550 (print!829 thiss!19762 (singletonSeq!963 t2!34))))))

(assert (=> d!376247 (not (isEmpty!8132 rules!2550))))

(assert (=> d!376247 (= (rulesProduceIndividualToken!1028 thiss!19762 rules!2550 t2!34) lt!442260)))

(declare-fun b!1335809 () Bool)

(declare-fun res!602324 () Bool)

(assert (=> b!1335809 (=> (not res!602324) (not e!855744))))

(declare-fun apply!3188 (BalanceConc!8932 Int) Token!4390)

(assert (=> b!1335809 (= res!602324 (= (apply!3188 (_1!7520 lt!442261) 0) t2!34))))

(declare-fun b!1335810 () Bool)

(declare-fun isEmpty!8134 (BalanceConc!8928) Bool)

(assert (=> b!1335810 (= e!855744 (isEmpty!8134 (_2!7520 lt!442261)))))

(declare-fun b!1335811 () Bool)

(assert (=> b!1335811 (= e!855745 (isEmpty!8134 (_2!7520 (lex!890 thiss!19762 rules!2550 (print!829 thiss!19762 (singletonSeq!963 t2!34))))))))

(assert (= (and d!376247 res!602323) b!1335809))

(assert (= (and b!1335809 res!602324) b!1335810))

(assert (= (and d!376247 res!602322) b!1335811))

(declare-fun m!1493307 () Bool)

(assert (=> d!376247 m!1493307))

(declare-fun m!1493309 () Bool)

(assert (=> d!376247 m!1493309))

(declare-fun m!1493311 () Bool)

(assert (=> d!376247 m!1493311))

(assert (=> d!376247 m!1493143))

(declare-fun m!1493313 () Bool)

(assert (=> d!376247 m!1493313))

(declare-fun m!1493315 () Bool)

(assert (=> d!376247 m!1493315))

(assert (=> d!376247 m!1493307))

(declare-fun m!1493317 () Bool)

(assert (=> d!376247 m!1493317))

(assert (=> d!376247 m!1493307))

(assert (=> d!376247 m!1493313))

(declare-fun m!1493319 () Bool)

(assert (=> b!1335809 m!1493319))

(declare-fun m!1493321 () Bool)

(assert (=> b!1335810 m!1493321))

(assert (=> b!1335811 m!1493307))

(assert (=> b!1335811 m!1493307))

(assert (=> b!1335811 m!1493313))

(assert (=> b!1335811 m!1493313))

(assert (=> b!1335811 m!1493315))

(declare-fun m!1493323 () Bool)

(assert (=> b!1335811 m!1493323))

(assert (=> b!1335696 d!376247))

(declare-fun b!1335822 () Bool)

(declare-fun res!602330 () Bool)

(declare-fun e!855751 () Bool)

(assert (=> b!1335822 (=> (not res!602330) (not e!855751))))

(declare-fun lt!442264 () List!13702)

(assert (=> b!1335822 (= res!602330 (= (size!11105 lt!442264) (+ (size!11105 lt!442222) (size!11105 (getSuffix!526 lt!442223 lt!442222)))))))

(declare-fun b!1335823 () Bool)

(assert (=> b!1335823 (= e!855751 (or (not (= (getSuffix!526 lt!442223 lt!442222) Nil!13636)) (= lt!442264 lt!442222)))))

(declare-fun d!376271 () Bool)

(assert (=> d!376271 e!855751))

(declare-fun res!602329 () Bool)

(assert (=> d!376271 (=> (not res!602329) (not e!855751))))

(declare-fun content!1934 (List!13702) (Set C!7646))

(assert (=> d!376271 (= res!602329 (= (content!1934 lt!442264) (set.union (content!1934 lt!442222) (content!1934 (getSuffix!526 lt!442223 lt!442222)))))))

(declare-fun e!855750 () List!13702)

(assert (=> d!376271 (= lt!442264 e!855750)))

(declare-fun c!218727 () Bool)

(assert (=> d!376271 (= c!218727 (is-Nil!13636 lt!442222))))

(assert (=> d!376271 (= (++!3483 lt!442222 (getSuffix!526 lt!442223 lt!442222)) lt!442264)))

(declare-fun b!1335820 () Bool)

(assert (=> b!1335820 (= e!855750 (getSuffix!526 lt!442223 lt!442222))))

(declare-fun b!1335821 () Bool)

(assert (=> b!1335821 (= e!855750 (Cons!13636 (h!19037 lt!442222) (++!3483 (t!119233 lt!442222) (getSuffix!526 lt!442223 lt!442222))))))

(assert (= (and d!376271 c!218727) b!1335820))

(assert (= (and d!376271 (not c!218727)) b!1335821))

(assert (= (and d!376271 res!602329) b!1335822))

(assert (= (and b!1335822 res!602330) b!1335823))

(declare-fun m!1493325 () Bool)

(assert (=> b!1335822 m!1493325))

(declare-fun m!1493327 () Bool)

(assert (=> b!1335822 m!1493327))

(assert (=> b!1335822 m!1493195))

(declare-fun m!1493329 () Bool)

(assert (=> b!1335822 m!1493329))

(declare-fun m!1493331 () Bool)

(assert (=> d!376271 m!1493331))

(declare-fun m!1493333 () Bool)

(assert (=> d!376271 m!1493333))

(assert (=> d!376271 m!1493195))

(declare-fun m!1493335 () Bool)

(assert (=> d!376271 m!1493335))

(assert (=> b!1335821 m!1493195))

(declare-fun m!1493337 () Bool)

(assert (=> b!1335821 m!1493337))

(assert (=> b!1335706 d!376271))

(declare-fun d!376273 () Bool)

(declare-fun lt!442267 () List!13702)

(assert (=> d!376273 (= (++!3483 lt!442222 lt!442267) lt!442223)))

(declare-fun e!855754 () List!13702)

(assert (=> d!376273 (= lt!442267 e!855754)))

(declare-fun c!218730 () Bool)

(assert (=> d!376273 (= c!218730 (is-Cons!13636 lt!442222))))

(assert (=> d!376273 (>= (size!11105 lt!442223) (size!11105 lt!442222))))

(assert (=> d!376273 (= (getSuffix!526 lt!442223 lt!442222) lt!442267)))

(declare-fun b!1335828 () Bool)

(declare-fun tail!1915 (List!13702) List!13702)

(assert (=> b!1335828 (= e!855754 (getSuffix!526 (tail!1915 lt!442223) (t!119233 lt!442222)))))

(declare-fun b!1335829 () Bool)

(assert (=> b!1335829 (= e!855754 lt!442223)))

(assert (= (and d!376273 c!218730) b!1335828))

(assert (= (and d!376273 (not c!218730)) b!1335829))

(declare-fun m!1493339 () Bool)

(assert (=> d!376273 m!1493339))

(declare-fun m!1493341 () Bool)

(assert (=> d!376273 m!1493341))

(assert (=> d!376273 m!1493327))

(declare-fun m!1493343 () Bool)

(assert (=> b!1335828 m!1493343))

(assert (=> b!1335828 m!1493343))

(declare-fun m!1493345 () Bool)

(assert (=> b!1335828 m!1493345))

(assert (=> b!1335706 d!376273))

(declare-fun d!376275 () Bool)

(declare-fun lt!442270 () List!13702)

(declare-fun dynLambda!6004 (Int List!13702) Bool)

(assert (=> d!376275 (dynLambda!6004 lambda!55974 lt!442270)))

(declare-fun choose!8184 (Int) List!13702)

(assert (=> d!376275 (= lt!442270 (choose!8184 lambda!55974))))

(assert (=> d!376275 (Exists!830 lambda!55974)))

(assert (=> d!376275 (= (pickWitness!133 lambda!55974) lt!442270)))

(declare-fun b_lambda!39395 () Bool)

(assert (=> (not b_lambda!39395) (not d!376275)))

(declare-fun bs!331934 () Bool)

(assert (= bs!331934 d!376275))

(declare-fun m!1493347 () Bool)

(assert (=> bs!331934 m!1493347))

(declare-fun m!1493349 () Bool)

(assert (=> bs!331934 m!1493349))

(assert (=> bs!331934 m!1493145))

(assert (=> b!1335706 d!376275))

(declare-fun d!376277 () Bool)

(declare-fun res!602333 () Bool)

(declare-fun e!855757 () Bool)

(assert (=> d!376277 (=> (not res!602333) (not e!855757))))

(declare-fun rulesValid!860 (LexerInterface!2059 List!13703) Bool)

(assert (=> d!376277 (= res!602333 (rulesValid!860 thiss!19762 rules!2550))))

(assert (=> d!376277 (= (rulesInvariant!1929 thiss!19762 rules!2550) e!855757)))

(declare-fun b!1335832 () Bool)

(declare-datatypes ((List!13708 0))(
  ( (Nil!13642) (Cons!13642 (h!19043 String!16508) (t!119262 List!13708)) )
))
(declare-fun noDuplicateTag!860 (LexerInterface!2059 List!13703 List!13708) Bool)

(assert (=> b!1335832 (= e!855757 (noDuplicateTag!860 thiss!19762 rules!2550 Nil!13642))))

(assert (= (and d!376277 res!602333) b!1335832))

(declare-fun m!1493351 () Bool)

(assert (=> d!376277 m!1493351))

(declare-fun m!1493353 () Bool)

(assert (=> b!1335832 m!1493353))

(assert (=> b!1335695 d!376277))

(declare-fun d!376279 () Bool)

(declare-fun lt!442271 () Bool)

(declare-fun e!855759 () Bool)

(assert (=> d!376279 (= lt!442271 e!855759)))

(declare-fun res!602334 () Bool)

(assert (=> d!376279 (=> (not res!602334) (not e!855759))))

(assert (=> d!376279 (= res!602334 (= (list!5182 (_1!7520 (lex!890 thiss!19762 rules!2550 (print!829 thiss!19762 (singletonSeq!963 t1!34))))) (list!5182 (singletonSeq!963 t1!34))))))

(declare-fun e!855758 () Bool)

(assert (=> d!376279 (= lt!442271 e!855758)))

(declare-fun res!602335 () Bool)

(assert (=> d!376279 (=> (not res!602335) (not e!855758))))

(declare-fun lt!442272 () tuple2!13268)

(assert (=> d!376279 (= res!602335 (= (size!11107 (_1!7520 lt!442272)) 1))))

(assert (=> d!376279 (= lt!442272 (lex!890 thiss!19762 rules!2550 (print!829 thiss!19762 (singletonSeq!963 t1!34))))))

(assert (=> d!376279 (not (isEmpty!8132 rules!2550))))

(assert (=> d!376279 (= (rulesProduceIndividualToken!1028 thiss!19762 rules!2550 t1!34) lt!442271)))

(declare-fun b!1335833 () Bool)

(declare-fun res!602336 () Bool)

(assert (=> b!1335833 (=> (not res!602336) (not e!855758))))

(assert (=> b!1335833 (= res!602336 (= (apply!3188 (_1!7520 lt!442272) 0) t1!34))))

(declare-fun b!1335834 () Bool)

(assert (=> b!1335834 (= e!855758 (isEmpty!8134 (_2!7520 lt!442272)))))

(declare-fun b!1335835 () Bool)

(assert (=> b!1335835 (= e!855759 (isEmpty!8134 (_2!7520 (lex!890 thiss!19762 rules!2550 (print!829 thiss!19762 (singletonSeq!963 t1!34))))))))

(assert (= (and d!376279 res!602335) b!1335833))

(assert (= (and b!1335833 res!602336) b!1335834))

(assert (= (and d!376279 res!602334) b!1335835))

(declare-fun m!1493355 () Bool)

(assert (=> d!376279 m!1493355))

(declare-fun m!1493357 () Bool)

(assert (=> d!376279 m!1493357))

(declare-fun m!1493359 () Bool)

(assert (=> d!376279 m!1493359))

(assert (=> d!376279 m!1493143))

(declare-fun m!1493361 () Bool)

(assert (=> d!376279 m!1493361))

(declare-fun m!1493363 () Bool)

(assert (=> d!376279 m!1493363))

(assert (=> d!376279 m!1493355))

(declare-fun m!1493365 () Bool)

(assert (=> d!376279 m!1493365))

(assert (=> d!376279 m!1493355))

(assert (=> d!376279 m!1493361))

(declare-fun m!1493367 () Bool)

(assert (=> b!1335833 m!1493367))

(declare-fun m!1493369 () Bool)

(assert (=> b!1335834 m!1493369))

(assert (=> b!1335835 m!1493355))

(assert (=> b!1335835 m!1493355))

(assert (=> b!1335835 m!1493361))

(assert (=> b!1335835 m!1493361))

(assert (=> b!1335835 m!1493363))

(declare-fun m!1493371 () Bool)

(assert (=> b!1335835 m!1493371))

(assert (=> b!1335708 d!376279))

(declare-fun d!376281 () Bool)

(declare-fun res!602341 () Bool)

(declare-fun e!855762 () Bool)

(assert (=> d!376281 (=> (not res!602341) (not e!855762))))

(declare-fun isEmpty!8135 (List!13702) Bool)

(assert (=> d!376281 (= res!602341 (not (isEmpty!8135 (originalCharacters!3226 t1!34))))))

(assert (=> d!376281 (= (inv!17975 t1!34) e!855762)))

(declare-fun b!1335840 () Bool)

(declare-fun res!602342 () Bool)

(assert (=> b!1335840 (=> (not res!602342) (not e!855762))))

(assert (=> b!1335840 (= res!602342 (= (originalCharacters!3226 t1!34) (list!5180 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (value!77008 t1!34)))))))

(declare-fun b!1335841 () Bool)

(assert (=> b!1335841 (= e!855762 (= (size!11101 t1!34) (size!11105 (originalCharacters!3226 t1!34))))))

(assert (= (and d!376281 res!602341) b!1335840))

(assert (= (and b!1335840 res!602342) b!1335841))

(declare-fun b_lambda!39397 () Bool)

(assert (=> (not b_lambda!39397) (not b!1335840)))

(declare-fun t!119252 () Bool)

(declare-fun tb!70453 () Bool)

(assert (=> (and b!1335692 (= (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toChars!3458 (transformation!2364 (rule!4109 t1!34)))) t!119252) tb!70453))

(declare-fun b!1335842 () Bool)

(declare-fun e!855763 () Bool)

(declare-fun tp!386515 () Bool)

(assert (=> b!1335842 (= e!855763 (and (inv!17978 (c!218721 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (value!77008 t1!34)))) tp!386515))))

(declare-fun result!85586 () Bool)

(assert (=> tb!70453 (= result!85586 (and (inv!17979 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (value!77008 t1!34))) e!855763))))

(assert (= tb!70453 b!1335842))

(declare-fun m!1493373 () Bool)

(assert (=> b!1335842 m!1493373))

(declare-fun m!1493375 () Bool)

(assert (=> tb!70453 m!1493375))

(assert (=> b!1335840 t!119252))

(declare-fun b_and!89379 () Bool)

(assert (= b_and!89367 (and (=> t!119252 result!85586) b_and!89379)))

(declare-fun t!119254 () Bool)

(declare-fun tb!70455 () Bool)

(assert (=> (and b!1335702 (= (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (toChars!3458 (transformation!2364 (rule!4109 t1!34)))) t!119254) tb!70455))

(declare-fun result!85588 () Bool)

(assert (= result!85588 result!85586))

(assert (=> b!1335840 t!119254))

(declare-fun b_and!89381 () Bool)

(assert (= b_and!89369 (and (=> t!119254 result!85588) b_and!89381)))

(declare-fun tb!70457 () Bool)

(declare-fun t!119256 () Bool)

(assert (=> (and b!1335707 (= (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (toChars!3458 (transformation!2364 (rule!4109 t1!34)))) t!119256) tb!70457))

(declare-fun result!85590 () Bool)

(assert (= result!85590 result!85586))

(assert (=> b!1335840 t!119256))

(declare-fun b_and!89383 () Bool)

(assert (= b_and!89371 (and (=> t!119256 result!85590) b_and!89383)))

(declare-fun m!1493377 () Bool)

(assert (=> d!376281 m!1493377))

(declare-fun m!1493379 () Bool)

(assert (=> b!1335840 m!1493379))

(assert (=> b!1335840 m!1493379))

(declare-fun m!1493381 () Bool)

(assert (=> b!1335840 m!1493381))

(declare-fun m!1493383 () Bool)

(assert (=> b!1335841 m!1493383))

(assert (=> start!118916 d!376281))

(declare-fun d!376283 () Bool)

(declare-fun res!602343 () Bool)

(declare-fun e!855764 () Bool)

(assert (=> d!376283 (=> (not res!602343) (not e!855764))))

(assert (=> d!376283 (= res!602343 (not (isEmpty!8135 (originalCharacters!3226 t2!34))))))

(assert (=> d!376283 (= (inv!17975 t2!34) e!855764)))

(declare-fun b!1335843 () Bool)

(declare-fun res!602344 () Bool)

(assert (=> b!1335843 (=> (not res!602344) (not e!855764))))

(assert (=> b!1335843 (= res!602344 (= (originalCharacters!3226 t2!34) (list!5180 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (value!77008 t2!34)))))))

(declare-fun b!1335844 () Bool)

(assert (=> b!1335844 (= e!855764 (= (size!11101 t2!34) (size!11105 (originalCharacters!3226 t2!34))))))

(assert (= (and d!376283 res!602343) b!1335843))

(assert (= (and b!1335843 res!602344) b!1335844))

(declare-fun b_lambda!39399 () Bool)

(assert (=> (not b_lambda!39399) (not b!1335843)))

(assert (=> b!1335843 t!119239))

(declare-fun b_and!89385 () Bool)

(assert (= b_and!89379 (and (=> t!119239 result!85570) b_and!89385)))

(assert (=> b!1335843 t!119241))

(declare-fun b_and!89387 () Bool)

(assert (= b_and!89381 (and (=> t!119241 result!85574) b_and!89387)))

(assert (=> b!1335843 t!119243))

(declare-fun b_and!89389 () Bool)

(assert (= b_and!89383 (and (=> t!119243 result!85576) b_and!89389)))

(declare-fun m!1493385 () Bool)

(assert (=> d!376283 m!1493385))

(assert (=> b!1335843 m!1493271))

(assert (=> b!1335843 m!1493271))

(declare-fun m!1493387 () Bool)

(assert (=> b!1335843 m!1493387))

(declare-fun m!1493389 () Bool)

(assert (=> b!1335844 m!1493389))

(assert (=> start!118916 d!376283))

(declare-fun d!376285 () Bool)

(declare-fun prefixMatchZipperSequence!205 (Regex!3678 BalanceConc!8928) Bool)

(declare-fun ++!3485 (BalanceConc!8928 BalanceConc!8928) BalanceConc!8928)

(declare-fun singletonSeq!964 (C!7646) BalanceConc!8928)

(assert (=> d!376285 (= (separableTokensPredicate!342 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!205 (rulesRegex!247 thiss!19762 rules!2550) (++!3485 (charsOf!1336 t1!34) (singletonSeq!964 (apply!3186 (charsOf!1336 t2!34) 0))))))))

(declare-fun bs!331935 () Bool)

(assert (= bs!331935 d!376285))

(assert (=> bs!331935 m!1493171))

(declare-fun m!1493391 () Bool)

(assert (=> bs!331935 m!1493391))

(declare-fun m!1493393 () Bool)

(assert (=> bs!331935 m!1493393))

(assert (=> bs!331935 m!1493153))

(assert (=> bs!331935 m!1493179))

(assert (=> bs!331935 m!1493153))

(declare-fun m!1493395 () Bool)

(assert (=> bs!331935 m!1493395))

(assert (=> bs!331935 m!1493171))

(assert (=> bs!331935 m!1493395))

(assert (=> bs!331935 m!1493391))

(assert (=> bs!331935 m!1493179))

(assert (=> bs!331935 m!1493393))

(declare-fun m!1493397 () Bool)

(assert (=> bs!331935 m!1493397))

(assert (=> b!1335697 d!376285))

(declare-fun d!376287 () Bool)

(declare-fun choose!8185 (Int) Bool)

(assert (=> d!376287 (= (Exists!830 lambda!55974) (choose!8185 lambda!55974))))

(declare-fun bs!331936 () Bool)

(assert (= bs!331936 d!376287))

(declare-fun m!1493399 () Bool)

(assert (=> bs!331936 m!1493399))

(assert (=> b!1335709 d!376287))

(declare-fun bs!331937 () Bool)

(declare-fun d!376289 () Bool)

(assert (= bs!331937 (and d!376289 b!1335709)))

(declare-fun lambda!55987 () Int)

(assert (=> bs!331937 (= lambda!55987 lambda!55974)))

(assert (=> d!376289 true))

(assert (=> d!376289 true))

(assert (=> d!376289 (Exists!830 lambda!55987)))

(declare-fun lt!442275 () Unit!19772)

(declare-fun choose!8186 (Regex!3678 List!13702) Unit!19772)

(assert (=> d!376289 (= lt!442275 (choose!8186 lt!442221 lt!442222))))

(declare-fun validRegex!1582 (Regex!3678) Bool)

(assert (=> d!376289 (validRegex!1582 lt!442221)))

(assert (=> d!376289 (= (lemmaPrefixMatchThenExistsStringThatMatches!148 lt!442221 lt!442222) lt!442275)))

(declare-fun bs!331938 () Bool)

(assert (= bs!331938 d!376289))

(declare-fun m!1493401 () Bool)

(assert (=> bs!331938 m!1493401))

(declare-fun m!1493403 () Bool)

(assert (=> bs!331938 m!1493403))

(declare-fun m!1493405 () Bool)

(assert (=> bs!331938 m!1493405))

(assert (=> b!1335709 d!376289))

(declare-fun d!376291 () Bool)

(declare-fun c!218735 () Bool)

(assert (=> d!376291 (= c!218735 (is-IntegerValue!7362 (value!77008 t1!34)))))

(declare-fun e!855773 () Bool)

(assert (=> d!376291 (= (inv!21 (value!77008 t1!34)) e!855773)))

(declare-fun b!1335857 () Bool)

(declare-fun inv!16 (TokenValue!2454) Bool)

(assert (=> b!1335857 (= e!855773 (inv!16 (value!77008 t1!34)))))

(declare-fun b!1335858 () Bool)

(declare-fun e!855774 () Bool)

(declare-fun inv!17 (TokenValue!2454) Bool)

(assert (=> b!1335858 (= e!855774 (inv!17 (value!77008 t1!34)))))

(declare-fun b!1335859 () Bool)

(declare-fun e!855775 () Bool)

(declare-fun inv!15 (TokenValue!2454) Bool)

(assert (=> b!1335859 (= e!855775 (inv!15 (value!77008 t1!34)))))

(declare-fun b!1335860 () Bool)

(declare-fun res!602349 () Bool)

(assert (=> b!1335860 (=> res!602349 e!855775)))

(assert (=> b!1335860 (= res!602349 (not (is-IntegerValue!7364 (value!77008 t1!34))))))

(assert (=> b!1335860 (= e!855774 e!855775)))

(declare-fun b!1335861 () Bool)

(assert (=> b!1335861 (= e!855773 e!855774)))

(declare-fun c!218736 () Bool)

(assert (=> b!1335861 (= c!218736 (is-IntegerValue!7363 (value!77008 t1!34)))))

(assert (= (and d!376291 c!218735) b!1335857))

(assert (= (and d!376291 (not c!218735)) b!1335861))

(assert (= (and b!1335861 c!218736) b!1335858))

(assert (= (and b!1335861 (not c!218736)) b!1335860))

(assert (= (and b!1335860 (not res!602349)) b!1335859))

(declare-fun m!1493407 () Bool)

(assert (=> b!1335857 m!1493407))

(declare-fun m!1493409 () Bool)

(assert (=> b!1335858 m!1493409))

(declare-fun m!1493411 () Bool)

(assert (=> b!1335859 m!1493411))

(assert (=> b!1335698 d!376291))

(declare-fun d!376293 () Bool)

(assert (=> d!376293 (= (inv!17971 (tag!2626 (rule!4109 t2!34))) (= (mod (str.len (value!77007 (tag!2626 (rule!4109 t2!34)))) 2) 0))))

(assert (=> b!1335700 d!376293))

(declare-fun d!376295 () Bool)

(declare-fun res!602352 () Bool)

(declare-fun e!855778 () Bool)

(assert (=> d!376295 (=> (not res!602352) (not e!855778))))

(declare-fun semiInverseModEq!891 (Int Int) Bool)

(assert (=> d!376295 (= res!602352 (semiInverseModEq!891 (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (toValue!3599 (transformation!2364 (rule!4109 t2!34)))))))

(assert (=> d!376295 (= (inv!17974 (transformation!2364 (rule!4109 t2!34))) e!855778)))

(declare-fun b!1335864 () Bool)

(declare-fun equivClasses!850 (Int Int) Bool)

(assert (=> b!1335864 (= e!855778 (equivClasses!850 (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (toValue!3599 (transformation!2364 (rule!4109 t2!34)))))))

(assert (= (and d!376295 res!602352) b!1335864))

(declare-fun m!1493413 () Bool)

(assert (=> d!376295 m!1493413))

(declare-fun m!1493415 () Bool)

(assert (=> b!1335864 m!1493415))

(assert (=> b!1335700 d!376295))

(declare-fun b!1335867 () Bool)

(declare-fun res!602354 () Bool)

(declare-fun e!855780 () Bool)

(assert (=> b!1335867 (=> (not res!602354) (not e!855780))))

(declare-fun lt!442276 () List!13702)

(assert (=> b!1335867 (= res!602354 (= (size!11105 lt!442276) (+ (size!11105 (list!5180 (charsOf!1336 t1!34))) (size!11105 (Cons!13636 (apply!3186 lt!442225 0) Nil!13636)))))))

(declare-fun b!1335868 () Bool)

(assert (=> b!1335868 (= e!855780 (or (not (= (Cons!13636 (apply!3186 lt!442225 0) Nil!13636) Nil!13636)) (= lt!442276 (list!5180 (charsOf!1336 t1!34)))))))

(declare-fun d!376297 () Bool)

(assert (=> d!376297 e!855780))

(declare-fun res!602353 () Bool)

(assert (=> d!376297 (=> (not res!602353) (not e!855780))))

(assert (=> d!376297 (= res!602353 (= (content!1934 lt!442276) (set.union (content!1934 (list!5180 (charsOf!1336 t1!34))) (content!1934 (Cons!13636 (apply!3186 lt!442225 0) Nil!13636)))))))

(declare-fun e!855779 () List!13702)

(assert (=> d!376297 (= lt!442276 e!855779)))

(declare-fun c!218737 () Bool)

(assert (=> d!376297 (= c!218737 (is-Nil!13636 (list!5180 (charsOf!1336 t1!34))))))

(assert (=> d!376297 (= (++!3483 (list!5180 (charsOf!1336 t1!34)) (Cons!13636 (apply!3186 lt!442225 0) Nil!13636)) lt!442276)))

(declare-fun b!1335865 () Bool)

(assert (=> b!1335865 (= e!855779 (Cons!13636 (apply!3186 lt!442225 0) Nil!13636))))

(declare-fun b!1335866 () Bool)

(assert (=> b!1335866 (= e!855779 (Cons!13636 (h!19037 (list!5180 (charsOf!1336 t1!34))) (++!3483 (t!119233 (list!5180 (charsOf!1336 t1!34))) (Cons!13636 (apply!3186 lt!442225 0) Nil!13636))))))

(assert (= (and d!376297 c!218737) b!1335865))

(assert (= (and d!376297 (not c!218737)) b!1335866))

(assert (= (and d!376297 res!602353) b!1335867))

(assert (= (and b!1335867 res!602354) b!1335868))

(declare-fun m!1493417 () Bool)

(assert (=> b!1335867 m!1493417))

(assert (=> b!1335867 m!1493173))

(declare-fun m!1493419 () Bool)

(assert (=> b!1335867 m!1493419))

(declare-fun m!1493421 () Bool)

(assert (=> b!1335867 m!1493421))

(declare-fun m!1493423 () Bool)

(assert (=> d!376297 m!1493423))

(assert (=> d!376297 m!1493173))

(declare-fun m!1493425 () Bool)

(assert (=> d!376297 m!1493425))

(declare-fun m!1493427 () Bool)

(assert (=> d!376297 m!1493427))

(declare-fun m!1493429 () Bool)

(assert (=> b!1335866 m!1493429))

(assert (=> b!1335710 d!376297))

(declare-fun d!376299 () Bool)

(declare-fun c!218740 () Bool)

(assert (=> d!376299 (= c!218740 (isEmpty!8135 lt!442222))))

(declare-fun e!855783 () Bool)

(assert (=> d!376299 (= (prefixMatch!187 lt!442221 lt!442222) e!855783)))

(declare-fun b!1335873 () Bool)

(declare-fun lostCause!296 (Regex!3678) Bool)

(assert (=> b!1335873 (= e!855783 (not (lostCause!296 lt!442221)))))

(declare-fun b!1335874 () Bool)

(declare-fun derivativeStep!920 (Regex!3678 C!7646) Regex!3678)

(declare-fun head!2366 (List!13702) C!7646)

(assert (=> b!1335874 (= e!855783 (prefixMatch!187 (derivativeStep!920 lt!442221 (head!2366 lt!442222)) (tail!1915 lt!442222)))))

(assert (= (and d!376299 c!218740) b!1335873))

(assert (= (and d!376299 (not c!218740)) b!1335874))

(declare-fun m!1493431 () Bool)

(assert (=> d!376299 m!1493431))

(declare-fun m!1493433 () Bool)

(assert (=> b!1335873 m!1493433))

(declare-fun m!1493435 () Bool)

(assert (=> b!1335874 m!1493435))

(assert (=> b!1335874 m!1493435))

(declare-fun m!1493437 () Bool)

(assert (=> b!1335874 m!1493437))

(declare-fun m!1493439 () Bool)

(assert (=> b!1335874 m!1493439))

(assert (=> b!1335874 m!1493437))

(assert (=> b!1335874 m!1493439))

(declare-fun m!1493441 () Bool)

(assert (=> b!1335874 m!1493441))

(assert (=> b!1335710 d!376299))

(declare-fun d!376301 () Bool)

(declare-fun list!5183 (Conc!4494) List!13702)

(assert (=> d!376301 (= (list!5180 (charsOf!1336 t1!34)) (list!5183 (c!218721 (charsOf!1336 t1!34))))))

(declare-fun bs!331939 () Bool)

(assert (= bs!331939 d!376301))

(declare-fun m!1493443 () Bool)

(assert (=> bs!331939 m!1493443))

(assert (=> b!1335710 d!376301))

(declare-fun d!376303 () Bool)

(declare-fun lt!442277 () BalanceConc!8928)

(assert (=> d!376303 (= (list!5180 lt!442277) (originalCharacters!3226 t1!34))))

(assert (=> d!376303 (= lt!442277 (dynLambda!6003 (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (value!77008 t1!34)))))

(assert (=> d!376303 (= (charsOf!1336 t1!34) lt!442277)))

(declare-fun b_lambda!39401 () Bool)

(assert (=> (not b_lambda!39401) (not d!376303)))

(assert (=> d!376303 t!119252))

(declare-fun b_and!89391 () Bool)

(assert (= b_and!89385 (and (=> t!119252 result!85586) b_and!89391)))

(assert (=> d!376303 t!119254))

(declare-fun b_and!89393 () Bool)

(assert (= b_and!89387 (and (=> t!119254 result!85588) b_and!89393)))

(assert (=> d!376303 t!119256))

(declare-fun b_and!89395 () Bool)

(assert (= b_and!89389 (and (=> t!119256 result!85590) b_and!89395)))

(declare-fun m!1493445 () Bool)

(assert (=> d!376303 m!1493445))

(assert (=> d!376303 m!1493379))

(assert (=> b!1335710 d!376303))

(declare-fun d!376305 () Bool)

(declare-fun lt!442280 () C!7646)

(declare-fun apply!3189 (List!13702 Int) C!7646)

(assert (=> d!376305 (= lt!442280 (apply!3189 (list!5180 lt!442225) 0))))

(declare-fun apply!3190 (Conc!4494 Int) C!7646)

(assert (=> d!376305 (= lt!442280 (apply!3190 (c!218721 lt!442225) 0))))

(declare-fun e!855786 () Bool)

(assert (=> d!376305 e!855786))

(declare-fun res!602357 () Bool)

(assert (=> d!376305 (=> (not res!602357) (not e!855786))))

(assert (=> d!376305 (= res!602357 (<= 0 0))))

(assert (=> d!376305 (= (apply!3186 lt!442225 0) lt!442280)))

(declare-fun b!1335877 () Bool)

(assert (=> b!1335877 (= e!855786 (< 0 (size!11102 lt!442225)))))

(assert (= (and d!376305 res!602357) b!1335877))

(assert (=> d!376305 m!1493259))

(assert (=> d!376305 m!1493259))

(declare-fun m!1493447 () Bool)

(assert (=> d!376305 m!1493447))

(declare-fun m!1493449 () Bool)

(assert (=> d!376305 m!1493449))

(assert (=> b!1335877 m!1493151))

(assert (=> b!1335710 d!376305))

(declare-fun d!376307 () Bool)

(declare-fun lt!442283 () Unit!19772)

(declare-fun lemma!90 (List!13703 LexerInterface!2059 List!13703) Unit!19772)

(assert (=> d!376307 (= lt!442283 (lemma!90 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!55990 () Int)

(declare-datatypes ((List!13709 0))(
  ( (Nil!13643) (Cons!13643 (h!19044 Regex!3678) (t!119264 List!13709)) )
))
(declare-fun generalisedUnion!98 (List!13709) Regex!3678)

(declare-fun map!3007 (List!13703 Int) List!13709)

(assert (=> d!376307 (= (rulesRegex!247 thiss!19762 rules!2550) (generalisedUnion!98 (map!3007 rules!2550 lambda!55990)))))

(declare-fun bs!331940 () Bool)

(assert (= bs!331940 d!376307))

(declare-fun m!1493451 () Bool)

(assert (=> bs!331940 m!1493451))

(declare-fun m!1493453 () Bool)

(assert (=> bs!331940 m!1493453))

(assert (=> bs!331940 m!1493453))

(declare-fun m!1493455 () Bool)

(assert (=> bs!331940 m!1493455))

(assert (=> b!1335710 d!376307))

(declare-fun d!376309 () Bool)

(assert (=> d!376309 (= (inv!17971 (tag!2626 (h!19038 rules!2550))) (= (mod (str.len (value!77007 (tag!2626 (h!19038 rules!2550)))) 2) 0))))

(assert (=> b!1335701 d!376309))

(declare-fun d!376311 () Bool)

(declare-fun res!602358 () Bool)

(declare-fun e!855787 () Bool)

(assert (=> d!376311 (=> (not res!602358) (not e!855787))))

(assert (=> d!376311 (= res!602358 (semiInverseModEq!891 (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toValue!3599 (transformation!2364 (h!19038 rules!2550)))))))

(assert (=> d!376311 (= (inv!17974 (transformation!2364 (h!19038 rules!2550))) e!855787)))

(declare-fun b!1335878 () Bool)

(assert (=> b!1335878 (= e!855787 (equivClasses!850 (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toValue!3599 (transformation!2364 (h!19038 rules!2550)))))))

(assert (= (and d!376311 res!602358) b!1335878))

(declare-fun m!1493457 () Bool)

(assert (=> d!376311 m!1493457))

(declare-fun m!1493459 () Bool)

(assert (=> b!1335878 m!1493459))

(assert (=> b!1335701 d!376311))

(declare-fun d!376313 () Bool)

(declare-fun res!602363 () Bool)

(declare-fun e!855792 () Bool)

(assert (=> d!376313 (=> res!602363 e!855792)))

(assert (=> d!376313 (= res!602363 (not (is-Cons!13637 rules!2550)))))

(assert (=> d!376313 (= (sepAndNonSepRulesDisjointChars!737 rules!2550 rules!2550) e!855792)))

(declare-fun b!1335883 () Bool)

(declare-fun e!855793 () Bool)

(assert (=> b!1335883 (= e!855792 e!855793)))

(declare-fun res!602364 () Bool)

(assert (=> b!1335883 (=> (not res!602364) (not e!855793))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!333 (Rule!4528 List!13703) Bool)

(assert (=> b!1335883 (= res!602364 (ruleDisjointCharsFromAllFromOtherType!333 (h!19038 rules!2550) rules!2550))))

(declare-fun b!1335884 () Bool)

(assert (=> b!1335884 (= e!855793 (sepAndNonSepRulesDisjointChars!737 rules!2550 (t!119234 rules!2550)))))

(assert (= (and d!376313 (not res!602363)) b!1335883))

(assert (= (and b!1335883 res!602364) b!1335884))

(declare-fun m!1493461 () Bool)

(assert (=> b!1335883 m!1493461))

(declare-fun m!1493463 () Bool)

(assert (=> b!1335884 m!1493463))

(assert (=> b!1335711 d!376313))

(declare-fun d!376315 () Bool)

(declare-fun c!218741 () Bool)

(assert (=> d!376315 (= c!218741 (is-IntegerValue!7362 (value!77008 t2!34)))))

(declare-fun e!855794 () Bool)

(assert (=> d!376315 (= (inv!21 (value!77008 t2!34)) e!855794)))

(declare-fun b!1335885 () Bool)

(assert (=> b!1335885 (= e!855794 (inv!16 (value!77008 t2!34)))))

(declare-fun b!1335886 () Bool)

(declare-fun e!855795 () Bool)

(assert (=> b!1335886 (= e!855795 (inv!17 (value!77008 t2!34)))))

(declare-fun b!1335887 () Bool)

(declare-fun e!855796 () Bool)

(assert (=> b!1335887 (= e!855796 (inv!15 (value!77008 t2!34)))))

(declare-fun b!1335888 () Bool)

(declare-fun res!602365 () Bool)

(assert (=> b!1335888 (=> res!602365 e!855796)))

(assert (=> b!1335888 (= res!602365 (not (is-IntegerValue!7364 (value!77008 t2!34))))))

(assert (=> b!1335888 (= e!855795 e!855796)))

(declare-fun b!1335889 () Bool)

(assert (=> b!1335889 (= e!855794 e!855795)))

(declare-fun c!218742 () Bool)

(assert (=> b!1335889 (= c!218742 (is-IntegerValue!7363 (value!77008 t2!34)))))

(assert (= (and d!376315 c!218741) b!1335885))

(assert (= (and d!376315 (not c!218741)) b!1335889))

(assert (= (and b!1335889 c!218742) b!1335886))

(assert (= (and b!1335889 (not c!218742)) b!1335888))

(assert (= (and b!1335888 (not res!602365)) b!1335887))

(declare-fun m!1493465 () Bool)

(assert (=> b!1335885 m!1493465))

(declare-fun m!1493467 () Bool)

(assert (=> b!1335886 m!1493467))

(declare-fun m!1493469 () Bool)

(assert (=> b!1335887 m!1493469))

(assert (=> b!1335704 d!376315))

(declare-fun d!376317 () Bool)

(assert (=> d!376317 (= (isEmpty!8132 rules!2550) (is-Nil!13637 rules!2550))))

(assert (=> b!1335693 d!376317))

(declare-fun d!376319 () Bool)

(assert (=> d!376319 (= (inv!17971 (tag!2626 (rule!4109 t1!34))) (= (mod (str.len (value!77007 (tag!2626 (rule!4109 t1!34)))) 2) 0))))

(assert (=> b!1335703 d!376319))

(declare-fun d!376321 () Bool)

(declare-fun res!602366 () Bool)

(declare-fun e!855797 () Bool)

(assert (=> d!376321 (=> (not res!602366) (not e!855797))))

(assert (=> d!376321 (= res!602366 (semiInverseModEq!891 (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (toValue!3599 (transformation!2364 (rule!4109 t1!34)))))))

(assert (=> d!376321 (= (inv!17974 (transformation!2364 (rule!4109 t1!34))) e!855797)))

(declare-fun b!1335890 () Bool)

(assert (=> b!1335890 (= e!855797 (equivClasses!850 (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (toValue!3599 (transformation!2364 (rule!4109 t1!34)))))))

(assert (= (and d!376321 res!602366) b!1335890))

(declare-fun m!1493471 () Bool)

(assert (=> d!376321 m!1493471))

(declare-fun m!1493473 () Bool)

(assert (=> b!1335890 m!1493473))

(assert (=> b!1335703 d!376321))

(declare-fun b!1335904 () Bool)

(declare-fun e!855800 () Bool)

(declare-fun tp!386530 () Bool)

(declare-fun tp!386529 () Bool)

(assert (=> b!1335904 (= e!855800 (and tp!386530 tp!386529))))

(declare-fun b!1335901 () Bool)

(declare-fun tp_is_empty!6673 () Bool)

(assert (=> b!1335901 (= e!855800 tp_is_empty!6673)))

(declare-fun b!1335903 () Bool)

(declare-fun tp!386527 () Bool)

(assert (=> b!1335903 (= e!855800 tp!386527)))

(declare-fun b!1335902 () Bool)

(declare-fun tp!386528 () Bool)

(declare-fun tp!386526 () Bool)

(assert (=> b!1335902 (= e!855800 (and tp!386528 tp!386526))))

(assert (=> b!1335700 (= tp!386470 e!855800)))

(assert (= (and b!1335700 (is-ElementMatch!3678 (regex!2364 (rule!4109 t2!34)))) b!1335901))

(assert (= (and b!1335700 (is-Concat!6133 (regex!2364 (rule!4109 t2!34)))) b!1335902))

(assert (= (and b!1335700 (is-Star!3678 (regex!2364 (rule!4109 t2!34)))) b!1335903))

(assert (= (and b!1335700 (is-Union!3678 (regex!2364 (rule!4109 t2!34)))) b!1335904))

(declare-fun b!1335915 () Bool)

(declare-fun b_free!32519 () Bool)

(declare-fun b_next!33223 () Bool)

(assert (=> b!1335915 (= b_free!32519 (not b_next!33223))))

(declare-fun tp!386541 () Bool)

(declare-fun b_and!89397 () Bool)

(assert (=> b!1335915 (= tp!386541 b_and!89397)))

(declare-fun b_free!32521 () Bool)

(declare-fun b_next!33225 () Bool)

(assert (=> b!1335915 (= b_free!32521 (not b_next!33225))))

(declare-fun tb!70459 () Bool)

(declare-fun t!119258 () Bool)

(assert (=> (and b!1335915 (= (toChars!3458 (transformation!2364 (h!19038 (t!119234 rules!2550)))) (toChars!3458 (transformation!2364 (rule!4109 t2!34)))) t!119258) tb!70459))

(declare-fun result!85596 () Bool)

(assert (= result!85596 result!85570))

(assert (=> d!376245 t!119258))

(declare-fun tb!70461 () Bool)

(declare-fun t!119260 () Bool)

(assert (=> (and b!1335915 (= (toChars!3458 (transformation!2364 (h!19038 (t!119234 rules!2550)))) (toChars!3458 (transformation!2364 (rule!4109 t1!34)))) t!119260) tb!70461))

(declare-fun result!85598 () Bool)

(assert (= result!85598 result!85586))

(assert (=> b!1335840 t!119260))

(assert (=> b!1335843 t!119258))

(assert (=> d!376303 t!119260))

(declare-fun tp!386540 () Bool)

(declare-fun b_and!89399 () Bool)

(assert (=> b!1335915 (= tp!386540 (and (=> t!119258 result!85596) (=> t!119260 result!85598) b_and!89399))))

(declare-fun e!855812 () Bool)

(assert (=> b!1335915 (= e!855812 (and tp!386541 tp!386540))))

(declare-fun tp!386539 () Bool)

(declare-fun b!1335914 () Bool)

(declare-fun e!855810 () Bool)

(assert (=> b!1335914 (= e!855810 (and tp!386539 (inv!17971 (tag!2626 (h!19038 (t!119234 rules!2550)))) (inv!17974 (transformation!2364 (h!19038 (t!119234 rules!2550)))) e!855812))))

(declare-fun b!1335913 () Bool)

(declare-fun e!855809 () Bool)

(declare-fun tp!386542 () Bool)

(assert (=> b!1335913 (= e!855809 (and e!855810 tp!386542))))

(assert (=> b!1335699 (= tp!386471 e!855809)))

(assert (= b!1335914 b!1335915))

(assert (= b!1335913 b!1335914))

(assert (= (and b!1335699 (is-Cons!13637 (t!119234 rules!2550))) b!1335913))

(declare-fun m!1493475 () Bool)

(assert (=> b!1335914 m!1493475))

(declare-fun m!1493477 () Bool)

(assert (=> b!1335914 m!1493477))

(declare-fun b!1335919 () Bool)

(declare-fun e!855813 () Bool)

(declare-fun tp!386547 () Bool)

(declare-fun tp!386546 () Bool)

(assert (=> b!1335919 (= e!855813 (and tp!386547 tp!386546))))

(declare-fun b!1335916 () Bool)

(assert (=> b!1335916 (= e!855813 tp_is_empty!6673)))

(declare-fun b!1335918 () Bool)

(declare-fun tp!386544 () Bool)

(assert (=> b!1335918 (= e!855813 tp!386544)))

(declare-fun b!1335917 () Bool)

(declare-fun tp!386545 () Bool)

(declare-fun tp!386543 () Bool)

(assert (=> b!1335917 (= e!855813 (and tp!386545 tp!386543))))

(assert (=> b!1335701 (= tp!386467 e!855813)))

(assert (= (and b!1335701 (is-ElementMatch!3678 (regex!2364 (h!19038 rules!2550)))) b!1335916))

(assert (= (and b!1335701 (is-Concat!6133 (regex!2364 (h!19038 rules!2550)))) b!1335917))

(assert (= (and b!1335701 (is-Star!3678 (regex!2364 (h!19038 rules!2550)))) b!1335918))

(assert (= (and b!1335701 (is-Union!3678 (regex!2364 (h!19038 rules!2550)))) b!1335919))

(declare-fun b!1335924 () Bool)

(declare-fun e!855816 () Bool)

(declare-fun tp!386550 () Bool)

(assert (=> b!1335924 (= e!855816 (and tp_is_empty!6673 tp!386550))))

(assert (=> b!1335704 (= tp!386462 e!855816)))

(assert (= (and b!1335704 (is-Cons!13636 (originalCharacters!3226 t2!34))) b!1335924))

(declare-fun b!1335925 () Bool)

(declare-fun e!855817 () Bool)

(declare-fun tp!386551 () Bool)

(assert (=> b!1335925 (= e!855817 (and tp_is_empty!6673 tp!386551))))

(assert (=> b!1335698 (= tp!386472 e!855817)))

(assert (= (and b!1335698 (is-Cons!13636 (originalCharacters!3226 t1!34))) b!1335925))

(declare-fun b!1335929 () Bool)

(declare-fun e!855818 () Bool)

(declare-fun tp!386556 () Bool)

(declare-fun tp!386555 () Bool)

(assert (=> b!1335929 (= e!855818 (and tp!386556 tp!386555))))

(declare-fun b!1335926 () Bool)

(assert (=> b!1335926 (= e!855818 tp_is_empty!6673)))

(declare-fun b!1335928 () Bool)

(declare-fun tp!386553 () Bool)

(assert (=> b!1335928 (= e!855818 tp!386553)))

(declare-fun b!1335927 () Bool)

(declare-fun tp!386554 () Bool)

(declare-fun tp!386552 () Bool)

(assert (=> b!1335927 (= e!855818 (and tp!386554 tp!386552))))

(assert (=> b!1335703 (= tp!386464 e!855818)))

(assert (= (and b!1335703 (is-ElementMatch!3678 (regex!2364 (rule!4109 t1!34)))) b!1335926))

(assert (= (and b!1335703 (is-Concat!6133 (regex!2364 (rule!4109 t1!34)))) b!1335927))

(assert (= (and b!1335703 (is-Star!3678 (regex!2364 (rule!4109 t1!34)))) b!1335928))

(assert (= (and b!1335703 (is-Union!3678 (regex!2364 (rule!4109 t1!34)))) b!1335929))

(declare-fun b_lambda!39403 () Bool)

(assert (= b_lambda!39391 (or (and b!1335692 b_free!32497 (= (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toChars!3458 (transformation!2364 (rule!4109 t2!34))))) (and b!1335702 b_free!32501 (= (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (toChars!3458 (transformation!2364 (rule!4109 t2!34))))) (and b!1335707 b_free!32505) (and b!1335915 b_free!32521 (= (toChars!3458 (transformation!2364 (h!19038 (t!119234 rules!2550)))) (toChars!3458 (transformation!2364 (rule!4109 t2!34))))) b_lambda!39403)))

(declare-fun b_lambda!39405 () Bool)

(assert (= b_lambda!39395 (or b!1335709 b_lambda!39405)))

(declare-fun bs!331941 () Bool)

(declare-fun d!376323 () Bool)

(assert (= bs!331941 (and d!376323 b!1335709)))

(declare-fun res!602367 () Bool)

(declare-fun e!855819 () Bool)

(assert (=> bs!331941 (=> (not res!602367) (not e!855819))))

(declare-fun matchR!1672 (Regex!3678 List!13702) Bool)

(assert (=> bs!331941 (= res!602367 (matchR!1672 lt!442221 lt!442270))))

(assert (=> bs!331941 (= (dynLambda!6004 lambda!55974 lt!442270) e!855819)))

(declare-fun b!1335930 () Bool)

(declare-fun isPrefix!1093 (List!13702 List!13702) Bool)

(assert (=> b!1335930 (= e!855819 (isPrefix!1093 lt!442222 lt!442270))))

(assert (= (and bs!331941 res!602367) b!1335930))

(declare-fun m!1493479 () Bool)

(assert (=> bs!331941 m!1493479))

(declare-fun m!1493481 () Bool)

(assert (=> b!1335930 m!1493481))

(assert (=> d!376275 d!376323))

(declare-fun b_lambda!39407 () Bool)

(assert (= b_lambda!39397 (or (and b!1335692 b_free!32497 (= (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toChars!3458 (transformation!2364 (rule!4109 t1!34))))) (and b!1335702 b_free!32501) (and b!1335707 b_free!32505 (= (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (toChars!3458 (transformation!2364 (rule!4109 t1!34))))) (and b!1335915 b_free!32521 (= (toChars!3458 (transformation!2364 (h!19038 (t!119234 rules!2550)))) (toChars!3458 (transformation!2364 (rule!4109 t1!34))))) b_lambda!39407)))

(declare-fun b_lambda!39409 () Bool)

(assert (= b_lambda!39399 (or (and b!1335692 b_free!32497 (= (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toChars!3458 (transformation!2364 (rule!4109 t2!34))))) (and b!1335702 b_free!32501 (= (toChars!3458 (transformation!2364 (rule!4109 t1!34))) (toChars!3458 (transformation!2364 (rule!4109 t2!34))))) (and b!1335707 b_free!32505) (and b!1335915 b_free!32521 (= (toChars!3458 (transformation!2364 (h!19038 (t!119234 rules!2550)))) (toChars!3458 (transformation!2364 (rule!4109 t2!34))))) b_lambda!39409)))

(declare-fun b_lambda!39411 () Bool)

(assert (= b_lambda!39401 (or (and b!1335692 b_free!32497 (= (toChars!3458 (transformation!2364 (h!19038 rules!2550))) (toChars!3458 (transformation!2364 (rule!4109 t1!34))))) (and b!1335702 b_free!32501) (and b!1335707 b_free!32505 (= (toChars!3458 (transformation!2364 (rule!4109 t2!34))) (toChars!3458 (transformation!2364 (rule!4109 t1!34))))) (and b!1335915 b_free!32521 (= (toChars!3458 (transformation!2364 (h!19038 (t!119234 rules!2550)))) (toChars!3458 (transformation!2364 (rule!4109 t1!34))))) b_lambda!39411)))

(push 1)

(assert (not b_lambda!39411))

(assert (not d!376287))

(assert (not b!1335877))

(assert (not b!1335833))

(assert (not b!1335873))

(assert (not b!1335858))

(assert (not b!1335927))

(assert (not b!1335857))

(assert (not b!1335885))

(assert (not d!376243))

(assert (not d!376271))

(assert (not d!376299))

(assert (not b_lambda!39409))

(assert (not b!1335809))

(assert (not b!1335828))

(assert (not d!376281))

(assert (not b!1335913))

(assert (not d!376297))

(assert (not b!1335867))

(assert (not b!1335790))

(assert (not b!1335904))

(assert (not d!376289))

(assert b_and!89393)

(assert b_and!89397)

(assert (not b!1335887))

(assert (not b!1335844))

(assert (not b!1335822))

(assert (not d!376245))

(assert (not b!1335924))

(assert (not d!376279))

(assert (not b_next!33223))

(assert (not b!1335890))

(assert (not b!1335874))

(assert (not b_next!33201))

(assert (not b_lambda!39407))

(assert (not d!376285))

(assert (not b!1335811))

(assert (not d!376301))

(assert (not d!376311))

(assert (not b_next!33207))

(assert (not b!1335810))

(assert (not b!1335914))

(assert (not b!1335918))

(assert tp_is_empty!6673)

(assert (not b!1335834))

(assert b_and!89395)

(assert (not b!1335878))

(assert (not b_next!33209))

(assert (not b_lambda!39403))

(assert (not d!376277))

(assert (not b_next!33199))

(assert (not b!1335883))

(assert (not bs!331941))

(assert (not d!376273))

(assert (not b!1335821))

(assert (not b_lambda!39405))

(assert (not b!1335919))

(assert (not d!376295))

(assert (not b!1335859))

(assert (not b!1335832))

(assert (not d!376303))

(assert b_and!89351)

(assert (not b!1335884))

(assert (not d!376307))

(assert (not b_next!33225))

(assert b_and!89347)

(assert (not d!376283))

(assert (not b!1335917))

(assert (not d!376247))

(assert (not tb!70441))

(assert (not b!1335928))

(assert b_and!89343)

(assert b_and!89399)

(assert (not b!1335902))

(assert (not b!1335841))

(assert (not d!376305))

(assert (not b!1335903))

(assert b_and!89391)

(assert (not b!1335866))

(assert (not d!376321))

(assert (not b!1335929))

(assert (not tb!70453))

(assert (not b!1335925))

(assert (not d!376275))

(assert (not b!1335842))

(assert (not b!1335843))

(assert (not b!1335835))

(assert (not b!1335930))

(assert (not b!1335864))

(assert (not b_next!33205))

(assert (not b!1335886))

(assert (not b!1335840))

(assert (not b_next!33203))

(check-sat)

(pop 1)

(push 1)

(assert b_and!89393)

(assert b_and!89397)

(assert (not b_next!33223))

(assert (not b_next!33201))

(assert (not b_next!33207))

(assert b_and!89395)

(assert (not b_next!33209))

(assert (not b_next!33199))

(assert b_and!89351)

(assert b_and!89343)

(assert b_and!89399)

(assert b_and!89391)

(assert (not b_next!33225))

(assert b_and!89347)

(assert (not b_next!33203))

(assert (not b_next!33205))

(check-sat)

(pop 1)

