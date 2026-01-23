; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!399386 () Bool)

(assert start!399386)

(declare-fun b!4186226 () Bool)

(declare-fun b_free!121735 () Bool)

(declare-fun b_next!122439 () Bool)

(assert (=> b!4186226 (= b_free!121735 (not b_next!122439))))

(declare-fun tp!1279294 () Bool)

(declare-fun b_and!327825 () Bool)

(assert (=> b!4186226 (= tp!1279294 b_and!327825)))

(declare-fun b_free!121737 () Bool)

(declare-fun b_next!122441 () Bool)

(assert (=> b!4186226 (= b_free!121737 (not b_next!122441))))

(declare-fun tp!1279285 () Bool)

(declare-fun b_and!327827 () Bool)

(assert (=> b!4186226 (= tp!1279285 b_and!327827)))

(declare-fun b!4186238 () Bool)

(declare-fun b_free!121739 () Bool)

(declare-fun b_next!122443 () Bool)

(assert (=> b!4186238 (= b_free!121739 (not b_next!122443))))

(declare-fun tp!1279288 () Bool)

(declare-fun b_and!327829 () Bool)

(assert (=> b!4186238 (= tp!1279288 b_and!327829)))

(declare-fun b_free!121741 () Bool)

(declare-fun b_next!122445 () Bool)

(assert (=> b!4186238 (= b_free!121741 (not b_next!122445))))

(declare-fun tp!1279293 () Bool)

(declare-fun b_and!327831 () Bool)

(assert (=> b!4186238 (= tp!1279293 b_and!327831)))

(declare-fun b!4186231 () Bool)

(declare-fun b_free!121743 () Bool)

(declare-fun b_next!122447 () Bool)

(assert (=> b!4186231 (= b_free!121743 (not b_next!122447))))

(declare-fun tp!1279287 () Bool)

(declare-fun b_and!327833 () Bool)

(assert (=> b!4186231 (= tp!1279287 b_and!327833)))

(declare-fun b_free!121745 () Bool)

(declare-fun b_next!122449 () Bool)

(assert (=> b!4186231 (= b_free!121745 (not b_next!122449))))

(declare-fun tp!1279296 () Bool)

(declare-fun b_and!327835 () Bool)

(assert (=> b!4186231 (= tp!1279296 b_and!327835)))

(declare-fun b!4186214 () Bool)

(declare-fun res!1717089 () Bool)

(declare-fun e!2598777 () Bool)

(assert (=> b!4186214 (=> (not res!1717089) (not e!2598777))))

(declare-datatypes ((LexerInterface!7245 0))(
  ( (LexerInterfaceExt!7242 (__x!27985 Int)) (Lexer!7243) )
))
(declare-fun thiss!25986 () LexerInterface!7245)

(declare-datatypes ((List!46079 0))(
  ( (Nil!45955) (Cons!45955 (h!51375 (_ BitVec 16)) (t!345626 List!46079)) )
))
(declare-datatypes ((TokenValue!7882 0))(
  ( (FloatLiteralValue!15764 (text!55619 List!46079)) (TokenValueExt!7881 (__x!27986 Int)) (Broken!39410 (value!238588 List!46079)) (Object!8005) (End!7882) (Def!7882) (Underscore!7882) (Match!7882) (Else!7882) (Error!7882) (Case!7882) (If!7882) (Extends!7882) (Abstract!7882) (Class!7882) (Val!7882) (DelimiterValue!15764 (del!7942 List!46079)) (KeywordValue!7888 (value!238589 List!46079)) (CommentValue!15764 (value!238590 List!46079)) (WhitespaceValue!15764 (value!238591 List!46079)) (IndentationValue!7882 (value!238592 List!46079)) (String!53275) (Int32!7882) (Broken!39411 (value!238593 List!46079)) (Boolean!7883) (Unit!65046) (OperatorValue!7885 (op!7942 List!46079)) (IdentifierValue!15764 (value!238594 List!46079)) (IdentifierValue!15765 (value!238595 List!46079)) (WhitespaceValue!15765 (value!238596 List!46079)) (True!15764) (False!15764) (Broken!39412 (value!238597 List!46079)) (Broken!39413 (value!238598 List!46079)) (True!15765) (RightBrace!7882) (RightBracket!7882) (Colon!7882) (Null!7882) (Comma!7882) (LeftBracket!7882) (False!15765) (LeftBrace!7882) (ImaginaryLiteralValue!7882 (text!55620 List!46079)) (StringLiteralValue!23646 (value!238599 List!46079)) (EOFValue!7882 (value!238600 List!46079)) (IdentValue!7882 (value!238601 List!46079)) (DelimiterValue!15765 (value!238602 List!46079)) (DedentValue!7882 (value!238603 List!46079)) (NewLineValue!7882 (value!238604 List!46079)) (IntegerValue!23646 (value!238605 (_ BitVec 32)) (text!55621 List!46079)) (IntegerValue!23647 (value!238606 Int) (text!55622 List!46079)) (Times!7882) (Or!7882) (Equal!7882) (Minus!7882) (Broken!39414 (value!238607 List!46079)) (And!7882) (Div!7882) (LessEqual!7882) (Mod!7882) (Concat!20439) (Not!7882) (Plus!7882) (SpaceValue!7882 (value!238608 List!46079)) (IntegerValue!23648 (value!238609 Int) (text!55623 List!46079)) (StringLiteralValue!23647 (text!55624 List!46079)) (FloatLiteralValue!15765 (text!55625 List!46079)) (BytesLiteralValue!7882 (value!238610 List!46079)) (CommentValue!15765 (value!238611 List!46079)) (StringLiteralValue!23648 (value!238612 List!46079)) (ErrorTokenValue!7882 (msg!7943 List!46079)) )
))
(declare-datatypes ((String!53276 0))(
  ( (String!53277 (value!238613 String)) )
))
(declare-datatypes ((C!25304 0))(
  ( (C!25305 (val!14814 Int)) )
))
(declare-datatypes ((List!46080 0))(
  ( (Nil!45956) (Cons!45956 (h!51376 C!25304) (t!345627 List!46080)) )
))
(declare-datatypes ((IArray!27731 0))(
  ( (IArray!27732 (innerList!13923 List!46080)) )
))
(declare-datatypes ((Conc!13863 0))(
  ( (Node!13863 (left!34235 Conc!13863) (right!34565 Conc!13863) (csize!27956 Int) (cheight!14074 Int)) (Leaf!21432 (xs!17169 IArray!27731) (csize!27957 Int)) (Empty!13863) )
))
(declare-datatypes ((BalanceConc!27320 0))(
  ( (BalanceConc!27321 (c!714636 Conc!13863)) )
))
(declare-datatypes ((Regex!12557 0))(
  ( (ElementMatch!12557 (c!714637 C!25304)) (Concat!20440 (regOne!25626 Regex!12557) (regTwo!25626 Regex!12557)) (EmptyExpr!12557) (Star!12557 (reg!12886 Regex!12557)) (EmptyLang!12557) (Union!12557 (regOne!25627 Regex!12557) (regTwo!25627 Regex!12557)) )
))
(declare-datatypes ((TokenValueInjection!15192 0))(
  ( (TokenValueInjection!15193 (toValue!10348 Int) (toChars!10207 Int)) )
))
(declare-datatypes ((Rule!15104 0))(
  ( (Rule!15105 (regex!7652 Regex!12557) (tag!8516 String!53276) (isSeparator!7652 Bool) (transformation!7652 TokenValueInjection!15192)) )
))
(declare-fun r!4142 () Rule!15104)

(declare-fun ruleValid!3370 (LexerInterface!7245 Rule!15104) Bool)

(assert (=> b!4186214 (= res!1717089 (ruleValid!3370 thiss!25986 r!4142))))

(declare-fun b!4186215 () Bool)

(declare-fun e!2598769 () Bool)

(declare-fun tp_is_empty!22077 () Bool)

(declare-fun tp!1279292 () Bool)

(assert (=> b!4186215 (= e!2598769 (and tp_is_empty!22077 tp!1279292))))

(declare-fun b!4186216 () Bool)

(declare-fun res!1717083 () Bool)

(assert (=> b!4186216 (=> (not res!1717083) (not e!2598777))))

(declare-fun validRegex!5674 (Regex!12557) Bool)

(assert (=> b!4186216 (= res!1717083 (validRegex!5674 (regex!7652 r!4142)))))

(declare-fun b!4186217 () Bool)

(declare-fun res!1717082 () Bool)

(assert (=> b!4186217 (=> (not res!1717082) (not e!2598777))))

(declare-datatypes ((List!46081 0))(
  ( (Nil!45957) (Cons!45957 (h!51377 Rule!15104) (t!345628 List!46081)) )
))
(declare-fun rules!3843 () List!46081)

(declare-fun rulesInvariant!6458 (LexerInterface!7245 List!46081) Bool)

(assert (=> b!4186217 (= res!1717082 (rulesInvariant!6458 thiss!25986 rules!3843))))

(declare-fun b!4186218 () Bool)

(declare-fun res!1717084 () Bool)

(declare-fun e!2598771 () Bool)

(assert (=> b!4186218 (=> res!1717084 e!2598771)))

(declare-datatypes ((Token!14018 0))(
  ( (Token!14019 (value!238614 TokenValue!7882) (rule!10724 Rule!15104) (size!33750 Int) (originalCharacters!8040 List!46080)) )
))
(declare-datatypes ((tuple2!43762 0))(
  ( (tuple2!43763 (_1!25015 Token!14018) (_2!25015 List!46080)) )
))
(declare-datatypes ((Option!9846 0))(
  ( (None!9845) (Some!9845 (v!40665 tuple2!43762)) )
))
(declare-fun lt!1490866 () Option!9846)

(declare-fun input!3342 () List!46080)

(declare-fun maxPrefix!4293 (LexerInterface!7245 List!46081 List!46080) Option!9846)

(assert (=> b!4186218 (= res!1717084 (not (= (maxPrefix!4293 thiss!25986 rules!3843 input!3342) lt!1490866)))))

(declare-fun res!1717087 () Bool)

(assert (=> start!399386 (=> (not res!1717087) (not e!2598777))))

(get-info :version)

(assert (=> start!399386 (= res!1717087 ((_ is Lexer!7243) thiss!25986))))

(assert (=> start!399386 e!2598777))

(assert (=> start!399386 true))

(declare-fun e!2598776 () Bool)

(assert (=> start!399386 e!2598776))

(declare-fun e!2598773 () Bool)

(assert (=> start!399386 e!2598773))

(declare-fun e!2598779 () Bool)

(assert (=> start!399386 e!2598779))

(assert (=> start!399386 e!2598769))

(declare-fun e!2598774 () Bool)

(assert (=> start!399386 e!2598774))

(declare-fun e!2598784 () Bool)

(assert (=> start!399386 e!2598784))

(declare-fun b!4186219 () Bool)

(declare-fun res!1717088 () Bool)

(assert (=> b!4186219 (=> (not res!1717088) (not e!2598777))))

(declare-fun pBis!107 () List!46080)

(declare-fun isPrefix!4509 (List!46080 List!46080) Bool)

(assert (=> b!4186219 (= res!1717088 (isPrefix!4509 pBis!107 input!3342))))

(declare-fun tp!1279284 () Bool)

(declare-fun b!4186220 () Bool)

(declare-fun e!2598770 () Bool)

(declare-fun inv!60502 (String!53276) Bool)

(declare-fun inv!60504 (TokenValueInjection!15192) Bool)

(assert (=> b!4186220 (= e!2598773 (and tp!1279284 (inv!60502 (tag!8516 r!4142)) (inv!60504 (transformation!7652 r!4142)) e!2598770))))

(declare-fun b!4186221 () Bool)

(declare-fun res!1717081 () Bool)

(assert (=> b!4186221 (=> res!1717081 e!2598771)))

(declare-fun rBis!167 () Rule!15104)

(assert (=> b!4186221 (= res!1717081 (not (ruleValid!3370 thiss!25986 rBis!167)))))

(declare-fun b!4186222 () Bool)

(declare-fun res!1717090 () Bool)

(assert (=> b!4186222 (=> (not res!1717090) (not e!2598777))))

(declare-fun contains!9461 (List!46081 Rule!15104) Bool)

(assert (=> b!4186222 (= res!1717090 (contains!9461 rules!3843 r!4142))))

(declare-fun b!4186223 () Bool)

(declare-fun res!1717093 () Bool)

(assert (=> b!4186223 (=> (not res!1717093) (not e!2598777))))

(assert (=> b!4186223 (= res!1717093 (contains!9461 rules!3843 rBis!167))))

(declare-fun b!4186224 () Bool)

(declare-fun e!2598781 () Bool)

(declare-fun lt!1490869 () tuple2!43762)

(declare-fun lt!1490872 () Option!9846)

(assert (=> b!4186224 (= e!2598781 (or (not (= lt!1490872 (Some!9845 (tuple2!43763 (_1!25015 lt!1490869) (_2!25015 lt!1490869))))) (= (rule!10724 (_1!25015 lt!1490869)) rBis!167)))))

(declare-fun b!4186225 () Bool)

(declare-fun e!2598783 () Bool)

(assert (=> b!4186225 (= e!2598783 e!2598771)))

(declare-fun res!1717078 () Bool)

(assert (=> b!4186225 (=> res!1717078 e!2598771)))

(declare-fun lt!1490864 () Int)

(declare-fun lt!1490862 () Int)

(assert (=> b!4186225 (= res!1717078 (<= lt!1490864 lt!1490862))))

(declare-fun size!33751 (List!46080) Int)

(assert (=> b!4186225 (= lt!1490864 (size!33751 pBis!107))))

(assert (=> b!4186226 (= e!2598770 (and tp!1279294 tp!1279285))))

(declare-fun b!4186227 () Bool)

(declare-fun e!2598782 () Bool)

(declare-fun tp!1279291 () Bool)

(assert (=> b!4186227 (= e!2598779 (and e!2598782 tp!1279291))))

(declare-fun b!4186228 () Bool)

(assert (=> b!4186228 (= e!2598777 (not e!2598783))))

(declare-fun res!1717092 () Bool)

(assert (=> b!4186228 (=> res!1717092 e!2598783)))

(declare-fun maxPrefixOneRule!3254 (LexerInterface!7245 Rule!15104 List!46080) Option!9846)

(assert (=> b!4186228 (= res!1717092 (not (= (maxPrefixOneRule!3254 thiss!25986 r!4142 input!3342) lt!1490866)))))

(declare-fun lt!1490871 () TokenValue!7882)

(declare-fun p!2959 () List!46080)

(declare-fun lt!1490863 () List!46080)

(assert (=> b!4186228 (= lt!1490866 (Some!9845 (tuple2!43763 (Token!14019 lt!1490871 r!4142 lt!1490862 p!2959) lt!1490863)))))

(declare-fun getSuffix!2802 (List!46080 List!46080) List!46080)

(assert (=> b!4186228 (= lt!1490863 (getSuffix!2802 input!3342 p!2959))))

(assert (=> b!4186228 (= lt!1490862 (size!33751 p!2959))))

(declare-fun lt!1490861 () BalanceConc!27320)

(declare-fun apply!10617 (TokenValueInjection!15192 BalanceConc!27320) TokenValue!7882)

(assert (=> b!4186228 (= lt!1490871 (apply!10617 (transformation!7652 r!4142) lt!1490861))))

(assert (=> b!4186228 (isPrefix!4509 input!3342 input!3342)))

(declare-datatypes ((Unit!65047 0))(
  ( (Unit!65048) )
))
(declare-fun lt!1490874 () Unit!65047)

(declare-fun lemmaIsPrefixRefl!2938 (List!46080 List!46080) Unit!65047)

(assert (=> b!4186228 (= lt!1490874 (lemmaIsPrefixRefl!2938 input!3342 input!3342))))

(declare-fun lt!1490868 () Unit!65047)

(declare-fun lemmaSemiInverse!2418 (TokenValueInjection!15192 BalanceConc!27320) Unit!65047)

(assert (=> b!4186228 (= lt!1490868 (lemmaSemiInverse!2418 (transformation!7652 r!4142) lt!1490861))))

