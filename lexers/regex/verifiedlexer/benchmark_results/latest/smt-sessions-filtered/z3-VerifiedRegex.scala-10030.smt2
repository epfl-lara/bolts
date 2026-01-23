; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525122 () Bool)

(assert start!525122)

(declare-fun b!4976567 () Bool)

(declare-fun b_free!132947 () Bool)

(declare-fun b_next!133737 () Bool)

(assert (=> b!4976567 (= b_free!132947 (not b_next!133737))))

(declare-fun tp!1395459 () Bool)

(declare-fun b_and!349359 () Bool)

(assert (=> b!4976567 (= tp!1395459 b_and!349359)))

(declare-fun b_free!132949 () Bool)

(declare-fun b_next!133739 () Bool)

(assert (=> b!4976567 (= b_free!132949 (not b_next!133739))))

(declare-fun tp!1395461 () Bool)

(declare-fun b_and!349361 () Bool)

(assert (=> b!4976567 (= tp!1395461 b_and!349361)))

(declare-fun b!4976565 () Bool)

(declare-fun e!3110259 () Bool)

(declare-fun e!3110262 () Bool)

(assert (=> b!4976565 (= e!3110259 e!3110262)))

(declare-fun res!2124283 () Bool)

(assert (=> b!4976565 (=> (not res!2124283) (not e!3110262))))

(declare-datatypes ((C!27540 0))(
  ( (C!27541 (val!23136 Int)) )
))
(declare-datatypes ((List!57620 0))(
  ( (Nil!57496) (Cons!57496 (h!63944 C!27540) (t!369632 List!57620)) )
))
(declare-fun lt!2055189 () List!57620)

(declare-datatypes ((IArray!30389 0))(
  ( (IArray!30390 (innerList!15252 List!57620)) )
))
(declare-datatypes ((Conc!15164 0))(
  ( (Node!15164 (left!41952 Conc!15164) (right!42282 Conc!15164) (csize!30558 Int) (cheight!15375 Int)) (Leaf!25195 (xs!18490 IArray!30389) (csize!30559 Int)) (Empty!15164) )
))
(declare-datatypes ((BalanceConc!29758 0))(
  ( (BalanceConc!29759 (c!849191 Conc!15164)) )
))
(declare-fun totalInput!520 () BalanceConc!29758)

(declare-fun isSuffix!1211 (List!57620 List!57620) Bool)

(declare-fun list!18404 (BalanceConc!29758) List!57620)

(assert (=> b!4976565 (= res!2124283 (isSuffix!1211 lt!2055189 (list!18404 totalInput!520)))))

(declare-fun input!1580 () BalanceConc!29758)

(assert (=> b!4976565 (= lt!2055189 (list!18404 input!1580))))

(declare-fun b!4976566 () Bool)

(declare-fun res!2124284 () Bool)

(assert (=> b!4976566 (=> (not res!2124284) (not e!3110259))))

(declare-datatypes ((LexerInterface!8004 0))(
  ( (LexerInterfaceExt!8001 (__x!34737 Int)) (Lexer!8002) )
))
(declare-fun thiss!16165 () LexerInterface!8004)

