; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522930 () Bool)

(assert start!522930)

(declare-fun b!4959967 () Bool)

(declare-fun b_free!132495 () Bool)

(declare-fun b_next!133285 () Bool)

(assert (=> b!4959967 (= b_free!132495 (not b_next!133285))))

(declare-fun tp!1391135 () Bool)

(declare-fun b_and!347347 () Bool)

(assert (=> b!4959967 (= tp!1391135 b_and!347347)))

(declare-fun b_free!132497 () Bool)

(declare-fun b_next!133287 () Bool)

(assert (=> b!4959967 (= b_free!132497 (not b_next!133287))))

(declare-fun tp!1391136 () Bool)

(declare-fun b_and!347349 () Bool)

(assert (=> b!4959967 (= tp!1391136 b_and!347349)))

(declare-fun b!4959966 () Bool)

(declare-fun e!3099961 () Bool)

(declare-datatypes ((C!27432 0))(
  ( (C!27433 (val!23082 Int)) )
))
(declare-datatypes ((List!57460 0))(
  ( (Nil!57336) (Cons!57336 (h!63784 C!27432) (t!368026 List!57460)) )
))
(declare-datatypes ((IArray!30281 0))(
  ( (IArray!30282 (innerList!15198 List!57460)) )
))
(declare-datatypes ((Conc!15110 0))(
  ( (Node!15110 (left!41815 Conc!15110) (right!42145 Conc!15110) (csize!30450 Int) (cheight!15321 Int)) (Leaf!25114 (xs!18436 IArray!30281) (csize!30451 Int)) (Empty!15110) )
))
(declare-datatypes ((BalanceConc!29650 0))(
  ( (BalanceConc!29651 (c!846473 Conc!15110)) )
))
(declare-fun totalInput!464 () BalanceConc!29650)

(declare-fun tp!1391131 () Bool)

(declare-fun inv!74858 (Conc!15110) Bool)

(assert (=> b!4959966 (= e!3099961 (and (inv!74858 (c!846473 totalInput!464)) tp!1391131))))

(declare-fun e!3099962 () Bool)

(assert (=> b!4959967 (= e!3099962 (and tp!1391135 tp!1391136))))

(declare-fun b!4959968 () Bool)

(declare-fun e!3099963 () Bool)

(declare-fun e!3099954 () Bool)

(assert (=> b!4959968 (= e!3099963 e!3099954)))

(declare-fun res!2116866 () Bool)

(assert (=> b!4959968 (=> res!2116866 e!3099954)))