(declare-fun seqFromList!5677 (List!46080) BalanceConc!27320)

(assert (=> b!4186228 (= lt!1490861 (seqFromList!5677 p!2959))))

(declare-fun b!4186229 () Bool)

(declare-fun res!1717085 () Bool)

(assert (=> b!4186229 (=> (not res!1717085) (not e!2598777))))

(declare-fun isEmpty!27198 (List!46081) Bool)

(assert (=> b!4186229 (= res!1717085 (not (isEmpty!27198 rules!3843)))))

(declare-fun b!4186230 () Bool)

(declare-fun res!1717091 () Bool)

(assert (=> b!4186230 (=> res!1717091 e!2598781)))

(declare-fun ++!11724 (List!46080 List!46080) List!46080)

(assert (=> b!4186230 (= res!1717091 (not (= (++!11724 p!2959 lt!1490863) input!3342)))))

(declare-fun e!2598772 () Bool)

(assert (=> b!4186231 (= e!2598772 (and tp!1279287 tp!1279296))))

(declare-fun b!4186232 () Bool)

(declare-fun e!2598778 () Bool)

(assert (=> b!4186232 (= e!2598771 e!2598778)))

(declare-fun res!1717086 () Bool)

(assert (=> b!4186232 (=> res!1717086 e!2598778)))

(declare-fun isEmpty!27199 (Option!9846) Bool)

(assert (=> b!4186232 (= res!1717086 (isEmpty!27199 lt!1490872))))

