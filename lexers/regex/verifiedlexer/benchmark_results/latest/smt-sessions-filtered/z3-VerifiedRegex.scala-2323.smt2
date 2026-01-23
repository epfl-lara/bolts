; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115022 () Bool)

(assert start!115022)

(declare-fun b!1302076 () Bool)

(declare-fun b_free!31011 () Bool)

(declare-fun b_next!31715 () Bool)

(assert (=> b!1302076 (= b_free!31011 (not b_next!31715))))

(declare-fun tp!380002 () Bool)

(declare-fun b_and!86863 () Bool)

(assert (=> b!1302076 (= tp!380002 b_and!86863)))

(declare-fun b_free!31013 () Bool)

(declare-fun b_next!31717 () Bool)

(assert (=> b!1302076 (= b_free!31013 (not b_next!31717))))

(declare-fun tp!380001 () Bool)

(declare-fun b_and!86865 () Bool)

(assert (=> b!1302076 (= tp!380001 b_and!86865)))

(declare-fun b!1302068 () Bool)

(declare-fun b_free!31015 () Bool)

(declare-fun b_next!31719 () Bool)

(assert (=> b!1302068 (= b_free!31015 (not b_next!31719))))

(declare-fun tp!379997 () Bool)

(declare-fun b_and!86867 () Bool)

(assert (=> b!1302068 (= tp!379997 b_and!86867)))

(declare-fun b_free!31017 () Bool)

(declare-fun b_next!31721 () Bool)

(assert (=> b!1302068 (= b_free!31017 (not b_next!31721))))

(declare-fun tp!379991 () Bool)

(declare-fun b_and!86869 () Bool)

(assert (=> b!1302068 (= tp!379991 b_and!86869)))

(declare-fun b!1302088 () Bool)

(declare-fun b_free!31019 () Bool)

(declare-fun b_next!31723 () Bool)

(assert (=> b!1302088 (= b_free!31019 (not b_next!31723))))

(declare-fun tp!379993 () Bool)

(declare-fun b_and!86871 () Bool)

(assert (=> b!1302088 (= tp!379993 b_and!86871)))

(declare-fun b_free!31021 () Bool)

(declare-fun b_next!31725 () Bool)

(assert (=> b!1302088 (= b_free!31021 (not b_next!31725))))

(declare-fun tp!379999 () Bool)

(declare-fun b_and!86873 () Bool)

(assert (=> b!1302088 (= tp!379999 b_and!86873)))

(declare-fun b!1302081 () Bool)

(assert (=> b!1302081 true))

(assert (=> b!1302081 true))

(declare-fun b!1302083 () Bool)

(assert (=> b!1302083 true))

(declare-fun b!1302067 () Bool)

(declare-fun res!583264 () Bool)

(declare-fun e!834841 () Bool)

(assert (=> b!1302067 (=> (not res!583264) (not e!834841))))