(declare-datatypes ((List!57461 0))(
  ( (Nil!57337) (Cons!57337 (h!63785 (_ BitVec 16)) (t!368027 List!57461)) )
))
(declare-datatypes ((TokenValue!8668 0))(
  ( (FloatLiteralValue!17336 (text!61121 List!57461)) (TokenValueExt!8667 (__x!34629 Int)) (Broken!43340 (value!267619 List!57461)) (Object!8791) (End!8668) (Def!8668) (Underscore!8668) (Match!8668) (Else!8668) (Error!8668) (Case!8668) (If!8668) (Extends!8668) (Abstract!8668) (Class!8668) (Val!8668) (DelimiterValue!17336 (del!8728 List!57461)) (KeywordValue!8674 (value!267620 List!57461)) (CommentValue!17336 (value!267621 List!57461)) (WhitespaceValue!17336 (value!267622 List!57461)) (IndentationValue!8668 (value!267623 List!57461)) (String!65213) (Int32!8668) (Broken!43341 (value!267624 List!57461)) (Boolean!8669) (Unit!148230) (OperatorValue!8671 (op!8728 List!57461)) (IdentifierValue!17336 (value!267625 List!57461)) (IdentifierValue!17337 (value!267626 List!57461)) (WhitespaceValue!17337 (value!267627 List!57461)) (True!17336) (False!17336) (Broken!43342 (value!267628 List!57461)) (Broken!43343 (value!267629 List!57461)) (True!17337) (RightBrace!8668) (RightBracket!8668) (Colon!8668) (Null!8668) (Comma!8668) (LeftBracket!8668) (False!17337) (LeftBrace!8668) (ImaginaryLiteralValue!8668 (text!61122 List!57461)) (StringLiteralValue!26004 (value!267630 List!57461)) (EOFValue!8668 (value!267631 List!57461)) (IdentValue!8668 (value!267632 List!57461)) (DelimiterValue!17337 (value!267633 List!57461)) (DedentValue!8668 (value!267634 List!57461)) (NewLineValue!8668 (value!267635 List!57461)) (IntegerValue!26004 (value!267636 (_ BitVec 32)) (text!61123 List!57461)) (IntegerValue!26005 (value!267637 Int) (text!61124 List!57461)) (Times!8668) (Or!8668) (Equal!8668) (Minus!8668) (Broken!43344 (value!267638 List!57461)) (And!8668) (Div!8668) (LessEqual!8668) (Mod!8668) (Concat!22259) (Not!8668) (Plus!8668) (SpaceValue!8668 (value!267639 List!57461)) (IntegerValue!26006 (value!267640 Int) (text!61125 List!57461)) (StringLiteralValue!26005 (text!61126 List!57461)) (FloatLiteralValue!17337 (text!61127 List!57461)) (BytesLiteralValue!8668 (value!267641 List!57461)) (CommentValue!17337 (value!267642 List!57461)) (StringLiteralValue!26006 (value!267643 List!57461)) (ErrorTokenValue!8668 (msg!8729 List!57461)) )
))
(declare-datatypes ((Regex!13591 0))(
  ( (ElementMatch!13591 (c!846474 C!27432)) (Concat!22260 (regOne!27694 Regex!13591) (regTwo!27694 Regex!13591)) (EmptyExpr!13591) (Star!13591 (reg!13920 Regex!13591)) (EmptyLang!13591) (Union!13591 (regOne!27695 Regex!13591) (regTwo!27695 Regex!13591)) )
))
(declare-datatypes ((String!65214 0))(
  ( (String!65215 (value!267644 String)) )
))
(declare-datatypes ((TokenValueInjection!16644 0))(
  ( (TokenValueInjection!16645 (toValue!11309 Int) (toChars!11168 Int)) )
))
(declare-datatypes ((Rule!16516 0))(
  ( (Rule!16517 (regex!8358 Regex!13591) (tag!9222 String!65214) (isSeparator!8358 Bool) (transformation!8358 TokenValueInjection!16644)) )
))
(declare-datatypes ((Token!15216 0))(
  ( (Token!15217 (value!267645 TokenValue!8668) (rule!11586 Rule!16516) (size!38004 Int) (originalCharacters!8639 List!57460)) )
))
(declare-datatypes ((tuple2!61996 0))(
  ( (tuple2!61997 (_1!34301 Token!15216) (_2!34301 BalanceConc!29650)) )
))
(declare-datatypes ((Option!14385 0))(
  ( (None!14384) (Some!14384 (v!50369 tuple2!61996)) )
))
(declare-fun lt!2047730 () Option!14385)

(declare-fun lt!2047734 () Option!14385)

(get-info :version)

(assert (=> b!4959968 (= res!2116866 (or (and ((_ is None!14384) lt!2047730) ((_ is None!14384) lt!2047734)) ((_ is None!14384) lt!2047734) ((_ is None!14384) lt!2047730) (>= (size!38004 (_1!34301 (v!50369 lt!2047730))) (size!38004 (_1!34301 (v!50369 lt!2047734))))))))

(declare-fun input!1342 () BalanceConc!29650)

(declare-datatypes ((List!57462 0))(
  ( (Nil!57338) (Cons!57338 (h!63786 Rule!16516) (t!368028 List!57462)) )
))
(declare-fun rulesArg!259 () List!57462)

(declare-datatypes ((LexerInterface!7950 0))(
  ( (LexerInterfaceExt!7947 (__x!34630 Int)) (Lexer!7948) )
))
(declare-fun thiss!15247 () LexerInterface!7950)

