; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!137892 () Bool)

(assert start!137892)

(declare-fun b!1472141 () Bool)

(declare-fun b_free!37323 () Bool)

(declare-fun b_next!38027 () Bool)

(assert (=> b!1472141 (= b_free!37323 (not b_next!38027))))

(declare-fun tp!415868 () Bool)

(declare-fun b_and!101117 () Bool)

(assert (=> b!1472141 (= tp!415868 b_and!101117)))

(declare-fun b_free!37325 () Bool)

(declare-fun b_next!38029 () Bool)

(assert (=> b!1472141 (= b_free!37325 (not b_next!38029))))

(declare-fun tp!415861 () Bool)

(declare-fun b_and!101119 () Bool)

(assert (=> b!1472141 (= tp!415861 b_and!101119)))

(declare-fun b!1472136 () Bool)

(declare-fun b_free!37327 () Bool)

(declare-fun b_next!38031 () Bool)

(assert (=> b!1472136 (= b_free!37327 (not b_next!38031))))

(declare-fun tp!415872 () Bool)

(declare-fun b_and!101121 () Bool)

(assert (=> b!1472136 (= tp!415872 b_and!101121)))

(declare-fun b_free!37329 () Bool)

(declare-fun b_next!38033 () Bool)

(assert (=> b!1472136 (= b_free!37329 (not b_next!38033))))

(declare-fun tp!415862 () Bool)

(declare-fun b_and!101123 () Bool)

(assert (=> b!1472136 (= tp!415862 b_and!101123)))

(declare-fun b!1472125 () Bool)

(declare-fun b_free!37331 () Bool)

(declare-fun b_next!38035 () Bool)

(assert (=> b!1472125 (= b_free!37331 (not b_next!38035))))

(declare-fun tp!415873 () Bool)

(declare-fun b_and!101125 () Bool)

(assert (=> b!1472125 (= tp!415873 b_and!101125)))

(declare-fun b_free!37333 () Bool)

(declare-fun b_next!38037 () Bool)

(assert (=> b!1472125 (= b_free!37333 (not b_next!38037))))

(declare-fun tp!415866 () Bool)

(declare-fun b_and!101127 () Bool)

(assert (=> b!1472125 (= tp!415866 b_and!101127)))

(declare-fun e!940218 () Bool)

(declare-fun tp!415864 () Bool)

(declare-datatypes ((List!15525 0))(
  ( (Nil!15459) (Cons!15459 (h!20860 (_ BitVec 16)) (t!135834 List!15525)) )
))
(declare-datatypes ((TokenValue!2840 0))(
  ( (FloatLiteralValue!5680 (text!20325 List!15525)) (TokenValueExt!2839 (__x!9470 Int)) (Broken!14200 (value!87998 List!15525)) (Object!2905) (End!2840) (Def!2840) (Underscore!2840) (Match!2840) (Else!2840) (Error!2840) (Case!2840) (If!2840) (Extends!2840) (Abstract!2840) (Class!2840) (Val!2840) (DelimiterValue!5680 (del!2900 List!15525)) (KeywordValue!2846 (value!87999 List!15525)) (CommentValue!5680 (value!88000 List!15525)) (WhitespaceValue!5680 (value!88001 List!15525)) (IndentationValue!2840 (value!88002 List!15525)) (String!18457) (Int32!2840) (Broken!14201 (value!88003 List!15525)) (Boolean!2841) (Unit!25151) (OperatorValue!2843 (op!2900 List!15525)) (IdentifierValue!5680 (value!88004 List!15525)) (IdentifierValue!5681 (value!88005 List!15525)) (WhitespaceValue!5681 (value!88006 List!15525)) (True!5680) (False!5680) (Broken!14202 (value!88007 List!15525)) (Broken!14203 (value!88008 List!15525)) (True!5681) (RightBrace!2840) (RightBracket!2840) (Colon!2840) (Null!2840) (Comma!2840) (LeftBracket!2840) (False!5681) (LeftBrace!2840) (ImaginaryLiteralValue!2840 (text!20326 List!15525)) (StringLiteralValue!8520 (value!88009 List!15525)) (EOFValue!2840 (value!88010 List!15525)) (IdentValue!2840 (value!88011 List!15525)) (DelimiterValue!5681 (value!88012 List!15525)) (DedentValue!2840 (value!88013 List!15525)) (NewLineValue!2840 (value!88014 List!15525)) (IntegerValue!8520 (value!88015 (_ BitVec 32)) (text!20327 List!15525)) (IntegerValue!8521 (value!88016 Int) (text!20328 List!15525)) (Times!2840) (Or!2840) (Equal!2840) (Minus!2840) (Broken!14204 (value!88017 List!15525)) (And!2840) (Div!2840) (LessEqual!2840) (Mod!2840) (Concat!6904) (Not!2840) (Plus!2840) (SpaceValue!2840 (value!88018 List!15525)) (IntegerValue!8522 (value!88019 Int) (text!20329 List!15525)) (StringLiteralValue!8521 (text!20330 List!15525)) (FloatLiteralValue!5681 (text!20331 List!15525)) (BytesLiteralValue!2840 (value!88020 List!15525)) (CommentValue!5681 (value!88021 List!15525)) (StringLiteralValue!8522 (value!88022 List!15525)) (ErrorTokenValue!2840 (msg!2901 List!15525)) )
))
(declare-datatypes ((C!8306 0))(
  ( (C!8307 (val!4723 Int)) )
))
(declare-datatypes ((Regex!4064 0))(
  ( (ElementMatch!4064 (c!242322 C!8306)) (Concat!6905 (regOne!8640 Regex!4064) (regTwo!8640 Regex!4064)) (EmptyExpr!4064) (Star!4064 (reg!4393 Regex!4064)) (EmptyLang!4064) (Union!4064 (regOne!8641 Regex!4064) (regTwo!8641 Regex!4064)) )
))
(declare-datatypes ((String!18458 0))(
  ( (String!18459 (value!88023 String)) )
))
(declare-datatypes ((List!15526 0))(
  ( (Nil!15460) (Cons!15460 (h!20861 C!8306) (t!135835 List!15526)) )
))
(declare-datatypes ((IArray!10549 0))(
  ( (IArray!10550 (innerList!5332 List!15526)) )
))
(declare-datatypes ((Conc!5272 0))(
  ( (Node!5272 (left!13074 Conc!5272) (right!13404 Conc!5272) (csize!10774 Int) (cheight!5483 Int)) (Leaf!7849 (xs!8027 IArray!10549) (csize!10775 Int)) (Empty!5272) )
))
(declare-datatypes ((BalanceConc!10484 0))(
  ( (BalanceConc!10485 (c!242323 Conc!5272)) )
))
(declare-datatypes ((TokenValueInjection!5340 0))(
  ( (TokenValueInjection!5341 (toValue!4077 Int) (toChars!3936 Int)) )
))
(declare-datatypes ((Rule!5300 0))(
  ( (Rule!5301 (regex!2750 Regex!4064) (tag!3014 String!18458) (isSeparator!2750 Bool) (transformation!2750 TokenValueInjection!5340)) )
))
(declare-datatypes ((Token!5162 0))(
  ( (Token!5163 (value!88024 TokenValue!2840) (rule!4527 Rule!5300) (size!12551 Int) (originalCharacters!3612 List!15526)) )
))
(declare-datatypes ((List!15527 0))(
  ( (Nil!15461) (Cons!15461 (h!20862 Token!5162) (t!135836 List!15527)) )
))
(declare-fun l1!3136 () List!15527)

(declare-fun b!1472122 () Bool)

(declare-fun e!940211 () Bool)

(declare-fun inv!20669 (Token!5162) Bool)

(assert (=> b!1472122 (= e!940211 (and (inv!20669 (h!20862 l1!3136)) e!940218 tp!415864))))

(declare-fun b!1472123 () Bool)

(declare-fun tp!415869 () Bool)

(declare-fun e!940221 () Bool)

(declare-fun e!940205 () Bool)

(declare-fun l2!3105 () List!15527)

(assert (=> b!1472123 (= e!940205 (and (inv!20669 (h!20862 l2!3105)) e!940221 tp!415869))))

(declare-fun res!665417 () Bool)

(declare-fun e!940216 () Bool)

(assert (=> start!137892 (=> (not res!665417) (not e!940216))))

(declare-datatypes ((LexerInterface!2406 0))(
  ( (LexerInterfaceExt!2403 (__x!9471 Int)) (Lexer!2404) )
))
(declare-fun thiss!27374 () LexerInterface!2406)

(assert (=> start!137892 (= res!665417 (is-Lexer!2404 thiss!27374))))

(assert (=> start!137892 e!940216))

(assert (=> start!137892 true))

(declare-fun e!940210 () Bool)

(assert (=> start!137892 e!940210))

(assert (=> start!137892 e!940211))

(assert (=> start!137892 e!940205))

(declare-fun b!1472124 () Bool)

(declare-fun e!940214 () Bool)

(declare-fun tp!415865 () Bool)

(assert (=> b!1472124 (= e!940210 (and e!940214 tp!415865))))

(declare-fun e!940215 () Bool)

(assert (=> b!1472125 (= e!940215 (and tp!415873 tp!415866))))

(declare-fun b!1472126 () Bool)

(declare-fun res!665411 () Bool)

(assert (=> b!1472126 (=> (not res!665411) (not e!940216))))

(declare-datatypes ((List!15528 0))(
  ( (Nil!15462) (Cons!15462 (h!20863 Rule!5300) (t!135837 List!15528)) )
))
(declare-fun rules!4290 () List!15528)

(declare-fun rulesProduceEachTokenIndividuallyList!773 (LexerInterface!2406 List!15528 List!15527) Bool)

