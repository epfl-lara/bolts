; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!48722 () Bool)

(assert start!48722)

(declare-fun b!530477 () Bool)

(declare-fun b_free!14241 () Bool)

(declare-fun b_next!14257 () Bool)

(assert (=> b!530477 (= b_free!14241 (not b_next!14257))))

(declare-fun tp!169045 () Bool)

(declare-fun b_and!51787 () Bool)

(assert (=> b!530477 (= tp!169045 b_and!51787)))

(declare-fun b_free!14243 () Bool)

(declare-fun b_next!14259 () Bool)

(assert (=> b!530477 (= b_free!14243 (not b_next!14259))))

(declare-fun tp!169048 () Bool)

(declare-fun b_and!51789 () Bool)

(assert (=> b!530477 (= tp!169048 b_and!51789)))

(declare-fun b!530476 () Bool)

(declare-fun b_free!14245 () Bool)

(declare-fun b_next!14261 () Bool)

(assert (=> b!530476 (= b_free!14245 (not b_next!14261))))

(declare-fun tp!169042 () Bool)

(declare-fun b_and!51791 () Bool)

(assert (=> b!530476 (= tp!169042 b_and!51791)))

(declare-fun b_free!14247 () Bool)

(declare-fun b_next!14263 () Bool)

(assert (=> b!530476 (= b_free!14247 (not b_next!14263))))

(declare-fun tp!169046 () Bool)

(declare-fun b_and!51793 () Bool)

(assert (=> b!530476 (= tp!169046 b_and!51793)))

(declare-fun b!530474 () Bool)

(declare-fun res!223982 () Bool)

(declare-fun e!319271 () Bool)

(assert (=> b!530474 (=> (not res!223982) (not e!319271))))

(declare-datatypes ((String!6415 0))(
  ( (String!6416 (value!30777 String)) )
))
(declare-datatypes ((C!3410 0))(
  ( (C!3411 (val!1931 Int)) )
))
(declare-datatypes ((Regex!1244 0))(
  ( (ElementMatch!1244 (c!101359 C!3410)) (Concat!2178 (regOne!3000 Regex!1244) (regTwo!3000 Regex!1244)) (EmptyExpr!1244) (Star!1244 (reg!1573 Regex!1244)) (EmptyLang!1244) (Union!1244 (regOne!3001 Regex!1244) (regTwo!3001 Regex!1244)) )
))
(declare-datatypes ((List!5052 0))(
  ( (Nil!5042) (Cons!5042 (h!10443 (_ BitVec 16)) (t!73715 List!5052)) )
))
(declare-datatypes ((TokenValue!934 0))(
  ( (FloatLiteralValue!1868 (text!6983 List!5052)) (TokenValueExt!933 (__x!3766 Int)) (Broken!4670 (value!30778 List!5052)) (Object!943) (End!934) (Def!934) (Underscore!934) (Match!934) (Else!934) (Error!934) (Case!934) (If!934) (Extends!934) (Abstract!934) (Class!934) (Val!934) (DelimiterValue!1868 (del!994 List!5052)) (KeywordValue!940 (value!30779 List!5052)) (CommentValue!1868 (value!30780 List!5052)) (WhitespaceValue!1868 (value!30781 List!5052)) (IndentationValue!934 (value!30782 List!5052)) (String!6417) (Int32!934) (Broken!4671 (value!30783 List!5052)) (Boolean!935) (Unit!8837) (OperatorValue!937 (op!994 List!5052)) (IdentifierValue!1868 (value!30784 List!5052)) (IdentifierValue!1869 (value!30785 List!5052)) (WhitespaceValue!1869 (value!30786 List!5052)) (True!1868) (False!1868) (Broken!4672 (value!30787 List!5052)) (Broken!4673 (value!30788 List!5052)) (True!1869) (RightBrace!934) (RightBracket!934) (Colon!934) (Null!934) (Comma!934) (LeftBracket!934) (False!1869) (LeftBrace!934) (ImaginaryLiteralValue!934 (text!6984 List!5052)) (StringLiteralValue!2802 (value!30789 List!5052)) (EOFValue!934 (value!30790 List!5052)) (IdentValue!934 (value!30791 List!5052)) (DelimiterValue!1869 (value!30792 List!5052)) (DedentValue!934 (value!30793 List!5052)) (NewLineValue!934 (value!30794 List!5052)) (IntegerValue!2802 (value!30795 (_ BitVec 32)) (text!6985 List!5052)) (IntegerValue!2803 (value!30796 Int) (text!6986 List!5052)) (Times!934) (Or!934) (Equal!934) (Minus!934) (Broken!4674 (value!30797 List!5052)) (And!934) (Div!934) (LessEqual!934) (Mod!934) (Concat!2179) (Not!934) (Plus!934) (SpaceValue!934 (value!30798 List!5052)) (IntegerValue!2804 (value!30799 Int) (text!6987 List!5052)) (StringLiteralValue!2803 (text!6988 List!5052)) (FloatLiteralValue!1869 (text!6989 List!5052)) (BytesLiteralValue!934 (value!30800 List!5052)) (CommentValue!1869 (value!30801 List!5052)) (StringLiteralValue!2804 (value!30802 List!5052)) (ErrorTokenValue!934 (msg!995 List!5052)) )
))
(declare-datatypes ((List!5053 0))(
  ( (Nil!5043) (Cons!5043 (h!10444 C!3410) (t!73716 List!5053)) )
))
(declare-datatypes ((IArray!3255 0))(
  ( (IArray!3256 (innerList!1685 List!5053)) )
))
(declare-datatypes ((Conc!1627 0))(
  ( (Node!1627 (left!4267 Conc!1627) (right!4597 Conc!1627) (csize!3484 Int) (cheight!1838 Int)) (Leaf!2590 (xs!4264 IArray!3255) (csize!3485 Int)) (Empty!1627) )
))
(declare-datatypes ((BalanceConc!3262 0))(
  ( (BalanceConc!3263 (c!101360 Conc!1627)) )
))
(declare-datatypes ((TokenValueInjection!1636 0))(
  ( (TokenValueInjection!1637 (toValue!1753 Int) (toChars!1612 Int)) )
))
(declare-datatypes ((Rule!1620 0))(
  ( (Rule!1621 (regex!910 Regex!1244) (tag!1172 String!6415) (isSeparator!910 Bool) (transformation!910 TokenValueInjection!1636)) )
))
(declare-datatypes ((List!5054 0))(
  ( (Nil!5044) (Cons!5044 (h!10445 Rule!1620) (t!73717 List!5054)) )
))
(declare-fun rules!3103 () List!5054)

