; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!403354 () Bool)

(assert start!403354)

(declare-fun b!4219657 () Bool)

(declare-fun b_free!123867 () Bool)

(declare-fun b_next!124571 () Bool)

(assert (=> b!4219657 (= b_free!123867 (not b_next!124571))))

(declare-fun tp!1290949 () Bool)

(declare-fun b_and!332837 () Bool)

(assert (=> b!4219657 (= tp!1290949 b_and!332837)))

(declare-fun b_free!123869 () Bool)

(declare-fun b_next!124573 () Bool)

(assert (=> b!4219657 (= b_free!123869 (not b_next!124573))))

(declare-fun tp!1290950 () Bool)

(declare-fun b_and!332839 () Bool)

(assert (=> b!4219657 (= tp!1290950 b_and!332839)))

(declare-fun b!4219659 () Bool)

(declare-fun b_free!123871 () Bool)

(declare-fun b_next!124575 () Bool)

(assert (=> b!4219659 (= b_free!123871 (not b_next!124575))))

(declare-fun tp!1290952 () Bool)

(declare-fun b_and!332841 () Bool)

(assert (=> b!4219659 (= tp!1290952 b_and!332841)))

(declare-fun b_free!123873 () Bool)

(declare-fun b_next!124577 () Bool)

(assert (=> b!4219659 (= b_free!123873 (not b_next!124577))))

(declare-fun tp!1290942 () Bool)

(declare-fun b_and!332843 () Bool)

(assert (=> b!4219659 (= tp!1290942 b_and!332843)))

(declare-fun b!4219652 () Bool)

(declare-fun b_free!123875 () Bool)

(declare-fun b_next!124579 () Bool)

(assert (=> b!4219652 (= b_free!123875 (not b_next!124579))))

(declare-fun tp!1290948 () Bool)

(declare-fun b_and!332845 () Bool)

(assert (=> b!4219652 (= tp!1290948 b_and!332845)))

(declare-fun b_free!123877 () Bool)

(declare-fun b_next!124581 () Bool)

(assert (=> b!4219652 (= b_free!123877 (not b_next!124581))))

(declare-fun tp!1290951 () Bool)

(declare-fun b_and!332847 () Bool)

(assert (=> b!4219652 (= tp!1290951 b_and!332847)))

(declare-fun b!4219654 () Bool)

(declare-fun b_free!123879 () Bool)

(declare-fun b_next!124583 () Bool)

(assert (=> b!4219654 (= b_free!123879 (not b_next!124583))))

(declare-fun tp!1290935 () Bool)

(declare-fun b_and!332849 () Bool)

(assert (=> b!4219654 (= tp!1290935 b_and!332849)))

(declare-fun b_free!123881 () Bool)

(declare-fun b_next!124585 () Bool)

(assert (=> b!4219654 (= b_free!123881 (not b_next!124585))))

(declare-fun tp!1290945 () Bool)

(declare-fun b_and!332851 () Bool)

(assert (=> b!4219654 (= tp!1290945 b_and!332851)))

(declare-fun e!2619656 () Bool)

