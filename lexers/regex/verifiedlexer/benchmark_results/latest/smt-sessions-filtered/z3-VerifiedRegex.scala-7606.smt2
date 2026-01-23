; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401750 () Bool)

(assert start!401750)

(declare-fun b!4204929 () Bool)

(declare-fun b_free!122827 () Bool)

(declare-fun b_next!123531 () Bool)

(assert (=> b!4204929 (= b_free!122827 (not b_next!123531))))

(declare-fun tp!1285113 () Bool)

(declare-fun b_and!330405 () Bool)

(assert (=> b!4204929 (= tp!1285113 b_and!330405)))

(declare-fun b_free!122829 () Bool)

(declare-fun b_next!123533 () Bool)

(assert (=> b!4204929 (= b_free!122829 (not b_next!123533))))

(declare-fun tp!1285130 () Bool)

(declare-fun b_and!330407 () Bool)

(assert (=> b!4204929 (= tp!1285130 b_and!330407)))

(declare-fun b!4204905 () Bool)

(declare-fun b_free!122831 () Bool)

(declare-fun b_next!123535 () Bool)

(assert (=> b!4204905 (= b_free!122831 (not b_next!123535))))

(declare-fun tp!1285122 () Bool)

(declare-fun b_and!330409 () Bool)

(assert (=> b!4204905 (= tp!1285122 b_and!330409)))

(declare-fun b_free!122833 () Bool)

(declare-fun b_next!123537 () Bool)

(assert (=> b!4204905 (= b_free!122833 (not b_next!123537))))

(declare-fun tp!1285119 () Bool)

(declare-fun b_and!330411 () Bool)

(assert (=> b!4204905 (= tp!1285119 b_and!330411)))

(declare-fun b!4204917 () Bool)

(declare-fun b_free!122835 () Bool)

(declare-fun b_next!123539 () Bool)

(assert (=> b!4204917 (= b_free!122835 (not b_next!123539))))

(declare-fun tp!1285116 () Bool)

(declare-fun b_and!330413 () Bool)

(assert (=> b!4204917 (= tp!1285116 b_and!330413)))

(declare-fun b_free!122837 () Bool)

(declare-fun b_next!123541 () Bool)

(assert (=> b!4204917 (= b_free!122837 (not b_next!123541))))

(declare-fun tp!1285127 () Bool)

(declare-fun b_and!330415 () Bool)

(assert (=> b!4204917 (= tp!1285127 b_and!330415)))

(declare-fun b!4204919 () Bool)

(declare-fun b_free!122839 () Bool)

(declare-fun b_next!123543 () Bool)

(assert (=> b!4204919 (= b_free!122839 (not b_next!123543))))

(declare-fun tp!1285126 () Bool)

(declare-fun b_and!330417 () Bool)

(assert (=> b!4204919 (= tp!1285126 b_and!330417)))

(declare-fun b_free!122841 () Bool)

(declare-fun b_next!123545 () Bool)

(assert (=> b!4204919 (= b_free!122841 (not b_next!123545))))

(declare-fun tp!1285125 () Bool)

(declare-fun b_and!330419 () Bool)

(assert (=> b!4204919 (= tp!1285125 b_and!330419)))

(declare-fun b!4204900 () Bool)

(declare-fun res!1726961 () Bool)

(declare-fun e!2610231 () Bool)

(assert (=> b!4204900 (=> (not res!1726961) (not e!2610231))))

(declare-datatypes ((LexerInterface!7321 0))(
  ( (LexerInterfaceExt!7318 (__x!28135 Int)) (Lexer!7319) )
))
(declare-fun thiss!26544 () LexerInterface!7321)

(declare-datatypes ((List!46341 0))(
  ( (Nil!46217) (Cons!46217 (h!51637 (_ BitVec 16)) (t!347370 List!46341)) )
))
(declare-datatypes ((TokenValue!7956 0))(
  ( (FloatLiteralValue!15912 (text!56137 List!46341)) (TokenValueExt!7955 (__x!28136 Int)) (Broken!39780 (value!240694 List!46341)) (Object!8079) (End!7956) (Def!7956) (Underscore!7956) (Match!7956) (Else!7956) (Error!7956) (Case!7956) (If!7956) (Extends!7956) (Abstract!7956) (Class!7956) (Val!7956) (DelimiterValue!15912 (del!8016 List!46341)) (KeywordValue!7962 (value!240695 List!46341)) (CommentValue!15912 (value!240696 List!46341)) (WhitespaceValue!15912 (value!240697 List!46341)) (IndentationValue!7956 (value!240698 List!46341)) (String!53649) (Int32!7956) (Broken!39781 (value!240699 List!46341)) (Boolean!7957) (Unit!65320) (OperatorValue!7959 (op!8016 List!46341)) (IdentifierValue!15912 (value!240700 List!46341)) (IdentifierValue!15913 (value!240701 List!46341)) (WhitespaceValue!15913 (value!240702 List!46341)) (True!15912) (False!15912) (Broken!39782 (value!240703 List!46341)) (Broken!39783 (value!240704 List!46341)) (True!15913) (RightBrace!7956) (RightBracket!7956) (Colon!7956) (Null!7956) (Comma!7956) (LeftBracket!7956) (False!15913) (LeftBrace!7956) (ImaginaryLiteralValue!7956 (text!56138 List!46341)) (StringLiteralValue!23868 (value!240705 List!46341)) (EOFValue!7956 (value!240706 List!46341)) (IdentValue!7956 (value!240707 List!46341)) (DelimiterValue!15913 (value!240708 List!46341)) (DedentValue!7956 (value!240709 List!46341)) (NewLineValue!7956 (value!240710 List!46341)) (IntegerValue!23868 (value!240711 (_ BitVec 32)) (text!56139 List!46341)) (IntegerValue!23869 (value!240712 Int) (text!56140 List!46341)) (Times!7956) (Or!7956) (Equal!7956) (Minus!7956) (Broken!39784 (value!240713 List!46341)) (And!7956) (Div!7956) (LessEqual!7956) (Mod!7956) (Concat!20587) (Not!7956) (Plus!7956) (SpaceValue!7956 (value!240714 List!46341)) (IntegerValue!23870 (value!240715 Int) (text!56141 List!46341)) (StringLiteralValue!23869 (text!56142 List!46341)) (FloatLiteralValue!15913 (text!56143 List!46341)) (BytesLiteralValue!7956 (value!240716 List!46341)) (CommentValue!15913 (value!240717 List!46341)) (StringLiteralValue!23870 (value!240718 List!46341)) (ErrorTokenValue!7956 (msg!8017 List!46341)) )
))
(declare-datatypes ((C!25456 0))(
  ( (C!25457 (val!14890 Int)) )
))
(declare-datatypes ((List!46342 0))(
  ( (Nil!46218) (Cons!46218 (h!51638 C!25456) (t!347371 List!46342)) )
))
(declare-datatypes ((IArray!27879 0))(
  ( (IArray!27880 (innerList!13997 List!46342)) )
))
(declare-datatypes ((Regex!12631 0))(
  ( (ElementMatch!12631 (c!716736 C!25456)) (Concat!20588 (regOne!25774 Regex!12631) (regTwo!25774 Regex!12631)) (EmptyExpr!12631) (Star!12631 (reg!12960 Regex!12631)) (EmptyLang!12631) (Union!12631 (regOne!25775 Regex!12631) (regTwo!25775 Regex!12631)) )
))
(declare-datatypes ((String!53650 0))(
  ( (String!53651 (value!240719 String)) )
))
(declare-datatypes ((Conc!13937 0))(
  ( (Node!13937 (left!34423 Conc!13937) (right!34753 Conc!13937) (csize!28104 Int) (cheight!14148 Int)) (Leaf!21544 (xs!17243 IArray!27879) (csize!28105 Int)) (Empty!13937) )
))
(declare-datatypes ((BalanceConc!27468 0))(
  ( (BalanceConc!27469 (c!716737 Conc!13937)) )
))
(declare-datatypes ((TokenValueInjection!15340 0))(
  ( (TokenValueInjection!15341 (toValue!10438 Int) (toChars!10297 Int)) )
))
(declare-datatypes ((Rule!15252 0))(
  ( (Rule!15253 (regex!7726 Regex!12631) (tag!8590 String!53650) (isSeparator!7726 Bool) (transformation!7726 TokenValueInjection!15340)) )
))
(declare-datatypes ((List!46343 0))(
  ( (Nil!46219) (Cons!46219 (h!51639 Rule!15252) (t!347372 List!46343)) )
))
(declare-fun rules!3967 () List!46343)

(declare-fun rulesInvariant!6532 (LexerInterface!7321 List!46343) Bool)

(assert (=> b!4204900 (= res!1726961 (rulesInvariant!6532 thiss!26544 rules!3967))))

(declare-fun b!4204901 () Bool)

(declare-fun res!1726968 () Bool)

(assert (=> b!4204901 (=> (not res!1726968) (not e!2610231))))

(declare-fun pBis!121 () List!46342)

(declare-fun input!3517 () List!46342)

(declare-fun isPrefix!4585 (List!46342 List!46342) Bool)

(assert (=> b!4204901 (= res!1726968 (isPrefix!4585 pBis!121 input!3517))))

(declare-fun b!4204902 () Bool)

(declare-fun e!2610236 () Bool)

(declare-datatypes ((Token!14154 0))(
  ( (Token!14155 (value!240720 TokenValue!7956) (rule!10828 Rule!15252) (size!33957 Int) (originalCharacters!8108 List!46342)) )
))
(declare-datatypes ((tuple2!43970 0))(
  ( (tuple2!43971 (_1!25119 Token!14154) (_2!25119 List!46342)) )
))
(declare-datatypes ((Option!9914 0))(
  ( (None!9913) (Some!9913 (v!40771 tuple2!43970)) )
))
(declare-fun lt!1497468 () Option!9914)

(declare-fun isDefined!7374 (Option!9914) Bool)

(assert (=> b!4204902 (= e!2610236 (isDefined!7374 lt!1497468))))

(declare-datatypes ((Unit!65321 0))(
  ( (Unit!65322) )
))
(declare-fun lt!1497466 () Unit!65321)

(declare-fun e!2610233 () Unit!65321)

(assert (=> b!4204902 (= lt!1497466 e!2610233)))

(declare-fun c!716735 () Bool)

(declare-fun isEmpty!27366 (Option!9914) Bool)

(assert (=> b!4204902 (= c!716735 (isEmpty!27366 lt!1497468))))

(declare-fun maxPrefix!4361 (LexerInterface!7321 List!46343 List!46342) Option!9914)

(assert (=> b!4204902 (= lt!1497468 (maxPrefix!4361 thiss!26544 (t!347372 rules!3967) input!3517))))

(declare-fun b!4204903 () Bool)

(declare-fun e!2610234 () Bool)

(assert (=> b!4204903 (= e!2610231 e!2610234)))

(declare-fun res!1726973 () Bool)

(assert (=> b!4204903 (=> (not res!1726973) (not e!2610234))))

(declare-fun lt!1497464 () Option!9914)

(assert (=> b!4204903 (= res!1726973 (= (maxPrefix!4361 thiss!26544 rules!3967 input!3517) lt!1497464))))

(declare-fun t!8364 () Token!14154)

(declare-fun suffix!1557 () List!46342)

(assert (=> b!4204903 (= lt!1497464 (Some!9913 (tuple2!43971 t!8364 suffix!1557)))))

(declare-fun tBis!41 () Token!14154)

(declare-fun tp!1285124 () Bool)

(declare-fun e!2610240 () Bool)

(declare-fun b!4204904 () Bool)

(declare-fun e!2610242 () Bool)

(declare-fun inv!21 (TokenValue!7956) Bool)

(assert (=> b!4204904 (= e!2610240 (and (inv!21 (value!240720 tBis!41)) e!2610242 tp!1285124))))

(declare-fun e!2610250 () Bool)

(assert (=> b!4204905 (= e!2610250 (and tp!1285122 tp!1285119))))

(declare-fun b!4204906 () Bool)

(declare-fun res!1726959 () Bool)

(assert (=> b!4204906 (=> (not res!1726959) (not e!2610231))))

(declare-fun p!3001 () List!46342)

(declare-fun ++!11800 (List!46342 List!46342) List!46342)

(assert (=> b!4204906 (= res!1726959 (= (++!11800 p!3001 suffix!1557) input!3517))))

(declare-fun b!4204907 () Bool)

(declare-fun res!1726970 () Bool)

(assert (=> b!4204907 (=> res!1726970 e!2610236)))

(declare-fun rBis!178 () Rule!15252)

(get-info :version)

(assert (=> b!4204907 (= res!1726970 (or (and ((_ is Cons!46219) rules!3967) ((_ is Nil!46219) (t!347372 rules!3967))) (not ((_ is Cons!46219) rules!3967)) (= (h!51639 rules!3967) rBis!178)))))

(declare-fun b!4204908 () Bool)

(declare-fun res!1726964 () Bool)

(assert (=> b!4204908 (=> (not res!1726964) (not e!2610231))))

(assert (=> b!4204908 (= res!1726964 (isPrefix!4585 p!3001 input!3517))))

(declare-fun b!4204909 () Bool)

(declare-fun Unit!65323 () Unit!65321)

(assert (=> b!4204909 (= e!2610233 Unit!65323)))

(declare-fun lt!1497465 () Unit!65321)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!604 (LexerInterface!7321 Rule!15252 List!46343 List!46342) Unit!65321)

(assert (=> b!4204909 (= lt!1497465 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!604 thiss!26544 rBis!178 (t!347372 rules!3967) input!3517))))

(assert (=> b!4204909 false))

(declare-fun b!4204911 () Bool)

(declare-fun e!2610255 () Bool)

(declare-fun tp!1285132 () Bool)

(declare-fun inv!60796 (String!53650) Bool)

(declare-fun inv!60799 (TokenValueInjection!15340) Bool)

(assert (=> b!4204911 (= e!2610255 (and tp!1285132 (inv!60796 (tag!8590 rBis!178)) (inv!60799 (transformation!7726 rBis!178)) e!2610250))))

(declare-fun b!4204912 () Bool)

(declare-fun e!2610256 () Bool)

(declare-fun tp_is_empty!22229 () Bool)

(declare-fun tp!1285120 () Bool)

(assert (=> b!4204912 (= e!2610256 (and tp_is_empty!22229 tp!1285120))))

(declare-fun b!4204913 () Bool)

(declare-fun e!2610253 () Bool)

(declare-fun e!2610252 () Bool)

(declare-fun tp!1285128 () Bool)

(assert (=> b!4204913 (= e!2610253 (and e!2610252 tp!1285128))))

(declare-fun b!4204914 () Bool)

(declare-fun res!1726969 () Bool)

(assert (=> b!4204914 (=> (not res!1726969) (not e!2610231))))

(declare-fun contains!9543 (List!46343 Rule!15252) Bool)

(assert (=> b!4204914 (= res!1726969 (contains!9543 rules!3967 rBis!178))))

(declare-fun e!2610235 () Bool)

(declare-fun b!4204915 () Bool)