(declare-fun isEmpty!3650 (List!5054) Bool)

(assert (=> b!530474 (= res!223982 (not (isEmpty!3650 rules!3103)))))

(declare-fun res!223985 () Bool)

(assert (=> start!48722 (=> (not res!223985) (not e!319271))))

(declare-datatypes ((LexerInterface!796 0))(
  ( (LexerInterfaceExt!793 (__x!3767 Int)) (Lexer!794) )
))
(declare-fun thiss!22590 () LexerInterface!796)

(assert (=> start!48722 (= res!223985 (is-Lexer!794 thiss!22590))))

(assert (=> start!48722 e!319271))

(declare-fun e!319268 () Bool)

(assert (=> start!48722 e!319268))

(declare-fun e!319262 () Bool)

(assert (=> start!48722 e!319262))

(declare-datatypes ((Token!1556 0))(
  ( (Token!1557 (value!30803 TokenValue!934) (rule!1610 Rule!1620) (size!4094 Int) (originalCharacters!949 List!5053)) )
))
(declare-fun token!491 () Token!1556)

(declare-fun e!319260 () Bool)

(declare-fun inv!6328 (Token!1556) Bool)

(assert (=> start!48722 (and (inv!6328 token!491) e!319260)))

(assert (=> start!48722 true))

(declare-fun e!319267 () Bool)

(assert (=> start!48722 e!319267))

(declare-fun b!530475 () Bool)

(declare-fun e!319270 () Bool)

(declare-fun tp!169040 () Bool)

(assert (=> b!530475 (= e!319262 (and e!319270 tp!169040))))

(declare-fun e!319265 () Bool)

(assert (=> b!530476 (= e!319265 (and tp!169042 tp!169046))))

(declare-fun e!319259 () Bool)

(assert (=> b!530477 (= e!319259 (and tp!169045 tp!169048))))

(declare-fun tp!169044 () Bool)

(declare-fun b!530478 () Bool)

(declare-fun inv!6325 (String!6415) Bool)

(declare-fun inv!6329 (TokenValueInjection!1636) Bool)

(assert (=> b!530478 (= e!319270 (and tp!169044 (inv!6325 (tag!1172 (h!10445 rules!3103))) (inv!6329 (transformation!910 (h!10445 rules!3103))) e!319259))))

(declare-fun e!319269 () Bool)

(declare-fun tp!169043 () Bool)

(declare-fun b!530479 () Bool)

(declare-fun inv!21 (TokenValue!934) Bool)

(assert (=> b!530479 (= e!319260 (and (inv!21 (value!30803 token!491)) e!319269 tp!169043))))

(declare-fun b!530480 () Bool)

(declare-fun res!223986 () Bool)

(assert (=> b!530480 (=> (not res!223986) (not e!319271))))

(declare-fun input!2705 () List!5053)

(declare-fun list!2098 (BalanceConc!3262) List!5053)

(declare-fun charsOf!539 (Token!1556) BalanceConc!3262)

(assert (=> b!530480 (= res!223986 (= (list!2098 (charsOf!539 token!491)) input!2705))))

(declare-fun b!530481 () Bool)

(declare-fun res!223983 () Bool)

(assert (=> b!530481 (=> (not res!223983) (not e!319271))))

(declare-fun isEmpty!3651 (List!5053) Bool)

(assert (=> b!530481 (= res!223983 (not (isEmpty!3651 input!2705)))))

(declare-fun b!530482 () Bool)

(declare-fun res!223987 () Bool)

(assert (=> b!530482 (=> (not res!223987) (not e!319271))))

(declare-fun rulesInvariant!759 (LexerInterface!796 List!5054) Bool)

(assert (=> b!530482 (= res!223987 (rulesInvariant!759 thiss!22590 rules!3103))))

(declare-fun b!530483 () Bool)

(declare-fun e!319264 () Bool)

(declare-fun rulesValidInductive!311 (LexerInterface!796 List!5054) Bool)

(assert (=> b!530483 (= e!319264 (not (rulesValidInductive!311 thiss!22590 rules!3103)))))

(declare-fun b!530484 () Bool)

(declare-fun e!319272 () Bool)

(assert (=> b!530484 (= e!319271 e!319272)))

(declare-fun res!223988 () Bool)

(assert (=> b!530484 (=> (not res!223988) (not e!319272))))

(declare-datatypes ((tuple2!6174 0))(
  ( (tuple2!6175 (_1!3351 Token!1556) (_2!3351 List!5053)) )
))
(declare-datatypes ((Option!1260 0))(
  ( (None!1259) (Some!1259 (v!16064 tuple2!6174)) )
))
(declare-fun lt!218493 () Option!1260)

(declare-fun isDefined!1072 (Option!1260) Bool)

(assert (=> b!530484 (= res!223988 (isDefined!1072 lt!218493))))

(declare-fun suffix!1342 () List!5053)

(declare-fun maxPrefix!494 (LexerInterface!796 List!5054 List!5053) Option!1260)

(declare-fun ++!1398 (List!5053 List!5053) List!5053)

(assert (=> b!530484 (= lt!218493 (maxPrefix!494 thiss!22590 rules!3103 (++!1398 input!2705 suffix!1342)))))

(declare-fun b!530485 () Bool)

(declare-fun tp_is_empty!2843 () Bool)

(declare-fun tp!169041 () Bool)

(assert (=> b!530485 (= e!319268 (and tp_is_empty!2843 tp!169041))))

(declare-fun b!530486 () Bool)

(assert (=> b!530486 (= e!319272 e!319264)))

(declare-fun res!223984 () Bool)

(assert (=> b!530486 (=> (not res!223984) (not e!319264))))

(declare-fun lt!218492 () tuple2!6174)

(assert (=> b!530486 (= res!223984 (and (= (_1!3351 lt!218492) token!491) (= (_2!3351 lt!218492) suffix!1342)))))

(declare-fun get!1880 (Option!1260) tuple2!6174)

(assert (=> b!530486 (= lt!218492 (get!1880 lt!218493))))

(declare-fun b!530487 () Bool)

(declare-fun tp!169039 () Bool)

(assert (=> b!530487 (= e!319269 (and tp!169039 (inv!6325 (tag!1172 (rule!1610 token!491))) (inv!6329 (transformation!910 (rule!1610 token!491))) e!319265))))

