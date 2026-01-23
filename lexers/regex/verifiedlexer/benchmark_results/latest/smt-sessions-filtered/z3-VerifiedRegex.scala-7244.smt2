; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385748 () Bool)

(assert start!385748)

(declare-fun b!4081956 () Bool)

(declare-fun b_free!113953 () Bool)

(declare-fun b_next!114657 () Bool)

(assert (=> b!4081956 (= b_free!113953 (not b_next!114657))))

(declare-fun tp!1235748 () Bool)

(declare-fun b_and!314063 () Bool)

(assert (=> b!4081956 (= tp!1235748 b_and!314063)))

(declare-fun b_free!113955 () Bool)

(declare-fun b_next!114659 () Bool)

(assert (=> b!4081956 (= b_free!113955 (not b_next!114659))))

(declare-fun tp!1235751 () Bool)

(declare-fun b_and!314065 () Bool)

(assert (=> b!4081956 (= tp!1235751 b_and!314065)))

(declare-fun b!4081961 () Bool)

(declare-fun b_free!113957 () Bool)

(declare-fun b_next!114661 () Bool)

(assert (=> b!4081961 (= b_free!113957 (not b_next!114661))))

(declare-fun tp!1235749 () Bool)

(declare-fun b_and!314067 () Bool)

(assert (=> b!4081961 (= tp!1235749 b_and!314067)))

(declare-fun b_free!113959 () Bool)

(declare-fun b_next!114663 () Bool)

(assert (=> b!4081961 (= b_free!113959 (not b_next!114663))))

(declare-fun tp!1235753 () Bool)

(declare-fun b_and!314069 () Bool)

(assert (=> b!4081961 (= tp!1235753 b_and!314069)))

(declare-fun b!4081954 () Bool)

(declare-fun e!2533529 () Bool)

(declare-fun e!2533531 () Bool)

(assert (=> b!4081954 (= e!2533529 e!2533531)))

(declare-fun res!1667827 () Bool)

(assert (=> b!4081954 (=> (not res!1667827) (not e!2533531))))

(declare-datatypes ((LexerInterface!6649 0))(
  ( (LexerInterfaceExt!6646 (__x!26797 Int)) (Lexer!6647) )
))
(declare-fun thiss!26199 () LexerInterface!6649)

(declare-datatypes ((List!43861 0))(
  ( (Nil!43737) (Cons!43737 (h!49157 (_ BitVec 16)) (t!337796 List!43861)) )
))
(declare-datatypes ((TokenValue!7290 0))(
  ( (FloatLiteralValue!14580 (text!51475 List!43861)) (TokenValueExt!7289 (__x!26798 Int)) (Broken!36450 (value!221836 List!43861)) (Object!7413) (End!7290) (Def!7290) (Underscore!7290) (Match!7290) (Else!7290) (Error!7290) (Case!7290) (If!7290) (Extends!7290) (Abstract!7290) (Class!7290) (Val!7290) (DelimiterValue!14580 (del!7350 List!43861)) (KeywordValue!7296 (value!221837 List!43861)) (CommentValue!14580 (value!221838 List!43861)) (WhitespaceValue!14580 (value!221839 List!43861)) (IndentationValue!7290 (value!221840 List!43861)) (String!50199) (Int32!7290) (Broken!36451 (value!221841 List!43861)) (Boolean!7291) (Unit!63270) (OperatorValue!7293 (op!7350 List!43861)) (IdentifierValue!14580 (value!221842 List!43861)) (IdentifierValue!14581 (value!221843 List!43861)) (WhitespaceValue!14581 (value!221844 List!43861)) (True!14580) (False!14580) (Broken!36452 (value!221845 List!43861)) (Broken!36453 (value!221846 List!43861)) (True!14581) (RightBrace!7290) (RightBracket!7290) (Colon!7290) (Null!7290) (Comma!7290) (LeftBracket!7290) (False!14581) (LeftBrace!7290) (ImaginaryLiteralValue!7290 (text!51476 List!43861)) (StringLiteralValue!21870 (value!221847 List!43861)) (EOFValue!7290 (value!221848 List!43861)) (IdentValue!7290 (value!221849 List!43861)) (DelimiterValue!14581 (value!221850 List!43861)) (DedentValue!7290 (value!221851 List!43861)) (NewLineValue!7290 (value!221852 List!43861)) (IntegerValue!21870 (value!221853 (_ BitVec 32)) (text!51477 List!43861)) (IntegerValue!21871 (value!221854 Int) (text!51478 List!43861)) (Times!7290) (Or!7290) (Equal!7290) (Minus!7290) (Broken!36454 (value!221855 List!43861)) (And!7290) (Div!7290) (LessEqual!7290) (Mod!7290) (Concat!19255) (Not!7290) (Plus!7290) (SpaceValue!7290 (value!221856 List!43861)) (IntegerValue!21872 (value!221857 Int) (text!51479 List!43861)) (StringLiteralValue!21871 (text!51480 List!43861)) (FloatLiteralValue!14581 (text!51481 List!43861)) (BytesLiteralValue!7290 (value!221858 List!43861)) (CommentValue!14581 (value!221859 List!43861)) (StringLiteralValue!21872 (value!221860 List!43861)) (ErrorTokenValue!7290 (msg!7351 List!43861)) )
))
(declare-datatypes ((String!50200 0))(
  ( (String!50201 (value!221861 String)) )
))
(declare-datatypes ((C!24116 0))(
  ( (C!24117 (val!14168 Int)) )
))
(declare-datatypes ((Regex!11965 0))(
  ( (ElementMatch!11965 (c!703860 C!24116)) (Concat!19256 (regOne!24442 Regex!11965) (regTwo!24442 Regex!11965)) (EmptyExpr!11965) (Star!11965 (reg!12294 Regex!11965)) (EmptyLang!11965) (Union!11965 (regOne!24443 Regex!11965) (regTwo!24443 Regex!11965)) )
))
(declare-datatypes ((List!43862 0))(
  ( (Nil!43738) (Cons!43738 (h!49158 C!24116) (t!337797 List!43862)) )
))
(declare-datatypes ((IArray!26547 0))(
  ( (IArray!26548 (innerList!13331 List!43862)) )
))
(declare-datatypes ((Conc!13271 0))(
  ( (Node!13271 (left!32871 Conc!13271) (right!33201 Conc!13271) (csize!26772 Int) (cheight!13482 Int)) (Leaf!20516 (xs!16577 IArray!26547) (csize!26773 Int)) (Empty!13271) )
))
(declare-datatypes ((BalanceConc!26136 0))(
  ( (BalanceConc!26137 (c!703861 Conc!13271)) )
))
(declare-datatypes ((TokenValueInjection!14008 0))(
  ( (TokenValueInjection!14009 (toValue!9632 Int) (toChars!9491 Int)) )
))
(declare-datatypes ((Rule!13920 0))(
  ( (Rule!13921 (regex!7060 Regex!11965) (tag!7920 String!50200) (isSeparator!7060 Bool) (transformation!7060 TokenValueInjection!14008)) )
))
(declare-datatypes ((List!43863 0))(
  ( (Nil!43739) (Cons!43739 (h!49159 Rule!13920) (t!337798 List!43863)) )
))
(declare-fun rules!3870 () List!43863)

(declare-datatypes ((Token!13246 0))(
  ( (Token!13247 (value!221862 TokenValue!7290) (rule!10182 Rule!13920) (size!32671 Int) (originalCharacters!7654 List!43862)) )
))
(declare-datatypes ((tuple2!42698 0))(
  ( (tuple2!42699 (_1!24483 Token!13246) (_2!24483 List!43862)) )
))
(declare-datatypes ((Option!9468 0))(
  ( (None!9467) (Some!9467 (v!39929 tuple2!42698)) )
))
(declare-fun lt!1460470 () Option!9468)

(declare-fun input!3411 () List!43862)

(declare-fun maxPrefix!3941 (LexerInterface!6649 List!43863 List!43862) Option!9468)

(assert (=> b!4081954 (= res!1667827 (= (maxPrefix!3941 thiss!26199 rules!3870 input!3411) lt!1460470))))

(declare-fun suffix!1518 () List!43862)

(declare-fun p!2988 () List!43862)

(declare-fun r!4213 () Rule!13920)

(declare-fun lt!1460471 () BalanceConc!26136)

(declare-fun apply!10243 (TokenValueInjection!14008 BalanceConc!26136) TokenValue!7290)

(declare-fun size!32672 (List!43862) Int)

(assert (=> b!4081954 (= lt!1460470 (Some!9467 (tuple2!42699 (Token!13247 (apply!10243 (transformation!7060 r!4213) lt!1460471) r!4213 (size!32672 p!2988) p!2988) suffix!1518)))))

(declare-datatypes ((Unit!63271 0))(
  ( (Unit!63272) )
))
(declare-fun lt!1460465 () Unit!63271)

(declare-fun lemmaSemiInverse!2027 (TokenValueInjection!14008 BalanceConc!26136) Unit!63271)

(assert (=> b!4081954 (= lt!1460465 (lemmaSemiInverse!2027 (transformation!7060 r!4213) lt!1460471))))

(declare-fun seqFromList!5277 (List!43862) BalanceConc!26136)

(assert (=> b!4081954 (= lt!1460471 (seqFromList!5277 p!2988))))

(declare-fun b!4081955 () Bool)

(declare-fun e!2533524 () Bool)

(declare-fun e!2533519 () Bool)

(assert (=> b!4081955 (= e!2533524 e!2533519)))

(declare-fun res!1667824 () Bool)

(assert (=> b!4081955 (=> res!1667824 e!2533519)))

(declare-fun lt!1460466 () Option!9468)

(declare-fun isEmpty!26143 (Option!9468) Bool)

(assert (=> b!4081955 (= res!1667824 (isEmpty!26143 lt!1460466))))

(declare-fun maxPrefixOneRule!2931 (LexerInterface!6649 Rule!13920 List!43862) Option!9468)

(assert (=> b!4081955 (= lt!1460466 (maxPrefixOneRule!2931 thiss!26199 (h!49159 rules!3870) input!3411))))

(declare-fun rulesInvariant!5992 (LexerInterface!6649 List!43863) Bool)

(assert (=> b!4081955 (rulesInvariant!5992 thiss!26199 (t!337798 rules!3870))))

(declare-fun lt!1460467 () Unit!63271)

(declare-fun lemmaInvariantOnRulesThenOnTail!776 (LexerInterface!6649 Rule!13920 List!43863) Unit!63271)

(assert (=> b!4081955 (= lt!1460467 (lemmaInvariantOnRulesThenOnTail!776 thiss!26199 (h!49159 rules!3870) (t!337798 rules!3870)))))

(declare-fun e!2533532 () Bool)

(assert (=> b!4081956 (= e!2533532 (and tp!1235748 tp!1235751))))

(declare-fun b!4081957 () Bool)

