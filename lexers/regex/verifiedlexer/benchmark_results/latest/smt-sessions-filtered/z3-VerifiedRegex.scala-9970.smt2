; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!522278 () Bool)

(assert start!522278)

(declare-fun b!4954970 () Bool)

(declare-fun b_free!132167 () Bool)

(declare-fun b_next!132957 () Bool)

(assert (=> b!4954970 (= b_free!132167 (not b_next!132957))))

(declare-fun tp!1389320 () Bool)

(declare-fun b_and!347019 () Bool)

(assert (=> b!4954970 (= tp!1389320 b_and!347019)))

(declare-fun b_free!132169 () Bool)

(declare-fun b_next!132959 () Bool)

(assert (=> b!4954970 (= b_free!132169 (not b_next!132959))))

(declare-fun tp!1389322 () Bool)

(declare-fun b_and!347021 () Bool)

(assert (=> b!4954970 (= tp!1389322 b_and!347021)))

(declare-fun b!4954963 () Bool)

(declare-fun e!3096056 () Bool)

(declare-datatypes ((C!27300 0))(
  ( (C!27301 (val!23016 Int)) )
))
(declare-datatypes ((List!57262 0))(
  ( (Nil!57138) (Cons!57138 (h!63586 C!27300) (t!367828 List!57262)) )
))
(declare-datatypes ((IArray!30149 0))(
  ( (IArray!30150 (innerList!15132 List!57262)) )
))
(declare-datatypes ((Conc!15044 0))(
  ( (Node!15044 (left!41684 Conc!15044) (right!42014 Conc!15044) (csize!30318 Int) (cheight!15255 Int)) (Leaf!25015 (xs!18370 IArray!30149) (csize!30319 Int)) (Empty!15044) )
))
(declare-datatypes ((BalanceConc!29518 0))(
  ( (BalanceConc!29519 (c!846059 Conc!15044)) )
))
(declare-fun totalInput!464 () BalanceConc!29518)

(declare-fun tp!1389319 () Bool)

(declare-fun inv!74516 (Conc!15044) Bool)

(assert (=> b!4954963 (= e!3096056 (and (inv!74516 (c!846059 totalInput!464)) tp!1389319))))

(declare-fun b!4954964 () Bool)

(declare-fun e!3096049 () Bool)

(declare-fun e!3096054 () Bool)

(declare-fun tp!1389323 () Bool)

(assert (=> b!4954964 (= e!3096049 (and e!3096054 tp!1389323))))

(declare-fun res!2113985 () Bool)

(declare-fun e!3096052 () Bool)

(assert (=> start!522278 (=> (not res!2113985) (not e!3096052))))

(declare-datatypes ((LexerInterface!7884 0))(
  ( (LexerInterfaceExt!7881 (__x!34497 Int)) (Lexer!7882) )
))
(declare-fun thiss!15247 () LexerInterface!7884)

(get-info :version)

(assert (=> start!522278 (= res!2113985 ((_ is Lexer!7882) thiss!15247))))

(assert (=> start!522278 e!3096052))

(assert (=> start!522278 true))

(assert (=> start!522278 e!3096049))

(declare-fun input!1342 () BalanceConc!29518)

(declare-fun e!3096055 () Bool)

(declare-fun inv!74517 (BalanceConc!29518) Bool)

(assert (=> start!522278 (and (inv!74517 input!1342) e!3096055)))

(assert (=> start!522278 (and (inv!74517 totalInput!464) e!3096056)))

(declare-fun b!4954965 () Bool)

(declare-fun tp!1389324 () Bool)

(assert (=> b!4954965 (= e!3096055 (and (inv!74516 (c!846059 input!1342)) tp!1389324))))

(declare-fun b!4954966 () Bool)

(declare-fun res!2113987 () Bool)

(assert (=> b!4954966 (=> (not res!2113987) (not e!3096052))))

