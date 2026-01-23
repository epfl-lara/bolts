; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!132394 () Bool)

(assert start!132394)

(declare-fun b!1432025 () Bool)

(declare-fun e!914079 () Bool)

(declare-datatypes ((C!8010 0))(
  ( (C!8011 (val!4575 Int)) )
))
(declare-datatypes ((Regex!3916 0))(
  ( (ElementMatch!3916 (c!235423 C!8010)) (Concat!6608 (regOne!8344 Regex!3916) (regTwo!8344 Regex!3916)) (EmptyExpr!3916) (Star!3916 (reg!4245 Regex!3916)) (EmptyLang!3916) (Union!3916 (regOne!8345 Regex!3916) (regTwo!8345 Regex!3916)) )
))
(declare-datatypes ((List!14908 0))(
  ( (Nil!14842) (Cons!14842 (h!20243 C!8010) (t!127111 List!14908)) )
))
(declare-datatypes ((IArray!10065 0))(
  ( (IArray!10066 (innerList!5090 List!14908)) )
))
(declare-datatypes ((List!14909 0))(
  ( (Nil!14843) (Cons!14843 (h!20244 (_ BitVec 16)) (t!127112 List!14909)) )
))
(declare-datatypes ((TokenValue!2692 0))(
  ( (FloatLiteralValue!5384 (text!19289 List!14909)) (TokenValueExt!2691 (__x!9182 Int)) (Broken!13460 (value!83780 List!14909)) (Object!2757) (End!2692) (Def!2692) (Underscore!2692) (Match!2692) (Else!2692) (Error!2692) (Case!2692) (If!2692) (Extends!2692) (Abstract!2692) (Class!2692) (Val!2692) (DelimiterValue!5384 (del!2752 List!14909)) (KeywordValue!2698 (value!83781 List!14909)) (CommentValue!5384 (value!83782 List!14909)) (WhitespaceValue!5384 (value!83783 List!14909)) (IndentationValue!2692 (value!83784 List!14909)) (String!17717) (Int32!2692) (Broken!13461 (value!83785 List!14909)) (Boolean!2693) (Unit!22395) (OperatorValue!2695 (op!2752 List!14909)) (IdentifierValue!5384 (value!83786 List!14909)) (IdentifierValue!5385 (value!83787 List!14909)) (WhitespaceValue!5385 (value!83788 List!14909)) (True!5384) (False!5384) (Broken!13462 (value!83789 List!14909)) (Broken!13463 (value!83790 List!14909)) (True!5385) (RightBrace!2692) (RightBracket!2692) (Colon!2692) (Null!2692) (Comma!2692) (LeftBracket!2692) (False!5385) (LeftBrace!2692) (ImaginaryLiteralValue!2692 (text!19290 List!14909)) (StringLiteralValue!8076 (value!83791 List!14909)) (EOFValue!2692 (value!83792 List!14909)) (IdentValue!2692 (value!83793 List!14909)) (DelimiterValue!5385 (value!83794 List!14909)) (DedentValue!2692 (value!83795 List!14909)) (NewLineValue!2692 (value!83796 List!14909)) (IntegerValue!8076 (value!83797 (_ BitVec 32)) (text!19291 List!14909)) (IntegerValue!8077 (value!83798 Int) (text!19292 List!14909)) (Times!2692) (Or!2692) (Equal!2692) (Minus!2692) (Broken!13464 (value!83799 List!14909)) (And!2692) (Div!2692) (LessEqual!2692) (Mod!2692) (Concat!6609) (Not!2692) (Plus!2692) (SpaceValue!2692 (value!83800 List!14909)) (IntegerValue!8078 (value!83801 Int) (text!19293 List!14909)) (StringLiteralValue!8077 (text!19294 List!14909)) (FloatLiteralValue!5385 (text!19295 List!14909)) (BytesLiteralValue!2692 (value!83802 List!14909)) (CommentValue!5385 (value!83803 List!14909)) (StringLiteralValue!8078 (value!83804 List!14909)) (ErrorTokenValue!2692 (msg!2753 List!14909)) )
))
(declare-datatypes ((String!17718 0))(
  ( (String!17719 (value!83805 String)) )
))
(declare-datatypes ((Conc!5030 0))(
  ( (Node!5030 (left!12650 Conc!5030) (right!12980 Conc!5030) (csize!10290 Int) (cheight!5241 Int)) (Leaf!7533 (xs!7763 IArray!10065) (csize!10291 Int)) (Empty!5030) )
))
(declare-datatypes ((BalanceConc!10000 0))(
  ( (BalanceConc!10001 (c!235424 Conc!5030)) )
))
(declare-datatypes ((TokenValueInjection!5044 0))(
  ( (TokenValueInjection!5045 (toValue!3905 Int) (toChars!3764 Int)) )
))
(declare-datatypes ((Rule!5004 0))(
  ( (Rule!5005 (regex!2602 Regex!3916) (tag!2864 String!17718) (isSeparator!2602 Bool) (transformation!2602 TokenValueInjection!5044)) )
))
(declare-datatypes ((Token!4866 0))(
  ( (Token!4867 (value!83806 TokenValue!2692) (rule!4365 Rule!5004) (size!12182 Int) (originalCharacters!3464 List!14908)) )
))
(declare-datatypes ((List!14910 0))(
  ( (Nil!14844) (Cons!14844 (h!20245 Token!4866) (t!127113 List!14910)) )
))
(declare-datatypes ((IArray!10067 0))(
  ( (IArray!10068 (innerList!5091 List!14910)) )
))
(declare-datatypes ((Conc!5031 0))(
  ( (Node!5031 (left!12651 Conc!5031) (right!12981 Conc!5031) (csize!10292 Int) (cheight!5242 Int)) (Leaf!7534 (xs!7764 IArray!10067) (csize!10293 Int)) (Empty!5031) )
))
(declare-datatypes ((BalanceConc!10002 0))(
  ( (BalanceConc!10003 (c!235425 Conc!5031)) )
))
(declare-datatypes ((List!14911 0))(
  ( (Nil!14845) (Cons!14845 (h!20246 Rule!5004) (t!127114 List!14911)) )
))
(declare-datatypes ((PrintableTokens!986 0))(
  ( (PrintableTokens!987 (rules!11321 List!14911) (tokens!1949 BalanceConc!10002)) )
))
(declare-fun thiss!10022 () PrintableTokens!986)

(declare-fun lt!486383 () BalanceConc!10002)

(declare-datatypes ((LexerInterface!2266 0))(
  ( (LexerInterfaceExt!2263 (__x!9183 Int)) (Lexer!2264) )
))
(declare-fun rulesProduceEachTokenIndividually!832 (LexerInterface!2266 List!14911 BalanceConc!10002) Bool)

(assert (=> b!1432025 (= e!914079 (rulesProduceEachTokenIndividually!832 Lexer!2264 (rules!11321 thiss!10022) lt!486383))))

(declare-fun b!1432026 () Bool)

(declare-fun e!914078 () Bool)

(declare-fun e!914074 () Bool)

(assert (=> b!1432026 (= e!914078 e!914074)))

(declare-fun res!648184 () Bool)

(assert (=> b!1432026 (=> (not res!648184) (not e!914074))))

(declare-fun other!32 () PrintableTokens!986)

(declare-fun isEmpty!9204 (BalanceConc!10002) Bool)

(assert (=> b!1432026 (= res!648184 (not (isEmpty!9204 (tokens!1949 other!32))))))

(declare-datatypes ((Unit!22396 0))(
  ( (Unit!22397) )
))
(declare-fun lt!486390 () Unit!22396)

(declare-fun lemmaInvariant!298 (PrintableTokens!986) Unit!22396)

(assert (=> b!1432026 (= lt!486390 (lemmaInvariant!298 thiss!10022))))

(declare-fun lt!486384 () Unit!22396)

(assert (=> b!1432026 (= lt!486384 (lemmaInvariant!298 other!32))))

(declare-fun b!1432027 () Bool)

(declare-fun res!648185 () Bool)

(assert (=> b!1432027 (=> res!648185 e!914079)))

(declare-fun rulesInvariant!2114 (LexerInterface!2266 List!14911) Bool)

(assert (=> b!1432027 (= res!648185 (not (rulesInvariant!2114 Lexer!2264 (rules!11321 thiss!10022))))))

(declare-fun b!1432028 () Bool)

(declare-fun e!914075 () Bool)

(declare-fun tp!405916 () Bool)

(declare-fun inv!19706 (Conc!5031) Bool)

(assert (=> b!1432028 (= e!914075 (and (inv!19706 (c!235425 (tokens!1949 other!32))) tp!405916))))

(declare-fun b!1432029 () Bool)

(declare-fun e!914072 () Bool)

(declare-fun lt!486392 () List!14910)

(declare-fun tokensListTwoByTwoPredicateSeparableList!224 (LexerInterface!2266 List!14910 List!14911) Bool)

(assert (=> b!1432029 (= e!914072 (tokensListTwoByTwoPredicateSeparableList!224 Lexer!2264 lt!486392 (rules!11321 thiss!10022)))))

(declare-fun tp!405913 () Bool)

(declare-fun e!914076 () Bool)

(declare-fun b!1432030 () Bool)

(declare-fun e!914080 () Bool)

(declare-fun inv!19707 (BalanceConc!10002) Bool)

(assert (=> b!1432030 (= e!914080 (and tp!405913 (inv!19707 (tokens!1949 thiss!10022)) e!914076))))

(declare-fun b!1432031 () Bool)

(declare-fun res!648182 () Bool)

(assert (=> b!1432031 (=> (not res!648182) (not e!914074))))

(assert (=> b!1432031 (= res!648182 (not (isEmpty!9204 (tokens!1949 thiss!10022))))))

(declare-fun b!1432032 () Bool)

(declare-fun e!914077 () Bool)

(assert (=> b!1432032 (= e!914077 e!914079)))

(declare-fun res!648187 () Bool)

(assert (=> b!1432032 (=> res!648187 e!914079)))