(declare-fun maxPrefixZipperSequenceV2!689 (LexerInterface!7950 List!57462 BalanceConc!29650 BalanceConc!29650) Option!14385)

(assert (=> b!4959968 (= lt!2047734 (maxPrefixZipperSequenceV2!689 thiss!15247 (t!368028 rulesArg!259) input!1342 totalInput!464))))

(declare-fun maxPrefixOneRuleZipperSequenceV2!342 (LexerInterface!7950 Rule!16516 BalanceConc!29650 BalanceConc!29650) Option!14385)

(assert (=> b!4959968 (= lt!2047730 (maxPrefixOneRuleZipperSequenceV2!342 thiss!15247 (h!63786 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4959969 () Bool)

(declare-fun e!3099960 () Bool)

(assert (=> b!4959969 (= e!3099960 (not e!3099963))))

(declare-fun res!2116867 () Bool)

(assert (=> b!4959969 (=> res!2116867 e!3099963)))

(assert (=> b!4959969 (= res!2116867 (or (and ((_ is Cons!57338) rulesArg!259) ((_ is Nil!57338) (t!368028 rulesArg!259))) (not ((_ is Cons!57338) rulesArg!259))))))

(declare-fun lt!2047731 () List!57460)

(declare-fun isPrefix!5211 (List!57460 List!57460) Bool)

(assert (=> b!4959969 (isPrefix!5211 lt!2047731 lt!2047731)))

(declare-datatypes ((Unit!148231 0))(
  ( (Unit!148232) )
))
(declare-fun lt!2047732 () Unit!148231)

(declare-fun lemmaIsPrefixRefl!3535 (List!57460 List!57460) Unit!148231)

(assert (=> b!4959969 (= lt!2047732 (lemmaIsPrefixRefl!3535 lt!2047731 lt!2047731))))

(declare-fun b!4959970 () Bool)

(declare-fun e!3099959 () Bool)

(declare-fun e!3099956 () Bool)

(declare-fun tp!1391133 () Bool)

(assert (=> b!4959970 (= e!3099959 (and e!3099956 tp!1391133))))

(declare-fun b!4959971 () Bool)

(declare-fun e!3099958 () Bool)

(assert (=> b!4959971 (= e!3099958 e!3099960)))

(declare-fun res!2116863 () Bool)

(assert (=> b!4959971 (=> (not res!2116863) (not e!3099960))))

(declare-fun isSuffix!1157 (List!57460 List!57460) Bool)

(declare-fun list!18311 (BalanceConc!29650) List!57460)

(assert (=> b!4959971 (= res!2116863 (isSuffix!1157 lt!2047731 (list!18311 totalInput!464)))))

(assert (=> b!4959971 (= lt!2047731 (list!18311 input!1342))))

(declare-fun b!4959972 () Bool)

(declare-fun res!2116865 () Bool)

(assert (=> b!4959972 (=> (not res!2116865) (not e!3099958))))

(declare-fun isEmpty!30846 (List!57462) Bool)

(assert (=> b!4959972 (= res!2116865 (not (isEmpty!30846 rulesArg!259)))))

(declare-fun b!4959973 () Bool)

(declare-fun res!2116868 () Bool)

(assert (=> b!4959973 (=> (not res!2116868) (not e!3099958))))

(declare-fun rulesValidInductive!3261 (LexerInterface!7950 List!57462) Bool)

(assert (=> b!4959973 (= res!2116868 (rulesValidInductive!3261 thiss!15247 rulesArg!259))))

(declare-fun b!4959974 () Bool)

(assert (=> b!4959974 (= e!3099954 true)))

(declare-datatypes ((tuple2!61998 0))(
  ( (tuple2!61999 (_1!34302 Token!15216) (_2!34302 List!57460)) )
))
(declare-datatypes ((Option!14386 0))(
  ( (None!14385) (Some!14385 (v!50370 tuple2!61998)) )
))
(declare-fun lt!2047733 () Option!14386)

(declare-fun maxPrefixZipper!755 (LexerInterface!7950 List!57462 List!57460) Option!14386)

(assert (=> b!4959974 (= lt!2047733 (maxPrefixZipper!755 thiss!15247 rulesArg!259 lt!2047731))))

(declare-fun res!2116864 () Bool)

(assert (=> start!522930 (=> (not res!2116864) (not e!3099958))))

(assert (=> start!522930 (= res!2116864 ((_ is Lexer!7948) thiss!15247))))

(assert (=> start!522930 e!3099958))

(assert (=> start!522930 true))

(assert (=> start!522930 e!3099959))

(declare-fun e!3099957 () Bool)

(declare-fun inv!74859 (BalanceConc!29650) Bool)

(assert (=> start!522930 (and (inv!74859 input!1342) e!3099957)))

(assert (=> start!522930 (and (inv!74859 totalInput!464) e!3099961)))

(declare-fun tp!1391132 () Bool)

(declare-fun b!4959975 () Bool)

(declare-fun inv!74854 (String!65214) Bool)

(declare-fun inv!74860 (TokenValueInjection!16644) Bool)

(assert (=> b!4959975 (= e!3099956 (and tp!1391132 (inv!74854 (tag!9222 (h!63786 rulesArg!259))) (inv!74860 (transformation!8358 (h!63786 rulesArg!259))) e!3099962))))

(declare-fun b!4959976 () Bool)

(declare-fun tp!1391134 () Bool)

(assert (=> b!4959976 (= e!3099957 (and (inv!74858 (c!846473 input!1342)) tp!1391134))))

(assert (= (and start!522930 res!2116864) b!4959973))

(assert (= (and b!4959973 res!2116868) b!4959972))

(assert (= (and b!4959972 res!2116865) b!4959971))

(assert (= (and b!4959971 res!2116863) b!4959969))

(assert (= (and b!4959969 (not res!2116867)) b!4959968))

(assert (= (and b!4959968 (not res!2116866)) b!4959974))

(assert (= b!4959975 b!4959967))

(assert (= b!4959970 b!4959975))

(assert (= (and start!522930 ((_ is Cons!57338) rulesArg!259)) b!4959970))

(assert (= start!522930 b!4959976))

(assert (= start!522930 b!4959966))

(declare-fun m!5984532 () Bool)

(assert (=> b!4959969 m!5984532))

(declare-fun m!5984534 () Bool)

(assert (=> b!4959969 m!5984534))

(declare-fun m!5984536 () Bool)

(assert (=> b!4959973 m!5984536))

(declare-fun m!5984538 () Bool)

(assert (=> b!4959971 m!5984538))

(assert (=> b!4959971 m!5984538))

(declare-fun m!5984540 () Bool)

(assert (=> b!4959971 m!5984540))

(declare-fun m!5984542 () Bool)

(assert (=> b!4959971 m!5984542))

(declare-fun m!5984544 () Bool)

(assert (=> b!4959975 m!5984544))

(declare-fun m!5984546 () Bool)

(assert (=> b!4959975 m!5984546))

(declare-fun m!5984548 () Bool)

(assert (=> b!4959968 m!5984548))

(declare-fun m!5984550 () Bool)

(assert (=> b!4959968 m!5984550))

(declare-fun m!5984552 () Bool)

(assert (=> b!4959966 m!5984552))

(declare-fun m!5984554 () Bool)

(assert (=> b!4959972 m!5984554))

(declare-fun m!5984556 () Bool)

(assert (=> b!4959974 m!5984556))

(declare-fun m!5984558 () Bool)

(assert (=> b!4959976 m!5984558))

(declare-fun m!5984560 () Bool)

(assert (=> start!522930 m!5984560))

(declare-fun m!5984562 () Bool)

(assert (=> start!522930 m!5984562))

(check-sat (not b_next!133285) (not b_next!133287) (not b!4959976) (not b!4959974) (not b!4959971) b_and!347347 (not b!4959970) (not b!4959975) (not b!4959969) (not b!4959973) b_and!347349 (not start!522930) (not b!4959972) (not b!4959968) (not b!4959966))
(check-sat b_and!347347 b_and!347349 (not b_next!133285) (not b_next!133287))
