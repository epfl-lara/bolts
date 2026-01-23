; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59288 () Bool)

(assert start!59288)

(declare-fun b!618120 () Bool)

(declare-fun b_free!17841 () Bool)

(declare-fun b_next!17857 () Bool)

(assert (=> b!618120 (= b_free!17841 (not b_next!17857))))

(declare-fun tp!191357 () Bool)

(declare-fun b_and!61355 () Bool)

(assert (=> b!618120 (= tp!191357 b_and!61355)))

(declare-fun b_free!17843 () Bool)

(declare-fun b_next!17859 () Bool)

(assert (=> b!618120 (= b_free!17843 (not b_next!17859))))

(declare-fun tp!191353 () Bool)

(declare-fun b_and!61357 () Bool)

(assert (=> b!618120 (= tp!191353 b_and!61357)))

(declare-fun b!618121 () Bool)

(declare-fun b_free!17845 () Bool)

(declare-fun b_next!17861 () Bool)

(assert (=> b!618121 (= b_free!17845 (not b_next!17861))))

(declare-fun tp!191352 () Bool)

(declare-fun b_and!61359 () Bool)

(assert (=> b!618121 (= tp!191352 b_and!61359)))

(declare-fun b_free!17847 () Bool)

(declare-fun b_next!17863 () Bool)

(assert (=> b!618121 (= b_free!17847 (not b_next!17863))))

(declare-fun tp!191349 () Bool)

(declare-fun b_and!61361 () Bool)

(assert (=> b!618121 (= tp!191349 b_and!61361)))

(declare-fun b!618117 () Bool)

(declare-fun e!374931 () Bool)

(declare-fun e!374932 () Bool)

(declare-fun tp!191355 () Bool)

(assert (=> b!618117 (= e!374931 (and e!374932 tp!191355))))

(declare-fun b!618118 () Bool)

(declare-fun res!269194 () Bool)

(declare-fun e!374929 () Bool)

(assert (=> b!618118 (=> (not res!269194) (not e!374929))))

(declare-datatypes ((C!4128 0))(
  ( (C!4129 (val!2290 Int)) )
))
(declare-datatypes ((List!6268 0))(
  ( (Nil!6258) (Cons!6258 (h!11659 C!4128) (t!81507 List!6268)) )
))
(declare-fun p!2908 () List!6268)

(declare-fun input!3215 () List!6268)

(declare-fun isPrefix!897 (List!6268 List!6268) Bool)

(assert (=> b!618118 (= res!269194 (isPrefix!897 p!2908 input!3215))))

(declare-fun b!618119 () Bool)

(declare-fun res!269191 () Bool)

(assert (=> b!618119 (=> (not res!269191) (not e!374929))))

(declare-datatypes ((LexerInterface!1155 0))(
  ( (LexerInterfaceExt!1152 (__x!4482 Int)) (Lexer!1153) )
))
(declare-fun thiss!25598 () LexerInterface!1155)