(declare-fun e!2610251 () Bool)

(declare-fun tp!1285114 () Bool)

(assert (=> b!4204915 (= e!2610235 (and (inv!21 (value!240720 t!8364)) e!2610251 tp!1285114))))

(declare-fun tp!1285118 () Bool)

(declare-fun b!4204916 () Bool)

(declare-fun e!2610239 () Bool)

(assert (=> b!4204916 (= e!2610242 (and tp!1285118 (inv!60796 (tag!8590 (rule!10828 tBis!41))) (inv!60799 (transformation!7726 (rule!10828 tBis!41))) e!2610239))))

(declare-fun e!2610243 () Bool)

(assert (=> b!4204917 (= e!2610243 (and tp!1285116 tp!1285127))))

(declare-fun b!4204918 () Bool)

(assert (=> b!4204918 (= e!2610234 (not e!2610236))))

(declare-fun res!1726967 () Bool)

(assert (=> b!4204918 (=> res!1726967 e!2610236)))

(declare-fun suffixBis!41 () List!46342)

(declare-fun maxPrefixOneRule!3316 (LexerInterface!7321 Rule!15252 List!46342) Option!9914)

(assert (=> b!4204918 (= res!1726967 (not (= (maxPrefixOneRule!3316 thiss!26544 rBis!178 input!3517) (Some!9913 (tuple2!43971 tBis!41 suffixBis!41)))))))

(assert (=> b!4204918 (isPrefix!4585 input!3517 input!3517)))

(declare-fun lt!1497467 () Unit!65321)

(declare-fun lemmaIsPrefixRefl!3002 (List!46342 List!46342) Unit!65321)

(assert (=> b!4204918 (= lt!1497467 (lemmaIsPrefixRefl!3002 input!3517 input!3517))))

(declare-fun e!2610246 () Bool)

(assert (=> b!4204919 (= e!2610246 (and tp!1285126 tp!1285125))))

(declare-fun b!4204920 () Bool)

(declare-fun res!1726971 () Bool)

(assert (=> b!4204920 (=> (not res!1726971) (not e!2610234))))

(declare-fun ruleValid!3438 (LexerInterface!7321 Rule!15252) Bool)

(assert (=> b!4204920 (= res!1726971 (ruleValid!3438 thiss!26544 rBis!178))))

(declare-fun b!4204921 () Bool)

(declare-fun e!2610237 () Bool)

(declare-fun tp!1285115 () Bool)

(assert (=> b!4204921 (= e!2610237 (and tp_is_empty!22229 tp!1285115))))

(declare-fun b!4204922 () Bool)

(declare-fun res!1726966 () Bool)

(assert (=> b!4204922 (=> res!1726966 e!2610236)))

(declare-fun list!16703 (BalanceConc!27468) List!46342)

(declare-fun charsOf!5149 (Token!14154) BalanceConc!27468)

(assert (=> b!4204922 (= res!1726966 (not (= (list!16703 (charsOf!5149 tBis!41)) pBis!121)))))

(declare-fun b!4204923 () Bool)

(declare-fun Unit!65324 () Unit!65321)

(assert (=> b!4204923 (= e!2610233 Unit!65324)))

(declare-fun b!4204924 () Bool)

(declare-fun e!2610238 () Bool)

(declare-fun tp!1285123 () Bool)

(assert (=> b!4204924 (= e!2610238 (and tp_is_empty!22229 tp!1285123))))

(declare-fun b!4204910 () Bool)

(declare-fun tp!1285121 () Bool)

(assert (=> b!4204910 (= e!2610252 (and tp!1285121 (inv!60796 (tag!8590 (h!51639 rules!3967))) (inv!60799 (transformation!7726 (h!51639 rules!3967))) e!2610246))))

(declare-fun res!1726972 () Bool)

(assert (=> start!401750 (=> (not res!1726972) (not e!2610231))))

(assert (=> start!401750 (= res!1726972 ((_ is Lexer!7319) thiss!26544))))

(assert (=> start!401750 e!2610231))

(declare-fun inv!60800 (Token!14154) Bool)

(assert (=> start!401750 (and (inv!60800 tBis!41) e!2610240)))

(assert (=> start!401750 true))

(assert (=> start!401750 e!2610255))

(declare-fun e!2610241 () Bool)

(assert (=> start!401750 e!2610241))

(assert (=> start!401750 e!2610253))

(assert (=> start!401750 e!2610238))

(assert (=> start!401750 (and (inv!60800 t!8364) e!2610235)))

(assert (=> start!401750 e!2610237))

(declare-fun e!2610247 () Bool)

(assert (=> start!401750 e!2610247))

(assert (=> start!401750 e!2610256))

(declare-fun b!4204925 () Bool)

(declare-fun tp!1285117 () Bool)

(assert (=> b!4204925 (= e!2610241 (and tp_is_empty!22229 tp!1285117))))

(declare-fun b!4204926 () Bool)

(declare-fun res!1726963 () Bool)

(assert (=> b!4204926 (=> (not res!1726963) (not e!2610231))))

(declare-fun isEmpty!27367 (List!46343) Bool)

(assert (=> b!4204926 (= res!1726963 (not (isEmpty!27367 rules!3967)))))

(declare-fun b!4204927 () Bool)

(declare-fun tp!1285131 () Bool)

(assert (=> b!4204927 (= e!2610247 (and tp_is_empty!22229 tp!1285131))))

(declare-fun b!4204928 () Bool)

(declare-fun tp!1285129 () Bool)

(assert (=> b!4204928 (= e!2610251 (and tp!1285129 (inv!60796 (tag!8590 (rule!10828 t!8364))) (inv!60799 (transformation!7726 (rule!10828 t!8364))) e!2610243))))

(assert (=> b!4204929 (= e!2610239 (and tp!1285113 tp!1285130))))

(declare-fun b!4204930 () Bool)

(declare-fun res!1726960 () Bool)

(assert (=> b!4204930 (=> res!1726960 e!2610236)))

(assert (=> b!4204930 (= res!1726960 (not (= (rule!10828 tBis!41) rBis!178)))))

(declare-fun b!4204931 () Bool)

(declare-fun res!1726965 () Bool)

(assert (=> b!4204931 (=> res!1726965 e!2610236)))

(assert (=> b!4204931 (= res!1726965 (not (= (maxPrefixOneRule!3316 thiss!26544 (h!51639 rules!3967) input!3517) lt!1497464)))))

(declare-fun b!4204932 () Bool)

(declare-fun res!1726962 () Bool)

(assert (=> b!4204932 (=> res!1726962 e!2610236)))

(assert (=> b!4204932 (= res!1726962 (not (= (++!11800 pBis!121 suffixBis!41) input!3517)))))

(assert (= (and start!401750 res!1726972) b!4204906))

(assert (= (and b!4204906 res!1726959) b!4204908))

(assert (= (and b!4204908 res!1726964) b!4204901))

(assert (= (and b!4204901 res!1726968) b!4204926))

(assert (= (and b!4204926 res!1726963) b!4204900))

(assert (= (and b!4204900 res!1726961) b!4204914))

(assert (= (and b!4204914 res!1726969) b!4204903))

(assert (= (and b!4204903 res!1726973) b!4204920))

(assert (= (and b!4204920 res!1726971) b!4204918))

(assert (= (and b!4204918 (not res!1726967)) b!4204930))

(assert (= (and b!4204930 (not res!1726960)) b!4204922))

(assert (= (and b!4204922 (not res!1726966)) b!4204932))

(assert (= (and b!4204932 (not res!1726962)) b!4204907))

(assert (= (and b!4204907 (not res!1726970)) b!4204931))

(assert (= (and b!4204931 (not res!1726965)) b!4204902))

(assert (= (and b!4204902 c!716735) b!4204909))

(assert (= (and b!4204902 (not c!716735)) b!4204923))

(assert (= b!4204916 b!4204929))

(assert (= b!4204904 b!4204916))

(assert (= start!401750 b!4204904))

(assert (= b!4204911 b!4204905))

(assert (= start!401750 b!4204911))

(assert (= (and start!401750 ((_ is Cons!46218) p!3001)) b!4204925))

(assert (= b!4204910 b!4204919))

(assert (= b!4204913 b!4204910))

(assert (= (and start!401750 ((_ is Cons!46219) rules!3967)) b!4204913))

(assert (= (and start!401750 ((_ is Cons!46218) input!3517)) b!4204924))

(assert (= b!4204928 b!4204917))

(assert (= b!4204915 b!4204928))

(assert (= start!401750 b!4204915))

(assert (= (and start!401750 ((_ is Cons!46218) pBis!121)) b!4204921))

(assert (= (and start!401750 ((_ is Cons!46218) suffix!1557)) b!4204927))

(assert (= (and start!401750 ((_ is Cons!46218) suffixBis!41)) b!4204912))

(declare-fun m!4793001 () Bool)

(assert (=> b!4204908 m!4793001))

(declare-fun m!4793003 () Bool)

(assert (=> b!4204914 m!4793003))

(declare-fun m!4793005 () Bool)

(assert (=> b!4204903 m!4793005))

(declare-fun m!4793007 () Bool)

(assert (=> b!4204928 m!4793007))

(declare-fun m!4793009 () Bool)

(assert (=> b!4204928 m!4793009))

(declare-fun m!4793011 () Bool)

(assert (=> b!4204918 m!4793011))

(declare-fun m!4793013 () Bool)

(assert (=> b!4204918 m!4793013))

(declare-fun m!4793015 () Bool)

(assert (=> b!4204918 m!4793015))

(declare-fun m!4793017 () Bool)

(assert (=> b!4204911 m!4793017))

(declare-fun m!4793019 () Bool)

(assert (=> b!4204911 m!4793019))

(declare-fun m!4793021 () Bool)

(assert (=> b!4204900 m!4793021))

(declare-fun m!4793023 () Bool)

(assert (=> b!4204910 m!4793023))

(declare-fun m!4793025 () Bool)

(assert (=> b!4204910 m!4793025))

(declare-fun m!4793027 () Bool)

(assert (=> b!4204904 m!4793027))

(declare-fun m!4793029 () Bool)

(assert (=> b!4204916 m!4793029))

(declare-fun m!4793031 () Bool)

(assert (=> b!4204916 m!4793031))

(declare-fun m!4793033 () Bool)

(assert (=> start!401750 m!4793033))

(declare-fun m!4793035 () Bool)

(assert (=> start!401750 m!4793035))

(declare-fun m!4793037 () Bool)

(assert (=> b!4204922 m!4793037))

(assert (=> b!4204922 m!4793037))

(declare-fun m!4793039 () Bool)

(assert (=> b!4204922 m!4793039))

(declare-fun m!4793041 () Bool)

(assert (=> b!4204901 m!4793041))

(declare-fun m!4793043 () Bool)

(assert (=> b!4204932 m!4793043))

(declare-fun m!4793045 () Bool)

(assert (=> b!4204902 m!4793045))

(declare-fun m!4793047 () Bool)

(assert (=> b!4204902 m!4793047))

(declare-fun m!4793049 () Bool)

(assert (=> b!4204902 m!4793049))

(declare-fun m!4793051 () Bool)

(assert (=> b!4204909 m!4793051))

(declare-fun m!4793053 () Bool)

(assert (=> b!4204920 m!4793053))

(declare-fun m!4793055 () Bool)

(assert (=> b!4204915 m!4793055))

(declare-fun m!4793057 () Bool)

(assert (=> b!4204931 m!4793057))

(declare-fun m!4793059 () Bool)

(assert (=> b!4204906 m!4793059))

(declare-fun m!4793061 () Bool)

(assert (=> b!4204926 m!4793061))

(check-sat (not b!4204913) (not b!4204924) (not b!4204926) b_and!330417 (not b_next!123537) (not b_next!123531) b_and!330411 (not b!4204900) (not b!4204906) b_and!330413 (not b!4204927) b_and!330405 (not b!4204921) (not b!4204910) b_and!330409 (not b!4204904) (not b!4204925) (not b!4204922) (not b_next!123543) (not b!4204903) (not b!4204901) (not b!4204914) (not b!4204911) (not b!4204932) b_and!330407 (not b_next!123541) b_and!330419 tp_is_empty!22229 b_and!330415 (not b!4204918) (not b!4204902) (not b!4204908) (not b!4204916) (not b!4204931) (not b_next!123545) (not b!4204912) (not b_next!123533) (not b_next!123539) (not b_next!123535) (not b!4204920) (not b!4204928) (not start!401750) (not b!4204909) (not b!4204915))
(check-sat b_and!330413 b_and!330405 b_and!330417 b_and!330409 (not b_next!123543) (not b_next!123537) (not b_next!123531) b_and!330415 b_and!330411 (not b_next!123545) (not b_next!123535) b_and!330407 (not b_next!123541) b_and!330419 (not b_next!123533) (not b_next!123539))
(get-model)

(declare-fun d!1239645 () Bool)

(assert (=> d!1239645 (= (isEmpty!27367 rules!3967) ((_ is Nil!46219) rules!3967))))

(assert (=> b!4204926 d!1239645))

(declare-fun b!4204947 () Bool)

(declare-fun e!2610268 () Bool)

(declare-fun inv!16 (TokenValue!7956) Bool)

(assert (=> b!4204947 (= e!2610268 (inv!16 (value!240720 t!8364)))))

(declare-fun b!4204948 () Bool)

(declare-fun e!2610267 () Bool)

(declare-fun inv!15 (TokenValue!7956) Bool)

(assert (=> b!4204948 (= e!2610267 (inv!15 (value!240720 t!8364)))))

(declare-fun d!1239647 () Bool)

(declare-fun c!716742 () Bool)

(assert (=> d!1239647 (= c!716742 ((_ is IntegerValue!23868) (value!240720 t!8364)))))

(assert (=> d!1239647 (= (inv!21 (value!240720 t!8364)) e!2610268)))

(declare-fun b!4204949 () Bool)

(declare-fun res!1726992 () Bool)

(assert (=> b!4204949 (=> res!1726992 e!2610267)))

(assert (=> b!4204949 (= res!1726992 (not ((_ is IntegerValue!23870) (value!240720 t!8364))))))

(declare-fun e!2610269 () Bool)

(assert (=> b!4204949 (= e!2610269 e!2610267)))

(declare-fun b!4204950 () Bool)

(assert (=> b!4204950 (= e!2610268 e!2610269)))

(declare-fun c!716743 () Bool)

(assert (=> b!4204950 (= c!716743 ((_ is IntegerValue!23869) (value!240720 t!8364)))))

(declare-fun b!4204951 () Bool)

(declare-fun inv!17 (TokenValue!7956) Bool)

(assert (=> b!4204951 (= e!2610269 (inv!17 (value!240720 t!8364)))))

(assert (= (and d!1239647 c!716742) b!4204947))

(assert (= (and d!1239647 (not c!716742)) b!4204950))

(assert (= (and b!4204950 c!716743) b!4204951))

(assert (= (and b!4204950 (not c!716743)) b!4204949))

(assert (= (and b!4204949 (not res!1726992)) b!4204948))

