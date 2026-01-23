; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192364 () Bool)

(assert start!192364)

(declare-fun b!1920751 () Bool)

(declare-fun b_free!54929 () Bool)

(declare-fun b_next!55633 () Bool)

(assert (=> b!1920751 (= b_free!54929 (not b_next!55633))))

(declare-fun tp!548988 () Bool)

(declare-fun b_and!150159 () Bool)

(assert (=> b!1920751 (= tp!548988 b_and!150159)))

(declare-fun b_free!54931 () Bool)

(declare-fun b_next!55635 () Bool)

(assert (=> b!1920751 (= b_free!54931 (not b_next!55635))))

(declare-fun tp!548981 () Bool)

(declare-fun b_and!150161 () Bool)

(assert (=> b!1920751 (= tp!548981 b_and!150161)))

(declare-fun b!1920762 () Bool)

(declare-fun b_free!54933 () Bool)

(declare-fun b_next!55637 () Bool)

(assert (=> b!1920762 (= b_free!54933 (not b_next!55637))))

(declare-fun tp!548979 () Bool)

(declare-fun b_and!150163 () Bool)

(assert (=> b!1920762 (= tp!548979 b_and!150163)))

(declare-fun b_free!54935 () Bool)

(declare-fun b_next!55639 () Bool)

(assert (=> b!1920762 (= b_free!54935 (not b_next!55639))))

(declare-fun tp!548984 () Bool)

(declare-fun b_and!150165 () Bool)

(assert (=> b!1920762 (= tp!548984 b_and!150165)))

(declare-fun b!1920750 () Bool)

(declare-fun b_free!54937 () Bool)

(declare-fun b_next!55641 () Bool)

(assert (=> b!1920750 (= b_free!54937 (not b_next!55641))))

(declare-fun tp!548976 () Bool)

(declare-fun b_and!150167 () Bool)

(assert (=> b!1920750 (= tp!548976 b_and!150167)))

(declare-fun b_free!54939 () Bool)

(declare-fun b_next!55643 () Bool)

(assert (=> b!1920750 (= b_free!54939 (not b_next!55643))))

(declare-fun tp!548983 () Bool)

(declare-fun b_and!150169 () Bool)

(assert (=> b!1920750 (= tp!548983 b_and!150169)))

(declare-fun b!1920742 () Bool)

(declare-fun res!858980 () Bool)

(declare-fun e!1227792 () Bool)

(assert (=> b!1920742 (=> (not res!858980) (not e!1227792))))

(declare-datatypes ((LexerInterface!3531 0))(
  ( (LexerInterfaceExt!3528 (__x!13606 Int)) (Lexer!3529) )
))
(declare-fun thiss!23328 () LexerInterface!3531)

