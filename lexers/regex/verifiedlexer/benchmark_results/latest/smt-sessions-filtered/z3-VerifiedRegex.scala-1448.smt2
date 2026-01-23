; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!76174 () Bool)

(assert start!76174)

(declare-fun b!850998 () Bool)

(declare-fun b_free!25705 () Bool)

(declare-fun b_next!25769 () Bool)

(assert (=> b!850998 (= b_free!25705 (not b_next!25769))))

(declare-fun tp!268020 () Bool)

(declare-fun b_and!74661 () Bool)

(assert (=> b!850998 (= tp!268020 b_and!74661)))

(declare-fun b_free!25707 () Bool)

(declare-fun b_next!25771 () Bool)

(assert (=> b!850998 (= b_free!25707 (not b_next!25771))))

(declare-fun tp!268016 () Bool)

(declare-fun b_and!74663 () Bool)

(assert (=> b!850998 (= tp!268016 b_and!74663)))

(declare-fun b!850999 () Bool)

(declare-fun b_free!25709 () Bool)

(declare-fun b_next!25773 () Bool)

(assert (=> b!850999 (= b_free!25709 (not b_next!25773))))

(declare-fun tp!268015 () Bool)

(declare-fun b_and!74665 () Bool)

(assert (=> b!850999 (= tp!268015 b_and!74665)))

(declare-fun b_free!25711 () Bool)

(declare-fun b_next!25775 () Bool)

(assert (=> b!850999 (= b_free!25711 (not b_next!25775))))

(declare-fun tp!268008 () Bool)

(declare-fun b_and!74667 () Bool)

(assert (=> b!850999 (= tp!268008 b_and!74667)))

(declare-fun b!850995 () Bool)

(declare-fun b_free!25713 () Bool)

(declare-fun b_next!25777 () Bool)

(assert (=> b!850995 (= b_free!25713 (not b_next!25777))))

(declare-fun tp!268017 () Bool)

(declare-fun b_and!74669 () Bool)

(assert (=> b!850995 (= tp!268017 b_and!74669)))

(declare-fun b_free!25715 () Bool)

(declare-fun b_next!25779 () Bool)

(assert (=> b!850995 (= b_free!25715 (not b_next!25779))))

(declare-fun tp!268013 () Bool)

(declare-fun b_and!74671 () Bool)

(assert (=> b!850995 (= tp!268013 b_and!74671)))

(declare-fun b!850987 () Bool)

(declare-fun res!388939 () Bool)

(declare-fun e!560058 () Bool)

(assert (=> b!850987 (=> (not res!388939) (not e!560058))))

(declare-datatypes ((List!9198 0))(
  ( (Nil!9182) (Cons!9182 (h!14583 (_ BitVec 16)) (t!95606 List!9198)) )
))
(declare-datatypes ((TokenValue!1788 0))(
  ( (FloatLiteralValue!3576 (text!12961 List!9198)) (TokenValueExt!1787 (__x!7307 Int)) (Broken!8940 (value!55750 List!9198)) (Object!1803) (End!1788) (Def!1788) (Underscore!1788) (Match!1788) (Else!1788) (Error!1788) (Case!1788) (If!1788) (Extends!1788) (Abstract!1788) (Class!1788) (Val!1788) (DelimiterValue!3576 (del!1848 List!9198)) (KeywordValue!1794 (value!55751 List!9198)) (CommentValue!3576 (value!55752 List!9198)) (WhitespaceValue!3576 (value!55753 List!9198)) (IndentationValue!1788 (value!55754 List!9198)) (String!10837) (Int32!1788) (Broken!8941 (value!55755 List!9198)) (Boolean!1789) (Unit!13688) (OperatorValue!1791 (op!1848 List!9198)) (IdentifierValue!3576 (value!55756 List!9198)) (IdentifierValue!3577 (value!55757 List!9198)) (WhitespaceValue!3577 (value!55758 List!9198)) (True!3576) (False!3576) (Broken!8942 (value!55759 List!9198)) (Broken!8943 (value!55760 List!9198)) (True!3577) (RightBrace!1788) (RightBracket!1788) (Colon!1788) (Null!1788) (Comma!1788) (LeftBracket!1788) (False!3577) (LeftBrace!1788) (ImaginaryLiteralValue!1788 (text!12962 List!9198)) (StringLiteralValue!5364 (value!55761 List!9198)) (EOFValue!1788 (value!55762 List!9198)) (IdentValue!1788 (value!55763 List!9198)) (DelimiterValue!3577 (value!55764 List!9198)) (DedentValue!1788 (value!55765 List!9198)) (NewLineValue!1788 (value!55766 List!9198)) (IntegerValue!5364 (value!55767 (_ BitVec 32)) (text!12963 List!9198)) (IntegerValue!5365 (value!55768 Int) (text!12964 List!9198)) (Times!1788) (Or!1788) (Equal!1788) (Minus!1788) (Broken!8944 (value!55769 List!9198)) (And!1788) (Div!1788) (LessEqual!1788) (Mod!1788) (Concat!3943) (Not!1788) (Plus!1788) (SpaceValue!1788 (value!55770 List!9198)) (IntegerValue!5366 (value!55771 Int) (text!12965 List!9198)) (StringLiteralValue!5365 (text!12966 List!9198)) (FloatLiteralValue!3577 (text!12967 List!9198)) (BytesLiteralValue!1788 (value!55772 List!9198)) (CommentValue!3577 (value!55773 List!9198)) (StringLiteralValue!5366 (value!55774 List!9198)) (ErrorTokenValue!1788 (msg!1849 List!9198)) )
))
(declare-datatypes ((C!4880 0))(
  ( (C!4881 (val!2688 Int)) )
))
(declare-datatypes ((Regex!2155 0))(
  ( (ElementMatch!2155 (c!138146 C!4880)) (Concat!3944 (regOne!4822 Regex!2155) (regTwo!4822 Regex!2155)) (EmptyExpr!2155) (Star!2155 (reg!2484 Regex!2155)) (EmptyLang!2155) (Union!2155 (regOne!4823 Regex!2155) (regTwo!4823 Regex!2155)) )
))
(declare-datatypes ((String!10838 0))(
  ( (String!10839 (value!55775 String)) )
))
(declare-datatypes ((List!9199 0))(
  ( (Nil!9183) (Cons!9183 (h!14584 C!4880) (t!95607 List!9199)) )
))
(declare-datatypes ((IArray!6089 0))(
  ( (IArray!6090 (innerList!3102 List!9199)) )
))
(declare-datatypes ((Conc!3042 0))(
  ( (Node!3042 (left!6792 Conc!3042) (right!7122 Conc!3042) (csize!6314 Int) (cheight!3253 Int)) (Leaf!4491 (xs!5731 IArray!6089) (csize!6315 Int)) (Empty!3042) )
))
(declare-datatypes ((BalanceConc!6098 0))(
  ( (BalanceConc!6099 (c!138147 Conc!3042)) )
))
(declare-datatypes ((TokenValueInjection!3276 0))(
  ( (TokenValueInjection!3277 (toValue!2759 Int) (toChars!2618 Int)) )
))
(declare-datatypes ((Rule!3244 0))(
  ( (Rule!3245 (regex!1722 Regex!2155) (tag!1984 String!10838) (isSeparator!1722 Bool) (transformation!1722 TokenValueInjection!3276)) )
))
(declare-datatypes ((List!9200 0))(
  ( (Nil!9184) (Cons!9184 (h!14585 Rule!3244) (t!95608 List!9200)) )
))
(declare-fun rules!2621 () List!9200)

(declare-fun isEmpty!5427 (List!9200) Bool)

(assert (=> b!850987 (= res!388939 (not (isEmpty!5427 rules!2621)))))

(declare-fun e!560062 () Bool)

(declare-datatypes ((Token!3110 0))(
  ( (Token!3111 (value!55776 TokenValue!1788) (rule!3145 Rule!3244) (size!7651 Int) (originalCharacters!2278 List!9199)) )
))
(declare-datatypes ((List!9201 0))(
  ( (Nil!9185) (Cons!9185 (h!14586 Token!3110) (t!95609 List!9201)) )
))
(declare-fun lt!322551 () List!9201)

(declare-datatypes ((LexerInterface!1524 0))(
  ( (LexerInterfaceExt!1521 (__x!7308 Int)) (Lexer!1522) )
))
(declare-fun thiss!20117 () LexerInterface!1524)

(declare-fun b!850988 () Bool)

(declare-datatypes ((IArray!6091 0))(
  ( (IArray!6092 (innerList!3103 List!9201)) )
))
(declare-datatypes ((Conc!3043 0))(
  ( (Node!3043 (left!6793 Conc!3043) (right!7123 Conc!3043) (csize!6316 Int) (cheight!3254 Int)) (Leaf!4492 (xs!5732 IArray!6091) (csize!6317 Int)) (Empty!3043) )
))
(declare-datatypes ((BalanceConc!6100 0))(
  ( (BalanceConc!6101 (c!138148 Conc!3043)) )
))
(declare-fun rulesProduceEachTokenIndividually!611 (LexerInterface!1524 List!9200 BalanceConc!6100) Bool)

(declare-fun seqFromList!1526 (List!9201) BalanceConc!6100)

(assert (=> b!850988 (= e!560062 (rulesProduceEachTokenIndividually!611 thiss!20117 rules!2621 (seqFromList!1526 lt!322551)))))

(declare-fun tp!268010 () Bool)

(declare-fun e!560071 () Bool)

(declare-fun l!5107 () List!9201)

(declare-fun e!560070 () Bool)

(declare-fun b!850989 () Bool)

(declare-fun inv!11665 (String!10838) Bool)

(declare-fun inv!11668 (TokenValueInjection!3276) Bool)

(assert (=> b!850989 (= e!560070 (and tp!268010 (inv!11665 (tag!1984 (rule!3145 (h!14586 l!5107)))) (inv!11668 (transformation!1722 (rule!3145 (h!14586 l!5107)))) e!560071))))

(declare-fun b!850990 () Bool)

(declare-fun e!560060 () Bool)

(declare-fun e!560057 () Bool)

(declare-fun tp!268009 () Bool)

(assert (=> b!850990 (= e!560060 (and e!560057 tp!268009))))

(declare-fun tp!268019 () Bool)

(declare-fun separatorToken!297 () Token!3110)

(declare-fun b!850991 () Bool)

(declare-fun e!560055 () Bool)

(declare-fun e!560067 () Bool)

(assert (=> b!850991 (= e!560055 (and tp!268019 (inv!11665 (tag!1984 (rule!3145 separatorToken!297))) (inv!11668 (transformation!1722 (rule!3145 separatorToken!297))) e!560067))))

(declare-fun e!560063 () Bool)

(declare-fun tp!268014 () Bool)

(declare-fun b!850992 () Bool)

(declare-fun inv!21 (TokenValue!1788) Bool)

(assert (=> b!850992 (= e!560063 (and (inv!21 (value!55776 (h!14586 l!5107))) e!560070 tp!268014))))

(declare-fun b!850993 () Bool)

(declare-fun res!388940 () Bool)

(assert (=> b!850993 (=> (not res!388940) (not e!560058))))

(assert (=> b!850993 (= res!388940 (isSeparator!1722 (rule!3145 separatorToken!297)))))

(declare-fun b!850994 () Bool)

(declare-fun tp!268011 () Bool)

(declare-fun e!560069 () Bool)

(declare-fun inv!11669 (Token!3110) Bool)

(assert (=> b!850994 (= e!560069 (and (inv!11669 (h!14586 l!5107)) e!560063 tp!268011))))

(declare-fun b!850996 () Bool)

(declare-fun res!388936 () Bool)

(assert (=> b!850996 (=> (not res!388936) (not e!560058))))

(declare-fun lambda!25430 () Int)

(declare-fun forall!2163 (List!9201 Int) Bool)

(assert (=> b!850996 (= res!388936 (forall!2163 l!5107 lambda!25430))))

(declare-fun b!850997 () Bool)

(assert (=> b!850997 (= e!560058 (not e!560062))))

(declare-fun res!388934 () Bool)

(assert (=> b!850997 (=> res!388934 e!560062)))

(get-info :version)

(assert (=> b!850997 (= res!388934 (and ((_ is Cons!9185) lt!322551) ((_ is Cons!9185) (t!95609 lt!322551))))))

(declare-fun rulesProduceEachTokenIndividuallyList!412 (LexerInterface!1524 List!9200 List!9201) Bool)

(assert (=> b!850997 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 lt!322551)))

(declare-fun withSeparatorTokenList!54 (LexerInterface!1524 List!9201 Token!3110) List!9201)

(assert (=> b!850997 (= lt!322551 (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13689 0))(
  ( (Unit!13690) )
))
(declare-fun lt!322550 () Unit!13689)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!54 (LexerInterface!1524 List!9200 List!9201 Token!3110) Unit!13689)

(assert (=> b!850997 (= lt!322550 (withSeparatorTokenListPreservesRulesProduceTokens!54 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> b!850998 (= e!560071 (and tp!268020 tp!268016))))

(assert (=> b!850999 (= e!560067 (and tp!268015 tp!268008))))

(declare-fun b!851000 () Bool)

(declare-fun res!388933 () Bool)

(assert (=> b!851000 (=> (not res!388933) (not e!560058))))

(declare-fun rulesInvariant!1400 (LexerInterface!1524 List!9200) Bool)

(assert (=> b!851000 (= res!388933 (rulesInvariant!1400 thiss!20117 rules!2621))))

(declare-fun b!851001 () Bool)

(declare-fun res!388935 () Bool)

(assert (=> b!851001 (=> (not res!388935) (not e!560058))))

(declare-fun sepAndNonSepRulesDisjointChars!522 (List!9200 List!9200) Bool)

(assert (=> b!851001 (= res!388935 (sepAndNonSepRulesDisjointChars!522 rules!2621 rules!2621))))

(declare-fun res!388932 () Bool)

(assert (=> start!76174 (=> (not res!388932) (not e!560058))))

(assert (=> start!76174 (= res!388932 ((_ is Lexer!1522) thiss!20117))))

(assert (=> start!76174 e!560058))

(assert (=> start!76174 true))

(assert (=> start!76174 e!560060))

(assert (=> start!76174 e!560069))

(declare-fun e!560066 () Bool)

(assert (=> start!76174 (and (inv!11669 separatorToken!297) e!560066)))

(declare-fun e!560065 () Bool)

(assert (=> b!850995 (= e!560065 (and tp!268017 tp!268013))))

(declare-fun b!851002 () Bool)

(declare-fun tp!268012 () Bool)

(assert (=> b!851002 (= e!560057 (and tp!268012 (inv!11665 (tag!1984 (h!14585 rules!2621))) (inv!11668 (transformation!1722 (h!14585 rules!2621))) e!560065))))

(declare-fun tp!268018 () Bool)

(declare-fun b!851003 () Bool)

(assert (=> b!851003 (= e!560066 (and (inv!21 (value!55776 separatorToken!297)) e!560055 tp!268018))))

(declare-fun b!851004 () Bool)

(declare-fun res!388937 () Bool)

(assert (=> b!851004 (=> (not res!388937) (not e!560058))))

(assert (=> b!851004 (= res!388937 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 l!5107))))

(declare-fun b!851005 () Bool)

(declare-fun res!388938 () Bool)

(assert (=> b!851005 (=> (not res!388938) (not e!560058))))

(declare-fun rulesProduceIndividualToken!588 (LexerInterface!1524 List!9200 Token!3110) Bool)

(assert (=> b!851005 (= res!388938 (rulesProduceIndividualToken!588 thiss!20117 rules!2621 separatorToken!297))))

(assert (= (and start!76174 res!388932) b!850987))

(assert (= (and b!850987 res!388939) b!851000))

(assert (= (and b!851000 res!388933) b!851004))

(assert (= (and b!851004 res!388937) b!851005))

(assert (= (and b!851005 res!388938) b!850993))

(assert (= (and b!850993 res!388940) b!850996))

(assert (= (and b!850996 res!388936) b!851001))

(assert (= (and b!851001 res!388935) b!850997))

(assert (= (and b!850997 (not res!388934)) b!850988))

(assert (= b!851002 b!850995))

(assert (= b!850990 b!851002))

(assert (= (and start!76174 ((_ is Cons!9184) rules!2621)) b!850990))

(assert (= b!850989 b!850998))

(assert (= b!850992 b!850989))

(assert (= b!850994 b!850992))

(assert (= (and start!76174 ((_ is Cons!9185) l!5107)) b!850994))

(assert (= b!850991 b!850999))

(assert (= b!851003 b!850991))

(assert (= start!76174 b!851003))

(declare-fun m!1090015 () Bool)

(assert (=> b!850997 m!1090015))

(declare-fun m!1090017 () Bool)

(assert (=> b!850997 m!1090017))

(declare-fun m!1090019 () Bool)

(assert (=> b!850997 m!1090019))

(declare-fun m!1090021 () Bool)

(assert (=> b!850991 m!1090021))

(declare-fun m!1090023 () Bool)

(assert (=> b!850991 m!1090023))

(declare-fun m!1090025 () Bool)

(assert (=> b!851003 m!1090025))

(declare-fun m!1090027 () Bool)

(assert (=> b!851000 m!1090027))

(declare-fun m!1090029 () Bool)

(assert (=> b!851002 m!1090029))

(declare-fun m!1090031 () Bool)

(assert (=> b!851002 m!1090031))

(declare-fun m!1090033 () Bool)

(assert (=> b!850988 m!1090033))

(assert (=> b!850988 m!1090033))

(declare-fun m!1090035 () Bool)

(assert (=> b!850988 m!1090035))

(declare-fun m!1090037 () Bool)

(assert (=> b!851001 m!1090037))

(declare-fun m!1090039 () Bool)

(assert (=> b!850992 m!1090039))

(declare-fun m!1090041 () Bool)

(assert (=> start!76174 m!1090041))

(declare-fun m!1090043 () Bool)

(assert (=> b!850994 m!1090043))

(declare-fun m!1090045 () Bool)

(assert (=> b!850996 m!1090045))

(declare-fun m!1090047 () Bool)

(assert (=> b!850989 m!1090047))

(declare-fun m!1090049 () Bool)

(assert (=> b!850989 m!1090049))

(declare-fun m!1090051 () Bool)

(assert (=> b!851004 m!1090051))

(declare-fun m!1090053 () Bool)

(assert (=> b!851005 m!1090053))

(declare-fun m!1090055 () Bool)

(assert (=> b!850987 m!1090055))

(check-sat (not b!850994) b_and!74661 (not b_next!25777) (not b!850996) (not b!851005) (not b_next!25769) b_and!74671 (not start!76174) b_and!74663 b_and!74669 (not b_next!25775) (not b_next!25779) (not b!851002) (not b!851003) b_and!74665 (not b!850988) (not b!851000) b_and!74667 (not b!850990) (not b!851001) (not b_next!25771) (not b_next!25773) (not b!850992) (not b!850997) (not b!850989) (not b!851004) (not b!850987) (not b!850991))
(check-sat b_and!74665 b_and!74661 (not b_next!25777) (not b_next!25769) b_and!74671 b_and!74663 b_and!74669 (not b_next!25775) (not b_next!25779) b_and!74667 (not b_next!25771) (not b_next!25773))
(get-model)

(declare-fun d!265645 () Bool)

(declare-fun lt!322558 () Bool)

(declare-fun e!560086 () Bool)

(assert (=> d!265645 (= lt!322558 e!560086)))

(declare-fun res!388963 () Bool)

(assert (=> d!265645 (=> (not res!388963) (not e!560086))))

(declare-fun list!3605 (BalanceConc!6100) List!9201)

(declare-datatypes ((tuple2!10378 0))(
  ( (tuple2!10379 (_1!6015 BalanceConc!6100) (_2!6015 BalanceConc!6098)) )
))
(declare-fun lex!617 (LexerInterface!1524 List!9200 BalanceConc!6098) tuple2!10378)

(declare-fun print!554 (LexerInterface!1524 BalanceConc!6100) BalanceConc!6098)

(declare-fun singletonSeq!538 (Token!3110) BalanceConc!6100)

(assert (=> d!265645 (= res!388963 (= (list!3605 (_1!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297))))) (list!3605 (singletonSeq!538 separatorToken!297))))))

(declare-fun e!560087 () Bool)

(assert (=> d!265645 (= lt!322558 e!560087)))

(declare-fun res!388962 () Bool)

(assert (=> d!265645 (=> (not res!388962) (not e!560087))))

(declare-fun lt!322559 () tuple2!10378)

(declare-fun size!7653 (BalanceConc!6100) Int)

(assert (=> d!265645 (= res!388962 (= (size!7653 (_1!6015 lt!322559)) 1))))

(assert (=> d!265645 (= lt!322559 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297))))))

(assert (=> d!265645 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265645 (= (rulesProduceIndividualToken!588 thiss!20117 rules!2621 separatorToken!297) lt!322558)))

(declare-fun b!851022 () Bool)

(declare-fun res!388961 () Bool)

(assert (=> b!851022 (=> (not res!388961) (not e!560087))))

(declare-fun apply!1888 (BalanceConc!6100 Int) Token!3110)

(assert (=> b!851022 (= res!388961 (= (apply!1888 (_1!6015 lt!322559) 0) separatorToken!297))))

(declare-fun b!851023 () Bool)

(declare-fun isEmpty!5429 (BalanceConc!6098) Bool)

(assert (=> b!851023 (= e!560087 (isEmpty!5429 (_2!6015 lt!322559)))))

(declare-fun b!851024 () Bool)

(assert (=> b!851024 (= e!560086 (isEmpty!5429 (_2!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297))))))))

(assert (= (and d!265645 res!388962) b!851022))

(assert (= (and b!851022 res!388961) b!851023))

(assert (= (and d!265645 res!388963) b!851024))

(declare-fun m!1090061 () Bool)

(assert (=> d!265645 m!1090061))

(declare-fun m!1090063 () Bool)

(assert (=> d!265645 m!1090063))

(declare-fun m!1090065 () Bool)

(assert (=> d!265645 m!1090065))

(declare-fun m!1090067 () Bool)

(assert (=> d!265645 m!1090067))

(assert (=> d!265645 m!1090063))

(declare-fun m!1090069 () Bool)

(assert (=> d!265645 m!1090069))

(assert (=> d!265645 m!1090055))

(assert (=> d!265645 m!1090065))

(declare-fun m!1090071 () Bool)

(assert (=> d!265645 m!1090071))

(assert (=> d!265645 m!1090063))

(declare-fun m!1090073 () Bool)

(assert (=> b!851022 m!1090073))

(declare-fun m!1090075 () Bool)

(assert (=> b!851023 m!1090075))

(assert (=> b!851024 m!1090063))

(assert (=> b!851024 m!1090063))

(assert (=> b!851024 m!1090065))

(assert (=> b!851024 m!1090065))

(assert (=> b!851024 m!1090071))

(declare-fun m!1090077 () Bool)

(assert (=> b!851024 m!1090077))

(assert (=> b!851005 d!265645))

(declare-fun d!265651 () Bool)

(declare-fun res!388968 () Bool)

(declare-fun e!560092 () Bool)

(assert (=> d!265651 (=> res!388968 e!560092)))

(assert (=> d!265651 (= res!388968 ((_ is Nil!9185) l!5107))))

(assert (=> d!265651 (= (forall!2163 l!5107 lambda!25430) e!560092)))

(declare-fun b!851029 () Bool)

(declare-fun e!560093 () Bool)

(assert (=> b!851029 (= e!560092 e!560093)))

(declare-fun res!388969 () Bool)

(assert (=> b!851029 (=> (not res!388969) (not e!560093))))

(declare-fun dynLambda!4277 (Int Token!3110) Bool)

(assert (=> b!851029 (= res!388969 (dynLambda!4277 lambda!25430 (h!14586 l!5107)))))

(declare-fun b!851030 () Bool)

(assert (=> b!851030 (= e!560093 (forall!2163 (t!95609 l!5107) lambda!25430))))

(assert (= (and d!265651 (not res!388968)) b!851029))

(assert (= (and b!851029 res!388969) b!851030))

(declare-fun b_lambda!28361 () Bool)

(assert (=> (not b_lambda!28361) (not b!851029)))

(declare-fun m!1090079 () Bool)

(assert (=> b!851029 m!1090079))

(declare-fun m!1090081 () Bool)

(assert (=> b!851030 m!1090081))

(assert (=> b!850996 d!265651))

(declare-fun d!265653 () Bool)

(assert (=> d!265653 (= (isEmpty!5427 rules!2621) ((_ is Nil!9184) rules!2621))))

(assert (=> b!850987 d!265653))

(declare-fun d!265655 () Bool)

(declare-fun res!388974 () Bool)

(declare-fun e!560096 () Bool)

(assert (=> d!265655 (=> (not res!388974) (not e!560096))))

(declare-fun isEmpty!5430 (List!9199) Bool)

(assert (=> d!265655 (= res!388974 (not (isEmpty!5430 (originalCharacters!2278 separatorToken!297))))))

(assert (=> d!265655 (= (inv!11669 separatorToken!297) e!560096)))

(declare-fun b!851035 () Bool)

(declare-fun res!388975 () Bool)

(assert (=> b!851035 (=> (not res!388975) (not e!560096))))

(declare-fun list!3606 (BalanceConc!6098) List!9199)

(declare-fun dynLambda!4278 (Int TokenValue!1788) BalanceConc!6098)

(assert (=> b!851035 (= res!388975 (= (originalCharacters!2278 separatorToken!297) (list!3606 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))))))

(declare-fun b!851036 () Bool)

(declare-fun size!7655 (List!9199) Int)

(assert (=> b!851036 (= e!560096 (= (size!7651 separatorToken!297) (size!7655 (originalCharacters!2278 separatorToken!297))))))

(assert (= (and d!265655 res!388974) b!851035))

(assert (= (and b!851035 res!388975) b!851036))

(declare-fun b_lambda!28363 () Bool)

(assert (=> (not b_lambda!28363) (not b!851035)))

(declare-fun t!95614 () Bool)

(declare-fun tb!59777 () Bool)

(assert (=> (and b!850998 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) t!95614) tb!59777))

(declare-fun b!851041 () Bool)

(declare-fun e!560099 () Bool)

(declare-fun tp!268023 () Bool)

(declare-fun inv!11672 (Conc!3042) Bool)

(assert (=> b!851041 (= e!560099 (and (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))) tp!268023))))

(declare-fun result!69238 () Bool)

(declare-fun inv!11673 (BalanceConc!6098) Bool)

(assert (=> tb!59777 (= result!69238 (and (inv!11673 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))) e!560099))))

(assert (= tb!59777 b!851041))

(declare-fun m!1090083 () Bool)

(assert (=> b!851041 m!1090083))

(declare-fun m!1090085 () Bool)

(assert (=> tb!59777 m!1090085))

(assert (=> b!851035 t!95614))

(declare-fun b_and!74673 () Bool)

(assert (= b_and!74663 (and (=> t!95614 result!69238) b_and!74673)))

(declare-fun t!95616 () Bool)

(declare-fun tb!59779 () Bool)

(assert (=> (and b!850999 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) t!95616) tb!59779))

(declare-fun result!69242 () Bool)

(assert (= result!69242 result!69238))

(assert (=> b!851035 t!95616))

(declare-fun b_and!74675 () Bool)

(assert (= b_and!74667 (and (=> t!95616 result!69242) b_and!74675)))

(declare-fun tb!59781 () Bool)

(declare-fun t!95618 () Bool)

(assert (=> (and b!850995 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) t!95618) tb!59781))

(declare-fun result!69244 () Bool)

(assert (= result!69244 result!69238))

(assert (=> b!851035 t!95618))

(declare-fun b_and!74677 () Bool)

(assert (= b_and!74671 (and (=> t!95618 result!69244) b_and!74677)))

(declare-fun m!1090087 () Bool)

(assert (=> d!265655 m!1090087))

(declare-fun m!1090089 () Bool)

(assert (=> b!851035 m!1090089))

(assert (=> b!851035 m!1090089))

(declare-fun m!1090091 () Bool)

(assert (=> b!851035 m!1090091))

(declare-fun m!1090093 () Bool)

(assert (=> b!851036 m!1090093))

(assert (=> start!76174 d!265655))

(declare-fun bs!231240 () Bool)

(declare-fun d!265657 () Bool)

(assert (= bs!231240 (and d!265657 b!850996)))

(declare-fun lambda!25437 () Int)

(assert (=> bs!231240 (not (= lambda!25437 lambda!25430))))

(declare-fun b!851151 () Bool)

(declare-fun e!560178 () Bool)

(assert (=> b!851151 (= e!560178 true)))

(declare-fun b!851150 () Bool)

(declare-fun e!560177 () Bool)

(assert (=> b!851150 (= e!560177 e!560178)))

(declare-fun b!851149 () Bool)

(declare-fun e!560176 () Bool)

(assert (=> b!851149 (= e!560176 e!560177)))

(assert (=> d!265657 e!560176))

(assert (= b!851150 b!851151))

(assert (= b!851149 b!851150))

(assert (= (and d!265657 ((_ is Cons!9184) rules!2621)) b!851149))

(declare-fun order!5883 () Int)

(declare-fun order!5885 () Int)

(declare-fun dynLambda!4279 (Int Int) Int)

(declare-fun dynLambda!4280 (Int Int) Int)

(assert (=> b!851151 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25437))))

(declare-fun order!5887 () Int)

(declare-fun dynLambda!4281 (Int Int) Int)

(assert (=> b!851151 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25437))))

(assert (=> d!265657 true))

(declare-fun lt!322591 () Bool)

(assert (=> d!265657 (= lt!322591 (forall!2163 lt!322551 lambda!25437))))

(declare-fun e!560169 () Bool)