(assert (=> b!1472126 (= res!665411 (rulesProduceEachTokenIndividuallyList!773 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1472127 () Bool)

(declare-fun res!665412 () Bool)

(assert (=> b!1472127 (=> (not res!665412) (not e!940216))))

(declare-fun isEmpty!9654 (List!15527) Bool)

(assert (=> b!1472127 (= res!665412 (not (isEmpty!9654 l2!3105)))))

(declare-fun b!1472128 () Bool)

(declare-fun res!665416 () Bool)

(assert (=> b!1472128 (=> (not res!665416) (not e!940216))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!266 (LexerInterface!2406 List!15527 List!15528) Bool)

(assert (=> b!1472128 (= res!665416 (tokensListTwoByTwoPredicateSeparableList!266 thiss!27374 l1!3136 rules!4290))))

(declare-fun e!940208 () Bool)

(declare-fun tp!415871 () Bool)

(declare-fun e!940207 () Bool)

(declare-fun b!1472129 () Bool)

(declare-fun inv!20666 (String!18458) Bool)

(declare-fun inv!20670 (TokenValueInjection!5340) Bool)

(assert (=> b!1472129 (= e!940207 (and tp!415871 (inv!20666 (tag!3014 (rule!4527 (h!20862 l1!3136)))) (inv!20670 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) e!940208))))

(declare-fun b!1472130 () Bool)

(declare-fun res!665418 () Bool)

(assert (=> b!1472130 (=> (not res!665418) (not e!940216))))

(assert (=> b!1472130 (= res!665418 (tokensListTwoByTwoPredicateSeparableList!266 thiss!27374 l2!3105 rules!4290))))

(declare-fun e!940220 () Bool)

(declare-fun b!1472131 () Bool)

(declare-fun e!940213 () Bool)

(declare-fun tp!415870 () Bool)

(assert (=> b!1472131 (= e!940213 (and tp!415870 (inv!20666 (tag!3014 (rule!4527 (h!20862 l2!3105)))) (inv!20670 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) e!940220))))

(declare-fun b!1472132 () Bool)

(assert (=> b!1472132 (= e!940216 (not (not (= l2!3105 Nil!15461))))))

(declare-fun lt!511619 () Token!5162)

(declare-fun rulesProduceIndividualToken!1265 (LexerInterface!2406 List!15528 Token!5162) Bool)

(assert (=> b!1472132 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 lt!511619)))

(declare-datatypes ((Unit!25152 0))(
  ( (Unit!25153) )
))
(declare-fun lt!511621 () Unit!25152)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 (LexerInterface!2406 List!15528 List!15527 Token!5162) Unit!25152)

(assert (=> b!1472132 (= lt!511621 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l2!3105 lt!511619))))

(declare-fun head!3044 (List!15527) Token!5162)

(assert (=> b!1472132 (= lt!511619 (head!3044 l2!3105))))

(declare-fun lt!511618 () Token!5162)

(assert (=> b!1472132 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 lt!511618)))

(declare-fun lt!511620 () Unit!25152)

(assert (=> b!1472132 (= lt!511620 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l1!3136 lt!511618))))

(declare-fun last!308 (List!15527) Token!5162)

(assert (=> b!1472132 (= lt!511618 (last!308 l1!3136))))

(declare-fun b!1472133 () Bool)

(declare-fun tp!415863 () Bool)

(declare-fun inv!21 (TokenValue!2840) Bool)

(assert (=> b!1472133 (= e!940221 (and (inv!21 (value!88024 (h!20862 l2!3105))) e!940213 tp!415863))))

(declare-fun b!1472134 () Bool)

(declare-fun res!665415 () Bool)

(assert (=> b!1472134 (=> (not res!665415) (not e!940216))))

(assert (=> b!1472134 (= res!665415 (rulesProduceEachTokenIndividuallyList!773 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1472135 () Bool)

(declare-fun res!665410 () Bool)

(assert (=> b!1472135 (=> (not res!665410) (not e!940216))))

(assert (=> b!1472135 (= res!665410 (not (isEmpty!9654 l1!3136)))))

(assert (=> b!1472136 (= e!940220 (and tp!415872 tp!415862))))

(declare-fun b!1472137 () Bool)

(declare-fun res!665413 () Bool)

(assert (=> b!1472137 (=> (not res!665413) (not e!940216))))

(declare-fun rulesInvariant!2195 (LexerInterface!2406 List!15528) Bool)

(assert (=> b!1472137 (= res!665413 (rulesInvariant!2195 thiss!27374 rules!4290))))

(declare-fun tp!415867 () Bool)

(declare-fun b!1472138 () Bool)

(assert (=> b!1472138 (= e!940214 (and tp!415867 (inv!20666 (tag!3014 (h!20863 rules!4290))) (inv!20670 (transformation!2750 (h!20863 rules!4290))) e!940215))))

(declare-fun b!1472139 () Bool)

(declare-fun res!665414 () Bool)

(assert (=> b!1472139 (=> (not res!665414) (not e!940216))))

(declare-fun isEmpty!9655 (List!15528) Bool)

(assert (=> b!1472139 (= res!665414 (not (isEmpty!9655 rules!4290)))))

(declare-fun tp!415874 () Bool)

(declare-fun b!1472140 () Bool)

(assert (=> b!1472140 (= e!940218 (and (inv!21 (value!88024 (h!20862 l1!3136))) e!940207 tp!415874))))

(assert (=> b!1472141 (= e!940208 (and tp!415868 tp!415861))))

(assert (= (and start!137892 res!665417) b!1472139))

(assert (= (and b!1472139 res!665414) b!1472137))

(assert (= (and b!1472137 res!665413) b!1472134))

(assert (= (and b!1472134 res!665415) b!1472126))

(assert (= (and b!1472126 res!665411) b!1472128))

(assert (= (and b!1472128 res!665416) b!1472130))

(assert (= (and b!1472130 res!665418) b!1472135))

(assert (= (and b!1472135 res!665410) b!1472127))

(assert (= (and b!1472127 res!665412) b!1472132))

(assert (= b!1472138 b!1472125))

(assert (= b!1472124 b!1472138))

(assert (= (and start!137892 (is-Cons!15462 rules!4290)) b!1472124))

(assert (= b!1472129 b!1472141))

(assert (= b!1472140 b!1472129))

(assert (= b!1472122 b!1472140))

(assert (= (and start!137892 (is-Cons!15461 l1!3136)) b!1472122))

(assert (= b!1472131 b!1472136))

(assert (= b!1472133 b!1472131))

(assert (= b!1472123 b!1472133))

(assert (= (and start!137892 (is-Cons!15461 l2!3105)) b!1472123))

(declare-fun m!1716145 () Bool)

(assert (=> b!1472128 m!1716145))

(declare-fun m!1716147 () Bool)

(assert (=> b!1472129 m!1716147))

(declare-fun m!1716149 () Bool)

(assert (=> b!1472129 m!1716149))

(declare-fun m!1716151 () Bool)

(assert (=> b!1472137 m!1716151))

(declare-fun m!1716153 () Bool)

(assert (=> b!1472140 m!1716153))

(declare-fun m!1716155 () Bool)

(assert (=> b!1472134 m!1716155))

(declare-fun m!1716157 () Bool)

(assert (=> b!1472132 m!1716157))

(declare-fun m!1716159 () Bool)

(assert (=> b!1472132 m!1716159))

(declare-fun m!1716161 () Bool)

(assert (=> b!1472132 m!1716161))

(declare-fun m!1716163 () Bool)

(assert (=> b!1472132 m!1716163))

(declare-fun m!1716165 () Bool)

(assert (=> b!1472132 m!1716165))

(declare-fun m!1716167 () Bool)

(assert (=> b!1472132 m!1716167))

(declare-fun m!1716169 () Bool)

(assert (=> b!1472135 m!1716169))

(declare-fun m!1716171 () Bool)

(assert (=> b!1472126 m!1716171))

(declare-fun m!1716173 () Bool)

(assert (=> b!1472133 m!1716173))

(declare-fun m!1716175 () Bool)

(assert (=> b!1472138 m!1716175))

(declare-fun m!1716177 () Bool)

(assert (=> b!1472138 m!1716177))

(declare-fun m!1716179 () Bool)

(assert (=> b!1472123 m!1716179))

(declare-fun m!1716181 () Bool)

(assert (=> b!1472127 m!1716181))

(declare-fun m!1716183 () Bool)

(assert (=> b!1472122 m!1716183))

(declare-fun m!1716185 () Bool)

(assert (=> b!1472130 m!1716185))

(declare-fun m!1716187 () Bool)

(assert (=> b!1472139 m!1716187))

(declare-fun m!1716189 () Bool)

(assert (=> b!1472131 m!1716189))

(declare-fun m!1716191 () Bool)

(assert (=> b!1472131 m!1716191))

(push 1)

(assert (not b!1472134))

(assert b_and!101121)

(assert (not b_next!38033))

(assert b_and!101127)

(assert (not b!1472123))

(assert b_and!101117)

(assert (not b_next!38029))

(assert (not b_next!38027))

(assert b_and!101123)

(assert (not b!1472130))

(assert b_and!101125)

(assert (not b_next!38035))

(assert (not b!1472124))

(assert (not b!1472127))

(assert b_and!101119)

(assert (not b!1472128))

(assert (not b!1472138))

(assert (not b!1472122))

(assert (not b!1472126))

(assert (not b_next!38037))

(assert (not b!1472135))

(assert (not b!1472137))

(assert (not b!1472132))

(assert (not b!1472129))

(assert (not b!1472133))

(assert (not b!1472140))

(assert (not b!1472139))

(assert (not b_next!38031))

(assert (not b!1472131))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38035))

(assert b_and!101119)

(assert b_and!101121)

(assert (not b_next!38033))

(assert (not b_next!38037))

(assert b_and!101127)

(assert b_and!101117)

(assert (not b_next!38029))

(assert (not b_next!38031))

(assert (not b_next!38027))

(assert b_and!101123)

(assert b_and!101125)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!431621 () Bool)

(declare-fun res!665461 () Bool)

(declare-fun e!940284 () Bool)

(assert (=> d!431621 (=> res!665461 e!940284)))

(assert (=> d!431621 (= res!665461 (or (not (is-Cons!15461 l2!3105)) (not (is-Cons!15461 (t!135836 l2!3105)))))))

(assert (=> d!431621 (= (tokensListTwoByTwoPredicateSeparableList!266 thiss!27374 l2!3105 rules!4290) e!940284)))

(declare-fun b!1472217 () Bool)

(declare-fun e!940283 () Bool)

(assert (=> b!1472217 (= e!940284 e!940283)))

(declare-fun res!665460 () Bool)

(assert (=> b!1472217 (=> (not res!665460) (not e!940283))))

(declare-fun separableTokensPredicate!549 (LexerInterface!2406 Token!5162 Token!5162 List!15528) Bool)