(declare-datatypes ((String!65483 0))(
  ( (String!65484 (value!269148 String)) )
))
(declare-datatypes ((List!57621 0))(
  ( (Nil!57497) (Cons!57497 (h!63945 (_ BitVec 16)) (t!369633 List!57621)) )
))
(declare-datatypes ((Regex!13645 0))(
  ( (ElementMatch!13645 (c!849192 C!27540)) (Concat!22367 (regOne!27802 Regex!13645) (regTwo!27802 Regex!13645)) (EmptyExpr!13645) (Star!13645 (reg!13974 Regex!13645)) (EmptyLang!13645) (Union!13645 (regOne!27803 Regex!13645) (regTwo!27803 Regex!13645)) )
))
(declare-datatypes ((TokenValue!8722 0))(
  ( (FloatLiteralValue!17444 (text!61499 List!57621)) (TokenValueExt!8721 (__x!34738 Int)) (Broken!43610 (value!269149 List!57621)) (Object!8845) (End!8722) (Def!8722) (Underscore!8722) (Match!8722) (Else!8722) (Error!8722) (Case!8722) (If!8722) (Extends!8722) (Abstract!8722) (Class!8722) (Val!8722) (DelimiterValue!17444 (del!8782 List!57621)) (KeywordValue!8728 (value!269150 List!57621)) (CommentValue!17444 (value!269151 List!57621)) (WhitespaceValue!17444 (value!269152 List!57621)) (IndentationValue!8722 (value!269153 List!57621)) (String!65485) (Int32!8722) (Broken!43611 (value!269154 List!57621)) (Boolean!8723) (Unit!148485) (OperatorValue!8725 (op!8782 List!57621)) (IdentifierValue!17444 (value!269155 List!57621)) (IdentifierValue!17445 (value!269156 List!57621)) (WhitespaceValue!17445 (value!269157 List!57621)) (True!17444) (False!17444) (Broken!43612 (value!269158 List!57621)) (Broken!43613 (value!269159 List!57621)) (True!17445) (RightBrace!8722) (RightBracket!8722) (Colon!8722) (Null!8722) (Comma!8722) (LeftBracket!8722) (False!17445) (LeftBrace!8722) (ImaginaryLiteralValue!8722 (text!61500 List!57621)) (StringLiteralValue!26166 (value!269160 List!57621)) (EOFValue!8722 (value!269161 List!57621)) (IdentValue!8722 (value!269162 List!57621)) (DelimiterValue!17445 (value!269163 List!57621)) (DedentValue!8722 (value!269164 List!57621)) (NewLineValue!8722 (value!269165 List!57621)) (IntegerValue!26166 (value!269166 (_ BitVec 32)) (text!61501 List!57621)) (IntegerValue!26167 (value!269167 Int) (text!61502 List!57621)) (Times!8722) (Or!8722) (Equal!8722) (Minus!8722) (Broken!43614 (value!269168 List!57621)) (And!8722) (Div!8722) (LessEqual!8722) (Mod!8722) (Concat!22368) (Not!8722) (Plus!8722) (SpaceValue!8722 (value!269169 List!57621)) (IntegerValue!26168 (value!269170 Int) (text!61503 List!57621)) (StringLiteralValue!26167 (text!61504 List!57621)) (FloatLiteralValue!17445 (text!61505 List!57621)) (BytesLiteralValue!8722 (value!269171 List!57621)) (CommentValue!17445 (value!269172 List!57621)) (StringLiteralValue!26168 (value!269173 List!57621)) (ErrorTokenValue!8722 (msg!8783 List!57621)) )
))
(declare-datatypes ((TokenValueInjection!16752 0))(
  ( (TokenValueInjection!16753 (toValue!11387 Int) (toChars!11246 Int)) )
))
(declare-datatypes ((Rule!16624 0))(
  ( (Rule!16625 (regex!8412 Regex!13645) (tag!9276 String!65483) (isSeparator!8412 Bool) (transformation!8412 TokenValueInjection!16752)) )
))
(declare-fun rule!200 () Rule!16624)

(declare-fun ruleValid!3820 (LexerInterface!8004 Rule!16624) Bool)

(assert (=> b!4976566 (= res!2124284 (ruleValid!3820 thiss!16165 rule!200))))

(declare-fun e!3110258 () Bool)

(assert (=> b!4976567 (= e!3110258 (and tp!1395459 tp!1395461))))

(declare-fun b!4976568 () Bool)

(declare-fun e!3110257 () Bool)

(declare-fun tp!1395460 () Bool)

(declare-fun inv!75198 (Conc!15164) Bool)

(assert (=> b!4976568 (= e!3110257 (and (inv!75198 (c!849191 totalInput!520)) tp!1395460))))

(declare-fun tp!1395462 () Bool)

(declare-fun b!4976569 () Bool)

(declare-fun e!3110263 () Bool)

(declare-fun inv!75194 (String!65483) Bool)

(declare-fun inv!75199 (TokenValueInjection!16752) Bool)

(assert (=> b!4976569 (= e!3110263 (and tp!1395462 (inv!75194 (tag!9276 rule!200)) (inv!75199 (transformation!8412 rule!200)) e!3110258))))

(declare-fun res!2124282 () Bool)

(assert (=> start!525122 (=> (not res!2124282) (not e!3110259))))

(get-info :version)

(assert (=> start!525122 (= res!2124282 ((_ is Lexer!8002) thiss!16165))))

(assert (=> start!525122 e!3110259))