(declare-datatypes ((List!21942 0))(
  ( (Nil!21860) (Cons!21860 (h!27261 (_ BitVec 16)) (t!178785 List!21942)) )
))
(declare-datatypes ((TokenValue!4054 0))(
  ( (FloatLiteralValue!8108 (text!28823 List!21942)) (TokenValueExt!4053 (__x!13607 Int)) (Broken!20270 (value!123228 List!21942)) (Object!4135) (End!4054) (Def!4054) (Underscore!4054) (Match!4054) (Else!4054) (Error!4054) (Case!4054) (If!4054) (Extends!4054) (Abstract!4054) (Class!4054) (Val!4054) (DelimiterValue!8108 (del!4114 List!21942)) (KeywordValue!4060 (value!123229 List!21942)) (CommentValue!8108 (value!123230 List!21942)) (WhitespaceValue!8108 (value!123231 List!21942)) (IndentationValue!4054 (value!123232 List!21942)) (String!25387) (Int32!4054) (Broken!20271 (value!123233 List!21942)) (Boolean!4055) (Unit!36189) (OperatorValue!4057 (op!4114 List!21942)) (IdentifierValue!8108 (value!123234 List!21942)) (IdentifierValue!8109 (value!123235 List!21942)) (WhitespaceValue!8109 (value!123236 List!21942)) (True!8108) (False!8108) (Broken!20272 (value!123237 List!21942)) (Broken!20273 (value!123238 List!21942)) (True!8109) (RightBrace!4054) (RightBracket!4054) (Colon!4054) (Null!4054) (Comma!4054) (LeftBracket!4054) (False!8109) (LeftBrace!4054) (ImaginaryLiteralValue!4054 (text!28824 List!21942)) (StringLiteralValue!12162 (value!123239 List!21942)) (EOFValue!4054 (value!123240 List!21942)) (IdentValue!4054 (value!123241 List!21942)) (DelimiterValue!8109 (value!123242 List!21942)) (DedentValue!4054 (value!123243 List!21942)) (NewLineValue!4054 (value!123244 List!21942)) (IntegerValue!12162 (value!123245 (_ BitVec 32)) (text!28825 List!21942)) (IntegerValue!12163 (value!123246 Int) (text!28826 List!21942)) (Times!4054) (Or!4054) (Equal!4054) (Minus!4054) (Broken!20274 (value!123247 List!21942)) (And!4054) (Div!4054) (LessEqual!4054) (Mod!4054) (Concat!9397) (Not!4054) (Plus!4054) (SpaceValue!4054 (value!123248 List!21942)) (IntegerValue!12164 (value!123249 Int) (text!28827 List!21942)) (StringLiteralValue!12163 (text!28828 List!21942)) (FloatLiteralValue!8109 (text!28829 List!21942)) (BytesLiteralValue!4054 (value!123250 List!21942)) (CommentValue!8109 (value!123251 List!21942)) (StringLiteralValue!12164 (value!123252 List!21942)) (ErrorTokenValue!4054 (msg!4115 List!21942)) )
))
(declare-datatypes ((C!10832 0))(
  ( (C!10833 (val!6368 Int)) )
))
(declare-datatypes ((List!21943 0))(
  ( (Nil!21861) (Cons!21861 (h!27262 C!10832) (t!178786 List!21943)) )
))
(declare-datatypes ((String!25388 0))(
  ( (String!25389 (value!123253 String)) )
))
(declare-datatypes ((IArray!14591 0))(
  ( (IArray!14592 (innerList!7353 List!21943)) )
))
(declare-datatypes ((Conc!7293 0))(
  ( (Node!7293 (left!17390 Conc!7293) (right!17720 Conc!7293) (csize!14816 Int) (cheight!7504 Int)) (Leaf!10715 (xs!10187 IArray!14591) (csize!14817 Int)) (Empty!7293) )
))
(declare-datatypes ((BalanceConc!14402 0))(
  ( (BalanceConc!14403 (c!312213 Conc!7293)) )
))
(declare-datatypes ((TokenValueInjection!7692 0))(
  ( (TokenValueInjection!7693 (toValue!5547 Int) (toChars!5406 Int)) )
))
(declare-datatypes ((Regex!5343 0))(
  ( (ElementMatch!5343 (c!312214 C!10832)) (Concat!9398 (regOne!11198 Regex!5343) (regTwo!11198 Regex!5343)) (EmptyExpr!5343) (Star!5343 (reg!5672 Regex!5343)) (EmptyLang!5343) (Union!5343 (regOne!11199 Regex!5343) (regTwo!11199 Regex!5343)) )
))
(declare-datatypes ((Rule!7636 0))(
  ( (Rule!7637 (regex!3918 Regex!5343) (tag!4358 String!25388) (isSeparator!3918 Bool) (transformation!3918 TokenValueInjection!7692)) )
))
(declare-datatypes ((List!21944 0))(
  ( (Nil!21862) (Cons!21862 (h!27263 Rule!7636) (t!178787 List!21944)) )
))
(declare-fun rules!3198 () List!21944)

(declare-fun rulesInvariant!3138 (LexerInterface!3531 List!21944) Bool)

