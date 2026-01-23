; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43002 () Bool)

(assert start!43002)

(declare-fun b!453987 () Bool)

(declare-fun b_free!12649 () Bool)

(declare-fun b_next!12649 () Bool)

(assert (=> b!453987 (= b_free!12649 (not b_next!12649))))

(declare-fun tp!126246 () Bool)

(declare-fun b_and!48761 () Bool)

(assert (=> b!453987 (= tp!126246 b_and!48761)))

(declare-fun b_free!12651 () Bool)

(declare-fun b_next!12651 () Bool)

(assert (=> b!453987 (= b_free!12651 (not b_next!12651))))

(declare-fun tp!126238 () Bool)

(declare-fun b_and!48763 () Bool)

(assert (=> b!453987 (= tp!126238 b_and!48763)))

(declare-fun b!453996 () Bool)

(declare-fun b_free!12653 () Bool)

(declare-fun b_next!12653 () Bool)

(assert (=> b!453996 (= b_free!12653 (not b_next!12653))))

(declare-fun tp!126242 () Bool)

(declare-fun b_and!48765 () Bool)

(assert (=> b!453996 (= tp!126242 b_and!48765)))

(declare-fun b_free!12655 () Bool)

(declare-fun b_next!12655 () Bool)

(assert (=> b!453996 (= b_free!12655 (not b_next!12655))))

(declare-fun tp!126245 () Bool)

(declare-fun b_and!48767 () Bool)

(assert (=> b!453996 (= tp!126245 b_and!48767)))

(declare-fun b!453978 () Bool)

(declare-fun b_free!12657 () Bool)

(declare-fun b_next!12657 () Bool)

(assert (=> b!453978 (= b_free!12657 (not b_next!12657))))

(declare-fun tp!126241 () Bool)

(declare-fun b_and!48769 () Bool)

(assert (=> b!453978 (= tp!126241 b_and!48769)))

(declare-fun b_free!12659 () Bool)

(declare-fun b_next!12659 () Bool)

(assert (=> b!453978 (= b_free!12659 (not b_next!12659))))

(declare-fun tp!126235 () Bool)

(declare-fun b_and!48771 () Bool)

(assert (=> b!453978 (= tp!126235 b_and!48771)))

(declare-fun bs!56142 () Bool)

(declare-fun b!453982 () Bool)

(declare-fun b!453989 () Bool)

(assert (= bs!56142 (and b!453982 b!453989)))

(declare-fun lambda!13266 () Int)

(declare-fun lambda!13265 () Int)

(assert (=> bs!56142 (not (= lambda!13266 lambda!13265))))

(declare-fun b!454020 () Bool)

(declare-fun e!277784 () Bool)

(assert (=> b!454020 (= e!277784 true)))

(declare-fun b!454019 () Bool)

(declare-fun e!277783 () Bool)

(assert (=> b!454019 (= e!277783 e!277784)))

(declare-fun b!454018 () Bool)

(declare-fun e!277782 () Bool)

(assert (=> b!454018 (= e!277782 e!277783)))

(assert (=> b!453982 e!277782))

(assert (= b!454019 b!454020))

(assert (= b!454018 b!454019))