(assert (=> b!1472217 (= res!665460 (separableTokensPredicate!549 thiss!27374 (h!20862 l2!3105) (h!20862 (t!135836 l2!3105)) rules!4290))))

(declare-fun lt!511653 () Unit!25152)

(declare-fun Unit!25157 () Unit!25152)

(assert (=> b!1472217 (= lt!511653 Unit!25157)))

(declare-fun size!12553 (BalanceConc!10484) Int)

(declare-fun charsOf!1577 (Token!5162) BalanceConc!10484)

(assert (=> b!1472217 (> (size!12553 (charsOf!1577 (h!20862 (t!135836 l2!3105)))) 0)))

(declare-fun lt!511648 () Unit!25152)

(declare-fun Unit!25158 () Unit!25152)

(assert (=> b!1472217 (= lt!511648 Unit!25158)))

(assert (=> b!1472217 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 (t!135836 l2!3105)))))

(declare-fun lt!511650 () Unit!25152)

(declare-fun Unit!25159 () Unit!25152)

(assert (=> b!1472217 (= lt!511650 Unit!25159)))

(assert (=> b!1472217 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 l2!3105))))

(declare-fun lt!511651 () Unit!25152)

(declare-fun lt!511649 () Unit!25152)

(assert (=> b!1472217 (= lt!511651 lt!511649)))

(assert (=> b!1472217 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 (t!135836 l2!3105)))))

(assert (=> b!1472217 (= lt!511649 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l2!3105 (h!20862 (t!135836 l2!3105))))))

(declare-fun lt!511654 () Unit!25152)

(declare-fun lt!511652 () Unit!25152)

(assert (=> b!1472217 (= lt!511654 lt!511652)))

(assert (=> b!1472217 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 l2!3105))))

(assert (=> b!1472217 (= lt!511652 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l2!3105 (h!20862 l2!3105)))))

(declare-fun b!1472218 () Bool)

(assert (=> b!1472218 (= e!940283 (tokensListTwoByTwoPredicateSeparableList!266 thiss!27374 (Cons!15461 (h!20862 (t!135836 l2!3105)) (t!135836 (t!135836 l2!3105))) rules!4290))))

(assert (= (and d!431621 (not res!665461)) b!1472217))

(assert (= (and b!1472217 res!665460) b!1472218))

(declare-fun m!1716253 () Bool)

(assert (=> b!1472217 m!1716253))

(declare-fun m!1716255 () Bool)

(assert (=> b!1472217 m!1716255))

(assert (=> b!1472217 m!1716253))

(declare-fun m!1716257 () Bool)

(assert (=> b!1472217 m!1716257))

(declare-fun m!1716259 () Bool)

(assert (=> b!1472217 m!1716259))

(declare-fun m!1716261 () Bool)

(assert (=> b!1472217 m!1716261))

(declare-fun m!1716263 () Bool)

(assert (=> b!1472217 m!1716263))

(declare-fun m!1716265 () Bool)

(assert (=> b!1472217 m!1716265))

(declare-fun m!1716267 () Bool)

(assert (=> b!1472218 m!1716267))

(assert (=> b!1472130 d!431621))

(declare-fun d!431627 () Bool)

(assert (=> d!431627 (= (isEmpty!9655 rules!4290) (is-Nil!15462 rules!4290))))

(assert (=> b!1472139 d!431627))

(declare-fun b!1472229 () Bool)

(declare-fun e!940291 () Bool)

(declare-fun inv!17 (TokenValue!2840) Bool)

(assert (=> b!1472229 (= e!940291 (inv!17 (value!88024 (h!20862 l1!3136))))))

(declare-fun b!1472230 () Bool)

(declare-fun res!665464 () Bool)

(declare-fun e!940292 () Bool)

(assert (=> b!1472230 (=> res!665464 e!940292)))

(assert (=> b!1472230 (= res!665464 (not (is-IntegerValue!8522 (value!88024 (h!20862 l1!3136)))))))

(assert (=> b!1472230 (= e!940291 e!940292)))

(declare-fun b!1472231 () Bool)

(declare-fun e!940293 () Bool)

(assert (=> b!1472231 (= e!940293 e!940291)))

(declare-fun c!242330 () Bool)

(assert (=> b!1472231 (= c!242330 (is-IntegerValue!8521 (value!88024 (h!20862 l1!3136))))))

(declare-fun b!1472233 () Bool)

(declare-fun inv!16 (TokenValue!2840) Bool)

(assert (=> b!1472233 (= e!940293 (inv!16 (value!88024 (h!20862 l1!3136))))))

(declare-fun d!431629 () Bool)

(declare-fun c!242331 () Bool)

(assert (=> d!431629 (= c!242331 (is-IntegerValue!8520 (value!88024 (h!20862 l1!3136))))))

(assert (=> d!431629 (= (inv!21 (value!88024 (h!20862 l1!3136))) e!940293)))

(declare-fun b!1472232 () Bool)

(declare-fun inv!15 (TokenValue!2840) Bool)

(assert (=> b!1472232 (= e!940292 (inv!15 (value!88024 (h!20862 l1!3136))))))

(assert (= (and d!431629 c!242331) b!1472233))

(assert (= (and d!431629 (not c!242331)) b!1472231))

(assert (= (and b!1472231 c!242330) b!1472229))

(assert (= (and b!1472231 (not c!242330)) b!1472230))

(assert (= (and b!1472230 (not res!665464)) b!1472232))

(declare-fun m!1716269 () Bool)

(assert (=> b!1472229 m!1716269))

(declare-fun m!1716271 () Bool)

(assert (=> b!1472233 m!1716271))

(declare-fun m!1716273 () Bool)

(assert (=> b!1472232 m!1716273))

(assert (=> b!1472140 d!431629))

(declare-fun d!431631 () Bool)

(assert (=> d!431631 (= (inv!20666 (tag!3014 (rule!4527 (h!20862 l1!3136)))) (= (mod (str.len (value!88023 (tag!3014 (rule!4527 (h!20862 l1!3136))))) 2) 0))))

(assert (=> b!1472129 d!431631))

(declare-fun d!431633 () Bool)

(declare-fun res!665467 () Bool)

(declare-fun e!940296 () Bool)

(assert (=> d!431633 (=> (not res!665467) (not e!940296))))

(declare-fun semiInverseModEq!1028 (Int Int) Bool)

(assert (=> d!431633 (= res!665467 (semiInverseModEq!1028 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (toValue!4077 (transformation!2750 (rule!4527 (h!20862 l1!3136))))))))

(assert (=> d!431633 (= (inv!20670 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) e!940296)))

(declare-fun b!1472236 () Bool)

(declare-fun equivClasses!987 (Int Int) Bool)

(assert (=> b!1472236 (= e!940296 (equivClasses!987 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (toValue!4077 (transformation!2750 (rule!4527 (h!20862 l1!3136))))))))

(assert (= (and d!431633 res!665467) b!1472236))

(declare-fun m!1716275 () Bool)

(assert (=> d!431633 m!1716275))

(declare-fun m!1716277 () Bool)

(assert (=> b!1472236 m!1716277))

(assert (=> b!1472129 d!431633))

(declare-fun d!431635 () Bool)

(assert (=> d!431635 (= (inv!20666 (tag!3014 (h!20863 rules!4290))) (= (mod (str.len (value!88023 (tag!3014 (h!20863 rules!4290)))) 2) 0))))

(assert (=> b!1472138 d!431635))

(declare-fun d!431637 () Bool)

(declare-fun res!665468 () Bool)

(declare-fun e!940297 () Bool)

(assert (=> d!431637 (=> (not res!665468) (not e!940297))))

(assert (=> d!431637 (= res!665468 (semiInverseModEq!1028 (toChars!3936 (transformation!2750 (h!20863 rules!4290))) (toValue!4077 (transformation!2750 (h!20863 rules!4290)))))))

(assert (=> d!431637 (= (inv!20670 (transformation!2750 (h!20863 rules!4290))) e!940297)))

(declare-fun b!1472237 () Bool)

(assert (=> b!1472237 (= e!940297 (equivClasses!987 (toChars!3936 (transformation!2750 (h!20863 rules!4290))) (toValue!4077 (transformation!2750 (h!20863 rules!4290)))))))

(assert (= (and d!431637 res!665468) b!1472237))

(declare-fun m!1716279 () Bool)

(assert (=> d!431637 m!1716279))

(declare-fun m!1716281 () Bool)

(assert (=> b!1472237 m!1716281))

(assert (=> b!1472138 d!431637))

(declare-fun d!431639 () Bool)

(assert (=> d!431639 (= (isEmpty!9654 l2!3105) (is-Nil!15461 l2!3105))))

(assert (=> b!1472127 d!431639))

(declare-fun d!431641 () Bool)

(declare-fun res!665470 () Bool)

(declare-fun e!940299 () Bool)

(assert (=> d!431641 (=> res!665470 e!940299)))

(assert (=> d!431641 (= res!665470 (or (not (is-Cons!15461 l1!3136)) (not (is-Cons!15461 (t!135836 l1!3136)))))))

(assert (=> d!431641 (= (tokensListTwoByTwoPredicateSeparableList!266 thiss!27374 l1!3136 rules!4290) e!940299)))

(declare-fun b!1472238 () Bool)

(declare-fun e!940298 () Bool)

(assert (=> b!1472238 (= e!940299 e!940298)))

(declare-fun res!665469 () Bool)

(assert (=> b!1472238 (=> (not res!665469) (not e!940298))))

(assert (=> b!1472238 (= res!665469 (separableTokensPredicate!549 thiss!27374 (h!20862 l1!3136) (h!20862 (t!135836 l1!3136)) rules!4290))))

(declare-fun lt!511660 () Unit!25152)

(declare-fun Unit!25160 () Unit!25152)

(assert (=> b!1472238 (= lt!511660 Unit!25160)))

(assert (=> b!1472238 (> (size!12553 (charsOf!1577 (h!20862 (t!135836 l1!3136)))) 0)))

(declare-fun lt!511655 () Unit!25152)

(declare-fun Unit!25161 () Unit!25152)

(assert (=> b!1472238 (= lt!511655 Unit!25161)))

(assert (=> b!1472238 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 (t!135836 l1!3136)))))

(declare-fun lt!511657 () Unit!25152)

(declare-fun Unit!25162 () Unit!25152)

(assert (=> b!1472238 (= lt!511657 Unit!25162)))

(assert (=> b!1472238 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 l1!3136))))

