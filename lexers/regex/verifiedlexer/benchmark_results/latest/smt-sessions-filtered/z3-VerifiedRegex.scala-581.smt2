; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17462 () Bool)

(assert start!17462)

(declare-fun b!161423 () Bool)

(declare-fun b_free!6041 () Bool)

(declare-fun b_next!6041 () Bool)

(assert (=> b!161423 (= b_free!6041 (not b_next!6041))))

(declare-fun tp!81813 () Bool)

(declare-fun b_and!10025 () Bool)

(assert (=> b!161423 (= tp!81813 b_and!10025)))

(declare-fun b_free!6043 () Bool)

(declare-fun b_next!6043 () Bool)

(assert (=> b!161423 (= b_free!6043 (not b_next!6043))))

(declare-fun tp!81809 () Bool)

(declare-fun b_and!10027 () Bool)

(assert (=> b!161423 (= tp!81809 b_and!10027)))

(declare-fun b!161439 () Bool)

(declare-fun b_free!6045 () Bool)

(declare-fun b_next!6045 () Bool)

(assert (=> b!161439 (= b_free!6045 (not b_next!6045))))

(declare-fun tp!81811 () Bool)

(declare-fun b_and!10029 () Bool)

(assert (=> b!161439 (= tp!81811 b_and!10029)))

(declare-fun b_free!6047 () Bool)

(declare-fun b_next!6047 () Bool)

(assert (=> b!161439 (= b_free!6047 (not b_next!6047))))

(declare-fun tp!81819 () Bool)

(declare-fun b_and!10031 () Bool)

(assert (=> b!161439 (= tp!81819 b_and!10031)))

(declare-fun b!161444 () Bool)

(declare-fun b_free!6049 () Bool)

(declare-fun b_next!6049 () Bool)

(assert (=> b!161444 (= b_free!6049 (not b_next!6049))))

(declare-fun tp!81817 () Bool)

(declare-fun b_and!10033 () Bool)

(assert (=> b!161444 (= tp!81817 b_and!10033)))

(declare-fun b_free!6051 () Bool)

(declare-fun b_next!6051 () Bool)

(assert (=> b!161444 (= b_free!6051 (not b_next!6051))))

(declare-fun tp!81814 () Bool)

(declare-fun b_and!10035 () Bool)

(assert (=> b!161444 (= tp!81814 b_and!10035)))

(declare-fun tp!81815 () Bool)

(declare-fun e!97081 () Bool)