(assert (=> start!525122 true))

(assert (=> start!525122 e!3110263))

(declare-fun inv!75200 (BalanceConc!29758) Bool)

(assert (=> start!525122 (and (inv!75200 totalInput!520) e!3110257)))

(declare-fun e!3110260 () Bool)

(assert (=> start!525122 (and (inv!75200 input!1580) e!3110260)))

(declare-fun b!4976570 () Bool)

(declare-fun res!2124285 () Bool)

(assert (=> b!4976570 (=> (not res!2124285) (not e!3110262))))

(declare-fun isEmpty!30992 (BalanceConc!29758) Bool)

(declare-datatypes ((tuple2!62244 0))(
  ( (tuple2!62245 (_1!34425 BalanceConc!29758) (_2!34425 BalanceConc!29758)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!175 (Regex!13645 BalanceConc!29758 BalanceConc!29758) tuple2!62244)

(assert (=> b!4976570 (= res!2124285 (isEmpty!30992 (_1!34425 (findLongestMatchWithZipperSequenceV2!175 (regex!8412 rule!200) input!1580 totalInput!520))))))

(declare-fun b!4976571 () Bool)

(declare-fun tp!1395458 () Bool)

(assert (=> b!4976571 (= e!3110260 (and (inv!75198 (c!849191 input!1580)) tp!1395458))))

(declare-fun b!4976572 () Bool)

(assert (=> b!4976572 (= e!3110262 false)))

(declare-datatypes ((Token!15304 0))(
  ( (Token!15305 (value!269174 TokenValue!8722) (rule!11672 Rule!16624) (size!38109 Int) (originalCharacters!8683 List!57620)) )
))
(declare-datatypes ((tuple2!62246 0))(
  ( (tuple2!62247 (_1!34426 Token!15304) (_2!34426 List!57620)) )
))
(declare-datatypes ((Option!14470 0))(
  ( (None!14469) (Some!14469 (v!50466 tuple2!62246)) )
))
(declare-fun lt!2055190 () Option!14470)

(declare-fun maxPrefixOneRule!3640 (LexerInterface!8004 Rule!16624 List!57620) Option!14470)

(assert (=> b!4976572 (= lt!2055190 (maxPrefixOneRule!3640 thiss!16165 rule!200 lt!2055189))))

(assert (= (and start!525122 res!2124282) b!4976566))

(assert (= (and b!4976566 res!2124284) b!4976565))

(assert (= (and b!4976565 res!2124283) b!4976570))

(assert (= (and b!4976570 res!2124285) b!4976572))

(assert (= b!4976569 b!4976567))

(assert (= start!525122 b!4976569))

(assert (= start!525122 b!4976568))

(assert (= start!525122 b!4976571))

(declare-fun m!6006768 () Bool)

(assert (=> start!525122 m!6006768))

(declare-fun m!6006770 () Bool)

(assert (=> start!525122 m!6006770))

(declare-fun m!6006772 () Bool)

(assert (=> b!4976566 m!6006772))

(declare-fun m!6006774 () Bool)

(assert (=> b!4976571 m!6006774))

(declare-fun m!6006776 () Bool)

(assert (=> b!4976565 m!6006776))

(assert (=> b!4976565 m!6006776))

(declare-fun m!6006778 () Bool)

(assert (=> b!4976565 m!6006778))

(declare-fun m!6006780 () Bool)

(assert (=> b!4976565 m!6006780))

(declare-fun m!6006782 () Bool)

(assert (=> b!4976569 m!6006782))

(declare-fun m!6006784 () Bool)

(assert (=> b!4976569 m!6006784))

(declare-fun m!6006786 () Bool)

(assert (=> b!4976570 m!6006786))

(declare-fun m!6006788 () Bool)

(assert (=> b!4976570 m!6006788))

(declare-fun m!6006790 () Bool)

(assert (=> b!4976572 m!6006790))

(declare-fun m!6006792 () Bool)

(assert (=> b!4976568 m!6006792))

(check-sat (not b_next!133737) (not b_next!133739) (not b!4976569) (not start!525122) (not b!4976565) b_and!349359 (not b!4976571) (not b!4976568) (not b!4976570) b_and!349361 (not b!4976566) (not b!4976572))
(check-sat b_and!349361 b_and!349359 (not b_next!133739) (not b_next!133737))
