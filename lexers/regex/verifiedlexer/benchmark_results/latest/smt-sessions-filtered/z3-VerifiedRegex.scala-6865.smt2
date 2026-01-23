; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!361292 () Bool)

(assert start!361292)

(declare-fun b!3855062 () Bool)

(declare-fun b_free!103453 () Bool)

(declare-fun b_next!104157 () Bool)

(assert (=> b!3855062 (= b_free!103453 (not b_next!104157))))

(declare-fun tp!1168537 () Bool)

(declare-fun b_and!288219 () Bool)

(assert (=> b!3855062 (= tp!1168537 b_and!288219)))

(declare-fun b_free!103455 () Bool)

(declare-fun b_next!104159 () Bool)

(assert (=> b!3855062 (= b_free!103455 (not b_next!104159))))

(declare-fun tp!1168536 () Bool)

(declare-fun b_and!288221 () Bool)

(assert (=> b!3855062 (= tp!1168536 b_and!288221)))

(declare-fun b!3855057 () Bool)

(declare-fun b_free!103457 () Bool)

(declare-fun b_next!104161 () Bool)

(assert (=> b!3855057 (= b_free!103457 (not b_next!104161))))

(declare-fun tp!1168534 () Bool)

(declare-fun b_and!288223 () Bool)

(assert (=> b!3855057 (= tp!1168534 b_and!288223)))

(declare-fun b_free!103459 () Bool)

(declare-fun b_next!104163 () Bool)

(assert (=> b!3855057 (= b_free!103459 (not b_next!104163))))

(declare-fun tp!1168533 () Bool)

(declare-fun b_and!288225 () Bool)

(assert (=> b!3855057 (= tp!1168533 b_and!288225)))

(declare-fun b!3855064 () Bool)

(declare-fun b_free!103461 () Bool)

(declare-fun b_next!104165 () Bool)

(assert (=> b!3855064 (= b_free!103461 (not b_next!104165))))

(declare-fun tp!1168532 () Bool)

(declare-fun b_and!288227 () Bool)

(assert (=> b!3855064 (= tp!1168532 b_and!288227)))

(declare-fun b_free!103463 () Bool)

(declare-fun b_next!104167 () Bool)

(assert (=> b!3855064 (= b_free!103463 (not b_next!104167))))

(declare-fun tp!1168528 () Bool)

(declare-fun b_and!288229 () Bool)

(assert (=> b!3855064 (= tp!1168528 b_and!288229)))

(declare-fun b!3855043 () Bool)

(declare-fun e!2382963 () Bool)

(declare-fun e!2382990 () Bool)

(assert (=> b!3855043 (= e!2382963 e!2382990)))

(declare-fun res!1560681 () Bool)

(assert (=> b!3855043 (=> (not res!1560681) (not e!2382990))))

(declare-datatypes ((C!22632 0))(
  ( (C!22633 (val!13410 Int)) )
))
(declare-datatypes ((List!40978 0))(
  ( (Nil!40854) (Cons!40854 (h!46274 C!22632) (t!312555 List!40978)) )
))
(declare-fun suffixResult!91 () List!40978)