(declare-datatypes ((List!4422 0))(
  ( (Nil!4412) (Cons!4412 (h!9809 (_ BitVec 16)) (t!71118 List!4422)) )
))
(declare-datatypes ((TokenValue!879 0))(
  ( (FloatLiteralValue!1758 (text!6598 List!4422)) (TokenValueExt!878 (__x!3245 Int)) (Broken!4395 (value!28714 List!4422)) (Object!888) (End!879) (Def!879) (Underscore!879) (Match!879) (Else!879) (Error!879) (Case!879) (If!879) (Extends!879) (Abstract!879) (Class!879) (Val!879) (DelimiterValue!1758 (del!939 List!4422)) (KeywordValue!885 (value!28715 List!4422)) (CommentValue!1758 (value!28716 List!4422)) (WhitespaceValue!1758 (value!28717 List!4422)) (IndentationValue!879 (value!28718 List!4422)) (String!5474) (Int32!879) (Broken!4396 (value!28719 List!4422)) (Boolean!880) (Unit!7954) (OperatorValue!882 (op!939 List!4422)) (IdentifierValue!1758 (value!28720 List!4422)) (IdentifierValue!1759 (value!28721 List!4422)) (WhitespaceValue!1759 (value!28722 List!4422)) (True!1758) (False!1758) (Broken!4397 (value!28723 List!4422)) (Broken!4398 (value!28724 List!4422)) (True!1759) (RightBrace!879) (RightBracket!879) (Colon!879) (Null!879) (Comma!879) (LeftBracket!879) (False!1759) (LeftBrace!879) (ImaginaryLiteralValue!879 (text!6599 List!4422)) (StringLiteralValue!2637 (value!28725 List!4422)) (EOFValue!879 (value!28726 List!4422)) (IdentValue!879 (value!28727 List!4422)) (DelimiterValue!1759 (value!28728 List!4422)) (DedentValue!879 (value!28729 List!4422)) (NewLineValue!879 (value!28730 List!4422)) (IntegerValue!2637 (value!28731 (_ BitVec 32)) (text!6600 List!4422)) (IntegerValue!2638 (value!28732 Int) (text!6601 List!4422)) (Times!879) (Or!879) (Equal!879) (Minus!879) (Broken!4399 (value!28733 List!4422)) (And!879) (Div!879) (LessEqual!879) (Mod!879) (Concat!1960) (Not!879) (Plus!879) (SpaceValue!879 (value!28734 List!4422)) (IntegerValue!2639 (value!28735 Int) (text!6602 List!4422)) (StringLiteralValue!2638 (text!6603 List!4422)) (FloatLiteralValue!1759 (text!6604 List!4422)) (BytesLiteralValue!879 (value!28736 List!4422)) (CommentValue!1759 (value!28737 List!4422)) (StringLiteralValue!2639 (value!28738 List!4422)) (ErrorTokenValue!879 (msg!940 List!4422)) )
))
(declare-datatypes ((C!3084 0))(
  ( (C!3085 (val!1428 Int)) )
))
(declare-datatypes ((List!4423 0))(
  ( (Nil!4413) (Cons!4413 (h!9810 C!3084) (t!71119 List!4423)) )
))
(declare-datatypes ((IArray!3073 0))(
  ( (IArray!3074 (innerList!1594 List!4423)) )
))
(declare-datatypes ((Conc!1536 0))(
  ( (Node!1536 (left!3719 Conc!1536) (right!4049 Conc!1536) (csize!3302 Int) (cheight!1747 Int)) (Leaf!2304 (xs!4167 IArray!3073) (csize!3303 Int)) (Empty!1536) )
))
(declare-datatypes ((BalanceConc!3080 0))(
  ( (BalanceConc!3081 (c!91736 Conc!1536)) )
))
(declare-datatypes ((TokenValueInjection!1530 0))(
  ( (TokenValueInjection!1531 (toValue!1672 Int) (toChars!1531 Int)) )
))
(declare-datatypes ((String!5475 0))(
  ( (String!5476 (value!28739 String)) )
))
(declare-datatypes ((Regex!1081 0))(
  ( (ElementMatch!1081 (c!91737 C!3084)) (Concat!1961 (regOne!2674 Regex!1081) (regTwo!2674 Regex!1081)) (EmptyExpr!1081) (Star!1081 (reg!1410 Regex!1081)) (EmptyLang!1081) (Union!1081 (regOne!2675 Regex!1081) (regTwo!2675 Regex!1081)) )
))
(declare-datatypes ((Rule!1514 0))(
  ( (Rule!1515 (regex!857 Regex!1081) (tag!1117 String!5475) (isSeparator!857 Bool) (transformation!857 TokenValueInjection!1530)) )
))
(declare-datatypes ((List!4424 0))(
  ( (Nil!4414) (Cons!4414 (h!9811 Rule!1514) (t!71120 List!4424)) )
))
(declare-fun rules!1920 () List!4424)

(get-info :version)

(assert (= (and b!453982 ((_ is Cons!4414) rules!1920)) b!454018))

(declare-fun order!3893 () Int)

(declare-fun order!3895 () Int)

(declare-fun dynLambda!2668 (Int Int) Int)

(declare-fun dynLambda!2669 (Int Int) Int)

(assert (=> b!454020 (< (dynLambda!2668 order!3893 (toValue!1672 (transformation!857 (h!9811 rules!1920)))) (dynLambda!2669 order!3895 lambda!13266))))

(declare-fun order!3897 () Int)

(declare-fun dynLambda!2670 (Int Int) Int)

(assert (=> b!454020 (< (dynLambda!2670 order!3897 (toChars!1531 (transformation!857 (h!9811 rules!1920)))) (dynLambda!2669 order!3895 lambda!13266))))

(assert (=> b!453982 true))

(declare-fun b!453977 () Bool)

(declare-fun res!201812 () Bool)

(declare-fun e!277770 () Bool)

(assert (=> b!453977 (=> (not res!201812) (not e!277770))))

(declare-fun isEmpty!3376 (List!4424) Bool)

(assert (=> b!453977 (= res!201812 (not (isEmpty!3376 rules!1920)))))