(declare-datatypes ((List!2765 0))(
  ( (Nil!2755) (Cons!2755 (h!8152 (_ BitVec 16)) (t!26031 List!2765)) )
))
(declare-datatypes ((TokenValue!507 0))(
  ( (FloatLiteralValue!1014 (text!3994 List!2765)) (TokenValueExt!506 (__x!2501 Int)) (Broken!2535 (value!18112 List!2765)) (Object!516) (End!507) (Def!507) (Underscore!507) (Match!507) (Else!507) (Error!507) (Case!507) (If!507) (Extends!507) (Abstract!507) (Class!507) (Val!507) (DelimiterValue!1014 (del!567 List!2765)) (KeywordValue!513 (value!18113 List!2765)) (CommentValue!1014 (value!18114 List!2765)) (WhitespaceValue!1014 (value!18115 List!2765)) (IndentationValue!507 (value!18116 List!2765)) (String!3614) (Int32!507) (Broken!2536 (value!18117 List!2765)) (Boolean!508) (Unit!2273) (OperatorValue!510 (op!567 List!2765)) (IdentifierValue!1014 (value!18118 List!2765)) (IdentifierValue!1015 (value!18119 List!2765)) (WhitespaceValue!1015 (value!18120 List!2765)) (True!1014) (False!1014) (Broken!2537 (value!18121 List!2765)) (Broken!2538 (value!18122 List!2765)) (True!1015) (RightBrace!507) (RightBracket!507) (Colon!507) (Null!507) (Comma!507) (LeftBracket!507) (False!1015) (LeftBrace!507) (ImaginaryLiteralValue!507 (text!3995 List!2765)) (StringLiteralValue!1521 (value!18123 List!2765)) (EOFValue!507 (value!18124 List!2765)) (IdentValue!507 (value!18125 List!2765)) (DelimiterValue!1015 (value!18126 List!2765)) (DedentValue!507 (value!18127 List!2765)) (NewLineValue!507 (value!18128 List!2765)) (IntegerValue!1521 (value!18129 (_ BitVec 32)) (text!3996 List!2765)) (IntegerValue!1522 (value!18130 Int) (text!3997 List!2765)) (Times!507) (Or!507) (Equal!507) (Minus!507) (Broken!2539 (value!18131 List!2765)) (And!507) (Div!507) (LessEqual!507) (Mod!507) (Concat!1216) (Not!507) (Plus!507) (SpaceValue!507 (value!18132 List!2765)) (IntegerValue!1523 (value!18133 Int) (text!3998 List!2765)) (StringLiteralValue!1522 (text!3999 List!2765)) (FloatLiteralValue!1015 (text!4000 List!2765)) (BytesLiteralValue!507 (value!18134 List!2765)) (CommentValue!1015 (value!18135 List!2765)) (StringLiteralValue!1523 (value!18136 List!2765)) (ErrorTokenValue!507 (msg!568 List!2765)) )
))
(declare-datatypes ((C!2340 0))(
  ( (C!2341 (val!1056 Int)) )
))
(declare-datatypes ((List!2766 0))(
  ( (Nil!2756) (Cons!2756 (h!8153 C!2340) (t!26032 List!2766)) )
))
(declare-datatypes ((IArray!1585 0))(
  ( (IArray!1586 (innerList!850 List!2766)) )
))
(declare-datatypes ((Conc!792 0))(
  ( (Node!792 (left!2081 Conc!792) (right!2411 Conc!792) (csize!1814 Int) (cheight!1003 Int)) (Leaf!1374 (xs!3387 IArray!1585) (csize!1815 Int)) (Empty!792) )
))
(declare-datatypes ((BalanceConc!1592 0))(
  ( (BalanceConc!1593 (c!32359 Conc!792)) )
))
(declare-datatypes ((Regex!709 0))(
  ( (ElementMatch!709 (c!32360 C!2340)) (Concat!1217 (regOne!1930 Regex!709) (regTwo!1930 Regex!709)) (EmptyExpr!709) (Star!709 (reg!1038 Regex!709)) (EmptyLang!709) (Union!709 (regOne!1931 Regex!709) (regTwo!1931 Regex!709)) )
))
(declare-datatypes ((String!3615 0))(
  ( (String!3616 (value!18137 String)) )
))
(declare-datatypes ((TokenValueInjection!786 0))(
  ( (TokenValueInjection!787 (toValue!1140 Int) (toChars!999 Int)) )
))
(declare-datatypes ((Rule!770 0))(
  ( (Rule!771 (regex!485 Regex!709) (tag!663 String!3615) (isSeparator!485 Bool) (transformation!485 TokenValueInjection!786)) )
))
(declare-datatypes ((Token!714 0))(
  ( (Token!715 (value!18138 TokenValue!507) (rule!992 Rule!770) (size!2330 Int) (originalCharacters!528 List!2766)) )
))
(declare-datatypes ((List!2767 0))(
  ( (Nil!2757) (Cons!2757 (h!8154 Token!714) (t!26033 List!2767)) )
))
(declare-fun tokens!465 () List!2767)

(declare-fun b!161422 () Bool)

(declare-fun e!97078 () Bool)

(declare-fun inv!3578 (Token!714) Bool)

(assert (=> b!161422 (= e!97081 (and (inv!3578 (h!8154 tokens!465)) e!97078 tp!81815))))

(declare-fun e!97084 () Bool)

(assert (=> b!161423 (= e!97084 (and tp!81813 tp!81809))))

(declare-fun b!161424 () Bool)

(declare-fun e!97075 () Bool)

(declare-fun e!97086 () Bool)

(declare-fun tp!81812 () Bool)