(declare-fun m!4793071 () Bool)

(assert (=> b!4204947 m!4793071))

(declare-fun m!4793073 () Bool)

(assert (=> b!4204948 m!4793073))

(declare-fun m!4793075 () Bool)

(assert (=> b!4204951 m!4793075))

(assert (=> b!4204915 d!1239647))

(declare-fun b!4204952 () Bool)

(declare-fun e!2610271 () Bool)

(assert (=> b!4204952 (= e!2610271 (inv!16 (value!240720 tBis!41)))))

(declare-fun b!4204953 () Bool)

(declare-fun e!2610270 () Bool)

(assert (=> b!4204953 (= e!2610270 (inv!15 (value!240720 tBis!41)))))

(declare-fun d!1239649 () Bool)

(declare-fun c!716744 () Bool)

(assert (=> d!1239649 (= c!716744 ((_ is IntegerValue!23868) (value!240720 tBis!41)))))

(assert (=> d!1239649 (= (inv!21 (value!240720 tBis!41)) e!2610271)))

(declare-fun b!4204954 () Bool)

(declare-fun res!1726993 () Bool)

(assert (=> b!4204954 (=> res!1726993 e!2610270)))

(assert (=> b!4204954 (= res!1726993 (not ((_ is IntegerValue!23870) (value!240720 tBis!41))))))

(declare-fun e!2610272 () Bool)

(assert (=> b!4204954 (= e!2610272 e!2610270)))

(declare-fun b!4204955 () Bool)

(assert (=> b!4204955 (= e!2610271 e!2610272)))

(declare-fun c!716745 () Bool)

(assert (=> b!4204955 (= c!716745 ((_ is IntegerValue!23869) (value!240720 tBis!41)))))

(declare-fun b!4204956 () Bool)

(assert (=> b!4204956 (= e!2610272 (inv!17 (value!240720 tBis!41)))))

(assert (= (and d!1239649 c!716744) b!4204952))

(assert (= (and d!1239649 (not c!716744)) b!4204955))

(assert (= (and b!4204955 c!716745) b!4204956))

(assert (= (and b!4204955 (not c!716745)) b!4204954))

(assert (= (and b!4204954 (not res!1726993)) b!4204953))

(declare-fun m!4793077 () Bool)

(assert (=> b!4204952 m!4793077))

(declare-fun m!4793079 () Bool)

(assert (=> b!4204953 m!4793079))

(declare-fun m!4793081 () Bool)

(assert (=> b!4204956 m!4793081))

(assert (=> b!4204904 d!1239649))

(declare-fun d!1239651 () Bool)

(declare-fun lt!1497481 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7224 (List!46343) (InoxSet Rule!15252))

(assert (=> d!1239651 (= lt!1497481 (select (content!7224 rules!3967) rBis!178))))

(declare-fun e!2610283 () Bool)

(assert (=> d!1239651 (= lt!1497481 e!2610283)))

(declare-fun res!1727012 () Bool)

(assert (=> d!1239651 (=> (not res!1727012) (not e!2610283))))

(assert (=> d!1239651 (= res!1727012 ((_ is Cons!46219) rules!3967))))

(assert (=> d!1239651 (= (contains!9543 rules!3967 rBis!178) lt!1497481)))

(declare-fun b!4204979 () Bool)

(declare-fun e!2610284 () Bool)

(assert (=> b!4204979 (= e!2610283 e!2610284)))

(declare-fun res!1727013 () Bool)

(assert (=> b!4204979 (=> res!1727013 e!2610284)))

(assert (=> b!4204979 (= res!1727013 (= (h!51639 rules!3967) rBis!178))))

(declare-fun b!4204980 () Bool)

(assert (=> b!4204980 (= e!2610284 (contains!9543 (t!347372 rules!3967) rBis!178))))

(assert (= (and d!1239651 res!1727012) b!4204979))

(assert (= (and b!4204979 (not res!1727013)) b!4204980))

(declare-fun m!4793083 () Bool)

(assert (=> d!1239651 m!4793083))

(declare-fun m!4793085 () Bool)

(assert (=> d!1239651 m!4793085))

(declare-fun m!4793087 () Bool)

(assert (=> b!4204980 m!4793087))

(assert (=> b!4204914 d!1239651))

(declare-fun b!4205067 () Bool)

(declare-fun res!1727080 () Bool)

(declare-fun e!2610331 () Bool)

(assert (=> b!4205067 (=> (not res!1727080) (not e!2610331))))

(declare-fun lt!1497523 () Option!9914)

(declare-fun matchR!6352 (Regex!12631 List!46342) Bool)

(declare-fun get!15031 (Option!9914) tuple2!43970)

(assert (=> b!4205067 (= res!1727080 (matchR!6352 (regex!7726 (rule!10828 (_1!25119 (get!15031 lt!1497523)))) (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497523))))))))

(declare-fun b!4205068 () Bool)

(assert (=> b!4205068 (= e!2610331 (contains!9543 rules!3967 (rule!10828 (_1!25119 (get!15031 lt!1497523)))))))

(declare-fun call!292774 () Option!9914)

(declare-fun bm!292769 () Bool)

(assert (=> bm!292769 (= call!292774 (maxPrefixOneRule!3316 thiss!26544 (h!51639 rules!3967) input!3517))))

(declare-fun b!4205069 () Bool)

(declare-fun e!2610330 () Option!9914)

(assert (=> b!4205069 (= e!2610330 call!292774)))

(declare-fun b!4205070 () Bool)

(declare-fun res!1727084 () Bool)

(assert (=> b!4205070 (=> (not res!1727084) (not e!2610331))))

(declare-fun apply!10673 (TokenValueInjection!15340 BalanceConc!27468) TokenValue!7956)

(declare-fun seqFromList!5733 (List!46342) BalanceConc!27468)

(assert (=> b!4205070 (= res!1727084 (= (value!240720 (_1!25119 (get!15031 lt!1497523))) (apply!10673 (transformation!7726 (rule!10828 (_1!25119 (get!15031 lt!1497523)))) (seqFromList!5733 (originalCharacters!8108 (_1!25119 (get!15031 lt!1497523)))))))))

(declare-fun b!4205071 () Bool)

(declare-fun res!1727086 () Bool)

(assert (=> b!4205071 (=> (not res!1727086) (not e!2610331))))

(assert (=> b!4205071 (= res!1727086 (= (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497523)))) (originalCharacters!8108 (_1!25119 (get!15031 lt!1497523)))))))

(declare-fun b!4205072 () Bool)

(declare-fun res!1727082 () Bool)

(assert (=> b!4205072 (=> (not res!1727082) (not e!2610331))))

(assert (=> b!4205072 (= res!1727082 (= (++!11800 (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497523)))) (_2!25119 (get!15031 lt!1497523))) input!3517))))

(declare-fun b!4205073 () Bool)

(declare-fun res!1727083 () Bool)

(assert (=> b!4205073 (=> (not res!1727083) (not e!2610331))))

(declare-fun size!33960 (List!46342) Int)

(assert (=> b!4205073 (= res!1727083 (< (size!33960 (_2!25119 (get!15031 lt!1497523))) (size!33960 input!3517)))))

(declare-fun b!4205074 () Bool)

(declare-fun e!2610332 () Bool)

(assert (=> b!4205074 (= e!2610332 e!2610331)))

(declare-fun res!1727081 () Bool)

(assert (=> b!4205074 (=> (not res!1727081) (not e!2610331))))

(assert (=> b!4205074 (= res!1727081 (isDefined!7374 lt!1497523))))

(declare-fun b!4205075 () Bool)

(declare-fun lt!1497524 () Option!9914)

(declare-fun lt!1497522 () Option!9914)

(assert (=> b!4205075 (= e!2610330 (ite (and ((_ is None!9913) lt!1497524) ((_ is None!9913) lt!1497522)) None!9913 (ite ((_ is None!9913) lt!1497522) lt!1497524 (ite ((_ is None!9913) lt!1497524) lt!1497522 (ite (>= (size!33957 (_1!25119 (v!40771 lt!1497524))) (size!33957 (_1!25119 (v!40771 lt!1497522)))) lt!1497524 lt!1497522)))))))

(assert (=> b!4205075 (= lt!1497524 call!292774)))

(assert (=> b!4205075 (= lt!1497522 (maxPrefix!4361 thiss!26544 (t!347372 rules!3967) input!3517))))

(declare-fun d!1239653 () Bool)

(assert (=> d!1239653 e!2610332))

(declare-fun res!1727085 () Bool)

(assert (=> d!1239653 (=> res!1727085 e!2610332)))

(assert (=> d!1239653 (= res!1727085 (isEmpty!27366 lt!1497523))))

(assert (=> d!1239653 (= lt!1497523 e!2610330)))

(declare-fun c!716758 () Bool)

(assert (=> d!1239653 (= c!716758 (and ((_ is Cons!46219) rules!3967) ((_ is Nil!46219) (t!347372 rules!3967))))))

(declare-fun lt!1497526 () Unit!65321)

(declare-fun lt!1497525 () Unit!65321)

(assert (=> d!1239653 (= lt!1497526 lt!1497525)))

(assert (=> d!1239653 (isPrefix!4585 input!3517 input!3517)))

(assert (=> d!1239653 (= lt!1497525 (lemmaIsPrefixRefl!3002 input!3517 input!3517))))

(declare-fun rulesValidInductive!2864 (LexerInterface!7321 List!46343) Bool)

(assert (=> d!1239653 (rulesValidInductive!2864 thiss!26544 rules!3967)))

(assert (=> d!1239653 (= (maxPrefix!4361 thiss!26544 rules!3967 input!3517) lt!1497523)))

(assert (= (and d!1239653 c!716758) b!4205069))

(assert (= (and d!1239653 (not c!716758)) b!4205075))

(assert (= (or b!4205069 b!4205075) bm!292769))

(assert (= (and d!1239653 (not res!1727085)) b!4205074))

(assert (= (and b!4205074 res!1727081) b!4205071))

(assert (= (and b!4205071 res!1727086) b!4205073))

(assert (= (and b!4205073 res!1727083) b!4205072))

(assert (= (and b!4205072 res!1727082) b!4205070))

(assert (= (and b!4205070 res!1727084) b!4205067))

(assert (= (and b!4205067 res!1727080) b!4205068))

(declare-fun m!4793187 () Bool)

(assert (=> b!4205068 m!4793187))

(declare-fun m!4793189 () Bool)

(assert (=> b!4205068 m!4793189))

(assert (=> b!4205067 m!4793187))

(declare-fun m!4793191 () Bool)

(assert (=> b!4205067 m!4793191))

(assert (=> b!4205067 m!4793191))

(declare-fun m!4793193 () Bool)

(assert (=> b!4205067 m!4793193))

(assert (=> b!4205067 m!4793193))

(declare-fun m!4793195 () Bool)

(assert (=> b!4205067 m!4793195))

(assert (=> b!4205072 m!4793187))

(assert (=> b!4205072 m!4793191))

(assert (=> b!4205072 m!4793191))

(assert (=> b!4205072 m!4793193))

(assert (=> b!4205072 m!4793193))

(declare-fun m!4793197 () Bool)

(assert (=> b!4205072 m!4793197))

(assert (=> b!4205070 m!4793187))

(declare-fun m!4793199 () Bool)

(assert (=> b!4205070 m!4793199))

(assert (=> b!4205070 m!4793199))

(declare-fun m!4793205 () Bool)

(assert (=> b!4205070 m!4793205))

(declare-fun m!4793207 () Bool)

(assert (=> d!1239653 m!4793207))

(assert (=> d!1239653 m!4793013))

(assert (=> d!1239653 m!4793015))

(declare-fun m!4793209 () Bool)

(assert (=> d!1239653 m!4793209))

(declare-fun m!4793211 () Bool)

(assert (=> b!4205074 m!4793211))

(assert (=> bm!292769 m!4793057))

(assert (=> b!4205073 m!4793187))

(declare-fun m!4793217 () Bool)

(assert (=> b!4205073 m!4793217))

(declare-fun m!4793219 () Bool)

(assert (=> b!4205073 m!4793219))

(assert (=> b!4205075 m!4793049))

(assert (=> b!4205071 m!4793187))

(assert (=> b!4205071 m!4793191))

(assert (=> b!4205071 m!4793191))

(assert (=> b!4205071 m!4793193))

(assert (=> b!4204903 d!1239653))

(declare-fun b!4205215 () Bool)

(declare-fun res!1727150 () Bool)

(declare-fun e!2610410 () Bool)

(assert (=> b!4205215 (=> (not res!1727150) (not e!2610410))))

(declare-fun lt!1497560 () Option!9914)

(assert (=> b!4205215 (= res!1727150 (< (size!33960 (_2!25119 (get!15031 lt!1497560))) (size!33960 input!3517)))))

(declare-fun b!4205216 () Bool)

(declare-fun e!2610408 () Option!9914)

(assert (=> b!4205216 (= e!2610408 None!9913)))

(declare-fun b!4205217 () Bool)

(assert (=> b!4205217 (= e!2610410 (= (size!33957 (_1!25119 (get!15031 lt!1497560))) (size!33960 (originalCharacters!8108 (_1!25119 (get!15031 lt!1497560))))))))

(declare-fun d!1239673 () Bool)

(declare-fun e!2610409 () Bool)

(assert (=> d!1239673 e!2610409))

(declare-fun res!1727148 () Bool)

(assert (=> d!1239673 (=> res!1727148 e!2610409)))

(assert (=> d!1239673 (= res!1727148 (isEmpty!27366 lt!1497560))))

(assert (=> d!1239673 (= lt!1497560 e!2610408)))

(declare-fun c!716771 () Bool)

(declare-datatypes ((tuple2!43974 0))(
  ( (tuple2!43975 (_1!25121 List!46342) (_2!25121 List!46342)) )
))
(declare-fun lt!1497561 () tuple2!43974)

(declare-fun isEmpty!27369 (List!46342) Bool)

(assert (=> d!1239673 (= c!716771 (isEmpty!27369 (_1!25121 lt!1497561)))))

(declare-fun findLongestMatch!1546 (Regex!12631 List!46342) tuple2!43974)

(assert (=> d!1239673 (= lt!1497561 (findLongestMatch!1546 (regex!7726 rBis!178) input!3517))))

(assert (=> d!1239673 (ruleValid!3438 thiss!26544 rBis!178)))

(assert (=> d!1239673 (= (maxPrefixOneRule!3316 thiss!26544 rBis!178 input!3517) lt!1497560)))

(declare-fun b!4205218 () Bool)

(declare-fun e!2610411 () Bool)

(declare-fun findLongestMatchInner!1633 (Regex!12631 List!46342 Int List!46342 List!46342 Int) tuple2!43974)

(assert (=> b!4205218 (= e!2610411 (matchR!6352 (regex!7726 rBis!178) (_1!25121 (findLongestMatchInner!1633 (regex!7726 rBis!178) Nil!46218 (size!33960 Nil!46218) input!3517 input!3517 (size!33960 input!3517)))))))

(declare-fun b!4205219 () Bool)

(declare-fun res!1727149 () Bool)