(declare-fun size!12183 (BalanceConc!10002) Int)

(assert (=> b!1432032 (= res!648187 (> 0 (size!12183 lt!486383)))))

(declare-fun ++!3950 (BalanceConc!10002 BalanceConc!10002) BalanceConc!10002)

(assert (=> b!1432032 (= lt!486383 (++!3950 (tokens!1949 thiss!10022) (tokens!1949 other!32)))))

(assert (=> b!1432032 e!914072))

(declare-fun res!648186 () Bool)

(assert (=> b!1432032 (=> (not res!648186) (not e!914072))))

(declare-fun rulesProduceEachTokenIndividuallyList!709 (LexerInterface!2266 List!14911 List!14910) Bool)

(assert (=> b!1432032 (= res!648186 (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) lt!486392))))

(declare-fun lt!486381 () List!14910)

(declare-fun lt!486391 () List!14910)

(declare-fun ++!3951 (List!14910 List!14910) List!14910)

(assert (=> b!1432032 (= lt!486392 (++!3951 lt!486381 lt!486391))))

(declare-fun lt!486389 () Unit!22396)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!39 (LexerInterface!2266 List!14911 List!14910 List!14910) Unit!22396)

(assert (=> b!1432032 (= lt!486389 (lemmaRulesProduceEachTokenIndividuallyConcat!39 Lexer!2264 (rules!11321 thiss!10022) lt!486381 lt!486391))))

(declare-fun lt!486386 () Unit!22396)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!39 (LexerInterface!2266 List!14910 List!14910 List!14911) Unit!22396)

(assert (=> b!1432032 (= lt!486386 (tokensListTwoByTwoPredicateConcatSeparableTokensList!39 Lexer!2264 lt!486381 lt!486391 (rules!11321 thiss!10022)))))

(declare-fun res!648188 () Bool)

(assert (=> start!132394 (=> (not res!648188) (not e!914078))))

(assert (=> start!132394 (= res!648188 (= (rules!11321 thiss!10022) (rules!11321 other!32)))))

(assert (=> start!132394 e!914078))

(declare-fun inv!19708 (PrintableTokens!986) Bool)

(assert (=> start!132394 (and (inv!19708 thiss!10022) e!914080)))

(declare-fun e!914073 () Bool)

(assert (=> start!132394 (and (inv!19708 other!32) e!914073)))

(declare-fun b!1432033 () Bool)

(declare-fun res!648183 () Bool)

(assert (=> b!1432033 (=> res!648183 e!914079)))

(declare-fun isEmpty!9205 (List!14911) Bool)

(assert (=> b!1432033 (= res!648183 (isEmpty!9205 (rules!11321 thiss!10022)))))

(declare-fun b!1432034 () Bool)

(assert (=> b!1432034 (= e!914074 (not e!914077))))

(declare-fun res!648189 () Bool)

(assert (=> b!1432034 (=> res!648189 e!914077)))

(declare-fun lt!486385 () Token!4866)

(declare-fun lt!486387 () Token!4866)

(declare-fun separableTokensPredicate!501 (LexerInterface!2266 Token!4866 Token!4866 List!14911) Bool)

(assert (=> b!1432034 (= res!648189 (not (separableTokensPredicate!501 Lexer!2264 lt!486385 lt!486387 (rules!11321 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1199 (LexerInterface!2266 List!14911 Token!4866) Bool)

(assert (=> b!1432034 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) lt!486387)))

(declare-fun lt!486382 () Unit!22396)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!384 (LexerInterface!2266 List!14911 List!14910 Token!4866) Unit!22396)

(assert (=> b!1432034 (= lt!486382 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!384 Lexer!2264 (rules!11321 thiss!10022) lt!486391 lt!486387))))

(declare-fun head!2858 (BalanceConc!10002) Token!4866)

(assert (=> b!1432034 (= lt!486387 (head!2858 (tokens!1949 other!32)))))

(declare-fun list!5897 (BalanceConc!10002) List!14910)

(assert (=> b!1432034 (= lt!486391 (list!5897 (tokens!1949 other!32)))))

(assert (=> b!1432034 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) lt!486385)))

(declare-fun lt!486388 () Unit!22396)

(assert (=> b!1432034 (= lt!486388 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!384 Lexer!2264 (rules!11321 thiss!10022) lt!486381 lt!486385))))

(declare-fun last!140 (BalanceConc!10002) Token!4866)

(assert (=> b!1432034 (= lt!486385 (last!140 (tokens!1949 thiss!10022)))))

(assert (=> b!1432034 (= lt!486381 (list!5897 (tokens!1949 thiss!10022)))))

(declare-fun b!1432035 () Bool)

(declare-fun tp!405915 () Bool)

(assert (=> b!1432035 (= e!914073 (and tp!405915 (inv!19707 (tokens!1949 other!32)) e!914075))))

(declare-fun b!1432036 () Bool)

(declare-fun tp!405914 () Bool)

(assert (=> b!1432036 (= e!914076 (and (inv!19706 (c!235425 (tokens!1949 thiss!10022))) tp!405914))))

(assert (= (and start!132394 res!648188) b!1432026))

(assert (= (and b!1432026 res!648184) b!1432031))

(assert (= (and b!1432031 res!648182) b!1432034))

(assert (= (and b!1432034 (not res!648189)) b!1432032))

(assert (= (and b!1432032 res!648186) b!1432029))

(assert (= (and b!1432032 (not res!648187)) b!1432033))

(assert (= (and b!1432033 (not res!648183)) b!1432027))

(assert (= (and b!1432027 (not res!648185)) b!1432025))

(assert (= b!1432030 b!1432036))

(assert (= start!132394 b!1432030))

(assert (= b!1432035 b!1432028))

(assert (= start!132394 b!1432035))

(declare-fun m!1631789 () Bool)

(assert (=> b!1432030 m!1631789))

(declare-fun m!1631791 () Bool)

(assert (=> start!132394 m!1631791))

(declare-fun m!1631793 () Bool)

(assert (=> start!132394 m!1631793))

(declare-fun m!1631795 () Bool)

(assert (=> b!1432036 m!1631795))

(declare-fun m!1631797 () Bool)

(assert (=> b!1432027 m!1631797))

(declare-fun m!1631799 () Bool)

(assert (=> b!1432026 m!1631799))

(declare-fun m!1631801 () Bool)

(assert (=> b!1432026 m!1631801))

(declare-fun m!1631803 () Bool)

(assert (=> b!1432026 m!1631803))

(declare-fun m!1631805 () Bool)

(assert (=> b!1432032 m!1631805))

(declare-fun m!1631807 () Bool)

(assert (=> b!1432032 m!1631807))

(declare-fun m!1631809 () Bool)

(assert (=> b!1432032 m!1631809))

(declare-fun m!1631811 () Bool)

(assert (=> b!1432032 m!1631811))

(declare-fun m!1631813 () Bool)

(assert (=> b!1432032 m!1631813))

(declare-fun m!1631815 () Bool)

(assert (=> b!1432032 m!1631815))

(declare-fun m!1631817 () Bool)

(assert (=> b!1432029 m!1631817))

(declare-fun m!1631819 () Bool)

(assert (=> b!1432031 m!1631819))

(declare-fun m!1631821 () Bool)

(assert (=> b!1432033 m!1631821))

(declare-fun m!1631823 () Bool)

(assert (=> b!1432035 m!1631823))

(declare-fun m!1631825 () Bool)

(assert (=> b!1432034 m!1631825))

(declare-fun m!1631827 () Bool)

(assert (=> b!1432034 m!1631827))

(declare-fun m!1631829 () Bool)

(assert (=> b!1432034 m!1631829))

(declare-fun m!1631831 () Bool)

(assert (=> b!1432034 m!1631831))

(declare-fun m!1631833 () Bool)

(assert (=> b!1432034 m!1631833))

(declare-fun m!1631835 () Bool)

(assert (=> b!1432034 m!1631835))

(declare-fun m!1631837 () Bool)

(assert (=> b!1432034 m!1631837))

(declare-fun m!1631839 () Bool)

(assert (=> b!1432034 m!1631839))

(declare-fun m!1631841 () Bool)

(assert (=> b!1432034 m!1631841))

(declare-fun m!1631843 () Bool)

(assert (=> b!1432025 m!1631843))

(declare-fun m!1631845 () Bool)

(assert (=> b!1432028 m!1631845))

(push 1)

(assert (not b!1432032))

(assert (not b!1432030))

(assert (not b!1432026))

(assert (not b!1432034))

(assert (not b!1432029))

(assert (not b!1432035))

(assert (not b!1432028))

(assert (not start!132394))

(assert (not b!1432025))

(assert (not b!1432027))

(assert (not b!1432033))

(assert (not b!1432031))

(assert (not b!1432036))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!412109 () Bool)

(declare-fun isBalanced!1494 (Conc!5031) Bool)

(assert (=> d!412109 (= (inv!19707 (tokens!1949 thiss!10022)) (isBalanced!1494 (c!235425 (tokens!1949 thiss!10022))))))

(declare-fun bs!340825 () Bool)

(assert (= bs!340825 d!412109))

(declare-fun m!1631905 () Bool)

(assert (=> bs!340825 m!1631905))

(assert (=> b!1432030 d!412109))

(declare-fun d!412111 () Bool)

(declare-fun c!235431 () Bool)

(assert (=> d!412111 (= c!235431 (is-Node!5031 (c!235425 (tokens!1949 other!32))))))

(declare-fun e!914112 () Bool)

(assert (=> d!412111 (= (inv!19706 (c!235425 (tokens!1949 other!32))) e!914112)))

(declare-fun b!1432079 () Bool)

(declare-fun inv!19712 (Conc!5031) Bool)

(assert (=> b!1432079 (= e!914112 (inv!19712 (c!235425 (tokens!1949 other!32))))))

(declare-fun b!1432080 () Bool)

(declare-fun e!914113 () Bool)

(assert (=> b!1432080 (= e!914112 e!914113)))

