; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20510 () Bool)

(assert start!20510)

(declare-fun b!190106 () Bool)

(declare-fun b_free!7569 () Bool)

(declare-fun b_next!7569 () Bool)

(assert (=> b!190106 (= b_free!7569 (not b_next!7569))))

(declare-fun tp!88545 () Bool)

(declare-fun b_and!13173 () Bool)

(assert (=> b!190106 (= tp!88545 b_and!13173)))

(declare-fun b_free!7571 () Bool)

(declare-fun b_next!7571 () Bool)

(assert (=> b!190106 (= b_free!7571 (not b_next!7571))))

(declare-fun tp!88544 () Bool)

(declare-fun b_and!13175 () Bool)

(assert (=> b!190106 (= tp!88544 b_and!13175)))

(declare-fun b!190128 () Bool)

(declare-fun b_free!7573 () Bool)

(declare-fun b_next!7573 () Bool)

(assert (=> b!190128 (= b_free!7573 (not b_next!7573))))

(declare-fun tp!88547 () Bool)

(declare-fun b_and!13177 () Bool)

(assert (=> b!190128 (= tp!88547 b_and!13177)))

(declare-fun b_free!7575 () Bool)

(declare-fun b_next!7575 () Bool)

(assert (=> b!190128 (= b_free!7575 (not b_next!7575))))

(declare-fun tp!88538 () Bool)

(declare-fun b_and!13179 () Bool)

(assert (=> b!190128 (= tp!88538 b_and!13179)))

(declare-fun b!190116 () Bool)

(declare-fun b_free!7577 () Bool)

(declare-fun b_next!7577 () Bool)

(assert (=> b!190116 (= b_free!7577 (not b_next!7577))))

(declare-fun tp!88542 () Bool)

(declare-fun b_and!13181 () Bool)

(assert (=> b!190116 (= tp!88542 b_and!13181)))

(declare-fun b_free!7579 () Bool)

(declare-fun b_next!7579 () Bool)

(assert (=> b!190116 (= b_free!7579 (not b_next!7579))))

(declare-fun tp!88540 () Bool)

(declare-fun b_and!13183 () Bool)

(assert (=> b!190116 (= tp!88540 b_and!13183)))

(declare-fun bs!18766 () Bool)

(declare-fun b!190125 () Bool)

(declare-fun b!190101 () Bool)

(assert (= bs!18766 (and b!190125 b!190101)))

(declare-fun lambda!5800 () Int)

(declare-fun lambda!5799 () Int)

(assert (=> bs!18766 (not (= lambda!5800 lambda!5799))))

(declare-fun b!190148 () Bool)

(declare-fun e!116761 () Bool)

(assert (=> b!190148 (= e!116761 true)))

(declare-fun b!190147 () Bool)

(declare-fun e!116760 () Bool)

(assert (=> b!190147 (= e!116760 e!116761)))

(declare-fun b!190146 () Bool)

(declare-fun e!116759 () Bool)

(assert (=> b!190146 (= e!116759 e!116760)))

(assert (=> b!190125 e!116759))

(assert (= b!190147 b!190148))

(assert (= b!190146 b!190147))

(declare-datatypes ((List!3203 0))(
  ( (Nil!3193) (Cons!3193 (h!8590 (_ BitVec 16)) (t!28889 List!3203)) )
))
(declare-datatypes ((TokenValue!609 0))(
  ( (FloatLiteralValue!1218 (text!4708 List!3203)) (TokenValueExt!608 (__x!2705 Int)) (Broken!3045 (value!21019 List!3203)) (Object!618) (End!609) (Def!609) (Underscore!609) (Match!609) (Else!609) (Error!609) (Case!609) (If!609) (Extends!609) (Abstract!609) (Class!609) (Val!609) (DelimiterValue!1218 (del!669 List!3203)) (KeywordValue!615 (value!21020 List!3203)) (CommentValue!1218 (value!21021 List!3203)) (WhitespaceValue!1218 (value!21022 List!3203)) (IndentationValue!609 (value!21023 List!3203)) (String!4124) (Int32!609) (Broken!3046 (value!21024 List!3203)) (Boolean!610) (Unit!3005) (OperatorValue!612 (op!669 List!3203)) (IdentifierValue!1218 (value!21025 List!3203)) (IdentifierValue!1219 (value!21026 List!3203)) (WhitespaceValue!1219 (value!21027 List!3203)) (True!1218) (False!1218) (Broken!3047 (value!21028 List!3203)) (Broken!3048 (value!21029 List!3203)) (True!1219) (RightBrace!609) (RightBracket!609) (Colon!609) (Null!609) (Comma!609) (LeftBracket!609) (False!1219) (LeftBrace!609) (ImaginaryLiteralValue!609 (text!4709 List!3203)) (StringLiteralValue!1827 (value!21030 List!3203)) (EOFValue!609 (value!21031 List!3203)) (IdentValue!609 (value!21032 List!3203)) (DelimiterValue!1219 (value!21033 List!3203)) (DedentValue!609 (value!21034 List!3203)) (NewLineValue!609 (value!21035 List!3203)) (IntegerValue!1827 (value!21036 (_ BitVec 32)) (text!4710 List!3203)) (IntegerValue!1828 (value!21037 Int) (text!4711 List!3203)) (Times!609) (Or!609) (Equal!609) (Minus!609) (Broken!3049 (value!21038 List!3203)) (And!609) (Div!609) (LessEqual!609) (Mod!609) (Concat!1420) (Not!609) (Plus!609) (SpaceValue!609 (value!21039 List!3203)) (IntegerValue!1829 (value!21040 Int) (text!4712 List!3203)) (StringLiteralValue!1828 (text!4713 List!3203)) (FloatLiteralValue!1219 (text!4714 List!3203)) (BytesLiteralValue!609 (value!21041 List!3203)) (CommentValue!1219 (value!21042 List!3203)) (StringLiteralValue!1829 (value!21043 List!3203)) (ErrorTokenValue!609 (msg!670 List!3203)) )
))
(declare-datatypes ((C!2544 0))(
  ( (C!2545 (val!1158 Int)) )
))
(declare-datatypes ((List!3204 0))(
  ( (Nil!3194) (Cons!3194 (h!8591 C!2544) (t!28890 List!3204)) )
))
(declare-datatypes ((IArray!1993 0))(
  ( (IArray!1994 (innerList!1054 List!3204)) )
))
(declare-datatypes ((Conc!996 0))(
  ( (Node!996 (left!2520 Conc!996) (right!2850 Conc!996) (csize!2222 Int) (cheight!1207 Int)) (Leaf!1629 (xs!3591 IArray!1993) (csize!2223 Int)) (Empty!996) )
))
(declare-datatypes ((BalanceConc!2000 0))(
  ( (BalanceConc!2001 (c!36383 Conc!996)) )
))
(declare-datatypes ((TokenValueInjection!990 0))(
  ( (TokenValueInjection!991 (toValue!1258 Int) (toChars!1117 Int)) )
))
(declare-datatypes ((String!4125 0))(
  ( (String!4126 (value!21044 String)) )
))
(declare-datatypes ((Regex!811 0))(
  ( (ElementMatch!811 (c!36384 C!2544)) (Concat!1421 (regOne!2134 Regex!811) (regTwo!2134 Regex!811)) (EmptyExpr!811) (Star!811 (reg!1140 Regex!811)) (EmptyLang!811) (Union!811 (regOne!2135 Regex!811) (regTwo!2135 Regex!811)) )
))
(declare-datatypes ((Rule!974 0))(
  ( (Rule!975 (regex!587 Regex!811) (tag!765 String!4125) (isSeparator!587 Bool) (transformation!587 TokenValueInjection!990)) )
))
(declare-datatypes ((List!3205 0))(
  ( (Nil!3195) (Cons!3195 (h!8592 Rule!974) (t!28891 List!3205)) )
))
(declare-fun rules!1920 () List!3205)