(assert (=> b!4205219 (=> (not res!1727149) (not e!2610410))))

(assert (=> b!4205219 (= res!1727149 (= (++!11800 (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497560)))) (_2!25119 (get!15031 lt!1497560))) input!3517))))

(declare-fun b!4205220 () Bool)

(declare-fun size!33961 (BalanceConc!27468) Int)

(assert (=> b!4205220 (= e!2610408 (Some!9913 (tuple2!43971 (Token!14155 (apply!10673 (transformation!7726 rBis!178) (seqFromList!5733 (_1!25121 lt!1497561))) rBis!178 (size!33961 (seqFromList!5733 (_1!25121 lt!1497561))) (_1!25121 lt!1497561)) (_2!25121 lt!1497561))))))

(declare-fun lt!1497558 () Unit!65321)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1606 (Regex!12631 List!46342) Unit!65321)

(assert (=> b!4205220 (= lt!1497558 (longestMatchIsAcceptedByMatchOrIsEmpty!1606 (regex!7726 rBis!178) input!3517))))

(declare-fun res!1727151 () Bool)

(assert (=> b!4205220 (= res!1727151 (isEmpty!27369 (_1!25121 (findLongestMatchInner!1633 (regex!7726 rBis!178) Nil!46218 (size!33960 Nil!46218) input!3517 input!3517 (size!33960 input!3517)))))))

(assert (=> b!4205220 (=> res!1727151 e!2610411)))

(assert (=> b!4205220 e!2610411))

(declare-fun lt!1497559 () Unit!65321)

(assert (=> b!4205220 (= lt!1497559 lt!1497558)))

(declare-fun lt!1497562 () Unit!65321)

(declare-fun lemmaSemiInverse!2474 (TokenValueInjection!15340 BalanceConc!27468) Unit!65321)

(assert (=> b!4205220 (= lt!1497562 (lemmaSemiInverse!2474 (transformation!7726 rBis!178) (seqFromList!5733 (_1!25121 lt!1497561))))))

(declare-fun b!4205221 () Bool)

(declare-fun res!1727153 () Bool)

(assert (=> b!4205221 (=> (not res!1727153) (not e!2610410))))

(assert (=> b!4205221 (= res!1727153 (= (value!240720 (_1!25119 (get!15031 lt!1497560))) (apply!10673 (transformation!7726 (rule!10828 (_1!25119 (get!15031 lt!1497560)))) (seqFromList!5733 (originalCharacters!8108 (_1!25119 (get!15031 lt!1497560)))))))))

(declare-fun b!4205222 () Bool)

(declare-fun res!1727154 () Bool)

(assert (=> b!4205222 (=> (not res!1727154) (not e!2610410))))

(assert (=> b!4205222 (= res!1727154 (= (rule!10828 (_1!25119 (get!15031 lt!1497560))) rBis!178))))

(declare-fun b!4205223 () Bool)

(assert (=> b!4205223 (= e!2610409 e!2610410)))

(declare-fun res!1727152 () Bool)

(assert (=> b!4205223 (=> (not res!1727152) (not e!2610410))))

(assert (=> b!4205223 (= res!1727152 (matchR!6352 (regex!7726 rBis!178) (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497560))))))))

(assert (= (and d!1239673 c!716771) b!4205216))

(assert (= (and d!1239673 (not c!716771)) b!4205220))

(assert (= (and b!4205220 (not res!1727151)) b!4205218))

(assert (= (and d!1239673 (not res!1727148)) b!4205223))

(assert (= (and b!4205223 res!1727152) b!4205219))

(assert (= (and b!4205219 res!1727149) b!4205215))

(assert (= (and b!4205215 res!1727150) b!4205222))

(assert (= (and b!4205222 res!1727154) b!4205221))

(assert (= (and b!4205221 res!1727153) b!4205217))

(declare-fun m!4793373 () Bool)

(assert (=> b!4205222 m!4793373))

(assert (=> b!4205217 m!4793373))

(declare-fun m!4793375 () Bool)

(assert (=> b!4205217 m!4793375))

(assert (=> b!4205221 m!4793373))

(declare-fun m!4793377 () Bool)

(assert (=> b!4205221 m!4793377))

(assert (=> b!4205221 m!4793377))

(declare-fun m!4793379 () Bool)

(assert (=> b!4205221 m!4793379))

(assert (=> b!4205219 m!4793373))

(declare-fun m!4793381 () Bool)

(assert (=> b!4205219 m!4793381))

(assert (=> b!4205219 m!4793381))

(declare-fun m!4793383 () Bool)

(assert (=> b!4205219 m!4793383))

(assert (=> b!4205219 m!4793383))

(declare-fun m!4793385 () Bool)

(assert (=> b!4205219 m!4793385))

(declare-fun m!4793387 () Bool)

(assert (=> b!4205220 m!4793387))

(declare-fun m!4793389 () Bool)

(assert (=> b!4205220 m!4793389))

(assert (=> b!4205220 m!4793219))

(declare-fun m!4793391 () Bool)

(assert (=> b!4205220 m!4793391))

(assert (=> b!4205220 m!4793219))

(declare-fun m!4793393 () Bool)

(assert (=> b!4205220 m!4793393))

(assert (=> b!4205220 m!4793387))

(declare-fun m!4793395 () Bool)

(assert (=> b!4205220 m!4793395))

(assert (=> b!4205220 m!4793387))

(declare-fun m!4793397 () Bool)

(assert (=> b!4205220 m!4793397))

(assert (=> b!4205220 m!4793391))

(assert (=> b!4205220 m!4793387))

(declare-fun m!4793399 () Bool)

(assert (=> b!4205220 m!4793399))

(declare-fun m!4793401 () Bool)

(assert (=> b!4205220 m!4793401))

(assert (=> b!4205218 m!4793391))

(assert (=> b!4205218 m!4793219))

(assert (=> b!4205218 m!4793391))

(assert (=> b!4205218 m!4793219))

(assert (=> b!4205218 m!4793393))

(declare-fun m!4793403 () Bool)

(assert (=> b!4205218 m!4793403))

(declare-fun m!4793405 () Bool)

(assert (=> d!1239673 m!4793405))

(declare-fun m!4793407 () Bool)

(assert (=> d!1239673 m!4793407))

(declare-fun m!4793409 () Bool)

(assert (=> d!1239673 m!4793409))

(assert (=> d!1239673 m!4793053))

(assert (=> b!4205223 m!4793373))

(assert (=> b!4205223 m!4793381))

(assert (=> b!4205223 m!4793381))

(assert (=> b!4205223 m!4793383))

(assert (=> b!4205223 m!4793383))

(declare-fun m!4793411 () Bool)

(assert (=> b!4205223 m!4793411))

(assert (=> b!4205215 m!4793373))

(declare-fun m!4793413 () Bool)

(assert (=> b!4205215 m!4793413))

(assert (=> b!4205215 m!4793219))

(assert (=> b!4204918 d!1239673))

(declare-fun b!4205234 () Bool)

(declare-fun e!2610419 () Bool)

(declare-fun tail!6769 (List!46342) List!46342)

(assert (=> b!4205234 (= e!2610419 (isPrefix!4585 (tail!6769 input!3517) (tail!6769 input!3517)))))

(declare-fun d!1239709 () Bool)

(declare-fun e!2610418 () Bool)

(assert (=> d!1239709 e!2610418))

(declare-fun res!1727164 () Bool)

(assert (=> d!1239709 (=> res!1727164 e!2610418)))

(declare-fun lt!1497565 () Bool)

(assert (=> d!1239709 (= res!1727164 (not lt!1497565))))

(declare-fun e!2610420 () Bool)

(assert (=> d!1239709 (= lt!1497565 e!2610420)))

(declare-fun res!1727165 () Bool)

(assert (=> d!1239709 (=> res!1727165 e!2610420)))

(assert (=> d!1239709 (= res!1727165 ((_ is Nil!46218) input!3517))))

(assert (=> d!1239709 (= (isPrefix!4585 input!3517 input!3517) lt!1497565)))

(declare-fun b!4205232 () Bool)

(assert (=> b!4205232 (= e!2610420 e!2610419)))

(declare-fun res!1727166 () Bool)

(assert (=> b!4205232 (=> (not res!1727166) (not e!2610419))))

(assert (=> b!4205232 (= res!1727166 (not ((_ is Nil!46218) input!3517)))))

(declare-fun b!4205233 () Bool)

(declare-fun res!1727163 () Bool)

(assert (=> b!4205233 (=> (not res!1727163) (not e!2610419))))

(declare-fun head!8922 (List!46342) C!25456)

(assert (=> b!4205233 (= res!1727163 (= (head!8922 input!3517) (head!8922 input!3517)))))

(declare-fun b!4205235 () Bool)

(assert (=> b!4205235 (= e!2610418 (>= (size!33960 input!3517) (size!33960 input!3517)))))

(assert (= (and d!1239709 (not res!1727165)) b!4205232))

(assert (= (and b!4205232 res!1727166) b!4205233))

(assert (= (and b!4205233 res!1727163) b!4205234))

(assert (= (and d!1239709 (not res!1727164)) b!4205235))

(declare-fun m!4793415 () Bool)

(assert (=> b!4205234 m!4793415))

(assert (=> b!4205234 m!4793415))

(assert (=> b!4205234 m!4793415))

(assert (=> b!4205234 m!4793415))

(declare-fun m!4793417 () Bool)

(assert (=> b!4205234 m!4793417))

(declare-fun m!4793419 () Bool)

(assert (=> b!4205233 m!4793419))

(assert (=> b!4205233 m!4793419))

(assert (=> b!4205235 m!4793219))

(assert (=> b!4205235 m!4793219))

(assert (=> b!4204918 d!1239709))

(declare-fun d!1239711 () Bool)

(assert (=> d!1239711 (isPrefix!4585 input!3517 input!3517)))

(declare-fun lt!1497568 () Unit!65321)

(declare-fun choose!25777 (List!46342 List!46342) Unit!65321)

(assert (=> d!1239711 (= lt!1497568 (choose!25777 input!3517 input!3517))))

(assert (=> d!1239711 (= (lemmaIsPrefixRefl!3002 input!3517 input!3517) lt!1497568)))

(declare-fun bs!597198 () Bool)

(assert (= bs!597198 d!1239711))

(assert (=> bs!597198 m!4793013))

(declare-fun m!4793421 () Bool)

(assert (=> bs!597198 m!4793421))

(assert (=> b!4204918 d!1239711))

(declare-fun d!1239713 () Bool)

(assert (=> d!1239713 (= (inv!60796 (tag!8590 (rule!10828 t!8364))) (= (mod (str.len (value!240719 (tag!8590 (rule!10828 t!8364)))) 2) 0))))

(assert (=> b!4204928 d!1239713))

(declare-fun d!1239715 () Bool)

(declare-fun res!1727169 () Bool)

(declare-fun e!2610423 () Bool)

(assert (=> d!1239715 (=> (not res!1727169) (not e!2610423))))

(declare-fun semiInverseModEq!3354 (Int Int) Bool)

(assert (=> d!1239715 (= res!1727169 (semiInverseModEq!3354 (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (toValue!10438 (transformation!7726 (rule!10828 t!8364)))))))

(assert (=> d!1239715 (= (inv!60799 (transformation!7726 (rule!10828 t!8364))) e!2610423)))

(declare-fun b!4205238 () Bool)

(declare-fun equivClasses!3253 (Int Int) Bool)

(assert (=> b!4205238 (= e!2610423 (equivClasses!3253 (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (toValue!10438 (transformation!7726 (rule!10828 t!8364)))))))

(assert (= (and d!1239715 res!1727169) b!4205238))

(declare-fun m!4793423 () Bool)

(assert (=> d!1239715 m!4793423))

(declare-fun m!4793425 () Bool)

(assert (=> b!4205238 m!4793425))

(assert (=> b!4204928 d!1239715))

(declare-fun d!1239717 () Bool)

(declare-fun res!1727174 () Bool)

(declare-fun e!2610426 () Bool)

(assert (=> d!1239717 (=> (not res!1727174) (not e!2610426))))

(assert (=> d!1239717 (= res!1727174 (not (isEmpty!27369 (originalCharacters!8108 tBis!41))))))

(assert (=> d!1239717 (= (inv!60800 tBis!41) e!2610426)))

(declare-fun b!4205243 () Bool)

(declare-fun res!1727175 () Bool)

(assert (=> b!4205243 (=> (not res!1727175) (not e!2610426))))

(declare-fun dynLambda!19938 (Int TokenValue!7956) BalanceConc!27468)

(assert (=> b!4205243 (= res!1727175 (= (originalCharacters!8108 tBis!41) (list!16703 (dynLambda!19938 (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (value!240720 tBis!41)))))))

(declare-fun b!4205244 () Bool)

(assert (=> b!4205244 (= e!2610426 (= (size!33957 tBis!41) (size!33960 (originalCharacters!8108 tBis!41))))))

(assert (= (and d!1239717 res!1727174) b!4205243))

(assert (= (and b!4205243 res!1727175) b!4205244))

(declare-fun b_lambda!123831 () Bool)

(assert (=> (not b_lambda!123831) (not b!4205243)))

(declare-fun t!347394 () Bool)

(declare-fun tb!252255 () Bool)

(assert (=> (and b!4204929 (= (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41)))) t!347394) tb!252255))

(declare-fun b!4205249 () Bool)

(declare-fun e!2610429 () Bool)

(declare-fun tp!1285190 () Bool)

(declare-fun inv!60803 (Conc!13937) Bool)

(assert (=> b!4205249 (= e!2610429 (and (inv!60803 (c!716737 (dynLambda!19938 (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (value!240720 tBis!41)))) tp!1285190))))

(declare-fun result!307448 () Bool)

(declare-fun inv!60804 (BalanceConc!27468) Bool)

(assert (=> tb!252255 (= result!307448 (and (inv!60804 (dynLambda!19938 (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (value!240720 tBis!41))) e!2610429))))

(assert (= tb!252255 b!4205249))

(declare-fun m!4793427 () Bool)

(assert (=> b!4205249 m!4793427))

(declare-fun m!4793429 () Bool)

(assert (=> tb!252255 m!4793429))

(assert (=> b!4205243 t!347394))

(declare-fun b_and!330449 () Bool)

(assert (= b_and!330407 (and (=> t!347394 result!307448) b_and!330449)))

(declare-fun t!347396 () Bool)

(declare-fun tb!252257 () Bool)

(assert (=> (and b!4204905 (= (toChars!10297 (transformation!7726 rBis!178)) (toChars!10297 (transformation!7726 (rule!10828 tBis!41)))) t!347396) tb!252257))

(declare-fun result!307452 () Bool)

(assert (= result!307452 result!307448))

(assert (=> b!4205243 t!347396))

(declare-fun b_and!330451 () Bool)

(assert (= b_and!330411 (and (=> t!347396 result!307452) b_and!330451)))

(declare-fun tb!252259 () Bool)

(declare-fun t!347398 () Bool)

(assert (=> (and b!4204917 (= (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41)))) t!347398) tb!252259))

(declare-fun result!307454 () Bool)

(assert (= result!307454 result!307448))

(assert (=> b!4205243 t!347398))

(declare-fun b_and!330453 () Bool)

(assert (= b_and!330415 (and (=> t!347398 result!307454) b_and!330453)))

(declare-fun tb!252261 () Bool)

(declare-fun t!347400 () Bool)

(assert (=> (and b!4204919 (= (toChars!10297 (transformation!7726 (h!51639 rules!3967))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41)))) t!347400) tb!252261))