(assert (=> b!161424 (= e!97075 (and e!97086 tp!81812))))

(declare-fun b!161425 () Bool)

(declare-fun res!73124 () Bool)

(declare-fun e!97077 () Bool)

(assert (=> b!161425 (=> (not res!73124) (not e!97077))))

(declare-fun separatorToken!170 () Token!714)

(assert (=> b!161425 (= res!73124 (isSeparator!485 (rule!992 separatorToken!170)))))

(declare-fun res!73122 () Bool)

(declare-fun e!97087 () Bool)

(assert (=> start!17462 (=> (not res!73122) (not e!97087))))

(declare-datatypes ((LexerInterface!371 0))(
  ( (LexerInterfaceExt!368 (__x!2502 Int)) (Lexer!369) )
))
(declare-fun thiss!17480 () LexerInterface!371)

(get-info :version)

(assert (=> start!17462 (= res!73122 ((_ is Lexer!369) thiss!17480))))

(assert (=> start!17462 e!97087))

(assert (=> start!17462 true))

(assert (=> start!17462 e!97075))

(declare-fun e!97082 () Bool)

(assert (=> start!17462 (and (inv!3578 separatorToken!170) e!97082)))

(assert (=> start!17462 e!97081))

(declare-fun b!161426 () Bool)

(declare-fun e!97076 () Bool)

(assert (=> b!161426 (= e!97077 e!97076)))

(declare-fun res!73123 () Bool)

(assert (=> b!161426 (=> (not res!73123) (not e!97076))))

(declare-fun lt!48776 () List!2766)

(declare-fun lt!48773 () List!2766)

(assert (=> b!161426 (= res!73123 (= lt!48776 lt!48773))))

(declare-datatypes ((IArray!1587 0))(
  ( (IArray!1588 (innerList!851 List!2767)) )
))
(declare-datatypes ((Conc!793 0))(
  ( (Node!793 (left!2082 Conc!793) (right!2412 Conc!793) (csize!1816 Int) (cheight!1004 Int)) (Leaf!1375 (xs!3388 IArray!1587) (csize!1817 Int)) (Empty!793) )
))
(declare-datatypes ((BalanceConc!1594 0))(
  ( (BalanceConc!1595 (c!32361 Conc!793)) )
))
(declare-fun lt!48774 () BalanceConc!1594)

(declare-datatypes ((List!2768 0))(
  ( (Nil!2758) (Cons!2758 (h!8155 Rule!770) (t!26034 List!2768)) )
))
(declare-fun rules!1920 () List!2768)

(declare-fun list!995 (BalanceConc!1592) List!2766)

(declare-fun printWithSeparatorTokenWhenNeededRec!54 (LexerInterface!371 List!2768 BalanceConc!1594 Token!714 Int) BalanceConc!1592)

