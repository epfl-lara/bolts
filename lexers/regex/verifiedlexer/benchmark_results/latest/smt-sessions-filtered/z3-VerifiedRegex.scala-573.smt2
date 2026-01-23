; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16630 () Bool)

(assert start!16630)

(declare-fun b!155146 () Bool)

(declare-fun b_free!5737 () Bool)

(declare-fun b_next!5737 () Bool)

(assert (=> b!155146 (= b_free!5737 (not b_next!5737))))

(declare-fun tp!80028 () Bool)

(declare-fun b_and!9229 () Bool)

(assert (=> b!155146 (= tp!80028 b_and!9229)))

(declare-fun b_free!5739 () Bool)

(declare-fun b_next!5739 () Bool)

(assert (=> b!155146 (= b_free!5739 (not b_next!5739))))

(declare-fun tp!80035 () Bool)

(declare-fun b_and!9231 () Bool)

(assert (=> b!155146 (= tp!80035 b_and!9231)))

(declare-fun b!155158 () Bool)

(declare-fun b_free!5741 () Bool)

(declare-fun b_next!5741 () Bool)

(assert (=> b!155158 (= b_free!5741 (not b_next!5741))))

(declare-fun tp!80025 () Bool)

(declare-fun b_and!9233 () Bool)

(assert (=> b!155158 (= tp!80025 b_and!9233)))

(declare-fun b_free!5743 () Bool)

(declare-fun b_next!5743 () Bool)

(assert (=> b!155158 (= b_free!5743 (not b_next!5743))))

(declare-fun tp!80031 () Bool)

(declare-fun b_and!9235 () Bool)

(assert (=> b!155158 (= tp!80031 b_and!9235)))

(declare-fun b!155148 () Bool)

(declare-fun b_free!5745 () Bool)

(declare-fun b_next!5745 () Bool)

(assert (=> b!155148 (= b_free!5745 (not b_next!5745))))

(declare-fun tp!80029 () Bool)

(declare-fun b_and!9237 () Bool)

(assert (=> b!155148 (= tp!80029 b_and!9237)))

(declare-fun b_free!5747 () Bool)

(declare-fun b_next!5747 () Bool)

(assert (=> b!155148 (= b_free!5747 (not b_next!5747))))

(declare-fun tp!80030 () Bool)

(declare-fun b_and!9239 () Bool)

(assert (=> b!155148 (= tp!80030 b_and!9239)))

(declare-fun b!155143 () Bool)

(declare-fun res!70802 () Bool)

(declare-fun e!92989 () Bool)

(assert (=> b!155143 (=> (not res!70802) (not e!92989))))

(declare-datatypes ((LexerInterface!355 0))(
  ( (LexerInterfaceExt!352 (__x!2469 Int)) (Lexer!353) )
))
(declare-fun thiss!17480 () LexerInterface!355)

(declare-datatypes ((List!2693 0))(
  ( (Nil!2683) (Cons!2683 (h!8080 (_ BitVec 16)) (t!25291 List!2693)) )
))
(declare-datatypes ((TokenValue!491 0))(
  ( (FloatLiteralValue!982 (text!3882 List!2693)) (TokenValueExt!490 (__x!2470 Int)) (Broken!2455 (value!17656 List!2693)) (Object!500) (End!491) (Def!491) (Underscore!491) (Match!491) (Else!491) (Error!491) (Case!491) (If!491) (Extends!491) (Abstract!491) (Class!491) (Val!491) (DelimiterValue!982 (del!551 List!2693)) (KeywordValue!497 (value!17657 List!2693)) (CommentValue!982 (value!17658 List!2693)) (WhitespaceValue!982 (value!17659 List!2693)) (IndentationValue!491 (value!17660 List!2693)) (String!3534) (Int32!491) (Broken!2456 (value!17661 List!2693)) (Boolean!492) (Unit!2105) (OperatorValue!494 (op!551 List!2693)) (IdentifierValue!982 (value!17662 List!2693)) (IdentifierValue!983 (value!17663 List!2693)) (WhitespaceValue!983 (value!17664 List!2693)) (True!982) (False!982) (Broken!2457 (value!17665 List!2693)) (Broken!2458 (value!17666 List!2693)) (True!983) (RightBrace!491) (RightBracket!491) (Colon!491) (Null!491) (Comma!491) (LeftBracket!491) (False!983) (LeftBrace!491) (ImaginaryLiteralValue!491 (text!3883 List!2693)) (StringLiteralValue!1473 (value!17667 List!2693)) (EOFValue!491 (value!17668 List!2693)) (IdentValue!491 (value!17669 List!2693)) (DelimiterValue!983 (value!17670 List!2693)) (DedentValue!491 (value!17671 List!2693)) (NewLineValue!491 (value!17672 List!2693)) (IntegerValue!1473 (value!17673 (_ BitVec 32)) (text!3884 List!2693)) (IntegerValue!1474 (value!17674 Int) (text!3885 List!2693)) (Times!491) (Or!491) (Equal!491) (Minus!491) (Broken!2459 (value!17675 List!2693)) (And!491) (Div!491) (LessEqual!491) (Mod!491) (Concat!1184) (Not!491) (Plus!491) (SpaceValue!491 (value!17676 List!2693)) (IntegerValue!1475 (value!17677 Int) (text!3886 List!2693)) (StringLiteralValue!1474 (text!3887 List!2693)) (FloatLiteralValue!983 (text!3888 List!2693)) (BytesLiteralValue!491 (value!17678 List!2693)) (CommentValue!983 (value!17679 List!2693)) (StringLiteralValue!1475 (value!17680 List!2693)) (ErrorTokenValue!491 (msg!552 List!2693)) )
))
(declare-datatypes ((C!2308 0))(
  ( (C!2309 (val!1040 Int)) )
))
(declare-datatypes ((List!2694 0))(
  ( (Nil!2684) (Cons!2684 (h!8081 C!2308) (t!25292 List!2694)) )
))
(declare-datatypes ((IArray!1521 0))(
  ( (IArray!1522 (innerList!818 List!2694)) )
))
(declare-datatypes ((Conc!760 0))(
  ( (Node!760 (left!2025 Conc!760) (right!2355 Conc!760) (csize!1750 Int) (cheight!971 Int)) (Leaf!1334 (xs!3355 IArray!1521) (csize!1751 Int)) (Empty!760) )
))
(declare-datatypes ((BalanceConc!1528 0))(
  ( (BalanceConc!1529 (c!31223 Conc!760)) )
))
(declare-datatypes ((Regex!693 0))(
  ( (ElementMatch!693 (c!31224 C!2308)) (Concat!1185 (regOne!1898 Regex!693) (regTwo!1898 Regex!693)) (EmptyExpr!693) (Star!693 (reg!1022 Regex!693)) (EmptyLang!693) (Union!693 (regOne!1899 Regex!693) (regTwo!1899 Regex!693)) )
))
(declare-datatypes ((String!3535 0))(
  ( (String!3536 (value!17681 String)) )
))
(declare-datatypes ((TokenValueInjection!754 0))(
  ( (TokenValueInjection!755 (toValue!1112 Int) (toChars!971 Int)) )
))
(declare-datatypes ((Rule!738 0))(
  ( (Rule!739 (regex!469 Regex!693) (tag!647 String!3535) (isSeparator!469 Bool) (transformation!469 TokenValueInjection!754)) )
))
(declare-datatypes ((List!2695 0))(
  ( (Nil!2685) (Cons!2685 (h!8082 Rule!738) (t!25293 List!2695)) )
))
(declare-fun rules!1920 () List!2695)

(declare-fun rulesInvariant!321 (LexerInterface!355 List!2695) Bool)

(assert (=> b!155143 (= res!70802 (rulesInvariant!321 thiss!17480 rules!1920))))

(declare-fun b!155144 () Bool)

(declare-fun res!70800 () Bool)

(declare-fun e!92982 () Bool)

(assert (=> b!155144 (=> (not res!70800) (not e!92982))))

(declare-fun sepAndNonSepRulesDisjointChars!58 (List!2695 List!2695) Bool)

(assert (=> b!155144 (= res!70800 (sepAndNonSepRulesDisjointChars!58 rules!1920 rules!1920))))

(declare-fun b!155145 () Bool)

(declare-datatypes ((Token!682 0))(
  ( (Token!683 (value!17682 TokenValue!491) (rule!976 Rule!738) (size!2275 Int) (originalCharacters!512 List!2694)) )
))
(declare-datatypes ((List!2696 0))(
  ( (Nil!2686) (Cons!2686 (h!8083 Token!682) (t!25294 List!2696)) )
))
(declare-fun tokens!465 () List!2696)

(declare-fun tp!80026 () Bool)

(declare-fun e!92973 () Bool)

(declare-fun e!92972 () Bool)

(declare-fun inv!21 (TokenValue!491) Bool)

(assert (=> b!155145 (= e!92973 (and (inv!21 (value!17682 (h!8083 tokens!465))) e!92972 tp!80026))))

(declare-fun e!92981 () Bool)

(assert (=> b!155146 (= e!92981 (and tp!80028 tp!80035))))

(declare-fun separatorToken!170 () Token!682)

(declare-fun e!92977 () Bool)

(declare-fun e!92984 () Bool)

(declare-fun b!155147 () Bool)

(declare-fun tp!80034 () Bool)

(declare-fun inv!3485 (String!3535) Bool)

(declare-fun inv!3488 (TokenValueInjection!754) Bool)

(assert (=> b!155147 (= e!92984 (and tp!80034 (inv!3485 (tag!647 (rule!976 separatorToken!170))) (inv!3488 (transformation!469 (rule!976 separatorToken!170))) e!92977))))

(declare-fun e!92987 () Bool)

(assert (=> b!155148 (= e!92987 (and tp!80029 tp!80030))))

(declare-fun b!155149 () Bool)

(declare-fun res!70810 () Bool)

(assert (=> b!155149 (=> (not res!70810) (not e!92982))))

(get-info :version)

(assert (=> b!155149 (= res!70810 ((_ is Cons!2686) tokens!465))))

(declare-fun res!70807 () Bool)

(assert (=> start!16630 (=> (not res!70807) (not e!92989))))

(assert (=> start!16630 (= res!70807 ((_ is Lexer!353) thiss!17480))))

(assert (=> start!16630 e!92989))

(assert (=> start!16630 true))

(declare-fun e!92986 () Bool)

(assert (=> start!16630 e!92986))

(declare-fun e!92978 () Bool)

(declare-fun inv!3489 (Token!682) Bool)

(assert (=> start!16630 (and (inv!3489 separatorToken!170) e!92978)))

(declare-fun e!92988 () Bool)

(assert (=> start!16630 e!92988))

(declare-fun b!155150 () Bool)

(declare-fun res!70809 () Bool)

(assert (=> b!155150 (=> (not res!70809) (not e!92982))))

(declare-fun rulesProduceIndividualToken!104 (LexerInterface!355 List!2695 Token!682) Bool)