(declare-fun lt!511658 () Unit!25152)

(declare-fun lt!511656 () Unit!25152)

(assert (=> b!1472238 (= lt!511658 lt!511656)))

(assert (=> b!1472238 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 (t!135836 l1!3136)))))

(assert (=> b!1472238 (= lt!511656 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l1!3136 (h!20862 (t!135836 l1!3136))))))

(declare-fun lt!511661 () Unit!25152)

(declare-fun lt!511659 () Unit!25152)

(assert (=> b!1472238 (= lt!511661 lt!511659)))

(assert (=> b!1472238 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 l1!3136))))

(assert (=> b!1472238 (= lt!511659 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l1!3136 (h!20862 l1!3136)))))

(declare-fun b!1472239 () Bool)

(assert (=> b!1472239 (= e!940298 (tokensListTwoByTwoPredicateSeparableList!266 thiss!27374 (Cons!15461 (h!20862 (t!135836 l1!3136)) (t!135836 (t!135836 l1!3136))) rules!4290))))

(assert (= (and d!431641 (not res!665470)) b!1472238))

(assert (= (and b!1472238 res!665469) b!1472239))

(declare-fun m!1716283 () Bool)

(assert (=> b!1472238 m!1716283))

(declare-fun m!1716285 () Bool)

(assert (=> b!1472238 m!1716285))

(assert (=> b!1472238 m!1716283))

(declare-fun m!1716287 () Bool)

(assert (=> b!1472238 m!1716287))

(declare-fun m!1716289 () Bool)

(assert (=> b!1472238 m!1716289))

(declare-fun m!1716291 () Bool)

(assert (=> b!1472238 m!1716291))

(declare-fun m!1716293 () Bool)

(assert (=> b!1472238 m!1716293))

(declare-fun m!1716295 () Bool)

(assert (=> b!1472238 m!1716295))

(declare-fun m!1716297 () Bool)

(assert (=> b!1472239 m!1716297))

(assert (=> b!1472128 d!431641))

(declare-fun b!1472266 () Bool)

(declare-fun e!940324 () Bool)

(assert (=> b!1472266 (= e!940324 true)))

(declare-fun b!1472265 () Bool)

(declare-fun e!940323 () Bool)

(assert (=> b!1472265 (= e!940323 e!940324)))

(declare-fun b!1472264 () Bool)

(declare-fun e!940322 () Bool)

(assert (=> b!1472264 (= e!940322 e!940323)))

(declare-fun d!431643 () Bool)

(assert (=> d!431643 e!940322))

(assert (= b!1472265 b!1472266))

(assert (= b!1472264 b!1472265))

(assert (= (and d!431643 (is-Cons!15462 rules!4290)) b!1472264))

(declare-fun order!9285 () Int)

(declare-fun lambda!63526 () Int)

(declare-fun order!9283 () Int)

(declare-fun dynLambda!7015 (Int Int) Int)

(declare-fun dynLambda!7016 (Int Int) Int)

(assert (=> b!1472266 (< (dynLambda!7015 order!9283 (toValue!4077 (transformation!2750 (h!20863 rules!4290)))) (dynLambda!7016 order!9285 lambda!63526))))

(declare-fun order!9287 () Int)

(declare-fun dynLambda!7017 (Int Int) Int)

(assert (=> b!1472266 (< (dynLambda!7017 order!9287 (toChars!3936 (transformation!2750 (h!20863 rules!4290)))) (dynLambda!7016 order!9285 lambda!63526))))

(assert (=> d!431643 true))

(declare-fun lt!511687 () Bool)

(declare-fun forall!3771 (List!15527 Int) Bool)

(assert (=> d!431643 (= lt!511687 (forall!3771 l2!3105 lambda!63526))))

(declare-fun e!940314 () Bool)

(assert (=> d!431643 (= lt!511687 e!940314)))

(declare-fun res!665486 () Bool)

(assert (=> d!431643 (=> res!665486 e!940314)))

(assert (=> d!431643 (= res!665486 (not (is-Cons!15461 l2!3105)))))

(assert (=> d!431643 (not (isEmpty!9655 rules!4290))))

(assert (=> d!431643 (= (rulesProduceEachTokenIndividuallyList!773 thiss!27374 rules!4290 l2!3105) lt!511687)))

(declare-fun b!1472254 () Bool)

(declare-fun e!940315 () Bool)

(assert (=> b!1472254 (= e!940314 e!940315)))

(declare-fun res!665485 () Bool)

(assert (=> b!1472254 (=> (not res!665485) (not e!940315))))

(assert (=> b!1472254 (= res!665485 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 l2!3105)))))

(declare-fun b!1472255 () Bool)

(assert (=> b!1472255 (= e!940315 (rulesProduceEachTokenIndividuallyList!773 thiss!27374 rules!4290 (t!135836 l2!3105)))))

(assert (= (and d!431643 (not res!665486)) b!1472254))

(assert (= (and b!1472254 res!665485) b!1472255))

(declare-fun m!1716315 () Bool)

(assert (=> d!431643 m!1716315))

(assert (=> d!431643 m!1716187))

(assert (=> b!1472254 m!1716265))

(declare-fun m!1716317 () Bool)

(assert (=> b!1472255 m!1716317))

(assert (=> b!1472126 d!431643))

(declare-fun d!431649 () Bool)

(declare-fun res!665489 () Bool)

(declare-fun e!940327 () Bool)

(assert (=> d!431649 (=> (not res!665489) (not e!940327))))

(declare-fun rulesValid!1002 (LexerInterface!2406 List!15528) Bool)

(assert (=> d!431649 (= res!665489 (rulesValid!1002 thiss!27374 rules!4290))))

(assert (=> d!431649 (= (rulesInvariant!2195 thiss!27374 rules!4290) e!940327)))

(declare-fun b!1472271 () Bool)

(declare-datatypes ((List!15533 0))(
  ( (Nil!15467) (Cons!15467 (h!20868 String!18458) (t!135885 List!15533)) )
))
(declare-fun noDuplicateTag!1002 (LexerInterface!2406 List!15528 List!15533) Bool)

(assert (=> b!1472271 (= e!940327 (noDuplicateTag!1002 thiss!27374 rules!4290 Nil!15467))))

(assert (= (and d!431649 res!665489) b!1472271))

(declare-fun m!1716319 () Bool)

(assert (=> d!431649 m!1716319))

(declare-fun m!1716321 () Bool)

(assert (=> b!1472271 m!1716321))

(assert (=> b!1472137 d!431649))

(declare-fun d!431651 () Bool)

(assert (=> d!431651 (= (isEmpty!9654 l1!3136) (is-Nil!15461 l1!3136))))

(assert (=> b!1472135 d!431651))

(declare-fun bs!345159 () Bool)

(declare-fun d!431653 () Bool)

(assert (= bs!345159 (and d!431653 d!431643)))

(declare-fun lambda!63527 () Int)

(assert (=> bs!345159 (= lambda!63527 lambda!63526)))

(declare-fun b!1472276 () Bool)

(declare-fun e!940332 () Bool)

(assert (=> b!1472276 (= e!940332 true)))

(declare-fun b!1472275 () Bool)

(declare-fun e!940331 () Bool)

(assert (=> b!1472275 (= e!940331 e!940332)))

(declare-fun b!1472274 () Bool)

(declare-fun e!940330 () Bool)

(assert (=> b!1472274 (= e!940330 e!940331)))

(assert (=> d!431653 e!940330))

(assert (= b!1472275 b!1472276))

(assert (= b!1472274 b!1472275))

(assert (= (and d!431653 (is-Cons!15462 rules!4290)) b!1472274))

(assert (=> b!1472276 (< (dynLambda!7015 order!9283 (toValue!4077 (transformation!2750 (h!20863 rules!4290)))) (dynLambda!7016 order!9285 lambda!63527))))

(assert (=> b!1472276 (< (dynLambda!7017 order!9287 (toChars!3936 (transformation!2750 (h!20863 rules!4290)))) (dynLambda!7016 order!9285 lambda!63527))))

(assert (=> d!431653 true))

(declare-fun lt!511688 () Bool)

(assert (=> d!431653 (= lt!511688 (forall!3771 l1!3136 lambda!63527))))

(declare-fun e!940328 () Bool)

(assert (=> d!431653 (= lt!511688 e!940328)))

(declare-fun res!665491 () Bool)

(assert (=> d!431653 (=> res!665491 e!940328)))

(assert (=> d!431653 (= res!665491 (not (is-Cons!15461 l1!3136)))))

(assert (=> d!431653 (not (isEmpty!9655 rules!4290))))

(assert (=> d!431653 (= (rulesProduceEachTokenIndividuallyList!773 thiss!27374 rules!4290 l1!3136) lt!511688)))

(declare-fun b!1472272 () Bool)

(declare-fun e!940329 () Bool)

(assert (=> b!1472272 (= e!940328 e!940329)))

(declare-fun res!665490 () Bool)

(assert (=> b!1472272 (=> (not res!665490) (not e!940329))))

(assert (=> b!1472272 (= res!665490 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 (h!20862 l1!3136)))))

(declare-fun b!1472273 () Bool)

(assert (=> b!1472273 (= e!940329 (rulesProduceEachTokenIndividuallyList!773 thiss!27374 rules!4290 (t!135836 l1!3136)))))

(assert (= (and d!431653 (not res!665491)) b!1472272))

(assert (= (and b!1472272 res!665490) b!1472273))

(declare-fun m!1716323 () Bool)

(assert (=> d!431653 m!1716323))

(assert (=> d!431653 m!1716187))

(assert (=> b!1472272 m!1716295))

(declare-fun m!1716325 () Bool)

(assert (=> b!1472273 m!1716325))

(assert (=> b!1472134 d!431653))

(declare-fun d!431655 () Bool)

(declare-fun res!665496 () Bool)

(declare-fun e!940335 () Bool)

(assert (=> d!431655 (=> (not res!665496) (not e!940335))))

(declare-fun isEmpty!9658 (List!15526) Bool)

(assert (=> d!431655 (= res!665496 (not (isEmpty!9658 (originalCharacters!3612 (h!20862 l2!3105)))))))

(assert (=> d!431655 (= (inv!20669 (h!20862 l2!3105)) e!940335)))

(declare-fun b!1472281 () Bool)

(declare-fun res!665497 () Bool)