(declare-fun e!2533525 () Bool)

(assert (=> b!4081957 (= e!2533525 (= (maxPrefix!3941 thiss!26199 (t!337798 rules!3870) input!3411) lt!1460470))))

(declare-fun res!1667820 () Bool)

(assert (=> start!385748 (=> (not res!1667820) (not e!2533529))))

(get-info :version)

(assert (=> start!385748 (= res!1667820 ((_ is Lexer!6647) thiss!26199))))

(assert (=> start!385748 e!2533529))

(assert (=> start!385748 true))

(declare-fun e!2533528 () Bool)

(assert (=> start!385748 e!2533528))

(declare-fun e!2533518 () Bool)

(assert (=> start!385748 e!2533518))

(declare-fun e!2533522 () Bool)

(assert (=> start!385748 e!2533522))

(declare-fun e!2533521 () Bool)

(assert (=> start!385748 e!2533521))

(declare-fun e!2533523 () Bool)

(assert (=> start!385748 e!2533523))

(declare-fun b!4081958 () Bool)

(declare-fun tp_is_empty!20933 () Bool)

(declare-fun tp!1235750 () Bool)

(assert (=> b!4081958 (= e!2533528 (and tp_is_empty!20933 tp!1235750))))

(declare-fun b!4081959 () Bool)

(declare-fun res!1667825 () Bool)

(assert (=> b!4081959 (=> (not res!1667825) (not e!2533529))))

(declare-fun isEmpty!26144 (List!43862) Bool)

(assert (=> b!4081959 (= res!1667825 (not (isEmpty!26144 p!2988)))))

(declare-fun b!4081960 () Bool)

(declare-fun tp!1235745 () Bool)

(assert (=> b!4081960 (= e!2533522 (and tp_is_empty!20933 tp!1235745))))

(declare-fun e!2533527 () Bool)

(assert (=> b!4081961 (= e!2533527 (and tp!1235749 tp!1235753))))

(declare-fun b!4081962 () Bool)

(declare-fun res!1667826 () Bool)

(assert (=> b!4081962 (=> res!1667826 e!2533524)))

(assert (=> b!4081962 (= res!1667826 (or (and ((_ is Cons!43739) rules!3870) (= (h!49159 rules!3870) r!4213)) (not ((_ is Cons!43739) rules!3870)) (= (h!49159 rules!3870) r!4213)))))

(declare-fun b!4081963 () Bool)

(declare-fun tp!1235754 () Bool)

(assert (=> b!4081963 (= e!2533521 (and tp_is_empty!20933 tp!1235754))))

(declare-fun b!4081964 () Bool)

(declare-fun res!1667821 () Bool)

(assert (=> b!4081964 (=> (not res!1667821) (not e!2533529))))

(declare-fun ++!11466 (List!43862 List!43862) List!43862)

(assert (=> b!4081964 (= res!1667821 (= input!3411 (++!11466 p!2988 suffix!1518)))))

(declare-fun b!4081965 () Bool)

(declare-fun res!1667817 () Bool)

(assert (=> b!4081965 (=> (not res!1667817) (not e!2533529))))

(declare-fun contains!8731 (List!43863 Rule!13920) Bool)

(assert (=> b!4081965 (= res!1667817 (contains!8731 rules!3870 r!4213))))

(declare-fun b!4081966 () Bool)

(assert (=> b!4081966 (= e!2533519 e!2533525)))

(declare-fun res!1667818 () Bool)

(assert (=> b!4081966 (=> res!1667818 e!2533525)))

(declare-fun lt!1460469 () tuple2!42698)

(assert (=> b!4081966 (= res!1667818 (or (not (= (rule!10182 (_1!24483 lt!1460469)) (h!49159 rules!3870))) (= (rule!10182 (_1!24483 lt!1460469)) r!4213) (= lt!1460466 lt!1460470)))))

(declare-fun get!14346 (Option!9468) tuple2!42698)

(assert (=> b!4081966 (= lt!1460469 (get!14346 lt!1460466))))

(declare-fun b!4081967 () Bool)

(declare-fun res!1667819 () Bool)

(assert (=> b!4081967 (=> (not res!1667819) (not e!2533529))))

(assert (=> b!4081967 (= res!1667819 (rulesInvariant!5992 thiss!26199 rules!3870))))

(declare-fun b!4081968 () Bool)

(declare-fun tp!1235746 () Bool)

(declare-fun inv!58398 (String!50200) Bool)

(declare-fun inv!58400 (TokenValueInjection!14008) Bool)

(assert (=> b!4081968 (= e!2533523 (and tp!1235746 (inv!58398 (tag!7920 r!4213)) (inv!58400 (transformation!7060 r!4213)) e!2533527))))

(declare-fun b!4081969 () Bool)

(declare-fun e!2533526 () Bool)

(declare-fun tp!1235747 () Bool)

(assert (=> b!4081969 (= e!2533518 (and e!2533526 tp!1235747))))

(declare-fun b!4081970 () Bool)

(assert (=> b!4081970 (= e!2533531 (not e!2533524))))

(declare-fun res!1667823 () Bool)

(assert (=> b!4081970 (=> res!1667823 e!2533524)))

(declare-fun matchR!5910 (Regex!11965 List!43862) Bool)

(assert (=> b!4081970 (= res!1667823 (not (matchR!5910 (regex!7060 r!4213) p!2988)))))

(declare-fun ruleValid!2984 (LexerInterface!6649 Rule!13920) Bool)

(assert (=> b!4081970 (ruleValid!2984 thiss!26199 r!4213)))

(declare-fun lt!1460468 () Unit!63271)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2052 (LexerInterface!6649 Rule!13920 List!43863) Unit!63271)