(declare-fun e!277773 () Bool)

(assert (=> b!453978 (= e!277773 (and tp!126241 tp!126235))))

(declare-datatypes ((Token!1458 0))(
  ( (Token!1459 (value!28740 TokenValue!879) (rule!1548 Rule!1514) (size!3617 Int) (originalCharacters!900 List!4423)) )
))
(declare-datatypes ((List!4425 0))(
  ( (Nil!4415) (Cons!4415 (h!9812 Token!1458) (t!71121 List!4425)) )
))
(declare-fun tokens!465 () List!4425)

(declare-fun e!277759 () Bool)

(declare-fun b!453979 () Bool)

(declare-fun e!277771 () Bool)

(declare-fun tp!126244 () Bool)

(declare-fun inv!21 (TokenValue!879) Bool)

(assert (=> b!453979 (= e!277771 (and (inv!21 (value!28740 (h!9812 tokens!465))) e!277759 tp!126244))))

(declare-fun b!453980 () Bool)

(declare-fun e!277766 () Bool)

(declare-fun tp!126240 () Bool)

(declare-fun inv!5488 (Token!1458) Bool)

(assert (=> b!453980 (= e!277766 (and (inv!5488 (h!9812 tokens!465)) e!277771 tp!126240))))

(declare-fun e!277755 () Bool)

(declare-fun e!277761 () Bool)

(declare-fun separatorToken!170 () Token!1458)

(declare-fun tp!126243 () Bool)

(declare-fun b!453981 () Bool)

(assert (=> b!453981 (= e!277761 (and (inv!21 (value!28740 separatorToken!170)) e!277755 tp!126243))))

(declare-fun e!277763 () Bool)

(declare-fun e!277772 () Bool)

(assert (=> b!453982 (= e!277763 e!277772)))

(declare-fun res!201804 () Bool)

(assert (=> b!453982 (=> res!201804 e!277772)))

(declare-datatypes ((LexerInterface!743 0))(
  ( (LexerInterfaceExt!740 (__x!3246 Int)) (Lexer!741) )
))
(declare-fun thiss!17480 () LexerInterface!743)

(declare-datatypes ((tuple2!5358 0))(
  ( (tuple2!5359 (_1!2895 Token!1458) (_2!2895 BalanceConc!3080)) )
))
(declare-datatypes ((Option!1146 0))(
  ( (None!1145) (Some!1145 (v!15466 tuple2!5358)) )
))
(declare-fun isDefined!985 (Option!1146) Bool)

(declare-fun maxPrefixZipperSequence!422 (LexerInterface!743 List!4424 BalanceConc!3080) Option!1146)

(declare-fun seqFromList!1079 (List!4423) BalanceConc!3080)

(assert (=> b!453982 (= res!201804 (not (isDefined!985 (maxPrefixZipperSequence!422 thiss!17480 rules!1920 (seqFromList!1079 (originalCharacters!900 (h!9812 tokens!465)))))))))

(declare-datatypes ((Unit!7955 0))(
  ( (Unit!7956) )
))
(declare-fun lt!201895 () Unit!7955)

(declare-fun forallContained!410 (List!4425 Int Token!1458) Unit!7955)

(assert (=> b!453982 (= lt!201895 (forallContained!410 tokens!465 lambda!13266 (h!9812 tokens!465)))))

(declare-fun lt!201901 () List!4423)

(assert (=> b!453982 (= lt!201901 (originalCharacters!900 (h!9812 tokens!465)))))

(declare-fun b!453983 () Bool)

(declare-fun res!201799 () Bool)

(declare-fun e!277764 () Bool)

(assert (=> b!453983 (=> (not res!201799) (not e!277764))))

(declare-datatypes ((tuple2!5360 0))(
  ( (tuple2!5361 (_1!2896 Token!1458) (_2!2896 List!4423)) )
))
(declare-fun lt!201896 () tuple2!5360)

(declare-fun isEmpty!3377 (List!4423) Bool)

(assert (=> b!453983 (= res!201799 (isEmpty!3377 (_2!2896 lt!201896)))))

(declare-fun b!453984 () Bool)

(declare-fun res!201808 () Bool)

(declare-fun e!277765 () Bool)

(assert (=> b!453984 (=> (not res!201808) (not e!277765))))

(declare-fun sepAndNonSepRulesDisjointChars!446 (List!4424 List!4424) Bool)

(assert (=> b!453984 (= res!201808 (sepAndNonSepRulesDisjointChars!446 rules!1920 rules!1920))))

(declare-fun b!453985 () Bool)

(declare-fun e!277753 () Bool)

