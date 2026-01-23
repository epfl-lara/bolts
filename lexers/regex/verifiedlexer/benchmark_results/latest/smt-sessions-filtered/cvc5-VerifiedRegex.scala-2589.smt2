; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!138596 () Bool)

(assert start!138596)

(declare-fun b!1477298 () Bool)

(declare-fun b_free!37827 () Bool)

(declare-fun b_next!38531 () Bool)

(assert (=> b!1477298 (= b_free!37827 (not b_next!38531))))

(declare-fun tp!418244 () Bool)

(declare-fun b_and!102137 () Bool)

(assert (=> b!1477298 (= tp!418244 b_and!102137)))

(declare-fun b_free!37829 () Bool)

(declare-fun b_next!38533 () Bool)

(assert (=> b!1477298 (= b_free!37829 (not b_next!38533))))

(declare-fun tp!418240 () Bool)

(declare-fun b_and!102139 () Bool)

(assert (=> b!1477298 (= tp!418240 b_and!102139)))

(declare-fun b!1477294 () Bool)

(declare-fun b_free!37831 () Bool)

(declare-fun b_next!38535 () Bool)

(assert (=> b!1477294 (= b_free!37831 (not b_next!38535))))

(declare-fun tp!418243 () Bool)

(declare-fun b_and!102141 () Bool)

(assert (=> b!1477294 (= tp!418243 b_and!102141)))

(declare-fun b_free!37833 () Bool)

(declare-fun b_next!38537 () Bool)

(assert (=> b!1477294 (= b_free!37833 (not b_next!38537))))

(declare-fun tp!418248 () Bool)

(declare-fun b_and!102143 () Bool)

(assert (=> b!1477294 (= tp!418248 b_and!102143)))

(declare-fun b!1477302 () Bool)

(declare-fun b_free!37835 () Bool)

(declare-fun b_next!38539 () Bool)

(assert (=> b!1477302 (= b_free!37835 (not b_next!38539))))

(declare-fun tp!418246 () Bool)

(declare-fun b_and!102145 () Bool)

(assert (=> b!1477302 (= tp!418246 b_and!102145)))

(declare-fun b_free!37837 () Bool)

(declare-fun b_next!38541 () Bool)

(assert (=> b!1477302 (= b_free!37837 (not b_next!38541))))

(declare-fun tp!418239 () Bool)

(declare-fun b_and!102147 () Bool)

(assert (=> b!1477302 (= tp!418239 b_and!102147)))

(declare-fun e!944026 () Bool)

(declare-fun tp!418242 () Bool)