(declare-fun b!530488 () Bool)

(declare-fun tp!169047 () Bool)

(assert (=> b!530488 (= e!319267 (and tp_is_empty!2843 tp!169047))))

(assert (= (and start!48722 res!223985) b!530474))

(assert (= (and b!530474 res!223982) b!530482))

(assert (= (and b!530482 res!223987) b!530481))

(assert (= (and b!530481 res!223983) b!530480))

(assert (= (and b!530480 res!223986) b!530484))

(assert (= (and b!530484 res!223988) b!530486))

(assert (= (and b!530486 res!223984) b!530483))

(assert (= (and start!48722 (is-Cons!5043 suffix!1342)) b!530485))

(assert (= b!530478 b!530477))

(assert (= b!530475 b!530478))

(assert (= (and start!48722 (is-Cons!5044 rules!3103)) b!530475))

(assert (= b!530487 b!530476))

(assert (= b!530479 b!530487))

(assert (= start!48722 b!530479))

(assert (= (and start!48722 (is-Cons!5043 input!2705)) b!530488))

(declare-fun m!775723 () Bool)

(assert (=> b!530478 m!775723))

(declare-fun m!775725 () Bool)

(assert (=> b!530478 m!775725))

(declare-fun m!775727 () Bool)

(assert (=> b!530487 m!775727))

(declare-fun m!775729 () Bool)

(assert (=> b!530487 m!775729))

(declare-fun m!775731 () Bool)

(assert (=> b!530482 m!775731))

(declare-fun m!775733 () Bool)

(assert (=> b!530481 m!775733))

(declare-fun m!775735 () Bool)

(assert (=> b!530486 m!775735))

(declare-fun m!775737 () Bool)

(assert (=> b!530484 m!775737))

(declare-fun m!775739 () Bool)

(assert (=> b!530484 m!775739))

(assert (=> b!530484 m!775739))

(declare-fun m!775741 () Bool)

(assert (=> b!530484 m!775741))

(declare-fun m!775743 () Bool)

(assert (=> b!530479 m!775743))

(declare-fun m!775745 () Bool)

(assert (=> start!48722 m!775745))

(declare-fun m!775747 () Bool)

(assert (=> b!530483 m!775747))

(declare-fun m!775749 () Bool)

(assert (=> b!530474 m!775749))

(declare-fun m!775751 () Bool)

(assert (=> b!530480 m!775751))

(assert (=> b!530480 m!775751))

(declare-fun m!775753 () Bool)

(assert (=> b!530480 m!775753))

(push 1)

(assert (not b!530480))

(assert (not b_next!14259))

(assert (not b!530479))

(assert (not b!530483))

(assert (not start!48722))

(assert (not b_next!14263))

(assert (not b!530481))

(assert (not b!530478))

(assert (not b!530485))

(assert b_and!51793)

(assert tp_is_empty!2843)

(assert (not b_next!14257))

(assert b_and!51787)

(assert (not b!530482))

(assert (not b!530486))

(assert (not b_next!14261))

(assert (not b!530475))

(assert (not b!530484))

(assert (not b!530474))

(assert b_and!51789)

(assert (not b!530488))

(assert (not b!530487))

(assert b_and!51791)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!14261))

(assert b_and!51789)

(assert (not b_next!14259))

(assert b_and!51791)

(assert (not b_next!14263))

(assert b_and!51793)

(assert (not b_next!14257))

(assert b_and!51787)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!188269 () Bool)

(declare-fun isEmpty!3654 (Option!1260) Bool)

(assert (=> d!188269 (= (isDefined!1072 lt!218493) (not (isEmpty!3654 lt!218493)))))

(declare-fun bs!67122 () Bool)

(assert (= bs!67122 d!188269))

(declare-fun m!775787 () Bool)

(assert (=> bs!67122 m!775787))

(assert (=> b!530484 d!188269))

(declare-fun b!530585 () Bool)

(declare-fun res!224049 () Bool)

(declare-fun e!319344 () Bool)

(assert (=> b!530585 (=> (not res!224049) (not e!319344))))

(declare-fun lt!218515 () Option!1260)

(declare-fun apply!1203 (TokenValueInjection!1636 BalanceConc!3262) TokenValue!934)

(declare-fun seqFromList!1126 (List!5053) BalanceConc!3262)

(assert (=> b!530585 (= res!224049 (= (value!30803 (_1!3351 (get!1880 lt!218515))) (apply!1203 (transformation!910 (rule!1610 (_1!3351 (get!1880 lt!218515)))) (seqFromList!1126 (originalCharacters!949 (_1!3351 (get!1880 lt!218515)))))))))

(declare-fun b!530586 () Bool)

(declare-fun res!224044 () Bool)

(assert (=> b!530586 (=> (not res!224044) (not e!319344))))

(assert (=> b!530586 (= res!224044 (= (list!2098 (charsOf!539 (_1!3351 (get!1880 lt!218515)))) (originalCharacters!949 (_1!3351 (get!1880 lt!218515)))))))

(declare-fun b!530587 () Bool)

(declare-fun e!319343 () Bool)

(assert (=> b!530587 (= e!319343 e!319344)))

(declare-fun res!224047 () Bool)

(assert (=> b!530587 (=> (not res!224047) (not e!319344))))

(assert (=> b!530587 (= res!224047 (isDefined!1072 lt!218515))))

(declare-fun b!530588 () Bool)

(declare-fun e!319345 () Option!1260)

(declare-fun lt!218516 () Option!1260)

(declare-fun lt!218513 () Option!1260)

(assert (=> b!530588 (= e!319345 (ite (and (is-None!1259 lt!218516) (is-None!1259 lt!218513)) None!1259 (ite (is-None!1259 lt!218513) lt!218516 (ite (is-None!1259 lt!218516) lt!218513 (ite (>= (size!4094 (_1!3351 (v!16064 lt!218516))) (size!4094 (_1!3351 (v!16064 lt!218513)))) lt!218516 lt!218513)))))))

(declare-fun call!38148 () Option!1260)

(assert (=> b!530588 (= lt!218516 call!38148)))

(assert (=> b!530588 (= lt!218513 (maxPrefix!494 thiss!22590 (t!73717 rules!3103) (++!1398 input!2705 suffix!1342)))))

(declare-fun b!530589 () Bool)

(declare-fun res!224045 () Bool)

(assert (=> b!530589 (=> (not res!224045) (not e!319344))))