(get-info :version)

(assert (= (and b!190125 ((_ is Cons!3195) rules!1920)) b!190146))

(declare-fun order!1997 () Int)

(declare-fun order!1999 () Int)

(declare-fun dynLambda!1351 (Int Int) Int)

(declare-fun dynLambda!1352 (Int Int) Int)

(assert (=> b!190148 (< (dynLambda!1351 order!1997 (toValue!1258 (transformation!587 (h!8592 rules!1920)))) (dynLambda!1352 order!1999 lambda!5800))))

(declare-fun order!2001 () Int)

(declare-fun dynLambda!1353 (Int Int) Int)

(assert (=> b!190148 (< (dynLambda!1353 order!2001 (toChars!1117 (transformation!587 (h!8592 rules!1920)))) (dynLambda!1352 order!1999 lambda!5800))))

(assert (=> b!190125 true))

(declare-fun b!190099 () Bool)

(declare-fun e!116736 () Bool)

(declare-datatypes ((Token!918 0))(
  ( (Token!919 (value!21045 TokenValue!609) (rule!1102 Rule!974) (size!2550 Int) (originalCharacters!630 List!3204)) )
))
(declare-datatypes ((tuple2!3266 0))(
  ( (tuple2!3267 (_1!1849 Token!918) (_2!1849 List!3204)) )
))
(declare-datatypes ((Option!453 0))(
  ( (None!452) (Some!452 (v!13963 tuple2!3266)) )
))
(declare-fun lt!64785 () Option!453)

(declare-datatypes ((List!3206 0))(
  ( (Nil!3196) (Cons!3196 (h!8593 Token!918) (t!28892 List!3206)) )
))
(declare-fun tokens!465 () List!3206)

(declare-fun get!922 (Option!453) tuple2!3266)

(declare-fun head!676 (List!3206) Token!918)

(assert (=> b!190099 (= e!116736 (= (_1!1849 (get!922 lt!64785)) (head!676 tokens!465)))))

(declare-fun e!116722 () Bool)

(declare-fun e!116741 () Bool)

(declare-fun b!190100 () Bool)

(declare-fun tp!88536 () Bool)

(declare-fun inv!4016 (String!4125) Bool)

(declare-fun inv!4019 (TokenValueInjection!990) Bool)

(assert (=> b!190100 (= e!116741 (and tp!88536 (inv!4016 (tag!765 (h!8592 rules!1920))) (inv!4019 (transformation!587 (h!8592 rules!1920))) e!116722))))

(declare-fun res!87008 () Bool)

(declare-fun e!116725 () Bool)

(assert (=> b!190101 (=> (not res!87008) (not e!116725))))

(declare-fun forall!669 (List!3206 Int) Bool)

(assert (=> b!190101 (= res!87008 (forall!669 tokens!465 lambda!5799))))

(declare-fun b!190102 () Bool)

(declare-fun e!116735 () Bool)

(declare-fun e!116723 () Bool)

(assert (=> b!190102 (= e!116735 e!116723)))

(declare-fun res!86995 () Bool)

(assert (=> b!190102 (=> res!86995 e!116723)))

(declare-fun lt!64781 () Bool)

(assert (=> b!190102 (= res!86995 (not lt!64781))))

(declare-fun e!116752 () Bool)

(assert (=> b!190102 e!116752))

(declare-fun res!87012 () Bool)

