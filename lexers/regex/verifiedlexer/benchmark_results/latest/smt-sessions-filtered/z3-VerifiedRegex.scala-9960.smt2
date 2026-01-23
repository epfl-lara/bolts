; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522060 () Bool)

(assert start!522060)

(declare-fun b!4953534 () Bool)

(declare-fun b_free!132067 () Bool)

(declare-fun b_next!132857 () Bool)

(assert (=> b!4953534 (= b_free!132067 (not b_next!132857))))

(declare-fun tp!1388729 () Bool)

(declare-fun b_and!346919 () Bool)

(assert (=> b!4953534 (= tp!1388729 b_and!346919)))

(declare-fun b_free!132069 () Bool)

(declare-fun b_next!132859 () Bool)

(assert (=> b!4953534 (= b_free!132069 (not b_next!132859))))

(declare-fun tp!1388727 () Bool)

(declare-fun b_and!346921 () Bool)

(assert (=> b!4953534 (= tp!1388727 b_and!346921)))

(declare-fun b!4953527 () Bool)

(declare-fun res!2113232 () Bool)

(declare-fun e!3094964 () Bool)

(assert (=> b!4953527 (=> (not res!2113232) (not e!3094964))))

(declare-datatypes ((LexerInterface!7864 0))(
  ( (LexerInterfaceExt!7861 (__x!34457 Int)) (Lexer!7862) )
))
(declare-fun thiss!15247 () LexerInterface!7864)

(declare-datatypes ((List!57202 0))(
  ( (Nil!57078) (Cons!57078 (h!63526 (_ BitVec 16)) (t!367768 List!57202)) )
))
(declare-datatypes ((TokenValue!8582 0))(
  ( (FloatLiteralValue!17164 (text!60519 List!57202)) (TokenValueExt!8581 (__x!34458 Int)) (Broken!42910 (value!265172 List!57202)) (Object!8705) (End!8582) (Def!8582) (Underscore!8582) (Match!8582) (Else!8582) (Error!8582) (Case!8582) (If!8582) (Extends!8582) (Abstract!8582) (Class!8582) (Val!8582) (DelimiterValue!17164 (del!8642 List!57202)) (KeywordValue!8588 (value!265173 List!57202)) (CommentValue!17164 (value!265174 List!57202)) (WhitespaceValue!17164 (value!265175 List!57202)) (IndentationValue!8582 (value!265176 List!57202)) (String!64783) (Int32!8582) (Broken!42911 (value!265177 List!57202)) (Boolean!8583) (Unit!147972) (OperatorValue!8585 (op!8642 List!57202)) (IdentifierValue!17164 (value!265178 List!57202)) (IdentifierValue!17165 (value!265179 List!57202)) (WhitespaceValue!17165 (value!265180 List!57202)) (True!17164) (False!17164) (Broken!42912 (value!265181 List!57202)) (Broken!42913 (value!265182 List!57202)) (True!17165) (RightBrace!8582) (RightBracket!8582) (Colon!8582) (Null!8582) (Comma!8582) (LeftBracket!8582) (False!17165) (LeftBrace!8582) (ImaginaryLiteralValue!8582 (text!60520 List!57202)) (StringLiteralValue!25746 (value!265183 List!57202)) (EOFValue!8582 (value!265184 List!57202)) (IdentValue!8582 (value!265185 List!57202)) (DelimiterValue!17165 (value!265186 List!57202)) (DedentValue!8582 (value!265187 List!57202)) (NewLineValue!8582 (value!265188 List!57202)) (IntegerValue!25746 (value!265189 (_ BitVec 32)) (text!60521 List!57202)) (IntegerValue!25747 (value!265190 Int) (text!60522 List!57202)) (Times!8582) (Or!8582) (Equal!8582) (Minus!8582) (Broken!42914 (value!265191 List!57202)) (And!8582) (Div!8582) (LessEqual!8582) (Mod!8582) (Concat!22087) (Not!8582) (Plus!8582) (SpaceValue!8582 (value!265192 List!57202)) (IntegerValue!25748 (value!265193 Int) (text!60523 List!57202)) (StringLiteralValue!25747 (text!60524 List!57202)) (FloatLiteralValue!17165 (text!60525 List!57202)) (BytesLiteralValue!8582 (value!265194 List!57202)) (CommentValue!17165 (value!265195 List!57202)) (StringLiteralValue!25748 (value!265196 List!57202)) (ErrorTokenValue!8582 (msg!8643 List!57202)) )
))
(declare-datatypes ((C!27260 0))(
  ( (C!27261 (val!22996 Int)) )
))
(declare-datatypes ((List!57203 0))(
  ( (Nil!57079) (Cons!57079 (h!63527 C!27260) (t!367769 List!57203)) )
))
(declare-datatypes ((IArray!30109 0))(
  ( (IArray!30110 (innerList!15112 List!57203)) )
))
(declare-datatypes ((Regex!13505 0))(
  ( (ElementMatch!13505 (c!845945 C!27260)) (Concat!22088 (regOne!27522 Regex!13505) (regTwo!27522 Regex!13505)) (EmptyExpr!13505) (Star!13505 (reg!13834 Regex!13505)) (EmptyLang!13505) (Union!13505 (regOne!27523 Regex!13505) (regTwo!27523 Regex!13505)) )
))
(declare-datatypes ((String!64784 0))(
  ( (String!64785 (value!265197 String)) )
))
(declare-datatypes ((Conc!15024 0))(
  ( (Node!15024 (left!41642 Conc!15024) (right!41972 Conc!15024) (csize!30278 Int) (cheight!15235 Int)) (Leaf!24985 (xs!18350 IArray!30109) (csize!30279 Int)) (Empty!15024) )
))
(declare-datatypes ((BalanceConc!29478 0))(
  ( (BalanceConc!29479 (c!845946 Conc!15024)) )
))
(declare-datatypes ((TokenValueInjection!16472 0))(
  ( (TokenValueInjection!16473 (toValue!11223 Int) (toChars!11082 Int)) )
))
(declare-datatypes ((Rule!16344 0))(
  ( (Rule!16345 (regex!8272 Regex!13505) (tag!9136 String!64784) (isSeparator!8272 Bool) (transformation!8272 TokenValueInjection!16472)) )
))
(declare-datatypes ((List!57204 0))(
  ( (Nil!57080) (Cons!57080 (h!63528 Rule!16344) (t!367770 List!57204)) )
))
(declare-fun rulesArg!259 () List!57204)