(declare-datatypes ((List!57263 0))(
  ( (Nil!57139) (Cons!57139 (h!63587 (_ BitVec 16)) (t!367829 List!57263)) )
))
(declare-datatypes ((TokenValue!8602 0))(
  ( (FloatLiteralValue!17204 (text!60659 List!57263)) (TokenValueExt!8601 (__x!34498 Int)) (Broken!43010 (value!265738 List!57263)) (Object!8725) (End!8602) (Def!8602) (Underscore!8602) (Match!8602) (Else!8602) (Error!8602) (Case!8602) (If!8602) (Extends!8602) (Abstract!8602) (Class!8602) (Val!8602) (DelimiterValue!17204 (del!8662 List!57263)) (KeywordValue!8608 (value!265739 List!57263)) (CommentValue!17204 (value!265740 List!57263)) (WhitespaceValue!17204 (value!265741 List!57263)) (IndentationValue!8602 (value!265742 List!57263)) (String!64883) (Int32!8602) (Broken!43011 (value!265743 List!57263)) (Boolean!8603) (Unit!148032) (OperatorValue!8605 (op!8662 List!57263)) (IdentifierValue!17204 (value!265744 List!57263)) (IdentifierValue!17205 (value!265745 List!57263)) (WhitespaceValue!17205 (value!265746 List!57263)) (True!17204) (False!17204) (Broken!43012 (value!265747 List!57263)) (Broken!43013 (value!265748 List!57263)) (True!17205) (RightBrace!8602) (RightBracket!8602) (Colon!8602) (Null!8602) (Comma!8602) (LeftBracket!8602) (False!17205) (LeftBrace!8602) (ImaginaryLiteralValue!8602 (text!60660 List!57263)) (StringLiteralValue!25806 (value!265749 List!57263)) (EOFValue!8602 (value!265750 List!57263)) (IdentValue!8602 (value!265751 List!57263)) (DelimiterValue!17205 (value!265752 List!57263)) (DedentValue!8602 (value!265753 List!57263)) (NewLineValue!8602 (value!265754 List!57263)) (IntegerValue!25806 (value!265755 (_ BitVec 32)) (text!60661 List!57263)) (IntegerValue!25807 (value!265756 Int) (text!60662 List!57263)) (Times!8602) (Or!8602) (Equal!8602) (Minus!8602) (Broken!43014 (value!265757 List!57263)) (And!8602) (Div!8602) (LessEqual!8602) (Mod!8602) (Concat!22127) (Not!8602) (Plus!8602) (SpaceValue!8602 (value!265758 List!57263)) (IntegerValue!25808 (value!265759 Int) (text!60663 List!57263)) (StringLiteralValue!25807 (text!60664 List!57263)) (FloatLiteralValue!17205 (text!60665 List!57263)) (BytesLiteralValue!8602 (value!265760 List!57263)) (CommentValue!17205 (value!265761 List!57263)) (StringLiteralValue!25808 (value!265762 List!57263)) (ErrorTokenValue!8602 (msg!8663 List!57263)) )
))
(declare-datatypes ((Regex!13525 0))(
  ( (ElementMatch!13525 (c!846060 C!27300)) (Concat!22128 (regOne!27562 Regex!13525) (regTwo!27562 Regex!13525)) (EmptyExpr!13525) (Star!13525 (reg!13854 Regex!13525)) (EmptyLang!13525) (Union!13525 (regOne!27563 Regex!13525) (regTwo!27563 Regex!13525)) )
))
(declare-datatypes ((String!64884 0))(
  ( (String!64885 (value!265763 String)) )
))
(declare-datatypes ((TokenValueInjection!16512 0))(
  ( (TokenValueInjection!16513 (toValue!11243 Int) (toChars!11102 Int)) )
))
(declare-datatypes ((Rule!16384 0))(
  ( (Rule!16385 (regex!8292 Regex!13525) (tag!9156 String!64884) (isSeparator!8292 Bool) (transformation!8292 TokenValueInjection!16512)) )
))
(declare-datatypes ((List!57264 0))(
  ( (Nil!57140) (Cons!57140 (h!63588 Rule!16384) (t!367830 List!57264)) )
))
(declare-fun rulesArg!259 () List!57264)

(declare-fun isEmpty!30724 (List!57264) Bool)

(assert (=> b!4954966 (= res!2113987 (not (isEmpty!30724 rulesArg!259)))))

(declare-fun e!3096053 () Bool)

(declare-fun b!4954967 () Bool)

(declare-fun tp!1389321 () Bool)

(declare-fun inv!74512 (String!64884) Bool)

(declare-fun inv!74518 (TokenValueInjection!16512) Bool)

(assert (=> b!4954967 (= e!3096054 (and tp!1389321 (inv!74512 (tag!9156 (h!63588 rulesArg!259))) (inv!74518 (transformation!8292 (h!63588 rulesArg!259))) e!3096053))))

(declare-fun b!4954968 () Bool)

(declare-fun e!3096051 () Bool)

(assert (=> b!4954968 (= e!3096052 e!3096051)))

(declare-fun res!2113989 () Bool)

(assert (=> b!4954968 (=> (not res!2113989) (not e!3096051))))

(declare-fun lt!2044987 () List!57262)

(declare-fun isSuffix!1091 (List!57262 List!57262) Bool)

(declare-fun list!18229 (BalanceConc!29518) List!57262)

(assert (=> b!4954968 (= res!2113989 (isSuffix!1091 lt!2044987 (list!18229 totalInput!464)))))

(assert (=> b!4954968 (= lt!2044987 (list!18229 input!1342))))

(declare-fun b!4954969 () Bool)

(declare-fun e!3096050 () Bool)

(assert (=> b!4954969 (= e!3096051 (not e!3096050))))