(assert (=> b!190102 (=> (not res!87012) (not e!116752))))

(declare-fun lt!64786 () tuple2!3266)

(assert (=> b!190102 (= res!87012 (= (_1!1849 lt!64786) (h!8593 tokens!465)))))

(declare-fun lt!64799 () Option!453)

(assert (=> b!190102 (= lt!64786 (get!922 lt!64799))))

(declare-fun isDefined!304 (Option!453) Bool)

(assert (=> b!190102 (isDefined!304 lt!64799)))

(declare-fun lt!64803 () List!3204)

(declare-datatypes ((LexerInterface!473 0))(
  ( (LexerInterfaceExt!470 (__x!2706 Int)) (Lexer!471) )
))
(declare-fun thiss!17480 () LexerInterface!473)

(declare-fun maxPrefix!203 (LexerInterface!473 List!3205 List!3204) Option!453)

(assert (=> b!190102 (= lt!64799 (maxPrefix!203 thiss!17480 rules!1920 lt!64803))))

(declare-fun b!190103 () Bool)

(declare-fun res!87000 () Bool)

(assert (=> b!190103 (=> (not res!87000) (not e!116752))))

(declare-fun isEmpty!1578 (List!3204) Bool)

(assert (=> b!190103 (= res!87000 (isEmpty!1578 (_2!1849 lt!64786)))))

(declare-fun b!190104 () Bool)

(declare-fun res!86996 () Bool)

(declare-fun e!116746 () Bool)

(assert (=> b!190104 (=> res!86996 e!116746)))

(declare-datatypes ((IArray!1995 0))(
  ( (IArray!1996 (innerList!1055 List!3206)) )
))
(declare-datatypes ((Conc!997 0))(
  ( (Node!997 (left!2521 Conc!997) (right!2851 Conc!997) (csize!2224 Int) (cheight!1208 Int)) (Leaf!1630 (xs!3592 IArray!1995) (csize!2225 Int)) (Empty!997) )
))
(declare-datatypes ((BalanceConc!2002 0))(
  ( (BalanceConc!2003 (c!36385 Conc!997)) )
))
(declare-fun isEmpty!1579 (BalanceConc!2002) Bool)

(declare-datatypes ((tuple2!3268 0))(
  ( (tuple2!3269 (_1!1850 BalanceConc!2002) (_2!1850 BalanceConc!2000)) )
))
(declare-fun lex!273 (LexerInterface!473 List!3205 BalanceConc!2000) tuple2!3268)

(declare-fun seqFromList!551 (List!3204) BalanceConc!2000)

(assert (=> b!190104 (= res!86996 (isEmpty!1579 (_1!1850 (lex!273 thiss!17480 rules!1920 (seqFromList!551 lt!64803)))))))

(declare-fun b!190105 () Bool)

(declare-fun res!86997 () Bool)

(declare-fun e!116731 () Bool)

(assert (=> b!190105 (=> (not res!86997) (not e!116731))))

(declare-fun rulesInvariant!439 (LexerInterface!473 List!3205) Bool)

(assert (=> b!190105 (= res!86997 (rulesInvariant!439 thiss!17480 rules!1920))))

(declare-fun e!116739 () Bool)

(assert (=> b!190106 (= e!116739 (and tp!88545 tp!88544))))

(declare-fun b!190107 () Bool)

(declare-fun res!86994 () Bool)

(assert (=> b!190107 (=> (not res!86994) (not e!116725))))

(declare-fun separatorToken!170 () Token!918)

(declare-fun rulesProduceIndividualToken!222 (LexerInterface!473 List!3205 Token!918) Bool)