(declare-fun size!4096 (List!5053) Int)

(assert (=> b!530589 (= res!224045 (< (size!4096 (_2!3351 (get!1880 lt!218515))) (size!4096 (++!1398 input!2705 suffix!1342))))))

(declare-fun b!530590 () Bool)

(declare-fun res!224046 () Bool)

(assert (=> b!530590 (=> (not res!224046) (not e!319344))))

(declare-fun matchR!437 (Regex!1244 List!5053) Bool)

(assert (=> b!530590 (= res!224046 (matchR!437 (regex!910 (rule!1610 (_1!3351 (get!1880 lt!218515)))) (list!2098 (charsOf!539 (_1!3351 (get!1880 lt!218515))))))))

(declare-fun bm!38143 () Bool)

(declare-fun maxPrefixOneRule!237 (LexerInterface!796 Rule!1620 List!5053) Option!1260)

(assert (=> bm!38143 (= call!38148 (maxPrefixOneRule!237 thiss!22590 (h!10445 rules!3103) (++!1398 input!2705 suffix!1342)))))

(declare-fun b!530592 () Bool)

(assert (=> b!530592 (= e!319345 call!38148)))

(declare-fun b!530593 () Bool)

(declare-fun contains!1182 (List!5054 Rule!1620) Bool)

(assert (=> b!530593 (= e!319344 (contains!1182 rules!3103 (rule!1610 (_1!3351 (get!1880 lt!218515)))))))

(declare-fun d!188271 () Bool)

(assert (=> d!188271 e!319343))

(declare-fun res!224050 () Bool)

(assert (=> d!188271 (=> res!224050 e!319343)))

(assert (=> d!188271 (= res!224050 (isEmpty!3654 lt!218515))))

(assert (=> d!188271 (= lt!218515 e!319345)))

(declare-fun c!101372 () Bool)

(assert (=> d!188271 (= c!101372 (and (is-Cons!5044 rules!3103) (is-Nil!5044 (t!73717 rules!3103))))))

(declare-datatypes ((Unit!8839 0))(
  ( (Unit!8840) )
))
(declare-fun lt!218517 () Unit!8839)

(declare-fun lt!218514 () Unit!8839)

(assert (=> d!188271 (= lt!218517 lt!218514)))

(declare-fun isPrefix!560 (List!5053 List!5053) Bool)

(assert (=> d!188271 (isPrefix!560 (++!1398 input!2705 suffix!1342) (++!1398 input!2705 suffix!1342))))

(declare-fun lemmaIsPrefixRefl!306 (List!5053 List!5053) Unit!8839)

(assert (=> d!188271 (= lt!218514 (lemmaIsPrefixRefl!306 (++!1398 input!2705 suffix!1342) (++!1398 input!2705 suffix!1342)))))

(assert (=> d!188271 (rulesValidInductive!311 thiss!22590 rules!3103)))

(assert (=> d!188271 (= (maxPrefix!494 thiss!22590 rules!3103 (++!1398 input!2705 suffix!1342)) lt!218515)))

(declare-fun b!530591 () Bool)

(declare-fun res!224048 () Bool)

(assert (=> b!530591 (=> (not res!224048) (not e!319344))))

(assert (=> b!530591 (= res!224048 (= (++!1398 (list!2098 (charsOf!539 (_1!3351 (get!1880 lt!218515)))) (_2!3351 (get!1880 lt!218515))) (++!1398 input!2705 suffix!1342)))))

(assert (= (and d!188271 c!101372) b!530592))

(assert (= (and d!188271 (not c!101372)) b!530588))

(assert (= (or b!530592 b!530588) bm!38143))

(assert (= (and d!188271 (not res!224050)) b!530587))

(assert (= (and b!530587 res!224047) b!530586))

(assert (= (and b!530586 res!224044) b!530589))

(assert (= (and b!530589 res!224045) b!530591))

(assert (= (and b!530591 res!224048) b!530585))

(assert (= (and b!530585 res!224049) b!530590))

(assert (= (and b!530590 res!224046) b!530593))

(assert (=> b!530588 m!775739))

(declare-fun m!775825 () Bool)

(assert (=> b!530588 m!775825))

(assert (=> bm!38143 m!775739))

(declare-fun m!775827 () Bool)

(assert (=> bm!38143 m!775827))

(declare-fun m!775829 () Bool)

(assert (=> b!530590 m!775829))

(declare-fun m!775831 () Bool)

(assert (=> b!530590 m!775831))

(assert (=> b!530590 m!775831))

(declare-fun m!775833 () Bool)

(assert (=> b!530590 m!775833))

(assert (=> b!530590 m!775833))

(declare-fun m!775835 () Bool)

(assert (=> b!530590 m!775835))

(assert (=> b!530585 m!775829))

(declare-fun m!775837 () Bool)

(assert (=> b!530585 m!775837))

(assert (=> b!530585 m!775837))

(declare-fun m!775839 () Bool)

(assert (=> b!530585 m!775839))

(assert (=> b!530591 m!775829))

(assert (=> b!530591 m!775831))

(assert (=> b!530591 m!775831))

(assert (=> b!530591 m!775833))

(assert (=> b!530591 m!775833))

(declare-fun m!775841 () Bool)

(assert (=> b!530591 m!775841))

(declare-fun m!775843 () Bool)

(assert (=> d!188271 m!775843))

(assert (=> d!188271 m!775739))

(assert (=> d!188271 m!775739))

(declare-fun m!775845 () Bool)

(assert (=> d!188271 m!775845))

(assert (=> d!188271 m!775739))

(assert (=> d!188271 m!775739))

(declare-fun m!775847 () Bool)

(assert (=> d!188271 m!775847))

(assert (=> d!188271 m!775747))

(assert (=> b!530589 m!775829))

(declare-fun m!775849 () Bool)

(assert (=> b!530589 m!775849))

(assert (=> b!530589 m!775739))

(declare-fun m!775851 () Bool)

(assert (=> b!530589 m!775851))

(declare-fun m!775853 () Bool)

(assert (=> b!530587 m!775853))

(assert (=> b!530586 m!775829))

(assert (=> b!530586 m!775831))

(assert (=> b!530586 m!775831))

(assert (=> b!530586 m!775833))

(assert (=> b!530593 m!775829))

(declare-fun m!775855 () Bool)

(assert (=> b!530593 m!775855))

(assert (=> b!530484 d!188271))

(declare-fun d!188299 () Bool)