(assert (=> b!453985 (= e!277765 e!277753)))

(declare-fun res!201819 () Bool)

(assert (=> b!453985 (=> (not res!201819) (not e!277753))))

(declare-fun lt!201890 () List!4423)

(declare-fun lt!201900 () List!4423)

(assert (=> b!453985 (= res!201819 (= lt!201890 lt!201900))))

(declare-datatypes ((IArray!3075 0))(
  ( (IArray!3076 (innerList!1595 List!4425)) )
))
(declare-datatypes ((Conc!1537 0))(
  ( (Node!1537 (left!3720 Conc!1537) (right!4050 Conc!1537) (csize!3304 Int) (cheight!1748 Int)) (Leaf!2305 (xs!4168 IArray!3075) (csize!3305 Int)) (Empty!1537) )
))
(declare-datatypes ((BalanceConc!3082 0))(
  ( (BalanceConc!3083 (c!91738 Conc!1537)) )
))
(declare-fun lt!201891 () BalanceConc!3082)

(declare-fun list!1957 (BalanceConc!3080) List!4423)

(declare-fun printWithSeparatorTokenWhenNeededRec!416 (LexerInterface!743 List!4424 BalanceConc!3082 Token!1458 Int) BalanceConc!3080)

(assert (=> b!453985 (= lt!201900 (list!1957 (printWithSeparatorTokenWhenNeededRec!416 thiss!17480 rules!1920 lt!201891 separatorToken!170 0)))))

(declare-fun printWithSeparatorTokenWhenNeededList!424 (LexerInterface!743 List!4424 List!4425 Token!1458) List!4423)