(assert (=> b!1472281 (=> (not res!665497) (not e!940335))))

(declare-fun list!6171 (BalanceConc!10484) List!15526)

(declare-fun dynLambda!7018 (Int TokenValue!2840) BalanceConc!10484)

(assert (=> b!1472281 (= res!665497 (= (originalCharacters!3612 (h!20862 l2!3105)) (list!6171 (dynLambda!7018 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (value!88024 (h!20862 l2!3105))))))))

(declare-fun b!1472282 () Bool)

(declare-fun size!12554 (List!15526) Int)

(assert (=> b!1472282 (= e!940335 (= (size!12551 (h!20862 l2!3105)) (size!12554 (originalCharacters!3612 (h!20862 l2!3105)))))))

(assert (= (and d!431655 res!665496) b!1472281))

(assert (= (and b!1472281 res!665497) b!1472282))

(declare-fun b_lambda!45969 () Bool)

(assert (=> (not b_lambda!45969) (not b!1472281)))

(declare-fun tb!83471 () Bool)

(declare-fun t!135853 () Bool)

(assert (=> (and b!1472141 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105))))) t!135853) tb!83471))

(declare-fun b!1472287 () Bool)

(declare-fun e!940338 () Bool)

(declare-fun tp!415922 () Bool)

(declare-fun inv!20673 (Conc!5272) Bool)

(assert (=> b!1472287 (= e!940338 (and (inv!20673 (c!242323 (dynLambda!7018 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (value!88024 (h!20862 l2!3105))))) tp!415922))))

(declare-fun result!100338 () Bool)

(declare-fun inv!20674 (BalanceConc!10484) Bool)

(assert (=> tb!83471 (= result!100338 (and (inv!20674 (dynLambda!7018 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (value!88024 (h!20862 l2!3105)))) e!940338))))

(assert (= tb!83471 b!1472287))

(declare-fun m!1716327 () Bool)

(assert (=> b!1472287 m!1716327))

(declare-fun m!1716329 () Bool)

(assert (=> tb!83471 m!1716329))

(assert (=> b!1472281 t!135853))

(declare-fun b_and!101147 () Bool)

(assert (= b_and!101119 (and (=> t!135853 result!100338) b_and!101147)))

(declare-fun t!135855 () Bool)

(declare-fun tb!83473 () Bool)

(assert (=> (and b!1472136 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105))))) t!135855) tb!83473))

(declare-fun result!100342 () Bool)

(assert (= result!100342 result!100338))

(assert (=> b!1472281 t!135855))

(declare-fun b_and!101149 () Bool)

(assert (= b_and!101123 (and (=> t!135855 result!100342) b_and!101149)))

(declare-fun t!135857 () Bool)

(declare-fun tb!83475 () Bool)

(assert (=> (and b!1472125 (= (toChars!3936 (transformation!2750 (h!20863 rules!4290))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105))))) t!135857) tb!83475))

(declare-fun result!100344 () Bool)

(assert (= result!100344 result!100338))

(assert (=> b!1472281 t!135857))

(declare-fun b_and!101151 () Bool)

(assert (= b_and!101127 (and (=> t!135857 result!100344) b_and!101151)))

(declare-fun m!1716331 () Bool)

(assert (=> d!431655 m!1716331))

(declare-fun m!1716333 () Bool)

(assert (=> b!1472281 m!1716333))

(assert (=> b!1472281 m!1716333))

(declare-fun m!1716335 () Bool)

(assert (=> b!1472281 m!1716335))

(declare-fun m!1716337 () Bool)

(assert (=> b!1472282 m!1716337))

(assert (=> b!1472123 d!431655))

(declare-fun d!431657 () Bool)

(declare-fun res!665498 () Bool)

(declare-fun e!940339 () Bool)

(assert (=> d!431657 (=> (not res!665498) (not e!940339))))

(assert (=> d!431657 (= res!665498 (not (isEmpty!9658 (originalCharacters!3612 (h!20862 l1!3136)))))))

(assert (=> d!431657 (= (inv!20669 (h!20862 l1!3136)) e!940339)))

(declare-fun b!1472288 () Bool)

(declare-fun res!665499 () Bool)

(assert (=> b!1472288 (=> (not res!665499) (not e!940339))))

(assert (=> b!1472288 (= res!665499 (= (originalCharacters!3612 (h!20862 l1!3136)) (list!6171 (dynLambda!7018 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (value!88024 (h!20862 l1!3136))))))))

(declare-fun b!1472289 () Bool)

(assert (=> b!1472289 (= e!940339 (= (size!12551 (h!20862 l1!3136)) (size!12554 (originalCharacters!3612 (h!20862 l1!3136)))))))

(assert (= (and d!431657 res!665498) b!1472288))

(assert (= (and b!1472288 res!665499) b!1472289))

(declare-fun b_lambda!45971 () Bool)

(assert (=> (not b_lambda!45971) (not b!1472288)))

(declare-fun t!135859 () Bool)

(declare-fun tb!83477 () Bool)

(assert (=> (and b!1472141 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136))))) t!135859) tb!83477))

(declare-fun b!1472290 () Bool)

(declare-fun e!940340 () Bool)

(declare-fun tp!415923 () Bool)

(assert (=> b!1472290 (= e!940340 (and (inv!20673 (c!242323 (dynLambda!7018 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (value!88024 (h!20862 l1!3136))))) tp!415923))))

(declare-fun result!100346 () Bool)

(assert (=> tb!83477 (= result!100346 (and (inv!20674 (dynLambda!7018 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (value!88024 (h!20862 l1!3136)))) e!940340))))

(assert (= tb!83477 b!1472290))

(declare-fun m!1716339 () Bool)

(assert (=> b!1472290 m!1716339))

(declare-fun m!1716341 () Bool)

(assert (=> tb!83477 m!1716341))

(assert (=> b!1472288 t!135859))

(declare-fun b_and!101153 () Bool)

(assert (= b_and!101147 (and (=> t!135859 result!100346) b_and!101153)))

(declare-fun tb!83479 () Bool)

(declare-fun t!135861 () Bool)

(assert (=> (and b!1472136 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136))))) t!135861) tb!83479))

(declare-fun result!100348 () Bool)

(assert (= result!100348 result!100346))

(assert (=> b!1472288 t!135861))

(declare-fun b_and!101155 () Bool)

(assert (= b_and!101149 (and (=> t!135861 result!100348) b_and!101155)))

(declare-fun tb!83481 () Bool)

(declare-fun t!135863 () Bool)

(assert (=> (and b!1472125 (= (toChars!3936 (transformation!2750 (h!20863 rules!4290))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136))))) t!135863) tb!83481))

(declare-fun result!100350 () Bool)

(assert (= result!100350 result!100346))

(assert (=> b!1472288 t!135863))

(declare-fun b_and!101157 () Bool)

(assert (= b_and!101151 (and (=> t!135863 result!100350) b_and!101157)))

(declare-fun m!1716343 () Bool)

(assert (=> d!431657 m!1716343))

(declare-fun m!1716345 () Bool)

(assert (=> b!1472288 m!1716345))

(assert (=> b!1472288 m!1716345))

(declare-fun m!1716347 () Bool)

(assert (=> b!1472288 m!1716347))

(declare-fun m!1716349 () Bool)

(assert (=> b!1472289 m!1716349))

(assert (=> b!1472122 d!431657))

(declare-fun b!1472291 () Bool)

(declare-fun e!940341 () Bool)

(assert (=> b!1472291 (= e!940341 (inv!17 (value!88024 (h!20862 l2!3105))))))

(declare-fun b!1472292 () Bool)

(declare-fun res!665500 () Bool)

(declare-fun e!940342 () Bool)

(assert (=> b!1472292 (=> res!665500 e!940342)))

(assert (=> b!1472292 (= res!665500 (not (is-IntegerValue!8522 (value!88024 (h!20862 l2!3105)))))))

(assert (=> b!1472292 (= e!940341 e!940342)))

(declare-fun b!1472293 () Bool)

(declare-fun e!940343 () Bool)

(assert (=> b!1472293 (= e!940343 e!940341)))

(declare-fun c!242332 () Bool)

(assert (=> b!1472293 (= c!242332 (is-IntegerValue!8521 (value!88024 (h!20862 l2!3105))))))

(declare-fun b!1472295 () Bool)

(assert (=> b!1472295 (= e!940343 (inv!16 (value!88024 (h!20862 l2!3105))))))

(declare-fun d!431659 () Bool)

(declare-fun c!242333 () Bool)

(assert (=> d!431659 (= c!242333 (is-IntegerValue!8520 (value!88024 (h!20862 l2!3105))))))

(assert (=> d!431659 (= (inv!21 (value!88024 (h!20862 l2!3105))) e!940343)))

(declare-fun b!1472294 () Bool)

(assert (=> b!1472294 (= e!940342 (inv!15 (value!88024 (h!20862 l2!3105))))))

(assert (= (and d!431659 c!242333) b!1472295))

(assert (= (and d!431659 (not c!242333)) b!1472293))

(assert (= (and b!1472293 c!242332) b!1472291))

(assert (= (and b!1472293 (not c!242332)) b!1472292))

(assert (= (and b!1472292 (not res!665500)) b!1472294))

(declare-fun m!1716351 () Bool)

(assert (=> b!1472291 m!1716351))

(declare-fun m!1716353 () Bool)

(assert (=> b!1472295 m!1716353))

(declare-fun m!1716355 () Bool)

(assert (=> b!1472294 m!1716355))

(assert (=> b!1472133 d!431659))

(declare-fun d!431661 () Bool)

(assert (=> d!431661 (= (inv!20666 (tag!3014 (rule!4527 (h!20862 l2!3105)))) (= (mod (str.len (value!88023 (tag!3014 (rule!4527 (h!20862 l2!3105))))) 2) 0))))

(assert (=> b!1472131 d!431661))

(declare-fun d!431663 () Bool)

(declare-fun res!665501 () Bool)

(declare-fun e!940344 () Bool)

(assert (=> d!431663 (=> (not res!665501) (not e!940344))))

(assert (=> d!431663 (= res!665501 (semiInverseModEq!1028 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (toValue!4077 (transformation!2750 (rule!4527 (h!20862 l2!3105))))))))

(assert (=> d!431663 (= (inv!20670 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) e!940344)))

(declare-fun b!1472296 () Bool)

