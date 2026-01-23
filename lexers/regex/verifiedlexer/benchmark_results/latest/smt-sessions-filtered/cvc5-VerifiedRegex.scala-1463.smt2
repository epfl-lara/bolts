; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78012 () Bool)

(assert start!78012)

(declare-fun b!865012 () Bool)

(declare-fun b_free!26389 () Bool)

(declare-fun b_next!26453 () Bool)

(assert (=> b!865012 (= b_free!26389 (not b_next!26453))))

(declare-fun tp!273446 () Bool)

(declare-fun b_and!77497 () Bool)

(assert (=> b!865012 (= tp!273446 b_and!77497)))

(declare-fun b_free!26391 () Bool)

(declare-fun b_next!26455 () Bool)

(assert (=> b!865012 (= b_free!26391 (not b_next!26455))))

(declare-fun tp!273445 () Bool)

(declare-fun b_and!77499 () Bool)

(assert (=> b!865012 (= tp!273445 b_and!77499)))

(declare-fun b!865014 () Bool)

(declare-fun b_free!26393 () Bool)

(declare-fun b_next!26457 () Bool)

(assert (=> b!865014 (= b_free!26393 (not b_next!26457))))

(declare-fun tp!273447 () Bool)

(declare-fun b_and!77501 () Bool)

(assert (=> b!865014 (= tp!273447 b_and!77501)))

(declare-fun b_free!26395 () Bool)

(declare-fun b_next!26459 () Bool)

(assert (=> b!865014 (= b_free!26395 (not b_next!26459))))

(declare-fun tp!273442 () Bool)

(declare-fun b_and!77503 () Bool)

(assert (=> b!865014 (= tp!273442 b_and!77503)))

(declare-fun b!865005 () Bool)

(declare-fun b_free!26397 () Bool)

(declare-fun b_next!26461 () Bool)

(assert (=> b!865005 (= b_free!26397 (not b_next!26461))))

(declare-fun tp!273448 () Bool)

(declare-fun b_and!77505 () Bool)

(assert (=> b!865005 (= tp!273448 b_and!77505)))

(declare-fun b_free!26399 () Bool)

(declare-fun b_next!26463 () Bool)

(assert (=> b!865005 (= b_free!26399 (not b_next!26463))))

(declare-fun tp!273451 () Bool)

(declare-fun b_and!77507 () Bool)

(assert (=> b!865005 (= tp!273451 b_and!77507)))

(declare-fun b!865002 () Bool)

(declare-fun e!569062 () Bool)

(declare-fun e!569056 () Bool)

(assert (=> b!865002 (= e!569062 (not e!569056))))

(declare-fun res!393950 () Bool)

(assert (=> b!865002 (=> res!393950 e!569056)))

(declare-datatypes ((List!9346 0))(
  ( (Nil!9330) (Cons!9330 (h!14731 (_ BitVec 16)) (t!98658 List!9346)) )
))
(declare-datatypes ((TokenValue!1817 0))(
  ( (FloatLiteralValue!3634 (text!13164 List!9346)) (TokenValueExt!1816 (__x!7365 Int)) (Broken!9085 (value!56578 List!9346)) (Object!1832) (End!1817) (Def!1817) (Underscore!1817) (Match!1817) (Else!1817) (Error!1817) (Case!1817) (If!1817) (Extends!1817) (Abstract!1817) (Class!1817) (Val!1817) (DelimiterValue!3634 (del!1877 List!9346)) (KeywordValue!1823 (value!56579 List!9346)) (CommentValue!3634 (value!56580 List!9346)) (WhitespaceValue!3634 (value!56581 List!9346)) (IndentationValue!1817 (value!56582 List!9346)) (String!10984) (Int32!1817) (Broken!9086 (value!56583 List!9346)) (Boolean!1818) (Unit!13861) (OperatorValue!1820 (op!1877 List!9346)) (IdentifierValue!3634 (value!56584 List!9346)) (IdentifierValue!3635 (value!56585 List!9346)) (WhitespaceValue!3635 (value!56586 List!9346)) (True!3634) (False!3634) (Broken!9087 (value!56587 List!9346)) (Broken!9088 (value!56588 List!9346)) (True!3635) (RightBrace!1817) (RightBracket!1817) (Colon!1817) (Null!1817) (Comma!1817) (LeftBracket!1817) (False!3635) (LeftBrace!1817) (ImaginaryLiteralValue!1817 (text!13165 List!9346)) (StringLiteralValue!5451 (value!56589 List!9346)) (EOFValue!1817 (value!56590 List!9346)) (IdentValue!1817 (value!56591 List!9346)) (DelimiterValue!3635 (value!56592 List!9346)) (DedentValue!1817 (value!56593 List!9346)) (NewLineValue!1817 (value!56594 List!9346)) (IntegerValue!5451 (value!56595 (_ BitVec 32)) (text!13166 List!9346)) (IntegerValue!5452 (value!56596 Int) (text!13167 List!9346)) (Times!1817) (Or!1817) (Equal!1817) (Minus!1817) (Broken!9089 (value!56597 List!9346)) (And!1817) (Div!1817) (LessEqual!1817) (Mod!1817) (Concat!4001) (Not!1817) (Plus!1817) (SpaceValue!1817 (value!56598 List!9346)) (IntegerValue!5453 (value!56599 Int) (text!13168 List!9346)) (StringLiteralValue!5452 (text!13169 List!9346)) (FloatLiteralValue!3635 (text!13170 List!9346)) (BytesLiteralValue!1817 (value!56600 List!9346)) (CommentValue!3635 (value!56601 List!9346)) (StringLiteralValue!5453 (value!56602 List!9346)) (ErrorTokenValue!1817 (msg!1878 List!9346)) )
))
(declare-datatypes ((C!4938 0))(
  ( (C!4939 (val!2717 Int)) )
))
(declare-datatypes ((Regex!2184 0))(
  ( (ElementMatch!2184 (c!140037 C!4938)) (Concat!4002 (regOne!4880 Regex!2184) (regTwo!4880 Regex!2184)) (EmptyExpr!2184) (Star!2184 (reg!2513 Regex!2184)) (EmptyLang!2184) (Union!2184 (regOne!4881 Regex!2184) (regTwo!4881 Regex!2184)) )
))
(declare-datatypes ((List!9347 0))(
  ( (Nil!9331) (Cons!9331 (h!14732 C!4938) (t!98659 List!9347)) )
))
(declare-datatypes ((IArray!6193 0))(
  ( (IArray!6194 (innerList!3154 List!9347)) )
))
(declare-datatypes ((Conc!3094 0))(
  ( (Node!3094 (left!6907 Conc!3094) (right!7237 Conc!3094) (csize!6418 Int) (cheight!3305 Int)) (Leaf!4558 (xs!5783 IArray!6193) (csize!6419 Int)) (Empty!3094) )
))
(declare-datatypes ((BalanceConc!6202 0))(
  ( (BalanceConc!6203 (c!140038 Conc!3094)) )
))
(declare-datatypes ((String!10985 0))(
  ( (String!10986 (value!56603 String)) )
))
(declare-datatypes ((TokenValueInjection!3334 0))(
  ( (TokenValueInjection!3335 (toValue!2820 Int) (toChars!2679 Int)) )
))
(declare-datatypes ((Rule!3302 0))(
  ( (Rule!3303 (regex!1751 Regex!2184) (tag!2013 String!10985) (isSeparator!1751 Bool) (transformation!1751 TokenValueInjection!3334)) )
))
(declare-datatypes ((Token!3168 0))(
  ( (Token!3169 (value!56604 TokenValue!1817) (rule!3174 Rule!3302) (size!7786 Int) (originalCharacters!2307 List!9347)) )
))
(declare-datatypes ((List!9348 0))(
  ( (Nil!9332) (Cons!9332 (h!14733 Token!3168) (t!98660 List!9348)) )
))
(declare-fun lt!326496 () List!9348)

(assert (=> b!865002 (= res!393950 (or (not (is-Cons!9332 lt!326496)) (not (is-Cons!9332 (t!98660 lt!326496)))))))

(declare-datatypes ((LexerInterface!1553 0))(
  ( (LexerInterfaceExt!1550 (__x!7366 Int)) (Lexer!1551) )
))
(declare-fun thiss!20117 () LexerInterface!1553)

(declare-datatypes ((List!9349 0))(
  ( (Nil!9333) (Cons!9333 (h!14734 Rule!3302) (t!98661 List!9349)) )
))
(declare-fun rules!2621 () List!9349)

(declare-fun rulesProduceEachTokenIndividuallyList!441 (LexerInterface!1553 List!9349 List!9348) Bool)

(assert (=> b!865002 (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 lt!326496)))

(declare-fun separatorToken!297 () Token!3168)

(declare-fun l!5107 () List!9348)

(declare-fun withSeparatorTokenList!81 (LexerInterface!1553 List!9348 Token!3168) List!9348)

(assert (=> b!865002 (= lt!326496 (withSeparatorTokenList!81 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13862 0))(
  ( (Unit!13863) )
))
(declare-fun lt!326498 () Unit!13862)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!81 (LexerInterface!1553 List!9349 List!9348 Token!3168) Unit!13862)