(assert (=> d!265657 (= lt!322591 e!560169)))

(declare-fun res!389018 () Bool)

(assert (=> d!265657 (=> res!389018 e!560169)))

(assert (=> d!265657 (= res!389018 (not ((_ is Cons!9185) lt!322551)))))

(assert (=> d!265657 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265657 (= (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 lt!322551) lt!322591)))

(declare-fun b!851139 () Bool)

(declare-fun e!560168 () Bool)

(assert (=> b!851139 (= e!560169 e!560168)))

(declare-fun res!389019 () Bool)

(assert (=> b!851139 (=> (not res!389019) (not e!560168))))

(assert (=> b!851139 (= res!389019 (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 lt!322551)))))

(declare-fun b!851140 () Bool)

(assert (=> b!851140 (= e!560168 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 lt!322551)))))

(assert (= (and d!265657 (not res!389018)) b!851139))

(assert (= (and b!851139 res!389019) b!851140))

(declare-fun m!1090197 () Bool)

(assert (=> d!265657 m!1090197))

(assert (=> d!265657 m!1090055))

(declare-fun m!1090199 () Bool)

(assert (=> b!851139 m!1090199))

(declare-fun m!1090201 () Bool)

(assert (=> b!851140 m!1090201))

(assert (=> b!850997 d!265657))

(declare-fun b!851174 () Bool)

(declare-fun e!560193 () Bool)

(declare-fun e!560194 () Bool)

(assert (=> b!851174 (= e!560193 e!560194)))

(declare-fun res!389029 () Bool)

(assert (=> b!851174 (=> res!389029 e!560194)))

(assert (=> b!851174 (= res!389029 (not ((_ is Cons!9185) l!5107)))))

(declare-fun b!851175 () Bool)

(declare-fun e!560195 () List!9201)

(assert (=> b!851175 (= e!560195 Nil!9185)))

(declare-fun d!265683 () Bool)

(declare-fun lt!322614 () List!9201)

(declare-fun printList!474 (LexerInterface!1524 List!9201) List!9199)

(declare-fun printWithSeparatorTokenList!32 (LexerInterface!1524 List!9201 Token!3110) List!9199)

(assert (=> d!265683 (= (printList!474 thiss!20117 lt!322614) (printWithSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!265683 (= lt!322614 e!560195)))

(declare-fun c!138174 () Bool)

(assert (=> d!265683 (= c!138174 ((_ is Cons!9185) l!5107))))

(assert (=> d!265683 e!560193))

(declare-fun res!389030 () Bool)

(assert (=> d!265683 (=> (not res!389030) (not e!560193))))

(assert (=> d!265683 (= res!389030 (isSeparator!1722 (rule!3145 separatorToken!297)))))

(assert (=> d!265683 (= (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297) lt!322614)))

(declare-fun b!851176 () Bool)

(declare-fun e!560196 () List!9199)

(declare-fun $colon$colon!87 (List!9201 Token!3110) List!9201)

(assert (=> b!851176 (= e!560194 (= (printList!474 thiss!20117 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297)) e!560196))))

(declare-fun c!138172 () Bool)

(declare-fun lt!322613 () List!9201)

(assert (=> b!851176 (= c!138172 ((_ is Cons!9185) lt!322613))))

(assert (=> b!851176 (= lt!322613 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!851177 () Bool)

(declare-fun ++!2380 (List!9199 List!9199) List!9199)

(declare-fun charsOf!991 (Token!3110) BalanceConc!6098)

(assert (=> b!851177 (= e!560196 (++!2380 (list!3606 (charsOf!991 (h!14586 lt!322613))) (printList!474 thiss!20117 (t!95609 lt!322613))))))

(declare-fun b!851178 () Bool)

(assert (=> b!851178 (= e!560196 Nil!9183)))

(declare-fun b!851179 () Bool)

(assert (=> b!851179 (= e!560195 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107)))))

(declare-fun lt!322615 () List!9199)

(assert (=> b!851179 (= lt!322615 (list!3606 (charsOf!991 (h!14586 l!5107))))))

(declare-fun lt!322612 () List!9199)

(assert (=> b!851179 (= lt!322612 (list!3606 (charsOf!991 separatorToken!297)))))

(declare-fun lt!322610 () List!9199)

(assert (=> b!851179 (= lt!322610 (printList!474 thiss!20117 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297)))))

(declare-fun lt!322608 () Unit!13689)

(declare-fun lemmaConcatAssociativity!749 (List!9199 List!9199 List!9199) Unit!13689)

(assert (=> b!851179 (= lt!322608 (lemmaConcatAssociativity!749 lt!322615 lt!322612 lt!322610))))

(assert (=> b!851179 (= (++!2380 (++!2380 lt!322615 lt!322612) lt!322610) (++!2380 lt!322615 (++!2380 lt!322612 lt!322610)))))

(declare-fun lt!322609 () Unit!13689)

(assert (=> b!851179 (= lt!322609 lt!322608)))

(declare-fun b!851180 () Bool)

(declare-fun res!389031 () Bool)

(assert (=> b!851180 (=> (not res!389031) (not e!560193))))

(declare-fun e!560191 () Bool)

(assert (=> b!851180 (= res!389031 e!560191)))

(declare-fun res!389028 () Bool)

(assert (=> b!851180 (=> res!389028 e!560191)))

(assert (=> b!851180 (= res!389028 (not ((_ is Cons!9185) l!5107)))))

(declare-fun b!851181 () Bool)

(declare-fun e!560192 () List!9199)

(assert (=> b!851181 (= e!560192 Nil!9183)))

(declare-fun b!851182 () Bool)

(assert (=> b!851182 (= e!560191 (= (printList!474 thiss!20117 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107))) e!560192))))

(declare-fun c!138173 () Bool)

(declare-fun lt!322611 () List!9201)

(assert (=> b!851182 (= c!138173 ((_ is Cons!9185) lt!322611))))

(assert (=> b!851182 (= lt!322611 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107)))))

(declare-fun b!851183 () Bool)

(assert (=> b!851183 (= e!560192 (++!2380 (list!3606 (charsOf!991 (h!14586 lt!322611))) (printList!474 thiss!20117 (t!95609 lt!322611))))))

(assert (= (and d!265683 res!389030) b!851180))

(assert (= (and b!851180 (not res!389028)) b!851182))

(assert (= (and b!851182 c!138173) b!851183))

(assert (= (and b!851182 (not c!138173)) b!851181))

(assert (= (and b!851180 res!389031) b!851174))

(assert (= (and b!851174 (not res!389029)) b!851176))

(assert (= (and b!851176 c!138172) b!851177))

(assert (= (and b!851176 (not c!138172)) b!851178))

(assert (= (and d!265683 c!138174) b!851179))

(assert (= (and d!265683 (not c!138174)) b!851175))

(declare-fun m!1090203 () Bool)

(assert (=> b!851182 m!1090203))

(assert (=> b!851182 m!1090203))

(declare-fun m!1090205 () Bool)

(assert (=> b!851182 m!1090205))

(assert (=> b!851182 m!1090205))

(declare-fun m!1090207 () Bool)

(assert (=> b!851182 m!1090207))

(assert (=> b!851182 m!1090207))

(declare-fun m!1090209 () Bool)

(assert (=> b!851182 m!1090209))

(assert (=> b!851176 m!1090203))

(assert (=> b!851176 m!1090203))

(assert (=> b!851176 m!1090205))

(assert (=> b!851176 m!1090205))

(declare-fun m!1090211 () Bool)

(assert (=> b!851176 m!1090211))

(declare-fun m!1090213 () Bool)

(assert (=> b!851177 m!1090213))

(assert (=> b!851177 m!1090213))

(declare-fun m!1090215 () Bool)

(assert (=> b!851177 m!1090215))

(declare-fun m!1090217 () Bool)

(assert (=> b!851177 m!1090217))

(assert (=> b!851177 m!1090215))

(assert (=> b!851177 m!1090217))

(declare-fun m!1090219 () Bool)

(assert (=> b!851177 m!1090219))

(declare-fun m!1090221 () Bool)

(assert (=> d!265683 m!1090221))

(declare-fun m!1090223 () Bool)

(assert (=> d!265683 m!1090223))

(declare-fun m!1090225 () Bool)

(assert (=> b!851183 m!1090225))

(assert (=> b!851183 m!1090225))

(declare-fun m!1090227 () Bool)

(assert (=> b!851183 m!1090227))

(declare-fun m!1090229 () Bool)

(assert (=> b!851183 m!1090229))

(assert (=> b!851183 m!1090227))

(assert (=> b!851183 m!1090229))

(declare-fun m!1090231 () Bool)

(assert (=> b!851183 m!1090231))

(assert (=> b!851179 m!1090203))

(declare-fun m!1090233 () Bool)

(assert (=> b!851179 m!1090233))

(declare-fun m!1090235 () Bool)

(assert (=> b!851179 m!1090235))

(declare-fun m!1090237 () Bool)

(assert (=> b!851179 m!1090237))

(assert (=> b!851179 m!1090203))

(declare-fun m!1090239 () Bool)

(assert (=> b!851179 m!1090239))

(assert (=> b!851179 m!1090205))

(assert (=> b!851179 m!1090207))

(declare-fun m!1090241 () Bool)

(assert (=> b!851179 m!1090241))

(declare-fun m!1090243 () Bool)

(assert (=> b!851179 m!1090243))

(declare-fun m!1090245 () Bool)

(assert (=> b!851179 m!1090245))

(assert (=> b!851179 m!1090243))

(assert (=> b!851179 m!1090241))

(declare-fun m!1090247 () Bool)

(assert (=> b!851179 m!1090247))

(assert (=> b!851179 m!1090203))

(assert (=> b!851179 m!1090205))

(assert (=> b!851179 m!1090233))

(declare-fun m!1090249 () Bool)

(assert (=> b!851179 m!1090249))

(assert (=> b!851179 m!1090237))

(declare-fun m!1090251 () Bool)

(assert (=> b!851179 m!1090251))

(assert (=> b!850997 d!265683))

(declare-fun d!265685 () Bool)

(assert (=> d!265685 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!322621 () Unit!13689)

(declare-fun choose!5026 (LexerInterface!1524 List!9200 List!9201 Token!3110) Unit!13689)

(assert (=> d!265685 (= lt!322621 (choose!5026 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!265685 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265685 (= (withSeparatorTokenListPreservesRulesProduceTokens!54 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!322621)))

(declare-fun bs!231245 () Bool)

(assert (= bs!231245 d!265685))

(assert (=> bs!231245 m!1090017))

(assert (=> bs!231245 m!1090017))

(declare-fun m!1090271 () Bool)

(assert (=> bs!231245 m!1090271))

(declare-fun m!1090273 () Bool)

(assert (=> bs!231245 m!1090273))

(assert (=> bs!231245 m!1090055))

(assert (=> b!850997 d!265685))

(declare-fun bs!231247 () Bool)

(declare-fun d!265699 () Bool)

(assert (= bs!231247 (and d!265699 b!850996)))

(declare-fun lambda!25447 () Int)

(assert (=> bs!231247 (not (= lambda!25447 lambda!25430))))

(declare-fun bs!231248 () Bool)

(assert (= bs!231248 (and d!265699 d!265657)))

(assert (=> bs!231248 (= lambda!25447 lambda!25437)))

(declare-fun b!851262 () Bool)

(declare-fun e!560257 () Bool)

(assert (=> b!851262 (= e!560257 true)))

(declare-fun b!851261 () Bool)

(declare-fun e!560256 () Bool)

(assert (=> b!851261 (= e!560256 e!560257)))

(declare-fun b!851260 () Bool)

(declare-fun e!560255 () Bool)

(assert (=> b!851260 (= e!560255 e!560256)))

(assert (=> d!265699 e!560255))

(assert (= b!851261 b!851262))

(assert (= b!851260 b!851261))

(assert (= (and d!265699 ((_ is Cons!9184) rules!2621)) b!851260))

(assert (=> b!851262 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25447))))

(assert (=> b!851262 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25447))))

(assert (=> d!265699 true))

(declare-fun e!560254 () Bool)

(assert (=> d!265699 e!560254))

(declare-fun res!389050 () Bool)

(assert (=> d!265699 (=> (not res!389050) (not e!560254))))

(declare-fun lt!322630 () Bool)

(assert (=> d!265699 (= res!389050 (= lt!322630 (forall!2163 (list!3605 (seqFromList!1526 lt!322551)) lambda!25447)))))

(declare-fun forall!2165 (BalanceConc!6100 Int) Bool)

(assert (=> d!265699 (= lt!322630 (forall!2165 (seqFromList!1526 lt!322551) lambda!25447))))

(assert (=> d!265699 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265699 (= (rulesProduceEachTokenIndividually!611 thiss!20117 rules!2621 (seqFromList!1526 lt!322551)) lt!322630)))

(declare-fun b!851259 () Bool)

(assert (=> b!851259 (= e!560254 (= lt!322630 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (list!3605 (seqFromList!1526 lt!322551)))))))

(assert (= (and d!265699 res!389050) b!851259))

(assert (=> d!265699 m!1090033))

(declare-fun m!1090317 () Bool)

(assert (=> d!265699 m!1090317))

(assert (=> d!265699 m!1090317))

(declare-fun m!1090319 () Bool)

(assert (=> d!265699 m!1090319))

(assert (=> d!265699 m!1090033))

(declare-fun m!1090321 () Bool)

(assert (=> d!265699 m!1090321))

(assert (=> d!265699 m!1090055))

(assert (=> b!851259 m!1090033))

(assert (=> b!851259 m!1090317))

(assert (=> b!851259 m!1090317))

(declare-fun m!1090323 () Bool)

(assert (=> b!851259 m!1090323))

(assert (=> b!850988 d!265699))

(declare-fun d!265705 () Bool)

(declare-fun fromListB!673 (List!9201) BalanceConc!6100)

(assert (=> d!265705 (= (seqFromList!1526 lt!322551) (fromListB!673 lt!322551))))

(declare-fun bs!231249 () Bool)

(assert (= bs!231249 d!265705))

(declare-fun m!1090325 () Bool)

(assert (=> bs!231249 m!1090325))

(assert (=> b!850988 d!265705))

(declare-fun d!265707 () Bool)

(declare-fun res!389053 () Bool)

(declare-fun e!560260 () Bool)

(assert (=> d!265707 (=> (not res!389053) (not e!560260))))

(declare-fun rulesValid!601 (LexerInterface!1524 List!9200) Bool)

(assert (=> d!265707 (= res!389053 (rulesValid!601 thiss!20117 rules!2621))))

(assert (=> d!265707 (= (rulesInvariant!1400 thiss!20117 rules!2621) e!560260)))

(declare-fun b!851265 () Bool)

(declare-datatypes ((List!9203 0))(
  ( (Nil!9187) (Cons!9187 (h!14588 String!10838) (t!95665 List!9203)) )
))
(declare-fun noDuplicateTag!601 (LexerInterface!1524 List!9200 List!9203) Bool)

(assert (=> b!851265 (= e!560260 (noDuplicateTag!601 thiss!20117 rules!2621 Nil!9187))))

(assert (= (and d!265707 res!389053) b!851265))

(declare-fun m!1090327 () Bool)

(assert (=> d!265707 m!1090327))

(declare-fun m!1090329 () Bool)

(assert (=> b!851265 m!1090329))

(assert (=> b!851000 d!265707))

(declare-fun d!265709 () Bool)

(assert (=> d!265709 (= (inv!11665 (tag!1984 (rule!3145 (h!14586 l!5107)))) (= (mod (str.len (value!55775 (tag!1984 (rule!3145 (h!14586 l!5107))))) 2) 0))))

(assert (=> b!850989 d!265709))

(declare-fun d!265711 () Bool)

(declare-fun res!389056 () Bool)

(declare-fun e!560263 () Bool)

(assert (=> d!265711 (=> (not res!389056) (not e!560263))))

(declare-fun semiInverseModEq!670 (Int Int) Bool)

(assert (=> d!265711 (= res!389056 (semiInverseModEq!670 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107))))))))

(assert (=> d!265711 (= (inv!11668 (transformation!1722 (rule!3145 (h!14586 l!5107)))) e!560263)))

(declare-fun b!851268 () Bool)

(declare-fun equivClasses!637 (Int Int) Bool)

(assert (=> b!851268 (= e!560263 (equivClasses!637 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107))))))))

(assert (= (and d!265711 res!389056) b!851268))

(declare-fun m!1090331 () Bool)

(assert (=> d!265711 m!1090331))

(declare-fun m!1090333 () Bool)

(assert (=> b!851268 m!1090333))

(assert (=> b!850989 d!265711))

(declare-fun d!265713 () Bool)

(assert (=> d!265713 (= (inv!11665 (tag!1984 (h!14585 rules!2621))) (= (mod (str.len (value!55775 (tag!1984 (h!14585 rules!2621)))) 2) 0))))

(assert (=> b!851002 d!265713))

(declare-fun d!265715 () Bool)

(declare-fun res!389057 () Bool)

(declare-fun e!560264 () Bool)

(assert (=> d!265715 (=> (not res!389057) (not e!560264))))

(assert (=> d!265715 (= res!389057 (semiInverseModEq!670 (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toValue!2759 (transformation!1722 (h!14585 rules!2621)))))))

(assert (=> d!265715 (= (inv!11668 (transformation!1722 (h!14585 rules!2621))) e!560264)))

(declare-fun b!851269 () Bool)

(assert (=> b!851269 (= e!560264 (equivClasses!637 (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toValue!2759 (transformation!1722 (h!14585 rules!2621)))))))

(assert (= (and d!265715 res!389057) b!851269))

(declare-fun m!1090335 () Bool)

(assert (=> d!265715 m!1090335))

(declare-fun m!1090337 () Bool)

(assert (=> b!851269 m!1090337))

(assert (=> b!851002 d!265715))

(declare-fun d!265717 () Bool)

(assert (=> d!265717 (= (inv!11665 (tag!1984 (rule!3145 separatorToken!297))) (= (mod (str.len (value!55775 (tag!1984 (rule!3145 separatorToken!297)))) 2) 0))))

(assert (=> b!850991 d!265717))

(declare-fun d!265719 () Bool)

(declare-fun res!389058 () Bool)

(declare-fun e!560265 () Bool)

(assert (=> d!265719 (=> (not res!389058) (not e!560265))))

(assert (=> d!265719 (= res!389058 (semiInverseModEq!670 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))))))

(assert (=> d!265719 (= (inv!11668 (transformation!1722 (rule!3145 separatorToken!297))) e!560265)))

(declare-fun b!851270 () Bool)

(assert (=> b!851270 (= e!560265 (equivClasses!637 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))))))

(assert (= (and d!265719 res!389058) b!851270))

(declare-fun m!1090339 () Bool)

(assert (=> d!265719 m!1090339))

(declare-fun m!1090341 () Bool)

(assert (=> b!851270 m!1090341))

(assert (=> b!850991 d!265719))

(declare-fun d!265721 () Bool)

(declare-fun res!389063 () Bool)

(declare-fun e!560270 () Bool)

(assert (=> d!265721 (=> res!389063 e!560270)))

(assert (=> d!265721 (= res!389063 (not ((_ is Cons!9184) rules!2621)))))

(assert (=> d!265721 (= (sepAndNonSepRulesDisjointChars!522 rules!2621 rules!2621) e!560270)))

(declare-fun b!851275 () Bool)

(declare-fun e!560271 () Bool)

(assert (=> b!851275 (= e!560270 e!560271)))

(declare-fun res!389064 () Bool)

(assert (=> b!851275 (=> (not res!389064) (not e!560271))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!237 (Rule!3244 List!9200) Bool)

(assert (=> b!851275 (= res!389064 (ruleDisjointCharsFromAllFromOtherType!237 (h!14585 rules!2621) rules!2621))))

(declare-fun b!851276 () Bool)

(assert (=> b!851276 (= e!560271 (sepAndNonSepRulesDisjointChars!522 rules!2621 (t!95608 rules!2621)))))

(assert (= (and d!265721 (not res!389063)) b!851275))

(assert (= (and b!851275 res!389064) b!851276))

(declare-fun m!1090343 () Bool)

(assert (=> b!851275 m!1090343))

(declare-fun m!1090345 () Bool)

(assert (=> b!851276 m!1090345))

(assert (=> b!851001 d!265721))

(declare-fun d!265723 () Bool)

(declare-fun c!138180 () Bool)

(assert (=> d!265723 (= c!138180 ((_ is IntegerValue!5364) (value!55776 separatorToken!297)))))

(declare-fun e!560278 () Bool)

(assert (=> d!265723 (= (inv!21 (value!55776 separatorToken!297)) e!560278)))

(declare-fun b!851287 () Bool)

(declare-fun e!560279 () Bool)

(declare-fun inv!15 (TokenValue!1788) Bool)

(assert (=> b!851287 (= e!560279 (inv!15 (value!55776 separatorToken!297)))))

(declare-fun b!851288 () Bool)

(declare-fun e!560280 () Bool)

(assert (=> b!851288 (= e!560278 e!560280)))

(declare-fun c!138179 () Bool)

(assert (=> b!851288 (= c!138179 ((_ is IntegerValue!5365) (value!55776 separatorToken!297)))))

(declare-fun b!851289 () Bool)

(declare-fun res!389067 () Bool)

(assert (=> b!851289 (=> res!389067 e!560279)))

(assert (=> b!851289 (= res!389067 (not ((_ is IntegerValue!5366) (value!55776 separatorToken!297))))))

(assert (=> b!851289 (= e!560280 e!560279)))

(declare-fun b!851290 () Bool)

(declare-fun inv!17 (TokenValue!1788) Bool)

(assert (=> b!851290 (= e!560280 (inv!17 (value!55776 separatorToken!297)))))

(declare-fun b!851291 () Bool)

(declare-fun inv!16 (TokenValue!1788) Bool)

(assert (=> b!851291 (= e!560278 (inv!16 (value!55776 separatorToken!297)))))

(assert (= (and d!265723 c!138180) b!851291))

(assert (= (and d!265723 (not c!138180)) b!851288))

(assert (= (and b!851288 c!138179) b!851290))

(assert (= (and b!851288 (not c!138179)) b!851289))

(assert (= (and b!851289 (not res!389067)) b!851287))

(declare-fun m!1090347 () Bool)

(assert (=> b!851287 m!1090347))

(declare-fun m!1090349 () Bool)

(assert (=> b!851290 m!1090349))

(declare-fun m!1090351 () Bool)

(assert (=> b!851291 m!1090351))

(assert (=> b!851003 d!265723))

(declare-fun d!265725 () Bool)

(declare-fun c!138182 () Bool)

(assert (=> d!265725 (= c!138182 ((_ is IntegerValue!5364) (value!55776 (h!14586 l!5107))))))

(declare-fun e!560281 () Bool)

(assert (=> d!265725 (= (inv!21 (value!55776 (h!14586 l!5107))) e!560281)))

(declare-fun b!851292 () Bool)

(declare-fun e!560282 () Bool)

(assert (=> b!851292 (= e!560282 (inv!15 (value!55776 (h!14586 l!5107))))))

(declare-fun b!851293 () Bool)

(declare-fun e!560283 () Bool)

(assert (=> b!851293 (= e!560281 e!560283)))

(declare-fun c!138181 () Bool)

(assert (=> b!851293 (= c!138181 ((_ is IntegerValue!5365) (value!55776 (h!14586 l!5107))))))

(declare-fun b!851294 () Bool)

(declare-fun res!389068 () Bool)

(assert (=> b!851294 (=> res!389068 e!560282)))

(assert (=> b!851294 (= res!389068 (not ((_ is IntegerValue!5366) (value!55776 (h!14586 l!5107)))))))

(assert (=> b!851294 (= e!560283 e!560282)))

(declare-fun b!851295 () Bool)

(assert (=> b!851295 (= e!560283 (inv!17 (value!55776 (h!14586 l!5107))))))

(declare-fun b!851296 () Bool)

(assert (=> b!851296 (= e!560281 (inv!16 (value!55776 (h!14586 l!5107))))))

(assert (= (and d!265725 c!138182) b!851296))

(assert (= (and d!265725 (not c!138182)) b!851293))

(assert (= (and b!851293 c!138181) b!851295))

(assert (= (and b!851293 (not c!138181)) b!851294))

(assert (= (and b!851294 (not res!389068)) b!851292))

(declare-fun m!1090353 () Bool)

(assert (=> b!851292 m!1090353))

(declare-fun m!1090355 () Bool)

(assert (=> b!851295 m!1090355))

(declare-fun m!1090357 () Bool)

(assert (=> b!851296 m!1090357))

(assert (=> b!850992 d!265725))

(declare-fun d!265727 () Bool)

(declare-fun res!389069 () Bool)

(declare-fun e!560284 () Bool)

(assert (=> d!265727 (=> (not res!389069) (not e!560284))))

(assert (=> d!265727 (= res!389069 (not (isEmpty!5430 (originalCharacters!2278 (h!14586 l!5107)))))))

(assert (=> d!265727 (= (inv!11669 (h!14586 l!5107)) e!560284)))

(declare-fun b!851297 () Bool)

(declare-fun res!389070 () Bool)

(assert (=> b!851297 (=> (not res!389070) (not e!560284))))

(assert (=> b!851297 (= res!389070 (= (originalCharacters!2278 (h!14586 l!5107)) (list!3606 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))))))

(declare-fun b!851298 () Bool)

(assert (=> b!851298 (= e!560284 (= (size!7651 (h!14586 l!5107)) (size!7655 (originalCharacters!2278 (h!14586 l!5107)))))))

(assert (= (and d!265727 res!389069) b!851297))

(assert (= (and b!851297 res!389070) b!851298))

(declare-fun b_lambda!28375 () Bool)

(assert (=> (not b_lambda!28375) (not b!851297)))

(declare-fun t!95652 () Bool)

(declare-fun tb!59803 () Bool)

(assert (=> (and b!850998 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) t!95652) tb!59803))

(declare-fun b!851299 () Bool)

(declare-fun e!560285 () Bool)

(declare-fun tp!268084 () Bool)

(assert (=> b!851299 (= e!560285 (and (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))) tp!268084))))

(declare-fun result!69276 () Bool)

(assert (=> tb!59803 (= result!69276 (and (inv!11673 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))) e!560285))))

(assert (= tb!59803 b!851299))

(declare-fun m!1090359 () Bool)

(assert (=> b!851299 m!1090359))

(declare-fun m!1090361 () Bool)

(assert (=> tb!59803 m!1090361))

(assert (=> b!851297 t!95652))

(declare-fun b_and!74699 () Bool)

(assert (= b_and!74673 (and (=> t!95652 result!69276) b_and!74699)))

(declare-fun t!95654 () Bool)

(declare-fun tb!59805 () Bool)

(assert (=> (and b!850999 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) t!95654) tb!59805))

(declare-fun result!69278 () Bool)

(assert (= result!69278 result!69276))

(assert (=> b!851297 t!95654))

(declare-fun b_and!74701 () Bool)

(assert (= b_and!74675 (and (=> t!95654 result!69278) b_and!74701)))

(declare-fun tb!59807 () Bool)

(declare-fun t!95656 () Bool)

(assert (=> (and b!850995 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) t!95656) tb!59807))

(declare-fun result!69280 () Bool)

(assert (= result!69280 result!69276))

(assert (=> b!851297 t!95656))

(declare-fun b_and!74703 () Bool)

(assert (= b_and!74677 (and (=> t!95656 result!69280) b_and!74703)))

(declare-fun m!1090363 () Bool)

(assert (=> d!265727 m!1090363))

(declare-fun m!1090365 () Bool)

(assert (=> b!851297 m!1090365))

(assert (=> b!851297 m!1090365))

(declare-fun m!1090367 () Bool)

(assert (=> b!851297 m!1090367))

(declare-fun m!1090369 () Bool)

(assert (=> b!851298 m!1090369))

(assert (=> b!850994 d!265727))

(declare-fun bs!231250 () Bool)

(declare-fun d!265729 () Bool)

(assert (= bs!231250 (and d!265729 b!850996)))

(declare-fun lambda!25448 () Int)

(assert (=> bs!231250 (not (= lambda!25448 lambda!25430))))

(declare-fun bs!231251 () Bool)

(assert (= bs!231251 (and d!265729 d!265657)))

(assert (=> bs!231251 (= lambda!25448 lambda!25437)))

(declare-fun bs!231252 () Bool)

(assert (= bs!231252 (and d!265729 d!265699)))

(assert (=> bs!231252 (= lambda!25448 lambda!25447)))

(declare-fun b!851304 () Bool)

(declare-fun e!560290 () Bool)

(assert (=> b!851304 (= e!560290 true)))

(declare-fun b!851303 () Bool)

(declare-fun e!560289 () Bool)

(assert (=> b!851303 (= e!560289 e!560290)))

(declare-fun b!851302 () Bool)

(declare-fun e!560288 () Bool)

(assert (=> b!851302 (= e!560288 e!560289)))

(assert (=> d!265729 e!560288))

(assert (= b!851303 b!851304))

(assert (= b!851302 b!851303))

(assert (= (and d!265729 ((_ is Cons!9184) rules!2621)) b!851302))

(assert (=> b!851304 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25448))))

(assert (=> b!851304 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25448))))

(assert (=> d!265729 true))

(declare-fun lt!322631 () Bool)

(assert (=> d!265729 (= lt!322631 (forall!2163 l!5107 lambda!25448))))

(declare-fun e!560287 () Bool)

(assert (=> d!265729 (= lt!322631 e!560287)))

(declare-fun res!389071 () Bool)

(assert (=> d!265729 (=> res!389071 e!560287)))

(assert (=> d!265729 (= res!389071 (not ((_ is Cons!9185) l!5107)))))