(declare-fun e!319350 () Bool)

(assert (=> d!188299 e!319350))

(declare-fun res!224055 () Bool)

(assert (=> d!188299 (=> (not res!224055) (not e!319350))))

(declare-fun lt!218520 () List!5053)

(declare-fun content!897 (List!5053) (Set C!3410))

(assert (=> d!188299 (= res!224055 (= (content!897 lt!218520) (set.union (content!897 input!2705) (content!897 suffix!1342))))))

(declare-fun e!319351 () List!5053)

(assert (=> d!188299 (= lt!218520 e!319351)))

(declare-fun c!101375 () Bool)

(assert (=> d!188299 (= c!101375 (is-Nil!5043 input!2705))))

(assert (=> d!188299 (= (++!1398 input!2705 suffix!1342) lt!218520)))

(declare-fun b!530603 () Bool)

(assert (=> b!530603 (= e!319351 (Cons!5043 (h!10444 input!2705) (++!1398 (t!73716 input!2705) suffix!1342)))))

(declare-fun b!530602 () Bool)

(assert (=> b!530602 (= e!319351 suffix!1342)))

(declare-fun b!530604 () Bool)

(declare-fun res!224056 () Bool)

(assert (=> b!530604 (=> (not res!224056) (not e!319350))))

(assert (=> b!530604 (= res!224056 (= (size!4096 lt!218520) (+ (size!4096 input!2705) (size!4096 suffix!1342))))))

(declare-fun b!530605 () Bool)

(assert (=> b!530605 (= e!319350 (or (not (= suffix!1342 Nil!5043)) (= lt!218520 input!2705)))))

(assert (= (and d!188299 c!101375) b!530602))

(assert (= (and d!188299 (not c!101375)) b!530603))

(assert (= (and d!188299 res!224055) b!530604))

(assert (= (and b!530604 res!224056) b!530605))

(declare-fun m!775857 () Bool)

(assert (=> d!188299 m!775857))

(declare-fun m!775859 () Bool)

(assert (=> d!188299 m!775859))

(declare-fun m!775861 () Bool)

(assert (=> d!188299 m!775861))

(declare-fun m!775863 () Bool)

(assert (=> b!530603 m!775863))

(declare-fun m!775865 () Bool)

(assert (=> b!530604 m!775865))

(declare-fun m!775867 () Bool)

(assert (=> b!530604 m!775867))

(declare-fun m!775869 () Bool)

(assert (=> b!530604 m!775869))

(assert (=> b!530484 d!188299))

(declare-fun d!188301 () Bool)

(assert (=> d!188301 (= (inv!6325 (tag!1172 (h!10445 rules!3103))) (= (mod (str.len (value!30777 (tag!1172 (h!10445 rules!3103)))) 2) 0))))

(assert (=> b!530478 d!188301))

(declare-fun d!188303 () Bool)

(declare-fun res!224059 () Bool)

(declare-fun e!319354 () Bool)

(assert (=> d!188303 (=> (not res!224059) (not e!319354))))

(declare-fun semiInverseModEq!364 (Int Int) Bool)

(assert (=> d!188303 (= res!224059 (semiInverseModEq!364 (toChars!1612 (transformation!910 (h!10445 rules!3103))) (toValue!1753 (transformation!910 (h!10445 rules!3103)))))))

(assert (=> d!188303 (= (inv!6329 (transformation!910 (h!10445 rules!3103))) e!319354)))

(declare-fun b!530608 () Bool)

(declare-fun equivClasses!347 (Int Int) Bool)

(assert (=> b!530608 (= e!319354 (equivClasses!347 (toChars!1612 (transformation!910 (h!10445 rules!3103))) (toValue!1753 (transformation!910 (h!10445 rules!3103)))))))

(assert (= (and d!188303 res!224059) b!530608))

(declare-fun m!775871 () Bool)

(assert (=> d!188303 m!775871))

(declare-fun m!775873 () Bool)

(assert (=> b!530608 m!775873))

(assert (=> b!530478 d!188303))

(declare-fun d!188305 () Bool)

(assert (=> d!188305 true))

(declare-fun lt!218543 () Bool)

(declare-fun lambda!15396 () Int)

(declare-fun forall!1509 (List!5054 Int) Bool)

(assert (=> d!188305 (= lt!218543 (forall!1509 rules!3103 lambda!15396))))

(declare-fun e!319378 () Bool)

(assert (=> d!188305 (= lt!218543 e!319378)))

(declare-fun res!224095 () Bool)

(assert (=> d!188305 (=> res!224095 e!319378)))

(assert (=> d!188305 (= res!224095 (not (is-Cons!5044 rules!3103)))))

(assert (=> d!188305 (= (rulesValidInductive!311 thiss!22590 rules!3103) lt!218543)))

(declare-fun b!530656 () Bool)

(declare-fun e!319379 () Bool)

(assert (=> b!530656 (= e!319378 e!319379)))

(declare-fun res!224096 () Bool)

(assert (=> b!530656 (=> (not res!224096) (not e!319379))))

(declare-fun ruleValid!146 (LexerInterface!796 Rule!1620) Bool)

(assert (=> b!530656 (= res!224096 (ruleValid!146 thiss!22590 (h!10445 rules!3103)))))

(declare-fun b!530657 () Bool)

(assert (=> b!530657 (= e!319379 (rulesValidInductive!311 thiss!22590 (t!73717 rules!3103)))))

(assert (= (and d!188305 (not res!224095)) b!530656))

(assert (= (and b!530656 res!224096) b!530657))

(declare-fun m!775921 () Bool)

(assert (=> d!188305 m!775921))

(declare-fun m!775923 () Bool)

(assert (=> b!530656 m!775923))

(declare-fun m!775925 () Bool)

(assert (=> b!530657 m!775925))

(assert (=> b!530483 d!188305))

(declare-fun d!188311 () Bool)

(declare-fun res!224099 () Bool)

(declare-fun e!319382 () Bool)

(assert (=> d!188311 (=> (not res!224099) (not e!319382))))

(declare-fun rulesValid!329 (LexerInterface!796 List!5054) Bool)

(assert (=> d!188311 (= res!224099 (rulesValid!329 thiss!22590 rules!3103))))

(assert (=> d!188311 (= (rulesInvariant!759 thiss!22590 rules!3103) e!319382)))

(declare-fun b!530662 () Bool)