(assert (=> b!865002 (= lt!326498 (withSeparatorTokenListPreservesRulesProduceTokens!81 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun e!569071 () Bool)

(declare-fun e!569066 () Bool)

(declare-fun b!865003 () Bool)

(declare-fun tp!273449 () Bool)

(declare-fun inv!21 (TokenValue!1817) Bool)

(assert (=> b!865003 (= e!569066 (and (inv!21 (value!56604 (h!14733 l!5107))) e!569071 tp!273449))))

(declare-fun b!865004 () Bool)

(declare-fun lt!326499 () List!9348)

(declare-fun e!569061 () Bool)

(assert (=> b!865004 (= e!569061 (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 lt!326499))))

(declare-fun separableTokensPredicate!71 (LexerInterface!1553 Token!3168 Token!3168 List!9349) Bool)

(assert (=> b!865004 (separableTokensPredicate!71 thiss!20117 (h!14733 lt!326496) (h!14733 (t!98660 lt!326496)) rules!2621)))

(declare-fun lt!326497 () Unit!13862)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!49 (LexerInterface!1553 Token!3168 Token!3168 List!9349) Unit!13862)

(assert (=> b!865004 (= lt!326497 (lemmaTokensOfDifferentKindsAreSeparable!49 thiss!20117 (h!14733 lt!326496) (h!14733 (t!98660 lt!326496)) rules!2621))))

(declare-fun e!569065 () Bool)

(assert (=> b!865005 (= e!569065 (and tp!273448 tp!273451))))

(declare-fun b!865006 () Bool)

(assert (=> b!865006 (= e!569056 e!569061)))

(declare-fun res!393956 () Bool)

(assert (=> b!865006 (=> res!393956 e!569061)))

(assert (=> b!865006 (= res!393956 (not (= (t!98660 (t!98660 lt!326496)) (withSeparatorTokenList!81 thiss!20117 lt!326499 separatorToken!297))))))

(declare-fun tail!1059 (List!9348) List!9348)

(assert (=> b!865006 (= lt!326499 (tail!1059 l!5107))))

(declare-fun b!865007 () Bool)

(declare-fun res!393953 () Bool)

(assert (=> b!865007 (=> (not res!393953) (not e!569062))))

(declare-fun isEmpty!5544 (List!9349) Bool)

(assert (=> b!865007 (= res!393953 (not (isEmpty!5544 rules!2621)))))

(declare-fun b!865008 () Bool)

(declare-fun res!393949 () Bool)

(assert (=> b!865008 (=> (not res!393949) (not e!569062))))

(assert (=> b!865008 (= res!393949 (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 l!5107))))

(declare-fun b!865009 () Bool)

(declare-fun e!569067 () Bool)

(declare-fun tp!273450 () Bool)

(declare-fun e!569057 () Bool)

(declare-fun inv!11863 (String!10985) Bool)

(declare-fun inv!11866 (TokenValueInjection!3334) Bool)

(assert (=> b!865009 (= e!569067 (and tp!273450 (inv!11863 (tag!2013 (rule!3174 separatorToken!297))) (inv!11866 (transformation!1751 (rule!3174 separatorToken!297))) e!569057))))

(declare-fun b!865010 () Bool)

(declare-fun res!393954 () Bool)

(assert (=> b!865010 (=> res!393954 e!569061)))

(declare-fun head!1497 (List!9348) Token!3168)

(assert (=> b!865010 (= res!393954 (not (= (head!1497 l!5107) (h!14733 lt!326496))))))

(declare-fun b!865011 () Bool)

(declare-fun e!569055 () Bool)

(declare-fun tp!273441 () Bool)

(assert (=> b!865011 (= e!569071 (and tp!273441 (inv!11863 (tag!2013 (rule!3174 (h!14733 l!5107)))) (inv!11866 (transformation!1751 (rule!3174 (h!14733 l!5107)))) e!569055))))

(assert (=> b!865012 (= e!569057 (and tp!273446 tp!273445))))

(declare-fun res!393947 () Bool)

(assert (=> start!78012 (=> (not res!393947) (not e!569062))))

(assert (=> start!78012 (= res!393947 (is-Lexer!1551 thiss!20117))))

(assert (=> start!78012 e!569062))

(assert (=> start!78012 true))

(declare-fun e!569063 () Bool)

(assert (=> start!78012 e!569063))

(declare-fun e!569068 () Bool)

(assert (=> start!78012 e!569068))

(declare-fun e!569058 () Bool)

(declare-fun inv!11867 (Token!3168) Bool)

(assert (=> start!78012 (and (inv!11867 separatorToken!297) e!569058)))

(declare-fun b!865013 () Bool)

(declare-fun tp!273443 () Bool)

(declare-fun e!569070 () Bool)

(assert (=> b!865013 (= e!569070 (and tp!273443 (inv!11863 (tag!2013 (h!14734 rules!2621))) (inv!11866 (transformation!1751 (h!14734 rules!2621))) e!569065))))

(assert (=> b!865014 (= e!569055 (and tp!273447 tp!273442))))

(declare-fun tp!273452 () Bool)

(declare-fun b!865015 () Bool)

(assert (=> b!865015 (= e!569058 (and (inv!21 (value!56604 separatorToken!297)) e!569067 tp!273452))))

(declare-fun b!865016 () Bool)

(declare-fun res!393955 () Bool)

(assert (=> b!865016 (=> (not res!393955) (not e!569062))))

(declare-fun lambda!25949 () Int)

(declare-fun forall!2218 (List!9348 Int) Bool)

(assert (=> b!865016 (= res!393955 (forall!2218 l!5107 lambda!25949))))

(declare-fun b!865017 () Bool)

(declare-fun res!393948 () Bool)

(assert (=> b!865017 (=> (not res!393948) (not e!569062))))

(declare-fun sepAndNonSepRulesDisjointChars!551 (List!9349 List!9349) Bool)

(assert (=> b!865017 (= res!393948 (sepAndNonSepRulesDisjointChars!551 rules!2621 rules!2621))))

(declare-fun b!865018 () Bool)

(declare-fun res!393946 () Bool)

(assert (=> b!865018 (=> (not res!393946) (not e!569062))))

(assert (=> b!865018 (= res!393946 (isSeparator!1751 (rule!3174 separatorToken!297)))))

(declare-fun b!865019 () Bool)

(declare-fun tp!273453 () Bool)

(assert (=> b!865019 (= e!569063 (and e!569070 tp!273453))))

(declare-fun b!865020 () Bool)

(declare-fun res!393951 () Bool)

(assert (=> b!865020 (=> (not res!393951) (not e!569062))))

(declare-fun rulesInvariant!1429 (LexerInterface!1553 List!9349) Bool)

(assert (=> b!865020 (= res!393951 (rulesInvariant!1429 thiss!20117 rules!2621))))

(declare-fun b!865021 () Bool)

(declare-fun tp!273444 () Bool)

(assert (=> b!865021 (= e!569068 (and (inv!11867 (h!14733 l!5107)) e!569066 tp!273444))))

(declare-fun b!865022 () Bool)

(declare-fun res!393952 () Bool)

(assert (=> b!865022 (=> res!393952 e!569061)))

(assert (=> b!865022 (= res!393952 (not (= (h!14733 (t!98660 lt!326496)) separatorToken!297)))))

(declare-fun b!865023 () Bool)

(declare-fun res!393957 () Bool)

(assert (=> b!865023 (=> (not res!393957) (not e!569062))))

(declare-fun rulesProduceIndividualToken!617 (LexerInterface!1553 List!9349 Token!3168) Bool)

(assert (=> b!865023 (= res!393957 (rulesProduceIndividualToken!617 thiss!20117 rules!2621 separatorToken!297))))

(assert (= (and start!78012 res!393947) b!865007))

(assert (= (and b!865007 res!393953) b!865020))

(assert (= (and b!865020 res!393951) b!865008))

(assert (= (and b!865008 res!393949) b!865023))

(assert (= (and b!865023 res!393957) b!865018))

(assert (= (and b!865018 res!393946) b!865016))

(assert (= (and b!865016 res!393955) b!865017))

(assert (= (and b!865017 res!393948) b!865002))

(assert (= (and b!865002 (not res!393950)) b!865006))

(assert (= (and b!865006 (not res!393956)) b!865010))

(assert (= (and b!865010 (not res!393954)) b!865022))

(assert (= (and b!865022 (not res!393952)) b!865004))

(assert (= b!865013 b!865005))

(assert (= b!865019 b!865013))

(assert (= (and start!78012 (is-Cons!9333 rules!2621)) b!865019))

(assert (= b!865011 b!865014))

(assert (= b!865003 b!865011))

(assert (= b!865021 b!865003))

(assert (= (and start!78012 (is-Cons!9332 l!5107)) b!865021))

(assert (= b!865009 b!865012))

(assert (= b!865015 b!865009))

(assert (= start!78012 b!865015))

(declare-fun m!1111817 () Bool)

(assert (=> b!865002 m!1111817))

(declare-fun m!1111819 () Bool)

(assert (=> b!865002 m!1111819))

(declare-fun m!1111821 () Bool)

(assert (=> b!865002 m!1111821))

(declare-fun m!1111823 () Bool)

(assert (=> b!865023 m!1111823))

(declare-fun m!1111825 () Bool)

(assert (=> b!865016 m!1111825))

(declare-fun m!1111827 () Bool)

(assert (=> b!865017 m!1111827))

(declare-fun m!1111829 () Bool)

(assert (=> start!78012 m!1111829))

(declare-fun m!1111831 () Bool)

(assert (=> b!865004 m!1111831))

(declare-fun m!1111833 () Bool)

(assert (=> b!865004 m!1111833))

(declare-fun m!1111835 () Bool)

(assert (=> b!865004 m!1111835))

(declare-fun m!1111837 () Bool)

(assert (=> b!865015 m!1111837))

(declare-fun m!1111839 () Bool)

(assert (=> b!865020 m!1111839))

(declare-fun m!1111841 () Bool)

(assert (=> b!865011 m!1111841))

(declare-fun m!1111843 () Bool)

(assert (=> b!865011 m!1111843))

(declare-fun m!1111845 () Bool)

(assert (=> b!865008 m!1111845))

(declare-fun m!1111847 () Bool)

(assert (=> b!865009 m!1111847))

(declare-fun m!1111849 () Bool)

(assert (=> b!865009 m!1111849))

(declare-fun m!1111851 () Bool)

(assert (=> b!865007 m!1111851))

(declare-fun m!1111853 () Bool)

(assert (=> b!865003 m!1111853))

(declare-fun m!1111855 () Bool)

(assert (=> b!865013 m!1111855))

(declare-fun m!1111857 () Bool)

(assert (=> b!865013 m!1111857))

(declare-fun m!1111859 () Bool)

(assert (=> b!865021 m!1111859))

(declare-fun m!1111861 () Bool)

(assert (=> b!865010 m!1111861))

(declare-fun m!1111863 () Bool)

(assert (=> b!865006 m!1111863))

(declare-fun m!1111865 () Bool)

(assert (=> b!865006 m!1111865))

(push 1)

(assert (not b!865003))

(assert (not b_next!26453))

(assert (not b!865023))

(assert (not b!865004))

(assert b_and!77497)

(assert (not b_next!26461))

(assert (not b_next!26455))

(assert (not b_next!26459))

(assert b_and!77503)

(assert (not b!865016))

(assert (not start!78012))

(assert (not b!865020))

(assert (not b_next!26463))

(assert (not b!865019))

(assert b_and!77499)

(assert (not b!865013))

(assert (not b!865008))

(assert b_and!77507)

(assert (not b!865017))

(assert b_and!77505)

(assert (not b!865021))

(assert b_and!77501)

(assert (not b!865007))

(assert (not b!865009))

(assert (not b!865015))

(assert (not b!865010))

(assert (not b_next!26457))

(assert (not b!865011))

(assert (not b!865006))

(assert (not b!865002))

(check-sat)

(pop 1)

(push 1)

(assert b_and!77507)

(assert (not b_next!26453))

(assert b_and!77505)

(assert b_and!77501)

(assert b_and!77497)

(assert (not b_next!26461))

(assert (not b_next!26457))

(assert (not b_next!26455))

(assert (not b_next!26459))

(assert b_and!77503)

(assert (not b_next!26463))

(assert b_and!77499)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!271788 () Bool)

(assert (=> d!271788 (= (head!1497 l!5107) (h!14733 l!5107))))

(assert (=> b!865010 d!271788))

(declare-fun d!271790 () Bool)

(declare-fun res!394005 () Bool)

(declare-fun e!569128 () Bool)

(assert (=> d!271790 (=> (not res!394005) (not e!569128))))

(declare-fun isEmpty!5546 (List!9347) Bool)

(assert (=> d!271790 (= res!394005 (not (isEmpty!5546 (originalCharacters!2307 (h!14733 l!5107)))))))

(assert (=> d!271790 (= (inv!11867 (h!14733 l!5107)) e!569128)))

(declare-fun b!865094 () Bool)

(declare-fun res!394006 () Bool)

(assert (=> b!865094 (=> (not res!394006) (not e!569128))))

(declare-fun list!3687 (BalanceConc!6202) List!9347)

(declare-fun dynLambda!4425 (Int TokenValue!1817) BalanceConc!6202)

(assert (=> b!865094 (= res!394006 (= (originalCharacters!2307 (h!14733 l!5107)) (list!3687 (dynLambda!4425 (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (value!56604 (h!14733 l!5107))))))))

(declare-fun b!865095 () Bool)

(declare-fun size!7788 (List!9347) Int)

(assert (=> b!865095 (= e!569128 (= (size!7786 (h!14733 l!5107)) (size!7788 (originalCharacters!2307 (h!14733 l!5107)))))))

(assert (= (and d!271790 res!394005) b!865094))

(assert (= (and b!865094 res!394006) b!865095))

(declare-fun b_lambda!29407 () Bool)

(assert (=> (not b_lambda!29407) (not b!865094)))

(declare-fun t!98667 () Bool)

(declare-fun tb!62533 () Bool)

(assert (=> (and b!865012 (= (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107))))) t!98667) tb!62533))

(declare-fun b!865100 () Bool)

(declare-fun e!569131 () Bool)

(declare-fun tp!273495 () Bool)

(declare-fun inv!11870 (Conc!3094) Bool)