(declare-datatypes ((List!40979 0))(
  ( (Nil!40855) (Cons!40855 (h!46275 (_ BitVec 16)) (t!312556 List!40979)) )
))
(declare-datatypes ((TokenValue!6548 0))(
  ( (FloatLiteralValue!13096 (text!46281 List!40979)) (TokenValueExt!6547 (__x!25313 Int)) (Broken!32740 (value!200671 List!40979)) (Object!6671) (End!6548) (Def!6548) (Underscore!6548) (Match!6548) (Else!6548) (Error!6548) (Case!6548) (If!6548) (Extends!6548) (Abstract!6548) (Class!6548) (Val!6548) (DelimiterValue!13096 (del!6608 List!40979)) (KeywordValue!6554 (value!200672 List!40979)) (CommentValue!13096 (value!200673 List!40979)) (WhitespaceValue!13096 (value!200674 List!40979)) (IndentationValue!6548 (value!200675 List!40979)) (String!46457) (Int32!6548) (Broken!32741 (value!200676 List!40979)) (Boolean!6549) (Unit!58523) (OperatorValue!6551 (op!6608 List!40979)) (IdentifierValue!13096 (value!200677 List!40979)) (IdentifierValue!13097 (value!200678 List!40979)) (WhitespaceValue!13097 (value!200679 List!40979)) (True!13096) (False!13096) (Broken!32742 (value!200680 List!40979)) (Broken!32743 (value!200681 List!40979)) (True!13097) (RightBrace!6548) (RightBracket!6548) (Colon!6548) (Null!6548) (Comma!6548) (LeftBracket!6548) (False!13097) (LeftBrace!6548) (ImaginaryLiteralValue!6548 (text!46282 List!40979)) (StringLiteralValue!19644 (value!200682 List!40979)) (EOFValue!6548 (value!200683 List!40979)) (IdentValue!6548 (value!200684 List!40979)) (DelimiterValue!13097 (value!200685 List!40979)) (DedentValue!6548 (value!200686 List!40979)) (NewLineValue!6548 (value!200687 List!40979)) (IntegerValue!19644 (value!200688 (_ BitVec 32)) (text!46283 List!40979)) (IntegerValue!19645 (value!200689 Int) (text!46284 List!40979)) (Times!6548) (Or!6548) (Equal!6548) (Minus!6548) (Broken!32744 (value!200690 List!40979)) (And!6548) (Div!6548) (LessEqual!6548) (Mod!6548) (Concat!17771) (Not!6548) (Plus!6548) (SpaceValue!6548 (value!200691 List!40979)) (IntegerValue!19646 (value!200692 Int) (text!46285 List!40979)) (StringLiteralValue!19645 (text!46286 List!40979)) (FloatLiteralValue!13097 (text!46287 List!40979)) (BytesLiteralValue!6548 (value!200693 List!40979)) (CommentValue!13097 (value!200694 List!40979)) (StringLiteralValue!19646 (value!200695 List!40979)) (ErrorTokenValue!6548 (msg!6609 List!40979)) )
))
(declare-datatypes ((Regex!11223 0))(
  ( (ElementMatch!11223 (c!671342 C!22632)) (Concat!17772 (regOne!22958 Regex!11223) (regTwo!22958 Regex!11223)) (EmptyExpr!11223) (Star!11223 (reg!11552 Regex!11223)) (EmptyLang!11223) (Union!11223 (regOne!22959 Regex!11223) (regTwo!22959 Regex!11223)) )
))
(declare-datatypes ((String!46458 0))(
  ( (String!46459 (value!200696 String)) )
))
(declare-datatypes ((IArray!25063 0))(
  ( (IArray!25064 (innerList!12589 List!40978)) )
))
(declare-datatypes ((Conc!12529 0))(
  ( (Node!12529 (left!31498 Conc!12529) (right!31828 Conc!12529) (csize!25288 Int) (cheight!12740 Int)) (Leaf!19395 (xs!15835 IArray!25063) (csize!25289 Int)) (Empty!12529) )
))
(declare-datatypes ((BalanceConc!24652 0))(
  ( (BalanceConc!24653 (c!671343 Conc!12529)) )
))
(declare-datatypes ((TokenValueInjection!12524 0))(
  ( (TokenValueInjection!12525 (toValue!8742 Int) (toChars!8601 Int)) )
))
(declare-datatypes ((Rule!12436 0))(
  ( (Rule!12437 (regex!6318 Regex!11223) (tag!7178 String!46458) (isSeparator!6318 Bool) (transformation!6318 TokenValueInjection!12524)) )
))
(declare-datatypes ((Token!11774 0))(
  ( (Token!11775 (value!200697 TokenValue!6548) (rule!9178 Rule!12436) (size!30731 Int) (originalCharacters!6918 List!40978)) )
))
(declare-datatypes ((List!40980 0))(
  ( (Nil!40856) (Cons!40856 (h!46276 Token!11774) (t!312557 List!40980)) )
))
(declare-fun lt!1339133 () List!40980)

(declare-datatypes ((tuple2!40050 0))(
  ( (tuple2!40051 (_1!23159 List!40980) (_2!23159 List!40978)) )
))
(declare-fun lt!1339149 () tuple2!40050)

(assert (=> b!3855043 (= res!1560681 (= lt!1339149 (tuple2!40051 lt!1339133 suffixResult!91)))))

(declare-fun lt!1339136 () List!40978)

(declare-datatypes ((LexerInterface!5907 0))(
  ( (LexerInterfaceExt!5904 (__x!25314 Int)) (Lexer!5905) )
))
(declare-fun thiss!20629 () LexerInterface!5907)

(declare-datatypes ((List!40981 0))(
  ( (Nil!40857) (Cons!40857 (h!46277 Rule!12436) (t!312558 List!40981)) )
))
(declare-fun rules!2768 () List!40981)