(declare-fun res!648220 () Bool)

(assert (=> b!1432080 (= res!648220 (not (is-Leaf!7534 (c!235425 (tokens!1949 other!32)))))))

(assert (=> b!1432080 (=> res!648220 e!914113)))

(declare-fun b!1432081 () Bool)

(declare-fun inv!19713 (Conc!5031) Bool)

(assert (=> b!1432081 (= e!914113 (inv!19713 (c!235425 (tokens!1949 other!32))))))

(assert (= (and d!412111 c!235431) b!1432079))

(assert (= (and d!412111 (not c!235431)) b!1432080))

(assert (= (and b!1432080 (not res!648220)) b!1432081))

(declare-fun m!1631907 () Bool)

(assert (=> b!1432079 m!1631907))

(declare-fun m!1631909 () Bool)

(assert (=> b!1432081 m!1631909))

(assert (=> b!1432028 d!412111))

(declare-fun d!412113 () Bool)

(declare-fun res!648227 () Bool)

(declare-fun e!914116 () Bool)

(assert (=> d!412113 (=> (not res!648227) (not e!914116))))

(assert (=> d!412113 (= res!648227 (not (isEmpty!9205 (rules!11321 thiss!10022))))))

(assert (=> d!412113 (= (inv!19708 thiss!10022) e!914116)))

(declare-fun b!1432088 () Bool)

(declare-fun res!648228 () Bool)

(assert (=> b!1432088 (=> (not res!648228) (not e!914116))))

(assert (=> b!1432088 (= res!648228 (rulesInvariant!2114 Lexer!2264 (rules!11321 thiss!10022)))))

(declare-fun b!1432089 () Bool)

(declare-fun res!648229 () Bool)

(assert (=> b!1432089 (=> (not res!648229) (not e!914116))))

(assert (=> b!1432089 (= res!648229 (rulesProduceEachTokenIndividually!832 Lexer!2264 (rules!11321 thiss!10022) (tokens!1949 thiss!10022)))))

(declare-fun b!1432090 () Bool)

(declare-fun separableTokens!216 (LexerInterface!2266 BalanceConc!10002 List!14911) Bool)

(assert (=> b!1432090 (= e!914116 (separableTokens!216 Lexer!2264 (tokens!1949 thiss!10022) (rules!11321 thiss!10022)))))

(assert (= (and d!412113 res!648227) b!1432088))

(assert (= (and b!1432088 res!648228) b!1432089))

(assert (= (and b!1432089 res!648229) b!1432090))

(assert (=> d!412113 m!1631821))

(assert (=> b!1432088 m!1631797))

(declare-fun m!1631915 () Bool)

(assert (=> b!1432089 m!1631915))

(declare-fun m!1631917 () Bool)

(assert (=> b!1432090 m!1631917))

(assert (=> start!132394 d!412113))

(declare-fun d!412119 () Bool)

(declare-fun res!648230 () Bool)

(declare-fun e!914117 () Bool)

(assert (=> d!412119 (=> (not res!648230) (not e!914117))))

(assert (=> d!412119 (= res!648230 (not (isEmpty!9205 (rules!11321 other!32))))))

(assert (=> d!412119 (= (inv!19708 other!32) e!914117)))

(declare-fun b!1432091 () Bool)

(declare-fun res!648231 () Bool)

(assert (=> b!1432091 (=> (not res!648231) (not e!914117))))

(assert (=> b!1432091 (= res!648231 (rulesInvariant!2114 Lexer!2264 (rules!11321 other!32)))))

(declare-fun b!1432092 () Bool)

(declare-fun res!648232 () Bool)

(assert (=> b!1432092 (=> (not res!648232) (not e!914117))))

(assert (=> b!1432092 (= res!648232 (rulesProduceEachTokenIndividually!832 Lexer!2264 (rules!11321 other!32) (tokens!1949 other!32)))))

(declare-fun b!1432093 () Bool)

(assert (=> b!1432093 (= e!914117 (separableTokens!216 Lexer!2264 (tokens!1949 other!32) (rules!11321 other!32)))))

(assert (= (and d!412119 res!648230) b!1432091))

(assert (= (and b!1432091 res!648231) b!1432092))

(assert (= (and b!1432092 res!648232) b!1432093))

(declare-fun m!1631919 () Bool)

(assert (=> d!412119 m!1631919))

(declare-fun m!1631921 () Bool)

(assert (=> b!1432091 m!1631921))

(declare-fun m!1631923 () Bool)

(assert (=> b!1432092 m!1631923))

(declare-fun m!1631925 () Bool)

(assert (=> b!1432093 m!1631925))

(assert (=> start!132394 d!412119))

(declare-fun d!412121 () Bool)

(declare-fun res!648237 () Bool)

(declare-fun e!914123 () Bool)

(assert (=> d!412121 (=> res!648237 e!914123)))

(assert (=> d!412121 (= res!648237 (or (not (is-Cons!14844 lt!486392)) (not (is-Cons!14844 (t!127113 lt!486392)))))))

(assert (=> d!412121 (= (tokensListTwoByTwoPredicateSeparableList!224 Lexer!2264 lt!486392 (rules!11321 thiss!10022)) e!914123)))

(declare-fun b!1432098 () Bool)

(declare-fun e!914122 () Bool)

(assert (=> b!1432098 (= e!914123 e!914122)))

(declare-fun res!648238 () Bool)

(assert (=> b!1432098 (=> (not res!648238) (not e!914122))))

(assert (=> b!1432098 (= res!648238 (separableTokensPredicate!501 Lexer!2264 (h!20245 lt!486392) (h!20245 (t!127113 lt!486392)) (rules!11321 thiss!10022)))))

(declare-fun lt!486451 () Unit!22396)

(declare-fun Unit!22401 () Unit!22396)

(assert (=> b!1432098 (= lt!486451 Unit!22401)))

(declare-fun size!12186 (BalanceConc!10000) Int)

(declare-fun charsOf!1506 (Token!4866) BalanceConc!10000)

(assert (=> b!1432098 (> (size!12186 (charsOf!1506 (h!20245 (t!127113 lt!486392)))) 0)))

(declare-fun lt!486452 () Unit!22396)

(declare-fun Unit!22402 () Unit!22396)

(assert (=> b!1432098 (= lt!486452 Unit!22402)))

(assert (=> b!1432098 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) (h!20245 (t!127113 lt!486392)))))

(declare-fun lt!486446 () Unit!22396)

(declare-fun Unit!22403 () Unit!22396)

(assert (=> b!1432098 (= lt!486446 Unit!22403)))

(assert (=> b!1432098 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) (h!20245 lt!486392))))

(declare-fun lt!486447 () Unit!22396)

(declare-fun lt!486448 () Unit!22396)

(assert (=> b!1432098 (= lt!486447 lt!486448)))

(assert (=> b!1432098 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) (h!20245 (t!127113 lt!486392)))))

(assert (=> b!1432098 (= lt!486448 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!384 Lexer!2264 (rules!11321 thiss!10022) lt!486392 (h!20245 (t!127113 lt!486392))))))

(declare-fun lt!486450 () Unit!22396)

(declare-fun lt!486449 () Unit!22396)

(assert (=> b!1432098 (= lt!486450 lt!486449)))

(assert (=> b!1432098 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) (h!20245 lt!486392))))

(assert (=> b!1432098 (= lt!486449 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!384 Lexer!2264 (rules!11321 thiss!10022) lt!486392 (h!20245 lt!486392)))))

(declare-fun b!1432099 () Bool)

(assert (=> b!1432099 (= e!914122 (tokensListTwoByTwoPredicateSeparableList!224 Lexer!2264 (Cons!14844 (h!20245 (t!127113 lt!486392)) (t!127113 (t!127113 lt!486392))) (rules!11321 thiss!10022)))))

(assert (= (and d!412121 (not res!648237)) b!1432098))

(assert (= (and b!1432098 res!648238) b!1432099))

(declare-fun m!1631927 () Bool)

(assert (=> b!1432098 m!1631927))

(declare-fun m!1631929 () Bool)

(assert (=> b!1432098 m!1631929))

(declare-fun m!1631931 () Bool)

(assert (=> b!1432098 m!1631931))

(assert (=> b!1432098 m!1631927))

(declare-fun m!1631933 () Bool)

(assert (=> b!1432098 m!1631933))

(declare-fun m!1631935 () Bool)

(assert (=> b!1432098 m!1631935))

(declare-fun m!1631937 () Bool)

(assert (=> b!1432098 m!1631937))

(declare-fun m!1631939 () Bool)

(assert (=> b!1432098 m!1631939))

(declare-fun m!1631941 () Bool)

(assert (=> b!1432099 m!1631941))

(assert (=> b!1432029 d!412121))

(declare-fun b!1432108 () Bool)

(declare-fun e!914129 () List!14910)

(assert (=> b!1432108 (= e!914129 lt!486391)))

(declare-fun b!1432109 () Bool)

(assert (=> b!1432109 (= e!914129 (Cons!14844 (h!20245 lt!486381) (++!3951 (t!127113 lt!486381) lt!486391)))))

(declare-fun b!1432110 () Bool)

(declare-fun res!648243 () Bool)

(declare-fun e!914128 () Bool)

(assert (=> b!1432110 (=> (not res!648243) (not e!914128))))

(declare-fun lt!486455 () List!14910)

(declare-fun size!12187 (List!14910) Int)

(assert (=> b!1432110 (= res!648243 (= (size!12187 lt!486455) (+ (size!12187 lt!486381) (size!12187 lt!486391))))))

(declare-fun d!412123 () Bool)

(assert (=> d!412123 e!914128))

(declare-fun res!648244 () Bool)

(assert (=> d!412123 (=> (not res!648244) (not e!914128))))

(declare-fun content!2188 (List!14910) (Set Token!4866))

(assert (=> d!412123 (= res!648244 (= (content!2188 lt!486455) (set.union (content!2188 lt!486381) (content!2188 lt!486391))))))

(assert (=> d!412123 (= lt!486455 e!914129)))

