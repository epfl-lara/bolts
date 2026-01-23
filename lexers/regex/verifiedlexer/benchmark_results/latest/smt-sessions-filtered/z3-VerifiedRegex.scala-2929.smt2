; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!172030 () Bool)

(assert start!172030)

(declare-fun b!1745577 () Bool)

(declare-fun b_free!48043 () Bool)

(declare-fun b_next!48747 () Bool)

(assert (=> b!1745577 (= b_free!48043 (not b_next!48747))))

(declare-fun tp!496803 () Bool)

(declare-fun b_and!129939 () Bool)

(assert (=> b!1745577 (= tp!496803 b_and!129939)))

(declare-fun b_free!48045 () Bool)

(declare-fun b_next!48749 () Bool)

(assert (=> b!1745577 (= b_free!48045 (not b_next!48749))))

(declare-fun tp!496797 () Bool)

(declare-fun b_and!129941 () Bool)

(assert (=> b!1745577 (= tp!496797 b_and!129941)))

(declare-fun b!1745592 () Bool)

(declare-fun b_free!48047 () Bool)

(declare-fun b_next!48751 () Bool)

(assert (=> b!1745592 (= b_free!48047 (not b_next!48751))))

(declare-fun tp!496806 () Bool)

(declare-fun b_and!129943 () Bool)

(assert (=> b!1745592 (= tp!496806 b_and!129943)))

(declare-fun b_free!48049 () Bool)

(declare-fun b_next!48753 () Bool)

(assert (=> b!1745592 (= b_free!48049 (not b_next!48753))))

(declare-fun tp!496801 () Bool)

(declare-fun b_and!129945 () Bool)

(assert (=> b!1745592 (= tp!496801 b_and!129945)))

(declare-fun b!1745601 () Bool)

(declare-fun b_free!48051 () Bool)

(declare-fun b_next!48755 () Bool)

(assert (=> b!1745601 (= b_free!48051 (not b_next!48755))))

(declare-fun tp!496798 () Bool)

(declare-fun b_and!129947 () Bool)

(assert (=> b!1745601 (= tp!496798 b_and!129947)))

(declare-fun b_free!48053 () Bool)

(declare-fun b_next!48757 () Bool)

(assert (=> b!1745601 (= b_free!48053 (not b_next!48757))))

(declare-fun tp!496802 () Bool)

(declare-fun b_and!129949 () Bool)

(assert (=> b!1745601 (= tp!496802 b_and!129949)))

(declare-fun b!1745614 () Bool)

(declare-fun e!1117171 () Bool)

(assert (=> b!1745614 (= e!1117171 true)))

(declare-fun b!1745613 () Bool)

(declare-fun e!1117170 () Bool)

(assert (=> b!1745613 (= e!1117170 e!1117171)))

(declare-fun b!1745612 () Bool)

(declare-fun e!1117169 () Bool)

(assert (=> b!1745612 (= e!1117169 e!1117170)))

(declare-fun b!1745597 () Bool)

(assert (=> b!1745597 e!1117169))

(assert (= b!1745613 b!1745614))

(assert (= b!1745612 b!1745613))

(assert (= b!1745597 b!1745612))

(declare-fun lambda!69710 () Int)

(declare-fun order!11991 () Int)

(declare-fun order!11993 () Int)

(declare-datatypes ((List!19258 0))(
  ( (Nil!19188) (Cons!19188 (h!24589 (_ BitVec 16)) (t!162263 List!19258)) )
))
(declare-datatypes ((TokenValue!3509 0))(
  ( (FloatLiteralValue!7018 (text!25008 List!19258)) (TokenValueExt!3508 (__x!12320 Int)) (Broken!17545 (value!107088 List!19258)) (Object!3578) (End!3509) (Def!3509) (Underscore!3509) (Match!3509) (Else!3509) (Error!3509) (Case!3509) (If!3509) (Extends!3509) (Abstract!3509) (Class!3509) (Val!3509) (DelimiterValue!7018 (del!3569 List!19258)) (KeywordValue!3515 (value!107089 List!19258)) (CommentValue!7018 (value!107090 List!19258)) (WhitespaceValue!7018 (value!107091 List!19258)) (IndentationValue!3509 (value!107092 List!19258)) (String!21876) (Int32!3509) (Broken!17546 (value!107093 List!19258)) (Boolean!3510) (Unit!33260) (OperatorValue!3512 (op!3569 List!19258)) (IdentifierValue!7018 (value!107094 List!19258)) (IdentifierValue!7019 (value!107095 List!19258)) (WhitespaceValue!7019 (value!107096 List!19258)) (True!7018) (False!7018) (Broken!17547 (value!107097 List!19258)) (Broken!17548 (value!107098 List!19258)) (True!7019) (RightBrace!3509) (RightBracket!3509) (Colon!3509) (Null!3509) (Comma!3509) (LeftBracket!3509) (False!7019) (LeftBrace!3509) (ImaginaryLiteralValue!3509 (text!25009 List!19258)) (StringLiteralValue!10527 (value!107099 List!19258)) (EOFValue!3509 (value!107100 List!19258)) (IdentValue!3509 (value!107101 List!19258)) (DelimiterValue!7019 (value!107102 List!19258)) (DedentValue!3509 (value!107103 List!19258)) (NewLineValue!3509 (value!107104 List!19258)) (IntegerValue!10527 (value!107105 (_ BitVec 32)) (text!25010 List!19258)) (IntegerValue!10528 (value!107106 Int) (text!25011 List!19258)) (Times!3509) (Or!3509) (Equal!3509) (Minus!3509) (Broken!17549 (value!107107 List!19258)) (And!3509) (Div!3509) (LessEqual!3509) (Mod!3509) (Concat!8256) (Not!3509) (Plus!3509) (SpaceValue!3509 (value!107108 List!19258)) (IntegerValue!10529 (value!107109 Int) (text!25012 List!19258)) (StringLiteralValue!10528 (text!25013 List!19258)) (FloatLiteralValue!7019 (text!25014 List!19258)) (BytesLiteralValue!3509 (value!107110 List!19258)) (CommentValue!7019 (value!107111 List!19258)) (StringLiteralValue!10529 (value!107112 List!19258)) (ErrorTokenValue!3509 (msg!3570 List!19258)) )
))
(declare-datatypes ((C!9668 0))(
  ( (C!9669 (val!5430 Int)) )
))
(declare-datatypes ((List!19259 0))(
  ( (Nil!19189) (Cons!19189 (h!24590 C!9668) (t!162264 List!19259)) )
))
(declare-datatypes ((Regex!4747 0))(
  ( (ElementMatch!4747 (c!284766 C!9668)) (Concat!8257 (regOne!10006 Regex!4747) (regTwo!10006 Regex!4747)) (EmptyExpr!4747) (Star!4747 (reg!5076 Regex!4747)) (EmptyLang!4747) (Union!4747 (regOne!10007 Regex!4747) (regTwo!10007 Regex!4747)) )
))
(declare-datatypes ((String!21877 0))(
  ( (String!21878 (value!107113 String)) )
))
(declare-datatypes ((IArray!12771 0))(
  ( (IArray!12772 (innerList!6443 List!19259)) )
))
(declare-datatypes ((Conc!6383 0))(
  ( (Node!6383 (left!15342 Conc!6383) (right!15672 Conc!6383) (csize!12996 Int) (cheight!6594 Int)) (Leaf!9313 (xs!9259 IArray!12771) (csize!12997 Int)) (Empty!6383) )
))
(declare-datatypes ((BalanceConc!12710 0))(
  ( (BalanceConc!12711 (c!284767 Conc!6383)) )
))
(declare-datatypes ((TokenValueInjection!6678 0))(
  ( (TokenValueInjection!6679 (toValue!4930 Int) (toChars!4789 Int)) )
))
(declare-datatypes ((Rule!6638 0))(
  ( (Rule!6639 (regex!3419 Regex!4747) (tag!3765 String!21877) (isSeparator!3419 Bool) (transformation!3419 TokenValueInjection!6678)) )
))
(declare-datatypes ((Token!6404 0))(
  ( (Token!6405 (value!107114 TokenValue!3509) (rule!5423 Rule!6638) (size!15233 Int) (originalCharacters!4233 List!19259)) )
))
(declare-datatypes ((tuple2!18830 0))(
  ( (tuple2!18831 (_1!10817 Token!6404) (_2!10817 List!19259)) )
))
(declare-fun lt!673096 () tuple2!18830)

(declare-fun dynLambda!9086 (Int Int) Int)

(declare-fun dynLambda!9087 (Int Int) Int)

(assert (=> b!1745614 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9087 order!11993 lambda!69710))))

(declare-fun order!11995 () Int)

(declare-fun dynLambda!9088 (Int Int) Int)

(assert (=> b!1745614 (< (dynLambda!9088 order!11995 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9087 order!11993 lambda!69710))))

(declare-fun e!1117149 () Bool)

(assert (=> b!1745577 (= e!1117149 (and tp!496803 tp!496797))))

(declare-fun b!1745578 () Bool)

(declare-fun e!1117155 () Bool)

(declare-fun e!1117162 () Bool)

(assert (=> b!1745578 (= e!1117155 e!1117162)))

(declare-fun res!784934 () Bool)

(assert (=> b!1745578 (=> res!784934 e!1117162)))

(declare-fun lt!673090 () List!19259)

(declare-fun lt!673091 () List!19259)

(declare-fun isPrefix!1660 (List!19259 List!19259) Bool)

(assert (=> b!1745578 (= res!784934 (not (isPrefix!1660 lt!673090 lt!673091)))))

(declare-fun ++!5244 (List!19259 List!19259) List!19259)

(assert (=> b!1745578 (isPrefix!1660 lt!673090 (++!5244 lt!673090 (_2!10817 lt!673096)))))

(declare-datatypes ((Unit!33261 0))(
  ( (Unit!33262) )
))
(declare-fun lt!673094 () Unit!33261)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1170 (List!19259 List!19259) Unit!33261)

(assert (=> b!1745578 (= lt!673094 (lemmaConcatTwoListThenFirstIsPrefix!1170 lt!673090 (_2!10817 lt!673096)))))

(declare-fun lt!673085 () BalanceConc!12710)

(declare-fun list!7768 (BalanceConc!12710) List!19259)

(assert (=> b!1745578 (= lt!673090 (list!7768 lt!673085))))

(declare-fun charsOf!2068 (Token!6404) BalanceConc!12710)

(assert (=> b!1745578 (= lt!673085 (charsOf!2068 (_1!10817 lt!673096)))))

(declare-fun e!1117160 () Bool)

(assert (=> b!1745578 e!1117160))

(declare-fun res!784941 () Bool)

(assert (=> b!1745578 (=> (not res!784941) (not e!1117160))))

(declare-datatypes ((Option!3862 0))(
  ( (None!3861) (Some!3861 (v!25300 Rule!6638)) )
))
(declare-fun lt!673093 () Option!3862)

(declare-fun isDefined!3205 (Option!3862) Bool)

(assert (=> b!1745578 (= res!784941 (isDefined!3205 lt!673093))))

(declare-datatypes ((LexerInterface!3048 0))(
  ( (LexerInterfaceExt!3045 (__x!12321 Int)) (Lexer!3046) )
))
(declare-fun thiss!24550 () LexerInterface!3048)

(declare-datatypes ((List!19260 0))(
  ( (Nil!19190) (Cons!19190 (h!24591 Rule!6638) (t!162265 List!19260)) )
))
(declare-fun rules!3447 () List!19260)

(declare-fun getRuleFromTag!469 (LexerInterface!3048 List!19260 String!21877) Option!3862)

(assert (=> b!1745578 (= lt!673093 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun lt!673086 () Unit!33261)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!469 (LexerInterface!3048 List!19260 List!19259 Token!6404) Unit!33261)

(assert (=> b!1745578 (= lt!673086 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!469 thiss!24550 rules!3447 lt!673091 (_1!10817 lt!673096)))))

(declare-datatypes ((Option!3863 0))(
  ( (None!3862) (Some!3862 (v!25301 tuple2!18830)) )
))
(declare-fun lt!673083 () Option!3863)

(declare-fun get!5789 (Option!3863) tuple2!18830)

(assert (=> b!1745578 (= lt!673096 (get!5789 lt!673083))))

(declare-fun lt!673098 () List!19259)

(declare-fun suffix!1421 () List!19259)

(declare-fun lt!673089 () Unit!33261)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!572 (LexerInterface!3048 List!19260 List!19259 List!19259) Unit!33261)

(assert (=> b!1745578 (= lt!673089 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!572 thiss!24550 rules!3447 lt!673098 suffix!1421))))

(declare-fun maxPrefix!1602 (LexerInterface!3048 List!19260 List!19259) Option!3863)

(assert (=> b!1745578 (= lt!673083 (maxPrefix!1602 thiss!24550 rules!3447 lt!673091))))

(assert (=> b!1745578 (isPrefix!1660 lt!673098 lt!673091)))

(declare-fun lt!673084 () Unit!33261)

(assert (=> b!1745578 (= lt!673084 (lemmaConcatTwoListThenFirstIsPrefix!1170 lt!673098 suffix!1421))))

(assert (=> b!1745578 (= lt!673091 (++!5244 lt!673098 suffix!1421))))

(declare-fun b!1745579 () Bool)

(declare-fun e!1117161 () Bool)

(declare-fun e!1117148 () Bool)

(declare-fun tp!496804 () Bool)

(assert (=> b!1745579 (= e!1117161 (and e!1117148 tp!496804))))

(declare-fun b!1745580 () Bool)

(declare-fun res!784925 () Bool)

(declare-fun e!1117144 () Bool)

(assert (=> b!1745580 (=> (not res!784925) (not e!1117144))))

(declare-fun token!523 () Token!6404)

(declare-fun rule!422 () Rule!6638)

(assert (=> b!1745580 (= res!784925 (= (rule!5423 token!523) rule!422))))

(declare-fun b!1745581 () Bool)

(declare-fun e!1117156 () Bool)

(declare-fun apply!5220 (TokenValueInjection!6678 BalanceConc!12710) TokenValue!3509)

(declare-fun size!15234 (BalanceConc!12710) Int)

(assert (=> b!1745581 (= e!1117156 (= lt!673083 (Some!3862 (tuple2!18831 (Token!6405 (apply!5220 (transformation!3419 (rule!5423 (_1!10817 lt!673096))) lt!673085) (rule!5423 (_1!10817 lt!673096)) (size!15234 lt!673085) lt!673090) (_2!10817 lt!673096)))))))

(declare-fun lt!673100 () Unit!33261)

(declare-fun lemmaCharactersSize!479 (Token!6404) Unit!33261)

(assert (=> b!1745581 (= lt!673100 (lemmaCharactersSize!479 (_1!10817 lt!673096)))))

(declare-fun lt!673097 () Unit!33261)

(declare-fun lemmaEqSameImage!332 (TokenValueInjection!6678 BalanceConc!12710 BalanceConc!12710) Unit!33261)

(declare-fun seqFromList!2389 (List!19259) BalanceConc!12710)

(assert (=> b!1745581 (= lt!673097 (lemmaEqSameImage!332 (transformation!3419 (rule!5423 (_1!10817 lt!673096))) lt!673085 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))))))

(declare-fun res!784935 () Bool)

(declare-fun e!1117147 () Bool)

(assert (=> start!172030 (=> (not res!784935) (not e!1117147))))

(get-info :version)

(assert (=> start!172030 (= res!784935 ((_ is Lexer!3046) thiss!24550))))

(assert (=> start!172030 e!1117147))

(declare-fun e!1117141 () Bool)

(assert (=> start!172030 e!1117141))

(declare-fun e!1117143 () Bool)

(assert (=> start!172030 e!1117143))

(assert (=> start!172030 true))

(declare-fun e!1117153 () Bool)

(declare-fun inv!24869 (Token!6404) Bool)

(assert (=> start!172030 (and (inv!24869 token!523) e!1117153)))

(assert (=> start!172030 e!1117161))

(declare-fun b!1745582 () Bool)

(declare-fun res!784938 () Bool)

(assert (=> b!1745582 (=> (not res!784938) (not e!1117147))))

(declare-fun isEmpty!12085 (List!19260) Bool)

(assert (=> b!1745582 (= res!784938 (not (isEmpty!12085 rules!3447)))))

(declare-fun b!1745583 () Bool)

(declare-fun e!1117150 () Bool)

(declare-fun lt!673088 () Rule!6638)

(assert (=> b!1745583 (= e!1117150 (= (rule!5423 (_1!10817 lt!673096)) lt!673088))))

(declare-fun b!1745584 () Bool)

(declare-fun tp!496800 () Bool)

(declare-fun e!1117151 () Bool)

(declare-fun inv!24864 (String!21877) Bool)

(declare-fun inv!24870 (TokenValueInjection!6678) Bool)

(assert (=> b!1745584 (= e!1117151 (and tp!496800 (inv!24864 (tag!3765 (rule!5423 token!523))) (inv!24870 (transformation!3419 (rule!5423 token!523))) e!1117149))))

(declare-fun b!1745585 () Bool)

(declare-fun e!1117159 () Bool)

(assert (=> b!1745585 (= e!1117159 e!1117156)))

(declare-fun res!784927 () Bool)

(assert (=> b!1745585 (=> res!784927 e!1117156)))

(declare-fun dynLambda!9089 (Int TokenValue!3509) BalanceConc!12710)

(declare-fun dynLambda!9090 (Int BalanceConc!12710) TokenValue!3509)

(assert (=> b!1745585 (= res!784927 (not (= (list!7768 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) lt!673090)))))

(declare-fun lt!673087 () Unit!33261)

(declare-fun lemmaSemiInverse!559 (TokenValueInjection!6678 BalanceConc!12710) Unit!33261)

(assert (=> b!1745585 (= lt!673087 (lemmaSemiInverse!559 (transformation!3419 (rule!5423 (_1!10817 lt!673096))) lt!673085))))

(declare-fun b!1745586 () Bool)

(declare-fun res!784930 () Bool)

(assert (=> b!1745586 (=> res!784930 e!1117155)))

(declare-fun isEmpty!12086 (List!19259) Bool)

(assert (=> b!1745586 (= res!784930 (isEmpty!12086 suffix!1421))))

(declare-fun tp!496807 () Bool)

(declare-fun b!1745587 () Bool)

(declare-fun e!1117158 () Bool)

(assert (=> b!1745587 (= e!1117143 (and tp!496807 (inv!24864 (tag!3765 rule!422)) (inv!24870 (transformation!3419 rule!422)) e!1117158))))

(declare-fun b!1745588 () Bool)

(declare-fun res!784942 () Bool)

(assert (=> b!1745588 (=> res!784942 e!1117162)))

(declare-fun matchR!2221 (Regex!4747 List!19259) Bool)

(assert (=> b!1745588 (= res!784942 (not (matchR!2221 (regex!3419 (rule!5423 (_1!10817 lt!673096))) lt!673090)))))

(declare-fun b!1745589 () Bool)

(declare-fun e!1117154 () Bool)

(assert (=> b!1745589 (= e!1117147 e!1117154)))

(declare-fun res!784932 () Bool)

(assert (=> b!1745589 (=> (not res!784932) (not e!1117154))))

(declare-fun lt!673082 () Option!3863)

(declare-fun isDefined!3206 (Option!3863) Bool)

(assert (=> b!1745589 (= res!784932 (isDefined!3206 lt!673082))))

(assert (=> b!1745589 (= lt!673082 (maxPrefix!1602 thiss!24550 rules!3447 lt!673098))))

(assert (=> b!1745589 (= lt!673098 (list!7768 (charsOf!2068 token!523)))))

(declare-fun b!1745590 () Bool)

(assert (=> b!1745590 (= e!1117160 e!1117150)))

(declare-fun res!784933 () Bool)

(assert (=> b!1745590 (=> (not res!784933) (not e!1117150))))

(assert (=> b!1745590 (= res!784933 (matchR!2221 (regex!3419 lt!673088) (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(declare-fun get!5790 (Option!3862) Rule!6638)

(assert (=> b!1745590 (= lt!673088 (get!5790 lt!673093))))

(declare-fun tp!496799 () Bool)

(declare-fun b!1745591 () Bool)

(declare-fun inv!21 (TokenValue!3509) Bool)

(assert (=> b!1745591 (= e!1117153 (and (inv!21 (value!107114 token!523)) e!1117151 tp!496799))))

(declare-fun e!1117152 () Bool)

(assert (=> b!1745592 (= e!1117152 (and tp!496806 tp!496801))))

(declare-fun b!1745593 () Bool)

(assert (=> b!1745593 (= e!1117144 (not e!1117155))))

(declare-fun res!784936 () Bool)

(assert (=> b!1745593 (=> res!784936 e!1117155)))

(assert (=> b!1745593 (= res!784936 (not (matchR!2221 (regex!3419 rule!422) lt!673098)))))

(declare-fun ruleValid!918 (LexerInterface!3048 Rule!6638) Bool)

(assert (=> b!1745593 (ruleValid!918 thiss!24550 rule!422)))

(declare-fun lt!673099 () Unit!33261)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!442 (LexerInterface!3048 Rule!6638 List!19260) Unit!33261)

(assert (=> b!1745593 (= lt!673099 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!442 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1745594 () Bool)

(declare-fun res!784939 () Bool)

(assert (=> b!1745594 (=> (not res!784939) (not e!1117147))))

(declare-fun rulesInvariant!2717 (LexerInterface!3048 List!19260) Bool)

(assert (=> b!1745594 (= res!784939 (rulesInvariant!2717 thiss!24550 rules!3447))))

(declare-fun b!1745595 () Bool)

(declare-fun tp_is_empty!7737 () Bool)

(declare-fun tp!496805 () Bool)

(assert (=> b!1745595 (= e!1117141 (and tp_is_empty!7737 tp!496805))))

(declare-fun b!1745596 () Bool)

(assert (=> b!1745596 (= e!1117154 e!1117144)))

(declare-fun res!784929 () Bool)

(assert (=> b!1745596 (=> (not res!784929) (not e!1117144))))

(declare-fun lt!673092 () tuple2!18830)

(assert (=> b!1745596 (= res!784929 (= (_1!10817 lt!673092) token!523))))

(assert (=> b!1745596 (= lt!673092 (get!5789 lt!673082))))

(assert (=> b!1745597 (= e!1117162 e!1117159)))

(declare-fun res!784940 () Bool)

(assert (=> b!1745597 (=> res!784940 e!1117159)))

(declare-fun Forall!788 (Int) Bool)

(assert (=> b!1745597 (= res!784940 (not (Forall!788 lambda!69710)))))

(declare-fun lt!673095 () Unit!33261)

(declare-fun lemmaInv!620 (TokenValueInjection!6678) Unit!33261)

(assert (=> b!1745597 (= lt!673095 (lemmaInv!620 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun b!1745598 () Bool)

(declare-fun res!784926 () Bool)

(assert (=> b!1745598 (=> res!784926 e!1117156)))

(assert (=> b!1745598 (= res!784926 (not (= lt!673085 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))

(declare-fun tp!496808 () Bool)

(declare-fun b!1745599 () Bool)

(assert (=> b!1745599 (= e!1117148 (and tp!496808 (inv!24864 (tag!3765 (h!24591 rules!3447))) (inv!24870 (transformation!3419 (h!24591 rules!3447))) e!1117152))))

(declare-fun b!1745600 () Bool)

(declare-fun res!784928 () Bool)

(assert (=> b!1745600 (=> res!784928 e!1117155)))

(declare-fun prefixMatch!632 (Regex!4747 List!19259) Bool)

(declare-fun rulesRegex!777 (LexerInterface!3048 List!19260) Regex!4747)

(declare-fun head!4010 (List!19259) C!9668)

(assert (=> b!1745600 (= res!784928 (prefixMatch!632 (rulesRegex!777 thiss!24550 rules!3447) (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))

(assert (=> b!1745601 (= e!1117158 (and tp!496798 tp!496802))))

(declare-fun b!1745602 () Bool)

(declare-fun res!784931 () Bool)

(assert (=> b!1745602 (=> (not res!784931) (not e!1117147))))

(declare-fun contains!3443 (List!19260 Rule!6638) Bool)

(assert (=> b!1745602 (= res!784931 (contains!3443 rules!3447 rule!422))))

(declare-fun b!1745603 () Bool)

(declare-fun res!784937 () Bool)

(assert (=> b!1745603 (=> (not res!784937) (not e!1117144))))

(assert (=> b!1745603 (= res!784937 (isEmpty!12086 (_2!10817 lt!673092)))))

(assert (= (and start!172030 res!784935) b!1745582))

(assert (= (and b!1745582 res!784938) b!1745594))

(assert (= (and b!1745594 res!784939) b!1745602))

(assert (= (and b!1745602 res!784931) b!1745589))

(assert (= (and b!1745589 res!784932) b!1745596))

(assert (= (and b!1745596 res!784929) b!1745603))

(assert (= (and b!1745603 res!784937) b!1745580))

(assert (= (and b!1745580 res!784925) b!1745593))

(assert (= (and b!1745593 (not res!784936)) b!1745586))

(assert (= (and b!1745586 (not res!784930)) b!1745600))

(assert (= (and b!1745600 (not res!784928)) b!1745578))

(assert (= (and b!1745578 res!784941) b!1745590))

(assert (= (and b!1745590 res!784933) b!1745583))

(assert (= (and b!1745578 (not res!784934)) b!1745588))

(assert (= (and b!1745588 (not res!784942)) b!1745597))

(assert (= (and b!1745597 (not res!784940)) b!1745585))

(assert (= (and b!1745585 (not res!784927)) b!1745598))

(assert (= (and b!1745598 (not res!784926)) b!1745581))

(assert (= (and start!172030 ((_ is Cons!19189) suffix!1421)) b!1745595))

(assert (= b!1745587 b!1745601))

(assert (= start!172030 b!1745587))

(assert (= b!1745584 b!1745577))

(assert (= b!1745591 b!1745584))

(assert (= start!172030 b!1745591))

(assert (= b!1745599 b!1745592))

(assert (= b!1745579 b!1745599))

(assert (= (and start!172030 ((_ is Cons!19190) rules!3447)) b!1745579))

(declare-fun b_lambda!55951 () Bool)

(assert (=> (not b_lambda!55951) (not b!1745585)))

(declare-fun tb!104421 () Bool)

(declare-fun t!162246 () Bool)

(assert (=> (and b!1745577 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162246) tb!104421))

(declare-fun e!1117174 () Bool)

(declare-fun b!1745619 () Bool)

(declare-fun tp!496811 () Bool)

(declare-fun inv!24871 (Conc!6383) Bool)

(assert (=> b!1745619 (= e!1117174 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) tp!496811))))

(declare-fun result!125616 () Bool)

(declare-fun inv!24872 (BalanceConc!12710) Bool)

(assert (=> tb!104421 (= result!125616 (and (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) e!1117174))))

(assert (= tb!104421 b!1745619))

(declare-fun m!2157487 () Bool)

(assert (=> b!1745619 m!2157487))

(declare-fun m!2157489 () Bool)

(assert (=> tb!104421 m!2157489))

(assert (=> b!1745585 t!162246))

(declare-fun b_and!129951 () Bool)

(assert (= b_and!129941 (and (=> t!162246 result!125616) b_and!129951)))

(declare-fun t!162248 () Bool)

(declare-fun tb!104423 () Bool)

(assert (=> (and b!1745592 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162248) tb!104423))

(declare-fun result!125620 () Bool)

(assert (= result!125620 result!125616))

(assert (=> b!1745585 t!162248))

(declare-fun b_and!129953 () Bool)

(assert (= b_and!129945 (and (=> t!162248 result!125620) b_and!129953)))

(declare-fun tb!104425 () Bool)

(declare-fun t!162250 () Bool)

(assert (=> (and b!1745601 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162250) tb!104425))

(declare-fun result!125622 () Bool)

(assert (= result!125622 result!125616))

(assert (=> b!1745585 t!162250))

(declare-fun b_and!129955 () Bool)

(assert (= b_and!129949 (and (=> t!162250 result!125622) b_and!129955)))

(declare-fun b_lambda!55953 () Bool)

(assert (=> (not b_lambda!55953) (not b!1745585)))

(declare-fun t!162252 () Bool)

(declare-fun tb!104427 () Bool)

(assert (=> (and b!1745577 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162252) tb!104427))

(declare-fun result!125624 () Bool)

(assert (=> tb!104427 (= result!125624 (inv!21 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))

(declare-fun m!2157491 () Bool)

(assert (=> tb!104427 m!2157491))

(assert (=> b!1745585 t!162252))

(declare-fun b_and!129957 () Bool)

(assert (= b_and!129939 (and (=> t!162252 result!125624) b_and!129957)))

(declare-fun tb!104429 () Bool)

(declare-fun t!162254 () Bool)

(assert (=> (and b!1745592 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162254) tb!104429))

(declare-fun result!125628 () Bool)

(assert (= result!125628 result!125624))

(assert (=> b!1745585 t!162254))

(declare-fun b_and!129959 () Bool)

(assert (= b_and!129943 (and (=> t!162254 result!125628) b_and!129959)))

(declare-fun t!162256 () Bool)

(declare-fun tb!104431 () Bool)

(assert (=> (and b!1745601 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162256) tb!104431))

(declare-fun result!125630 () Bool)

(assert (= result!125630 result!125624))

(assert (=> b!1745585 t!162256))

(declare-fun b_and!129961 () Bool)

(assert (= b_and!129947 (and (=> t!162256 result!125630) b_and!129961)))

(declare-fun b_lambda!55955 () Bool)

(assert (=> (not b_lambda!55955) (not b!1745598)))

(declare-fun t!162258 () Bool)

(declare-fun tb!104433 () Bool)

(assert (=> (and b!1745577 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162258) tb!104433))

(declare-fun b!1745622 () Bool)

(declare-fun e!1117178 () Bool)

(declare-fun tp!496812 () Bool)

(assert (=> b!1745622 (= e!1117178 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) tp!496812))))

(declare-fun result!125632 () Bool)

(assert (=> tb!104433 (= result!125632 (and (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))) e!1117178))))

(assert (= tb!104433 b!1745622))

(declare-fun m!2157493 () Bool)

(assert (=> b!1745622 m!2157493))

(declare-fun m!2157495 () Bool)

(assert (=> tb!104433 m!2157495))

(assert (=> b!1745598 t!162258))

(declare-fun b_and!129963 () Bool)

(assert (= b_and!129951 (and (=> t!162258 result!125632) b_and!129963)))

(declare-fun tb!104435 () Bool)

(declare-fun t!162260 () Bool)

(assert (=> (and b!1745592 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162260) tb!104435))

(declare-fun result!125634 () Bool)

(assert (= result!125634 result!125632))

(assert (=> b!1745598 t!162260))

(declare-fun b_and!129965 () Bool)

(assert (= b_and!129953 (and (=> t!162260 result!125634) b_and!129965)))

(declare-fun tb!104437 () Bool)

(declare-fun t!162262 () Bool)

(assert (=> (and b!1745601 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162262) tb!104437))

(declare-fun result!125636 () Bool)

(assert (= result!125636 result!125632))

(assert (=> b!1745598 t!162262))

(declare-fun b_and!129967 () Bool)

(assert (= b_and!129955 (and (=> t!162262 result!125636) b_and!129967)))

(declare-fun m!2157497 () Bool)

(assert (=> b!1745581 m!2157497))

(declare-fun m!2157499 () Bool)

(assert (=> b!1745581 m!2157499))

(assert (=> b!1745581 m!2157497))

(declare-fun m!2157501 () Bool)

(assert (=> b!1745581 m!2157501))

(declare-fun m!2157503 () Bool)

(assert (=> b!1745581 m!2157503))

(declare-fun m!2157505 () Bool)

(assert (=> b!1745581 m!2157505))

(declare-fun m!2157507 () Bool)

(assert (=> b!1745593 m!2157507))

(declare-fun m!2157509 () Bool)

(assert (=> b!1745593 m!2157509))

(declare-fun m!2157511 () Bool)

(assert (=> b!1745593 m!2157511))

(declare-fun m!2157513 () Bool)

(assert (=> b!1745589 m!2157513))

(declare-fun m!2157515 () Bool)

(assert (=> b!1745589 m!2157515))

(declare-fun m!2157517 () Bool)

(assert (=> b!1745589 m!2157517))

(assert (=> b!1745589 m!2157517))

(declare-fun m!2157519 () Bool)

(assert (=> b!1745589 m!2157519))

(declare-fun m!2157521 () Bool)

(assert (=> b!1745585 m!2157521))

(assert (=> b!1745585 m!2157521))

(declare-fun m!2157523 () Bool)

(assert (=> b!1745585 m!2157523))

(assert (=> b!1745585 m!2157523))

(declare-fun m!2157525 () Bool)

(assert (=> b!1745585 m!2157525))

(declare-fun m!2157527 () Bool)

(assert (=> b!1745585 m!2157527))

(declare-fun m!2157529 () Bool)

(assert (=> b!1745599 m!2157529))

(declare-fun m!2157531 () Bool)

(assert (=> b!1745599 m!2157531))

(declare-fun m!2157533 () Bool)

(assert (=> b!1745597 m!2157533))

(declare-fun m!2157535 () Bool)

(assert (=> b!1745597 m!2157535))

(declare-fun m!2157537 () Bool)

(assert (=> b!1745578 m!2157537))

(declare-fun m!2157539 () Bool)

(assert (=> b!1745578 m!2157539))

(declare-fun m!2157541 () Bool)

(assert (=> b!1745578 m!2157541))

(declare-fun m!2157543 () Bool)

(assert (=> b!1745578 m!2157543))

(declare-fun m!2157545 () Bool)

(assert (=> b!1745578 m!2157545))

(declare-fun m!2157547 () Bool)

(assert (=> b!1745578 m!2157547))

(declare-fun m!2157549 () Bool)

(assert (=> b!1745578 m!2157549))

(declare-fun m!2157551 () Bool)

(assert (=> b!1745578 m!2157551))

(declare-fun m!2157553 () Bool)

(assert (=> b!1745578 m!2157553))

(declare-fun m!2157555 () Bool)

(assert (=> b!1745578 m!2157555))

(declare-fun m!2157557 () Bool)

(assert (=> b!1745578 m!2157557))

(declare-fun m!2157559 () Bool)

(assert (=> b!1745578 m!2157559))

(declare-fun m!2157561 () Bool)

(assert (=> b!1745578 m!2157561))

(assert (=> b!1745578 m!2157549))

(declare-fun m!2157563 () Bool)

(assert (=> b!1745578 m!2157563))

(declare-fun m!2157565 () Bool)

(assert (=> b!1745578 m!2157565))

(declare-fun m!2157567 () Bool)

(assert (=> b!1745602 m!2157567))

(declare-fun m!2157569 () Bool)

(assert (=> b!1745598 m!2157569))

(declare-fun m!2157571 () Bool)

(assert (=> b!1745591 m!2157571))

(declare-fun m!2157573 () Bool)

(assert (=> start!172030 m!2157573))

(declare-fun m!2157575 () Bool)

(assert (=> b!1745586 m!2157575))

(declare-fun m!2157577 () Bool)

(assert (=> b!1745600 m!2157577))

(declare-fun m!2157579 () Bool)

(assert (=> b!1745600 m!2157579))

(declare-fun m!2157581 () Bool)

(assert (=> b!1745600 m!2157581))

(assert (=> b!1745600 m!2157577))

(assert (=> b!1745600 m!2157581))

(declare-fun m!2157583 () Bool)

(assert (=> b!1745600 m!2157583))

(declare-fun m!2157585 () Bool)

(assert (=> b!1745582 m!2157585))

(assert (=> b!1745590 m!2157547))

(assert (=> b!1745590 m!2157547))

(declare-fun m!2157587 () Bool)

(assert (=> b!1745590 m!2157587))

(assert (=> b!1745590 m!2157587))

(declare-fun m!2157589 () Bool)

(assert (=> b!1745590 m!2157589))

(declare-fun m!2157591 () Bool)

(assert (=> b!1745590 m!2157591))

(declare-fun m!2157593 () Bool)

(assert (=> b!1745603 m!2157593))

(declare-fun m!2157595 () Bool)

(assert (=> b!1745587 m!2157595))

(declare-fun m!2157597 () Bool)

(assert (=> b!1745587 m!2157597))

(declare-fun m!2157599 () Bool)

(assert (=> b!1745584 m!2157599))

(declare-fun m!2157601 () Bool)

(assert (=> b!1745584 m!2157601))

(declare-fun m!2157603 () Bool)

(assert (=> b!1745588 m!2157603))

(declare-fun m!2157605 () Bool)

(assert (=> b!1745596 m!2157605))

(declare-fun m!2157607 () Bool)

(assert (=> b!1745594 m!2157607))

(check-sat (not b!1745590) (not b!1745581) (not b!1745585) (not b!1745578) (not b!1745587) b_and!129961 (not b!1745588) (not b!1745603) (not b!1745595) (not b_lambda!55955) b_and!129959 (not b!1745599) b_and!129963 (not b_lambda!55953) (not b!1745600) (not b!1745619) b_and!129965 b_and!129957 (not tb!104433) (not b!1745593) (not b!1745594) (not b_next!48755) (not b_lambda!55951) (not b_next!48747) (not b!1745586) tp_is_empty!7737 (not b!1745589) (not tb!104427) (not b!1745622) (not b!1745584) (not b!1745582) (not b!1745596) (not b!1745602) b_and!129967 (not tb!104421) (not b!1745597) (not b_next!48749) (not b!1745579) (not start!172030) (not b_next!48757) (not b_next!48751) (not b!1745591) (not b_next!48753))
(check-sat b_and!129965 b_and!129957 (not b_next!48755) (not b_next!48747) b_and!129961 b_and!129967 (not b_next!48749) (not b_next!48757) b_and!129959 b_and!129963 (not b_next!48751) (not b_next!48753))
(get-model)

(declare-fun d!533402 () Bool)

(declare-fun res!784983 () Bool)

(declare-fun e!1117223 () Bool)

(assert (=> d!533402 (=> (not res!784983) (not e!1117223))))

(assert (=> d!533402 (= res!784983 (not (isEmpty!12086 (originalCharacters!4233 token!523))))))

(assert (=> d!533402 (= (inv!24869 token!523) e!1117223)))

(declare-fun b!1745705 () Bool)

(declare-fun res!784984 () Bool)

(assert (=> b!1745705 (=> (not res!784984) (not e!1117223))))

(assert (=> b!1745705 (= res!784984 (= (originalCharacters!4233 token!523) (list!7768 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))))))

(declare-fun b!1745706 () Bool)

(declare-fun size!15236 (List!19259) Int)

(assert (=> b!1745706 (= e!1117223 (= (size!15233 token!523) (size!15236 (originalCharacters!4233 token!523))))))

(assert (= (and d!533402 res!784983) b!1745705))

(assert (= (and b!1745705 res!784984) b!1745706))

(declare-fun b_lambda!55959 () Bool)

(assert (=> (not b_lambda!55959) (not b!1745705)))

(declare-fun t!162267 () Bool)

(declare-fun tb!104439 () Bool)

(assert (=> (and b!1745577 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 token!523)))) t!162267) tb!104439))

(declare-fun b!1745707 () Bool)

(declare-fun e!1117224 () Bool)

(declare-fun tp!496813 () Bool)

(assert (=> b!1745707 (= e!1117224 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))) tp!496813))))

(declare-fun result!125638 () Bool)

(assert (=> tb!104439 (= result!125638 (and (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))) e!1117224))))

(assert (= tb!104439 b!1745707))

(declare-fun m!2157671 () Bool)

(assert (=> b!1745707 m!2157671))

(declare-fun m!2157673 () Bool)

(assert (=> tb!104439 m!2157673))

(assert (=> b!1745705 t!162267))

(declare-fun b_and!129975 () Bool)

(assert (= b_and!129963 (and (=> t!162267 result!125638) b_and!129975)))

(declare-fun tb!104441 () Bool)

(declare-fun t!162269 () Bool)

(assert (=> (and b!1745592 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 token!523)))) t!162269) tb!104441))

(declare-fun result!125640 () Bool)

(assert (= result!125640 result!125638))

(assert (=> b!1745705 t!162269))

(declare-fun b_and!129977 () Bool)

(assert (= b_and!129965 (and (=> t!162269 result!125640) b_and!129977)))

(declare-fun tb!104443 () Bool)

(declare-fun t!162271 () Bool)

(assert (=> (and b!1745601 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 token!523)))) t!162271) tb!104443))

(declare-fun result!125642 () Bool)

(assert (= result!125642 result!125638))

(assert (=> b!1745705 t!162271))

(declare-fun b_and!129979 () Bool)

(assert (= b_and!129967 (and (=> t!162271 result!125642) b_and!129979)))

(declare-fun m!2157675 () Bool)

(assert (=> d!533402 m!2157675))

(declare-fun m!2157677 () Bool)

(assert (=> b!1745705 m!2157677))

(assert (=> b!1745705 m!2157677))

(declare-fun m!2157679 () Bool)

(assert (=> b!1745705 m!2157679))

(declare-fun m!2157681 () Bool)

(assert (=> b!1745706 m!2157681))

(assert (=> start!172030 d!533402))

(declare-fun d!533408 () Bool)

(declare-fun c!284791 () Bool)

(assert (=> d!533408 (= c!284791 ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))

(declare-fun e!1117238 () Bool)

(assert (=> d!533408 (= (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) e!1117238)))

(declare-fun b!1745726 () Bool)

(declare-fun inv!24873 (Conc!6383) Bool)

(assert (=> b!1745726 (= e!1117238 (inv!24873 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))

(declare-fun b!1745727 () Bool)

(declare-fun e!1117239 () Bool)

(assert (=> b!1745727 (= e!1117238 e!1117239)))

(declare-fun res!784999 () Bool)

(assert (=> b!1745727 (= res!784999 (not ((_ is Leaf!9313) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(assert (=> b!1745727 (=> res!784999 e!1117239)))

(declare-fun b!1745728 () Bool)

(declare-fun inv!24874 (Conc!6383) Bool)

(assert (=> b!1745728 (= e!1117239 (inv!24874 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))

(assert (= (and d!533408 c!284791) b!1745726))

(assert (= (and d!533408 (not c!284791)) b!1745727))

(assert (= (and b!1745727 (not res!784999)) b!1745728))

(declare-fun m!2157693 () Bool)

(assert (=> b!1745726 m!2157693))

(declare-fun m!2157695 () Bool)

(assert (=> b!1745728 m!2157695))

(assert (=> b!1745619 d!533408))

(declare-fun d!533412 () Bool)

(assert (=> d!533412 (= (get!5789 lt!673082) (v!25301 lt!673082))))

(assert (=> b!1745596 d!533412))

(declare-fun d!533414 () Bool)

(declare-fun res!785002 () Bool)

(declare-fun e!1117242 () Bool)

(assert (=> d!533414 (=> (not res!785002) (not e!1117242))))

(declare-fun rulesValid!1280 (LexerInterface!3048 List!19260) Bool)

(assert (=> d!533414 (= res!785002 (rulesValid!1280 thiss!24550 rules!3447))))

(assert (=> d!533414 (= (rulesInvariant!2717 thiss!24550 rules!3447) e!1117242)))

(declare-fun b!1745731 () Bool)

(declare-datatypes ((List!19263 0))(
  ( (Nil!19193) (Cons!19193 (h!24594 String!21877) (t!162312 List!19263)) )
))
(declare-fun noDuplicateTag!1280 (LexerInterface!3048 List!19260 List!19263) Bool)

(assert (=> b!1745731 (= e!1117242 (noDuplicateTag!1280 thiss!24550 rules!3447 Nil!19193))))

(assert (= (and d!533414 res!785002) b!1745731))

(declare-fun m!2157697 () Bool)

(assert (=> d!533414 m!2157697))

(declare-fun m!2157699 () Bool)

(assert (=> b!1745731 m!2157699))

(assert (=> b!1745594 d!533414))

(declare-fun b!1745760 () Bool)

(declare-fun e!1117260 () Bool)

(declare-fun lt!673118 () Bool)

(declare-fun call!110240 () Bool)

(assert (=> b!1745760 (= e!1117260 (= lt!673118 call!110240))))

(declare-fun b!1745761 () Bool)

(declare-fun e!1117262 () Bool)

(assert (=> b!1745761 (= e!1117262 (not lt!673118))))

(declare-fun b!1745762 () Bool)

(declare-fun e!1117261 () Bool)

(declare-fun nullable!1441 (Regex!4747) Bool)

(assert (=> b!1745762 (= e!1117261 (nullable!1441 (regex!3419 rule!422)))))

(declare-fun bm!110235 () Bool)

(assert (=> bm!110235 (= call!110240 (isEmpty!12086 lt!673098))))

(declare-fun b!1745763 () Bool)

(declare-fun e!1117257 () Bool)

(assert (=> b!1745763 (= e!1117257 (not (= (head!4010 lt!673098) (c!284766 (regex!3419 rule!422)))))))

(declare-fun b!1745764 () Bool)

(declare-fun res!785026 () Bool)

(declare-fun e!1117263 () Bool)

(assert (=> b!1745764 (=> (not res!785026) (not e!1117263))))

(declare-fun tail!2609 (List!19259) List!19259)

(assert (=> b!1745764 (= res!785026 (isEmpty!12086 (tail!2609 lt!673098)))))

(declare-fun b!1745765 () Bool)

(declare-fun e!1117258 () Bool)

(declare-fun e!1117259 () Bool)

(assert (=> b!1745765 (= e!1117258 e!1117259)))

(declare-fun res!785021 () Bool)

(assert (=> b!1745765 (=> (not res!785021) (not e!1117259))))

(assert (=> b!1745765 (= res!785021 (not lt!673118))))

(declare-fun b!1745766 () Bool)

(declare-fun res!785022 () Bool)

(assert (=> b!1745766 (=> res!785022 e!1117258)))

(assert (=> b!1745766 (= res!785022 e!1117263)))

(declare-fun res!785023 () Bool)

(assert (=> b!1745766 (=> (not res!785023) (not e!1117263))))

(assert (=> b!1745766 (= res!785023 lt!673118)))

(declare-fun b!1745767 () Bool)

(assert (=> b!1745767 (= e!1117260 e!1117262)))

(declare-fun c!284799 () Bool)

(assert (=> b!1745767 (= c!284799 ((_ is EmptyLang!4747) (regex!3419 rule!422)))))

(declare-fun b!1745768 () Bool)

(declare-fun res!785019 () Bool)

(assert (=> b!1745768 (=> (not res!785019) (not e!1117263))))

(assert (=> b!1745768 (= res!785019 (not call!110240))))

(declare-fun b!1745769 () Bool)

(declare-fun res!785025 () Bool)

(assert (=> b!1745769 (=> res!785025 e!1117257)))

(assert (=> b!1745769 (= res!785025 (not (isEmpty!12086 (tail!2609 lt!673098))))))

(declare-fun b!1745770 () Bool)

(assert (=> b!1745770 (= e!1117259 e!1117257)))

(declare-fun res!785020 () Bool)

(assert (=> b!1745770 (=> res!785020 e!1117257)))

(assert (=> b!1745770 (= res!785020 call!110240)))

(declare-fun b!1745771 () Bool)

(declare-fun derivativeStep!1210 (Regex!4747 C!9668) Regex!4747)

(assert (=> b!1745771 (= e!1117261 (matchR!2221 (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098)) (tail!2609 lt!673098)))))

(declare-fun b!1745772 () Bool)

(assert (=> b!1745772 (= e!1117263 (= (head!4010 lt!673098) (c!284766 (regex!3419 rule!422))))))

(declare-fun b!1745773 () Bool)

(declare-fun res!785024 () Bool)

(assert (=> b!1745773 (=> res!785024 e!1117258)))

(assert (=> b!1745773 (= res!785024 (not ((_ is ElementMatch!4747) (regex!3419 rule!422))))))

(assert (=> b!1745773 (= e!1117262 e!1117258)))

(declare-fun d!533416 () Bool)

(assert (=> d!533416 e!1117260))

(declare-fun c!284800 () Bool)

(assert (=> d!533416 (= c!284800 ((_ is EmptyExpr!4747) (regex!3419 rule!422)))))

(assert (=> d!533416 (= lt!673118 e!1117261)))

(declare-fun c!284798 () Bool)

(assert (=> d!533416 (= c!284798 (isEmpty!12086 lt!673098))))

(declare-fun validRegex!1915 (Regex!4747) Bool)

(assert (=> d!533416 (validRegex!1915 (regex!3419 rule!422))))

(assert (=> d!533416 (= (matchR!2221 (regex!3419 rule!422) lt!673098) lt!673118)))

(assert (= (and d!533416 c!284798) b!1745762))

(assert (= (and d!533416 (not c!284798)) b!1745771))

(assert (= (and d!533416 c!284800) b!1745760))

(assert (= (and d!533416 (not c!284800)) b!1745767))

(assert (= (and b!1745767 c!284799) b!1745761))

(assert (= (and b!1745767 (not c!284799)) b!1745773))

(assert (= (and b!1745773 (not res!785024)) b!1745766))

(assert (= (and b!1745766 res!785023) b!1745768))

(assert (= (and b!1745768 res!785019) b!1745764))

(assert (= (and b!1745764 res!785026) b!1745772))

(assert (= (and b!1745766 (not res!785022)) b!1745765))

(assert (= (and b!1745765 res!785021) b!1745770))

(assert (= (and b!1745770 (not res!785020)) b!1745769))

(assert (= (and b!1745769 (not res!785025)) b!1745763))

(assert (= (or b!1745760 b!1745770 b!1745768) bm!110235))

(declare-fun m!2157701 () Bool)

(assert (=> b!1745771 m!2157701))

(assert (=> b!1745771 m!2157701))

(declare-fun m!2157703 () Bool)

(assert (=> b!1745771 m!2157703))

(declare-fun m!2157705 () Bool)

(assert (=> b!1745771 m!2157705))

(assert (=> b!1745771 m!2157703))

(assert (=> b!1745771 m!2157705))

(declare-fun m!2157707 () Bool)

(assert (=> b!1745771 m!2157707))

(declare-fun m!2157709 () Bool)

(assert (=> bm!110235 m!2157709))

(assert (=> b!1745764 m!2157705))

(assert (=> b!1745764 m!2157705))

(declare-fun m!2157711 () Bool)

(assert (=> b!1745764 m!2157711))

(assert (=> b!1745769 m!2157705))

(assert (=> b!1745769 m!2157705))

(assert (=> b!1745769 m!2157711))

(declare-fun m!2157713 () Bool)

(assert (=> b!1745762 m!2157713))

(assert (=> b!1745772 m!2157701))

(assert (=> b!1745763 m!2157701))

(assert (=> d!533416 m!2157709))

(declare-fun m!2157715 () Bool)

(assert (=> d!533416 m!2157715))

(assert (=> b!1745593 d!533416))

(declare-fun d!533418 () Bool)

(declare-fun res!785031 () Bool)

(declare-fun e!1117266 () Bool)

(assert (=> d!533418 (=> (not res!785031) (not e!1117266))))

(assert (=> d!533418 (= res!785031 (validRegex!1915 (regex!3419 rule!422)))))

(assert (=> d!533418 (= (ruleValid!918 thiss!24550 rule!422) e!1117266)))

(declare-fun b!1745778 () Bool)

(declare-fun res!785032 () Bool)

(assert (=> b!1745778 (=> (not res!785032) (not e!1117266))))

(assert (=> b!1745778 (= res!785032 (not (nullable!1441 (regex!3419 rule!422))))))

(declare-fun b!1745779 () Bool)

(assert (=> b!1745779 (= e!1117266 (not (= (tag!3765 rule!422) (String!21878 ""))))))

(assert (= (and d!533418 res!785031) b!1745778))

(assert (= (and b!1745778 res!785032) b!1745779))

(assert (=> d!533418 m!2157715))

(assert (=> b!1745778 m!2157713))

(assert (=> b!1745593 d!533418))

(declare-fun d!533420 () Bool)

(assert (=> d!533420 (ruleValid!918 thiss!24550 rule!422)))

(declare-fun lt!673121 () Unit!33261)

(declare-fun choose!10759 (LexerInterface!3048 Rule!6638 List!19260) Unit!33261)

(assert (=> d!533420 (= lt!673121 (choose!10759 thiss!24550 rule!422 rules!3447))))

(assert (=> d!533420 (contains!3443 rules!3447 rule!422)))

(assert (=> d!533420 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!442 thiss!24550 rule!422 rules!3447) lt!673121)))

(declare-fun bs!403238 () Bool)

(assert (= bs!403238 d!533420))

(assert (=> bs!403238 m!2157509))

(declare-fun m!2157717 () Bool)

(assert (=> bs!403238 m!2157717))

(assert (=> bs!403238 m!2157567))

(assert (=> b!1745593 d!533420))

(declare-fun b!1745780 () Bool)

(declare-fun e!1117270 () Bool)

(declare-fun lt!673122 () Bool)

(declare-fun call!110241 () Bool)

(assert (=> b!1745780 (= e!1117270 (= lt!673122 call!110241))))

(declare-fun b!1745781 () Bool)

(declare-fun e!1117272 () Bool)

(assert (=> b!1745781 (= e!1117272 (not lt!673122))))

(declare-fun b!1745782 () Bool)

(declare-fun e!1117271 () Bool)

(assert (=> b!1745782 (= e!1117271 (nullable!1441 (regex!3419 lt!673088)))))

(declare-fun bm!110236 () Bool)

(assert (=> bm!110236 (= call!110241 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(declare-fun b!1745783 () Bool)

(declare-fun e!1117267 () Bool)

(assert (=> b!1745783 (= e!1117267 (not (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) (c!284766 (regex!3419 lt!673088)))))))

(declare-fun b!1745784 () Bool)

(declare-fun res!785040 () Bool)

(declare-fun e!1117273 () Bool)

(assert (=> b!1745784 (=> (not res!785040) (not e!1117273))))

(assert (=> b!1745784 (= res!785040 (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1745785 () Bool)

(declare-fun e!1117268 () Bool)

(declare-fun e!1117269 () Bool)

(assert (=> b!1745785 (= e!1117268 e!1117269)))

(declare-fun res!785035 () Bool)

(assert (=> b!1745785 (=> (not res!785035) (not e!1117269))))

(assert (=> b!1745785 (= res!785035 (not lt!673122))))

(declare-fun b!1745786 () Bool)

(declare-fun res!785036 () Bool)

(assert (=> b!1745786 (=> res!785036 e!1117268)))

(assert (=> b!1745786 (= res!785036 e!1117273)))

(declare-fun res!785037 () Bool)

(assert (=> b!1745786 (=> (not res!785037) (not e!1117273))))

(assert (=> b!1745786 (= res!785037 lt!673122)))

(declare-fun b!1745787 () Bool)

(assert (=> b!1745787 (= e!1117270 e!1117272)))

(declare-fun c!284802 () Bool)

(assert (=> b!1745787 (= c!284802 ((_ is EmptyLang!4747) (regex!3419 lt!673088)))))

(declare-fun b!1745788 () Bool)

(declare-fun res!785033 () Bool)

(assert (=> b!1745788 (=> (not res!785033) (not e!1117273))))

(assert (=> b!1745788 (= res!785033 (not call!110241))))

(declare-fun b!1745789 () Bool)

(declare-fun res!785039 () Bool)

(assert (=> b!1745789 (=> res!785039 e!1117267)))

(assert (=> b!1745789 (= res!785039 (not (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))

(declare-fun b!1745790 () Bool)

(assert (=> b!1745790 (= e!1117269 e!1117267)))

(declare-fun res!785034 () Bool)

(assert (=> b!1745790 (=> res!785034 e!1117267)))

(assert (=> b!1745790 (= res!785034 call!110241)))

(declare-fun b!1745791 () Bool)

(assert (=> b!1745791 (= e!1117271 (matchR!2221 (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1745792 () Bool)

(assert (=> b!1745792 (= e!1117273 (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) (c!284766 (regex!3419 lt!673088))))))

(declare-fun b!1745793 () Bool)

(declare-fun res!785038 () Bool)

(assert (=> b!1745793 (=> res!785038 e!1117268)))

(assert (=> b!1745793 (= res!785038 (not ((_ is ElementMatch!4747) (regex!3419 lt!673088))))))

(assert (=> b!1745793 (= e!1117272 e!1117268)))

(declare-fun d!533422 () Bool)

(assert (=> d!533422 e!1117270))

(declare-fun c!284803 () Bool)

(assert (=> d!533422 (= c!284803 ((_ is EmptyExpr!4747) (regex!3419 lt!673088)))))

(assert (=> d!533422 (= lt!673122 e!1117271)))

(declare-fun c!284801 () Bool)

(assert (=> d!533422 (= c!284801 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(assert (=> d!533422 (validRegex!1915 (regex!3419 lt!673088))))

(assert (=> d!533422 (= (matchR!2221 (regex!3419 lt!673088) (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) lt!673122)))

(assert (= (and d!533422 c!284801) b!1745782))

(assert (= (and d!533422 (not c!284801)) b!1745791))

(assert (= (and d!533422 c!284803) b!1745780))

(assert (= (and d!533422 (not c!284803)) b!1745787))

(assert (= (and b!1745787 c!284802) b!1745781))

(assert (= (and b!1745787 (not c!284802)) b!1745793))

(assert (= (and b!1745793 (not res!785038)) b!1745786))

(assert (= (and b!1745786 res!785037) b!1745788))

(assert (= (and b!1745788 res!785033) b!1745784))

(assert (= (and b!1745784 res!785040) b!1745792))

(assert (= (and b!1745786 (not res!785036)) b!1745785))

(assert (= (and b!1745785 res!785035) b!1745790))

(assert (= (and b!1745790 (not res!785034)) b!1745789))

(assert (= (and b!1745789 (not res!785039)) b!1745783))

(assert (= (or b!1745780 b!1745790 b!1745788) bm!110236))

(assert (=> b!1745791 m!2157587))

(declare-fun m!2157719 () Bool)

(assert (=> b!1745791 m!2157719))

(assert (=> b!1745791 m!2157719))

(declare-fun m!2157721 () Bool)

(assert (=> b!1745791 m!2157721))

(assert (=> b!1745791 m!2157587))

(declare-fun m!2157723 () Bool)

(assert (=> b!1745791 m!2157723))

(assert (=> b!1745791 m!2157721))

(assert (=> b!1745791 m!2157723))

(declare-fun m!2157725 () Bool)

(assert (=> b!1745791 m!2157725))

(assert (=> bm!110236 m!2157587))

(declare-fun m!2157727 () Bool)

(assert (=> bm!110236 m!2157727))

(assert (=> b!1745784 m!2157587))

(assert (=> b!1745784 m!2157723))

(assert (=> b!1745784 m!2157723))

(declare-fun m!2157729 () Bool)

(assert (=> b!1745784 m!2157729))

(assert (=> b!1745789 m!2157587))

(assert (=> b!1745789 m!2157723))

(assert (=> b!1745789 m!2157723))

(assert (=> b!1745789 m!2157729))

(declare-fun m!2157731 () Bool)

(assert (=> b!1745782 m!2157731))

(assert (=> b!1745792 m!2157587))

(assert (=> b!1745792 m!2157719))

(assert (=> b!1745783 m!2157587))

(assert (=> b!1745783 m!2157719))

(assert (=> d!533422 m!2157587))

(assert (=> d!533422 m!2157727))

(declare-fun m!2157733 () Bool)

(assert (=> d!533422 m!2157733))

(assert (=> b!1745590 d!533422))

(declare-fun d!533424 () Bool)

(declare-fun list!7771 (Conc!6383) List!19259)

(assert (=> d!533424 (= (list!7768 (charsOf!2068 (_1!10817 lt!673096))) (list!7771 (c!284767 (charsOf!2068 (_1!10817 lt!673096)))))))

(declare-fun bs!403239 () Bool)

(assert (= bs!403239 d!533424))

(declare-fun m!2157735 () Bool)

(assert (=> bs!403239 m!2157735))

(assert (=> b!1745590 d!533424))

(declare-fun d!533426 () Bool)

(declare-fun lt!673125 () BalanceConc!12710)

(assert (=> d!533426 (= (list!7768 lt!673125) (originalCharacters!4233 (_1!10817 lt!673096)))))

(assert (=> d!533426 (= lt!673125 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))

(assert (=> d!533426 (= (charsOf!2068 (_1!10817 lt!673096)) lt!673125)))

(declare-fun b_lambda!55961 () Bool)

(assert (=> (not b_lambda!55961) (not d!533426)))

(assert (=> d!533426 t!162258))

(declare-fun b_and!129981 () Bool)

(assert (= b_and!129975 (and (=> t!162258 result!125632) b_and!129981)))

(assert (=> d!533426 t!162260))

(declare-fun b_and!129983 () Bool)

(assert (= b_and!129977 (and (=> t!162260 result!125634) b_and!129983)))

(assert (=> d!533426 t!162262))

(declare-fun b_and!129985 () Bool)

(assert (= b_and!129979 (and (=> t!162262 result!125636) b_and!129985)))

(declare-fun m!2157737 () Bool)

(assert (=> d!533426 m!2157737))

(assert (=> d!533426 m!2157569))

(assert (=> b!1745590 d!533426))

(declare-fun d!533428 () Bool)

(assert (=> d!533428 (= (get!5790 lt!673093) (v!25300 lt!673093))))

(assert (=> b!1745590 d!533428))

(declare-fun d!533430 () Bool)

(declare-fun isEmpty!12089 (Option!3863) Bool)

(assert (=> d!533430 (= (isDefined!3206 lt!673082) (not (isEmpty!12089 lt!673082)))))

(declare-fun bs!403240 () Bool)

(assert (= bs!403240 d!533430))

(declare-fun m!2157739 () Bool)

(assert (=> bs!403240 m!2157739))

(assert (=> b!1745589 d!533430))

(declare-fun b!1745820 () Bool)

(declare-fun e!1117286 () Bool)

(declare-fun e!1117287 () Bool)

(assert (=> b!1745820 (= e!1117286 e!1117287)))

(declare-fun res!785065 () Bool)

(assert (=> b!1745820 (=> (not res!785065) (not e!1117287))))

(declare-fun lt!673174 () Option!3863)

(assert (=> b!1745820 (= res!785065 (isDefined!3206 lt!673174))))

(declare-fun b!1745821 () Bool)

(declare-fun res!785064 () Bool)

(assert (=> b!1745821 (=> (not res!785064) (not e!1117287))))

(assert (=> b!1745821 (= res!785064 (matchR!2221 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))))))

(declare-fun call!110244 () Option!3863)

(declare-fun bm!110239 () Bool)

(declare-fun maxPrefixOneRule!974 (LexerInterface!3048 Rule!6638 List!19259) Option!3863)

(assert (=> bm!110239 (= call!110244 (maxPrefixOneRule!974 thiss!24550 (h!24591 rules!3447) lt!673098))))

(declare-fun b!1745823 () Bool)

(declare-fun e!1117288 () Option!3863)

(declare-fun lt!673177 () Option!3863)

(declare-fun lt!673179 () Option!3863)

(assert (=> b!1745823 (= e!1117288 (ite (and ((_ is None!3862) lt!673177) ((_ is None!3862) lt!673179)) None!3862 (ite ((_ is None!3862) lt!673179) lt!673177 (ite ((_ is None!3862) lt!673177) lt!673179 (ite (>= (size!15233 (_1!10817 (v!25301 lt!673177))) (size!15233 (_1!10817 (v!25301 lt!673179)))) lt!673177 lt!673179)))))))

(assert (=> b!1745823 (= lt!673177 call!110244)))

(assert (=> b!1745823 (= lt!673179 (maxPrefix!1602 thiss!24550 (t!162265 rules!3447) lt!673098))))

(declare-fun b!1745825 () Bool)

(declare-fun res!785066 () Bool)

(assert (=> b!1745825 (=> (not res!785066) (not e!1117287))))

(assert (=> b!1745825 (= res!785066 (= (value!107114 (_1!10817 (get!5789 lt!673174))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673174)))))))))

(declare-fun d!533432 () Bool)

(assert (=> d!533432 e!1117286))

(declare-fun res!785067 () Bool)

(assert (=> d!533432 (=> res!785067 e!1117286)))

(assert (=> d!533432 (= res!785067 (isEmpty!12089 lt!673174))))

(assert (=> d!533432 (= lt!673174 e!1117288)))

(declare-fun c!284809 () Bool)

(assert (=> d!533432 (= c!284809 (and ((_ is Cons!19190) rules!3447) ((_ is Nil!19190) (t!162265 rules!3447))))))

(declare-fun lt!673182 () Unit!33261)

(declare-fun lt!673185 () Unit!33261)

(assert (=> d!533432 (= lt!673182 lt!673185)))

(assert (=> d!533432 (isPrefix!1660 lt!673098 lt!673098)))

(declare-fun lemmaIsPrefixRefl!1107 (List!19259 List!19259) Unit!33261)

(assert (=> d!533432 (= lt!673185 (lemmaIsPrefixRefl!1107 lt!673098 lt!673098))))

(declare-fun rulesValidInductive!1144 (LexerInterface!3048 List!19260) Bool)

(assert (=> d!533432 (rulesValidInductive!1144 thiss!24550 rules!3447)))

(assert (=> d!533432 (= (maxPrefix!1602 thiss!24550 rules!3447 lt!673098) lt!673174)))

(declare-fun b!1745827 () Bool)

(declare-fun res!785061 () Bool)

(assert (=> b!1745827 (=> (not res!785061) (not e!1117287))))

(assert (=> b!1745827 (= res!785061 (= (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))) (originalCharacters!4233 (_1!10817 (get!5789 lt!673174)))))))

(declare-fun b!1745829 () Bool)

(assert (=> b!1745829 (= e!1117288 call!110244)))

(declare-fun b!1745830 () Bool)

(assert (=> b!1745830 (= e!1117287 (contains!3443 rules!3447 (rule!5423 (_1!10817 (get!5789 lt!673174)))))))

(declare-fun b!1745831 () Bool)

(declare-fun res!785060 () Bool)

(assert (=> b!1745831 (=> (not res!785060) (not e!1117287))))

(assert (=> b!1745831 (= res!785060 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))) (_2!10817 (get!5789 lt!673174))) lt!673098))))

(declare-fun b!1745832 () Bool)

(declare-fun res!785063 () Bool)

(assert (=> b!1745832 (=> (not res!785063) (not e!1117287))))

(assert (=> b!1745832 (= res!785063 (< (size!15236 (_2!10817 (get!5789 lt!673174))) (size!15236 lt!673098)))))

(assert (= (and d!533432 c!284809) b!1745829))

(assert (= (and d!533432 (not c!284809)) b!1745823))

(assert (= (or b!1745829 b!1745823) bm!110239))

(assert (= (and d!533432 (not res!785067)) b!1745820))

(assert (= (and b!1745820 res!785065) b!1745827))

(assert (= (and b!1745827 res!785061) b!1745832))

(assert (= (and b!1745832 res!785063) b!1745831))

(assert (= (and b!1745831 res!785060) b!1745825))

(assert (= (and b!1745825 res!785066) b!1745821))

(assert (= (and b!1745821 res!785064) b!1745830))

(declare-fun m!2157759 () Bool)

(assert (=> b!1745832 m!2157759))

(declare-fun m!2157761 () Bool)

(assert (=> b!1745832 m!2157761))

(declare-fun m!2157763 () Bool)

(assert (=> b!1745832 m!2157763))

(assert (=> b!1745821 m!2157759))

(declare-fun m!2157767 () Bool)

(assert (=> b!1745821 m!2157767))

(assert (=> b!1745821 m!2157767))

(declare-fun m!2157771 () Bool)

(assert (=> b!1745821 m!2157771))

(assert (=> b!1745821 m!2157771))

(declare-fun m!2157783 () Bool)

(assert (=> b!1745821 m!2157783))

(assert (=> b!1745827 m!2157759))

(assert (=> b!1745827 m!2157767))

(assert (=> b!1745827 m!2157767))

(assert (=> b!1745827 m!2157771))

(assert (=> b!1745830 m!2157759))

(declare-fun m!2157789 () Bool)

(assert (=> b!1745830 m!2157789))

(declare-fun m!2157791 () Bool)

(assert (=> d!533432 m!2157791))

(declare-fun m!2157795 () Bool)

(assert (=> d!533432 m!2157795))

(declare-fun m!2157797 () Bool)

(assert (=> d!533432 m!2157797))

(declare-fun m!2157799 () Bool)

(assert (=> d!533432 m!2157799))

(assert (=> b!1745831 m!2157759))

(assert (=> b!1745831 m!2157767))

(assert (=> b!1745831 m!2157767))

(assert (=> b!1745831 m!2157771))

(assert (=> b!1745831 m!2157771))

(declare-fun m!2157809 () Bool)

(assert (=> b!1745831 m!2157809))

(assert (=> b!1745825 m!2157759))

(declare-fun m!2157815 () Bool)

(assert (=> b!1745825 m!2157815))

(assert (=> b!1745825 m!2157815))

(declare-fun m!2157817 () Bool)

(assert (=> b!1745825 m!2157817))

(declare-fun m!2157819 () Bool)

(assert (=> bm!110239 m!2157819))

(declare-fun m!2157821 () Bool)

(assert (=> b!1745823 m!2157821))

(declare-fun m!2157823 () Bool)

(assert (=> b!1745820 m!2157823))

(assert (=> b!1745589 d!533432))

(declare-fun d!533436 () Bool)

(assert (=> d!533436 (= (list!7768 (charsOf!2068 token!523)) (list!7771 (c!284767 (charsOf!2068 token!523))))))

(declare-fun bs!403241 () Bool)

(assert (= bs!403241 d!533436))

(declare-fun m!2157825 () Bool)

(assert (=> bs!403241 m!2157825))

(assert (=> b!1745589 d!533436))

(declare-fun d!533438 () Bool)

(declare-fun lt!673192 () BalanceConc!12710)

(assert (=> d!533438 (= (list!7768 lt!673192) (originalCharacters!4233 token!523))))

(assert (=> d!533438 (= lt!673192 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))))

(assert (=> d!533438 (= (charsOf!2068 token!523) lt!673192)))

(declare-fun b_lambda!55963 () Bool)

(assert (=> (not b_lambda!55963) (not d!533438)))

(assert (=> d!533438 t!162267))

(declare-fun b_and!129987 () Bool)

(assert (= b_and!129981 (and (=> t!162267 result!125638) b_and!129987)))

(assert (=> d!533438 t!162269))

(declare-fun b_and!129989 () Bool)

(assert (= b_and!129983 (and (=> t!162269 result!125640) b_and!129989)))

(assert (=> d!533438 t!162271))

(declare-fun b_and!129991 () Bool)

(assert (= b_and!129985 (and (=> t!162271 result!125642) b_and!129991)))

(declare-fun m!2157827 () Bool)

(assert (=> d!533438 m!2157827))

(assert (=> d!533438 m!2157677))

(assert (=> b!1745589 d!533438))

(declare-fun b!1745847 () Bool)

(declare-fun e!1117299 () Bool)

(declare-fun inv!15 (TokenValue!3509) Bool)

(assert (=> b!1745847 (= e!1117299 (inv!15 (value!107114 token!523)))))

(declare-fun b!1745848 () Bool)

(declare-fun e!1117298 () Bool)

(declare-fun e!1117300 () Bool)

(assert (=> b!1745848 (= e!1117298 e!1117300)))

(declare-fun c!284814 () Bool)

(assert (=> b!1745848 (= c!284814 ((_ is IntegerValue!10528) (value!107114 token!523)))))

(declare-fun b!1745849 () Bool)

(declare-fun inv!17 (TokenValue!3509) Bool)

(assert (=> b!1745849 (= e!1117300 (inv!17 (value!107114 token!523)))))

(declare-fun d!533440 () Bool)

(declare-fun c!284815 () Bool)

(assert (=> d!533440 (= c!284815 ((_ is IntegerValue!10527) (value!107114 token!523)))))

(assert (=> d!533440 (= (inv!21 (value!107114 token!523)) e!1117298)))

(declare-fun b!1745850 () Bool)

(declare-fun inv!16 (TokenValue!3509) Bool)

(assert (=> b!1745850 (= e!1117298 (inv!16 (value!107114 token!523)))))

(declare-fun b!1745851 () Bool)

(declare-fun res!785074 () Bool)

(assert (=> b!1745851 (=> res!785074 e!1117299)))

(assert (=> b!1745851 (= res!785074 (not ((_ is IntegerValue!10529) (value!107114 token!523))))))

(assert (=> b!1745851 (= e!1117300 e!1117299)))

(assert (= (and d!533440 c!284815) b!1745850))

(assert (= (and d!533440 (not c!284815)) b!1745848))

(assert (= (and b!1745848 c!284814) b!1745849))

(assert (= (and b!1745848 (not c!284814)) b!1745851))

(assert (= (and b!1745851 (not res!785074)) b!1745847))

(declare-fun m!2157839 () Bool)

(assert (=> b!1745847 m!2157839))

(declare-fun m!2157841 () Bool)

(assert (=> b!1745849 m!2157841))

(declare-fun m!2157843 () Bool)

(assert (=> b!1745850 m!2157843))

(assert (=> b!1745591 d!533440))

(declare-fun d!533448 () Bool)

(assert (=> d!533448 (= (inv!24864 (tag!3765 rule!422)) (= (mod (str.len (value!107113 (tag!3765 rule!422))) 2) 0))))

(assert (=> b!1745587 d!533448))

(declare-fun d!533450 () Bool)

(declare-fun res!785077 () Bool)

(declare-fun e!1117303 () Bool)

(assert (=> d!533450 (=> (not res!785077) (not e!1117303))))

(declare-fun semiInverseModEq!1355 (Int Int) Bool)

(assert (=> d!533450 (= res!785077 (semiInverseModEq!1355 (toChars!4789 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 rule!422))))))

(assert (=> d!533450 (= (inv!24870 (transformation!3419 rule!422)) e!1117303)))

(declare-fun b!1745854 () Bool)

(declare-fun equivClasses!1296 (Int Int) Bool)

(assert (=> b!1745854 (= e!1117303 (equivClasses!1296 (toChars!4789 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 rule!422))))))

(assert (= (and d!533450 res!785077) b!1745854))

(declare-fun m!2157845 () Bool)

(assert (=> d!533450 m!2157845))

(declare-fun m!2157847 () Bool)

(assert (=> b!1745854 m!2157847))

(assert (=> b!1745587 d!533450))

(declare-fun b!1745855 () Bool)

(declare-fun e!1117307 () Bool)

(declare-fun lt!673196 () Bool)

(declare-fun call!110245 () Bool)

(assert (=> b!1745855 (= e!1117307 (= lt!673196 call!110245))))

(declare-fun b!1745856 () Bool)

(declare-fun e!1117309 () Bool)

(assert (=> b!1745856 (= e!1117309 (not lt!673196))))

(declare-fun b!1745857 () Bool)

(declare-fun e!1117308 () Bool)

(assert (=> b!1745857 (= e!1117308 (nullable!1441 (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun bm!110240 () Bool)

(assert (=> bm!110240 (= call!110245 (isEmpty!12086 lt!673090))))

(declare-fun b!1745858 () Bool)

(declare-fun e!1117304 () Bool)

(assert (=> b!1745858 (= e!1117304 (not (= (head!4010 lt!673090) (c!284766 (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))))

(declare-fun b!1745859 () Bool)

(declare-fun res!785085 () Bool)

(declare-fun e!1117310 () Bool)

(assert (=> b!1745859 (=> (not res!785085) (not e!1117310))))

(assert (=> b!1745859 (= res!785085 (isEmpty!12086 (tail!2609 lt!673090)))))

(declare-fun b!1745860 () Bool)

(declare-fun e!1117305 () Bool)

(declare-fun e!1117306 () Bool)

(assert (=> b!1745860 (= e!1117305 e!1117306)))

(declare-fun res!785080 () Bool)

(assert (=> b!1745860 (=> (not res!785080) (not e!1117306))))

(assert (=> b!1745860 (= res!785080 (not lt!673196))))

(declare-fun b!1745861 () Bool)

(declare-fun res!785081 () Bool)

(assert (=> b!1745861 (=> res!785081 e!1117305)))

(assert (=> b!1745861 (= res!785081 e!1117310)))

(declare-fun res!785082 () Bool)

(assert (=> b!1745861 (=> (not res!785082) (not e!1117310))))

(assert (=> b!1745861 (= res!785082 lt!673196)))

(declare-fun b!1745862 () Bool)

(assert (=> b!1745862 (= e!1117307 e!1117309)))

(declare-fun c!284817 () Bool)

(assert (=> b!1745862 (= c!284817 ((_ is EmptyLang!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun b!1745863 () Bool)

(declare-fun res!785078 () Bool)

(assert (=> b!1745863 (=> (not res!785078) (not e!1117310))))

(assert (=> b!1745863 (= res!785078 (not call!110245))))

(declare-fun b!1745864 () Bool)

(declare-fun res!785084 () Bool)

(assert (=> b!1745864 (=> res!785084 e!1117304)))

(assert (=> b!1745864 (= res!785084 (not (isEmpty!12086 (tail!2609 lt!673090))))))

(declare-fun b!1745865 () Bool)

(assert (=> b!1745865 (= e!1117306 e!1117304)))

(declare-fun res!785079 () Bool)

(assert (=> b!1745865 (=> res!785079 e!1117304)))

(assert (=> b!1745865 (= res!785079 call!110245)))

(declare-fun b!1745866 () Bool)

(assert (=> b!1745866 (= e!1117308 (matchR!2221 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090)) (tail!2609 lt!673090)))))

(declare-fun b!1745867 () Bool)

(assert (=> b!1745867 (= e!1117310 (= (head!4010 lt!673090) (c!284766 (regex!3419 (rule!5423 (_1!10817 lt!673096))))))))

(declare-fun b!1745868 () Bool)

(declare-fun res!785083 () Bool)

(assert (=> b!1745868 (=> res!785083 e!1117305)))

(assert (=> b!1745868 (= res!785083 (not ((_ is ElementMatch!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096))))))))

(assert (=> b!1745868 (= e!1117309 e!1117305)))

(declare-fun d!533452 () Bool)

(assert (=> d!533452 e!1117307))

(declare-fun c!284818 () Bool)

(assert (=> d!533452 (= c!284818 ((_ is EmptyExpr!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(assert (=> d!533452 (= lt!673196 e!1117308)))

(declare-fun c!284816 () Bool)

(assert (=> d!533452 (= c!284816 (isEmpty!12086 lt!673090))))

(assert (=> d!533452 (validRegex!1915 (regex!3419 (rule!5423 (_1!10817 lt!673096))))))

(assert (=> d!533452 (= (matchR!2221 (regex!3419 (rule!5423 (_1!10817 lt!673096))) lt!673090) lt!673196)))

(assert (= (and d!533452 c!284816) b!1745857))

(assert (= (and d!533452 (not c!284816)) b!1745866))

(assert (= (and d!533452 c!284818) b!1745855))

(assert (= (and d!533452 (not c!284818)) b!1745862))

(assert (= (and b!1745862 c!284817) b!1745856))

(assert (= (and b!1745862 (not c!284817)) b!1745868))

(assert (= (and b!1745868 (not res!785083)) b!1745861))

(assert (= (and b!1745861 res!785082) b!1745863))

(assert (= (and b!1745863 res!785078) b!1745859))

(assert (= (and b!1745859 res!785085) b!1745867))

(assert (= (and b!1745861 (not res!785081)) b!1745860))

(assert (= (and b!1745860 res!785080) b!1745865))

(assert (= (and b!1745865 (not res!785079)) b!1745864))

(assert (= (and b!1745864 (not res!785084)) b!1745858))

(assert (= (or b!1745855 b!1745865 b!1745863) bm!110240))

(declare-fun m!2157849 () Bool)

(assert (=> b!1745866 m!2157849))

(assert (=> b!1745866 m!2157849))

(declare-fun m!2157851 () Bool)

(assert (=> b!1745866 m!2157851))

(declare-fun m!2157853 () Bool)

(assert (=> b!1745866 m!2157853))

(assert (=> b!1745866 m!2157851))

(assert (=> b!1745866 m!2157853))

(declare-fun m!2157855 () Bool)

(assert (=> b!1745866 m!2157855))

(declare-fun m!2157857 () Bool)

(assert (=> bm!110240 m!2157857))

(assert (=> b!1745859 m!2157853))

(assert (=> b!1745859 m!2157853))

(declare-fun m!2157859 () Bool)

(assert (=> b!1745859 m!2157859))

(assert (=> b!1745864 m!2157853))

(assert (=> b!1745864 m!2157853))

(assert (=> b!1745864 m!2157859))

(declare-fun m!2157861 () Bool)

(assert (=> b!1745857 m!2157861))

(assert (=> b!1745867 m!2157849))

(assert (=> b!1745858 m!2157849))

(assert (=> d!533452 m!2157857))

(declare-fun m!2157863 () Bool)

(assert (=> d!533452 m!2157863))

(assert (=> b!1745588 d!533452))

(declare-fun d!533454 () Bool)

(assert (=> d!533454 (= (inv!24864 (tag!3765 (rule!5423 token!523))) (= (mod (str.len (value!107113 (tag!3765 (rule!5423 token!523)))) 2) 0))))

(assert (=> b!1745584 d!533454))

(declare-fun d!533456 () Bool)

(declare-fun res!785090 () Bool)

(declare-fun e!1117313 () Bool)

(assert (=> d!533456 (=> (not res!785090) (not e!1117313))))

(assert (=> d!533456 (= res!785090 (semiInverseModEq!1355 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 token!523)))))))

(assert (=> d!533456 (= (inv!24870 (transformation!3419 (rule!5423 token!523))) e!1117313)))

(declare-fun b!1745873 () Bool)

(assert (=> b!1745873 (= e!1117313 (equivClasses!1296 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 token!523)))))))

(assert (= (and d!533456 res!785090) b!1745873))

(declare-fun m!2157865 () Bool)

(assert (=> d!533456 m!2157865))

(declare-fun m!2157867 () Bool)

(assert (=> b!1745873 m!2157867))

(assert (=> b!1745584 d!533456))

(declare-fun d!533458 () Bool)

(assert (=> d!533458 (= (isEmpty!12086 suffix!1421) ((_ is Nil!19189) suffix!1421))))

(assert (=> b!1745586 d!533458))

(declare-fun d!533460 () Bool)

(assert (=> d!533460 (= (list!7768 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) (list!7771 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))

(declare-fun bs!403243 () Bool)

(assert (= bs!403243 d!533460))

(declare-fun m!2157869 () Bool)

(assert (=> bs!403243 m!2157869))

(assert (=> b!1745585 d!533460))

(declare-fun bs!403245 () Bool)

(declare-fun d!533462 () Bool)

(assert (= bs!403245 (and d!533462 b!1745597)))

(declare-fun lambda!69716 () Int)

(assert (=> bs!403245 (= lambda!69716 lambda!69710)))

(declare-fun b!1745884 () Bool)

(declare-fun e!1117319 () Bool)

(assert (=> b!1745884 (= e!1117319 true)))

(assert (=> d!533462 e!1117319))

(assert (= d!533462 b!1745884))

(assert (=> b!1745884 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9087 order!11993 lambda!69716))))

(assert (=> b!1745884 (< (dynLambda!9088 order!11995 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9087 order!11993 lambda!69716))))

(assert (=> d!533462 (= (list!7768 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) (list!7768 lt!673085))))

(declare-fun lt!673201 () Unit!33261)

(declare-fun ForallOf!293 (Int BalanceConc!12710) Unit!33261)

(assert (=> d!533462 (= lt!673201 (ForallOf!293 lambda!69716 lt!673085))))

(assert (=> d!533462 (= (lemmaSemiInverse!559 (transformation!3419 (rule!5423 (_1!10817 lt!673096))) lt!673085) lt!673201)))

(declare-fun b_lambda!55965 () Bool)

(assert (=> (not b_lambda!55965) (not d!533462)))

(assert (=> d!533462 t!162246))

(declare-fun b_and!129993 () Bool)

(assert (= b_and!129987 (and (=> t!162246 result!125616) b_and!129993)))

(assert (=> d!533462 t!162248))

(declare-fun b_and!129995 () Bool)

(assert (= b_and!129989 (and (=> t!162248 result!125620) b_and!129995)))

(assert (=> d!533462 t!162250))

(declare-fun b_and!129997 () Bool)

(assert (= b_and!129991 (and (=> t!162250 result!125622) b_and!129997)))

(declare-fun b_lambda!55967 () Bool)

(assert (=> (not b_lambda!55967) (not d!533462)))

(assert (=> d!533462 t!162252))

(declare-fun b_and!129999 () Bool)

(assert (= b_and!129957 (and (=> t!162252 result!125624) b_and!129999)))

(assert (=> d!533462 t!162254))

(declare-fun b_and!130001 () Bool)

(assert (= b_and!129959 (and (=> t!162254 result!125628) b_and!130001)))

(assert (=> d!533462 t!162256))

(declare-fun b_and!130003 () Bool)

(assert (= b_and!129961 (and (=> t!162256 result!125630) b_and!130003)))

(declare-fun m!2157893 () Bool)

(assert (=> d!533462 m!2157893))

(assert (=> d!533462 m!2157521))

(assert (=> d!533462 m!2157521))

(assert (=> d!533462 m!2157523))

(assert (=> d!533462 m!2157523))

(assert (=> d!533462 m!2157525))

(assert (=> d!533462 m!2157545))

(assert (=> b!1745585 d!533462))

(declare-fun b!1745885 () Bool)

(declare-fun e!1117321 () Bool)

(assert (=> b!1745885 (= e!1117321 (inv!15 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))

(declare-fun b!1745886 () Bool)

(declare-fun e!1117320 () Bool)

(declare-fun e!1117322 () Bool)

(assert (=> b!1745886 (= e!1117320 e!1117322)))

(declare-fun c!284821 () Bool)

(assert (=> b!1745886 (= c!284821 ((_ is IntegerValue!10528) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))

(declare-fun b!1745887 () Bool)

(assert (=> b!1745887 (= e!1117322 (inv!17 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))

(declare-fun d!533470 () Bool)

(declare-fun c!284822 () Bool)

(assert (=> d!533470 (= c!284822 ((_ is IntegerValue!10527) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))

(assert (=> d!533470 (= (inv!21 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)) e!1117320)))

(declare-fun b!1745888 () Bool)

(assert (=> b!1745888 (= e!1117320 (inv!16 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))

(declare-fun b!1745889 () Bool)

(declare-fun res!785095 () Bool)

(assert (=> b!1745889 (=> res!785095 e!1117321)))

(assert (=> b!1745889 (= res!785095 (not ((_ is IntegerValue!10529) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))

(assert (=> b!1745889 (= e!1117322 e!1117321)))

(assert (= (and d!533470 c!284822) b!1745888))

(assert (= (and d!533470 (not c!284822)) b!1745886))

(assert (= (and b!1745886 c!284821) b!1745887))

(assert (= (and b!1745886 (not c!284821)) b!1745889))

(assert (= (and b!1745889 (not res!785095)) b!1745885))

(declare-fun m!2157895 () Bool)

(assert (=> b!1745885 m!2157895))

(declare-fun m!2157897 () Bool)

(assert (=> b!1745887 m!2157897))

(declare-fun m!2157899 () Bool)

(assert (=> b!1745888 m!2157899))

(assert (=> tb!104427 d!533470))

(declare-fun d!533472 () Bool)

(assert (=> d!533472 (= (isEmpty!12086 (_2!10817 lt!673092)) ((_ is Nil!19189) (_2!10817 lt!673092)))))

(assert (=> b!1745603 d!533472))

(declare-fun d!533474 () Bool)

(assert (=> d!533474 (= (isEmpty!12085 rules!3447) ((_ is Nil!19190) rules!3447))))

(assert (=> b!1745582 d!533474))

(declare-fun b!1745896 () Bool)

(declare-fun e!1117327 () Bool)

(assert (=> b!1745896 (= e!1117327 true)))

(declare-fun d!533476 () Bool)

(assert (=> d!533476 e!1117327))

(assert (= d!533476 b!1745896))

(declare-fun lambda!69719 () Int)

(declare-fun order!11997 () Int)

(declare-fun dynLambda!9092 (Int Int) Int)

(assert (=> b!1745896 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9092 order!11997 lambda!69719))))

(assert (=> b!1745896 (< (dynLambda!9088 order!11995 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9092 order!11997 lambda!69719))))

(assert (=> d!533476 (= (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))))))

(declare-fun lt!673204 () Unit!33261)

(declare-fun Forall2of!103 (Int BalanceConc!12710 BalanceConc!12710) Unit!33261)

(assert (=> d!533476 (= lt!673204 (Forall2of!103 lambda!69719 lt!673085 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))))))

(assert (=> d!533476 (= (list!7768 lt!673085) (list!7768 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))))))

(assert (=> d!533476 (= (lemmaEqSameImage!332 (transformation!3419 (rule!5423 (_1!10817 lt!673096))) lt!673085 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))) lt!673204)))

(declare-fun b_lambda!55969 () Bool)

(assert (=> (not b_lambda!55969) (not d!533476)))

(assert (=> d!533476 t!162252))

(declare-fun b_and!130005 () Bool)

(assert (= b_and!129999 (and (=> t!162252 result!125624) b_and!130005)))

(assert (=> d!533476 t!162254))

(declare-fun b_and!130007 () Bool)

(assert (= b_and!130001 (and (=> t!162254 result!125628) b_and!130007)))

(assert (=> d!533476 t!162256))

(declare-fun b_and!130009 () Bool)

(assert (= b_and!130003 (and (=> t!162256 result!125630) b_and!130009)))

(declare-fun b_lambda!55971 () Bool)

(assert (=> (not b_lambda!55971) (not d!533476)))

(declare-fun t!162273 () Bool)

(declare-fun tb!104445 () Bool)

(assert (=> (and b!1745577 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162273) tb!104445))

(declare-fun result!125644 () Bool)

(assert (=> tb!104445 (= result!125644 (inv!21 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(declare-fun m!2157901 () Bool)

(assert (=> tb!104445 m!2157901))

(assert (=> d!533476 t!162273))

(declare-fun b_and!130011 () Bool)

(assert (= b_and!130005 (and (=> t!162273 result!125644) b_and!130011)))

(declare-fun t!162275 () Bool)

(declare-fun tb!104447 () Bool)

(assert (=> (and b!1745592 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162275) tb!104447))

(declare-fun result!125646 () Bool)

(assert (= result!125646 result!125644))

(assert (=> d!533476 t!162275))

(declare-fun b_and!130013 () Bool)

(assert (= b_and!130007 (and (=> t!162275 result!125646) b_and!130013)))

(declare-fun t!162277 () Bool)

(declare-fun tb!104449 () Bool)

(assert (=> (and b!1745601 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162277) tb!104449))

(declare-fun result!125648 () Bool)

(assert (= result!125648 result!125644))

(assert (=> d!533476 t!162277))

(declare-fun b_and!130015 () Bool)

(assert (= b_and!130009 (and (=> t!162277 result!125648) b_and!130015)))

(assert (=> d!533476 m!2157521))

(assert (=> d!533476 m!2157545))

(assert (=> d!533476 m!2157497))

(declare-fun m!2157903 () Bool)

(assert (=> d!533476 m!2157903))

(assert (=> d!533476 m!2157497))

(declare-fun m!2157905 () Bool)

(assert (=> d!533476 m!2157905))

(assert (=> d!533476 m!2157497))

(declare-fun m!2157907 () Bool)

(assert (=> d!533476 m!2157907))

(assert (=> b!1745581 d!533476))

(declare-fun d!533478 () Bool)

(declare-fun lt!673207 () Int)

(assert (=> d!533478 (= lt!673207 (size!15236 (list!7768 lt!673085)))))

(declare-fun size!15238 (Conc!6383) Int)

(assert (=> d!533478 (= lt!673207 (size!15238 (c!284767 lt!673085)))))

(assert (=> d!533478 (= (size!15234 lt!673085) lt!673207)))

(declare-fun bs!403246 () Bool)

(assert (= bs!403246 d!533478))

(assert (=> bs!403246 m!2157545))

(assert (=> bs!403246 m!2157545))

(declare-fun m!2157909 () Bool)

(assert (=> bs!403246 m!2157909))

(declare-fun m!2157911 () Bool)

(assert (=> bs!403246 m!2157911))

(assert (=> b!1745581 d!533478))

(declare-fun d!533480 () Bool)

(assert (=> d!533480 (= (size!15233 (_1!10817 lt!673096)) (size!15236 (originalCharacters!4233 (_1!10817 lt!673096))))))

(declare-fun Unit!33267 () Unit!33261)

(assert (=> d!533480 (= (lemmaCharactersSize!479 (_1!10817 lt!673096)) Unit!33267)))

(declare-fun bs!403247 () Bool)

(assert (= bs!403247 d!533480))

(declare-fun m!2157913 () Bool)

(assert (=> bs!403247 m!2157913))

(assert (=> b!1745581 d!533480))

(declare-fun d!533482 () Bool)

(declare-fun fromListB!1090 (List!19259) BalanceConc!12710)

(assert (=> d!533482 (= (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))) (fromListB!1090 (originalCharacters!4233 (_1!10817 lt!673096))))))

(declare-fun bs!403248 () Bool)

(assert (= bs!403248 d!533482))

(declare-fun m!2157915 () Bool)

(assert (=> bs!403248 m!2157915))

(assert (=> b!1745581 d!533482))

(declare-fun d!533484 () Bool)

(assert (=> d!533484 (= (apply!5220 (transformation!3419 (rule!5423 (_1!10817 lt!673096))) lt!673085) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))

(declare-fun b_lambda!55973 () Bool)

(assert (=> (not b_lambda!55973) (not d!533484)))

(assert (=> d!533484 t!162252))

(declare-fun b_and!130017 () Bool)

(assert (= b_and!130011 (and (=> t!162252 result!125624) b_and!130017)))

(assert (=> d!533484 t!162254))

(declare-fun b_and!130019 () Bool)

(assert (= b_and!130013 (and (=> t!162254 result!125628) b_and!130019)))

(assert (=> d!533484 t!162256))

(declare-fun b_and!130021 () Bool)

(assert (= b_and!130015 (and (=> t!162256 result!125630) b_and!130021)))

(assert (=> d!533484 m!2157521))

(assert (=> b!1745581 d!533484))

(declare-fun d!533486 () Bool)

(declare-fun c!284823 () Bool)

(assert (=> d!533486 (= c!284823 ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))

(declare-fun e!1117329 () Bool)

(assert (=> d!533486 (= (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) e!1117329)))

(declare-fun b!1745897 () Bool)

(assert (=> b!1745897 (= e!1117329 (inv!24873 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))

(declare-fun b!1745898 () Bool)

(declare-fun e!1117330 () Bool)

(assert (=> b!1745898 (= e!1117329 e!1117330)))

(declare-fun res!785098 () Bool)

(assert (=> b!1745898 (= res!785098 (not ((_ is Leaf!9313) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(assert (=> b!1745898 (=> res!785098 e!1117330)))

(declare-fun b!1745899 () Bool)

(assert (=> b!1745899 (= e!1117330 (inv!24874 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))

(assert (= (and d!533486 c!284823) b!1745897))

(assert (= (and d!533486 (not c!284823)) b!1745898))

(assert (= (and b!1745898 (not res!785098)) b!1745899))

(declare-fun m!2157917 () Bool)

(assert (=> b!1745897 m!2157917))

(declare-fun m!2157919 () Bool)

(assert (=> b!1745899 m!2157919))

(assert (=> b!1745622 d!533486))

(declare-fun d!533488 () Bool)

(declare-fun isBalanced!1994 (Conc!6383) Bool)

(assert (=> d!533488 (= (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) (isBalanced!1994 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))

(declare-fun bs!403249 () Bool)

(assert (= bs!403249 d!533488))

(declare-fun m!2157921 () Bool)

(assert (=> bs!403249 m!2157921))

(assert (=> tb!104421 d!533488))

(declare-fun d!533490 () Bool)

(declare-fun c!284828 () Bool)

(assert (=> d!533490 (= c!284828 (isEmpty!12086 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))

(declare-fun e!1117339 () Bool)

(assert (=> d!533490 (= (prefixMatch!632 (rulesRegex!777 thiss!24550 rules!3447) (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))) e!1117339)))

(declare-fun b!1745922 () Bool)

(declare-fun lostCause!552 (Regex!4747) Bool)

(assert (=> b!1745922 (= e!1117339 (not (lostCause!552 (rulesRegex!777 thiss!24550 rules!3447))))))

(declare-fun b!1745923 () Bool)

(assert (=> b!1745923 (= e!1117339 (prefixMatch!632 (derivativeStep!1210 (rulesRegex!777 thiss!24550 rules!3447) (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))) (tail!2609 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(assert (= (and d!533490 c!284828) b!1745922))

(assert (= (and d!533490 (not c!284828)) b!1745923))

(assert (=> d!533490 m!2157581))

(declare-fun m!2157923 () Bool)

(assert (=> d!533490 m!2157923))

(assert (=> b!1745922 m!2157577))

(declare-fun m!2157925 () Bool)

(assert (=> b!1745922 m!2157925))

(assert (=> b!1745923 m!2157581))

(declare-fun m!2157927 () Bool)

(assert (=> b!1745923 m!2157927))

(assert (=> b!1745923 m!2157577))

(assert (=> b!1745923 m!2157927))

(declare-fun m!2157929 () Bool)

(assert (=> b!1745923 m!2157929))

(assert (=> b!1745923 m!2157581))

(declare-fun m!2157931 () Bool)

(assert (=> b!1745923 m!2157931))

(assert (=> b!1745923 m!2157929))

(assert (=> b!1745923 m!2157931))

(declare-fun m!2157933 () Bool)

(assert (=> b!1745923 m!2157933))

(assert (=> b!1745600 d!533490))

(declare-fun d!533492 () Bool)

(declare-fun lt!673225 () Unit!33261)

(declare-fun lemma!365 (List!19260 LexerInterface!3048 List!19260) Unit!33261)

(assert (=> d!533492 (= lt!673225 (lemma!365 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69722 () Int)

(declare-datatypes ((List!19264 0))(
  ( (Nil!19194) (Cons!19194 (h!24595 Regex!4747) (t!162313 List!19264)) )
))
(declare-fun generalisedUnion!373 (List!19264) Regex!4747)

(declare-fun map!3954 (List!19260 Int) List!19264)

(assert (=> d!533492 (= (rulesRegex!777 thiss!24550 rules!3447) (generalisedUnion!373 (map!3954 rules!3447 lambda!69722)))))

(declare-fun bs!403250 () Bool)

(assert (= bs!403250 d!533492))

(declare-fun m!2157935 () Bool)

(assert (=> bs!403250 m!2157935))

(declare-fun m!2157937 () Bool)

(assert (=> bs!403250 m!2157937))

(assert (=> bs!403250 m!2157937))

(declare-fun m!2157939 () Bool)

(assert (=> bs!403250 m!2157939))

(assert (=> b!1745600 d!533492))

(declare-fun d!533494 () Bool)

(declare-fun e!1117347 () Bool)

(assert (=> d!533494 e!1117347))

(declare-fun res!785125 () Bool)

(assert (=> d!533494 (=> (not res!785125) (not e!1117347))))

(declare-fun lt!673232 () List!19259)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2758 (List!19259) (InoxSet C!9668))

(assert (=> d!533494 (= res!785125 (= (content!2758 lt!673232) ((_ map or) (content!2758 lt!673098) (content!2758 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(declare-fun e!1117348 () List!19259)

(assert (=> d!533494 (= lt!673232 e!1117348)))

(declare-fun c!284832 () Bool)

(assert (=> d!533494 (= c!284832 ((_ is Nil!19189) lt!673098))))

(assert (=> d!533494 (= (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)) lt!673232)))

(declare-fun b!1745941 () Bool)

(assert (=> b!1745941 (= e!1117348 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))

(declare-fun b!1745942 () Bool)

(assert (=> b!1745942 (= e!1117348 (Cons!19189 (h!24590 lt!673098) (++!5244 (t!162264 lt!673098) (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))

(declare-fun b!1745944 () Bool)

(assert (=> b!1745944 (= e!1117347 (or (not (= (Cons!19189 (head!4010 suffix!1421) Nil!19189) Nil!19189)) (= lt!673232 lt!673098)))))

(declare-fun b!1745943 () Bool)

(declare-fun res!785124 () Bool)

(assert (=> b!1745943 (=> (not res!785124) (not e!1117347))))

(assert (=> b!1745943 (= res!785124 (= (size!15236 lt!673232) (+ (size!15236 lt!673098) (size!15236 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(assert (= (and d!533494 c!284832) b!1745941))

(assert (= (and d!533494 (not c!284832)) b!1745942))

(assert (= (and d!533494 res!785125) b!1745943))

(assert (= (and b!1745943 res!785124) b!1745944))

(declare-fun m!2157979 () Bool)

(assert (=> d!533494 m!2157979))

(declare-fun m!2157981 () Bool)

(assert (=> d!533494 m!2157981))

(declare-fun m!2157983 () Bool)

(assert (=> d!533494 m!2157983))

(declare-fun m!2157985 () Bool)

(assert (=> b!1745942 m!2157985))

(declare-fun m!2157987 () Bool)

(assert (=> b!1745943 m!2157987))

(assert (=> b!1745943 m!2157763))

(declare-fun m!2157989 () Bool)

(assert (=> b!1745943 m!2157989))

(assert (=> b!1745600 d!533494))

(declare-fun d!533502 () Bool)

(assert (=> d!533502 (= (head!4010 suffix!1421) (h!24590 suffix!1421))))

(assert (=> b!1745600 d!533502))

(declare-fun d!533504 () Bool)

(declare-fun lt!673235 () Bool)

(declare-fun content!2759 (List!19260) (InoxSet Rule!6638))

(assert (=> d!533504 (= lt!673235 (select (content!2759 rules!3447) rule!422))))

(declare-fun e!1117354 () Bool)

(assert (=> d!533504 (= lt!673235 e!1117354)))

(declare-fun res!785131 () Bool)

(assert (=> d!533504 (=> (not res!785131) (not e!1117354))))

(assert (=> d!533504 (= res!785131 ((_ is Cons!19190) rules!3447))))

(assert (=> d!533504 (= (contains!3443 rules!3447 rule!422) lt!673235)))

(declare-fun b!1745949 () Bool)

(declare-fun e!1117353 () Bool)

(assert (=> b!1745949 (= e!1117354 e!1117353)))

(declare-fun res!785130 () Bool)

(assert (=> b!1745949 (=> res!785130 e!1117353)))

(assert (=> b!1745949 (= res!785130 (= (h!24591 rules!3447) rule!422))))

(declare-fun b!1745950 () Bool)

(assert (=> b!1745950 (= e!1117353 (contains!3443 (t!162265 rules!3447) rule!422))))

(assert (= (and d!533504 res!785131) b!1745949))

(assert (= (and b!1745949 (not res!785130)) b!1745950))

(declare-fun m!2157991 () Bool)

(assert (=> d!533504 m!2157991))

(declare-fun m!2157993 () Bool)

(assert (=> d!533504 m!2157993))

(declare-fun m!2157995 () Bool)

(assert (=> b!1745950 m!2157995))

(assert (=> b!1745602 d!533504))

(declare-fun d!533506 () Bool)

(declare-fun choose!10762 (Int) Bool)

(assert (=> d!533506 (= (Forall!788 lambda!69710) (choose!10762 lambda!69710))))

(declare-fun bs!403253 () Bool)

(assert (= bs!403253 d!533506))

(declare-fun m!2157997 () Bool)

(assert (=> bs!403253 m!2157997))

(assert (=> b!1745597 d!533506))

(declare-fun d!533508 () Bool)

(declare-fun e!1117361 () Bool)

(assert (=> d!533508 e!1117361))

(declare-fun res!785134 () Bool)

(assert (=> d!533508 (=> (not res!785134) (not e!1117361))))

(assert (=> d!533508 (= res!785134 (semiInverseModEq!1355 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))))))

(declare-fun Unit!33268 () Unit!33261)

(assert (=> d!533508 (= (lemmaInv!620 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) Unit!33268)))

(declare-fun b!1745961 () Bool)

(assert (=> b!1745961 (= e!1117361 (equivClasses!1296 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))))))

(assert (= (and d!533508 res!785134) b!1745961))

(declare-fun m!2157999 () Bool)

(assert (=> d!533508 m!2157999))

(declare-fun m!2158001 () Bool)

(assert (=> b!1745961 m!2158001))

(assert (=> b!1745597 d!533508))

(declare-fun d!533510 () Bool)

(assert (=> d!533510 (= (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))) (isBalanced!1994 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))

(declare-fun bs!403254 () Bool)

(assert (= bs!403254 d!533510))

(declare-fun m!2158003 () Bool)

(assert (=> bs!403254 m!2158003))

(assert (=> tb!104433 d!533510))

(declare-fun d!533512 () Bool)

(assert (=> d!533512 (= (inv!24864 (tag!3765 (h!24591 rules!3447))) (= (mod (str.len (value!107113 (tag!3765 (h!24591 rules!3447)))) 2) 0))))

(assert (=> b!1745599 d!533512))

(declare-fun d!533514 () Bool)

(declare-fun res!785139 () Bool)

(declare-fun e!1117366 () Bool)

(assert (=> d!533514 (=> (not res!785139) (not e!1117366))))

(assert (=> d!533514 (= res!785139 (semiInverseModEq!1355 (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (h!24591 rules!3447)))))))

(assert (=> d!533514 (= (inv!24870 (transformation!3419 (h!24591 rules!3447))) e!1117366)))

(declare-fun b!1745966 () Bool)

(assert (=> b!1745966 (= e!1117366 (equivClasses!1296 (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (h!24591 rules!3447)))))))

(assert (= (and d!533514 res!785139) b!1745966))

(declare-fun m!2158005 () Bool)

(assert (=> d!533514 m!2158005))

(declare-fun m!2158007 () Bool)

(assert (=> b!1745966 m!2158007))

(assert (=> b!1745599 d!533514))

(declare-fun d!533516 () Bool)

(declare-fun e!1117378 () Bool)

(assert (=> d!533516 e!1117378))

(declare-fun res!785152 () Bool)

(assert (=> d!533516 (=> (not res!785152) (not e!1117378))))

(assert (=> d!533516 (= res!785152 (isDefined!3205 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))

(declare-fun lt!673249 () Unit!33261)

(declare-fun choose!10763 (LexerInterface!3048 List!19260 List!19259 Token!6404) Unit!33261)

(assert (=> d!533516 (= lt!673249 (choose!10763 thiss!24550 rules!3447 lt!673091 (_1!10817 lt!673096)))))

(assert (=> d!533516 (rulesInvariant!2717 thiss!24550 rules!3447)))

(assert (=> d!533516 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!469 thiss!24550 rules!3447 lt!673091 (_1!10817 lt!673096)) lt!673249)))

(declare-fun b!1745985 () Bool)

(declare-fun res!785153 () Bool)

(assert (=> b!1745985 (=> (not res!785153) (not e!1117378))))

(assert (=> b!1745985 (= res!785153 (matchR!2221 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))) (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(declare-fun b!1745986 () Bool)

(assert (=> b!1745986 (= e!1117378 (= (rule!5423 (_1!10817 lt!673096)) (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))

(assert (= (and d!533516 res!785152) b!1745985))

(assert (= (and b!1745985 res!785153) b!1745986))

(assert (=> d!533516 m!2157561))

(assert (=> d!533516 m!2157561))

(declare-fun m!2158039 () Bool)

(assert (=> d!533516 m!2158039))

(declare-fun m!2158041 () Bool)

(assert (=> d!533516 m!2158041))

(assert (=> d!533516 m!2157607))

(assert (=> b!1745985 m!2157561))

(assert (=> b!1745985 m!2157561))

(declare-fun m!2158043 () Bool)

(assert (=> b!1745985 m!2158043))

(assert (=> b!1745985 m!2157547))

(assert (=> b!1745985 m!2157547))

(assert (=> b!1745985 m!2157587))

(assert (=> b!1745985 m!2157587))

(declare-fun m!2158045 () Bool)

(assert (=> b!1745985 m!2158045))

(assert (=> b!1745986 m!2157561))

(assert (=> b!1745986 m!2157561))

(assert (=> b!1745986 m!2158043))

(assert (=> b!1745578 d!533516))

(declare-fun d!533528 () Bool)

(assert (=> d!533528 (= (list!7768 lt!673085) (list!7771 (c!284767 lt!673085)))))

(declare-fun bs!403256 () Bool)

(assert (= bs!403256 d!533528))

(declare-fun m!2158047 () Bool)

(assert (=> bs!403256 m!2158047))

(assert (=> b!1745578 d!533528))

(declare-fun b!1745987 () Bool)

(declare-fun e!1117379 () Bool)

(declare-fun e!1117380 () Bool)

(assert (=> b!1745987 (= e!1117379 e!1117380)))

(declare-fun res!785158 () Bool)

(assert (=> b!1745987 (=> (not res!785158) (not e!1117380))))

(declare-fun lt!673250 () Option!3863)

(assert (=> b!1745987 (= res!785158 (isDefined!3206 lt!673250))))

(declare-fun b!1745988 () Bool)

(declare-fun res!785157 () Bool)

(assert (=> b!1745988 (=> (not res!785157) (not e!1117380))))

(assert (=> b!1745988 (= res!785157 (matchR!2221 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))))))

(declare-fun call!110249 () Option!3863)

(declare-fun bm!110244 () Bool)

(assert (=> bm!110244 (= call!110249 (maxPrefixOneRule!974 thiss!24550 (h!24591 rules!3447) lt!673091))))

(declare-fun b!1745989 () Bool)

(declare-fun e!1117381 () Option!3863)

(declare-fun lt!673253 () Option!3863)

(declare-fun lt!673254 () Option!3863)

(assert (=> b!1745989 (= e!1117381 (ite (and ((_ is None!3862) lt!673253) ((_ is None!3862) lt!673254)) None!3862 (ite ((_ is None!3862) lt!673254) lt!673253 (ite ((_ is None!3862) lt!673253) lt!673254 (ite (>= (size!15233 (_1!10817 (v!25301 lt!673253))) (size!15233 (_1!10817 (v!25301 lt!673254)))) lt!673253 lt!673254)))))))

(assert (=> b!1745989 (= lt!673253 call!110249)))

(assert (=> b!1745989 (= lt!673254 (maxPrefix!1602 thiss!24550 (t!162265 rules!3447) lt!673091))))

(declare-fun b!1745990 () Bool)

(declare-fun res!785159 () Bool)

(assert (=> b!1745990 (=> (not res!785159) (not e!1117380))))

(assert (=> b!1745990 (= res!785159 (= (value!107114 (_1!10817 (get!5789 lt!673250))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673250)))))))))

(declare-fun d!533530 () Bool)

(assert (=> d!533530 e!1117379))

(declare-fun res!785160 () Bool)

(assert (=> d!533530 (=> res!785160 e!1117379)))

(assert (=> d!533530 (= res!785160 (isEmpty!12089 lt!673250))))

(assert (=> d!533530 (= lt!673250 e!1117381)))

(declare-fun c!284840 () Bool)

(assert (=> d!533530 (= c!284840 (and ((_ is Cons!19190) rules!3447) ((_ is Nil!19190) (t!162265 rules!3447))))))

(declare-fun lt!673255 () Unit!33261)

(declare-fun lt!673256 () Unit!33261)

(assert (=> d!533530 (= lt!673255 lt!673256)))

(assert (=> d!533530 (isPrefix!1660 lt!673091 lt!673091)))

(assert (=> d!533530 (= lt!673256 (lemmaIsPrefixRefl!1107 lt!673091 lt!673091))))

(assert (=> d!533530 (rulesValidInductive!1144 thiss!24550 rules!3447)))

(assert (=> d!533530 (= (maxPrefix!1602 thiss!24550 rules!3447 lt!673091) lt!673250)))

(declare-fun b!1745991 () Bool)

(declare-fun res!785155 () Bool)

(assert (=> b!1745991 (=> (not res!785155) (not e!1117380))))

(assert (=> b!1745991 (= res!785155 (= (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))) (originalCharacters!4233 (_1!10817 (get!5789 lt!673250)))))))

(declare-fun b!1745992 () Bool)

(assert (=> b!1745992 (= e!1117381 call!110249)))

(declare-fun b!1745993 () Bool)

(assert (=> b!1745993 (= e!1117380 (contains!3443 rules!3447 (rule!5423 (_1!10817 (get!5789 lt!673250)))))))

(declare-fun b!1745994 () Bool)

(declare-fun res!785154 () Bool)

(assert (=> b!1745994 (=> (not res!785154) (not e!1117380))))

(assert (=> b!1745994 (= res!785154 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))) (_2!10817 (get!5789 lt!673250))) lt!673091))))

(declare-fun b!1745995 () Bool)

(declare-fun res!785156 () Bool)

(assert (=> b!1745995 (=> (not res!785156) (not e!1117380))))

(assert (=> b!1745995 (= res!785156 (< (size!15236 (_2!10817 (get!5789 lt!673250))) (size!15236 lt!673091)))))

(assert (= (and d!533530 c!284840) b!1745992))

(assert (= (and d!533530 (not c!284840)) b!1745989))

(assert (= (or b!1745992 b!1745989) bm!110244))

(assert (= (and d!533530 (not res!785160)) b!1745987))

(assert (= (and b!1745987 res!785158) b!1745991))

(assert (= (and b!1745991 res!785155) b!1745995))

(assert (= (and b!1745995 res!785156) b!1745994))

(assert (= (and b!1745994 res!785154) b!1745990))

(assert (= (and b!1745990 res!785159) b!1745988))

(assert (= (and b!1745988 res!785157) b!1745993))

(declare-fun m!2158049 () Bool)

(assert (=> b!1745995 m!2158049))

(declare-fun m!2158051 () Bool)

(assert (=> b!1745995 m!2158051))

(declare-fun m!2158053 () Bool)

(assert (=> b!1745995 m!2158053))

(assert (=> b!1745988 m!2158049))

(declare-fun m!2158055 () Bool)

(assert (=> b!1745988 m!2158055))

(assert (=> b!1745988 m!2158055))

(declare-fun m!2158057 () Bool)

(assert (=> b!1745988 m!2158057))

(assert (=> b!1745988 m!2158057))

(declare-fun m!2158059 () Bool)

(assert (=> b!1745988 m!2158059))

(assert (=> b!1745991 m!2158049))

(assert (=> b!1745991 m!2158055))

(assert (=> b!1745991 m!2158055))

(assert (=> b!1745991 m!2158057))

(assert (=> b!1745993 m!2158049))

(declare-fun m!2158061 () Bool)

(assert (=> b!1745993 m!2158061))

(declare-fun m!2158063 () Bool)

(assert (=> d!533530 m!2158063))

(declare-fun m!2158065 () Bool)

(assert (=> d!533530 m!2158065))

(declare-fun m!2158067 () Bool)

(assert (=> d!533530 m!2158067))

(assert (=> d!533530 m!2157799))

(assert (=> b!1745994 m!2158049))

(assert (=> b!1745994 m!2158055))

(assert (=> b!1745994 m!2158055))

(assert (=> b!1745994 m!2158057))

(assert (=> b!1745994 m!2158057))

(declare-fun m!2158069 () Bool)

(assert (=> b!1745994 m!2158069))

(assert (=> b!1745990 m!2158049))

(declare-fun m!2158071 () Bool)

(assert (=> b!1745990 m!2158071))

(assert (=> b!1745990 m!2158071))

(declare-fun m!2158073 () Bool)

(assert (=> b!1745990 m!2158073))

(declare-fun m!2158075 () Bool)

(assert (=> bm!110244 m!2158075))

(declare-fun m!2158077 () Bool)

(assert (=> b!1745989 m!2158077))

(declare-fun m!2158079 () Bool)

(assert (=> b!1745987 m!2158079))

(assert (=> b!1745578 d!533530))

(declare-fun b!1746012 () Bool)

(declare-fun res!785173 () Bool)

(declare-fun e!1117394 () Bool)

(assert (=> b!1746012 (=> (not res!785173) (not e!1117394))))

(assert (=> b!1746012 (= res!785173 (= (head!4010 lt!673090) (head!4010 (++!5244 lt!673090 (_2!10817 lt!673096)))))))

(declare-fun b!1746013 () Bool)

(assert (=> b!1746013 (= e!1117394 (isPrefix!1660 (tail!2609 lt!673090) (tail!2609 (++!5244 lt!673090 (_2!10817 lt!673096)))))))

(declare-fun b!1746014 () Bool)

(declare-fun e!1117396 () Bool)

(assert (=> b!1746014 (= e!1117396 (>= (size!15236 (++!5244 lt!673090 (_2!10817 lt!673096))) (size!15236 lt!673090)))))

(declare-fun d!533532 () Bool)

(assert (=> d!533532 e!1117396))

(declare-fun res!785171 () Bool)

(assert (=> d!533532 (=> res!785171 e!1117396)))

(declare-fun lt!673260 () Bool)

(assert (=> d!533532 (= res!785171 (not lt!673260))))

(declare-fun e!1117395 () Bool)

(assert (=> d!533532 (= lt!673260 e!1117395)))

(declare-fun res!785172 () Bool)

(assert (=> d!533532 (=> res!785172 e!1117395)))

(assert (=> d!533532 (= res!785172 ((_ is Nil!19189) lt!673090))))

(assert (=> d!533532 (= (isPrefix!1660 lt!673090 (++!5244 lt!673090 (_2!10817 lt!673096))) lt!673260)))

(declare-fun b!1746011 () Bool)

(assert (=> b!1746011 (= e!1117395 e!1117394)))

(declare-fun res!785174 () Bool)

(assert (=> b!1746011 (=> (not res!785174) (not e!1117394))))

(assert (=> b!1746011 (= res!785174 (not ((_ is Nil!19189) (++!5244 lt!673090 (_2!10817 lt!673096)))))))

(assert (= (and d!533532 (not res!785172)) b!1746011))

(assert (= (and b!1746011 res!785174) b!1746012))

(assert (= (and b!1746012 res!785173) b!1746013))

(assert (= (and d!533532 (not res!785171)) b!1746014))

(assert (=> b!1746012 m!2157849))

(assert (=> b!1746012 m!2157549))

(declare-fun m!2158089 () Bool)

(assert (=> b!1746012 m!2158089))

(assert (=> b!1746013 m!2157853))

(assert (=> b!1746013 m!2157549))

(declare-fun m!2158091 () Bool)

(assert (=> b!1746013 m!2158091))

(assert (=> b!1746013 m!2157853))

(assert (=> b!1746013 m!2158091))

(declare-fun m!2158093 () Bool)

(assert (=> b!1746013 m!2158093))

(assert (=> b!1746014 m!2157549))

(declare-fun m!2158095 () Bool)

(assert (=> b!1746014 m!2158095))

(declare-fun m!2158097 () Bool)

(assert (=> b!1746014 m!2158097))

(assert (=> b!1745578 d!533532))

(assert (=> b!1745578 d!533426))

(declare-fun lt!673320 () Token!6404)

(declare-fun e!1117483 () Bool)

(declare-fun b!1746163 () Bool)

(assert (=> b!1746163 (= e!1117483 (= (rule!5423 lt!673320) (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))))))

(declare-fun b!1746164 () Bool)

(declare-fun e!1117482 () Unit!33261)

(declare-fun Unit!33269 () Unit!33261)

(assert (=> b!1746164 (= e!1117482 Unit!33269)))

(declare-fun lt!673321 () List!19259)

(assert (=> b!1746164 (= lt!673321 (++!5244 lt!673098 suffix!1421))))

(declare-fun lt!673317 () Unit!33261)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!299 (LexerInterface!3048 Rule!6638 List!19260 List!19259) Unit!33261)

(assert (=> b!1746164 (= lt!673317 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!299 thiss!24550 (rule!5423 lt!673320) rules!3447 lt!673321))))

(assert (=> b!1746164 (isEmpty!12089 (maxPrefixOneRule!974 thiss!24550 (rule!5423 lt!673320) lt!673321))))

(declare-fun lt!673331 () Unit!33261)

(assert (=> b!1746164 (= lt!673331 lt!673317)))

(declare-fun lt!673330 () List!19259)

(assert (=> b!1746164 (= lt!673330 (list!7768 (charsOf!2068 lt!673320)))))

(declare-fun lt!673327 () Unit!33261)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!295 (LexerInterface!3048 Rule!6638 List!19259 List!19259) Unit!33261)

(assert (=> b!1746164 (= lt!673327 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!295 thiss!24550 (rule!5423 lt!673320) lt!673330 (++!5244 lt!673098 suffix!1421)))))

(assert (=> b!1746164 (not (matchR!2221 (regex!3419 (rule!5423 lt!673320)) lt!673330))))

(declare-fun lt!673324 () Unit!33261)

(assert (=> b!1746164 (= lt!673324 lt!673327)))

(assert (=> b!1746164 false))

(declare-fun b!1746165 () Bool)

(declare-fun Unit!33270 () Unit!33261)

(assert (=> b!1746165 (= e!1117482 Unit!33270)))

(declare-fun b!1746162 () Bool)

(declare-fun res!785234 () Bool)

(assert (=> b!1746162 (=> (not res!785234) (not e!1117483))))

(assert (=> b!1746162 (= res!785234 (matchR!2221 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))) (list!7768 (charsOf!2068 lt!673320))))))

(declare-fun d!533536 () Bool)

(assert (=> d!533536 (isDefined!3206 (maxPrefix!1602 thiss!24550 rules!3447 (++!5244 lt!673098 suffix!1421)))))

(declare-fun lt!673329 () Unit!33261)

(assert (=> d!533536 (= lt!673329 e!1117482)))

(declare-fun c!284857 () Bool)

(assert (=> d!533536 (= c!284857 (isEmpty!12089 (maxPrefix!1602 thiss!24550 rules!3447 (++!5244 lt!673098 suffix!1421))))))

(declare-fun lt!673316 () Unit!33261)

(declare-fun lt!673315 () Unit!33261)

(assert (=> d!533536 (= lt!673316 lt!673315)))

(assert (=> d!533536 e!1117483))

(declare-fun res!785233 () Bool)

(assert (=> d!533536 (=> (not res!785233) (not e!1117483))))

(assert (=> d!533536 (= res!785233 (isDefined!3205 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))))))

(assert (=> d!533536 (= lt!673315 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!469 thiss!24550 rules!3447 lt!673098 lt!673320))))

(declare-fun lt!673318 () Unit!33261)

(declare-fun lt!673319 () Unit!33261)

(assert (=> d!533536 (= lt!673318 lt!673319)))

(declare-fun lt!673326 () List!19259)

(assert (=> d!533536 (isPrefix!1660 lt!673326 (++!5244 lt!673098 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!291 (List!19259 List!19259 List!19259) Unit!33261)

(assert (=> d!533536 (= lt!673319 (lemmaPrefixStaysPrefixWhenAddingToSuffix!291 lt!673326 lt!673098 suffix!1421))))

(assert (=> d!533536 (= lt!673326 (list!7768 (charsOf!2068 lt!673320)))))

(declare-fun lt!673323 () Unit!33261)

(declare-fun lt!673322 () Unit!33261)

(assert (=> d!533536 (= lt!673323 lt!673322)))

(declare-fun lt!673328 () List!19259)

(declare-fun lt!673325 () List!19259)

(assert (=> d!533536 (isPrefix!1660 lt!673328 (++!5244 lt!673328 lt!673325))))

(assert (=> d!533536 (= lt!673322 (lemmaConcatTwoListThenFirstIsPrefix!1170 lt!673328 lt!673325))))

(assert (=> d!533536 (= lt!673325 (_2!10817 (get!5789 (maxPrefix!1602 thiss!24550 rules!3447 lt!673098))))))

(assert (=> d!533536 (= lt!673328 (list!7768 (charsOf!2068 lt!673320)))))

(declare-datatypes ((List!19266 0))(
  ( (Nil!19196) (Cons!19196 (h!24597 Token!6404) (t!162315 List!19266)) )
))
(declare-fun head!4012 (List!19266) Token!6404)

(declare-datatypes ((IArray!12775 0))(
  ( (IArray!12776 (innerList!6445 List!19266)) )
))
(declare-datatypes ((Conc!6385 0))(
  ( (Node!6385 (left!15344 Conc!6385) (right!15674 Conc!6385) (csize!13000 Int) (cheight!6596 Int)) (Leaf!9315 (xs!9261 IArray!12775) (csize!13001 Int)) (Empty!6385) )
))
(declare-datatypes ((BalanceConc!12714 0))(
  ( (BalanceConc!12715 (c!284867 Conc!6385)) )
))
(declare-fun list!7772 (BalanceConc!12714) List!19266)

(declare-datatypes ((tuple2!18834 0))(
  ( (tuple2!18835 (_1!10819 BalanceConc!12714) (_2!10819 BalanceConc!12710)) )
))
(declare-fun lex!1430 (LexerInterface!3048 List!19260 BalanceConc!12710) tuple2!18834)

(assert (=> d!533536 (= lt!673320 (head!4012 (list!7772 (_1!10819 (lex!1430 thiss!24550 rules!3447 (seqFromList!2389 lt!673098))))))))

(assert (=> d!533536 (not (isEmpty!12085 rules!3447))))

(assert (=> d!533536 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!572 thiss!24550 rules!3447 lt!673098 suffix!1421) lt!673329)))

(assert (= (and d!533536 res!785233) b!1746162))

(assert (= (and b!1746162 res!785234) b!1746163))

(assert (= (and d!533536 c!284857) b!1746164))

(assert (= (and d!533536 (not c!284857)) b!1746165))

(declare-fun m!2158245 () Bool)

(assert (=> b!1746163 m!2158245))

(assert (=> b!1746163 m!2158245))

(declare-fun m!2158247 () Bool)

(assert (=> b!1746163 m!2158247))

(declare-fun m!2158249 () Bool)

(assert (=> b!1746164 m!2158249))

(assert (=> b!1746164 m!2157537))

(declare-fun m!2158251 () Bool)

(assert (=> b!1746164 m!2158251))

(assert (=> b!1746164 m!2157537))

(declare-fun m!2158253 () Bool)

(assert (=> b!1746164 m!2158253))

(declare-fun m!2158255 () Bool)

(assert (=> b!1746164 m!2158255))

(assert (=> b!1746164 m!2158249))

(declare-fun m!2158257 () Bool)

(assert (=> b!1746164 m!2158257))

(assert (=> b!1746164 m!2158253))

(declare-fun m!2158259 () Bool)

(assert (=> b!1746164 m!2158259))

(declare-fun m!2158261 () Bool)

(assert (=> b!1746164 m!2158261))

(assert (=> b!1746162 m!2158249))

(assert (=> b!1746162 m!2158245))

(assert (=> b!1746162 m!2158247))

(assert (=> b!1746162 m!2158245))

(assert (=> b!1746162 m!2158257))

(declare-fun m!2158263 () Bool)

(assert (=> b!1746162 m!2158263))

(assert (=> b!1746162 m!2158249))

(assert (=> b!1746162 m!2158257))

(declare-fun m!2158265 () Bool)

(assert (=> d!533536 m!2158265))

(assert (=> d!533536 m!2157515))

(declare-fun m!2158267 () Bool)

(assert (=> d!533536 m!2158267))

(assert (=> d!533536 m!2157515))

(declare-fun m!2158269 () Bool)

(assert (=> d!533536 m!2158269))

(declare-fun m!2158271 () Bool)

(assert (=> d!533536 m!2158271))

(declare-fun m!2158273 () Bool)

(assert (=> d!533536 m!2158273))

(declare-fun m!2158275 () Bool)

(assert (=> d!533536 m!2158275))

(declare-fun m!2158277 () Bool)

(assert (=> d!533536 m!2158277))

(declare-fun m!2158279 () Bool)

(assert (=> d!533536 m!2158279))

(assert (=> d!533536 m!2158245))

(declare-fun m!2158281 () Bool)

(assert (=> d!533536 m!2158281))

(assert (=> d!533536 m!2158249))

(assert (=> d!533536 m!2158267))

(declare-fun m!2158283 () Bool)

(assert (=> d!533536 m!2158283))

(assert (=> d!533536 m!2157537))

(assert (=> d!533536 m!2158277))

(declare-fun m!2158285 () Bool)

(assert (=> d!533536 m!2158285))

(assert (=> d!533536 m!2158271))

(declare-fun m!2158287 () Bool)

(assert (=> d!533536 m!2158287))

(assert (=> d!533536 m!2157537))

(assert (=> d!533536 m!2158245))

(assert (=> d!533536 m!2157585))

(assert (=> d!533536 m!2157537))

(declare-fun m!2158289 () Bool)

(assert (=> d!533536 m!2158289))

(assert (=> d!533536 m!2158273))

(assert (=> d!533536 m!2158277))

(declare-fun m!2158291 () Bool)

(assert (=> d!533536 m!2158291))

(declare-fun m!2158293 () Bool)

(assert (=> d!533536 m!2158293))

(assert (=> d!533536 m!2158249))

(assert (=> d!533536 m!2158257))

(assert (=> b!1745578 d!533536))

(declare-fun b!1746167 () Bool)

(declare-fun res!785237 () Bool)

(declare-fun e!1117484 () Bool)

(assert (=> b!1746167 (=> (not res!785237) (not e!1117484))))

(assert (=> b!1746167 (= res!785237 (= (head!4010 lt!673090) (head!4010 lt!673091)))))

(declare-fun b!1746168 () Bool)

(assert (=> b!1746168 (= e!1117484 (isPrefix!1660 (tail!2609 lt!673090) (tail!2609 lt!673091)))))

(declare-fun b!1746169 () Bool)

(declare-fun e!1117486 () Bool)

(assert (=> b!1746169 (= e!1117486 (>= (size!15236 lt!673091) (size!15236 lt!673090)))))

(declare-fun d!533594 () Bool)

(assert (=> d!533594 e!1117486))

(declare-fun res!785235 () Bool)

(assert (=> d!533594 (=> res!785235 e!1117486)))

(declare-fun lt!673332 () Bool)

(assert (=> d!533594 (= res!785235 (not lt!673332))))

(declare-fun e!1117485 () Bool)

(assert (=> d!533594 (= lt!673332 e!1117485)))

(declare-fun res!785236 () Bool)

(assert (=> d!533594 (=> res!785236 e!1117485)))

(assert (=> d!533594 (= res!785236 ((_ is Nil!19189) lt!673090))))

(assert (=> d!533594 (= (isPrefix!1660 lt!673090 lt!673091) lt!673332)))

(declare-fun b!1746166 () Bool)

(assert (=> b!1746166 (= e!1117485 e!1117484)))

(declare-fun res!785238 () Bool)

(assert (=> b!1746166 (=> (not res!785238) (not e!1117484))))

(assert (=> b!1746166 (= res!785238 (not ((_ is Nil!19189) lt!673091)))))

(assert (= (and d!533594 (not res!785236)) b!1746166))

(assert (= (and b!1746166 res!785238) b!1746167))

(assert (= (and b!1746167 res!785237) b!1746168))

(assert (= (and d!533594 (not res!785235)) b!1746169))

(assert (=> b!1746167 m!2157849))

(declare-fun m!2158295 () Bool)

(assert (=> b!1746167 m!2158295))

(assert (=> b!1746168 m!2157853))

(declare-fun m!2158297 () Bool)

(assert (=> b!1746168 m!2158297))

(assert (=> b!1746168 m!2157853))

(assert (=> b!1746168 m!2158297))

(declare-fun m!2158299 () Bool)

(assert (=> b!1746168 m!2158299))

(assert (=> b!1746169 m!2158053))

(assert (=> b!1746169 m!2158097))

(assert (=> b!1745578 d!533594))

(declare-fun d!533596 () Bool)

(assert (=> d!533596 (= (get!5789 lt!673083) (v!25301 lt!673083))))

(assert (=> b!1745578 d!533596))

(declare-fun d!533598 () Bool)

(assert (=> d!533598 (isPrefix!1660 lt!673090 (++!5244 lt!673090 (_2!10817 lt!673096)))))

(declare-fun lt!673335 () Unit!33261)

(declare-fun choose!10764 (List!19259 List!19259) Unit!33261)

(assert (=> d!533598 (= lt!673335 (choose!10764 lt!673090 (_2!10817 lt!673096)))))

(assert (=> d!533598 (= (lemmaConcatTwoListThenFirstIsPrefix!1170 lt!673090 (_2!10817 lt!673096)) lt!673335)))

(declare-fun bs!403267 () Bool)

(assert (= bs!403267 d!533598))

(assert (=> bs!403267 m!2157549))

(assert (=> bs!403267 m!2157549))

(assert (=> bs!403267 m!2157563))

(declare-fun m!2158301 () Bool)

(assert (=> bs!403267 m!2158301))

(assert (=> b!1745578 d!533598))

(declare-fun d!533600 () Bool)

(assert (=> d!533600 (isPrefix!1660 lt!673098 (++!5244 lt!673098 suffix!1421))))

(declare-fun lt!673336 () Unit!33261)

(assert (=> d!533600 (= lt!673336 (choose!10764 lt!673098 suffix!1421))))

(assert (=> d!533600 (= (lemmaConcatTwoListThenFirstIsPrefix!1170 lt!673098 suffix!1421) lt!673336)))

(declare-fun bs!403268 () Bool)

(assert (= bs!403268 d!533600))

(assert (=> bs!403268 m!2157537))

(assert (=> bs!403268 m!2157537))

(declare-fun m!2158303 () Bool)

(assert (=> bs!403268 m!2158303))

(declare-fun m!2158305 () Bool)

(assert (=> bs!403268 m!2158305))

(assert (=> b!1745578 d!533600))

(declare-fun d!533602 () Bool)

(declare-fun e!1117487 () Bool)

(assert (=> d!533602 e!1117487))

(declare-fun res!785240 () Bool)

(assert (=> d!533602 (=> (not res!785240) (not e!1117487))))

(declare-fun lt!673337 () List!19259)

(assert (=> d!533602 (= res!785240 (= (content!2758 lt!673337) ((_ map or) (content!2758 lt!673090) (content!2758 (_2!10817 lt!673096)))))))

(declare-fun e!1117488 () List!19259)

(assert (=> d!533602 (= lt!673337 e!1117488)))

(declare-fun c!284858 () Bool)

(assert (=> d!533602 (= c!284858 ((_ is Nil!19189) lt!673090))))

(assert (=> d!533602 (= (++!5244 lt!673090 (_2!10817 lt!673096)) lt!673337)))

(declare-fun b!1746170 () Bool)

(assert (=> b!1746170 (= e!1117488 (_2!10817 lt!673096))))

(declare-fun b!1746171 () Bool)

(assert (=> b!1746171 (= e!1117488 (Cons!19189 (h!24590 lt!673090) (++!5244 (t!162264 lt!673090) (_2!10817 lt!673096))))))

(declare-fun b!1746173 () Bool)

(assert (=> b!1746173 (= e!1117487 (or (not (= (_2!10817 lt!673096) Nil!19189)) (= lt!673337 lt!673090)))))

(declare-fun b!1746172 () Bool)

(declare-fun res!785239 () Bool)

(assert (=> b!1746172 (=> (not res!785239) (not e!1117487))))

(assert (=> b!1746172 (= res!785239 (= (size!15236 lt!673337) (+ (size!15236 lt!673090) (size!15236 (_2!10817 lt!673096)))))))

(assert (= (and d!533602 c!284858) b!1746170))

(assert (= (and d!533602 (not c!284858)) b!1746171))

(assert (= (and d!533602 res!785240) b!1746172))

(assert (= (and b!1746172 res!785239) b!1746173))

(declare-fun m!2158307 () Bool)

(assert (=> d!533602 m!2158307))

(declare-fun m!2158309 () Bool)

(assert (=> d!533602 m!2158309))

(declare-fun m!2158311 () Bool)

(assert (=> d!533602 m!2158311))

(declare-fun m!2158313 () Bool)

(assert (=> b!1746171 m!2158313))

(declare-fun m!2158315 () Bool)

(assert (=> b!1746172 m!2158315))

(assert (=> b!1746172 m!2158097))

(declare-fun m!2158317 () Bool)

(assert (=> b!1746172 m!2158317))

(assert (=> b!1745578 d!533602))

(declare-fun b!1746186 () Bool)

(declare-fun e!1117500 () Option!3862)

(declare-fun e!1117498 () Option!3862)

(assert (=> b!1746186 (= e!1117500 e!1117498)))

(declare-fun c!284864 () Bool)

(assert (=> b!1746186 (= c!284864 (and ((_ is Cons!19190) rules!3447) (not (= (tag!3765 (h!24591 rules!3447)) (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))

(declare-fun b!1746187 () Bool)

(assert (=> b!1746187 (= e!1117498 None!3861)))

(declare-fun b!1746188 () Bool)

(assert (=> b!1746188 (= e!1117500 (Some!3861 (h!24591 rules!3447)))))

(declare-fun b!1746189 () Bool)

(declare-fun e!1117499 () Bool)

(declare-fun e!1117497 () Bool)

(assert (=> b!1746189 (= e!1117499 e!1117497)))

(declare-fun res!785245 () Bool)

(assert (=> b!1746189 (=> (not res!785245) (not e!1117497))))

(declare-fun lt!673346 () Option!3862)

(assert (=> b!1746189 (= res!785245 (contains!3443 rules!3447 (get!5790 lt!673346)))))

(declare-fun b!1746190 () Bool)

(declare-fun lt!673345 () Unit!33261)

(declare-fun lt!673344 () Unit!33261)

(assert (=> b!1746190 (= lt!673345 lt!673344)))

(assert (=> b!1746190 (rulesInvariant!2717 thiss!24550 (t!162265 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!170 (LexerInterface!3048 Rule!6638 List!19260) Unit!33261)

(assert (=> b!1746190 (= lt!673344 (lemmaInvariantOnRulesThenOnTail!170 thiss!24550 (h!24591 rules!3447) (t!162265 rules!3447)))))

(assert (=> b!1746190 (= e!1117498 (getRuleFromTag!469 thiss!24550 (t!162265 rules!3447) (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun b!1746191 () Bool)

(assert (=> b!1746191 (= e!1117497 (= (tag!3765 (get!5790 lt!673346)) (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun d!533604 () Bool)

(assert (=> d!533604 e!1117499))

(declare-fun res!785246 () Bool)

(assert (=> d!533604 (=> res!785246 e!1117499)))

(declare-fun isEmpty!12090 (Option!3862) Bool)

(assert (=> d!533604 (= res!785246 (isEmpty!12090 lt!673346))))

(assert (=> d!533604 (= lt!673346 e!1117500)))

(declare-fun c!284863 () Bool)

(assert (=> d!533604 (= c!284863 (and ((_ is Cons!19190) rules!3447) (= (tag!3765 (h!24591 rules!3447)) (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))

(assert (=> d!533604 (rulesInvariant!2717 thiss!24550 rules!3447)))

(assert (=> d!533604 (= (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))) lt!673346)))

(assert (= (and d!533604 c!284863) b!1746188))

(assert (= (and d!533604 (not c!284863)) b!1746186))

(assert (= (and b!1746186 c!284864) b!1746190))

(assert (= (and b!1746186 (not c!284864)) b!1746187))

(assert (= (and d!533604 (not res!785246)) b!1746189))

(assert (= (and b!1746189 res!785245) b!1746191))

(declare-fun m!2158319 () Bool)

(assert (=> b!1746189 m!2158319))

(assert (=> b!1746189 m!2158319))

(declare-fun m!2158321 () Bool)

(assert (=> b!1746189 m!2158321))

(declare-fun m!2158323 () Bool)

(assert (=> b!1746190 m!2158323))

(declare-fun m!2158325 () Bool)

(assert (=> b!1746190 m!2158325))

(declare-fun m!2158327 () Bool)

(assert (=> b!1746190 m!2158327))

(assert (=> b!1746191 m!2158319))

(declare-fun m!2158329 () Bool)

(assert (=> d!533604 m!2158329))

(assert (=> d!533604 m!2157607))

(assert (=> b!1745578 d!533604))

(declare-fun b!1746193 () Bool)

(declare-fun res!785249 () Bool)

(declare-fun e!1117501 () Bool)

(assert (=> b!1746193 (=> (not res!785249) (not e!1117501))))

(assert (=> b!1746193 (= res!785249 (= (head!4010 lt!673098) (head!4010 lt!673091)))))

(declare-fun b!1746194 () Bool)

(assert (=> b!1746194 (= e!1117501 (isPrefix!1660 (tail!2609 lt!673098) (tail!2609 lt!673091)))))

(declare-fun b!1746195 () Bool)

(declare-fun e!1117503 () Bool)

(assert (=> b!1746195 (= e!1117503 (>= (size!15236 lt!673091) (size!15236 lt!673098)))))

(declare-fun d!533606 () Bool)

(assert (=> d!533606 e!1117503))

(declare-fun res!785247 () Bool)

(assert (=> d!533606 (=> res!785247 e!1117503)))

(declare-fun lt!673347 () Bool)

(assert (=> d!533606 (= res!785247 (not lt!673347))))

(declare-fun e!1117502 () Bool)

(assert (=> d!533606 (= lt!673347 e!1117502)))

(declare-fun res!785248 () Bool)

(assert (=> d!533606 (=> res!785248 e!1117502)))

(assert (=> d!533606 (= res!785248 ((_ is Nil!19189) lt!673098))))

(assert (=> d!533606 (= (isPrefix!1660 lt!673098 lt!673091) lt!673347)))

(declare-fun b!1746192 () Bool)

(assert (=> b!1746192 (= e!1117502 e!1117501)))

(declare-fun res!785250 () Bool)

(assert (=> b!1746192 (=> (not res!785250) (not e!1117501))))

(assert (=> b!1746192 (= res!785250 (not ((_ is Nil!19189) lt!673091)))))

(assert (= (and d!533606 (not res!785248)) b!1746192))

(assert (= (and b!1746192 res!785250) b!1746193))

(assert (= (and b!1746193 res!785249) b!1746194))

(assert (= (and d!533606 (not res!785247)) b!1746195))

(assert (=> b!1746193 m!2157701))

(assert (=> b!1746193 m!2158295))

(assert (=> b!1746194 m!2157705))

(assert (=> b!1746194 m!2158297))

(assert (=> b!1746194 m!2157705))

(assert (=> b!1746194 m!2158297))

(declare-fun m!2158331 () Bool)

(assert (=> b!1746194 m!2158331))

(assert (=> b!1746195 m!2158053))

(assert (=> b!1746195 m!2157763))

(assert (=> b!1745578 d!533606))

(declare-fun d!533608 () Bool)

(declare-fun e!1117504 () Bool)

(assert (=> d!533608 e!1117504))

(declare-fun res!785252 () Bool)

(assert (=> d!533608 (=> (not res!785252) (not e!1117504))))

(declare-fun lt!673348 () List!19259)

(assert (=> d!533608 (= res!785252 (= (content!2758 lt!673348) ((_ map or) (content!2758 lt!673098) (content!2758 suffix!1421))))))

(declare-fun e!1117505 () List!19259)

(assert (=> d!533608 (= lt!673348 e!1117505)))

(declare-fun c!284866 () Bool)

(assert (=> d!533608 (= c!284866 ((_ is Nil!19189) lt!673098))))

(assert (=> d!533608 (= (++!5244 lt!673098 suffix!1421) lt!673348)))

(declare-fun b!1746196 () Bool)

(assert (=> b!1746196 (= e!1117505 suffix!1421)))

(declare-fun b!1746197 () Bool)

(assert (=> b!1746197 (= e!1117505 (Cons!19189 (h!24590 lt!673098) (++!5244 (t!162264 lt!673098) suffix!1421)))))

(declare-fun b!1746199 () Bool)

(assert (=> b!1746199 (= e!1117504 (or (not (= suffix!1421 Nil!19189)) (= lt!673348 lt!673098)))))

(declare-fun b!1746198 () Bool)

(declare-fun res!785251 () Bool)

(assert (=> b!1746198 (=> (not res!785251) (not e!1117504))))

(assert (=> b!1746198 (= res!785251 (= (size!15236 lt!673348) (+ (size!15236 lt!673098) (size!15236 suffix!1421))))))

(assert (= (and d!533608 c!284866) b!1746196))

(assert (= (and d!533608 (not c!284866)) b!1746197))

(assert (= (and d!533608 res!785252) b!1746198))

(assert (= (and b!1746198 res!785251) b!1746199))

(declare-fun m!2158333 () Bool)

(assert (=> d!533608 m!2158333))

(assert (=> d!533608 m!2157981))

(declare-fun m!2158335 () Bool)

(assert (=> d!533608 m!2158335))

(declare-fun m!2158337 () Bool)

(assert (=> b!1746197 m!2158337))

(declare-fun m!2158339 () Bool)

(assert (=> b!1746198 m!2158339))

(assert (=> b!1746198 m!2157763))

(declare-fun m!2158341 () Bool)

(assert (=> b!1746198 m!2158341))

(assert (=> b!1745578 d!533608))

(declare-fun d!533610 () Bool)

(assert (=> d!533610 (= (isDefined!3205 lt!673093) (not (isEmpty!12090 lt!673093)))))

(declare-fun bs!403269 () Bool)

(assert (= bs!403269 d!533610))

(declare-fun m!2158343 () Bool)

(assert (=> bs!403269 m!2158343))

(assert (=> b!1745578 d!533610))

(declare-fun b!1746204 () Bool)

(declare-fun e!1117508 () Bool)

(declare-fun tp!496870 () Bool)

(assert (=> b!1746204 (= e!1117508 (and tp_is_empty!7737 tp!496870))))

(assert (=> b!1745595 (= tp!496805 e!1117508)))

(assert (= (and b!1745595 ((_ is Cons!19189) (t!162264 suffix!1421))) b!1746204))

(declare-fun b!1746215 () Bool)

(declare-fun b_free!48059 () Bool)

(declare-fun b_next!48763 () Bool)

(assert (=> b!1746215 (= b_free!48059 (not b_next!48763))))

(declare-fun t!162303 () Bool)

(declare-fun tb!104473 () Bool)

(assert (=> (and b!1746215 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162303) tb!104473))

(declare-fun result!125684 () Bool)

(assert (= result!125684 result!125624))

(assert (=> d!533476 t!162303))

(assert (=> b!1745585 t!162303))

(declare-fun tb!104475 () Bool)

(declare-fun t!162305 () Bool)

(assert (=> (and b!1746215 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162305) tb!104475))

(declare-fun result!125686 () Bool)

(assert (= result!125686 result!125644))

(assert (=> d!533476 t!162305))

(assert (=> d!533484 t!162303))

(assert (=> d!533462 t!162303))

(declare-fun b_and!130069 () Bool)

(declare-fun tp!496879 () Bool)

(assert (=> b!1746215 (= tp!496879 (and (=> t!162303 result!125684) (=> t!162305 result!125686) b_and!130069))))

(declare-fun b_free!48061 () Bool)

(declare-fun b_next!48765 () Bool)

(assert (=> b!1746215 (= b_free!48061 (not b_next!48765))))

(declare-fun tb!104477 () Bool)

(declare-fun t!162307 () Bool)

(assert (=> (and b!1746215 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 token!523)))) t!162307) tb!104477))

(declare-fun result!125688 () Bool)

(assert (= result!125688 result!125638))

(assert (=> d!533438 t!162307))

(declare-fun t!162309 () Bool)

(declare-fun tb!104479 () Bool)

(assert (=> (and b!1746215 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162309) tb!104479))

(declare-fun result!125690 () Bool)

(assert (= result!125690 result!125616))

(assert (=> b!1745585 t!162309))

(declare-fun t!162311 () Bool)

(declare-fun tb!104481 () Bool)

(assert (=> (and b!1746215 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162311) tb!104481))

(declare-fun result!125692 () Bool)

(assert (= result!125692 result!125632))

(assert (=> b!1745598 t!162311))

(assert (=> b!1745705 t!162307))

(assert (=> d!533426 t!162311))

(assert (=> d!533462 t!162309))

(declare-fun tp!496881 () Bool)

(declare-fun b_and!130071 () Bool)

(assert (=> b!1746215 (= tp!496881 (and (=> t!162307 result!125688) (=> t!162309 result!125690) (=> t!162311 result!125692) b_and!130071))))

(declare-fun e!1117518 () Bool)

(assert (=> b!1746215 (= e!1117518 (and tp!496879 tp!496881))))

(declare-fun b!1746214 () Bool)

(declare-fun tp!496882 () Bool)

(declare-fun e!1117517 () Bool)

(assert (=> b!1746214 (= e!1117517 (and tp!496882 (inv!24864 (tag!3765 (h!24591 (t!162265 rules!3447)))) (inv!24870 (transformation!3419 (h!24591 (t!162265 rules!3447)))) e!1117518))))

(declare-fun b!1746213 () Bool)

(declare-fun e!1117519 () Bool)

(declare-fun tp!496880 () Bool)

(assert (=> b!1746213 (= e!1117519 (and e!1117517 tp!496880))))

(assert (=> b!1745579 (= tp!496804 e!1117519)))

(assert (= b!1746214 b!1746215))

(assert (= b!1746213 b!1746214))

(assert (= (and b!1745579 ((_ is Cons!19190) (t!162265 rules!3447))) b!1746213))

(declare-fun m!2158345 () Bool)

(assert (=> b!1746214 m!2158345))

(declare-fun m!2158347 () Bool)

(assert (=> b!1746214 m!2158347))

(declare-fun b!1746227 () Bool)

(declare-fun e!1117523 () Bool)

(declare-fun tp!496893 () Bool)

(declare-fun tp!496896 () Bool)

(assert (=> b!1746227 (= e!1117523 (and tp!496893 tp!496896))))

(assert (=> b!1745584 (= tp!496800 e!1117523)))

(declare-fun b!1746229 () Bool)

(declare-fun tp!496894 () Bool)

(declare-fun tp!496895 () Bool)

(assert (=> b!1746229 (= e!1117523 (and tp!496894 tp!496895))))

(declare-fun b!1746226 () Bool)

(assert (=> b!1746226 (= e!1117523 tp_is_empty!7737)))

(declare-fun b!1746228 () Bool)

(declare-fun tp!496897 () Bool)

(assert (=> b!1746228 (= e!1117523 tp!496897)))

(assert (= (and b!1745584 ((_ is ElementMatch!4747) (regex!3419 (rule!5423 token!523)))) b!1746226))

(assert (= (and b!1745584 ((_ is Concat!8257) (regex!3419 (rule!5423 token!523)))) b!1746227))

(assert (= (and b!1745584 ((_ is Star!4747) (regex!3419 (rule!5423 token!523)))) b!1746228))

(assert (= (and b!1745584 ((_ is Union!4747) (regex!3419 (rule!5423 token!523)))) b!1746229))

(declare-fun b!1746230 () Bool)

(declare-fun e!1117524 () Bool)

(declare-fun tp!496898 () Bool)

(assert (=> b!1746230 (= e!1117524 (and tp_is_empty!7737 tp!496898))))

(assert (=> b!1745591 (= tp!496799 e!1117524)))

(assert (= (and b!1745591 ((_ is Cons!19189) (originalCharacters!4233 token!523))) b!1746230))

(declare-fun e!1117530 () Bool)

(declare-fun b!1746239 () Bool)

(declare-fun tp!496906 () Bool)

(declare-fun tp!496905 () Bool)

(assert (=> b!1746239 (= e!1117530 (and (inv!24871 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) tp!496905 (inv!24871 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) tp!496906))))

(declare-fun b!1746241 () Bool)

(declare-fun e!1117529 () Bool)

(declare-fun tp!496907 () Bool)

(assert (=> b!1746241 (= e!1117529 tp!496907)))

(declare-fun b!1746240 () Bool)

(declare-fun inv!24878 (IArray!12771) Bool)

(assert (=> b!1746240 (= e!1117530 (and (inv!24878 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) e!1117529))))

(assert (=> b!1745619 (= tp!496811 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) e!1117530))))

(assert (= (and b!1745619 ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) b!1746239))

(assert (= b!1746240 b!1746241))

(assert (= (and b!1745619 ((_ is Leaf!9313) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) b!1746240))

(declare-fun m!2158349 () Bool)

(assert (=> b!1746239 m!2158349))

(declare-fun m!2158351 () Bool)

(assert (=> b!1746239 m!2158351))

(declare-fun m!2158353 () Bool)

(assert (=> b!1746240 m!2158353))

(assert (=> b!1745619 m!2157487))

(declare-fun b!1746243 () Bool)

(declare-fun e!1117531 () Bool)

(declare-fun tp!496908 () Bool)

(declare-fun tp!496911 () Bool)

(assert (=> b!1746243 (= e!1117531 (and tp!496908 tp!496911))))

(assert (=> b!1745587 (= tp!496807 e!1117531)))

(declare-fun b!1746245 () Bool)

(declare-fun tp!496909 () Bool)

(declare-fun tp!496910 () Bool)

(assert (=> b!1746245 (= e!1117531 (and tp!496909 tp!496910))))

(declare-fun b!1746242 () Bool)

(assert (=> b!1746242 (= e!1117531 tp_is_empty!7737)))

(declare-fun b!1746244 () Bool)

(declare-fun tp!496912 () Bool)

(assert (=> b!1746244 (= e!1117531 tp!496912)))

(assert (= (and b!1745587 ((_ is ElementMatch!4747) (regex!3419 rule!422))) b!1746242))

(assert (= (and b!1745587 ((_ is Concat!8257) (regex!3419 rule!422))) b!1746243))

(assert (= (and b!1745587 ((_ is Star!4747) (regex!3419 rule!422))) b!1746244))

(assert (= (and b!1745587 ((_ is Union!4747) (regex!3419 rule!422))) b!1746245))

(declare-fun tp!496914 () Bool)

(declare-fun tp!496913 () Bool)

(declare-fun e!1117533 () Bool)

(declare-fun b!1746246 () Bool)

(assert (=> b!1746246 (= e!1117533 (and (inv!24871 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) tp!496913 (inv!24871 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) tp!496914))))

(declare-fun b!1746248 () Bool)

(declare-fun e!1117532 () Bool)

(declare-fun tp!496915 () Bool)

(assert (=> b!1746248 (= e!1117532 tp!496915)))

(declare-fun b!1746247 () Bool)

(assert (=> b!1746247 (= e!1117533 (and (inv!24878 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) e!1117532))))

(assert (=> b!1745622 (= tp!496812 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) e!1117533))))

(assert (= (and b!1745622 ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) b!1746246))

(assert (= b!1746247 b!1746248))

(assert (= (and b!1745622 ((_ is Leaf!9313) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) b!1746247))

(declare-fun m!2158355 () Bool)

(assert (=> b!1746246 m!2158355))

(declare-fun m!2158357 () Bool)

(assert (=> b!1746246 m!2158357))

(declare-fun m!2158359 () Bool)

(assert (=> b!1746247 m!2158359))

(assert (=> b!1745622 m!2157493))

(declare-fun b!1746250 () Bool)

(declare-fun e!1117534 () Bool)

(declare-fun tp!496916 () Bool)

(declare-fun tp!496919 () Bool)

(assert (=> b!1746250 (= e!1117534 (and tp!496916 tp!496919))))

(assert (=> b!1745599 (= tp!496808 e!1117534)))

(declare-fun b!1746252 () Bool)

(declare-fun tp!496917 () Bool)

(declare-fun tp!496918 () Bool)

(assert (=> b!1746252 (= e!1117534 (and tp!496917 tp!496918))))

(declare-fun b!1746249 () Bool)

(assert (=> b!1746249 (= e!1117534 tp_is_empty!7737)))

(declare-fun b!1746251 () Bool)

(declare-fun tp!496920 () Bool)

(assert (=> b!1746251 (= e!1117534 tp!496920)))

(assert (= (and b!1745599 ((_ is ElementMatch!4747) (regex!3419 (h!24591 rules!3447)))) b!1746249))

(assert (= (and b!1745599 ((_ is Concat!8257) (regex!3419 (h!24591 rules!3447)))) b!1746250))

(assert (= (and b!1745599 ((_ is Star!4747) (regex!3419 (h!24591 rules!3447)))) b!1746251))

(assert (= (and b!1745599 ((_ is Union!4747) (regex!3419 (h!24591 rules!3447)))) b!1746252))

(declare-fun b_lambda!55999 () Bool)

(assert (= b_lambda!55951 (or (and b!1745577 b_free!48045 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48049 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745601 b_free!48053 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48061 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!55999)))

(declare-fun b_lambda!56001 () Bool)

(assert (= b_lambda!55959 (or (and b!1745577 b_free!48045) (and b!1745592 b_free!48049 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 token!523))))) (and b!1745601 b_free!48053 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 token!523))))) (and b!1746215 b_free!48061 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 token!523))))) b_lambda!56001)))

(declare-fun b_lambda!56003 () Bool)

(assert (= b_lambda!55955 (or (and b!1745577 b_free!48045 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48049 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745601 b_free!48053 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48061 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56003)))

(declare-fun b_lambda!56005 () Bool)

(assert (= b_lambda!55963 (or (and b!1745577 b_free!48045) (and b!1745592 b_free!48049 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 token!523))))) (and b!1745601 b_free!48053 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 token!523))))) (and b!1746215 b_free!48061 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 token!523))))) b_lambda!56005)))

(declare-fun b_lambda!56007 () Bool)

(assert (= b_lambda!55953 (or (and b!1745577 b_free!48043 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48047 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745601 b_free!48051 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48059 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56007)))

(check-sat (not b!1745763) (not b!1745950) (not d!533482) (not d!533600) (not d!533514) (not b!1745923) (not d!533418) (not d!533528) (not d!533536) (not b!1746246) (not d!533506) (not b!1745619) (not d!533504) (not d!533480) (not b!1746171) (not b!1745832) (not b!1746250) (not b!1745831) (not b!1745849) (not b!1745784) (not b!1746252) (not d!533508) (not b!1746191) (not b_lambda!56003) (not b!1745994) (not b_lambda!56007) (not b!1746240) (not b_next!48765) (not tb!104439) (not b!1745942) (not d!533604) (not b!1746195) (not b_next!48755) (not b!1745707) (not d!533478) (not b!1745859) (not b_next!48747) (not b!1745991) (not b!1745987) (not b!1745706) (not b!1745772) (not b!1745873) (not b!1746241) (not b!1745769) (not b!1745995) (not b!1746197) (not b_next!48763) (not b!1746014) (not d!533416) (not b!1745847) (not b!1745728) (not b!1745961) (not b!1746213) (not d!533598) (not b!1746164) (not b!1745943) (not b_lambda!55961) (not b!1745791) (not b_lambda!55965) (not d!533492) (not tb!104445) (not d!533530) (not d!533608) (not d!533602) (not d!533494) (not b!1745966) (not d!533432) (not d!533436) (not bm!110235) (not b!1745850) (not d!533414) (not b!1745764) (not b!1745864) (not b!1745825) (not b!1746228) b_and!130069 (not bm!110236) (not b!1746190) (not b_lambda!55971) (not b!1745866) (not b!1745993) (not d!533438) tp_is_empty!7737 (not b!1746244) (not b!1745854) (not d!533452) (not b!1746167) (not b!1746163) (not b!1746251) (not d!533610) (not b_lambda!55967) (not b!1745897) (not d!533476) (not b!1746204) (not d!533450) (not d!533488) b_and!130021 (not b!1745821) (not b_lambda!56005) (not b!1745989) (not b!1745622) (not b!1745792) (not b_lambda!55999) (not b!1746193) (not b!1745985) (not b!1746198) (not d!533460) (not b_lambda!55969) (not b!1745823) (not d!533462) (not b!1745705) (not b!1746243) (not d!533422) (not b!1745771) (not bm!110239) b_and!130019 (not b!1746248) (not b!1746189) (not d!533456) b_and!129995 (not b!1745922) (not b!1745858) (not b!1746012) (not b_lambda!55973) (not b!1745820) (not d!533426) (not b!1745857) (not b!1746245) (not b!1746172) (not d!533510) (not b!1745778) b_and!129993 (not b!1745731) (not b!1745830) (not d!533490) (not d!533424) (not b_next!48749) (not b!1746214) (not b!1745783) (not b_next!48757) (not b!1745762) (not b_lambda!56001) (not d!533430) (not b!1745867) (not b!1746013) (not d!533402) (not b!1746229) (not b!1745899) (not b!1745988) (not b!1745726) (not b!1745885) (not b!1745827) (not d!533420) (not bm!110240) b_and!130017 (not b_next!48751) (not b!1746162) (not b!1745887) (not b!1746230) b_and!129997 (not b_next!48753) (not bm!110244) (not b!1746169) (not b!1745986) (not b!1745782) (not d!533516) (not b!1745789) b_and!130071 (not b!1746247) (not b!1745888) (not b!1746227) (not b!1746239) (not b!1746168) (not b!1745990) (not b!1746194))
(check-sat (not b_next!48765) (not b_next!48755) (not b_next!48747) (not b_next!48763) b_and!130069 b_and!130021 b_and!130019 b_and!129995 (not b_next!48757) b_and!130017 b_and!130071 b_and!129993 (not b_next!48749) (not b_next!48751) b_and!129997 (not b_next!48753))
(get-model)

(declare-fun d!533698 () Bool)

(declare-fun c!284915 () Bool)

(assert (=> d!533698 (= c!284915 ((_ is Nil!19189) lt!673348))))

(declare-fun e!1117631 () (InoxSet C!9668))

(assert (=> d!533698 (= (content!2758 lt!673348) e!1117631)))

(declare-fun b!1746449 () Bool)

(assert (=> b!1746449 (= e!1117631 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1746450 () Bool)

(assert (=> b!1746450 (= e!1117631 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 lt!673348) true) (content!2758 (t!162264 lt!673348))))))

(assert (= (and d!533698 c!284915) b!1746449))

(assert (= (and d!533698 (not c!284915)) b!1746450))

(declare-fun m!2158559 () Bool)

(assert (=> b!1746450 m!2158559))

(declare-fun m!2158561 () Bool)

(assert (=> b!1746450 m!2158561))

(assert (=> d!533608 d!533698))

(declare-fun d!533706 () Bool)

(declare-fun c!284918 () Bool)

(assert (=> d!533706 (= c!284918 ((_ is Nil!19189) lt!673098))))

(declare-fun e!1117640 () (InoxSet C!9668))

(assert (=> d!533706 (= (content!2758 lt!673098) e!1117640)))

(declare-fun b!1746457 () Bool)

(assert (=> b!1746457 (= e!1117640 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1746458 () Bool)

(assert (=> b!1746458 (= e!1117640 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 lt!673098) true) (content!2758 (t!162264 lt!673098))))))

(assert (= (and d!533706 c!284918) b!1746457))

(assert (= (and d!533706 (not c!284918)) b!1746458))

(declare-fun m!2158563 () Bool)

(assert (=> b!1746458 m!2158563))

(declare-fun m!2158565 () Bool)

(assert (=> b!1746458 m!2158565))

(assert (=> d!533608 d!533706))

(declare-fun d!533708 () Bool)

(declare-fun c!284919 () Bool)

(assert (=> d!533708 (= c!284919 ((_ is Nil!19189) suffix!1421))))

(declare-fun e!1117641 () (InoxSet C!9668))

(assert (=> d!533708 (= (content!2758 suffix!1421) e!1117641)))

(declare-fun b!1746459 () Bool)

(assert (=> b!1746459 (= e!1117641 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1746460 () Bool)

(assert (=> b!1746460 (= e!1117641 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 suffix!1421) true) (content!2758 (t!162264 suffix!1421))))))

(assert (= (and d!533708 c!284919) b!1746459))

(assert (= (and d!533708 (not c!284919)) b!1746460))

(declare-fun m!2158567 () Bool)

(assert (=> b!1746460 m!2158567))

(declare-fun m!2158569 () Bool)

(assert (=> b!1746460 m!2158569))

(assert (=> d!533608 d!533708))

(declare-fun d!533710 () Bool)

(assert (=> d!533710 (= (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))) (v!25300 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))))))

(assert (=> b!1746163 d!533710))

(declare-fun b!1746461 () Bool)

(declare-fun e!1117645 () Option!3862)

(declare-fun e!1117643 () Option!3862)

(assert (=> b!1746461 (= e!1117645 e!1117643)))

(declare-fun c!284921 () Bool)

(assert (=> b!1746461 (= c!284921 (and ((_ is Cons!19190) rules!3447) (not (= (tag!3765 (h!24591 rules!3447)) (tag!3765 (rule!5423 lt!673320))))))))

(declare-fun b!1746462 () Bool)

(assert (=> b!1746462 (= e!1117643 None!3861)))

(declare-fun b!1746463 () Bool)

(assert (=> b!1746463 (= e!1117645 (Some!3861 (h!24591 rules!3447)))))

(declare-fun b!1746464 () Bool)

(declare-fun e!1117644 () Bool)

(declare-fun e!1117642 () Bool)

(assert (=> b!1746464 (= e!1117644 e!1117642)))

(declare-fun res!785351 () Bool)

(assert (=> b!1746464 (=> (not res!785351) (not e!1117642))))

(declare-fun lt!673386 () Option!3862)

(assert (=> b!1746464 (= res!785351 (contains!3443 rules!3447 (get!5790 lt!673386)))))

(declare-fun b!1746465 () Bool)

(declare-fun lt!673385 () Unit!33261)

(declare-fun lt!673384 () Unit!33261)

(assert (=> b!1746465 (= lt!673385 lt!673384)))

(assert (=> b!1746465 (rulesInvariant!2717 thiss!24550 (t!162265 rules!3447))))

(assert (=> b!1746465 (= lt!673384 (lemmaInvariantOnRulesThenOnTail!170 thiss!24550 (h!24591 rules!3447) (t!162265 rules!3447)))))

(assert (=> b!1746465 (= e!1117643 (getRuleFromTag!469 thiss!24550 (t!162265 rules!3447) (tag!3765 (rule!5423 lt!673320))))))

(declare-fun b!1746466 () Bool)

(assert (=> b!1746466 (= e!1117642 (= (tag!3765 (get!5790 lt!673386)) (tag!3765 (rule!5423 lt!673320))))))

(declare-fun d!533712 () Bool)

(assert (=> d!533712 e!1117644))

(declare-fun res!785352 () Bool)

(assert (=> d!533712 (=> res!785352 e!1117644)))

(assert (=> d!533712 (= res!785352 (isEmpty!12090 lt!673386))))

(assert (=> d!533712 (= lt!673386 e!1117645)))

(declare-fun c!284920 () Bool)

(assert (=> d!533712 (= c!284920 (and ((_ is Cons!19190) rules!3447) (= (tag!3765 (h!24591 rules!3447)) (tag!3765 (rule!5423 lt!673320)))))))

(assert (=> d!533712 (rulesInvariant!2717 thiss!24550 rules!3447)))

(assert (=> d!533712 (= (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))) lt!673386)))

(assert (= (and d!533712 c!284920) b!1746463))

(assert (= (and d!533712 (not c!284920)) b!1746461))

(assert (= (and b!1746461 c!284921) b!1746465))

(assert (= (and b!1746461 (not c!284921)) b!1746462))

(assert (= (and d!533712 (not res!785352)) b!1746464))

(assert (= (and b!1746464 res!785351) b!1746466))

(declare-fun m!2158571 () Bool)

(assert (=> b!1746464 m!2158571))

(assert (=> b!1746464 m!2158571))

(declare-fun m!2158573 () Bool)

(assert (=> b!1746464 m!2158573))

(assert (=> b!1746465 m!2158323))

(assert (=> b!1746465 m!2158325))

(declare-fun m!2158575 () Bool)

(assert (=> b!1746465 m!2158575))

(assert (=> b!1746466 m!2158571))

(declare-fun m!2158577 () Bool)

(assert (=> d!533712 m!2158577))

(assert (=> d!533712 m!2157607))

(assert (=> b!1746163 d!533712))

(declare-fun d!533714 () Bool)

(declare-fun lt!673389 () Int)

(assert (=> d!533714 (>= lt!673389 0)))

(declare-fun e!1117655 () Int)

(assert (=> d!533714 (= lt!673389 e!1117655)))

(declare-fun c!284926 () Bool)

(assert (=> d!533714 (= c!284926 ((_ is Nil!19189) (originalCharacters!4233 token!523)))))

(assert (=> d!533714 (= (size!15236 (originalCharacters!4233 token!523)) lt!673389)))

(declare-fun b!1746480 () Bool)

(assert (=> b!1746480 (= e!1117655 0)))

(declare-fun b!1746481 () Bool)

(assert (=> b!1746481 (= e!1117655 (+ 1 (size!15236 (t!162264 (originalCharacters!4233 token!523)))))))

(assert (= (and d!533714 c!284926) b!1746480))

(assert (= (and d!533714 (not c!284926)) b!1746481))

(declare-fun m!2158579 () Bool)

(assert (=> b!1746481 m!2158579))

(assert (=> b!1745706 d!533714))

(declare-fun b!1746482 () Bool)

(declare-fun e!1117659 () Bool)

(declare-fun lt!673390 () Bool)

(declare-fun call!110281 () Bool)

(assert (=> b!1746482 (= e!1117659 (= lt!673390 call!110281))))

(declare-fun b!1746483 () Bool)

(declare-fun e!1117661 () Bool)

(assert (=> b!1746483 (= e!1117661 (not lt!673390))))

(declare-fun b!1746484 () Bool)

(declare-fun e!1117660 () Bool)

(assert (=> b!1746484 (= e!1117660 (nullable!1441 (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098))))))

(declare-fun bm!110276 () Bool)

(assert (=> bm!110276 (= call!110281 (isEmpty!12086 (tail!2609 lt!673098)))))

(declare-fun b!1746485 () Bool)

(declare-fun e!1117656 () Bool)

(assert (=> b!1746485 (= e!1117656 (not (= (head!4010 (tail!2609 lt!673098)) (c!284766 (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098))))))))

(declare-fun b!1746486 () Bool)

(declare-fun res!785365 () Bool)

(declare-fun e!1117662 () Bool)

(assert (=> b!1746486 (=> (not res!785365) (not e!1117662))))

(assert (=> b!1746486 (= res!785365 (isEmpty!12086 (tail!2609 (tail!2609 lt!673098))))))

(declare-fun b!1746487 () Bool)

(declare-fun e!1117657 () Bool)

(declare-fun e!1117658 () Bool)

(assert (=> b!1746487 (= e!1117657 e!1117658)))

(declare-fun res!785360 () Bool)

(assert (=> b!1746487 (=> (not res!785360) (not e!1117658))))

(assert (=> b!1746487 (= res!785360 (not lt!673390))))

(declare-fun b!1746488 () Bool)

(declare-fun res!785361 () Bool)

(assert (=> b!1746488 (=> res!785361 e!1117657)))

(assert (=> b!1746488 (= res!785361 e!1117662)))

(declare-fun res!785362 () Bool)

(assert (=> b!1746488 (=> (not res!785362) (not e!1117662))))

(assert (=> b!1746488 (= res!785362 lt!673390)))

(declare-fun b!1746489 () Bool)

(assert (=> b!1746489 (= e!1117659 e!1117661)))

(declare-fun c!284928 () Bool)

(assert (=> b!1746489 (= c!284928 ((_ is EmptyLang!4747) (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098))))))

(declare-fun b!1746490 () Bool)

(declare-fun res!785358 () Bool)

(assert (=> b!1746490 (=> (not res!785358) (not e!1117662))))

(assert (=> b!1746490 (= res!785358 (not call!110281))))

(declare-fun b!1746491 () Bool)

(declare-fun res!785364 () Bool)

(assert (=> b!1746491 (=> res!785364 e!1117656)))

(assert (=> b!1746491 (= res!785364 (not (isEmpty!12086 (tail!2609 (tail!2609 lt!673098)))))))

(declare-fun b!1746492 () Bool)

(assert (=> b!1746492 (= e!1117658 e!1117656)))

(declare-fun res!785359 () Bool)

(assert (=> b!1746492 (=> res!785359 e!1117656)))

(assert (=> b!1746492 (= res!785359 call!110281)))

(declare-fun b!1746493 () Bool)

(assert (=> b!1746493 (= e!1117660 (matchR!2221 (derivativeStep!1210 (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098)) (head!4010 (tail!2609 lt!673098))) (tail!2609 (tail!2609 lt!673098))))))

(declare-fun b!1746494 () Bool)

(assert (=> b!1746494 (= e!1117662 (= (head!4010 (tail!2609 lt!673098)) (c!284766 (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098)))))))

(declare-fun b!1746495 () Bool)

(declare-fun res!785363 () Bool)

(assert (=> b!1746495 (=> res!785363 e!1117657)))

(assert (=> b!1746495 (= res!785363 (not ((_ is ElementMatch!4747) (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098)))))))

(assert (=> b!1746495 (= e!1117661 e!1117657)))

(declare-fun d!533716 () Bool)

(assert (=> d!533716 e!1117659))

(declare-fun c!284929 () Bool)

(assert (=> d!533716 (= c!284929 ((_ is EmptyExpr!4747) (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098))))))

(assert (=> d!533716 (= lt!673390 e!1117660)))

(declare-fun c!284927 () Bool)

(assert (=> d!533716 (= c!284927 (isEmpty!12086 (tail!2609 lt!673098)))))

(assert (=> d!533716 (validRegex!1915 (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098)))))

(assert (=> d!533716 (= (matchR!2221 (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098)) (tail!2609 lt!673098)) lt!673390)))

(assert (= (and d!533716 c!284927) b!1746484))

(assert (= (and d!533716 (not c!284927)) b!1746493))

(assert (= (and d!533716 c!284929) b!1746482))

(assert (= (and d!533716 (not c!284929)) b!1746489))

(assert (= (and b!1746489 c!284928) b!1746483))

(assert (= (and b!1746489 (not c!284928)) b!1746495))

(assert (= (and b!1746495 (not res!785363)) b!1746488))

(assert (= (and b!1746488 res!785362) b!1746490))

(assert (= (and b!1746490 res!785358) b!1746486))

(assert (= (and b!1746486 res!785365) b!1746494))

(assert (= (and b!1746488 (not res!785361)) b!1746487))

(assert (= (and b!1746487 res!785360) b!1746492))

(assert (= (and b!1746492 (not res!785359)) b!1746491))

(assert (= (and b!1746491 (not res!785364)) b!1746485))

(assert (= (or b!1746482 b!1746492 b!1746490) bm!110276))

(assert (=> b!1746493 m!2157705))

(declare-fun m!2158591 () Bool)

(assert (=> b!1746493 m!2158591))

(assert (=> b!1746493 m!2157703))

(assert (=> b!1746493 m!2158591))

(declare-fun m!2158593 () Bool)

(assert (=> b!1746493 m!2158593))

(assert (=> b!1746493 m!2157705))

(declare-fun m!2158595 () Bool)

(assert (=> b!1746493 m!2158595))

(assert (=> b!1746493 m!2158593))

(assert (=> b!1746493 m!2158595))

(declare-fun m!2158597 () Bool)

(assert (=> b!1746493 m!2158597))

(assert (=> bm!110276 m!2157705))

(assert (=> bm!110276 m!2157711))

(assert (=> b!1746486 m!2157705))

(assert (=> b!1746486 m!2158595))

(assert (=> b!1746486 m!2158595))

(declare-fun m!2158599 () Bool)

(assert (=> b!1746486 m!2158599))

(assert (=> b!1746491 m!2157705))

(assert (=> b!1746491 m!2158595))

(assert (=> b!1746491 m!2158595))

(assert (=> b!1746491 m!2158599))

(assert (=> b!1746484 m!2157703))

(declare-fun m!2158601 () Bool)

(assert (=> b!1746484 m!2158601))

(assert (=> b!1746494 m!2157705))

(assert (=> b!1746494 m!2158591))

(assert (=> b!1746485 m!2157705))

(assert (=> b!1746485 m!2158591))

(assert (=> d!533716 m!2157705))

(assert (=> d!533716 m!2157711))

(assert (=> d!533716 m!2157703))

(declare-fun m!2158603 () Bool)

(assert (=> d!533716 m!2158603))

(assert (=> b!1745771 d!533716))

(declare-fun b!1746524 () Bool)

(declare-fun e!1117680 () Regex!4747)

(assert (=> b!1746524 (= e!1117680 EmptyLang!4747)))

(declare-fun bm!110285 () Bool)

(declare-fun call!110292 () Regex!4747)

(declare-fun call!110293 () Regex!4747)

(assert (=> bm!110285 (= call!110292 call!110293)))

(declare-fun b!1746525 () Bool)

(declare-fun e!1117679 () Regex!4747)

(declare-fun call!110290 () Regex!4747)

(assert (=> b!1746525 (= e!1117679 (Union!4747 (Concat!8257 call!110290 (regTwo!10006 (regex!3419 rule!422))) EmptyLang!4747))))

(declare-fun b!1746526 () Bool)

(declare-fun e!1117682 () Regex!4747)

(assert (=> b!1746526 (= e!1117682 (ite (= (head!4010 lt!673098) (c!284766 (regex!3419 rule!422))) EmptyExpr!4747 EmptyLang!4747))))

(declare-fun b!1746527 () Bool)

(declare-fun e!1117681 () Regex!4747)

(declare-fun e!1117683 () Regex!4747)

(assert (=> b!1746527 (= e!1117681 e!1117683)))

(declare-fun c!284943 () Bool)

(assert (=> b!1746527 (= c!284943 ((_ is Star!4747) (regex!3419 rule!422)))))

(declare-fun b!1746529 () Bool)

(declare-fun call!110291 () Regex!4747)

(assert (=> b!1746529 (= e!1117681 (Union!4747 call!110291 call!110293))))

(declare-fun b!1746530 () Bool)

(declare-fun c!284945 () Bool)

(assert (=> b!1746530 (= c!284945 ((_ is Union!4747) (regex!3419 rule!422)))))

(assert (=> b!1746530 (= e!1117682 e!1117681)))

(declare-fun bm!110286 () Bool)

(assert (=> bm!110286 (= call!110291 (derivativeStep!1210 (ite c!284945 (regOne!10007 (regex!3419 rule!422)) (regOne!10006 (regex!3419 rule!422))) (head!4010 lt!673098)))))

(declare-fun b!1746531 () Bool)

(assert (=> b!1746531 (= e!1117679 (Union!4747 (Concat!8257 call!110291 (regTwo!10006 (regex!3419 rule!422))) call!110290))))

(declare-fun bm!110287 () Bool)

(assert (=> bm!110287 (= call!110290 call!110292)))

(declare-fun b!1746532 () Bool)

(declare-fun c!284946 () Bool)

(assert (=> b!1746532 (= c!284946 (nullable!1441 (regOne!10006 (regex!3419 rule!422))))))

(assert (=> b!1746532 (= e!1117683 e!1117679)))

(declare-fun d!533724 () Bool)

(declare-fun lt!673403 () Regex!4747)

(assert (=> d!533724 (validRegex!1915 lt!673403)))

(assert (=> d!533724 (= lt!673403 e!1117680)))

(declare-fun c!284947 () Bool)

(assert (=> d!533724 (= c!284947 (or ((_ is EmptyExpr!4747) (regex!3419 rule!422)) ((_ is EmptyLang!4747) (regex!3419 rule!422))))))

(assert (=> d!533724 (validRegex!1915 (regex!3419 rule!422))))

(assert (=> d!533724 (= (derivativeStep!1210 (regex!3419 rule!422) (head!4010 lt!673098)) lt!673403)))

(declare-fun b!1746528 () Bool)

(assert (=> b!1746528 (= e!1117680 e!1117682)))

(declare-fun c!284944 () Bool)

(assert (=> b!1746528 (= c!284944 ((_ is ElementMatch!4747) (regex!3419 rule!422)))))

(declare-fun bm!110288 () Bool)

(assert (=> bm!110288 (= call!110293 (derivativeStep!1210 (ite c!284945 (regTwo!10007 (regex!3419 rule!422)) (ite c!284943 (reg!5076 (regex!3419 rule!422)) (ite c!284946 (regTwo!10006 (regex!3419 rule!422)) (regOne!10006 (regex!3419 rule!422))))) (head!4010 lt!673098)))))

(declare-fun b!1746533 () Bool)

(assert (=> b!1746533 (= e!1117683 (Concat!8257 call!110292 (regex!3419 rule!422)))))

(assert (= (and d!533724 c!284947) b!1746524))

(assert (= (and d!533724 (not c!284947)) b!1746528))

(assert (= (and b!1746528 c!284944) b!1746526))

(assert (= (and b!1746528 (not c!284944)) b!1746530))

(assert (= (and b!1746530 c!284945) b!1746529))

(assert (= (and b!1746530 (not c!284945)) b!1746527))

(assert (= (and b!1746527 c!284943) b!1746533))

(assert (= (and b!1746527 (not c!284943)) b!1746532))

(assert (= (and b!1746532 c!284946) b!1746531))

(assert (= (and b!1746532 (not c!284946)) b!1746525))

(assert (= (or b!1746531 b!1746525) bm!110287))

(assert (= (or b!1746533 bm!110287) bm!110285))

(assert (= (or b!1746529 bm!110285) bm!110288))

(assert (= (or b!1746529 b!1746531) bm!110286))

(assert (=> bm!110286 m!2157701))

(declare-fun m!2158625 () Bool)

(assert (=> bm!110286 m!2158625))

(declare-fun m!2158627 () Bool)

(assert (=> b!1746532 m!2158627))

(declare-fun m!2158629 () Bool)

(assert (=> d!533724 m!2158629))

(assert (=> d!533724 m!2157715))

(assert (=> bm!110288 m!2157701))

(declare-fun m!2158631 () Bool)

(assert (=> bm!110288 m!2158631))

(assert (=> b!1745771 d!533724))

(declare-fun d!533736 () Bool)

(assert (=> d!533736 (= (head!4010 lt!673098) (h!24590 lt!673098))))

(assert (=> b!1745771 d!533736))

(declare-fun d!533738 () Bool)

(assert (=> d!533738 (= (tail!2609 lt!673098) (t!162264 lt!673098))))

(assert (=> b!1745771 d!533738))

(declare-fun d!533740 () Bool)

(declare-fun charsToBigInt!1 (List!19258) Int)

(assert (=> d!533740 (= (inv!17 (value!107114 token!523)) (= (charsToBigInt!1 (text!25011 (value!107114 token!523))) (value!107106 (value!107114 token!523))))))

(declare-fun bs!403286 () Bool)

(assert (= bs!403286 d!533740))

(declare-fun m!2158633 () Bool)

(assert (=> bs!403286 m!2158633))

(assert (=> b!1745849 d!533740))

(declare-fun bs!403288 () Bool)

(declare-fun d!533742 () Bool)

(assert (= bs!403288 (and d!533742 d!533492)))

(declare-fun lambda!69745 () Int)

(assert (=> bs!403288 (= lambda!69745 lambda!69722)))

(declare-fun lambda!69746 () Int)

(declare-fun forall!4265 (List!19264 Int) Bool)

(assert (=> d!533742 (forall!4265 (map!3954 rules!3447 lambda!69745) lambda!69746)))

(declare-fun lt!673411 () Unit!33261)

(declare-fun e!1117704 () Unit!33261)

(assert (=> d!533742 (= lt!673411 e!1117704)))

(declare-fun c!284962 () Bool)

(assert (=> d!533742 (= c!284962 ((_ is Nil!19190) rules!3447))))

(assert (=> d!533742 (rulesValidInductive!1144 thiss!24550 rules!3447)))

(assert (=> d!533742 (= (lemma!365 rules!3447 thiss!24550 rules!3447) lt!673411)))

(declare-fun b!1746568 () Bool)

(declare-fun Unit!33271 () Unit!33261)

(assert (=> b!1746568 (= e!1117704 Unit!33271)))

(declare-fun b!1746569 () Bool)

(declare-fun Unit!33272 () Unit!33261)

(assert (=> b!1746569 (= e!1117704 Unit!33272)))

(declare-fun lt!673412 () Unit!33261)

(assert (=> b!1746569 (= lt!673412 (lemma!365 rules!3447 thiss!24550 (t!162265 rules!3447)))))

(assert (= (and d!533742 c!284962) b!1746568))

(assert (= (and d!533742 (not c!284962)) b!1746569))

(declare-fun m!2158655 () Bool)

(assert (=> d!533742 m!2158655))

(assert (=> d!533742 m!2158655))

(declare-fun m!2158657 () Bool)

(assert (=> d!533742 m!2158657))

(assert (=> d!533742 m!2157799))

(declare-fun m!2158659 () Bool)

(assert (=> b!1746569 m!2158659))

(assert (=> d!533492 d!533742))

(declare-fun bs!403290 () Bool)

(declare-fun d!533746 () Bool)

(assert (= bs!403290 (and d!533746 d!533742)))

(declare-fun lambda!69751 () Int)

(assert (=> bs!403290 (= lambda!69751 lambda!69746)))

(declare-fun b!1746610 () Bool)

(declare-fun e!1117730 () Bool)

(declare-fun lt!673424 () Regex!4747)

(declare-fun isUnion!98 (Regex!4747) Bool)

(assert (=> b!1746610 (= e!1117730 (isUnion!98 lt!673424))))

(declare-fun b!1746611 () Bool)

(declare-fun e!1117734 () Bool)

(declare-fun e!1117729 () Bool)

(assert (=> b!1746611 (= e!1117734 e!1117729)))

(declare-fun c!284977 () Bool)

(declare-fun isEmpty!12092 (List!19264) Bool)

(assert (=> b!1746611 (= c!284977 (isEmpty!12092 (map!3954 rules!3447 lambda!69722)))))

(assert (=> d!533746 e!1117734))

(declare-fun res!785393 () Bool)

(assert (=> d!533746 (=> (not res!785393) (not e!1117734))))

(assert (=> d!533746 (= res!785393 (validRegex!1915 lt!673424))))

(declare-fun e!1117731 () Regex!4747)

(assert (=> d!533746 (= lt!673424 e!1117731)))

(declare-fun c!284974 () Bool)

(declare-fun e!1117733 () Bool)

(assert (=> d!533746 (= c!284974 e!1117733)))

(declare-fun res!785392 () Bool)

(assert (=> d!533746 (=> (not res!785392) (not e!1117733))))

(assert (=> d!533746 (= res!785392 ((_ is Cons!19194) (map!3954 rules!3447 lambda!69722)))))

(assert (=> d!533746 (forall!4265 (map!3954 rules!3447 lambda!69722) lambda!69751)))

(assert (=> d!533746 (= (generalisedUnion!373 (map!3954 rules!3447 lambda!69722)) lt!673424)))

(declare-fun b!1746612 () Bool)

(declare-fun head!4013 (List!19264) Regex!4747)

(assert (=> b!1746612 (= e!1117730 (= lt!673424 (head!4013 (map!3954 rules!3447 lambda!69722))))))

(declare-fun b!1746613 () Bool)

(declare-fun isEmptyLang!98 (Regex!4747) Bool)

(assert (=> b!1746613 (= e!1117729 (isEmptyLang!98 lt!673424))))

(declare-fun b!1746614 () Bool)

(declare-fun e!1117732 () Regex!4747)

(assert (=> b!1746614 (= e!1117732 EmptyLang!4747)))

(declare-fun b!1746615 () Bool)

(assert (=> b!1746615 (= e!1117732 (Union!4747 (h!24595 (map!3954 rules!3447 lambda!69722)) (generalisedUnion!373 (t!162313 (map!3954 rules!3447 lambda!69722)))))))

(declare-fun b!1746616 () Bool)

(assert (=> b!1746616 (= e!1117733 (isEmpty!12092 (t!162313 (map!3954 rules!3447 lambda!69722))))))

(declare-fun b!1746617 () Bool)

(assert (=> b!1746617 (= e!1117731 (h!24595 (map!3954 rules!3447 lambda!69722)))))

(declare-fun b!1746618 () Bool)

(assert (=> b!1746618 (= e!1117729 e!1117730)))

(declare-fun c!284975 () Bool)

(declare-fun tail!2610 (List!19264) List!19264)

(assert (=> b!1746618 (= c!284975 (isEmpty!12092 (tail!2610 (map!3954 rules!3447 lambda!69722))))))

(declare-fun b!1746619 () Bool)

(assert (=> b!1746619 (= e!1117731 e!1117732)))

(declare-fun c!284976 () Bool)

(assert (=> b!1746619 (= c!284976 ((_ is Cons!19194) (map!3954 rules!3447 lambda!69722)))))

(assert (= (and d!533746 res!785392) b!1746616))

(assert (= (and d!533746 c!284974) b!1746617))

(assert (= (and d!533746 (not c!284974)) b!1746619))

(assert (= (and b!1746619 c!284976) b!1746615))

(assert (= (and b!1746619 (not c!284976)) b!1746614))

(assert (= (and d!533746 res!785393) b!1746611))

(assert (= (and b!1746611 c!284977) b!1746613))

(assert (= (and b!1746611 (not c!284977)) b!1746618))

(assert (= (and b!1746618 c!284975) b!1746612))

(assert (= (and b!1746618 (not c!284975)) b!1746610))

(declare-fun m!2158683 () Bool)

(assert (=> b!1746615 m!2158683))

(declare-fun m!2158685 () Bool)

(assert (=> b!1746616 m!2158685))

(assert (=> b!1746612 m!2157937))

(declare-fun m!2158687 () Bool)

(assert (=> b!1746612 m!2158687))

(assert (=> b!1746611 m!2157937))

(declare-fun m!2158689 () Bool)

(assert (=> b!1746611 m!2158689))

(declare-fun m!2158691 () Bool)

(assert (=> b!1746610 m!2158691))

(assert (=> b!1746618 m!2157937))

(declare-fun m!2158693 () Bool)

(assert (=> b!1746618 m!2158693))

(assert (=> b!1746618 m!2158693))

(declare-fun m!2158695 () Bool)

(assert (=> b!1746618 m!2158695))

(declare-fun m!2158697 () Bool)

(assert (=> b!1746613 m!2158697))

(declare-fun m!2158699 () Bool)

(assert (=> d!533746 m!2158699))

(assert (=> d!533746 m!2157937))

(declare-fun m!2158701 () Bool)

(assert (=> d!533746 m!2158701))

(assert (=> d!533492 d!533746))

(declare-fun d!533758 () Bool)

(declare-fun lt!673428 () List!19264)

(declare-fun size!15239 (List!19264) Int)

(declare-fun size!15240 (List!19260) Int)

(assert (=> d!533758 (= (size!15239 lt!673428) (size!15240 rules!3447))))

(declare-fun e!1117745 () List!19264)

(assert (=> d!533758 (= lt!673428 e!1117745)))

(declare-fun c!284986 () Bool)

(assert (=> d!533758 (= c!284986 ((_ is Nil!19190) rules!3447))))

(assert (=> d!533758 (= (map!3954 rules!3447 lambda!69722) lt!673428)))

(declare-fun b!1746640 () Bool)

(assert (=> b!1746640 (= e!1117745 Nil!19194)))

(declare-fun b!1746641 () Bool)

(declare-fun $colon$colon!429 (List!19264 Regex!4747) List!19264)

(declare-fun dynLambda!9093 (Int Rule!6638) Regex!4747)

(assert (=> b!1746641 (= e!1117745 ($colon$colon!429 (map!3954 (t!162265 rules!3447) lambda!69722) (dynLambda!9093 lambda!69722 (h!24591 rules!3447))))))

(assert (= (and d!533758 c!284986) b!1746640))

(assert (= (and d!533758 (not c!284986)) b!1746641))

(declare-fun b_lambda!56019 () Bool)

(assert (=> (not b_lambda!56019) (not b!1746641)))

(declare-fun m!2158715 () Bool)

(assert (=> d!533758 m!2158715))

(declare-fun m!2158717 () Bool)

(assert (=> d!533758 m!2158717))

(declare-fun m!2158719 () Bool)

(assert (=> b!1746641 m!2158719))

(declare-fun m!2158721 () Bool)

(assert (=> b!1746641 m!2158721))

(assert (=> b!1746641 m!2158719))

(assert (=> b!1746641 m!2158721))

(declare-fun m!2158723 () Bool)

(assert (=> b!1746641 m!2158723))

(assert (=> d!533492 d!533758))

(declare-fun d!533764 () Bool)

(assert (=> d!533764 (= (isDefined!3205 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))) (not (isEmpty!12090 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))

(declare-fun bs!403291 () Bool)

(assert (= bs!403291 d!533764))

(assert (=> bs!403291 m!2157561))

(declare-fun m!2158725 () Bool)

(assert (=> bs!403291 m!2158725))

(assert (=> d!533516 d!533764))

(assert (=> d!533516 d!533604))

(declare-fun d!533766 () Bool)

(declare-fun e!1117758 () Bool)

(assert (=> d!533766 e!1117758))

(declare-fun res!785411 () Bool)

(assert (=> d!533766 (=> (not res!785411) (not e!1117758))))

(assert (=> d!533766 (= res!785411 (isDefined!3205 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))

(assert (=> d!533766 true))

(declare-fun _$52!1103 () Unit!33261)

(assert (=> d!533766 (= (choose!10763 thiss!24550 rules!3447 lt!673091 (_1!10817 lt!673096)) _$52!1103)))

(declare-fun b!1746663 () Bool)

(declare-fun res!785412 () Bool)

(assert (=> b!1746663 (=> (not res!785412) (not e!1117758))))

(assert (=> b!1746663 (= res!785412 (matchR!2221 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))) (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(declare-fun b!1746664 () Bool)

(assert (=> b!1746664 (= e!1117758 (= (rule!5423 (_1!10817 lt!673096)) (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))

(assert (= (and d!533766 res!785411) b!1746663))

(assert (= (and b!1746663 res!785412) b!1746664))

(assert (=> d!533766 m!2157561))

(assert (=> d!533766 m!2157561))

(assert (=> d!533766 m!2158039))

(assert (=> b!1746663 m!2157547))

(assert (=> b!1746663 m!2157561))

(assert (=> b!1746663 m!2157587))

(assert (=> b!1746663 m!2158045))

(assert (=> b!1746663 m!2157561))

(assert (=> b!1746663 m!2158043))

(assert (=> b!1746663 m!2157547))

(assert (=> b!1746663 m!2157587))

(assert (=> b!1746664 m!2157561))

(assert (=> b!1746664 m!2157561))

(assert (=> b!1746664 m!2158043))

(assert (=> d!533516 d!533766))

(assert (=> d!533516 d!533414))

(declare-fun d!533774 () Bool)

(declare-fun e!1117759 () Bool)

(assert (=> d!533774 e!1117759))

(declare-fun res!785414 () Bool)

(assert (=> d!533774 (=> (not res!785414) (not e!1117759))))

(declare-fun lt!673433 () List!19259)

(assert (=> d!533774 (= res!785414 (= (content!2758 lt!673433) ((_ map or) (content!2758 (t!162264 lt!673090)) (content!2758 (_2!10817 lt!673096)))))))

(declare-fun e!1117760 () List!19259)

(assert (=> d!533774 (= lt!673433 e!1117760)))

(declare-fun c!284991 () Bool)

(assert (=> d!533774 (= c!284991 ((_ is Nil!19189) (t!162264 lt!673090)))))

(assert (=> d!533774 (= (++!5244 (t!162264 lt!673090) (_2!10817 lt!673096)) lt!673433)))

(declare-fun b!1746665 () Bool)

(assert (=> b!1746665 (= e!1117760 (_2!10817 lt!673096))))

(declare-fun b!1746666 () Bool)

(assert (=> b!1746666 (= e!1117760 (Cons!19189 (h!24590 (t!162264 lt!673090)) (++!5244 (t!162264 (t!162264 lt!673090)) (_2!10817 lt!673096))))))

(declare-fun b!1746668 () Bool)

(assert (=> b!1746668 (= e!1117759 (or (not (= (_2!10817 lt!673096) Nil!19189)) (= lt!673433 (t!162264 lt!673090))))))

(declare-fun b!1746667 () Bool)

(declare-fun res!785413 () Bool)

(assert (=> b!1746667 (=> (not res!785413) (not e!1117759))))

(assert (=> b!1746667 (= res!785413 (= (size!15236 lt!673433) (+ (size!15236 (t!162264 lt!673090)) (size!15236 (_2!10817 lt!673096)))))))

(assert (= (and d!533774 c!284991) b!1746665))

(assert (= (and d!533774 (not c!284991)) b!1746666))

(assert (= (and d!533774 res!785414) b!1746667))

(assert (= (and b!1746667 res!785413) b!1746668))

(declare-fun m!2158751 () Bool)

(assert (=> d!533774 m!2158751))

(declare-fun m!2158753 () Bool)

(assert (=> d!533774 m!2158753))

(assert (=> d!533774 m!2158311))

(declare-fun m!2158755 () Bool)

(assert (=> b!1746666 m!2158755))

(declare-fun m!2158757 () Bool)

(assert (=> b!1746667 m!2158757))

(declare-fun m!2158759 () Bool)

(assert (=> b!1746667 m!2158759))

(assert (=> b!1746667 m!2158317))

(assert (=> b!1746171 d!533774))

(declare-fun b!1746678 () Bool)

(declare-fun e!1117765 () List!19259)

(declare-fun e!1117766 () List!19259)

(assert (=> b!1746678 (= e!1117765 e!1117766)))

(declare-fun c!284997 () Bool)

(assert (=> b!1746678 (= c!284997 ((_ is Leaf!9313) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))

(declare-fun d!533776 () Bool)

(declare-fun c!284996 () Bool)

(assert (=> d!533776 (= c!284996 ((_ is Empty!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))

(assert (=> d!533776 (= (list!7771 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) e!1117765)))

(declare-fun b!1746677 () Bool)

(assert (=> b!1746677 (= e!1117765 Nil!19189)))

(declare-fun b!1746679 () Bool)

(declare-fun list!7774 (IArray!12771) List!19259)

(assert (=> b!1746679 (= e!1117766 (list!7774 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(declare-fun b!1746680 () Bool)

(assert (=> b!1746680 (= e!1117766 (++!5244 (list!7771 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) (list!7771 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))))

(assert (= (and d!533776 c!284996) b!1746677))

(assert (= (and d!533776 (not c!284996)) b!1746678))

(assert (= (and b!1746678 c!284997) b!1746679))

(assert (= (and b!1746678 (not c!284997)) b!1746680))

(declare-fun m!2158761 () Bool)

(assert (=> b!1746679 m!2158761))

(declare-fun m!2158763 () Bool)

(assert (=> b!1746680 m!2158763))

(declare-fun m!2158765 () Bool)

(assert (=> b!1746680 m!2158765))

(assert (=> b!1746680 m!2158763))

(assert (=> b!1746680 m!2158765))

(declare-fun m!2158767 () Bool)

(assert (=> b!1746680 m!2158767))

(assert (=> d!533460 d!533776))

(declare-fun d!533778 () Bool)

(declare-fun res!785419 () Bool)

(declare-fun e!1117771 () Bool)

(assert (=> d!533778 (=> res!785419 e!1117771)))

(assert (=> d!533778 (= res!785419 ((_ is Nil!19190) rules!3447))))

(assert (=> d!533778 (= (noDuplicateTag!1280 thiss!24550 rules!3447 Nil!19193) e!1117771)))

(declare-fun b!1746685 () Bool)

(declare-fun e!1117772 () Bool)

(assert (=> b!1746685 (= e!1117771 e!1117772)))

(declare-fun res!785420 () Bool)

(assert (=> b!1746685 (=> (not res!785420) (not e!1117772))))

(declare-fun contains!3445 (List!19263 String!21877) Bool)

(assert (=> b!1746685 (= res!785420 (not (contains!3445 Nil!19193 (tag!3765 (h!24591 rules!3447)))))))

(declare-fun b!1746686 () Bool)

(assert (=> b!1746686 (= e!1117772 (noDuplicateTag!1280 thiss!24550 (t!162265 rules!3447) (Cons!19193 (tag!3765 (h!24591 rules!3447)) Nil!19193)))))

(assert (= (and d!533778 (not res!785419)) b!1746685))

(assert (= (and b!1746685 res!785420) b!1746686))

(declare-fun m!2158769 () Bool)

(assert (=> b!1746685 m!2158769))

(declare-fun m!2158771 () Bool)

(assert (=> b!1746686 m!2158771))

(assert (=> b!1745731 d!533778))

(declare-fun d!533780 () Bool)

(declare-fun c!284998 () Bool)

(assert (=> d!533780 (= c!284998 ((_ is Nil!19189) lt!673337))))

(declare-fun e!1117773 () (InoxSet C!9668))

(assert (=> d!533780 (= (content!2758 lt!673337) e!1117773)))

(declare-fun b!1746687 () Bool)

(assert (=> b!1746687 (= e!1117773 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1746688 () Bool)

(assert (=> b!1746688 (= e!1117773 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 lt!673337) true) (content!2758 (t!162264 lt!673337))))))

(assert (= (and d!533780 c!284998) b!1746687))

(assert (= (and d!533780 (not c!284998)) b!1746688))

(declare-fun m!2158773 () Bool)

(assert (=> b!1746688 m!2158773))

(declare-fun m!2158775 () Bool)

(assert (=> b!1746688 m!2158775))

(assert (=> d!533602 d!533780))

(declare-fun d!533782 () Bool)

(declare-fun c!284999 () Bool)

(assert (=> d!533782 (= c!284999 ((_ is Nil!19189) lt!673090))))

(declare-fun e!1117774 () (InoxSet C!9668))

(assert (=> d!533782 (= (content!2758 lt!673090) e!1117774)))

(declare-fun b!1746689 () Bool)

(assert (=> b!1746689 (= e!1117774 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1746690 () Bool)

(assert (=> b!1746690 (= e!1117774 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 lt!673090) true) (content!2758 (t!162264 lt!673090))))))

(assert (= (and d!533782 c!284999) b!1746689))

(assert (= (and d!533782 (not c!284999)) b!1746690))

(declare-fun m!2158777 () Bool)

(assert (=> b!1746690 m!2158777))

(assert (=> b!1746690 m!2158753))

(assert (=> d!533602 d!533782))

(declare-fun d!533784 () Bool)

(declare-fun c!285000 () Bool)

(assert (=> d!533784 (= c!285000 ((_ is Nil!19189) (_2!10817 lt!673096)))))

(declare-fun e!1117775 () (InoxSet C!9668))

(assert (=> d!533784 (= (content!2758 (_2!10817 lt!673096)) e!1117775)))

(declare-fun b!1746691 () Bool)

(assert (=> b!1746691 (= e!1117775 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1746692 () Bool)

(assert (=> b!1746692 (= e!1117775 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 (_2!10817 lt!673096)) true) (content!2758 (t!162264 (_2!10817 lt!673096)))))))

(assert (= (and d!533784 c!285000) b!1746691))

(assert (= (and d!533784 (not c!285000)) b!1746692))

(declare-fun m!2158779 () Bool)

(assert (=> b!1746692 m!2158779))

(declare-fun m!2158781 () Bool)

(assert (=> b!1746692 m!2158781))

(assert (=> d!533602 d!533784))

(declare-fun d!533786 () Bool)

(assert (=> d!533786 (= (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) ((_ is Nil!19189) (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(assert (=> b!1745784 d!533786))

(declare-fun d!533788 () Bool)

(assert (=> d!533788 (= (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) (t!162264 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(assert (=> b!1745784 d!533788))

(declare-fun d!533790 () Bool)

(declare-fun e!1117776 () Bool)

(assert (=> d!533790 e!1117776))

(declare-fun res!785422 () Bool)

(assert (=> d!533790 (=> (not res!785422) (not e!1117776))))

(declare-fun lt!673436 () List!19259)

(assert (=> d!533790 (= res!785422 (= (content!2758 lt!673436) ((_ map or) (content!2758 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))) (content!2758 (_2!10817 (get!5789 lt!673174))))))))

(declare-fun e!1117777 () List!19259)

(assert (=> d!533790 (= lt!673436 e!1117777)))

(declare-fun c!285001 () Bool)

(assert (=> d!533790 (= c!285001 ((_ is Nil!19189) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))))))

(assert (=> d!533790 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))) (_2!10817 (get!5789 lt!673174))) lt!673436)))

(declare-fun b!1746693 () Bool)

(assert (=> b!1746693 (= e!1117777 (_2!10817 (get!5789 lt!673174)))))

(declare-fun b!1746694 () Bool)

(assert (=> b!1746694 (= e!1117777 (Cons!19189 (h!24590 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))) (++!5244 (t!162264 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))) (_2!10817 (get!5789 lt!673174)))))))

(declare-fun b!1746696 () Bool)

(assert (=> b!1746696 (= e!1117776 (or (not (= (_2!10817 (get!5789 lt!673174)) Nil!19189)) (= lt!673436 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))))))))

(declare-fun b!1746695 () Bool)

(declare-fun res!785421 () Bool)

(assert (=> b!1746695 (=> (not res!785421) (not e!1117776))))

(assert (=> b!1746695 (= res!785421 (= (size!15236 lt!673436) (+ (size!15236 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))) (size!15236 (_2!10817 (get!5789 lt!673174))))))))

(assert (= (and d!533790 c!285001) b!1746693))

(assert (= (and d!533790 (not c!285001)) b!1746694))

(assert (= (and d!533790 res!785422) b!1746695))

(assert (= (and b!1746695 res!785421) b!1746696))

(declare-fun m!2158783 () Bool)

(assert (=> d!533790 m!2158783))

(assert (=> d!533790 m!2157771))

(declare-fun m!2158785 () Bool)

(assert (=> d!533790 m!2158785))

(declare-fun m!2158787 () Bool)

(assert (=> d!533790 m!2158787))

(declare-fun m!2158789 () Bool)

(assert (=> b!1746694 m!2158789))

(declare-fun m!2158791 () Bool)

(assert (=> b!1746695 m!2158791))

(assert (=> b!1746695 m!2157771))

(declare-fun m!2158793 () Bool)

(assert (=> b!1746695 m!2158793))

(assert (=> b!1746695 m!2157761))

(assert (=> b!1745831 d!533790))

(declare-fun d!533792 () Bool)

(assert (=> d!533792 (= (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))) (list!7771 (c!284767 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))))))

(declare-fun bs!403294 () Bool)

(assert (= bs!403294 d!533792))

(declare-fun m!2158795 () Bool)

(assert (=> bs!403294 m!2158795))

(assert (=> b!1745831 d!533792))

(declare-fun d!533794 () Bool)

(declare-fun lt!673438 () BalanceConc!12710)

(assert (=> d!533794 (= (list!7768 lt!673438) (originalCharacters!4233 (_1!10817 (get!5789 lt!673174))))))

(assert (=> d!533794 (= lt!673438 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))) (value!107114 (_1!10817 (get!5789 lt!673174)))))))

(assert (=> d!533794 (= (charsOf!2068 (_1!10817 (get!5789 lt!673174))) lt!673438)))

(declare-fun b_lambda!56021 () Bool)

(assert (=> (not b_lambda!56021) (not d!533794)))

(declare-fun t!162345 () Bool)

(declare-fun tb!104507 () Bool)

(assert (=> (and b!1745577 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162345) tb!104507))

(declare-fun b!1746697 () Bool)

(declare-fun e!1117778 () Bool)

(declare-fun tp!496923 () Bool)

(assert (=> b!1746697 (= e!1117778 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))) (value!107114 (_1!10817 (get!5789 lt!673174)))))) tp!496923))))

(declare-fun result!125722 () Bool)

(assert (=> tb!104507 (= result!125722 (and (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))) (value!107114 (_1!10817 (get!5789 lt!673174))))) e!1117778))))

(assert (= tb!104507 b!1746697))

(declare-fun m!2158799 () Bool)

(assert (=> b!1746697 m!2158799))

(declare-fun m!2158801 () Bool)

(assert (=> tb!104507 m!2158801))

(assert (=> d!533794 t!162345))

(declare-fun b_and!130097 () Bool)

(assert (= b_and!129993 (and (=> t!162345 result!125722) b_and!130097)))

(declare-fun t!162347 () Bool)

(declare-fun tb!104509 () Bool)

(assert (=> (and b!1745592 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162347) tb!104509))

(declare-fun result!125724 () Bool)

(assert (= result!125724 result!125722))

(assert (=> d!533794 t!162347))

(declare-fun b_and!130099 () Bool)

(assert (= b_and!129995 (and (=> t!162347 result!125724) b_and!130099)))

(declare-fun tb!104511 () Bool)

(declare-fun t!162349 () Bool)

(assert (=> (and b!1745601 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162349) tb!104511))

(declare-fun result!125726 () Bool)

(assert (= result!125726 result!125722))

(assert (=> d!533794 t!162349))

(declare-fun b_and!130101 () Bool)

(assert (= b_and!129997 (and (=> t!162349 result!125726) b_and!130101)))

(declare-fun tb!104513 () Bool)

(declare-fun t!162351 () Bool)

(assert (=> (and b!1746215 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162351) tb!104513))

(declare-fun result!125728 () Bool)

(assert (= result!125728 result!125722))

(assert (=> d!533794 t!162351))

(declare-fun b_and!130103 () Bool)

(assert (= b_and!130071 (and (=> t!162351 result!125728) b_and!130103)))

(declare-fun m!2158803 () Bool)

(assert (=> d!533794 m!2158803))

(declare-fun m!2158805 () Bool)

(assert (=> d!533794 m!2158805))

(assert (=> b!1745831 d!533794))

(declare-fun d!533800 () Bool)

(assert (=> d!533800 (= (get!5789 lt!673174) (v!25301 lt!673174))))

(assert (=> b!1745831 d!533800))

(declare-fun d!533802 () Bool)

(declare-fun nullableFct!329 (Regex!4747) Bool)

(assert (=> d!533802 (= (nullable!1441 (regex!3419 rule!422)) (nullableFct!329 (regex!3419 rule!422)))))

(declare-fun bs!403295 () Bool)

(assert (= bs!403295 d!533802))

(declare-fun m!2158807 () Bool)

(assert (=> bs!403295 m!2158807))

(assert (=> b!1745778 d!533802))

(assert (=> b!1745827 d!533792))

(assert (=> b!1745827 d!533794))

(assert (=> b!1745827 d!533800))

(declare-fun d!533804 () Bool)

(assert (=> d!533804 (= (get!5790 lt!673346) (v!25300 lt!673346))))

(assert (=> b!1746191 d!533804))

(declare-fun d!533806 () Bool)

(assert (=> d!533806 (= (isEmpty!12086 lt!673090) ((_ is Nil!19189) lt!673090))))

(assert (=> d!533452 d!533806))

(declare-fun b!1746726 () Bool)

(declare-fun res!785444 () Bool)

(declare-fun e!1117801 () Bool)

(assert (=> b!1746726 (=> res!785444 e!1117801)))

(assert (=> b!1746726 (= res!785444 (not ((_ is Concat!8257) (regex!3419 (rule!5423 (_1!10817 lt!673096))))))))

(declare-fun e!1117804 () Bool)

(assert (=> b!1746726 (= e!1117804 e!1117801)))

(declare-fun b!1746727 () Bool)

(declare-fun res!785441 () Bool)

(declare-fun e!1117803 () Bool)

(assert (=> b!1746727 (=> (not res!785441) (not e!1117803))))

(declare-fun call!110301 () Bool)

(assert (=> b!1746727 (= res!785441 call!110301)))

(assert (=> b!1746727 (= e!1117804 e!1117803)))

(declare-fun bm!110296 () Bool)

(declare-fun call!110302 () Bool)

(assert (=> bm!110296 (= call!110301 call!110302)))

(declare-fun c!285007 () Bool)

(declare-fun bm!110297 () Bool)

(declare-fun c!285008 () Bool)

(assert (=> bm!110297 (= call!110302 (validRegex!1915 (ite c!285007 (reg!5076 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (ite c!285008 (regOne!10007 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (regTwo!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096))))))))))

(declare-fun b!1746728 () Bool)

(declare-fun e!1117800 () Bool)

(declare-fun e!1117799 () Bool)

(assert (=> b!1746728 (= e!1117800 e!1117799)))

(declare-fun res!785442 () Bool)

(assert (=> b!1746728 (= res!785442 (not (nullable!1441 (reg!5076 (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))))

(assert (=> b!1746728 (=> (not res!785442) (not e!1117799))))

(declare-fun b!1746730 () Bool)

(declare-fun call!110303 () Bool)

(assert (=> b!1746730 (= e!1117803 call!110303)))

(declare-fun b!1746731 () Bool)

(declare-fun e!1117798 () Bool)

(assert (=> b!1746731 (= e!1117801 e!1117798)))

(declare-fun res!785443 () Bool)

(assert (=> b!1746731 (=> (not res!785443) (not e!1117798))))

(assert (=> b!1746731 (= res!785443 call!110303)))

(declare-fun b!1746732 () Bool)

(assert (=> b!1746732 (= e!1117798 call!110301)))

(declare-fun b!1746733 () Bool)

(declare-fun e!1117802 () Bool)

(assert (=> b!1746733 (= e!1117802 e!1117800)))

(assert (=> b!1746733 (= c!285007 ((_ is Star!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun bm!110298 () Bool)

(assert (=> bm!110298 (= call!110303 (validRegex!1915 (ite c!285008 (regTwo!10007 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (regOne!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))))

(declare-fun b!1746734 () Bool)

(assert (=> b!1746734 (= e!1117799 call!110302)))

(declare-fun b!1746729 () Bool)

(assert (=> b!1746729 (= e!1117800 e!1117804)))

(assert (=> b!1746729 (= c!285008 ((_ is Union!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun d!533808 () Bool)

(declare-fun res!785440 () Bool)

(assert (=> d!533808 (=> res!785440 e!1117802)))

(assert (=> d!533808 (= res!785440 ((_ is ElementMatch!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(assert (=> d!533808 (= (validRegex!1915 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) e!1117802)))

(assert (= (and d!533808 (not res!785440)) b!1746733))

(assert (= (and b!1746733 c!285007) b!1746728))

(assert (= (and b!1746733 (not c!285007)) b!1746729))

(assert (= (and b!1746728 res!785442) b!1746734))

(assert (= (and b!1746729 c!285008) b!1746727))

(assert (= (and b!1746729 (not c!285008)) b!1746726))

(assert (= (and b!1746727 res!785441) b!1746730))

(assert (= (and b!1746726 (not res!785444)) b!1746731))

(assert (= (and b!1746731 res!785443) b!1746732))

(assert (= (or b!1746727 b!1746732) bm!110296))

(assert (= (or b!1746730 b!1746731) bm!110298))

(assert (= (or b!1746734 bm!110296) bm!110297))

(declare-fun m!2158869 () Bool)

(assert (=> bm!110297 m!2158869))

(declare-fun m!2158871 () Bool)

(assert (=> b!1746728 m!2158871))

(declare-fun m!2158873 () Bool)

(assert (=> bm!110298 m!2158873))

(assert (=> d!533452 d!533808))

(assert (=> b!1745763 d!533736))

(declare-fun d!533822 () Bool)

(declare-fun charsToBigInt!0 (List!19258 Int) Int)

(assert (=> d!533822 (= (inv!15 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)) (= (charsToBigInt!0 (text!25012 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)) 0) (value!107109 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))

(declare-fun bs!403299 () Bool)

(assert (= bs!403299 d!533822))

(declare-fun m!2158875 () Bool)

(assert (=> bs!403299 m!2158875))

(assert (=> b!1745885 d!533822))

(declare-fun d!533824 () Bool)

(assert (=> d!533824 (= (inv!24878 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) (<= (size!15236 (innerList!6443 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) 2147483647))))

(declare-fun bs!403300 () Bool)

(assert (= bs!403300 d!533824))

(declare-fun m!2158877 () Bool)

(assert (=> bs!403300 m!2158877))

(assert (=> b!1746240 d!533824))

(declare-fun d!533826 () Bool)

(declare-fun lt!673448 () Int)

(assert (=> d!533826 (>= lt!673448 0)))

(declare-fun e!1117807 () Int)

(assert (=> d!533826 (= lt!673448 e!1117807)))

(declare-fun c!285009 () Bool)

(assert (=> d!533826 (= c!285009 ((_ is Nil!19189) lt!673232))))

(assert (=> d!533826 (= (size!15236 lt!673232) lt!673448)))

(declare-fun b!1746737 () Bool)

(assert (=> b!1746737 (= e!1117807 0)))

(declare-fun b!1746738 () Bool)

(assert (=> b!1746738 (= e!1117807 (+ 1 (size!15236 (t!162264 lt!673232))))))

(assert (= (and d!533826 c!285009) b!1746737))

(assert (= (and d!533826 (not c!285009)) b!1746738))

(declare-fun m!2158879 () Bool)

(assert (=> b!1746738 m!2158879))

(assert (=> b!1745943 d!533826))

(declare-fun d!533828 () Bool)

(declare-fun lt!673449 () Int)

(assert (=> d!533828 (>= lt!673449 0)))

(declare-fun e!1117808 () Int)

(assert (=> d!533828 (= lt!673449 e!1117808)))

(declare-fun c!285010 () Bool)

(assert (=> d!533828 (= c!285010 ((_ is Nil!19189) lt!673098))))

(assert (=> d!533828 (= (size!15236 lt!673098) lt!673449)))

(declare-fun b!1746741 () Bool)

(assert (=> b!1746741 (= e!1117808 0)))

(declare-fun b!1746742 () Bool)

(assert (=> b!1746742 (= e!1117808 (+ 1 (size!15236 (t!162264 lt!673098))))))

(assert (= (and d!533828 c!285010) b!1746741))

(assert (= (and d!533828 (not c!285010)) b!1746742))

(declare-fun m!2158881 () Bool)

(assert (=> b!1746742 m!2158881))

(assert (=> b!1745943 d!533828))

(declare-fun d!533830 () Bool)

(declare-fun lt!673450 () Int)

(assert (=> d!533830 (>= lt!673450 0)))

(declare-fun e!1117809 () Int)

(assert (=> d!533830 (= lt!673450 e!1117809)))

(declare-fun c!285011 () Bool)

(assert (=> d!533830 (= c!285011 ((_ is Nil!19189) (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))

(assert (=> d!533830 (= (size!15236 (Cons!19189 (head!4010 suffix!1421) Nil!19189)) lt!673450)))

(declare-fun b!1746743 () Bool)

(assert (=> b!1746743 (= e!1117809 0)))

(declare-fun b!1746744 () Bool)

(assert (=> b!1746744 (= e!1117809 (+ 1 (size!15236 (t!162264 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(assert (= (and d!533830 c!285011) b!1746743))

(assert (= (and d!533830 (not c!285011)) b!1746744))

(declare-fun m!2158885 () Bool)

(assert (=> b!1746744 m!2158885))

(assert (=> b!1745943 d!533830))

(declare-fun d!533834 () Bool)

(declare-fun lt!673451 () Int)

(assert (=> d!533834 (>= lt!673451 0)))

(declare-fun e!1117810 () Int)

(assert (=> d!533834 (= lt!673451 e!1117810)))

(declare-fun c!285012 () Bool)

(assert (=> d!533834 (= c!285012 ((_ is Nil!19189) lt!673348))))

(assert (=> d!533834 (= (size!15236 lt!673348) lt!673451)))

(declare-fun b!1746745 () Bool)

(assert (=> b!1746745 (= e!1117810 0)))

(declare-fun b!1746746 () Bool)

(assert (=> b!1746746 (= e!1117810 (+ 1 (size!15236 (t!162264 lt!673348))))))

(assert (= (and d!533834 c!285012) b!1746745))

(assert (= (and d!533834 (not c!285012)) b!1746746))

(declare-fun m!2158887 () Bool)

(assert (=> b!1746746 m!2158887))

(assert (=> b!1746198 d!533834))

(assert (=> b!1746198 d!533828))

(declare-fun d!533836 () Bool)

(declare-fun lt!673452 () Int)

(assert (=> d!533836 (>= lt!673452 0)))

(declare-fun e!1117811 () Int)

(assert (=> d!533836 (= lt!673452 e!1117811)))

(declare-fun c!285013 () Bool)

(assert (=> d!533836 (= c!285013 ((_ is Nil!19189) suffix!1421))))

(assert (=> d!533836 (= (size!15236 suffix!1421) lt!673452)))

(declare-fun b!1746747 () Bool)

(assert (=> b!1746747 (= e!1117811 0)))

(declare-fun b!1746748 () Bool)

(assert (=> b!1746748 (= e!1117811 (+ 1 (size!15236 (t!162264 suffix!1421))))))

(assert (= (and d!533836 c!285013) b!1746747))

(assert (= (and d!533836 (not c!285013)) b!1746748))

(declare-fun m!2158889 () Bool)

(assert (=> b!1746748 m!2158889))

(assert (=> b!1746198 d!533836))

(declare-fun b!1746750 () Bool)

(declare-fun res!785449 () Bool)

(declare-fun e!1117812 () Bool)

(assert (=> b!1746750 (=> (not res!785449) (not e!1117812))))

(assert (=> b!1746750 (= res!785449 (= (head!4010 (tail!2609 lt!673098)) (head!4010 (tail!2609 lt!673091))))))

(declare-fun b!1746751 () Bool)

(assert (=> b!1746751 (= e!1117812 (isPrefix!1660 (tail!2609 (tail!2609 lt!673098)) (tail!2609 (tail!2609 lt!673091))))))

(declare-fun b!1746752 () Bool)

(declare-fun e!1117814 () Bool)

(assert (=> b!1746752 (= e!1117814 (>= (size!15236 (tail!2609 lt!673091)) (size!15236 (tail!2609 lt!673098))))))

(declare-fun d!533838 () Bool)

(assert (=> d!533838 e!1117814))

(declare-fun res!785447 () Bool)

(assert (=> d!533838 (=> res!785447 e!1117814)))

(declare-fun lt!673453 () Bool)

(assert (=> d!533838 (= res!785447 (not lt!673453))))

(declare-fun e!1117813 () Bool)

(assert (=> d!533838 (= lt!673453 e!1117813)))

(declare-fun res!785448 () Bool)

(assert (=> d!533838 (=> res!785448 e!1117813)))

(assert (=> d!533838 (= res!785448 ((_ is Nil!19189) (tail!2609 lt!673098)))))

(assert (=> d!533838 (= (isPrefix!1660 (tail!2609 lt!673098) (tail!2609 lt!673091)) lt!673453)))

(declare-fun b!1746749 () Bool)

(assert (=> b!1746749 (= e!1117813 e!1117812)))

(declare-fun res!785450 () Bool)

(assert (=> b!1746749 (=> (not res!785450) (not e!1117812))))

(assert (=> b!1746749 (= res!785450 (not ((_ is Nil!19189) (tail!2609 lt!673091))))))

(assert (= (and d!533838 (not res!785448)) b!1746749))

(assert (= (and b!1746749 res!785450) b!1746750))

(assert (= (and b!1746750 res!785449) b!1746751))

(assert (= (and d!533838 (not res!785447)) b!1746752))

(assert (=> b!1746750 m!2157705))

(assert (=> b!1746750 m!2158591))

(assert (=> b!1746750 m!2158297))

(declare-fun m!2158891 () Bool)

(assert (=> b!1746750 m!2158891))

(assert (=> b!1746751 m!2157705))

(assert (=> b!1746751 m!2158595))

(assert (=> b!1746751 m!2158297))

(declare-fun m!2158893 () Bool)

(assert (=> b!1746751 m!2158893))

(assert (=> b!1746751 m!2158595))

(assert (=> b!1746751 m!2158893))

(declare-fun m!2158897 () Bool)

(assert (=> b!1746751 m!2158897))

(assert (=> b!1746752 m!2158297))

(declare-fun m!2158899 () Bool)

(assert (=> b!1746752 m!2158899))

(assert (=> b!1746752 m!2157705))

(declare-fun m!2158901 () Bool)

(assert (=> b!1746752 m!2158901))

(assert (=> b!1746194 d!533838))

(assert (=> b!1746194 d!533738))

(declare-fun d!533842 () Bool)

(assert (=> d!533842 (= (tail!2609 lt!673091) (t!162264 lt!673091))))

(assert (=> b!1746194 d!533842))

(assert (=> b!1745622 d!533486))

(declare-fun b!1746863 () Bool)

(declare-fun e!1117871 () Option!3863)

(declare-datatypes ((tuple2!18838 0))(
  ( (tuple2!18839 (_1!10821 List!19259) (_2!10821 List!19259)) )
))
(declare-fun lt!673491 () tuple2!18838)

(assert (=> b!1746863 (= e!1117871 (Some!3862 (tuple2!18831 (Token!6405 (apply!5220 (transformation!3419 (h!24591 rules!3447)) (seqFromList!2389 (_1!10821 lt!673491))) (h!24591 rules!3447) (size!15234 (seqFromList!2389 (_1!10821 lt!673491))) (_1!10821 lt!673491)) (_2!10821 lt!673491))))))

(declare-fun lt!673493 () Unit!33261)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!411 (Regex!4747 List!19259) Unit!33261)

(assert (=> b!1746863 (= lt!673493 (longestMatchIsAcceptedByMatchOrIsEmpty!411 (regex!3419 (h!24591 rules!3447)) lt!673091))))

(declare-fun res!785505 () Bool)

(declare-fun findLongestMatchInner!427 (Regex!4747 List!19259 Int List!19259 List!19259 Int) tuple2!18838)

(assert (=> b!1746863 (= res!785505 (isEmpty!12086 (_1!10821 (findLongestMatchInner!427 (regex!3419 (h!24591 rules!3447)) Nil!19189 (size!15236 Nil!19189) lt!673091 lt!673091 (size!15236 lt!673091)))))))

(declare-fun e!1117870 () Bool)

(assert (=> b!1746863 (=> res!785505 e!1117870)))

(assert (=> b!1746863 e!1117870))

(declare-fun lt!673492 () Unit!33261)

(assert (=> b!1746863 (= lt!673492 lt!673493)))

(declare-fun lt!673494 () Unit!33261)

(assert (=> b!1746863 (= lt!673494 (lemmaSemiInverse!559 (transformation!3419 (h!24591 rules!3447)) (seqFromList!2389 (_1!10821 lt!673491))))))

(declare-fun b!1746864 () Bool)

(declare-fun res!785508 () Bool)

(declare-fun e!1117872 () Bool)

(assert (=> b!1746864 (=> (not res!785508) (not e!1117872))))

(declare-fun lt!673495 () Option!3863)

(assert (=> b!1746864 (= res!785508 (< (size!15236 (_2!10817 (get!5789 lt!673495))) (size!15236 lt!673091)))))

(declare-fun b!1746865 () Bool)

(declare-fun res!785503 () Bool)

(assert (=> b!1746865 (=> (not res!785503) (not e!1117872))))

(assert (=> b!1746865 (= res!785503 (= (value!107114 (_1!10817 (get!5789 lt!673495))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673495)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673495)))))))))

(declare-fun b!1746866 () Bool)

(declare-fun res!785507 () Bool)

(assert (=> b!1746866 (=> (not res!785507) (not e!1117872))))

(assert (=> b!1746866 (= res!785507 (= (rule!5423 (_1!10817 (get!5789 lt!673495))) (h!24591 rules!3447)))))

(declare-fun b!1746867 () Bool)

(assert (=> b!1746867 (= e!1117870 (matchR!2221 (regex!3419 (h!24591 rules!3447)) (_1!10821 (findLongestMatchInner!427 (regex!3419 (h!24591 rules!3447)) Nil!19189 (size!15236 Nil!19189) lt!673091 lt!673091 (size!15236 lt!673091)))))))

(declare-fun b!1746868 () Bool)

(declare-fun e!1117873 () Bool)

(assert (=> b!1746868 (= e!1117873 e!1117872)))

(declare-fun res!785504 () Bool)

(assert (=> b!1746868 (=> (not res!785504) (not e!1117872))))

(assert (=> b!1746868 (= res!785504 (matchR!2221 (regex!3419 (h!24591 rules!3447)) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673495))))))))

(declare-fun b!1746869 () Bool)

(assert (=> b!1746869 (= e!1117872 (= (size!15233 (_1!10817 (get!5789 lt!673495))) (size!15236 (originalCharacters!4233 (_1!10817 (get!5789 lt!673495))))))))

(declare-fun b!1746870 () Bool)

(assert (=> b!1746870 (= e!1117871 None!3862)))

(declare-fun d!533844 () Bool)

(assert (=> d!533844 e!1117873))

(declare-fun res!785502 () Bool)

(assert (=> d!533844 (=> res!785502 e!1117873)))

(assert (=> d!533844 (= res!785502 (isEmpty!12089 lt!673495))))

(assert (=> d!533844 (= lt!673495 e!1117871)))

(declare-fun c!285043 () Bool)

(assert (=> d!533844 (= c!285043 (isEmpty!12086 (_1!10821 lt!673491)))))

(declare-fun findLongestMatch!354 (Regex!4747 List!19259) tuple2!18838)

(assert (=> d!533844 (= lt!673491 (findLongestMatch!354 (regex!3419 (h!24591 rules!3447)) lt!673091))))

(assert (=> d!533844 (ruleValid!918 thiss!24550 (h!24591 rules!3447))))

(assert (=> d!533844 (= (maxPrefixOneRule!974 thiss!24550 (h!24591 rules!3447) lt!673091) lt!673495)))

(declare-fun b!1746871 () Bool)

(declare-fun res!785506 () Bool)

(assert (=> b!1746871 (=> (not res!785506) (not e!1117872))))

(assert (=> b!1746871 (= res!785506 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673495)))) (_2!10817 (get!5789 lt!673495))) lt!673091))))

(assert (= (and d!533844 c!285043) b!1746870))

(assert (= (and d!533844 (not c!285043)) b!1746863))

(assert (= (and b!1746863 (not res!785505)) b!1746867))

(assert (= (and d!533844 (not res!785502)) b!1746868))

(assert (= (and b!1746868 res!785504) b!1746871))

(assert (= (and b!1746871 res!785506) b!1746864))

(assert (= (and b!1746864 res!785508) b!1746866))

(assert (= (and b!1746866 res!785507) b!1746865))

(assert (= (and b!1746865 res!785503) b!1746869))

(declare-fun m!2159079 () Bool)

(assert (=> b!1746869 m!2159079))

(declare-fun m!2159081 () Bool)

(assert (=> b!1746869 m!2159081))

(declare-fun m!2159083 () Bool)

(assert (=> b!1746867 m!2159083))

(assert (=> b!1746867 m!2158053))

(assert (=> b!1746867 m!2159083))

(assert (=> b!1746867 m!2158053))

(declare-fun m!2159085 () Bool)

(assert (=> b!1746867 m!2159085))

(declare-fun m!2159087 () Bool)

(assert (=> b!1746867 m!2159087))

(assert (=> b!1746868 m!2159079))

(declare-fun m!2159089 () Bool)

(assert (=> b!1746868 m!2159089))

(assert (=> b!1746868 m!2159089))

(declare-fun m!2159091 () Bool)

(assert (=> b!1746868 m!2159091))

(assert (=> b!1746868 m!2159091))

(declare-fun m!2159093 () Bool)

(assert (=> b!1746868 m!2159093))

(assert (=> b!1746866 m!2159079))

(assert (=> b!1746865 m!2159079))

(declare-fun m!2159095 () Bool)

(assert (=> b!1746865 m!2159095))

(assert (=> b!1746865 m!2159095))

(declare-fun m!2159097 () Bool)

(assert (=> b!1746865 m!2159097))

(assert (=> b!1746864 m!2159079))

(declare-fun m!2159099 () Bool)

(assert (=> b!1746864 m!2159099))

(assert (=> b!1746864 m!2158053))

(assert (=> b!1746871 m!2159079))

(assert (=> b!1746871 m!2159089))

(assert (=> b!1746871 m!2159089))

(assert (=> b!1746871 m!2159091))

(assert (=> b!1746871 m!2159091))

(declare-fun m!2159101 () Bool)

(assert (=> b!1746871 m!2159101))

(declare-fun m!2159103 () Bool)

(assert (=> d!533844 m!2159103))

(declare-fun m!2159105 () Bool)

(assert (=> d!533844 m!2159105))

(declare-fun m!2159107 () Bool)

(assert (=> d!533844 m!2159107))

(declare-fun m!2159109 () Bool)

(assert (=> d!533844 m!2159109))

(assert (=> b!1746863 m!2158053))

(declare-fun m!2159111 () Bool)

(assert (=> b!1746863 m!2159111))

(declare-fun m!2159113 () Bool)

(assert (=> b!1746863 m!2159113))

(assert (=> b!1746863 m!2159111))

(declare-fun m!2159115 () Bool)

(assert (=> b!1746863 m!2159115))

(assert (=> b!1746863 m!2159083))

(declare-fun m!2159117 () Bool)

(assert (=> b!1746863 m!2159117))

(assert (=> b!1746863 m!2159111))

(declare-fun m!2159119 () Bool)

(assert (=> b!1746863 m!2159119))

(assert (=> b!1746863 m!2159083))

(assert (=> b!1746863 m!2158053))

(assert (=> b!1746863 m!2159085))

(assert (=> b!1746863 m!2159111))

(declare-fun m!2159121 () Bool)

(assert (=> b!1746863 m!2159121))

(assert (=> bm!110244 d!533844))

(declare-fun d!533928 () Bool)

(assert (=> d!533928 (= (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))) (v!25300 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))

(assert (=> b!1745985 d!533928))

(assert (=> b!1745985 d!533426))

(assert (=> b!1745985 d!533604))

(declare-fun b!1746872 () Bool)

(declare-fun e!1117877 () Bool)

(declare-fun lt!673496 () Bool)

(declare-fun call!110310 () Bool)

(assert (=> b!1746872 (= e!1117877 (= lt!673496 call!110310))))

(declare-fun b!1746873 () Bool)

(declare-fun e!1117879 () Bool)

(assert (=> b!1746873 (= e!1117879 (not lt!673496))))

(declare-fun e!1117878 () Bool)

(declare-fun b!1746874 () Bool)

(assert (=> b!1746874 (= e!1117878 (nullable!1441 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))))

(declare-fun bm!110305 () Bool)

(assert (=> bm!110305 (= call!110310 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(declare-fun e!1117874 () Bool)

(declare-fun b!1746875 () Bool)

(assert (=> b!1746875 (= e!1117874 (not (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) (c!284766 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))))))

(declare-fun b!1746876 () Bool)

(declare-fun res!785516 () Bool)

(declare-fun e!1117880 () Bool)

(assert (=> b!1746876 (=> (not res!785516) (not e!1117880))))

(assert (=> b!1746876 (= res!785516 (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1746877 () Bool)

(declare-fun e!1117875 () Bool)

(declare-fun e!1117876 () Bool)

(assert (=> b!1746877 (= e!1117875 e!1117876)))

(declare-fun res!785511 () Bool)

(assert (=> b!1746877 (=> (not res!785511) (not e!1117876))))

(assert (=> b!1746877 (= res!785511 (not lt!673496))))

(declare-fun b!1746878 () Bool)

(declare-fun res!785512 () Bool)

(assert (=> b!1746878 (=> res!785512 e!1117875)))

(assert (=> b!1746878 (= res!785512 e!1117880)))

(declare-fun res!785513 () Bool)

(assert (=> b!1746878 (=> (not res!785513) (not e!1117880))))

(assert (=> b!1746878 (= res!785513 lt!673496)))

(declare-fun b!1746879 () Bool)

(assert (=> b!1746879 (= e!1117877 e!1117879)))

(declare-fun c!285045 () Bool)

(assert (=> b!1746879 (= c!285045 ((_ is EmptyLang!4747) (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))))

(declare-fun b!1746880 () Bool)

(declare-fun res!785509 () Bool)

(assert (=> b!1746880 (=> (not res!785509) (not e!1117880))))

(assert (=> b!1746880 (= res!785509 (not call!110310))))

(declare-fun b!1746881 () Bool)

(declare-fun res!785515 () Bool)

(assert (=> b!1746881 (=> res!785515 e!1117874)))

(assert (=> b!1746881 (= res!785515 (not (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))

(declare-fun b!1746882 () Bool)

(assert (=> b!1746882 (= e!1117876 e!1117874)))

(declare-fun res!785510 () Bool)

(assert (=> b!1746882 (=> res!785510 e!1117874)))

(assert (=> b!1746882 (= res!785510 call!110310)))

(declare-fun b!1746883 () Bool)

(assert (=> b!1746883 (= e!1117878 (matchR!2221 (derivativeStep!1210 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1746884 () Bool)

(assert (=> b!1746884 (= e!1117880 (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) (c!284766 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))))

(declare-fun b!1746885 () Bool)

(declare-fun res!785514 () Bool)

(assert (=> b!1746885 (=> res!785514 e!1117875)))

(assert (=> b!1746885 (= res!785514 (not ((_ is ElementMatch!4747) (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))))

(assert (=> b!1746885 (= e!1117879 e!1117875)))

(declare-fun d!533930 () Bool)

(assert (=> d!533930 e!1117877))

(declare-fun c!285046 () Bool)

(assert (=> d!533930 (= c!285046 ((_ is EmptyExpr!4747) (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))))

(assert (=> d!533930 (= lt!673496 e!1117878)))

(declare-fun c!285044 () Bool)

(assert (=> d!533930 (= c!285044 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(assert (=> d!533930 (validRegex!1915 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))

(assert (=> d!533930 (= (matchR!2221 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 (_1!10817 lt!673096)))))) (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) lt!673496)))

(assert (= (and d!533930 c!285044) b!1746874))

(assert (= (and d!533930 (not c!285044)) b!1746883))

(assert (= (and d!533930 c!285046) b!1746872))

(assert (= (and d!533930 (not c!285046)) b!1746879))

(assert (= (and b!1746879 c!285045) b!1746873))

(assert (= (and b!1746879 (not c!285045)) b!1746885))

(assert (= (and b!1746885 (not res!785514)) b!1746878))

(assert (= (and b!1746878 res!785513) b!1746880))

(assert (= (and b!1746880 res!785509) b!1746876))

(assert (= (and b!1746876 res!785516) b!1746884))

(assert (= (and b!1746878 (not res!785512)) b!1746877))

(assert (= (and b!1746877 res!785511) b!1746882))

(assert (= (and b!1746882 (not res!785510)) b!1746881))

(assert (= (and b!1746881 (not res!785515)) b!1746875))

(assert (= (or b!1746872 b!1746882 b!1746880) bm!110305))

(assert (=> b!1746883 m!2157587))

(assert (=> b!1746883 m!2157719))

(assert (=> b!1746883 m!2157719))

(declare-fun m!2159123 () Bool)

(assert (=> b!1746883 m!2159123))

(assert (=> b!1746883 m!2157587))

(assert (=> b!1746883 m!2157723))

(assert (=> b!1746883 m!2159123))

(assert (=> b!1746883 m!2157723))

(declare-fun m!2159125 () Bool)

(assert (=> b!1746883 m!2159125))

(assert (=> bm!110305 m!2157587))

(assert (=> bm!110305 m!2157727))

(assert (=> b!1746876 m!2157587))

(assert (=> b!1746876 m!2157723))

(assert (=> b!1746876 m!2157723))

(assert (=> b!1746876 m!2157729))

(assert (=> b!1746881 m!2157587))

(assert (=> b!1746881 m!2157723))

(assert (=> b!1746881 m!2157723))

(assert (=> b!1746881 m!2157729))

(declare-fun m!2159127 () Bool)

(assert (=> b!1746874 m!2159127))

(assert (=> b!1746884 m!2157587))

(assert (=> b!1746884 m!2157719))

(assert (=> b!1746875 m!2157587))

(assert (=> b!1746875 m!2157719))

(assert (=> d!533930 m!2157587))

(assert (=> d!533930 m!2157727))

(declare-fun m!2159129 () Bool)

(assert (=> d!533930 m!2159129))

(assert (=> b!1745985 d!533930))

(assert (=> b!1745985 d!533424))

(declare-fun b!1746886 () Bool)

(declare-fun e!1117881 () Bool)

(declare-fun e!1117882 () Bool)

(assert (=> b!1746886 (= e!1117881 e!1117882)))

(declare-fun res!785521 () Bool)

(assert (=> b!1746886 (=> (not res!785521) (not e!1117882))))

(declare-fun lt!673497 () Option!3863)

(assert (=> b!1746886 (= res!785521 (isDefined!3206 lt!673497))))

(declare-fun b!1746887 () Bool)

(declare-fun res!785520 () Bool)

(assert (=> b!1746887 (=> (not res!785520) (not e!1117882))))

(assert (=> b!1746887 (= res!785520 (matchR!2221 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673497)))) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673497))))))))

(declare-fun call!110311 () Option!3863)

(declare-fun bm!110306 () Bool)

(assert (=> bm!110306 (= call!110311 (maxPrefixOneRule!974 thiss!24550 (h!24591 (t!162265 rules!3447)) lt!673098))))

(declare-fun b!1746888 () Bool)

(declare-fun e!1117883 () Option!3863)

(declare-fun lt!673498 () Option!3863)

(declare-fun lt!673499 () Option!3863)

(assert (=> b!1746888 (= e!1117883 (ite (and ((_ is None!3862) lt!673498) ((_ is None!3862) lt!673499)) None!3862 (ite ((_ is None!3862) lt!673499) lt!673498 (ite ((_ is None!3862) lt!673498) lt!673499 (ite (>= (size!15233 (_1!10817 (v!25301 lt!673498))) (size!15233 (_1!10817 (v!25301 lt!673499)))) lt!673498 lt!673499)))))))

(assert (=> b!1746888 (= lt!673498 call!110311)))

(assert (=> b!1746888 (= lt!673499 (maxPrefix!1602 thiss!24550 (t!162265 (t!162265 rules!3447)) lt!673098))))

(declare-fun b!1746889 () Bool)

(declare-fun res!785522 () Bool)

(assert (=> b!1746889 (=> (not res!785522) (not e!1117882))))

(assert (=> b!1746889 (= res!785522 (= (value!107114 (_1!10817 (get!5789 lt!673497))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673497)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673497)))))))))

(declare-fun d!533932 () Bool)

(assert (=> d!533932 e!1117881))

(declare-fun res!785523 () Bool)

(assert (=> d!533932 (=> res!785523 e!1117881)))

(assert (=> d!533932 (= res!785523 (isEmpty!12089 lt!673497))))

(assert (=> d!533932 (= lt!673497 e!1117883)))

(declare-fun c!285047 () Bool)

(assert (=> d!533932 (= c!285047 (and ((_ is Cons!19190) (t!162265 rules!3447)) ((_ is Nil!19190) (t!162265 (t!162265 rules!3447)))))))

(declare-fun lt!673500 () Unit!33261)

(declare-fun lt!673501 () Unit!33261)

(assert (=> d!533932 (= lt!673500 lt!673501)))

(assert (=> d!533932 (isPrefix!1660 lt!673098 lt!673098)))

(assert (=> d!533932 (= lt!673501 (lemmaIsPrefixRefl!1107 lt!673098 lt!673098))))

(assert (=> d!533932 (rulesValidInductive!1144 thiss!24550 (t!162265 rules!3447))))

(assert (=> d!533932 (= (maxPrefix!1602 thiss!24550 (t!162265 rules!3447) lt!673098) lt!673497)))

(declare-fun b!1746890 () Bool)

(declare-fun res!785518 () Bool)

(assert (=> b!1746890 (=> (not res!785518) (not e!1117882))))

(assert (=> b!1746890 (= res!785518 (= (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673497)))) (originalCharacters!4233 (_1!10817 (get!5789 lt!673497)))))))

(declare-fun b!1746891 () Bool)

(assert (=> b!1746891 (= e!1117883 call!110311)))

(declare-fun b!1746892 () Bool)

(assert (=> b!1746892 (= e!1117882 (contains!3443 (t!162265 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673497)))))))

(declare-fun b!1746893 () Bool)

(declare-fun res!785517 () Bool)

(assert (=> b!1746893 (=> (not res!785517) (not e!1117882))))

(assert (=> b!1746893 (= res!785517 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673497)))) (_2!10817 (get!5789 lt!673497))) lt!673098))))

(declare-fun b!1746894 () Bool)

(declare-fun res!785519 () Bool)

(assert (=> b!1746894 (=> (not res!785519) (not e!1117882))))

(assert (=> b!1746894 (= res!785519 (< (size!15236 (_2!10817 (get!5789 lt!673497))) (size!15236 lt!673098)))))

(assert (= (and d!533932 c!285047) b!1746891))

(assert (= (and d!533932 (not c!285047)) b!1746888))

(assert (= (or b!1746891 b!1746888) bm!110306))

(assert (= (and d!533932 (not res!785523)) b!1746886))

(assert (= (and b!1746886 res!785521) b!1746890))

(assert (= (and b!1746890 res!785518) b!1746894))

(assert (= (and b!1746894 res!785519) b!1746893))

(assert (= (and b!1746893 res!785517) b!1746889))

(assert (= (and b!1746889 res!785522) b!1746887))

(assert (= (and b!1746887 res!785520) b!1746892))

(declare-fun m!2159131 () Bool)

(assert (=> b!1746894 m!2159131))

(declare-fun m!2159133 () Bool)

(assert (=> b!1746894 m!2159133))

(assert (=> b!1746894 m!2157763))

(assert (=> b!1746887 m!2159131))

(declare-fun m!2159135 () Bool)

(assert (=> b!1746887 m!2159135))

(assert (=> b!1746887 m!2159135))

(declare-fun m!2159137 () Bool)

(assert (=> b!1746887 m!2159137))

(assert (=> b!1746887 m!2159137))

(declare-fun m!2159139 () Bool)

(assert (=> b!1746887 m!2159139))

(assert (=> b!1746890 m!2159131))

(assert (=> b!1746890 m!2159135))

(assert (=> b!1746890 m!2159135))

(assert (=> b!1746890 m!2159137))

(assert (=> b!1746892 m!2159131))

(declare-fun m!2159141 () Bool)

(assert (=> b!1746892 m!2159141))

(declare-fun m!2159143 () Bool)

(assert (=> d!533932 m!2159143))

(assert (=> d!533932 m!2157795))

(assert (=> d!533932 m!2157797))

(declare-fun m!2159145 () Bool)

(assert (=> d!533932 m!2159145))

(assert (=> b!1746893 m!2159131))

(assert (=> b!1746893 m!2159135))

(assert (=> b!1746893 m!2159135))

(assert (=> b!1746893 m!2159137))

(assert (=> b!1746893 m!2159137))

(declare-fun m!2159147 () Bool)

(assert (=> b!1746893 m!2159147))

(assert (=> b!1746889 m!2159131))

(declare-fun m!2159149 () Bool)

(assert (=> b!1746889 m!2159149))

(assert (=> b!1746889 m!2159149))

(declare-fun m!2159151 () Bool)

(assert (=> b!1746889 m!2159151))

(declare-fun m!2159153 () Bool)

(assert (=> bm!110306 m!2159153))

(declare-fun m!2159155 () Bool)

(assert (=> b!1746888 m!2159155))

(declare-fun m!2159157 () Bool)

(assert (=> b!1746886 m!2159157))

(assert (=> b!1745823 d!533932))

(declare-fun d!533934 () Bool)

(assert (=> d!533934 (= (isEmpty!12086 (tail!2609 lt!673090)) ((_ is Nil!19189) (tail!2609 lt!673090)))))

(assert (=> b!1745864 d!533934))

(declare-fun d!533936 () Bool)

(assert (=> d!533936 (= (tail!2609 lt!673090) (t!162264 lt!673090))))

(assert (=> b!1745864 d!533936))

(declare-fun b!1746895 () Bool)

(declare-fun e!1117885 () Bool)

(assert (=> b!1746895 (= e!1117885 (inv!15 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(declare-fun b!1746896 () Bool)

(declare-fun e!1117884 () Bool)

(declare-fun e!1117886 () Bool)

(assert (=> b!1746896 (= e!1117884 e!1117886)))

(declare-fun c!285048 () Bool)

(assert (=> b!1746896 (= c!285048 ((_ is IntegerValue!10528) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(declare-fun b!1746897 () Bool)

(assert (=> b!1746897 (= e!1117886 (inv!17 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(declare-fun d!533938 () Bool)

(declare-fun c!285049 () Bool)

(assert (=> d!533938 (= c!285049 ((_ is IntegerValue!10527) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(assert (=> d!533938 (= (inv!21 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))) e!1117884)))

(declare-fun b!1746898 () Bool)

(assert (=> b!1746898 (= e!1117884 (inv!16 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(declare-fun b!1746899 () Bool)

(declare-fun res!785524 () Bool)

(assert (=> b!1746899 (=> res!785524 e!1117885)))

(assert (=> b!1746899 (= res!785524 (not ((_ is IntegerValue!10529) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))))))))

(assert (=> b!1746899 (= e!1117886 e!1117885)))

(assert (= (and d!533938 c!285049) b!1746898))

(assert (= (and d!533938 (not c!285049)) b!1746896))

(assert (= (and b!1746896 c!285048) b!1746897))

(assert (= (and b!1746896 (not c!285048)) b!1746899))

(assert (= (and b!1746899 (not res!785524)) b!1746895))

(declare-fun m!2159159 () Bool)

(assert (=> b!1746895 m!2159159))

(declare-fun m!2159161 () Bool)

(assert (=> b!1746897 m!2159161))

(declare-fun m!2159163 () Bool)

(assert (=> b!1746898 m!2159163))

(assert (=> tb!104445 d!533938))

(declare-fun d!533940 () Bool)

(declare-fun charsToInt!0 (List!19258) (_ BitVec 32))

(assert (=> d!533940 (= (inv!16 (value!107114 token!523)) (= (charsToInt!0 (text!25010 (value!107114 token!523))) (value!107105 (value!107114 token!523))))))

(declare-fun bs!403318 () Bool)

(assert (= bs!403318 d!533940))

(declare-fun m!2159165 () Bool)

(assert (=> bs!403318 m!2159165))

(assert (=> b!1745850 d!533940))

(assert (=> d!533462 d!533460))

(assert (=> d!533462 d!533528))

(declare-fun d!533942 () Bool)

(declare-fun dynLambda!9096 (Int BalanceConc!12710) Bool)

(assert (=> d!533942 (dynLambda!9096 lambda!69716 lt!673085)))

(declare-fun lt!673504 () Unit!33261)

(declare-fun choose!10769 (Int BalanceConc!12710) Unit!33261)

(assert (=> d!533942 (= lt!673504 (choose!10769 lambda!69716 lt!673085))))

(assert (=> d!533942 (Forall!788 lambda!69716)))

(assert (=> d!533942 (= (ForallOf!293 lambda!69716 lt!673085) lt!673504)))

(declare-fun b_lambda!56027 () Bool)

(assert (=> (not b_lambda!56027) (not d!533942)))

(declare-fun bs!403319 () Bool)

(assert (= bs!403319 d!533942))

(declare-fun m!2159167 () Bool)

(assert (=> bs!403319 m!2159167))

(declare-fun m!2159169 () Bool)

(assert (=> bs!403319 m!2159169))

(declare-fun m!2159171 () Bool)

(assert (=> bs!403319 m!2159171))

(assert (=> d!533462 d!533942))

(declare-fun d!533944 () Bool)

(assert (=> d!533944 (= (list!7768 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))) (list!7771 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))))))

(declare-fun bs!403320 () Bool)

(assert (= bs!403320 d!533944))

(declare-fun m!2159173 () Bool)

(assert (=> bs!403320 m!2159173))

(assert (=> b!1745705 d!533944))

(declare-fun b!1746900 () Bool)

(declare-fun res!785529 () Bool)

(declare-fun e!1117890 () Bool)

(assert (=> b!1746900 (=> res!785529 e!1117890)))

(assert (=> b!1746900 (= res!785529 (not ((_ is Concat!8257) (regex!3419 rule!422))))))

(declare-fun e!1117893 () Bool)

(assert (=> b!1746900 (= e!1117893 e!1117890)))

(declare-fun b!1746901 () Bool)

(declare-fun res!785526 () Bool)

(declare-fun e!1117892 () Bool)

(assert (=> b!1746901 (=> (not res!785526) (not e!1117892))))

(declare-fun call!110312 () Bool)

(assert (=> b!1746901 (= res!785526 call!110312)))

(assert (=> b!1746901 (= e!1117893 e!1117892)))

(declare-fun bm!110307 () Bool)

(declare-fun call!110313 () Bool)

(assert (=> bm!110307 (= call!110312 call!110313)))

(declare-fun c!285051 () Bool)

(declare-fun c!285050 () Bool)

(declare-fun bm!110308 () Bool)

(assert (=> bm!110308 (= call!110313 (validRegex!1915 (ite c!285050 (reg!5076 (regex!3419 rule!422)) (ite c!285051 (regOne!10007 (regex!3419 rule!422)) (regTwo!10006 (regex!3419 rule!422))))))))

(declare-fun b!1746902 () Bool)

(declare-fun e!1117889 () Bool)

(declare-fun e!1117888 () Bool)

(assert (=> b!1746902 (= e!1117889 e!1117888)))

(declare-fun res!785527 () Bool)

(assert (=> b!1746902 (= res!785527 (not (nullable!1441 (reg!5076 (regex!3419 rule!422)))))))

(assert (=> b!1746902 (=> (not res!785527) (not e!1117888))))

(declare-fun b!1746904 () Bool)

(declare-fun call!110314 () Bool)

(assert (=> b!1746904 (= e!1117892 call!110314)))

(declare-fun b!1746905 () Bool)

(declare-fun e!1117887 () Bool)

(assert (=> b!1746905 (= e!1117890 e!1117887)))

(declare-fun res!785528 () Bool)

(assert (=> b!1746905 (=> (not res!785528) (not e!1117887))))

(assert (=> b!1746905 (= res!785528 call!110314)))

(declare-fun b!1746906 () Bool)

(assert (=> b!1746906 (= e!1117887 call!110312)))

(declare-fun b!1746907 () Bool)

(declare-fun e!1117891 () Bool)

(assert (=> b!1746907 (= e!1117891 e!1117889)))

(assert (=> b!1746907 (= c!285050 ((_ is Star!4747) (regex!3419 rule!422)))))

(declare-fun bm!110309 () Bool)

(assert (=> bm!110309 (= call!110314 (validRegex!1915 (ite c!285051 (regTwo!10007 (regex!3419 rule!422)) (regOne!10006 (regex!3419 rule!422)))))))

(declare-fun b!1746908 () Bool)

(assert (=> b!1746908 (= e!1117888 call!110313)))

(declare-fun b!1746903 () Bool)

(assert (=> b!1746903 (= e!1117889 e!1117893)))

(assert (=> b!1746903 (= c!285051 ((_ is Union!4747) (regex!3419 rule!422)))))

(declare-fun d!533946 () Bool)

(declare-fun res!785525 () Bool)

(assert (=> d!533946 (=> res!785525 e!1117891)))

(assert (=> d!533946 (= res!785525 ((_ is ElementMatch!4747) (regex!3419 rule!422)))))

(assert (=> d!533946 (= (validRegex!1915 (regex!3419 rule!422)) e!1117891)))

(assert (= (and d!533946 (not res!785525)) b!1746907))

(assert (= (and b!1746907 c!285050) b!1746902))

(assert (= (and b!1746907 (not c!285050)) b!1746903))

(assert (= (and b!1746902 res!785527) b!1746908))

(assert (= (and b!1746903 c!285051) b!1746901))

(assert (= (and b!1746903 (not c!285051)) b!1746900))

(assert (= (and b!1746901 res!785526) b!1746904))

(assert (= (and b!1746900 (not res!785529)) b!1746905))

(assert (= (and b!1746905 res!785528) b!1746906))

(assert (= (or b!1746901 b!1746906) bm!110307))

(assert (= (or b!1746904 b!1746905) bm!110309))

(assert (= (or b!1746908 bm!110307) bm!110308))

(declare-fun m!2159175 () Bool)

(assert (=> bm!110308 m!2159175))

(declare-fun m!2159177 () Bool)

(assert (=> b!1746902 m!2159177))

(declare-fun m!2159179 () Bool)

(assert (=> bm!110309 m!2159179))

(assert (=> d!533418 d!533946))

(declare-fun d!533948 () Bool)

(declare-fun lt!673505 () Int)

(assert (=> d!533948 (>= lt!673505 0)))

(declare-fun e!1117894 () Int)

(assert (=> d!533948 (= lt!673505 e!1117894)))

(declare-fun c!285052 () Bool)

(assert (=> d!533948 (= c!285052 ((_ is Nil!19189) (_2!10817 (get!5789 lt!673250))))))

(assert (=> d!533948 (= (size!15236 (_2!10817 (get!5789 lt!673250))) lt!673505)))

(declare-fun b!1746909 () Bool)

(assert (=> b!1746909 (= e!1117894 0)))

(declare-fun b!1746910 () Bool)

(assert (=> b!1746910 (= e!1117894 (+ 1 (size!15236 (t!162264 (_2!10817 (get!5789 lt!673250))))))))

(assert (= (and d!533948 c!285052) b!1746909))

(assert (= (and d!533948 (not c!285052)) b!1746910))

(declare-fun m!2159181 () Bool)

(assert (=> b!1746910 m!2159181))

(assert (=> b!1745995 d!533948))

(declare-fun d!533950 () Bool)

(assert (=> d!533950 (= (get!5789 lt!673250) (v!25301 lt!673250))))

(assert (=> b!1745995 d!533950))

(declare-fun d!533952 () Bool)

(declare-fun lt!673506 () Int)

(assert (=> d!533952 (>= lt!673506 0)))

(declare-fun e!1117895 () Int)

(assert (=> d!533952 (= lt!673506 e!1117895)))

(declare-fun c!285053 () Bool)

(assert (=> d!533952 (= c!285053 ((_ is Nil!19189) lt!673091))))

(assert (=> d!533952 (= (size!15236 lt!673091) lt!673506)))

(declare-fun b!1746911 () Bool)

(assert (=> b!1746911 (= e!1117895 0)))

(declare-fun b!1746912 () Bool)

(assert (=> b!1746912 (= e!1117895 (+ 1 (size!15236 (t!162264 lt!673091))))))

(assert (= (and d!533952 c!285053) b!1746911))

(assert (= (and d!533952 (not c!285053)) b!1746912))

(declare-fun m!2159183 () Bool)

(assert (=> b!1746912 m!2159183))

(assert (=> b!1745995 d!533952))

(declare-fun d!533954 () Bool)

(declare-fun lt!673507 () BalanceConc!12710)

(assert (=> d!533954 (= (list!7768 lt!673507) (originalCharacters!4233 lt!673320))))

(assert (=> d!533954 (= lt!673507 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 lt!673320))) (value!107114 lt!673320)))))

(assert (=> d!533954 (= (charsOf!2068 lt!673320) lt!673507)))

(declare-fun b_lambda!56029 () Bool)

(assert (=> (not b_lambda!56029) (not d!533954)))

(declare-fun tb!104523 () Bool)

(declare-fun t!162361 () Bool)

(assert (=> (and b!1745577 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 lt!673320)))) t!162361) tb!104523))

(declare-fun b!1746913 () Bool)

(declare-fun e!1117896 () Bool)

(declare-fun tp!496925 () Bool)

(assert (=> b!1746913 (= e!1117896 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 lt!673320))) (value!107114 lt!673320)))) tp!496925))))

(declare-fun result!125738 () Bool)

(assert (=> tb!104523 (= result!125738 (and (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 lt!673320))) (value!107114 lt!673320))) e!1117896))))

(assert (= tb!104523 b!1746913))

(declare-fun m!2159185 () Bool)

(assert (=> b!1746913 m!2159185))

(declare-fun m!2159187 () Bool)

(assert (=> tb!104523 m!2159187))

(assert (=> d!533954 t!162361))

(declare-fun b_and!130113 () Bool)

(assert (= b_and!130097 (and (=> t!162361 result!125738) b_and!130113)))

(declare-fun t!162363 () Bool)

(declare-fun tb!104525 () Bool)

(assert (=> (and b!1745592 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 lt!673320)))) t!162363) tb!104525))

(declare-fun result!125740 () Bool)

(assert (= result!125740 result!125738))

(assert (=> d!533954 t!162363))

(declare-fun b_and!130115 () Bool)

(assert (= b_and!130099 (and (=> t!162363 result!125740) b_and!130115)))

(declare-fun t!162365 () Bool)

(declare-fun tb!104527 () Bool)

(assert (=> (and b!1745601 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 lt!673320)))) t!162365) tb!104527))

(declare-fun result!125742 () Bool)

(assert (= result!125742 result!125738))

(assert (=> d!533954 t!162365))

(declare-fun b_and!130117 () Bool)

(assert (= b_and!130101 (and (=> t!162365 result!125742) b_and!130117)))

(declare-fun t!162367 () Bool)

(declare-fun tb!104529 () Bool)

(assert (=> (and b!1746215 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 lt!673320)))) t!162367) tb!104529))

(declare-fun result!125744 () Bool)

(assert (= result!125744 result!125738))

(assert (=> d!533954 t!162367))

(declare-fun b_and!130119 () Bool)

(assert (= b_and!130103 (and (=> t!162367 result!125744) b_and!130119)))

(declare-fun m!2159189 () Bool)

(assert (=> d!533954 m!2159189))

(declare-fun m!2159191 () Bool)

(assert (=> d!533954 m!2159191))

(assert (=> b!1746162 d!533954))

(assert (=> b!1746162 d!533712))

(declare-fun b!1746914 () Bool)

(declare-fun e!1117900 () Bool)

(declare-fun lt!673508 () Bool)

(declare-fun call!110315 () Bool)

(assert (=> b!1746914 (= e!1117900 (= lt!673508 call!110315))))

(declare-fun b!1746915 () Bool)

(declare-fun e!1117902 () Bool)

(assert (=> b!1746915 (= e!1117902 (not lt!673508))))

(declare-fun e!1117901 () Bool)

(declare-fun b!1746916 () Bool)

(assert (=> b!1746916 (= e!1117901 (nullable!1441 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))))))))

(declare-fun bm!110310 () Bool)

(assert (=> bm!110310 (= call!110315 (isEmpty!12086 (list!7768 (charsOf!2068 lt!673320))))))

(declare-fun b!1746917 () Bool)

(declare-fun e!1117897 () Bool)

(assert (=> b!1746917 (= e!1117897 (not (= (head!4010 (list!7768 (charsOf!2068 lt!673320))) (c!284766 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))))))))))

(declare-fun b!1746918 () Bool)

(declare-fun res!785537 () Bool)

(declare-fun e!1117903 () Bool)

(assert (=> b!1746918 (=> (not res!785537) (not e!1117903))))

(assert (=> b!1746918 (= res!785537 (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 lt!673320)))))))

(declare-fun b!1746919 () Bool)

(declare-fun e!1117898 () Bool)

(declare-fun e!1117899 () Bool)

(assert (=> b!1746919 (= e!1117898 e!1117899)))

(declare-fun res!785532 () Bool)

(assert (=> b!1746919 (=> (not res!785532) (not e!1117899))))

(assert (=> b!1746919 (= res!785532 (not lt!673508))))

(declare-fun b!1746920 () Bool)

(declare-fun res!785533 () Bool)

(assert (=> b!1746920 (=> res!785533 e!1117898)))

(assert (=> b!1746920 (= res!785533 e!1117903)))

(declare-fun res!785534 () Bool)

(assert (=> b!1746920 (=> (not res!785534) (not e!1117903))))

(assert (=> b!1746920 (= res!785534 lt!673508)))

(declare-fun b!1746921 () Bool)

(assert (=> b!1746921 (= e!1117900 e!1117902)))

(declare-fun c!285055 () Bool)

(assert (=> b!1746921 (= c!285055 ((_ is EmptyLang!4747) (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))))))))

(declare-fun b!1746922 () Bool)

(declare-fun res!785530 () Bool)

(assert (=> b!1746922 (=> (not res!785530) (not e!1117903))))

(assert (=> b!1746922 (= res!785530 (not call!110315))))

(declare-fun b!1746923 () Bool)

(declare-fun res!785536 () Bool)

(assert (=> b!1746923 (=> res!785536 e!1117897)))

(assert (=> b!1746923 (= res!785536 (not (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 lt!673320))))))))

(declare-fun b!1746924 () Bool)

(assert (=> b!1746924 (= e!1117899 e!1117897)))

(declare-fun res!785531 () Bool)

(assert (=> b!1746924 (=> res!785531 e!1117897)))

(assert (=> b!1746924 (= res!785531 call!110315)))

(declare-fun b!1746925 () Bool)

(assert (=> b!1746925 (= e!1117901 (matchR!2221 (derivativeStep!1210 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))) (head!4010 (list!7768 (charsOf!2068 lt!673320)))) (tail!2609 (list!7768 (charsOf!2068 lt!673320)))))))

(declare-fun b!1746926 () Bool)

(assert (=> b!1746926 (= e!1117903 (= (head!4010 (list!7768 (charsOf!2068 lt!673320))) (c!284766 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))))))))

(declare-fun b!1746927 () Bool)

(declare-fun res!785535 () Bool)

(assert (=> b!1746927 (=> res!785535 e!1117898)))

(assert (=> b!1746927 (= res!785535 (not ((_ is ElementMatch!4747) (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))))))))

(assert (=> b!1746927 (= e!1117902 e!1117898)))

(declare-fun d!533956 () Bool)

(assert (=> d!533956 e!1117900))

(declare-fun c!285056 () Bool)

(assert (=> d!533956 (= c!285056 ((_ is EmptyExpr!4747) (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))))))))

(assert (=> d!533956 (= lt!673508 e!1117901)))

(declare-fun c!285054 () Bool)

(assert (=> d!533956 (= c!285054 (isEmpty!12086 (list!7768 (charsOf!2068 lt!673320))))))

(assert (=> d!533956 (validRegex!1915 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))))))

(assert (=> d!533956 (= (matchR!2221 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))) (list!7768 (charsOf!2068 lt!673320))) lt!673508)))

(assert (= (and d!533956 c!285054) b!1746916))

(assert (= (and d!533956 (not c!285054)) b!1746925))

(assert (= (and d!533956 c!285056) b!1746914))

(assert (= (and d!533956 (not c!285056)) b!1746921))

(assert (= (and b!1746921 c!285055) b!1746915))

(assert (= (and b!1746921 (not c!285055)) b!1746927))

(assert (= (and b!1746927 (not res!785535)) b!1746920))

(assert (= (and b!1746920 res!785534) b!1746922))

(assert (= (and b!1746922 res!785530) b!1746918))

(assert (= (and b!1746918 res!785537) b!1746926))

(assert (= (and b!1746920 (not res!785533)) b!1746919))

(assert (= (and b!1746919 res!785532) b!1746924))

(assert (= (and b!1746924 (not res!785531)) b!1746923))

(assert (= (and b!1746923 (not res!785536)) b!1746917))

(assert (= (or b!1746914 b!1746924 b!1746922) bm!110310))

(assert (=> b!1746925 m!2158257))

(declare-fun m!2159193 () Bool)

(assert (=> b!1746925 m!2159193))

(assert (=> b!1746925 m!2159193))

(declare-fun m!2159195 () Bool)

(assert (=> b!1746925 m!2159195))

(assert (=> b!1746925 m!2158257))

(declare-fun m!2159197 () Bool)

(assert (=> b!1746925 m!2159197))

(assert (=> b!1746925 m!2159195))

(assert (=> b!1746925 m!2159197))

(declare-fun m!2159199 () Bool)

(assert (=> b!1746925 m!2159199))

(assert (=> bm!110310 m!2158257))

(declare-fun m!2159201 () Bool)

(assert (=> bm!110310 m!2159201))

(assert (=> b!1746918 m!2158257))

(assert (=> b!1746918 m!2159197))

(assert (=> b!1746918 m!2159197))

(declare-fun m!2159203 () Bool)

(assert (=> b!1746918 m!2159203))

(assert (=> b!1746923 m!2158257))

(assert (=> b!1746923 m!2159197))

(assert (=> b!1746923 m!2159197))

(assert (=> b!1746923 m!2159203))

(declare-fun m!2159205 () Bool)

(assert (=> b!1746916 m!2159205))

(assert (=> b!1746926 m!2158257))

(assert (=> b!1746926 m!2159193))

(assert (=> b!1746917 m!2158257))

(assert (=> b!1746917 m!2159193))

(assert (=> d!533956 m!2158257))

(assert (=> d!533956 m!2159201))

(declare-fun m!2159207 () Bool)

(assert (=> d!533956 m!2159207))

(assert (=> b!1746162 d!533956))

(assert (=> b!1746162 d!533710))

(declare-fun d!533958 () Bool)

(assert (=> d!533958 (= (list!7768 (charsOf!2068 lt!673320)) (list!7771 (c!284767 (charsOf!2068 lt!673320))))))

(declare-fun bs!403321 () Bool)

(assert (= bs!403321 d!533958))

(declare-fun m!2159209 () Bool)

(assert (=> bs!403321 m!2159209))

(assert (=> b!1746162 d!533958))

(declare-fun d!533960 () Bool)

(assert (=> d!533960 true))

(assert (=> d!533960 true))

(declare-fun res!785540 () Bool)

(assert (=> d!533960 (= (choose!10762 lambda!69710) res!785540)))

(assert (=> d!533506 d!533960))

(declare-fun d!533962 () Bool)

(assert (=> d!533962 (= (isEmpty!12086 (originalCharacters!4233 token!523)) ((_ is Nil!19189) (originalCharacters!4233 token!523)))))

(assert (=> d!533402 d!533962))

(declare-fun d!533964 () Bool)

(assert (=> d!533964 (= (isEmpty!12086 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))) ((_ is Nil!19189) (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))

(assert (=> d!533490 d!533964))

(declare-fun d!533966 () Bool)

(assert (=> d!533966 (= (isEmpty!12089 lt!673174) (not ((_ is Some!3862) lt!673174)))))

(assert (=> d!533432 d!533966))

(declare-fun b!1746929 () Bool)

(declare-fun res!785543 () Bool)

(declare-fun e!1117904 () Bool)

(assert (=> b!1746929 (=> (not res!785543) (not e!1117904))))

(assert (=> b!1746929 (= res!785543 (= (head!4010 lt!673098) (head!4010 lt!673098)))))

(declare-fun b!1746930 () Bool)

(assert (=> b!1746930 (= e!1117904 (isPrefix!1660 (tail!2609 lt!673098) (tail!2609 lt!673098)))))

(declare-fun b!1746931 () Bool)

(declare-fun e!1117906 () Bool)

(assert (=> b!1746931 (= e!1117906 (>= (size!15236 lt!673098) (size!15236 lt!673098)))))

(declare-fun d!533968 () Bool)

(assert (=> d!533968 e!1117906))

(declare-fun res!785541 () Bool)

(assert (=> d!533968 (=> res!785541 e!1117906)))

(declare-fun lt!673509 () Bool)

(assert (=> d!533968 (= res!785541 (not lt!673509))))

(declare-fun e!1117905 () Bool)

(assert (=> d!533968 (= lt!673509 e!1117905)))

(declare-fun res!785542 () Bool)

(assert (=> d!533968 (=> res!785542 e!1117905)))

(assert (=> d!533968 (= res!785542 ((_ is Nil!19189) lt!673098))))

(assert (=> d!533968 (= (isPrefix!1660 lt!673098 lt!673098) lt!673509)))

(declare-fun b!1746928 () Bool)

(assert (=> b!1746928 (= e!1117905 e!1117904)))

(declare-fun res!785544 () Bool)

(assert (=> b!1746928 (=> (not res!785544) (not e!1117904))))

(assert (=> b!1746928 (= res!785544 (not ((_ is Nil!19189) lt!673098)))))

(assert (= (and d!533968 (not res!785542)) b!1746928))

(assert (= (and b!1746928 res!785544) b!1746929))

(assert (= (and b!1746929 res!785543) b!1746930))

(assert (= (and d!533968 (not res!785541)) b!1746931))

(assert (=> b!1746929 m!2157701))

(assert (=> b!1746929 m!2157701))

(assert (=> b!1746930 m!2157705))

(assert (=> b!1746930 m!2157705))

(assert (=> b!1746930 m!2157705))

(assert (=> b!1746930 m!2157705))

(declare-fun m!2159211 () Bool)

(assert (=> b!1746930 m!2159211))

(assert (=> b!1746931 m!2157763))

(assert (=> b!1746931 m!2157763))

(assert (=> d!533432 d!533968))

(declare-fun d!533970 () Bool)

(assert (=> d!533970 (isPrefix!1660 lt!673098 lt!673098)))

(declare-fun lt!673512 () Unit!33261)

(declare-fun choose!10770 (List!19259 List!19259) Unit!33261)

(assert (=> d!533970 (= lt!673512 (choose!10770 lt!673098 lt!673098))))

(assert (=> d!533970 (= (lemmaIsPrefixRefl!1107 lt!673098 lt!673098) lt!673512)))

(declare-fun bs!403322 () Bool)

(assert (= bs!403322 d!533970))

(assert (=> bs!403322 m!2157795))

(declare-fun m!2159213 () Bool)

(assert (=> bs!403322 m!2159213))

(assert (=> d!533432 d!533970))

(declare-fun d!533972 () Bool)

(assert (=> d!533972 true))

(declare-fun lt!673515 () Bool)

(declare-fun lambda!69762 () Int)

(declare-fun forall!4268 (List!19260 Int) Bool)

(assert (=> d!533972 (= lt!673515 (forall!4268 rules!3447 lambda!69762))))

(declare-fun e!1117911 () Bool)

(assert (=> d!533972 (= lt!673515 e!1117911)))

(declare-fun res!785550 () Bool)

(assert (=> d!533972 (=> res!785550 e!1117911)))

(assert (=> d!533972 (= res!785550 (not ((_ is Cons!19190) rules!3447)))))

(assert (=> d!533972 (= (rulesValidInductive!1144 thiss!24550 rules!3447) lt!673515)))

(declare-fun b!1746936 () Bool)

(declare-fun e!1117912 () Bool)

(assert (=> b!1746936 (= e!1117911 e!1117912)))

(declare-fun res!785549 () Bool)

(assert (=> b!1746936 (=> (not res!785549) (not e!1117912))))

(assert (=> b!1746936 (= res!785549 (ruleValid!918 thiss!24550 (h!24591 rules!3447)))))

(declare-fun b!1746937 () Bool)

(assert (=> b!1746937 (= e!1117912 (rulesValidInductive!1144 thiss!24550 (t!162265 rules!3447)))))

(assert (= (and d!533972 (not res!785550)) b!1746936))

(assert (= (and b!1746936 res!785549) b!1746937))

(declare-fun m!2159215 () Bool)

(assert (=> d!533972 m!2159215))

(assert (=> b!1746936 m!2159109))

(assert (=> b!1746937 m!2159145))

(assert (=> d!533432 d!533972))

(declare-fun b!1746941 () Bool)

(declare-fun e!1117913 () List!19259)

(declare-fun e!1117914 () List!19259)

(assert (=> b!1746941 (= e!1117913 e!1117914)))

(declare-fun c!285058 () Bool)

(assert (=> b!1746941 (= c!285058 ((_ is Leaf!9313) (c!284767 lt!673085)))))

(declare-fun d!533974 () Bool)

(declare-fun c!285057 () Bool)

(assert (=> d!533974 (= c!285057 ((_ is Empty!6383) (c!284767 lt!673085)))))

(assert (=> d!533974 (= (list!7771 (c!284767 lt!673085)) e!1117913)))

(declare-fun b!1746940 () Bool)

(assert (=> b!1746940 (= e!1117913 Nil!19189)))

(declare-fun b!1746942 () Bool)

(assert (=> b!1746942 (= e!1117914 (list!7774 (xs!9259 (c!284767 lt!673085))))))

(declare-fun b!1746943 () Bool)

(assert (=> b!1746943 (= e!1117914 (++!5244 (list!7771 (left!15342 (c!284767 lt!673085))) (list!7771 (right!15672 (c!284767 lt!673085)))))))

(assert (= (and d!533974 c!285057) b!1746940))

(assert (= (and d!533974 (not c!285057)) b!1746941))

(assert (= (and b!1746941 c!285058) b!1746942))

(assert (= (and b!1746941 (not c!285058)) b!1746943))

(declare-fun m!2159217 () Bool)

(assert (=> b!1746942 m!2159217))

(declare-fun m!2159219 () Bool)

(assert (=> b!1746943 m!2159219))

(declare-fun m!2159221 () Bool)

(assert (=> b!1746943 m!2159221))

(assert (=> b!1746943 m!2159219))

(assert (=> b!1746943 m!2159221))

(declare-fun m!2159223 () Bool)

(assert (=> b!1746943 m!2159223))

(assert (=> d!533528 d!533974))

(assert (=> b!1746169 d!533952))

(declare-fun d!533976 () Bool)

(declare-fun lt!673516 () Int)

(assert (=> d!533976 (>= lt!673516 0)))

(declare-fun e!1117915 () Int)

(assert (=> d!533976 (= lt!673516 e!1117915)))

(declare-fun c!285059 () Bool)

(assert (=> d!533976 (= c!285059 ((_ is Nil!19189) lt!673090))))

(assert (=> d!533976 (= (size!15236 lt!673090) lt!673516)))

(declare-fun b!1746944 () Bool)

(assert (=> b!1746944 (= e!1117915 0)))

(declare-fun b!1746945 () Bool)

(assert (=> b!1746945 (= e!1117915 (+ 1 (size!15236 (t!162264 lt!673090))))))

(assert (= (and d!533976 c!285059) b!1746944))

(assert (= (and d!533976 (not c!285059)) b!1746945))

(assert (=> b!1746945 m!2158759))

(assert (=> b!1746169 d!533976))

(declare-fun d!533978 () Bool)

(assert (=> d!533978 (= (inv!24864 (tag!3765 (h!24591 (t!162265 rules!3447)))) (= (mod (str.len (value!107113 (tag!3765 (h!24591 (t!162265 rules!3447))))) 2) 0))))

(assert (=> b!1746214 d!533978))

(declare-fun d!533980 () Bool)

(declare-fun res!785551 () Bool)

(declare-fun e!1117916 () Bool)

(assert (=> d!533980 (=> (not res!785551) (not e!1117916))))

(assert (=> d!533980 (= res!785551 (semiInverseModEq!1355 (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447))))))))

(assert (=> d!533980 (= (inv!24870 (transformation!3419 (h!24591 (t!162265 rules!3447)))) e!1117916)))

(declare-fun b!1746946 () Bool)

(assert (=> b!1746946 (= e!1117916 (equivClasses!1296 (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447))))))))

(assert (= (and d!533980 res!785551) b!1746946))

(declare-fun m!2159225 () Bool)

(assert (=> d!533980 m!2159225))

(declare-fun m!2159227 () Bool)

(assert (=> b!1746946 m!2159227))

(assert (=> b!1746214 d!533980))

(assert (=> d!533420 d!533418))

(declare-fun d!533982 () Bool)

(assert (=> d!533982 (ruleValid!918 thiss!24550 rule!422)))

(assert (=> d!533982 true))

(declare-fun _$65!933 () Unit!33261)

(assert (=> d!533982 (= (choose!10759 thiss!24550 rule!422 rules!3447) _$65!933)))

(declare-fun bs!403323 () Bool)

(assert (= bs!403323 d!533982))

(assert (=> bs!403323 m!2157509))

(assert (=> d!533420 d!533982))

(assert (=> d!533420 d!533504))

(declare-fun d!533984 () Bool)

(assert (=> d!533984 (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) (h!24590 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(assert (=> b!1745783 d!533984))

(declare-fun d!533986 () Bool)

(assert (=> d!533986 (= (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))) (list!7771 (c!284767 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))))))

(declare-fun bs!403324 () Bool)

(assert (= bs!403324 d!533986))

(declare-fun m!2159229 () Bool)

(assert (=> bs!403324 m!2159229))

(assert (=> b!1745991 d!533986))

(declare-fun d!533988 () Bool)

(declare-fun lt!673517 () BalanceConc!12710)

(assert (=> d!533988 (= (list!7768 lt!673517) (originalCharacters!4233 (_1!10817 (get!5789 lt!673250))))))

(assert (=> d!533988 (= lt!673517 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))) (value!107114 (_1!10817 (get!5789 lt!673250)))))))

(assert (=> d!533988 (= (charsOf!2068 (_1!10817 (get!5789 lt!673250))) lt!673517)))

(declare-fun b_lambda!56031 () Bool)

(assert (=> (not b_lambda!56031) (not d!533988)))

(declare-fun tb!104531 () Bool)

(declare-fun t!162369 () Bool)

(assert (=> (and b!1745577 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162369) tb!104531))

(declare-fun b!1746947 () Bool)

(declare-fun e!1117917 () Bool)

(declare-fun tp!496926 () Bool)

(assert (=> b!1746947 (= e!1117917 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))) (value!107114 (_1!10817 (get!5789 lt!673250)))))) tp!496926))))

(declare-fun result!125746 () Bool)

(assert (=> tb!104531 (= result!125746 (and (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))) (value!107114 (_1!10817 (get!5789 lt!673250))))) e!1117917))))

(assert (= tb!104531 b!1746947))

(declare-fun m!2159231 () Bool)

(assert (=> b!1746947 m!2159231))

(declare-fun m!2159233 () Bool)

(assert (=> tb!104531 m!2159233))

(assert (=> d!533988 t!162369))

(declare-fun b_and!130121 () Bool)

(assert (= b_and!130113 (and (=> t!162369 result!125746) b_and!130121)))

(declare-fun t!162371 () Bool)

(declare-fun tb!104533 () Bool)

(assert (=> (and b!1745592 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162371) tb!104533))

(declare-fun result!125748 () Bool)

(assert (= result!125748 result!125746))

(assert (=> d!533988 t!162371))

(declare-fun b_and!130123 () Bool)

(assert (= b_and!130115 (and (=> t!162371 result!125748) b_and!130123)))

(declare-fun t!162373 () Bool)

(declare-fun tb!104535 () Bool)

(assert (=> (and b!1745601 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162373) tb!104535))

(declare-fun result!125750 () Bool)

(assert (= result!125750 result!125746))

(assert (=> d!533988 t!162373))

(declare-fun b_and!130125 () Bool)

(assert (= b_and!130117 (and (=> t!162373 result!125750) b_and!130125)))

(declare-fun tb!104537 () Bool)

(declare-fun t!162375 () Bool)

(assert (=> (and b!1746215 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162375) tb!104537))

(declare-fun result!125752 () Bool)

(assert (= result!125752 result!125746))

(assert (=> d!533988 t!162375))

(declare-fun b_and!130127 () Bool)

(assert (= b_and!130119 (and (=> t!162375 result!125752) b_and!130127)))

(declare-fun m!2159235 () Bool)

(assert (=> d!533988 m!2159235))

(declare-fun m!2159237 () Bool)

(assert (=> d!533988 m!2159237))

(assert (=> b!1745991 d!533988))

(assert (=> b!1745991 d!533950))

(declare-fun d!533990 () Bool)

(declare-fun lt!673518 () Bool)

(assert (=> d!533990 (= lt!673518 (select (content!2759 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673174)))))))

(declare-fun e!1117919 () Bool)

(assert (=> d!533990 (= lt!673518 e!1117919)))

(declare-fun res!785553 () Bool)

(assert (=> d!533990 (=> (not res!785553) (not e!1117919))))

(assert (=> d!533990 (= res!785553 ((_ is Cons!19190) rules!3447))))

(assert (=> d!533990 (= (contains!3443 rules!3447 (rule!5423 (_1!10817 (get!5789 lt!673174)))) lt!673518)))

(declare-fun b!1746948 () Bool)

(declare-fun e!1117918 () Bool)

(assert (=> b!1746948 (= e!1117919 e!1117918)))

(declare-fun res!785552 () Bool)

(assert (=> b!1746948 (=> res!785552 e!1117918)))

(assert (=> b!1746948 (= res!785552 (= (h!24591 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673174)))))))

(declare-fun b!1746949 () Bool)

(assert (=> b!1746949 (= e!1117918 (contains!3443 (t!162265 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673174)))))))

(assert (= (and d!533990 res!785553) b!1746948))

(assert (= (and b!1746948 (not res!785552)) b!1746949))

(assert (=> d!533990 m!2157991))

(declare-fun m!2159239 () Bool)

(assert (=> d!533990 m!2159239))

(declare-fun m!2159241 () Bool)

(assert (=> b!1746949 m!2159241))

(assert (=> b!1745830 d!533990))

(assert (=> b!1745830 d!533800))

(declare-fun d!533992 () Bool)

(assert (=> d!533992 (= (inv!16 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)) (= (charsToInt!0 (text!25010 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) (value!107105 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))

(declare-fun bs!403325 () Bool)

(assert (= bs!403325 d!533992))

(declare-fun m!2159243 () Bool)

(assert (=> bs!403325 m!2159243))

(assert (=> b!1745888 d!533992))

(declare-fun d!533994 () Bool)

(assert (=> d!533994 (= (isEmpty!12086 lt!673098) ((_ is Nil!19189) lt!673098))))

(assert (=> bm!110235 d!533994))

(declare-fun d!533996 () Bool)

(assert (=> d!533996 (= (isEmpty!12090 lt!673346) (not ((_ is Some!3861) lt!673346)))))

(assert (=> d!533604 d!533996))

(assert (=> d!533604 d!533414))

(declare-fun b!1747120 () Bool)

(declare-fun e!1118021 () Bool)

(declare-fun lt!673559 () tuple2!18834)

(assert (=> b!1747120 (= e!1118021 (= (_2!10819 lt!673559) (seqFromList!2389 lt!673098)))))

(declare-fun d!533998 () Bool)

(declare-fun e!1118022 () Bool)

(assert (=> d!533998 e!1118022))

(declare-fun res!785652 () Bool)

(assert (=> d!533998 (=> (not res!785652) (not e!1118022))))

(assert (=> d!533998 (= res!785652 e!1118021)))

(declare-fun c!285098 () Bool)

(declare-fun size!15243 (BalanceConc!12714) Int)

(assert (=> d!533998 (= c!285098 (> (size!15243 (_1!10819 lt!673559)) 0))))

(declare-fun lexTailRecV2!643 (LexerInterface!3048 List!19260 BalanceConc!12710 BalanceConc!12710 BalanceConc!12710 BalanceConc!12714) tuple2!18834)

(assert (=> d!533998 (= lt!673559 (lexTailRecV2!643 thiss!24550 rules!3447 (seqFromList!2389 lt!673098) (BalanceConc!12711 Empty!6383) (seqFromList!2389 lt!673098) (BalanceConc!12715 Empty!6385)))))

(assert (=> d!533998 (= (lex!1430 thiss!24550 rules!3447 (seqFromList!2389 lt!673098)) lt!673559)))

(declare-fun b!1747121 () Bool)

(declare-fun e!1118020 () Bool)

(declare-fun isEmpty!12094 (BalanceConc!12714) Bool)

(assert (=> b!1747121 (= e!1118020 (not (isEmpty!12094 (_1!10819 lt!673559))))))

(declare-fun b!1747122 () Bool)

(assert (=> b!1747122 (= e!1118021 e!1118020)))

(declare-fun res!785651 () Bool)

(assert (=> b!1747122 (= res!785651 (< (size!15234 (_2!10819 lt!673559)) (size!15234 (seqFromList!2389 lt!673098))))))

(assert (=> b!1747122 (=> (not res!785651) (not e!1118020))))

(declare-fun b!1747123 () Bool)

(declare-fun res!785653 () Bool)

(assert (=> b!1747123 (=> (not res!785653) (not e!1118022))))

(declare-datatypes ((tuple2!18840 0))(
  ( (tuple2!18841 (_1!10822 List!19266) (_2!10822 List!19259)) )
))
(declare-fun lexList!920 (LexerInterface!3048 List!19260 List!19259) tuple2!18840)

(assert (=> b!1747123 (= res!785653 (= (list!7772 (_1!10819 lt!673559)) (_1!10822 (lexList!920 thiss!24550 rules!3447 (list!7768 (seqFromList!2389 lt!673098))))))))

(declare-fun b!1747124 () Bool)

(assert (=> b!1747124 (= e!1118022 (= (list!7768 (_2!10819 lt!673559)) (_2!10822 (lexList!920 thiss!24550 rules!3447 (list!7768 (seqFromList!2389 lt!673098))))))))

(assert (= (and d!533998 c!285098) b!1747122))

(assert (= (and d!533998 (not c!285098)) b!1747120))

(assert (= (and b!1747122 res!785651) b!1747121))

(assert (= (and d!533998 res!785652) b!1747123))

(assert (= (and b!1747123 res!785653) b!1747124))

(declare-fun m!2159539 () Bool)

(assert (=> d!533998 m!2159539))

(assert (=> d!533998 m!2158273))

(assert (=> d!533998 m!2158273))

(declare-fun m!2159541 () Bool)

(assert (=> d!533998 m!2159541))

(declare-fun m!2159543 () Bool)

(assert (=> b!1747121 m!2159543))

(declare-fun m!2159547 () Bool)

(assert (=> b!1747122 m!2159547))

(assert (=> b!1747122 m!2158273))

(declare-fun m!2159551 () Bool)

(assert (=> b!1747122 m!2159551))

(declare-fun m!2159553 () Bool)

(assert (=> b!1747124 m!2159553))

(assert (=> b!1747124 m!2158273))

(declare-fun m!2159555 () Bool)

(assert (=> b!1747124 m!2159555))

(assert (=> b!1747124 m!2159555))

(declare-fun m!2159557 () Bool)

(assert (=> b!1747124 m!2159557))

(declare-fun m!2159559 () Bool)

(assert (=> b!1747123 m!2159559))

(assert (=> b!1747123 m!2158273))

(assert (=> b!1747123 m!2159555))

(assert (=> b!1747123 m!2159555))

(assert (=> b!1747123 m!2159557))

(assert (=> d!533536 d!533998))

(assert (=> d!533536 d!533954))

(declare-fun b!1747145 () Bool)

(declare-fun res!785665 () Bool)

(declare-fun e!1118032 () Bool)

(assert (=> b!1747145 (=> (not res!785665) (not e!1118032))))

(assert (=> b!1747145 (= res!785665 (= (head!4010 lt!673326) (head!4010 (++!5244 lt!673098 suffix!1421))))))

(declare-fun b!1747146 () Bool)

(assert (=> b!1747146 (= e!1118032 (isPrefix!1660 (tail!2609 lt!673326) (tail!2609 (++!5244 lt!673098 suffix!1421))))))

(declare-fun e!1118034 () Bool)

(declare-fun b!1747147 () Bool)

(assert (=> b!1747147 (= e!1118034 (>= (size!15236 (++!5244 lt!673098 suffix!1421)) (size!15236 lt!673326)))))

(declare-fun d!534128 () Bool)

(assert (=> d!534128 e!1118034))

(declare-fun res!785663 () Bool)

(assert (=> d!534128 (=> res!785663 e!1118034)))

(declare-fun lt!673567 () Bool)

(assert (=> d!534128 (= res!785663 (not lt!673567))))

(declare-fun e!1118033 () Bool)

(assert (=> d!534128 (= lt!673567 e!1118033)))

(declare-fun res!785664 () Bool)

(assert (=> d!534128 (=> res!785664 e!1118033)))

(assert (=> d!534128 (= res!785664 ((_ is Nil!19189) lt!673326))))

(assert (=> d!534128 (= (isPrefix!1660 lt!673326 (++!5244 lt!673098 suffix!1421)) lt!673567)))

(declare-fun b!1747144 () Bool)

(assert (=> b!1747144 (= e!1118033 e!1118032)))

(declare-fun res!785666 () Bool)

(assert (=> b!1747144 (=> (not res!785666) (not e!1118032))))

(assert (=> b!1747144 (= res!785666 (not ((_ is Nil!19189) (++!5244 lt!673098 suffix!1421))))))

(assert (= (and d!534128 (not res!785664)) b!1747144))

(assert (= (and b!1747144 res!785666) b!1747145))

(assert (= (and b!1747145 res!785665) b!1747146))

(assert (= (and d!534128 (not res!785663)) b!1747147))

(declare-fun m!2159565 () Bool)

(assert (=> b!1747145 m!2159565))

(assert (=> b!1747145 m!2157537))

(declare-fun m!2159567 () Bool)

(assert (=> b!1747145 m!2159567))

(declare-fun m!2159569 () Bool)

(assert (=> b!1747146 m!2159569))

(assert (=> b!1747146 m!2157537))

(declare-fun m!2159571 () Bool)

(assert (=> b!1747146 m!2159571))

(assert (=> b!1747146 m!2159569))

(assert (=> b!1747146 m!2159571))

(declare-fun m!2159573 () Bool)

(assert (=> b!1747146 m!2159573))

(assert (=> b!1747147 m!2157537))

(declare-fun m!2159575 () Bool)

(assert (=> b!1747147 m!2159575))

(declare-fun m!2159577 () Bool)

(assert (=> b!1747147 m!2159577))

(assert (=> d!533536 d!534128))

(declare-fun d!534130 () Bool)

(declare-fun e!1118035 () Bool)

(assert (=> d!534130 e!1118035))

(declare-fun res!785667 () Bool)

(assert (=> d!534130 (=> (not res!785667) (not e!1118035))))

(assert (=> d!534130 (= res!785667 (isDefined!3205 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))))))

(declare-fun lt!673568 () Unit!33261)

(assert (=> d!534130 (= lt!673568 (choose!10763 thiss!24550 rules!3447 lt!673098 lt!673320))))

(assert (=> d!534130 (rulesInvariant!2717 thiss!24550 rules!3447)))

(assert (=> d!534130 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!469 thiss!24550 rules!3447 lt!673098 lt!673320) lt!673568)))

(declare-fun b!1747148 () Bool)

(declare-fun res!785668 () Bool)

(assert (=> b!1747148 (=> (not res!785668) (not e!1118035))))

(assert (=> b!1747148 (= res!785668 (matchR!2221 (regex!3419 (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))) (list!7768 (charsOf!2068 lt!673320))))))

(declare-fun b!1747149 () Bool)

(assert (=> b!1747149 (= e!1118035 (= (rule!5423 lt!673320) (get!5790 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))))))

(assert (= (and d!534130 res!785667) b!1747148))

(assert (= (and b!1747148 res!785668) b!1747149))

(assert (=> d!534130 m!2158245))

(assert (=> d!534130 m!2158245))

(assert (=> d!534130 m!2158281))

(declare-fun m!2159579 () Bool)

(assert (=> d!534130 m!2159579))

(assert (=> d!534130 m!2157607))

(assert (=> b!1747148 m!2158245))

(assert (=> b!1747148 m!2158245))

(assert (=> b!1747148 m!2158247))

(assert (=> b!1747148 m!2158249))

(assert (=> b!1747148 m!2158249))

(assert (=> b!1747148 m!2158257))

(assert (=> b!1747148 m!2158257))

(assert (=> b!1747148 m!2158263))

(assert (=> b!1747149 m!2158245))

(assert (=> b!1747149 m!2158245))

(assert (=> b!1747149 m!2158247))

(assert (=> d!533536 d!534130))

(declare-fun d!534132 () Bool)

(assert (=> d!534132 (= (isDefined!3205 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320)))) (not (isEmpty!12090 (getRuleFromTag!469 thiss!24550 rules!3447 (tag!3765 (rule!5423 lt!673320))))))))

(declare-fun bs!403363 () Bool)

(assert (= bs!403363 d!534132))

(assert (=> bs!403363 m!2158245))

(declare-fun m!2159591 () Bool)

(assert (=> bs!403363 m!2159591))

(assert (=> d!533536 d!534132))

(declare-fun d!534134 () Bool)

(assert (=> d!534134 (= (isDefined!3206 (maxPrefix!1602 thiss!24550 rules!3447 (++!5244 lt!673098 suffix!1421))) (not (isEmpty!12089 (maxPrefix!1602 thiss!24550 rules!3447 (++!5244 lt!673098 suffix!1421)))))))

(declare-fun bs!403364 () Bool)

(assert (= bs!403364 d!534134))

(assert (=> bs!403364 m!2158277))

(assert (=> bs!403364 m!2158291))

(assert (=> d!533536 d!534134))

(assert (=> d!533536 d!533712))

(declare-fun d!534136 () Bool)

(assert (=> d!534136 (isPrefix!1660 lt!673326 (++!5244 lt!673098 suffix!1421))))

(declare-fun lt!673572 () Unit!33261)

(declare-fun choose!10772 (List!19259 List!19259 List!19259) Unit!33261)

(assert (=> d!534136 (= lt!673572 (choose!10772 lt!673326 lt!673098 suffix!1421))))

(assert (=> d!534136 (isPrefix!1660 lt!673326 lt!673098)))

(assert (=> d!534136 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!291 lt!673326 lt!673098 suffix!1421) lt!673572)))

(declare-fun bs!403365 () Bool)

(assert (= bs!403365 d!534136))

(assert (=> bs!403365 m!2157537))

(assert (=> bs!403365 m!2157537))

(assert (=> bs!403365 m!2158289))

(declare-fun m!2159633 () Bool)

(assert (=> bs!403365 m!2159633))

(declare-fun m!2159635 () Bool)

(assert (=> bs!403365 m!2159635))

(assert (=> d!533536 d!534136))

(declare-fun b!1747164 () Bool)

(declare-fun e!1118043 () Bool)

(declare-fun e!1118044 () Bool)

(assert (=> b!1747164 (= e!1118043 e!1118044)))

(declare-fun res!785681 () Bool)

(assert (=> b!1747164 (=> (not res!785681) (not e!1118044))))

(declare-fun lt!673573 () Option!3863)

(assert (=> b!1747164 (= res!785681 (isDefined!3206 lt!673573))))

(declare-fun b!1747165 () Bool)

(declare-fun res!785680 () Bool)

(assert (=> b!1747165 (=> (not res!785680) (not e!1118044))))

(assert (=> b!1747165 (= res!785680 (matchR!2221 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673573)))) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673573))))))))

(declare-fun call!110327 () Option!3863)

(declare-fun bm!110322 () Bool)

(assert (=> bm!110322 (= call!110327 (maxPrefixOneRule!974 thiss!24550 (h!24591 rules!3447) (++!5244 lt!673098 suffix!1421)))))

(declare-fun b!1747166 () Bool)

(declare-fun e!1118045 () Option!3863)

(declare-fun lt!673574 () Option!3863)

(declare-fun lt!673575 () Option!3863)

(assert (=> b!1747166 (= e!1118045 (ite (and ((_ is None!3862) lt!673574) ((_ is None!3862) lt!673575)) None!3862 (ite ((_ is None!3862) lt!673575) lt!673574 (ite ((_ is None!3862) lt!673574) lt!673575 (ite (>= (size!15233 (_1!10817 (v!25301 lt!673574))) (size!15233 (_1!10817 (v!25301 lt!673575)))) lt!673574 lt!673575)))))))

(assert (=> b!1747166 (= lt!673574 call!110327)))

(assert (=> b!1747166 (= lt!673575 (maxPrefix!1602 thiss!24550 (t!162265 rules!3447) (++!5244 lt!673098 suffix!1421)))))

(declare-fun b!1747167 () Bool)

(declare-fun res!785682 () Bool)

(assert (=> b!1747167 (=> (not res!785682) (not e!1118044))))

(assert (=> b!1747167 (= res!785682 (= (value!107114 (_1!10817 (get!5789 lt!673573))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673573)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673573)))))))))

(declare-fun d!534140 () Bool)

(assert (=> d!534140 e!1118043))

(declare-fun res!785683 () Bool)

(assert (=> d!534140 (=> res!785683 e!1118043)))

(assert (=> d!534140 (= res!785683 (isEmpty!12089 lt!673573))))

(assert (=> d!534140 (= lt!673573 e!1118045)))

(declare-fun c!285107 () Bool)

(assert (=> d!534140 (= c!285107 (and ((_ is Cons!19190) rules!3447) ((_ is Nil!19190) (t!162265 rules!3447))))))

(declare-fun lt!673576 () Unit!33261)

(declare-fun lt!673577 () Unit!33261)

(assert (=> d!534140 (= lt!673576 lt!673577)))

(assert (=> d!534140 (isPrefix!1660 (++!5244 lt!673098 suffix!1421) (++!5244 lt!673098 suffix!1421))))

(assert (=> d!534140 (= lt!673577 (lemmaIsPrefixRefl!1107 (++!5244 lt!673098 suffix!1421) (++!5244 lt!673098 suffix!1421)))))

(assert (=> d!534140 (rulesValidInductive!1144 thiss!24550 rules!3447)))

(assert (=> d!534140 (= (maxPrefix!1602 thiss!24550 rules!3447 (++!5244 lt!673098 suffix!1421)) lt!673573)))

(declare-fun b!1747168 () Bool)

(declare-fun res!785678 () Bool)

(assert (=> b!1747168 (=> (not res!785678) (not e!1118044))))

(assert (=> b!1747168 (= res!785678 (= (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673573)))) (originalCharacters!4233 (_1!10817 (get!5789 lt!673573)))))))

(declare-fun b!1747169 () Bool)

(assert (=> b!1747169 (= e!1118045 call!110327)))

(declare-fun b!1747170 () Bool)

(assert (=> b!1747170 (= e!1118044 (contains!3443 rules!3447 (rule!5423 (_1!10817 (get!5789 lt!673573)))))))

(declare-fun b!1747171 () Bool)

(declare-fun res!785677 () Bool)

(assert (=> b!1747171 (=> (not res!785677) (not e!1118044))))

(assert (=> b!1747171 (= res!785677 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673573)))) (_2!10817 (get!5789 lt!673573))) (++!5244 lt!673098 suffix!1421)))))

(declare-fun b!1747172 () Bool)

(declare-fun res!785679 () Bool)

(assert (=> b!1747172 (=> (not res!785679) (not e!1118044))))

(assert (=> b!1747172 (= res!785679 (< (size!15236 (_2!10817 (get!5789 lt!673573))) (size!15236 (++!5244 lt!673098 suffix!1421))))))

(assert (= (and d!534140 c!285107) b!1747169))

(assert (= (and d!534140 (not c!285107)) b!1747166))

(assert (= (or b!1747169 b!1747166) bm!110322))

(assert (= (and d!534140 (not res!785683)) b!1747164))

(assert (= (and b!1747164 res!785681) b!1747168))

(assert (= (and b!1747168 res!785678) b!1747172))

(assert (= (and b!1747172 res!785679) b!1747171))

(assert (= (and b!1747171 res!785677) b!1747167))

(assert (= (and b!1747167 res!785682) b!1747165))

(assert (= (and b!1747165 res!785680) b!1747170))

(declare-fun m!2159649 () Bool)

(assert (=> b!1747172 m!2159649))

(declare-fun m!2159651 () Bool)

(assert (=> b!1747172 m!2159651))

(assert (=> b!1747172 m!2157537))

(assert (=> b!1747172 m!2159575))

(assert (=> b!1747165 m!2159649))

(declare-fun m!2159653 () Bool)

(assert (=> b!1747165 m!2159653))

(assert (=> b!1747165 m!2159653))

(declare-fun m!2159657 () Bool)

(assert (=> b!1747165 m!2159657))

(assert (=> b!1747165 m!2159657))

(declare-fun m!2159659 () Bool)

(assert (=> b!1747165 m!2159659))

(assert (=> b!1747168 m!2159649))

(assert (=> b!1747168 m!2159653))

(assert (=> b!1747168 m!2159653))

(assert (=> b!1747168 m!2159657))

(assert (=> b!1747170 m!2159649))

(declare-fun m!2159661 () Bool)

(assert (=> b!1747170 m!2159661))

(declare-fun m!2159663 () Bool)

(assert (=> d!534140 m!2159663))

(assert (=> d!534140 m!2157537))

(assert (=> d!534140 m!2157537))

(declare-fun m!2159665 () Bool)

(assert (=> d!534140 m!2159665))

(assert (=> d!534140 m!2157537))

(assert (=> d!534140 m!2157537))

(declare-fun m!2159667 () Bool)

(assert (=> d!534140 m!2159667))

(assert (=> d!534140 m!2157799))

(assert (=> b!1747171 m!2159649))

(assert (=> b!1747171 m!2159653))

(assert (=> b!1747171 m!2159653))

(assert (=> b!1747171 m!2159657))

(assert (=> b!1747171 m!2159657))

(declare-fun m!2159669 () Bool)

(assert (=> b!1747171 m!2159669))

(assert (=> b!1747167 m!2159649))

(declare-fun m!2159671 () Bool)

(assert (=> b!1747167 m!2159671))

(assert (=> b!1747167 m!2159671))

(declare-fun m!2159673 () Bool)

(assert (=> b!1747167 m!2159673))

(assert (=> bm!110322 m!2157537))

(declare-fun m!2159675 () Bool)

(assert (=> bm!110322 m!2159675))

(assert (=> b!1747166 m!2157537))

(declare-fun m!2159677 () Bool)

(assert (=> b!1747166 m!2159677))

(declare-fun m!2159679 () Bool)

(assert (=> b!1747164 m!2159679))

(assert (=> d!533536 d!534140))

(declare-fun d!534150 () Bool)

(assert (=> d!534150 (= (seqFromList!2389 lt!673098) (fromListB!1090 lt!673098))))

(declare-fun bs!403367 () Bool)

(assert (= bs!403367 d!534150))

(declare-fun m!2159681 () Bool)

(assert (=> bs!403367 m!2159681))

(assert (=> d!533536 d!534150))

(declare-fun d!534152 () Bool)

(assert (=> d!534152 (isPrefix!1660 lt!673328 (++!5244 lt!673328 lt!673325))))

(declare-fun lt!673580 () Unit!33261)

(assert (=> d!534152 (= lt!673580 (choose!10764 lt!673328 lt!673325))))

(assert (=> d!534152 (= (lemmaConcatTwoListThenFirstIsPrefix!1170 lt!673328 lt!673325) lt!673580)))

(declare-fun bs!403368 () Bool)

(assert (= bs!403368 d!534152))

(assert (=> bs!403368 m!2158271))

(assert (=> bs!403368 m!2158271))

(assert (=> bs!403368 m!2158287))

(declare-fun m!2159683 () Bool)

(assert (=> bs!403368 m!2159683))

(assert (=> d!533536 d!534152))

(assert (=> d!533536 d!533432))

(assert (=> d!533536 d!533958))

(declare-fun d!534154 () Bool)

(assert (=> d!534154 (= (isEmpty!12089 (maxPrefix!1602 thiss!24550 rules!3447 (++!5244 lt!673098 suffix!1421))) (not ((_ is Some!3862) (maxPrefix!1602 thiss!24550 rules!3447 (++!5244 lt!673098 suffix!1421)))))))

(assert (=> d!533536 d!534154))

(assert (=> d!533536 d!533608))

(declare-fun d!534156 () Bool)

(assert (=> d!534156 (= (head!4012 (list!7772 (_1!10819 (lex!1430 thiss!24550 rules!3447 (seqFromList!2389 lt!673098))))) (h!24597 (list!7772 (_1!10819 (lex!1430 thiss!24550 rules!3447 (seqFromList!2389 lt!673098))))))))

(assert (=> d!533536 d!534156))

(assert (=> d!533536 d!533474))

(declare-fun b!1747212 () Bool)

(declare-fun res!785690 () Bool)

(declare-fun e!1118061 () Bool)

(assert (=> b!1747212 (=> (not res!785690) (not e!1118061))))

(assert (=> b!1747212 (= res!785690 (= (head!4010 lt!673328) (head!4010 (++!5244 lt!673328 lt!673325))))))

(declare-fun b!1747214 () Bool)

(assert (=> b!1747214 (= e!1118061 (isPrefix!1660 (tail!2609 lt!673328) (tail!2609 (++!5244 lt!673328 lt!673325))))))

(declare-fun b!1747216 () Bool)

(declare-fun e!1118064 () Bool)

(assert (=> b!1747216 (= e!1118064 (>= (size!15236 (++!5244 lt!673328 lt!673325)) (size!15236 lt!673328)))))

(declare-fun d!534158 () Bool)

(assert (=> d!534158 e!1118064))

(declare-fun res!785688 () Bool)

(assert (=> d!534158 (=> res!785688 e!1118064)))

(declare-fun lt!673581 () Bool)

(assert (=> d!534158 (= res!785688 (not lt!673581))))

(declare-fun e!1118063 () Bool)

(assert (=> d!534158 (= lt!673581 e!1118063)))

(declare-fun res!785689 () Bool)

(assert (=> d!534158 (=> res!785689 e!1118063)))

(assert (=> d!534158 (= res!785689 ((_ is Nil!19189) lt!673328))))

(assert (=> d!534158 (= (isPrefix!1660 lt!673328 (++!5244 lt!673328 lt!673325)) lt!673581)))

(declare-fun b!1747210 () Bool)

(assert (=> b!1747210 (= e!1118063 e!1118061)))

(declare-fun res!785691 () Bool)

(assert (=> b!1747210 (=> (not res!785691) (not e!1118061))))

(assert (=> b!1747210 (= res!785691 (not ((_ is Nil!19189) (++!5244 lt!673328 lt!673325))))))

(assert (= (and d!534158 (not res!785689)) b!1747210))

(assert (= (and b!1747210 res!785691) b!1747212))

(assert (= (and b!1747212 res!785690) b!1747214))

(assert (= (and d!534158 (not res!785688)) b!1747216))

(declare-fun m!2159685 () Bool)

(assert (=> b!1747212 m!2159685))

(assert (=> b!1747212 m!2158271))

(declare-fun m!2159687 () Bool)

(assert (=> b!1747212 m!2159687))

(declare-fun m!2159689 () Bool)

(assert (=> b!1747214 m!2159689))

(assert (=> b!1747214 m!2158271))

(declare-fun m!2159691 () Bool)

(assert (=> b!1747214 m!2159691))

(assert (=> b!1747214 m!2159689))

(assert (=> b!1747214 m!2159691))

(declare-fun m!2159693 () Bool)

(assert (=> b!1747214 m!2159693))

(assert (=> b!1747216 m!2158271))

(declare-fun m!2159695 () Bool)

(assert (=> b!1747216 m!2159695))

(declare-fun m!2159697 () Bool)

(assert (=> b!1747216 m!2159697))

(assert (=> d!533536 d!534158))

(declare-fun d!534160 () Bool)

(assert (=> d!534160 (= (get!5789 (maxPrefix!1602 thiss!24550 rules!3447 lt!673098)) (v!25301 (maxPrefix!1602 thiss!24550 rules!3447 lt!673098)))))

(assert (=> d!533536 d!534160))

(declare-fun d!534162 () Bool)

(declare-fun list!7775 (Conc!6385) List!19266)

(assert (=> d!534162 (= (list!7772 (_1!10819 (lex!1430 thiss!24550 rules!3447 (seqFromList!2389 lt!673098)))) (list!7775 (c!284867 (_1!10819 (lex!1430 thiss!24550 rules!3447 (seqFromList!2389 lt!673098))))))))

(declare-fun bs!403369 () Bool)

(assert (= bs!403369 d!534162))

(declare-fun m!2159699 () Bool)

(assert (=> bs!403369 m!2159699))

(assert (=> d!533536 d!534162))

(declare-fun d!534164 () Bool)

(declare-fun e!1118069 () Bool)

(assert (=> d!534164 e!1118069))

(declare-fun res!785693 () Bool)

(assert (=> d!534164 (=> (not res!785693) (not e!1118069))))

(declare-fun lt!673582 () List!19259)

(assert (=> d!534164 (= res!785693 (= (content!2758 lt!673582) ((_ map or) (content!2758 lt!673328) (content!2758 lt!673325))))))

(declare-fun e!1118070 () List!19259)

(assert (=> d!534164 (= lt!673582 e!1118070)))

(declare-fun c!285113 () Bool)

(assert (=> d!534164 (= c!285113 ((_ is Nil!19189) lt!673328))))

(assert (=> d!534164 (= (++!5244 lt!673328 lt!673325) lt!673582)))

(declare-fun b!1747220 () Bool)

(assert (=> b!1747220 (= e!1118070 lt!673325)))

(declare-fun b!1747221 () Bool)

(assert (=> b!1747221 (= e!1118070 (Cons!19189 (h!24590 lt!673328) (++!5244 (t!162264 lt!673328) lt!673325)))))

(declare-fun b!1747223 () Bool)

(assert (=> b!1747223 (= e!1118069 (or (not (= lt!673325 Nil!19189)) (= lt!673582 lt!673328)))))

(declare-fun b!1747222 () Bool)

(declare-fun res!785692 () Bool)

(assert (=> b!1747222 (=> (not res!785692) (not e!1118069))))

(assert (=> b!1747222 (= res!785692 (= (size!15236 lt!673582) (+ (size!15236 lt!673328) (size!15236 lt!673325))))))

(assert (= (and d!534164 c!285113) b!1747220))

(assert (= (and d!534164 (not c!285113)) b!1747221))

(assert (= (and d!534164 res!785693) b!1747222))

(assert (= (and b!1747222 res!785692) b!1747223))

(declare-fun m!2159701 () Bool)

(assert (=> d!534164 m!2159701))

(declare-fun m!2159703 () Bool)

(assert (=> d!534164 m!2159703))

(declare-fun m!2159705 () Bool)

(assert (=> d!534164 m!2159705))

(declare-fun m!2159707 () Bool)

(assert (=> b!1747221 m!2159707))

(declare-fun m!2159709 () Bool)

(assert (=> b!1747222 m!2159709))

(assert (=> b!1747222 m!2159697))

(declare-fun m!2159711 () Bool)

(assert (=> b!1747222 m!2159711))

(assert (=> d!533536 d!534164))

(declare-fun d!534166 () Bool)

(declare-fun lt!673583 () Bool)

(assert (=> d!534166 (= lt!673583 (select (content!2759 (t!162265 rules!3447)) rule!422))))

(declare-fun e!1118072 () Bool)

(assert (=> d!534166 (= lt!673583 e!1118072)))

(declare-fun res!785695 () Bool)

(assert (=> d!534166 (=> (not res!785695) (not e!1118072))))

(assert (=> d!534166 (= res!785695 ((_ is Cons!19190) (t!162265 rules!3447)))))

(assert (=> d!534166 (= (contains!3443 (t!162265 rules!3447) rule!422) lt!673583)))

(declare-fun b!1747224 () Bool)

(declare-fun e!1118071 () Bool)

(assert (=> b!1747224 (= e!1118072 e!1118071)))

(declare-fun res!785694 () Bool)

(assert (=> b!1747224 (=> res!785694 e!1118071)))

(assert (=> b!1747224 (= res!785694 (= (h!24591 (t!162265 rules!3447)) rule!422))))

(declare-fun b!1747225 () Bool)

(assert (=> b!1747225 (= e!1118071 (contains!3443 (t!162265 (t!162265 rules!3447)) rule!422))))

(assert (= (and d!534166 res!785695) b!1747224))

(assert (= (and b!1747224 (not res!785694)) b!1747225))

(declare-fun m!2159715 () Bool)

(assert (=> d!534166 m!2159715))

(declare-fun m!2159719 () Bool)

(assert (=> d!534166 m!2159719))

(declare-fun m!2159721 () Bool)

(assert (=> b!1747225 m!2159721))

(assert (=> b!1745950 d!534166))

(declare-fun d!534168 () Bool)

(declare-fun res!785696 () Bool)

(declare-fun e!1118075 () Bool)

(assert (=> d!534168 (=> (not res!785696) (not e!1118075))))

(assert (=> d!534168 (= res!785696 (rulesValid!1280 thiss!24550 (t!162265 rules!3447)))))

(assert (=> d!534168 (= (rulesInvariant!2717 thiss!24550 (t!162265 rules!3447)) e!1118075)))

(declare-fun b!1747229 () Bool)

(assert (=> b!1747229 (= e!1118075 (noDuplicateTag!1280 thiss!24550 (t!162265 rules!3447) Nil!19193))))

(assert (= (and d!534168 res!785696) b!1747229))

(declare-fun m!2159723 () Bool)

(assert (=> d!534168 m!2159723))

(declare-fun m!2159725 () Bool)

(assert (=> b!1747229 m!2159725))

(assert (=> b!1746190 d!534168))

(declare-fun d!534170 () Bool)

(assert (=> d!534170 (rulesInvariant!2717 thiss!24550 (t!162265 rules!3447))))

(declare-fun lt!673586 () Unit!33261)

(declare-fun choose!10773 (LexerInterface!3048 Rule!6638 List!19260) Unit!33261)

(assert (=> d!534170 (= lt!673586 (choose!10773 thiss!24550 (h!24591 rules!3447) (t!162265 rules!3447)))))

(assert (=> d!534170 (rulesInvariant!2717 thiss!24550 (Cons!19190 (h!24591 rules!3447) (t!162265 rules!3447)))))

(assert (=> d!534170 (= (lemmaInvariantOnRulesThenOnTail!170 thiss!24550 (h!24591 rules!3447) (t!162265 rules!3447)) lt!673586)))

(declare-fun bs!403370 () Bool)

(assert (= bs!403370 d!534170))

(assert (=> bs!403370 m!2158323))

(declare-fun m!2159757 () Bool)

(assert (=> bs!403370 m!2159757))

(declare-fun m!2159759 () Bool)

(assert (=> bs!403370 m!2159759))

(assert (=> b!1746190 d!534170))

(declare-fun b!1747279 () Bool)

(declare-fun e!1118097 () Option!3862)

(declare-fun e!1118095 () Option!3862)

(assert (=> b!1747279 (= e!1118097 e!1118095)))

(declare-fun c!285115 () Bool)

(assert (=> b!1747279 (= c!285115 (and ((_ is Cons!19190) (t!162265 rules!3447)) (not (= (tag!3765 (h!24591 (t!162265 rules!3447))) (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))))

(declare-fun b!1747280 () Bool)

(assert (=> b!1747280 (= e!1118095 None!3861)))

(declare-fun b!1747281 () Bool)

(assert (=> b!1747281 (= e!1118097 (Some!3861 (h!24591 (t!162265 rules!3447))))))

(declare-fun b!1747282 () Bool)

(declare-fun e!1118096 () Bool)

(declare-fun e!1118094 () Bool)

(assert (=> b!1747282 (= e!1118096 e!1118094)))

(declare-fun res!785697 () Bool)

(assert (=> b!1747282 (=> (not res!785697) (not e!1118094))))

(declare-fun lt!673589 () Option!3862)

(assert (=> b!1747282 (= res!785697 (contains!3443 (t!162265 rules!3447) (get!5790 lt!673589)))))

(declare-fun b!1747283 () Bool)

(declare-fun lt!673588 () Unit!33261)

(declare-fun lt!673587 () Unit!33261)

(assert (=> b!1747283 (= lt!673588 lt!673587)))

(assert (=> b!1747283 (rulesInvariant!2717 thiss!24550 (t!162265 (t!162265 rules!3447)))))

(assert (=> b!1747283 (= lt!673587 (lemmaInvariantOnRulesThenOnTail!170 thiss!24550 (h!24591 (t!162265 rules!3447)) (t!162265 (t!162265 rules!3447))))))

(assert (=> b!1747283 (= e!1118095 (getRuleFromTag!469 thiss!24550 (t!162265 (t!162265 rules!3447)) (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun b!1747284 () Bool)

(assert (=> b!1747284 (= e!1118094 (= (tag!3765 (get!5790 lt!673589)) (tag!3765 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun d!534172 () Bool)

(assert (=> d!534172 e!1118096))

(declare-fun res!785698 () Bool)

(assert (=> d!534172 (=> res!785698 e!1118096)))

(assert (=> d!534172 (= res!785698 (isEmpty!12090 lt!673589))))

(assert (=> d!534172 (= lt!673589 e!1118097)))

(declare-fun c!285114 () Bool)

(assert (=> d!534172 (= c!285114 (and ((_ is Cons!19190) (t!162265 rules!3447)) (= (tag!3765 (h!24591 (t!162265 rules!3447))) (tag!3765 (rule!5423 (_1!10817 lt!673096))))))))

(assert (=> d!534172 (rulesInvariant!2717 thiss!24550 (t!162265 rules!3447))))

(assert (=> d!534172 (= (getRuleFromTag!469 thiss!24550 (t!162265 rules!3447) (tag!3765 (rule!5423 (_1!10817 lt!673096)))) lt!673589)))

(assert (= (and d!534172 c!285114) b!1747281))

(assert (= (and d!534172 (not c!285114)) b!1747279))

(assert (= (and b!1747279 c!285115) b!1747283))

(assert (= (and b!1747279 (not c!285115)) b!1747280))

(assert (= (and d!534172 (not res!785698)) b!1747282))

(assert (= (and b!1747282 res!785697) b!1747284))

(declare-fun m!2159761 () Bool)

(assert (=> b!1747282 m!2159761))

(assert (=> b!1747282 m!2159761))

(declare-fun m!2159763 () Bool)

(assert (=> b!1747282 m!2159763))

(declare-fun m!2159765 () Bool)

(assert (=> b!1747283 m!2159765))

(declare-fun m!2159767 () Bool)

(assert (=> b!1747283 m!2159767))

(declare-fun m!2159769 () Bool)

(assert (=> b!1747283 m!2159769))

(assert (=> b!1747284 m!2159761))

(declare-fun m!2159771 () Bool)

(assert (=> d!534172 m!2159771))

(assert (=> d!534172 m!2158323))

(assert (=> b!1746190 d!534172))

(declare-fun d!534174 () Bool)

(declare-fun res!785706 () Bool)

(declare-fun e!1118103 () Bool)

(assert (=> d!534174 (=> (not res!785706) (not e!1118103))))

(assert (=> d!534174 (= res!785706 (= (csize!12996 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) (+ (size!15238 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) (size!15238 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))))

(assert (=> d!534174 (= (inv!24873 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) e!1118103)))

(declare-fun b!1747297 () Bool)

(declare-fun res!785707 () Bool)

(assert (=> b!1747297 (=> (not res!785707) (not e!1118103))))

(assert (=> b!1747297 (= res!785707 (and (not (= (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) Empty!6383)) (not (= (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) Empty!6383))))))

(declare-fun b!1747298 () Bool)

(declare-fun res!785708 () Bool)

(assert (=> b!1747298 (=> (not res!785708) (not e!1118103))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1003 (Conc!6383) Int)

(assert (=> b!1747298 (= res!785708 (= (cheight!6594 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) (+ (max!0 (height!1003 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) (height!1003 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) 1)))))

(declare-fun b!1747299 () Bool)

(assert (=> b!1747299 (= e!1118103 (<= 0 (cheight!6594 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(assert (= (and d!534174 res!785706) b!1747297))

(assert (= (and b!1747297 res!785707) b!1747298))

(assert (= (and b!1747298 res!785708) b!1747299))

(declare-fun m!2159773 () Bool)

(assert (=> d!534174 m!2159773))

(declare-fun m!2159775 () Bool)

(assert (=> d!534174 m!2159775))

(declare-fun m!2159777 () Bool)

(assert (=> b!1747298 m!2159777))

(declare-fun m!2159779 () Bool)

(assert (=> b!1747298 m!2159779))

(assert (=> b!1747298 m!2159777))

(assert (=> b!1747298 m!2159779))

(declare-fun m!2159781 () Bool)

(assert (=> b!1747298 m!2159781))

(assert (=> b!1745726 d!534174))

(declare-fun d!534182 () Bool)

(assert (=> d!534182 (= (isEmpty!12089 lt!673082) (not ((_ is Some!3862) lt!673082)))))

(assert (=> d!533430 d!534182))

(declare-fun b!1747312 () Bool)

(declare-fun res!785726 () Bool)

(declare-fun e!1118109 () Bool)

(assert (=> b!1747312 (=> (not res!785726) (not e!1118109))))

(assert (=> b!1747312 (= res!785726 (isBalanced!1994 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(declare-fun b!1747313 () Bool)

(declare-fun res!785723 () Bool)

(assert (=> b!1747313 (=> (not res!785723) (not e!1118109))))

(assert (=> b!1747313 (= res!785723 (<= (- (height!1003 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) (height!1003 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) 1))))

(declare-fun b!1747314 () Bool)

(declare-fun isEmpty!12095 (Conc!6383) Bool)

(assert (=> b!1747314 (= e!1118109 (not (isEmpty!12095 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))))

(declare-fun d!534184 () Bool)

(declare-fun res!785722 () Bool)

(declare-fun e!1118108 () Bool)

(assert (=> d!534184 (=> res!785722 e!1118108)))

(assert (=> d!534184 (= res!785722 (not ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(assert (=> d!534184 (= (isBalanced!1994 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) e!1118108)))

(declare-fun b!1747315 () Bool)

(assert (=> b!1747315 (= e!1118108 e!1118109)))

(declare-fun res!785724 () Bool)

(assert (=> b!1747315 (=> (not res!785724) (not e!1118109))))

(assert (=> b!1747315 (= res!785724 (<= (- 1) (- (height!1003 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) (height!1003 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))))

(declare-fun b!1747316 () Bool)

(declare-fun res!785721 () Bool)

(assert (=> b!1747316 (=> (not res!785721) (not e!1118109))))

(assert (=> b!1747316 (= res!785721 (isBalanced!1994 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(declare-fun b!1747317 () Bool)

(declare-fun res!785725 () Bool)

(assert (=> b!1747317 (=> (not res!785725) (not e!1118109))))

(assert (=> b!1747317 (= res!785725 (not (isEmpty!12095 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))))

(assert (= (and d!534184 (not res!785722)) b!1747315))

(assert (= (and b!1747315 res!785724) b!1747313))

(assert (= (and b!1747313 res!785723) b!1747316))

(assert (= (and b!1747316 res!785721) b!1747312))

(assert (= (and b!1747312 res!785726) b!1747317))

(assert (= (and b!1747317 res!785725) b!1747314))

(declare-fun m!2159783 () Bool)

(assert (=> b!1747314 m!2159783))

(declare-fun m!2159785 () Bool)

(assert (=> b!1747317 m!2159785))

(declare-fun m!2159787 () Bool)

(assert (=> b!1747312 m!2159787))

(declare-fun m!2159789 () Bool)

(assert (=> b!1747316 m!2159789))

(assert (=> b!1747313 m!2159777))

(assert (=> b!1747313 m!2159779))

(assert (=> b!1747315 m!2159777))

(assert (=> b!1747315 m!2159779))

(assert (=> d!533488 d!534184))

(declare-fun d!534186 () Bool)

(declare-fun c!285118 () Bool)

(assert (=> d!534186 (= c!285118 ((_ is Nil!19190) rules!3447))))

(declare-fun e!1118112 () (InoxSet Rule!6638))

(assert (=> d!534186 (= (content!2759 rules!3447) e!1118112)))

(declare-fun b!1747322 () Bool)

(assert (=> b!1747322 (= e!1118112 ((as const (Array Rule!6638 Bool)) false))))

(declare-fun b!1747323 () Bool)

(assert (=> b!1747323 (= e!1118112 ((_ map or) (store ((as const (Array Rule!6638 Bool)) false) (h!24591 rules!3447) true) (content!2759 (t!162265 rules!3447))))))

(assert (= (and d!534186 c!285118) b!1747322))

(assert (= (and d!534186 (not c!285118)) b!1747323))

(declare-fun m!2159791 () Bool)

(assert (=> b!1747323 m!2159791))

(assert (=> b!1747323 m!2159715))

(assert (=> d!533504 d!534186))

(declare-fun d!534188 () Bool)

(declare-fun e!1118113 () Bool)

(assert (=> d!534188 e!1118113))

(declare-fun res!785728 () Bool)

(assert (=> d!534188 (=> (not res!785728) (not e!1118113))))

(declare-fun lt!673590 () List!19259)

(assert (=> d!534188 (= res!785728 (= (content!2758 lt!673590) ((_ map or) (content!2758 (t!162264 lt!673098)) (content!2758 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(declare-fun e!1118114 () List!19259)

(assert (=> d!534188 (= lt!673590 e!1118114)))

(declare-fun c!285119 () Bool)

(assert (=> d!534188 (= c!285119 ((_ is Nil!19189) (t!162264 lt!673098)))))

(assert (=> d!534188 (= (++!5244 (t!162264 lt!673098) (Cons!19189 (head!4010 suffix!1421) Nil!19189)) lt!673590)))

(declare-fun b!1747324 () Bool)

(assert (=> b!1747324 (= e!1118114 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))

(declare-fun b!1747325 () Bool)

(assert (=> b!1747325 (= e!1118114 (Cons!19189 (h!24590 (t!162264 lt!673098)) (++!5244 (t!162264 (t!162264 lt!673098)) (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))

(declare-fun b!1747327 () Bool)

(assert (=> b!1747327 (= e!1118113 (or (not (= (Cons!19189 (head!4010 suffix!1421) Nil!19189) Nil!19189)) (= lt!673590 (t!162264 lt!673098))))))

(declare-fun b!1747326 () Bool)

(declare-fun res!785727 () Bool)

(assert (=> b!1747326 (=> (not res!785727) (not e!1118113))))

(assert (=> b!1747326 (= res!785727 (= (size!15236 lt!673590) (+ (size!15236 (t!162264 lt!673098)) (size!15236 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(assert (= (and d!534188 c!285119) b!1747324))

(assert (= (and d!534188 (not c!285119)) b!1747325))

(assert (= (and d!534188 res!785728) b!1747326))

(assert (= (and b!1747326 res!785727) b!1747327))

(declare-fun m!2159793 () Bool)

(assert (=> d!534188 m!2159793))

(assert (=> d!534188 m!2158565))

(assert (=> d!534188 m!2157983))

(declare-fun m!2159795 () Bool)

(assert (=> b!1747325 m!2159795))

(declare-fun m!2159797 () Bool)

(assert (=> b!1747326 m!2159797))

(assert (=> b!1747326 m!2158881))

(assert (=> b!1747326 m!2157989))

(assert (=> b!1745942 d!534188))

(declare-fun d!534190 () Bool)

(assert (=> d!534190 (= (head!4010 lt!673090) (h!24590 lt!673090))))

(assert (=> b!1745867 d!534190))

(declare-fun d!534192 () Bool)

(assert (=> d!534192 (= (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) ((_ is Nil!19189) (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))

(assert (=> d!533422 d!534192))

(declare-fun b!1747328 () Bool)

(declare-fun res!785733 () Bool)

(declare-fun e!1118118 () Bool)

(assert (=> b!1747328 (=> res!785733 e!1118118)))

(assert (=> b!1747328 (= res!785733 (not ((_ is Concat!8257) (regex!3419 lt!673088))))))

(declare-fun e!1118121 () Bool)

(assert (=> b!1747328 (= e!1118121 e!1118118)))

(declare-fun b!1747329 () Bool)

(declare-fun res!785730 () Bool)

(declare-fun e!1118120 () Bool)

(assert (=> b!1747329 (=> (not res!785730) (not e!1118120))))

(declare-fun call!110332 () Bool)

(assert (=> b!1747329 (= res!785730 call!110332)))

(assert (=> b!1747329 (= e!1118121 e!1118120)))

(declare-fun bm!110327 () Bool)

(declare-fun call!110333 () Bool)

(assert (=> bm!110327 (= call!110332 call!110333)))

(declare-fun c!285121 () Bool)

(declare-fun bm!110328 () Bool)

(declare-fun c!285120 () Bool)

(assert (=> bm!110328 (= call!110333 (validRegex!1915 (ite c!285120 (reg!5076 (regex!3419 lt!673088)) (ite c!285121 (regOne!10007 (regex!3419 lt!673088)) (regTwo!10006 (regex!3419 lt!673088))))))))

(declare-fun b!1747330 () Bool)

(declare-fun e!1118117 () Bool)

(declare-fun e!1118116 () Bool)

(assert (=> b!1747330 (= e!1118117 e!1118116)))

(declare-fun res!785731 () Bool)

(assert (=> b!1747330 (= res!785731 (not (nullable!1441 (reg!5076 (regex!3419 lt!673088)))))))

(assert (=> b!1747330 (=> (not res!785731) (not e!1118116))))

(declare-fun b!1747332 () Bool)

(declare-fun call!110334 () Bool)

(assert (=> b!1747332 (= e!1118120 call!110334)))

(declare-fun b!1747333 () Bool)

(declare-fun e!1118115 () Bool)

(assert (=> b!1747333 (= e!1118118 e!1118115)))

(declare-fun res!785732 () Bool)

(assert (=> b!1747333 (=> (not res!785732) (not e!1118115))))

(assert (=> b!1747333 (= res!785732 call!110334)))

(declare-fun b!1747334 () Bool)

(assert (=> b!1747334 (= e!1118115 call!110332)))

(declare-fun b!1747335 () Bool)

(declare-fun e!1118119 () Bool)

(assert (=> b!1747335 (= e!1118119 e!1118117)))

(assert (=> b!1747335 (= c!285120 ((_ is Star!4747) (regex!3419 lt!673088)))))

(declare-fun bm!110329 () Bool)

(assert (=> bm!110329 (= call!110334 (validRegex!1915 (ite c!285121 (regTwo!10007 (regex!3419 lt!673088)) (regOne!10006 (regex!3419 lt!673088)))))))

(declare-fun b!1747336 () Bool)

(assert (=> b!1747336 (= e!1118116 call!110333)))

(declare-fun b!1747331 () Bool)

(assert (=> b!1747331 (= e!1118117 e!1118121)))

(assert (=> b!1747331 (= c!285121 ((_ is Union!4747) (regex!3419 lt!673088)))))

(declare-fun d!534194 () Bool)

(declare-fun res!785729 () Bool)

(assert (=> d!534194 (=> res!785729 e!1118119)))

(assert (=> d!534194 (= res!785729 ((_ is ElementMatch!4747) (regex!3419 lt!673088)))))

(assert (=> d!534194 (= (validRegex!1915 (regex!3419 lt!673088)) e!1118119)))

(assert (= (and d!534194 (not res!785729)) b!1747335))

(assert (= (and b!1747335 c!285120) b!1747330))

(assert (= (and b!1747335 (not c!285120)) b!1747331))

(assert (= (and b!1747330 res!785731) b!1747336))

(assert (= (and b!1747331 c!285121) b!1747329))

(assert (= (and b!1747331 (not c!285121)) b!1747328))

(assert (= (and b!1747329 res!785730) b!1747332))

(assert (= (and b!1747328 (not res!785733)) b!1747333))

(assert (= (and b!1747333 res!785732) b!1747334))

(assert (= (or b!1747329 b!1747334) bm!110327))

(assert (= (or b!1747332 b!1747333) bm!110329))

(assert (= (or b!1747336 bm!110327) bm!110328))

(declare-fun m!2159799 () Bool)

(assert (=> bm!110328 m!2159799))

(declare-fun m!2159801 () Bool)

(assert (=> b!1747330 m!2159801))

(declare-fun m!2159803 () Bool)

(assert (=> bm!110329 m!2159803))

(assert (=> d!533422 d!534194))

(declare-fun d!534196 () Bool)

(declare-fun c!285122 () Bool)

(assert (=> d!534196 (= c!285122 ((_ is Node!6383) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(declare-fun e!1118122 () Bool)

(assert (=> d!534196 (= (inv!24871 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) e!1118122)))

(declare-fun b!1747337 () Bool)

(assert (=> b!1747337 (= e!1118122 (inv!24873 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(declare-fun b!1747338 () Bool)

(declare-fun e!1118123 () Bool)

(assert (=> b!1747338 (= e!1118122 e!1118123)))

(declare-fun res!785734 () Bool)

(assert (=> b!1747338 (= res!785734 (not ((_ is Leaf!9313) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))))

(assert (=> b!1747338 (=> res!785734 e!1118123)))

(declare-fun b!1747339 () Bool)

(assert (=> b!1747339 (= e!1118123 (inv!24874 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(assert (= (and d!534196 c!285122) b!1747337))

(assert (= (and d!534196 (not c!285122)) b!1747338))

(assert (= (and b!1747338 (not res!785734)) b!1747339))

(declare-fun m!2159805 () Bool)

(assert (=> b!1747337 m!2159805))

(declare-fun m!2159807 () Bool)

(assert (=> b!1747339 m!2159807))

(assert (=> b!1746239 d!534196))

(declare-fun d!534198 () Bool)

(declare-fun c!285123 () Bool)

(assert (=> d!534198 (= c!285123 ((_ is Node!6383) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(declare-fun e!1118124 () Bool)

(assert (=> d!534198 (= (inv!24871 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) e!1118124)))

(declare-fun b!1747340 () Bool)

(assert (=> b!1747340 (= e!1118124 (inv!24873 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(declare-fun b!1747341 () Bool)

(declare-fun e!1118125 () Bool)

(assert (=> b!1747341 (= e!1118124 e!1118125)))

(declare-fun res!785735 () Bool)

(assert (=> b!1747341 (= res!785735 (not ((_ is Leaf!9313) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))))))

(assert (=> b!1747341 (=> res!785735 e!1118125)))

(declare-fun b!1747342 () Bool)

(assert (=> b!1747342 (= e!1118125 (inv!24874 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))

(assert (= (and d!534198 c!285123) b!1747340))

(assert (= (and d!534198 (not c!285123)) b!1747341))

(assert (= (and b!1747341 (not res!785735)) b!1747342))

(declare-fun m!2159809 () Bool)

(assert (=> b!1747340 m!2159809))

(declare-fun m!2159811 () Bool)

(assert (=> b!1747342 m!2159811))

(assert (=> b!1746239 d!534198))

(declare-fun d!534200 () Bool)

(assert (=> d!534200 (= (inv!24878 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) (<= (size!15236 (innerList!6443 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) 2147483647))))

(declare-fun bs!403374 () Bool)

(assert (= bs!403374 d!534200))

(declare-fun m!2159813 () Bool)

(assert (=> bs!403374 m!2159813))

(assert (=> b!1746247 d!534200))

(declare-fun b!1747343 () Bool)

(declare-fun e!1118129 () Bool)

(declare-fun lt!673591 () Bool)

(declare-fun call!110335 () Bool)

(assert (=> b!1747343 (= e!1118129 (= lt!673591 call!110335))))

(declare-fun b!1747344 () Bool)

(declare-fun e!1118131 () Bool)

(assert (=> b!1747344 (= e!1118131 (not lt!673591))))

(declare-fun b!1747345 () Bool)

(declare-fun e!1118130 () Bool)

(assert (=> b!1747345 (= e!1118130 (nullable!1441 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))))))

(declare-fun bm!110330 () Bool)

(assert (=> bm!110330 (= call!110335 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))))))

(declare-fun b!1747346 () Bool)

(declare-fun e!1118126 () Bool)

(assert (=> b!1747346 (= e!1118126 (not (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))) (c!284766 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))))))))

(declare-fun b!1747347 () Bool)

(declare-fun res!785743 () Bool)

(declare-fun e!1118132 () Bool)

(assert (=> b!1747347 (=> (not res!785743) (not e!1118132))))

(assert (=> b!1747347 (= res!785743 (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))))))))

(declare-fun b!1747348 () Bool)

(declare-fun e!1118127 () Bool)

(declare-fun e!1118128 () Bool)

(assert (=> b!1747348 (= e!1118127 e!1118128)))

(declare-fun res!785738 () Bool)

(assert (=> b!1747348 (=> (not res!785738) (not e!1118128))))

(assert (=> b!1747348 (= res!785738 (not lt!673591))))

(declare-fun b!1747349 () Bool)

(declare-fun res!785739 () Bool)

(assert (=> b!1747349 (=> res!785739 e!1118127)))

(assert (=> b!1747349 (= res!785739 e!1118132)))

(declare-fun res!785740 () Bool)

(assert (=> b!1747349 (=> (not res!785740) (not e!1118132))))

(assert (=> b!1747349 (= res!785740 lt!673591)))

(declare-fun b!1747350 () Bool)

(assert (=> b!1747350 (= e!1118129 e!1118131)))

(declare-fun c!285125 () Bool)

(assert (=> b!1747350 (= c!285125 ((_ is EmptyLang!4747) (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))))))

(declare-fun b!1747351 () Bool)

(declare-fun res!785736 () Bool)

(assert (=> b!1747351 (=> (not res!785736) (not e!1118132))))

(assert (=> b!1747351 (= res!785736 (not call!110335))))

(declare-fun b!1747352 () Bool)

(declare-fun res!785742 () Bool)

(assert (=> b!1747352 (=> res!785742 e!1118126)))

(assert (=> b!1747352 (= res!785742 (not (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))))))))

(declare-fun b!1747353 () Bool)

(assert (=> b!1747353 (= e!1118128 e!1118126)))

(declare-fun res!785737 () Bool)

(assert (=> b!1747353 (=> res!785737 e!1118126)))

(assert (=> b!1747353 (= res!785737 call!110335)))

(declare-fun b!1747354 () Bool)

(assert (=> b!1747354 (= e!1118130 (matchR!2221 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))) (head!4010 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))))) (tail!2609 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))))))))

(declare-fun b!1747355 () Bool)

(assert (=> b!1747355 (= e!1118132 (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))) (c!284766 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))))))

(declare-fun b!1747356 () Bool)

(declare-fun res!785741 () Bool)

(assert (=> b!1747356 (=> res!785741 e!1118127)))

(assert (=> b!1747356 (= res!785741 (not ((_ is ElementMatch!4747) (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))))))

(assert (=> b!1747356 (= e!1118131 e!1118127)))

(declare-fun d!534202 () Bool)

(assert (=> d!534202 e!1118129))

(declare-fun c!285126 () Bool)

(assert (=> d!534202 (= c!285126 ((_ is EmptyExpr!4747) (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))))))

(assert (=> d!534202 (= lt!673591 e!1118130)))

(declare-fun c!285124 () Bool)

(assert (=> d!534202 (= c!285124 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))))))

(assert (=> d!534202 (validRegex!1915 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))))

(assert (=> d!534202 (= (matchR!2221 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))) lt!673591)))

(assert (= (and d!534202 c!285124) b!1747345))

(assert (= (and d!534202 (not c!285124)) b!1747354))

(assert (= (and d!534202 c!285126) b!1747343))

(assert (= (and d!534202 (not c!285126)) b!1747350))

(assert (= (and b!1747350 c!285125) b!1747344))

(assert (= (and b!1747350 (not c!285125)) b!1747356))

(assert (= (and b!1747356 (not res!785741)) b!1747349))

(assert (= (and b!1747349 res!785740) b!1747351))

(assert (= (and b!1747351 res!785736) b!1747347))

(assert (= (and b!1747347 res!785743) b!1747355))

(assert (= (and b!1747349 (not res!785739)) b!1747348))

(assert (= (and b!1747348 res!785738) b!1747353))

(assert (= (and b!1747353 (not res!785737)) b!1747352))

(assert (= (and b!1747352 (not res!785742)) b!1747346))

(assert (= (or b!1747343 b!1747353 b!1747351) bm!110330))

(assert (=> b!1747354 m!2158057))

(declare-fun m!2159815 () Bool)

(assert (=> b!1747354 m!2159815))

(assert (=> b!1747354 m!2159815))

(declare-fun m!2159817 () Bool)

(assert (=> b!1747354 m!2159817))

(assert (=> b!1747354 m!2158057))

(declare-fun m!2159819 () Bool)

(assert (=> b!1747354 m!2159819))

(assert (=> b!1747354 m!2159817))

(assert (=> b!1747354 m!2159819))

(declare-fun m!2159821 () Bool)

(assert (=> b!1747354 m!2159821))

(assert (=> bm!110330 m!2158057))

(declare-fun m!2159823 () Bool)

(assert (=> bm!110330 m!2159823))

(assert (=> b!1747347 m!2158057))

(assert (=> b!1747347 m!2159819))

(assert (=> b!1747347 m!2159819))

(declare-fun m!2159825 () Bool)

(assert (=> b!1747347 m!2159825))

(assert (=> b!1747352 m!2158057))

(assert (=> b!1747352 m!2159819))

(assert (=> b!1747352 m!2159819))

(assert (=> b!1747352 m!2159825))

(declare-fun m!2159827 () Bool)

(assert (=> b!1747345 m!2159827))

(assert (=> b!1747355 m!2158057))

(assert (=> b!1747355 m!2159815))

(assert (=> b!1747346 m!2158057))

(assert (=> b!1747346 m!2159815))

(assert (=> d!534202 m!2158057))

(assert (=> d!534202 m!2159823))

(declare-fun m!2159829 () Bool)

(assert (=> d!534202 m!2159829))

(assert (=> b!1745988 d!534202))

(assert (=> b!1745988 d!533950))

(assert (=> b!1745988 d!533986))

(assert (=> b!1745988 d!533988))

(assert (=> b!1746193 d!533736))

(declare-fun d!534204 () Bool)

(assert (=> d!534204 (= (head!4010 lt!673091) (h!24590 lt!673091))))

(assert (=> b!1746193 d!534204))

(declare-fun bs!403375 () Bool)

(declare-fun d!534206 () Bool)

(assert (= bs!403375 (and d!534206 b!1745597)))

(declare-fun lambda!69770 () Int)

(assert (=> bs!403375 (= (and (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (= lambda!69770 lambda!69710))))

(declare-fun bs!403376 () Bool)

(assert (= bs!403376 (and d!534206 d!533462)))

(assert (=> bs!403376 (= (and (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (= lambda!69770 lambda!69716))))

(assert (=> d!534206 true))

(assert (=> d!534206 (< (dynLambda!9088 order!11995 (toChars!4789 (transformation!3419 (h!24591 rules!3447)))) (dynLambda!9087 order!11993 lambda!69770))))

(assert (=> d!534206 true))

(assert (=> d!534206 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (h!24591 rules!3447)))) (dynLambda!9087 order!11993 lambda!69770))))

(assert (=> d!534206 (= (semiInverseModEq!1355 (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (h!24591 rules!3447)))) (Forall!788 lambda!69770))))

(declare-fun bs!403377 () Bool)

(assert (= bs!403377 d!534206))

(declare-fun m!2159831 () Bool)

(assert (=> bs!403377 m!2159831))

(assert (=> d!533514 d!534206))

(declare-fun d!534208 () Bool)

(declare-fun lt!673592 () Int)

(assert (=> d!534208 (>= lt!673592 0)))

(declare-fun e!1118133 () Int)

(assert (=> d!534208 (= lt!673592 e!1118133)))

(declare-fun c!285127 () Bool)

(assert (=> d!534208 (= c!285127 ((_ is Nil!19189) (++!5244 lt!673090 (_2!10817 lt!673096))))))

(assert (=> d!534208 (= (size!15236 (++!5244 lt!673090 (_2!10817 lt!673096))) lt!673592)))

(declare-fun b!1747361 () Bool)

(assert (=> b!1747361 (= e!1118133 0)))

(declare-fun b!1747362 () Bool)

(assert (=> b!1747362 (= e!1118133 (+ 1 (size!15236 (t!162264 (++!5244 lt!673090 (_2!10817 lt!673096))))))))

(assert (= (and d!534208 c!285127) b!1747361))

(assert (= (and d!534208 (not c!285127)) b!1747362))

(declare-fun m!2159833 () Bool)

(assert (=> b!1747362 m!2159833))

(assert (=> b!1746014 d!534208))

(assert (=> b!1746014 d!533976))

(declare-fun bs!403378 () Bool)

(declare-fun d!534210 () Bool)

(assert (= bs!403378 (and d!534210 d!533476)))

(declare-fun lambda!69773 () Int)

(assert (=> bs!403378 (= lambda!69773 lambda!69719)))

(assert (=> d!534210 true))

(assert (=> d!534210 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9092 order!11997 lambda!69773))))

(declare-fun Forall2!557 (Int) Bool)

(assert (=> d!534210 (= (equivClasses!1296 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (Forall2!557 lambda!69773))))

(declare-fun bs!403379 () Bool)

(assert (= bs!403379 d!534210))

(declare-fun m!2159835 () Bool)

(assert (=> bs!403379 m!2159835))

(assert (=> b!1745961 d!534210))

(declare-fun d!534212 () Bool)

(assert (=> d!534212 (= (isEmpty!12089 lt!673250) (not ((_ is Some!3862) lt!673250)))))

(assert (=> d!533530 d!534212))

(declare-fun b!1747368 () Bool)

(declare-fun res!785748 () Bool)

(declare-fun e!1118136 () Bool)

(assert (=> b!1747368 (=> (not res!785748) (not e!1118136))))

(assert (=> b!1747368 (= res!785748 (= (head!4010 lt!673091) (head!4010 lt!673091)))))

(declare-fun b!1747369 () Bool)

(assert (=> b!1747369 (= e!1118136 (isPrefix!1660 (tail!2609 lt!673091) (tail!2609 lt!673091)))))

(declare-fun b!1747370 () Bool)

(declare-fun e!1118138 () Bool)

(assert (=> b!1747370 (= e!1118138 (>= (size!15236 lt!673091) (size!15236 lt!673091)))))

(declare-fun d!534214 () Bool)

(assert (=> d!534214 e!1118138))

(declare-fun res!785746 () Bool)

(assert (=> d!534214 (=> res!785746 e!1118138)))

(declare-fun lt!673593 () Bool)

(assert (=> d!534214 (= res!785746 (not lt!673593))))

(declare-fun e!1118137 () Bool)

(assert (=> d!534214 (= lt!673593 e!1118137)))

(declare-fun res!785747 () Bool)

(assert (=> d!534214 (=> res!785747 e!1118137)))

(assert (=> d!534214 (= res!785747 ((_ is Nil!19189) lt!673091))))

(assert (=> d!534214 (= (isPrefix!1660 lt!673091 lt!673091) lt!673593)))

(declare-fun b!1747367 () Bool)

(assert (=> b!1747367 (= e!1118137 e!1118136)))

(declare-fun res!785749 () Bool)

(assert (=> b!1747367 (=> (not res!785749) (not e!1118136))))

(assert (=> b!1747367 (= res!785749 (not ((_ is Nil!19189) lt!673091)))))

(assert (= (and d!534214 (not res!785747)) b!1747367))

(assert (= (and b!1747367 res!785749) b!1747368))

(assert (= (and b!1747368 res!785748) b!1747369))

(assert (= (and d!534214 (not res!785746)) b!1747370))

(assert (=> b!1747368 m!2158295))

(assert (=> b!1747368 m!2158295))

(assert (=> b!1747369 m!2158297))

(assert (=> b!1747369 m!2158297))

(assert (=> b!1747369 m!2158297))

(assert (=> b!1747369 m!2158297))

(declare-fun m!2159837 () Bool)

(assert (=> b!1747369 m!2159837))

(assert (=> b!1747370 m!2158053))

(assert (=> b!1747370 m!2158053))

(assert (=> d!533530 d!534214))

(declare-fun d!534216 () Bool)

(assert (=> d!534216 (isPrefix!1660 lt!673091 lt!673091)))

(declare-fun lt!673594 () Unit!33261)

(assert (=> d!534216 (= lt!673594 (choose!10770 lt!673091 lt!673091))))

(assert (=> d!534216 (= (lemmaIsPrefixRefl!1107 lt!673091 lt!673091) lt!673594)))

(declare-fun bs!403380 () Bool)

(assert (= bs!403380 d!534216))

(assert (=> bs!403380 m!2158065))

(declare-fun m!2159839 () Bool)

(assert (=> bs!403380 m!2159839))

(assert (=> d!533530 d!534216))

(assert (=> d!533530 d!533972))

(declare-fun d!534218 () Bool)

(declare-fun e!1118139 () Bool)

(assert (=> d!534218 e!1118139))

(declare-fun res!785751 () Bool)

(assert (=> d!534218 (=> (not res!785751) (not e!1118139))))

(declare-fun lt!673595 () List!19259)

(assert (=> d!534218 (= res!785751 (= (content!2758 lt!673595) ((_ map or) (content!2758 (t!162264 lt!673098)) (content!2758 suffix!1421))))))

(declare-fun e!1118140 () List!19259)

(assert (=> d!534218 (= lt!673595 e!1118140)))

(declare-fun c!285128 () Bool)

(assert (=> d!534218 (= c!285128 ((_ is Nil!19189) (t!162264 lt!673098)))))

(assert (=> d!534218 (= (++!5244 (t!162264 lt!673098) suffix!1421) lt!673595)))

(declare-fun b!1747371 () Bool)

(assert (=> b!1747371 (= e!1118140 suffix!1421)))

(declare-fun b!1747372 () Bool)

(assert (=> b!1747372 (= e!1118140 (Cons!19189 (h!24590 (t!162264 lt!673098)) (++!5244 (t!162264 (t!162264 lt!673098)) suffix!1421)))))

(declare-fun b!1747374 () Bool)

(assert (=> b!1747374 (= e!1118139 (or (not (= suffix!1421 Nil!19189)) (= lt!673595 (t!162264 lt!673098))))))

(declare-fun b!1747373 () Bool)

(declare-fun res!785750 () Bool)

(assert (=> b!1747373 (=> (not res!785750) (not e!1118139))))

(assert (=> b!1747373 (= res!785750 (= (size!15236 lt!673595) (+ (size!15236 (t!162264 lt!673098)) (size!15236 suffix!1421))))))

(assert (= (and d!534218 c!285128) b!1747371))

(assert (= (and d!534218 (not c!285128)) b!1747372))

(assert (= (and d!534218 res!785751) b!1747373))

(assert (= (and b!1747373 res!785750) b!1747374))

(declare-fun m!2159841 () Bool)

(assert (=> d!534218 m!2159841))

(assert (=> d!534218 m!2158565))

(assert (=> d!534218 m!2158335))

(declare-fun m!2159843 () Bool)

(assert (=> b!1747372 m!2159843))

(declare-fun m!2159845 () Bool)

(assert (=> b!1747373 m!2159845))

(assert (=> b!1747373 m!2158881))

(assert (=> b!1747373 m!2158341))

(assert (=> b!1746197 d!534218))

(declare-fun bs!403381 () Bool)

(declare-fun d!534220 () Bool)

(assert (= bs!403381 (and d!534220 d!533972)))

(declare-fun lambda!69776 () Int)

(assert (=> bs!403381 (= lambda!69776 lambda!69762)))

(assert (=> d!534220 true))

(declare-fun lt!673598 () Bool)

(assert (=> d!534220 (= lt!673598 (rulesValidInductive!1144 thiss!24550 rules!3447))))

(assert (=> d!534220 (= lt!673598 (forall!4268 rules!3447 lambda!69776))))

(assert (=> d!534220 (= (rulesValid!1280 thiss!24550 rules!3447) lt!673598)))

(declare-fun bs!403382 () Bool)

(assert (= bs!403382 d!534220))

(assert (=> bs!403382 m!2157799))

(declare-fun m!2159847 () Bool)

(assert (=> bs!403382 m!2159847))

(assert (=> d!533414 d!534220))

(declare-fun d!534222 () Bool)

(declare-fun res!785752 () Bool)

(declare-fun e!1118141 () Bool)

(assert (=> d!534222 (=> (not res!785752) (not e!1118141))))

(assert (=> d!534222 (= res!785752 (= (csize!12996 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) (+ (size!15238 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) (size!15238 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))))

(assert (=> d!534222 (= (inv!24873 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) e!1118141)))

(declare-fun b!1747375 () Bool)

(declare-fun res!785753 () Bool)

(assert (=> b!1747375 (=> (not res!785753) (not e!1118141))))

(assert (=> b!1747375 (= res!785753 (and (not (= (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) Empty!6383)) (not (= (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) Empty!6383))))))

(declare-fun b!1747376 () Bool)

(declare-fun res!785754 () Bool)

(assert (=> b!1747376 (=> (not res!785754) (not e!1118141))))

(assert (=> b!1747376 (= res!785754 (= (cheight!6594 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) (+ (max!0 (height!1003 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) (height!1003 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) 1)))))

(declare-fun b!1747377 () Bool)

(assert (=> b!1747377 (= e!1118141 (<= 0 (cheight!6594 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(assert (= (and d!534222 res!785752) b!1747375))

(assert (= (and b!1747375 res!785753) b!1747376))

(assert (= (and b!1747376 res!785754) b!1747377))

(declare-fun m!2159849 () Bool)

(assert (=> d!534222 m!2159849))

(declare-fun m!2159851 () Bool)

(assert (=> d!534222 m!2159851))

(declare-fun m!2159853 () Bool)

(assert (=> b!1747376 m!2159853))

(declare-fun m!2159855 () Bool)

(assert (=> b!1747376 m!2159855))

(assert (=> b!1747376 m!2159853))

(assert (=> b!1747376 m!2159855))

(declare-fun m!2159857 () Bool)

(assert (=> b!1747376 m!2159857))

(assert (=> b!1745897 d!534222))

(declare-fun bs!403383 () Bool)

(declare-fun d!534224 () Bool)

(assert (= bs!403383 (and d!534224 d!533476)))

(declare-fun lambda!69777 () Int)

(assert (=> bs!403383 (= (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= lambda!69777 lambda!69719))))

(declare-fun bs!403384 () Bool)

(assert (= bs!403384 (and d!534224 d!534210)))

(assert (=> bs!403384 (= (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= lambda!69777 lambda!69773))))

(assert (=> d!534224 true))

(assert (=> d!534224 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (rule!5423 token!523)))) (dynLambda!9092 order!11997 lambda!69777))))

(assert (=> d!534224 (= (equivClasses!1296 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 token!523)))) (Forall2!557 lambda!69777))))

(declare-fun bs!403385 () Bool)

(assert (= bs!403385 d!534224))

(declare-fun m!2159859 () Bool)

(assert (=> bs!403385 m!2159859))

(assert (=> b!1745873 d!534224))

(assert (=> b!1745792 d!533984))

(assert (=> b!1745859 d!533934))

(assert (=> b!1745859 d!533936))

(declare-fun d!534226 () Bool)

(assert (=> d!534226 (= (isDefined!3206 lt!673174) (not (isEmpty!12089 lt!673174)))))

(declare-fun bs!403386 () Bool)

(assert (= bs!403386 d!534226))

(assert (=> bs!403386 m!2157791))

(assert (=> b!1745820 d!534226))

(declare-fun b!1747379 () Bool)

(declare-fun res!785757 () Bool)

(declare-fun e!1118142 () Bool)

(assert (=> b!1747379 (=> (not res!785757) (not e!1118142))))

(assert (=> b!1747379 (= res!785757 (= (head!4010 lt!673098) (head!4010 (++!5244 lt!673098 suffix!1421))))))

(declare-fun b!1747380 () Bool)

(assert (=> b!1747380 (= e!1118142 (isPrefix!1660 (tail!2609 lt!673098) (tail!2609 (++!5244 lt!673098 suffix!1421))))))

(declare-fun b!1747381 () Bool)

(declare-fun e!1118144 () Bool)

(assert (=> b!1747381 (= e!1118144 (>= (size!15236 (++!5244 lt!673098 suffix!1421)) (size!15236 lt!673098)))))

(declare-fun d!534228 () Bool)

(assert (=> d!534228 e!1118144))

(declare-fun res!785755 () Bool)

(assert (=> d!534228 (=> res!785755 e!1118144)))

(declare-fun lt!673599 () Bool)

(assert (=> d!534228 (= res!785755 (not lt!673599))))

(declare-fun e!1118143 () Bool)

(assert (=> d!534228 (= lt!673599 e!1118143)))

(declare-fun res!785756 () Bool)

(assert (=> d!534228 (=> res!785756 e!1118143)))

(assert (=> d!534228 (= res!785756 ((_ is Nil!19189) lt!673098))))

(assert (=> d!534228 (= (isPrefix!1660 lt!673098 (++!5244 lt!673098 suffix!1421)) lt!673599)))

(declare-fun b!1747378 () Bool)

(assert (=> b!1747378 (= e!1118143 e!1118142)))

(declare-fun res!785758 () Bool)

(assert (=> b!1747378 (=> (not res!785758) (not e!1118142))))

(assert (=> b!1747378 (= res!785758 (not ((_ is Nil!19189) (++!5244 lt!673098 suffix!1421))))))

(assert (= (and d!534228 (not res!785756)) b!1747378))

(assert (= (and b!1747378 res!785758) b!1747379))

(assert (= (and b!1747379 res!785757) b!1747380))

(assert (= (and d!534228 (not res!785755)) b!1747381))

(assert (=> b!1747379 m!2157701))

(assert (=> b!1747379 m!2157537))

(assert (=> b!1747379 m!2159567))

(assert (=> b!1747380 m!2157705))

(assert (=> b!1747380 m!2157537))

(assert (=> b!1747380 m!2159571))

(assert (=> b!1747380 m!2157705))

(assert (=> b!1747380 m!2159571))

(declare-fun m!2159861 () Bool)

(assert (=> b!1747380 m!2159861))

(assert (=> b!1747381 m!2157537))

(assert (=> b!1747381 m!2159575))

(assert (=> b!1747381 m!2157763))

(assert (=> d!533600 d!534228))

(assert (=> d!533600 d!533608))

(declare-fun d!534230 () Bool)

(assert (=> d!534230 (isPrefix!1660 lt!673098 (++!5244 lt!673098 suffix!1421))))

(assert (=> d!534230 true))

(declare-fun _$46!1200 () Unit!33261)

(assert (=> d!534230 (= (choose!10764 lt!673098 suffix!1421) _$46!1200)))

(declare-fun bs!403387 () Bool)

(assert (= bs!403387 d!534230))

(assert (=> bs!403387 m!2157537))

(assert (=> bs!403387 m!2157537))

(assert (=> bs!403387 m!2158303))

(assert (=> d!533600 d!534230))

(assert (=> d!533416 d!533994))

(assert (=> d!533416 d!533946))

(assert (=> b!1745619 d!533408))

(declare-fun b!1747383 () Bool)

(declare-fun e!1118145 () List!19259)

(declare-fun e!1118146 () List!19259)

(assert (=> b!1747383 (= e!1118145 e!1118146)))

(declare-fun c!285130 () Bool)

(assert (=> b!1747383 (= c!285130 ((_ is Leaf!9313) (c!284767 (charsOf!2068 (_1!10817 lt!673096)))))))

(declare-fun d!534232 () Bool)

(declare-fun c!285129 () Bool)

(assert (=> d!534232 (= c!285129 ((_ is Empty!6383) (c!284767 (charsOf!2068 (_1!10817 lt!673096)))))))

(assert (=> d!534232 (= (list!7771 (c!284767 (charsOf!2068 (_1!10817 lt!673096)))) e!1118145)))

(declare-fun b!1747382 () Bool)

(assert (=> b!1747382 (= e!1118145 Nil!19189)))

(declare-fun b!1747384 () Bool)

(assert (=> b!1747384 (= e!1118146 (list!7774 (xs!9259 (c!284767 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1747385 () Bool)

(assert (=> b!1747385 (= e!1118146 (++!5244 (list!7771 (left!15342 (c!284767 (charsOf!2068 (_1!10817 lt!673096))))) (list!7771 (right!15672 (c!284767 (charsOf!2068 (_1!10817 lt!673096)))))))))

(assert (= (and d!534232 c!285129) b!1747382))

(assert (= (and d!534232 (not c!285129)) b!1747383))

(assert (= (and b!1747383 c!285130) b!1747384))

(assert (= (and b!1747383 (not c!285130)) b!1747385))

(declare-fun m!2159863 () Bool)

(assert (=> b!1747384 m!2159863))

(declare-fun m!2159865 () Bool)

(assert (=> b!1747385 m!2159865))

(declare-fun m!2159867 () Bool)

(assert (=> b!1747385 m!2159867))

(assert (=> b!1747385 m!2159865))

(assert (=> b!1747385 m!2159867))

(declare-fun m!2159869 () Bool)

(assert (=> b!1747385 m!2159869))

(assert (=> d!533424 d!534232))

(declare-fun d!534234 () Bool)

(declare-fun e!1118149 () Bool)

(assert (=> d!534234 e!1118149))

(declare-fun res!785761 () Bool)

(assert (=> d!534234 (=> (not res!785761) (not e!1118149))))

(declare-fun lt!673602 () BalanceConc!12710)

(assert (=> d!534234 (= res!785761 (= (list!7768 lt!673602) (originalCharacters!4233 (_1!10817 lt!673096))))))

(declare-fun fromList!440 (List!19259) Conc!6383)

(assert (=> d!534234 (= lt!673602 (BalanceConc!12711 (fromList!440 (originalCharacters!4233 (_1!10817 lt!673096)))))))

(assert (=> d!534234 (= (fromListB!1090 (originalCharacters!4233 (_1!10817 lt!673096))) lt!673602)))

(declare-fun b!1747388 () Bool)

(assert (=> b!1747388 (= e!1118149 (isBalanced!1994 (fromList!440 (originalCharacters!4233 (_1!10817 lt!673096)))))))

(assert (= (and d!534234 res!785761) b!1747388))

(declare-fun m!2159871 () Bool)

(assert (=> d!534234 m!2159871))

(declare-fun m!2159873 () Bool)

(assert (=> d!534234 m!2159873))

(assert (=> b!1747388 m!2159873))

(assert (=> b!1747388 m!2159873))

(declare-fun m!2159875 () Bool)

(assert (=> b!1747388 m!2159875))

(assert (=> d!533482 d!534234))

(declare-fun d!534236 () Bool)

(declare-fun lt!673603 () Int)

(assert (=> d!534236 (>= lt!673603 0)))

(declare-fun e!1118150 () Int)

(assert (=> d!534236 (= lt!673603 e!1118150)))

(declare-fun c!285132 () Bool)

(assert (=> d!534236 (= c!285132 ((_ is Nil!19189) (list!7768 lt!673085)))))

(assert (=> d!534236 (= (size!15236 (list!7768 lt!673085)) lt!673603)))

(declare-fun b!1747389 () Bool)

(assert (=> b!1747389 (= e!1118150 0)))

(declare-fun b!1747390 () Bool)

(assert (=> b!1747390 (= e!1118150 (+ 1 (size!15236 (t!162264 (list!7768 lt!673085)))))))

(assert (= (and d!534236 c!285132) b!1747389))

(assert (= (and d!534236 (not c!285132)) b!1747390))

(declare-fun m!2159877 () Bool)

(assert (=> b!1747390 m!2159877))

(assert (=> d!533478 d!534236))

(assert (=> d!533478 d!533528))

(declare-fun d!534238 () Bool)

(declare-fun lt!673606 () Int)

(assert (=> d!534238 (= lt!673606 (size!15236 (list!7771 (c!284767 lt!673085))))))

(assert (=> d!534238 (= lt!673606 (ite ((_ is Empty!6383) (c!284767 lt!673085)) 0 (ite ((_ is Leaf!9313) (c!284767 lt!673085)) (csize!12997 (c!284767 lt!673085)) (csize!12996 (c!284767 lt!673085)))))))

(assert (=> d!534238 (= (size!15238 (c!284767 lt!673085)) lt!673606)))

(declare-fun bs!403388 () Bool)

(assert (= bs!403388 d!534238))

(assert (=> bs!403388 m!2158047))

(assert (=> bs!403388 m!2158047))

(declare-fun m!2159879 () Bool)

(assert (=> bs!403388 m!2159879))

(assert (=> d!533478 d!534238))

(declare-fun b!1747392 () Bool)

(declare-fun res!785764 () Bool)

(declare-fun e!1118151 () Bool)

(assert (=> b!1747392 (=> (not res!785764) (not e!1118151))))

(assert (=> b!1747392 (= res!785764 (= (head!4010 (tail!2609 lt!673090)) (head!4010 (tail!2609 lt!673091))))))

(declare-fun b!1747393 () Bool)

(assert (=> b!1747393 (= e!1118151 (isPrefix!1660 (tail!2609 (tail!2609 lt!673090)) (tail!2609 (tail!2609 lt!673091))))))

(declare-fun b!1747394 () Bool)

(declare-fun e!1118153 () Bool)

(assert (=> b!1747394 (= e!1118153 (>= (size!15236 (tail!2609 lt!673091)) (size!15236 (tail!2609 lt!673090))))))

(declare-fun d!534240 () Bool)

(assert (=> d!534240 e!1118153))

(declare-fun res!785762 () Bool)

(assert (=> d!534240 (=> res!785762 e!1118153)))

(declare-fun lt!673607 () Bool)

(assert (=> d!534240 (= res!785762 (not lt!673607))))

(declare-fun e!1118152 () Bool)

(assert (=> d!534240 (= lt!673607 e!1118152)))

(declare-fun res!785763 () Bool)

(assert (=> d!534240 (=> res!785763 e!1118152)))

(assert (=> d!534240 (= res!785763 ((_ is Nil!19189) (tail!2609 lt!673090)))))

(assert (=> d!534240 (= (isPrefix!1660 (tail!2609 lt!673090) (tail!2609 lt!673091)) lt!673607)))

(declare-fun b!1747391 () Bool)

(assert (=> b!1747391 (= e!1118152 e!1118151)))

(declare-fun res!785765 () Bool)

(assert (=> b!1747391 (=> (not res!785765) (not e!1118151))))

(assert (=> b!1747391 (= res!785765 (not ((_ is Nil!19189) (tail!2609 lt!673091))))))

(assert (= (and d!534240 (not res!785763)) b!1747391))

(assert (= (and b!1747391 res!785765) b!1747392))

(assert (= (and b!1747392 res!785764) b!1747393))

(assert (= (and d!534240 (not res!785762)) b!1747394))

(assert (=> b!1747392 m!2157853))

(declare-fun m!2159881 () Bool)

(assert (=> b!1747392 m!2159881))

(assert (=> b!1747392 m!2158297))

(assert (=> b!1747392 m!2158891))

(assert (=> b!1747393 m!2157853))

(declare-fun m!2159883 () Bool)

(assert (=> b!1747393 m!2159883))

(assert (=> b!1747393 m!2158297))

(assert (=> b!1747393 m!2158893))

(assert (=> b!1747393 m!2159883))

(assert (=> b!1747393 m!2158893))

(declare-fun m!2159885 () Bool)

(assert (=> b!1747393 m!2159885))

(assert (=> b!1747394 m!2158297))

(assert (=> b!1747394 m!2158899))

(assert (=> b!1747394 m!2157853))

(declare-fun m!2159887 () Bool)

(assert (=> b!1747394 m!2159887))

(assert (=> b!1746168 d!534240))

(assert (=> b!1746168 d!533936))

(assert (=> b!1746168 d!533842))

(declare-fun d!534242 () Bool)

(assert (=> d!534242 (= (isEmpty!12086 (tail!2609 lt!673098)) ((_ is Nil!19189) (tail!2609 lt!673098)))))

(assert (=> b!1745769 d!534242))

(assert (=> b!1745769 d!533738))

(declare-fun d!534244 () Bool)

(assert (=> d!534244 (= (inv!15 (value!107114 token!523)) (= (charsToBigInt!0 (text!25012 (value!107114 token!523)) 0) (value!107109 (value!107114 token!523))))))

(declare-fun bs!403389 () Bool)

(assert (= bs!403389 d!534244))

(declare-fun m!2159889 () Bool)

(assert (=> bs!403389 m!2159889))

(assert (=> b!1745847 d!534244))

(declare-fun d!534246 () Bool)

(declare-fun lt!673608 () Bool)

(assert (=> d!534246 (= lt!673608 (select (content!2759 rules!3447) (get!5790 lt!673346)))))

(declare-fun e!1118155 () Bool)

(assert (=> d!534246 (= lt!673608 e!1118155)))

(declare-fun res!785767 () Bool)

(assert (=> d!534246 (=> (not res!785767) (not e!1118155))))

(assert (=> d!534246 (= res!785767 ((_ is Cons!19190) rules!3447))))

(assert (=> d!534246 (= (contains!3443 rules!3447 (get!5790 lt!673346)) lt!673608)))

(declare-fun b!1747395 () Bool)

(declare-fun e!1118154 () Bool)

(assert (=> b!1747395 (= e!1118155 e!1118154)))

(declare-fun res!785766 () Bool)

(assert (=> b!1747395 (=> res!785766 e!1118154)))

(assert (=> b!1747395 (= res!785766 (= (h!24591 rules!3447) (get!5790 lt!673346)))))

(declare-fun b!1747396 () Bool)

(assert (=> b!1747396 (= e!1118154 (contains!3443 (t!162265 rules!3447) (get!5790 lt!673346)))))

(assert (= (and d!534246 res!785767) b!1747395))

(assert (= (and b!1747395 (not res!785766)) b!1747396))

(assert (=> d!534246 m!2157991))

(assert (=> d!534246 m!2158319))

(declare-fun m!2159891 () Bool)

(assert (=> d!534246 m!2159891))

(assert (=> b!1747396 m!2158319))

(declare-fun m!2159893 () Bool)

(assert (=> b!1747396 m!2159893))

(assert (=> b!1746189 d!534246))

(assert (=> b!1746189 d!533804))

(declare-fun bs!403390 () Bool)

(declare-fun d!534248 () Bool)

(assert (= bs!403390 (and d!534248 b!1745597)))

(declare-fun lambda!69778 () Int)

(assert (=> bs!403390 (= (and (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (= lambda!69778 lambda!69710))))

(declare-fun bs!403391 () Bool)

(assert (= bs!403391 (and d!534248 d!533462)))

(assert (=> bs!403391 (= (and (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (= lambda!69778 lambda!69716))))

(declare-fun bs!403392 () Bool)

(assert (= bs!403392 (and d!534248 d!534206)))

(assert (=> bs!403392 (= (and (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (h!24591 rules!3447)))) (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (h!24591 rules!3447))))) (= lambda!69778 lambda!69770))))

(assert (=> d!534248 true))

(assert (=> d!534248 (< (dynLambda!9088 order!11995 (toChars!4789 (transformation!3419 rule!422))) (dynLambda!9087 order!11993 lambda!69778))))

(assert (=> d!534248 true))

(assert (=> d!534248 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 rule!422))) (dynLambda!9087 order!11993 lambda!69778))))

(assert (=> d!534248 (= (semiInverseModEq!1355 (toChars!4789 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 rule!422))) (Forall!788 lambda!69778))))

(declare-fun bs!403393 () Bool)

(assert (= bs!403393 d!534248))

(declare-fun m!2159895 () Bool)

(assert (=> bs!403393 m!2159895))

(assert (=> d!533450 d!534248))

(declare-fun d!534250 () Bool)

(assert (=> d!534250 (= (inv!17 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)) (= (charsToBigInt!1 (text!25011 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) (value!107106 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))

(declare-fun bs!403394 () Bool)

(assert (= bs!403394 d!534250))

(declare-fun m!2159897 () Bool)

(assert (=> bs!403394 m!2159897))

(assert (=> b!1745887 d!534250))

(assert (=> b!1745990 d!533950))

(declare-fun d!534252 () Bool)

(assert (=> d!534252 (= (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673250))))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673250))))))))

(declare-fun b_lambda!56061 () Bool)

(assert (=> (not b_lambda!56061) (not d!534252)))

(declare-fun tb!104567 () Bool)

(declare-fun t!162407 () Bool)

(assert (=> (and b!1745577 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162407) tb!104567))

(declare-fun result!125782 () Bool)

(assert (=> tb!104567 (= result!125782 (inv!21 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250))))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673250)))))))))

(declare-fun m!2159899 () Bool)

(assert (=> tb!104567 m!2159899))

(assert (=> d!534252 t!162407))

(declare-fun b_and!130181 () Bool)

(assert (= b_and!130017 (and (=> t!162407 result!125782) b_and!130181)))

(declare-fun t!162409 () Bool)

(declare-fun tb!104569 () Bool)

(assert (=> (and b!1745592 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162409) tb!104569))

(declare-fun result!125784 () Bool)

(assert (= result!125784 result!125782))

(assert (=> d!534252 t!162409))

(declare-fun b_and!130183 () Bool)

(assert (= b_and!130019 (and (=> t!162409 result!125784) b_and!130183)))

(declare-fun tb!104571 () Bool)

(declare-fun t!162411 () Bool)

(assert (=> (and b!1745601 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162411) tb!104571))

(declare-fun result!125786 () Bool)

(assert (= result!125786 result!125782))

(assert (=> d!534252 t!162411))

(declare-fun b_and!130185 () Bool)

(assert (= b_and!130021 (and (=> t!162411 result!125786) b_and!130185)))

(declare-fun tb!104573 () Bool)

(declare-fun t!162413 () Bool)

(assert (=> (and b!1746215 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162413) tb!104573))

(declare-fun result!125788 () Bool)

(assert (= result!125788 result!125782))

(assert (=> d!534252 t!162413))

(declare-fun b_and!130187 () Bool)

(assert (= b_and!130069 (and (=> t!162413 result!125788) b_and!130187)))

(assert (=> d!534252 m!2158071))

(declare-fun m!2159901 () Bool)

(assert (=> d!534252 m!2159901))

(assert (=> b!1745990 d!534252))

(declare-fun d!534254 () Bool)

(assert (=> d!534254 (= (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673250)))) (fromListB!1090 (originalCharacters!4233 (_1!10817 (get!5789 lt!673250)))))))

(declare-fun bs!403395 () Bool)

(assert (= bs!403395 d!534254))

(declare-fun m!2159903 () Bool)

(assert (=> bs!403395 m!2159903))

(assert (=> b!1745990 d!534254))

(declare-fun d!534256 () Bool)

(declare-fun e!1118157 () Bool)

(assert (=> d!534256 e!1118157))

(declare-fun res!785769 () Bool)

(assert (=> d!534256 (=> (not res!785769) (not e!1118157))))

(declare-fun lt!673609 () List!19259)

(assert (=> d!534256 (= res!785769 (= (content!2758 lt!673609) ((_ map or) (content!2758 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))) (content!2758 (_2!10817 (get!5789 lt!673250))))))))

(declare-fun e!1118158 () List!19259)

(assert (=> d!534256 (= lt!673609 e!1118158)))

(declare-fun c!285133 () Bool)

(assert (=> d!534256 (= c!285133 ((_ is Nil!19189) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))))))

(assert (=> d!534256 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))) (_2!10817 (get!5789 lt!673250))) lt!673609)))

(declare-fun b!1747397 () Bool)

(assert (=> b!1747397 (= e!1118158 (_2!10817 (get!5789 lt!673250)))))

(declare-fun b!1747398 () Bool)

(assert (=> b!1747398 (= e!1118158 (Cons!19189 (h!24590 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))) (++!5244 (t!162264 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))) (_2!10817 (get!5789 lt!673250)))))))

(declare-fun b!1747400 () Bool)

(assert (=> b!1747400 (= e!1118157 (or (not (= (_2!10817 (get!5789 lt!673250)) Nil!19189)) (= lt!673609 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250)))))))))

(declare-fun b!1747399 () Bool)

(declare-fun res!785768 () Bool)

(assert (=> b!1747399 (=> (not res!785768) (not e!1118157))))

(assert (=> b!1747399 (= res!785768 (= (size!15236 lt!673609) (+ (size!15236 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673250))))) (size!15236 (_2!10817 (get!5789 lt!673250))))))))

(assert (= (and d!534256 c!285133) b!1747397))

(assert (= (and d!534256 (not c!285133)) b!1747398))

(assert (= (and d!534256 res!785769) b!1747399))

(assert (= (and b!1747399 res!785768) b!1747400))

(declare-fun m!2159905 () Bool)

(assert (=> d!534256 m!2159905))

(assert (=> d!534256 m!2158057))

(declare-fun m!2159907 () Bool)

(assert (=> d!534256 m!2159907))

(declare-fun m!2159909 () Bool)

(assert (=> d!534256 m!2159909))

(declare-fun m!2159911 () Bool)

(assert (=> b!1747398 m!2159911))

(declare-fun m!2159913 () Bool)

(assert (=> b!1747399 m!2159913))

(assert (=> b!1747399 m!2158057))

(declare-fun m!2159915 () Bool)

(assert (=> b!1747399 m!2159915))

(assert (=> b!1747399 m!2158051))

(assert (=> b!1745994 d!534256))

(assert (=> b!1745994 d!533986))

(assert (=> b!1745994 d!533988))

(assert (=> b!1745994 d!533950))

(assert (=> bm!110236 d!534192))

(assert (=> b!1745825 d!533800))

(declare-fun d!534258 () Bool)

(assert (=> d!534258 (= (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673174))))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673174))))))))

(declare-fun b_lambda!56063 () Bool)

(assert (=> (not b_lambda!56063) (not d!534258)))

(declare-fun tb!104575 () Bool)

(declare-fun t!162415 () Bool)

(assert (=> (and b!1745577 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162415) tb!104575))

(declare-fun result!125790 () Bool)

(assert (=> tb!104575 (= result!125790 (inv!21 (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673174)))))))))

(declare-fun m!2159917 () Bool)

(assert (=> tb!104575 m!2159917))

(assert (=> d!534258 t!162415))

(declare-fun b_and!130189 () Bool)

(assert (= b_and!130181 (and (=> t!162415 result!125790) b_and!130189)))

(declare-fun t!162417 () Bool)

(declare-fun tb!104577 () Bool)

(assert (=> (and b!1745592 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162417) tb!104577))

(declare-fun result!125792 () Bool)

(assert (= result!125792 result!125790))

(assert (=> d!534258 t!162417))

(declare-fun b_and!130191 () Bool)

(assert (= b_and!130183 (and (=> t!162417 result!125792) b_and!130191)))

(declare-fun t!162419 () Bool)

(declare-fun tb!104579 () Bool)

(assert (=> (and b!1745601 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162419) tb!104579))

(declare-fun result!125794 () Bool)

(assert (= result!125794 result!125790))

(assert (=> d!534258 t!162419))

(declare-fun b_and!130193 () Bool)

(assert (= b_and!130185 (and (=> t!162419 result!125794) b_and!130193)))

(declare-fun t!162421 () Bool)

(declare-fun tb!104581 () Bool)

(assert (=> (and b!1746215 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162421) tb!104581))

(declare-fun result!125796 () Bool)

(assert (= result!125796 result!125790))

(assert (=> d!534258 t!162421))

(declare-fun b_and!130195 () Bool)

(assert (= b_and!130187 (and (=> t!162421 result!125796) b_and!130195)))

(assert (=> d!534258 m!2157815))

(declare-fun m!2159919 () Bool)

(assert (=> d!534258 m!2159919))

(assert (=> b!1745825 d!534258))

(declare-fun d!534260 () Bool)

(assert (=> d!534260 (= (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673174)))) (fromListB!1090 (originalCharacters!4233 (_1!10817 (get!5789 lt!673174)))))))

(declare-fun bs!403396 () Bool)

(assert (= bs!403396 d!534260))

(declare-fun m!2159921 () Bool)

(assert (=> bs!403396 m!2159921))

(assert (=> b!1745825 d!534260))

(declare-fun d!534262 () Bool)

(declare-fun lt!673610 () Int)

(assert (=> d!534262 (>= lt!673610 0)))

(declare-fun e!1118160 () Int)

(assert (=> d!534262 (= lt!673610 e!1118160)))

(declare-fun c!285134 () Bool)

(assert (=> d!534262 (= c!285134 ((_ is Nil!19189) (originalCharacters!4233 (_1!10817 lt!673096))))))

(assert (=> d!534262 (= (size!15236 (originalCharacters!4233 (_1!10817 lt!673096))) lt!673610)))

(declare-fun b!1747401 () Bool)

(assert (=> b!1747401 (= e!1118160 0)))

(declare-fun b!1747402 () Bool)

(assert (=> b!1747402 (= e!1118160 (+ 1 (size!15236 (t!162264 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(assert (= (and d!534262 c!285134) b!1747401))

(assert (= (and d!534262 (not c!285134)) b!1747402))

(declare-fun m!2159923 () Bool)

(assert (=> b!1747402 m!2159923))

(assert (=> d!533480 d!534262))

(declare-fun b!1747403 () Bool)

(declare-fun e!1118164 () Bool)

(declare-fun lt!673611 () Bool)

(declare-fun call!110336 () Bool)

(assert (=> b!1747403 (= e!1118164 (= lt!673611 call!110336))))

(declare-fun b!1747404 () Bool)

(declare-fun e!1118166 () Bool)

(assert (=> b!1747404 (= e!1118166 (not lt!673611))))

(declare-fun b!1747405 () Bool)

(declare-fun e!1118165 () Bool)

(assert (=> b!1747405 (= e!1118165 (nullable!1441 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090))))))

(declare-fun bm!110331 () Bool)

(assert (=> bm!110331 (= call!110336 (isEmpty!12086 (tail!2609 lt!673090)))))

(declare-fun b!1747406 () Bool)

(declare-fun e!1118161 () Bool)

(assert (=> b!1747406 (= e!1118161 (not (= (head!4010 (tail!2609 lt!673090)) (c!284766 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090))))))))

(declare-fun b!1747407 () Bool)

(declare-fun res!785777 () Bool)

(declare-fun e!1118167 () Bool)

(assert (=> b!1747407 (=> (not res!785777) (not e!1118167))))

(assert (=> b!1747407 (= res!785777 (isEmpty!12086 (tail!2609 (tail!2609 lt!673090))))))

(declare-fun b!1747408 () Bool)

(declare-fun e!1118162 () Bool)

(declare-fun e!1118163 () Bool)

(assert (=> b!1747408 (= e!1118162 e!1118163)))

(declare-fun res!785772 () Bool)

(assert (=> b!1747408 (=> (not res!785772) (not e!1118163))))

(assert (=> b!1747408 (= res!785772 (not lt!673611))))

(declare-fun b!1747409 () Bool)

(declare-fun res!785773 () Bool)

(assert (=> b!1747409 (=> res!785773 e!1118162)))

(assert (=> b!1747409 (= res!785773 e!1118167)))

(declare-fun res!785774 () Bool)

(assert (=> b!1747409 (=> (not res!785774) (not e!1118167))))

(assert (=> b!1747409 (= res!785774 lt!673611)))

(declare-fun b!1747410 () Bool)

(assert (=> b!1747410 (= e!1118164 e!1118166)))

(declare-fun c!285136 () Bool)

(assert (=> b!1747410 (= c!285136 ((_ is EmptyLang!4747) (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090))))))

(declare-fun b!1747411 () Bool)

(declare-fun res!785770 () Bool)

(assert (=> b!1747411 (=> (not res!785770) (not e!1118167))))

(assert (=> b!1747411 (= res!785770 (not call!110336))))

(declare-fun b!1747412 () Bool)

(declare-fun res!785776 () Bool)

(assert (=> b!1747412 (=> res!785776 e!1118161)))

(assert (=> b!1747412 (= res!785776 (not (isEmpty!12086 (tail!2609 (tail!2609 lt!673090)))))))

(declare-fun b!1747413 () Bool)

(assert (=> b!1747413 (= e!1118163 e!1118161)))

(declare-fun res!785771 () Bool)

(assert (=> b!1747413 (=> res!785771 e!1118161)))

(assert (=> b!1747413 (= res!785771 call!110336)))

(declare-fun b!1747414 () Bool)

(assert (=> b!1747414 (= e!1118165 (matchR!2221 (derivativeStep!1210 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090)) (head!4010 (tail!2609 lt!673090))) (tail!2609 (tail!2609 lt!673090))))))

(declare-fun b!1747415 () Bool)

(assert (=> b!1747415 (= e!1118167 (= (head!4010 (tail!2609 lt!673090)) (c!284766 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090)))))))

(declare-fun b!1747416 () Bool)

(declare-fun res!785775 () Bool)

(assert (=> b!1747416 (=> res!785775 e!1118162)))

(assert (=> b!1747416 (= res!785775 (not ((_ is ElementMatch!4747) (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090)))))))

(assert (=> b!1747416 (= e!1118166 e!1118162)))

(declare-fun d!534264 () Bool)

(assert (=> d!534264 e!1118164))

(declare-fun c!285137 () Bool)

(assert (=> d!534264 (= c!285137 ((_ is EmptyExpr!4747) (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090))))))

(assert (=> d!534264 (= lt!673611 e!1118165)))

(declare-fun c!285135 () Bool)

(assert (=> d!534264 (= c!285135 (isEmpty!12086 (tail!2609 lt!673090)))))

(assert (=> d!534264 (validRegex!1915 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090)))))

(assert (=> d!534264 (= (matchR!2221 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090)) (tail!2609 lt!673090)) lt!673611)))

(assert (= (and d!534264 c!285135) b!1747405))

(assert (= (and d!534264 (not c!285135)) b!1747414))

(assert (= (and d!534264 c!285137) b!1747403))

(assert (= (and d!534264 (not c!285137)) b!1747410))

(assert (= (and b!1747410 c!285136) b!1747404))

(assert (= (and b!1747410 (not c!285136)) b!1747416))

(assert (= (and b!1747416 (not res!785775)) b!1747409))

(assert (= (and b!1747409 res!785774) b!1747411))

(assert (= (and b!1747411 res!785770) b!1747407))

(assert (= (and b!1747407 res!785777) b!1747415))

(assert (= (and b!1747409 (not res!785773)) b!1747408))

(assert (= (and b!1747408 res!785772) b!1747413))

(assert (= (and b!1747413 (not res!785771)) b!1747412))

(assert (= (and b!1747412 (not res!785776)) b!1747406))

(assert (= (or b!1747403 b!1747413 b!1747411) bm!110331))

(assert (=> b!1747414 m!2157853))

(assert (=> b!1747414 m!2159881))

(assert (=> b!1747414 m!2157851))

(assert (=> b!1747414 m!2159881))

(declare-fun m!2159925 () Bool)

(assert (=> b!1747414 m!2159925))

(assert (=> b!1747414 m!2157853))

(assert (=> b!1747414 m!2159883))

(assert (=> b!1747414 m!2159925))

(assert (=> b!1747414 m!2159883))

(declare-fun m!2159927 () Bool)

(assert (=> b!1747414 m!2159927))

(assert (=> bm!110331 m!2157853))

(assert (=> bm!110331 m!2157859))

(assert (=> b!1747407 m!2157853))

(assert (=> b!1747407 m!2159883))

(assert (=> b!1747407 m!2159883))

(declare-fun m!2159929 () Bool)

(assert (=> b!1747407 m!2159929))

(assert (=> b!1747412 m!2157853))

(assert (=> b!1747412 m!2159883))

(assert (=> b!1747412 m!2159883))

(assert (=> b!1747412 m!2159929))

(assert (=> b!1747405 m!2157851))

(declare-fun m!2159931 () Bool)

(assert (=> b!1747405 m!2159931))

(assert (=> b!1747415 m!2157853))

(assert (=> b!1747415 m!2159881))

(assert (=> b!1747406 m!2157853))

(assert (=> b!1747406 m!2159881))

(assert (=> d!534264 m!2157853))

(assert (=> d!534264 m!2157859))

(assert (=> d!534264 m!2157851))

(declare-fun m!2159933 () Bool)

(assert (=> d!534264 m!2159933))

(assert (=> b!1745866 d!534264))

(declare-fun b!1747417 () Bool)

(declare-fun e!1118169 () Regex!4747)

(assert (=> b!1747417 (= e!1118169 EmptyLang!4747)))

(declare-fun bm!110332 () Bool)

(declare-fun call!110339 () Regex!4747)

(declare-fun call!110340 () Regex!4747)

(assert (=> bm!110332 (= call!110339 call!110340)))

(declare-fun b!1747418 () Bool)

(declare-fun e!1118168 () Regex!4747)

(declare-fun call!110337 () Regex!4747)

(assert (=> b!1747418 (= e!1118168 (Union!4747 (Concat!8257 call!110337 (regTwo!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096))))) EmptyLang!4747))))

(declare-fun b!1747419 () Bool)

(declare-fun e!1118171 () Regex!4747)

(assert (=> b!1747419 (= e!1118171 (ite (= (head!4010 lt!673090) (c!284766 (regex!3419 (rule!5423 (_1!10817 lt!673096))))) EmptyExpr!4747 EmptyLang!4747))))

(declare-fun b!1747420 () Bool)

(declare-fun e!1118170 () Regex!4747)

(declare-fun e!1118172 () Regex!4747)

(assert (=> b!1747420 (= e!1118170 e!1118172)))

(declare-fun c!285138 () Bool)

(assert (=> b!1747420 (= c!285138 ((_ is Star!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun b!1747422 () Bool)

(declare-fun call!110338 () Regex!4747)

(assert (=> b!1747422 (= e!1118170 (Union!4747 call!110338 call!110340))))

(declare-fun b!1747423 () Bool)

(declare-fun c!285140 () Bool)

(assert (=> b!1747423 (= c!285140 ((_ is Union!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(assert (=> b!1747423 (= e!1118171 e!1118170)))

(declare-fun bm!110333 () Bool)

(assert (=> bm!110333 (= call!110338 (derivativeStep!1210 (ite c!285140 (regOne!10007 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (regOne!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096))))) (head!4010 lt!673090)))))

(declare-fun b!1747424 () Bool)

(assert (=> b!1747424 (= e!1118168 (Union!4747 (Concat!8257 call!110338 (regTwo!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096))))) call!110337))))

(declare-fun bm!110334 () Bool)

(assert (=> bm!110334 (= call!110337 call!110339)))

(declare-fun b!1747425 () Bool)

(declare-fun c!285141 () Bool)

(assert (=> b!1747425 (= c!285141 (nullable!1441 (regOne!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096))))))))

(assert (=> b!1747425 (= e!1118172 e!1118168)))

(declare-fun d!534266 () Bool)

(declare-fun lt!673612 () Regex!4747)

(assert (=> d!534266 (validRegex!1915 lt!673612)))

(assert (=> d!534266 (= lt!673612 e!1118169)))

(declare-fun c!285142 () Bool)

(assert (=> d!534266 (= c!285142 (or ((_ is EmptyExpr!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))) ((_ is EmptyLang!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096))))))))

(assert (=> d!534266 (validRegex!1915 (regex!3419 (rule!5423 (_1!10817 lt!673096))))))

(assert (=> d!534266 (= (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 lt!673096))) (head!4010 lt!673090)) lt!673612)))

(declare-fun b!1747421 () Bool)

(assert (=> b!1747421 (= e!1118169 e!1118171)))

(declare-fun c!285139 () Bool)

(assert (=> b!1747421 (= c!285139 ((_ is ElementMatch!4747) (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun bm!110335 () Bool)

(assert (=> bm!110335 (= call!110340 (derivativeStep!1210 (ite c!285140 (regTwo!10007 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (ite c!285138 (reg!5076 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (ite c!285141 (regTwo!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (regOne!10006 (regex!3419 (rule!5423 (_1!10817 lt!673096))))))) (head!4010 lt!673090)))))

(declare-fun b!1747426 () Bool)

(assert (=> b!1747426 (= e!1118172 (Concat!8257 call!110339 (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(assert (= (and d!534266 c!285142) b!1747417))

(assert (= (and d!534266 (not c!285142)) b!1747421))

(assert (= (and b!1747421 c!285139) b!1747419))

(assert (= (and b!1747421 (not c!285139)) b!1747423))

(assert (= (and b!1747423 c!285140) b!1747422))

(assert (= (and b!1747423 (not c!285140)) b!1747420))

(assert (= (and b!1747420 c!285138) b!1747426))

(assert (= (and b!1747420 (not c!285138)) b!1747425))

(assert (= (and b!1747425 c!285141) b!1747424))

(assert (= (and b!1747425 (not c!285141)) b!1747418))

(assert (= (or b!1747424 b!1747418) bm!110334))

(assert (= (or b!1747426 bm!110334) bm!110332))

(assert (= (or b!1747422 bm!110332) bm!110335))

(assert (= (or b!1747422 b!1747424) bm!110333))

(assert (=> bm!110333 m!2157849))

(declare-fun m!2159935 () Bool)

(assert (=> bm!110333 m!2159935))

(declare-fun m!2159937 () Bool)

(assert (=> b!1747425 m!2159937))

(declare-fun m!2159939 () Bool)

(assert (=> d!534266 m!2159939))

(assert (=> d!534266 m!2157863))

(assert (=> bm!110335 m!2157849))

(declare-fun m!2159941 () Bool)

(assert (=> bm!110335 m!2159941))

(assert (=> b!1745866 d!534266))

(assert (=> b!1745866 d!534190))

(assert (=> b!1745866 d!533936))

(declare-fun d!534268 () Bool)

(declare-fun c!285143 () Bool)

(assert (=> d!534268 (= c!285143 ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))))))

(declare-fun e!1118173 () Bool)

(assert (=> d!534268 (= (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))) e!1118173)))

(declare-fun b!1747427 () Bool)

(assert (=> b!1747427 (= e!1118173 (inv!24873 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))))))

(declare-fun b!1747428 () Bool)

(declare-fun e!1118174 () Bool)

(assert (=> b!1747428 (= e!1118173 e!1118174)))

(declare-fun res!785778 () Bool)

(assert (=> b!1747428 (= res!785778 (not ((_ is Leaf!9313) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))))))))

(assert (=> b!1747428 (=> res!785778 e!1118174)))

(declare-fun b!1747429 () Bool)

(assert (=> b!1747429 (= e!1118174 (inv!24874 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))))))

(assert (= (and d!534268 c!285143) b!1747427))

(assert (= (and d!534268 (not c!285143)) b!1747428))

(assert (= (and b!1747428 (not res!785778)) b!1747429))

(declare-fun m!2159943 () Bool)

(assert (=> b!1747427 m!2159943))

(declare-fun m!2159945 () Bool)

(assert (=> b!1747429 m!2159945))

(assert (=> b!1745707 d!534268))

(assert (=> b!1745762 d!533802))

(declare-fun d!534270 () Bool)

(declare-fun dynLambda!9098 (Int BalanceConc!12710 BalanceConc!12710) Bool)

(assert (=> d!534270 (dynLambda!9098 lambda!69719 lt!673085 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))

(declare-fun lt!673615 () Unit!33261)

(declare-fun choose!10776 (Int BalanceConc!12710 BalanceConc!12710) Unit!33261)

(assert (=> d!534270 (= lt!673615 (choose!10776 lambda!69719 lt!673085 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))))))

(assert (=> d!534270 (Forall2!557 lambda!69719)))

(assert (=> d!534270 (= (Forall2of!103 lambda!69719 lt!673085 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))) lt!673615)))

(declare-fun b_lambda!56065 () Bool)

(assert (=> (not b_lambda!56065) (not d!534270)))

(declare-fun bs!403397 () Bool)

(assert (= bs!403397 d!534270))

(assert (=> bs!403397 m!2157497))

(declare-fun m!2159947 () Bool)

(assert (=> bs!403397 m!2159947))

(assert (=> bs!403397 m!2157497))

(declare-fun m!2159949 () Bool)

(assert (=> bs!403397 m!2159949))

(declare-fun m!2159951 () Bool)

(assert (=> bs!403397 m!2159951))

(assert (=> d!533476 d!534270))

(assert (=> d!533476 d!533528))

(declare-fun d!534272 () Bool)

(assert (=> d!534272 (= (list!7768 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))) (list!7771 (c!284767 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(declare-fun bs!403398 () Bool)

(assert (= bs!403398 d!534272))

(declare-fun m!2159953 () Bool)

(assert (=> bs!403398 m!2159953))

(assert (=> d!533476 d!534272))

(declare-fun bs!403399 () Bool)

(declare-fun d!534274 () Bool)

(assert (= bs!403399 (and d!534274 d!533476)))

(declare-fun lambda!69779 () Int)

(assert (=> bs!403399 (= (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= lambda!69779 lambda!69719))))

(declare-fun bs!403400 () Bool)

(assert (= bs!403400 (and d!534274 d!534210)))

(assert (=> bs!403400 (= (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= lambda!69779 lambda!69773))))

(declare-fun bs!403401 () Bool)

(assert (= bs!403401 (and d!534274 d!534224)))

(assert (=> bs!403401 (= (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 token!523)))) (= lambda!69779 lambda!69777))))

(assert (=> d!534274 true))

(assert (=> d!534274 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (h!24591 rules!3447)))) (dynLambda!9092 order!11997 lambda!69779))))

(assert (=> d!534274 (= (equivClasses!1296 (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (h!24591 rules!3447)))) (Forall2!557 lambda!69779))))

(declare-fun bs!403402 () Bool)

(assert (= bs!403402 d!534274))

(declare-fun m!2159955 () Bool)

(assert (=> bs!403402 m!2159955))

(assert (=> b!1745966 d!534274))

(declare-fun d!534276 () Bool)

(declare-fun c!285144 () Bool)

(assert (=> d!534276 (= c!285144 (isEmpty!12086 (tail!2609 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(declare-fun e!1118175 () Bool)

(assert (=> d!534276 (= (prefixMatch!632 (derivativeStep!1210 (rulesRegex!777 thiss!24550 rules!3447) (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))) (tail!2609 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))) e!1118175)))

(declare-fun b!1747431 () Bool)

(assert (=> b!1747431 (= e!1118175 (not (lostCause!552 (derivativeStep!1210 (rulesRegex!777 thiss!24550 rules!3447) (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))))

(declare-fun b!1747432 () Bool)

(assert (=> b!1747432 (= e!1118175 (prefixMatch!632 (derivativeStep!1210 (derivativeStep!1210 (rulesRegex!777 thiss!24550 rules!3447) (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))) (head!4010 (tail!2609 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))) (tail!2609 (tail!2609 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))))

(assert (= (and d!534276 c!285144) b!1747431))

(assert (= (and d!534276 (not c!285144)) b!1747432))

(assert (=> d!534276 m!2157931))

(declare-fun m!2159957 () Bool)

(assert (=> d!534276 m!2159957))

(assert (=> b!1747431 m!2157929))

(declare-fun m!2159959 () Bool)

(assert (=> b!1747431 m!2159959))

(assert (=> b!1747432 m!2157931))

(declare-fun m!2159961 () Bool)

(assert (=> b!1747432 m!2159961))

(assert (=> b!1747432 m!2157929))

(assert (=> b!1747432 m!2159961))

(declare-fun m!2159963 () Bool)

(assert (=> b!1747432 m!2159963))

(assert (=> b!1747432 m!2157931))

(declare-fun m!2159965 () Bool)

(assert (=> b!1747432 m!2159965))

(assert (=> b!1747432 m!2159963))

(assert (=> b!1747432 m!2159965))

(declare-fun m!2159967 () Bool)

(assert (=> b!1747432 m!2159967))

(assert (=> b!1745923 d!534276))

(declare-fun b!1747433 () Bool)

(declare-fun e!1118177 () Regex!4747)

(assert (=> b!1747433 (= e!1118177 EmptyLang!4747)))

(declare-fun bm!110336 () Bool)

(declare-fun call!110343 () Regex!4747)

(declare-fun call!110344 () Regex!4747)

(assert (=> bm!110336 (= call!110343 call!110344)))

(declare-fun b!1747434 () Bool)

(declare-fun e!1118176 () Regex!4747)

(declare-fun call!110341 () Regex!4747)

(assert (=> b!1747434 (= e!1118176 (Union!4747 (Concat!8257 call!110341 (regTwo!10006 (rulesRegex!777 thiss!24550 rules!3447))) EmptyLang!4747))))

(declare-fun e!1118179 () Regex!4747)

(declare-fun b!1747435 () Bool)

(assert (=> b!1747435 (= e!1118179 (ite (= (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))) (c!284766 (rulesRegex!777 thiss!24550 rules!3447))) EmptyExpr!4747 EmptyLang!4747))))

(declare-fun b!1747436 () Bool)

(declare-fun e!1118178 () Regex!4747)

(declare-fun e!1118180 () Regex!4747)

(assert (=> b!1747436 (= e!1118178 e!1118180)))

(declare-fun c!285145 () Bool)

(assert (=> b!1747436 (= c!285145 ((_ is Star!4747) (rulesRegex!777 thiss!24550 rules!3447)))))

(declare-fun b!1747438 () Bool)

(declare-fun call!110342 () Regex!4747)

(assert (=> b!1747438 (= e!1118178 (Union!4747 call!110342 call!110344))))

(declare-fun b!1747439 () Bool)

(declare-fun c!285147 () Bool)

(assert (=> b!1747439 (= c!285147 ((_ is Union!4747) (rulesRegex!777 thiss!24550 rules!3447)))))

(assert (=> b!1747439 (= e!1118179 e!1118178)))

(declare-fun bm!110337 () Bool)

(assert (=> bm!110337 (= call!110342 (derivativeStep!1210 (ite c!285147 (regOne!10007 (rulesRegex!777 thiss!24550 rules!3447)) (regOne!10006 (rulesRegex!777 thiss!24550 rules!3447))) (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(declare-fun b!1747440 () Bool)

(assert (=> b!1747440 (= e!1118176 (Union!4747 (Concat!8257 call!110342 (regTwo!10006 (rulesRegex!777 thiss!24550 rules!3447))) call!110341))))

(declare-fun bm!110338 () Bool)

(assert (=> bm!110338 (= call!110341 call!110343)))

(declare-fun b!1747441 () Bool)

(declare-fun c!285148 () Bool)

(assert (=> b!1747441 (= c!285148 (nullable!1441 (regOne!10006 (rulesRegex!777 thiss!24550 rules!3447))))))

(assert (=> b!1747441 (= e!1118180 e!1118176)))

(declare-fun d!534278 () Bool)

(declare-fun lt!673616 () Regex!4747)

(assert (=> d!534278 (validRegex!1915 lt!673616)))

(assert (=> d!534278 (= lt!673616 e!1118177)))

(declare-fun c!285149 () Bool)

(assert (=> d!534278 (= c!285149 (or ((_ is EmptyExpr!4747) (rulesRegex!777 thiss!24550 rules!3447)) ((_ is EmptyLang!4747) (rulesRegex!777 thiss!24550 rules!3447))))))

(assert (=> d!534278 (validRegex!1915 (rulesRegex!777 thiss!24550 rules!3447))))

(assert (=> d!534278 (= (derivativeStep!1210 (rulesRegex!777 thiss!24550 rules!3447) (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))) lt!673616)))

(declare-fun b!1747437 () Bool)

(assert (=> b!1747437 (= e!1118177 e!1118179)))

(declare-fun c!285146 () Bool)

(assert (=> b!1747437 (= c!285146 ((_ is ElementMatch!4747) (rulesRegex!777 thiss!24550 rules!3447)))))

(declare-fun bm!110339 () Bool)

(assert (=> bm!110339 (= call!110344 (derivativeStep!1210 (ite c!285147 (regTwo!10007 (rulesRegex!777 thiss!24550 rules!3447)) (ite c!285145 (reg!5076 (rulesRegex!777 thiss!24550 rules!3447)) (ite c!285148 (regTwo!10006 (rulesRegex!777 thiss!24550 rules!3447)) (regOne!10006 (rulesRegex!777 thiss!24550 rules!3447))))) (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(declare-fun b!1747442 () Bool)

(assert (=> b!1747442 (= e!1118180 (Concat!8257 call!110343 (rulesRegex!777 thiss!24550 rules!3447)))))

(assert (= (and d!534278 c!285149) b!1747433))

(assert (= (and d!534278 (not c!285149)) b!1747437))

(assert (= (and b!1747437 c!285146) b!1747435))

(assert (= (and b!1747437 (not c!285146)) b!1747439))

(assert (= (and b!1747439 c!285147) b!1747438))

(assert (= (and b!1747439 (not c!285147)) b!1747436))

(assert (= (and b!1747436 c!285145) b!1747442))

(assert (= (and b!1747436 (not c!285145)) b!1747441))

(assert (= (and b!1747441 c!285148) b!1747440))

(assert (= (and b!1747441 (not c!285148)) b!1747434))

(assert (= (or b!1747440 b!1747434) bm!110338))

(assert (= (or b!1747442 bm!110338) bm!110336))

(assert (= (or b!1747438 bm!110336) bm!110339))

(assert (= (or b!1747438 b!1747440) bm!110337))

(assert (=> bm!110337 m!2157927))

(declare-fun m!2159969 () Bool)

(assert (=> bm!110337 m!2159969))

(declare-fun m!2159971 () Bool)

(assert (=> b!1747441 m!2159971))

(declare-fun m!2159973 () Bool)

(assert (=> d!534278 m!2159973))

(assert (=> d!534278 m!2157577))

(declare-fun m!2159975 () Bool)

(assert (=> d!534278 m!2159975))

(assert (=> bm!110339 m!2157927))

(declare-fun m!2159977 () Bool)

(assert (=> bm!110339 m!2159977))

(assert (=> b!1745923 d!534278))

(declare-fun d!534280 () Bool)

(assert (=> d!534280 (= (head!4010 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))) (h!24590 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))

(assert (=> b!1745923 d!534280))

(declare-fun d!534282 () Bool)

(assert (=> d!534282 (= (tail!2609 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))) (t!162264 (++!5244 lt!673098 (Cons!19189 (head!4010 suffix!1421) Nil!19189))))))

(assert (=> b!1745923 d!534282))

(declare-fun bs!403403 () Bool)

(declare-fun d!534284 () Bool)

(assert (= bs!403403 (and d!534284 b!1745597)))

(declare-fun lambda!69780 () Int)

(assert (=> bs!403403 (= lambda!69780 lambda!69710)))

(declare-fun bs!403404 () Bool)

(assert (= bs!403404 (and d!534284 d!533462)))

(assert (=> bs!403404 (= lambda!69780 lambda!69716)))

(declare-fun bs!403405 () Bool)

(assert (= bs!403405 (and d!534284 d!534206)))

(assert (=> bs!403405 (= (and (= (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toChars!4789 (transformation!3419 (h!24591 rules!3447)))) (= (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toValue!4930 (transformation!3419 (h!24591 rules!3447))))) (= lambda!69780 lambda!69770))))

(declare-fun bs!403406 () Bool)

(assert (= bs!403406 (and d!534284 d!534248)))

(assert (=> bs!403406 (= (and (= (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toChars!4789 (transformation!3419 rule!422))) (= (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toValue!4930 (transformation!3419 rule!422)))) (= lambda!69780 lambda!69778))))

(assert (=> d!534284 true))

(assert (=> d!534284 (< (dynLambda!9088 order!11995 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9087 order!11993 lambda!69780))))

(assert (=> d!534284 true))

(assert (=> d!534284 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (dynLambda!9087 order!11993 lambda!69780))))

(assert (=> d!534284 (= (semiInverseModEq!1355 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (Forall!788 lambda!69780))))

(declare-fun bs!403407 () Bool)

(assert (= bs!403407 d!534284))

(declare-fun m!2159979 () Bool)

(assert (=> bs!403407 m!2159979))

(assert (=> d!533508 d!534284))

(declare-fun d!534286 () Bool)

(declare-fun c!285150 () Bool)

(assert (=> d!534286 (= c!285150 ((_ is Node!6383) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(declare-fun e!1118181 () Bool)

(assert (=> d!534286 (= (inv!24871 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) e!1118181)))

(declare-fun b!1747443 () Bool)

(assert (=> b!1747443 (= e!1118181 (inv!24873 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(declare-fun b!1747444 () Bool)

(declare-fun e!1118182 () Bool)

(assert (=> b!1747444 (= e!1118181 e!1118182)))

(declare-fun res!785779 () Bool)

(assert (=> b!1747444 (= res!785779 (not ((_ is Leaf!9313) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))))

(assert (=> b!1747444 (=> res!785779 e!1118182)))

(declare-fun b!1747445 () Bool)

(assert (=> b!1747445 (= e!1118182 (inv!24874 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(assert (= (and d!534286 c!285150) b!1747443))

(assert (= (and d!534286 (not c!285150)) b!1747444))

(assert (= (and b!1747444 (not res!785779)) b!1747445))

(declare-fun m!2159981 () Bool)

(assert (=> b!1747443 m!2159981))

(declare-fun m!2159983 () Bool)

(assert (=> b!1747445 m!2159983))

(assert (=> b!1746246 d!534286))

(declare-fun d!534288 () Bool)

(declare-fun c!285151 () Bool)

(assert (=> d!534288 (= c!285151 ((_ is Node!6383) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(declare-fun e!1118183 () Bool)

(assert (=> d!534288 (= (inv!24871 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) e!1118183)))

(declare-fun b!1747446 () Bool)

(assert (=> b!1747446 (= e!1118183 (inv!24873 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(declare-fun b!1747447 () Bool)

(declare-fun e!1118184 () Bool)

(assert (=> b!1747447 (= e!1118183 e!1118184)))

(declare-fun res!785780 () Bool)

(assert (=> b!1747447 (= res!785780 (not ((_ is Leaf!9313) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))))

(assert (=> b!1747447 (=> res!785780 e!1118184)))

(declare-fun b!1747448 () Bool)

(assert (=> b!1747448 (= e!1118184 (inv!24874 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(assert (= (and d!534288 c!285151) b!1747446))

(assert (= (and d!534288 (not c!285151)) b!1747447))

(assert (= (and b!1747447 (not res!785780)) b!1747448))

(declare-fun m!2159985 () Bool)

(assert (=> b!1747446 m!2159985))

(declare-fun m!2159987 () Bool)

(assert (=> b!1747448 m!2159987))

(assert (=> b!1746246 d!534288))

(declare-fun b!1747450 () Bool)

(declare-fun res!785783 () Bool)

(declare-fun e!1118185 () Bool)

(assert (=> b!1747450 (=> (not res!785783) (not e!1118185))))

(assert (=> b!1747450 (= res!785783 (= (head!4010 (tail!2609 lt!673090)) (head!4010 (tail!2609 (++!5244 lt!673090 (_2!10817 lt!673096))))))))

(declare-fun b!1747451 () Bool)

(assert (=> b!1747451 (= e!1118185 (isPrefix!1660 (tail!2609 (tail!2609 lt!673090)) (tail!2609 (tail!2609 (++!5244 lt!673090 (_2!10817 lt!673096))))))))

(declare-fun b!1747452 () Bool)

(declare-fun e!1118187 () Bool)

(assert (=> b!1747452 (= e!1118187 (>= (size!15236 (tail!2609 (++!5244 lt!673090 (_2!10817 lt!673096)))) (size!15236 (tail!2609 lt!673090))))))

(declare-fun d!534290 () Bool)

(assert (=> d!534290 e!1118187))

(declare-fun res!785781 () Bool)

(assert (=> d!534290 (=> res!785781 e!1118187)))

(declare-fun lt!673617 () Bool)

(assert (=> d!534290 (= res!785781 (not lt!673617))))

(declare-fun e!1118186 () Bool)

(assert (=> d!534290 (= lt!673617 e!1118186)))

(declare-fun res!785782 () Bool)

(assert (=> d!534290 (=> res!785782 e!1118186)))

(assert (=> d!534290 (= res!785782 ((_ is Nil!19189) (tail!2609 lt!673090)))))

(assert (=> d!534290 (= (isPrefix!1660 (tail!2609 lt!673090) (tail!2609 (++!5244 lt!673090 (_2!10817 lt!673096)))) lt!673617)))

(declare-fun b!1747449 () Bool)

(assert (=> b!1747449 (= e!1118186 e!1118185)))

(declare-fun res!785784 () Bool)

(assert (=> b!1747449 (=> (not res!785784) (not e!1118185))))

(assert (=> b!1747449 (= res!785784 (not ((_ is Nil!19189) (tail!2609 (++!5244 lt!673090 (_2!10817 lt!673096))))))))

(assert (= (and d!534290 (not res!785782)) b!1747449))

(assert (= (and b!1747449 res!785784) b!1747450))

(assert (= (and b!1747450 res!785783) b!1747451))

(assert (= (and d!534290 (not res!785781)) b!1747452))

(assert (=> b!1747450 m!2157853))

(assert (=> b!1747450 m!2159881))

(assert (=> b!1747450 m!2158091))

(declare-fun m!2159989 () Bool)

(assert (=> b!1747450 m!2159989))

(assert (=> b!1747451 m!2157853))

(assert (=> b!1747451 m!2159883))

(assert (=> b!1747451 m!2158091))

(declare-fun m!2159991 () Bool)

(assert (=> b!1747451 m!2159991))

(assert (=> b!1747451 m!2159883))

(assert (=> b!1747451 m!2159991))

(declare-fun m!2159993 () Bool)

(assert (=> b!1747451 m!2159993))

(assert (=> b!1747452 m!2158091))

(declare-fun m!2159995 () Bool)

(assert (=> b!1747452 m!2159995))

(assert (=> b!1747452 m!2157853))

(assert (=> b!1747452 m!2159887))

(assert (=> b!1746013 d!534290))

(assert (=> b!1746013 d!533936))

(declare-fun d!534292 () Bool)

(assert (=> d!534292 (= (tail!2609 (++!5244 lt!673090 (_2!10817 lt!673096))) (t!162264 (++!5244 lt!673090 (_2!10817 lt!673096))))))

(assert (=> b!1746013 d!534292))

(declare-fun b!1747453 () Bool)

(declare-fun e!1118189 () Option!3863)

(declare-fun lt!673618 () tuple2!18838)

(assert (=> b!1747453 (= e!1118189 (Some!3862 (tuple2!18831 (Token!6405 (apply!5220 (transformation!3419 (h!24591 rules!3447)) (seqFromList!2389 (_1!10821 lt!673618))) (h!24591 rules!3447) (size!15234 (seqFromList!2389 (_1!10821 lt!673618))) (_1!10821 lt!673618)) (_2!10821 lt!673618))))))

(declare-fun lt!673620 () Unit!33261)

(assert (=> b!1747453 (= lt!673620 (longestMatchIsAcceptedByMatchOrIsEmpty!411 (regex!3419 (h!24591 rules!3447)) lt!673098))))

(declare-fun res!785788 () Bool)

(assert (=> b!1747453 (= res!785788 (isEmpty!12086 (_1!10821 (findLongestMatchInner!427 (regex!3419 (h!24591 rules!3447)) Nil!19189 (size!15236 Nil!19189) lt!673098 lt!673098 (size!15236 lt!673098)))))))

(declare-fun e!1118188 () Bool)

(assert (=> b!1747453 (=> res!785788 e!1118188)))

(assert (=> b!1747453 e!1118188))

(declare-fun lt!673619 () Unit!33261)

(assert (=> b!1747453 (= lt!673619 lt!673620)))

(declare-fun lt!673621 () Unit!33261)

(assert (=> b!1747453 (= lt!673621 (lemmaSemiInverse!559 (transformation!3419 (h!24591 rules!3447)) (seqFromList!2389 (_1!10821 lt!673618))))))

(declare-fun b!1747454 () Bool)

(declare-fun res!785791 () Bool)

(declare-fun e!1118190 () Bool)

(assert (=> b!1747454 (=> (not res!785791) (not e!1118190))))

(declare-fun lt!673622 () Option!3863)

(assert (=> b!1747454 (= res!785791 (< (size!15236 (_2!10817 (get!5789 lt!673622))) (size!15236 lt!673098)))))

(declare-fun b!1747455 () Bool)

(declare-fun res!785786 () Bool)

(assert (=> b!1747455 (=> (not res!785786) (not e!1118190))))

(assert (=> b!1747455 (= res!785786 (= (value!107114 (_1!10817 (get!5789 lt!673622))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673622)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673622)))))))))

(declare-fun b!1747456 () Bool)

(declare-fun res!785790 () Bool)

(assert (=> b!1747456 (=> (not res!785790) (not e!1118190))))

(assert (=> b!1747456 (= res!785790 (= (rule!5423 (_1!10817 (get!5789 lt!673622))) (h!24591 rules!3447)))))

(declare-fun b!1747457 () Bool)

(assert (=> b!1747457 (= e!1118188 (matchR!2221 (regex!3419 (h!24591 rules!3447)) (_1!10821 (findLongestMatchInner!427 (regex!3419 (h!24591 rules!3447)) Nil!19189 (size!15236 Nil!19189) lt!673098 lt!673098 (size!15236 lt!673098)))))))

(declare-fun b!1747458 () Bool)

(declare-fun e!1118191 () Bool)

(assert (=> b!1747458 (= e!1118191 e!1118190)))

(declare-fun res!785787 () Bool)

(assert (=> b!1747458 (=> (not res!785787) (not e!1118190))))

(assert (=> b!1747458 (= res!785787 (matchR!2221 (regex!3419 (h!24591 rules!3447)) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673622))))))))

(declare-fun b!1747459 () Bool)

(assert (=> b!1747459 (= e!1118190 (= (size!15233 (_1!10817 (get!5789 lt!673622))) (size!15236 (originalCharacters!4233 (_1!10817 (get!5789 lt!673622))))))))

(declare-fun b!1747460 () Bool)

(assert (=> b!1747460 (= e!1118189 None!3862)))

(declare-fun d!534294 () Bool)

(assert (=> d!534294 e!1118191))

(declare-fun res!785785 () Bool)

(assert (=> d!534294 (=> res!785785 e!1118191)))

(assert (=> d!534294 (= res!785785 (isEmpty!12089 lt!673622))))

(assert (=> d!534294 (= lt!673622 e!1118189)))

(declare-fun c!285152 () Bool)

(assert (=> d!534294 (= c!285152 (isEmpty!12086 (_1!10821 lt!673618)))))

(assert (=> d!534294 (= lt!673618 (findLongestMatch!354 (regex!3419 (h!24591 rules!3447)) lt!673098))))

(assert (=> d!534294 (ruleValid!918 thiss!24550 (h!24591 rules!3447))))

(assert (=> d!534294 (= (maxPrefixOneRule!974 thiss!24550 (h!24591 rules!3447) lt!673098) lt!673622)))

(declare-fun b!1747461 () Bool)

(declare-fun res!785789 () Bool)

(assert (=> b!1747461 (=> (not res!785789) (not e!1118190))))

(assert (=> b!1747461 (= res!785789 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673622)))) (_2!10817 (get!5789 lt!673622))) lt!673098))))

(assert (= (and d!534294 c!285152) b!1747460))

(assert (= (and d!534294 (not c!285152)) b!1747453))

(assert (= (and b!1747453 (not res!785788)) b!1747457))

(assert (= (and d!534294 (not res!785785)) b!1747458))

(assert (= (and b!1747458 res!785787) b!1747461))

(assert (= (and b!1747461 res!785789) b!1747454))

(assert (= (and b!1747454 res!785791) b!1747456))

(assert (= (and b!1747456 res!785790) b!1747455))

(assert (= (and b!1747455 res!785786) b!1747459))

(declare-fun m!2159997 () Bool)

(assert (=> b!1747459 m!2159997))

(declare-fun m!2159999 () Bool)

(assert (=> b!1747459 m!2159999))

(assert (=> b!1747457 m!2159083))

(assert (=> b!1747457 m!2157763))

(assert (=> b!1747457 m!2159083))

(assert (=> b!1747457 m!2157763))

(declare-fun m!2160001 () Bool)

(assert (=> b!1747457 m!2160001))

(declare-fun m!2160003 () Bool)

(assert (=> b!1747457 m!2160003))

(assert (=> b!1747458 m!2159997))

(declare-fun m!2160005 () Bool)

(assert (=> b!1747458 m!2160005))

(assert (=> b!1747458 m!2160005))

(declare-fun m!2160007 () Bool)

(assert (=> b!1747458 m!2160007))

(assert (=> b!1747458 m!2160007))

(declare-fun m!2160009 () Bool)

(assert (=> b!1747458 m!2160009))

(assert (=> b!1747456 m!2159997))

(assert (=> b!1747455 m!2159997))

(declare-fun m!2160011 () Bool)

(assert (=> b!1747455 m!2160011))

(assert (=> b!1747455 m!2160011))

(declare-fun m!2160013 () Bool)

(assert (=> b!1747455 m!2160013))

(assert (=> b!1747454 m!2159997))

(declare-fun m!2160015 () Bool)

(assert (=> b!1747454 m!2160015))

(assert (=> b!1747454 m!2157763))

(assert (=> b!1747461 m!2159997))

(assert (=> b!1747461 m!2160005))

(assert (=> b!1747461 m!2160005))

(assert (=> b!1747461 m!2160007))

(assert (=> b!1747461 m!2160007))

(declare-fun m!2160017 () Bool)

(assert (=> b!1747461 m!2160017))

(declare-fun m!2160019 () Bool)

(assert (=> d!534294 m!2160019))

(declare-fun m!2160021 () Bool)

(assert (=> d!534294 m!2160021))

(declare-fun m!2160023 () Bool)

(assert (=> d!534294 m!2160023))

(assert (=> d!534294 m!2159109))

(assert (=> b!1747453 m!2157763))

(declare-fun m!2160025 () Bool)

(assert (=> b!1747453 m!2160025))

(declare-fun m!2160027 () Bool)

(assert (=> b!1747453 m!2160027))

(assert (=> b!1747453 m!2160025))

(declare-fun m!2160029 () Bool)

(assert (=> b!1747453 m!2160029))

(assert (=> b!1747453 m!2159083))

(declare-fun m!2160031 () Bool)

(assert (=> b!1747453 m!2160031))

(assert (=> b!1747453 m!2160025))

(declare-fun m!2160033 () Bool)

(assert (=> b!1747453 m!2160033))

(assert (=> b!1747453 m!2159083))

(assert (=> b!1747453 m!2157763))

(assert (=> b!1747453 m!2160001))

(assert (=> b!1747453 m!2160025))

(declare-fun m!2160035 () Bool)

(assert (=> b!1747453 m!2160035))

(assert (=> bm!110239 d!534294))

(declare-fun b!1747462 () Bool)

(declare-fun e!1118195 () Bool)

(declare-fun lt!673623 () Bool)

(declare-fun call!110345 () Bool)

(assert (=> b!1747462 (= e!1118195 (= lt!673623 call!110345))))

(declare-fun b!1747463 () Bool)

(declare-fun e!1118197 () Bool)

(assert (=> b!1747463 (= e!1118197 (not lt!673623))))

(declare-fun b!1747464 () Bool)

(declare-fun e!1118196 () Bool)

(assert (=> b!1747464 (= e!1118196 (nullable!1441 (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))

(declare-fun bm!110340 () Bool)

(assert (=> bm!110340 (= call!110345 (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1747465 () Bool)

(declare-fun e!1118192 () Bool)

(assert (=> b!1747465 (= e!1118192 (not (= (head!4010 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) (c!284766 (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))))

(declare-fun b!1747466 () Bool)

(declare-fun res!785799 () Bool)

(declare-fun e!1118198 () Bool)

(assert (=> b!1747466 (=> (not res!785799) (not e!1118198))))

(assert (=> b!1747466 (= res!785799 (isEmpty!12086 (tail!2609 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))

(declare-fun b!1747467 () Bool)

(declare-fun e!1118193 () Bool)

(declare-fun e!1118194 () Bool)

(assert (=> b!1747467 (= e!1118193 e!1118194)))

(declare-fun res!785794 () Bool)

(assert (=> b!1747467 (=> (not res!785794) (not e!1118194))))

(assert (=> b!1747467 (= res!785794 (not lt!673623))))

(declare-fun b!1747468 () Bool)

(declare-fun res!785795 () Bool)

(assert (=> b!1747468 (=> res!785795 e!1118193)))

(assert (=> b!1747468 (= res!785795 e!1118198)))

(declare-fun res!785796 () Bool)

(assert (=> b!1747468 (=> (not res!785796) (not e!1118198))))

(assert (=> b!1747468 (= res!785796 lt!673623)))

(declare-fun b!1747469 () Bool)

(assert (=> b!1747469 (= e!1118195 e!1118197)))

(declare-fun c!285154 () Bool)

(assert (=> b!1747469 (= c!285154 ((_ is EmptyLang!4747) (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))

(declare-fun b!1747470 () Bool)

(declare-fun res!785792 () Bool)

(assert (=> b!1747470 (=> (not res!785792) (not e!1118198))))

(assert (=> b!1747470 (= res!785792 (not call!110345))))

(declare-fun b!1747471 () Bool)

(declare-fun res!785798 () Bool)

(assert (=> b!1747471 (=> res!785798 e!1118192)))

(assert (=> b!1747471 (= res!785798 (not (isEmpty!12086 (tail!2609 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))))

(declare-fun b!1747472 () Bool)

(assert (=> b!1747472 (= e!1118194 e!1118192)))

(declare-fun res!785793 () Bool)

(assert (=> b!1747472 (=> res!785793 e!1118192)))

(assert (=> b!1747472 (= res!785793 call!110345)))

(declare-fun b!1747473 () Bool)

(assert (=> b!1747473 (= e!1118196 (matchR!2221 (derivativeStep!1210 (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) (head!4010 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))) (tail!2609 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))

(declare-fun b!1747474 () Bool)

(assert (=> b!1747474 (= e!1118198 (= (head!4010 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) (c!284766 (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))))

(declare-fun b!1747475 () Bool)

(declare-fun res!785797 () Bool)

(assert (=> b!1747475 (=> res!785797 e!1118193)))

(assert (=> b!1747475 (= res!785797 (not ((_ is ElementMatch!4747) (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))))

(assert (=> b!1747475 (= e!1118197 e!1118193)))

(declare-fun d!534296 () Bool)

(assert (=> d!534296 e!1118195))

(declare-fun c!285155 () Bool)

(assert (=> d!534296 (= c!285155 ((_ is EmptyExpr!4747) (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))))))))

(assert (=> d!534296 (= lt!673623 e!1118196)))

(declare-fun c!285153 () Bool)

(assert (=> d!534296 (= c!285153 (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(assert (=> d!534296 (validRegex!1915 (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(assert (=> d!534296 (= (matchR!2221 (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) (tail!2609 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) lt!673623)))

(assert (= (and d!534296 c!285153) b!1747464))

(assert (= (and d!534296 (not c!285153)) b!1747473))

(assert (= (and d!534296 c!285155) b!1747462))

(assert (= (and d!534296 (not c!285155)) b!1747469))

(assert (= (and b!1747469 c!285154) b!1747463))

(assert (= (and b!1747469 (not c!285154)) b!1747475))

(assert (= (and b!1747475 (not res!785797)) b!1747468))

(assert (= (and b!1747468 res!785796) b!1747470))

(assert (= (and b!1747470 res!785792) b!1747466))

(assert (= (and b!1747466 res!785799) b!1747474))

(assert (= (and b!1747468 (not res!785795)) b!1747467))

(assert (= (and b!1747467 res!785794) b!1747472))

(assert (= (and b!1747472 (not res!785793)) b!1747471))

(assert (= (and b!1747471 (not res!785798)) b!1747465))

(assert (= (or b!1747462 b!1747472 b!1747470) bm!110340))

(assert (=> b!1747473 m!2157723))

(declare-fun m!2160037 () Bool)

(assert (=> b!1747473 m!2160037))

(assert (=> b!1747473 m!2157721))

(assert (=> b!1747473 m!2160037))

(declare-fun m!2160039 () Bool)

(assert (=> b!1747473 m!2160039))

(assert (=> b!1747473 m!2157723))

(declare-fun m!2160041 () Bool)

(assert (=> b!1747473 m!2160041))

(assert (=> b!1747473 m!2160039))

(assert (=> b!1747473 m!2160041))

(declare-fun m!2160043 () Bool)

(assert (=> b!1747473 m!2160043))

(assert (=> bm!110340 m!2157723))

(assert (=> bm!110340 m!2157729))

(assert (=> b!1747466 m!2157723))

(assert (=> b!1747466 m!2160041))

(assert (=> b!1747466 m!2160041))

(declare-fun m!2160045 () Bool)

(assert (=> b!1747466 m!2160045))

(assert (=> b!1747471 m!2157723))

(assert (=> b!1747471 m!2160041))

(assert (=> b!1747471 m!2160041))

(assert (=> b!1747471 m!2160045))

(assert (=> b!1747464 m!2157721))

(declare-fun m!2160047 () Bool)

(assert (=> b!1747464 m!2160047))

(assert (=> b!1747474 m!2157723))

(assert (=> b!1747474 m!2160037))

(assert (=> b!1747465 m!2157723))

(assert (=> b!1747465 m!2160037))

(assert (=> d!534296 m!2157723))

(assert (=> d!534296 m!2157729))

(assert (=> d!534296 m!2157721))

(declare-fun m!2160049 () Bool)

(assert (=> d!534296 m!2160049))

(assert (=> b!1745791 d!534296))

(declare-fun b!1747476 () Bool)

(declare-fun e!1118200 () Regex!4747)

(assert (=> b!1747476 (= e!1118200 EmptyLang!4747)))

(declare-fun bm!110341 () Bool)

(declare-fun call!110348 () Regex!4747)

(declare-fun call!110349 () Regex!4747)

(assert (=> bm!110341 (= call!110348 call!110349)))

(declare-fun b!1747477 () Bool)

(declare-fun e!1118199 () Regex!4747)

(declare-fun call!110346 () Regex!4747)

(assert (=> b!1747477 (= e!1118199 (Union!4747 (Concat!8257 call!110346 (regTwo!10006 (regex!3419 lt!673088))) EmptyLang!4747))))

(declare-fun b!1747478 () Bool)

(declare-fun e!1118202 () Regex!4747)

(assert (=> b!1747478 (= e!1118202 (ite (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096)))) (c!284766 (regex!3419 lt!673088))) EmptyExpr!4747 EmptyLang!4747))))

(declare-fun b!1747479 () Bool)

(declare-fun e!1118201 () Regex!4747)

(declare-fun e!1118203 () Regex!4747)

(assert (=> b!1747479 (= e!1118201 e!1118203)))

(declare-fun c!285156 () Bool)

(assert (=> b!1747479 (= c!285156 ((_ is Star!4747) (regex!3419 lt!673088)))))

(declare-fun b!1747481 () Bool)

(declare-fun call!110347 () Regex!4747)

(assert (=> b!1747481 (= e!1118201 (Union!4747 call!110347 call!110349))))

(declare-fun b!1747482 () Bool)

(declare-fun c!285158 () Bool)

(assert (=> b!1747482 (= c!285158 ((_ is Union!4747) (regex!3419 lt!673088)))))

(assert (=> b!1747482 (= e!1118202 e!1118201)))

(declare-fun bm!110342 () Bool)

(assert (=> bm!110342 (= call!110347 (derivativeStep!1210 (ite c!285158 (regOne!10007 (regex!3419 lt!673088)) (regOne!10006 (regex!3419 lt!673088))) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1747483 () Bool)

(assert (=> b!1747483 (= e!1118199 (Union!4747 (Concat!8257 call!110347 (regTwo!10006 (regex!3419 lt!673088))) call!110346))))

(declare-fun bm!110343 () Bool)

(assert (=> bm!110343 (= call!110346 call!110348)))

(declare-fun b!1747484 () Bool)

(declare-fun c!285159 () Bool)

(assert (=> b!1747484 (= c!285159 (nullable!1441 (regOne!10006 (regex!3419 lt!673088))))))

(assert (=> b!1747484 (= e!1118203 e!1118199)))

(declare-fun d!534298 () Bool)

(declare-fun lt!673624 () Regex!4747)

(assert (=> d!534298 (validRegex!1915 lt!673624)))

(assert (=> d!534298 (= lt!673624 e!1118200)))

(declare-fun c!285160 () Bool)

(assert (=> d!534298 (= c!285160 (or ((_ is EmptyExpr!4747) (regex!3419 lt!673088)) ((_ is EmptyLang!4747) (regex!3419 lt!673088))))))

(assert (=> d!534298 (validRegex!1915 (regex!3419 lt!673088))))

(assert (=> d!534298 (= (derivativeStep!1210 (regex!3419 lt!673088) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))) lt!673624)))

(declare-fun b!1747480 () Bool)

(assert (=> b!1747480 (= e!1118200 e!1118202)))

(declare-fun c!285157 () Bool)

(assert (=> b!1747480 (= c!285157 ((_ is ElementMatch!4747) (regex!3419 lt!673088)))))

(declare-fun bm!110344 () Bool)

(assert (=> bm!110344 (= call!110349 (derivativeStep!1210 (ite c!285158 (regTwo!10007 (regex!3419 lt!673088)) (ite c!285156 (reg!5076 (regex!3419 lt!673088)) (ite c!285159 (regTwo!10006 (regex!3419 lt!673088)) (regOne!10006 (regex!3419 lt!673088))))) (head!4010 (list!7768 (charsOf!2068 (_1!10817 lt!673096))))))))

(declare-fun b!1747485 () Bool)

(assert (=> b!1747485 (= e!1118203 (Concat!8257 call!110348 (regex!3419 lt!673088)))))

(assert (= (and d!534298 c!285160) b!1747476))

(assert (= (and d!534298 (not c!285160)) b!1747480))

(assert (= (and b!1747480 c!285157) b!1747478))

(assert (= (and b!1747480 (not c!285157)) b!1747482))

(assert (= (and b!1747482 c!285158) b!1747481))

(assert (= (and b!1747482 (not c!285158)) b!1747479))

(assert (= (and b!1747479 c!285156) b!1747485))

(assert (= (and b!1747479 (not c!285156)) b!1747484))

(assert (= (and b!1747484 c!285159) b!1747483))

(assert (= (and b!1747484 (not c!285159)) b!1747477))

(assert (= (or b!1747483 b!1747477) bm!110343))

(assert (= (or b!1747485 bm!110343) bm!110341))

(assert (= (or b!1747481 bm!110341) bm!110344))

(assert (= (or b!1747481 b!1747483) bm!110342))

(assert (=> bm!110342 m!2157719))

(declare-fun m!2160051 () Bool)

(assert (=> bm!110342 m!2160051))

(declare-fun m!2160053 () Bool)

(assert (=> b!1747484 m!2160053))

(declare-fun m!2160055 () Bool)

(assert (=> d!534298 m!2160055))

(assert (=> d!534298 m!2157733))

(assert (=> bm!110344 m!2157719))

(declare-fun m!2160057 () Bool)

(assert (=> bm!110344 m!2160057))

(assert (=> b!1745791 d!534298))

(assert (=> b!1745791 d!533984))

(assert (=> b!1745791 d!533788))

(assert (=> b!1745858 d!534190))

(declare-fun b!1747487 () Bool)

(declare-fun e!1118204 () List!19259)

(declare-fun e!1118205 () List!19259)

(assert (=> b!1747487 (= e!1118204 e!1118205)))

(declare-fun c!285162 () Bool)

(assert (=> b!1747487 (= c!285162 ((_ is Leaf!9313) (c!284767 (charsOf!2068 token!523))))))

(declare-fun d!534300 () Bool)

(declare-fun c!285161 () Bool)

(assert (=> d!534300 (= c!285161 ((_ is Empty!6383) (c!284767 (charsOf!2068 token!523))))))

(assert (=> d!534300 (= (list!7771 (c!284767 (charsOf!2068 token!523))) e!1118204)))

(declare-fun b!1747486 () Bool)

(assert (=> b!1747486 (= e!1118204 Nil!19189)))

(declare-fun b!1747488 () Bool)

(assert (=> b!1747488 (= e!1118205 (list!7774 (xs!9259 (c!284767 (charsOf!2068 token!523)))))))

(declare-fun b!1747489 () Bool)

(assert (=> b!1747489 (= e!1118205 (++!5244 (list!7771 (left!15342 (c!284767 (charsOf!2068 token!523)))) (list!7771 (right!15672 (c!284767 (charsOf!2068 token!523))))))))

(assert (= (and d!534300 c!285161) b!1747486))

(assert (= (and d!534300 (not c!285161)) b!1747487))

(assert (= (and b!1747487 c!285162) b!1747488))

(assert (= (and b!1747487 (not c!285162)) b!1747489))

(declare-fun m!2160059 () Bool)

(assert (=> b!1747488 m!2160059))

(declare-fun m!2160061 () Bool)

(assert (=> b!1747489 m!2160061))

(declare-fun m!2160063 () Bool)

(assert (=> b!1747489 m!2160063))

(assert (=> b!1747489 m!2160061))

(assert (=> b!1747489 m!2160063))

(declare-fun m!2160065 () Bool)

(assert (=> b!1747489 m!2160065))

(assert (=> d!533436 d!534300))

(assert (=> b!1745789 d!533786))

(assert (=> b!1745789 d!533788))

(declare-fun bs!403408 () Bool)

(declare-fun d!534302 () Bool)

(assert (= bs!403408 (and d!534302 d!534248)))

(declare-fun lambda!69781 () Int)

(assert (=> bs!403408 (= (and (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 rule!422))) (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 rule!422)))) (= lambda!69781 lambda!69778))))

(declare-fun bs!403409 () Bool)

(assert (= bs!403409 (and d!534302 d!533462)))

(assert (=> bs!403409 (= (and (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (= lambda!69781 lambda!69716))))

(declare-fun bs!403410 () Bool)

(assert (= bs!403410 (and d!534302 b!1745597)))

(assert (=> bs!403410 (= (and (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (= lambda!69781 lambda!69710))))

(declare-fun bs!403411 () Bool)

(assert (= bs!403411 (and d!534302 d!534284)))

(assert (=> bs!403411 (= (and (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (= lambda!69781 lambda!69780))))

(declare-fun bs!403412 () Bool)

(assert (= bs!403412 (and d!534302 d!534206)))

(assert (=> bs!403412 (= (and (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (h!24591 rules!3447)))) (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (h!24591 rules!3447))))) (= lambda!69781 lambda!69770))))

(assert (=> d!534302 true))

(assert (=> d!534302 (< (dynLambda!9088 order!11995 (toChars!4789 (transformation!3419 (rule!5423 token!523)))) (dynLambda!9087 order!11993 lambda!69781))))

(assert (=> d!534302 true))

(assert (=> d!534302 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 (rule!5423 token!523)))) (dynLambda!9087 order!11993 lambda!69781))))

(assert (=> d!534302 (= (semiInverseModEq!1355 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 token!523)))) (Forall!788 lambda!69781))))

(declare-fun bs!403413 () Bool)

(assert (= bs!403413 d!534302))

(declare-fun m!2160067 () Bool)

(assert (=> bs!403413 m!2160067))

(assert (=> d!533456 d!534302))

(assert (=> b!1746167 d!534190))

(assert (=> b!1746167 d!534204))

(declare-fun d!534304 () Bool)

(assert (=> d!534304 (= (nullable!1441 (regex!3419 (rule!5423 (_1!10817 lt!673096)))) (nullableFct!329 (regex!3419 (rule!5423 (_1!10817 lt!673096)))))))

(declare-fun bs!403414 () Bool)

(assert (= bs!403414 d!534304))

(declare-fun m!2160069 () Bool)

(assert (=> bs!403414 m!2160069))

(assert (=> b!1745857 d!534304))

(assert (=> b!1745772 d!533736))

(declare-fun d!534306 () Bool)

(declare-fun lt!673625 () Int)

(assert (=> d!534306 (>= lt!673625 0)))

(declare-fun e!1118206 () Int)

(assert (=> d!534306 (= lt!673625 e!1118206)))

(declare-fun c!285163 () Bool)

(assert (=> d!534306 (= c!285163 ((_ is Nil!19189) (_2!10817 (get!5789 lt!673174))))))

(assert (=> d!534306 (= (size!15236 (_2!10817 (get!5789 lt!673174))) lt!673625)))

(declare-fun b!1747490 () Bool)

(assert (=> b!1747490 (= e!1118206 0)))

(declare-fun b!1747491 () Bool)

(assert (=> b!1747491 (= e!1118206 (+ 1 (size!15236 (t!162264 (_2!10817 (get!5789 lt!673174))))))))

(assert (= (and d!534306 c!285163) b!1747490))

(assert (= (and d!534306 (not c!285163)) b!1747491))

(declare-fun m!2160071 () Bool)

(assert (=> b!1747491 m!2160071))

(assert (=> b!1745832 d!534306))

(assert (=> b!1745832 d!533800))

(assert (=> b!1745832 d!533828))

(declare-fun d!534308 () Bool)

(declare-fun lt!673626 () Int)

(assert (=> d!534308 (>= lt!673626 0)))

(declare-fun e!1118207 () Int)

(assert (=> d!534308 (= lt!673626 e!1118207)))

(declare-fun c!285164 () Bool)

(assert (=> d!534308 (= c!285164 ((_ is Nil!19189) lt!673337))))

(assert (=> d!534308 (= (size!15236 lt!673337) lt!673626)))

(declare-fun b!1747492 () Bool)

(assert (=> b!1747492 (= e!1118207 0)))

(declare-fun b!1747493 () Bool)

(assert (=> b!1747493 (= e!1118207 (+ 1 (size!15236 (t!162264 lt!673337))))))

(assert (= (and d!534308 c!285164) b!1747492))

(assert (= (and d!534308 (not c!285164)) b!1747493))

(declare-fun m!2160073 () Bool)

(assert (=> b!1747493 m!2160073))

(assert (=> b!1746172 d!534308))

(assert (=> b!1746172 d!533976))

(declare-fun d!534310 () Bool)

(declare-fun lt!673627 () Int)

(assert (=> d!534310 (>= lt!673627 0)))

(declare-fun e!1118208 () Int)

(assert (=> d!534310 (= lt!673627 e!1118208)))

(declare-fun c!285165 () Bool)

(assert (=> d!534310 (= c!285165 ((_ is Nil!19189) (_2!10817 lt!673096)))))

(assert (=> d!534310 (= (size!15236 (_2!10817 lt!673096)) lt!673627)))

(declare-fun b!1747494 () Bool)

(assert (=> b!1747494 (= e!1118208 0)))

(declare-fun b!1747495 () Bool)

(assert (=> b!1747495 (= e!1118208 (+ 1 (size!15236 (t!162264 (_2!10817 lt!673096)))))))

(assert (= (and d!534310 c!285165) b!1747494))

(assert (= (and d!534310 (not c!285165)) b!1747495))

(declare-fun m!2160075 () Bool)

(assert (=> b!1747495 m!2160075))

(assert (=> b!1746172 d!534310))

(declare-fun d!534312 () Bool)

(assert (=> d!534312 (= (isEmpty!12090 lt!673093) (not ((_ is Some!3861) lt!673093)))))

(assert (=> d!533610 d!534312))

(declare-fun b!1747496 () Bool)

(declare-fun e!1118210 () Option!3863)

(declare-fun lt!673628 () tuple2!18838)

(assert (=> b!1747496 (= e!1118210 (Some!3862 (tuple2!18831 (Token!6405 (apply!5220 (transformation!3419 (rule!5423 lt!673320)) (seqFromList!2389 (_1!10821 lt!673628))) (rule!5423 lt!673320) (size!15234 (seqFromList!2389 (_1!10821 lt!673628))) (_1!10821 lt!673628)) (_2!10821 lt!673628))))))

(declare-fun lt!673630 () Unit!33261)

(assert (=> b!1747496 (= lt!673630 (longestMatchIsAcceptedByMatchOrIsEmpty!411 (regex!3419 (rule!5423 lt!673320)) lt!673321))))

(declare-fun res!785803 () Bool)

(assert (=> b!1747496 (= res!785803 (isEmpty!12086 (_1!10821 (findLongestMatchInner!427 (regex!3419 (rule!5423 lt!673320)) Nil!19189 (size!15236 Nil!19189) lt!673321 lt!673321 (size!15236 lt!673321)))))))

(declare-fun e!1118209 () Bool)

(assert (=> b!1747496 (=> res!785803 e!1118209)))

(assert (=> b!1747496 e!1118209))

(declare-fun lt!673629 () Unit!33261)

(assert (=> b!1747496 (= lt!673629 lt!673630)))

(declare-fun lt!673631 () Unit!33261)

(assert (=> b!1747496 (= lt!673631 (lemmaSemiInverse!559 (transformation!3419 (rule!5423 lt!673320)) (seqFromList!2389 (_1!10821 lt!673628))))))

(declare-fun b!1747497 () Bool)

(declare-fun res!785806 () Bool)

(declare-fun e!1118211 () Bool)

(assert (=> b!1747497 (=> (not res!785806) (not e!1118211))))

(declare-fun lt!673632 () Option!3863)

(assert (=> b!1747497 (= res!785806 (< (size!15236 (_2!10817 (get!5789 lt!673632))) (size!15236 lt!673321)))))

(declare-fun b!1747498 () Bool)

(declare-fun res!785801 () Bool)

(assert (=> b!1747498 (=> (not res!785801) (not e!1118211))))

(assert (=> b!1747498 (= res!785801 (= (value!107114 (_1!10817 (get!5789 lt!673632))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673632)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673632)))))))))

(declare-fun b!1747499 () Bool)

(declare-fun res!785805 () Bool)

(assert (=> b!1747499 (=> (not res!785805) (not e!1118211))))

(assert (=> b!1747499 (= res!785805 (= (rule!5423 (_1!10817 (get!5789 lt!673632))) (rule!5423 lt!673320)))))

(declare-fun b!1747500 () Bool)

(assert (=> b!1747500 (= e!1118209 (matchR!2221 (regex!3419 (rule!5423 lt!673320)) (_1!10821 (findLongestMatchInner!427 (regex!3419 (rule!5423 lt!673320)) Nil!19189 (size!15236 Nil!19189) lt!673321 lt!673321 (size!15236 lt!673321)))))))

(declare-fun b!1747501 () Bool)

(declare-fun e!1118212 () Bool)

(assert (=> b!1747501 (= e!1118212 e!1118211)))

(declare-fun res!785802 () Bool)

(assert (=> b!1747501 (=> (not res!785802) (not e!1118211))))

(assert (=> b!1747501 (= res!785802 (matchR!2221 (regex!3419 (rule!5423 lt!673320)) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673632))))))))

(declare-fun b!1747502 () Bool)

(assert (=> b!1747502 (= e!1118211 (= (size!15233 (_1!10817 (get!5789 lt!673632))) (size!15236 (originalCharacters!4233 (_1!10817 (get!5789 lt!673632))))))))

(declare-fun b!1747503 () Bool)

(assert (=> b!1747503 (= e!1118210 None!3862)))

(declare-fun d!534314 () Bool)

(assert (=> d!534314 e!1118212))

(declare-fun res!785800 () Bool)

(assert (=> d!534314 (=> res!785800 e!1118212)))

(assert (=> d!534314 (= res!785800 (isEmpty!12089 lt!673632))))

(assert (=> d!534314 (= lt!673632 e!1118210)))

(declare-fun c!285166 () Bool)

(assert (=> d!534314 (= c!285166 (isEmpty!12086 (_1!10821 lt!673628)))))

(assert (=> d!534314 (= lt!673628 (findLongestMatch!354 (regex!3419 (rule!5423 lt!673320)) lt!673321))))

(assert (=> d!534314 (ruleValid!918 thiss!24550 (rule!5423 lt!673320))))

(assert (=> d!534314 (= (maxPrefixOneRule!974 thiss!24550 (rule!5423 lt!673320) lt!673321) lt!673632)))

(declare-fun b!1747504 () Bool)

(declare-fun res!785804 () Bool)

(assert (=> b!1747504 (=> (not res!785804) (not e!1118211))))

(assert (=> b!1747504 (= res!785804 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673632)))) (_2!10817 (get!5789 lt!673632))) lt!673321))))

(assert (= (and d!534314 c!285166) b!1747503))

(assert (= (and d!534314 (not c!285166)) b!1747496))

(assert (= (and b!1747496 (not res!785803)) b!1747500))

(assert (= (and d!534314 (not res!785800)) b!1747501))

(assert (= (and b!1747501 res!785802) b!1747504))

(assert (= (and b!1747504 res!785804) b!1747497))

(assert (= (and b!1747497 res!785806) b!1747499))

(assert (= (and b!1747499 res!785805) b!1747498))

(assert (= (and b!1747498 res!785801) b!1747502))

(declare-fun m!2160077 () Bool)

(assert (=> b!1747502 m!2160077))

(declare-fun m!2160079 () Bool)

(assert (=> b!1747502 m!2160079))

(assert (=> b!1747500 m!2159083))

(declare-fun m!2160081 () Bool)

(assert (=> b!1747500 m!2160081))

(assert (=> b!1747500 m!2159083))

(assert (=> b!1747500 m!2160081))

(declare-fun m!2160083 () Bool)

(assert (=> b!1747500 m!2160083))

(declare-fun m!2160085 () Bool)

(assert (=> b!1747500 m!2160085))

(assert (=> b!1747501 m!2160077))

(declare-fun m!2160087 () Bool)

(assert (=> b!1747501 m!2160087))

(assert (=> b!1747501 m!2160087))

(declare-fun m!2160089 () Bool)

(assert (=> b!1747501 m!2160089))

(assert (=> b!1747501 m!2160089))

(declare-fun m!2160091 () Bool)

(assert (=> b!1747501 m!2160091))

(assert (=> b!1747499 m!2160077))

(assert (=> b!1747498 m!2160077))

(declare-fun m!2160093 () Bool)

(assert (=> b!1747498 m!2160093))

(assert (=> b!1747498 m!2160093))

(declare-fun m!2160095 () Bool)

(assert (=> b!1747498 m!2160095))

(assert (=> b!1747497 m!2160077))

(declare-fun m!2160097 () Bool)

(assert (=> b!1747497 m!2160097))

(assert (=> b!1747497 m!2160081))

(assert (=> b!1747504 m!2160077))

(assert (=> b!1747504 m!2160087))

(assert (=> b!1747504 m!2160087))

(assert (=> b!1747504 m!2160089))

(assert (=> b!1747504 m!2160089))

(declare-fun m!2160099 () Bool)

(assert (=> b!1747504 m!2160099))

(declare-fun m!2160101 () Bool)

(assert (=> d!534314 m!2160101))

(declare-fun m!2160103 () Bool)

(assert (=> d!534314 m!2160103))

(declare-fun m!2160105 () Bool)

(assert (=> d!534314 m!2160105))

(declare-fun m!2160107 () Bool)

(assert (=> d!534314 m!2160107))

(assert (=> b!1747496 m!2160081))

(declare-fun m!2160109 () Bool)

(assert (=> b!1747496 m!2160109))

(declare-fun m!2160111 () Bool)

(assert (=> b!1747496 m!2160111))

(assert (=> b!1747496 m!2160109))

(declare-fun m!2160113 () Bool)

(assert (=> b!1747496 m!2160113))

(assert (=> b!1747496 m!2159083))

(declare-fun m!2160115 () Bool)

(assert (=> b!1747496 m!2160115))

(assert (=> b!1747496 m!2160109))

(declare-fun m!2160117 () Bool)

(assert (=> b!1747496 m!2160117))

(assert (=> b!1747496 m!2159083))

(assert (=> b!1747496 m!2160081))

(assert (=> b!1747496 m!2160083))

(assert (=> b!1747496 m!2160109))

(declare-fun m!2160119 () Bool)

(assert (=> b!1747496 m!2160119))

(assert (=> b!1746164 d!534314))

(declare-fun d!534316 () Bool)

(assert (=> d!534316 (not (matchR!2221 (regex!3419 (rule!5423 lt!673320)) lt!673330))))

(declare-fun lt!673635 () Unit!33261)

(declare-fun choose!10777 (LexerInterface!3048 Rule!6638 List!19259 List!19259) Unit!33261)

(assert (=> d!534316 (= lt!673635 (choose!10777 thiss!24550 (rule!5423 lt!673320) lt!673330 (++!5244 lt!673098 suffix!1421)))))

(assert (=> d!534316 (isPrefix!1660 lt!673330 (++!5244 lt!673098 suffix!1421))))

(assert (=> d!534316 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!295 thiss!24550 (rule!5423 lt!673320) lt!673330 (++!5244 lt!673098 suffix!1421)) lt!673635)))

(declare-fun bs!403415 () Bool)

(assert (= bs!403415 d!534316))

(assert (=> bs!403415 m!2158255))

(assert (=> bs!403415 m!2157537))

(declare-fun m!2160121 () Bool)

(assert (=> bs!403415 m!2160121))

(assert (=> bs!403415 m!2157537))

(declare-fun m!2160123 () Bool)

(assert (=> bs!403415 m!2160123))

(assert (=> b!1746164 d!534316))

(declare-fun d!534318 () Bool)

(assert (=> d!534318 (= (isEmpty!12089 (maxPrefixOneRule!974 thiss!24550 (rule!5423 lt!673320) lt!673321)) (not ((_ is Some!3862) (maxPrefixOneRule!974 thiss!24550 (rule!5423 lt!673320) lt!673321))))))

(assert (=> b!1746164 d!534318))

(declare-fun b!1747505 () Bool)

(declare-fun e!1118216 () Bool)

(declare-fun lt!673636 () Bool)

(declare-fun call!110350 () Bool)

(assert (=> b!1747505 (= e!1118216 (= lt!673636 call!110350))))

(declare-fun b!1747506 () Bool)

(declare-fun e!1118218 () Bool)

(assert (=> b!1747506 (= e!1118218 (not lt!673636))))

(declare-fun b!1747507 () Bool)

(declare-fun e!1118217 () Bool)

(assert (=> b!1747507 (= e!1118217 (nullable!1441 (regex!3419 (rule!5423 lt!673320))))))

(declare-fun bm!110345 () Bool)

(assert (=> bm!110345 (= call!110350 (isEmpty!12086 lt!673330))))

(declare-fun b!1747508 () Bool)

(declare-fun e!1118213 () Bool)

(assert (=> b!1747508 (= e!1118213 (not (= (head!4010 lt!673330) (c!284766 (regex!3419 (rule!5423 lt!673320))))))))

(declare-fun b!1747509 () Bool)

(declare-fun res!785814 () Bool)

(declare-fun e!1118219 () Bool)

(assert (=> b!1747509 (=> (not res!785814) (not e!1118219))))

(assert (=> b!1747509 (= res!785814 (isEmpty!12086 (tail!2609 lt!673330)))))

(declare-fun b!1747510 () Bool)

(declare-fun e!1118214 () Bool)

(declare-fun e!1118215 () Bool)

(assert (=> b!1747510 (= e!1118214 e!1118215)))

(declare-fun res!785809 () Bool)

(assert (=> b!1747510 (=> (not res!785809) (not e!1118215))))

(assert (=> b!1747510 (= res!785809 (not lt!673636))))

(declare-fun b!1747511 () Bool)

(declare-fun res!785810 () Bool)

(assert (=> b!1747511 (=> res!785810 e!1118214)))

(assert (=> b!1747511 (= res!785810 e!1118219)))

(declare-fun res!785811 () Bool)

(assert (=> b!1747511 (=> (not res!785811) (not e!1118219))))

(assert (=> b!1747511 (= res!785811 lt!673636)))

(declare-fun b!1747512 () Bool)

(assert (=> b!1747512 (= e!1118216 e!1118218)))

(declare-fun c!285168 () Bool)

(assert (=> b!1747512 (= c!285168 ((_ is EmptyLang!4747) (regex!3419 (rule!5423 lt!673320))))))

(declare-fun b!1747513 () Bool)

(declare-fun res!785807 () Bool)

(assert (=> b!1747513 (=> (not res!785807) (not e!1118219))))

(assert (=> b!1747513 (= res!785807 (not call!110350))))

(declare-fun b!1747514 () Bool)

(declare-fun res!785813 () Bool)

(assert (=> b!1747514 (=> res!785813 e!1118213)))

(assert (=> b!1747514 (= res!785813 (not (isEmpty!12086 (tail!2609 lt!673330))))))

(declare-fun b!1747515 () Bool)

(assert (=> b!1747515 (= e!1118215 e!1118213)))

(declare-fun res!785808 () Bool)

(assert (=> b!1747515 (=> res!785808 e!1118213)))

(assert (=> b!1747515 (= res!785808 call!110350)))

(declare-fun b!1747516 () Bool)

(assert (=> b!1747516 (= e!1118217 (matchR!2221 (derivativeStep!1210 (regex!3419 (rule!5423 lt!673320)) (head!4010 lt!673330)) (tail!2609 lt!673330)))))

(declare-fun b!1747517 () Bool)

(assert (=> b!1747517 (= e!1118219 (= (head!4010 lt!673330) (c!284766 (regex!3419 (rule!5423 lt!673320)))))))

(declare-fun b!1747518 () Bool)

(declare-fun res!785812 () Bool)

(assert (=> b!1747518 (=> res!785812 e!1118214)))

(assert (=> b!1747518 (= res!785812 (not ((_ is ElementMatch!4747) (regex!3419 (rule!5423 lt!673320)))))))

(assert (=> b!1747518 (= e!1118218 e!1118214)))

(declare-fun d!534320 () Bool)

(assert (=> d!534320 e!1118216))

(declare-fun c!285169 () Bool)

(assert (=> d!534320 (= c!285169 ((_ is EmptyExpr!4747) (regex!3419 (rule!5423 lt!673320))))))

(assert (=> d!534320 (= lt!673636 e!1118217)))

(declare-fun c!285167 () Bool)

(assert (=> d!534320 (= c!285167 (isEmpty!12086 lt!673330))))

(assert (=> d!534320 (validRegex!1915 (regex!3419 (rule!5423 lt!673320)))))

(assert (=> d!534320 (= (matchR!2221 (regex!3419 (rule!5423 lt!673320)) lt!673330) lt!673636)))

(assert (= (and d!534320 c!285167) b!1747507))

(assert (= (and d!534320 (not c!285167)) b!1747516))

(assert (= (and d!534320 c!285169) b!1747505))

(assert (= (and d!534320 (not c!285169)) b!1747512))

(assert (= (and b!1747512 c!285168) b!1747506))

(assert (= (and b!1747512 (not c!285168)) b!1747518))

(assert (= (and b!1747518 (not res!785812)) b!1747511))

(assert (= (and b!1747511 res!785811) b!1747513))

(assert (= (and b!1747513 res!785807) b!1747509))

(assert (= (and b!1747509 res!785814) b!1747517))

(assert (= (and b!1747511 (not res!785810)) b!1747510))

(assert (= (and b!1747510 res!785809) b!1747515))

(assert (= (and b!1747515 (not res!785808)) b!1747514))

(assert (= (and b!1747514 (not res!785813)) b!1747508))

(assert (= (or b!1747505 b!1747515 b!1747513) bm!110345))

(declare-fun m!2160125 () Bool)

(assert (=> b!1747516 m!2160125))

(assert (=> b!1747516 m!2160125))

(declare-fun m!2160127 () Bool)

(assert (=> b!1747516 m!2160127))

(declare-fun m!2160129 () Bool)

(assert (=> b!1747516 m!2160129))

(assert (=> b!1747516 m!2160127))

(assert (=> b!1747516 m!2160129))

(declare-fun m!2160131 () Bool)

(assert (=> b!1747516 m!2160131))

(declare-fun m!2160133 () Bool)

(assert (=> bm!110345 m!2160133))

(assert (=> b!1747509 m!2160129))

(assert (=> b!1747509 m!2160129))

(declare-fun m!2160135 () Bool)

(assert (=> b!1747509 m!2160135))

(assert (=> b!1747514 m!2160129))

(assert (=> b!1747514 m!2160129))

(assert (=> b!1747514 m!2160135))

(declare-fun m!2160137 () Bool)

(assert (=> b!1747507 m!2160137))

(assert (=> b!1747517 m!2160125))

(assert (=> b!1747508 m!2160125))

(assert (=> d!534320 m!2160133))

(declare-fun m!2160139 () Bool)

(assert (=> d!534320 m!2160139))

(assert (=> b!1746164 d!534320))

(assert (=> b!1746164 d!533958))

(assert (=> b!1746164 d!533608))

(assert (=> b!1746164 d!533954))

(declare-fun d!534322 () Bool)

(assert (=> d!534322 (isEmpty!12089 (maxPrefixOneRule!974 thiss!24550 (rule!5423 lt!673320) lt!673321))))

(declare-fun lt!673639 () Unit!33261)

(declare-fun choose!10778 (LexerInterface!3048 Rule!6638 List!19260 List!19259) Unit!33261)

(assert (=> d!534322 (= lt!673639 (choose!10778 thiss!24550 (rule!5423 lt!673320) rules!3447 lt!673321))))

(assert (=> d!534322 (not (isEmpty!12085 rules!3447))))

(assert (=> d!534322 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!299 thiss!24550 (rule!5423 lt!673320) rules!3447 lt!673321) lt!673639)))

(declare-fun bs!403416 () Bool)

(assert (= bs!403416 d!534322))

(assert (=> bs!403416 m!2158253))

(assert (=> bs!403416 m!2158253))

(assert (=> bs!403416 m!2158259))

(declare-fun m!2160141 () Bool)

(assert (=> bs!403416 m!2160141))

(assert (=> bs!403416 m!2157585))

(assert (=> b!1746164 d!534322))

(declare-fun b!1747519 () Bool)

(declare-fun e!1118220 () Bool)

(declare-fun e!1118221 () Bool)

(assert (=> b!1747519 (= e!1118220 e!1118221)))

(declare-fun res!785819 () Bool)

(assert (=> b!1747519 (=> (not res!785819) (not e!1118221))))

(declare-fun lt!673640 () Option!3863)

(assert (=> b!1747519 (= res!785819 (isDefined!3206 lt!673640))))

(declare-fun b!1747520 () Bool)

(declare-fun res!785818 () Bool)

(assert (=> b!1747520 (=> (not res!785818) (not e!1118221))))

(assert (=> b!1747520 (= res!785818 (matchR!2221 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673640)))) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673640))))))))

(declare-fun bm!110346 () Bool)

(declare-fun call!110351 () Option!3863)

(assert (=> bm!110346 (= call!110351 (maxPrefixOneRule!974 thiss!24550 (h!24591 (t!162265 rules!3447)) lt!673091))))

(declare-fun b!1747521 () Bool)

(declare-fun e!1118222 () Option!3863)

(declare-fun lt!673641 () Option!3863)

(declare-fun lt!673642 () Option!3863)

(assert (=> b!1747521 (= e!1118222 (ite (and ((_ is None!3862) lt!673641) ((_ is None!3862) lt!673642)) None!3862 (ite ((_ is None!3862) lt!673642) lt!673641 (ite ((_ is None!3862) lt!673641) lt!673642 (ite (>= (size!15233 (_1!10817 (v!25301 lt!673641))) (size!15233 (_1!10817 (v!25301 lt!673642)))) lt!673641 lt!673642)))))))

(assert (=> b!1747521 (= lt!673641 call!110351)))

(assert (=> b!1747521 (= lt!673642 (maxPrefix!1602 thiss!24550 (t!162265 (t!162265 rules!3447)) lt!673091))))

(declare-fun b!1747522 () Bool)

(declare-fun res!785820 () Bool)

(assert (=> b!1747522 (=> (not res!785820) (not e!1118221))))

(assert (=> b!1747522 (= res!785820 (= (value!107114 (_1!10817 (get!5789 lt!673640))) (apply!5220 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673640)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 (get!5789 lt!673640)))))))))

(declare-fun d!534324 () Bool)

(assert (=> d!534324 e!1118220))

(declare-fun res!785821 () Bool)

(assert (=> d!534324 (=> res!785821 e!1118220)))

(assert (=> d!534324 (= res!785821 (isEmpty!12089 lt!673640))))

(assert (=> d!534324 (= lt!673640 e!1118222)))

(declare-fun c!285170 () Bool)

(assert (=> d!534324 (= c!285170 (and ((_ is Cons!19190) (t!162265 rules!3447)) ((_ is Nil!19190) (t!162265 (t!162265 rules!3447)))))))

(declare-fun lt!673643 () Unit!33261)

(declare-fun lt!673644 () Unit!33261)

(assert (=> d!534324 (= lt!673643 lt!673644)))

(assert (=> d!534324 (isPrefix!1660 lt!673091 lt!673091)))

(assert (=> d!534324 (= lt!673644 (lemmaIsPrefixRefl!1107 lt!673091 lt!673091))))

(assert (=> d!534324 (rulesValidInductive!1144 thiss!24550 (t!162265 rules!3447))))

(assert (=> d!534324 (= (maxPrefix!1602 thiss!24550 (t!162265 rules!3447) lt!673091) lt!673640)))

(declare-fun b!1747523 () Bool)

(declare-fun res!785816 () Bool)

(assert (=> b!1747523 (=> (not res!785816) (not e!1118221))))

(assert (=> b!1747523 (= res!785816 (= (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673640)))) (originalCharacters!4233 (_1!10817 (get!5789 lt!673640)))))))

(declare-fun b!1747524 () Bool)

(assert (=> b!1747524 (= e!1118222 call!110351)))

(declare-fun b!1747525 () Bool)

(assert (=> b!1747525 (= e!1118221 (contains!3443 (t!162265 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673640)))))))

(declare-fun b!1747526 () Bool)

(declare-fun res!785815 () Bool)

(assert (=> b!1747526 (=> (not res!785815) (not e!1118221))))

(assert (=> b!1747526 (= res!785815 (= (++!5244 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673640)))) (_2!10817 (get!5789 lt!673640))) lt!673091))))

(declare-fun b!1747527 () Bool)

(declare-fun res!785817 () Bool)

(assert (=> b!1747527 (=> (not res!785817) (not e!1118221))))

(assert (=> b!1747527 (= res!785817 (< (size!15236 (_2!10817 (get!5789 lt!673640))) (size!15236 lt!673091)))))

(assert (= (and d!534324 c!285170) b!1747524))

(assert (= (and d!534324 (not c!285170)) b!1747521))

(assert (= (or b!1747524 b!1747521) bm!110346))

(assert (= (and d!534324 (not res!785821)) b!1747519))

(assert (= (and b!1747519 res!785819) b!1747523))

(assert (= (and b!1747523 res!785816) b!1747527))

(assert (= (and b!1747527 res!785817) b!1747526))

(assert (= (and b!1747526 res!785815) b!1747522))

(assert (= (and b!1747522 res!785820) b!1747520))

(assert (= (and b!1747520 res!785818) b!1747525))

(declare-fun m!2160143 () Bool)

(assert (=> b!1747527 m!2160143))

(declare-fun m!2160145 () Bool)

(assert (=> b!1747527 m!2160145))

(assert (=> b!1747527 m!2158053))

(assert (=> b!1747520 m!2160143))

(declare-fun m!2160147 () Bool)

(assert (=> b!1747520 m!2160147))

(assert (=> b!1747520 m!2160147))

(declare-fun m!2160149 () Bool)

(assert (=> b!1747520 m!2160149))

(assert (=> b!1747520 m!2160149))

(declare-fun m!2160151 () Bool)

(assert (=> b!1747520 m!2160151))

(assert (=> b!1747523 m!2160143))

(assert (=> b!1747523 m!2160147))

(assert (=> b!1747523 m!2160147))

(assert (=> b!1747523 m!2160149))

(assert (=> b!1747525 m!2160143))

(declare-fun m!2160153 () Bool)

(assert (=> b!1747525 m!2160153))

(declare-fun m!2160155 () Bool)

(assert (=> d!534324 m!2160155))

(assert (=> d!534324 m!2158065))

(assert (=> d!534324 m!2158067))

(assert (=> d!534324 m!2159145))

(assert (=> b!1747526 m!2160143))

(assert (=> b!1747526 m!2160147))

(assert (=> b!1747526 m!2160147))

(assert (=> b!1747526 m!2160149))

(assert (=> b!1747526 m!2160149))

(declare-fun m!2160157 () Bool)

(assert (=> b!1747526 m!2160157))

(assert (=> b!1747522 m!2160143))

(declare-fun m!2160159 () Bool)

(assert (=> b!1747522 m!2160159))

(assert (=> b!1747522 m!2160159))

(declare-fun m!2160161 () Bool)

(assert (=> b!1747522 m!2160161))

(declare-fun m!2160163 () Bool)

(assert (=> bm!110346 m!2160163))

(declare-fun m!2160165 () Bool)

(assert (=> b!1747521 m!2160165))

(declare-fun m!2160167 () Bool)

(assert (=> b!1747519 m!2160167))

(assert (=> b!1745989 d!534324))

(assert (=> b!1746195 d!533952))

(assert (=> b!1746195 d!533828))

(declare-fun d!534326 () Bool)

(declare-fun res!785826 () Bool)

(declare-fun e!1118225 () Bool)

(assert (=> d!534326 (=> (not res!785826) (not e!1118225))))

(assert (=> d!534326 (= res!785826 (<= (size!15236 (list!7774 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) 512))))

(assert (=> d!534326 (= (inv!24874 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) e!1118225)))

(declare-fun b!1747532 () Bool)

(declare-fun res!785827 () Bool)

(assert (=> b!1747532 (=> (not res!785827) (not e!1118225))))

(assert (=> b!1747532 (= res!785827 (= (csize!12997 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) (size!15236 (list!7774 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))))))

(declare-fun b!1747533 () Bool)

(assert (=> b!1747533 (= e!1118225 (and (> (csize!12997 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) 0) (<= (csize!12997 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))) 512)))))

(assert (= (and d!534326 res!785826) b!1747532))

(assert (= (and b!1747532 res!785827) b!1747533))

(assert (=> d!534326 m!2158761))

(assert (=> d!534326 m!2158761))

(declare-fun m!2160169 () Bool)

(assert (=> d!534326 m!2160169))

(assert (=> b!1747532 m!2158761))

(assert (=> b!1747532 m!2158761))

(assert (=> b!1747532 m!2160169))

(assert (=> b!1745728 d!534326))

(declare-fun d!534328 () Bool)

(assert (=> d!534328 (= (nullable!1441 (regex!3419 lt!673088)) (nullableFct!329 (regex!3419 lt!673088)))))

(declare-fun bs!403417 () Bool)

(assert (= bs!403417 d!534328))

(declare-fun m!2160171 () Bool)

(assert (=> bs!403417 m!2160171))

(assert (=> b!1745782 d!534328))

(declare-fun d!534330 () Bool)

(declare-fun lt!673645 () Bool)

(assert (=> d!534330 (= lt!673645 (select (content!2759 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673250)))))))

(declare-fun e!1118227 () Bool)

(assert (=> d!534330 (= lt!673645 e!1118227)))

(declare-fun res!785829 () Bool)

(assert (=> d!534330 (=> (not res!785829) (not e!1118227))))

(assert (=> d!534330 (= res!785829 ((_ is Cons!19190) rules!3447))))

(assert (=> d!534330 (= (contains!3443 rules!3447 (rule!5423 (_1!10817 (get!5789 lt!673250)))) lt!673645)))

(declare-fun b!1747534 () Bool)

(declare-fun e!1118226 () Bool)

(assert (=> b!1747534 (= e!1118227 e!1118226)))

(declare-fun res!785828 () Bool)

(assert (=> b!1747534 (=> res!785828 e!1118226)))

(assert (=> b!1747534 (= res!785828 (= (h!24591 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673250)))))))

(declare-fun b!1747535 () Bool)

(assert (=> b!1747535 (= e!1118226 (contains!3443 (t!162265 rules!3447) (rule!5423 (_1!10817 (get!5789 lt!673250)))))))

(assert (= (and d!534330 res!785829) b!1747534))

(assert (= (and b!1747534 (not res!785828)) b!1747535))

(assert (=> d!534330 m!2157991))

(declare-fun m!2160173 () Bool)

(assert (=> d!534330 m!2160173))

(declare-fun m!2160175 () Bool)

(assert (=> b!1747535 m!2160175))

(assert (=> b!1745993 d!534330))

(assert (=> b!1745993 d!533950))

(assert (=> b!1745764 d!534242))

(assert (=> b!1745764 d!533738))

(declare-fun d!534332 () Bool)

(declare-fun c!285171 () Bool)

(assert (=> d!534332 (= c!285171 ((_ is Nil!19189) lt!673232))))

(declare-fun e!1118228 () (InoxSet C!9668))

(assert (=> d!534332 (= (content!2758 lt!673232) e!1118228)))

(declare-fun b!1747536 () Bool)

(assert (=> b!1747536 (= e!1118228 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1747537 () Bool)

(assert (=> b!1747537 (= e!1118228 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 lt!673232) true) (content!2758 (t!162264 lt!673232))))))

(assert (= (and d!534332 c!285171) b!1747536))

(assert (= (and d!534332 (not c!285171)) b!1747537))

(declare-fun m!2160177 () Bool)

(assert (=> b!1747537 m!2160177))

(declare-fun m!2160179 () Bool)

(assert (=> b!1747537 m!2160179))

(assert (=> d!533494 d!534332))

(assert (=> d!533494 d!533706))

(declare-fun d!534334 () Bool)

(declare-fun c!285172 () Bool)

(assert (=> d!534334 (= c!285172 ((_ is Nil!19189) (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))

(declare-fun e!1118229 () (InoxSet C!9668))

(assert (=> d!534334 (= (content!2758 (Cons!19189 (head!4010 suffix!1421) Nil!19189)) e!1118229)))

(declare-fun b!1747538 () Bool)

(assert (=> b!1747538 (= e!1118229 ((as const (Array C!9668 Bool)) false))))

(declare-fun b!1747539 () Bool)

(assert (=> b!1747539 (= e!1118229 ((_ map or) (store ((as const (Array C!9668 Bool)) false) (h!24590 (Cons!19189 (head!4010 suffix!1421) Nil!19189)) true) (content!2758 (t!162264 (Cons!19189 (head!4010 suffix!1421) Nil!19189)))))))

(assert (= (and d!534334 c!285172) b!1747538))

(assert (= (and d!534334 (not c!285172)) b!1747539))

(declare-fun m!2160181 () Bool)

(assert (=> b!1747539 m!2160181))

(declare-fun m!2160183 () Bool)

(assert (=> b!1747539 m!2160183))

(assert (=> d!533494 d!534334))

(declare-fun d!534336 () Bool)

(assert (=> d!534336 (= (isDefined!3206 lt!673250) (not (isEmpty!12089 lt!673250)))))

(declare-fun bs!403418 () Bool)

(assert (= bs!403418 d!534336))

(assert (=> bs!403418 m!2158063))

(assert (=> b!1745987 d!534336))

(declare-fun b!1747540 () Bool)

(declare-fun res!785835 () Bool)

(declare-fun e!1118231 () Bool)

(assert (=> b!1747540 (=> (not res!785835) (not e!1118231))))

(assert (=> b!1747540 (= res!785835 (isBalanced!1994 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(declare-fun b!1747541 () Bool)

(declare-fun res!785832 () Bool)

(assert (=> b!1747541 (=> (not res!785832) (not e!1118231))))

(assert (=> b!1747541 (= res!785832 (<= (- (height!1003 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) (height!1003 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) 1))))

(declare-fun b!1747542 () Bool)

(assert (=> b!1747542 (= e!1118231 (not (isEmpty!12095 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))))

(declare-fun d!534338 () Bool)

(declare-fun res!785831 () Bool)

(declare-fun e!1118230 () Bool)

(assert (=> d!534338 (=> res!785831 e!1118230)))

(assert (=> d!534338 (= res!785831 (not ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(assert (=> d!534338 (= (isBalanced!1994 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) e!1118230)))

(declare-fun b!1747543 () Bool)

(assert (=> b!1747543 (= e!1118230 e!1118231)))

(declare-fun res!785833 () Bool)

(assert (=> b!1747543 (=> (not res!785833) (not e!1118231))))

(assert (=> b!1747543 (= res!785833 (<= (- 1) (- (height!1003 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) (height!1003 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))))

(declare-fun b!1747544 () Bool)

(declare-fun res!785830 () Bool)

(assert (=> b!1747544 (=> (not res!785830) (not e!1118231))))

(assert (=> b!1747544 (= res!785830 (isBalanced!1994 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))

(declare-fun b!1747545 () Bool)

(declare-fun res!785834 () Bool)

(assert (=> b!1747545 (=> (not res!785834) (not e!1118231))))

(assert (=> b!1747545 (= res!785834 (not (isEmpty!12095 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))))))

(assert (= (and d!534338 (not res!785831)) b!1747543))

(assert (= (and b!1747543 res!785833) b!1747541))

(assert (= (and b!1747541 res!785832) b!1747544))

(assert (= (and b!1747544 res!785830) b!1747540))

(assert (= (and b!1747540 res!785835) b!1747545))

(assert (= (and b!1747545 res!785834) b!1747542))

(declare-fun m!2160185 () Bool)

(assert (=> b!1747542 m!2160185))

(declare-fun m!2160187 () Bool)

(assert (=> b!1747545 m!2160187))

(declare-fun m!2160189 () Bool)

(assert (=> b!1747540 m!2160189))

(declare-fun m!2160191 () Bool)

(assert (=> b!1747544 m!2160191))

(assert (=> b!1747541 m!2159853))

(assert (=> b!1747541 m!2159855))

(assert (=> b!1747543 m!2159853))

(assert (=> b!1747543 m!2159855))

(assert (=> d!533510 d!534338))

(declare-fun d!534340 () Bool)

(declare-fun lostCauseFct!185 (Regex!4747) Bool)

(assert (=> d!534340 (= (lostCause!552 (rulesRegex!777 thiss!24550 rules!3447)) (lostCauseFct!185 (rulesRegex!777 thiss!24550 rules!3447)))))

(declare-fun bs!403419 () Bool)

(assert (= bs!403419 d!534340))

(assert (=> bs!403419 m!2157577))

(declare-fun m!2160193 () Bool)

(assert (=> bs!403419 m!2160193))

(assert (=> b!1745922 d!534340))

(assert (=> d!533598 d!533532))

(assert (=> d!533598 d!533602))

(declare-fun d!534342 () Bool)

(assert (=> d!534342 (isPrefix!1660 lt!673090 (++!5244 lt!673090 (_2!10817 lt!673096)))))

(assert (=> d!534342 true))

(declare-fun _$46!1201 () Unit!33261)

(assert (=> d!534342 (= (choose!10764 lt!673090 (_2!10817 lt!673096)) _$46!1201)))

(declare-fun bs!403420 () Bool)

(assert (= bs!403420 d!534342))

(assert (=> bs!403420 m!2157549))

(assert (=> bs!403420 m!2157549))

(assert (=> bs!403420 m!2157563))

(assert (=> d!533598 d!534342))

(declare-fun d!534344 () Bool)

(assert (=> d!534344 (= (list!7768 lt!673125) (list!7771 (c!284767 lt!673125)))))

(declare-fun bs!403421 () Bool)

(assert (= bs!403421 d!534344))

(declare-fun m!2160195 () Bool)

(assert (=> bs!403421 m!2160195))

(assert (=> d!533426 d!534344))

(assert (=> b!1745986 d!533928))

(assert (=> b!1745986 d!533604))

(declare-fun d!534346 () Bool)

(declare-fun res!785836 () Bool)

(declare-fun e!1118232 () Bool)

(assert (=> d!534346 (=> (not res!785836) (not e!1118232))))

(assert (=> d!534346 (= res!785836 (<= (size!15236 (list!7774 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) 512))))

(assert (=> d!534346 (= (inv!24874 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) e!1118232)))

(declare-fun b!1747546 () Bool)

(declare-fun res!785837 () Bool)

(assert (=> b!1747546 (=> (not res!785837) (not e!1118232))))

(assert (=> b!1747546 (= res!785837 (= (csize!12997 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) (size!15236 (list!7774 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))))))

(declare-fun b!1747547 () Bool)

(assert (=> b!1747547 (= e!1118232 (and (> (csize!12997 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) 0) (<= (csize!12997 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))) 512)))))

(assert (= (and d!534346 res!785836) b!1747546))

(assert (= (and b!1747546 res!785837) b!1747547))

(declare-fun m!2160197 () Bool)

(assert (=> d!534346 m!2160197))

(assert (=> d!534346 m!2160197))

(declare-fun m!2160199 () Bool)

(assert (=> d!534346 m!2160199))

(assert (=> b!1747546 m!2160197))

(assert (=> b!1747546 m!2160197))

(assert (=> b!1747546 m!2160199))

(assert (=> b!1745899 d!534346))

(declare-fun b!1747548 () Bool)

(declare-fun e!1118236 () Bool)

(declare-fun lt!673646 () Bool)

(declare-fun call!110352 () Bool)

(assert (=> b!1747548 (= e!1118236 (= lt!673646 call!110352))))

(declare-fun b!1747549 () Bool)

(declare-fun e!1118238 () Bool)

(assert (=> b!1747549 (= e!1118238 (not lt!673646))))

(declare-fun b!1747550 () Bool)

(declare-fun e!1118237 () Bool)

(assert (=> b!1747550 (= e!1118237 (nullable!1441 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))))))

(declare-fun bm!110347 () Bool)

(assert (=> bm!110347 (= call!110352 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))))))

(declare-fun b!1747551 () Bool)

(declare-fun e!1118233 () Bool)

(assert (=> b!1747551 (= e!1118233 (not (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))) (c!284766 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))))))))

(declare-fun b!1747552 () Bool)

(declare-fun res!785845 () Bool)

(declare-fun e!1118239 () Bool)

(assert (=> b!1747552 (=> (not res!785845) (not e!1118239))))

(assert (=> b!1747552 (= res!785845 (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))))))))

(declare-fun b!1747553 () Bool)

(declare-fun e!1118234 () Bool)

(declare-fun e!1118235 () Bool)

(assert (=> b!1747553 (= e!1118234 e!1118235)))

(declare-fun res!785840 () Bool)

(assert (=> b!1747553 (=> (not res!785840) (not e!1118235))))

(assert (=> b!1747553 (= res!785840 (not lt!673646))))

(declare-fun b!1747554 () Bool)

(declare-fun res!785841 () Bool)

(assert (=> b!1747554 (=> res!785841 e!1118234)))

(assert (=> b!1747554 (= res!785841 e!1118239)))

(declare-fun res!785842 () Bool)

(assert (=> b!1747554 (=> (not res!785842) (not e!1118239))))

(assert (=> b!1747554 (= res!785842 lt!673646)))

(declare-fun b!1747555 () Bool)

(assert (=> b!1747555 (= e!1118236 e!1118238)))

(declare-fun c!285174 () Bool)

(assert (=> b!1747555 (= c!285174 ((_ is EmptyLang!4747) (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))))))

(declare-fun b!1747556 () Bool)

(declare-fun res!785838 () Bool)

(assert (=> b!1747556 (=> (not res!785838) (not e!1118239))))

(assert (=> b!1747556 (= res!785838 (not call!110352))))

(declare-fun b!1747557 () Bool)

(declare-fun res!785844 () Bool)

(assert (=> b!1747557 (=> res!785844 e!1118233)))

(assert (=> b!1747557 (= res!785844 (not (isEmpty!12086 (tail!2609 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))))))))

(declare-fun b!1747558 () Bool)

(assert (=> b!1747558 (= e!1118235 e!1118233)))

(declare-fun res!785839 () Bool)

(assert (=> b!1747558 (=> res!785839 e!1118233)))

(assert (=> b!1747558 (= res!785839 call!110352)))

(declare-fun b!1747559 () Bool)

(assert (=> b!1747559 (= e!1118237 (matchR!2221 (derivativeStep!1210 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))) (head!4010 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))))) (tail!2609 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174)))))))))

(declare-fun b!1747560 () Bool)

(assert (=> b!1747560 (= e!1118239 (= (head!4010 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))) (c!284766 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))))))

(declare-fun b!1747561 () Bool)

(declare-fun res!785843 () Bool)

(assert (=> b!1747561 (=> res!785843 e!1118234)))

(assert (=> b!1747561 (= res!785843 (not ((_ is ElementMatch!4747) (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))))))

(assert (=> b!1747561 (= e!1118238 e!1118234)))

(declare-fun d!534348 () Bool)

(assert (=> d!534348 e!1118236))

(declare-fun c!285175 () Bool)

(assert (=> d!534348 (= c!285175 ((_ is EmptyExpr!4747) (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174))))))))

(assert (=> d!534348 (= lt!673646 e!1118237)))

(declare-fun c!285173 () Bool)

(assert (=> d!534348 (= c!285173 (isEmpty!12086 (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))))))

(assert (=> d!534348 (validRegex!1915 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))))

(assert (=> d!534348 (= (matchR!2221 (regex!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))) (list!7768 (charsOf!2068 (_1!10817 (get!5789 lt!673174))))) lt!673646)))

(assert (= (and d!534348 c!285173) b!1747550))

(assert (= (and d!534348 (not c!285173)) b!1747559))

(assert (= (and d!534348 c!285175) b!1747548))

(assert (= (and d!534348 (not c!285175)) b!1747555))

(assert (= (and b!1747555 c!285174) b!1747549))

(assert (= (and b!1747555 (not c!285174)) b!1747561))

(assert (= (and b!1747561 (not res!785843)) b!1747554))

(assert (= (and b!1747554 res!785842) b!1747556))

(assert (= (and b!1747556 res!785838) b!1747552))

(assert (= (and b!1747552 res!785845) b!1747560))

(assert (= (and b!1747554 (not res!785841)) b!1747553))

(assert (= (and b!1747553 res!785840) b!1747558))

(assert (= (and b!1747558 (not res!785839)) b!1747557))

(assert (= (and b!1747557 (not res!785844)) b!1747551))

(assert (= (or b!1747548 b!1747558 b!1747556) bm!110347))

(assert (=> b!1747559 m!2157771))

(declare-fun m!2160201 () Bool)

(assert (=> b!1747559 m!2160201))

(assert (=> b!1747559 m!2160201))

(declare-fun m!2160203 () Bool)

(assert (=> b!1747559 m!2160203))

(assert (=> b!1747559 m!2157771))

(declare-fun m!2160205 () Bool)

(assert (=> b!1747559 m!2160205))

(assert (=> b!1747559 m!2160203))

(assert (=> b!1747559 m!2160205))

(declare-fun m!2160207 () Bool)

(assert (=> b!1747559 m!2160207))

(assert (=> bm!110347 m!2157771))

(declare-fun m!2160209 () Bool)

(assert (=> bm!110347 m!2160209))

(assert (=> b!1747552 m!2157771))

(assert (=> b!1747552 m!2160205))

(assert (=> b!1747552 m!2160205))

(declare-fun m!2160211 () Bool)

(assert (=> b!1747552 m!2160211))

(assert (=> b!1747557 m!2157771))

(assert (=> b!1747557 m!2160205))

(assert (=> b!1747557 m!2160205))

(assert (=> b!1747557 m!2160211))

(declare-fun m!2160213 () Bool)

(assert (=> b!1747550 m!2160213))

(assert (=> b!1747560 m!2157771))

(assert (=> b!1747560 m!2160201))

(assert (=> b!1747551 m!2157771))

(assert (=> b!1747551 m!2160201))

(assert (=> d!534348 m!2157771))

(assert (=> d!534348 m!2160209))

(declare-fun m!2160215 () Bool)

(assert (=> d!534348 m!2160215))

(assert (=> b!1745821 d!534348))

(assert (=> b!1745821 d!533800))

(assert (=> b!1745821 d!533792))

(assert (=> b!1745821 d!533794))

(declare-fun bs!403422 () Bool)

(declare-fun d!534350 () Bool)

(assert (= bs!403422 (and d!534350 d!533476)))

(declare-fun lambda!69782 () Int)

(assert (=> bs!403422 (= (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= lambda!69782 lambda!69719))))

(declare-fun bs!403423 () Bool)

(assert (= bs!403423 (and d!534350 d!534210)))

(assert (=> bs!403423 (= (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) (= lambda!69782 lambda!69773))))

(declare-fun bs!403424 () Bool)

(assert (= bs!403424 (and d!534350 d!534224)))

(assert (=> bs!403424 (= (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 token!523)))) (= lambda!69782 lambda!69777))))

(declare-fun bs!403425 () Bool)

(assert (= bs!403425 (and d!534350 d!534274)))

(assert (=> bs!403425 (= (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (h!24591 rules!3447)))) (= lambda!69782 lambda!69779))))

(assert (=> d!534350 true))

(assert (=> d!534350 (< (dynLambda!9086 order!11991 (toValue!4930 (transformation!3419 rule!422))) (dynLambda!9092 order!11997 lambda!69782))))

(assert (=> d!534350 (= (equivClasses!1296 (toChars!4789 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 rule!422))) (Forall2!557 lambda!69782))))

(declare-fun bs!403426 () Bool)

(assert (= bs!403426 d!534350))

(declare-fun m!2160217 () Bool)

(assert (=> bs!403426 m!2160217))

(assert (=> b!1745854 d!534350))

(declare-fun d!534352 () Bool)

(assert (=> d!534352 (= (inv!24872 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))) (isBalanced!1994 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))))))

(declare-fun bs!403427 () Bool)

(assert (= bs!403427 d!534352))

(declare-fun m!2160219 () Bool)

(assert (=> bs!403427 m!2160219))

(assert (=> tb!104439 d!534352))

(assert (=> b!1746012 d!534190))

(declare-fun d!534354 () Bool)

(assert (=> d!534354 (= (head!4010 (++!5244 lt!673090 (_2!10817 lt!673096))) (h!24590 (++!5244 lt!673090 (_2!10817 lt!673096))))))

(assert (=> b!1746012 d!534354))

(assert (=> bm!110240 d!533806))

(declare-fun d!534356 () Bool)

(assert (=> d!534356 (= (list!7768 lt!673192) (list!7771 (c!284767 lt!673192)))))

(declare-fun bs!403428 () Bool)

(assert (= bs!403428 d!534356))

(declare-fun m!2160221 () Bool)

(assert (=> bs!403428 m!2160221))

(assert (=> d!533438 d!534356))

(declare-fun b!1747562 () Bool)

(declare-fun e!1118240 () Bool)

(declare-fun tp!497030 () Bool)

(assert (=> b!1747562 (= e!1118240 (and tp_is_empty!7737 tp!497030))))

(assert (=> b!1746241 (= tp!496907 e!1118240)))

(assert (= (and b!1746241 ((_ is Cons!19189) (innerList!6443 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))))) b!1747562))

(declare-fun b!1747564 () Bool)

(declare-fun e!1118241 () Bool)

(declare-fun tp!497031 () Bool)

(declare-fun tp!497034 () Bool)

(assert (=> b!1747564 (= e!1118241 (and tp!497031 tp!497034))))

(assert (=> b!1746229 (= tp!496894 e!1118241)))

(declare-fun b!1747566 () Bool)

(declare-fun tp!497032 () Bool)

(declare-fun tp!497033 () Bool)

(assert (=> b!1747566 (= e!1118241 (and tp!497032 tp!497033))))

(declare-fun b!1747563 () Bool)

(assert (=> b!1747563 (= e!1118241 tp_is_empty!7737)))

(declare-fun b!1747565 () Bool)

(declare-fun tp!497035 () Bool)

(assert (=> b!1747565 (= e!1118241 tp!497035)))

(assert (= (and b!1746229 ((_ is ElementMatch!4747) (regOne!10007 (regex!3419 (rule!5423 token!523))))) b!1747563))

(assert (= (and b!1746229 ((_ is Concat!8257) (regOne!10007 (regex!3419 (rule!5423 token!523))))) b!1747564))

(assert (= (and b!1746229 ((_ is Star!4747) (regOne!10007 (regex!3419 (rule!5423 token!523))))) b!1747565))

(assert (= (and b!1746229 ((_ is Union!4747) (regOne!10007 (regex!3419 (rule!5423 token!523))))) b!1747566))

(declare-fun b!1747568 () Bool)

(declare-fun e!1118242 () Bool)

(declare-fun tp!497036 () Bool)

(declare-fun tp!497039 () Bool)

(assert (=> b!1747568 (= e!1118242 (and tp!497036 tp!497039))))

(assert (=> b!1746229 (= tp!496895 e!1118242)))

(declare-fun b!1747570 () Bool)

(declare-fun tp!497037 () Bool)

(declare-fun tp!497038 () Bool)

(assert (=> b!1747570 (= e!1118242 (and tp!497037 tp!497038))))

(declare-fun b!1747567 () Bool)

(assert (=> b!1747567 (= e!1118242 tp_is_empty!7737)))

(declare-fun b!1747569 () Bool)

(declare-fun tp!497040 () Bool)

(assert (=> b!1747569 (= e!1118242 tp!497040)))

(assert (= (and b!1746229 ((_ is ElementMatch!4747) (regTwo!10007 (regex!3419 (rule!5423 token!523))))) b!1747567))

(assert (= (and b!1746229 ((_ is Concat!8257) (regTwo!10007 (regex!3419 (rule!5423 token!523))))) b!1747568))

(assert (= (and b!1746229 ((_ is Star!4747) (regTwo!10007 (regex!3419 (rule!5423 token!523))))) b!1747569))

(assert (= (and b!1746229 ((_ is Union!4747) (regTwo!10007 (regex!3419 (rule!5423 token!523))))) b!1747570))

(declare-fun e!1118244 () Bool)

(declare-fun tp!497042 () Bool)

(declare-fun b!1747571 () Bool)

(declare-fun tp!497041 () Bool)

(assert (=> b!1747571 (= e!1118244 (and (inv!24871 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))))) tp!497041 (inv!24871 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))))) tp!497042))))

(declare-fun b!1747573 () Bool)

(declare-fun e!1118243 () Bool)

(declare-fun tp!497043 () Bool)

(assert (=> b!1747573 (= e!1118243 tp!497043)))

(declare-fun b!1747572 () Bool)

(assert (=> b!1747572 (= e!1118244 (and (inv!24878 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))))) e!1118243))))

(assert (=> b!1745707 (= tp!496813 (and (inv!24871 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523)))) e!1118244))))

(assert (= (and b!1745707 ((_ is Node!6383) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))))) b!1747571))

(assert (= b!1747572 b!1747573))

(assert (= (and b!1745707 ((_ is Leaf!9313) (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 token!523))) (value!107114 token!523))))) b!1747572))

(declare-fun m!2160223 () Bool)

(assert (=> b!1747571 m!2160223))

(declare-fun m!2160225 () Bool)

(assert (=> b!1747571 m!2160225))

(declare-fun m!2160227 () Bool)

(assert (=> b!1747572 m!2160227))

(assert (=> b!1745707 m!2157671))

(declare-fun b!1747575 () Bool)

(declare-fun e!1118245 () Bool)

(declare-fun tp!497044 () Bool)

(declare-fun tp!497047 () Bool)

(assert (=> b!1747575 (= e!1118245 (and tp!497044 tp!497047))))

(assert (=> b!1746228 (= tp!496897 e!1118245)))

(declare-fun b!1747577 () Bool)

(declare-fun tp!497045 () Bool)

(declare-fun tp!497046 () Bool)

(assert (=> b!1747577 (= e!1118245 (and tp!497045 tp!497046))))

(declare-fun b!1747574 () Bool)

(assert (=> b!1747574 (= e!1118245 tp_is_empty!7737)))

(declare-fun b!1747576 () Bool)

(declare-fun tp!497048 () Bool)

(assert (=> b!1747576 (= e!1118245 tp!497048)))

(assert (= (and b!1746228 ((_ is ElementMatch!4747) (reg!5076 (regex!3419 (rule!5423 token!523))))) b!1747574))

(assert (= (and b!1746228 ((_ is Concat!8257) (reg!5076 (regex!3419 (rule!5423 token!523))))) b!1747575))

(assert (= (and b!1746228 ((_ is Star!4747) (reg!5076 (regex!3419 (rule!5423 token!523))))) b!1747576))

(assert (= (and b!1746228 ((_ is Union!4747) (reg!5076 (regex!3419 (rule!5423 token!523))))) b!1747577))

(declare-fun b!1747578 () Bool)

(declare-fun e!1118247 () Bool)

(declare-fun tp!497050 () Bool)

(declare-fun tp!497049 () Bool)

(assert (=> b!1747578 (= e!1118247 (and (inv!24871 (left!15342 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) tp!497049 (inv!24871 (right!15672 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) tp!497050))))

(declare-fun b!1747580 () Bool)

(declare-fun e!1118246 () Bool)

(declare-fun tp!497051 () Bool)

(assert (=> b!1747580 (= e!1118246 tp!497051)))

(declare-fun b!1747579 () Bool)

(assert (=> b!1747579 (= e!1118247 (and (inv!24878 (xs!9259 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) e!1118246))))

(assert (=> b!1746239 (= tp!496905 (and (inv!24871 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) e!1118247))))

(assert (= (and b!1746239 ((_ is Node!6383) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) b!1747578))

(assert (= b!1747579 b!1747580))

(assert (= (and b!1746239 ((_ is Leaf!9313) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) b!1747579))

(declare-fun m!2160229 () Bool)

(assert (=> b!1747578 m!2160229))

(declare-fun m!2160231 () Bool)

(assert (=> b!1747578 m!2160231))

(declare-fun m!2160233 () Bool)

(assert (=> b!1747579 m!2160233))

(assert (=> b!1746239 m!2158349))

(declare-fun b!1747581 () Bool)

(declare-fun tp!497052 () Bool)

(declare-fun tp!497053 () Bool)

(declare-fun e!1118249 () Bool)

(assert (=> b!1747581 (= e!1118249 (and (inv!24871 (left!15342 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) tp!497052 (inv!24871 (right!15672 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) tp!497053))))

(declare-fun b!1747583 () Bool)

(declare-fun e!1118248 () Bool)

(declare-fun tp!497054 () Bool)

(assert (=> b!1747583 (= e!1118248 tp!497054)))

(declare-fun b!1747582 () Bool)

(assert (=> b!1747582 (= e!1118249 (and (inv!24878 (xs!9259 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) e!1118248))))

(assert (=> b!1746239 (= tp!496906 (and (inv!24871 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))))) e!1118249))))

(assert (= (and b!1746239 ((_ is Node!6383) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) b!1747581))

(assert (= b!1747582 b!1747583))

(assert (= (and b!1746239 ((_ is Leaf!9313) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085)))))) b!1747582))

(declare-fun m!2160235 () Bool)

(assert (=> b!1747581 m!2160235))

(declare-fun m!2160237 () Bool)

(assert (=> b!1747581 m!2160237))

(declare-fun m!2160239 () Bool)

(assert (=> b!1747582 m!2160239))

(assert (=> b!1746239 m!2158351))

(declare-fun b!1747584 () Bool)

(declare-fun e!1118250 () Bool)

(declare-fun tp!497055 () Bool)

(assert (=> b!1747584 (= e!1118250 (and tp_is_empty!7737 tp!497055))))

(assert (=> b!1746248 (= tp!496915 e!1118250)))

(assert (= (and b!1746248 ((_ is Cons!19189) (innerList!6443 (xs!9259 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))))) b!1747584))

(declare-fun b!1747585 () Bool)

(declare-fun e!1118251 () Bool)

(declare-fun tp!497056 () Bool)

(assert (=> b!1747585 (= e!1118251 (and tp_is_empty!7737 tp!497056))))

(assert (=> b!1746230 (= tp!496898 e!1118251)))

(assert (= (and b!1746230 ((_ is Cons!19189) (t!162264 (originalCharacters!4233 token!523)))) b!1747585))

(declare-fun b!1747587 () Bool)

(declare-fun e!1118252 () Bool)

(declare-fun tp!497057 () Bool)

(declare-fun tp!497060 () Bool)

(assert (=> b!1747587 (= e!1118252 (and tp!497057 tp!497060))))

(assert (=> b!1746214 (= tp!496882 e!1118252)))

(declare-fun b!1747589 () Bool)

(declare-fun tp!497058 () Bool)

(declare-fun tp!497059 () Bool)

(assert (=> b!1747589 (= e!1118252 (and tp!497058 tp!497059))))

(declare-fun b!1747586 () Bool)

(assert (=> b!1747586 (= e!1118252 tp_is_empty!7737)))

(declare-fun b!1747588 () Bool)

(declare-fun tp!497061 () Bool)

(assert (=> b!1747588 (= e!1118252 tp!497061)))

(assert (= (and b!1746214 ((_ is ElementMatch!4747) (regex!3419 (h!24591 (t!162265 rules!3447))))) b!1747586))

(assert (= (and b!1746214 ((_ is Concat!8257) (regex!3419 (h!24591 (t!162265 rules!3447))))) b!1747587))

(assert (= (and b!1746214 ((_ is Star!4747) (regex!3419 (h!24591 (t!162265 rules!3447))))) b!1747588))

(assert (= (and b!1746214 ((_ is Union!4747) (regex!3419 (h!24591 (t!162265 rules!3447))))) b!1747589))

(declare-fun b!1747592 () Bool)

(declare-fun b_free!48067 () Bool)

(declare-fun b_next!48771 () Bool)

(assert (=> b!1747592 (= b_free!48067 (not b_next!48771))))

(declare-fun t!162423 () Bool)

(declare-fun tb!104583 () Bool)

(assert (=> (and b!1747592 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162423) tb!104583))

(declare-fun result!125798 () Bool)

(assert (= result!125798 result!125624))

(assert (=> d!533476 t!162423))

(assert (=> b!1745585 t!162423))

(declare-fun t!162425 () Bool)

(declare-fun tb!104585 () Bool)

(assert (=> (and b!1747592 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162425) tb!104585))

(declare-fun result!125800 () Bool)

(assert (= result!125800 result!125644))

(assert (=> d!533476 t!162425))

(declare-fun tb!104587 () Bool)

(declare-fun t!162427 () Bool)

(assert (=> (and b!1747592 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162427) tb!104587))

(declare-fun result!125802 () Bool)

(assert (= result!125802 result!125782))

(assert (=> d!534252 t!162427))

(assert (=> d!533484 t!162423))

(declare-fun tb!104589 () Bool)

(declare-fun t!162429 () Bool)

(assert (=> (and b!1747592 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162429) tb!104589))

(declare-fun result!125804 () Bool)

(assert (= result!125804 result!125790))

(assert (=> d!534258 t!162429))

(assert (=> d!533462 t!162423))

(declare-fun b_and!130197 () Bool)

(declare-fun tp!497062 () Bool)

(assert (=> b!1747592 (= tp!497062 (and (=> t!162427 result!125802) (=> t!162425 result!125800) (=> t!162429 result!125804) (=> t!162423 result!125798) b_and!130197))))

(declare-fun b_free!48069 () Bool)

(declare-fun b_next!48773 () Bool)

(assert (=> b!1747592 (= b_free!48069 (not b_next!48773))))

(declare-fun tb!104591 () Bool)

(declare-fun t!162431 () Bool)

(assert (=> (and b!1747592 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 token!523)))) t!162431) tb!104591))

(declare-fun result!125806 () Bool)

(assert (= result!125806 result!125638))

(assert (=> d!533438 t!162431))

(declare-fun tb!104593 () Bool)

(declare-fun t!162433 () Bool)

(assert (=> (and b!1747592 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673250)))))) t!162433) tb!104593))

(declare-fun result!125808 () Bool)

(assert (= result!125808 result!125746))

(assert (=> d!533988 t!162433))

(declare-fun t!162435 () Bool)

(declare-fun tb!104595 () Bool)

(assert (=> (and b!1747592 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 (get!5789 lt!673174)))))) t!162435) tb!104595))

(declare-fun result!125810 () Bool)

(assert (= result!125810 result!125722))

(assert (=> d!533794 t!162435))

(declare-fun tb!104597 () Bool)

(declare-fun t!162437 () Bool)

(assert (=> (and b!1747592 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162437) tb!104597))

(declare-fun result!125812 () Bool)

(assert (= result!125812 result!125632))

(assert (=> b!1745598 t!162437))

(assert (=> b!1745705 t!162431))

(assert (=> d!533426 t!162437))

(declare-fun t!162439 () Bool)

(declare-fun tb!104599 () Bool)

(assert (=> (and b!1747592 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096))))) t!162439) tb!104599))

(declare-fun result!125814 () Bool)

(assert (= result!125814 result!125616))

(assert (=> d!533462 t!162439))

(declare-fun t!162441 () Bool)

(declare-fun tb!104601 () Bool)

(assert (=> (and b!1747592 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 lt!673320)))) t!162441) tb!104601))

(declare-fun result!125816 () Bool)

(assert (= result!125816 result!125738))

(assert (=> d!533954 t!162441))

(assert (=> b!1745585 t!162439))

(declare-fun b_and!130199 () Bool)

(declare-fun tp!497064 () Bool)

(assert (=> b!1747592 (= tp!497064 (and (=> t!162441 result!125816) (=> t!162433 result!125808) (=> t!162437 result!125812) (=> t!162435 result!125810) (=> t!162431 result!125806) (=> t!162439 result!125814) b_and!130199))))

(declare-fun e!1118254 () Bool)

(assert (=> b!1747592 (= e!1118254 (and tp!497062 tp!497064))))

(declare-fun e!1118253 () Bool)

(declare-fun b!1747591 () Bool)

(declare-fun tp!497065 () Bool)

(assert (=> b!1747591 (= e!1118253 (and tp!497065 (inv!24864 (tag!3765 (h!24591 (t!162265 (t!162265 rules!3447))))) (inv!24870 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) e!1118254))))

(declare-fun b!1747590 () Bool)

(declare-fun e!1118255 () Bool)

(declare-fun tp!497063 () Bool)

(assert (=> b!1747590 (= e!1118255 (and e!1118253 tp!497063))))

(assert (=> b!1746213 (= tp!496880 e!1118255)))

(assert (= b!1747591 b!1747592))

(assert (= b!1747590 b!1747591))

(assert (= (and b!1746213 ((_ is Cons!19190) (t!162265 (t!162265 rules!3447)))) b!1747590))

(declare-fun m!2160241 () Bool)

(assert (=> b!1747591 m!2160241))

(declare-fun m!2160243 () Bool)

(assert (=> b!1747591 m!2160243))

(declare-fun tp!497066 () Bool)

(declare-fun tp!497067 () Bool)

(declare-fun b!1747593 () Bool)

(declare-fun e!1118258 () Bool)

(assert (=> b!1747593 (= e!1118258 (and (inv!24871 (left!15342 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) tp!497066 (inv!24871 (right!15672 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) tp!497067))))

(declare-fun b!1747595 () Bool)

(declare-fun e!1118257 () Bool)

(declare-fun tp!497068 () Bool)

(assert (=> b!1747595 (= e!1118257 tp!497068)))

(declare-fun b!1747594 () Bool)

(assert (=> b!1747594 (= e!1118258 (and (inv!24878 (xs!9259 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) e!1118257))))

(assert (=> b!1746246 (= tp!496913 (and (inv!24871 (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) e!1118258))))

(assert (= (and b!1746246 ((_ is Node!6383) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) b!1747593))

(assert (= b!1747594 b!1747595))

(assert (= (and b!1746246 ((_ is Leaf!9313) (left!15342 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) b!1747594))

(declare-fun m!2160245 () Bool)

(assert (=> b!1747593 m!2160245))

(declare-fun m!2160247 () Bool)

(assert (=> b!1747593 m!2160247))

(declare-fun m!2160249 () Bool)

(assert (=> b!1747594 m!2160249))

(assert (=> b!1746246 m!2158355))

(declare-fun e!1118260 () Bool)

(declare-fun tp!497070 () Bool)

(declare-fun b!1747596 () Bool)

(declare-fun tp!497069 () Bool)

(assert (=> b!1747596 (= e!1118260 (and (inv!24871 (left!15342 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) tp!497069 (inv!24871 (right!15672 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) tp!497070))))

(declare-fun b!1747598 () Bool)

(declare-fun e!1118259 () Bool)

(declare-fun tp!497071 () Bool)

(assert (=> b!1747598 (= e!1118259 tp!497071)))

(declare-fun b!1747597 () Bool)

(assert (=> b!1747597 (= e!1118260 (and (inv!24878 (xs!9259 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) e!1118259))))

(assert (=> b!1746246 (= tp!496914 (and (inv!24871 (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096)))))) e!1118260))))

(assert (= (and b!1746246 ((_ is Node!6383) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) b!1747596))

(assert (= b!1747597 b!1747598))

(assert (= (and b!1746246 ((_ is Leaf!9313) (right!15672 (c!284767 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (value!107114 (_1!10817 lt!673096))))))) b!1747597))

(declare-fun m!2160251 () Bool)

(assert (=> b!1747596 m!2160251))

(declare-fun m!2160253 () Bool)

(assert (=> b!1747596 m!2160253))

(declare-fun m!2160255 () Bool)

(assert (=> b!1747597 m!2160255))

(assert (=> b!1746246 m!2158357))

(declare-fun b!1747600 () Bool)

(declare-fun e!1118261 () Bool)

(declare-fun tp!497072 () Bool)

(declare-fun tp!497075 () Bool)

(assert (=> b!1747600 (= e!1118261 (and tp!497072 tp!497075))))

(assert (=> b!1746245 (= tp!496909 e!1118261)))

(declare-fun b!1747602 () Bool)

(declare-fun tp!497073 () Bool)

(declare-fun tp!497074 () Bool)

(assert (=> b!1747602 (= e!1118261 (and tp!497073 tp!497074))))

(declare-fun b!1747599 () Bool)

(assert (=> b!1747599 (= e!1118261 tp_is_empty!7737)))

(declare-fun b!1747601 () Bool)

(declare-fun tp!497076 () Bool)

(assert (=> b!1747601 (= e!1118261 tp!497076)))

(assert (= (and b!1746245 ((_ is ElementMatch!4747) (regOne!10007 (regex!3419 rule!422)))) b!1747599))

(assert (= (and b!1746245 ((_ is Concat!8257) (regOne!10007 (regex!3419 rule!422)))) b!1747600))

(assert (= (and b!1746245 ((_ is Star!4747) (regOne!10007 (regex!3419 rule!422)))) b!1747601))

(assert (= (and b!1746245 ((_ is Union!4747) (regOne!10007 (regex!3419 rule!422)))) b!1747602))

(declare-fun b!1747604 () Bool)

(declare-fun e!1118262 () Bool)

(declare-fun tp!497077 () Bool)

(declare-fun tp!497080 () Bool)

(assert (=> b!1747604 (= e!1118262 (and tp!497077 tp!497080))))

(assert (=> b!1746245 (= tp!496910 e!1118262)))

(declare-fun b!1747606 () Bool)

(declare-fun tp!497078 () Bool)

(declare-fun tp!497079 () Bool)

(assert (=> b!1747606 (= e!1118262 (and tp!497078 tp!497079))))

(declare-fun b!1747603 () Bool)

(assert (=> b!1747603 (= e!1118262 tp_is_empty!7737)))

(declare-fun b!1747605 () Bool)

(declare-fun tp!497081 () Bool)

(assert (=> b!1747605 (= e!1118262 tp!497081)))

(assert (= (and b!1746245 ((_ is ElementMatch!4747) (regTwo!10007 (regex!3419 rule!422)))) b!1747603))

(assert (= (and b!1746245 ((_ is Concat!8257) (regTwo!10007 (regex!3419 rule!422)))) b!1747604))

(assert (= (and b!1746245 ((_ is Star!4747) (regTwo!10007 (regex!3419 rule!422)))) b!1747605))

(assert (= (and b!1746245 ((_ is Union!4747) (regTwo!10007 (regex!3419 rule!422)))) b!1747606))

(declare-fun b!1747608 () Bool)

(declare-fun e!1118263 () Bool)

(declare-fun tp!497082 () Bool)

(declare-fun tp!497085 () Bool)

(assert (=> b!1747608 (= e!1118263 (and tp!497082 tp!497085))))

(assert (=> b!1746244 (= tp!496912 e!1118263)))

(declare-fun b!1747610 () Bool)

(declare-fun tp!497083 () Bool)

(declare-fun tp!497084 () Bool)

(assert (=> b!1747610 (= e!1118263 (and tp!497083 tp!497084))))

(declare-fun b!1747607 () Bool)

(assert (=> b!1747607 (= e!1118263 tp_is_empty!7737)))

(declare-fun b!1747609 () Bool)

(declare-fun tp!497086 () Bool)

(assert (=> b!1747609 (= e!1118263 tp!497086)))

(assert (= (and b!1746244 ((_ is ElementMatch!4747) (reg!5076 (regex!3419 rule!422)))) b!1747607))

(assert (= (and b!1746244 ((_ is Concat!8257) (reg!5076 (regex!3419 rule!422)))) b!1747608))

(assert (= (and b!1746244 ((_ is Star!4747) (reg!5076 (regex!3419 rule!422)))) b!1747609))

(assert (= (and b!1746244 ((_ is Union!4747) (reg!5076 (regex!3419 rule!422)))) b!1747610))

(declare-fun b!1747611 () Bool)

(declare-fun e!1118264 () Bool)

(declare-fun tp!497087 () Bool)

(assert (=> b!1747611 (= e!1118264 (and tp_is_empty!7737 tp!497087))))

(assert (=> b!1746204 (= tp!496870 e!1118264)))

(assert (= (and b!1746204 ((_ is Cons!19189) (t!162264 (t!162264 suffix!1421)))) b!1747611))

(declare-fun b!1747613 () Bool)

(declare-fun e!1118265 () Bool)

(declare-fun tp!497088 () Bool)

(declare-fun tp!497091 () Bool)

(assert (=> b!1747613 (= e!1118265 (and tp!497088 tp!497091))))

(assert (=> b!1746243 (= tp!496908 e!1118265)))

(declare-fun b!1747615 () Bool)

(declare-fun tp!497089 () Bool)

(declare-fun tp!497090 () Bool)

(assert (=> b!1747615 (= e!1118265 (and tp!497089 tp!497090))))

(declare-fun b!1747612 () Bool)

(assert (=> b!1747612 (= e!1118265 tp_is_empty!7737)))

(declare-fun b!1747614 () Bool)

(declare-fun tp!497092 () Bool)

(assert (=> b!1747614 (= e!1118265 tp!497092)))

(assert (= (and b!1746243 ((_ is ElementMatch!4747) (regOne!10006 (regex!3419 rule!422)))) b!1747612))

(assert (= (and b!1746243 ((_ is Concat!8257) (regOne!10006 (regex!3419 rule!422)))) b!1747613))

(assert (= (and b!1746243 ((_ is Star!4747) (regOne!10006 (regex!3419 rule!422)))) b!1747614))

(assert (= (and b!1746243 ((_ is Union!4747) (regOne!10006 (regex!3419 rule!422)))) b!1747615))

(declare-fun b!1747617 () Bool)

(declare-fun e!1118266 () Bool)

(declare-fun tp!497093 () Bool)

(declare-fun tp!497096 () Bool)

(assert (=> b!1747617 (= e!1118266 (and tp!497093 tp!497096))))

(assert (=> b!1746243 (= tp!496911 e!1118266)))

(declare-fun b!1747619 () Bool)

(declare-fun tp!497094 () Bool)

(declare-fun tp!497095 () Bool)

(assert (=> b!1747619 (= e!1118266 (and tp!497094 tp!497095))))

(declare-fun b!1747616 () Bool)

(assert (=> b!1747616 (= e!1118266 tp_is_empty!7737)))

(declare-fun b!1747618 () Bool)

(declare-fun tp!497097 () Bool)

(assert (=> b!1747618 (= e!1118266 tp!497097)))

(assert (= (and b!1746243 ((_ is ElementMatch!4747) (regTwo!10006 (regex!3419 rule!422)))) b!1747616))

(assert (= (and b!1746243 ((_ is Concat!8257) (regTwo!10006 (regex!3419 rule!422)))) b!1747617))

(assert (= (and b!1746243 ((_ is Star!4747) (regTwo!10006 (regex!3419 rule!422)))) b!1747618))

(assert (= (and b!1746243 ((_ is Union!4747) (regTwo!10006 (regex!3419 rule!422)))) b!1747619))

(declare-fun b!1747621 () Bool)

(declare-fun e!1118267 () Bool)

(declare-fun tp!497098 () Bool)

(declare-fun tp!497101 () Bool)

(assert (=> b!1747621 (= e!1118267 (and tp!497098 tp!497101))))

(assert (=> b!1746227 (= tp!496893 e!1118267)))

(declare-fun b!1747623 () Bool)

(declare-fun tp!497099 () Bool)

(declare-fun tp!497100 () Bool)

(assert (=> b!1747623 (= e!1118267 (and tp!497099 tp!497100))))

(declare-fun b!1747620 () Bool)

(assert (=> b!1747620 (= e!1118267 tp_is_empty!7737)))

(declare-fun b!1747622 () Bool)

(declare-fun tp!497102 () Bool)

(assert (=> b!1747622 (= e!1118267 tp!497102)))

(assert (= (and b!1746227 ((_ is ElementMatch!4747) (regOne!10006 (regex!3419 (rule!5423 token!523))))) b!1747620))

(assert (= (and b!1746227 ((_ is Concat!8257) (regOne!10006 (regex!3419 (rule!5423 token!523))))) b!1747621))

(assert (= (and b!1746227 ((_ is Star!4747) (regOne!10006 (regex!3419 (rule!5423 token!523))))) b!1747622))

(assert (= (and b!1746227 ((_ is Union!4747) (regOne!10006 (regex!3419 (rule!5423 token!523))))) b!1747623))

(declare-fun b!1747625 () Bool)

(declare-fun e!1118268 () Bool)

(declare-fun tp!497103 () Bool)

(declare-fun tp!497106 () Bool)

(assert (=> b!1747625 (= e!1118268 (and tp!497103 tp!497106))))

(assert (=> b!1746227 (= tp!496896 e!1118268)))

(declare-fun b!1747627 () Bool)

(declare-fun tp!497104 () Bool)

(declare-fun tp!497105 () Bool)

(assert (=> b!1747627 (= e!1118268 (and tp!497104 tp!497105))))

(declare-fun b!1747624 () Bool)

(assert (=> b!1747624 (= e!1118268 tp_is_empty!7737)))

(declare-fun b!1747626 () Bool)

(declare-fun tp!497107 () Bool)

(assert (=> b!1747626 (= e!1118268 tp!497107)))

(assert (= (and b!1746227 ((_ is ElementMatch!4747) (regTwo!10006 (regex!3419 (rule!5423 token!523))))) b!1747624))

(assert (= (and b!1746227 ((_ is Concat!8257) (regTwo!10006 (regex!3419 (rule!5423 token!523))))) b!1747625))

(assert (= (and b!1746227 ((_ is Star!4747) (regTwo!10006 (regex!3419 (rule!5423 token!523))))) b!1747626))

(assert (= (and b!1746227 ((_ is Union!4747) (regTwo!10006 (regex!3419 (rule!5423 token!523))))) b!1747627))

(declare-fun b!1747629 () Bool)

(declare-fun e!1118269 () Bool)

(declare-fun tp!497108 () Bool)

(declare-fun tp!497111 () Bool)

(assert (=> b!1747629 (= e!1118269 (and tp!497108 tp!497111))))

(assert (=> b!1746252 (= tp!496917 e!1118269)))

(declare-fun b!1747631 () Bool)

(declare-fun tp!497109 () Bool)

(declare-fun tp!497110 () Bool)

(assert (=> b!1747631 (= e!1118269 (and tp!497109 tp!497110))))

(declare-fun b!1747628 () Bool)

(assert (=> b!1747628 (= e!1118269 tp_is_empty!7737)))

(declare-fun b!1747630 () Bool)

(declare-fun tp!497112 () Bool)

(assert (=> b!1747630 (= e!1118269 tp!497112)))

(assert (= (and b!1746252 ((_ is ElementMatch!4747) (regOne!10007 (regex!3419 (h!24591 rules!3447))))) b!1747628))

(assert (= (and b!1746252 ((_ is Concat!8257) (regOne!10007 (regex!3419 (h!24591 rules!3447))))) b!1747629))

(assert (= (and b!1746252 ((_ is Star!4747) (regOne!10007 (regex!3419 (h!24591 rules!3447))))) b!1747630))

(assert (= (and b!1746252 ((_ is Union!4747) (regOne!10007 (regex!3419 (h!24591 rules!3447))))) b!1747631))

(declare-fun b!1747633 () Bool)

(declare-fun e!1118270 () Bool)

(declare-fun tp!497113 () Bool)

(declare-fun tp!497116 () Bool)

(assert (=> b!1747633 (= e!1118270 (and tp!497113 tp!497116))))

(assert (=> b!1746252 (= tp!496918 e!1118270)))

(declare-fun b!1747635 () Bool)

(declare-fun tp!497114 () Bool)

(declare-fun tp!497115 () Bool)

(assert (=> b!1747635 (= e!1118270 (and tp!497114 tp!497115))))

(declare-fun b!1747632 () Bool)

(assert (=> b!1747632 (= e!1118270 tp_is_empty!7737)))

(declare-fun b!1747634 () Bool)

(declare-fun tp!497117 () Bool)

(assert (=> b!1747634 (= e!1118270 tp!497117)))

(assert (= (and b!1746252 ((_ is ElementMatch!4747) (regTwo!10007 (regex!3419 (h!24591 rules!3447))))) b!1747632))

(assert (= (and b!1746252 ((_ is Concat!8257) (regTwo!10007 (regex!3419 (h!24591 rules!3447))))) b!1747633))

(assert (= (and b!1746252 ((_ is Star!4747) (regTwo!10007 (regex!3419 (h!24591 rules!3447))))) b!1747634))

(assert (= (and b!1746252 ((_ is Union!4747) (regTwo!10007 (regex!3419 (h!24591 rules!3447))))) b!1747635))

(declare-fun b!1747637 () Bool)

(declare-fun e!1118271 () Bool)

(declare-fun tp!497118 () Bool)

(declare-fun tp!497121 () Bool)

(assert (=> b!1747637 (= e!1118271 (and tp!497118 tp!497121))))

(assert (=> b!1746251 (= tp!496920 e!1118271)))

(declare-fun b!1747639 () Bool)

(declare-fun tp!497119 () Bool)

(declare-fun tp!497120 () Bool)

(assert (=> b!1747639 (= e!1118271 (and tp!497119 tp!497120))))

(declare-fun b!1747636 () Bool)

(assert (=> b!1747636 (= e!1118271 tp_is_empty!7737)))

(declare-fun b!1747638 () Bool)

(declare-fun tp!497122 () Bool)

(assert (=> b!1747638 (= e!1118271 tp!497122)))

(assert (= (and b!1746251 ((_ is ElementMatch!4747) (reg!5076 (regex!3419 (h!24591 rules!3447))))) b!1747636))

(assert (= (and b!1746251 ((_ is Concat!8257) (reg!5076 (regex!3419 (h!24591 rules!3447))))) b!1747637))

(assert (= (and b!1746251 ((_ is Star!4747) (reg!5076 (regex!3419 (h!24591 rules!3447))))) b!1747638))

(assert (= (and b!1746251 ((_ is Union!4747) (reg!5076 (regex!3419 (h!24591 rules!3447))))) b!1747639))

(declare-fun b!1747641 () Bool)

(declare-fun e!1118272 () Bool)

(declare-fun tp!497123 () Bool)

(declare-fun tp!497126 () Bool)

(assert (=> b!1747641 (= e!1118272 (and tp!497123 tp!497126))))

(assert (=> b!1746250 (= tp!496916 e!1118272)))

(declare-fun b!1747643 () Bool)

(declare-fun tp!497124 () Bool)

(declare-fun tp!497125 () Bool)

(assert (=> b!1747643 (= e!1118272 (and tp!497124 tp!497125))))

(declare-fun b!1747640 () Bool)

(assert (=> b!1747640 (= e!1118272 tp_is_empty!7737)))

(declare-fun b!1747642 () Bool)

(declare-fun tp!497127 () Bool)

(assert (=> b!1747642 (= e!1118272 tp!497127)))

(assert (= (and b!1746250 ((_ is ElementMatch!4747) (regOne!10006 (regex!3419 (h!24591 rules!3447))))) b!1747640))

(assert (= (and b!1746250 ((_ is Concat!8257) (regOne!10006 (regex!3419 (h!24591 rules!3447))))) b!1747641))

(assert (= (and b!1746250 ((_ is Star!4747) (regOne!10006 (regex!3419 (h!24591 rules!3447))))) b!1747642))

(assert (= (and b!1746250 ((_ is Union!4747) (regOne!10006 (regex!3419 (h!24591 rules!3447))))) b!1747643))

(declare-fun b!1747645 () Bool)

(declare-fun e!1118273 () Bool)

(declare-fun tp!497128 () Bool)

(declare-fun tp!497131 () Bool)

(assert (=> b!1747645 (= e!1118273 (and tp!497128 tp!497131))))

(assert (=> b!1746250 (= tp!496919 e!1118273)))

(declare-fun b!1747647 () Bool)

(declare-fun tp!497129 () Bool)

(declare-fun tp!497130 () Bool)

(assert (=> b!1747647 (= e!1118273 (and tp!497129 tp!497130))))

(declare-fun b!1747644 () Bool)

(assert (=> b!1747644 (= e!1118273 tp_is_empty!7737)))

(declare-fun b!1747646 () Bool)

(declare-fun tp!497132 () Bool)

(assert (=> b!1747646 (= e!1118273 tp!497132)))

(assert (= (and b!1746250 ((_ is ElementMatch!4747) (regTwo!10006 (regex!3419 (h!24591 rules!3447))))) b!1747644))

(assert (= (and b!1746250 ((_ is Concat!8257) (regTwo!10006 (regex!3419 (h!24591 rules!3447))))) b!1747645))

(assert (= (and b!1746250 ((_ is Star!4747) (regTwo!10006 (regex!3419 (h!24591 rules!3447))))) b!1747646))

(assert (= (and b!1746250 ((_ is Union!4747) (regTwo!10006 (regex!3419 (h!24591 rules!3447))))) b!1747647))

(declare-fun b_lambda!56067 () Bool)

(assert (= b_lambda!55973 (or (and b!1745577 b_free!48043 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48059 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745601 b_free!48051 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1747592 b_free!48067 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48047 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56067)))

(declare-fun b_lambda!56069 () Bool)

(assert (= b_lambda!55969 (or (and b!1745577 b_free!48043 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48059 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745601 b_free!48051 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1747592 b_free!48067 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48047 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56069)))

(declare-fun b_lambda!56071 () Bool)

(assert (= b_lambda!55961 (or (and b!1745601 b_free!48053 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48061 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48049 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1747592 b_free!48069 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745577 b_free!48045 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56071)))

(declare-fun b_lambda!56073 () Bool)

(assert (= b_lambda!56027 (or d!533462 b_lambda!56073)))

(declare-fun bs!403429 () Bool)

(declare-fun d!534358 () Bool)

(assert (= bs!403429 (and d!534358 d!533462)))

(assert (=> bs!403429 (= (dynLambda!9096 lambda!69716 lt!673085) (= (list!7768 (dynLambda!9089 (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085))) (list!7768 lt!673085)))))

(declare-fun b_lambda!56085 () Bool)

(assert (=> (not b_lambda!56085) (not bs!403429)))

(assert (=> bs!403429 t!162439))

(declare-fun b_and!130201 () Bool)

(assert (= b_and!130199 (and (=> t!162439 result!125814) b_and!130201)))

(assert (=> bs!403429 t!162246))

(declare-fun b_and!130203 () Bool)

(assert (= b_and!130121 (and (=> t!162246 result!125616) b_and!130203)))

(assert (=> bs!403429 t!162309))

(declare-fun b_and!130205 () Bool)

(assert (= b_and!130127 (and (=> t!162309 result!125690) b_and!130205)))

(assert (=> bs!403429 t!162250))

(declare-fun b_and!130207 () Bool)

(assert (= b_and!130125 (and (=> t!162250 result!125622) b_and!130207)))

(assert (=> bs!403429 t!162248))

(declare-fun b_and!130209 () Bool)

(assert (= b_and!130123 (and (=> t!162248 result!125620) b_and!130209)))

(declare-fun b_lambda!56087 () Bool)

(assert (=> (not b_lambda!56087) (not bs!403429)))

(assert (=> bs!403429 t!162254))

(declare-fun b_and!130211 () Bool)

(assert (= b_and!130191 (and (=> t!162254 result!125628) b_and!130211)))

(assert (=> bs!403429 t!162252))

(declare-fun b_and!130213 () Bool)

(assert (= b_and!130189 (and (=> t!162252 result!125624) b_and!130213)))

(assert (=> bs!403429 t!162303))

(declare-fun b_and!130215 () Bool)

(assert (= b_and!130195 (and (=> t!162303 result!125684) b_and!130215)))

(assert (=> bs!403429 t!162423))

(declare-fun b_and!130217 () Bool)

(assert (= b_and!130197 (and (=> t!162423 result!125798) b_and!130217)))

(assert (=> bs!403429 t!162256))

(declare-fun b_and!130219 () Bool)

(assert (= b_and!130193 (and (=> t!162256 result!125630) b_and!130219)))

(assert (=> bs!403429 m!2157521))

(assert (=> bs!403429 m!2157523))

(assert (=> bs!403429 m!2157525))

(assert (=> bs!403429 m!2157521))

(assert (=> bs!403429 m!2157523))

(assert (=> bs!403429 m!2157545))

(assert (=> d!533942 d!534358))

(declare-fun b_lambda!56075 () Bool)

(assert (= b_lambda!56019 (or d!533492 b_lambda!56075)))

(declare-fun bs!403430 () Bool)

(declare-fun d!534360 () Bool)

(assert (= bs!403430 (and d!534360 d!533492)))

(assert (=> bs!403430 (= (dynLambda!9093 lambda!69722 (h!24591 rules!3447)) (regex!3419 (h!24591 rules!3447)))))

(assert (=> b!1746641 d!534360))

(declare-fun b_lambda!56077 () Bool)

(assert (= b_lambda!55967 (or (and b!1745577 b_free!48043 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48059 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745601 b_free!48051 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1747592 b_free!48067 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48047 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56077)))

(declare-fun b_lambda!56079 () Bool)

(assert (= b_lambda!56065 (or d!533476 b_lambda!56079)))

(declare-fun bs!403431 () Bool)

(declare-fun d!534362 () Bool)

(assert (= bs!403431 (and d!534362 d!533476)))

(declare-fun res!785846 () Bool)

(declare-fun e!1118274 () Bool)

(assert (=> bs!403431 (=> res!785846 e!1118274)))

(assert (=> bs!403431 (= res!785846 (not (= (list!7768 lt!673085) (list!7768 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))))))))

(assert (=> bs!403431 (= (dynLambda!9098 lambda!69719 lt!673085 (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096)))) e!1118274)))

(declare-fun b!1747648 () Bool)

(assert (=> b!1747648 (= e!1118274 (= (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) lt!673085) (dynLambda!9090 (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))) (seqFromList!2389 (originalCharacters!4233 (_1!10817 lt!673096))))))))

(assert (= (and bs!403431 (not res!785846)) b!1747648))

(declare-fun b_lambda!56089 () Bool)

(assert (=> (not b_lambda!56089) (not b!1747648)))

(assert (=> b!1747648 t!162252))

(declare-fun b_and!130221 () Bool)

(assert (= b_and!130213 (and (=> t!162252 result!125624) b_and!130221)))

(assert (=> b!1747648 t!162423))

(declare-fun b_and!130223 () Bool)

(assert (= b_and!130217 (and (=> t!162423 result!125798) b_and!130223)))

(assert (=> b!1747648 t!162254))

(declare-fun b_and!130225 () Bool)

(assert (= b_and!130211 (and (=> t!162254 result!125628) b_and!130225)))

(assert (=> b!1747648 t!162256))

(declare-fun b_and!130227 () Bool)

(assert (= b_and!130219 (and (=> t!162256 result!125630) b_and!130227)))

(assert (=> b!1747648 t!162303))

(declare-fun b_and!130229 () Bool)

(assert (= b_and!130215 (and (=> t!162303 result!125684) b_and!130229)))

(declare-fun b_lambda!56091 () Bool)

(assert (=> (not b_lambda!56091) (not b!1747648)))

(assert (=> b!1747648 t!162305))

(declare-fun b_and!130231 () Bool)

(assert (= b_and!130229 (and (=> t!162305 result!125686) b_and!130231)))

(assert (=> b!1747648 t!162277))

(declare-fun b_and!130233 () Bool)

(assert (= b_and!130227 (and (=> t!162277 result!125648) b_and!130233)))

(assert (=> b!1747648 t!162425))

(declare-fun b_and!130235 () Bool)

(assert (= b_and!130223 (and (=> t!162425 result!125800) b_and!130235)))

(assert (=> b!1747648 t!162275))

(declare-fun b_and!130237 () Bool)

(assert (= b_and!130225 (and (=> t!162275 result!125646) b_and!130237)))

(assert (=> b!1747648 t!162273))

(declare-fun b_and!130239 () Bool)

(assert (= b_and!130221 (and (=> t!162273 result!125644) b_and!130239)))

(assert (=> bs!403431 m!2157545))

(assert (=> bs!403431 m!2157497))

(assert (=> bs!403431 m!2157903))

(assert (=> b!1747648 m!2157521))

(assert (=> b!1747648 m!2157497))

(assert (=> b!1747648 m!2157907))

(assert (=> d!534270 d!534362))

(declare-fun b_lambda!56081 () Bool)

(assert (= b_lambda!55965 (or (and b!1745601 b_free!48053 (= (toChars!4789 (transformation!3419 rule!422)) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48061 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48049 (= (toChars!4789 (transformation!3419 (h!24591 rules!3447))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1747592 b_free!48069 (= (toChars!4789 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745577 b_free!48045 (= (toChars!4789 (transformation!3419 (rule!5423 token!523))) (toChars!4789 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56081)))

(declare-fun b_lambda!56083 () Bool)

(assert (= b_lambda!55971 (or (and b!1745577 b_free!48043 (= (toValue!4930 (transformation!3419 (rule!5423 token!523))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1746215 b_free!48059 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 rules!3447)))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745601 b_free!48051 (= (toValue!4930 (transformation!3419 rule!422)) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1747592 b_free!48067 (= (toValue!4930 (transformation!3419 (h!24591 (t!162265 (t!162265 rules!3447))))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) (and b!1745592 b_free!48047 (= (toValue!4930 (transformation!3419 (h!24591 rules!3447))) (toValue!4930 (transformation!3419 (rule!5423 (_1!10817 lt!673096)))))) b_lambda!56083)))

(check-sat (not b!1747546) (not b!1747588) (not d!534164) (not b!1747381) (not b!1747502) (not b!1746695) (not b!1747323) (not d!533716) (not b!1746697) (not b!1747565) (not b!1746910) (not b!1747380) (not d!534254) (not d!534222) (not b!1746751) (not b!1747326) (not b_lambda!56081) (not tb!104575) (not b!1747398) (not b!1747630) (not b!1747282) (not b!1746728) (not bm!110322) (not b!1747542) (not bm!110331) (not d!534210) (not b!1746450) (not b_lambda!56067) (not b!1747583) (not b!1747564) (not b_lambda!56073) (not b!1747427) (not b!1747325) (not d!533986) (not b!1746748) (not b!1747642) (not b!1746949) (not d!534246) (not b!1746532) (not b!1746894) (not d!534256) (not b!1746246) (not d!534226) (not b!1747441) (not b!1747473) (not b!1746874) (not d!534224) (not b!1747600) (not b!1747402) (not b!1747639) (not b!1747340) (not b!1747123) (not d!533746) (not d!534202) (not b!1747608) (not b!1747537) (not b!1747544) (not b_lambda!56021) (not d!533712) (not bm!110342) (not b!1747605) (not d!534336) (not b!1746867) (not b!1747499) (not b!1746945) (not b!1747315) (not d!533992) (not b!1747431) (not b!1747575) (not bm!110306) (not bm!110329) (not d!533940) (not d!533932) (not b!1747376) (not b!1746612) (not bm!110297) (not b!1747610) (not b_next!48765) (not d!533982) (not b_lambda!56079) (not b!1747172) (not b!1747164) (not b!1746464) (not d!534218) (not b_lambda!56003) (not b_lambda!56007) (not b!1747225) (not d!534152) (not b!1747459) (not bs!403431) (not d!533822) (not b!1747316) (not b!1747342) (not b!1746923) b_and!130205 (not bm!110330) (not b!1746481) (not b!1747521) (not b_next!48755) b_and!130203 (not b!1745707) (not b!1747222) (not b!1747519) (not d!534342) (not b!1747584) (not b!1747514) (not b!1746865) (not b!1747582) (not b!1746892) (not tb!104507) (not b_next!48747) (not b_lambda!56077) (not d!534206) (not b!1747368) (not b!1747540) (not d!534130) (not b!1747606) b_and!130207 (not b!1747445) (not b!1747488) (not d!534316) (not b!1746750) (not b!1746881) (not b!1746942) (not tb!104531) (not b!1747147) (not bm!110339) (not d!534166) (not b!1746484) (not b!1747471) (not b!1747580) (not b!1747643) (not b!1746918) (not b!1747370) (not b!1746916) (not b_lambda!56069) (not b!1747474) (not bm!110310) (not b!1747629) (not b!1746569) (not b!1747562) (not d!533742) (not d!534136) (not b!1747566) (not d!534314) (not b_next!48763) (not b_lambda!56029) (not b!1747168) (not b!1747346) (not b!1747545) (not b!1746876) (not b!1747388) (not d!534216) (not b!1747412) (not b!1746946) (not b!1747638) (not b!1746664) (not d!534162) (not b!1747495) (not d!534296) (not b!1747504) (not b!1747298) (not b!1747619) (not b!1746641) (not d!534188) (not b!1747146) (not b!1747446) (not b!1746611) (not b_lambda!56071) (not b!1747609) (not d!533980) (not b!1746742) (not b!1747171) (not b!1747464) (not d!534244) (not b!1747451) (not b!1747466) (not d!534150) (not d!533824) (not d!533724) (not b!1747145) (not bm!110333) (not d!534276) (not b!1747455) (not b!1746863) (not b!1747450) (not b!1747507) (not b!1747283) (not b!1747623) (not b!1747385) (not b!1746465) (not b!1747456) (not b!1747571) (not b!1746666) (not b!1746746) (not b_lambda!56085) (not b!1747601) (not b!1747165) (not b!1747212) (not d!534234) (not b!1747552) (not b!1747330) (not b!1746912) (not d!533942) b_and!130231 (not b!1747500) (not b!1746890) (not b!1747581) (not b!1746458) (not d!533954) (not b!1747522) (not b!1747393) (not b!1746889) (not b!1747559) (not b!1747396) (not bm!110286) (not b_lambda!56087) (not b!1747589) (not b!1746493) (not bm!110309) (not b!1746936) (not b!1746752) (not b!1747166) (not d!533774) (not bm!110344) (not b!1747484) (not b!1746738) (not d!534324) (not b!1747569) (not b!1746888) (not b!1747591) (not d!533766) (not d!534132) (not b!1746869) (not b!1747615) (not b!1747362) (not b!1747229) (not d!534348) (not b!1747493) (not b!1746690) (not b!1747284) (not b_next!48773) (not d!534264) (not b!1747577) (not b_lambda!56031) (not b!1747527) (not d!534270) (not b!1747622) (not b!1747576) (not b!1746895) tp_is_empty!7737 (not b!1747602) (not b!1747497) (not b!1747568) (not b!1747167) (not b!1746486) (not b!1747532) (not b!1747443) (not b!1747405) (not b!1747429) (not d!534330) (not b!1746466) (not b!1747550) (not b!1747414) (not b!1747452) (not b!1747641) (not b!1747312) (not d!534304) (not b!1747625) (not b!1746679) (not b!1747496) (not b!1747457) (not b!1747626) (not b!1747594) (not b!1747415) (not b!1747570) (not d!533792) (not d!534344) (not d!534140) (not b!1747399) (not bm!110288) (not b!1747170) (not b!1746686) (not b!1747617) (not b_lambda!56005) (not b!1747572) (not b!1746929) b_and!130201 b_and!130237 (not bm!110298) (not d!534172) (not b!1747384) (not b!1747491) (not b!1746902) (not b!1746883) (not b!1747394) (not b!1747122) (not b!1747621) (not b_lambda!55999) (not b!1747345) (not b!1747369) (not bm!110276) (not d!534356) (not b!1747313) (not b!1746930) (not b!1747501) (not b!1746913) (not b!1746884) (not b!1746744) (not d!533794) (not d!534302) (not b!1747406) (not d!534352) (not b!1747121) (not b!1746947) (not b!1746886) (not b!1747407) (not b!1747585) (not bm!110347) (not d!533956) (not d!534284) (not d!533958) (not b!1747372) (not b!1747508) (not d!534260) (not d!534340) (not b_lambda!56075) (not b!1747557) (not b!1747498) (not b!1747598) (not b!1747604) (not d!533988) (not d!534346) (not d!534326) (not b!1746943) (not d!534200) (not d!534328) (not b!1747216) (not b!1747149) (not bm!110305) (not b!1747543) (not d!533930) (not d!533844) (not b!1747432) (not d!534278) (not b!1747465) (not b!1747337) (not b!1747646) (not b!1747453) (not b!1747517) (not d!534272) (not b!1747587) (not b_lambda!56083) (not b!1747379) (not b!1746692) (not b!1747347) (not b!1747520) (not d!533790) (not b!1747634) (not d!533944) (not d!534248) (not b!1747454) (not d!534168) (not bm!110337) (not b!1746610) b_and!130239 (not b_lambda!56061) (not b!1747339) (not b!1747355) (not d!534294) (not b!1747593) (not b!1746898) (not b!1747148) (not b!1746866) (not b!1747489) (not b!1746893) (not b!1746871) (not b!1747647) (not b!1747573) (not b!1747635) (not b!1747509) (not b!1747597) (not d!534134) (not b_next!48749) (not d!533972) (not b!1747390) (not b!1746887) (not b!1747541) (not bm!110346) (not b!1747611) (not b!1747627) (not b!1747618) (not b_lambda!56001) (not b!1747637) (not b!1747461) (not d!534220) (not b!1746460) (not b_next!48757) (not b!1747221) (not b!1747516) (not b!1746663) (not d!533764) (not b!1746897) (not d!534274) (not bm!110340) (not b!1747595) (not b!1746613) (not d!534174) (not b_lambda!56091) (not d!533990) b_and!130233 (not b!1746937) (not b!1747596) (not d!533970) (not b!1747458) (not b!1747614) (not b_lambda!56089) (not tb!104567) (not b!1747578) (not b!1747373) (not b!1746616) (not b!1747579) (not b!1747525) (not d!533758) (not b!1746667) (not bm!110328) (not b!1747551) b_and!130209 (not b_next!48751) (not b!1747317) (not d!534298) (not b_lambda!56063) (not b!1747314) (not b!1746868) (not b!1746680) (not d!534266) (not b!1747535) b_and!130235 (not b!1746615) (not b!1747214) (not b_next!48771) (not d!534170) (not b!1746875) (not b!1746485) (not bm!110335) (not b_next!48753) (not b!1746688) (not b!1747613) (not b!1746864) (not d!533740) (not b!1746926) (not d!534350) (not b!1747352) (not b!1747448) (not b!1746694) (not b!1746685) (not b!1747539) (not b!1746491) (not b!1747425) (not d!534322) (not b!1747633) (not d!534320) (not bm!110345) (not d!533998) (not b!1746925) (not b!1746239) (not d!533802) (not bm!110308) (not b!1746618) (not b!1746917) (not b!1746494) (not b!1747590) (not b!1747523) (not b!1747560) (not b!1747645) (not d!534230) (not d!534250) (not b!1746931) (not b!1747124) (not b!1747631) (not b!1747354) (not d!534238) (not tb!104523) (not bs!403429) (not b!1747526) (not b!1747392))
(check-sat (not b_next!48765) (not b_next!48747) b_and!130207 (not b_next!48763) b_and!130231 (not b_next!48773) b_and!130239 (not b_next!48749) (not b_next!48757) b_and!130205 (not b_next!48755) b_and!130203 b_and!130201 b_and!130237 b_and!130233 b_and!130209 (not b_next!48751) b_and!130235 (not b_next!48771) (not b_next!48753))