(declare-fun lexList!1675 (LexerInterface!5907 List!40981 List!40978) tuple2!40050)

(assert (=> b!3855043 (= lt!1339149 (lexList!1675 thiss!20629 rules!2768 lt!1339136))))

(declare-fun prefixTokens!80 () List!40980)

(declare-fun suffixTokens!72 () List!40980)

(declare-fun ++!10393 (List!40980 List!40980) List!40980)

(assert (=> b!3855043 (= lt!1339133 (++!10393 prefixTokens!80 suffixTokens!72))))

(declare-fun prefix!426 () List!40978)

(declare-fun suffix!1176 () List!40978)

(declare-fun ++!10394 (List!40978 List!40978) List!40978)

(assert (=> b!3855043 (= lt!1339136 (++!10394 prefix!426 suffix!1176))))

(declare-fun b!3855044 () Bool)

(declare-fun res!1560685 () Bool)

(assert (=> b!3855044 (=> (not res!1560685) (not e!2382990))))

(assert (=> b!3855044 (= res!1560685 (= (lexList!1675 thiss!20629 rules!2768 suffix!1176) (tuple2!40051 suffixTokens!72 suffixResult!91)))))

(declare-fun b!3855045 () Bool)

(declare-fun e!2382969 () Bool)

(declare-fun e!2382973 () Bool)

(assert (=> b!3855045 (= e!2382969 e!2382973)))

(declare-fun res!1560684 () Bool)

(assert (=> b!3855045 (=> res!1560684 e!2382973)))

(declare-fun lt!1339143 () Int)

(declare-fun lt!1339152 () Int)

(declare-fun lt!1339144 () Int)

(assert (=> b!3855045 (= res!1560684 (not (= (+ lt!1339143 lt!1339144) lt!1339152)))))

(declare-fun size!30732 (List!40978) Int)

(assert (=> b!3855045 (= lt!1339152 (size!30732 lt!1339136))))

(declare-fun b!3855046 () Bool)

(declare-fun e!2382971 () Bool)

(assert (=> b!3855046 (= e!2382971 e!2382969)))

(declare-fun res!1560696 () Bool)

(assert (=> b!3855046 (=> res!1560696 e!2382969)))

(declare-fun lt!1339153 () Int)

(assert (=> b!3855046 (= res!1560696 (>= lt!1339144 lt!1339153))))

(assert (=> b!3855046 (= lt!1339153 (size!30732 suffix!1176))))

(declare-datatypes ((tuple2!40052 0))(
  ( (tuple2!40053 (_1!23160 Token!11774) (_2!23160 List!40978)) )
))
(declare-datatypes ((Option!8736 0))(
  ( (None!8735) (Some!8735 (v!39031 tuple2!40052)) )
))
(declare-fun lt!1339135 () Option!8736)

(assert (=> b!3855046 (= lt!1339144 (size!30732 (_2!23160 (v!39031 lt!1339135))))))

(declare-fun b!3855047 () Bool)

(declare-fun e!2382978 () Bool)

(declare-fun e!2382977 () Bool)

(assert (=> b!3855047 (= e!2382978 e!2382977)))

(declare-fun res!1560686 () Bool)

(assert (=> b!3855047 (=> res!1560686 e!2382977)))

(declare-fun lt!1339138 () tuple2!40052)

(declare-fun head!8114 (List!40980) Token!11774)

(assert (=> b!3855047 (= res!1560686 (not (= (_1!23160 lt!1339138) (head!8114 prefixTokens!80))))))

(declare-fun get!13517 (Option!8736) tuple2!40052)

(assert (=> b!3855047 (= lt!1339138 (get!13517 lt!1339135))))

(declare-fun b!3855048 () Bool)

(declare-fun e!2382984 () Bool)

(assert (=> b!3855048 (= e!2382984 e!2382978)))

(declare-fun res!1560683 () Bool)

(assert (=> b!3855048 (=> res!1560683 e!2382978)))

(declare-fun lt!1339147 () List!40978)

(declare-fun matchR!5370 (Regex!11223 List!40978) Bool)

(assert (=> b!3855048 (= res!1560683 (not (matchR!5370 (regex!6318 (rule!9178 (_1!23160 (v!39031 lt!1339135)))) lt!1339147)))))

(declare-fun lt!1339150 () TokenValue!6548)

(declare-fun maxPrefixOneRule!2293 (LexerInterface!5907 Rule!12436 List!40978) Option!8736)

