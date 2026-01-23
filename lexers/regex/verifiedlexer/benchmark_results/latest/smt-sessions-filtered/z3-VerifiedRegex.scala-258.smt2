; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4270 () Bool)

(assert start!4270)

(declare-fun b!54234 () Bool)

(declare-fun b_free!1773 () Bool)

(declare-fun b_next!1773 () Bool)

(assert (=> b!54234 (= b_free!1773 (not b_next!1773))))

(declare-fun tp!34670 () Bool)

(declare-fun b_and!1823 () Bool)

(assert (=> b!54234 (= tp!34670 b_and!1823)))

(declare-fun b_free!1775 () Bool)

(declare-fun b_next!1775 () Bool)

(assert (=> b!54234 (= b_free!1775 (not b_next!1775))))

(declare-fun tp!34669 () Bool)

(declare-fun b_and!1825 () Bool)

(assert (=> b!54234 (= tp!34669 b_and!1825)))

(declare-fun b!54223 () Bool)

(declare-fun e!32098 () Bool)

(declare-fun e!32099 () Bool)

(assert (=> b!54223 (= e!32098 e!32099)))

(declare-fun res!34753 () Bool)

(assert (=> b!54223 (=> res!34753 e!32099)))

(declare-datatypes ((List!1148 0))(
  ( (Nil!1142) (Cons!1142 (h!6539 (_ BitVec 16)) (t!17435 List!1148)) )
))
(declare-datatypes ((TokenValue!237 0))(
  ( (FloatLiteralValue!474 (text!2104 List!1148)) (TokenValueExt!236 (__x!1569 Int)) (Broken!1185 (value!9911 List!1148)) (Object!242) (End!237) (Def!237) (Underscore!237) (Match!237) (Else!237) (Error!237) (Case!237) (If!237) (Extends!237) (Abstract!237) (Class!237) (Val!237) (DelimiterValue!474 (del!297 List!1148)) (KeywordValue!243 (value!9912 List!1148)) (CommentValue!474 (value!9913 List!1148)) (WhitespaceValue!474 (value!9914 List!1148)) (IndentationValue!237 (value!9915 List!1148)) (String!1576) (Int32!237) (Broken!1186 (value!9916 List!1148)) (Boolean!238) (Unit!649) (OperatorValue!240 (op!297 List!1148)) (IdentifierValue!474 (value!9917 List!1148)) (IdentifierValue!475 (value!9918 List!1148)) (WhitespaceValue!475 (value!9919 List!1148)) (True!474) (False!474) (Broken!1187 (value!9920 List!1148)) (Broken!1188 (value!9921 List!1148)) (True!475) (RightBrace!237) (RightBracket!237) (Colon!237) (Null!237) (Comma!237) (LeftBracket!237) (False!475) (LeftBrace!237) (ImaginaryLiteralValue!237 (text!2105 List!1148)) (StringLiteralValue!711 (value!9922 List!1148)) (EOFValue!237 (value!9923 List!1148)) (IdentValue!237 (value!9924 List!1148)) (DelimiterValue!475 (value!9925 List!1148)) (DedentValue!237 (value!9926 List!1148)) (NewLineValue!237 (value!9927 List!1148)) (IntegerValue!711 (value!9928 (_ BitVec 32)) (text!2106 List!1148)) (IntegerValue!712 (value!9929 Int) (text!2107 List!1148)) (Times!237) (Or!237) (Equal!237) (Minus!237) (Broken!1189 (value!9930 List!1148)) (And!237) (Div!237) (LessEqual!237) (Mod!237) (Concat!552) (Not!237) (Plus!237) (SpaceValue!237 (value!9931 List!1148)) (IntegerValue!713 (value!9932 Int) (text!2108 List!1148)) (StringLiteralValue!712 (text!2109 List!1148)) (FloatLiteralValue!475 (text!2110 List!1148)) (BytesLiteralValue!237 (value!9933 List!1148)) (CommentValue!475 (value!9934 List!1148)) (StringLiteralValue!713 (value!9935 List!1148)) (ErrorTokenValue!237 (msg!298 List!1148)) )
))
(declare-datatypes ((C!1552 0))(
  ( (C!1553 (val!383 Int)) )
))
(declare-datatypes ((Regex!315 0))(
  ( (ElementMatch!315 (c!17148 C!1552)) (Concat!553 (regOne!1142 Regex!315) (regTwo!1142 Regex!315)) (EmptyExpr!315) (Star!315 (reg!644 Regex!315)) (EmptyLang!315) (Union!315 (regOne!1143 Regex!315) (regTwo!1143 Regex!315)) )
))
(declare-datatypes ((String!1577 0))(
  ( (String!1578 (value!9936 String)) )
))
(declare-datatypes ((List!1149 0))(
  ( (Nil!1143) (Cons!1143 (h!6540 C!1552) (t!17436 List!1149)) )
))
(declare-datatypes ((IArray!597 0))(
  ( (IArray!598 (innerList!356 List!1149)) )
))
(declare-datatypes ((Conc!298 0))(
  ( (Node!298 (left!870 Conc!298) (right!1200 Conc!298) (csize!826 Int) (cheight!509 Int)) (Leaf!557 (xs!2877 IArray!597) (csize!827 Int)) (Empty!298) )
))
(declare-datatypes ((BalanceConc!600 0))(
  ( (BalanceConc!601 (c!17149 Conc!298)) )
))
(declare-datatypes ((TokenValueInjection!298 0))(
  ( (TokenValueInjection!299 (toValue!726 Int) (toChars!585 Int)) )
))
(declare-datatypes ((Rule!294 0))(
  ( (Rule!295 (regex!247 Regex!315) (tag!425 String!1577) (isSeparator!247 Bool) (transformation!247 TokenValueInjection!298)) )
))
(declare-datatypes ((Token!258 0))(
  ( (Token!259 (value!9937 TokenValue!237) (rule!722 Rule!294) (size!1033 Int) (originalCharacters!300 List!1149)) )
))
(declare-datatypes ((List!1150 0))(
  ( (Nil!1144) (Cons!1144 (h!6541 Token!258) (t!17437 List!1150)) )
))
(declare-datatypes ((IArray!599 0))(
  ( (IArray!600 (innerList!357 List!1150)) )
))
(declare-datatypes ((Conc!299 0))(
  ( (Node!299 (left!871 Conc!299) (right!1201 Conc!299) (csize!828 Int) (cheight!510 Int)) (Leaf!558 (xs!2878 IArray!599) (csize!829 Int)) (Empty!299) )
))
(declare-datatypes ((BalanceConc!602 0))(
  ( (BalanceConc!603 (c!17150 Conc!299)) )
))
(declare-fun v!6227 () BalanceConc!602)