(declare-fun result!307456 () Bool)

(assert (= result!307456 result!307448))

(assert (=> b!4205243 t!347400))

(declare-fun b_and!330455 () Bool)

(assert (= b_and!330419 (and (=> t!347400 result!307456) b_and!330455)))

(declare-fun m!4793431 () Bool)

(assert (=> d!1239717 m!4793431))

(declare-fun m!4793433 () Bool)

(assert (=> b!4205243 m!4793433))

(assert (=> b!4205243 m!4793433))

(declare-fun m!4793435 () Bool)

(assert (=> b!4205243 m!4793435))

(declare-fun m!4793437 () Bool)

(assert (=> b!4205244 m!4793437))

(assert (=> start!401750 d!1239717))

(declare-fun d!1239719 () Bool)

(declare-fun res!1727176 () Bool)

(declare-fun e!2610430 () Bool)

(assert (=> d!1239719 (=> (not res!1727176) (not e!2610430))))

(assert (=> d!1239719 (= res!1727176 (not (isEmpty!27369 (originalCharacters!8108 t!8364))))))

(assert (=> d!1239719 (= (inv!60800 t!8364) e!2610430)))

(declare-fun b!4205250 () Bool)

(declare-fun res!1727177 () Bool)

(assert (=> b!4205250 (=> (not res!1727177) (not e!2610430))))

(assert (=> b!4205250 (= res!1727177 (= (originalCharacters!8108 t!8364) (list!16703 (dynLambda!19938 (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (value!240720 t!8364)))))))

(declare-fun b!4205251 () Bool)

(assert (=> b!4205251 (= e!2610430 (= (size!33957 t!8364) (size!33960 (originalCharacters!8108 t!8364))))))

(assert (= (and d!1239719 res!1727176) b!4205250))

(assert (= (and b!4205250 res!1727177) b!4205251))

(declare-fun b_lambda!123833 () Bool)

(assert (=> (not b_lambda!123833) (not b!4205250)))

(declare-fun t!347402 () Bool)

(declare-fun tb!252263 () Bool)

(assert (=> (and b!4204929 (= (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (toChars!10297 (transformation!7726 (rule!10828 t!8364)))) t!347402) tb!252263))

(declare-fun b!4205252 () Bool)

(declare-fun e!2610431 () Bool)

(declare-fun tp!1285191 () Bool)

(assert (=> b!4205252 (= e!2610431 (and (inv!60803 (c!716737 (dynLambda!19938 (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (value!240720 t!8364)))) tp!1285191))))

(declare-fun result!307458 () Bool)

(assert (=> tb!252263 (= result!307458 (and (inv!60804 (dynLambda!19938 (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (value!240720 t!8364))) e!2610431))))

(assert (= tb!252263 b!4205252))

(declare-fun m!4793439 () Bool)

(assert (=> b!4205252 m!4793439))

(declare-fun m!4793441 () Bool)

(assert (=> tb!252263 m!4793441))

(assert (=> b!4205250 t!347402))

(declare-fun b_and!330457 () Bool)

(assert (= b_and!330449 (and (=> t!347402 result!307458) b_and!330457)))

(declare-fun t!347404 () Bool)

(declare-fun tb!252265 () Bool)

(assert (=> (and b!4204905 (= (toChars!10297 (transformation!7726 rBis!178)) (toChars!10297 (transformation!7726 (rule!10828 t!8364)))) t!347404) tb!252265))

(declare-fun result!307460 () Bool)

(assert (= result!307460 result!307458))

(assert (=> b!4205250 t!347404))

(declare-fun b_and!330459 () Bool)

(assert (= b_and!330451 (and (=> t!347404 result!307460) b_and!330459)))

(declare-fun t!347406 () Bool)

(declare-fun tb!252267 () Bool)

(assert (=> (and b!4204917 (= (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (toChars!10297 (transformation!7726 (rule!10828 t!8364)))) t!347406) tb!252267))

(declare-fun result!307462 () Bool)

(assert (= result!307462 result!307458))

(assert (=> b!4205250 t!347406))

(declare-fun b_and!330461 () Bool)

(assert (= b_and!330453 (and (=> t!347406 result!307462) b_and!330461)))

(declare-fun t!347408 () Bool)

(declare-fun tb!252269 () Bool)

(assert (=> (and b!4204919 (= (toChars!10297 (transformation!7726 (h!51639 rules!3967))) (toChars!10297 (transformation!7726 (rule!10828 t!8364)))) t!347408) tb!252269))

(declare-fun result!307464 () Bool)

(assert (= result!307464 result!307458))

(assert (=> b!4205250 t!347408))

(declare-fun b_and!330463 () Bool)

(assert (= b_and!330455 (and (=> t!347408 result!307464) b_and!330463)))

(declare-fun m!4793443 () Bool)

(assert (=> d!1239719 m!4793443))

(declare-fun m!4793445 () Bool)

(assert (=> b!4205250 m!4793445))

(assert (=> b!4205250 m!4793445))

(declare-fun m!4793447 () Bool)

(assert (=> b!4205250 m!4793447))

(declare-fun m!4793449 () Bool)

(assert (=> b!4205251 m!4793449))

(assert (=> start!401750 d!1239719))

(declare-fun b!4205262 () Bool)

(declare-fun e!2610436 () List!46342)

(assert (=> b!4205262 (= e!2610436 (Cons!46218 (h!51638 p!3001) (++!11800 (t!347371 p!3001) suffix!1557)))))

(declare-fun e!2610437 () Bool)

(declare-fun lt!1497571 () List!46342)

(declare-fun b!4205264 () Bool)

(assert (=> b!4205264 (= e!2610437 (or (not (= suffix!1557 Nil!46218)) (= lt!1497571 p!3001)))))

(declare-fun b!4205263 () Bool)

(declare-fun res!1727183 () Bool)

(assert (=> b!4205263 (=> (not res!1727183) (not e!2610437))))

(assert (=> b!4205263 (= res!1727183 (= (size!33960 lt!1497571) (+ (size!33960 p!3001) (size!33960 suffix!1557))))))

(declare-fun b!4205261 () Bool)

(assert (=> b!4205261 (= e!2610436 suffix!1557)))

(declare-fun d!1239721 () Bool)

(assert (=> d!1239721 e!2610437))

(declare-fun res!1727182 () Bool)

(assert (=> d!1239721 (=> (not res!1727182) (not e!2610437))))

(declare-fun content!7225 (List!46342) (InoxSet C!25456))

(assert (=> d!1239721 (= res!1727182 (= (content!7225 lt!1497571) ((_ map or) (content!7225 p!3001) (content!7225 suffix!1557))))))

(assert (=> d!1239721 (= lt!1497571 e!2610436)))

(declare-fun c!716774 () Bool)

(assert (=> d!1239721 (= c!716774 ((_ is Nil!46218) p!3001))))

(assert (=> d!1239721 (= (++!11800 p!3001 suffix!1557) lt!1497571)))

(assert (= (and d!1239721 c!716774) b!4205261))

(assert (= (and d!1239721 (not c!716774)) b!4205262))

(assert (= (and d!1239721 res!1727182) b!4205263))

(assert (= (and b!4205263 res!1727183) b!4205264))

(declare-fun m!4793451 () Bool)

(assert (=> b!4205262 m!4793451))

(declare-fun m!4793453 () Bool)

(assert (=> b!4205263 m!4793453))

(declare-fun m!4793455 () Bool)

(assert (=> b!4205263 m!4793455))

(declare-fun m!4793457 () Bool)

(assert (=> b!4205263 m!4793457))

(declare-fun m!4793459 () Bool)

(assert (=> d!1239721 m!4793459))

(declare-fun m!4793461 () Bool)

(assert (=> d!1239721 m!4793461))

(declare-fun m!4793463 () Bool)

(assert (=> d!1239721 m!4793463))

(assert (=> b!4204906 d!1239721))

(declare-fun d!1239723 () Bool)

(assert (=> d!1239723 (= (inv!60796 (tag!8590 (rule!10828 tBis!41))) (= (mod (str.len (value!240719 (tag!8590 (rule!10828 tBis!41)))) 2) 0))))

(assert (=> b!4204916 d!1239723))

(declare-fun d!1239725 () Bool)

(declare-fun res!1727184 () Bool)

(declare-fun e!2610438 () Bool)

(assert (=> d!1239725 (=> (not res!1727184) (not e!2610438))))

(assert (=> d!1239725 (= res!1727184 (semiInverseModEq!3354 (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (toValue!10438 (transformation!7726 (rule!10828 tBis!41)))))))

(assert (=> d!1239725 (= (inv!60799 (transformation!7726 (rule!10828 tBis!41))) e!2610438)))

(declare-fun b!4205265 () Bool)

(assert (=> b!4205265 (= e!2610438 (equivClasses!3253 (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (toValue!10438 (transformation!7726 (rule!10828 tBis!41)))))))

(assert (= (and d!1239725 res!1727184) b!4205265))

(declare-fun m!4793465 () Bool)

(assert (=> d!1239725 m!4793465))

(declare-fun m!4793467 () Bool)

(assert (=> b!4205265 m!4793467))

(assert (=> b!4204916 d!1239725))

(declare-fun d!1239727 () Bool)

(assert (=> d!1239727 (= (inv!60796 (tag!8590 (h!51639 rules!3967))) (= (mod (str.len (value!240719 (tag!8590 (h!51639 rules!3967)))) 2) 0))))

(assert (=> b!4204910 d!1239727))

(declare-fun d!1239729 () Bool)

(declare-fun res!1727185 () Bool)

(declare-fun e!2610439 () Bool)

(assert (=> d!1239729 (=> (not res!1727185) (not e!2610439))))

(assert (=> d!1239729 (= res!1727185 (semiInverseModEq!3354 (toChars!10297 (transformation!7726 (h!51639 rules!3967))) (toValue!10438 (transformation!7726 (h!51639 rules!3967)))))))

(assert (=> d!1239729 (= (inv!60799 (transformation!7726 (h!51639 rules!3967))) e!2610439)))

(declare-fun b!4205266 () Bool)

(assert (=> b!4205266 (= e!2610439 (equivClasses!3253 (toChars!10297 (transformation!7726 (h!51639 rules!3967))) (toValue!10438 (transformation!7726 (h!51639 rules!3967)))))))

(assert (= (and d!1239729 res!1727185) b!4205266))

(declare-fun m!4793469 () Bool)

(assert (=> d!1239729 m!4793469))

(declare-fun m!4793471 () Bool)

(assert (=> b!4205266 m!4793471))

(assert (=> b!4204910 d!1239729))

(declare-fun b!4205267 () Bool)

(declare-fun res!1727188 () Bool)

(declare-fun e!2610442 () Bool)

(assert (=> b!4205267 (=> (not res!1727188) (not e!2610442))))

(declare-fun lt!1497574 () Option!9914)

(assert (=> b!4205267 (= res!1727188 (< (size!33960 (_2!25119 (get!15031 lt!1497574))) (size!33960 input!3517)))))

(declare-fun b!4205268 () Bool)

(declare-fun e!2610440 () Option!9914)

(assert (=> b!4205268 (= e!2610440 None!9913)))

(declare-fun b!4205269 () Bool)

(assert (=> b!4205269 (= e!2610442 (= (size!33957 (_1!25119 (get!15031 lt!1497574))) (size!33960 (originalCharacters!8108 (_1!25119 (get!15031 lt!1497574))))))))

(declare-fun d!1239731 () Bool)

(declare-fun e!2610441 () Bool)

(assert (=> d!1239731 e!2610441))

(declare-fun res!1727186 () Bool)

(assert (=> d!1239731 (=> res!1727186 e!2610441)))

(assert (=> d!1239731 (= res!1727186 (isEmpty!27366 lt!1497574))))

(assert (=> d!1239731 (= lt!1497574 e!2610440)))

(declare-fun c!716775 () Bool)

(declare-fun lt!1497575 () tuple2!43974)

(assert (=> d!1239731 (= c!716775 (isEmpty!27369 (_1!25121 lt!1497575)))))

(assert (=> d!1239731 (= lt!1497575 (findLongestMatch!1546 (regex!7726 (h!51639 rules!3967)) input!3517))))

(assert (=> d!1239731 (ruleValid!3438 thiss!26544 (h!51639 rules!3967))))

(assert (=> d!1239731 (= (maxPrefixOneRule!3316 thiss!26544 (h!51639 rules!3967) input!3517) lt!1497574)))

(declare-fun b!4205270 () Bool)

(declare-fun e!2610443 () Bool)

(assert (=> b!4205270 (= e!2610443 (matchR!6352 (regex!7726 (h!51639 rules!3967)) (_1!25121 (findLongestMatchInner!1633 (regex!7726 (h!51639 rules!3967)) Nil!46218 (size!33960 Nil!46218) input!3517 input!3517 (size!33960 input!3517)))))))

(declare-fun b!4205271 () Bool)

(declare-fun res!1727187 () Bool)

(assert (=> b!4205271 (=> (not res!1727187) (not e!2610442))))

(assert (=> b!4205271 (= res!1727187 (= (++!11800 (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497574)))) (_2!25119 (get!15031 lt!1497574))) input!3517))))

(declare-fun b!4205272 () Bool)

(assert (=> b!4205272 (= e!2610440 (Some!9913 (tuple2!43971 (Token!14155 (apply!10673 (transformation!7726 (h!51639 rules!3967)) (seqFromList!5733 (_1!25121 lt!1497575))) (h!51639 rules!3967) (size!33961 (seqFromList!5733 (_1!25121 lt!1497575))) (_1!25121 lt!1497575)) (_2!25121 lt!1497575))))))

(declare-fun lt!1497572 () Unit!65321)

(assert (=> b!4205272 (= lt!1497572 (longestMatchIsAcceptedByMatchOrIsEmpty!1606 (regex!7726 (h!51639 rules!3967)) input!3517))))

(declare-fun res!1727189 () Bool)

(assert (=> b!4205272 (= res!1727189 (isEmpty!27369 (_1!25121 (findLongestMatchInner!1633 (regex!7726 (h!51639 rules!3967)) Nil!46218 (size!33960 Nil!46218) input!3517 input!3517 (size!33960 input!3517)))))))

(assert (=> b!4205272 (=> res!1727189 e!2610443)))

(assert (=> b!4205272 e!2610443))

(declare-fun lt!1497573 () Unit!65321)

(assert (=> b!4205272 (= lt!1497573 lt!1497572)))

(declare-fun lt!1497576 () Unit!65321)

(assert (=> b!4205272 (= lt!1497576 (lemmaSemiInverse!2474 (transformation!7726 (h!51639 rules!3967)) (seqFromList!5733 (_1!25121 lt!1497575))))))

(declare-fun b!4205273 () Bool)

(declare-fun res!1727191 () Bool)

(assert (=> b!4205273 (=> (not res!1727191) (not e!2610442))))

(assert (=> b!4205273 (= res!1727191 (= (value!240720 (_1!25119 (get!15031 lt!1497574))) (apply!10673 (transformation!7726 (rule!10828 (_1!25119 (get!15031 lt!1497574)))) (seqFromList!5733 (originalCharacters!8108 (_1!25119 (get!15031 lt!1497574)))))))))

(declare-fun b!4205274 () Bool)

(declare-fun res!1727192 () Bool)

(assert (=> b!4205274 (=> (not res!1727192) (not e!2610442))))

(assert (=> b!4205274 (= res!1727192 (= (rule!10828 (_1!25119 (get!15031 lt!1497574))) (h!51639 rules!3967)))))

(declare-fun b!4205275 () Bool)

(assert (=> b!4205275 (= e!2610441 e!2610442)))

(declare-fun res!1727190 () Bool)

(assert (=> b!4205275 (=> (not res!1727190) (not e!2610442))))

(assert (=> b!4205275 (= res!1727190 (matchR!6352 (regex!7726 (h!51639 rules!3967)) (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497574))))))))

(assert (= (and d!1239731 c!716775) b!4205268))

(assert (= (and d!1239731 (not c!716775)) b!4205272))

(assert (= (and b!4205272 (not res!1727189)) b!4205270))

(assert (= (and d!1239731 (not res!1727186)) b!4205275))

(assert (= (and b!4205275 res!1727190) b!4205271))

(assert (= (and b!4205271 res!1727187) b!4205267))

(assert (= (and b!4205267 res!1727188) b!4205274))

(assert (= (and b!4205274 res!1727192) b!4205273))

(assert (= (and b!4205273 res!1727191) b!4205269))

(declare-fun m!4793473 () Bool)

(assert (=> b!4205274 m!4793473))

(assert (=> b!4205269 m!4793473))

(declare-fun m!4793475 () Bool)

(assert (=> b!4205269 m!4793475))

(assert (=> b!4205273 m!4793473))

(declare-fun m!4793477 () Bool)

(assert (=> b!4205273 m!4793477))

(assert (=> b!4205273 m!4793477))

(declare-fun m!4793479 () Bool)

(assert (=> b!4205273 m!4793479))

(assert (=> b!4205271 m!4793473))

(declare-fun m!4793481 () Bool)

(assert (=> b!4205271 m!4793481))

(assert (=> b!4205271 m!4793481))

(declare-fun m!4793483 () Bool)

(assert (=> b!4205271 m!4793483))

(assert (=> b!4205271 m!4793483))

(declare-fun m!4793485 () Bool)

(assert (=> b!4205271 m!4793485))

(declare-fun m!4793487 () Bool)

(assert (=> b!4205272 m!4793487))

(declare-fun m!4793489 () Bool)

(assert (=> b!4205272 m!4793489))

(assert (=> b!4205272 m!4793219))

(assert (=> b!4205272 m!4793391))

(assert (=> b!4205272 m!4793219))

(declare-fun m!4793491 () Bool)

(assert (=> b!4205272 m!4793491))

(assert (=> b!4205272 m!4793487))

(declare-fun m!4793493 () Bool)

(assert (=> b!4205272 m!4793493))

(assert (=> b!4205272 m!4793487))

(declare-fun m!4793495 () Bool)

(assert (=> b!4205272 m!4793495))

(assert (=> b!4205272 m!4793391))

(assert (=> b!4205272 m!4793487))

(declare-fun m!4793497 () Bool)

(assert (=> b!4205272 m!4793497))

(declare-fun m!4793499 () Bool)

(assert (=> b!4205272 m!4793499))

(assert (=> b!4205270 m!4793391))

(assert (=> b!4205270 m!4793219))

(assert (=> b!4205270 m!4793391))

(assert (=> b!4205270 m!4793219))

(assert (=> b!4205270 m!4793491))

(declare-fun m!4793501 () Bool)

(assert (=> b!4205270 m!4793501))

(declare-fun m!4793503 () Bool)

(assert (=> d!1239731 m!4793503))

(declare-fun m!4793505 () Bool)

(assert (=> d!1239731 m!4793505))

(declare-fun m!4793507 () Bool)

(assert (=> d!1239731 m!4793507))

(declare-fun m!4793509 () Bool)

(assert (=> d!1239731 m!4793509))

(assert (=> b!4205275 m!4793473))

(assert (=> b!4205275 m!4793481))

(assert (=> b!4205275 m!4793481))

(assert (=> b!4205275 m!4793483))

(assert (=> b!4205275 m!4793483))

(declare-fun m!4793511 () Bool)

(assert (=> b!4205275 m!4793511))

(assert (=> b!4205267 m!4793473))

(declare-fun m!4793513 () Bool)

(assert (=> b!4205267 m!4793513))

(assert (=> b!4205267 m!4793219))

(assert (=> b!4204931 d!1239731))

(declare-fun d!1239733 () Bool)

(declare-fun res!1727197 () Bool)

(declare-fun e!2610446 () Bool)

(assert (=> d!1239733 (=> (not res!1727197) (not e!2610446))))

(declare-fun validRegex!5732 (Regex!12631) Bool)

(assert (=> d!1239733 (= res!1727197 (validRegex!5732 (regex!7726 rBis!178)))))

(assert (=> d!1239733 (= (ruleValid!3438 thiss!26544 rBis!178) e!2610446)))

(declare-fun b!4205280 () Bool)

(declare-fun res!1727198 () Bool)

(assert (=> b!4205280 (=> (not res!1727198) (not e!2610446))))

(declare-fun nullable!4445 (Regex!12631) Bool)

(assert (=> b!4205280 (= res!1727198 (not (nullable!4445 (regex!7726 rBis!178))))))

(declare-fun b!4205281 () Bool)

(assert (=> b!4205281 (= e!2610446 (not (= (tag!8590 rBis!178) (String!53651 ""))))))

(assert (= (and d!1239733 res!1727197) b!4205280))

(assert (= (and b!4205280 res!1727198) b!4205281))

(declare-fun m!4793515 () Bool)

(assert (=> d!1239733 m!4793515))

(declare-fun m!4793517 () Bool)

(assert (=> b!4205280 m!4793517))

(assert (=> b!4204920 d!1239733))

(declare-fun d!1239735 () Bool)

(assert (=> d!1239735 (isEmpty!27366 (maxPrefixOneRule!3316 thiss!26544 rBis!178 input!3517))))

(declare-fun lt!1497579 () Unit!65321)

(declare-fun choose!25778 (LexerInterface!7321 Rule!15252 List!46343 List!46342) Unit!65321)

(assert (=> d!1239735 (= lt!1497579 (choose!25778 thiss!26544 rBis!178 (t!347372 rules!3967) input!3517))))

(assert (=> d!1239735 (not (isEmpty!27367 (t!347372 rules!3967)))))

(assert (=> d!1239735 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!604 thiss!26544 rBis!178 (t!347372 rules!3967) input!3517) lt!1497579)))