(declare-datatypes ((List!46539 0))(
  ( (Nil!46415) (Cons!46415 (h!51835 (_ BitVec 16)) (t!348924 List!46539)) )
))
(declare-datatypes ((TokenValue!8012 0))(
  ( (FloatLiteralValue!16024 (text!56529 List!46539)) (TokenValueExt!8011 (__x!28247 Int)) (Broken!40060 (value!242290 List!46539)) (Object!8135) (End!8012) (Def!8012) (Underscore!8012) (Match!8012) (Else!8012) (Error!8012) (Case!8012) (If!8012) (Extends!8012) (Abstract!8012) (Class!8012) (Val!8012) (DelimiterValue!16024 (del!8072 List!46539)) (KeywordValue!8018 (value!242291 List!46539)) (CommentValue!16024 (value!242292 List!46539)) (WhitespaceValue!16024 (value!242293 List!46539)) (IndentationValue!8012 (value!242294 List!46539)) (String!53929) (Int32!8012) (Broken!40061 (value!242295 List!46539)) (Boolean!8013) (Unit!65590) (OperatorValue!8015 (op!8072 List!46539)) (IdentifierValue!16024 (value!242296 List!46539)) (IdentifierValue!16025 (value!242297 List!46539)) (WhitespaceValue!16025 (value!242298 List!46539)) (True!16024) (False!16024) (Broken!40062 (value!242299 List!46539)) (Broken!40063 (value!242300 List!46539)) (True!16025) (RightBrace!8012) (RightBracket!8012) (Colon!8012) (Null!8012) (Comma!8012) (LeftBracket!8012) (False!16025) (LeftBrace!8012) (ImaginaryLiteralValue!8012 (text!56530 List!46539)) (StringLiteralValue!24036 (value!242301 List!46539)) (EOFValue!8012 (value!242302 List!46539)) (IdentValue!8012 (value!242303 List!46539)) (DelimiterValue!16025 (value!242304 List!46539)) (DedentValue!8012 (value!242305 List!46539)) (NewLineValue!8012 (value!242306 List!46539)) (IntegerValue!24036 (value!242307 (_ BitVec 32)) (text!56531 List!46539)) (IntegerValue!24037 (value!242308 Int) (text!56532 List!46539)) (Times!8012) (Or!8012) (Equal!8012) (Minus!8012) (Broken!40064 (value!242309 List!46539)) (And!8012) (Div!8012) (LessEqual!8012) (Mod!8012) (Concat!20699) (Not!8012) (Plus!8012) (SpaceValue!8012 (value!242310 List!46539)) (IntegerValue!24038 (value!242311 Int) (text!56533 List!46539)) (StringLiteralValue!24037 (text!56534 List!46539)) (FloatLiteralValue!16025 (text!56535 List!46539)) (BytesLiteralValue!8012 (value!242312 List!46539)) (CommentValue!16025 (value!242313 List!46539)) (StringLiteralValue!24038 (value!242314 List!46539)) (ErrorTokenValue!8012 (msg!8073 List!46539)) )
))
(declare-datatypes ((C!25568 0))(
  ( (C!25569 (val!14946 Int)) )
))
(declare-datatypes ((List!46540 0))(
  ( (Nil!46416) (Cons!46416 (h!51836 C!25568) (t!348925 List!46540)) )
))
(declare-datatypes ((IArray!27991 0))(
  ( (IArray!27992 (innerList!14053 List!46540)) )
))
(declare-datatypes ((Regex!12687 0))(
  ( (ElementMatch!12687 (c!718200 C!25568)) (Concat!20700 (regOne!25886 Regex!12687) (regTwo!25886 Regex!12687)) (EmptyExpr!12687) (Star!12687 (reg!13016 Regex!12687)) (EmptyLang!12687) (Union!12687 (regOne!25887 Regex!12687) (regTwo!25887 Regex!12687)) )
))
(declare-datatypes ((Conc!13993 0))(
  ( (Node!13993 (left!34527 Conc!13993) (right!34857 Conc!13993) (csize!28216 Int) (cheight!14204 Int)) (Leaf!21628 (xs!17299 IArray!27991) (csize!28217 Int)) (Empty!13993) )
))
(declare-datatypes ((BalanceConc!27580 0))(
  ( (BalanceConc!27581 (c!718201 Conc!13993)) )
))
(declare-datatypes ((TokenValueInjection!15452 0))(
  ( (TokenValueInjection!15453 (toValue!10506 Int) (toChars!10365 Int)) )
))
(declare-datatypes ((String!53930 0))(
  ( (String!53931 (value!242315 String)) )
))
(declare-datatypes ((Rule!15364 0))(
  ( (Rule!15365 (regex!7782 Regex!12687) (tag!8646 String!53930) (isSeparator!7782 Bool) (transformation!7782 TokenValueInjection!15452)) )
))
(declare-fun rBis!178 () Rule!15364)

(declare-fun e!2619661 () Bool)

(declare-fun b!4219648 () Bool)

(declare-fun tp!1290946 () Bool)

(declare-fun inv!61069 (String!53930) Bool)