(declare-datatypes ((List!6269 0))(
  ( (Nil!6259) (Cons!6259 (h!11660 (_ BitVec 16)) (t!81508 List!6269)) )
))
(declare-datatypes ((TokenValue!1291 0))(
  ( (FloatLiteralValue!2582 (text!9482 List!6269)) (TokenValueExt!1290 (__x!4483 Int)) (Broken!6455 (value!40947 List!6269)) (Object!1300) (End!1291) (Def!1291) (Underscore!1291) (Match!1291) (Else!1291) (Error!1291) (Case!1291) (If!1291) (Extends!1291) (Abstract!1291) (Class!1291) (Val!1291) (DelimiterValue!2582 (del!1351 List!6269)) (KeywordValue!1297 (value!40948 List!6269)) (CommentValue!2582 (value!40949 List!6269)) (WhitespaceValue!2582 (value!40950 List!6269)) (IndentationValue!1291 (value!40951 List!6269)) (String!8202) (Int32!1291) (Broken!6456 (value!40952 List!6269)) (Boolean!1292) (Unit!11397) (OperatorValue!1294 (op!1351 List!6269)) (IdentifierValue!2582 (value!40953 List!6269)) (IdentifierValue!2583 (value!40954 List!6269)) (WhitespaceValue!2583 (value!40955 List!6269)) (True!2582) (False!2582) (Broken!6457 (value!40956 List!6269)) (Broken!6458 (value!40957 List!6269)) (True!2583) (RightBrace!1291) (RightBracket!1291) (Colon!1291) (Null!1291) (Comma!1291) (LeftBracket!1291) (False!2583) (LeftBrace!1291) (ImaginaryLiteralValue!1291 (text!9483 List!6269)) (StringLiteralValue!3873 (value!40958 List!6269)) (EOFValue!1291 (value!40959 List!6269)) (IdentValue!1291 (value!40960 List!6269)) (DelimiterValue!2583 (value!40961 List!6269)) (DedentValue!1291 (value!40962 List!6269)) (NewLineValue!1291 (value!40963 List!6269)) (IntegerValue!3873 (value!40964 (_ BitVec 32)) (text!9484 List!6269)) (IntegerValue!3874 (value!40965 Int) (text!9485 List!6269)) (Times!1291) (Or!1291) (Equal!1291) (Minus!1291) (Broken!6459 (value!40966 List!6269)) (And!1291) (Div!1291) (LessEqual!1291) (Mod!1291) (Concat!2892) (Not!1291) (Plus!1291) (SpaceValue!1291 (value!40967 List!6269)) (IntegerValue!3875 (value!40968 Int) (text!9486 List!6269)) (StringLiteralValue!3874 (text!9487 List!6269)) (FloatLiteralValue!2583 (text!9488 List!6269)) (BytesLiteralValue!1291 (value!40969 List!6269)) (CommentValue!2583 (value!40970 List!6269)) (StringLiteralValue!3875 (value!40971 List!6269)) (ErrorTokenValue!1291 (msg!1352 List!6269)) )
))
(declare-datatypes ((Regex!1601 0))(
  ( (ElementMatch!1601 (c!113852 C!4128)) (Concat!2893 (regOne!3714 Regex!1601) (regTwo!3714 Regex!1601)) (EmptyExpr!1601) (Star!1601 (reg!1930 Regex!1601)) (EmptyLang!1601) (Union!1601 (regOne!3715 Regex!1601) (regTwo!3715 Regex!1601)) )
))
(declare-datatypes ((String!8203 0))(
  ( (String!8204 (value!40972 String)) )
))
(declare-datatypes ((IArray!3969 0))(
  ( (IArray!3970 (innerList!2042 List!6268)) )
))
(declare-datatypes ((Conc!1984 0))(
  ( (Node!1984 (left!4975 Conc!1984) (right!5305 Conc!1984) (csize!4198 Int) (cheight!2195 Int)) (Leaf!3126 (xs!4621 IArray!3969) (csize!4199 Int)) (Empty!1984) )
))
(declare-datatypes ((BalanceConc!3976 0))(
  ( (BalanceConc!3977 (c!113853 Conc!1984)) )
))
(declare-datatypes ((TokenValueInjection!2350 0))(
  ( (TokenValueInjection!2351 (toValue!2180 Int) (toChars!2039 Int)) )
))
(declare-datatypes ((Rule!2334 0))(
  ( (Rule!2335 (regex!1267 Regex!1601) (tag!1529 String!8203) (isSeparator!1267 Bool) (transformation!1267 TokenValueInjection!2350)) )
))
(declare-datatypes ((List!6270 0))(
  ( (Nil!6260) (Cons!6260 (h!11661 Rule!2334) (t!81509 List!6270)) )
))
(declare-fun rules!3744 () List!6270)

(declare-fun rulesInvariant!1116 (LexerInterface!1155 List!6270) Bool)

(assert (=> b!618119 (= res!269191 (rulesInvariant!1116 thiss!25598 rules!3744))))

(declare-fun e!374935 () Bool)

(assert (=> b!618120 (= e!374935 (and tp!191357 tp!191353))))

(declare-fun res!269195 () Bool)

(assert (=> start!59288 (=> (not res!269195) (not e!374929))))

(get-info :version)

(assert (=> start!59288 (= res!269195 ((_ is Lexer!1153) thiss!25598))))

(assert (=> start!59288 e!374929))

(declare-fun e!374933 () Bool)

(assert (=> start!59288 e!374933))

(declare-fun e!374937 () Bool)

(assert (=> start!59288 e!374937))

(assert (=> start!59288 e!374931))

(assert (=> start!59288 true))

(declare-fun e!374934 () Bool)

(assert (=> start!59288 e!374934))

(declare-fun e!374936 () Bool)

(assert (=> b!618121 (= e!374936 (and tp!191352 tp!191349))))

(declare-fun b!618122 () Bool)

(declare-fun res!269190 () Bool)

(assert (=> b!618122 (=> (not res!269190) (not e!374929))))

(declare-datatypes ((Token!2258 0))(
  ( (Token!2259 (value!40973 TokenValue!1291) (rule!2057 Rule!2334) (size!4877 Int) (originalCharacters!1300 List!6268)) )
))
(declare-datatypes ((tuple2!7066 0))(
  ( (tuple2!7067 (_1!3797 Token!2258) (_2!3797 List!6268)) )
))
(declare-datatypes ((Option!1612 0))(
  ( (None!1611) (Some!1611 (v!16534 tuple2!7066)) )
))
(declare-fun isEmpty!4503 (Option!1612) Bool)

(declare-fun maxPrefix!845 (LexerInterface!1155 List!6270 List!6268) Option!1612)

(assert (=> b!618122 (= res!269190 (isEmpty!4503 (maxPrefix!845 thiss!25598 rules!3744 input!3215)))))