(assert (=> b!865100 (= e!569131 (and (inv!11870 (c!140038 (dynLambda!4425 (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (value!56604 (h!14733 l!5107))))) tp!273495))))

(declare-fun result!72266 () Bool)

(declare-fun inv!11871 (BalanceConc!6202) Bool)

(assert (=> tb!62533 (= result!72266 (and (inv!11871 (dynLambda!4425 (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (value!56604 (h!14733 l!5107)))) e!569131))))

(assert (= tb!62533 b!865100))

(declare-fun m!1111917 () Bool)

(assert (=> b!865100 m!1111917))

(declare-fun m!1111919 () Bool)

(assert (=> tb!62533 m!1111919))

(assert (=> b!865094 t!98667))

(declare-fun b_and!77521 () Bool)

(assert (= b_and!77499 (and (=> t!98667 result!72266) b_and!77521)))

(declare-fun t!98669 () Bool)

(declare-fun tb!62535 () Bool)

(assert (=> (and b!865014 (= (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107))))) t!98669) tb!62535))

(declare-fun result!72270 () Bool)

(assert (= result!72270 result!72266))

(assert (=> b!865094 t!98669))

(declare-fun b_and!77523 () Bool)

(assert (= b_and!77503 (and (=> t!98669 result!72270) b_and!77523)))

(declare-fun tb!62537 () Bool)

(declare-fun t!98671 () Bool)

(assert (=> (and b!865005 (= (toChars!2679 (transformation!1751 (h!14734 rules!2621))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107))))) t!98671) tb!62537))

(declare-fun result!72272 () Bool)

(assert (= result!72272 result!72266))

(assert (=> b!865094 t!98671))

(declare-fun b_and!77525 () Bool)

(assert (= b_and!77507 (and (=> t!98671 result!72272) b_and!77525)))

(declare-fun m!1111921 () Bool)

(assert (=> d!271790 m!1111921))

(declare-fun m!1111923 () Bool)

(assert (=> b!865094 m!1111923))

(assert (=> b!865094 m!1111923))

(declare-fun m!1111925 () Bool)

(assert (=> b!865094 m!1111925))

(declare-fun m!1111927 () Bool)

(assert (=> b!865095 m!1111927))

(assert (=> b!865021 d!271790))

(declare-fun d!271792 () Bool)

(declare-fun res!394007 () Bool)

(declare-fun e!569132 () Bool)

(assert (=> d!271792 (=> (not res!394007) (not e!569132))))

(assert (=> d!271792 (= res!394007 (not (isEmpty!5546 (originalCharacters!2307 separatorToken!297))))))

(assert (=> d!271792 (= (inv!11867 separatorToken!297) e!569132)))

(declare-fun b!865101 () Bool)

(declare-fun res!394008 () Bool)

(assert (=> b!865101 (=> (not res!394008) (not e!569132))))

(assert (=> b!865101 (= res!394008 (= (originalCharacters!2307 separatorToken!297) (list!3687 (dynLambda!4425 (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (value!56604 separatorToken!297)))))))

(declare-fun b!865102 () Bool)

(assert (=> b!865102 (= e!569132 (= (size!7786 separatorToken!297) (size!7788 (originalCharacters!2307 separatorToken!297))))))

(assert (= (and d!271792 res!394007) b!865101))

(assert (= (and b!865101 res!394008) b!865102))

(declare-fun b_lambda!29409 () Bool)

(assert (=> (not b_lambda!29409) (not b!865101)))

(declare-fun t!98673 () Bool)

(declare-fun tb!62539 () Bool)

(assert (=> (and b!865012 (= (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297)))) t!98673) tb!62539))

(declare-fun b!865103 () Bool)

(declare-fun e!569133 () Bool)

(declare-fun tp!273496 () Bool)

(assert (=> b!865103 (= e!569133 (and (inv!11870 (c!140038 (dynLambda!4425 (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (value!56604 separatorToken!297)))) tp!273496))))

(declare-fun result!72274 () Bool)

(assert (=> tb!62539 (= result!72274 (and (inv!11871 (dynLambda!4425 (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (value!56604 separatorToken!297))) e!569133))))

(assert (= tb!62539 b!865103))

(declare-fun m!1111929 () Bool)

(assert (=> b!865103 m!1111929))

(declare-fun m!1111931 () Bool)

(assert (=> tb!62539 m!1111931))

(assert (=> b!865101 t!98673))

(declare-fun b_and!77527 () Bool)

(assert (= b_and!77521 (and (=> t!98673 result!72274) b_and!77527)))

(declare-fun t!98675 () Bool)

(declare-fun tb!62541 () Bool)

(assert (=> (and b!865014 (= (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297)))) t!98675) tb!62541))

(declare-fun result!72276 () Bool)

(assert (= result!72276 result!72274))

(assert (=> b!865101 t!98675))

(declare-fun b_and!77529 () Bool)

(assert (= b_and!77523 (and (=> t!98675 result!72276) b_and!77529)))

(declare-fun t!98677 () Bool)

(declare-fun tb!62543 () Bool)

(assert (=> (and b!865005 (= (toChars!2679 (transformation!1751 (h!14734 rules!2621))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297)))) t!98677) tb!62543))

(declare-fun result!72278 () Bool)

(assert (= result!72278 result!72274))

(assert (=> b!865101 t!98677))

(declare-fun b_and!77531 () Bool)

(assert (= b_and!77525 (and (=> t!98677 result!72278) b_and!77531)))

(declare-fun m!1111933 () Bool)

(assert (=> d!271792 m!1111933))

(declare-fun m!1111935 () Bool)

(assert (=> b!865101 m!1111935))

(assert (=> b!865101 m!1111935))

(declare-fun m!1111937 () Bool)

(assert (=> b!865101 m!1111937))

(declare-fun m!1111939 () Bool)

(assert (=> b!865102 m!1111939))

(assert (=> start!78012 d!271792))

(declare-fun d!271794 () Bool)

(assert (=> d!271794 (= (inv!11863 (tag!2013 (rule!3174 separatorToken!297))) (= (mod (str.len (value!56603 (tag!2013 (rule!3174 separatorToken!297)))) 2) 0))))

(assert (=> b!865009 d!271794))

(declare-fun d!271796 () Bool)

(declare-fun res!394011 () Bool)

(declare-fun e!569136 () Bool)

(assert (=> d!271796 (=> (not res!394011) (not e!569136))))

(declare-fun semiInverseModEq!693 (Int Int) Bool)