(declare-fun bs!597199 () Bool)

(assert (= bs!597199 d!1239735))

(assert (=> bs!597199 m!4793011))

(assert (=> bs!597199 m!4793011))

(declare-fun m!4793519 () Bool)

(assert (=> bs!597199 m!4793519))

(declare-fun m!4793521 () Bool)

(assert (=> bs!597199 m!4793521))

(declare-fun m!4793523 () Bool)

(assert (=> bs!597199 m!4793523))

(assert (=> b!4204909 d!1239735))

(declare-fun b!4205284 () Bool)

(declare-fun e!2610448 () Bool)

(assert (=> b!4205284 (= e!2610448 (isPrefix!4585 (tail!6769 p!3001) (tail!6769 input!3517)))))

(declare-fun d!1239737 () Bool)

(declare-fun e!2610447 () Bool)

(assert (=> d!1239737 e!2610447))

(declare-fun res!1727200 () Bool)

(assert (=> d!1239737 (=> res!1727200 e!2610447)))

(declare-fun lt!1497580 () Bool)

(assert (=> d!1239737 (= res!1727200 (not lt!1497580))))

(declare-fun e!2610449 () Bool)

(assert (=> d!1239737 (= lt!1497580 e!2610449)))

(declare-fun res!1727201 () Bool)

(assert (=> d!1239737 (=> res!1727201 e!2610449)))

(assert (=> d!1239737 (= res!1727201 ((_ is Nil!46218) p!3001))))

(assert (=> d!1239737 (= (isPrefix!4585 p!3001 input!3517) lt!1497580)))

(declare-fun b!4205282 () Bool)

(assert (=> b!4205282 (= e!2610449 e!2610448)))

(declare-fun res!1727202 () Bool)

(assert (=> b!4205282 (=> (not res!1727202) (not e!2610448))))

(assert (=> b!4205282 (= res!1727202 (not ((_ is Nil!46218) input!3517)))))

(declare-fun b!4205283 () Bool)

(declare-fun res!1727199 () Bool)

(assert (=> b!4205283 (=> (not res!1727199) (not e!2610448))))

(assert (=> b!4205283 (= res!1727199 (= (head!8922 p!3001) (head!8922 input!3517)))))

(declare-fun b!4205285 () Bool)

(assert (=> b!4205285 (= e!2610447 (>= (size!33960 input!3517) (size!33960 p!3001)))))

(assert (= (and d!1239737 (not res!1727201)) b!4205282))

(assert (= (and b!4205282 res!1727202) b!4205283))

(assert (= (and b!4205283 res!1727199) b!4205284))

(assert (= (and d!1239737 (not res!1727200)) b!4205285))

(declare-fun m!4793525 () Bool)

(assert (=> b!4205284 m!4793525))

(assert (=> b!4205284 m!4793415))

(assert (=> b!4205284 m!4793525))

(assert (=> b!4205284 m!4793415))

(declare-fun m!4793527 () Bool)

(assert (=> b!4205284 m!4793527))

(declare-fun m!4793529 () Bool)

(assert (=> b!4205283 m!4793529))

(assert (=> b!4205283 m!4793419))

(assert (=> b!4205285 m!4793219))

(assert (=> b!4205285 m!4793455))

(assert (=> b!4204908 d!1239737))

(declare-fun d!1239739 () Bool)

(assert (=> d!1239739 (= (isDefined!7374 lt!1497468) (not (isEmpty!27366 lt!1497468)))))

(declare-fun bs!597200 () Bool)

(assert (= bs!597200 d!1239739))

(assert (=> bs!597200 m!4793047))

(assert (=> b!4204902 d!1239739))

(declare-fun d!1239741 () Bool)

(assert (=> d!1239741 (= (isEmpty!27366 lt!1497468) (not ((_ is Some!9913) lt!1497468)))))

(assert (=> b!4204902 d!1239741))

(declare-fun b!4205286 () Bool)

(declare-fun res!1727203 () Bool)

(declare-fun e!2610451 () Bool)

(assert (=> b!4205286 (=> (not res!1727203) (not e!2610451))))

(declare-fun lt!1497582 () Option!9914)

(assert (=> b!4205286 (= res!1727203 (matchR!6352 (regex!7726 (rule!10828 (_1!25119 (get!15031 lt!1497582)))) (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497582))))))))

(declare-fun b!4205287 () Bool)

(assert (=> b!4205287 (= e!2610451 (contains!9543 (t!347372 rules!3967) (rule!10828 (_1!25119 (get!15031 lt!1497582)))))))

(declare-fun call!292776 () Option!9914)

(declare-fun bm!292771 () Bool)

(assert (=> bm!292771 (= call!292776 (maxPrefixOneRule!3316 thiss!26544 (h!51639 (t!347372 rules!3967)) input!3517))))

(declare-fun b!4205288 () Bool)

(declare-fun e!2610450 () Option!9914)

(assert (=> b!4205288 (= e!2610450 call!292776)))

(declare-fun b!4205289 () Bool)

(declare-fun res!1727207 () Bool)

(assert (=> b!4205289 (=> (not res!1727207) (not e!2610451))))

(assert (=> b!4205289 (= res!1727207 (= (value!240720 (_1!25119 (get!15031 lt!1497582))) (apply!10673 (transformation!7726 (rule!10828 (_1!25119 (get!15031 lt!1497582)))) (seqFromList!5733 (originalCharacters!8108 (_1!25119 (get!15031 lt!1497582)))))))))

(declare-fun b!4205290 () Bool)

(declare-fun res!1727209 () Bool)

(assert (=> b!4205290 (=> (not res!1727209) (not e!2610451))))

(assert (=> b!4205290 (= res!1727209 (= (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497582)))) (originalCharacters!8108 (_1!25119 (get!15031 lt!1497582)))))))

(declare-fun b!4205291 () Bool)

(declare-fun res!1727205 () Bool)

(assert (=> b!4205291 (=> (not res!1727205) (not e!2610451))))

(assert (=> b!4205291 (= res!1727205 (= (++!11800 (list!16703 (charsOf!5149 (_1!25119 (get!15031 lt!1497582)))) (_2!25119 (get!15031 lt!1497582))) input!3517))))

(declare-fun b!4205292 () Bool)

(declare-fun res!1727206 () Bool)

(assert (=> b!4205292 (=> (not res!1727206) (not e!2610451))))

(assert (=> b!4205292 (= res!1727206 (< (size!33960 (_2!25119 (get!15031 lt!1497582))) (size!33960 input!3517)))))

(declare-fun b!4205293 () Bool)

(declare-fun e!2610452 () Bool)

(assert (=> b!4205293 (= e!2610452 e!2610451)))

(declare-fun res!1727204 () Bool)

(assert (=> b!4205293 (=> (not res!1727204) (not e!2610451))))

(assert (=> b!4205293 (= res!1727204 (isDefined!7374 lt!1497582))))

(declare-fun b!4205294 () Bool)

(declare-fun lt!1497583 () Option!9914)

(declare-fun lt!1497581 () Option!9914)

(assert (=> b!4205294 (= e!2610450 (ite (and ((_ is None!9913) lt!1497583) ((_ is None!9913) lt!1497581)) None!9913 (ite ((_ is None!9913) lt!1497581) lt!1497583 (ite ((_ is None!9913) lt!1497583) lt!1497581 (ite (>= (size!33957 (_1!25119 (v!40771 lt!1497583))) (size!33957 (_1!25119 (v!40771 lt!1497581)))) lt!1497583 lt!1497581)))))))

(assert (=> b!4205294 (= lt!1497583 call!292776)))

(assert (=> b!4205294 (= lt!1497581 (maxPrefix!4361 thiss!26544 (t!347372 (t!347372 rules!3967)) input!3517))))

(declare-fun d!1239743 () Bool)

(assert (=> d!1239743 e!2610452))

(declare-fun res!1727208 () Bool)

(assert (=> d!1239743 (=> res!1727208 e!2610452)))

(assert (=> d!1239743 (= res!1727208 (isEmpty!27366 lt!1497582))))