(assert (=> b!1472296 (= e!940344 (equivClasses!987 (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (toValue!4077 (transformation!2750 (rule!4527 (h!20862 l2!3105))))))))

(assert (= (and d!431663 res!665501) b!1472296))

(declare-fun m!1716357 () Bool)

(assert (=> d!431663 m!1716357))

(declare-fun m!1716359 () Bool)

(assert (=> b!1472296 m!1716359))

(assert (=> b!1472131 d!431663))

(declare-fun d!431665 () Bool)

(assert (=> d!431665 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 lt!511618)))

(declare-fun lt!511691 () Unit!25152)

(declare-fun choose!9031 (LexerInterface!2406 List!15528 List!15527 Token!5162) Unit!25152)

(assert (=> d!431665 (= lt!511691 (choose!9031 thiss!27374 rules!4290 l1!3136 lt!511618))))

(assert (=> d!431665 (not (isEmpty!9655 rules!4290))))

(assert (=> d!431665 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l1!3136 lt!511618) lt!511691)))

(declare-fun bs!345160 () Bool)

(assert (= bs!345160 d!431665))

(assert (=> bs!345160 m!1716161))

(declare-fun m!1716361 () Bool)

(assert (=> bs!345160 m!1716361))

(assert (=> bs!345160 m!1716187))

(assert (=> b!1472132 d!431665))

(declare-fun d!431667 () Bool)

(assert (=> d!431667 (= (head!3044 l2!3105) (h!20862 l2!3105))))

(assert (=> b!1472132 d!431667))

(declare-fun d!431669 () Bool)

(declare-fun lt!511694 () Token!5162)

(declare-fun contains!2924 (List!15527 Token!5162) Bool)

(assert (=> d!431669 (contains!2924 l1!3136 lt!511694)))

(declare-fun e!940347 () Token!5162)

(assert (=> d!431669 (= lt!511694 e!940347)))

(declare-fun c!242336 () Bool)

(assert (=> d!431669 (= c!242336 (and (is-Cons!15461 l1!3136) (is-Nil!15461 (t!135836 l1!3136))))))

(assert (=> d!431669 (not (isEmpty!9654 l1!3136))))

(assert (=> d!431669 (= (last!308 l1!3136) lt!511694)))

(declare-fun b!1472301 () Bool)

(assert (=> b!1472301 (= e!940347 (h!20862 l1!3136))))

(declare-fun b!1472302 () Bool)

(assert (=> b!1472302 (= e!940347 (last!308 (t!135836 l1!3136)))))

(assert (= (and d!431669 c!242336) b!1472301))

(assert (= (and d!431669 (not c!242336)) b!1472302))

(declare-fun m!1716363 () Bool)

(assert (=> d!431669 m!1716363))

(assert (=> d!431669 m!1716169))

(declare-fun m!1716365 () Bool)

(assert (=> b!1472302 m!1716365))

(assert (=> b!1472132 d!431669))

(declare-fun d!431671 () Bool)

(declare-fun lt!511707 () Bool)

(declare-fun e!940388 () Bool)

(assert (=> d!431671 (= lt!511707 e!940388)))

(declare-fun res!665527 () Bool)

(assert (=> d!431671 (=> (not res!665527) (not e!940388))))

(declare-datatypes ((IArray!10553 0))(
  ( (IArray!10554 (innerList!5334 List!15527)) )
))
(declare-datatypes ((Conc!5274 0))(
  ( (Node!5274 (left!13080 Conc!5274) (right!13410 Conc!5274) (csize!10778 Int) (cheight!5485 Int)) (Leaf!7851 (xs!8029 IArray!10553) (csize!10779 Int)) (Empty!5274) )
))
(declare-datatypes ((BalanceConc!10488 0))(
  ( (BalanceConc!10489 (c!242348 Conc!5274)) )
))
(declare-fun list!6172 (BalanceConc!10488) List!15527)

(declare-datatypes ((tuple2!14284 0))(
  ( (tuple2!14285 (_1!8028 BalanceConc!10488) (_2!8028 BalanceConc!10484)) )
))
(declare-fun lex!1085 (LexerInterface!2406 List!15528 BalanceConc!10484) tuple2!14284)

(declare-fun print!1120 (LexerInterface!2406 BalanceConc!10488) BalanceConc!10484)

(declare-fun singletonSeq!1295 (Token!5162) BalanceConc!10488)

(assert (=> d!431671 (= res!665527 (= (list!6172 (_1!8028 (lex!1085 thiss!27374 rules!4290 (print!1120 thiss!27374 (singletonSeq!1295 lt!511618))))) (list!6172 (singletonSeq!1295 lt!511618))))))

(declare-fun e!940387 () Bool)

(assert (=> d!431671 (= lt!511707 e!940387)))

(declare-fun res!665526 () Bool)

(assert (=> d!431671 (=> (not res!665526) (not e!940387))))

(declare-fun lt!511708 () tuple2!14284)

(declare-fun size!12555 (BalanceConc!10488) Int)

(assert (=> d!431671 (= res!665526 (= (size!12555 (_1!8028 lt!511708)) 1))))

(assert (=> d!431671 (= lt!511708 (lex!1085 thiss!27374 rules!4290 (print!1120 thiss!27374 (singletonSeq!1295 lt!511618))))))

(assert (=> d!431671 (not (isEmpty!9655 rules!4290))))

(assert (=> d!431671 (= (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 lt!511618) lt!511707)))

(declare-fun b!1472357 () Bool)

(declare-fun res!665528 () Bool)

(assert (=> b!1472357 (=> (not res!665528) (not e!940387))))

(declare-fun apply!3994 (BalanceConc!10488 Int) Token!5162)

(assert (=> b!1472357 (= res!665528 (= (apply!3994 (_1!8028 lt!511708) 0) lt!511618))))

(declare-fun b!1472358 () Bool)

(declare-fun isEmpty!9659 (BalanceConc!10484) Bool)

(assert (=> b!1472358 (= e!940387 (isEmpty!9659 (_2!8028 lt!511708)))))

(declare-fun b!1472359 () Bool)

(assert (=> b!1472359 (= e!940388 (isEmpty!9659 (_2!8028 (lex!1085 thiss!27374 rules!4290 (print!1120 thiss!27374 (singletonSeq!1295 lt!511618))))))))

(assert (= (and d!431671 res!665526) b!1472357))

(assert (= (and b!1472357 res!665528) b!1472358))

(assert (= (and d!431671 res!665527) b!1472359))

(declare-fun m!1716427 () Bool)

(assert (=> d!431671 m!1716427))

(declare-fun m!1716429 () Bool)

(assert (=> d!431671 m!1716429))

(declare-fun m!1716431 () Bool)

(assert (=> d!431671 m!1716431))

(declare-fun m!1716433 () Bool)

(assert (=> d!431671 m!1716433))

(assert (=> d!431671 m!1716429))

(assert (=> d!431671 m!1716433))

(assert (=> d!431671 m!1716187))

(declare-fun m!1716435 () Bool)

(assert (=> d!431671 m!1716435))

(assert (=> d!431671 m!1716433))

(declare-fun m!1716437 () Bool)

(assert (=> d!431671 m!1716437))

(declare-fun m!1716439 () Bool)

(assert (=> b!1472357 m!1716439))

(declare-fun m!1716441 () Bool)

(assert (=> b!1472358 m!1716441))

(assert (=> b!1472359 m!1716433))

(assert (=> b!1472359 m!1716433))

(assert (=> b!1472359 m!1716429))

(assert (=> b!1472359 m!1716429))

(assert (=> b!1472359 m!1716431))

(declare-fun m!1716443 () Bool)

(assert (=> b!1472359 m!1716443))

(assert (=> b!1472132 d!431671))

(declare-fun d!431699 () Bool)

(assert (=> d!431699 (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 lt!511619)))

(declare-fun lt!511709 () Unit!25152)

(assert (=> d!431699 (= lt!511709 (choose!9031 thiss!27374 rules!4290 l2!3105 lt!511619))))

(assert (=> d!431699 (not (isEmpty!9655 rules!4290))))

(assert (=> d!431699 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!446 thiss!27374 rules!4290 l2!3105 lt!511619) lt!511709)))

(declare-fun bs!345161 () Bool)

(assert (= bs!345161 d!431699))

(assert (=> bs!345161 m!1716163))

(declare-fun m!1716445 () Bool)

(assert (=> bs!345161 m!1716445))

(assert (=> bs!345161 m!1716187))

(assert (=> b!1472132 d!431699))

(declare-fun d!431701 () Bool)

(declare-fun lt!511710 () Bool)

(declare-fun e!940390 () Bool)

(assert (=> d!431701 (= lt!511710 e!940390)))

(declare-fun res!665530 () Bool)

(assert (=> d!431701 (=> (not res!665530) (not e!940390))))

(assert (=> d!431701 (= res!665530 (= (list!6172 (_1!8028 (lex!1085 thiss!27374 rules!4290 (print!1120 thiss!27374 (singletonSeq!1295 lt!511619))))) (list!6172 (singletonSeq!1295 lt!511619))))))

(declare-fun e!940389 () Bool)

(assert (=> d!431701 (= lt!511710 e!940389)))

(declare-fun res!665529 () Bool)

(assert (=> d!431701 (=> (not res!665529) (not e!940389))))

(declare-fun lt!511711 () tuple2!14284)

(assert (=> d!431701 (= res!665529 (= (size!12555 (_1!8028 lt!511711)) 1))))

(assert (=> d!431701 (= lt!511711 (lex!1085 thiss!27374 rules!4290 (print!1120 thiss!27374 (singletonSeq!1295 lt!511619))))))

(assert (=> d!431701 (not (isEmpty!9655 rules!4290))))

(assert (=> d!431701 (= (rulesProduceIndividualToken!1265 thiss!27374 rules!4290 lt!511619) lt!511710)))

(declare-fun b!1472360 () Bool)

(declare-fun res!665531 () Bool)

(assert (=> b!1472360 (=> (not res!665531) (not e!940389))))

(assert (=> b!1472360 (= res!665531 (= (apply!3994 (_1!8028 lt!511711) 0) lt!511619))))

(declare-fun b!1472361 () Bool)

(assert (=> b!1472361 (= e!940389 (isEmpty!9659 (_2!8028 lt!511711)))))

(declare-fun b!1472362 () Bool)