(declare-fun lt!9936 () Token!258)

(declare-fun contains!148 (BalanceConc!602 Token!258) Bool)

(assert (=> b!54223 (= res!34753 (not (contains!148 v!6227 lt!9936)))))

(declare-fun from!821 () Int)

(declare-fun apply!134 (BalanceConc!602 Int) Token!258)

(assert (=> b!54223 (= lt!9936 (apply!134 v!6227 (+ 1 from!821)))))

(declare-fun e!32103 () Bool)

(declare-fun e!32101 () Bool)

(declare-fun b!54224 () Bool)

(declare-fun tp!34666 () Bool)

(declare-datatypes ((List!1151 0))(
  ( (Nil!1145) (Cons!1145 (h!6542 Rule!294) (t!17438 List!1151)) )
))
(declare-fun rules!1069 () List!1151)

(declare-fun inv!1505 (String!1577) Bool)

(declare-fun inv!1509 (TokenValueInjection!298) Bool)

(assert (=> b!54224 (= e!32103 (and tp!34666 (inv!1505 (tag!425 (h!6542 rules!1069))) (inv!1509 (transformation!247 (h!6542 rules!1069))) e!32101))))

(declare-fun b!54225 () Bool)

(declare-fun e!32097 () Bool)

(declare-fun e!32102 () Bool)

(assert (=> b!54225 (= e!32097 e!32102)))

(declare-fun res!34752 () Bool)

(assert (=> b!54225 (=> (not res!34752) (not e!32102))))

(declare-fun lt!9930 () Int)

(assert (=> b!54225 (= res!34752 (<= from!821 lt!9930))))

(declare-fun size!1034 (BalanceConc!602) Int)

(assert (=> b!54225 (= lt!9930 (size!1034 v!6227))))

(declare-fun b!54226 () Bool)

(declare-fun res!34761 () Bool)

(assert (=> b!54226 (=> (not res!34761) (not e!32102))))

(declare-fun isEmpty!233 (List!1151) Bool)

(assert (=> b!54226 (= res!34761 (not (isEmpty!233 rules!1069)))))

(declare-fun b!54227 () Bool)

(declare-fun res!34756 () Bool)

(assert (=> b!54227 (=> (not res!34756) (not e!32102))))

(declare-datatypes ((LexerInterface!139 0))(
  ( (LexerInterfaceExt!136 (__x!1570 Int)) (Lexer!137) )
))
(declare-fun thiss!11059 () LexerInterface!139)

(declare-fun rulesProduceEachTokenIndividually!77 (LexerInterface!139 List!1151 BalanceConc!602) Bool)