(declare-fun inv!61072 (TokenValueInjection!15452) Bool)

(assert (=> b!4219648 (= e!2619661 (and tp!1290946 (inv!61069 (tag!8646 rBis!178)) (inv!61072 (transformation!7782 rBis!178)) e!2619656))))

(declare-fun b!4219649 () Bool)

(declare-fun res!1734246 () Bool)

(declare-fun e!2619642 () Bool)

(assert (=> b!4219649 (=> res!1734246 e!2619642)))

(declare-fun input!3517 () List!46540)

(declare-fun pBis!121 () List!46540)

(declare-fun suffixBis!41 () List!46540)

(declare-fun ++!11856 (List!46540 List!46540) List!46540)

(assert (=> b!4219649 (= res!1734246 (not (= (++!11856 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4219650 () Bool)

(declare-fun res!1734235 () Bool)

(declare-fun e!2619652 () Bool)

(assert (=> b!4219650 (=> (not res!1734235) (not e!2619652))))

(declare-datatypes ((LexerInterface!7377 0))(
  ( (LexerInterfaceExt!7374 (__x!28248 Int)) (Lexer!7375) )
))
(declare-fun thiss!26544 () LexerInterface!7377)

(declare-fun ruleValid!3494 (LexerInterface!7377 Rule!15364) Bool)

(assert (=> b!4219650 (= res!1734235 (ruleValid!3494 thiss!26544 rBis!178))))

(declare-datatypes ((Token!14266 0))(
  ( (Token!14267 (value!242316 TokenValue!8012) (rule!10914 Rule!15364) (size!34086 Int) (originalCharacters!8164 List!46540)) )
))
(declare-fun tBis!41 () Token!14266)

(declare-fun b!4219651 () Bool)

(declare-fun tp!1290937 () Bool)

(declare-fun e!2619662 () Bool)

(declare-fun e!2619638 () Bool)

(assert (=> b!4219651 (= e!2619638 (and tp!1290937 (inv!61069 (tag!8646 (rule!10914 tBis!41))) (inv!61072 (transformation!7782 (rule!10914 tBis!41))) e!2619662))))

(assert (=> b!4219652 (= e!2619656 (and tp!1290948 tp!1290951))))

(declare-fun e!2619654 () Bool)

(declare-fun tp!1290954 () Bool)

(declare-fun t!8364 () Token!14266)

(declare-fun e!2619659 () Bool)

(declare-fun b!4219653 () Bool)

(assert (=> b!4219653 (= e!2619659 (and tp!1290954 (inv!61069 (tag!8646 (rule!10914 t!8364))) (inv!61072 (transformation!7782 (rule!10914 t!8364))) e!2619654))))

(assert (=> b!4219654 (= e!2619654 (and tp!1290935 tp!1290945))))

(declare-fun b!4219655 () Bool)

(declare-fun e!2619650 () Bool)

(declare-fun tp_is_empty!22341 () Bool)

(declare-fun tp!1290936 () Bool)

(assert (=> b!4219655 (= e!2619650 (and tp_is_empty!22341 tp!1290936))))

(declare-fun tp!1290940 () Bool)

(declare-fun b!4219656 () Bool)

(declare-fun e!2619657 () Bool)

(declare-fun inv!21 (TokenValue!8012) Bool)

(assert (=> b!4219656 (= e!2619657 (and (inv!21 (value!242316 tBis!41)) e!2619638 tp!1290940))))

(declare-fun e!2619653 () Bool)

(assert (=> b!4219657 (= e!2619653 (and tp!1290949 tp!1290950))))

(declare-fun b!4219658 () Bool)

(declare-fun res!1734244 () Bool)

(declare-fun e!2619645 () Bool)

(assert (=> b!4219658 (=> (not res!1734244) (not e!2619645))))

(declare-datatypes ((List!46541 0))(
  ( (Nil!46417) (Cons!46417 (h!51837 Rule!15364) (t!348926 List!46541)) )
))
(declare-fun rules!3967 () List!46541)

(declare-fun contains!9605 (List!46541 Rule!15364) Bool)

(assert (=> b!4219658 (= res!1734244 (contains!9605 rules!3967 rBis!178))))

(assert (=> b!4219659 (= e!2619662 (and tp!1290952 tp!1290942))))

(declare-fun b!4219660 () Bool)

(assert (=> b!4219660 (= e!2619645 e!2619652)))

(declare-fun res!1734240 () Bool)

(assert (=> b!4219660 (=> (not res!1734240) (not e!2619652))))

(declare-datatypes ((tuple2!44142 0))(
  ( (tuple2!44143 (_1!25205 Token!14266) (_2!25205 List!46540)) )
))
(declare-datatypes ((Option!9970 0))(
  ( (None!9969) (Some!9969 (v!40857 tuple2!44142)) )
))
(declare-fun lt!1501775 () Option!9970)

(declare-fun maxPrefix!4417 (LexerInterface!7377 List!46541 List!46540) Option!9970)

(assert (=> b!4219660 (= res!1734240 (= (maxPrefix!4417 thiss!26544 rules!3967 input!3517) lt!1501775))))

(declare-fun suffix!1557 () List!46540)

(assert (=> b!4219660 (= lt!1501775 (Some!9969 (tuple2!44143 t!8364 suffix!1557)))))

(declare-fun b!4219661 () Bool)

(declare-fun res!1734242 () Bool)

(assert (=> b!4219661 (=> (not res!1734242) (not e!2619645))))

(declare-fun p!3001 () List!46540)

(declare-fun isPrefix!4641 (List!46540 List!46540) Bool)

(assert (=> b!4219661 (= res!1734242 (isPrefix!4641 p!3001 input!3517))))

(declare-fun b!4219662 () Bool)

(declare-fun e!2619648 () Bool)

(declare-fun tp!1290938 () Bool)

(assert (=> b!4219662 (= e!2619648 (and tp_is_empty!22341 tp!1290938))))

(declare-fun b!4219663 () Bool)

(declare-fun e!2619646 () Bool)

(declare-fun tp!1290943 () Bool)

(assert (=> b!4219663 (= e!2619646 (and tp_is_empty!22341 tp!1290943))))

(declare-fun b!4219664 () Bool)

(assert (=> b!4219664 (= e!2619642 true)))

(declare-fun lt!1501778 () Int)

(declare-fun size!34087 (List!46540) Int)

(assert (=> b!4219664 (<= lt!1501778 (size!34087 p!3001))))

(declare-datatypes ((Unit!65591 0))(
  ( (Unit!65592) )
))
(declare-fun lt!1501774 () Unit!65591)

(declare-fun lt!1501780 () tuple2!44142)

(declare-fun lemmaCharactersSize!1509 (Token!14266) Unit!65591)

(assert (=> b!4219664 (= lt!1501774 (lemmaCharactersSize!1509 (_1!25205 lt!1501780)))))

(declare-fun lt!1501773 () Unit!65591)

(assert (=> b!4219664 (= lt!1501773 (lemmaCharactersSize!1509 tBis!41))))

(declare-fun lt!1501782 () Unit!65591)

(assert (=> b!4219664 (= lt!1501782 (lemmaCharactersSize!1509 t!8364))))

(declare-fun lt!1501784 () Int)

(assert (=> b!4219664 (<= lt!1501784 lt!1501778)))

(declare-fun lt!1501770 () List!46540)

(assert (=> b!4219664 (= lt!1501778 (size!34087 lt!1501770))))

(assert (=> b!4219664 (= lt!1501784 (size!34087 pBis!121))))

(declare-fun lt!1501781 () Unit!65591)

(declare-fun lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!40 (LexerInterface!7377 List!46541 List!46540 Token!14266 List!46540 List!46540 List!46540 List!46540 Rule!15364 Token!14266) Unit!65591)

(assert (=> b!4219664 (= lt!1501781 (lemmaRuleReturnsPrefixSmallerEqualThanGlobalMaxPref!40 thiss!26544 (t!348926 rules!3967) lt!1501770 (_1!25205 lt!1501780) input!3517 (_2!25205 lt!1501780) pBis!121 suffixBis!41 rBis!178 tBis!41))))

(declare-fun rulesInvariant!6588 (LexerInterface!7377 List!46541) Bool)

(assert (=> b!4219664 (rulesInvariant!6588 thiss!26544 (t!348926 rules!3967))))

(declare-fun lt!1501771 () Unit!65591)

(declare-fun lemmaInvariantOnRulesThenOnTail!872 (LexerInterface!7377 Rule!15364 List!46541) Unit!65591)

(assert (=> b!4219664 (= lt!1501771 (lemmaInvariantOnRulesThenOnTail!872 thiss!26544 (h!51837 rules!3967) (t!348926 rules!3967)))))

(assert (=> b!4219664 (isPrefix!4641 lt!1501770 (++!11856 lt!1501770 (_2!25205 lt!1501780)))))

(declare-fun lt!1501783 () Unit!65591)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3096 (List!46540 List!46540) Unit!65591)

(assert (=> b!4219664 (= lt!1501783 (lemmaConcatTwoListThenFirstIsPrefix!3096 lt!1501770 (_2!25205 lt!1501780)))))

(declare-fun list!16795 (BalanceConc!27580) List!46540)

(declare-fun charsOf!5205 (Token!14266) BalanceConc!27580)

(assert (=> b!4219664 (= lt!1501770 (list!16795 (charsOf!5205 (_1!25205 lt!1501780))))))

(declare-fun lt!1501777 () Option!9970)

(declare-fun get!15107 (Option!9970) tuple2!44142)

(assert (=> b!4219664 (= lt!1501780 (get!15107 lt!1501777))))

(declare-fun lt!1501776 () Unit!65591)

(declare-fun e!2619649 () Unit!65591)

(assert (=> b!4219664 (= lt!1501776 e!2619649)))

(declare-fun c!718199 () Bool)

(declare-fun isEmpty!27500 (Option!9970) Bool)

(assert (=> b!4219664 (= c!718199 (isEmpty!27500 lt!1501777))))

(assert (=> b!4219664 (= lt!1501777 (maxPrefix!4417 thiss!26544 (t!348926 rules!3967) input!3517))))

(declare-fun b!4219665 () Bool)

(declare-fun Unit!65593 () Unit!65591)

(assert (=> b!4219665 (= e!2619649 Unit!65593)))

(declare-fun lt!1501779 () Unit!65591)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!640 (LexerInterface!7377 Rule!15364 List!46541 List!46540) Unit!65591)

(assert (=> b!4219665 (= lt!1501779 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!640 thiss!26544 rBis!178 (t!348926 rules!3967) input!3517))))

(assert (=> b!4219665 false))

(declare-fun b!4219666 () Bool)

(declare-fun res!1734233 () Bool)

(assert (=> b!4219666 (=> (not res!1734233) (not e!2619645))))

(assert (=> b!4219666 (= res!1734233 (rulesInvariant!6588 thiss!26544 rules!3967))))

(declare-fun b!4219667 () Bool)

(assert (=> b!4219667 (= e!2619652 (not e!2619642))))

(declare-fun res!1734234 () Bool)

(assert (=> b!4219667 (=> res!1734234 e!2619642)))

(declare-fun maxPrefixOneRule!3372 (LexerInterface!7377 Rule!15364 List!46540) Option!9970)

(assert (=> b!4219667 (= res!1734234 (not (= (maxPrefixOneRule!3372 thiss!26544 rBis!178 input!3517) (Some!9969 (tuple2!44143 tBis!41 suffixBis!41)))))))

(assert (=> b!4219667 (isPrefix!4641 input!3517 input!3517)))

(declare-fun lt!1501772 () Unit!65591)

(declare-fun lemmaIsPrefixRefl!3058 (List!46540 List!46540) Unit!65591)

(assert (=> b!4219667 (= lt!1501772 (lemmaIsPrefixRefl!3058 input!3517 input!3517))))

(declare-fun b!4219668 () Bool)

(declare-fun e!2619660 () Bool)

(declare-fun e!2619655 () Bool)

(declare-fun tp!1290939 () Bool)

(assert (=> b!4219668 (= e!2619660 (and e!2619655 tp!1290939))))

(declare-fun b!4219669 () Bool)

(declare-fun res!1734236 () Bool)

(assert (=> b!4219669 (=> res!1734236 e!2619642)))

(get-info :version)

(assert (=> b!4219669 (= res!1734236 (or (and ((_ is Cons!46417) rules!3967) ((_ is Nil!46417) (t!348926 rules!3967))) (not ((_ is Cons!46417) rules!3967)) (= (h!51837 rules!3967) rBis!178)))))

(declare-fun b!4219670 () Bool)

(declare-fun res!1734238 () Bool)

(assert (=> b!4219670 (=> (not res!1734238) (not e!2619645))))

(assert (=> b!4219670 (= res!1734238 (= (++!11856 p!3001 suffix!1557) input!3517))))

(declare-fun b!4219671 () Bool)

(declare-fun res!1734245 () Bool)

(assert (=> b!4219671 (=> (not res!1734245) (not e!2619645))))

(declare-fun isEmpty!27501 (List!46541) Bool)

(assert (=> b!4219671 (= res!1734245 (not (isEmpty!27501 rules!3967)))))

(declare-fun res!1734241 () Bool)

(assert (=> start!403354 (=> (not res!1734241) (not e!2619645))))

(assert (=> start!403354 (= res!1734241 ((_ is Lexer!7375) thiss!26544))))

(assert (=> start!403354 e!2619645))

(declare-fun inv!61073 (Token!14266) Bool)

(assert (=> start!403354 (and (inv!61073 tBis!41) e!2619657)))

(assert (=> start!403354 true))

(assert (=> start!403354 e!2619661))

(assert (=> start!403354 e!2619650))

(assert (=> start!403354 e!2619660))

(declare-fun e!2619637 () Bool)

(assert (=> start!403354 e!2619637))

(declare-fun e!2619643 () Bool)

(assert (=> start!403354 (and (inv!61073 t!8364) e!2619643)))

(assert (=> start!403354 e!2619648))

(assert (=> start!403354 e!2619646))

(declare-fun e!2619641 () Bool)

(assert (=> start!403354 e!2619641))

(declare-fun b!4219672 () Bool)

(declare-fun tp!1290941 () Bool)

(assert (=> b!4219672 (= e!2619637 (and tp_is_empty!22341 tp!1290941))))

(declare-fun b!4219673 () Bool)

(declare-fun tp!1290944 () Bool)

(assert (=> b!4219673 (= e!2619643 (and (inv!21 (value!242316 t!8364)) e!2619659 tp!1290944))))

(declare-fun b!4219674 () Bool)

(declare-fun Unit!65594 () Unit!65591)

(assert (=> b!4219674 (= e!2619649 Unit!65594)))

(declare-fun tp!1290947 () Bool)

(declare-fun b!4219675 () Bool)

(assert (=> b!4219675 (= e!2619655 (and tp!1290947 (inv!61069 (tag!8646 (h!51837 rules!3967))) (inv!61072 (transformation!7782 (h!51837 rules!3967))) e!2619653))))

(declare-fun b!4219676 () Bool)

(declare-fun res!1734237 () Bool)

(assert (=> b!4219676 (=> res!1734237 e!2619642)))

(assert (=> b!4219676 (= res!1734237 (not (= (maxPrefixOneRule!3372 thiss!26544 (h!51837 rules!3967) input!3517) lt!1501775)))))

(declare-fun b!4219677 () Bool)

(declare-fun res!1734239 () Bool)

(assert (=> b!4219677 (=> res!1734239 e!2619642)))

(assert (=> b!4219677 (= res!1734239 (not (= (list!16795 (charsOf!5205 tBis!41)) pBis!121)))))

(declare-fun b!4219678 () Bool)

(declare-fun res!1734243 () Bool)

(assert (=> b!4219678 (=> res!1734243 e!2619642)))

(assert (=> b!4219678 (= res!1734243 (not (= (rule!10914 tBis!41) rBis!178)))))

(declare-fun b!4219679 () Bool)

(declare-fun res!1734232 () Bool)

(assert (=> b!4219679 (=> (not res!1734232) (not e!2619645))))

(assert (=> b!4219679 (= res!1734232 (isPrefix!4641 pBis!121 input!3517))))

(declare-fun b!4219680 () Bool)

(declare-fun tp!1290953 () Bool)

(assert (=> b!4219680 (= e!2619641 (and tp_is_empty!22341 tp!1290953))))

(assert (= (and start!403354 res!1734241) b!4219670))

(assert (= (and b!4219670 res!1734238) b!4219661))

(assert (= (and b!4219661 res!1734242) b!4219679))

(assert (= (and b!4219679 res!1734232) b!4219671))

(assert (= (and b!4219671 res!1734245) b!4219666))

(assert (= (and b!4219666 res!1734233) b!4219658))

(assert (= (and b!4219658 res!1734244) b!4219660))

(assert (= (and b!4219660 res!1734240) b!4219650))

(assert (= (and b!4219650 res!1734235) b!4219667))

(assert (= (and b!4219667 (not res!1734234)) b!4219678))

(assert (= (and b!4219678 (not res!1734243)) b!4219677))

(assert (= (and b!4219677 (not res!1734239)) b!4219649))

(assert (= (and b!4219649 (not res!1734246)) b!4219669))

(assert (= (and b!4219669 (not res!1734236)) b!4219676))

(assert (= (and b!4219676 (not res!1734237)) b!4219664))

(assert (= (and b!4219664 c!718199) b!4219665))

(assert (= (and b!4219664 (not c!718199)) b!4219674))

(assert (= b!4219651 b!4219659))

(assert (= b!4219656 b!4219651))

(assert (= start!403354 b!4219656))

(assert (= b!4219648 b!4219652))

(assert (= start!403354 b!4219648))

(assert (= (and start!403354 ((_ is Cons!46416) p!3001)) b!4219655))

(assert (= b!4219675 b!4219657))

(assert (= b!4219668 b!4219675))

(assert (= (and start!403354 ((_ is Cons!46417) rules!3967)) b!4219668))

(assert (= (and start!403354 ((_ is Cons!46416) input!3517)) b!4219672))

(assert (= b!4219653 b!4219654))

(assert (= b!4219673 b!4219653))

(assert (= start!403354 b!4219673))

(assert (= (and start!403354 ((_ is Cons!46416) pBis!121)) b!4219662))

(assert (= (and start!403354 ((_ is Cons!46416) suffix!1557)) b!4219663))

(assert (= (and start!403354 ((_ is Cons!46416) suffixBis!41)) b!4219680))

(declare-fun m!4808385 () Bool)

(assert (=> b!4219664 m!4808385))

(declare-fun m!4808387 () Bool)

(assert (=> b!4219664 m!4808387))

(declare-fun m!4808389 () Bool)

(assert (=> b!4219664 m!4808389))

(declare-fun m!4808391 () Bool)

(assert (=> b!4219664 m!4808391))

(declare-fun m!4808393 () Bool)

(assert (=> b!4219664 m!4808393))

(declare-fun m!4808395 () Bool)

(assert (=> b!4219664 m!4808395))

(declare-fun m!4808397 () Bool)

(assert (=> b!4219664 m!4808397))

(declare-fun m!4808399 () Bool)

(assert (=> b!4219664 m!4808399))

(declare-fun m!4808401 () Bool)

(assert (=> b!4219664 m!4808401))

(declare-fun m!4808403 () Bool)

(assert (=> b!4219664 m!4808403))

(declare-fun m!4808405 () Bool)

(assert (=> b!4219664 m!4808405))

(assert (=> b!4219664 m!4808397))

(declare-fun m!4808407 () Bool)

(assert (=> b!4219664 m!4808407))

(declare-fun m!4808409 () Bool)

(assert (=> b!4219664 m!4808409))

(declare-fun m!4808411 () Bool)

(assert (=> b!4219664 m!4808411))

(declare-fun m!4808413 () Bool)

(assert (=> b!4219664 m!4808413))

(declare-fun m!4808415 () Bool)

(assert (=> b!4219664 m!4808415))

(assert (=> b!4219664 m!4808407))

(declare-fun m!4808417 () Bool)

(assert (=> b!4219664 m!4808417))

(declare-fun m!4808419 () Bool)

(assert (=> b!4219660 m!4808419))

(declare-fun m!4808421 () Bool)

(assert (=> b!4219677 m!4808421))

(assert (=> b!4219677 m!4808421))

(declare-fun m!4808423 () Bool)

(assert (=> b!4219677 m!4808423))

(declare-fun m!4808425 () Bool)

(assert (=> b!4219648 m!4808425))

(declare-fun m!4808427 () Bool)

(assert (=> b!4219648 m!4808427))

(declare-fun m!4808429 () Bool)

(assert (=> b!4219649 m!4808429))

(declare-fun m!4808431 () Bool)

(assert (=> b!4219666 m!4808431))

(declare-fun m!4808433 () Bool)

(assert (=> b!4219671 m!4808433))

(declare-fun m!4808435 () Bool)

(assert (=> start!403354 m!4808435))

(declare-fun m!4808437 () Bool)

(assert (=> start!403354 m!4808437))

(declare-fun m!4808439 () Bool)

(assert (=> b!4219670 m!4808439))

(declare-fun m!4808441 () Bool)

(assert (=> b!4219653 m!4808441))

(declare-fun m!4808443 () Bool)

(assert (=> b!4219653 m!4808443))

(declare-fun m!4808445 () Bool)

(assert (=> b!4219656 m!4808445))

(declare-fun m!4808447 () Bool)

(assert (=> b!4219667 m!4808447))

(declare-fun m!4808449 () Bool)

(assert (=> b!4219667 m!4808449))

(declare-fun m!4808451 () Bool)

(assert (=> b!4219667 m!4808451))

(declare-fun m!4808453 () Bool)

(assert (=> b!4219658 m!4808453))

(declare-fun m!4808455 () Bool)

(assert (=> b!4219661 m!4808455))

(declare-fun m!4808457 () Bool)

(assert (=> b!4219651 m!4808457))

(declare-fun m!4808459 () Bool)

(assert (=> b!4219651 m!4808459))

(declare-fun m!4808461 () Bool)

(assert (=> b!4219676 m!4808461))

(declare-fun m!4808463 () Bool)

(assert (=> b!4219675 m!4808463))

(declare-fun m!4808465 () Bool)

(assert (=> b!4219675 m!4808465))

(declare-fun m!4808467 () Bool)

(assert (=> b!4219673 m!4808467))

(declare-fun m!4808469 () Bool)

(assert (=> b!4219679 m!4808469))

(declare-fun m!4808471 () Bool)

(assert (=> b!4219650 m!4808471))

(declare-fun m!4808473 () Bool)

(assert (=> b!4219665 m!4808473))

(check-sat (not b!4219676) (not b_next!124571) (not b!4219664) (not b!4219663) (not b!4219680) (not b!4219650) b_and!332841 (not b!4219667) (not b!4219670) b_and!332847 (not b!4219679) (not b!4219675) (not b!4219655) (not b!4219651) (not b_next!124577) b_and!332851 (not b!4219662) (not start!403354) (not b!4219668) b_and!332839 (not b_next!124579) (not b!4219671) b_and!332837 (not b!4219653) (not b!4219649) (not b!4219661) (not b!4219673) (not b_next!124573) (not b_next!124581) (not b!4219672) b_and!332843 (not b_next!124575) b_and!332845 b_and!332849 (not b!4219666) (not b_next!124583) (not b!4219660) (not b!4219658) (not b!4219648) tp_is_empty!22341 (not b_next!124585) (not b!4219665) (not b!4219677) (not b!4219656))
(check-sat b_and!332847 (not b_next!124577) b_and!332851 (not b_next!124571) b_and!332839 (not b_next!124579) b_and!332837 (not b_next!124573) (not b_next!124581) b_and!332841 (not b_next!124583) (not b_next!124585) b_and!332843 (not b_next!124575) b_and!332845 b_and!332849)