(assert (=> d!265729 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265729 (= (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 l!5107) lt!322631)))

(declare-fun b!851300 () Bool)

(declare-fun e!560286 () Bool)

(assert (=> b!851300 (= e!560287 e!560286)))

(declare-fun res!389072 () Bool)

(assert (=> b!851300 (=> (not res!389072) (not e!560286))))

(assert (=> b!851300 (= res!389072 (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 l!5107)))))

(declare-fun b!851301 () Bool)

(assert (=> b!851301 (= e!560286 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 l!5107)))))

(assert (= (and d!265729 (not res!389071)) b!851300))

(assert (= (and b!851300 res!389072) b!851301))

(declare-fun m!1090371 () Bool)

(assert (=> d!265729 m!1090371))

(assert (=> d!265729 m!1090055))

(declare-fun m!1090373 () Bool)

(assert (=> b!851300 m!1090373))

(declare-fun m!1090375 () Bool)

(assert (=> b!851301 m!1090375))

(assert (=> b!851004 d!265729))

(declare-fun b!851315 () Bool)

(declare-fun b_free!25725 () Bool)

(declare-fun b_next!25789 () Bool)

(assert (=> b!851315 (= b_free!25725 (not b_next!25789))))

(declare-fun tp!268096 () Bool)

(declare-fun b_and!74705 () Bool)

(assert (=> b!851315 (= tp!268096 b_and!74705)))

(declare-fun b_free!25727 () Bool)

(declare-fun b_next!25791 () Bool)

(assert (=> b!851315 (= b_free!25727 (not b_next!25791))))

(declare-fun t!95658 () Bool)

(declare-fun tb!59809 () Bool)

(assert (=> (and b!851315 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) t!95658) tb!59809))

(declare-fun result!69284 () Bool)

(assert (= result!69284 result!69238))

(assert (=> b!851035 t!95658))

(declare-fun t!95660 () Bool)

(declare-fun tb!59811 () Bool)

(assert (=> (and b!851315 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) t!95660) tb!59811))

(declare-fun result!69286 () Bool)

(assert (= result!69286 result!69276))

(assert (=> b!851297 t!95660))

(declare-fun tp!268095 () Bool)

(declare-fun b_and!74707 () Bool)

(assert (=> b!851315 (= tp!268095 (and (=> t!95658 result!69284) (=> t!95660 result!69286) b_and!74707))))

(declare-fun e!560301 () Bool)

(assert (=> b!851315 (= e!560301 (and tp!268096 tp!268095))))

(declare-fun tp!268093 () Bool)

(declare-fun e!560299 () Bool)

(declare-fun b!851314 () Bool)

(assert (=> b!851314 (= e!560299 (and tp!268093 (inv!11665 (tag!1984 (h!14585 (t!95608 rules!2621)))) (inv!11668 (transformation!1722 (h!14585 (t!95608 rules!2621)))) e!560301))))

(declare-fun b!851313 () Bool)

(declare-fun e!560302 () Bool)

(declare-fun tp!268094 () Bool)

(assert (=> b!851313 (= e!560302 (and e!560299 tp!268094))))

(assert (=> b!850990 (= tp!268009 e!560302)))

(assert (= b!851314 b!851315))

(assert (= b!851313 b!851314))

(assert (= (and b!850990 ((_ is Cons!9184) (t!95608 rules!2621))) b!851313))

(declare-fun m!1090377 () Bool)

(assert (=> b!851314 m!1090377))

(declare-fun m!1090379 () Bool)

(assert (=> b!851314 m!1090379))

(declare-fun b!851327 () Bool)

(declare-fun e!560305 () Bool)

(declare-fun tp!268111 () Bool)

(declare-fun tp!268107 () Bool)

(assert (=> b!851327 (= e!560305 (and tp!268111 tp!268107))))

(declare-fun b!851328 () Bool)

(declare-fun tp!268110 () Bool)

(assert (=> b!851328 (= e!560305 tp!268110)))

(declare-fun b!851329 () Bool)

(declare-fun tp!268109 () Bool)

(declare-fun tp!268108 () Bool)

(assert (=> b!851329 (= e!560305 (and tp!268109 tp!268108))))

(assert (=> b!850989 (= tp!268010 e!560305)))

(declare-fun b!851326 () Bool)

(declare-fun tp_is_empty!3973 () Bool)

(assert (=> b!851326 (= e!560305 tp_is_empty!3973)))

(assert (= (and b!850989 ((_ is ElementMatch!2155) (regex!1722 (rule!3145 (h!14586 l!5107))))) b!851326))

(assert (= (and b!850989 ((_ is Concat!3944) (regex!1722 (rule!3145 (h!14586 l!5107))))) b!851327))

(assert (= (and b!850989 ((_ is Star!2155) (regex!1722 (rule!3145 (h!14586 l!5107))))) b!851328))

(assert (= (and b!850989 ((_ is Union!2155) (regex!1722 (rule!3145 (h!14586 l!5107))))) b!851329))

(declare-fun b!851331 () Bool)

(declare-fun e!560306 () Bool)

(declare-fun tp!268116 () Bool)

(declare-fun tp!268112 () Bool)

(assert (=> b!851331 (= e!560306 (and tp!268116 tp!268112))))

(declare-fun b!851332 () Bool)

(declare-fun tp!268115 () Bool)

(assert (=> b!851332 (= e!560306 tp!268115)))

(declare-fun b!851333 () Bool)

(declare-fun tp!268114 () Bool)

(declare-fun tp!268113 () Bool)

(assert (=> b!851333 (= e!560306 (and tp!268114 tp!268113))))

(assert (=> b!851002 (= tp!268012 e!560306)))

(declare-fun b!851330 () Bool)

(assert (=> b!851330 (= e!560306 tp_is_empty!3973)))

(assert (= (and b!851002 ((_ is ElementMatch!2155) (regex!1722 (h!14585 rules!2621)))) b!851330))

(assert (= (and b!851002 ((_ is Concat!3944) (regex!1722 (h!14585 rules!2621)))) b!851331))

(assert (= (and b!851002 ((_ is Star!2155) (regex!1722 (h!14585 rules!2621)))) b!851332))

(assert (= (and b!851002 ((_ is Union!2155) (regex!1722 (h!14585 rules!2621)))) b!851333))

(declare-fun b!851335 () Bool)

(declare-fun e!560307 () Bool)

(declare-fun tp!268121 () Bool)

(declare-fun tp!268117 () Bool)

(assert (=> b!851335 (= e!560307 (and tp!268121 tp!268117))))

(declare-fun b!851336 () Bool)

(declare-fun tp!268120 () Bool)

(assert (=> b!851336 (= e!560307 tp!268120)))

(declare-fun b!851337 () Bool)

(declare-fun tp!268119 () Bool)

(declare-fun tp!268118 () Bool)

(assert (=> b!851337 (= e!560307 (and tp!268119 tp!268118))))

(assert (=> b!850991 (= tp!268019 e!560307)))

(declare-fun b!851334 () Bool)

(assert (=> b!851334 (= e!560307 tp_is_empty!3973)))

(assert (= (and b!850991 ((_ is ElementMatch!2155) (regex!1722 (rule!3145 separatorToken!297)))) b!851334))

(assert (= (and b!850991 ((_ is Concat!3944) (regex!1722 (rule!3145 separatorToken!297)))) b!851335))

(assert (= (and b!850991 ((_ is Star!2155) (regex!1722 (rule!3145 separatorToken!297)))) b!851336))

(assert (= (and b!850991 ((_ is Union!2155) (regex!1722 (rule!3145 separatorToken!297)))) b!851337))

(declare-fun b!851342 () Bool)

(declare-fun e!560310 () Bool)

(declare-fun tp!268124 () Bool)

(assert (=> b!851342 (= e!560310 (and tp_is_empty!3973 tp!268124))))

(assert (=> b!851003 (= tp!268018 e!560310)))

(assert (= (and b!851003 ((_ is Cons!9183) (originalCharacters!2278 separatorToken!297))) b!851342))

(declare-fun b!851343 () Bool)

(declare-fun e!560311 () Bool)

(declare-fun tp!268125 () Bool)

(assert (=> b!851343 (= e!560311 (and tp_is_empty!3973 tp!268125))))

(assert (=> b!850992 (= tp!268014 e!560311)))

(assert (= (and b!850992 ((_ is Cons!9183) (originalCharacters!2278 (h!14586 l!5107)))) b!851343))

(declare-fun b!851357 () Bool)

(declare-fun b_free!25729 () Bool)

(declare-fun b_next!25793 () Bool)

(assert (=> b!851357 (= b_free!25729 (not b_next!25793))))

(declare-fun tp!268137 () Bool)

(declare-fun b_and!74709 () Bool)

(assert (=> b!851357 (= tp!268137 b_and!74709)))

(declare-fun b_free!25731 () Bool)

(declare-fun b_next!25795 () Bool)

(assert (=> b!851357 (= b_free!25731 (not b_next!25795))))

(declare-fun t!95662 () Bool)

(declare-fun tb!59813 () Bool)

(assert (=> (and b!851357 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) t!95662) tb!59813))

(declare-fun result!69294 () Bool)

(assert (= result!69294 result!69238))

(assert (=> b!851035 t!95662))

(declare-fun t!95664 () Bool)

(declare-fun tb!59815 () Bool)

(assert (=> (and b!851357 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) t!95664) tb!59815))

(declare-fun result!69296 () Bool)

(assert (= result!69296 result!69276))

(assert (=> b!851297 t!95664))

(declare-fun tp!268136 () Bool)

(declare-fun b_and!74711 () Bool)

(assert (=> b!851357 (= tp!268136 (and (=> t!95662 result!69294) (=> t!95664 result!69296) b_and!74711))))

(declare-fun e!560327 () Bool)

(assert (=> b!850994 (= tp!268011 e!560327)))

(declare-fun b!851356 () Bool)

(declare-fun e!560329 () Bool)

(declare-fun tp!268140 () Bool)

(declare-fun e!560328 () Bool)

(assert (=> b!851356 (= e!560329 (and tp!268140 (inv!11665 (tag!1984 (rule!3145 (h!14586 (t!95609 l!5107))))) (inv!11668 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) e!560328))))

(declare-fun tp!268138 () Bool)

(declare-fun e!560325 () Bool)

(declare-fun b!851354 () Bool)

(assert (=> b!851354 (= e!560327 (and (inv!11669 (h!14586 (t!95609 l!5107))) e!560325 tp!268138))))

(declare-fun tp!268139 () Bool)

(declare-fun b!851355 () Bool)

(assert (=> b!851355 (= e!560325 (and (inv!21 (value!55776 (h!14586 (t!95609 l!5107)))) e!560329 tp!268139))))

(assert (=> b!851357 (= e!560328 (and tp!268137 tp!268136))))

(assert (= b!851356 b!851357))

(assert (= b!851355 b!851356))

(assert (= b!851354 b!851355))

(assert (= (and b!850994 ((_ is Cons!9185) (t!95609 l!5107))) b!851354))

(declare-fun m!1090381 () Bool)

(assert (=> b!851356 m!1090381))

(declare-fun m!1090383 () Bool)

(assert (=> b!851356 m!1090383))

(declare-fun m!1090385 () Bool)

(assert (=> b!851354 m!1090385))

(declare-fun m!1090387 () Bool)

(assert (=> b!851355 m!1090387))

(declare-fun b_lambda!28377 () Bool)

(assert (= b_lambda!28361 (or b!850996 b_lambda!28377)))

(declare-fun bs!231253 () Bool)

(declare-fun d!265731 () Bool)

(assert (= bs!231253 (and d!265731 b!850996)))

(assert (=> bs!231253 (= (dynLambda!4277 lambda!25430 (h!14586 l!5107)) (not (isSeparator!1722 (rule!3145 (h!14586 l!5107)))))))

(assert (=> b!851029 d!265731))

(declare-fun b_lambda!28379 () Bool)

(assert (= b_lambda!28363 (or (and b!850998 b_free!25707 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!850995 b_free!25715 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!850999 b_free!25711) (and b!851357 b_free!25731 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!851315 b_free!25727 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) b_lambda!28379)))

(declare-fun b_lambda!28381 () Bool)

(assert (= b_lambda!28375 (or (and b!851315 b_free!25727 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!851357 b_free!25731 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!850998 b_free!25707) (and b!850999 b_free!25711 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!850995 b_free!25715 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) b_lambda!28381)))

(check-sat (not b!851295) (not d!265657) b_and!74703 b_and!74665 (not b!851023) (not tb!59777) (not b_lambda!28381) (not d!265715) (not b!851331) b_and!74669 b_and!74705 (not b!851332) (not b!851183) (not b!851149) (not b!851176) (not b!851313) (not b_next!25775) (not b!851260) (not b_next!25779) (not b!851265) (not b!851275) (not b!851269) (not b!851035) b_and!74661 (not d!265699) (not b!851335) (not b_next!25791) (not b!851030) (not b!851328) tp_is_empty!3973 (not b!851337) (not b_next!25777) (not b!851292) (not b!851179) (not d!265645) (not b!851291) (not b!851336) (not d!265685) b_and!74709 (not b!851296) (not b!851270) (not b!851314) (not b!851327) (not b!851302) (not b!851354) (not b!851139) (not b_next!25793) (not b!851276) (not b!851355) (not b!851343) (not b!851268) (not d!265655) (not d!265719) b_and!74707 (not b_lambda!28379) (not d!265711) (not b!851177) (not b_next!25771) (not b_next!25773) b_and!74699 (not d!265707) (not b!851287) (not b!851022) (not b!851024) (not b!851342) (not b!851297) (not b_next!25769) b_and!74711 (not b!851259) b_and!74701 (not d!265683) (not b!851041) (not d!265727) (not b!851356) (not d!265729) (not b!851333) (not b!851299) (not b!851182) (not b!851298) (not b_next!25789) (not b!851301) (not b_next!25795) (not tb!59803) (not b!851290) (not d!265705) (not b_lambda!28377) (not b!851036) (not b!851329) (not b!851300) (not b!851140))
(check-sat b_and!74703 b_and!74665 (not b_next!25777) b_and!74709 (not b_next!25793) (not b_next!25769) (not b_next!25789) (not b_next!25795) b_and!74669 b_and!74705 (not b_next!25775) (not b_next!25779) (not b_next!25791) b_and!74661 b_and!74707 (not b_next!25771) (not b_next!25773) b_and!74699 b_and!74711 b_and!74701)
(get-model)

(declare-fun d!265733 () Bool)

(declare-fun res!389082 () Bool)

(declare-fun e!560334 () Bool)

(assert (=> d!265733 (=> res!389082 e!560334)))

(assert (=> d!265733 (= res!389082 ((_ is Nil!9184) rules!2621))))

(assert (=> d!265733 (= (noDuplicateTag!601 thiss!20117 rules!2621 Nil!9187) e!560334)))

(declare-fun b!851362 () Bool)

(declare-fun e!560335 () Bool)

(assert (=> b!851362 (= e!560334 e!560335)))

(declare-fun res!389083 () Bool)

(assert (=> b!851362 (=> (not res!389083) (not e!560335))))

(declare-fun contains!1697 (List!9203 String!10838) Bool)

(assert (=> b!851362 (= res!389083 (not (contains!1697 Nil!9187 (tag!1984 (h!14585 rules!2621)))))))

(declare-fun b!851363 () Bool)

(assert (=> b!851363 (= e!560335 (noDuplicateTag!601 thiss!20117 (t!95608 rules!2621) (Cons!9187 (tag!1984 (h!14585 rules!2621)) Nil!9187)))))

(assert (= (and d!265733 (not res!389082)) b!851362))

(assert (= (and b!851362 res!389083) b!851363))

(declare-fun m!1090389 () Bool)

(assert (=> b!851362 m!1090389))

(declare-fun m!1090391 () Bool)

(assert (=> b!851363 m!1090391))

(assert (=> b!851265 d!265733))

(declare-fun d!265735 () Bool)

(declare-fun lt!322634 () Bool)

(assert (=> d!265735 (= lt!322634 (isEmpty!5430 (list!3606 (_2!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)))))))))

(declare-fun isEmpty!5432 (Conc!3042) Bool)

(assert (=> d!265735 (= lt!322634 (isEmpty!5432 (c!138147 (_2!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)))))))))

(assert (=> d!265735 (= (isEmpty!5429 (_2!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297))))) lt!322634)))

(declare-fun bs!231254 () Bool)

(assert (= bs!231254 d!265735))

(declare-fun m!1090393 () Bool)

(assert (=> bs!231254 m!1090393))

(assert (=> bs!231254 m!1090393))

(declare-fun m!1090395 () Bool)

(assert (=> bs!231254 m!1090395))

(declare-fun m!1090397 () Bool)

(assert (=> bs!231254 m!1090397))

(assert (=> b!851024 d!265735))

(declare-fun lt!322640 () tuple2!10378)

(declare-fun b!851374 () Bool)

(declare-fun e!560342 () Bool)

(declare-datatypes ((tuple2!10382 0))(
  ( (tuple2!10383 (_1!6017 List!9201) (_2!6017 List!9199)) )
))
(declare-fun lexList!387 (LexerInterface!1524 List!9200 List!9199) tuple2!10382)

(assert (=> b!851374 (= e!560342 (= (list!3606 (_2!6015 lt!322640)) (_2!6017 (lexList!387 thiss!20117 rules!2621 (list!3606 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)))))))))

(declare-fun b!851375 () Bool)

(declare-fun res!389091 () Bool)

(assert (=> b!851375 (=> (not res!389091) (not e!560342))))

(assert (=> b!851375 (= res!389091 (= (list!3605 (_1!6015 lt!322640)) (_1!6017 (lexList!387 thiss!20117 rules!2621 (list!3606 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)))))))))

(declare-fun b!851376 () Bool)

(declare-fun e!560343 () Bool)

(assert (=> b!851376 (= e!560343 (= (_2!6015 lt!322640) (print!554 thiss!20117 (singletonSeq!538 separatorToken!297))))))

(declare-fun b!851377 () Bool)

(declare-fun e!560344 () Bool)

(assert (=> b!851377 (= e!560343 e!560344)))

(declare-fun res!389090 () Bool)

(declare-fun size!7656 (BalanceConc!6098) Int)

(assert (=> b!851377 (= res!389090 (< (size!7656 (_2!6015 lt!322640)) (size!7656 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)))))))

(assert (=> b!851377 (=> (not res!389090) (not e!560344))))

(declare-fun b!851378 () Bool)

(declare-fun isEmpty!5434 (BalanceConc!6100) Bool)

(assert (=> b!851378 (= e!560344 (not (isEmpty!5434 (_1!6015 lt!322640))))))

(declare-fun d!265737 () Bool)

(assert (=> d!265737 e!560342))

(declare-fun res!389092 () Bool)

(assert (=> d!265737 (=> (not res!389092) (not e!560342))))

(assert (=> d!265737 (= res!389092 e!560343)))

(declare-fun c!138185 () Bool)

(assert (=> d!265737 (= c!138185 (> (size!7653 (_1!6015 lt!322640)) 0))))

(declare-fun lexTailRecV2!294 (LexerInterface!1524 List!9200 BalanceConc!6098 BalanceConc!6098 BalanceConc!6098 BalanceConc!6100) tuple2!10378)

(assert (=> d!265737 (= lt!322640 (lexTailRecV2!294 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)) (BalanceConc!6099 Empty!3042) (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)) (BalanceConc!6101 Empty!3043)))))

(assert (=> d!265737 (= (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297))) lt!322640)))

(assert (= (and d!265737 c!138185) b!851377))

(assert (= (and d!265737 (not c!138185)) b!851376))

(assert (= (and b!851377 res!389090) b!851378))

(assert (= (and d!265737 res!389092) b!851375))

(assert (= (and b!851375 res!389091) b!851374))

(declare-fun m!1090405 () Bool)

(assert (=> b!851378 m!1090405))

(declare-fun m!1090407 () Bool)

(assert (=> b!851375 m!1090407))

(assert (=> b!851375 m!1090065))

(declare-fun m!1090409 () Bool)

(assert (=> b!851375 m!1090409))

(assert (=> b!851375 m!1090409))

(declare-fun m!1090411 () Bool)

(assert (=> b!851375 m!1090411))

(declare-fun m!1090413 () Bool)

(assert (=> d!265737 m!1090413))

(assert (=> d!265737 m!1090065))

(assert (=> d!265737 m!1090065))

(declare-fun m!1090415 () Bool)

(assert (=> d!265737 m!1090415))

(declare-fun m!1090417 () Bool)

(assert (=> b!851377 m!1090417))

(assert (=> b!851377 m!1090065))

(declare-fun m!1090419 () Bool)

(assert (=> b!851377 m!1090419))

(declare-fun m!1090421 () Bool)

(assert (=> b!851374 m!1090421))

(assert (=> b!851374 m!1090065))

(assert (=> b!851374 m!1090409))

(assert (=> b!851374 m!1090409))

(assert (=> b!851374 m!1090411))

(assert (=> b!851024 d!265737))

(declare-fun d!265743 () Bool)

(declare-fun lt!322646 () BalanceConc!6098)

(assert (=> d!265743 (= (list!3606 lt!322646) (printList!474 thiss!20117 (list!3605 (singletonSeq!538 separatorToken!297))))))

(declare-fun printTailRec!469 (LexerInterface!1524 BalanceConc!6100 Int BalanceConc!6098) BalanceConc!6098)

(assert (=> d!265743 (= lt!322646 (printTailRec!469 thiss!20117 (singletonSeq!538 separatorToken!297) 0 (BalanceConc!6099 Empty!3042)))))

(assert (=> d!265743 (= (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)) lt!322646)))

(declare-fun bs!231256 () Bool)

(assert (= bs!231256 d!265743))

(declare-fun m!1090441 () Bool)

(assert (=> bs!231256 m!1090441))

(assert (=> bs!231256 m!1090063))

(assert (=> bs!231256 m!1090069))

(assert (=> bs!231256 m!1090069))

(declare-fun m!1090443 () Bool)

(assert (=> bs!231256 m!1090443))

(assert (=> bs!231256 m!1090063))

(declare-fun m!1090445 () Bool)

(assert (=> bs!231256 m!1090445))

(assert (=> b!851024 d!265743))

(declare-fun d!265747 () Bool)

(declare-fun e!560356 () Bool)

(assert (=> d!265747 e!560356))

(declare-fun res!389104 () Bool)

(assert (=> d!265747 (=> (not res!389104) (not e!560356))))

(declare-fun lt!322649 () BalanceConc!6100)

(assert (=> d!265747 (= res!389104 (= (list!3605 lt!322649) (Cons!9185 separatorToken!297 Nil!9185)))))

(declare-fun singleton!259 (Token!3110) BalanceConc!6100)

(assert (=> d!265747 (= lt!322649 (singleton!259 separatorToken!297))))

(assert (=> d!265747 (= (singletonSeq!538 separatorToken!297) lt!322649)))

(declare-fun b!851396 () Bool)

(declare-fun isBalanced!830 (Conc!3043) Bool)

(assert (=> b!851396 (= e!560356 (isBalanced!830 (c!138148 lt!322649)))))

(assert (= (and d!265747 res!389104) b!851396))

(declare-fun m!1090447 () Bool)

(assert (=> d!265747 m!1090447))

(declare-fun m!1090449 () Bool)

(assert (=> d!265747 m!1090449))

(declare-fun m!1090451 () Bool)

(assert (=> b!851396 m!1090451))

(assert (=> b!851024 d!265747))

(declare-fun d!265749 () Bool)

(declare-fun res!389105 () Bool)

(declare-fun e!560357 () Bool)

(assert (=> d!265749 (=> res!389105 e!560357)))

(assert (=> d!265749 (= res!389105 ((_ is Nil!9185) lt!322551))))

(assert (=> d!265749 (= (forall!2163 lt!322551 lambda!25437) e!560357)))

(declare-fun b!851397 () Bool)

(declare-fun e!560358 () Bool)

(assert (=> b!851397 (= e!560357 e!560358)))

(declare-fun res!389106 () Bool)

(assert (=> b!851397 (=> (not res!389106) (not e!560358))))

(assert (=> b!851397 (= res!389106 (dynLambda!4277 lambda!25437 (h!14586 lt!322551)))))

(declare-fun b!851398 () Bool)

(assert (=> b!851398 (= e!560358 (forall!2163 (t!95609 lt!322551) lambda!25437))))

(assert (= (and d!265749 (not res!389105)) b!851397))

(assert (= (and b!851397 res!389106) b!851398))

(declare-fun b_lambda!28383 () Bool)

(assert (=> (not b_lambda!28383) (not b!851397)))

(declare-fun m!1090453 () Bool)

(assert (=> b!851397 m!1090453))

(declare-fun m!1090455 () Bool)

(assert (=> b!851398 m!1090455))

(assert (=> d!265657 d!265749))

(assert (=> d!265657 d!265653))

(declare-fun d!265751 () Bool)

(declare-fun e!560361 () Bool)

(assert (=> d!265751 e!560361))

(declare-fun res!389109 () Bool)

(assert (=> d!265751 (=> (not res!389109) (not e!560361))))

(declare-fun lt!322655 () BalanceConc!6100)

(assert (=> d!265751 (= res!389109 (= (list!3605 lt!322655) lt!322551))))

(declare-fun fromList!313 (List!9201) Conc!3043)

(assert (=> d!265751 (= lt!322655 (BalanceConc!6101 (fromList!313 lt!322551)))))

(assert (=> d!265751 (= (fromListB!673 lt!322551) lt!322655)))

(declare-fun b!851401 () Bool)

(assert (=> b!851401 (= e!560361 (isBalanced!830 (fromList!313 lt!322551)))))

(assert (= (and d!265751 res!389109) b!851401))

(declare-fun m!1090463 () Bool)

(assert (=> d!265751 m!1090463))

(declare-fun m!1090465 () Bool)

(assert (=> d!265751 m!1090465))

(assert (=> b!851401 m!1090465))

(assert (=> b!851401 m!1090465))

(declare-fun m!1090467 () Bool)

(assert (=> b!851401 m!1090467))

(assert (=> d!265705 d!265751))

(declare-fun bs!231258 () Bool)

(declare-fun d!265755 () Bool)

(assert (= bs!231258 (and d!265755 b!850996)))

(declare-fun lambda!25449 () Int)

(assert (=> bs!231258 (not (= lambda!25449 lambda!25430))))

(declare-fun bs!231259 () Bool)

(assert (= bs!231259 (and d!265755 d!265657)))

(assert (=> bs!231259 (= lambda!25449 lambda!25437)))

(declare-fun bs!231260 () Bool)

(assert (= bs!231260 (and d!265755 d!265699)))

(assert (=> bs!231260 (= lambda!25449 lambda!25447)))

(declare-fun bs!231261 () Bool)

(assert (= bs!231261 (and d!265755 d!265729)))

(assert (=> bs!231261 (= lambda!25449 lambda!25448)))

(declare-fun b!851406 () Bool)

(declare-fun e!560366 () Bool)

(assert (=> b!851406 (= e!560366 true)))

(declare-fun b!851405 () Bool)

(declare-fun e!560365 () Bool)

(assert (=> b!851405 (= e!560365 e!560366)))

(declare-fun b!851404 () Bool)

(declare-fun e!560364 () Bool)

(assert (=> b!851404 (= e!560364 e!560365)))

(assert (=> d!265755 e!560364))

(assert (= b!851405 b!851406))

(assert (= b!851404 b!851405))

(assert (= (and d!265755 ((_ is Cons!9184) rules!2621)) b!851404))

(assert (=> b!851406 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25449))))

(assert (=> b!851406 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25449))))

(assert (=> d!265755 true))

(declare-fun lt!322656 () Bool)

(assert (=> d!265755 (= lt!322656 (forall!2163 (list!3605 (seqFromList!1526 lt!322551)) lambda!25449))))

(declare-fun e!560363 () Bool)

(assert (=> d!265755 (= lt!322656 e!560363)))

(declare-fun res!389110 () Bool)

(assert (=> d!265755 (=> res!389110 e!560363)))

(assert (=> d!265755 (= res!389110 (not ((_ is Cons!9185) (list!3605 (seqFromList!1526 lt!322551)))))))

(assert (=> d!265755 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265755 (= (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (list!3605 (seqFromList!1526 lt!322551))) lt!322656)))

(declare-fun b!851402 () Bool)

(declare-fun e!560362 () Bool)

(assert (=> b!851402 (= e!560363 e!560362)))

(declare-fun res!389111 () Bool)

(assert (=> b!851402 (=> (not res!389111) (not e!560362))))

(assert (=> b!851402 (= res!389111 (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 (list!3605 (seqFromList!1526 lt!322551)))))))

(declare-fun b!851403 () Bool)

(assert (=> b!851403 (= e!560362 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 (list!3605 (seqFromList!1526 lt!322551)))))))

(assert (= (and d!265755 (not res!389110)) b!851402))

(assert (= (and b!851402 res!389111) b!851403))

(assert (=> d!265755 m!1090317))

(declare-fun m!1090469 () Bool)

(assert (=> d!265755 m!1090469))

(assert (=> d!265755 m!1090055))

(declare-fun m!1090471 () Bool)

(assert (=> b!851402 m!1090471))

(declare-fun m!1090473 () Bool)

(assert (=> b!851403 m!1090473))

(assert (=> b!851259 d!265755))

(declare-fun d!265757 () Bool)

(declare-fun list!3607 (Conc!3043) List!9201)

(assert (=> d!265757 (= (list!3605 (seqFromList!1526 lt!322551)) (list!3607 (c!138148 (seqFromList!1526 lt!322551))))))

(declare-fun bs!231262 () Bool)

(assert (= bs!231262 d!265757))