(assert (=> b!190107 (= res!86994 (rulesProduceIndividualToken!222 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!190108 () Bool)

(declare-fun res!87014 () Bool)

(declare-fun e!116727 () Bool)

(assert (=> b!190108 (=> (not res!87014) (not e!116727))))

(declare-fun lt!64796 () List!3204)

(declare-fun lt!64771 () List!3204)

(declare-fun list!1173 (BalanceConc!2000) List!3204)

(assert (=> b!190108 (= res!87014 (= (list!1173 (seqFromList!551 lt!64796)) lt!64771))))

(declare-fun b!190109 () Bool)

(declare-fun e!116734 () Bool)

(assert (=> b!190109 (= e!116734 e!116736)))

(declare-fun res!87006 () Bool)

(assert (=> b!190109 (=> (not res!87006) (not e!116736))))

(assert (=> b!190109 (= res!87006 (isDefined!304 lt!64785))))

(assert (=> b!190109 (= lt!64785 (maxPrefix!203 thiss!17480 rules!1920 lt!64796))))

(declare-fun b!190110 () Bool)

(declare-fun e!116747 () Bool)

(declare-fun lt!64800 () Rule!974)

(assert (=> b!190110 (= e!116747 (= (rule!1102 separatorToken!170) lt!64800))))

(declare-fun b!190111 () Bool)

(declare-fun e!116742 () Bool)

(declare-fun tp!88546 () Bool)

(assert (=> b!190111 (= e!116742 (and e!116741 tp!88546))))

(declare-fun e!116730 () Bool)

(declare-fun e!116733 () Bool)

(declare-fun b!190112 () Bool)

(declare-fun tp!88539 () Bool)

(declare-fun inv!21 (TokenValue!609) Bool)

(assert (=> b!190112 (= e!116730 (and (inv!21 (value!21045 separatorToken!170)) e!116733 tp!88539))))

(declare-fun b!190113 () Bool)

(declare-fun e!116750 () Bool)

(declare-fun e!116751 () Bool)

(declare-fun tp!88535 () Bool)

(declare-fun inv!4020 (Token!918) Bool)

(assert (=> b!190113 (= e!116750 (and (inv!4020 (h!8593 tokens!465)) e!116751 tp!88535))))

(declare-fun b!190114 () Bool)

(declare-fun res!87005 () Bool)

(assert (=> b!190114 (=> (not res!87005) (not e!116725))))

(declare-fun sepAndNonSepRulesDisjointChars!176 (List!3205 List!3205) Bool)

(assert (=> b!190114 (= res!87005 (sepAndNonSepRulesDisjointChars!176 rules!1920 rules!1920))))

(declare-fun b!190115 () Bool)

(declare-fun res!87010 () Bool)

(assert (=> b!190115 (=> (not res!87010) (not e!116725))))

(assert (=> b!190115 (= res!87010 (isSeparator!587 (rule!1102 separatorToken!170)))))

(declare-fun res!87016 () Bool)

(assert (=> start!20510 (=> (not res!87016) (not e!116731))))

(assert (=> start!20510 (= res!87016 ((_ is Lexer!471) thiss!17480))))

(assert (=> start!20510 e!116731))

(assert (=> start!20510 true))

(assert (=> start!20510 e!116742))

(assert (=> start!20510 (and (inv!4020 separatorToken!170) e!116730)))

(assert (=> start!20510 e!116750))

(assert (=> b!190116 (= e!116722 (and tp!88542 tp!88540))))

(declare-fun b!190117 () Bool)

(declare-fun matchR!149 (Regex!811 List!3204) Bool)

(assert (=> b!190117 (= e!116752 (matchR!149 (regex!587 (rule!1102 (h!8593 tokens!465))) lt!64803))))

(declare-fun b!190118 () Bool)

(declare-fun res!87013 () Bool)

(assert (=> b!190118 (=> res!87013 e!116746)))

(assert (=> b!190118 (= res!87013 (not (rulesProduceIndividualToken!222 thiss!17480 rules!1920 (h!8593 tokens!465))))))

(declare-fun tp!88537 () Bool)

(declare-fun b!190119 () Bool)

(declare-fun e!116724 () Bool)

(assert (=> b!190119 (= e!116724 (and tp!88537 (inv!4016 (tag!765 (rule!1102 (h!8593 tokens!465)))) (inv!4019 (transformation!587 (rule!1102 (h!8593 tokens!465)))) e!116739))))

(declare-fun b!190120 () Bool)

(assert (=> b!190120 (= e!116731 e!116725)))

(declare-fun res!87019 () Bool)

(assert (=> b!190120 (=> (not res!87019) (not e!116725))))

(declare-fun lt!64778 () BalanceConc!2002)

(declare-fun rulesProduceEachTokenIndividually!265 (LexerInterface!473 List!3205 BalanceConc!2002) Bool)

(assert (=> b!190120 (= res!87019 (rulesProduceEachTokenIndividually!265 thiss!17480 rules!1920 lt!64778))))

(declare-fun seqFromList!552 (List!3206) BalanceConc!2002)

(assert (=> b!190120 (= lt!64778 (seqFromList!552 tokens!465))))

(declare-fun b!190121 () Bool)

(declare-fun e!116732 () Bool)

(declare-fun lt!64790 () tuple2!3268)

(declare-fun isEmpty!1580 (BalanceConc!2000) Bool)

(assert (=> b!190121 (= e!116732 (isEmpty!1580 (_2!1850 lt!64790)))))

(declare-fun lt!64777 () List!3204)

(declare-fun b!190122 () Bool)

(declare-fun e!116749 () Bool)

(declare-fun ++!762 (List!3204 List!3204) List!3204)

(assert (=> b!190122 (= e!116749 (not (= lt!64796 (++!762 lt!64803 lt!64777))))))

(declare-fun b!190123 () Bool)

(declare-fun e!116748 () Bool)

(assert (=> b!190123 (= e!116748 e!116746)))

(declare-fun res!87009 () Bool)

(assert (=> b!190123 (=> res!87009 e!116746)))

(declare-fun lt!64795 () List!3204)

(declare-fun lt!64797 () List!3204)

(assert (=> b!190123 (= res!87009 (or (not (= lt!64795 lt!64797)) (not (= lt!64797 lt!64803)) (not (= lt!64795 lt!64803))))))

(declare-fun printList!157 (LexerInterface!473 List!3206) List!3204)

(assert (=> b!190123 (= lt!64797 (printList!157 thiss!17480 (Cons!3196 (h!8593 tokens!465) Nil!3196)))))

(declare-fun lt!64779 () BalanceConc!2000)

(assert (=> b!190123 (= lt!64795 (list!1173 lt!64779))))

(declare-fun lt!64789 () BalanceConc!2002)

(declare-fun printTailRec!167 (LexerInterface!473 BalanceConc!2002 Int BalanceConc!2000) BalanceConc!2000)

(assert (=> b!190123 (= lt!64779 (printTailRec!167 thiss!17480 lt!64789 0 (BalanceConc!2001 Empty!996)))))

(declare-fun print!204 (LexerInterface!473 BalanceConc!2002) BalanceConc!2000)

(assert (=> b!190123 (= lt!64779 (print!204 thiss!17480 lt!64789))))

(declare-fun singletonSeq!139 (Token!918) BalanceConc!2002)

(assert (=> b!190123 (= lt!64789 (singletonSeq!139 (h!8593 tokens!465)))))

(declare-fun b!190124 () Bool)

(declare-fun e!116743 () Bool)

(assert (=> b!190124 (= e!116743 e!116748)))

(declare-fun res!86999 () Bool)

(assert (=> b!190124 (=> res!86999 e!116748)))

(assert (=> b!190124 (= res!86999 e!116749)))

(declare-fun res!87017 () Bool)

(assert (=> b!190124 (=> (not res!87017) (not e!116749))))

(assert (=> b!190124 (= res!87017 (not lt!64781))))

(declare-fun lt!64794 () List!3204)

(assert (=> b!190124 (= lt!64781 (= lt!64796 lt!64794))))

(assert (=> b!190125 (= e!116746 e!116735)))

(declare-fun res!86993 () Bool)

(assert (=> b!190125 (=> res!86993 e!116735)))

(declare-datatypes ((tuple2!3270 0))(
  ( (tuple2!3271 (_1!1851 Token!918) (_2!1851 BalanceConc!2000)) )
))
(declare-datatypes ((Option!454 0))(
  ( (None!453) (Some!453 (v!13964 tuple2!3270)) )
))
(declare-fun isDefined!305 (Option!454) Bool)

(declare-fun maxPrefixZipperSequence!166 (LexerInterface!473 List!3205 BalanceConc!2000) Option!454)

(assert (=> b!190125 (= res!86993 (not (isDefined!305 (maxPrefixZipperSequence!166 thiss!17480 rules!1920 (seqFromList!551 (originalCharacters!630 (h!8593 tokens!465)))))))))

(declare-datatypes ((Unit!3006 0))(
  ( (Unit!3007) )
))
(declare-fun lt!64773 () Unit!3006)

(declare-fun forallContained!154 (List!3206 Int Token!918) Unit!3006)

(assert (=> b!190125 (= lt!64773 (forallContained!154 tokens!465 lambda!5800 (h!8593 tokens!465)))))

(assert (=> b!190125 (= lt!64803 (originalCharacters!630 (h!8593 tokens!465)))))

(declare-fun b!190126 () Bool)

(declare-fun res!87002 () Bool)

(assert (=> b!190126 (=> (not res!87002) (not e!116731))))

(declare-fun isEmpty!1581 (List!3205) Bool)

(assert (=> b!190126 (= res!87002 (not (isEmpty!1581 rules!1920)))))

(declare-fun b!190127 () Bool)

(assert (=> b!190127 (= e!116723 true)))

(declare-fun lt!64780 () BalanceConc!2002)

(declare-fun lt!64787 () Token!918)

(assert (=> b!190127 (= lt!64780 (singletonSeq!139 lt!64787))))

(declare-fun e!116728 () Bool)

(assert (=> b!190127 e!116728))

(declare-fun res!87003 () Bool)

(assert (=> b!190127 (=> (not res!87003) (not e!116728))))

(declare-datatypes ((Option!455 0))(
  ( (None!454) (Some!454 (v!13965 Rule!974)) )
))
(declare-fun lt!64798 () Option!455)

(declare-fun isDefined!306 (Option!455) Bool)

(assert (=> b!190127 (= res!87003 (isDefined!306 lt!64798))))

(declare-fun getRuleFromTag!28 (LexerInterface!473 List!3205 String!4125) Option!455)

(assert (=> b!190127 (= lt!64798 (getRuleFromTag!28 thiss!17480 rules!1920 (tag!765 (rule!1102 separatorToken!170))))))

(declare-fun lt!64801 () List!3204)

(declare-fun lt!64772 () Unit!3006)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!28 (LexerInterface!473 List!3205 List!3204 Token!918) Unit!3006)

(assert (=> b!190127 (= lt!64772 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!28 thiss!17480 rules!1920 lt!64801 separatorToken!170))))

(assert (=> b!190127 e!116732))

(declare-fun res!87001 () Bool)

(assert (=> b!190127 (=> (not res!87001) (not e!116732))))

(declare-fun size!2551 (BalanceConc!2002) Int)

(assert (=> b!190127 (= res!87001 (= (size!2551 (_1!1850 lt!64790)) 1))))

(declare-fun lt!64788 () BalanceConc!2000)

(assert (=> b!190127 (= lt!64790 (lex!273 thiss!17480 rules!1920 lt!64788))))

(declare-fun lt!64804 () BalanceConc!2002)

(assert (=> b!190127 (= lt!64788 (printTailRec!167 thiss!17480 lt!64804 0 (BalanceConc!2001 Empty!996)))))

(assert (=> b!190127 (= lt!64788 (print!204 thiss!17480 lt!64804))))

(assert (=> b!190127 (= lt!64804 (singletonSeq!139 separatorToken!170))))

(assert (=> b!190127 (rulesProduceIndividualToken!222 thiss!17480 rules!1920 lt!64787)))

(declare-fun lt!64775 () Unit!3006)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!40 (LexerInterface!473 List!3205 List!3206 Token!918) Unit!3006)