(assert (=> b!1472362 (= e!940390 (isEmpty!9659 (_2!8028 (lex!1085 thiss!27374 rules!4290 (print!1120 thiss!27374 (singletonSeq!1295 lt!511619))))))))

(assert (= (and d!431701 res!665529) b!1472360))

(assert (= (and b!1472360 res!665531) b!1472361))

(assert (= (and d!431701 res!665530) b!1472362))

(declare-fun m!1716447 () Bool)

(assert (=> d!431701 m!1716447))

(declare-fun m!1716449 () Bool)

(assert (=> d!431701 m!1716449))

(declare-fun m!1716451 () Bool)

(assert (=> d!431701 m!1716451))

(declare-fun m!1716453 () Bool)

(assert (=> d!431701 m!1716453))

(assert (=> d!431701 m!1716449))

(assert (=> d!431701 m!1716453))

(assert (=> d!431701 m!1716187))

(declare-fun m!1716455 () Bool)

(assert (=> d!431701 m!1716455))

(assert (=> d!431701 m!1716453))

(declare-fun m!1716457 () Bool)

(assert (=> d!431701 m!1716457))

(declare-fun m!1716459 () Bool)

(assert (=> b!1472360 m!1716459))

(declare-fun m!1716461 () Bool)

(assert (=> b!1472361 m!1716461))

(assert (=> b!1472362 m!1716453))

(assert (=> b!1472362 m!1716453))

(assert (=> b!1472362 m!1716449))

(assert (=> b!1472362 m!1716449))

(assert (=> b!1472362 m!1716451))

(declare-fun m!1716463 () Bool)

(assert (=> b!1472362 m!1716463))

(assert (=> b!1472132 d!431701))

(declare-fun b!1472367 () Bool)

(declare-fun e!940393 () Bool)

(declare-fun tp_is_empty!6925 () Bool)

(declare-fun tp!415927 () Bool)

(assert (=> b!1472367 (= e!940393 (and tp_is_empty!6925 tp!415927))))

(assert (=> b!1472140 (= tp!415874 e!940393)))

(assert (= (and b!1472140 (is-Cons!15460 (originalCharacters!3612 (h!20862 l1!3136)))) b!1472367))

(declare-fun e!940396 () Bool)

(assert (=> b!1472129 (= tp!415871 e!940396)))

(declare-fun b!1472381 () Bool)

(declare-fun tp!415941 () Bool)

(declare-fun tp!415940 () Bool)

(assert (=> b!1472381 (= e!940396 (and tp!415941 tp!415940))))

(declare-fun b!1472380 () Bool)

(declare-fun tp!415942 () Bool)

(assert (=> b!1472380 (= e!940396 tp!415942)))

(declare-fun b!1472379 () Bool)

(declare-fun tp!415939 () Bool)

(declare-fun tp!415938 () Bool)

(assert (=> b!1472379 (= e!940396 (and tp!415939 tp!415938))))

(declare-fun b!1472378 () Bool)

(assert (=> b!1472378 (= e!940396 tp_is_empty!6925)))

(assert (= (and b!1472129 (is-ElementMatch!4064 (regex!2750 (rule!4527 (h!20862 l1!3136))))) b!1472378))

(assert (= (and b!1472129 (is-Concat!6905 (regex!2750 (rule!4527 (h!20862 l1!3136))))) b!1472379))

(assert (= (and b!1472129 (is-Star!4064 (regex!2750 (rule!4527 (h!20862 l1!3136))))) b!1472380))

(assert (= (and b!1472129 (is-Union!4064 (regex!2750 (rule!4527 (h!20862 l1!3136))))) b!1472381))

(declare-fun e!940397 () Bool)

(assert (=> b!1472138 (= tp!415867 e!940397)))

(declare-fun b!1472385 () Bool)

(declare-fun tp!415946 () Bool)

(declare-fun tp!415945 () Bool)

(assert (=> b!1472385 (= e!940397 (and tp!415946 tp!415945))))

(declare-fun b!1472384 () Bool)

(declare-fun tp!415947 () Bool)

(assert (=> b!1472384 (= e!940397 tp!415947)))

(declare-fun b!1472383 () Bool)

(declare-fun tp!415944 () Bool)

(declare-fun tp!415943 () Bool)

(assert (=> b!1472383 (= e!940397 (and tp!415944 tp!415943))))

(declare-fun b!1472382 () Bool)

(assert (=> b!1472382 (= e!940397 tp_is_empty!6925)))

(assert (= (and b!1472138 (is-ElementMatch!4064 (regex!2750 (h!20863 rules!4290)))) b!1472382))

(assert (= (and b!1472138 (is-Concat!6905 (regex!2750 (h!20863 rules!4290)))) b!1472383))

(assert (= (and b!1472138 (is-Star!4064 (regex!2750 (h!20863 rules!4290)))) b!1472384))

(assert (= (and b!1472138 (is-Union!4064 (regex!2750 (h!20863 rules!4290)))) b!1472385))

(declare-fun b!1472399 () Bool)

(declare-fun b_free!37347 () Bool)

(declare-fun b_next!38051 () Bool)

(assert (=> b!1472399 (= b_free!37347 (not b_next!38051))))

(declare-fun tp!415962 () Bool)

(declare-fun b_and!101165 () Bool)

(assert (=> b!1472399 (= tp!415962 b_and!101165)))

(declare-fun b_free!37349 () Bool)

(declare-fun b_next!38053 () Bool)

(assert (=> b!1472399 (= b_free!37349 (not b_next!38053))))

(declare-fun t!135873 () Bool)

(declare-fun tb!83489 () Bool)

(assert (=> (and b!1472399 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l2!3105))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105))))) t!135873) tb!83489))

(declare-fun result!100364 () Bool)

(assert (= result!100364 result!100338))

(assert (=> b!1472281 t!135873))

(declare-fun t!135875 () Bool)

(declare-fun tb!83491 () Bool)

(assert (=> (and b!1472399 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l2!3105))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136))))) t!135875) tb!83491))

(declare-fun result!100366 () Bool)

(assert (= result!100366 result!100346))

(assert (=> b!1472288 t!135875))

(declare-fun b_and!101167 () Bool)

(declare-fun tp!415958 () Bool)

(assert (=> b!1472399 (= tp!415958 (and (=> t!135873 result!100364) (=> t!135875 result!100366) b_and!101167))))

(declare-fun b!1472398 () Bool)

(declare-fun e!940411 () Bool)

(declare-fun tp!415959 () Bool)

(declare-fun e!940410 () Bool)

(assert (=> b!1472398 (= e!940411 (and tp!415959 (inv!20666 (tag!3014 (rule!4527 (h!20862 (t!135836 l2!3105))))) (inv!20670 (transformation!2750 (rule!4527 (h!20862 (t!135836 l2!3105))))) e!940410))))

(declare-fun e!940414 () Bool)

(assert (=> b!1472123 (= tp!415869 e!940414)))

(declare-fun e!940413 () Bool)

(declare-fun tp!415960 () Bool)

(declare-fun b!1472397 () Bool)

(assert (=> b!1472397 (= e!940413 (and (inv!21 (value!88024 (h!20862 (t!135836 l2!3105)))) e!940411 tp!415960))))

(declare-fun b!1472396 () Bool)

(declare-fun tp!415961 () Bool)

(assert (=> b!1472396 (= e!940414 (and (inv!20669 (h!20862 (t!135836 l2!3105))) e!940413 tp!415961))))

(assert (=> b!1472399 (= e!940410 (and tp!415962 tp!415958))))

(assert (= b!1472398 b!1472399))

(assert (= b!1472397 b!1472398))

(assert (= b!1472396 b!1472397))

(assert (= (and b!1472123 (is-Cons!15461 (t!135836 l2!3105))) b!1472396))

(declare-fun m!1716465 () Bool)

(assert (=> b!1472398 m!1716465))

(declare-fun m!1716467 () Bool)

(assert (=> b!1472398 m!1716467))

(declare-fun m!1716469 () Bool)

(assert (=> b!1472397 m!1716469))

(declare-fun m!1716471 () Bool)

(assert (=> b!1472396 m!1716471))

(declare-fun b!1472410 () Bool)

(declare-fun b_free!37351 () Bool)

(declare-fun b_next!38055 () Bool)

(assert (=> b!1472410 (= b_free!37351 (not b_next!38055))))

(declare-fun tp!415972 () Bool)

(declare-fun b_and!101169 () Bool)

(assert (=> b!1472410 (= tp!415972 b_and!101169)))

(declare-fun b_free!37353 () Bool)

(declare-fun b_next!38057 () Bool)

(assert (=> b!1472410 (= b_free!37353 (not b_next!38057))))

(declare-fun t!135877 () Bool)

(declare-fun tb!83493 () Bool)

(assert (=> (and b!1472410 (= (toChars!3936 (transformation!2750 (h!20863 (t!135837 rules!4290)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105))))) t!135877) tb!83493))

(declare-fun result!100370 () Bool)

(assert (= result!100370 result!100338))

(assert (=> b!1472281 t!135877))

(declare-fun t!135879 () Bool)

(declare-fun tb!83495 () Bool)

(assert (=> (and b!1472410 (= (toChars!3936 (transformation!2750 (h!20863 (t!135837 rules!4290)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136))))) t!135879) tb!83495))

(declare-fun result!100372 () Bool)

(assert (= result!100372 result!100346))

(assert (=> b!1472288 t!135879))

(declare-fun b_and!101171 () Bool)

(declare-fun tp!415973 () Bool)

(assert (=> b!1472410 (= tp!415973 (and (=> t!135877 result!100370) (=> t!135879 result!100372) b_and!101171))))

(declare-fun e!940427 () Bool)

(assert (=> b!1472410 (= e!940427 (and tp!415972 tp!415973))))

(declare-fun tp!415974 () Bool)

(declare-fun b!1472409 () Bool)

(declare-fun e!940424 () Bool)

(assert (=> b!1472409 (= e!940424 (and tp!415974 (inv!20666 (tag!3014 (h!20863 (t!135837 rules!4290)))) (inv!20670 (transformation!2750 (h!20863 (t!135837 rules!4290)))) e!940427))))

(declare-fun b!1472408 () Bool)

(declare-fun e!940425 () Bool)

(declare-fun tp!415971 () Bool)

(assert (=> b!1472408 (= e!940425 (and e!940424 tp!415971))))

