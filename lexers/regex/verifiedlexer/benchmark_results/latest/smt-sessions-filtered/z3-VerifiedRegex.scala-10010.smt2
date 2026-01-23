; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!523102 () Bool)

(assert start!523102)

(declare-fun b!4961195 () Bool)

(declare-fun b_free!132567 () Bool)

(declare-fun b_next!133357 () Bool)

(assert (=> b!4961195 (= b_free!132567 (not b_next!133357))))

(declare-fun tp!1391542 () Bool)

(declare-fun b_and!347419 () Bool)

(assert (=> b!4961195 (= tp!1391542 b_and!347419)))

(declare-fun b_free!132569 () Bool)

(declare-fun b_next!133359 () Bool)

(assert (=> b!4961195 (= b_free!132569 (not b_next!133359))))

(declare-fun tp!1391544 () Bool)

(declare-fun b_and!347421 () Bool)

(assert (=> b!4961195 (= tp!1391544 b_and!347421)))

(declare-fun b!4961189 () Bool)

(declare-fun e!3100887 () Bool)

(assert (=> b!4961189 (= e!3100887 true)))

(declare-datatypes ((List!57502 0))(
  ( (Nil!57378) (Cons!57378 (h!63826 (_ BitVec 16)) (t!368068 List!57502)) )
))
(declare-datatypes ((TokenValue!8682 0))(
  ( (FloatLiteralValue!17364 (text!61219 List!57502)) (TokenValueExt!8681 (__x!34657 Int)) (Broken!43410 (value!268018 List!57502)) (Object!8805) (End!8682) (Def!8682) (Underscore!8682) (Match!8682) (Else!8682) (Error!8682) (Case!8682) (If!8682) (Extends!8682) (Abstract!8682) (Class!8682) (Val!8682) (DelimiterValue!17364 (del!8742 List!57502)) (KeywordValue!8688 (value!268019 List!57502)) (CommentValue!17364 (value!268020 List!57502)) (WhitespaceValue!17364 (value!268021 List!57502)) (IndentationValue!8682 (value!268022 List!57502)) (String!65283) (Int32!8682) (Broken!43411 (value!268023 List!57502)) (Boolean!8683) (Unit!148272) (OperatorValue!8685 (op!8742 List!57502)) (IdentifierValue!17364 (value!268024 List!57502)) (IdentifierValue!17365 (value!268025 List!57502)) (WhitespaceValue!17365 (value!268026 List!57502)) (True!17364) (False!17364) (Broken!43412 (value!268027 List!57502)) (Broken!43413 (value!268028 List!57502)) (True!17365) (RightBrace!8682) (RightBracket!8682) (Colon!8682) (Null!8682) (Comma!8682) (LeftBracket!8682) (False!17365) (LeftBrace!8682) (ImaginaryLiteralValue!8682 (text!61220 List!57502)) (StringLiteralValue!26046 (value!268029 List!57502)) (EOFValue!8682 (value!268030 List!57502)) (IdentValue!8682 (value!268031 List!57502)) (DelimiterValue!17365 (value!268032 List!57502)) (DedentValue!8682 (value!268033 List!57502)) (NewLineValue!8682 (value!268034 List!57502)) (IntegerValue!26046 (value!268035 (_ BitVec 32)) (text!61221 List!57502)) (IntegerValue!26047 (value!268036 Int) (text!61222 List!57502)) (Times!8682) (Or!8682) (Equal!8682) (Minus!8682) (Broken!43414 (value!268037 List!57502)) (And!8682) (Div!8682) (LessEqual!8682) (Mod!8682) (Concat!22287) (Not!8682) (Plus!8682) (SpaceValue!8682 (value!268038 List!57502)) (IntegerValue!26048 (value!268039 Int) (text!61223 List!57502)) (StringLiteralValue!26047 (text!61224 List!57502)) (FloatLiteralValue!17365 (text!61225 List!57502)) (BytesLiteralValue!8682 (value!268040 List!57502)) (CommentValue!17365 (value!268041 List!57502)) (StringLiteralValue!26048 (value!268042 List!57502)) (ErrorTokenValue!8682 (msg!8743 List!57502)) )
))
(declare-datatypes ((C!27460 0))(
  ( (C!27461 (val!23096 Int)) )
))
(declare-datatypes ((Regex!13605 0))(
  ( (ElementMatch!13605 (c!846579 C!27460)) (Concat!22288 (regOne!27722 Regex!13605) (regTwo!27722 Regex!13605)) (EmptyExpr!13605) (Star!13605 (reg!13934 Regex!13605)) (EmptyLang!13605) (Union!13605 (regOne!27723 Regex!13605) (regTwo!27723 Regex!13605)) )
))
(declare-datatypes ((String!65284 0))(
  ( (String!65285 (value!268043 String)) )
))
(declare-datatypes ((List!57503 0))(
  ( (Nil!57379) (Cons!57379 (h!63827 C!27460) (t!368069 List!57503)) )
))
(declare-datatypes ((IArray!30309 0))(
  ( (IArray!30310 (innerList!15212 List!57503)) )
))
(declare-datatypes ((Conc!15124 0))(
  ( (Node!15124 (left!41844 Conc!15124) (right!42174 Conc!15124) (csize!30478 Int) (cheight!15335 Int)) (Leaf!25135 (xs!18450 IArray!30309) (csize!30479 Int)) (Empty!15124) )
))
(declare-datatypes ((BalanceConc!29678 0))(
  ( (BalanceConc!29679 (c!846580 Conc!15124)) )
))
(declare-datatypes ((TokenValueInjection!16672 0))(
  ( (TokenValueInjection!16673 (toValue!11323 Int) (toChars!11182 Int)) )
))
(declare-datatypes ((Rule!16544 0))(
  ( (Rule!16545 (regex!8372 Regex!13605) (tag!9236 String!65284) (isSeparator!8372 Bool) (transformation!8372 TokenValueInjection!16672)) )
))
(declare-datatypes ((Token!15244 0))(
  ( (Token!15245 (value!268044 TokenValue!8682) (rule!11604 Rule!16544) (size!38026 Int) (originalCharacters!8653 List!57503)) )
))
(declare-datatypes ((tuple2!62066 0))(
  ( (tuple2!62067 (_1!34336 Token!15244) (_2!34336 List!57503)) )
))
(declare-datatypes ((Option!14412 0))(
  ( (None!14411) (Some!14411 (v!50396 tuple2!62066)) )
))
(declare-fun lt!2048430 () Option!14412)