(declare-fun m!1090475 () Bool)

(assert (=> bs!231262 m!1090475))

(assert (=> b!851259 d!265757))

(declare-fun d!265759 () Bool)

(assert (=> d!265759 true))

(declare-fun order!5889 () Int)

(declare-fun lambda!25452 () Int)

(declare-fun dynLambda!4282 (Int Int) Int)

(assert (=> d!265759 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))) (dynLambda!4282 order!5889 lambda!25452))))

(declare-fun Forall2!320 (Int) Bool)

(assert (=> d!265759 (= (equivClasses!637 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))) (Forall2!320 lambda!25452))))

(declare-fun bs!231264 () Bool)

(assert (= bs!231264 d!265759))

(declare-fun m!1090485 () Bool)

(assert (=> bs!231264 m!1090485))

(assert (=> b!851270 d!265759))

(declare-fun d!265765 () Bool)

(declare-fun lt!322662 () Int)

(declare-fun size!7658 (List!9201) Int)

(assert (=> d!265765 (= lt!322662 (size!7658 (list!3605 (_1!6015 lt!322559))))))

(declare-fun size!7659 (Conc!3043) Int)

(assert (=> d!265765 (= lt!322662 (size!7659 (c!138148 (_1!6015 lt!322559))))))

(assert (=> d!265765 (= (size!7653 (_1!6015 lt!322559)) lt!322662)))

(declare-fun bs!231265 () Bool)

(assert (= bs!231265 d!265765))

(declare-fun m!1090487 () Bool)

(assert (=> bs!231265 m!1090487))

(assert (=> bs!231265 m!1090487))

(declare-fun m!1090491 () Bool)

(assert (=> bs!231265 m!1090491))

(declare-fun m!1090495 () Bool)

(assert (=> bs!231265 m!1090495))

(assert (=> d!265645 d!265765))

(assert (=> d!265645 d!265743))

(assert (=> d!265645 d!265737))

(declare-fun d!265769 () Bool)

(assert (=> d!265769 (= (list!3605 (_1!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297))))) (list!3607 (c!138148 (_1!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 separatorToken!297)))))))))

(declare-fun bs!231266 () Bool)

(assert (= bs!231266 d!265769))

(declare-fun m!1090497 () Bool)

(assert (=> bs!231266 m!1090497))

(assert (=> d!265645 d!265769))

(assert (=> d!265645 d!265653))

(declare-fun d!265771 () Bool)

(assert (=> d!265771 (= (list!3605 (singletonSeq!538 separatorToken!297)) (list!3607 (c!138148 (singletonSeq!538 separatorToken!297))))))

(declare-fun bs!231267 () Bool)

(assert (= bs!231267 d!265771))

(declare-fun m!1090499 () Bool)

(assert (=> bs!231267 m!1090499))

(assert (=> d!265645 d!265771))

(assert (=> d!265645 d!265747))

(declare-fun d!265773 () Bool)

(declare-fun c!138197 () Bool)

(assert (=> d!265773 (= c!138197 ((_ is Cons!9185) ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!560387 () List!9199)

(assert (=> d!265773 (= (printList!474 thiss!20117 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297)) e!560387)))

(declare-fun b!851437 () Bool)

(assert (=> b!851437 (= e!560387 (++!2380 (list!3606 (charsOf!991 (h!14586 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297)))) (printList!474 thiss!20117 (t!95609 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!851438 () Bool)

(assert (=> b!851438 (= e!560387 Nil!9183)))

(assert (= (and d!265773 c!138197) b!851437))

(assert (= (and d!265773 (not c!138197)) b!851438))

(declare-fun m!1090513 () Bool)

(assert (=> b!851437 m!1090513))

(assert (=> b!851437 m!1090513))

(declare-fun m!1090515 () Bool)

(assert (=> b!851437 m!1090515))

(declare-fun m!1090517 () Bool)

(assert (=> b!851437 m!1090517))

(assert (=> b!851437 m!1090515))

(assert (=> b!851437 m!1090517))

(declare-fun m!1090519 () Bool)

(assert (=> b!851437 m!1090519))

(assert (=> b!851176 d!265773))

(declare-fun d!265777 () Bool)

(assert (=> d!265777 (= ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (Cons!9185 separatorToken!297 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297)))))

(assert (=> b!851176 d!265777))

(declare-fun b!851443 () Bool)

(declare-fun e!560392 () Bool)

(declare-fun e!560393 () Bool)

(assert (=> b!851443 (= e!560392 e!560393)))

(declare-fun res!389126 () Bool)

(assert (=> b!851443 (=> res!389126 e!560393)))

(assert (=> b!851443 (= res!389126 (not ((_ is Cons!9185) (t!95609 l!5107))))))

(declare-fun b!851444 () Bool)

(declare-fun e!560394 () List!9201)

(assert (=> b!851444 (= e!560394 Nil!9185)))

(declare-fun d!265781 () Bool)

(declare-fun lt!322673 () List!9201)

(assert (=> d!265781 (= (printList!474 thiss!20117 lt!322673) (printWithSeparatorTokenList!32 thiss!20117 (t!95609 l!5107) separatorToken!297))))

(assert (=> d!265781 (= lt!322673 e!560394)))

(declare-fun c!138202 () Bool)

(assert (=> d!265781 (= c!138202 ((_ is Cons!9185) (t!95609 l!5107)))))

(assert (=> d!265781 e!560392))

(declare-fun res!389127 () Bool)

(assert (=> d!265781 (=> (not res!389127) (not e!560392))))

(assert (=> d!265781 (= res!389127 (isSeparator!1722 (rule!3145 separatorToken!297)))))

(assert (=> d!265781 (= (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) lt!322673)))

(declare-fun e!560395 () List!9199)

(declare-fun b!851445 () Bool)

(assert (=> b!851445 (= e!560393 (= (printList!474 thiss!20117 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 (t!95609 l!5107)) separatorToken!297) separatorToken!297)) e!560395))))

(declare-fun c!138200 () Bool)

(declare-fun lt!322672 () List!9201)

(assert (=> b!851445 (= c!138200 ((_ is Cons!9185) lt!322672))))

(assert (=> b!851445 (= lt!322672 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 (t!95609 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!851446 () Bool)

(assert (=> b!851446 (= e!560395 (++!2380 (list!3606 (charsOf!991 (h!14586 lt!322672))) (printList!474 thiss!20117 (t!95609 lt!322672))))))

(declare-fun b!851447 () Bool)

(assert (=> b!851447 (= e!560395 Nil!9183)))

(declare-fun b!851448 () Bool)

(assert (=> b!851448 (= e!560394 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 (t!95609 l!5107)) separatorToken!297) separatorToken!297) (h!14586 (t!95609 l!5107))))))

(declare-fun lt!322674 () List!9199)

(assert (=> b!851448 (= lt!322674 (list!3606 (charsOf!991 (h!14586 (t!95609 l!5107)))))))

(declare-fun lt!322671 () List!9199)

(assert (=> b!851448 (= lt!322671 (list!3606 (charsOf!991 separatorToken!297)))))

(declare-fun lt!322669 () List!9199)

(assert (=> b!851448 (= lt!322669 (printList!474 thiss!20117 (withSeparatorTokenList!54 thiss!20117 (t!95609 (t!95609 l!5107)) separatorToken!297)))))

(declare-fun lt!322667 () Unit!13689)

(assert (=> b!851448 (= lt!322667 (lemmaConcatAssociativity!749 lt!322674 lt!322671 lt!322669))))

(assert (=> b!851448 (= (++!2380 (++!2380 lt!322674 lt!322671) lt!322669) (++!2380 lt!322674 (++!2380 lt!322671 lt!322669)))))

(declare-fun lt!322668 () Unit!13689)

(assert (=> b!851448 (= lt!322668 lt!322667)))

(declare-fun b!851449 () Bool)

(declare-fun res!389128 () Bool)

(assert (=> b!851449 (=> (not res!389128) (not e!560392))))

(declare-fun e!560390 () Bool)

(assert (=> b!851449 (= res!389128 e!560390)))

(declare-fun res!389125 () Bool)

(assert (=> b!851449 (=> res!389125 e!560390)))

(assert (=> b!851449 (= res!389125 (not ((_ is Cons!9185) (t!95609 l!5107))))))

(declare-fun b!851450 () Bool)

(declare-fun e!560391 () List!9199)

(assert (=> b!851450 (= e!560391 Nil!9183)))

(declare-fun b!851451 () Bool)

(assert (=> b!851451 (= e!560390 (= (printList!474 thiss!20117 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 (t!95609 l!5107)) separatorToken!297) separatorToken!297) (h!14586 (t!95609 l!5107)))) e!560391))))

(declare-fun c!138201 () Bool)

(declare-fun lt!322670 () List!9201)

(assert (=> b!851451 (= c!138201 ((_ is Cons!9185) lt!322670))))

(assert (=> b!851451 (= lt!322670 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 (t!95609 l!5107)) separatorToken!297) separatorToken!297) (h!14586 (t!95609 l!5107))))))

(declare-fun b!851452 () Bool)

(assert (=> b!851452 (= e!560391 (++!2380 (list!3606 (charsOf!991 (h!14586 lt!322670))) (printList!474 thiss!20117 (t!95609 lt!322670))))))

(assert (= (and d!265781 res!389127) b!851449))

(assert (= (and b!851449 (not res!389125)) b!851451))

(assert (= (and b!851451 c!138201) b!851452))

(assert (= (and b!851451 (not c!138201)) b!851450))

(assert (= (and b!851449 res!389128) b!851443))

(assert (= (and b!851443 (not res!389126)) b!851445))

(assert (= (and b!851445 c!138200) b!851446))

(assert (= (and b!851445 (not c!138200)) b!851447))

(assert (= (and d!265781 c!138202) b!851448))

(assert (= (and d!265781 (not c!138202)) b!851444))

(declare-fun m!1090543 () Bool)

(assert (=> b!851451 m!1090543))

(assert (=> b!851451 m!1090543))

(declare-fun m!1090545 () Bool)

(assert (=> b!851451 m!1090545))

(assert (=> b!851451 m!1090545))

(declare-fun m!1090547 () Bool)

(assert (=> b!851451 m!1090547))

(assert (=> b!851451 m!1090547))

(declare-fun m!1090549 () Bool)

(assert (=> b!851451 m!1090549))

(assert (=> b!851445 m!1090543))

(assert (=> b!851445 m!1090543))

(assert (=> b!851445 m!1090545))

(assert (=> b!851445 m!1090545))

(declare-fun m!1090551 () Bool)

(assert (=> b!851445 m!1090551))

(declare-fun m!1090553 () Bool)

(assert (=> b!851446 m!1090553))

(assert (=> b!851446 m!1090553))

(declare-fun m!1090555 () Bool)

(assert (=> b!851446 m!1090555))

(declare-fun m!1090557 () Bool)

(assert (=> b!851446 m!1090557))

(assert (=> b!851446 m!1090555))

(assert (=> b!851446 m!1090557))

(declare-fun m!1090559 () Bool)

(assert (=> b!851446 m!1090559))

(declare-fun m!1090561 () Bool)

(assert (=> d!265781 m!1090561))

(declare-fun m!1090563 () Bool)

(assert (=> d!265781 m!1090563))

(declare-fun m!1090565 () Bool)

(assert (=> b!851452 m!1090565))

(assert (=> b!851452 m!1090565))

(declare-fun m!1090567 () Bool)

(assert (=> b!851452 m!1090567))

(declare-fun m!1090569 () Bool)

(assert (=> b!851452 m!1090569))

(assert (=> b!851452 m!1090567))

(assert (=> b!851452 m!1090569))

(declare-fun m!1090571 () Bool)

(assert (=> b!851452 m!1090571))

(assert (=> b!851448 m!1090543))

(declare-fun m!1090573 () Bool)

(assert (=> b!851448 m!1090573))

(declare-fun m!1090575 () Bool)

(assert (=> b!851448 m!1090575))

(declare-fun m!1090577 () Bool)

(assert (=> b!851448 m!1090577))

(assert (=> b!851448 m!1090543))

(declare-fun m!1090579 () Bool)

(assert (=> b!851448 m!1090579))

(assert (=> b!851448 m!1090545))

(assert (=> b!851448 m!1090547))

(assert (=> b!851448 m!1090241))

(declare-fun m!1090581 () Bool)

(assert (=> b!851448 m!1090581))

(declare-fun m!1090583 () Bool)

(assert (=> b!851448 m!1090583))

(assert (=> b!851448 m!1090581))

(assert (=> b!851448 m!1090241))

(assert (=> b!851448 m!1090247))

(assert (=> b!851448 m!1090543))

(assert (=> b!851448 m!1090545))

(assert (=> b!851448 m!1090573))

(declare-fun m!1090585 () Bool)

(assert (=> b!851448 m!1090585))

(assert (=> b!851448 m!1090577))

(declare-fun m!1090587 () Bool)

(assert (=> b!851448 m!1090587))

(assert (=> b!851176 d!265781))

(declare-fun d!265787 () Bool)

(assert (=> d!265787 (= (isEmpty!5430 (originalCharacters!2278 (h!14586 l!5107))) ((_ is Nil!9183) (originalCharacters!2278 (h!14586 l!5107))))))

(assert (=> d!265727 d!265787))

(declare-fun d!265789 () Bool)

(declare-fun charsToBigInt!0 (List!9198 Int) Int)

(assert (=> d!265789 (= (inv!15 (value!55776 separatorToken!297)) (= (charsToBigInt!0 (text!12965 (value!55776 separatorToken!297)) 0) (value!55771 (value!55776 separatorToken!297))))))

(declare-fun bs!231268 () Bool)

(assert (= bs!231268 d!265789))

(declare-fun m!1090593 () Bool)

(assert (=> bs!231268 m!1090593))

(assert (=> b!851287 d!265789))

(declare-fun bm!50502 () Bool)

(declare-fun call!50507 () Bool)

(assert (=> bm!50502 (= call!50507 (ruleDisjointCharsFromAllFromOtherType!237 (h!14585 rules!2621) (t!95608 rules!2621)))))

(declare-fun b!851475 () Bool)

(declare-fun e!560412 () Bool)

(declare-fun e!560414 () Bool)

(assert (=> b!851475 (= e!560412 e!560414)))

(declare-fun res!389141 () Bool)

(declare-fun rulesUseDisjointChars!118 (Rule!3244 Rule!3244) Bool)

(assert (=> b!851475 (= res!389141 (rulesUseDisjointChars!118 (h!14585 rules!2621) (h!14585 rules!2621)))))

(assert (=> b!851475 (=> (not res!389141) (not e!560414))))

(declare-fun b!851476 () Bool)

(declare-fun e!560413 () Bool)

(assert (=> b!851476 (= e!560412 e!560413)))

(declare-fun res!389142 () Bool)

(assert (=> b!851476 (= res!389142 (not ((_ is Cons!9184) rules!2621)))))

(assert (=> b!851476 (=> res!389142 e!560413)))

(declare-fun b!851477 () Bool)

(assert (=> b!851477 (= e!560413 call!50507)))

(declare-fun d!265793 () Bool)

(declare-fun c!138208 () Bool)

(assert (=> d!265793 (= c!138208 (and ((_ is Cons!9184) rules!2621) (not (= (isSeparator!1722 (h!14585 rules!2621)) (isSeparator!1722 (h!14585 rules!2621))))))))

(assert (=> d!265793 (= (ruleDisjointCharsFromAllFromOtherType!237 (h!14585 rules!2621) rules!2621) e!560412)))

(declare-fun b!851478 () Bool)

(assert (=> b!851478 (= e!560414 call!50507)))

(assert (= (and d!265793 c!138208) b!851475))

(assert (= (and d!265793 (not c!138208)) b!851476))

(assert (= (and b!851475 res!389141) b!851478))

(assert (= (and b!851476 (not res!389142)) b!851477))

(assert (= (or b!851478 b!851477) bm!50502))

(declare-fun m!1090597 () Bool)

(assert (=> bm!50502 m!1090597))

(declare-fun m!1090599 () Bool)

(assert (=> b!851475 m!1090599))

(assert (=> b!851275 d!265793))

(declare-fun d!265797 () Bool)

(declare-fun lt!322680 () Bool)

(declare-fun e!560416 () Bool)

(assert (=> d!265797 (= lt!322680 e!560416)))

(declare-fun res!389146 () Bool)

(assert (=> d!265797 (=> (not res!389146) (not e!560416))))

(assert (=> d!265797 (= res!389146 (= (list!3605 (_1!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 (h!14586 l!5107)))))) (list!3605 (singletonSeq!538 (h!14586 l!5107)))))))

(declare-fun e!560417 () Bool)

(assert (=> d!265797 (= lt!322680 e!560417)))

(declare-fun res!389145 () Bool)

(assert (=> d!265797 (=> (not res!389145) (not e!560417))))

(declare-fun lt!322681 () tuple2!10378)

(assert (=> d!265797 (= res!389145 (= (size!7653 (_1!6015 lt!322681)) 1))))

(assert (=> d!265797 (= lt!322681 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 (h!14586 l!5107)))))))

(assert (=> d!265797 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265797 (= (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 l!5107)) lt!322680)))

(declare-fun b!851480 () Bool)

(declare-fun res!389143 () Bool)

(assert (=> b!851480 (=> (not res!389143) (not e!560417))))

(assert (=> b!851480 (= res!389143 (= (apply!1888 (_1!6015 lt!322681) 0) (h!14586 l!5107)))))

(declare-fun b!851481 () Bool)

(assert (=> b!851481 (= e!560417 (isEmpty!5429 (_2!6015 lt!322681)))))

(declare-fun b!851482 () Bool)

(assert (=> b!851482 (= e!560416 (isEmpty!5429 (_2!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 (h!14586 l!5107)))))))))

(assert (= (and d!265797 res!389145) b!851480))

(assert (= (and b!851480 res!389143) b!851481))

(assert (= (and d!265797 res!389146) b!851482))

(declare-fun m!1090607 () Bool)

(assert (=> d!265797 m!1090607))

(declare-fun m!1090609 () Bool)

(assert (=> d!265797 m!1090609))

(declare-fun m!1090611 () Bool)

(assert (=> d!265797 m!1090611))

(declare-fun m!1090613 () Bool)

(assert (=> d!265797 m!1090613))

(assert (=> d!265797 m!1090609))

(declare-fun m!1090615 () Bool)

(assert (=> d!265797 m!1090615))

(assert (=> d!265797 m!1090055))

(assert (=> d!265797 m!1090611))

(declare-fun m!1090617 () Bool)

(assert (=> d!265797 m!1090617))

(assert (=> d!265797 m!1090609))

(declare-fun m!1090619 () Bool)

(assert (=> b!851480 m!1090619))

(declare-fun m!1090621 () Bool)

(assert (=> b!851481 m!1090621))

(assert (=> b!851482 m!1090609))

(assert (=> b!851482 m!1090609))

(assert (=> b!851482 m!1090611))

(assert (=> b!851482 m!1090611))

(assert (=> b!851482 m!1090617))

(declare-fun m!1090623 () Bool)

(assert (=> b!851482 m!1090623))

(assert (=> b!851300 d!265797))

(declare-fun d!265801 () Bool)

(declare-fun lt!322682 () Bool)

(declare-fun e!560418 () Bool)

(assert (=> d!265801 (= lt!322682 e!560418)))

(declare-fun res!389149 () Bool)

(assert (=> d!265801 (=> (not res!389149) (not e!560418))))

(assert (=> d!265801 (= res!389149 (= (list!3605 (_1!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 (h!14586 lt!322551)))))) (list!3605 (singletonSeq!538 (h!14586 lt!322551)))))))

(declare-fun e!560419 () Bool)

(assert (=> d!265801 (= lt!322682 e!560419)))

(declare-fun res!389148 () Bool)

(assert (=> d!265801 (=> (not res!389148) (not e!560419))))

(declare-fun lt!322683 () tuple2!10378)

(assert (=> d!265801 (= res!389148 (= (size!7653 (_1!6015 lt!322683)) 1))))

(assert (=> d!265801 (= lt!322683 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 (h!14586 lt!322551)))))))

(assert (=> d!265801 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265801 (= (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 lt!322551)) lt!322682)))

(declare-fun b!851483 () Bool)

(declare-fun res!389147 () Bool)

(assert (=> b!851483 (=> (not res!389147) (not e!560419))))

(assert (=> b!851483 (= res!389147 (= (apply!1888 (_1!6015 lt!322683) 0) (h!14586 lt!322551)))))

(declare-fun b!851484 () Bool)

(assert (=> b!851484 (= e!560419 (isEmpty!5429 (_2!6015 lt!322683)))))

(declare-fun b!851485 () Bool)

(assert (=> b!851485 (= e!560418 (isEmpty!5429 (_2!6015 (lex!617 thiss!20117 rules!2621 (print!554 thiss!20117 (singletonSeq!538 (h!14586 lt!322551)))))))))

(assert (= (and d!265801 res!389148) b!851483))

(assert (= (and b!851483 res!389147) b!851484))

(assert (= (and d!265801 res!389149) b!851485))

(declare-fun m!1090625 () Bool)

(assert (=> d!265801 m!1090625))

(declare-fun m!1090627 () Bool)

(assert (=> d!265801 m!1090627))

(declare-fun m!1090629 () Bool)

(assert (=> d!265801 m!1090629))

(declare-fun m!1090631 () Bool)

(assert (=> d!265801 m!1090631))

(assert (=> d!265801 m!1090627))

(declare-fun m!1090633 () Bool)

(assert (=> d!265801 m!1090633))

(assert (=> d!265801 m!1090055))

(assert (=> d!265801 m!1090629))

(declare-fun m!1090635 () Bool)

(assert (=> d!265801 m!1090635))

(assert (=> d!265801 m!1090627))

(declare-fun m!1090637 () Bool)

(assert (=> b!851483 m!1090637))

(declare-fun m!1090639 () Bool)

(assert (=> b!851484 m!1090639))

(assert (=> b!851485 m!1090627))

(assert (=> b!851485 m!1090627))

(assert (=> b!851485 m!1090629))

(assert (=> b!851485 m!1090629))

(assert (=> b!851485 m!1090635))

(declare-fun m!1090641 () Bool)

(assert (=> b!851485 m!1090641))

(assert (=> b!851139 d!265801))

(declare-fun d!265803 () Bool)

(declare-fun charsToInt!0 (List!9198) (_ BitVec 32))

(assert (=> d!265803 (= (inv!16 (value!55776 (h!14586 l!5107))) (= (charsToInt!0 (text!12963 (value!55776 (h!14586 l!5107)))) (value!55767 (value!55776 (h!14586 l!5107)))))))

(declare-fun bs!231270 () Bool)

(assert (= bs!231270 d!265803))

(declare-fun m!1090643 () Bool)

(assert (=> bs!231270 m!1090643))

(assert (=> b!851296 d!265803))

(declare-fun d!265805 () Bool)

(declare-fun lt!322687 () Token!3110)

(declare-fun apply!1892 (List!9201 Int) Token!3110)

(assert (=> d!265805 (= lt!322687 (apply!1892 (list!3605 (_1!6015 lt!322559)) 0))))

(declare-fun apply!1893 (Conc!3043 Int) Token!3110)

(assert (=> d!265805 (= lt!322687 (apply!1893 (c!138148 (_1!6015 lt!322559)) 0))))

(declare-fun e!560430 () Bool)

(assert (=> d!265805 e!560430))

(declare-fun res!389157 () Bool)

(assert (=> d!265805 (=> (not res!389157) (not e!560430))))

(assert (=> d!265805 (= res!389157 (<= 0 0))))

(assert (=> d!265805 (= (apply!1888 (_1!6015 lt!322559) 0) lt!322687)))

(declare-fun b!851498 () Bool)

(assert (=> b!851498 (= e!560430 (< 0 (size!7653 (_1!6015 lt!322559))))))

(assert (= (and d!265805 res!389157) b!851498))

(assert (=> d!265805 m!1090487))

(assert (=> d!265805 m!1090487))

(declare-fun m!1090657 () Bool)

(assert (=> d!265805 m!1090657))

(declare-fun m!1090659 () Bool)

(assert (=> d!265805 m!1090659))

(assert (=> b!851498 m!1090067))

(assert (=> b!851022 d!265805))

(declare-fun d!265815 () Bool)

(assert (=> d!265815 (= (inv!16 (value!55776 separatorToken!297)) (= (charsToInt!0 (text!12963 (value!55776 separatorToken!297))) (value!55767 (value!55776 separatorToken!297))))))

(declare-fun bs!231276 () Bool)

(assert (= bs!231276 d!265815))

(declare-fun m!1090661 () Bool)

(assert (=> bs!231276 m!1090661))

(assert (=> b!851291 d!265815))

(declare-fun d!265817 () Bool)

(declare-fun res!389158 () Bool)

(declare-fun e!560431 () Bool)

(assert (=> d!265817 (=> res!389158 e!560431)))

(assert (=> d!265817 (= res!389158 ((_ is Nil!9185) (t!95609 l!5107)))))

(assert (=> d!265817 (= (forall!2163 (t!95609 l!5107) lambda!25430) e!560431)))

(declare-fun b!851499 () Bool)

(declare-fun e!560432 () Bool)

(assert (=> b!851499 (= e!560431 e!560432)))

(declare-fun res!389159 () Bool)

(assert (=> b!851499 (=> (not res!389159) (not e!560432))))

(assert (=> b!851499 (= res!389159 (dynLambda!4277 lambda!25430 (h!14586 (t!95609 l!5107))))))

(declare-fun b!851500 () Bool)

(assert (=> b!851500 (= e!560432 (forall!2163 (t!95609 (t!95609 l!5107)) lambda!25430))))

(assert (= (and d!265817 (not res!389158)) b!851499))

(assert (= (and b!851499 res!389159) b!851500))

(declare-fun b_lambda!28387 () Bool)

(assert (=> (not b_lambda!28387) (not b!851499)))

(declare-fun m!1090663 () Bool)

(assert (=> b!851499 m!1090663))

(declare-fun m!1090665 () Bool)

(assert (=> b!851500 m!1090665))

(assert (=> b!851030 d!265817))

(declare-fun bs!231279 () Bool)

(declare-fun d!265819 () Bool)

(assert (= bs!231279 (and d!265819 d!265755)))

(declare-fun lambda!25457 () Int)

(assert (=> bs!231279 (= lambda!25457 lambda!25449)))

(declare-fun bs!231280 () Bool)

(assert (= bs!231280 (and d!265819 d!265657)))

(assert (=> bs!231280 (= lambda!25457 lambda!25437)))

(declare-fun bs!231281 () Bool)

(assert (= bs!231281 (and d!265819 d!265699)))

(assert (=> bs!231281 (= lambda!25457 lambda!25447)))

(declare-fun bs!231282 () Bool)

(assert (= bs!231282 (and d!265819 d!265729)))

(assert (=> bs!231282 (= lambda!25457 lambda!25448)))

(declare-fun bs!231283 () Bool)

(assert (= bs!231283 (and d!265819 b!850996)))

(assert (=> bs!231283 (not (= lambda!25457 lambda!25430))))

(declare-fun b!851505 () Bool)

(declare-fun e!560437 () Bool)

(assert (=> b!851505 (= e!560437 true)))

(declare-fun b!851504 () Bool)

(declare-fun e!560436 () Bool)

(assert (=> b!851504 (= e!560436 e!560437)))

(declare-fun b!851503 () Bool)

(declare-fun e!560435 () Bool)

(assert (=> b!851503 (= e!560435 e!560436)))

(assert (=> d!265819 e!560435))

(assert (= b!851504 b!851505))

(assert (= b!851503 b!851504))

(assert (= (and d!265819 ((_ is Cons!9184) rules!2621)) b!851503))

(assert (=> b!851505 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25457))))

(assert (=> b!851505 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25457))))

(assert (=> d!265819 true))

(declare-fun lt!322688 () Bool)

(assert (=> d!265819 (= lt!322688 (forall!2163 (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297) lambda!25457))))

(declare-fun e!560434 () Bool)

(assert (=> d!265819 (= lt!322688 e!560434)))

(declare-fun res!389160 () Bool)

(assert (=> d!265819 (=> res!389160 e!560434)))