(assert (=> b!3855048 (= (maxPrefixOneRule!2293 thiss!20629 (rule!9178 (_1!23160 (v!39031 lt!1339135))) lt!1339136) (Some!8735 (tuple2!40053 (Token!11775 lt!1339150 (rule!9178 (_1!23160 (v!39031 lt!1339135))) lt!1339143 lt!1339147) (_2!23160 (v!39031 lt!1339135)))))))

(declare-datatypes ((Unit!58524 0))(
  ( (Unit!58525) )
))
(declare-fun lt!1339146 () Unit!58524)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1191 (LexerInterface!5907 List!40981 List!40978 List!40978 List!40978 Rule!12436) Unit!58524)

(assert (=> b!3855048 (= lt!1339146 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1191 thiss!20629 rules!2768 lt!1339147 lt!1339136 (_2!23160 (v!39031 lt!1339135)) (rule!9178 (_1!23160 (v!39031 lt!1339135)))))))

(declare-fun e!2382983 () Bool)

(declare-fun b!3855049 () Bool)

(declare-fun e!2382979 () Bool)

(declare-fun tp!1168540 () Bool)

(declare-fun inv!55008 (String!46458) Bool)

(declare-fun inv!55011 (TokenValueInjection!12524) Bool)

(assert (=> b!3855049 (= e!2382983 (and tp!1168540 (inv!55008 (tag!7178 (rule!9178 (h!46276 suffixTokens!72)))) (inv!55011 (transformation!6318 (rule!9178 (h!46276 suffixTokens!72)))) e!2382979))))

(declare-fun b!3855050 () Bool)

(declare-fun e!2382970 () Bool)

(declare-fun e!2382987 () Bool)

(declare-fun tp!1168535 () Bool)

(assert (=> b!3855050 (= e!2382970 (and e!2382987 tp!1168535))))

(declare-fun b!3855051 () Bool)

(declare-fun res!1560690 () Bool)

(assert (=> b!3855051 (=> (not res!1560690) (not e!2382963))))

(declare-fun isEmpty!24188 (List!40981) Bool)

(assert (=> b!3855051 (= res!1560690 (not (isEmpty!24188 rules!2768)))))

(declare-fun b!3855052 () Bool)

(declare-fun res!1560682 () Bool)

(assert (=> b!3855052 (=> res!1560682 e!2382977)))

(assert (=> b!3855052 (= res!1560682 (>= (size!30732 (_2!23160 lt!1339138)) lt!1339153))))

(declare-fun res!1560687 () Bool)

(assert (=> start!361292 (=> (not res!1560687) (not e!2382963))))

(get-info :version)

(assert (=> start!361292 (= res!1560687 ((_ is Lexer!5905) thiss!20629))))

(assert (=> start!361292 e!2382963))

(declare-fun e!2382989 () Bool)

(assert (=> start!361292 e!2382989))

(assert (=> start!361292 true))

(declare-fun e!2382964 () Bool)

(assert (=> start!361292 e!2382964))

(assert (=> start!361292 e!2382970))

(declare-fun e!2382986 () Bool)

(assert (=> start!361292 e!2382986))

(declare-fun e!2382974 () Bool)

(assert (=> start!361292 e!2382974))

(declare-fun e!2382982 () Bool)

(assert (=> start!361292 e!2382982))

(declare-fun b!3855053 () Bool)

(declare-fun res!1560691 () Bool)

(assert (=> b!3855053 (=> res!1560691 e!2382971)))

(declare-fun lt!1339134 () tuple2!40050)

(assert (=> b!3855053 (= res!1560691 (not (= lt!1339149 (tuple2!40051 (++!10393 (Cons!40856 (_1!23160 (v!39031 lt!1339135)) Nil!40856) (_1!23159 lt!1339134)) (_2!23159 lt!1339134)))))))

(declare-fun b!3855054 () Bool)

(declare-fun res!1560689 () Bool)

(assert (=> b!3855054 (=> (not res!1560689) (not e!2382963))))

(declare-fun isEmpty!24189 (List!40980) Bool)

(assert (=> b!3855054 (= res!1560689 (not (isEmpty!24189 prefixTokens!80)))))

(declare-fun b!3855055 () Bool)

(declare-fun e!2382985 () Bool)

(assert (=> b!3855055 (= e!2382985 (= (size!30731 (_1!23160 (v!39031 lt!1339135))) (size!30732 (originalCharacters!6918 (_1!23160 (v!39031 lt!1339135))))))))