(declare-datatypes ((List!57504 0))(
  ( (Nil!57380) (Cons!57380 (h!63828 Rule!16544) (t!368070 List!57504)) )
))
(declare-fun rulesArg!259 () List!57504)

(declare-fun lt!2048428 () List!57503)

(declare-datatypes ((LexerInterface!7964 0))(
  ( (LexerInterfaceExt!7961 (__x!34658 Int)) (Lexer!7962) )
))
(declare-fun thiss!15247 () LexerInterface!7964)

(declare-fun maxPrefixZipper!769 (LexerInterface!7964 List!57504 List!57503) Option!14412)

(assert (=> b!4961189 (= lt!2048430 (maxPrefixZipper!769 thiss!15247 rulesArg!259 lt!2048428))))

(declare-fun b!4961190 () Bool)

(declare-fun e!3100885 () Bool)

(assert (=> b!4961190 (= e!3100885 (not e!3100887))))

(declare-fun res!2117583 () Bool)

(assert (=> b!4961190 (=> res!2117583 e!3100887)))

(get-info :version)

(assert (=> b!4961190 (= res!2117583 (or (and ((_ is Cons!57380) rulesArg!259) ((_ is Nil!57380) (t!368070 rulesArg!259))) ((_ is Cons!57380) rulesArg!259)))))

(declare-fun isPrefix!5225 (List!57503 List!57503) Bool)

(assert (=> b!4961190 (isPrefix!5225 lt!2048428 lt!2048428)))

(declare-datatypes ((Unit!148273 0))(
  ( (Unit!148274) )
))
(declare-fun lt!2048429 () Unit!148273)

(declare-fun lemmaIsPrefixRefl!3549 (List!57503 List!57503) Unit!148273)

(assert (=> b!4961190 (= lt!2048429 (lemmaIsPrefixRefl!3549 lt!2048428 lt!2048428))))

(declare-fun e!3100890 () Bool)

(declare-fun b!4961191 () Bool)

(declare-fun tp!1391539 () Bool)

(declare-fun e!3100883 () Bool)

(declare-fun inv!74929 (String!65284) Bool)

(declare-fun inv!74933 (TokenValueInjection!16672) Bool)

(assert (=> b!4961191 (= e!3100890 (and tp!1391539 (inv!74929 (tag!9236 (h!63828 rulesArg!259))) (inv!74933 (transformation!8372 (h!63828 rulesArg!259))) e!3100883))))

(declare-fun b!4961192 () Bool)

(declare-fun e!3100886 () Bool)

(declare-fun input!1342 () BalanceConc!29678)

(declare-fun tp!1391543 () Bool)

(declare-fun inv!74934 (Conc!15124) Bool)

(assert (=> b!4961192 (= e!3100886 (and (inv!74934 (c!846580 input!1342)) tp!1391543))))

(declare-fun b!4961193 () Bool)

(declare-fun e!3100884 () Bool)

(assert (=> b!4961193 (= e!3100884 e!3100885)))

(declare-fun res!2117584 () Bool)