(assert (=> b!4081970 (= lt!1460468 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2052 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4081971 () Bool)

(declare-fun tp!1235752 () Bool)

(assert (=> b!4081971 (= e!2533526 (and tp!1235752 (inv!58398 (tag!7920 (h!49159 rules!3870))) (inv!58400 (transformation!7060 (h!49159 rules!3870))) e!2533532))))

(declare-fun b!4081972 () Bool)

(declare-fun res!1667822 () Bool)

(assert (=> b!4081972 (=> (not res!1667822) (not e!2533529))))

(declare-fun isEmpty!26145 (List!43863) Bool)

(assert (=> b!4081972 (= res!1667822 (not (isEmpty!26145 rules!3870)))))

(assert (= (and start!385748 res!1667820) b!4081972))

(assert (= (and b!4081972 res!1667822) b!4081967))

(assert (= (and b!4081967 res!1667819) b!4081965))

(assert (= (and b!4081965 res!1667817) b!4081964))

(assert (= (and b!4081964 res!1667821) b!4081959))

(assert (= (and b!4081959 res!1667825) b!4081954))

(assert (= (and b!4081954 res!1667827) b!4081970))

(assert (= (and b!4081970 (not res!1667823)) b!4081962))

(assert (= (and b!4081962 (not res!1667826)) b!4081955))

(assert (= (and b!4081955 (not res!1667824)) b!4081966))

(assert (= (and b!4081966 (not res!1667818)) b!4081957))

(assert (= (and start!385748 ((_ is Cons!43738) suffix!1518)) b!4081958))

(assert (= b!4081971 b!4081956))

(assert (= b!4081969 b!4081971))

(assert (= (and start!385748 ((_ is Cons!43739) rules!3870)) b!4081969))

(assert (= (and start!385748 ((_ is Cons!43738) p!2988)) b!4081960))

(assert (= (and start!385748 ((_ is Cons!43738) input!3411)) b!4081963))

(assert (= b!4081968 b!4081961))

(assert (= start!385748 b!4081968))

(declare-fun m!4689471 () Bool)

(assert (=> b!4081966 m!4689471))

(declare-fun m!4689473 () Bool)

(assert (=> b!4081971 m!4689473))

(declare-fun m!4689475 () Bool)

(assert (=> b!4081971 m!4689475))

(declare-fun m!4689477 () Bool)

(assert (=> b!4081964 m!4689477))

(declare-fun m!4689479 () Bool)

(assert (=> b!4081957 m!4689479))

(declare-fun m!4689481 () Bool)

(assert (=> b!4081954 m!4689481))

(declare-fun m!4689483 () Bool)

(assert (=> b!4081954 m!4689483))

(declare-fun m!4689485 () Bool)

(assert (=> b!4081954 m!4689485))

(declare-fun m!4689487 () Bool)

(assert (=> b!4081954 m!4689487))

(declare-fun m!4689489 () Bool)

(assert (=> b!4081954 m!4689489))

(declare-fun m!4689491 () Bool)

(assert (=> b!4081968 m!4689491))

(declare-fun m!4689493 () Bool)

(assert (=> b!4081968 m!4689493))

(declare-fun m!4689495 () Bool)

(assert (=> b!4081959 m!4689495))

(declare-fun m!4689497 () Bool)

(assert (=> b!4081970 m!4689497))

(declare-fun m!4689499 () Bool)

(assert (=> b!4081970 m!4689499))

(declare-fun m!4689501 () Bool)

(assert (=> b!4081970 m!4689501))

(declare-fun m!4689503 () Bool)

(assert (=> b!4081965 m!4689503))

(declare-fun m!4689505 () Bool)

(assert (=> b!4081972 m!4689505))

(declare-fun m!4689507 () Bool)

(assert (=> b!4081967 m!4689507))

(declare-fun m!4689509 () Bool)

(assert (=> b!4081955 m!4689509))

(declare-fun m!4689511 () Bool)

(assert (=> b!4081955 m!4689511))

(declare-fun m!4689513 () Bool)

(assert (=> b!4081955 m!4689513))

(declare-fun m!4689515 () Bool)

(assert (=> b!4081955 m!4689515))

(check-sat (not b!4081955) (not b!4081967) (not b!4081972) (not b!4081960) (not b!4081964) (not b!4081965) (not b!4081969) (not b!4081966) (not b_next!114659) b_and!314065 b_and!314063 (not b!4081957) (not b!4081954) (not b!4081958) (not b!4081971) b_and!314067 (not b!4081963) (not b!4081968) (not b!4081959) b_and!314069 (not b_next!114657) tp_is_empty!20933 (not b_next!114661) (not b_next!114663) (not b!4081970))
(check-sat b_and!314067 (not b_next!114661) (not b_next!114663) (not b_next!114659) b_and!314065 b_and!314063 b_and!314069 (not b_next!114657))
(get-model)

(declare-fun d!1212297 () Bool)

(assert (=> d!1212297 (= (isEmpty!26144 p!2988) ((_ is Nil!43738) p!2988))))

(assert (=> b!4081959 d!1212297))

(declare-fun d!1212299 () Bool)

(assert (=> d!1212299 (= (inv!58398 (tag!7920 (h!49159 rules!3870))) (= (mod (str.len (value!221861 (tag!7920 (h!49159 rules!3870)))) 2) 0))))

(assert (=> b!4081971 d!1212299))

(declare-fun d!1212301 () Bool)

(declare-fun res!1667865 () Bool)

(declare-fun e!2533561 () Bool)

(assert (=> d!1212301 (=> (not res!1667865) (not e!2533561))))

(declare-fun semiInverseModEq!3024 (Int Int) Bool)

(assert (=> d!1212301 (= res!1667865 (semiInverseModEq!3024 (toChars!9491 (transformation!7060 (h!49159 rules!3870))) (toValue!9632 (transformation!7060 (h!49159 rules!3870)))))))

(assert (=> d!1212301 (= (inv!58400 (transformation!7060 (h!49159 rules!3870))) e!2533561)))

(declare-fun b!4082021 () Bool)

(declare-fun equivClasses!2923 (Int Int) Bool)

(assert (=> b!4082021 (= e!2533561 (equivClasses!2923 (toChars!9491 (transformation!7060 (h!49159 rules!3870))) (toValue!9632 (transformation!7060 (h!49159 rules!3870)))))))

(assert (= (and d!1212301 res!1667865) b!4082021))

(declare-fun m!4689535 () Bool)

(assert (=> d!1212301 m!4689535))

(declare-fun m!4689537 () Bool)

(assert (=> b!4082021 m!4689537))

(assert (=> b!4081971 d!1212301))

(declare-fun b!4082076 () Bool)

(declare-fun res!1667909 () Bool)

(declare-fun e!2533592 () Bool)

(assert (=> b!4082076 (=> (not res!1667909) (not e!2533592))))

(declare-fun call!288702 () Bool)

(assert (=> b!4082076 (= res!1667909 (not call!288702))))

(declare-fun d!1212303 () Bool)

(declare-fun e!2533598 () Bool)

(assert (=> d!1212303 e!2533598))

(declare-fun c!703880 () Bool)

(assert (=> d!1212303 (= c!703880 ((_ is EmptyExpr!11965) (regex!7060 r!4213)))))

(declare-fun lt!1460486 () Bool)

(declare-fun e!2533596 () Bool)

(assert (=> d!1212303 (= lt!1460486 e!2533596)))

(declare-fun c!703882 () Bool)

(assert (=> d!1212303 (= c!703882 (isEmpty!26144 p!2988))))

(declare-fun validRegex!5416 (Regex!11965) Bool)

(assert (=> d!1212303 (validRegex!5416 (regex!7060 r!4213))))

(assert (=> d!1212303 (= (matchR!5910 (regex!7060 r!4213) p!2988) lt!1460486)))

(declare-fun b!4082077 () Bool)

(declare-fun head!8627 (List!43862) C!24116)

(assert (=> b!4082077 (= e!2533592 (= (head!8627 p!2988) (c!703860 (regex!7060 r!4213))))))

(declare-fun b!4082078 () Bool)

(declare-fun res!1667903 () Bool)

(declare-fun e!2533593 () Bool)

(assert (=> b!4082078 (=> res!1667903 e!2533593)))

(assert (=> b!4082078 (= res!1667903 (not ((_ is ElementMatch!11965) (regex!7060 r!4213))))))

(declare-fun e!2533594 () Bool)

(assert (=> b!4082078 (= e!2533594 e!2533593)))

(declare-fun b!4082079 () Bool)

(declare-fun derivativeStep!3617 (Regex!11965 C!24116) Regex!11965)

(declare-fun tail!6361 (List!43862) List!43862)

(assert (=> b!4082079 (= e!2533596 (matchR!5910 (derivativeStep!3617 (regex!7060 r!4213) (head!8627 p!2988)) (tail!6361 p!2988)))))

(declare-fun b!4082080 () Bool)

(assert (=> b!4082080 (= e!2533598 e!2533594)))

(declare-fun c!703881 () Bool)

(assert (=> b!4082080 (= c!703881 ((_ is EmptyLang!11965) (regex!7060 r!4213)))))

(declare-fun b!4082081 () Bool)

(declare-fun e!2533595 () Bool)

(assert (=> b!4082081 (= e!2533595 (not (= (head!8627 p!2988) (c!703860 (regex!7060 r!4213)))))))

(declare-fun b!4082082 () Bool)

(assert (=> b!4082082 (= e!2533594 (not lt!1460486))))

(declare-fun b!4082083 () Bool)

(declare-fun e!2533597 () Bool)

(assert (=> b!4082083 (= e!2533593 e!2533597)))

(declare-fun res!1667907 () Bool)

(assert (=> b!4082083 (=> (not res!1667907) (not e!2533597))))

(assert (=> b!4082083 (= res!1667907 (not lt!1460486))))

(declare-fun b!4082084 () Bool)

(declare-fun nullable!4216 (Regex!11965) Bool)

(assert (=> b!4082084 (= e!2533596 (nullable!4216 (regex!7060 r!4213)))))

(declare-fun b!4082085 () Bool)

(assert (=> b!4082085 (= e!2533597 e!2533595)))

(declare-fun res!1667905 () Bool)

(assert (=> b!4082085 (=> res!1667905 e!2533595)))

(assert (=> b!4082085 (= res!1667905 call!288702)))

(declare-fun b!4082086 () Bool)

(declare-fun res!1667906 () Bool)

(assert (=> b!4082086 (=> (not res!1667906) (not e!2533592))))

(assert (=> b!4082086 (= res!1667906 (isEmpty!26144 (tail!6361 p!2988)))))

(declare-fun b!4082087 () Bool)

(declare-fun res!1667904 () Bool)

(assert (=> b!4082087 (=> res!1667904 e!2533593)))

(assert (=> b!4082087 (= res!1667904 e!2533592)))

(declare-fun res!1667908 () Bool)

(assert (=> b!4082087 (=> (not res!1667908) (not e!2533592))))

(assert (=> b!4082087 (= res!1667908 lt!1460486)))

(declare-fun b!4082088 () Bool)

(assert (=> b!4082088 (= e!2533598 (= lt!1460486 call!288702))))

(declare-fun bm!288697 () Bool)

(assert (=> bm!288697 (= call!288702 (isEmpty!26144 p!2988))))

(declare-fun b!4082089 () Bool)

(declare-fun res!1667902 () Bool)

(assert (=> b!4082089 (=> res!1667902 e!2533595)))

(assert (=> b!4082089 (= res!1667902 (not (isEmpty!26144 (tail!6361 p!2988))))))

(assert (= (and d!1212303 c!703882) b!4082084))

(assert (= (and d!1212303 (not c!703882)) b!4082079))

(assert (= (and d!1212303 c!703880) b!4082088))

(assert (= (and d!1212303 (not c!703880)) b!4082080))

(assert (= (and b!4082080 c!703881) b!4082082))

(assert (= (and b!4082080 (not c!703881)) b!4082078))

(assert (= (and b!4082078 (not res!1667903)) b!4082087))

(assert (= (and b!4082087 res!1667908) b!4082076))

(assert (= (and b!4082076 res!1667909) b!4082086))

(assert (= (and b!4082086 res!1667906) b!4082077))

(assert (= (and b!4082087 (not res!1667904)) b!4082083))

(assert (= (and b!4082083 res!1667907) b!4082085))

(assert (= (and b!4082085 (not res!1667905)) b!4082089))

(assert (= (and b!4082089 (not res!1667902)) b!4082081))

(assert (= (or b!4082088 b!4082076 b!4082085) bm!288697))

(declare-fun m!4689563 () Bool)

(assert (=> b!4082077 m!4689563))

(assert (=> b!4082079 m!4689563))

(assert (=> b!4082079 m!4689563))

(declare-fun m!4689565 () Bool)

(assert (=> b!4082079 m!4689565))

(declare-fun m!4689567 () Bool)

(assert (=> b!4082079 m!4689567))

(assert (=> b!4082079 m!4689565))

(assert (=> b!4082079 m!4689567))

(declare-fun m!4689569 () Bool)

(assert (=> b!4082079 m!4689569))

(assert (=> bm!288697 m!4689495))

(assert (=> b!4082081 m!4689563))

(assert (=> d!1212303 m!4689495))

(declare-fun m!4689571 () Bool)

(assert (=> d!1212303 m!4689571))

(assert (=> b!4082089 m!4689567))

(assert (=> b!4082089 m!4689567))

(declare-fun m!4689573 () Bool)

(assert (=> b!4082089 m!4689573))

(assert (=> b!4082086 m!4689567))

(assert (=> b!4082086 m!4689567))

(assert (=> b!4082086 m!4689573))

(declare-fun m!4689575 () Bool)

(assert (=> b!4082084 m!4689575))

(assert (=> b!4081970 d!1212303))

(declare-fun d!1212319 () Bool)

(declare-fun res!1667914 () Bool)

(declare-fun e!2533601 () Bool)

(assert (=> d!1212319 (=> (not res!1667914) (not e!2533601))))

(assert (=> d!1212319 (= res!1667914 (validRegex!5416 (regex!7060 r!4213)))))

(assert (=> d!1212319 (= (ruleValid!2984 thiss!26199 r!4213) e!2533601)))

(declare-fun b!4082094 () Bool)

(declare-fun res!1667915 () Bool)

(assert (=> b!4082094 (=> (not res!1667915) (not e!2533601))))

(assert (=> b!4082094 (= res!1667915 (not (nullable!4216 (regex!7060 r!4213))))))

(declare-fun b!4082095 () Bool)

(assert (=> b!4082095 (= e!2533601 (not (= (tag!7920 r!4213) (String!50201 ""))))))

(assert (= (and d!1212319 res!1667914) b!4082094))

(assert (= (and b!4082094 res!1667915) b!4082095))

(assert (=> d!1212319 m!4689571))

(assert (=> b!4082094 m!4689575))

(assert (=> b!4081970 d!1212319))

(declare-fun d!1212321 () Bool)

(assert (=> d!1212321 (ruleValid!2984 thiss!26199 r!4213)))

(declare-fun lt!1460489 () Unit!63271)

(declare-fun choose!24925 (LexerInterface!6649 Rule!13920 List!43863) Unit!63271)

(assert (=> d!1212321 (= lt!1460489 (choose!24925 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1212321 (contains!8731 rules!3870 r!4213)))

(assert (=> d!1212321 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2052 thiss!26199 r!4213 rules!3870) lt!1460489)))

(declare-fun bs!592930 () Bool)

(assert (= bs!592930 d!1212321))

(assert (=> bs!592930 m!4689499))

(declare-fun m!4689577 () Bool)

(assert (=> bs!592930 m!4689577))

(assert (=> bs!592930 m!4689503))

(assert (=> b!4081970 d!1212321))

(declare-fun d!1212323 () Bool)

(assert (=> d!1212323 (= (isEmpty!26145 rules!3870) ((_ is Nil!43739) rules!3870))))

(assert (=> b!4081972 d!1212323))

(declare-fun d!1212325 () Bool)

(declare-fun e!2533606 () Bool)

(assert (=> d!1212325 e!2533606))

(declare-fun res!1667921 () Bool)

(assert (=> d!1212325 (=> (not res!1667921) (not e!2533606))))

(declare-fun lt!1460492 () List!43862)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6710 (List!43862) (InoxSet C!24116))

(assert (=> d!1212325 (= res!1667921 (= (content!6710 lt!1460492) ((_ map or) (content!6710 p!2988) (content!6710 suffix!1518))))))

(declare-fun e!2533607 () List!43862)

(assert (=> d!1212325 (= lt!1460492 e!2533607)))

(declare-fun c!703885 () Bool)

(assert (=> d!1212325 (= c!703885 ((_ is Nil!43738) p!2988))))

(assert (=> d!1212325 (= (++!11466 p!2988 suffix!1518) lt!1460492)))

(declare-fun b!4082105 () Bool)

(assert (=> b!4082105 (= e!2533607 (Cons!43738 (h!49158 p!2988) (++!11466 (t!337797 p!2988) suffix!1518)))))

(declare-fun b!4082106 () Bool)

(declare-fun res!1667920 () Bool)

(assert (=> b!4082106 (=> (not res!1667920) (not e!2533606))))

(assert (=> b!4082106 (= res!1667920 (= (size!32672 lt!1460492) (+ (size!32672 p!2988) (size!32672 suffix!1518))))))

(declare-fun b!4082104 () Bool)

(assert (=> b!4082104 (= e!2533607 suffix!1518)))

(declare-fun b!4082107 () Bool)

(assert (=> b!4082107 (= e!2533606 (or (not (= suffix!1518 Nil!43738)) (= lt!1460492 p!2988)))))

(assert (= (and d!1212325 c!703885) b!4082104))

(assert (= (and d!1212325 (not c!703885)) b!4082105))

(assert (= (and d!1212325 res!1667921) b!4082106))

(assert (= (and b!4082106 res!1667920) b!4082107))

(declare-fun m!4689579 () Bool)

(assert (=> d!1212325 m!4689579))

(declare-fun m!4689581 () Bool)

(assert (=> d!1212325 m!4689581))

(declare-fun m!4689583 () Bool)

(assert (=> d!1212325 m!4689583))

(declare-fun m!4689585 () Bool)

(assert (=> b!4082105 m!4689585))

(declare-fun m!4689587 () Bool)

(assert (=> b!4082106 m!4689587))

(assert (=> b!4082106 m!4689485))

(declare-fun m!4689589 () Bool)

(assert (=> b!4082106 m!4689589))

(assert (=> b!4081964 d!1212325))

(declare-fun d!1212327 () Bool)

(assert (=> d!1212327 (= (isEmpty!26143 lt!1460466) (not ((_ is Some!9467) lt!1460466)))))

(assert (=> b!4081955 d!1212327))

(declare-fun b!4082199 () Bool)

(declare-fun res!1667991 () Bool)

(declare-fun e!2533648 () Bool)

(assert (=> b!4082199 (=> (not res!1667991) (not e!2533648))))

(declare-fun lt!1460546 () Option!9468)

(assert (=> b!4082199 (= res!1667991 (< (size!32672 (_2!24483 (get!14346 lt!1460546))) (size!32672 input!3411)))))

(declare-fun b!4082200 () Bool)

(declare-fun e!2533649 () Bool)

(assert (=> b!4082200 (= e!2533649 e!2533648)))

(declare-fun res!1667987 () Bool)

(assert (=> b!4082200 (=> (not res!1667987) (not e!2533648))))

(declare-fun list!16250 (BalanceConc!26136) List!43862)

(declare-fun charsOf!4832 (Token!13246) BalanceConc!26136)

(assert (=> b!4082200 (= res!1667987 (matchR!5910 (regex!7060 (h!49159 rules!3870)) (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460546))))))))