(declare-datatypes ((List!15648 0))(
  ( (Nil!15582) (Cons!15582 (h!20983 (_ BitVec 16)) (t!136793 List!15648)) )
))
(declare-datatypes ((TokenValue!2866 0))(
  ( (FloatLiteralValue!5732 (text!20507 List!15648)) (TokenValueExt!2865 (__x!9522 Int)) (Broken!14330 (value!88739 List!15648)) (Object!2931) (End!2866) (Def!2866) (Underscore!2866) (Match!2866) (Else!2866) (Error!2866) (Case!2866) (If!2866) (Extends!2866) (Abstract!2866) (Class!2866) (Val!2866) (DelimiterValue!5732 (del!2926 List!15648)) (KeywordValue!2872 (value!88740 List!15648)) (CommentValue!5732 (value!88741 List!15648)) (WhitespaceValue!5732 (value!88742 List!15648)) (IndentationValue!2866 (value!88743 List!15648)) (String!18587) (Int32!2866) (Broken!14331 (value!88744 List!15648)) (Boolean!2867) (Unit!25351) (OperatorValue!2869 (op!2926 List!15648)) (IdentifierValue!5732 (value!88745 List!15648)) (IdentifierValue!5733 (value!88746 List!15648)) (WhitespaceValue!5733 (value!88747 List!15648)) (True!5732) (False!5732) (Broken!14332 (value!88748 List!15648)) (Broken!14333 (value!88749 List!15648)) (True!5733) (RightBrace!2866) (RightBracket!2866) (Colon!2866) (Null!2866) (Comma!2866) (LeftBracket!2866) (False!5733) (LeftBrace!2866) (ImaginaryLiteralValue!2866 (text!20508 List!15648)) (StringLiteralValue!8598 (value!88750 List!15648)) (EOFValue!2866 (value!88751 List!15648)) (IdentValue!2866 (value!88752 List!15648)) (DelimiterValue!5733 (value!88753 List!15648)) (DedentValue!2866 (value!88754 List!15648)) (NewLineValue!2866 (value!88755 List!15648)) (IntegerValue!8598 (value!88756 (_ BitVec 32)) (text!20509 List!15648)) (IntegerValue!8599 (value!88757 Int) (text!20510 List!15648)) (Times!2866) (Or!2866) (Equal!2866) (Minus!2866) (Broken!14334 (value!88758 List!15648)) (And!2866) (Div!2866) (LessEqual!2866) (Mod!2866) (Concat!6956) (Not!2866) (Plus!2866) (SpaceValue!2866 (value!88759 List!15648)) (IntegerValue!8600 (value!88760 Int) (text!20511 List!15648)) (StringLiteralValue!8599 (text!20512 List!15648)) (FloatLiteralValue!5733 (text!20513 List!15648)) (BytesLiteralValue!2866 (value!88761 List!15648)) (CommentValue!5733 (value!88762 List!15648)) (StringLiteralValue!8600 (value!88763 List!15648)) (ErrorTokenValue!2866 (msg!2927 List!15648)) )
))
(declare-datatypes ((C!8358 0))(
  ( (C!8359 (val!4749 Int)) )
))
(declare-datatypes ((Regex!4090 0))(
  ( (ElementMatch!4090 (c!242681 C!8358)) (Concat!6957 (regOne!8692 Regex!4090) (regTwo!8692 Regex!4090)) (EmptyExpr!4090) (Star!4090 (reg!4419 Regex!4090)) (EmptyLang!4090) (Union!4090 (regOne!8693 Regex!4090) (regTwo!8693 Regex!4090)) )
))
(declare-datatypes ((String!18588 0))(
  ( (String!18589 (value!88764 String)) )
))
(declare-datatypes ((List!15649 0))(
  ( (Nil!15583) (Cons!15583 (h!20984 C!8358) (t!136794 List!15649)) )
))
(declare-datatypes ((IArray!10619 0))(
  ( (IArray!10620 (innerList!5367 List!15649)) )
))
(declare-datatypes ((Conc!5307 0))(
  ( (Node!5307 (left!13146 Conc!5307) (right!13476 Conc!5307) (csize!10844 Int) (cheight!5518 Int)) (Leaf!7897 (xs!8062 IArray!10619) (csize!10845 Int)) (Empty!5307) )
))
(declare-datatypes ((BalanceConc!10554 0))(
  ( (BalanceConc!10555 (c!242682 Conc!5307)) )
))
(declare-datatypes ((TokenValueInjection!5392 0))(
  ( (TokenValueInjection!5393 (toValue!4111 Int) (toChars!3970 Int)) )
))
(declare-datatypes ((Rule!5352 0))(
  ( (Rule!5353 (regex!2776 Regex!4090) (tag!3040 String!18588) (isSeparator!2776 Bool) (transformation!2776 TokenValueInjection!5392)) )
))
(declare-datatypes ((Token!5214 0))(
  ( (Token!5215 (value!88765 TokenValue!2866) (rule!4553 Rule!5352) (size!12624 Int) (originalCharacters!3638 List!15649)) )
))
(declare-datatypes ((List!15650 0))(
  ( (Nil!15584) (Cons!15584 (h!20985 Token!5214) (t!136795 List!15650)) )
))
(declare-fun l1!3136 () List!15650)

(declare-fun b!1477290 () Bool)

(declare-fun e!944018 () Bool)

(declare-fun inv!21 (TokenValue!2866) Bool)