(assert (=> b!4186232 (= lt!1490872 (maxPrefixOneRule!3254 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1490870 () Unit!65047)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2376 (LexerInterface!7245 Rule!15104 List!46081) Unit!65047)

(assert (=> b!4186232 (= lt!1490870 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2376 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4186232 (<= lt!1490864 (size!33751 input!3342))))

(declare-fun lt!1490865 () Unit!65047)

(declare-fun lemmaIsPrefixThenSmallerEqSize!539 (List!46080 List!46080) Unit!65047)

(assert (=> b!4186232 (= lt!1490865 (lemmaIsPrefixThenSmallerEqSize!539 pBis!107 input!3342))))

(declare-fun b!4186233 () Bool)

(declare-fun tp!1279286 () Bool)

(assert (=> b!4186233 (= e!2598784 (and tp_is_empty!22077 tp!1279286))))

(declare-fun b!4186234 () Bool)

(declare-fun res!1717080 () Bool)

(assert (=> b!4186234 (=> (not res!1717080) (not e!2598777))))

(assert (=> b!4186234 (= res!1717080 (isPrefix!4509 p!2959 input!3342))))

(declare-fun b!4186235 () Bool)

(assert (=> b!4186235 (= e!2598778 e!2598781)))

(declare-fun res!1717079 () Bool)

(assert (=> b!4186235 (=> res!1717079 e!2598781)))

(declare-fun lt!1490873 () List!46080)

(assert (=> b!4186235 (= res!1717079 (not (= lt!1490873 pBis!107)))))

(assert (=> b!4186235 (isPrefix!4509 lt!1490873 (++!11724 lt!1490873 (_2!25015 lt!1490869)))))

(declare-fun lt!1490867 () Unit!65047)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3006 (List!46080 List!46080) Unit!65047)

(assert (=> b!4186235 (= lt!1490867 (lemmaConcatTwoListThenFirstIsPrefix!3006 lt!1490873 (_2!25015 lt!1490869)))))

(declare-fun list!16600 (BalanceConc!27320) List!46080)

(declare-fun charsOf!5087 (Token!14018) BalanceConc!27320)

(assert (=> b!4186235 (= lt!1490873 (list!16600 (charsOf!5087 (_1!25015 lt!1490869))))))

(declare-fun get!14937 (Option!9846) tuple2!43762)

(assert (=> b!4186235 (= lt!1490869 (get!14937 lt!1490872))))

(declare-fun e!2598780 () Bool)

(declare-fun b!4186236 () Bool)

(declare-fun tp!1279290 () Bool)

(assert (=> b!4186236 (= e!2598782 (and tp!1279290 (inv!60502 (tag!8516 (h!51377 rules!3843))) (inv!60504 (transformation!7652 (h!51377 rules!3843))) e!2598780))))

(declare-fun b!4186237 () Bool)

(declare-fun res!1717094 () Bool)

(assert (=> b!4186237 (=> (not res!1717094) (not e!2598777))))

(declare-fun matchR!6296 (Regex!12557 List!46080) Bool)

(assert (=> b!4186237 (= res!1717094 (matchR!6296 (regex!7652 r!4142) p!2959))))

(assert (=> b!4186238 (= e!2598780 (and tp!1279288 tp!1279293))))

(declare-fun tp!1279289 () Bool)

(declare-fun b!4186239 () Bool)

(assert (=> b!4186239 (= e!2598776 (and tp!1279289 (inv!60502 (tag!8516 rBis!167)) (inv!60504 (transformation!7652 rBis!167)) e!2598772))))

(declare-fun b!4186240 () Bool)

(declare-fun tp!1279295 () Bool)

(assert (=> b!4186240 (= e!2598774 (and tp_is_empty!22077 tp!1279295))))

(assert (= (and start!399386 res!1717087) b!4186234))

(assert (= (and b!4186234 res!1717080) b!4186219))

(assert (= (and b!4186219 res!1717088) b!4186229))

(assert (= (and b!4186229 res!1717085) b!4186217))

(assert (= (and b!4186217 res!1717082) b!4186222))

(assert (= (and b!4186222 res!1717090) b!4186223))

(assert (= (and b!4186223 res!1717093) b!4186216))

(assert (= (and b!4186216 res!1717083) b!4186237))

(assert (= (and b!4186237 res!1717094) b!4186214))

(assert (= (and b!4186214 res!1717089) b!4186228))

(assert (= (and b!4186228 (not res!1717092)) b!4186225))

(assert (= (and b!4186225 (not res!1717078)) b!4186221))

(assert (= (and b!4186221 (not res!1717081)) b!4186218))

(assert (= (and b!4186218 (not res!1717084)) b!4186232))

(assert (= (and b!4186232 (not res!1717086)) b!4186235))

(assert (= (and b!4186235 (not res!1717079)) b!4186230))

(assert (= (and b!4186230 (not res!1717091)) b!4186224))

(assert (= b!4186239 b!4186231))

(assert (= start!399386 b!4186239))

(assert (= b!4186220 b!4186226))

(assert (= start!399386 b!4186220))

(assert (= b!4186236 b!4186238))

(assert (= b!4186227 b!4186236))

(assert (= (and start!399386 ((_ is Cons!45957) rules!3843)) b!4186227))

(assert (= (and start!399386 ((_ is Cons!45956) input!3342)) b!4186215))

(assert (= (and start!399386 ((_ is Cons!45956) pBis!107)) b!4186240))

(assert (= (and start!399386 ((_ is Cons!45956) p!2959)) b!4186233))

(declare-fun m!4775163 () Bool)

(assert (=> b!4186219 m!4775163))

(declare-fun m!4775165 () Bool)

(assert (=> b!4186237 m!4775165))

(declare-fun m!4775167 () Bool)

(assert (=> b!4186235 m!4775167))

(declare-fun m!4775169 () Bool)

(assert (=> b!4186235 m!4775169))

(declare-fun m!4775171 () Bool)

(assert (=> b!4186235 m!4775171))

(declare-fun m!4775173 () Bool)

(assert (=> b!4186235 m!4775173))

(declare-fun m!4775175 () Bool)

(assert (=> b!4186235 m!4775175))

(assert (=> b!4186235 m!4775169))

(assert (=> b!4186235 m!4775175))

(declare-fun m!4775177 () Bool)

(assert (=> b!4186235 m!4775177))

(declare-fun m!4775179 () Bool)

(assert (=> b!4186221 m!4775179))

(declare-fun m!4775181 () Bool)

(assert (=> b!4186217 m!4775181))

(declare-fun m!4775183 () Bool)

(assert (=> b!4186216 m!4775183))

(declare-fun m!4775185 () Bool)

(assert (=> b!4186225 m!4775185))

(declare-fun m!4775187 () Bool)

(assert (=> b!4186234 m!4775187))

(declare-fun m!4775189 () Bool)

(assert (=> b!4186232 m!4775189))

(declare-fun m!4775191 () Bool)

(assert (=> b!4186232 m!4775191))

(declare-fun m!4775193 () Bool)

(assert (=> b!4186232 m!4775193))

(declare-fun m!4775195 () Bool)

(assert (=> b!4186232 m!4775195))

(declare-fun m!4775197 () Bool)

(assert (=> b!4186232 m!4775197))

(declare-fun m!4775199 () Bool)

(assert (=> b!4186222 m!4775199))

(declare-fun m!4775201 () Bool)

(assert (=> b!4186228 m!4775201))

(declare-fun m!4775203 () Bool)

(assert (=> b!4186228 m!4775203))

(declare-fun m!4775205 () Bool)

(assert (=> b!4186228 m!4775205))

(declare-fun m!4775207 () Bool)

(assert (=> b!4186228 m!4775207))

(declare-fun m!4775209 () Bool)

(assert (=> b!4186228 m!4775209))

(declare-fun m!4775211 () Bool)

(assert (=> b!4186228 m!4775211))

(declare-fun m!4775213 () Bool)

(assert (=> b!4186228 m!4775213))

(declare-fun m!4775215 () Bool)

(assert (=> b!4186228 m!4775215))

(declare-fun m!4775217 () Bool)

(assert (=> b!4186214 m!4775217))

(declare-fun m!4775219 () Bool)

(assert (=> b!4186230 m!4775219))

(declare-fun m!4775221 () Bool)

(assert (=> b!4186220 m!4775221))

(declare-fun m!4775223 () Bool)

(assert (=> b!4186220 m!4775223))

(declare-fun m!4775225 () Bool)

(assert (=> b!4186239 m!4775225))

(declare-fun m!4775227 () Bool)

(assert (=> b!4186239 m!4775227))

(declare-fun m!4775229 () Bool)

(assert (=> b!4186229 m!4775229))

(declare-fun m!4775231 () Bool)

(assert (=> b!4186236 m!4775231))

(declare-fun m!4775233 () Bool)

(assert (=> b!4186236 m!4775233))

(declare-fun m!4775235 () Bool)

(assert (=> b!4186223 m!4775235))

(declare-fun m!4775237 () Bool)

(assert (=> b!4186218 m!4775237))

(check-sat (not b!4186217) b_and!327833 (not b!4186214) b_and!327829 (not b!4186236) b_and!327827 b_and!327835 (not b!4186229) (not b!4186240) (not b_next!122439) (not b!4186223) (not b!4186239) (not b!4186237) (not b_next!122443) (not b!4186235) (not b!4186234) (not b_next!122447) (not b!4186216) (not b!4186218) (not b!4186225) (not b!4186215) b_and!327831 (not b!4186220) tp_is_empty!22077 (not b!4186222) (not b_next!122445) (not b!4186219) (not b_next!122441) b_and!327825 (not b!4186233) (not b!4186228) (not b_next!122449) (not b!4186230) (not b!4186232) (not b!4186221) (not b!4186227))
(check-sat (not b_next!122439) b_and!327833 (not b_next!122443) (not b_next!122447) b_and!327829 b_and!327831 (not b_next!122445) (not b_next!122441) b_and!327827 b_and!327835 b_and!327825 (not b_next!122449))
(get-model)

(declare-fun d!1235277 () Bool)

(declare-fun lt!1490880 () List!46080)

(assert (=> d!1235277 (= (++!11724 p!2959 lt!1490880) input!3342)))

(declare-fun e!2598789 () List!46080)

(assert (=> d!1235277 (= lt!1490880 e!2598789)))

(declare-fun c!714640 () Bool)

(assert (=> d!1235277 (= c!714640 ((_ is Cons!45956) p!2959))))

(assert (=> d!1235277 (>= (size!33751 input!3342) (size!33751 p!2959))))

(assert (=> d!1235277 (= (getSuffix!2802 input!3342 p!2959) lt!1490880)))

(declare-fun b!4186245 () Bool)

(declare-fun tail!6731 (List!46080) List!46080)

(assert (=> b!4186245 (= e!2598789 (getSuffix!2802 (tail!6731 input!3342) (t!345627 p!2959)))))

(declare-fun b!4186246 () Bool)

(assert (=> b!4186246 (= e!2598789 input!3342)))

(assert (= (and d!1235277 c!714640) b!4186245))

(assert (= (and d!1235277 (not c!714640)) b!4186246))

(declare-fun m!4775241 () Bool)

(assert (=> d!1235277 m!4775241))

(assert (=> d!1235277 m!4775191))

(assert (=> d!1235277 m!4775211))

(declare-fun m!4775243 () Bool)

(assert (=> b!4186245 m!4775243))

(assert (=> b!4186245 m!4775243))

(declare-fun m!4775245 () Bool)

(assert (=> b!4186245 m!4775245))

(assert (=> b!4186228 d!1235277))

(declare-fun b!4186255 () Bool)

(declare-fun e!2598797 () Bool)

(declare-fun e!2598798 () Bool)

(assert (=> b!4186255 (= e!2598797 e!2598798)))

(declare-fun res!1717115 () Bool)

(assert (=> b!4186255 (=> (not res!1717115) (not e!2598798))))

(assert (=> b!4186255 (= res!1717115 (not ((_ is Nil!45956) input!3342)))))

(declare-fun b!4186258 () Bool)

(declare-fun e!2598796 () Bool)

(assert (=> b!4186258 (= e!2598796 (>= (size!33751 input!3342) (size!33751 input!3342)))))

(declare-fun b!4186256 () Bool)

(declare-fun res!1717114 () Bool)

(assert (=> b!4186256 (=> (not res!1717114) (not e!2598798))))

(declare-fun head!8884 (List!46080) C!25304)

(assert (=> b!4186256 (= res!1717114 (= (head!8884 input!3342) (head!8884 input!3342)))))

(declare-fun b!4186257 () Bool)

(assert (=> b!4186257 (= e!2598798 (isPrefix!4509 (tail!6731 input!3342) (tail!6731 input!3342)))))

(declare-fun d!1235279 () Bool)

(assert (=> d!1235279 e!2598796))

(declare-fun res!1717116 () Bool)

(assert (=> d!1235279 (=> res!1717116 e!2598796)))

(declare-fun lt!1490883 () Bool)

(assert (=> d!1235279 (= res!1717116 (not lt!1490883))))

(assert (=> d!1235279 (= lt!1490883 e!2598797)))

(declare-fun res!1717113 () Bool)

(assert (=> d!1235279 (=> res!1717113 e!2598797)))

(assert (=> d!1235279 (= res!1717113 ((_ is Nil!45956) input!3342))))

(assert (=> d!1235279 (= (isPrefix!4509 input!3342 input!3342) lt!1490883)))

(assert (= (and d!1235279 (not res!1717113)) b!4186255))

(assert (= (and b!4186255 res!1717115) b!4186256))

(assert (= (and b!4186256 res!1717114) b!4186257))

(assert (= (and d!1235279 (not res!1717116)) b!4186258))

(assert (=> b!4186258 m!4775191))

(assert (=> b!4186258 m!4775191))

(declare-fun m!4775247 () Bool)

(assert (=> b!4186256 m!4775247))

(assert (=> b!4186256 m!4775247))

(assert (=> b!4186257 m!4775243))

(assert (=> b!4186257 m!4775243))

(assert (=> b!4186257 m!4775243))

(assert (=> b!4186257 m!4775243))

(declare-fun m!4775249 () Bool)

(assert (=> b!4186257 m!4775249))

(assert (=> b!4186228 d!1235279))

(declare-fun d!1235281 () Bool)

(declare-fun fromListB!2598 (List!46080) BalanceConc!27320)

(assert (=> d!1235281 (= (seqFromList!5677 p!2959) (fromListB!2598 p!2959))))

(declare-fun bs!596530 () Bool)

(assert (= bs!596530 d!1235281))

(declare-fun m!4775295 () Bool)

(assert (=> bs!596530 m!4775295))

(assert (=> b!4186228 d!1235281))

(declare-fun d!1235289 () Bool)

(assert (=> d!1235289 (isPrefix!4509 input!3342 input!3342)))

(declare-fun lt!1490907 () Unit!65047)

(declare-fun choose!25630 (List!46080 List!46080) Unit!65047)

(assert (=> d!1235289 (= lt!1490907 (choose!25630 input!3342 input!3342))))

(assert (=> d!1235289 (= (lemmaIsPrefixRefl!2938 input!3342 input!3342) lt!1490907)))

(declare-fun bs!596531 () Bool)

(assert (= bs!596531 d!1235289))

(assert (=> bs!596531 m!4775203))

(declare-fun m!4775299 () Bool)

(assert (=> bs!596531 m!4775299))

(assert (=> b!4186228 d!1235289))

(declare-fun d!1235293 () Bool)

(declare-fun dynLambda!19750 (Int BalanceConc!27320) TokenValue!7882)

(assert (=> d!1235293 (= (apply!10617 (transformation!7652 r!4142) lt!1490861) (dynLambda!19750 (toValue!10348 (transformation!7652 r!4142)) lt!1490861))))

(declare-fun b_lambda!123099 () Bool)

(assert (=> (not b_lambda!123099) (not d!1235293)))

(declare-fun t!345630 () Bool)

(declare-fun tb!250763 () Bool)

(assert (=> (and b!4186226 (= (toValue!10348 (transformation!7652 r!4142)) (toValue!10348 (transformation!7652 r!4142))) t!345630) tb!250763))

(declare-fun result!305568 () Bool)

(declare-fun inv!21 (TokenValue!7882) Bool)

(assert (=> tb!250763 (= result!305568 (inv!21 (dynLambda!19750 (toValue!10348 (transformation!7652 r!4142)) lt!1490861)))))

(declare-fun m!4775301 () Bool)

(assert (=> tb!250763 m!4775301))

(assert (=> d!1235293 t!345630))

(declare-fun b_and!327837 () Bool)

(assert (= b_and!327825 (and (=> t!345630 result!305568) b_and!327837)))

(declare-fun tb!250765 () Bool)

(declare-fun t!345632 () Bool)

(assert (=> (and b!4186238 (= (toValue!10348 (transformation!7652 (h!51377 rules!3843))) (toValue!10348 (transformation!7652 r!4142))) t!345632) tb!250765))

(declare-fun result!305572 () Bool)

(assert (= result!305572 result!305568))

(assert (=> d!1235293 t!345632))

(declare-fun b_and!327839 () Bool)

(assert (= b_and!327829 (and (=> t!345632 result!305572) b_and!327839)))

(declare-fun tb!250767 () Bool)

(declare-fun t!345634 () Bool)

(assert (=> (and b!4186231 (= (toValue!10348 (transformation!7652 rBis!167)) (toValue!10348 (transformation!7652 r!4142))) t!345634) tb!250767))

(declare-fun result!305574 () Bool)

(assert (= result!305574 result!305568))

(assert (=> d!1235293 t!345634))

(declare-fun b_and!327841 () Bool)

(assert (= b_and!327833 (and (=> t!345634 result!305574) b_and!327841)))

(declare-fun m!4775313 () Bool)

(assert (=> d!1235293 m!4775313))

(assert (=> b!4186228 d!1235293))

(declare-fun b!4186462 () Bool)

(declare-fun e!2598916 () Bool)

(assert (=> b!4186462 (= e!2598916 true)))

(declare-fun d!1235297 () Bool)

(assert (=> d!1235297 e!2598916))

(assert (= d!1235297 b!4186462))

(declare-fun order!24283 () Int)

(declare-fun order!24285 () Int)

(declare-fun lambda!129448 () Int)

(declare-fun dynLambda!19751 (Int Int) Int)

(declare-fun dynLambda!19752 (Int Int) Int)

(assert (=> b!4186462 (< (dynLambda!19751 order!24283 (toValue!10348 (transformation!7652 r!4142))) (dynLambda!19752 order!24285 lambda!129448))))

(declare-fun order!24287 () Int)

(declare-fun dynLambda!19753 (Int Int) Int)

(assert (=> b!4186462 (< (dynLambda!19753 order!24287 (toChars!10207 (transformation!7652 r!4142))) (dynLambda!19752 order!24285 lambda!129448))))

(declare-fun dynLambda!19754 (Int TokenValue!7882) BalanceConc!27320)

(assert (=> d!1235297 (= (list!16600 (dynLambda!19754 (toChars!10207 (transformation!7652 r!4142)) (dynLambda!19750 (toValue!10348 (transformation!7652 r!4142)) lt!1490861))) (list!16600 lt!1490861))))

(declare-fun lt!1490951 () Unit!65047)

(declare-fun ForallOf!1049 (Int BalanceConc!27320) Unit!65047)

(assert (=> d!1235297 (= lt!1490951 (ForallOf!1049 lambda!129448 lt!1490861))))

(assert (=> d!1235297 (= (lemmaSemiInverse!2418 (transformation!7652 r!4142) lt!1490861) lt!1490951)))

(declare-fun b_lambda!123103 () Bool)

(assert (=> (not b_lambda!123103) (not d!1235297)))

(declare-fun t!345642 () Bool)

(declare-fun tb!250775 () Bool)

(assert (=> (and b!4186226 (= (toChars!10207 (transformation!7652 r!4142)) (toChars!10207 (transformation!7652 r!4142))) t!345642) tb!250775))

(declare-fun e!2598919 () Bool)

(declare-fun b!4186467 () Bool)

(declare-fun tp!1279299 () Bool)

(declare-fun inv!60505 (Conc!13863) Bool)

(assert (=> b!4186467 (= e!2598919 (and (inv!60505 (c!714636 (dynLambda!19754 (toChars!10207 (transformation!7652 r!4142)) (dynLambda!19750 (toValue!10348 (transformation!7652 r!4142)) lt!1490861)))) tp!1279299))))

(declare-fun result!305584 () Bool)

(declare-fun inv!60506 (BalanceConc!27320) Bool)

(assert (=> tb!250775 (= result!305584 (and (inv!60506 (dynLambda!19754 (toChars!10207 (transformation!7652 r!4142)) (dynLambda!19750 (toValue!10348 (transformation!7652 r!4142)) lt!1490861))) e!2598919))))

(assert (= tb!250775 b!4186467))

(declare-fun m!4775457 () Bool)

(assert (=> b!4186467 m!4775457))

(declare-fun m!4775459 () Bool)

(assert (=> tb!250775 m!4775459))

(assert (=> d!1235297 t!345642))

(declare-fun b_and!327849 () Bool)

(assert (= b_and!327827 (and (=> t!345642 result!305584) b_and!327849)))

(declare-fun tb!250777 () Bool)

(declare-fun t!345644 () Bool)

(assert (=> (and b!4186238 (= (toChars!10207 (transformation!7652 (h!51377 rules!3843))) (toChars!10207 (transformation!7652 r!4142))) t!345644) tb!250777))

(declare-fun result!305588 () Bool)

(assert (= result!305588 result!305584))

(assert (=> d!1235297 t!345644))

(declare-fun b_and!327851 () Bool)

(assert (= b_and!327831 (and (=> t!345644 result!305588) b_and!327851)))

(declare-fun tb!250779 () Bool)

(declare-fun t!345646 () Bool)

(assert (=> (and b!4186231 (= (toChars!10207 (transformation!7652 rBis!167)) (toChars!10207 (transformation!7652 r!4142))) t!345646) tb!250779))

(declare-fun result!305590 () Bool)

(assert (= result!305590 result!305584))

(assert (=> d!1235297 t!345646))

(declare-fun b_and!327853 () Bool)

(assert (= b_and!327835 (and (=> t!345646 result!305590) b_and!327853)))

(declare-fun b_lambda!123105 () Bool)

(assert (=> (not b_lambda!123105) (not d!1235297)))

(assert (=> d!1235297 t!345630))

(declare-fun b_and!327855 () Bool)

(assert (= b_and!327837 (and (=> t!345630 result!305568) b_and!327855)))

(assert (=> d!1235297 t!345632))

(declare-fun b_and!327857 () Bool)

(assert (= b_and!327839 (and (=> t!345632 result!305572) b_and!327857)))

(assert (=> d!1235297 t!345634))

(declare-fun b_and!327859 () Bool)

(assert (= b_and!327841 (and (=> t!345634 result!305574) b_and!327859)))

(assert (=> d!1235297 m!4775313))

(declare-fun m!4775461 () Bool)

(assert (=> d!1235297 m!4775461))

(declare-fun m!4775463 () Bool)

(assert (=> d!1235297 m!4775463))

(declare-fun m!4775465 () Bool)

(assert (=> d!1235297 m!4775465))

(assert (=> d!1235297 m!4775313))

(assert (=> d!1235297 m!4775463))

(declare-fun m!4775467 () Bool)

(assert (=> d!1235297 m!4775467))

(assert (=> b!4186228 d!1235297))

(declare-fun b!4186514 () Bool)

(declare-fun res!1717281 () Bool)

(declare-fun e!2598948 () Bool)

(assert (=> b!4186514 (=> (not res!1717281) (not e!2598948))))

(declare-fun lt!1490978 () Option!9846)

(assert (=> b!4186514 (= res!1717281 (= (++!11724 (list!16600 (charsOf!5087 (_1!25015 (get!14937 lt!1490978)))) (_2!25015 (get!14937 lt!1490978))) input!3342))))

(declare-fun b!4186516 () Bool)

(declare-fun res!1717278 () Bool)

(assert (=> b!4186516 (=> (not res!1717278) (not e!2598948))))

(assert (=> b!4186516 (= res!1717278 (= (value!238614 (_1!25015 (get!14937 lt!1490978))) (apply!10617 (transformation!7652 (rule!10724 (_1!25015 (get!14937 lt!1490978)))) (seqFromList!5677 (originalCharacters!8040 (_1!25015 (get!14937 lt!1490978)))))))))

(declare-fun b!4186517 () Bool)

(declare-fun e!2598949 () Option!9846)

(declare-datatypes ((tuple2!43766 0))(
  ( (tuple2!43767 (_1!25017 List!46080) (_2!25017 List!46080)) )
))
(declare-fun lt!1490976 () tuple2!43766)

(declare-fun size!33753 (BalanceConc!27320) Int)

(assert (=> b!4186517 (= e!2598949 (Some!9845 (tuple2!43763 (Token!14019 (apply!10617 (transformation!7652 r!4142) (seqFromList!5677 (_1!25017 lt!1490976))) r!4142 (size!33753 (seqFromList!5677 (_1!25017 lt!1490976))) (_1!25017 lt!1490976)) (_2!25017 lt!1490976))))))

(declare-fun lt!1490977 () Unit!65047)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1570 (Regex!12557 List!46080) Unit!65047)

(assert (=> b!4186517 (= lt!1490977 (longestMatchIsAcceptedByMatchOrIsEmpty!1570 (regex!7652 r!4142) input!3342))))

(declare-fun res!1717277 () Bool)

(declare-fun isEmpty!27201 (List!46080) Bool)

(declare-fun findLongestMatchInner!1597 (Regex!12557 List!46080 Int List!46080 List!46080 Int) tuple2!43766)

(assert (=> b!4186517 (= res!1717277 (isEmpty!27201 (_1!25017 (findLongestMatchInner!1597 (regex!7652 r!4142) Nil!45956 (size!33751 Nil!45956) input!3342 input!3342 (size!33751 input!3342)))))))

(declare-fun e!2598947 () Bool)

(assert (=> b!4186517 (=> res!1717277 e!2598947)))

(assert (=> b!4186517 e!2598947))

(declare-fun lt!1490979 () Unit!65047)

(assert (=> b!4186517 (= lt!1490979 lt!1490977)))

(declare-fun lt!1490975 () Unit!65047)

(assert (=> b!4186517 (= lt!1490975 (lemmaSemiInverse!2418 (transformation!7652 r!4142) (seqFromList!5677 (_1!25017 lt!1490976))))))

(declare-fun b!4186518 () Bool)

(assert (=> b!4186518 (= e!2598948 (= (size!33750 (_1!25015 (get!14937 lt!1490978))) (size!33751 (originalCharacters!8040 (_1!25015 (get!14937 lt!1490978))))))))

(declare-fun b!4186519 () Bool)

(declare-fun res!1717280 () Bool)

(assert (=> b!4186519 (=> (not res!1717280) (not e!2598948))))

(assert (=> b!4186519 (= res!1717280 (= (rule!10724 (_1!25015 (get!14937 lt!1490978))) r!4142))))

(declare-fun b!4186520 () Bool)

(declare-fun res!1717279 () Bool)

(assert (=> b!4186520 (=> (not res!1717279) (not e!2598948))))

(assert (=> b!4186520 (= res!1717279 (< (size!33751 (_2!25015 (get!14937 lt!1490978))) (size!33751 input!3342)))))

(declare-fun b!4186521 () Bool)

(declare-fun e!2598950 () Bool)

(assert (=> b!4186521 (= e!2598950 e!2598948)))

(declare-fun res!1717275 () Bool)

(assert (=> b!4186521 (=> (not res!1717275) (not e!2598948))))

(assert (=> b!4186521 (= res!1717275 (matchR!6296 (regex!7652 r!4142) (list!16600 (charsOf!5087 (_1!25015 (get!14937 lt!1490978))))))))

(declare-fun b!4186522 () Bool)

(assert (=> b!4186522 (= e!2598947 (matchR!6296 (regex!7652 r!4142) (_1!25017 (findLongestMatchInner!1597 (regex!7652 r!4142) Nil!45956 (size!33751 Nil!45956) input!3342 input!3342 (size!33751 input!3342)))))))

(declare-fun d!1235341 () Bool)

(assert (=> d!1235341 e!2598950))

(declare-fun res!1717276 () Bool)

(assert (=> d!1235341 (=> res!1717276 e!2598950)))

(assert (=> d!1235341 (= res!1717276 (isEmpty!27199 lt!1490978))))

(assert (=> d!1235341 (= lt!1490978 e!2598949)))

(declare-fun c!714679 () Bool)

(assert (=> d!1235341 (= c!714679 (isEmpty!27201 (_1!25017 lt!1490976)))))

(declare-fun findLongestMatch!1510 (Regex!12557 List!46080) tuple2!43766)

(assert (=> d!1235341 (= lt!1490976 (findLongestMatch!1510 (regex!7652 r!4142) input!3342))))

(assert (=> d!1235341 (ruleValid!3370 thiss!25986 r!4142)))

(assert (=> d!1235341 (= (maxPrefixOneRule!3254 thiss!25986 r!4142 input!3342) lt!1490978)))

(declare-fun b!4186515 () Bool)

(assert (=> b!4186515 (= e!2598949 None!9845)))

(assert (= (and d!1235341 c!714679) b!4186515))

(assert (= (and d!1235341 (not c!714679)) b!4186517))

(assert (= (and b!4186517 (not res!1717277)) b!4186522))

(assert (= (and d!1235341 (not res!1717276)) b!4186521))

(assert (= (and b!4186521 res!1717275) b!4186514))

(assert (= (and b!4186514 res!1717281) b!4186520))

(assert (= (and b!4186520 res!1717279) b!4186519))

(assert (= (and b!4186519 res!1717280) b!4186516))

(assert (= (and b!4186516 res!1717278) b!4186518))

(declare-fun m!4775527 () Bool)

(assert (=> b!4186516 m!4775527))

(declare-fun m!4775529 () Bool)

(assert (=> b!4186516 m!4775529))

(assert (=> b!4186516 m!4775529))

(declare-fun m!4775531 () Bool)

(assert (=> b!4186516 m!4775531))

(assert (=> b!4186520 m!4775527))

(declare-fun m!4775533 () Bool)

(assert (=> b!4186520 m!4775533))

(assert (=> b!4186520 m!4775191))

(declare-fun m!4775535 () Bool)

(assert (=> b!4186522 m!4775535))

(assert (=> b!4186522 m!4775191))

(assert (=> b!4186522 m!4775535))

(assert (=> b!4186522 m!4775191))

(declare-fun m!4775537 () Bool)

(assert (=> b!4186522 m!4775537))

(declare-fun m!4775539 () Bool)

(assert (=> b!4186522 m!4775539))

(assert (=> b!4186521 m!4775527))

(declare-fun m!4775541 () Bool)

(assert (=> b!4186521 m!4775541))

(assert (=> b!4186521 m!4775541))

(declare-fun m!4775543 () Bool)

(assert (=> b!4186521 m!4775543))

(assert (=> b!4186521 m!4775543))

(declare-fun m!4775545 () Bool)

(assert (=> b!4186521 m!4775545))

(declare-fun m!4775547 () Bool)

(assert (=> b!4186517 m!4775547))

(declare-fun m!4775549 () Bool)

(assert (=> b!4186517 m!4775549))

(declare-fun m!4775551 () Bool)

(assert (=> b!4186517 m!4775551))

(assert (=> b!4186517 m!4775535))

(assert (=> b!4186517 m!4775191))

(assert (=> b!4186517 m!4775537))

(assert (=> b!4186517 m!4775549))

(declare-fun m!4775553 () Bool)

(assert (=> b!4186517 m!4775553))

(assert (=> b!4186517 m!4775191))

(assert (=> b!4186517 m!4775549))

(declare-fun m!4775555 () Bool)

(assert (=> b!4186517 m!4775555))

(assert (=> b!4186517 m!4775549))

(declare-fun m!4775557 () Bool)

(assert (=> b!4186517 m!4775557))

(assert (=> b!4186517 m!4775535))

(declare-fun m!4775559 () Bool)

(assert (=> d!1235341 m!4775559))

(declare-fun m!4775561 () Bool)

(assert (=> d!1235341 m!4775561))

(declare-fun m!4775563 () Bool)

(assert (=> d!1235341 m!4775563))

(assert (=> d!1235341 m!4775217))

(assert (=> b!4186519 m!4775527))

(assert (=> b!4186514 m!4775527))

(assert (=> b!4186514 m!4775541))

(assert (=> b!4186514 m!4775541))

(assert (=> b!4186514 m!4775543))

(assert (=> b!4186514 m!4775543))

(declare-fun m!4775565 () Bool)

(assert (=> b!4186514 m!4775565))

(assert (=> b!4186518 m!4775527))

(declare-fun m!4775567 () Bool)

(assert (=> b!4186518 m!4775567))

(assert (=> b!4186228 d!1235341))

(declare-fun d!1235363 () Bool)

(declare-fun lt!1490982 () Int)

(assert (=> d!1235363 (>= lt!1490982 0)))

(declare-fun e!2598973 () Int)

(assert (=> d!1235363 (= lt!1490982 e!2598973)))

(declare-fun c!714682 () Bool)

(assert (=> d!1235363 (= c!714682 ((_ is Nil!45956) p!2959))))

(assert (=> d!1235363 (= (size!33751 p!2959) lt!1490982)))

(declare-fun b!4186562 () Bool)

(assert (=> b!4186562 (= e!2598973 0)))

(declare-fun b!4186563 () Bool)

(assert (=> b!4186563 (= e!2598973 (+ 1 (size!33751 (t!345627 p!2959))))))

(assert (= (and d!1235363 c!714682) b!4186562))

(assert (= (and d!1235363 (not c!714682)) b!4186563))

(declare-fun m!4775573 () Bool)

(assert (=> b!4186563 m!4775573))

(assert (=> b!4186228 d!1235363))

(declare-fun d!1235365 () Bool)

(declare-fun res!1717284 () Bool)

(declare-fun e!2598978 () Bool)

(assert (=> d!1235365 (=> (not res!1717284) (not e!2598978))))

(declare-fun rulesValid!2983 (LexerInterface!7245 List!46081) Bool)

(assert (=> d!1235365 (= res!1717284 (rulesValid!2983 thiss!25986 rules!3843))))

(assert (=> d!1235365 (= (rulesInvariant!6458 thiss!25986 rules!3843) e!2598978)))

(declare-fun b!4186571 () Bool)

(declare-datatypes ((List!46082 0))(
  ( (Nil!45958) (Cons!45958 (h!51378 String!53276) (t!345677 List!46082)) )
))
(declare-fun noDuplicateTag!3144 (LexerInterface!7245 List!46081 List!46082) Bool)

(assert (=> b!4186571 (= e!2598978 (noDuplicateTag!3144 thiss!25986 rules!3843 Nil!45958))))

(assert (= (and d!1235365 res!1717284) b!4186571))

(declare-fun m!4775575 () Bool)

(assert (=> d!1235365 m!4775575))

(declare-fun m!4775577 () Bool)

(assert (=> b!4186571 m!4775577))

(assert (=> b!4186217 d!1235365))

(declare-fun call!291994 () Option!9846)

(declare-fun bm!291989 () Bool)

(assert (=> bm!291989 (= call!291994 (maxPrefixOneRule!3254 thiss!25986 (h!51377 rules!3843) input!3342))))

(declare-fun d!1235367 () Bool)

(declare-fun e!2598987 () Bool)

(assert (=> d!1235367 e!2598987))

(declare-fun res!1717302 () Bool)

(assert (=> d!1235367 (=> res!1717302 e!2598987)))

(declare-fun lt!1490995 () Option!9846)

(assert (=> d!1235367 (= res!1717302 (isEmpty!27199 lt!1490995))))

(declare-fun e!2598986 () Option!9846)

(assert (=> d!1235367 (= lt!1490995 e!2598986)))

(declare-fun c!714685 () Bool)

(assert (=> d!1235367 (= c!714685 (and ((_ is Cons!45957) rules!3843) ((_ is Nil!45957) (t!345628 rules!3843))))))

(declare-fun lt!1490994 () Unit!65047)

(declare-fun lt!1490996 () Unit!65047)

(assert (=> d!1235367 (= lt!1490994 lt!1490996)))

(assert (=> d!1235367 (isPrefix!4509 input!3342 input!3342)))

(assert (=> d!1235367 (= lt!1490996 (lemmaIsPrefixRefl!2938 input!3342 input!3342))))

(declare-fun rulesValidInductive!2822 (LexerInterface!7245 List!46081) Bool)

(assert (=> d!1235367 (rulesValidInductive!2822 thiss!25986 rules!3843)))

(assert (=> d!1235367 (= (maxPrefix!4293 thiss!25986 rules!3843 input!3342) lt!1490995)))

(declare-fun b!4186590 () Bool)

(declare-fun res!1717301 () Bool)

(declare-fun e!2598985 () Bool)

(assert (=> b!4186590 (=> (not res!1717301) (not e!2598985))))

(assert (=> b!4186590 (= res!1717301 (= (list!16600 (charsOf!5087 (_1!25015 (get!14937 lt!1490995)))) (originalCharacters!8040 (_1!25015 (get!14937 lt!1490995)))))))

(declare-fun b!4186591 () Bool)

(declare-fun res!1717305 () Bool)

(assert (=> b!4186591 (=> (not res!1717305) (not e!2598985))))

(assert (=> b!4186591 (= res!1717305 (= (++!11724 (list!16600 (charsOf!5087 (_1!25015 (get!14937 lt!1490995)))) (_2!25015 (get!14937 lt!1490995))) input!3342))))

(declare-fun b!4186592 () Bool)

(declare-fun lt!1490993 () Option!9846)

(declare-fun lt!1490997 () Option!9846)

(assert (=> b!4186592 (= e!2598986 (ite (and ((_ is None!9845) lt!1490993) ((_ is None!9845) lt!1490997)) None!9845 (ite ((_ is None!9845) lt!1490997) lt!1490993 (ite ((_ is None!9845) lt!1490993) lt!1490997 (ite (>= (size!33750 (_1!25015 (v!40665 lt!1490993))) (size!33750 (_1!25015 (v!40665 lt!1490997)))) lt!1490993 lt!1490997)))))))

(assert (=> b!4186592 (= lt!1490993 call!291994)))

(assert (=> b!4186592 (= lt!1490997 (maxPrefix!4293 thiss!25986 (t!345628 rules!3843) input!3342))))

(declare-fun b!4186593 () Bool)

(assert (=> b!4186593 (= e!2598985 (contains!9461 rules!3843 (rule!10724 (_1!25015 (get!14937 lt!1490995)))))))

(declare-fun b!4186594 () Bool)

(declare-fun res!1717299 () Bool)

(assert (=> b!4186594 (=> (not res!1717299) (not e!2598985))))

(assert (=> b!4186594 (= res!1717299 (matchR!6296 (regex!7652 (rule!10724 (_1!25015 (get!14937 lt!1490995)))) (list!16600 (charsOf!5087 (_1!25015 (get!14937 lt!1490995))))))))

(declare-fun b!4186595 () Bool)

(declare-fun res!1717304 () Bool)

(assert (=> b!4186595 (=> (not res!1717304) (not e!2598985))))

(assert (=> b!4186595 (= res!1717304 (= (value!238614 (_1!25015 (get!14937 lt!1490995))) (apply!10617 (transformation!7652 (rule!10724 (_1!25015 (get!14937 lt!1490995)))) (seqFromList!5677 (originalCharacters!8040 (_1!25015 (get!14937 lt!1490995)))))))))

(declare-fun b!4186596 () Bool)

(assert (=> b!4186596 (= e!2598987 e!2598985)))

(declare-fun res!1717300 () Bool)

(assert (=> b!4186596 (=> (not res!1717300) (not e!2598985))))

(declare-fun isDefined!7338 (Option!9846) Bool)

(assert (=> b!4186596 (= res!1717300 (isDefined!7338 lt!1490995))))

(declare-fun b!4186597 () Bool)

(assert (=> b!4186597 (= e!2598986 call!291994)))

(declare-fun b!4186598 () Bool)

(declare-fun res!1717303 () Bool)

(assert (=> b!4186598 (=> (not res!1717303) (not e!2598985))))

(assert (=> b!4186598 (= res!1717303 (< (size!33751 (_2!25015 (get!14937 lt!1490995))) (size!33751 input!3342)))))

(assert (= (and d!1235367 c!714685) b!4186597))

(assert (= (and d!1235367 (not c!714685)) b!4186592))

(assert (= (or b!4186597 b!4186592) bm!291989))

(assert (= (and d!1235367 (not res!1717302)) b!4186596))

(assert (= (and b!4186596 res!1717300) b!4186590))

(assert (= (and b!4186590 res!1717301) b!4186598))

(assert (= (and b!4186598 res!1717303) b!4186591))

(assert (= (and b!4186591 res!1717305) b!4186595))

(assert (= (and b!4186595 res!1717304) b!4186594))

(assert (= (and b!4186594 res!1717299) b!4186593))

(declare-fun m!4775579 () Bool)

(assert (=> b!4186591 m!4775579))

(declare-fun m!4775581 () Bool)

(assert (=> b!4186591 m!4775581))

(assert (=> b!4186591 m!4775581))

(declare-fun m!4775583 () Bool)

(assert (=> b!4186591 m!4775583))

(assert (=> b!4186591 m!4775583))

(declare-fun m!4775585 () Bool)

(assert (=> b!4186591 m!4775585))

(assert (=> b!4186595 m!4775579))

(declare-fun m!4775587 () Bool)

(assert (=> b!4186595 m!4775587))

(assert (=> b!4186595 m!4775587))

(declare-fun m!4775589 () Bool)

(assert (=> b!4186595 m!4775589))

(assert (=> b!4186594 m!4775579))

(assert (=> b!4186594 m!4775581))

(assert (=> b!4186594 m!4775581))

(assert (=> b!4186594 m!4775583))

(assert (=> b!4186594 m!4775583))

(declare-fun m!4775591 () Bool)

(assert (=> b!4186594 m!4775591))

(assert (=> b!4186593 m!4775579))

(declare-fun m!4775593 () Bool)

(assert (=> b!4186593 m!4775593))

(declare-fun m!4775595 () Bool)

(assert (=> b!4186596 m!4775595))

(declare-fun m!4775597 () Bool)

(assert (=> bm!291989 m!4775597))

(declare-fun m!4775599 () Bool)

(assert (=> b!4186592 m!4775599))

(declare-fun m!4775601 () Bool)

(assert (=> d!1235367 m!4775601))

(assert (=> d!1235367 m!4775203))

(assert (=> d!1235367 m!4775209))

(declare-fun m!4775603 () Bool)

(assert (=> d!1235367 m!4775603))

(assert (=> b!4186590 m!4775579))

(assert (=> b!4186590 m!4775581))

(assert (=> b!4186590 m!4775581))

(assert (=> b!4186590 m!4775583))

(assert (=> b!4186598 m!4775579))

(declare-fun m!4775605 () Bool)

(assert (=> b!4186598 m!4775605))

(assert (=> b!4186598 m!4775191))

(assert (=> b!4186218 d!1235367))

(declare-fun d!1235369 () Bool)

(assert (=> d!1235369 (= (inv!60502 (tag!8516 rBis!167)) (= (mod (str.len (value!238613 (tag!8516 rBis!167))) 2) 0))))

(assert (=> b!4186239 d!1235369))

(declare-fun d!1235371 () Bool)

(declare-fun res!1717308 () Bool)

(declare-fun e!2598990 () Bool)

(assert (=> d!1235371 (=> (not res!1717308) (not e!2598990))))

(declare-fun semiInverseModEq!3316 (Int Int) Bool)

(assert (=> d!1235371 (= res!1717308 (semiInverseModEq!3316 (toChars!10207 (transformation!7652 rBis!167)) (toValue!10348 (transformation!7652 rBis!167))))))

(assert (=> d!1235371 (= (inv!60504 (transformation!7652 rBis!167)) e!2598990)))

(declare-fun b!4186601 () Bool)

(declare-fun equivClasses!3215 (Int Int) Bool)

(assert (=> b!4186601 (= e!2598990 (equivClasses!3215 (toChars!10207 (transformation!7652 rBis!167)) (toValue!10348 (transformation!7652 rBis!167))))))

(assert (= (and d!1235371 res!1717308) b!4186601))

(declare-fun m!4775607 () Bool)

(assert (=> d!1235371 m!4775607))

(declare-fun m!4775609 () Bool)

(assert (=> b!4186601 m!4775609))

(assert (=> b!4186239 d!1235371))

(declare-fun d!1235373 () Bool)

(declare-fun res!1717323 () Bool)

(declare-fun e!2599011 () Bool)

(assert (=> d!1235373 (=> res!1717323 e!2599011)))

(assert (=> d!1235373 (= res!1717323 ((_ is ElementMatch!12557) (regex!7652 r!4142)))))

(assert (=> d!1235373 (= (validRegex!5674 (regex!7652 r!4142)) e!2599011)))

(declare-fun b!4186620 () Bool)

(declare-fun e!2599006 () Bool)

(declare-fun e!2599009 () Bool)

(assert (=> b!4186620 (= e!2599006 e!2599009)))

(declare-fun c!714691 () Bool)

(assert (=> b!4186620 (= c!714691 ((_ is Union!12557) (regex!7652 r!4142)))))

(declare-fun b!4186621 () Bool)

(declare-fun e!2599010 () Bool)

(declare-fun call!292002 () Bool)

(assert (=> b!4186621 (= e!2599010 call!292002)))

(declare-fun bm!291996 () Bool)

(declare-fun call!292001 () Bool)

(assert (=> bm!291996 (= call!292001 (validRegex!5674 (ite c!714691 (regOne!25627 (regex!7652 r!4142)) (regOne!25626 (regex!7652 r!4142)))))))

(declare-fun b!4186622 () Bool)

(declare-fun res!1717322 () Bool)

(declare-fun e!2599005 () Bool)

(assert (=> b!4186622 (=> (not res!1717322) (not e!2599005))))

(assert (=> b!4186622 (= res!1717322 call!292001)))

(assert (=> b!4186622 (= e!2599009 e!2599005)))

(declare-fun b!4186623 () Bool)

(declare-fun e!2599007 () Bool)

(declare-fun call!292003 () Bool)

(assert (=> b!4186623 (= e!2599007 call!292003)))

(declare-fun b!4186624 () Bool)

(declare-fun res!1717321 () Bool)

(declare-fun e!2599008 () Bool)

(assert (=> b!4186624 (=> res!1717321 e!2599008)))

(assert (=> b!4186624 (= res!1717321 (not ((_ is Concat!20440) (regex!7652 r!4142))))))

(assert (=> b!4186624 (= e!2599009 e!2599008)))

(declare-fun b!4186625 () Bool)

(assert (=> b!4186625 (= e!2599008 e!2599007)))

(declare-fun res!1717319 () Bool)

(assert (=> b!4186625 (=> (not res!1717319) (not e!2599007))))

(assert (=> b!4186625 (= res!1717319 call!292001)))

(declare-fun b!4186626 () Bool)

(assert (=> b!4186626 (= e!2599005 call!292003)))

(declare-fun b!4186627 () Bool)

(assert (=> b!4186627 (= e!2599006 e!2599010)))

(declare-fun res!1717320 () Bool)

(declare-fun nullable!4407 (Regex!12557) Bool)

(assert (=> b!4186627 (= res!1717320 (not (nullable!4407 (reg!12886 (regex!7652 r!4142)))))))

(assert (=> b!4186627 (=> (not res!1717320) (not e!2599010))))

(declare-fun b!4186628 () Bool)

(assert (=> b!4186628 (= e!2599011 e!2599006)))

(declare-fun c!714690 () Bool)

(assert (=> b!4186628 (= c!714690 ((_ is Star!12557) (regex!7652 r!4142)))))

(declare-fun bm!291997 () Bool)

(assert (=> bm!291997 (= call!292002 (validRegex!5674 (ite c!714690 (reg!12886 (regex!7652 r!4142)) (ite c!714691 (regTwo!25627 (regex!7652 r!4142)) (regTwo!25626 (regex!7652 r!4142))))))))

(declare-fun bm!291998 () Bool)

(assert (=> bm!291998 (= call!292003 call!292002)))

(assert (= (and d!1235373 (not res!1717323)) b!4186628))

(assert (= (and b!4186628 c!714690) b!4186627))

(assert (= (and b!4186628 (not c!714690)) b!4186620))

(assert (= (and b!4186627 res!1717320) b!4186621))

(assert (= (and b!4186620 c!714691) b!4186622))

(assert (= (and b!4186620 (not c!714691)) b!4186624))

(assert (= (and b!4186622 res!1717322) b!4186626))

(assert (= (and b!4186624 (not res!1717321)) b!4186625))

(assert (= (and b!4186625 res!1717319) b!4186623))

(assert (= (or b!4186626 b!4186623) bm!291998))

(assert (= (or b!4186622 b!4186625) bm!291996))

(assert (= (or b!4186621 bm!291998) bm!291997))

(declare-fun m!4775611 () Bool)

(assert (=> bm!291996 m!4775611))

(declare-fun m!4775613 () Bool)

(assert (=> b!4186627 m!4775613))

(declare-fun m!4775615 () Bool)

(assert (=> bm!291997 m!4775615))

(assert (=> b!4186216 d!1235373))

(declare-fun b!4186657 () Bool)

(declare-fun e!2599032 () Bool)

(assert (=> b!4186657 (= e!2599032 (not (= (head!8884 p!2959) (c!714637 (regex!7652 r!4142)))))))

(declare-fun bm!292001 () Bool)

(declare-fun call!292006 () Bool)

(assert (=> bm!292001 (= call!292006 (isEmpty!27201 p!2959))))

(declare-fun b!4186658 () Bool)

(declare-fun res!1717346 () Bool)

(declare-fun e!2599027 () Bool)

(assert (=> b!4186658 (=> (not res!1717346) (not e!2599027))))

(assert (=> b!4186658 (= res!1717346 (isEmpty!27201 (tail!6731 p!2959)))))

(declare-fun b!4186659 () Bool)

(declare-fun e!2599029 () Bool)

(declare-fun lt!1491000 () Bool)

(assert (=> b!4186659 (= e!2599029 (= lt!1491000 call!292006))))

(declare-fun b!4186660 () Bool)

(declare-fun res!1717344 () Bool)

(declare-fun e!2599028 () Bool)

(assert (=> b!4186660 (=> res!1717344 e!2599028)))

(assert (=> b!4186660 (= res!1717344 (not ((_ is ElementMatch!12557) (regex!7652 r!4142))))))

(declare-fun e!2599030 () Bool)

(assert (=> b!4186660 (= e!2599030 e!2599028)))

(declare-fun b!4186661 () Bool)

(assert (=> b!4186661 (= e!2599027 (= (head!8884 p!2959) (c!714637 (regex!7652 r!4142))))))

(declare-fun b!4186662 () Bool)

(declare-fun e!2599031 () Bool)

(assert (=> b!4186662 (= e!2599031 e!2599032)))

(declare-fun res!1717345 () Bool)

(assert (=> b!4186662 (=> res!1717345 e!2599032)))

(assert (=> b!4186662 (= res!1717345 call!292006)))

(declare-fun b!4186663 () Bool)

(declare-fun res!1717342 () Bool)

(assert (=> b!4186663 (=> res!1717342 e!2599028)))

(assert (=> b!4186663 (= res!1717342 e!2599027)))

(declare-fun res!1717340 () Bool)

(assert (=> b!4186663 (=> (not res!1717340) (not e!2599027))))

(assert (=> b!4186663 (= res!1717340 lt!1491000)))

(declare-fun b!4186664 () Bool)

(declare-fun e!2599026 () Bool)

(assert (=> b!4186664 (= e!2599026 (nullable!4407 (regex!7652 r!4142)))))

(declare-fun d!1235375 () Bool)

(assert (=> d!1235375 e!2599029))

(declare-fun c!714698 () Bool)

(assert (=> d!1235375 (= c!714698 ((_ is EmptyExpr!12557) (regex!7652 r!4142)))))

(assert (=> d!1235375 (= lt!1491000 e!2599026)))

(declare-fun c!714700 () Bool)

(assert (=> d!1235375 (= c!714700 (isEmpty!27201 p!2959))))

(assert (=> d!1235375 (validRegex!5674 (regex!7652 r!4142))))

(assert (=> d!1235375 (= (matchR!6296 (regex!7652 r!4142) p!2959) lt!1491000)))

(declare-fun b!4186665 () Bool)

(assert (=> b!4186665 (= e!2599030 (not lt!1491000))))

(declare-fun b!4186666 () Bool)

(declare-fun res!1717347 () Bool)

(assert (=> b!4186666 (=> res!1717347 e!2599032)))

(assert (=> b!4186666 (= res!1717347 (not (isEmpty!27201 (tail!6731 p!2959))))))

(declare-fun b!4186667 () Bool)

(assert (=> b!4186667 (= e!2599028 e!2599031)))

(declare-fun res!1717343 () Bool)

(assert (=> b!4186667 (=> (not res!1717343) (not e!2599031))))

(assert (=> b!4186667 (= res!1717343 (not lt!1491000))))

(declare-fun b!4186668 () Bool)

(declare-fun derivativeStep!3797 (Regex!12557 C!25304) Regex!12557)

(assert (=> b!4186668 (= e!2599026 (matchR!6296 (derivativeStep!3797 (regex!7652 r!4142) (head!8884 p!2959)) (tail!6731 p!2959)))))

(declare-fun b!4186669 () Bool)

(declare-fun res!1717341 () Bool)

(assert (=> b!4186669 (=> (not res!1717341) (not e!2599027))))

(assert (=> b!4186669 (= res!1717341 (not call!292006))))

(declare-fun b!4186670 () Bool)

(assert (=> b!4186670 (= e!2599029 e!2599030)))

(declare-fun c!714699 () Bool)

(assert (=> b!4186670 (= c!714699 ((_ is EmptyLang!12557) (regex!7652 r!4142)))))

(assert (= (and d!1235375 c!714700) b!4186664))

(assert (= (and d!1235375 (not c!714700)) b!4186668))

(assert (= (and d!1235375 c!714698) b!4186659))

(assert (= (and d!1235375 (not c!714698)) b!4186670))

(assert (= (and b!4186670 c!714699) b!4186665))

(assert (= (and b!4186670 (not c!714699)) b!4186660))

(assert (= (and b!4186660 (not res!1717344)) b!4186663))

(assert (= (and b!4186663 res!1717340) b!4186669))

(assert (= (and b!4186669 res!1717341) b!4186658))

(assert (= (and b!4186658 res!1717346) b!4186661))

(assert (= (and b!4186663 (not res!1717342)) b!4186667))

(assert (= (and b!4186667 res!1717343) b!4186662))

(assert (= (and b!4186662 (not res!1717345)) b!4186666))

(assert (= (and b!4186666 (not res!1717347)) b!4186657))

(assert (= (or b!4186659 b!4186662 b!4186669) bm!292001))

(declare-fun m!4775617 () Bool)

(assert (=> b!4186664 m!4775617))

(declare-fun m!4775619 () Bool)

(assert (=> b!4186658 m!4775619))

(assert (=> b!4186658 m!4775619))

(declare-fun m!4775621 () Bool)

(assert (=> b!4186658 m!4775621))

(declare-fun m!4775623 () Bool)

(assert (=> bm!292001 m!4775623))

(assert (=> b!4186666 m!4775619))

(assert (=> b!4186666 m!4775619))

(assert (=> b!4186666 m!4775621))

(declare-fun m!4775625 () Bool)

(assert (=> b!4186657 m!4775625))

(assert (=> b!4186668 m!4775625))

(assert (=> b!4186668 m!4775625))

(declare-fun m!4775627 () Bool)

(assert (=> b!4186668 m!4775627))

(assert (=> b!4186668 m!4775619))

(assert (=> b!4186668 m!4775627))

(assert (=> b!4186668 m!4775619))

(declare-fun m!4775629 () Bool)

(assert (=> b!4186668 m!4775629))

(assert (=> b!4186661 m!4775625))

(assert (=> d!1235375 m!4775623))

(assert (=> d!1235375 m!4775183))

(assert (=> b!4186237 d!1235375))

(declare-fun d!1235377 () Bool)

(assert (=> d!1235377 (= (inv!60502 (tag!8516 r!4142)) (= (mod (str.len (value!238613 (tag!8516 r!4142))) 2) 0))))

(assert (=> b!4186220 d!1235377))

(declare-fun d!1235379 () Bool)

(declare-fun res!1717348 () Bool)

(declare-fun e!2599033 () Bool)

(assert (=> d!1235379 (=> (not res!1717348) (not e!2599033))))

(assert (=> d!1235379 (= res!1717348 (semiInverseModEq!3316 (toChars!10207 (transformation!7652 r!4142)) (toValue!10348 (transformation!7652 r!4142))))))

(assert (=> d!1235379 (= (inv!60504 (transformation!7652 r!4142)) e!2599033)))

(declare-fun b!4186671 () Bool)

(assert (=> b!4186671 (= e!2599033 (equivClasses!3215 (toChars!10207 (transformation!7652 r!4142)) (toValue!10348 (transformation!7652 r!4142))))))

(assert (= (and d!1235379 res!1717348) b!4186671))

(declare-fun m!4775631 () Bool)

(assert (=> d!1235379 m!4775631))

(declare-fun m!4775633 () Bool)

(assert (=> b!4186671 m!4775633))

(assert (=> b!4186220 d!1235379))

(declare-fun d!1235381 () Bool)

(assert (=> d!1235381 (= (isEmpty!27198 rules!3843) ((_ is Nil!45957) rules!3843))))

(assert (=> b!4186229 d!1235381))

(declare-fun d!1235383 () Bool)

(declare-fun e!2599038 () Bool)

(assert (=> d!1235383 e!2599038))

(declare-fun res!1717354 () Bool)

(assert (=> d!1235383 (=> (not res!1717354) (not e!2599038))))

(declare-fun lt!1491003 () List!46080)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7149 (List!46080) (InoxSet C!25304))