(assert (=> b!190127 (= lt!64775 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!40 thiss!17480 rules!1920 tokens!465 lt!64787))))

(assert (=> b!190127 (= lt!64787 (head!676 (t!28892 tokens!465)))))

(declare-fun lt!64784 () Unit!3006)

(declare-fun e!116740 () Unit!3006)

(assert (=> b!190127 (= lt!64784 e!116740)))

(declare-fun c!36382 () Bool)

(declare-fun isEmpty!1582 (List!3206) Bool)

(assert (=> b!190127 (= c!36382 (isEmpty!1582 (t!28892 tokens!465)))))

(declare-fun lt!64776 () Option!453)

(declare-fun lt!64783 () List!3204)

(assert (=> b!190127 (= lt!64776 (maxPrefix!203 thiss!17480 rules!1920 lt!64783))))

(declare-fun lt!64792 () tuple2!3266)

(assert (=> b!190127 (= lt!64783 (_2!1849 lt!64792))))

(declare-fun lt!64774 () Unit!3006)

(declare-fun lemmaSamePrefixThenSameSuffix!108 (List!3204 List!3204 List!3204 List!3204 List!3204) Unit!3006)

(assert (=> b!190127 (= lt!64774 (lemmaSamePrefixThenSameSuffix!108 lt!64803 lt!64783 lt!64803 (_2!1849 lt!64792) lt!64796))))