(declare-fun c!235434 () Bool)

(assert (=> d!412123 (= c!235434 (is-Nil!14844 lt!486381))))

(assert (=> d!412123 (= (++!3951 lt!486381 lt!486391) lt!486455)))

(declare-fun b!1432111 () Bool)

(assert (=> b!1432111 (= e!914128 (or (not (= lt!486391 Nil!14844)) (= lt!486455 lt!486381)))))

(assert (= (and d!412123 c!235434) b!1432108))

(assert (= (and d!412123 (not c!235434)) b!1432109))

(assert (= (and d!412123 res!648244) b!1432110))

(assert (= (and b!1432110 res!648243) b!1432111))

(declare-fun m!1631943 () Bool)

(assert (=> b!1432109 m!1631943))

(declare-fun m!1631945 () Bool)

(assert (=> b!1432110 m!1631945))

(declare-fun m!1631947 () Bool)

(assert (=> b!1432110 m!1631947))

(declare-fun m!1631949 () Bool)

(assert (=> b!1432110 m!1631949))

(declare-fun m!1631951 () Bool)

(assert (=> d!412123 m!1631951))

(declare-fun m!1631953 () Bool)

(assert (=> d!412123 m!1631953))

(declare-fun m!1631955 () Bool)

(assert (=> d!412123 m!1631955))

(assert (=> b!1432032 d!412123))

(declare-fun d!412125 () Bool)

(declare-fun lt!486458 () Int)

(assert (=> d!412125 (= lt!486458 (size!12187 (list!5897 lt!486383)))))

(declare-fun size!12188 (Conc!5031) Int)

(assert (=> d!412125 (= lt!486458 (size!12188 (c!235425 lt!486383)))))

(assert (=> d!412125 (= (size!12183 lt!486383) lt!486458)))

(declare-fun bs!340827 () Bool)

(assert (= bs!340827 d!412125))

(declare-fun m!1631957 () Bool)

(assert (=> bs!340827 m!1631957))

(assert (=> bs!340827 m!1631957))

(declare-fun m!1631959 () Bool)

(assert (=> bs!340827 m!1631959))

(declare-fun m!1631961 () Bool)

(assert (=> bs!340827 m!1631961))

(assert (=> b!1432032 d!412125))

(declare-fun b!1432120 () Bool)

(declare-fun res!648255 () Bool)

(declare-fun e!914132 () Bool)

(assert (=> b!1432120 (=> (not res!648255) (not e!914132))))

(declare-fun ++!3954 (Conc!5031 Conc!5031) Conc!5031)

(assert (=> b!1432120 (= res!648255 (isBalanced!1494 (++!3954 (c!235425 (tokens!1949 thiss!10022)) (c!235425 (tokens!1949 other!32)))))))

(declare-fun b!1432122 () Bool)

(declare-fun res!648253 () Bool)

(assert (=> b!1432122 (=> (not res!648253) (not e!914132))))

(declare-fun height!731 (Conc!5031) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1432122 (= res!648253 (>= (height!731 (++!3954 (c!235425 (tokens!1949 thiss!10022)) (c!235425 (tokens!1949 other!32)))) (max!0 (height!731 (c!235425 (tokens!1949 thiss!10022))) (height!731 (c!235425 (tokens!1949 other!32))))))))

(declare-fun b!1432121 () Bool)

(declare-fun res!648254 () Bool)

(assert (=> b!1432121 (=> (not res!648254) (not e!914132))))

(assert (=> b!1432121 (= res!648254 (<= (height!731 (++!3954 (c!235425 (tokens!1949 thiss!10022)) (c!235425 (tokens!1949 other!32)))) (+ (max!0 (height!731 (c!235425 (tokens!1949 thiss!10022))) (height!731 (c!235425 (tokens!1949 other!32)))) 1)))))

(declare-fun lt!486461 () BalanceConc!10002)

(declare-fun b!1432123 () Bool)

(assert (=> b!1432123 (= e!914132 (= (list!5897 lt!486461) (++!3951 (list!5897 (tokens!1949 thiss!10022)) (list!5897 (tokens!1949 other!32)))))))

(declare-fun d!412127 () Bool)

(assert (=> d!412127 e!914132))

(declare-fun res!648256 () Bool)

(assert (=> d!412127 (=> (not res!648256) (not e!914132))))

(declare-fun appendAssocInst!310 (Conc!5031 Conc!5031) Bool)

(assert (=> d!412127 (= res!648256 (appendAssocInst!310 (c!235425 (tokens!1949 thiss!10022)) (c!235425 (tokens!1949 other!32))))))

(assert (=> d!412127 (= lt!486461 (BalanceConc!10003 (++!3954 (c!235425 (tokens!1949 thiss!10022)) (c!235425 (tokens!1949 other!32)))))))

(assert (=> d!412127 (= (++!3950 (tokens!1949 thiss!10022) (tokens!1949 other!32)) lt!486461)))

(assert (= (and d!412127 res!648256) b!1432120))

(assert (= (and b!1432120 res!648255) b!1432121))

(assert (= (and b!1432121 res!648254) b!1432122))

(assert (= (and b!1432122 res!648253) b!1432123))

(declare-fun m!1631963 () Bool)

(assert (=> b!1432120 m!1631963))

(assert (=> b!1432120 m!1631963))

(declare-fun m!1631965 () Bool)

(assert (=> b!1432120 m!1631965))

(declare-fun m!1631967 () Bool)

(assert (=> b!1432122 m!1631967))

(declare-fun m!1631969 () Bool)

(assert (=> b!1432122 m!1631969))

(assert (=> b!1432122 m!1631969))

(assert (=> b!1432122 m!1631967))

(declare-fun m!1631971 () Bool)

(assert (=> b!1432122 m!1631971))

(assert (=> b!1432122 m!1631963))

(assert (=> b!1432122 m!1631963))

(declare-fun m!1631973 () Bool)

(assert (=> b!1432122 m!1631973))

(declare-fun m!1631975 () Bool)

(assert (=> b!1432123 m!1631975))

(assert (=> b!1432123 m!1631831))

(assert (=> b!1432123 m!1631835))

(assert (=> b!1432123 m!1631831))

(assert (=> b!1432123 m!1631835))

(declare-fun m!1631977 () Bool)

(assert (=> b!1432123 m!1631977))

(assert (=> b!1432121 m!1631967))

(assert (=> b!1432121 m!1631969))

(assert (=> b!1432121 m!1631969))

(assert (=> b!1432121 m!1631967))

(assert (=> b!1432121 m!1631971))

(assert (=> b!1432121 m!1631963))

(assert (=> b!1432121 m!1631963))

(assert (=> b!1432121 m!1631973))

(declare-fun m!1631979 () Bool)

(assert (=> d!412127 m!1631979))

(assert (=> d!412127 m!1631963))

(assert (=> b!1432032 d!412127))

(declare-fun d!412129 () Bool)

(declare-fun e!914142 () Bool)

(assert (=> d!412129 e!914142))

(declare-fun res!648277 () Bool)

(assert (=> d!412129 (=> (not res!648277) (not e!914142))))

(assert (=> d!412129 (= res!648277 (is-Lexer!2264 Lexer!2264))))

(declare-fun lt!486468 () Unit!22396)

(declare-fun choose!8809 (LexerInterface!2266 List!14910 List!14910 List!14911) Unit!22396)

(assert (=> d!412129 (= lt!486468 (choose!8809 Lexer!2264 lt!486381 lt!486391 (rules!11321 thiss!10022)))))

(assert (=> d!412129 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412129 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!39 Lexer!2264 lt!486381 lt!486391 (rules!11321 thiss!10022)) lt!486468)))

(declare-fun b!1432144 () Bool)

(declare-fun res!648276 () Bool)

(assert (=> b!1432144 (=> (not res!648276) (not e!914142))))

(assert (=> b!1432144 (= res!648276 (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) lt!486381))))

(declare-fun b!1432146 () Bool)

(assert (=> b!1432146 (= e!914142 (tokensListTwoByTwoPredicateSeparableList!224 Lexer!2264 (++!3951 lt!486381 lt!486391) (rules!11321 thiss!10022)))))

(declare-fun lt!486469 () Unit!22396)

(declare-fun lt!486470 () Unit!22396)

(assert (=> b!1432146 (= lt!486469 lt!486470)))

(assert (=> b!1432146 (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) (++!3951 lt!486381 lt!486391))))

(assert (=> b!1432146 (= lt!486470 (lemmaRulesProduceEachTokenIndividuallyConcat!39 Lexer!2264 (rules!11321 thiss!10022) lt!486381 lt!486391))))

(declare-fun b!1432145 () Bool)

(declare-fun res!648278 () Bool)

(assert (=> b!1432145 (=> (not res!648278) (not e!914142))))

(assert (=> b!1432145 (= res!648278 (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) lt!486391))))

(declare-fun b!1432143 () Bool)

(declare-fun res!648279 () Bool)

(assert (=> b!1432143 (=> (not res!648279) (not e!914142))))

(assert (=> b!1432143 (= res!648279 (rulesInvariant!2114 Lexer!2264 (rules!11321 thiss!10022)))))

(assert (= (and d!412129 res!648277) b!1432143))

(assert (= (and b!1432143 res!648279) b!1432144))

(assert (= (and b!1432144 res!648276) b!1432145))

(assert (= (and b!1432145 res!648278) b!1432146))

(declare-fun m!1631997 () Bool)

(assert (=> b!1432144 m!1631997))

(assert (=> b!1432143 m!1631797))

(declare-fun m!1631999 () Bool)

(assert (=> b!1432145 m!1631999))

(declare-fun m!1632001 () Bool)

(assert (=> d!412129 m!1632001))

(assert (=> d!412129 m!1631821))

(assert (=> b!1432146 m!1631809))

(assert (=> b!1432146 m!1631809))

(declare-fun m!1632003 () Bool)

(assert (=> b!1432146 m!1632003))

(assert (=> b!1432146 m!1631809))