(declare-fun d!1212329 () Bool)

(assert (=> d!1212329 e!2533649))

(declare-fun res!1667988 () Bool)

(assert (=> d!1212329 (=> res!1667988 e!2533649)))

(assert (=> d!1212329 (= res!1667988 (isEmpty!26143 lt!1460546))))

(declare-fun e!2533651 () Option!9468)

(assert (=> d!1212329 (= lt!1460546 e!2533651)))

(declare-fun c!703899 () Bool)

(declare-datatypes ((tuple2!42702 0))(
  ( (tuple2!42703 (_1!24485 List!43862) (_2!24485 List!43862)) )
))
(declare-fun lt!1460547 () tuple2!42702)

(assert (=> d!1212329 (= c!703899 (isEmpty!26144 (_1!24485 lt!1460547)))))

(declare-fun findLongestMatch!1356 (Regex!11965 List!43862) tuple2!42702)

(assert (=> d!1212329 (= lt!1460547 (findLongestMatch!1356 (regex!7060 (h!49159 rules!3870)) input!3411))))

(assert (=> d!1212329 (ruleValid!2984 thiss!26199 (h!49159 rules!3870))))

(assert (=> d!1212329 (= (maxPrefixOneRule!2931 thiss!26199 (h!49159 rules!3870) input!3411) lt!1460546)))

(declare-fun b!4082201 () Bool)

(declare-fun res!1667990 () Bool)

(assert (=> b!4082201 (=> (not res!1667990) (not e!2533648))))

(assert (=> b!4082201 (= res!1667990 (= (++!11466 (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460546)))) (_2!24483 (get!14346 lt!1460546))) input!3411))))

(declare-fun b!4082202 () Bool)

(declare-fun res!1667989 () Bool)

(assert (=> b!4082202 (=> (not res!1667989) (not e!2533648))))

(assert (=> b!4082202 (= res!1667989 (= (rule!10182 (_1!24483 (get!14346 lt!1460546))) (h!49159 rules!3870)))))

(declare-fun b!4082203 () Bool)

(assert (=> b!4082203 (= e!2533648 (= (size!32671 (_1!24483 (get!14346 lt!1460546))) (size!32672 (originalCharacters!7654 (_1!24483 (get!14346 lt!1460546))))))))

(declare-fun b!4082204 () Bool)

(declare-fun res!1667992 () Bool)

(assert (=> b!4082204 (=> (not res!1667992) (not e!2533648))))

(assert (=> b!4082204 (= res!1667992 (= (value!221862 (_1!24483 (get!14346 lt!1460546))) (apply!10243 (transformation!7060 (rule!10182 (_1!24483 (get!14346 lt!1460546)))) (seqFromList!5277 (originalCharacters!7654 (_1!24483 (get!14346 lt!1460546)))))))))

(declare-fun b!4082205 () Bool)

(assert (=> b!4082205 (= e!2533651 None!9467)))

(declare-fun b!4082206 () Bool)

(declare-fun e!2533650 () Bool)

(declare-fun findLongestMatchInner!1443 (Regex!11965 List!43862 Int List!43862 List!43862 Int) tuple2!42702)

(assert (=> b!4082206 (= e!2533650 (matchR!5910 (regex!7060 (h!49159 rules!3870)) (_1!24485 (findLongestMatchInner!1443 (regex!7060 (h!49159 rules!3870)) Nil!43738 (size!32672 Nil!43738) input!3411 input!3411 (size!32672 input!3411)))))))

(declare-fun b!4082207 () Bool)

(declare-fun size!32674 (BalanceConc!26136) Int)

(assert (=> b!4082207 (= e!2533651 (Some!9467 (tuple2!42699 (Token!13247 (apply!10243 (transformation!7060 (h!49159 rules!3870)) (seqFromList!5277 (_1!24485 lt!1460547))) (h!49159 rules!3870) (size!32674 (seqFromList!5277 (_1!24485 lt!1460547))) (_1!24485 lt!1460547)) (_2!24485 lt!1460547))))))

(declare-fun lt!1460548 () Unit!63271)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1416 (Regex!11965 List!43862) Unit!63271)

(assert (=> b!4082207 (= lt!1460548 (longestMatchIsAcceptedByMatchOrIsEmpty!1416 (regex!7060 (h!49159 rules!3870)) input!3411))))

(declare-fun res!1667993 () Bool)

(assert (=> b!4082207 (= res!1667993 (isEmpty!26144 (_1!24485 (findLongestMatchInner!1443 (regex!7060 (h!49159 rules!3870)) Nil!43738 (size!32672 Nil!43738) input!3411 input!3411 (size!32672 input!3411)))))))

(assert (=> b!4082207 (=> res!1667993 e!2533650)))

(assert (=> b!4082207 e!2533650))

(declare-fun lt!1460549 () Unit!63271)

(assert (=> b!4082207 (= lt!1460549 lt!1460548)))

(declare-fun lt!1460550 () Unit!63271)

(assert (=> b!4082207 (= lt!1460550 (lemmaSemiInverse!2027 (transformation!7060 (h!49159 rules!3870)) (seqFromList!5277 (_1!24485 lt!1460547))))))

(assert (= (and d!1212329 c!703899) b!4082205))

(assert (= (and d!1212329 (not c!703899)) b!4082207))

(assert (= (and b!4082207 (not res!1667993)) b!4082206))

(assert (= (and d!1212329 (not res!1667988)) b!4082200))

(assert (= (and b!4082200 res!1667987) b!4082201))

(assert (= (and b!4082201 res!1667990) b!4082199))

(assert (= (and b!4082199 res!1667991) b!4082202))

(assert (= (and b!4082202 res!1667989) b!4082204))

(assert (= (and b!4082204 res!1667992) b!4082203))

(declare-fun m!4689713 () Bool)

(assert (=> b!4082203 m!4689713))

(declare-fun m!4689715 () Bool)

(assert (=> b!4082203 m!4689715))

(assert (=> b!4082200 m!4689713))

(declare-fun m!4689717 () Bool)

(assert (=> b!4082200 m!4689717))

(assert (=> b!4082200 m!4689717))

(declare-fun m!4689719 () Bool)

(assert (=> b!4082200 m!4689719))

(assert (=> b!4082200 m!4689719))

(declare-fun m!4689721 () Bool)

(assert (=> b!4082200 m!4689721))

(declare-fun m!4689723 () Bool)

(assert (=> b!4082207 m!4689723))

(declare-fun m!4689725 () Bool)

(assert (=> b!4082207 m!4689725))

(declare-fun m!4689727 () Bool)

(assert (=> b!4082207 m!4689727))

(declare-fun m!4689729 () Bool)

(assert (=> b!4082207 m!4689729))

(assert (=> b!4082207 m!4689725))

(declare-fun m!4689731 () Bool)

(assert (=> b!4082207 m!4689731))

(assert (=> b!4082207 m!4689725))

(declare-fun m!4689733 () Bool)

(assert (=> b!4082207 m!4689733))

(declare-fun m!4689735 () Bool)

(assert (=> b!4082207 m!4689735))

(declare-fun m!4689737 () Bool)