(assert (=> b!453985 (= lt!201890 (printWithSeparatorTokenWhenNeededList!424 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!453986 () Bool)

(declare-fun matchR!399 (Regex!1081 List!4423) Bool)

(assert (=> b!453986 (= e!277764 (matchR!399 (regex!857 (rule!1548 (h!9812 tokens!465))) lt!201901))))

(declare-fun e!277768 () Bool)

(assert (=> b!453987 (= e!277768 (and tp!126246 tp!126238))))

(declare-fun b!453988 () Bool)

(declare-fun e!277762 () Bool)

(assert (=> b!453988 (= e!277762 true)))

(declare-fun e!277752 () Bool)

(assert (=> b!453988 e!277752))

(declare-fun res!201809 () Bool)

(assert (=> b!453988 (=> res!201809 e!277752)))

(declare-fun isEmpty!3378 (List!4425) Bool)

(assert (=> b!453988 (= res!201809 (isEmpty!3378 tokens!465))))

(declare-fun lt!201897 () Unit!7955)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!258 (LexerInterface!743 List!4424 List!4425 Token!1458) Unit!7955)

(assert (=> b!453988 (= lt!201897 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!258 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun res!201814 () Bool)

(assert (=> b!453989 (=> (not res!201814) (not e!277765))))

(declare-fun forall!1278 (List!4425 Int) Bool)

(assert (=> b!453989 (= res!201814 (forall!1278 tokens!465 lambda!13265))))

(declare-fun b!453990 () Bool)

(declare-fun res!201817 () Bool)

(assert (=> b!453990 (=> (not res!201817) (not e!277753))))

(assert (=> b!453990 (= res!201817 (= (list!1957 (seqFromList!1079 lt!201890)) lt!201900))))

(declare-fun b!453991 () Bool)

(declare-fun tp!126247 () Bool)

(declare-fun e!277758 () Bool)

(declare-fun e!277749 () Bool)

(declare-fun inv!5485 (String!5475) Bool)

(declare-fun inv!5489 (TokenValueInjection!1530) Bool)

(assert (=> b!453991 (= e!277758 (and tp!126247 (inv!5485 (tag!1117 (h!9811 rules!1920))) (inv!5489 (transformation!857 (h!9811 rules!1920))) e!277749))))

(declare-fun b!453992 () Bool)

(declare-fun res!201813 () Bool)

(assert (=> b!453992 (=> res!201813 e!277763)))

(declare-fun rulesProduceIndividualToken!492 (LexerInterface!743 List!4424 Token!1458) Bool)

(assert (=> b!453992 (= res!201813 (not (rulesProduceIndividualToken!492 thiss!17480 rules!1920 (h!9812 tokens!465))))))

(declare-fun b!453993 () Bool)

(declare-fun e!277767 () Bool)

(assert (=> b!453993 (= e!277752 e!277767)))

(declare-fun res!201798 () Bool)

(assert (=> b!453993 (=> (not res!201798) (not e!277767))))

(declare-datatypes ((Option!1147 0))(
  ( (None!1146) (Some!1146 (v!15467 tuple2!5360)) )
))
(declare-fun lt!201893 () Option!1147)

(declare-fun isDefined!986 (Option!1147) Bool)

(assert (=> b!453993 (= res!201798 (isDefined!986 lt!201893))))

(declare-fun maxPrefix!459 (LexerInterface!743 List!4424 List!4423) Option!1147)

(assert (=> b!453993 (= lt!201893 (maxPrefix!459 thiss!17480 rules!1920 lt!201890))))

(declare-fun b!453994 () Bool)

(declare-fun e!277774 () Bool)

(declare-fun e!277754 () Bool)

(assert (=> b!453994 (= e!277774 e!277754)))

(declare-fun res!201800 () Bool)

(assert (=> b!453994 (=> res!201800 e!277754)))

(declare-fun e!277769 () Bool)

(assert (=> b!453994 (= res!201800 e!277769)))

(declare-fun res!201803 () Bool)

(assert (=> b!453994 (=> (not res!201803) (not e!277769))))

(declare-fun lt!201887 () Bool)

(assert (=> b!453994 (= res!201803 (not lt!201887))))

(declare-fun lt!201898 () List!4423)

(assert (=> b!453994 (= lt!201887 (= lt!201890 lt!201898))))

(declare-fun b!453995 () Bool)

(declare-fun res!201811 () Bool)

(assert (=> b!453995 (=> (not res!201811) (not e!277765))))

(assert (=> b!453995 (= res!201811 ((_ is Cons!4415) tokens!465))))

(assert (=> b!453996 (= e!277749 (and tp!126242 tp!126245))))

(declare-fun b!453997 () Bool)

(declare-fun res!201806 () Bool)

(assert (=> b!453997 (=> (not res!201806) (not e!277770))))

(declare-fun rulesInvariant!709 (LexerInterface!743 List!4424) Bool)

(assert (=> b!453997 (= res!201806 (rulesInvariant!709 thiss!17480 rules!1920))))

(declare-fun b!453998 () Bool)

(assert (=> b!453998 (= e!277772 e!277762)))

(declare-fun res!201815 () Bool)

(assert (=> b!453998 (=> res!201815 e!277762)))

(assert (=> b!453998 (= res!201815 lt!201887)))

(assert (=> b!453998 e!277764))

(declare-fun res!201801 () Bool)

(assert (=> b!453998 (=> (not res!201801) (not e!277764))))

(assert (=> b!453998 (= res!201801 (= (_1!2896 lt!201896) (h!9812 tokens!465)))))

(declare-fun lt!201902 () Option!1147)

(declare-fun get!1615 (Option!1147) tuple2!5360)

(assert (=> b!453998 (= lt!201896 (get!1615 lt!201902))))

(assert (=> b!453998 (isDefined!986 lt!201902)))

(assert (=> b!453998 (= lt!201902 (maxPrefix!459 thiss!17480 rules!1920 lt!201901))))

(declare-fun b!453999 () Bool)

(declare-fun res!201802 () Bool)

(assert (=> b!453999 (=> res!201802 e!277763)))

(declare-fun isEmpty!3379 (BalanceConc!3082) Bool)

(declare-datatypes ((tuple2!5362 0))(
  ( (tuple2!5363 (_1!2897 BalanceConc!3082) (_2!2897 BalanceConc!3080)) )
))
(declare-fun lex!535 (LexerInterface!743 List!4424 BalanceConc!3080) tuple2!5362)

(assert (=> b!453999 (= res!201802 (isEmpty!3379 (_1!2897 (lex!535 thiss!17480 rules!1920 (seqFromList!1079 lt!201901)))))))

(declare-fun b!454000 () Bool)

(assert (=> b!454000 (= e!277770 e!277765)))

(declare-fun res!201810 () Bool)

(assert (=> b!454000 (=> (not res!201810) (not e!277765))))

(declare-fun rulesProduceEachTokenIndividually!535 (LexerInterface!743 List!4424 BalanceConc!3082) Bool)

(assert (=> b!454000 (= res!201810 (rulesProduceEachTokenIndividually!535 thiss!17480 rules!1920 lt!201891))))

(declare-fun seqFromList!1080 (List!4425) BalanceConc!3082)

(assert (=> b!454000 (= lt!201891 (seqFromList!1080 tokens!465))))

(declare-fun tp!126239 () Bool)

(declare-fun b!454001 () Bool)

(assert (=> b!454001 (= e!277755 (and tp!126239 (inv!5485 (tag!1117 (rule!1548 separatorToken!170))) (inv!5489 (transformation!857 (rule!1548 separatorToken!170))) e!277773))))

(declare-fun b!454002 () Bool)

(declare-fun lt!201894 () List!4423)

(declare-fun ++!1282 (List!4423 List!4423) List!4423)

(assert (=> b!454002 (= e!277769 (not (= lt!201890 (++!1282 lt!201901 lt!201894))))))

(declare-fun b!454003 () Bool)

(declare-fun res!201818 () Bool)

(assert (=> b!454003 (=> (not res!201818) (not e!277765))))

(assert (=> b!454003 (= res!201818 (isSeparator!857 (rule!1548 separatorToken!170)))))

(declare-fun b!454004 () Bool)

(declare-fun e!277750 () Bool)

(declare-fun tp!126236 () Bool)

(assert (=> b!454004 (= e!277750 (and e!277758 tp!126236))))

(declare-fun b!454005 () Bool)

(declare-fun head!1106 (List!4425) Token!1458)

(assert (=> b!454005 (= e!277767 (= (_1!2896 (get!1615 lt!201893)) (head!1106 tokens!465)))))

(declare-fun res!201820 () Bool)

(assert (=> start!43002 (=> (not res!201820) (not e!277770))))

(assert (=> start!43002 (= res!201820 ((_ is Lexer!741) thiss!17480))))

(assert (=> start!43002 e!277770))

(assert (=> start!43002 true))

(assert (=> start!43002 e!277750))

(assert (=> start!43002 (and (inv!5488 separatorToken!170) e!277761)))

(assert (=> start!43002 e!277766))

(declare-fun b!454006 () Bool)

(declare-fun res!201807 () Bool)

(assert (=> b!454006 (=> (not res!201807) (not e!277765))))

(assert (=> b!454006 (= res!201807 (rulesProduceIndividualToken!492 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!454007 () Bool)

(assert (=> b!454007 (= e!277753 (not e!277774))))

(declare-fun res!201816 () Bool)

(assert (=> b!454007 (=> res!201816 e!277774)))

(assert (=> b!454007 (= res!201816 (not (= lt!201894 (list!1957 (printWithSeparatorTokenWhenNeededRec!416 thiss!17480 rules!1920 (seqFromList!1080 (t!71121 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!201903 () List!4423)

(assert (=> b!454007 (= lt!201903 lt!201898)))

(declare-fun lt!201905 () List!4423)

(assert (=> b!454007 (= lt!201898 (++!1282 lt!201901 lt!201905))))

(declare-fun lt!201888 () List!4423)

(assert (=> b!454007 (= lt!201903 (++!1282 (++!1282 lt!201901 lt!201888) lt!201894))))

(declare-fun lt!201892 () Unit!7955)

(declare-fun lemmaConcatAssociativity!592 (List!4423 List!4423 List!4423) Unit!7955)

(assert (=> b!454007 (= lt!201892 (lemmaConcatAssociativity!592 lt!201901 lt!201888 lt!201894))))

(declare-fun charsOf!500 (Token!1458) BalanceConc!3080)

(assert (=> b!454007 (= lt!201901 (list!1957 (charsOf!500 (h!9812 tokens!465))))))

(assert (=> b!454007 (= lt!201905 (++!1282 lt!201888 lt!201894))))

(assert (=> b!454007 (= lt!201894 (printWithSeparatorTokenWhenNeededList!424 thiss!17480 rules!1920 (t!71121 tokens!465) separatorToken!170))))

(assert (=> b!454007 (= lt!201888 (list!1957 (charsOf!500 separatorToken!170)))))

(declare-fun b!454008 () Bool)

(declare-fun tp!126237 () Bool)

(assert (=> b!454008 (= e!277759 (and tp!126237 (inv!5485 (tag!1117 (rule!1548 (h!9812 tokens!465)))) (inv!5489 (transformation!857 (rule!1548 (h!9812 tokens!465)))) e!277768))))

(declare-fun b!454009 () Bool)

(assert (=> b!454009 (= e!277754 e!277763)))

(declare-fun res!201805 () Bool)

(assert (=> b!454009 (=> res!201805 e!277763)))

(declare-fun lt!201904 () List!4423)

(declare-fun lt!201906 () List!4423)

(assert (=> b!454009 (= res!201805 (or (not (= lt!201906 lt!201904)) (not (= lt!201904 lt!201901)) (not (= lt!201906 lt!201901))))))

(declare-fun printList!417 (LexerInterface!743 List!4425) List!4423)

(assert (=> b!454009 (= lt!201904 (printList!417 thiss!17480 (Cons!4415 (h!9812 tokens!465) Nil!4415)))))

(declare-fun lt!201889 () BalanceConc!3080)

(assert (=> b!454009 (= lt!201906 (list!1957 lt!201889))))

(declare-fun lt!201899 () BalanceConc!3082)

(declare-fun printTailRec!429 (LexerInterface!743 BalanceConc!3082 Int BalanceConc!3080) BalanceConc!3080)

(assert (=> b!454009 (= lt!201889 (printTailRec!429 thiss!17480 lt!201899 0 (BalanceConc!3081 Empty!1536)))))

(declare-fun print!468 (LexerInterface!743 BalanceConc!3082) BalanceConc!3080)

(assert (=> b!454009 (= lt!201889 (print!468 thiss!17480 lt!201899))))

(declare-fun singletonSeq!403 (Token!1458) BalanceConc!3082)

(assert (=> b!454009 (= lt!201899 (singletonSeq!403 (h!9812 tokens!465)))))

(assert (= (and start!43002 res!201820) b!453977))

(assert (= (and b!453977 res!201812) b!453997))

(assert (= (and b!453997 res!201806) b!454000))

(assert (= (and b!454000 res!201810) b!454006))

(assert (= (and b!454006 res!201807) b!454003))

(assert (= (and b!454003 res!201818) b!453989))

(assert (= (and b!453989 res!201814) b!453984))

(assert (= (and b!453984 res!201808) b!453995))

(assert (= (and b!453995 res!201811) b!453985))

(assert (= (and b!453985 res!201819) b!453990))

(assert (= (and b!453990 res!201817) b!454007))

(assert (= (and b!454007 (not res!201816)) b!453994))

(assert (= (and b!453994 res!201803) b!454002))

(assert (= (and b!453994 (not res!201800)) b!454009))

(assert (= (and b!454009 (not res!201805)) b!453992))

(assert (= (and b!453992 (not res!201813)) b!453999))

(assert (= (and b!453999 (not res!201802)) b!453982))

(assert (= (and b!453982 (not res!201804)) b!453998))

(assert (= (and b!453998 res!201801) b!453983))

(assert (= (and b!453983 res!201799) b!453986))

(assert (= (and b!453998 (not res!201815)) b!453988))

(assert (= (and b!453988 (not res!201809)) b!453993))

(assert (= (and b!453993 res!201798) b!454005))

(assert (= b!453991 b!453996))

(assert (= b!454004 b!453991))

(assert (= (and start!43002 ((_ is Cons!4414) rules!1920)) b!454004))

(assert (= b!454001 b!453978))

(assert (= b!453981 b!454001))

(assert (= start!43002 b!453981))

(assert (= b!454008 b!453987))

(assert (= b!453979 b!454008))

(assert (= b!453980 b!453979))

(assert (= (and start!43002 ((_ is Cons!4415) tokens!465)) b!453980))

(declare-fun m!718171 () Bool)

(assert (=> b!453999 m!718171))

(assert (=> b!453999 m!718171))

(declare-fun m!718173 () Bool)

(assert (=> b!453999 m!718173))

(declare-fun m!718175 () Bool)

(assert (=> b!453999 m!718175))

(declare-fun m!718177 () Bool)

(assert (=> b!453991 m!718177))

(declare-fun m!718179 () Bool)

(assert (=> b!453991 m!718179))

(declare-fun m!718181 () Bool)

(assert (=> b!453981 m!718181))

(declare-fun m!718183 () Bool)

(assert (=> b!453990 m!718183))

(assert (=> b!453990 m!718183))

(declare-fun m!718185 () Bool)

(assert (=> b!453990 m!718185))

(declare-fun m!718187 () Bool)

(assert (=> start!43002 m!718187))

(declare-fun m!718189 () Bool)

(assert (=> b!453982 m!718189))

(assert (=> b!453982 m!718189))

(declare-fun m!718191 () Bool)

(assert (=> b!453982 m!718191))

(assert (=> b!453982 m!718191))

(declare-fun m!718193 () Bool)

(assert (=> b!453982 m!718193))

(declare-fun m!718195 () Bool)

(assert (=> b!453982 m!718195))

(declare-fun m!718197 () Bool)

(assert (=> b!454006 m!718197))

(declare-fun m!718199 () Bool)

(assert (=> b!454008 m!718199))

(declare-fun m!718201 () Bool)

(assert (=> b!454008 m!718201))

(declare-fun m!718203 () Bool)

(assert (=> b!453992 m!718203))

(declare-fun m!718205 () Bool)

(assert (=> b!453980 m!718205))

(declare-fun m!718207 () Bool)

(assert (=> b!453979 m!718207))

(declare-fun m!718209 () Bool)

(assert (=> b!453977 m!718209))

(declare-fun m!718211 () Bool)

(assert (=> b!453988 m!718211))

(declare-fun m!718213 () Bool)

(assert (=> b!453988 m!718213))

(declare-fun m!718215 () Bool)

(assert (=> b!453997 m!718215))

(declare-fun m!718217 () Bool)

(assert (=> b!454007 m!718217))

(declare-fun m!718219 () Bool)

(assert (=> b!454007 m!718219))

(declare-fun m!718221 () Bool)

(assert (=> b!454007 m!718221))

(declare-fun m!718223 () Bool)

(assert (=> b!454007 m!718223))

(declare-fun m!718225 () Bool)

(assert (=> b!454007 m!718225))

(declare-fun m!718227 () Bool)

(assert (=> b!454007 m!718227))

(declare-fun m!718229 () Bool)

(assert (=> b!454007 m!718229))

(assert (=> b!454007 m!718221))

(assert (=> b!454007 m!718227))

(declare-fun m!718231 () Bool)

(assert (=> b!454007 m!718231))

(assert (=> b!454007 m!718231))

(declare-fun m!718233 () Bool)

(assert (=> b!454007 m!718233))

(declare-fun m!718235 () Bool)

(assert (=> b!454007 m!718235))

(declare-fun m!718237 () Bool)

(assert (=> b!454007 m!718237))

(declare-fun m!718239 () Bool)

(assert (=> b!454007 m!718239))

(declare-fun m!718241 () Bool)

(assert (=> b!454007 m!718241))

(assert (=> b!454007 m!718217))

(assert (=> b!454007 m!718235))

(declare-fun m!718243 () Bool)

(assert (=> b!453986 m!718243))

(declare-fun m!718245 () Bool)

(assert (=> b!454009 m!718245))

(declare-fun m!718247 () Bool)

(assert (=> b!454009 m!718247))

(declare-fun m!718249 () Bool)

(assert (=> b!454009 m!718249))

(declare-fun m!718251 () Bool)

(assert (=> b!454009 m!718251))

(declare-fun m!718253 () Bool)

(assert (=> b!454009 m!718253))

(declare-fun m!718255 () Bool)

(assert (=> b!453985 m!718255))

(assert (=> b!453985 m!718255))

(declare-fun m!718257 () Bool)

(assert (=> b!453985 m!718257))

(declare-fun m!718259 () Bool)

(assert (=> b!453985 m!718259))

(declare-fun m!718261 () Bool)

(assert (=> b!454002 m!718261))

(declare-fun m!718263 () Bool)

(assert (=> b!454000 m!718263))

(declare-fun m!718265 () Bool)

(assert (=> b!454000 m!718265))

(declare-fun m!718267 () Bool)

(assert (=> b!454001 m!718267))

(declare-fun m!718269 () Bool)

(assert (=> b!454001 m!718269))

(declare-fun m!718271 () Bool)

(assert (=> b!454005 m!718271))

(declare-fun m!718273 () Bool)

(assert (=> b!454005 m!718273))

(declare-fun m!718275 () Bool)

(assert (=> b!453993 m!718275))

(declare-fun m!718277 () Bool)

(assert (=> b!453993 m!718277))

(declare-fun m!718279 () Bool)

(assert (=> b!453998 m!718279))

(declare-fun m!718281 () Bool)

(assert (=> b!453998 m!718281))

(declare-fun m!718283 () Bool)

(assert (=> b!453998 m!718283))

(declare-fun m!718285 () Bool)

(assert (=> b!453983 m!718285))

(declare-fun m!718287 () Bool)

(assert (=> b!453989 m!718287))

(declare-fun m!718289 () Bool)

(assert (=> b!453984 m!718289))

(check-sat (not b!453998) b_and!48763 (not b!454001) (not start!43002) (not b!453979) (not b!453981) b_and!48767 (not b!454002) (not b!453991) b_and!48769 (not b!454005) b_and!48761 (not b!453982) (not b!454018) (not b!454006) (not b!453992) (not b!453999) (not b!453990) (not b!454009) (not b!453977) (not b_next!12657) (not b!453989) (not b!453988) (not b!453993) (not b!453985) (not b_next!12653) b_and!48765 (not b!453997) (not b!454007) b_and!48771 (not b_next!12649) (not b!454008) (not b!453986) (not b!453983) (not b!453984) (not b!453980) (not b_next!12651) (not b!454000) (not b!454004) (not b_next!12655) (not b_next!12659))
(check-sat (not b_next!12657) b_and!48763 (not b_next!12653) b_and!48767 (not b_next!12649) (not b_next!12651) b_and!48769 b_and!48761 b_and!48765 b_and!48771 (not b_next!12655) (not b_next!12659))