(declare-fun m!1632005 () Bool)

(assert (=> b!1432146 m!1632005))

(assert (=> b!1432146 m!1631807))

(assert (=> b!1432032 d!412129))

(declare-fun d!412139 () Bool)

(assert (=> d!412139 (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) (++!3951 lt!486381 lt!486391))))

(declare-fun lt!486475 () Unit!22396)

(declare-fun choose!8810 (LexerInterface!2266 List!14911 List!14910 List!14910) Unit!22396)

(assert (=> d!412139 (= lt!486475 (choose!8810 Lexer!2264 (rules!11321 thiss!10022) lt!486381 lt!486391))))

(assert (=> d!412139 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412139 (= (lemmaRulesProduceEachTokenIndividuallyConcat!39 Lexer!2264 (rules!11321 thiss!10022) lt!486381 lt!486391) lt!486475)))

(declare-fun bs!340829 () Bool)

(assert (= bs!340829 d!412139))

(assert (=> bs!340829 m!1631809))

(assert (=> bs!340829 m!1631809))

(assert (=> bs!340829 m!1632005))

(declare-fun m!1632007 () Bool)

(assert (=> bs!340829 m!1632007))

(assert (=> bs!340829 m!1631821))

(assert (=> b!1432032 d!412139))

(declare-fun b!1432206 () Bool)

(declare-fun e!914178 () Bool)

(assert (=> b!1432206 (= e!914178 true)))

(declare-fun b!1432205 () Bool)

(declare-fun e!914177 () Bool)

(assert (=> b!1432205 (= e!914177 e!914178)))

(declare-fun b!1432204 () Bool)

(declare-fun e!914176 () Bool)

(assert (=> b!1432204 (= e!914176 e!914177)))

(declare-fun d!412141 () Bool)

(assert (=> d!412141 e!914176))

(assert (= b!1432205 b!1432206))

(assert (= b!1432204 b!1432205))

(assert (= (and d!412141 (is-Cons!14845 (rules!11321 thiss!10022))) b!1432204))

(declare-fun order!8927 () Int)

(declare-fun order!8925 () Int)

(declare-fun lambda!62787 () Int)

(declare-fun dynLambda!6776 (Int Int) Int)

(declare-fun dynLambda!6777 (Int Int) Int)

(assert (=> b!1432206 (< (dynLambda!6776 order!8925 (toValue!3905 (transformation!2602 (h!20246 (rules!11321 thiss!10022))))) (dynLambda!6777 order!8927 lambda!62787))))

(declare-fun order!8929 () Int)

(declare-fun dynLambda!6778 (Int Int) Int)

(assert (=> b!1432206 (< (dynLambda!6778 order!8929 (toChars!3764 (transformation!2602 (h!20246 (rules!11321 thiss!10022))))) (dynLambda!6777 order!8927 lambda!62787))))

(assert (=> d!412141 true))

(declare-fun lt!486491 () Bool)

(declare-fun forall!3657 (List!14910 Int) Bool)

(assert (=> d!412141 (= lt!486491 (forall!3657 lt!486392 lambda!62787))))

(declare-fun e!914168 () Bool)

(assert (=> d!412141 (= lt!486491 e!914168)))

(declare-fun res!648315 () Bool)

(assert (=> d!412141 (=> res!648315 e!914168)))

(assert (=> d!412141 (= res!648315 (not (is-Cons!14844 lt!486392)))))

(assert (=> d!412141 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412141 (= (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) lt!486392) lt!486491)))

(declare-fun b!1432194 () Bool)

(declare-fun e!914169 () Bool)

(assert (=> b!1432194 (= e!914168 e!914169)))

(declare-fun res!648314 () Bool)

(assert (=> b!1432194 (=> (not res!648314) (not e!914169))))

(assert (=> b!1432194 (= res!648314 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) (h!20245 lt!486392)))))

(declare-fun b!1432195 () Bool)

(assert (=> b!1432195 (= e!914169 (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) (t!127113 lt!486392)))))

(assert (= (and d!412141 (not res!648315)) b!1432194))

(assert (= (and b!1432194 res!648314) b!1432195))

(declare-fun m!1632043 () Bool)

(assert (=> d!412141 m!1632043))

(assert (=> d!412141 m!1631821))

(assert (=> b!1432194 m!1631931))

(declare-fun m!1632045 () Bool)

(assert (=> b!1432195 m!1632045))

(assert (=> b!1432032 d!412141))

(declare-fun d!412149 () Bool)

(assert (=> d!412149 (= (isEmpty!9205 (rules!11321 thiss!10022)) (is-Nil!14845 (rules!11321 thiss!10022)))))

(assert (=> b!1432033 d!412149))

(declare-fun d!412151 () Bool)

(declare-fun lt!486494 () Bool)

(declare-fun isEmpty!9208 (List!14910) Bool)

(assert (=> d!412151 (= lt!486494 (isEmpty!9208 (list!5897 (tokens!1949 thiss!10022))))))

(declare-fun isEmpty!9209 (Conc!5031) Bool)

(assert (=> d!412151 (= lt!486494 (isEmpty!9209 (c!235425 (tokens!1949 thiss!10022))))))

(assert (=> d!412151 (= (isEmpty!9204 (tokens!1949 thiss!10022)) lt!486494)))

(declare-fun bs!340830 () Bool)

(assert (= bs!340830 d!412151))

(assert (=> bs!340830 m!1631831))

(assert (=> bs!340830 m!1631831))

(declare-fun m!1632047 () Bool)

(assert (=> bs!340830 m!1632047))

(declare-fun m!1632049 () Bool)

(assert (=> bs!340830 m!1632049))

(assert (=> b!1432031 d!412151))

(declare-fun d!412153 () Bool)

(assert (=> d!412153 (= (inv!19707 (tokens!1949 other!32)) (isBalanced!1494 (c!235425 (tokens!1949 other!32))))))

(declare-fun bs!340831 () Bool)

(assert (= bs!340831 d!412153))

(declare-fun m!1632051 () Bool)

(assert (=> bs!340831 m!1632051))

(assert (=> b!1432035 d!412153))

(declare-fun bs!340834 () Bool)

(declare-fun d!412155 () Bool)

(assert (= bs!340834 (and d!412155 d!412141)))

(declare-fun lambda!62792 () Int)

(assert (=> bs!340834 (= lambda!62792 lambda!62787)))

(declare-fun b!1432226 () Bool)

(declare-fun e!914190 () Bool)

(assert (=> b!1432226 (= e!914190 true)))

(declare-fun b!1432225 () Bool)

(declare-fun e!914189 () Bool)

(assert (=> b!1432225 (= e!914189 e!914190)))

(declare-fun b!1432224 () Bool)

(declare-fun e!914188 () Bool)

(assert (=> b!1432224 (= e!914188 e!914189)))

(assert (=> d!412155 e!914188))

(assert (= b!1432225 b!1432226))

(assert (= b!1432224 b!1432225))

(assert (= (and d!412155 (is-Cons!14845 (rules!11321 thiss!10022))) b!1432224))

(assert (=> b!1432226 (< (dynLambda!6776 order!8925 (toValue!3905 (transformation!2602 (h!20246 (rules!11321 thiss!10022))))) (dynLambda!6777 order!8927 lambda!62792))))

(assert (=> b!1432226 (< (dynLambda!6778 order!8929 (toChars!3764 (transformation!2602 (h!20246 (rules!11321 thiss!10022))))) (dynLambda!6777 order!8927 lambda!62792))))

(assert (=> d!412155 true))

(declare-fun e!914187 () Bool)

(assert (=> d!412155 e!914187))

(declare-fun res!648324 () Bool)

(assert (=> d!412155 (=> (not res!648324) (not e!914187))))

(declare-fun lt!486506 () Bool)

(assert (=> d!412155 (= res!648324 (= lt!486506 (forall!3657 (list!5897 lt!486383) lambda!62792)))))

(declare-fun forall!3658 (BalanceConc!10002 Int) Bool)

(assert (=> d!412155 (= lt!486506 (forall!3658 lt!486383 lambda!62792))))

(assert (=> d!412155 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412155 (= (rulesProduceEachTokenIndividually!832 Lexer!2264 (rules!11321 thiss!10022) lt!486383) lt!486506)))

(declare-fun b!1432223 () Bool)

(assert (=> b!1432223 (= e!914187 (= lt!486506 (rulesProduceEachTokenIndividuallyList!709 Lexer!2264 (rules!11321 thiss!10022) (list!5897 lt!486383))))))

(assert (= (and d!412155 res!648324) b!1432223))

(assert (=> d!412155 m!1631957))

(assert (=> d!412155 m!1631957))

(declare-fun m!1632075 () Bool)

(assert (=> d!412155 m!1632075))

(declare-fun m!1632077 () Bool)

(assert (=> d!412155 m!1632077))

(assert (=> d!412155 m!1631821))

(assert (=> b!1432223 m!1631957))

(assert (=> b!1432223 m!1631957))

(declare-fun m!1632079 () Bool)

(assert (=> b!1432223 m!1632079))

(assert (=> b!1432025 d!412155))

(declare-fun d!412163 () Bool)

(assert (=> d!412163 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) lt!486385)))

(declare-fun lt!486530 () Unit!22396)

(declare-fun choose!8811 (LexerInterface!2266 List!14911 List!14910 Token!4866) Unit!22396)

(assert (=> d!412163 (= lt!486530 (choose!8811 Lexer!2264 (rules!11321 thiss!10022) lt!486381 lt!486385))))

(assert (=> d!412163 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412163 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!384 Lexer!2264 (rules!11321 thiss!10022) lt!486381 lt!486385) lt!486530)))

(declare-fun bs!340835 () Bool)

(assert (= bs!340835 d!412163))

(assert (=> bs!340835 m!1631839))

(declare-fun m!1632099 () Bool)

(assert (=> bs!340835 m!1632099))

(assert (=> bs!340835 m!1631821))

(assert (=> b!1432034 d!412163))

(declare-fun d!412171 () Bool)