(assert (=> d!265819 (= res!389160 (not ((_ is Cons!9185) (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!265819 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265819 (= (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297)) lt!322688)))

(declare-fun b!851501 () Bool)

(declare-fun e!560433 () Bool)

(assert (=> b!851501 (= e!560434 e!560433)))

(declare-fun res!389161 () Bool)

(assert (=> b!851501 (=> (not res!389161) (not e!560433))))

(assert (=> b!851501 (= res!389161 (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!851502 () Bool)

(assert (=> b!851502 (= e!560433 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!265819 (not res!389160)) b!851501))

(assert (= (and b!851501 res!389161) b!851502))

(assert (=> d!265819 m!1090017))

(declare-fun m!1090671 () Bool)

(assert (=> d!265819 m!1090671))

(assert (=> d!265819 m!1090055))

(declare-fun m!1090673 () Bool)

(assert (=> b!851501 m!1090673))

(declare-fun m!1090675 () Bool)

(assert (=> b!851502 m!1090675))

(assert (=> d!265685 d!265819))

(assert (=> d!265685 d!265683))

(declare-fun d!265825 () Bool)

(assert (=> d!265825 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (withSeparatorTokenList!54 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!265825 true))

(declare-fun _$32!327 () Unit!13689)

(assert (=> d!265825 (= (choose!5026 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!327)))

(declare-fun bs!231298 () Bool)

(assert (= bs!231298 d!265825))

(assert (=> bs!231298 m!1090017))

(assert (=> bs!231298 m!1090017))

(assert (=> bs!231298 m!1090271))

(assert (=> d!265685 d!265825))

(assert (=> d!265685 d!265653))

(declare-fun d!265869 () Bool)

(declare-fun res!389186 () Bool)

(declare-fun e!560473 () Bool)

(assert (=> d!265869 (=> res!389186 e!560473)))

(assert (=> d!265869 (= res!389186 ((_ is Nil!9185) l!5107))))

(assert (=> d!265869 (= (forall!2163 l!5107 lambda!25448) e!560473)))

(declare-fun b!851562 () Bool)

(declare-fun e!560474 () Bool)

(assert (=> b!851562 (= e!560473 e!560474)))

(declare-fun res!389187 () Bool)

(assert (=> b!851562 (=> (not res!389187) (not e!560474))))

(assert (=> b!851562 (= res!389187 (dynLambda!4277 lambda!25448 (h!14586 l!5107)))))

(declare-fun b!851563 () Bool)

(assert (=> b!851563 (= e!560474 (forall!2163 (t!95609 l!5107) lambda!25448))))

(assert (= (and d!265869 (not res!389186)) b!851562))

(assert (= (and b!851562 res!389187) b!851563))

(declare-fun b_lambda!28399 () Bool)

(assert (=> (not b_lambda!28399) (not b!851562)))

(declare-fun m!1090815 () Bool)

(assert (=> b!851562 m!1090815))

(declare-fun m!1090817 () Bool)

(assert (=> b!851563 m!1090817))

(assert (=> d!265729 d!265869))

(assert (=> d!265729 d!265653))

(declare-fun d!265871 () Bool)

(declare-fun c!138221 () Bool)

(assert (=> d!265871 (= c!138221 ((_ is Cons!9185) lt!322614))))

(declare-fun e!560475 () List!9199)

(assert (=> d!265871 (= (printList!474 thiss!20117 lt!322614) e!560475)))

(declare-fun b!851564 () Bool)

(assert (=> b!851564 (= e!560475 (++!2380 (list!3606 (charsOf!991 (h!14586 lt!322614))) (printList!474 thiss!20117 (t!95609 lt!322614))))))

(declare-fun b!851565 () Bool)

(assert (=> b!851565 (= e!560475 Nil!9183)))

(assert (= (and d!265871 c!138221) b!851564))

(assert (= (and d!265871 (not c!138221)) b!851565))

(declare-fun m!1090819 () Bool)

(assert (=> b!851564 m!1090819))

(assert (=> b!851564 m!1090819))

(declare-fun m!1090821 () Bool)

(assert (=> b!851564 m!1090821))

(declare-fun m!1090823 () Bool)

(assert (=> b!851564 m!1090823))

(assert (=> b!851564 m!1090821))

(assert (=> b!851564 m!1090823))

(declare-fun m!1090825 () Bool)

(assert (=> b!851564 m!1090825))

(assert (=> d!265683 d!265871))

(declare-fun d!265873 () Bool)

(declare-fun c!138224 () Bool)

(assert (=> d!265873 (= c!138224 ((_ is Cons!9185) l!5107))))

(declare-fun e!560478 () List!9199)

(assert (=> d!265873 (= (printWithSeparatorTokenList!32 thiss!20117 l!5107 separatorToken!297) e!560478)))

(declare-fun b!851570 () Bool)

(assert (=> b!851570 (= e!560478 (++!2380 (++!2380 (list!3606 (charsOf!991 (h!14586 l!5107))) (list!3606 (charsOf!991 separatorToken!297))) (printWithSeparatorTokenList!32 thiss!20117 (t!95609 l!5107) separatorToken!297)))))

(declare-fun b!851571 () Bool)

(assert (=> b!851571 (= e!560478 Nil!9183)))

(assert (= (and d!265873 c!138224) b!851570))

(assert (= (and d!265873 (not c!138224)) b!851571))

(declare-fun m!1090827 () Bool)

(assert (=> b!851570 m!1090827))

(assert (=> b!851570 m!1090563))

(declare-fun m!1090829 () Bool)

(assert (=> b!851570 m!1090829))

(assert (=> b!851570 m!1090563))

(assert (=> b!851570 m!1090251))

(assert (=> b!851570 m!1090247))

(assert (=> b!851570 m!1090827))

(assert (=> b!851570 m!1090237))

(assert (=> b!851570 m!1090251))

(assert (=> b!851570 m!1090241))

(assert (=> b!851570 m!1090247))

(assert (=> b!851570 m!1090237))

(assert (=> b!851570 m!1090241))

(assert (=> d!265683 d!265873))

(declare-fun d!265875 () Bool)

(assert (=> d!265875 true))

(declare-fun order!5895 () Int)

(declare-fun lambda!25468 () Int)

(declare-fun dynLambda!4285 (Int Int) Int)

(assert (=> d!265875 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4285 order!5895 lambda!25468))))

(assert (=> d!265875 true))

(assert (=> d!265875 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4285 order!5895 lambda!25468))))

(declare-fun Forall!411 (Int) Bool)

(assert (=> d!265875 (= (semiInverseModEq!670 (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (Forall!411 lambda!25468))))

(declare-fun bs!231299 () Bool)

(assert (= bs!231299 d!265875))

(declare-fun m!1090831 () Bool)

(assert (=> bs!231299 m!1090831))

(assert (=> d!265715 d!265875))

(declare-fun b!851584 () Bool)

(declare-fun e!560483 () List!9199)

(assert (=> b!851584 (= e!560483 (printList!474 thiss!20117 (t!95609 lt!322611)))))

(declare-fun b!851585 () Bool)

(assert (=> b!851585 (= e!560483 (Cons!9183 (h!14584 (list!3606 (charsOf!991 (h!14586 lt!322611)))) (++!2380 (t!95607 (list!3606 (charsOf!991 (h!14586 lt!322611)))) (printList!474 thiss!20117 (t!95609 lt!322611)))))))

(declare-fun d!265877 () Bool)

(declare-fun e!560484 () Bool)

(assert (=> d!265877 e!560484))

(declare-fun res!389192 () Bool)

(assert (=> d!265877 (=> (not res!389192) (not e!560484))))

(declare-fun lt!322716 () List!9199)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1344 (List!9199) (InoxSet C!4880))

(assert (=> d!265877 (= res!389192 (= (content!1344 lt!322716) ((_ map or) (content!1344 (list!3606 (charsOf!991 (h!14586 lt!322611)))) (content!1344 (printList!474 thiss!20117 (t!95609 lt!322611))))))))

(assert (=> d!265877 (= lt!322716 e!560483)))

(declare-fun c!138227 () Bool)

(assert (=> d!265877 (= c!138227 ((_ is Nil!9183) (list!3606 (charsOf!991 (h!14586 lt!322611)))))))

(assert (=> d!265877 (= (++!2380 (list!3606 (charsOf!991 (h!14586 lt!322611))) (printList!474 thiss!20117 (t!95609 lt!322611))) lt!322716)))

(declare-fun b!851587 () Bool)

(assert (=> b!851587 (= e!560484 (or (not (= (printList!474 thiss!20117 (t!95609 lt!322611)) Nil!9183)) (= lt!322716 (list!3606 (charsOf!991 (h!14586 lt!322611))))))))

(declare-fun b!851586 () Bool)

(declare-fun res!389193 () Bool)

(assert (=> b!851586 (=> (not res!389193) (not e!560484))))

(assert (=> b!851586 (= res!389193 (= (size!7655 lt!322716) (+ (size!7655 (list!3606 (charsOf!991 (h!14586 lt!322611)))) (size!7655 (printList!474 thiss!20117 (t!95609 lt!322611))))))))

(assert (= (and d!265877 c!138227) b!851584))

(assert (= (and d!265877 (not c!138227)) b!851585))

(assert (= (and d!265877 res!389192) b!851586))

(assert (= (and b!851586 res!389193) b!851587))

(assert (=> b!851585 m!1090229))

(declare-fun m!1090833 () Bool)

(assert (=> b!851585 m!1090833))

(declare-fun m!1090835 () Bool)

(assert (=> d!265877 m!1090835))

(assert (=> d!265877 m!1090227))

(declare-fun m!1090837 () Bool)

(assert (=> d!265877 m!1090837))

(assert (=> d!265877 m!1090229))

(declare-fun m!1090839 () Bool)

(assert (=> d!265877 m!1090839))

(declare-fun m!1090841 () Bool)

(assert (=> b!851586 m!1090841))

(assert (=> b!851586 m!1090227))

(declare-fun m!1090843 () Bool)

(assert (=> b!851586 m!1090843))

(assert (=> b!851586 m!1090229))

(declare-fun m!1090845 () Bool)

(assert (=> b!851586 m!1090845))

(assert (=> b!851183 d!265877))

(declare-fun d!265879 () Bool)

(declare-fun list!3610 (Conc!3042) List!9199)

(assert (=> d!265879 (= (list!3606 (charsOf!991 (h!14586 lt!322611))) (list!3610 (c!138147 (charsOf!991 (h!14586 lt!322611)))))))

(declare-fun bs!231300 () Bool)

(assert (= bs!231300 d!265879))

(declare-fun m!1090847 () Bool)

(assert (=> bs!231300 m!1090847))

(assert (=> b!851183 d!265879))

(declare-fun d!265881 () Bool)

(declare-fun lt!322719 () BalanceConc!6098)

(assert (=> d!265881 (= (list!3606 lt!322719) (originalCharacters!2278 (h!14586 lt!322611)))))

(assert (=> d!265881 (= lt!322719 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611)))) (value!55776 (h!14586 lt!322611))))))

(assert (=> d!265881 (= (charsOf!991 (h!14586 lt!322611)) lt!322719)))

(declare-fun b_lambda!28401 () Bool)

(assert (=> (not b_lambda!28401) (not d!265881)))

(declare-fun t!95691 () Bool)

(declare-fun tb!59837 () Bool)

(assert (=> (and b!851315 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611))))) t!95691) tb!59837))

(declare-fun b!851588 () Bool)

(declare-fun e!560485 () Bool)

(declare-fun tp!268143 () Bool)

(assert (=> b!851588 (= e!560485 (and (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611)))) (value!55776 (h!14586 lt!322611))))) tp!268143))))

(declare-fun result!69318 () Bool)

(assert (=> tb!59837 (= result!69318 (and (inv!11673 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611)))) (value!55776 (h!14586 lt!322611)))) e!560485))))

(assert (= tb!59837 b!851588))

(declare-fun m!1090849 () Bool)

(assert (=> b!851588 m!1090849))

(declare-fun m!1090851 () Bool)

(assert (=> tb!59837 m!1090851))

(assert (=> d!265881 t!95691))

(declare-fun b_and!74733 () Bool)

(assert (= b_and!74707 (and (=> t!95691 result!69318) b_and!74733)))

(declare-fun tb!59839 () Bool)

(declare-fun t!95693 () Bool)

(assert (=> (and b!851357 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611))))) t!95693) tb!59839))

(declare-fun result!69320 () Bool)

(assert (= result!69320 result!69318))

(assert (=> d!265881 t!95693))

(declare-fun b_and!74735 () Bool)

(assert (= b_and!74711 (and (=> t!95693 result!69320) b_and!74735)))

(declare-fun tb!59841 () Bool)

(declare-fun t!95695 () Bool)

(assert (=> (and b!850998 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611))))) t!95695) tb!59841))

(declare-fun result!69322 () Bool)

(assert (= result!69322 result!69318))

(assert (=> d!265881 t!95695))

(declare-fun b_and!74737 () Bool)

(assert (= b_and!74699 (and (=> t!95695 result!69322) b_and!74737)))

(declare-fun t!95697 () Bool)

(declare-fun tb!59843 () Bool)

(assert (=> (and b!850995 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611))))) t!95697) tb!59843))

(declare-fun result!69324 () Bool)

(assert (= result!69324 result!69318))

(assert (=> d!265881 t!95697))

(declare-fun b_and!74739 () Bool)

(assert (= b_and!74703 (and (=> t!95697 result!69324) b_and!74739)))

(declare-fun t!95699 () Bool)

(declare-fun tb!59845 () Bool)

(assert (=> (and b!850999 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611))))) t!95699) tb!59845))

(declare-fun result!69326 () Bool)

(assert (= result!69326 result!69318))

(assert (=> d!265881 t!95699))

(declare-fun b_and!74741 () Bool)

(assert (= b_and!74701 (and (=> t!95699 result!69326) b_and!74741)))

(declare-fun m!1090853 () Bool)

(assert (=> d!265881 m!1090853))

(declare-fun m!1090855 () Bool)

(assert (=> d!265881 m!1090855))

(assert (=> b!851183 d!265881))

(declare-fun d!265883 () Bool)

(declare-fun c!138228 () Bool)

(assert (=> d!265883 (= c!138228 ((_ is Cons!9185) (t!95609 lt!322611)))))

(declare-fun e!560486 () List!9199)

(assert (=> d!265883 (= (printList!474 thiss!20117 (t!95609 lt!322611)) e!560486)))

(declare-fun b!851589 () Bool)

(assert (=> b!851589 (= e!560486 (++!2380 (list!3606 (charsOf!991 (h!14586 (t!95609 lt!322611)))) (printList!474 thiss!20117 (t!95609 (t!95609 lt!322611)))))))

(declare-fun b!851590 () Bool)

(assert (=> b!851590 (= e!560486 Nil!9183)))

(assert (= (and d!265883 c!138228) b!851589))

(assert (= (and d!265883 (not c!138228)) b!851590))

(declare-fun m!1090857 () Bool)

(assert (=> b!851589 m!1090857))

(assert (=> b!851589 m!1090857))

(declare-fun m!1090859 () Bool)

(assert (=> b!851589 m!1090859))

(declare-fun m!1090861 () Bool)

(assert (=> b!851589 m!1090861))

(assert (=> b!851589 m!1090859))

(assert (=> b!851589 m!1090861))

(declare-fun m!1090863 () Bool)

(assert (=> b!851589 m!1090863))

(assert (=> b!851183 d!265883))

(declare-fun d!265885 () Bool)

(assert (=> d!265885 (= (isEmpty!5430 (originalCharacters!2278 separatorToken!297)) ((_ is Nil!9183) (originalCharacters!2278 separatorToken!297)))))

(assert (=> d!265655 d!265885))

(declare-fun bs!231301 () Bool)

(declare-fun d!265887 () Bool)

(assert (= bs!231301 (and d!265887 d!265875)))

(declare-fun lambda!25469 () Int)

(assert (=> bs!231301 (= (and (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (= (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toValue!2759 (transformation!1722 (h!14585 rules!2621))))) (= lambda!25469 lambda!25468))))

(assert (=> d!265887 true))

(assert (=> d!265887 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) (dynLambda!4285 order!5895 lambda!25469))))

(assert (=> d!265887 true))

(assert (=> d!265887 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107))))) (dynLambda!4285 order!5895 lambda!25469))))

(assert (=> d!265887 (= (semiInverseModEq!670 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107))))) (Forall!411 lambda!25469))))

(declare-fun bs!231302 () Bool)

(assert (= bs!231302 d!265887))

(declare-fun m!1090865 () Bool)

(assert (=> bs!231302 m!1090865))

(assert (=> d!265711 d!265887))

(declare-fun d!265889 () Bool)

(declare-fun c!138230 () Bool)

(assert (=> d!265889 (= c!138230 ((_ is IntegerValue!5364) (value!55776 (h!14586 (t!95609 l!5107)))))))

(declare-fun e!560487 () Bool)

(assert (=> d!265889 (= (inv!21 (value!55776 (h!14586 (t!95609 l!5107)))) e!560487)))

(declare-fun b!851591 () Bool)

(declare-fun e!560488 () Bool)

(assert (=> b!851591 (= e!560488 (inv!15 (value!55776 (h!14586 (t!95609 l!5107)))))))

(declare-fun b!851592 () Bool)

(declare-fun e!560489 () Bool)

(assert (=> b!851592 (= e!560487 e!560489)))

(declare-fun c!138229 () Bool)

(assert (=> b!851592 (= c!138229 ((_ is IntegerValue!5365) (value!55776 (h!14586 (t!95609 l!5107)))))))

(declare-fun b!851593 () Bool)

(declare-fun res!389194 () Bool)

(assert (=> b!851593 (=> res!389194 e!560488)))

(assert (=> b!851593 (= res!389194 (not ((_ is IntegerValue!5366) (value!55776 (h!14586 (t!95609 l!5107))))))))

(assert (=> b!851593 (= e!560489 e!560488)))

(declare-fun b!851594 () Bool)

(assert (=> b!851594 (= e!560489 (inv!17 (value!55776 (h!14586 (t!95609 l!5107)))))))

(declare-fun b!851595 () Bool)

(assert (=> b!851595 (= e!560487 (inv!16 (value!55776 (h!14586 (t!95609 l!5107)))))))

(assert (= (and d!265889 c!138230) b!851595))

(assert (= (and d!265889 (not c!138230)) b!851592))

(assert (= (and b!851592 c!138229) b!851594))

(assert (= (and b!851592 (not c!138229)) b!851593))

(assert (= (and b!851593 (not res!389194)) b!851591))

(declare-fun m!1090867 () Bool)

(assert (=> b!851591 m!1090867))

(declare-fun m!1090869 () Bool)

(assert (=> b!851594 m!1090869))

(declare-fun m!1090871 () Bool)

(assert (=> b!851595 m!1090871))

(assert (=> b!851355 d!265889))

(declare-fun d!265891 () Bool)

(assert (=> d!265891 (= (inv!15 (value!55776 (h!14586 l!5107))) (= (charsToBigInt!0 (text!12965 (value!55776 (h!14586 l!5107))) 0) (value!55771 (value!55776 (h!14586 l!5107)))))))

(declare-fun bs!231303 () Bool)

(assert (= bs!231303 d!265891))

(declare-fun m!1090873 () Bool)

(assert (=> bs!231303 m!1090873))

(assert (=> b!851292 d!265891))

(declare-fun d!265893 () Bool)

(declare-fun isBalanced!833 (Conc!3042) Bool)

(assert (=> d!265893 (= (inv!11673 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))) (isBalanced!833 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))))))

(declare-fun bs!231304 () Bool)

(assert (= bs!231304 d!265893))

(declare-fun m!1090875 () Bool)

(assert (=> bs!231304 m!1090875))

(assert (=> tb!59803 d!265893))

(declare-fun b!851596 () Bool)

(declare-fun e!560490 () List!9199)

(assert (=> b!851596 (= e!560490 lt!322610)))

(declare-fun b!851597 () Bool)

(assert (=> b!851597 (= e!560490 (Cons!9183 (h!14584 (++!2380 lt!322615 lt!322612)) (++!2380 (t!95607 (++!2380 lt!322615 lt!322612)) lt!322610)))))

(declare-fun d!265895 () Bool)

(declare-fun e!560491 () Bool)

(assert (=> d!265895 e!560491))

(declare-fun res!389195 () Bool)

(assert (=> d!265895 (=> (not res!389195) (not e!560491))))

(declare-fun lt!322720 () List!9199)

(assert (=> d!265895 (= res!389195 (= (content!1344 lt!322720) ((_ map or) (content!1344 (++!2380 lt!322615 lt!322612)) (content!1344 lt!322610))))))

(assert (=> d!265895 (= lt!322720 e!560490)))

(declare-fun c!138231 () Bool)

(assert (=> d!265895 (= c!138231 ((_ is Nil!9183) (++!2380 lt!322615 lt!322612)))))

(assert (=> d!265895 (= (++!2380 (++!2380 lt!322615 lt!322612) lt!322610) lt!322720)))

(declare-fun b!851599 () Bool)

(assert (=> b!851599 (= e!560491 (or (not (= lt!322610 Nil!9183)) (= lt!322720 (++!2380 lt!322615 lt!322612))))))

(declare-fun b!851598 () Bool)

(declare-fun res!389196 () Bool)

(assert (=> b!851598 (=> (not res!389196) (not e!560491))))

(assert (=> b!851598 (= res!389196 (= (size!7655 lt!322720) (+ (size!7655 (++!2380 lt!322615 lt!322612)) (size!7655 lt!322610))))))

(assert (= (and d!265895 c!138231) b!851596))

(assert (= (and d!265895 (not c!138231)) b!851597))

(assert (= (and d!265895 res!389195) b!851598))

(assert (= (and b!851598 res!389196) b!851599))

(declare-fun m!1090877 () Bool)

(assert (=> b!851597 m!1090877))

(declare-fun m!1090879 () Bool)

(assert (=> d!265895 m!1090879))

(assert (=> d!265895 m!1090243))

(declare-fun m!1090881 () Bool)

(assert (=> d!265895 m!1090881))

(declare-fun m!1090883 () Bool)

(assert (=> d!265895 m!1090883))

(declare-fun m!1090885 () Bool)

(assert (=> b!851598 m!1090885))

(assert (=> b!851598 m!1090243))

(declare-fun m!1090887 () Bool)

(assert (=> b!851598 m!1090887))

(declare-fun m!1090889 () Bool)

(assert (=> b!851598 m!1090889))

(assert (=> b!851179 d!265895))

(declare-fun c!138232 () Bool)

(declare-fun d!265897 () Bool)

(assert (=> d!265897 (= c!138232 ((_ is Cons!9185) (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297)))))

(declare-fun e!560492 () List!9199)

(assert (=> d!265897 (= (printList!474 thiss!20117 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297)) e!560492)))

(declare-fun b!851600 () Bool)

(assert (=> b!851600 (= e!560492 (++!2380 (list!3606 (charsOf!991 (h!14586 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297)))) (printList!474 thiss!20117 (t!95609 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297)))))))

(declare-fun b!851601 () Bool)

(assert (=> b!851601 (= e!560492 Nil!9183)))

(assert (= (and d!265897 c!138232) b!851600))

(assert (= (and d!265897 (not c!138232)) b!851601))

(declare-fun m!1090891 () Bool)

(assert (=> b!851600 m!1090891))

(assert (=> b!851600 m!1090891))

(declare-fun m!1090893 () Bool)

(assert (=> b!851600 m!1090893))

(declare-fun m!1090895 () Bool)

(assert (=> b!851600 m!1090895))

(assert (=> b!851600 m!1090893))

(assert (=> b!851600 m!1090895))

(declare-fun m!1090897 () Bool)

(assert (=> b!851600 m!1090897))

(assert (=> b!851179 d!265897))

(declare-fun b!851602 () Bool)

(declare-fun e!560493 () List!9199)

(assert (=> b!851602 (= e!560493 (++!2380 lt!322612 lt!322610))))

(declare-fun b!851603 () Bool)

(assert (=> b!851603 (= e!560493 (Cons!9183 (h!14584 lt!322615) (++!2380 (t!95607 lt!322615) (++!2380 lt!322612 lt!322610))))))

(declare-fun d!265899 () Bool)

(declare-fun e!560494 () Bool)

(assert (=> d!265899 e!560494))

(declare-fun res!389197 () Bool)

(assert (=> d!265899 (=> (not res!389197) (not e!560494))))

(declare-fun lt!322721 () List!9199)

(assert (=> d!265899 (= res!389197 (= (content!1344 lt!322721) ((_ map or) (content!1344 lt!322615) (content!1344 (++!2380 lt!322612 lt!322610)))))))

(assert (=> d!265899 (= lt!322721 e!560493)))

(declare-fun c!138233 () Bool)

(assert (=> d!265899 (= c!138233 ((_ is Nil!9183) lt!322615))))

(assert (=> d!265899 (= (++!2380 lt!322615 (++!2380 lt!322612 lt!322610)) lt!322721)))

(declare-fun b!851605 () Bool)

(assert (=> b!851605 (= e!560494 (or (not (= (++!2380 lt!322612 lt!322610) Nil!9183)) (= lt!322721 lt!322615)))))

(declare-fun b!851604 () Bool)

(declare-fun res!389198 () Bool)

(assert (=> b!851604 (=> (not res!389198) (not e!560494))))

(assert (=> b!851604 (= res!389198 (= (size!7655 lt!322721) (+ (size!7655 lt!322615) (size!7655 (++!2380 lt!322612 lt!322610)))))))

(assert (= (and d!265899 c!138233) b!851602))

(assert (= (and d!265899 (not c!138233)) b!851603))

(assert (= (and d!265899 res!389197) b!851604))

(assert (= (and b!851604 res!389198) b!851605))

(assert (=> b!851603 m!1090233))

(declare-fun m!1090899 () Bool)

(assert (=> b!851603 m!1090899))

(declare-fun m!1090901 () Bool)

(assert (=> d!265899 m!1090901))

(declare-fun m!1090903 () Bool)

(assert (=> d!265899 m!1090903))

(assert (=> d!265899 m!1090233))

(declare-fun m!1090905 () Bool)

(assert (=> d!265899 m!1090905))

(declare-fun m!1090907 () Bool)

(assert (=> b!851604 m!1090907))

(declare-fun m!1090909 () Bool)

(assert (=> b!851604 m!1090909))

(assert (=> b!851604 m!1090233))

(declare-fun m!1090911 () Bool)

(assert (=> b!851604 m!1090911))

(assert (=> b!851179 d!265899))

(declare-fun d!265901 () Bool)

(declare-fun lt!322722 () BalanceConc!6098)

(assert (=> d!265901 (= (list!3606 lt!322722) (originalCharacters!2278 separatorToken!297))))

(assert (=> d!265901 (= lt!322722 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))))

(assert (=> d!265901 (= (charsOf!991 separatorToken!297) lt!322722)))

(declare-fun b_lambda!28403 () Bool)

(assert (=> (not b_lambda!28403) (not d!265901)))

(assert (=> d!265901 t!95618))

(declare-fun b_and!74743 () Bool)

(assert (= b_and!74739 (and (=> t!95618 result!69244) b_and!74743)))

(assert (=> d!265901 t!95614))

(declare-fun b_and!74745 () Bool)

(assert (= b_and!74737 (and (=> t!95614 result!69238) b_and!74745)))

(assert (=> d!265901 t!95662))

(declare-fun b_and!74747 () Bool)

(assert (= b_and!74735 (and (=> t!95662 result!69294) b_and!74747)))

(assert (=> d!265901 t!95616))

(declare-fun b_and!74749 () Bool)

(assert (= b_and!74741 (and (=> t!95616 result!69242) b_and!74749)))

(assert (=> d!265901 t!95658))

(declare-fun b_and!74751 () Bool)

(assert (= b_and!74733 (and (=> t!95658 result!69284) b_and!74751)))

(declare-fun m!1090913 () Bool)

(assert (=> d!265901 m!1090913))

(assert (=> d!265901 m!1090089))

(assert (=> b!851179 d!265901))

(declare-fun b!851606 () Bool)

(declare-fun e!560495 () List!9199)

(assert (=> b!851606 (= e!560495 lt!322612)))

(declare-fun b!851607 () Bool)

(assert (=> b!851607 (= e!560495 (Cons!9183 (h!14584 lt!322615) (++!2380 (t!95607 lt!322615) lt!322612)))))

(declare-fun d!265903 () Bool)

(declare-fun e!560496 () Bool)

(assert (=> d!265903 e!560496))

(declare-fun res!389199 () Bool)

(assert (=> d!265903 (=> (not res!389199) (not e!560496))))

(declare-fun lt!322723 () List!9199)

(assert (=> d!265903 (= res!389199 (= (content!1344 lt!322723) ((_ map or) (content!1344 lt!322615) (content!1344 lt!322612))))))

(assert (=> d!265903 (= lt!322723 e!560495)))

(declare-fun c!138234 () Bool)

(assert (=> d!265903 (= c!138234 ((_ is Nil!9183) lt!322615))))

(assert (=> d!265903 (= (++!2380 lt!322615 lt!322612) lt!322723)))

(declare-fun b!851609 () Bool)

(assert (=> b!851609 (= e!560496 (or (not (= lt!322612 Nil!9183)) (= lt!322723 lt!322615)))))

(declare-fun b!851608 () Bool)

(declare-fun res!389200 () Bool)

(assert (=> b!851608 (=> (not res!389200) (not e!560496))))

(assert (=> b!851608 (= res!389200 (= (size!7655 lt!322723) (+ (size!7655 lt!322615) (size!7655 lt!322612))))))

(assert (= (and d!265903 c!138234) b!851606))

(assert (= (and d!265903 (not c!138234)) b!851607))

(assert (= (and d!265903 res!389199) b!851608))

(assert (= (and b!851608 res!389200) b!851609))

(declare-fun m!1090915 () Bool)

(assert (=> b!851607 m!1090915))

(declare-fun m!1090917 () Bool)

(assert (=> d!265903 m!1090917))

(assert (=> d!265903 m!1090903))

(declare-fun m!1090919 () Bool)

(assert (=> d!265903 m!1090919))

(declare-fun m!1090921 () Bool)

(assert (=> b!851608 m!1090921))

(assert (=> b!851608 m!1090909))

(declare-fun m!1090923 () Bool)

(assert (=> b!851608 m!1090923))

(assert (=> b!851179 d!265903))

(declare-fun d!265905 () Bool)

(assert (=> d!265905 (= (list!3606 (charsOf!991 separatorToken!297)) (list!3610 (c!138147 (charsOf!991 separatorToken!297))))))

(declare-fun bs!231305 () Bool)

(assert (= bs!231305 d!265905))

(declare-fun m!1090925 () Bool)

(assert (=> bs!231305 m!1090925))

(assert (=> b!851179 d!265905))

(declare-fun b!851610 () Bool)

(declare-fun e!560497 () List!9199)

(assert (=> b!851610 (= e!560497 lt!322610)))

(declare-fun b!851611 () Bool)

(assert (=> b!851611 (= e!560497 (Cons!9183 (h!14584 lt!322612) (++!2380 (t!95607 lt!322612) lt!322610)))))

(declare-fun d!265907 () Bool)