(assert (=> b!1477290 (= e!944026 (and (inv!21 (value!88765 (h!20985 l1!3136))) e!944018 tp!418242))))

(declare-fun b!1477292 () Bool)

(declare-fun res!667628 () Bool)

(declare-fun e!944025 () Bool)

(assert (=> b!1477292 (=> (not res!667628) (not e!944025))))

(declare-datatypes ((List!15651 0))(
  ( (Nil!15585) (Cons!15585 (h!20986 Rule!5352) (t!136796 List!15651)) )
))
(declare-fun rules!4290 () List!15651)

(declare-fun isEmpty!9737 (List!15651) Bool)

(assert (=> b!1477292 (= res!667628 (not (isEmpty!9737 rules!4290)))))

(declare-fun b!1477293 () Bool)

(declare-fun res!667630 () Bool)

(assert (=> b!1477293 (=> (not res!667630) (not e!944025))))

(declare-fun l2!3105 () List!15650)

(declare-fun isEmpty!9738 (List!15650) Bool)

(assert (=> b!1477293 (= res!667630 (not (isEmpty!9738 l2!3105)))))

(declare-fun e!944027 () Bool)

(assert (=> b!1477294 (= e!944027 (and tp!418243 tp!418248))))

(declare-fun b!1477295 () Bool)

(declare-fun tp!418247 () Bool)

(declare-fun e!944021 () Bool)

(declare-fun inv!20793 (String!18588) Bool)

(declare-fun inv!20796 (TokenValueInjection!5392) Bool)

(assert (=> b!1477295 (= e!944021 (and tp!418247 (inv!20793 (tag!3040 (h!20986 rules!4290))) (inv!20796 (transformation!2776 (h!20986 rules!4290))) e!944027))))

(declare-fun tp!418249 () Bool)

(declare-fun e!944022 () Bool)

(declare-fun b!1477296 () Bool)

(declare-fun inv!20797 (Token!5214) Bool)

(assert (=> b!1477296 (= e!944022 (and (inv!20797 (h!20985 l1!3136)) e!944026 tp!418249))))

(declare-fun b!1477297 () Bool)

(declare-fun res!667625 () Bool)

(assert (=> b!1477297 (=> (not res!667625) (not e!944025))))

(declare-datatypes ((LexerInterface!2432 0))(
  ( (LexerInterfaceExt!2429 (__x!9523 Int)) (Lexer!2430) )
))
(declare-fun thiss!27374 () LexerInterface!2432)

(declare-fun tokensListTwoByTwoPredicateSeparableList!292 (LexerInterface!2432 List!15650 List!15651) Bool)

(assert (=> b!1477297 (= res!667625 (tokensListTwoByTwoPredicateSeparableList!292 thiss!27374 l1!3136 rules!4290))))

(declare-fun e!944023 () Bool)

(assert (=> b!1477298 (= e!944023 (and tp!418244 tp!418240))))

(declare-fun b!1477291 () Bool)

(declare-fun res!667629 () Bool)

(assert (=> b!1477291 (=> (not res!667629) (not e!944025))))

(assert (=> b!1477291 (= res!667629 (not (isEmpty!9738 l1!3136)))))

(declare-fun res!667631 () Bool)

(assert (=> start!138596 (=> (not res!667631) (not e!944025))))

(assert (=> start!138596 (= res!667631 (is-Lexer!2430 thiss!27374))))

(assert (=> start!138596 e!944025))

(assert (=> start!138596 true))

(declare-fun e!944016 () Bool)

(assert (=> start!138596 e!944016))

(assert (=> start!138596 e!944022))

(declare-fun e!944024 () Bool)

(assert (=> start!138596 e!944024))

(declare-fun tp!418237 () Bool)

(declare-fun b!1477299 () Bool)

(declare-fun e!944028 () Bool)

(declare-fun e!944029 () Bool)

(assert (=> b!1477299 (= e!944029 (and (inv!21 (value!88765 (h!20985 l2!3105))) e!944028 tp!418237))))