(assert (=> b!161426 (= lt!48773 (list!995 (printWithSeparatorTokenWhenNeededRec!54 thiss!17480 rules!1920 lt!48774 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!64 (LexerInterface!371 List!2768 List!2767 Token!714) List!2766)

(assert (=> b!161426 (= lt!48776 (printWithSeparatorTokenWhenNeededList!64 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun e!97069 () Bool)

(declare-fun tp!81807 () Bool)

(declare-fun e!97083 () Bool)

(declare-fun b!161427 () Bool)

(declare-fun inv!3575 (String!3615) Bool)

(declare-fun inv!3579 (TokenValueInjection!786) Bool)

(assert (=> b!161427 (= e!97069 (and tp!81807 (inv!3575 (tag!663 (rule!992 separatorToken!170))) (inv!3579 (transformation!485 (rule!992 separatorToken!170))) e!97083))))

(declare-fun b!161428 () Bool)

(declare-fun e!97073 () Bool)

(assert (=> b!161428 (= e!97073 true)))

(declare-fun lt!48771 () Bool)

(declare-fun lt!48777 () BalanceConc!1594)

(declare-fun lambda!4406 () Int)

(declare-fun forall!510 (BalanceConc!1594 Int) Bool)

(assert (=> b!161428 (= lt!48771 (forall!510 lt!48777 lambda!4406))))

(declare-fun b!161429 () Bool)

(assert (=> b!161429 (= e!97076 (not e!97073))))

(declare-fun res!73115 () Bool)

(assert (=> b!161429 (=> res!73115 e!97073)))

(declare-fun size!2331 (BalanceConc!1594) Int)

(assert (=> b!161429 (= res!73115 (> 0 (size!2331 lt!48777)))))

(declare-fun seqFromList!347 (List!2767) BalanceConc!1594)

(assert (=> b!161429 (= lt!48777 (seqFromList!347 (t!26033 tokens!465)))))

(declare-fun lt!48778 () List!2766)

(declare-fun lt!48770 () List!2766)

(declare-fun lt!48772 () List!2766)

(declare-fun lt!48769 () List!2766)

(declare-fun ++!614 (List!2766 List!2766) List!2766)

(assert (=> b!161429 (= (++!614 (++!614 lt!48769 lt!48772) lt!48770) (++!614 lt!48769 lt!48778))))

(declare-datatypes ((Unit!2274 0))(
  ( (Unit!2275) )
))
(declare-fun lt!48775 () Unit!2274)

(declare-fun lemmaConcatAssociativity!166 (List!2766 List!2766 List!2766) Unit!2274)

(assert (=> b!161429 (= lt!48775 (lemmaConcatAssociativity!166 lt!48769 lt!48772 lt!48770))))

(declare-fun charsOf!140 (Token!714) BalanceConc!1592)

(assert (=> b!161429 (= lt!48769 (list!995 (charsOf!140 (h!8154 tokens!465))))))

(assert (=> b!161429 (= lt!48778 (++!614 lt!48772 lt!48770))))

(assert (=> b!161429 (= lt!48770 (printWithSeparatorTokenWhenNeededList!64 thiss!17480 rules!1920 (t!26033 tokens!465) separatorToken!170))))

(assert (=> b!161429 (= lt!48772 (list!995 (charsOf!140 separatorToken!170)))))

(declare-fun b!161430 () Bool)

(declare-fun e!97085 () Bool)

(declare-fun tp!81816 () Bool)

(declare-fun e!97079 () Bool)

(assert (=> b!161430 (= e!97079 (and tp!81816 (inv!3575 (tag!663 (rule!992 (h!8154 tokens!465)))) (inv!3579 (transformation!485 (rule!992 (h!8154 tokens!465)))) e!97085))))

(declare-fun b!161431 () Bool)

(declare-fun res!73118 () Bool)

(assert (=> b!161431 (=> res!73118 e!97073)))

(declare-fun rulesProduceEachTokenIndividually!163 (LexerInterface!371 List!2768 BalanceConc!1594) Bool)

(assert (=> b!161431 (= res!73118 (not (rulesProduceEachTokenIndividually!163 thiss!17480 rules!1920 lt!48777)))))

(declare-fun b!161432 () Bool)

(assert (=> b!161432 (= e!97087 e!97077)))

(declare-fun res!73113 () Bool)

(assert (=> b!161432 (=> (not res!73113) (not e!97077))))

(assert (=> b!161432 (= res!73113 (rulesProduceEachTokenIndividually!163 thiss!17480 rules!1920 lt!48774))))

(assert (=> b!161432 (= lt!48774 (seqFromList!347 tokens!465))))

(declare-fun tp!81810 () Bool)

(declare-fun b!161433 () Bool)

(declare-fun inv!21 (TokenValue!507) Bool)

(assert (=> b!161433 (= e!97078 (and (inv!21 (value!18138 (h!8154 tokens!465))) e!97079 tp!81810))))

(declare-fun b!161434 () Bool)

(declare-fun res!73116 () Bool)

(assert (=> b!161434 (=> (not res!73116) (not e!97077))))

(declare-fun rulesProduceIndividualToken!120 (LexerInterface!371 List!2768 Token!714) Bool)

(assert (=> b!161434 (= res!73116 (rulesProduceIndividualToken!120 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!161435 () Bool)

(declare-fun res!73112 () Bool)

(assert (=> b!161435 (=> (not res!73112) (not e!97077))))

(declare-fun forall!511 (List!2767 Int) Bool)

(assert (=> b!161435 (= res!73112 (forall!511 tokens!465 lambda!4406))))

(declare-fun b!161436 () Bool)

(declare-fun tp!81808 () Bool)

(assert (=> b!161436 (= e!97082 (and (inv!21 (value!18138 separatorToken!170)) e!97069 tp!81808))))

(declare-fun b!161437 () Bool)

(declare-fun res!73119 () Bool)

(assert (=> b!161437 (=> (not res!73119) (not e!97077))))

(assert (=> b!161437 (= res!73119 ((_ is Cons!2757) tokens!465))))

(declare-fun b!161438 () Bool)

(declare-fun res!73120 () Bool)

(assert (=> b!161438 (=> (not res!73120) (not e!97087))))

(declare-fun isEmpty!1120 (List!2768) Bool)

(assert (=> b!161438 (= res!73120 (not (isEmpty!1120 rules!1920)))))

(assert (=> b!161439 (= e!97085 (and tp!81811 tp!81819))))

(declare-fun b!161440 () Bool)

(declare-fun res!73121 () Bool)

(assert (=> b!161440 (=> (not res!73121) (not e!97087))))

(declare-fun rulesInvariant!337 (LexerInterface!371 List!2768) Bool)

(assert (=> b!161440 (= res!73121 (rulesInvariant!337 thiss!17480 rules!1920))))

(declare-fun b!161441 () Bool)

(declare-fun res!73114 () Bool)

(assert (=> b!161441 (=> (not res!73114) (not e!97077))))

(declare-fun sepAndNonSepRulesDisjointChars!74 (List!2768 List!2768) Bool)

(assert (=> b!161441 (= res!73114 (sepAndNonSepRulesDisjointChars!74 rules!1920 rules!1920))))

(declare-fun b!161442 () Bool)

(declare-fun tp!81818 () Bool)

(assert (=> b!161442 (= e!97086 (and tp!81818 (inv!3575 (tag!663 (h!8155 rules!1920))) (inv!3579 (transformation!485 (h!8155 rules!1920))) e!97084))))

(declare-fun b!161443 () Bool)

(declare-fun res!73117 () Bool)

(assert (=> b!161443 (=> (not res!73117) (not e!97076))))

(declare-fun seqFromList!348 (List!2766) BalanceConc!1592)

(assert (=> b!161443 (= res!73117 (= (list!995 (seqFromList!348 lt!48776)) lt!48773))))

(assert (=> b!161444 (= e!97083 (and tp!81817 tp!81814))))

(assert (= (and start!17462 res!73122) b!161438))

(assert (= (and b!161438 res!73120) b!161440))

(assert (= (and b!161440 res!73121) b!161432))

(assert (= (and b!161432 res!73113) b!161434))

(assert (= (and b!161434 res!73116) b!161425))

(assert (= (and b!161425 res!73124) b!161435))

(assert (= (and b!161435 res!73112) b!161441))

(assert (= (and b!161441 res!73114) b!161437))

(assert (= (and b!161437 res!73119) b!161426))

(assert (= (and b!161426 res!73123) b!161443))

(assert (= (and b!161443 res!73117) b!161429))

(assert (= (and b!161429 (not res!73115)) b!161431))

(assert (= (and b!161431 (not res!73118)) b!161428))

(assert (= b!161442 b!161423))

(assert (= b!161424 b!161442))

(assert (= (and start!17462 ((_ is Cons!2758) rules!1920)) b!161424))

(assert (= b!161427 b!161444))

(assert (= b!161436 b!161427))

(assert (= start!17462 b!161436))

(assert (= b!161430 b!161439))

(assert (= b!161433 b!161430))

(assert (= b!161422 b!161433))

(assert (= (and start!17462 ((_ is Cons!2757) tokens!465)) b!161422))

(declare-fun m!151263 () Bool)

(assert (=> b!161431 m!151263))

(declare-fun m!151265 () Bool)

(assert (=> b!161427 m!151265))

(declare-fun m!151267 () Bool)

(assert (=> b!161427 m!151267))

(declare-fun m!151269 () Bool)

(assert (=> start!17462 m!151269))

(declare-fun m!151271 () Bool)

(assert (=> b!161432 m!151271))

(declare-fun m!151273 () Bool)

(assert (=> b!161432 m!151273))

(declare-fun m!151275 () Bool)

(assert (=> b!161442 m!151275))

(declare-fun m!151277 () Bool)

(assert (=> b!161442 m!151277))

(declare-fun m!151279 () Bool)

(assert (=> b!161435 m!151279))

(declare-fun m!151281 () Bool)

(assert (=> b!161434 m!151281))

(declare-fun m!151283 () Bool)

(assert (=> b!161430 m!151283))

(declare-fun m!151285 () Bool)

(assert (=> b!161430 m!151285))

(declare-fun m!151287 () Bool)

(assert (=> b!161443 m!151287))

(assert (=> b!161443 m!151287))

(declare-fun m!151289 () Bool)

(assert (=> b!161443 m!151289))

(declare-fun m!151291 () Bool)

(assert (=> b!161436 m!151291))

(declare-fun m!151293 () Bool)

(assert (=> b!161422 m!151293))

(declare-fun m!151295 () Bool)

(assert (=> b!161440 m!151295))

(declare-fun m!151297 () Bool)

(assert (=> b!161433 m!151297))

(declare-fun m!151299 () Bool)

(assert (=> b!161428 m!151299))

(declare-fun m!151301 () Bool)

(assert (=> b!161429 m!151301))

(declare-fun m!151303 () Bool)

(assert (=> b!161429 m!151303))

(declare-fun m!151305 () Bool)

(assert (=> b!161429 m!151305))

(declare-fun m!151307 () Bool)

(assert (=> b!161429 m!151307))

(declare-fun m!151309 () Bool)

(assert (=> b!161429 m!151309))

(declare-fun m!151311 () Bool)

(assert (=> b!161429 m!151311))

(declare-fun m!151313 () Bool)

(assert (=> b!161429 m!151313))

(declare-fun m!151315 () Bool)

(assert (=> b!161429 m!151315))

(declare-fun m!151317 () Bool)

(assert (=> b!161429 m!151317))

(declare-fun m!151319 () Bool)

(assert (=> b!161429 m!151319))

(assert (=> b!161429 m!151315))

(declare-fun m!151321 () Bool)

(assert (=> b!161429 m!151321))

(assert (=> b!161429 m!151307))

(declare-fun m!151323 () Bool)

(assert (=> b!161429 m!151323))

(assert (=> b!161429 m!151309))

(declare-fun m!151325 () Bool)

(assert (=> b!161438 m!151325))

(declare-fun m!151327 () Bool)

(assert (=> b!161441 m!151327))

(declare-fun m!151329 () Bool)

(assert (=> b!161426 m!151329))

(assert (=> b!161426 m!151329))

(declare-fun m!151331 () Bool)

(assert (=> b!161426 m!151331))

(declare-fun m!151333 () Bool)

(assert (=> b!161426 m!151333))

(check-sat b_and!10033 (not b!161429) (not b!161432) (not b!161435) (not start!17462) (not b!161431) b_and!10031 (not b_next!6049) (not b!161424) (not b!161442) (not b!161427) (not b!161428) (not b!161438) (not b!161422) b_and!10029 (not b!161443) (not b!161434) (not b_next!6043) b_and!10027 b_and!10035 (not b_next!6051) (not b!161436) (not b!161430) (not b!161426) (not b!161433) b_and!10025 (not b_next!6045) (not b_next!6047) (not b!161440) (not b!161441) (not b_next!6041))
(check-sat b_and!10033 b_and!10029 (not b_next!6043) b_and!10031 (not b_next!6049) (not b_next!6047) (not b_next!6041) b_and!10027 b_and!10035 (not b_next!6051) b_and!10025 (not b_next!6045))