(assert (=> d!271796 (= res!394011 (semiInverseModEq!693 (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (toValue!2820 (transformation!1751 (rule!3174 separatorToken!297)))))))

(assert (=> d!271796 (= (inv!11866 (transformation!1751 (rule!3174 separatorToken!297))) e!569136)))

(declare-fun b!865106 () Bool)

(declare-fun equivClasses!660 (Int Int) Bool)

(assert (=> b!865106 (= e!569136 (equivClasses!660 (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (toValue!2820 (transformation!1751 (rule!3174 separatorToken!297)))))))

(assert (= (and d!271796 res!394011) b!865106))

(declare-fun m!1111941 () Bool)

(assert (=> d!271796 m!1111941))

(declare-fun m!1111943 () Bool)

(assert (=> b!865106 m!1111943))

(assert (=> b!865009 d!271796))

(declare-fun d!271798 () Bool)

(declare-fun res!394014 () Bool)

(declare-fun e!569139 () Bool)

(assert (=> d!271798 (=> (not res!394014) (not e!569139))))

(declare-fun rulesValid!624 (LexerInterface!1553 List!9349) Bool)

(assert (=> d!271798 (= res!394014 (rulesValid!624 thiss!20117 rules!2621))))

(assert (=> d!271798 (= (rulesInvariant!1429 thiss!20117 rules!2621) e!569139)))

(declare-fun b!865109 () Bool)

(declare-datatypes ((List!9354 0))(
  ( (Nil!9338) (Cons!9338 (h!14739 String!10985) (t!98704 List!9354)) )
))
(declare-fun noDuplicateTag!624 (LexerInterface!1553 List!9349 List!9354) Bool)

(assert (=> b!865109 (= e!569139 (noDuplicateTag!624 thiss!20117 rules!2621 Nil!9338))))

(assert (= (and d!271798 res!394014) b!865109))

(declare-fun m!1111945 () Bool)

(assert (=> d!271798 m!1111945))

(declare-fun m!1111947 () Bool)

(assert (=> b!865109 m!1111947))

(assert (=> b!865020 d!271798))

(declare-fun d!271800 () Bool)

(declare-fun lt!326517 () Bool)

(declare-fun e!569145 () Bool)

(assert (=> d!271800 (= lt!326517 e!569145)))

(declare-fun res!394021 () Bool)

(assert (=> d!271800 (=> (not res!394021) (not e!569145))))

(declare-datatypes ((IArray!6197 0))(
  ( (IArray!6198 (innerList!3156 List!9348)) )
))
(declare-datatypes ((Conc!3096 0))(
  ( (Node!3096 (left!6913 Conc!3096) (right!7243 Conc!3096) (csize!6422 Int) (cheight!3307 Int)) (Leaf!4560 (xs!5785 IArray!6197) (csize!6423 Int)) (Empty!3096) )
))
(declare-datatypes ((BalanceConc!6206 0))(
  ( (BalanceConc!6207 (c!140079 Conc!3096)) )
))
(declare-fun list!3688 (BalanceConc!6206) List!9348)

(declare-datatypes ((tuple2!10466 0))(
  ( (tuple2!10467 (_1!6059 BalanceConc!6206) (_2!6059 BalanceConc!6202)) )
))
(declare-fun lex!641 (LexerInterface!1553 List!9349 BalanceConc!6202) tuple2!10466)

(declare-fun print!578 (LexerInterface!1553 BalanceConc!6206) BalanceConc!6202)

(declare-fun singletonSeq!568 (Token!3168) BalanceConc!6206)

(assert (=> d!271800 (= res!394021 (= (list!3688 (_1!6059 (lex!641 thiss!20117 rules!2621 (print!578 thiss!20117 (singletonSeq!568 separatorToken!297))))) (list!3688 (singletonSeq!568 separatorToken!297))))))

(declare-fun e!569144 () Bool)

(assert (=> d!271800 (= lt!326517 e!569144)))

(declare-fun res!394022 () Bool)

(assert (=> d!271800 (=> (not res!394022) (not e!569144))))

(declare-fun lt!326516 () tuple2!10466)

(declare-fun size!7789 (BalanceConc!6206) Int)

(assert (=> d!271800 (= res!394022 (= (size!7789 (_1!6059 lt!326516)) 1))))

(assert (=> d!271800 (= lt!326516 (lex!641 thiss!20117 rules!2621 (print!578 thiss!20117 (singletonSeq!568 separatorToken!297))))))

(assert (=> d!271800 (not (isEmpty!5544 rules!2621))))

(assert (=> d!271800 (= (rulesProduceIndividualToken!617 thiss!20117 rules!2621 separatorToken!297) lt!326517)))

(declare-fun b!865116 () Bool)

(declare-fun res!394023 () Bool)

(assert (=> b!865116 (=> (not res!394023) (not e!569144))))

(declare-fun apply!1960 (BalanceConc!6206 Int) Token!3168)

(assert (=> b!865116 (= res!394023 (= (apply!1960 (_1!6059 lt!326516) 0) separatorToken!297))))

(declare-fun b!865117 () Bool)

(declare-fun isEmpty!5547 (BalanceConc!6202) Bool)

(assert (=> b!865117 (= e!569144 (isEmpty!5547 (_2!6059 lt!326516)))))

(declare-fun b!865118 () Bool)

(assert (=> b!865118 (= e!569145 (isEmpty!5547 (_2!6059 (lex!641 thiss!20117 rules!2621 (print!578 thiss!20117 (singletonSeq!568 separatorToken!297))))))))

(assert (= (and d!271800 res!394022) b!865116))

(assert (= (and b!865116 res!394023) b!865117))

(assert (= (and d!271800 res!394021) b!865118))

(declare-fun m!1111949 () Bool)

(assert (=> d!271800 m!1111949))

(declare-fun m!1111951 () Bool)

(assert (=> d!271800 m!1111951))

(declare-fun m!1111953 () Bool)

(assert (=> d!271800 m!1111953))

(declare-fun m!1111955 () Bool)

(assert (=> d!271800 m!1111955))

(assert (=> d!271800 m!1111955))

(declare-fun m!1111957 () Bool)

(assert (=> d!271800 m!1111957))

(assert (=> d!271800 m!1111851))

(assert (=> d!271800 m!1111955))

(assert (=> d!271800 m!1111949))

(declare-fun m!1111959 () Bool)

(assert (=> d!271800 m!1111959))

(declare-fun m!1111961 () Bool)

(assert (=> b!865116 m!1111961))

(declare-fun m!1111963 () Bool)

(assert (=> b!865117 m!1111963))

(assert (=> b!865118 m!1111955))

(assert (=> b!865118 m!1111955))

(assert (=> b!865118 m!1111949))

(assert (=> b!865118 m!1111949))

(assert (=> b!865118 m!1111951))

(declare-fun m!1111965 () Bool)

(assert (=> b!865118 m!1111965))

(assert (=> b!865023 d!271800))

(declare-fun bs!232830 () Bool)

(declare-fun d!271804 () Bool)

(assert (= bs!232830 (and d!271804 b!865016)))

(declare-fun lambda!25955 () Int)

(assert (=> bs!232830 (not (= lambda!25955 lambda!25949))))

(declare-fun b!865154 () Bool)

(declare-fun e!569176 () Bool)

(assert (=> b!865154 (= e!569176 true)))

(declare-fun b!865153 () Bool)

(declare-fun e!569175 () Bool)

(assert (=> b!865153 (= e!569175 e!569176)))

(declare-fun b!865152 () Bool)

(declare-fun e!569174 () Bool)

(assert (=> b!865152 (= e!569174 e!569175)))

(assert (=> d!271804 e!569174))

(assert (= b!865153 b!865154))

(assert (= b!865152 b!865153))

(assert (= (and d!271804 (is-Cons!9333 rules!2621)) b!865152))

(declare-fun order!6089 () Int)

(declare-fun order!6091 () Int)

(declare-fun dynLambda!4426 (Int Int) Int)

(declare-fun dynLambda!4427 (Int Int) Int)

(assert (=> b!865154 (< (dynLambda!4426 order!6089 (toValue!2820 (transformation!1751 (h!14734 rules!2621)))) (dynLambda!4427 order!6091 lambda!25955))))

(declare-fun order!6093 () Int)

(declare-fun dynLambda!4428 (Int Int) Int)

(assert (=> b!865154 (< (dynLambda!4428 order!6093 (toChars!2679 (transformation!1751 (h!14734 rules!2621)))) (dynLambda!4427 order!6091 lambda!25955))))

(assert (=> d!271804 true))

(declare-fun lt!326528 () Bool)

(assert (=> d!271804 (= lt!326528 (forall!2218 lt!326496 lambda!25955))))

(declare-fun e!569167 () Bool)

(assert (=> d!271804 (= lt!326528 e!569167)))

(declare-fun res!394048 () Bool)

(assert (=> d!271804 (=> res!394048 e!569167)))

(assert (=> d!271804 (= res!394048 (not (is-Cons!9332 lt!326496)))))

(assert (=> d!271804 (not (isEmpty!5544 rules!2621))))

(assert (=> d!271804 (= (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 lt!326496) lt!326528)))

(declare-fun b!865142 () Bool)

(declare-fun e!569166 () Bool)

(assert (=> b!865142 (= e!569167 e!569166)))

(declare-fun res!394047 () Bool)

(assert (=> b!865142 (=> (not res!394047) (not e!569166))))

(assert (=> b!865142 (= res!394047 (rulesProduceIndividualToken!617 thiss!20117 rules!2621 (h!14733 lt!326496)))))

(declare-fun b!865143 () Bool)

(assert (=> b!865143 (= e!569166 (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 (t!98660 lt!326496)))))

(assert (= (and d!271804 (not res!394048)) b!865142))

(assert (= (and b!865142 res!394047) b!865143))

(declare-fun m!1111993 () Bool)

(assert (=> d!271804 m!1111993))

(assert (=> d!271804 m!1111851))

(declare-fun m!1111995 () Bool)

(assert (=> b!865142 m!1111995))

(declare-fun m!1111997 () Bool)

(assert (=> b!865143 m!1111997))

(assert (=> b!865002 d!271804))

(declare-fun b!865177 () Bool)

(declare-fun e!569192 () Bool)

(declare-fun e!569189 () Bool)

(assert (=> b!865177 (= e!569192 e!569189)))

(declare-fun res!394059 () Bool)

(assert (=> b!865177 (=> res!394059 e!569189)))

(assert (=> b!865177 (= res!394059 (not (is-Cons!9332 l!5107)))))

(declare-fun b!865178 () Bool)

(declare-fun e!569191 () List!9347)

(assert (=> b!865178 (= e!569191 Nil!9331)))

(declare-fun lt!326545 () List!9348)

(declare-fun d!271814 () Bool)

(declare-fun printList!495 (LexerInterface!1553 List!9348) List!9347)

(declare-fun printWithSeparatorTokenList!53 (LexerInterface!1553 List!9348 Token!3168) List!9347)

(assert (=> d!271814 (= (printList!495 thiss!20117 lt!326545) (printWithSeparatorTokenList!53 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!569194 () List!9348)

(assert (=> d!271814 (= lt!326545 e!569194)))

(declare-fun c!140048 () Bool)

(assert (=> d!271814 (= c!140048 (is-Cons!9332 l!5107))))

(assert (=> d!271814 e!569192))

(declare-fun res!394060 () Bool)

(assert (=> d!271814 (=> (not res!394060) (not e!569192))))

(assert (=> d!271814 (= res!394060 (isSeparator!1751 (rule!3174 separatorToken!297)))))

(assert (=> d!271814 (= (withSeparatorTokenList!81 thiss!20117 l!5107 separatorToken!297) lt!326545)))

(declare-fun e!569193 () Bool)

(declare-fun b!865179 () Bool)

(declare-fun $colon$colon!108 (List!9348 Token!3168) List!9348)

(assert (=> b!865179 (= e!569193 (= (printList!495 thiss!20117 ($colon$colon!108 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 l!5107) separatorToken!297) separatorToken!297) (h!14733 l!5107))) e!569191))))

(declare-fun c!140047 () Bool)

(declare-fun lt!326550 () List!9348)

(assert (=> b!865179 (= c!140047 (is-Cons!9332 lt!326550))))

(assert (=> b!865179 (= lt!326550 ($colon$colon!108 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 l!5107) separatorToken!297) separatorToken!297) (h!14733 l!5107)))))

(declare-fun b!865180 () Bool)

(declare-fun ++!2415 (List!9347 List!9347) List!9347)

(declare-fun charsOf!1012 (Token!3168) BalanceConc!6202)

(assert (=> b!865180 (= e!569191 (++!2415 (list!3687 (charsOf!1012 (h!14733 lt!326550))) (printList!495 thiss!20117 (t!98660 lt!326550))))))

(declare-fun b!865181 () Bool)

(declare-fun e!569190 () List!9347)

(declare-fun lt!326547 () List!9348)

(assert (=> b!865181 (= e!569190 (++!2415 (list!3687 (charsOf!1012 (h!14733 lt!326547))) (printList!495 thiss!20117 (t!98660 lt!326547))))))

(declare-fun b!865182 () Bool)

(assert (=> b!865182 (= e!569194 Nil!9332)))

(declare-fun b!865183 () Bool)

(assert (=> b!865183 (= e!569189 (= (printList!495 thiss!20117 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 l!5107) separatorToken!297) separatorToken!297)) e!569190))))

(declare-fun c!140049 () Bool)

(assert (=> b!865183 (= c!140049 (is-Cons!9332 lt!326547))))

(assert (=> b!865183 (= lt!326547 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!865184 () Bool)

(declare-fun res!394058 () Bool)

(assert (=> b!865184 (=> (not res!394058) (not e!569192))))

(assert (=> b!865184 (= res!394058 e!569193)))

(declare-fun res!394057 () Bool)

(assert (=> b!865184 (=> res!394057 e!569193)))

(assert (=> b!865184 (= res!394057 (not (is-Cons!9332 l!5107)))))

(declare-fun b!865185 () Bool)

(assert (=> b!865185 (= e!569190 Nil!9331)))

(declare-fun b!865186 () Bool)

(assert (=> b!865186 (= e!569194 ($colon$colon!108 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 l!5107) separatorToken!297) separatorToken!297) (h!14733 l!5107)))))

(declare-fun lt!326551 () List!9347)

(assert (=> b!865186 (= lt!326551 (list!3687 (charsOf!1012 (h!14733 l!5107))))))

(declare-fun lt!326546 () List!9347)

(assert (=> b!865186 (= lt!326546 (list!3687 (charsOf!1012 separatorToken!297)))))

(declare-fun lt!326549 () List!9347)

(assert (=> b!865186 (= lt!326549 (printList!495 thiss!20117 (withSeparatorTokenList!81 thiss!20117 (t!98660 l!5107) separatorToken!297)))))

(declare-fun lt!326552 () Unit!13862)

(declare-fun lemmaConcatAssociativity!772 (List!9347 List!9347 List!9347) Unit!13862)

(assert (=> b!865186 (= lt!326552 (lemmaConcatAssociativity!772 lt!326551 lt!326546 lt!326549))))

(assert (=> b!865186 (= (++!2415 (++!2415 lt!326551 lt!326546) lt!326549) (++!2415 lt!326551 (++!2415 lt!326546 lt!326549)))))

(declare-fun lt!326548 () Unit!13862)

(assert (=> b!865186 (= lt!326548 lt!326552)))

(assert (= (and d!271814 res!394060) b!865184))

(assert (= (and b!865184 (not res!394057)) b!865179))

(assert (= (and b!865179 c!140047) b!865180))

(assert (= (and b!865179 (not c!140047)) b!865178))

(assert (= (and b!865184 res!394058) b!865177))

(assert (= (and b!865177 (not res!394059)) b!865183))

(assert (= (and b!865183 c!140049) b!865181))

(assert (= (and b!865183 (not c!140049)) b!865185))

(assert (= (and d!271814 c!140048) b!865186))

(assert (= (and d!271814 (not c!140048)) b!865182))

(declare-fun m!1111999 () Bool)

(assert (=> b!865181 m!1111999))

(assert (=> b!865181 m!1111999))

(declare-fun m!1112001 () Bool)

(assert (=> b!865181 m!1112001))

(declare-fun m!1112003 () Bool)

(assert (=> b!865181 m!1112003))

(assert (=> b!865181 m!1112001))

(assert (=> b!865181 m!1112003))

(declare-fun m!1112005 () Bool)

(assert (=> b!865181 m!1112005))

(declare-fun m!1112007 () Bool)

(assert (=> b!865186 m!1112007))

(declare-fun m!1112009 () Bool)

(assert (=> b!865186 m!1112009))

(declare-fun m!1112011 () Bool)

(assert (=> b!865186 m!1112011))

(declare-fun m!1112013 () Bool)

(assert (=> b!865186 m!1112013))

(assert (=> b!865186 m!1112007))

(assert (=> b!865186 m!1112013))

(declare-fun m!1112015 () Bool)

(assert (=> b!865186 m!1112015))

(declare-fun m!1112017 () Bool)

(assert (=> b!865186 m!1112017))

(declare-fun m!1112019 () Bool)

(assert (=> b!865186 m!1112019))

(declare-fun m!1112021 () Bool)

(assert (=> b!865186 m!1112021))

(assert (=> b!865186 m!1112021))

(declare-fun m!1112023 () Bool)

(assert (=> b!865186 m!1112023))

(declare-fun m!1112025 () Bool)

(assert (=> b!865186 m!1112025))

(assert (=> b!865186 m!1112025))

(assert (=> b!865186 m!1112017))

(declare-fun m!1112027 () Bool)