(declare-fun b!1477300 () Bool)

(declare-fun res!667626 () Bool)

(assert (=> b!1477300 (=> (not res!667626) (not e!944025))))

(assert (=> b!1477300 (= res!667626 (tokensListTwoByTwoPredicateSeparableList!292 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1477301 () Bool)

(declare-fun tp!418245 () Bool)

(assert (=> b!1477301 (= e!944024 (and (inv!20797 (h!20985 l2!3105)) e!944029 tp!418245))))

(declare-fun e!944014 () Bool)

(assert (=> b!1477302 (= e!944014 (and tp!418246 tp!418239))))

(declare-fun b!1477303 () Bool)

(declare-fun tp!418250 () Bool)

(assert (=> b!1477303 (= e!944028 (and tp!418250 (inv!20793 (tag!3040 (rule!4553 (h!20985 l2!3105)))) (inv!20796 (transformation!2776 (rule!4553 (h!20985 l2!3105)))) e!944014))))

(declare-fun b!1477304 () Bool)

(assert (=> b!1477304 (= e!944025 (not true))))

(declare-fun lt!513399 () Token!5214)

(declare-fun rulesProduceIndividualToken!1289 (LexerInterface!2432 List!15651 Token!5214) Bool)

(assert (=> b!1477304 (rulesProduceIndividualToken!1289 thiss!27374 rules!4290 lt!513399)))

(declare-datatypes ((Unit!25352 0))(
  ( (Unit!25353) )
))
(declare-fun lt!513398 () Unit!25352)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!470 (LexerInterface!2432 List!15651 List!15650 Token!5214) Unit!25352)

(assert (=> b!1477304 (= lt!513398 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!470 thiss!27374 rules!4290 l1!3136 lt!513399))))

(declare-fun last!334 (List!15650) Token!5214)

(assert (=> b!1477304 (= lt!513399 (last!334 l1!3136))))

(declare-fun b!1477305 () Bool)

(declare-fun res!667627 () Bool)

(assert (=> b!1477305 (=> (not res!667627) (not e!944025))))

(declare-fun rulesProduceEachTokenIndividuallyList!799 (LexerInterface!2432 List!15651 List!15650) Bool)

(assert (=> b!1477305 (= res!667627 (rulesProduceEachTokenIndividuallyList!799 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1477306 () Bool)

(declare-fun tp!418241 () Bool)

(assert (=> b!1477306 (= e!944016 (and e!944021 tp!418241))))

(declare-fun b!1477307 () Bool)

(declare-fun tp!418238 () Bool)

(assert (=> b!1477307 (= e!944018 (and tp!418238 (inv!20793 (tag!3040 (rule!4553 (h!20985 l1!3136)))) (inv!20796 (transformation!2776 (rule!4553 (h!20985 l1!3136)))) e!944023))))

(declare-fun b!1477308 () Bool)

(declare-fun res!667633 () Bool)

(assert (=> b!1477308 (=> (not res!667633) (not e!944025))))

(declare-fun rulesInvariant!2221 (LexerInterface!2432 List!15651) Bool)

(assert (=> b!1477308 (= res!667633 (rulesInvariant!2221 thiss!27374 rules!4290))))

(declare-fun b!1477309 () Bool)

(declare-fun res!667632 () Bool)

(assert (=> b!1477309 (=> (not res!667632) (not e!944025))))

(assert (=> b!1477309 (= res!667632 (rulesProduceEachTokenIndividuallyList!799 thiss!27374 rules!4290 l1!3136))))

(assert (= (and start!138596 res!667631) b!1477292))

(assert (= (and b!1477292 res!667628) b!1477308))

(assert (= (and b!1477308 res!667633) b!1477309))

(assert (= (and b!1477309 res!667632) b!1477305))

(assert (= (and b!1477305 res!667627) b!1477297))

(assert (= (and b!1477297 res!667625) b!1477300))

(assert (= (and b!1477300 res!667626) b!1477291))

(assert (= (and b!1477291 res!667629) b!1477293))

(assert (= (and b!1477293 res!667630) b!1477304))

(assert (= b!1477295 b!1477294))

(assert (= b!1477306 b!1477295))

(assert (= (and start!138596 (is-Cons!15585 rules!4290)) b!1477306))

(assert (= b!1477307 b!1477298))

(assert (= b!1477290 b!1477307))

(assert (= b!1477296 b!1477290))

(assert (= (and start!138596 (is-Cons!15584 l1!3136)) b!1477296))

(assert (= b!1477303 b!1477302))

(assert (= b!1477299 b!1477303))

(assert (= b!1477301 b!1477299))

(assert (= (and start!138596 (is-Cons!15584 l2!3105)) b!1477301))

(declare-fun m!1722853 () Bool)

(assert (=> b!1477308 m!1722853))

(declare-fun m!1722855 () Bool)

(assert (=> b!1477300 m!1722855))

(declare-fun m!1722857 () Bool)

(assert (=> b!1477297 m!1722857))

(declare-fun m!1722859 () Bool)

(assert (=> b!1477309 m!1722859))

(declare-fun m!1722861 () Bool)

(assert (=> b!1477296 m!1722861))

(declare-fun m!1722863 () Bool)

(assert (=> b!1477299 m!1722863))

(declare-fun m!1722865 () Bool)

(assert (=> b!1477307 m!1722865))

(declare-fun m!1722867 () Bool)

(assert (=> b!1477307 m!1722867))

(declare-fun m!1722869 () Bool)

(assert (=> b!1477304 m!1722869))

(declare-fun m!1722871 () Bool)

(assert (=> b!1477304 m!1722871))

(declare-fun m!1722873 () Bool)

(assert (=> b!1477304 m!1722873))

(declare-fun m!1722875 () Bool)

(assert (=> b!1477292 m!1722875))

(declare-fun m!1722877 () Bool)

(assert (=> b!1477293 m!1722877))

(declare-fun m!1722879 () Bool)

(assert (=> b!1477290 m!1722879))

(declare-fun m!1722881 () Bool)

(assert (=> b!1477301 m!1722881))

(declare-fun m!1722883 () Bool)

(assert (=> b!1477291 m!1722883))

(declare-fun m!1722885 () Bool)

(assert (=> b!1477305 m!1722885))

(declare-fun m!1722887 () Bool)

(assert (=> b!1477303 m!1722887))

(declare-fun m!1722889 () Bool)

(assert (=> b!1477303 m!1722889))

(declare-fun m!1722891 () Bool)

(assert (=> b!1477295 m!1722891))

(declare-fun m!1722893 () Bool)

(assert (=> b!1477295 m!1722893))

(push 1)

(assert (not b_next!38537))

(assert (not b!1477297))

(assert (not b!1477300))

(assert (not b_next!38531))

(assert (not b!1477296))

(assert (not b!1477306))

(assert b_and!102147)

(assert (not b!1477303))

(assert b_and!102145)

(assert b_and!102137)

(assert (not b!1477307))

(assert b_and!102141)

(assert (not b!1477301))

(assert (not b!1477308))

(assert (not b_next!38533))

(assert (not b!1477295))

(assert b_and!102143)

(assert (not b_next!38539))

(assert (not b!1477292))

(assert (not b!1477304))

(assert (not b!1477293))

(assert b_and!102139)

(assert (not b_next!38535))

(assert (not b!1477305))

(assert (not b_next!38541))

(assert (not b!1477290))

(assert (not b!1477299))

(assert (not b!1477309))

(assert (not b!1477291))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!38537))

(assert b_and!102143)

(assert (not b_next!38539))

(assert (not b_next!38531))

(assert (not b_next!38541))

(assert b_and!102147)

(assert b_and!102145)

(assert b_and!102137)

(assert b_and!102141)

(assert (not b_next!38533))

(assert b_and!102139)

(assert (not b_next!38535))

(check-sat)

(pop 1)