(declare-datatypes ((List!5058 0))(
  ( (Nil!5048) (Cons!5048 (h!10449 String!6415) (t!73731 List!5058)) )
))
(declare-fun noDuplicateTag!329 (LexerInterface!796 List!5054 List!5058) Bool)

(assert (=> b!530662 (= e!319382 (noDuplicateTag!329 thiss!22590 rules!3103 Nil!5048))))

(assert (= (and d!188311 res!224099) b!530662))

(declare-fun m!775927 () Bool)

(assert (=> d!188311 m!775927))

(declare-fun m!775929 () Bool)

(assert (=> b!530662 m!775929))

(assert (=> b!530482 d!188311))

(declare-fun d!188313 () Bool)

(assert (=> d!188313 (= (inv!6325 (tag!1172 (rule!1610 token!491))) (= (mod (str.len (value!30777 (tag!1172 (rule!1610 token!491)))) 2) 0))))

(assert (=> b!530487 d!188313))

(declare-fun d!188315 () Bool)

(declare-fun res!224100 () Bool)

(declare-fun e!319383 () Bool)

(assert (=> d!188315 (=> (not res!224100) (not e!319383))))

(assert (=> d!188315 (= res!224100 (semiInverseModEq!364 (toChars!1612 (transformation!910 (rule!1610 token!491))) (toValue!1753 (transformation!910 (rule!1610 token!491)))))))

(assert (=> d!188315 (= (inv!6329 (transformation!910 (rule!1610 token!491))) e!319383)))

(declare-fun b!530663 () Bool)

(assert (=> b!530663 (= e!319383 (equivClasses!347 (toChars!1612 (transformation!910 (rule!1610 token!491))) (toValue!1753 (transformation!910 (rule!1610 token!491)))))))

(assert (= (and d!188315 res!224100) b!530663))

(declare-fun m!775931 () Bool)

(assert (=> d!188315 m!775931))

(declare-fun m!775933 () Bool)

(assert (=> b!530663 m!775933))

(assert (=> b!530487 d!188315))

(declare-fun d!188317 () Bool)

(assert (=> d!188317 (= (isEmpty!3651 input!2705) (is-Nil!5043 input!2705))))

(assert (=> b!530481 d!188317))

(declare-fun d!188319 () Bool)

(assert (=> d!188319 (= (get!1880 lt!218493) (v!16064 lt!218493))))

(assert (=> b!530486 d!188319))

(declare-fun d!188321 () Bool)

(declare-fun list!2100 (Conc!1627) List!5053)

(assert (=> d!188321 (= (list!2098 (charsOf!539 token!491)) (list!2100 (c!101360 (charsOf!539 token!491))))))

(declare-fun bs!67125 () Bool)

(assert (= bs!67125 d!188321))

(declare-fun m!775935 () Bool)

(assert (=> bs!67125 m!775935))

(assert (=> b!530480 d!188321))

(declare-fun d!188323 () Bool)

(declare-fun lt!218546 () BalanceConc!3262)

(assert (=> d!188323 (= (list!2098 lt!218546) (originalCharacters!949 token!491))))

(declare-fun dynLambda!3058 (Int TokenValue!934) BalanceConc!3262)

(assert (=> d!188323 (= lt!218546 (dynLambda!3058 (toChars!1612 (transformation!910 (rule!1610 token!491))) (value!30803 token!491)))))

(assert (=> d!188323 (= (charsOf!539 token!491) lt!218546)))

(declare-fun b_lambda!20531 () Bool)

(assert (=> (not b_lambda!20531) (not d!188323)))

(declare-fun tb!47239 () Bool)

(declare-fun t!73726 () Bool)

(assert (=> (and b!530477 (= (toChars!1612 (transformation!910 (h!10445 rules!3103))) (toChars!1612 (transformation!910 (rule!1610 token!491)))) t!73726) tb!47239))

(declare-fun b!530668 () Bool)

(declare-fun e!319386 () Bool)

(declare-fun tp!169084 () Bool)

(declare-fun inv!6332 (Conc!1627) Bool)

(assert (=> b!530668 (= e!319386 (and (inv!6332 (c!101360 (dynLambda!3058 (toChars!1612 (transformation!910 (rule!1610 token!491))) (value!30803 token!491)))) tp!169084))))

(declare-fun result!52640 () Bool)

(declare-fun inv!6333 (BalanceConc!3262) Bool)

(assert (=> tb!47239 (= result!52640 (and (inv!6333 (dynLambda!3058 (toChars!1612 (transformation!910 (rule!1610 token!491))) (value!30803 token!491))) e!319386))))

(assert (= tb!47239 b!530668))

(declare-fun m!775937 () Bool)

(assert (=> b!530668 m!775937))

(declare-fun m!775939 () Bool)

(assert (=> tb!47239 m!775939))

(assert (=> d!188323 t!73726))

(declare-fun b_and!51811 () Bool)

(assert (= b_and!51789 (and (=> t!73726 result!52640) b_and!51811)))

(declare-fun t!73728 () Bool)

(declare-fun tb!47241 () Bool)

(assert (=> (and b!530476 (= (toChars!1612 (transformation!910 (rule!1610 token!491))) (toChars!1612 (transformation!910 (rule!1610 token!491)))) t!73728) tb!47241))

(declare-fun result!52644 () Bool)

(assert (= result!52644 result!52640))

(assert (=> d!188323 t!73728))

(declare-fun b_and!51813 () Bool)

(assert (= b_and!51793 (and (=> t!73728 result!52644) b_and!51813)))

(declare-fun m!775941 () Bool)

(assert (=> d!188323 m!775941))

(declare-fun m!775943 () Bool)

(assert (=> d!188323 m!775943))

(assert (=> b!530480 d!188323))

(declare-fun d!188325 () Bool)

(declare-fun res!224105 () Bool)

(declare-fun e!319389 () Bool)

(assert (=> d!188325 (=> (not res!224105) (not e!319389))))

(assert (=> d!188325 (= res!224105 (not (isEmpty!3651 (originalCharacters!949 token!491))))))

(assert (=> d!188325 (= (inv!6328 token!491) e!319389)))

(declare-fun b!530673 () Bool)

(declare-fun res!224106 () Bool)

(assert (=> b!530673 (=> (not res!224106) (not e!319389))))

(assert (=> b!530673 (= res!224106 (= (originalCharacters!949 token!491) (list!2098 (dynLambda!3058 (toChars!1612 (transformation!910 (rule!1610 token!491))) (value!30803 token!491)))))))

