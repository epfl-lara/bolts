; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384484 () Bool)

(assert start!384484)

(declare-fun b!4073070 () Bool)

(declare-fun b_free!113377 () Bool)

(declare-fun b_next!114081 () Bool)

(assert (=> b!4073070 (= b_free!113377 (not b_next!114081))))

(declare-fun tp!1232760 () Bool)

(declare-fun b_and!313027 () Bool)

(assert (=> b!4073070 (= tp!1232760 b_and!313027)))

(declare-fun b_free!113379 () Bool)

(declare-fun b_next!114083 () Bool)

(assert (=> b!4073070 (= b_free!113379 (not b_next!114083))))

(declare-fun tp!1232761 () Bool)

(declare-fun b_and!313029 () Bool)

(assert (=> b!4073070 (= tp!1232761 b_and!313029)))

(declare-fun b!4073078 () Bool)

(declare-fun b_free!113381 () Bool)

(declare-fun b_next!114085 () Bool)

(assert (=> b!4073078 (= b_free!113381 (not b_next!114085))))

(declare-fun tp!1232758 () Bool)

(declare-fun b_and!313031 () Bool)

(assert (=> b!4073078 (= tp!1232758 b_and!313031)))

(declare-fun b_free!113383 () Bool)

(declare-fun b_next!114087 () Bool)

(assert (=> b!4073078 (= b_free!113383 (not b_next!114087))))

(declare-fun tp!1232757 () Bool)

(declare-fun b_and!313033 () Bool)

(assert (=> b!4073078 (= tp!1232757 b_and!313033)))

(declare-fun b!4073068 () Bool)

(declare-fun e!2527923 () Bool)

(declare-fun e!2527919 () Bool)

(assert (=> b!4073068 (= e!2527923 (not e!2527919))))

(declare-fun res!1663220 () Bool)

(assert (=> b!4073068 (=> res!1663220 e!2527919)))

(declare-datatypes ((List!43663 0))(
  ( (Nil!43539) (Cons!43539 (h!48959 (_ BitVec 16)) (t!337166 List!43663)) )
))
(declare-datatypes ((TokenValue!7232 0))(
  ( (FloatLiteralValue!14464 (text!51069 List!43663)) (TokenValueExt!7231 (__x!26681 Int)) (Broken!36160 (value!220183 List!43663)) (Object!7355) (End!7232) (Def!7232) (Underscore!7232) (Match!7232) (Else!7232) (Error!7232) (Case!7232) (If!7232) (Extends!7232) (Abstract!7232) (Class!7232) (Val!7232) (DelimiterValue!14464 (del!7292 List!43663)) (KeywordValue!7238 (value!220184 List!43663)) (CommentValue!14464 (value!220185 List!43663)) (WhitespaceValue!14464 (value!220186 List!43663)) (IndentationValue!7232 (value!220187 List!43663)) (String!49909) (Int32!7232) (Broken!36161 (value!220188 List!43663)) (Boolean!7233) (Unit!63090) (OperatorValue!7235 (op!7292 List!43663)) (IdentifierValue!14464 (value!220189 List!43663)) (IdentifierValue!14465 (value!220190 List!43663)) (WhitespaceValue!14465 (value!220191 List!43663)) (True!14464) (False!14464) (Broken!36162 (value!220192 List!43663)) (Broken!36163 (value!220193 List!43663)) (True!14465) (RightBrace!7232) (RightBracket!7232) (Colon!7232) (Null!7232) (Comma!7232) (LeftBracket!7232) (False!14465) (LeftBrace!7232) (ImaginaryLiteralValue!7232 (text!51070 List!43663)) (StringLiteralValue!21696 (value!220194 List!43663)) (EOFValue!7232 (value!220195 List!43663)) (IdentValue!7232 (value!220196 List!43663)) (DelimiterValue!14465 (value!220197 List!43663)) (DedentValue!7232 (value!220198 List!43663)) (NewLineValue!7232 (value!220199 List!43663)) (IntegerValue!21696 (value!220200 (_ BitVec 32)) (text!51071 List!43663)) (IntegerValue!21697 (value!220201 Int) (text!51072 List!43663)) (Times!7232) (Or!7232) (Equal!7232) (Minus!7232) (Broken!36164 (value!220202 List!43663)) (And!7232) (Div!7232) (LessEqual!7232) (Mod!7232) (Concat!19139) (Not!7232) (Plus!7232) (SpaceValue!7232 (value!220203 List!43663)) (IntegerValue!21698 (value!220204 Int) (text!51073 List!43663)) (StringLiteralValue!21697 (text!51074 List!43663)) (FloatLiteralValue!14465 (text!51075 List!43663)) (BytesLiteralValue!7232 (value!220205 List!43663)) (CommentValue!14465 (value!220206 List!43663)) (StringLiteralValue!21698 (value!220207 List!43663)) (ErrorTokenValue!7232 (msg!7293 List!43663)) )
))
(declare-datatypes ((C!24000 0))(
  ( (C!24001 (val!14110 Int)) )
))
(declare-datatypes ((Regex!11907 0))(
  ( (ElementMatch!11907 (c!702898 C!24000)) (Concat!19140 (regOne!24326 Regex!11907) (regTwo!24326 Regex!11907)) (EmptyExpr!11907) (Star!11907 (reg!12236 Regex!11907)) (EmptyLang!11907) (Union!11907 (regOne!24327 Regex!11907) (regTwo!24327 Regex!11907)) )
))
(declare-datatypes ((String!49910 0))(
  ( (String!49911 (value!220208 String)) )
))
(declare-datatypes ((List!43664 0))(
  ( (Nil!43540) (Cons!43540 (h!48960 C!24000) (t!337167 List!43664)) )
))
(declare-datatypes ((IArray!26431 0))(
  ( (IArray!26432 (innerList!13273 List!43664)) )
))
(declare-datatypes ((Conc!13213 0))(
  ( (Node!13213 (left!32736 Conc!13213) (right!33066 Conc!13213) (csize!26656 Int) (cheight!13424 Int)) (Leaf!20429 (xs!16519 IArray!26431) (csize!26657 Int)) (Empty!13213) )
))
(declare-datatypes ((BalanceConc!26020 0))(
  ( (BalanceConc!26021 (c!702899 Conc!13213)) )
))
(declare-datatypes ((TokenValueInjection!13892 0))(
  ( (TokenValueInjection!13893 (toValue!9566 Int) (toChars!9425 Int)) )
))
(declare-datatypes ((Rule!13804 0))(
  ( (Rule!13805 (regex!7002 Regex!11907) (tag!7862 String!49910) (isSeparator!7002 Bool) (transformation!7002 TokenValueInjection!13892)) )
))
(declare-fun r!4213 () Rule!13804)