(assert (=> b!4082207 m!4689737))

(assert (=> b!4082207 m!4689729))

(assert (=> b!4082207 m!4689737))

(declare-fun m!4689739 () Bool)

(assert (=> b!4082207 m!4689739))

(assert (=> b!4082207 m!4689725))

(assert (=> b!4082202 m!4689713))

(declare-fun m!4689741 () Bool)

(assert (=> d!1212329 m!4689741))

(declare-fun m!4689743 () Bool)

(assert (=> d!1212329 m!4689743))

(declare-fun m!4689745 () Bool)

(assert (=> d!1212329 m!4689745))

(declare-fun m!4689747 () Bool)

(assert (=> d!1212329 m!4689747))

(assert (=> b!4082201 m!4689713))

(assert (=> b!4082201 m!4689717))

(assert (=> b!4082201 m!4689717))

(assert (=> b!4082201 m!4689719))

(assert (=> b!4082201 m!4689719))

(declare-fun m!4689749 () Bool)

(assert (=> b!4082201 m!4689749))

(assert (=> b!4082199 m!4689713))

(declare-fun m!4689751 () Bool)

(assert (=> b!4082199 m!4689751))

(assert (=> b!4082199 m!4689737))

(assert (=> b!4082206 m!4689729))

(assert (=> b!4082206 m!4689737))

(assert (=> b!4082206 m!4689729))

(assert (=> b!4082206 m!4689737))

(assert (=> b!4082206 m!4689739))

(declare-fun m!4689753 () Bool)

(assert (=> b!4082206 m!4689753))

(assert (=> b!4082204 m!4689713))

(declare-fun m!4689755 () Bool)

(assert (=> b!4082204 m!4689755))

(assert (=> b!4082204 m!4689755))

(declare-fun m!4689757 () Bool)

(assert (=> b!4082204 m!4689757))

(assert (=> b!4081955 d!1212329))

(declare-fun d!1212351 () Bool)

(declare-fun res!1667996 () Bool)

(declare-fun e!2533654 () Bool)

(assert (=> d!1212351 (=> (not res!1667996) (not e!2533654))))

(declare-fun rulesValid!2758 (LexerInterface!6649 List!43863) Bool)

(assert (=> d!1212351 (= res!1667996 (rulesValid!2758 thiss!26199 (t!337798 rules!3870)))))

(assert (=> d!1212351 (= (rulesInvariant!5992 thiss!26199 (t!337798 rules!3870)) e!2533654)))

(declare-fun b!4082210 () Bool)

(declare-datatypes ((List!43865 0))(
  ( (Nil!43741) (Cons!43741 (h!49161 String!50200) (t!337824 List!43865)) )
))
(declare-fun noDuplicateTag!2759 (LexerInterface!6649 List!43863 List!43865) Bool)

(assert (=> b!4082210 (= e!2533654 (noDuplicateTag!2759 thiss!26199 (t!337798 rules!3870) Nil!43741))))

(assert (= (and d!1212351 res!1667996) b!4082210))

(declare-fun m!4689759 () Bool)

(assert (=> d!1212351 m!4689759))

(declare-fun m!4689761 () Bool)

(assert (=> b!4082210 m!4689761))

(assert (=> b!4081955 d!1212351))

(declare-fun d!1212353 () Bool)

(assert (=> d!1212353 (rulesInvariant!5992 thiss!26199 (t!337798 rules!3870))))

(declare-fun lt!1460553 () Unit!63271)

(declare-fun choose!24926 (LexerInterface!6649 Rule!13920 List!43863) Unit!63271)

(assert (=> d!1212353 (= lt!1460553 (choose!24926 thiss!26199 (h!49159 rules!3870) (t!337798 rules!3870)))))

(assert (=> d!1212353 (rulesInvariant!5992 thiss!26199 (Cons!43739 (h!49159 rules!3870) (t!337798 rules!3870)))))

(assert (=> d!1212353 (= (lemmaInvariantOnRulesThenOnTail!776 thiss!26199 (h!49159 rules!3870) (t!337798 rules!3870)) lt!1460553)))

(declare-fun bs!592933 () Bool)

(assert (= bs!592933 d!1212353))

(assert (=> bs!592933 m!4689513))

(declare-fun m!4689763 () Bool)

(assert (=> bs!592933 m!4689763))

(declare-fun m!4689765 () Bool)

(assert (=> bs!592933 m!4689765))

(assert (=> b!4081955 d!1212353))

(declare-fun b!4082261 () Bool)

(declare-fun e!2533684 () Bool)

(assert (=> b!4082261 (= e!2533684 true)))

(declare-fun d!1212355 () Bool)

(assert (=> d!1212355 e!2533684))

(assert (= d!1212355 b!4082261))

(declare-fun order!22905 () Int)

(declare-fun lambda!127801 () Int)

(declare-fun order!22907 () Int)

(declare-fun dynLambda!18632 (Int Int) Int)

(declare-fun dynLambda!18633 (Int Int) Int)

(assert (=> b!4082261 (< (dynLambda!18632 order!22905 (toValue!9632 (transformation!7060 r!4213))) (dynLambda!18633 order!22907 lambda!127801))))

(declare-fun order!22909 () Int)

(declare-fun dynLambda!18634 (Int Int) Int)

(assert (=> b!4082261 (< (dynLambda!18634 order!22909 (toChars!9491 (transformation!7060 r!4213))) (dynLambda!18633 order!22907 lambda!127801))))

(declare-fun dynLambda!18635 (Int TokenValue!7290) BalanceConc!26136)

(declare-fun dynLambda!18636 (Int BalanceConc!26136) TokenValue!7290)

(assert (=> d!1212355 (= (list!16250 (dynLambda!18635 (toChars!9491 (transformation!7060 r!4213)) (dynLambda!18636 (toValue!9632 (transformation!7060 r!4213)) lt!1460471))) (list!16250 lt!1460471))))

(declare-fun lt!1460557 () Unit!63271)

(declare-fun ForallOf!863 (Int BalanceConc!26136) Unit!63271)

(assert (=> d!1212355 (= lt!1460557 (ForallOf!863 lambda!127801 lt!1460471))))

(assert (=> d!1212355 (= (lemmaSemiInverse!2027 (transformation!7060 r!4213) lt!1460471) lt!1460557)))

(declare-fun b_lambda!119387 () Bool)

(assert (=> (not b_lambda!119387) (not d!1212355)))

(declare-fun t!337812 () Bool)

(declare-fun tb!245173 () Bool)

(assert (=> (and b!4081956 (= (toChars!9491 (transformation!7060 (h!49159 rules!3870))) (toChars!9491 (transformation!7060 r!4213))) t!337812) tb!245173))

(declare-fun b!4082266 () Bool)

(declare-fun tp!1235797 () Bool)

(declare-fun e!2533687 () Bool)

(declare-fun inv!58403 (Conc!13271) Bool)

(assert (=> b!4082266 (= e!2533687 (and (inv!58403 (c!703861 (dynLambda!18635 (toChars!9491 (transformation!7060 r!4213)) (dynLambda!18636 (toValue!9632 (transformation!7060 r!4213)) lt!1460471)))) tp!1235797))))

(declare-fun result!297396 () Bool)

(declare-fun inv!58404 (BalanceConc!26136) Bool)

(assert (=> tb!245173 (= result!297396 (and (inv!58404 (dynLambda!18635 (toChars!9491 (transformation!7060 r!4213)) (dynLambda!18636 (toValue!9632 (transformation!7060 r!4213)) lt!1460471))) e!2533687))))

(assert (= tb!245173 b!4082266))

(declare-fun m!4689783 () Bool)

(assert (=> b!4082266 m!4689783))

(declare-fun m!4689785 () Bool)

(assert (=> tb!245173 m!4689785))

(assert (=> d!1212355 t!337812))

(declare-fun b_and!314087 () Bool)

(assert (= b_and!314065 (and (=> t!337812 result!297396) b_and!314087)))

(declare-fun t!337814 () Bool)

(declare-fun tb!245175 () Bool)

(assert (=> (and b!4081961 (= (toChars!9491 (transformation!7060 r!4213)) (toChars!9491 (transformation!7060 r!4213))) t!337814) tb!245175))

(declare-fun result!297400 () Bool)

(assert (= result!297400 result!297396))

(assert (=> d!1212355 t!337814))

(declare-fun b_and!314089 () Bool)

(assert (= b_and!314069 (and (=> t!337814 result!297400) b_and!314089)))

(declare-fun b_lambda!119389 () Bool)

(assert (=> (not b_lambda!119389) (not d!1212355)))

(declare-fun tb!245177 () Bool)

(declare-fun t!337816 () Bool)

(assert (=> (and b!4081956 (= (toValue!9632 (transformation!7060 (h!49159 rules!3870))) (toValue!9632 (transformation!7060 r!4213))) t!337816) tb!245177))

(declare-fun result!297402 () Bool)

(declare-fun inv!21 (TokenValue!7290) Bool)

(assert (=> tb!245177 (= result!297402 (inv!21 (dynLambda!18636 (toValue!9632 (transformation!7060 r!4213)) lt!1460471)))))

(declare-fun m!4689787 () Bool)

(assert (=> tb!245177 m!4689787))

(assert (=> d!1212355 t!337816))

(declare-fun b_and!314091 () Bool)

(assert (= b_and!314063 (and (=> t!337816 result!297402) b_and!314091)))

(declare-fun t!337818 () Bool)

(declare-fun tb!245179 () Bool)

(assert (=> (and b!4081961 (= (toValue!9632 (transformation!7060 r!4213)) (toValue!9632 (transformation!7060 r!4213))) t!337818) tb!245179))

(declare-fun result!297406 () Bool)

(assert (= result!297406 result!297402))

(assert (=> d!1212355 t!337818))

(declare-fun b_and!314093 () Bool)

(assert (= b_and!314067 (and (=> t!337818 result!297406) b_and!314093)))

(declare-fun m!4689789 () Bool)

(assert (=> d!1212355 m!4689789))

(declare-fun m!4689791 () Bool)

(assert (=> d!1212355 m!4689791))

(declare-fun m!4689793 () Bool)

(assert (=> d!1212355 m!4689793))

(declare-fun m!4689795 () Bool)

(assert (=> d!1212355 m!4689795))

(assert (=> d!1212355 m!4689789))

(assert (=> d!1212355 m!4689795))

(declare-fun m!4689797 () Bool)

(assert (=> d!1212355 m!4689797))

(assert (=> b!4081954 d!1212355))

(declare-fun d!1212357 () Bool)

(assert (=> d!1212357 (= (apply!10243 (transformation!7060 r!4213) lt!1460471) (dynLambda!18636 (toValue!9632 (transformation!7060 r!4213)) lt!1460471))))

(declare-fun b_lambda!119391 () Bool)

(assert (=> (not b_lambda!119391) (not d!1212357)))