(assert (=> d!1239743 (= lt!1497582 e!2610450)))

(declare-fun c!716776 () Bool)

(assert (=> d!1239743 (= c!716776 (and ((_ is Cons!46219) (t!347372 rules!3967)) ((_ is Nil!46219) (t!347372 (t!347372 rules!3967)))))))

(declare-fun lt!1497585 () Unit!65321)

(declare-fun lt!1497584 () Unit!65321)

(assert (=> d!1239743 (= lt!1497585 lt!1497584)))

(assert (=> d!1239743 (isPrefix!4585 input!3517 input!3517)))

(assert (=> d!1239743 (= lt!1497584 (lemmaIsPrefixRefl!3002 input!3517 input!3517))))

(assert (=> d!1239743 (rulesValidInductive!2864 thiss!26544 (t!347372 rules!3967))))

(assert (=> d!1239743 (= (maxPrefix!4361 thiss!26544 (t!347372 rules!3967) input!3517) lt!1497582)))

(assert (= (and d!1239743 c!716776) b!4205288))

(assert (= (and d!1239743 (not c!716776)) b!4205294))

(assert (= (or b!4205288 b!4205294) bm!292771))

(assert (= (and d!1239743 (not res!1727208)) b!4205293))

(assert (= (and b!4205293 res!1727204) b!4205290))

(assert (= (and b!4205290 res!1727209) b!4205292))

(assert (= (and b!4205292 res!1727206) b!4205291))

(assert (= (and b!4205291 res!1727205) b!4205289))

(assert (= (and b!4205289 res!1727207) b!4205286))

(assert (= (and b!4205286 res!1727203) b!4205287))

(declare-fun m!4793531 () Bool)

(assert (=> b!4205287 m!4793531))

(declare-fun m!4793533 () Bool)

(assert (=> b!4205287 m!4793533))

(assert (=> b!4205286 m!4793531))

(declare-fun m!4793535 () Bool)

(assert (=> b!4205286 m!4793535))

(assert (=> b!4205286 m!4793535))

(declare-fun m!4793537 () Bool)

(assert (=> b!4205286 m!4793537))

(assert (=> b!4205286 m!4793537))

(declare-fun m!4793539 () Bool)

(assert (=> b!4205286 m!4793539))

(assert (=> b!4205291 m!4793531))

(assert (=> b!4205291 m!4793535))

(assert (=> b!4205291 m!4793535))

(assert (=> b!4205291 m!4793537))

(assert (=> b!4205291 m!4793537))

(declare-fun m!4793541 () Bool)

(assert (=> b!4205291 m!4793541))

(assert (=> b!4205289 m!4793531))

(declare-fun m!4793543 () Bool)

(assert (=> b!4205289 m!4793543))

(assert (=> b!4205289 m!4793543))

(declare-fun m!4793545 () Bool)

(assert (=> b!4205289 m!4793545))

(declare-fun m!4793547 () Bool)

(assert (=> d!1239743 m!4793547))

(assert (=> d!1239743 m!4793013))

(assert (=> d!1239743 m!4793015))

(declare-fun m!4793549 () Bool)

(assert (=> d!1239743 m!4793549))

(declare-fun m!4793551 () Bool)

(assert (=> b!4205293 m!4793551))

(declare-fun m!4793553 () Bool)

(assert (=> bm!292771 m!4793553))

(assert (=> b!4205292 m!4793531))

(declare-fun m!4793555 () Bool)

(assert (=> b!4205292 m!4793555))

(assert (=> b!4205292 m!4793219))

(declare-fun m!4793557 () Bool)

(assert (=> b!4205294 m!4793557))

(assert (=> b!4205290 m!4793531))

(assert (=> b!4205290 m!4793535))

(assert (=> b!4205290 m!4793535))

(assert (=> b!4205290 m!4793537))

(assert (=> b!4204902 d!1239743))

(declare-fun b!4205297 () Bool)

(declare-fun e!2610454 () Bool)

(assert (=> b!4205297 (= e!2610454 (isPrefix!4585 (tail!6769 pBis!121) (tail!6769 input!3517)))))

(declare-fun d!1239745 () Bool)

(declare-fun e!2610453 () Bool)

(assert (=> d!1239745 e!2610453))

(declare-fun res!1727211 () Bool)

(assert (=> d!1239745 (=> res!1727211 e!2610453)))

(declare-fun lt!1497586 () Bool)

(assert (=> d!1239745 (= res!1727211 (not lt!1497586))))

(declare-fun e!2610455 () Bool)

(assert (=> d!1239745 (= lt!1497586 e!2610455)))

(declare-fun res!1727212 () Bool)

(assert (=> d!1239745 (=> res!1727212 e!2610455)))

(assert (=> d!1239745 (= res!1727212 ((_ is Nil!46218) pBis!121))))

(assert (=> d!1239745 (= (isPrefix!4585 pBis!121 input!3517) lt!1497586)))

(declare-fun b!4205295 () Bool)

(assert (=> b!4205295 (= e!2610455 e!2610454)))

(declare-fun res!1727213 () Bool)

(assert (=> b!4205295 (=> (not res!1727213) (not e!2610454))))

(assert (=> b!4205295 (= res!1727213 (not ((_ is Nil!46218) input!3517)))))

(declare-fun b!4205296 () Bool)

(declare-fun res!1727210 () Bool)

(assert (=> b!4205296 (=> (not res!1727210) (not e!2610454))))

(assert (=> b!4205296 (= res!1727210 (= (head!8922 pBis!121) (head!8922 input!3517)))))

(declare-fun b!4205298 () Bool)

(assert (=> b!4205298 (= e!2610453 (>= (size!33960 input!3517) (size!33960 pBis!121)))))

(assert (= (and d!1239745 (not res!1727212)) b!4205295))

(assert (= (and b!4205295 res!1727213) b!4205296))

(assert (= (and b!4205296 res!1727210) b!4205297))

(assert (= (and d!1239745 (not res!1727211)) b!4205298))

(declare-fun m!4793559 () Bool)

(assert (=> b!4205297 m!4793559))

(assert (=> b!4205297 m!4793415))

(assert (=> b!4205297 m!4793559))

(assert (=> b!4205297 m!4793415))

(declare-fun m!4793561 () Bool)

(assert (=> b!4205297 m!4793561))

(declare-fun m!4793563 () Bool)

(assert (=> b!4205296 m!4793563))

(assert (=> b!4205296 m!4793419))

(assert (=> b!4205298 m!4793219))

(declare-fun m!4793565 () Bool)

(assert (=> b!4205298 m!4793565))

(assert (=> b!4204901 d!1239745))

(declare-fun d!1239747 () Bool)

(declare-fun list!16705 (Conc!13937) List!46342)

(assert (=> d!1239747 (= (list!16703 (charsOf!5149 tBis!41)) (list!16705 (c!716737 (charsOf!5149 tBis!41))))))

(declare-fun bs!597201 () Bool)

(assert (= bs!597201 d!1239747))

(declare-fun m!4793567 () Bool)

(assert (=> bs!597201 m!4793567))

(assert (=> b!4204922 d!1239747))

(declare-fun d!1239749 () Bool)

(declare-fun lt!1497589 () BalanceConc!27468)

(assert (=> d!1239749 (= (list!16703 lt!1497589) (originalCharacters!8108 tBis!41))))

(assert (=> d!1239749 (= lt!1497589 (dynLambda!19938 (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (value!240720 tBis!41)))))

(assert (=> d!1239749 (= (charsOf!5149 tBis!41) lt!1497589)))

(declare-fun b_lambda!123835 () Bool)

(assert (=> (not b_lambda!123835) (not d!1239749)))

(assert (=> d!1239749 t!347394))

(declare-fun b_and!330465 () Bool)

(assert (= b_and!330457 (and (=> t!347394 result!307448) b_and!330465)))

(assert (=> d!1239749 t!347396))

(declare-fun b_and!330467 () Bool)

(assert (= b_and!330459 (and (=> t!347396 result!307452) b_and!330467)))

(assert (=> d!1239749 t!347398))

(declare-fun b_and!330469 () Bool)

(assert (= b_and!330461 (and (=> t!347398 result!307454) b_and!330469)))

(assert (=> d!1239749 t!347400))

(declare-fun b_and!330471 () Bool)

(assert (= b_and!330463 (and (=> t!347400 result!307456) b_and!330471)))

(declare-fun m!4793569 () Bool)

(assert (=> d!1239749 m!4793569))

(assert (=> d!1239749 m!4793433))

(assert (=> b!4204922 d!1239749))

(declare-fun d!1239751 () Bool)

(assert (=> d!1239751 (= (inv!60796 (tag!8590 rBis!178)) (= (mod (str.len (value!240719 (tag!8590 rBis!178))) 2) 0))))

(assert (=> b!4204911 d!1239751))

(declare-fun d!1239753 () Bool)

(declare-fun res!1727214 () Bool)

(declare-fun e!2610456 () Bool)

(assert (=> d!1239753 (=> (not res!1727214) (not e!2610456))))

(assert (=> d!1239753 (= res!1727214 (semiInverseModEq!3354 (toChars!10297 (transformation!7726 rBis!178)) (toValue!10438 (transformation!7726 rBis!178))))))

(assert (=> d!1239753 (= (inv!60799 (transformation!7726 rBis!178)) e!2610456)))

(declare-fun b!4205299 () Bool)

(assert (=> b!4205299 (= e!2610456 (equivClasses!3253 (toChars!10297 (transformation!7726 rBis!178)) (toValue!10438 (transformation!7726 rBis!178))))))

(assert (= (and d!1239753 res!1727214) b!4205299))

(declare-fun m!4793571 () Bool)

(assert (=> d!1239753 m!4793571))

(declare-fun m!4793573 () Bool)

(assert (=> b!4205299 m!4793573))

(assert (=> b!4204911 d!1239753))

(declare-fun b!4205301 () Bool)

(declare-fun e!2610457 () List!46342)

(assert (=> b!4205301 (= e!2610457 (Cons!46218 (h!51638 pBis!121) (++!11800 (t!347371 pBis!121) suffixBis!41)))))

(declare-fun b!4205303 () Bool)

(declare-fun e!2610458 () Bool)

(declare-fun lt!1497590 () List!46342)

(assert (=> b!4205303 (= e!2610458 (or (not (= suffixBis!41 Nil!46218)) (= lt!1497590 pBis!121)))))

(declare-fun b!4205302 () Bool)

(declare-fun res!1727216 () Bool)

(assert (=> b!4205302 (=> (not res!1727216) (not e!2610458))))

(assert (=> b!4205302 (= res!1727216 (= (size!33960 lt!1497590) (+ (size!33960 pBis!121) (size!33960 suffixBis!41))))))

(declare-fun b!4205300 () Bool)

(assert (=> b!4205300 (= e!2610457 suffixBis!41)))

(declare-fun d!1239755 () Bool)

(assert (=> d!1239755 e!2610458))

(declare-fun res!1727215 () Bool)

(assert (=> d!1239755 (=> (not res!1727215) (not e!2610458))))

(assert (=> d!1239755 (= res!1727215 (= (content!7225 lt!1497590) ((_ map or) (content!7225 pBis!121) (content!7225 suffixBis!41))))))

(assert (=> d!1239755 (= lt!1497590 e!2610457)))

(declare-fun c!716777 () Bool)

(assert (=> d!1239755 (= c!716777 ((_ is Nil!46218) pBis!121))))

(assert (=> d!1239755 (= (++!11800 pBis!121 suffixBis!41) lt!1497590)))

(assert (= (and d!1239755 c!716777) b!4205300))

(assert (= (and d!1239755 (not c!716777)) b!4205301))

(assert (= (and d!1239755 res!1727215) b!4205302))

(assert (= (and b!4205302 res!1727216) b!4205303))

(declare-fun m!4793575 () Bool)

(assert (=> b!4205301 m!4793575))

(declare-fun m!4793577 () Bool)

(assert (=> b!4205302 m!4793577))

(assert (=> b!4205302 m!4793565))

(declare-fun m!4793579 () Bool)

(assert (=> b!4205302 m!4793579))

(declare-fun m!4793581 () Bool)

(assert (=> d!1239755 m!4793581))

(declare-fun m!4793583 () Bool)

(assert (=> d!1239755 m!4793583))

(declare-fun m!4793585 () Bool)

(assert (=> d!1239755 m!4793585))

(assert (=> b!4204932 d!1239755))

(declare-fun d!1239757 () Bool)

(declare-fun res!1727219 () Bool)

(declare-fun e!2610461 () Bool)

(assert (=> d!1239757 (=> (not res!1727219) (not e!2610461))))

(declare-fun rulesValid!3022 (LexerInterface!7321 List!46343) Bool)

(assert (=> d!1239757 (= res!1727219 (rulesValid!3022 thiss!26544 rules!3967))))

(assert (=> d!1239757 (= (rulesInvariant!6532 thiss!26544 rules!3967) e!2610461)))

(declare-fun b!4205306 () Bool)

(declare-datatypes ((List!46345 0))(
  ( (Nil!46221) (Cons!46221 (h!51641 String!53650) (t!347414 List!46345)) )
))
(declare-fun noDuplicateTag!3183 (LexerInterface!7321 List!46343 List!46345) Bool)

(assert (=> b!4205306 (= e!2610461 (noDuplicateTag!3183 thiss!26544 rules!3967 Nil!46221))))

(assert (= (and d!1239757 res!1727219) b!4205306))

(declare-fun m!4793587 () Bool)

(assert (=> d!1239757 m!4793587))

(declare-fun m!4793589 () Bool)

(assert (=> b!4205306 m!4793589))

(assert (=> b!4204900 d!1239757))

(declare-fun b!4205311 () Bool)

(declare-fun e!2610464 () Bool)

(declare-fun tp!1285194 () Bool)

(assert (=> b!4205311 (= e!2610464 (and tp_is_empty!22229 tp!1285194))))

(assert (=> b!4204915 (= tp!1285114 e!2610464)))

(assert (= (and b!4204915 ((_ is Cons!46218) (originalCharacters!8108 t!8364))) b!4205311))

(declare-fun b!4205312 () Bool)

(declare-fun e!2610465 () Bool)

(declare-fun tp!1285195 () Bool)

(assert (=> b!4205312 (= e!2610465 (and tp_is_empty!22229 tp!1285195))))

(assert (=> b!4204904 (= tp!1285124 e!2610465)))

(assert (= (and b!4204904 ((_ is Cons!46218) (originalCharacters!8108 tBis!41))) b!4205312))

(declare-fun b!4205313 () Bool)

(declare-fun e!2610466 () Bool)

(declare-fun tp!1285196 () Bool)

(assert (=> b!4205313 (= e!2610466 (and tp_is_empty!22229 tp!1285196))))

(assert (=> b!4204925 (= tp!1285117 e!2610466)))

(assert (= (and b!4204925 ((_ is Cons!46218) (t!347371 p!3001))) b!4205313))

(declare-fun b!4205314 () Bool)

(declare-fun e!2610467 () Bool)

(declare-fun tp!1285197 () Bool)

(assert (=> b!4205314 (= e!2610467 (and tp_is_empty!22229 tp!1285197))))

(assert (=> b!4204924 (= tp!1285123 e!2610467)))

(assert (= (and b!4204924 ((_ is Cons!46218) (t!347371 input!3517))) b!4205314))

(declare-fun b!4205325 () Bool)

(declare-fun b_free!122847 () Bool)

(declare-fun b_next!123551 () Bool)

(assert (=> b!4205325 (= b_free!122847 (not b_next!123551))))

(declare-fun tp!1285207 () Bool)

(declare-fun b_and!330473 () Bool)

(assert (=> b!4205325 (= tp!1285207 b_and!330473)))

(declare-fun b_free!122849 () Bool)

(declare-fun b_next!123553 () Bool)

(assert (=> b!4205325 (= b_free!122849 (not b_next!123553))))

(declare-fun tb!252271 () Bool)

(declare-fun t!347410 () Bool)

(assert (=> (and b!4205325 (= (toChars!10297 (transformation!7726 (h!51639 (t!347372 rules!3967)))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41)))) t!347410) tb!252271))