(declare-fun p!2988 () List!43664)

(declare-fun matchR!5852 (Regex!11907 List!43664) Bool)

(assert (=> b!4073068 (= res!1663220 (not (matchR!5852 (regex!7002 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6591 0))(
  ( (LexerInterfaceExt!6588 (__x!26682 Int)) (Lexer!6589) )
))
(declare-fun thiss!26199 () LexerInterface!6591)

(declare-fun ruleValid!2926 (LexerInterface!6591 Rule!13804) Bool)

(assert (=> b!4073068 (ruleValid!2926 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63091 0))(
  ( (Unit!63092) )
))
(declare-fun lt!1457790 () Unit!63091)

(declare-datatypes ((List!43665 0))(
  ( (Nil!43541) (Cons!43541 (h!48961 Rule!13804) (t!337168 List!43665)) )
))
(declare-fun rules!3870 () List!43665)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1994 (LexerInterface!6591 Rule!13804 List!43665) Unit!63091)

(assert (=> b!4073068 (= lt!1457790 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1994 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4073069 () Bool)

(declare-fun res!1663225 () Bool)

(assert (=> b!4073069 (=> res!1663225 e!2527919)))

(get-info :version)

(assert (=> b!4073069 (= res!1663225 (or (not ((_ is Cons!43541) rules!3870)) (not (= (h!48961 rules!3870) r!4213))))))

(declare-fun e!2527920 () Bool)

(assert (=> b!4073070 (= e!2527920 (and tp!1232760 tp!1232761))))

(declare-fun b!4073071 () Bool)

(declare-fun e!2527928 () Bool)

(declare-fun tp!1232755 () Bool)

(declare-fun inv!58193 (String!49910) Bool)

(declare-fun inv!58195 (TokenValueInjection!13892) Bool)

(assert (=> b!4073071 (= e!2527928 (and tp!1232755 (inv!58193 (tag!7862 (h!48961 rules!3870))) (inv!58195 (transformation!7002 (h!48961 rules!3870))) e!2527920))))

(declare-fun b!4073072 () Bool)

(declare-fun e!2527925 () Bool)

(declare-fun tp_is_empty!20817 () Bool)

(declare-fun tp!1232754 () Bool)

(assert (=> b!4073072 (= e!2527925 (and tp_is_empty!20817 tp!1232754))))

(declare-fun b!4073073 () Bool)

(declare-fun e!2527927 () Bool)

(declare-fun tp!1232753 () Bool)

(assert (=> b!4073073 (= e!2527927 (and tp_is_empty!20817 tp!1232753))))

(declare-fun b!4073074 () Bool)

(assert (=> b!4073074 (= e!2527919 true)))

(declare-fun rulesInvariant!5934 (LexerInterface!6591 List!43665) Bool)

(assert (=> b!4073074 (rulesInvariant!5934 thiss!26199 (t!337168 rules!3870))))

(declare-fun lt!1457791 () Unit!63091)

(declare-fun lemmaInvariantOnRulesThenOnTail!722 (LexerInterface!6591 Rule!13804 List!43665) Unit!63091)

(assert (=> b!4073074 (= lt!1457791 (lemmaInvariantOnRulesThenOnTail!722 thiss!26199 (h!48961 rules!3870) (t!337168 rules!3870)))))

(declare-fun b!4073075 () Bool)

(declare-fun res!1663222 () Bool)

(declare-fun e!2527926 () Bool)

(assert (=> b!4073075 (=> (not res!1663222) (not e!2527926))))

(declare-fun isEmpty!25982 (List!43664) Bool)

(assert (=> b!4073075 (= res!1663222 (not (isEmpty!25982 p!2988)))))

(declare-fun b!4073076 () Bool)

(declare-fun res!1663221 () Bool)

(assert (=> b!4073076 (=> (not res!1663221) (not e!2527926))))

(declare-fun isEmpty!25983 (List!43665) Bool)

(assert (=> b!4073076 (= res!1663221 (not (isEmpty!25983 rules!3870)))))

(declare-fun res!1663219 () Bool)

(assert (=> start!384484 (=> (not res!1663219) (not e!2527926))))

(assert (=> start!384484 (= res!1663219 ((_ is Lexer!6589) thiss!26199))))

(assert (=> start!384484 e!2527926))

(assert (=> start!384484 true))

(assert (=> start!384484 e!2527927))

(declare-fun e!2527924 () Bool)

(assert (=> start!384484 e!2527924))

(assert (=> start!384484 e!2527925))

(declare-fun e!2527921 () Bool)

(assert (=> start!384484 e!2527921))

(declare-fun e!2527922 () Bool)

(assert (=> start!384484 e!2527922))

(declare-fun b!4073077 () Bool)

(assert (=> b!4073077 (= e!2527926 e!2527923)))

(declare-fun res!1663226 () Bool)

(assert (=> b!4073077 (=> (not res!1663226) (not e!2527923))))

(declare-fun suffix!1518 () List!43664)

(declare-fun input!3411 () List!43664)

(declare-fun lt!1457789 () BalanceConc!26020)

(declare-datatypes ((Token!13130 0))(
  ( (Token!13131 (value!220209 TokenValue!7232) (rule!10106 Rule!13804) (size!32535 Int) (originalCharacters!7596 List!43664)) )
))
(declare-datatypes ((tuple2!42546 0))(
  ( (tuple2!42547 (_1!24407 Token!13130) (_2!24407 List!43664)) )
))
(declare-datatypes ((Option!9410 0))(
  ( (None!9409) (Some!9409 (v!39847 tuple2!42546)) )
))
(declare-fun maxPrefix!3883 (LexerInterface!6591 List!43665 List!43664) Option!9410)

(declare-fun apply!10185 (TokenValueInjection!13892 BalanceConc!26020) TokenValue!7232)

(declare-fun size!32536 (List!43664) Int)

(assert (=> b!4073077 (= res!1663226 (= (maxPrefix!3883 thiss!26199 rules!3870 input!3411) (Some!9409 (tuple2!42547 (Token!13131 (apply!10185 (transformation!7002 r!4213) lt!1457789) r!4213 (size!32536 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1457788 () Unit!63091)

(declare-fun lemmaSemiInverse!1969 (TokenValueInjection!13892 BalanceConc!26020) Unit!63091)

(assert (=> b!4073077 (= lt!1457788 (lemmaSemiInverse!1969 (transformation!7002 r!4213) lt!1457789))))

(declare-fun seqFromList!5219 (List!43664) BalanceConc!26020)

(assert (=> b!4073077 (= lt!1457789 (seqFromList!5219 p!2988))))

(declare-fun e!2527918 () Bool)

(assert (=> b!4073078 (= e!2527918 (and tp!1232758 tp!1232757))))

(declare-fun b!4073079 () Bool)

(declare-fun res!1663224 () Bool)

(assert (=> b!4073079 (=> (not res!1663224) (not e!2527926))))

(declare-fun contains!8669 (List!43665 Rule!13804) Bool)

(assert (=> b!4073079 (= res!1663224 (contains!8669 rules!3870 r!4213))))

(declare-fun b!4073080 () Bool)

(declare-fun tp!1232759 () Bool)

(assert (=> b!4073080 (= e!2527922 (and tp!1232759 (inv!58193 (tag!7862 r!4213)) (inv!58195 (transformation!7002 r!4213)) e!2527918))))

(declare-fun b!4073081 () Bool)

(declare-fun tp!1232762 () Bool)

(assert (=> b!4073081 (= e!2527924 (and e!2527928 tp!1232762))))

(declare-fun b!4073082 () Bool)

(declare-fun res!1663218 () Bool)

(assert (=> b!4073082 (=> (not res!1663218) (not e!2527926))))

(assert (=> b!4073082 (= res!1663218 (rulesInvariant!5934 thiss!26199 rules!3870))))

(declare-fun b!4073083 () Bool)

(declare-fun tp!1232756 () Bool)

(assert (=> b!4073083 (= e!2527921 (and tp_is_empty!20817 tp!1232756))))

(declare-fun b!4073084 () Bool)

(declare-fun res!1663223 () Bool)

(assert (=> b!4073084 (=> (not res!1663223) (not e!2527926))))

(declare-fun ++!11408 (List!43664 List!43664) List!43664)

(assert (=> b!4073084 (= res!1663223 (= input!3411 (++!11408 p!2988 suffix!1518)))))

(assert (= (and start!384484 res!1663219) b!4073076))

(assert (= (and b!4073076 res!1663221) b!4073082))

(assert (= (and b!4073082 res!1663218) b!4073079))

(assert (= (and b!4073079 res!1663224) b!4073084))

(assert (= (and b!4073084 res!1663223) b!4073075))

(assert (= (and b!4073075 res!1663222) b!4073077))

(assert (= (and b!4073077 res!1663226) b!4073068))

(assert (= (and b!4073068 (not res!1663220)) b!4073069))

(assert (= (and b!4073069 (not res!1663225)) b!4073074))

(assert (= (and start!384484 ((_ is Cons!43540) suffix!1518)) b!4073073))

(assert (= b!4073071 b!4073070))

(assert (= b!4073081 b!4073071))

(assert (= (and start!384484 ((_ is Cons!43541) rules!3870)) b!4073081))

(assert (= (and start!384484 ((_ is Cons!43540) p!2988)) b!4073072))

(assert (= (and start!384484 ((_ is Cons!43540) input!3411)) b!4073083))

(assert (= b!4073080 b!4073078))

(assert (= start!384484 b!4073080))

(declare-fun m!4681923 () Bool)

(assert (=> b!4073071 m!4681923))

(declare-fun m!4681925 () Bool)

(assert (=> b!4073071 m!4681925))

(declare-fun m!4681927 () Bool)

(assert (=> b!4073074 m!4681927))

(declare-fun m!4681929 () Bool)

(assert (=> b!4073074 m!4681929))

(declare-fun m!4681931 () Bool)

(assert (=> b!4073080 m!4681931))

(declare-fun m!4681933 () Bool)

(assert (=> b!4073080 m!4681933))

(declare-fun m!4681935 () Bool)

(assert (=> b!4073084 m!4681935))

(declare-fun m!4681937 () Bool)

(assert (=> b!4073077 m!4681937))

(declare-fun m!4681939 () Bool)

(assert (=> b!4073077 m!4681939))

(declare-fun m!4681941 () Bool)

(assert (=> b!4073077 m!4681941))

(declare-fun m!4681943 () Bool)

(assert (=> b!4073077 m!4681943))

(declare-fun m!4681945 () Bool)

(assert (=> b!4073077 m!4681945))

(declare-fun m!4681947 () Bool)

(assert (=> b!4073068 m!4681947))

(declare-fun m!4681949 () Bool)

(assert (=> b!4073068 m!4681949))

(declare-fun m!4681951 () Bool)

(assert (=> b!4073068 m!4681951))

(declare-fun m!4681953 () Bool)

(assert (=> b!4073075 m!4681953))

(declare-fun m!4681955 () Bool)

(assert (=> b!4073079 m!4681955))

(declare-fun m!4681957 () Bool)

(assert (=> b!4073082 m!4681957))

(declare-fun m!4681959 () Bool)

(assert (=> b!4073076 m!4681959))

(check-sat (not b!4073073) (not b!4073072) (not b!4073074) (not b_next!114087) b_and!313031 (not b!4073083) (not b!4073081) (not b!4073080) (not b!4073076) b_and!313027 (not b!4073071) (not b_next!114083) (not b_next!114081) tp_is_empty!20817 (not b!4073077) (not b!4073079) b_and!313029 (not b!4073082) (not b!4073075) (not b_next!114085) (not b!4073084) (not b!4073068) b_and!313033)
(check-sat b_and!313029 (not b_next!114085) (not b_next!114087) b_and!313031 b_and!313033 b_and!313027 (not b_next!114083) (not b_next!114081))