(assert (=> d!1235383 (= res!1717354 (= (content!7149 lt!1491003) ((_ map or) (content!7149 p!2959) (content!7149 lt!1490863))))))

(declare-fun e!2599039 () List!46080)

(assert (=> d!1235383 (= lt!1491003 e!2599039)))

(declare-fun c!714703 () Bool)

(assert (=> d!1235383 (= c!714703 ((_ is Nil!45956) p!2959))))

(assert (=> d!1235383 (= (++!11724 p!2959 lt!1490863) lt!1491003)))

(declare-fun b!4186680 () Bool)

(assert (=> b!4186680 (= e!2599039 lt!1490863)))

(declare-fun b!4186682 () Bool)

(declare-fun res!1717353 () Bool)

(assert (=> b!4186682 (=> (not res!1717353) (not e!2599038))))

(assert (=> b!4186682 (= res!1717353 (= (size!33751 lt!1491003) (+ (size!33751 p!2959) (size!33751 lt!1490863))))))

(declare-fun b!4186683 () Bool)

(assert (=> b!4186683 (= e!2599038 (or (not (= lt!1490863 Nil!45956)) (= lt!1491003 p!2959)))))

(declare-fun b!4186681 () Bool)

(assert (=> b!4186681 (= e!2599039 (Cons!45956 (h!51376 p!2959) (++!11724 (t!345627 p!2959) lt!1490863)))))