(declare-fun b!3855056 () Bool)

(declare-fun res!1560688 () Bool)

(assert (=> b!3855056 (=> (not res!1560688) (not e!2382963))))

(declare-fun isEmpty!24190 (List!40978) Bool)

(assert (=> b!3855056 (= res!1560688 (not (isEmpty!24190 prefix!426)))))

(assert (=> b!3855057 (= e!2382979 (and tp!1168534 tp!1168533))))

(declare-fun b!3855058 () Bool)

(declare-fun e!2382976 () Bool)

(assert (=> b!3855058 (= e!2382990 e!2382976)))

(declare-fun res!1560693 () Bool)

(assert (=> b!3855058 (=> (not res!1560693) (not e!2382976))))

(assert (=> b!3855058 (= res!1560693 ((_ is Some!8735) lt!1339135))))

(declare-fun maxPrefix!3211 (LexerInterface!5907 List!40981 List!40978) Option!8736)

(assert (=> b!3855058 (= lt!1339135 (maxPrefix!3211 thiss!20629 rules!2768 lt!1339136))))

(declare-fun b!3855059 () Bool)

(declare-fun tp_is_empty!19417 () Bool)

(declare-fun tp!1168541 () Bool)

(assert (=> b!3855059 (= e!2382982 (and tp_is_empty!19417 tp!1168541))))

(declare-fun b!3855060 () Bool)

(declare-fun res!1560695 () Bool)

(assert (=> b!3855060 (=> (not res!1560695) (not e!2382963))))

(declare-fun rulesInvariant!5250 (LexerInterface!5907 List!40981) Bool)

(assert (=> b!3855060 (= res!1560695 (rulesInvariant!5250 thiss!20629 rules!2768))))

(declare-fun b!3855061 () Bool)

(declare-fun res!1560680 () Bool)

(assert (=> b!3855061 (=> res!1560680 e!2382971)))

(assert (=> b!3855061 (= res!1560680 (or (not (= lt!1339134 (tuple2!40051 (_1!23159 lt!1339134) (_2!23159 lt!1339134)))) (= (_2!23160 (v!39031 lt!1339135)) suffix!1176)))))

(declare-fun e!2382962 () Bool)

(assert (=> b!3855062 (= e!2382962 (and tp!1168537 tp!1168536))))

(declare-fun b!3855063 () Bool)

(assert (=> b!3855063 (= e!2382973 e!2382984)))

(declare-fun res!1560692 () Bool)

(assert (=> b!3855063 (=> res!1560692 e!2382984)))

(declare-fun lt!1339145 () Int)

(assert (=> b!3855063 (= res!1560692 (or (not (= (+ lt!1339145 lt!1339153) lt!1339152)) (<= lt!1339143 lt!1339145)))))

(assert (=> b!3855063 (= lt!1339145 (size!30732 prefix!426))))

(declare-fun e!2382972 () Bool)

(assert (=> b!3855064 (= e!2382972 (and tp!1168532 tp!1168528))))

(declare-fun b!3855065 () Bool)

(declare-fun tp!1168530 () Bool)

(assert (=> b!3855065 (= e!2382964 (and tp_is_empty!19417 tp!1168530))))

(declare-fun b!3855066 () Bool)

(declare-fun tp!1168531 () Bool)

(assert (=> b!3855066 (= e!2382987 (and tp!1168531 (inv!55008 (tag!7178 (h!46277 rules!2768))) (inv!55011 (transformation!6318 (h!46277 rules!2768))) e!2382962))))

(declare-fun tp!1168544 () Bool)

(declare-fun b!3855067 () Bool)

(declare-fun e!2382968 () Bool)

(declare-fun inv!21 (TokenValue!6548) Bool)

(assert (=> b!3855067 (= e!2382968 (and (inv!21 (value!200697 (h!46276 suffixTokens!72))) e!2382983 tp!1168544))))

(declare-fun e!2382965 () Bool)

(declare-fun b!3855068 () Bool)

(declare-fun e!2382981 () Bool)

(declare-fun tp!1168542 () Bool)

(assert (=> b!3855068 (= e!2382965 (and (inv!21 (value!200697 (h!46276 prefixTokens!80))) e!2382981 tp!1168542))))

(declare-fun tp!1168539 () Bool)

(declare-fun b!3855069 () Bool)

(declare-fun inv!55012 (Token!11774) Bool)