(assert (=> d!1212357 t!337816))

(declare-fun b_and!314095 () Bool)

(assert (= b_and!314091 (and (=> t!337816 result!297402) b_and!314095)))

(assert (=> d!1212357 t!337818))

(declare-fun b_and!314097 () Bool)

(assert (= b_and!314093 (and (=> t!337818 result!297406) b_and!314097)))

(assert (=> d!1212357 m!4689795))

(assert (=> b!4081954 d!1212357))

(declare-fun b!4082287 () Bool)

(declare-fun res!1668012 () Bool)

(declare-fun e!2533698 () Bool)

(assert (=> b!4082287 (=> (not res!1668012) (not e!2533698))))

(declare-fun lt!1460572 () Option!9468)

(assert (=> b!4082287 (= res!1668012 (< (size!32672 (_2!24483 (get!14346 lt!1460572))) (size!32672 input!3411)))))

(declare-fun b!4082288 () Bool)

(declare-fun res!1668011 () Bool)

(assert (=> b!4082288 (=> (not res!1668011) (not e!2533698))))

(assert (=> b!4082288 (= res!1668011 (= (value!221862 (_1!24483 (get!14346 lt!1460572))) (apply!10243 (transformation!7060 (rule!10182 (_1!24483 (get!14346 lt!1460572)))) (seqFromList!5277 (originalCharacters!7654 (_1!24483 (get!14346 lt!1460572)))))))))

(declare-fun d!1212359 () Bool)

(declare-fun e!2533699 () Bool)

(assert (=> d!1212359 e!2533699))

(declare-fun res!1668013 () Bool)

(assert (=> d!1212359 (=> res!1668013 e!2533699)))

(assert (=> d!1212359 (= res!1668013 (isEmpty!26143 lt!1460572))))

(declare-fun e!2533697 () Option!9468)

(assert (=> d!1212359 (= lt!1460572 e!2533697)))

(declare-fun c!703903 () Bool)

(assert (=> d!1212359 (= c!703903 (and ((_ is Cons!43739) rules!3870) ((_ is Nil!43739) (t!337798 rules!3870))))))

(declare-fun lt!1460568 () Unit!63271)

(declare-fun lt!1460571 () Unit!63271)

(assert (=> d!1212359 (= lt!1460568 lt!1460571)))

(declare-fun isPrefix!4119 (List!43862 List!43862) Bool)

(assert (=> d!1212359 (isPrefix!4119 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2670 (List!43862 List!43862) Unit!63271)

(assert (=> d!1212359 (= lt!1460571 (lemmaIsPrefixRefl!2670 input!3411 input!3411))))

(declare-fun rulesValidInductive!2599 (LexerInterface!6649 List!43863) Bool)

(assert (=> d!1212359 (rulesValidInductive!2599 thiss!26199 rules!3870)))

(assert (=> d!1212359 (= (maxPrefix!3941 thiss!26199 rules!3870 input!3411) lt!1460572)))

(declare-fun b!4082289 () Bool)

(declare-fun lt!1460569 () Option!9468)

(declare-fun lt!1460570 () Option!9468)

(assert (=> b!4082289 (= e!2533697 (ite (and ((_ is None!9467) lt!1460569) ((_ is None!9467) lt!1460570)) None!9467 (ite ((_ is None!9467) lt!1460570) lt!1460569 (ite ((_ is None!9467) lt!1460569) lt!1460570 (ite (>= (size!32671 (_1!24483 (v!39929 lt!1460569))) (size!32671 (_1!24483 (v!39929 lt!1460570)))) lt!1460569 lt!1460570)))))))

(declare-fun call!288709 () Option!9468)

(assert (=> b!4082289 (= lt!1460569 call!288709)))

(assert (=> b!4082289 (= lt!1460570 (maxPrefix!3941 thiss!26199 (t!337798 rules!3870) input!3411))))

(declare-fun b!4082290 () Bool)

(assert (=> b!4082290 (= e!2533698 (contains!8731 rules!3870 (rule!10182 (_1!24483 (get!14346 lt!1460572)))))))

(declare-fun b!4082291 () Bool)

(declare-fun res!1668014 () Bool)

(assert (=> b!4082291 (=> (not res!1668014) (not e!2533698))))

(assert (=> b!4082291 (= res!1668014 (matchR!5910 (regex!7060 (rule!10182 (_1!24483 (get!14346 lt!1460572)))) (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460572))))))))

(declare-fun b!4082292 () Bool)

(assert (=> b!4082292 (= e!2533697 call!288709)))

(declare-fun b!4082293 () Bool)

(declare-fun res!1668015 () Bool)

(assert (=> b!4082293 (=> (not res!1668015) (not e!2533698))))

(assert (=> b!4082293 (= res!1668015 (= (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460572)))) (originalCharacters!7654 (_1!24483 (get!14346 lt!1460572)))))))

(declare-fun b!4082294 () Bool)

(assert (=> b!4082294 (= e!2533699 e!2533698)))

(declare-fun res!1668016 () Bool)

(assert (=> b!4082294 (=> (not res!1668016) (not e!2533698))))

(declare-fun isDefined!7168 (Option!9468) Bool)

(assert (=> b!4082294 (= res!1668016 (isDefined!7168 lt!1460572))))

(declare-fun b!4082295 () Bool)

(declare-fun res!1668017 () Bool)

(assert (=> b!4082295 (=> (not res!1668017) (not e!2533698))))

(assert (=> b!4082295 (= res!1668017 (= (++!11466 (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460572)))) (_2!24483 (get!14346 lt!1460572))) input!3411))))

(declare-fun bm!288704 () Bool)

(assert (=> bm!288704 (= call!288709 (maxPrefixOneRule!2931 thiss!26199 (h!49159 rules!3870) input!3411))))

(assert (= (and d!1212359 c!703903) b!4082292))

(assert (= (and d!1212359 (not c!703903)) b!4082289))

(assert (= (or b!4082292 b!4082289) bm!288704))

(assert (= (and d!1212359 (not res!1668013)) b!4082294))

(assert (= (and b!4082294 res!1668016) b!4082293))

(assert (= (and b!4082293 res!1668015) b!4082287))

(assert (= (and b!4082287 res!1668012) b!4082295))

(assert (= (and b!4082295 res!1668017) b!4082288))

(assert (= (and b!4082288 res!1668011) b!4082291))

(assert (= (and b!4082291 res!1668014) b!4082290))

(declare-fun m!4689799 () Bool)

(assert (=> d!1212359 m!4689799))

(declare-fun m!4689801 () Bool)

(assert (=> d!1212359 m!4689801))

(declare-fun m!4689803 () Bool)

(assert (=> d!1212359 m!4689803))

(declare-fun m!4689805 () Bool)

(assert (=> d!1212359 m!4689805))

(declare-fun m!4689807 () Bool)

(assert (=> b!4082291 m!4689807))

(declare-fun m!4689809 () Bool)

(assert (=> b!4082291 m!4689809))

(assert (=> b!4082291 m!4689809))

(declare-fun m!4689811 () Bool)

(assert (=> b!4082291 m!4689811))

(assert (=> b!4082291 m!4689811))

(declare-fun m!4689813 () Bool)

(assert (=> b!4082291 m!4689813))

(declare-fun m!4689815 () Bool)

(assert (=> b!4082294 m!4689815))

(assert (=> b!4082293 m!4689807))

(assert (=> b!4082293 m!4689809))

(assert (=> b!4082293 m!4689809))

(assert (=> b!4082293 m!4689811))

(assert (=> b!4082287 m!4689807))

(declare-fun m!4689817 () Bool)

(assert (=> b!4082287 m!4689817))

(assert (=> b!4082287 m!4689737))

(assert (=> b!4082288 m!4689807))

(declare-fun m!4689819 () Bool)

(assert (=> b!4082288 m!4689819))

(assert (=> b!4082288 m!4689819))

(declare-fun m!4689821 () Bool)

(assert (=> b!4082288 m!4689821))

(assert (=> bm!288704 m!4689511))

(assert (=> b!4082289 m!4689479))

(assert (=> b!4082290 m!4689807))

(declare-fun m!4689823 () Bool)

(assert (=> b!4082290 m!4689823))

(assert (=> b!4082295 m!4689807))

(assert (=> b!4082295 m!4689809))

(assert (=> b!4082295 m!4689809))

(assert (=> b!4082295 m!4689811))

(assert (=> b!4082295 m!4689811))

(declare-fun m!4689825 () Bool)

(assert (=> b!4082295 m!4689825))

(assert (=> b!4081954 d!1212359))

(declare-fun d!1212361 () Bool)

(declare-fun lt!1460575 () Int)

(assert (=> d!1212361 (>= lt!1460575 0)))

(declare-fun e!2533702 () Int)

(assert (=> d!1212361 (= lt!1460575 e!2533702)))

(declare-fun c!703906 () Bool)

(assert (=> d!1212361 (= c!703906 ((_ is Nil!43738) p!2988))))

(assert (=> d!1212361 (= (size!32672 p!2988) lt!1460575)))

(declare-fun b!4082300 () Bool)

(assert (=> b!4082300 (= e!2533702 0)))

(declare-fun b!4082301 () Bool)

(assert (=> b!4082301 (= e!2533702 (+ 1 (size!32672 (t!337797 p!2988))))))

(assert (= (and d!1212361 c!703906) b!4082300))

(assert (= (and d!1212361 (not c!703906)) b!4082301))

(declare-fun m!4689827 () Bool)

(assert (=> b!4082301 m!4689827))

(assert (=> b!4081954 d!1212361))

(declare-fun d!1212363 () Bool)

(declare-fun fromListB!2410 (List!43862) BalanceConc!26136)

(assert (=> d!1212363 (= (seqFromList!5277 p!2988) (fromListB!2410 p!2988))))

(declare-fun bs!592934 () Bool)

(assert (= bs!592934 d!1212363))

(declare-fun m!4689829 () Bool)

(assert (=> bs!592934 m!4689829))

(assert (=> b!4081954 d!1212363))

(declare-fun d!1212365 () Bool)

(declare-fun lt!1460578 () Bool)

(declare-fun content!6711 (List!43863) (InoxSet Rule!13920))

(assert (=> d!1212365 (= lt!1460578 (select (content!6711 rules!3870) r!4213))))

(declare-fun e!2533707 () Bool)

(assert (=> d!1212365 (= lt!1460578 e!2533707)))

(declare-fun res!1668023 () Bool)

(assert (=> d!1212365 (=> (not res!1668023) (not e!2533707))))

(assert (=> d!1212365 (= res!1668023 ((_ is Cons!43739) rules!3870))))

(assert (=> d!1212365 (= (contains!8731 rules!3870 r!4213) lt!1460578)))

(declare-fun b!4082306 () Bool)

(declare-fun e!2533708 () Bool)

(assert (=> b!4082306 (= e!2533707 e!2533708)))