(assert (=> b!54227 (= res!34756 (rulesProduceEachTokenIndividually!77 thiss!11059 rules!1069 v!6227))))

(declare-fun res!34755 () Bool)

(assert (=> start!4270 (=> (not res!34755) (not e!32097))))

(get-info :version)

(assert (=> start!4270 (= res!34755 (and ((_ is Lexer!137) thiss!11059) (>= from!821 0)))))

(assert (=> start!4270 e!32097))

(assert (=> start!4270 true))

(declare-fun e!32104 () Bool)

(declare-fun inv!1510 (BalanceConc!602) Bool)

(assert (=> start!4270 (and (inv!1510 v!6227) e!32104)))

(declare-fun e!32096 () Bool)

(assert (=> start!4270 e!32096))

(declare-fun b!54228 () Bool)

(assert (=> b!54228 (= e!32102 (not e!32098))))

(declare-fun res!34757 () Bool)

(assert (=> b!54228 (=> res!34757 e!32098)))

(declare-fun lt!9934 () Token!258)

(assert (=> b!54228 (= res!34757 (not (contains!148 v!6227 lt!9934)))))

(assert (=> b!54228 (= lt!9934 (apply!134 v!6227 from!821))))

(declare-fun lt!9928 () List!1150)

(declare-fun lt!9937 () List!1150)

(declare-fun tail!82 (List!1150) List!1150)

(declare-fun drop!58 (List!1150 Int) List!1150)

(assert (=> b!54228 (= (tail!82 lt!9928) (drop!58 lt!9937 (+ 2 from!821)))))

(declare-datatypes ((Unit!650 0))(
  ( (Unit!651) )
))
(declare-fun lt!9933 () Unit!650)

(declare-fun lemmaDropTail!50 (List!1150 Int) Unit!650)

(assert (=> b!54228 (= lt!9933 (lemmaDropTail!50 lt!9937 (+ 1 from!821)))))

(declare-fun lt!9931 () List!1150)

(assert (=> b!54228 (= (tail!82 lt!9931) lt!9928)))

(declare-fun lt!9932 () Unit!650)

(assert (=> b!54228 (= lt!9932 (lemmaDropTail!50 lt!9937 from!821))))

(declare-fun head!398 (List!1150) Token!258)

(declare-fun apply!135 (List!1150 Int) Token!258)

(assert (=> b!54228 (= (head!398 lt!9928) (apply!135 lt!9937 (+ 1 from!821)))))

(assert (=> b!54228 (= lt!9928 (drop!58 lt!9937 (+ 1 from!821)))))

(declare-fun lt!9929 () Unit!650)

(declare-fun lemmaDropApply!58 (List!1150 Int) Unit!650)

(assert (=> b!54228 (= lt!9929 (lemmaDropApply!58 lt!9937 (+ 1 from!821)))))

(assert (=> b!54228 (= (head!398 lt!9931) (apply!135 lt!9937 from!821))))

(assert (=> b!54228 (= lt!9931 (drop!58 lt!9937 from!821))))

(declare-fun lt!9938 () Unit!650)

(assert (=> b!54228 (= lt!9938 (lemmaDropApply!58 lt!9937 from!821))))

(declare-fun list!299 (BalanceConc!602) List!1150)

(assert (=> b!54228 (= lt!9937 (list!299 v!6227))))

(declare-fun b!54229 () Bool)

(declare-fun res!34754 () Bool)

(assert (=> b!54229 (=> (not res!34754) (not e!32102))))

(declare-fun rulesInvariant!133 (LexerInterface!139 List!1151) Bool)

(assert (=> b!54229 (= res!34754 (rulesInvariant!133 thiss!11059 rules!1069))))

(declare-fun b!54230 () Bool)

(declare-fun tp!34668 () Bool)

(assert (=> b!54230 (= e!32096 (and e!32103 tp!34668))))

(declare-fun b!54231 () Bool)

(declare-fun res!34758 () Bool)

(assert (=> b!54231 (=> (not res!34758) (not e!32102))))

(assert (=> b!54231 (= res!34758 (< from!821 (- lt!9930 1)))))

(declare-fun b!54232 () Bool)

(assert (=> b!54232 (= e!32099 true)))

(declare-fun rulesProduceIndividualToken!36 (LexerInterface!139 List!1151 Token!258) Bool)

(assert (=> b!54232 (rulesProduceIndividualToken!36 thiss!11059 rules!1069 lt!9934)))

(declare-fun lt!9935 () Unit!650)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!22 (LexerInterface!139 List!1151 List!1150 Token!258) Unit!650)

(assert (=> b!54232 (= lt!9935 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!22 thiss!11059 rules!1069 lt!9937 lt!9934))))

(declare-fun b!54233 () Bool)