(declare-fun list!5899 (Conc!5031) List!14910)

(assert (=> d!412171 (= (list!5897 (tokens!1949 other!32)) (list!5899 (c!235425 (tokens!1949 other!32))))))

(declare-fun bs!340836 () Bool)

(assert (= bs!340836 d!412171))

(declare-fun m!1632101 () Bool)

(assert (=> bs!340836 m!1632101))

(assert (=> b!1432034 d!412171))

(declare-fun d!412173 () Bool)

(declare-fun lt!486533 () Token!4866)

(declare-fun head!2860 (List!14910) Token!4866)

(assert (=> d!412173 (= lt!486533 (head!2860 (list!5897 (tokens!1949 other!32))))))

(declare-fun head!2861 (Conc!5031) Token!4866)

(assert (=> d!412173 (= lt!486533 (head!2861 (c!235425 (tokens!1949 other!32))))))

(assert (=> d!412173 (not (isEmpty!9204 (tokens!1949 other!32)))))

(assert (=> d!412173 (= (head!2858 (tokens!1949 other!32)) lt!486533)))

(declare-fun bs!340837 () Bool)

(assert (= bs!340837 d!412173))

(assert (=> bs!340837 m!1631835))

(assert (=> bs!340837 m!1631835))

(declare-fun m!1632103 () Bool)

(assert (=> bs!340837 m!1632103))

(declare-fun m!1632105 () Bool)

(assert (=> bs!340837 m!1632105))

(assert (=> bs!340837 m!1631799))

(assert (=> b!1432034 d!412173))

(declare-fun d!412175 () Bool)

(declare-fun lt!486536 () Token!4866)

(declare-fun last!142 (List!14910) Token!4866)

(assert (=> d!412175 (= lt!486536 (last!142 (list!5897 (tokens!1949 thiss!10022))))))

(declare-fun last!143 (Conc!5031) Token!4866)

(assert (=> d!412175 (= lt!486536 (last!143 (c!235425 (tokens!1949 thiss!10022))))))

(assert (=> d!412175 (not (isEmpty!9204 (tokens!1949 thiss!10022)))))

(assert (=> d!412175 (= (last!140 (tokens!1949 thiss!10022)) lt!486536)))

(declare-fun bs!340838 () Bool)

(assert (= bs!340838 d!412175))

(assert (=> bs!340838 m!1631831))

(assert (=> bs!340838 m!1631831))

(declare-fun m!1632107 () Bool)

(assert (=> bs!340838 m!1632107))

(declare-fun m!1632109 () Bool)

(assert (=> bs!340838 m!1632109))

(assert (=> bs!340838 m!1631819))

(assert (=> b!1432034 d!412175))

(declare-fun d!412177 () Bool)

(assert (=> d!412177 (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) lt!486387)))

(declare-fun lt!486537 () Unit!22396)

(assert (=> d!412177 (= lt!486537 (choose!8811 Lexer!2264 (rules!11321 thiss!10022) lt!486391 lt!486387))))

(assert (=> d!412177 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412177 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!384 Lexer!2264 (rules!11321 thiss!10022) lt!486391 lt!486387) lt!486537)))

(declare-fun bs!340839 () Bool)

(assert (= bs!340839 d!412177))

(assert (=> bs!340839 m!1631841))

(declare-fun m!1632111 () Bool)

(assert (=> bs!340839 m!1632111))

(assert (=> bs!340839 m!1631821))

(assert (=> b!1432034 d!412177))

(declare-fun d!412179 () Bool)

(declare-fun lt!486543 () Bool)

(declare-fun e!914211 () Bool)

(assert (=> d!412179 (= lt!486543 e!914211)))

(declare-fun res!648352 () Bool)

(assert (=> d!412179 (=> (not res!648352) (not e!914211))))

(declare-datatypes ((tuple2!14088 0))(
  ( (tuple2!14089 (_1!7930 BalanceConc!10002) (_2!7930 BalanceConc!10000)) )
))
(declare-fun lex!1035 (LexerInterface!2266 List!14911 BalanceConc!10000) tuple2!14088)

(declare-fun print!1044 (LexerInterface!2266 BalanceConc!10002) BalanceConc!10000)

(declare-fun singletonSeq!1209 (Token!4866) BalanceConc!10002)

(assert (=> d!412179 (= res!648352 (= (list!5897 (_1!7930 (lex!1035 Lexer!2264 (rules!11321 thiss!10022) (print!1044 Lexer!2264 (singletonSeq!1209 lt!486387))))) (list!5897 (singletonSeq!1209 lt!486387))))))

(declare-fun e!914212 () Bool)

(assert (=> d!412179 (= lt!486543 e!914212)))

(declare-fun res!648353 () Bool)

(assert (=> d!412179 (=> (not res!648353) (not e!914212))))

(declare-fun lt!486542 () tuple2!14088)

(assert (=> d!412179 (= res!648353 (= (size!12183 (_1!7930 lt!486542)) 1))))

(assert (=> d!412179 (= lt!486542 (lex!1035 Lexer!2264 (rules!11321 thiss!10022) (print!1044 Lexer!2264 (singletonSeq!1209 lt!486387))))))

(assert (=> d!412179 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412179 (= (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) lt!486387) lt!486543)))

(declare-fun b!1432260 () Bool)

(declare-fun res!648354 () Bool)

(assert (=> b!1432260 (=> (not res!648354) (not e!914212))))

(declare-fun apply!3794 (BalanceConc!10002 Int) Token!4866)

(assert (=> b!1432260 (= res!648354 (= (apply!3794 (_1!7930 lt!486542) 0) lt!486387))))

(declare-fun b!1432261 () Bool)

(declare-fun isEmpty!9210 (BalanceConc!10000) Bool)

(assert (=> b!1432261 (= e!914212 (isEmpty!9210 (_2!7930 lt!486542)))))

(declare-fun b!1432262 () Bool)

(assert (=> b!1432262 (= e!914211 (isEmpty!9210 (_2!7930 (lex!1035 Lexer!2264 (rules!11321 thiss!10022) (print!1044 Lexer!2264 (singletonSeq!1209 lt!486387))))))))

(assert (= (and d!412179 res!648353) b!1432260))

(assert (= (and b!1432260 res!648354) b!1432261))

(assert (= (and d!412179 res!648352) b!1432262))

(declare-fun m!1632115 () Bool)

(assert (=> d!412179 m!1632115))

(declare-fun m!1632117 () Bool)

(assert (=> d!412179 m!1632117))

(assert (=> d!412179 m!1632117))

(declare-fun m!1632119 () Bool)

(assert (=> d!412179 m!1632119))

(assert (=> d!412179 m!1631821))

(assert (=> d!412179 m!1632117))

(declare-fun m!1632121 () Bool)

(assert (=> d!412179 m!1632121))

(declare-fun m!1632123 () Bool)

(assert (=> d!412179 m!1632123))

(assert (=> d!412179 m!1632121))

(declare-fun m!1632125 () Bool)

(assert (=> d!412179 m!1632125))

(declare-fun m!1632127 () Bool)

(assert (=> b!1432260 m!1632127))

(declare-fun m!1632129 () Bool)

(assert (=> b!1432261 m!1632129))

(assert (=> b!1432262 m!1632117))

(assert (=> b!1432262 m!1632117))

(assert (=> b!1432262 m!1632121))

(assert (=> b!1432262 m!1632121))

(assert (=> b!1432262 m!1632125))

(declare-fun m!1632131 () Bool)

(assert (=> b!1432262 m!1632131))

(assert (=> b!1432034 d!412179))

(declare-fun d!412185 () Bool)

(declare-fun lt!486545 () Bool)

(declare-fun e!914213 () Bool)

(assert (=> d!412185 (= lt!486545 e!914213)))

(declare-fun res!648355 () Bool)

(assert (=> d!412185 (=> (not res!648355) (not e!914213))))

(assert (=> d!412185 (= res!648355 (= (list!5897 (_1!7930 (lex!1035 Lexer!2264 (rules!11321 thiss!10022) (print!1044 Lexer!2264 (singletonSeq!1209 lt!486385))))) (list!5897 (singletonSeq!1209 lt!486385))))))

(declare-fun e!914214 () Bool)

(assert (=> d!412185 (= lt!486545 e!914214)))

(declare-fun res!648356 () Bool)

(assert (=> d!412185 (=> (not res!648356) (not e!914214))))

(declare-fun lt!486544 () tuple2!14088)

(assert (=> d!412185 (= res!648356 (= (size!12183 (_1!7930 lt!486544)) 1))))

(assert (=> d!412185 (= lt!486544 (lex!1035 Lexer!2264 (rules!11321 thiss!10022) (print!1044 Lexer!2264 (singletonSeq!1209 lt!486385))))))

(assert (=> d!412185 (not (isEmpty!9205 (rules!11321 thiss!10022)))))

(assert (=> d!412185 (= (rulesProduceIndividualToken!1199 Lexer!2264 (rules!11321 thiss!10022) lt!486385) lt!486545)))

(declare-fun b!1432263 () Bool)

(declare-fun res!648357 () Bool)

(assert (=> b!1432263 (=> (not res!648357) (not e!914214))))

(assert (=> b!1432263 (= res!648357 (= (apply!3794 (_1!7930 lt!486544) 0) lt!486385))))

(declare-fun b!1432264 () Bool)

(assert (=> b!1432264 (= e!914214 (isEmpty!9210 (_2!7930 lt!486544)))))

(declare-fun b!1432265 () Bool)

(assert (=> b!1432265 (= e!914213 (isEmpty!9210 (_2!7930 (lex!1035 Lexer!2264 (rules!11321 thiss!10022) (print!1044 Lexer!2264 (singletonSeq!1209 lt!486385))))))))

(assert (= (and d!412185 res!648356) b!1432263))

(assert (= (and b!1432263 res!648357) b!1432264))

(assert (= (and d!412185 res!648355) b!1432265))

(declare-fun m!1632133 () Bool)

(assert (=> d!412185 m!1632133))