(assert (=> b!865186 m!1112027))

(declare-fun m!1112029 () Bool)

(assert (=> b!865186 m!1112029))

(assert (=> b!865186 m!1112025))

(declare-fun m!1112031 () Bool)

(assert (=> b!865186 m!1112031))

(assert (=> b!865186 m!1112027))

(assert (=> b!865179 m!1112025))

(assert (=> b!865179 m!1112025))

(assert (=> b!865179 m!1112017))

(assert (=> b!865179 m!1112017))

(assert (=> b!865179 m!1112019))

(assert (=> b!865179 m!1112019))

(declare-fun m!1112033 () Bool)

(assert (=> b!865179 m!1112033))

(assert (=> b!865183 m!1112025))

(assert (=> b!865183 m!1112025))

(assert (=> b!865183 m!1112017))

(assert (=> b!865183 m!1112017))

(declare-fun m!1112035 () Bool)

(assert (=> b!865183 m!1112035))

(declare-fun m!1112037 () Bool)

(assert (=> d!271814 m!1112037))

(declare-fun m!1112039 () Bool)

(assert (=> d!271814 m!1112039))

(declare-fun m!1112041 () Bool)

(assert (=> b!865180 m!1112041))

(assert (=> b!865180 m!1112041))

(declare-fun m!1112043 () Bool)

(assert (=> b!865180 m!1112043))

(declare-fun m!1112045 () Bool)

(assert (=> b!865180 m!1112045))

(assert (=> b!865180 m!1112043))

(assert (=> b!865180 m!1112045))

(declare-fun m!1112047 () Bool)

(assert (=> b!865180 m!1112047))

(assert (=> b!865002 d!271814))

(declare-fun d!271816 () Bool)