(declare-fun res!1668022 () Bool)

(assert (=> b!4082306 (=> res!1668022 e!2533708)))

(assert (=> b!4082306 (= res!1668022 (= (h!49159 rules!3870) r!4213))))

(declare-fun b!4082307 () Bool)

(assert (=> b!4082307 (= e!2533708 (contains!8731 (t!337798 rules!3870) r!4213))))

(assert (= (and d!1212365 res!1668023) b!4082306))

(assert (= (and b!4082306 (not res!1668022)) b!4082307))

(declare-fun m!4689831 () Bool)

(assert (=> d!1212365 m!4689831))

(declare-fun m!4689833 () Bool)

(assert (=> d!1212365 m!4689833))

(declare-fun m!4689835 () Bool)

(assert (=> b!4082307 m!4689835))

(assert (=> b!4081965 d!1212365))

(declare-fun d!1212367 () Bool)

(declare-fun res!1668024 () Bool)

(declare-fun e!2533709 () Bool)

(assert (=> d!1212367 (=> (not res!1668024) (not e!2533709))))

(assert (=> d!1212367 (= res!1668024 (rulesValid!2758 thiss!26199 rules!3870))))

(assert (=> d!1212367 (= (rulesInvariant!5992 thiss!26199 rules!3870) e!2533709)))

(declare-fun b!4082308 () Bool)

(assert (=> b!4082308 (= e!2533709 (noDuplicateTag!2759 thiss!26199 rules!3870 Nil!43741))))

(assert (= (and d!1212367 res!1668024) b!4082308))

(declare-fun m!4689837 () Bool)

(assert (=> d!1212367 m!4689837))

(declare-fun m!4689839 () Bool)

(assert (=> b!4082308 m!4689839))

(assert (=> b!4081967 d!1212367))

(declare-fun d!1212369 () Bool)

(assert (=> d!1212369 (= (get!14346 lt!1460466) (v!39929 lt!1460466))))

(assert (=> b!4081966 d!1212369))

(declare-fun d!1212371 () Bool)

(assert (=> d!1212371 (= (inv!58398 (tag!7920 r!4213)) (= (mod (str.len (value!221861 (tag!7920 r!4213))) 2) 0))))

(assert (=> b!4081968 d!1212371))

(declare-fun d!1212373 () Bool)

(declare-fun res!1668025 () Bool)

(declare-fun e!2533710 () Bool)

(assert (=> d!1212373 (=> (not res!1668025) (not e!2533710))))

(assert (=> d!1212373 (= res!1668025 (semiInverseModEq!3024 (toChars!9491 (transformation!7060 r!4213)) (toValue!9632 (transformation!7060 r!4213))))))

(assert (=> d!1212373 (= (inv!58400 (transformation!7060 r!4213)) e!2533710)))

(declare-fun b!4082309 () Bool)

(assert (=> b!4082309 (= e!2533710 (equivClasses!2923 (toChars!9491 (transformation!7060 r!4213)) (toValue!9632 (transformation!7060 r!4213))))))

(assert (= (and d!1212373 res!1668025) b!4082309))

(declare-fun m!4689841 () Bool)

(assert (=> d!1212373 m!4689841))

(declare-fun m!4689843 () Bool)

(assert (=> b!4082309 m!4689843))

(assert (=> b!4081968 d!1212373))

(declare-fun b!4082310 () Bool)

(declare-fun res!1668027 () Bool)

(declare-fun e!2533712 () Bool)

(assert (=> b!4082310 (=> (not res!1668027) (not e!2533712))))

(declare-fun lt!1460583 () Option!9468)

(assert (=> b!4082310 (= res!1668027 (< (size!32672 (_2!24483 (get!14346 lt!1460583))) (size!32672 input!3411)))))

(declare-fun b!4082311 () Bool)

(declare-fun res!1668026 () Bool)

(assert (=> b!4082311 (=> (not res!1668026) (not e!2533712))))

(assert (=> b!4082311 (= res!1668026 (= (value!221862 (_1!24483 (get!14346 lt!1460583))) (apply!10243 (transformation!7060 (rule!10182 (_1!24483 (get!14346 lt!1460583)))) (seqFromList!5277 (originalCharacters!7654 (_1!24483 (get!14346 lt!1460583)))))))))

(declare-fun d!1212375 () Bool)

(declare-fun e!2533713 () Bool)

(assert (=> d!1212375 e!2533713))

(declare-fun res!1668028 () Bool)

(assert (=> d!1212375 (=> res!1668028 e!2533713)))

(assert (=> d!1212375 (= res!1668028 (isEmpty!26143 lt!1460583))))

(declare-fun e!2533711 () Option!9468)

(assert (=> d!1212375 (= lt!1460583 e!2533711)))

(declare-fun c!703907 () Bool)

(assert (=> d!1212375 (= c!703907 (and ((_ is Cons!43739) (t!337798 rules!3870)) ((_ is Nil!43739) (t!337798 (t!337798 rules!3870)))))))

(declare-fun lt!1460579 () Unit!63271)

(declare-fun lt!1460582 () Unit!63271)

(assert (=> d!1212375 (= lt!1460579 lt!1460582)))

(assert (=> d!1212375 (isPrefix!4119 input!3411 input!3411)))

(assert (=> d!1212375 (= lt!1460582 (lemmaIsPrefixRefl!2670 input!3411 input!3411))))

(assert (=> d!1212375 (rulesValidInductive!2599 thiss!26199 (t!337798 rules!3870))))

(assert (=> d!1212375 (= (maxPrefix!3941 thiss!26199 (t!337798 rules!3870) input!3411) lt!1460583)))

(declare-fun b!4082312 () Bool)

(declare-fun lt!1460580 () Option!9468)

(declare-fun lt!1460581 () Option!9468)

(assert (=> b!4082312 (= e!2533711 (ite (and ((_ is None!9467) lt!1460580) ((_ is None!9467) lt!1460581)) None!9467 (ite ((_ is None!9467) lt!1460581) lt!1460580 (ite ((_ is None!9467) lt!1460580) lt!1460581 (ite (>= (size!32671 (_1!24483 (v!39929 lt!1460580))) (size!32671 (_1!24483 (v!39929 lt!1460581)))) lt!1460580 lt!1460581)))))))

(declare-fun call!288710 () Option!9468)

(assert (=> b!4082312 (= lt!1460580 call!288710)))

(assert (=> b!4082312 (= lt!1460581 (maxPrefix!3941 thiss!26199 (t!337798 (t!337798 rules!3870)) input!3411))))

(declare-fun b!4082313 () Bool)

(assert (=> b!4082313 (= e!2533712 (contains!8731 (t!337798 rules!3870) (rule!10182 (_1!24483 (get!14346 lt!1460583)))))))

(declare-fun b!4082314 () Bool)

(declare-fun res!1668029 () Bool)

(assert (=> b!4082314 (=> (not res!1668029) (not e!2533712))))

(assert (=> b!4082314 (= res!1668029 (matchR!5910 (regex!7060 (rule!10182 (_1!24483 (get!14346 lt!1460583)))) (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460583))))))))

(declare-fun b!4082315 () Bool)

(assert (=> b!4082315 (= e!2533711 call!288710)))

(declare-fun b!4082316 () Bool)

(declare-fun res!1668030 () Bool)

(assert (=> b!4082316 (=> (not res!1668030) (not e!2533712))))

(assert (=> b!4082316 (= res!1668030 (= (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460583)))) (originalCharacters!7654 (_1!24483 (get!14346 lt!1460583)))))))

(declare-fun b!4082317 () Bool)

(assert (=> b!4082317 (= e!2533713 e!2533712)))

(declare-fun res!1668031 () Bool)

(assert (=> b!4082317 (=> (not res!1668031) (not e!2533712))))

(assert (=> b!4082317 (= res!1668031 (isDefined!7168 lt!1460583))))

(declare-fun b!4082318 () Bool)

(declare-fun res!1668032 () Bool)

(assert (=> b!4082318 (=> (not res!1668032) (not e!2533712))))

(assert (=> b!4082318 (= res!1668032 (= (++!11466 (list!16250 (charsOf!4832 (_1!24483 (get!14346 lt!1460583)))) (_2!24483 (get!14346 lt!1460583))) input!3411))))

(declare-fun bm!288705 () Bool)

(assert (=> bm!288705 (= call!288710 (maxPrefixOneRule!2931 thiss!26199 (h!49159 (t!337798 rules!3870)) input!3411))))

(assert (= (and d!1212375 c!703907) b!4082315))

(assert (= (and d!1212375 (not c!703907)) b!4082312))

(assert (= (or b!4082315 b!4082312) bm!288705))

(assert (= (and d!1212375 (not res!1668028)) b!4082317))

(assert (= (and b!4082317 res!1668031) b!4082316))

(assert (= (and b!4082316 res!1668030) b!4082310))

(assert (= (and b!4082310 res!1668027) b!4082318))

(assert (= (and b!4082318 res!1668032) b!4082311))

(assert (= (and b!4082311 res!1668026) b!4082314))

(assert (= (and b!4082314 res!1668029) b!4082313))

(declare-fun m!4689845 () Bool)

(assert (=> d!1212375 m!4689845))

(assert (=> d!1212375 m!4689801))

(assert (=> d!1212375 m!4689803))

(declare-fun m!4689847 () Bool)

(assert (=> d!1212375 m!4689847))

(declare-fun m!4689849 () Bool)

(assert (=> b!4082314 m!4689849))

(declare-fun m!4689851 () Bool)

(assert (=> b!4082314 m!4689851))

(assert (=> b!4082314 m!4689851))

(declare-fun m!4689853 () Bool)

(assert (=> b!4082314 m!4689853))

(assert (=> b!4082314 m!4689853))

(declare-fun m!4689855 () Bool)

(assert (=> b!4082314 m!4689855))

(declare-fun m!4689857 () Bool)

(assert (=> b!4082317 m!4689857))

(assert (=> b!4082316 m!4689849))

(assert (=> b!4082316 m!4689851))

(assert (=> b!4082316 m!4689851))

(assert (=> b!4082316 m!4689853))

(assert (=> b!4082310 m!4689849))

(declare-fun m!4689859 () Bool)

(assert (=> b!4082310 m!4689859))

(assert (=> b!4082310 m!4689737))

(assert (=> b!4082311 m!4689849))

(declare-fun m!4689861 () Bool)

(assert (=> b!4082311 m!4689861))

(assert (=> b!4082311 m!4689861))

(declare-fun m!4689863 () Bool)

(assert (=> b!4082311 m!4689863))

(declare-fun m!4689865 () Bool)

(assert (=> bm!288705 m!4689865))

(declare-fun m!4689867 () Bool)

(assert (=> b!4082312 m!4689867))

(assert (=> b!4082313 m!4689849))

(declare-fun m!4689869 () Bool)