(declare-fun rulesValidInductive!3175 (LexerInterface!7864 List!57204) Bool)

(assert (=> b!4953527 (= res!2113232 (rulesValidInductive!3175 thiss!15247 rulesArg!259))))

(declare-fun b!4953528 () Bool)

(declare-fun res!2113230 () Bool)

(assert (=> b!4953528 (=> (not res!2113230) (not e!3094964))))

(declare-fun isEmpty!30692 (List!57204) Bool)

(assert (=> b!4953528 (= res!2113230 (not (isEmpty!30692 rulesArg!259)))))

(declare-fun b!4953529 () Bool)

(declare-fun e!3094958 () Bool)

(declare-fun totalInput!464 () BalanceConc!29478)

(declare-fun tp!1388728 () Bool)

(declare-fun inv!74411 (Conc!15024) Bool)

(assert (=> b!4953529 (= e!3094958 (and (inv!74411 (c!845946 totalInput!464)) tp!1388728))))

(declare-fun b!4953530 () Bool)

(declare-fun e!3094965 () Bool)

(assert (=> b!4953530 (= e!3094964 e!3094965)))

(declare-fun res!2113229 () Bool)

(assert (=> b!4953530 (=> (not res!2113229) (not e!3094965))))

(declare-fun lt!2044342 () List!57203)

(declare-fun isSuffix!1071 (List!57203 List!57203) Bool)

(declare-fun list!18204 (BalanceConc!29478) List!57203)

(assert (=> b!4953530 (= res!2113229 (isSuffix!1071 lt!2044342 (list!18204 totalInput!464)))))

(declare-fun input!1342 () BalanceConc!29478)

(assert (=> b!4953530 (= lt!2044342 (list!18204 input!1342))))

(declare-fun b!4953531 () Bool)

(declare-fun e!3094961 () Bool)

(assert (=> b!4953531 (= e!3094965 (not e!3094961))))

(declare-fun res!2113228 () Bool)

(assert (=> b!4953531 (=> res!2113228 e!3094961)))

(get-info :version)

(assert (=> b!4953531 (= res!2113228 (or (not ((_ is Cons!57080) rulesArg!259)) (not ((_ is Nil!57080) (t!367770 rulesArg!259)))))))

(declare-fun isPrefix!5125 (List!57203 List!57203) Bool)

(assert (=> b!4953531 (isPrefix!5125 lt!2044342 lt!2044342)))

(declare-datatypes ((Unit!147973 0))(
  ( (Unit!147974) )
))
(declare-fun lt!2044341 () Unit!147973)

(declare-fun lemmaIsPrefixRefl!3449 (List!57203 List!57203) Unit!147973)

(assert (=> b!4953531 (= lt!2044341 (lemmaIsPrefixRefl!3449 lt!2044342 lt!2044342))))

(declare-fun e!3094962 () Bool)

(declare-fun e!3094960 () Bool)

(declare-fun tp!1388730 () Bool)

(declare-fun b!4953532 () Bool)

(declare-fun inv!74407 (String!64784) Bool)

(declare-fun inv!74412 (TokenValueInjection!16472) Bool)