(assert (=> b!3855069 (= e!2382986 (and (inv!55012 (h!46276 prefixTokens!80)) e!2382965 tp!1168539))))

(declare-fun b!3855070 () Bool)

(declare-fun tp!1168543 () Bool)

(assert (=> b!3855070 (= e!2382989 (and tp_is_empty!19417 tp!1168543))))

(declare-fun b!3855071 () Bool)

(assert (=> b!3855071 (= e!2382977 true)))

(declare-fun lt!1339142 () Bool)

(declare-fun rulesValidInductive!2250 (LexerInterface!5907 List!40981) Bool)

(assert (=> b!3855071 (= lt!1339142 (rulesValidInductive!2250 thiss!20629 rules!2768))))

(declare-fun b!3855072 () Bool)

(assert (=> b!3855072 (= e!2382976 (not e!2382971))))

(declare-fun res!1560697 () Bool)

(assert (=> b!3855072 (=> res!1560697 e!2382971)))

(declare-fun lt!1339140 () List!40978)

(assert (=> b!3855072 (= res!1560697 (not (= lt!1339140 lt!1339136)))))

(assert (=> b!3855072 (= lt!1339134 (lexList!1675 thiss!20629 rules!2768 (_2!23160 (v!39031 lt!1339135))))))

(declare-fun lt!1339141 () List!40978)

(assert (=> b!3855072 (and (= (size!30731 (_1!23160 (v!39031 lt!1339135))) lt!1339143) (= (originalCharacters!6918 (_1!23160 (v!39031 lt!1339135))) lt!1339147) (= (v!39031 lt!1339135) (tuple2!40053 (Token!11775 lt!1339150 (rule!9178 (_1!23160 (v!39031 lt!1339135))) lt!1339143 lt!1339147) lt!1339141)))))

(assert (=> b!3855072 (= lt!1339143 (size!30732 lt!1339147))))

(assert (=> b!3855072 e!2382985))

(declare-fun res!1560694 () Bool)

(assert (=> b!3855072 (=> (not res!1560694) (not e!2382985))))

(assert (=> b!3855072 (= res!1560694 (= (value!200697 (_1!23160 (v!39031 lt!1339135))) lt!1339150))))

(declare-fun apply!9561 (TokenValueInjection!12524 BalanceConc!24652) TokenValue!6548)

(declare-fun seqFromList!4589 (List!40978) BalanceConc!24652)

(assert (=> b!3855072 (= lt!1339150 (apply!9561 (transformation!6318 (rule!9178 (_1!23160 (v!39031 lt!1339135)))) (seqFromList!4589 lt!1339147)))))

(assert (=> b!3855072 (= (_2!23160 (v!39031 lt!1339135)) lt!1339141)))

(declare-fun lt!1339151 () Unit!58524)

(declare-fun lemmaSamePrefixThenSameSuffix!1638 (List!40978 List!40978 List!40978 List!40978 List!40978) Unit!58524)

(assert (=> b!3855072 (= lt!1339151 (lemmaSamePrefixThenSameSuffix!1638 lt!1339147 (_2!23160 (v!39031 lt!1339135)) lt!1339147 lt!1339141 lt!1339136))))

(declare-fun getSuffix!1872 (List!40978 List!40978) List!40978)

(assert (=> b!3855072 (= lt!1339141 (getSuffix!1872 lt!1339136 lt!1339147))))

(declare-fun isPrefix!3417 (List!40978 List!40978) Bool)

(assert (=> b!3855072 (isPrefix!3417 lt!1339147 lt!1339140)))

(assert (=> b!3855072 (= lt!1339140 (++!10394 lt!1339147 (_2!23160 (v!39031 lt!1339135))))))

(declare-fun lt!1339148 () Unit!58524)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2280 (List!40978 List!40978) Unit!58524)

(assert (=> b!3855072 (= lt!1339148 (lemmaConcatTwoListThenFirstIsPrefix!2280 lt!1339147 (_2!23160 (v!39031 lt!1339135))))))

(declare-fun list!15208 (BalanceConc!24652) List!40978)

(declare-fun charsOf!4146 (Token!11774) BalanceConc!24652)

(assert (=> b!3855072 (= lt!1339147 (list!15208 (charsOf!4146 (_1!23160 (v!39031 lt!1339135)))))))

(declare-fun ruleValid!2270 (LexerInterface!5907 Rule!12436) Bool)

(assert (=> b!3855072 (ruleValid!2270 thiss!20629 (rule!9178 (_1!23160 (v!39031 lt!1339135))))))