(assert (=> b!4082313 m!4689869))

(assert (=> b!4082318 m!4689849))

(assert (=> b!4082318 m!4689851))

(assert (=> b!4082318 m!4689851))

(assert (=> b!4082318 m!4689853))

(assert (=> b!4082318 m!4689853))

(declare-fun m!4689871 () Bool)

(assert (=> b!4082318 m!4689871))

(assert (=> b!4081957 d!1212375))

(declare-fun b!4082323 () Bool)

(declare-fun e!2533716 () Bool)

(declare-fun tp!1235800 () Bool)

(assert (=> b!4082323 (= e!2533716 (and tp_is_empty!20933 tp!1235800))))

(assert (=> b!4081958 (= tp!1235750 e!2533716)))

(assert (= (and b!4081958 ((_ is Cons!43738) (t!337797 suffix!1518))) b!4082323))

(declare-fun b!4082334 () Bool)

(declare-fun b_free!113965 () Bool)

(declare-fun b_next!114669 () Bool)

(assert (=> b!4082334 (= b_free!113965 (not b_next!114669))))

(declare-fun tb!245181 () Bool)

(declare-fun t!337821 () Bool)

(assert (=> (and b!4082334 (= (toValue!9632 (transformation!7060 (h!49159 (t!337798 rules!3870)))) (toValue!9632 (transformation!7060 r!4213))) t!337821) tb!245181))

(declare-fun result!297412 () Bool)

(assert (= result!297412 result!297402))

(assert (=> d!1212355 t!337821))

(assert (=> d!1212357 t!337821))

(declare-fun tp!1235812 () Bool)

(declare-fun b_and!314099 () Bool)

(assert (=> b!4082334 (= tp!1235812 (and (=> t!337821 result!297412) b_and!314099))))

(declare-fun b_free!113967 () Bool)

(declare-fun b_next!114671 () Bool)

(assert (=> b!4082334 (= b_free!113967 (not b_next!114671))))

(declare-fun t!337823 () Bool)

(declare-fun tb!245183 () Bool)

(assert (=> (and b!4082334 (= (toChars!9491 (transformation!7060 (h!49159 (t!337798 rules!3870)))) (toChars!9491 (transformation!7060 r!4213))) t!337823) tb!245183))

(declare-fun result!297414 () Bool)

(assert (= result!297414 result!297396))

(assert (=> d!1212355 t!337823))

(declare-fun b_and!314101 () Bool)

(declare-fun tp!1235811 () Bool)

(assert (=> b!4082334 (= tp!1235811 (and (=> t!337823 result!297414) b_and!314101))))

(declare-fun e!2533725 () Bool)

(assert (=> b!4082334 (= e!2533725 (and tp!1235812 tp!1235811))))

(declare-fun tp!1235810 () Bool)

(declare-fun b!4082333 () Bool)

(declare-fun e!2533727 () Bool)

(assert (=> b!4082333 (= e!2533727 (and tp!1235810 (inv!58398 (tag!7920 (h!49159 (t!337798 rules!3870)))) (inv!58400 (transformation!7060 (h!49159 (t!337798 rules!3870)))) e!2533725))))

(declare-fun b!4082332 () Bool)

(declare-fun e!2533728 () Bool)

(declare-fun tp!1235809 () Bool)

(assert (=> b!4082332 (= e!2533728 (and e!2533727 tp!1235809))))

(assert (=> b!4081969 (= tp!1235747 e!2533728)))

(assert (= b!4082333 b!4082334))

(assert (= b!4082332 b!4082333))

(assert (= (and b!4081969 ((_ is Cons!43739) (t!337798 rules!3870))) b!4082332))

(declare-fun m!4689873 () Bool)

(assert (=> b!4082333 m!4689873))

(declare-fun m!4689875 () Bool)

(assert (=> b!4082333 m!4689875))

(declare-fun b!4082335 () Bool)

(declare-fun e!2533729 () Bool)

(declare-fun tp!1235813 () Bool)

(assert (=> b!4082335 (= e!2533729 (and tp_is_empty!20933 tp!1235813))))

(assert (=> b!4081960 (= tp!1235745 e!2533729)))

(assert (= (and b!4081960 ((_ is Cons!43738) (t!337797 p!2988))) b!4082335))

(declare-fun b!4082349 () Bool)

(declare-fun e!2533732 () Bool)

(declare-fun tp!1235824 () Bool)

(declare-fun tp!1235827 () Bool)

(assert (=> b!4082349 (= e!2533732 (and tp!1235824 tp!1235827))))

(assert (=> b!4081971 (= tp!1235752 e!2533732)))

(declare-fun b!4082347 () Bool)

(declare-fun tp!1235828 () Bool)

(declare-fun tp!1235825 () Bool)

(assert (=> b!4082347 (= e!2533732 (and tp!1235828 tp!1235825))))

(declare-fun b!4082348 () Bool)

(declare-fun tp!1235826 () Bool)

(assert (=> b!4082348 (= e!2533732 tp!1235826)))

(declare-fun b!4082346 () Bool)

(assert (=> b!4082346 (= e!2533732 tp_is_empty!20933)))

(assert (= (and b!4081971 ((_ is ElementMatch!11965) (regex!7060 (h!49159 rules!3870)))) b!4082346))

(assert (= (and b!4081971 ((_ is Concat!19256) (regex!7060 (h!49159 rules!3870)))) b!4082347))

(assert (= (and b!4081971 ((_ is Star!11965) (regex!7060 (h!49159 rules!3870)))) b!4082348))

(assert (= (and b!4081971 ((_ is Union!11965) (regex!7060 (h!49159 rules!3870)))) b!4082349))

(declare-fun b!4082353 () Bool)

(declare-fun e!2533733 () Bool)

(declare-fun tp!1235829 () Bool)

(declare-fun tp!1235832 () Bool)

(assert (=> b!4082353 (= e!2533733 (and tp!1235829 tp!1235832))))

(assert (=> b!4081968 (= tp!1235746 e!2533733)))

(declare-fun b!4082351 () Bool)

(declare-fun tp!1235833 () Bool)

(declare-fun tp!1235830 () Bool)

(assert (=> b!4082351 (= e!2533733 (and tp!1235833 tp!1235830))))

(declare-fun b!4082352 () Bool)

(declare-fun tp!1235831 () Bool)

(assert (=> b!4082352 (= e!2533733 tp!1235831)))

(declare-fun b!4082350 () Bool)

(assert (=> b!4082350 (= e!2533733 tp_is_empty!20933)))

(assert (= (and b!4081968 ((_ is ElementMatch!11965) (regex!7060 r!4213))) b!4082350))

(assert (= (and b!4081968 ((_ is Concat!19256) (regex!7060 r!4213))) b!4082351))

(assert (= (and b!4081968 ((_ is Star!11965) (regex!7060 r!4213))) b!4082352))

(assert (= (and b!4081968 ((_ is Union!11965) (regex!7060 r!4213))) b!4082353))

(declare-fun b!4082354 () Bool)

(declare-fun e!2533734 () Bool)

(declare-fun tp!1235834 () Bool)

(assert (=> b!4082354 (= e!2533734 (and tp_is_empty!20933 tp!1235834))))

(assert (=> b!4081963 (= tp!1235754 e!2533734)))

(assert (= (and b!4081963 ((_ is Cons!43738) (t!337797 input!3411))) b!4082354))

(declare-fun b_lambda!119393 () Bool)

(assert (= b_lambda!119391 (or (and b!4081956 b_free!113953 (= (toValue!9632 (transformation!7060 (h!49159 rules!3870))) (toValue!9632 (transformation!7060 r!4213)))) (and b!4081961 b_free!113957) (and b!4082334 b_free!113965 (= (toValue!9632 (transformation!7060 (h!49159 (t!337798 rules!3870)))) (toValue!9632 (transformation!7060 r!4213)))) b_lambda!119393)))

(declare-fun b_lambda!119395 () Bool)

(assert (= b_lambda!119387 (or (and b!4081956 b_free!113955 (= (toChars!9491 (transformation!7060 (h!49159 rules!3870))) (toChars!9491 (transformation!7060 r!4213)))) (and b!4081961 b_free!113959) (and b!4082334 b_free!113967 (= (toChars!9491 (transformation!7060 (h!49159 (t!337798 rules!3870)))) (toChars!9491 (transformation!7060 r!4213)))) b_lambda!119395)))

(declare-fun b_lambda!119397 () Bool)

(assert (= b_lambda!119389 (or (and b!4081956 b_free!113953 (= (toValue!9632 (transformation!7060 (h!49159 rules!3870))) (toValue!9632 (transformation!7060 r!4213)))) (and b!4081961 b_free!113957) (and b!4082334 b_free!113965 (= (toValue!9632 (transformation!7060 (h!49159 (t!337798 rules!3870)))) (toValue!9632 (transformation!7060 r!4213)))) b_lambda!119397)))

(check-sat (not bm!288704) (not tb!245173) (not b!4082347) (not b!4082301) (not d!1212329) (not d!1212301) (not b!4082207) (not b!4082290) (not d!1212351) (not b!4082316) (not b!4082210) (not b!4082353) (not b!4082317) (not d!1212321) (not d!1212353) (not b!4082332) (not b!4082202) b_and!314095 (not b!4082079) (not d!1212325) (not b!4082349) (not b!4082348) (not d!1212365) (not b!4082086) (not b!4082201) (not b!4082288) (not d!1212303) b_and!314087 (not b!4082077) b_and!314099 (not b!4082308) (not b!4082293) (not b_lambda!119393) (not b!4082203) (not b_next!114671) (not b!4082333) (not d!1212359) (not b!4082204) (not b!4082309) (not b!4082266) (not b!4082295) b_and!314089 (not b!4082206) (not b!4082105) (not b!4082335) (not b_next!114669) (not d!1212319) (not b!4082294) (not b!4082291) (not b!4082200) (not b_lambda!119397) b_and!314097 (not b!4082106) (not b!4082310) (not tb!245177) (not b!4082084) (not b!4082318) (not b_lambda!119395) (not bm!288697) (not b_next!114657) (not b!4082312) (not b!4082199) (not d!1212373) tp_is_empty!20933 (not b!4082311) (not b!4082289) (not b_next!114661) (not b_next!114663) (not bm!288705) (not d!1212363) (not d!1212367) (not b!4082351) (not b!4082089) (not b!4082352) b_and!314101 (not b!4082314) (not d!1212355) (not b!4082287) (not b_next!114659) (not b!4082323) (not b!4082313) (not d!1212375) (not b!4082021) (not b!4082081) (not b!4082354) (not b!4082307) (not b!4082094))
(check-sat b_and!314095 (not b_next!114671) b_and!314089 (not b_next!114669) b_and!314097 (not b_next!114657) (not b_next!114661) (not b_next!114663) b_and!314101 (not b_next!114659) b_and!314087 b_and!314099)