(assert (=> b!1472124 (= tp!415865 e!940425)))

(assert (= b!1472409 b!1472410))

(assert (= b!1472408 b!1472409))

(assert (= (and b!1472124 (is-Cons!15462 (t!135837 rules!4290))) b!1472408))

(declare-fun m!1716473 () Bool)

(assert (=> b!1472409 m!1716473))

(declare-fun m!1716475 () Bool)

(assert (=> b!1472409 m!1716475))

(declare-fun b!1472414 () Bool)

(declare-fun b_free!37355 () Bool)

(declare-fun b_next!38059 () Bool)

(assert (=> b!1472414 (= b_free!37355 (not b_next!38059))))

(declare-fun tp!415979 () Bool)

(declare-fun b_and!101173 () Bool)

(assert (=> b!1472414 (= tp!415979 b_and!101173)))

(declare-fun b_free!37357 () Bool)

(declare-fun b_next!38061 () Bool)

(assert (=> b!1472414 (= b_free!37357 (not b_next!38061))))

(declare-fun tb!83497 () Bool)

(declare-fun t!135881 () Bool)

(assert (=> (and b!1472414 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l1!3136))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105))))) t!135881) tb!83497))

(declare-fun result!100374 () Bool)

(assert (= result!100374 result!100338))

(assert (=> b!1472281 t!135881))

(declare-fun t!135883 () Bool)

(declare-fun tb!83499 () Bool)

(assert (=> (and b!1472414 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l1!3136))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136))))) t!135883) tb!83499))

(declare-fun result!100376 () Bool)

(assert (= result!100376 result!100346))

(assert (=> b!1472288 t!135883))

(declare-fun tp!415975 () Bool)

(declare-fun b_and!101175 () Bool)

(assert (=> b!1472414 (= tp!415975 (and (=> t!135881 result!100374) (=> t!135883 result!100376) b_and!101175))))

(declare-fun b!1472413 () Bool)

(declare-fun e!940428 () Bool)

(declare-fun tp!415976 () Bool)

(declare-fun e!940429 () Bool)

(assert (=> b!1472413 (= e!940429 (and tp!415976 (inv!20666 (tag!3014 (rule!4527 (h!20862 (t!135836 l1!3136))))) (inv!20670 (transformation!2750 (rule!4527 (h!20862 (t!135836 l1!3136))))) e!940428))))

(declare-fun e!940432 () Bool)

(assert (=> b!1472122 (= tp!415864 e!940432)))

(declare-fun e!940431 () Bool)

(declare-fun tp!415977 () Bool)

(declare-fun b!1472412 () Bool)

(assert (=> b!1472412 (= e!940431 (and (inv!21 (value!88024 (h!20862 (t!135836 l1!3136)))) e!940429 tp!415977))))

(declare-fun b!1472411 () Bool)

(declare-fun tp!415978 () Bool)

(assert (=> b!1472411 (= e!940432 (and (inv!20669 (h!20862 (t!135836 l1!3136))) e!940431 tp!415978))))

(assert (=> b!1472414 (= e!940428 (and tp!415979 tp!415975))))

(assert (= b!1472413 b!1472414))

(assert (= b!1472412 b!1472413))

(assert (= b!1472411 b!1472412))

(assert (= (and b!1472122 (is-Cons!15461 (t!135836 l1!3136))) b!1472411))

(declare-fun m!1716477 () Bool)

(assert (=> b!1472413 m!1716477))

(declare-fun m!1716479 () Bool)

(assert (=> b!1472413 m!1716479))

(declare-fun m!1716481 () Bool)

(assert (=> b!1472412 m!1716481))

(declare-fun m!1716483 () Bool)

(assert (=> b!1472411 m!1716483))

(declare-fun b!1472415 () Bool)

(declare-fun e!940434 () Bool)

(declare-fun tp!415980 () Bool)

(assert (=> b!1472415 (= e!940434 (and tp_is_empty!6925 tp!415980))))

(assert (=> b!1472133 (= tp!415863 e!940434)))

(assert (= (and b!1472133 (is-Cons!15460 (originalCharacters!3612 (h!20862 l2!3105)))) b!1472415))

(declare-fun e!940435 () Bool)

(assert (=> b!1472131 (= tp!415870 e!940435)))

(declare-fun b!1472419 () Bool)

(declare-fun tp!415984 () Bool)

(declare-fun tp!415983 () Bool)

(assert (=> b!1472419 (= e!940435 (and tp!415984 tp!415983))))

(declare-fun b!1472418 () Bool)

(declare-fun tp!415985 () Bool)

(assert (=> b!1472418 (= e!940435 tp!415985)))

(declare-fun b!1472417 () Bool)

(declare-fun tp!415982 () Bool)

(declare-fun tp!415981 () Bool)

(assert (=> b!1472417 (= e!940435 (and tp!415982 tp!415981))))

(declare-fun b!1472416 () Bool)

(assert (=> b!1472416 (= e!940435 tp_is_empty!6925)))

(assert (= (and b!1472131 (is-ElementMatch!4064 (regex!2750 (rule!4527 (h!20862 l2!3105))))) b!1472416))

(assert (= (and b!1472131 (is-Concat!6905 (regex!2750 (rule!4527 (h!20862 l2!3105))))) b!1472417))

(assert (= (and b!1472131 (is-Star!4064 (regex!2750 (rule!4527 (h!20862 l2!3105))))) b!1472418))

(assert (= (and b!1472131 (is-Union!4064 (regex!2750 (rule!4527 (h!20862 l2!3105))))) b!1472419))

(declare-fun b_lambda!45975 () Bool)

(assert (= b_lambda!45969 (or (and b!1472410 b_free!37353 (= (toChars!3936 (transformation!2750 (h!20863 (t!135837 rules!4290)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))))) (and b!1472399 b_free!37349 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l2!3105))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))))) (and b!1472125 b_free!37333 (= (toChars!3936 (transformation!2750 (h!20863 rules!4290))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))))) (and b!1472414 b_free!37357 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l1!3136))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))))) (and b!1472141 b_free!37325 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))))) (and b!1472136 b_free!37329) b_lambda!45975)))

(declare-fun b_lambda!45977 () Bool)

(assert (= b_lambda!45971 (or (and b!1472399 b_free!37349 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l2!3105))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))))) (and b!1472125 b_free!37333 (= (toChars!3936 (transformation!2750 (h!20863 rules!4290))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))))) (and b!1472414 b_free!37357 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 (t!135836 l1!3136))))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))))) (and b!1472136 b_free!37329 (= (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l2!3105)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))))) (and b!1472141 b_free!37325) (and b!1472410 b_free!37353 (= (toChars!3936 (transformation!2750 (h!20863 (t!135837 rules!4290)))) (toChars!3936 (transformation!2750 (rule!4527 (h!20862 l1!3136)))))) b_lambda!45977)))

(push 1)

(assert (not d!431649))

(assert b_and!101167)

(assert (not b!1472282))

(assert (not d!431669))

(assert (not b!1472232))

(assert (not b_next!38035))

(assert (not b!1472396))

(assert (not b!1472397))

(assert (not b!1472358))

(assert (not b!1472381))

(assert (not b!1472409))

(assert (not d!431701))

(assert (not b!1472412))

(assert (not tb!83477))

(assert (not b_lambda!45975))

(assert (not d!431663))

(assert (not b!1472295))

(assert (not b!1472359))

(assert (not b!1472264))

(assert (not b!1472289))

(assert (not b_next!38051))

(assert (not b!1472417))

(assert b_and!101157)

(assert (not b!1472273))

(assert (not b!1472287))

(assert (not b!1472380))

(assert (not b!1472255))

(assert (not d!431665))

(assert b_and!101165)

(assert (not b!1472385))

(assert b_and!101121)

(assert (not b_next!38057))

(assert (not b!1472294))

(assert (not b!1472229))

(assert (not b!1472357))

(assert (not b_next!38033))

(assert b_and!101169)

(assert (not b_next!38053))

(assert (not b!1472296))

(assert (not d!431637))

(assert (not d!431699))

(assert (not b!1472233))

(assert (not b_next!38037))

(assert (not tb!83471))

(assert (not b!1472367))

(assert (not b!1472419))

(assert (not b!1472291))

(assert (not b!1472413))

(assert (not b!1472218))

(assert (not d!431657))

(assert (not d!431633))

(assert (not b_next!38055))

(assert b_and!101171)

(assert (not b!1472281))

(assert (not b_lambda!45977))

(assert (not b!1472239))

(assert (not b_next!38059))

(assert (not b!1472362))

(assert (not b!1472360))

(assert (not b!1472408))

(assert (not b!1472237))

(assert b_and!101117)

(assert (not d!431655))

(assert (not b_next!38029))

(assert (not b_next!38061))

(assert (not b!1472217))

(assert (not b!1472288))

(assert (not d!431653))

(assert (not b!1472384))

(assert (not b!1472272))

(assert (not b_next!38031))

(assert (not b!1472361))

(assert (not d!431643))

(assert (not b_next!38027))

(assert b_and!101153)

(assert (not b!1472271))

(assert (not b!1472302))

(assert (not b!1472418))

(assert (not b!1472379))

(assert b_and!101175)

(assert tp_is_empty!6925)

(assert (not d!431671))

(assert b_and!101155)

(assert (not b!1472236))

(assert (not b!1472274))

(assert b_and!101173)

(assert (not b!1472290))

(assert (not b!1472411))

(assert (not b!1472238))

(assert (not b!1472254))

(assert b_and!101125)

(assert (not b!1472398))

(assert (not b!1472415))

(assert (not b!1472383))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38035))

(assert (not b_next!38051))

(assert b_and!101157)

(assert b_and!101167)

(assert b_and!101165)

(assert (not b_next!38053))

(assert (not b_next!38037))

(assert (not b_next!38059))

(assert b_and!101117)

(assert (not b_next!38031))

(assert b_and!101175)

(assert b_and!101155)

(assert b_and!101173)

(assert b_and!101125)

(assert b_and!101121)

(assert (not b_next!38057))

(assert (not b_next!38033))

(assert b_and!101169)

(assert (not b_next!38055))

(assert b_and!101171)

(assert (not b_next!38029))

(assert (not b_next!38061))

(assert (not b_next!38027))

(assert b_and!101153)

(check-sat)

(pop 1)