(assert (=> d!271816 (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 (withSeparatorTokenList!81 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!326556 () Unit!13862)

(declare-fun choose!5083 (LexerInterface!1553 List!9349 List!9348 Token!3168) Unit!13862)

(assert (=> d!271816 (= lt!326556 (choose!5083 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!271816 (not (isEmpty!5544 rules!2621))))

(assert (=> d!271816 (= (withSeparatorTokenListPreservesRulesProduceTokens!81 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!326556)))

(declare-fun bs!232831 () Bool)

(assert (= bs!232831 d!271816))

(assert (=> bs!232831 m!1111819))

(assert (=> bs!232831 m!1111819))

(declare-fun m!1112049 () Bool)

(assert (=> bs!232831 m!1112049))

(declare-fun m!1112051 () Bool)

(assert (=> bs!232831 m!1112051))

(assert (=> bs!232831 m!1111851))

(assert (=> b!865002 d!271816))

(declare-fun d!271818 () Bool)

(assert (=> d!271818 (= (inv!11863 (tag!2013 (h!14734 rules!2621))) (= (mod (str.len (value!56603 (tag!2013 (h!14734 rules!2621)))) 2) 0))))

(assert (=> b!865013 d!271818))

(declare-fun d!271820 () Bool)

(declare-fun res!394063 () Bool)

(declare-fun e!569203 () Bool)

(assert (=> d!271820 (=> (not res!394063) (not e!569203))))

(assert (=> d!271820 (= res!394063 (semiInverseModEq!693 (toChars!2679 (transformation!1751 (h!14734 rules!2621))) (toValue!2820 (transformation!1751 (h!14734 rules!2621)))))))

(assert (=> d!271820 (= (inv!11866 (transformation!1751 (h!14734 rules!2621))) e!569203)))

(declare-fun b!865197 () Bool)

(assert (=> b!865197 (= e!569203 (equivClasses!660 (toChars!2679 (transformation!1751 (h!14734 rules!2621))) (toValue!2820 (transformation!1751 (h!14734 rules!2621)))))))

(assert (= (and d!271820 res!394063) b!865197))

(declare-fun m!1112053 () Bool)

(assert (=> d!271820 m!1112053))

(declare-fun m!1112055 () Bool)

(assert (=> b!865197 m!1112055))

(assert (=> b!865013 d!271820))

(declare-fun d!271822 () Bool)

(assert (=> d!271822 (= (inv!11863 (tag!2013 (rule!3174 (h!14733 l!5107)))) (= (mod (str.len (value!56603 (tag!2013 (rule!3174 (h!14733 l!5107))))) 2) 0))))

(assert (=> b!865011 d!271822))

(declare-fun d!271824 () Bool)

(declare-fun res!394064 () Bool)

(declare-fun e!569204 () Bool)

(assert (=> d!271824 (=> (not res!394064) (not e!569204))))

(assert (=> d!271824 (= res!394064 (semiInverseModEq!693 (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (toValue!2820 (transformation!1751 (rule!3174 (h!14733 l!5107))))))))

(assert (=> d!271824 (= (inv!11866 (transformation!1751 (rule!3174 (h!14733 l!5107)))) e!569204)))

(declare-fun b!865198 () Bool)

(assert (=> b!865198 (= e!569204 (equivClasses!660 (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (toValue!2820 (transformation!1751 (rule!3174 (h!14733 l!5107))))))))

(assert (= (and d!271824 res!394064) b!865198))

(declare-fun m!1112057 () Bool)

(assert (=> d!271824 m!1112057))

(declare-fun m!1112059 () Bool)

(assert (=> b!865198 m!1112059))

(assert (=> b!865011 d!271824))

(declare-fun b!865216 () Bool)

(declare-fun e!569220 () Bool)

(declare-fun e!569219 () Bool)

(assert (=> b!865216 (= e!569220 e!569219)))

(declare-fun c!140055 () Bool)

(assert (=> b!865216 (= c!140055 (is-IntegerValue!5452 (value!56604 separatorToken!297)))))

(declare-fun d!271826 () Bool)

(declare-fun c!140054 () Bool)

(assert (=> d!271826 (= c!140054 (is-IntegerValue!5451 (value!56604 separatorToken!297)))))

(assert (=> d!271826 (= (inv!21 (value!56604 separatorToken!297)) e!569220)))

(declare-fun b!865217 () Bool)

(declare-fun res!394071 () Bool)

(declare-fun e!569218 () Bool)

(assert (=> b!865217 (=> res!394071 e!569218)))

(assert (=> b!865217 (= res!394071 (not (is-IntegerValue!5453 (value!56604 separatorToken!297))))))

(assert (=> b!865217 (= e!569219 e!569218)))

(declare-fun b!865218 () Bool)

(declare-fun inv!15 (TokenValue!1817) Bool)

(assert (=> b!865218 (= e!569218 (inv!15 (value!56604 separatorToken!297)))))

(declare-fun b!865219 () Bool)

(declare-fun inv!17 (TokenValue!1817) Bool)

(assert (=> b!865219 (= e!569219 (inv!17 (value!56604 separatorToken!297)))))

(declare-fun b!865220 () Bool)

(declare-fun inv!16 (TokenValue!1817) Bool)

(assert (=> b!865220 (= e!569220 (inv!16 (value!56604 separatorToken!297)))))

(assert (= (and d!271826 c!140054) b!865220))

(assert (= (and d!271826 (not c!140054)) b!865216))

(assert (= (and b!865216 c!140055) b!865219))

(assert (= (and b!865216 (not c!140055)) b!865217))

(assert (= (and b!865217 (not res!394071)) b!865218))

(declare-fun m!1112067 () Bool)

(assert (=> b!865218 m!1112067))

(declare-fun m!1112069 () Bool)

(assert (=> b!865219 m!1112069))

(declare-fun m!1112071 () Bool)

(assert (=> b!865220 m!1112071))

(assert (=> b!865015 d!271826))

(declare-fun d!271830 () Bool)

(declare-fun res!394078 () Bool)

(declare-fun e!569227 () Bool)

(assert (=> d!271830 (=> res!394078 e!569227)))

(assert (=> d!271830 (= res!394078 (is-Nil!9332 l!5107))))

(assert (=> d!271830 (= (forall!2218 l!5107 lambda!25949) e!569227)))

(declare-fun b!865229 () Bool)

(declare-fun e!569228 () Bool)

(assert (=> b!865229 (= e!569227 e!569228)))

(declare-fun res!394079 () Bool)

(assert (=> b!865229 (=> (not res!394079) (not e!569228))))

(declare-fun dynLambda!4429 (Int Token!3168) Bool)

(assert (=> b!865229 (= res!394079 (dynLambda!4429 lambda!25949 (h!14733 l!5107)))))

(declare-fun b!865230 () Bool)

(assert (=> b!865230 (= e!569228 (forall!2218 (t!98660 l!5107) lambda!25949))))

(assert (= (and d!271830 (not res!394078)) b!865229))

(assert (= (and b!865229 res!394079) b!865230))

(declare-fun b_lambda!29411 () Bool)

(assert (=> (not b_lambda!29411) (not b!865229)))

(declare-fun m!1112077 () Bool)

(assert (=> b!865229 m!1112077))

(declare-fun m!1112079 () Bool)

(assert (=> b!865230 m!1112079))

(assert (=> b!865016 d!271830))

(declare-fun b!865231 () Bool)

(declare-fun e!569231 () Bool)

(declare-fun e!569230 () Bool)

(assert (=> b!865231 (= e!569231 e!569230)))

(declare-fun c!140057 () Bool)

(assert (=> b!865231 (= c!140057 (is-IntegerValue!5452 (value!56604 (h!14733 l!5107))))))

(declare-fun d!271834 () Bool)

(declare-fun c!140056 () Bool)

(assert (=> d!271834 (= c!140056 (is-IntegerValue!5451 (value!56604 (h!14733 l!5107))))))

(assert (=> d!271834 (= (inv!21 (value!56604 (h!14733 l!5107))) e!569231)))

(declare-fun b!865232 () Bool)

(declare-fun res!394080 () Bool)

(declare-fun e!569229 () Bool)

(assert (=> b!865232 (=> res!394080 e!569229)))

(assert (=> b!865232 (= res!394080 (not (is-IntegerValue!5453 (value!56604 (h!14733 l!5107)))))))

(assert (=> b!865232 (= e!569230 e!569229)))

(declare-fun b!865233 () Bool)

(assert (=> b!865233 (= e!569229 (inv!15 (value!56604 (h!14733 l!5107))))))

(declare-fun b!865234 () Bool)

(assert (=> b!865234 (= e!569230 (inv!17 (value!56604 (h!14733 l!5107))))))

(declare-fun b!865235 () Bool)

(assert (=> b!865235 (= e!569231 (inv!16 (value!56604 (h!14733 l!5107))))))

(assert (= (and d!271834 c!140056) b!865235))

(assert (= (and d!271834 (not c!140056)) b!865231))

(assert (= (and b!865231 c!140057) b!865234))

(assert (= (and b!865231 (not c!140057)) b!865232))

(assert (= (and b!865232 (not res!394080)) b!865233))

(declare-fun m!1112081 () Bool)

(assert (=> b!865233 m!1112081))

(declare-fun m!1112083 () Bool)

(assert (=> b!865234 m!1112083))

(declare-fun m!1112085 () Bool)

(assert (=> b!865235 m!1112085))

(assert (=> b!865003 d!271834))

(declare-fun bs!232833 () Bool)

(declare-fun d!271836 () Bool)

(assert (= bs!232833 (and d!271836 b!865016)))

(declare-fun lambda!25959 () Int)

(assert (=> bs!232833 (not (= lambda!25959 lambda!25949))))

(declare-fun bs!232834 () Bool)

(assert (= bs!232834 (and d!271836 d!271804)))

(assert (=> bs!232834 (= lambda!25959 lambda!25955)))

(declare-fun b!865244 () Bool)

(declare-fun e!569238 () Bool)

(assert (=> b!865244 (= e!569238 true)))

(declare-fun b!865243 () Bool)

(declare-fun e!569237 () Bool)

(assert (=> b!865243 (= e!569237 e!569238)))

(declare-fun b!865240 () Bool)

(declare-fun e!569236 () Bool)

(assert (=> b!865240 (= e!569236 e!569237)))

(assert (=> d!271836 e!569236))

(assert (= b!865243 b!865244))

(assert (= b!865240 b!865243))

(assert (= (and d!271836 (is-Cons!9333 rules!2621)) b!865240))

(assert (=> b!865244 (< (dynLambda!4426 order!6089 (toValue!2820 (transformation!1751 (h!14734 rules!2621)))) (dynLambda!4427 order!6091 lambda!25959))))

(assert (=> b!865244 (< (dynLambda!4428 order!6093 (toChars!2679 (transformation!1751 (h!14734 rules!2621)))) (dynLambda!4427 order!6091 lambda!25959))))

(assert (=> d!271836 true))

(declare-fun lt!326557 () Bool)

(assert (=> d!271836 (= lt!326557 (forall!2218 lt!326499 lambda!25959))))

(declare-fun e!569233 () Bool)

(assert (=> d!271836 (= lt!326557 e!569233)))

(declare-fun res!394082 () Bool)

(assert (=> d!271836 (=> res!394082 e!569233)))

(assert (=> d!271836 (= res!394082 (not (is-Cons!9332 lt!326499)))))

(assert (=> d!271836 (not (isEmpty!5544 rules!2621))))

(assert (=> d!271836 (= (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 lt!326499) lt!326557)))

(declare-fun b!865236 () Bool)

(declare-fun e!569232 () Bool)

(assert (=> b!865236 (= e!569233 e!569232)))

(declare-fun res!394081 () Bool)

(assert (=> b!865236 (=> (not res!394081) (not e!569232))))

(assert (=> b!865236 (= res!394081 (rulesProduceIndividualToken!617 thiss!20117 rules!2621 (h!14733 lt!326499)))))

(declare-fun b!865237 () Bool)

(assert (=> b!865237 (= e!569232 (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 (t!98660 lt!326499)))))

(assert (= (and d!271836 (not res!394082)) b!865236))

(assert (= (and b!865236 res!394081) b!865237))

(declare-fun m!1112087 () Bool)

(assert (=> d!271836 m!1112087))

(assert (=> d!271836 m!1111851))

(declare-fun m!1112089 () Bool)

(assert (=> b!865236 m!1112089))

(declare-fun m!1112091 () Bool)

(assert (=> b!865237 m!1112091))

(assert (=> b!865004 d!271836))

(declare-fun d!271838 () Bool)

(declare-fun prefixMatchZipperSequence!44 (Regex!2184 BalanceConc!6202) Bool)

(declare-fun rulesRegex!29 (LexerInterface!1553 List!9349) Regex!2184)

(declare-fun ++!2416 (BalanceConc!6202 BalanceConc!6202) BalanceConc!6202)

(declare-fun singletonSeq!569 (C!4938) BalanceConc!6202)

(declare-fun apply!1961 (BalanceConc!6202 Int) C!4938)

(assert (=> d!271838 (= (separableTokensPredicate!71 thiss!20117 (h!14733 lt!326496) (h!14733 (t!98660 lt!326496)) rules!2621) (not (prefixMatchZipperSequence!44 (rulesRegex!29 thiss!20117 rules!2621) (++!2416 (charsOf!1012 (h!14733 lt!326496)) (singletonSeq!569 (apply!1961 (charsOf!1012 (h!14733 (t!98660 lt!326496))) 0))))))))

(declare-fun bs!232835 () Bool)

(assert (= bs!232835 d!271838))

(declare-fun m!1112127 () Bool)

(assert (=> bs!232835 m!1112127))

(declare-fun m!1112129 () Bool)

(assert (=> bs!232835 m!1112129))

(declare-fun m!1112131 () Bool)

(assert (=> bs!232835 m!1112131))

(declare-fun m!1112133 () Bool)

(assert (=> bs!232835 m!1112133))

(declare-fun m!1112135 () Bool)

(assert (=> bs!232835 m!1112135))

(declare-fun m!1112137 () Bool)

(assert (=> bs!232835 m!1112137))

(declare-fun m!1112139 () Bool)

(assert (=> bs!232835 m!1112139))

(assert (=> bs!232835 m!1112127))

(assert (=> bs!232835 m!1112131))

(assert (=> bs!232835 m!1112129))

(assert (=> bs!232835 m!1112133))

(assert (=> bs!232835 m!1112137))

(assert (=> bs!232835 m!1112135))

(assert (=> b!865004 d!271838))

(declare-fun d!271848 () Bool)

(assert (=> d!271848 (separableTokensPredicate!71 thiss!20117 (h!14733 lt!326496) (h!14733 (t!98660 lt!326496)) rules!2621)))

(declare-fun lt!326593 () Unit!13862)

(declare-fun choose!5084 (LexerInterface!1553 Token!3168 Token!3168 List!9349) Unit!13862)

(assert (=> d!271848 (= lt!326593 (choose!5084 thiss!20117 (h!14733 lt!326496) (h!14733 (t!98660 lt!326496)) rules!2621))))

(assert (=> d!271848 (not (isEmpty!5544 rules!2621))))

(assert (=> d!271848 (= (lemmaTokensOfDifferentKindsAreSeparable!49 thiss!20117 (h!14733 lt!326496) (h!14733 (t!98660 lt!326496)) rules!2621) lt!326593)))

(declare-fun bs!232838 () Bool)

(assert (= bs!232838 d!271848))

(assert (=> bs!232838 m!1111833))

(declare-fun m!1112201 () Bool)

(assert (=> bs!232838 m!1112201))

(assert (=> bs!232838 m!1111851))

(assert (=> b!865004 d!271848))

(declare-fun d!271862 () Bool)

(assert (=> d!271862 (= (isEmpty!5544 rules!2621) (is-Nil!9333 rules!2621))))

(assert (=> b!865007 d!271862))

(declare-fun bs!232839 () Bool)

(declare-fun d!271864 () Bool)

(assert (= bs!232839 (and d!271864 b!865016)))

(declare-fun lambda!25961 () Int)

(assert (=> bs!232839 (not (= lambda!25961 lambda!25949))))

(declare-fun bs!232840 () Bool)

(assert (= bs!232840 (and d!271864 d!271804)))

(assert (=> bs!232840 (= lambda!25961 lambda!25955)))

(declare-fun bs!232841 () Bool)

(assert (= bs!232841 (and d!271864 d!271836)))

(assert (=> bs!232841 (= lambda!25961 lambda!25959)))

(declare-fun b!865326 () Bool)

(declare-fun e!569294 () Bool)

(assert (=> b!865326 (= e!569294 true)))

(declare-fun b!865325 () Bool)

(declare-fun e!569293 () Bool)

(assert (=> b!865325 (= e!569293 e!569294)))

(declare-fun b!865324 () Bool)

(declare-fun e!569292 () Bool)

(assert (=> b!865324 (= e!569292 e!569293)))

(assert (=> d!271864 e!569292))

(assert (= b!865325 b!865326))

(assert (= b!865324 b!865325))

(assert (= (and d!271864 (is-Cons!9333 rules!2621)) b!865324))

(assert (=> b!865326 (< (dynLambda!4426 order!6089 (toValue!2820 (transformation!1751 (h!14734 rules!2621)))) (dynLambda!4427 order!6091 lambda!25961))))

(assert (=> b!865326 (< (dynLambda!4428 order!6093 (toChars!2679 (transformation!1751 (h!14734 rules!2621)))) (dynLambda!4427 order!6091 lambda!25961))))

(assert (=> d!271864 true))

(declare-fun lt!326594 () Bool)

(assert (=> d!271864 (= lt!326594 (forall!2218 l!5107 lambda!25961))))

(declare-fun e!569291 () Bool)

(assert (=> d!271864 (= lt!326594 e!569291)))

(declare-fun res!394120 () Bool)

(assert (=> d!271864 (=> res!394120 e!569291)))

(assert (=> d!271864 (= res!394120 (not (is-Cons!9332 l!5107)))))

(assert (=> d!271864 (not (isEmpty!5544 rules!2621))))

(assert (=> d!271864 (= (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 l!5107) lt!326594)))

(declare-fun b!865322 () Bool)

(declare-fun e!569290 () Bool)

(assert (=> b!865322 (= e!569291 e!569290)))

(declare-fun res!394119 () Bool)

(assert (=> b!865322 (=> (not res!394119) (not e!569290))))

(assert (=> b!865322 (= res!394119 (rulesProduceIndividualToken!617 thiss!20117 rules!2621 (h!14733 l!5107)))))

(declare-fun b!865323 () Bool)

(assert (=> b!865323 (= e!569290 (rulesProduceEachTokenIndividuallyList!441 thiss!20117 rules!2621 (t!98660 l!5107)))))

(assert (= (and d!271864 (not res!394120)) b!865322))

(assert (= (and b!865322 res!394119) b!865323))

(declare-fun m!1112249 () Bool)

(assert (=> d!271864 m!1112249))

(assert (=> d!271864 m!1111851))

(declare-fun m!1112251 () Bool)

(assert (=> b!865322 m!1112251))

(declare-fun m!1112253 () Bool)

(assert (=> b!865323 m!1112253))

(assert (=> b!865008 d!271864))

(declare-fun b!865327 () Bool)

(declare-fun e!569298 () Bool)

(declare-fun e!569295 () Bool)

(assert (=> b!865327 (= e!569298 e!569295)))

(declare-fun res!394123 () Bool)

(assert (=> b!865327 (=> res!394123 e!569295)))

(assert (=> b!865327 (= res!394123 (not (is-Cons!9332 lt!326499)))))

(declare-fun b!865328 () Bool)

(declare-fun e!569297 () List!9347)

(assert (=> b!865328 (= e!569297 Nil!9331)))

(declare-fun lt!326595 () List!9348)

(declare-fun d!271868 () Bool)

(assert (=> d!271868 (= (printList!495 thiss!20117 lt!326595) (printWithSeparatorTokenList!53 thiss!20117 lt!326499 separatorToken!297))))

(declare-fun e!569300 () List!9348)

(assert (=> d!271868 (= lt!326595 e!569300)))

(declare-fun c!140077 () Bool)

(assert (=> d!271868 (= c!140077 (is-Cons!9332 lt!326499))))

(assert (=> d!271868 e!569298))

(declare-fun res!394124 () Bool)

(assert (=> d!271868 (=> (not res!394124) (not e!569298))))

(assert (=> d!271868 (= res!394124 (isSeparator!1751 (rule!3174 separatorToken!297)))))

(assert (=> d!271868 (= (withSeparatorTokenList!81 thiss!20117 lt!326499 separatorToken!297) lt!326595)))

(declare-fun e!569299 () Bool)

(declare-fun b!865329 () Bool)

(assert (=> b!865329 (= e!569299 (= (printList!495 thiss!20117 ($colon$colon!108 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 lt!326499) separatorToken!297) separatorToken!297) (h!14733 lt!326499))) e!569297))))

(declare-fun c!140076 () Bool)

(declare-fun lt!326600 () List!9348)

(assert (=> b!865329 (= c!140076 (is-Cons!9332 lt!326600))))

(assert (=> b!865329 (= lt!326600 ($colon$colon!108 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 lt!326499) separatorToken!297) separatorToken!297) (h!14733 lt!326499)))))

(declare-fun b!865330 () Bool)

(assert (=> b!865330 (= e!569297 (++!2415 (list!3687 (charsOf!1012 (h!14733 lt!326600))) (printList!495 thiss!20117 (t!98660 lt!326600))))))

(declare-fun b!865331 () Bool)

(declare-fun e!569296 () List!9347)

(declare-fun lt!326597 () List!9348)

(assert (=> b!865331 (= e!569296 (++!2415 (list!3687 (charsOf!1012 (h!14733 lt!326597))) (printList!495 thiss!20117 (t!98660 lt!326597))))))

(declare-fun b!865332 () Bool)

(assert (=> b!865332 (= e!569300 Nil!9332)))

(declare-fun b!865333 () Bool)

(assert (=> b!865333 (= e!569295 (= (printList!495 thiss!20117 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 lt!326499) separatorToken!297) separatorToken!297)) e!569296))))