(assert (=> b!4961193 (=> (not res!2117584) (not e!3100885))))

(declare-fun totalInput!464 () BalanceConc!29678)

(declare-fun isSuffix!1171 (List!57503 List!57503) Bool)

(declare-fun list!18329 (BalanceConc!29678) List!57503)

(assert (=> b!4961193 (= res!2117584 (isSuffix!1171 lt!2048428 (list!18329 totalInput!464)))))

(assert (=> b!4961193 (= lt!2048428 (list!18329 input!1342))))

(declare-fun b!4961194 () Bool)

(declare-fun res!2117580 () Bool)

(assert (=> b!4961194 (=> (not res!2117580) (not e!3100884))))

(declare-fun isEmpty!30876 (List!57504) Bool)

(assert (=> b!4961194 (= res!2117580 (not (isEmpty!30876 rulesArg!259)))))

(assert (=> b!4961195 (= e!3100883 (and tp!1391542 tp!1391544))))

(declare-fun b!4961196 () Bool)

(declare-fun e!3100888 () Bool)

(declare-fun tp!1391541 () Bool)

(assert (=> b!4961196 (= e!3100888 (and e!3100890 tp!1391541))))

(declare-fun b!4961197 () Bool)

(declare-fun e!3100889 () Bool)

(declare-fun tp!1391540 () Bool)

(assert (=> b!4961197 (= e!3100889 (and (inv!74934 (c!846580 totalInput!464)) tp!1391540))))

(declare-fun b!4961198 () Bool)

(declare-fun res!2117581 () Bool)

(assert (=> b!4961198 (=> (not res!2117581) (not e!3100884))))

(declare-fun rulesValidInductive!3275 (LexerInterface!7964 List!57504) Bool)

(assert (=> b!4961198 (= res!2117581 (rulesValidInductive!3275 thiss!15247 rulesArg!259))))

(declare-fun res!2117582 () Bool)

(assert (=> start!523102 (=> (not res!2117582) (not e!3100884))))

(assert (=> start!523102 (= res!2117582 ((_ is Lexer!7962) thiss!15247))))

(assert (=> start!523102 e!3100884))

(assert (=> start!523102 true))

(assert (=> start!523102 e!3100888))

(declare-fun inv!74935 (BalanceConc!29678) Bool)

(assert (=> start!523102 (and (inv!74935 input!1342) e!3100886)))

(assert (=> start!523102 (and (inv!74935 totalInput!464) e!3100889)))

(assert (= (and start!523102 res!2117582) b!4961198))

(assert (= (and b!4961198 res!2117581) b!4961194))

(assert (= (and b!4961194 res!2117580) b!4961193))

(assert (= (and b!4961193 res!2117584) b!4961190))

(assert (= (and b!4961190 (not res!2117583)) b!4961189))

(assert (= b!4961191 b!4961195))

(assert (= b!4961196 b!4961191))

(assert (= (and start!523102 ((_ is Cons!57380) rulesArg!259)) b!4961196))

(assert (= start!523102 b!4961192))

(assert (= start!523102 b!4961197))

(declare-fun m!5985752 () Bool)

(assert (=> b!4961194 m!5985752))

(declare-fun m!5985754 () Bool)

(assert (=> b!4961192 m!5985754))

(declare-fun m!5985756 () Bool)

(assert (=> b!4961190 m!5985756))

(declare-fun m!5985758 () Bool)

(assert (=> b!4961190 m!5985758))

(declare-fun m!5985760 () Bool)

(assert (=> b!4961197 m!5985760))

(declare-fun m!5985762 () Bool)

(assert (=> b!4961193 m!5985762))

(assert (=> b!4961193 m!5985762))

(declare-fun m!5985764 () Bool)

(assert (=> b!4961193 m!5985764))

(declare-fun m!5985766 () Bool)

(assert (=> b!4961193 m!5985766))

(declare-fun m!5985768 () Bool)

(assert (=> start!523102 m!5985768))

(declare-fun m!5985770 () Bool)

(assert (=> start!523102 m!5985770))

(declare-fun m!5985772 () Bool)

(assert (=> b!4961189 m!5985772))

(declare-fun m!5985774 () Bool)

(assert (=> b!4961198 m!5985774))

(declare-fun m!5985776 () Bool)

(assert (=> b!4961191 m!5985776))

(declare-fun m!5985778 () Bool)

(assert (=> b!4961191 m!5985778))

(check-sat (not b_next!133357) (not b!4961197) (not b!4961191) (not b!4961194) (not start!523102) (not b!4961190) (not b!4961192) (not b_next!133359) (not b!4961189) b_and!347421 (not b!4961196) (not b!4961193) b_and!347419 (not b!4961198))
(check-sat b_and!347419 b_and!347421 (not b_next!133357) (not b_next!133359))