(declare-fun e!560498 () Bool)

(assert (=> d!265907 e!560498))

(declare-fun res!389201 () Bool)

(assert (=> d!265907 (=> (not res!389201) (not e!560498))))

(declare-fun lt!322724 () List!9199)

(assert (=> d!265907 (= res!389201 (= (content!1344 lt!322724) ((_ map or) (content!1344 lt!322612) (content!1344 lt!322610))))))

(assert (=> d!265907 (= lt!322724 e!560497)))

(declare-fun c!138235 () Bool)

(assert (=> d!265907 (= c!138235 ((_ is Nil!9183) lt!322612))))

(assert (=> d!265907 (= (++!2380 lt!322612 lt!322610) lt!322724)))

(declare-fun b!851613 () Bool)

(assert (=> b!851613 (= e!560498 (or (not (= lt!322610 Nil!9183)) (= lt!322724 lt!322612)))))

(declare-fun b!851612 () Bool)

(declare-fun res!389202 () Bool)

(assert (=> b!851612 (=> (not res!389202) (not e!560498))))

(assert (=> b!851612 (= res!389202 (= (size!7655 lt!322724) (+ (size!7655 lt!322612) (size!7655 lt!322610))))))

(assert (= (and d!265907 c!138235) b!851610))

(assert (= (and d!265907 (not c!138235)) b!851611))

(assert (= (and d!265907 res!389201) b!851612))

(assert (= (and b!851612 res!389202) b!851613))

(declare-fun m!1090927 () Bool)

(assert (=> b!851611 m!1090927))

(declare-fun m!1090929 () Bool)

(assert (=> d!265907 m!1090929))

(assert (=> d!265907 m!1090919))

(assert (=> d!265907 m!1090883))

(declare-fun m!1090931 () Bool)

(assert (=> b!851612 m!1090931))

(assert (=> b!851612 m!1090923))

(assert (=> b!851612 m!1090889))

(assert (=> b!851179 d!265907))

(declare-fun d!265909 () Bool)

(assert (=> d!265909 (= ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107)) (Cons!9185 (h!14586 l!5107) ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!851179 d!265909))

(declare-fun d!265911 () Bool)

(declare-fun lt!322725 () BalanceConc!6098)

(assert (=> d!265911 (= (list!3606 lt!322725) (originalCharacters!2278 (h!14586 l!5107)))))

(assert (=> d!265911 (= lt!322725 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))))

(assert (=> d!265911 (= (charsOf!991 (h!14586 l!5107)) lt!322725)))

(declare-fun b_lambda!28405 () Bool)

(assert (=> (not b_lambda!28405) (not d!265911)))

(assert (=> d!265911 t!95654))

(declare-fun b_and!74753 () Bool)

(assert (= b_and!74749 (and (=> t!95654 result!69278) b_and!74753)))

(assert (=> d!265911 t!95656))

(declare-fun b_and!74755 () Bool)

(assert (= b_and!74743 (and (=> t!95656 result!69280) b_and!74755)))

(assert (=> d!265911 t!95660))

(declare-fun b_and!74757 () Bool)

(assert (= b_and!74751 (and (=> t!95660 result!69286) b_and!74757)))

(assert (=> d!265911 t!95664))

(declare-fun b_and!74759 () Bool)

(assert (= b_and!74747 (and (=> t!95664 result!69296) b_and!74759)))

(assert (=> d!265911 t!95652))

(declare-fun b_and!74761 () Bool)

(assert (= b_and!74745 (and (=> t!95652 result!69276) b_and!74761)))

(declare-fun m!1090933 () Bool)

(assert (=> d!265911 m!1090933))

(assert (=> d!265911 m!1090365))

(assert (=> b!851179 d!265911))

(assert (=> b!851179 d!265777))

(assert (=> b!851179 d!265781))

(declare-fun d!265913 () Bool)

(assert (=> d!265913 (= (++!2380 (++!2380 lt!322615 lt!322612) lt!322610) (++!2380 lt!322615 (++!2380 lt!322612 lt!322610)))))

(declare-fun lt!322728 () Unit!13689)

(declare-fun choose!5027 (List!9199 List!9199 List!9199) Unit!13689)

(assert (=> d!265913 (= lt!322728 (choose!5027 lt!322615 lt!322612 lt!322610))))

(assert (=> d!265913 (= (lemmaConcatAssociativity!749 lt!322615 lt!322612 lt!322610) lt!322728)))

(declare-fun bs!231306 () Bool)

(assert (= bs!231306 d!265913))

(assert (=> bs!231306 m!1090243))

(assert (=> bs!231306 m!1090245))

(assert (=> bs!231306 m!1090233))

(assert (=> bs!231306 m!1090243))

(assert (=> bs!231306 m!1090233))

(assert (=> bs!231306 m!1090249))

(declare-fun m!1090935 () Bool)

(assert (=> bs!231306 m!1090935))

(assert (=> b!851179 d!265913))

(declare-fun d!265915 () Bool)

(assert (=> d!265915 (= (list!3606 (charsOf!991 (h!14586 l!5107))) (list!3610 (c!138147 (charsOf!991 (h!14586 l!5107)))))))

(declare-fun bs!231307 () Bool)

(assert (= bs!231307 d!265915))

(declare-fun m!1090937 () Bool)

(assert (=> bs!231307 m!1090937))

(assert (=> b!851179 d!265915))

(declare-fun d!265917 () Bool)

(assert (=> d!265917 (= (list!3606 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))) (list!3610 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))))))

(declare-fun bs!231308 () Bool)

(assert (= bs!231308 d!265917))

(declare-fun m!1090939 () Bool)

(assert (=> bs!231308 m!1090939))

(assert (=> b!851035 d!265917))

(declare-fun d!265919 () Bool)

(declare-fun res!389203 () Bool)

(declare-fun e!560499 () Bool)

(assert (=> d!265919 (=> res!389203 e!560499)))

(assert (=> d!265919 (= res!389203 ((_ is Nil!9185) (list!3605 (seqFromList!1526 lt!322551))))))

(assert (=> d!265919 (= (forall!2163 (list!3605 (seqFromList!1526 lt!322551)) lambda!25447) e!560499)))

(declare-fun b!851614 () Bool)

(declare-fun e!560500 () Bool)

(assert (=> b!851614 (= e!560499 e!560500)))

(declare-fun res!389204 () Bool)

(assert (=> b!851614 (=> (not res!389204) (not e!560500))))

(assert (=> b!851614 (= res!389204 (dynLambda!4277 lambda!25447 (h!14586 (list!3605 (seqFromList!1526 lt!322551)))))))

(declare-fun b!851615 () Bool)

(assert (=> b!851615 (= e!560500 (forall!2163 (t!95609 (list!3605 (seqFromList!1526 lt!322551))) lambda!25447))))

(assert (= (and d!265919 (not res!389203)) b!851614))

(assert (= (and b!851614 res!389204) b!851615))

(declare-fun b_lambda!28407 () Bool)

(assert (=> (not b_lambda!28407) (not b!851614)))

(declare-fun m!1090941 () Bool)

(assert (=> b!851614 m!1090941))

(declare-fun m!1090943 () Bool)

(assert (=> b!851615 m!1090943))

(assert (=> d!265699 d!265919))

(assert (=> d!265699 d!265757))

(declare-fun d!265921 () Bool)

(declare-fun lt!322731 () Bool)

(assert (=> d!265921 (= lt!322731 (forall!2163 (list!3605 (seqFromList!1526 lt!322551)) lambda!25447))))

(declare-fun forall!2168 (Conc!3043 Int) Bool)

(assert (=> d!265921 (= lt!322731 (forall!2168 (c!138148 (seqFromList!1526 lt!322551)) lambda!25447))))

(assert (=> d!265921 (= (forall!2165 (seqFromList!1526 lt!322551) lambda!25447) lt!322731)))

(declare-fun bs!231309 () Bool)

(assert (= bs!231309 d!265921))

(assert (=> bs!231309 m!1090033))

(assert (=> bs!231309 m!1090317))

(assert (=> bs!231309 m!1090317))

(assert (=> bs!231309 m!1090319))

(declare-fun m!1090945 () Bool)

(assert (=> bs!231309 m!1090945))

(assert (=> d!265699 d!265921))

(assert (=> d!265699 d!265653))

(declare-fun d!265923 () Bool)

(declare-fun lt!322734 () Int)

(assert (=> d!265923 (>= lt!322734 0)))

(declare-fun e!560503 () Int)

(assert (=> d!265923 (= lt!322734 e!560503)))

(declare-fun c!138238 () Bool)

(assert (=> d!265923 (= c!138238 ((_ is Nil!9183) (originalCharacters!2278 (h!14586 l!5107))))))

(assert (=> d!265923 (= (size!7655 (originalCharacters!2278 (h!14586 l!5107))) lt!322734)))

(declare-fun b!851620 () Bool)

(assert (=> b!851620 (= e!560503 0)))

(declare-fun b!851621 () Bool)

(assert (=> b!851621 (= e!560503 (+ 1 (size!7655 (t!95607 (originalCharacters!2278 (h!14586 l!5107))))))))

(assert (= (and d!265923 c!138238) b!851620))

(assert (= (and d!265923 (not c!138238)) b!851621))

(declare-fun m!1090949 () Bool)

(assert (=> b!851621 m!1090949))

(assert (=> b!851298 d!265923))

(declare-fun bs!231312 () Bool)

(declare-fun d!265929 () Bool)

(assert (= bs!231312 (and d!265929 d!265875)))

(declare-fun lambda!25470 () Int)

(assert (=> bs!231312 (= (and (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (= (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297))) (toValue!2759 (transformation!1722 (h!14585 rules!2621))))) (= lambda!25470 lambda!25468))))

(declare-fun bs!231313 () Bool)

(assert (= bs!231313 (and d!265929 d!265887)))

(assert (=> bs!231313 (= (and (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) (= (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (= lambda!25470 lambda!25469))))

(assert (=> d!265929 true))

(assert (=> d!265929 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) (dynLambda!4285 order!5895 lambda!25470))))

(assert (=> d!265929 true))

(assert (=> d!265929 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))) (dynLambda!4285 order!5895 lambda!25470))))

(assert (=> d!265929 (= (semiInverseModEq!670 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))) (Forall!411 lambda!25470))))

(declare-fun bs!231314 () Bool)

(assert (= bs!231314 d!265929))

(declare-fun m!1090957 () Bool)

(assert (=> bs!231314 m!1090957))

(assert (=> d!265719 d!265929))

(declare-fun bs!231318 () Bool)

(declare-fun d!265933 () Bool)

(assert (= bs!231318 (and d!265933 d!265759)))

(declare-fun lambda!25472 () Int)

(assert (=> bs!231318 (= (= (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))) (= lambda!25472 lambda!25452))))

(assert (=> d!265933 true))

(assert (=> d!265933 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107))))) (dynLambda!4282 order!5889 lambda!25472))))

(assert (=> d!265933 (= (equivClasses!637 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107))))) (Forall2!320 lambda!25472))))

(declare-fun bs!231319 () Bool)

(assert (= bs!231319 d!265933))

(declare-fun m!1090961 () Bool)

(assert (=> bs!231319 m!1090961))

(assert (=> b!851268 d!265933))

(declare-fun b!851629 () Bool)

(declare-fun e!560509 () List!9199)

(assert (=> b!851629 (= e!560509 (printList!474 thiss!20117 (t!95609 lt!322613)))))

(declare-fun b!851630 () Bool)

(assert (=> b!851630 (= e!560509 (Cons!9183 (h!14584 (list!3606 (charsOf!991 (h!14586 lt!322613)))) (++!2380 (t!95607 (list!3606 (charsOf!991 (h!14586 lt!322613)))) (printList!474 thiss!20117 (t!95609 lt!322613)))))))

(declare-fun d!265937 () Bool)

(declare-fun e!560510 () Bool)

(assert (=> d!265937 e!560510))

(declare-fun res!389208 () Bool)

(assert (=> d!265937 (=> (not res!389208) (not e!560510))))

(declare-fun lt!322735 () List!9199)

(assert (=> d!265937 (= res!389208 (= (content!1344 lt!322735) ((_ map or) (content!1344 (list!3606 (charsOf!991 (h!14586 lt!322613)))) (content!1344 (printList!474 thiss!20117 (t!95609 lt!322613))))))))

(assert (=> d!265937 (= lt!322735 e!560509)))

(declare-fun c!138241 () Bool)

(assert (=> d!265937 (= c!138241 ((_ is Nil!9183) (list!3606 (charsOf!991 (h!14586 lt!322613)))))))

(assert (=> d!265937 (= (++!2380 (list!3606 (charsOf!991 (h!14586 lt!322613))) (printList!474 thiss!20117 (t!95609 lt!322613))) lt!322735)))

(declare-fun b!851632 () Bool)

(assert (=> b!851632 (= e!560510 (or (not (= (printList!474 thiss!20117 (t!95609 lt!322613)) Nil!9183)) (= lt!322735 (list!3606 (charsOf!991 (h!14586 lt!322613))))))))

(declare-fun b!851631 () Bool)

(declare-fun res!389209 () Bool)

(assert (=> b!851631 (=> (not res!389209) (not e!560510))))

(assert (=> b!851631 (= res!389209 (= (size!7655 lt!322735) (+ (size!7655 (list!3606 (charsOf!991 (h!14586 lt!322613)))) (size!7655 (printList!474 thiss!20117 (t!95609 lt!322613))))))))

(assert (= (and d!265937 c!138241) b!851629))

(assert (= (and d!265937 (not c!138241)) b!851630))

(assert (= (and d!265937 res!389208) b!851631))

(assert (= (and b!851631 res!389209) b!851632))

(assert (=> b!851630 m!1090217))

(declare-fun m!1090967 () Bool)

(assert (=> b!851630 m!1090967))

(declare-fun m!1090969 () Bool)

(assert (=> d!265937 m!1090969))

(assert (=> d!265937 m!1090215))

(declare-fun m!1090971 () Bool)

(assert (=> d!265937 m!1090971))

(assert (=> d!265937 m!1090217))

(declare-fun m!1090973 () Bool)

(assert (=> d!265937 m!1090973))

(declare-fun m!1090975 () Bool)

(assert (=> b!851631 m!1090975))

(assert (=> b!851631 m!1090215))

(declare-fun m!1090977 () Bool)

(assert (=> b!851631 m!1090977))

(assert (=> b!851631 m!1090217))

(declare-fun m!1090979 () Bool)

(assert (=> b!851631 m!1090979))

(assert (=> b!851177 d!265937))

(declare-fun d!265941 () Bool)

(assert (=> d!265941 (= (list!3606 (charsOf!991 (h!14586 lt!322613))) (list!3610 (c!138147 (charsOf!991 (h!14586 lt!322613)))))))

(declare-fun bs!231320 () Bool)

(assert (= bs!231320 d!265941))

(declare-fun m!1090981 () Bool)

(assert (=> bs!231320 m!1090981))

(assert (=> b!851177 d!265941))

(declare-fun d!265943 () Bool)

(declare-fun lt!322736 () BalanceConc!6098)

(assert (=> d!265943 (= (list!3606 lt!322736) (originalCharacters!2278 (h!14586 lt!322613)))))

(assert (=> d!265943 (= lt!322736 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613)))) (value!55776 (h!14586 lt!322613))))))

(assert (=> d!265943 (= (charsOf!991 (h!14586 lt!322613)) lt!322736)))

(declare-fun b_lambda!28409 () Bool)

(assert (=> (not b_lambda!28409) (not d!265943)))

(declare-fun tb!59847 () Bool)

(declare-fun t!95701 () Bool)

(assert (=> (and b!851315 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613))))) t!95701) tb!59847))

(declare-fun b!851633 () Bool)

(declare-fun e!560511 () Bool)

(declare-fun tp!268144 () Bool)

(assert (=> b!851633 (= e!560511 (and (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613)))) (value!55776 (h!14586 lt!322613))))) tp!268144))))

(declare-fun result!69328 () Bool)

(assert (=> tb!59847 (= result!69328 (and (inv!11673 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613)))) (value!55776 (h!14586 lt!322613)))) e!560511))))

(assert (= tb!59847 b!851633))

(declare-fun m!1090985 () Bool)

(assert (=> b!851633 m!1090985))

(declare-fun m!1090987 () Bool)

(assert (=> tb!59847 m!1090987))

(assert (=> d!265943 t!95701))

(declare-fun b_and!74763 () Bool)

(assert (= b_and!74757 (and (=> t!95701 result!69328) b_and!74763)))

(declare-fun t!95703 () Bool)

(declare-fun tb!59849 () Bool)

(assert (=> (and b!850995 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613))))) t!95703) tb!59849))

(declare-fun result!69330 () Bool)

(assert (= result!69330 result!69328))

(assert (=> d!265943 t!95703))

(declare-fun b_and!74765 () Bool)

(assert (= b_and!74755 (and (=> t!95703 result!69330) b_and!74765)))

(declare-fun tb!59851 () Bool)

(declare-fun t!95705 () Bool)

(assert (=> (and b!851357 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613))))) t!95705) tb!59851))

(declare-fun result!69332 () Bool)

(assert (= result!69332 result!69328))

(assert (=> d!265943 t!95705))

(declare-fun b_and!74767 () Bool)

(assert (= b_and!74759 (and (=> t!95705 result!69332) b_and!74767)))

(declare-fun t!95707 () Bool)

(declare-fun tb!59853 () Bool)

(assert (=> (and b!850999 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613))))) t!95707) tb!59853))

(declare-fun result!69334 () Bool)

(assert (= result!69334 result!69328))

(assert (=> d!265943 t!95707))

(declare-fun b_and!74769 () Bool)

(assert (= b_and!74753 (and (=> t!95707 result!69334) b_and!74769)))

(declare-fun tb!59855 () Bool)

(declare-fun t!95709 () Bool)

(assert (=> (and b!850998 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613))))) t!95709) tb!59855))

(declare-fun result!69336 () Bool)

(assert (= result!69336 result!69328))

(assert (=> d!265943 t!95709))

(declare-fun b_and!74771 () Bool)

(assert (= b_and!74761 (and (=> t!95709 result!69336) b_and!74771)))

(declare-fun m!1090989 () Bool)

(assert (=> d!265943 m!1090989))

(declare-fun m!1090991 () Bool)

(assert (=> d!265943 m!1090991))

(assert (=> b!851177 d!265943))

(declare-fun d!265947 () Bool)

(declare-fun c!138242 () Bool)

(assert (=> d!265947 (= c!138242 ((_ is Cons!9185) (t!95609 lt!322613)))))

(declare-fun e!560512 () List!9199)

(assert (=> d!265947 (= (printList!474 thiss!20117 (t!95609 lt!322613)) e!560512)))

(declare-fun b!851634 () Bool)

(assert (=> b!851634 (= e!560512 (++!2380 (list!3606 (charsOf!991 (h!14586 (t!95609 lt!322613)))) (printList!474 thiss!20117 (t!95609 (t!95609 lt!322613)))))))

(declare-fun b!851635 () Bool)

(assert (=> b!851635 (= e!560512 Nil!9183)))

(assert (= (and d!265947 c!138242) b!851634))

(assert (= (and d!265947 (not c!138242)) b!851635))

(declare-fun m!1090995 () Bool)

(assert (=> b!851634 m!1090995))

(assert (=> b!851634 m!1090995))

(declare-fun m!1090997 () Bool)

(assert (=> b!851634 m!1090997))

(declare-fun m!1090999 () Bool)

(assert (=> b!851634 m!1090999))

(assert (=> b!851634 m!1090997))

(assert (=> b!851634 m!1090999))

(declare-fun m!1091001 () Bool)

(assert (=> b!851634 m!1091001))

(assert (=> b!851177 d!265947))

(declare-fun d!265951 () Bool)

(declare-fun charsToBigInt!1 (List!9198) Int)

(assert (=> d!265951 (= (inv!17 (value!55776 (h!14586 l!5107))) (= (charsToBigInt!1 (text!12964 (value!55776 (h!14586 l!5107)))) (value!55768 (value!55776 (h!14586 l!5107)))))))

(declare-fun bs!231330 () Bool)

(assert (= bs!231330 d!265951))

(declare-fun m!1091009 () Bool)

(assert (=> bs!231330 m!1091009))

(assert (=> b!851295 d!265951))

(declare-fun d!265955 () Bool)

(declare-fun res!389212 () Bool)

(declare-fun e!560518 () Bool)

(assert (=> d!265955 (=> res!389212 e!560518)))

(assert (=> d!265955 (= res!389212 (not ((_ is Cons!9184) (t!95608 rules!2621))))))

(assert (=> d!265955 (= (sepAndNonSepRulesDisjointChars!522 rules!2621 (t!95608 rules!2621)) e!560518)))

(declare-fun b!851641 () Bool)

(declare-fun e!560519 () Bool)

(assert (=> b!851641 (= e!560518 e!560519)))

(declare-fun res!389213 () Bool)

(assert (=> b!851641 (=> (not res!389213) (not e!560519))))

(assert (=> b!851641 (= res!389213 (ruleDisjointCharsFromAllFromOtherType!237 (h!14585 (t!95608 rules!2621)) rules!2621))))

(declare-fun b!851642 () Bool)

(assert (=> b!851642 (= e!560519 (sepAndNonSepRulesDisjointChars!522 rules!2621 (t!95608 (t!95608 rules!2621))))))

(assert (= (and d!265955 (not res!389212)) b!851641))

(assert (= (and b!851641 res!389213) b!851642))

(declare-fun m!1091011 () Bool)

(assert (=> b!851641 m!1091011))

(declare-fun m!1091013 () Bool)

(assert (=> b!851642 m!1091013))

(assert (=> b!851276 d!265955))

(declare-fun bs!231331 () Bool)

(declare-fun d!265957 () Bool)

(assert (= bs!231331 (and d!265957 d!265819)))

(declare-fun lambda!25475 () Int)

(assert (=> bs!231331 (= lambda!25475 lambda!25457)))

(declare-fun bs!231332 () Bool)

(assert (= bs!231332 (and d!265957 d!265755)))

(assert (=> bs!231332 (= lambda!25475 lambda!25449)))

(declare-fun bs!231333 () Bool)

(assert (= bs!231333 (and d!265957 d!265657)))

(assert (=> bs!231333 (= lambda!25475 lambda!25437)))

(declare-fun bs!231334 () Bool)

(assert (= bs!231334 (and d!265957 d!265699)))

(assert (=> bs!231334 (= lambda!25475 lambda!25447)))

(declare-fun bs!231335 () Bool)

(assert (= bs!231335 (and d!265957 d!265729)))

(assert (=> bs!231335 (= lambda!25475 lambda!25448)))

(declare-fun bs!231336 () Bool)

(assert (= bs!231336 (and d!265957 b!850996)))

(assert (=> bs!231336 (not (= lambda!25475 lambda!25430))))

(declare-fun b!851651 () Bool)

(declare-fun e!560526 () Bool)

(assert (=> b!851651 (= e!560526 true)))

(declare-fun b!851650 () Bool)

(declare-fun e!560525 () Bool)

(assert (=> b!851650 (= e!560525 e!560526)))

(declare-fun b!851649 () Bool)

(declare-fun e!560524 () Bool)

(assert (=> b!851649 (= e!560524 e!560525)))

(assert (=> d!265957 e!560524))

(assert (= b!851650 b!851651))

(assert (= b!851649 b!851650))

(assert (= (and d!265957 ((_ is Cons!9184) rules!2621)) b!851649))

(assert (=> b!851651 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25475))))

(assert (=> b!851651 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25475))))

(assert (=> d!265957 true))

(declare-fun lt!322738 () Bool)

(assert (=> d!265957 (= lt!322738 (forall!2163 (t!95609 l!5107) lambda!25475))))

(declare-fun e!560521 () Bool)

(assert (=> d!265957 (= lt!322738 e!560521)))

(declare-fun res!389214 () Bool)

(assert (=> d!265957 (=> res!389214 e!560521)))

(assert (=> d!265957 (= res!389214 (not ((_ is Cons!9185) (t!95609 l!5107))))))

(assert (=> d!265957 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265957 (= (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 l!5107)) lt!322738)))

(declare-fun b!851643 () Bool)

(declare-fun e!560520 () Bool)

(assert (=> b!851643 (= e!560521 e!560520)))

(declare-fun res!389215 () Bool)

(assert (=> b!851643 (=> (not res!389215) (not e!560520))))

(assert (=> b!851643 (= res!389215 (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 (t!95609 l!5107))))))

(declare-fun b!851644 () Bool)

(assert (=> b!851644 (= e!560520 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 (t!95609 l!5107))))))

(assert (= (and d!265957 (not res!389214)) b!851643))

(assert (= (and b!851643 res!389215) b!851644))

(declare-fun m!1091029 () Bool)

(assert (=> d!265957 m!1091029))

(assert (=> d!265957 m!1090055))

(declare-fun m!1091031 () Bool)

(assert (=> b!851643 m!1091031))

(declare-fun m!1091033 () Bool)

(assert (=> b!851644 m!1091033))

(assert (=> b!851301 d!265957))

(declare-fun bs!231337 () Bool)

(declare-fun d!265965 () Bool)

(assert (= bs!231337 (and d!265965 d!265819)))

(declare-fun lambda!25476 () Int)

(assert (=> bs!231337 (= lambda!25476 lambda!25457)))

(declare-fun bs!231338 () Bool)

(assert (= bs!231338 (and d!265965 d!265755)))

(assert (=> bs!231338 (= lambda!25476 lambda!25449)))

(declare-fun bs!231339 () Bool)

(assert (= bs!231339 (and d!265965 d!265957)))

(assert (=> bs!231339 (= lambda!25476 lambda!25475)))

(declare-fun bs!231340 () Bool)

(assert (= bs!231340 (and d!265965 d!265657)))

(assert (=> bs!231340 (= lambda!25476 lambda!25437)))

(declare-fun bs!231341 () Bool)

(assert (= bs!231341 (and d!265965 d!265699)))

(assert (=> bs!231341 (= lambda!25476 lambda!25447)))

(declare-fun bs!231342 () Bool)

(assert (= bs!231342 (and d!265965 d!265729)))

(assert (=> bs!231342 (= lambda!25476 lambda!25448)))

(declare-fun bs!231343 () Bool)

(assert (= bs!231343 (and d!265965 b!850996)))

(assert (=> bs!231343 (not (= lambda!25476 lambda!25430))))

(declare-fun b!851656 () Bool)

(declare-fun e!560531 () Bool)

(assert (=> b!851656 (= e!560531 true)))

(declare-fun b!851655 () Bool)

(declare-fun e!560530 () Bool)

(assert (=> b!851655 (= e!560530 e!560531)))

(declare-fun b!851654 () Bool)

(declare-fun e!560529 () Bool)

(assert (=> b!851654 (= e!560529 e!560530)))

(assert (=> d!265965 e!560529))

(assert (= b!851655 b!851656))

(assert (= b!851654 b!851655))

(assert (= (and d!265965 ((_ is Cons!9184) rules!2621)) b!851654))

(assert (=> b!851656 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25476))))

(assert (=> b!851656 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4280 order!5885 lambda!25476))))

(assert (=> d!265965 true))

(declare-fun lt!322740 () Bool)

(assert (=> d!265965 (= lt!322740 (forall!2163 (t!95609 lt!322551) lambda!25476))))

(declare-fun e!560528 () Bool)

(assert (=> d!265965 (= lt!322740 e!560528)))

(declare-fun res!389218 () Bool)

(assert (=> d!265965 (=> res!389218 e!560528)))

(assert (=> d!265965 (= res!389218 (not ((_ is Cons!9185) (t!95609 lt!322551))))))

(assert (=> d!265965 (not (isEmpty!5427 rules!2621))))

(assert (=> d!265965 (= (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 lt!322551)) lt!322740)))

(declare-fun b!851652 () Bool)

(declare-fun e!560527 () Bool)

(assert (=> b!851652 (= e!560528 e!560527)))

(declare-fun res!389219 () Bool)

(assert (=> b!851652 (=> (not res!389219) (not e!560527))))

(assert (=> b!851652 (= res!389219 (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 (t!95609 lt!322551))))))

(declare-fun b!851653 () Bool)

(assert (=> b!851653 (= e!560527 (rulesProduceEachTokenIndividuallyList!412 thiss!20117 rules!2621 (t!95609 (t!95609 lt!322551))))))

(assert (= (and d!265965 (not res!389218)) b!851652))

(assert (= (and b!851652 res!389219) b!851653))

(declare-fun m!1091035 () Bool)

(assert (=> d!265965 m!1091035))

(assert (=> d!265965 m!1090055))

(declare-fun m!1091037 () Bool)

(assert (=> b!851652 m!1091037))

(declare-fun m!1091041 () Bool)

(assert (=> b!851653 m!1091041))

(assert (=> b!851140 d!265965))

(declare-fun d!265967 () Bool)

(assert (=> d!265967 (= (inv!17 (value!55776 separatorToken!297)) (= (charsToBigInt!1 (text!12964 (value!55776 separatorToken!297))) (value!55768 (value!55776 separatorToken!297))))))

(declare-fun bs!231345 () Bool)

(assert (= bs!231345 d!265967))

(declare-fun m!1091043 () Bool)

(assert (=> bs!231345 m!1091043))

(assert (=> b!851290 d!265967))

(declare-fun d!265969 () Bool)

(declare-fun lt!322744 () Bool)

(assert (=> d!265969 (= lt!322744 (isEmpty!5430 (list!3606 (_2!6015 lt!322559))))))

(assert (=> d!265969 (= lt!322744 (isEmpty!5432 (c!138147 (_2!6015 lt!322559))))))

(assert (=> d!265969 (= (isEmpty!5429 (_2!6015 lt!322559)) lt!322744)))

