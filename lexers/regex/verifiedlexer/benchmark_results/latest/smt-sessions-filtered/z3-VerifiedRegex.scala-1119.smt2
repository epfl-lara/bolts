; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58412 () Bool)

(assert start!58412)

(declare-fun b!610888 () Bool)

(declare-fun b_free!17421 () Bool)

(declare-fun b_next!17437 () Bool)

(assert (=> b!610888 (= b_free!17421 (not b_next!17437))))

(declare-fun tp!189200 () Bool)

(declare-fun b_and!60463 () Bool)

(assert (=> b!610888 (= tp!189200 b_and!60463)))

(declare-fun b_free!17423 () Bool)

(declare-fun b_next!17439 () Bool)

(assert (=> b!610888 (= b_free!17423 (not b_next!17439))))

(declare-fun tp!189196 () Bool)

(declare-fun b_and!60465 () Bool)

(assert (=> b!610888 (= tp!189196 b_and!60465)))

(declare-fun b!610925 () Bool)

(declare-fun b_free!17425 () Bool)

(declare-fun b_next!17441 () Bool)

(assert (=> b!610925 (= b_free!17425 (not b_next!17441))))

(declare-fun tp!189199 () Bool)

(declare-fun b_and!60467 () Bool)

(assert (=> b!610925 (= tp!189199 b_and!60467)))

(declare-fun b_free!17427 () Bool)

(declare-fun b_next!17443 () Bool)

(assert (=> b!610925 (= b_free!17427 (not b_next!17443))))

(declare-fun tp!189197 () Bool)

(declare-fun b_and!60469 () Bool)

(assert (=> b!610925 (= tp!189197 b_and!60469)))

(declare-fun b!610885 () Bool)

(declare-fun res!265470 () Bool)

(declare-fun e!370278 () Bool)

(assert (=> b!610885 (=> res!265470 e!370278)))

(declare-datatypes ((C!4040 0))(
  ( (C!4041 (val!2246 Int)) )
))
(declare-datatypes ((Regex!1559 0))(
  ( (ElementMatch!1559 (c!112917 C!4040)) (Concat!2808 (regOne!3630 Regex!1559) (regTwo!3630 Regex!1559)) (EmptyExpr!1559) (Star!1559 (reg!1888 Regex!1559)) (EmptyLang!1559) (Union!1559 (regOne!3631 Regex!1559) (regTwo!3631 Regex!1559)) )
))
(declare-datatypes ((List!6123 0))(
  ( (Nil!6113) (Cons!6113 (h!11514 (_ BitVec 16)) (t!80904 List!6123)) )
))
(declare-datatypes ((List!6124 0))(
  ( (Nil!6114) (Cons!6114 (h!11515 C!4040) (t!80905 List!6124)) )
))
(declare-datatypes ((IArray!3885 0))(
  ( (IArray!3886 (innerList!2000 List!6124)) )
))
(declare-datatypes ((Conc!1942 0))(
  ( (Node!1942 (left!4895 Conc!1942) (right!5225 Conc!1942) (csize!4114 Int) (cheight!2153 Int)) (Leaf!3062 (xs!4579 IArray!3885) (csize!4115 Int)) (Empty!1942) )
))
(declare-datatypes ((BalanceConc!3892 0))(
  ( (BalanceConc!3893 (c!112918 Conc!1942)) )
))
(declare-datatypes ((TokenValue!1249 0))(
  ( (FloatLiteralValue!2498 (text!9188 List!6123)) (TokenValueExt!1248 (__x!4396 Int)) (Broken!6245 (value!39753 List!6123)) (Object!1258) (End!1249) (Def!1249) (Underscore!1249) (Match!1249) (Else!1249) (Error!1249) (Case!1249) (If!1249) (Extends!1249) (Abstract!1249) (Class!1249) (Val!1249) (DelimiterValue!2498 (del!1309 List!6123)) (KeywordValue!1255 (value!39754 List!6123)) (CommentValue!2498 (value!39755 List!6123)) (WhitespaceValue!2498 (value!39756 List!6123)) (IndentationValue!1249 (value!39757 List!6123)) (String!7988) (Int32!1249) (Broken!6246 (value!39758 List!6123)) (Boolean!1250) (Unit!11181) (OperatorValue!1252 (op!1309 List!6123)) (IdentifierValue!2498 (value!39759 List!6123)) (IdentifierValue!2499 (value!39760 List!6123)) (WhitespaceValue!2499 (value!39761 List!6123)) (True!2498) (False!2498) (Broken!6247 (value!39762 List!6123)) (Broken!6248 (value!39763 List!6123)) (True!2499) (RightBrace!1249) (RightBracket!1249) (Colon!1249) (Null!1249) (Comma!1249) (LeftBracket!1249) (False!2499) (LeftBrace!1249) (ImaginaryLiteralValue!1249 (text!9189 List!6123)) (StringLiteralValue!3747 (value!39764 List!6123)) (EOFValue!1249 (value!39765 List!6123)) (IdentValue!1249 (value!39766 List!6123)) (DelimiterValue!2499 (value!39767 List!6123)) (DedentValue!1249 (value!39768 List!6123)) (NewLineValue!1249 (value!39769 List!6123)) (IntegerValue!3747 (value!39770 (_ BitVec 32)) (text!9190 List!6123)) (IntegerValue!3748 (value!39771 Int) (text!9191 List!6123)) (Times!1249) (Or!1249) (Equal!1249) (Minus!1249) (Broken!6249 (value!39772 List!6123)) (And!1249) (Div!1249) (LessEqual!1249) (Mod!1249) (Concat!2809) (Not!1249) (Plus!1249) (SpaceValue!1249 (value!39773 List!6123)) (IntegerValue!3749 (value!39774 Int) (text!9192 List!6123)) (StringLiteralValue!3748 (text!9193 List!6123)) (FloatLiteralValue!2499 (text!9194 List!6123)) (BytesLiteralValue!1249 (value!39775 List!6123)) (CommentValue!2499 (value!39776 List!6123)) (StringLiteralValue!3749 (value!39777 List!6123)) (ErrorTokenValue!1249 (msg!1310 List!6123)) )
))
(declare-datatypes ((String!7989 0))(
  ( (String!7990 (value!39778 String)) )
))
(declare-datatypes ((TokenValueInjection!2266 0))(
  ( (TokenValueInjection!2267 (toValue!2132 Int) (toChars!1991 Int)) )
))
(declare-datatypes ((Rule!2250 0))(
  ( (Rule!2251 (regex!1225 Regex!1559) (tag!1487 String!7989) (isSeparator!1225 Bool) (transformation!1225 TokenValueInjection!2266)) )
))
(declare-datatypes ((Token!2186 0))(
  ( (Token!2187 (value!39779 TokenValue!1249) (rule!2015 Rule!2250) (size!4807 Int) (originalCharacters!1264 List!6124)) )
))
(declare-datatypes ((tuple2!6982 0))(
  ( (tuple2!6983 (_1!3755 Token!2186) (_2!3755 List!6124)) )
))
(declare-datatypes ((Option!1576 0))(
  ( (None!1575) (Some!1575 (v!16484 tuple2!6982)) )
))
(declare-fun lt!261554 () Option!1576)

(declare-fun isEmpty!4413 (List!6124) Bool)

(assert (=> b!610885 (= res!265470 (not (isEmpty!4413 (_2!3755 (v!16484 lt!261554)))))))

(declare-fun b!610887 () Bool)

(declare-fun res!265467 () Bool)

(declare-fun e!370264 () Bool)

(assert (=> b!610887 (=> (not res!265467) (not e!370264))))

(declare-fun input!2705 () List!6124)

(assert (=> b!610887 (= res!265467 (not (isEmpty!4413 input!2705)))))

(declare-fun e!370282 () Bool)

(assert (=> b!610888 (= e!370282 (and tp!189200 tp!189196))))

(declare-fun b!610889 () Bool)

(declare-fun res!265490 () Bool)

(assert (=> b!610889 (=> res!265490 e!370278)))

(declare-fun token!491 () Token!2186)

(assert (=> b!610889 (= res!265490 (= (rule!2015 (_1!3755 (v!16484 lt!261554))) (rule!2015 token!491)))))

(declare-fun e!370261 () Bool)

(declare-fun e!370263 () Bool)

(declare-fun tp!189195 () Bool)

(declare-fun b!610890 () Bool)

(declare-fun inv!21 (TokenValue!1249) Bool)

(assert (=> b!610890 (= e!370263 (and (inv!21 (value!39779 token!491)) e!370261 tp!189195))))

(declare-fun b!610891 () Bool)

(declare-fun e!370271 () Bool)

(declare-fun e!370266 () Bool)

(assert (=> b!610891 (= e!370271 e!370266)))

(declare-fun res!265480 () Bool)

(assert (=> b!610891 (=> res!265480 e!370266)))

(declare-fun lt!261541 () Int)

(declare-fun lt!261536 () Int)

(assert (=> b!610891 (= res!265480 (>= lt!261541 lt!261536))))

(declare-fun b!610892 () Bool)

(declare-fun res!265484 () Bool)

(declare-fun e!370284 () Bool)

(assert (=> b!610892 (=> (not res!265484) (not e!370284))))

(declare-fun get!2352 (Option!1576) tuple2!6982)

(assert (=> b!610892 (= res!265484 (= (_1!3755 (get!2352 lt!261554)) (_1!3755 (v!16484 lt!261554))))))

(declare-fun b!610893 () Bool)

(declare-fun res!265465 () Bool)

(assert (=> b!610893 (=> res!265465 e!370278)))

(declare-datatypes ((List!6125 0))(
  ( (Nil!6115) (Cons!6115 (h!11516 Rule!2250) (t!80906 List!6125)) )
))
(declare-fun rules!3103 () List!6125)

(declare-fun contains!1441 (List!6125 Rule!2250) Bool)

(assert (=> b!610893 (= res!265465 (not (contains!1441 rules!3103 (rule!2015 token!491))))))

(declare-fun b!610894 () Bool)

(declare-fun res!265473 () Bool)

(assert (=> b!610894 (=> res!265473 e!370278)))

(declare-fun lt!261527 () Option!1576)

(declare-fun lt!261534 () List!6124)

(declare-fun apply!1478 (TokenValueInjection!2266 BalanceConc!3892) TokenValue!1249)

(declare-fun seqFromList!1401 (List!6124) BalanceConc!3892)

(declare-fun size!4808 (List!6124) Int)

(declare-fun getSuffix!370 (List!6124 List!6124) List!6124)

(assert (=> b!610894 (= res!265473 (not (= lt!261527 (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 input!2705)) (rule!2015 token!491) (size!4808 input!2705) input!2705) (getSuffix!370 lt!261534 input!2705))))))))

(declare-fun tp!189203 () Bool)

(declare-fun e!370269 () Bool)

(declare-fun b!610895 () Bool)

(declare-fun inv!7775 (String!7989) Bool)

(declare-fun inv!7778 (TokenValueInjection!2266) Bool)

(assert (=> b!610895 (= e!370269 (and tp!189203 (inv!7775 (tag!1487 (h!11516 rules!3103))) (inv!7778 (transformation!1225 (h!11516 rules!3103))) e!370282))))

(declare-fun b!610886 () Bool)

(declare-datatypes ((Unit!11182 0))(
  ( (Unit!11183) )
))
(declare-fun e!370268 () Unit!11182)

(declare-fun Unit!11184 () Unit!11182)

(assert (=> b!610886 (= e!370268 Unit!11184)))

(assert (=> b!610886 false))

(declare-fun res!265471 () Bool)

(assert (=> start!58412 (=> (not res!265471) (not e!370264))))

(declare-datatypes ((LexerInterface!1111 0))(
  ( (LexerInterfaceExt!1108 (__x!4397 Int)) (Lexer!1109) )
))
(declare-fun thiss!22590 () LexerInterface!1111)

(get-info :version)

(assert (=> start!58412 (= res!265471 ((_ is Lexer!1109) thiss!22590))))

(assert (=> start!58412 e!370264))

(declare-fun e!370281 () Bool)

(assert (=> start!58412 e!370281))

(declare-fun e!370262 () Bool)

(assert (=> start!58412 e!370262))

(declare-fun inv!7779 (Token!2186) Bool)

(assert (=> start!58412 (and (inv!7779 token!491) e!370263)))

(assert (=> start!58412 true))

(declare-fun e!370279 () Bool)

(assert (=> start!58412 e!370279))

(declare-fun b!610896 () Bool)

(declare-fun e!370274 () Bool)

(declare-fun e!370260 () Bool)

(assert (=> b!610896 (= e!370274 e!370260)))

(declare-fun res!265469 () Bool)

(assert (=> b!610896 (=> (not res!265469) (not e!370260))))

(declare-fun lt!261533 () tuple2!6982)

(declare-fun suffix!1342 () List!6124)

(assert (=> b!610896 (= res!265469 (and (= (_1!3755 lt!261533) token!491) (= (_2!3755 lt!261533) suffix!1342)))))

(assert (=> b!610896 (= lt!261533 (get!2352 lt!261527))))

(declare-fun b!610897 () Bool)

(assert (=> b!610897 (= e!370278 false)))

(declare-fun matchR!662 (Regex!1559 List!6124) Bool)

(assert (=> b!610897 (not (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705))))

(declare-fun lt!261526 () Unit!11182)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!28 (LexerInterface!1111 List!6125 Rule!2250 List!6124 List!6124 Rule!2250) Unit!11182)

(assert (=> b!610897 (= lt!261526 (lemmaMaxPrefNoSmallerRuleMatches!28 thiss!22590 rules!3103 (rule!2015 token!491) input!2705 lt!261534 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun lt!261520 () List!6124)

(declare-fun b!610898 () Bool)

(declare-fun lt!261540 () TokenValue!1249)

(declare-fun lt!261545 () List!6124)

(declare-fun e!370270 () Bool)

(assert (=> b!610898 (= e!370270 (and (= (size!4807 token!491) lt!261536) (= (originalCharacters!1264 token!491) lt!261545) (= (tuple2!6983 token!491 suffix!1342) (tuple2!6983 (Token!2187 lt!261540 (rule!2015 token!491) lt!261536 lt!261545) lt!261520))))))

(declare-fun b!610899 () Bool)

(declare-fun res!265482 () Bool)

(assert (=> b!610899 (=> (not res!265482) (not e!370264))))

(declare-fun rulesInvariant!1074 (LexerInterface!1111 List!6125) Bool)

(assert (=> b!610899 (= res!265482 (rulesInvariant!1074 thiss!22590 rules!3103))))

(declare-fun b!610900 () Bool)

(declare-fun res!265468 () Bool)

(assert (=> b!610900 (=> res!265468 e!370278)))

(declare-fun getIndex!56 (List!6125 Rule!2250) Int)

(assert (=> b!610900 (= res!265468 (>= (getIndex!56 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (getIndex!56 rules!3103 (rule!2015 token!491))))))

(declare-fun b!610901 () Bool)

(declare-fun tp_is_empty!3473 () Bool)

(declare-fun tp!189204 () Bool)

(assert (=> b!610901 (= e!370281 (and tp_is_empty!3473 tp!189204))))

(declare-fun b!610902 () Bool)

(declare-fun res!265472 () Bool)

(assert (=> b!610902 (=> res!265472 e!370278)))

(declare-fun lt!261518 () List!6124)

(assert (=> b!610902 (= res!265472 (or (not (= lt!261518 lt!261545)) (not (= (originalCharacters!1264 (_1!3755 (v!16484 lt!261554))) (originalCharacters!1264 token!491)))))))

(declare-fun b!610903 () Bool)

(declare-fun res!265475 () Bool)

(assert (=> b!610903 (=> res!265475 e!370278)))

(assert (=> b!610903 (= res!265475 (not (contains!1441 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!610904 () Bool)

(declare-fun e!370259 () Bool)

(assert (=> b!610904 (= e!370259 e!370274)))

(declare-fun res!265479 () Bool)

(assert (=> b!610904 (=> (not res!265479) (not e!370274))))

(declare-fun isDefined!1387 (Option!1576) Bool)

(assert (=> b!610904 (= res!265479 (isDefined!1387 lt!261527))))

(declare-fun maxPrefix!809 (LexerInterface!1111 List!6125 List!6124) Option!1576)

(assert (=> b!610904 (= lt!261527 (maxPrefix!809 thiss!22590 rules!3103 lt!261534))))

(declare-fun ++!1713 (List!6124 List!6124) List!6124)

(assert (=> b!610904 (= lt!261534 (++!1713 input!2705 suffix!1342))))

(declare-fun b!610905 () Bool)

(declare-fun lt!261552 () List!6124)

(assert (=> b!610905 (= e!370284 (= lt!261552 (_2!3755 (v!16484 lt!261554))))))

(declare-fun b!610906 () Bool)

(declare-fun res!265485 () Bool)

(declare-fun e!370277 () Bool)

(assert (=> b!610906 (=> (not res!265485) (not e!370277))))

(assert (=> b!610906 (= res!265485 (= (size!4807 (_1!3755 (v!16484 lt!261554))) (size!4808 (originalCharacters!1264 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!610907 () Bool)

(declare-fun e!370280 () Unit!11182)

(declare-fun Unit!11185 () Unit!11182)

(assert (=> b!610907 (= e!370280 Unit!11185)))

(declare-fun e!370283 () Bool)

(declare-fun tp!189198 () Bool)

(declare-fun b!610908 () Bool)

(assert (=> b!610908 (= e!370261 (and tp!189198 (inv!7775 (tag!1487 (rule!2015 token!491))) (inv!7778 (transformation!1225 (rule!2015 token!491))) e!370283))))

(declare-fun b!610909 () Bool)

(declare-fun res!265466 () Bool)

(assert (=> b!610909 (=> (not res!265466) (not e!370264))))

(declare-fun isEmpty!4414 (List!6125) Bool)

(assert (=> b!610909 (= res!265466 (not (isEmpty!4414 rules!3103)))))

(declare-fun b!610910 () Bool)

(declare-fun e!370273 () Bool)

(assert (=> b!610910 (= e!370260 e!370273)))

(declare-fun res!265476 () Bool)

(assert (=> b!610910 (=> (not res!265476) (not e!370273))))

(assert (=> b!610910 (= res!265476 ((_ is Some!1575) lt!261554))))

(assert (=> b!610910 (= lt!261554 (maxPrefix!809 thiss!22590 rules!3103 input!2705))))

(declare-fun b!610911 () Bool)

(assert (=> b!610911 (= e!370266 e!370284)))

(declare-fun res!265487 () Bool)

(assert (=> b!610911 (=> (not res!265487) (not e!370284))))

(assert (=> b!610911 (= res!265487 (isDefined!1387 lt!261554))))

(declare-fun b!610912 () Bool)

(declare-fun res!265481 () Bool)

(assert (=> b!610912 (=> res!265481 e!370278)))

(assert (=> b!610912 (= res!265481 (not (= lt!261527 (Some!1575 (tuple2!6983 token!491 suffix!1342)))))))

(declare-fun b!610913 () Bool)

(declare-fun tp!189201 () Bool)

(assert (=> b!610913 (= e!370279 (and tp_is_empty!3473 tp!189201))))

(declare-fun b!610914 () Bool)

(declare-fun res!265489 () Bool)

(assert (=> b!610914 (=> (not res!265489) (not e!370270))))

(assert (=> b!610914 (= res!265489 (= (size!4807 token!491) (size!4808 (originalCharacters!1264 token!491))))))

(declare-fun b!610915 () Bool)

(declare-fun e!370265 () Bool)

(assert (=> b!610915 (= e!370265 e!370278)))

(declare-fun res!265488 () Bool)

(assert (=> b!610915 (=> res!265488 e!370278)))

(declare-fun lt!261551 () List!6124)

(assert (=> b!610915 (= res!265488 (or (not (= lt!261541 lt!261536)) (not (= lt!261551 input!2705)) (not (= lt!261551 lt!261545))))))

(declare-fun lt!261550 () Unit!11182)

(declare-fun lt!261519 () BalanceConc!3892)

(declare-fun lemmaSemiInverse!255 (TokenValueInjection!2266 BalanceConc!3892) Unit!11182)

(assert (=> b!610915 (= lt!261550 (lemmaSemiInverse!255 (transformation!1225 (rule!2015 token!491)) lt!261519))))

(declare-fun lt!261548 () Unit!11182)

(declare-fun lt!261539 () BalanceConc!3892)

(assert (=> b!610915 (= lt!261548 (lemmaSemiInverse!255 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261539))))

(declare-fun lt!261528 () Unit!11182)

(assert (=> b!610915 (= lt!261528 e!370280)))

(declare-fun c!112915 () Bool)

(assert (=> b!610915 (= c!112915 (< lt!261541 lt!261536))))

(assert (=> b!610915 e!370271))

(declare-fun res!265486 () Bool)

(assert (=> b!610915 (=> (not res!265486) (not e!370271))))

(declare-fun maxPrefixOneRule!472 (LexerInterface!1111 Rule!2250 List!6124) Option!1576)

(assert (=> b!610915 (= res!265486 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 token!491) lt!261534) (Some!1575 (tuple2!6983 (Token!2187 lt!261540 (rule!2015 token!491) lt!261536 lt!261545) suffix!1342))))))

(declare-fun lt!261535 () Unit!11182)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!178 (LexerInterface!1111 List!6125 List!6124 List!6124 List!6124 Rule!2250) Unit!11182)

(assert (=> b!610915 (= lt!261535 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!178 thiss!22590 rules!3103 lt!261545 lt!261534 suffix!1342 (rule!2015 token!491)))))

(declare-fun lt!261546 () TokenValue!1249)

(assert (=> b!610915 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) input!2705) (Some!1575 (tuple2!6983 (Token!2187 lt!261546 (rule!2015 (_1!3755 (v!16484 lt!261554))) lt!261541 lt!261518) (_2!3755 (v!16484 lt!261554)))))))

(declare-fun lt!261517 () Unit!11182)

(assert (=> b!610915 (= lt!261517 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!178 thiss!22590 rules!3103 lt!261518 input!2705 (_2!3755 (v!16484 lt!261554)) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> b!610915 e!370270))

(declare-fun res!265474 () Bool)

(assert (=> b!610915 (=> (not res!265474) (not e!370270))))

(assert (=> b!610915 (= res!265474 (= (value!39779 token!491) lt!261540))))

(assert (=> b!610915 (= lt!261540 (apply!1478 (transformation!1225 (rule!2015 token!491)) lt!261519))))

(assert (=> b!610915 (= lt!261519 (seqFromList!1401 lt!261545))))

(assert (=> b!610915 (= suffix!1342 lt!261520)))

(declare-fun lt!261532 () Unit!11182)

(declare-fun lemmaSamePrefixThenSameSuffix!566 (List!6124 List!6124 List!6124 List!6124 List!6124) Unit!11182)

(assert (=> b!610915 (= lt!261532 (lemmaSamePrefixThenSameSuffix!566 lt!261545 suffix!1342 lt!261545 lt!261520 lt!261534))))

(assert (=> b!610915 (= lt!261520 (getSuffix!370 lt!261534 lt!261545))))

(declare-fun b!610916 () Bool)

(declare-fun e!370285 () Bool)

(assert (=> b!610916 (= e!370273 e!370285)))

(declare-fun res!265478 () Bool)

(assert (=> b!610916 (=> (not res!265478) (not e!370285))))

(declare-fun lt!261553 () List!6124)

(assert (=> b!610916 (= res!265478 (= lt!261553 lt!261534))))

(assert (=> b!610916 (= lt!261553 (++!1713 lt!261545 suffix!1342))))

(declare-fun b!610917 () Bool)

(assert (=> b!610917 (= e!370264 e!370259)))

(declare-fun res!265483 () Bool)

(assert (=> b!610917 (=> (not res!265483) (not e!370259))))

(assert (=> b!610917 (= res!265483 (= lt!261545 input!2705))))

(declare-fun list!2572 (BalanceConc!3892) List!6124)

(declare-fun charsOf!854 (Token!2186) BalanceConc!3892)

(assert (=> b!610917 (= lt!261545 (list!2572 (charsOf!854 token!491)))))

(declare-fun b!610918 () Bool)

(declare-fun Unit!11186 () Unit!11182)

(assert (=> b!610918 (= e!370268 Unit!11186)))

(declare-fun b!610919 () Bool)

(declare-fun tp!189202 () Bool)

(assert (=> b!610919 (= e!370262 (and e!370269 tp!189202))))

(declare-fun b!610920 () Bool)

(assert (=> b!610920 (= e!370285 (not e!370265))))

(declare-fun res!265492 () Bool)

(assert (=> b!610920 (=> res!265492 e!370265)))

(declare-fun isPrefix!853 (List!6124 List!6124) Bool)

(assert (=> b!610920 (= res!265492 (not (isPrefix!853 input!2705 lt!261553)))))

(assert (=> b!610920 (isPrefix!853 lt!261545 lt!261553)))

(declare-fun lt!261525 () Unit!11182)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!698 (List!6124 List!6124) Unit!11182)

(assert (=> b!610920 (= lt!261525 (lemmaConcatTwoListThenFirstIsPrefix!698 lt!261545 suffix!1342))))

(assert (=> b!610920 (isPrefix!853 input!2705 lt!261534)))

(declare-fun lt!261523 () Unit!11182)

(assert (=> b!610920 (= lt!261523 (lemmaConcatTwoListThenFirstIsPrefix!698 input!2705 suffix!1342))))

(assert (=> b!610920 e!370277))

(declare-fun res!265491 () Bool)

(assert (=> b!610920 (=> (not res!265491) (not e!370277))))

(assert (=> b!610920 (= res!265491 (= (value!39779 (_1!3755 (v!16484 lt!261554))) lt!261546))))

(assert (=> b!610920 (= lt!261546 (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261539))))

(assert (=> b!610920 (= lt!261539 (seqFromList!1401 lt!261518))))

(declare-fun lt!261530 () Unit!11182)

(declare-fun lemmaInv!333 (TokenValueInjection!2266) Unit!11182)

(assert (=> b!610920 (= lt!261530 (lemmaInv!333 (transformation!1225 (rule!2015 token!491))))))

(declare-fun lt!261547 () Unit!11182)

(assert (=> b!610920 (= lt!261547 (lemmaInv!333 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun ruleValid!423 (LexerInterface!1111 Rule!2250) Bool)

(assert (=> b!610920 (ruleValid!423 thiss!22590 (rule!2015 token!491))))

(declare-fun lt!261522 () Unit!11182)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!270 (LexerInterface!1111 Rule!2250 List!6125) Unit!11182)

(assert (=> b!610920 (= lt!261522 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!270 thiss!22590 (rule!2015 token!491) rules!3103))))

(assert (=> b!610920 (ruleValid!423 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))))))

(declare-fun lt!261516 () Unit!11182)

(assert (=> b!610920 (= lt!261516 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!270 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) rules!3103))))

(assert (=> b!610920 (isPrefix!853 input!2705 input!2705)))

(declare-fun lt!261524 () Unit!11182)

(declare-fun lemmaIsPrefixRefl!589 (List!6124 List!6124) Unit!11182)

(assert (=> b!610920 (= lt!261524 (lemmaIsPrefixRefl!589 input!2705 input!2705))))

(assert (=> b!610920 (= (_2!3755 (v!16484 lt!261554)) lt!261552)))

(declare-fun lt!261537 () Unit!11182)

(assert (=> b!610920 (= lt!261537 (lemmaSamePrefixThenSameSuffix!566 lt!261518 (_2!3755 (v!16484 lt!261554)) lt!261518 lt!261552 input!2705))))

(assert (=> b!610920 (= lt!261552 (getSuffix!370 input!2705 lt!261518))))

(assert (=> b!610920 (isPrefix!853 lt!261518 lt!261551)))

(assert (=> b!610920 (= lt!261551 (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554))))))

(declare-fun lt!261544 () Unit!11182)

(assert (=> b!610920 (= lt!261544 (lemmaConcatTwoListThenFirstIsPrefix!698 lt!261518 (_2!3755 (v!16484 lt!261554))))))

(declare-fun lt!261538 () Unit!11182)

(declare-fun lemmaCharactersSize!284 (Token!2186) Unit!11182)

(assert (=> b!610920 (= lt!261538 (lemmaCharactersSize!284 token!491))))

(declare-fun lt!261529 () Unit!11182)

(assert (=> b!610920 (= lt!261529 (lemmaCharactersSize!284 (_1!3755 (v!16484 lt!261554))))))

(declare-fun lt!261542 () Unit!11182)

(assert (=> b!610920 (= lt!261542 e!370268)))

(declare-fun c!112916 () Bool)

(assert (=> b!610920 (= c!112916 (> lt!261541 lt!261536))))

(assert (=> b!610920 (= lt!261536 (size!4808 lt!261545))))

(assert (=> b!610920 (= lt!261541 (size!4808 lt!261518))))

(assert (=> b!610920 (= lt!261518 (list!2572 (charsOf!854 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun lt!261531 () tuple2!6982)

(assert (=> b!610920 (= lt!261554 (Some!1575 lt!261531))))

(assert (=> b!610920 (= lt!261531 (tuple2!6983 (_1!3755 (v!16484 lt!261554)) (_2!3755 (v!16484 lt!261554))))))

(declare-fun lt!261543 () Unit!11182)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!298 (List!6124 List!6124 List!6124 List!6124) Unit!11182)

(assert (=> b!610920 (= lt!261543 (lemmaConcatSameAndSameSizesThenSameLists!298 lt!261545 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!610921 () Bool)

(assert (=> b!610921 (= e!370277 (and (= (size!4807 (_1!3755 (v!16484 lt!261554))) lt!261541) (= (originalCharacters!1264 (_1!3755 (v!16484 lt!261554))) lt!261518) (= lt!261531 (tuple2!6983 (Token!2187 lt!261546 (rule!2015 (_1!3755 (v!16484 lt!261554))) lt!261541 lt!261518) lt!261552))))))

(declare-fun b!610922 () Bool)

(declare-fun Unit!11187 () Unit!11182)

(assert (=> b!610922 (= e!370280 Unit!11187)))

(declare-fun lt!261521 () Unit!11182)

(assert (=> b!610922 (= lt!261521 (lemmaSemiInverse!255 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261539))))

(declare-fun lt!261549 () Unit!11182)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!78 (LexerInterface!1111 List!6125 Rule!2250 List!6124 List!6124 List!6124 Rule!2250) Unit!11182)

(assert (=> b!610922 (= lt!261549 (lemmaMaxPrefixOutputsMaxPrefix!78 thiss!22590 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554))) lt!261518 input!2705 input!2705 (rule!2015 token!491)))))

(declare-fun res!265464 () Bool)

(assert (=> b!610922 (= res!265464 (not (matchR!662 (regex!1225 (rule!2015 token!491)) input!2705)))))

(declare-fun e!370275 () Bool)

(assert (=> b!610922 (=> (not res!265464) (not e!370275))))

(assert (=> b!610922 e!370275))

(declare-fun b!610923 () Bool)

(declare-fun res!265477 () Bool)

(assert (=> b!610923 (=> res!265477 e!370278)))

(assert (=> b!610923 (= res!265477 (not (matchR!662 (regex!1225 (rule!2015 token!491)) input!2705)))))

(declare-fun b!610924 () Bool)

(assert (=> b!610924 (= e!370275 false)))

(assert (=> b!610925 (= e!370283 (and tp!189199 tp!189197))))

(assert (= (and start!58412 res!265471) b!610909))

(assert (= (and b!610909 res!265466) b!610899))

(assert (= (and b!610899 res!265482) b!610887))

(assert (= (and b!610887 res!265467) b!610917))

(assert (= (and b!610917 res!265483) b!610904))

(assert (= (and b!610904 res!265479) b!610896))

(assert (= (and b!610896 res!265469) b!610910))

(assert (= (and b!610910 res!265476) b!610916))

(assert (= (and b!610916 res!265478) b!610920))

(assert (= (and b!610920 c!112916) b!610886))

(assert (= (and b!610920 (not c!112916)) b!610918))

(assert (= (and b!610920 res!265491) b!610906))

(assert (= (and b!610906 res!265485) b!610921))

(assert (= (and b!610920 (not res!265492)) b!610915))

(assert (= (and b!610915 res!265474) b!610914))

(assert (= (and b!610914 res!265489) b!610898))

(assert (= (and b!610915 res!265486) b!610891))

(assert (= (and b!610891 (not res!265480)) b!610911))

(assert (= (and b!610911 res!265487) b!610892))

(assert (= (and b!610892 res!265484) b!610905))

(assert (= (and b!610915 c!112915) b!610922))

(assert (= (and b!610915 (not c!112915)) b!610907))

(assert (= (and b!610922 res!265464) b!610924))

(assert (= (and b!610915 (not res!265488)) b!610885))

(assert (= (and b!610885 (not res!265470)) b!610902))

(assert (= (and b!610902 (not res!265472)) b!610903))

(assert (= (and b!610903 (not res!265475)) b!610893))

(assert (= (and b!610893 (not res!265465)) b!610889))

(assert (= (and b!610889 (not res!265490)) b!610900))

(assert (= (and b!610900 (not res!265468)) b!610912))

(assert (= (and b!610912 (not res!265481)) b!610894))

(assert (= (and b!610894 (not res!265473)) b!610923))

(assert (= (and b!610923 (not res!265477)) b!610897))

(assert (= (and start!58412 ((_ is Cons!6114) suffix!1342)) b!610901))

(assert (= b!610895 b!610888))

(assert (= b!610919 b!610895))

(assert (= (and start!58412 ((_ is Cons!6115) rules!3103)) b!610919))

(assert (= b!610908 b!610925))

(assert (= b!610890 b!610908))

(assert (= start!58412 b!610890))

(assert (= (and start!58412 ((_ is Cons!6114) input!2705)) b!610913))

(declare-fun m!878559 () Bool)

(assert (=> b!610894 m!878559))

(assert (=> b!610894 m!878559))

(declare-fun m!878561 () Bool)

(assert (=> b!610894 m!878561))

(declare-fun m!878563 () Bool)

(assert (=> b!610894 m!878563))

(declare-fun m!878565 () Bool)

(assert (=> b!610894 m!878565))

(declare-fun m!878567 () Bool)

(assert (=> b!610916 m!878567))

(declare-fun m!878569 () Bool)

(assert (=> b!610887 m!878569))

(declare-fun m!878571 () Bool)

(assert (=> b!610904 m!878571))

(declare-fun m!878573 () Bool)

(assert (=> b!610904 m!878573))

(declare-fun m!878575 () Bool)

(assert (=> b!610904 m!878575))

(declare-fun m!878577 () Bool)

(assert (=> b!610910 m!878577))

(declare-fun m!878579 () Bool)

(assert (=> b!610885 m!878579))

(declare-fun m!878581 () Bool)

(assert (=> b!610893 m!878581))

(declare-fun m!878583 () Bool)

(assert (=> b!610895 m!878583))

(declare-fun m!878585 () Bool)

(assert (=> b!610895 m!878585))

(declare-fun m!878587 () Bool)

(assert (=> b!610922 m!878587))

(declare-fun m!878589 () Bool)

(assert (=> b!610922 m!878589))

(declare-fun m!878591 () Bool)

(assert (=> b!610922 m!878591))

(declare-fun m!878593 () Bool)

(assert (=> b!610917 m!878593))

(assert (=> b!610917 m!878593))

(declare-fun m!878595 () Bool)

(assert (=> b!610917 m!878595))

(declare-fun m!878597 () Bool)

(assert (=> b!610899 m!878597))

(declare-fun m!878599 () Bool)

(assert (=> b!610908 m!878599))

(declare-fun m!878601 () Bool)

(assert (=> b!610908 m!878601))

(declare-fun m!878603 () Bool)

(assert (=> b!610890 m!878603))

(declare-fun m!878605 () Bool)

(assert (=> b!610903 m!878605))

(declare-fun m!878607 () Bool)

(assert (=> b!610906 m!878607))

(declare-fun m!878609 () Bool)

(assert (=> b!610915 m!878609))

(declare-fun m!878611 () Bool)

(assert (=> b!610915 m!878611))

(declare-fun m!878613 () Bool)

(assert (=> b!610915 m!878613))

(declare-fun m!878615 () Bool)

(assert (=> b!610915 m!878615))

(assert (=> b!610915 m!878587))

(declare-fun m!878617 () Bool)

(assert (=> b!610915 m!878617))

(declare-fun m!878619 () Bool)

(assert (=> b!610915 m!878619))

(declare-fun m!878621 () Bool)

(assert (=> b!610915 m!878621))

(declare-fun m!878623 () Bool)

(assert (=> b!610915 m!878623))

(declare-fun m!878625 () Bool)

(assert (=> b!610915 m!878625))

(declare-fun m!878627 () Bool)

(assert (=> b!610900 m!878627))

(declare-fun m!878629 () Bool)

(assert (=> b!610900 m!878629))

(declare-fun m!878631 () Bool)

(assert (=> start!58412 m!878631))

(declare-fun m!878633 () Bool)

(assert (=> b!610897 m!878633))

(declare-fun m!878635 () Bool)

(assert (=> b!610897 m!878635))

(declare-fun m!878637 () Bool)

(assert (=> b!610920 m!878637))

(declare-fun m!878639 () Bool)

(assert (=> b!610920 m!878639))

(declare-fun m!878641 () Bool)

(assert (=> b!610920 m!878641))

(declare-fun m!878643 () Bool)

(assert (=> b!610920 m!878643))

(declare-fun m!878645 () Bool)

(assert (=> b!610920 m!878645))

(declare-fun m!878647 () Bool)

(assert (=> b!610920 m!878647))

(declare-fun m!878649 () Bool)

(assert (=> b!610920 m!878649))

(declare-fun m!878651 () Bool)

(assert (=> b!610920 m!878651))

(declare-fun m!878653 () Bool)

(assert (=> b!610920 m!878653))

(declare-fun m!878655 () Bool)

(assert (=> b!610920 m!878655))

(declare-fun m!878657 () Bool)

(assert (=> b!610920 m!878657))

(declare-fun m!878659 () Bool)

(assert (=> b!610920 m!878659))

(declare-fun m!878661 () Bool)

(assert (=> b!610920 m!878661))

(declare-fun m!878663 () Bool)

(assert (=> b!610920 m!878663))

(declare-fun m!878665 () Bool)

(assert (=> b!610920 m!878665))

(declare-fun m!878667 () Bool)

(assert (=> b!610920 m!878667))

(declare-fun m!878669 () Bool)

(assert (=> b!610920 m!878669))

(declare-fun m!878671 () Bool)

(assert (=> b!610920 m!878671))

(declare-fun m!878673 () Bool)

(assert (=> b!610920 m!878673))

(declare-fun m!878675 () Bool)

(assert (=> b!610920 m!878675))

(declare-fun m!878677 () Bool)

(assert (=> b!610920 m!878677))

(declare-fun m!878679 () Bool)

(assert (=> b!610920 m!878679))

(assert (=> b!610920 m!878643))

(declare-fun m!878681 () Bool)

(assert (=> b!610920 m!878681))

(declare-fun m!878683 () Bool)

(assert (=> b!610920 m!878683))

(declare-fun m!878685 () Bool)

(assert (=> b!610920 m!878685))

(declare-fun m!878687 () Bool)

(assert (=> b!610920 m!878687))

(declare-fun m!878689 () Bool)

(assert (=> b!610920 m!878689))

(declare-fun m!878691 () Bool)

(assert (=> b!610911 m!878691))

(declare-fun m!878693 () Bool)

(assert (=> b!610914 m!878693))

(declare-fun m!878695 () Bool)

(assert (=> b!610909 m!878695))

(declare-fun m!878697 () Bool)

(assert (=> b!610892 m!878697))

(assert (=> b!610923 m!878591))

(declare-fun m!878699 () Bool)

(assert (=> b!610896 m!878699))

(check-sat (not b!610893) tp_is_empty!3473 (not b!610906) b_and!60467 (not b!610887) (not b!610894) (not b!610920) b_and!60463 (not b!610908) (not b!610917) (not b!610899) (not b!610916) (not b!610895) (not b_next!17441) (not b!610909) (not b!610922) (not b!610911) b_and!60469 (not b!610897) (not b!610913) (not b_next!17439) (not b!610919) b_and!60465 (not b_next!17443) (not b!610923) (not b!610892) (not b!610910) (not b!610885) (not b!610915) (not b!610890) (not b!610900) (not b!610904) (not b!610903) (not b!610896) (not b!610901) (not b!610914) (not b_next!17437) (not start!58412))
(check-sat (not b_next!17441) b_and!60469 (not b_next!17439) b_and!60467 b_and!60463 (not b_next!17437) b_and!60465 (not b_next!17443))
(get-model)

(declare-fun d!214968 () Bool)

(assert (=> d!214968 (= (isEmpty!4413 input!2705) ((_ is Nil!6114) input!2705))))

(assert (=> b!610887 d!214968))

(declare-fun d!214970 () Bool)

(assert (=> d!214970 (= (inv!7775 (tag!1487 (rule!2015 token!491))) (= (mod (str.len (value!39778 (tag!1487 (rule!2015 token!491)))) 2) 0))))

(assert (=> b!610908 d!214970))

(declare-fun d!214972 () Bool)

(declare-fun res!265499 () Bool)

(declare-fun e!370288 () Bool)

(assert (=> d!214972 (=> (not res!265499) (not e!370288))))

(declare-fun semiInverseModEq!492 (Int Int) Bool)

(assert (=> d!214972 (= res!265499 (semiInverseModEq!492 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))))))

(assert (=> d!214972 (= (inv!7778 (transformation!1225 (rule!2015 token!491))) e!370288)))

(declare-fun b!610928 () Bool)

(declare-fun equivClasses!475 (Int Int) Bool)

(assert (=> b!610928 (= e!370288 (equivClasses!475 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))))))

(assert (= (and d!214972 res!265499) b!610928))

(declare-fun m!878701 () Bool)

(assert (=> d!214972 m!878701))

(declare-fun m!878703 () Bool)

(assert (=> b!610928 m!878703))

(assert (=> b!610908 d!214972))

(declare-fun d!214974 () Bool)

(assert (=> d!214974 (= (isEmpty!4414 rules!3103) ((_ is Nil!6115) rules!3103))))

(assert (=> b!610909 d!214974))

(declare-fun b!610947 () Bool)

(declare-fun e!370297 () Option!1576)

(declare-fun call!40844 () Option!1576)

(assert (=> b!610947 (= e!370297 call!40844)))

(declare-fun b!610948 () Bool)

(declare-fun res!265518 () Bool)

(declare-fun e!370295 () Bool)

(assert (=> b!610948 (=> (not res!265518) (not e!370295))))

(declare-fun lt!261565 () Option!1576)

(assert (=> b!610948 (= res!265518 (matchR!662 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))))))

(declare-fun b!610949 () Bool)

(declare-fun e!370296 () Bool)

(assert (=> b!610949 (= e!370296 e!370295)))

(declare-fun res!265516 () Bool)

(assert (=> b!610949 (=> (not res!265516) (not e!370295))))

(assert (=> b!610949 (= res!265516 (isDefined!1387 lt!261565))))

(declare-fun bm!40839 () Bool)

(assert (=> bm!40839 (= call!40844 (maxPrefixOneRule!472 thiss!22590 (h!11516 rules!3103) input!2705))))

(declare-fun d!214976 () Bool)

(assert (=> d!214976 e!370296))

(declare-fun res!265515 () Bool)

(assert (=> d!214976 (=> res!265515 e!370296)))

(declare-fun isEmpty!4415 (Option!1576) Bool)

(assert (=> d!214976 (= res!265515 (isEmpty!4415 lt!261565))))

(assert (=> d!214976 (= lt!261565 e!370297)))

(declare-fun c!112921 () Bool)

(assert (=> d!214976 (= c!112921 (and ((_ is Cons!6115) rules!3103) ((_ is Nil!6115) (t!80906 rules!3103))))))

(declare-fun lt!261568 () Unit!11182)

(declare-fun lt!261569 () Unit!11182)

(assert (=> d!214976 (= lt!261568 lt!261569)))

(assert (=> d!214976 (isPrefix!853 input!2705 input!2705)))

(assert (=> d!214976 (= lt!261569 (lemmaIsPrefixRefl!589 input!2705 input!2705))))

(declare-fun rulesValidInductive!461 (LexerInterface!1111 List!6125) Bool)

(assert (=> d!214976 (rulesValidInductive!461 thiss!22590 rules!3103)))

(assert (=> d!214976 (= (maxPrefix!809 thiss!22590 rules!3103 input!2705) lt!261565)))

(declare-fun b!610950 () Bool)

(declare-fun res!265517 () Bool)

(assert (=> b!610950 (=> (not res!265517) (not e!370295))))

(assert (=> b!610950 (= res!265517 (= (value!39779 (_1!3755 (get!2352 lt!261565))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261565)))))))))

(declare-fun b!610951 () Bool)

(declare-fun lt!261567 () Option!1576)

(declare-fun lt!261566 () Option!1576)

(assert (=> b!610951 (= e!370297 (ite (and ((_ is None!1575) lt!261567) ((_ is None!1575) lt!261566)) None!1575 (ite ((_ is None!1575) lt!261566) lt!261567 (ite ((_ is None!1575) lt!261567) lt!261566 (ite (>= (size!4807 (_1!3755 (v!16484 lt!261567))) (size!4807 (_1!3755 (v!16484 lt!261566)))) lt!261567 lt!261566)))))))

(assert (=> b!610951 (= lt!261567 call!40844)))

(assert (=> b!610951 (= lt!261566 (maxPrefix!809 thiss!22590 (t!80906 rules!3103) input!2705))))

(declare-fun b!610952 () Bool)

(declare-fun res!265514 () Bool)

(assert (=> b!610952 (=> (not res!265514) (not e!370295))))

(assert (=> b!610952 (= res!265514 (< (size!4808 (_2!3755 (get!2352 lt!261565))) (size!4808 input!2705)))))

(declare-fun b!610953 () Bool)

(declare-fun res!265520 () Bool)

(assert (=> b!610953 (=> (not res!265520) (not e!370295))))

(assert (=> b!610953 (= res!265520 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))) (originalCharacters!1264 (_1!3755 (get!2352 lt!261565)))))))

(declare-fun b!610954 () Bool)

(assert (=> b!610954 (= e!370295 (contains!1441 rules!3103 (rule!2015 (_1!3755 (get!2352 lt!261565)))))))

(declare-fun b!610955 () Bool)

(declare-fun res!265519 () Bool)

(assert (=> b!610955 (=> (not res!265519) (not e!370295))))

(assert (=> b!610955 (= res!265519 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))) (_2!3755 (get!2352 lt!261565))) input!2705))))

(assert (= (and d!214976 c!112921) b!610947))

(assert (= (and d!214976 (not c!112921)) b!610951))

(assert (= (or b!610947 b!610951) bm!40839))

(assert (= (and d!214976 (not res!265515)) b!610949))

(assert (= (and b!610949 res!265516) b!610953))

(assert (= (and b!610953 res!265520) b!610952))

(assert (= (and b!610952 res!265514) b!610955))

(assert (= (and b!610955 res!265519) b!610950))

(assert (= (and b!610950 res!265517) b!610948))

(assert (= (and b!610948 res!265518) b!610954))

(declare-fun m!878705 () Bool)

(assert (=> d!214976 m!878705))

(assert (=> d!214976 m!878661))

(assert (=> d!214976 m!878653))

(declare-fun m!878707 () Bool)

(assert (=> d!214976 m!878707))

(declare-fun m!878709 () Bool)

(assert (=> bm!40839 m!878709))

(declare-fun m!878711 () Bool)

(assert (=> b!610952 m!878711))

(declare-fun m!878713 () Bool)

(assert (=> b!610952 m!878713))

(assert (=> b!610952 m!878563))

(assert (=> b!610955 m!878711))

(declare-fun m!878715 () Bool)

(assert (=> b!610955 m!878715))

(assert (=> b!610955 m!878715))

(declare-fun m!878717 () Bool)

(assert (=> b!610955 m!878717))

(assert (=> b!610955 m!878717))

(declare-fun m!878719 () Bool)

(assert (=> b!610955 m!878719))

(assert (=> b!610953 m!878711))

(assert (=> b!610953 m!878715))

(assert (=> b!610953 m!878715))

(assert (=> b!610953 m!878717))

(assert (=> b!610950 m!878711))

(declare-fun m!878721 () Bool)

(assert (=> b!610950 m!878721))

(assert (=> b!610950 m!878721))

(declare-fun m!878723 () Bool)

(assert (=> b!610950 m!878723))

(assert (=> b!610948 m!878711))

(assert (=> b!610948 m!878715))

(assert (=> b!610948 m!878715))

(assert (=> b!610948 m!878717))

(assert (=> b!610948 m!878717))

(declare-fun m!878725 () Bool)

(assert (=> b!610948 m!878725))

(declare-fun m!878727 () Bool)

(assert (=> b!610949 m!878727))

(assert (=> b!610954 m!878711))

(declare-fun m!878729 () Bool)

(assert (=> b!610954 m!878729))

(declare-fun m!878731 () Bool)

(assert (=> b!610951 m!878731))

(assert (=> b!610910 d!214976))

(declare-fun d!214978 () Bool)

(assert (=> d!214978 (= (isDefined!1387 lt!261554) (not (isEmpty!4415 lt!261554)))))

(declare-fun bs!71538 () Bool)

(assert (= bs!71538 d!214978))

(declare-fun m!878733 () Bool)

(assert (=> bs!71538 m!878733))

(assert (=> b!610911 d!214978))

(declare-fun b!610966 () Bool)

(declare-fun e!370304 () Bool)

(declare-fun inv!16 (TokenValue!1249) Bool)

(assert (=> b!610966 (= e!370304 (inv!16 (value!39779 token!491)))))

(declare-fun b!610967 () Bool)

(declare-fun e!370306 () Bool)

(declare-fun inv!15 (TokenValue!1249) Bool)

(assert (=> b!610967 (= e!370306 (inv!15 (value!39779 token!491)))))

(declare-fun d!214980 () Bool)

(declare-fun c!112927 () Bool)

(assert (=> d!214980 (= c!112927 ((_ is IntegerValue!3747) (value!39779 token!491)))))

(assert (=> d!214980 (= (inv!21 (value!39779 token!491)) e!370304)))

(declare-fun b!610968 () Bool)

(declare-fun res!265527 () Bool)

(assert (=> b!610968 (=> res!265527 e!370306)))

(assert (=> b!610968 (= res!265527 (not ((_ is IntegerValue!3749) (value!39779 token!491))))))

(declare-fun e!370305 () Bool)

(assert (=> b!610968 (= e!370305 e!370306)))

(declare-fun b!610969 () Bool)

(declare-fun inv!17 (TokenValue!1249) Bool)

(assert (=> b!610969 (= e!370305 (inv!17 (value!39779 token!491)))))

(declare-fun b!610970 () Bool)

(assert (=> b!610970 (= e!370304 e!370305)))

(declare-fun c!112926 () Bool)

(assert (=> b!610970 (= c!112926 ((_ is IntegerValue!3748) (value!39779 token!491)))))

(assert (= (and d!214980 c!112927) b!610966))

(assert (= (and d!214980 (not c!112927)) b!610970))

(assert (= (and b!610970 c!112926) b!610969))

(assert (= (and b!610970 (not c!112926)) b!610968))

(assert (= (and b!610968 (not res!265527)) b!610967))

(declare-fun m!878735 () Bool)

(assert (=> b!610966 m!878735))

(declare-fun m!878737 () Bool)

(assert (=> b!610967 m!878737))

(declare-fun m!878739 () Bool)

(assert (=> b!610969 m!878739))

(assert (=> b!610890 d!214980))

(declare-fun d!214982 () Bool)

(declare-fun res!265532 () Bool)

(declare-fun e!370309 () Bool)

(assert (=> d!214982 (=> (not res!265532) (not e!370309))))

(assert (=> d!214982 (= res!265532 (not (isEmpty!4413 (originalCharacters!1264 token!491))))))

(assert (=> d!214982 (= (inv!7779 token!491) e!370309)))

(declare-fun b!610975 () Bool)

(declare-fun res!265533 () Bool)

(assert (=> b!610975 (=> (not res!265533) (not e!370309))))

(declare-fun dynLambda!3547 (Int TokenValue!1249) BalanceConc!3892)

(assert (=> b!610975 (= res!265533 (= (originalCharacters!1264 token!491) (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))))))

(declare-fun b!610976 () Bool)

(assert (=> b!610976 (= e!370309 (= (size!4807 token!491) (size!4808 (originalCharacters!1264 token!491))))))

(assert (= (and d!214982 res!265532) b!610975))

(assert (= (and b!610975 res!265533) b!610976))

(declare-fun b_lambda!24205 () Bool)

(assert (=> (not b_lambda!24205) (not b!610975)))

(declare-fun tb!53311 () Bool)

(declare-fun t!80908 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!80908) tb!53311))

(declare-fun b!610981 () Bool)

(declare-fun e!370312 () Bool)

(declare-fun tp!189207 () Bool)

(declare-fun inv!7780 (Conc!1942) Bool)

(assert (=> b!610981 (= e!370312 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))) tp!189207))))

(declare-fun result!60030 () Bool)

(declare-fun inv!7781 (BalanceConc!3892) Bool)

(assert (=> tb!53311 (= result!60030 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))) e!370312))))

(assert (= tb!53311 b!610981))

(declare-fun m!878741 () Bool)

(assert (=> b!610981 m!878741))

(declare-fun m!878743 () Bool)

(assert (=> tb!53311 m!878743))

(assert (=> b!610975 t!80908))

(declare-fun b_and!60471 () Bool)

(assert (= b_and!60465 (and (=> t!80908 result!60030) b_and!60471)))

(declare-fun t!80910 () Bool)

(declare-fun tb!53313 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!80910) tb!53313))

(declare-fun result!60034 () Bool)

(assert (= result!60034 result!60030))

(assert (=> b!610975 t!80910))

(declare-fun b_and!60473 () Bool)

(assert (= b_and!60469 (and (=> t!80910 result!60034) b_and!60473)))

(declare-fun m!878745 () Bool)

(assert (=> d!214982 m!878745))

(declare-fun m!878747 () Bool)

(assert (=> b!610975 m!878747))

(assert (=> b!610975 m!878747))

(declare-fun m!878749 () Bool)

(assert (=> b!610975 m!878749))

(assert (=> b!610976 m!878693))

(assert (=> start!58412 d!214982))

(declare-fun d!214986 () Bool)

(assert (=> d!214986 (= (get!2352 lt!261554) (v!16484 lt!261554))))

(assert (=> b!610892 d!214986))

(declare-fun d!214988 () Bool)

(declare-fun lt!261575 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1115 (List!6125) (InoxSet Rule!2250))

(assert (=> d!214988 (= lt!261575 (select (content!1115 rules!3103) (rule!2015 token!491)))))

(declare-fun e!370321 () Bool)

(assert (=> d!214988 (= lt!261575 e!370321)))

(declare-fun res!265539 () Bool)

(assert (=> d!214988 (=> (not res!265539) (not e!370321))))

(assert (=> d!214988 (= res!265539 ((_ is Cons!6115) rules!3103))))

(assert (=> d!214988 (= (contains!1441 rules!3103 (rule!2015 token!491)) lt!261575)))

(declare-fun b!610992 () Bool)

(declare-fun e!370320 () Bool)

(assert (=> b!610992 (= e!370321 e!370320)))

(declare-fun res!265538 () Bool)

(assert (=> b!610992 (=> res!265538 e!370320)))

(assert (=> b!610992 (= res!265538 (= (h!11516 rules!3103) (rule!2015 token!491)))))

(declare-fun b!610993 () Bool)

(assert (=> b!610993 (= e!370320 (contains!1441 (t!80906 rules!3103) (rule!2015 token!491)))))

(assert (= (and d!214988 res!265539) b!610992))

(assert (= (and b!610992 (not res!265538)) b!610993))

(declare-fun m!878753 () Bool)

(assert (=> d!214988 m!878753))

(declare-fun m!878755 () Bool)

(assert (=> d!214988 m!878755))

(declare-fun m!878757 () Bool)

(assert (=> b!610993 m!878757))

(assert (=> b!610893 d!214988))

(declare-fun d!214992 () Bool)

(declare-fun lt!261578 () Int)

(assert (=> d!214992 (>= lt!261578 0)))

(declare-fun e!370327 () Int)

(assert (=> d!214992 (= lt!261578 e!370327)))

(declare-fun c!112933 () Bool)

(assert (=> d!214992 (= c!112933 ((_ is Nil!6114) (originalCharacters!1264 token!491)))))

(assert (=> d!214992 (= (size!4808 (originalCharacters!1264 token!491)) lt!261578)))

(declare-fun b!611001 () Bool)

(assert (=> b!611001 (= e!370327 0)))

(declare-fun b!611002 () Bool)

(assert (=> b!611002 (= e!370327 (+ 1 (size!4808 (t!80905 (originalCharacters!1264 token!491)))))))

(assert (= (and d!214992 c!112933) b!611001))

(assert (= (and d!214992 (not c!112933)) b!611002))

(declare-fun m!878763 () Bool)

(assert (=> b!611002 m!878763))

(assert (=> b!610914 d!214992))

(declare-fun d!214996 () Bool)

(assert (=> d!214996 (= suffix!1342 lt!261520)))

(declare-fun lt!261581 () Unit!11182)

(declare-fun choose!4489 (List!6124 List!6124 List!6124 List!6124 List!6124) Unit!11182)

(assert (=> d!214996 (= lt!261581 (choose!4489 lt!261545 suffix!1342 lt!261545 lt!261520 lt!261534))))

(assert (=> d!214996 (isPrefix!853 lt!261545 lt!261534)))

(assert (=> d!214996 (= (lemmaSamePrefixThenSameSuffix!566 lt!261545 suffix!1342 lt!261545 lt!261520 lt!261534) lt!261581)))

(declare-fun bs!71539 () Bool)

(assert (= bs!71539 d!214996))

(declare-fun m!878769 () Bool)

(assert (=> bs!71539 m!878769))

(declare-fun m!878771 () Bool)

(assert (=> bs!71539 m!878771))

(assert (=> b!610915 d!214996))

(declare-fun d!215000 () Bool)

(declare-fun dynLambda!3548 (Int BalanceConc!3892) TokenValue!1249)

(assert (=> d!215000 (= (apply!1478 (transformation!1225 (rule!2015 token!491)) lt!261519) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))

(declare-fun b_lambda!24209 () Bool)

(assert (=> (not b_lambda!24209) (not d!215000)))

(declare-fun t!80916 () Bool)

(declare-fun tb!53319 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!80916) tb!53319))

(declare-fun result!60042 () Bool)

(assert (=> tb!53319 (= result!60042 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))

(declare-fun m!878777 () Bool)

(assert (=> tb!53319 m!878777))

(assert (=> d!215000 t!80916))

(declare-fun b_and!60479 () Bool)

(assert (= b_and!60463 (and (=> t!80916 result!60042) b_and!60479)))

(declare-fun t!80918 () Bool)

(declare-fun tb!53321 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!80918) tb!53321))

(declare-fun result!60046 () Bool)

(assert (= result!60046 result!60042))

(assert (=> d!215000 t!80918))

(declare-fun b_and!60481 () Bool)

(assert (= b_and!60467 (and (=> t!80918 result!60046) b_and!60481)))

(declare-fun m!878779 () Bool)

(assert (=> d!215000 m!878779))

(assert (=> b!610915 d!215000))

(declare-fun b!611055 () Bool)

(declare-fun e!370365 () Bool)

(declare-datatypes ((tuple2!6984 0))(
  ( (tuple2!6985 (_1!3756 List!6124) (_2!3756 List!6124)) )
))
(declare-fun findLongestMatchInner!209 (Regex!1559 List!6124 Int List!6124 List!6124 Int) tuple2!6984)

(assert (=> b!611055 (= e!370365 (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(declare-fun b!611056 () Bool)

(declare-fun e!370363 () Bool)

(declare-fun lt!261605 () Option!1576)

(assert (=> b!611056 (= e!370363 (= (size!4807 (_1!3755 (get!2352 lt!261605))) (size!4808 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605))))))))

(declare-fun d!215006 () Bool)

(declare-fun e!370362 () Bool)

(assert (=> d!215006 e!370362))

(declare-fun res!265578 () Bool)

(assert (=> d!215006 (=> res!265578 e!370362)))

(assert (=> d!215006 (= res!265578 (isEmpty!4415 lt!261605))))

(declare-fun e!370364 () Option!1576)

(assert (=> d!215006 (= lt!261605 e!370364)))

(declare-fun c!112942 () Bool)

(declare-fun lt!261607 () tuple2!6984)

(assert (=> d!215006 (= c!112942 (isEmpty!4413 (_1!3756 lt!261607)))))

(declare-fun findLongestMatch!188 (Regex!1559 List!6124) tuple2!6984)

(assert (=> d!215006 (= lt!261607 (findLongestMatch!188 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705))))

(assert (=> d!215006 (ruleValid!423 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))))))

(assert (=> d!215006 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) input!2705) lt!261605)))

(declare-fun b!611057 () Bool)

(declare-fun res!265573 () Bool)

(assert (=> b!611057 (=> (not res!265573) (not e!370363))))

(assert (=> b!611057 (= res!265573 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605)))) (_2!3755 (get!2352 lt!261605))) input!2705))))

(declare-fun b!611058 () Bool)

(declare-fun res!265572 () Bool)

(assert (=> b!611058 (=> (not res!265572) (not e!370363))))

(assert (=> b!611058 (= res!265572 (= (rule!2015 (_1!3755 (get!2352 lt!261605))) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun b!611059 () Bool)

(assert (=> b!611059 (= e!370364 None!1575)))

(declare-fun b!611060 () Bool)

(declare-fun res!265576 () Bool)

(assert (=> b!611060 (=> (not res!265576) (not e!370363))))

(assert (=> b!611060 (= res!265576 (< (size!4808 (_2!3755 (get!2352 lt!261605))) (size!4808 input!2705)))))

(declare-fun b!611061 () Bool)

(declare-fun res!265575 () Bool)

(assert (=> b!611061 (=> (not res!265575) (not e!370363))))

(assert (=> b!611061 (= res!265575 (= (value!39779 (_1!3755 (get!2352 lt!261605))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605)))))))))

(declare-fun b!611062 () Bool)

(declare-fun size!4809 (BalanceConc!3892) Int)

(assert (=> b!611062 (= e!370364 (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (seqFromList!1401 (_1!3756 lt!261607))) (rule!2015 (_1!3755 (v!16484 lt!261554))) (size!4809 (seqFromList!1401 (_1!3756 lt!261607))) (_1!3756 lt!261607)) (_2!3756 lt!261607))))))

(declare-fun lt!261606 () Unit!11182)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!193 (Regex!1559 List!6124) Unit!11182)

(assert (=> b!611062 (= lt!261606 (longestMatchIsAcceptedByMatchOrIsEmpty!193 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705))))

(declare-fun res!265577 () Bool)

(assert (=> b!611062 (= res!265577 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(assert (=> b!611062 (=> res!265577 e!370365)))

(assert (=> b!611062 e!370365))

(declare-fun lt!261608 () Unit!11182)

(assert (=> b!611062 (= lt!261608 lt!261606)))

(declare-fun lt!261609 () Unit!11182)

(assert (=> b!611062 (= lt!261609 (lemmaSemiInverse!255 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (seqFromList!1401 (_1!3756 lt!261607))))))

(declare-fun b!611063 () Bool)

(assert (=> b!611063 (= e!370362 e!370363)))

(declare-fun res!265574 () Bool)

(assert (=> b!611063 (=> (not res!265574) (not e!370363))))

(assert (=> b!611063 (= res!265574 (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))))))

(assert (= (and d!215006 c!112942) b!611059))

(assert (= (and d!215006 (not c!112942)) b!611062))

(assert (= (and b!611062 (not res!265577)) b!611055))

(assert (= (and d!215006 (not res!265578)) b!611063))

(assert (= (and b!611063 res!265574) b!611057))

(assert (= (and b!611057 res!265573) b!611060))

(assert (= (and b!611060 res!265576) b!611058))

(assert (= (and b!611058 res!265572) b!611061))

(assert (= (and b!611061 res!265575) b!611056))

(declare-fun m!878817 () Bool)

(assert (=> b!611057 m!878817))

(declare-fun m!878819 () Bool)

(assert (=> b!611057 m!878819))

(assert (=> b!611057 m!878819))

(declare-fun m!878821 () Bool)

(assert (=> b!611057 m!878821))

(assert (=> b!611057 m!878821))

(declare-fun m!878823 () Bool)

(assert (=> b!611057 m!878823))

(assert (=> b!611063 m!878817))

(assert (=> b!611063 m!878819))

(assert (=> b!611063 m!878819))

(assert (=> b!611063 m!878821))

(assert (=> b!611063 m!878821))

(declare-fun m!878825 () Bool)

(assert (=> b!611063 m!878825))

(declare-fun m!878827 () Bool)

(assert (=> b!611055 m!878827))

(assert (=> b!611055 m!878563))

(assert (=> b!611055 m!878827))

(assert (=> b!611055 m!878563))

(declare-fun m!878829 () Bool)

(assert (=> b!611055 m!878829))

(declare-fun m!878831 () Bool)

(assert (=> b!611055 m!878831))

(assert (=> b!611056 m!878817))

(declare-fun m!878833 () Bool)

(assert (=> b!611056 m!878833))

(declare-fun m!878835 () Bool)

(assert (=> d!215006 m!878835))

(declare-fun m!878837 () Bool)

(assert (=> d!215006 m!878837))

(declare-fun m!878839 () Bool)

(assert (=> d!215006 m!878839))

(assert (=> d!215006 m!878651))

(assert (=> b!611060 m!878817))

(declare-fun m!878841 () Bool)

(assert (=> b!611060 m!878841))

(assert (=> b!611060 m!878563))

(assert (=> b!611062 m!878827))

(assert (=> b!611062 m!878563))

(assert (=> b!611062 m!878829))

(declare-fun m!878843 () Bool)

(assert (=> b!611062 m!878843))

(declare-fun m!878845 () Bool)

(assert (=> b!611062 m!878845))

(declare-fun m!878847 () Bool)

(assert (=> b!611062 m!878847))

(assert (=> b!611062 m!878827))

(assert (=> b!611062 m!878843))

(declare-fun m!878849 () Bool)

(assert (=> b!611062 m!878849))

(assert (=> b!611062 m!878563))

(assert (=> b!611062 m!878843))

(assert (=> b!611062 m!878843))

(declare-fun m!878851 () Bool)

(assert (=> b!611062 m!878851))

(declare-fun m!878853 () Bool)

(assert (=> b!611062 m!878853))

(assert (=> b!611061 m!878817))

(declare-fun m!878855 () Bool)

(assert (=> b!611061 m!878855))

(assert (=> b!611061 m!878855))

(declare-fun m!878857 () Bool)

(assert (=> b!611061 m!878857))

(assert (=> b!611058 m!878817))

(assert (=> b!610915 d!215006))

(declare-fun d!215026 () Bool)

(assert (=> d!215026 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) input!2705) (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (seqFromList!1401 lt!261518)) (rule!2015 (_1!3755 (v!16484 lt!261554))) (size!4808 lt!261518) lt!261518) (_2!3755 (v!16484 lt!261554)))))))

(declare-fun lt!261612 () Unit!11182)

(declare-fun choose!4490 (LexerInterface!1111 List!6125 List!6124 List!6124 List!6124 Rule!2250) Unit!11182)

(assert (=> d!215026 (= lt!261612 (choose!4490 thiss!22590 rules!3103 lt!261518 input!2705 (_2!3755 (v!16484 lt!261554)) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215026 (not (isEmpty!4414 rules!3103))))

(assert (=> d!215026 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!178 thiss!22590 rules!3103 lt!261518 input!2705 (_2!3755 (v!16484 lt!261554)) (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261612)))

(declare-fun bs!71543 () Bool)

(assert (= bs!71543 d!215026))

(declare-fun m!878859 () Bool)

(assert (=> bs!71543 m!878859))

(assert (=> bs!71543 m!878695))

(assert (=> bs!71543 m!878649))

(declare-fun m!878861 () Bool)

(assert (=> bs!71543 m!878861))

(assert (=> bs!71543 m!878617))

(assert (=> bs!71543 m!878649))

(assert (=> bs!71543 m!878645))

(assert (=> b!610915 d!215026))

(declare-fun d!215028 () Bool)

(declare-fun lt!261615 () List!6124)

(assert (=> d!215028 (= (++!1713 lt!261545 lt!261615) lt!261534)))

(declare-fun e!370368 () List!6124)

(assert (=> d!215028 (= lt!261615 e!370368)))

(declare-fun c!112945 () Bool)

(assert (=> d!215028 (= c!112945 ((_ is Cons!6114) lt!261545))))

(assert (=> d!215028 (>= (size!4808 lt!261534) (size!4808 lt!261545))))

(assert (=> d!215028 (= (getSuffix!370 lt!261534 lt!261545) lt!261615)))

(declare-fun b!611068 () Bool)

(declare-fun tail!821 (List!6124) List!6124)

(assert (=> b!611068 (= e!370368 (getSuffix!370 (tail!821 lt!261534) (t!80905 lt!261545)))))

(declare-fun b!611069 () Bool)

(assert (=> b!611069 (= e!370368 lt!261534)))

(assert (= (and d!215028 c!112945) b!611068))

(assert (= (and d!215028 (not c!112945)) b!611069))

(declare-fun m!878863 () Bool)

(assert (=> d!215028 m!878863))

(declare-fun m!878865 () Bool)

(assert (=> d!215028 m!878865))

(assert (=> d!215028 m!878685))

(declare-fun m!878867 () Bool)

(assert (=> b!611068 m!878867))

(assert (=> b!611068 m!878867))

(declare-fun m!878869 () Bool)

(assert (=> b!611068 m!878869))

(assert (=> b!610915 d!215028))

(declare-fun b!611165 () Bool)

(declare-fun e!370427 () Bool)

(assert (=> b!611165 (= e!370427 true)))

(declare-fun d!215030 () Bool)

(assert (=> d!215030 e!370427))

(assert (= d!215030 b!611165))

(declare-fun lambda!16172 () Int)

(declare-fun order!4879 () Int)

(declare-fun order!4877 () Int)

(declare-fun dynLambda!3551 (Int Int) Int)

(declare-fun dynLambda!3552 (Int Int) Int)

(assert (=> b!611165 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 token!491)))) (dynLambda!3552 order!4879 lambda!16172))))

(declare-fun order!4881 () Int)

(declare-fun dynLambda!3553 (Int Int) Int)

(assert (=> b!611165 (< (dynLambda!3553 order!4881 (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (dynLambda!3552 order!4879 lambda!16172))))

(assert (=> d!215030 (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))) (list!2572 lt!261519))))

(declare-fun lt!261653 () Unit!11182)

(declare-fun ForallOf!127 (Int BalanceConc!3892) Unit!11182)

(assert (=> d!215030 (= lt!261653 (ForallOf!127 lambda!16172 lt!261519))))

(assert (=> d!215030 (= (lemmaSemiInverse!255 (transformation!1225 (rule!2015 token!491)) lt!261519) lt!261653)))

(declare-fun b_lambda!24223 () Bool)

(assert (=> (not b_lambda!24223) (not d!215030)))

(declare-fun t!80936 () Bool)

(declare-fun tb!53339 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!80936) tb!53339))

(declare-fun b!611170 () Bool)

(declare-fun tp!189213 () Bool)

(declare-fun e!370430 () Bool)

(assert (=> b!611170 (= e!370430 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))) tp!189213))))

(declare-fun result!60066 () Bool)

(assert (=> tb!53339 (= result!60066 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))) e!370430))))

(assert (= tb!53339 b!611170))

(declare-fun m!878983 () Bool)

(assert (=> b!611170 m!878983))

(declare-fun m!878985 () Bool)

(assert (=> tb!53339 m!878985))

(assert (=> d!215030 t!80936))

(declare-fun b_and!60507 () Bool)

(assert (= b_and!60471 (and (=> t!80936 result!60066) b_and!60507)))

(declare-fun t!80938 () Bool)

(declare-fun tb!53341 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!80938) tb!53341))

(declare-fun result!60068 () Bool)

(assert (= result!60068 result!60066))

(assert (=> d!215030 t!80938))

(declare-fun b_and!60509 () Bool)

(assert (= b_and!60473 (and (=> t!80938 result!60068) b_and!60509)))

(declare-fun b_lambda!24225 () Bool)

(assert (=> (not b_lambda!24225) (not d!215030)))

(assert (=> d!215030 t!80916))

(declare-fun b_and!60511 () Bool)

(assert (= b_and!60479 (and (=> t!80916 result!60042) b_and!60511)))

(assert (=> d!215030 t!80918))

(declare-fun b_and!60513 () Bool)

(assert (= b_and!60481 (and (=> t!80918 result!60046) b_and!60513)))

(declare-fun m!878987 () Bool)

(assert (=> d!215030 m!878987))

(declare-fun m!878989 () Bool)

(assert (=> d!215030 m!878989))

(assert (=> d!215030 m!878779))

(declare-fun m!878991 () Bool)

(assert (=> d!215030 m!878991))

(assert (=> d!215030 m!878779))

(assert (=> d!215030 m!878987))

(declare-fun m!878993 () Bool)

(assert (=> d!215030 m!878993))

(assert (=> b!610915 d!215030))

(declare-fun b!611175 () Bool)

(declare-fun e!370436 () Bool)

(assert (=> b!611175 (= e!370436 (matchR!662 (regex!1225 (rule!2015 token!491)) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(declare-fun b!611176 () Bool)

(declare-fun e!370434 () Bool)

(declare-fun lt!261656 () Option!1576)

(assert (=> b!611176 (= e!370434 (= (size!4807 (_1!3755 (get!2352 lt!261656))) (size!4808 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656))))))))

(declare-fun d!215088 () Bool)

(declare-fun e!370433 () Bool)

(assert (=> d!215088 e!370433))

(declare-fun res!265649 () Bool)

(assert (=> d!215088 (=> res!265649 e!370433)))

(assert (=> d!215088 (= res!265649 (isEmpty!4415 lt!261656))))

(declare-fun e!370435 () Option!1576)

(assert (=> d!215088 (= lt!261656 e!370435)))

(declare-fun c!112961 () Bool)

(declare-fun lt!261658 () tuple2!6984)

(assert (=> d!215088 (= c!112961 (isEmpty!4413 (_1!3756 lt!261658)))))

(assert (=> d!215088 (= lt!261658 (findLongestMatch!188 (regex!1225 (rule!2015 token!491)) lt!261534))))

(assert (=> d!215088 (ruleValid!423 thiss!22590 (rule!2015 token!491))))

(assert (=> d!215088 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 token!491) lt!261534) lt!261656)))

(declare-fun b!611177 () Bool)

(declare-fun res!265644 () Bool)

(assert (=> b!611177 (=> (not res!265644) (not e!370434))))

(assert (=> b!611177 (= res!265644 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656)))) (_2!3755 (get!2352 lt!261656))) lt!261534))))

(declare-fun b!611178 () Bool)

(declare-fun res!265643 () Bool)

(assert (=> b!611178 (=> (not res!265643) (not e!370434))))

(assert (=> b!611178 (= res!265643 (= (rule!2015 (_1!3755 (get!2352 lt!261656))) (rule!2015 token!491)))))

(declare-fun b!611179 () Bool)

(assert (=> b!611179 (= e!370435 None!1575)))

(declare-fun b!611180 () Bool)

(declare-fun res!265647 () Bool)

(assert (=> b!611180 (=> (not res!265647) (not e!370434))))

(assert (=> b!611180 (= res!265647 (< (size!4808 (_2!3755 (get!2352 lt!261656))) (size!4808 lt!261534)))))

(declare-fun b!611181 () Bool)

(declare-fun res!265646 () Bool)

(assert (=> b!611181 (=> (not res!265646) (not e!370434))))

(assert (=> b!611181 (= res!265646 (= (value!39779 (_1!3755 (get!2352 lt!261656))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656)))))))))

(declare-fun b!611182 () Bool)

(assert (=> b!611182 (= e!370435 (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 (_1!3756 lt!261658))) (rule!2015 token!491) (size!4809 (seqFromList!1401 (_1!3756 lt!261658))) (_1!3756 lt!261658)) (_2!3756 lt!261658))))))

(declare-fun lt!261657 () Unit!11182)

(assert (=> b!611182 (= lt!261657 (longestMatchIsAcceptedByMatchOrIsEmpty!193 (regex!1225 (rule!2015 token!491)) lt!261534))))

(declare-fun res!265648 () Bool)

(assert (=> b!611182 (= res!265648 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(assert (=> b!611182 (=> res!265648 e!370436)))

(assert (=> b!611182 e!370436))

(declare-fun lt!261659 () Unit!11182)

(assert (=> b!611182 (= lt!261659 lt!261657)))

(declare-fun lt!261660 () Unit!11182)

(assert (=> b!611182 (= lt!261660 (lemmaSemiInverse!255 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 (_1!3756 lt!261658))))))

(declare-fun b!611183 () Bool)

(assert (=> b!611183 (= e!370433 e!370434)))

(declare-fun res!265645 () Bool)

(assert (=> b!611183 (=> (not res!265645) (not e!370434))))

(assert (=> b!611183 (= res!265645 (matchR!662 (regex!1225 (rule!2015 token!491)) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))))))

(assert (= (and d!215088 c!112961) b!611179))

(assert (= (and d!215088 (not c!112961)) b!611182))

(assert (= (and b!611182 (not res!265648)) b!611175))

(assert (= (and d!215088 (not res!265649)) b!611183))

(assert (= (and b!611183 res!265645) b!611177))

(assert (= (and b!611177 res!265644) b!611180))

(assert (= (and b!611180 res!265647) b!611178))

(assert (= (and b!611178 res!265643) b!611181))

(assert (= (and b!611181 res!265646) b!611176))

(declare-fun m!879011 () Bool)

(assert (=> b!611177 m!879011))

(declare-fun m!879013 () Bool)

(assert (=> b!611177 m!879013))

(assert (=> b!611177 m!879013))

(declare-fun m!879015 () Bool)

(assert (=> b!611177 m!879015))

(assert (=> b!611177 m!879015))

(declare-fun m!879017 () Bool)

(assert (=> b!611177 m!879017))

(assert (=> b!611183 m!879011))

(assert (=> b!611183 m!879013))

(assert (=> b!611183 m!879013))

(assert (=> b!611183 m!879015))

(assert (=> b!611183 m!879015))

(declare-fun m!879019 () Bool)

(assert (=> b!611183 m!879019))

(assert (=> b!611175 m!878827))

(assert (=> b!611175 m!878865))

(assert (=> b!611175 m!878827))

(assert (=> b!611175 m!878865))

(declare-fun m!879021 () Bool)

(assert (=> b!611175 m!879021))

(declare-fun m!879023 () Bool)

(assert (=> b!611175 m!879023))

(assert (=> b!611176 m!879011))

(declare-fun m!879025 () Bool)

(assert (=> b!611176 m!879025))

(declare-fun m!879027 () Bool)

(assert (=> d!215088 m!879027))

(declare-fun m!879029 () Bool)

(assert (=> d!215088 m!879029))

(declare-fun m!879031 () Bool)

(assert (=> d!215088 m!879031))

(assert (=> d!215088 m!878641))

(assert (=> b!611180 m!879011))

(declare-fun m!879033 () Bool)

(assert (=> b!611180 m!879033))

(assert (=> b!611180 m!878865))

(assert (=> b!611182 m!878827))

(assert (=> b!611182 m!878865))

(assert (=> b!611182 m!879021))

(declare-fun m!879045 () Bool)

(assert (=> b!611182 m!879045))

(declare-fun m!879049 () Bool)

(assert (=> b!611182 m!879049))

(declare-fun m!879051 () Bool)

(assert (=> b!611182 m!879051))

(assert (=> b!611182 m!878827))

(assert (=> b!611182 m!879045))

(declare-fun m!879053 () Bool)

(assert (=> b!611182 m!879053))

(assert (=> b!611182 m!878865))

(assert (=> b!611182 m!879045))

(assert (=> b!611182 m!879045))

(declare-fun m!879055 () Bool)

(assert (=> b!611182 m!879055))

(declare-fun m!879057 () Bool)

(assert (=> b!611182 m!879057))

(assert (=> b!611181 m!879011))

(declare-fun m!879059 () Bool)

(assert (=> b!611181 m!879059))

(assert (=> b!611181 m!879059))

(declare-fun m!879065 () Bool)

(assert (=> b!611181 m!879065))

(assert (=> b!611178 m!879011))

(assert (=> b!610915 d!215088))

(declare-fun d!215104 () Bool)

(assert (=> d!215104 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 token!491) lt!261534) (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 lt!261545)) (rule!2015 token!491) (size!4808 lt!261545) lt!261545) suffix!1342)))))

(declare-fun lt!261665 () Unit!11182)

(assert (=> d!215104 (= lt!261665 (choose!4490 thiss!22590 rules!3103 lt!261545 lt!261534 suffix!1342 (rule!2015 token!491)))))

(assert (=> d!215104 (not (isEmpty!4414 rules!3103))))

(assert (=> d!215104 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!178 thiss!22590 rules!3103 lt!261545 lt!261534 suffix!1342 (rule!2015 token!491)) lt!261665)))

(declare-fun bs!71557 () Bool)

(assert (= bs!71557 d!215104))

(declare-fun m!879067 () Bool)

(assert (=> bs!71557 m!879067))

(assert (=> bs!71557 m!878695))

(assert (=> bs!71557 m!878623))

(declare-fun m!879069 () Bool)

(assert (=> bs!71557 m!879069))

(assert (=> bs!71557 m!878621))

(assert (=> bs!71557 m!878623))

(assert (=> bs!71557 m!878685))

(assert (=> b!610915 d!215104))

(declare-fun d!215106 () Bool)

(declare-fun fromListB!620 (List!6124) BalanceConc!3892)

(assert (=> d!215106 (= (seqFromList!1401 lt!261545) (fromListB!620 lt!261545))))

(declare-fun bs!71558 () Bool)

(assert (= bs!71558 d!215106))

(declare-fun m!879075 () Bool)

(assert (=> bs!71558 m!879075))

(assert (=> b!610915 d!215106))

(declare-fun bs!71559 () Bool)

(declare-fun d!215110 () Bool)

(assert (= bs!71559 (and d!215110 d!215030)))

(declare-fun lambda!16173 () Int)

(assert (=> bs!71559 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16173 lambda!16172))))

(declare-fun b!611211 () Bool)

(declare-fun e!370452 () Bool)

(assert (=> b!611211 (= e!370452 true)))

(assert (=> d!215110 e!370452))

(assert (= d!215110 b!611211))

(assert (=> b!611211 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (dynLambda!3552 order!4879 lambda!16173))))

(assert (=> b!611211 (< (dynLambda!3553 order!4881 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (dynLambda!3552 order!4879 lambda!16173))))

(assert (=> d!215110 (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))) (list!2572 lt!261539))))

(declare-fun lt!261666 () Unit!11182)

(assert (=> d!215110 (= lt!261666 (ForallOf!127 lambda!16173 lt!261539))))

(assert (=> d!215110 (= (lemmaSemiInverse!255 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261539) lt!261666)))

(declare-fun b_lambda!24227 () Bool)

(assert (=> (not b_lambda!24227) (not d!215110)))

(declare-fun tb!53343 () Bool)

(declare-fun t!80940 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80940) tb!53343))

(declare-fun tp!189214 () Bool)

(declare-fun b!611212 () Bool)

(declare-fun e!370453 () Bool)

(assert (=> b!611212 (= e!370453 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))) tp!189214))))

(declare-fun result!60070 () Bool)

(assert (=> tb!53343 (= result!60070 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))) e!370453))))

(assert (= tb!53343 b!611212))

(declare-fun m!879077 () Bool)

(assert (=> b!611212 m!879077))

(declare-fun m!879079 () Bool)

(assert (=> tb!53343 m!879079))

(assert (=> d!215110 t!80940))

(declare-fun b_and!60515 () Bool)

(assert (= b_and!60507 (and (=> t!80940 result!60070) b_and!60515)))

(declare-fun tb!53345 () Bool)

(declare-fun t!80942 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80942) tb!53345))

(declare-fun result!60072 () Bool)

(assert (= result!60072 result!60070))

(assert (=> d!215110 t!80942))

(declare-fun b_and!60517 () Bool)

(assert (= b_and!60509 (and (=> t!80942 result!60072) b_and!60517)))

(declare-fun b_lambda!24229 () Bool)

(assert (=> (not b_lambda!24229) (not d!215110)))

(declare-fun tb!53347 () Bool)

(declare-fun t!80944 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80944) tb!53347))

(declare-fun result!60074 () Bool)

(assert (=> tb!53347 (= result!60074 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))

(declare-fun m!879081 () Bool)

(assert (=> tb!53347 m!879081))

(assert (=> d!215110 t!80944))

(declare-fun b_and!60519 () Bool)

(assert (= b_and!60511 (and (=> t!80944 result!60074) b_and!60519)))

(declare-fun tb!53349 () Bool)

(declare-fun t!80946 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80946) tb!53349))

(declare-fun result!60076 () Bool)

(assert (= result!60076 result!60074))

(assert (=> d!215110 t!80946))

(declare-fun b_and!60521 () Bool)

(assert (= b_and!60513 (and (=> t!80946 result!60076) b_and!60521)))

(declare-fun m!879085 () Bool)

(assert (=> d!215110 m!879085))

(declare-fun m!879087 () Bool)

(assert (=> d!215110 m!879087))

(declare-fun m!879089 () Bool)

(assert (=> d!215110 m!879089))

(declare-fun m!879091 () Bool)

(assert (=> d!215110 m!879091))

(assert (=> d!215110 m!879089))

(assert (=> d!215110 m!879085))

(declare-fun m!879093 () Bool)

(assert (=> d!215110 m!879093))

(assert (=> b!610915 d!215110))

(declare-fun d!215114 () Bool)

(assert (=> d!215114 (= (apply!1478 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 input!2705)) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705)))))

(declare-fun b_lambda!24231 () Bool)

(assert (=> (not b_lambda!24231) (not d!215114)))

(declare-fun tb!53351 () Bool)

(declare-fun t!80948 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!80948) tb!53351))

(declare-fun result!60078 () Bool)

(assert (=> tb!53351 (= result!60078 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705))))))

(declare-fun m!879099 () Bool)

(assert (=> tb!53351 m!879099))

(assert (=> d!215114 t!80948))

(declare-fun b_and!60523 () Bool)

(assert (= b_and!60519 (and (=> t!80948 result!60078) b_and!60523)))

(declare-fun t!80950 () Bool)

(declare-fun tb!53353 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!80950) tb!53353))

(declare-fun result!60080 () Bool)

(assert (= result!60080 result!60078))

(assert (=> d!215114 t!80950))

(declare-fun b_and!60525 () Bool)

(assert (= b_and!60521 (and (=> t!80950 result!60080) b_and!60525)))

(assert (=> d!215114 m!878559))

(declare-fun m!879101 () Bool)

(assert (=> d!215114 m!879101))

(assert (=> b!610894 d!215114))

(declare-fun d!215118 () Bool)

(assert (=> d!215118 (= (seqFromList!1401 input!2705) (fromListB!620 input!2705))))

(declare-fun bs!71561 () Bool)

(assert (= bs!71561 d!215118))

(declare-fun m!879103 () Bool)

(assert (=> bs!71561 m!879103))

(assert (=> b!610894 d!215118))

(declare-fun d!215120 () Bool)

(declare-fun lt!261671 () Int)

(assert (=> d!215120 (>= lt!261671 0)))

(declare-fun e!370458 () Int)

(assert (=> d!215120 (= lt!261671 e!370458)))

(declare-fun c!112967 () Bool)

(assert (=> d!215120 (= c!112967 ((_ is Nil!6114) input!2705))))

(assert (=> d!215120 (= (size!4808 input!2705) lt!261671)))

(declare-fun b!611215 () Bool)

(assert (=> b!611215 (= e!370458 0)))

(declare-fun b!611216 () Bool)

(assert (=> b!611216 (= e!370458 (+ 1 (size!4808 (t!80905 input!2705))))))

(assert (= (and d!215120 c!112967) b!611215))

(assert (= (and d!215120 (not c!112967)) b!611216))

(declare-fun m!879105 () Bool)

(assert (=> b!611216 m!879105))

(assert (=> b!610894 d!215120))

(declare-fun d!215124 () Bool)

(declare-fun lt!261672 () List!6124)

(assert (=> d!215124 (= (++!1713 input!2705 lt!261672) lt!261534)))

(declare-fun e!370459 () List!6124)

(assert (=> d!215124 (= lt!261672 e!370459)))

(declare-fun c!112968 () Bool)

(assert (=> d!215124 (= c!112968 ((_ is Cons!6114) input!2705))))

(assert (=> d!215124 (>= (size!4808 lt!261534) (size!4808 input!2705))))

(assert (=> d!215124 (= (getSuffix!370 lt!261534 input!2705) lt!261672)))

(declare-fun b!611217 () Bool)

(assert (=> b!611217 (= e!370459 (getSuffix!370 (tail!821 lt!261534) (t!80905 input!2705)))))

(declare-fun b!611218 () Bool)

(assert (=> b!611218 (= e!370459 lt!261534)))

(assert (= (and d!215124 c!112968) b!611217))

(assert (= (and d!215124 (not c!112968)) b!611218))

(declare-fun m!879107 () Bool)

(assert (=> d!215124 m!879107))

(assert (=> d!215124 m!878865))

(assert (=> d!215124 m!878563))

(assert (=> b!611217 m!878867))

(assert (=> b!611217 m!878867))

(declare-fun m!879109 () Bool)

(assert (=> b!611217 m!879109))

(assert (=> b!610894 d!215124))

(declare-fun d!215126 () Bool)

(assert (=> d!215126 (= (inv!7775 (tag!1487 (h!11516 rules!3103))) (= (mod (str.len (value!39778 (tag!1487 (h!11516 rules!3103)))) 2) 0))))

(assert (=> b!610895 d!215126))

(declare-fun d!215128 () Bool)

(declare-fun res!265669 () Bool)

(declare-fun e!370460 () Bool)

(assert (=> d!215128 (=> (not res!265669) (not e!370460))))

(assert (=> d!215128 (= res!265669 (semiInverseModEq!492 (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (h!11516 rules!3103)))))))

(assert (=> d!215128 (= (inv!7778 (transformation!1225 (h!11516 rules!3103))) e!370460)))

(declare-fun b!611219 () Bool)

(assert (=> b!611219 (= e!370460 (equivClasses!475 (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (h!11516 rules!3103)))))))

(assert (= (and d!215128 res!265669) b!611219))

(declare-fun m!879111 () Bool)

(assert (=> d!215128 m!879111))

(declare-fun m!879113 () Bool)

(assert (=> b!611219 m!879113))

(assert (=> b!610895 d!215128))

(declare-fun b!611246 () Bool)

(declare-fun lt!261675 () List!6124)

(declare-fun e!370474 () Bool)

(assert (=> b!611246 (= e!370474 (or (not (= suffix!1342 Nil!6114)) (= lt!261675 lt!261545)))))

(declare-fun b!611244 () Bool)

(declare-fun e!370475 () List!6124)

(assert (=> b!611244 (= e!370475 (Cons!6114 (h!11515 lt!261545) (++!1713 (t!80905 lt!261545) suffix!1342)))))

(declare-fun b!611245 () Bool)

(declare-fun res!265677 () Bool)

(assert (=> b!611245 (=> (not res!265677) (not e!370474))))

(assert (=> b!611245 (= res!265677 (= (size!4808 lt!261675) (+ (size!4808 lt!261545) (size!4808 suffix!1342))))))

(declare-fun b!611243 () Bool)

(assert (=> b!611243 (= e!370475 suffix!1342)))

(declare-fun d!215130 () Bool)

(assert (=> d!215130 e!370474))

(declare-fun res!265678 () Bool)

(assert (=> d!215130 (=> (not res!265678) (not e!370474))))

(declare-fun content!1117 (List!6124) (InoxSet C!4040))

(assert (=> d!215130 (= res!265678 (= (content!1117 lt!261675) ((_ map or) (content!1117 lt!261545) (content!1117 suffix!1342))))))

(assert (=> d!215130 (= lt!261675 e!370475)))

(declare-fun c!112977 () Bool)

(assert (=> d!215130 (= c!112977 ((_ is Nil!6114) lt!261545))))

(assert (=> d!215130 (= (++!1713 lt!261545 suffix!1342) lt!261675)))

(assert (= (and d!215130 c!112977) b!611243))

(assert (= (and d!215130 (not c!112977)) b!611244))

(assert (= (and d!215130 res!265678) b!611245))

(assert (= (and b!611245 res!265677) b!611246))

(declare-fun m!879121 () Bool)

(assert (=> b!611244 m!879121))

(declare-fun m!879123 () Bool)

(assert (=> b!611245 m!879123))

(assert (=> b!611245 m!878685))

(declare-fun m!879125 () Bool)

(assert (=> b!611245 m!879125))

(declare-fun m!879127 () Bool)

(assert (=> d!215130 m!879127))

(declare-fun m!879129 () Bool)

(assert (=> d!215130 m!879129))

(declare-fun m!879131 () Bool)

(assert (=> d!215130 m!879131))

(assert (=> b!610916 d!215130))

(declare-fun d!215134 () Bool)

(declare-fun list!2574 (Conc!1942) List!6124)

(assert (=> d!215134 (= (list!2572 (charsOf!854 token!491)) (list!2574 (c!112918 (charsOf!854 token!491))))))

(declare-fun bs!71562 () Bool)

(assert (= bs!71562 d!215134))

(declare-fun m!879133 () Bool)

(assert (=> bs!71562 m!879133))

(assert (=> b!610917 d!215134))

(declare-fun d!215136 () Bool)

(declare-fun lt!261678 () BalanceConc!3892)

(assert (=> d!215136 (= (list!2572 lt!261678) (originalCharacters!1264 token!491))))

(assert (=> d!215136 (= lt!261678 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))))

(assert (=> d!215136 (= (charsOf!854 token!491) lt!261678)))

(declare-fun b_lambda!24233 () Bool)

(assert (=> (not b_lambda!24233) (not d!215136)))

(assert (=> d!215136 t!80908))

(declare-fun b_and!60527 () Bool)

(assert (= b_and!60515 (and (=> t!80908 result!60030) b_and!60527)))

(assert (=> d!215136 t!80910))

(declare-fun b_and!60529 () Bool)

(assert (= b_and!60517 (and (=> t!80910 result!60034) b_and!60529)))

(declare-fun m!879135 () Bool)

(assert (=> d!215136 m!879135))

(assert (=> d!215136 m!878747))

(assert (=> b!610917 d!215136))

(declare-fun d!215138 () Bool)

(assert (=> d!215138 (= (get!2352 lt!261527) (v!16484 lt!261527))))

(assert (=> b!610896 d!215138))

(declare-fun d!215140 () Bool)

(declare-fun e!370496 () Bool)

(assert (=> d!215140 e!370496))

(declare-fun c!112985 () Bool)

(assert (=> d!215140 (= c!112985 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun lt!261685 () Bool)

(declare-fun e!370490 () Bool)

(assert (=> d!215140 (= lt!261685 e!370490)))

(declare-fun c!112986 () Bool)

(assert (=> d!215140 (= c!112986 (isEmpty!4413 input!2705))))

(declare-fun validRegex!546 (Regex!1559) Bool)

(assert (=> d!215140 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215140 (= (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705) lt!261685)))

(declare-fun b!611275 () Bool)

(declare-fun e!370493 () Bool)

(assert (=> b!611275 (= e!370496 e!370493)))

(declare-fun c!112984 () Bool)

(assert (=> b!611275 (= c!112984 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611276 () Bool)

(declare-fun e!370494 () Bool)

(declare-fun e!370492 () Bool)

(assert (=> b!611276 (= e!370494 e!370492)))

(declare-fun res!265701 () Bool)

(assert (=> b!611276 (=> res!265701 e!370492)))

(declare-fun call!40851 () Bool)

(assert (=> b!611276 (= res!265701 call!40851)))

(declare-fun b!611277 () Bool)

(assert (=> b!611277 (= e!370496 (= lt!261685 call!40851))))

(declare-fun b!611278 () Bool)

(declare-fun res!265702 () Bool)

(declare-fun e!370495 () Bool)

(assert (=> b!611278 (=> res!265702 e!370495)))

(assert (=> b!611278 (= res!265702 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(assert (=> b!611278 (= e!370493 e!370495)))

(declare-fun b!611279 () Bool)

(declare-fun res!265699 () Bool)

(declare-fun e!370491 () Bool)

(assert (=> b!611279 (=> (not res!265699) (not e!370491))))

(assert (=> b!611279 (= res!265699 (isEmpty!4413 (tail!821 input!2705)))))

(declare-fun b!611280 () Bool)

(declare-fun res!265700 () Bool)

(assert (=> b!611280 (=> res!265700 e!370492)))

(assert (=> b!611280 (= res!265700 (not (isEmpty!4413 (tail!821 input!2705))))))

(declare-fun b!611281 () Bool)

(declare-fun res!265697 () Bool)

(assert (=> b!611281 (=> res!265697 e!370495)))

(assert (=> b!611281 (= res!265697 e!370491)))

(declare-fun res!265696 () Bool)

(assert (=> b!611281 (=> (not res!265696) (not e!370491))))

(assert (=> b!611281 (= res!265696 lt!261685)))

(declare-fun b!611282 () Bool)

(declare-fun res!265698 () Bool)

(assert (=> b!611282 (=> (not res!265698) (not e!370491))))

(assert (=> b!611282 (= res!265698 (not call!40851))))

(declare-fun b!611283 () Bool)

(declare-fun head!1292 (List!6124) C!4040)

(assert (=> b!611283 (= e!370491 (= (head!1292 input!2705) (c!112917 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun b!611284 () Bool)

(assert (=> b!611284 (= e!370495 e!370494)))

(declare-fun res!265695 () Bool)

(assert (=> b!611284 (=> (not res!265695) (not e!370494))))

(assert (=> b!611284 (= res!265695 (not lt!261685))))

(declare-fun b!611285 () Bool)

(assert (=> b!611285 (= e!370493 (not lt!261685))))

(declare-fun b!611286 () Bool)

(declare-fun derivativeStep!336 (Regex!1559 C!4040) Regex!1559)

(assert (=> b!611286 (= e!370490 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705)) (tail!821 input!2705)))))

(declare-fun bm!40846 () Bool)

(assert (=> bm!40846 (= call!40851 (isEmpty!4413 input!2705))))

(declare-fun b!611287 () Bool)

(declare-fun nullable!451 (Regex!1559) Bool)

(assert (=> b!611287 (= e!370490 (nullable!451 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611288 () Bool)

(assert (=> b!611288 (= e!370492 (not (= (head!1292 input!2705) (c!112917 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))))

(assert (= (and d!215140 c!112986) b!611287))

(assert (= (and d!215140 (not c!112986)) b!611286))

(assert (= (and d!215140 c!112985) b!611277))

(assert (= (and d!215140 (not c!112985)) b!611275))

(assert (= (and b!611275 c!112984) b!611285))

(assert (= (and b!611275 (not c!112984)) b!611278))

(assert (= (and b!611278 (not res!265702)) b!611281))

(assert (= (and b!611281 res!265696) b!611282))

(assert (= (and b!611282 res!265698) b!611279))

(assert (= (and b!611279 res!265699) b!611283))

(assert (= (and b!611281 (not res!265697)) b!611284))

(assert (= (and b!611284 res!265695) b!611276))

(assert (= (and b!611276 (not res!265701)) b!611280))

(assert (= (and b!611280 (not res!265700)) b!611288))

(assert (= (or b!611277 b!611276 b!611282) bm!40846))

(assert (=> bm!40846 m!878569))

(declare-fun m!879147 () Bool)

(assert (=> b!611283 m!879147))

(declare-fun m!879149 () Bool)

(assert (=> b!611279 m!879149))

(assert (=> b!611279 m!879149))

(declare-fun m!879151 () Bool)

(assert (=> b!611279 m!879151))

(assert (=> b!611286 m!879147))

(assert (=> b!611286 m!879147))

(declare-fun m!879153 () Bool)

(assert (=> b!611286 m!879153))

(assert (=> b!611286 m!879149))

(assert (=> b!611286 m!879153))

(assert (=> b!611286 m!879149))

(declare-fun m!879155 () Bool)

(assert (=> b!611286 m!879155))

(assert (=> b!611280 m!879149))

(assert (=> b!611280 m!879149))

(assert (=> b!611280 m!879151))

(declare-fun m!879157 () Bool)

(assert (=> b!611287 m!879157))

(assert (=> b!611288 m!879147))

(assert (=> d!215140 m!878569))

(declare-fun m!879159 () Bool)

(assert (=> d!215140 m!879159))

(assert (=> b!610897 d!215140))

(declare-fun d!215148 () Bool)

(assert (=> d!215148 (not (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705))))

(declare-fun lt!261688 () Unit!11182)

(declare-fun choose!4495 (LexerInterface!1111 List!6125 Rule!2250 List!6124 List!6124 Rule!2250) Unit!11182)

(assert (=> d!215148 (= lt!261688 (choose!4495 thiss!22590 rules!3103 (rule!2015 token!491) input!2705 lt!261534 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215148 (isPrefix!853 input!2705 lt!261534)))

(assert (=> d!215148 (= (lemmaMaxPrefNoSmallerRuleMatches!28 thiss!22590 rules!3103 (rule!2015 token!491) input!2705 lt!261534 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261688)))

(declare-fun bs!71566 () Bool)

(assert (= bs!71566 d!215148))

(assert (=> bs!71566 m!878633))

(declare-fun m!879161 () Bool)

(assert (=> bs!71566 m!879161))

(assert (=> bs!71566 m!878689))

(assert (=> b!610897 d!215148))

(declare-fun d!215150 () Bool)

(declare-fun res!265705 () Bool)

(declare-fun e!370499 () Bool)

(assert (=> d!215150 (=> (not res!265705) (not e!370499))))

(declare-fun rulesValid!456 (LexerInterface!1111 List!6125) Bool)

(assert (=> d!215150 (= res!265705 (rulesValid!456 thiss!22590 rules!3103))))

(assert (=> d!215150 (= (rulesInvariant!1074 thiss!22590 rules!3103) e!370499)))

(declare-fun b!611291 () Bool)

(declare-datatypes ((List!6127 0))(
  ( (Nil!6117) (Cons!6117 (h!11518 String!7989) (t!80992 List!6127)) )
))
(declare-fun noDuplicateTag!456 (LexerInterface!1111 List!6125 List!6127) Bool)

(assert (=> b!611291 (= e!370499 (noDuplicateTag!456 thiss!22590 rules!3103 Nil!6117))))

(assert (= (and d!215150 res!265705) b!611291))

(declare-fun m!879163 () Bool)

(assert (=> d!215150 m!879163))

(declare-fun m!879165 () Bool)

(assert (=> b!611291 m!879165))

(assert (=> b!610899 d!215150))

(declare-fun b!611302 () Bool)

(declare-fun e!370507 () Bool)

(assert (=> b!611302 (= e!370507 (isPrefix!853 (tail!821 input!2705) (tail!821 lt!261534)))))

(declare-fun b!611300 () Bool)

(declare-fun e!370508 () Bool)

(assert (=> b!611300 (= e!370508 e!370507)))

(declare-fun res!265716 () Bool)

(assert (=> b!611300 (=> (not res!265716) (not e!370507))))

(assert (=> b!611300 (= res!265716 (not ((_ is Nil!6114) lt!261534)))))

(declare-fun b!611301 () Bool)

(declare-fun res!265717 () Bool)

(assert (=> b!611301 (=> (not res!265717) (not e!370507))))

(assert (=> b!611301 (= res!265717 (= (head!1292 input!2705) (head!1292 lt!261534)))))

(declare-fun d!215152 () Bool)

(declare-fun e!370506 () Bool)

(assert (=> d!215152 e!370506))

(declare-fun res!265714 () Bool)

(assert (=> d!215152 (=> res!265714 e!370506)))

(declare-fun lt!261691 () Bool)

(assert (=> d!215152 (= res!265714 (not lt!261691))))

(assert (=> d!215152 (= lt!261691 e!370508)))

(declare-fun res!265715 () Bool)

(assert (=> d!215152 (=> res!265715 e!370508)))

(assert (=> d!215152 (= res!265715 ((_ is Nil!6114) input!2705))))

(assert (=> d!215152 (= (isPrefix!853 input!2705 lt!261534) lt!261691)))

(declare-fun b!611303 () Bool)

(assert (=> b!611303 (= e!370506 (>= (size!4808 lt!261534) (size!4808 input!2705)))))

(assert (= (and d!215152 (not res!265715)) b!611300))

(assert (= (and b!611300 res!265716) b!611301))

(assert (= (and b!611301 res!265717) b!611302))

(assert (= (and d!215152 (not res!265714)) b!611303))

(assert (=> b!611302 m!879149))

(assert (=> b!611302 m!878867))

(assert (=> b!611302 m!879149))

(assert (=> b!611302 m!878867))

(declare-fun m!879167 () Bool)

(assert (=> b!611302 m!879167))

(assert (=> b!611301 m!879147))

(declare-fun m!879169 () Bool)

(assert (=> b!611301 m!879169))

(assert (=> b!611303 m!878865))

(assert (=> b!611303 m!878563))

(assert (=> b!610920 d!215152))

(declare-fun d!215154 () Bool)

(declare-fun res!265722 () Bool)

(declare-fun e!370511 () Bool)

(assert (=> d!215154 (=> (not res!265722) (not e!370511))))

(assert (=> d!215154 (= res!265722 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(assert (=> d!215154 (= (ruleValid!423 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554)))) e!370511)))

(declare-fun b!611308 () Bool)

(declare-fun res!265723 () Bool)

(assert (=> b!611308 (=> (not res!265723) (not e!370511))))

(assert (=> b!611308 (= res!265723 (not (nullable!451 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun b!611309 () Bool)

(assert (=> b!611309 (= e!370511 (not (= (tag!1487 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (String!7990 ""))))))

(assert (= (and d!215154 res!265722) b!611308))

(assert (= (and b!611308 res!265723) b!611309))

(assert (=> d!215154 m!879159))

(assert (=> b!611308 m!879157))

(assert (=> b!610920 d!215154))

(declare-fun d!215156 () Bool)

(assert (=> d!215156 (and (= lt!261545 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!261694 () Unit!11182)

(declare-fun choose!4496 (List!6124 List!6124 List!6124 List!6124) Unit!11182)

(assert (=> d!215156 (= lt!261694 (choose!4496 lt!261545 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!215156 (= (++!1713 lt!261545 suffix!1342) (++!1713 input!2705 suffix!1342))))

(assert (=> d!215156 (= (lemmaConcatSameAndSameSizesThenSameLists!298 lt!261545 suffix!1342 input!2705 suffix!1342) lt!261694)))

(declare-fun bs!71567 () Bool)

(assert (= bs!71567 d!215156))

(declare-fun m!879171 () Bool)

(assert (=> bs!71567 m!879171))

(assert (=> bs!71567 m!878567))

(assert (=> bs!71567 m!878575))

(assert (=> b!610920 d!215156))

(declare-fun d!215158 () Bool)

(declare-fun lt!261695 () BalanceConc!3892)

(assert (=> d!215158 (= (list!2572 lt!261695) (originalCharacters!1264 (_1!3755 (v!16484 lt!261554))))))

(assert (=> d!215158 (= lt!261695 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215158 (= (charsOf!854 (_1!3755 (v!16484 lt!261554))) lt!261695)))

(declare-fun b_lambda!24235 () Bool)

(assert (=> (not b_lambda!24235) (not d!215158)))

(declare-fun t!80952 () Bool)

(declare-fun tb!53355 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80952) tb!53355))

(declare-fun b!611310 () Bool)

(declare-fun e!370512 () Bool)

(declare-fun tp!189215 () Bool)

(assert (=> b!611310 (= e!370512 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))) tp!189215))))

(declare-fun result!60082 () Bool)

(assert (=> tb!53355 (= result!60082 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))) e!370512))))

(assert (= tb!53355 b!611310))

(declare-fun m!879173 () Bool)

(assert (=> b!611310 m!879173))

(declare-fun m!879175 () Bool)

(assert (=> tb!53355 m!879175))

(assert (=> d!215158 t!80952))

(declare-fun b_and!60531 () Bool)

(assert (= b_and!60527 (and (=> t!80952 result!60082) b_and!60531)))

(declare-fun tb!53357 () Bool)

(declare-fun t!80954 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80954) tb!53357))

(declare-fun result!60084 () Bool)

(assert (= result!60084 result!60082))

(assert (=> d!215158 t!80954))

(declare-fun b_and!60533 () Bool)

(assert (= b_and!60529 (and (=> t!80954 result!60084) b_and!60533)))

(declare-fun m!879177 () Bool)

(assert (=> d!215158 m!879177))

(declare-fun m!879179 () Bool)

(assert (=> d!215158 m!879179))

(assert (=> b!610920 d!215158))

(declare-fun d!215160 () Bool)

(assert (=> d!215160 (ruleValid!423 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))))))

(declare-fun lt!261698 () Unit!11182)

(declare-fun choose!4499 (LexerInterface!1111 Rule!2250 List!6125) Unit!11182)

(assert (=> d!215160 (= lt!261698 (choose!4499 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) rules!3103))))

(assert (=> d!215160 (contains!1441 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554))))))

(assert (=> d!215160 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!270 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) rules!3103) lt!261698)))

(declare-fun bs!71568 () Bool)

(assert (= bs!71568 d!215160))

(assert (=> bs!71568 m!878651))

(declare-fun m!879181 () Bool)

(assert (=> bs!71568 m!879181))

(assert (=> bs!71568 m!878605))

(assert (=> b!610920 d!215160))

(declare-fun d!215162 () Bool)

(assert (=> d!215162 (= (list!2572 (charsOf!854 (_1!3755 (v!16484 lt!261554)))) (list!2574 (c!112918 (charsOf!854 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun bs!71569 () Bool)

(assert (= bs!71569 d!215162))

(declare-fun m!879183 () Bool)

(assert (=> bs!71569 m!879183))

(assert (=> b!610920 d!215162))

(declare-fun b!611313 () Bool)

(declare-fun e!370514 () Bool)

(assert (=> b!611313 (= e!370514 (isPrefix!853 (tail!821 input!2705) (tail!821 input!2705)))))

(declare-fun b!611311 () Bool)

(declare-fun e!370515 () Bool)

(assert (=> b!611311 (= e!370515 e!370514)))

(declare-fun res!265726 () Bool)

(assert (=> b!611311 (=> (not res!265726) (not e!370514))))

(assert (=> b!611311 (= res!265726 (not ((_ is Nil!6114) input!2705)))))

(declare-fun b!611312 () Bool)

(declare-fun res!265727 () Bool)

(assert (=> b!611312 (=> (not res!265727) (not e!370514))))

(assert (=> b!611312 (= res!265727 (= (head!1292 input!2705) (head!1292 input!2705)))))

(declare-fun d!215164 () Bool)

(declare-fun e!370513 () Bool)

(assert (=> d!215164 e!370513))

(declare-fun res!265724 () Bool)

(assert (=> d!215164 (=> res!265724 e!370513)))

(declare-fun lt!261699 () Bool)

(assert (=> d!215164 (= res!265724 (not lt!261699))))

(assert (=> d!215164 (= lt!261699 e!370515)))

(declare-fun res!265725 () Bool)

(assert (=> d!215164 (=> res!265725 e!370515)))

(assert (=> d!215164 (= res!265725 ((_ is Nil!6114) input!2705))))

(assert (=> d!215164 (= (isPrefix!853 input!2705 input!2705) lt!261699)))

(declare-fun b!611314 () Bool)

(assert (=> b!611314 (= e!370513 (>= (size!4808 input!2705) (size!4808 input!2705)))))

(assert (= (and d!215164 (not res!265725)) b!611311))

(assert (= (and b!611311 res!265726) b!611312))

(assert (= (and b!611312 res!265727) b!611313))

(assert (= (and d!215164 (not res!265724)) b!611314))

(assert (=> b!611313 m!879149))

(assert (=> b!611313 m!879149))

(assert (=> b!611313 m!879149))

(assert (=> b!611313 m!879149))

(declare-fun m!879185 () Bool)

(assert (=> b!611313 m!879185))

(assert (=> b!611312 m!879147))

(assert (=> b!611312 m!879147))

(assert (=> b!611314 m!878563))

(assert (=> b!611314 m!878563))

(assert (=> b!610920 d!215164))

(declare-fun d!215166 () Bool)

(declare-fun res!265728 () Bool)

(declare-fun e!370516 () Bool)

(assert (=> d!215166 (=> (not res!265728) (not e!370516))))

(assert (=> d!215166 (= res!265728 (validRegex!546 (regex!1225 (rule!2015 token!491))))))

(assert (=> d!215166 (= (ruleValid!423 thiss!22590 (rule!2015 token!491)) e!370516)))

(declare-fun b!611315 () Bool)

(declare-fun res!265729 () Bool)

(assert (=> b!611315 (=> (not res!265729) (not e!370516))))

(assert (=> b!611315 (= res!265729 (not (nullable!451 (regex!1225 (rule!2015 token!491)))))))

(declare-fun b!611316 () Bool)

(assert (=> b!611316 (= e!370516 (not (= (tag!1487 (rule!2015 token!491)) (String!7990 ""))))))

(assert (= (and d!215166 res!265728) b!611315))

(assert (= (and b!611315 res!265729) b!611316))

(declare-fun m!879187 () Bool)

(assert (=> d!215166 m!879187))

(declare-fun m!879189 () Bool)

(assert (=> b!611315 m!879189))

(assert (=> b!610920 d!215166))

(declare-fun d!215168 () Bool)

(assert (=> d!215168 (= (_2!3755 (v!16484 lt!261554)) lt!261552)))

(declare-fun lt!261700 () Unit!11182)

(assert (=> d!215168 (= lt!261700 (choose!4489 lt!261518 (_2!3755 (v!16484 lt!261554)) lt!261518 lt!261552 input!2705))))

(assert (=> d!215168 (isPrefix!853 lt!261518 input!2705)))

(assert (=> d!215168 (= (lemmaSamePrefixThenSameSuffix!566 lt!261518 (_2!3755 (v!16484 lt!261554)) lt!261518 lt!261552 input!2705) lt!261700)))

(declare-fun bs!71570 () Bool)

(assert (= bs!71570 d!215168))

(declare-fun m!879191 () Bool)

(assert (=> bs!71570 m!879191))

(declare-fun m!879193 () Bool)

(assert (=> bs!71570 m!879193))

(assert (=> b!610920 d!215168))

(declare-fun d!215170 () Bool)

(assert (=> d!215170 (isPrefix!853 lt!261518 (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554))))))

(declare-fun lt!261703 () Unit!11182)

(declare-fun choose!4500 (List!6124 List!6124) Unit!11182)

(assert (=> d!215170 (= lt!261703 (choose!4500 lt!261518 (_2!3755 (v!16484 lt!261554))))))

(assert (=> d!215170 (= (lemmaConcatTwoListThenFirstIsPrefix!698 lt!261518 (_2!3755 (v!16484 lt!261554))) lt!261703)))

(declare-fun bs!71571 () Bool)

(assert (= bs!71571 d!215170))

(assert (=> bs!71571 m!878663))

(assert (=> bs!71571 m!878663))

(declare-fun m!879195 () Bool)

(assert (=> bs!71571 m!879195))

(declare-fun m!879197 () Bool)

(assert (=> bs!71571 m!879197))

(assert (=> b!610920 d!215170))

(declare-fun d!215172 () Bool)

(assert (=> d!215172 (isPrefix!853 input!2705 input!2705)))

(declare-fun lt!261706 () Unit!11182)

(declare-fun choose!4501 (List!6124 List!6124) Unit!11182)

(assert (=> d!215172 (= lt!261706 (choose!4501 input!2705 input!2705))))

(assert (=> d!215172 (= (lemmaIsPrefixRefl!589 input!2705 input!2705) lt!261706)))

(declare-fun bs!71572 () Bool)

(assert (= bs!71572 d!215172))

(assert (=> bs!71572 m!878661))

(declare-fun m!879199 () Bool)

(assert (=> bs!71572 m!879199))

(assert (=> b!610920 d!215172))

(declare-fun d!215174 () Bool)

(assert (=> d!215174 (= (size!4807 (_1!3755 (v!16484 lt!261554))) (size!4808 (originalCharacters!1264 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun Unit!11192 () Unit!11182)

(assert (=> d!215174 (= (lemmaCharactersSize!284 (_1!3755 (v!16484 lt!261554))) Unit!11192)))

(declare-fun bs!71573 () Bool)

(assert (= bs!71573 d!215174))

(assert (=> bs!71573 m!878607))

(assert (=> b!610920 d!215174))

(declare-fun d!215176 () Bool)

(assert (=> d!215176 (= (size!4807 token!491) (size!4808 (originalCharacters!1264 token!491)))))

(declare-fun Unit!11193 () Unit!11182)

(assert (=> d!215176 (= (lemmaCharactersSize!284 token!491) Unit!11193)))

(declare-fun bs!71574 () Bool)

(assert (= bs!71574 d!215176))

(assert (=> bs!71574 m!878693))

(assert (=> b!610920 d!215176))

(declare-fun b!611319 () Bool)

(declare-fun e!370518 () Bool)

(assert (=> b!611319 (= e!370518 (isPrefix!853 (tail!821 lt!261518) (tail!821 lt!261551)))))

(declare-fun b!611317 () Bool)

(declare-fun e!370519 () Bool)

(assert (=> b!611317 (= e!370519 e!370518)))

(declare-fun res!265732 () Bool)

(assert (=> b!611317 (=> (not res!265732) (not e!370518))))

(assert (=> b!611317 (= res!265732 (not ((_ is Nil!6114) lt!261551)))))

(declare-fun b!611318 () Bool)

(declare-fun res!265733 () Bool)

(assert (=> b!611318 (=> (not res!265733) (not e!370518))))

(assert (=> b!611318 (= res!265733 (= (head!1292 lt!261518) (head!1292 lt!261551)))))

(declare-fun d!215178 () Bool)

(declare-fun e!370517 () Bool)

(assert (=> d!215178 e!370517))

(declare-fun res!265730 () Bool)

(assert (=> d!215178 (=> res!265730 e!370517)))

(declare-fun lt!261707 () Bool)

(assert (=> d!215178 (= res!265730 (not lt!261707))))

(assert (=> d!215178 (= lt!261707 e!370519)))

(declare-fun res!265731 () Bool)

(assert (=> d!215178 (=> res!265731 e!370519)))

(assert (=> d!215178 (= res!265731 ((_ is Nil!6114) lt!261518))))

(assert (=> d!215178 (= (isPrefix!853 lt!261518 lt!261551) lt!261707)))

(declare-fun b!611320 () Bool)

(assert (=> b!611320 (= e!370517 (>= (size!4808 lt!261551) (size!4808 lt!261518)))))

(assert (= (and d!215178 (not res!265731)) b!611317))

(assert (= (and b!611317 res!265732) b!611318))

(assert (= (and b!611318 res!265733) b!611319))

(assert (= (and d!215178 (not res!265730)) b!611320))

(declare-fun m!879201 () Bool)

(assert (=> b!611319 m!879201))

(declare-fun m!879203 () Bool)

(assert (=> b!611319 m!879203))

(assert (=> b!611319 m!879201))

(assert (=> b!611319 m!879203))

(declare-fun m!879205 () Bool)

(assert (=> b!611319 m!879205))

(declare-fun m!879207 () Bool)

(assert (=> b!611318 m!879207))

(declare-fun m!879209 () Bool)

(assert (=> b!611318 m!879209))

(declare-fun m!879211 () Bool)

(assert (=> b!611320 m!879211))

(assert (=> b!611320 m!878645))

(assert (=> b!610920 d!215178))

(declare-fun b!611323 () Bool)

(declare-fun e!370521 () Bool)

(assert (=> b!611323 (= e!370521 (isPrefix!853 (tail!821 input!2705) (tail!821 lt!261553)))))

(declare-fun b!611321 () Bool)

(declare-fun e!370522 () Bool)

(assert (=> b!611321 (= e!370522 e!370521)))

(declare-fun res!265736 () Bool)

(assert (=> b!611321 (=> (not res!265736) (not e!370521))))

(assert (=> b!611321 (= res!265736 (not ((_ is Nil!6114) lt!261553)))))

(declare-fun b!611322 () Bool)

(declare-fun res!265737 () Bool)

(assert (=> b!611322 (=> (not res!265737) (not e!370521))))

(assert (=> b!611322 (= res!265737 (= (head!1292 input!2705) (head!1292 lt!261553)))))

(declare-fun d!215180 () Bool)

(declare-fun e!370520 () Bool)

(assert (=> d!215180 e!370520))

(declare-fun res!265734 () Bool)

(assert (=> d!215180 (=> res!265734 e!370520)))

(declare-fun lt!261708 () Bool)

(assert (=> d!215180 (= res!265734 (not lt!261708))))

(assert (=> d!215180 (= lt!261708 e!370522)))

(declare-fun res!265735 () Bool)

(assert (=> d!215180 (=> res!265735 e!370522)))

(assert (=> d!215180 (= res!265735 ((_ is Nil!6114) input!2705))))

(assert (=> d!215180 (= (isPrefix!853 input!2705 lt!261553) lt!261708)))

(declare-fun b!611324 () Bool)

(assert (=> b!611324 (= e!370520 (>= (size!4808 lt!261553) (size!4808 input!2705)))))

(assert (= (and d!215180 (not res!265735)) b!611321))

(assert (= (and b!611321 res!265736) b!611322))

(assert (= (and b!611322 res!265737) b!611323))

(assert (= (and d!215180 (not res!265734)) b!611324))

(assert (=> b!611323 m!879149))

(declare-fun m!879213 () Bool)

(assert (=> b!611323 m!879213))

(assert (=> b!611323 m!879149))

(assert (=> b!611323 m!879213))

(declare-fun m!879215 () Bool)

(assert (=> b!611323 m!879215))

(assert (=> b!611322 m!879147))

(declare-fun m!879217 () Bool)

(assert (=> b!611322 m!879217))

(declare-fun m!879219 () Bool)

(assert (=> b!611324 m!879219))

(assert (=> b!611324 m!878563))

(assert (=> b!610920 d!215180))

(declare-fun d!215182 () Bool)

(declare-fun lt!261709 () Int)

(assert (=> d!215182 (>= lt!261709 0)))

(declare-fun e!370523 () Int)

(assert (=> d!215182 (= lt!261709 e!370523)))

(declare-fun c!112987 () Bool)

(assert (=> d!215182 (= c!112987 ((_ is Nil!6114) lt!261545))))

(assert (=> d!215182 (= (size!4808 lt!261545) lt!261709)))

(declare-fun b!611325 () Bool)

(assert (=> b!611325 (= e!370523 0)))

(declare-fun b!611326 () Bool)

(assert (=> b!611326 (= e!370523 (+ 1 (size!4808 (t!80905 lt!261545))))))

(assert (= (and d!215182 c!112987) b!611325))

(assert (= (and d!215182 (not c!112987)) b!611326))

(declare-fun m!879221 () Bool)

(assert (=> b!611326 m!879221))

(assert (=> b!610920 d!215182))

(declare-fun d!215184 () Bool)

(assert (=> d!215184 (isPrefix!853 lt!261545 (++!1713 lt!261545 suffix!1342))))

(declare-fun lt!261710 () Unit!11182)

(assert (=> d!215184 (= lt!261710 (choose!4500 lt!261545 suffix!1342))))

(assert (=> d!215184 (= (lemmaConcatTwoListThenFirstIsPrefix!698 lt!261545 suffix!1342) lt!261710)))

(declare-fun bs!71575 () Bool)

(assert (= bs!71575 d!215184))

(assert (=> bs!71575 m!878567))

(assert (=> bs!71575 m!878567))

(declare-fun m!879223 () Bool)

(assert (=> bs!71575 m!879223))

(declare-fun m!879225 () Bool)

(assert (=> bs!71575 m!879225))

(assert (=> b!610920 d!215184))

(declare-fun b!611329 () Bool)

(declare-fun e!370525 () Bool)

(assert (=> b!611329 (= e!370525 (isPrefix!853 (tail!821 lt!261545) (tail!821 lt!261553)))))

(declare-fun b!611327 () Bool)

(declare-fun e!370526 () Bool)

(assert (=> b!611327 (= e!370526 e!370525)))

(declare-fun res!265740 () Bool)

(assert (=> b!611327 (=> (not res!265740) (not e!370525))))

(assert (=> b!611327 (= res!265740 (not ((_ is Nil!6114) lt!261553)))))

(declare-fun b!611328 () Bool)

(declare-fun res!265741 () Bool)

(assert (=> b!611328 (=> (not res!265741) (not e!370525))))

(assert (=> b!611328 (= res!265741 (= (head!1292 lt!261545) (head!1292 lt!261553)))))

(declare-fun d!215186 () Bool)

(declare-fun e!370524 () Bool)

(assert (=> d!215186 e!370524))

(declare-fun res!265738 () Bool)

(assert (=> d!215186 (=> res!265738 e!370524)))

(declare-fun lt!261711 () Bool)

(assert (=> d!215186 (= res!265738 (not lt!261711))))

(assert (=> d!215186 (= lt!261711 e!370526)))

(declare-fun res!265739 () Bool)

(assert (=> d!215186 (=> res!265739 e!370526)))

(assert (=> d!215186 (= res!265739 ((_ is Nil!6114) lt!261545))))

(assert (=> d!215186 (= (isPrefix!853 lt!261545 lt!261553) lt!261711)))

(declare-fun b!611330 () Bool)

(assert (=> b!611330 (= e!370524 (>= (size!4808 lt!261553) (size!4808 lt!261545)))))

(assert (= (and d!215186 (not res!265739)) b!611327))

(assert (= (and b!611327 res!265740) b!611328))

(assert (= (and b!611328 res!265741) b!611329))

(assert (= (and d!215186 (not res!265738)) b!611330))

(declare-fun m!879227 () Bool)

(assert (=> b!611329 m!879227))

(assert (=> b!611329 m!879213))

(assert (=> b!611329 m!879227))

(assert (=> b!611329 m!879213))

(declare-fun m!879229 () Bool)

(assert (=> b!611329 m!879229))

(declare-fun m!879231 () Bool)

(assert (=> b!611328 m!879231))

(assert (=> b!611328 m!879217))

(assert (=> b!611330 m!879219))

(assert (=> b!611330 m!878685))

(assert (=> b!610920 d!215186))

(declare-fun d!215188 () Bool)

(declare-fun e!370529 () Bool)

(assert (=> d!215188 e!370529))

(declare-fun res!265744 () Bool)

(assert (=> d!215188 (=> (not res!265744) (not e!370529))))

(assert (=> d!215188 (= res!265744 (semiInverseModEq!492 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun Unit!11194 () Unit!11182)

(assert (=> d!215188 (= (lemmaInv!333 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) Unit!11194)))

(declare-fun b!611333 () Bool)

(assert (=> b!611333 (= e!370529 (equivClasses!475 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(assert (= (and d!215188 res!265744) b!611333))

(declare-fun m!879233 () Bool)

(assert (=> d!215188 m!879233))

(declare-fun m!879235 () Bool)

(assert (=> b!611333 m!879235))

(assert (=> b!610920 d!215188))

(declare-fun lt!261712 () List!6124)

(declare-fun b!611337 () Bool)

(declare-fun e!370530 () Bool)

(assert (=> b!611337 (= e!370530 (or (not (= (_2!3755 (v!16484 lt!261554)) Nil!6114)) (= lt!261712 lt!261518)))))

(declare-fun b!611335 () Bool)

(declare-fun e!370531 () List!6124)

(assert (=> b!611335 (= e!370531 (Cons!6114 (h!11515 lt!261518) (++!1713 (t!80905 lt!261518) (_2!3755 (v!16484 lt!261554)))))))

(declare-fun b!611336 () Bool)

(declare-fun res!265745 () Bool)

(assert (=> b!611336 (=> (not res!265745) (not e!370530))))

(assert (=> b!611336 (= res!265745 (= (size!4808 lt!261712) (+ (size!4808 lt!261518) (size!4808 (_2!3755 (v!16484 lt!261554))))))))

(declare-fun b!611334 () Bool)

(assert (=> b!611334 (= e!370531 (_2!3755 (v!16484 lt!261554)))))

(declare-fun d!215190 () Bool)

(assert (=> d!215190 e!370530))

(declare-fun res!265746 () Bool)

(assert (=> d!215190 (=> (not res!265746) (not e!370530))))

(assert (=> d!215190 (= res!265746 (= (content!1117 lt!261712) ((_ map or) (content!1117 lt!261518) (content!1117 (_2!3755 (v!16484 lt!261554))))))))

(assert (=> d!215190 (= lt!261712 e!370531)))

(declare-fun c!112988 () Bool)

(assert (=> d!215190 (= c!112988 ((_ is Nil!6114) lt!261518))))

(assert (=> d!215190 (= (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554))) lt!261712)))

(assert (= (and d!215190 c!112988) b!611334))

(assert (= (and d!215190 (not c!112988)) b!611335))

(assert (= (and d!215190 res!265746) b!611336))

(assert (= (and b!611336 res!265745) b!611337))

(declare-fun m!879237 () Bool)

(assert (=> b!611335 m!879237))

(declare-fun m!879239 () Bool)

(assert (=> b!611336 m!879239))

(assert (=> b!611336 m!878645))

(declare-fun m!879241 () Bool)

(assert (=> b!611336 m!879241))

(declare-fun m!879243 () Bool)

(assert (=> d!215190 m!879243))

(declare-fun m!879245 () Bool)

(assert (=> d!215190 m!879245))

(declare-fun m!879247 () Bool)

(assert (=> d!215190 m!879247))

(assert (=> b!610920 d!215190))

(declare-fun d!215192 () Bool)

(assert (=> d!215192 (ruleValid!423 thiss!22590 (rule!2015 token!491))))

(declare-fun lt!261713 () Unit!11182)

(assert (=> d!215192 (= lt!261713 (choose!4499 thiss!22590 (rule!2015 token!491) rules!3103))))

(assert (=> d!215192 (contains!1441 rules!3103 (rule!2015 token!491))))

(assert (=> d!215192 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!270 thiss!22590 (rule!2015 token!491) rules!3103) lt!261713)))

(declare-fun bs!71576 () Bool)

(assert (= bs!71576 d!215192))

(assert (=> bs!71576 m!878641))

(declare-fun m!879249 () Bool)

(assert (=> bs!71576 m!879249))

(assert (=> bs!71576 m!878581))

(assert (=> b!610920 d!215192))

(declare-fun d!215194 () Bool)

(assert (=> d!215194 (isPrefix!853 input!2705 (++!1713 input!2705 suffix!1342))))

(declare-fun lt!261714 () Unit!11182)

(assert (=> d!215194 (= lt!261714 (choose!4500 input!2705 suffix!1342))))

(assert (=> d!215194 (= (lemmaConcatTwoListThenFirstIsPrefix!698 input!2705 suffix!1342) lt!261714)))

(declare-fun bs!71577 () Bool)

(assert (= bs!71577 d!215194))

(assert (=> bs!71577 m!878575))

(assert (=> bs!71577 m!878575))

(declare-fun m!879251 () Bool)

(assert (=> bs!71577 m!879251))

(declare-fun m!879253 () Bool)

(assert (=> bs!71577 m!879253))

(assert (=> b!610920 d!215194))

(declare-fun d!215196 () Bool)

(assert (=> d!215196 (= (seqFromList!1401 lt!261518) (fromListB!620 lt!261518))))

(declare-fun bs!71578 () Bool)

(assert (= bs!71578 d!215196))

(declare-fun m!879255 () Bool)

(assert (=> bs!71578 m!879255))

(assert (=> b!610920 d!215196))

(declare-fun d!215198 () Bool)

(declare-fun lt!261715 () List!6124)

(assert (=> d!215198 (= (++!1713 lt!261518 lt!261715) input!2705)))

(declare-fun e!370532 () List!6124)

(assert (=> d!215198 (= lt!261715 e!370532)))

(declare-fun c!112989 () Bool)

(assert (=> d!215198 (= c!112989 ((_ is Cons!6114) lt!261518))))

(assert (=> d!215198 (>= (size!4808 input!2705) (size!4808 lt!261518))))

(assert (=> d!215198 (= (getSuffix!370 input!2705 lt!261518) lt!261715)))

(declare-fun b!611338 () Bool)

(assert (=> b!611338 (= e!370532 (getSuffix!370 (tail!821 input!2705) (t!80905 lt!261518)))))

(declare-fun b!611339 () Bool)

(assert (=> b!611339 (= e!370532 input!2705)))

(assert (= (and d!215198 c!112989) b!611338))

(assert (= (and d!215198 (not c!112989)) b!611339))

(declare-fun m!879257 () Bool)

(assert (=> d!215198 m!879257))

(assert (=> d!215198 m!878563))

(assert (=> d!215198 m!878645))

(assert (=> b!611338 m!879149))

(assert (=> b!611338 m!879149))

(declare-fun m!879259 () Bool)

(assert (=> b!611338 m!879259))

(assert (=> b!610920 d!215198))

(declare-fun d!215200 () Bool)

(declare-fun lt!261716 () Int)

(assert (=> d!215200 (>= lt!261716 0)))

(declare-fun e!370533 () Int)

(assert (=> d!215200 (= lt!261716 e!370533)))

(declare-fun c!112990 () Bool)

(assert (=> d!215200 (= c!112990 ((_ is Nil!6114) lt!261518))))

(assert (=> d!215200 (= (size!4808 lt!261518) lt!261716)))

(declare-fun b!611340 () Bool)

(assert (=> b!611340 (= e!370533 0)))

(declare-fun b!611341 () Bool)

(assert (=> b!611341 (= e!370533 (+ 1 (size!4808 (t!80905 lt!261518))))))

(assert (= (and d!215200 c!112990) b!611340))

(assert (= (and d!215200 (not c!112990)) b!611341))

(declare-fun m!879261 () Bool)

(assert (=> b!611341 m!879261))

(assert (=> b!610920 d!215200))

(declare-fun d!215202 () Bool)

(assert (=> d!215202 (= (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261539) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))

(declare-fun b_lambda!24237 () Bool)

(assert (=> (not b_lambda!24237) (not d!215202)))

(assert (=> d!215202 t!80944))

(declare-fun b_and!60535 () Bool)

(assert (= b_and!60523 (and (=> t!80944 result!60074) b_and!60535)))

(assert (=> d!215202 t!80946))

(declare-fun b_and!60537 () Bool)

(assert (= b_and!60525 (and (=> t!80946 result!60076) b_and!60537)))

(assert (=> d!215202 m!879089))

(assert (=> b!610920 d!215202))

(declare-fun d!215204 () Bool)

(declare-fun e!370534 () Bool)

(assert (=> d!215204 e!370534))

(declare-fun res!265747 () Bool)

(assert (=> d!215204 (=> (not res!265747) (not e!370534))))

(assert (=> d!215204 (= res!265747 (semiInverseModEq!492 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))))))

(declare-fun Unit!11195 () Unit!11182)

(assert (=> d!215204 (= (lemmaInv!333 (transformation!1225 (rule!2015 token!491))) Unit!11195)))

(declare-fun b!611342 () Bool)

(assert (=> b!611342 (= e!370534 (equivClasses!475 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))))))

(assert (= (and d!215204 res!265747) b!611342))

(assert (=> d!215204 m!878701))

(assert (=> b!611342 m!878703))

(assert (=> b!610920 d!215204))

(declare-fun d!215206 () Bool)

(declare-fun lt!261719 () Int)

(assert (=> d!215206 (>= lt!261719 0)))

(declare-fun e!370540 () Int)

(assert (=> d!215206 (= lt!261719 e!370540)))

(declare-fun c!112995 () Bool)

(assert (=> d!215206 (= c!112995 (and ((_ is Cons!6115) rules!3103) (= (h!11516 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(assert (=> d!215206 (contains!1441 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554))))))

(assert (=> d!215206 (= (getIndex!56 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261719)))

(declare-fun b!611353 () Bool)

(declare-fun e!370541 () Int)

(assert (=> b!611353 (= e!370541 (+ 1 (getIndex!56 (t!80906 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611352 () Bool)

(assert (=> b!611352 (= e!370540 e!370541)))

(declare-fun c!112996 () Bool)

(assert (=> b!611352 (= c!112996 (and ((_ is Cons!6115) rules!3103) (not (= (h!11516 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun b!611354 () Bool)

(assert (=> b!611354 (= e!370541 (- 1))))

(declare-fun b!611351 () Bool)

(assert (=> b!611351 (= e!370540 0)))

(assert (= (and d!215206 c!112995) b!611351))

(assert (= (and d!215206 (not c!112995)) b!611352))

(assert (= (and b!611352 c!112996) b!611353))

(assert (= (and b!611352 (not c!112996)) b!611354))

(assert (=> d!215206 m!878605))

(declare-fun m!879263 () Bool)

(assert (=> b!611353 m!879263))

(assert (=> b!610900 d!215206))

(declare-fun d!215208 () Bool)

(declare-fun lt!261720 () Int)

(assert (=> d!215208 (>= lt!261720 0)))

(declare-fun e!370542 () Int)

(assert (=> d!215208 (= lt!261720 e!370542)))

(declare-fun c!112997 () Bool)

(assert (=> d!215208 (= c!112997 (and ((_ is Cons!6115) rules!3103) (= (h!11516 rules!3103) (rule!2015 token!491))))))

(assert (=> d!215208 (contains!1441 rules!3103 (rule!2015 token!491))))

(assert (=> d!215208 (= (getIndex!56 rules!3103 (rule!2015 token!491)) lt!261720)))

(declare-fun b!611357 () Bool)

(declare-fun e!370543 () Int)

(assert (=> b!611357 (= e!370543 (+ 1 (getIndex!56 (t!80906 rules!3103) (rule!2015 token!491))))))

(declare-fun b!611356 () Bool)

(assert (=> b!611356 (= e!370542 e!370543)))

(declare-fun c!112998 () Bool)

(assert (=> b!611356 (= c!112998 (and ((_ is Cons!6115) rules!3103) (not (= (h!11516 rules!3103) (rule!2015 token!491)))))))

(declare-fun b!611358 () Bool)

(assert (=> b!611358 (= e!370543 (- 1))))

(declare-fun b!611355 () Bool)

(assert (=> b!611355 (= e!370542 0)))

(assert (= (and d!215208 c!112997) b!611355))

(assert (= (and d!215208 (not c!112997)) b!611356))

(assert (= (and b!611356 c!112998) b!611357))

(assert (= (and b!611356 (not c!112998)) b!611358))

(assert (=> d!215208 m!878581))

(declare-fun m!879265 () Bool)

(assert (=> b!611357 m!879265))

(assert (=> b!610900 d!215208))

(assert (=> b!610922 d!215110))

(declare-fun d!215210 () Bool)

(assert (=> d!215210 (not (matchR!662 (regex!1225 (rule!2015 token!491)) input!2705))))

(declare-fun lt!261733 () Unit!11182)

(declare-fun choose!4504 (LexerInterface!1111 List!6125 Rule!2250 List!6124 List!6124 List!6124 Rule!2250) Unit!11182)

(assert (=> d!215210 (= lt!261733 (choose!4504 thiss!22590 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554))) lt!261518 input!2705 input!2705 (rule!2015 token!491)))))

(assert (=> d!215210 (isPrefix!853 lt!261518 input!2705)))

(assert (=> d!215210 (= (lemmaMaxPrefixOutputsMaxPrefix!78 thiss!22590 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554))) lt!261518 input!2705 input!2705 (rule!2015 token!491)) lt!261733)))

(declare-fun bs!71579 () Bool)

(assert (= bs!71579 d!215210))

(assert (=> bs!71579 m!878591))

(declare-fun m!879267 () Bool)

(assert (=> bs!71579 m!879267))

(assert (=> bs!71579 m!879193))

(assert (=> b!610922 d!215210))

(declare-fun d!215212 () Bool)

(declare-fun e!370558 () Bool)

(assert (=> d!215212 e!370558))

(declare-fun c!113002 () Bool)

(assert (=> d!215212 (= c!113002 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun lt!261734 () Bool)

(declare-fun e!370552 () Bool)

(assert (=> d!215212 (= lt!261734 e!370552)))

(declare-fun c!113003 () Bool)

(assert (=> d!215212 (= c!113003 (isEmpty!4413 input!2705))))

(assert (=> d!215212 (validRegex!546 (regex!1225 (rule!2015 token!491)))))

(assert (=> d!215212 (= (matchR!662 (regex!1225 (rule!2015 token!491)) input!2705) lt!261734)))

(declare-fun b!611377 () Bool)

(declare-fun e!370555 () Bool)

(assert (=> b!611377 (= e!370558 e!370555)))

(declare-fun c!113001 () Bool)

(assert (=> b!611377 (= c!113001 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun b!611378 () Bool)

(declare-fun e!370556 () Bool)

(declare-fun e!370554 () Bool)

(assert (=> b!611378 (= e!370556 e!370554)))

(declare-fun res!265768 () Bool)

(assert (=> b!611378 (=> res!265768 e!370554)))

(declare-fun call!40852 () Bool)

(assert (=> b!611378 (= res!265768 call!40852)))

(declare-fun b!611379 () Bool)

(assert (=> b!611379 (= e!370558 (= lt!261734 call!40852))))

(declare-fun b!611380 () Bool)

(declare-fun res!265769 () Bool)

(declare-fun e!370557 () Bool)

(assert (=> b!611380 (=> res!265769 e!370557)))

(assert (=> b!611380 (= res!265769 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 token!491)))))))

(assert (=> b!611380 (= e!370555 e!370557)))

(declare-fun b!611381 () Bool)

(declare-fun res!265766 () Bool)

(declare-fun e!370553 () Bool)

(assert (=> b!611381 (=> (not res!265766) (not e!370553))))

(assert (=> b!611381 (= res!265766 (isEmpty!4413 (tail!821 input!2705)))))

(declare-fun b!611382 () Bool)

(declare-fun res!265767 () Bool)

(assert (=> b!611382 (=> res!265767 e!370554)))

(assert (=> b!611382 (= res!265767 (not (isEmpty!4413 (tail!821 input!2705))))))

(declare-fun b!611383 () Bool)

(declare-fun res!265764 () Bool)

(assert (=> b!611383 (=> res!265764 e!370557)))

(assert (=> b!611383 (= res!265764 e!370553)))

(declare-fun res!265763 () Bool)

(assert (=> b!611383 (=> (not res!265763) (not e!370553))))

(assert (=> b!611383 (= res!265763 lt!261734)))

(declare-fun b!611384 () Bool)

(declare-fun res!265765 () Bool)

(assert (=> b!611384 (=> (not res!265765) (not e!370553))))

(assert (=> b!611384 (= res!265765 (not call!40852))))

(declare-fun b!611385 () Bool)

(assert (=> b!611385 (= e!370553 (= (head!1292 input!2705) (c!112917 (regex!1225 (rule!2015 token!491)))))))

(declare-fun b!611386 () Bool)

(assert (=> b!611386 (= e!370557 e!370556)))

(declare-fun res!265762 () Bool)

(assert (=> b!611386 (=> (not res!265762) (not e!370556))))

(assert (=> b!611386 (= res!265762 (not lt!261734))))

(declare-fun b!611387 () Bool)

(assert (=> b!611387 (= e!370555 (not lt!261734))))

(declare-fun b!611388 () Bool)

(assert (=> b!611388 (= e!370552 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705)) (tail!821 input!2705)))))

(declare-fun bm!40847 () Bool)

(assert (=> bm!40847 (= call!40852 (isEmpty!4413 input!2705))))

(declare-fun b!611389 () Bool)

(assert (=> b!611389 (= e!370552 (nullable!451 (regex!1225 (rule!2015 token!491))))))

(declare-fun b!611390 () Bool)

(assert (=> b!611390 (= e!370554 (not (= (head!1292 input!2705) (c!112917 (regex!1225 (rule!2015 token!491))))))))

(assert (= (and d!215212 c!113003) b!611389))

(assert (= (and d!215212 (not c!113003)) b!611388))

(assert (= (and d!215212 c!113002) b!611379))

(assert (= (and d!215212 (not c!113002)) b!611377))

(assert (= (and b!611377 c!113001) b!611387))

(assert (= (and b!611377 (not c!113001)) b!611380))

(assert (= (and b!611380 (not res!265769)) b!611383))

(assert (= (and b!611383 res!265763) b!611384))

(assert (= (and b!611384 res!265765) b!611381))

(assert (= (and b!611381 res!265766) b!611385))

(assert (= (and b!611383 (not res!265764)) b!611386))

(assert (= (and b!611386 res!265762) b!611378))

(assert (= (and b!611378 (not res!265768)) b!611382))

(assert (= (and b!611382 (not res!265767)) b!611390))

(assert (= (or b!611379 b!611378 b!611384) bm!40847))

(assert (=> bm!40847 m!878569))

(assert (=> b!611385 m!879147))

(assert (=> b!611381 m!879149))

(assert (=> b!611381 m!879149))

(assert (=> b!611381 m!879151))

(assert (=> b!611388 m!879147))

(assert (=> b!611388 m!879147))

(declare-fun m!879269 () Bool)

(assert (=> b!611388 m!879269))

(assert (=> b!611388 m!879149))

(assert (=> b!611388 m!879269))

(assert (=> b!611388 m!879149))

(declare-fun m!879271 () Bool)

(assert (=> b!611388 m!879271))

(assert (=> b!611382 m!879149))

(assert (=> b!611382 m!879149))

(assert (=> b!611382 m!879151))

(assert (=> b!611389 m!879189))

(assert (=> b!611390 m!879147))

(assert (=> d!215212 m!878569))

(assert (=> d!215212 m!879187))

(assert (=> b!610922 d!215212))

(assert (=> b!610923 d!215212))

(declare-fun d!215214 () Bool)

(declare-fun lt!261735 () Bool)

(assert (=> d!215214 (= lt!261735 (select (content!1115 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun e!370560 () Bool)

(assert (=> d!215214 (= lt!261735 e!370560)))

(declare-fun res!265771 () Bool)

(assert (=> d!215214 (=> (not res!265771) (not e!370560))))

(assert (=> d!215214 (= res!265771 ((_ is Cons!6115) rules!3103))))

(assert (=> d!215214 (= (contains!1441 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261735)))

(declare-fun b!611391 () Bool)

(declare-fun e!370559 () Bool)

(assert (=> b!611391 (= e!370560 e!370559)))

(declare-fun res!265770 () Bool)

(assert (=> b!611391 (=> res!265770 e!370559)))

(assert (=> b!611391 (= res!265770 (= (h!11516 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun b!611392 () Bool)

(assert (=> b!611392 (= e!370559 (contains!1441 (t!80906 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (= (and d!215214 res!265771) b!611391))

(assert (= (and b!611391 (not res!265770)) b!611392))

(assert (=> d!215214 m!878753))

(declare-fun m!879273 () Bool)

(assert (=> d!215214 m!879273))

(declare-fun m!879275 () Bool)

(assert (=> b!611392 m!879275))

(assert (=> b!610903 d!215214))

(declare-fun d!215216 () Bool)

(assert (=> d!215216 (= (isDefined!1387 lt!261527) (not (isEmpty!4415 lt!261527)))))

(declare-fun bs!71580 () Bool)

(assert (= bs!71580 d!215216))

(declare-fun m!879277 () Bool)

(assert (=> bs!71580 m!879277))

(assert (=> b!610904 d!215216))

(declare-fun b!611393 () Bool)

(declare-fun e!370563 () Option!1576)

(declare-fun call!40853 () Option!1576)

(assert (=> b!611393 (= e!370563 call!40853)))

(declare-fun b!611394 () Bool)

(declare-fun res!265776 () Bool)

(declare-fun e!370561 () Bool)

(assert (=> b!611394 (=> (not res!265776) (not e!370561))))

(declare-fun lt!261736 () Option!1576)

(assert (=> b!611394 (= res!265776 (matchR!662 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))))))

(declare-fun b!611395 () Bool)

(declare-fun e!370562 () Bool)

(assert (=> b!611395 (= e!370562 e!370561)))

(declare-fun res!265774 () Bool)

(assert (=> b!611395 (=> (not res!265774) (not e!370561))))

(assert (=> b!611395 (= res!265774 (isDefined!1387 lt!261736))))

(declare-fun bm!40848 () Bool)

(assert (=> bm!40848 (= call!40853 (maxPrefixOneRule!472 thiss!22590 (h!11516 rules!3103) lt!261534))))

(declare-fun d!215218 () Bool)

(assert (=> d!215218 e!370562))

(declare-fun res!265773 () Bool)

(assert (=> d!215218 (=> res!265773 e!370562)))

(assert (=> d!215218 (= res!265773 (isEmpty!4415 lt!261736))))

(assert (=> d!215218 (= lt!261736 e!370563)))

(declare-fun c!113004 () Bool)

(assert (=> d!215218 (= c!113004 (and ((_ is Cons!6115) rules!3103) ((_ is Nil!6115) (t!80906 rules!3103))))))

(declare-fun lt!261739 () Unit!11182)

(declare-fun lt!261740 () Unit!11182)

(assert (=> d!215218 (= lt!261739 lt!261740)))

(assert (=> d!215218 (isPrefix!853 lt!261534 lt!261534)))

(assert (=> d!215218 (= lt!261740 (lemmaIsPrefixRefl!589 lt!261534 lt!261534))))

(assert (=> d!215218 (rulesValidInductive!461 thiss!22590 rules!3103)))

(assert (=> d!215218 (= (maxPrefix!809 thiss!22590 rules!3103 lt!261534) lt!261736)))

(declare-fun b!611396 () Bool)

(declare-fun res!265775 () Bool)

(assert (=> b!611396 (=> (not res!265775) (not e!370561))))

(assert (=> b!611396 (= res!265775 (= (value!39779 (_1!3755 (get!2352 lt!261736))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261736)))))))))

(declare-fun b!611397 () Bool)

(declare-fun lt!261738 () Option!1576)

(declare-fun lt!261737 () Option!1576)

(assert (=> b!611397 (= e!370563 (ite (and ((_ is None!1575) lt!261738) ((_ is None!1575) lt!261737)) None!1575 (ite ((_ is None!1575) lt!261737) lt!261738 (ite ((_ is None!1575) lt!261738) lt!261737 (ite (>= (size!4807 (_1!3755 (v!16484 lt!261738))) (size!4807 (_1!3755 (v!16484 lt!261737)))) lt!261738 lt!261737)))))))

(assert (=> b!611397 (= lt!261738 call!40853)))

(assert (=> b!611397 (= lt!261737 (maxPrefix!809 thiss!22590 (t!80906 rules!3103) lt!261534))))

(declare-fun b!611398 () Bool)

(declare-fun res!265772 () Bool)

(assert (=> b!611398 (=> (not res!265772) (not e!370561))))

(assert (=> b!611398 (= res!265772 (< (size!4808 (_2!3755 (get!2352 lt!261736))) (size!4808 lt!261534)))))

(declare-fun b!611399 () Bool)

(declare-fun res!265778 () Bool)

(assert (=> b!611399 (=> (not res!265778) (not e!370561))))

(assert (=> b!611399 (= res!265778 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))) (originalCharacters!1264 (_1!3755 (get!2352 lt!261736)))))))

(declare-fun b!611400 () Bool)

(assert (=> b!611400 (= e!370561 (contains!1441 rules!3103 (rule!2015 (_1!3755 (get!2352 lt!261736)))))))

(declare-fun b!611401 () Bool)

(declare-fun res!265777 () Bool)

(assert (=> b!611401 (=> (not res!265777) (not e!370561))))

(assert (=> b!611401 (= res!265777 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))) (_2!3755 (get!2352 lt!261736))) lt!261534))))

(assert (= (and d!215218 c!113004) b!611393))

(assert (= (and d!215218 (not c!113004)) b!611397))

(assert (= (or b!611393 b!611397) bm!40848))

(assert (= (and d!215218 (not res!265773)) b!611395))

(assert (= (and b!611395 res!265774) b!611399))

(assert (= (and b!611399 res!265778) b!611398))

(assert (= (and b!611398 res!265772) b!611401))

(assert (= (and b!611401 res!265777) b!611396))

(assert (= (and b!611396 res!265775) b!611394))

(assert (= (and b!611394 res!265776) b!611400))

(declare-fun m!879279 () Bool)

(assert (=> d!215218 m!879279))

(declare-fun m!879281 () Bool)

(assert (=> d!215218 m!879281))

(declare-fun m!879283 () Bool)

(assert (=> d!215218 m!879283))

(assert (=> d!215218 m!878707))

(declare-fun m!879285 () Bool)

(assert (=> bm!40848 m!879285))

(declare-fun m!879287 () Bool)

(assert (=> b!611398 m!879287))

(declare-fun m!879289 () Bool)

(assert (=> b!611398 m!879289))

(assert (=> b!611398 m!878865))

(assert (=> b!611401 m!879287))

(declare-fun m!879291 () Bool)

(assert (=> b!611401 m!879291))

(assert (=> b!611401 m!879291))

(declare-fun m!879293 () Bool)

(assert (=> b!611401 m!879293))

(assert (=> b!611401 m!879293))

(declare-fun m!879295 () Bool)

(assert (=> b!611401 m!879295))

(assert (=> b!611399 m!879287))

(assert (=> b!611399 m!879291))

(assert (=> b!611399 m!879291))

(assert (=> b!611399 m!879293))

(assert (=> b!611396 m!879287))

(declare-fun m!879297 () Bool)

(assert (=> b!611396 m!879297))

(assert (=> b!611396 m!879297))

(declare-fun m!879299 () Bool)

(assert (=> b!611396 m!879299))

(assert (=> b!611394 m!879287))

(assert (=> b!611394 m!879291))

(assert (=> b!611394 m!879291))

(assert (=> b!611394 m!879293))

(assert (=> b!611394 m!879293))

(declare-fun m!879301 () Bool)

(assert (=> b!611394 m!879301))

(declare-fun m!879303 () Bool)

(assert (=> b!611395 m!879303))

(assert (=> b!611400 m!879287))

(declare-fun m!879305 () Bool)

(assert (=> b!611400 m!879305))

(declare-fun m!879307 () Bool)

(assert (=> b!611397 m!879307))

(assert (=> b!610904 d!215218))

(declare-fun b!611405 () Bool)

(declare-fun e!370564 () Bool)

(declare-fun lt!261741 () List!6124)

(assert (=> b!611405 (= e!370564 (or (not (= suffix!1342 Nil!6114)) (= lt!261741 input!2705)))))

(declare-fun b!611403 () Bool)

(declare-fun e!370565 () List!6124)

(assert (=> b!611403 (= e!370565 (Cons!6114 (h!11515 input!2705) (++!1713 (t!80905 input!2705) suffix!1342)))))

(declare-fun b!611404 () Bool)

(declare-fun res!265779 () Bool)

(assert (=> b!611404 (=> (not res!265779) (not e!370564))))

(assert (=> b!611404 (= res!265779 (= (size!4808 lt!261741) (+ (size!4808 input!2705) (size!4808 suffix!1342))))))

(declare-fun b!611402 () Bool)

(assert (=> b!611402 (= e!370565 suffix!1342)))

(declare-fun d!215220 () Bool)

(assert (=> d!215220 e!370564))

(declare-fun res!265780 () Bool)

(assert (=> d!215220 (=> (not res!265780) (not e!370564))))

(assert (=> d!215220 (= res!265780 (= (content!1117 lt!261741) ((_ map or) (content!1117 input!2705) (content!1117 suffix!1342))))))

(assert (=> d!215220 (= lt!261741 e!370565)))

(declare-fun c!113005 () Bool)

(assert (=> d!215220 (= c!113005 ((_ is Nil!6114) input!2705))))

(assert (=> d!215220 (= (++!1713 input!2705 suffix!1342) lt!261741)))

(assert (= (and d!215220 c!113005) b!611402))

(assert (= (and d!215220 (not c!113005)) b!611403))

(assert (= (and d!215220 res!265780) b!611404))

(assert (= (and b!611404 res!265779) b!611405))

(declare-fun m!879309 () Bool)

(assert (=> b!611403 m!879309))

(declare-fun m!879311 () Bool)

(assert (=> b!611404 m!879311))

(assert (=> b!611404 m!878563))

(assert (=> b!611404 m!879125))

(declare-fun m!879313 () Bool)

(assert (=> d!215220 m!879313))

(declare-fun m!879315 () Bool)

(assert (=> d!215220 m!879315))

(assert (=> d!215220 m!879131))

(assert (=> b!610904 d!215220))

(declare-fun d!215222 () Bool)

(assert (=> d!215222 (= (isEmpty!4413 (_2!3755 (v!16484 lt!261554))) ((_ is Nil!6114) (_2!3755 (v!16484 lt!261554))))))

(assert (=> b!610885 d!215222))

(declare-fun d!215224 () Bool)

(declare-fun lt!261747 () Int)

(assert (=> d!215224 (>= lt!261747 0)))

(declare-fun e!370570 () Int)

(assert (=> d!215224 (= lt!261747 e!370570)))

(declare-fun c!113007 () Bool)

(assert (=> d!215224 (= c!113007 ((_ is Nil!6114) (originalCharacters!1264 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215224 (= (size!4808 (originalCharacters!1264 (_1!3755 (v!16484 lt!261554)))) lt!261747)))

(declare-fun b!611415 () Bool)

(assert (=> b!611415 (= e!370570 0)))

(declare-fun b!611416 () Bool)

(assert (=> b!611416 (= e!370570 (+ 1 (size!4808 (t!80905 (originalCharacters!1264 (_1!3755 (v!16484 lt!261554)))))))))

(assert (= (and d!215224 c!113007) b!611415))

(assert (= (and d!215224 (not c!113007)) b!611416))

(declare-fun m!879317 () Bool)

(assert (=> b!611416 m!879317))

(assert (=> b!610906 d!215224))

(declare-fun b!611429 () Bool)

(declare-fun b_free!17429 () Bool)

(declare-fun b_next!17445 () Bool)

(assert (=> b!611429 (= b_free!17429 (not b_next!17445))))

(declare-fun t!80956 () Bool)

(declare-fun tb!53359 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80956) tb!53359))

(declare-fun result!60088 () Bool)

(assert (= result!60088 result!60074))

(assert (=> d!215202 t!80956))

(declare-fun t!80958 () Bool)

(declare-fun tb!53361 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!80958) tb!53361))

(declare-fun result!60090 () Bool)

(assert (= result!60090 result!60042))

(assert (=> d!215000 t!80958))

(assert (=> d!215030 t!80958))

(declare-fun tb!53363 () Bool)

(declare-fun t!80960 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!80960) tb!53363))

(declare-fun result!60092 () Bool)

(assert (= result!60092 result!60078))

(assert (=> d!215114 t!80960))

(assert (=> d!215110 t!80956))

(declare-fun b_and!60539 () Bool)

(declare-fun tp!189226 () Bool)

(assert (=> b!611429 (= tp!189226 (and (=> t!80958 result!60090) (=> t!80956 result!60088) (=> t!80960 result!60092) b_and!60539))))

(declare-fun b_free!17431 () Bool)

(declare-fun b_next!17447 () Bool)

(assert (=> b!611429 (= b_free!17431 (not b_next!17447))))

(declare-fun t!80962 () Bool)

(declare-fun tb!53365 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!80962) tb!53365))

(declare-fun result!60094 () Bool)

(assert (= result!60094 result!60030))

(assert (=> b!610975 t!80962))

(assert (=> d!215136 t!80962))

(declare-fun t!80964 () Bool)

(declare-fun tb!53367 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80964) tb!53367))

(declare-fun result!60096 () Bool)

(assert (= result!60096 result!60082))

(assert (=> d!215158 t!80964))

(declare-fun tb!53369 () Bool)

(declare-fun t!80966 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!80966) tb!53369))

(declare-fun result!60098 () Bool)

(assert (= result!60098 result!60070))

(assert (=> d!215110 t!80966))

(declare-fun tb!53371 () Bool)

(declare-fun t!80968 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!80968) tb!53371))

(declare-fun result!60100 () Bool)

(assert (= result!60100 result!60066))

(assert (=> d!215030 t!80968))

(declare-fun b_and!60541 () Bool)

(declare-fun tp!189224 () Bool)

(assert (=> b!611429 (= tp!189224 (and (=> t!80964 result!60096) (=> t!80962 result!60094) (=> t!80968 result!60100) (=> t!80966 result!60098) b_and!60541))))

(declare-fun e!370582 () Bool)

(assert (=> b!611429 (= e!370582 (and tp!189226 tp!189224))))

(declare-fun e!370581 () Bool)

(declare-fun tp!189225 () Bool)

(declare-fun b!611428 () Bool)

(assert (=> b!611428 (= e!370581 (and tp!189225 (inv!7775 (tag!1487 (h!11516 (t!80906 rules!3103)))) (inv!7778 (transformation!1225 (h!11516 (t!80906 rules!3103)))) e!370582))))

(declare-fun b!611427 () Bool)

(declare-fun e!370583 () Bool)

(declare-fun tp!189227 () Bool)

(assert (=> b!611427 (= e!370583 (and e!370581 tp!189227))))

(assert (=> b!610919 (= tp!189202 e!370583)))

(assert (= b!611428 b!611429))

(assert (= b!611427 b!611428))

(assert (= (and b!610919 ((_ is Cons!6115) (t!80906 rules!3103))) b!611427))

(declare-fun m!879365 () Bool)

(assert (=> b!611428 m!879365))

(declare-fun m!879367 () Bool)

(assert (=> b!611428 m!879367))

(declare-fun b!611451 () Bool)

(declare-fun e!370590 () Bool)

(declare-fun tp!189238 () Bool)

(assert (=> b!611451 (= e!370590 tp!189238)))

(declare-fun b!611450 () Bool)

(declare-fun tp!189239 () Bool)

(declare-fun tp!189242 () Bool)

(assert (=> b!611450 (= e!370590 (and tp!189239 tp!189242))))

(declare-fun b!611452 () Bool)

(declare-fun tp!189241 () Bool)

(declare-fun tp!189240 () Bool)

(assert (=> b!611452 (= e!370590 (and tp!189241 tp!189240))))

(assert (=> b!610908 (= tp!189198 e!370590)))

(declare-fun b!611449 () Bool)

(assert (=> b!611449 (= e!370590 tp_is_empty!3473)))

(assert (= (and b!610908 ((_ is ElementMatch!1559) (regex!1225 (rule!2015 token!491)))) b!611449))

(assert (= (and b!610908 ((_ is Concat!2808) (regex!1225 (rule!2015 token!491)))) b!611450))

(assert (= (and b!610908 ((_ is Star!1559) (regex!1225 (rule!2015 token!491)))) b!611451))

(assert (= (and b!610908 ((_ is Union!1559) (regex!1225 (rule!2015 token!491)))) b!611452))

(declare-fun b!611455 () Bool)

(declare-fun e!370591 () Bool)

(declare-fun tp!189243 () Bool)

(assert (=> b!611455 (= e!370591 tp!189243)))

(declare-fun b!611454 () Bool)

(declare-fun tp!189244 () Bool)

(declare-fun tp!189247 () Bool)

(assert (=> b!611454 (= e!370591 (and tp!189244 tp!189247))))

(declare-fun b!611456 () Bool)

(declare-fun tp!189246 () Bool)

(declare-fun tp!189245 () Bool)

(assert (=> b!611456 (= e!370591 (and tp!189246 tp!189245))))

(assert (=> b!610895 (= tp!189203 e!370591)))

(declare-fun b!611453 () Bool)

(assert (=> b!611453 (= e!370591 tp_is_empty!3473)))

(assert (= (and b!610895 ((_ is ElementMatch!1559) (regex!1225 (h!11516 rules!3103)))) b!611453))

(assert (= (and b!610895 ((_ is Concat!2808) (regex!1225 (h!11516 rules!3103)))) b!611454))

(assert (= (and b!610895 ((_ is Star!1559) (regex!1225 (h!11516 rules!3103)))) b!611455))

(assert (= (and b!610895 ((_ is Union!1559) (regex!1225 (h!11516 rules!3103)))) b!611456))

(declare-fun b!611461 () Bool)

(declare-fun e!370594 () Bool)

(declare-fun tp!189250 () Bool)

(assert (=> b!611461 (= e!370594 (and tp_is_empty!3473 tp!189250))))

(assert (=> b!610901 (= tp!189204 e!370594)))

(assert (= (and b!610901 ((_ is Cons!6114) (t!80905 suffix!1342))) b!611461))

(declare-fun b!611462 () Bool)

(declare-fun e!370595 () Bool)

(declare-fun tp!189251 () Bool)

(assert (=> b!611462 (= e!370595 (and tp_is_empty!3473 tp!189251))))

(assert (=> b!610890 (= tp!189195 e!370595)))

(assert (= (and b!610890 ((_ is Cons!6114) (originalCharacters!1264 token!491))) b!611462))

(declare-fun b!611463 () Bool)

(declare-fun e!370596 () Bool)

(declare-fun tp!189252 () Bool)

(assert (=> b!611463 (= e!370596 (and tp_is_empty!3473 tp!189252))))

(assert (=> b!610913 (= tp!189201 e!370596)))

(assert (= (and b!610913 ((_ is Cons!6114) (t!80905 input!2705))) b!611463))

(declare-fun b_lambda!24239 () Bool)

(assert (= b_lambda!24209 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17425) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) b_lambda!24239)))

(declare-fun b_lambda!24241 () Bool)

(assert (= b_lambda!24231 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17425) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) b_lambda!24241)))

(declare-fun b_lambda!24243 () Bool)

(assert (= b_lambda!24225 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17425) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) b_lambda!24243)))

(declare-fun b_lambda!24245 () Bool)

(assert (= b_lambda!24205 (or (and b!610888 b_free!17423 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17427) (and b!611429 b_free!17431 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) b_lambda!24245)))

(declare-fun b_lambda!24247 () Bool)

(assert (= b_lambda!24233 (or (and b!610888 b_free!17423 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17427) (and b!611429 b_free!17431 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) b_lambda!24247)))

(declare-fun b_lambda!24249 () Bool)

(assert (= b_lambda!24223 (or (and b!610888 b_free!17423 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17427) (and b!611429 b_free!17431 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) b_lambda!24249)))

(check-sat (not b!611353) (not b_next!17441) (not b!611326) (not tb!53347) (not b!611287) (not b_lambda!24229) (not b!611404) (not b!611180) (not b!611057) (not b!611342) (not b!611312) (not b!611382) (not b!610949) (not b!611280) (not b!611062) (not b!611245) (not b_lambda!24239) (not b!611324) (not bm!40846) (not b_lambda!24247) (not d!214976) (not d!215148) (not d!214996) (not b!611068) (not b!611392) (not b!611322) (not b!610966) (not b!611314) (not b!611056) (not b!611401) (not b!610953) (not b!611212) (not tb!53339) (not b!611286) (not b!611450) (not b!610981) (not b!611313) (not b!611403) tp_is_empty!3473 (not d!215196) (not d!215088) (not b!611063) (not b!611461) (not d!215030) (not b!610955) (not b!611303) (not b!610976) (not d!215208) (not b!610954) (not b!611178) (not b_lambda!24243) (not bm!40839) (not b_next!17439) (not d!215204) (not b!611283) (not b!611399) (not b!611319) b_and!60535 (not tb!53319) (not b_next!17443) (not b!611416) (not b!611398) (not b!611060) (not b!611397) (not b_next!17447) (not d!215006) (not b!611454) (not b_next!17445) (not b!610993) (not b!611456) (not d!215170) (not d!215026) (not d!215158) (not bm!40848) (not b!611463) (not b!611462) (not b!611336) (not b!611394) (not b!611291) (not d!214972) b_and!60533 (not d!215168) (not d!215110) (not b!611388) (not d!215128) (not d!215220) (not b!611182) (not b!610975) (not b!611452) (not b_lambda!24227) (not d!215124) (not b!611216) (not d!215162) (not b!611310) (not b_lambda!24245) (not tb!53351) b_and!60539 (not b!611219) (not b!611333) (not b!611302) (not b!611328) (not d!215184) b_and!60531 (not b!611323) b_and!60541 (not d!215130) (not d!215136) (not b!611335) (not d!215104) (not tb!53355) (not b!611428) (not b!610948) (not b_lambda!24237) (not d!215216) (not b!611301) (not b!611330) (not d!215206) (not d!215214) (not d!215140) (not d!215212) (not d!215192) (not b!611341) (not b!611315) (not d!215194) (not d!215134) (not b!611318) (not d!214978) (not b!611181) (not d!215198) (not b!611288) (not b!611177) (not b!611244) (not b!611217) b_and!60537 (not b!611175) (not b!611385) (not b!611002) (not b!610967) (not b!610969) (not b!611400) (not b!611451) (not b_lambda!24241) (not d!215172) (not b!611329) (not bm!40847) (not d!214988) (not b!611427) (not d!215028) (not b!611381) (not d!215166) (not d!215106) (not b!611170) (not tb!53343) (not d!215190) (not d!214982) (not b!611395) (not b!611389) (not d!215156) (not b!611061) (not d!215218) (not b!611058) (not b!611055) (not b!610950) (not b!611176) (not b!611390) (not d!215188) (not b_next!17437) (not d!215118) (not d!215154) (not b!611357) (not b!611308) (not d!215150) (not b!611183) (not d!215174) (not d!215210) (not b!610928) (not tb!53311) (not b!611279) (not b!610952) (not b!611338) (not d!215176) (not b!610951) (not b!611455) (not d!215160) (not b_lambda!24235) (not b_lambda!24249) (not b!611320) (not b!611396))
(check-sat (not b_next!17441) (not b_next!17443) b_and!60533 b_and!60539 b_and!60537 (not b_next!17437) (not b_next!17439) b_and!60535 (not b_next!17447) (not b_next!17445) b_and!60541 b_and!60531)
(get-model)

(declare-fun b!611560 () Bool)

(declare-fun e!370645 () Bool)

(assert (=> b!611560 (= e!370645 (isPrefix!853 (tail!821 input!2705) (tail!821 (++!1713 input!2705 suffix!1342))))))

(declare-fun b!611558 () Bool)

(declare-fun e!370646 () Bool)

(assert (=> b!611558 (= e!370646 e!370645)))

(declare-fun res!265827 () Bool)

(assert (=> b!611558 (=> (not res!265827) (not e!370645))))

(assert (=> b!611558 (= res!265827 (not ((_ is Nil!6114) (++!1713 input!2705 suffix!1342))))))

(declare-fun b!611559 () Bool)

(declare-fun res!265828 () Bool)

(assert (=> b!611559 (=> (not res!265828) (not e!370645))))

(assert (=> b!611559 (= res!265828 (= (head!1292 input!2705) (head!1292 (++!1713 input!2705 suffix!1342))))))

(declare-fun d!215252 () Bool)

(declare-fun e!370644 () Bool)

(assert (=> d!215252 e!370644))

(declare-fun res!265825 () Bool)

(assert (=> d!215252 (=> res!265825 e!370644)))

(declare-fun lt!261781 () Bool)

(assert (=> d!215252 (= res!265825 (not lt!261781))))

(assert (=> d!215252 (= lt!261781 e!370646)))

(declare-fun res!265826 () Bool)

(assert (=> d!215252 (=> res!265826 e!370646)))

(assert (=> d!215252 (= res!265826 ((_ is Nil!6114) input!2705))))

(assert (=> d!215252 (= (isPrefix!853 input!2705 (++!1713 input!2705 suffix!1342)) lt!261781)))

(declare-fun b!611561 () Bool)

(assert (=> b!611561 (= e!370644 (>= (size!4808 (++!1713 input!2705 suffix!1342)) (size!4808 input!2705)))))

(assert (= (and d!215252 (not res!265826)) b!611558))

(assert (= (and b!611558 res!265827) b!611559))

(assert (= (and b!611559 res!265828) b!611560))

(assert (= (and d!215252 (not res!265825)) b!611561))

(assert (=> b!611560 m!879149))

(assert (=> b!611560 m!878575))

(declare-fun m!879505 () Bool)

(assert (=> b!611560 m!879505))

(assert (=> b!611560 m!879149))

(assert (=> b!611560 m!879505))

(declare-fun m!879507 () Bool)

(assert (=> b!611560 m!879507))

(assert (=> b!611559 m!879147))

(assert (=> b!611559 m!878575))

(declare-fun m!879509 () Bool)

(assert (=> b!611559 m!879509))

(assert (=> b!611561 m!878575))

(declare-fun m!879511 () Bool)

(assert (=> b!611561 m!879511))

(assert (=> b!611561 m!878563))

(assert (=> d!215194 d!215252))

(assert (=> d!215194 d!215220))

(declare-fun d!215254 () Bool)

(assert (=> d!215254 (isPrefix!853 input!2705 (++!1713 input!2705 suffix!1342))))

(assert (=> d!215254 true))

(declare-fun _$46!1008 () Unit!11182)

(assert (=> d!215254 (= (choose!4500 input!2705 suffix!1342) _$46!1008)))

(declare-fun bs!71584 () Bool)

(assert (= bs!71584 d!215254))

(assert (=> bs!71584 m!878575))

(assert (=> bs!71584 m!878575))

(assert (=> bs!71584 m!879251))

(assert (=> d!215194 d!215254))

(declare-fun d!215256 () Bool)

(declare-fun lt!261782 () Int)

(assert (=> d!215256 (>= lt!261782 0)))

(declare-fun e!370647 () Int)

(assert (=> d!215256 (= lt!261782 e!370647)))

(declare-fun c!113023 () Bool)

(assert (=> d!215256 (= c!113023 ((_ is Nil!6114) lt!261712))))

(assert (=> d!215256 (= (size!4808 lt!261712) lt!261782)))

(declare-fun b!611562 () Bool)

(assert (=> b!611562 (= e!370647 0)))

(declare-fun b!611563 () Bool)

(assert (=> b!611563 (= e!370647 (+ 1 (size!4808 (t!80905 lt!261712))))))

(assert (= (and d!215256 c!113023) b!611562))

(assert (= (and d!215256 (not c!113023)) b!611563))

(declare-fun m!879513 () Bool)

(assert (=> b!611563 m!879513))

(assert (=> b!611336 d!215256))

(assert (=> b!611336 d!215200))

(declare-fun d!215258 () Bool)

(declare-fun lt!261783 () Int)

(assert (=> d!215258 (>= lt!261783 0)))

(declare-fun e!370648 () Int)

(assert (=> d!215258 (= lt!261783 e!370648)))

(declare-fun c!113024 () Bool)

(assert (=> d!215258 (= c!113024 ((_ is Nil!6114) (_2!3755 (v!16484 lt!261554))))))

(assert (=> d!215258 (= (size!4808 (_2!3755 (v!16484 lt!261554))) lt!261783)))

(declare-fun b!611564 () Bool)

(assert (=> b!611564 (= e!370648 0)))

(declare-fun b!611565 () Bool)

(assert (=> b!611565 (= e!370648 (+ 1 (size!4808 (t!80905 (_2!3755 (v!16484 lt!261554))))))))

(assert (= (and d!215258 c!113024) b!611564))

(assert (= (and d!215258 (not c!113024)) b!611565))

(declare-fun m!879515 () Bool)

(assert (=> b!611565 m!879515))

(assert (=> b!611336 d!215258))

(declare-fun d!215260 () Bool)

(assert (=> d!215260 (= (head!1292 input!2705) (h!11515 input!2705))))

(assert (=> b!611312 d!215260))

(declare-fun d!215262 () Bool)

(declare-fun nullableFct!148 (Regex!1559) Bool)

(assert (=> d!215262 (= (nullable!451 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (nullableFct!148 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun bs!71585 () Bool)

(assert (= bs!71585 d!215262))

(declare-fun m!879517 () Bool)

(assert (=> bs!71585 m!879517))

(assert (=> b!611287 d!215262))

(assert (=> d!215212 d!214968))

(declare-fun b!611584 () Bool)

(declare-fun e!370668 () Bool)

(declare-fun e!370663 () Bool)

(assert (=> b!611584 (= e!370668 e!370663)))

(declare-fun c!113029 () Bool)

(assert (=> b!611584 (= c!113029 ((_ is Union!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun b!611585 () Bool)

(declare-fun res!265842 () Bool)

(declare-fun e!370665 () Bool)

(assert (=> b!611585 (=> (not res!265842) (not e!370665))))

(declare-fun call!40864 () Bool)

(assert (=> b!611585 (= res!265842 call!40864)))

(assert (=> b!611585 (= e!370663 e!370665)))

(declare-fun b!611586 () Bool)

(declare-fun e!370667 () Bool)

(declare-fun call!40866 () Bool)

(assert (=> b!611586 (= e!370667 call!40866)))

(declare-fun bm!40859 () Bool)

(declare-fun call!40865 () Bool)

(assert (=> bm!40859 (= call!40865 (validRegex!546 (ite c!113029 (regTwo!3631 (regex!1225 (rule!2015 token!491))) (regOne!3630 (regex!1225 (rule!2015 token!491))))))))

(declare-fun b!611587 () Bool)

(declare-fun e!370666 () Bool)

(assert (=> b!611587 (= e!370666 e!370668)))

(declare-fun c!113030 () Bool)

(assert (=> b!611587 (= c!113030 ((_ is Star!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun b!611588 () Bool)

(assert (=> b!611588 (= e!370668 e!370667)))

(declare-fun res!265843 () Bool)

(assert (=> b!611588 (= res!265843 (not (nullable!451 (reg!1888 (regex!1225 (rule!2015 token!491))))))))

(assert (=> b!611588 (=> (not res!265843) (not e!370667))))

(declare-fun bm!40860 () Bool)

(assert (=> bm!40860 (= call!40866 (validRegex!546 (ite c!113030 (reg!1888 (regex!1225 (rule!2015 token!491))) (ite c!113029 (regOne!3631 (regex!1225 (rule!2015 token!491))) (regTwo!3630 (regex!1225 (rule!2015 token!491)))))))))

(declare-fun b!611590 () Bool)

(declare-fun res!265839 () Bool)

(declare-fun e!370669 () Bool)

(assert (=> b!611590 (=> res!265839 e!370669)))

(assert (=> b!611590 (= res!265839 (not ((_ is Concat!2808) (regex!1225 (rule!2015 token!491)))))))

(assert (=> b!611590 (= e!370663 e!370669)))

(declare-fun b!611591 () Bool)

(declare-fun e!370664 () Bool)

(assert (=> b!611591 (= e!370664 call!40864)))

(declare-fun b!611589 () Bool)

(assert (=> b!611589 (= e!370669 e!370664)))

(declare-fun res!265840 () Bool)

(assert (=> b!611589 (=> (not res!265840) (not e!370664))))

(assert (=> b!611589 (= res!265840 call!40865)))

(declare-fun d!215264 () Bool)

(declare-fun res!265841 () Bool)

(assert (=> d!215264 (=> res!265841 e!370666)))

(assert (=> d!215264 (= res!265841 ((_ is ElementMatch!1559) (regex!1225 (rule!2015 token!491))))))

(assert (=> d!215264 (= (validRegex!546 (regex!1225 (rule!2015 token!491))) e!370666)))

(declare-fun bm!40861 () Bool)

(assert (=> bm!40861 (= call!40864 call!40866)))

(declare-fun b!611592 () Bool)

(assert (=> b!611592 (= e!370665 call!40865)))

(assert (= (and d!215264 (not res!265841)) b!611587))

(assert (= (and b!611587 c!113030) b!611588))

(assert (= (and b!611587 (not c!113030)) b!611584))

(assert (= (and b!611588 res!265843) b!611586))

(assert (= (and b!611584 c!113029) b!611585))

(assert (= (and b!611584 (not c!113029)) b!611590))

(assert (= (and b!611585 res!265842) b!611592))

(assert (= (and b!611590 (not res!265839)) b!611589))

(assert (= (and b!611589 res!265840) b!611591))

(assert (= (or b!611585 b!611591) bm!40861))

(assert (= (or b!611592 b!611589) bm!40859))

(assert (= (or b!611586 bm!40861) bm!40860))

(declare-fun m!879519 () Bool)

(assert (=> bm!40859 m!879519))

(declare-fun m!879521 () Bool)

(assert (=> b!611588 m!879521))

(declare-fun m!879523 () Bool)

(assert (=> bm!40860 m!879523))

(assert (=> d!215212 d!215264))

(declare-fun d!215266 () Bool)

(assert (=> d!215266 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))) (list!2574 (c!112918 (charsOf!854 (_1!3755 (get!2352 lt!261736))))))))

(declare-fun bs!71586 () Bool)

(assert (= bs!71586 d!215266))

(declare-fun m!879525 () Bool)

(assert (=> bs!71586 m!879525))

(assert (=> b!611399 d!215266))

(declare-fun d!215268 () Bool)

(declare-fun lt!261784 () BalanceConc!3892)

(assert (=> d!215268 (= (list!2572 lt!261784) (originalCharacters!1264 (_1!3755 (get!2352 lt!261736))))))

(assert (=> d!215268 (= lt!261784 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))) (value!39779 (_1!3755 (get!2352 lt!261736)))))))

(assert (=> d!215268 (= (charsOf!854 (_1!3755 (get!2352 lt!261736))) lt!261784)))

(declare-fun b_lambda!24269 () Bool)

(assert (=> (not b_lambda!24269) (not d!215268)))

(declare-fun tb!53395 () Bool)

(declare-fun t!80994 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!80994) tb!53395))

(declare-fun b!611593 () Bool)

(declare-fun e!370670 () Bool)

(declare-fun tp!189291 () Bool)

(assert (=> b!611593 (= e!370670 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))) (value!39779 (_1!3755 (get!2352 lt!261736)))))) tp!189291))))

(declare-fun result!60134 () Bool)

(assert (=> tb!53395 (= result!60134 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))) (value!39779 (_1!3755 (get!2352 lt!261736))))) e!370670))))

(assert (= tb!53395 b!611593))

(declare-fun m!879527 () Bool)

(assert (=> b!611593 m!879527))

(declare-fun m!879529 () Bool)

(assert (=> tb!53395 m!879529))

(assert (=> d!215268 t!80994))

(declare-fun b_and!60559 () Bool)

(assert (= b_and!60531 (and (=> t!80994 result!60134) b_and!60559)))

(declare-fun t!80996 () Bool)

(declare-fun tb!53397 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!80996) tb!53397))

(declare-fun result!60136 () Bool)

(assert (= result!60136 result!60134))

(assert (=> d!215268 t!80996))

(declare-fun b_and!60561 () Bool)

(assert (= b_and!60533 (and (=> t!80996 result!60136) b_and!60561)))

(declare-fun t!80998 () Bool)

(declare-fun tb!53399 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!80998) tb!53399))

(declare-fun result!60138 () Bool)

(assert (= result!60138 result!60134))

(assert (=> d!215268 t!80998))

(declare-fun b_and!60563 () Bool)

(assert (= b_and!60541 (and (=> t!80998 result!60138) b_and!60563)))

(declare-fun m!879531 () Bool)

(assert (=> d!215268 m!879531))

(declare-fun m!879533 () Bool)

(assert (=> d!215268 m!879533))

(assert (=> b!611399 d!215268))

(declare-fun d!215270 () Bool)

(assert (=> d!215270 (= (get!2352 lt!261736) (v!16484 lt!261736))))

(assert (=> b!611399 d!215270))

(declare-fun d!215272 () Bool)

(declare-fun charsToInt!0 (List!6123) (_ BitVec 32))

(assert (=> d!215272 (= (inv!16 (value!39779 token!491)) (= (charsToInt!0 (text!9190 (value!39779 token!491))) (value!39770 (value!39779 token!491))))))

(declare-fun bs!71587 () Bool)

(assert (= bs!71587 d!215272))

(declare-fun m!879535 () Bool)

(assert (=> bs!71587 m!879535))

(assert (=> b!610966 d!215272))

(declare-fun b!611597 () Bool)

(declare-fun lt!261785 () List!6124)

(declare-fun e!370671 () Bool)

(assert (=> b!611597 (= e!370671 (or (not (= suffix!1342 Nil!6114)) (= lt!261785 (t!80905 input!2705))))))

(declare-fun b!611595 () Bool)

(declare-fun e!370672 () List!6124)

(assert (=> b!611595 (= e!370672 (Cons!6114 (h!11515 (t!80905 input!2705)) (++!1713 (t!80905 (t!80905 input!2705)) suffix!1342)))))

(declare-fun b!611596 () Bool)

(declare-fun res!265844 () Bool)

(assert (=> b!611596 (=> (not res!265844) (not e!370671))))

(assert (=> b!611596 (= res!265844 (= (size!4808 lt!261785) (+ (size!4808 (t!80905 input!2705)) (size!4808 suffix!1342))))))

(declare-fun b!611594 () Bool)

(assert (=> b!611594 (= e!370672 suffix!1342)))

(declare-fun d!215274 () Bool)

(assert (=> d!215274 e!370671))

(declare-fun res!265845 () Bool)

(assert (=> d!215274 (=> (not res!265845) (not e!370671))))

(assert (=> d!215274 (= res!265845 (= (content!1117 lt!261785) ((_ map or) (content!1117 (t!80905 input!2705)) (content!1117 suffix!1342))))))

(assert (=> d!215274 (= lt!261785 e!370672)))

(declare-fun c!113031 () Bool)

(assert (=> d!215274 (= c!113031 ((_ is Nil!6114) (t!80905 input!2705)))))

(assert (=> d!215274 (= (++!1713 (t!80905 input!2705) suffix!1342) lt!261785)))

(assert (= (and d!215274 c!113031) b!611594))

(assert (= (and d!215274 (not c!113031)) b!611595))

(assert (= (and d!215274 res!265845) b!611596))

(assert (= (and b!611596 res!265844) b!611597))

(declare-fun m!879537 () Bool)

(assert (=> b!611595 m!879537))

(declare-fun m!879539 () Bool)

(assert (=> b!611596 m!879539))

(assert (=> b!611596 m!879105))

(assert (=> b!611596 m!879125))

(declare-fun m!879541 () Bool)

(assert (=> d!215274 m!879541))

(declare-fun m!879543 () Bool)

(assert (=> d!215274 m!879543))

(assert (=> d!215274 m!879131))

(assert (=> b!611403 d!215274))

(declare-fun d!215276 () Bool)

(assert (=> d!215276 (= (get!2352 lt!261656) (v!16484 lt!261656))))

(assert (=> b!611181 d!215276))

(declare-fun d!215278 () Bool)

(assert (=> d!215278 (= (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656))))))))

(declare-fun b_lambda!24271 () Bool)

(assert (=> (not b_lambda!24271) (not d!215278)))

(declare-fun t!81000 () Bool)

(declare-fun tb!53401 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81000) tb!53401))

(declare-fun result!60140 () Bool)

(assert (=> tb!53401 (= result!60140 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656)))))))))

(declare-fun m!879545 () Bool)

(assert (=> tb!53401 m!879545))

(assert (=> d!215278 t!81000))

(declare-fun b_and!60565 () Bool)

(assert (= b_and!60535 (and (=> t!81000 result!60140) b_and!60565)))

(declare-fun tb!53403 () Bool)

(declare-fun t!81002 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81002) tb!53403))

(declare-fun result!60142 () Bool)

(assert (= result!60142 result!60140))

(assert (=> d!215278 t!81002))

(declare-fun b_and!60567 () Bool)

(assert (= b_and!60537 (and (=> t!81002 result!60142) b_and!60567)))

(declare-fun t!81004 () Bool)

(declare-fun tb!53405 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81004) tb!53405))

(declare-fun result!60144 () Bool)

(assert (= result!60144 result!60140))

(assert (=> d!215278 t!81004))

(declare-fun b_and!60569 () Bool)

(assert (= b_and!60539 (and (=> t!81004 result!60144) b_and!60569)))

(assert (=> d!215278 m!879059))

(declare-fun m!879547 () Bool)

(assert (=> d!215278 m!879547))

(assert (=> b!611181 d!215278))

(declare-fun d!215280 () Bool)

(assert (=> d!215280 (= (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656)))) (fromListB!620 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656)))))))

(declare-fun bs!71588 () Bool)

(assert (= bs!71588 d!215280))

(declare-fun m!879549 () Bool)

(assert (=> bs!71588 m!879549))

(assert (=> b!611181 d!215280))

(declare-fun d!215282 () Bool)

(declare-fun lt!261786 () List!6124)

(assert (=> d!215282 (= (++!1713 (t!80905 lt!261518) lt!261786) (tail!821 input!2705))))

(declare-fun e!370674 () List!6124)

(assert (=> d!215282 (= lt!261786 e!370674)))

(declare-fun c!113032 () Bool)

(assert (=> d!215282 (= c!113032 ((_ is Cons!6114) (t!80905 lt!261518)))))

(assert (=> d!215282 (>= (size!4808 (tail!821 input!2705)) (size!4808 (t!80905 lt!261518)))))

(assert (=> d!215282 (= (getSuffix!370 (tail!821 input!2705) (t!80905 lt!261518)) lt!261786)))

(declare-fun b!611598 () Bool)

(assert (=> b!611598 (= e!370674 (getSuffix!370 (tail!821 (tail!821 input!2705)) (t!80905 (t!80905 lt!261518))))))

(declare-fun b!611599 () Bool)

(assert (=> b!611599 (= e!370674 (tail!821 input!2705))))

(assert (= (and d!215282 c!113032) b!611598))

(assert (= (and d!215282 (not c!113032)) b!611599))

(declare-fun m!879551 () Bool)

(assert (=> d!215282 m!879551))

(assert (=> d!215282 m!879149))

(declare-fun m!879553 () Bool)

(assert (=> d!215282 m!879553))

(assert (=> d!215282 m!879261))

(assert (=> b!611598 m!879149))

(declare-fun m!879555 () Bool)

(assert (=> b!611598 m!879555))

(assert (=> b!611598 m!879555))

(declare-fun m!879557 () Bool)

(assert (=> b!611598 m!879557))

(assert (=> b!611338 d!215282))

(declare-fun d!215284 () Bool)

(assert (=> d!215284 (= (tail!821 input!2705) (t!80905 input!2705))))

(assert (=> b!611338 d!215284))

(declare-fun b!611600 () Bool)

(declare-fun e!370675 () Bool)

(assert (=> b!611600 (= e!370675 (inv!16 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705))))))

(declare-fun b!611601 () Bool)

(declare-fun e!370677 () Bool)

(assert (=> b!611601 (= e!370677 (inv!15 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705))))))

(declare-fun d!215286 () Bool)

(declare-fun c!113034 () Bool)

(assert (=> d!215286 (= c!113034 ((_ is IntegerValue!3747) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705))))))

(assert (=> d!215286 (= (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705))) e!370675)))

(declare-fun b!611602 () Bool)

(declare-fun res!265846 () Bool)

(assert (=> b!611602 (=> res!265846 e!370677)))

(assert (=> b!611602 (= res!265846 (not ((_ is IntegerValue!3749) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705)))))))

(declare-fun e!370676 () Bool)

(assert (=> b!611602 (= e!370676 e!370677)))

(declare-fun b!611603 () Bool)

(assert (=> b!611603 (= e!370676 (inv!17 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705))))))

(declare-fun b!611604 () Bool)

(assert (=> b!611604 (= e!370675 e!370676)))

(declare-fun c!113033 () Bool)

(assert (=> b!611604 (= c!113033 ((_ is IntegerValue!3748) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 input!2705))))))

(assert (= (and d!215286 c!113034) b!611600))

(assert (= (and d!215286 (not c!113034)) b!611604))

(assert (= (and b!611604 c!113033) b!611603))

(assert (= (and b!611604 (not c!113033)) b!611602))

(assert (= (and b!611602 (not res!265846)) b!611601))

(declare-fun m!879559 () Bool)

(assert (=> b!611600 m!879559))

(declare-fun m!879561 () Bool)

(assert (=> b!611601 m!879561))

(declare-fun m!879563 () Bool)

(assert (=> b!611603 m!879563))

(assert (=> tb!53351 d!215286))

(declare-fun d!215288 () Bool)

(assert (=> d!215288 (= (_2!3755 (v!16484 lt!261554)) lt!261552)))

(assert (=> d!215288 true))

(declare-fun _$63!762 () Unit!11182)

(assert (=> d!215288 (= (choose!4489 lt!261518 (_2!3755 (v!16484 lt!261554)) lt!261518 lt!261552 input!2705) _$63!762)))

(assert (=> d!215168 d!215288))

(declare-fun b!611607 () Bool)

(declare-fun e!370679 () Bool)

(assert (=> b!611607 (= e!370679 (isPrefix!853 (tail!821 lt!261518) (tail!821 input!2705)))))

(declare-fun b!611605 () Bool)

(declare-fun e!370680 () Bool)

(assert (=> b!611605 (= e!370680 e!370679)))

(declare-fun res!265849 () Bool)

(assert (=> b!611605 (=> (not res!265849) (not e!370679))))

(assert (=> b!611605 (= res!265849 (not ((_ is Nil!6114) input!2705)))))

(declare-fun b!611606 () Bool)

(declare-fun res!265850 () Bool)

(assert (=> b!611606 (=> (not res!265850) (not e!370679))))

(assert (=> b!611606 (= res!265850 (= (head!1292 lt!261518) (head!1292 input!2705)))))

(declare-fun d!215290 () Bool)

(declare-fun e!370678 () Bool)

(assert (=> d!215290 e!370678))

(declare-fun res!265847 () Bool)

(assert (=> d!215290 (=> res!265847 e!370678)))

(declare-fun lt!261787 () Bool)

(assert (=> d!215290 (= res!265847 (not lt!261787))))

(assert (=> d!215290 (= lt!261787 e!370680)))

(declare-fun res!265848 () Bool)

(assert (=> d!215290 (=> res!265848 e!370680)))

(assert (=> d!215290 (= res!265848 ((_ is Nil!6114) lt!261518))))

(assert (=> d!215290 (= (isPrefix!853 lt!261518 input!2705) lt!261787)))

(declare-fun b!611608 () Bool)

(assert (=> b!611608 (= e!370678 (>= (size!4808 input!2705) (size!4808 lt!261518)))))

(assert (= (and d!215290 (not res!265848)) b!611605))

(assert (= (and b!611605 res!265849) b!611606))

(assert (= (and b!611606 res!265850) b!611607))

(assert (= (and d!215290 (not res!265847)) b!611608))

(assert (=> b!611607 m!879201))

(assert (=> b!611607 m!879149))

(assert (=> b!611607 m!879201))

(assert (=> b!611607 m!879149))

(declare-fun m!879565 () Bool)

(assert (=> b!611607 m!879565))

(assert (=> b!611606 m!879207))

(assert (=> b!611606 m!879147))

(assert (=> b!611608 m!878563))

(assert (=> b!611608 m!878645))

(assert (=> d!215168 d!215290))

(assert (=> d!215148 d!215140))

(declare-fun d!215292 () Bool)

(assert (=> d!215292 (not (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705))))

(assert (=> d!215292 true))

(declare-fun _$56!335 () Unit!11182)

(assert (=> d!215292 (= (choose!4495 thiss!22590 rules!3103 (rule!2015 token!491) input!2705 lt!261534 (rule!2015 (_1!3755 (v!16484 lt!261554)))) _$56!335)))

(declare-fun bs!71589 () Bool)

(assert (= bs!71589 d!215292))

(assert (=> bs!71589 m!878633))

(assert (=> d!215148 d!215292))

(assert (=> d!215148 d!215152))

(declare-fun d!215294 () Bool)

(declare-fun e!370687 () Bool)

(assert (=> d!215294 e!370687))

(declare-fun c!113036 () Bool)

(assert (=> d!215294 (= c!113036 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun lt!261788 () Bool)

(declare-fun e!370681 () Bool)

(assert (=> d!215294 (= lt!261788 e!370681)))

(declare-fun c!113037 () Bool)

(assert (=> d!215294 (= c!113037 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(assert (=> d!215294 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215294 (= (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))) lt!261788)))

(declare-fun b!611609 () Bool)

(declare-fun e!370684 () Bool)

(assert (=> b!611609 (= e!370687 e!370684)))

(declare-fun c!113035 () Bool)

(assert (=> b!611609 (= c!113035 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611610 () Bool)

(declare-fun e!370685 () Bool)

(declare-fun e!370683 () Bool)

(assert (=> b!611610 (= e!370685 e!370683)))

(declare-fun res!265857 () Bool)

(assert (=> b!611610 (=> res!265857 e!370683)))

(declare-fun call!40867 () Bool)

(assert (=> b!611610 (= res!265857 call!40867)))

(declare-fun b!611611 () Bool)

(assert (=> b!611611 (= e!370687 (= lt!261788 call!40867))))

(declare-fun b!611612 () Bool)

(declare-fun res!265858 () Bool)

(declare-fun e!370686 () Bool)

(assert (=> b!611612 (=> res!265858 e!370686)))

(assert (=> b!611612 (= res!265858 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(assert (=> b!611612 (= e!370684 e!370686)))

(declare-fun b!611613 () Bool)

(declare-fun res!265855 () Bool)

(declare-fun e!370682 () Bool)

(assert (=> b!611613 (=> (not res!265855) (not e!370682))))

(assert (=> b!611613 (= res!265855 (isEmpty!4413 (tail!821 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705))))))))

(declare-fun b!611614 () Bool)

(declare-fun res!265856 () Bool)

(assert (=> b!611614 (=> res!265856 e!370683)))

(assert (=> b!611614 (= res!265856 (not (isEmpty!4413 (tail!821 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))))

(declare-fun b!611615 () Bool)

(declare-fun res!265853 () Bool)

(assert (=> b!611615 (=> res!265853 e!370686)))

(assert (=> b!611615 (= res!265853 e!370682)))

(declare-fun res!265852 () Bool)

(assert (=> b!611615 (=> (not res!265852) (not e!370682))))

(assert (=> b!611615 (= res!265852 lt!261788)))

(declare-fun b!611616 () Bool)

(declare-fun res!265854 () Bool)

(assert (=> b!611616 (=> (not res!265854) (not e!370682))))

(assert (=> b!611616 (= res!265854 (not call!40867))))

(declare-fun b!611617 () Bool)

(assert (=> b!611617 (= e!370682 (= (head!1292 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun b!611618 () Bool)

(assert (=> b!611618 (= e!370686 e!370685)))

(declare-fun res!265851 () Bool)

(assert (=> b!611618 (=> (not res!265851) (not e!370685))))

(assert (=> b!611618 (= res!265851 (not lt!261788))))

(declare-fun b!611619 () Bool)

(assert (=> b!611619 (= e!370684 (not lt!261788))))

(declare-fun b!611620 () Bool)

(assert (=> b!611620 (= e!370681 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705))))) (tail!821 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705))))))))

(declare-fun bm!40862 () Bool)

(assert (=> bm!40862 (= call!40867 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(declare-fun b!611621 () Bool)

(assert (=> b!611621 (= e!370681 (nullable!451 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611622 () Bool)

(assert (=> b!611622 (= e!370683 (not (= (head!1292 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))))

(assert (= (and d!215294 c!113037) b!611621))

(assert (= (and d!215294 (not c!113037)) b!611620))

(assert (= (and d!215294 c!113036) b!611611))

(assert (= (and d!215294 (not c!113036)) b!611609))

(assert (= (and b!611609 c!113035) b!611619))

(assert (= (and b!611609 (not c!113035)) b!611612))

(assert (= (and b!611612 (not res!265858)) b!611615))

(assert (= (and b!611615 res!265852) b!611616))

(assert (= (and b!611616 res!265854) b!611613))

(assert (= (and b!611613 res!265855) b!611617))

(assert (= (and b!611615 (not res!265853)) b!611618))

(assert (= (and b!611618 res!265851) b!611610))

(assert (= (and b!611610 (not res!265857)) b!611614))

(assert (= (and b!611614 (not res!265856)) b!611622))

(assert (= (or b!611611 b!611610 b!611616) bm!40862))

(assert (=> bm!40862 m!878847))

(declare-fun m!879567 () Bool)

(assert (=> b!611617 m!879567))

(declare-fun m!879569 () Bool)

(assert (=> b!611613 m!879569))

(assert (=> b!611613 m!879569))

(declare-fun m!879571 () Bool)

(assert (=> b!611613 m!879571))

(assert (=> b!611620 m!879567))

(assert (=> b!611620 m!879567))

(declare-fun m!879573 () Bool)

(assert (=> b!611620 m!879573))

(assert (=> b!611620 m!879569))

(assert (=> b!611620 m!879573))

(assert (=> b!611620 m!879569))

(declare-fun m!879575 () Bool)

(assert (=> b!611620 m!879575))

(assert (=> b!611614 m!879569))

(assert (=> b!611614 m!879569))

(assert (=> b!611614 m!879571))

(assert (=> b!611621 m!879157))

(assert (=> b!611622 m!879567))

(assert (=> d!215294 m!878847))

(assert (=> d!215294 m!879159))

(assert (=> b!611055 d!215294))

(declare-fun d!215296 () Bool)

(declare-fun e!370729 () Bool)

(assert (=> d!215296 e!370729))

(declare-fun res!265883 () Bool)

(assert (=> d!215296 (=> (not res!265883) (not e!370729))))

(declare-fun lt!261856 () tuple2!6984)

(assert (=> d!215296 (= res!265883 (= (++!1713 (_1!3756 lt!261856) (_2!3756 lt!261856)) input!2705))))

(declare-fun e!370725 () tuple2!6984)

(assert (=> d!215296 (= lt!261856 e!370725)))

(declare-fun c!113059 () Bool)

(declare-fun lostCause!194 (Regex!1559) Bool)

(assert (=> d!215296 (= c!113059 (lostCause!194 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun lt!261873 () Unit!11182)

(declare-fun Unit!11196 () Unit!11182)

(assert (=> d!215296 (= lt!261873 Unit!11196)))

(assert (=> d!215296 (= (getSuffix!370 input!2705 Nil!6114) input!2705)))

(declare-fun lt!261865 () Unit!11182)

(declare-fun lt!261849 () Unit!11182)

(assert (=> d!215296 (= lt!261865 lt!261849)))

(declare-fun lt!261875 () List!6124)

(assert (=> d!215296 (= input!2705 lt!261875)))

(assert (=> d!215296 (= lt!261849 (lemmaSamePrefixThenSameSuffix!566 Nil!6114 input!2705 Nil!6114 lt!261875 input!2705))))

(assert (=> d!215296 (= lt!261875 (getSuffix!370 input!2705 Nil!6114))))

(declare-fun lt!261866 () Unit!11182)

(declare-fun lt!261861 () Unit!11182)

(assert (=> d!215296 (= lt!261866 lt!261861)))

(assert (=> d!215296 (isPrefix!853 Nil!6114 (++!1713 Nil!6114 input!2705))))

(assert (=> d!215296 (= lt!261861 (lemmaConcatTwoListThenFirstIsPrefix!698 Nil!6114 input!2705))))

(assert (=> d!215296 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215296 (= (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)) lt!261856)))

(declare-fun b!611684 () Bool)

(declare-fun c!113058 () Bool)

(declare-fun call!40886 () Bool)

(assert (=> b!611684 (= c!113058 call!40886)))

(declare-fun lt!261871 () Unit!11182)

(declare-fun lt!261851 () Unit!11182)

(assert (=> b!611684 (= lt!261871 lt!261851)))

(assert (=> b!611684 (= input!2705 Nil!6114)))

(declare-fun call!40887 () Unit!11182)

(assert (=> b!611684 (= lt!261851 call!40887)))

(declare-fun lt!261860 () Unit!11182)

(declare-fun lt!261852 () Unit!11182)

(assert (=> b!611684 (= lt!261860 lt!261852)))

(declare-fun call!40885 () Bool)

(assert (=> b!611684 call!40885))

(declare-fun call!40891 () Unit!11182)

(assert (=> b!611684 (= lt!261852 call!40891)))

(declare-fun e!370730 () tuple2!6984)

(declare-fun e!370726 () tuple2!6984)

(assert (=> b!611684 (= e!370730 e!370726)))

(declare-fun b!611685 () Bool)

(declare-fun e!370724 () tuple2!6984)

(declare-fun lt!261863 () tuple2!6984)

(assert (=> b!611685 (= e!370724 lt!261863)))

(declare-fun call!40888 () List!6124)

(declare-fun call!40890 () Regex!1559)

(declare-fun call!40889 () tuple2!6984)

(declare-fun bm!40880 () Bool)

(declare-fun lt!261853 () List!6124)

(assert (=> bm!40880 (= call!40889 (findLongestMatchInner!209 call!40890 lt!261853 (+ (size!4808 Nil!6114) 1) call!40888 input!2705 (size!4808 input!2705)))))

(declare-fun b!611686 () Bool)

(declare-fun c!113060 () Bool)

(assert (=> b!611686 (= c!113060 call!40886)))

(declare-fun lt!261874 () Unit!11182)

(declare-fun lt!261859 () Unit!11182)

(assert (=> b!611686 (= lt!261874 lt!261859)))

(declare-fun lt!261864 () C!4040)

(declare-fun lt!261855 () List!6124)

(assert (=> b!611686 (= (++!1713 (++!1713 Nil!6114 (Cons!6114 lt!261864 Nil!6114)) lt!261855) input!2705)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!62 (List!6124 C!4040 List!6124 List!6124) Unit!11182)

(assert (=> b!611686 (= lt!261859 (lemmaMoveElementToOtherListKeepsConcatEq!62 Nil!6114 lt!261864 lt!261855 input!2705))))

(assert (=> b!611686 (= lt!261855 (tail!821 input!2705))))

(assert (=> b!611686 (= lt!261864 (head!1292 input!2705))))

(declare-fun lt!261870 () Unit!11182)

(declare-fun lt!261867 () Unit!11182)

(assert (=> b!611686 (= lt!261870 lt!261867)))

(assert (=> b!611686 (isPrefix!853 (++!1713 Nil!6114 (Cons!6114 (head!1292 (getSuffix!370 input!2705 Nil!6114)) Nil!6114)) input!2705)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!68 (List!6124 List!6124) Unit!11182)

(assert (=> b!611686 (= lt!261867 (lemmaAddHeadSuffixToPrefixStillPrefix!68 Nil!6114 input!2705))))

(declare-fun lt!261858 () Unit!11182)

(declare-fun lt!261868 () Unit!11182)

(assert (=> b!611686 (= lt!261858 lt!261868)))

(assert (=> b!611686 (= lt!261868 (lemmaAddHeadSuffixToPrefixStillPrefix!68 Nil!6114 input!2705))))

(assert (=> b!611686 (= lt!261853 (++!1713 Nil!6114 (Cons!6114 (head!1292 input!2705) Nil!6114)))))

(declare-fun lt!261850 () Unit!11182)

(declare-fun e!370731 () Unit!11182)

(assert (=> b!611686 (= lt!261850 e!370731)))

(declare-fun c!113061 () Bool)

(assert (=> b!611686 (= c!113061 (= (size!4808 Nil!6114) (size!4808 input!2705)))))

(declare-fun lt!261862 () Unit!11182)

(declare-fun lt!261854 () Unit!11182)

(assert (=> b!611686 (= lt!261862 lt!261854)))

(assert (=> b!611686 (<= (size!4808 Nil!6114) (size!4808 input!2705))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!79 (List!6124 List!6124) Unit!11182)

(assert (=> b!611686 (= lt!261854 (lemmaIsPrefixThenSmallerEqSize!79 Nil!6114 input!2705))))

(declare-fun e!370727 () tuple2!6984)

(assert (=> b!611686 (= e!370730 e!370727)))

(declare-fun bm!40881 () Bool)

(assert (=> bm!40881 (= call!40888 (tail!821 input!2705))))

(declare-fun b!611687 () Bool)

(declare-fun Unit!11197 () Unit!11182)

(assert (=> b!611687 (= e!370731 Unit!11197)))

(declare-fun lt!261857 () Unit!11182)

(assert (=> b!611687 (= lt!261857 call!40891)))

(assert (=> b!611687 call!40885))

(declare-fun lt!261869 () Unit!11182)

(assert (=> b!611687 (= lt!261869 lt!261857)))

(declare-fun lt!261876 () Unit!11182)

(assert (=> b!611687 (= lt!261876 call!40887)))

(assert (=> b!611687 (= input!2705 Nil!6114)))

(declare-fun lt!261872 () Unit!11182)

(assert (=> b!611687 (= lt!261872 lt!261876)))

(assert (=> b!611687 false))

(declare-fun bm!40882 () Bool)

(assert (=> bm!40882 (= call!40891 (lemmaIsPrefixRefl!589 input!2705 input!2705))))

(declare-fun b!611688 () Bool)

(assert (=> b!611688 (= e!370726 (tuple2!6985 Nil!6114 input!2705))))

(declare-fun bm!40883 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!79 (List!6124 List!6124 List!6124) Unit!11182)

(assert (=> bm!40883 (= call!40887 (lemmaIsPrefixSameLengthThenSameList!79 input!2705 Nil!6114 input!2705))))

(declare-fun b!611689 () Bool)

(declare-fun e!370728 () Bool)

(assert (=> b!611689 (= e!370728 (>= (size!4808 (_1!3756 lt!261856)) (size!4808 Nil!6114)))))

(declare-fun bm!40884 () Bool)

(declare-fun call!40892 () C!4040)

(assert (=> bm!40884 (= call!40890 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) call!40892))))

(declare-fun bm!40885 () Bool)

(assert (=> bm!40885 (= call!40885 (isPrefix!853 input!2705 input!2705))))

(declare-fun b!611690 () Bool)

(assert (=> b!611690 (= e!370725 (tuple2!6985 Nil!6114 input!2705))))

(declare-fun b!611691 () Bool)

(assert (=> b!611691 (= e!370724 (tuple2!6985 Nil!6114 input!2705))))

(declare-fun b!611692 () Bool)

(assert (=> b!611692 (= e!370726 (tuple2!6985 Nil!6114 Nil!6114))))

(declare-fun b!611693 () Bool)

(declare-fun Unit!11198 () Unit!11182)

(assert (=> b!611693 (= e!370731 Unit!11198)))

(declare-fun b!611694 () Bool)

(assert (=> b!611694 (= e!370729 e!370728)))

(declare-fun res!265882 () Bool)

(assert (=> b!611694 (=> res!265882 e!370728)))

(assert (=> b!611694 (= res!265882 (isEmpty!4413 (_1!3756 lt!261856)))))

(declare-fun b!611695 () Bool)

(assert (=> b!611695 (= e!370725 e!370730)))

(declare-fun c!113062 () Bool)

(assert (=> b!611695 (= c!113062 (= (size!4808 Nil!6114) (size!4808 input!2705)))))

(declare-fun b!611696 () Bool)

(assert (=> b!611696 (= e!370727 call!40889)))

(declare-fun bm!40886 () Bool)

(assert (=> bm!40886 (= call!40892 (head!1292 input!2705))))

(declare-fun b!611697 () Bool)

(assert (=> b!611697 (= e!370727 e!370724)))

(assert (=> b!611697 (= lt!261863 call!40889)))

(declare-fun c!113057 () Bool)

(assert (=> b!611697 (= c!113057 (isEmpty!4413 (_1!3756 lt!261863)))))

(declare-fun bm!40887 () Bool)

(assert (=> bm!40887 (= call!40886 (nullable!451 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(assert (= (and d!215296 c!113059) b!611690))

(assert (= (and d!215296 (not c!113059)) b!611695))

(assert (= (and b!611695 c!113062) b!611684))

(assert (= (and b!611695 (not c!113062)) b!611686))

(assert (= (and b!611684 c!113058) b!611692))

(assert (= (and b!611684 (not c!113058)) b!611688))

(assert (= (and b!611686 c!113061) b!611687))

(assert (= (and b!611686 (not c!113061)) b!611693))

(assert (= (and b!611686 c!113060) b!611697))

(assert (= (and b!611686 (not c!113060)) b!611696))

(assert (= (and b!611697 c!113057) b!611691))

(assert (= (and b!611697 (not c!113057)) b!611685))

(assert (= (or b!611697 b!611696) bm!40886))

(assert (= (or b!611697 b!611696) bm!40881))

(assert (= (or b!611697 b!611696) bm!40884))

(assert (= (or b!611697 b!611696) bm!40880))

(assert (= (or b!611684 b!611687) bm!40885))

(assert (= (or b!611684 b!611687) bm!40883))

(assert (= (or b!611684 b!611686) bm!40887))

(assert (= (or b!611684 b!611687) bm!40882))

(assert (= (and d!215296 res!265883) b!611694))

(assert (= (and b!611694 (not res!265882)) b!611689))

(assert (=> bm!40881 m!879149))

(declare-fun m!879603 () Bool)

(assert (=> bm!40884 m!879603))

(declare-fun m!879605 () Bool)

(assert (=> b!611694 m!879605))

(declare-fun m!879607 () Bool)

(assert (=> b!611689 m!879607))

(assert (=> b!611689 m!878827))

(declare-fun m!879609 () Bool)

(assert (=> b!611697 m!879609))

(declare-fun m!879611 () Bool)

(assert (=> b!611686 m!879611))

(declare-fun m!879613 () Bool)

(assert (=> b!611686 m!879613))

(declare-fun m!879615 () Bool)

(assert (=> b!611686 m!879615))

(assert (=> b!611686 m!879147))

(declare-fun m!879617 () Bool)

(assert (=> b!611686 m!879617))

(declare-fun m!879619 () Bool)

(assert (=> b!611686 m!879619))

(declare-fun m!879621 () Bool)

(assert (=> b!611686 m!879621))

(assert (=> b!611686 m!879149))

(assert (=> b!611686 m!879617))

(declare-fun m!879623 () Bool)

(assert (=> b!611686 m!879623))

(declare-fun m!879625 () Bool)

(assert (=> b!611686 m!879625))

(assert (=> b!611686 m!878563))

(assert (=> b!611686 m!879623))

(assert (=> b!611686 m!879613))

(declare-fun m!879627 () Bool)

(assert (=> b!611686 m!879627))

(assert (=> b!611686 m!878827))

(declare-fun m!879629 () Bool)

(assert (=> b!611686 m!879629))

(assert (=> bm!40882 m!878653))

(assert (=> bm!40887 m!879157))

(assert (=> bm!40886 m!879147))

(assert (=> bm!40885 m!878661))

(declare-fun m!879631 () Bool)

(assert (=> d!215296 m!879631))

(declare-fun m!879633 () Bool)

(assert (=> d!215296 m!879633))

(assert (=> d!215296 m!879159))

(declare-fun m!879635 () Bool)

(assert (=> d!215296 m!879635))

(declare-fun m!879637 () Bool)

(assert (=> d!215296 m!879637))

(declare-fun m!879639 () Bool)

(assert (=> d!215296 m!879639))

(declare-fun m!879641 () Bool)

(assert (=> d!215296 m!879641))

(assert (=> d!215296 m!879635))

(assert (=> d!215296 m!879617))

(assert (=> bm!40880 m!878563))

(declare-fun m!879643 () Bool)

(assert (=> bm!40880 m!879643))

(declare-fun m!879645 () Bool)

(assert (=> bm!40883 m!879645))

(assert (=> b!611055 d!215296))

(declare-fun d!215314 () Bool)

(declare-fun lt!261877 () Int)

(assert (=> d!215314 (>= lt!261877 0)))

(declare-fun e!370732 () Int)

(assert (=> d!215314 (= lt!261877 e!370732)))

(declare-fun c!113063 () Bool)

(assert (=> d!215314 (= c!113063 ((_ is Nil!6114) Nil!6114))))

(assert (=> d!215314 (= (size!4808 Nil!6114) lt!261877)))

(declare-fun b!611698 () Bool)

(assert (=> b!611698 (= e!370732 0)))

(declare-fun b!611699 () Bool)

(assert (=> b!611699 (= e!370732 (+ 1 (size!4808 (t!80905 Nil!6114))))))

(assert (= (and d!215314 c!113063) b!611698))

(assert (= (and d!215314 (not c!113063)) b!611699))

(declare-fun m!879647 () Bool)

(assert (=> b!611699 m!879647))

(assert (=> b!611055 d!215314))

(assert (=> b!611055 d!215120))

(declare-fun b!611700 () Bool)

(declare-fun e!370736 () Bool)

(assert (=> b!611700 (= e!370736 (matchR!662 (regex!1225 (h!11516 rules!3103)) (_1!3756 (findLongestMatchInner!209 (regex!1225 (h!11516 rules!3103)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(declare-fun b!611701 () Bool)

(declare-fun e!370734 () Bool)

(declare-fun lt!261878 () Option!1576)

(assert (=> b!611701 (= e!370734 (= (size!4807 (_1!3755 (get!2352 lt!261878))) (size!4808 (originalCharacters!1264 (_1!3755 (get!2352 lt!261878))))))))

(declare-fun d!215316 () Bool)

(declare-fun e!370733 () Bool)

(assert (=> d!215316 e!370733))

(declare-fun res!265890 () Bool)

(assert (=> d!215316 (=> res!265890 e!370733)))

(assert (=> d!215316 (= res!265890 (isEmpty!4415 lt!261878))))

(declare-fun e!370735 () Option!1576)

(assert (=> d!215316 (= lt!261878 e!370735)))

(declare-fun c!113064 () Bool)

(declare-fun lt!261880 () tuple2!6984)

(assert (=> d!215316 (= c!113064 (isEmpty!4413 (_1!3756 lt!261880)))))

(assert (=> d!215316 (= lt!261880 (findLongestMatch!188 (regex!1225 (h!11516 rules!3103)) lt!261534))))

(assert (=> d!215316 (ruleValid!423 thiss!22590 (h!11516 rules!3103))))

(assert (=> d!215316 (= (maxPrefixOneRule!472 thiss!22590 (h!11516 rules!3103) lt!261534) lt!261878)))

(declare-fun b!611702 () Bool)

(declare-fun res!265885 () Bool)

(assert (=> b!611702 (=> (not res!265885) (not e!370734))))

(assert (=> b!611702 (= res!265885 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261878)))) (_2!3755 (get!2352 lt!261878))) lt!261534))))

(declare-fun b!611703 () Bool)

(declare-fun res!265884 () Bool)

(assert (=> b!611703 (=> (not res!265884) (not e!370734))))

(assert (=> b!611703 (= res!265884 (= (rule!2015 (_1!3755 (get!2352 lt!261878))) (h!11516 rules!3103)))))

(declare-fun b!611704 () Bool)

(assert (=> b!611704 (= e!370735 None!1575)))

(declare-fun b!611705 () Bool)

(declare-fun res!265888 () Bool)

(assert (=> b!611705 (=> (not res!265888) (not e!370734))))

(assert (=> b!611705 (= res!265888 (< (size!4808 (_2!3755 (get!2352 lt!261878))) (size!4808 lt!261534)))))

(declare-fun b!611706 () Bool)

(declare-fun res!265887 () Bool)

(assert (=> b!611706 (=> (not res!265887) (not e!370734))))

(assert (=> b!611706 (= res!265887 (= (value!39779 (_1!3755 (get!2352 lt!261878))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261878)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261878)))))))))

(declare-fun b!611707 () Bool)

(assert (=> b!611707 (= e!370735 (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (h!11516 rules!3103)) (seqFromList!1401 (_1!3756 lt!261880))) (h!11516 rules!3103) (size!4809 (seqFromList!1401 (_1!3756 lt!261880))) (_1!3756 lt!261880)) (_2!3756 lt!261880))))))

(declare-fun lt!261879 () Unit!11182)

(assert (=> b!611707 (= lt!261879 (longestMatchIsAcceptedByMatchOrIsEmpty!193 (regex!1225 (h!11516 rules!3103)) lt!261534))))

(declare-fun res!265889 () Bool)

(assert (=> b!611707 (= res!265889 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (h!11516 rules!3103)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(assert (=> b!611707 (=> res!265889 e!370736)))

(assert (=> b!611707 e!370736))

(declare-fun lt!261881 () Unit!11182)

(assert (=> b!611707 (= lt!261881 lt!261879)))

(declare-fun lt!261882 () Unit!11182)

(assert (=> b!611707 (= lt!261882 (lemmaSemiInverse!255 (transformation!1225 (h!11516 rules!3103)) (seqFromList!1401 (_1!3756 lt!261880))))))

(declare-fun b!611708 () Bool)

(assert (=> b!611708 (= e!370733 e!370734)))

(declare-fun res!265886 () Bool)

(assert (=> b!611708 (=> (not res!265886) (not e!370734))))

(assert (=> b!611708 (= res!265886 (matchR!662 (regex!1225 (h!11516 rules!3103)) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261878))))))))

(assert (= (and d!215316 c!113064) b!611704))

(assert (= (and d!215316 (not c!113064)) b!611707))

(assert (= (and b!611707 (not res!265889)) b!611700))

(assert (= (and d!215316 (not res!265890)) b!611708))

(assert (= (and b!611708 res!265886) b!611702))

(assert (= (and b!611702 res!265885) b!611705))

(assert (= (and b!611705 res!265888) b!611703))

(assert (= (and b!611703 res!265884) b!611706))

(assert (= (and b!611706 res!265887) b!611701))

(declare-fun m!879649 () Bool)

(assert (=> b!611702 m!879649))

(declare-fun m!879651 () Bool)

(assert (=> b!611702 m!879651))

(assert (=> b!611702 m!879651))

(declare-fun m!879653 () Bool)

(assert (=> b!611702 m!879653))

(assert (=> b!611702 m!879653))

(declare-fun m!879655 () Bool)

(assert (=> b!611702 m!879655))

(assert (=> b!611708 m!879649))

(assert (=> b!611708 m!879651))

(assert (=> b!611708 m!879651))

(assert (=> b!611708 m!879653))

(assert (=> b!611708 m!879653))

(declare-fun m!879657 () Bool)

(assert (=> b!611708 m!879657))

(assert (=> b!611700 m!878827))

(assert (=> b!611700 m!878865))

(assert (=> b!611700 m!878827))

(assert (=> b!611700 m!878865))

(declare-fun m!879659 () Bool)

(assert (=> b!611700 m!879659))

(declare-fun m!879661 () Bool)

(assert (=> b!611700 m!879661))

(assert (=> b!611701 m!879649))

(declare-fun m!879663 () Bool)

(assert (=> b!611701 m!879663))

(declare-fun m!879665 () Bool)

(assert (=> d!215316 m!879665))

(declare-fun m!879667 () Bool)

(assert (=> d!215316 m!879667))

(declare-fun m!879669 () Bool)

(assert (=> d!215316 m!879669))

(declare-fun m!879671 () Bool)

(assert (=> d!215316 m!879671))

(assert (=> b!611705 m!879649))

(declare-fun m!879673 () Bool)

(assert (=> b!611705 m!879673))

(assert (=> b!611705 m!878865))

(assert (=> b!611707 m!878827))

(assert (=> b!611707 m!878865))

(assert (=> b!611707 m!879659))

(declare-fun m!879675 () Bool)

(assert (=> b!611707 m!879675))

(declare-fun m!879677 () Bool)

(assert (=> b!611707 m!879677))

(declare-fun m!879679 () Bool)

(assert (=> b!611707 m!879679))

(assert (=> b!611707 m!878827))

(assert (=> b!611707 m!879675))

(declare-fun m!879681 () Bool)

(assert (=> b!611707 m!879681))

(assert (=> b!611707 m!878865))

(assert (=> b!611707 m!879675))

(assert (=> b!611707 m!879675))

(declare-fun m!879683 () Bool)

(assert (=> b!611707 m!879683))

(declare-fun m!879685 () Bool)

(assert (=> b!611707 m!879685))

(assert (=> b!611706 m!879649))

(declare-fun m!879687 () Bool)

(assert (=> b!611706 m!879687))

(assert (=> b!611706 m!879687))

(declare-fun m!879689 () Bool)

(assert (=> b!611706 m!879689))

(assert (=> b!611703 m!879649))

(assert (=> bm!40848 d!215316))

(declare-fun d!215318 () Bool)

(assert (=> d!215318 (= (isEmpty!4415 lt!261736) (not ((_ is Some!1575) lt!261736)))))

(assert (=> d!215218 d!215318))

(declare-fun b!611711 () Bool)

(declare-fun e!370738 () Bool)

(assert (=> b!611711 (= e!370738 (isPrefix!853 (tail!821 lt!261534) (tail!821 lt!261534)))))

(declare-fun b!611709 () Bool)

(declare-fun e!370739 () Bool)

(assert (=> b!611709 (= e!370739 e!370738)))

(declare-fun res!265893 () Bool)

(assert (=> b!611709 (=> (not res!265893) (not e!370738))))

(assert (=> b!611709 (= res!265893 (not ((_ is Nil!6114) lt!261534)))))

(declare-fun b!611710 () Bool)

(declare-fun res!265894 () Bool)

(assert (=> b!611710 (=> (not res!265894) (not e!370738))))

(assert (=> b!611710 (= res!265894 (= (head!1292 lt!261534) (head!1292 lt!261534)))))

(declare-fun d!215320 () Bool)

(declare-fun e!370737 () Bool)

(assert (=> d!215320 e!370737))

(declare-fun res!265891 () Bool)

(assert (=> d!215320 (=> res!265891 e!370737)))

(declare-fun lt!261883 () Bool)

(assert (=> d!215320 (= res!265891 (not lt!261883))))

(assert (=> d!215320 (= lt!261883 e!370739)))

(declare-fun res!265892 () Bool)

(assert (=> d!215320 (=> res!265892 e!370739)))

(assert (=> d!215320 (= res!265892 ((_ is Nil!6114) lt!261534))))

(assert (=> d!215320 (= (isPrefix!853 lt!261534 lt!261534) lt!261883)))

(declare-fun b!611712 () Bool)

(assert (=> b!611712 (= e!370737 (>= (size!4808 lt!261534) (size!4808 lt!261534)))))

(assert (= (and d!215320 (not res!265892)) b!611709))

(assert (= (and b!611709 res!265893) b!611710))

(assert (= (and b!611710 res!265894) b!611711))

(assert (= (and d!215320 (not res!265891)) b!611712))

(assert (=> b!611711 m!878867))

(assert (=> b!611711 m!878867))

(assert (=> b!611711 m!878867))

(assert (=> b!611711 m!878867))

(declare-fun m!879691 () Bool)

(assert (=> b!611711 m!879691))

(assert (=> b!611710 m!879169))

(assert (=> b!611710 m!879169))

(assert (=> b!611712 m!878865))

(assert (=> b!611712 m!878865))

(assert (=> d!215218 d!215320))

(declare-fun d!215322 () Bool)

(assert (=> d!215322 (isPrefix!853 lt!261534 lt!261534)))

(declare-fun lt!261884 () Unit!11182)

(assert (=> d!215322 (= lt!261884 (choose!4501 lt!261534 lt!261534))))

(assert (=> d!215322 (= (lemmaIsPrefixRefl!589 lt!261534 lt!261534) lt!261884)))

(declare-fun bs!71590 () Bool)

(assert (= bs!71590 d!215322))

(assert (=> bs!71590 m!879281))

(declare-fun m!879693 () Bool)

(assert (=> bs!71590 m!879693))

(assert (=> d!215218 d!215322))

(declare-fun d!215324 () Bool)

(assert (=> d!215324 true))

(declare-fun lt!261887 () Bool)

(declare-fun lambda!16177 () Int)

(declare-fun forall!1563 (List!6125 Int) Bool)

(assert (=> d!215324 (= lt!261887 (forall!1563 rules!3103 lambda!16177))))

(declare-fun e!370744 () Bool)

(assert (=> d!215324 (= lt!261887 e!370744)))

(declare-fun res!265900 () Bool)

(assert (=> d!215324 (=> res!265900 e!370744)))

(assert (=> d!215324 (= res!265900 (not ((_ is Cons!6115) rules!3103)))))

(assert (=> d!215324 (= (rulesValidInductive!461 thiss!22590 rules!3103) lt!261887)))

(declare-fun b!611717 () Bool)

(declare-fun e!370745 () Bool)

(assert (=> b!611717 (= e!370744 e!370745)))

(declare-fun res!265899 () Bool)

(assert (=> b!611717 (=> (not res!265899) (not e!370745))))

(assert (=> b!611717 (= res!265899 (ruleValid!423 thiss!22590 (h!11516 rules!3103)))))

(declare-fun b!611718 () Bool)

(assert (=> b!611718 (= e!370745 (rulesValidInductive!461 thiss!22590 (t!80906 rules!3103)))))

(assert (= (and d!215324 (not res!265900)) b!611717))

(assert (= (and b!611717 res!265899) b!611718))

(declare-fun m!879695 () Bool)

(assert (=> d!215324 m!879695))

(assert (=> b!611717 m!879671))

(declare-fun m!879697 () Bool)

(assert (=> b!611718 m!879697))

(assert (=> d!215218 d!215324))

(declare-fun b!611721 () Bool)

(declare-fun e!370746 () Bool)

(assert (=> b!611721 (= e!370746 (inv!16 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))

(declare-fun b!611722 () Bool)

(declare-fun e!370748 () Bool)

(assert (=> b!611722 (= e!370748 (inv!15 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))

(declare-fun d!215326 () Bool)

(declare-fun c!113066 () Bool)

(assert (=> d!215326 (= c!113066 ((_ is IntegerValue!3747) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))

(assert (=> d!215326 (= (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)) e!370746)))

(declare-fun b!611723 () Bool)

(declare-fun res!265901 () Bool)

(assert (=> b!611723 (=> res!265901 e!370748)))

(assert (=> b!611723 (= res!265901 (not ((_ is IntegerValue!3749) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))))

(declare-fun e!370747 () Bool)

(assert (=> b!611723 (= e!370747 e!370748)))

(declare-fun b!611724 () Bool)

(assert (=> b!611724 (= e!370747 (inv!17 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))

(declare-fun b!611725 () Bool)

(assert (=> b!611725 (= e!370746 e!370747)))

(declare-fun c!113065 () Bool)

(assert (=> b!611725 (= c!113065 ((_ is IntegerValue!3748) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))

(assert (= (and d!215326 c!113066) b!611721))

(assert (= (and d!215326 (not c!113066)) b!611725))

(assert (= (and b!611725 c!113065) b!611724))

(assert (= (and b!611725 (not c!113065)) b!611723))

(assert (= (and b!611723 (not res!265901)) b!611722))

(declare-fun m!879699 () Bool)

(assert (=> b!611721 m!879699))

(declare-fun m!879701 () Bool)

(assert (=> b!611722 m!879701))

(declare-fun m!879703 () Bool)

(assert (=> b!611724 m!879703))

(assert (=> tb!53347 d!215326))

(declare-fun b!611729 () Bool)

(declare-fun e!370749 () Bool)

(declare-fun lt!261888 () List!6124)

(assert (=> b!611729 (= e!370749 (or (not (= (_2!3755 (get!2352 lt!261656)) Nil!6114)) (= lt!261888 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656)))))))))

(declare-fun b!611727 () Bool)

(declare-fun e!370750 () List!6124)

(assert (=> b!611727 (= e!370750 (Cons!6114 (h!11515 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))) (++!1713 (t!80905 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))) (_2!3755 (get!2352 lt!261656)))))))

(declare-fun b!611728 () Bool)

(declare-fun res!265902 () Bool)

(assert (=> b!611728 (=> (not res!265902) (not e!370749))))

(assert (=> b!611728 (= res!265902 (= (size!4808 lt!261888) (+ (size!4808 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))) (size!4808 (_2!3755 (get!2352 lt!261656))))))))

(declare-fun b!611726 () Bool)

(assert (=> b!611726 (= e!370750 (_2!3755 (get!2352 lt!261656)))))

(declare-fun d!215328 () Bool)

(assert (=> d!215328 e!370749))

(declare-fun res!265903 () Bool)

(assert (=> d!215328 (=> (not res!265903) (not e!370749))))

(assert (=> d!215328 (= res!265903 (= (content!1117 lt!261888) ((_ map or) (content!1117 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))) (content!1117 (_2!3755 (get!2352 lt!261656))))))))

(assert (=> d!215328 (= lt!261888 e!370750)))

(declare-fun c!113067 () Bool)

(assert (=> d!215328 (= c!113067 ((_ is Nil!6114) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))))))

(assert (=> d!215328 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656)))) (_2!3755 (get!2352 lt!261656))) lt!261888)))

(assert (= (and d!215328 c!113067) b!611726))

(assert (= (and d!215328 (not c!113067)) b!611727))

(assert (= (and d!215328 res!265903) b!611728))

(assert (= (and b!611728 res!265902) b!611729))

(declare-fun m!879705 () Bool)

(assert (=> b!611727 m!879705))

(declare-fun m!879707 () Bool)

(assert (=> b!611728 m!879707))

(assert (=> b!611728 m!879015))

(declare-fun m!879709 () Bool)

(assert (=> b!611728 m!879709))

(assert (=> b!611728 m!879033))

(declare-fun m!879711 () Bool)

(assert (=> d!215328 m!879711))

(assert (=> d!215328 m!879015))

(declare-fun m!879713 () Bool)

(assert (=> d!215328 m!879713))

(declare-fun m!879715 () Bool)

(assert (=> d!215328 m!879715))

(assert (=> b!611177 d!215328))

(declare-fun d!215330 () Bool)

(assert (=> d!215330 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656)))) (list!2574 (c!112918 (charsOf!854 (_1!3755 (get!2352 lt!261656))))))))

(declare-fun bs!71591 () Bool)

(assert (= bs!71591 d!215330))

(declare-fun m!879717 () Bool)

(assert (=> bs!71591 m!879717))

(assert (=> b!611177 d!215330))

(declare-fun d!215332 () Bool)

(declare-fun lt!261889 () BalanceConc!3892)

(assert (=> d!215332 (= (list!2572 lt!261889) (originalCharacters!1264 (_1!3755 (get!2352 lt!261656))))))

(assert (=> d!215332 (= lt!261889 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656))))) (value!39779 (_1!3755 (get!2352 lt!261656)))))))

(assert (=> d!215332 (= (charsOf!854 (_1!3755 (get!2352 lt!261656))) lt!261889)))

(declare-fun b_lambda!24273 () Bool)

(assert (=> (not b_lambda!24273) (not d!215332)))

(declare-fun tb!53407 () Bool)

(declare-fun t!81006 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81006) tb!53407))

(declare-fun b!611730 () Bool)

(declare-fun e!370751 () Bool)

(declare-fun tp!189292 () Bool)

(assert (=> b!611730 (= e!370751 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656))))) (value!39779 (_1!3755 (get!2352 lt!261656)))))) tp!189292))))

(declare-fun result!60146 () Bool)

(assert (=> tb!53407 (= result!60146 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656))))) (value!39779 (_1!3755 (get!2352 lt!261656))))) e!370751))))

(assert (= tb!53407 b!611730))

(declare-fun m!879719 () Bool)

(assert (=> b!611730 m!879719))

(declare-fun m!879721 () Bool)

(assert (=> tb!53407 m!879721))

(assert (=> d!215332 t!81006))

(declare-fun b_and!60571 () Bool)

(assert (= b_and!60559 (and (=> t!81006 result!60146) b_and!60571)))

(declare-fun t!81008 () Bool)

(declare-fun tb!53409 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81008) tb!53409))

(declare-fun result!60148 () Bool)

(assert (= result!60148 result!60146))

(assert (=> d!215332 t!81008))

(declare-fun b_and!60573 () Bool)

(assert (= b_and!60561 (and (=> t!81008 result!60148) b_and!60573)))

(declare-fun tb!53411 () Bool)

(declare-fun t!81010 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81010) tb!53411))

(declare-fun result!60150 () Bool)

(assert (= result!60150 result!60146))

(assert (=> d!215332 t!81010))

(declare-fun b_and!60575 () Bool)

(assert (= b_and!60563 (and (=> t!81010 result!60150) b_and!60575)))

(declare-fun m!879723 () Bool)

(assert (=> d!215332 m!879723))

(declare-fun m!879725 () Bool)

(assert (=> d!215332 m!879725))

(assert (=> b!611177 d!215332))

(assert (=> b!611177 d!215276))

(declare-fun lt!261890 () List!6124)

(declare-fun e!370752 () Bool)

(declare-fun b!611734 () Bool)

(assert (=> b!611734 (= e!370752 (or (not (= lt!261715 Nil!6114)) (= lt!261890 lt!261518)))))

(declare-fun b!611732 () Bool)

(declare-fun e!370753 () List!6124)

(assert (=> b!611732 (= e!370753 (Cons!6114 (h!11515 lt!261518) (++!1713 (t!80905 lt!261518) lt!261715)))))

(declare-fun b!611733 () Bool)

(declare-fun res!265904 () Bool)

(assert (=> b!611733 (=> (not res!265904) (not e!370752))))

(assert (=> b!611733 (= res!265904 (= (size!4808 lt!261890) (+ (size!4808 lt!261518) (size!4808 lt!261715))))))

(declare-fun b!611731 () Bool)

(assert (=> b!611731 (= e!370753 lt!261715)))

(declare-fun d!215334 () Bool)

(assert (=> d!215334 e!370752))

(declare-fun res!265905 () Bool)

(assert (=> d!215334 (=> (not res!265905) (not e!370752))))

(assert (=> d!215334 (= res!265905 (= (content!1117 lt!261890) ((_ map or) (content!1117 lt!261518) (content!1117 lt!261715))))))

(assert (=> d!215334 (= lt!261890 e!370753)))

(declare-fun c!113068 () Bool)

(assert (=> d!215334 (= c!113068 ((_ is Nil!6114) lt!261518))))

(assert (=> d!215334 (= (++!1713 lt!261518 lt!261715) lt!261890)))

(assert (= (and d!215334 c!113068) b!611731))

(assert (= (and d!215334 (not c!113068)) b!611732))

(assert (= (and d!215334 res!265905) b!611733))

(assert (= (and b!611733 res!265904) b!611734))

(declare-fun m!879727 () Bool)

(assert (=> b!611732 m!879727))

(declare-fun m!879729 () Bool)

(assert (=> b!611733 m!879729))

(assert (=> b!611733 m!878645))

(declare-fun m!879731 () Bool)

(assert (=> b!611733 m!879731))

(declare-fun m!879733 () Bool)

(assert (=> d!215334 m!879733))

(assert (=> d!215334 m!879245))

(declare-fun m!879735 () Bool)

(assert (=> d!215334 m!879735))

(assert (=> d!215198 d!215334))

(assert (=> d!215198 d!215120))

(assert (=> d!215198 d!215200))

(declare-fun d!215336 () Bool)

(declare-fun lt!261891 () Int)

(assert (=> d!215336 (>= lt!261891 0)))

(declare-fun e!370754 () Int)

(assert (=> d!215336 (= lt!261891 e!370754)))

(declare-fun c!113069 () Bool)

(assert (=> d!215336 (= c!113069 (and ((_ is Cons!6115) (t!80906 rules!3103)) (= (h!11516 (t!80906 rules!3103)) (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(assert (=> d!215336 (contains!1441 (t!80906 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554))))))

(assert (=> d!215336 (= (getIndex!56 (t!80906 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!261891)))

(declare-fun b!611737 () Bool)

(declare-fun e!370755 () Int)

(assert (=> b!611737 (= e!370755 (+ 1 (getIndex!56 (t!80906 (t!80906 rules!3103)) (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611736 () Bool)

(assert (=> b!611736 (= e!370754 e!370755)))

(declare-fun c!113070 () Bool)

(assert (=> b!611736 (= c!113070 (and ((_ is Cons!6115) (t!80906 rules!3103)) (not (= (h!11516 (t!80906 rules!3103)) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun b!611738 () Bool)

(assert (=> b!611738 (= e!370755 (- 1))))

(declare-fun b!611735 () Bool)

(assert (=> b!611735 (= e!370754 0)))

(assert (= (and d!215336 c!113069) b!611735))

(assert (= (and d!215336 (not c!113069)) b!611736))

(assert (= (and b!611736 c!113070) b!611737))

(assert (= (and b!611736 (not c!113070)) b!611738))

(assert (=> d!215336 m!879275))

(declare-fun m!879737 () Bool)

(assert (=> b!611737 m!879737))

(assert (=> b!611353 d!215336))

(declare-fun d!215338 () Bool)

(declare-fun lt!261892 () Int)

(assert (=> d!215338 (>= lt!261892 0)))

(declare-fun e!370756 () Int)

(assert (=> d!215338 (= lt!261892 e!370756)))

(declare-fun c!113071 () Bool)

(assert (=> d!215338 (= c!113071 ((_ is Nil!6114) (t!80905 input!2705)))))

(assert (=> d!215338 (= (size!4808 (t!80905 input!2705)) lt!261892)))

(declare-fun b!611739 () Bool)

(assert (=> b!611739 (= e!370756 0)))

(declare-fun b!611740 () Bool)

(assert (=> b!611740 (= e!370756 (+ 1 (size!4808 (t!80905 (t!80905 input!2705)))))))

(assert (= (and d!215338 c!113071) b!611739))

(assert (= (and d!215338 (not c!113071)) b!611740))

(declare-fun m!879739 () Bool)

(assert (=> b!611740 m!879739))

(assert (=> b!611216 d!215338))

(declare-fun d!215340 () Bool)

(assert (=> d!215340 (= (isDefined!1387 lt!261565) (not (isEmpty!4415 lt!261565)))))

(declare-fun bs!71592 () Bool)

(assert (= bs!71592 d!215340))

(assert (=> bs!71592 m!878705))

(assert (=> b!610949 d!215340))

(declare-fun d!215342 () Bool)

(declare-fun lt!261893 () List!6124)

(assert (=> d!215342 (= (++!1713 (t!80905 lt!261545) lt!261893) (tail!821 lt!261534))))

(declare-fun e!370757 () List!6124)

(assert (=> d!215342 (= lt!261893 e!370757)))

(declare-fun c!113072 () Bool)

(assert (=> d!215342 (= c!113072 ((_ is Cons!6114) (t!80905 lt!261545)))))

(assert (=> d!215342 (>= (size!4808 (tail!821 lt!261534)) (size!4808 (t!80905 lt!261545)))))

(assert (=> d!215342 (= (getSuffix!370 (tail!821 lt!261534) (t!80905 lt!261545)) lt!261893)))

(declare-fun b!611741 () Bool)

(assert (=> b!611741 (= e!370757 (getSuffix!370 (tail!821 (tail!821 lt!261534)) (t!80905 (t!80905 lt!261545))))))

(declare-fun b!611742 () Bool)

(assert (=> b!611742 (= e!370757 (tail!821 lt!261534))))

(assert (= (and d!215342 c!113072) b!611741))

(assert (= (and d!215342 (not c!113072)) b!611742))

(declare-fun m!879741 () Bool)

(assert (=> d!215342 m!879741))

(assert (=> d!215342 m!878867))

(declare-fun m!879743 () Bool)

(assert (=> d!215342 m!879743))

(assert (=> d!215342 m!879221))

(assert (=> b!611741 m!878867))

(declare-fun m!879745 () Bool)

(assert (=> b!611741 m!879745))

(assert (=> b!611741 m!879745))

(declare-fun m!879747 () Bool)

(assert (=> b!611741 m!879747))

(assert (=> b!611068 d!215342))

(declare-fun d!215344 () Bool)

(assert (=> d!215344 (= (tail!821 lt!261534) (t!80905 lt!261534))))

(assert (=> b!611068 d!215344))

(declare-fun d!215346 () Bool)

(assert (=> d!215346 (= (isEmpty!4413 (tail!821 input!2705)) ((_ is Nil!6114) (tail!821 input!2705)))))

(assert (=> b!611280 d!215346))

(assert (=> b!611280 d!215284))

(declare-fun b!611745 () Bool)

(declare-fun e!370759 () Bool)

(assert (=> b!611745 (= e!370759 (isPrefix!853 (tail!821 (tail!821 input!2705)) (tail!821 (tail!821 lt!261553))))))

(declare-fun b!611743 () Bool)

(declare-fun e!370760 () Bool)

(assert (=> b!611743 (= e!370760 e!370759)))

(declare-fun res!265908 () Bool)

(assert (=> b!611743 (=> (not res!265908) (not e!370759))))

(assert (=> b!611743 (= res!265908 (not ((_ is Nil!6114) (tail!821 lt!261553))))))

(declare-fun b!611744 () Bool)

(declare-fun res!265909 () Bool)

(assert (=> b!611744 (=> (not res!265909) (not e!370759))))

(assert (=> b!611744 (= res!265909 (= (head!1292 (tail!821 input!2705)) (head!1292 (tail!821 lt!261553))))))

(declare-fun d!215348 () Bool)

(declare-fun e!370758 () Bool)

(assert (=> d!215348 e!370758))

(declare-fun res!265906 () Bool)

(assert (=> d!215348 (=> res!265906 e!370758)))

(declare-fun lt!261894 () Bool)

(assert (=> d!215348 (= res!265906 (not lt!261894))))

(assert (=> d!215348 (= lt!261894 e!370760)))

(declare-fun res!265907 () Bool)

(assert (=> d!215348 (=> res!265907 e!370760)))

(assert (=> d!215348 (= res!265907 ((_ is Nil!6114) (tail!821 input!2705)))))

(assert (=> d!215348 (= (isPrefix!853 (tail!821 input!2705) (tail!821 lt!261553)) lt!261894)))

(declare-fun b!611746 () Bool)

(assert (=> b!611746 (= e!370758 (>= (size!4808 (tail!821 lt!261553)) (size!4808 (tail!821 input!2705))))))

(assert (= (and d!215348 (not res!265907)) b!611743))

(assert (= (and b!611743 res!265908) b!611744))

(assert (= (and b!611744 res!265909) b!611745))

(assert (= (and d!215348 (not res!265906)) b!611746))

(assert (=> b!611745 m!879149))

(assert (=> b!611745 m!879555))

(assert (=> b!611745 m!879213))

(declare-fun m!879749 () Bool)

(assert (=> b!611745 m!879749))

(assert (=> b!611745 m!879555))

(assert (=> b!611745 m!879749))

(declare-fun m!879751 () Bool)

(assert (=> b!611745 m!879751))

(assert (=> b!611744 m!879149))

(declare-fun m!879753 () Bool)

(assert (=> b!611744 m!879753))

(assert (=> b!611744 m!879213))

(declare-fun m!879755 () Bool)

(assert (=> b!611744 m!879755))

(assert (=> b!611746 m!879213))

(declare-fun m!879757 () Bool)

(assert (=> b!611746 m!879757))

(assert (=> b!611746 m!879149))

(assert (=> b!611746 m!879553))

(assert (=> b!611323 d!215348))

(assert (=> b!611323 d!215284))

(declare-fun d!215350 () Bool)

(assert (=> d!215350 (= (tail!821 lt!261553) (t!80905 lt!261553))))

(assert (=> b!611323 d!215350))

(declare-fun d!215352 () Bool)

(assert (=> d!215352 (= (nullable!451 (regex!1225 (rule!2015 token!491))) (nullableFct!148 (regex!1225 (rule!2015 token!491))))))

(declare-fun bs!71593 () Bool)

(assert (= bs!71593 d!215352))

(declare-fun m!879759 () Bool)

(assert (=> bs!71593 m!879759))

(assert (=> b!611389 d!215352))

(declare-fun d!215354 () Bool)

(declare-fun lt!261895 () Int)

(assert (=> d!215354 (>= lt!261895 0)))

(declare-fun e!370761 () Int)

(assert (=> d!215354 (= lt!261895 e!370761)))

(declare-fun c!113073 () Bool)

(assert (=> d!215354 (= c!113073 ((_ is Nil!6114) lt!261675))))

(assert (=> d!215354 (= (size!4808 lt!261675) lt!261895)))

(declare-fun b!611747 () Bool)

(assert (=> b!611747 (= e!370761 0)))

(declare-fun b!611748 () Bool)

(assert (=> b!611748 (= e!370761 (+ 1 (size!4808 (t!80905 lt!261675))))))

(assert (= (and d!215354 c!113073) b!611747))

(assert (= (and d!215354 (not c!113073)) b!611748))

(declare-fun m!879761 () Bool)

(assert (=> b!611748 m!879761))

(assert (=> b!611245 d!215354))

(assert (=> b!611245 d!215182))

(declare-fun d!215356 () Bool)

(declare-fun lt!261896 () Int)

(assert (=> d!215356 (>= lt!261896 0)))

(declare-fun e!370762 () Int)

(assert (=> d!215356 (= lt!261896 e!370762)))

(declare-fun c!113074 () Bool)

(assert (=> d!215356 (= c!113074 ((_ is Nil!6114) suffix!1342))))

(assert (=> d!215356 (= (size!4808 suffix!1342) lt!261896)))

(declare-fun b!611749 () Bool)

(assert (=> b!611749 (= e!370762 0)))

(declare-fun b!611750 () Bool)

(assert (=> b!611750 (= e!370762 (+ 1 (size!4808 (t!80905 suffix!1342))))))

(assert (= (and d!215356 c!113074) b!611749))

(assert (= (and d!215356 (not c!113074)) b!611750))

(declare-fun m!879763 () Bool)

(assert (=> b!611750 m!879763))

(assert (=> b!611245 d!215356))

(declare-fun d!215358 () Bool)

(assert (=> d!215358 (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))) (list!2574 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))))))

(declare-fun bs!71594 () Bool)

(assert (= bs!71594 d!215358))

(declare-fun m!879765 () Bool)

(assert (=> bs!71594 m!879765))

(assert (=> b!610975 d!215358))

(declare-fun d!215360 () Bool)

(assert (=> d!215360 (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))) (list!2574 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))))

(declare-fun bs!71595 () Bool)

(assert (= bs!71595 d!215360))

(declare-fun m!879767 () Bool)

(assert (=> bs!71595 m!879767))

(assert (=> d!215110 d!215360))

(declare-fun d!215362 () Bool)

(assert (=> d!215362 (= (list!2572 lt!261539) (list!2574 (c!112918 lt!261539)))))

(declare-fun bs!71596 () Bool)

(assert (= bs!71596 d!215362))

(declare-fun m!879769 () Bool)

(assert (=> bs!71596 m!879769))

(assert (=> d!215110 d!215362))

(declare-fun d!215364 () Bool)

(declare-fun dynLambda!3557 (Int BalanceConc!3892) Bool)

(assert (=> d!215364 (dynLambda!3557 lambda!16173 lt!261539)))

(declare-fun lt!261899 () Unit!11182)

(declare-fun choose!4505 (Int BalanceConc!3892) Unit!11182)

(assert (=> d!215364 (= lt!261899 (choose!4505 lambda!16173 lt!261539))))

(declare-fun Forall!307 (Int) Bool)

(assert (=> d!215364 (Forall!307 lambda!16173)))

(assert (=> d!215364 (= (ForallOf!127 lambda!16173 lt!261539) lt!261899)))

(declare-fun b_lambda!24275 () Bool)

(assert (=> (not b_lambda!24275) (not d!215364)))

(declare-fun bs!71597 () Bool)

(assert (= bs!71597 d!215364))

(declare-fun m!879771 () Bool)

(assert (=> bs!71597 m!879771))

(declare-fun m!879773 () Bool)

(assert (=> bs!71597 m!879773))

(declare-fun m!879775 () Bool)

(assert (=> bs!71597 m!879775))

(assert (=> d!215110 d!215364))

(declare-fun d!215366 () Bool)

(declare-fun c!113077 () Bool)

(assert (=> d!215366 (= c!113077 ((_ is Nil!6114) lt!261741))))

(declare-fun e!370765 () (InoxSet C!4040))

(assert (=> d!215366 (= (content!1117 lt!261741) e!370765)))

(declare-fun b!611755 () Bool)

(assert (=> b!611755 (= e!370765 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!611756 () Bool)

(assert (=> b!611756 (= e!370765 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 lt!261741) true) (content!1117 (t!80905 lt!261741))))))

(assert (= (and d!215366 c!113077) b!611755))

(assert (= (and d!215366 (not c!113077)) b!611756))

(declare-fun m!879777 () Bool)

(assert (=> b!611756 m!879777))

(declare-fun m!879779 () Bool)

(assert (=> b!611756 m!879779))

(assert (=> d!215220 d!215366))

(declare-fun d!215368 () Bool)

(declare-fun c!113078 () Bool)

(assert (=> d!215368 (= c!113078 ((_ is Nil!6114) input!2705))))

(declare-fun e!370766 () (InoxSet C!4040))

(assert (=> d!215368 (= (content!1117 input!2705) e!370766)))

(declare-fun b!611757 () Bool)

(assert (=> b!611757 (= e!370766 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!611758 () Bool)

(assert (=> b!611758 (= e!370766 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 input!2705) true) (content!1117 (t!80905 input!2705))))))

(assert (= (and d!215368 c!113078) b!611757))

(assert (= (and d!215368 (not c!113078)) b!611758))

(declare-fun m!879781 () Bool)

(assert (=> b!611758 m!879781))

(assert (=> b!611758 m!879543))

(assert (=> d!215220 d!215368))

(declare-fun d!215370 () Bool)

(declare-fun c!113079 () Bool)

(assert (=> d!215370 (= c!113079 ((_ is Nil!6114) suffix!1342))))

(declare-fun e!370767 () (InoxSet C!4040))

(assert (=> d!215370 (= (content!1117 suffix!1342) e!370767)))

(declare-fun b!611759 () Bool)

(assert (=> b!611759 (= e!370767 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!611760 () Bool)

(assert (=> b!611760 (= e!370767 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 suffix!1342) true) (content!1117 (t!80905 suffix!1342))))))

(assert (= (and d!215370 c!113079) b!611759))

(assert (= (and d!215370 (not c!113079)) b!611760))

(declare-fun m!879783 () Bool)

(assert (=> b!611760 m!879783))

(declare-fun m!879785 () Bool)

(assert (=> b!611760 m!879785))

(assert (=> d!215220 d!215370))

(assert (=> d!215174 d!215224))

(declare-fun d!215372 () Bool)

(declare-fun lt!261900 () Int)

(assert (=> d!215372 (>= lt!261900 0)))

(declare-fun e!370768 () Int)

(assert (=> d!215372 (= lt!261900 e!370768)))

(declare-fun c!113080 () Bool)

(assert (=> d!215372 (= c!113080 ((_ is Nil!6114) (_2!3755 (get!2352 lt!261565))))))

(assert (=> d!215372 (= (size!4808 (_2!3755 (get!2352 lt!261565))) lt!261900)))

(declare-fun b!611761 () Bool)

(assert (=> b!611761 (= e!370768 0)))

(declare-fun b!611762 () Bool)

(assert (=> b!611762 (= e!370768 (+ 1 (size!4808 (t!80905 (_2!3755 (get!2352 lt!261565))))))))

(assert (= (and d!215372 c!113080) b!611761))

(assert (= (and d!215372 (not c!113080)) b!611762))

(declare-fun m!879787 () Bool)

(assert (=> b!611762 m!879787))

(assert (=> b!610952 d!215372))

(declare-fun d!215374 () Bool)

(assert (=> d!215374 (= (get!2352 lt!261565) (v!16484 lt!261565))))

(assert (=> b!610952 d!215374))

(assert (=> b!610952 d!215120))

(declare-fun d!215376 () Bool)

(declare-fun lt!261901 () Int)

(assert (=> d!215376 (>= lt!261901 0)))

(declare-fun e!370769 () Int)

(assert (=> d!215376 (= lt!261901 e!370769)))

(declare-fun c!113081 () Bool)

(assert (=> d!215376 (= c!113081 ((_ is Nil!6114) lt!261551))))

(assert (=> d!215376 (= (size!4808 lt!261551) lt!261901)))

(declare-fun b!611763 () Bool)

(assert (=> b!611763 (= e!370769 0)))

(declare-fun b!611764 () Bool)

(assert (=> b!611764 (= e!370769 (+ 1 (size!4808 (t!80905 lt!261551))))))

(assert (= (and d!215376 c!113081) b!611763))

(assert (= (and d!215376 (not c!113081)) b!611764))

(declare-fun m!879789 () Bool)

(assert (=> b!611764 m!879789))

(assert (=> b!611320 d!215376))

(assert (=> b!611320 d!215200))

(declare-fun d!215378 () Bool)

(assert (=> d!215378 (= (head!1292 lt!261545) (h!11515 lt!261545))))

(assert (=> b!611328 d!215378))

(declare-fun d!215380 () Bool)

(assert (=> d!215380 (= (head!1292 lt!261553) (h!11515 lt!261553))))

(assert (=> b!611328 d!215380))

(declare-fun d!215382 () Bool)

(declare-fun e!370776 () Bool)

(assert (=> d!215382 e!370776))

(declare-fun c!113083 () Bool)

(assert (=> d!215382 (= c!113083 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun lt!261902 () Bool)

(declare-fun e!370770 () Bool)

(assert (=> d!215382 (= lt!261902 e!370770)))

(declare-fun c!113084 () Bool)

(assert (=> d!215382 (= c!113084 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))))))

(assert (=> d!215382 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215382 (= (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))) lt!261902)))

(declare-fun b!611765 () Bool)

(declare-fun e!370773 () Bool)

(assert (=> b!611765 (= e!370776 e!370773)))

(declare-fun c!113082 () Bool)

(assert (=> b!611765 (= c!113082 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611766 () Bool)

(declare-fun e!370774 () Bool)

(declare-fun e!370772 () Bool)

(assert (=> b!611766 (= e!370774 e!370772)))

(declare-fun res!265916 () Bool)

(assert (=> b!611766 (=> res!265916 e!370772)))

(declare-fun call!40893 () Bool)

(assert (=> b!611766 (= res!265916 call!40893)))

(declare-fun b!611767 () Bool)

(assert (=> b!611767 (= e!370776 (= lt!261902 call!40893))))

(declare-fun b!611768 () Bool)

(declare-fun res!265917 () Bool)

(declare-fun e!370775 () Bool)

(assert (=> b!611768 (=> res!265917 e!370775)))

(assert (=> b!611768 (= res!265917 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(assert (=> b!611768 (= e!370773 e!370775)))

(declare-fun b!611769 () Bool)

(declare-fun res!265914 () Bool)

(declare-fun e!370771 () Bool)

(assert (=> b!611769 (=> (not res!265914) (not e!370771))))

(assert (=> b!611769 (= res!265914 (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605)))))))))

(declare-fun b!611770 () Bool)

(declare-fun res!265915 () Bool)

(assert (=> b!611770 (=> res!265915 e!370772)))

(assert (=> b!611770 (= res!265915 (not (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))))))))

(declare-fun b!611771 () Bool)

(declare-fun res!265912 () Bool)

(assert (=> b!611771 (=> res!265912 e!370775)))

(assert (=> b!611771 (= res!265912 e!370771)))

(declare-fun res!265911 () Bool)

(assert (=> b!611771 (=> (not res!265911) (not e!370771))))

(assert (=> b!611771 (= res!265911 lt!261902)))

(declare-fun b!611772 () Bool)

(declare-fun res!265913 () Bool)

(assert (=> b!611772 (=> (not res!265913) (not e!370771))))

(assert (=> b!611772 (= res!265913 (not call!40893))))

(declare-fun b!611773 () Bool)

(assert (=> b!611773 (= e!370771 (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun b!611774 () Bool)

(assert (=> b!611774 (= e!370775 e!370774)))

(declare-fun res!265910 () Bool)

(assert (=> b!611774 (=> (not res!265910) (not e!370774))))

(assert (=> b!611774 (= res!265910 (not lt!261902))))

(declare-fun b!611775 () Bool)

(assert (=> b!611775 (= e!370773 (not lt!261902))))

(declare-fun b!611776 () Bool)

(assert (=> b!611776 (= e!370770 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605)))))) (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605)))))))))

(declare-fun bm!40888 () Bool)

(assert (=> bm!40888 (= call!40893 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))))))

(declare-fun b!611777 () Bool)

(assert (=> b!611777 (= e!370770 (nullable!451 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611778 () Bool)

(assert (=> b!611778 (= e!370772 (not (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))))

(assert (= (and d!215382 c!113084) b!611777))

(assert (= (and d!215382 (not c!113084)) b!611776))

(assert (= (and d!215382 c!113083) b!611767))

(assert (= (and d!215382 (not c!113083)) b!611765))

(assert (= (and b!611765 c!113082) b!611775))

(assert (= (and b!611765 (not c!113082)) b!611768))

(assert (= (and b!611768 (not res!265917)) b!611771))

(assert (= (and b!611771 res!265911) b!611772))

(assert (= (and b!611772 res!265913) b!611769))

(assert (= (and b!611769 res!265914) b!611773))

(assert (= (and b!611771 (not res!265912)) b!611774))

(assert (= (and b!611774 res!265910) b!611766))

(assert (= (and b!611766 (not res!265916)) b!611770))

(assert (= (and b!611770 (not res!265915)) b!611778))

(assert (= (or b!611767 b!611766 b!611772) bm!40888))

(assert (=> bm!40888 m!878821))

(declare-fun m!879791 () Bool)

(assert (=> bm!40888 m!879791))

(assert (=> b!611773 m!878821))

(declare-fun m!879793 () Bool)

(assert (=> b!611773 m!879793))

(assert (=> b!611769 m!878821))

(declare-fun m!879795 () Bool)

(assert (=> b!611769 m!879795))

(assert (=> b!611769 m!879795))

(declare-fun m!879797 () Bool)

(assert (=> b!611769 m!879797))

(assert (=> b!611776 m!878821))

(assert (=> b!611776 m!879793))

(assert (=> b!611776 m!879793))

(declare-fun m!879799 () Bool)

(assert (=> b!611776 m!879799))

(assert (=> b!611776 m!878821))

(assert (=> b!611776 m!879795))

(assert (=> b!611776 m!879799))

(assert (=> b!611776 m!879795))

(declare-fun m!879801 () Bool)

(assert (=> b!611776 m!879801))

(assert (=> b!611770 m!878821))

(assert (=> b!611770 m!879795))

(assert (=> b!611770 m!879795))

(assert (=> b!611770 m!879797))

(assert (=> b!611777 m!879157))

(assert (=> b!611778 m!878821))

(assert (=> b!611778 m!879793))

(assert (=> d!215382 m!878821))

(assert (=> d!215382 m!879791))

(assert (=> d!215382 m!879159))

(assert (=> b!611063 d!215382))

(declare-fun d!215384 () Bool)

(assert (=> d!215384 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605)))) (list!2574 (c!112918 (charsOf!854 (_1!3755 (get!2352 lt!261605))))))))

(declare-fun bs!71598 () Bool)

(assert (= bs!71598 d!215384))

(declare-fun m!879803 () Bool)

(assert (=> bs!71598 m!879803))

(assert (=> b!611063 d!215384))

(declare-fun d!215386 () Bool)

(declare-fun lt!261903 () BalanceConc!3892)

(assert (=> d!215386 (= (list!2572 lt!261903) (originalCharacters!1264 (_1!3755 (get!2352 lt!261605))))))

(assert (=> d!215386 (= lt!261903 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605))))) (value!39779 (_1!3755 (get!2352 lt!261605)))))))

(assert (=> d!215386 (= (charsOf!854 (_1!3755 (get!2352 lt!261605))) lt!261903)))

(declare-fun b_lambda!24277 () Bool)

(assert (=> (not b_lambda!24277) (not d!215386)))

(declare-fun tb!53413 () Bool)

(declare-fun t!81012 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81012) tb!53413))

(declare-fun b!611779 () Bool)

(declare-fun e!370777 () Bool)

(declare-fun tp!189293 () Bool)

(assert (=> b!611779 (= e!370777 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605))))) (value!39779 (_1!3755 (get!2352 lt!261605)))))) tp!189293))))

(declare-fun result!60152 () Bool)

(assert (=> tb!53413 (= result!60152 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605))))) (value!39779 (_1!3755 (get!2352 lt!261605))))) e!370777))))

(assert (= tb!53413 b!611779))

(declare-fun m!879805 () Bool)

(assert (=> b!611779 m!879805))

(declare-fun m!879807 () Bool)

(assert (=> tb!53413 m!879807))

(assert (=> d!215386 t!81012))

(declare-fun b_and!60577 () Bool)

(assert (= b_and!60571 (and (=> t!81012 result!60152) b_and!60577)))

(declare-fun t!81014 () Bool)

(declare-fun tb!53415 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81014) tb!53415))

(declare-fun result!60154 () Bool)

(assert (= result!60154 result!60152))

(assert (=> d!215386 t!81014))

(declare-fun b_and!60579 () Bool)

(assert (= b_and!60573 (and (=> t!81014 result!60154) b_and!60579)))

(declare-fun tb!53417 () Bool)

(declare-fun t!81016 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81016) tb!53417))

(declare-fun result!60156 () Bool)

(assert (= result!60156 result!60152))

(assert (=> d!215386 t!81016))

(declare-fun b_and!60581 () Bool)

(assert (= b_and!60575 (and (=> t!81016 result!60156) b_and!60581)))

(declare-fun m!879809 () Bool)

(assert (=> d!215386 m!879809))

(declare-fun m!879811 () Bool)

(assert (=> d!215386 m!879811))

(assert (=> b!611063 d!215386))

(declare-fun d!215388 () Bool)

(assert (=> d!215388 (= (get!2352 lt!261605) (v!16484 lt!261605))))

(assert (=> b!611063 d!215388))

(declare-fun d!215390 () Bool)

(assert (=> d!215390 (= (isEmpty!4413 (originalCharacters!1264 token!491)) ((_ is Nil!6114) (originalCharacters!1264 token!491)))))

(assert (=> d!214982 d!215390))

(declare-fun d!215392 () Bool)

(declare-fun lt!261904 () Int)

(assert (=> d!215392 (>= lt!261904 0)))

(declare-fun e!370778 () Int)

(assert (=> d!215392 (= lt!261904 e!370778)))

(declare-fun c!113085 () Bool)

(assert (=> d!215392 (= c!113085 (and ((_ is Cons!6115) (t!80906 rules!3103)) (= (h!11516 (t!80906 rules!3103)) (rule!2015 token!491))))))

(assert (=> d!215392 (contains!1441 (t!80906 rules!3103) (rule!2015 token!491))))

(assert (=> d!215392 (= (getIndex!56 (t!80906 rules!3103) (rule!2015 token!491)) lt!261904)))

(declare-fun b!611782 () Bool)

(declare-fun e!370779 () Int)

(assert (=> b!611782 (= e!370779 (+ 1 (getIndex!56 (t!80906 (t!80906 rules!3103)) (rule!2015 token!491))))))

(declare-fun b!611781 () Bool)

(assert (=> b!611781 (= e!370778 e!370779)))

(declare-fun c!113086 () Bool)

(assert (=> b!611781 (= c!113086 (and ((_ is Cons!6115) (t!80906 rules!3103)) (not (= (h!11516 (t!80906 rules!3103)) (rule!2015 token!491)))))))

(declare-fun b!611783 () Bool)

(assert (=> b!611783 (= e!370779 (- 1))))

(declare-fun b!611780 () Bool)

(assert (=> b!611780 (= e!370778 0)))

(assert (= (and d!215392 c!113085) b!611780))

(assert (= (and d!215392 (not c!113085)) b!611781))

(assert (= (and b!611781 c!113086) b!611782))

(assert (= (and b!611781 (not c!113086)) b!611783))

(assert (=> d!215392 m!878757))

(declare-fun m!879813 () Bool)

(assert (=> b!611782 m!879813))

(assert (=> b!611357 d!215392))

(assert (=> b!611382 d!215346))

(assert (=> b!611382 d!215284))

(declare-fun b!611786 () Bool)

(declare-fun e!370781 () Bool)

(assert (=> b!611786 (= e!370781 (isPrefix!853 (tail!821 (tail!821 input!2705)) (tail!821 (tail!821 input!2705))))))

(declare-fun b!611784 () Bool)

(declare-fun e!370782 () Bool)

(assert (=> b!611784 (= e!370782 e!370781)))

(declare-fun res!265920 () Bool)

(assert (=> b!611784 (=> (not res!265920) (not e!370781))))

(assert (=> b!611784 (= res!265920 (not ((_ is Nil!6114) (tail!821 input!2705))))))

(declare-fun b!611785 () Bool)

(declare-fun res!265921 () Bool)

(assert (=> b!611785 (=> (not res!265921) (not e!370781))))

(assert (=> b!611785 (= res!265921 (= (head!1292 (tail!821 input!2705)) (head!1292 (tail!821 input!2705))))))

(declare-fun d!215394 () Bool)

(declare-fun e!370780 () Bool)

(assert (=> d!215394 e!370780))

(declare-fun res!265918 () Bool)

(assert (=> d!215394 (=> res!265918 e!370780)))

(declare-fun lt!261905 () Bool)

(assert (=> d!215394 (= res!265918 (not lt!261905))))

(assert (=> d!215394 (= lt!261905 e!370782)))

(declare-fun res!265919 () Bool)

(assert (=> d!215394 (=> res!265919 e!370782)))

(assert (=> d!215394 (= res!265919 ((_ is Nil!6114) (tail!821 input!2705)))))

(assert (=> d!215394 (= (isPrefix!853 (tail!821 input!2705) (tail!821 input!2705)) lt!261905)))

(declare-fun b!611787 () Bool)

(assert (=> b!611787 (= e!370780 (>= (size!4808 (tail!821 input!2705)) (size!4808 (tail!821 input!2705))))))

(assert (= (and d!215394 (not res!265919)) b!611784))

(assert (= (and b!611784 res!265920) b!611785))

(assert (= (and b!611785 res!265921) b!611786))

(assert (= (and d!215394 (not res!265918)) b!611787))

(assert (=> b!611786 m!879149))

(assert (=> b!611786 m!879555))

(assert (=> b!611786 m!879149))

(assert (=> b!611786 m!879555))

(assert (=> b!611786 m!879555))

(assert (=> b!611786 m!879555))

(declare-fun m!879815 () Bool)

(assert (=> b!611786 m!879815))

(assert (=> b!611785 m!879149))

(assert (=> b!611785 m!879753))

(assert (=> b!611785 m!879149))

(assert (=> b!611785 m!879753))

(assert (=> b!611787 m!879149))

(assert (=> b!611787 m!879553))

(assert (=> b!611787 m!879149))

(assert (=> b!611787 m!879553))

(assert (=> b!611313 d!215394))

(assert (=> b!611313 d!215284))

(assert (=> b!611288 d!215260))

(declare-fun b!611788 () Bool)

(declare-fun e!370783 () Bool)

(assert (=> b!611788 (= e!370783 (inv!16 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))

(declare-fun b!611789 () Bool)

(declare-fun e!370785 () Bool)

(assert (=> b!611789 (= e!370785 (inv!15 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))

(declare-fun d!215396 () Bool)

(declare-fun c!113088 () Bool)

(assert (=> d!215396 (= c!113088 ((_ is IntegerValue!3747) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))

(assert (=> d!215396 (= (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)) e!370783)))

(declare-fun b!611790 () Bool)

(declare-fun res!265922 () Bool)

(assert (=> b!611790 (=> res!265922 e!370785)))

(assert (=> b!611790 (= res!265922 (not ((_ is IntegerValue!3749) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))))

(declare-fun e!370784 () Bool)

(assert (=> b!611790 (= e!370784 e!370785)))

(declare-fun b!611791 () Bool)

(assert (=> b!611791 (= e!370784 (inv!17 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))

(declare-fun b!611792 () Bool)

(assert (=> b!611792 (= e!370783 e!370784)))

(declare-fun c!113087 () Bool)

(assert (=> b!611792 (= c!113087 ((_ is IntegerValue!3748) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))

(assert (= (and d!215396 c!113088) b!611788))

(assert (= (and d!215396 (not c!113088)) b!611792))

(assert (= (and b!611792 c!113087) b!611791))

(assert (= (and b!611792 (not c!113087)) b!611790))

(assert (= (and b!611790 (not res!265922)) b!611789))

(declare-fun m!879817 () Bool)

(assert (=> b!611788 m!879817))

(declare-fun m!879819 () Bool)

(assert (=> b!611789 m!879819))

(declare-fun m!879821 () Bool)

(assert (=> b!611791 m!879821))

(assert (=> tb!53319 d!215396))

(declare-fun d!215398 () Bool)

(declare-fun lt!261906 () Bool)

(assert (=> d!215398 (= lt!261906 (select (content!1115 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!261736)))))))

(declare-fun e!370787 () Bool)

(assert (=> d!215398 (= lt!261906 e!370787)))

(declare-fun res!265924 () Bool)

(assert (=> d!215398 (=> (not res!265924) (not e!370787))))

(assert (=> d!215398 (= res!265924 ((_ is Cons!6115) rules!3103))))

(assert (=> d!215398 (= (contains!1441 rules!3103 (rule!2015 (_1!3755 (get!2352 lt!261736)))) lt!261906)))

(declare-fun b!611793 () Bool)

(declare-fun e!370786 () Bool)

(assert (=> b!611793 (= e!370787 e!370786)))

(declare-fun res!265923 () Bool)

(assert (=> b!611793 (=> res!265923 e!370786)))

(assert (=> b!611793 (= res!265923 (= (h!11516 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!261736)))))))

(declare-fun b!611794 () Bool)

(assert (=> b!611794 (= e!370786 (contains!1441 (t!80906 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!261736)))))))

(assert (= (and d!215398 res!265924) b!611793))

(assert (= (and b!611793 (not res!265923)) b!611794))

(assert (=> d!215398 m!878753))

(declare-fun m!879823 () Bool)

(assert (=> d!215398 m!879823))

(declare-fun m!879825 () Bool)

(assert (=> b!611794 m!879825))

(assert (=> b!611400 d!215398))

(assert (=> b!611400 d!215270))

(declare-fun d!215400 () Bool)

(assert (=> d!215400 (= (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))) ((_ is Nil!6114) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(assert (=> b!611182 d!215400))

(declare-fun d!215402 () Bool)

(assert (=> d!215402 (= (apply!1478 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 (_1!3756 lt!261658))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 (_1!3756 lt!261658))))))

(declare-fun b_lambda!24279 () Bool)

(assert (=> (not b_lambda!24279) (not d!215402)))

(declare-fun tb!53419 () Bool)

(declare-fun t!81018 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81018) tb!53419))

(declare-fun result!60158 () Bool)

(assert (=> tb!53419 (= result!60158 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 (_1!3756 lt!261658)))))))

(declare-fun m!879827 () Bool)

(assert (=> tb!53419 m!879827))

(assert (=> d!215402 t!81018))

(declare-fun b_and!60583 () Bool)

(assert (= b_and!60565 (and (=> t!81018 result!60158) b_and!60583)))

(declare-fun t!81020 () Bool)

(declare-fun tb!53421 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81020) tb!53421))

(declare-fun result!60160 () Bool)

(assert (= result!60160 result!60158))

(assert (=> d!215402 t!81020))

(declare-fun b_and!60585 () Bool)

(assert (= b_and!60567 (and (=> t!81020 result!60160) b_and!60585)))

(declare-fun tb!53423 () Bool)

(declare-fun t!81022 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81022) tb!53423))

(declare-fun result!60162 () Bool)

(assert (= result!60162 result!60158))

(assert (=> d!215402 t!81022))

(declare-fun b_and!60587 () Bool)

(assert (= b_and!60569 (and (=> t!81022 result!60162) b_and!60587)))

(assert (=> d!215402 m!879045))

(declare-fun m!879829 () Bool)

(assert (=> d!215402 m!879829))

(assert (=> b!611182 d!215402))

(declare-fun d!215404 () Bool)

(declare-fun e!370794 () Bool)

(assert (=> d!215404 e!370794))

(declare-fun res!265926 () Bool)

(assert (=> d!215404 (=> (not res!265926) (not e!370794))))

(declare-fun lt!261914 () tuple2!6984)

(assert (=> d!215404 (= res!265926 (= (++!1713 (_1!3756 lt!261914) (_2!3756 lt!261914)) lt!261534))))

(declare-fun e!370790 () tuple2!6984)

(assert (=> d!215404 (= lt!261914 e!370790)))

(declare-fun c!113091 () Bool)

(assert (=> d!215404 (= c!113091 (lostCause!194 (regex!1225 (rule!2015 token!491))))))

(declare-fun lt!261931 () Unit!11182)

(declare-fun Unit!11202 () Unit!11182)

(assert (=> d!215404 (= lt!261931 Unit!11202)))

(assert (=> d!215404 (= (getSuffix!370 lt!261534 Nil!6114) lt!261534)))

(declare-fun lt!261923 () Unit!11182)

(declare-fun lt!261907 () Unit!11182)

(assert (=> d!215404 (= lt!261923 lt!261907)))

(declare-fun lt!261933 () List!6124)

(assert (=> d!215404 (= lt!261534 lt!261933)))

(assert (=> d!215404 (= lt!261907 (lemmaSamePrefixThenSameSuffix!566 Nil!6114 lt!261534 Nil!6114 lt!261933 lt!261534))))

(assert (=> d!215404 (= lt!261933 (getSuffix!370 lt!261534 Nil!6114))))

(declare-fun lt!261924 () Unit!11182)

(declare-fun lt!261919 () Unit!11182)

(assert (=> d!215404 (= lt!261924 lt!261919)))

(assert (=> d!215404 (isPrefix!853 Nil!6114 (++!1713 Nil!6114 lt!261534))))

(assert (=> d!215404 (= lt!261919 (lemmaConcatTwoListThenFirstIsPrefix!698 Nil!6114 lt!261534))))

(assert (=> d!215404 (validRegex!546 (regex!1225 (rule!2015 token!491)))))

(assert (=> d!215404 (= (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)) lt!261914)))

(declare-fun b!611795 () Bool)

(declare-fun c!113090 () Bool)

(declare-fun call!40895 () Bool)

(assert (=> b!611795 (= c!113090 call!40895)))

(declare-fun lt!261929 () Unit!11182)

(declare-fun lt!261909 () Unit!11182)

(assert (=> b!611795 (= lt!261929 lt!261909)))

(assert (=> b!611795 (= lt!261534 Nil!6114)))

(declare-fun call!40896 () Unit!11182)

(assert (=> b!611795 (= lt!261909 call!40896)))

(declare-fun lt!261918 () Unit!11182)

(declare-fun lt!261910 () Unit!11182)

(assert (=> b!611795 (= lt!261918 lt!261910)))

(declare-fun call!40894 () Bool)

(assert (=> b!611795 call!40894))

(declare-fun call!40900 () Unit!11182)

(assert (=> b!611795 (= lt!261910 call!40900)))

(declare-fun e!370795 () tuple2!6984)

(declare-fun e!370791 () tuple2!6984)

(assert (=> b!611795 (= e!370795 e!370791)))

(declare-fun b!611796 () Bool)

(declare-fun e!370789 () tuple2!6984)

(declare-fun lt!261921 () tuple2!6984)

(assert (=> b!611796 (= e!370789 lt!261921)))

(declare-fun lt!261911 () List!6124)

(declare-fun call!40898 () tuple2!6984)

(declare-fun bm!40889 () Bool)

(declare-fun call!40899 () Regex!1559)

(declare-fun call!40897 () List!6124)

(assert (=> bm!40889 (= call!40898 (findLongestMatchInner!209 call!40899 lt!261911 (+ (size!4808 Nil!6114) 1) call!40897 lt!261534 (size!4808 lt!261534)))))

(declare-fun b!611797 () Bool)

(declare-fun c!113092 () Bool)

(assert (=> b!611797 (= c!113092 call!40895)))

(declare-fun lt!261932 () Unit!11182)

(declare-fun lt!261917 () Unit!11182)

(assert (=> b!611797 (= lt!261932 lt!261917)))

(declare-fun lt!261922 () C!4040)

(declare-fun lt!261913 () List!6124)

(assert (=> b!611797 (= (++!1713 (++!1713 Nil!6114 (Cons!6114 lt!261922 Nil!6114)) lt!261913) lt!261534)))

(assert (=> b!611797 (= lt!261917 (lemmaMoveElementToOtherListKeepsConcatEq!62 Nil!6114 lt!261922 lt!261913 lt!261534))))

(assert (=> b!611797 (= lt!261913 (tail!821 lt!261534))))

(assert (=> b!611797 (= lt!261922 (head!1292 lt!261534))))

(declare-fun lt!261928 () Unit!11182)

(declare-fun lt!261925 () Unit!11182)

(assert (=> b!611797 (= lt!261928 lt!261925)))

(assert (=> b!611797 (isPrefix!853 (++!1713 Nil!6114 (Cons!6114 (head!1292 (getSuffix!370 lt!261534 Nil!6114)) Nil!6114)) lt!261534)))

(assert (=> b!611797 (= lt!261925 (lemmaAddHeadSuffixToPrefixStillPrefix!68 Nil!6114 lt!261534))))

(declare-fun lt!261916 () Unit!11182)

(declare-fun lt!261926 () Unit!11182)

(assert (=> b!611797 (= lt!261916 lt!261926)))

(assert (=> b!611797 (= lt!261926 (lemmaAddHeadSuffixToPrefixStillPrefix!68 Nil!6114 lt!261534))))

(assert (=> b!611797 (= lt!261911 (++!1713 Nil!6114 (Cons!6114 (head!1292 lt!261534) Nil!6114)))))

(declare-fun lt!261908 () Unit!11182)

(declare-fun e!370796 () Unit!11182)

(assert (=> b!611797 (= lt!261908 e!370796)))

(declare-fun c!113093 () Bool)

(assert (=> b!611797 (= c!113093 (= (size!4808 Nil!6114) (size!4808 lt!261534)))))

(declare-fun lt!261920 () Unit!11182)

(declare-fun lt!261912 () Unit!11182)

(assert (=> b!611797 (= lt!261920 lt!261912)))

(assert (=> b!611797 (<= (size!4808 Nil!6114) (size!4808 lt!261534))))

(assert (=> b!611797 (= lt!261912 (lemmaIsPrefixThenSmallerEqSize!79 Nil!6114 lt!261534))))

(declare-fun e!370792 () tuple2!6984)

(assert (=> b!611797 (= e!370795 e!370792)))

(declare-fun bm!40890 () Bool)

(assert (=> bm!40890 (= call!40897 (tail!821 lt!261534))))

(declare-fun b!611798 () Bool)

(declare-fun Unit!11203 () Unit!11182)

(assert (=> b!611798 (= e!370796 Unit!11203)))

(declare-fun lt!261915 () Unit!11182)

(assert (=> b!611798 (= lt!261915 call!40900)))

(assert (=> b!611798 call!40894))

(declare-fun lt!261927 () Unit!11182)

(assert (=> b!611798 (= lt!261927 lt!261915)))

(declare-fun lt!261934 () Unit!11182)

(assert (=> b!611798 (= lt!261934 call!40896)))

(assert (=> b!611798 (= lt!261534 Nil!6114)))

(declare-fun lt!261930 () Unit!11182)

(assert (=> b!611798 (= lt!261930 lt!261934)))

(assert (=> b!611798 false))

(declare-fun bm!40891 () Bool)

(assert (=> bm!40891 (= call!40900 (lemmaIsPrefixRefl!589 lt!261534 lt!261534))))

(declare-fun b!611799 () Bool)

(assert (=> b!611799 (= e!370791 (tuple2!6985 Nil!6114 lt!261534))))

(declare-fun bm!40892 () Bool)

(assert (=> bm!40892 (= call!40896 (lemmaIsPrefixSameLengthThenSameList!79 lt!261534 Nil!6114 lt!261534))))

(declare-fun b!611800 () Bool)

(declare-fun e!370793 () Bool)

(assert (=> b!611800 (= e!370793 (>= (size!4808 (_1!3756 lt!261914)) (size!4808 Nil!6114)))))

(declare-fun bm!40893 () Bool)

(declare-fun call!40901 () C!4040)

(assert (=> bm!40893 (= call!40899 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) call!40901))))

(declare-fun bm!40894 () Bool)

(assert (=> bm!40894 (= call!40894 (isPrefix!853 lt!261534 lt!261534))))

(declare-fun b!611801 () Bool)

(assert (=> b!611801 (= e!370790 (tuple2!6985 Nil!6114 lt!261534))))

(declare-fun b!611802 () Bool)

(assert (=> b!611802 (= e!370789 (tuple2!6985 Nil!6114 lt!261534))))

(declare-fun b!611803 () Bool)

(assert (=> b!611803 (= e!370791 (tuple2!6985 Nil!6114 Nil!6114))))

(declare-fun b!611804 () Bool)

(declare-fun Unit!11204 () Unit!11182)

(assert (=> b!611804 (= e!370796 Unit!11204)))

(declare-fun b!611805 () Bool)

(assert (=> b!611805 (= e!370794 e!370793)))

(declare-fun res!265925 () Bool)

(assert (=> b!611805 (=> res!265925 e!370793)))

(assert (=> b!611805 (= res!265925 (isEmpty!4413 (_1!3756 lt!261914)))))

(declare-fun b!611806 () Bool)

(assert (=> b!611806 (= e!370790 e!370795)))

(declare-fun c!113094 () Bool)

(assert (=> b!611806 (= c!113094 (= (size!4808 Nil!6114) (size!4808 lt!261534)))))

(declare-fun b!611807 () Bool)

(assert (=> b!611807 (= e!370792 call!40898)))

(declare-fun bm!40895 () Bool)

(assert (=> bm!40895 (= call!40901 (head!1292 lt!261534))))

(declare-fun b!611808 () Bool)

(assert (=> b!611808 (= e!370792 e!370789)))

(assert (=> b!611808 (= lt!261921 call!40898)))

(declare-fun c!113089 () Bool)

(assert (=> b!611808 (= c!113089 (isEmpty!4413 (_1!3756 lt!261921)))))

(declare-fun bm!40896 () Bool)

(assert (=> bm!40896 (= call!40895 (nullable!451 (regex!1225 (rule!2015 token!491))))))

(assert (= (and d!215404 c!113091) b!611801))

(assert (= (and d!215404 (not c!113091)) b!611806))

(assert (= (and b!611806 c!113094) b!611795))

(assert (= (and b!611806 (not c!113094)) b!611797))

(assert (= (and b!611795 c!113090) b!611803))

(assert (= (and b!611795 (not c!113090)) b!611799))

(assert (= (and b!611797 c!113093) b!611798))

(assert (= (and b!611797 (not c!113093)) b!611804))

(assert (= (and b!611797 c!113092) b!611808))

(assert (= (and b!611797 (not c!113092)) b!611807))

(assert (= (and b!611808 c!113089) b!611802))

(assert (= (and b!611808 (not c!113089)) b!611796))

(assert (= (or b!611808 b!611807) bm!40895))

(assert (= (or b!611808 b!611807) bm!40890))

(assert (= (or b!611808 b!611807) bm!40893))

(assert (= (or b!611808 b!611807) bm!40889))

(assert (= (or b!611795 b!611798) bm!40894))

(assert (= (or b!611795 b!611798) bm!40892))

(assert (= (or b!611795 b!611797) bm!40896))

(assert (= (or b!611795 b!611798) bm!40891))

(assert (= (and d!215404 res!265926) b!611805))

(assert (= (and b!611805 (not res!265925)) b!611800))

(assert (=> bm!40890 m!878867))

(declare-fun m!879831 () Bool)

(assert (=> bm!40893 m!879831))

(declare-fun m!879833 () Bool)

(assert (=> b!611805 m!879833))

(declare-fun m!879835 () Bool)

(assert (=> b!611800 m!879835))

(assert (=> b!611800 m!878827))

(declare-fun m!879837 () Bool)

(assert (=> b!611808 m!879837))

(declare-fun m!879839 () Bool)

(assert (=> b!611797 m!879839))

(declare-fun m!879841 () Bool)

(assert (=> b!611797 m!879841))

(declare-fun m!879843 () Bool)

(assert (=> b!611797 m!879843))

(assert (=> b!611797 m!879169))

(declare-fun m!879845 () Bool)

(assert (=> b!611797 m!879845))

(declare-fun m!879847 () Bool)

(assert (=> b!611797 m!879847))

(declare-fun m!879849 () Bool)

(assert (=> b!611797 m!879849))

(assert (=> b!611797 m!878867))

(assert (=> b!611797 m!879845))

(declare-fun m!879851 () Bool)

(assert (=> b!611797 m!879851))

(declare-fun m!879853 () Bool)

(assert (=> b!611797 m!879853))

(assert (=> b!611797 m!878865))

(assert (=> b!611797 m!879851))

(assert (=> b!611797 m!879841))

(declare-fun m!879855 () Bool)

(assert (=> b!611797 m!879855))

(assert (=> b!611797 m!878827))

(declare-fun m!879857 () Bool)

(assert (=> b!611797 m!879857))

(assert (=> bm!40891 m!879283))

(assert (=> bm!40896 m!879189))

(assert (=> bm!40895 m!879169))

(assert (=> bm!40894 m!879281))

(declare-fun m!879859 () Bool)

(assert (=> d!215404 m!879859))

(declare-fun m!879861 () Bool)

(assert (=> d!215404 m!879861))

(assert (=> d!215404 m!879187))

(declare-fun m!879863 () Bool)

(assert (=> d!215404 m!879863))

(declare-fun m!879865 () Bool)

(assert (=> d!215404 m!879865))

(declare-fun m!879867 () Bool)

(assert (=> d!215404 m!879867))

(declare-fun m!879869 () Bool)

(assert (=> d!215404 m!879869))

(assert (=> d!215404 m!879863))

(assert (=> d!215404 m!879845))

(assert (=> bm!40889 m!878865))

(declare-fun m!879871 () Bool)

(assert (=> bm!40889 m!879871))

(declare-fun m!879873 () Bool)

(assert (=> bm!40892 m!879873))

(assert (=> b!611182 d!215404))

(declare-fun bs!71599 () Bool)

(declare-fun d!215406 () Bool)

(assert (= bs!71599 (and d!215406 d!215030)))

(declare-fun lambda!16178 () Int)

(assert (=> bs!71599 (= lambda!16178 lambda!16172)))

(declare-fun bs!71600 () Bool)

(assert (= bs!71600 (and d!215406 d!215110)))

(assert (=> bs!71600 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (= lambda!16178 lambda!16173))))

(declare-fun b!611809 () Bool)

(declare-fun e!370797 () Bool)

(assert (=> b!611809 (= e!370797 true)))

(assert (=> d!215406 e!370797))

(assert (= d!215406 b!611809))

(assert (=> b!611809 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 token!491)))) (dynLambda!3552 order!4879 lambda!16178))))

(assert (=> b!611809 (< (dynLambda!3553 order!4881 (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (dynLambda!3552 order!4879 lambda!16178))))

(assert (=> d!215406 (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 (_1!3756 lt!261658))))) (list!2572 (seqFromList!1401 (_1!3756 lt!261658))))))

(declare-fun lt!261935 () Unit!11182)

(assert (=> d!215406 (= lt!261935 (ForallOf!127 lambda!16178 (seqFromList!1401 (_1!3756 lt!261658))))))

(assert (=> d!215406 (= (lemmaSemiInverse!255 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 (_1!3756 lt!261658))) lt!261935)))

(declare-fun b_lambda!24281 () Bool)

(assert (=> (not b_lambda!24281) (not d!215406)))

(declare-fun t!81024 () Bool)

(declare-fun tb!53425 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!81024) tb!53425))

(declare-fun tp!189294 () Bool)

(declare-fun b!611810 () Bool)

(declare-fun e!370798 () Bool)

(assert (=> b!611810 (= e!370798 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 (_1!3756 lt!261658)))))) tp!189294))))

(declare-fun result!60164 () Bool)

(assert (=> tb!53425 (= result!60164 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 (_1!3756 lt!261658))))) e!370798))))

(assert (= tb!53425 b!611810))

(declare-fun m!879875 () Bool)

(assert (=> b!611810 m!879875))

(declare-fun m!879877 () Bool)

(assert (=> tb!53425 m!879877))

(assert (=> d!215406 t!81024))

(declare-fun b_and!60589 () Bool)

(assert (= b_and!60577 (and (=> t!81024 result!60164) b_and!60589)))

(declare-fun t!81026 () Bool)

(declare-fun tb!53427 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!81026) tb!53427))

(declare-fun result!60166 () Bool)

(assert (= result!60166 result!60164))

(assert (=> d!215406 t!81026))

(declare-fun b_and!60591 () Bool)

(assert (= b_and!60579 (and (=> t!81026 result!60166) b_and!60591)))

(declare-fun t!81028 () Bool)

(declare-fun tb!53429 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!81028) tb!53429))

(declare-fun result!60168 () Bool)

(assert (= result!60168 result!60164))

(assert (=> d!215406 t!81028))

(declare-fun b_and!60593 () Bool)

(assert (= b_and!60581 (and (=> t!81028 result!60168) b_and!60593)))

(declare-fun b_lambda!24283 () Bool)

(assert (=> (not b_lambda!24283) (not d!215406)))

(assert (=> d!215406 t!81018))

(declare-fun b_and!60595 () Bool)

(assert (= b_and!60583 (and (=> t!81018 result!60158) b_and!60595)))

(assert (=> d!215406 t!81020))

(declare-fun b_and!60597 () Bool)

(assert (= b_and!60585 (and (=> t!81020 result!60160) b_and!60597)))

(assert (=> d!215406 t!81022))

(declare-fun b_and!60599 () Bool)

(assert (= b_and!60587 (and (=> t!81022 result!60162) b_and!60599)))

(declare-fun m!879879 () Bool)

(assert (=> d!215406 m!879879))

(declare-fun m!879881 () Bool)

(assert (=> d!215406 m!879881))

(assert (=> d!215406 m!879045))

(assert (=> d!215406 m!879829))

(assert (=> d!215406 m!879045))

(declare-fun m!879883 () Bool)

(assert (=> d!215406 m!879883))

(assert (=> d!215406 m!879829))

(assert (=> d!215406 m!879879))

(assert (=> d!215406 m!879045))

(declare-fun m!879885 () Bool)

(assert (=> d!215406 m!879885))

(assert (=> b!611182 d!215406))

(declare-fun d!215408 () Bool)

(assert (=> d!215408 (= (seqFromList!1401 (_1!3756 lt!261658)) (fromListB!620 (_1!3756 lt!261658)))))

(declare-fun bs!71601 () Bool)

(assert (= bs!71601 d!215408))

(declare-fun m!879887 () Bool)

(assert (=> bs!71601 m!879887))

(assert (=> b!611182 d!215408))

(declare-fun d!215410 () Bool)

(declare-fun lt!261936 () Int)

(assert (=> d!215410 (>= lt!261936 0)))

(declare-fun e!370799 () Int)

(assert (=> d!215410 (= lt!261936 e!370799)))

(declare-fun c!113095 () Bool)

(assert (=> d!215410 (= c!113095 ((_ is Nil!6114) lt!261534))))

(assert (=> d!215410 (= (size!4808 lt!261534) lt!261936)))

(declare-fun b!611811 () Bool)

(assert (=> b!611811 (= e!370799 0)))

(declare-fun b!611812 () Bool)

(assert (=> b!611812 (= e!370799 (+ 1 (size!4808 (t!80905 lt!261534))))))

(assert (= (and d!215410 c!113095) b!611811))

(assert (= (and d!215410 (not c!113095)) b!611812))

(declare-fun m!879889 () Bool)

(assert (=> b!611812 m!879889))

(assert (=> b!611182 d!215410))

(assert (=> b!611182 d!215314))

(declare-fun d!215412 () Bool)

(declare-fun e!370802 () Bool)

(assert (=> d!215412 e!370802))

(declare-fun res!265929 () Bool)

(assert (=> d!215412 (=> res!265929 e!370802)))

(assert (=> d!215412 (= res!265929 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(declare-fun lt!261951 () Unit!11182)

(declare-fun choose!4506 (Regex!1559 List!6124) Unit!11182)

(assert (=> d!215412 (= lt!261951 (choose!4506 (regex!1225 (rule!2015 token!491)) lt!261534))))

(assert (=> d!215412 (validRegex!546 (regex!1225 (rule!2015 token!491)))))

(assert (=> d!215412 (= (longestMatchIsAcceptedByMatchOrIsEmpty!193 (regex!1225 (rule!2015 token!491)) lt!261534) lt!261951)))

(declare-fun b!611815 () Bool)

(assert (=> b!611815 (= e!370802 (matchR!662 (regex!1225 (rule!2015 token!491)) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(assert (= (and d!215412 (not res!265929)) b!611815))

(assert (=> d!215412 m!878865))

(assert (=> d!215412 m!878827))

(assert (=> d!215412 m!878865))

(assert (=> d!215412 m!879021))

(declare-fun m!879891 () Bool)

(assert (=> d!215412 m!879891))

(assert (=> d!215412 m!879187))

(assert (=> d!215412 m!878827))

(assert (=> d!215412 m!879051))

(assert (=> b!611815 m!878827))

(assert (=> b!611815 m!878865))

(assert (=> b!611815 m!878827))

(assert (=> b!611815 m!878865))

(assert (=> b!611815 m!879021))

(assert (=> b!611815 m!879023))

(assert (=> b!611182 d!215412))

(declare-fun d!215414 () Bool)

(declare-fun lt!261998 () Int)

(assert (=> d!215414 (= lt!261998 (size!4808 (list!2572 (seqFromList!1401 (_1!3756 lt!261658)))))))

(declare-fun size!4811 (Conc!1942) Int)

(assert (=> d!215414 (= lt!261998 (size!4811 (c!112918 (seqFromList!1401 (_1!3756 lt!261658)))))))

(assert (=> d!215414 (= (size!4809 (seqFromList!1401 (_1!3756 lt!261658))) lt!261998)))

(declare-fun bs!71602 () Bool)

(assert (= bs!71602 d!215414))

(assert (=> bs!71602 m!879045))

(assert (=> bs!71602 m!879883))

(assert (=> bs!71602 m!879883))

(declare-fun m!879893 () Bool)

(assert (=> bs!71602 m!879893))

(declare-fun m!879895 () Bool)

(assert (=> bs!71602 m!879895))

(assert (=> b!611182 d!215414))

(declare-fun d!215416 () Bool)

(declare-fun lt!261999 () Int)

(assert (=> d!215416 (>= lt!261999 0)))

(declare-fun e!370815 () Int)

(assert (=> d!215416 (= lt!261999 e!370815)))

(declare-fun c!113108 () Bool)

(assert (=> d!215416 (= c!113108 ((_ is Nil!6114) lt!261741))))

(assert (=> d!215416 (= (size!4808 lt!261741) lt!261999)))

(declare-fun b!611840 () Bool)

(assert (=> b!611840 (= e!370815 0)))

(declare-fun b!611841 () Bool)

(assert (=> b!611841 (= e!370815 (+ 1 (size!4808 (t!80905 lt!261741))))))

(assert (= (and d!215416 c!113108) b!611840))

(assert (= (and d!215416 (not c!113108)) b!611841))

(declare-fun m!879897 () Bool)

(assert (=> b!611841 m!879897))

(assert (=> b!611404 d!215416))

(assert (=> b!611404 d!215120))

(assert (=> b!611404 d!215356))

(assert (=> d!215172 d!215164))

(declare-fun d!215418 () Bool)

(assert (=> d!215418 (isPrefix!853 input!2705 input!2705)))

(assert (=> d!215418 true))

(declare-fun _$45!1333 () Unit!11182)

(assert (=> d!215418 (= (choose!4501 input!2705 input!2705) _$45!1333)))

(declare-fun bs!71603 () Bool)

(assert (= bs!71603 d!215418))

(assert (=> bs!71603 m!878661))

(assert (=> d!215172 d!215418))

(assert (=> d!215208 d!214988))

(declare-fun d!215420 () Bool)

(declare-fun lt!262000 () Bool)

(assert (=> d!215420 (= lt!262000 (select (content!1115 (t!80906 rules!3103)) (rule!2015 token!491)))))

(declare-fun e!370817 () Bool)

(assert (=> d!215420 (= lt!262000 e!370817)))

(declare-fun res!265931 () Bool)

(assert (=> d!215420 (=> (not res!265931) (not e!370817))))

(assert (=> d!215420 (= res!265931 ((_ is Cons!6115) (t!80906 rules!3103)))))

(assert (=> d!215420 (= (contains!1441 (t!80906 rules!3103) (rule!2015 token!491)) lt!262000)))

(declare-fun b!611842 () Bool)

(declare-fun e!370816 () Bool)

(assert (=> b!611842 (= e!370817 e!370816)))

(declare-fun res!265930 () Bool)

(assert (=> b!611842 (=> res!265930 e!370816)))

(assert (=> b!611842 (= res!265930 (= (h!11516 (t!80906 rules!3103)) (rule!2015 token!491)))))

(declare-fun b!611843 () Bool)

(assert (=> b!611843 (= e!370816 (contains!1441 (t!80906 (t!80906 rules!3103)) (rule!2015 token!491)))))

(assert (= (and d!215420 res!265931) b!611842))

(assert (= (and b!611842 (not res!265930)) b!611843))

(declare-fun m!879899 () Bool)

(assert (=> d!215420 m!879899))

(declare-fun m!879901 () Bool)

(assert (=> d!215420 m!879901))

(declare-fun m!879903 () Bool)

(assert (=> b!611843 m!879903))

(assert (=> b!610993 d!215420))

(declare-fun d!215422 () Bool)

(declare-fun charsToBigInt!1 (List!6123) Int)

(assert (=> d!215422 (= (inv!17 (value!39779 token!491)) (= (charsToBigInt!1 (text!9191 (value!39779 token!491))) (value!39771 (value!39779 token!491))))))

(declare-fun bs!71604 () Bool)

(assert (= bs!71604 d!215422))

(declare-fun m!879905 () Bool)

(assert (=> bs!71604 m!879905))

(assert (=> b!610969 d!215422))

(declare-fun d!215424 () Bool)

(assert (=> d!215424 (= (isEmpty!4415 lt!261656) (not ((_ is Some!1575) lt!261656)))))

(assert (=> d!215088 d!215424))

(declare-fun d!215426 () Bool)

(assert (=> d!215426 (= (isEmpty!4413 (_1!3756 lt!261658)) ((_ is Nil!6114) (_1!3756 lt!261658)))))

(assert (=> d!215088 d!215426))

(declare-fun d!215428 () Bool)

(declare-fun lt!262050 () tuple2!6984)

(assert (=> d!215428 (= (++!1713 (_1!3756 lt!262050) (_2!3756 lt!262050)) lt!261534)))

(declare-fun sizeTr!40 (List!6124 Int) Int)

(assert (=> d!215428 (= lt!262050 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 0 lt!261534 lt!261534 (sizeTr!40 lt!261534 0)))))

(declare-fun lt!262051 () Unit!11182)

(declare-fun lt!262052 () Unit!11182)

(assert (=> d!215428 (= lt!262051 lt!262052)))

(declare-fun lt!262048 () List!6124)

(declare-fun lt!262047 () Int)

(assert (=> d!215428 (= (sizeTr!40 lt!262048 lt!262047) (+ (size!4808 lt!262048) lt!262047))))

(declare-fun lemmaSizeTrEqualsSize!40 (List!6124 Int) Unit!11182)

(assert (=> d!215428 (= lt!262052 (lemmaSizeTrEqualsSize!40 lt!262048 lt!262047))))

(assert (=> d!215428 (= lt!262047 0)))

(assert (=> d!215428 (= lt!262048 Nil!6114)))

(declare-fun lt!262049 () Unit!11182)

(declare-fun lt!262045 () Unit!11182)

(assert (=> d!215428 (= lt!262049 lt!262045)))

(declare-fun lt!262046 () Int)

(assert (=> d!215428 (= (sizeTr!40 lt!261534 lt!262046) (+ (size!4808 lt!261534) lt!262046))))

(assert (=> d!215428 (= lt!262045 (lemmaSizeTrEqualsSize!40 lt!261534 lt!262046))))

(assert (=> d!215428 (= lt!262046 0)))

(assert (=> d!215428 (validRegex!546 (regex!1225 (rule!2015 token!491)))))

(assert (=> d!215428 (= (findLongestMatch!188 (regex!1225 (rule!2015 token!491)) lt!261534) lt!262050)))

(declare-fun bs!71605 () Bool)

(assert (= bs!71605 d!215428))

(declare-fun m!879907 () Bool)

(assert (=> bs!71605 m!879907))

(declare-fun m!879909 () Bool)

(assert (=> bs!71605 m!879909))

(assert (=> bs!71605 m!879909))

(declare-fun m!879911 () Bool)

(assert (=> bs!71605 m!879911))

(assert (=> bs!71605 m!878865))

(declare-fun m!879913 () Bool)

(assert (=> bs!71605 m!879913))

(assert (=> bs!71605 m!879187))

(declare-fun m!879915 () Bool)

(assert (=> bs!71605 m!879915))

(declare-fun m!879917 () Bool)

(assert (=> bs!71605 m!879917))

(declare-fun m!879919 () Bool)

(assert (=> bs!71605 m!879919))

(declare-fun m!879921 () Bool)

(assert (=> bs!71605 m!879921))

(assert (=> d!215088 d!215428))

(assert (=> d!215088 d!215166))

(assert (=> b!611396 d!215270))

(declare-fun d!215430 () Bool)

(assert (=> d!215430 (= (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261736))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261736))))))))

(declare-fun b_lambda!24285 () Bool)

(assert (=> (not b_lambda!24285) (not d!215430)))

(declare-fun t!81030 () Bool)

(declare-fun tb!53431 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!81030) tb!53431))

(declare-fun result!60170 () Bool)

(assert (=> tb!53431 (= result!60170 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261736)))))))))

(declare-fun m!879923 () Bool)

(assert (=> tb!53431 m!879923))

(assert (=> d!215430 t!81030))

(declare-fun b_and!60601 () Bool)

(assert (= b_and!60595 (and (=> t!81030 result!60170) b_and!60601)))

(declare-fun t!81032 () Bool)

(declare-fun tb!53433 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!81032) tb!53433))

(declare-fun result!60172 () Bool)

(assert (= result!60172 result!60170))

(assert (=> d!215430 t!81032))

(declare-fun b_and!60603 () Bool)

(assert (= b_and!60597 (and (=> t!81032 result!60172) b_and!60603)))

(declare-fun tb!53435 () Bool)

(declare-fun t!81034 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!81034) tb!53435))

(declare-fun result!60174 () Bool)

(assert (= result!60174 result!60170))

(assert (=> d!215430 t!81034))

(declare-fun b_and!60605 () Bool)

(assert (= b_and!60599 (and (=> t!81034 result!60174) b_and!60605)))

(assert (=> d!215430 m!879297))

(declare-fun m!879925 () Bool)

(assert (=> d!215430 m!879925))

(assert (=> b!611396 d!215430))

(declare-fun d!215432 () Bool)

(assert (=> d!215432 (= (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261736)))) (fromListB!620 (originalCharacters!1264 (_1!3755 (get!2352 lt!261736)))))))

(declare-fun bs!71606 () Bool)

(assert (= bs!71606 d!215432))

(declare-fun m!879931 () Bool)

(assert (=> bs!71606 m!879931))

(assert (=> b!611396 d!215432))

(assert (=> b!611178 d!215276))

(assert (=> d!215160 d!215154))

(declare-fun d!215434 () Bool)

(assert (=> d!215434 (ruleValid!423 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))))))

(assert (=> d!215434 true))

(declare-fun _$65!892 () Unit!11182)

(assert (=> d!215434 (= (choose!4499 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) rules!3103) _$65!892)))

(declare-fun bs!71607 () Bool)

(assert (= bs!71607 d!215434))

(assert (=> bs!71607 m!878651))

(assert (=> d!215160 d!215434))

(assert (=> d!215160 d!215214))

(declare-fun d!215438 () Bool)

(declare-fun e!370838 () Bool)

(assert (=> d!215438 e!370838))

(declare-fun c!113117 () Bool)

(assert (=> d!215438 (= c!113117 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))))))

(declare-fun lt!262054 () Bool)

(declare-fun e!370832 () Bool)

(assert (=> d!215438 (= lt!262054 e!370832)))

(declare-fun c!113118 () Bool)

(assert (=> d!215438 (= c!113118 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))))))

(assert (=> d!215438 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))))

(assert (=> d!215438 (= (matchR!662 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))) lt!262054)))

(declare-fun b!611864 () Bool)

(declare-fun e!370835 () Bool)

(assert (=> b!611864 (= e!370838 e!370835)))

(declare-fun c!113116 () Bool)

(assert (=> b!611864 (= c!113116 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))))))

(declare-fun b!611865 () Bool)

(declare-fun e!370836 () Bool)

(declare-fun e!370834 () Bool)

(assert (=> b!611865 (= e!370836 e!370834)))

(declare-fun res!265944 () Bool)

(assert (=> b!611865 (=> res!265944 e!370834)))

(declare-fun call!40926 () Bool)

(assert (=> b!611865 (= res!265944 call!40926)))

(declare-fun b!611866 () Bool)

(assert (=> b!611866 (= e!370838 (= lt!262054 call!40926))))

(declare-fun b!611867 () Bool)

(declare-fun res!265945 () Bool)

(declare-fun e!370837 () Bool)

(assert (=> b!611867 (=> res!265945 e!370837)))

(assert (=> b!611867 (= res!265945 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))))))

(assert (=> b!611867 (= e!370835 e!370837)))

(declare-fun b!611868 () Bool)

(declare-fun res!265942 () Bool)

(declare-fun e!370833 () Bool)

(assert (=> b!611868 (=> (not res!265942) (not e!370833))))

(assert (=> b!611868 (= res!265942 (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))))))))

(declare-fun b!611869 () Bool)

(declare-fun res!265943 () Bool)

(assert (=> b!611869 (=> res!265943 e!370834)))

(assert (=> b!611869 (= res!265943 (not (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))))))))

(declare-fun b!611870 () Bool)

(declare-fun res!265940 () Bool)

(assert (=> b!611870 (=> res!265940 e!370837)))

(assert (=> b!611870 (= res!265940 e!370833)))

(declare-fun res!265939 () Bool)

(assert (=> b!611870 (=> (not res!265939) (not e!370833))))

(assert (=> b!611870 (= res!265939 lt!262054)))

(declare-fun b!611871 () Bool)

(declare-fun res!265941 () Bool)

(assert (=> b!611871 (=> (not res!265941) (not e!370833))))

(assert (=> b!611871 (= res!265941 (not call!40926))))

(declare-fun b!611872 () Bool)

(assert (=> b!611872 (= e!370833 (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))))))

(declare-fun b!611873 () Bool)

(assert (=> b!611873 (= e!370837 e!370836)))

(declare-fun res!265938 () Bool)

(assert (=> b!611873 (=> (not res!265938) (not e!370836))))

(assert (=> b!611873 (= res!265938 (not lt!262054))))

(declare-fun b!611874 () Bool)

(assert (=> b!611874 (= e!370835 (not lt!262054))))

(declare-fun b!611875 () Bool)

(assert (=> b!611875 (= e!370832 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))) (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))))) (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))))))))

(declare-fun bm!40921 () Bool)

(assert (=> bm!40921 (= call!40926 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))))))

(declare-fun b!611876 () Bool)

(assert (=> b!611876 (= e!370832 (nullable!451 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))))))

(declare-fun b!611877 () Bool)

(assert (=> b!611877 (= e!370834 (not (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))))))))

(assert (= (and d!215438 c!113118) b!611876))

(assert (= (and d!215438 (not c!113118)) b!611875))

(assert (= (and d!215438 c!113117) b!611866))

(assert (= (and d!215438 (not c!113117)) b!611864))

(assert (= (and b!611864 c!113116) b!611874))

(assert (= (and b!611864 (not c!113116)) b!611867))

(assert (= (and b!611867 (not res!265945)) b!611870))

(assert (= (and b!611870 res!265939) b!611871))

(assert (= (and b!611871 res!265941) b!611868))

(assert (= (and b!611868 res!265942) b!611872))

(assert (= (and b!611870 (not res!265940)) b!611873))

(assert (= (and b!611873 res!265938) b!611865))

(assert (= (and b!611865 (not res!265944)) b!611869))

(assert (= (and b!611869 (not res!265943)) b!611877))

(assert (= (or b!611866 b!611865 b!611871) bm!40921))

(assert (=> bm!40921 m!878717))

(declare-fun m!879983 () Bool)

(assert (=> bm!40921 m!879983))

(assert (=> b!611872 m!878717))

(declare-fun m!879985 () Bool)

(assert (=> b!611872 m!879985))

(assert (=> b!611868 m!878717))

(declare-fun m!879987 () Bool)

(assert (=> b!611868 m!879987))

(assert (=> b!611868 m!879987))

(declare-fun m!879989 () Bool)

(assert (=> b!611868 m!879989))

(assert (=> b!611875 m!878717))

(assert (=> b!611875 m!879985))

(assert (=> b!611875 m!879985))

(declare-fun m!879995 () Bool)

(assert (=> b!611875 m!879995))

(assert (=> b!611875 m!878717))

(assert (=> b!611875 m!879987))

(assert (=> b!611875 m!879995))

(assert (=> b!611875 m!879987))

(declare-fun m!880005 () Bool)

(assert (=> b!611875 m!880005))

(assert (=> b!611869 m!878717))

(assert (=> b!611869 m!879987))

(assert (=> b!611869 m!879987))

(assert (=> b!611869 m!879989))

(declare-fun m!880009 () Bool)

(assert (=> b!611876 m!880009))

(assert (=> b!611877 m!878717))

(assert (=> b!611877 m!879985))

(assert (=> d!215438 m!878717))

(assert (=> d!215438 m!879983))

(declare-fun m!880011 () Bool)

(assert (=> d!215438 m!880011))

(assert (=> b!610948 d!215438))

(assert (=> b!610948 d!215374))

(declare-fun d!215450 () Bool)

(assert (=> d!215450 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))) (list!2574 (c!112918 (charsOf!854 (_1!3755 (get!2352 lt!261565))))))))

(declare-fun bs!71609 () Bool)

(assert (= bs!71609 d!215450))

(declare-fun m!880013 () Bool)

(assert (=> bs!71609 m!880013))

(assert (=> b!610948 d!215450))

(declare-fun d!215452 () Bool)

(declare-fun lt!262059 () BalanceConc!3892)

(assert (=> d!215452 (= (list!2572 lt!262059) (originalCharacters!1264 (_1!3755 (get!2352 lt!261565))))))

(assert (=> d!215452 (= lt!262059 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))) (value!39779 (_1!3755 (get!2352 lt!261565)))))))

(assert (=> d!215452 (= (charsOf!854 (_1!3755 (get!2352 lt!261565))) lt!262059)))

(declare-fun b_lambda!24289 () Bool)

(assert (=> (not b_lambda!24289) (not d!215452)))

(declare-fun tb!53439 () Bool)

(declare-fun t!81038 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81038) tb!53439))

(declare-fun b!611887 () Bool)

(declare-fun e!370845 () Bool)

(declare-fun tp!189296 () Bool)

(assert (=> b!611887 (= e!370845 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))) (value!39779 (_1!3755 (get!2352 lt!261565)))))) tp!189296))))

(declare-fun result!60178 () Bool)

(assert (=> tb!53439 (= result!60178 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))) (value!39779 (_1!3755 (get!2352 lt!261565))))) e!370845))))

(assert (= tb!53439 b!611887))

(declare-fun m!880019 () Bool)

(assert (=> b!611887 m!880019))

(declare-fun m!880021 () Bool)

(assert (=> tb!53439 m!880021))

(assert (=> d!215452 t!81038))

(declare-fun b_and!60613 () Bool)

(assert (= b_and!60589 (and (=> t!81038 result!60178) b_and!60613)))

(declare-fun tb!53445 () Bool)

(declare-fun t!81044 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81044) tb!53445))

(declare-fun result!60184 () Bool)

(assert (= result!60184 result!60178))

(assert (=> d!215452 t!81044))

(declare-fun b_and!60615 () Bool)

(assert (= b_and!60591 (and (=> t!81044 result!60184) b_and!60615)))

(declare-fun tb!53447 () Bool)

(declare-fun t!81046 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81046) tb!53447))

(declare-fun result!60186 () Bool)

(assert (= result!60186 result!60178))

(assert (=> d!215452 t!81046))

(declare-fun b_and!60617 () Bool)

(assert (= b_and!60593 (and (=> t!81046 result!60186) b_and!60617)))

(declare-fun m!880027 () Bool)

(assert (=> d!215452 m!880027))

(declare-fun m!880029 () Bool)

(assert (=> d!215452 m!880029))

(assert (=> b!610948 d!215452))

(declare-fun d!215460 () Bool)

(assert (=> d!215460 true))

(declare-fun lambda!16181 () Int)

(declare-fun order!4883 () Int)

(declare-fun dynLambda!3558 (Int Int) Int)

(assert (=> d!215460 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (h!11516 rules!3103)))) (dynLambda!3558 order!4883 lambda!16181))))

(declare-fun Forall2!233 (Int) Bool)

(assert (=> d!215460 (= (equivClasses!475 (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (h!11516 rules!3103)))) (Forall2!233 lambda!16181))))

(declare-fun bs!71611 () Bool)

(assert (= bs!71611 d!215460))

(declare-fun m!880039 () Bool)

(assert (=> bs!71611 m!880039))

(assert (=> b!611219 d!215460))

(declare-fun d!215468 () Bool)

(declare-fun lt!262060 () Int)

(assert (=> d!215468 (>= lt!262060 0)))

(declare-fun e!370856 () Int)

(assert (=> d!215468 (= lt!262060 e!370856)))

(declare-fun c!113128 () Bool)

(assert (=> d!215468 (= c!113128 ((_ is Nil!6114) lt!261553))))

(assert (=> d!215468 (= (size!4808 lt!261553) lt!262060)))

(declare-fun b!611906 () Bool)

(assert (=> b!611906 (= e!370856 0)))

(declare-fun b!611907 () Bool)

(assert (=> b!611907 (= e!370856 (+ 1 (size!4808 (t!80905 lt!261553))))))

(assert (= (and d!215468 c!113128) b!611906))

(assert (= (and d!215468 (not c!113128)) b!611907))

(declare-fun m!880041 () Bool)

(assert (=> b!611907 m!880041))

(assert (=> b!611324 d!215468))

(assert (=> b!611324 d!215120))

(assert (=> b!611058 d!215388))

(declare-fun b!611908 () Bool)

(declare-fun e!370862 () Bool)

(declare-fun e!370857 () Bool)

(assert (=> b!611908 (= e!370862 e!370857)))

(declare-fun c!113129 () Bool)

(assert (=> b!611908 (= c!113129 ((_ is Union!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611909 () Bool)

(declare-fun res!265955 () Bool)

(declare-fun e!370859 () Bool)

(assert (=> b!611909 (=> (not res!265955) (not e!370859))))

(declare-fun call!40927 () Bool)

(assert (=> b!611909 (= res!265955 call!40927)))

(assert (=> b!611909 (= e!370857 e!370859)))

(declare-fun b!611910 () Bool)

(declare-fun e!370861 () Bool)

(declare-fun call!40929 () Bool)

(assert (=> b!611910 (= e!370861 call!40929)))

(declare-fun bm!40922 () Bool)

(declare-fun call!40928 () Bool)

(assert (=> bm!40922 (= call!40928 (validRegex!546 (ite c!113129 (regTwo!3631 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (regOne!3630 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))))

(declare-fun b!611911 () Bool)

(declare-fun e!370860 () Bool)

(assert (=> b!611911 (= e!370860 e!370862)))

(declare-fun c!113130 () Bool)

(assert (=> b!611911 (= c!113130 ((_ is Star!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!611912 () Bool)

(assert (=> b!611912 (= e!370862 e!370861)))

(declare-fun res!265956 () Bool)

(assert (=> b!611912 (= res!265956 (not (nullable!451 (reg!1888 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))))

(assert (=> b!611912 (=> (not res!265956) (not e!370861))))

(declare-fun bm!40923 () Bool)

(assert (=> bm!40923 (= call!40929 (validRegex!546 (ite c!113130 (reg!1888 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (ite c!113129 (regOne!3631 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (regTwo!3630 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))))

(declare-fun b!611914 () Bool)

(declare-fun res!265952 () Bool)

(declare-fun e!370863 () Bool)

(assert (=> b!611914 (=> res!265952 e!370863)))

(assert (=> b!611914 (= res!265952 (not ((_ is Concat!2808) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(assert (=> b!611914 (= e!370857 e!370863)))

(declare-fun b!611915 () Bool)

(declare-fun e!370858 () Bool)

(assert (=> b!611915 (= e!370858 call!40927)))

(declare-fun b!611913 () Bool)

(assert (=> b!611913 (= e!370863 e!370858)))

(declare-fun res!265953 () Bool)

(assert (=> b!611913 (=> (not res!265953) (not e!370858))))

(assert (=> b!611913 (= res!265953 call!40928)))

(declare-fun d!215470 () Bool)

(declare-fun res!265954 () Bool)

(assert (=> d!215470 (=> res!265954 e!370860)))

(assert (=> d!215470 (= res!265954 ((_ is ElementMatch!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(assert (=> d!215470 (= (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) e!370860)))

(declare-fun bm!40924 () Bool)

(assert (=> bm!40924 (= call!40927 call!40929)))

(declare-fun b!611916 () Bool)

(assert (=> b!611916 (= e!370859 call!40928)))

(assert (= (and d!215470 (not res!265954)) b!611911))

(assert (= (and b!611911 c!113130) b!611912))

(assert (= (and b!611911 (not c!113130)) b!611908))

(assert (= (and b!611912 res!265956) b!611910))

(assert (= (and b!611908 c!113129) b!611909))

(assert (= (and b!611908 (not c!113129)) b!611914))

(assert (= (and b!611909 res!265955) b!611916))

(assert (= (and b!611914 (not res!265952)) b!611913))

(assert (= (and b!611913 res!265953) b!611915))

(assert (= (or b!611909 b!611915) bm!40924))

(assert (= (or b!611916 b!611913) bm!40922))

(assert (= (or b!611910 bm!40924) bm!40923))

(declare-fun m!880043 () Bool)

(assert (=> bm!40922 m!880043))

(declare-fun m!880045 () Bool)

(assert (=> b!611912 m!880045))

(declare-fun m!880047 () Bool)

(assert (=> bm!40923 m!880047))

(assert (=> d!215154 d!215470))

(assert (=> b!611390 d!215260))

(declare-fun d!215472 () Bool)

(assert (=> d!215472 (and (= lt!261545 input!2705) (= suffix!1342 suffix!1342))))

(assert (=> d!215472 true))

(declare-fun _$50!295 () Unit!11182)

(assert (=> d!215472 (= (choose!4496 lt!261545 suffix!1342 input!2705 suffix!1342) _$50!295)))

(assert (=> d!215156 d!215472))

(assert (=> d!215156 d!215130))

(assert (=> d!215156 d!215220))

(declare-fun d!215476 () Bool)

(declare-fun isBalanced!534 (Conc!1942) Bool)

(assert (=> d!215476 (= (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))) (isBalanced!534 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun bs!71613 () Bool)

(assert (= bs!71613 d!215476))

(declare-fun m!880079 () Bool)

(assert (=> bs!71613 m!880079))

(assert (=> tb!53355 d!215476))

(declare-fun b!611931 () Bool)

(declare-fun e!370874 () Option!1576)

(declare-fun call!40930 () Option!1576)

(assert (=> b!611931 (= e!370874 call!40930)))

(declare-fun b!611932 () Bool)

(declare-fun res!265964 () Bool)

(declare-fun e!370872 () Bool)

(assert (=> b!611932 (=> (not res!265964) (not e!370872))))

(declare-fun lt!262063 () Option!1576)

(assert (=> b!611932 (= res!265964 (matchR!662 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!262063)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262063))))))))

(declare-fun b!611933 () Bool)

(declare-fun e!370873 () Bool)

(assert (=> b!611933 (= e!370873 e!370872)))

(declare-fun res!265962 () Bool)

(assert (=> b!611933 (=> (not res!265962) (not e!370872))))

(assert (=> b!611933 (= res!265962 (isDefined!1387 lt!262063))))

(declare-fun bm!40925 () Bool)

(assert (=> bm!40925 (= call!40930 (maxPrefixOneRule!472 thiss!22590 (h!11516 (t!80906 rules!3103)) input!2705))))

(declare-fun d!215484 () Bool)

(assert (=> d!215484 e!370873))

(declare-fun res!265961 () Bool)

(assert (=> d!215484 (=> res!265961 e!370873)))

(assert (=> d!215484 (= res!265961 (isEmpty!4415 lt!262063))))

(assert (=> d!215484 (= lt!262063 e!370874)))

(declare-fun c!113135 () Bool)

(assert (=> d!215484 (= c!113135 (and ((_ is Cons!6115) (t!80906 rules!3103)) ((_ is Nil!6115) (t!80906 (t!80906 rules!3103)))))))

(declare-fun lt!262066 () Unit!11182)

(declare-fun lt!262067 () Unit!11182)

(assert (=> d!215484 (= lt!262066 lt!262067)))

(assert (=> d!215484 (isPrefix!853 input!2705 input!2705)))

(assert (=> d!215484 (= lt!262067 (lemmaIsPrefixRefl!589 input!2705 input!2705))))

(assert (=> d!215484 (rulesValidInductive!461 thiss!22590 (t!80906 rules!3103))))

(assert (=> d!215484 (= (maxPrefix!809 thiss!22590 (t!80906 rules!3103) input!2705) lt!262063)))

(declare-fun b!611934 () Bool)

(declare-fun res!265963 () Bool)

(assert (=> b!611934 (=> (not res!265963) (not e!370872))))

(assert (=> b!611934 (= res!265963 (= (value!39779 (_1!3755 (get!2352 lt!262063))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!262063)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!262063)))))))))

(declare-fun b!611935 () Bool)

(declare-fun lt!262065 () Option!1576)

(declare-fun lt!262064 () Option!1576)

(assert (=> b!611935 (= e!370874 (ite (and ((_ is None!1575) lt!262065) ((_ is None!1575) lt!262064)) None!1575 (ite ((_ is None!1575) lt!262064) lt!262065 (ite ((_ is None!1575) lt!262065) lt!262064 (ite (>= (size!4807 (_1!3755 (v!16484 lt!262065))) (size!4807 (_1!3755 (v!16484 lt!262064)))) lt!262065 lt!262064)))))))

(assert (=> b!611935 (= lt!262065 call!40930)))

(assert (=> b!611935 (= lt!262064 (maxPrefix!809 thiss!22590 (t!80906 (t!80906 rules!3103)) input!2705))))

(declare-fun b!611936 () Bool)

(declare-fun res!265960 () Bool)

(assert (=> b!611936 (=> (not res!265960) (not e!370872))))

(assert (=> b!611936 (= res!265960 (< (size!4808 (_2!3755 (get!2352 lt!262063))) (size!4808 input!2705)))))

(declare-fun b!611937 () Bool)

(declare-fun res!265966 () Bool)

(assert (=> b!611937 (=> (not res!265966) (not e!370872))))

(assert (=> b!611937 (= res!265966 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262063)))) (originalCharacters!1264 (_1!3755 (get!2352 lt!262063)))))))

(declare-fun b!611938 () Bool)

(assert (=> b!611938 (= e!370872 (contains!1441 (t!80906 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!262063)))))))

(declare-fun b!611939 () Bool)

(declare-fun res!265965 () Bool)

(assert (=> b!611939 (=> (not res!265965) (not e!370872))))

(assert (=> b!611939 (= res!265965 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262063)))) (_2!3755 (get!2352 lt!262063))) input!2705))))

(assert (= (and d!215484 c!113135) b!611931))

(assert (= (and d!215484 (not c!113135)) b!611935))

(assert (= (or b!611931 b!611935) bm!40925))

(assert (= (and d!215484 (not res!265961)) b!611933))

(assert (= (and b!611933 res!265962) b!611937))

(assert (= (and b!611937 res!265966) b!611936))

(assert (= (and b!611936 res!265960) b!611939))

(assert (= (and b!611939 res!265965) b!611934))

(assert (= (and b!611934 res!265963) b!611932))

(assert (= (and b!611932 res!265964) b!611938))

(declare-fun m!880101 () Bool)

(assert (=> d!215484 m!880101))

(assert (=> d!215484 m!878661))

(assert (=> d!215484 m!878653))

(assert (=> d!215484 m!879697))

(declare-fun m!880103 () Bool)

(assert (=> bm!40925 m!880103))

(declare-fun m!880105 () Bool)

(assert (=> b!611936 m!880105))

(declare-fun m!880107 () Bool)

(assert (=> b!611936 m!880107))

(assert (=> b!611936 m!878563))

(assert (=> b!611939 m!880105))

(declare-fun m!880109 () Bool)

(assert (=> b!611939 m!880109))

(assert (=> b!611939 m!880109))

(declare-fun m!880111 () Bool)

(assert (=> b!611939 m!880111))

(assert (=> b!611939 m!880111))

(declare-fun m!880113 () Bool)

(assert (=> b!611939 m!880113))

(assert (=> b!611937 m!880105))

(assert (=> b!611937 m!880109))

(assert (=> b!611937 m!880109))

(assert (=> b!611937 m!880111))

(assert (=> b!611934 m!880105))

(declare-fun m!880115 () Bool)

(assert (=> b!611934 m!880115))

(assert (=> b!611934 m!880115))

(declare-fun m!880117 () Bool)

(assert (=> b!611934 m!880117))

(assert (=> b!611932 m!880105))

(assert (=> b!611932 m!880109))

(assert (=> b!611932 m!880109))

(assert (=> b!611932 m!880111))

(assert (=> b!611932 m!880111))

(declare-fun m!880119 () Bool)

(assert (=> b!611932 m!880119))

(declare-fun m!880121 () Bool)

(assert (=> b!611933 m!880121))

(assert (=> b!611938 m!880105))

(declare-fun m!880123 () Bool)

(assert (=> b!611938 m!880123))

(declare-fun m!880125 () Bool)

(assert (=> b!611935 m!880125))

(assert (=> b!610951 d!215484))

(assert (=> d!215210 d!215212))

(declare-fun d!215498 () Bool)

(assert (=> d!215498 (not (matchR!662 (regex!1225 (rule!2015 token!491)) input!2705))))

(assert (=> d!215498 true))

(declare-fun _$57!94 () Unit!11182)

(assert (=> d!215498 (= (choose!4504 thiss!22590 rules!3103 (rule!2015 (_1!3755 (v!16484 lt!261554))) lt!261518 input!2705 input!2705 (rule!2015 token!491)) _$57!94)))

(declare-fun bs!71614 () Bool)

(assert (= bs!71614 d!215498))

(assert (=> bs!71614 m!878591))

(assert (=> d!215210 d!215498))

(assert (=> d!215210 d!215290))

(assert (=> b!611315 d!215352))

(declare-fun e!370882 () Bool)

(declare-fun b!611956 () Bool)

(declare-fun lt!262074 () List!6124)

(assert (=> b!611956 (= e!370882 (or (not (= lt!261615 Nil!6114)) (= lt!262074 lt!261545)))))

(declare-fun b!611954 () Bool)

(declare-fun e!370883 () List!6124)

(assert (=> b!611954 (= e!370883 (Cons!6114 (h!11515 lt!261545) (++!1713 (t!80905 lt!261545) lt!261615)))))

(declare-fun b!611955 () Bool)

(declare-fun res!265978 () Bool)

(assert (=> b!611955 (=> (not res!265978) (not e!370882))))

(assert (=> b!611955 (= res!265978 (= (size!4808 lt!262074) (+ (size!4808 lt!261545) (size!4808 lt!261615))))))

(declare-fun b!611953 () Bool)

(assert (=> b!611953 (= e!370883 lt!261615)))

(declare-fun d!215500 () Bool)

(assert (=> d!215500 e!370882))

(declare-fun res!265979 () Bool)

(assert (=> d!215500 (=> (not res!265979) (not e!370882))))

(assert (=> d!215500 (= res!265979 (= (content!1117 lt!262074) ((_ map or) (content!1117 lt!261545) (content!1117 lt!261615))))))

(assert (=> d!215500 (= lt!262074 e!370883)))

(declare-fun c!113138 () Bool)

(assert (=> d!215500 (= c!113138 ((_ is Nil!6114) lt!261545))))

(assert (=> d!215500 (= (++!1713 lt!261545 lt!261615) lt!262074)))

(assert (= (and d!215500 c!113138) b!611953))

(assert (= (and d!215500 (not c!113138)) b!611954))

(assert (= (and d!215500 res!265979) b!611955))

(assert (= (and b!611955 res!265978) b!611956))

(declare-fun m!880169 () Bool)

(assert (=> b!611954 m!880169))

(declare-fun m!880171 () Bool)

(assert (=> b!611955 m!880171))

(assert (=> b!611955 m!878685))

(declare-fun m!880173 () Bool)

(assert (=> b!611955 m!880173))

(declare-fun m!880175 () Bool)

(assert (=> d!215500 m!880175))

(assert (=> d!215500 m!879129))

(declare-fun m!880177 () Bool)

(assert (=> d!215500 m!880177))

(assert (=> d!215028 d!215500))

(assert (=> d!215028 d!215410))

(assert (=> d!215028 d!215182))

(declare-fun d!215504 () Bool)

(declare-fun c!113142 () Bool)

(assert (=> d!215504 (= c!113142 ((_ is Nil!6115) rules!3103))))

(declare-fun e!370887 () (InoxSet Rule!2250))

(assert (=> d!215504 (= (content!1115 rules!3103) e!370887)))

(declare-fun b!611963 () Bool)

(assert (=> b!611963 (= e!370887 ((as const (Array Rule!2250 Bool)) false))))

(declare-fun b!611964 () Bool)

(assert (=> b!611964 (= e!370887 ((_ map or) (store ((as const (Array Rule!2250 Bool)) false) (h!11516 rules!3103) true) (content!1115 (t!80906 rules!3103))))))

(assert (= (and d!215504 c!113142) b!611963))

(assert (= (and d!215504 (not c!113142)) b!611964))

(declare-fun m!880183 () Bool)

(assert (=> b!611964 m!880183))

(assert (=> b!611964 m!879899))

(assert (=> d!214988 d!215504))

(declare-fun d!215510 () Bool)

(assert (=> d!215510 (= (seqFromList!1401 (_1!3756 lt!261607)) (fromListB!620 (_1!3756 lt!261607)))))

(declare-fun bs!71616 () Bool)

(assert (= bs!71616 d!215510))

(declare-fun m!880185 () Bool)

(assert (=> bs!71616 m!880185))

(assert (=> b!611062 d!215510))

(declare-fun bs!71617 () Bool)

(declare-fun d!215514 () Bool)

(assert (= bs!71617 (and d!215514 d!215030)))

(declare-fun lambda!16182 () Int)

(assert (=> bs!71617 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16182 lambda!16172))))

(declare-fun bs!71618 () Bool)

(assert (= bs!71618 (and d!215514 d!215110)))

(assert (=> bs!71618 (= lambda!16182 lambda!16173)))

(declare-fun bs!71619 () Bool)

(assert (= bs!71619 (and d!215514 d!215406)))

(assert (=> bs!71619 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16182 lambda!16178))))

(declare-fun b!611965 () Bool)

(declare-fun e!370888 () Bool)

(assert (=> b!611965 (= e!370888 true)))

(assert (=> d!215514 e!370888))

(assert (= d!215514 b!611965))

(assert (=> b!611965 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (dynLambda!3552 order!4879 lambda!16182))))

(assert (=> b!611965 (< (dynLambda!3553 order!4881 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (dynLambda!3552 order!4879 lambda!16182))))

(assert (=> d!215514 (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (seqFromList!1401 (_1!3756 lt!261607))))) (list!2572 (seqFromList!1401 (_1!3756 lt!261607))))))

(declare-fun lt!262076 () Unit!11182)

(assert (=> d!215514 (= lt!262076 (ForallOf!127 lambda!16182 (seqFromList!1401 (_1!3756 lt!261607))))))

(assert (=> d!215514 (= (lemmaSemiInverse!255 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (seqFromList!1401 (_1!3756 lt!261607))) lt!262076)))

(declare-fun b_lambda!24295 () Bool)

(assert (=> (not b_lambda!24295) (not d!215514)))

(declare-fun t!81061 () Bool)

(declare-fun tb!53461 () Bool)

(assert (=> (and b!610888 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81061) tb!53461))

(declare-fun b!611966 () Bool)

(declare-fun tp!189298 () Bool)

(declare-fun e!370889 () Bool)

(assert (=> b!611966 (= e!370889 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (seqFromList!1401 (_1!3756 lt!261607)))))) tp!189298))))

(declare-fun result!60200 () Bool)

(assert (=> tb!53461 (= result!60200 (and (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (seqFromList!1401 (_1!3756 lt!261607))))) e!370889))))

(assert (= tb!53461 b!611966))

(declare-fun m!880187 () Bool)

(assert (=> b!611966 m!880187))

(declare-fun m!880189 () Bool)

(assert (=> tb!53461 m!880189))

(assert (=> d!215514 t!81061))

(declare-fun b_and!60631 () Bool)

(assert (= b_and!60613 (and (=> t!81061 result!60200) b_and!60631)))

(declare-fun tb!53463 () Bool)

(declare-fun t!81063 () Bool)

(assert (=> (and b!610925 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81063) tb!53463))

(declare-fun result!60202 () Bool)

(assert (= result!60202 result!60200))

(assert (=> d!215514 t!81063))

(declare-fun b_and!60633 () Bool)

(assert (= b_and!60615 (and (=> t!81063 result!60202) b_and!60633)))

(declare-fun t!81065 () Bool)

(declare-fun tb!53465 () Bool)

(assert (=> (and b!611429 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81065) tb!53465))

(declare-fun result!60204 () Bool)

(assert (= result!60204 result!60200))

(assert (=> d!215514 t!81065))

(declare-fun b_and!60635 () Bool)

(assert (= b_and!60617 (and (=> t!81065 result!60204) b_and!60635)))

(declare-fun b_lambda!24297 () Bool)

(assert (=> (not b_lambda!24297) (not d!215514)))

(declare-fun t!81067 () Bool)

(declare-fun tb!53467 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81067) tb!53467))

(declare-fun result!60206 () Bool)

(assert (=> tb!53467 (= result!60206 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (seqFromList!1401 (_1!3756 lt!261607)))))))

(declare-fun m!880197 () Bool)

(assert (=> tb!53467 m!880197))

(assert (=> d!215514 t!81067))

(declare-fun b_and!60637 () Bool)

(assert (= b_and!60601 (and (=> t!81067 result!60206) b_and!60637)))

(declare-fun t!81069 () Bool)

(declare-fun tb!53469 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81069) tb!53469))

(declare-fun result!60208 () Bool)

(assert (= result!60208 result!60206))

(assert (=> d!215514 t!81069))

(declare-fun b_and!60639 () Bool)

(assert (= b_and!60603 (and (=> t!81069 result!60208) b_and!60639)))

(declare-fun t!81071 () Bool)

(declare-fun tb!53471 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81071) tb!53471))

(declare-fun result!60210 () Bool)

(assert (= result!60210 result!60206))

(assert (=> d!215514 t!81071))

(declare-fun b_and!60641 () Bool)

(assert (= b_and!60605 (and (=> t!81071 result!60210) b_and!60641)))

(declare-fun m!880207 () Bool)

(assert (=> d!215514 m!880207))

(declare-fun m!880209 () Bool)

(assert (=> d!215514 m!880209))

(assert (=> d!215514 m!878843))

(declare-fun m!880211 () Bool)

(assert (=> d!215514 m!880211))

(assert (=> d!215514 m!878843))

(declare-fun m!880213 () Bool)

(assert (=> d!215514 m!880213))

(assert (=> d!215514 m!880211))

(assert (=> d!215514 m!880207))

(assert (=> d!215514 m!878843))

(declare-fun m!880215 () Bool)

(assert (=> d!215514 m!880215))

(assert (=> b!611062 d!215514))

(assert (=> b!611062 d!215120))

(declare-fun d!215524 () Bool)

(assert (=> d!215524 (= (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))) ((_ is Nil!6114) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(assert (=> b!611062 d!215524))

(declare-fun d!215526 () Bool)

(assert (=> d!215526 (= (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (seqFromList!1401 (_1!3756 lt!261607))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (seqFromList!1401 (_1!3756 lt!261607))))))

(declare-fun b_lambda!24301 () Bool)

(assert (=> (not b_lambda!24301) (not d!215526)))

(assert (=> d!215526 t!81067))

(declare-fun b_and!60647 () Bool)

(assert (= b_and!60637 (and (=> t!81067 result!60206) b_and!60647)))

(assert (=> d!215526 t!81069))

(declare-fun b_and!60651 () Bool)

(assert (= b_and!60639 (and (=> t!81069 result!60208) b_and!60651)))

(assert (=> d!215526 t!81071))

(declare-fun b_and!60653 () Bool)

(assert (= b_and!60641 (and (=> t!81071 result!60210) b_and!60653)))

(assert (=> d!215526 m!878843))

(assert (=> d!215526 m!880211))

(assert (=> b!611062 d!215526))

(assert (=> b!611062 d!215296))

(assert (=> b!611062 d!215314))

(declare-fun d!215530 () Bool)

(declare-fun lt!262079 () Int)

(assert (=> d!215530 (= lt!262079 (size!4808 (list!2572 (seqFromList!1401 (_1!3756 lt!261607)))))))

(assert (=> d!215530 (= lt!262079 (size!4811 (c!112918 (seqFromList!1401 (_1!3756 lt!261607)))))))

(assert (=> d!215530 (= (size!4809 (seqFromList!1401 (_1!3756 lt!261607))) lt!262079)))

(declare-fun bs!71623 () Bool)

(assert (= bs!71623 d!215530))

(assert (=> bs!71623 m!878843))

(assert (=> bs!71623 m!880213))

(assert (=> bs!71623 m!880213))

(declare-fun m!880225 () Bool)

(assert (=> bs!71623 m!880225))

(declare-fun m!880227 () Bool)

(assert (=> bs!71623 m!880227))

(assert (=> b!611062 d!215530))

(declare-fun d!215536 () Bool)

(declare-fun e!370895 () Bool)

(assert (=> d!215536 e!370895))

(declare-fun res!265983 () Bool)

(assert (=> d!215536 (=> res!265983 e!370895)))

(assert (=> d!215536 (= res!265983 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(declare-fun lt!262080 () Unit!11182)

(assert (=> d!215536 (= lt!262080 (choose!4506 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705))))

(assert (=> d!215536 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215536 (= (longestMatchIsAcceptedByMatchOrIsEmpty!193 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705) lt!262080)))

(declare-fun b!611973 () Bool)

(assert (=> b!611973 (= e!370895 (matchR!662 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(assert (= (and d!215536 (not res!265983)) b!611973))

(assert (=> d!215536 m!878563))

(assert (=> d!215536 m!878827))

(assert (=> d!215536 m!878563))

(assert (=> d!215536 m!878829))

(declare-fun m!880235 () Bool)

(assert (=> d!215536 m!880235))

(assert (=> d!215536 m!879159))

(assert (=> d!215536 m!878827))

(assert (=> d!215536 m!878847))

(assert (=> b!611973 m!878827))

(assert (=> b!611973 m!878563))

(assert (=> b!611973 m!878827))

(assert (=> b!611973 m!878563))

(assert (=> b!611973 m!878829))

(assert (=> b!611973 m!878831))

(assert (=> b!611062 d!215536))

(declare-fun bs!71625 () Bool)

(declare-fun d!215544 () Bool)

(assert (= bs!71625 (and d!215544 d!215460)))

(declare-fun lambda!16183 () Int)

(assert (=> bs!71625 (= (= (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (h!11516 rules!3103)))) (= lambda!16183 lambda!16181))))

(assert (=> d!215544 true))

(assert (=> d!215544 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (dynLambda!3558 order!4883 lambda!16183))))

(assert (=> d!215544 (= (equivClasses!475 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (Forall2!233 lambda!16183))))

(declare-fun bs!71626 () Bool)

(assert (= bs!71626 d!215544))

(declare-fun m!880243 () Bool)

(assert (=> bs!71626 m!880243))

(assert (=> b!611333 d!215544))

(declare-fun bs!71631 () Bool)

(declare-fun d!215546 () Bool)

(assert (= bs!71631 (and d!215546 d!215030)))

(declare-fun lambda!16189 () Int)

(assert (=> bs!71631 (= lambda!16189 lambda!16172)))

(declare-fun bs!71632 () Bool)

(assert (= bs!71632 (and d!215546 d!215110)))

(assert (=> bs!71632 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (= lambda!16189 lambda!16173))))

(declare-fun bs!71634 () Bool)

(assert (= bs!71634 (and d!215546 d!215406)))

(assert (=> bs!71634 (= lambda!16189 lambda!16178)))

(declare-fun bs!71635 () Bool)

(assert (= bs!71635 (and d!215546 d!215514)))

(assert (=> bs!71635 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (= lambda!16189 lambda!16182))))

(assert (=> d!215546 true))

(assert (=> d!215546 (< (dynLambda!3553 order!4881 (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (dynLambda!3552 order!4879 lambda!16189))))

(assert (=> d!215546 true))

(assert (=> d!215546 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 token!491)))) (dynLambda!3552 order!4879 lambda!16189))))

(assert (=> d!215546 (= (semiInverseModEq!492 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) (Forall!307 lambda!16189))))

(declare-fun bs!71636 () Bool)

(assert (= bs!71636 d!215546))

(declare-fun m!880251 () Bool)

(assert (=> bs!71636 m!880251))

(assert (=> d!214972 d!215546))

(declare-fun b!611989 () Bool)

(declare-fun e!370900 () Bool)

(assert (=> b!611989 (= e!370900 (isPrefix!853 (tail!821 (tail!821 lt!261545)) (tail!821 (tail!821 lt!261553))))))

(declare-fun b!611987 () Bool)

(declare-fun e!370901 () Bool)

(assert (=> b!611987 (= e!370901 e!370900)))

(declare-fun res!265987 () Bool)

(assert (=> b!611987 (=> (not res!265987) (not e!370900))))

(assert (=> b!611987 (= res!265987 (not ((_ is Nil!6114) (tail!821 lt!261553))))))

(declare-fun b!611988 () Bool)

(declare-fun res!265988 () Bool)

(assert (=> b!611988 (=> (not res!265988) (not e!370900))))

(assert (=> b!611988 (= res!265988 (= (head!1292 (tail!821 lt!261545)) (head!1292 (tail!821 lt!261553))))))

(declare-fun d!215554 () Bool)

(declare-fun e!370899 () Bool)

(assert (=> d!215554 e!370899))

(declare-fun res!265985 () Bool)

(assert (=> d!215554 (=> res!265985 e!370899)))

(declare-fun lt!262081 () Bool)

(assert (=> d!215554 (= res!265985 (not lt!262081))))

(assert (=> d!215554 (= lt!262081 e!370901)))

(declare-fun res!265986 () Bool)

(assert (=> d!215554 (=> res!265986 e!370901)))

(assert (=> d!215554 (= res!265986 ((_ is Nil!6114) (tail!821 lt!261545)))))

(assert (=> d!215554 (= (isPrefix!853 (tail!821 lt!261545) (tail!821 lt!261553)) lt!262081)))

(declare-fun b!611990 () Bool)

(assert (=> b!611990 (= e!370899 (>= (size!4808 (tail!821 lt!261553)) (size!4808 (tail!821 lt!261545))))))

(assert (= (and d!215554 (not res!265986)) b!611987))

(assert (= (and b!611987 res!265987) b!611988))

(assert (= (and b!611988 res!265988) b!611989))

(assert (= (and d!215554 (not res!265985)) b!611990))

(assert (=> b!611989 m!879227))

(declare-fun m!880253 () Bool)

(assert (=> b!611989 m!880253))

(assert (=> b!611989 m!879213))

(assert (=> b!611989 m!879749))

(assert (=> b!611989 m!880253))

(assert (=> b!611989 m!879749))

(declare-fun m!880255 () Bool)

(assert (=> b!611989 m!880255))

(assert (=> b!611988 m!879227))

(declare-fun m!880257 () Bool)

(assert (=> b!611988 m!880257))

(assert (=> b!611988 m!879213))

(assert (=> b!611988 m!879755))

(assert (=> b!611990 m!879213))

(assert (=> b!611990 m!879757))

(assert (=> b!611990 m!879227))

(declare-fun m!880261 () Bool)

(assert (=> b!611990 m!880261))

(assert (=> b!611329 d!215554))

(declare-fun d!215564 () Bool)

(assert (=> d!215564 (= (tail!821 lt!261545) (t!80905 lt!261545))))

(assert (=> b!611329 d!215564))

(assert (=> b!611329 d!215350))

(declare-fun b!612008 () Bool)

(declare-fun e!370913 () List!6124)

(declare-fun e!370914 () List!6124)

(assert (=> b!612008 (= e!370913 e!370914)))

(declare-fun c!113151 () Bool)

(assert (=> b!612008 (= c!113151 ((_ is Leaf!3062) (c!112918 (charsOf!854 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!612007 () Bool)

(assert (=> b!612007 (= e!370913 Nil!6114)))

(declare-fun b!612009 () Bool)

(declare-fun list!2576 (IArray!3885) List!6124)

(assert (=> b!612009 (= e!370914 (list!2576 (xs!4579 (c!112918 (charsOf!854 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun d!215566 () Bool)

(declare-fun c!113150 () Bool)

(assert (=> d!215566 (= c!113150 ((_ is Empty!1942) (c!112918 (charsOf!854 (_1!3755 (v!16484 lt!261554))))))))

(assert (=> d!215566 (= (list!2574 (c!112918 (charsOf!854 (_1!3755 (v!16484 lt!261554))))) e!370913)))

(declare-fun b!612010 () Bool)

(assert (=> b!612010 (= e!370914 (++!1713 (list!2574 (left!4895 (c!112918 (charsOf!854 (_1!3755 (v!16484 lt!261554)))))) (list!2574 (right!5225 (c!112918 (charsOf!854 (_1!3755 (v!16484 lt!261554))))))))))

(assert (= (and d!215566 c!113150) b!612007))

(assert (= (and d!215566 (not c!113150)) b!612008))

(assert (= (and b!612008 c!113151) b!612009))

(assert (= (and b!612008 (not c!113151)) b!612010))

(declare-fun m!880265 () Bool)

(assert (=> b!612009 m!880265))

(declare-fun m!880267 () Bool)

(assert (=> b!612010 m!880267))

(declare-fun m!880269 () Bool)

(assert (=> b!612010 m!880269))

(assert (=> b!612010 m!880267))

(assert (=> b!612010 m!880269))

(declare-fun m!880271 () Bool)

(assert (=> b!612010 m!880271))

(assert (=> d!215162 d!215566))

(declare-fun b!612014 () Bool)

(declare-fun e!370915 () Bool)

(declare-fun lt!262086 () List!6124)

(assert (=> b!612014 (= e!370915 (or (not (= (_2!3755 (get!2352 lt!261565)) Nil!6114)) (= lt!262086 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))))))))

(declare-fun b!612012 () Bool)

(declare-fun e!370916 () List!6124)

(assert (=> b!612012 (= e!370916 (Cons!6114 (h!11515 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))) (++!1713 (t!80905 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))) (_2!3755 (get!2352 lt!261565)))))))

(declare-fun b!612013 () Bool)

(declare-fun res!265997 () Bool)

(assert (=> b!612013 (=> (not res!265997) (not e!370915))))

(assert (=> b!612013 (= res!265997 (= (size!4808 lt!262086) (+ (size!4808 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))) (size!4808 (_2!3755 (get!2352 lt!261565))))))))

(declare-fun b!612011 () Bool)

(assert (=> b!612011 (= e!370916 (_2!3755 (get!2352 lt!261565)))))

(declare-fun d!215570 () Bool)

(assert (=> d!215570 e!370915))

(declare-fun res!265998 () Bool)

(assert (=> d!215570 (=> (not res!265998) (not e!370915))))

(assert (=> d!215570 (= res!265998 (= (content!1117 lt!262086) ((_ map or) (content!1117 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))) (content!1117 (_2!3755 (get!2352 lt!261565))))))))

(assert (=> d!215570 (= lt!262086 e!370916)))

(declare-fun c!113152 () Bool)

(assert (=> d!215570 (= c!113152 ((_ is Nil!6114) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565))))))))

(assert (=> d!215570 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261565)))) (_2!3755 (get!2352 lt!261565))) lt!262086)))

(assert (= (and d!215570 c!113152) b!612011))

(assert (= (and d!215570 (not c!113152)) b!612012))

(assert (= (and d!215570 res!265998) b!612013))

(assert (= (and b!612013 res!265997) b!612014))

(declare-fun m!880273 () Bool)

(assert (=> b!612012 m!880273))

(declare-fun m!880275 () Bool)

(assert (=> b!612013 m!880275))

(assert (=> b!612013 m!878717))

(declare-fun m!880277 () Bool)

(assert (=> b!612013 m!880277))

(assert (=> b!612013 m!878713))

(declare-fun m!880279 () Bool)

(assert (=> d!215570 m!880279))

(assert (=> d!215570 m!878717))

(declare-fun m!880281 () Bool)

(assert (=> d!215570 m!880281))

(declare-fun m!880283 () Bool)

(assert (=> d!215570 m!880283))

(assert (=> b!610955 d!215570))

(assert (=> b!610955 d!215450))

(assert (=> b!610955 d!215452))

(assert (=> b!610955 d!215374))

(assert (=> d!215166 d!215264))

(declare-fun d!215572 () Bool)

(declare-fun lt!262088 () Bool)

(assert (=> d!215572 (= lt!262088 (select (content!1115 (t!80906 rules!3103)) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun e!370920 () Bool)

(assert (=> d!215572 (= lt!262088 e!370920)))

(declare-fun res!266002 () Bool)

(assert (=> d!215572 (=> (not res!266002) (not e!370920))))

(assert (=> d!215572 (= res!266002 ((_ is Cons!6115) (t!80906 rules!3103)))))

(assert (=> d!215572 (= (contains!1441 (t!80906 rules!3103) (rule!2015 (_1!3755 (v!16484 lt!261554)))) lt!262088)))

(declare-fun b!612019 () Bool)

(declare-fun e!370919 () Bool)

(assert (=> b!612019 (= e!370920 e!370919)))

(declare-fun res!266001 () Bool)

(assert (=> b!612019 (=> res!266001 e!370919)))

(assert (=> b!612019 (= res!266001 (= (h!11516 (t!80906 rules!3103)) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(declare-fun b!612020 () Bool)

(assert (=> b!612020 (= e!370919 (contains!1441 (t!80906 (t!80906 rules!3103)) (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (= (and d!215572 res!266002) b!612019))

(assert (= (and b!612019 (not res!266001)) b!612020))

(assert (=> d!215572 m!879899))

(declare-fun m!880287 () Bool)

(assert (=> d!215572 m!880287))

(declare-fun m!880291 () Bool)

(assert (=> b!612020 m!880291))

(assert (=> b!611392 d!215572))

(declare-fun d!215576 () Bool)

(assert (=> d!215576 (= (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))) (isBalanced!534 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))))))

(declare-fun bs!71638 () Bool)

(assert (= bs!71638 d!215576))

(declare-fun m!880293 () Bool)

(assert (=> bs!71638 m!880293))

(assert (=> tb!53311 d!215576))

(assert (=> b!611301 d!215260))

(declare-fun d!215578 () Bool)

(assert (=> d!215578 (= (head!1292 lt!261534) (h!11515 lt!261534))))

(assert (=> b!611301 d!215578))

(declare-fun bs!71639 () Bool)

(declare-fun d!215580 () Bool)

(assert (= bs!71639 (and d!215580 d!215460)))

(declare-fun lambda!16193 () Int)

(assert (=> bs!71639 (= (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (h!11516 rules!3103)))) (= lambda!16193 lambda!16181))))

(declare-fun bs!71640 () Bool)

(assert (= bs!71640 (and d!215580 d!215544)))

(assert (=> bs!71640 (= (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (= lambda!16193 lambda!16183))))

(assert (=> d!215580 true))

(assert (=> d!215580 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 token!491)))) (dynLambda!3558 order!4883 lambda!16193))))

(assert (=> d!215580 (= (equivClasses!475 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) (Forall2!233 lambda!16193))))

(declare-fun bs!71641 () Bool)

(assert (= bs!71641 d!215580))

(declare-fun m!880295 () Bool)

(assert (=> bs!71641 m!880295))

(assert (=> b!611342 d!215580))

(assert (=> b!611314 d!215120))

(declare-fun d!215582 () Bool)

(assert (=> d!215582 (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))) (list!2574 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))))

(declare-fun bs!71642 () Bool)

(assert (= bs!71642 d!215582))

(declare-fun m!880297 () Bool)

(assert (=> bs!71642 m!880297))

(assert (=> d!215030 d!215582))

(declare-fun d!215584 () Bool)

(assert (=> d!215584 (= (list!2572 lt!261519) (list!2574 (c!112918 lt!261519)))))

(declare-fun bs!71643 () Bool)

(assert (= bs!71643 d!215584))

(declare-fun m!880299 () Bool)

(assert (=> bs!71643 m!880299))

(assert (=> d!215030 d!215584))

(declare-fun d!215586 () Bool)

(assert (=> d!215586 (dynLambda!3557 lambda!16172 lt!261519)))

(declare-fun lt!262094 () Unit!11182)

(assert (=> d!215586 (= lt!262094 (choose!4505 lambda!16172 lt!261519))))

(assert (=> d!215586 (Forall!307 lambda!16172)))

(assert (=> d!215586 (= (ForallOf!127 lambda!16172 lt!261519) lt!262094)))

(declare-fun b_lambda!24303 () Bool)

(assert (=> (not b_lambda!24303) (not d!215586)))

(declare-fun bs!71644 () Bool)

(assert (= bs!71644 d!215586))

(declare-fun m!880301 () Bool)

(assert (=> bs!71644 m!880301))

(declare-fun m!880303 () Bool)

(assert (=> bs!71644 m!880303))

(declare-fun m!880305 () Bool)

(assert (=> bs!71644 m!880305))

(assert (=> d!215030 d!215586))

(declare-fun d!215588 () Bool)

(declare-fun lt!262095 () List!6124)

(assert (=> d!215588 (= (++!1713 (t!80905 input!2705) lt!262095) (tail!821 lt!261534))))

(declare-fun e!370924 () List!6124)

(assert (=> d!215588 (= lt!262095 e!370924)))

(declare-fun c!113154 () Bool)

(assert (=> d!215588 (= c!113154 ((_ is Cons!6114) (t!80905 input!2705)))))

(assert (=> d!215588 (>= (size!4808 (tail!821 lt!261534)) (size!4808 (t!80905 input!2705)))))

(assert (=> d!215588 (= (getSuffix!370 (tail!821 lt!261534) (t!80905 input!2705)) lt!262095)))

(declare-fun b!612030 () Bool)

(assert (=> b!612030 (= e!370924 (getSuffix!370 (tail!821 (tail!821 lt!261534)) (t!80905 (t!80905 input!2705))))))

(declare-fun b!612031 () Bool)

(assert (=> b!612031 (= e!370924 (tail!821 lt!261534))))

(assert (= (and d!215588 c!113154) b!612030))

(assert (= (and d!215588 (not c!113154)) b!612031))

(declare-fun m!880307 () Bool)

(assert (=> d!215588 m!880307))

(assert (=> d!215588 m!878867))

(assert (=> d!215588 m!879743))

(assert (=> d!215588 m!879105))

(assert (=> b!612030 m!878867))

(assert (=> b!612030 m!879745))

(assert (=> b!612030 m!879745))

(declare-fun m!880317 () Bool)

(assert (=> b!612030 m!880317))

(assert (=> b!611217 d!215588))

(assert (=> b!611217 d!215344))

(declare-fun b!612035 () Bool)

(declare-fun e!370925 () Bool)

(declare-fun lt!262096 () List!6124)

(assert (=> b!612035 (= e!370925 (or (not (= (_2!3755 (get!2352 lt!261736)) Nil!6114)) (= lt!262096 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))))))))

(declare-fun b!612033 () Bool)

(declare-fun e!370926 () List!6124)

(assert (=> b!612033 (= e!370926 (Cons!6114 (h!11515 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))) (++!1713 (t!80905 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))) (_2!3755 (get!2352 lt!261736)))))))

(declare-fun b!612034 () Bool)

(declare-fun res!266010 () Bool)

(assert (=> b!612034 (=> (not res!266010) (not e!370925))))

(assert (=> b!612034 (= res!266010 (= (size!4808 lt!262096) (+ (size!4808 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))) (size!4808 (_2!3755 (get!2352 lt!261736))))))))

(declare-fun b!612032 () Bool)

(assert (=> b!612032 (= e!370926 (_2!3755 (get!2352 lt!261736)))))

(declare-fun d!215590 () Bool)

(assert (=> d!215590 e!370925))

(declare-fun res!266011 () Bool)

(assert (=> d!215590 (=> (not res!266011) (not e!370925))))

(assert (=> d!215590 (= res!266011 (= (content!1117 lt!262096) ((_ map or) (content!1117 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))) (content!1117 (_2!3755 (get!2352 lt!261736))))))))

(assert (=> d!215590 (= lt!262096 e!370926)))

(declare-fun c!113155 () Bool)

(assert (=> d!215590 (= c!113155 ((_ is Nil!6114) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))))))

(assert (=> d!215590 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))) (_2!3755 (get!2352 lt!261736))) lt!262096)))

(assert (= (and d!215590 c!113155) b!612032))

(assert (= (and d!215590 (not c!113155)) b!612033))

(assert (= (and d!215590 res!266011) b!612034))

(assert (= (and b!612034 res!266010) b!612035))

(declare-fun m!880329 () Bool)

(assert (=> b!612033 m!880329))

(declare-fun m!880333 () Bool)

(assert (=> b!612034 m!880333))

(assert (=> b!612034 m!879293))

(declare-fun m!880337 () Bool)

(assert (=> b!612034 m!880337))

(assert (=> b!612034 m!879289))

(declare-fun m!880339 () Bool)

(assert (=> d!215590 m!880339))

(assert (=> d!215590 m!879293))

(declare-fun m!880341 () Bool)

(assert (=> d!215590 m!880341))

(declare-fun m!880343 () Bool)

(assert (=> d!215590 m!880343))

(assert (=> b!611401 d!215590))

(assert (=> b!611401 d!215266))

(assert (=> b!611401 d!215268))

(assert (=> b!611401 d!215270))

(declare-fun d!215592 () Bool)

(declare-fun e!370933 () Bool)

(assert (=> d!215592 e!370933))

(declare-fun c!113157 () Bool)

(assert (=> d!215592 (= c!113157 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun lt!262097 () Bool)

(declare-fun e!370927 () Bool)

(assert (=> d!215592 (= lt!262097 e!370927)))

(declare-fun c!113158 () Bool)

(assert (=> d!215592 (= c!113158 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))))))

(assert (=> d!215592 (validRegex!546 (regex!1225 (rule!2015 token!491)))))

(assert (=> d!215592 (= (matchR!662 (regex!1225 (rule!2015 token!491)) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))) lt!262097)))

(declare-fun b!612036 () Bool)

(declare-fun e!370930 () Bool)

(assert (=> b!612036 (= e!370933 e!370930)))

(declare-fun c!113156 () Bool)

(assert (=> b!612036 (= c!113156 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun b!612037 () Bool)

(declare-fun e!370931 () Bool)

(declare-fun e!370929 () Bool)

(assert (=> b!612037 (= e!370931 e!370929)))

(declare-fun res!266018 () Bool)

(assert (=> b!612037 (=> res!266018 e!370929)))

(declare-fun call!40932 () Bool)

(assert (=> b!612037 (= res!266018 call!40932)))

(declare-fun b!612038 () Bool)

(assert (=> b!612038 (= e!370933 (= lt!262097 call!40932))))

(declare-fun b!612039 () Bool)

(declare-fun res!266019 () Bool)

(declare-fun e!370932 () Bool)

(assert (=> b!612039 (=> res!266019 e!370932)))

(assert (=> b!612039 (= res!266019 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 token!491)))))))

(assert (=> b!612039 (= e!370930 e!370932)))

(declare-fun b!612040 () Bool)

(declare-fun res!266016 () Bool)

(declare-fun e!370928 () Bool)

(assert (=> b!612040 (=> (not res!266016) (not e!370928))))

(assert (=> b!612040 (= res!266016 (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656)))))))))

(declare-fun b!612041 () Bool)

(declare-fun res!266017 () Bool)

(assert (=> b!612041 (=> res!266017 e!370929)))

(assert (=> b!612041 (= res!266017 (not (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))))))))

(declare-fun b!612042 () Bool)

(declare-fun res!266014 () Bool)

(assert (=> b!612042 (=> res!266014 e!370932)))

(assert (=> b!612042 (= res!266014 e!370928)))

(declare-fun res!266013 () Bool)

(assert (=> b!612042 (=> (not res!266013) (not e!370928))))

(assert (=> b!612042 (= res!266013 lt!262097)))

(declare-fun b!612043 () Bool)

(declare-fun res!266015 () Bool)

(assert (=> b!612043 (=> (not res!266015) (not e!370928))))

(assert (=> b!612043 (= res!266015 (not call!40932))))

(declare-fun b!612044 () Bool)

(assert (=> b!612044 (= e!370928 (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))) (c!112917 (regex!1225 (rule!2015 token!491)))))))

(declare-fun b!612045 () Bool)

(assert (=> b!612045 (= e!370932 e!370931)))

(declare-fun res!266012 () Bool)

(assert (=> b!612045 (=> (not res!266012) (not e!370931))))

(assert (=> b!612045 (= res!266012 (not lt!262097))))

(declare-fun b!612046 () Bool)

(assert (=> b!612046 (= e!370930 (not lt!262097))))

(declare-fun b!612047 () Bool)

(assert (=> b!612047 (= e!370927 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656)))))) (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656)))))))))

(declare-fun bm!40927 () Bool)

(assert (=> bm!40927 (= call!40932 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))))))

(declare-fun b!612048 () Bool)

(assert (=> b!612048 (= e!370927 (nullable!451 (regex!1225 (rule!2015 token!491))))))

(declare-fun b!612049 () Bool)

(assert (=> b!612049 (= e!370929 (not (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261656))))) (c!112917 (regex!1225 (rule!2015 token!491))))))))

(assert (= (and d!215592 c!113158) b!612048))

(assert (= (and d!215592 (not c!113158)) b!612047))

(assert (= (and d!215592 c!113157) b!612038))

(assert (= (and d!215592 (not c!113157)) b!612036))

(assert (= (and b!612036 c!113156) b!612046))

(assert (= (and b!612036 (not c!113156)) b!612039))

(assert (= (and b!612039 (not res!266019)) b!612042))

(assert (= (and b!612042 res!266013) b!612043))

(assert (= (and b!612043 res!266015) b!612040))

(assert (= (and b!612040 res!266016) b!612044))

(assert (= (and b!612042 (not res!266014)) b!612045))

(assert (= (and b!612045 res!266012) b!612037))

(assert (= (and b!612037 (not res!266018)) b!612041))

(assert (= (and b!612041 (not res!266017)) b!612049))

(assert (= (or b!612038 b!612037 b!612043) bm!40927))

(assert (=> bm!40927 m!879015))

(declare-fun m!880349 () Bool)

(assert (=> bm!40927 m!880349))

(assert (=> b!612044 m!879015))

(declare-fun m!880351 () Bool)

(assert (=> b!612044 m!880351))

(assert (=> b!612040 m!879015))

(declare-fun m!880353 () Bool)

(assert (=> b!612040 m!880353))

(assert (=> b!612040 m!880353))

(declare-fun m!880355 () Bool)

(assert (=> b!612040 m!880355))

(assert (=> b!612047 m!879015))

(assert (=> b!612047 m!880351))

(assert (=> b!612047 m!880351))

(declare-fun m!880357 () Bool)

(assert (=> b!612047 m!880357))

(assert (=> b!612047 m!879015))

(assert (=> b!612047 m!880353))

(assert (=> b!612047 m!880357))

(assert (=> b!612047 m!880353))

(declare-fun m!880359 () Bool)

(assert (=> b!612047 m!880359))

(assert (=> b!612041 m!879015))

(assert (=> b!612041 m!880353))

(assert (=> b!612041 m!880353))

(assert (=> b!612041 m!880355))

(assert (=> b!612048 m!879189))

(assert (=> b!612049 m!879015))

(assert (=> b!612049 m!880351))

(assert (=> d!215592 m!879015))

(assert (=> d!215592 m!880349))

(assert (=> d!215592 m!879187))

(assert (=> b!611183 d!215592))

(assert (=> b!611183 d!215330))

(assert (=> b!611183 d!215332))

(assert (=> b!611183 d!215276))

(declare-fun lt!262098 () List!6124)

(declare-fun e!370934 () Bool)

(declare-fun b!612053 () Bool)

(assert (=> b!612053 (= e!370934 (or (not (= lt!261672 Nil!6114)) (= lt!262098 input!2705)))))

(declare-fun b!612051 () Bool)

(declare-fun e!370935 () List!6124)

(assert (=> b!612051 (= e!370935 (Cons!6114 (h!11515 input!2705) (++!1713 (t!80905 input!2705) lt!261672)))))

(declare-fun b!612052 () Bool)

(declare-fun res!266020 () Bool)

(assert (=> b!612052 (=> (not res!266020) (not e!370934))))

(assert (=> b!612052 (= res!266020 (= (size!4808 lt!262098) (+ (size!4808 input!2705) (size!4808 lt!261672))))))

(declare-fun b!612050 () Bool)

(assert (=> b!612050 (= e!370935 lt!261672)))

(declare-fun d!215598 () Bool)

(assert (=> d!215598 e!370934))

(declare-fun res!266021 () Bool)

(assert (=> d!215598 (=> (not res!266021) (not e!370934))))

(assert (=> d!215598 (= res!266021 (= (content!1117 lt!262098) ((_ map or) (content!1117 input!2705) (content!1117 lt!261672))))))

(assert (=> d!215598 (= lt!262098 e!370935)))

(declare-fun c!113159 () Bool)

(assert (=> d!215598 (= c!113159 ((_ is Nil!6114) input!2705))))

(assert (=> d!215598 (= (++!1713 input!2705 lt!261672) lt!262098)))

(assert (= (and d!215598 c!113159) b!612050))

(assert (= (and d!215598 (not c!113159)) b!612051))

(assert (= (and d!215598 res!266021) b!612052))

(assert (= (and b!612052 res!266020) b!612053))

(declare-fun m!880361 () Bool)

(assert (=> b!612051 m!880361))

(declare-fun m!880363 () Bool)

(assert (=> b!612052 m!880363))

(assert (=> b!612052 m!878563))

(declare-fun m!880365 () Bool)

(assert (=> b!612052 m!880365))

(declare-fun m!880367 () Bool)

(assert (=> d!215598 m!880367))

(assert (=> d!215598 m!879315))

(declare-fun m!880369 () Bool)

(assert (=> d!215598 m!880369))

(assert (=> d!215124 d!215598))

(assert (=> d!215124 d!215410))

(assert (=> d!215124 d!215120))

(declare-fun d!215600 () Bool)

(declare-fun e!370942 () Bool)

(assert (=> d!215600 e!370942))

(declare-fun c!113161 () Bool)

(assert (=> d!215600 (= c!113161 ((_ is EmptyExpr!1559) (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705))))))

(declare-fun lt!262099 () Bool)

(declare-fun e!370936 () Bool)

(assert (=> d!215600 (= lt!262099 e!370936)))

(declare-fun c!113162 () Bool)

(assert (=> d!215600 (= c!113162 (isEmpty!4413 (tail!821 input!2705)))))

(assert (=> d!215600 (validRegex!546 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705)))))

(assert (=> d!215600 (= (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705)) (tail!821 input!2705)) lt!262099)))

(declare-fun b!612054 () Bool)

(declare-fun e!370939 () Bool)

(assert (=> b!612054 (= e!370942 e!370939)))

(declare-fun c!113160 () Bool)

(assert (=> b!612054 (= c!113160 ((_ is EmptyLang!1559) (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705))))))

(declare-fun b!612055 () Bool)

(declare-fun e!370940 () Bool)

(declare-fun e!370938 () Bool)

(assert (=> b!612055 (= e!370940 e!370938)))

(declare-fun res!266028 () Bool)

(assert (=> b!612055 (=> res!266028 e!370938)))

(declare-fun call!40933 () Bool)

(assert (=> b!612055 (= res!266028 call!40933)))

(declare-fun b!612056 () Bool)

(assert (=> b!612056 (= e!370942 (= lt!262099 call!40933))))

(declare-fun b!612057 () Bool)

(declare-fun res!266029 () Bool)

(declare-fun e!370941 () Bool)

(assert (=> b!612057 (=> res!266029 e!370941)))

(assert (=> b!612057 (= res!266029 (not ((_ is ElementMatch!1559) (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705)))))))

(assert (=> b!612057 (= e!370939 e!370941)))

(declare-fun b!612058 () Bool)

(declare-fun res!266026 () Bool)

(declare-fun e!370937 () Bool)

(assert (=> b!612058 (=> (not res!266026) (not e!370937))))

(assert (=> b!612058 (= res!266026 (isEmpty!4413 (tail!821 (tail!821 input!2705))))))

(declare-fun b!612059 () Bool)

(declare-fun res!266027 () Bool)

(assert (=> b!612059 (=> res!266027 e!370938)))

(assert (=> b!612059 (= res!266027 (not (isEmpty!4413 (tail!821 (tail!821 input!2705)))))))

(declare-fun b!612060 () Bool)

(declare-fun res!266024 () Bool)

(assert (=> b!612060 (=> res!266024 e!370941)))

(assert (=> b!612060 (= res!266024 e!370937)))

(declare-fun res!266023 () Bool)

(assert (=> b!612060 (=> (not res!266023) (not e!370937))))

(assert (=> b!612060 (= res!266023 lt!262099)))

(declare-fun b!612061 () Bool)

(declare-fun res!266025 () Bool)

(assert (=> b!612061 (=> (not res!266025) (not e!370937))))

(assert (=> b!612061 (= res!266025 (not call!40933))))

(declare-fun b!612062 () Bool)

(assert (=> b!612062 (= e!370937 (= (head!1292 (tail!821 input!2705)) (c!112917 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705)))))))

(declare-fun b!612063 () Bool)

(assert (=> b!612063 (= e!370941 e!370940)))

(declare-fun res!266022 () Bool)

(assert (=> b!612063 (=> (not res!266022) (not e!370940))))

(assert (=> b!612063 (= res!266022 (not lt!262099))))

(declare-fun b!612064 () Bool)

(assert (=> b!612064 (= e!370939 (not lt!262099))))

(declare-fun b!612065 () Bool)

(assert (=> b!612065 (= e!370936 (matchR!662 (derivativeStep!336 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705)) (head!1292 (tail!821 input!2705))) (tail!821 (tail!821 input!2705))))))

(declare-fun bm!40928 () Bool)

(assert (=> bm!40928 (= call!40933 (isEmpty!4413 (tail!821 input!2705)))))

(declare-fun b!612066 () Bool)

(assert (=> b!612066 (= e!370936 (nullable!451 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705))))))

(declare-fun b!612067 () Bool)

(assert (=> b!612067 (= e!370938 (not (= (head!1292 (tail!821 input!2705)) (c!112917 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705))))))))

(assert (= (and d!215600 c!113162) b!612066))

(assert (= (and d!215600 (not c!113162)) b!612065))

(assert (= (and d!215600 c!113161) b!612056))

(assert (= (and d!215600 (not c!113161)) b!612054))

(assert (= (and b!612054 c!113160) b!612064))

(assert (= (and b!612054 (not c!113160)) b!612057))

(assert (= (and b!612057 (not res!266029)) b!612060))

(assert (= (and b!612060 res!266023) b!612061))

(assert (= (and b!612061 res!266025) b!612058))

(assert (= (and b!612058 res!266026) b!612062))

(assert (= (and b!612060 (not res!266024)) b!612063))

(assert (= (and b!612063 res!266022) b!612055))

(assert (= (and b!612055 (not res!266028)) b!612059))

(assert (= (and b!612059 (not res!266027)) b!612067))

(assert (= (or b!612056 b!612055 b!612061) bm!40928))

(assert (=> bm!40928 m!879149))

(assert (=> bm!40928 m!879151))

(assert (=> b!612062 m!879149))

(assert (=> b!612062 m!879753))

(assert (=> b!612058 m!879149))

(assert (=> b!612058 m!879555))

(assert (=> b!612058 m!879555))

(declare-fun m!880371 () Bool)

(assert (=> b!612058 m!880371))

(assert (=> b!612065 m!879149))

(assert (=> b!612065 m!879753))

(assert (=> b!612065 m!879153))

(assert (=> b!612065 m!879753))

(declare-fun m!880373 () Bool)

(assert (=> b!612065 m!880373))

(assert (=> b!612065 m!879149))

(assert (=> b!612065 m!879555))

(assert (=> b!612065 m!880373))

(assert (=> b!612065 m!879555))

(declare-fun m!880375 () Bool)

(assert (=> b!612065 m!880375))

(assert (=> b!612059 m!879149))

(assert (=> b!612059 m!879555))

(assert (=> b!612059 m!879555))

(assert (=> b!612059 m!880371))

(assert (=> b!612066 m!879153))

(declare-fun m!880377 () Bool)

(assert (=> b!612066 m!880377))

(assert (=> b!612067 m!879149))

(assert (=> b!612067 m!879753))

(assert (=> d!215600 m!879149))

(assert (=> d!215600 m!879151))

(assert (=> d!215600 m!879153))

(declare-fun m!880379 () Bool)

(assert (=> d!215600 m!880379))

(assert (=> b!611286 d!215600))

(declare-fun d!215602 () Bool)

(declare-fun lt!262107 () Regex!1559)

(assert (=> d!215602 (validRegex!546 lt!262107)))

(declare-fun e!370989 () Regex!1559)

(assert (=> d!215602 (= lt!262107 e!370989)))

(declare-fun c!113192 () Bool)

(assert (=> d!215602 (= c!113192 (or ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) ((_ is EmptyLang!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(assert (=> d!215602 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215602 (= (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (head!1292 input!2705)) lt!262107)))

(declare-fun b!612142 () Bool)

(declare-fun e!370988 () Regex!1559)

(declare-fun e!370992 () Regex!1559)

(assert (=> b!612142 (= e!370988 e!370992)))

(declare-fun c!113195 () Bool)

(assert (=> b!612142 (= c!113195 ((_ is Star!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!612143 () Bool)

(declare-fun c!113191 () Bool)

(assert (=> b!612143 (= c!113191 (nullable!451 (regOne!3630 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun e!370991 () Regex!1559)

(assert (=> b!612143 (= e!370992 e!370991)))

(declare-fun b!612144 () Bool)

(declare-fun call!40954 () Regex!1559)

(declare-fun call!40953 () Regex!1559)

(assert (=> b!612144 (= e!370988 (Union!1559 call!40954 call!40953))))

(declare-fun bm!40946 () Bool)

(declare-fun call!40952 () Regex!1559)

(declare-fun call!40951 () Regex!1559)

(assert (=> bm!40946 (= call!40952 call!40951)))

(declare-fun bm!40947 () Bool)

(declare-fun c!113193 () Bool)

(assert (=> bm!40947 (= call!40954 (derivativeStep!336 (ite c!113193 (regOne!3631 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (ite c!113195 (reg!1888 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (regOne!3630 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (head!1292 input!2705)))))

(declare-fun b!612145 () Bool)

(assert (=> b!612145 (= c!113193 ((_ is Union!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun e!370990 () Regex!1559)

(assert (=> b!612145 (= e!370990 e!370988)))

(declare-fun b!612146 () Bool)

(assert (=> b!612146 (= e!370992 (Concat!2808 call!40951 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun bm!40948 () Bool)

(assert (=> bm!40948 (= call!40951 call!40954)))

(declare-fun b!612147 () Bool)

(assert (=> b!612147 (= e!370989 EmptyLang!1559)))

(declare-fun b!612148 () Bool)

(assert (=> b!612148 (= e!370991 (Union!1559 (Concat!2808 call!40952 (regTwo!3630 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) call!40953))))

(declare-fun b!612149 () Bool)

(assert (=> b!612149 (= e!370989 e!370990)))

(declare-fun c!113194 () Bool)

(assert (=> b!612149 (= c!113194 ((_ is ElementMatch!1559) (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))))

(declare-fun b!612150 () Bool)

(assert (=> b!612150 (= e!370990 (ite (= (head!1292 input!2705) (c!112917 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) EmptyExpr!1559 EmptyLang!1559))))

(declare-fun bm!40949 () Bool)

(assert (=> bm!40949 (= call!40953 (derivativeStep!336 (ite c!113193 (regTwo!3631 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (regTwo!3630 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (head!1292 input!2705)))))

(declare-fun b!612151 () Bool)

(assert (=> b!612151 (= e!370991 (Union!1559 (Concat!2808 call!40952 (regTwo!3630 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) EmptyLang!1559))))

(assert (= (and d!215602 c!113192) b!612147))

(assert (= (and d!215602 (not c!113192)) b!612149))

(assert (= (and b!612149 c!113194) b!612150))

(assert (= (and b!612149 (not c!113194)) b!612145))

(assert (= (and b!612145 c!113193) b!612144))

(assert (= (and b!612145 (not c!113193)) b!612142))

(assert (= (and b!612142 c!113195) b!612146))

(assert (= (and b!612142 (not c!113195)) b!612143))

(assert (= (and b!612143 c!113191) b!612148))

(assert (= (and b!612143 (not c!113191)) b!612151))

(assert (= (or b!612148 b!612151) bm!40946))

(assert (= (or b!612146 bm!40946) bm!40948))

(assert (= (or b!612144 b!612148) bm!40949))

(assert (= (or b!612144 bm!40948) bm!40947))

(declare-fun m!880421 () Bool)

(assert (=> d!215602 m!880421))

(assert (=> d!215602 m!879159))

(declare-fun m!880423 () Bool)

(assert (=> b!612143 m!880423))

(assert (=> bm!40947 m!879147))

(declare-fun m!880425 () Bool)

(assert (=> bm!40947 m!880425))

(assert (=> bm!40949 m!879147))

(declare-fun m!880427 () Bool)

(assert (=> bm!40949 m!880427))

(assert (=> b!611286 d!215602))

(assert (=> b!611286 d!215260))

(assert (=> b!611286 d!215284))

(declare-fun bs!71646 () Bool)

(declare-fun d!215630 () Bool)

(assert (= bs!71646 (and d!215630 d!215546)))

(declare-fun lambda!16196 () Int)

(assert (=> bs!71646 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16196 lambda!16189))))

(declare-fun bs!71648 () Bool)

(assert (= bs!71648 (and d!215630 d!215030)))

(assert (=> bs!71648 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16196 lambda!16172))))

(declare-fun bs!71649 () Bool)

(assert (= bs!71649 (and d!215630 d!215514)))

(assert (=> bs!71649 (= lambda!16196 lambda!16182)))

(declare-fun bs!71651 () Bool)

(assert (= bs!71651 (and d!215630 d!215110)))

(assert (=> bs!71651 (= lambda!16196 lambda!16173)))

(declare-fun bs!71652 () Bool)

(assert (= bs!71652 (and d!215630 d!215406)))

(assert (=> bs!71652 (= (and (= (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16196 lambda!16178))))

(assert (=> d!215630 true))

(assert (=> d!215630 (< (dynLambda!3553 order!4881 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (dynLambda!3552 order!4879 lambda!16196))))

(assert (=> d!215630 true))

(assert (=> d!215630 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (dynLambda!3552 order!4879 lambda!16196))))

(assert (=> d!215630 (= (semiInverseModEq!492 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (Forall!307 lambda!16196))))

(declare-fun bs!71653 () Bool)

(assert (= bs!71653 d!215630))

(declare-fun m!880431 () Bool)

(assert (=> bs!71653 m!880431))

(assert (=> d!215188 d!215630))

(assert (=> b!610928 d!215580))

(declare-fun b!612166 () Bool)

(declare-fun e!371002 () Option!1576)

(declare-fun call!40956 () Option!1576)

(assert (=> b!612166 (= e!371002 call!40956)))

(declare-fun b!612167 () Bool)

(declare-fun res!266060 () Bool)

(declare-fun e!371000 () Bool)

(assert (=> b!612167 (=> (not res!266060) (not e!371000))))

(declare-fun lt!262112 () Option!1576)

(assert (=> b!612167 (= res!266060 (matchR!662 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!262112)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262112))))))))

(declare-fun b!612168 () Bool)

(declare-fun e!371001 () Bool)

(assert (=> b!612168 (= e!371001 e!371000)))

(declare-fun res!266058 () Bool)

(assert (=> b!612168 (=> (not res!266058) (not e!371000))))

(assert (=> b!612168 (= res!266058 (isDefined!1387 lt!262112))))

(declare-fun bm!40951 () Bool)

(assert (=> bm!40951 (= call!40956 (maxPrefixOneRule!472 thiss!22590 (h!11516 (t!80906 rules!3103)) lt!261534))))

(declare-fun d!215634 () Bool)

(assert (=> d!215634 e!371001))

(declare-fun res!266057 () Bool)

(assert (=> d!215634 (=> res!266057 e!371001)))

(assert (=> d!215634 (= res!266057 (isEmpty!4415 lt!262112))))

(assert (=> d!215634 (= lt!262112 e!371002)))

(declare-fun c!113199 () Bool)

(assert (=> d!215634 (= c!113199 (and ((_ is Cons!6115) (t!80906 rules!3103)) ((_ is Nil!6115) (t!80906 (t!80906 rules!3103)))))))

(declare-fun lt!262115 () Unit!11182)

(declare-fun lt!262116 () Unit!11182)

(assert (=> d!215634 (= lt!262115 lt!262116)))

(assert (=> d!215634 (isPrefix!853 lt!261534 lt!261534)))

(assert (=> d!215634 (= lt!262116 (lemmaIsPrefixRefl!589 lt!261534 lt!261534))))

(assert (=> d!215634 (rulesValidInductive!461 thiss!22590 (t!80906 rules!3103))))

(assert (=> d!215634 (= (maxPrefix!809 thiss!22590 (t!80906 rules!3103) lt!261534) lt!262112)))

(declare-fun b!612169 () Bool)

(declare-fun res!266059 () Bool)

(assert (=> b!612169 (=> (not res!266059) (not e!371000))))

(assert (=> b!612169 (= res!266059 (= (value!39779 (_1!3755 (get!2352 lt!262112))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!262112)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!262112)))))))))

(declare-fun b!612170 () Bool)

(declare-fun lt!262114 () Option!1576)

(declare-fun lt!262113 () Option!1576)

(assert (=> b!612170 (= e!371002 (ite (and ((_ is None!1575) lt!262114) ((_ is None!1575) lt!262113)) None!1575 (ite ((_ is None!1575) lt!262113) lt!262114 (ite ((_ is None!1575) lt!262114) lt!262113 (ite (>= (size!4807 (_1!3755 (v!16484 lt!262114))) (size!4807 (_1!3755 (v!16484 lt!262113)))) lt!262114 lt!262113)))))))

(assert (=> b!612170 (= lt!262114 call!40956)))

(assert (=> b!612170 (= lt!262113 (maxPrefix!809 thiss!22590 (t!80906 (t!80906 rules!3103)) lt!261534))))

(declare-fun b!612171 () Bool)

(declare-fun res!266056 () Bool)

(assert (=> b!612171 (=> (not res!266056) (not e!371000))))

(assert (=> b!612171 (= res!266056 (< (size!4808 (_2!3755 (get!2352 lt!262112))) (size!4808 lt!261534)))))

(declare-fun b!612172 () Bool)

(declare-fun res!266062 () Bool)

(assert (=> b!612172 (=> (not res!266062) (not e!371000))))

(assert (=> b!612172 (= res!266062 (= (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262112)))) (originalCharacters!1264 (_1!3755 (get!2352 lt!262112)))))))

(declare-fun b!612173 () Bool)

(assert (=> b!612173 (= e!371000 (contains!1441 (t!80906 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!262112)))))))

(declare-fun b!612174 () Bool)

(declare-fun res!266061 () Bool)

(assert (=> b!612174 (=> (not res!266061) (not e!371000))))

(assert (=> b!612174 (= res!266061 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262112)))) (_2!3755 (get!2352 lt!262112))) lt!261534))))

(assert (= (and d!215634 c!113199) b!612166))

(assert (= (and d!215634 (not c!113199)) b!612170))

(assert (= (or b!612166 b!612170) bm!40951))

(assert (= (and d!215634 (not res!266057)) b!612168))

(assert (= (and b!612168 res!266058) b!612172))

(assert (= (and b!612172 res!266062) b!612171))

(assert (= (and b!612171 res!266056) b!612174))

(assert (= (and b!612174 res!266061) b!612169))

(assert (= (and b!612169 res!266059) b!612167))

(assert (= (and b!612167 res!266060) b!612173))

(declare-fun m!880443 () Bool)

(assert (=> d!215634 m!880443))

(assert (=> d!215634 m!879281))

(assert (=> d!215634 m!879283))

(assert (=> d!215634 m!879697))

(declare-fun m!880445 () Bool)

(assert (=> bm!40951 m!880445))

(declare-fun m!880447 () Bool)

(assert (=> b!612171 m!880447))

(declare-fun m!880449 () Bool)

(assert (=> b!612171 m!880449))

(assert (=> b!612171 m!878865))

(assert (=> b!612174 m!880447))

(declare-fun m!880451 () Bool)

(assert (=> b!612174 m!880451))

(assert (=> b!612174 m!880451))

(declare-fun m!880453 () Bool)

(assert (=> b!612174 m!880453))

(assert (=> b!612174 m!880453))

(declare-fun m!880455 () Bool)

(assert (=> b!612174 m!880455))

(assert (=> b!612172 m!880447))

(assert (=> b!612172 m!880451))

(assert (=> b!612172 m!880451))

(assert (=> b!612172 m!880453))

(assert (=> b!612169 m!880447))

(declare-fun m!880457 () Bool)

(assert (=> b!612169 m!880457))

(assert (=> b!612169 m!880457))

(declare-fun m!880459 () Bool)

(assert (=> b!612169 m!880459))

(assert (=> b!612167 m!880447))

(assert (=> b!612167 m!880451))

(assert (=> b!612167 m!880451))

(assert (=> b!612167 m!880453))

(assert (=> b!612167 m!880453))

(declare-fun m!880461 () Bool)

(assert (=> b!612167 m!880461))

(declare-fun m!880463 () Bool)

(assert (=> b!612168 m!880463))

(assert (=> b!612173 m!880447))

(declare-fun m!880465 () Bool)

(assert (=> b!612173 m!880465))

(declare-fun m!880467 () Bool)

(assert (=> b!612170 m!880467))

(assert (=> b!611397 d!215634))

(assert (=> d!215192 d!215166))

(declare-fun d!215638 () Bool)

(assert (=> d!215638 (ruleValid!423 thiss!22590 (rule!2015 token!491))))

(assert (=> d!215638 true))

(declare-fun _$65!893 () Unit!11182)

(assert (=> d!215638 (= (choose!4499 thiss!22590 (rule!2015 token!491) rules!3103) _$65!893)))

(declare-fun bs!71654 () Bool)

(assert (= bs!71654 d!215638))

(assert (=> bs!71654 m!878641))

(assert (=> d!215192 d!215638))

(assert (=> d!215192 d!214988))

(declare-fun d!215640 () Bool)

(assert (=> d!215640 (= (isEmpty!4415 lt!261554) (not ((_ is Some!1575) lt!261554)))))

(assert (=> d!214978 d!215640))

(declare-fun d!215642 () Bool)

(declare-fun c!113208 () Bool)

(assert (=> d!215642 (= c!113208 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun e!371013 () Bool)

(assert (=> d!215642 (= (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))) e!371013)))

(declare-fun b!612197 () Bool)

(declare-fun inv!7786 (Conc!1942) Bool)

(assert (=> b!612197 (= e!371013 (inv!7786 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))))))

(declare-fun b!612198 () Bool)

(declare-fun e!371014 () Bool)

(assert (=> b!612198 (= e!371013 e!371014)))

(declare-fun res!266065 () Bool)

(assert (=> b!612198 (= res!266065 (not ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))))))))

(assert (=> b!612198 (=> res!266065 e!371014)))

(declare-fun b!612199 () Bool)

(declare-fun inv!7787 (Conc!1942) Bool)

(assert (=> b!612199 (= e!371014 (inv!7787 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))))))

(assert (= (and d!215642 c!113208) b!612197))

(assert (= (and d!215642 (not c!113208)) b!612198))

(assert (= (and b!612198 (not res!266065)) b!612199))

(declare-fun m!880469 () Bool)

(assert (=> b!612197 m!880469))

(declare-fun m!880471 () Bool)

(assert (=> b!612199 m!880471))

(assert (=> b!611310 d!215642))

(assert (=> d!215176 d!214992))

(declare-fun b!612207 () Bool)

(declare-fun e!371019 () Bool)

(declare-fun lt!262119 () List!6124)

(assert (=> b!612207 (= e!371019 (or (not (= (_2!3755 (get!2352 lt!261605)) Nil!6114)) (= lt!262119 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605)))))))))

(declare-fun b!612205 () Bool)

(declare-fun e!371020 () List!6124)

(assert (=> b!612205 (= e!371020 (Cons!6114 (h!11515 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))) (++!1713 (t!80905 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))) (_2!3755 (get!2352 lt!261605)))))))

(declare-fun b!612206 () Bool)

(declare-fun res!266066 () Bool)

(assert (=> b!612206 (=> (not res!266066) (not e!371019))))

(assert (=> b!612206 (= res!266066 (= (size!4808 lt!262119) (+ (size!4808 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))) (size!4808 (_2!3755 (get!2352 lt!261605))))))))

(declare-fun b!612204 () Bool)

(assert (=> b!612204 (= e!371020 (_2!3755 (get!2352 lt!261605)))))

(declare-fun d!215644 () Bool)

(assert (=> d!215644 e!371019))

(declare-fun res!266067 () Bool)

(assert (=> d!215644 (=> (not res!266067) (not e!371019))))

(assert (=> d!215644 (= res!266067 (= (content!1117 lt!262119) ((_ map or) (content!1117 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))) (content!1117 (_2!3755 (get!2352 lt!261605))))))))

(assert (=> d!215644 (= lt!262119 e!371020)))

(declare-fun c!113213 () Bool)

(assert (=> d!215644 (= c!113213 ((_ is Nil!6114) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605))))))))

(assert (=> d!215644 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261605)))) (_2!3755 (get!2352 lt!261605))) lt!262119)))

(assert (= (and d!215644 c!113213) b!612204))

(assert (= (and d!215644 (not c!113213)) b!612205))

(assert (= (and d!215644 res!266067) b!612206))

(assert (= (and b!612206 res!266066) b!612207))

(declare-fun m!880473 () Bool)

(assert (=> b!612205 m!880473))

(declare-fun m!880475 () Bool)

(assert (=> b!612206 m!880475))

(assert (=> b!612206 m!878821))

(declare-fun m!880477 () Bool)

(assert (=> b!612206 m!880477))

(assert (=> b!612206 m!878841))

(declare-fun m!880479 () Bool)

(assert (=> d!215644 m!880479))

(assert (=> d!215644 m!878821))

(declare-fun m!880481 () Bool)

(assert (=> d!215644 m!880481))

(declare-fun m!880483 () Bool)

(assert (=> d!215644 m!880483))

(assert (=> b!611057 d!215644))

(assert (=> b!611057 d!215384))

(assert (=> b!611057 d!215386))

(assert (=> b!611057 d!215388))

(declare-fun d!215646 () Bool)

(assert (=> d!215646 (= (list!2572 lt!261678) (list!2574 (c!112918 lt!261678)))))

(declare-fun bs!71655 () Bool)

(assert (= bs!71655 d!215646))

(declare-fun m!880485 () Bool)

(assert (=> bs!71655 m!880485))

(assert (=> d!215136 d!215646))

(declare-fun d!215648 () Bool)

(assert (=> d!215648 (= (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))) (isBalanced!534 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))))

(declare-fun bs!71656 () Bool)

(assert (= bs!71656 d!215648))

(declare-fun m!880487 () Bool)

(assert (=> bs!71656 m!880487))

(assert (=> tb!53339 d!215648))

(declare-fun d!215650 () Bool)

(declare-fun e!371027 () Bool)

(assert (=> d!215650 e!371027))

(declare-fun c!113215 () Bool)

(assert (=> d!215650 (= c!113215 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))))))

(declare-fun lt!262120 () Bool)

(declare-fun e!371021 () Bool)

(assert (=> d!215650 (= lt!262120 e!371021)))

(declare-fun c!113216 () Bool)

(assert (=> d!215650 (= c!113216 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))))))

(assert (=> d!215650 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))))

(assert (=> d!215650 (= (matchR!662 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))) lt!262120)))

(declare-fun b!612208 () Bool)

(declare-fun e!371024 () Bool)

(assert (=> b!612208 (= e!371027 e!371024)))

(declare-fun c!113214 () Bool)

(assert (=> b!612208 (= c!113214 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))))))

(declare-fun b!612209 () Bool)

(declare-fun e!371025 () Bool)

(declare-fun e!371023 () Bool)

(assert (=> b!612209 (= e!371025 e!371023)))

(declare-fun res!266074 () Bool)

(assert (=> b!612209 (=> res!266074 e!371023)))

(declare-fun call!40965 () Bool)

(assert (=> b!612209 (= res!266074 call!40965)))

(declare-fun b!612210 () Bool)

(assert (=> b!612210 (= e!371027 (= lt!262120 call!40965))))

(declare-fun b!612211 () Bool)

(declare-fun res!266075 () Bool)

(declare-fun e!371026 () Bool)

(assert (=> b!612211 (=> res!266075 e!371026)))

(assert (=> b!612211 (= res!266075 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))))))

(assert (=> b!612211 (= e!371024 e!371026)))

(declare-fun b!612212 () Bool)

(declare-fun res!266072 () Bool)

(declare-fun e!371022 () Bool)

(assert (=> b!612212 (=> (not res!266072) (not e!371022))))

(assert (=> b!612212 (= res!266072 (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))))))))

(declare-fun b!612213 () Bool)

(declare-fun res!266073 () Bool)

(assert (=> b!612213 (=> res!266073 e!371023)))

(assert (=> b!612213 (= res!266073 (not (isEmpty!4413 (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))))))))

(declare-fun b!612214 () Bool)

(declare-fun res!266070 () Bool)

(assert (=> b!612214 (=> res!266070 e!371026)))

(assert (=> b!612214 (= res!266070 e!371022)))

(declare-fun res!266069 () Bool)

(assert (=> b!612214 (=> (not res!266069) (not e!371022))))

(assert (=> b!612214 (= res!266069 lt!262120)))

(declare-fun b!612215 () Bool)

(declare-fun res!266071 () Bool)

(assert (=> b!612215 (=> (not res!266071) (not e!371022))))

(assert (=> b!612215 (= res!266071 (not call!40965))))

(declare-fun b!612216 () Bool)

(assert (=> b!612216 (= e!371022 (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))))))

(declare-fun b!612217 () Bool)

(assert (=> b!612217 (= e!371026 e!371025)))

(declare-fun res!266068 () Bool)

(assert (=> b!612217 (=> (not res!266068) (not e!371025))))

(assert (=> b!612217 (= res!266068 (not lt!262120))))

(declare-fun b!612218 () Bool)

(assert (=> b!612218 (= e!371024 (not lt!262120))))

(declare-fun b!612219 () Bool)

(assert (=> b!612219 (= e!371021 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))) (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))))) (tail!821 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736)))))))))

(declare-fun bm!40960 () Bool)

(assert (=> bm!40960 (= call!40965 (isEmpty!4413 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))))))

(declare-fun b!612220 () Bool)

(assert (=> b!612220 (= e!371021 (nullable!451 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))))))

(declare-fun b!612221 () Bool)

(assert (=> b!612221 (= e!371023 (not (= (head!1292 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!261736))))) (c!112917 (regex!1225 (rule!2015 (_1!3755 (get!2352 lt!261736))))))))))

(assert (= (and d!215650 c!113216) b!612220))

(assert (= (and d!215650 (not c!113216)) b!612219))

(assert (= (and d!215650 c!113215) b!612210))

(assert (= (and d!215650 (not c!113215)) b!612208))

(assert (= (and b!612208 c!113214) b!612218))

(assert (= (and b!612208 (not c!113214)) b!612211))

(assert (= (and b!612211 (not res!266075)) b!612214))

(assert (= (and b!612214 res!266069) b!612215))

(assert (= (and b!612215 res!266071) b!612212))

(assert (= (and b!612212 res!266072) b!612216))

(assert (= (and b!612214 (not res!266070)) b!612217))

(assert (= (and b!612217 res!266068) b!612209))

(assert (= (and b!612209 (not res!266074)) b!612213))

(assert (= (and b!612213 (not res!266073)) b!612221))

(assert (= (or b!612210 b!612209 b!612215) bm!40960))

(assert (=> bm!40960 m!879293))

(declare-fun m!880489 () Bool)

(assert (=> bm!40960 m!880489))

(assert (=> b!612216 m!879293))

(declare-fun m!880491 () Bool)

(assert (=> b!612216 m!880491))

(assert (=> b!612212 m!879293))

(declare-fun m!880493 () Bool)

(assert (=> b!612212 m!880493))

(assert (=> b!612212 m!880493))

(declare-fun m!880495 () Bool)

(assert (=> b!612212 m!880495))

(assert (=> b!612219 m!879293))

(assert (=> b!612219 m!880491))

(assert (=> b!612219 m!880491))

(declare-fun m!880497 () Bool)

(assert (=> b!612219 m!880497))

(assert (=> b!612219 m!879293))

(assert (=> b!612219 m!880493))

(assert (=> b!612219 m!880497))

(assert (=> b!612219 m!880493))

(declare-fun m!880499 () Bool)

(assert (=> b!612219 m!880499))

(assert (=> b!612213 m!879293))

(assert (=> b!612213 m!880493))

(assert (=> b!612213 m!880493))

(assert (=> b!612213 m!880495))

(declare-fun m!880501 () Bool)

(assert (=> b!612220 m!880501))

(assert (=> b!612221 m!879293))

(assert (=> b!612221 m!880491))

(assert (=> d!215650 m!879293))

(assert (=> d!215650 m!880489))

(declare-fun m!880503 () Bool)

(assert (=> d!215650 m!880503))

(assert (=> b!611394 d!215650))

(assert (=> b!611394 d!215270))

(assert (=> b!611394 d!215266))

(assert (=> b!611394 d!215268))

(declare-fun d!215652 () Bool)

(declare-fun e!371034 () Bool)

(assert (=> d!215652 e!371034))

(declare-fun c!113218 () Bool)

(assert (=> d!215652 (= c!113218 ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun lt!262121 () Bool)

(declare-fun e!371028 () Bool)

(assert (=> d!215652 (= lt!262121 e!371028)))

(declare-fun c!113219 () Bool)

(assert (=> d!215652 (= c!113219 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(assert (=> d!215652 (validRegex!546 (regex!1225 (rule!2015 token!491)))))

(assert (=> d!215652 (= (matchR!662 (regex!1225 (rule!2015 token!491)) (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))) lt!262121)))

(declare-fun b!612222 () Bool)

(declare-fun e!371031 () Bool)

(assert (=> b!612222 (= e!371034 e!371031)))

(declare-fun c!113217 () Bool)

(assert (=> b!612222 (= c!113217 ((_ is EmptyLang!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun b!612223 () Bool)

(declare-fun e!371032 () Bool)

(declare-fun e!371030 () Bool)

(assert (=> b!612223 (= e!371032 e!371030)))

(declare-fun res!266082 () Bool)

(assert (=> b!612223 (=> res!266082 e!371030)))

(declare-fun call!40966 () Bool)

(assert (=> b!612223 (= res!266082 call!40966)))

(declare-fun b!612224 () Bool)

(assert (=> b!612224 (= e!371034 (= lt!262121 call!40966))))

(declare-fun b!612225 () Bool)

(declare-fun res!266083 () Bool)

(declare-fun e!371033 () Bool)

(assert (=> b!612225 (=> res!266083 e!371033)))

(assert (=> b!612225 (= res!266083 (not ((_ is ElementMatch!1559) (regex!1225 (rule!2015 token!491)))))))

(assert (=> b!612225 (= e!371031 e!371033)))

(declare-fun b!612226 () Bool)

(declare-fun res!266080 () Bool)

(declare-fun e!371029 () Bool)

(assert (=> b!612226 (=> (not res!266080) (not e!371029))))

(assert (=> b!612226 (= res!266080 (isEmpty!4413 (tail!821 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534))))))))

(declare-fun b!612227 () Bool)

(declare-fun res!266081 () Bool)

(assert (=> b!612227 (=> res!266081 e!371030)))

(assert (=> b!612227 (= res!266081 (not (isEmpty!4413 (tail!821 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))))

(declare-fun b!612228 () Bool)

(declare-fun res!266078 () Bool)

(assert (=> b!612228 (=> res!266078 e!371033)))

(assert (=> b!612228 (= res!266078 e!371029)))

(declare-fun res!266077 () Bool)

(assert (=> b!612228 (=> (not res!266077) (not e!371029))))

(assert (=> b!612228 (= res!266077 lt!262121)))

(declare-fun b!612229 () Bool)

(declare-fun res!266079 () Bool)

(assert (=> b!612229 (=> (not res!266079) (not e!371029))))

(assert (=> b!612229 (= res!266079 (not call!40966))))

(declare-fun b!612230 () Bool)

(assert (=> b!612230 (= e!371029 (= (head!1292 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))) (c!112917 (regex!1225 (rule!2015 token!491)))))))

(declare-fun b!612231 () Bool)

(assert (=> b!612231 (= e!371033 e!371032)))

(declare-fun res!266076 () Bool)

(assert (=> b!612231 (=> (not res!266076) (not e!371032))))

(assert (=> b!612231 (= res!266076 (not lt!262121))))

(declare-fun b!612232 () Bool)

(assert (=> b!612232 (= e!371031 (not lt!262121))))

(declare-fun b!612233 () Bool)

(assert (=> b!612233 (= e!371028 (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534))))) (tail!821 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534))))))))

(declare-fun bm!40961 () Bool)

(assert (=> bm!40961 (= call!40966 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))))))

(declare-fun b!612234 () Bool)

(assert (=> b!612234 (= e!371028 (nullable!451 (regex!1225 (rule!2015 token!491))))))

(declare-fun b!612235 () Bool)

(assert (=> b!612235 (= e!371030 (not (= (head!1292 (_1!3756 (findLongestMatchInner!209 (regex!1225 (rule!2015 token!491)) Nil!6114 (size!4808 Nil!6114) lt!261534 lt!261534 (size!4808 lt!261534)))) (c!112917 (regex!1225 (rule!2015 token!491))))))))

(assert (= (and d!215652 c!113219) b!612234))

(assert (= (and d!215652 (not c!113219)) b!612233))

(assert (= (and d!215652 c!113218) b!612224))

(assert (= (and d!215652 (not c!113218)) b!612222))

(assert (= (and b!612222 c!113217) b!612232))

(assert (= (and b!612222 (not c!113217)) b!612225))

(assert (= (and b!612225 (not res!266083)) b!612228))

(assert (= (and b!612228 res!266077) b!612229))

(assert (= (and b!612229 res!266079) b!612226))

(assert (= (and b!612226 res!266080) b!612230))

(assert (= (and b!612228 (not res!266078)) b!612231))

(assert (= (and b!612231 res!266076) b!612223))

(assert (= (and b!612223 (not res!266082)) b!612227))

(assert (= (and b!612227 (not res!266081)) b!612235))

(assert (= (or b!612224 b!612223 b!612229) bm!40961))

(assert (=> bm!40961 m!879051))

(declare-fun m!880505 () Bool)

(assert (=> b!612230 m!880505))

(declare-fun m!880507 () Bool)

(assert (=> b!612226 m!880507))

(assert (=> b!612226 m!880507))

(declare-fun m!880509 () Bool)

(assert (=> b!612226 m!880509))

(assert (=> b!612233 m!880505))

(assert (=> b!612233 m!880505))

(declare-fun m!880511 () Bool)

(assert (=> b!612233 m!880511))

(assert (=> b!612233 m!880507))

(assert (=> b!612233 m!880511))

(assert (=> b!612233 m!880507))

(declare-fun m!880513 () Bool)

(assert (=> b!612233 m!880513))

(assert (=> b!612227 m!880507))

(assert (=> b!612227 m!880507))

(assert (=> b!612227 m!880509))

(assert (=> b!612234 m!879189))

(assert (=> b!612235 m!880505))

(assert (=> d!215652 m!879051))

(assert (=> d!215652 m!879187))

(assert (=> b!611175 d!215652))

(assert (=> b!611175 d!215404))

(assert (=> b!611175 d!215314))

(assert (=> b!611175 d!215410))

(declare-fun d!215654 () Bool)

(declare-fun lt!262122 () Int)

(assert (=> d!215654 (>= lt!262122 0)))

(declare-fun e!371035 () Int)

(assert (=> d!215654 (= lt!262122 e!371035)))

(declare-fun c!113220 () Bool)

(assert (=> d!215654 (= c!113220 ((_ is Nil!6114) (t!80905 (originalCharacters!1264 token!491))))))

(assert (=> d!215654 (= (size!4808 (t!80905 (originalCharacters!1264 token!491))) lt!262122)))

(declare-fun b!612236 () Bool)

(assert (=> b!612236 (= e!371035 0)))

(declare-fun b!612237 () Bool)

(assert (=> b!612237 (= e!371035 (+ 1 (size!4808 (t!80905 (t!80905 (originalCharacters!1264 token!491))))))))

(assert (= (and d!215654 c!113220) b!612236))

(assert (= (and d!215654 (not c!113220)) b!612237))

(declare-fun m!880515 () Bool)

(assert (=> b!612237 m!880515))

(assert (=> b!611002 d!215654))

(assert (=> b!610950 d!215374))

(declare-fun d!215656 () Bool)

(assert (=> d!215656 (= (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261565))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261565))))))))

(declare-fun b_lambda!24305 () Bool)

(assert (=> (not b_lambda!24305) (not d!215656)))

(declare-fun tb!53479 () Bool)

(declare-fun t!81080 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81080) tb!53479))

(declare-fun result!60218 () Bool)

(assert (=> tb!53479 (= result!60218 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261565)))))))))

(declare-fun m!880517 () Bool)

(assert (=> tb!53479 m!880517))

(assert (=> d!215656 t!81080))

(declare-fun b_and!60655 () Bool)

(assert (= b_and!60647 (and (=> t!81080 result!60218) b_and!60655)))

(declare-fun tb!53481 () Bool)

(declare-fun t!81082 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81082) tb!53481))

(declare-fun result!60220 () Bool)

(assert (= result!60220 result!60218))

(assert (=> d!215656 t!81082))

(declare-fun b_and!60657 () Bool)

(assert (= b_and!60651 (and (=> t!81082 result!60220) b_and!60657)))

(declare-fun tb!53483 () Bool)

(declare-fun t!81084 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81084) tb!53483))

(declare-fun result!60222 () Bool)

(assert (= result!60222 result!60218))

(assert (=> d!215656 t!81084))

(declare-fun b_and!60659 () Bool)

(assert (= b_and!60653 (and (=> t!81084 result!60222) b_and!60659)))

(assert (=> d!215656 m!878721))

(declare-fun m!880519 () Bool)

(assert (=> d!215656 m!880519))

(assert (=> b!610950 d!215656))

(declare-fun d!215658 () Bool)

(assert (=> d!215658 (= (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261565)))) (fromListB!620 (originalCharacters!1264 (_1!3755 (get!2352 lt!261565)))))))

(declare-fun bs!71657 () Bool)

(assert (= bs!71657 d!215658))

(declare-fun m!880521 () Bool)

(assert (=> bs!71657 m!880521))

(assert (=> b!610950 d!215658))

(declare-fun bs!71658 () Bool)

(declare-fun d!215660 () Bool)

(assert (= bs!71658 (and d!215660 d!215546)))

(declare-fun lambda!16198 () Int)

(assert (=> bs!71658 (= (and (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16198 lambda!16189))))

(declare-fun bs!71659 () Bool)

(assert (= bs!71659 (and d!215660 d!215030)))

(assert (=> bs!71659 (= (and (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16198 lambda!16172))))

(declare-fun bs!71660 () Bool)

(assert (= bs!71660 (and d!215660 d!215514)))

(assert (=> bs!71660 (= (and (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (= lambda!16198 lambda!16182))))

(declare-fun bs!71661 () Bool)

(assert (= bs!71661 (and d!215660 d!215110)))

(assert (=> bs!71661 (= (and (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (= lambda!16198 lambda!16173))))

(declare-fun bs!71662 () Bool)

(assert (= bs!71662 (and d!215660 d!215630)))

(assert (=> bs!71662 (= (and (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (= lambda!16198 lambda!16196))))

(declare-fun bs!71663 () Bool)

(assert (= bs!71663 (and d!215660 d!215406)))

(assert (=> bs!71663 (= (and (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (= lambda!16198 lambda!16178))))

(assert (=> d!215660 true))

(assert (=> d!215660 (< (dynLambda!3553 order!4881 (toChars!1991 (transformation!1225 (h!11516 rules!3103)))) (dynLambda!3552 order!4879 lambda!16198))))

(assert (=> d!215660 true))

(assert (=> d!215660 (< (dynLambda!3551 order!4877 (toValue!2132 (transformation!1225 (h!11516 rules!3103)))) (dynLambda!3552 order!4879 lambda!16198))))

(assert (=> d!215660 (= (semiInverseModEq!492 (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (h!11516 rules!3103)))) (Forall!307 lambda!16198))))

(declare-fun bs!71664 () Bool)

(assert (= bs!71664 d!215660))

(declare-fun m!880537 () Bool)

(assert (=> bs!71664 m!880537))

(assert (=> d!215128 d!215660))

(declare-fun d!215668 () Bool)

(declare-fun e!371050 () Bool)

(assert (=> d!215668 e!371050))

(declare-fun c!113229 () Bool)

(assert (=> d!215668 (= c!113229 ((_ is EmptyExpr!1559) (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705))))))

(declare-fun lt!262126 () Bool)

(declare-fun e!371044 () Bool)

(assert (=> d!215668 (= lt!262126 e!371044)))

(declare-fun c!113230 () Bool)

(assert (=> d!215668 (= c!113230 (isEmpty!4413 (tail!821 input!2705)))))

(assert (=> d!215668 (validRegex!546 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705)))))

(assert (=> d!215668 (= (matchR!662 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705)) (tail!821 input!2705)) lt!262126)))

(declare-fun b!612252 () Bool)

(declare-fun e!371047 () Bool)

(assert (=> b!612252 (= e!371050 e!371047)))

(declare-fun c!113228 () Bool)

(assert (=> b!612252 (= c!113228 ((_ is EmptyLang!1559) (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705))))))

(declare-fun b!612253 () Bool)

(declare-fun e!371048 () Bool)

(declare-fun e!371046 () Bool)

(assert (=> b!612253 (= e!371048 e!371046)))

(declare-fun res!266090 () Bool)

(assert (=> b!612253 (=> res!266090 e!371046)))

(declare-fun call!40971 () Bool)

(assert (=> b!612253 (= res!266090 call!40971)))

(declare-fun b!612254 () Bool)

(assert (=> b!612254 (= e!371050 (= lt!262126 call!40971))))

(declare-fun b!612255 () Bool)

(declare-fun res!266091 () Bool)

(declare-fun e!371049 () Bool)

(assert (=> b!612255 (=> res!266091 e!371049)))

(assert (=> b!612255 (= res!266091 (not ((_ is ElementMatch!1559) (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705)))))))

(assert (=> b!612255 (= e!371047 e!371049)))

(declare-fun b!612256 () Bool)

(declare-fun res!266088 () Bool)

(declare-fun e!371045 () Bool)

(assert (=> b!612256 (=> (not res!266088) (not e!371045))))

(assert (=> b!612256 (= res!266088 (isEmpty!4413 (tail!821 (tail!821 input!2705))))))

(declare-fun b!612257 () Bool)

(declare-fun res!266089 () Bool)

(assert (=> b!612257 (=> res!266089 e!371046)))

(assert (=> b!612257 (= res!266089 (not (isEmpty!4413 (tail!821 (tail!821 input!2705)))))))

(declare-fun b!612258 () Bool)

(declare-fun res!266086 () Bool)

(assert (=> b!612258 (=> res!266086 e!371049)))

(assert (=> b!612258 (= res!266086 e!371045)))

(declare-fun res!266085 () Bool)

(assert (=> b!612258 (=> (not res!266085) (not e!371045))))

(assert (=> b!612258 (= res!266085 lt!262126)))

(declare-fun b!612259 () Bool)

(declare-fun res!266087 () Bool)

(assert (=> b!612259 (=> (not res!266087) (not e!371045))))

(assert (=> b!612259 (= res!266087 (not call!40971))))

(declare-fun b!612260 () Bool)

(assert (=> b!612260 (= e!371045 (= (head!1292 (tail!821 input!2705)) (c!112917 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705)))))))

(declare-fun b!612261 () Bool)

(assert (=> b!612261 (= e!371049 e!371048)))

(declare-fun res!266084 () Bool)

(assert (=> b!612261 (=> (not res!266084) (not e!371048))))

(assert (=> b!612261 (= res!266084 (not lt!262126))))

(declare-fun b!612262 () Bool)

(assert (=> b!612262 (= e!371047 (not lt!262126))))

(declare-fun b!612263 () Bool)

(assert (=> b!612263 (= e!371044 (matchR!662 (derivativeStep!336 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705)) (head!1292 (tail!821 input!2705))) (tail!821 (tail!821 input!2705))))))

(declare-fun bm!40966 () Bool)

(assert (=> bm!40966 (= call!40971 (isEmpty!4413 (tail!821 input!2705)))))

(declare-fun b!612264 () Bool)

(assert (=> b!612264 (= e!371044 (nullable!451 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705))))))

(declare-fun b!612265 () Bool)

(assert (=> b!612265 (= e!371046 (not (= (head!1292 (tail!821 input!2705)) (c!112917 (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705))))))))

(assert (= (and d!215668 c!113230) b!612264))

(assert (= (and d!215668 (not c!113230)) b!612263))

(assert (= (and d!215668 c!113229) b!612254))

(assert (= (and d!215668 (not c!113229)) b!612252))

(assert (= (and b!612252 c!113228) b!612262))

(assert (= (and b!612252 (not c!113228)) b!612255))

(assert (= (and b!612255 (not res!266091)) b!612258))

(assert (= (and b!612258 res!266085) b!612259))

(assert (= (and b!612259 res!266087) b!612256))

(assert (= (and b!612256 res!266088) b!612260))

(assert (= (and b!612258 (not res!266086)) b!612261))

(assert (= (and b!612261 res!266084) b!612253))

(assert (= (and b!612253 (not res!266090)) b!612257))

(assert (= (and b!612257 (not res!266089)) b!612265))

(assert (= (or b!612254 b!612253 b!612259) bm!40966))

(assert (=> bm!40966 m!879149))

(assert (=> bm!40966 m!879151))

(assert (=> b!612260 m!879149))

(assert (=> b!612260 m!879753))

(assert (=> b!612256 m!879149))

(assert (=> b!612256 m!879555))

(assert (=> b!612256 m!879555))

(assert (=> b!612256 m!880371))

(assert (=> b!612263 m!879149))

(assert (=> b!612263 m!879753))

(assert (=> b!612263 m!879269))

(assert (=> b!612263 m!879753))

(declare-fun m!880539 () Bool)

(assert (=> b!612263 m!880539))

(assert (=> b!612263 m!879149))

(assert (=> b!612263 m!879555))

(assert (=> b!612263 m!880539))

(assert (=> b!612263 m!879555))

(declare-fun m!880541 () Bool)

(assert (=> b!612263 m!880541))

(assert (=> b!612257 m!879149))

(assert (=> b!612257 m!879555))

(assert (=> b!612257 m!879555))

(assert (=> b!612257 m!880371))

(assert (=> b!612264 m!879269))

(declare-fun m!880543 () Bool)

(assert (=> b!612264 m!880543))

(assert (=> b!612265 m!879149))

(assert (=> b!612265 m!879753))

(assert (=> d!215668 m!879149))

(assert (=> d!215668 m!879151))

(assert (=> d!215668 m!879269))

(declare-fun m!880545 () Bool)

(assert (=> d!215668 m!880545))

(assert (=> b!611388 d!215668))

(declare-fun d!215670 () Bool)

(declare-fun lt!262127 () Regex!1559)

(assert (=> d!215670 (validRegex!546 lt!262127)))

(declare-fun e!371052 () Regex!1559)

(assert (=> d!215670 (= lt!262127 e!371052)))

(declare-fun c!113232 () Bool)

(assert (=> d!215670 (= c!113232 (or ((_ is EmptyExpr!1559) (regex!1225 (rule!2015 token!491))) ((_ is EmptyLang!1559) (regex!1225 (rule!2015 token!491)))))))

(assert (=> d!215670 (validRegex!546 (regex!1225 (rule!2015 token!491)))))

(assert (=> d!215670 (= (derivativeStep!336 (regex!1225 (rule!2015 token!491)) (head!1292 input!2705)) lt!262127)))

(declare-fun b!612266 () Bool)

(declare-fun e!371051 () Regex!1559)

(declare-fun e!371055 () Regex!1559)

(assert (=> b!612266 (= e!371051 e!371055)))

(declare-fun c!113235 () Bool)

(assert (=> b!612266 (= c!113235 ((_ is Star!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun b!612267 () Bool)

(declare-fun c!113231 () Bool)

(assert (=> b!612267 (= c!113231 (nullable!451 (regOne!3630 (regex!1225 (rule!2015 token!491)))))))

(declare-fun e!371054 () Regex!1559)

(assert (=> b!612267 (= e!371055 e!371054)))

(declare-fun b!612268 () Bool)

(declare-fun call!40975 () Regex!1559)

(declare-fun call!40974 () Regex!1559)

(assert (=> b!612268 (= e!371051 (Union!1559 call!40975 call!40974))))

(declare-fun bm!40967 () Bool)

(declare-fun call!40973 () Regex!1559)

(declare-fun call!40972 () Regex!1559)

(assert (=> bm!40967 (= call!40973 call!40972)))

(declare-fun c!113233 () Bool)

(declare-fun bm!40968 () Bool)

(assert (=> bm!40968 (= call!40975 (derivativeStep!336 (ite c!113233 (regOne!3631 (regex!1225 (rule!2015 token!491))) (ite c!113235 (reg!1888 (regex!1225 (rule!2015 token!491))) (regOne!3630 (regex!1225 (rule!2015 token!491))))) (head!1292 input!2705)))))

(declare-fun b!612269 () Bool)

(assert (=> b!612269 (= c!113233 ((_ is Union!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun e!371053 () Regex!1559)

(assert (=> b!612269 (= e!371053 e!371051)))

(declare-fun b!612270 () Bool)

(assert (=> b!612270 (= e!371055 (Concat!2808 call!40972 (regex!1225 (rule!2015 token!491))))))

(declare-fun bm!40969 () Bool)

(assert (=> bm!40969 (= call!40972 call!40975)))

(declare-fun b!612271 () Bool)

(assert (=> b!612271 (= e!371052 EmptyLang!1559)))

(declare-fun b!612272 () Bool)

(assert (=> b!612272 (= e!371054 (Union!1559 (Concat!2808 call!40973 (regTwo!3630 (regex!1225 (rule!2015 token!491)))) call!40974))))

(declare-fun b!612273 () Bool)

(assert (=> b!612273 (= e!371052 e!371053)))

(declare-fun c!113234 () Bool)

(assert (=> b!612273 (= c!113234 ((_ is ElementMatch!1559) (regex!1225 (rule!2015 token!491))))))

(declare-fun b!612274 () Bool)

(assert (=> b!612274 (= e!371053 (ite (= (head!1292 input!2705) (c!112917 (regex!1225 (rule!2015 token!491)))) EmptyExpr!1559 EmptyLang!1559))))

(declare-fun bm!40970 () Bool)

(assert (=> bm!40970 (= call!40974 (derivativeStep!336 (ite c!113233 (regTwo!3631 (regex!1225 (rule!2015 token!491))) (regTwo!3630 (regex!1225 (rule!2015 token!491)))) (head!1292 input!2705)))))

(declare-fun b!612275 () Bool)

(assert (=> b!612275 (= e!371054 (Union!1559 (Concat!2808 call!40973 (regTwo!3630 (regex!1225 (rule!2015 token!491)))) EmptyLang!1559))))

(assert (= (and d!215670 c!113232) b!612271))

(assert (= (and d!215670 (not c!113232)) b!612273))

(assert (= (and b!612273 c!113234) b!612274))

(assert (= (and b!612273 (not c!113234)) b!612269))

(assert (= (and b!612269 c!113233) b!612268))

(assert (= (and b!612269 (not c!113233)) b!612266))

(assert (= (and b!612266 c!113235) b!612270))

(assert (= (and b!612266 (not c!113235)) b!612267))

(assert (= (and b!612267 c!113231) b!612272))

(assert (= (and b!612267 (not c!113231)) b!612275))

(assert (= (or b!612272 b!612275) bm!40967))

(assert (= (or b!612270 bm!40967) bm!40969))

(assert (= (or b!612268 b!612272) bm!40970))

(assert (= (or b!612268 bm!40969) bm!40968))

(declare-fun m!880547 () Bool)

(assert (=> d!215670 m!880547))

(assert (=> d!215670 m!879187))

(declare-fun m!880549 () Bool)

(assert (=> b!612267 m!880549))

(assert (=> bm!40968 m!879147))

(declare-fun m!880551 () Bool)

(assert (=> bm!40968 m!880551))

(assert (=> bm!40970 m!879147))

(declare-fun m!880553 () Bool)

(assert (=> bm!40970 m!880553))

(assert (=> b!611388 d!215670))

(assert (=> b!611388 d!215260))

(assert (=> b!611388 d!215284))

(assert (=> b!611330 d!215468))

(assert (=> b!611330 d!215182))

(assert (=> b!611061 d!215388))

(declare-fun d!215672 () Bool)

(assert (=> d!215672 (= (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605))))))))

(declare-fun b_lambda!24307 () Bool)

(assert (=> (not b_lambda!24307) (not d!215672)))

(declare-fun tb!53485 () Bool)

(declare-fun t!81086 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81086) tb!53485))

(declare-fun result!60224 () Bool)

(assert (=> tb!53485 (= result!60224 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605))))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605)))))))))

(declare-fun m!880555 () Bool)

(assert (=> tb!53485 m!880555))

(assert (=> d!215672 t!81086))

(declare-fun b_and!60661 () Bool)

(assert (= b_and!60655 (and (=> t!81086 result!60224) b_and!60661)))

(declare-fun t!81088 () Bool)

(declare-fun tb!53487 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81088) tb!53487))

(declare-fun result!60226 () Bool)

(assert (= result!60226 result!60224))

(assert (=> d!215672 t!81088))

(declare-fun b_and!60663 () Bool)

(assert (= b_and!60657 (and (=> t!81088 result!60226) b_and!60663)))

(declare-fun t!81090 () Bool)

(declare-fun tb!53489 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81090) tb!53489))

(declare-fun result!60228 () Bool)

(assert (= result!60228 result!60224))

(assert (=> d!215672 t!81090))

(declare-fun b_and!60665 () Bool)

(assert (= b_and!60659 (and (=> t!81090 result!60228) b_and!60665)))

(assert (=> d!215672 m!878855))

(declare-fun m!880557 () Bool)

(assert (=> d!215672 m!880557))

(assert (=> b!611061 d!215672))

(declare-fun d!215674 () Bool)

(assert (=> d!215674 (= (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605)))) (fromListB!620 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605)))))))

(declare-fun bs!71665 () Bool)

(assert (= bs!71665 d!215674))

(declare-fun m!880559 () Bool)

(assert (=> bs!71665 m!880559))

(assert (=> b!611061 d!215674))

(assert (=> b!611308 d!215262))

(declare-fun d!215676 () Bool)

(declare-fun lt!262128 () Bool)

(assert (=> d!215676 (= lt!262128 (select (content!1115 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!261565)))))))

(declare-fun e!371060 () Bool)

(assert (=> d!215676 (= lt!262128 e!371060)))

(declare-fun res!266095 () Bool)

(assert (=> d!215676 (=> (not res!266095) (not e!371060))))

(assert (=> d!215676 (= res!266095 ((_ is Cons!6115) rules!3103))))

(assert (=> d!215676 (= (contains!1441 rules!3103 (rule!2015 (_1!3755 (get!2352 lt!261565)))) lt!262128)))

(declare-fun b!612278 () Bool)

(declare-fun e!371059 () Bool)

(assert (=> b!612278 (= e!371060 e!371059)))

(declare-fun res!266094 () Bool)

(assert (=> b!612278 (=> res!266094 e!371059)))

(assert (=> b!612278 (= res!266094 (= (h!11516 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!261565)))))))

(declare-fun b!612279 () Bool)

(assert (=> b!612279 (= e!371059 (contains!1441 (t!80906 rules!3103) (rule!2015 (_1!3755 (get!2352 lt!261565)))))))

(assert (= (and d!215676 res!266095) b!612278))

(assert (= (and b!612278 (not res!266094)) b!612279))

(assert (=> d!215676 m!878753))

(declare-fun m!880561 () Bool)

(assert (=> d!215676 m!880561))

(declare-fun m!880563 () Bool)

(assert (=> b!612279 m!880563))

(assert (=> b!610954 d!215676))

(assert (=> b!610954 d!215374))

(assert (=> d!215026 d!215006))

(assert (=> d!215026 d!214974))

(declare-fun d!215678 () Bool)

(assert (=> d!215678 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 (_1!3755 (v!16484 lt!261554))) input!2705) (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (seqFromList!1401 lt!261518)) (rule!2015 (_1!3755 (v!16484 lt!261554))) (size!4808 lt!261518) lt!261518) (_2!3755 (v!16484 lt!261554)))))))

(assert (=> d!215678 true))

(declare-fun _$59!276 () Unit!11182)

(assert (=> d!215678 (= (choose!4490 thiss!22590 rules!3103 lt!261518 input!2705 (_2!3755 (v!16484 lt!261554)) (rule!2015 (_1!3755 (v!16484 lt!261554)))) _$59!276)))

(declare-fun bs!71668 () Bool)

(assert (= bs!71668 d!215678))

(assert (=> bs!71668 m!878617))

(assert (=> bs!71668 m!878649))

(assert (=> bs!71668 m!878649))

(assert (=> bs!71668 m!878861))

(assert (=> bs!71668 m!878645))

(assert (=> d!215026 d!215678))

(declare-fun d!215700 () Bool)

(assert (=> d!215700 (= (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) (seqFromList!1401 lt!261518)) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (seqFromList!1401 lt!261518)))))

(declare-fun b_lambda!24311 () Bool)

(assert (=> (not b_lambda!24311) (not d!215700)))

(declare-fun tb!53497 () Bool)

(declare-fun t!81098 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81098) tb!53497))

(declare-fun result!60236 () Bool)

(assert (=> tb!53497 (= result!60236 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (seqFromList!1401 lt!261518))))))

(declare-fun m!880609 () Bool)

(assert (=> tb!53497 m!880609))

(assert (=> d!215700 t!81098))

(declare-fun b_and!60673 () Bool)

(assert (= b_and!60661 (and (=> t!81098 result!60236) b_and!60673)))

(declare-fun t!81100 () Bool)

(declare-fun tb!53499 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81100) tb!53499))

(declare-fun result!60238 () Bool)

(assert (= result!60238 result!60236))

(assert (=> d!215700 t!81100))

(declare-fun b_and!60675 () Bool)

(assert (= b_and!60663 (and (=> t!81100 result!60238) b_and!60675)))

(declare-fun t!81102 () Bool)

(declare-fun tb!53501 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81102) tb!53501))

(declare-fun result!60240 () Bool)

(assert (= result!60240 result!60236))

(assert (=> d!215700 t!81102))

(declare-fun b_and!60677 () Bool)

(assert (= b_and!60665 (and (=> t!81102 result!60240) b_and!60677)))

(assert (=> d!215700 m!878649))

(declare-fun m!880617 () Bool)

(assert (=> d!215700 m!880617))

(assert (=> d!215026 d!215700))

(assert (=> d!215026 d!215200))

(assert (=> d!215026 d!215196))

(declare-fun d!215702 () Bool)

(assert (=> d!215702 (= (head!1292 lt!261518) (h!11515 lt!261518))))

(assert (=> b!611318 d!215702))

(declare-fun d!215704 () Bool)

(assert (=> d!215704 (= (head!1292 lt!261551) (h!11515 lt!261551))))

(assert (=> b!611318 d!215704))

(declare-fun b!612308 () Bool)

(declare-fun e!371079 () Bool)

(assert (=> b!612308 (= e!371079 (isPrefix!853 (tail!821 (tail!821 input!2705)) (tail!821 (tail!821 lt!261534))))))

(declare-fun b!612306 () Bool)

(declare-fun e!371080 () Bool)

(assert (=> b!612306 (= e!371080 e!371079)))

(declare-fun res!266115 () Bool)

(assert (=> b!612306 (=> (not res!266115) (not e!371079))))

(assert (=> b!612306 (= res!266115 (not ((_ is Nil!6114) (tail!821 lt!261534))))))

(declare-fun b!612307 () Bool)

(declare-fun res!266116 () Bool)

(assert (=> b!612307 (=> (not res!266116) (not e!371079))))

(assert (=> b!612307 (= res!266116 (= (head!1292 (tail!821 input!2705)) (head!1292 (tail!821 lt!261534))))))

(declare-fun d!215708 () Bool)

(declare-fun e!371078 () Bool)

(assert (=> d!215708 e!371078))

(declare-fun res!266113 () Bool)

(assert (=> d!215708 (=> res!266113 e!371078)))

(declare-fun lt!262139 () Bool)

(assert (=> d!215708 (= res!266113 (not lt!262139))))

(assert (=> d!215708 (= lt!262139 e!371080)))

(declare-fun res!266114 () Bool)

(assert (=> d!215708 (=> res!266114 e!371080)))

(assert (=> d!215708 (= res!266114 ((_ is Nil!6114) (tail!821 input!2705)))))

(assert (=> d!215708 (= (isPrefix!853 (tail!821 input!2705) (tail!821 lt!261534)) lt!262139)))

(declare-fun b!612309 () Bool)

(assert (=> b!612309 (= e!371078 (>= (size!4808 (tail!821 lt!261534)) (size!4808 (tail!821 input!2705))))))

(assert (= (and d!215708 (not res!266114)) b!612306))

(assert (= (and b!612306 res!266115) b!612307))

(assert (= (and b!612307 res!266116) b!612308))

(assert (= (and d!215708 (not res!266113)) b!612309))

(assert (=> b!612308 m!879149))

(assert (=> b!612308 m!879555))

(assert (=> b!612308 m!878867))

(assert (=> b!612308 m!879745))

(assert (=> b!612308 m!879555))

(assert (=> b!612308 m!879745))

(declare-fun m!880623 () Bool)

(assert (=> b!612308 m!880623))

(assert (=> b!612307 m!879149))

(assert (=> b!612307 m!879753))

(assert (=> b!612307 m!878867))

(declare-fun m!880625 () Bool)

(assert (=> b!612307 m!880625))

(assert (=> b!612309 m!878867))

(assert (=> b!612309 m!879743))

(assert (=> b!612309 m!879149))

(assert (=> b!612309 m!879553))

(assert (=> b!611302 d!215708))

(assert (=> b!611302 d!215284))

(assert (=> b!611302 d!215344))

(declare-fun b!612311 () Bool)

(declare-fun e!371081 () List!6124)

(declare-fun e!371082 () List!6124)

(assert (=> b!612311 (= e!371081 e!371082)))

(declare-fun c!113241 () Bool)

(assert (=> b!612311 (= c!113241 ((_ is Leaf!3062) (c!112918 (charsOf!854 token!491))))))

(declare-fun b!612310 () Bool)

(assert (=> b!612310 (= e!371081 Nil!6114)))

(declare-fun b!612312 () Bool)

(assert (=> b!612312 (= e!371082 (list!2576 (xs!4579 (c!112918 (charsOf!854 token!491)))))))

(declare-fun d!215712 () Bool)

(declare-fun c!113240 () Bool)

(assert (=> d!215712 (= c!113240 ((_ is Empty!1942) (c!112918 (charsOf!854 token!491))))))

(assert (=> d!215712 (= (list!2574 (c!112918 (charsOf!854 token!491))) e!371081)))

(declare-fun b!612313 () Bool)

(assert (=> b!612313 (= e!371082 (++!1713 (list!2574 (left!4895 (c!112918 (charsOf!854 token!491)))) (list!2574 (right!5225 (c!112918 (charsOf!854 token!491))))))))

(assert (= (and d!215712 c!113240) b!612310))

(assert (= (and d!215712 (not c!113240)) b!612311))

(assert (= (and b!612311 c!113241) b!612312))

(assert (= (and b!612311 (not c!113241)) b!612313))

(declare-fun m!880629 () Bool)

(assert (=> b!612312 m!880629))

(declare-fun m!880631 () Bool)

(assert (=> b!612313 m!880631))

(declare-fun m!880633 () Bool)

(assert (=> b!612313 m!880633))

(assert (=> b!612313 m!880631))

(assert (=> b!612313 m!880633))

(declare-fun m!880635 () Bool)

(assert (=> b!612313 m!880635))

(assert (=> d!215134 d!215712))

(declare-fun d!215716 () Bool)

(assert (=> d!215716 (= (list!2572 lt!261695) (list!2574 (c!112918 lt!261695)))))

(declare-fun bs!71672 () Bool)

(assert (= bs!71672 d!215716))

(declare-fun m!880637 () Bool)

(assert (=> bs!71672 m!880637))

(assert (=> d!215158 d!215716))

(declare-fun d!215718 () Bool)

(declare-fun e!371090 () Bool)

(assert (=> d!215718 e!371090))

(declare-fun res!266119 () Bool)

(assert (=> d!215718 (=> (not res!266119) (not e!371090))))

(declare-fun lt!262145 () BalanceConc!3892)

(assert (=> d!215718 (= res!266119 (= (list!2572 lt!262145) input!2705))))

(declare-fun fromList!285 (List!6124) Conc!1942)

(assert (=> d!215718 (= lt!262145 (BalanceConc!3893 (fromList!285 input!2705)))))

(assert (=> d!215718 (= (fromListB!620 input!2705) lt!262145)))

(declare-fun b!612326 () Bool)

(assert (=> b!612326 (= e!371090 (isBalanced!534 (fromList!285 input!2705)))))

(assert (= (and d!215718 res!266119) b!612326))

(declare-fun m!880661 () Bool)

(assert (=> d!215718 m!880661))

(declare-fun m!880663 () Bool)

(assert (=> d!215718 m!880663))

(assert (=> b!612326 m!880663))

(assert (=> b!612326 m!880663))

(declare-fun m!880665 () Bool)

(assert (=> b!612326 m!880665))

(assert (=> d!215118 d!215718))

(declare-fun b!612334 () Bool)

(declare-fun lt!262147 () List!6124)

(declare-fun e!371094 () Bool)

(assert (=> b!612334 (= e!371094 (or (not (= (_2!3755 (v!16484 lt!261554)) Nil!6114)) (= lt!262147 (t!80905 lt!261518))))))

(declare-fun b!612332 () Bool)

(declare-fun e!371095 () List!6124)

(assert (=> b!612332 (= e!371095 (Cons!6114 (h!11515 (t!80905 lt!261518)) (++!1713 (t!80905 (t!80905 lt!261518)) (_2!3755 (v!16484 lt!261554)))))))

(declare-fun b!612333 () Bool)

(declare-fun res!266124 () Bool)

(assert (=> b!612333 (=> (not res!266124) (not e!371094))))

(assert (=> b!612333 (= res!266124 (= (size!4808 lt!262147) (+ (size!4808 (t!80905 lt!261518)) (size!4808 (_2!3755 (v!16484 lt!261554))))))))

(declare-fun b!612331 () Bool)

(assert (=> b!612331 (= e!371095 (_2!3755 (v!16484 lt!261554)))))

(declare-fun d!215734 () Bool)

(assert (=> d!215734 e!371094))

(declare-fun res!266125 () Bool)

(assert (=> d!215734 (=> (not res!266125) (not e!371094))))

(assert (=> d!215734 (= res!266125 (= (content!1117 lt!262147) ((_ map or) (content!1117 (t!80905 lt!261518)) (content!1117 (_2!3755 (v!16484 lt!261554))))))))

(assert (=> d!215734 (= lt!262147 e!371095)))

(declare-fun c!113248 () Bool)

(assert (=> d!215734 (= c!113248 ((_ is Nil!6114) (t!80905 lt!261518)))))

(assert (=> d!215734 (= (++!1713 (t!80905 lt!261518) (_2!3755 (v!16484 lt!261554))) lt!262147)))

(assert (= (and d!215734 c!113248) b!612331))

(assert (= (and d!215734 (not c!113248)) b!612332))

(assert (= (and d!215734 res!266125) b!612333))

(assert (= (and b!612333 res!266124) b!612334))

(declare-fun m!880673 () Bool)

(assert (=> b!612332 m!880673))

(declare-fun m!880677 () Bool)

(assert (=> b!612333 m!880677))

(assert (=> b!612333 m!879261))

(assert (=> b!612333 m!879241))

(declare-fun m!880679 () Bool)

(assert (=> d!215734 m!880679))

(declare-fun m!880681 () Bool)

(assert (=> d!215734 m!880681))

(assert (=> d!215734 m!879247))

(assert (=> b!611335 d!215734))

(declare-fun d!215738 () Bool)

(assert (=> d!215738 (= (inv!7781 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))) (isBalanced!534 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))))

(declare-fun bs!71675 () Bool)

(assert (= bs!71675 d!215738))

(declare-fun m!880683 () Bool)

(assert (=> bs!71675 m!880683))

(assert (=> tb!53343 d!215738))

(declare-fun d!215740 () Bool)

(assert (=> d!215740 (= suffix!1342 lt!261520)))

(assert (=> d!215740 true))

(declare-fun _$63!766 () Unit!11182)

(assert (=> d!215740 (= (choose!4489 lt!261545 suffix!1342 lt!261545 lt!261520 lt!261534) _$63!766)))

(assert (=> d!214996 d!215740))

(declare-fun b!612337 () Bool)

(declare-fun e!371097 () Bool)

(assert (=> b!612337 (= e!371097 (isPrefix!853 (tail!821 lt!261545) (tail!821 lt!261534)))))

(declare-fun b!612335 () Bool)

(declare-fun e!371098 () Bool)

(assert (=> b!612335 (= e!371098 e!371097)))

(declare-fun res!266128 () Bool)

(assert (=> b!612335 (=> (not res!266128) (not e!371097))))

(assert (=> b!612335 (= res!266128 (not ((_ is Nil!6114) lt!261534)))))

(declare-fun b!612336 () Bool)

(declare-fun res!266129 () Bool)

(assert (=> b!612336 (=> (not res!266129) (not e!371097))))

(assert (=> b!612336 (= res!266129 (= (head!1292 lt!261545) (head!1292 lt!261534)))))

(declare-fun d!215742 () Bool)

(declare-fun e!371096 () Bool)

(assert (=> d!215742 e!371096))

(declare-fun res!266126 () Bool)

(assert (=> d!215742 (=> res!266126 e!371096)))

(declare-fun lt!262148 () Bool)

(assert (=> d!215742 (= res!266126 (not lt!262148))))

(assert (=> d!215742 (= lt!262148 e!371098)))

(declare-fun res!266127 () Bool)

(assert (=> d!215742 (=> res!266127 e!371098)))

(assert (=> d!215742 (= res!266127 ((_ is Nil!6114) lt!261545))))

(assert (=> d!215742 (= (isPrefix!853 lt!261545 lt!261534) lt!262148)))

(declare-fun b!612338 () Bool)

(assert (=> b!612338 (= e!371096 (>= (size!4808 lt!261534) (size!4808 lt!261545)))))

(assert (= (and d!215742 (not res!266127)) b!612335))

(assert (= (and b!612335 res!266128) b!612336))

(assert (= (and b!612336 res!266129) b!612337))

(assert (= (and d!215742 (not res!266126)) b!612338))

(assert (=> b!612337 m!879227))

(assert (=> b!612337 m!878867))

(assert (=> b!612337 m!879227))

(assert (=> b!612337 m!878867))

(declare-fun m!880685 () Bool)

(assert (=> b!612337 m!880685))

(assert (=> b!612336 m!879231))

(assert (=> b!612336 m!879169))

(assert (=> b!612338 m!878865))

(assert (=> b!612338 m!878685))

(assert (=> d!214996 d!215742))

(assert (=> d!215204 d!215546))

(declare-fun d!215744 () Bool)

(declare-fun lt!262149 () Int)

(assert (=> d!215744 (>= lt!262149 0)))

(declare-fun e!371099 () Int)

(assert (=> d!215744 (= lt!262149 e!371099)))

(declare-fun c!113249 () Bool)

(assert (=> d!215744 (= c!113249 ((_ is Nil!6114) (t!80905 (originalCharacters!1264 (_1!3755 (v!16484 lt!261554))))))))

(assert (=> d!215744 (= (size!4808 (t!80905 (originalCharacters!1264 (_1!3755 (v!16484 lt!261554))))) lt!262149)))

(declare-fun b!612339 () Bool)

(assert (=> b!612339 (= e!371099 0)))

(declare-fun b!612340 () Bool)

(assert (=> b!612340 (= e!371099 (+ 1 (size!4808 (t!80905 (t!80905 (originalCharacters!1264 (_1!3755 (v!16484 lt!261554))))))))))

(assert (= (and d!215744 c!113249) b!612339))

(assert (= (and d!215744 (not c!113249)) b!612340))

(declare-fun m!880687 () Bool)

(assert (=> b!612340 m!880687))

(assert (=> b!611416 d!215744))

(assert (=> bm!40846 d!214968))

(declare-fun d!215746 () Bool)

(declare-fun c!113250 () Bool)

(assert (=> d!215746 (= c!113250 ((_ is Nil!6114) lt!261675))))

(declare-fun e!371100 () (InoxSet C!4040))

(assert (=> d!215746 (= (content!1117 lt!261675) e!371100)))

(declare-fun b!612341 () Bool)

(assert (=> b!612341 (= e!371100 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!612342 () Bool)

(assert (=> b!612342 (= e!371100 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 lt!261675) true) (content!1117 (t!80905 lt!261675))))))

(assert (= (and d!215746 c!113250) b!612341))

(assert (= (and d!215746 (not c!113250)) b!612342))

(declare-fun m!880689 () Bool)

(assert (=> b!612342 m!880689))

(declare-fun m!880691 () Bool)

(assert (=> b!612342 m!880691))

(assert (=> d!215130 d!215746))

(declare-fun d!215750 () Bool)

(declare-fun c!113251 () Bool)

(assert (=> d!215750 (= c!113251 ((_ is Nil!6114) lt!261545))))

(declare-fun e!371104 () (InoxSet C!4040))

(assert (=> d!215750 (= (content!1117 lt!261545) e!371104)))

(declare-fun b!612347 () Bool)

(assert (=> b!612347 (= e!371104 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!612348 () Bool)

(assert (=> b!612348 (= e!371104 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 lt!261545) true) (content!1117 (t!80905 lt!261545))))))

(assert (= (and d!215750 c!113251) b!612347))

(assert (= (and d!215750 (not c!113251)) b!612348))

(declare-fun m!880693 () Bool)

(assert (=> b!612348 m!880693))

(declare-fun m!880695 () Bool)

(assert (=> b!612348 m!880695))

(assert (=> d!215130 d!215750))

(assert (=> d!215130 d!215370))

(assert (=> d!215104 d!215182))

(declare-fun d!215752 () Bool)

(assert (=> d!215752 (= (maxPrefixOneRule!472 thiss!22590 (rule!2015 token!491) lt!261534) (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 lt!261545)) (rule!2015 token!491) (size!4808 lt!261545) lt!261545) suffix!1342)))))

(assert (=> d!215752 true))

(declare-fun _$59!277 () Unit!11182)

(assert (=> d!215752 (= (choose!4490 thiss!22590 rules!3103 lt!261545 lt!261534 suffix!1342 (rule!2015 token!491)) _$59!277)))

(declare-fun bs!71677 () Bool)

(assert (= bs!71677 d!215752))

(assert (=> bs!71677 m!878621))

(assert (=> bs!71677 m!878623))

(assert (=> bs!71677 m!878623))

(assert (=> bs!71677 m!879069))

(assert (=> bs!71677 m!878685))

(assert (=> d!215104 d!215752))

(assert (=> d!215104 d!215088))

(assert (=> d!215104 d!214974))

(declare-fun d!215758 () Bool)

(assert (=> d!215758 (= (apply!1478 (transformation!1225 (rule!2015 token!491)) (seqFromList!1401 lt!261545)) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 lt!261545)))))

(declare-fun b_lambda!24313 () Bool)

(assert (=> (not b_lambda!24313) (not d!215758)))

(declare-fun t!81104 () Bool)

(declare-fun tb!53503 () Bool)

(assert (=> (and b!610888 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81104) tb!53503))

(declare-fun result!60242 () Bool)

(assert (=> tb!53503 (= result!60242 (inv!21 (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) (seqFromList!1401 lt!261545))))))

(declare-fun m!880719 () Bool)

(assert (=> tb!53503 m!880719))

(assert (=> d!215758 t!81104))

(declare-fun b_and!60679 () Bool)

(assert (= b_and!60673 (and (=> t!81104 result!60242) b_and!60679)))

(declare-fun t!81106 () Bool)

(declare-fun tb!53505 () Bool)

(assert (=> (and b!610925 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81106) tb!53505))

(declare-fun result!60244 () Bool)

(assert (= result!60244 result!60242))

(assert (=> d!215758 t!81106))

(declare-fun b_and!60681 () Bool)

(assert (= b_and!60675 (and (=> t!81106 result!60244) b_and!60681)))

(declare-fun tb!53507 () Bool)

(declare-fun t!81108 () Bool)

(assert (=> (and b!611429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81108) tb!53507))

(declare-fun result!60246 () Bool)

(assert (= result!60246 result!60242))

(assert (=> d!215758 t!81108))

(declare-fun b_and!60683 () Bool)

(assert (= b_and!60677 (and (=> t!81108 result!60246) b_and!60683)))

(assert (=> d!215758 m!878623))

(declare-fun m!880723 () Bool)

(assert (=> d!215758 m!880723))

(assert (=> d!215104 d!215758))

(assert (=> d!215104 d!215106))

(declare-fun d!215764 () Bool)

(declare-fun e!371108 () Bool)

(assert (=> d!215764 e!371108))

(declare-fun res!266136 () Bool)

(assert (=> d!215764 (=> (not res!266136) (not e!371108))))

(declare-fun lt!262152 () BalanceConc!3892)

(assert (=> d!215764 (= res!266136 (= (list!2572 lt!262152) lt!261545))))

(assert (=> d!215764 (= lt!262152 (BalanceConc!3893 (fromList!285 lt!261545)))))

(assert (=> d!215764 (= (fromListB!620 lt!261545) lt!262152)))

(declare-fun b!612353 () Bool)

(assert (=> b!612353 (= e!371108 (isBalanced!534 (fromList!285 lt!261545)))))

(assert (= (and d!215764 res!266136) b!612353))

(declare-fun m!880727 () Bool)

(assert (=> d!215764 m!880727))

(declare-fun m!880729 () Bool)

(assert (=> d!215764 m!880729))

(assert (=> b!612353 m!880729))

(assert (=> b!612353 m!880729))

(declare-fun m!880731 () Bool)

(assert (=> b!612353 m!880731))

(assert (=> d!215106 d!215764))

(declare-fun d!215768 () Bool)

(declare-fun c!113254 () Bool)

(assert (=> d!215768 (= c!113254 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))))

(declare-fun e!371111 () Bool)

(assert (=> d!215768 (= (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))) e!371111)))

(declare-fun b!612358 () Bool)

(assert (=> b!612358 (= e!371111 (inv!7786 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))))

(declare-fun b!612359 () Bool)

(declare-fun e!371112 () Bool)

(assert (=> b!612359 (= e!371111 e!371112)))

(declare-fun res!266139 () Bool)

(assert (=> b!612359 (= res!266139 (not ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))))))

(assert (=> b!612359 (=> res!266139 e!371112)))

(declare-fun b!612360 () Bool)

(assert (=> b!612360 (= e!371112 (inv!7787 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))))))

(assert (= (and d!215768 c!113254) b!612358))

(assert (= (and d!215768 (not c!113254)) b!612359))

(assert (= (and b!612359 (not res!266139)) b!612360))

(declare-fun m!880733 () Bool)

(assert (=> b!612358 m!880733))

(declare-fun m!880735 () Bool)

(assert (=> b!612360 m!880735))

(assert (=> b!611170 d!215768))

(assert (=> d!215214 d!215504))

(declare-fun d!215770 () Bool)

(declare-fun charsToBigInt!0 (List!6123 Int) Int)

(assert (=> d!215770 (= (inv!15 (value!39779 token!491)) (= (charsToBigInt!0 (text!9192 (value!39779 token!491)) 0) (value!39774 (value!39779 token!491))))))

(declare-fun bs!71680 () Bool)

(assert (= bs!71680 d!215770))

(declare-fun m!880759 () Bool)

(assert (=> bs!71680 m!880759))

(assert (=> b!610967 d!215770))

(declare-fun d!215782 () Bool)

(declare-fun lt!262155 () Int)

(assert (=> d!215782 (>= lt!262155 0)))

(declare-fun e!371118 () Int)

(assert (=> d!215782 (= lt!262155 e!371118)))

(declare-fun c!113256 () Bool)

(assert (=> d!215782 (= c!113256 ((_ is Nil!6114) (_2!3755 (get!2352 lt!261736))))))

(assert (=> d!215782 (= (size!4808 (_2!3755 (get!2352 lt!261736))) lt!262155)))

(declare-fun b!612366 () Bool)

(assert (=> b!612366 (= e!371118 0)))

(declare-fun b!612367 () Bool)

(assert (=> b!612367 (= e!371118 (+ 1 (size!4808 (t!80905 (_2!3755 (get!2352 lt!261736))))))))

(assert (= (and d!215782 c!113256) b!612366))

(assert (= (and d!215782 (not c!113256)) b!612367))

(declare-fun m!880761 () Bool)

(assert (=> b!612367 m!880761))

(assert (=> b!611398 d!215782))

(assert (=> b!611398 d!215270))

(assert (=> b!611398 d!215410))

(declare-fun d!215784 () Bool)

(declare-fun lt!262156 () Int)

(assert (=> d!215784 (>= lt!262156 0)))

(declare-fun e!371119 () Int)

(assert (=> d!215784 (= lt!262156 e!371119)))

(declare-fun c!113257 () Bool)

(assert (=> d!215784 (= c!113257 ((_ is Nil!6114) (_2!3755 (get!2352 lt!261656))))))

(assert (=> d!215784 (= (size!4808 (_2!3755 (get!2352 lt!261656))) lt!262156)))

(declare-fun b!612368 () Bool)

(assert (=> b!612368 (= e!371119 0)))

(declare-fun b!612369 () Bool)

(assert (=> b!612369 (= e!371119 (+ 1 (size!4808 (t!80905 (_2!3755 (get!2352 lt!261656))))))))

(assert (= (and d!215784 c!113257) b!612368))

(assert (= (and d!215784 (not c!113257)) b!612369))

(declare-fun m!880765 () Bool)

(assert (=> b!612369 m!880765))

(assert (=> b!611180 d!215784))

(assert (=> b!611180 d!215276))

(assert (=> b!611180 d!215410))

(assert (=> b!611283 d!215260))

(assert (=> b!611056 d!215388))

(declare-fun d!215786 () Bool)

(declare-fun lt!262157 () Int)

(assert (=> d!215786 (>= lt!262157 0)))

(declare-fun e!371121 () Int)

(assert (=> d!215786 (= lt!262157 e!371121)))

(declare-fun c!113258 () Bool)

(assert (=> d!215786 (= c!113258 ((_ is Nil!6114) (originalCharacters!1264 (_1!3755 (get!2352 lt!261605)))))))

(assert (=> d!215786 (= (size!4808 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605)))) lt!262157)))

(declare-fun b!612370 () Bool)

(assert (=> b!612370 (= e!371121 0)))

(declare-fun b!612371 () Bool)

(assert (=> b!612371 (= e!371121 (+ 1 (size!4808 (t!80905 (originalCharacters!1264 (_1!3755 (get!2352 lt!261605)))))))))

(assert (= (and d!215786 c!113258) b!612370))

(assert (= (and d!215786 (not c!113258)) b!612371))

(declare-fun m!880767 () Bool)

(assert (=> b!612371 m!880767))

(assert (=> b!611056 d!215786))

(declare-fun d!215788 () Bool)

(declare-fun c!113259 () Bool)

(assert (=> d!215788 (= c!113259 ((_ is Nil!6114) lt!261712))))

(declare-fun e!371122 () (InoxSet C!4040))

(assert (=> d!215788 (= (content!1117 lt!261712) e!371122)))

(declare-fun b!612372 () Bool)

(assert (=> b!612372 (= e!371122 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!612373 () Bool)

(assert (=> b!612373 (= e!371122 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 lt!261712) true) (content!1117 (t!80905 lt!261712))))))

(assert (= (and d!215788 c!113259) b!612372))

(assert (= (and d!215788 (not c!113259)) b!612373))

(declare-fun m!880771 () Bool)

(assert (=> b!612373 m!880771))

(declare-fun m!880773 () Bool)

(assert (=> b!612373 m!880773))

(assert (=> d!215190 d!215788))

(declare-fun d!215792 () Bool)

(declare-fun c!113260 () Bool)

(assert (=> d!215792 (= c!113260 ((_ is Nil!6114) lt!261518))))

(declare-fun e!371123 () (InoxSet C!4040))

(assert (=> d!215792 (= (content!1117 lt!261518) e!371123)))

(declare-fun b!612374 () Bool)

(assert (=> b!612374 (= e!371123 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!612375 () Bool)

(assert (=> b!612375 (= e!371123 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 lt!261518) true) (content!1117 (t!80905 lt!261518))))))

(assert (= (and d!215792 c!113260) b!612374))

(assert (= (and d!215792 (not c!113260)) b!612375))

(declare-fun m!880777 () Bool)

(assert (=> b!612375 m!880777))

(assert (=> b!612375 m!880681))

(assert (=> d!215190 d!215792))

(declare-fun d!215796 () Bool)

(declare-fun c!113261 () Bool)

(assert (=> d!215796 (= c!113261 ((_ is Nil!6114) (_2!3755 (v!16484 lt!261554))))))

(declare-fun e!371124 () (InoxSet C!4040))

(assert (=> d!215796 (= (content!1117 (_2!3755 (v!16484 lt!261554))) e!371124)))

(declare-fun b!612376 () Bool)

(assert (=> b!612376 (= e!371124 ((as const (Array C!4040 Bool)) false))))

(declare-fun b!612377 () Bool)

(assert (=> b!612377 (= e!371124 ((_ map or) (store ((as const (Array C!4040 Bool)) false) (h!11515 (_2!3755 (v!16484 lt!261554))) true) (content!1117 (t!80905 (_2!3755 (v!16484 lt!261554))))))))

(assert (= (and d!215796 c!113261) b!612376))

(assert (= (and d!215796 (not c!113261)) b!612377))

(declare-fun m!880779 () Bool)

(assert (=> b!612377 m!880779))

(declare-fun m!880781 () Bool)

(assert (=> b!612377 m!880781))

(assert (=> d!215190 d!215796))

(declare-fun d!215798 () Bool)

(declare-fun c!113263 () Bool)

(assert (=> d!215798 (= c!113263 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))))

(declare-fun e!371127 () Bool)

(assert (=> d!215798 (= (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))) e!371127)))

(declare-fun b!612382 () Bool)

(assert (=> b!612382 (= e!371127 (inv!7786 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))))

(declare-fun b!612383 () Bool)

(declare-fun e!371128 () Bool)

(assert (=> b!612383 (= e!371127 e!371128)))

(declare-fun res!266145 () Bool)

(assert (=> b!612383 (= res!266145 (not ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))))))

(assert (=> b!612383 (=> res!266145 e!371128)))

(declare-fun b!612384 () Bool)

(assert (=> b!612384 (= e!371128 (inv!7787 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))))))

(assert (= (and d!215798 c!113263) b!612382))

(assert (= (and d!215798 (not c!113263)) b!612383))

(assert (= (and b!612383 (not res!266145)) b!612384))

(declare-fun m!880791 () Bool)

(assert (=> b!612382 m!880791))

(declare-fun m!880793 () Bool)

(assert (=> b!612384 m!880793))

(assert (=> b!611212 d!215798))

(declare-fun d!215802 () Bool)

(assert (=> d!215802 (= (isDefined!1387 lt!261736) (not (isEmpty!4415 lt!261736)))))

(declare-fun bs!71683 () Bool)

(assert (= bs!71683 d!215802))

(assert (=> bs!71683 m!879279))

(assert (=> b!611395 d!215802))

(assert (=> b!611176 d!215276))

(declare-fun d!215806 () Bool)

(declare-fun lt!262159 () Int)

(assert (=> d!215806 (>= lt!262159 0)))

(declare-fun e!371129 () Int)

(assert (=> d!215806 (= lt!262159 e!371129)))

(declare-fun c!113264 () Bool)

(assert (=> d!215806 (= c!113264 ((_ is Nil!6114) (originalCharacters!1264 (_1!3755 (get!2352 lt!261656)))))))

(assert (=> d!215806 (= (size!4808 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656)))) lt!262159)))

(declare-fun b!612385 () Bool)

(assert (=> b!612385 (= e!371129 0)))

(declare-fun b!612386 () Bool)

(assert (=> b!612386 (= e!371129 (+ 1 (size!4808 (t!80905 (originalCharacters!1264 (_1!3755 (get!2352 lt!261656)))))))))

(assert (= (and d!215806 c!113264) b!612385))

(assert (= (and d!215806 (not c!113264)) b!612386))

(declare-fun m!880801 () Bool)

(assert (=> b!612386 m!880801))

(assert (=> b!611176 d!215806))

(declare-fun b!612387 () Bool)

(declare-fun e!371133 () Bool)

(assert (=> b!612387 (= e!371133 (matchR!662 (regex!1225 (h!11516 rules!3103)) (_1!3756 (findLongestMatchInner!209 (regex!1225 (h!11516 rules!3103)) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(declare-fun b!612388 () Bool)

(declare-fun e!371131 () Bool)

(declare-fun lt!262160 () Option!1576)

(assert (=> b!612388 (= e!371131 (= (size!4807 (_1!3755 (get!2352 lt!262160))) (size!4808 (originalCharacters!1264 (_1!3755 (get!2352 lt!262160))))))))

(declare-fun d!215812 () Bool)

(declare-fun e!371130 () Bool)

(assert (=> d!215812 e!371130))

(declare-fun res!266152 () Bool)

(assert (=> d!215812 (=> res!266152 e!371130)))

(assert (=> d!215812 (= res!266152 (isEmpty!4415 lt!262160))))

(declare-fun e!371132 () Option!1576)

(assert (=> d!215812 (= lt!262160 e!371132)))

(declare-fun c!113265 () Bool)

(declare-fun lt!262162 () tuple2!6984)

(assert (=> d!215812 (= c!113265 (isEmpty!4413 (_1!3756 lt!262162)))))

(assert (=> d!215812 (= lt!262162 (findLongestMatch!188 (regex!1225 (h!11516 rules!3103)) input!2705))))

(assert (=> d!215812 (ruleValid!423 thiss!22590 (h!11516 rules!3103))))

(assert (=> d!215812 (= (maxPrefixOneRule!472 thiss!22590 (h!11516 rules!3103) input!2705) lt!262160)))

(declare-fun b!612389 () Bool)

(declare-fun res!266147 () Bool)

(assert (=> b!612389 (=> (not res!266147) (not e!371131))))

(assert (=> b!612389 (= res!266147 (= (++!1713 (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262160)))) (_2!3755 (get!2352 lt!262160))) input!2705))))

(declare-fun b!612390 () Bool)

(declare-fun res!266146 () Bool)

(assert (=> b!612390 (=> (not res!266146) (not e!371131))))

(assert (=> b!612390 (= res!266146 (= (rule!2015 (_1!3755 (get!2352 lt!262160))) (h!11516 rules!3103)))))

(declare-fun b!612391 () Bool)

(assert (=> b!612391 (= e!371132 None!1575)))

(declare-fun b!612392 () Bool)

(declare-fun res!266150 () Bool)

(assert (=> b!612392 (=> (not res!266150) (not e!371131))))

(assert (=> b!612392 (= res!266150 (< (size!4808 (_2!3755 (get!2352 lt!262160))) (size!4808 input!2705)))))

(declare-fun b!612393 () Bool)

(declare-fun res!266149 () Bool)

(assert (=> b!612393 (=> (not res!266149) (not e!371131))))

(assert (=> b!612393 (= res!266149 (= (value!39779 (_1!3755 (get!2352 lt!262160))) (apply!1478 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!262160)))) (seqFromList!1401 (originalCharacters!1264 (_1!3755 (get!2352 lt!262160)))))))))

(declare-fun b!612394 () Bool)

(assert (=> b!612394 (= e!371132 (Some!1575 (tuple2!6983 (Token!2187 (apply!1478 (transformation!1225 (h!11516 rules!3103)) (seqFromList!1401 (_1!3756 lt!262162))) (h!11516 rules!3103) (size!4809 (seqFromList!1401 (_1!3756 lt!262162))) (_1!3756 lt!262162)) (_2!3756 lt!262162))))))

(declare-fun lt!262161 () Unit!11182)

(assert (=> b!612394 (= lt!262161 (longestMatchIsAcceptedByMatchOrIsEmpty!193 (regex!1225 (h!11516 rules!3103)) input!2705))))

(declare-fun res!266151 () Bool)

(assert (=> b!612394 (= res!266151 (isEmpty!4413 (_1!3756 (findLongestMatchInner!209 (regex!1225 (h!11516 rules!3103)) Nil!6114 (size!4808 Nil!6114) input!2705 input!2705 (size!4808 input!2705)))))))

(assert (=> b!612394 (=> res!266151 e!371133)))

(assert (=> b!612394 e!371133))

(declare-fun lt!262163 () Unit!11182)

(assert (=> b!612394 (= lt!262163 lt!262161)))

(declare-fun lt!262164 () Unit!11182)

(assert (=> b!612394 (= lt!262164 (lemmaSemiInverse!255 (transformation!1225 (h!11516 rules!3103)) (seqFromList!1401 (_1!3756 lt!262162))))))

(declare-fun b!612395 () Bool)

(assert (=> b!612395 (= e!371130 e!371131)))

(declare-fun res!266148 () Bool)

(assert (=> b!612395 (=> (not res!266148) (not e!371131))))

(assert (=> b!612395 (= res!266148 (matchR!662 (regex!1225 (h!11516 rules!3103)) (list!2572 (charsOf!854 (_1!3755 (get!2352 lt!262160))))))))

(assert (= (and d!215812 c!113265) b!612391))

(assert (= (and d!215812 (not c!113265)) b!612394))

(assert (= (and b!612394 (not res!266151)) b!612387))

(assert (= (and d!215812 (not res!266152)) b!612395))

(assert (= (and b!612395 res!266148) b!612389))

(assert (= (and b!612389 res!266147) b!612392))

(assert (= (and b!612392 res!266150) b!612390))

(assert (= (and b!612390 res!266146) b!612393))

(assert (= (and b!612393 res!266149) b!612388))

(declare-fun m!880803 () Bool)

(assert (=> b!612389 m!880803))

(declare-fun m!880805 () Bool)

(assert (=> b!612389 m!880805))

(assert (=> b!612389 m!880805))

(declare-fun m!880809 () Bool)

(assert (=> b!612389 m!880809))

(assert (=> b!612389 m!880809))

(declare-fun m!880815 () Bool)

(assert (=> b!612389 m!880815))

(assert (=> b!612395 m!880803))

(assert (=> b!612395 m!880805))

(assert (=> b!612395 m!880805))

(assert (=> b!612395 m!880809))

(assert (=> b!612395 m!880809))

(declare-fun m!880817 () Bool)

(assert (=> b!612395 m!880817))

(assert (=> b!612387 m!878827))

(assert (=> b!612387 m!878563))

(assert (=> b!612387 m!878827))

(assert (=> b!612387 m!878563))

(declare-fun m!880819 () Bool)

(assert (=> b!612387 m!880819))

(declare-fun m!880821 () Bool)

(assert (=> b!612387 m!880821))

(assert (=> b!612388 m!880803))

(declare-fun m!880825 () Bool)

(assert (=> b!612388 m!880825))

(declare-fun m!880827 () Bool)

(assert (=> d!215812 m!880827))

(declare-fun m!880829 () Bool)

(assert (=> d!215812 m!880829))

(declare-fun m!880831 () Bool)

(assert (=> d!215812 m!880831))

(assert (=> d!215812 m!879671))

(assert (=> b!612392 m!880803))

(declare-fun m!880833 () Bool)

(assert (=> b!612392 m!880833))

(assert (=> b!612392 m!878563))

(assert (=> b!612394 m!878827))

(assert (=> b!612394 m!878563))

(assert (=> b!612394 m!880819))

(declare-fun m!880835 () Bool)

(assert (=> b!612394 m!880835))

(declare-fun m!880837 () Bool)

(assert (=> b!612394 m!880837))

(declare-fun m!880841 () Bool)

(assert (=> b!612394 m!880841))

(assert (=> b!612394 m!878827))

(assert (=> b!612394 m!880835))

(declare-fun m!880843 () Bool)

(assert (=> b!612394 m!880843))

(assert (=> b!612394 m!878563))

(assert (=> b!612394 m!880835))

(assert (=> b!612394 m!880835))

(declare-fun m!880845 () Bool)

(assert (=> b!612394 m!880845))

(declare-fun m!880847 () Bool)

(assert (=> b!612394 m!880847))

(assert (=> b!612393 m!880803))

(declare-fun m!880849 () Bool)

(assert (=> b!612393 m!880849))

(assert (=> b!612393 m!880849))

(declare-fun m!880851 () Bool)

(assert (=> b!612393 m!880851))

(assert (=> b!612390 m!880803))

(assert (=> bm!40839 d!215812))

(assert (=> b!611279 d!215346))

(assert (=> b!611279 d!215284))

(declare-fun bs!71687 () Bool)

(declare-fun d!215818 () Bool)

(assert (= bs!71687 (and d!215818 d!215324)))

(declare-fun lambda!16205 () Int)

(assert (=> bs!71687 (= lambda!16205 lambda!16177)))

(assert (=> d!215818 true))

(declare-fun lt!262170 () Bool)

(assert (=> d!215818 (= lt!262170 (rulesValidInductive!461 thiss!22590 rules!3103))))

(assert (=> d!215818 (= lt!262170 (forall!1563 rules!3103 lambda!16205))))

(assert (=> d!215818 (= (rulesValid!456 thiss!22590 rules!3103) lt!262170)))

(declare-fun bs!71688 () Bool)

(assert (= bs!71688 d!215818))

(assert (=> bs!71688 m!878707))

(declare-fun m!880853 () Bool)

(assert (=> bs!71688 m!880853))

(assert (=> d!215150 d!215818))

(declare-fun b!612398 () Bool)

(declare-fun e!371136 () Bool)

(assert (=> b!612398 (= e!371136 (isPrefix!853 (tail!821 lt!261545) (tail!821 (++!1713 lt!261545 suffix!1342))))))

(declare-fun b!612396 () Bool)

(declare-fun e!371137 () Bool)

(assert (=> b!612396 (= e!371137 e!371136)))

(declare-fun res!266155 () Bool)

(assert (=> b!612396 (=> (not res!266155) (not e!371136))))

(assert (=> b!612396 (= res!266155 (not ((_ is Nil!6114) (++!1713 lt!261545 suffix!1342))))))

(declare-fun b!612397 () Bool)

(declare-fun res!266156 () Bool)

(assert (=> b!612397 (=> (not res!266156) (not e!371136))))

(assert (=> b!612397 (= res!266156 (= (head!1292 lt!261545) (head!1292 (++!1713 lt!261545 suffix!1342))))))

(declare-fun d!215820 () Bool)

(declare-fun e!371135 () Bool)

(assert (=> d!215820 e!371135))

(declare-fun res!266153 () Bool)

(assert (=> d!215820 (=> res!266153 e!371135)))

(declare-fun lt!262171 () Bool)

(assert (=> d!215820 (= res!266153 (not lt!262171))))

(assert (=> d!215820 (= lt!262171 e!371137)))

(declare-fun res!266154 () Bool)

(assert (=> d!215820 (=> res!266154 e!371137)))

(assert (=> d!215820 (= res!266154 ((_ is Nil!6114) lt!261545))))

(assert (=> d!215820 (= (isPrefix!853 lt!261545 (++!1713 lt!261545 suffix!1342)) lt!262171)))

(declare-fun b!612399 () Bool)

(assert (=> b!612399 (= e!371135 (>= (size!4808 (++!1713 lt!261545 suffix!1342)) (size!4808 lt!261545)))))

(assert (= (and d!215820 (not res!266154)) b!612396))

(assert (= (and b!612396 res!266155) b!612397))

(assert (= (and b!612397 res!266156) b!612398))

(assert (= (and d!215820 (not res!266153)) b!612399))

(assert (=> b!612398 m!879227))

(assert (=> b!612398 m!878567))

(declare-fun m!880855 () Bool)

(assert (=> b!612398 m!880855))

(assert (=> b!612398 m!879227))

(assert (=> b!612398 m!880855))

(declare-fun m!880857 () Bool)

(assert (=> b!612398 m!880857))

(assert (=> b!612397 m!879231))

(assert (=> b!612397 m!878567))

(declare-fun m!880859 () Bool)

(assert (=> b!612397 m!880859))

(assert (=> b!612399 m!878567))

(declare-fun m!880861 () Bool)

(assert (=> b!612399 m!880861))

(assert (=> b!612399 m!878685))

(assert (=> d!215184 d!215820))

(assert (=> d!215184 d!215130))

(declare-fun d!215822 () Bool)

(assert (=> d!215822 (isPrefix!853 lt!261545 (++!1713 lt!261545 suffix!1342))))

(assert (=> d!215822 true))

(declare-fun _$46!1012 () Unit!11182)

(assert (=> d!215822 (= (choose!4500 lt!261545 suffix!1342) _$46!1012)))

(declare-fun bs!71689 () Bool)

(assert (= bs!71689 d!215822))

(assert (=> bs!71689 m!878567))

(assert (=> bs!71689 m!878567))

(assert (=> bs!71689 m!879223))

(assert (=> d!215184 d!215822))

(assert (=> b!611322 d!215260))

(assert (=> b!611322 d!215380))

(declare-fun d!215824 () Bool)

(declare-fun lt!262172 () Int)

(assert (=> d!215824 (>= lt!262172 0)))

(declare-fun e!371138 () Int)

(assert (=> d!215824 (= lt!262172 e!371138)))

(declare-fun c!113266 () Bool)

(assert (=> d!215824 (= c!113266 ((_ is Nil!6114) (_2!3755 (get!2352 lt!261605))))))

(assert (=> d!215824 (= (size!4808 (_2!3755 (get!2352 lt!261605))) lt!262172)))

(declare-fun b!612400 () Bool)

(assert (=> b!612400 (= e!371138 0)))

(declare-fun b!612401 () Bool)

(assert (=> b!612401 (= e!371138 (+ 1 (size!4808 (t!80905 (_2!3755 (get!2352 lt!261605))))))))

(assert (= (and d!215824 c!113266) b!612400))

(assert (= (and d!215824 (not c!113266)) b!612401))

(declare-fun m!880863 () Bool)

(assert (=> b!612401 m!880863))

(assert (=> b!611060 d!215824))

(assert (=> b!611060 d!215388))

(assert (=> b!611060 d!215120))

(declare-fun b!612405 () Bool)

(declare-fun e!371139 () Bool)

(declare-fun lt!262173 () List!6124)

(assert (=> b!612405 (= e!371139 (or (not (= suffix!1342 Nil!6114)) (= lt!262173 (t!80905 lt!261545))))))

(declare-fun b!612403 () Bool)

(declare-fun e!371140 () List!6124)

(assert (=> b!612403 (= e!371140 (Cons!6114 (h!11515 (t!80905 lt!261545)) (++!1713 (t!80905 (t!80905 lt!261545)) suffix!1342)))))

(declare-fun b!612404 () Bool)

(declare-fun res!266157 () Bool)

(assert (=> b!612404 (=> (not res!266157) (not e!371139))))

(assert (=> b!612404 (= res!266157 (= (size!4808 lt!262173) (+ (size!4808 (t!80905 lt!261545)) (size!4808 suffix!1342))))))

(declare-fun b!612402 () Bool)

(assert (=> b!612402 (= e!371140 suffix!1342)))

(declare-fun d!215826 () Bool)

(assert (=> d!215826 e!371139))

(declare-fun res!266158 () Bool)

(assert (=> d!215826 (=> (not res!266158) (not e!371139))))

(assert (=> d!215826 (= res!266158 (= (content!1117 lt!262173) ((_ map or) (content!1117 (t!80905 lt!261545)) (content!1117 suffix!1342))))))

(assert (=> d!215826 (= lt!262173 e!371140)))

(declare-fun c!113267 () Bool)

(assert (=> d!215826 (= c!113267 ((_ is Nil!6114) (t!80905 lt!261545)))))

(assert (=> d!215826 (= (++!1713 (t!80905 lt!261545) suffix!1342) lt!262173)))

(assert (= (and d!215826 c!113267) b!612402))

(assert (= (and d!215826 (not c!113267)) b!612403))

(assert (= (and d!215826 res!266158) b!612404))

(assert (= (and b!612404 res!266157) b!612405))

(declare-fun m!880865 () Bool)

(assert (=> b!612403 m!880865))

(declare-fun m!880867 () Bool)

(assert (=> b!612404 m!880867))

(assert (=> b!612404 m!879221))

(assert (=> b!612404 m!879125))

(declare-fun m!880869 () Bool)

(assert (=> d!215826 m!880869))

(assert (=> d!215826 m!880695))

(assert (=> d!215826 m!879131))

(assert (=> b!611244 d!215826))

(declare-fun d!215828 () Bool)

(assert (=> d!215828 (= (isEmpty!4415 lt!261527) (not ((_ is Some!1575) lt!261527)))))

(assert (=> d!215216 d!215828))

(declare-fun d!215830 () Bool)

(assert (=> d!215830 (= (isEmpty!4415 lt!261605) (not ((_ is Some!1575) lt!261605)))))

(assert (=> d!215006 d!215830))

(declare-fun d!215832 () Bool)

(assert (=> d!215832 (= (isEmpty!4413 (_1!3756 lt!261607)) ((_ is Nil!6114) (_1!3756 lt!261607)))))

(assert (=> d!215006 d!215832))

(declare-fun d!215834 () Bool)

(declare-fun lt!262179 () tuple2!6984)

(assert (=> d!215834 (= (++!1713 (_1!3756 lt!262179) (_2!3756 lt!262179)) input!2705)))

(assert (=> d!215834 (= lt!262179 (findLongestMatchInner!209 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) Nil!6114 0 input!2705 input!2705 (sizeTr!40 input!2705 0)))))

(declare-fun lt!262180 () Unit!11182)

(declare-fun lt!262181 () Unit!11182)

(assert (=> d!215834 (= lt!262180 lt!262181)))

(declare-fun lt!262177 () List!6124)

(declare-fun lt!262176 () Int)

(assert (=> d!215834 (= (sizeTr!40 lt!262177 lt!262176) (+ (size!4808 lt!262177) lt!262176))))

(assert (=> d!215834 (= lt!262181 (lemmaSizeTrEqualsSize!40 lt!262177 lt!262176))))

(assert (=> d!215834 (= lt!262176 0)))

(assert (=> d!215834 (= lt!262177 Nil!6114)))

(declare-fun lt!262178 () Unit!11182)

(declare-fun lt!262174 () Unit!11182)

(assert (=> d!215834 (= lt!262178 lt!262174)))

(declare-fun lt!262175 () Int)

(assert (=> d!215834 (= (sizeTr!40 input!2705 lt!262175) (+ (size!4808 input!2705) lt!262175))))

(assert (=> d!215834 (= lt!262174 (lemmaSizeTrEqualsSize!40 input!2705 lt!262175))))

(assert (=> d!215834 (= lt!262175 0)))

(assert (=> d!215834 (validRegex!546 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))))

(assert (=> d!215834 (= (findLongestMatch!188 (regex!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))) input!2705) lt!262179)))

(declare-fun bs!71690 () Bool)

(assert (= bs!71690 d!215834))

(declare-fun m!880871 () Bool)

(assert (=> bs!71690 m!880871))

(declare-fun m!880873 () Bool)

(assert (=> bs!71690 m!880873))

(assert (=> bs!71690 m!880873))

(declare-fun m!880875 () Bool)

(assert (=> bs!71690 m!880875))

(assert (=> bs!71690 m!878563))

(declare-fun m!880877 () Bool)

(assert (=> bs!71690 m!880877))

(assert (=> bs!71690 m!879159))

(declare-fun m!880879 () Bool)

(assert (=> bs!71690 m!880879))

(declare-fun m!880881 () Bool)

(assert (=> bs!71690 m!880881))

(declare-fun m!880883 () Bool)

(assert (=> bs!71690 m!880883))

(declare-fun m!880885 () Bool)

(assert (=> bs!71690 m!880885))

(assert (=> d!215006 d!215834))

(assert (=> d!215006 d!215154))

(assert (=> b!610976 d!214992))

(assert (=> bm!40847 d!214968))

(assert (=> d!215140 d!214968))

(assert (=> d!215140 d!215470))

(declare-fun d!215836 () Bool)

(declare-fun e!371141 () Bool)

(assert (=> d!215836 e!371141))

(declare-fun res!266159 () Bool)

(assert (=> d!215836 (=> (not res!266159) (not e!371141))))

(declare-fun lt!262182 () BalanceConc!3892)

(assert (=> d!215836 (= res!266159 (= (list!2572 lt!262182) lt!261518))))

(assert (=> d!215836 (= lt!262182 (BalanceConc!3893 (fromList!285 lt!261518)))))

(assert (=> d!215836 (= (fromListB!620 lt!261518) lt!262182)))

(declare-fun b!612406 () Bool)

(assert (=> b!612406 (= e!371141 (isBalanced!534 (fromList!285 lt!261518)))))

(assert (= (and d!215836 res!266159) b!612406))

(declare-fun m!880887 () Bool)

(assert (=> d!215836 m!880887))

(declare-fun m!880889 () Bool)

(assert (=> d!215836 m!880889))

(assert (=> b!612406 m!880889))

(assert (=> b!612406 m!880889))

(declare-fun m!880891 () Bool)

(assert (=> b!612406 m!880891))

(assert (=> d!215196 d!215836))

(declare-fun d!215838 () Bool)

(declare-fun lt!262183 () Int)

(assert (=> d!215838 (>= lt!262183 0)))

(declare-fun e!371142 () Int)

(assert (=> d!215838 (= lt!262183 e!371142)))

(declare-fun c!113268 () Bool)

(assert (=> d!215838 (= c!113268 ((_ is Nil!6114) (t!80905 lt!261518)))))

(assert (=> d!215838 (= (size!4808 (t!80905 lt!261518)) lt!262183)))

(declare-fun b!612407 () Bool)

(assert (=> b!612407 (= e!371142 0)))

(declare-fun b!612408 () Bool)

(assert (=> b!612408 (= e!371142 (+ 1 (size!4808 (t!80905 (t!80905 lt!261518)))))))

(assert (= (and d!215838 c!113268) b!612407))

(assert (= (and d!215838 (not c!113268)) b!612408))

(declare-fun m!880893 () Bool)

(assert (=> b!612408 m!880893))

(assert (=> b!611341 d!215838))

(assert (=> b!610953 d!215450))

(assert (=> b!610953 d!215452))

(assert (=> b!610953 d!215374))

(declare-fun b!612411 () Bool)

(declare-fun e!371144 () Bool)

(assert (=> b!612411 (= e!371144 (isPrefix!853 (tail!821 (tail!821 lt!261518)) (tail!821 (tail!821 lt!261551))))))

(declare-fun b!612409 () Bool)

(declare-fun e!371145 () Bool)

(assert (=> b!612409 (= e!371145 e!371144)))

(declare-fun res!266162 () Bool)

(assert (=> b!612409 (=> (not res!266162) (not e!371144))))

(assert (=> b!612409 (= res!266162 (not ((_ is Nil!6114) (tail!821 lt!261551))))))

(declare-fun b!612410 () Bool)

(declare-fun res!266163 () Bool)

(assert (=> b!612410 (=> (not res!266163) (not e!371144))))

(assert (=> b!612410 (= res!266163 (= (head!1292 (tail!821 lt!261518)) (head!1292 (tail!821 lt!261551))))))

(declare-fun d!215840 () Bool)

(declare-fun e!371143 () Bool)

(assert (=> d!215840 e!371143))

(declare-fun res!266160 () Bool)

(assert (=> d!215840 (=> res!266160 e!371143)))

(declare-fun lt!262184 () Bool)

(assert (=> d!215840 (= res!266160 (not lt!262184))))

(assert (=> d!215840 (= lt!262184 e!371145)))

(declare-fun res!266161 () Bool)

(assert (=> d!215840 (=> res!266161 e!371145)))

(assert (=> d!215840 (= res!266161 ((_ is Nil!6114) (tail!821 lt!261518)))))

(assert (=> d!215840 (= (isPrefix!853 (tail!821 lt!261518) (tail!821 lt!261551)) lt!262184)))

(declare-fun b!612412 () Bool)

(assert (=> b!612412 (= e!371143 (>= (size!4808 (tail!821 lt!261551)) (size!4808 (tail!821 lt!261518))))))

(assert (= (and d!215840 (not res!266161)) b!612409))

(assert (= (and b!612409 res!266162) b!612410))

(assert (= (and b!612410 res!266163) b!612411))

(assert (= (and d!215840 (not res!266160)) b!612412))

(assert (=> b!612411 m!879201))

(declare-fun m!880895 () Bool)

(assert (=> b!612411 m!880895))

(assert (=> b!612411 m!879203))

(declare-fun m!880897 () Bool)

(assert (=> b!612411 m!880897))

(assert (=> b!612411 m!880895))

(assert (=> b!612411 m!880897))

(declare-fun m!880899 () Bool)

(assert (=> b!612411 m!880899))

(assert (=> b!612410 m!879201))

(declare-fun m!880901 () Bool)

(assert (=> b!612410 m!880901))

(assert (=> b!612410 m!879203))

(declare-fun m!880903 () Bool)

(assert (=> b!612410 m!880903))

(assert (=> b!612412 m!879203))

(declare-fun m!880905 () Bool)

(assert (=> b!612412 m!880905))

(assert (=> b!612412 m!879201))

(declare-fun m!880907 () Bool)

(assert (=> b!612412 m!880907))

(assert (=> b!611319 d!215840))

(declare-fun d!215842 () Bool)

(assert (=> d!215842 (= (tail!821 lt!261518) (t!80905 lt!261518))))

(assert (=> b!611319 d!215842))

(declare-fun d!215844 () Bool)

(assert (=> d!215844 (= (tail!821 lt!261551) (t!80905 lt!261551))))

(assert (=> b!611319 d!215844))

(declare-fun d!215846 () Bool)

(assert (=> d!215846 (= (isEmpty!4415 lt!261565) (not ((_ is Some!1575) lt!261565)))))

(assert (=> d!214976 d!215846))

(assert (=> d!214976 d!215164))

(assert (=> d!214976 d!215172))

(assert (=> d!214976 d!215324))

(declare-fun d!215848 () Bool)

(declare-fun lt!262185 () Int)

(assert (=> d!215848 (>= lt!262185 0)))

(declare-fun e!371146 () Int)

(assert (=> d!215848 (= lt!262185 e!371146)))

(declare-fun c!113269 () Bool)

(assert (=> d!215848 (= c!113269 ((_ is Nil!6114) (t!80905 lt!261545)))))

(assert (=> d!215848 (= (size!4808 (t!80905 lt!261545)) lt!262185)))

(declare-fun b!612413 () Bool)

(assert (=> b!612413 (= e!371146 0)))

(declare-fun b!612414 () Bool)

(assert (=> b!612414 (= e!371146 (+ 1 (size!4808 (t!80905 (t!80905 lt!261545)))))))

(assert (= (and d!215848 c!113269) b!612413))

(assert (= (and d!215848 (not c!113269)) b!612414))

(declare-fun m!880909 () Bool)

(assert (=> b!612414 m!880909))

(assert (=> b!611326 d!215848))

(declare-fun d!215850 () Bool)

(declare-fun c!113270 () Bool)

(assert (=> d!215850 (= c!113270 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))))))

(declare-fun e!371147 () Bool)

(assert (=> d!215850 (= (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))) e!371147)))

(declare-fun b!612415 () Bool)

(assert (=> b!612415 (= e!371147 (inv!7786 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))))))

(declare-fun b!612416 () Bool)

(declare-fun e!371148 () Bool)

(assert (=> b!612416 (= e!371147 e!371148)))

(declare-fun res!266164 () Bool)

(assert (=> b!612416 (= res!266164 (not ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))))))))

(assert (=> b!612416 (=> res!266164 e!371148)))

(declare-fun b!612417 () Bool)

(assert (=> b!612417 (= e!371148 (inv!7787 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))))))

(assert (= (and d!215850 c!113270) b!612415))

(assert (= (and d!215850 (not c!113270)) b!612416))

(assert (= (and b!612416 (not res!266164)) b!612417))

(declare-fun m!880911 () Bool)

(assert (=> b!612415 m!880911))

(declare-fun m!880913 () Bool)

(assert (=> b!612417 m!880913))

(assert (=> b!610981 d!215850))

(assert (=> b!611303 d!215410))

(assert (=> b!611303 d!215120))

(assert (=> b!611385 d!215260))

(assert (=> d!215206 d!215214))

(declare-fun b!612420 () Bool)

(declare-fun e!371150 () Bool)

(assert (=> b!612420 (= e!371150 (isPrefix!853 (tail!821 lt!261518) (tail!821 (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554))))))))

(declare-fun b!612418 () Bool)

(declare-fun e!371151 () Bool)

(assert (=> b!612418 (= e!371151 e!371150)))

(declare-fun res!266167 () Bool)

(assert (=> b!612418 (=> (not res!266167) (not e!371150))))

(assert (=> b!612418 (= res!266167 (not ((_ is Nil!6114) (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554))))))))

(declare-fun b!612419 () Bool)

(declare-fun res!266168 () Bool)

(assert (=> b!612419 (=> (not res!266168) (not e!371150))))

(assert (=> b!612419 (= res!266168 (= (head!1292 lt!261518) (head!1292 (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554))))))))

(declare-fun d!215852 () Bool)

(declare-fun e!371149 () Bool)

(assert (=> d!215852 e!371149))

(declare-fun res!266165 () Bool)

(assert (=> d!215852 (=> res!266165 e!371149)))

(declare-fun lt!262186 () Bool)

(assert (=> d!215852 (= res!266165 (not lt!262186))))

(assert (=> d!215852 (= lt!262186 e!371151)))

(declare-fun res!266166 () Bool)

(assert (=> d!215852 (=> res!266166 e!371151)))

(assert (=> d!215852 (= res!266166 ((_ is Nil!6114) lt!261518))))

(assert (=> d!215852 (= (isPrefix!853 lt!261518 (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554)))) lt!262186)))

(declare-fun b!612421 () Bool)

(assert (=> b!612421 (= e!371149 (>= (size!4808 (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554)))) (size!4808 lt!261518)))))

(assert (= (and d!215852 (not res!266166)) b!612418))

(assert (= (and b!612418 res!266167) b!612419))

(assert (= (and b!612419 res!266168) b!612420))

(assert (= (and d!215852 (not res!266165)) b!612421))

(assert (=> b!612420 m!879201))

(assert (=> b!612420 m!878663))

(declare-fun m!880915 () Bool)

(assert (=> b!612420 m!880915))

(assert (=> b!612420 m!879201))

(assert (=> b!612420 m!880915))

(declare-fun m!880917 () Bool)

(assert (=> b!612420 m!880917))

(assert (=> b!612419 m!879207))

(assert (=> b!612419 m!878663))

(declare-fun m!880919 () Bool)

(assert (=> b!612419 m!880919))

(assert (=> b!612421 m!878663))

(declare-fun m!880921 () Bool)

(assert (=> b!612421 m!880921))

(assert (=> b!612421 m!878645))

(assert (=> d!215170 d!215852))

(assert (=> d!215170 d!215190))

(declare-fun d!215854 () Bool)

(assert (=> d!215854 (isPrefix!853 lt!261518 (++!1713 lt!261518 (_2!3755 (v!16484 lt!261554))))))

(assert (=> d!215854 true))

(declare-fun _$46!1013 () Unit!11182)

(assert (=> d!215854 (= (choose!4500 lt!261518 (_2!3755 (v!16484 lt!261554))) _$46!1013)))

(declare-fun bs!71691 () Bool)

(assert (= bs!71691 d!215854))

(assert (=> bs!71691 m!878663))

(assert (=> bs!71691 m!878663))

(assert (=> bs!71691 m!879195))

(assert (=> d!215170 d!215854))

(declare-fun d!215856 () Bool)

(assert (=> d!215856 (= (inv!7775 (tag!1487 (h!11516 (t!80906 rules!3103)))) (= (mod (str.len (value!39778 (tag!1487 (h!11516 (t!80906 rules!3103))))) 2) 0))))

(assert (=> b!611428 d!215856))

(declare-fun d!215858 () Bool)

(declare-fun res!266169 () Bool)

(declare-fun e!371152 () Bool)

(assert (=> d!215858 (=> (not res!266169) (not e!371152))))

(assert (=> d!215858 (= res!266169 (semiInverseModEq!492 (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103))))))))

(assert (=> d!215858 (= (inv!7778 (transformation!1225 (h!11516 (t!80906 rules!3103)))) e!371152)))

(declare-fun b!612422 () Bool)

(assert (=> b!612422 (= e!371152 (equivClasses!475 (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103))))))))

(assert (= (and d!215858 res!266169) b!612422))

(declare-fun m!880923 () Bool)

(assert (=> d!215858 m!880923))

(declare-fun m!880925 () Bool)

(assert (=> b!612422 m!880925))

(assert (=> b!611428 d!215858))

(declare-fun d!215860 () Bool)

(declare-fun res!266174 () Bool)

(declare-fun e!371157 () Bool)

(assert (=> d!215860 (=> res!266174 e!371157)))

(assert (=> d!215860 (= res!266174 ((_ is Nil!6115) rules!3103))))

(assert (=> d!215860 (= (noDuplicateTag!456 thiss!22590 rules!3103 Nil!6117) e!371157)))

(declare-fun b!612427 () Bool)

(declare-fun e!371158 () Bool)

(assert (=> b!612427 (= e!371157 e!371158)))

(declare-fun res!266175 () Bool)

(assert (=> b!612427 (=> (not res!266175) (not e!371158))))

(declare-fun contains!1443 (List!6127 String!7989) Bool)

(assert (=> b!612427 (= res!266175 (not (contains!1443 Nil!6117 (tag!1487 (h!11516 rules!3103)))))))

(declare-fun b!612428 () Bool)

(assert (=> b!612428 (= e!371158 (noDuplicateTag!456 thiss!22590 (t!80906 rules!3103) (Cons!6117 (tag!1487 (h!11516 rules!3103)) Nil!6117)))))

(assert (= (and d!215860 (not res!266174)) b!612427))

(assert (= (and b!612427 res!266175) b!612428))

(declare-fun m!880929 () Bool)

(assert (=> b!612427 m!880929))

(declare-fun m!880935 () Bool)

(assert (=> b!612428 m!880935))

(assert (=> b!611291 d!215860))

(assert (=> b!611381 d!215346))

(assert (=> b!611381 d!215284))

(declare-fun b!612437 () Bool)

(declare-fun b_free!17437 () Bool)

(declare-fun b_next!17453 () Bool)

(assert (=> b!612437 (= b_free!17437 (not b_next!17453))))

(declare-fun t!81128 () Bool)

(declare-fun tb!53527 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!81128) tb!53527))

(declare-fun result!60266 () Bool)

(assert (= result!60266 result!60170))

(assert (=> d!215430 t!81128))

(declare-fun t!81130 () Bool)

(declare-fun tb!53529 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81130) tb!53529))

(declare-fun result!60268 () Bool)

(assert (= result!60268 result!60218))

(assert (=> d!215656 t!81130))

(declare-fun tb!53531 () Bool)

(declare-fun t!81132 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81132) tb!53531))

(declare-fun result!60270 () Bool)

(assert (= result!60270 result!60206))

(assert (=> d!215526 t!81132))

(declare-fun tb!53533 () Bool)

(declare-fun t!81134 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81134) tb!53533))

(declare-fun result!60272 () Bool)

(assert (= result!60272 result!60224))

(assert (=> d!215672 t!81134))

(declare-fun tb!53535 () Bool)

(declare-fun t!81136 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81136) tb!53535))

(declare-fun result!60274 () Bool)

(assert (= result!60274 result!60042))

(assert (=> d!215000 t!81136))

(declare-fun t!81138 () Bool)

(declare-fun tb!53537 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81138) tb!53537))

(declare-fun result!60276 () Bool)

(assert (= result!60276 result!60158))

(assert (=> d!215402 t!81138))

(assert (=> d!215514 t!81132))

(assert (=> d!215406 t!81138))

(assert (=> d!215030 t!81136))

(declare-fun t!81140 () Bool)

(declare-fun tb!53539 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81140) tb!53539))

(declare-fun result!60278 () Bool)

(assert (= result!60278 result!60236))

(assert (=> d!215700 t!81140))

(declare-fun t!81142 () Bool)

(declare-fun tb!53541 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81142) tb!53541))

(declare-fun result!60280 () Bool)

(assert (= result!60280 result!60242))

(assert (=> d!215758 t!81142))

(declare-fun t!81144 () Bool)

(declare-fun tb!53543 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81144) tb!53543))

(declare-fun result!60282 () Bool)

(assert (= result!60282 result!60140))

(assert (=> d!215278 t!81144))

(declare-fun tb!53547 () Bool)

(declare-fun t!81148 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81148) tb!53547))

(declare-fun result!60286 () Bool)

(assert (= result!60286 result!60074))

(assert (=> d!215202 t!81148))

(declare-fun t!81150 () Bool)

(declare-fun tb!53549 () Bool)

(assert (=> (and b!612437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 token!491)))) t!81150) tb!53549))

(declare-fun result!60288 () Bool)

(assert (= result!60288 result!60078))

(assert (=> d!215114 t!81150))

(assert (=> d!215110 t!81148))

(declare-fun tp!189303 () Bool)

(declare-fun b_and!60703 () Bool)

(assert (=> b!612437 (= tp!189303 (and (=> t!81130 result!60268) (=> t!81142 result!60280) (=> t!81150 result!60288) (=> t!81138 result!60276) (=> t!81134 result!60272) (=> t!81136 result!60274) (=> t!81144 result!60282) (=> t!81140 result!60278) (=> t!81132 result!60270) (=> t!81128 result!60266) (=> t!81148 result!60286) b_and!60703))))

(declare-fun b_free!17439 () Bool)

(declare-fun b_next!17455 () Bool)

(assert (=> b!612437 (= b_free!17439 (not b_next!17455))))

(declare-fun tb!53555 () Bool)

(declare-fun t!81156 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261736)))))) t!81156) tb!53555))

(declare-fun result!60294 () Bool)

(assert (= result!60294 result!60134))

(assert (=> d!215268 t!81156))

(declare-fun t!81158 () Bool)

(declare-fun tb!53557 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!81158) tb!53557))

(declare-fun result!60296 () Bool)

(assert (= result!60296 result!60164))

(assert (=> d!215406 t!81158))

(declare-fun t!81160 () Bool)

(declare-fun tb!53559 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261605)))))) t!81160) tb!53559))

(declare-fun result!60298 () Bool)

(assert (= result!60298 result!60152))

(assert (=> d!215386 t!81160))

(declare-fun tb!53561 () Bool)

(declare-fun t!81162 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!81162) tb!53561))

(declare-fun result!60300 () Bool)

(assert (= result!60300 result!60030))

(assert (=> b!610975 t!81162))

(declare-fun tb!53563 () Bool)

(declare-fun t!81164 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81164) tb!53563))

(declare-fun result!60302 () Bool)

(assert (= result!60302 result!60200))

(assert (=> d!215514 t!81164))

(assert (=> d!215136 t!81162))

(declare-fun t!81166 () Bool)

(declare-fun tb!53565 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81166) tb!53565))

(declare-fun result!60304 () Bool)

(assert (= result!60304 result!60082))

(assert (=> d!215158 t!81166))

(declare-fun tb!53567 () Bool)

(declare-fun t!81168 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261565)))))) t!81168) tb!53567))

(declare-fun result!60306 () Bool)

(assert (= result!60306 result!60178))

(assert (=> d!215452 t!81168))

(declare-fun tb!53569 () Bool)

(declare-fun t!81170 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554)))))) t!81170) tb!53569))

(declare-fun result!60308 () Bool)

(assert (= result!60308 result!60070))

(assert (=> d!215110 t!81170))

(declare-fun tb!53571 () Bool)

(declare-fun t!81172 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 token!491)))) t!81172) tb!53571))

(declare-fun result!60310 () Bool)

(assert (= result!60310 result!60066))

(assert (=> d!215030 t!81172))

(declare-fun tb!53573 () Bool)

(declare-fun t!81174 () Bool)

(assert (=> (and b!612437 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (get!2352 lt!261656)))))) t!81174) tb!53573))

(declare-fun result!60312 () Bool)

(assert (= result!60312 result!60146))

(assert (=> d!215332 t!81174))

(declare-fun b_and!60711 () Bool)

(declare-fun tp!189301 () Bool)

(assert (=> b!612437 (= tp!189301 (and (=> t!81160 result!60298) (=> t!81168 result!60306) (=> t!81164 result!60302) (=> t!81156 result!60294) (=> t!81174 result!60312) (=> t!81172 result!60310) (=> t!81170 result!60308) (=> t!81158 result!60296) (=> t!81166 result!60304) (=> t!81162 result!60300) b_and!60711))))

(declare-fun e!371164 () Bool)

(assert (=> b!612437 (= e!371164 (and tp!189303 tp!189301))))

(declare-fun e!371163 () Bool)

(declare-fun b!612436 () Bool)

(declare-fun tp!189302 () Bool)

(assert (=> b!612436 (= e!371163 (and tp!189302 (inv!7775 (tag!1487 (h!11516 (t!80906 (t!80906 rules!3103))))) (inv!7778 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) e!371164))))

(declare-fun b!612435 () Bool)

(declare-fun e!371166 () Bool)

(declare-fun tp!189304 () Bool)

(assert (=> b!612435 (= e!371166 (and e!371163 tp!189304))))

(assert (=> b!611427 (= tp!189227 e!371166)))

(assert (= b!612436 b!612437))

(assert (= b!612435 b!612436))

(assert (= (and b!611427 ((_ is Cons!6115) (t!80906 (t!80906 rules!3103)))) b!612435))

(declare-fun m!880955 () Bool)

(assert (=> b!612436 m!880955))

(declare-fun m!880957 () Bool)

(assert (=> b!612436 m!880957))

(declare-fun b!612449 () Bool)

(declare-fun e!371175 () Bool)

(declare-fun tp!189305 () Bool)

(assert (=> b!612449 (= e!371175 (and tp_is_empty!3473 tp!189305))))

(assert (=> b!611463 (= tp!189252 e!371175)))

(assert (= (and b!611463 ((_ is Cons!6114) (t!80905 (t!80905 input!2705)))) b!612449))

(declare-fun b!612452 () Bool)

(declare-fun e!371176 () Bool)

(declare-fun tp!189306 () Bool)

(assert (=> b!612452 (= e!371176 tp!189306)))

(declare-fun b!612451 () Bool)

(declare-fun tp!189307 () Bool)

(declare-fun tp!189310 () Bool)

(assert (=> b!612451 (= e!371176 (and tp!189307 tp!189310))))

(declare-fun b!612453 () Bool)

(declare-fun tp!189309 () Bool)

(declare-fun tp!189308 () Bool)

(assert (=> b!612453 (= e!371176 (and tp!189309 tp!189308))))

(assert (=> b!611452 (= tp!189241 e!371176)))

(declare-fun b!612450 () Bool)

(assert (=> b!612450 (= e!371176 tp_is_empty!3473)))

(assert (= (and b!611452 ((_ is ElementMatch!1559) (regOne!3631 (regex!1225 (rule!2015 token!491))))) b!612450))

(assert (= (and b!611452 ((_ is Concat!2808) (regOne!3631 (regex!1225 (rule!2015 token!491))))) b!612451))

(assert (= (and b!611452 ((_ is Star!1559) (regOne!3631 (regex!1225 (rule!2015 token!491))))) b!612452))

(assert (= (and b!611452 ((_ is Union!1559) (regOne!3631 (regex!1225 (rule!2015 token!491))))) b!612453))

(declare-fun b!612456 () Bool)

(declare-fun e!371177 () Bool)

(declare-fun tp!189311 () Bool)

(assert (=> b!612456 (= e!371177 tp!189311)))

(declare-fun b!612455 () Bool)

(declare-fun tp!189312 () Bool)

(declare-fun tp!189315 () Bool)

(assert (=> b!612455 (= e!371177 (and tp!189312 tp!189315))))

(declare-fun b!612457 () Bool)

(declare-fun tp!189314 () Bool)

(declare-fun tp!189313 () Bool)

(assert (=> b!612457 (= e!371177 (and tp!189314 tp!189313))))

(assert (=> b!611452 (= tp!189240 e!371177)))

(declare-fun b!612454 () Bool)

(assert (=> b!612454 (= e!371177 tp_is_empty!3473)))

(assert (= (and b!611452 ((_ is ElementMatch!1559) (regTwo!3631 (regex!1225 (rule!2015 token!491))))) b!612454))

(assert (= (and b!611452 ((_ is Concat!2808) (regTwo!3631 (regex!1225 (rule!2015 token!491))))) b!612455))

(assert (= (and b!611452 ((_ is Star!1559) (regTwo!3631 (regex!1225 (rule!2015 token!491))))) b!612456))

(assert (= (and b!611452 ((_ is Union!1559) (regTwo!3631 (regex!1225 (rule!2015 token!491))))) b!612457))

(declare-fun b!612460 () Bool)

(declare-fun e!371178 () Bool)

(declare-fun tp!189316 () Bool)

(assert (=> b!612460 (= e!371178 tp!189316)))

(declare-fun b!612459 () Bool)

(declare-fun tp!189317 () Bool)

(declare-fun tp!189320 () Bool)

(assert (=> b!612459 (= e!371178 (and tp!189317 tp!189320))))

(declare-fun b!612461 () Bool)

(declare-fun tp!189319 () Bool)

(declare-fun tp!189318 () Bool)

(assert (=> b!612461 (= e!371178 (and tp!189319 tp!189318))))

(assert (=> b!611451 (= tp!189238 e!371178)))

(declare-fun b!612458 () Bool)

(assert (=> b!612458 (= e!371178 tp_is_empty!3473)))

(assert (= (and b!611451 ((_ is ElementMatch!1559) (reg!1888 (regex!1225 (rule!2015 token!491))))) b!612458))

(assert (= (and b!611451 ((_ is Concat!2808) (reg!1888 (regex!1225 (rule!2015 token!491))))) b!612459))

(assert (= (and b!611451 ((_ is Star!1559) (reg!1888 (regex!1225 (rule!2015 token!491))))) b!612460))

(assert (= (and b!611451 ((_ is Union!1559) (reg!1888 (regex!1225 (rule!2015 token!491))))) b!612461))

(declare-fun b!612462 () Bool)

(declare-fun e!371179 () Bool)

(declare-fun tp!189321 () Bool)

(assert (=> b!612462 (= e!371179 (and tp_is_empty!3473 tp!189321))))

(assert (=> b!611462 (= tp!189251 e!371179)))

(assert (= (and b!611462 ((_ is Cons!6114) (t!80905 (originalCharacters!1264 token!491)))) b!612462))

(declare-fun b!612465 () Bool)

(declare-fun e!371180 () Bool)

(declare-fun tp!189322 () Bool)

(assert (=> b!612465 (= e!371180 tp!189322)))

(declare-fun b!612464 () Bool)

(declare-fun tp!189323 () Bool)

(declare-fun tp!189326 () Bool)

(assert (=> b!612464 (= e!371180 (and tp!189323 tp!189326))))

(declare-fun b!612466 () Bool)

(declare-fun tp!189325 () Bool)

(declare-fun tp!189324 () Bool)

(assert (=> b!612466 (= e!371180 (and tp!189325 tp!189324))))

(assert (=> b!611450 (= tp!189239 e!371180)))

(declare-fun b!612463 () Bool)

(assert (=> b!612463 (= e!371180 tp_is_empty!3473)))

(assert (= (and b!611450 ((_ is ElementMatch!1559) (regOne!3630 (regex!1225 (rule!2015 token!491))))) b!612463))

(assert (= (and b!611450 ((_ is Concat!2808) (regOne!3630 (regex!1225 (rule!2015 token!491))))) b!612464))

(assert (= (and b!611450 ((_ is Star!1559) (regOne!3630 (regex!1225 (rule!2015 token!491))))) b!612465))

(assert (= (and b!611450 ((_ is Union!1559) (regOne!3630 (regex!1225 (rule!2015 token!491))))) b!612466))

(declare-fun b!612469 () Bool)

(declare-fun e!371181 () Bool)

(declare-fun tp!189327 () Bool)

(assert (=> b!612469 (= e!371181 tp!189327)))

(declare-fun b!612468 () Bool)

(declare-fun tp!189328 () Bool)

(declare-fun tp!189331 () Bool)

(assert (=> b!612468 (= e!371181 (and tp!189328 tp!189331))))

(declare-fun b!612470 () Bool)

(declare-fun tp!189330 () Bool)

(declare-fun tp!189329 () Bool)

(assert (=> b!612470 (= e!371181 (and tp!189330 tp!189329))))

(assert (=> b!611450 (= tp!189242 e!371181)))

(declare-fun b!612467 () Bool)

(assert (=> b!612467 (= e!371181 tp_is_empty!3473)))

(assert (= (and b!611450 ((_ is ElementMatch!1559) (regTwo!3630 (regex!1225 (rule!2015 token!491))))) b!612467))

(assert (= (and b!611450 ((_ is Concat!2808) (regTwo!3630 (regex!1225 (rule!2015 token!491))))) b!612468))

(assert (= (and b!611450 ((_ is Star!1559) (regTwo!3630 (regex!1225 (rule!2015 token!491))))) b!612469))

(assert (= (and b!611450 ((_ is Union!1559) (regTwo!3630 (regex!1225 (rule!2015 token!491))))) b!612470))

(declare-fun tp!189339 () Bool)

(declare-fun tp!189338 () Bool)

(declare-fun b!612479 () Bool)

(declare-fun e!371187 () Bool)

(assert (=> b!612479 (= e!371187 (and (inv!7780 (left!4895 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))) tp!189338 (inv!7780 (right!5225 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))) tp!189339))))

(declare-fun b!612481 () Bool)

(declare-fun e!371186 () Bool)

(declare-fun tp!189340 () Bool)

(assert (=> b!612481 (= e!371186 tp!189340)))

(declare-fun b!612480 () Bool)

(declare-fun inv!7788 (IArray!3885) Bool)

(assert (=> b!612480 (= e!371187 (and (inv!7788 (xs!4579 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))) e!371186))))

(assert (=> b!611170 (= tp!189213 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519)))) e!371187))))

(assert (= (and b!611170 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))) b!612479))

(assert (= b!612480 b!612481))

(assert (= (and b!611170 ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))))) b!612480))

(declare-fun m!880959 () Bool)

(assert (=> b!612479 m!880959))

(declare-fun m!880961 () Bool)

(assert (=> b!612479 m!880961))

(declare-fun m!880963 () Bool)

(assert (=> b!612480 m!880963))

(assert (=> b!611170 m!878983))

(declare-fun e!371189 () Bool)

(declare-fun tp!189342 () Bool)

(declare-fun b!612482 () Bool)

(declare-fun tp!189341 () Bool)

(assert (=> b!612482 (= e!371189 (and (inv!7780 (left!4895 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))))) tp!189341 (inv!7780 (right!5225 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))))) tp!189342))))

(declare-fun b!612484 () Bool)

(declare-fun e!371188 () Bool)

(declare-fun tp!189343 () Bool)

(assert (=> b!612484 (= e!371188 tp!189343)))

(declare-fun b!612483 () Bool)

(assert (=> b!612483 (= e!371189 (and (inv!7788 (xs!4579 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))))) e!371188))))

(assert (=> b!610981 (= tp!189207 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491)))) e!371189))))

(assert (= (and b!610981 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))))) b!612482))

(assert (= b!612483 b!612484))

(assert (= (and b!610981 ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (value!39779 token!491))))) b!612483))

(declare-fun m!880965 () Bool)

(assert (=> b!612482 m!880965))

(declare-fun m!880967 () Bool)

(assert (=> b!612482 m!880967))

(declare-fun m!880969 () Bool)

(assert (=> b!612483 m!880969))

(assert (=> b!610981 m!878741))

(declare-fun e!371191 () Bool)

(declare-fun b!612485 () Bool)

(declare-fun tp!189345 () Bool)

(declare-fun tp!189344 () Bool)

(assert (=> b!612485 (= e!371191 (and (inv!7780 (left!4895 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))))) tp!189344 (inv!7780 (right!5225 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))))) tp!189345))))

(declare-fun b!612487 () Bool)

(declare-fun e!371190 () Bool)

(declare-fun tp!189346 () Bool)

(assert (=> b!612487 (= e!371190 tp!189346)))

(declare-fun b!612486 () Bool)

(assert (=> b!612486 (= e!371191 (and (inv!7788 (xs!4579 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))))) e!371190))))

(assert (=> b!611310 (= tp!189215 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554)))))) e!371191))))

(assert (= (and b!611310 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))))) b!612485))

(assert (= b!612486 b!612487))

(assert (= (and b!611310 ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (value!39779 (_1!3755 (v!16484 lt!261554))))))) b!612486))

(declare-fun m!880971 () Bool)

(assert (=> b!612485 m!880971))

(declare-fun m!880973 () Bool)

(assert (=> b!612485 m!880973))

(declare-fun m!880975 () Bool)

(assert (=> b!612486 m!880975))

(assert (=> b!611310 m!879173))

(declare-fun b!612488 () Bool)

(declare-fun e!371192 () Bool)

(declare-fun tp!189347 () Bool)

(assert (=> b!612488 (= e!371192 (and tp_is_empty!3473 tp!189347))))

(assert (=> b!611461 (= tp!189250 e!371192)))

(assert (= (and b!611461 ((_ is Cons!6114) (t!80905 (t!80905 suffix!1342)))) b!612488))

(declare-fun b!612491 () Bool)

(declare-fun e!371193 () Bool)

(declare-fun tp!189348 () Bool)

(assert (=> b!612491 (= e!371193 tp!189348)))

(declare-fun b!612490 () Bool)

(declare-fun tp!189349 () Bool)

(declare-fun tp!189352 () Bool)

(assert (=> b!612490 (= e!371193 (and tp!189349 tp!189352))))

(declare-fun b!612492 () Bool)

(declare-fun tp!189351 () Bool)

(declare-fun tp!189350 () Bool)

(assert (=> b!612492 (= e!371193 (and tp!189351 tp!189350))))

(assert (=> b!611456 (= tp!189246 e!371193)))

(declare-fun b!612489 () Bool)

(assert (=> b!612489 (= e!371193 tp_is_empty!3473)))

(assert (= (and b!611456 ((_ is ElementMatch!1559) (regOne!3631 (regex!1225 (h!11516 rules!3103))))) b!612489))

(assert (= (and b!611456 ((_ is Concat!2808) (regOne!3631 (regex!1225 (h!11516 rules!3103))))) b!612490))

(assert (= (and b!611456 ((_ is Star!1559) (regOne!3631 (regex!1225 (h!11516 rules!3103))))) b!612491))

(assert (= (and b!611456 ((_ is Union!1559) (regOne!3631 (regex!1225 (h!11516 rules!3103))))) b!612492))

(declare-fun b!612495 () Bool)

(declare-fun e!371194 () Bool)

(declare-fun tp!189353 () Bool)

(assert (=> b!612495 (= e!371194 tp!189353)))

(declare-fun b!612494 () Bool)

(declare-fun tp!189354 () Bool)

(declare-fun tp!189357 () Bool)

(assert (=> b!612494 (= e!371194 (and tp!189354 tp!189357))))

(declare-fun b!612496 () Bool)

(declare-fun tp!189356 () Bool)

(declare-fun tp!189355 () Bool)

(assert (=> b!612496 (= e!371194 (and tp!189356 tp!189355))))

(assert (=> b!611456 (= tp!189245 e!371194)))

(declare-fun b!612493 () Bool)

(assert (=> b!612493 (= e!371194 tp_is_empty!3473)))

(assert (= (and b!611456 ((_ is ElementMatch!1559) (regTwo!3631 (regex!1225 (h!11516 rules!3103))))) b!612493))

(assert (= (and b!611456 ((_ is Concat!2808) (regTwo!3631 (regex!1225 (h!11516 rules!3103))))) b!612494))

(assert (= (and b!611456 ((_ is Star!1559) (regTwo!3631 (regex!1225 (h!11516 rules!3103))))) b!612495))

(assert (= (and b!611456 ((_ is Union!1559) (regTwo!3631 (regex!1225 (h!11516 rules!3103))))) b!612496))

(declare-fun b!612499 () Bool)

(declare-fun e!371195 () Bool)

(declare-fun tp!189358 () Bool)

(assert (=> b!612499 (= e!371195 tp!189358)))

(declare-fun b!612498 () Bool)

(declare-fun tp!189359 () Bool)

(declare-fun tp!189362 () Bool)

(assert (=> b!612498 (= e!371195 (and tp!189359 tp!189362))))

(declare-fun b!612500 () Bool)

(declare-fun tp!189361 () Bool)

(declare-fun tp!189360 () Bool)

(assert (=> b!612500 (= e!371195 (and tp!189361 tp!189360))))

(assert (=> b!611455 (= tp!189243 e!371195)))

(declare-fun b!612497 () Bool)

(assert (=> b!612497 (= e!371195 tp_is_empty!3473)))

(assert (= (and b!611455 ((_ is ElementMatch!1559) (reg!1888 (regex!1225 (h!11516 rules!3103))))) b!612497))

(assert (= (and b!611455 ((_ is Concat!2808) (reg!1888 (regex!1225 (h!11516 rules!3103))))) b!612498))

(assert (= (and b!611455 ((_ is Star!1559) (reg!1888 (regex!1225 (h!11516 rules!3103))))) b!612499))

(assert (= (and b!611455 ((_ is Union!1559) (reg!1888 (regex!1225 (h!11516 rules!3103))))) b!612500))

(declare-fun b!612503 () Bool)

(declare-fun e!371196 () Bool)

(declare-fun tp!189363 () Bool)

(assert (=> b!612503 (= e!371196 tp!189363)))

(declare-fun b!612502 () Bool)

(declare-fun tp!189364 () Bool)

(declare-fun tp!189367 () Bool)

(assert (=> b!612502 (= e!371196 (and tp!189364 tp!189367))))

(declare-fun b!612504 () Bool)

(declare-fun tp!189366 () Bool)

(declare-fun tp!189365 () Bool)

(assert (=> b!612504 (= e!371196 (and tp!189366 tp!189365))))

(assert (=> b!611454 (= tp!189244 e!371196)))

(declare-fun b!612501 () Bool)

(assert (=> b!612501 (= e!371196 tp_is_empty!3473)))

(assert (= (and b!611454 ((_ is ElementMatch!1559) (regOne!3630 (regex!1225 (h!11516 rules!3103))))) b!612501))

(assert (= (and b!611454 ((_ is Concat!2808) (regOne!3630 (regex!1225 (h!11516 rules!3103))))) b!612502))

(assert (= (and b!611454 ((_ is Star!1559) (regOne!3630 (regex!1225 (h!11516 rules!3103))))) b!612503))

(assert (= (and b!611454 ((_ is Union!1559) (regOne!3630 (regex!1225 (h!11516 rules!3103))))) b!612504))

(declare-fun b!612507 () Bool)

(declare-fun e!371197 () Bool)

(declare-fun tp!189368 () Bool)

(assert (=> b!612507 (= e!371197 tp!189368)))

(declare-fun b!612506 () Bool)

(declare-fun tp!189369 () Bool)

(declare-fun tp!189372 () Bool)

(assert (=> b!612506 (= e!371197 (and tp!189369 tp!189372))))

(declare-fun b!612508 () Bool)

(declare-fun tp!189371 () Bool)

(declare-fun tp!189370 () Bool)

(assert (=> b!612508 (= e!371197 (and tp!189371 tp!189370))))

(assert (=> b!611454 (= tp!189247 e!371197)))

(declare-fun b!612505 () Bool)

(assert (=> b!612505 (= e!371197 tp_is_empty!3473)))

(assert (= (and b!611454 ((_ is ElementMatch!1559) (regTwo!3630 (regex!1225 (h!11516 rules!3103))))) b!612505))

(assert (= (and b!611454 ((_ is Concat!2808) (regTwo!3630 (regex!1225 (h!11516 rules!3103))))) b!612506))

(assert (= (and b!611454 ((_ is Star!1559) (regTwo!3630 (regex!1225 (h!11516 rules!3103))))) b!612507))

(assert (= (and b!611454 ((_ is Union!1559) (regTwo!3630 (regex!1225 (h!11516 rules!3103))))) b!612508))

(declare-fun tp!189373 () Bool)

(declare-fun e!371199 () Bool)

(declare-fun tp!189374 () Bool)

(declare-fun b!612509 () Bool)

(assert (=> b!612509 (= e!371199 (and (inv!7780 (left!4895 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))) tp!189373 (inv!7780 (right!5225 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))) tp!189374))))

(declare-fun b!612511 () Bool)

(declare-fun e!371198 () Bool)

(declare-fun tp!189375 () Bool)

(assert (=> b!612511 (= e!371198 tp!189375)))

(declare-fun b!612510 () Bool)

(assert (=> b!612510 (= e!371199 (and (inv!7788 (xs!4579 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))) e!371198))))

(assert (=> b!611212 (= tp!189214 (and (inv!7780 (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539)))) e!371199))))

(assert (= (and b!611212 ((_ is Node!1942) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))) b!612509))

(assert (= b!612510 b!612511))

(assert (= (and b!611212 ((_ is Leaf!3062) (c!112918 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))))) b!612510))

(declare-fun m!880977 () Bool)

(assert (=> b!612509 m!880977))

(declare-fun m!880979 () Bool)

(assert (=> b!612509 m!880979))

(declare-fun m!880981 () Bool)

(assert (=> b!612510 m!880981))

(assert (=> b!611212 m!879077))

(declare-fun b!612514 () Bool)

(declare-fun e!371200 () Bool)

(declare-fun tp!189376 () Bool)

(assert (=> b!612514 (= e!371200 tp!189376)))

(declare-fun b!612513 () Bool)

(declare-fun tp!189377 () Bool)

(declare-fun tp!189380 () Bool)

(assert (=> b!612513 (= e!371200 (and tp!189377 tp!189380))))

(declare-fun b!612515 () Bool)

(declare-fun tp!189379 () Bool)

(declare-fun tp!189378 () Bool)

(assert (=> b!612515 (= e!371200 (and tp!189379 tp!189378))))

(assert (=> b!611428 (= tp!189225 e!371200)))

(declare-fun b!612512 () Bool)

(assert (=> b!612512 (= e!371200 tp_is_empty!3473)))

(assert (= (and b!611428 ((_ is ElementMatch!1559) (regex!1225 (h!11516 (t!80906 rules!3103))))) b!612512))

(assert (= (and b!611428 ((_ is Concat!2808) (regex!1225 (h!11516 (t!80906 rules!3103))))) b!612513))

(assert (= (and b!611428 ((_ is Star!1559) (regex!1225 (h!11516 (t!80906 rules!3103))))) b!612514))

(assert (= (and b!611428 ((_ is Union!1559) (regex!1225 (h!11516 (t!80906 rules!3103))))) b!612515))

(declare-fun b_lambda!24325 () Bool)

(assert (= b_lambda!24237 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!610925 b_free!17425 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!612437 b_free!17437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) b_lambda!24325)))

(declare-fun b_lambda!24327 () Bool)

(assert (= b_lambda!24283 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17425) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!612437 b_free!17437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) b_lambda!24327)))

(declare-fun b_lambda!24329 () Bool)

(assert (= b_lambda!24227 (or (and b!610888 b_free!17423 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!610925 b_free!17427 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!611429 b_free!17431 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!612437 b_free!17439 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) b_lambda!24329)))

(declare-fun b_lambda!24331 () Bool)

(assert (= b_lambda!24279 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17425) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!612437 b_free!17437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) b_lambda!24331)))

(declare-fun b_lambda!24333 () Bool)

(assert (= b_lambda!24303 (or d!215030 b_lambda!24333)))

(declare-fun bs!71699 () Bool)

(declare-fun d!215886 () Bool)

(assert (= bs!71699 (and d!215886 d!215030)))

(assert (=> bs!71699 (= (dynLambda!3557 lambda!16172 lt!261519) (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 token!491))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 token!491))) lt!261519))) (list!2572 lt!261519)))))

(declare-fun b_lambda!24345 () Bool)

(assert (=> (not b_lambda!24345) (not bs!71699)))

(assert (=> bs!71699 t!80936))

(declare-fun b_and!60713 () Bool)

(assert (= b_and!60631 (and (=> t!80936 result!60066) b_and!60713)))

(assert (=> bs!71699 t!80938))

(declare-fun b_and!60715 () Bool)

(assert (= b_and!60633 (and (=> t!80938 result!60068) b_and!60715)))

(assert (=> bs!71699 t!80968))

(declare-fun b_and!60717 () Bool)

(assert (= b_and!60635 (and (=> t!80968 result!60100) b_and!60717)))

(assert (=> bs!71699 t!81172))

(declare-fun b_and!60719 () Bool)

(assert (= b_and!60711 (and (=> t!81172 result!60310) b_and!60719)))

(declare-fun b_lambda!24347 () Bool)

(assert (=> (not b_lambda!24347) (not bs!71699)))

(assert (=> bs!71699 t!80916))

(declare-fun b_and!60721 () Bool)

(assert (= b_and!60679 (and (=> t!80916 result!60042) b_and!60721)))

(assert (=> bs!71699 t!80918))

(declare-fun b_and!60723 () Bool)

(assert (= b_and!60681 (and (=> t!80918 result!60046) b_and!60723)))

(assert (=> bs!71699 t!80958))

(declare-fun b_and!60725 () Bool)

(assert (= b_and!60683 (and (=> t!80958 result!60090) b_and!60725)))

(assert (=> bs!71699 t!81136))

(declare-fun b_and!60727 () Bool)

(assert (= b_and!60703 (and (=> t!81136 result!60274) b_and!60727)))

(assert (=> bs!71699 m!878991))

(assert (=> bs!71699 m!878779))

(assert (=> bs!71699 m!878987))

(assert (=> bs!71699 m!878987))

(assert (=> bs!71699 m!878989))

(assert (=> bs!71699 m!878779))

(assert (=> d!215586 d!215886))

(declare-fun b_lambda!24335 () Bool)

(assert (= b_lambda!24281 (or (and b!610888 b_free!17423 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17427) (and b!611429 b_free!17431 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) (and b!612437 b_free!17439 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 token!491))))) b_lambda!24335)))

(declare-fun b_lambda!24337 () Bool)

(assert (= b_lambda!24275 (or d!215110 b_lambda!24337)))

(declare-fun bs!71700 () Bool)

(declare-fun d!215888 () Bool)

(assert (= bs!71700 (and d!215888 d!215110)))

(assert (=> bs!71700 (= (dynLambda!3557 lambda!16173 lt!261539) (= (list!2572 (dynLambda!3547 (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) (dynLambda!3548 (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))) lt!261539))) (list!2572 lt!261539)))))

(declare-fun b_lambda!24349 () Bool)

(assert (=> (not b_lambda!24349) (not bs!71700)))

(assert (=> bs!71700 t!80940))

(declare-fun b_and!60729 () Bool)

(assert (= b_and!60713 (and (=> t!80940 result!60070) b_and!60729)))

(assert (=> bs!71700 t!80942))

(declare-fun b_and!60731 () Bool)

(assert (= b_and!60715 (and (=> t!80942 result!60072) b_and!60731)))

(assert (=> bs!71700 t!80966))

(declare-fun b_and!60733 () Bool)

(assert (= b_and!60717 (and (=> t!80966 result!60098) b_and!60733)))

(assert (=> bs!71700 t!81170))

(declare-fun b_and!60735 () Bool)

(assert (= b_and!60719 (and (=> t!81170 result!60308) b_and!60735)))

(declare-fun b_lambda!24351 () Bool)

(assert (=> (not b_lambda!24351) (not bs!71700)))

(assert (=> bs!71700 t!80944))

(declare-fun b_and!60737 () Bool)

(assert (= b_and!60721 (and (=> t!80944 result!60074) b_and!60737)))

(assert (=> bs!71700 t!80946))

(declare-fun b_and!60739 () Bool)

(assert (= b_and!60723 (and (=> t!80946 result!60076) b_and!60739)))

(assert (=> bs!71700 t!80956))

(declare-fun b_and!60741 () Bool)

(assert (= b_and!60725 (and (=> t!80956 result!60088) b_and!60741)))

(assert (=> bs!71700 t!81148))

(declare-fun b_and!60743 () Bool)

(assert (= b_and!60727 (and (=> t!81148 result!60286) b_and!60743)))

(assert (=> bs!71700 m!879091))

(assert (=> bs!71700 m!879089))

(assert (=> bs!71700 m!879085))

(assert (=> bs!71700 m!879085))

(assert (=> bs!71700 m!879087))

(assert (=> bs!71700 m!879089))

(assert (=> d!215364 d!215888))

(declare-fun b_lambda!24339 () Bool)

(assert (= b_lambda!24313 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!610925 b_free!17425) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) (and b!612437 b_free!17437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 token!491))))) b_lambda!24339)))

(declare-fun b_lambda!24341 () Bool)

(assert (= b_lambda!24235 (or (and b!610888 b_free!17423 (= (toChars!1991 (transformation!1225 (h!11516 rules!3103))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!610925 b_free!17427 (= (toChars!1991 (transformation!1225 (rule!2015 token!491))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!611429 b_free!17431 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!612437 b_free!17439 (= (toChars!1991 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toChars!1991 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) b_lambda!24341)))

(declare-fun b_lambda!24343 () Bool)

(assert (= b_lambda!24229 (or (and b!610888 b_free!17421 (= (toValue!2132 (transformation!1225 (h!11516 rules!3103))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!610925 b_free!17425 (= (toValue!2132 (transformation!1225 (rule!2015 token!491))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!611429 b_free!17429 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 rules!3103)))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) (and b!612437 b_free!17437 (= (toValue!2132 (transformation!1225 (h!11516 (t!80906 (t!80906 rules!3103))))) (toValue!2132 (transformation!1225 (rule!2015 (_1!3755 (v!16484 lt!261554))))))) b_lambda!24343)))

(check-sat (not b!612408) (not b!612510) (not d!215648) (not b!611601) (not b!612052) (not b_next!17441) (not b!611789) (not bm!40886) (not d!215364) (not b_lambda!24327) (not b!612168) (not b!612461) (not b!612484) (not b!611689) (not b!611786) (not b!612506) (not b!611617) (not d!215452) (not d!215600) (not b!612221) (not bm!40966) (not b!611748) (not bm!40891) (not b!611933) (not b!611788) (not b!612470) (not bm!40927) (not b!611728) (not d!215638) (not b!612459) (not tb!53419) (not d!215274) (not bm!40862) (not d!215670) (not b!612453) (not b!612049) (not d!215292) (not bm!40892) (not b!612369) (not b_lambda!24239) (not b!611607) (not b!611797) (not b!611764) (not b!611711) (not d!215660) (not b_lambda!24247) (not b!612395) (not d!215412) (not b!611841) (not d!215644) (not b!611843) b_and!60737 (not b!611794) (not b!612511) (not b!612485) (not b!612167) (not b!611939) (not bm!40947) (not d!215678) (not b!611872) b_and!60729 (not b!611791) (not b!612435) (not b!611907) (not b!612492) (not d!215460) (not b!612235) (not bm!40888) b_and!60731 (not b!612169) (not b_lambda!24329) (not b!612410) (not b_lambda!24297) (not bm!40894) (not b!612456) (not b!612065) (not b_lambda!24345) (not b!610981) (not b!612033) (not d!215738) (not b!612332) (not tb!53425) (not b!612398) (not b!611606) (not d!215362) (not b!611212) (not tb!53497) (not b!611727) (not b!612171) tp_is_empty!3473 (not b!611721) (not b!611810) (not d!215404) (not d!215280) (not b!611932) (not b!612469) (not b!611710) (not b!612401) (not b!611875) (not b!611622) (not d!215812) (not b!612233) (not b!612012) (not b!612495) (not d!215668) (not tb!53413) (not d!215434) (not bm!40884) (not bm!40890) (not b!611741) (not d!215328) (not b_lambda!24243) (not b_next!17439) (not b!612466) (not b!612491) (not b!612514) (not d!215572) (not b_next!17443) (not b!612389) (not d!215386) (not d!215826) (not b!611706) (not b!611686) (not b!611800) (not d!215266) (not tb!53503) (not d!215342) (not b_next!17447) (not b!612220) (not b!611730) (not tb!53461) (not b_next!17445) (not d!215646) (not b!611966) (not d!215398) (not b!612393) (not b!612494) (not b!611608) (not b!611938) (not b!612455) (not b!612227) (not d!215584) (not b!612504) (not b!611560) (not b_lambda!24271) (not bm!40860) (not b!611707) (not b!611934) (not b!611876) (not tb!53479) (not b!612313) (not bm!40880) (not b!611770) (not d!215718) (not d!215428) (not b!611990) (not d!215358) (not b!612502) (not d!215764) (not d!215546) (not b!612406) (not b!612377) (not b!612412) (not bm!40970) (not bs!71699) (not bm!40961) (not b!612415) (not bm!40949) (not tb!53395) (not b!611989) (not b!612371) (not b!612417) (not b!612452) (not b!611565) (not d!215340) (not b!612382) (not d!215484) (not b!612358) (not b_lambda!24339) (not b!611603) (not b!612058) (not b!611887) (not b!612388) (not b!612460) (not d!215734) (not bm!40951) (not b!611954) (not b!611705) (not d!215332) (not b!612009) (not bm!40928) (not bm!40881) (not b!612265) (not bm!40889) (not d!215544) (not b!611593) (not bm!40893) (not bm!40896) (not d!215510) (not d!215598) (not b!612468) (not b!612048) (not b!612428) (not b!612462) (not b!612308) (not d!215674) (not b!611756) (not b!612237) (not b!612353) b_and!60743 (not tb!53431) (not b!611310) (not d!215384) (not b!611769) (not b_lambda!24245) (not b!612499) (not b!612279) (not b!611596) (not b_lambda!24269) (not b!612199) (not b_next!17455) (not b!612457) (not b_lambda!24325) (not d!215752) (not b_lambda!24295) (not d!215262) (not b!612480) (not d!215836) (not b!612404) (not b!612488) (not b!612030) (not b!612451) (not b_lambda!24289) (not b!612264) (not b!612340) (not b!611988) (not d!215422) (not d!215432) (not b!611694) (not b!612399) (not d!215408) (not b!611773) (not d!215802) (not d!215324) (not b_lambda!24337) (not b!612503) (not d!215414) (not bm!40922) (not b!612066) (not b!611808) (not b_lambda!24349) (not b!611614) (not b!612436) (not d!215438) (not d!215316) (not b!612496) (not b!612384) (not b!612515) (not b!611762) (not b!612047) (not b!612256) (not b!612216) (not b!612267) (not d!215634) (not d!215360) (not d!215586) (not d!215716) (not b!612234) (not b!612206) (not b!612373) b_and!60739 (not d!215420) (not b!612498) (not b!612386) (not b!611563) (not b!612507) (not b!612479) (not b!611955) (not bm!40895) (not b!612367) (not d!215854) (not d!215834) (not b!612387) (not b!611700) (not d!215582) (not b!612336) (not b!611733) (not b!612490) (not b!612062) (not bm!40882) (not b_lambda!24277) (not d!215536) (not b!612040) (not b!612173) (not tb!53407) (not b_lambda!24335) (not b!612307) (not b!611561) (not b!611595) (not b!612394) (not b!612312) (not b_lambda!24341) (not b!611620) (not d!215588) (not tb!53439) (not d!215352) (not b!612219) (not b!611737) (not b!612427) (not b!611805) (not b!611697) (not d!215676) (not b!611779) (not b_lambda!24305) (not b!611621) (not tb!53401) (not b!611732) (not b!611936) (not bm!40885) (not b!611724) (not d!215858) (not b!611812) (not b!611777) (not b_lambda!24347) (not b!612230) (not b_lambda!24273) (not b!612010) (not b_lambda!24311) (not b!611746) (not d!215576) (not b!612500) (not b!611740) (not d!215498) (not d!215294) (not b!611912) (not b!611760) (not b!612226) (not b_lambda!24285) b_and!60733 (not b!612508) (not b!612390) (not b!611787) (not tb!53485) (not b!612020) (not d!215818) (not b!612174) (not b!612170) (not b!612509) (not b_lambda!24307) (not b!612348) (not b!612326) (not b!611703) (not d!215514) (not b!612483) (not b_lambda!24333) (not bm!40968) (not b!611600) b_and!60741 (not d!215822) (not b!612309) (not b_lambda!24241) (not b!611868) (not b!612342) (not bm!40887) (not b!612513) (not b!611782) (not d!215282) (not b_next!17453) (not b!612333) (not b!611559) (not d!215272) (not b!611170) (not bm!40883) (not d!215658) (not bs!71700) (not b!611964) (not b!612419) (not b!612420) (not b!612197) (not bm!40925) (not b!611815) (not b!611776) (not b!612041) (not b!611869) (not b!611702) (not b!612421) (not b!612013) (not b!611758) (not d!215450) (not tb!53467) (not b!612449) (not b!611973) (not b!612392) (not b!612414) (not b!612403) (not b_lambda!24343) (not b!612257) (not b!611717) (not d!215650) (not b!611718) (not b!611701) (not b!612422) (not b!611877) (not b_lambda!24351) (not b_lambda!24301) (not d!215268) (not b!612481) (not b!612375) (not bm!40859) (not d!215336) (not d!215334) (not b!612044) (not b!611745) (not bm!40960) (not d!215770) (not b!611722) (not b!611935) (not b!611598) (not b!612213) (not b_next!17437) (not b!612486) (not d!215322) (not d!215630) (not d!215652) (not d!215580) (not d!215406) (not d!215602) (not bm!40923) (not b!612360) (not b!612067) (not d!215382) (not bm!40921) (not b!612397) b_and!60735 (not b!612051) (not b!612059) (not b!612465) (not d!215476) (not d!215254) (not b!612034) (not b!612411) (not b!611785) (not b!611937) (not b!612338) (not b!612487) (not b!612205) (not d!215500) (not b!612143) (not b!612212) (not b!612482) (not b!611699) (not b!612172) (not b!612263) (not b!611613) (not b!611588) (not b!612260) (not d!215530) (not b!611750) (not d!215418) (not b!611778) (not b!612337) (not b!612464) (not d!215296) (not d!215570) (not d!215330) (not b_lambda!24331) (not d!215592) (not b_lambda!24249) (not d!215392) (not d!215590) (not b!611744) (not b!611712) (not b!611708))
(check-sat (not b_next!17441) b_and!60731 (not b_next!17439) (not b_next!17443) b_and!60743 (not b_next!17455) b_and!60739 b_and!60733 b_and!60741 (not b_next!17453) (not b_next!17437) b_and!60735 b_and!60729 b_and!60737 (not b_next!17447) (not b_next!17445))