(declare-fun c!140078 () Bool)

(assert (=> b!865333 (= c!140078 (is-Cons!9332 lt!326597))))

(assert (=> b!865333 (= lt!326597 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 lt!326499) separatorToken!297) separatorToken!297))))

(declare-fun b!865334 () Bool)

(declare-fun res!394122 () Bool)

(assert (=> b!865334 (=> (not res!394122) (not e!569298))))

(assert (=> b!865334 (= res!394122 e!569299)))

(declare-fun res!394121 () Bool)

(assert (=> b!865334 (=> res!394121 e!569299)))

(assert (=> b!865334 (= res!394121 (not (is-Cons!9332 lt!326499)))))

(declare-fun b!865335 () Bool)

(assert (=> b!865335 (= e!569296 Nil!9331)))

(declare-fun b!865336 () Bool)

(assert (=> b!865336 (= e!569300 ($colon$colon!108 ($colon$colon!108 (withSeparatorTokenList!81 thiss!20117 (t!98660 lt!326499) separatorToken!297) separatorToken!297) (h!14733 lt!326499)))))

(declare-fun lt!326601 () List!9347)

(assert (=> b!865336 (= lt!326601 (list!3687 (charsOf!1012 (h!14733 lt!326499))))))

(declare-fun lt!326596 () List!9347)

(assert (=> b!865336 (= lt!326596 (list!3687 (charsOf!1012 separatorToken!297)))))

(declare-fun lt!326599 () List!9347)

(assert (=> b!865336 (= lt!326599 (printList!495 thiss!20117 (withSeparatorTokenList!81 thiss!20117 (t!98660 lt!326499) separatorToken!297)))))

(declare-fun lt!326602 () Unit!13862)

(assert (=> b!865336 (= lt!326602 (lemmaConcatAssociativity!772 lt!326601 lt!326596 lt!326599))))

(assert (=> b!865336 (= (++!2415 (++!2415 lt!326601 lt!326596) lt!326599) (++!2415 lt!326601 (++!2415 lt!326596 lt!326599)))))

(declare-fun lt!326598 () Unit!13862)

(assert (=> b!865336 (= lt!326598 lt!326602)))

(assert (= (and d!271868 res!394124) b!865334))

(assert (= (and b!865334 (not res!394121)) b!865329))

(assert (= (and b!865329 c!140076) b!865330))

(assert (= (and b!865329 (not c!140076)) b!865328))

(assert (= (and b!865334 res!394122) b!865327))

(assert (= (and b!865327 (not res!394123)) b!865333))

(assert (= (and b!865333 c!140078) b!865331))

(assert (= (and b!865333 (not c!140078)) b!865335))

(assert (= (and d!271868 c!140077) b!865336))

(assert (= (and d!271868 (not c!140077)) b!865332))

(declare-fun m!1112255 () Bool)

(assert (=> b!865331 m!1112255))

(assert (=> b!865331 m!1112255))

(declare-fun m!1112257 () Bool)

(assert (=> b!865331 m!1112257))

(declare-fun m!1112259 () Bool)

(assert (=> b!865331 m!1112259))

(assert (=> b!865331 m!1112257))

(assert (=> b!865331 m!1112259))

(declare-fun m!1112261 () Bool)

(assert (=> b!865331 m!1112261))

(declare-fun m!1112263 () Bool)

(assert (=> b!865336 m!1112263))

(declare-fun m!1112265 () Bool)

(assert (=> b!865336 m!1112265))

(declare-fun m!1112267 () Bool)

(assert (=> b!865336 m!1112267))

(declare-fun m!1112269 () Bool)

(assert (=> b!865336 m!1112269))

(assert (=> b!865336 m!1112263))

(assert (=> b!865336 m!1112269))

(declare-fun m!1112271 () Bool)

(assert (=> b!865336 m!1112271))

(declare-fun m!1112273 () Bool)

(assert (=> b!865336 m!1112273))

(declare-fun m!1112275 () Bool)

(assert (=> b!865336 m!1112275))

(declare-fun m!1112277 () Bool)

(assert (=> b!865336 m!1112277))

(assert (=> b!865336 m!1112277))

(declare-fun m!1112279 () Bool)

(assert (=> b!865336 m!1112279))

(declare-fun m!1112281 () Bool)

(assert (=> b!865336 m!1112281))

(assert (=> b!865336 m!1112281))

(assert (=> b!865336 m!1112273))

(assert (=> b!865336 m!1112027))

(assert (=> b!865336 m!1112029))

(assert (=> b!865336 m!1112281))

(declare-fun m!1112283 () Bool)

(assert (=> b!865336 m!1112283))

(assert (=> b!865336 m!1112027))

(assert (=> b!865329 m!1112281))

(assert (=> b!865329 m!1112281))

(assert (=> b!865329 m!1112273))

(assert (=> b!865329 m!1112273))

(assert (=> b!865329 m!1112275))

(assert (=> b!865329 m!1112275))

(declare-fun m!1112285 () Bool)

(assert (=> b!865329 m!1112285))

(assert (=> b!865333 m!1112281))

(assert (=> b!865333 m!1112281))

(assert (=> b!865333 m!1112273))

(assert (=> b!865333 m!1112273))

(declare-fun m!1112287 () Bool)

(assert (=> b!865333 m!1112287))

(declare-fun m!1112289 () Bool)

(assert (=> d!271868 m!1112289))

(declare-fun m!1112291 () Bool)

(assert (=> d!271868 m!1112291))

(declare-fun m!1112293 () Bool)

(assert (=> b!865330 m!1112293))

(assert (=> b!865330 m!1112293))

(declare-fun m!1112295 () Bool)

(assert (=> b!865330 m!1112295))

(declare-fun m!1112297 () Bool)

(assert (=> b!865330 m!1112297))

(assert (=> b!865330 m!1112295))

(assert (=> b!865330 m!1112297))

(declare-fun m!1112299 () Bool)

(assert (=> b!865330 m!1112299))

(assert (=> b!865006 d!271868))

(declare-fun d!271870 () Bool)

(assert (=> d!271870 (= (tail!1059 l!5107) (t!98660 l!5107))))

(assert (=> b!865006 d!271870))

(declare-fun d!271872 () Bool)

(declare-fun res!394129 () Bool)

(declare-fun e!569305 () Bool)

(assert (=> d!271872 (=> res!394129 e!569305)))

(assert (=> d!271872 (= res!394129 (not (is-Cons!9333 rules!2621)))))

(assert (=> d!271872 (= (sepAndNonSepRulesDisjointChars!551 rules!2621 rules!2621) e!569305)))

(declare-fun b!865341 () Bool)

(declare-fun e!569306 () Bool)

(assert (=> b!865341 (= e!569305 e!569306)))

(declare-fun res!394130 () Bool)

(assert (=> b!865341 (=> (not res!394130) (not e!569306))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!261 (Rule!3302 List!9349) Bool)

(assert (=> b!865341 (= res!394130 (ruleDisjointCharsFromAllFromOtherType!261 (h!14734 rules!2621) rules!2621))))

(declare-fun b!865342 () Bool)

(assert (=> b!865342 (= e!569306 (sepAndNonSepRulesDisjointChars!551 rules!2621 (t!98661 rules!2621)))))

(assert (= (and d!271872 (not res!394129)) b!865341))

(assert (= (and b!865341 res!394130) b!865342))

(declare-fun m!1112301 () Bool)

(assert (=> b!865341 m!1112301))

(declare-fun m!1112303 () Bool)

(assert (=> b!865342 m!1112303))

(assert (=> b!865017 d!271872))

(declare-fun b!865356 () Bool)

(declare-fun b_free!26413 () Bool)

(declare-fun b_next!26477 () Bool)

(assert (=> b!865356 (= b_free!26413 (not b_next!26477))))

(declare-fun tp!273515 () Bool)

(declare-fun b_and!77545 () Bool)

(assert (=> b!865356 (= tp!273515 b_and!77545)))

(declare-fun b_free!26415 () Bool)

(declare-fun b_next!26479 () Bool)

(assert (=> b!865356 (= b_free!26415 (not b_next!26479))))

(declare-fun t!98697 () Bool)

(declare-fun tb!62557 () Bool)

(assert (=> (and b!865356 (= (toChars!2679 (transformation!1751 (rule!3174 (h!14733 (t!98660 l!5107))))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107))))) t!98697) tb!62557))

(declare-fun result!72296 () Bool)

(assert (= result!72296 result!72266))

(assert (=> b!865094 t!98697))

(declare-fun tb!62559 () Bool)

(declare-fun t!98699 () Bool)

(assert (=> (and b!865356 (= (toChars!2679 (transformation!1751 (rule!3174 (h!14733 (t!98660 l!5107))))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297)))) t!98699) tb!62559))

(declare-fun result!72298 () Bool)

(assert (= result!72298 result!72274))

(assert (=> b!865101 t!98699))

(declare-fun tp!273511 () Bool)

(declare-fun b_and!77547 () Bool)

(assert (=> b!865356 (= tp!273511 (and (=> t!98697 result!72296) (=> t!98699 result!72298) b_and!77547))))

(declare-fun tp!273513 () Bool)

(declare-fun e!569323 () Bool)

(declare-fun e!569322 () Bool)

(declare-fun b!865353 () Bool)

(assert (=> b!865353 (= e!569322 (and (inv!11867 (h!14733 (t!98660 l!5107))) e!569323 tp!273513))))

(declare-fun b!865355 () Bool)

(declare-fun e!569324 () Bool)

(declare-fun e!569321 () Bool)

(declare-fun tp!273512 () Bool)

(assert (=> b!865355 (= e!569324 (and tp!273512 (inv!11863 (tag!2013 (rule!3174 (h!14733 (t!98660 l!5107))))) (inv!11866 (transformation!1751 (rule!3174 (h!14733 (t!98660 l!5107))))) e!569321))))

(assert (=> b!865356 (= e!569321 (and tp!273515 tp!273511))))

(assert (=> b!865021 (= tp!273444 e!569322)))

(declare-fun tp!273514 () Bool)

(declare-fun b!865354 () Bool)

(assert (=> b!865354 (= e!569323 (and (inv!21 (value!56604 (h!14733 (t!98660 l!5107)))) e!569324 tp!273514))))

(assert (= b!865355 b!865356))

(assert (= b!865354 b!865355))

(assert (= b!865353 b!865354))

(assert (= (and b!865021 (is-Cons!9332 (t!98660 l!5107))) b!865353))

(declare-fun m!1112305 () Bool)

(assert (=> b!865353 m!1112305))

(declare-fun m!1112307 () Bool)

(assert (=> b!865355 m!1112307))

(declare-fun m!1112309 () Bool)

(assert (=> b!865355 m!1112309))

(declare-fun m!1112311 () Bool)

(assert (=> b!865354 m!1112311))

(declare-fun b!865367 () Bool)

(declare-fun b_free!26417 () Bool)

(declare-fun b_next!26481 () Bool)

(assert (=> b!865367 (= b_free!26417 (not b_next!26481))))

(declare-fun tp!273527 () Bool)

(declare-fun b_and!77549 () Bool)

(assert (=> b!865367 (= tp!273527 b_and!77549)))

(declare-fun b_free!26419 () Bool)

(declare-fun b_next!26483 () Bool)

(assert (=> b!865367 (= b_free!26419 (not b_next!26483))))

(declare-fun tb!62561 () Bool)

(declare-fun t!98701 () Bool)

(assert (=> (and b!865367 (= (toChars!2679 (transformation!1751 (h!14734 (t!98661 rules!2621)))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107))))) t!98701) tb!62561))

(declare-fun result!72302 () Bool)

(assert (= result!72302 result!72266))

(assert (=> b!865094 t!98701))