(assert (=> b!190127 (= lt!64792 (get!922 (maxPrefix!203 thiss!17480 rules!1920 lt!64796)))))

(declare-fun isPrefix!283 (List!3204 List!3204) Bool)

(assert (=> b!190127 (isPrefix!283 lt!64803 lt!64794)))

(declare-fun lt!64793 () Unit!3006)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!178 (List!3204 List!3204) Unit!3006)

(assert (=> b!190127 (= lt!64793 (lemmaConcatTwoListThenFirstIsPrefix!178 lt!64803 lt!64783))))

(assert (=> b!190127 e!116734))

(declare-fun res!86998 () Bool)

(assert (=> b!190127 (=> res!86998 e!116734)))

(assert (=> b!190127 (= res!86998 (isEmpty!1582 tokens!465))))

(declare-fun lt!64791 () Unit!3006)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!48 (LexerInterface!473 List!3205 List!3206 Token!918) Unit!3006)

(assert (=> b!190127 (= lt!64791 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!48 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!116738 () Bool)

(assert (=> b!190128 (= e!116738 (and tp!88547 tp!88538))))

(declare-fun b!190129 () Bool)

(declare-fun Unit!3008 () Unit!3006)

(assert (=> b!190129 (= e!116740 Unit!3008)))

(declare-fun b!190130 () Bool)

(declare-fun Unit!3009 () Unit!3006)

(assert (=> b!190130 (= e!116740 Unit!3009)))

(assert (=> b!190130 false))

(declare-fun tp!88543 () Bool)

(declare-fun b!190131 () Bool)

(assert (=> b!190131 (= e!116751 (and (inv!21 (value!21045 (h!8593 tokens!465))) e!116724 tp!88543))))

(declare-fun b!190132 () Bool)

(assert (=> b!190132 (= e!116727 (not e!116743))))

(declare-fun res!87018 () Bool)

(assert (=> b!190132 (=> res!87018 e!116743)))

(declare-fun printWithSeparatorTokenWhenNeededRec!156 (LexerInterface!473 List!3205 BalanceConc!2002 Token!918 Int) BalanceConc!2000)

(assert (=> b!190132 (= res!87018 (not (= lt!64777 (list!1173 (printWithSeparatorTokenWhenNeededRec!156 thiss!17480 rules!1920 (seqFromList!552 (t!28892 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!64802 () List!3204)

(assert (=> b!190132 (= lt!64802 lt!64794)))

(assert (=> b!190132 (= lt!64794 (++!762 lt!64803 lt!64783))))

(assert (=> b!190132 (= lt!64802 (++!762 (++!762 lt!64803 lt!64801) lt!64777))))

(declare-fun lt!64782 () Unit!3006)

(declare-fun lemmaConcatAssociativity!276 (List!3204 List!3204 List!3204) Unit!3006)

(assert (=> b!190132 (= lt!64782 (lemmaConcatAssociativity!276 lt!64803 lt!64801 lt!64777))))

(declare-fun charsOf!242 (Token!918) BalanceConc!2000)

(assert (=> b!190132 (= lt!64803 (list!1173 (charsOf!242 (h!8593 tokens!465))))))

(assert (=> b!190132 (= lt!64783 (++!762 lt!64801 lt!64777))))

(declare-fun printWithSeparatorTokenWhenNeededList!166 (LexerInterface!473 List!3205 List!3206 Token!918) List!3204)

(assert (=> b!190132 (= lt!64777 (printWithSeparatorTokenWhenNeededList!166 thiss!17480 rules!1920 (t!28892 tokens!465) separatorToken!170))))

(assert (=> b!190132 (= lt!64801 (list!1173 (charsOf!242 separatorToken!170)))))

(declare-fun b!190133 () Bool)

(assert (=> b!190133 (= e!116728 e!116747)))

(declare-fun res!87004 () Bool)

(assert (=> b!190133 (=> (not res!87004) (not e!116747))))

(assert (=> b!190133 (= res!87004 (matchR!149 (regex!587 lt!64800) lt!64801))))

(declare-fun get!923 (Option!455) Rule!974)

(assert (=> b!190133 (= lt!64800 (get!923 lt!64798))))

(declare-fun tp!88541 () Bool)

(declare-fun b!190134 () Bool)

(assert (=> b!190134 (= e!116733 (and tp!88541 (inv!4016 (tag!765 (rule!1102 separatorToken!170))) (inv!4019 (transformation!587 (rule!1102 separatorToken!170))) e!116738))))

(declare-fun b!190135 () Bool)

(assert (=> b!190135 (= e!116725 e!116727)))

(declare-fun res!87007 () Bool)

(assert (=> b!190135 (=> (not res!87007) (not e!116727))))

(assert (=> b!190135 (= res!87007 (= lt!64796 lt!64771))))

(assert (=> b!190135 (= lt!64771 (list!1173 (printWithSeparatorTokenWhenNeededRec!156 thiss!17480 rules!1920 lt!64778 separatorToken!170 0)))))

(assert (=> b!190135 (= lt!64796 (printWithSeparatorTokenWhenNeededList!166 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!190136 () Bool)

(declare-fun res!87015 () Bool)

(assert (=> b!190136 (=> (not res!87015) (not e!116725))))

(assert (=> b!190136 (= res!87015 ((_ is Cons!3196) tokens!465))))

(declare-fun b!190137 () Bool)

(declare-fun res!87011 () Bool)

(assert (=> b!190137 (=> (not res!87011) (not e!116732))))

(declare-fun apply!486 (BalanceConc!2002 Int) Token!918)

(assert (=> b!190137 (= res!87011 (= (apply!486 (_1!1850 lt!64790) 0) separatorToken!170))))

(assert (= (and start!20510 res!87016) b!190126))

(assert (= (and b!190126 res!87002) b!190105))

(assert (= (and b!190105 res!86997) b!190120))

(assert (= (and b!190120 res!87019) b!190107))

(assert (= (and b!190107 res!86994) b!190115))

(assert (= (and b!190115 res!87010) b!190101))

(assert (= (and b!190101 res!87008) b!190114))

(assert (= (and b!190114 res!87005) b!190136))

(assert (= (and b!190136 res!87015) b!190135))

(assert (= (and b!190135 res!87007) b!190108))

(assert (= (and b!190108 res!87014) b!190132))

(assert (= (and b!190132 (not res!87018)) b!190124))

(assert (= (and b!190124 res!87017) b!190122))

(assert (= (and b!190124 (not res!86999)) b!190123))

(assert (= (and b!190123 (not res!87009)) b!190118))

(assert (= (and b!190118 (not res!87013)) b!190104))

(assert (= (and b!190104 (not res!86996)) b!190125))

(assert (= (and b!190125 (not res!86993)) b!190102))

(assert (= (and b!190102 res!87012) b!190103))

(assert (= (and b!190103 res!87000) b!190117))

(assert (= (and b!190102 (not res!86995)) b!190127))

(assert (= (and b!190127 (not res!86998)) b!190109))

(assert (= (and b!190109 res!87006) b!190099))

(assert (= (and b!190127 c!36382) b!190130))

(assert (= (and b!190127 (not c!36382)) b!190129))

(assert (= (and b!190127 res!87001) b!190137))

(assert (= (and b!190137 res!87011) b!190121))

(assert (= (and b!190127 res!87003) b!190133))

(assert (= (and b!190133 res!87004) b!190110))

(assert (= b!190100 b!190116))

(assert (= b!190111 b!190100))

(assert (= (and start!20510 ((_ is Cons!3195) rules!1920)) b!190111))

(assert (= b!190134 b!190128))

(assert (= b!190112 b!190134))

(assert (= start!20510 b!190112))

(assert (= b!190119 b!190106))

(assert (= b!190131 b!190119))

(assert (= b!190113 b!190131))

(assert (= (and start!20510 ((_ is Cons!3196) tokens!465)) b!190113))

(declare-fun m!195371 () Bool)

(assert (=> b!190105 m!195371))

(declare-fun m!195373 () Bool)

(assert (=> b!190125 m!195373))

(assert (=> b!190125 m!195373))

(declare-fun m!195375 () Bool)

(assert (=> b!190125 m!195375))

(assert (=> b!190125 m!195375))

(declare-fun m!195377 () Bool)

(assert (=> b!190125 m!195377))

(declare-fun m!195379 () Bool)

(assert (=> b!190125 m!195379))

(declare-fun m!195381 () Bool)

(assert (=> b!190123 m!195381))

(declare-fun m!195383 () Bool)

(assert (=> b!190123 m!195383))

(declare-fun m!195385 () Bool)

(assert (=> b!190123 m!195385))

(declare-fun m!195387 () Bool)

(assert (=> b!190123 m!195387))

(declare-fun m!195389 () Bool)

(assert (=> b!190123 m!195389))

(declare-fun m!195391 () Bool)

(assert (=> start!20510 m!195391))

(declare-fun m!195393 () Bool)

(assert (=> b!190114 m!195393))

(declare-fun m!195395 () Bool)

(assert (=> b!190107 m!195395))

(declare-fun m!195397 () Bool)

(assert (=> b!190131 m!195397))

(declare-fun m!195399 () Bool)

(assert (=> b!190135 m!195399))

(assert (=> b!190135 m!195399))

(declare-fun m!195401 () Bool)

(assert (=> b!190135 m!195401))

(declare-fun m!195403 () Bool)

(assert (=> b!190135 m!195403))

(declare-fun m!195405 () Bool)

(assert (=> b!190112 m!195405))

(declare-fun m!195407 () Bool)

(assert (=> b!190133 m!195407))

(declare-fun m!195409 () Bool)

(assert (=> b!190133 m!195409))

(declare-fun m!195411 () Bool)

(assert (=> b!190134 m!195411))

(declare-fun m!195413 () Bool)

(assert (=> b!190134 m!195413))

(declare-fun m!195415 () Bool)

(assert (=> b!190100 m!195415))

(declare-fun m!195417 () Bool)

(assert (=> b!190100 m!195417))

(declare-fun m!195419 () Bool)

(assert (=> b!190137 m!195419))

(declare-fun m!195421 () Bool)

(assert (=> b!190103 m!195421))

(declare-fun m!195423 () Bool)

(assert (=> b!190104 m!195423))

(assert (=> b!190104 m!195423))

(declare-fun m!195425 () Bool)

(assert (=> b!190104 m!195425))

(declare-fun m!195427 () Bool)

(assert (=> b!190104 m!195427))

(declare-fun m!195429 () Bool)

(assert (=> b!190102 m!195429))

(declare-fun m!195431 () Bool)

(assert (=> b!190102 m!195431))

(declare-fun m!195433 () Bool)

(assert (=> b!190102 m!195433))

(declare-fun m!195435 () Bool)

(assert (=> b!190132 m!195435))

(declare-fun m!195437 () Bool)

(assert (=> b!190132 m!195437))

(declare-fun m!195439 () Bool)

(assert (=> b!190132 m!195439))

(declare-fun m!195441 () Bool)

(assert (=> b!190132 m!195441))

(declare-fun m!195443 () Bool)

(assert (=> b!190132 m!195443))

(declare-fun m!195445 () Bool)

(assert (=> b!190132 m!195445))

(assert (=> b!190132 m!195439))

(declare-fun m!195447 () Bool)

(assert (=> b!190132 m!195447))

(assert (=> b!190132 m!195445))

(declare-fun m!195449 () Bool)

(assert (=> b!190132 m!195449))

(declare-fun m!195451 () Bool)

(assert (=> b!190132 m!195451))

(assert (=> b!190132 m!195435))

(declare-fun m!195453 () Bool)

(assert (=> b!190132 m!195453))

(declare-fun m!195455 () Bool)

(assert (=> b!190132 m!195455))

(assert (=> b!190132 m!195455))

(declare-fun m!195457 () Bool)

(assert (=> b!190132 m!195457))

(assert (=> b!190132 m!195453))

(declare-fun m!195459 () Bool)

(assert (=> b!190132 m!195459))

(declare-fun m!195461 () Bool)

(assert (=> b!190117 m!195461))

(declare-fun m!195463 () Bool)

(assert (=> b!190118 m!195463))

(declare-fun m!195465 () Bool)

(assert (=> b!190113 m!195465))

(declare-fun m!195467 () Bool)

(assert (=> b!190109 m!195467))

(declare-fun m!195469 () Bool)

(assert (=> b!190109 m!195469))

(declare-fun m!195471 () Bool)

(assert (=> b!190122 m!195471))

(declare-fun m!195473 () Bool)

(assert (=> b!190099 m!195473))

(declare-fun m!195475 () Bool)

(assert (=> b!190099 m!195475))

(declare-fun m!195477 () Bool)

(assert (=> b!190120 m!195477))

(declare-fun m!195479 () Bool)

(assert (=> b!190120 m!195479))

(declare-fun m!195481 () Bool)

(assert (=> b!190127 m!195481))

(declare-fun m!195483 () Bool)

(assert (=> b!190127 m!195483))

(declare-fun m!195485 () Bool)

(assert (=> b!190127 m!195485))

(declare-fun m!195487 () Bool)

(assert (=> b!190127 m!195487))

(declare-fun m!195489 () Bool)

(assert (=> b!190127 m!195489))

(declare-fun m!195491 () Bool)

(assert (=> b!190127 m!195491))

(declare-fun m!195493 () Bool)

(assert (=> b!190127 m!195493))

(declare-fun m!195495 () Bool)

(assert (=> b!190127 m!195495))

(declare-fun m!195497 () Bool)

(assert (=> b!190127 m!195497))

(declare-fun m!195499 () Bool)

(assert (=> b!190127 m!195499))

(declare-fun m!195501 () Bool)

(assert (=> b!190127 m!195501))

(declare-fun m!195503 () Bool)

(assert (=> b!190127 m!195503))

(declare-fun m!195505 () Bool)

(assert (=> b!190127 m!195505))

(assert (=> b!190127 m!195469))

(declare-fun m!195507 () Bool)

(assert (=> b!190127 m!195507))

(declare-fun m!195509 () Bool)

(assert (=> b!190127 m!195509))

(declare-fun m!195511 () Bool)

(assert (=> b!190127 m!195511))

(declare-fun m!195513 () Bool)

(assert (=> b!190127 m!195513))

(assert (=> b!190127 m!195469))

(declare-fun m!195515 () Bool)

(assert (=> b!190127 m!195515))

(declare-fun m!195517 () Bool)

(assert (=> b!190127 m!195517))

(declare-fun m!195519 () Bool)

(assert (=> b!190127 m!195519))

(declare-fun m!195521 () Bool)

(assert (=> b!190126 m!195521))

(declare-fun m!195523 () Bool)

(assert (=> b!190108 m!195523))

(assert (=> b!190108 m!195523))

(declare-fun m!195525 () Bool)

(assert (=> b!190108 m!195525))

(declare-fun m!195527 () Bool)

(assert (=> b!190119 m!195527))

(declare-fun m!195529 () Bool)

(assert (=> b!190119 m!195529))

(declare-fun m!195531 () Bool)

(assert (=> b!190101 m!195531))

(declare-fun m!195533 () Bool)

(assert (=> b!190121 m!195533))

(check-sat (not b_next!7569) (not b!190119) (not b!190122) (not b!190102) (not b!190109) (not b!190131) (not b!190104) (not b_next!7575) (not b!190103) (not b!190114) b_and!13183 (not start!20510) (not b!190107) (not b!190126) (not b!190134) (not b!190099) b_and!13175 (not b!190113) (not b_next!7571) (not b!190117) (not b!190111) (not b!190123) (not b_next!7573) b_and!13173 (not b!190100) (not b!190121) (not b!190137) (not b_next!7577) (not b_next!7579) (not b!190146) (not b!190135) (not b!190127) (not b!190112) (not b!190105) b_and!13177 (not b!190120) b_and!13181 (not b!190118) (not b!190125) (not b!190101) (not b!190108) b_and!13179 (not b!190132) (not b!190133))
(check-sat (not b_next!7569) b_and!13183 (not b_next!7577) (not b_next!7579) b_and!13177 b_and!13181 b_and!13179 (not b_next!7575) b_and!13175 (not b_next!7571) (not b_next!7573) b_and!13173)