(declare-fun res!34760 () Bool)

(assert (=> b!54233 (=> res!34760 e!32099)))

(declare-fun contains!149 (List!1150 Token!258) Bool)

(assert (=> b!54233 (= res!34760 (not (contains!149 lt!9937 lt!9936)))))

(assert (=> b!54234 (= e!32101 (and tp!34670 tp!34669))))

(declare-fun b!54235 () Bool)

(declare-fun res!34759 () Bool)

(assert (=> b!54235 (=> res!34759 e!32098)))

(assert (=> b!54235 (= res!34759 (not (contains!149 lt!9937 lt!9934)))))

(declare-fun b!54236 () Bool)

(declare-fun tp!34667 () Bool)

(declare-fun inv!1511 (Conc!299) Bool)

(assert (=> b!54236 (= e!32104 (and (inv!1511 (c!17150 v!6227)) tp!34667))))

(assert (= (and start!4270 res!34755) b!54225))

(assert (= (and b!54225 res!34752) b!54226))

(assert (= (and b!54226 res!34761) b!54229))

(assert (= (and b!54229 res!34754) b!54227))

(assert (= (and b!54227 res!34756) b!54231))

(assert (= (and b!54231 res!34758) b!54228))

(assert (= (and b!54228 (not res!34757)) b!54235))

(assert (= (and b!54235 (not res!34759)) b!54223))

(assert (= (and b!54223 (not res!34753)) b!54233))

(assert (= (and b!54233 (not res!34760)) b!54232))

(assert (= start!4270 b!54236))

(assert (= b!54224 b!54234))

(assert (= b!54230 b!54224))

(assert (= (and start!4270 ((_ is Cons!1145) rules!1069)) b!54230))

(declare-fun m!28058 () Bool)

(assert (=> b!54228 m!28058))

(declare-fun m!28060 () Bool)

(assert (=> b!54228 m!28060))

(declare-fun m!28062 () Bool)

(assert (=> b!54228 m!28062))

(declare-fun m!28064 () Bool)

(assert (=> b!54228 m!28064))

(declare-fun m!28066 () Bool)

(assert (=> b!54228 m!28066))

(declare-fun m!28068 () Bool)

(assert (=> b!54228 m!28068))

(declare-fun m!28070 () Bool)

(assert (=> b!54228 m!28070))

(declare-fun m!28072 () Bool)

(assert (=> b!54228 m!28072))

(declare-fun m!28074 () Bool)

(assert (=> b!54228 m!28074))

(declare-fun m!28076 () Bool)

(assert (=> b!54228 m!28076))

(declare-fun m!28078 () Bool)

(assert (=> b!54228 m!28078))

(declare-fun m!28080 () Bool)

(assert (=> b!54228 m!28080))

(declare-fun m!28082 () Bool)

(assert (=> b!54228 m!28082))

(declare-fun m!28084 () Bool)

(assert (=> b!54228 m!28084))

(declare-fun m!28086 () Bool)

(assert (=> b!54228 m!28086))

(declare-fun m!28088 () Bool)

(assert (=> b!54228 m!28088))

(declare-fun m!28090 () Bool)

(assert (=> b!54223 m!28090))

(declare-fun m!28092 () Bool)

(assert (=> b!54223 m!28092))

(declare-fun m!28094 () Bool)

(assert (=> b!54225 m!28094))

(declare-fun m!28096 () Bool)

(assert (=> b!54229 m!28096))

(declare-fun m!28098 () Bool)

(assert (=> b!54232 m!28098))

(declare-fun m!28100 () Bool)

(assert (=> b!54232 m!28100))

(declare-fun m!28102 () Bool)

(assert (=> start!4270 m!28102))

(declare-fun m!28104 () Bool)

(assert (=> b!54236 m!28104))

(declare-fun m!28106 () Bool)

(assert (=> b!54224 m!28106))

(declare-fun m!28108 () Bool)

(assert (=> b!54224 m!28108))

(declare-fun m!28110 () Bool)

(assert (=> b!54227 m!28110))

(declare-fun m!28112 () Bool)

(assert (=> b!54235 m!28112))

(declare-fun m!28114 () Bool)

(assert (=> b!54233 m!28114))

(declare-fun m!28116 () Bool)

(assert (=> b!54226 m!28116))

(check-sat b_and!1825 (not b_next!1773) (not b_next!1775) (not b!54235) (not b!54227) (not b!54230) (not b!54225) b_and!1823 (not b!54228) (not b!54224) (not b!54236) (not b!54233) (not b!54232) (not start!4270) (not b!54223) (not b!54226) (not b!54229))
(check-sat b_and!1825 b_and!1823 (not b_next!1773) (not b_next!1775))