(assert (= (and d!1235383 c!714703) b!4186680))

(assert (= (and d!1235383 (not c!714703)) b!4186681))

(assert (= (and d!1235383 res!1717354) b!4186682))

(assert (= (and b!4186682 res!1717353) b!4186683))

(declare-fun m!4775635 () Bool)

(assert (=> d!1235383 m!4775635))

(declare-fun m!4775637 () Bool)

(assert (=> d!1235383 m!4775637))

(declare-fun m!4775639 () Bool)

(assert (=> d!1235383 m!4775639))

(declare-fun m!4775641 () Bool)

(assert (=> b!4186682 m!4775641))

(assert (=> b!4186682 m!4775211))

(declare-fun m!4775643 () Bool)

(assert (=> b!4186682 m!4775643))

(declare-fun m!4775645 () Bool)

(assert (=> b!4186681 m!4775645))

(assert (=> b!4186230 d!1235383))

(declare-fun b!4186684 () Bool)

(declare-fun e!2599041 () Bool)

(declare-fun e!2599042 () Bool)

(assert (=> b!4186684 (= e!2599041 e!2599042)))

(declare-fun res!1717357 () Bool)

(assert (=> b!4186684 (=> (not res!1717357) (not e!2599042))))

(assert (=> b!4186684 (= res!1717357 (not ((_ is Nil!45956) input!3342)))))

(declare-fun b!4186687 () Bool)

(declare-fun e!2599040 () Bool)

(assert (=> b!4186687 (= e!2599040 (>= (size!33751 input!3342) (size!33751 pBis!107)))))

(declare-fun b!4186685 () Bool)

(declare-fun res!1717356 () Bool)

(assert (=> b!4186685 (=> (not res!1717356) (not e!2599042))))

(assert (=> b!4186685 (= res!1717356 (= (head!8884 pBis!107) (head!8884 input!3342)))))

(declare-fun b!4186686 () Bool)

(assert (=> b!4186686 (= e!2599042 (isPrefix!4509 (tail!6731 pBis!107) (tail!6731 input!3342)))))

(declare-fun d!1235385 () Bool)

(assert (=> d!1235385 e!2599040))

(declare-fun res!1717358 () Bool)

(assert (=> d!1235385 (=> res!1717358 e!2599040)))

(declare-fun lt!1491004 () Bool)

(assert (=> d!1235385 (= res!1717358 (not lt!1491004))))

(assert (=> d!1235385 (= lt!1491004 e!2599041)))

(declare-fun res!1717355 () Bool)

(assert (=> d!1235385 (=> res!1717355 e!2599041)))

(assert (=> d!1235385 (= res!1717355 ((_ is Nil!45956) pBis!107))))

(assert (=> d!1235385 (= (isPrefix!4509 pBis!107 input!3342) lt!1491004)))

(assert (= (and d!1235385 (not res!1717355)) b!4186684))