(declare-fun bs!231346 () Bool)

(assert (= bs!231346 d!265969))

(declare-fun m!1091045 () Bool)

(assert (=> bs!231346 m!1091045))

(assert (=> bs!231346 m!1091045))

(declare-fun m!1091047 () Bool)

(assert (=> bs!231346 m!1091047))

(declare-fun m!1091049 () Bool)

(assert (=> bs!231346 m!1091049))

(assert (=> b!851023 d!265969))

(declare-fun d!265973 () Bool)

(declare-fun c!138250 () Bool)

(assert (=> d!265973 (= c!138250 ((_ is Node!3042) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))))))

(declare-fun e!560543 () Bool)

(assert (=> d!265973 (= (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))) e!560543)))

(declare-fun b!851677 () Bool)

(declare-fun inv!11676 (Conc!3042) Bool)

(assert (=> b!851677 (= e!560543 (inv!11676 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))))))

(declare-fun b!851678 () Bool)

(declare-fun e!560544 () Bool)

(assert (=> b!851678 (= e!560543 e!560544)))

(declare-fun res!389228 () Bool)

(assert (=> b!851678 (= res!389228 (not ((_ is Leaf!4491) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))))))))

(assert (=> b!851678 (=> res!389228 e!560544)))

(declare-fun b!851679 () Bool)

(declare-fun inv!11677 (Conc!3042) Bool)

(assert (=> b!851679 (= e!560544 (inv!11677 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))))))

(assert (= (and d!265973 c!138250) b!851677))

(assert (= (and d!265973 (not c!138250)) b!851678))

(assert (= (and b!851678 (not res!389228)) b!851679))

(declare-fun m!1091095 () Bool)

(assert (=> b!851677 m!1091095))

(declare-fun m!1091097 () Bool)

(assert (=> b!851679 m!1091097))

(assert (=> b!851299 d!265973))

(declare-fun d!265991 () Bool)

(declare-fun c!138251 () Bool)

(assert (=> d!265991 (= c!138251 ((_ is Node!3042) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))))))

(declare-fun e!560545 () Bool)

(assert (=> d!265991 (= (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))) e!560545)))

(declare-fun b!851680 () Bool)

(assert (=> b!851680 (= e!560545 (inv!11676 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))))))

(declare-fun b!851681 () Bool)

(declare-fun e!560546 () Bool)

(assert (=> b!851681 (= e!560545 e!560546)))

(declare-fun res!389229 () Bool)

(assert (=> b!851681 (= res!389229 (not ((_ is Leaf!4491) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))))))))

(assert (=> b!851681 (=> res!389229 e!560546)))

(declare-fun b!851682 () Bool)

(assert (=> b!851682 (= e!560546 (inv!11677 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))))))

(assert (= (and d!265991 c!138251) b!851680))

(assert (= (and d!265991 (not c!138251)) b!851681))

(assert (= (and b!851681 (not res!389229)) b!851682))

(declare-fun m!1091103 () Bool)

(assert (=> b!851680 m!1091103))

(declare-fun m!1091105 () Bool)

(assert (=> b!851682 m!1091105))

(assert (=> b!851041 d!265991))

(declare-fun d!265997 () Bool)

(declare-fun res!389230 () Bool)

(declare-fun e!560548 () Bool)

(assert (=> d!265997 (=> (not res!389230) (not e!560548))))

(assert (=> d!265997 (= res!389230 (not (isEmpty!5430 (originalCharacters!2278 (h!14586 (t!95609 l!5107))))))))

(assert (=> d!265997 (= (inv!11669 (h!14586 (t!95609 l!5107))) e!560548)))

(declare-fun b!851685 () Bool)

(declare-fun res!389231 () Bool)

(assert (=> b!851685 (=> (not res!389231) (not e!560548))))

(assert (=> b!851685 (= res!389231 (= (originalCharacters!2278 (h!14586 (t!95609 l!5107))) (list!3606 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (value!55776 (h!14586 (t!95609 l!5107)))))))))

(declare-fun b!851686 () Bool)

(assert (=> b!851686 (= e!560548 (= (size!7651 (h!14586 (t!95609 l!5107))) (size!7655 (originalCharacters!2278 (h!14586 (t!95609 l!5107))))))))

(assert (= (and d!265997 res!389230) b!851685))

(assert (= (and b!851685 res!389231) b!851686))

(declare-fun b_lambda!28415 () Bool)

(assert (=> (not b_lambda!28415) (not b!851685)))

(declare-fun t!95711 () Bool)

(declare-fun tb!59857 () Bool)

(assert (=> (and b!850995 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) t!95711) tb!59857))

(declare-fun b!851687 () Bool)

(declare-fun e!560549 () Bool)

(declare-fun tp!268145 () Bool)

(assert (=> b!851687 (= e!560549 (and (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (value!55776 (h!14586 (t!95609 l!5107)))))) tp!268145))))

(declare-fun result!69338 () Bool)

(assert (=> tb!59857 (= result!69338 (and (inv!11673 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (value!55776 (h!14586 (t!95609 l!5107))))) e!560549))))

(assert (= tb!59857 b!851687))

(declare-fun m!1091115 () Bool)

(assert (=> b!851687 m!1091115))

(declare-fun m!1091117 () Bool)

(assert (=> tb!59857 m!1091117))

(assert (=> b!851685 t!95711))

(declare-fun b_and!74793 () Bool)

(assert (= b_and!74765 (and (=> t!95711 result!69338) b_and!74793)))

(declare-fun t!95713 () Bool)

(declare-fun tb!59859 () Bool)

(assert (=> (and b!850998 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) t!95713) tb!59859))

(declare-fun result!69340 () Bool)

(assert (= result!69340 result!69338))

(assert (=> b!851685 t!95713))

(declare-fun b_and!74795 () Bool)

(assert (= b_and!74771 (and (=> t!95713 result!69340) b_and!74795)))

(declare-fun tb!59861 () Bool)

(declare-fun t!95715 () Bool)

(assert (=> (and b!850999 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) t!95715) tb!59861))

(declare-fun result!69342 () Bool)

(assert (= result!69342 result!69338))

(assert (=> b!851685 t!95715))

(declare-fun b_and!74797 () Bool)

(assert (= b_and!74769 (and (=> t!95715 result!69342) b_and!74797)))

(declare-fun t!95717 () Bool)

(declare-fun tb!59863 () Bool)

(assert (=> (and b!851357 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) t!95717) tb!59863))

(declare-fun result!69344 () Bool)

(assert (= result!69344 result!69338))

(assert (=> b!851685 t!95717))

(declare-fun b_and!74799 () Bool)

(assert (= b_and!74767 (and (=> t!95717 result!69344) b_and!74799)))

(declare-fun tb!59865 () Bool)

(declare-fun t!95719 () Bool)

(assert (=> (and b!851315 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) t!95719) tb!59865))

(declare-fun result!69346 () Bool)

(assert (= result!69346 result!69338))

(assert (=> b!851685 t!95719))

(declare-fun b_and!74801 () Bool)

(assert (= b_and!74763 (and (=> t!95719 result!69346) b_and!74801)))

(declare-fun m!1091119 () Bool)

(assert (=> d!265997 m!1091119))

(declare-fun m!1091121 () Bool)

(assert (=> b!851685 m!1091121))

(assert (=> b!851685 m!1091121))

(declare-fun m!1091123 () Bool)

(assert (=> b!851685 m!1091123))

(declare-fun m!1091125 () Bool)

(assert (=> b!851686 m!1091125))

(assert (=> b!851354 d!265997))

(declare-fun d!266001 () Bool)

(assert (=> d!266001 (= (inv!11673 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))) (isBalanced!833 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))))))

(declare-fun bs!231350 () Bool)

(assert (= bs!231350 d!266001))

(declare-fun m!1091127 () Bool)

(assert (=> bs!231350 m!1091127))

(assert (=> tb!59777 d!266001))

(declare-fun bs!231351 () Bool)

(declare-fun d!266003 () Bool)

(assert (= bs!231351 (and d!266003 d!265759)))

(declare-fun lambda!25477 () Int)

(assert (=> bs!231351 (= (= (toValue!2759 (transformation!1722 (h!14585 rules!2621))) (toValue!2759 (transformation!1722 (rule!3145 separatorToken!297)))) (= lambda!25477 lambda!25452))))

(declare-fun bs!231352 () Bool)

(assert (= bs!231352 (and d!266003 d!265933)))

(assert (=> bs!231352 (= (= (toValue!2759 (transformation!1722 (h!14585 rules!2621))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 l!5107))))) (= lambda!25477 lambda!25472))))

(assert (=> d!266003 true))

(assert (=> d!266003 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (dynLambda!4282 order!5889 lambda!25477))))

(assert (=> d!266003 (= (equivClasses!637 (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toValue!2759 (transformation!1722 (h!14585 rules!2621)))) (Forall2!320 lambda!25477))))

(declare-fun bs!231353 () Bool)

(assert (= bs!231353 d!266003))

(declare-fun m!1091129 () Bool)

(assert (=> bs!231353 m!1091129))

(assert (=> b!851269 d!266003))

(declare-fun d!266005 () Bool)

(assert (=> d!266005 (= (inv!11665 (tag!1984 (rule!3145 (h!14586 (t!95609 l!5107))))) (= (mod (str.len (value!55775 (tag!1984 (rule!3145 (h!14586 (t!95609 l!5107)))))) 2) 0))))

(assert (=> b!851356 d!266005))

(declare-fun d!266007 () Bool)

(declare-fun res!389232 () Bool)

(declare-fun e!560552 () Bool)

(assert (=> d!266007 (=> (not res!389232) (not e!560552))))

(assert (=> d!266007 (= res!389232 (semiInverseModEq!670 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))))))

(assert (=> d!266007 (= (inv!11668 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) e!560552)))

(declare-fun b!851692 () Bool)

(assert (=> b!851692 (= e!560552 (equivClasses!637 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toValue!2759 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))))))

(assert (= (and d!266007 res!389232) b!851692))

(declare-fun m!1091131 () Bool)

(assert (=> d!266007 m!1091131))

(declare-fun m!1091133 () Bool)

(assert (=> b!851692 m!1091133))

(assert (=> b!851356 d!266007))

(declare-fun d!266009 () Bool)

(assert (=> d!266009 (= (inv!11665 (tag!1984 (h!14585 (t!95608 rules!2621)))) (= (mod (str.len (value!55775 (tag!1984 (h!14585 (t!95608 rules!2621))))) 2) 0))))

(assert (=> b!851314 d!266009))

(declare-fun d!266011 () Bool)

(declare-fun res!389233 () Bool)

(declare-fun e!560553 () Bool)

(assert (=> d!266011 (=> (not res!389233) (not e!560553))))

(assert (=> d!266011 (= res!389233 (semiInverseModEq!670 (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toValue!2759 (transformation!1722 (h!14585 (t!95608 rules!2621))))))))

(assert (=> d!266011 (= (inv!11668 (transformation!1722 (h!14585 (t!95608 rules!2621)))) e!560553)))

(declare-fun b!851693 () Bool)

(assert (=> b!851693 (= e!560553 (equivClasses!637 (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toValue!2759 (transformation!1722 (h!14585 (t!95608 rules!2621))))))))

(assert (= (and d!266011 res!389233) b!851693))

(declare-fun m!1091135 () Bool)

(assert (=> d!266011 m!1091135))

(declare-fun m!1091137 () Bool)

(assert (=> b!851693 m!1091137))

(assert (=> b!851314 d!266011))

(declare-fun d!266013 () Bool)

(assert (=> d!266013 (= (list!3606 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))) (list!3610 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))))))

(declare-fun bs!231354 () Bool)

(assert (= bs!231354 d!266013))

(declare-fun m!1091139 () Bool)

(assert (=> bs!231354 m!1091139))

(assert (=> b!851297 d!266013))

(declare-fun d!266015 () Bool)

(declare-fun c!138255 () Bool)

(assert (=> d!266015 (= c!138255 ((_ is Cons!9185) ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107))))))

(declare-fun e!560554 () List!9199)

(assert (=> d!266015 (= (printList!474 thiss!20117 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107))) e!560554)))

(declare-fun b!851694 () Bool)

(assert (=> b!851694 (= e!560554 (++!2380 (list!3606 (charsOf!991 (h!14586 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107))))) (printList!474 thiss!20117 (t!95609 ($colon$colon!87 ($colon$colon!87 (withSeparatorTokenList!54 thiss!20117 (t!95609 l!5107) separatorToken!297) separatorToken!297) (h!14586 l!5107))))))))

(declare-fun b!851695 () Bool)

(assert (=> b!851695 (= e!560554 Nil!9183)))

(assert (= (and d!266015 c!138255) b!851694))

(assert (= (and d!266015 (not c!138255)) b!851695))

(declare-fun m!1091141 () Bool)

(assert (=> b!851694 m!1091141))

(assert (=> b!851694 m!1091141))

(declare-fun m!1091143 () Bool)

(assert (=> b!851694 m!1091143))

(declare-fun m!1091145 () Bool)

(assert (=> b!851694 m!1091145))

(assert (=> b!851694 m!1091143))

(assert (=> b!851694 m!1091145))

(declare-fun m!1091147 () Bool)

(assert (=> b!851694 m!1091147))

(assert (=> b!851182 d!266015))

(assert (=> b!851182 d!265909))

(assert (=> b!851182 d!265777))

(assert (=> b!851182 d!265781))

(declare-fun d!266017 () Bool)

(assert (=> d!266017 true))

(declare-fun lt!322752 () Bool)

(declare-fun rulesValidInductive!609 (LexerInterface!1524 List!9200) Bool)

(assert (=> d!266017 (= lt!322752 (rulesValidInductive!609 thiss!20117 rules!2621))))

(declare-fun lambda!25480 () Int)

(declare-fun forall!2169 (List!9200 Int) Bool)

(assert (=> d!266017 (= lt!322752 (forall!2169 rules!2621 lambda!25480))))

(assert (=> d!266017 (= (rulesValid!601 thiss!20117 rules!2621) lt!322752)))

(declare-fun bs!231356 () Bool)

(assert (= bs!231356 d!266017))

(declare-fun m!1091155 () Bool)

(assert (=> bs!231356 m!1091155))

(declare-fun m!1091157 () Bool)

(assert (=> bs!231356 m!1091157))

(assert (=> d!265707 d!266017))

(declare-fun d!266023 () Bool)

(declare-fun lt!322753 () Int)

(assert (=> d!266023 (>= lt!322753 0)))

(declare-fun e!560562 () Int)

(assert (=> d!266023 (= lt!322753 e!560562)))

(declare-fun c!138257 () Bool)

(assert (=> d!266023 (= c!138257 ((_ is Nil!9183) (originalCharacters!2278 separatorToken!297)))))

(assert (=> d!266023 (= (size!7655 (originalCharacters!2278 separatorToken!297)) lt!322753)))

(declare-fun b!851706 () Bool)

(assert (=> b!851706 (= e!560562 0)))

(declare-fun b!851707 () Bool)

(assert (=> b!851707 (= e!560562 (+ 1 (size!7655 (t!95607 (originalCharacters!2278 separatorToken!297)))))))

(assert (= (and d!266023 c!138257) b!851706))

(assert (= (and d!266023 (not c!138257)) b!851707))

(declare-fun m!1091159 () Bool)

(assert (=> b!851707 m!1091159))

(assert (=> b!851036 d!266023))

(declare-fun b!851709 () Bool)

(declare-fun e!560563 () Bool)

(declare-fun tp!268150 () Bool)

(declare-fun tp!268146 () Bool)

(assert (=> b!851709 (= e!560563 (and tp!268150 tp!268146))))

(declare-fun b!851710 () Bool)

(declare-fun tp!268149 () Bool)

(assert (=> b!851710 (= e!560563 tp!268149)))

(declare-fun b!851711 () Bool)

(declare-fun tp!268148 () Bool)

(declare-fun tp!268147 () Bool)

(assert (=> b!851711 (= e!560563 (and tp!268148 tp!268147))))

(assert (=> b!851333 (= tp!268114 e!560563)))

(declare-fun b!851708 () Bool)

(assert (=> b!851708 (= e!560563 tp_is_empty!3973)))

(assert (= (and b!851333 ((_ is ElementMatch!2155) (regOne!4823 (regex!1722 (h!14585 rules!2621))))) b!851708))

(assert (= (and b!851333 ((_ is Concat!3944) (regOne!4823 (regex!1722 (h!14585 rules!2621))))) b!851709))

(assert (= (and b!851333 ((_ is Star!2155) (regOne!4823 (regex!1722 (h!14585 rules!2621))))) b!851710))

(assert (= (and b!851333 ((_ is Union!2155) (regOne!4823 (regex!1722 (h!14585 rules!2621))))) b!851711))

(declare-fun b!851713 () Bool)

(declare-fun e!560564 () Bool)

(declare-fun tp!268155 () Bool)

(declare-fun tp!268151 () Bool)

(assert (=> b!851713 (= e!560564 (and tp!268155 tp!268151))))

(declare-fun b!851714 () Bool)

(declare-fun tp!268154 () Bool)

(assert (=> b!851714 (= e!560564 tp!268154)))

(declare-fun b!851715 () Bool)

(declare-fun tp!268153 () Bool)

(declare-fun tp!268152 () Bool)

(assert (=> b!851715 (= e!560564 (and tp!268153 tp!268152))))

(assert (=> b!851333 (= tp!268113 e!560564)))

(declare-fun b!851712 () Bool)

(assert (=> b!851712 (= e!560564 tp_is_empty!3973)))

(assert (= (and b!851333 ((_ is ElementMatch!2155) (regTwo!4823 (regex!1722 (h!14585 rules!2621))))) b!851712))

(assert (= (and b!851333 ((_ is Concat!3944) (regTwo!4823 (regex!1722 (h!14585 rules!2621))))) b!851713))

(assert (= (and b!851333 ((_ is Star!2155) (regTwo!4823 (regex!1722 (h!14585 rules!2621))))) b!851714))

(assert (= (and b!851333 ((_ is Union!2155) (regTwo!4823 (regex!1722 (h!14585 rules!2621))))) b!851715))

(declare-fun b!851718 () Bool)

(declare-fun e!560567 () Bool)

(assert (=> b!851718 (= e!560567 true)))

(declare-fun b!851717 () Bool)

(declare-fun e!560566 () Bool)

(assert (=> b!851717 (= e!560566 e!560567)))

(declare-fun b!851716 () Bool)

(declare-fun e!560565 () Bool)

(assert (=> b!851716 (= e!560565 e!560566)))

(assert (=> b!851302 e!560565))

(assert (= b!851717 b!851718))

(assert (= b!851716 b!851717))

(assert (= (and b!851302 ((_ is Cons!9184) (t!95608 rules!2621))) b!851716))

(assert (=> b!851718 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 (t!95608 rules!2621))))) (dynLambda!4280 order!5885 lambda!25448))))

(assert (=> b!851718 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621))))) (dynLambda!4280 order!5885 lambda!25448))))

(declare-fun b!851719 () Bool)

(declare-fun e!560568 () Bool)

(declare-fun tp!268156 () Bool)

(assert (=> b!851719 (= e!560568 (and tp_is_empty!3973 tp!268156))))

(assert (=> b!851342 (= tp!268124 e!560568)))

(assert (= (and b!851342 ((_ is Cons!9183) (t!95607 (originalCharacters!2278 separatorToken!297)))) b!851719))

(declare-fun b!851721 () Bool)

(declare-fun e!560569 () Bool)

(declare-fun tp!268161 () Bool)

(declare-fun tp!268157 () Bool)

(assert (=> b!851721 (= e!560569 (and tp!268161 tp!268157))))

(declare-fun b!851722 () Bool)

(declare-fun tp!268160 () Bool)

(assert (=> b!851722 (= e!560569 tp!268160)))

(declare-fun b!851723 () Bool)

(declare-fun tp!268159 () Bool)

(declare-fun tp!268158 () Bool)

(assert (=> b!851723 (= e!560569 (and tp!268159 tp!268158))))

(assert (=> b!851331 (= tp!268116 e!560569)))

(declare-fun b!851720 () Bool)

(assert (=> b!851720 (= e!560569 tp_is_empty!3973)))

(assert (= (and b!851331 ((_ is ElementMatch!2155) (regOne!4822 (regex!1722 (h!14585 rules!2621))))) b!851720))

(assert (= (and b!851331 ((_ is Concat!3944) (regOne!4822 (regex!1722 (h!14585 rules!2621))))) b!851721))

(assert (= (and b!851331 ((_ is Star!2155) (regOne!4822 (regex!1722 (h!14585 rules!2621))))) b!851722))

(assert (= (and b!851331 ((_ is Union!2155) (regOne!4822 (regex!1722 (h!14585 rules!2621))))) b!851723))

(declare-fun b!851725 () Bool)

(declare-fun e!560570 () Bool)

(declare-fun tp!268166 () Bool)

(declare-fun tp!268162 () Bool)

(assert (=> b!851725 (= e!560570 (and tp!268166 tp!268162))))

(declare-fun b!851726 () Bool)

(declare-fun tp!268165 () Bool)

(assert (=> b!851726 (= e!560570 tp!268165)))

(declare-fun b!851727 () Bool)

(declare-fun tp!268164 () Bool)

(declare-fun tp!268163 () Bool)

(assert (=> b!851727 (= e!560570 (and tp!268164 tp!268163))))

(assert (=> b!851331 (= tp!268112 e!560570)))

(declare-fun b!851724 () Bool)

(assert (=> b!851724 (= e!560570 tp_is_empty!3973)))

(assert (= (and b!851331 ((_ is ElementMatch!2155) (regTwo!4822 (regex!1722 (h!14585 rules!2621))))) b!851724))

(assert (= (and b!851331 ((_ is Concat!3944) (regTwo!4822 (regex!1722 (h!14585 rules!2621))))) b!851725))

(assert (= (and b!851331 ((_ is Star!2155) (regTwo!4822 (regex!1722 (h!14585 rules!2621))))) b!851726))

(assert (= (and b!851331 ((_ is Union!2155) (regTwo!4822 (regex!1722 (h!14585 rules!2621))))) b!851727))

(declare-fun b!851729 () Bool)

(declare-fun e!560571 () Bool)

(declare-fun tp!268171 () Bool)

(declare-fun tp!268167 () Bool)

(assert (=> b!851729 (= e!560571 (and tp!268171 tp!268167))))

(declare-fun b!851730 () Bool)

(declare-fun tp!268170 () Bool)

(assert (=> b!851730 (= e!560571 tp!268170)))

(declare-fun b!851731 () Bool)

(declare-fun tp!268169 () Bool)

(declare-fun tp!268168 () Bool)

(assert (=> b!851731 (= e!560571 (and tp!268169 tp!268168))))

(assert (=> b!851332 (= tp!268115 e!560571)))

(declare-fun b!851728 () Bool)

(assert (=> b!851728 (= e!560571 tp_is_empty!3973)))

(assert (= (and b!851332 ((_ is ElementMatch!2155) (reg!2484 (regex!1722 (h!14585 rules!2621))))) b!851728))

(assert (= (and b!851332 ((_ is Concat!3944) (reg!2484 (regex!1722 (h!14585 rules!2621))))) b!851729))

(assert (= (and b!851332 ((_ is Star!2155) (reg!2484 (regex!1722 (h!14585 rules!2621))))) b!851730))

(assert (= (and b!851332 ((_ is Union!2155) (reg!2484 (regex!1722 (h!14585 rules!2621))))) b!851731))

(declare-fun tp!268180 () Bool)

(declare-fun b!851741 () Bool)

(declare-fun e!560577 () Bool)

(declare-fun tp!268178 () Bool)

(assert (=> b!851741 (= e!560577 (and (inv!11672 (left!6792 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))))) tp!268180 (inv!11672 (right!7122 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))))) tp!268178))))

(declare-fun b!851743 () Bool)

(declare-fun e!560578 () Bool)

(declare-fun tp!268179 () Bool)

(assert (=> b!851743 (= e!560578 tp!268179)))

(declare-fun b!851742 () Bool)

(declare-fun inv!11678 (IArray!6089) Bool)

(assert (=> b!851742 (= e!560577 (and (inv!11678 (xs!5731 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))))) e!560578))))

(assert (=> b!851299 (= tp!268084 (and (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107))))) e!560577))))

(assert (= (and b!851299 ((_ is Node!3042) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))))) b!851741))

(assert (= b!851742 b!851743))

(assert (= (and b!851299 ((_ is Leaf!4491) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (value!55776 (h!14586 l!5107)))))) b!851742))

(declare-fun m!1091179 () Bool)

(assert (=> b!851741 m!1091179))

(declare-fun m!1091181 () Bool)

(assert (=> b!851741 m!1091181))

(declare-fun m!1091183 () Bool)

(assert (=> b!851742 m!1091183))

(assert (=> b!851299 m!1090359))

(declare-fun b!851747 () Bool)

(declare-fun e!560580 () Bool)

(declare-fun tp!268185 () Bool)

(declare-fun tp!268181 () Bool)

(assert (=> b!851747 (= e!560580 (and tp!268185 tp!268181))))

(declare-fun b!851748 () Bool)

(declare-fun tp!268184 () Bool)

(assert (=> b!851748 (= e!560580 tp!268184)))

(declare-fun b!851749 () Bool)

(declare-fun tp!268183 () Bool)

(declare-fun tp!268182 () Bool)

(assert (=> b!851749 (= e!560580 (and tp!268183 tp!268182))))

(assert (=> b!851328 (= tp!268110 e!560580)))

(declare-fun b!851746 () Bool)

(assert (=> b!851746 (= e!560580 tp_is_empty!3973)))