(declare-fun m!1632135 () Bool)

(assert (=> d!412185 m!1632135))

(assert (=> d!412185 m!1632135))

(declare-fun m!1632137 () Bool)

(assert (=> d!412185 m!1632137))

(assert (=> d!412185 m!1631821))

(assert (=> d!412185 m!1632135))

(declare-fun m!1632139 () Bool)

(assert (=> d!412185 m!1632139))

(declare-fun m!1632141 () Bool)

(assert (=> d!412185 m!1632141))

(assert (=> d!412185 m!1632139))

(declare-fun m!1632143 () Bool)

(assert (=> d!412185 m!1632143))

(declare-fun m!1632145 () Bool)

(assert (=> b!1432263 m!1632145))

(declare-fun m!1632147 () Bool)

(assert (=> b!1432264 m!1632147))

(assert (=> b!1432265 m!1632135))

(assert (=> b!1432265 m!1632135))

(assert (=> b!1432265 m!1632139))

(assert (=> b!1432265 m!1632139))

(assert (=> b!1432265 m!1632143))

(declare-fun m!1632149 () Bool)

(assert (=> b!1432265 m!1632149))

(assert (=> b!1432034 d!412185))

(declare-fun d!412187 () Bool)

(declare-fun prefixMatchZipperSequence!325 (Regex!3916 BalanceConc!10000) Bool)

(declare-fun rulesRegex!383 (LexerInterface!2266 List!14911) Regex!3916)

(declare-fun ++!3955 (BalanceConc!10000 BalanceConc!10000) BalanceConc!10000)

(declare-fun singletonSeq!1210 (C!8010) BalanceConc!10000)

(declare-fun apply!3795 (BalanceConc!10000 Int) C!8010)

(assert (=> d!412187 (= (separableTokensPredicate!501 Lexer!2264 lt!486385 lt!486387 (rules!11321 thiss!10022)) (not (prefixMatchZipperSequence!325 (rulesRegex!383 Lexer!2264 (rules!11321 thiss!10022)) (++!3955 (charsOf!1506 lt!486385) (singletonSeq!1210 (apply!3795 (charsOf!1506 lt!486387) 0))))))))

(declare-fun bs!340840 () Bool)

(assert (= bs!340840 d!412187))

(declare-fun m!1632151 () Bool)

(assert (=> bs!340840 m!1632151))

(declare-fun m!1632153 () Bool)

(assert (=> bs!340840 m!1632153))

(declare-fun m!1632155 () Bool)

(assert (=> bs!340840 m!1632155))

(assert (=> bs!340840 m!1632151))

(declare-fun m!1632157 () Bool)

(assert (=> bs!340840 m!1632157))

(declare-fun m!1632159 () Bool)

(assert (=> bs!340840 m!1632159))

(declare-fun m!1632161 () Bool)

(assert (=> bs!340840 m!1632161))

(assert (=> bs!340840 m!1632153))

(assert (=> bs!340840 m!1632159))

(assert (=> bs!340840 m!1632157))

(declare-fun m!1632163 () Bool)

(assert (=> bs!340840 m!1632163))

(assert (=> bs!340840 m!1632163))

(assert (=> bs!340840 m!1632161))

(assert (=> b!1432034 d!412187))

(declare-fun d!412189 () Bool)

(assert (=> d!412189 (= (list!5897 (tokens!1949 thiss!10022)) (list!5899 (c!235425 (tokens!1949 thiss!10022))))))

(declare-fun bs!340841 () Bool)

(assert (= bs!340841 d!412189))

(declare-fun m!1632165 () Bool)

(assert (=> bs!340841 m!1632165))

(assert (=> b!1432034 d!412189))

(declare-fun d!412191 () Bool)

(declare-fun res!648360 () Bool)

(declare-fun e!914217 () Bool)

(assert (=> d!412191 (=> (not res!648360) (not e!914217))))

(declare-fun rulesValid!957 (LexerInterface!2266 List!14911) Bool)

(assert (=> d!412191 (= res!648360 (rulesValid!957 Lexer!2264 (rules!11321 thiss!10022)))))

(assert (=> d!412191 (= (rulesInvariant!2114 Lexer!2264 (rules!11321 thiss!10022)) e!914217)))

(declare-fun b!1432268 () Bool)

(declare-datatypes ((List!14916 0))(
  ( (Nil!14850) (Cons!14850 (h!20251 String!17718) (t!127135 List!14916)) )
))
(declare-fun noDuplicateTag!957 (LexerInterface!2266 List!14911 List!14916) Bool)

(assert (=> b!1432268 (= e!914217 (noDuplicateTag!957 Lexer!2264 (rules!11321 thiss!10022) Nil!14850))))

(assert (= (and d!412191 res!648360) b!1432268))

(declare-fun m!1632167 () Bool)

(assert (=> d!412191 m!1632167))

(declare-fun m!1632169 () Bool)

(assert (=> b!1432268 m!1632169))

(assert (=> b!1432027 d!412191))

(declare-fun d!412193 () Bool)

(declare-fun c!235447 () Bool)

(assert (=> d!412193 (= c!235447 (is-Node!5031 (c!235425 (tokens!1949 thiss!10022))))))

(declare-fun e!914218 () Bool)

(assert (=> d!412193 (= (inv!19706 (c!235425 (tokens!1949 thiss!10022))) e!914218)))

(declare-fun b!1432269 () Bool)

(assert (=> b!1432269 (= e!914218 (inv!19712 (c!235425 (tokens!1949 thiss!10022))))))

(declare-fun b!1432270 () Bool)

(declare-fun e!914219 () Bool)

(assert (=> b!1432270 (= e!914218 e!914219)))

(declare-fun res!648361 () Bool)

(assert (=> b!1432270 (= res!648361 (not (is-Leaf!7534 (c!235425 (tokens!1949 thiss!10022)))))))

(assert (=> b!1432270 (=> res!648361 e!914219)))

(declare-fun b!1432271 () Bool)

(assert (=> b!1432271 (= e!914219 (inv!19713 (c!235425 (tokens!1949 thiss!10022))))))

(assert (= (and d!412193 c!235447) b!1432269))

(assert (= (and d!412193 (not c!235447)) b!1432270))

(assert (= (and b!1432270 (not res!648361)) b!1432271))

(declare-fun m!1632171 () Bool)

(assert (=> b!1432269 m!1632171))

(declare-fun m!1632173 () Bool)

(assert (=> b!1432271 m!1632173))

(assert (=> b!1432036 d!412193))

(declare-fun d!412195 () Bool)

(declare-fun lt!486546 () Bool)

(assert (=> d!412195 (= lt!486546 (isEmpty!9208 (list!5897 (tokens!1949 other!32))))))

(assert (=> d!412195 (= lt!486546 (isEmpty!9209 (c!235425 (tokens!1949 other!32))))))

(assert (=> d!412195 (= (isEmpty!9204 (tokens!1949 other!32)) lt!486546)))

(declare-fun bs!340842 () Bool)

(assert (= bs!340842 d!412195))

(assert (=> bs!340842 m!1631835))

(assert (=> bs!340842 m!1631835))

(declare-fun m!1632175 () Bool)

(assert (=> bs!340842 m!1632175))

(declare-fun m!1632177 () Bool)

(assert (=> bs!340842 m!1632177))

(assert (=> b!1432026 d!412195))

(declare-fun d!412197 () Bool)

(declare-fun e!914228 () Bool)

(assert (=> d!412197 e!914228))

(declare-fun res!648369 () Bool)

(assert (=> d!412197 (=> (not res!648369) (not e!914228))))

(assert (=> d!412197 (= res!648369 (rulesInvariant!2114 Lexer!2264 (rules!11321 thiss!10022)))))

(declare-fun Unit!22404 () Unit!22396)

(assert (=> d!412197 (= (lemmaInvariant!298 thiss!10022) Unit!22404)))

(declare-fun b!1432282 () Bool)

(declare-fun res!648370 () Bool)

(assert (=> b!1432282 (=> (not res!648370) (not e!914228))))

(assert (=> b!1432282 (= res!648370 (rulesProduceEachTokenIndividually!832 Lexer!2264 (rules!11321 thiss!10022) (tokens!1949 thiss!10022)))))

(declare-fun b!1432283 () Bool)

(assert (=> b!1432283 (= e!914228 (separableTokens!216 Lexer!2264 (tokens!1949 thiss!10022) (rules!11321 thiss!10022)))))

(assert (= (and d!412197 res!648369) b!1432282))

(assert (= (and b!1432282 res!648370) b!1432283))

(assert (=> d!412197 m!1631797))

(assert (=> b!1432282 m!1631915))

(assert (=> b!1432283 m!1631917))

(assert (=> b!1432026 d!412197))

(declare-fun d!412203 () Bool)

(declare-fun e!914229 () Bool)

(assert (=> d!412203 e!914229))

(declare-fun res!648371 () Bool)

(assert (=> d!412203 (=> (not res!648371) (not e!914229))))

(assert (=> d!412203 (= res!648371 (rulesInvariant!2114 Lexer!2264 (rules!11321 other!32)))))

(declare-fun Unit!22405 () Unit!22396)

(assert (=> d!412203 (= (lemmaInvariant!298 other!32) Unit!22405)))

(declare-fun b!1432284 () Bool)

(declare-fun res!648372 () Bool)

(assert (=> b!1432284 (=> (not res!648372) (not e!914229))))

(assert (=> b!1432284 (= res!648372 (rulesProduceEachTokenIndividually!832 Lexer!2264 (rules!11321 other!32) (tokens!1949 other!32)))))

(declare-fun b!1432285 () Bool)

(assert (=> b!1432285 (= e!914229 (separableTokens!216 Lexer!2264 (tokens!1949 other!32) (rules!11321 other!32)))))

(assert (= (and d!412203 res!648371) b!1432284))

(assert (= (and b!1432284 res!648372) b!1432285))

(assert (=> d!412203 m!1631921))

(assert (=> b!1432284 m!1631923))