(declare-fun result!307470 () Bool)

(assert (= result!307470 result!307448))

(assert (=> b!4205243 t!347410))

(declare-fun t!347412 () Bool)

(declare-fun tb!252273 () Bool)

(assert (=> (and b!4205325 (= (toChars!10297 (transformation!7726 (h!51639 (t!347372 rules!3967)))) (toChars!10297 (transformation!7726 (rule!10828 t!8364)))) t!347412) tb!252273))

(declare-fun result!307472 () Bool)

(assert (= result!307472 result!307458))

(assert (=> b!4205250 t!347412))

(assert (=> d!1239749 t!347410))

(declare-fun tp!1285206 () Bool)

(declare-fun b_and!330475 () Bool)

(assert (=> b!4205325 (= tp!1285206 (and (=> t!347410 result!307470) (=> t!347412 result!307472) b_and!330475))))

(declare-fun e!2610476 () Bool)

(assert (=> b!4205325 (= e!2610476 (and tp!1285207 tp!1285206))))

(declare-fun e!2610478 () Bool)

(declare-fun b!4205324 () Bool)

(declare-fun tp!1285208 () Bool)

(assert (=> b!4205324 (= e!2610478 (and tp!1285208 (inv!60796 (tag!8590 (h!51639 (t!347372 rules!3967)))) (inv!60799 (transformation!7726 (h!51639 (t!347372 rules!3967)))) e!2610476))))

(declare-fun b!4205323 () Bool)

(declare-fun e!2610477 () Bool)

(declare-fun tp!1285209 () Bool)

(assert (=> b!4205323 (= e!2610477 (and e!2610478 tp!1285209))))

(assert (=> b!4204913 (= tp!1285128 e!2610477)))

(assert (= b!4205324 b!4205325))

(assert (= b!4205323 b!4205324))

(assert (= (and b!4204913 ((_ is Cons!46219) (t!347372 rules!3967))) b!4205323))

(declare-fun m!4793591 () Bool)

(assert (=> b!4205324 m!4793591))

(declare-fun m!4793593 () Bool)

(assert (=> b!4205324 m!4793593))

(declare-fun b!4205339 () Bool)

(declare-fun e!2610482 () Bool)

(declare-fun tp!1285223 () Bool)

(declare-fun tp!1285224 () Bool)

(assert (=> b!4205339 (= e!2610482 (and tp!1285223 tp!1285224))))

(declare-fun b!4205336 () Bool)

(assert (=> b!4205336 (= e!2610482 tp_is_empty!22229)))

(declare-fun b!4205338 () Bool)

(declare-fun tp!1285222 () Bool)

(assert (=> b!4205338 (= e!2610482 tp!1285222)))

(declare-fun b!4205337 () Bool)

(declare-fun tp!1285220 () Bool)

(declare-fun tp!1285221 () Bool)

(assert (=> b!4205337 (= e!2610482 (and tp!1285220 tp!1285221))))

(assert (=> b!4204928 (= tp!1285129 e!2610482)))

(assert (= (and b!4204928 ((_ is ElementMatch!12631) (regex!7726 (rule!10828 t!8364)))) b!4205336))

(assert (= (and b!4204928 ((_ is Concat!20588) (regex!7726 (rule!10828 t!8364)))) b!4205337))

(assert (= (and b!4204928 ((_ is Star!12631) (regex!7726 (rule!10828 t!8364)))) b!4205338))

(assert (= (and b!4204928 ((_ is Union!12631) (regex!7726 (rule!10828 t!8364)))) b!4205339))

(declare-fun b!4205340 () Bool)

(declare-fun e!2610483 () Bool)

(declare-fun tp!1285225 () Bool)

(assert (=> b!4205340 (= e!2610483 (and tp_is_empty!22229 tp!1285225))))

(assert (=> b!4204927 (= tp!1285131 e!2610483)))

(assert (= (and b!4204927 ((_ is Cons!46218) (t!347371 suffix!1557))) b!4205340))

(declare-fun b!4205344 () Bool)

(declare-fun e!2610484 () Bool)

(declare-fun tp!1285229 () Bool)

(declare-fun tp!1285230 () Bool)

(assert (=> b!4205344 (= e!2610484 (and tp!1285229 tp!1285230))))

(declare-fun b!4205341 () Bool)

(assert (=> b!4205341 (= e!2610484 tp_is_empty!22229)))

(declare-fun b!4205343 () Bool)

(declare-fun tp!1285228 () Bool)

(assert (=> b!4205343 (= e!2610484 tp!1285228)))

(declare-fun b!4205342 () Bool)

(declare-fun tp!1285226 () Bool)

(declare-fun tp!1285227 () Bool)

(assert (=> b!4205342 (= e!2610484 (and tp!1285226 tp!1285227))))

(assert (=> b!4204916 (= tp!1285118 e!2610484)))

(assert (= (and b!4204916 ((_ is ElementMatch!12631) (regex!7726 (rule!10828 tBis!41)))) b!4205341))

(assert (= (and b!4204916 ((_ is Concat!20588) (regex!7726 (rule!10828 tBis!41)))) b!4205342))

(assert (= (and b!4204916 ((_ is Star!12631) (regex!7726 (rule!10828 tBis!41)))) b!4205343))

(assert (= (and b!4204916 ((_ is Union!12631) (regex!7726 (rule!10828 tBis!41)))) b!4205344))

(declare-fun b!4205348 () Bool)

(declare-fun e!2610485 () Bool)

(declare-fun tp!1285234 () Bool)

(declare-fun tp!1285235 () Bool)

(assert (=> b!4205348 (= e!2610485 (and tp!1285234 tp!1285235))))

(declare-fun b!4205345 () Bool)

(assert (=> b!4205345 (= e!2610485 tp_is_empty!22229)))

(declare-fun b!4205347 () Bool)

(declare-fun tp!1285233 () Bool)

(assert (=> b!4205347 (= e!2610485 tp!1285233)))

(declare-fun b!4205346 () Bool)

(declare-fun tp!1285231 () Bool)

(declare-fun tp!1285232 () Bool)

(assert (=> b!4205346 (= e!2610485 (and tp!1285231 tp!1285232))))

(assert (=> b!4204910 (= tp!1285121 e!2610485)))

(assert (= (and b!4204910 ((_ is ElementMatch!12631) (regex!7726 (h!51639 rules!3967)))) b!4205345))

(assert (= (and b!4204910 ((_ is Concat!20588) (regex!7726 (h!51639 rules!3967)))) b!4205346))

(assert (= (and b!4204910 ((_ is Star!12631) (regex!7726 (h!51639 rules!3967)))) b!4205347))

(assert (= (and b!4204910 ((_ is Union!12631) (regex!7726 (h!51639 rules!3967)))) b!4205348))

(declare-fun b!4205349 () Bool)

(declare-fun e!2610486 () Bool)

(declare-fun tp!1285236 () Bool)

(assert (=> b!4205349 (= e!2610486 (and tp_is_empty!22229 tp!1285236))))

(assert (=> b!4204912 (= tp!1285120 e!2610486)))

(assert (= (and b!4204912 ((_ is Cons!46218) (t!347371 suffixBis!41))) b!4205349))

(declare-fun b!4205353 () Bool)

(declare-fun e!2610487 () Bool)

(declare-fun tp!1285240 () Bool)

(declare-fun tp!1285241 () Bool)

(assert (=> b!4205353 (= e!2610487 (and tp!1285240 tp!1285241))))

(declare-fun b!4205350 () Bool)

(assert (=> b!4205350 (= e!2610487 tp_is_empty!22229)))

(declare-fun b!4205352 () Bool)

(declare-fun tp!1285239 () Bool)

(assert (=> b!4205352 (= e!2610487 tp!1285239)))

(declare-fun b!4205351 () Bool)

(declare-fun tp!1285237 () Bool)

(declare-fun tp!1285238 () Bool)

(assert (=> b!4205351 (= e!2610487 (and tp!1285237 tp!1285238))))

(assert (=> b!4204911 (= tp!1285132 e!2610487)))

(assert (= (and b!4204911 ((_ is ElementMatch!12631) (regex!7726 rBis!178))) b!4205350))

(assert (= (and b!4204911 ((_ is Concat!20588) (regex!7726 rBis!178))) b!4205351))

(assert (= (and b!4204911 ((_ is Star!12631) (regex!7726 rBis!178))) b!4205352))

(assert (= (and b!4204911 ((_ is Union!12631) (regex!7726 rBis!178))) b!4205353))

(declare-fun b!4205354 () Bool)

(declare-fun e!2610488 () Bool)

(declare-fun tp!1285242 () Bool)

(assert (=> b!4205354 (= e!2610488 (and tp_is_empty!22229 tp!1285242))))

(assert (=> b!4204921 (= tp!1285115 e!2610488)))

(assert (= (and b!4204921 ((_ is Cons!46218) (t!347371 pBis!121))) b!4205354))

(declare-fun b_lambda!123837 () Bool)

(assert (= b_lambda!123833 (or (and b!4204905 b_free!122833 (= (toChars!10297 (transformation!7726 rBis!178)) (toChars!10297 (transformation!7726 (rule!10828 t!8364))))) (and b!4204917 b_free!122837) (and b!4204929 b_free!122829 (= (toChars!10297 (transformation!7726 (rule!10828 tBis!41))) (toChars!10297 (transformation!7726 (rule!10828 t!8364))))) (and b!4204919 b_free!122841 (= (toChars!10297 (transformation!7726 (h!51639 rules!3967))) (toChars!10297 (transformation!7726 (rule!10828 t!8364))))) (and b!4205325 b_free!122849 (= (toChars!10297 (transformation!7726 (h!51639 (t!347372 rules!3967)))) (toChars!10297 (transformation!7726 (rule!10828 t!8364))))) b_lambda!123837)))

(declare-fun b_lambda!123839 () Bool)

(assert (= b_lambda!123831 (or (and b!4204919 b_free!122841 (= (toChars!10297 (transformation!7726 (h!51639 rules!3967))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4204917 b_free!122837 (= (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4205325 b_free!122849 (= (toChars!10297 (transformation!7726 (h!51639 (t!347372 rules!3967)))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4204905 b_free!122833 (= (toChars!10297 (transformation!7726 rBis!178)) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4204929 b_free!122829) b_lambda!123839)))

(declare-fun b_lambda!123841 () Bool)

(assert (= b_lambda!123835 (or (and b!4204919 b_free!122841 (= (toChars!10297 (transformation!7726 (h!51639 rules!3967))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4204917 b_free!122837 (= (toChars!10297 (transformation!7726 (rule!10828 t!8364))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4205325 b_free!122849 (= (toChars!10297 (transformation!7726 (h!51639 (t!347372 rules!3967)))) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4204905 b_free!122833 (= (toChars!10297 (transformation!7726 rBis!178)) (toChars!10297 (transformation!7726 (rule!10828 tBis!41))))) (and b!4204929 b_free!122829) b_lambda!123841)))

(check-sat (not b!4205269) (not b!4205324) (not d!1239719) (not b!4205273) (not d!1239729) (not b!4205306) b_and!330413 (not b!4204980) (not b!4205272) (not b!4205252) b_and!330405 (not b!4205222) (not d!1239715) (not d!1239653) (not b!4205221) (not tb!252255) (not b!4205313) (not b!4205311) (not b!4205349) (not b!4205292) (not d!1239739) (not b!4205262) (not b_lambda!123839) (not b!4205073) (not b!4205302) (not bm!292771) (not b!4205251) (not b!4205340) (not bm!292769) (not b!4205250) (not d!1239711) (not b!4205283) (not d!1239749) (not b_lambda!123837) (not b!4205323) b_and!330417 (not d!1239731) (not b!4205275) (not b!4204956) (not b!4205297) b_and!330469 (not b!4204953) (not d!1239755) b_and!330409 b_and!330473 (not d!1239717) (not d!1239743) (not b!4205233) (not b!4205249) (not b_next!123543) b_and!330475 (not b!4205284) (not b!4205338) (not b!4204948) (not b!4205298) (not b!4205223) (not b!4205218) b_and!330471 (not b!4205071) (not b!4205266) (not b!4204951) b_and!330465 (not b!4205352) (not b!4204952) (not b_next!123541) (not b!4205217) (not b!4205314) (not b!4205351) (not b!4205287) (not b!4205294) (not b!4205286) (not b!4205299) (not b!4205265) (not b!4205244) (not b_next!123537) (not b!4205271) (not d!1239721) (not b!4205243) (not b!4205301) (not b!4205067) (not b!4205219) (not b_next!123531) (not tb!252263) (not b!4205293) tp_is_empty!22229 (not b_next!123551) (not b!4205215) (not d!1239735) (not b!4205353) (not b!4205285) (not d!1239747) (not b!4205342) (not b!4205235) (not b!4205238) (not b!4205068) (not b!4205289) (not d!1239753) (not b!4205296) b_and!330467 (not d!1239673) (not d!1239725) (not d!1239651) (not b!4205274) (not b!4205263) (not b!4205339) (not b!4205337) (not b_next!123545) (not b!4205074) (not b!4205354) (not b!4205070) (not b_lambda!123841) (not b!4205346) (not b!4205344) (not b!4205348) (not b!4205075) (not b!4205220) (not b!4205312) (not b!4205072) (not b_next!123533) (not b!4205267) (not b_next!123539) (not b!4204947) (not d!1239757) (not b_next!123553) (not b_next!123535) (not b!4205270) (not b!4205343) (not b!4205234) (not b!4205291) (not b!4205347) (not b!4205280) (not d!1239733) (not b!4205290))
(check-sat b_and!330413 b_and!330405 b_and!330417 b_and!330469 (not b_next!123543) b_and!330475 b_and!330471 b_and!330465 (not b_next!123541) (not b_next!123537) (not b_next!123531) (not b_next!123551) b_and!330467 (not b_next!123545) b_and!330409 b_and!330473 (not b_next!123533) (not b_next!123539) (not b_next!123553) (not b_next!123535))