(assert (= (and b!4186684 res!1717357) b!4186685))

(assert (= (and b!4186685 res!1717356) b!4186686))

(assert (= (and d!1235385 (not res!1717358)) b!4186687))

(assert (=> b!4186687 m!4775191))

(assert (=> b!4186687 m!4775185))

(declare-fun m!4775647 () Bool)

(assert (=> b!4186685 m!4775647))

(assert (=> b!4186685 m!4775247))

(declare-fun m!4775649 () Bool)

(assert (=> b!4186686 m!4775649))

(assert (=> b!4186686 m!4775243))

(assert (=> b!4186686 m!4775649))

(assert (=> b!4186686 m!4775243))

(declare-fun m!4775651 () Bool)

(assert (=> b!4186686 m!4775651))

(assert (=> b!4186219 d!1235385))

(declare-fun b!4186688 () Bool)

(declare-fun e!2599044 () Bool)

(declare-fun e!2599045 () Bool)

(assert (=> b!4186688 (= e!2599044 e!2599045)))

(declare-fun res!1717361 () Bool)

(assert (=> b!4186688 (=> (not res!1717361) (not e!2599045))))

(assert (=> b!4186688 (= res!1717361 (not ((_ is Nil!45956) input!3342)))))

(declare-fun b!4186691 () Bool)

(declare-fun e!2599043 () Bool)

(assert (=> b!4186691 (= e!2599043 (>= (size!33751 input!3342) (size!33751 p!2959)))))

(declare-fun b!4186689 () Bool)

(declare-fun res!1717360 () Bool)

(assert (=> b!4186689 (=> (not res!1717360) (not e!2599045))))

(assert (=> b!4186689 (= res!1717360 (= (head!8884 p!2959) (head!8884 input!3342)))))

(declare-fun b!4186690 () Bool)

(assert (=> b!4186690 (= e!2599045 (isPrefix!4509 (tail!6731 p!2959) (tail!6731 input!3342)))))

(declare-fun d!1235387 () Bool)

(assert (=> d!1235387 e!2599043))

(declare-fun res!1717362 () Bool)

(assert (=> d!1235387 (=> res!1717362 e!2599043)))

(declare-fun lt!1491005 () Bool)

(assert (=> d!1235387 (= res!1717362 (not lt!1491005))))

(assert (=> d!1235387 (= lt!1491005 e!2599044)))

(declare-fun res!1717359 () Bool)

(assert (=> d!1235387 (=> res!1717359 e!2599044)))

(assert (=> d!1235387 (= res!1717359 ((_ is Nil!45956) p!2959))))

(assert (=> d!1235387 (= (isPrefix!4509 p!2959 input!3342) lt!1491005)))

(assert (= (and d!1235387 (not res!1717359)) b!4186688))

(assert (= (and b!4186688 res!1717361) b!4186689))

(assert (= (and b!4186689 res!1717360) b!4186690))

(assert (= (and d!1235387 (not res!1717362)) b!4186691))

(assert (=> b!4186691 m!4775191))

(assert (=> b!4186691 m!4775211))

(assert (=> b!4186689 m!4775625))

(assert (=> b!4186689 m!4775247))

(assert (=> b!4186690 m!4775619))

(assert (=> b!4186690 m!4775243))

(assert (=> b!4186690 m!4775619))

(assert (=> b!4186690 m!4775243))

(declare-fun m!4775653 () Bool)

(assert (=> b!4186690 m!4775653))

(assert (=> b!4186234 d!1235387))

(declare-fun d!1235389 () Bool)

(declare-fun lt!1491008 () Bool)

(declare-fun content!7150 (List!46081) (InoxSet Rule!15104))

(assert (=> d!1235389 (= lt!1491008 (select (content!7150 rules!3843) rBis!167))))

(declare-fun e!2599050 () Bool)

(assert (=> d!1235389 (= lt!1491008 e!2599050)))

(declare-fun res!1717367 () Bool)

(assert (=> d!1235389 (=> (not res!1717367) (not e!2599050))))

(assert (=> d!1235389 (= res!1717367 ((_ is Cons!45957) rules!3843))))

(assert (=> d!1235389 (= (contains!9461 rules!3843 rBis!167) lt!1491008)))

(declare-fun b!4186696 () Bool)

(declare-fun e!2599051 () Bool)

(assert (=> b!4186696 (= e!2599050 e!2599051)))

(declare-fun res!1717368 () Bool)

(assert (=> b!4186696 (=> res!1717368 e!2599051)))

(assert (=> b!4186696 (= res!1717368 (= (h!51377 rules!3843) rBis!167))))

(declare-fun b!4186697 () Bool)

(assert (=> b!4186697 (= e!2599051 (contains!9461 (t!345628 rules!3843) rBis!167))))

(assert (= (and d!1235389 res!1717367) b!4186696))

(assert (= (and b!4186696 (not res!1717368)) b!4186697))

(declare-fun m!4775655 () Bool)

(assert (=> d!1235389 m!4775655))

(declare-fun m!4775657 () Bool)

(assert (=> d!1235389 m!4775657))

(declare-fun m!4775659 () Bool)

(assert (=> b!4186697 m!4775659))

(assert (=> b!4186223 d!1235389))

(declare-fun d!1235391 () Bool)

(assert (=> d!1235391 (ruleValid!3370 thiss!25986 rBis!167)))

(declare-fun lt!1491011 () Unit!65047)

(declare-fun choose!25633 (LexerInterface!7245 Rule!15104 List!46081) Unit!65047)

(assert (=> d!1235391 (= lt!1491011 (choose!25633 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1235391 (contains!9461 rules!3843 rBis!167)))

(assert (=> d!1235391 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2376 thiss!25986 rBis!167 rules!3843) lt!1491011)))

(declare-fun bs!596536 () Bool)

(assert (= bs!596536 d!1235391))

(assert (=> bs!596536 m!4775179))

(declare-fun m!4775661 () Bool)

(assert (=> bs!596536 m!4775661))

(assert (=> bs!596536 m!4775235))

(assert (=> b!4186232 d!1235391))

(declare-fun d!1235393 () Bool)

(assert (=> d!1235393 (= (isEmpty!27199 lt!1490872) (not ((_ is Some!9845) lt!1490872)))))

(assert (=> b!4186232 d!1235393))

(declare-fun b!4186698 () Bool)

(declare-fun res!1717375 () Bool)

(declare-fun e!2599053 () Bool)

(assert (=> b!4186698 (=> (not res!1717375) (not e!2599053))))

(declare-fun lt!1491015 () Option!9846)

(assert (=> b!4186698 (= res!1717375 (= (++!11724 (list!16600 (charsOf!5087 (_1!25015 (get!14937 lt!1491015)))) (_2!25015 (get!14937 lt!1491015))) input!3342))))

(declare-fun b!4186700 () Bool)

(declare-fun res!1717372 () Bool)

(assert (=> b!4186700 (=> (not res!1717372) (not e!2599053))))

(assert (=> b!4186700 (= res!1717372 (= (value!238614 (_1!25015 (get!14937 lt!1491015))) (apply!10617 (transformation!7652 (rule!10724 (_1!25015 (get!14937 lt!1491015)))) (seqFromList!5677 (originalCharacters!8040 (_1!25015 (get!14937 lt!1491015)))))))))

(declare-fun b!4186701 () Bool)

(declare-fun e!2599054 () Option!9846)

(declare-fun lt!1491013 () tuple2!43766)

(assert (=> b!4186701 (= e!2599054 (Some!9845 (tuple2!43763 (Token!14019 (apply!10617 (transformation!7652 rBis!167) (seqFromList!5677 (_1!25017 lt!1491013))) rBis!167 (size!33753 (seqFromList!5677 (_1!25017 lt!1491013))) (_1!25017 lt!1491013)) (_2!25017 lt!1491013))))))

(declare-fun lt!1491014 () Unit!65047)

(assert (=> b!4186701 (= lt!1491014 (longestMatchIsAcceptedByMatchOrIsEmpty!1570 (regex!7652 rBis!167) input!3342))))

(declare-fun res!1717371 () Bool)

(assert (=> b!4186701 (= res!1717371 (isEmpty!27201 (_1!25017 (findLongestMatchInner!1597 (regex!7652 rBis!167) Nil!45956 (size!33751 Nil!45956) input!3342 input!3342 (size!33751 input!3342)))))))

(declare-fun e!2599052 () Bool)

(assert (=> b!4186701 (=> res!1717371 e!2599052)))

(assert (=> b!4186701 e!2599052))

(declare-fun lt!1491016 () Unit!65047)

(assert (=> b!4186701 (= lt!1491016 lt!1491014)))

(declare-fun lt!1491012 () Unit!65047)

(assert (=> b!4186701 (= lt!1491012 (lemmaSemiInverse!2418 (transformation!7652 rBis!167) (seqFromList!5677 (_1!25017 lt!1491013))))))

(declare-fun b!4186702 () Bool)

(assert (=> b!4186702 (= e!2599053 (= (size!33750 (_1!25015 (get!14937 lt!1491015))) (size!33751 (originalCharacters!8040 (_1!25015 (get!14937 lt!1491015))))))))

(declare-fun b!4186703 () Bool)

(declare-fun res!1717374 () Bool)

(assert (=> b!4186703 (=> (not res!1717374) (not e!2599053))))

(assert (=> b!4186703 (= res!1717374 (= (rule!10724 (_1!25015 (get!14937 lt!1491015))) rBis!167))))

(declare-fun b!4186704 () Bool)

(declare-fun res!1717373 () Bool)

(assert (=> b!4186704 (=> (not res!1717373) (not e!2599053))))

(assert (=> b!4186704 (= res!1717373 (< (size!33751 (_2!25015 (get!14937 lt!1491015))) (size!33751 input!3342)))))

(declare-fun b!4186705 () Bool)

(declare-fun e!2599055 () Bool)

(assert (=> b!4186705 (= e!2599055 e!2599053)))

(declare-fun res!1717369 () Bool)

(assert (=> b!4186705 (=> (not res!1717369) (not e!2599053))))

(assert (=> b!4186705 (= res!1717369 (matchR!6296 (regex!7652 rBis!167) (list!16600 (charsOf!5087 (_1!25015 (get!14937 lt!1491015))))))))

(declare-fun b!4186706 () Bool)

(assert (=> b!4186706 (= e!2599052 (matchR!6296 (regex!7652 rBis!167) (_1!25017 (findLongestMatchInner!1597 (regex!7652 rBis!167) Nil!45956 (size!33751 Nil!45956) input!3342 input!3342 (size!33751 input!3342)))))))

(declare-fun d!1235395 () Bool)

(assert (=> d!1235395 e!2599055))

(declare-fun res!1717370 () Bool)

(assert (=> d!1235395 (=> res!1717370 e!2599055)))

(assert (=> d!1235395 (= res!1717370 (isEmpty!27199 lt!1491015))))

(assert (=> d!1235395 (= lt!1491015 e!2599054)))

(declare-fun c!714704 () Bool)

(assert (=> d!1235395 (= c!714704 (isEmpty!27201 (_1!25017 lt!1491013)))))

(assert (=> d!1235395 (= lt!1491013 (findLongestMatch!1510 (regex!7652 rBis!167) input!3342))))

(assert (=> d!1235395 (ruleValid!3370 thiss!25986 rBis!167)))

(assert (=> d!1235395 (= (maxPrefixOneRule!3254 thiss!25986 rBis!167 input!3342) lt!1491015)))

(declare-fun b!4186699 () Bool)

(assert (=> b!4186699 (= e!2599054 None!9845)))

(assert (= (and d!1235395 c!714704) b!4186699))

(assert (= (and d!1235395 (not c!714704)) b!4186701))

(assert (= (and b!4186701 (not res!1717371)) b!4186706))

(assert (= (and d!1235395 (not res!1717370)) b!4186705))

(assert (= (and b!4186705 res!1717369) b!4186698))

(assert (= (and b!4186698 res!1717375) b!4186704))

(assert (= (and b!4186704 res!1717373) b!4186703))

(assert (= (and b!4186703 res!1717374) b!4186700))

(assert (= (and b!4186700 res!1717372) b!4186702))

(declare-fun m!4775663 () Bool)

(assert (=> b!4186700 m!4775663))

(declare-fun m!4775665 () Bool)

(assert (=> b!4186700 m!4775665))

(assert (=> b!4186700 m!4775665))

(declare-fun m!4775667 () Bool)

(assert (=> b!4186700 m!4775667))

(assert (=> b!4186704 m!4775663))

(declare-fun m!4775669 () Bool)

(assert (=> b!4186704 m!4775669))

(assert (=> b!4186704 m!4775191))

(assert (=> b!4186706 m!4775535))

(assert (=> b!4186706 m!4775191))

(assert (=> b!4186706 m!4775535))

(assert (=> b!4186706 m!4775191))

(declare-fun m!4775671 () Bool)

(assert (=> b!4186706 m!4775671))

(declare-fun m!4775673 () Bool)

(assert (=> b!4186706 m!4775673))

(assert (=> b!4186705 m!4775663))

(declare-fun m!4775675 () Bool)

(assert (=> b!4186705 m!4775675))

(assert (=> b!4186705 m!4775675))

(declare-fun m!4775677 () Bool)

(assert (=> b!4186705 m!4775677))

(assert (=> b!4186705 m!4775677))

(declare-fun m!4775679 () Bool)

(assert (=> b!4186705 m!4775679))

(declare-fun m!4775681 () Bool)

(assert (=> b!4186701 m!4775681))

(declare-fun m!4775683 () Bool)

(assert (=> b!4186701 m!4775683))

(declare-fun m!4775685 () Bool)

(assert (=> b!4186701 m!4775685))

(assert (=> b!4186701 m!4775535))

(assert (=> b!4186701 m!4775191))

(assert (=> b!4186701 m!4775671))

(assert (=> b!4186701 m!4775683))

(declare-fun m!4775687 () Bool)

(assert (=> b!4186701 m!4775687))

(assert (=> b!4186701 m!4775191))

(assert (=> b!4186701 m!4775683))

(declare-fun m!4775689 () Bool)

(assert (=> b!4186701 m!4775689))

(assert (=> b!4186701 m!4775683))

(declare-fun m!4775691 () Bool)

(assert (=> b!4186701 m!4775691))

(assert (=> b!4186701 m!4775535))

(declare-fun m!4775693 () Bool)

(assert (=> d!1235395 m!4775693))

(declare-fun m!4775695 () Bool)

(assert (=> d!1235395 m!4775695))

(declare-fun m!4775697 () Bool)

(assert (=> d!1235395 m!4775697))

(assert (=> d!1235395 m!4775179))

(assert (=> b!4186703 m!4775663))

(assert (=> b!4186698 m!4775663))

(assert (=> b!4186698 m!4775675))

(assert (=> b!4186698 m!4775675))

(assert (=> b!4186698 m!4775677))

(assert (=> b!4186698 m!4775677))

(declare-fun m!4775699 () Bool)

(assert (=> b!4186698 m!4775699))

(assert (=> b!4186702 m!4775663))

(declare-fun m!4775701 () Bool)

(assert (=> b!4186702 m!4775701))

(assert (=> b!4186232 d!1235395))

(declare-fun d!1235397 () Bool)

(assert (=> d!1235397 (<= (size!33751 pBis!107) (size!33751 input!3342))))

(declare-fun lt!1491019 () Unit!65047)

(declare-fun choose!25634 (List!46080 List!46080) Unit!65047)

(assert (=> d!1235397 (= lt!1491019 (choose!25634 pBis!107 input!3342))))

(assert (=> d!1235397 (isPrefix!4509 pBis!107 input!3342)))

(assert (=> d!1235397 (= (lemmaIsPrefixThenSmallerEqSize!539 pBis!107 input!3342) lt!1491019)))

(declare-fun bs!596537 () Bool)

(assert (= bs!596537 d!1235397))

(assert (=> bs!596537 m!4775185))

(assert (=> bs!596537 m!4775191))

(declare-fun m!4775703 () Bool)

(assert (=> bs!596537 m!4775703))

(assert (=> bs!596537 m!4775163))