(declare-fun b!618123 () Bool)

(declare-fun res!269193 () Bool)

(assert (=> b!618123 (=> (not res!269193) (not e!374929))))

(declare-fun isEmpty!4504 (List!6270) Bool)

(assert (=> b!618123 (= res!269193 (not (isEmpty!4504 rules!3744)))))

(declare-fun b!618124 () Bool)

(declare-fun res!269192 () Bool)

(assert (=> b!618124 (=> (not res!269192) (not e!374929))))

(declare-fun r!3983 () Rule!2334)

(declare-fun contains!1484 (List!6270 Rule!2334) Bool)

(assert (=> b!618124 (= res!269192 (contains!1484 rules!3744 r!3983))))

(declare-fun b!618125 () Bool)

(declare-fun tp!191354 () Bool)

(declare-fun inv!7937 (String!8203) Bool)

(declare-fun inv!7939 (TokenValueInjection!2350) Bool)

(assert (=> b!618125 (= e!374933 (and tp!191354 (inv!7937 (tag!1529 r!3983)) (inv!7939 (transformation!1267 r!3983)) e!374935))))

(declare-fun b!618126 () Bool)

(declare-fun tp_is_empty!3561 () Bool)

(declare-fun tp!191350 () Bool)

(assert (=> b!618126 (= e!374937 (and tp_is_empty!3561 tp!191350))))

(declare-fun b!618127 () Bool)

(declare-fun tp!191351 () Bool)

(assert (=> b!618127 (= e!374934 (and tp_is_empty!3561 tp!191351))))

(declare-fun b!618128 () Bool)

(assert (=> b!618128 (= e!374929 (not true))))

(declare-fun ruleValid!446 (LexerInterface!1155 Rule!2334) Bool)

(assert (=> b!618128 (ruleValid!446 thiss!25598 r!3983)))

(declare-datatypes ((Unit!11398 0))(
  ( (Unit!11399) )
))
(declare-fun lt!264672 () Unit!11398)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!290 (LexerInterface!1155 Rule!2334 List!6270) Unit!11398)

(assert (=> b!618128 (= lt!264672 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!290 thiss!25598 r!3983 rules!3744))))

(declare-fun tp!191356 () Bool)

(declare-fun b!618129 () Bool)

(assert (=> b!618129 (= e!374932 (and tp!191356 (inv!7937 (tag!1529 (h!11661 rules!3744))) (inv!7939 (transformation!1267 (h!11661 rules!3744))) e!374936))))

(assert (= (and start!59288 res!269195) b!618118))

(assert (= (and b!618118 res!269194) b!618123))

(assert (= (and b!618123 res!269193) b!618119))

(assert (= (and b!618119 res!269191) b!618124))

(assert (= (and b!618124 res!269192) b!618122))

(assert (= (and b!618122 res!269190) b!618128))

(assert (= b!618125 b!618120))

(assert (= start!59288 b!618125))

(assert (= (and start!59288 ((_ is Cons!6258) p!2908)) b!618126))

(assert (= b!618129 b!618121))

(assert (= b!618117 b!618129))

(assert (= (and start!59288 ((_ is Cons!6260) rules!3744)) b!618117))

(assert (= (and start!59288 ((_ is Cons!6258) input!3215)) b!618127))

(declare-fun m!886219 () Bool)

(assert (=> b!618118 m!886219))

(declare-fun m!886221 () Bool)

(assert (=> b!618128 m!886221))

(declare-fun m!886223 () Bool)

(assert (=> b!618128 m!886223))

(declare-fun m!886225 () Bool)

(assert (=> b!618129 m!886225))

(declare-fun m!886227 () Bool)

(assert (=> b!618129 m!886227))

(declare-fun m!886229 () Bool)

(assert (=> b!618124 m!886229))

(declare-fun m!886231 () Bool)

(assert (=> b!618123 m!886231))

(declare-fun m!886233 () Bool)

(assert (=> b!618122 m!886233))

(assert (=> b!618122 m!886233))

(declare-fun m!886235 () Bool)

(assert (=> b!618122 m!886235))

(declare-fun m!886237 () Bool)

(assert (=> b!618119 m!886237))

(declare-fun m!886239 () Bool)

(assert (=> b!618125 m!886239))

(declare-fun m!886241 () Bool)

(assert (=> b!618125 m!886241))

(check-sat (not b!618119) b_and!61355 (not b!618122) (not b_next!17861) (not b!618129) (not b_next!17863) (not b!618117) b_and!61359 (not b!618128) (not b!618124) (not b!618123) (not b_next!17859) (not b!618126) b_and!61361 (not b!618127) b_and!61357 (not b_next!17857) tp_is_empty!3561 (not b!618125) (not b!618118))
(check-sat b_and!61355 (not b_next!17859) b_and!61361 (not b_next!17861) (not b_next!17863) b_and!61359 b_and!61357 (not b_next!17857))