(declare-datatypes ((C!7428 0))(
  ( (C!7429 (val!4274 Int)) )
))
(declare-datatypes ((List!13129 0))(
  ( (Nil!13063) (Cons!13063 (h!18464 C!7428) (t!117690 List!13129)) )
))
(declare-datatypes ((IArray!8579 0))(
  ( (IArray!8580 (innerList!4347 List!13129)) )
))
(declare-datatypes ((List!13130 0))(
  ( (Nil!13064) (Cons!13064 (h!18465 (_ BitVec 16)) (t!117691 List!13130)) )
))
(declare-datatypes ((Conc!4287 0))(
  ( (Node!4287 (left!11232 Conc!4287) (right!11562 Conc!4287) (csize!8804 Int) (cheight!4498 Int)) (Leaf!6611 (xs!7002 IArray!8579) (csize!8805 Int)) (Empty!4287) )
))
(declare-datatypes ((BalanceConc!8514 0))(
  ( (BalanceConc!8515 (c!214235 Conc!4287)) )
))
(declare-datatypes ((TokenValue!2345 0))(
  ( (FloatLiteralValue!4690 (text!16860 List!13130)) (TokenValueExt!2344 (__x!8519 Int)) (Broken!11725 (value!73874 List!13130)) (Object!2410) (End!2345) (Def!2345) (Underscore!2345) (Match!2345) (Else!2345) (Error!2345) (Case!2345) (If!2345) (Extends!2345) (Abstract!2345) (Class!2345) (Val!2345) (DelimiterValue!4690 (del!2405 List!13130)) (KeywordValue!2351 (value!73875 List!13130)) (CommentValue!4690 (value!73876 List!13130)) (WhitespaceValue!4690 (value!73877 List!13130)) (IndentationValue!2345 (value!73878 List!13130)) (String!15960) (Int32!2345) (Broken!11726 (value!73879 List!13130)) (Boolean!2346) (Unit!19185) (OperatorValue!2348 (op!2405 List!13130)) (IdentifierValue!4690 (value!73880 List!13130)) (IdentifierValue!4691 (value!73881 List!13130)) (WhitespaceValue!4691 (value!73882 List!13130)) (True!4690) (False!4690) (Broken!11727 (value!73883 List!13130)) (Broken!11728 (value!73884 List!13130)) (True!4691) (RightBrace!2345) (RightBracket!2345) (Colon!2345) (Null!2345) (Comma!2345) (LeftBracket!2345) (False!4691) (LeftBrace!2345) (ImaginaryLiteralValue!2345 (text!16861 List!13130)) (StringLiteralValue!7035 (value!73885 List!13130)) (EOFValue!2345 (value!73886 List!13130)) (IdentValue!2345 (value!73887 List!13130)) (DelimiterValue!4691 (value!73888 List!13130)) (DedentValue!2345 (value!73889 List!13130)) (NewLineValue!2345 (value!73890 List!13130)) (IntegerValue!7035 (value!73891 (_ BitVec 32)) (text!16862 List!13130)) (IntegerValue!7036 (value!73892 Int) (text!16863 List!13130)) (Times!2345) (Or!2345) (Equal!2345) (Minus!2345) (Broken!11729 (value!73893 List!13130)) (And!2345) (Div!2345) (LessEqual!2345) (Mod!2345) (Concat!5914) (Not!2345) (Plus!2345) (SpaceValue!2345 (value!73894 List!13130)) (IntegerValue!7037 (value!73895 Int) (text!16864 List!13130)) (StringLiteralValue!7036 (text!16865 List!13130)) (FloatLiteralValue!4691 (text!16866 List!13130)) (BytesLiteralValue!2345 (value!73896 List!13130)) (CommentValue!4691 (value!73897 List!13130)) (StringLiteralValue!7037 (value!73898 List!13130)) (ErrorTokenValue!2345 (msg!2406 List!13130)) )
))
(declare-datatypes ((Regex!3569 0))(
  ( (ElementMatch!3569 (c!214236 C!7428)) (Concat!5915 (regOne!7650 Regex!3569) (regTwo!7650 Regex!3569)) (EmptyExpr!3569) (Star!3569 (reg!3898 Regex!3569)) (EmptyLang!3569) (Union!3569 (regOne!7651 Regex!3569) (regTwo!7651 Regex!3569)) )
))
(declare-datatypes ((String!15961 0))(
  ( (String!15962 (value!73899 String)) )
))
(declare-datatypes ((TokenValueInjection!4350 0))(
  ( (TokenValueInjection!4351 (toValue!3470 Int) (toChars!3329 Int)) )
))
(declare-datatypes ((Rule!4310 0))(
  ( (Rule!4311 (regex!2255 Regex!3569) (tag!2517 String!15961) (isSeparator!2255 Bool) (transformation!2255 TokenValueInjection!4350)) )
))
(declare-datatypes ((Token!4172 0))(
  ( (Token!4173 (value!73900 TokenValue!2345) (rule!3994 Rule!4310) (size!10676 Int) (originalCharacters!3117 List!13129)) )
))
(declare-fun t1!34 () Token!4172)