(assert (=> b!4186232 d!1235397))

(declare-fun d!1235399 () Bool)

(declare-fun lt!1491020 () Int)

(assert (=> d!1235399 (>= lt!1491020 0)))

(declare-fun e!2599056 () Int)

(assert (=> d!1235399 (= lt!1491020 e!2599056)))

(declare-fun c!714705 () Bool)

(assert (=> d!1235399 (= c!714705 ((_ is Nil!45956) input!3342))))

(assert (=> d!1235399 (= (size!33751 input!3342) lt!1491020)))

(declare-fun b!4186707 () Bool)

(assert (=> b!4186707 (= e!2599056 0)))

(declare-fun b!4186708 () Bool)

(assert (=> b!4186708 (= e!2599056 (+ 1 (size!33751 (t!345627 input!3342))))))

(assert (= (and d!1235399 c!714705) b!4186707))

(assert (= (and d!1235399 (not c!714705)) b!4186708))

(declare-fun m!4775705 () Bool)

(assert (=> b!4186708 m!4775705))

(assert (=> b!4186232 d!1235399))

(declare-fun d!1235401 () Bool)

(declare-fun res!1717380 () Bool)

(declare-fun e!2599059 () Bool)

(assert (=> d!1235401 (=> (not res!1717380) (not e!2599059))))

(assert (=> d!1235401 (= res!1717380 (validRegex!5674 (regex!7652 rBis!167)))))

(assert (=> d!1235401 (= (ruleValid!3370 thiss!25986 rBis!167) e!2599059)))

(declare-fun b!4186713 () Bool)

(declare-fun res!1717381 () Bool)

(assert (=> b!4186713 (=> (not res!1717381) (not e!2599059))))

(assert (=> b!4186713 (= res!1717381 (not (nullable!4407 (regex!7652 rBis!167))))))

(declare-fun b!4186714 () Bool)

(assert (=> b!4186714 (= e!2599059 (not (= (tag!8516 rBis!167) (String!53277 ""))))))

(assert (= (and d!1235401 res!1717380) b!4186713))

(assert (= (and b!4186713 res!1717381) b!4186714))

(declare-fun m!4775707 () Bool)

(assert (=> d!1235401 m!4775707))

(declare-fun m!4775709 () Bool)

(assert (=> b!4186713 m!4775709))

(assert (=> b!4186221 d!1235401))

(declare-fun d!1235403 () Bool)

(declare-fun lt!1491021 () Bool)

(assert (=> d!1235403 (= lt!1491021 (select (content!7150 rules!3843) r!4142))))

(declare-fun e!2599060 () Bool)

(assert (=> d!1235403 (= lt!1491021 e!2599060)))

(declare-fun res!1717382 () Bool)

(assert (=> d!1235403 (=> (not res!1717382) (not e!2599060))))

(assert (=> d!1235403 (= res!1717382 ((_ is Cons!45957) rules!3843))))

(assert (=> d!1235403 (= (contains!9461 rules!3843 r!4142) lt!1491021)))

(declare-fun b!4186715 () Bool)

(declare-fun e!2599061 () Bool)

(assert (=> b!4186715 (= e!2599060 e!2599061)))

(declare-fun res!1717383 () Bool)

(assert (=> b!4186715 (=> res!1717383 e!2599061)))

(assert (=> b!4186715 (= res!1717383 (= (h!51377 rules!3843) r!4142))))

(declare-fun b!4186716 () Bool)

(assert (=> b!4186716 (= e!2599061 (contains!9461 (t!345628 rules!3843) r!4142))))

(assert (= (and d!1235403 res!1717382) b!4186715))

(assert (= (and b!4186715 (not res!1717383)) b!4186716))

(assert (=> d!1235403 m!4775655))

(declare-fun m!4775711 () Bool)

(assert (=> d!1235403 m!4775711))

(declare-fun m!4775713 () Bool)

(assert (=> b!4186716 m!4775713))

(assert (=> b!4186222 d!1235403))

(declare-fun d!1235405 () Bool)

(assert (=> d!1235405 (= (inv!60502 (tag!8516 (h!51377 rules!3843))) (= (mod (str.len (value!238613 (tag!8516 (h!51377 rules!3843)))) 2) 0))))

(assert (=> b!4186236 d!1235405))

(declare-fun d!1235407 () Bool)

(declare-fun res!1717384 () Bool)

(declare-fun e!2599062 () Bool)

(assert (=> d!1235407 (=> (not res!1717384) (not e!2599062))))

(assert (=> d!1235407 (= res!1717384 (semiInverseModEq!3316 (toChars!10207 (transformation!7652 (h!51377 rules!3843))) (toValue!10348 (transformation!7652 (h!51377 rules!3843)))))))

(assert (=> d!1235407 (= (inv!60504 (transformation!7652 (h!51377 rules!3843))) e!2599062)))

(declare-fun b!4186717 () Bool)

(assert (=> b!4186717 (= e!2599062 (equivClasses!3215 (toChars!10207 (transformation!7652 (h!51377 rules!3843))) (toValue!10348 (transformation!7652 (h!51377 rules!3843)))))))

(assert (= (and d!1235407 res!1717384) b!4186717))

(declare-fun m!4775715 () Bool)

(assert (=> d!1235407 m!4775715))

(declare-fun m!4775717 () Bool)

(assert (=> b!4186717 m!4775717))

(assert (=> b!4186236 d!1235407))

(declare-fun d!1235409 () Bool)

(declare-fun lt!1491022 () Int)

(assert (=> d!1235409 (>= lt!1491022 0)))

(declare-fun e!2599063 () Int)

(assert (=> d!1235409 (= lt!1491022 e!2599063)))

(declare-fun c!714706 () Bool)

(assert (=> d!1235409 (= c!714706 ((_ is Nil!45956) pBis!107))))

(assert (=> d!1235409 (= (size!33751 pBis!107) lt!1491022)))

(declare-fun b!4186718 () Bool)

(assert (=> b!4186718 (= e!2599063 0)))

(declare-fun b!4186719 () Bool)

(assert (=> b!4186719 (= e!2599063 (+ 1 (size!33751 (t!345627 pBis!107))))))

(assert (= (and d!1235409 c!714706) b!4186718))

(assert (= (and d!1235409 (not c!714706)) b!4186719))

(declare-fun m!4775719 () Bool)

(assert (=> b!4186719 m!4775719))

(assert (=> b!4186225 d!1235409))

(declare-fun d!1235411 () Bool)

(declare-fun res!1717385 () Bool)

(declare-fun e!2599064 () Bool)

(assert (=> d!1235411 (=> (not res!1717385) (not e!2599064))))

(assert (=> d!1235411 (= res!1717385 (validRegex!5674 (regex!7652 r!4142)))))

(assert (=> d!1235411 (= (ruleValid!3370 thiss!25986 r!4142) e!2599064)))

(declare-fun b!4186720 () Bool)

(declare-fun res!1717386 () Bool)

(assert (=> b!4186720 (=> (not res!1717386) (not e!2599064))))

(assert (=> b!4186720 (= res!1717386 (not (nullable!4407 (regex!7652 r!4142))))))

(declare-fun b!4186721 () Bool)

(assert (=> b!4186721 (= e!2599064 (not (= (tag!8516 r!4142) (String!53277 ""))))))

(assert (= (and d!1235411 res!1717385) b!4186720))

(assert (= (and b!4186720 res!1717386) b!4186721))

(assert (=> d!1235411 m!4775183))

(assert (=> b!4186720 m!4775617))

(assert (=> b!4186214 d!1235411))

(declare-fun d!1235413 () Bool)

(assert (=> d!1235413 (isPrefix!4509 lt!1490873 (++!11724 lt!1490873 (_2!25015 lt!1490869)))))

(declare-fun lt!1491025 () Unit!65047)

(declare-fun choose!25635 (List!46080 List!46080) Unit!65047)

(assert (=> d!1235413 (= lt!1491025 (choose!25635 lt!1490873 (_2!25015 lt!1490869)))))

(assert (=> d!1235413 (= (lemmaConcatTwoListThenFirstIsPrefix!3006 lt!1490873 (_2!25015 lt!1490869)) lt!1491025)))

(declare-fun bs!596538 () Bool)

(assert (= bs!596538 d!1235413))

(assert (=> bs!596538 m!4775175))

(assert (=> bs!596538 m!4775175))

(assert (=> bs!596538 m!4775177))

(declare-fun m!4775721 () Bool)

(assert (=> bs!596538 m!4775721))

(assert (=> b!4186235 d!1235413))

(declare-fun d!1235415 () Bool)

(declare-fun lt!1491028 () BalanceConc!27320)

(assert (=> d!1235415 (= (list!16600 lt!1491028) (originalCharacters!8040 (_1!25015 lt!1490869)))))

(assert (=> d!1235415 (= lt!1491028 (dynLambda!19754 (toChars!10207 (transformation!7652 (rule!10724 (_1!25015 lt!1490869)))) (value!238614 (_1!25015 lt!1490869))))))

(assert (=> d!1235415 (= (charsOf!5087 (_1!25015 lt!1490869)) lt!1491028)))

(declare-fun b_lambda!123119 () Bool)

(assert (=> (not b_lambda!123119) (not d!1235415)))

(declare-fun t!345666 () Bool)

(declare-fun tb!250799 () Bool)

(assert (=> (and b!4186226 (= (toChars!10207 (transformation!7652 r!4142)) (toChars!10207 (transformation!7652 (rule!10724 (_1!25015 lt!1490869))))) t!345666) tb!250799))

(declare-fun b!4186722 () Bool)

(declare-fun e!2599065 () Bool)

(declare-fun tp!1279346 () Bool)

(assert (=> b!4186722 (= e!2599065 (and (inv!60505 (c!714636 (dynLambda!19754 (toChars!10207 (transformation!7652 (rule!10724 (_1!25015 lt!1490869)))) (value!238614 (_1!25015 lt!1490869))))) tp!1279346))))

(declare-fun result!305618 () Bool)

(assert (=> tb!250799 (= result!305618 (and (inv!60506 (dynLambda!19754 (toChars!10207 (transformation!7652 (rule!10724 (_1!25015 lt!1490869)))) (value!238614 (_1!25015 lt!1490869)))) e!2599065))))

(assert (= tb!250799 b!4186722))

(declare-fun m!4775723 () Bool)

(assert (=> b!4186722 m!4775723))

(declare-fun m!4775725 () Bool)

(assert (=> tb!250799 m!4775725))

(assert (=> d!1235415 t!345666))

(declare-fun b_and!327883 () Bool)

(assert (= b_and!327849 (and (=> t!345666 result!305618) b_and!327883)))

(declare-fun tb!250801 () Bool)

(declare-fun t!345668 () Bool)

(assert (=> (and b!4186238 (= (toChars!10207 (transformation!7652 (h!51377 rules!3843))) (toChars!10207 (transformation!7652 (rule!10724 (_1!25015 lt!1490869))))) t!345668) tb!250801))

(declare-fun result!305620 () Bool)

(assert (= result!305620 result!305618))

(assert (=> d!1235415 t!345668))

(declare-fun b_and!327885 () Bool)

(assert (= b_and!327851 (and (=> t!345668 result!305620) b_and!327885)))

(declare-fun tb!250803 () Bool)

(declare-fun t!345670 () Bool)

(assert (=> (and b!4186231 (= (toChars!10207 (transformation!7652 rBis!167)) (toChars!10207 (transformation!7652 (rule!10724 (_1!25015 lt!1490869))))) t!345670) tb!250803))

(declare-fun result!305622 () Bool)

(assert (= result!305622 result!305618))

(assert (=> d!1235415 t!345670))

(declare-fun b_and!327887 () Bool)

(assert (= b_and!327853 (and (=> t!345670 result!305622) b_and!327887)))

(declare-fun m!4775727 () Bool)

(assert (=> d!1235415 m!4775727))

(declare-fun m!4775729 () Bool)

(assert (=> d!1235415 m!4775729))

(assert (=> b!4186235 d!1235415))

(declare-fun d!1235417 () Bool)

(declare-fun list!16602 (Conc!13863) List!46080)

(assert (=> d!1235417 (= (list!16600 (charsOf!5087 (_1!25015 lt!1490869))) (list!16602 (c!714636 (charsOf!5087 (_1!25015 lt!1490869)))))))

(declare-fun bs!596539 () Bool)

(assert (= bs!596539 d!1235417))

(declare-fun m!4775731 () Bool)

(assert (=> bs!596539 m!4775731))

(assert (=> b!4186235 d!1235417))

(declare-fun d!1235419 () Bool)

(declare-fun e!2599066 () Bool)

(assert (=> d!1235419 e!2599066))

(declare-fun res!1717388 () Bool)

(assert (=> d!1235419 (=> (not res!1717388) (not e!2599066))))

(declare-fun lt!1491029 () List!46080)

(assert (=> d!1235419 (= res!1717388 (= (content!7149 lt!1491029) ((_ map or) (content!7149 lt!1490873) (content!7149 (_2!25015 lt!1490869)))))))

(declare-fun e!2599067 () List!46080)

(assert (=> d!1235419 (= lt!1491029 e!2599067)))

(declare-fun c!714707 () Bool)

(assert (=> d!1235419 (= c!714707 ((_ is Nil!45956) lt!1490873))))

(assert (=> d!1235419 (= (++!11724 lt!1490873 (_2!25015 lt!1490869)) lt!1491029)))

(declare-fun b!4186723 () Bool)

(assert (=> b!4186723 (= e!2599067 (_2!25015 lt!1490869))))

(declare-fun b!4186725 () Bool)

(declare-fun res!1717387 () Bool)

(assert (=> b!4186725 (=> (not res!1717387) (not e!2599066))))

(assert (=> b!4186725 (= res!1717387 (= (size!33751 lt!1491029) (+ (size!33751 lt!1490873) (size!33751 (_2!25015 lt!1490869)))))))

(declare-fun b!4186726 () Bool)

(assert (=> b!4186726 (= e!2599066 (or (not (= (_2!25015 lt!1490869) Nil!45956)) (= lt!1491029 lt!1490873)))))

(declare-fun b!4186724 () Bool)

(assert (=> b!4186724 (= e!2599067 (Cons!45956 (h!51376 lt!1490873) (++!11724 (t!345627 lt!1490873) (_2!25015 lt!1490869))))))

(assert (= (and d!1235419 c!714707) b!4186723))

(assert (= (and d!1235419 (not c!714707)) b!4186724))

(assert (= (and d!1235419 res!1717388) b!4186725))

(assert (= (and b!4186725 res!1717387) b!4186726))

(declare-fun m!4775733 () Bool)

(assert (=> d!1235419 m!4775733))

(declare-fun m!4775735 () Bool)

(assert (=> d!1235419 m!4775735))

(declare-fun m!4775737 () Bool)

(assert (=> d!1235419 m!4775737))

(declare-fun m!4775739 () Bool)

(assert (=> b!4186725 m!4775739))

(declare-fun m!4775741 () Bool)

(assert (=> b!4186725 m!4775741))

(declare-fun m!4775743 () Bool)

(assert (=> b!4186725 m!4775743))

(declare-fun m!4775745 () Bool)

(assert (=> b!4186724 m!4775745))

(assert (=> b!4186235 d!1235419))

(declare-fun d!1235421 () Bool)

(assert (=> d!1235421 (= (get!14937 lt!1490872) (v!40665 lt!1490872))))

(assert (=> b!4186235 d!1235421))

(declare-fun b!4186727 () Bool)

(declare-fun e!2599069 () Bool)

(declare-fun e!2599070 () Bool)

(assert (=> b!4186727 (= e!2599069 e!2599070)))

(declare-fun res!1717391 () Bool)

(assert (=> b!4186727 (=> (not res!1717391) (not e!2599070))))

(assert (=> b!4186727 (= res!1717391 (not ((_ is Nil!45956) (++!11724 lt!1490873 (_2!25015 lt!1490869)))))))

(declare-fun b!4186730 () Bool)

(declare-fun e!2599068 () Bool)

(assert (=> b!4186730 (= e!2599068 (>= (size!33751 (++!11724 lt!1490873 (_2!25015 lt!1490869))) (size!33751 lt!1490873)))))