(assert (=> b!4953532 (= e!3094962 (and tp!1388730 (inv!74407 (tag!9136 (h!63528 rulesArg!259))) (inv!74412 (transformation!8272 (h!63528 rulesArg!259))) e!3094960))))

(declare-fun b!4953533 () Bool)

(declare-fun e!3094957 () Bool)

(declare-fun tp!1388726 () Bool)

(assert (=> b!4953533 (= e!3094957 (and e!3094962 tp!1388726))))

(assert (=> b!4953534 (= e!3094960 (and tp!1388729 tp!1388727))))

(declare-fun res!2113231 () Bool)

(assert (=> start!522060 (=> (not res!2113231) (not e!3094964))))

(assert (=> start!522060 (= res!2113231 ((_ is Lexer!7862) thiss!15247))))

(assert (=> start!522060 e!3094964))

(assert (=> start!522060 true))

(assert (=> start!522060 e!3094957))

(declare-fun e!3094963 () Bool)

(declare-fun inv!74413 (BalanceConc!29478) Bool)

(assert (=> start!522060 (and (inv!74413 input!1342) e!3094963)))

(assert (=> start!522060 (and (inv!74413 totalInput!464) e!3094958)))

(declare-fun b!4953535 () Bool)

(declare-fun tp!1388725 () Bool)

(assert (=> b!4953535 (= e!3094963 (and (inv!74411 (c!845946 input!1342)) tp!1388725))))

(declare-fun b!4953536 () Bool)

(assert (=> b!4953536 (= e!3094961 true)))

(declare-datatypes ((Token!15052 0))(
  ( (Token!15053 (value!265198 TokenValue!8582) (rule!11484 Rule!16344) (size!37882 Int) (originalCharacters!8557 List!57203)) )
))
(declare-datatypes ((tuple2!61606 0))(
  ( (tuple2!61607 (_1!34106 Token!15052) (_2!34106 BalanceConc!29478)) )
))
(declare-datatypes ((Option!14228 0))(
  ( (None!14227) (Some!14227 (v!50212 tuple2!61606)) )
))
(declare-fun lt!2044343 () Option!14228)

(declare-fun maxPrefixOneRuleZipperSequenceV2!260 (LexerInterface!7864 Rule!16344 BalanceConc!29478 BalanceConc!29478) Option!14228)

(assert (=> b!4953536 (= lt!2044343 (maxPrefixOneRuleZipperSequenceV2!260 thiss!15247 (h!63528 rulesArg!259) input!1342 totalInput!464))))

(assert (= (and start!522060 res!2113231) b!4953527))

(assert (= (and b!4953527 res!2113232) b!4953528))

(assert (= (and b!4953528 res!2113230) b!4953530))

(assert (= (and b!4953530 res!2113229) b!4953531))

(assert (= (and b!4953531 (not res!2113228)) b!4953536))

(assert (= b!4953532 b!4953534))

(assert (= b!4953533 b!4953532))

(assert (= (and start!522060 ((_ is Cons!57080) rulesArg!259)) b!4953533))

(assert (= start!522060 b!4953535))

(assert (= start!522060 b!4953529))

(declare-fun m!5978228 () Bool)

(assert (=> b!4953535 m!5978228))

(declare-fun m!5978230 () Bool)

(assert (=> b!4953528 m!5978230))

(declare-fun m!5978232 () Bool)

(assert (=> b!4953531 m!5978232))

(declare-fun m!5978234 () Bool)

(assert (=> b!4953531 m!5978234))

(declare-fun m!5978236 () Bool)

(assert (=> start!522060 m!5978236))

(declare-fun m!5978238 () Bool)

(assert (=> start!522060 m!5978238))

(declare-fun m!5978240 () Bool)

(assert (=> b!4953529 m!5978240))

(declare-fun m!5978242 () Bool)

(assert (=> b!4953532 m!5978242))

(declare-fun m!5978244 () Bool)

(assert (=> b!4953532 m!5978244))

(declare-fun m!5978246 () Bool)

(assert (=> b!4953536 m!5978246))

(declare-fun m!5978248 () Bool)

(assert (=> b!4953530 m!5978248))

(assert (=> b!4953530 m!5978248))

(declare-fun m!5978250 () Bool)

(assert (=> b!4953530 m!5978250))

(declare-fun m!5978252 () Bool)

(assert (=> b!4953530 m!5978252))

(declare-fun m!5978254 () Bool)

(assert (=> b!4953527 m!5978254))

(check-sat (not b_next!132859) (not b!4953527) (not b!4953529) b_and!346921 (not start!522060) (not b!4953532) (not b!4953535) (not b!4953533) (not b!4953528) (not b!4953536) (not b_next!132857) b_and!346919 (not b!4953530) (not b!4953531))
(check-sat b_and!346919 b_and!346921 (not b_next!132857) (not b_next!132859))