(assert (=> b!1920742 (= res!858980 (rulesInvariant!3138 thiss!23328 rules!3198))))

(declare-fun b!1920743 () Bool)

(declare-fun res!858983 () Bool)

(assert (=> b!1920743 (=> (not res!858983) (not e!1227792))))

(declare-datatypes ((Token!7388 0))(
  ( (Token!7389 (value!123254 TokenValue!4054) (rule!6121 Rule!7636) (size!17066 Int) (originalCharacters!4725 List!21943)) )
))
(declare-datatypes ((List!21945 0))(
  ( (Nil!21863) (Cons!21863 (h!27264 Token!7388) (t!178788 List!21945)) )
))
(declare-fun tokens!598 () List!21945)

(declare-fun isEmpty!13441 (List!21945) Bool)

(assert (=> b!1920743 (= res!858983 (not (isEmpty!13441 tokens!598)))))

(declare-fun b!1920744 () Bool)

(declare-fun res!858985 () Bool)

(assert (=> b!1920744 (=> (not res!858985) (not e!1227792))))

(declare-fun separatorToken!354 () Token!7388)

(declare-fun rulesProduceIndividualToken!1703 (LexerInterface!3531 List!21944 Token!7388) Bool)

(assert (=> b!1920744 (= res!858985 (rulesProduceIndividualToken!1703 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1920745 () Bool)

(assert (=> b!1920745 (= e!1227792 false)))

(declare-fun e!1227795 () Bool)

(declare-fun tp!548977 () Bool)

(declare-fun e!1227802 () Bool)

(declare-fun b!1920746 () Bool)

(declare-fun inv!28930 (String!25388) Bool)

(declare-fun inv!28933 (TokenValueInjection!7692) Bool)

(assert (=> b!1920746 (= e!1227802 (and tp!548977 (inv!28930 (tag!4358 (h!27263 rules!3198))) (inv!28933 (transformation!3918 (h!27263 rules!3198))) e!1227795))))

(declare-fun b!1920747 () Bool)

(declare-fun res!858981 () Bool)

(assert (=> b!1920747 (=> (not res!858981) (not e!1227792))))

(declare-fun rulesProduceEachTokenIndividuallyList!1262 (LexerInterface!3531 List!21944 List!21945) Bool)

(assert (=> b!1920747 (= res!858981 (rulesProduceEachTokenIndividuallyList!1262 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1920748 () Bool)

(declare-fun res!858979 () Bool)

(assert (=> b!1920748 (=> (not res!858979) (not e!1227792))))

(declare-fun lambda!74987 () Int)

(declare-fun forall!4616 (List!21945 Int) Bool)

(assert (=> b!1920748 (= res!858979 (forall!4616 tokens!598 lambda!74987))))

(declare-fun b!1920749 () Bool)

(declare-fun res!858986 () Bool)

(assert (=> b!1920749 (=> (not res!858986) (not e!1227792))))

(declare-fun isEmpty!13442 (List!21944) Bool)

(assert (=> b!1920749 (= res!858986 (not (isEmpty!13442 rules!3198)))))

(declare-fun res!858976 () Bool)

(assert (=> start!192364 (=> (not res!858976) (not e!1227792))))

(get-info :version)

(assert (=> start!192364 (= res!858976 ((_ is Lexer!3529) thiss!23328))))

(assert (=> start!192364 e!1227792))

(assert (=> start!192364 true))

(declare-fun e!1227791 () Bool)

(assert (=> start!192364 e!1227791))

(declare-fun e!1227793 () Bool)

(assert (=> start!192364 e!1227793))

(declare-fun e!1227797 () Bool)

(declare-fun inv!28934 (Token!7388) Bool)

(assert (=> start!192364 (and (inv!28934 separatorToken!354) e!1227797)))

(declare-fun e!1227800 () Bool)

(assert (=> b!1920750 (= e!1227800 (and tp!548976 tp!548983))))

(assert (=> b!1920751 (= e!1227795 (and tp!548988 tp!548981))))

(declare-fun e!1227796 () Bool)

(declare-fun tp!548986 () Bool)

(declare-fun b!1920752 () Bool)

(declare-fun e!1227798 () Bool)

(declare-fun inv!21 (TokenValue!4054) Bool)

(assert (=> b!1920752 (= e!1227798 (and (inv!21 (value!123254 (h!27264 tokens!598))) e!1227796 tp!548986))))

(declare-fun b!1920753 () Bool)

(declare-fun res!858977 () Bool)

(assert (=> b!1920753 (=> (not res!858977) (not e!1227792))))

(assert (=> b!1920753 (= res!858977 (isSeparator!3918 (rule!6121 separatorToken!354)))))

(declare-fun b!1920754 () Bool)

(declare-fun tp!548980 () Bool)

(assert (=> b!1920754 (= e!1227791 (and e!1227802 tp!548980))))

(declare-fun b!1920755 () Bool)

(declare-fun res!858982 () Bool)

(assert (=> b!1920755 (=> (not res!858982) (not e!1227792))))

(declare-datatypes ((tuple2!20486 0))(
  ( (tuple2!20487 (_1!11712 Token!7388) (_2!11712 List!21943)) )
))
(declare-datatypes ((Option!4518 0))(
  ( (None!4517) (Some!4517 (v!26590 tuple2!20486)) )
))
(declare-fun isDefined!3812 (Option!4518) Bool)

(declare-fun maxPrefix!1969 (LexerInterface!3531 List!21944 List!21943) Option!4518)

(declare-fun printWithSeparatorTokenWhenNeededList!570 (LexerInterface!3531 List!21944 List!21945 Token!7388) List!21943)

(assert (=> b!1920755 (= res!858982 (isDefined!3812 (maxPrefix!1969 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!570 thiss!23328 rules!3198 tokens!598 separatorToken!354))))))

(declare-fun tp!548982 () Bool)

(declare-fun b!1920756 () Bool)

(assert (=> b!1920756 (= e!1227793 (and (inv!28934 (h!27264 tokens!598)) e!1227798 tp!548982))))

(declare-fun e!1227790 () Bool)

(declare-fun tp!548987 () Bool)

(declare-fun b!1920757 () Bool)

(assert (=> b!1920757 (= e!1227797 (and (inv!21 (value!123254 separatorToken!354)) e!1227790 tp!548987))))

(declare-fun e!1227801 () Bool)

(declare-fun tp!548978 () Bool)

(declare-fun b!1920758 () Bool)

(assert (=> b!1920758 (= e!1227796 (and tp!548978 (inv!28930 (tag!4358 (rule!6121 (h!27264 tokens!598)))) (inv!28933 (transformation!3918 (rule!6121 (h!27264 tokens!598)))) e!1227801))))

(declare-fun b!1920759 () Bool)

(declare-fun res!858984 () Bool)

(assert (=> b!1920759 (=> (not res!858984) (not e!1227792))))

(declare-fun sepAndNonSepRulesDisjointChars!1016 (List!21944 List!21944) Bool)

(assert (=> b!1920759 (= res!858984 (sepAndNonSepRulesDisjointChars!1016 rules!3198 rules!3198))))

(declare-fun b!1920760 () Bool)

(declare-fun tp!548985 () Bool)

(assert (=> b!1920760 (= e!1227790 (and tp!548985 (inv!28930 (tag!4358 (rule!6121 separatorToken!354))) (inv!28933 (transformation!3918 (rule!6121 separatorToken!354))) e!1227800))))

(declare-fun b!1920761 () Bool)

(declare-fun res!858978 () Bool)

(assert (=> b!1920761 (=> (not res!858978) (not e!1227792))))

(assert (=> b!1920761 (= res!858978 (not ((_ is Cons!21863) tokens!598)))))

(assert (=> b!1920762 (= e!1227801 (and tp!548979 tp!548984))))

(assert (= (and start!192364 res!858976) b!1920749))

(assert (= (and b!1920749 res!858986) b!1920742))

(assert (= (and b!1920742 res!858980) b!1920747))

(assert (= (and b!1920747 res!858981) b!1920744))

(assert (= (and b!1920744 res!858985) b!1920753))

(assert (= (and b!1920753 res!858977) b!1920748))

(assert (= (and b!1920748 res!858979) b!1920759))

(assert (= (and b!1920759 res!858984) b!1920761))

(assert (= (and b!1920761 res!858978) b!1920743))

(assert (= (and b!1920743 res!858983) b!1920755))

(assert (= (and b!1920755 res!858982) b!1920745))

(assert (= b!1920746 b!1920751))

(assert (= b!1920754 b!1920746))

(assert (= (and start!192364 ((_ is Cons!21862) rules!3198)) b!1920754))

(assert (= b!1920758 b!1920762))

(assert (= b!1920752 b!1920758))

(assert (= b!1920756 b!1920752))

(assert (= (and start!192364 ((_ is Cons!21863) tokens!598)) b!1920756))

(assert (= b!1920760 b!1920750))

(assert (= b!1920757 b!1920760))

(assert (= start!192364 b!1920757))

(declare-fun m!2355803 () Bool)

(assert (=> b!1920759 m!2355803))

(declare-fun m!2355805 () Bool)

(assert (=> b!1920742 m!2355805))

(declare-fun m!2355807 () Bool)

(assert (=> b!1920758 m!2355807))

(declare-fun m!2355809 () Bool)

(assert (=> b!1920758 m!2355809))

(declare-fun m!2355811 () Bool)

(assert (=> b!1920749 m!2355811))

(declare-fun m!2355813 () Bool)

(assert (=> b!1920756 m!2355813))

(declare-fun m!2355815 () Bool)

(assert (=> b!1920744 m!2355815))

(declare-fun m!2355817 () Bool)

(assert (=> b!1920746 m!2355817))

(declare-fun m!2355819 () Bool)

(assert (=> b!1920746 m!2355819))

(declare-fun m!2355821 () Bool)

(assert (=> b!1920743 m!2355821))

(declare-fun m!2355823 () Bool)

(assert (=> b!1920748 m!2355823))

(declare-fun m!2355825 () Bool)

(assert (=> b!1920760 m!2355825))

(declare-fun m!2355827 () Bool)

(assert (=> b!1920760 m!2355827))

(declare-fun m!2355829 () Bool)

(assert (=> b!1920755 m!2355829))

(assert (=> b!1920755 m!2355829))

(declare-fun m!2355831 () Bool)

(assert (=> b!1920755 m!2355831))

(assert (=> b!1920755 m!2355831))

(declare-fun m!2355833 () Bool)

(assert (=> b!1920755 m!2355833))

(declare-fun m!2355835 () Bool)

(assert (=> b!1920757 m!2355835))

(declare-fun m!2355837 () Bool)

(assert (=> b!1920752 m!2355837))

(declare-fun m!2355839 () Bool)

(assert (=> b!1920747 m!2355839))

(declare-fun m!2355841 () Bool)

(assert (=> start!192364 m!2355841))

(check-sat (not b!1920755) b_and!150159 b_and!150165 (not b!1920743) (not start!192364) (not b_next!55643) (not b!1920747) (not b_next!55635) b_and!150161 (not b_next!55637) (not b!1920760) (not b!1920758) b_and!150169 (not b_next!55641) (not b!1920746) (not b!1920748) (not b!1920759) (not b!1920754) (not b!1920749) b_and!150163 (not b!1920744) b_and!150167 (not b!1920752) (not b!1920757) (not b_next!55633) (not b!1920756) (not b!1920742) (not b_next!55639))
(check-sat b_and!150159 b_and!150165 b_and!150163 b_and!150167 (not b_next!55633) (not b_next!55643) (not b_next!55635) (not b_next!55639) b_and!150161 (not b_next!55637) b_and!150169 (not b_next!55641))