(declare-datatypes ((LexerInterface!1950 0))(
  ( (LexerInterfaceExt!1947 (__x!8520 Int)) (Lexer!1948) )
))
(declare-fun thiss!19762 () LexerInterface!1950)

(declare-fun t2!34 () Token!4172)

(declare-datatypes ((List!13131 0))(
  ( (Nil!13065) (Cons!13065 (h!18466 Rule!4310) (t!117692 List!13131)) )
))
(declare-fun rules!2550 () List!13131)

(declare-fun separableTokensPredicate!233 (LexerInterface!1950 Token!4172 Token!4172 List!13131) Bool)

(assert (=> b!1302067 (= res!583264 (not (separableTokensPredicate!233 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun e!834843 () Bool)

(assert (=> b!1302068 (= e!834843 (and tp!379997 tp!379991))))

(declare-fun res!583260 () Bool)

(declare-fun e!834826 () Bool)

(assert (=> start!115022 (=> (not res!583260) (not e!834826))))

(get-info :version)

(assert (=> start!115022 (= res!583260 ((_ is Lexer!1948) thiss!19762))))

(assert (=> start!115022 e!834826))

(assert (=> start!115022 true))

(declare-fun e!834836 () Bool)

(assert (=> start!115022 e!834836))

(declare-fun e!834828 () Bool)

(declare-fun inv!17493 (Token!4172) Bool)

(assert (=> start!115022 (and (inv!17493 t1!34) e!834828)))

(declare-fun e!834831 () Bool)

(assert (=> start!115022 (and (inv!17493 t2!34) e!834831)))

(declare-fun b!1302069 () Bool)

(declare-fun res!583261 () Bool)

(declare-fun e!834830 () Bool)

(assert (=> b!1302069 (=> res!583261 e!834830)))

(declare-fun lt!428109 () List!13129)

(declare-fun lt!428110 () C!7428)

(declare-fun contains!2195 (List!13129 C!7428) Bool)

(assert (=> b!1302069 (= res!583261 (not (contains!2195 lt!428109 lt!428110)))))

(declare-fun b!1302070 () Bool)

(declare-fun res!583272 () Bool)

(assert (=> b!1302070 (=> (not res!583272) (not e!834826))))

(declare-fun isEmpty!7753 (List!13131) Bool)

(assert (=> b!1302070 (= res!583272 (not (isEmpty!7753 rules!2550)))))

(declare-fun e!834827 () Bool)

(declare-fun tp!379998 () Bool)

(declare-fun b!1302071 () Bool)

(declare-fun inv!21 (TokenValue!2345) Bool)

(assert (=> b!1302071 (= e!834828 (and (inv!21 (value!73900 t1!34)) e!834827 tp!379998))))

(declare-fun b!1302072 () Bool)

(declare-fun e!834829 () Bool)

(declare-fun e!834840 () Bool)

(assert (=> b!1302072 (= e!834829 e!834840)))

(declare-fun res!583259 () Bool)

(assert (=> b!1302072 (=> res!583259 e!834840)))

(declare-fun lt!428102 () List!13129)

(declare-fun ++!3326 (List!13129 List!13129) List!13129)

(declare-fun getSuffix!425 (List!13129 List!13129) List!13129)

(assert (=> b!1302072 (= res!583259 (not (= lt!428109 (++!3326 lt!428102 (getSuffix!425 lt!428109 lt!428102)))))))

(declare-fun lambda!51381 () Int)

(declare-fun pickWitness!32 (Int) List!13129)

(assert (=> b!1302072 (= lt!428109 (pickWitness!32 lambda!51381))))

(declare-fun e!834834 () Bool)

(declare-fun b!1302073 () Bool)

(declare-fun tp!380000 () Bool)

(declare-fun inv!17490 (String!15961) Bool)

(declare-fun inv!17494 (TokenValueInjection!4350) Bool)

(assert (=> b!1302073 (= e!834827 (and tp!380000 (inv!17490 (tag!2517 (rule!3994 t1!34))) (inv!17494 (transformation!2255 (rule!3994 t1!34))) e!834834))))

(declare-fun b!1302074 () Bool)

(declare-fun e!834832 () Bool)

(declare-fun tp!379996 () Bool)

(assert (=> b!1302074 (= e!834836 (and e!834832 tp!379996))))

(declare-fun b!1302075 () Bool)

(declare-fun res!583268 () Bool)

(assert (=> b!1302075 (=> (not res!583268) (not e!834826))))

(declare-fun rulesProduceIndividualToken!919 (LexerInterface!1950 List!13131 Token!4172) Bool)

(assert (=> b!1302075 (= res!583268 (rulesProduceIndividualToken!919 thiss!19762 rules!2550 t2!34))))

(assert (=> b!1302076 (= e!834834 (and tp!380002 tp!380001))))

(declare-fun b!1302077 () Bool)

(assert (=> b!1302077 (= e!834826 e!834841)))

(declare-fun res!583263 () Bool)

(assert (=> b!1302077 (=> (not res!583263) (not e!834841))))

(declare-fun lt!428104 () BalanceConc!8514)

(declare-fun size!10677 (BalanceConc!8514) Int)

(assert (=> b!1302077 (= res!583263 (> (size!10677 lt!428104) 0))))

(declare-fun charsOf!1227 (Token!4172) BalanceConc!8514)

(assert (=> b!1302077 (= lt!428104 (charsOf!1227 t2!34))))

(declare-fun b!1302078 () Bool)

(declare-fun res!583258 () Bool)

(assert (=> b!1302078 (=> (not res!583258) (not e!834826))))

(assert (=> b!1302078 (= res!583258 (not (= (isSeparator!2255 (rule!3994 t1!34)) (isSeparator!2255 (rule!3994 t2!34)))))))

(declare-fun b!1302079 () Bool)

(declare-fun res!583269 () Bool)

(assert (=> b!1302079 (=> (not res!583269) (not e!834826))))

(declare-fun rulesInvariant!1820 (LexerInterface!1950 List!13131) Bool)

(assert (=> b!1302079 (= res!583269 (rulesInvariant!1820 thiss!19762 rules!2550))))

(declare-fun b!1302080 () Bool)

(declare-fun res!583257 () Bool)

(assert (=> b!1302080 (=> res!583257 e!834830)))

(declare-fun lt!428108 () Regex!3569)

(declare-fun matchR!1571 (Regex!3569 List!13129) Bool)

(assert (=> b!1302080 (= res!583257 (not (matchR!1571 lt!428108 lt!428109)))))

(declare-fun e!834839 () Bool)

(assert (=> b!1302081 (= e!834839 (not e!834829))))

(declare-fun res!583270 () Bool)

(assert (=> b!1302081 (=> res!583270 e!834829)))

(declare-fun Exists!727 (Int) Bool)

(assert (=> b!1302081 (= res!583270 (not (Exists!727 lambda!51381)))))

(assert (=> b!1302081 (Exists!727 lambda!51381)))

(declare-datatypes ((Unit!19186 0))(
  ( (Unit!19187) )
))
(declare-fun lt!428106 () Unit!19186)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!45 (Regex!3569 List!13129) Unit!19186)

(assert (=> b!1302081 (= lt!428106 (lemmaPrefixMatchThenExistsStringThatMatches!45 lt!428108 lt!428102))))

(declare-fun b!1302082 () Bool)

(declare-fun tp!379995 () Bool)

(assert (=> b!1302082 (= e!834832 (and tp!379995 (inv!17490 (tag!2517 (h!18466 rules!2550))) (inv!17494 (transformation!2255 (h!18466 rules!2550))) e!834843))))

(declare-fun e!834846 () Bool)

(assert (=> b!1302083 (= e!834830 e!834846)))

(declare-fun res!583262 () Bool)

(assert (=> b!1302083 (=> res!583262 e!834846)))

(declare-fun lambda!51382 () Int)

(declare-fun lambda!51383 () Int)

(declare-datatypes ((List!13132 0))(
  ( (Nil!13066) (Cons!13066 (h!18467 Regex!3569) (t!117693 List!13132)) )
))
(declare-fun exists!215 (List!13132 Int) Bool)

(declare-fun map!2849 (List!13131 Int) List!13132)

(assert (=> b!1302083 (= res!583262 (not (exists!215 (map!2849 rules!2550 lambda!51382) lambda!51383)))))

(declare-fun lt!428103 () List!13132)

(assert (=> b!1302083 (exists!215 lt!428103 lambda!51383)))

(declare-fun lt!428101 () Unit!19186)

(declare-fun matchRGenUnionSpec!6 (Regex!3569 List!13132 List!13129) Unit!19186)

(assert (=> b!1302083 (= lt!428101 (matchRGenUnionSpec!6 lt!428108 lt!428103 lt!428109))))

(assert (=> b!1302083 (= lt!428103 (map!2849 rules!2550 lambda!51382))))

(declare-fun b!1302084 () Bool)

(declare-fun res!583274 () Bool)

(assert (=> b!1302084 (=> res!583274 e!834830)))

(declare-fun lt!428107 () C!7428)

(assert (=> b!1302084 (= res!583274 (not (contains!2195 lt!428109 lt!428107)))))

(declare-fun b!1302085 () Bool)

(declare-fun res!583271 () Bool)

(assert (=> b!1302085 (=> (not res!583271) (not e!834841))))

(declare-fun sepAndNonSepRulesDisjointChars!628 (List!13131 List!13131) Bool)

(assert (=> b!1302085 (= res!583271 (sepAndNonSepRulesDisjointChars!628 rules!2550 rules!2550))))

(declare-fun b!1302086 () Bool)

(assert (=> b!1302086 (= e!834840 e!834830)))

(declare-fun res!583265 () Bool)

(assert (=> b!1302086 (=> res!583265 e!834830)))

(assert (=> b!1302086 (= res!583265 (not (contains!2195 lt!428102 lt!428107)))))

(declare-fun lt!428100 () BalanceConc!8514)

(declare-fun apply!2921 (BalanceConc!8514 Int) C!7428)

(assert (=> b!1302086 (= lt!428107 (apply!2921 lt!428100 0))))

(declare-fun b!1302087 () Bool)

(assert (=> b!1302087 (= e!834846 (exists!215 (map!2849 rules!2550 lambda!51382) lambda!51383))))

(declare-fun e!834842 () Bool)

(assert (=> b!1302088 (= e!834842 (and tp!379993 tp!379999))))

(declare-fun b!1302089 () Bool)

(assert (=> b!1302089 (= e!834841 e!834839)))

(declare-fun res!583267 () Bool)

(assert (=> b!1302089 (=> (not res!583267) (not e!834839))))

(declare-fun prefixMatch!82 (Regex!3569 List!13129) Bool)

(assert (=> b!1302089 (= res!583267 (prefixMatch!82 lt!428108 lt!428102))))

(declare-fun rulesRegex!140 (LexerInterface!1950 List!13131) Regex!3569)

(assert (=> b!1302089 (= lt!428108 (rulesRegex!140 thiss!19762 rules!2550))))

(declare-fun lt!428105 () List!13129)

(assert (=> b!1302089 (= lt!428102 (++!3326 lt!428105 (Cons!13063 lt!428110 Nil!13063)))))

(assert (=> b!1302089 (= lt!428110 (apply!2921 lt!428104 0))))

(declare-fun list!4897 (BalanceConc!8514) List!13129)

(assert (=> b!1302089 (= lt!428105 (list!4897 lt!428100))))

(assert (=> b!1302089 (= lt!428100 (charsOf!1227 t1!34))))

(declare-fun tp!379994 () Bool)

(declare-fun e!834845 () Bool)

(declare-fun b!1302090 () Bool)

(assert (=> b!1302090 (= e!834845 (and tp!379994 (inv!17490 (tag!2517 (rule!3994 t2!34))) (inv!17494 (transformation!2255 (rule!3994 t2!34))) e!834842))))

(declare-fun b!1302091 () Bool)

(declare-fun res!583273 () Bool)

(assert (=> b!1302091 (=> res!583273 e!834830)))

(assert (=> b!1302091 (= res!583273 (not (contains!2195 lt!428102 lt!428110)))))

(declare-fun b!1302092 () Bool)

(declare-fun res!583266 () Bool)

(assert (=> b!1302092 (=> (not res!583266) (not e!834826))))

(assert (=> b!1302092 (= res!583266 (rulesProduceIndividualToken!919 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1302093 () Bool)

(declare-fun tp!379992 () Bool)

(assert (=> b!1302093 (= e!834831 (and (inv!21 (value!73900 t2!34)) e!834845 tp!379992))))

(assert (= (and start!115022 res!583260) b!1302070))

(assert (= (and b!1302070 res!583272) b!1302079))

(assert (= (and b!1302079 res!583269) b!1302092))

(assert (= (and b!1302092 res!583266) b!1302075))

(assert (= (and b!1302075 res!583268) b!1302078))

(assert (= (and b!1302078 res!583258) b!1302077))

(assert (= (and b!1302077 res!583263) b!1302085))

(assert (= (and b!1302085 res!583271) b!1302067))

(assert (= (and b!1302067 res!583264) b!1302089))

(assert (= (and b!1302089 res!583267) b!1302081))

(assert (= (and b!1302081 (not res!583270)) b!1302072))

(assert (= (and b!1302072 (not res!583259)) b!1302086))

(assert (= (and b!1302086 (not res!583265)) b!1302084))

(assert (= (and b!1302084 (not res!583274)) b!1302091))

(assert (= (and b!1302091 (not res!583273)) b!1302069))

(assert (= (and b!1302069 (not res!583261)) b!1302080))

(assert (= (and b!1302080 (not res!583257)) b!1302083))

(assert (= (and b!1302083 (not res!583262)) b!1302087))

(assert (= b!1302082 b!1302068))

(assert (= b!1302074 b!1302082))

(assert (= (and start!115022 ((_ is Cons!13065) rules!2550)) b!1302074))

(assert (= b!1302073 b!1302076))

(assert (= b!1302071 b!1302073))

(assert (= start!115022 b!1302071))

(assert (= b!1302090 b!1302088))

(assert (= b!1302093 b!1302090))

(assert (= start!115022 b!1302093))

(declare-fun m!1453633 () Bool)

(assert (=> b!1302077 m!1453633))

(declare-fun m!1453635 () Bool)

(assert (=> b!1302077 m!1453635))

(declare-fun m!1453637 () Bool)

(assert (=> b!1302072 m!1453637))

(assert (=> b!1302072 m!1453637))

(declare-fun m!1453639 () Bool)

(assert (=> b!1302072 m!1453639))

(declare-fun m!1453641 () Bool)

(assert (=> b!1302072 m!1453641))

(declare-fun m!1453643 () Bool)

(assert (=> b!1302091 m!1453643))

(declare-fun m!1453645 () Bool)

(assert (=> b!1302092 m!1453645))

(declare-fun m!1453647 () Bool)

(assert (=> b!1302083 m!1453647))

(declare-fun m!1453649 () Bool)

(assert (=> b!1302083 m!1453649))

(declare-fun m!1453651 () Bool)

(assert (=> b!1302083 m!1453651))

(assert (=> b!1302083 m!1453649))

(assert (=> b!1302083 m!1453649))

(declare-fun m!1453653 () Bool)

(assert (=> b!1302083 m!1453653))

(declare-fun m!1453655 () Bool)

(assert (=> b!1302071 m!1453655))

(declare-fun m!1453657 () Bool)

(assert (=> b!1302086 m!1453657))

(declare-fun m!1453659 () Bool)

(assert (=> b!1302086 m!1453659))

(declare-fun m!1453661 () Bool)

(assert (=> b!1302085 m!1453661))

(declare-fun m!1453663 () Bool)

(assert (=> b!1302079 m!1453663))

(assert (=> b!1302087 m!1453649))

(assert (=> b!1302087 m!1453649))

(assert (=> b!1302087 m!1453653))

(declare-fun m!1453665 () Bool)

(assert (=> b!1302070 m!1453665))

(declare-fun m!1453667 () Bool)

(assert (=> b!1302090 m!1453667))

(declare-fun m!1453669 () Bool)

(assert (=> b!1302090 m!1453669))

(declare-fun m!1453671 () Bool)

(assert (=> b!1302080 m!1453671))

(declare-fun m!1453673 () Bool)

(assert (=> b!1302069 m!1453673))

(declare-fun m!1453675 () Bool)

(assert (=> b!1302073 m!1453675))

(declare-fun m!1453677 () Bool)

(assert (=> b!1302073 m!1453677))

(declare-fun m!1453679 () Bool)

(assert (=> b!1302084 m!1453679))

(declare-fun m!1453681 () Bool)

(assert (=> b!1302089 m!1453681))

(declare-fun m!1453683 () Bool)

(assert (=> b!1302089 m!1453683))

(declare-fun m!1453685 () Bool)

(assert (=> b!1302089 m!1453685))

(declare-fun m!1453687 () Bool)

(assert (=> b!1302089 m!1453687))

(declare-fun m!1453689 () Bool)

(assert (=> b!1302089 m!1453689))

(declare-fun m!1453691 () Bool)

(assert (=> b!1302089 m!1453691))

(declare-fun m!1453693 () Bool)

(assert (=> start!115022 m!1453693))

(declare-fun m!1453695 () Bool)

(assert (=> start!115022 m!1453695))

(declare-fun m!1453697 () Bool)

(assert (=> b!1302067 m!1453697))

(declare-fun m!1453699 () Bool)

(assert (=> b!1302082 m!1453699))

(declare-fun m!1453701 () Bool)

(assert (=> b!1302082 m!1453701))

(declare-fun m!1453703 () Bool)

(assert (=> b!1302093 m!1453703))

(declare-fun m!1453705 () Bool)

(assert (=> b!1302075 m!1453705))

(declare-fun m!1453707 () Bool)

(assert (=> b!1302081 m!1453707))

(assert (=> b!1302081 m!1453707))

(declare-fun m!1453709 () Bool)

(assert (=> b!1302081 m!1453709))

(check-sat (not b!1302075) (not b_next!31723) b_and!86867 (not b_next!31721) (not b!1302073) b_and!86865 (not b!1302093) b_and!86863 (not start!115022) (not b!1302069) (not b!1302083) (not b!1302090) (not b!1302077) (not b!1302092) (not b!1302082) (not b!1302091) (not b!1302089) (not b!1302071) (not b!1302074) (not b_next!31719) (not b!1302079) b_and!86871 (not b!1302080) (not b!1302067) (not b!1302087) (not b!1302085) (not b!1302084) b_and!86873 (not b!1302086) (not b_next!31717) b_and!86869 (not b!1302070) (not b!1302072) (not b_next!31715) (not b_next!31725) (not b!1302081))
(check-sat (not b_next!31723) b_and!86867 (not b_next!31721) b_and!86865 b_and!86863 b_and!86869 (not b_next!31715) (not b_next!31725) (not b_next!31719) b_and!86871 b_and!86873 (not b_next!31717))