(declare-fun lt!1339137 () Unit!58524)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1350 (LexerInterface!5907 Rule!12436 List!40981) Unit!58524)

(assert (=> b!3855072 (= lt!1339137 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1350 thiss!20629 (rule!9178 (_1!23160 (v!39031 lt!1339135))) rules!2768))))

(declare-fun lt!1339139 () Unit!58524)

(declare-fun lemmaCharactersSize!979 (Token!11774) Unit!58524)

(assert (=> b!3855072 (= lt!1339139 (lemmaCharactersSize!979 (_1!23160 (v!39031 lt!1339135))))))

(declare-fun tp!1168538 () Bool)

(declare-fun b!3855073 () Bool)

(assert (=> b!3855073 (= e!2382974 (and (inv!55012 (h!46276 suffixTokens!72)) e!2382968 tp!1168538))))

(declare-fun tp!1168529 () Bool)

(declare-fun b!3855074 () Bool)

(assert (=> b!3855074 (= e!2382981 (and tp!1168529 (inv!55008 (tag!7178 (rule!9178 (h!46276 prefixTokens!80)))) (inv!55011 (transformation!6318 (rule!9178 (h!46276 prefixTokens!80)))) e!2382972))))

(assert (= (and start!361292 res!1560687) b!3855051))

(assert (= (and b!3855051 res!1560690) b!3855060))

(assert (= (and b!3855060 res!1560695) b!3855054))

(assert (= (and b!3855054 res!1560689) b!3855056))

(assert (= (and b!3855056 res!1560688) b!3855043))

(assert (= (and b!3855043 res!1560681) b!3855044))

(assert (= (and b!3855044 res!1560685) b!3855058))

(assert (= (and b!3855058 res!1560693) b!3855072))

(assert (= (and b!3855072 res!1560694) b!3855055))

(assert (= (and b!3855072 (not res!1560697)) b!3855053))

(assert (= (and b!3855053 (not res!1560691)) b!3855061))

(assert (= (and b!3855061 (not res!1560680)) b!3855046))

(assert (= (and b!3855046 (not res!1560696)) b!3855045))

(assert (= (and b!3855045 (not res!1560684)) b!3855063))

(assert (= (and b!3855063 (not res!1560692)) b!3855048))

(assert (= (and b!3855048 (not res!1560683)) b!3855047))

(assert (= (and b!3855047 (not res!1560686)) b!3855052))

(assert (= (and b!3855052 (not res!1560682)) b!3855071))

(assert (= (and start!361292 ((_ is Cons!40854) suffixResult!91)) b!3855070))

(assert (= (and start!361292 ((_ is Cons!40854) suffix!1176)) b!3855065))

(assert (= b!3855066 b!3855062))

(assert (= b!3855050 b!3855066))

(assert (= (and start!361292 ((_ is Cons!40857) rules!2768)) b!3855050))

(assert (= b!3855074 b!3855064))

(assert (= b!3855068 b!3855074))

(assert (= b!3855069 b!3855068))

(assert (= (and start!361292 ((_ is Cons!40856) prefixTokens!80)) b!3855069))

(assert (= b!3855049 b!3855057))

(assert (= b!3855067 b!3855049))

(assert (= b!3855073 b!3855067))

(assert (= (and start!361292 ((_ is Cons!40856) suffixTokens!72)) b!3855073))

(assert (= (and start!361292 ((_ is Cons!40854) prefix!426)) b!3855059))

(declare-fun m!4410301 () Bool)

(assert (=> b!3855048 m!4410301))

(declare-fun m!4410303 () Bool)

(assert (=> b!3855048 m!4410303))

(declare-fun m!4410305 () Bool)

(assert (=> b!3855048 m!4410305))

(declare-fun m!4410307 () Bool)

(assert (=> b!3855058 m!4410307))

(declare-fun m!4410309 () Bool)

(assert (=> b!3855067 m!4410309))

(declare-fun m!4410311 () Bool)

(assert (=> b!3855068 m!4410311))

(declare-fun m!4410313 () Bool)

(assert (=> b!3855051 m!4410313))

(declare-fun m!4410315 () Bool)

(assert (=> b!3855069 m!4410315))

(declare-fun m!4410317 () Bool)

(assert (=> b!3855072 m!4410317))

(declare-fun m!4410319 () Bool)

(assert (=> b!3855072 m!4410319))

(assert (=> b!3855072 m!4410319))

(declare-fun m!4410321 () Bool)