(declare-fun b!530674 () Bool)

(assert (=> b!530674 (= e!319389 (= (size!4094 token!491) (size!4096 (originalCharacters!949 token!491))))))

(assert (= (and d!188325 res!224105) b!530673))

(assert (= (and b!530673 res!224106) b!530674))

(declare-fun b_lambda!20533 () Bool)

(assert (=> (not b_lambda!20533) (not b!530673)))

(assert (=> b!530673 t!73726))

(declare-fun b_and!51815 () Bool)

(assert (= b_and!51811 (and (=> t!73726 result!52640) b_and!51815)))

(assert (=> b!530673 t!73728))

(declare-fun b_and!51817 () Bool)

(assert (= b_and!51813 (and (=> t!73728 result!52644) b_and!51817)))

(declare-fun m!775945 () Bool)

(assert (=> d!188325 m!775945))

(assert (=> b!530673 m!775943))

(assert (=> b!530673 m!775943))

(declare-fun m!775947 () Bool)

(assert (=> b!530673 m!775947))

(declare-fun m!775949 () Bool)

(assert (=> b!530674 m!775949))

(assert (=> start!48722 d!188325))

(declare-fun d!188327 () Bool)

(assert (=> d!188327 (= (isEmpty!3650 rules!3103) (is-Nil!5044 rules!3103))))

(assert (=> b!530474 d!188327))

(declare-fun b!530685 () Bool)

(declare-fun e!319398 () Bool)

(declare-fun e!319396 () Bool)

(assert (=> b!530685 (= e!319398 e!319396)))

(declare-fun c!101386 () Bool)

(assert (=> b!530685 (= c!101386 (is-IntegerValue!2803 (value!30803 token!491)))))

(declare-fun b!530686 () Bool)

(declare-fun res!224109 () Bool)

(declare-fun e!319397 () Bool)

(assert (=> b!530686 (=> res!224109 e!319397)))

(assert (=> b!530686 (= res!224109 (not (is-IntegerValue!2804 (value!30803 token!491))))))

(assert (=> b!530686 (= e!319396 e!319397)))

(declare-fun b!530687 () Bool)

(declare-fun inv!16 (TokenValue!934) Bool)

(assert (=> b!530687 (= e!319398 (inv!16 (value!30803 token!491)))))

(declare-fun d!188329 () Bool)

(declare-fun c!101387 () Bool)

(assert (=> d!188329 (= c!101387 (is-IntegerValue!2802 (value!30803 token!491)))))

(assert (=> d!188329 (= (inv!21 (value!30803 token!491)) e!319398)))

(declare-fun b!530688 () Bool)

(declare-fun inv!15 (TokenValue!934) Bool)

(assert (=> b!530688 (= e!319397 (inv!15 (value!30803 token!491)))))

(declare-fun b!530689 () Bool)

(declare-fun inv!17 (TokenValue!934) Bool)

(assert (=> b!530689 (= e!319396 (inv!17 (value!30803 token!491)))))

(assert (= (and d!188329 c!101387) b!530687))

(assert (= (and d!188329 (not c!101387)) b!530685))

(assert (= (and b!530685 c!101386) b!530689))

(assert (= (and b!530685 (not c!101386)) b!530686))

(assert (= (and b!530686 (not res!224109)) b!530688))

(declare-fun m!775951 () Bool)

(assert (=> b!530687 m!775951))

(declare-fun m!775953 () Bool)

(assert (=> b!530688 m!775953))

(declare-fun m!775955 () Bool)

(assert (=> b!530689 m!775955))

(assert (=> b!530479 d!188329))

(declare-fun b!530700 () Bool)

(declare-fun e!319401 () Bool)

(assert (=> b!530700 (= e!319401 tp_is_empty!2843)))

(declare-fun b!530703 () Bool)

(declare-fun tp!169096 () Bool)

(declare-fun tp!169098 () Bool)

(assert (=> b!530703 (= e!319401 (and tp!169096 tp!169098))))

(declare-fun b!530701 () Bool)

(declare-fun tp!169095 () Bool)

(declare-fun tp!169099 () Bool)

(assert (=> b!530701 (= e!319401 (and tp!169095 tp!169099))))

(assert (=> b!530478 (= tp!169044 e!319401)))

(declare-fun b!530702 () Bool)

(declare-fun tp!169097 () Bool)

(assert (=> b!530702 (= e!319401 tp!169097)))

(assert (= (and b!530478 (is-ElementMatch!1244 (regex!910 (h!10445 rules!3103)))) b!530700))

(assert (= (and b!530478 (is-Concat!2178 (regex!910 (h!10445 rules!3103)))) b!530701))

(assert (= (and b!530478 (is-Star!1244 (regex!910 (h!10445 rules!3103)))) b!530702))

(assert (= (and b!530478 (is-Union!1244 (regex!910 (h!10445 rules!3103)))) b!530703))

(declare-fun b!530708 () Bool)

(declare-fun e!319404 () Bool)

(declare-fun tp!169102 () Bool)

(assert (=> b!530708 (= e!319404 (and tp_is_empty!2843 tp!169102))))

(assert (=> b!530488 (= tp!169047 e!319404)))

(assert (= (and b!530488 (is-Cons!5043 (t!73716 input!2705))) b!530708))

(declare-fun b!530709 () Bool)

(declare-fun e!319405 () Bool)

(assert (=> b!530709 (= e!319405 tp_is_empty!2843)))

(declare-fun b!530712 () Bool)

(declare-fun tp!169104 () Bool)

(declare-fun tp!169106 () Bool)

(assert (=> b!530712 (= e!319405 (and tp!169104 tp!169106))))

(declare-fun b!530710 () Bool)

(declare-fun tp!169103 () Bool)

(declare-fun tp!169107 () Bool)

(assert (=> b!530710 (= e!319405 (and tp!169103 tp!169107))))

(assert (=> b!530487 (= tp!169039 e!319405)))

(declare-fun b!530711 () Bool)

(declare-fun tp!169105 () Bool)

(assert (=> b!530711 (= e!319405 tp!169105)))

(assert (= (and b!530487 (is-ElementMatch!1244 (regex!910 (rule!1610 token!491)))) b!530709))

(assert (= (and b!530487 (is-Concat!2178 (regex!910 (rule!1610 token!491)))) b!530710))

(assert (= (and b!530487 (is-Star!1244 (regex!910 (rule!1610 token!491)))) b!530711))