(declare-fun t!98703 () Bool)

(declare-fun tb!62563 () Bool)

(assert (=> (and b!865367 (= (toChars!2679 (transformation!1751 (h!14734 (t!98661 rules!2621)))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297)))) t!98703) tb!62563))

(declare-fun result!72304 () Bool)

(assert (= result!72304 result!72274))

(assert (=> b!865101 t!98703))

(declare-fun b_and!77551 () Bool)

(declare-fun tp!273524 () Bool)

(assert (=> b!865367 (= tp!273524 (and (=> t!98701 result!72302) (=> t!98703 result!72304) b_and!77551))))

(declare-fun e!569335 () Bool)

(assert (=> b!865367 (= e!569335 (and tp!273527 tp!273524))))

(declare-fun tp!273525 () Bool)

(declare-fun e!569336 () Bool)

(declare-fun b!865366 () Bool)

(assert (=> b!865366 (= e!569336 (and tp!273525 (inv!11863 (tag!2013 (h!14734 (t!98661 rules!2621)))) (inv!11866 (transformation!1751 (h!14734 (t!98661 rules!2621)))) e!569335))))

(declare-fun b!865365 () Bool)

(declare-fun e!569333 () Bool)

(declare-fun tp!273526 () Bool)

(assert (=> b!865365 (= e!569333 (and e!569336 tp!273526))))

(assert (=> b!865019 (= tp!273453 e!569333)))

(assert (= b!865366 b!865367))

(assert (= b!865365 b!865366))

(assert (= (and b!865019 (is-Cons!9333 (t!98661 rules!2621))) b!865365))

(declare-fun m!1112313 () Bool)

(assert (=> b!865366 m!1112313))

(declare-fun m!1112315 () Bool)

(assert (=> b!865366 m!1112315))

(declare-fun b!865381 () Bool)

(declare-fun e!569339 () Bool)

(declare-fun tp!273539 () Bool)

(declare-fun tp!273541 () Bool)

(assert (=> b!865381 (= e!569339 (and tp!273539 tp!273541))))

(assert (=> b!865009 (= tp!273450 e!569339)))

(declare-fun b!865378 () Bool)

(declare-fun tp_is_empty!4019 () Bool)

(assert (=> b!865378 (= e!569339 tp_is_empty!4019)))

(declare-fun b!865380 () Bool)

(declare-fun tp!273542 () Bool)

(assert (=> b!865380 (= e!569339 tp!273542)))

(declare-fun b!865379 () Bool)

(declare-fun tp!273538 () Bool)

(declare-fun tp!273540 () Bool)

(assert (=> b!865379 (= e!569339 (and tp!273538 tp!273540))))

(assert (= (and b!865009 (is-ElementMatch!2184 (regex!1751 (rule!3174 separatorToken!297)))) b!865378))

(assert (= (and b!865009 (is-Concat!4002 (regex!1751 (rule!3174 separatorToken!297)))) b!865379))

(assert (= (and b!865009 (is-Star!2184 (regex!1751 (rule!3174 separatorToken!297)))) b!865380))

(assert (= (and b!865009 (is-Union!2184 (regex!1751 (rule!3174 separatorToken!297)))) b!865381))

(declare-fun b!865385 () Bool)

(declare-fun e!569340 () Bool)

(declare-fun tp!273544 () Bool)

(declare-fun tp!273546 () Bool)

(assert (=> b!865385 (= e!569340 (and tp!273544 tp!273546))))

(assert (=> b!865013 (= tp!273443 e!569340)))

(declare-fun b!865382 () Bool)

(assert (=> b!865382 (= e!569340 tp_is_empty!4019)))

(declare-fun b!865384 () Bool)

(declare-fun tp!273547 () Bool)

(assert (=> b!865384 (= e!569340 tp!273547)))

(declare-fun b!865383 () Bool)

(declare-fun tp!273543 () Bool)

(declare-fun tp!273545 () Bool)

(assert (=> b!865383 (= e!569340 (and tp!273543 tp!273545))))

(assert (= (and b!865013 (is-ElementMatch!2184 (regex!1751 (h!14734 rules!2621)))) b!865382))

(assert (= (and b!865013 (is-Concat!4002 (regex!1751 (h!14734 rules!2621)))) b!865383))

(assert (= (and b!865013 (is-Star!2184 (regex!1751 (h!14734 rules!2621)))) b!865384))

(assert (= (and b!865013 (is-Union!2184 (regex!1751 (h!14734 rules!2621)))) b!865385))

(declare-fun b!865389 () Bool)

(declare-fun e!569341 () Bool)

(declare-fun tp!273549 () Bool)

(declare-fun tp!273551 () Bool)

(assert (=> b!865389 (= e!569341 (and tp!273549 tp!273551))))

(assert (=> b!865011 (= tp!273441 e!569341)))

(declare-fun b!865386 () Bool)

(assert (=> b!865386 (= e!569341 tp_is_empty!4019)))

(declare-fun b!865388 () Bool)

(declare-fun tp!273552 () Bool)

(assert (=> b!865388 (= e!569341 tp!273552)))

(declare-fun b!865387 () Bool)

(declare-fun tp!273548 () Bool)

(declare-fun tp!273550 () Bool)

(assert (=> b!865387 (= e!569341 (and tp!273548 tp!273550))))

(assert (= (and b!865011 (is-ElementMatch!2184 (regex!1751 (rule!3174 (h!14733 l!5107))))) b!865386))

(assert (= (and b!865011 (is-Concat!4002 (regex!1751 (rule!3174 (h!14733 l!5107))))) b!865387))

(assert (= (and b!865011 (is-Star!2184 (regex!1751 (rule!3174 (h!14733 l!5107))))) b!865388))

(assert (= (and b!865011 (is-Union!2184 (regex!1751 (rule!3174 (h!14733 l!5107))))) b!865389))

(declare-fun b!865394 () Bool)

(declare-fun e!569344 () Bool)

(declare-fun tp!273555 () Bool)

(assert (=> b!865394 (= e!569344 (and tp_is_empty!4019 tp!273555))))

(assert (=> b!865015 (= tp!273452 e!569344)))

(assert (= (and b!865015 (is-Cons!9331 (originalCharacters!2307 separatorToken!297))) b!865394))

(declare-fun b!865395 () Bool)

(declare-fun e!569345 () Bool)

(declare-fun tp!273556 () Bool)

(assert (=> b!865395 (= e!569345 (and tp_is_empty!4019 tp!273556))))

(assert (=> b!865003 (= tp!273449 e!569345)))

(assert (= (and b!865003 (is-Cons!9331 (originalCharacters!2307 (h!14733 l!5107)))) b!865395))

(declare-fun b_lambda!29419 () Bool)

(assert (= b_lambda!29407 (or (and b!865014 b_free!26395) (and b!865367 b_free!26419 (= (toChars!2679 (transformation!1751 (h!14734 (t!98661 rules!2621)))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))))) (and b!865356 b_free!26415 (= (toChars!2679 (transformation!1751 (rule!3174 (h!14733 (t!98660 l!5107))))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))))) (and b!865005 b_free!26399 (= (toChars!2679 (transformation!1751 (h!14734 rules!2621))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))))) (and b!865012 b_free!26391 (= (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))) (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))))) b_lambda!29419)))

(declare-fun b_lambda!29421 () Bool)

(assert (= b_lambda!29411 (or b!865016 b_lambda!29421)))

(declare-fun bs!232842 () Bool)

(declare-fun d!271874 () Bool)

(assert (= bs!232842 (and d!271874 b!865016)))

(assert (=> bs!232842 (= (dynLambda!4429 lambda!25949 (h!14733 l!5107)) (not (isSeparator!1751 (rule!3174 (h!14733 l!5107)))))))

(assert (=> b!865229 d!271874))

(declare-fun b_lambda!29423 () Bool)

(assert (= b_lambda!29409 (or (and b!865012 b_free!26391) (and b!865367 b_free!26419 (= (toChars!2679 (transformation!1751 (h!14734 (t!98661 rules!2621)))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))))) (and b!865005 b_free!26399 (= (toChars!2679 (transformation!1751 (h!14734 rules!2621))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))))) (and b!865356 b_free!26415 (= (toChars!2679 (transformation!1751 (rule!3174 (h!14733 (t!98660 l!5107))))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))))) (and b!865014 b_free!26395 (= (toChars!2679 (transformation!1751 (rule!3174 (h!14733 l!5107)))) (toChars!2679 (transformation!1751 (rule!3174 separatorToken!297))))) b_lambda!29423)))

(push 1)

(assert b_and!77547)

(assert (not b!865387))

(assert (not b!865394))

(assert (not b!865094))

(assert (not b_next!26483))

(assert (not b_next!26453))

(assert (not b!865381))

(assert (not b!865331))

(assert (not b!865181))

(assert (not b!865379))

(assert (not b!865395))

(assert (not b!865180))

(assert (not d!271820))

(assert (not d!271868))

(assert (not b!865389))

(assert (not b!865117))

(assert (not b!865388))

(assert (not b!865336))

(assert (not d!271824))

(assert (not tb!62539))

(assert (not b!865109))

(assert (not d!271814))

(assert (not d!271848))

(assert b_and!77505)

(assert (not b!865183))

(assert (not d!271800))

(assert (not d!271790))

(assert b_and!77501)

(assert (not b!865330))

(assert (not tb!62533))

(assert (not b!865342))

(assert (not b_next!26479))

(assert (not b!865219))

(assert (not b!865106))

(assert (not b!865152))

(assert (not b!865341))

(assert b_and!77551)

(assert (not b!865234))

(assert b_and!77497)

(assert (not b!865385))

(assert (not b_next!26477))

(assert (not b!865236))

(assert (not b!865142))

(assert (not b!865324))

(assert (not b_next!26481))

(assert (not b!865100))

(assert (not b_lambda!29421))

(assert (not b!865102))

(assert (not b!865220))

(assert (not b!865198))

(assert (not d!271792))

(assert (not b!865118))

(assert (not b_lambda!29419))

(assert (not b_next!26461))

(assert (not b!865101))

(assert (not d!271864))

(assert (not b!865383))

(assert (not b!865230))

(assert (not b!865366))

(assert (not b_next!26457))

(assert (not b!865323))

(assert (not b!865365))

(assert (not b_next!26455))

(assert (not b!865384))

(assert b_and!77545)

(assert (not b!865179))

(assert (not d!271798))

(assert (not b!865197))

(assert (not b!865237))

(assert (not b_next!26459))

(assert (not d!271804))

(assert (not b!865143))

(assert (not b_lambda!29423))

(assert (not d!271796))

(assert (not b!865354))

(assert (not b!865353))

(assert b_and!77527)

(assert tp_is_empty!4019)

(assert (not b!865186))

(assert (not b!865116))

(assert (not b!865095))

(assert (not d!271838))

(assert (not b_next!26463))

(assert (not b!865235))

(assert b_and!77529)

(assert (not b!865329))

(assert (not b!865380))

(assert (not b!865240))

(assert (not b!865218))

(assert b_and!77531)

(assert (not b!865103))

(assert (not d!271836))

(assert (not b!865233))

(assert (not b!865355))

(assert (not b!865322))

(assert (not b!865333))

(assert (not d!271816))

(assert b_and!77549)

(check-sat)

(pop 1)

(push 1)

(assert b_and!77547)

(assert (not b_next!26453))

(assert b_and!77505)

(assert b_and!77501)

(assert (not b_next!26481))

(assert (not b_next!26461))

(assert (not b_next!26457))

(assert (not b_next!26459))

(assert b_and!77527)

(assert (not b_next!26463))

(assert b_and!77529)

(assert b_and!77531)

(assert (not b_next!26483))

(assert b_and!77549)

(assert (not b_next!26479))

(assert b_and!77551)

(assert b_and!77497)

(assert (not b_next!26477))

(assert (not b_next!26455))

(assert b_and!77545)

(check-sat)

(pop 1)