(assert (=> b!3855072 m!4410321))

(declare-fun m!4410323 () Bool)

(assert (=> b!3855072 m!4410323))

(declare-fun m!4410325 () Bool)

(assert (=> b!3855072 m!4410325))

(declare-fun m!4410327 () Bool)

(assert (=> b!3855072 m!4410327))

(declare-fun m!4410329 () Bool)

(assert (=> b!3855072 m!4410329))

(declare-fun m!4410331 () Bool)

(assert (=> b!3855072 m!4410331))

(assert (=> b!3855072 m!4410329))

(declare-fun m!4410333 () Bool)

(assert (=> b!3855072 m!4410333))

(declare-fun m!4410335 () Bool)

(assert (=> b!3855072 m!4410335))

(declare-fun m!4410337 () Bool)

(assert (=> b!3855072 m!4410337))

(declare-fun m!4410339 () Bool)

(assert (=> b!3855072 m!4410339))

(declare-fun m!4410341 () Bool)

(assert (=> b!3855072 m!4410341))

(declare-fun m!4410343 () Bool)

(assert (=> b!3855072 m!4410343))

(declare-fun m!4410345 () Bool)

(assert (=> b!3855054 m!4410345))

(declare-fun m!4410347 () Bool)

(assert (=> b!3855074 m!4410347))

(declare-fun m!4410349 () Bool)

(assert (=> b!3855074 m!4410349))

(declare-fun m!4410351 () Bool)

(assert (=> b!3855045 m!4410351))

(declare-fun m!4410353 () Bool)

(assert (=> b!3855060 m!4410353))

(declare-fun m!4410355 () Bool)

(assert (=> b!3855046 m!4410355))

(declare-fun m!4410357 () Bool)

(assert (=> b!3855046 m!4410357))

(declare-fun m!4410359 () Bool)

(assert (=> b!3855056 m!4410359))

(declare-fun m!4410361 () Bool)

(assert (=> b!3855047 m!4410361))

(declare-fun m!4410363 () Bool)

(assert (=> b!3855047 m!4410363))

(declare-fun m!4410365 () Bool)

(assert (=> b!3855049 m!4410365))

(declare-fun m!4410367 () Bool)

(assert (=> b!3855049 m!4410367))

(declare-fun m!4410369 () Bool)

(assert (=> b!3855073 m!4410369))

(declare-fun m!4410371 () Bool)

(assert (=> b!3855052 m!4410371))

(declare-fun m!4410373 () Bool)

(assert (=> b!3855063 m!4410373))

(declare-fun m!4410375 () Bool)

(assert (=> b!3855071 m!4410375))

(declare-fun m!4410377 () Bool)

(assert (=> b!3855055 m!4410377))

(declare-fun m!4410379 () Bool)

(assert (=> b!3855066 m!4410379))

(declare-fun m!4410381 () Bool)

(assert (=> b!3855066 m!4410381))

(declare-fun m!4410383 () Bool)

(assert (=> b!3855043 m!4410383))

(declare-fun m!4410385 () Bool)

(assert (=> b!3855043 m!4410385))

(declare-fun m!4410387 () Bool)

(assert (=> b!3855043 m!4410387))

(declare-fun m!4410389 () Bool)

(assert (=> b!3855053 m!4410389))

(declare-fun m!4410391 () Bool)

(assert (=> b!3855044 m!4410391))

(check-sat (not b!3855067) (not b!3855074) (not b!3855049) (not b!3855053) (not b!3855068) (not b!3855059) (not b!3855044) b_and!288227 b_and!288219 (not b!3855052) (not b!3855071) (not b!3855069) (not b!3855045) (not b!3855073) (not b!3855048) (not b!3855054) (not b_next!104161) (not b_next!104159) (not b_next!104163) (not b!3855058) b_and!288223 (not b_next!104165) tp_is_empty!19417 (not b!3855047) (not b!3855051) b_and!288225 (not b!3855056) (not b!3855060) (not b!3855046) (not b!3855050) b_and!288221 (not b!3855070) (not b!3855072) (not b!3855043) (not b!3855066) b_and!288229 (not b!3855055) (not b!3855063) (not b_next!104167) (not b!3855065) (not b_next!104157))
(check-sat (not b_next!104163) b_and!288225 b_and!288221 b_and!288227 b_and!288229 b_and!288219 (not b_next!104167) (not b_next!104157) (not b_next!104161) (not b_next!104159) b_and!288223 (not b_next!104165))