(assert (=> b!155150 (= res!70809 (rulesProduceIndividualToken!104 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!155151 () Bool)

(declare-fun e!92974 () Bool)

(declare-fun tp!80033 () Bool)

(assert (=> b!155151 (= e!92986 (and e!92974 tp!80033))))

(declare-fun b!155152 () Bool)

(declare-fun e!92983 () Bool)

(assert (=> b!155152 (= e!92982 e!92983)))

(declare-fun res!70808 () Bool)

(assert (=> b!155152 (=> (not res!70808) (not e!92983))))

(declare-fun lt!45851 () List!2694)

(declare-fun lt!45854 () List!2694)

(assert (=> b!155152 (= res!70808 (= lt!45851 lt!45854))))

(declare-datatypes ((IArray!1523 0))(
  ( (IArray!1524 (innerList!819 List!2696)) )
))
(declare-datatypes ((Conc!761 0))(
  ( (Node!761 (left!2026 Conc!761) (right!2356 Conc!761) (csize!1752 Int) (cheight!972 Int)) (Leaf!1335 (xs!3356 IArray!1523) (csize!1753 Int)) (Empty!761) )
))
(declare-datatypes ((BalanceConc!1530 0))(
  ( (BalanceConc!1531 (c!31225 Conc!761)) )
))
(declare-fun lt!45858 () BalanceConc!1530)

(declare-fun list!951 (BalanceConc!1528) List!2694)

(declare-fun printWithSeparatorTokenWhenNeededRec!38 (LexerInterface!355 List!2695 BalanceConc!1530 Token!682 Int) BalanceConc!1528)

(assert (=> b!155152 (= lt!45854 (list!951 (printWithSeparatorTokenWhenNeededRec!38 thiss!17480 rules!1920 lt!45858 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!48 (LexerInterface!355 List!2695 List!2696 Token!682) List!2694)

(assert (=> b!155152 (= lt!45851 (printWithSeparatorTokenWhenNeededList!48 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!155153 () Bool)

(declare-fun res!70804 () Bool)

(assert (=> b!155153 (=> (not res!70804) (not e!92982))))

(declare-fun lambda!4096 () Int)

(declare-fun forall!471 (List!2696 Int) Bool)

(assert (=> b!155153 (= res!70804 (forall!471 tokens!465 lambda!4096))))

(declare-fun b!155154 () Bool)

(declare-fun e!92971 () Bool)

(assert (=> b!155154 (= e!92983 (not e!92971))))

(declare-fun res!70801 () Bool)

(assert (=> b!155154 (=> res!70801 e!92971)))

(declare-fun rulesProduceEachTokenIndividuallyList!93 (LexerInterface!355 List!2695 List!2696) Bool)

(assert (=> b!155154 (= res!70801 (not (rulesProduceEachTokenIndividuallyList!93 thiss!17480 rules!1920 (t!25294 tokens!465))))))

(declare-fun lt!45857 () List!2694)

(declare-fun lt!45855 () List!2694)

(declare-fun lt!45853 () List!2694)

(declare-fun lt!45856 () List!2694)

(declare-fun ++!584 (List!2694 List!2694) List!2694)

(assert (=> b!155154 (= (++!584 (++!584 lt!45857 lt!45853) lt!45855) (++!584 lt!45857 lt!45856))))

(declare-datatypes ((Unit!2106 0))(
  ( (Unit!2107) )
))
(declare-fun lt!45852 () Unit!2106)

(declare-fun lemmaConcatAssociativity!150 (List!2694 List!2694 List!2694) Unit!2106)

(assert (=> b!155154 (= lt!45852 (lemmaConcatAssociativity!150 lt!45857 lt!45853 lt!45855))))

(declare-fun charsOf!124 (Token!682) BalanceConc!1528)

(assert (=> b!155154 (= lt!45857 (list!951 (charsOf!124 (h!8083 tokens!465))))))

(assert (=> b!155154 (= lt!45856 (++!584 lt!45853 lt!45855))))

(assert (=> b!155154 (= lt!45855 (printWithSeparatorTokenWhenNeededList!48 thiss!17480 rules!1920 (t!25294 tokens!465) separatorToken!170))))

(assert (=> b!155154 (= lt!45853 (list!951 (charsOf!124 separatorToken!170)))))

(declare-fun b!155155 () Bool)

(declare-fun res!70811 () Bool)

(assert (=> b!155155 (=> (not res!70811) (not e!92982))))

(assert (=> b!155155 (= res!70811 (isSeparator!469 (rule!976 separatorToken!170)))))

(declare-fun b!155156 () Bool)

(assert (=> b!155156 (= e!92989 e!92982)))

(declare-fun res!70806 () Bool)

(assert (=> b!155156 (=> (not res!70806) (not e!92982))))

(declare-fun rulesProduceEachTokenIndividually!147 (LexerInterface!355 List!2695 BalanceConc!1530) Bool)

(assert (=> b!155156 (= res!70806 (rulesProduceEachTokenIndividually!147 thiss!17480 rules!1920 lt!45858))))

(declare-fun seqFromList!315 (List!2696) BalanceConc!1530)

(assert (=> b!155156 (= lt!45858 (seqFromList!315 tokens!465))))

(declare-fun b!155157 () Bool)

(declare-fun tp!80032 () Bool)

(assert (=> b!155157 (= e!92974 (and tp!80032 (inv!3485 (tag!647 (h!8082 rules!1920))) (inv!3488 (transformation!469 (h!8082 rules!1920))) e!92981))))

(assert (=> b!155158 (= e!92977 (and tp!80025 tp!80031))))

(declare-fun tp!80037 () Bool)

(declare-fun b!155159 () Bool)

(assert (=> b!155159 (= e!92978 (and (inv!21 (value!17682 separatorToken!170)) e!92984 tp!80037))))

(declare-fun b!155160 () Bool)

(declare-fun tp!80027 () Bool)

(assert (=> b!155160 (= e!92972 (and tp!80027 (inv!3485 (tag!647 (rule!976 (h!8083 tokens!465)))) (inv!3488 (transformation!469 (rule!976 (h!8083 tokens!465)))) e!92987))))

(declare-fun tp!80036 () Bool)

(declare-fun b!155161 () Bool)

(assert (=> b!155161 (= e!92988 (and (inv!3489 (h!8083 tokens!465)) e!92973 tp!80036))))

(declare-fun b!155162 () Bool)

(assert (=> b!155162 (= e!92971 (forall!471 (t!25294 tokens!465) lambda!4096))))

(declare-fun b!155163 () Bool)

(declare-fun res!70803 () Bool)

(assert (=> b!155163 (=> (not res!70803) (not e!92989))))

(declare-fun isEmpty!1070 (List!2695) Bool)

(assert (=> b!155163 (= res!70803 (not (isEmpty!1070 rules!1920)))))

(declare-fun b!155164 () Bool)

(declare-fun res!70805 () Bool)

(assert (=> b!155164 (=> (not res!70805) (not e!92983))))

(declare-fun seqFromList!316 (List!2694) BalanceConc!1528)

(assert (=> b!155164 (= res!70805 (= (list!951 (seqFromList!316 lt!45851)) lt!45854))))

(assert (= (and start!16630 res!70807) b!155163))

(assert (= (and b!155163 res!70803) b!155143))

(assert (= (and b!155143 res!70802) b!155156))

(assert (= (and b!155156 res!70806) b!155150))

(assert (= (and b!155150 res!70809) b!155155))

(assert (= (and b!155155 res!70811) b!155153))

(assert (= (and b!155153 res!70804) b!155144))

(assert (= (and b!155144 res!70800) b!155149))

(assert (= (and b!155149 res!70810) b!155152))

(assert (= (and b!155152 res!70808) b!155164))

(assert (= (and b!155164 res!70805) b!155154))

(assert (= (and b!155154 (not res!70801)) b!155162))

(assert (= b!155157 b!155146))

(assert (= b!155151 b!155157))

(assert (= (and start!16630 ((_ is Cons!2685) rules!1920)) b!155151))

(assert (= b!155147 b!155158))

(assert (= b!155159 b!155147))

(assert (= start!16630 b!155159))

(assert (= b!155160 b!155148))

(assert (= b!155145 b!155160))

(assert (= b!155161 b!155145))

(assert (= (and start!16630 ((_ is Cons!2686) tokens!465)) b!155161))

(declare-fun m!141271 () Bool)

(assert (=> b!155152 m!141271))

(assert (=> b!155152 m!141271))

(declare-fun m!141273 () Bool)

(assert (=> b!155152 m!141273))

(declare-fun m!141275 () Bool)

(assert (=> b!155152 m!141275))

(declare-fun m!141277 () Bool)

(assert (=> b!155160 m!141277))

(declare-fun m!141279 () Bool)

(assert (=> b!155160 m!141279))

(declare-fun m!141281 () Bool)

(assert (=> b!155144 m!141281))

(declare-fun m!141283 () Bool)

(assert (=> b!155154 m!141283))

(declare-fun m!141285 () Bool)

(assert (=> b!155154 m!141285))

(declare-fun m!141287 () Bool)

(assert (=> b!155154 m!141287))

(declare-fun m!141289 () Bool)

(assert (=> b!155154 m!141289))

(assert (=> b!155154 m!141287))

(declare-fun m!141291 () Bool)

(assert (=> b!155154 m!141291))

(declare-fun m!141293 () Bool)

(assert (=> b!155154 m!141293))

(declare-fun m!141295 () Bool)

(assert (=> b!155154 m!141295))

(declare-fun m!141297 () Bool)

(assert (=> b!155154 m!141297))

(assert (=> b!155154 m!141295))

(declare-fun m!141299 () Bool)

(assert (=> b!155154 m!141299))

(declare-fun m!141301 () Bool)

(assert (=> b!155154 m!141301))

(assert (=> b!155154 m!141291))

(declare-fun m!141303 () Bool)

(assert (=> b!155154 m!141303))

(declare-fun m!141305 () Bool)

(assert (=> b!155162 m!141305))

(declare-fun m!141307 () Bool)

(assert (=> b!155164 m!141307))

(assert (=> b!155164 m!141307))

(declare-fun m!141309 () Bool)

(assert (=> b!155164 m!141309))

(declare-fun m!141311 () Bool)

(assert (=> b!155163 m!141311))

(declare-fun m!141313 () Bool)

(assert (=> b!155159 m!141313))

(declare-fun m!141315 () Bool)

(assert (=> b!155153 m!141315))

(declare-fun m!141317 () Bool)

(assert (=> b!155145 m!141317))

(declare-fun m!141319 () Bool)

(assert (=> b!155143 m!141319))

(declare-fun m!141321 () Bool)

(assert (=> start!16630 m!141321))

(declare-fun m!141323 () Bool)

(assert (=> b!155157 m!141323))

(declare-fun m!141325 () Bool)

(assert (=> b!155157 m!141325))

(declare-fun m!141327 () Bool)

(assert (=> b!155150 m!141327))

(declare-fun m!141329 () Bool)

(assert (=> b!155147 m!141329))

(declare-fun m!141331 () Bool)

(assert (=> b!155147 m!141331))

(declare-fun m!141333 () Bool)

(assert (=> b!155161 m!141333))

(declare-fun m!141335 () Bool)

(assert (=> b!155156 m!141335))

(declare-fun m!141337 () Bool)

(assert (=> b!155156 m!141337))

(check-sat (not b!155161) (not b_next!5741) b_and!9237 (not b!155156) (not b_next!5737) (not b_next!5745) b_and!9235 (not start!16630) b_and!9229 (not b!155147) (not b_next!5747) (not b!155154) (not b!155163) (not b!155143) b_and!9239 (not b!155144) b_and!9233 b_and!9231 (not b!155159) (not b_next!5739) (not b!155164) (not b!155162) (not b!155157) (not b!155151) (not b_next!5743) (not b!155153) (not b!155160) (not b!155145) (not b!155150) (not b!155152))
(check-sat (not b_next!5741) b_and!9239 b_and!9233 b_and!9231 b_and!9237 (not b_next!5739) (not b_next!5743) (not b_next!5737) (not b_next!5745) b_and!9235 b_and!9229 (not b_next!5747))
(get-model)

(declare-fun bs!14366 () Bool)

(declare-fun d!37490 () Bool)

(assert (= bs!14366 (and d!37490 b!155153)))

(declare-fun lambda!4103 () Int)

(assert (=> bs!14366 (not (= lambda!4103 lambda!4096))))

(declare-fun b!155184 () Bool)

(declare-fun e!93005 () Bool)

(assert (=> b!155184 (= e!93005 true)))

(declare-fun b!155183 () Bool)

(declare-fun e!93004 () Bool)

(assert (=> b!155183 (= e!93004 e!93005)))

(declare-fun b!155182 () Bool)

(declare-fun e!93003 () Bool)

(assert (=> b!155182 (= e!93003 e!93004)))

(assert (=> d!37490 e!93003))

(assert (= b!155183 b!155184))

(assert (= b!155182 b!155183))

(assert (= (and d!37490 ((_ is Cons!2685) rules!1920)) b!155182))

(declare-fun order!1347 () Int)

(declare-fun order!1349 () Int)

(declare-fun dynLambda!947 (Int Int) Int)

(declare-fun dynLambda!948 (Int Int) Int)

(assert (=> b!155184 (< (dynLambda!947 order!1347 (toValue!1112 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4103))))

(declare-fun order!1351 () Int)

(declare-fun dynLambda!949 (Int Int) Int)

(assert (=> b!155184 (< (dynLambda!949 order!1351 (toChars!971 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4103))))

(assert (=> d!37490 true))

(declare-fun e!92996 () Bool)

(assert (=> d!37490 e!92996))

(declare-fun res!70824 () Bool)

(assert (=> d!37490 (=> (not res!70824) (not e!92996))))

(declare-fun lt!45879 () Bool)

(declare-fun list!954 (BalanceConc!1530) List!2696)

(assert (=> d!37490 (= res!70824 (= lt!45879 (forall!471 (list!954 lt!45858) lambda!4103)))))

(declare-fun forall!472 (BalanceConc!1530 Int) Bool)

(assert (=> d!37490 (= lt!45879 (forall!472 lt!45858 lambda!4103))))

(assert (=> d!37490 (not (isEmpty!1070 rules!1920))))

(assert (=> d!37490 (= (rulesProduceEachTokenIndividually!147 thiss!17480 rules!1920 lt!45858) lt!45879)))

(declare-fun b!155173 () Bool)

(assert (=> b!155173 (= e!92996 (= lt!45879 (rulesProduceEachTokenIndividuallyList!93 thiss!17480 rules!1920 (list!954 lt!45858))))))

(assert (= (and d!37490 res!70824) b!155173))

(declare-fun m!141341 () Bool)

(assert (=> d!37490 m!141341))

(assert (=> d!37490 m!141341))

(declare-fun m!141343 () Bool)

(assert (=> d!37490 m!141343))

(declare-fun m!141345 () Bool)

(assert (=> d!37490 m!141345))

(assert (=> d!37490 m!141311))

(assert (=> b!155173 m!141341))

(assert (=> b!155173 m!141341))

(declare-fun m!141347 () Bool)

(assert (=> b!155173 m!141347))

(assert (=> b!155156 d!37490))

(declare-fun d!37496 () Bool)

(declare-fun fromListB!130 (List!2696) BalanceConc!1530)

(assert (=> d!37496 (= (seqFromList!315 tokens!465) (fromListB!130 tokens!465))))

(declare-fun bs!14367 () Bool)

(assert (= bs!14367 d!37496))

(declare-fun m!141349 () Bool)

(assert (=> bs!14367 m!141349))

(assert (=> b!155156 d!37496))

(declare-fun d!37498 () Bool)

(declare-fun c!31233 () Bool)

(assert (=> d!37498 (= c!31233 ((_ is IntegerValue!1473) (value!17682 (h!8083 tokens!465))))))

(declare-fun e!93014 () Bool)

(assert (=> d!37498 (= (inv!21 (value!17682 (h!8083 tokens!465))) e!93014)))

(declare-fun b!155197 () Bool)

(declare-fun e!93012 () Bool)

(assert (=> b!155197 (= e!93014 e!93012)))

(declare-fun c!31232 () Bool)

(assert (=> b!155197 (= c!31232 ((_ is IntegerValue!1474) (value!17682 (h!8083 tokens!465))))))

(declare-fun b!155198 () Bool)

(declare-fun inv!17 (TokenValue!491) Bool)

(assert (=> b!155198 (= e!93012 (inv!17 (value!17682 (h!8083 tokens!465))))))

(declare-fun b!155199 () Bool)

(declare-fun e!93013 () Bool)

(declare-fun inv!15 (TokenValue!491) Bool)

(assert (=> b!155199 (= e!93013 (inv!15 (value!17682 (h!8083 tokens!465))))))

(declare-fun b!155200 () Bool)

(declare-fun inv!16 (TokenValue!491) Bool)

(assert (=> b!155200 (= e!93014 (inv!16 (value!17682 (h!8083 tokens!465))))))

(declare-fun b!155201 () Bool)

(declare-fun res!70827 () Bool)

(assert (=> b!155201 (=> res!70827 e!93013)))

(assert (=> b!155201 (= res!70827 (not ((_ is IntegerValue!1475) (value!17682 (h!8083 tokens!465)))))))

(assert (=> b!155201 (= e!93012 e!93013)))

(assert (= (and d!37498 c!31233) b!155200))

(assert (= (and d!37498 (not c!31233)) b!155197))

(assert (= (and b!155197 c!31232) b!155198))

(assert (= (and b!155197 (not c!31232)) b!155201))

(assert (= (and b!155201 (not res!70827)) b!155199))

(declare-fun m!141351 () Bool)

(assert (=> b!155198 m!141351))

(declare-fun m!141353 () Bool)

(assert (=> b!155199 m!141353))

(declare-fun m!141355 () Bool)

(assert (=> b!155200 m!141355))

(assert (=> b!155145 d!37498))

(declare-fun d!37500 () Bool)

(assert (=> d!37500 (= (inv!3485 (tag!647 (h!8082 rules!1920))) (= (mod (str.len (value!17681 (tag!647 (h!8082 rules!1920)))) 2) 0))))

(assert (=> b!155157 d!37500))

(declare-fun d!37502 () Bool)

(declare-fun res!70830 () Bool)

(declare-fun e!93017 () Bool)

(assert (=> d!37502 (=> (not res!70830) (not e!93017))))

(declare-fun semiInverseModEq!162 (Int Int) Bool)

(assert (=> d!37502 (= res!70830 (semiInverseModEq!162 (toChars!971 (transformation!469 (h!8082 rules!1920))) (toValue!1112 (transformation!469 (h!8082 rules!1920)))))))

(assert (=> d!37502 (= (inv!3488 (transformation!469 (h!8082 rules!1920))) e!93017)))

(declare-fun b!155204 () Bool)

(declare-fun equivClasses!145 (Int Int) Bool)

(assert (=> b!155204 (= e!93017 (equivClasses!145 (toChars!971 (transformation!469 (h!8082 rules!1920))) (toValue!1112 (transformation!469 (h!8082 rules!1920)))))))

(assert (= (and d!37502 res!70830) b!155204))

(declare-fun m!141357 () Bool)

(assert (=> d!37502 m!141357))

(declare-fun m!141359 () Bool)

(assert (=> b!155204 m!141359))

(assert (=> b!155157 d!37502))

(declare-fun d!37504 () Bool)

(assert (=> d!37504 (= (inv!3485 (tag!647 (rule!976 separatorToken!170))) (= (mod (str.len (value!17681 (tag!647 (rule!976 separatorToken!170)))) 2) 0))))

(assert (=> b!155147 d!37504))

(declare-fun d!37506 () Bool)

(declare-fun res!70831 () Bool)

(declare-fun e!93018 () Bool)

(assert (=> d!37506 (=> (not res!70831) (not e!93018))))

(assert (=> d!37506 (= res!70831 (semiInverseModEq!162 (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (toValue!1112 (transformation!469 (rule!976 separatorToken!170)))))))

(assert (=> d!37506 (= (inv!3488 (transformation!469 (rule!976 separatorToken!170))) e!93018)))

(declare-fun b!155205 () Bool)

(assert (=> b!155205 (= e!93018 (equivClasses!145 (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (toValue!1112 (transformation!469 (rule!976 separatorToken!170)))))))

(assert (= (and d!37506 res!70831) b!155205))

(declare-fun m!141361 () Bool)

(assert (=> d!37506 m!141361))

(declare-fun m!141363 () Bool)

(assert (=> b!155205 m!141363))

(assert (=> b!155147 d!37506))

(declare-fun d!37508 () Bool)

(declare-fun c!31235 () Bool)

(assert (=> d!37508 (= c!31235 ((_ is IntegerValue!1473) (value!17682 separatorToken!170)))))

(declare-fun e!93021 () Bool)

(assert (=> d!37508 (= (inv!21 (value!17682 separatorToken!170)) e!93021)))

(declare-fun b!155206 () Bool)

(declare-fun e!93019 () Bool)

(assert (=> b!155206 (= e!93021 e!93019)))

(declare-fun c!31234 () Bool)

(assert (=> b!155206 (= c!31234 ((_ is IntegerValue!1474) (value!17682 separatorToken!170)))))

(declare-fun b!155207 () Bool)

(assert (=> b!155207 (= e!93019 (inv!17 (value!17682 separatorToken!170)))))

(declare-fun b!155208 () Bool)

(declare-fun e!93020 () Bool)

(assert (=> b!155208 (= e!93020 (inv!15 (value!17682 separatorToken!170)))))

(declare-fun b!155209 () Bool)

(assert (=> b!155209 (= e!93021 (inv!16 (value!17682 separatorToken!170)))))

(declare-fun b!155210 () Bool)

(declare-fun res!70832 () Bool)

(assert (=> b!155210 (=> res!70832 e!93020)))

(assert (=> b!155210 (= res!70832 (not ((_ is IntegerValue!1475) (value!17682 separatorToken!170))))))

(assert (=> b!155210 (= e!93019 e!93020)))

(assert (= (and d!37508 c!31235) b!155209))

(assert (= (and d!37508 (not c!31235)) b!155206))

(assert (= (and b!155206 c!31234) b!155207))

(assert (= (and b!155206 (not c!31234)) b!155210))

(assert (= (and b!155210 (not res!70832)) b!155208))

(declare-fun m!141365 () Bool)

(assert (=> b!155207 m!141365))

(declare-fun m!141367 () Bool)

(assert (=> b!155208 m!141367))

(declare-fun m!141369 () Bool)

(assert (=> b!155209 m!141369))

(assert (=> b!155159 d!37508))

(declare-fun d!37510 () Bool)

(assert (=> d!37510 (= (inv!3485 (tag!647 (rule!976 (h!8083 tokens!465)))) (= (mod (str.len (value!17681 (tag!647 (rule!976 (h!8083 tokens!465))))) 2) 0))))

(assert (=> b!155160 d!37510))

(declare-fun d!37512 () Bool)

(declare-fun res!70833 () Bool)

(declare-fun e!93022 () Bool)

(assert (=> d!37512 (=> (not res!70833) (not e!93022))))

(assert (=> d!37512 (= res!70833 (semiInverseModEq!162 (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (toValue!1112 (transformation!469 (rule!976 (h!8083 tokens!465))))))))

(assert (=> d!37512 (= (inv!3488 (transformation!469 (rule!976 (h!8083 tokens!465)))) e!93022)))

(declare-fun b!155211 () Bool)

(assert (=> b!155211 (= e!93022 (equivClasses!145 (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (toValue!1112 (transformation!469 (rule!976 (h!8083 tokens!465))))))))

(assert (= (and d!37512 res!70833) b!155211))

(declare-fun m!141371 () Bool)

(assert (=> d!37512 m!141371))

(declare-fun m!141373 () Bool)

(assert (=> b!155211 m!141373))

(assert (=> b!155160 d!37512))

(declare-fun d!37514 () Bool)

(declare-fun lt!45909 () Bool)

(declare-fun e!93053 () Bool)

(assert (=> d!37514 (= lt!45909 e!93053)))

(declare-fun res!70847 () Bool)

(assert (=> d!37514 (=> (not res!70847) (not e!93053))))

(declare-datatypes ((tuple2!2608 0))(
  ( (tuple2!2609 (_1!1520 BalanceConc!1530) (_2!1520 BalanceConc!1528)) )
))
(declare-fun lex!172 (LexerInterface!355 List!2695 BalanceConc!1528) tuple2!2608)

(declare-fun print!98 (LexerInterface!355 BalanceConc!1530) BalanceConc!1528)

(declare-fun singletonSeq!31 (Token!682) BalanceConc!1530)

(assert (=> d!37514 (= res!70847 (= (list!954 (_1!1520 (lex!172 thiss!17480 rules!1920 (print!98 thiss!17480 (singletonSeq!31 separatorToken!170))))) (list!954 (singletonSeq!31 separatorToken!170))))))

(declare-fun e!93054 () Bool)

(assert (=> d!37514 (= lt!45909 e!93054)))

(declare-fun res!70848 () Bool)

(assert (=> d!37514 (=> (not res!70848) (not e!93054))))

(declare-fun lt!45908 () tuple2!2608)

(declare-fun size!2277 (BalanceConc!1530) Int)

(assert (=> d!37514 (= res!70848 (= (size!2277 (_1!1520 lt!45908)) 1))))

(assert (=> d!37514 (= lt!45908 (lex!172 thiss!17480 rules!1920 (print!98 thiss!17480 (singletonSeq!31 separatorToken!170))))))

(assert (=> d!37514 (not (isEmpty!1070 rules!1920))))

(assert (=> d!37514 (= (rulesProduceIndividualToken!104 thiss!17480 rules!1920 separatorToken!170) lt!45909)))

(declare-fun b!155258 () Bool)

(declare-fun res!70849 () Bool)

(assert (=> b!155258 (=> (not res!70849) (not e!93054))))

(declare-fun apply!361 (BalanceConc!1530 Int) Token!682)

(assert (=> b!155258 (= res!70849 (= (apply!361 (_1!1520 lt!45908) 0) separatorToken!170))))

(declare-fun b!155259 () Bool)

(declare-fun isEmpty!1071 (BalanceConc!1528) Bool)

(assert (=> b!155259 (= e!93054 (isEmpty!1071 (_2!1520 lt!45908)))))

(declare-fun b!155260 () Bool)

(assert (=> b!155260 (= e!93053 (isEmpty!1071 (_2!1520 (lex!172 thiss!17480 rules!1920 (print!98 thiss!17480 (singletonSeq!31 separatorToken!170))))))))

(assert (= (and d!37514 res!70848) b!155258))

(assert (= (and b!155258 res!70849) b!155259))

(assert (= (and d!37514 res!70847) b!155260))

(declare-fun m!141435 () Bool)

(assert (=> d!37514 m!141435))

(declare-fun m!141437 () Bool)

(assert (=> d!37514 m!141437))

(declare-fun m!141439 () Bool)

(assert (=> d!37514 m!141439))

(assert (=> d!37514 m!141311))

(assert (=> d!37514 m!141437))

(declare-fun m!141441 () Bool)

(assert (=> d!37514 m!141441))

(declare-fun m!141443 () Bool)

(assert (=> d!37514 m!141443))

(declare-fun m!141445 () Bool)

(assert (=> d!37514 m!141445))

(assert (=> d!37514 m!141437))

(assert (=> d!37514 m!141443))

(declare-fun m!141447 () Bool)

(assert (=> b!155258 m!141447))

(declare-fun m!141449 () Bool)

(assert (=> b!155259 m!141449))

(assert (=> b!155260 m!141437))

(assert (=> b!155260 m!141437))

(assert (=> b!155260 m!141443))

(assert (=> b!155260 m!141443))

(assert (=> b!155260 m!141445))

(declare-fun m!141451 () Bool)

(assert (=> b!155260 m!141451))

(assert (=> b!155150 d!37514))

(declare-fun d!37518 () Bool)

(declare-fun res!70854 () Bool)

(declare-fun e!93057 () Bool)

(assert (=> d!37518 (=> (not res!70854) (not e!93057))))

(declare-fun isEmpty!1072 (List!2694) Bool)

(assert (=> d!37518 (= res!70854 (not (isEmpty!1072 (originalCharacters!512 (h!8083 tokens!465)))))))

(assert (=> d!37518 (= (inv!3489 (h!8083 tokens!465)) e!93057)))

(declare-fun b!155265 () Bool)

(declare-fun res!70855 () Bool)

(assert (=> b!155265 (=> (not res!70855) (not e!93057))))

(declare-fun dynLambda!950 (Int TokenValue!491) BalanceConc!1528)

(assert (=> b!155265 (= res!70855 (= (originalCharacters!512 (h!8083 tokens!465)) (list!951 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (value!17682 (h!8083 tokens!465))))))))

(declare-fun b!155266 () Bool)

(declare-fun size!2278 (List!2694) Int)

(assert (=> b!155266 (= e!93057 (= (size!2275 (h!8083 tokens!465)) (size!2278 (originalCharacters!512 (h!8083 tokens!465)))))))

(assert (= (and d!37518 res!70854) b!155265))

(assert (= (and b!155265 res!70855) b!155266))

(declare-fun b_lambda!2999 () Bool)

(assert (=> (not b_lambda!2999) (not b!155265)))

(declare-fun tb!5421 () Bool)

(declare-fun t!25305 () Bool)

(assert (=> (and b!155146 (= (toChars!971 (transformation!469 (h!8082 rules!1920))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465))))) t!25305) tb!5421))

(declare-fun b!155271 () Bool)

(declare-fun e!93060 () Bool)

(declare-fun tp!80040 () Bool)

(declare-fun inv!3490 (Conc!760) Bool)

(assert (=> b!155271 (= e!93060 (and (inv!3490 (c!31223 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (value!17682 (h!8083 tokens!465))))) tp!80040))))

(declare-fun result!7924 () Bool)

(declare-fun inv!3491 (BalanceConc!1528) Bool)

(assert (=> tb!5421 (= result!7924 (and (inv!3491 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (value!17682 (h!8083 tokens!465)))) e!93060))))

(assert (= tb!5421 b!155271))

(declare-fun m!141453 () Bool)

(assert (=> b!155271 m!141453))

(declare-fun m!141455 () Bool)

(assert (=> tb!5421 m!141455))

(assert (=> b!155265 t!25305))

(declare-fun b_and!9241 () Bool)

(assert (= b_and!9231 (and (=> t!25305 result!7924) b_and!9241)))

(declare-fun tb!5423 () Bool)

(declare-fun t!25307 () Bool)

(assert (=> (and b!155158 (= (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465))))) t!25307) tb!5423))

(declare-fun result!7928 () Bool)

(assert (= result!7928 result!7924))

(assert (=> b!155265 t!25307))

(declare-fun b_and!9243 () Bool)

(assert (= b_and!9235 (and (=> t!25307 result!7928) b_and!9243)))

(declare-fun t!25309 () Bool)

(declare-fun tb!5425 () Bool)

(assert (=> (and b!155148 (= (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465))))) t!25309) tb!5425))

(declare-fun result!7930 () Bool)

(assert (= result!7930 result!7924))

(assert (=> b!155265 t!25309))

(declare-fun b_and!9245 () Bool)

(assert (= b_and!9239 (and (=> t!25309 result!7930) b_and!9245)))

(declare-fun m!141457 () Bool)

(assert (=> d!37518 m!141457))

(declare-fun m!141459 () Bool)

(assert (=> b!155265 m!141459))

(assert (=> b!155265 m!141459))

(declare-fun m!141461 () Bool)

(assert (=> b!155265 m!141461))

(declare-fun m!141463 () Bool)

(assert (=> b!155266 m!141463))

(assert (=> b!155161 d!37518))

(declare-fun d!37520 () Bool)

(declare-fun res!70860 () Bool)

(declare-fun e!93065 () Bool)

(assert (=> d!37520 (=> res!70860 e!93065)))

(assert (=> d!37520 (= res!70860 ((_ is Nil!2686) (t!25294 tokens!465)))))

(assert (=> d!37520 (= (forall!471 (t!25294 tokens!465) lambda!4096) e!93065)))

(declare-fun b!155276 () Bool)

(declare-fun e!93066 () Bool)

(assert (=> b!155276 (= e!93065 e!93066)))

(declare-fun res!70861 () Bool)

(assert (=> b!155276 (=> (not res!70861) (not e!93066))))

(declare-fun dynLambda!951 (Int Token!682) Bool)

(assert (=> b!155276 (= res!70861 (dynLambda!951 lambda!4096 (h!8083 (t!25294 tokens!465))))))

(declare-fun b!155277 () Bool)

(assert (=> b!155277 (= e!93066 (forall!471 (t!25294 (t!25294 tokens!465)) lambda!4096))))

(assert (= (and d!37520 (not res!70860)) b!155276))

(assert (= (and b!155276 res!70861) b!155277))

(declare-fun b_lambda!3001 () Bool)

(assert (=> (not b_lambda!3001) (not b!155276)))

(declare-fun m!141465 () Bool)

(assert (=> b!155276 m!141465))

(declare-fun m!141467 () Bool)

(assert (=> b!155277 m!141467))

(assert (=> b!155162 d!37520))

(declare-fun d!37522 () Bool)

(declare-fun list!955 (Conc!760) List!2694)

(assert (=> d!37522 (= (list!951 (printWithSeparatorTokenWhenNeededRec!38 thiss!17480 rules!1920 lt!45858 separatorToken!170 0)) (list!955 (c!31223 (printWithSeparatorTokenWhenNeededRec!38 thiss!17480 rules!1920 lt!45858 separatorToken!170 0))))))

(declare-fun bs!14371 () Bool)

(assert (= bs!14371 d!37522))

(declare-fun m!141469 () Bool)

(assert (=> bs!14371 m!141469))

(assert (=> b!155152 d!37522))

(declare-fun bs!14376 () Bool)

(declare-fun d!37524 () Bool)

(assert (= bs!14376 (and d!37524 b!155153)))

(declare-fun lambda!4115 () Int)

(assert (=> bs!14376 (= lambda!4115 lambda!4096)))

(declare-fun bs!14377 () Bool)

(assert (= bs!14377 (and d!37524 d!37490)))

(assert (=> bs!14377 (not (= lambda!4115 lambda!4103))))

(declare-fun bs!14378 () Bool)

(declare-fun b!155359 () Bool)

(assert (= bs!14378 (and b!155359 b!155153)))

(declare-fun lambda!4116 () Int)

(assert (=> bs!14378 (not (= lambda!4116 lambda!4096))))

(declare-fun bs!14379 () Bool)

(assert (= bs!14379 (and b!155359 d!37490)))

(assert (=> bs!14379 (= lambda!4116 lambda!4103)))

(declare-fun bs!14380 () Bool)

(assert (= bs!14380 (and b!155359 d!37524)))

(assert (=> bs!14380 (not (= lambda!4116 lambda!4115))))

(declare-fun b!155372 () Bool)

(declare-fun e!93123 () Bool)

(assert (=> b!155372 (= e!93123 true)))

(declare-fun b!155371 () Bool)

(declare-fun e!93122 () Bool)

(assert (=> b!155371 (= e!93122 e!93123)))

(declare-fun b!155370 () Bool)

(declare-fun e!93121 () Bool)

(assert (=> b!155370 (= e!93121 e!93122)))

(assert (=> b!155359 e!93121))

(assert (= b!155371 b!155372))

(assert (= b!155370 b!155371))

(assert (= (and b!155359 ((_ is Cons!2685) rules!1920)) b!155370))

(assert (=> b!155372 (< (dynLambda!947 order!1347 (toValue!1112 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4116))))

(assert (=> b!155372 (< (dynLambda!949 order!1351 (toChars!971 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4116))))

(assert (=> b!155359 true))

(declare-fun e!93114 () BalanceConc!1528)

(declare-fun e!93115 () BalanceConc!1528)

(assert (=> b!155359 (= e!93114 e!93115)))

(declare-fun lt!45966 () List!2696)

(assert (=> b!155359 (= lt!45966 (list!954 lt!45858))))

(declare-fun lt!45968 () Unit!2106)

(declare-fun lemmaDropApply!112 (List!2696 Int) Unit!2106)

(assert (=> b!155359 (= lt!45968 (lemmaDropApply!112 lt!45966 0))))

(declare-fun head!586 (List!2696) Token!682)

(declare-fun drop!125 (List!2696 Int) List!2696)

(declare-fun apply!362 (List!2696 Int) Token!682)

(assert (=> b!155359 (= (head!586 (drop!125 lt!45966 0)) (apply!362 lt!45966 0))))

(declare-fun lt!45963 () Unit!2106)

(assert (=> b!155359 (= lt!45963 lt!45968)))

(declare-fun lt!45965 () List!2696)

(assert (=> b!155359 (= lt!45965 (list!954 lt!45858))))

(declare-fun lt!45973 () Unit!2106)

(declare-fun lemmaDropTail!104 (List!2696 Int) Unit!2106)

(assert (=> b!155359 (= lt!45973 (lemmaDropTail!104 lt!45965 0))))

(declare-fun tail!326 (List!2696) List!2696)

(assert (=> b!155359 (= (tail!326 (drop!125 lt!45965 0)) (drop!125 lt!45965 (+ 0 1)))))

(declare-fun lt!45969 () Unit!2106)

(assert (=> b!155359 (= lt!45969 lt!45973)))

(declare-fun lt!45964 () Unit!2106)

(declare-fun forallContained!56 (List!2696 Int Token!682) Unit!2106)

(assert (=> b!155359 (= lt!45964 (forallContained!56 (list!954 lt!45858) lambda!4116 (apply!361 lt!45858 0)))))

(declare-fun lt!45971 () BalanceConc!1528)

(assert (=> b!155359 (= lt!45971 (printWithSeparatorTokenWhenNeededRec!38 thiss!17480 rules!1920 lt!45858 separatorToken!170 (+ 0 1)))))

(declare-datatypes ((tuple2!2610 0))(
  ( (tuple2!2611 (_1!1521 Token!682) (_2!1521 BalanceConc!1528)) )
))
(declare-datatypes ((Option!254 0))(
  ( (None!253) (Some!253 (v!13644 tuple2!2610)) )
))
(declare-fun lt!45962 () Option!254)

(declare-fun maxPrefixZipperSequence!72 (LexerInterface!355 List!2695 BalanceConc!1528) Option!254)

(declare-fun ++!586 (BalanceConc!1528 BalanceConc!1528) BalanceConc!1528)

(assert (=> b!155359 (= lt!45962 (maxPrefixZipperSequence!72 thiss!17480 rules!1920 (++!586 (charsOf!124 (apply!361 lt!45858 0)) lt!45971)))))

(declare-fun res!70880 () Bool)

(assert (=> b!155359 (= res!70880 ((_ is Some!253) lt!45962))))

(declare-fun e!93118 () Bool)

(assert (=> b!155359 (=> (not res!70880) (not e!93118))))

(declare-fun c!31279 () Bool)

(assert (=> b!155359 (= c!31279 e!93118)))

(declare-fun b!155360 () Bool)

(declare-fun e!93116 () BalanceConc!1528)

(declare-fun call!6420 () BalanceConc!1528)

(assert (=> b!155360 (= e!93116 call!6420)))

(declare-fun lt!45975 () BalanceConc!1528)

(declare-fun dropList!72 (BalanceConc!1530 Int) List!2696)

(assert (=> d!37524 (= (list!951 lt!45975) (printWithSeparatorTokenWhenNeededList!48 thiss!17480 rules!1920 (dropList!72 lt!45858 0) separatorToken!170))))

(assert (=> d!37524 (= lt!45975 e!93114)))

(declare-fun c!31278 () Bool)

(assert (=> d!37524 (= c!31278 (>= 0 (size!2277 lt!45858)))))

(declare-fun lt!45974 () Unit!2106)

(declare-fun lemmaContentSubsetPreservesForall!16 (List!2696 List!2696 Int) Unit!2106)

(assert (=> d!37524 (= lt!45974 (lemmaContentSubsetPreservesForall!16 (list!954 lt!45858) (dropList!72 lt!45858 0) lambda!4115))))

(declare-fun e!93117 () Bool)

(assert (=> d!37524 e!93117))

(declare-fun res!70878 () Bool)

(assert (=> d!37524 (=> (not res!70878) (not e!93117))))

(assert (=> d!37524 (= res!70878 (>= 0 0))))

(assert (=> d!37524 (= (printWithSeparatorTokenWhenNeededRec!38 thiss!17480 rules!1920 lt!45858 separatorToken!170 0) lt!45975)))

(declare-fun bm!6412 () Bool)

(declare-fun call!6418 () Token!682)

(assert (=> bm!6412 (= call!6418 (apply!361 lt!45858 0))))

(declare-fun b!155361 () Bool)

(declare-fun e!93120 () Bool)

(assert (=> b!155361 (= e!93120 (not (= (_1!1521 (v!13644 lt!45962)) call!6418)))))

(declare-fun b!155362 () Bool)

(assert (=> b!155362 (= e!93118 (= (_1!1521 (v!13644 lt!45962)) (apply!361 lt!45858 0)))))

(declare-fun b!155363 () Bool)

(declare-fun e!93119 () BalanceConc!1528)

(assert (=> b!155363 (= e!93119 (BalanceConc!1529 Empty!760))))

(declare-fun call!6419 () Token!682)

(declare-fun printTailRec!61 (LexerInterface!355 BalanceConc!1530 Int BalanceConc!1528) BalanceConc!1528)

(assert (=> b!155363 (= (print!98 thiss!17480 (singletonSeq!31 call!6419)) (printTailRec!61 thiss!17480 (singletonSeq!31 call!6419) 0 (BalanceConc!1529 Empty!760)))))

(declare-fun lt!45970 () Unit!2106)

(declare-fun Unit!2112 () Unit!2106)

(assert (=> b!155363 (= lt!45970 Unit!2112)))

(declare-fun call!6421 () BalanceConc!1528)

(declare-fun lt!45972 () Unit!2106)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!20 (LexerInterface!355 List!2695 List!2694 List!2694) Unit!2106)

(assert (=> b!155363 (= lt!45972 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!20 thiss!17480 rules!1920 (list!951 call!6421) (list!951 lt!45971)))))

(assert (=> b!155363 false))

(declare-fun lt!45967 () Unit!2106)

(declare-fun Unit!2113 () Unit!2106)

(assert (=> b!155363 (= lt!45967 Unit!2113)))

(declare-fun bm!6413 () Bool)

(assert (=> bm!6413 (= call!6421 call!6420)))

(declare-fun bm!6414 () Bool)

(declare-fun c!31280 () Bool)

(assert (=> bm!6414 (= c!31280 c!31279)))

(declare-fun call!6417 () BalanceConc!1528)

(assert (=> bm!6414 (= call!6417 (++!586 e!93116 (ite c!31279 lt!45971 call!6421)))))

(declare-fun b!155364 () Bool)

(declare-fun c!31277 () Bool)

(assert (=> b!155364 (= c!31277 e!93120)))

(declare-fun res!70879 () Bool)

(assert (=> b!155364 (=> (not res!70879) (not e!93120))))

(assert (=> b!155364 (= res!70879 ((_ is Some!253) lt!45962))))

(assert (=> b!155364 (= e!93115 e!93119)))

(declare-fun bm!6415 () Bool)

(assert (=> bm!6415 (= call!6420 (charsOf!124 (ite c!31279 call!6418 (ite c!31277 separatorToken!170 call!6419))))))

(declare-fun b!155365 () Bool)

(assert (=> b!155365 (= e!93114 (BalanceConc!1529 Empty!760))))

(declare-fun b!155366 () Bool)

(assert (=> b!155366 (= e!93116 (charsOf!124 call!6419))))

(declare-fun b!155367 () Bool)

(assert (=> b!155367 (= e!93115 call!6417)))

(declare-fun b!155368 () Bool)

(assert (=> b!155368 (= e!93117 (<= 0 (size!2277 lt!45858)))))

(declare-fun b!155369 () Bool)

(assert (=> b!155369 (= e!93119 (++!586 call!6417 lt!45971))))

(declare-fun bm!6416 () Bool)

(assert (=> bm!6416 (= call!6419 call!6418)))

(assert (= (and d!37524 res!70878) b!155368))

(assert (= (and d!37524 c!31278) b!155365))

(assert (= (and d!37524 (not c!31278)) b!155359))

(assert (= (and b!155359 res!70880) b!155362))

(assert (= (and b!155359 c!31279) b!155367))

(assert (= (and b!155359 (not c!31279)) b!155364))

(assert (= (and b!155364 res!70879) b!155361))

(assert (= (and b!155364 c!31277) b!155369))

(assert (= (and b!155364 (not c!31277)) b!155363))

(assert (= (or b!155369 b!155363) bm!6416))

(assert (= (or b!155369 b!155363) bm!6413))

(assert (= (or b!155367 b!155361 bm!6416) bm!6412))

(assert (= (or b!155367 bm!6413) bm!6415))

(assert (= (or b!155367 b!155369) bm!6414))

(assert (= (and bm!6414 c!31280) b!155360))

(assert (= (and bm!6414 (not c!31280)) b!155366))

(declare-fun m!141523 () Bool)

(assert (=> bm!6412 m!141523))

(assert (=> b!155359 m!141341))

(assert (=> b!155359 m!141523))

(declare-fun m!141525 () Bool)

(assert (=> b!155359 m!141525))

(declare-fun m!141527 () Bool)

(assert (=> b!155359 m!141527))

(declare-fun m!141529 () Bool)

(assert (=> b!155359 m!141529))

(declare-fun m!141531 () Bool)

(assert (=> b!155359 m!141531))

(declare-fun m!141533 () Bool)

(assert (=> b!155359 m!141533))

(declare-fun m!141535 () Bool)

(assert (=> b!155359 m!141535))

(declare-fun m!141537 () Bool)

(assert (=> b!155359 m!141537))

(declare-fun m!141539 () Bool)

(assert (=> b!155359 m!141539))

(declare-fun m!141541 () Bool)

(assert (=> b!155359 m!141541))

(assert (=> b!155359 m!141539))

(declare-fun m!141543 () Bool)

(assert (=> b!155359 m!141543))

(declare-fun m!141545 () Bool)

(assert (=> b!155359 m!141545))

(assert (=> b!155359 m!141531))

(assert (=> b!155359 m!141341))

(assert (=> b!155359 m!141523))

(declare-fun m!141547 () Bool)

(assert (=> b!155359 m!141547))

(declare-fun m!141549 () Bool)

(assert (=> b!155359 m!141549))

(assert (=> b!155359 m!141523))

(assert (=> b!155359 m!141537))

(assert (=> b!155359 m!141547))

(declare-fun m!141551 () Bool)

(assert (=> d!37524 m!141551))

(declare-fun m!141553 () Bool)

(assert (=> d!37524 m!141553))

(assert (=> d!37524 m!141341))

(assert (=> d!37524 m!141551))

(declare-fun m!141555 () Bool)

(assert (=> d!37524 m!141555))

(declare-fun m!141557 () Bool)

(assert (=> d!37524 m!141557))

(assert (=> d!37524 m!141341))

(assert (=> d!37524 m!141551))

(declare-fun m!141559 () Bool)

(assert (=> d!37524 m!141559))

(assert (=> b!155362 m!141523))

(assert (=> b!155368 m!141557))

(declare-fun m!141561 () Bool)

(assert (=> b!155366 m!141561))

(declare-fun m!141563 () Bool)

(assert (=> bm!6415 m!141563))

(declare-fun m!141565 () Bool)

(assert (=> b!155369 m!141565))

(declare-fun m!141567 () Bool)

(assert (=> bm!6414 m!141567))

(declare-fun m!141569 () Bool)

(assert (=> b!155363 m!141569))

(assert (=> b!155363 m!141569))

(declare-fun m!141571 () Bool)

(assert (=> b!155363 m!141571))

(declare-fun m!141573 () Bool)

(assert (=> b!155363 m!141573))

(declare-fun m!141575 () Bool)

(assert (=> b!155363 m!141575))

(declare-fun m!141577 () Bool)

(assert (=> b!155363 m!141577))

(assert (=> b!155363 m!141571))

(assert (=> b!155363 m!141575))

(assert (=> b!155363 m!141575))

(declare-fun m!141579 () Bool)

(assert (=> b!155363 m!141579))

(assert (=> b!155152 d!37524))

(declare-fun bs!14394 () Bool)

(declare-fun b!155462 () Bool)

(assert (= bs!14394 (and b!155462 b!155153)))

(declare-fun lambda!4123 () Int)

(assert (=> bs!14394 (not (= lambda!4123 lambda!4096))))

(declare-fun bs!14395 () Bool)

(assert (= bs!14395 (and b!155462 d!37490)))

(assert (=> bs!14395 (= lambda!4123 lambda!4103)))

(declare-fun bs!14396 () Bool)

(assert (= bs!14396 (and b!155462 d!37524)))

(assert (=> bs!14396 (not (= lambda!4123 lambda!4115))))

(declare-fun bs!14397 () Bool)

(assert (= bs!14397 (and b!155462 b!155359)))

(assert (=> bs!14397 (= lambda!4123 lambda!4116)))

(declare-fun b!155466 () Bool)

(declare-fun e!93183 () Bool)

(assert (=> b!155466 (= e!93183 true)))

(declare-fun b!155465 () Bool)

(declare-fun e!93182 () Bool)

(assert (=> b!155465 (= e!93182 e!93183)))

(declare-fun b!155464 () Bool)

(declare-fun e!93181 () Bool)

(assert (=> b!155464 (= e!93181 e!93182)))

(assert (=> b!155462 e!93181))

(assert (= b!155465 b!155466))

(assert (= b!155464 b!155465))

(assert (= (and b!155462 ((_ is Cons!2685) rules!1920)) b!155464))

(assert (=> b!155466 (< (dynLambda!947 order!1347 (toValue!1112 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4123))))

(assert (=> b!155466 (< (dynLambda!949 order!1351 (toChars!971 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4123))))

(assert (=> b!155462 true))

(declare-fun b!155454 () Bool)

(declare-fun e!93177 () BalanceConc!1528)

(assert (=> b!155454 (= e!93177 (charsOf!124 separatorToken!170))))

(declare-fun bm!6432 () Bool)

(declare-fun c!31300 () Bool)

(declare-fun c!31301 () Bool)

(assert (=> bm!6432 (= c!31300 c!31301)))

(declare-fun lt!46010 () List!2694)

(declare-fun call!6438 () List!2694)

(declare-fun call!6439 () List!2694)

(declare-fun e!93178 () List!2694)

(assert (=> bm!6432 (= call!6439 (++!584 e!93178 (ite c!31301 lt!46010 call!6438)))))

(declare-fun bm!6433 () Bool)

(declare-fun call!6440 () BalanceConc!1528)

(declare-fun call!6437 () List!2694)

(assert (=> bm!6433 (= call!6437 (list!951 (ite c!31301 call!6440 e!93177)))))

(declare-fun bm!6434 () Bool)

(assert (=> bm!6434 (= call!6438 call!6437)))

(declare-fun c!31299 () Bool)

(declare-fun c!31302 () Bool)

(assert (=> bm!6434 (= c!31299 c!31302)))

(declare-fun b!155455 () Bool)

(declare-datatypes ((tuple2!2612 0))(
  ( (tuple2!2613 (_1!1522 Token!682) (_2!1522 List!2694)) )
))
(declare-datatypes ((Option!255 0))(
  ( (None!254) (Some!254 (v!13645 tuple2!2612)) )
))
(declare-fun lt!46012 () Option!255)

(assert (=> b!155455 (= c!31302 (and ((_ is Some!254) lt!46012) (not (= (_1!1522 (v!13645 lt!46012)) (h!8083 tokens!465)))))))

(declare-fun e!93180 () List!2694)

(declare-fun e!93176 () List!2694)

(assert (=> b!155455 (= e!93180 e!93176)))

(declare-fun b!155456 () Bool)

(declare-fun call!6441 () BalanceConc!1528)

(assert (=> b!155456 (= e!93178 (list!951 call!6441))))

(declare-fun b!155457 () Bool)

(declare-fun e!93179 () List!2694)

(assert (=> b!155457 (= e!93179 Nil!2684)))

(declare-fun bm!6435 () Bool)

(assert (=> bm!6435 (= call!6440 (charsOf!124 (h!8083 tokens!465)))))

(declare-fun b!155458 () Bool)

(assert (=> b!155458 (= e!93176 Nil!2684)))

(assert (=> b!155458 (= (print!98 thiss!17480 (singletonSeq!31 (h!8083 tokens!465))) (printTailRec!61 thiss!17480 (singletonSeq!31 (h!8083 tokens!465)) 0 (BalanceConc!1529 Empty!760)))))

(declare-fun lt!46014 () Unit!2106)

(declare-fun Unit!2116 () Unit!2106)

(assert (=> b!155458 (= lt!46014 Unit!2116)))

(declare-fun lt!46013 () Unit!2106)

(assert (=> b!155458 (= lt!46013 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!20 thiss!17480 rules!1920 call!6438 lt!46010))))

(assert (=> b!155458 false))

(declare-fun lt!46011 () Unit!2106)

(declare-fun Unit!2117 () Unit!2106)

(assert (=> b!155458 (= lt!46011 Unit!2117)))

(declare-fun b!155459 () Bool)

(assert (=> b!155459 (= e!93178 call!6437)))

(declare-fun b!155460 () Bool)

(assert (=> b!155460 (= e!93180 call!6439)))

(declare-fun b!155461 () Bool)

(assert (=> b!155461 (= e!93177 call!6441)))

(declare-fun bm!6436 () Bool)

(assert (=> bm!6436 (= call!6441 call!6440)))

(assert (=> b!155462 (= e!93179 e!93180)))

(declare-fun lt!46015 () Unit!2106)

(assert (=> b!155462 (= lt!46015 (forallContained!56 tokens!465 lambda!4123 (h!8083 tokens!465)))))

(assert (=> b!155462 (= lt!46010 (printWithSeparatorTokenWhenNeededList!48 thiss!17480 rules!1920 (t!25294 tokens!465) separatorToken!170))))

(declare-fun maxPrefix!113 (LexerInterface!355 List!2695 List!2694) Option!255)

(assert (=> b!155462 (= lt!46012 (maxPrefix!113 thiss!17480 rules!1920 (++!584 (list!951 (charsOf!124 (h!8083 tokens!465))) lt!46010)))))

(assert (=> b!155462 (= c!31301 (and ((_ is Some!254) lt!46012) (= (_1!1522 (v!13645 lt!46012)) (h!8083 tokens!465))))))

(declare-fun d!37536 () Bool)

(declare-fun c!31298 () Bool)

(assert (=> d!37536 (= c!31298 ((_ is Cons!2686) tokens!465))))

(assert (=> d!37536 (= (printWithSeparatorTokenWhenNeededList!48 thiss!17480 rules!1920 tokens!465 separatorToken!170) e!93179)))

(declare-fun b!155463 () Bool)

(assert (=> b!155463 (= e!93176 (++!584 call!6439 lt!46010))))

(assert (= (and d!37536 c!31298) b!155462))

(assert (= (and d!37536 (not c!31298)) b!155457))

(assert (= (and b!155462 c!31301) b!155460))

(assert (= (and b!155462 (not c!31301)) b!155455))

(assert (= (and b!155455 c!31302) b!155463))

(assert (= (and b!155455 (not c!31302)) b!155458))

(assert (= (or b!155463 b!155458) bm!6436))

(assert (= (or b!155463 b!155458) bm!6434))

(assert (= (and bm!6434 c!31299) b!155454))

(assert (= (and bm!6434 (not c!31299)) b!155461))

(assert (= (or b!155460 bm!6436) bm!6435))

(assert (= (or b!155460 bm!6434) bm!6433))

(assert (= (or b!155460 b!155463) bm!6432))

(assert (= (and bm!6432 c!31300) b!155459))

(assert (= (and bm!6432 (not c!31300)) b!155456))

(assert (=> b!155454 m!141287))

(declare-fun m!141703 () Bool)

(assert (=> bm!6433 m!141703))

(assert (=> bm!6435 m!141295))

(declare-fun m!141705 () Bool)

(assert (=> bm!6432 m!141705))

(declare-fun m!141707 () Bool)

(assert (=> b!155458 m!141707))

(assert (=> b!155458 m!141707))

(declare-fun m!141709 () Bool)

(assert (=> b!155458 m!141709))

(assert (=> b!155458 m!141707))

(declare-fun m!141711 () Bool)

(assert (=> b!155458 m!141711))

(declare-fun m!141713 () Bool)

(assert (=> b!155458 m!141713))

(declare-fun m!141715 () Bool)

(assert (=> b!155456 m!141715))

(declare-fun m!141719 () Bool)

(assert (=> b!155462 m!141719))

(declare-fun m!141723 () Bool)

(assert (=> b!155462 m!141723))

(assert (=> b!155462 m!141295))

(assert (=> b!155462 m!141297))

(declare-fun m!141725 () Bool)

(assert (=> b!155462 m!141725))

(assert (=> b!155462 m!141297))

(assert (=> b!155462 m!141719))

(assert (=> b!155462 m!141285))

(assert (=> b!155462 m!141295))

(declare-fun m!141727 () Bool)

(assert (=> b!155463 m!141727))

(assert (=> b!155152 d!37536))

(declare-fun d!37574 () Bool)

(assert (=> d!37574 (= (isEmpty!1070 rules!1920) ((_ is Nil!2685) rules!1920))))

(assert (=> b!155163 d!37574))

(declare-fun d!37578 () Bool)

(assert (=> d!37578 (= (list!951 (seqFromList!316 lt!45851)) (list!955 (c!31223 (seqFromList!316 lt!45851))))))

(declare-fun bs!14398 () Bool)

(assert (= bs!14398 d!37578))

(declare-fun m!141731 () Bool)

(assert (=> bs!14398 m!141731))

(assert (=> b!155164 d!37578))

(declare-fun d!37580 () Bool)

(declare-fun fromListB!131 (List!2694) BalanceConc!1528)

(assert (=> d!37580 (= (seqFromList!316 lt!45851) (fromListB!131 lt!45851))))

(declare-fun bs!14399 () Bool)

(assert (= bs!14399 d!37580))

(declare-fun m!141733 () Bool)

(assert (=> bs!14399 m!141733))

(assert (=> b!155164 d!37580))

(declare-fun d!37582 () Bool)

(declare-fun res!70925 () Bool)

(declare-fun e!93193 () Bool)

(assert (=> d!37582 (=> res!70925 e!93193)))

(assert (=> d!37582 (= res!70925 ((_ is Nil!2686) tokens!465))))

(assert (=> d!37582 (= (forall!471 tokens!465 lambda!4096) e!93193)))

(declare-fun b!155476 () Bool)

(declare-fun e!93194 () Bool)

(assert (=> b!155476 (= e!93193 e!93194)))

(declare-fun res!70926 () Bool)

(assert (=> b!155476 (=> (not res!70926) (not e!93194))))

(assert (=> b!155476 (= res!70926 (dynLambda!951 lambda!4096 (h!8083 tokens!465)))))

(declare-fun b!155477 () Bool)

(assert (=> b!155477 (= e!93194 (forall!471 (t!25294 tokens!465) lambda!4096))))

(assert (= (and d!37582 (not res!70925)) b!155476))

(assert (= (and b!155476 res!70926) b!155477))

(declare-fun b_lambda!3015 () Bool)

(assert (=> (not b_lambda!3015) (not b!155476)))

(declare-fun m!141735 () Bool)

(assert (=> b!155476 m!141735))

(assert (=> b!155477 m!141305))

(assert (=> b!155153 d!37582))

(declare-fun d!37584 () Bool)

(declare-fun res!70927 () Bool)

(declare-fun e!93195 () Bool)

(assert (=> d!37584 (=> (not res!70927) (not e!93195))))

(assert (=> d!37584 (= res!70927 (not (isEmpty!1072 (originalCharacters!512 separatorToken!170))))))

(assert (=> d!37584 (= (inv!3489 separatorToken!170) e!93195)))

(declare-fun b!155478 () Bool)

(declare-fun res!70928 () Bool)

(assert (=> b!155478 (=> (not res!70928) (not e!93195))))

(assert (=> b!155478 (= res!70928 (= (originalCharacters!512 separatorToken!170) (list!951 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (value!17682 separatorToken!170)))))))

(declare-fun b!155479 () Bool)

(assert (=> b!155479 (= e!93195 (= (size!2275 separatorToken!170) (size!2278 (originalCharacters!512 separatorToken!170))))))

(assert (= (and d!37584 res!70927) b!155478))

(assert (= (and b!155478 res!70928) b!155479))

(declare-fun b_lambda!3017 () Bool)

(assert (=> (not b_lambda!3017) (not b!155478)))

(declare-fun tb!5439 () Bool)

(declare-fun t!25334 () Bool)

(assert (=> (and b!155146 (= (toChars!971 (transformation!469 (h!8082 rules!1920))) (toChars!971 (transformation!469 (rule!976 separatorToken!170)))) t!25334) tb!5439))

(declare-fun b!155482 () Bool)

(declare-fun e!93198 () Bool)

(declare-fun tp!80045 () Bool)

(assert (=> b!155482 (= e!93198 (and (inv!3490 (c!31223 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (value!17682 separatorToken!170)))) tp!80045))))

(declare-fun result!7946 () Bool)

(assert (=> tb!5439 (= result!7946 (and (inv!3491 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (value!17682 separatorToken!170))) e!93198))))

(assert (= tb!5439 b!155482))

(declare-fun m!141741 () Bool)

(assert (=> b!155482 m!141741))

(declare-fun m!141743 () Bool)

(assert (=> tb!5439 m!141743))

(assert (=> b!155478 t!25334))

(declare-fun b_and!9271 () Bool)

(assert (= b_and!9241 (and (=> t!25334 result!7946) b_and!9271)))

(declare-fun t!25336 () Bool)

(declare-fun tb!5441 () Bool)

(assert (=> (and b!155158 (= (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (toChars!971 (transformation!469 (rule!976 separatorToken!170)))) t!25336) tb!5441))

(declare-fun result!7948 () Bool)

(assert (= result!7948 result!7946))

(assert (=> b!155478 t!25336))

(declare-fun b_and!9273 () Bool)

(assert (= b_and!9243 (and (=> t!25336 result!7948) b_and!9273)))

(declare-fun t!25338 () Bool)

(declare-fun tb!5443 () Bool)

(assert (=> (and b!155148 (= (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (toChars!971 (transformation!469 (rule!976 separatorToken!170)))) t!25338) tb!5443))

(declare-fun result!7950 () Bool)

(assert (= result!7950 result!7946))

(assert (=> b!155478 t!25338))

(declare-fun b_and!9275 () Bool)

(assert (= b_and!9245 (and (=> t!25338 result!7950) b_and!9275)))

(declare-fun m!141745 () Bool)

(assert (=> d!37584 m!141745))

(declare-fun m!141747 () Bool)

(assert (=> b!155478 m!141747))

(assert (=> b!155478 m!141747))

(declare-fun m!141749 () Bool)

(assert (=> b!155478 m!141749))

(declare-fun m!141751 () Bool)

(assert (=> b!155479 m!141751))

(assert (=> start!16630 d!37584))

(declare-fun d!37588 () Bool)

(assert (=> d!37588 (= (list!951 (charsOf!124 separatorToken!170)) (list!955 (c!31223 (charsOf!124 separatorToken!170))))))

(declare-fun bs!14400 () Bool)

(assert (= bs!14400 d!37588))

(declare-fun m!141753 () Bool)

(assert (=> bs!14400 m!141753))

(assert (=> b!155154 d!37588))

(declare-fun bs!14408 () Bool)

(declare-fun d!37590 () Bool)

(assert (= bs!14408 (and d!37590 b!155153)))

(declare-fun lambda!4131 () Int)

(assert (=> bs!14408 (not (= lambda!4131 lambda!4096))))

(declare-fun bs!14409 () Bool)

(assert (= bs!14409 (and d!37590 b!155359)))

(assert (=> bs!14409 (= lambda!4131 lambda!4116)))

(declare-fun bs!14410 () Bool)

(assert (= bs!14410 (and d!37590 b!155462)))

(assert (=> bs!14410 (= lambda!4131 lambda!4123)))

(declare-fun bs!14411 () Bool)

(assert (= bs!14411 (and d!37590 d!37524)))

(assert (=> bs!14411 (not (= lambda!4131 lambda!4115))))

(declare-fun bs!14412 () Bool)

(assert (= bs!14412 (and d!37590 d!37490)))

(assert (=> bs!14412 (= lambda!4131 lambda!4103)))

(declare-fun b!155510 () Bool)

(declare-fun e!93222 () Bool)

(assert (=> b!155510 (= e!93222 true)))

(declare-fun b!155509 () Bool)

(declare-fun e!93221 () Bool)

(assert (=> b!155509 (= e!93221 e!93222)))

(declare-fun b!155507 () Bool)

(declare-fun e!93220 () Bool)

(assert (=> b!155507 (= e!93220 e!93221)))

(assert (=> d!37590 e!93220))

(assert (= b!155509 b!155510))

(assert (= b!155507 b!155509))

(assert (= (and d!37590 ((_ is Cons!2685) rules!1920)) b!155507))

(assert (=> b!155510 (< (dynLambda!947 order!1347 (toValue!1112 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4131))))

(assert (=> b!155510 (< (dynLambda!949 order!1351 (toChars!971 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4131))))

(assert (=> d!37590 true))

(declare-fun lt!46021 () Bool)

(assert (=> d!37590 (= lt!46021 (forall!471 (t!25294 tokens!465) lambda!4131))))

(declare-fun e!93217 () Bool)

(assert (=> d!37590 (= lt!46021 e!93217)))

(declare-fun res!70943 () Bool)

(assert (=> d!37590 (=> res!70943 e!93217)))

(assert (=> d!37590 (= res!70943 (not ((_ is Cons!2686) (t!25294 tokens!465))))))

(assert (=> d!37590 (not (isEmpty!1070 rules!1920))))

(assert (=> d!37590 (= (rulesProduceEachTokenIndividuallyList!93 thiss!17480 rules!1920 (t!25294 tokens!465)) lt!46021)))

(declare-fun b!155502 () Bool)

(declare-fun e!93216 () Bool)

(assert (=> b!155502 (= e!93217 e!93216)))

(declare-fun res!70944 () Bool)

(assert (=> b!155502 (=> (not res!70944) (not e!93216))))

(assert (=> b!155502 (= res!70944 (rulesProduceIndividualToken!104 thiss!17480 rules!1920 (h!8083 (t!25294 tokens!465))))))

(declare-fun b!155503 () Bool)

(assert (=> b!155503 (= e!93216 (rulesProduceEachTokenIndividuallyList!93 thiss!17480 rules!1920 (t!25294 (t!25294 tokens!465))))))

(assert (= (and d!37590 (not res!70943)) b!155502))

(assert (= (and b!155502 res!70944) b!155503))

(declare-fun m!141775 () Bool)

(assert (=> d!37590 m!141775))

(assert (=> d!37590 m!141311))

(declare-fun m!141777 () Bool)

(assert (=> b!155502 m!141777))

(declare-fun m!141779 () Bool)

(assert (=> b!155503 m!141779))

(assert (=> b!155154 d!37590))

(declare-fun d!37604 () Bool)

(assert (=> d!37604 (= (++!584 (++!584 lt!45857 lt!45853) lt!45855) (++!584 lt!45857 (++!584 lt!45853 lt!45855)))))

(declare-fun lt!46024 () Unit!2106)

(declare-fun choose!1764 (List!2694 List!2694 List!2694) Unit!2106)

(assert (=> d!37604 (= lt!46024 (choose!1764 lt!45857 lt!45853 lt!45855))))

(assert (=> d!37604 (= (lemmaConcatAssociativity!150 lt!45857 lt!45853 lt!45855) lt!46024)))

(declare-fun bs!14413 () Bool)

(assert (= bs!14413 d!37604))

(declare-fun m!141785 () Bool)

(assert (=> bs!14413 m!141785))

(assert (=> bs!14413 m!141301))

(assert (=> bs!14413 m!141291))

(assert (=> bs!14413 m!141303))

(assert (=> bs!14413 m!141301))

(declare-fun m!141787 () Bool)

(assert (=> bs!14413 m!141787))

(assert (=> bs!14413 m!141291))

(assert (=> b!155154 d!37604))

(declare-fun bs!14414 () Bool)

(declare-fun b!155538 () Bool)

(assert (= bs!14414 (and b!155538 b!155153)))

(declare-fun lambda!4132 () Int)

(assert (=> bs!14414 (not (= lambda!4132 lambda!4096))))

(declare-fun bs!14415 () Bool)

(assert (= bs!14415 (and b!155538 d!37590)))

(assert (=> bs!14415 (= lambda!4132 lambda!4131)))

(declare-fun bs!14416 () Bool)

(assert (= bs!14416 (and b!155538 b!155359)))

(assert (=> bs!14416 (= lambda!4132 lambda!4116)))

(declare-fun bs!14417 () Bool)

(assert (= bs!14417 (and b!155538 b!155462)))

(assert (=> bs!14417 (= lambda!4132 lambda!4123)))

(declare-fun bs!14418 () Bool)

(assert (= bs!14418 (and b!155538 d!37524)))

(assert (=> bs!14418 (not (= lambda!4132 lambda!4115))))

(declare-fun bs!14419 () Bool)

(assert (= bs!14419 (and b!155538 d!37490)))

(assert (=> bs!14419 (= lambda!4132 lambda!4103)))

(declare-fun b!155542 () Bool)

(declare-fun e!93254 () Bool)

(assert (=> b!155542 (= e!93254 true)))

(declare-fun b!155541 () Bool)

(declare-fun e!93253 () Bool)

(assert (=> b!155541 (= e!93253 e!93254)))

(declare-fun b!155540 () Bool)

(declare-fun e!93252 () Bool)

(assert (=> b!155540 (= e!93252 e!93253)))

(assert (=> b!155538 e!93252))

(assert (= b!155541 b!155542))

(assert (= b!155540 b!155541))

(assert (= (and b!155538 ((_ is Cons!2685) rules!1920)) b!155540))

(assert (=> b!155542 (< (dynLambda!947 order!1347 (toValue!1112 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4132))))

(assert (=> b!155542 (< (dynLambda!949 order!1351 (toChars!971 (transformation!469 (h!8082 rules!1920)))) (dynLambda!948 order!1349 lambda!4132))))

(assert (=> b!155538 true))

(declare-fun b!155530 () Bool)

(declare-fun e!93248 () BalanceConc!1528)

(assert (=> b!155530 (= e!93248 (charsOf!124 separatorToken!170))))

(declare-fun bm!6437 () Bool)

(declare-fun c!31305 () Bool)

(declare-fun c!31306 () Bool)

(assert (=> bm!6437 (= c!31305 c!31306)))

(declare-fun call!6444 () List!2694)

(declare-fun lt!46025 () List!2694)

(declare-fun call!6443 () List!2694)

(declare-fun e!93249 () List!2694)

(assert (=> bm!6437 (= call!6444 (++!584 e!93249 (ite c!31306 lt!46025 call!6443)))))

(declare-fun call!6442 () List!2694)

(declare-fun call!6445 () BalanceConc!1528)

(declare-fun bm!6438 () Bool)

(assert (=> bm!6438 (= call!6442 (list!951 (ite c!31306 call!6445 e!93248)))))

(declare-fun bm!6439 () Bool)

(assert (=> bm!6439 (= call!6443 call!6442)))

(declare-fun c!31304 () Bool)

(declare-fun c!31307 () Bool)

(assert (=> bm!6439 (= c!31304 c!31307)))

(declare-fun b!155531 () Bool)

(declare-fun lt!46027 () Option!255)

(assert (=> b!155531 (= c!31307 (and ((_ is Some!254) lt!46027) (not (= (_1!1522 (v!13645 lt!46027)) (h!8083 (t!25294 tokens!465))))))))

(declare-fun e!93251 () List!2694)

(declare-fun e!93247 () List!2694)

(assert (=> b!155531 (= e!93251 e!93247)))

(declare-fun b!155532 () Bool)

(declare-fun call!6446 () BalanceConc!1528)

(assert (=> b!155532 (= e!93249 (list!951 call!6446))))

(declare-fun b!155533 () Bool)

(declare-fun e!93250 () List!2694)

(assert (=> b!155533 (= e!93250 Nil!2684)))

(declare-fun bm!6440 () Bool)

(assert (=> bm!6440 (= call!6445 (charsOf!124 (h!8083 (t!25294 tokens!465))))))

(declare-fun b!155534 () Bool)

(assert (=> b!155534 (= e!93247 Nil!2684)))

(assert (=> b!155534 (= (print!98 thiss!17480 (singletonSeq!31 (h!8083 (t!25294 tokens!465)))) (printTailRec!61 thiss!17480 (singletonSeq!31 (h!8083 (t!25294 tokens!465))) 0 (BalanceConc!1529 Empty!760)))))

(declare-fun lt!46029 () Unit!2106)

(declare-fun Unit!2118 () Unit!2106)

(assert (=> b!155534 (= lt!46029 Unit!2118)))

(declare-fun lt!46028 () Unit!2106)

(assert (=> b!155534 (= lt!46028 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!20 thiss!17480 rules!1920 call!6443 lt!46025))))

(assert (=> b!155534 false))

(declare-fun lt!46026 () Unit!2106)

(declare-fun Unit!2119 () Unit!2106)

(assert (=> b!155534 (= lt!46026 Unit!2119)))

(declare-fun b!155535 () Bool)

(assert (=> b!155535 (= e!93249 call!6442)))

(declare-fun b!155536 () Bool)

(assert (=> b!155536 (= e!93251 call!6444)))

(declare-fun b!155537 () Bool)

(assert (=> b!155537 (= e!93248 call!6446)))

(declare-fun bm!6441 () Bool)

(assert (=> bm!6441 (= call!6446 call!6445)))

(assert (=> b!155538 (= e!93250 e!93251)))

(declare-fun lt!46030 () Unit!2106)

(assert (=> b!155538 (= lt!46030 (forallContained!56 (t!25294 tokens!465) lambda!4132 (h!8083 (t!25294 tokens!465))))))

(assert (=> b!155538 (= lt!46025 (printWithSeparatorTokenWhenNeededList!48 thiss!17480 rules!1920 (t!25294 (t!25294 tokens!465)) separatorToken!170))))

(assert (=> b!155538 (= lt!46027 (maxPrefix!113 thiss!17480 rules!1920 (++!584 (list!951 (charsOf!124 (h!8083 (t!25294 tokens!465)))) lt!46025)))))

(assert (=> b!155538 (= c!31306 (and ((_ is Some!254) lt!46027) (= (_1!1522 (v!13645 lt!46027)) (h!8083 (t!25294 tokens!465)))))))

(declare-fun d!37606 () Bool)

(declare-fun c!31303 () Bool)

(assert (=> d!37606 (= c!31303 ((_ is Cons!2686) (t!25294 tokens!465)))))

(assert (=> d!37606 (= (printWithSeparatorTokenWhenNeededList!48 thiss!17480 rules!1920 (t!25294 tokens!465) separatorToken!170) e!93250)))

(declare-fun b!155539 () Bool)

(assert (=> b!155539 (= e!93247 (++!584 call!6444 lt!46025))))

(assert (= (and d!37606 c!31303) b!155538))

(assert (= (and d!37606 (not c!31303)) b!155533))

(assert (= (and b!155538 c!31306) b!155536))

(assert (= (and b!155538 (not c!31306)) b!155531))

(assert (= (and b!155531 c!31307) b!155539))

(assert (= (and b!155531 (not c!31307)) b!155534))

(assert (= (or b!155539 b!155534) bm!6441))

(assert (= (or b!155539 b!155534) bm!6439))

(assert (= (and bm!6439 c!31304) b!155530))

(assert (= (and bm!6439 (not c!31304)) b!155537))

(assert (= (or b!155536 bm!6441) bm!6440))

(assert (= (or b!155536 bm!6439) bm!6438))

(assert (= (or b!155536 b!155539) bm!6437))

(assert (= (and bm!6437 c!31305) b!155535))

(assert (= (and bm!6437 (not c!31305)) b!155532))

(assert (=> b!155530 m!141287))

(declare-fun m!141797 () Bool)

(assert (=> bm!6438 m!141797))

(declare-fun m!141799 () Bool)

(assert (=> bm!6440 m!141799))

(declare-fun m!141801 () Bool)

(assert (=> bm!6437 m!141801))

(declare-fun m!141803 () Bool)

(assert (=> b!155534 m!141803))

(assert (=> b!155534 m!141803))

(declare-fun m!141805 () Bool)

(assert (=> b!155534 m!141805))

(assert (=> b!155534 m!141803))

(declare-fun m!141807 () Bool)

(assert (=> b!155534 m!141807))

(declare-fun m!141809 () Bool)

(assert (=> b!155534 m!141809))

(declare-fun m!141811 () Bool)

(assert (=> b!155532 m!141811))

(declare-fun m!141813 () Bool)

(assert (=> b!155538 m!141813))

(declare-fun m!141815 () Bool)

(assert (=> b!155538 m!141815))

(assert (=> b!155538 m!141799))

(declare-fun m!141817 () Bool)

(assert (=> b!155538 m!141817))

(declare-fun m!141819 () Bool)

(assert (=> b!155538 m!141819))

(assert (=> b!155538 m!141817))

(assert (=> b!155538 m!141813))

(declare-fun m!141821 () Bool)

(assert (=> b!155538 m!141821))

(assert (=> b!155538 m!141799))

(declare-fun m!141823 () Bool)

(assert (=> b!155539 m!141823))

(assert (=> b!155154 d!37606))

(declare-fun d!37608 () Bool)

(declare-fun lt!46033 () BalanceConc!1528)

(assert (=> d!37608 (= (list!951 lt!46033) (originalCharacters!512 separatorToken!170))))

(assert (=> d!37608 (= lt!46033 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (value!17682 separatorToken!170)))))

(assert (=> d!37608 (= (charsOf!124 separatorToken!170) lt!46033)))

(declare-fun b_lambda!3031 () Bool)

(assert (=> (not b_lambda!3031) (not d!37608)))

(assert (=> d!37608 t!25334))

(declare-fun b_and!9285 () Bool)

(assert (= b_and!9271 (and (=> t!25334 result!7946) b_and!9285)))

(assert (=> d!37608 t!25336))

(declare-fun b_and!9287 () Bool)

(assert (= b_and!9273 (and (=> t!25336 result!7948) b_and!9287)))

(assert (=> d!37608 t!25338))

(declare-fun b_and!9289 () Bool)

(assert (= b_and!9275 (and (=> t!25338 result!7950) b_and!9289)))

(declare-fun m!141825 () Bool)

(assert (=> d!37608 m!141825))

(assert (=> d!37608 m!141747))

(assert (=> b!155154 d!37608))

(declare-fun b!155579 () Bool)

(declare-fun res!70950 () Bool)

(declare-fun e!93270 () Bool)

(assert (=> b!155579 (=> (not res!70950) (not e!93270))))

(declare-fun lt!46036 () List!2694)

(assert (=> b!155579 (= res!70950 (= (size!2278 lt!46036) (+ (size!2278 (++!584 lt!45857 lt!45853)) (size!2278 lt!45855))))))

(declare-fun b!155577 () Bool)

(declare-fun e!93271 () List!2694)

(assert (=> b!155577 (= e!93271 lt!45855)))

(declare-fun b!155580 () Bool)

(assert (=> b!155580 (= e!93270 (or (not (= lt!45855 Nil!2684)) (= lt!46036 (++!584 lt!45857 lt!45853))))))

(declare-fun b!155578 () Bool)

(assert (=> b!155578 (= e!93271 (Cons!2684 (h!8081 (++!584 lt!45857 lt!45853)) (++!584 (t!25292 (++!584 lt!45857 lt!45853)) lt!45855)))))

(declare-fun d!37614 () Bool)

(assert (=> d!37614 e!93270))

(declare-fun res!70949 () Bool)

(assert (=> d!37614 (=> (not res!70949) (not e!93270))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!373 (List!2694) (InoxSet C!2308))

(assert (=> d!37614 (= res!70949 (= (content!373 lt!46036) ((_ map or) (content!373 (++!584 lt!45857 lt!45853)) (content!373 lt!45855))))))

(assert (=> d!37614 (= lt!46036 e!93271)))

(declare-fun c!31310 () Bool)

(assert (=> d!37614 (= c!31310 ((_ is Nil!2684) (++!584 lt!45857 lt!45853)))))

(assert (=> d!37614 (= (++!584 (++!584 lt!45857 lt!45853) lt!45855) lt!46036)))

(assert (= (and d!37614 c!31310) b!155577))

(assert (= (and d!37614 (not c!31310)) b!155578))

(assert (= (and d!37614 res!70949) b!155579))

(assert (= (and b!155579 res!70950) b!155580))

(declare-fun m!141827 () Bool)

(assert (=> b!155579 m!141827))

(assert (=> b!155579 m!141291))

(declare-fun m!141829 () Bool)

(assert (=> b!155579 m!141829))

(declare-fun m!141831 () Bool)

(assert (=> b!155579 m!141831))

(declare-fun m!141833 () Bool)

(assert (=> b!155578 m!141833))

(declare-fun m!141835 () Bool)

(assert (=> d!37614 m!141835))

(assert (=> d!37614 m!141291))

(declare-fun m!141837 () Bool)

(assert (=> d!37614 m!141837))

(declare-fun m!141839 () Bool)

(assert (=> d!37614 m!141839))

(assert (=> b!155154 d!37614))

(declare-fun d!37616 () Bool)

(assert (=> d!37616 (= (list!951 (charsOf!124 (h!8083 tokens!465))) (list!955 (c!31223 (charsOf!124 (h!8083 tokens!465)))))))

(declare-fun bs!14422 () Bool)

(assert (= bs!14422 d!37616))

(declare-fun m!141841 () Bool)

(assert (=> bs!14422 m!141841))

(assert (=> b!155154 d!37616))

(declare-fun d!37618 () Bool)

(declare-fun lt!46037 () BalanceConc!1528)

(assert (=> d!37618 (= (list!951 lt!46037) (originalCharacters!512 (h!8083 tokens!465)))))

(assert (=> d!37618 (= lt!46037 (dynLambda!950 (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (value!17682 (h!8083 tokens!465))))))

(assert (=> d!37618 (= (charsOf!124 (h!8083 tokens!465)) lt!46037)))

(declare-fun b_lambda!3033 () Bool)

(assert (=> (not b_lambda!3033) (not d!37618)))

(assert (=> d!37618 t!25305))

(declare-fun b_and!9291 () Bool)

(assert (= b_and!9285 (and (=> t!25305 result!7924) b_and!9291)))

(assert (=> d!37618 t!25307))

(declare-fun b_and!9293 () Bool)

(assert (= b_and!9287 (and (=> t!25307 result!7928) b_and!9293)))

(assert (=> d!37618 t!25309))

(declare-fun b_and!9295 () Bool)

(assert (= b_and!9289 (and (=> t!25309 result!7930) b_and!9295)))

(declare-fun m!141843 () Bool)

(assert (=> d!37618 m!141843))

(assert (=> d!37618 m!141459))

(assert (=> b!155154 d!37618))

(declare-fun b!155583 () Bool)

(declare-fun res!70952 () Bool)

(declare-fun e!93272 () Bool)

(assert (=> b!155583 (=> (not res!70952) (not e!93272))))

(declare-fun lt!46038 () List!2694)

(assert (=> b!155583 (= res!70952 (= (size!2278 lt!46038) (+ (size!2278 lt!45853) (size!2278 lt!45855))))))

(declare-fun b!155581 () Bool)

(declare-fun e!93273 () List!2694)

(assert (=> b!155581 (= e!93273 lt!45855)))

(declare-fun b!155584 () Bool)

(assert (=> b!155584 (= e!93272 (or (not (= lt!45855 Nil!2684)) (= lt!46038 lt!45853)))))

(declare-fun b!155582 () Bool)

(assert (=> b!155582 (= e!93273 (Cons!2684 (h!8081 lt!45853) (++!584 (t!25292 lt!45853) lt!45855)))))

(declare-fun d!37620 () Bool)

(assert (=> d!37620 e!93272))

(declare-fun res!70951 () Bool)

(assert (=> d!37620 (=> (not res!70951) (not e!93272))))

(assert (=> d!37620 (= res!70951 (= (content!373 lt!46038) ((_ map or) (content!373 lt!45853) (content!373 lt!45855))))))

(assert (=> d!37620 (= lt!46038 e!93273)))

(declare-fun c!31311 () Bool)

(assert (=> d!37620 (= c!31311 ((_ is Nil!2684) lt!45853))))

(assert (=> d!37620 (= (++!584 lt!45853 lt!45855) lt!46038)))

(assert (= (and d!37620 c!31311) b!155581))

(assert (= (and d!37620 (not c!31311)) b!155582))

(assert (= (and d!37620 res!70951) b!155583))

(assert (= (and b!155583 res!70952) b!155584))

(declare-fun m!141845 () Bool)

(assert (=> b!155583 m!141845))

(declare-fun m!141847 () Bool)

(assert (=> b!155583 m!141847))

(assert (=> b!155583 m!141831))

(declare-fun m!141849 () Bool)

(assert (=> b!155582 m!141849))

(declare-fun m!141851 () Bool)

(assert (=> d!37620 m!141851))

(declare-fun m!141853 () Bool)

(assert (=> d!37620 m!141853))

(assert (=> d!37620 m!141839))

(assert (=> b!155154 d!37620))

(declare-fun b!155587 () Bool)

(declare-fun res!70954 () Bool)

(declare-fun e!93274 () Bool)

(assert (=> b!155587 (=> (not res!70954) (not e!93274))))

(declare-fun lt!46039 () List!2694)

(assert (=> b!155587 (= res!70954 (= (size!2278 lt!46039) (+ (size!2278 lt!45857) (size!2278 lt!45853))))))

(declare-fun b!155585 () Bool)

(declare-fun e!93275 () List!2694)

(assert (=> b!155585 (= e!93275 lt!45853)))

(declare-fun b!155588 () Bool)

(assert (=> b!155588 (= e!93274 (or (not (= lt!45853 Nil!2684)) (= lt!46039 lt!45857)))))

(declare-fun b!155586 () Bool)

(assert (=> b!155586 (= e!93275 (Cons!2684 (h!8081 lt!45857) (++!584 (t!25292 lt!45857) lt!45853)))))

(declare-fun d!37622 () Bool)

(assert (=> d!37622 e!93274))

(declare-fun res!70953 () Bool)

(assert (=> d!37622 (=> (not res!70953) (not e!93274))))

(assert (=> d!37622 (= res!70953 (= (content!373 lt!46039) ((_ map or) (content!373 lt!45857) (content!373 lt!45853))))))

(assert (=> d!37622 (= lt!46039 e!93275)))

(declare-fun c!31312 () Bool)

(assert (=> d!37622 (= c!31312 ((_ is Nil!2684) lt!45857))))

(assert (=> d!37622 (= (++!584 lt!45857 lt!45853) lt!46039)))

(assert (= (and d!37622 c!31312) b!155585))

(assert (= (and d!37622 (not c!31312)) b!155586))

(assert (= (and d!37622 res!70953) b!155587))

(assert (= (and b!155587 res!70954) b!155588))

(declare-fun m!141855 () Bool)

(assert (=> b!155587 m!141855))

(declare-fun m!141857 () Bool)

(assert (=> b!155587 m!141857))

(assert (=> b!155587 m!141847))

(declare-fun m!141859 () Bool)

(assert (=> b!155586 m!141859))

(declare-fun m!141861 () Bool)

(assert (=> d!37622 m!141861))

(declare-fun m!141863 () Bool)

(assert (=> d!37622 m!141863))

(assert (=> d!37622 m!141853))

(assert (=> b!155154 d!37622))

(declare-fun b!155591 () Bool)

(declare-fun res!70956 () Bool)

(declare-fun e!93276 () Bool)

(assert (=> b!155591 (=> (not res!70956) (not e!93276))))

(declare-fun lt!46040 () List!2694)

(assert (=> b!155591 (= res!70956 (= (size!2278 lt!46040) (+ (size!2278 lt!45857) (size!2278 lt!45856))))))

(declare-fun b!155589 () Bool)

(declare-fun e!93277 () List!2694)

(assert (=> b!155589 (= e!93277 lt!45856)))

(declare-fun b!155592 () Bool)

(assert (=> b!155592 (= e!93276 (or (not (= lt!45856 Nil!2684)) (= lt!46040 lt!45857)))))

(declare-fun b!155590 () Bool)

(assert (=> b!155590 (= e!93277 (Cons!2684 (h!8081 lt!45857) (++!584 (t!25292 lt!45857) lt!45856)))))

(declare-fun d!37624 () Bool)

(assert (=> d!37624 e!93276))

(declare-fun res!70955 () Bool)

(assert (=> d!37624 (=> (not res!70955) (not e!93276))))

(assert (=> d!37624 (= res!70955 (= (content!373 lt!46040) ((_ map or) (content!373 lt!45857) (content!373 lt!45856))))))

(assert (=> d!37624 (= lt!46040 e!93277)))

(declare-fun c!31313 () Bool)

(assert (=> d!37624 (= c!31313 ((_ is Nil!2684) lt!45857))))

(assert (=> d!37624 (= (++!584 lt!45857 lt!45856) lt!46040)))

(assert (= (and d!37624 c!31313) b!155589))

(assert (= (and d!37624 (not c!31313)) b!155590))

(assert (= (and d!37624 res!70955) b!155591))

(assert (= (and b!155591 res!70956) b!155592))

(declare-fun m!141865 () Bool)

(assert (=> b!155591 m!141865))

(assert (=> b!155591 m!141857))

(declare-fun m!141867 () Bool)

(assert (=> b!155591 m!141867))

(declare-fun m!141869 () Bool)

(assert (=> b!155590 m!141869))

(declare-fun m!141871 () Bool)

(assert (=> d!37624 m!141871))

(assert (=> d!37624 m!141863))

(declare-fun m!141873 () Bool)

(assert (=> d!37624 m!141873))

(assert (=> b!155154 d!37624))

(declare-fun d!37626 () Bool)

(declare-fun res!70959 () Bool)

(declare-fun e!93280 () Bool)

(assert (=> d!37626 (=> (not res!70959) (not e!93280))))

(declare-fun rulesValid!129 (LexerInterface!355 List!2695) Bool)

(assert (=> d!37626 (= res!70959 (rulesValid!129 thiss!17480 rules!1920))))

(assert (=> d!37626 (= (rulesInvariant!321 thiss!17480 rules!1920) e!93280)))

(declare-fun b!155595 () Bool)

(declare-datatypes ((List!2698 0))(
  ( (Nil!2688) (Cons!2688 (h!8085 String!3535) (t!25362 List!2698)) )
))
(declare-fun noDuplicateTag!129 (LexerInterface!355 List!2695 List!2698) Bool)

(assert (=> b!155595 (= e!93280 (noDuplicateTag!129 thiss!17480 rules!1920 Nil!2688))))

(assert (= (and d!37626 res!70959) b!155595))

(declare-fun m!141875 () Bool)

(assert (=> d!37626 m!141875))

(declare-fun m!141877 () Bool)

(assert (=> b!155595 m!141877))

(assert (=> b!155143 d!37626))

(declare-fun d!37628 () Bool)

(declare-fun res!70964 () Bool)

(declare-fun e!93285 () Bool)

(assert (=> d!37628 (=> res!70964 e!93285)))

(assert (=> d!37628 (= res!70964 (not ((_ is Cons!2685) rules!1920)))))

(assert (=> d!37628 (= (sepAndNonSepRulesDisjointChars!58 rules!1920 rules!1920) e!93285)))

(declare-fun b!155600 () Bool)

(declare-fun e!93286 () Bool)

(assert (=> b!155600 (= e!93285 e!93286)))

(declare-fun res!70965 () Bool)

(assert (=> b!155600 (=> (not res!70965) (not e!93286))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!22 (Rule!738 List!2695) Bool)

(assert (=> b!155600 (= res!70965 (ruleDisjointCharsFromAllFromOtherType!22 (h!8082 rules!1920) rules!1920))))

(declare-fun b!155601 () Bool)

(assert (=> b!155601 (= e!93286 (sepAndNonSepRulesDisjointChars!58 rules!1920 (t!25293 rules!1920)))))

(assert (= (and d!37628 (not res!70964)) b!155600))

(assert (= (and b!155600 res!70965) b!155601))

(declare-fun m!141879 () Bool)

(assert (=> b!155600 m!141879))

(declare-fun m!141881 () Bool)

(assert (=> b!155601 m!141881))

(assert (=> b!155144 d!37628))

(declare-fun b!155606 () Bool)

(declare-fun e!93289 () Bool)

(declare-fun tp_is_empty!1623 () Bool)

(declare-fun tp!80104 () Bool)

(assert (=> b!155606 (= e!93289 (and tp_is_empty!1623 tp!80104))))

(assert (=> b!155145 (= tp!80026 e!93289)))

(assert (= (and b!155145 ((_ is Cons!2684) (originalCharacters!512 (h!8083 tokens!465)))) b!155606))

(declare-fun b!155619 () Bool)

(declare-fun e!93292 () Bool)

(declare-fun tp!80116 () Bool)

(assert (=> b!155619 (= e!93292 tp!80116)))

(declare-fun b!155618 () Bool)

(declare-fun tp!80118 () Bool)

(declare-fun tp!80117 () Bool)

(assert (=> b!155618 (= e!93292 (and tp!80118 tp!80117))))

(assert (=> b!155157 (= tp!80032 e!93292)))

(declare-fun b!155617 () Bool)

(assert (=> b!155617 (= e!93292 tp_is_empty!1623)))

(declare-fun b!155620 () Bool)

(declare-fun tp!80119 () Bool)

(declare-fun tp!80115 () Bool)

(assert (=> b!155620 (= e!93292 (and tp!80119 tp!80115))))

(assert (= (and b!155157 ((_ is ElementMatch!693) (regex!469 (h!8082 rules!1920)))) b!155617))

(assert (= (and b!155157 ((_ is Concat!1185) (regex!469 (h!8082 rules!1920)))) b!155618))

(assert (= (and b!155157 ((_ is Star!693) (regex!469 (h!8082 rules!1920)))) b!155619))

(assert (= (and b!155157 ((_ is Union!693) (regex!469 (h!8082 rules!1920)))) b!155620))

(declare-fun b!155623 () Bool)

(declare-fun e!93293 () Bool)

(declare-fun tp!80121 () Bool)

(assert (=> b!155623 (= e!93293 tp!80121)))

(declare-fun b!155622 () Bool)

(declare-fun tp!80123 () Bool)

(declare-fun tp!80122 () Bool)

(assert (=> b!155622 (= e!93293 (and tp!80123 tp!80122))))

(assert (=> b!155147 (= tp!80034 e!93293)))

(declare-fun b!155621 () Bool)

(assert (=> b!155621 (= e!93293 tp_is_empty!1623)))

(declare-fun b!155624 () Bool)

(declare-fun tp!80124 () Bool)

(declare-fun tp!80120 () Bool)

(assert (=> b!155624 (= e!93293 (and tp!80124 tp!80120))))

(assert (= (and b!155147 ((_ is ElementMatch!693) (regex!469 (rule!976 separatorToken!170)))) b!155621))

(assert (= (and b!155147 ((_ is Concat!1185) (regex!469 (rule!976 separatorToken!170)))) b!155622))

(assert (= (and b!155147 ((_ is Star!693) (regex!469 (rule!976 separatorToken!170)))) b!155623))

(assert (= (and b!155147 ((_ is Union!693) (regex!469 (rule!976 separatorToken!170)))) b!155624))

(declare-fun b!155625 () Bool)

(declare-fun e!93294 () Bool)

(declare-fun tp!80125 () Bool)

(assert (=> b!155625 (= e!93294 (and tp_is_empty!1623 tp!80125))))

(assert (=> b!155159 (= tp!80037 e!93294)))

(assert (= (and b!155159 ((_ is Cons!2684) (originalCharacters!512 separatorToken!170))) b!155625))

(declare-fun b!155628 () Bool)

(declare-fun e!93295 () Bool)

(declare-fun tp!80127 () Bool)

(assert (=> b!155628 (= e!93295 tp!80127)))

(declare-fun b!155627 () Bool)

(declare-fun tp!80129 () Bool)

(declare-fun tp!80128 () Bool)

(assert (=> b!155627 (= e!93295 (and tp!80129 tp!80128))))

(assert (=> b!155160 (= tp!80027 e!93295)))

(declare-fun b!155626 () Bool)

(assert (=> b!155626 (= e!93295 tp_is_empty!1623)))

(declare-fun b!155629 () Bool)

(declare-fun tp!80130 () Bool)

(declare-fun tp!80126 () Bool)

(assert (=> b!155629 (= e!93295 (and tp!80130 tp!80126))))

(assert (= (and b!155160 ((_ is ElementMatch!693) (regex!469 (rule!976 (h!8083 tokens!465))))) b!155626))

(assert (= (and b!155160 ((_ is Concat!1185) (regex!469 (rule!976 (h!8083 tokens!465))))) b!155627))

(assert (= (and b!155160 ((_ is Star!693) (regex!469 (rule!976 (h!8083 tokens!465))))) b!155628))

(assert (= (and b!155160 ((_ is Union!693) (regex!469 (rule!976 (h!8083 tokens!465))))) b!155629))

(declare-fun b!155643 () Bool)

(declare-fun b_free!5757 () Bool)

(declare-fun b_next!5757 () Bool)

(assert (=> b!155643 (= b_free!5757 (not b_next!5757))))

(declare-fun tp!80145 () Bool)

(declare-fun b_and!9297 () Bool)

(assert (=> b!155643 (= tp!80145 b_and!9297)))

(declare-fun b_free!5759 () Bool)

(declare-fun b_next!5759 () Bool)

(assert (=> b!155643 (= b_free!5759 (not b_next!5759))))

(declare-fun t!25354 () Bool)

(declare-fun tb!5453 () Bool)

(assert (=> (and b!155643 (= (toChars!971 (transformation!469 (rule!976 (h!8083 (t!25294 tokens!465))))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465))))) t!25354) tb!5453))

(declare-fun result!7974 () Bool)

(assert (= result!7974 result!7924))

(assert (=> b!155265 t!25354))

(declare-fun tb!5455 () Bool)

(declare-fun t!25356 () Bool)

(assert (=> (and b!155643 (= (toChars!971 (transformation!469 (rule!976 (h!8083 (t!25294 tokens!465))))) (toChars!971 (transformation!469 (rule!976 separatorToken!170)))) t!25356) tb!5455))

(declare-fun result!7976 () Bool)

(assert (= result!7976 result!7946))

(assert (=> b!155478 t!25356))

(assert (=> d!37608 t!25356))

(assert (=> d!37618 t!25354))

(declare-fun b_and!9299 () Bool)

(declare-fun tp!80143 () Bool)

(assert (=> b!155643 (= tp!80143 (and (=> t!25354 result!7974) (=> t!25356 result!7976) b_and!9299))))

(declare-fun e!93308 () Bool)

(assert (=> b!155161 (= tp!80036 e!93308)))

(declare-fun tp!80144 () Bool)

(declare-fun b!155640 () Bool)

(declare-fun e!93310 () Bool)

(assert (=> b!155640 (= e!93308 (and (inv!3489 (h!8083 (t!25294 tokens!465))) e!93310 tp!80144))))

(declare-fun tp!80142 () Bool)

(declare-fun b!155641 () Bool)

(declare-fun e!93311 () Bool)

(assert (=> b!155641 (= e!93310 (and (inv!21 (value!17682 (h!8083 (t!25294 tokens!465)))) e!93311 tp!80142))))

(declare-fun e!93313 () Bool)

(declare-fun tp!80141 () Bool)

(declare-fun b!155642 () Bool)

(assert (=> b!155642 (= e!93311 (and tp!80141 (inv!3485 (tag!647 (rule!976 (h!8083 (t!25294 tokens!465))))) (inv!3488 (transformation!469 (rule!976 (h!8083 (t!25294 tokens!465))))) e!93313))))

(assert (=> b!155643 (= e!93313 (and tp!80145 tp!80143))))

(assert (= b!155642 b!155643))

(assert (= b!155641 b!155642))

(assert (= b!155640 b!155641))

(assert (= (and b!155161 ((_ is Cons!2686) (t!25294 tokens!465))) b!155640))

(declare-fun m!141883 () Bool)

(assert (=> b!155640 m!141883))

(declare-fun m!141885 () Bool)

(assert (=> b!155641 m!141885))

(declare-fun m!141887 () Bool)

(assert (=> b!155642 m!141887))

(declare-fun m!141889 () Bool)

(assert (=> b!155642 m!141889))

(declare-fun b!155654 () Bool)

(declare-fun b_free!5761 () Bool)

(declare-fun b_next!5761 () Bool)

(assert (=> b!155654 (= b_free!5761 (not b_next!5761))))

(declare-fun tp!80155 () Bool)

(declare-fun b_and!9301 () Bool)

(assert (=> b!155654 (= tp!80155 b_and!9301)))

(declare-fun b_free!5763 () Bool)

(declare-fun b_next!5763 () Bool)

(assert (=> b!155654 (= b_free!5763 (not b_next!5763))))

(declare-fun tb!5457 () Bool)

(declare-fun t!25358 () Bool)

(assert (=> (and b!155654 (= (toChars!971 (transformation!469 (h!8082 (t!25293 rules!1920)))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465))))) t!25358) tb!5457))

(declare-fun result!7980 () Bool)

(assert (= result!7980 result!7924))

(assert (=> b!155265 t!25358))

(declare-fun t!25360 () Bool)

(declare-fun tb!5459 () Bool)

(assert (=> (and b!155654 (= (toChars!971 (transformation!469 (h!8082 (t!25293 rules!1920)))) (toChars!971 (transformation!469 (rule!976 separatorToken!170)))) t!25360) tb!5459))

(declare-fun result!7982 () Bool)

(assert (= result!7982 result!7946))

(assert (=> b!155478 t!25360))

(assert (=> d!37608 t!25360))

(assert (=> d!37618 t!25358))

(declare-fun b_and!9303 () Bool)

(declare-fun tp!80156 () Bool)

(assert (=> b!155654 (= tp!80156 (and (=> t!25358 result!7980) (=> t!25360 result!7982) b_and!9303))))

(declare-fun e!93324 () Bool)

(assert (=> b!155654 (= e!93324 (and tp!80155 tp!80156))))

(declare-fun b!155653 () Bool)

(declare-fun tp!80157 () Bool)

(declare-fun e!93323 () Bool)

(assert (=> b!155653 (= e!93323 (and tp!80157 (inv!3485 (tag!647 (h!8082 (t!25293 rules!1920)))) (inv!3488 (transformation!469 (h!8082 (t!25293 rules!1920)))) e!93324))))

(declare-fun b!155652 () Bool)

(declare-fun e!93322 () Bool)

(declare-fun tp!80154 () Bool)

(assert (=> b!155652 (= e!93322 (and e!93323 tp!80154))))

(assert (=> b!155151 (= tp!80033 e!93322)))

(assert (= b!155653 b!155654))

(assert (= b!155652 b!155653))

(assert (= (and b!155151 ((_ is Cons!2685) (t!25293 rules!1920))) b!155652))

(declare-fun m!141891 () Bool)

(assert (=> b!155653 m!141891))

(declare-fun m!141893 () Bool)

(assert (=> b!155653 m!141893))

(declare-fun b_lambda!3035 () Bool)

(assert (= b_lambda!3031 (or (and b!155146 b_free!5739 (= (toChars!971 (transformation!469 (h!8082 rules!1920))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) (and b!155654 b_free!5763 (= (toChars!971 (transformation!469 (h!8082 (t!25293 rules!1920)))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) (and b!155643 b_free!5759 (= (toChars!971 (transformation!469 (rule!976 (h!8083 (t!25294 tokens!465))))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) (and b!155158 b_free!5743) (and b!155148 b_free!5747 (= (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) b_lambda!3035)))

(declare-fun b_lambda!3037 () Bool)

(assert (= b_lambda!3001 (or b!155153 b_lambda!3037)))

(declare-fun bs!14423 () Bool)

(declare-fun d!37630 () Bool)

(assert (= bs!14423 (and d!37630 b!155153)))

(assert (=> bs!14423 (= (dynLambda!951 lambda!4096 (h!8083 (t!25294 tokens!465))) (not (isSeparator!469 (rule!976 (h!8083 (t!25294 tokens!465))))))))

(assert (=> b!155276 d!37630))

(declare-fun b_lambda!3039 () Bool)

(assert (= b_lambda!3033 (or (and b!155654 b_free!5763 (= (toChars!971 (transformation!469 (h!8082 (t!25293 rules!1920)))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155146 b_free!5739 (= (toChars!971 (transformation!469 (h!8082 rules!1920))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155643 b_free!5759 (= (toChars!971 (transformation!469 (rule!976 (h!8083 (t!25294 tokens!465))))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155158 b_free!5743 (= (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155148 b_free!5747) b_lambda!3039)))

(declare-fun b_lambda!3041 () Bool)

(assert (= b_lambda!3017 (or (and b!155146 b_free!5739 (= (toChars!971 (transformation!469 (h!8082 rules!1920))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) (and b!155654 b_free!5763 (= (toChars!971 (transformation!469 (h!8082 (t!25293 rules!1920)))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) (and b!155643 b_free!5759 (= (toChars!971 (transformation!469 (rule!976 (h!8083 (t!25294 tokens!465))))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) (and b!155158 b_free!5743) (and b!155148 b_free!5747 (= (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))) (toChars!971 (transformation!469 (rule!976 separatorToken!170))))) b_lambda!3041)))

(declare-fun b_lambda!3043 () Bool)

(assert (= b_lambda!3015 (or b!155153 b_lambda!3043)))

(declare-fun bs!14424 () Bool)

(declare-fun d!37632 () Bool)

(assert (= bs!14424 (and d!37632 b!155153)))

(assert (=> bs!14424 (= (dynLambda!951 lambda!4096 (h!8083 tokens!465)) (not (isSeparator!469 (rule!976 (h!8083 tokens!465)))))))

(assert (=> b!155476 d!37632))

(declare-fun b_lambda!3045 () Bool)

(assert (= b_lambda!2999 (or (and b!155654 b_free!5763 (= (toChars!971 (transformation!469 (h!8082 (t!25293 rules!1920)))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155146 b_free!5739 (= (toChars!971 (transformation!469 (h!8082 rules!1920))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155643 b_free!5759 (= (toChars!971 (transformation!469 (rule!976 (h!8083 (t!25294 tokens!465))))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155158 b_free!5743 (= (toChars!971 (transformation!469 (rule!976 separatorToken!170))) (toChars!971 (transformation!469 (rule!976 (h!8083 tokens!465)))))) (and b!155148 b_free!5747) b_lambda!3045)))

(check-sat (not b_lambda!3037) (not bm!6432) (not b!155623) b_and!9295 (not b_next!5761) b_and!9303 (not d!37618) (not b_lambda!3045) (not b!155618) (not b!155204) (not b_next!5741) (not b!155652) (not b!155627) (not d!37502) (not b!155173) (not b!155182) (not b!155271) b_and!9233 (not b_next!5763) (not b!155258) (not d!37624) (not bm!6414) (not b!155653) (not bm!6415) (not b!155503) (not b!155578) (not d!37578) b_and!9297 b_and!9237 (not d!37512) (not b_next!5739) (not b!155369) b_and!9299 (not tb!5439) (not b!155209) (not b!155479) (not b!155539) (not b!155458) (not b!155624) (not tb!5421) (not bm!6437) (not b!155625) (not b_next!5743) (not b!155538) (not b!155606) (not b!155619) (not b!155200) (not b!155370) tp_is_empty!1623 (not b!155582) (not d!37506) (not b!155502) (not b!155507) (not b!155478) (not b!155362) (not d!37626) (not d!37616) (not b_next!5737) (not b!155482) (not b!155208) (not b!155628) (not b!155277) (not b_next!5745) (not bm!6433) (not d!37584) (not b!155266) (not b!155368) (not b!155464) (not b!155205) (not bm!6435) (not b!155366) (not b!155600) (not b!155595) (not b_lambda!3041) b_and!9291 b_and!9293 (not b!155540) (not d!37514) (not d!37614) (not b!155641) (not d!37588) (not bm!6412) b_and!9229 (not b!155259) b_and!9301 (not b!155583) (not b!155359) (not b!155579) (not b!155591) (not b!155587) (not b!155265) (not b!155477) (not b!155530) (not b!155534) (not d!37622) (not d!37522) (not d!37604) (not b_lambda!3035) (not b_lambda!3043) (not b!155199) (not d!37620) (not b!155198) (not b!155454) (not bm!6440) (not d!37590) (not b!155532) (not b!155601) (not b_lambda!3039) (not b_next!5759) (not b_next!5747) (not d!37608) (not b!155640) (not d!37580) (not b!155462) (not b!155620) (not b!155463) (not b!155456) (not bm!6438) (not b!155207) (not b!155586) (not b!155642) (not d!37518) (not b!155622) (not d!37524) (not b!155260) (not d!37496) (not d!37490) (not b!155590) (not b_next!5757) (not b!155629) (not b!155363) (not b!155211))
(check-sat b_and!9295 (not b_next!5741) (not b_next!5739) b_and!9299 (not b_next!5743) (not b_next!5737) (not b_next!5745) b_and!9291 b_and!9293 (not b_next!5757) (not b_next!5761) b_and!9303 b_and!9233 (not b_next!5763) b_and!9297 b_and!9237 b_and!9229 b_and!9301 (not b_next!5759) (not b_next!5747))