(declare-fun b!4186728 () Bool)

(declare-fun res!1717390 () Bool)

(assert (=> b!4186728 (=> (not res!1717390) (not e!2599070))))

(assert (=> b!4186728 (= res!1717390 (= (head!8884 lt!1490873) (head!8884 (++!11724 lt!1490873 (_2!25015 lt!1490869)))))))

(declare-fun b!4186729 () Bool)

(assert (=> b!4186729 (= e!2599070 (isPrefix!4509 (tail!6731 lt!1490873) (tail!6731 (++!11724 lt!1490873 (_2!25015 lt!1490869)))))))

(declare-fun d!1235423 () Bool)

(assert (=> d!1235423 e!2599068))

(declare-fun res!1717392 () Bool)

(assert (=> d!1235423 (=> res!1717392 e!2599068)))

(declare-fun lt!1491030 () Bool)

(assert (=> d!1235423 (= res!1717392 (not lt!1491030))))

(assert (=> d!1235423 (= lt!1491030 e!2599069)))

(declare-fun res!1717389 () Bool)

(assert (=> d!1235423 (=> res!1717389 e!2599069)))

(assert (=> d!1235423 (= res!1717389 ((_ is Nil!45956) lt!1490873))))

(assert (=> d!1235423 (= (isPrefix!4509 lt!1490873 (++!11724 lt!1490873 (_2!25015 lt!1490869))) lt!1491030)))

(assert (= (and d!1235423 (not res!1717389)) b!4186727))

(assert (= (and b!4186727 res!1717391) b!4186728))

(assert (= (and b!4186728 res!1717390) b!4186729))

(assert (= (and d!1235423 (not res!1717392)) b!4186730))

(assert (=> b!4186730 m!4775175))

(declare-fun m!4775747 () Bool)

(assert (=> b!4186730 m!4775747))

(assert (=> b!4186730 m!4775741))

(declare-fun m!4775749 () Bool)

(assert (=> b!4186728 m!4775749))

(assert (=> b!4186728 m!4775175))

(declare-fun m!4775751 () Bool)

(assert (=> b!4186728 m!4775751))

(declare-fun m!4775753 () Bool)

(assert (=> b!4186729 m!4775753))

(assert (=> b!4186729 m!4775175))

(declare-fun m!4775755 () Bool)

(assert (=> b!4186729 m!4775755))

(assert (=> b!4186729 m!4775753))

(assert (=> b!4186729 m!4775755))

(declare-fun m!4775757 () Bool)

(assert (=> b!4186729 m!4775757))

(assert (=> b!4186235 d!1235423))

(declare-fun b!4186735 () Bool)

(declare-fun e!2599073 () Bool)

(declare-fun tp!1279349 () Bool)

(assert (=> b!4186735 (= e!2599073 (and tp_is_empty!22077 tp!1279349))))

(assert (=> b!4186233 (= tp!1279286 e!2599073)))

(assert (= (and b!4186233 ((_ is Cons!45956) (t!345627 p!2959))) b!4186735))

(declare-fun b!4186747 () Bool)

(declare-fun e!2599076 () Bool)

(declare-fun tp!1279361 () Bool)

(declare-fun tp!1279363 () Bool)

(assert (=> b!4186747 (= e!2599076 (and tp!1279361 tp!1279363))))

(declare-fun b!4186748 () Bool)

(declare-fun tp!1279360 () Bool)

(assert (=> b!4186748 (= e!2599076 tp!1279360)))

(declare-fun b!4186746 () Bool)

(assert (=> b!4186746 (= e!2599076 tp_is_empty!22077)))

(declare-fun b!4186749 () Bool)

(declare-fun tp!1279364 () Bool)

(declare-fun tp!1279362 () Bool)

(assert (=> b!4186749 (= e!2599076 (and tp!1279364 tp!1279362))))

(assert (=> b!4186239 (= tp!1279289 e!2599076)))

(assert (= (and b!4186239 ((_ is ElementMatch!12557) (regex!7652 rBis!167))) b!4186746))

(assert (= (and b!4186239 ((_ is Concat!20440) (regex!7652 rBis!167))) b!4186747))

(assert (= (and b!4186239 ((_ is Star!12557) (regex!7652 rBis!167))) b!4186748))

(assert (= (and b!4186239 ((_ is Union!12557) (regex!7652 rBis!167))) b!4186749))

(declare-fun b!4186760 () Bool)

(declare-fun b_free!121751 () Bool)

(declare-fun b_next!122455 () Bool)

(assert (=> b!4186760 (= b_free!121751 (not b_next!122455))))

(declare-fun t!345672 () Bool)

(declare-fun tb!250805 () Bool)

(assert (=> (and b!4186760 (= (toValue!10348 (transformation!7652 (h!51377 (t!345628 rules!3843)))) (toValue!10348 (transformation!7652 r!4142))) t!345672) tb!250805))

(declare-fun result!305630 () Bool)

(assert (= result!305630 result!305568))

(assert (=> d!1235293 t!345672))

(assert (=> d!1235297 t!345672))

(declare-fun tp!1279375 () Bool)

(declare-fun b_and!327889 () Bool)

(assert (=> b!4186760 (= tp!1279375 (and (=> t!345672 result!305630) b_and!327889))))

(declare-fun b_free!121753 () Bool)

(declare-fun b_next!122457 () Bool)

(assert (=> b!4186760 (= b_free!121753 (not b_next!122457))))

(declare-fun t!345674 () Bool)

(declare-fun tb!250807 () Bool)

(assert (=> (and b!4186760 (= (toChars!10207 (transformation!7652 (h!51377 (t!345628 rules!3843)))) (toChars!10207 (transformation!7652 r!4142))) t!345674) tb!250807))

(declare-fun result!305632 () Bool)

(assert (= result!305632 result!305584))

(assert (=> d!1235297 t!345674))

(declare-fun tb!250809 () Bool)

(declare-fun t!345676 () Bool)

(assert (=> (and b!4186760 (= (toChars!10207 (transformation!7652 (h!51377 (t!345628 rules!3843)))) (toChars!10207 (transformation!7652 (rule!10724 (_1!25015 lt!1490869))))) t!345676) tb!250809))

(declare-fun result!305634 () Bool)

(assert (= result!305634 result!305618))

(assert (=> d!1235415 t!345676))

(declare-fun b_and!327891 () Bool)

(declare-fun tp!1279374 () Bool)

(assert (=> b!4186760 (= tp!1279374 (and (=> t!345674 result!305632) (=> t!345676 result!305634) b_and!327891))))

(declare-fun e!2599086 () Bool)

(assert (=> b!4186760 (= e!2599086 (and tp!1279375 tp!1279374))))

(declare-fun b!4186759 () Bool)

(declare-fun e!2599088 () Bool)

(declare-fun tp!1279373 () Bool)

(assert (=> b!4186759 (= e!2599088 (and tp!1279373 (inv!60502 (tag!8516 (h!51377 (t!345628 rules!3843)))) (inv!60504 (transformation!7652 (h!51377 (t!345628 rules!3843)))) e!2599086))))

(declare-fun b!4186758 () Bool)

(declare-fun e!2599085 () Bool)

(declare-fun tp!1279376 () Bool)

(assert (=> b!4186758 (= e!2599085 (and e!2599088 tp!1279376))))

(assert (=> b!4186227 (= tp!1279291 e!2599085)))

(assert (= b!4186759 b!4186760))

(assert (= b!4186758 b!4186759))

(assert (= (and b!4186227 ((_ is Cons!45957) (t!345628 rules!3843))) b!4186758))

(declare-fun m!4775759 () Bool)

(assert (=> b!4186759 m!4775759))

(declare-fun m!4775761 () Bool)

(assert (=> b!4186759 m!4775761))

(declare-fun b!4186762 () Bool)

(declare-fun e!2599089 () Bool)

(declare-fun tp!1279378 () Bool)

(declare-fun tp!1279380 () Bool)

(assert (=> b!4186762 (= e!2599089 (and tp!1279378 tp!1279380))))

(declare-fun b!4186763 () Bool)

(declare-fun tp!1279377 () Bool)

(assert (=> b!4186763 (= e!2599089 tp!1279377)))

(declare-fun b!4186761 () Bool)

(assert (=> b!4186761 (= e!2599089 tp_is_empty!22077)))

(declare-fun b!4186764 () Bool)

(declare-fun tp!1279381 () Bool)

(declare-fun tp!1279379 () Bool)

(assert (=> b!4186764 (= e!2599089 (and tp!1279381 tp!1279379))))

(assert (=> b!4186236 (= tp!1279290 e!2599089)))

(assert (= (and b!4186236 ((_ is ElementMatch!12557) (regex!7652 (h!51377 rules!3843)))) b!4186761))

(assert (= (and b!4186236 ((_ is Concat!20440) (regex!7652 (h!51377 rules!3843)))) b!4186762))

(assert (= (and b!4186236 ((_ is Star!12557) (regex!7652 (h!51377 rules!3843)))) b!4186763))

(assert (= (and b!4186236 ((_ is Union!12557) (regex!7652 (h!51377 rules!3843)))) b!4186764))

(declare-fun b!4186766 () Bool)

(declare-fun e!2599090 () Bool)

(declare-fun tp!1279383 () Bool)

(declare-fun tp!1279385 () Bool)

(assert (=> b!4186766 (= e!2599090 (and tp!1279383 tp!1279385))))

(declare-fun b!4186767 () Bool)

(declare-fun tp!1279382 () Bool)

(assert (=> b!4186767 (= e!2599090 tp!1279382)))

(declare-fun b!4186765 () Bool)

(assert (=> b!4186765 (= e!2599090 tp_is_empty!22077)))

(declare-fun b!4186768 () Bool)

(declare-fun tp!1279386 () Bool)

(declare-fun tp!1279384 () Bool)

(assert (=> b!4186768 (= e!2599090 (and tp!1279386 tp!1279384))))

(assert (=> b!4186220 (= tp!1279284 e!2599090)))

(assert (= (and b!4186220 ((_ is ElementMatch!12557) (regex!7652 r!4142))) b!4186765))

(assert (= (and b!4186220 ((_ is Concat!20440) (regex!7652 r!4142))) b!4186766))

(assert (= (and b!4186220 ((_ is Star!12557) (regex!7652 r!4142))) b!4186767))

(assert (= (and b!4186220 ((_ is Union!12557) (regex!7652 r!4142))) b!4186768))

(declare-fun b!4186769 () Bool)

(declare-fun e!2599091 () Bool)

(declare-fun tp!1279387 () Bool)

(assert (=> b!4186769 (= e!2599091 (and tp_is_empty!22077 tp!1279387))))

(assert (=> b!4186215 (= tp!1279292 e!2599091)))

(assert (= (and b!4186215 ((_ is Cons!45956) (t!345627 input!3342))) b!4186769))

(declare-fun b!4186770 () Bool)

(declare-fun e!2599092 () Bool)

(declare-fun tp!1279388 () Bool)

(assert (=> b!4186770 (= e!2599092 (and tp_is_empty!22077 tp!1279388))))

(assert (=> b!4186240 (= tp!1279295 e!2599092)))

(assert (= (and b!4186240 ((_ is Cons!45956) (t!345627 pBis!107))) b!4186770))

(declare-fun b_lambda!123121 () Bool)

(assert (= b_lambda!123099 (or (and b!4186226 b_free!121735) (and b!4186238 b_free!121739 (= (toValue!10348 (transformation!7652 (h!51377 rules!3843))) (toValue!10348 (transformation!7652 r!4142)))) (and b!4186231 b_free!121743 (= (toValue!10348 (transformation!7652 rBis!167)) (toValue!10348 (transformation!7652 r!4142)))) (and b!4186760 b_free!121751 (= (toValue!10348 (transformation!7652 (h!51377 (t!345628 rules!3843)))) (toValue!10348 (transformation!7652 r!4142)))) b_lambda!123121)))

(declare-fun b_lambda!123123 () Bool)

(assert (= b_lambda!123103 (or (and b!4186226 b_free!121737) (and b!4186238 b_free!121741 (= (toChars!10207 (transformation!7652 (h!51377 rules!3843))) (toChars!10207 (transformation!7652 r!4142)))) (and b!4186231 b_free!121745 (= (toChars!10207 (transformation!7652 rBis!167)) (toChars!10207 (transformation!7652 r!4142)))) (and b!4186760 b_free!121753 (= (toChars!10207 (transformation!7652 (h!51377 (t!345628 rules!3843)))) (toChars!10207 (transformation!7652 r!4142)))) b_lambda!123123)))

(declare-fun b_lambda!123125 () Bool)

(assert (= b_lambda!123105 (or (and b!4186226 b_free!121735) (and b!4186238 b_free!121739 (= (toValue!10348 (transformation!7652 (h!51377 rules!3843))) (toValue!10348 (transformation!7652 r!4142)))) (and b!4186231 b_free!121743 (= (toValue!10348 (transformation!7652 rBis!167)) (toValue!10348 (transformation!7652 r!4142)))) (and b!4186760 b_free!121751 (= (toValue!10348 (transformation!7652 (h!51377 (t!345628 rules!3843)))) (toValue!10348 (transformation!7652 r!4142)))) b_lambda!123125)))

(check-sat (not b!4186702) (not b!4186664) (not tb!250799) (not b!4186595) (not b!4186685) (not b_next!122455) (not b!4186522) (not b!4186724) (not b!4186518) (not b!4186691) (not b!4186594) (not b_next!122439) (not b!4186593) (not b_lambda!123121) b_and!327883 (not b!4186762) (not b!4186768) (not d!1235411) (not d!1235401) b_and!327891 (not d!1235289) (not d!1235413) (not b!4186728) (not d!1235395) (not b!4186720) (not b!4186571) (not d!1235371) (not b!4186668) (not b_next!122443) (not b!4186703) (not b!4186758) b_and!327855 (not b!4186681) (not b!4186591) (not b!4186698) (not b!4186666) (not b!4186769) (not d!1235375) (not b!4186516) (not b!4186245) (not b_next!122447) (not b!4186759) (not d!1235379) (not b!4186687) (not b!4186767) (not b!4186749) (not d!1235391) (not b!4186705) (not d!1235281) (not d!1235403) (not b!4186658) (not b!4186708) (not d!1235397) (not b!4186520) (not b!4186770) b_and!327889 (not d!1235417) (not b!4186748) (not bm!292001) (not bm!291989) (not b!4186258) (not b!4186722) (not d!1235383) (not b!4186590) (not b!4186686) (not b!4186521) tp_is_empty!22077 (not d!1235297) (not b!4186257) (not b!4186661) (not b!4186514) (not b!4186256) (not bm!291997) (not d!1235415) (not b_next!122457) (not b!4186592) (not d!1235419) (not b!4186719) (not b_next!122445) (not b!4186729) (not b!4186598) (not b_next!122441) (not b!4186563) (not b!4186517) (not b!4186706) (not b!4186657) (not d!1235367) (not b!4186716) b_and!327859 (not b!4186697) (not d!1235389) (not b!4186717) (not b!4186689) b_and!327885 b_and!327857 (not b!4186700) b_and!327887 (not b!4186601) (not d!1235277) (not b!4186467) (not b!4186627) (not b_lambda!123123) (not d!1235365) (not b!4186690) (not b_next!122449) (not b_lambda!123119) (not tb!250763) (not b!4186766) (not tb!250775) (not d!1235407) (not b!4186519) (not b!4186725) (not b!4186747) (not b!4186735) (not b!4186713) (not b!4186671) (not b!4186701) (not b!4186730) (not b_lambda!123125) (not b!4186764) (not bm!291996) (not d!1235341) (not b!4186704) (not b!4186763) (not b!4186596) (not b!4186682))
(check-sat b_and!327883 b_and!327891 (not b_next!122443) b_and!327855 (not b_next!122447) b_and!327889 (not b_next!122441) b_and!327859 b_and!327885 (not b_next!122449) (not b_next!122455) (not b_next!122439) (not b_next!122457) (not b_next!122445) b_and!327857 b_and!327887)