(assert (= (and b!530487 (is-Union!1244 (regex!910 (rule!1610 token!491)))) b!530712))

(declare-fun b!530723 () Bool)

(declare-fun b_free!14257 () Bool)

(declare-fun b_next!14273 () Bool)

(assert (=> b!530723 (= b_free!14257 (not b_next!14273))))

(declare-fun tp!169119 () Bool)

(declare-fun b_and!51819 () Bool)

(assert (=> b!530723 (= tp!169119 b_and!51819)))

(declare-fun b_free!14259 () Bool)

(declare-fun b_next!14275 () Bool)

(assert (=> b!530723 (= b_free!14259 (not b_next!14275))))

(declare-fun t!73730 () Bool)

(declare-fun tb!47243 () Bool)

(assert (=> (and b!530723 (= (toChars!1612 (transformation!910 (h!10445 (t!73717 rules!3103)))) (toChars!1612 (transformation!910 (rule!1610 token!491)))) t!73730) tb!47243))

(declare-fun result!52652 () Bool)

(assert (= result!52652 result!52640))

(assert (=> d!188323 t!73730))

(assert (=> b!530673 t!73730))

(declare-fun tp!169116 () Bool)

(declare-fun b_and!51821 () Bool)

(assert (=> b!530723 (= tp!169116 (and (=> t!73730 result!52652) b_and!51821))))

(declare-fun e!319417 () Bool)

(assert (=> b!530723 (= e!319417 (and tp!169119 tp!169116))))

(declare-fun b!530722 () Bool)

(declare-fun e!319416 () Bool)

(declare-fun tp!169118 () Bool)

(assert (=> b!530722 (= e!319416 (and tp!169118 (inv!6325 (tag!1172 (h!10445 (t!73717 rules!3103)))) (inv!6329 (transformation!910 (h!10445 (t!73717 rules!3103)))) e!319417))))

(declare-fun b!530721 () Bool)

(declare-fun e!319414 () Bool)

(declare-fun tp!169117 () Bool)

(assert (=> b!530721 (= e!319414 (and e!319416 tp!169117))))

(assert (=> b!530475 (= tp!169040 e!319414)))

(assert (= b!530722 b!530723))

(assert (= b!530721 b!530722))

(assert (= (and b!530475 (is-Cons!5044 (t!73717 rules!3103))) b!530721))

(declare-fun m!775957 () Bool)

(assert (=> b!530722 m!775957))

(declare-fun m!775959 () Bool)

(assert (=> b!530722 m!775959))

(declare-fun b!530724 () Bool)

(declare-fun e!319418 () Bool)

(declare-fun tp!169120 () Bool)

(assert (=> b!530724 (= e!319418 (and tp_is_empty!2843 tp!169120))))

(assert (=> b!530485 (= tp!169041 e!319418)))

(assert (= (and b!530485 (is-Cons!5043 (t!73716 suffix!1342))) b!530724))

(declare-fun b!530725 () Bool)

(declare-fun e!319419 () Bool)

(declare-fun tp!169121 () Bool)

(assert (=> b!530725 (= e!319419 (and tp_is_empty!2843 tp!169121))))

(assert (=> b!530479 (= tp!169043 e!319419)))

(assert (= (and b!530479 (is-Cons!5043 (originalCharacters!949 token!491))) b!530725))

(declare-fun b_lambda!20535 () Bool)

(assert (= b_lambda!20531 (or (and b!530477 b_free!14243 (= (toChars!1612 (transformation!910 (h!10445 rules!3103))) (toChars!1612 (transformation!910 (rule!1610 token!491))))) (and b!530476 b_free!14247) (and b!530723 b_free!14259 (= (toChars!1612 (transformation!910 (h!10445 (t!73717 rules!3103)))) (toChars!1612 (transformation!910 (rule!1610 token!491))))) b_lambda!20535)))

(declare-fun b_lambda!20537 () Bool)

(assert (= b_lambda!20533 (or (and b!530477 b_free!14243 (= (toChars!1612 (transformation!910 (h!10445 rules!3103))) (toChars!1612 (transformation!910 (rule!1610 token!491))))) (and b!530476 b_free!14247) (and b!530723 b_free!14259 (= (toChars!1612 (transformation!910 (h!10445 (t!73717 rules!3103)))) (toChars!1612 (transformation!910 (rule!1610 token!491))))) b_lambda!20537)))

(push 1)

(assert (not b!530722))

(assert (not b!530593))

(assert b_and!51791)

(assert (not b_next!14275))

(assert (not b!530708))

(assert (not b!530702))

(assert (not d!188321))

(assert (not bm!38143))

(assert (not b!530608))

(assert (not d!188305))

(assert (not b_next!14257))

(assert b_and!51819)

(assert b_and!51817)

(assert (not b!530701))

(assert (not b!530668))

(assert b_and!51821)

(assert b_and!51815)

(assert (not b!530712))

(assert (not b!530673))

(assert (not d!188315))

(assert (not d!188271))

(assert (not b!530657))

(assert (not b!530588))

(assert (not b_next!14261))

(assert (not b!530662))

(assert (not b!530689))

(assert (not b_next!14273))

(assert (not b_next!14259))

(assert (not b!530710))

(assert (not d!188311))

(assert (not b!530591))

(assert (not d!188299))

(assert (not d!188303))

(assert (not b!530587))

(assert (not b!530711))

(assert (not b_lambda!20535))

(assert (not d!188325))

(assert (not b!530703))

(assert (not b!530586))

(assert (not b_next!14263))

(assert (not tb!47239))

(assert (not b!530589))

(assert (not b!530663))

(assert (not d!188323))

(assert (not b!530725))

(assert (not d!188269))

(assert (not b!530688))

(assert (not b_lambda!20537))

(assert (not b!530603))

(assert (not b!530585))

(assert tp_is_empty!2843)

(assert (not b!530604))

(assert (not b!530687))

(assert (not b!530674))

(assert (not b!530724))

(assert b_and!51787)

(assert (not b!530590))

(assert (not b!530656))

(assert (not b!530721))

(check-sat)

(pop 1)

(push 1)

(assert b_and!51821)

(assert b_and!51815)

(assert (not b_next!14261))

(assert (not b_next!14273))

(assert (not b_next!14259))

(assert b_and!51791)

(assert (not b_next!14275))

(assert (not b_next!14263))

(assert (not b_next!14257))

(assert b_and!51787)

(assert b_and!51819)

(assert b_and!51817)

(check-sat)

(pop 1)