(assert (=> b!1432285 m!1631925))

(assert (=> b!1432026 d!412203))

(declare-fun b!1432296 () Bool)

(declare-fun b_free!35471 () Bool)

(declare-fun b_next!36175 () Bool)

(assert (=> b!1432296 (= b_free!35471 (not b_next!36175))))

(declare-fun tp!405938 () Bool)

(declare-fun b_and!96399 () Bool)

(assert (=> b!1432296 (= tp!405938 b_and!96399)))

(declare-fun b_free!35473 () Bool)

(declare-fun b_next!36177 () Bool)

(assert (=> b!1432296 (= b_free!35473 (not b_next!36177))))

(declare-fun tp!405940 () Bool)

(declare-fun b_and!96401 () Bool)

(assert (=> b!1432296 (= tp!405940 b_and!96401)))

(declare-fun e!914240 () Bool)

(assert (=> b!1432296 (= e!914240 (and tp!405938 tp!405940))))

(declare-fun b!1432295 () Bool)

(declare-fun tp!405937 () Bool)

(declare-fun e!914241 () Bool)

(declare-fun inv!19703 (String!17718) Bool)

(declare-fun inv!19714 (TokenValueInjection!5044) Bool)

(assert (=> b!1432295 (= e!914241 (and tp!405937 (inv!19703 (tag!2864 (h!20246 (rules!11321 other!32)))) (inv!19714 (transformation!2602 (h!20246 (rules!11321 other!32)))) e!914240))))

(declare-fun b!1432294 () Bool)

(declare-fun e!914239 () Bool)

(declare-fun tp!405939 () Bool)

(assert (=> b!1432294 (= e!914239 (and e!914241 tp!405939))))

(assert (=> b!1432035 (= tp!405915 e!914239)))

(assert (= b!1432295 b!1432296))

(assert (= b!1432294 b!1432295))

(assert (= (and b!1432035 (is-Cons!14845 (rules!11321 other!32))) b!1432294))

(declare-fun m!1632189 () Bool)

(assert (=> b!1432295 m!1632189))

(declare-fun m!1632191 () Bool)

(assert (=> b!1432295 m!1632191))

(declare-fun b!1432299 () Bool)

(declare-fun b_free!35475 () Bool)

(declare-fun b_next!36179 () Bool)

(assert (=> b!1432299 (= b_free!35475 (not b_next!36179))))

(declare-fun tp!405942 () Bool)

(declare-fun b_and!96403 () Bool)

(assert (=> b!1432299 (= tp!405942 b_and!96403)))

(declare-fun b_free!35477 () Bool)

(declare-fun b_next!36181 () Bool)

(assert (=> b!1432299 (= b_free!35477 (not b_next!36181))))

(declare-fun tp!405944 () Bool)

(declare-fun b_and!96405 () Bool)

(assert (=> b!1432299 (= tp!405944 b_and!96405)))

(declare-fun e!914244 () Bool)

(assert (=> b!1432299 (= e!914244 (and tp!405942 tp!405944))))

(declare-fun b!1432298 () Bool)

(declare-fun tp!405941 () Bool)

(declare-fun e!914245 () Bool)

(assert (=> b!1432298 (= e!914245 (and tp!405941 (inv!19703 (tag!2864 (h!20246 (rules!11321 thiss!10022)))) (inv!19714 (transformation!2602 (h!20246 (rules!11321 thiss!10022)))) e!914244))))

(declare-fun b!1432297 () Bool)

(declare-fun e!914243 () Bool)

(declare-fun tp!405943 () Bool)

(assert (=> b!1432297 (= e!914243 (and e!914245 tp!405943))))

(assert (=> b!1432030 (= tp!405913 e!914243)))

(assert (= b!1432298 b!1432299))

(assert (= b!1432297 b!1432298))

(assert (= (and b!1432030 (is-Cons!14845 (rules!11321 thiss!10022))) b!1432297))

(declare-fun m!1632193 () Bool)

(assert (=> b!1432298 m!1632193))

(declare-fun m!1632195 () Bool)

(assert (=> b!1432298 m!1632195))

(declare-fun tp!405953 () Bool)

(declare-fun b!1432308 () Bool)

(declare-fun e!914251 () Bool)

(declare-fun tp!405952 () Bool)

(assert (=> b!1432308 (= e!914251 (and (inv!19706 (left!12651 (c!235425 (tokens!1949 other!32)))) tp!405953 (inv!19706 (right!12981 (c!235425 (tokens!1949 other!32)))) tp!405952))))

(declare-fun b!1432310 () Bool)

(declare-fun e!914250 () Bool)

(declare-fun tp!405951 () Bool)

(assert (=> b!1432310 (= e!914250 tp!405951)))

(declare-fun b!1432309 () Bool)

(declare-fun inv!19715 (IArray!10067) Bool)

(assert (=> b!1432309 (= e!914251 (and (inv!19715 (xs!7764 (c!235425 (tokens!1949 other!32)))) e!914250))))

(assert (=> b!1432028 (= tp!405916 (and (inv!19706 (c!235425 (tokens!1949 other!32))) e!914251))))

(assert (= (and b!1432028 (is-Node!5031 (c!235425 (tokens!1949 other!32)))) b!1432308))

(assert (= b!1432309 b!1432310))

(assert (= (and b!1432028 (is-Leaf!7534 (c!235425 (tokens!1949 other!32)))) b!1432309))

(declare-fun m!1632197 () Bool)

(assert (=> b!1432308 m!1632197))

(declare-fun m!1632199 () Bool)

(assert (=> b!1432308 m!1632199))

(declare-fun m!1632201 () Bool)

(assert (=> b!1432309 m!1632201))

(assert (=> b!1432028 m!1631845))

(declare-fun tp!405956 () Bool)

(declare-fun tp!405955 () Bool)

(declare-fun e!914253 () Bool)

(declare-fun b!1432311 () Bool)

(assert (=> b!1432311 (= e!914253 (and (inv!19706 (left!12651 (c!235425 (tokens!1949 thiss!10022)))) tp!405956 (inv!19706 (right!12981 (c!235425 (tokens!1949 thiss!10022)))) tp!405955))))

(declare-fun b!1432313 () Bool)

(declare-fun e!914252 () Bool)

(declare-fun tp!405954 () Bool)

(assert (=> b!1432313 (= e!914252 tp!405954)))

(declare-fun b!1432312 () Bool)

(assert (=> b!1432312 (= e!914253 (and (inv!19715 (xs!7764 (c!235425 (tokens!1949 thiss!10022)))) e!914252))))

(assert (=> b!1432036 (= tp!405914 (and (inv!19706 (c!235425 (tokens!1949 thiss!10022))) e!914253))))

(assert (= (and b!1432036 (is-Node!5031 (c!235425 (tokens!1949 thiss!10022)))) b!1432311))

(assert (= b!1432312 b!1432313))

(assert (= (and b!1432036 (is-Leaf!7534 (c!235425 (tokens!1949 thiss!10022)))) b!1432312))

(declare-fun m!1632203 () Bool)

(assert (=> b!1432311 m!1632203))

(declare-fun m!1632205 () Bool)

(assert (=> b!1432311 m!1632205))

(declare-fun m!1632207 () Bool)

(assert (=> b!1432312 m!1632207))

(assert (=> b!1432036 m!1631795))

(push 1)

(assert (not b!1432195))

(assert (not b!1432120))

(assert (not d!412139))

(assert (not d!412203))

(assert (not d!412197))

(assert (not d!412189))

(assert (not d!412153))

(assert (not b!1432285))

(assert (not b!1432224))

(assert (not b!1432223))

(assert (not b!1432204))

(assert (not d!412179))

(assert (not b!1432091))

(assert (not d!412141))

(assert (not d!412113))

(assert (not d!412171))

(assert (not b!1432284))

(assert (not b!1432088))

(assert (not d!412177))

(assert (not d!412195))

(assert (not b!1432310))

(assert (not b!1432090))

(assert (not b!1432144))

(assert (not b!1432081))

(assert (not b!1432121))

(assert (not d!412119))

(assert (not d!412163))

(assert (not d!412155))

(assert (not d!412125))

(assert (not b!1432282))

(assert (not d!412151))

(assert (not b!1432099))

(assert (not b!1432312))

(assert (not b!1432311))

(assert (not b!1432110))

(assert b_and!96403)

(assert (not b!1432145))

(assert (not b!1432194))

(assert (not b!1432093))

(assert (not b!1432089))

(assert (not d!412175))

(assert (not b!1432122))

(assert (not b!1432263))

(assert (not b!1432260))

(assert (not b_next!36177))

(assert (not b!1432294))

(assert (not b_next!36181))

(assert (not b!1432098))

(assert (not b!1432092))

(assert (not b!1432295))

(assert (not b!1432265))

(assert (not b_next!36179))

(assert b_and!96405)

(assert (not b!1432298))

(assert (not b!1432123))

(assert (not b!1432297))

(assert (not b!1432036))

(assert (not b!1432268))

(assert (not b!1432146))

(assert (not b!1432079))

(assert b_and!96401)

(assert (not b!1432271))

(assert b_and!96399)

(assert (not d!412129))

(assert (not d!412187))

(assert (not b!1432143))

(assert (not b!1432109))

(assert (not b!1432028))

(assert (not d!412173))

(assert (not b!1432264))

(assert (not b_next!36175))

(assert (not d!412191))

(assert (not b!1432283))

(assert (not b!1432269))

(assert (not d!412123))

(assert (not d!412109))

(assert (not b!1432261))

(assert (not b!1432308))

(assert (not b!1432313))

(assert (not d!412127))

(assert (not b!1432262))

(assert (not d!412185))

(assert (not b!1432309))

(check-sat)

(pop 1)

(push 1)

(assert b_and!96403)

(assert (not b_next!36177))

(assert (not b_next!36181))

(assert (not b_next!36179))

(assert b_and!96405)

(assert b_and!96401)

(assert b_and!96399)

(assert (not b_next!36175))

(check-sat)

(pop 1)