(assert (= (and b!851328 ((_ is ElementMatch!2155) (reg!2484 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851746))

(assert (= (and b!851328 ((_ is Concat!3944) (reg!2484 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851747))

(assert (= (and b!851328 ((_ is Star!2155) (reg!2484 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851748))

(assert (= (and b!851328 ((_ is Union!2155) (reg!2484 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851749))

(declare-fun b!851751 () Bool)

(declare-fun e!560581 () Bool)

(declare-fun tp!268190 () Bool)

(declare-fun tp!268186 () Bool)

(assert (=> b!851751 (= e!560581 (and tp!268190 tp!268186))))

(declare-fun b!851752 () Bool)

(declare-fun tp!268189 () Bool)

(assert (=> b!851752 (= e!560581 tp!268189)))

(declare-fun b!851753 () Bool)

(declare-fun tp!268188 () Bool)

(declare-fun tp!268187 () Bool)

(assert (=> b!851753 (= e!560581 (and tp!268188 tp!268187))))

(assert (=> b!851337 (= tp!268119 e!560581)))

(declare-fun b!851750 () Bool)

(assert (=> b!851750 (= e!560581 tp_is_empty!3973)))

(assert (= (and b!851337 ((_ is ElementMatch!2155) (regOne!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851750))

(assert (= (and b!851337 ((_ is Concat!3944) (regOne!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851751))

(assert (= (and b!851337 ((_ is Star!2155) (regOne!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851752))

(assert (= (and b!851337 ((_ is Union!2155) (regOne!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851753))

(declare-fun b!851755 () Bool)

(declare-fun e!560582 () Bool)

(declare-fun tp!268195 () Bool)

(declare-fun tp!268191 () Bool)

(assert (=> b!851755 (= e!560582 (and tp!268195 tp!268191))))

(declare-fun b!851756 () Bool)

(declare-fun tp!268194 () Bool)

(assert (=> b!851756 (= e!560582 tp!268194)))

(declare-fun b!851757 () Bool)

(declare-fun tp!268193 () Bool)

(declare-fun tp!268192 () Bool)

(assert (=> b!851757 (= e!560582 (and tp!268193 tp!268192))))

(assert (=> b!851337 (= tp!268118 e!560582)))

(declare-fun b!851754 () Bool)

(assert (=> b!851754 (= e!560582 tp_is_empty!3973)))

(assert (= (and b!851337 ((_ is ElementMatch!2155) (regTwo!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851754))

(assert (= (and b!851337 ((_ is Concat!3944) (regTwo!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851755))

(assert (= (and b!851337 ((_ is Star!2155) (regTwo!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851756))

(assert (= (and b!851337 ((_ is Union!2155) (regTwo!4823 (regex!1722 (rule!3145 separatorToken!297))))) b!851757))

(declare-fun tp!268198 () Bool)

(declare-fun b!851758 () Bool)

(declare-fun tp!268196 () Bool)

(declare-fun e!560583 () Bool)

(assert (=> b!851758 (= e!560583 (and (inv!11672 (left!6792 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))))) tp!268198 (inv!11672 (right!7122 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))))) tp!268196))))

(declare-fun b!851760 () Bool)

(declare-fun e!560584 () Bool)

(declare-fun tp!268197 () Bool)

(assert (=> b!851760 (= e!560584 tp!268197)))

(declare-fun b!851759 () Bool)

(assert (=> b!851759 (= e!560583 (and (inv!11678 (xs!5731 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))))) e!560584))))

(assert (=> b!851041 (= tp!268023 (and (inv!11672 (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297)))) e!560583))))

(assert (= (and b!851041 ((_ is Node!3042) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))))) b!851758))

(assert (= b!851759 b!851760))

(assert (= (and b!851041 ((_ is Leaf!4491) (c!138147 (dynLambda!4278 (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (value!55776 separatorToken!297))))) b!851759))

(declare-fun m!1091193 () Bool)

(assert (=> b!851758 m!1091193))

(declare-fun m!1091195 () Bool)

(assert (=> b!851758 m!1091195))

(declare-fun m!1091197 () Bool)

(assert (=> b!851759 m!1091197))

(assert (=> b!851041 m!1090083))

(declare-fun b!851767 () Bool)

(declare-fun e!560590 () Bool)

(declare-fun tp!268203 () Bool)

(declare-fun tp!268199 () Bool)

(assert (=> b!851767 (= e!560590 (and tp!268203 tp!268199))))

(declare-fun b!851768 () Bool)

(declare-fun tp!268202 () Bool)

(assert (=> b!851768 (= e!560590 tp!268202)))

(declare-fun b!851769 () Bool)

(declare-fun tp!268201 () Bool)

(declare-fun tp!268200 () Bool)

(assert (=> b!851769 (= e!560590 (and tp!268201 tp!268200))))

(assert (=> b!851329 (= tp!268109 e!560590)))

(declare-fun b!851766 () Bool)

(assert (=> b!851766 (= e!560590 tp_is_empty!3973)))

(assert (= (and b!851329 ((_ is ElementMatch!2155) (regOne!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851766))

(assert (= (and b!851329 ((_ is Concat!3944) (regOne!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851767))

(assert (= (and b!851329 ((_ is Star!2155) (regOne!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851768))

(assert (= (and b!851329 ((_ is Union!2155) (regOne!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851769))

(declare-fun b!851771 () Bool)

(declare-fun e!560591 () Bool)

(declare-fun tp!268208 () Bool)

(declare-fun tp!268204 () Bool)

(assert (=> b!851771 (= e!560591 (and tp!268208 tp!268204))))

(declare-fun b!851772 () Bool)

(declare-fun tp!268207 () Bool)

(assert (=> b!851772 (= e!560591 tp!268207)))

(declare-fun b!851773 () Bool)

(declare-fun tp!268206 () Bool)

(declare-fun tp!268205 () Bool)

(assert (=> b!851773 (= e!560591 (and tp!268206 tp!268205))))

(assert (=> b!851329 (= tp!268108 e!560591)))

(declare-fun b!851770 () Bool)

(assert (=> b!851770 (= e!560591 tp_is_empty!3973)))

(assert (= (and b!851329 ((_ is ElementMatch!2155) (regTwo!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851770))

(assert (= (and b!851329 ((_ is Concat!3944) (regTwo!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851771))

(assert (= (and b!851329 ((_ is Star!2155) (regTwo!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851772))

(assert (= (and b!851329 ((_ is Union!2155) (regTwo!4823 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851773))

(declare-fun b!851777 () Bool)

(declare-fun b_free!25733 () Bool)

(declare-fun b_next!25797 () Bool)

(assert (=> b!851777 (= b_free!25733 (not b_next!25797))))

(declare-fun tp!268210 () Bool)

(declare-fun b_and!74803 () Bool)

(assert (=> b!851777 (= tp!268210 b_and!74803)))

(declare-fun b_free!25735 () Bool)

(declare-fun b_next!25799 () Bool)

(assert (=> b!851777 (= b_free!25735 (not b_next!25799))))

(declare-fun t!95721 () Bool)

(declare-fun tb!59867 () Bool)

(assert (=> (and b!851777 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) t!95721) tb!59867))

(declare-fun result!69350 () Bool)

(assert (= result!69350 result!69338))

(assert (=> b!851685 t!95721))

(declare-fun t!95723 () Bool)

(declare-fun tb!59869 () Bool)

(assert (=> (and b!851777 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611))))) t!95723) tb!59869))

(declare-fun result!69352 () Bool)

(assert (= result!69352 result!69318))

(assert (=> d!265881 t!95723))

(declare-fun t!95725 () Bool)

(declare-fun tb!59871 () Bool)

(assert (=> (and b!851777 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) t!95725) tb!59871))

(declare-fun result!69354 () Bool)

(assert (= result!69354 result!69238))

(assert (=> d!265901 t!95725))

(declare-fun t!95727 () Bool)

(declare-fun tb!59873 () Bool)

(assert (=> (and b!851777 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613))))) t!95727) tb!59873))

(declare-fun result!69356 () Bool)

(assert (= result!69356 result!69328))

(assert (=> d!265943 t!95727))

(declare-fun t!95729 () Bool)

(declare-fun tb!59875 () Bool)

(assert (=> (and b!851777 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) t!95729) tb!59875))

(declare-fun result!69358 () Bool)

(assert (= result!69358 result!69276))

(assert (=> b!851297 t!95729))

(assert (=> d!265911 t!95729))

(assert (=> b!851035 t!95725))

(declare-fun b_and!74805 () Bool)

(declare-fun tp!268209 () Bool)

(assert (=> b!851777 (= tp!268209 (and (=> t!95723 result!69352) (=> t!95725 result!69354) (=> t!95721 result!69350) (=> t!95729 result!69358) (=> t!95727 result!69356) b_and!74805))))

(declare-fun e!560595 () Bool)

(assert (=> b!851354 (= tp!268138 e!560595)))

(declare-fun b!851776 () Bool)

(declare-fun e!560596 () Bool)

(declare-fun tp!268213 () Bool)

(declare-fun e!560597 () Bool)

(assert (=> b!851776 (= e!560597 (and tp!268213 (inv!11665 (tag!1984 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (inv!11668 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) e!560596))))

(declare-fun b!851774 () Bool)

(declare-fun e!560593 () Bool)

(declare-fun tp!268211 () Bool)

(assert (=> b!851774 (= e!560595 (and (inv!11669 (h!14586 (t!95609 (t!95609 l!5107)))) e!560593 tp!268211))))

(declare-fun tp!268212 () Bool)

(declare-fun b!851775 () Bool)

(assert (=> b!851775 (= e!560593 (and (inv!21 (value!55776 (h!14586 (t!95609 (t!95609 l!5107))))) e!560597 tp!268212))))

(assert (=> b!851777 (= e!560596 (and tp!268210 tp!268209))))

(assert (= b!851776 b!851777))

(assert (= b!851775 b!851776))

(assert (= b!851774 b!851775))

(assert (= (and b!851354 ((_ is Cons!9185) (t!95609 (t!95609 l!5107)))) b!851774))

(declare-fun m!1091205 () Bool)

(assert (=> b!851776 m!1091205))

(declare-fun m!1091207 () Bool)

(assert (=> b!851776 m!1091207))

(declare-fun m!1091209 () Bool)

(assert (=> b!851774 m!1091209))

(declare-fun m!1091211 () Bool)

(assert (=> b!851775 m!1091211))

(declare-fun b!851778 () Bool)

(declare-fun e!560598 () Bool)

(declare-fun tp!268214 () Bool)

(assert (=> b!851778 (= e!560598 (and tp_is_empty!3973 tp!268214))))

(assert (=> b!851355 (= tp!268139 e!560598)))

(assert (= (and b!851355 ((_ is Cons!9183) (originalCharacters!2278 (h!14586 (t!95609 l!5107))))) b!851778))

(declare-fun b!851780 () Bool)

(declare-fun e!560599 () Bool)

(declare-fun tp!268219 () Bool)

(declare-fun tp!268215 () Bool)

(assert (=> b!851780 (= e!560599 (and tp!268219 tp!268215))))

(declare-fun b!851781 () Bool)

(declare-fun tp!268218 () Bool)

(assert (=> b!851781 (= e!560599 tp!268218)))

(declare-fun b!851782 () Bool)

(declare-fun tp!268217 () Bool)

(declare-fun tp!268216 () Bool)

(assert (=> b!851782 (= e!560599 (and tp!268217 tp!268216))))

(assert (=> b!851356 (= tp!268140 e!560599)))

(declare-fun b!851779 () Bool)

(assert (=> b!851779 (= e!560599 tp_is_empty!3973)))

(assert (= (and b!851356 ((_ is ElementMatch!2155) (regex!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) b!851779))

(assert (= (and b!851356 ((_ is Concat!3944) (regex!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) b!851780))

(assert (= (and b!851356 ((_ is Star!2155) (regex!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) b!851781))

(assert (= (and b!851356 ((_ is Union!2155) (regex!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) b!851782))

(declare-fun b!851785 () Bool)

(declare-fun e!560602 () Bool)

(assert (=> b!851785 (= e!560602 true)))

(declare-fun b!851784 () Bool)

(declare-fun e!560601 () Bool)

(assert (=> b!851784 (= e!560601 e!560602)))

(declare-fun b!851783 () Bool)

(declare-fun e!560600 () Bool)

(assert (=> b!851783 (= e!560600 e!560601)))

(assert (=> b!851149 e!560600))

(assert (= b!851784 b!851785))

(assert (= b!851783 b!851784))

(assert (= (and b!851149 ((_ is Cons!9184) (t!95608 rules!2621))) b!851783))

(assert (=> b!851785 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 (t!95608 rules!2621))))) (dynLambda!4280 order!5885 lambda!25437))))

(assert (=> b!851785 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621))))) (dynLambda!4280 order!5885 lambda!25437))))

(declare-fun b!851786 () Bool)

(declare-fun e!560603 () Bool)

(declare-fun tp!268220 () Bool)

(assert (=> b!851786 (= e!560603 (and tp_is_empty!3973 tp!268220))))

(assert (=> b!851343 (= tp!268125 e!560603)))

(assert (= (and b!851343 ((_ is Cons!9183) (t!95607 (originalCharacters!2278 (h!14586 l!5107))))) b!851786))

(declare-fun b!851792 () Bool)

(declare-fun b_free!25737 () Bool)

(declare-fun b_next!25801 () Bool)

(assert (=> b!851792 (= b_free!25737 (not b_next!25801))))

(declare-fun tp!268224 () Bool)

(declare-fun b_and!74807 () Bool)

(assert (=> b!851792 (= tp!268224 b_and!74807)))

(declare-fun b_free!25739 () Bool)

(declare-fun b_next!25803 () Bool)

(assert (=> b!851792 (= b_free!25739 (not b_next!25803))))

(declare-fun t!95731 () Bool)

(declare-fun tb!59877 () Bool)

(assert (=> (and b!851792 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107)))))) t!95731) tb!59877))

(declare-fun result!69360 () Bool)

(assert (= result!69360 result!69338))

(assert (=> b!851685 t!95731))

(declare-fun tb!59879 () Bool)

(declare-fun t!95733 () Bool)

(assert (=> (and b!851792 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322611))))) t!95733) tb!59879))

(declare-fun result!69362 () Bool)

(assert (= result!69362 result!69318))

(assert (=> d!265881 t!95733))

(declare-fun tb!59881 () Bool)

(declare-fun t!95735 () Bool)

(assert (=> (and b!851792 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297)))) t!95735) tb!59881))

(declare-fun result!69364 () Bool)

(assert (= result!69364 result!69238))

(assert (=> d!265901 t!95735))

(declare-fun tb!59883 () Bool)

(declare-fun t!95737 () Bool)

(assert (=> (and b!851792 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 lt!322613))))) t!95737) tb!59883))

(declare-fun result!69366 () Bool)

(assert (= result!69366 result!69328))

(assert (=> d!265943 t!95737))

(declare-fun t!95739 () Bool)

(declare-fun tb!59885 () Bool)

(assert (=> (and b!851792 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107))))) t!95739) tb!59885))

(declare-fun result!69368 () Bool)

(assert (= result!69368 result!69276))

(assert (=> b!851297 t!95739))

(assert (=> d!265911 t!95739))

(assert (=> b!851035 t!95735))

(declare-fun tp!268223 () Bool)

(declare-fun b_and!74809 () Bool)

(assert (=> b!851792 (= tp!268223 (and (=> t!95739 result!69368) (=> t!95735 result!69364) (=> t!95737 result!69366) (=> t!95733 result!69362) (=> t!95731 result!69360) b_and!74809))))

(declare-fun e!560607 () Bool)

(assert (=> b!851792 (= e!560607 (and tp!268224 tp!268223))))

(declare-fun tp!268221 () Bool)

(declare-fun e!560604 () Bool)

(declare-fun b!851791 () Bool)

(assert (=> b!851791 (= e!560604 (and tp!268221 (inv!11665 (tag!1984 (h!14585 (t!95608 (t!95608 rules!2621))))) (inv!11668 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) e!560607))))

(declare-fun b!851789 () Bool)

(declare-fun e!560609 () Bool)

(declare-fun tp!268222 () Bool)

(assert (=> b!851789 (= e!560609 (and e!560604 tp!268222))))

(assert (=> b!851313 (= tp!268094 e!560609)))

(assert (= b!851791 b!851792))

(assert (= b!851789 b!851791))

(assert (= (and b!851313 ((_ is Cons!9184) (t!95608 (t!95608 rules!2621)))) b!851789))

(declare-fun m!1091221 () Bool)

(assert (=> b!851791 m!1091221))

(declare-fun m!1091225 () Bool)

(assert (=> b!851791 m!1091225))

(declare-fun b!851794 () Bool)

(declare-fun e!560610 () Bool)

(declare-fun tp!268229 () Bool)

(declare-fun tp!268225 () Bool)

(assert (=> b!851794 (= e!560610 (and tp!268229 tp!268225))))

(declare-fun b!851795 () Bool)

(declare-fun tp!268228 () Bool)

(assert (=> b!851795 (= e!560610 tp!268228)))

(declare-fun b!851796 () Bool)

(declare-fun tp!268227 () Bool)

(declare-fun tp!268226 () Bool)

(assert (=> b!851796 (= e!560610 (and tp!268227 tp!268226))))

(assert (=> b!851314 (= tp!268093 e!560610)))

(declare-fun b!851793 () Bool)

(assert (=> b!851793 (= e!560610 tp_is_empty!3973)))

(assert (= (and b!851314 ((_ is ElementMatch!2155) (regex!1722 (h!14585 (t!95608 rules!2621))))) b!851793))

(assert (= (and b!851314 ((_ is Concat!3944) (regex!1722 (h!14585 (t!95608 rules!2621))))) b!851794))

(assert (= (and b!851314 ((_ is Star!2155) (regex!1722 (h!14585 (t!95608 rules!2621))))) b!851795))

(assert (= (and b!851314 ((_ is Union!2155) (regex!1722 (h!14585 (t!95608 rules!2621))))) b!851796))

(declare-fun b!851799 () Bool)

(declare-fun e!560613 () Bool)

(assert (=> b!851799 (= e!560613 true)))

(declare-fun b!851798 () Bool)

(declare-fun e!560612 () Bool)

(assert (=> b!851798 (= e!560612 e!560613)))

(declare-fun b!851797 () Bool)

(declare-fun e!560611 () Bool)

(assert (=> b!851797 (= e!560611 e!560612)))

(assert (=> b!851260 e!560611))

(assert (= b!851798 b!851799))

(assert (= b!851797 b!851798))

(assert (= (and b!851260 ((_ is Cons!9184) (t!95608 rules!2621))) b!851797))

(assert (=> b!851799 (< (dynLambda!4279 order!5883 (toValue!2759 (transformation!1722 (h!14585 (t!95608 rules!2621))))) (dynLambda!4280 order!5885 lambda!25447))))

(assert (=> b!851799 (< (dynLambda!4281 order!5887 (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621))))) (dynLambda!4280 order!5885 lambda!25447))))

(declare-fun b!851801 () Bool)

(declare-fun e!560615 () Bool)

(declare-fun tp!268234 () Bool)

(declare-fun tp!268230 () Bool)

(assert (=> b!851801 (= e!560615 (and tp!268234 tp!268230))))

(declare-fun b!851802 () Bool)

(declare-fun tp!268233 () Bool)

(assert (=> b!851802 (= e!560615 tp!268233)))

(declare-fun b!851803 () Bool)

(declare-fun tp!268232 () Bool)

(declare-fun tp!268231 () Bool)

(assert (=> b!851803 (= e!560615 (and tp!268232 tp!268231))))

(assert (=> b!851335 (= tp!268121 e!560615)))

(declare-fun b!851800 () Bool)

(assert (=> b!851800 (= e!560615 tp_is_empty!3973)))

(assert (= (and b!851335 ((_ is ElementMatch!2155) (regOne!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851800))

(assert (= (and b!851335 ((_ is Concat!3944) (regOne!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851801))

(assert (= (and b!851335 ((_ is Star!2155) (regOne!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851802))

(assert (= (and b!851335 ((_ is Union!2155) (regOne!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851803))

(declare-fun b!851809 () Bool)

(declare-fun e!560617 () Bool)

(declare-fun tp!268239 () Bool)

(declare-fun tp!268235 () Bool)

(assert (=> b!851809 (= e!560617 (and tp!268239 tp!268235))))

(declare-fun b!851810 () Bool)

(declare-fun tp!268238 () Bool)

(assert (=> b!851810 (= e!560617 tp!268238)))

(declare-fun b!851811 () Bool)

(declare-fun tp!268237 () Bool)

(declare-fun tp!268236 () Bool)

(assert (=> b!851811 (= e!560617 (and tp!268237 tp!268236))))

(assert (=> b!851335 (= tp!268117 e!560617)))

(declare-fun b!851808 () Bool)

(assert (=> b!851808 (= e!560617 tp_is_empty!3973)))

(assert (= (and b!851335 ((_ is ElementMatch!2155) (regTwo!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851808))

(assert (= (and b!851335 ((_ is Concat!3944) (regTwo!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851809))

(assert (= (and b!851335 ((_ is Star!2155) (regTwo!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851810))

(assert (= (and b!851335 ((_ is Union!2155) (regTwo!4822 (regex!1722 (rule!3145 separatorToken!297))))) b!851811))

(declare-fun b!851813 () Bool)

(declare-fun e!560618 () Bool)

(declare-fun tp!268244 () Bool)

(declare-fun tp!268240 () Bool)

(assert (=> b!851813 (= e!560618 (and tp!268244 tp!268240))))

(declare-fun b!851814 () Bool)

(declare-fun tp!268243 () Bool)

(assert (=> b!851814 (= e!560618 tp!268243)))

(declare-fun b!851815 () Bool)

(declare-fun tp!268242 () Bool)

(declare-fun tp!268241 () Bool)

(assert (=> b!851815 (= e!560618 (and tp!268242 tp!268241))))

(assert (=> b!851336 (= tp!268120 e!560618)))

(declare-fun b!851812 () Bool)

(assert (=> b!851812 (= e!560618 tp_is_empty!3973)))

(assert (= (and b!851336 ((_ is ElementMatch!2155) (reg!2484 (regex!1722 (rule!3145 separatorToken!297))))) b!851812))

(assert (= (and b!851336 ((_ is Concat!3944) (reg!2484 (regex!1722 (rule!3145 separatorToken!297))))) b!851813))

(assert (= (and b!851336 ((_ is Star!2155) (reg!2484 (regex!1722 (rule!3145 separatorToken!297))))) b!851814))

(assert (= (and b!851336 ((_ is Union!2155) (reg!2484 (regex!1722 (rule!3145 separatorToken!297))))) b!851815))

(declare-fun b!851817 () Bool)

(declare-fun e!560619 () Bool)

(declare-fun tp!268249 () Bool)

(declare-fun tp!268245 () Bool)

(assert (=> b!851817 (= e!560619 (and tp!268249 tp!268245))))

(declare-fun b!851818 () Bool)

(declare-fun tp!268248 () Bool)

(assert (=> b!851818 (= e!560619 tp!268248)))

(declare-fun b!851819 () Bool)

(declare-fun tp!268247 () Bool)

(declare-fun tp!268246 () Bool)

(assert (=> b!851819 (= e!560619 (and tp!268247 tp!268246))))

(assert (=> b!851327 (= tp!268111 e!560619)))

(declare-fun b!851816 () Bool)

(assert (=> b!851816 (= e!560619 tp_is_empty!3973)))

(assert (= (and b!851327 ((_ is ElementMatch!2155) (regOne!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851816))

(assert (= (and b!851327 ((_ is Concat!3944) (regOne!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851817))

(assert (= (and b!851327 ((_ is Star!2155) (regOne!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851818))

(assert (= (and b!851327 ((_ is Union!2155) (regOne!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851819))

(declare-fun b!851821 () Bool)

(declare-fun e!560620 () Bool)

(declare-fun tp!268254 () Bool)

(declare-fun tp!268250 () Bool)

(assert (=> b!851821 (= e!560620 (and tp!268254 tp!268250))))

(declare-fun b!851822 () Bool)

(declare-fun tp!268253 () Bool)

(assert (=> b!851822 (= e!560620 tp!268253)))

(declare-fun b!851823 () Bool)

(declare-fun tp!268252 () Bool)

(declare-fun tp!268251 () Bool)

(assert (=> b!851823 (= e!560620 (and tp!268252 tp!268251))))

(assert (=> b!851327 (= tp!268107 e!560620)))

(declare-fun b!851820 () Bool)

(assert (=> b!851820 (= e!560620 tp_is_empty!3973)))

(assert (= (and b!851327 ((_ is ElementMatch!2155) (regTwo!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851820))

(assert (= (and b!851327 ((_ is Concat!3944) (regTwo!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851821))

(assert (= (and b!851327 ((_ is Star!2155) (regTwo!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851822))

(assert (= (and b!851327 ((_ is Union!2155) (regTwo!4822 (regex!1722 (rule!3145 (h!14586 l!5107)))))) b!851823))

(declare-fun b_lambda!28419 () Bool)

(assert (= b_lambda!28415 (or (and b!850995 b_free!25715 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))))) (and b!850998 b_free!25707 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))))) (and b!851777 b_free!25735 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))))) (and b!850999 b_free!25711 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))))) (and b!851315 b_free!25727 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))))) (and b!851357 b_free!25731) (and b!851792 b_free!25739 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))))) b_lambda!28419)))

(declare-fun b_lambda!28421 () Bool)

(assert (= b_lambda!28407 (or d!265699 b_lambda!28421)))

(declare-fun bs!231372 () Bool)

(declare-fun d!266051 () Bool)

(assert (= bs!231372 (and d!266051 d!265699)))

(assert (=> bs!231372 (= (dynLambda!4277 lambda!25447 (h!14586 (list!3605 (seqFromList!1526 lt!322551)))) (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 (list!3605 (seqFromList!1526 lt!322551)))))))

(assert (=> bs!231372 m!1090471))

(assert (=> b!851614 d!266051))

(declare-fun b_lambda!28423 () Bool)

(assert (= b_lambda!28405 (or (and b!851315 b_free!25727 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!851357 b_free!25731 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!850998 b_free!25707) (and b!850999 b_free!25711 (= (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!851777 b_free!25735 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!850995 b_free!25715 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) (and b!851792 b_free!25739 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))))) b_lambda!28423)))

(declare-fun b_lambda!28425 () Bool)

(assert (= b_lambda!28399 (or d!265729 b_lambda!28425)))

(declare-fun bs!231373 () Bool)

(declare-fun d!266055 () Bool)

(assert (= bs!231373 (and d!266055 d!265729)))

(assert (=> bs!231373 (= (dynLambda!4277 lambda!25448 (h!14586 l!5107)) (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 l!5107)))))

(assert (=> bs!231373 m!1090373))

(assert (=> b!851562 d!266055))

(declare-fun b_lambda!28427 () Bool)

(assert (= b_lambda!28383 (or d!265657 b_lambda!28427)))

(declare-fun bs!231374 () Bool)

(declare-fun d!266057 () Bool)

(assert (= bs!231374 (and d!266057 d!265657)))

(assert (=> bs!231374 (= (dynLambda!4277 lambda!25437 (h!14586 lt!322551)) (rulesProduceIndividualToken!588 thiss!20117 rules!2621 (h!14586 lt!322551)))))

(assert (=> bs!231374 m!1090199))

(assert (=> b!851397 d!266057))

(declare-fun b_lambda!28429 () Bool)

(assert (= b_lambda!28403 (or (and b!851777 b_free!25735 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 (t!95609 l!5107)))))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!850998 b_free!25707 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 l!5107)))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!850995 b_free!25715 (= (toChars!2618 (transformation!1722 (h!14585 rules!2621))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!850999 b_free!25711) (and b!851792 b_free!25739 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 (t!95608 rules!2621))))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!851357 b_free!25731 (= (toChars!2618 (transformation!1722 (rule!3145 (h!14586 (t!95609 l!5107))))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) (and b!851315 b_free!25727 (= (toChars!2618 (transformation!1722 (h!14585 (t!95608 rules!2621)))) (toChars!2618 (transformation!1722 (rule!3145 separatorToken!297))))) b_lambda!28429)))

(declare-fun b_lambda!28431 () Bool)

(assert (= b_lambda!28387 (or b!850996 b_lambda!28431)))

(declare-fun bs!231375 () Bool)

(declare-fun d!266059 () Bool)

(assert (= bs!231375 (and d!266059 b!850996)))

(assert (=> bs!231375 (= (dynLambda!4277 lambda!25430 (h!14586 (t!95609 l!5107))) (not (isSeparator!1722 (rule!3145 (h!14586 (t!95609 l!5107))))))))

(assert (=> b!851499 d!266059))

(check-sat (not b!851686) (not b!851563) (not b!851814) (not b!851795) (not b!851644) (not tb!59837) (not d!266003) (not b!851452) (not b!851500) (not b!851715) (not d!265737) (not b!851726) (not d!265917) b_and!74669 b_and!74705 (not b!851600) (not d!265769) (not b_lambda!28429) (not b!851603) (not b!851396) (not b!851811) (not d!265879) (not b!851446) (not d!265899) (not b!851595) (not d!265881) (not d!265801) (not b!851475) (not d!265967) (not d!265781) (not b!851782) (not d!265805) (not b!851692) (not b!851363) (not b!851753) (not b!851813) (not b!851612) (not b!851789) b_and!74807 (not b!851502) (not b!851716) (not d!265905) (not d!265815) (not b!851607) (not d!265757) (not b_next!25775) (not b!851778) (not b_next!25779) (not d!265877) (not b!851817) (not b!851483) (not d!265903) (not b!851773) b_and!74665 (not b!851767) (not bs!231372) (not b!851796) (not b!851589) (not b!851649) (not b!851615) (not b!851776) b_and!74661 b_and!74799 (not b!851374) (not b!851742) b_and!74801 (not b_next!25791) (not b_lambda!28425) (not b!851685) (not d!265895) (not d!265755) (not b!851748) (not b!851653) (not b!851756) tp_is_empty!3973 (not b!851693) (not b!851760) (not b!851749) (not b!851630) (not b!851822) (not b_next!25797) (not d!265759) (not b!851731) (not b!851588) (not d!265875) (not b!851768) (not b!851375) (not d!265789) (not b!851774) (not b_next!25777) (not b!851485) (not d!265915) (not bs!231373) b_and!74803 (not b!851445) (not b!851403) b_and!74795 (not b!851652) (not b_lambda!28421) b_and!74709 (not b!851680) (not d!265825) (not d!265771) b_and!74805 (not b!851747) (not b!851481) (not b!851725) (not b!851378) (not d!265969) (not b!851775) (not d!265751) (not b!851608) (not b!851398) (not d!265735) (not d!265819) (not d!265929) (not b!851604) (not b!851797) (not b!851404) (not b!851687) (not b!851643) (not b_lambda!28419) (not b!851401) (not b!851451) (not d!265965) (not d!265957) (not b!851707) (not b!851570) (not b!851722) (not b!851803) (not b!851482) (not d!265937) (not b!851633) (not b!851758) (not b_next!25793) (not b!851730) (not d!266001) (not b!851759) (not b!851564) (not b!851642) (not b!851634) (not b!851819) (not b!851402) (not b_next!25801) (not b!851711) (not b_lambda!28379) (not d!265911) (not b!851757) (not b_next!25771) (not b!851743) (not b!851786) (not b_next!25773) (not b!851597) (not b!851823) (not b!851723) b_and!74793 (not b_lambda!28431) (not b!851794) (not d!265891) (not b!851783) (not d!265803) (not b!851585) (not b!851769) (not d!265951) (not b!851771) (not b_lambda!28427) (not b!851780) (not b_next!25769) (not b!851810) (not d!265893) (not b_lambda!28409) (not b!851677) (not b!851679) (not d!266007) (not b!851752) (not b!851713) (not b!851821) (not tb!59857) (not b!851041) (not d!265901) (not b_next!25803) (not b!851682) (not b!851591) (not b!851362) (not b!851772) (not b!851751) (not d!265941) (not b!851611) (not b_next!25799) (not d!266017) (not b_lambda!28401) (not b!851299) (not b!851484) (not b!851809) b_and!74809 (not b!851654) (not b!851721) (not b!851815) (not b!851694) (not d!265907) (not b!851503) (not d!266013) (not b_next!25789) (not tb!59847) (not d!265743) (not b!851480) (not b!851621) (not b!851501) (not b!851801) (not b!851377) (not d!265887) (not d!265797) (not b_next!25795) (not d!265943) (not b!851818) (not b!851729) (not b!851741) (not b!851498) (not b!851714) (not b_lambda!28423) (not d!265765) (not b!851719) (not b_lambda!28377) (not b!851641) (not b!851598) (not b!851586) (not d!265933) (not b!851709) (not d!265997) (not b!851802) b_and!74797 (not d!266011) (not b_lambda!28381) (not b!851755) (not bs!231374) (not b!851448) (not b!851727) (not b!851594) (not bm!50502) (not d!265913) (not b!851781) (not d!265747) (not b!851437) (not b!851710) (not d!265921) (not b!851791) (not b!851631))
(check-sat b_and!74807 b_and!74665 (not b_next!25793) (not b_next!25801) b_and!74793 (not b_next!25769) (not b_next!25803) (not b_next!25799) b_and!74809 (not b_next!25789) (not b_next!25795) b_and!74797 b_and!74669 b_and!74705 (not b_next!25775) (not b_next!25779) b_and!74661 b_and!74799 b_and!74801 (not b_next!25791) (not b_next!25797) (not b_next!25777) b_and!74795 b_and!74803 b_and!74709 b_and!74805 (not b_next!25771) (not b_next!25773))