(declare-fun res!2113988 () Bool)

(assert (=> b!4954969 (=> res!2113988 e!3096050)))

(assert (=> b!4954969 (= res!2113988 (or (and ((_ is Cons!57140) rulesArg!259) ((_ is Nil!57140) (t!367830 rulesArg!259))) (not ((_ is Cons!57140) rulesArg!259))))))

(declare-fun isPrefix!5145 (List!57262 List!57262) Bool)

(assert (=> b!4954969 (isPrefix!5145 lt!2044987 lt!2044987)))

(declare-datatypes ((Unit!148033 0))(
  ( (Unit!148034) )
))
(declare-fun lt!2044988 () Unit!148033)

(declare-fun lemmaIsPrefixRefl!3469 (List!57262 List!57262) Unit!148033)

(assert (=> b!4954969 (= lt!2044988 (lemmaIsPrefixRefl!3469 lt!2044987 lt!2044987))))

(assert (=> b!4954970 (= e!3096053 (and tp!1389320 tp!1389322))))

(declare-fun b!4954971 () Bool)

(assert (=> b!4954971 (= e!3096050 true)))

(declare-datatypes ((Token!15084 0))(
  ( (Token!15085 (value!265764 TokenValue!8602) (rule!11504 Rule!16384) (size!37906 Int) (originalCharacters!8573 List!57262)) )
))
(declare-datatypes ((tuple2!61678 0))(
  ( (tuple2!61679 (_1!34142 Token!15084) (_2!34142 BalanceConc!29518)) )
))
(declare-datatypes ((Option!14258 0))(
  ( (None!14257) (Some!14257 (v!50242 tuple2!61678)) )
))
(declare-fun lt!2044986 () Option!14258)

(declare-fun maxPrefixOneRuleZipperSequenceV2!276 (LexerInterface!7884 Rule!16384 BalanceConc!29518 BalanceConc!29518) Option!14258)

(assert (=> b!4954971 (= lt!2044986 (maxPrefixOneRuleZipperSequenceV2!276 thiss!15247 (h!63588 rulesArg!259) input!1342 totalInput!464))))

(declare-fun b!4954972 () Bool)

(declare-fun res!2113986 () Bool)

(assert (=> b!4954972 (=> (not res!2113986) (not e!3096052))))

(declare-fun rulesValidInductive!3195 (LexerInterface!7884 List!57264) Bool)

(assert (=> b!4954972 (= res!2113986 (rulesValidInductive!3195 thiss!15247 rulesArg!259))))

(assert (= (and start!522278 res!2113985) b!4954972))

(assert (= (and b!4954972 res!2113986) b!4954966))

(assert (= (and b!4954966 res!2113987) b!4954968))

(assert (= (and b!4954968 res!2113989) b!4954969))

(assert (= (and b!4954969 (not res!2113988)) b!4954971))

(assert (= b!4954967 b!4954970))

(assert (= b!4954964 b!4954967))

(assert (= (and start!522278 ((_ is Cons!57140) rulesArg!259)) b!4954964))

(assert (= start!522278 b!4954965))

(assert (= start!522278 b!4954963))

(declare-fun m!5979588 () Bool)

(assert (=> b!4954968 m!5979588))

(assert (=> b!4954968 m!5979588))

(declare-fun m!5979590 () Bool)

(assert (=> b!4954968 m!5979590))

(declare-fun m!5979592 () Bool)

(assert (=> b!4954968 m!5979592))

(declare-fun m!5979594 () Bool)

(assert (=> start!522278 m!5979594))

(declare-fun m!5979596 () Bool)

(assert (=> start!522278 m!5979596))

(declare-fun m!5979598 () Bool)

(assert (=> b!4954971 m!5979598))

(declare-fun m!5979600 () Bool)

(assert (=> b!4954963 m!5979600))

(declare-fun m!5979602 () Bool)

(assert (=> b!4954966 m!5979602))

(declare-fun m!5979604 () Bool)

(assert (=> b!4954965 m!5979604))

(declare-fun m!5979606 () Bool)

(assert (=> b!4954969 m!5979606))

(declare-fun m!5979608 () Bool)

(assert (=> b!4954969 m!5979608))

(declare-fun m!5979610 () Bool)

(assert (=> b!4954972 m!5979610))

(declare-fun m!5979612 () Bool)

(assert (=> b!4954967 m!5979612))

(declare-fun m!5979614 () Bool)

(assert (=> b!4954967 m!5979614))

(check-sat (not b!4954967) b_and!347021 (not b!4954965) (not b_next!132959) (not b!4954971) (not b!4954969) (not b!4954963) (not b!4954968) (not b_next!132957) b_and!347019 (not b!4954972) (not start!522278) (not b!4954966) (not b!4954964))
(check-sat b_and!347019 b_and!347021 (not b_next!132957) (not b_next!132959))
