; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!400270 () Bool)

(assert start!400270)

(declare-fun b!4193164 () Bool)

(declare-fun b_free!122159 () Bool)

(declare-fun b_next!122863 () Bool)

(assert (=> b!4193164 (= b_free!122159 (not b_next!122863))))

(declare-fun tp!1281194 () Bool)

(declare-fun b_and!328633 () Bool)

(assert (=> b!4193164 (= tp!1281194 b_and!328633)))

(declare-fun b_free!122161 () Bool)

(declare-fun b_next!122865 () Bool)

(assert (=> b!4193164 (= b_free!122161 (not b_next!122865))))

(declare-fun tp!1281193 () Bool)

(declare-fun b_and!328635 () Bool)

(assert (=> b!4193164 (= tp!1281193 b_and!328635)))

(declare-fun b!4193154 () Bool)

(declare-fun b_free!122163 () Bool)

(declare-fun b_next!122867 () Bool)

(assert (=> b!4193154 (= b_free!122163 (not b_next!122867))))

(declare-fun tp!1281200 () Bool)

(declare-fun b_and!328637 () Bool)

(assert (=> b!4193154 (= tp!1281200 b_and!328637)))

(declare-fun b_free!122165 () Bool)

(declare-fun b_next!122869 () Bool)

(assert (=> b!4193154 (= b_free!122165 (not b_next!122869))))

(declare-fun tp!1281190 () Bool)

(declare-fun b_and!328639 () Bool)

(assert (=> b!4193154 (= tp!1281190 b_and!328639)))

(declare-fun b!4193161 () Bool)

(declare-fun b_free!122167 () Bool)

(declare-fun b_next!122871 () Bool)

(assert (=> b!4193161 (= b_free!122167 (not b_next!122871))))

(declare-fun tp!1281195 () Bool)

(declare-fun b_and!328641 () Bool)

(assert (=> b!4193161 (= tp!1281195 b_and!328641)))

(declare-fun b_free!122169 () Bool)

(declare-fun b_next!122873 () Bool)

(assert (=> b!4193161 (= b_free!122169 (not b_next!122873))))

(declare-fun tp!1281197 () Bool)

(declare-fun b_and!328643 () Bool)

(assert (=> b!4193161 (= tp!1281197 b_and!328643)))

(declare-fun b!4193151 () Bool)

(declare-fun res!1721213 () Bool)

(declare-fun e!2602952 () Bool)

(assert (=> b!4193151 (=> (not res!1721213) (not e!2602952))))

(declare-datatypes ((List!46185 0))(
  ( (Nil!46061) (Cons!46061 (h!51481 (_ BitVec 16)) (t!346116 List!46185)) )
))
(declare-datatypes ((TokenValue!7912 0))(
  ( (FloatLiteralValue!15824 (text!55829 List!46185)) (TokenValueExt!7911 (__x!28045 Int)) (Broken!39560 (value!239443 List!46185)) (Object!8035) (End!7912) (Def!7912) (Underscore!7912) (Match!7912) (Else!7912) (Error!7912) (Case!7912) (If!7912) (Extends!7912) (Abstract!7912) (Class!7912) (Val!7912) (DelimiterValue!15824 (del!7972 List!46185)) (KeywordValue!7918 (value!239444 List!46185)) (CommentValue!15824 (value!239445 List!46185)) (WhitespaceValue!15824 (value!239446 List!46185)) (IndentationValue!7912 (value!239447 List!46185)) (String!53425) (Int32!7912) (Broken!39561 (value!239448 List!46185)) (Boolean!7913) (Unit!65138) (OperatorValue!7915 (op!7972 List!46185)) (IdentifierValue!15824 (value!239449 List!46185)) (IdentifierValue!15825 (value!239450 List!46185)) (WhitespaceValue!15825 (value!239451 List!46185)) (True!15824) (False!15824) (Broken!39562 (value!239452 List!46185)) (Broken!39563 (value!239453 List!46185)) (True!15825) (RightBrace!7912) (RightBracket!7912) (Colon!7912) (Null!7912) (Comma!7912) (LeftBracket!7912) (False!15825) (LeftBrace!7912) (ImaginaryLiteralValue!7912 (text!55830 List!46185)) (StringLiteralValue!23736 (value!239454 List!46185)) (EOFValue!7912 (value!239455 List!46185)) (IdentValue!7912 (value!239456 List!46185)) (DelimiterValue!15825 (value!239457 List!46185)) (DedentValue!7912 (value!239458 List!46185)) (NewLineValue!7912 (value!239459 List!46185)) (IntegerValue!23736 (value!239460 (_ BitVec 32)) (text!55831 List!46185)) (IntegerValue!23737 (value!239461 Int) (text!55832 List!46185)) (Times!7912) (Or!7912) (Equal!7912) (Minus!7912) (Broken!39564 (value!239462 List!46185)) (And!7912) (Div!7912) (LessEqual!7912) (Mod!7912) (Concat!20499) (Not!7912) (Plus!7912) (SpaceValue!7912 (value!239463 List!46185)) (IntegerValue!23738 (value!239464 Int) (text!55833 List!46185)) (StringLiteralValue!23737 (text!55834 List!46185)) (FloatLiteralValue!15825 (text!55835 List!46185)) (BytesLiteralValue!7912 (value!239465 List!46185)) (CommentValue!15825 (value!239466 List!46185)) (StringLiteralValue!23738 (value!239467 List!46185)) (ErrorTokenValue!7912 (msg!7973 List!46185)) )
))
(declare-datatypes ((C!25364 0))(
  ( (C!25365 (val!14844 Int)) )
))
(declare-datatypes ((List!46186 0))(
  ( (Nil!46062) (Cons!46062 (h!51482 C!25364) (t!346117 List!46186)) )
))
(declare-datatypes ((IArray!27791 0))(
  ( (IArray!27792 (innerList!13953 List!46186)) )
))
(declare-datatypes ((Conc!13893 0))(
  ( (Node!13893 (left!34312 Conc!13893) (right!34642 Conc!13893) (csize!28016 Int) (cheight!14104 Int)) (Leaf!21477 (xs!17199 IArray!27791) (csize!28017 Int)) (Empty!13893) )
))
(declare-datatypes ((BalanceConc!27380 0))(
  ( (BalanceConc!27381 (c!715316 Conc!13893)) )
))
(declare-datatypes ((String!53426 0))(
  ( (String!53427 (value!239468 String)) )
))
(declare-datatypes ((Regex!12587 0))(
  ( (ElementMatch!12587 (c!715317 C!25364)) (Concat!20500 (regOne!25686 Regex!12587) (regTwo!25686 Regex!12587)) (EmptyExpr!12587) (Star!12587 (reg!12916 Regex!12587)) (EmptyLang!12587) (Union!12587 (regOne!25687 Regex!12587) (regTwo!25687 Regex!12587)) )
))
(declare-datatypes ((TokenValueInjection!15252 0))(
  ( (TokenValueInjection!15253 (toValue!10378 Int) (toChars!10237 Int)) )
))
(declare-datatypes ((Rule!15164 0))(
  ( (Rule!15165 (regex!7682 Regex!12587) (tag!8546 String!53426) (isSeparator!7682 Bool) (transformation!7682 TokenValueInjection!15252)) )
))
(declare-fun r!4142 () Rule!15164)

(declare-fun p!2959 () List!46186)

(declare-fun matchR!6326 (Regex!12587 List!46186) Bool)

(assert (=> b!4193151 (= res!1721213 (matchR!6326 (regex!7682 r!4142) p!2959))))

(declare-fun b!4193152 () Bool)

(declare-fun e!2602958 () Bool)

(declare-fun e!2602967 () Bool)

(declare-fun tp!1281199 () Bool)

(assert (=> b!4193152 (= e!2602958 (and e!2602967 tp!1281199))))

(declare-fun e!2602962 () Bool)

(declare-fun b!4193153 () Bool)

(declare-fun rBis!167 () Rule!15164)

(declare-fun tp!1281191 () Bool)

(declare-fun e!2602957 () Bool)

(declare-fun inv!60609 (String!53426) Bool)

(declare-fun inv!60612 (TokenValueInjection!15252) Bool)

(assert (=> b!4193153 (= e!2602957 (and tp!1281191 (inv!60609 (tag!8546 rBis!167)) (inv!60612 (transformation!7682 rBis!167)) e!2602962))))

(declare-fun e!2602959 () Bool)

(assert (=> b!4193154 (= e!2602959 (and tp!1281200 tp!1281190))))

(declare-fun b!4193155 () Bool)

(declare-fun e!2602961 () Bool)

(declare-fun e!2602954 () Bool)

(declare-fun tp!1281192 () Bool)

(assert (=> b!4193155 (= e!2602954 (and tp!1281192 (inv!60609 (tag!8546 r!4142)) (inv!60612 (transformation!7682 r!4142)) e!2602961))))

(declare-fun b!4193156 () Bool)

(declare-datatypes ((Unit!65139 0))(
  ( (Unit!65140) )
))
(declare-fun e!2602951 () Unit!65139)

(declare-fun Unit!65141 () Unit!65139)

(assert (=> b!4193156 (= e!2602951 Unit!65141)))

(declare-fun lt!1493553 () List!46186)

(declare-fun input!3342 () List!46186)

(declare-fun pBis!107 () List!46186)

(declare-fun lt!1493538 () Unit!65139)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1003 (List!46186 List!46186 List!46186) Unit!65139)

(assert (=> b!4193156 (= lt!1493538 (lemmaIsPrefixSameLengthThenSameList!1003 pBis!107 lt!1493553 input!3342))))

(assert (=> b!4193156 false))

(declare-fun b!4193157 () Bool)

(declare-fun e!2602956 () Bool)

(declare-fun e!2602963 () Bool)

(assert (=> b!4193157 (= e!2602956 e!2602963)))

(declare-fun res!1721201 () Bool)

(assert (=> b!4193157 (=> res!1721201 e!2602963)))

(assert (=> b!4193157 (= res!1721201 (= lt!1493553 pBis!107))))

(declare-datatypes ((Token!14078 0))(
  ( (Token!14079 (value!239469 TokenValue!7912) (rule!10770 Rule!15164) (size!33849 Int) (originalCharacters!8070 List!46186)) )
))
(declare-datatypes ((tuple2!43854 0))(
  ( (tuple2!43855 (_1!25061 Token!14078) (_2!25061 List!46186)) )
))
(declare-fun lt!1493544 () tuple2!43854)

(declare-fun isPrefix!4539 (List!46186 List!46186) Bool)

(declare-fun ++!11754 (List!46186 List!46186) List!46186)

(assert (=> b!4193157 (isPrefix!4539 lt!1493553 (++!11754 lt!1493553 (_2!25061 lt!1493544)))))

(declare-fun lt!1493548 () Unit!65139)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3036 (List!46186 List!46186) Unit!65139)

(assert (=> b!4193157 (= lt!1493548 (lemmaConcatTwoListThenFirstIsPrefix!3036 lt!1493553 (_2!25061 lt!1493544)))))

(declare-fun lt!1493552 () BalanceConc!27380)

(declare-fun list!16646 (BalanceConc!27380) List!46186)

(assert (=> b!4193157 (= lt!1493553 (list!16646 lt!1493552))))

(declare-fun charsOf!5117 (Token!14078) BalanceConc!27380)

(assert (=> b!4193157 (= lt!1493552 (charsOf!5117 (_1!25061 lt!1493544)))))

(declare-datatypes ((Option!9876 0))(
  ( (None!9875) (Some!9875 (v!40711 tuple2!43854)) )
))
(declare-fun lt!1493543 () Option!9876)

(declare-fun get!14982 (Option!9876) tuple2!43854)

(assert (=> b!4193157 (= lt!1493544 (get!14982 lt!1493543))))

(declare-fun b!4193158 () Bool)

(declare-fun e!2602950 () Bool)

(declare-fun tp_is_empty!22137 () Bool)

(declare-fun tp!1281198 () Bool)

(assert (=> b!4193158 (= e!2602950 (and tp_is_empty!22137 tp!1281198))))

(declare-fun b!4193159 () Bool)

(declare-fun res!1721199 () Bool)

(assert (=> b!4193159 (=> (not res!1721199) (not e!2602952))))

(declare-datatypes ((List!46187 0))(
  ( (Nil!46063) (Cons!46063 (h!51483 Rule!15164) (t!346118 List!46187)) )
))
(declare-fun rules!3843 () List!46187)

(declare-fun isEmpty!27274 (List!46187) Bool)

(assert (=> b!4193159 (= res!1721199 (not (isEmpty!27274 rules!3843)))))

(declare-fun b!4193160 () Bool)

(declare-fun Unit!65142 () Unit!65139)

(assert (=> b!4193160 (= e!2602951 Unit!65142)))

(declare-fun res!1721214 () Bool)

(assert (=> start!400270 (=> (not res!1721214) (not e!2602952))))

(declare-datatypes ((LexerInterface!7275 0))(
  ( (LexerInterfaceExt!7272 (__x!28046 Int)) (Lexer!7273) )
))
(declare-fun thiss!25986 () LexerInterface!7275)

(get-info :version)

(assert (=> start!400270 (= res!1721214 ((_ is Lexer!7273) thiss!25986))))

(assert (=> start!400270 e!2602952))

(assert (=> start!400270 true))

(assert (=> start!400270 e!2602957))

(assert (=> start!400270 e!2602954))

(assert (=> start!400270 e!2602958))

(assert (=> start!400270 e!2602950))

(declare-fun e!2602955 () Bool)

(assert (=> start!400270 e!2602955))

(declare-fun e!2602965 () Bool)

(assert (=> start!400270 e!2602965))

(assert (=> b!4193161 (= e!2602961 (and tp!1281195 tp!1281197))))

(declare-fun b!4193162 () Bool)

(declare-fun res!1721202 () Bool)

(assert (=> b!4193162 (=> (not res!1721202) (not e!2602952))))

(declare-fun contains!9491 (List!46187 Rule!15164) Bool)

(assert (=> b!4193162 (= res!1721202 (contains!9491 rules!3843 rBis!167))))

(declare-fun b!4193163 () Bool)

(declare-fun res!1721205 () Bool)

(declare-fun e!2602968 () Bool)

(assert (=> b!4193163 (=> res!1721205 e!2602968)))

(declare-fun ruleValid!3400 (LexerInterface!7275 Rule!15164) Bool)

(assert (=> b!4193163 (= res!1721205 (not (ruleValid!3400 thiss!25986 rBis!167)))))

(assert (=> b!4193164 (= e!2602962 (and tp!1281194 tp!1281193))))

(declare-fun b!4193165 () Bool)

(declare-fun e!2602964 () Bool)

(assert (=> b!4193165 (= e!2602952 (not e!2602964))))

(declare-fun res!1721206 () Bool)

(assert (=> b!4193165 (=> res!1721206 e!2602964)))

(declare-fun lt!1493541 () Option!9876)

(declare-fun maxPrefixOneRule!3284 (LexerInterface!7275 Rule!15164 List!46186) Option!9876)

(assert (=> b!4193165 (= res!1721206 (not (= (maxPrefixOneRule!3284 thiss!25986 r!4142 input!3342) lt!1493541)))))

(declare-fun lt!1493550 () Token!14078)

(declare-fun getSuffix!2832 (List!46186 List!46186) List!46186)

(assert (=> b!4193165 (= lt!1493541 (Some!9875 (tuple2!43855 lt!1493550 (getSuffix!2832 input!3342 p!2959))))))

(declare-fun lt!1493549 () Int)

(declare-fun lt!1493540 () TokenValue!7912)

(assert (=> b!4193165 (= lt!1493550 (Token!14079 lt!1493540 r!4142 lt!1493549 p!2959))))

(declare-fun size!33850 (List!46186) Int)

(assert (=> b!4193165 (= lt!1493549 (size!33850 p!2959))))

(declare-fun lt!1493546 () BalanceConc!27380)

(declare-fun apply!10647 (TokenValueInjection!15252 BalanceConc!27380) TokenValue!7912)

(assert (=> b!4193165 (= lt!1493540 (apply!10647 (transformation!7682 r!4142) lt!1493546))))

(assert (=> b!4193165 (isPrefix!4539 input!3342 input!3342)))

(declare-fun lt!1493547 () Unit!65139)

(declare-fun lemmaIsPrefixRefl!2968 (List!46186 List!46186) Unit!65139)

(assert (=> b!4193165 (= lt!1493547 (lemmaIsPrefixRefl!2968 input!3342 input!3342))))

(declare-fun lt!1493537 () Unit!65139)

(declare-fun lemmaSemiInverse!2448 (TokenValueInjection!15252 BalanceConc!27380) Unit!65139)

(assert (=> b!4193165 (= lt!1493537 (lemmaSemiInverse!2448 (transformation!7682 r!4142) lt!1493546))))

(declare-fun seqFromList!5707 (List!46186) BalanceConc!27380)

(assert (=> b!4193165 (= lt!1493546 (seqFromList!5707 p!2959))))

(declare-fun b!4193166 () Bool)

(declare-fun tp!1281202 () Bool)

(assert (=> b!4193166 (= e!2602965 (and tp_is_empty!22137 tp!1281202))))

(declare-fun b!4193167 () Bool)

(declare-fun tp!1281201 () Bool)

(assert (=> b!4193167 (= e!2602967 (and tp!1281201 (inv!60609 (tag!8546 (h!51483 rules!3843))) (inv!60612 (transformation!7682 (h!51483 rules!3843))) e!2602959))))

(declare-fun b!4193168 () Bool)

(declare-fun e!2602960 () Bool)

(assert (=> b!4193168 (= e!2602963 e!2602960)))

(declare-fun res!1721215 () Bool)

(assert (=> b!4193168 (=> res!1721215 e!2602960)))

(declare-fun lt!1493539 () Int)

(declare-fun lt!1493542 () Int)

(assert (=> b!4193168 (= res!1721215 (< lt!1493539 lt!1493542))))

(declare-fun size!33851 (BalanceConc!27380) Int)

(assert (=> b!4193168 (= lt!1493539 (size!33851 lt!1493552))))

(declare-fun b!4193169 () Bool)

(declare-fun res!1721204 () Bool)

(assert (=> b!4193169 (=> (not res!1721204) (not e!2602952))))

(declare-fun rulesInvariant!6488 (LexerInterface!7275 List!46187) Bool)

(assert (=> b!4193169 (= res!1721204 (rulesInvariant!6488 thiss!25986 rules!3843))))

(declare-fun b!4193170 () Bool)

(declare-fun e!2602949 () Bool)

(assert (=> b!4193170 (= e!2602960 e!2602949)))

(declare-fun res!1721211 () Bool)

(assert (=> b!4193170 (=> res!1721211 e!2602949)))

(assert (=> b!4193170 (= res!1721211 (>= lt!1493542 lt!1493539))))

(declare-fun lt!1493551 () Unit!65139)

(assert (=> b!4193170 (= lt!1493551 e!2602951)))

(declare-fun c!715315 () Bool)

(assert (=> b!4193170 (= c!715315 (= lt!1493542 (size!33850 lt!1493553)))))

(declare-fun b!4193171 () Bool)

(assert (=> b!4193171 (= e!2602964 e!2602968)))

(declare-fun res!1721210 () Bool)

(assert (=> b!4193171 (=> res!1721210 e!2602968)))

(assert (=> b!4193171 (= res!1721210 (<= lt!1493542 lt!1493549))))

(assert (=> b!4193171 (= lt!1493542 (size!33850 pBis!107))))

(declare-fun b!4193172 () Bool)

(declare-fun tp!1281196 () Bool)

(assert (=> b!4193172 (= e!2602955 (and tp_is_empty!22137 tp!1281196))))

(declare-fun b!4193173 () Bool)

(declare-fun res!1721203 () Bool)

(assert (=> b!4193173 (=> (not res!1721203) (not e!2602952))))

(assert (=> b!4193173 (= res!1721203 (isPrefix!4539 pBis!107 input!3342))))

(declare-fun b!4193174 () Bool)

(declare-fun res!1721200 () Bool)

(assert (=> b!4193174 (=> (not res!1721200) (not e!2602952))))

(assert (=> b!4193174 (= res!1721200 (contains!9491 rules!3843 r!4142))))

(declare-fun b!4193175 () Bool)

(assert (=> b!4193175 (= e!2602968 e!2602956)))

(declare-fun res!1721212 () Bool)

(assert (=> b!4193175 (=> res!1721212 e!2602956)))

(declare-fun isEmpty!27275 (Option!9876) Bool)

(assert (=> b!4193175 (= res!1721212 (isEmpty!27275 lt!1493543))))

(assert (=> b!4193175 (= lt!1493543 (maxPrefixOneRule!3284 thiss!25986 rBis!167 input!3342))))

(declare-fun lt!1493554 () Unit!65139)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2406 (LexerInterface!7275 Rule!15164 List!46187) Unit!65139)

(assert (=> b!4193175 (= lt!1493554 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2406 thiss!25986 rBis!167 rules!3843))))

(assert (=> b!4193175 (<= lt!1493542 (size!33850 input!3342))))

(declare-fun lt!1493545 () Unit!65139)

(declare-fun lemmaIsPrefixThenSmallerEqSize!569 (List!46186 List!46186) Unit!65139)

(assert (=> b!4193175 (= lt!1493545 (lemmaIsPrefixThenSmallerEqSize!569 pBis!107 input!3342))))

(declare-fun b!4193176 () Bool)

(declare-fun res!1721208 () Bool)

(assert (=> b!4193176 (=> (not res!1721208) (not e!2602952))))

(declare-fun validRegex!5704 (Regex!12587) Bool)

(assert (=> b!4193176 (= res!1721208 (validRegex!5704 (regex!7682 r!4142)))))

(declare-fun b!4193177 () Bool)

(declare-fun res!1721209 () Bool)

(assert (=> b!4193177 (=> (not res!1721209) (not e!2602952))))

(assert (=> b!4193177 (= res!1721209 (isPrefix!4539 p!2959 input!3342))))

(declare-fun b!4193178 () Bool)

(declare-fun res!1721207 () Bool)

(assert (=> b!4193178 (=> (not res!1721207) (not e!2602952))))

(assert (=> b!4193178 (= res!1721207 (ruleValid!3400 thiss!25986 r!4142))))

(declare-fun b!4193179 () Bool)

(declare-fun inv!60613 (Token!14078) Bool)

(assert (=> b!4193179 (= e!2602949 (inv!60613 lt!1493550))))

(declare-fun b!4193180 () Bool)

(declare-fun res!1721216 () Bool)

(assert (=> b!4193180 (=> res!1721216 e!2602968)))

(declare-fun maxPrefix!4323 (LexerInterface!7275 List!46187 List!46186) Option!9876)

(assert (=> b!4193180 (= res!1721216 (not (= (maxPrefix!4323 thiss!25986 rules!3843 input!3342) lt!1493541)))))

(assert (= (and start!400270 res!1721214) b!4193177))

(assert (= (and b!4193177 res!1721209) b!4193173))

(assert (= (and b!4193173 res!1721203) b!4193159))

(assert (= (and b!4193159 res!1721199) b!4193169))

(assert (= (and b!4193169 res!1721204) b!4193174))

(assert (= (and b!4193174 res!1721200) b!4193162))

(assert (= (and b!4193162 res!1721202) b!4193176))

(assert (= (and b!4193176 res!1721208) b!4193151))

(assert (= (and b!4193151 res!1721213) b!4193178))

(assert (= (and b!4193178 res!1721207) b!4193165))

(assert (= (and b!4193165 (not res!1721206)) b!4193171))

(assert (= (and b!4193171 (not res!1721210)) b!4193163))

(assert (= (and b!4193163 (not res!1721205)) b!4193180))

(assert (= (and b!4193180 (not res!1721216)) b!4193175))

(assert (= (and b!4193175 (not res!1721212)) b!4193157))

(assert (= (and b!4193157 (not res!1721201)) b!4193168))

(assert (= (and b!4193168 (not res!1721215)) b!4193170))

(assert (= (and b!4193170 c!715315) b!4193156))

(assert (= (and b!4193170 (not c!715315)) b!4193160))

(assert (= (and b!4193170 (not res!1721211)) b!4193179))

(assert (= b!4193153 b!4193164))

(assert (= start!400270 b!4193153))

(assert (= b!4193155 b!4193161))

(assert (= start!400270 b!4193155))

(assert (= b!4193167 b!4193154))

(assert (= b!4193152 b!4193167))

(assert (= (and start!400270 ((_ is Cons!46063) rules!3843)) b!4193152))

(assert (= (and start!400270 ((_ is Cons!46062) input!3342)) b!4193158))

(assert (= (and start!400270 ((_ is Cons!46062) pBis!107)) b!4193172))

(assert (= (and start!400270 ((_ is Cons!46062) p!2959)) b!4193166))

(declare-fun m!4781773 () Bool)

(assert (=> b!4193167 m!4781773))

(declare-fun m!4781775 () Bool)

(assert (=> b!4193167 m!4781775))

(declare-fun m!4781777 () Bool)

(assert (=> b!4193171 m!4781777))

(declare-fun m!4781779 () Bool)

(assert (=> b!4193174 m!4781779))

(declare-fun m!4781781 () Bool)

(assert (=> b!4193156 m!4781781))

(declare-fun m!4781783 () Bool)

(assert (=> b!4193176 m!4781783))

(declare-fun m!4781785 () Bool)

(assert (=> b!4193170 m!4781785))

(declare-fun m!4781787 () Bool)

(assert (=> b!4193168 m!4781787))

(declare-fun m!4781789 () Bool)

(assert (=> b!4193153 m!4781789))

(declare-fun m!4781791 () Bool)

(assert (=> b!4193153 m!4781791))

(declare-fun m!4781793 () Bool)

(assert (=> b!4193159 m!4781793))

(declare-fun m!4781795 () Bool)

(assert (=> b!4193173 m!4781795))

(declare-fun m!4781797 () Bool)

(assert (=> b!4193169 m!4781797))

(declare-fun m!4781799 () Bool)

(assert (=> b!4193180 m!4781799))

(declare-fun m!4781801 () Bool)

(assert (=> b!4193175 m!4781801))

(declare-fun m!4781803 () Bool)

(assert (=> b!4193175 m!4781803))

(declare-fun m!4781805 () Bool)

(assert (=> b!4193175 m!4781805))

(declare-fun m!4781807 () Bool)

(assert (=> b!4193175 m!4781807))

(declare-fun m!4781809 () Bool)

(assert (=> b!4193175 m!4781809))

(declare-fun m!4781811 () Bool)

(assert (=> b!4193162 m!4781811))

(declare-fun m!4781813 () Bool)

(assert (=> b!4193163 m!4781813))

(declare-fun m!4781815 () Bool)

(assert (=> b!4193165 m!4781815))

(declare-fun m!4781817 () Bool)

(assert (=> b!4193165 m!4781817))

(declare-fun m!4781819 () Bool)

(assert (=> b!4193165 m!4781819))

(declare-fun m!4781821 () Bool)

(assert (=> b!4193165 m!4781821))

(declare-fun m!4781823 () Bool)

(assert (=> b!4193165 m!4781823))

(declare-fun m!4781825 () Bool)

(assert (=> b!4193165 m!4781825))

(declare-fun m!4781827 () Bool)

(assert (=> b!4193165 m!4781827))

(declare-fun m!4781829 () Bool)

(assert (=> b!4193165 m!4781829))

(declare-fun m!4781831 () Bool)

(assert (=> b!4193157 m!4781831))

(declare-fun m!4781833 () Bool)

(assert (=> b!4193157 m!4781833))

(declare-fun m!4781835 () Bool)

(assert (=> b!4193157 m!4781835))

(declare-fun m!4781837 () Bool)

(assert (=> b!4193157 m!4781837))

(declare-fun m!4781839 () Bool)

(assert (=> b!4193157 m!4781839))

(declare-fun m!4781841 () Bool)

(assert (=> b!4193157 m!4781841))

(assert (=> b!4193157 m!4781839))

(declare-fun m!4781843 () Bool)

(assert (=> b!4193155 m!4781843))

(declare-fun m!4781845 () Bool)

(assert (=> b!4193155 m!4781845))

(declare-fun m!4781847 () Bool)

(assert (=> b!4193151 m!4781847))

(declare-fun m!4781849 () Bool)

(assert (=> b!4193179 m!4781849))

(declare-fun m!4781851 () Bool)

(assert (=> b!4193177 m!4781851))

(declare-fun m!4781853 () Bool)

(assert (=> b!4193178 m!4781853))

(check-sat (not b!4193175) (not b!4193177) (not b!4193162) (not b!4193180) (not b_next!122873) (not b!4193176) (not b_next!122869) (not b!4193159) b_and!328639 (not b!4193151) (not b!4193152) (not b!4193166) (not b_next!122865) (not b!4193171) (not b!4193172) tp_is_empty!22137 (not b!4193168) (not b!4193179) (not b_next!122863) (not b!4193153) (not b!4193158) (not b_next!122871) b_and!328633 (not b!4193170) b_and!328635 (not b!4193157) b_and!328643 (not b!4193169) (not b!4193174) (not b!4193165) (not b!4193167) (not b!4193156) b_and!328641 (not b_next!122867) (not b!4193155) (not b!4193163) (not b!4193178) b_and!328637 (not b!4193173))
(check-sat (not b_next!122873) b_and!328635 b_and!328643 (not b_next!122869) b_and!328639 b_and!328641 (not b_next!122867) (not b_next!122865) b_and!328637 (not b_next!122863) (not b_next!122871) b_and!328633)
(get-model)

(declare-fun bm!292236 () Bool)

(declare-fun call!292241 () Option!9876)

(assert (=> bm!292236 (= call!292241 (maxPrefixOneRule!3284 thiss!25986 (h!51483 rules!3843) input!3342))))

(declare-fun b!4193212 () Bool)

(declare-fun e!2602984 () Option!9876)

(declare-fun lt!1493575 () Option!9876)

(declare-fun lt!1493572 () Option!9876)

(assert (=> b!4193212 (= e!2602984 (ite (and ((_ is None!9875) lt!1493575) ((_ is None!9875) lt!1493572)) None!9875 (ite ((_ is None!9875) lt!1493572) lt!1493575 (ite ((_ is None!9875) lt!1493575) lt!1493572 (ite (>= (size!33849 (_1!25061 (v!40711 lt!1493575))) (size!33849 (_1!25061 (v!40711 lt!1493572)))) lt!1493575 lt!1493572)))))))

(assert (=> b!4193212 (= lt!1493575 call!292241)))

(assert (=> b!4193212 (= lt!1493572 (maxPrefix!4323 thiss!25986 (t!346118 rules!3843) input!3342))))

(declare-fun b!4193213 () Bool)

(declare-fun res!1721253 () Bool)

(declare-fun e!2602986 () Bool)

(assert (=> b!4193213 (=> (not res!1721253) (not e!2602986))))

(declare-fun lt!1493571 () Option!9876)

(assert (=> b!4193213 (= res!1721253 (< (size!33850 (_2!25061 (get!14982 lt!1493571))) (size!33850 input!3342)))))

(declare-fun b!4193214 () Bool)

(declare-fun res!1721255 () Bool)

(assert (=> b!4193214 (=> (not res!1721255) (not e!2602986))))

(assert (=> b!4193214 (= res!1721255 (= (value!239469 (_1!25061 (get!14982 lt!1493571))) (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571)))))))))

(declare-fun b!4193215 () Bool)

(declare-fun res!1721258 () Bool)

(assert (=> b!4193215 (=> (not res!1721258) (not e!2602986))))

(assert (=> b!4193215 (= res!1721258 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))) (_2!25061 (get!14982 lt!1493571))) input!3342))))

(declare-fun b!4193216 () Bool)

(assert (=> b!4193216 (= e!2602986 (contains!9491 rules!3843 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))))

(declare-fun b!4193217 () Bool)

(declare-fun res!1721256 () Bool)

(assert (=> b!4193217 (=> (not res!1721256) (not e!2602986))))

(assert (=> b!4193217 (= res!1721256 (matchR!6326 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))))))

(declare-fun b!4193218 () Bool)

(assert (=> b!4193218 (= e!2602984 call!292241)))

(declare-fun b!4193219 () Bool)

(declare-fun res!1721254 () Bool)

(assert (=> b!4193219 (=> (not res!1721254) (not e!2602986))))

(assert (=> b!4193219 (= res!1721254 (= (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))) (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571)))))))

(declare-fun b!4193211 () Bool)

(declare-fun e!2602985 () Bool)

(assert (=> b!4193211 (= e!2602985 e!2602986)))

(declare-fun res!1721257 () Bool)

(assert (=> b!4193211 (=> (not res!1721257) (not e!2602986))))

(declare-fun isDefined!7354 (Option!9876) Bool)

(assert (=> b!4193211 (= res!1721257 (isDefined!7354 lt!1493571))))

(declare-fun d!1236572 () Bool)

(assert (=> d!1236572 e!2602985))

(declare-fun res!1721259 () Bool)

(assert (=> d!1236572 (=> res!1721259 e!2602985)))

(assert (=> d!1236572 (= res!1721259 (isEmpty!27275 lt!1493571))))

(assert (=> d!1236572 (= lt!1493571 e!2602984)))

(declare-fun c!715320 () Bool)

(assert (=> d!1236572 (= c!715320 (and ((_ is Cons!46063) rules!3843) ((_ is Nil!46063) (t!346118 rules!3843))))))

(declare-fun lt!1493574 () Unit!65139)

(declare-fun lt!1493573 () Unit!65139)

(assert (=> d!1236572 (= lt!1493574 lt!1493573)))

(assert (=> d!1236572 (isPrefix!4539 input!3342 input!3342)))

(assert (=> d!1236572 (= lt!1493573 (lemmaIsPrefixRefl!2968 input!3342 input!3342))))

(declare-fun rulesValidInductive!2838 (LexerInterface!7275 List!46187) Bool)

(assert (=> d!1236572 (rulesValidInductive!2838 thiss!25986 rules!3843)))

(assert (=> d!1236572 (= (maxPrefix!4323 thiss!25986 rules!3843 input!3342) lt!1493571)))

(assert (= (and d!1236572 c!715320) b!4193218))

(assert (= (and d!1236572 (not c!715320)) b!4193212))

(assert (= (or b!4193218 b!4193212) bm!292236))

(assert (= (and d!1236572 (not res!1721259)) b!4193211))

(assert (= (and b!4193211 res!1721257) b!4193219))

(assert (= (and b!4193219 res!1721254) b!4193213))

(assert (= (and b!4193213 res!1721253) b!4193215))

(assert (= (and b!4193215 res!1721258) b!4193214))

(assert (= (and b!4193214 res!1721255) b!4193217))

(assert (= (and b!4193217 res!1721256) b!4193216))

(declare-fun m!4781867 () Bool)

(assert (=> b!4193214 m!4781867))

(declare-fun m!4781869 () Bool)

(assert (=> b!4193214 m!4781869))

(assert (=> b!4193214 m!4781869))

(declare-fun m!4781871 () Bool)

(assert (=> b!4193214 m!4781871))

(assert (=> b!4193216 m!4781867))

(declare-fun m!4781873 () Bool)

(assert (=> b!4193216 m!4781873))

(declare-fun m!4781875 () Bool)

(assert (=> b!4193211 m!4781875))

(declare-fun m!4781877 () Bool)

(assert (=> bm!292236 m!4781877))

(declare-fun m!4781879 () Bool)

(assert (=> d!1236572 m!4781879))

(assert (=> d!1236572 m!4781817))

(assert (=> d!1236572 m!4781821))

(declare-fun m!4781881 () Bool)

(assert (=> d!1236572 m!4781881))

(assert (=> b!4193215 m!4781867))

(declare-fun m!4781883 () Bool)

(assert (=> b!4193215 m!4781883))

(assert (=> b!4193215 m!4781883))

(declare-fun m!4781885 () Bool)

(assert (=> b!4193215 m!4781885))

(assert (=> b!4193215 m!4781885))

(declare-fun m!4781887 () Bool)

(assert (=> b!4193215 m!4781887))

(assert (=> b!4193219 m!4781867))

(assert (=> b!4193219 m!4781883))

(assert (=> b!4193219 m!4781883))

(assert (=> b!4193219 m!4781885))

(assert (=> b!4193217 m!4781867))

(assert (=> b!4193217 m!4781883))

(assert (=> b!4193217 m!4781883))

(assert (=> b!4193217 m!4781885))

(assert (=> b!4193217 m!4781885))

(declare-fun m!4781889 () Bool)

(assert (=> b!4193217 m!4781889))

(declare-fun m!4781891 () Bool)

(assert (=> b!4193212 m!4781891))

(assert (=> b!4193213 m!4781867))

(declare-fun m!4781893 () Bool)

(assert (=> b!4193213 m!4781893))

(assert (=> b!4193213 m!4781803))

(assert (=> b!4193180 d!1236572))

(declare-fun d!1236582 () Bool)

(assert (=> d!1236582 (= (isEmpty!27274 rules!3843) ((_ is Nil!46063) rules!3843))))

(assert (=> b!4193159 d!1236582))

(declare-fun d!1236584 () Bool)

(declare-fun lt!1493588 () Int)

(assert (=> d!1236584 (>= lt!1493588 0)))

(declare-fun e!2602995 () Int)

(assert (=> d!1236584 (= lt!1493588 e!2602995)))

(declare-fun c!715325 () Bool)

(assert (=> d!1236584 (= c!715325 ((_ is Nil!46062) lt!1493553))))

(assert (=> d!1236584 (= (size!33850 lt!1493553) lt!1493588)))

(declare-fun b!4193242 () Bool)

(assert (=> b!4193242 (= e!2602995 0)))

(declare-fun b!4193243 () Bool)

(assert (=> b!4193243 (= e!2602995 (+ 1 (size!33850 (t!346117 lt!1493553))))))

(assert (= (and d!1236584 c!715325) b!4193242))

(assert (= (and d!1236584 (not c!715325)) b!4193243))

(declare-fun m!4781895 () Bool)

(assert (=> b!4193243 m!4781895))

(assert (=> b!4193170 d!1236584))

(declare-fun d!1236586 () Bool)

(declare-fun lt!1493596 () Int)

(assert (=> d!1236586 (= lt!1493596 (size!33850 (list!16646 lt!1493552)))))

(declare-fun size!33853 (Conc!13893) Int)

(assert (=> d!1236586 (= lt!1493596 (size!33853 (c!715316 lt!1493552)))))

(assert (=> d!1236586 (= (size!33851 lt!1493552) lt!1493596)))

(declare-fun bs!596667 () Bool)

(assert (= bs!596667 d!1236586))

(assert (=> bs!596667 m!4781835))

(assert (=> bs!596667 m!4781835))

(declare-fun m!4781897 () Bool)

(assert (=> bs!596667 m!4781897))

(declare-fun m!4781899 () Bool)

(assert (=> bs!596667 m!4781899))

(assert (=> b!4193168 d!1236586))

(declare-fun d!1236588 () Bool)

(declare-fun res!1721288 () Bool)

(declare-fun e!2603004 () Bool)

(assert (=> d!1236588 (=> (not res!1721288) (not e!2603004))))

(declare-fun isEmpty!27276 (List!46186) Bool)

(assert (=> d!1236588 (= res!1721288 (not (isEmpty!27276 (originalCharacters!8070 lt!1493550))))))

(assert (=> d!1236588 (= (inv!60613 lt!1493550) e!2603004)))

(declare-fun b!4193260 () Bool)

(declare-fun res!1721289 () Bool)

(assert (=> b!4193260 (=> (not res!1721289) (not e!2603004))))

(declare-fun dynLambda!19835 (Int TokenValue!7912) BalanceConc!27380)

(assert (=> b!4193260 (= res!1721289 (= (originalCharacters!8070 lt!1493550) (list!16646 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))))))

(declare-fun b!4193261 () Bool)

(assert (=> b!4193261 (= e!2603004 (= (size!33849 lt!1493550) (size!33850 (originalCharacters!8070 lt!1493550))))))

(assert (= (and d!1236588 res!1721288) b!4193260))

(assert (= (and b!4193260 res!1721289) b!4193261))

(declare-fun b_lambda!123323 () Bool)

(assert (=> (not b_lambda!123323) (not b!4193260)))

(declare-fun t!346120 () Bool)

(declare-fun tb!251147 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550)))) t!346120) tb!251147))

(declare-fun b!4193266 () Bool)

(declare-fun e!2603007 () Bool)

(declare-fun tp!1281205 () Bool)

(declare-fun inv!60616 (Conc!13893) Bool)

(assert (=> b!4193266 (= e!2603007 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))) tp!1281205))))

(declare-fun result!306112 () Bool)

(declare-fun inv!60617 (BalanceConc!27380) Bool)

(assert (=> tb!251147 (= result!306112 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))) e!2603007))))

(assert (= tb!251147 b!4193266))

(declare-fun m!4781935 () Bool)

(assert (=> b!4193266 m!4781935))

(declare-fun m!4781937 () Bool)

(assert (=> tb!251147 m!4781937))

(assert (=> b!4193260 t!346120))

(declare-fun b_and!328645 () Bool)

(assert (= b_and!328635 (and (=> t!346120 result!306112) b_and!328645)))

(declare-fun t!346122 () Bool)

(declare-fun tb!251149 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550)))) t!346122) tb!251149))

(declare-fun result!306116 () Bool)

(assert (= result!306116 result!306112))

(assert (=> b!4193260 t!346122))

(declare-fun b_and!328647 () Bool)

(assert (= b_and!328639 (and (=> t!346122 result!306116) b_and!328647)))

(declare-fun t!346124 () Bool)

(declare-fun tb!251151 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550)))) t!346124) tb!251151))

(declare-fun result!306118 () Bool)

(assert (= result!306118 result!306112))

(assert (=> b!4193260 t!346124))

(declare-fun b_and!328649 () Bool)

(assert (= b_and!328643 (and (=> t!346124 result!306118) b_and!328649)))

(declare-fun m!4781939 () Bool)

(assert (=> d!1236588 m!4781939))

(declare-fun m!4781941 () Bool)

(assert (=> b!4193260 m!4781941))

(assert (=> b!4193260 m!4781941))

(declare-fun m!4781943 () Bool)

(assert (=> b!4193260 m!4781943))

(declare-fun m!4781945 () Bool)

(assert (=> b!4193261 m!4781945))

(assert (=> b!4193179 d!1236588))

(declare-fun d!1236598 () Bool)

(declare-fun res!1721300 () Bool)

(declare-fun e!2603019 () Bool)

(assert (=> d!1236598 (=> (not res!1721300) (not e!2603019))))

(declare-fun rulesValid!2999 (LexerInterface!7275 List!46187) Bool)

(assert (=> d!1236598 (= res!1721300 (rulesValid!2999 thiss!25986 rules!3843))))

(assert (=> d!1236598 (= (rulesInvariant!6488 thiss!25986 rules!3843) e!2603019)))

(declare-fun b!4193283 () Bool)

(declare-datatypes ((List!46188 0))(
  ( (Nil!46064) (Cons!46064 (h!51484 String!53426) (t!346183 List!46188)) )
))
(declare-fun noDuplicateTag!3160 (LexerInterface!7275 List!46187 List!46188) Bool)

(assert (=> b!4193283 (= e!2603019 (noDuplicateTag!3160 thiss!25986 rules!3843 Nil!46064))))

(assert (= (and d!1236598 res!1721300) b!4193283))

(declare-fun m!4781953 () Bool)

(assert (=> d!1236598 m!4781953))

(declare-fun m!4781955 () Bool)

(assert (=> b!4193283 m!4781955))

(assert (=> b!4193169 d!1236598))

(declare-fun d!1236602 () Bool)

(assert (=> d!1236602 (= pBis!107 lt!1493553)))

(declare-fun lt!1493611 () Unit!65139)

(declare-fun choose!25694 (List!46186 List!46186 List!46186) Unit!65139)

(assert (=> d!1236602 (= lt!1493611 (choose!25694 pBis!107 lt!1493553 input!3342))))

(assert (=> d!1236602 (isPrefix!4539 pBis!107 input!3342)))

(assert (=> d!1236602 (= (lemmaIsPrefixSameLengthThenSameList!1003 pBis!107 lt!1493553 input!3342) lt!1493611)))

(declare-fun bs!596671 () Bool)

(assert (= bs!596671 d!1236602))

(declare-fun m!4781965 () Bool)

(assert (=> bs!596671 m!4781965))

(assert (=> bs!596671 m!4781795))

(assert (=> b!4193156 d!1236602))

(declare-fun d!1236610 () Bool)

(assert (=> d!1236610 (= (inv!60609 (tag!8546 (h!51483 rules!3843))) (= (mod (str.len (value!239468 (tag!8546 (h!51483 rules!3843)))) 2) 0))))

(assert (=> b!4193167 d!1236610))

(declare-fun d!1236614 () Bool)

(declare-fun res!1721307 () Bool)

(declare-fun e!2603028 () Bool)

(assert (=> d!1236614 (=> (not res!1721307) (not e!2603028))))

(declare-fun semiInverseModEq!3332 (Int Int) Bool)

(assert (=> d!1236614 (= res!1721307 (semiInverseModEq!3332 (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 (h!51483 rules!3843)))))))

(assert (=> d!1236614 (= (inv!60612 (transformation!7682 (h!51483 rules!3843))) e!2603028)))

(declare-fun b!4193292 () Bool)

(declare-fun equivClasses!3231 (Int Int) Bool)

(assert (=> b!4193292 (= e!2603028 (equivClasses!3231 (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 (h!51483 rules!3843)))))))

(assert (= (and d!1236614 res!1721307) b!4193292))

(declare-fun m!4781971 () Bool)

(assert (=> d!1236614 m!4781971))

(declare-fun m!4781973 () Bool)

(assert (=> b!4193292 m!4781973))

(assert (=> b!4193167 d!1236614))

(declare-fun d!1236616 () Bool)

(declare-fun res!1721312 () Bool)

(declare-fun e!2603031 () Bool)

(assert (=> d!1236616 (=> (not res!1721312) (not e!2603031))))

(assert (=> d!1236616 (= res!1721312 (validRegex!5704 (regex!7682 r!4142)))))

(assert (=> d!1236616 (= (ruleValid!3400 thiss!25986 r!4142) e!2603031)))

(declare-fun b!4193297 () Bool)

(declare-fun res!1721313 () Bool)

(assert (=> b!4193297 (=> (not res!1721313) (not e!2603031))))

(declare-fun nullable!4423 (Regex!12587) Bool)

(assert (=> b!4193297 (= res!1721313 (not (nullable!4423 (regex!7682 r!4142))))))

(declare-fun b!4193298 () Bool)

(assert (=> b!4193298 (= e!2603031 (not (= (tag!8546 r!4142) (String!53427 ""))))))

(assert (= (and d!1236616 res!1721312) b!4193297))

(assert (= (and b!4193297 res!1721313) b!4193298))

(assert (=> d!1236616 m!4781783))

(declare-fun m!4781975 () Bool)

(assert (=> b!4193297 m!4781975))

(assert (=> b!4193178 d!1236616))

(declare-fun d!1236618 () Bool)

(declare-fun lt!1493616 () BalanceConc!27380)

(assert (=> d!1236618 (= (list!16646 lt!1493616) (originalCharacters!8070 (_1!25061 lt!1493544)))))

(assert (=> d!1236618 (= lt!1493616 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))))

(assert (=> d!1236618 (= (charsOf!5117 (_1!25061 lt!1493544)) lt!1493616)))

(declare-fun b_lambda!123327 () Bool)

(assert (=> (not b_lambda!123327) (not d!1236618)))

(declare-fun tb!251159 () Bool)

(declare-fun t!346132 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544))))) t!346132) tb!251159))

(declare-fun b!4193299 () Bool)

(declare-fun e!2603032 () Bool)

(declare-fun tp!1281206 () Bool)

(assert (=> b!4193299 (= e!2603032 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))) tp!1281206))))

(declare-fun result!306128 () Bool)

(assert (=> tb!251159 (= result!306128 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))) e!2603032))))

(assert (= tb!251159 b!4193299))

(declare-fun m!4781977 () Bool)

(assert (=> b!4193299 m!4781977))

(declare-fun m!4781979 () Bool)

(assert (=> tb!251159 m!4781979))

(assert (=> d!1236618 t!346132))

(declare-fun b_and!328657 () Bool)

(assert (= b_and!328645 (and (=> t!346132 result!306128) b_and!328657)))

(declare-fun t!346134 () Bool)

(declare-fun tb!251161 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544))))) t!346134) tb!251161))

(declare-fun result!306130 () Bool)

(assert (= result!306130 result!306128))

(assert (=> d!1236618 t!346134))

(declare-fun b_and!328659 () Bool)

(assert (= b_and!328647 (and (=> t!346134 result!306130) b_and!328659)))

(declare-fun tb!251163 () Bool)

(declare-fun t!346136 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544))))) t!346136) tb!251163))

(declare-fun result!306132 () Bool)

(assert (= result!306132 result!306128))

(assert (=> d!1236618 t!346136))

(declare-fun b_and!328661 () Bool)

(assert (= b_and!328649 (and (=> t!346136 result!306132) b_and!328661)))

(declare-fun m!4781981 () Bool)

(assert (=> d!1236618 m!4781981))

(declare-fun m!4781983 () Bool)

(assert (=> d!1236618 m!4781983))

(assert (=> b!4193157 d!1236618))

(declare-fun d!1236620 () Bool)

(declare-fun list!16647 (Conc!13893) List!46186)

(assert (=> d!1236620 (= (list!16646 lt!1493552) (list!16647 (c!715316 lt!1493552)))))

(declare-fun bs!596672 () Bool)

(assert (= bs!596672 d!1236620))

(declare-fun m!4781985 () Bool)

(assert (=> bs!596672 m!4781985))

(assert (=> b!4193157 d!1236620))

(declare-fun d!1236622 () Bool)

(declare-fun e!2603038 () Bool)

(assert (=> d!1236622 e!2603038))

(declare-fun res!1721318 () Bool)

(assert (=> d!1236622 (=> (not res!1721318) (not e!2603038))))

(declare-fun lt!1493619 () List!46186)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7180 (List!46186) (InoxSet C!25364))

(assert (=> d!1236622 (= res!1721318 (= (content!7180 lt!1493619) ((_ map or) (content!7180 lt!1493553) (content!7180 (_2!25061 lt!1493544)))))))

(declare-fun e!2603037 () List!46186)

(assert (=> d!1236622 (= lt!1493619 e!2603037)))

(declare-fun c!715333 () Bool)

(assert (=> d!1236622 (= c!715333 ((_ is Nil!46062) lt!1493553))))

(assert (=> d!1236622 (= (++!11754 lt!1493553 (_2!25061 lt!1493544)) lt!1493619)))

(declare-fun b!4193308 () Bool)

(assert (=> b!4193308 (= e!2603037 (_2!25061 lt!1493544))))

(declare-fun b!4193309 () Bool)

(assert (=> b!4193309 (= e!2603037 (Cons!46062 (h!51482 lt!1493553) (++!11754 (t!346117 lt!1493553) (_2!25061 lt!1493544))))))

(declare-fun b!4193310 () Bool)

(declare-fun res!1721319 () Bool)

(assert (=> b!4193310 (=> (not res!1721319) (not e!2603038))))

(assert (=> b!4193310 (= res!1721319 (= (size!33850 lt!1493619) (+ (size!33850 lt!1493553) (size!33850 (_2!25061 lt!1493544)))))))

(declare-fun b!4193311 () Bool)

(assert (=> b!4193311 (= e!2603038 (or (not (= (_2!25061 lt!1493544) Nil!46062)) (= lt!1493619 lt!1493553)))))

(assert (= (and d!1236622 c!715333) b!4193308))

(assert (= (and d!1236622 (not c!715333)) b!4193309))

(assert (= (and d!1236622 res!1721318) b!4193310))

(assert (= (and b!4193310 res!1721319) b!4193311))

(declare-fun m!4781987 () Bool)

(assert (=> d!1236622 m!4781987))

(declare-fun m!4781989 () Bool)

(assert (=> d!1236622 m!4781989))

(declare-fun m!4781991 () Bool)

(assert (=> d!1236622 m!4781991))

(declare-fun m!4781993 () Bool)

(assert (=> b!4193309 m!4781993))

(declare-fun m!4781995 () Bool)

(assert (=> b!4193310 m!4781995))

(assert (=> b!4193310 m!4781785))

(declare-fun m!4781997 () Bool)

(assert (=> b!4193310 m!4781997))

(assert (=> b!4193157 d!1236622))

(declare-fun d!1236624 () Bool)

(assert (=> d!1236624 (= (get!14982 lt!1493543) (v!40711 lt!1493543))))

(assert (=> b!4193157 d!1236624))

(declare-fun b!4193323 () Bool)

(declare-fun e!2603045 () Bool)

(assert (=> b!4193323 (= e!2603045 (>= (size!33850 (++!11754 lt!1493553 (_2!25061 lt!1493544))) (size!33850 lt!1493553)))))

(declare-fun b!4193322 () Bool)

(declare-fun e!2603047 () Bool)

(declare-fun tail!6747 (List!46186) List!46186)

(assert (=> b!4193322 (= e!2603047 (isPrefix!4539 (tail!6747 lt!1493553) (tail!6747 (++!11754 lt!1493553 (_2!25061 lt!1493544)))))))

(declare-fun d!1236626 () Bool)

(assert (=> d!1236626 e!2603045))

(declare-fun res!1721328 () Bool)

(assert (=> d!1236626 (=> res!1721328 e!2603045)))

(declare-fun lt!1493622 () Bool)

(assert (=> d!1236626 (= res!1721328 (not lt!1493622))))

(declare-fun e!2603046 () Bool)

(assert (=> d!1236626 (= lt!1493622 e!2603046)))

(declare-fun res!1721331 () Bool)

(assert (=> d!1236626 (=> res!1721331 e!2603046)))

(assert (=> d!1236626 (= res!1721331 ((_ is Nil!46062) lt!1493553))))

(assert (=> d!1236626 (= (isPrefix!4539 lt!1493553 (++!11754 lt!1493553 (_2!25061 lt!1493544))) lt!1493622)))

(declare-fun b!4193320 () Bool)

(assert (=> b!4193320 (= e!2603046 e!2603047)))

(declare-fun res!1721330 () Bool)

(assert (=> b!4193320 (=> (not res!1721330) (not e!2603047))))

(assert (=> b!4193320 (= res!1721330 (not ((_ is Nil!46062) (++!11754 lt!1493553 (_2!25061 lt!1493544)))))))

(declare-fun b!4193321 () Bool)

(declare-fun res!1721329 () Bool)

(assert (=> b!4193321 (=> (not res!1721329) (not e!2603047))))

(declare-fun head!8900 (List!46186) C!25364)

(assert (=> b!4193321 (= res!1721329 (= (head!8900 lt!1493553) (head!8900 (++!11754 lt!1493553 (_2!25061 lt!1493544)))))))

(assert (= (and d!1236626 (not res!1721331)) b!4193320))

(assert (= (and b!4193320 res!1721330) b!4193321))

(assert (= (and b!4193321 res!1721329) b!4193322))

(assert (= (and d!1236626 (not res!1721328)) b!4193323))

(assert (=> b!4193323 m!4781839))

(declare-fun m!4781999 () Bool)

(assert (=> b!4193323 m!4781999))

(assert (=> b!4193323 m!4781785))

(declare-fun m!4782001 () Bool)

(assert (=> b!4193322 m!4782001))

(assert (=> b!4193322 m!4781839))

(declare-fun m!4782003 () Bool)

(assert (=> b!4193322 m!4782003))

(assert (=> b!4193322 m!4782001))

(assert (=> b!4193322 m!4782003))

(declare-fun m!4782005 () Bool)

(assert (=> b!4193322 m!4782005))

(declare-fun m!4782007 () Bool)

(assert (=> b!4193321 m!4782007))

(assert (=> b!4193321 m!4781839))

(declare-fun m!4782009 () Bool)

(assert (=> b!4193321 m!4782009))

(assert (=> b!4193157 d!1236626))

(declare-fun d!1236628 () Bool)

(assert (=> d!1236628 (isPrefix!4539 lt!1493553 (++!11754 lt!1493553 (_2!25061 lt!1493544)))))

(declare-fun lt!1493625 () Unit!65139)

(declare-fun choose!25696 (List!46186 List!46186) Unit!65139)

(assert (=> d!1236628 (= lt!1493625 (choose!25696 lt!1493553 (_2!25061 lt!1493544)))))

(assert (=> d!1236628 (= (lemmaConcatTwoListThenFirstIsPrefix!3036 lt!1493553 (_2!25061 lt!1493544)) lt!1493625)))

(declare-fun bs!596673 () Bool)

(assert (= bs!596673 d!1236628))

(assert (=> bs!596673 m!4781839))

(assert (=> bs!596673 m!4781839))

(assert (=> bs!596673 m!4781841))

(declare-fun m!4782011 () Bool)

(assert (=> bs!596673 m!4782011))

(assert (=> b!4193157 d!1236628))

(declare-fun b!4193342 () Bool)

(declare-fun e!2603067 () Bool)

(declare-fun e!2603068 () Bool)

(assert (=> b!4193342 (= e!2603067 e!2603068)))

(declare-fun c!715339 () Bool)

(assert (=> b!4193342 (= c!715339 ((_ is Union!12587) (regex!7682 r!4142)))))

(declare-fun b!4193343 () Bool)

(declare-fun e!2603062 () Bool)

(declare-fun e!2603064 () Bool)

(assert (=> b!4193343 (= e!2603062 e!2603064)))

(declare-fun res!1721343 () Bool)

(assert (=> b!4193343 (=> (not res!1721343) (not e!2603064))))

(declare-fun call!292252 () Bool)

(assert (=> b!4193343 (= res!1721343 call!292252)))

(declare-fun d!1236630 () Bool)

(declare-fun res!1721342 () Bool)

(declare-fun e!2603065 () Bool)

(assert (=> d!1236630 (=> res!1721342 e!2603065)))

(assert (=> d!1236630 (= res!1721342 ((_ is ElementMatch!12587) (regex!7682 r!4142)))))

(assert (=> d!1236630 (= (validRegex!5704 (regex!7682 r!4142)) e!2603065)))

(declare-fun b!4193344 () Bool)

(declare-fun e!2603066 () Bool)

(assert (=> b!4193344 (= e!2603067 e!2603066)))

(declare-fun res!1721344 () Bool)

(assert (=> b!4193344 (= res!1721344 (not (nullable!4423 (reg!12916 (regex!7682 r!4142)))))))

(assert (=> b!4193344 (=> (not res!1721344) (not e!2603066))))

(declare-fun c!715338 () Bool)

(declare-fun bm!292246 () Bool)

(declare-fun call!292251 () Bool)

(assert (=> bm!292246 (= call!292251 (validRegex!5704 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))))))

(declare-fun b!4193345 () Bool)

(declare-fun res!1721345 () Bool)

(assert (=> b!4193345 (=> res!1721345 e!2603062)))

(assert (=> b!4193345 (= res!1721345 (not ((_ is Concat!20500) (regex!7682 r!4142))))))

(assert (=> b!4193345 (= e!2603068 e!2603062)))

(declare-fun b!4193346 () Bool)

(assert (=> b!4193346 (= e!2603066 call!292251)))

(declare-fun b!4193347 () Bool)

(declare-fun call!292253 () Bool)

(assert (=> b!4193347 (= e!2603064 call!292253)))

(declare-fun bm!292247 () Bool)

(assert (=> bm!292247 (= call!292252 call!292251)))

(declare-fun b!4193348 () Bool)

(declare-fun res!1721346 () Bool)

(declare-fun e!2603063 () Bool)

(assert (=> b!4193348 (=> (not res!1721346) (not e!2603063))))

(assert (=> b!4193348 (= res!1721346 call!292252)))

(assert (=> b!4193348 (= e!2603068 e!2603063)))

(declare-fun b!4193349 () Bool)

(assert (=> b!4193349 (= e!2603063 call!292253)))

(declare-fun b!4193350 () Bool)

(assert (=> b!4193350 (= e!2603065 e!2603067)))

(assert (=> b!4193350 (= c!715338 ((_ is Star!12587) (regex!7682 r!4142)))))

(declare-fun bm!292248 () Bool)

(assert (=> bm!292248 (= call!292253 (validRegex!5704 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))))))

(assert (= (and d!1236630 (not res!1721342)) b!4193350))

(assert (= (and b!4193350 c!715338) b!4193344))

(assert (= (and b!4193350 (not c!715338)) b!4193342))

(assert (= (and b!4193344 res!1721344) b!4193346))

(assert (= (and b!4193342 c!715339) b!4193348))

(assert (= (and b!4193342 (not c!715339)) b!4193345))

(assert (= (and b!4193348 res!1721346) b!4193349))

(assert (= (and b!4193345 (not res!1721345)) b!4193343))

(assert (= (and b!4193343 res!1721343) b!4193347))

(assert (= (or b!4193349 b!4193347) bm!292248))

(assert (= (or b!4193348 b!4193343) bm!292247))

(assert (= (or b!4193346 bm!292247) bm!292246))

(declare-fun m!4782013 () Bool)

(assert (=> b!4193344 m!4782013))

(declare-fun m!4782015 () Bool)

(assert (=> bm!292246 m!4782015))

(declare-fun m!4782017 () Bool)

(assert (=> bm!292248 m!4782017))

(assert (=> b!4193176 d!1236630))

(declare-fun d!1236632 () Bool)

(assert (=> d!1236632 (= (inv!60609 (tag!8546 r!4142)) (= (mod (str.len (value!239468 (tag!8546 r!4142))) 2) 0))))

(assert (=> b!4193155 d!1236632))

(declare-fun d!1236634 () Bool)

(declare-fun res!1721347 () Bool)

(declare-fun e!2603069 () Bool)

(assert (=> d!1236634 (=> (not res!1721347) (not e!2603069))))

(assert (=> d!1236634 (= res!1721347 (semiInverseModEq!3332 (toChars!10237 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 r!4142))))))

(assert (=> d!1236634 (= (inv!60612 (transformation!7682 r!4142)) e!2603069)))

(declare-fun b!4193351 () Bool)

(assert (=> b!4193351 (= e!2603069 (equivClasses!3231 (toChars!10237 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 r!4142))))))

(assert (= (and d!1236634 res!1721347) b!4193351))

(declare-fun m!4782019 () Bool)

(assert (=> d!1236634 m!4782019))

(declare-fun m!4782021 () Bool)

(assert (=> b!4193351 m!4782021))

(assert (=> b!4193155 d!1236634))

(declare-fun b!4193355 () Bool)

(declare-fun e!2603070 () Bool)

(assert (=> b!4193355 (= e!2603070 (>= (size!33850 input!3342) (size!33850 p!2959)))))

(declare-fun b!4193354 () Bool)

(declare-fun e!2603072 () Bool)

(assert (=> b!4193354 (= e!2603072 (isPrefix!4539 (tail!6747 p!2959) (tail!6747 input!3342)))))

(declare-fun d!1236636 () Bool)

(assert (=> d!1236636 e!2603070))

(declare-fun res!1721348 () Bool)

(assert (=> d!1236636 (=> res!1721348 e!2603070)))

(declare-fun lt!1493626 () Bool)

(assert (=> d!1236636 (= res!1721348 (not lt!1493626))))

(declare-fun e!2603071 () Bool)

(assert (=> d!1236636 (= lt!1493626 e!2603071)))

(declare-fun res!1721351 () Bool)

(assert (=> d!1236636 (=> res!1721351 e!2603071)))

(assert (=> d!1236636 (= res!1721351 ((_ is Nil!46062) p!2959))))

(assert (=> d!1236636 (= (isPrefix!4539 p!2959 input!3342) lt!1493626)))

(declare-fun b!4193352 () Bool)

(assert (=> b!4193352 (= e!2603071 e!2603072)))

(declare-fun res!1721350 () Bool)

(assert (=> b!4193352 (=> (not res!1721350) (not e!2603072))))

(assert (=> b!4193352 (= res!1721350 (not ((_ is Nil!46062) input!3342)))))

(declare-fun b!4193353 () Bool)

(declare-fun res!1721349 () Bool)

(assert (=> b!4193353 (=> (not res!1721349) (not e!2603072))))

(assert (=> b!4193353 (= res!1721349 (= (head!8900 p!2959) (head!8900 input!3342)))))

(assert (= (and d!1236636 (not res!1721351)) b!4193352))

(assert (= (and b!4193352 res!1721350) b!4193353))

(assert (= (and b!4193353 res!1721349) b!4193354))

(assert (= (and d!1236636 (not res!1721348)) b!4193355))

(assert (=> b!4193355 m!4781803))

(assert (=> b!4193355 m!4781823))

(declare-fun m!4782023 () Bool)

(assert (=> b!4193354 m!4782023))

(declare-fun m!4782025 () Bool)

(assert (=> b!4193354 m!4782025))

(assert (=> b!4193354 m!4782023))

(assert (=> b!4193354 m!4782025))

(declare-fun m!4782027 () Bool)

(assert (=> b!4193354 m!4782027))

(declare-fun m!4782029 () Bool)

(assert (=> b!4193353 m!4782029))

(declare-fun m!4782031 () Bool)

(assert (=> b!4193353 m!4782031))

(assert (=> b!4193177 d!1236636))

(declare-fun d!1236638 () Bool)

(assert (=> d!1236638 (ruleValid!3400 thiss!25986 rBis!167)))

(declare-fun lt!1493629 () Unit!65139)

(declare-fun choose!25698 (LexerInterface!7275 Rule!15164 List!46187) Unit!65139)

(assert (=> d!1236638 (= lt!1493629 (choose!25698 thiss!25986 rBis!167 rules!3843))))

(assert (=> d!1236638 (contains!9491 rules!3843 rBis!167)))

(assert (=> d!1236638 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2406 thiss!25986 rBis!167 rules!3843) lt!1493629)))

(declare-fun bs!596674 () Bool)

(assert (= bs!596674 d!1236638))

(assert (=> bs!596674 m!4781813))

(declare-fun m!4782033 () Bool)

(assert (=> bs!596674 m!4782033))

(assert (=> bs!596674 m!4781811))

(assert (=> b!4193175 d!1236638))

(declare-fun d!1236640 () Bool)

(assert (=> d!1236640 (= (isEmpty!27275 lt!1493543) (not ((_ is Some!9875) lt!1493543)))))

(assert (=> b!4193175 d!1236640))

(declare-fun b!4193374 () Bool)

(declare-fun e!2603084 () Option!9876)

(assert (=> b!4193374 (= e!2603084 None!9875)))

(declare-fun b!4193375 () Bool)

(declare-fun e!2603081 () Bool)

(declare-fun lt!1493641 () Option!9876)

(assert (=> b!4193375 (= e!2603081 (= (size!33849 (_1!25061 (get!14982 lt!1493641))) (size!33850 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641))))))))

(declare-fun d!1236642 () Bool)

(declare-fun e!2603083 () Bool)

(assert (=> d!1236642 e!2603083))

(declare-fun res!1721368 () Bool)

(assert (=> d!1236642 (=> res!1721368 e!2603083)))

(assert (=> d!1236642 (= res!1721368 (isEmpty!27275 lt!1493641))))

(assert (=> d!1236642 (= lt!1493641 e!2603084)))

(declare-fun c!715342 () Bool)

(declare-datatypes ((tuple2!43858 0))(
  ( (tuple2!43859 (_1!25063 List!46186) (_2!25063 List!46186)) )
))
(declare-fun lt!1493642 () tuple2!43858)

(assert (=> d!1236642 (= c!715342 (isEmpty!27276 (_1!25063 lt!1493642)))))

(declare-fun findLongestMatch!1526 (Regex!12587 List!46186) tuple2!43858)

(assert (=> d!1236642 (= lt!1493642 (findLongestMatch!1526 (regex!7682 rBis!167) input!3342))))

(assert (=> d!1236642 (ruleValid!3400 thiss!25986 rBis!167)))

(assert (=> d!1236642 (= (maxPrefixOneRule!3284 thiss!25986 rBis!167 input!3342) lt!1493641)))

(declare-fun b!4193376 () Bool)

(assert (=> b!4193376 (= e!2603083 e!2603081)))

(declare-fun res!1721367 () Bool)

(assert (=> b!4193376 (=> (not res!1721367) (not e!2603081))))

(assert (=> b!4193376 (= res!1721367 (matchR!6326 (regex!7682 rBis!167) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))))))

(declare-fun b!4193377 () Bool)

(declare-fun res!1721369 () Bool)

(assert (=> b!4193377 (=> (not res!1721369) (not e!2603081))))

(assert (=> b!4193377 (= res!1721369 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641)))) (_2!25061 (get!14982 lt!1493641))) input!3342))))

(declare-fun b!4193378 () Bool)

(assert (=> b!4193378 (= e!2603084 (Some!9875 (tuple2!43855 (Token!14079 (apply!10647 (transformation!7682 rBis!167) (seqFromList!5707 (_1!25063 lt!1493642))) rBis!167 (size!33851 (seqFromList!5707 (_1!25063 lt!1493642))) (_1!25063 lt!1493642)) (_2!25063 lt!1493642))))))

(declare-fun lt!1493643 () Unit!65139)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1586 (Regex!12587 List!46186) Unit!65139)

(assert (=> b!4193378 (= lt!1493643 (longestMatchIsAcceptedByMatchOrIsEmpty!1586 (regex!7682 rBis!167) input!3342))))

(declare-fun res!1721372 () Bool)

(declare-fun findLongestMatchInner!1613 (Regex!12587 List!46186 Int List!46186 List!46186 Int) tuple2!43858)

(assert (=> b!4193378 (= res!1721372 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun e!2603082 () Bool)

(assert (=> b!4193378 (=> res!1721372 e!2603082)))

(assert (=> b!4193378 e!2603082))

(declare-fun lt!1493640 () Unit!65139)

(assert (=> b!4193378 (= lt!1493640 lt!1493643)))

(declare-fun lt!1493644 () Unit!65139)

(assert (=> b!4193378 (= lt!1493644 (lemmaSemiInverse!2448 (transformation!7682 rBis!167) (seqFromList!5707 (_1!25063 lt!1493642))))))

(declare-fun b!4193379 () Bool)

(assert (=> b!4193379 (= e!2603082 (matchR!6326 (regex!7682 rBis!167) (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun b!4193380 () Bool)

(declare-fun res!1721366 () Bool)

(assert (=> b!4193380 (=> (not res!1721366) (not e!2603081))))

(assert (=> b!4193380 (= res!1721366 (< (size!33850 (_2!25061 (get!14982 lt!1493641))) (size!33850 input!3342)))))

(declare-fun b!4193381 () Bool)

(declare-fun res!1721371 () Bool)

(assert (=> b!4193381 (=> (not res!1721371) (not e!2603081))))

(assert (=> b!4193381 (= res!1721371 (= (value!239469 (_1!25061 (get!14982 lt!1493641))) (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641)))))))))

(declare-fun b!4193382 () Bool)

(declare-fun res!1721370 () Bool)

(assert (=> b!4193382 (=> (not res!1721370) (not e!2603081))))

(assert (=> b!4193382 (= res!1721370 (= (rule!10770 (_1!25061 (get!14982 lt!1493641))) rBis!167))))

(assert (= (and d!1236642 c!715342) b!4193374))

(assert (= (and d!1236642 (not c!715342)) b!4193378))

(assert (= (and b!4193378 (not res!1721372)) b!4193379))

(assert (= (and d!1236642 (not res!1721368)) b!4193376))

(assert (= (and b!4193376 res!1721367) b!4193377))

(assert (= (and b!4193377 res!1721369) b!4193380))

(assert (= (and b!4193380 res!1721366) b!4193382))

(assert (= (and b!4193382 res!1721370) b!4193381))

(assert (= (and b!4193381 res!1721371) b!4193375))

(declare-fun m!4782035 () Bool)

(assert (=> b!4193378 m!4782035))

(assert (=> b!4193378 m!4781803))

(declare-fun m!4782037 () Bool)

(assert (=> b!4193378 m!4782037))

(declare-fun m!4782039 () Bool)

(assert (=> b!4193378 m!4782039))

(assert (=> b!4193378 m!4781803))

(declare-fun m!4782041 () Bool)

(assert (=> b!4193378 m!4782041))

(declare-fun m!4782043 () Bool)

(assert (=> b!4193378 m!4782043))

(assert (=> b!4193378 m!4782043))

(declare-fun m!4782045 () Bool)

(assert (=> b!4193378 m!4782045))

(assert (=> b!4193378 m!4782039))

(assert (=> b!4193378 m!4782043))

(declare-fun m!4782047 () Bool)

(assert (=> b!4193378 m!4782047))

(assert (=> b!4193378 m!4782043))

(declare-fun m!4782049 () Bool)

(assert (=> b!4193378 m!4782049))

(declare-fun m!4782051 () Bool)

(assert (=> b!4193376 m!4782051))

(declare-fun m!4782053 () Bool)

(assert (=> b!4193376 m!4782053))

(assert (=> b!4193376 m!4782053))

(declare-fun m!4782055 () Bool)

(assert (=> b!4193376 m!4782055))

(assert (=> b!4193376 m!4782055))

(declare-fun m!4782057 () Bool)

(assert (=> b!4193376 m!4782057))

(declare-fun m!4782059 () Bool)

(assert (=> d!1236642 m!4782059))

(declare-fun m!4782061 () Bool)

(assert (=> d!1236642 m!4782061))

(declare-fun m!4782063 () Bool)

(assert (=> d!1236642 m!4782063))

(assert (=> d!1236642 m!4781813))

(assert (=> b!4193382 m!4782051))

(assert (=> b!4193379 m!4782039))

(assert (=> b!4193379 m!4781803))

(assert (=> b!4193379 m!4782039))

(assert (=> b!4193379 m!4781803))

(assert (=> b!4193379 m!4782041))

(declare-fun m!4782065 () Bool)

(assert (=> b!4193379 m!4782065))

(assert (=> b!4193375 m!4782051))

(declare-fun m!4782067 () Bool)

(assert (=> b!4193375 m!4782067))

(assert (=> b!4193377 m!4782051))

(assert (=> b!4193377 m!4782053))

(assert (=> b!4193377 m!4782053))

(assert (=> b!4193377 m!4782055))

(assert (=> b!4193377 m!4782055))

(declare-fun m!4782069 () Bool)

(assert (=> b!4193377 m!4782069))

(assert (=> b!4193380 m!4782051))

(declare-fun m!4782071 () Bool)

(assert (=> b!4193380 m!4782071))

(assert (=> b!4193380 m!4781803))

(assert (=> b!4193381 m!4782051))

(declare-fun m!4782073 () Bool)

(assert (=> b!4193381 m!4782073))

(assert (=> b!4193381 m!4782073))

(declare-fun m!4782075 () Bool)

(assert (=> b!4193381 m!4782075))

(assert (=> b!4193175 d!1236642))

(declare-fun d!1236644 () Bool)

(assert (=> d!1236644 (<= (size!33850 pBis!107) (size!33850 input!3342))))

(declare-fun lt!1493647 () Unit!65139)

(declare-fun choose!25699 (List!46186 List!46186) Unit!65139)

(assert (=> d!1236644 (= lt!1493647 (choose!25699 pBis!107 input!3342))))

(assert (=> d!1236644 (isPrefix!4539 pBis!107 input!3342)))

(assert (=> d!1236644 (= (lemmaIsPrefixThenSmallerEqSize!569 pBis!107 input!3342) lt!1493647)))

(declare-fun bs!596675 () Bool)

(assert (= bs!596675 d!1236644))

(assert (=> bs!596675 m!4781777))

(assert (=> bs!596675 m!4781803))

(declare-fun m!4782077 () Bool)

(assert (=> bs!596675 m!4782077))

(assert (=> bs!596675 m!4781795))

(assert (=> b!4193175 d!1236644))

(declare-fun d!1236646 () Bool)

(declare-fun lt!1493648 () Int)

(assert (=> d!1236646 (>= lt!1493648 0)))

(declare-fun e!2603085 () Int)

(assert (=> d!1236646 (= lt!1493648 e!2603085)))

(declare-fun c!715343 () Bool)

(assert (=> d!1236646 (= c!715343 ((_ is Nil!46062) input!3342))))

(assert (=> d!1236646 (= (size!33850 input!3342) lt!1493648)))

(declare-fun b!4193383 () Bool)

(assert (=> b!4193383 (= e!2603085 0)))

(declare-fun b!4193384 () Bool)

(assert (=> b!4193384 (= e!2603085 (+ 1 (size!33850 (t!346117 input!3342))))))

(assert (= (and d!1236646 c!715343) b!4193383))

(assert (= (and d!1236646 (not c!715343)) b!4193384))

(declare-fun m!4782079 () Bool)

(assert (=> b!4193384 m!4782079))

(assert (=> b!4193175 d!1236646))

(declare-fun d!1236648 () Bool)

(declare-fun lt!1493651 () List!46186)

(assert (=> d!1236648 (= (++!11754 p!2959 lt!1493651) input!3342)))

(declare-fun e!2603088 () List!46186)

(assert (=> d!1236648 (= lt!1493651 e!2603088)))

(declare-fun c!715346 () Bool)

(assert (=> d!1236648 (= c!715346 ((_ is Cons!46062) p!2959))))

(assert (=> d!1236648 (>= (size!33850 input!3342) (size!33850 p!2959))))

(assert (=> d!1236648 (= (getSuffix!2832 input!3342 p!2959) lt!1493651)))

(declare-fun b!4193389 () Bool)

(assert (=> b!4193389 (= e!2603088 (getSuffix!2832 (tail!6747 input!3342) (t!346117 p!2959)))))

(declare-fun b!4193390 () Bool)

(assert (=> b!4193390 (= e!2603088 input!3342)))

(assert (= (and d!1236648 c!715346) b!4193389))

(assert (= (and d!1236648 (not c!715346)) b!4193390))

(declare-fun m!4782081 () Bool)

(assert (=> d!1236648 m!4782081))

(assert (=> d!1236648 m!4781803))

(assert (=> d!1236648 m!4781823))

(assert (=> b!4193389 m!4782025))

(assert (=> b!4193389 m!4782025))

(declare-fun m!4782083 () Bool)

(assert (=> b!4193389 m!4782083))

(assert (=> b!4193165 d!1236648))

(declare-fun b!4193394 () Bool)

(declare-fun e!2603089 () Bool)

(assert (=> b!4193394 (= e!2603089 (>= (size!33850 input!3342) (size!33850 input!3342)))))

(declare-fun b!4193393 () Bool)

(declare-fun e!2603091 () Bool)

(assert (=> b!4193393 (= e!2603091 (isPrefix!4539 (tail!6747 input!3342) (tail!6747 input!3342)))))

(declare-fun d!1236650 () Bool)

(assert (=> d!1236650 e!2603089))

(declare-fun res!1721373 () Bool)

(assert (=> d!1236650 (=> res!1721373 e!2603089)))

(declare-fun lt!1493652 () Bool)

(assert (=> d!1236650 (= res!1721373 (not lt!1493652))))

(declare-fun e!2603090 () Bool)

(assert (=> d!1236650 (= lt!1493652 e!2603090)))

(declare-fun res!1721376 () Bool)

(assert (=> d!1236650 (=> res!1721376 e!2603090)))

(assert (=> d!1236650 (= res!1721376 ((_ is Nil!46062) input!3342))))

(assert (=> d!1236650 (= (isPrefix!4539 input!3342 input!3342) lt!1493652)))

(declare-fun b!4193391 () Bool)

(assert (=> b!4193391 (= e!2603090 e!2603091)))

(declare-fun res!1721375 () Bool)

(assert (=> b!4193391 (=> (not res!1721375) (not e!2603091))))

(assert (=> b!4193391 (= res!1721375 (not ((_ is Nil!46062) input!3342)))))

(declare-fun b!4193392 () Bool)

(declare-fun res!1721374 () Bool)

(assert (=> b!4193392 (=> (not res!1721374) (not e!2603091))))

(assert (=> b!4193392 (= res!1721374 (= (head!8900 input!3342) (head!8900 input!3342)))))

(assert (= (and d!1236650 (not res!1721376)) b!4193391))

(assert (= (and b!4193391 res!1721375) b!4193392))

(assert (= (and b!4193392 res!1721374) b!4193393))

(assert (= (and d!1236650 (not res!1721373)) b!4193394))

(assert (=> b!4193394 m!4781803))

(assert (=> b!4193394 m!4781803))

(assert (=> b!4193393 m!4782025))

(assert (=> b!4193393 m!4782025))

(assert (=> b!4193393 m!4782025))

(assert (=> b!4193393 m!4782025))

(declare-fun m!4782085 () Bool)

(assert (=> b!4193393 m!4782085))

(assert (=> b!4193392 m!4782031))

(assert (=> b!4193392 m!4782031))

(assert (=> b!4193165 d!1236650))

(declare-fun d!1236652 () Bool)

(declare-fun fromListB!2615 (List!46186) BalanceConc!27380)

(assert (=> d!1236652 (= (seqFromList!5707 p!2959) (fromListB!2615 p!2959))))

(declare-fun bs!596676 () Bool)

(assert (= bs!596676 d!1236652))

(declare-fun m!4782087 () Bool)

(assert (=> bs!596676 m!4782087))

(assert (=> b!4193165 d!1236652))

(declare-fun d!1236654 () Bool)

(assert (=> d!1236654 (isPrefix!4539 input!3342 input!3342)))

(declare-fun lt!1493655 () Unit!65139)

(declare-fun choose!25701 (List!46186 List!46186) Unit!65139)

(assert (=> d!1236654 (= lt!1493655 (choose!25701 input!3342 input!3342))))

(assert (=> d!1236654 (= (lemmaIsPrefixRefl!2968 input!3342 input!3342) lt!1493655)))

(declare-fun bs!596677 () Bool)

(assert (= bs!596677 d!1236654))

(assert (=> bs!596677 m!4781817))

(declare-fun m!4782089 () Bool)

(assert (=> bs!596677 m!4782089))

(assert (=> b!4193165 d!1236654))

(declare-fun d!1236656 () Bool)

(declare-fun dynLambda!19836 (Int BalanceConc!27380) TokenValue!7912)

(assert (=> d!1236656 (= (apply!10647 (transformation!7682 r!4142) lt!1493546) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))

(declare-fun b_lambda!123329 () Bool)

(assert (=> (not b_lambda!123329) (not d!1236656)))

(declare-fun t!346138 () Bool)

(declare-fun tb!251165 () Bool)

(assert (=> (and b!4193164 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142))) t!346138) tb!251165))

(declare-fun result!306134 () Bool)

(declare-fun inv!21 (TokenValue!7912) Bool)

(assert (=> tb!251165 (= result!306134 (inv!21 (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))

(declare-fun m!4782091 () Bool)

(assert (=> tb!251165 m!4782091))

(assert (=> d!1236656 t!346138))

(declare-fun b_and!328663 () Bool)

(assert (= b_and!328633 (and (=> t!346138 result!306134) b_and!328663)))

(declare-fun t!346140 () Bool)

(declare-fun tb!251167 () Bool)

(assert (=> (and b!4193154 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142))) t!346140) tb!251167))

(declare-fun result!306138 () Bool)

(assert (= result!306138 result!306134))

(assert (=> d!1236656 t!346140))

(declare-fun b_and!328665 () Bool)

(assert (= b_and!328637 (and (=> t!346140 result!306138) b_and!328665)))

(declare-fun t!346142 () Bool)

(declare-fun tb!251169 () Bool)

(assert (=> (and b!4193161 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 r!4142))) t!346142) tb!251169))

(declare-fun result!306140 () Bool)

(assert (= result!306140 result!306134))

(assert (=> d!1236656 t!346142))

(declare-fun b_and!328667 () Bool)

(assert (= b_and!328641 (and (=> t!346142 result!306140) b_and!328667)))

(declare-fun m!4782093 () Bool)

(assert (=> d!1236656 m!4782093))

(assert (=> b!4193165 d!1236656))

(declare-fun b!4193609 () Bool)

(declare-fun e!2603217 () Bool)

(assert (=> b!4193609 (= e!2603217 true)))

(declare-fun d!1236658 () Bool)

(assert (=> d!1236658 e!2603217))

(assert (= d!1236658 b!4193609))

(declare-fun lambda!129499 () Int)

(declare-fun order!24387 () Int)

(declare-fun order!24385 () Int)

(declare-fun dynLambda!19837 (Int Int) Int)

(declare-fun dynLambda!19838 (Int Int) Int)

(assert (=> b!4193609 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 r!4142))) (dynLambda!19838 order!24387 lambda!129499))))

(declare-fun order!24389 () Int)

(declare-fun dynLambda!19839 (Int Int) Int)

(assert (=> b!4193609 (< (dynLambda!19839 order!24389 (toChars!10237 (transformation!7682 r!4142))) (dynLambda!19838 order!24387 lambda!129499))))

(assert (=> d!1236658 (= (list!16646 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))) (list!16646 lt!1493546))))

(declare-fun lt!1493707 () Unit!65139)

(declare-fun ForallOf!1066 (Int BalanceConc!27380) Unit!65139)

(assert (=> d!1236658 (= lt!1493707 (ForallOf!1066 lambda!129499 lt!1493546))))

(assert (=> d!1236658 (= (lemmaSemiInverse!2448 (transformation!7682 r!4142) lt!1493546) lt!1493707)))

(declare-fun b_lambda!123345 () Bool)

(assert (=> (not b_lambda!123345) (not d!1236658)))

(declare-fun t!346170 () Bool)

(declare-fun tb!251197 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142))) t!346170) tb!251197))

(declare-fun e!2603218 () Bool)

(declare-fun tp!1281254 () Bool)

(declare-fun b!4193610 () Bool)

(assert (=> b!4193610 (= e!2603218 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))) tp!1281254))))

(declare-fun result!306176 () Bool)

(assert (=> tb!251197 (= result!306176 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))) e!2603218))))

(assert (= tb!251197 b!4193610))

(declare-fun m!4782299 () Bool)

(assert (=> b!4193610 m!4782299))

(declare-fun m!4782301 () Bool)

(assert (=> tb!251197 m!4782301))

(assert (=> d!1236658 t!346170))

(declare-fun b_and!328697 () Bool)

(assert (= b_and!328657 (and (=> t!346170 result!306176) b_and!328697)))

(declare-fun tb!251199 () Bool)

(declare-fun t!346172 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 r!4142))) t!346172) tb!251199))

(declare-fun result!306178 () Bool)

(assert (= result!306178 result!306176))

(assert (=> d!1236658 t!346172))

(declare-fun b_and!328699 () Bool)

(assert (= b_and!328659 (and (=> t!346172 result!306178) b_and!328699)))

(declare-fun t!346174 () Bool)

(declare-fun tb!251201 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 r!4142))) t!346174) tb!251201))

(declare-fun result!306180 () Bool)

(assert (= result!306180 result!306176))

(assert (=> d!1236658 t!346174))

(declare-fun b_and!328701 () Bool)

(assert (= b_and!328661 (and (=> t!346174 result!306180) b_and!328701)))

(declare-fun b_lambda!123347 () Bool)

(assert (=> (not b_lambda!123347) (not d!1236658)))

(assert (=> d!1236658 t!346138))

(declare-fun b_and!328703 () Bool)

(assert (= b_and!328663 (and (=> t!346138 result!306134) b_and!328703)))

(assert (=> d!1236658 t!346140))

(declare-fun b_and!328705 () Bool)

(assert (= b_and!328665 (and (=> t!346140 result!306138) b_and!328705)))

(assert (=> d!1236658 t!346142))

(declare-fun b_and!328707 () Bool)

(assert (= b_and!328667 (and (=> t!346142 result!306140) b_and!328707)))

(assert (=> d!1236658 m!4782093))

(declare-fun m!4782303 () Bool)

(assert (=> d!1236658 m!4782303))

(assert (=> d!1236658 m!4782093))

(declare-fun m!4782305 () Bool)

(assert (=> d!1236658 m!4782305))

(assert (=> d!1236658 m!4782303))

(declare-fun m!4782307 () Bool)

(assert (=> d!1236658 m!4782307))

(declare-fun m!4782309 () Bool)

(assert (=> d!1236658 m!4782309))

(assert (=> b!4193165 d!1236658))

(declare-fun b!4193611 () Bool)

(declare-fun e!2603222 () Option!9876)

(assert (=> b!4193611 (= e!2603222 None!9875)))

(declare-fun b!4193612 () Bool)

(declare-fun e!2603219 () Bool)

(declare-fun lt!1493709 () Option!9876)

(assert (=> b!4193612 (= e!2603219 (= (size!33849 (_1!25061 (get!14982 lt!1493709))) (size!33850 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709))))))))

(declare-fun d!1236716 () Bool)

(declare-fun e!2603221 () Bool)

(assert (=> d!1236716 e!2603221))

(declare-fun res!1721479 () Bool)

(assert (=> d!1236716 (=> res!1721479 e!2603221)))

(assert (=> d!1236716 (= res!1721479 (isEmpty!27275 lt!1493709))))

(assert (=> d!1236716 (= lt!1493709 e!2603222)))

(declare-fun c!715376 () Bool)

(declare-fun lt!1493710 () tuple2!43858)

(assert (=> d!1236716 (= c!715376 (isEmpty!27276 (_1!25063 lt!1493710)))))

(assert (=> d!1236716 (= lt!1493710 (findLongestMatch!1526 (regex!7682 r!4142) input!3342))))

(assert (=> d!1236716 (ruleValid!3400 thiss!25986 r!4142)))

(assert (=> d!1236716 (= (maxPrefixOneRule!3284 thiss!25986 r!4142 input!3342) lt!1493709)))

(declare-fun b!4193613 () Bool)

(assert (=> b!4193613 (= e!2603221 e!2603219)))

(declare-fun res!1721478 () Bool)

(assert (=> b!4193613 (=> (not res!1721478) (not e!2603219))))

(assert (=> b!4193613 (= res!1721478 (matchR!6326 (regex!7682 r!4142) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))))))

(declare-fun b!4193614 () Bool)

(declare-fun res!1721480 () Bool)

(assert (=> b!4193614 (=> (not res!1721480) (not e!2603219))))

(assert (=> b!4193614 (= res!1721480 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709)))) (_2!25061 (get!14982 lt!1493709))) input!3342))))

(declare-fun b!4193615 () Bool)

(assert (=> b!4193615 (= e!2603222 (Some!9875 (tuple2!43855 (Token!14079 (apply!10647 (transformation!7682 r!4142) (seqFromList!5707 (_1!25063 lt!1493710))) r!4142 (size!33851 (seqFromList!5707 (_1!25063 lt!1493710))) (_1!25063 lt!1493710)) (_2!25063 lt!1493710))))))

(declare-fun lt!1493711 () Unit!65139)

(assert (=> b!4193615 (= lt!1493711 (longestMatchIsAcceptedByMatchOrIsEmpty!1586 (regex!7682 r!4142) input!3342))))

(declare-fun res!1721483 () Bool)

(assert (=> b!4193615 (= res!1721483 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun e!2603220 () Bool)

(assert (=> b!4193615 (=> res!1721483 e!2603220)))

(assert (=> b!4193615 e!2603220))

(declare-fun lt!1493708 () Unit!65139)

(assert (=> b!4193615 (= lt!1493708 lt!1493711)))

(declare-fun lt!1493712 () Unit!65139)

(assert (=> b!4193615 (= lt!1493712 (lemmaSemiInverse!2448 (transformation!7682 r!4142) (seqFromList!5707 (_1!25063 lt!1493710))))))

(declare-fun b!4193616 () Bool)

(assert (=> b!4193616 (= e!2603220 (matchR!6326 (regex!7682 r!4142) (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun b!4193617 () Bool)

(declare-fun res!1721477 () Bool)

(assert (=> b!4193617 (=> (not res!1721477) (not e!2603219))))

(assert (=> b!4193617 (= res!1721477 (< (size!33850 (_2!25061 (get!14982 lt!1493709))) (size!33850 input!3342)))))

(declare-fun b!4193618 () Bool)

(declare-fun res!1721482 () Bool)

(assert (=> b!4193618 (=> (not res!1721482) (not e!2603219))))

(assert (=> b!4193618 (= res!1721482 (= (value!239469 (_1!25061 (get!14982 lt!1493709))) (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709)))))))))

(declare-fun b!4193619 () Bool)

(declare-fun res!1721481 () Bool)

(assert (=> b!4193619 (=> (not res!1721481) (not e!2603219))))

(assert (=> b!4193619 (= res!1721481 (= (rule!10770 (_1!25061 (get!14982 lt!1493709))) r!4142))))

(assert (= (and d!1236716 c!715376) b!4193611))

(assert (= (and d!1236716 (not c!715376)) b!4193615))

(assert (= (and b!4193615 (not res!1721483)) b!4193616))

(assert (= (and d!1236716 (not res!1721479)) b!4193613))

(assert (= (and b!4193613 res!1721478) b!4193614))

(assert (= (and b!4193614 res!1721480) b!4193617))

(assert (= (and b!4193617 res!1721477) b!4193619))

(assert (= (and b!4193619 res!1721481) b!4193618))

(assert (= (and b!4193618 res!1721482) b!4193612))

(declare-fun m!4782311 () Bool)

(assert (=> b!4193615 m!4782311))

(assert (=> b!4193615 m!4781803))

(declare-fun m!4782313 () Bool)

(assert (=> b!4193615 m!4782313))

(assert (=> b!4193615 m!4782039))

(assert (=> b!4193615 m!4781803))

(declare-fun m!4782315 () Bool)

(assert (=> b!4193615 m!4782315))

(declare-fun m!4782317 () Bool)

(assert (=> b!4193615 m!4782317))

(assert (=> b!4193615 m!4782317))

(declare-fun m!4782319 () Bool)

(assert (=> b!4193615 m!4782319))

(assert (=> b!4193615 m!4782039))

(assert (=> b!4193615 m!4782317))

(declare-fun m!4782321 () Bool)

(assert (=> b!4193615 m!4782321))

(assert (=> b!4193615 m!4782317))

(declare-fun m!4782323 () Bool)

(assert (=> b!4193615 m!4782323))

(declare-fun m!4782325 () Bool)

(assert (=> b!4193613 m!4782325))

(declare-fun m!4782327 () Bool)

(assert (=> b!4193613 m!4782327))

(assert (=> b!4193613 m!4782327))

(declare-fun m!4782329 () Bool)

(assert (=> b!4193613 m!4782329))

(assert (=> b!4193613 m!4782329))

(declare-fun m!4782331 () Bool)

(assert (=> b!4193613 m!4782331))

(declare-fun m!4782333 () Bool)

(assert (=> d!1236716 m!4782333))

(declare-fun m!4782335 () Bool)

(assert (=> d!1236716 m!4782335))

(declare-fun m!4782337 () Bool)

(assert (=> d!1236716 m!4782337))

(assert (=> d!1236716 m!4781853))

(assert (=> b!4193619 m!4782325))

(assert (=> b!4193616 m!4782039))

(assert (=> b!4193616 m!4781803))

(assert (=> b!4193616 m!4782039))

(assert (=> b!4193616 m!4781803))

(assert (=> b!4193616 m!4782315))

(declare-fun m!4782339 () Bool)

(assert (=> b!4193616 m!4782339))

(assert (=> b!4193612 m!4782325))

(declare-fun m!4782341 () Bool)

(assert (=> b!4193612 m!4782341))

(assert (=> b!4193614 m!4782325))

(assert (=> b!4193614 m!4782327))

(assert (=> b!4193614 m!4782327))

(assert (=> b!4193614 m!4782329))

(assert (=> b!4193614 m!4782329))

(declare-fun m!4782343 () Bool)

(assert (=> b!4193614 m!4782343))

(assert (=> b!4193617 m!4782325))

(declare-fun m!4782345 () Bool)

(assert (=> b!4193617 m!4782345))

(assert (=> b!4193617 m!4781803))

(assert (=> b!4193618 m!4782325))

(declare-fun m!4782347 () Bool)

(assert (=> b!4193618 m!4782347))

(assert (=> b!4193618 m!4782347))

(declare-fun m!4782349 () Bool)

(assert (=> b!4193618 m!4782349))

(assert (=> b!4193165 d!1236716))

(declare-fun d!1236718 () Bool)

(declare-fun lt!1493713 () Int)

(assert (=> d!1236718 (>= lt!1493713 0)))

(declare-fun e!2603223 () Int)

(assert (=> d!1236718 (= lt!1493713 e!2603223)))

(declare-fun c!715377 () Bool)

(assert (=> d!1236718 (= c!715377 ((_ is Nil!46062) p!2959))))

(assert (=> d!1236718 (= (size!33850 p!2959) lt!1493713)))

(declare-fun b!4193620 () Bool)

(assert (=> b!4193620 (= e!2603223 0)))

(declare-fun b!4193621 () Bool)

(assert (=> b!4193621 (= e!2603223 (+ 1 (size!33850 (t!346117 p!2959))))))

(assert (= (and d!1236718 c!715377) b!4193620))

(assert (= (and d!1236718 (not c!715377)) b!4193621))

(declare-fun m!4782351 () Bool)

(assert (=> b!4193621 m!4782351))

(assert (=> b!4193165 d!1236718))

(declare-fun d!1236720 () Bool)

(declare-fun res!1721484 () Bool)

(declare-fun e!2603224 () Bool)

(assert (=> d!1236720 (=> (not res!1721484) (not e!2603224))))

(assert (=> d!1236720 (= res!1721484 (validRegex!5704 (regex!7682 rBis!167)))))

(assert (=> d!1236720 (= (ruleValid!3400 thiss!25986 rBis!167) e!2603224)))

(declare-fun b!4193622 () Bool)

(declare-fun res!1721485 () Bool)

(assert (=> b!4193622 (=> (not res!1721485) (not e!2603224))))

(assert (=> b!4193622 (= res!1721485 (not (nullable!4423 (regex!7682 rBis!167))))))

(declare-fun b!4193623 () Bool)

(assert (=> b!4193623 (= e!2603224 (not (= (tag!8546 rBis!167) (String!53427 ""))))))

(assert (= (and d!1236720 res!1721484) b!4193622))

(assert (= (and b!4193622 res!1721485) b!4193623))

(declare-fun m!4782353 () Bool)

(assert (=> d!1236720 m!4782353))

(declare-fun m!4782355 () Bool)

(assert (=> b!4193622 m!4782355))

(assert (=> b!4193163 d!1236720))

(declare-fun d!1236722 () Bool)

(declare-fun lt!1493716 () Bool)

(declare-fun content!7182 (List!46187) (InoxSet Rule!15164))

(assert (=> d!1236722 (= lt!1493716 (select (content!7182 rules!3843) r!4142))))

(declare-fun e!2603230 () Bool)

(assert (=> d!1236722 (= lt!1493716 e!2603230)))

(declare-fun res!1721491 () Bool)

(assert (=> d!1236722 (=> (not res!1721491) (not e!2603230))))

(assert (=> d!1236722 (= res!1721491 ((_ is Cons!46063) rules!3843))))

(assert (=> d!1236722 (= (contains!9491 rules!3843 r!4142) lt!1493716)))

(declare-fun b!4193628 () Bool)

(declare-fun e!2603229 () Bool)

(assert (=> b!4193628 (= e!2603230 e!2603229)))

(declare-fun res!1721490 () Bool)

(assert (=> b!4193628 (=> res!1721490 e!2603229)))

(assert (=> b!4193628 (= res!1721490 (= (h!51483 rules!3843) r!4142))))

(declare-fun b!4193629 () Bool)

(assert (=> b!4193629 (= e!2603229 (contains!9491 (t!346118 rules!3843) r!4142))))

(assert (= (and d!1236722 res!1721491) b!4193628))

(assert (= (and b!4193628 (not res!1721490)) b!4193629))

(declare-fun m!4782357 () Bool)

(assert (=> d!1236722 m!4782357))

(declare-fun m!4782359 () Bool)

(assert (=> d!1236722 m!4782359))

(declare-fun m!4782361 () Bool)

(assert (=> b!4193629 m!4782361))

(assert (=> b!4193174 d!1236722))

(declare-fun d!1236724 () Bool)

(assert (=> d!1236724 (= (inv!60609 (tag!8546 rBis!167)) (= (mod (str.len (value!239468 (tag!8546 rBis!167))) 2) 0))))

(assert (=> b!4193153 d!1236724))

(declare-fun d!1236726 () Bool)

(declare-fun res!1721492 () Bool)

(declare-fun e!2603231 () Bool)

(assert (=> d!1236726 (=> (not res!1721492) (not e!2603231))))

(assert (=> d!1236726 (= res!1721492 (semiInverseModEq!3332 (toChars!10237 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 rBis!167))))))

(assert (=> d!1236726 (= (inv!60612 (transformation!7682 rBis!167)) e!2603231)))

(declare-fun b!4193630 () Bool)

(assert (=> b!4193630 (= e!2603231 (equivClasses!3231 (toChars!10237 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 rBis!167))))))

(assert (= (and d!1236726 res!1721492) b!4193630))

(declare-fun m!4782363 () Bool)

(assert (=> d!1236726 m!4782363))

(declare-fun m!4782365 () Bool)

(assert (=> b!4193630 m!4782365))

(assert (=> b!4193153 d!1236726))

(declare-fun b!4193659 () Bool)

(declare-fun e!2603252 () Bool)

(declare-fun e!2603249 () Bool)

(assert (=> b!4193659 (= e!2603252 e!2603249)))

(declare-fun res!1721514 () Bool)

(assert (=> b!4193659 (=> res!1721514 e!2603249)))

(declare-fun call!292268 () Bool)

(assert (=> b!4193659 (= res!1721514 call!292268)))

(declare-fun b!4193660 () Bool)

(declare-fun res!1721512 () Bool)

(declare-fun e!2603246 () Bool)

(assert (=> b!4193660 (=> res!1721512 e!2603246)))

(assert (=> b!4193660 (= res!1721512 (not ((_ is ElementMatch!12587) (regex!7682 r!4142))))))

(declare-fun e!2603247 () Bool)

(assert (=> b!4193660 (= e!2603247 e!2603246)))

(declare-fun b!4193661 () Bool)

(declare-fun res!1721511 () Bool)

(declare-fun e!2603250 () Bool)

(assert (=> b!4193661 (=> (not res!1721511) (not e!2603250))))

(assert (=> b!4193661 (= res!1721511 (not call!292268))))

(declare-fun b!4193662 () Bool)

(assert (=> b!4193662 (= e!2603249 (not (= (head!8900 p!2959) (c!715317 (regex!7682 r!4142)))))))

(declare-fun b!4193663 () Bool)

(declare-fun e!2603248 () Bool)

(assert (=> b!4193663 (= e!2603248 (nullable!4423 (regex!7682 r!4142)))))

(declare-fun b!4193664 () Bool)

(assert (=> b!4193664 (= e!2603246 e!2603252)))

(declare-fun res!1721509 () Bool)

(assert (=> b!4193664 (=> (not res!1721509) (not e!2603252))))

(declare-fun lt!1493719 () Bool)

(assert (=> b!4193664 (= res!1721509 (not lt!1493719))))

(declare-fun b!4193665 () Bool)

(assert (=> b!4193665 (= e!2603250 (= (head!8900 p!2959) (c!715317 (regex!7682 r!4142))))))

(declare-fun b!4193666 () Bool)

(declare-fun derivativeStep!3813 (Regex!12587 C!25364) Regex!12587)

(assert (=> b!4193666 (= e!2603248 (matchR!6326 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959)) (tail!6747 p!2959)))))

(declare-fun b!4193667 () Bool)

(declare-fun res!1721515 () Bool)

(assert (=> b!4193667 (=> res!1721515 e!2603249)))

(assert (=> b!4193667 (= res!1721515 (not (isEmpty!27276 (tail!6747 p!2959))))))

(declare-fun d!1236728 () Bool)

(declare-fun e!2603251 () Bool)

(assert (=> d!1236728 e!2603251))

(declare-fun c!715385 () Bool)

(assert (=> d!1236728 (= c!715385 ((_ is EmptyExpr!12587) (regex!7682 r!4142)))))

(assert (=> d!1236728 (= lt!1493719 e!2603248)))

(declare-fun c!715386 () Bool)

(assert (=> d!1236728 (= c!715386 (isEmpty!27276 p!2959))))

(assert (=> d!1236728 (validRegex!5704 (regex!7682 r!4142))))

(assert (=> d!1236728 (= (matchR!6326 (regex!7682 r!4142) p!2959) lt!1493719)))

(declare-fun b!4193668 () Bool)

(assert (=> b!4193668 (= e!2603247 (not lt!1493719))))

(declare-fun b!4193669 () Bool)

(assert (=> b!4193669 (= e!2603251 e!2603247)))

(declare-fun c!715384 () Bool)

(assert (=> b!4193669 (= c!715384 ((_ is EmptyLang!12587) (regex!7682 r!4142)))))

(declare-fun b!4193670 () Bool)

(declare-fun res!1721510 () Bool)

(assert (=> b!4193670 (=> (not res!1721510) (not e!2603250))))

(assert (=> b!4193670 (= res!1721510 (isEmpty!27276 (tail!6747 p!2959)))))

(declare-fun bm!292263 () Bool)

(assert (=> bm!292263 (= call!292268 (isEmpty!27276 p!2959))))

(declare-fun b!4193671 () Bool)

(assert (=> b!4193671 (= e!2603251 (= lt!1493719 call!292268))))

(declare-fun b!4193672 () Bool)

(declare-fun res!1721513 () Bool)

(assert (=> b!4193672 (=> res!1721513 e!2603246)))

(assert (=> b!4193672 (= res!1721513 e!2603250)))

(declare-fun res!1721516 () Bool)

(assert (=> b!4193672 (=> (not res!1721516) (not e!2603250))))

(assert (=> b!4193672 (= res!1721516 lt!1493719)))

(assert (= (and d!1236728 c!715386) b!4193663))

(assert (= (and d!1236728 (not c!715386)) b!4193666))

(assert (= (and d!1236728 c!715385) b!4193671))

(assert (= (and d!1236728 (not c!715385)) b!4193669))

(assert (= (and b!4193669 c!715384) b!4193668))

(assert (= (and b!4193669 (not c!715384)) b!4193660))

(assert (= (and b!4193660 (not res!1721512)) b!4193672))

(assert (= (and b!4193672 res!1721516) b!4193661))

(assert (= (and b!4193661 res!1721511) b!4193670))

(assert (= (and b!4193670 res!1721510) b!4193665))

(assert (= (and b!4193672 (not res!1721513)) b!4193664))

(assert (= (and b!4193664 res!1721509) b!4193659))

(assert (= (and b!4193659 (not res!1721514)) b!4193667))

(assert (= (and b!4193667 (not res!1721515)) b!4193662))

(assert (= (or b!4193671 b!4193659 b!4193661) bm!292263))

(assert (=> b!4193670 m!4782023))

(assert (=> b!4193670 m!4782023))

(declare-fun m!4782367 () Bool)

(assert (=> b!4193670 m!4782367))

(assert (=> b!4193662 m!4782029))

(assert (=> b!4193665 m!4782029))

(assert (=> b!4193663 m!4781975))

(declare-fun m!4782369 () Bool)

(assert (=> bm!292263 m!4782369))

(assert (=> b!4193667 m!4782023))

(assert (=> b!4193667 m!4782023))

(assert (=> b!4193667 m!4782367))

(assert (=> d!1236728 m!4782369))

(assert (=> d!1236728 m!4781783))

(assert (=> b!4193666 m!4782029))

(assert (=> b!4193666 m!4782029))

(declare-fun m!4782371 () Bool)

(assert (=> b!4193666 m!4782371))

(assert (=> b!4193666 m!4782023))

(assert (=> b!4193666 m!4782371))

(assert (=> b!4193666 m!4782023))

(declare-fun m!4782373 () Bool)

(assert (=> b!4193666 m!4782373))

(assert (=> b!4193151 d!1236728))

(declare-fun d!1236730 () Bool)

(declare-fun lt!1493720 () Bool)

(assert (=> d!1236730 (= lt!1493720 (select (content!7182 rules!3843) rBis!167))))

(declare-fun e!2603254 () Bool)

(assert (=> d!1236730 (= lt!1493720 e!2603254)))

(declare-fun res!1721518 () Bool)

(assert (=> d!1236730 (=> (not res!1721518) (not e!2603254))))

(assert (=> d!1236730 (= res!1721518 ((_ is Cons!46063) rules!3843))))

(assert (=> d!1236730 (= (contains!9491 rules!3843 rBis!167) lt!1493720)))

(declare-fun b!4193673 () Bool)

(declare-fun e!2603253 () Bool)

(assert (=> b!4193673 (= e!2603254 e!2603253)))

(declare-fun res!1721517 () Bool)

(assert (=> b!4193673 (=> res!1721517 e!2603253)))

(assert (=> b!4193673 (= res!1721517 (= (h!51483 rules!3843) rBis!167))))

(declare-fun b!4193674 () Bool)

(assert (=> b!4193674 (= e!2603253 (contains!9491 (t!346118 rules!3843) rBis!167))))

(assert (= (and d!1236730 res!1721518) b!4193673))

(assert (= (and b!4193673 (not res!1721517)) b!4193674))

(assert (=> d!1236730 m!4782357))

(declare-fun m!4782375 () Bool)

(assert (=> d!1236730 m!4782375))

(declare-fun m!4782377 () Bool)

(assert (=> b!4193674 m!4782377))

(assert (=> b!4193162 d!1236730))

(declare-fun b!4193678 () Bool)

(declare-fun e!2603255 () Bool)

(assert (=> b!4193678 (= e!2603255 (>= (size!33850 input!3342) (size!33850 pBis!107)))))

(declare-fun b!4193677 () Bool)

(declare-fun e!2603257 () Bool)

(assert (=> b!4193677 (= e!2603257 (isPrefix!4539 (tail!6747 pBis!107) (tail!6747 input!3342)))))

(declare-fun d!1236732 () Bool)

(assert (=> d!1236732 e!2603255))

(declare-fun res!1721519 () Bool)

(assert (=> d!1236732 (=> res!1721519 e!2603255)))

(declare-fun lt!1493721 () Bool)

(assert (=> d!1236732 (= res!1721519 (not lt!1493721))))

(declare-fun e!2603256 () Bool)

(assert (=> d!1236732 (= lt!1493721 e!2603256)))

(declare-fun res!1721522 () Bool)

(assert (=> d!1236732 (=> res!1721522 e!2603256)))

(assert (=> d!1236732 (= res!1721522 ((_ is Nil!46062) pBis!107))))

(assert (=> d!1236732 (= (isPrefix!4539 pBis!107 input!3342) lt!1493721)))

(declare-fun b!4193675 () Bool)

(assert (=> b!4193675 (= e!2603256 e!2603257)))

(declare-fun res!1721521 () Bool)

(assert (=> b!4193675 (=> (not res!1721521) (not e!2603257))))

(assert (=> b!4193675 (= res!1721521 (not ((_ is Nil!46062) input!3342)))))

(declare-fun b!4193676 () Bool)

(declare-fun res!1721520 () Bool)

(assert (=> b!4193676 (=> (not res!1721520) (not e!2603257))))

(assert (=> b!4193676 (= res!1721520 (= (head!8900 pBis!107) (head!8900 input!3342)))))

(assert (= (and d!1236732 (not res!1721522)) b!4193675))

(assert (= (and b!4193675 res!1721521) b!4193676))

(assert (= (and b!4193676 res!1721520) b!4193677))

(assert (= (and d!1236732 (not res!1721519)) b!4193678))

(assert (=> b!4193678 m!4781803))

(assert (=> b!4193678 m!4781777))

(declare-fun m!4782379 () Bool)

(assert (=> b!4193677 m!4782379))

(assert (=> b!4193677 m!4782025))

(assert (=> b!4193677 m!4782379))

(assert (=> b!4193677 m!4782025))

(declare-fun m!4782381 () Bool)

(assert (=> b!4193677 m!4782381))

(declare-fun m!4782383 () Bool)

(assert (=> b!4193676 m!4782383))

(assert (=> b!4193676 m!4782031))

(assert (=> b!4193173 d!1236732))

(declare-fun d!1236734 () Bool)

(declare-fun lt!1493722 () Int)

(assert (=> d!1236734 (>= lt!1493722 0)))

(declare-fun e!2603258 () Int)

(assert (=> d!1236734 (= lt!1493722 e!2603258)))

(declare-fun c!715387 () Bool)

(assert (=> d!1236734 (= c!715387 ((_ is Nil!46062) pBis!107))))

(assert (=> d!1236734 (= (size!33850 pBis!107) lt!1493722)))

(declare-fun b!4193679 () Bool)

(assert (=> b!4193679 (= e!2603258 0)))

(declare-fun b!4193680 () Bool)

(assert (=> b!4193680 (= e!2603258 (+ 1 (size!33850 (t!346117 pBis!107))))))

(assert (= (and d!1236734 c!715387) b!4193679))

(assert (= (and d!1236734 (not c!715387)) b!4193680))

(declare-fun m!4782385 () Bool)

(assert (=> b!4193680 m!4782385))

(assert (=> b!4193171 d!1236734))

(declare-fun b!4193691 () Bool)

(declare-fun b_free!122175 () Bool)

(declare-fun b_next!122879 () Bool)

(assert (=> b!4193691 (= b_free!122175 (not b_next!122879))))

(declare-fun tb!251203 () Bool)

(declare-fun t!346176 () Bool)

(assert (=> (and b!4193691 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 r!4142))) t!346176) tb!251203))

(declare-fun result!306184 () Bool)

(assert (= result!306184 result!306134))

(assert (=> d!1236656 t!346176))

(assert (=> d!1236658 t!346176))

(declare-fun tp!1281265 () Bool)

(declare-fun b_and!328709 () Bool)

(assert (=> b!4193691 (= tp!1281265 (and (=> t!346176 result!306184) b_and!328709))))

(declare-fun b_free!122177 () Bool)

(declare-fun b_next!122881 () Bool)

(assert (=> b!4193691 (= b_free!122177 (not b_next!122881))))

(declare-fun t!346178 () Bool)

(declare-fun tb!251205 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550)))) t!346178) tb!251205))

(declare-fun result!306186 () Bool)

(assert (= result!306186 result!306112))

(assert (=> b!4193260 t!346178))

(declare-fun tb!251207 () Bool)

(declare-fun t!346180 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544))))) t!346180) tb!251207))

(declare-fun result!306188 () Bool)

(assert (= result!306188 result!306128))

(assert (=> d!1236618 t!346180))

(declare-fun tb!251209 () Bool)

(declare-fun t!346182 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 r!4142))) t!346182) tb!251209))

(declare-fun result!306190 () Bool)

(assert (= result!306190 result!306176))

(assert (=> d!1236658 t!346182))

(declare-fun b_and!328711 () Bool)

(declare-fun tp!1281264 () Bool)

(assert (=> b!4193691 (= tp!1281264 (and (=> t!346178 result!306186) (=> t!346180 result!306188) (=> t!346182 result!306190) b_and!328711))))

(declare-fun e!2603269 () Bool)

(assert (=> b!4193691 (= e!2603269 (and tp!1281265 tp!1281264))))

(declare-fun e!2603268 () Bool)

(declare-fun tp!1281266 () Bool)

(declare-fun b!4193690 () Bool)

(assert (=> b!4193690 (= e!2603268 (and tp!1281266 (inv!60609 (tag!8546 (h!51483 (t!346118 rules!3843)))) (inv!60612 (transformation!7682 (h!51483 (t!346118 rules!3843)))) e!2603269))))

(declare-fun b!4193689 () Bool)

(declare-fun e!2603267 () Bool)

(declare-fun tp!1281263 () Bool)

(assert (=> b!4193689 (= e!2603267 (and e!2603268 tp!1281263))))

(assert (=> b!4193152 (= tp!1281199 e!2603267)))

(assert (= b!4193690 b!4193691))

(assert (= b!4193689 b!4193690))

(assert (= (and b!4193152 ((_ is Cons!46063) (t!346118 rules!3843))) b!4193689))

(declare-fun m!4782387 () Bool)

(assert (=> b!4193690 m!4782387))

(declare-fun m!4782389 () Bool)

(assert (=> b!4193690 m!4782389))

(declare-fun b!4193696 () Bool)

(declare-fun e!2603273 () Bool)

(declare-fun tp!1281269 () Bool)

(assert (=> b!4193696 (= e!2603273 (and tp_is_empty!22137 tp!1281269))))

(assert (=> b!4193158 (= tp!1281198 e!2603273)))

(assert (= (and b!4193158 ((_ is Cons!46062) (t!346117 input!3342))) b!4193696))

(declare-fun b!4193710 () Bool)

(declare-fun e!2603276 () Bool)

(declare-fun tp!1281280 () Bool)

(declare-fun tp!1281282 () Bool)

(assert (=> b!4193710 (= e!2603276 (and tp!1281280 tp!1281282))))

(assert (=> b!4193153 (= tp!1281191 e!2603276)))

(declare-fun b!4193709 () Bool)

(declare-fun tp!1281281 () Bool)

(assert (=> b!4193709 (= e!2603276 tp!1281281)))

(declare-fun b!4193707 () Bool)

(assert (=> b!4193707 (= e!2603276 tp_is_empty!22137)))

(declare-fun b!4193708 () Bool)

(declare-fun tp!1281283 () Bool)

(declare-fun tp!1281284 () Bool)

(assert (=> b!4193708 (= e!2603276 (and tp!1281283 tp!1281284))))

(assert (= (and b!4193153 ((_ is ElementMatch!12587) (regex!7682 rBis!167))) b!4193707))

(assert (= (and b!4193153 ((_ is Concat!20500) (regex!7682 rBis!167))) b!4193708))

(assert (= (and b!4193153 ((_ is Star!12587) (regex!7682 rBis!167))) b!4193709))

(assert (= (and b!4193153 ((_ is Union!12587) (regex!7682 rBis!167))) b!4193710))

(declare-fun b!4193711 () Bool)

(declare-fun e!2603277 () Bool)

(declare-fun tp!1281285 () Bool)

(assert (=> b!4193711 (= e!2603277 (and tp_is_empty!22137 tp!1281285))))

(assert (=> b!4193172 (= tp!1281196 e!2603277)))

(assert (= (and b!4193172 ((_ is Cons!46062) (t!346117 pBis!107))) b!4193711))

(declare-fun b!4193715 () Bool)

(declare-fun e!2603278 () Bool)

(declare-fun tp!1281286 () Bool)

(declare-fun tp!1281288 () Bool)

(assert (=> b!4193715 (= e!2603278 (and tp!1281286 tp!1281288))))

(assert (=> b!4193167 (= tp!1281201 e!2603278)))

(declare-fun b!4193714 () Bool)

(declare-fun tp!1281287 () Bool)

(assert (=> b!4193714 (= e!2603278 tp!1281287)))

(declare-fun b!4193712 () Bool)

(assert (=> b!4193712 (= e!2603278 tp_is_empty!22137)))

(declare-fun b!4193713 () Bool)

(declare-fun tp!1281289 () Bool)

(declare-fun tp!1281290 () Bool)

(assert (=> b!4193713 (= e!2603278 (and tp!1281289 tp!1281290))))

(assert (= (and b!4193167 ((_ is ElementMatch!12587) (regex!7682 (h!51483 rules!3843)))) b!4193712))

(assert (= (and b!4193167 ((_ is Concat!20500) (regex!7682 (h!51483 rules!3843)))) b!4193713))

(assert (= (and b!4193167 ((_ is Star!12587) (regex!7682 (h!51483 rules!3843)))) b!4193714))

(assert (= (and b!4193167 ((_ is Union!12587) (regex!7682 (h!51483 rules!3843)))) b!4193715))

(declare-fun b!4193719 () Bool)

(declare-fun e!2603279 () Bool)

(declare-fun tp!1281291 () Bool)

(declare-fun tp!1281293 () Bool)

(assert (=> b!4193719 (= e!2603279 (and tp!1281291 tp!1281293))))

(assert (=> b!4193155 (= tp!1281192 e!2603279)))

(declare-fun b!4193718 () Bool)

(declare-fun tp!1281292 () Bool)

(assert (=> b!4193718 (= e!2603279 tp!1281292)))

(declare-fun b!4193716 () Bool)

(assert (=> b!4193716 (= e!2603279 tp_is_empty!22137)))

(declare-fun b!4193717 () Bool)

(declare-fun tp!1281294 () Bool)

(declare-fun tp!1281295 () Bool)

(assert (=> b!4193717 (= e!2603279 (and tp!1281294 tp!1281295))))

(assert (= (and b!4193155 ((_ is ElementMatch!12587) (regex!7682 r!4142))) b!4193716))

(assert (= (and b!4193155 ((_ is Concat!20500) (regex!7682 r!4142))) b!4193717))

(assert (= (and b!4193155 ((_ is Star!12587) (regex!7682 r!4142))) b!4193718))

(assert (= (and b!4193155 ((_ is Union!12587) (regex!7682 r!4142))) b!4193719))

(declare-fun b!4193720 () Bool)

(declare-fun e!2603280 () Bool)

(declare-fun tp!1281296 () Bool)

(assert (=> b!4193720 (= e!2603280 (and tp_is_empty!22137 tp!1281296))))

(assert (=> b!4193166 (= tp!1281202 e!2603280)))

(assert (= (and b!4193166 ((_ is Cons!46062) (t!346117 p!2959))) b!4193720))

(declare-fun b_lambda!123349 () Bool)

(assert (= b_lambda!123345 (or (and b!4193164 b_free!122161 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142)))) (and b!4193154 b_free!122165 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 r!4142)))) (and b!4193161 b_free!122169) (and b!4193691 b_free!122177 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 r!4142)))) b_lambda!123349)))

(declare-fun b_lambda!123351 () Bool)

(assert (= b_lambda!123347 (or (and b!4193164 b_free!122159 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193154 b_free!122163 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193161 b_free!122167) (and b!4193691 b_free!122175 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 r!4142)))) b_lambda!123351)))

(declare-fun b_lambda!123353 () Bool)

(assert (= b_lambda!123329 (or (and b!4193164 b_free!122159 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193154 b_free!122163 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193161 b_free!122167) (and b!4193691 b_free!122175 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 r!4142)))) b_lambda!123353)))

(check-sat (not b_next!122873) (not b!4193715) (not tb!251159) (not b!4193310) b_and!328705 (not b!4193616) (not b!4193292) (not b!4193261) (not b_lambda!123351) tp_is_empty!22137 (not b!4193618) (not b_next!122863) (not d!1236638) (not b_next!122871) (not b!4193666) (not d!1236648) (not d!1236642) (not b!4193676) (not b!4193615) (not b!4193677) (not b!4193260) (not d!1236658) (not b!4193216) (not b!4193283) (not d!1236598) (not b!4193613) (not b!4193375) (not d!1236644) (not b!4193215) (not b!4193351) (not d!1236654) (not b!4193380) (not b!4193612) (not b!4193680) (not b!4193378) (not d!1236652) (not b!4193719) b_and!328711 (not b!4193630) (not b!4193617) (not b!4193212) (not d!1236620) (not b!4193708) (not d!1236572) (not b!4193610) (not bm!292246) (not b!4193678) (not d!1236730) b_and!328707 (not b_lambda!123327) (not b!4193377) (not b!4193376) (not b!4193322) (not b!4193379) (not b!4193297) (not b!4193690) (not bm!292236) (not b!4193622) (not b!4193720) (not b_next!122881) (not d!1236614) (not b!4193214) (not b_next!122869) (not b!4193384) (not d!1236716) (not b!4193696) (not d!1236622) (not d!1236722) (not b!4193713) (not b!4193355) (not b!4193243) (not d!1236586) (not b_lambda!123323) (not d!1236728) b_and!328701 (not d!1236616) (not b!4193614) (not b!4193393) (not b!4193717) (not d!1236618) (not d!1236588) (not b!4193392) (not b!4193353) b_and!328699 (not d!1236628) b_and!328697 (not tb!251147) (not bm!292248) (not b!4193389) (not b!4193217) (not b!4193718) (not b!4193663) (not b!4193323) (not b!4193662) (not b!4193394) (not b!4193621) (not b!4193344) (not b!4193619) (not d!1236726) (not b_next!122867) (not d!1236634) (not b!4193219) (not b!4193710) (not bm!292263) (not b!4193309) (not b!4193213) (not b!4193382) (not b_lambda!123349) (not b!4193711) (not b!4193354) (not b!4193321) (not tb!251197) (not b!4193714) (not b!4193709) (not b!4193266) (not b!4193665) (not b!4193689) (not b_lambda!123353) (not d!1236602) b_and!328709 b_and!328703 (not b!4193629) (not b!4193670) (not b_next!122865) (not b_next!122879) (not b!4193211) (not d!1236720) (not b!4193381) (not b!4193667) (not tb!251165) (not b!4193299) (not b!4193674))
(check-sat b_and!328705 (not b_next!122873) b_and!328711 b_and!328707 (not b_next!122881) (not b_next!122869) b_and!328701 b_and!328699 b_and!328697 (not b_next!122867) (not b_next!122863) (not b_next!122871) b_and!328709 b_and!328703 (not b_next!122865) (not b_next!122879))
(get-model)

(declare-fun d!1236736 () Bool)

(assert (=> d!1236736 true))

(declare-fun lambda!129502 () Int)

(declare-fun order!24391 () Int)

(declare-fun dynLambda!19840 (Int Int) Int)

(assert (=> d!1236736 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 rBis!167))) (dynLambda!19840 order!24391 lambda!129502))))

(declare-fun Forall2!1166 (Int) Bool)

(assert (=> d!1236736 (= (equivClasses!3231 (toChars!10237 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 rBis!167))) (Forall2!1166 lambda!129502))))

(declare-fun bs!596682 () Bool)

(assert (= bs!596682 d!1236736))

(declare-fun m!4782391 () Bool)

(assert (=> bs!596682 m!4782391))

(assert (=> b!4193630 d!1236736))

(assert (=> b!4193394 d!1236646))

(declare-fun d!1236738 () Bool)

(declare-fun e!2603284 () Bool)

(assert (=> d!1236738 e!2603284))

(declare-fun res!1721525 () Bool)

(assert (=> d!1236738 (=> (not res!1721525) (not e!2603284))))

(declare-fun lt!1493723 () List!46186)

(assert (=> d!1236738 (= res!1721525 (= (content!7180 lt!1493723) ((_ map or) (content!7180 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))) (content!7180 (_2!25061 (get!14982 lt!1493709))))))))

(declare-fun e!2603283 () List!46186)

(assert (=> d!1236738 (= lt!1493723 e!2603283)))

(declare-fun c!715388 () Bool)

(assert (=> d!1236738 (= c!715388 ((_ is Nil!46062) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))))))

(assert (=> d!1236738 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709)))) (_2!25061 (get!14982 lt!1493709))) lt!1493723)))

(declare-fun b!4193725 () Bool)

(assert (=> b!4193725 (= e!2603283 (_2!25061 (get!14982 lt!1493709)))))

(declare-fun b!4193726 () Bool)

(assert (=> b!4193726 (= e!2603283 (Cons!46062 (h!51482 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))) (++!11754 (t!346117 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))) (_2!25061 (get!14982 lt!1493709)))))))

(declare-fun b!4193727 () Bool)

(declare-fun res!1721526 () Bool)

(assert (=> b!4193727 (=> (not res!1721526) (not e!2603284))))

(assert (=> b!4193727 (= res!1721526 (= (size!33850 lt!1493723) (+ (size!33850 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))) (size!33850 (_2!25061 (get!14982 lt!1493709))))))))

(declare-fun b!4193728 () Bool)

(assert (=> b!4193728 (= e!2603284 (or (not (= (_2!25061 (get!14982 lt!1493709)) Nil!46062)) (= lt!1493723 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709)))))))))

(assert (= (and d!1236738 c!715388) b!4193725))

(assert (= (and d!1236738 (not c!715388)) b!4193726))

(assert (= (and d!1236738 res!1721525) b!4193727))

(assert (= (and b!4193727 res!1721526) b!4193728))

(declare-fun m!4782393 () Bool)

(assert (=> d!1236738 m!4782393))

(assert (=> d!1236738 m!4782329))

(declare-fun m!4782395 () Bool)

(assert (=> d!1236738 m!4782395))

(declare-fun m!4782397 () Bool)

(assert (=> d!1236738 m!4782397))

(declare-fun m!4782399 () Bool)

(assert (=> b!4193726 m!4782399))

(declare-fun m!4782401 () Bool)

(assert (=> b!4193727 m!4782401))

(assert (=> b!4193727 m!4782329))

(declare-fun m!4782403 () Bool)

(assert (=> b!4193727 m!4782403))

(assert (=> b!4193727 m!4782345))

(assert (=> b!4193614 d!1236738))

(declare-fun d!1236740 () Bool)

(assert (=> d!1236740 (= (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709)))) (list!16647 (c!715316 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))))))

(declare-fun bs!596683 () Bool)

(assert (= bs!596683 d!1236740))

(declare-fun m!4782405 () Bool)

(assert (=> bs!596683 m!4782405))

(assert (=> b!4193614 d!1236740))

(declare-fun d!1236742 () Bool)

(declare-fun lt!1493724 () BalanceConc!27380)

(assert (=> d!1236742 (= (list!16646 lt!1493724) (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709))))))

(assert (=> d!1236742 (= lt!1493724 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709))))) (value!239469 (_1!25061 (get!14982 lt!1493709)))))))

(assert (=> d!1236742 (= (charsOf!5117 (_1!25061 (get!14982 lt!1493709))) lt!1493724)))

(declare-fun b_lambda!123355 () Bool)

(assert (=> (not b_lambda!123355) (not d!1236742)))

(declare-fun tb!251211 () Bool)

(declare-fun t!346186 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346186) tb!251211))

(declare-fun b!4193729 () Bool)

(declare-fun e!2603285 () Bool)

(declare-fun tp!1281297 () Bool)

(assert (=> b!4193729 (= e!2603285 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709))))) (value!239469 (_1!25061 (get!14982 lt!1493709)))))) tp!1281297))))

(declare-fun result!306196 () Bool)

(assert (=> tb!251211 (= result!306196 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709))))) (value!239469 (_1!25061 (get!14982 lt!1493709))))) e!2603285))))

(assert (= tb!251211 b!4193729))

(declare-fun m!4782407 () Bool)

(assert (=> b!4193729 m!4782407))

(declare-fun m!4782409 () Bool)

(assert (=> tb!251211 m!4782409))

(assert (=> d!1236742 t!346186))

(declare-fun b_and!328713 () Bool)

(assert (= b_and!328697 (and (=> t!346186 result!306196) b_and!328713)))

(declare-fun t!346188 () Bool)

(declare-fun tb!251213 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346188) tb!251213))

(declare-fun result!306198 () Bool)

(assert (= result!306198 result!306196))

(assert (=> d!1236742 t!346188))

(declare-fun b_and!328715 () Bool)

(assert (= b_and!328699 (and (=> t!346188 result!306198) b_and!328715)))

(declare-fun t!346190 () Bool)

(declare-fun tb!251215 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346190) tb!251215))

(declare-fun result!306200 () Bool)

(assert (= result!306200 result!306196))

(assert (=> d!1236742 t!346190))

(declare-fun b_and!328717 () Bool)

(assert (= b_and!328701 (and (=> t!346190 result!306200) b_and!328717)))

(declare-fun tb!251217 () Bool)

(declare-fun t!346192 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346192) tb!251217))

(declare-fun result!306202 () Bool)

(assert (= result!306202 result!306196))

(assert (=> d!1236742 t!346192))

(declare-fun b_and!328719 () Bool)

(assert (= b_and!328711 (and (=> t!346192 result!306202) b_and!328719)))

(declare-fun m!4782411 () Bool)

(assert (=> d!1236742 m!4782411))

(declare-fun m!4782413 () Bool)

(assert (=> d!1236742 m!4782413))

(assert (=> b!4193614 d!1236742))

(declare-fun d!1236744 () Bool)

(assert (=> d!1236744 (= (get!14982 lt!1493709) (v!40711 lt!1493709))))

(assert (=> b!4193614 d!1236744))

(declare-fun d!1236746 () Bool)

(declare-fun c!715391 () Bool)

(assert (=> d!1236746 (= c!715391 ((_ is Node!13893) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))))))

(declare-fun e!2603290 () Bool)

(assert (=> d!1236746 (= (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))) e!2603290)))

(declare-fun b!4193736 () Bool)

(declare-fun inv!60618 (Conc!13893) Bool)

(assert (=> b!4193736 (= e!2603290 (inv!60618 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))))))

(declare-fun b!4193737 () Bool)

(declare-fun e!2603291 () Bool)

(assert (=> b!4193737 (= e!2603290 e!2603291)))

(declare-fun res!1721529 () Bool)

(assert (=> b!4193737 (= res!1721529 (not ((_ is Leaf!21477) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))))))))

(assert (=> b!4193737 (=> res!1721529 e!2603291)))

(declare-fun b!4193738 () Bool)

(declare-fun inv!60619 (Conc!13893) Bool)

(assert (=> b!4193738 (= e!2603291 (inv!60619 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))))))

(assert (= (and d!1236746 c!715391) b!4193736))

(assert (= (and d!1236746 (not c!715391)) b!4193737))

(assert (= (and b!4193737 (not res!1721529)) b!4193738))

(declare-fun m!4782415 () Bool)

(assert (=> b!4193736 m!4782415))

(declare-fun m!4782417 () Bool)

(assert (=> b!4193738 m!4782417))

(assert (=> b!4193299 d!1236746))

(declare-fun bs!596684 () Bool)

(declare-fun d!1236748 () Bool)

(assert (= bs!596684 (and d!1236748 d!1236736)))

(declare-fun lambda!129503 () Int)

(assert (=> bs!596684 (= (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 rBis!167))) (= lambda!129503 lambda!129502))))

(assert (=> d!1236748 true))

(assert (=> d!1236748 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 (h!51483 rules!3843)))) (dynLambda!19840 order!24391 lambda!129503))))

(assert (=> d!1236748 (= (equivClasses!3231 (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 (h!51483 rules!3843)))) (Forall2!1166 lambda!129503))))

(declare-fun bs!596685 () Bool)

(assert (= bs!596685 d!1236748))

(declare-fun m!4782419 () Bool)

(assert (=> bs!596685 m!4782419))

(assert (=> b!4193292 d!1236748))

(declare-fun d!1236750 () Bool)

(assert (=> d!1236750 (= (get!14982 lt!1493641) (v!40711 lt!1493641))))

(assert (=> b!4193375 d!1236750))

(declare-fun d!1236752 () Bool)

(declare-fun lt!1493725 () Int)

(assert (=> d!1236752 (>= lt!1493725 0)))

(declare-fun e!2603292 () Int)

(assert (=> d!1236752 (= lt!1493725 e!2603292)))

(declare-fun c!715392 () Bool)

(assert (=> d!1236752 (= c!715392 ((_ is Nil!46062) (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641)))))))

(assert (=> d!1236752 (= (size!33850 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641)))) lt!1493725)))

(declare-fun b!4193739 () Bool)

(assert (=> b!4193739 (= e!2603292 0)))

(declare-fun b!4193740 () Bool)

(assert (=> b!4193740 (= e!2603292 (+ 1 (size!33850 (t!346117 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641)))))))))

(assert (= (and d!1236752 c!715392) b!4193739))

(assert (= (and d!1236752 (not c!715392)) b!4193740))

(declare-fun m!4782421 () Bool)

(assert (=> b!4193740 m!4782421))

(assert (=> b!4193375 d!1236752))

(declare-fun d!1236754 () Bool)

(declare-fun isBalanced!3737 (Conc!13893) Bool)

(assert (=> d!1236754 (= (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))) (isBalanced!3737 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))))

(declare-fun bs!596686 () Bool)

(assert (= bs!596686 d!1236754))

(declare-fun m!4782423 () Bool)

(assert (=> bs!596686 m!4782423))

(assert (=> tb!251197 d!1236754))

(declare-fun d!1236756 () Bool)

(declare-fun lt!1493726 () Int)

(assert (=> d!1236756 (>= lt!1493726 0)))

(declare-fun e!2603293 () Int)

(assert (=> d!1236756 (= lt!1493726 e!2603293)))

(declare-fun c!715393 () Bool)

(assert (=> d!1236756 (= c!715393 ((_ is Nil!46062) (originalCharacters!8070 lt!1493550)))))

(assert (=> d!1236756 (= (size!33850 (originalCharacters!8070 lt!1493550)) lt!1493726)))

(declare-fun b!4193741 () Bool)

(assert (=> b!4193741 (= e!2603293 0)))

(declare-fun b!4193742 () Bool)

(assert (=> b!4193742 (= e!2603293 (+ 1 (size!33850 (t!346117 (originalCharacters!8070 lt!1493550)))))))

(assert (= (and d!1236756 c!715393) b!4193741))

(assert (= (and d!1236756 (not c!715393)) b!4193742))

(declare-fun m!4782425 () Bool)

(assert (=> b!4193742 m!4782425))

(assert (=> b!4193261 d!1236756))

(declare-fun d!1236758 () Bool)

(assert (=> d!1236758 (= (list!16646 lt!1493616) (list!16647 (c!715316 lt!1493616)))))

(declare-fun bs!596687 () Bool)

(assert (= bs!596687 d!1236758))

(declare-fun m!4782427 () Bool)

(assert (=> bs!596687 m!4782427))

(assert (=> d!1236618 d!1236758))

(declare-fun d!1236760 () Bool)

(declare-fun e!2603297 () Bool)

(assert (=> d!1236760 e!2603297))

(declare-fun res!1721532 () Bool)

(assert (=> d!1236760 (=> (not res!1721532) (not e!2603297))))

(declare-fun lt!1493730 () BalanceConc!27380)

(assert (=> d!1236760 (= res!1721532 (= (list!16646 lt!1493730) p!2959))))

(declare-fun fromList!915 (List!46186) Conc!13893)

(assert (=> d!1236760 (= lt!1493730 (BalanceConc!27381 (fromList!915 p!2959)))))

(assert (=> d!1236760 (= (fromListB!2615 p!2959) lt!1493730)))

(declare-fun b!4193747 () Bool)

(assert (=> b!4193747 (= e!2603297 (isBalanced!3737 (fromList!915 p!2959)))))

(assert (= (and d!1236760 res!1721532) b!4193747))

(declare-fun m!4782431 () Bool)

(assert (=> d!1236760 m!4782431))

(declare-fun m!4782433 () Bool)

(assert (=> d!1236760 m!4782433))

(assert (=> b!4193747 m!4782433))

(assert (=> b!4193747 m!4782433))

(declare-fun m!4782435 () Bool)

(assert (=> b!4193747 m!4782435))

(assert (=> d!1236652 d!1236760))

(assert (=> b!4193618 d!1236744))

(declare-fun d!1236766 () Bool)

(assert (=> d!1236766 (= (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709))))) (dynLambda!19836 (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709))))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709))))))))

(declare-fun b_lambda!123357 () Bool)

(assert (=> (not b_lambda!123357) (not d!1236766)))

(declare-fun t!346194 () Bool)

(declare-fun tb!251219 () Bool)

(assert (=> (and b!4193164 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346194) tb!251219))

(declare-fun result!306204 () Bool)

(assert (=> tb!251219 (= result!306204 (inv!21 (dynLambda!19836 (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709))))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709)))))))))

(declare-fun m!4782437 () Bool)

(assert (=> tb!251219 m!4782437))

(assert (=> d!1236766 t!346194))

(declare-fun b_and!328721 () Bool)

(assert (= b_and!328703 (and (=> t!346194 result!306204) b_and!328721)))

(declare-fun t!346196 () Bool)

(declare-fun tb!251221 () Bool)

(assert (=> (and b!4193154 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346196) tb!251221))

(declare-fun result!306206 () Bool)

(assert (= result!306206 result!306204))

(assert (=> d!1236766 t!346196))

(declare-fun b_and!328723 () Bool)

(assert (= b_and!328705 (and (=> t!346196 result!306206) b_and!328723)))

(declare-fun t!346198 () Bool)

(declare-fun tb!251223 () Bool)

(assert (=> (and b!4193161 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346198) tb!251223))

(declare-fun result!306208 () Bool)

(assert (= result!306208 result!306204))

(assert (=> d!1236766 t!346198))

(declare-fun b_and!328725 () Bool)

(assert (= b_and!328707 (and (=> t!346198 result!306208) b_and!328725)))

(declare-fun tb!251225 () Bool)

(declare-fun t!346200 () Bool)

(assert (=> (and b!4193691 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346200) tb!251225))

(declare-fun result!306210 () Bool)

(assert (= result!306210 result!306204))

(assert (=> d!1236766 t!346200))

(declare-fun b_and!328727 () Bool)

(assert (= b_and!328709 (and (=> t!346200 result!306210) b_and!328727)))

(assert (=> d!1236766 m!4782347))

(declare-fun m!4782439 () Bool)

(assert (=> d!1236766 m!4782439))

(assert (=> b!4193618 d!1236766))

(declare-fun d!1236770 () Bool)

(assert (=> d!1236770 (= (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709)))) (fromListB!2615 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709)))))))

(declare-fun bs!596688 () Bool)

(assert (= bs!596688 d!1236770))

(declare-fun m!4782441 () Bool)

(assert (=> bs!596688 m!4782441))

(assert (=> b!4193618 d!1236770))

(declare-fun d!1236772 () Bool)

(declare-fun c!715398 () Bool)

(assert (=> d!1236772 (= c!715398 ((_ is Nil!46063) rules!3843))))

(declare-fun e!2603302 () (InoxSet Rule!15164))

(assert (=> d!1236772 (= (content!7182 rules!3843) e!2603302)))

(declare-fun b!4193753 () Bool)

(assert (=> b!4193753 (= e!2603302 ((as const (Array Rule!15164 Bool)) false))))

(declare-fun b!4193754 () Bool)

(assert (=> b!4193754 (= e!2603302 ((_ map or) (store ((as const (Array Rule!15164 Bool)) false) (h!51483 rules!3843) true) (content!7182 (t!346118 rules!3843))))))

(assert (= (and d!1236772 c!715398) b!4193753))

(assert (= (and d!1236772 (not c!715398)) b!4193754))

(declare-fun m!4782449 () Bool)

(assert (=> b!4193754 m!4782449))

(declare-fun m!4782451 () Bool)

(assert (=> b!4193754 m!4782451))

(assert (=> d!1236722 d!1236772))

(declare-fun d!1236782 () Bool)

(declare-fun c!715399 () Bool)

(assert (=> d!1236782 (= c!715399 ((_ is Node!13893) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))))))

(declare-fun e!2603303 () Bool)

(assert (=> d!1236782 (= (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))) e!2603303)))

(declare-fun b!4193755 () Bool)

(assert (=> b!4193755 (= e!2603303 (inv!60618 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))))))

(declare-fun b!4193756 () Bool)

(declare-fun e!2603304 () Bool)

(assert (=> b!4193756 (= e!2603303 e!2603304)))

(declare-fun res!1721534 () Bool)

(assert (=> b!4193756 (= res!1721534 (not ((_ is Leaf!21477) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))))))))

(assert (=> b!4193756 (=> res!1721534 e!2603304)))

(declare-fun b!4193757 () Bool)

(assert (=> b!4193757 (= e!2603304 (inv!60619 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))))))

(assert (= (and d!1236782 c!715399) b!4193755))

(assert (= (and d!1236782 (not c!715399)) b!4193756))

(assert (= (and b!4193756 (not res!1721534)) b!4193757))

(declare-fun m!4782453 () Bool)

(assert (=> b!4193755 m!4782453))

(declare-fun m!4782455 () Bool)

(assert (=> b!4193757 m!4782455))

(assert (=> b!4193266 d!1236782))

(declare-fun b!4193758 () Bool)

(declare-fun e!2603311 () Bool)

(declare-fun e!2603308 () Bool)

(assert (=> b!4193758 (= e!2603311 e!2603308)))

(declare-fun res!1721540 () Bool)

(assert (=> b!4193758 (=> res!1721540 e!2603308)))

(declare-fun call!292269 () Bool)

(assert (=> b!4193758 (= res!1721540 call!292269)))

(declare-fun b!4193759 () Bool)

(declare-fun res!1721538 () Bool)

(declare-fun e!2603305 () Bool)

(assert (=> b!4193759 (=> res!1721538 e!2603305)))

(assert (=> b!4193759 (= res!1721538 (not ((_ is ElementMatch!12587) (regex!7682 rBis!167))))))

(declare-fun e!2603306 () Bool)

(assert (=> b!4193759 (= e!2603306 e!2603305)))

(declare-fun b!4193760 () Bool)

(declare-fun res!1721537 () Bool)

(declare-fun e!2603309 () Bool)

(assert (=> b!4193760 (=> (not res!1721537) (not e!2603309))))

(assert (=> b!4193760 (= res!1721537 (not call!292269))))

(declare-fun b!4193761 () Bool)

(assert (=> b!4193761 (= e!2603308 (not (= (head!8900 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) (c!715317 (regex!7682 rBis!167)))))))

(declare-fun b!4193762 () Bool)

(declare-fun e!2603307 () Bool)

(assert (=> b!4193762 (= e!2603307 (nullable!4423 (regex!7682 rBis!167)))))

(declare-fun b!4193763 () Bool)

(assert (=> b!4193763 (= e!2603305 e!2603311)))

(declare-fun res!1721535 () Bool)

(assert (=> b!4193763 (=> (not res!1721535) (not e!2603311))))

(declare-fun lt!1493731 () Bool)

(assert (=> b!4193763 (= res!1721535 (not lt!1493731))))

(declare-fun b!4193764 () Bool)

(assert (=> b!4193764 (= e!2603309 (= (head!8900 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) (c!715317 (regex!7682 rBis!167))))))

(declare-fun b!4193765 () Bool)

(assert (=> b!4193765 (= e!2603307 (matchR!6326 (derivativeStep!3813 (regex!7682 rBis!167) (head!8900 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342))))) (tail!6747 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342))))))))

(declare-fun b!4193766 () Bool)

(declare-fun res!1721541 () Bool)

(assert (=> b!4193766 (=> res!1721541 e!2603308)))

(assert (=> b!4193766 (= res!1721541 (not (isEmpty!27276 (tail!6747 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))))

(declare-fun d!1236784 () Bool)

(declare-fun e!2603310 () Bool)

(assert (=> d!1236784 e!2603310))

(declare-fun c!715401 () Bool)

(assert (=> d!1236784 (= c!715401 ((_ is EmptyExpr!12587) (regex!7682 rBis!167)))))

(assert (=> d!1236784 (= lt!1493731 e!2603307)))

(declare-fun c!715402 () Bool)

(assert (=> d!1236784 (= c!715402 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(assert (=> d!1236784 (validRegex!5704 (regex!7682 rBis!167))))

(assert (=> d!1236784 (= (matchR!6326 (regex!7682 rBis!167) (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) lt!1493731)))

(declare-fun b!4193767 () Bool)

(assert (=> b!4193767 (= e!2603306 (not lt!1493731))))

(declare-fun b!4193768 () Bool)

(assert (=> b!4193768 (= e!2603310 e!2603306)))

(declare-fun c!715400 () Bool)

(assert (=> b!4193768 (= c!715400 ((_ is EmptyLang!12587) (regex!7682 rBis!167)))))

(declare-fun b!4193769 () Bool)

(declare-fun res!1721536 () Bool)

(assert (=> b!4193769 (=> (not res!1721536) (not e!2603309))))

(assert (=> b!4193769 (= res!1721536 (isEmpty!27276 (tail!6747 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342))))))))

(declare-fun bm!292264 () Bool)

(assert (=> bm!292264 (= call!292269 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun b!4193770 () Bool)

(assert (=> b!4193770 (= e!2603310 (= lt!1493731 call!292269))))

(declare-fun b!4193771 () Bool)

(declare-fun res!1721539 () Bool)

(assert (=> b!4193771 (=> res!1721539 e!2603305)))

(assert (=> b!4193771 (= res!1721539 e!2603309)))

(declare-fun res!1721542 () Bool)

(assert (=> b!4193771 (=> (not res!1721542) (not e!2603309))))

(assert (=> b!4193771 (= res!1721542 lt!1493731)))

(assert (= (and d!1236784 c!715402) b!4193762))

(assert (= (and d!1236784 (not c!715402)) b!4193765))

(assert (= (and d!1236784 c!715401) b!4193770))

(assert (= (and d!1236784 (not c!715401)) b!4193768))

(assert (= (and b!4193768 c!715400) b!4193767))

(assert (= (and b!4193768 (not c!715400)) b!4193759))

(assert (= (and b!4193759 (not res!1721538)) b!4193771))

(assert (= (and b!4193771 res!1721542) b!4193760))

(assert (= (and b!4193760 res!1721537) b!4193769))

(assert (= (and b!4193769 res!1721536) b!4193764))

(assert (= (and b!4193771 (not res!1721539)) b!4193763))

(assert (= (and b!4193763 res!1721535) b!4193758))

(assert (= (and b!4193758 (not res!1721540)) b!4193766))

(assert (= (and b!4193766 (not res!1721541)) b!4193761))

(assert (= (or b!4193770 b!4193758 b!4193760) bm!292264))

(declare-fun m!4782457 () Bool)

(assert (=> b!4193769 m!4782457))

(assert (=> b!4193769 m!4782457))

(declare-fun m!4782459 () Bool)

(assert (=> b!4193769 m!4782459))

(declare-fun m!4782461 () Bool)

(assert (=> b!4193761 m!4782461))

(assert (=> b!4193764 m!4782461))

(assert (=> b!4193762 m!4782355))

(assert (=> bm!292264 m!4782035))

(assert (=> b!4193766 m!4782457))

(assert (=> b!4193766 m!4782457))

(assert (=> b!4193766 m!4782459))

(assert (=> d!1236784 m!4782035))

(assert (=> d!1236784 m!4782353))

(assert (=> b!4193765 m!4782461))

(assert (=> b!4193765 m!4782461))

(declare-fun m!4782463 () Bool)

(assert (=> b!4193765 m!4782463))

(assert (=> b!4193765 m!4782457))

(assert (=> b!4193765 m!4782463))

(assert (=> b!4193765 m!4782457))

(declare-fun m!4782465 () Bool)

(assert (=> b!4193765 m!4782465))

(assert (=> b!4193379 d!1236784))

(declare-fun b!4193800 () Bool)

(declare-fun e!2603332 () tuple2!43858)

(assert (=> b!4193800 (= e!2603332 (tuple2!43859 Nil!46062 Nil!46062))))

(declare-fun b!4193801 () Bool)

(declare-fun e!2603331 () tuple2!43858)

(declare-fun e!2603335 () tuple2!43858)

(assert (=> b!4193801 (= e!2603331 e!2603335)))

(declare-fun lt!1493803 () tuple2!43858)

(declare-fun call!292293 () tuple2!43858)

(assert (=> b!4193801 (= lt!1493803 call!292293)))

(declare-fun c!715418 () Bool)

(assert (=> b!4193801 (= c!715418 (isEmpty!27276 (_1!25063 lt!1493803)))))

(declare-fun bm!292281 () Bool)

(declare-fun call!292292 () Bool)

(assert (=> bm!292281 (= call!292292 (nullable!4423 (regex!7682 rBis!167)))))

(declare-fun d!1236786 () Bool)

(declare-fun e!2603333 () Bool)

(assert (=> d!1236786 e!2603333))

(declare-fun res!1721548 () Bool)

(assert (=> d!1236786 (=> (not res!1721548) (not e!2603333))))

(declare-fun lt!1493812 () tuple2!43858)

(assert (=> d!1236786 (= res!1721548 (= (++!11754 (_1!25063 lt!1493812) (_2!25063 lt!1493812)) input!3342))))

(declare-fun e!2603328 () tuple2!43858)

(assert (=> d!1236786 (= lt!1493812 e!2603328)))

(declare-fun c!715416 () Bool)

(declare-fun lostCause!1049 (Regex!12587) Bool)

(assert (=> d!1236786 (= c!715416 (lostCause!1049 (regex!7682 rBis!167)))))

(declare-fun lt!1493797 () Unit!65139)

(declare-fun Unit!65145 () Unit!65139)

(assert (=> d!1236786 (= lt!1493797 Unit!65145)))

(assert (=> d!1236786 (= (getSuffix!2832 input!3342 Nil!46062) input!3342)))

(declare-fun lt!1493813 () Unit!65139)

(declare-fun lt!1493798 () Unit!65139)

(assert (=> d!1236786 (= lt!1493813 lt!1493798)))

(declare-fun lt!1493796 () List!46186)

(assert (=> d!1236786 (= input!3342 lt!1493796)))

(declare-fun lemmaSamePrefixThenSameSuffix!2266 (List!46186 List!46186 List!46186 List!46186 List!46186) Unit!65139)

(assert (=> d!1236786 (= lt!1493798 (lemmaSamePrefixThenSameSuffix!2266 Nil!46062 input!3342 Nil!46062 lt!1493796 input!3342))))

(assert (=> d!1236786 (= lt!1493796 (getSuffix!2832 input!3342 Nil!46062))))

(declare-fun lt!1493800 () Unit!65139)

(declare-fun lt!1493792 () Unit!65139)

(assert (=> d!1236786 (= lt!1493800 lt!1493792)))

(assert (=> d!1236786 (isPrefix!4539 Nil!46062 (++!11754 Nil!46062 input!3342))))

(assert (=> d!1236786 (= lt!1493792 (lemmaConcatTwoListThenFirstIsPrefix!3036 Nil!46062 input!3342))))

(assert (=> d!1236786 (validRegex!5704 (regex!7682 rBis!167))))

(assert (=> d!1236786 (= (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)) lt!1493812)))

(declare-fun b!4193802 () Bool)

(assert (=> b!4193802 (= e!2603332 (tuple2!43859 Nil!46062 input!3342))))

(declare-fun bm!292282 () Bool)

(declare-fun call!292286 () Unit!65139)

(assert (=> bm!292282 (= call!292286 (lemmaIsPrefixRefl!2968 input!3342 input!3342))))

(declare-fun b!4193803 () Bool)

(declare-fun c!715419 () Bool)

(assert (=> b!4193803 (= c!715419 call!292292)))

(declare-fun lt!1493794 () Unit!65139)

(declare-fun lt!1493799 () Unit!65139)

(assert (=> b!4193803 (= lt!1493794 lt!1493799)))

(declare-fun lt!1493801 () C!25364)

(declare-fun lt!1493815 () List!46186)

(assert (=> b!4193803 (= (++!11754 (++!11754 Nil!46062 (Cons!46062 lt!1493801 Nil!46062)) lt!1493815) input!3342)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1293 (List!46186 C!25364 List!46186 List!46186) Unit!65139)

(assert (=> b!4193803 (= lt!1493799 (lemmaMoveElementToOtherListKeepsConcatEq!1293 Nil!46062 lt!1493801 lt!1493815 input!3342))))

(assert (=> b!4193803 (= lt!1493815 (tail!6747 input!3342))))

(assert (=> b!4193803 (= lt!1493801 (head!8900 input!3342))))

(declare-fun lt!1493788 () Unit!65139)

(declare-fun lt!1493793 () Unit!65139)

(assert (=> b!4193803 (= lt!1493788 lt!1493793)))

(assert (=> b!4193803 (isPrefix!4539 (++!11754 Nil!46062 (Cons!46062 (head!8900 (getSuffix!2832 input!3342 Nil!46062)) Nil!46062)) input!3342)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!675 (List!46186 List!46186) Unit!65139)

(assert (=> b!4193803 (= lt!1493793 (lemmaAddHeadSuffixToPrefixStillPrefix!675 Nil!46062 input!3342))))

(declare-fun lt!1493789 () Unit!65139)

(declare-fun lt!1493802 () Unit!65139)

(assert (=> b!4193803 (= lt!1493789 lt!1493802)))

(assert (=> b!4193803 (= lt!1493802 (lemmaAddHeadSuffixToPrefixStillPrefix!675 Nil!46062 input!3342))))

(declare-fun lt!1493806 () List!46186)

(assert (=> b!4193803 (= lt!1493806 (++!11754 Nil!46062 (Cons!46062 (head!8900 input!3342) Nil!46062)))))

(declare-fun lt!1493804 () Unit!65139)

(declare-fun e!2603330 () Unit!65139)

(assert (=> b!4193803 (= lt!1493804 e!2603330)))

(declare-fun c!715420 () Bool)

(assert (=> b!4193803 (= c!715420 (= (size!33850 Nil!46062) (size!33850 input!3342)))))

(declare-fun lt!1493814 () Unit!65139)

(declare-fun lt!1493791 () Unit!65139)

(assert (=> b!4193803 (= lt!1493814 lt!1493791)))

(assert (=> b!4193803 (<= (size!33850 Nil!46062) (size!33850 input!3342))))

(assert (=> b!4193803 (= lt!1493791 (lemmaIsPrefixThenSmallerEqSize!569 Nil!46062 input!3342))))

(declare-fun e!2603334 () tuple2!43858)

(assert (=> b!4193803 (= e!2603334 e!2603331)))

(declare-fun b!4193804 () Bool)

(declare-fun e!2603329 () Bool)

(assert (=> b!4193804 (= e!2603333 e!2603329)))

(declare-fun res!1721547 () Bool)

(assert (=> b!4193804 (=> res!1721547 e!2603329)))

(assert (=> b!4193804 (= res!1721547 (isEmpty!27276 (_1!25063 lt!1493812)))))

(declare-fun b!4193805 () Bool)

(declare-fun Unit!65147 () Unit!65139)

(assert (=> b!4193805 (= e!2603330 Unit!65147)))

(declare-fun b!4193806 () Bool)

(assert (=> b!4193806 (= e!2603335 lt!1493803)))

(declare-fun bm!292283 () Bool)

(declare-fun call!292288 () C!25364)

(assert (=> bm!292283 (= call!292288 (head!8900 input!3342))))

(declare-fun bm!292284 () Bool)

(declare-fun call!292291 () Regex!12587)

(declare-fun call!292287 () List!46186)

(assert (=> bm!292284 (= call!292293 (findLongestMatchInner!1613 call!292291 lt!1493806 (+ (size!33850 Nil!46062) 1) call!292287 input!3342 (size!33850 input!3342)))))

(declare-fun b!4193807 () Bool)

(declare-fun Unit!65148 () Unit!65139)

(assert (=> b!4193807 (= e!2603330 Unit!65148)))

(declare-fun lt!1493810 () Unit!65139)

(assert (=> b!4193807 (= lt!1493810 call!292286)))

(declare-fun call!292289 () Bool)

(assert (=> b!4193807 call!292289))

(declare-fun lt!1493795 () Unit!65139)

(assert (=> b!4193807 (= lt!1493795 lt!1493810)))

(declare-fun lt!1493807 () Unit!65139)

(declare-fun call!292290 () Unit!65139)

(assert (=> b!4193807 (= lt!1493807 call!292290)))

(assert (=> b!4193807 (= input!3342 Nil!46062)))

(declare-fun lt!1493805 () Unit!65139)

(assert (=> b!4193807 (= lt!1493805 lt!1493807)))

(assert (=> b!4193807 false))

(declare-fun b!4193808 () Bool)

(assert (=> b!4193808 (= e!2603329 (>= (size!33850 (_1!25063 lt!1493812)) (size!33850 Nil!46062)))))

(declare-fun bm!292285 () Bool)

(assert (=> bm!292285 (= call!292287 (tail!6747 input!3342))))

(declare-fun bm!292286 () Bool)

(assert (=> bm!292286 (= call!292291 (derivativeStep!3813 (regex!7682 rBis!167) call!292288))))

(declare-fun bm!292287 () Bool)

(assert (=> bm!292287 (= call!292289 (isPrefix!4539 input!3342 input!3342))))

(declare-fun b!4193809 () Bool)

(assert (=> b!4193809 (= e!2603328 e!2603334)))

(declare-fun c!715417 () Bool)

(assert (=> b!4193809 (= c!715417 (= (size!33850 Nil!46062) (size!33850 input!3342)))))

(declare-fun b!4193810 () Bool)

(declare-fun c!715415 () Bool)

(assert (=> b!4193810 (= c!715415 call!292292)))

(declare-fun lt!1493808 () Unit!65139)

(declare-fun lt!1493811 () Unit!65139)

(assert (=> b!4193810 (= lt!1493808 lt!1493811)))

(assert (=> b!4193810 (= input!3342 Nil!46062)))

(assert (=> b!4193810 (= lt!1493811 call!292290)))

(declare-fun lt!1493790 () Unit!65139)

(declare-fun lt!1493809 () Unit!65139)

(assert (=> b!4193810 (= lt!1493790 lt!1493809)))

(assert (=> b!4193810 call!292289))

(assert (=> b!4193810 (= lt!1493809 call!292286)))

(assert (=> b!4193810 (= e!2603334 e!2603332)))

(declare-fun b!4193811 () Bool)

(assert (=> b!4193811 (= e!2603335 (tuple2!43859 Nil!46062 input!3342))))

(declare-fun bm!292288 () Bool)

(assert (=> bm!292288 (= call!292290 (lemmaIsPrefixSameLengthThenSameList!1003 input!3342 Nil!46062 input!3342))))

(declare-fun b!4193812 () Bool)

(assert (=> b!4193812 (= e!2603331 call!292293)))

(declare-fun b!4193813 () Bool)

(assert (=> b!4193813 (= e!2603328 (tuple2!43859 Nil!46062 input!3342))))

(assert (= (and d!1236786 c!715416) b!4193813))

(assert (= (and d!1236786 (not c!715416)) b!4193809))

(assert (= (and b!4193809 c!715417) b!4193810))

(assert (= (and b!4193809 (not c!715417)) b!4193803))

(assert (= (and b!4193810 c!715415) b!4193800))

(assert (= (and b!4193810 (not c!715415)) b!4193802))

(assert (= (and b!4193803 c!715420) b!4193807))

(assert (= (and b!4193803 (not c!715420)) b!4193805))

(assert (= (and b!4193803 c!715419) b!4193801))

(assert (= (and b!4193803 (not c!715419)) b!4193812))

(assert (= (and b!4193801 c!715418) b!4193811))

(assert (= (and b!4193801 (not c!715418)) b!4193806))

(assert (= (or b!4193801 b!4193812) bm!292285))

(assert (= (or b!4193801 b!4193812) bm!292283))

(assert (= (or b!4193801 b!4193812) bm!292286))

(assert (= (or b!4193801 b!4193812) bm!292284))

(assert (= (or b!4193810 b!4193807) bm!292282))

(assert (= (or b!4193810 b!4193803) bm!292281))

(assert (= (or b!4193810 b!4193807) bm!292288))

(assert (= (or b!4193810 b!4193807) bm!292287))

(assert (= (and d!1236786 res!1721548) b!4193804))

(assert (= (and b!4193804 (not res!1721547)) b!4193808))

(assert (=> bm!292285 m!4782025))

(declare-fun m!4782467 () Bool)

(assert (=> b!4193803 m!4782467))

(declare-fun m!4782469 () Bool)

(assert (=> b!4193803 m!4782469))

(declare-fun m!4782471 () Bool)

(assert (=> b!4193803 m!4782471))

(declare-fun m!4782473 () Bool)

(assert (=> b!4193803 m!4782473))

(declare-fun m!4782475 () Bool)

(assert (=> b!4193803 m!4782475))

(assert (=> b!4193803 m!4782031))

(assert (=> b!4193803 m!4782471))

(declare-fun m!4782477 () Bool)

(assert (=> b!4193803 m!4782477))

(declare-fun m!4782479 () Bool)

(assert (=> b!4193803 m!4782479))

(declare-fun m!4782481 () Bool)

(assert (=> b!4193803 m!4782481))

(assert (=> b!4193803 m!4782479))

(assert (=> b!4193803 m!4782039))

(assert (=> b!4193803 m!4781803))

(declare-fun m!4782483 () Bool)

(assert (=> b!4193803 m!4782483))

(assert (=> b!4193803 m!4782025))

(assert (=> b!4193803 m!4782467))

(declare-fun m!4782485 () Bool)

(assert (=> b!4193803 m!4782485))

(declare-fun m!4782487 () Bool)

(assert (=> d!1236786 m!4782487))

(declare-fun m!4782489 () Bool)

(assert (=> d!1236786 m!4782489))

(declare-fun m!4782491 () Bool)

(assert (=> d!1236786 m!4782491))

(assert (=> d!1236786 m!4782353))

(declare-fun m!4782493 () Bool)

(assert (=> d!1236786 m!4782493))

(assert (=> d!1236786 m!4782489))

(declare-fun m!4782495 () Bool)

(assert (=> d!1236786 m!4782495))

(assert (=> d!1236786 m!4782467))

(declare-fun m!4782497 () Bool)

(assert (=> d!1236786 m!4782497))

(declare-fun m!4782499 () Bool)

(assert (=> b!4193804 m!4782499))

(declare-fun m!4782501 () Bool)

(assert (=> bm!292286 m!4782501))

(declare-fun m!4782503 () Bool)

(assert (=> b!4193801 m!4782503))

(assert (=> bm!292281 m!4782355))

(assert (=> bm!292283 m!4782031))

(assert (=> bm!292287 m!4781817))

(declare-fun m!4782505 () Bool)

(assert (=> bm!292288 m!4782505))

(assert (=> bm!292282 m!4781821))

(assert (=> bm!292284 m!4781803))

(declare-fun m!4782507 () Bool)

(assert (=> bm!292284 m!4782507))

(declare-fun m!4782509 () Bool)

(assert (=> b!4193808 m!4782509))

(assert (=> b!4193808 m!4782039))

(assert (=> b!4193379 d!1236786))

(declare-fun d!1236788 () Bool)

(declare-fun lt!1493816 () Int)

(assert (=> d!1236788 (>= lt!1493816 0)))

(declare-fun e!2603336 () Int)

(assert (=> d!1236788 (= lt!1493816 e!2603336)))

(declare-fun c!715421 () Bool)

(assert (=> d!1236788 (= c!715421 ((_ is Nil!46062) Nil!46062))))

(assert (=> d!1236788 (= (size!33850 Nil!46062) lt!1493816)))

(declare-fun b!4193814 () Bool)

(assert (=> b!4193814 (= e!2603336 0)))

(declare-fun b!4193815 () Bool)

(assert (=> b!4193815 (= e!2603336 (+ 1 (size!33850 (t!346117 Nil!46062))))))

(assert (= (and d!1236788 c!715421) b!4193814))

(assert (= (and d!1236788 (not c!715421)) b!4193815))

(declare-fun m!4782511 () Bool)

(assert (=> b!4193815 m!4782511))

(assert (=> b!4193379 d!1236788))

(assert (=> b!4193379 d!1236646))

(declare-fun d!1236790 () Bool)

(declare-fun lt!1493817 () Int)

(assert (=> d!1236790 (>= lt!1493817 0)))

(declare-fun e!2603337 () Int)

(assert (=> d!1236790 (= lt!1493817 e!2603337)))

(declare-fun c!715422 () Bool)

(assert (=> d!1236790 (= c!715422 ((_ is Nil!46062) (t!346117 lt!1493553)))))

(assert (=> d!1236790 (= (size!33850 (t!346117 lt!1493553)) lt!1493817)))

(declare-fun b!4193816 () Bool)

(assert (=> b!4193816 (= e!2603337 0)))

(declare-fun b!4193817 () Bool)

(assert (=> b!4193817 (= e!2603337 (+ 1 (size!33850 (t!346117 (t!346117 lt!1493553)))))))

(assert (= (and d!1236790 c!715422) b!4193816))

(assert (= (and d!1236790 (not c!715422)) b!4193817))

(declare-fun m!4782513 () Bool)

(assert (=> b!4193817 m!4782513))

(assert (=> b!4193243 d!1236790))

(declare-fun d!1236792 () Bool)

(assert (=> d!1236792 (= (isEmpty!27275 lt!1493709) (not ((_ is Some!9875) lt!1493709)))))

(assert (=> d!1236716 d!1236792))

(declare-fun d!1236794 () Bool)

(assert (=> d!1236794 (= (isEmpty!27276 (_1!25063 lt!1493710)) ((_ is Nil!46062) (_1!25063 lt!1493710)))))

(assert (=> d!1236716 d!1236794))

(declare-fun d!1236796 () Bool)

(declare-fun lt!1493895 () tuple2!43858)

(assert (=> d!1236796 (= (++!11754 (_1!25063 lt!1493895) (_2!25063 lt!1493895)) input!3342)))

(declare-fun sizeTr!311 (List!46186 Int) Int)

(assert (=> d!1236796 (= lt!1493895 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 0 input!3342 input!3342 (sizeTr!311 input!3342 0)))))

(declare-fun lt!1493890 () Unit!65139)

(declare-fun lt!1493893 () Unit!65139)

(assert (=> d!1236796 (= lt!1493890 lt!1493893)))

(declare-fun lt!1493892 () List!46186)

(declare-fun lt!1493896 () Int)

(assert (=> d!1236796 (= (sizeTr!311 lt!1493892 lt!1493896) (+ (size!33850 lt!1493892) lt!1493896))))

(declare-fun lemmaSizeTrEqualsSize!310 (List!46186 Int) Unit!65139)

(assert (=> d!1236796 (= lt!1493893 (lemmaSizeTrEqualsSize!310 lt!1493892 lt!1493896))))

(assert (=> d!1236796 (= lt!1493896 0)))

(assert (=> d!1236796 (= lt!1493892 Nil!46062)))

(declare-fun lt!1493894 () Unit!65139)

(declare-fun lt!1493891 () Unit!65139)

(assert (=> d!1236796 (= lt!1493894 lt!1493891)))

(declare-fun lt!1493897 () Int)

(assert (=> d!1236796 (= (sizeTr!311 input!3342 lt!1493897) (+ (size!33850 input!3342) lt!1493897))))

(assert (=> d!1236796 (= lt!1493891 (lemmaSizeTrEqualsSize!310 input!3342 lt!1493897))))

(assert (=> d!1236796 (= lt!1493897 0)))

(assert (=> d!1236796 (validRegex!5704 (regex!7682 r!4142))))

(assert (=> d!1236796 (= (findLongestMatch!1526 (regex!7682 r!4142) input!3342) lt!1493895)))

(declare-fun bs!596690 () Bool)

(assert (= bs!596690 d!1236796))

(declare-fun m!4782515 () Bool)

(assert (=> bs!596690 m!4782515))

(declare-fun m!4782517 () Bool)

(assert (=> bs!596690 m!4782517))

(declare-fun m!4782519 () Bool)

(assert (=> bs!596690 m!4782519))

(declare-fun m!4782521 () Bool)

(assert (=> bs!596690 m!4782521))

(assert (=> bs!596690 m!4781803))

(declare-fun m!4782523 () Bool)

(assert (=> bs!596690 m!4782523))

(assert (=> bs!596690 m!4781783))

(assert (=> bs!596690 m!4782515))

(declare-fun m!4782525 () Bool)

(assert (=> bs!596690 m!4782525))

(declare-fun m!4782527 () Bool)

(assert (=> bs!596690 m!4782527))

(declare-fun m!4782529 () Bool)

(assert (=> bs!596690 m!4782529))

(assert (=> d!1236716 d!1236796))

(assert (=> d!1236716 d!1236616))

(declare-fun d!1236798 () Bool)

(assert (=> d!1236798 (= (isEmpty!27275 lt!1493641) (not ((_ is Some!9875) lt!1493641)))))

(assert (=> d!1236642 d!1236798))

(declare-fun d!1236800 () Bool)

(assert (=> d!1236800 (= (isEmpty!27276 (_1!25063 lt!1493642)) ((_ is Nil!46062) (_1!25063 lt!1493642)))))

(assert (=> d!1236642 d!1236800))

(declare-fun d!1236802 () Bool)

(declare-fun lt!1493903 () tuple2!43858)

(assert (=> d!1236802 (= (++!11754 (_1!25063 lt!1493903) (_2!25063 lt!1493903)) input!3342)))

(assert (=> d!1236802 (= lt!1493903 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 0 input!3342 input!3342 (sizeTr!311 input!3342 0)))))

(declare-fun lt!1493898 () Unit!65139)

(declare-fun lt!1493901 () Unit!65139)

(assert (=> d!1236802 (= lt!1493898 lt!1493901)))

(declare-fun lt!1493900 () List!46186)

(declare-fun lt!1493904 () Int)

(assert (=> d!1236802 (= (sizeTr!311 lt!1493900 lt!1493904) (+ (size!33850 lt!1493900) lt!1493904))))

(assert (=> d!1236802 (= lt!1493901 (lemmaSizeTrEqualsSize!310 lt!1493900 lt!1493904))))

(assert (=> d!1236802 (= lt!1493904 0)))

(assert (=> d!1236802 (= lt!1493900 Nil!46062)))

(declare-fun lt!1493902 () Unit!65139)

(declare-fun lt!1493899 () Unit!65139)

(assert (=> d!1236802 (= lt!1493902 lt!1493899)))

(declare-fun lt!1493905 () Int)

(assert (=> d!1236802 (= (sizeTr!311 input!3342 lt!1493905) (+ (size!33850 input!3342) lt!1493905))))

(assert (=> d!1236802 (= lt!1493899 (lemmaSizeTrEqualsSize!310 input!3342 lt!1493905))))

(assert (=> d!1236802 (= lt!1493905 0)))

(assert (=> d!1236802 (validRegex!5704 (regex!7682 rBis!167))))

(assert (=> d!1236802 (= (findLongestMatch!1526 (regex!7682 rBis!167) input!3342) lt!1493903)))

(declare-fun bs!596691 () Bool)

(assert (= bs!596691 d!1236802))

(assert (=> bs!596691 m!4782515))

(declare-fun m!4782531 () Bool)

(assert (=> bs!596691 m!4782531))

(declare-fun m!4782533 () Bool)

(assert (=> bs!596691 m!4782533))

(declare-fun m!4782535 () Bool)

(assert (=> bs!596691 m!4782535))

(assert (=> bs!596691 m!4781803))

(declare-fun m!4782537 () Bool)

(assert (=> bs!596691 m!4782537))

(assert (=> bs!596691 m!4782353))

(assert (=> bs!596691 m!4782515))

(declare-fun m!4782539 () Bool)

(assert (=> bs!596691 m!4782539))

(declare-fun m!4782541 () Bool)

(assert (=> bs!596691 m!4782541))

(declare-fun m!4782543 () Bool)

(assert (=> bs!596691 m!4782543))

(assert (=> d!1236642 d!1236802))

(assert (=> d!1236642 d!1236720))

(declare-fun d!1236804 () Bool)

(declare-fun lt!1493906 () Bool)

(assert (=> d!1236804 (= lt!1493906 (select (content!7182 (t!346118 rules!3843)) r!4142))))

(declare-fun e!2603351 () Bool)

(assert (=> d!1236804 (= lt!1493906 e!2603351)))

(declare-fun res!1721550 () Bool)

(assert (=> d!1236804 (=> (not res!1721550) (not e!2603351))))

(assert (=> d!1236804 (= res!1721550 ((_ is Cons!46063) (t!346118 rules!3843)))))

(assert (=> d!1236804 (= (contains!9491 (t!346118 rules!3843) r!4142) lt!1493906)))

(declare-fun b!4193842 () Bool)

(declare-fun e!2603350 () Bool)

(assert (=> b!4193842 (= e!2603351 e!2603350)))

(declare-fun res!1721549 () Bool)

(assert (=> b!4193842 (=> res!1721549 e!2603350)))

(assert (=> b!4193842 (= res!1721549 (= (h!51483 (t!346118 rules!3843)) r!4142))))

(declare-fun b!4193843 () Bool)

(assert (=> b!4193843 (= e!2603350 (contains!9491 (t!346118 (t!346118 rules!3843)) r!4142))))

(assert (= (and d!1236804 res!1721550) b!4193842))

(assert (= (and b!4193842 (not res!1721549)) b!4193843))

(assert (=> d!1236804 m!4782451))

(declare-fun m!4782545 () Bool)

(assert (=> d!1236804 m!4782545))

(declare-fun m!4782547 () Bool)

(assert (=> b!4193843 m!4782547))

(assert (=> b!4193629 d!1236804))

(declare-fun d!1236806 () Bool)

(declare-fun lt!1493907 () Int)

(assert (=> d!1236806 (>= lt!1493907 0)))

(declare-fun e!2603352 () Int)

(assert (=> d!1236806 (= lt!1493907 e!2603352)))

(declare-fun c!715435 () Bool)

(assert (=> d!1236806 (= c!715435 ((_ is Nil!46062) (list!16646 lt!1493552)))))

(assert (=> d!1236806 (= (size!33850 (list!16646 lt!1493552)) lt!1493907)))

(declare-fun b!4193844 () Bool)

(assert (=> b!4193844 (= e!2603352 0)))

(declare-fun b!4193845 () Bool)

(assert (=> b!4193845 (= e!2603352 (+ 1 (size!33850 (t!346117 (list!16646 lt!1493552)))))))

(assert (= (and d!1236806 c!715435) b!4193844))

(assert (= (and d!1236806 (not c!715435)) b!4193845))

(declare-fun m!4782549 () Bool)

(assert (=> b!4193845 m!4782549))

(assert (=> d!1236586 d!1236806))

(assert (=> d!1236586 d!1236620))

(declare-fun d!1236808 () Bool)

(declare-fun lt!1493910 () Int)

(assert (=> d!1236808 (= lt!1493910 (size!33850 (list!16647 (c!715316 lt!1493552))))))

(assert (=> d!1236808 (= lt!1493910 (ite ((_ is Empty!13893) (c!715316 lt!1493552)) 0 (ite ((_ is Leaf!21477) (c!715316 lt!1493552)) (csize!28017 (c!715316 lt!1493552)) (csize!28016 (c!715316 lt!1493552)))))))

(assert (=> d!1236808 (= (size!33853 (c!715316 lt!1493552)) lt!1493910)))

(declare-fun bs!596692 () Bool)

(assert (= bs!596692 d!1236808))

(assert (=> bs!596692 m!4781985))

(assert (=> bs!596692 m!4781985))

(declare-fun m!4782551 () Bool)

(assert (=> bs!596692 m!4782551))

(assert (=> d!1236586 d!1236808))

(declare-fun d!1236810 () Bool)

(assert (=> d!1236810 true))

(declare-fun lt!1493913 () Bool)

(assert (=> d!1236810 (= lt!1493913 (rulesValidInductive!2838 thiss!25986 rules!3843))))

(declare-fun lambda!129506 () Int)

(declare-fun forall!8479 (List!46187 Int) Bool)

(assert (=> d!1236810 (= lt!1493913 (forall!8479 rules!3843 lambda!129506))))

(assert (=> d!1236810 (= (rulesValid!2999 thiss!25986 rules!3843) lt!1493913)))

(declare-fun bs!596693 () Bool)

(assert (= bs!596693 d!1236810))

(assert (=> bs!596693 m!4781881))

(declare-fun m!4782553 () Bool)

(assert (=> bs!596693 m!4782553))

(assert (=> d!1236598 d!1236810))

(declare-fun b!4193852 () Bool)

(declare-fun e!2603363 () Bool)

(declare-fun e!2603360 () Bool)

(assert (=> b!4193852 (= e!2603363 e!2603360)))

(declare-fun res!1721560 () Bool)

(assert (=> b!4193852 (=> res!1721560 e!2603360)))

(declare-fun call!292310 () Bool)

(assert (=> b!4193852 (= res!1721560 call!292310)))

(declare-fun b!4193853 () Bool)

(declare-fun res!1721558 () Bool)

(declare-fun e!2603357 () Bool)

(assert (=> b!4193853 (=> res!1721558 e!2603357)))

(assert (=> b!4193853 (= res!1721558 (not ((_ is ElementMatch!12587) (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))))))

(declare-fun e!2603358 () Bool)

(assert (=> b!4193853 (= e!2603358 e!2603357)))

(declare-fun b!4193854 () Bool)

(declare-fun res!1721557 () Bool)

(declare-fun e!2603361 () Bool)

(assert (=> b!4193854 (=> (not res!1721557) (not e!2603361))))

(assert (=> b!4193854 (= res!1721557 (not call!292310))))

(declare-fun b!4193855 () Bool)

(assert (=> b!4193855 (= e!2603360 (not (= (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))) (c!715317 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))))))))

(declare-fun b!4193856 () Bool)

(declare-fun e!2603359 () Bool)

(assert (=> b!4193856 (= e!2603359 (nullable!4423 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))))))

(declare-fun b!4193857 () Bool)

(assert (=> b!4193857 (= e!2603357 e!2603363)))

(declare-fun res!1721555 () Bool)

(assert (=> b!4193857 (=> (not res!1721555) (not e!2603363))))

(declare-fun lt!1493914 () Bool)

(assert (=> b!4193857 (= res!1721555 (not lt!1493914))))

(declare-fun b!4193858 () Bool)

(assert (=> b!4193858 (= e!2603361 (= (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))) (c!715317 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))))))

(declare-fun b!4193859 () Bool)

(assert (=> b!4193859 (= e!2603359 (matchR!6326 (derivativeStep!3813 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))) (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))))) (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))))))))

(declare-fun b!4193860 () Bool)

(declare-fun res!1721561 () Bool)

(assert (=> b!4193860 (=> res!1721561 e!2603360)))

(assert (=> b!4193860 (= res!1721561 (not (isEmpty!27276 (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))))))))

(declare-fun d!1236812 () Bool)

(declare-fun e!2603362 () Bool)

(assert (=> d!1236812 e!2603362))

(declare-fun c!715437 () Bool)

(assert (=> d!1236812 (= c!715437 ((_ is EmptyExpr!12587) (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))))))

(assert (=> d!1236812 (= lt!1493914 e!2603359)))

(declare-fun c!715438 () Bool)

(assert (=> d!1236812 (= c!715438 (isEmpty!27276 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))))))

(assert (=> d!1236812 (validRegex!5704 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))))

(assert (=> d!1236812 (= (matchR!6326 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))) lt!1493914)))

(declare-fun b!4193861 () Bool)

(assert (=> b!4193861 (= e!2603358 (not lt!1493914))))

(declare-fun b!4193862 () Bool)

(assert (=> b!4193862 (= e!2603362 e!2603358)))

(declare-fun c!715436 () Bool)

(assert (=> b!4193862 (= c!715436 ((_ is EmptyLang!12587) (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))))))

(declare-fun b!4193863 () Bool)

(declare-fun res!1721556 () Bool)

(assert (=> b!4193863 (=> (not res!1721556) (not e!2603361))))

(assert (=> b!4193863 (= res!1721556 (isEmpty!27276 (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))))))))

(declare-fun bm!292305 () Bool)

(assert (=> bm!292305 (= call!292310 (isEmpty!27276 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))))))

(declare-fun b!4193864 () Bool)

(assert (=> b!4193864 (= e!2603362 (= lt!1493914 call!292310))))

(declare-fun b!4193865 () Bool)

(declare-fun res!1721559 () Bool)

(assert (=> b!4193865 (=> res!1721559 e!2603357)))

(assert (=> b!4193865 (= res!1721559 e!2603361)))

(declare-fun res!1721562 () Bool)

(assert (=> b!4193865 (=> (not res!1721562) (not e!2603361))))

(assert (=> b!4193865 (= res!1721562 lt!1493914)))

(assert (= (and d!1236812 c!715438) b!4193856))

(assert (= (and d!1236812 (not c!715438)) b!4193859))

(assert (= (and d!1236812 c!715437) b!4193864))

(assert (= (and d!1236812 (not c!715437)) b!4193862))

(assert (= (and b!4193862 c!715436) b!4193861))

(assert (= (and b!4193862 (not c!715436)) b!4193853))

(assert (= (and b!4193853 (not res!1721558)) b!4193865))

(assert (= (and b!4193865 res!1721562) b!4193854))

(assert (= (and b!4193854 res!1721557) b!4193863))

(assert (= (and b!4193863 res!1721556) b!4193858))

(assert (= (and b!4193865 (not res!1721559)) b!4193857))

(assert (= (and b!4193857 res!1721555) b!4193852))

(assert (= (and b!4193852 (not res!1721560)) b!4193860))

(assert (= (and b!4193860 (not res!1721561)) b!4193855))

(assert (= (or b!4193864 b!4193852 b!4193854) bm!292305))

(assert (=> b!4193863 m!4781885))

(declare-fun m!4782555 () Bool)

(assert (=> b!4193863 m!4782555))

(assert (=> b!4193863 m!4782555))

(declare-fun m!4782557 () Bool)

(assert (=> b!4193863 m!4782557))

(assert (=> b!4193855 m!4781885))

(declare-fun m!4782559 () Bool)

(assert (=> b!4193855 m!4782559))

(assert (=> b!4193858 m!4781885))

(assert (=> b!4193858 m!4782559))

(declare-fun m!4782561 () Bool)

(assert (=> b!4193856 m!4782561))

(assert (=> bm!292305 m!4781885))

(declare-fun m!4782563 () Bool)

(assert (=> bm!292305 m!4782563))

(assert (=> b!4193860 m!4781885))

(assert (=> b!4193860 m!4782555))

(assert (=> b!4193860 m!4782555))

(assert (=> b!4193860 m!4782557))

(assert (=> d!1236812 m!4781885))

(assert (=> d!1236812 m!4782563))

(declare-fun m!4782565 () Bool)

(assert (=> d!1236812 m!4782565))

(assert (=> b!4193859 m!4781885))

(assert (=> b!4193859 m!4782559))

(assert (=> b!4193859 m!4782559))

(declare-fun m!4782567 () Bool)

(assert (=> b!4193859 m!4782567))

(assert (=> b!4193859 m!4781885))

(assert (=> b!4193859 m!4782555))

(assert (=> b!4193859 m!4782567))

(assert (=> b!4193859 m!4782555))

(declare-fun m!4782569 () Bool)

(assert (=> b!4193859 m!4782569))

(assert (=> b!4193217 d!1236812))

(declare-fun d!1236814 () Bool)

(assert (=> d!1236814 (= (get!14982 lt!1493571) (v!40711 lt!1493571))))

(assert (=> b!4193217 d!1236814))

(declare-fun d!1236816 () Bool)

(assert (=> d!1236816 (= (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))) (list!16647 (c!715316 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))))))

(declare-fun bs!596694 () Bool)

(assert (= bs!596694 d!1236816))

(declare-fun m!4782571 () Bool)

(assert (=> bs!596694 m!4782571))

(assert (=> b!4193217 d!1236816))

(declare-fun d!1236818 () Bool)

(declare-fun lt!1493915 () BalanceConc!27380)

(assert (=> d!1236818 (= (list!16646 lt!1493915) (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571))))))

(assert (=> d!1236818 (= lt!1493915 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))) (value!239469 (_1!25061 (get!14982 lt!1493571)))))))

(assert (=> d!1236818 (= (charsOf!5117 (_1!25061 (get!14982 lt!1493571))) lt!1493915)))

(declare-fun b_lambda!123359 () Bool)

(assert (=> (not b_lambda!123359) (not d!1236818)))

(declare-fun tb!251227 () Bool)

(declare-fun t!346203 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346203) tb!251227))

(declare-fun b!4193866 () Bool)

(declare-fun e!2603364 () Bool)

(declare-fun tp!1281298 () Bool)

(assert (=> b!4193866 (= e!2603364 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))) (value!239469 (_1!25061 (get!14982 lt!1493571)))))) tp!1281298))))

(declare-fun result!306212 () Bool)

(assert (=> tb!251227 (= result!306212 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))) (value!239469 (_1!25061 (get!14982 lt!1493571))))) e!2603364))))

(assert (= tb!251227 b!4193866))

(declare-fun m!4782573 () Bool)

(assert (=> b!4193866 m!4782573))

(declare-fun m!4782575 () Bool)

(assert (=> tb!251227 m!4782575))

(assert (=> d!1236818 t!346203))

(declare-fun b_and!328729 () Bool)

(assert (= b_and!328713 (and (=> t!346203 result!306212) b_and!328729)))

(declare-fun tb!251229 () Bool)

(declare-fun t!346205 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346205) tb!251229))

(declare-fun result!306214 () Bool)

(assert (= result!306214 result!306212))

(assert (=> d!1236818 t!346205))

(declare-fun b_and!328731 () Bool)

(assert (= b_and!328715 (and (=> t!346205 result!306214) b_and!328731)))

(declare-fun t!346207 () Bool)

(declare-fun tb!251231 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346207) tb!251231))

(declare-fun result!306216 () Bool)

(assert (= result!306216 result!306212))

(assert (=> d!1236818 t!346207))

(declare-fun b_and!328733 () Bool)

(assert (= b_and!328717 (and (=> t!346207 result!306216) b_and!328733)))

(declare-fun t!346209 () Bool)

(declare-fun tb!251233 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346209) tb!251233))

(declare-fun result!306218 () Bool)

(assert (= result!306218 result!306212))

(assert (=> d!1236818 t!346209))

(declare-fun b_and!328735 () Bool)

(assert (= b_and!328719 (and (=> t!346209 result!306218) b_and!328735)))

(declare-fun m!4782577 () Bool)

(assert (=> d!1236818 m!4782577))

(declare-fun m!4782579 () Bool)

(assert (=> d!1236818 m!4782579))

(assert (=> b!4193217 d!1236818))

(declare-fun d!1236820 () Bool)

(assert (=> d!1236820 (= (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))) (isBalanced!3737 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))))))

(declare-fun bs!596695 () Bool)

(assert (= bs!596695 d!1236820))

(declare-fun m!4782581 () Bool)

(assert (=> bs!596695 m!4782581))

(assert (=> tb!251159 d!1236820))

(declare-fun d!1236822 () Bool)

(declare-fun lt!1493916 () Int)

(assert (=> d!1236822 (>= lt!1493916 0)))

(declare-fun e!2603365 () Int)

(assert (=> d!1236822 (= lt!1493916 e!2603365)))

(declare-fun c!715439 () Bool)

(assert (=> d!1236822 (= c!715439 ((_ is Nil!46062) (t!346117 pBis!107)))))

(assert (=> d!1236822 (= (size!33850 (t!346117 pBis!107)) lt!1493916)))

(declare-fun b!4193867 () Bool)

(assert (=> b!4193867 (= e!2603365 0)))

(declare-fun b!4193868 () Bool)

(assert (=> b!4193868 (= e!2603365 (+ 1 (size!33850 (t!346117 (t!346117 pBis!107)))))))

(assert (= (and d!1236822 c!715439) b!4193867))

(assert (= (and d!1236822 (not c!715439)) b!4193868))

(declare-fun m!4782583 () Bool)

(assert (=> b!4193868 m!4782583))

(assert (=> b!4193680 d!1236822))

(assert (=> d!1236654 d!1236650))

(declare-fun d!1236824 () Bool)

(assert (=> d!1236824 (isPrefix!4539 input!3342 input!3342)))

(assert (=> d!1236824 true))

(declare-fun _$45!2066 () Unit!65139)

(assert (=> d!1236824 (= (choose!25701 input!3342 input!3342) _$45!2066)))

(declare-fun bs!596696 () Bool)

(assert (= bs!596696 d!1236824))

(assert (=> bs!596696 m!4781817))

(assert (=> d!1236654 d!1236824))

(declare-fun d!1236826 () Bool)

(declare-fun lt!1493937 () Int)

(assert (=> d!1236826 (>= lt!1493937 0)))

(declare-fun e!2603372 () Int)

(assert (=> d!1236826 (= lt!1493937 e!2603372)))

(declare-fun c!715443 () Bool)

(assert (=> d!1236826 (= c!715443 ((_ is Nil!46062) (_2!25061 (get!14982 lt!1493571))))))

(assert (=> d!1236826 (= (size!33850 (_2!25061 (get!14982 lt!1493571))) lt!1493937)))

(declare-fun b!4193869 () Bool)

(assert (=> b!4193869 (= e!2603372 0)))

(declare-fun b!4193870 () Bool)

(assert (=> b!4193870 (= e!2603372 (+ 1 (size!33850 (t!346117 (_2!25061 (get!14982 lt!1493571))))))))

(assert (= (and d!1236826 c!715443) b!4193869))

(assert (= (and d!1236826 (not c!715443)) b!4193870))

(declare-fun m!4782585 () Bool)

(assert (=> b!4193870 m!4782585))

(assert (=> b!4193213 d!1236826))

(assert (=> b!4193213 d!1236814))

(assert (=> b!4193213 d!1236646))

(declare-fun d!1236828 () Bool)

(declare-fun nullableFct!1217 (Regex!12587) Bool)

(assert (=> d!1236828 (= (nullable!4423 (regex!7682 r!4142)) (nullableFct!1217 (regex!7682 r!4142)))))

(declare-fun bs!596697 () Bool)

(assert (= bs!596697 d!1236828))

(declare-fun m!4782587 () Bool)

(assert (=> bs!596697 m!4782587))

(assert (=> b!4193297 d!1236828))

(declare-fun b!4193888 () Bool)

(declare-fun e!2603375 () Bool)

(assert (=> b!4193888 (= e!2603375 (>= (size!33850 (tail!6747 input!3342)) (size!33850 (tail!6747 input!3342))))))

(declare-fun b!4193887 () Bool)

(declare-fun e!2603377 () Bool)

(assert (=> b!4193887 (= e!2603377 (isPrefix!4539 (tail!6747 (tail!6747 input!3342)) (tail!6747 (tail!6747 input!3342))))))

(declare-fun d!1236830 () Bool)

(assert (=> d!1236830 e!2603375))

(declare-fun res!1721565 () Bool)

(assert (=> d!1236830 (=> res!1721565 e!2603375)))

(declare-fun lt!1493946 () Bool)

(assert (=> d!1236830 (= res!1721565 (not lt!1493946))))

(declare-fun e!2603376 () Bool)

(assert (=> d!1236830 (= lt!1493946 e!2603376)))

(declare-fun res!1721568 () Bool)

(assert (=> d!1236830 (=> res!1721568 e!2603376)))

(assert (=> d!1236830 (= res!1721568 ((_ is Nil!46062) (tail!6747 input!3342)))))

(assert (=> d!1236830 (= (isPrefix!4539 (tail!6747 input!3342) (tail!6747 input!3342)) lt!1493946)))

(declare-fun b!4193885 () Bool)

(assert (=> b!4193885 (= e!2603376 e!2603377)))

(declare-fun res!1721567 () Bool)

(assert (=> b!4193885 (=> (not res!1721567) (not e!2603377))))

(assert (=> b!4193885 (= res!1721567 (not ((_ is Nil!46062) (tail!6747 input!3342))))))

(declare-fun b!4193886 () Bool)

(declare-fun res!1721566 () Bool)

(assert (=> b!4193886 (=> (not res!1721566) (not e!2603377))))

(assert (=> b!4193886 (= res!1721566 (= (head!8900 (tail!6747 input!3342)) (head!8900 (tail!6747 input!3342))))))

(assert (= (and d!1236830 (not res!1721568)) b!4193885))

(assert (= (and b!4193885 res!1721567) b!4193886))

(assert (= (and b!4193886 res!1721566) b!4193887))

(assert (= (and d!1236830 (not res!1721565)) b!4193888))

(assert (=> b!4193888 m!4782025))

(declare-fun m!4782589 () Bool)

(assert (=> b!4193888 m!4782589))

(assert (=> b!4193888 m!4782025))

(assert (=> b!4193888 m!4782589))

(assert (=> b!4193887 m!4782025))

(declare-fun m!4782591 () Bool)

(assert (=> b!4193887 m!4782591))

(assert (=> b!4193887 m!4782025))

(assert (=> b!4193887 m!4782591))

(assert (=> b!4193887 m!4782591))

(assert (=> b!4193887 m!4782591))

(declare-fun m!4782593 () Bool)

(assert (=> b!4193887 m!4782593))

(assert (=> b!4193886 m!4782025))

(declare-fun m!4782595 () Bool)

(assert (=> b!4193886 m!4782595))

(assert (=> b!4193886 m!4782025))

(assert (=> b!4193886 m!4782595))

(assert (=> b!4193393 d!1236830))

(declare-fun d!1236832 () Bool)

(assert (=> d!1236832 (= (tail!6747 input!3342) (t!346117 input!3342))))

(assert (=> b!4193393 d!1236832))

(declare-fun bs!596700 () Bool)

(declare-fun d!1236834 () Bool)

(assert (= bs!596700 (and d!1236834 d!1236658)))

(declare-fun lambda!129509 () Int)

(assert (=> bs!596700 (= lambda!129509 lambda!129499)))

(assert (=> d!1236834 true))

(assert (=> d!1236834 (< (dynLambda!19839 order!24389 (toChars!10237 (transformation!7682 r!4142))) (dynLambda!19838 order!24387 lambda!129509))))

(assert (=> d!1236834 true))

(assert (=> d!1236834 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 r!4142))) (dynLambda!19838 order!24387 lambda!129509))))

(declare-fun Forall!1568 (Int) Bool)

(assert (=> d!1236834 (= (semiInverseModEq!3332 (toChars!10237 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 r!4142))) (Forall!1568 lambda!129509))))

(declare-fun bs!596701 () Bool)

(assert (= bs!596701 d!1236834))

(declare-fun m!4782653 () Bool)

(assert (=> bs!596701 m!4782653))

(assert (=> d!1236634 d!1236834))

(assert (=> b!4193355 d!1236646))

(assert (=> b!4193355 d!1236718))

(assert (=> d!1236730 d!1236772))

(declare-fun b!4193895 () Bool)

(declare-fun e!2603386 () Bool)

(declare-fun e!2603383 () Bool)

(assert (=> b!4193895 (= e!2603386 e!2603383)))

(declare-fun res!1721574 () Bool)

(assert (=> b!4193895 (=> res!1721574 e!2603383)))

(declare-fun call!292319 () Bool)

(assert (=> b!4193895 (= res!1721574 call!292319)))

(declare-fun b!4193896 () Bool)

(declare-fun res!1721572 () Bool)

(declare-fun e!2603380 () Bool)

(assert (=> b!4193896 (=> res!1721572 e!2603380)))

(assert (=> b!4193896 (= res!1721572 (not ((_ is ElementMatch!12587) (regex!7682 r!4142))))))

(declare-fun e!2603381 () Bool)

(assert (=> b!4193896 (= e!2603381 e!2603380)))

(declare-fun b!4193897 () Bool)

(declare-fun res!1721571 () Bool)

(declare-fun e!2603384 () Bool)

(assert (=> b!4193897 (=> (not res!1721571) (not e!2603384))))

(assert (=> b!4193897 (= res!1721571 (not call!292319))))

(declare-fun b!4193898 () Bool)

(assert (=> b!4193898 (= e!2603383 (not (= (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))) (c!715317 (regex!7682 r!4142)))))))

(declare-fun b!4193899 () Bool)

(declare-fun e!2603382 () Bool)

(assert (=> b!4193899 (= e!2603382 (nullable!4423 (regex!7682 r!4142)))))

(declare-fun b!4193900 () Bool)

(assert (=> b!4193900 (= e!2603380 e!2603386)))

(declare-fun res!1721569 () Bool)

(assert (=> b!4193900 (=> (not res!1721569) (not e!2603386))))

(declare-fun lt!1493950 () Bool)

(assert (=> b!4193900 (= res!1721569 (not lt!1493950))))

(declare-fun b!4193901 () Bool)

(assert (=> b!4193901 (= e!2603384 (= (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))) (c!715317 (regex!7682 r!4142))))))

(declare-fun b!4193902 () Bool)

(assert (=> b!4193902 (= e!2603382 (matchR!6326 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709)))))) (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709)))))))))

(declare-fun b!4193903 () Bool)

(declare-fun res!1721575 () Bool)

(assert (=> b!4193903 (=> res!1721575 e!2603383)))

(assert (=> b!4193903 (= res!1721575 (not (isEmpty!27276 (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))))))))

(declare-fun d!1236846 () Bool)

(declare-fun e!2603385 () Bool)

(assert (=> d!1236846 e!2603385))

(declare-fun c!715449 () Bool)

(assert (=> d!1236846 (= c!715449 ((_ is EmptyExpr!12587) (regex!7682 r!4142)))))

(assert (=> d!1236846 (= lt!1493950 e!2603382)))

(declare-fun c!715450 () Bool)

(assert (=> d!1236846 (= c!715450 (isEmpty!27276 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))))))

(assert (=> d!1236846 (validRegex!5704 (regex!7682 r!4142))))

(assert (=> d!1236846 (= (matchR!6326 (regex!7682 r!4142) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))) lt!1493950)))

(declare-fun b!4193904 () Bool)

(assert (=> b!4193904 (= e!2603381 (not lt!1493950))))

(declare-fun b!4193905 () Bool)

(assert (=> b!4193905 (= e!2603385 e!2603381)))

(declare-fun c!715448 () Bool)

(assert (=> b!4193905 (= c!715448 ((_ is EmptyLang!12587) (regex!7682 r!4142)))))

(declare-fun b!4193906 () Bool)

(declare-fun res!1721570 () Bool)

(assert (=> b!4193906 (=> (not res!1721570) (not e!2603384))))

(assert (=> b!4193906 (= res!1721570 (isEmpty!27276 (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709)))))))))

(declare-fun bm!292314 () Bool)

(assert (=> bm!292314 (= call!292319 (isEmpty!27276 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493709))))))))

(declare-fun b!4193907 () Bool)

(assert (=> b!4193907 (= e!2603385 (= lt!1493950 call!292319))))

(declare-fun b!4193908 () Bool)

(declare-fun res!1721573 () Bool)

(assert (=> b!4193908 (=> res!1721573 e!2603380)))

(assert (=> b!4193908 (= res!1721573 e!2603384)))

(declare-fun res!1721576 () Bool)

(assert (=> b!4193908 (=> (not res!1721576) (not e!2603384))))

(assert (=> b!4193908 (= res!1721576 lt!1493950)))

(assert (= (and d!1236846 c!715450) b!4193899))

(assert (= (and d!1236846 (not c!715450)) b!4193902))

(assert (= (and d!1236846 c!715449) b!4193907))

(assert (= (and d!1236846 (not c!715449)) b!4193905))

(assert (= (and b!4193905 c!715448) b!4193904))

(assert (= (and b!4193905 (not c!715448)) b!4193896))

(assert (= (and b!4193896 (not res!1721572)) b!4193908))

(assert (= (and b!4193908 res!1721576) b!4193897))

(assert (= (and b!4193897 res!1721571) b!4193906))

(assert (= (and b!4193906 res!1721570) b!4193901))

(assert (= (and b!4193908 (not res!1721573)) b!4193900))

(assert (= (and b!4193900 res!1721569) b!4193895))

(assert (= (and b!4193895 (not res!1721574)) b!4193903))

(assert (= (and b!4193903 (not res!1721575)) b!4193898))

(assert (= (or b!4193907 b!4193895 b!4193897) bm!292314))

(assert (=> b!4193906 m!4782329))

(declare-fun m!4782657 () Bool)

(assert (=> b!4193906 m!4782657))

(assert (=> b!4193906 m!4782657))

(declare-fun m!4782659 () Bool)

(assert (=> b!4193906 m!4782659))

(assert (=> b!4193898 m!4782329))

(declare-fun m!4782661 () Bool)

(assert (=> b!4193898 m!4782661))

(assert (=> b!4193901 m!4782329))

(assert (=> b!4193901 m!4782661))

(assert (=> b!4193899 m!4781975))

(assert (=> bm!292314 m!4782329))

(declare-fun m!4782663 () Bool)

(assert (=> bm!292314 m!4782663))

(assert (=> b!4193903 m!4782329))

(assert (=> b!4193903 m!4782657))

(assert (=> b!4193903 m!4782657))

(assert (=> b!4193903 m!4782659))

(assert (=> d!1236846 m!4782329))

(assert (=> d!1236846 m!4782663))

(assert (=> d!1236846 m!4781783))

(assert (=> b!4193902 m!4782329))

(assert (=> b!4193902 m!4782661))

(assert (=> b!4193902 m!4782661))

(declare-fun m!4782665 () Bool)

(assert (=> b!4193902 m!4782665))

(assert (=> b!4193902 m!4782329))

(assert (=> b!4193902 m!4782657))

(assert (=> b!4193902 m!4782665))

(assert (=> b!4193902 m!4782657))

(declare-fun m!4782669 () Bool)

(assert (=> b!4193902 m!4782669))

(assert (=> b!4193613 d!1236846))

(assert (=> b!4193613 d!1236740))

(assert (=> b!4193613 d!1236742))

(assert (=> b!4193613 d!1236744))

(assert (=> b!4193663 d!1236828))

(declare-fun d!1236850 () Bool)

(assert (=> d!1236850 (= (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))) (isBalanced!3737 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))))))

(declare-fun bs!596703 () Bool)

(assert (= bs!596703 d!1236850))

(declare-fun m!4782673 () Bool)

(assert (=> bs!596703 m!4782673))

(assert (=> tb!251147 d!1236850))

(declare-fun d!1236852 () Bool)

(declare-fun res!1721581 () Bool)

(declare-fun e!2603393 () Bool)

(assert (=> d!1236852 (=> res!1721581 e!2603393)))

(assert (=> d!1236852 (= res!1721581 ((_ is Nil!46063) rules!3843))))

(assert (=> d!1236852 (= (noDuplicateTag!3160 thiss!25986 rules!3843 Nil!46064) e!2603393)))

(declare-fun b!4193915 () Bool)

(declare-fun e!2603394 () Bool)

(assert (=> b!4193915 (= e!2603393 e!2603394)))

(declare-fun res!1721582 () Bool)

(assert (=> b!4193915 (=> (not res!1721582) (not e!2603394))))

(declare-fun contains!9492 (List!46188 String!53426) Bool)

(assert (=> b!4193915 (= res!1721582 (not (contains!9492 Nil!46064 (tag!8546 (h!51483 rules!3843)))))))

(declare-fun b!4193916 () Bool)

(assert (=> b!4193916 (= e!2603394 (noDuplicateTag!3160 thiss!25986 (t!346118 rules!3843) (Cons!46064 (tag!8546 (h!51483 rules!3843)) Nil!46064)))))

(assert (= (and d!1236852 (not res!1721581)) b!4193915))

(assert (= (and b!4193915 res!1721582) b!4193916))

(declare-fun m!4782681 () Bool)

(assert (=> b!4193915 m!4782681))

(declare-fun m!4782683 () Bool)

(assert (=> b!4193916 m!4782683))

(assert (=> b!4193283 d!1236852))

(assert (=> b!4193678 d!1236646))

(assert (=> b!4193678 d!1236734))

(declare-fun d!1236856 () Bool)

(declare-fun lt!1493951 () Int)

(assert (=> d!1236856 (>= lt!1493951 0)))

(declare-fun e!2603395 () Int)

(assert (=> d!1236856 (= lt!1493951 e!2603395)))

(declare-fun c!715451 () Bool)

(assert (=> d!1236856 (= c!715451 ((_ is Nil!46062) (_2!25061 (get!14982 lt!1493709))))))

(assert (=> d!1236856 (= (size!33850 (_2!25061 (get!14982 lt!1493709))) lt!1493951)))

(declare-fun b!4193917 () Bool)

(assert (=> b!4193917 (= e!2603395 0)))

(declare-fun b!4193918 () Bool)

(assert (=> b!4193918 (= e!2603395 (+ 1 (size!33850 (t!346117 (_2!25061 (get!14982 lt!1493709))))))))

(assert (= (and d!1236856 c!715451) b!4193917))

(assert (= (and d!1236856 (not c!715451)) b!4193918))

(declare-fun m!4782685 () Bool)

(assert (=> b!4193918 m!4782685))

(assert (=> b!4193617 d!1236856))

(assert (=> b!4193617 d!1236744))

(assert (=> b!4193617 d!1236646))

(declare-fun d!1236858 () Bool)

(assert (=> d!1236858 (= (isEmpty!27276 (tail!6747 p!2959)) ((_ is Nil!46062) (tail!6747 p!2959)))))

(assert (=> b!4193667 d!1236858))

(declare-fun d!1236860 () Bool)

(assert (=> d!1236860 (= (tail!6747 p!2959) (t!346117 p!2959))))

(assert (=> b!4193667 d!1236860))

(declare-fun d!1236862 () Bool)

(assert (=> d!1236862 (= (list!16646 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))) (list!16647 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))))))

(declare-fun bs!596704 () Bool)

(assert (= bs!596704 d!1236862))

(declare-fun m!4782687 () Bool)

(assert (=> bs!596704 m!4782687))

(assert (=> b!4193260 d!1236862))

(assert (=> b!4193382 d!1236750))

(declare-fun d!1236864 () Bool)

(declare-fun lt!1493952 () Int)

(assert (=> d!1236864 (>= lt!1493952 0)))

(declare-fun e!2603396 () Int)

(assert (=> d!1236864 (= lt!1493952 e!2603396)))

(declare-fun c!715452 () Bool)

(assert (=> d!1236864 (= c!715452 ((_ is Nil!46062) (++!11754 lt!1493553 (_2!25061 lt!1493544))))))

(assert (=> d!1236864 (= (size!33850 (++!11754 lt!1493553 (_2!25061 lt!1493544))) lt!1493952)))

(declare-fun b!4193919 () Bool)

(assert (=> b!4193919 (= e!2603396 0)))

(declare-fun b!4193920 () Bool)

(assert (=> b!4193920 (= e!2603396 (+ 1 (size!33850 (t!346117 (++!11754 lt!1493553 (_2!25061 lt!1493544))))))))

(assert (= (and d!1236864 c!715452) b!4193919))

(assert (= (and d!1236864 (not c!715452)) b!4193920))

(declare-fun m!4782689 () Bool)

(assert (=> b!4193920 m!4782689))

(assert (=> b!4193323 d!1236864))

(assert (=> b!4193323 d!1236584))

(declare-fun d!1236866 () Bool)

(assert (=> d!1236866 (= (seqFromList!5707 (_1!25063 lt!1493642)) (fromListB!2615 (_1!25063 lt!1493642)))))

(declare-fun bs!596705 () Bool)

(assert (= bs!596705 d!1236866))

(declare-fun m!4782691 () Bool)

(assert (=> bs!596705 m!4782691))

(assert (=> b!4193378 d!1236866))

(assert (=> b!4193378 d!1236786))

(declare-fun d!1236868 () Bool)

(assert (=> d!1236868 (= (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) ((_ is Nil!46062) (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(assert (=> b!4193378 d!1236868))

(assert (=> b!4193378 d!1236788))

(declare-fun d!1236870 () Bool)

(assert (=> d!1236870 (= (apply!10647 (transformation!7682 rBis!167) (seqFromList!5707 (_1!25063 lt!1493642))) (dynLambda!19836 (toValue!10378 (transformation!7682 rBis!167)) (seqFromList!5707 (_1!25063 lt!1493642))))))

(declare-fun b_lambda!123367 () Bool)

(assert (=> (not b_lambda!123367) (not d!1236870)))

(declare-fun t!346227 () Bool)

(declare-fun tb!251251 () Bool)

(assert (=> (and b!4193164 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 rBis!167))) t!346227) tb!251251))

(declare-fun result!306236 () Bool)

(assert (=> tb!251251 (= result!306236 (inv!21 (dynLambda!19836 (toValue!10378 (transformation!7682 rBis!167)) (seqFromList!5707 (_1!25063 lt!1493642)))))))

(declare-fun m!4782693 () Bool)

(assert (=> tb!251251 m!4782693))

(assert (=> d!1236870 t!346227))

(declare-fun b_and!328761 () Bool)

(assert (= b_and!328721 (and (=> t!346227 result!306236) b_and!328761)))

(declare-fun tb!251253 () Bool)

(declare-fun t!346229 () Bool)

(assert (=> (and b!4193154 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 rBis!167))) t!346229) tb!251253))

(declare-fun result!306238 () Bool)

(assert (= result!306238 result!306236))

(assert (=> d!1236870 t!346229))

(declare-fun b_and!328763 () Bool)

(assert (= b_and!328723 (and (=> t!346229 result!306238) b_and!328763)))

(declare-fun t!346231 () Bool)

(declare-fun tb!251255 () Bool)

(assert (=> (and b!4193161 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 rBis!167))) t!346231) tb!251255))

(declare-fun result!306240 () Bool)

(assert (= result!306240 result!306236))

(assert (=> d!1236870 t!346231))

(declare-fun b_and!328765 () Bool)

(assert (= b_and!328725 (and (=> t!346231 result!306240) b_and!328765)))

(declare-fun tb!251257 () Bool)

(declare-fun t!346233 () Bool)

(assert (=> (and b!4193691 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 rBis!167))) t!346233) tb!251257))

(declare-fun result!306242 () Bool)

(assert (= result!306242 result!306236))

(assert (=> d!1236870 t!346233))

(declare-fun b_and!328767 () Bool)

(assert (= b_and!328727 (and (=> t!346233 result!306242) b_and!328767)))

(assert (=> d!1236870 m!4782043))

(declare-fun m!4782695 () Bool)

(assert (=> d!1236870 m!4782695))

(assert (=> b!4193378 d!1236870))

(declare-fun d!1236872 () Bool)

(declare-fun e!2603403 () Bool)

(assert (=> d!1236872 e!2603403))

(declare-fun res!1721588 () Bool)

(assert (=> d!1236872 (=> res!1721588 e!2603403)))

(assert (=> d!1236872 (= res!1721588 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun lt!1493958 () Unit!65139)

(declare-fun choose!25703 (Regex!12587 List!46186) Unit!65139)

(assert (=> d!1236872 (= lt!1493958 (choose!25703 (regex!7682 rBis!167) input!3342))))

(assert (=> d!1236872 (validRegex!5704 (regex!7682 rBis!167))))

(assert (=> d!1236872 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1586 (regex!7682 rBis!167) input!3342) lt!1493958)))

(declare-fun b!4193930 () Bool)

(assert (=> b!4193930 (= e!2603403 (matchR!6326 (regex!7682 rBis!167) (_1!25063 (findLongestMatchInner!1613 (regex!7682 rBis!167) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(assert (= (and d!1236872 (not res!1721588)) b!4193930))

(assert (=> d!1236872 m!4781803))

(declare-fun m!4782701 () Bool)

(assert (=> d!1236872 m!4782701))

(assert (=> d!1236872 m!4782035))

(assert (=> d!1236872 m!4782353))

(assert (=> d!1236872 m!4782039))

(assert (=> d!1236872 m!4781803))

(assert (=> d!1236872 m!4782041))

(assert (=> d!1236872 m!4782039))

(assert (=> b!4193930 m!4782039))

(assert (=> b!4193930 m!4781803))

(assert (=> b!4193930 m!4782039))

(assert (=> b!4193930 m!4781803))

(assert (=> b!4193930 m!4782041))

(assert (=> b!4193930 m!4782065))

(assert (=> b!4193378 d!1236872))

(assert (=> b!4193378 d!1236646))

(declare-fun d!1236878 () Bool)

(declare-fun lt!1493960 () Int)

(assert (=> d!1236878 (= lt!1493960 (size!33850 (list!16646 (seqFromList!5707 (_1!25063 lt!1493642)))))))

(assert (=> d!1236878 (= lt!1493960 (size!33853 (c!715316 (seqFromList!5707 (_1!25063 lt!1493642)))))))

(assert (=> d!1236878 (= (size!33851 (seqFromList!5707 (_1!25063 lt!1493642))) lt!1493960)))

(declare-fun bs!596709 () Bool)

(assert (= bs!596709 d!1236878))

(assert (=> bs!596709 m!4782043))

(declare-fun m!4782711 () Bool)

(assert (=> bs!596709 m!4782711))

(assert (=> bs!596709 m!4782711))

(declare-fun m!4782713 () Bool)

(assert (=> bs!596709 m!4782713))

(declare-fun m!4782715 () Bool)

(assert (=> bs!596709 m!4782715))

(assert (=> b!4193378 d!1236878))

(declare-fun bs!596710 () Bool)

(declare-fun d!1236882 () Bool)

(assert (= bs!596710 (and d!1236882 d!1236658)))

(declare-fun lambda!129514 () Int)

(assert (=> bs!596710 (= (and (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142))) (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (= lambda!129514 lambda!129499))))

(declare-fun bs!596711 () Bool)

(assert (= bs!596711 (and d!1236882 d!1236834)))

(assert (=> bs!596711 (= (and (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142))) (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (= lambda!129514 lambda!129509))))

(declare-fun b!4193937 () Bool)

(declare-fun e!2603407 () Bool)

(assert (=> b!4193937 (= e!2603407 true)))

(assert (=> d!1236882 e!2603407))

(assert (= d!1236882 b!4193937))

(assert (=> b!4193937 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 rBis!167))) (dynLambda!19838 order!24387 lambda!129514))))

(assert (=> b!4193937 (< (dynLambda!19839 order!24389 (toChars!10237 (transformation!7682 rBis!167))) (dynLambda!19838 order!24387 lambda!129514))))

(assert (=> d!1236882 (= (list!16646 (dynLambda!19835 (toChars!10237 (transformation!7682 rBis!167)) (dynLambda!19836 (toValue!10378 (transformation!7682 rBis!167)) (seqFromList!5707 (_1!25063 lt!1493642))))) (list!16646 (seqFromList!5707 (_1!25063 lt!1493642))))))

(declare-fun lt!1493962 () Unit!65139)

(assert (=> d!1236882 (= lt!1493962 (ForallOf!1066 lambda!129514 (seqFromList!5707 (_1!25063 lt!1493642))))))

(assert (=> d!1236882 (= (lemmaSemiInverse!2448 (transformation!7682 rBis!167) (seqFromList!5707 (_1!25063 lt!1493642))) lt!1493962)))

(declare-fun b_lambda!123369 () Bool)

(assert (=> (not b_lambda!123369) (not d!1236882)))

(declare-fun t!346235 () Bool)

(declare-fun tb!251259 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 rBis!167))) t!346235) tb!251259))

(declare-fun e!2603408 () Bool)

(declare-fun b!4193938 () Bool)

(declare-fun tp!1281300 () Bool)

(assert (=> b!4193938 (= e!2603408 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 rBis!167)) (dynLambda!19836 (toValue!10378 (transformation!7682 rBis!167)) (seqFromList!5707 (_1!25063 lt!1493642)))))) tp!1281300))))

(declare-fun result!306244 () Bool)

(assert (=> tb!251259 (= result!306244 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 rBis!167)) (dynLambda!19836 (toValue!10378 (transformation!7682 rBis!167)) (seqFromList!5707 (_1!25063 lt!1493642))))) e!2603408))))

(assert (= tb!251259 b!4193938))

(declare-fun m!4782719 () Bool)

(assert (=> b!4193938 m!4782719))

(declare-fun m!4782721 () Bool)

(assert (=> tb!251259 m!4782721))

(assert (=> d!1236882 t!346235))

(declare-fun b_and!328769 () Bool)

(assert (= b_and!328729 (and (=> t!346235 result!306244) b_and!328769)))

(declare-fun t!346237 () Bool)

(declare-fun tb!251261 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 rBis!167))) t!346237) tb!251261))

(declare-fun result!306246 () Bool)

(assert (= result!306246 result!306244))

(assert (=> d!1236882 t!346237))

(declare-fun b_and!328771 () Bool)

(assert (= b_and!328731 (and (=> t!346237 result!306246) b_and!328771)))

(declare-fun tb!251263 () Bool)

(declare-fun t!346239 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 rBis!167))) t!346239) tb!251263))

(declare-fun result!306248 () Bool)

(assert (= result!306248 result!306244))

(assert (=> d!1236882 t!346239))

(declare-fun b_and!328773 () Bool)

(assert (= b_and!328733 (and (=> t!346239 result!306248) b_and!328773)))

(declare-fun t!346241 () Bool)

(declare-fun tb!251265 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 rBis!167))) t!346241) tb!251265))

(declare-fun result!306250 () Bool)

(assert (= result!306250 result!306244))

(assert (=> d!1236882 t!346241))

(declare-fun b_and!328775 () Bool)

(assert (= b_and!328735 (and (=> t!346241 result!306250) b_and!328775)))

(declare-fun b_lambda!123371 () Bool)

(assert (=> (not b_lambda!123371) (not d!1236882)))

(assert (=> d!1236882 t!346227))

(declare-fun b_and!328777 () Bool)

(assert (= b_and!328761 (and (=> t!346227 result!306236) b_and!328777)))

(assert (=> d!1236882 t!346229))

(declare-fun b_and!328779 () Bool)

(assert (= b_and!328763 (and (=> t!346229 result!306238) b_and!328779)))

(assert (=> d!1236882 t!346231))

(declare-fun b_and!328781 () Bool)

(assert (= b_and!328765 (and (=> t!346231 result!306240) b_and!328781)))

(assert (=> d!1236882 t!346233))

(declare-fun b_and!328783 () Bool)

(assert (= b_and!328767 (and (=> t!346233 result!306242) b_and!328783)))

(assert (=> d!1236882 m!4782695))

(declare-fun m!4782723 () Bool)

(assert (=> d!1236882 m!4782723))

(assert (=> d!1236882 m!4782043))

(assert (=> d!1236882 m!4782695))

(assert (=> d!1236882 m!4782043))

(assert (=> d!1236882 m!4782711))

(assert (=> d!1236882 m!4782723))

(declare-fun m!4782725 () Bool)

(assert (=> d!1236882 m!4782725))

(assert (=> d!1236882 m!4782043))

(declare-fun m!4782727 () Bool)

(assert (=> d!1236882 m!4782727))

(assert (=> b!4193378 d!1236882))

(assert (=> d!1236638 d!1236720))

(declare-fun d!1236886 () Bool)

(assert (=> d!1236886 (ruleValid!3400 thiss!25986 rBis!167)))

(assert (=> d!1236886 true))

(declare-fun _$65!1641 () Unit!65139)

(assert (=> d!1236886 (= (choose!25698 thiss!25986 rBis!167 rules!3843) _$65!1641)))

(declare-fun bs!596712 () Bool)

(assert (= bs!596712 d!1236886))

(assert (=> bs!596712 m!4781813))

(assert (=> d!1236638 d!1236886))

(assert (=> d!1236638 d!1236730))

(declare-fun b!4193956 () Bool)

(declare-fun e!2603418 () List!46186)

(assert (=> b!4193956 (= e!2603418 (++!11754 (list!16647 (left!34312 (c!715316 lt!1493552))) (list!16647 (right!34642 (c!715316 lt!1493552)))))))

(declare-fun b!4193955 () Bool)

(declare-fun list!16649 (IArray!27791) List!46186)

(assert (=> b!4193955 (= e!2603418 (list!16649 (xs!17199 (c!715316 lt!1493552))))))

(declare-fun d!1236888 () Bool)

(declare-fun c!715460 () Bool)

(assert (=> d!1236888 (= c!715460 ((_ is Empty!13893) (c!715316 lt!1493552)))))

(declare-fun e!2603417 () List!46186)

(assert (=> d!1236888 (= (list!16647 (c!715316 lt!1493552)) e!2603417)))

(declare-fun b!4193954 () Bool)

(assert (=> b!4193954 (= e!2603417 e!2603418)))

(declare-fun c!715461 () Bool)

(assert (=> b!4193954 (= c!715461 ((_ is Leaf!21477) (c!715316 lt!1493552)))))

(declare-fun b!4193953 () Bool)

(assert (=> b!4193953 (= e!2603417 Nil!46062)))

(assert (= (and d!1236888 c!715460) b!4193953))

(assert (= (and d!1236888 (not c!715460)) b!4193954))

(assert (= (and b!4193954 c!715461) b!4193955))

(assert (= (and b!4193954 (not c!715461)) b!4193956))

(declare-fun m!4782739 () Bool)

(assert (=> b!4193956 m!4782739))

(declare-fun m!4782741 () Bool)

(assert (=> b!4193956 m!4782741))

(assert (=> b!4193956 m!4782739))

(assert (=> b!4193956 m!4782741))

(declare-fun m!4782743 () Bool)

(assert (=> b!4193956 m!4782743))

(declare-fun m!4782745 () Bool)

(assert (=> b!4193955 m!4782745))

(assert (=> d!1236620 d!1236888))

(declare-fun d!1236902 () Bool)

(assert (=> d!1236902 (= (isEmpty!27276 p!2959) ((_ is Nil!46062) p!2959))))

(assert (=> bm!292263 d!1236902))

(declare-fun d!1236904 () Bool)

(declare-fun lt!1493964 () Bool)

(assert (=> d!1236904 (= lt!1493964 (select (content!7182 rules!3843) (rule!10770 (_1!25061 (get!14982 lt!1493571)))))))

(declare-fun e!2603427 () Bool)

(assert (=> d!1236904 (= lt!1493964 e!2603427)))

(declare-fun res!1721599 () Bool)

(assert (=> d!1236904 (=> (not res!1721599) (not e!2603427))))

(assert (=> d!1236904 (= res!1721599 ((_ is Cons!46063) rules!3843))))

(assert (=> d!1236904 (= (contains!9491 rules!3843 (rule!10770 (_1!25061 (get!14982 lt!1493571)))) lt!1493964)))

(declare-fun b!4193966 () Bool)

(declare-fun e!2603426 () Bool)

(assert (=> b!4193966 (= e!2603427 e!2603426)))

(declare-fun res!1721598 () Bool)

(assert (=> b!4193966 (=> res!1721598 e!2603426)))

(assert (=> b!4193966 (= res!1721598 (= (h!51483 rules!3843) (rule!10770 (_1!25061 (get!14982 lt!1493571)))))))

(declare-fun b!4193967 () Bool)

(assert (=> b!4193967 (= e!2603426 (contains!9491 (t!346118 rules!3843) (rule!10770 (_1!25061 (get!14982 lt!1493571)))))))

(assert (= (and d!1236904 res!1721599) b!4193966))

(assert (= (and b!4193966 (not res!1721598)) b!4193967))

(assert (=> d!1236904 m!4782357))

(declare-fun m!4782749 () Bool)

(assert (=> d!1236904 m!4782749))

(declare-fun m!4782753 () Bool)

(assert (=> b!4193967 m!4782753))

(assert (=> b!4193216 d!1236904))

(assert (=> b!4193216 d!1236814))

(declare-fun d!1236906 () Bool)

(declare-fun c!715469 () Bool)

(assert (=> d!1236906 (= c!715469 ((_ is Nil!46062) lt!1493619))))

(declare-fun e!2603434 () (InoxSet C!25364))

(assert (=> d!1236906 (= (content!7180 lt!1493619) e!2603434)))

(declare-fun b!4193980 () Bool)

(assert (=> b!4193980 (= e!2603434 ((as const (Array C!25364 Bool)) false))))

(declare-fun b!4193981 () Bool)

(assert (=> b!4193981 (= e!2603434 ((_ map or) (store ((as const (Array C!25364 Bool)) false) (h!51482 lt!1493619) true) (content!7180 (t!346117 lt!1493619))))))

(assert (= (and d!1236906 c!715469) b!4193980))

(assert (= (and d!1236906 (not c!715469)) b!4193981))

(declare-fun m!4782775 () Bool)

(assert (=> b!4193981 m!4782775))

(declare-fun m!4782777 () Bool)

(assert (=> b!4193981 m!4782777))

(assert (=> d!1236622 d!1236906))

(declare-fun d!1236920 () Bool)

(declare-fun c!715470 () Bool)

(assert (=> d!1236920 (= c!715470 ((_ is Nil!46062) lt!1493553))))

(declare-fun e!2603435 () (InoxSet C!25364))

(assert (=> d!1236920 (= (content!7180 lt!1493553) e!2603435)))

(declare-fun b!4193982 () Bool)

(assert (=> b!4193982 (= e!2603435 ((as const (Array C!25364 Bool)) false))))

(declare-fun b!4193983 () Bool)

(assert (=> b!4193983 (= e!2603435 ((_ map or) (store ((as const (Array C!25364 Bool)) false) (h!51482 lt!1493553) true) (content!7180 (t!346117 lt!1493553))))))

(assert (= (and d!1236920 c!715470) b!4193982))

(assert (= (and d!1236920 (not c!715470)) b!4193983))

(declare-fun m!4782779 () Bool)

(assert (=> b!4193983 m!4782779))

(declare-fun m!4782781 () Bool)

(assert (=> b!4193983 m!4782781))

(assert (=> d!1236622 d!1236920))

(declare-fun d!1236922 () Bool)

(declare-fun c!715471 () Bool)

(assert (=> d!1236922 (= c!715471 ((_ is Nil!46062) (_2!25061 lt!1493544)))))

(declare-fun e!2603437 () (InoxSet C!25364))

(assert (=> d!1236922 (= (content!7180 (_2!25061 lt!1493544)) e!2603437)))

(declare-fun b!4193985 () Bool)

(assert (=> b!4193985 (= e!2603437 ((as const (Array C!25364 Bool)) false))))

(declare-fun b!4193986 () Bool)

(assert (=> b!4193986 (= e!2603437 ((_ map or) (store ((as const (Array C!25364 Bool)) false) (h!51482 (_2!25061 lt!1493544)) true) (content!7180 (t!346117 (_2!25061 lt!1493544)))))))

(assert (= (and d!1236922 c!715471) b!4193985))

(assert (= (and d!1236922 (not c!715471)) b!4193986))

(declare-fun m!4782787 () Bool)

(assert (=> b!4193986 m!4782787))

(declare-fun m!4782789 () Bool)

(assert (=> b!4193986 m!4782789))

(assert (=> d!1236622 d!1236922))

(declare-fun bm!292318 () Bool)

(declare-fun call!292323 () Option!9876)

(assert (=> bm!292318 (= call!292323 (maxPrefixOneRule!3284 thiss!25986 (h!51483 (t!346118 rules!3843)) input!3342))))

(declare-fun b!4193988 () Bool)

(declare-fun e!2603438 () Option!9876)

(declare-fun lt!1493973 () Option!9876)

(declare-fun lt!1493970 () Option!9876)

(assert (=> b!4193988 (= e!2603438 (ite (and ((_ is None!9875) lt!1493973) ((_ is None!9875) lt!1493970)) None!9875 (ite ((_ is None!9875) lt!1493970) lt!1493973 (ite ((_ is None!9875) lt!1493973) lt!1493970 (ite (>= (size!33849 (_1!25061 (v!40711 lt!1493973))) (size!33849 (_1!25061 (v!40711 lt!1493970)))) lt!1493973 lt!1493970)))))))

(assert (=> b!4193988 (= lt!1493973 call!292323)))

(assert (=> b!4193988 (= lt!1493970 (maxPrefix!4323 thiss!25986 (t!346118 (t!346118 rules!3843)) input!3342))))

(declare-fun b!4193989 () Bool)

(declare-fun res!1721602 () Bool)

(declare-fun e!2603440 () Bool)

(assert (=> b!4193989 (=> (not res!1721602) (not e!2603440))))

(declare-fun lt!1493969 () Option!9876)

(assert (=> b!4193989 (= res!1721602 (< (size!33850 (_2!25061 (get!14982 lt!1493969))) (size!33850 input!3342)))))

(declare-fun b!4193990 () Bool)

(declare-fun res!1721604 () Bool)

(assert (=> b!4193990 (=> (not res!1721604) (not e!2603440))))

(assert (=> b!4193990 (= res!1721604 (= (value!239469 (_1!25061 (get!14982 lt!1493969))) (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493969)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493969)))))))))

(declare-fun b!4193991 () Bool)

(declare-fun res!1721607 () Bool)

(assert (=> b!4193991 (=> (not res!1721607) (not e!2603440))))

(assert (=> b!4193991 (= res!1721607 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493969)))) (_2!25061 (get!14982 lt!1493969))) input!3342))))

(declare-fun b!4193992 () Bool)

(assert (=> b!4193992 (= e!2603440 (contains!9491 (t!346118 rules!3843) (rule!10770 (_1!25061 (get!14982 lt!1493969)))))))

(declare-fun b!4193993 () Bool)

(declare-fun res!1721605 () Bool)

(assert (=> b!4193993 (=> (not res!1721605) (not e!2603440))))

(assert (=> b!4193993 (= res!1721605 (matchR!6326 (regex!7682 (rule!10770 (_1!25061 (get!14982 lt!1493969)))) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493969))))))))

(declare-fun b!4193994 () Bool)

(assert (=> b!4193994 (= e!2603438 call!292323)))

(declare-fun b!4193995 () Bool)

(declare-fun res!1721603 () Bool)

(assert (=> b!4193995 (=> (not res!1721603) (not e!2603440))))

(assert (=> b!4193995 (= res!1721603 (= (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493969)))) (originalCharacters!8070 (_1!25061 (get!14982 lt!1493969)))))))

(declare-fun b!4193987 () Bool)

(declare-fun e!2603439 () Bool)

(assert (=> b!4193987 (= e!2603439 e!2603440)))

(declare-fun res!1721606 () Bool)

(assert (=> b!4193987 (=> (not res!1721606) (not e!2603440))))

(assert (=> b!4193987 (= res!1721606 (isDefined!7354 lt!1493969))))

(declare-fun d!1236924 () Bool)

(assert (=> d!1236924 e!2603439))

(declare-fun res!1721608 () Bool)

(assert (=> d!1236924 (=> res!1721608 e!2603439)))

(assert (=> d!1236924 (= res!1721608 (isEmpty!27275 lt!1493969))))

(assert (=> d!1236924 (= lt!1493969 e!2603438)))

(declare-fun c!715472 () Bool)

(assert (=> d!1236924 (= c!715472 (and ((_ is Cons!46063) (t!346118 rules!3843)) ((_ is Nil!46063) (t!346118 (t!346118 rules!3843)))))))

(declare-fun lt!1493972 () Unit!65139)

(declare-fun lt!1493971 () Unit!65139)

(assert (=> d!1236924 (= lt!1493972 lt!1493971)))

(assert (=> d!1236924 (isPrefix!4539 input!3342 input!3342)))

(assert (=> d!1236924 (= lt!1493971 (lemmaIsPrefixRefl!2968 input!3342 input!3342))))

(assert (=> d!1236924 (rulesValidInductive!2838 thiss!25986 (t!346118 rules!3843))))

(assert (=> d!1236924 (= (maxPrefix!4323 thiss!25986 (t!346118 rules!3843) input!3342) lt!1493969)))

(assert (= (and d!1236924 c!715472) b!4193994))

(assert (= (and d!1236924 (not c!715472)) b!4193988))

(assert (= (or b!4193994 b!4193988) bm!292318))

(assert (= (and d!1236924 (not res!1721608)) b!4193987))

(assert (= (and b!4193987 res!1721606) b!4193995))

(assert (= (and b!4193995 res!1721603) b!4193989))

(assert (= (and b!4193989 res!1721602) b!4193991))

(assert (= (and b!4193991 res!1721607) b!4193990))

(assert (= (and b!4193990 res!1721604) b!4193993))

(assert (= (and b!4193993 res!1721605) b!4193992))

(declare-fun m!4782809 () Bool)

(assert (=> b!4193990 m!4782809))

(declare-fun m!4782811 () Bool)

(assert (=> b!4193990 m!4782811))

(assert (=> b!4193990 m!4782811))

(declare-fun m!4782813 () Bool)

(assert (=> b!4193990 m!4782813))

(assert (=> b!4193992 m!4782809))

(declare-fun m!4782815 () Bool)

(assert (=> b!4193992 m!4782815))

(declare-fun m!4782817 () Bool)

(assert (=> b!4193987 m!4782817))

(declare-fun m!4782819 () Bool)

(assert (=> bm!292318 m!4782819))

(declare-fun m!4782821 () Bool)

(assert (=> d!1236924 m!4782821))

(assert (=> d!1236924 m!4781817))

(assert (=> d!1236924 m!4781821))

(declare-fun m!4782823 () Bool)

(assert (=> d!1236924 m!4782823))

(assert (=> b!4193991 m!4782809))

(declare-fun m!4782825 () Bool)

(assert (=> b!4193991 m!4782825))

(assert (=> b!4193991 m!4782825))

(declare-fun m!4782827 () Bool)

(assert (=> b!4193991 m!4782827))

(assert (=> b!4193991 m!4782827))

(declare-fun m!4782829 () Bool)

(assert (=> b!4193991 m!4782829))

(assert (=> b!4193995 m!4782809))

(assert (=> b!4193995 m!4782825))

(assert (=> b!4193995 m!4782825))

(assert (=> b!4193995 m!4782827))

(assert (=> b!4193993 m!4782809))

(assert (=> b!4193993 m!4782825))

(assert (=> b!4193993 m!4782825))

(assert (=> b!4193993 m!4782827))

(assert (=> b!4193993 m!4782827))

(declare-fun m!4782831 () Bool)

(assert (=> b!4193993 m!4782831))

(declare-fun m!4782833 () Bool)

(assert (=> b!4193988 m!4782833))

(assert (=> b!4193989 m!4782809))

(declare-fun m!4782835 () Bool)

(assert (=> b!4193989 m!4782835))

(assert (=> b!4193989 m!4781803))

(assert (=> b!4193212 d!1236924))

(declare-fun d!1236934 () Bool)

(assert (=> d!1236934 (= (head!8900 p!2959) (h!51482 p!2959))))

(assert (=> b!4193662 d!1236934))

(declare-fun d!1236936 () Bool)

(assert (=> d!1236936 (= (head!8900 input!3342) (h!51482 input!3342))))

(assert (=> b!4193392 d!1236936))

(assert (=> b!4193612 d!1236744))

(declare-fun d!1236938 () Bool)

(declare-fun lt!1493976 () Int)

(assert (=> d!1236938 (>= lt!1493976 0)))

(declare-fun e!2603446 () Int)

(assert (=> d!1236938 (= lt!1493976 e!2603446)))

(declare-fun c!715473 () Bool)

(assert (=> d!1236938 (= c!715473 ((_ is Nil!46062) (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709)))))))

(assert (=> d!1236938 (= (size!33850 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709)))) lt!1493976)))

(declare-fun b!4194002 () Bool)

(assert (=> b!4194002 (= e!2603446 0)))

(declare-fun b!4194003 () Bool)

(assert (=> b!4194003 (= e!2603446 (+ 1 (size!33850 (t!346117 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493709)))))))))

(assert (= (and d!1236938 c!715473) b!4194002))

(assert (= (and d!1236938 (not c!715473)) b!4194003))

(declare-fun m!4782837 () Bool)

(assert (=> b!4194003 m!4782837))

(assert (=> b!4193612 d!1236938))

(declare-fun b!4194013 () Bool)

(declare-fun e!2603451 () Bool)

(assert (=> b!4194013 (= e!2603451 (>= (size!33850 (tail!6747 (++!11754 lt!1493553 (_2!25061 lt!1493544)))) (size!33850 (tail!6747 lt!1493553))))))

(declare-fun b!4194012 () Bool)

(declare-fun e!2603453 () Bool)

(assert (=> b!4194012 (= e!2603453 (isPrefix!4539 (tail!6747 (tail!6747 lt!1493553)) (tail!6747 (tail!6747 (++!11754 lt!1493553 (_2!25061 lt!1493544))))))))

(declare-fun d!1236940 () Bool)

(assert (=> d!1236940 e!2603451))

(declare-fun res!1721617 () Bool)

(assert (=> d!1236940 (=> res!1721617 e!2603451)))

(declare-fun lt!1493977 () Bool)

(assert (=> d!1236940 (= res!1721617 (not lt!1493977))))

(declare-fun e!2603452 () Bool)

(assert (=> d!1236940 (= lt!1493977 e!2603452)))

(declare-fun res!1721620 () Bool)

(assert (=> d!1236940 (=> res!1721620 e!2603452)))

(assert (=> d!1236940 (= res!1721620 ((_ is Nil!46062) (tail!6747 lt!1493553)))))

(assert (=> d!1236940 (= (isPrefix!4539 (tail!6747 lt!1493553) (tail!6747 (++!11754 lt!1493553 (_2!25061 lt!1493544)))) lt!1493977)))

(declare-fun b!4194010 () Bool)

(assert (=> b!4194010 (= e!2603452 e!2603453)))

(declare-fun res!1721619 () Bool)

(assert (=> b!4194010 (=> (not res!1721619) (not e!2603453))))

(assert (=> b!4194010 (= res!1721619 (not ((_ is Nil!46062) (tail!6747 (++!11754 lt!1493553 (_2!25061 lt!1493544))))))))

(declare-fun b!4194011 () Bool)

(declare-fun res!1721618 () Bool)

(assert (=> b!4194011 (=> (not res!1721618) (not e!2603453))))

(assert (=> b!4194011 (= res!1721618 (= (head!8900 (tail!6747 lt!1493553)) (head!8900 (tail!6747 (++!11754 lt!1493553 (_2!25061 lt!1493544))))))))

(assert (= (and d!1236940 (not res!1721620)) b!4194010))

(assert (= (and b!4194010 res!1721619) b!4194011))

(assert (= (and b!4194011 res!1721618) b!4194012))

(assert (= (and d!1236940 (not res!1721617)) b!4194013))

(assert (=> b!4194013 m!4782003))

(declare-fun m!4782839 () Bool)

(assert (=> b!4194013 m!4782839))

(assert (=> b!4194013 m!4782001))

(declare-fun m!4782841 () Bool)

(assert (=> b!4194013 m!4782841))

(assert (=> b!4194012 m!4782001))

(declare-fun m!4782843 () Bool)

(assert (=> b!4194012 m!4782843))

(assert (=> b!4194012 m!4782003))

(declare-fun m!4782845 () Bool)

(assert (=> b!4194012 m!4782845))

(assert (=> b!4194012 m!4782843))

(assert (=> b!4194012 m!4782845))

(declare-fun m!4782847 () Bool)

(assert (=> b!4194012 m!4782847))

(assert (=> b!4194011 m!4782001))

(declare-fun m!4782849 () Bool)

(assert (=> b!4194011 m!4782849))

(assert (=> b!4194011 m!4782003))

(declare-fun m!4782851 () Bool)

(assert (=> b!4194011 m!4782851))

(assert (=> b!4193322 d!1236940))

(declare-fun d!1236942 () Bool)

(assert (=> d!1236942 (= (tail!6747 lt!1493553) (t!346117 lt!1493553))))

(assert (=> b!4193322 d!1236942))

(declare-fun d!1236944 () Bool)

(assert (=> d!1236944 (= (tail!6747 (++!11754 lt!1493553 (_2!25061 lt!1493544))) (t!346117 (++!11754 lt!1493553 (_2!25061 lt!1493544))))))

(assert (=> b!4193322 d!1236944))

(declare-fun d!1236946 () Bool)

(declare-fun e!2603455 () Bool)

(assert (=> d!1236946 e!2603455))

(declare-fun res!1721621 () Bool)

(assert (=> d!1236946 (=> (not res!1721621) (not e!2603455))))

(declare-fun lt!1493978 () List!46186)

(assert (=> d!1236946 (= res!1721621 (= (content!7180 lt!1493978) ((_ map or) (content!7180 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))) (content!7180 (_2!25061 (get!14982 lt!1493641))))))))

(declare-fun e!2603454 () List!46186)

(assert (=> d!1236946 (= lt!1493978 e!2603454)))

(declare-fun c!715476 () Bool)

(assert (=> d!1236946 (= c!715476 ((_ is Nil!46062) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))))))

(assert (=> d!1236946 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641)))) (_2!25061 (get!14982 lt!1493641))) lt!1493978)))

(declare-fun b!4194014 () Bool)

(assert (=> b!4194014 (= e!2603454 (_2!25061 (get!14982 lt!1493641)))))

(declare-fun b!4194015 () Bool)

(assert (=> b!4194015 (= e!2603454 (Cons!46062 (h!51482 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))) (++!11754 (t!346117 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))) (_2!25061 (get!14982 lt!1493641)))))))

(declare-fun b!4194016 () Bool)

(declare-fun res!1721622 () Bool)

(assert (=> b!4194016 (=> (not res!1721622) (not e!2603455))))

(assert (=> b!4194016 (= res!1721622 (= (size!33850 lt!1493978) (+ (size!33850 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))) (size!33850 (_2!25061 (get!14982 lt!1493641))))))))

(declare-fun b!4194017 () Bool)

(assert (=> b!4194017 (= e!2603455 (or (not (= (_2!25061 (get!14982 lt!1493641)) Nil!46062)) (= lt!1493978 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641)))))))))

(assert (= (and d!1236946 c!715476) b!4194014))

(assert (= (and d!1236946 (not c!715476)) b!4194015))

(assert (= (and d!1236946 res!1721621) b!4194016))

(assert (= (and b!4194016 res!1721622) b!4194017))

(declare-fun m!4782857 () Bool)

(assert (=> d!1236946 m!4782857))

(assert (=> d!1236946 m!4782055))

(declare-fun m!4782859 () Bool)

(assert (=> d!1236946 m!4782859))

(declare-fun m!4782861 () Bool)

(assert (=> d!1236946 m!4782861))

(declare-fun m!4782863 () Bool)

(assert (=> b!4194015 m!4782863))

(declare-fun m!4782865 () Bool)

(assert (=> b!4194016 m!4782865))

(assert (=> b!4194016 m!4782055))

(declare-fun m!4782867 () Bool)

(assert (=> b!4194016 m!4782867))

(assert (=> b!4194016 m!4782071))

(assert (=> b!4193377 d!1236946))

(declare-fun d!1236950 () Bool)

(assert (=> d!1236950 (= (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641)))) (list!16647 (c!715316 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))))))

(declare-fun bs!596716 () Bool)

(assert (= bs!596716 d!1236950))

(declare-fun m!4782869 () Bool)

(assert (=> bs!596716 m!4782869))

(assert (=> b!4193377 d!1236950))

(declare-fun d!1236952 () Bool)

(declare-fun lt!1493979 () BalanceConc!27380)

(assert (=> d!1236952 (= (list!16646 lt!1493979) (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641))))))

(assert (=> d!1236952 (= lt!1493979 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641))))) (value!239469 (_1!25061 (get!14982 lt!1493641)))))))

(assert (=> d!1236952 (= (charsOf!5117 (_1!25061 (get!14982 lt!1493641))) lt!1493979)))

(declare-fun b_lambda!123377 () Bool)

(assert (=> (not b_lambda!123377) (not d!1236952)))

(declare-fun t!346260 () Bool)

(declare-fun tb!251283 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346260) tb!251283))

(declare-fun b!4194021 () Bool)

(declare-fun e!2603458 () Bool)

(declare-fun tp!1281302 () Bool)

(assert (=> b!4194021 (= e!2603458 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641))))) (value!239469 (_1!25061 (get!14982 lt!1493641)))))) tp!1281302))))

(declare-fun result!306268 () Bool)

(assert (=> tb!251283 (= result!306268 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641))))) (value!239469 (_1!25061 (get!14982 lt!1493641))))) e!2603458))))

(assert (= tb!251283 b!4194021))

(declare-fun m!4782871 () Bool)

(assert (=> b!4194021 m!4782871))

(declare-fun m!4782873 () Bool)

(assert (=> tb!251283 m!4782873))

(assert (=> d!1236952 t!346260))

(declare-fun b_and!328801 () Bool)

(assert (= b_and!328769 (and (=> t!346260 result!306268) b_and!328801)))

(declare-fun tb!251285 () Bool)

(declare-fun t!346262 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346262) tb!251285))

(declare-fun result!306270 () Bool)

(assert (= result!306270 result!306268))

(assert (=> d!1236952 t!346262))

(declare-fun b_and!328803 () Bool)

(assert (= b_and!328771 (and (=> t!346262 result!306270) b_and!328803)))

(declare-fun t!346264 () Bool)

(declare-fun tb!251287 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346264) tb!251287))

(declare-fun result!306272 () Bool)

(assert (= result!306272 result!306268))

(assert (=> d!1236952 t!346264))

(declare-fun b_and!328805 () Bool)

(assert (= b_and!328773 (and (=> t!346264 result!306272) b_and!328805)))

(declare-fun t!346266 () Bool)

(declare-fun tb!251289 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346266) tb!251289))

(declare-fun result!306274 () Bool)

(assert (= result!306274 result!306268))

(assert (=> d!1236952 t!346266))

(declare-fun b_and!328807 () Bool)

(assert (= b_and!328775 (and (=> t!346266 result!306274) b_and!328807)))

(declare-fun m!4782875 () Bool)

(assert (=> d!1236952 m!4782875))

(declare-fun m!4782877 () Bool)

(assert (=> d!1236952 m!4782877))

(assert (=> b!4193377 d!1236952))

(assert (=> b!4193377 d!1236750))

(declare-fun b!4194025 () Bool)

(declare-fun e!2603459 () Bool)

(assert (=> b!4194025 (= e!2603459 (>= (size!33850 (tail!6747 input!3342)) (size!33850 (tail!6747 p!2959))))))

(declare-fun b!4194024 () Bool)

(declare-fun e!2603461 () Bool)

(assert (=> b!4194024 (= e!2603461 (isPrefix!4539 (tail!6747 (tail!6747 p!2959)) (tail!6747 (tail!6747 input!3342))))))

(declare-fun d!1236954 () Bool)

(assert (=> d!1236954 e!2603459))

(declare-fun res!1721624 () Bool)

(assert (=> d!1236954 (=> res!1721624 e!2603459)))

(declare-fun lt!1493980 () Bool)

(assert (=> d!1236954 (= res!1721624 (not lt!1493980))))

(declare-fun e!2603460 () Bool)

(assert (=> d!1236954 (= lt!1493980 e!2603460)))

(declare-fun res!1721627 () Bool)

(assert (=> d!1236954 (=> res!1721627 e!2603460)))

(assert (=> d!1236954 (= res!1721627 ((_ is Nil!46062) (tail!6747 p!2959)))))

(assert (=> d!1236954 (= (isPrefix!4539 (tail!6747 p!2959) (tail!6747 input!3342)) lt!1493980)))

(declare-fun b!4194022 () Bool)

(assert (=> b!4194022 (= e!2603460 e!2603461)))

(declare-fun res!1721626 () Bool)

(assert (=> b!4194022 (=> (not res!1721626) (not e!2603461))))

(assert (=> b!4194022 (= res!1721626 (not ((_ is Nil!46062) (tail!6747 input!3342))))))

(declare-fun b!4194023 () Bool)

(declare-fun res!1721625 () Bool)

(assert (=> b!4194023 (=> (not res!1721625) (not e!2603461))))

(assert (=> b!4194023 (= res!1721625 (= (head!8900 (tail!6747 p!2959)) (head!8900 (tail!6747 input!3342))))))

(assert (= (and d!1236954 (not res!1721627)) b!4194022))

(assert (= (and b!4194022 res!1721626) b!4194023))

(assert (= (and b!4194023 res!1721625) b!4194024))

(assert (= (and d!1236954 (not res!1721624)) b!4194025))

(assert (=> b!4194025 m!4782025))

(assert (=> b!4194025 m!4782589))

(assert (=> b!4194025 m!4782023))

(declare-fun m!4782883 () Bool)

(assert (=> b!4194025 m!4782883))

(assert (=> b!4194024 m!4782023))

(declare-fun m!4782885 () Bool)

(assert (=> b!4194024 m!4782885))

(assert (=> b!4194024 m!4782025))

(assert (=> b!4194024 m!4782591))

(assert (=> b!4194024 m!4782885))

(assert (=> b!4194024 m!4782591))

(declare-fun m!4782887 () Bool)

(assert (=> b!4194024 m!4782887))

(assert (=> b!4194023 m!4782023))

(declare-fun m!4782889 () Bool)

(assert (=> b!4194023 m!4782889))

(assert (=> b!4194023 m!4782025))

(assert (=> b!4194023 m!4782595))

(assert (=> b!4193354 d!1236954))

(assert (=> b!4193354 d!1236860))

(assert (=> b!4193354 d!1236832))

(assert (=> b!4193381 d!1236750))

(declare-fun d!1236960 () Bool)

(assert (=> d!1236960 (= (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641))))) (dynLambda!19836 (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641))))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641))))))))

(declare-fun b_lambda!123379 () Bool)

(assert (=> (not b_lambda!123379) (not d!1236960)))

(declare-fun t!346268 () Bool)

(declare-fun tb!251291 () Bool)

(assert (=> (and b!4193164 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346268) tb!251291))

(declare-fun result!306276 () Bool)

(assert (=> tb!251291 (= result!306276 (inv!21 (dynLambda!19836 (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641))))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641)))))))))

(declare-fun m!4782891 () Bool)

(assert (=> tb!251291 m!4782891))

(assert (=> d!1236960 t!346268))

(declare-fun b_and!328809 () Bool)

(assert (= b_and!328777 (and (=> t!346268 result!306276) b_and!328809)))

(declare-fun tb!251293 () Bool)

(declare-fun t!346270 () Bool)

(assert (=> (and b!4193154 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346270) tb!251293))

(declare-fun result!306278 () Bool)

(assert (= result!306278 result!306276))

(assert (=> d!1236960 t!346270))

(declare-fun b_and!328811 () Bool)

(assert (= b_and!328779 (and (=> t!346270 result!306278) b_and!328811)))

(declare-fun t!346272 () Bool)

(declare-fun tb!251295 () Bool)

(assert (=> (and b!4193161 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346272) tb!251295))

(declare-fun result!306280 () Bool)

(assert (= result!306280 result!306276))

(assert (=> d!1236960 t!346272))

(declare-fun b_and!328813 () Bool)

(assert (= b_and!328781 (and (=> t!346272 result!306280) b_and!328813)))

(declare-fun tb!251297 () Bool)

(declare-fun t!346274 () Bool)

(assert (=> (and b!4193691 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346274) tb!251297))

(declare-fun result!306282 () Bool)

(assert (= result!306282 result!306276))

(assert (=> d!1236960 t!346274))

(declare-fun b_and!328815 () Bool)

(assert (= b_and!328783 (and (=> t!346274 result!306282) b_and!328815)))

(assert (=> d!1236960 m!4782073))

(declare-fun m!4782893 () Bool)

(assert (=> d!1236960 m!4782893))

(assert (=> b!4193381 d!1236960))

(declare-fun d!1236962 () Bool)

(assert (=> d!1236962 (= (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641)))) (fromListB!2615 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493641)))))))

(declare-fun bs!596718 () Bool)

(assert (= bs!596718 d!1236962))

(declare-fun m!4782895 () Bool)

(assert (=> bs!596718 m!4782895))

(assert (=> b!4193381 d!1236962))

(declare-fun d!1236964 () Bool)

(assert (=> d!1236964 (= (isEmpty!27276 (originalCharacters!8070 lt!1493550)) ((_ is Nil!46062) (originalCharacters!8070 lt!1493550)))))

(assert (=> d!1236588 d!1236964))

(declare-fun d!1236966 () Bool)

(assert (=> d!1236966 (= (list!16646 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))) (list!16647 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))))

(declare-fun bs!596719 () Bool)

(assert (= bs!596719 d!1236966))

(declare-fun m!4782899 () Bool)

(assert (=> bs!596719 m!4782899))

(assert (=> d!1236658 d!1236966))

(declare-fun d!1236970 () Bool)

(assert (=> d!1236970 (= (list!16646 lt!1493546) (list!16647 (c!715316 lt!1493546)))))

(declare-fun bs!596720 () Bool)

(assert (= bs!596720 d!1236970))

(declare-fun m!4782901 () Bool)

(assert (=> bs!596720 m!4782901))

(assert (=> d!1236658 d!1236970))

(declare-fun d!1236972 () Bool)

(declare-fun dynLambda!19843 (Int BalanceConc!27380) Bool)

(assert (=> d!1236972 (dynLambda!19843 lambda!129499 lt!1493546)))

(declare-fun lt!1493985 () Unit!65139)

(declare-fun choose!25705 (Int BalanceConc!27380) Unit!65139)

(assert (=> d!1236972 (= lt!1493985 (choose!25705 lambda!129499 lt!1493546))))

(assert (=> d!1236972 (Forall!1568 lambda!129499)))

(assert (=> d!1236972 (= (ForallOf!1066 lambda!129499 lt!1493546) lt!1493985)))

(declare-fun b_lambda!123381 () Bool)

(assert (=> (not b_lambda!123381) (not d!1236972)))

(declare-fun bs!596722 () Bool)

(assert (= bs!596722 d!1236972))

(declare-fun m!4782907 () Bool)

(assert (=> bs!596722 m!4782907))

(declare-fun m!4782909 () Bool)

(assert (=> bs!596722 m!4782909))

(declare-fun m!4782911 () Bool)

(assert (=> bs!596722 m!4782911))

(assert (=> d!1236658 d!1236972))

(assert (=> d!1236728 d!1236902))

(assert (=> d!1236728 d!1236630))

(declare-fun d!1236978 () Bool)

(declare-fun lt!1493988 () Int)

(assert (=> d!1236978 (>= lt!1493988 0)))

(declare-fun e!2603468 () Int)

(assert (=> d!1236978 (= lt!1493988 e!2603468)))

(declare-fun c!715483 () Bool)

(assert (=> d!1236978 (= c!715483 ((_ is Nil!46062) lt!1493619))))

(assert (=> d!1236978 (= (size!33850 lt!1493619) lt!1493988)))

(declare-fun b!4194036 () Bool)

(assert (=> b!4194036 (= e!2603468 0)))

(declare-fun b!4194037 () Bool)

(assert (=> b!4194037 (= e!2603468 (+ 1 (size!33850 (t!346117 lt!1493619))))))

(assert (= (and d!1236978 c!715483) b!4194036))

(assert (= (and d!1236978 (not c!715483)) b!4194037))

(declare-fun m!4782913 () Bool)

(assert (=> b!4194037 m!4782913))

(assert (=> b!4193310 d!1236978))

(assert (=> b!4193310 d!1236584))

(declare-fun d!1236980 () Bool)

(declare-fun lt!1493990 () Int)

(assert (=> d!1236980 (>= lt!1493990 0)))

(declare-fun e!2603469 () Int)

(assert (=> d!1236980 (= lt!1493990 e!2603469)))

(declare-fun c!715484 () Bool)

(assert (=> d!1236980 (= c!715484 ((_ is Nil!46062) (_2!25061 lt!1493544)))))

(assert (=> d!1236980 (= (size!33850 (_2!25061 lt!1493544)) lt!1493990)))

(declare-fun b!4194038 () Bool)

(assert (=> b!4194038 (= e!2603469 0)))

(declare-fun b!4194039 () Bool)

(assert (=> b!4194039 (= e!2603469 (+ 1 (size!33850 (t!346117 (_2!25061 lt!1493544)))))))

(assert (= (and d!1236980 c!715484) b!4194038))

(assert (= (and d!1236980 (not c!715484)) b!4194039))

(declare-fun m!4782917 () Bool)

(assert (=> b!4194039 m!4782917))

(assert (=> b!4193310 d!1236980))

(declare-fun bs!596724 () Bool)

(declare-fun d!1236984 () Bool)

(assert (= bs!596724 (and d!1236984 d!1236736)))

(declare-fun lambda!129518 () Int)

(assert (=> bs!596724 (= (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 rBis!167))) (= lambda!129518 lambda!129502))))

(declare-fun bs!596725 () Bool)

(assert (= bs!596725 (and d!1236984 d!1236748)))

(assert (=> bs!596725 (= (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 (h!51483 rules!3843)))) (= lambda!129518 lambda!129503))))

(assert (=> d!1236984 true))

(assert (=> d!1236984 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 r!4142))) (dynLambda!19840 order!24391 lambda!129518))))

(assert (=> d!1236984 (= (equivClasses!3231 (toChars!10237 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 r!4142))) (Forall2!1166 lambda!129518))))

(declare-fun bs!596726 () Bool)

(assert (= bs!596726 d!1236984))

(declare-fun m!4782927 () Bool)

(assert (=> bs!596726 m!4782927))

(assert (=> b!4193351 d!1236984))

(declare-fun b!4194047 () Bool)

(declare-fun e!2603473 () Bool)

(assert (=> b!4194047 (= e!2603473 (>= (size!33850 (tail!6747 input!3342)) (size!33850 (tail!6747 pBis!107))))))

(declare-fun b!4194046 () Bool)

(declare-fun e!2603475 () Bool)

(assert (=> b!4194046 (= e!2603475 (isPrefix!4539 (tail!6747 (tail!6747 pBis!107)) (tail!6747 (tail!6747 input!3342))))))

(declare-fun d!1236990 () Bool)

(assert (=> d!1236990 e!2603473))

(declare-fun res!1721630 () Bool)

(assert (=> d!1236990 (=> res!1721630 e!2603473)))

(declare-fun lt!1493993 () Bool)

(assert (=> d!1236990 (= res!1721630 (not lt!1493993))))

(declare-fun e!2603474 () Bool)

(assert (=> d!1236990 (= lt!1493993 e!2603474)))

(declare-fun res!1721633 () Bool)

(assert (=> d!1236990 (=> res!1721633 e!2603474)))

(assert (=> d!1236990 (= res!1721633 ((_ is Nil!46062) (tail!6747 pBis!107)))))

(assert (=> d!1236990 (= (isPrefix!4539 (tail!6747 pBis!107) (tail!6747 input!3342)) lt!1493993)))

(declare-fun b!4194044 () Bool)

(assert (=> b!4194044 (= e!2603474 e!2603475)))

(declare-fun res!1721632 () Bool)

(assert (=> b!4194044 (=> (not res!1721632) (not e!2603475))))

(assert (=> b!4194044 (= res!1721632 (not ((_ is Nil!46062) (tail!6747 input!3342))))))

(declare-fun b!4194045 () Bool)

(declare-fun res!1721631 () Bool)

(assert (=> b!4194045 (=> (not res!1721631) (not e!2603475))))

(assert (=> b!4194045 (= res!1721631 (= (head!8900 (tail!6747 pBis!107)) (head!8900 (tail!6747 input!3342))))))

(assert (= (and d!1236990 (not res!1721633)) b!4194044))

(assert (= (and b!4194044 res!1721632) b!4194045))

(assert (= (and b!4194045 res!1721631) b!4194046))

(assert (= (and d!1236990 (not res!1721630)) b!4194047))

(assert (=> b!4194047 m!4782025))

(assert (=> b!4194047 m!4782589))

(assert (=> b!4194047 m!4782379))

(declare-fun m!4782929 () Bool)

(assert (=> b!4194047 m!4782929))

(assert (=> b!4194046 m!4782379))

(declare-fun m!4782931 () Bool)

(assert (=> b!4194046 m!4782931))

(assert (=> b!4194046 m!4782025))

(assert (=> b!4194046 m!4782591))

(assert (=> b!4194046 m!4782931))

(assert (=> b!4194046 m!4782591))

(declare-fun m!4782933 () Bool)

(assert (=> b!4194046 m!4782933))

(assert (=> b!4194045 m!4782379))

(declare-fun m!4782935 () Bool)

(assert (=> b!4194045 m!4782935))

(assert (=> b!4194045 m!4782025))

(assert (=> b!4194045 m!4782595))

(assert (=> b!4193677 d!1236990))

(declare-fun d!1236992 () Bool)

(assert (=> d!1236992 (= (tail!6747 pBis!107) (t!346117 pBis!107))))

(assert (=> b!4193677 d!1236992))

(assert (=> b!4193677 d!1236832))

(assert (=> d!1236616 d!1236630))

(declare-fun d!1236994 () Bool)

(declare-fun lt!1493994 () List!46186)

(assert (=> d!1236994 (= (++!11754 (t!346117 p!2959) lt!1493994) (tail!6747 input!3342))))

(declare-fun e!2603477 () List!46186)

(assert (=> d!1236994 (= lt!1493994 e!2603477)))

(declare-fun c!715486 () Bool)

(assert (=> d!1236994 (= c!715486 ((_ is Cons!46062) (t!346117 p!2959)))))

(assert (=> d!1236994 (>= (size!33850 (tail!6747 input!3342)) (size!33850 (t!346117 p!2959)))))

(assert (=> d!1236994 (= (getSuffix!2832 (tail!6747 input!3342) (t!346117 p!2959)) lt!1493994)))

(declare-fun b!4194048 () Bool)

(assert (=> b!4194048 (= e!2603477 (getSuffix!2832 (tail!6747 (tail!6747 input!3342)) (t!346117 (t!346117 p!2959))))))

(declare-fun b!4194049 () Bool)

(assert (=> b!4194049 (= e!2603477 (tail!6747 input!3342))))

(assert (= (and d!1236994 c!715486) b!4194048))

(assert (= (and d!1236994 (not c!715486)) b!4194049))

(declare-fun m!4782939 () Bool)

(assert (=> d!1236994 m!4782939))

(assert (=> d!1236994 m!4782025))

(assert (=> d!1236994 m!4782589))

(assert (=> d!1236994 m!4782351))

(assert (=> b!4194048 m!4782025))

(assert (=> b!4194048 m!4782591))

(assert (=> b!4194048 m!4782591))

(declare-fun m!4782941 () Bool)

(assert (=> b!4194048 m!4782941))

(assert (=> b!4193389 d!1236994))

(assert (=> b!4193389 d!1236832))

(declare-fun b!4194050 () Bool)

(declare-fun e!2603484 () Bool)

(declare-fun e!2603481 () Bool)

(assert (=> b!4194050 (= e!2603484 e!2603481)))

(declare-fun res!1721639 () Bool)

(assert (=> b!4194050 (=> res!1721639 e!2603481)))

(declare-fun call!292324 () Bool)

(assert (=> b!4194050 (= res!1721639 call!292324)))

(declare-fun b!4194051 () Bool)

(declare-fun res!1721637 () Bool)

(declare-fun e!2603478 () Bool)

(assert (=> b!4194051 (=> res!1721637 e!2603478)))

(assert (=> b!4194051 (= res!1721637 (not ((_ is ElementMatch!12587) (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959)))))))

(declare-fun e!2603479 () Bool)

(assert (=> b!4194051 (= e!2603479 e!2603478)))

(declare-fun b!4194052 () Bool)

(declare-fun res!1721636 () Bool)

(declare-fun e!2603482 () Bool)

(assert (=> b!4194052 (=> (not res!1721636) (not e!2603482))))

(assert (=> b!4194052 (= res!1721636 (not call!292324))))

(declare-fun b!4194053 () Bool)

(assert (=> b!4194053 (= e!2603481 (not (= (head!8900 (tail!6747 p!2959)) (c!715317 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959))))))))

(declare-fun b!4194054 () Bool)

(declare-fun e!2603480 () Bool)

(assert (=> b!4194054 (= e!2603480 (nullable!4423 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959))))))

(declare-fun b!4194055 () Bool)

(assert (=> b!4194055 (= e!2603478 e!2603484)))

(declare-fun res!1721634 () Bool)

(assert (=> b!4194055 (=> (not res!1721634) (not e!2603484))))

(declare-fun lt!1493995 () Bool)

(assert (=> b!4194055 (= res!1721634 (not lt!1493995))))

(declare-fun b!4194056 () Bool)

(assert (=> b!4194056 (= e!2603482 (= (head!8900 (tail!6747 p!2959)) (c!715317 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959)))))))

(declare-fun b!4194057 () Bool)

(assert (=> b!4194057 (= e!2603480 (matchR!6326 (derivativeStep!3813 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959)) (head!8900 (tail!6747 p!2959))) (tail!6747 (tail!6747 p!2959))))))

(declare-fun b!4194058 () Bool)

(declare-fun res!1721640 () Bool)

(assert (=> b!4194058 (=> res!1721640 e!2603481)))

(assert (=> b!4194058 (= res!1721640 (not (isEmpty!27276 (tail!6747 (tail!6747 p!2959)))))))

(declare-fun d!1236996 () Bool)

(declare-fun e!2603483 () Bool)

(assert (=> d!1236996 e!2603483))

(declare-fun c!715488 () Bool)

(assert (=> d!1236996 (= c!715488 ((_ is EmptyExpr!12587) (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959))))))

(assert (=> d!1236996 (= lt!1493995 e!2603480)))

(declare-fun c!715489 () Bool)

(assert (=> d!1236996 (= c!715489 (isEmpty!27276 (tail!6747 p!2959)))))

(assert (=> d!1236996 (validRegex!5704 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959)))))

(assert (=> d!1236996 (= (matchR!6326 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959)) (tail!6747 p!2959)) lt!1493995)))

(declare-fun b!4194059 () Bool)

(assert (=> b!4194059 (= e!2603479 (not lt!1493995))))

(declare-fun b!4194060 () Bool)

(assert (=> b!4194060 (= e!2603483 e!2603479)))

(declare-fun c!715487 () Bool)

(assert (=> b!4194060 (= c!715487 ((_ is EmptyLang!12587) (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959))))))

(declare-fun b!4194061 () Bool)

(declare-fun res!1721635 () Bool)

(assert (=> b!4194061 (=> (not res!1721635) (not e!2603482))))

(assert (=> b!4194061 (= res!1721635 (isEmpty!27276 (tail!6747 (tail!6747 p!2959))))))

(declare-fun bm!292319 () Bool)

(assert (=> bm!292319 (= call!292324 (isEmpty!27276 (tail!6747 p!2959)))))

(declare-fun b!4194062 () Bool)

(assert (=> b!4194062 (= e!2603483 (= lt!1493995 call!292324))))

(declare-fun b!4194063 () Bool)

(declare-fun res!1721638 () Bool)

(assert (=> b!4194063 (=> res!1721638 e!2603478)))

(assert (=> b!4194063 (= res!1721638 e!2603482)))

(declare-fun res!1721641 () Bool)

(assert (=> b!4194063 (=> (not res!1721641) (not e!2603482))))

(assert (=> b!4194063 (= res!1721641 lt!1493995)))

(assert (= (and d!1236996 c!715489) b!4194054))

(assert (= (and d!1236996 (not c!715489)) b!4194057))

(assert (= (and d!1236996 c!715488) b!4194062))

(assert (= (and d!1236996 (not c!715488)) b!4194060))

(assert (= (and b!4194060 c!715487) b!4194059))

(assert (= (and b!4194060 (not c!715487)) b!4194051))

(assert (= (and b!4194051 (not res!1721637)) b!4194063))

(assert (= (and b!4194063 res!1721641) b!4194052))

(assert (= (and b!4194052 res!1721636) b!4194061))

(assert (= (and b!4194061 res!1721635) b!4194056))

(assert (= (and b!4194063 (not res!1721638)) b!4194055))

(assert (= (and b!4194055 res!1721634) b!4194050))

(assert (= (and b!4194050 (not res!1721639)) b!4194058))

(assert (= (and b!4194058 (not res!1721640)) b!4194053))

(assert (= (or b!4194062 b!4194050 b!4194052) bm!292319))

(assert (=> b!4194061 m!4782023))

(assert (=> b!4194061 m!4782885))

(assert (=> b!4194061 m!4782885))

(declare-fun m!4782949 () Bool)

(assert (=> b!4194061 m!4782949))

(assert (=> b!4194053 m!4782023))

(assert (=> b!4194053 m!4782889))

(assert (=> b!4194056 m!4782023))

(assert (=> b!4194056 m!4782889))

(assert (=> b!4194054 m!4782371))

(declare-fun m!4782951 () Bool)

(assert (=> b!4194054 m!4782951))

(assert (=> bm!292319 m!4782023))

(assert (=> bm!292319 m!4782367))

(assert (=> b!4194058 m!4782023))

(assert (=> b!4194058 m!4782885))

(assert (=> b!4194058 m!4782885))

(assert (=> b!4194058 m!4782949))

(assert (=> d!1236996 m!4782023))

(assert (=> d!1236996 m!4782367))

(assert (=> d!1236996 m!4782371))

(declare-fun m!4782953 () Bool)

(assert (=> d!1236996 m!4782953))

(assert (=> b!4194057 m!4782023))

(assert (=> b!4194057 m!4782889))

(assert (=> b!4194057 m!4782371))

(assert (=> b!4194057 m!4782889))

(declare-fun m!4782955 () Bool)

(assert (=> b!4194057 m!4782955))

(assert (=> b!4194057 m!4782023))

(assert (=> b!4194057 m!4782885))

(assert (=> b!4194057 m!4782955))

(assert (=> b!4194057 m!4782885))

(declare-fun m!4782957 () Bool)

(assert (=> b!4194057 m!4782957))

(assert (=> b!4193666 d!1236996))

(declare-fun b!4194099 () Bool)

(declare-fun e!2603509 () Regex!12587)

(declare-fun call!292335 () Regex!12587)

(assert (=> b!4194099 (= e!2603509 (Union!12587 (Concat!20500 call!292335 (regTwo!25686 (regex!7682 r!4142))) EmptyLang!12587))))

(declare-fun bm!292328 () Bool)

(declare-fun call!292333 () Regex!12587)

(assert (=> bm!292328 (= call!292335 call!292333)))

(declare-fun b!4194100 () Bool)

(declare-fun e!2603508 () Regex!12587)

(assert (=> b!4194100 (= e!2603508 (Concat!20500 call!292333 (regex!7682 r!4142)))))

(declare-fun b!4194101 () Bool)

(declare-fun e!2603507 () Regex!12587)

(declare-fun call!292334 () Regex!12587)

(declare-fun call!292336 () Regex!12587)

(assert (=> b!4194101 (= e!2603507 (Union!12587 call!292334 call!292336))))

(declare-fun bm!292329 () Bool)

(assert (=> bm!292329 (= call!292333 call!292336)))

(declare-fun b!4194102 () Bool)

(declare-fun c!715502 () Bool)

(assert (=> b!4194102 (= c!715502 ((_ is Union!12587) (regex!7682 r!4142)))))

(declare-fun e!2603505 () Regex!12587)

(assert (=> b!4194102 (= e!2603505 e!2603507)))

(declare-fun b!4194103 () Bool)

(declare-fun c!715505 () Bool)

(assert (=> b!4194103 (= c!715505 (nullable!4423 (regOne!25686 (regex!7682 r!4142))))))

(assert (=> b!4194103 (= e!2603508 e!2603509)))

(declare-fun d!1237006 () Bool)

(declare-fun lt!1494007 () Regex!12587)

(assert (=> d!1237006 (validRegex!5704 lt!1494007)))

(declare-fun e!2603506 () Regex!12587)

(assert (=> d!1237006 (= lt!1494007 e!2603506)))

(declare-fun c!715506 () Bool)

(assert (=> d!1237006 (= c!715506 (or ((_ is EmptyExpr!12587) (regex!7682 r!4142)) ((_ is EmptyLang!12587) (regex!7682 r!4142))))))

(assert (=> d!1237006 (validRegex!5704 (regex!7682 r!4142))))

(assert (=> d!1237006 (= (derivativeStep!3813 (regex!7682 r!4142) (head!8900 p!2959)) lt!1494007)))

(declare-fun b!4194104 () Bool)

(assert (=> b!4194104 (= e!2603507 e!2603508)))

(declare-fun c!715504 () Bool)

(assert (=> b!4194104 (= c!715504 ((_ is Star!12587) (regex!7682 r!4142)))))

(declare-fun b!4194105 () Bool)

(assert (=> b!4194105 (= e!2603509 (Union!12587 (Concat!20500 call!292334 (regTwo!25686 (regex!7682 r!4142))) call!292335))))

(declare-fun b!4194106 () Bool)

(assert (=> b!4194106 (= e!2603506 EmptyLang!12587)))

(declare-fun b!4194107 () Bool)

(assert (=> b!4194107 (= e!2603505 (ite (= (head!8900 p!2959) (c!715317 (regex!7682 r!4142))) EmptyExpr!12587 EmptyLang!12587))))

(declare-fun bm!292330 () Bool)

(assert (=> bm!292330 (= call!292334 (derivativeStep!3813 (ite c!715502 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))) (head!8900 p!2959)))))

(declare-fun bm!292331 () Bool)

(assert (=> bm!292331 (= call!292336 (derivativeStep!3813 (ite c!715502 (regTwo!25687 (regex!7682 r!4142)) (ite c!715504 (reg!12916 (regex!7682 r!4142)) (ite c!715505 (regTwo!25686 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))) (head!8900 p!2959)))))

(declare-fun b!4194108 () Bool)

(assert (=> b!4194108 (= e!2603506 e!2603505)))

(declare-fun c!715503 () Bool)

(assert (=> b!4194108 (= c!715503 ((_ is ElementMatch!12587) (regex!7682 r!4142)))))

(assert (= (and d!1237006 c!715506) b!4194106))

(assert (= (and d!1237006 (not c!715506)) b!4194108))

(assert (= (and b!4194108 c!715503) b!4194107))

(assert (= (and b!4194108 (not c!715503)) b!4194102))

(assert (= (and b!4194102 c!715502) b!4194101))

(assert (= (and b!4194102 (not c!715502)) b!4194104))

(assert (= (and b!4194104 c!715504) b!4194100))

(assert (= (and b!4194104 (not c!715504)) b!4194103))

(assert (= (and b!4194103 c!715505) b!4194105))

(assert (= (and b!4194103 (not c!715505)) b!4194099))

(assert (= (or b!4194105 b!4194099) bm!292328))

(assert (= (or b!4194100 bm!292328) bm!292329))

(assert (= (or b!4194101 bm!292329) bm!292331))

(assert (= (or b!4194101 b!4194105) bm!292330))

(declare-fun m!4783009 () Bool)

(assert (=> b!4194103 m!4783009))

(declare-fun m!4783011 () Bool)

(assert (=> d!1237006 m!4783011))

(assert (=> d!1237006 m!4781783))

(assert (=> bm!292330 m!4782029))

(declare-fun m!4783013 () Bool)

(assert (=> bm!292330 m!4783013))

(assert (=> bm!292331 m!4782029))

(declare-fun m!4783015 () Bool)

(assert (=> bm!292331 m!4783015))

(assert (=> b!4193666 d!1237006))

(assert (=> b!4193666 d!1236934))

(assert (=> b!4193666 d!1236860))

(declare-fun b!4194115 () Bool)

(declare-fun e!2603520 () Bool)

(declare-fun e!2603521 () Bool)

(assert (=> b!4194115 (= e!2603520 e!2603521)))

(declare-fun c!715508 () Bool)

(assert (=> b!4194115 (= c!715508 ((_ is Union!12587) (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))))))

(declare-fun b!4194116 () Bool)

(declare-fun e!2603515 () Bool)

(declare-fun e!2603517 () Bool)

(assert (=> b!4194116 (= e!2603515 e!2603517)))

(declare-fun res!1721657 () Bool)

(assert (=> b!4194116 (=> (not res!1721657) (not e!2603517))))

(declare-fun call!292338 () Bool)

(assert (=> b!4194116 (= res!1721657 call!292338)))

(declare-fun d!1237038 () Bool)

(declare-fun res!1721656 () Bool)

(declare-fun e!2603518 () Bool)

(assert (=> d!1237038 (=> res!1721656 e!2603518)))

(assert (=> d!1237038 (= res!1721656 ((_ is ElementMatch!12587) (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))))))

(assert (=> d!1237038 (= (validRegex!5704 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))) e!2603518)))

(declare-fun b!4194117 () Bool)

(declare-fun e!2603519 () Bool)

(assert (=> b!4194117 (= e!2603520 e!2603519)))

(declare-fun res!1721658 () Bool)

(assert (=> b!4194117 (= res!1721658 (not (nullable!4423 (reg!12916 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))))))))

(assert (=> b!4194117 (=> (not res!1721658) (not e!2603519))))

(declare-fun bm!292332 () Bool)

(declare-fun call!292337 () Bool)

(declare-fun c!715507 () Bool)

(assert (=> bm!292332 (= call!292337 (validRegex!5704 (ite c!715507 (reg!12916 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))) (ite c!715508 (regOne!25687 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))) (regOne!25686 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142)))))))))))

(declare-fun b!4194118 () Bool)

(declare-fun res!1721659 () Bool)

(assert (=> b!4194118 (=> res!1721659 e!2603515)))

(assert (=> b!4194118 (= res!1721659 (not ((_ is Concat!20500) (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142)))))))))

(assert (=> b!4194118 (= e!2603521 e!2603515)))

(declare-fun b!4194119 () Bool)

(assert (=> b!4194119 (= e!2603519 call!292337)))

(declare-fun b!4194120 () Bool)

(declare-fun call!292339 () Bool)

(assert (=> b!4194120 (= e!2603517 call!292339)))

(declare-fun bm!292333 () Bool)

(assert (=> bm!292333 (= call!292338 call!292337)))

(declare-fun b!4194121 () Bool)

(declare-fun res!1721660 () Bool)

(declare-fun e!2603516 () Bool)

(assert (=> b!4194121 (=> (not res!1721660) (not e!2603516))))

(assert (=> b!4194121 (= res!1721660 call!292338)))

(assert (=> b!4194121 (= e!2603521 e!2603516)))

(declare-fun b!4194122 () Bool)

(assert (=> b!4194122 (= e!2603516 call!292339)))

(declare-fun b!4194123 () Bool)

(assert (=> b!4194123 (= e!2603518 e!2603520)))

(assert (=> b!4194123 (= c!715507 ((_ is Star!12587) (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))))))

(declare-fun bm!292334 () Bool)

(assert (=> bm!292334 (= call!292339 (validRegex!5704 (ite c!715508 (regTwo!25687 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))) (regTwo!25686 (ite c!715338 (reg!12916 (regex!7682 r!4142)) (ite c!715339 (regOne!25687 (regex!7682 r!4142)) (regOne!25686 (regex!7682 r!4142))))))))))

(assert (= (and d!1237038 (not res!1721656)) b!4194123))

(assert (= (and b!4194123 c!715507) b!4194117))

(assert (= (and b!4194123 (not c!715507)) b!4194115))

(assert (= (and b!4194117 res!1721658) b!4194119))

(assert (= (and b!4194115 c!715508) b!4194121))

(assert (= (and b!4194115 (not c!715508)) b!4194118))

(assert (= (and b!4194121 res!1721660) b!4194122))

(assert (= (and b!4194118 (not res!1721659)) b!4194116))

(assert (= (and b!4194116 res!1721657) b!4194120))

(assert (= (or b!4194122 b!4194120) bm!292334))

(assert (= (or b!4194121 b!4194116) bm!292333))

(assert (= (or b!4194119 bm!292333) bm!292332))

(declare-fun m!4783035 () Bool)

(assert (=> b!4194117 m!4783035))

(declare-fun m!4783037 () Bool)

(assert (=> bm!292332 m!4783037))

(declare-fun m!4783039 () Bool)

(assert (=> bm!292334 m!4783039))

(assert (=> bm!292246 d!1237038))

(declare-fun b!4194141 () Bool)

(declare-fun e!2603537 () Bool)

(declare-fun e!2603534 () Bool)

(assert (=> b!4194141 (= e!2603537 e!2603534)))

(declare-fun res!1721675 () Bool)

(assert (=> b!4194141 (=> res!1721675 e!2603534)))

(declare-fun call!292341 () Bool)

(assert (=> b!4194141 (= res!1721675 call!292341)))

(declare-fun b!4194142 () Bool)

(declare-fun res!1721673 () Bool)

(declare-fun e!2603531 () Bool)

(assert (=> b!4194142 (=> res!1721673 e!2603531)))

(assert (=> b!4194142 (= res!1721673 (not ((_ is ElementMatch!12587) (regex!7682 r!4142))))))

(declare-fun e!2603532 () Bool)

(assert (=> b!4194142 (= e!2603532 e!2603531)))

(declare-fun b!4194143 () Bool)

(declare-fun res!1721672 () Bool)

(declare-fun e!2603535 () Bool)

(assert (=> b!4194143 (=> (not res!1721672) (not e!2603535))))

(assert (=> b!4194143 (= res!1721672 (not call!292341))))

(declare-fun b!4194144 () Bool)

(assert (=> b!4194144 (= e!2603534 (not (= (head!8900 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) (c!715317 (regex!7682 r!4142)))))))

(declare-fun b!4194145 () Bool)

(declare-fun e!2603533 () Bool)

(assert (=> b!4194145 (= e!2603533 (nullable!4423 (regex!7682 r!4142)))))

(declare-fun b!4194146 () Bool)

(assert (=> b!4194146 (= e!2603531 e!2603537)))

(declare-fun res!1721670 () Bool)

(assert (=> b!4194146 (=> (not res!1721670) (not e!2603537))))

(declare-fun lt!1494011 () Bool)

(assert (=> b!4194146 (= res!1721670 (not lt!1494011))))

(declare-fun b!4194147 () Bool)

(assert (=> b!4194147 (= e!2603535 (= (head!8900 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) (c!715317 (regex!7682 r!4142))))))

(declare-fun b!4194148 () Bool)

(assert (=> b!4194148 (= e!2603533 (matchR!6326 (derivativeStep!3813 (regex!7682 r!4142) (head!8900 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342))))) (tail!6747 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342))))))))

(declare-fun b!4194149 () Bool)

(declare-fun res!1721676 () Bool)

(assert (=> b!4194149 (=> res!1721676 e!2603534)))

(assert (=> b!4194149 (= res!1721676 (not (isEmpty!27276 (tail!6747 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))))

(declare-fun d!1237050 () Bool)

(declare-fun e!2603536 () Bool)

(assert (=> d!1237050 e!2603536))

(declare-fun c!715514 () Bool)

(assert (=> d!1237050 (= c!715514 ((_ is EmptyExpr!12587) (regex!7682 r!4142)))))

(assert (=> d!1237050 (= lt!1494011 e!2603533)))

(declare-fun c!715515 () Bool)

(assert (=> d!1237050 (= c!715515 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(assert (=> d!1237050 (validRegex!5704 (regex!7682 r!4142))))

(assert (=> d!1237050 (= (matchR!6326 (regex!7682 r!4142) (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) lt!1494011)))

(declare-fun b!4194150 () Bool)

(assert (=> b!4194150 (= e!2603532 (not lt!1494011))))

(declare-fun b!4194151 () Bool)

(assert (=> b!4194151 (= e!2603536 e!2603532)))

(declare-fun c!715513 () Bool)

(assert (=> b!4194151 (= c!715513 ((_ is EmptyLang!12587) (regex!7682 r!4142)))))

(declare-fun b!4194152 () Bool)

(declare-fun res!1721671 () Bool)

(assert (=> b!4194152 (=> (not res!1721671) (not e!2603535))))

(assert (=> b!4194152 (= res!1721671 (isEmpty!27276 (tail!6747 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342))))))))

(declare-fun bm!292336 () Bool)

(assert (=> bm!292336 (= call!292341 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun b!4194153 () Bool)

(assert (=> b!4194153 (= e!2603536 (= lt!1494011 call!292341))))

(declare-fun b!4194154 () Bool)

(declare-fun res!1721674 () Bool)

(assert (=> b!4194154 (=> res!1721674 e!2603531)))

(assert (=> b!4194154 (= res!1721674 e!2603535)))

(declare-fun res!1721677 () Bool)

(assert (=> b!4194154 (=> (not res!1721677) (not e!2603535))))

(assert (=> b!4194154 (= res!1721677 lt!1494011)))

(assert (= (and d!1237050 c!715515) b!4194145))

(assert (= (and d!1237050 (not c!715515)) b!4194148))

(assert (= (and d!1237050 c!715514) b!4194153))

(assert (= (and d!1237050 (not c!715514)) b!4194151))

(assert (= (and b!4194151 c!715513) b!4194150))

(assert (= (and b!4194151 (not c!715513)) b!4194142))

(assert (= (and b!4194142 (not res!1721673)) b!4194154))

(assert (= (and b!4194154 res!1721677) b!4194143))

(assert (= (and b!4194143 res!1721672) b!4194152))

(assert (= (and b!4194152 res!1721671) b!4194147))

(assert (= (and b!4194154 (not res!1721674)) b!4194146))

(assert (= (and b!4194146 res!1721670) b!4194141))

(assert (= (and b!4194141 (not res!1721675)) b!4194149))

(assert (= (and b!4194149 (not res!1721676)) b!4194144))

(assert (= (or b!4194153 b!4194141 b!4194143) bm!292336))

(declare-fun m!4783047 () Bool)

(assert (=> b!4194152 m!4783047))

(assert (=> b!4194152 m!4783047))

(declare-fun m!4783051 () Bool)

(assert (=> b!4194152 m!4783051))

(declare-fun m!4783055 () Bool)

(assert (=> b!4194144 m!4783055))

(assert (=> b!4194147 m!4783055))

(assert (=> b!4194145 m!4781975))

(assert (=> bm!292336 m!4782311))

(assert (=> b!4194149 m!4783047))

(assert (=> b!4194149 m!4783047))

(assert (=> b!4194149 m!4783051))

(assert (=> d!1237050 m!4782311))

(assert (=> d!1237050 m!4781783))

(assert (=> b!4194148 m!4783055))

(assert (=> b!4194148 m!4783055))

(declare-fun m!4783059 () Bool)

(assert (=> b!4194148 m!4783059))

(assert (=> b!4194148 m!4783047))

(assert (=> b!4194148 m!4783059))

(assert (=> b!4194148 m!4783047))

(declare-fun m!4783063 () Bool)

(assert (=> b!4194148 m!4783063))

(assert (=> b!4193616 d!1237050))

(declare-fun b!4194155 () Bool)

(declare-fun e!2603542 () tuple2!43858)

(assert (=> b!4194155 (= e!2603542 (tuple2!43859 Nil!46062 Nil!46062))))

(declare-fun b!4194156 () Bool)

(declare-fun e!2603541 () tuple2!43858)

(declare-fun e!2603545 () tuple2!43858)

(assert (=> b!4194156 (= e!2603541 e!2603545)))

(declare-fun lt!1494028 () tuple2!43858)

(declare-fun call!292349 () tuple2!43858)

(assert (=> b!4194156 (= lt!1494028 call!292349)))

(declare-fun c!715519 () Bool)

(assert (=> b!4194156 (= c!715519 (isEmpty!27276 (_1!25063 lt!1494028)))))

(declare-fun bm!292337 () Bool)

(declare-fun call!292348 () Bool)

(assert (=> bm!292337 (= call!292348 (nullable!4423 (regex!7682 r!4142)))))

(declare-fun d!1237052 () Bool)

(declare-fun e!2603543 () Bool)

(assert (=> d!1237052 e!2603543))

(declare-fun res!1721679 () Bool)

(assert (=> d!1237052 (=> (not res!1721679) (not e!2603543))))

(declare-fun lt!1494037 () tuple2!43858)

(assert (=> d!1237052 (= res!1721679 (= (++!11754 (_1!25063 lt!1494037) (_2!25063 lt!1494037)) input!3342))))

(declare-fun e!2603538 () tuple2!43858)

(assert (=> d!1237052 (= lt!1494037 e!2603538)))

(declare-fun c!715517 () Bool)

(assert (=> d!1237052 (= c!715517 (lostCause!1049 (regex!7682 r!4142)))))

(declare-fun lt!1494022 () Unit!65139)

(declare-fun Unit!65149 () Unit!65139)

(assert (=> d!1237052 (= lt!1494022 Unit!65149)))

(assert (=> d!1237052 (= (getSuffix!2832 input!3342 Nil!46062) input!3342)))

(declare-fun lt!1494038 () Unit!65139)

(declare-fun lt!1494023 () Unit!65139)

(assert (=> d!1237052 (= lt!1494038 lt!1494023)))

(declare-fun lt!1494021 () List!46186)

(assert (=> d!1237052 (= input!3342 lt!1494021)))

(assert (=> d!1237052 (= lt!1494023 (lemmaSamePrefixThenSameSuffix!2266 Nil!46062 input!3342 Nil!46062 lt!1494021 input!3342))))

(assert (=> d!1237052 (= lt!1494021 (getSuffix!2832 input!3342 Nil!46062))))

(declare-fun lt!1494025 () Unit!65139)

(declare-fun lt!1494017 () Unit!65139)

(assert (=> d!1237052 (= lt!1494025 lt!1494017)))

(assert (=> d!1237052 (isPrefix!4539 Nil!46062 (++!11754 Nil!46062 input!3342))))

(assert (=> d!1237052 (= lt!1494017 (lemmaConcatTwoListThenFirstIsPrefix!3036 Nil!46062 input!3342))))

(assert (=> d!1237052 (validRegex!5704 (regex!7682 r!4142))))

(assert (=> d!1237052 (= (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)) lt!1494037)))

(declare-fun b!4194157 () Bool)

(assert (=> b!4194157 (= e!2603542 (tuple2!43859 Nil!46062 input!3342))))

(declare-fun bm!292338 () Bool)

(declare-fun call!292342 () Unit!65139)

(assert (=> bm!292338 (= call!292342 (lemmaIsPrefixRefl!2968 input!3342 input!3342))))

(declare-fun b!4194158 () Bool)

(declare-fun c!715520 () Bool)

(assert (=> b!4194158 (= c!715520 call!292348)))

(declare-fun lt!1494019 () Unit!65139)

(declare-fun lt!1494024 () Unit!65139)

(assert (=> b!4194158 (= lt!1494019 lt!1494024)))

(declare-fun lt!1494026 () C!25364)

(declare-fun lt!1494040 () List!46186)

(assert (=> b!4194158 (= (++!11754 (++!11754 Nil!46062 (Cons!46062 lt!1494026 Nil!46062)) lt!1494040) input!3342)))

(assert (=> b!4194158 (= lt!1494024 (lemmaMoveElementToOtherListKeepsConcatEq!1293 Nil!46062 lt!1494026 lt!1494040 input!3342))))

(assert (=> b!4194158 (= lt!1494040 (tail!6747 input!3342))))

(assert (=> b!4194158 (= lt!1494026 (head!8900 input!3342))))

(declare-fun lt!1494012 () Unit!65139)

(declare-fun lt!1494018 () Unit!65139)

(assert (=> b!4194158 (= lt!1494012 lt!1494018)))

(assert (=> b!4194158 (isPrefix!4539 (++!11754 Nil!46062 (Cons!46062 (head!8900 (getSuffix!2832 input!3342 Nil!46062)) Nil!46062)) input!3342)))

(assert (=> b!4194158 (= lt!1494018 (lemmaAddHeadSuffixToPrefixStillPrefix!675 Nil!46062 input!3342))))

(declare-fun lt!1494014 () Unit!65139)

(declare-fun lt!1494027 () Unit!65139)

(assert (=> b!4194158 (= lt!1494014 lt!1494027)))

(assert (=> b!4194158 (= lt!1494027 (lemmaAddHeadSuffixToPrefixStillPrefix!675 Nil!46062 input!3342))))

(declare-fun lt!1494031 () List!46186)

(assert (=> b!4194158 (= lt!1494031 (++!11754 Nil!46062 (Cons!46062 (head!8900 input!3342) Nil!46062)))))

(declare-fun lt!1494029 () Unit!65139)

(declare-fun e!2603540 () Unit!65139)

(assert (=> b!4194158 (= lt!1494029 e!2603540)))

(declare-fun c!715521 () Bool)

(assert (=> b!4194158 (= c!715521 (= (size!33850 Nil!46062) (size!33850 input!3342)))))

(declare-fun lt!1494039 () Unit!65139)

(declare-fun lt!1494016 () Unit!65139)

(assert (=> b!4194158 (= lt!1494039 lt!1494016)))

(assert (=> b!4194158 (<= (size!33850 Nil!46062) (size!33850 input!3342))))

(assert (=> b!4194158 (= lt!1494016 (lemmaIsPrefixThenSmallerEqSize!569 Nil!46062 input!3342))))

(declare-fun e!2603544 () tuple2!43858)

(assert (=> b!4194158 (= e!2603544 e!2603541)))

(declare-fun b!4194159 () Bool)

(declare-fun e!2603539 () Bool)

(assert (=> b!4194159 (= e!2603543 e!2603539)))

(declare-fun res!1721678 () Bool)

(assert (=> b!4194159 (=> res!1721678 e!2603539)))

(assert (=> b!4194159 (= res!1721678 (isEmpty!27276 (_1!25063 lt!1494037)))))

(declare-fun b!4194160 () Bool)

(declare-fun Unit!65150 () Unit!65139)

(assert (=> b!4194160 (= e!2603540 Unit!65150)))

(declare-fun b!4194161 () Bool)

(assert (=> b!4194161 (= e!2603545 lt!1494028)))

(declare-fun bm!292339 () Bool)

(declare-fun call!292344 () C!25364)

(assert (=> bm!292339 (= call!292344 (head!8900 input!3342))))

(declare-fun call!292343 () List!46186)

(declare-fun bm!292340 () Bool)

(declare-fun call!292347 () Regex!12587)

(assert (=> bm!292340 (= call!292349 (findLongestMatchInner!1613 call!292347 lt!1494031 (+ (size!33850 Nil!46062) 1) call!292343 input!3342 (size!33850 input!3342)))))

(declare-fun b!4194162 () Bool)

(declare-fun Unit!65151 () Unit!65139)

(assert (=> b!4194162 (= e!2603540 Unit!65151)))

(declare-fun lt!1494035 () Unit!65139)

(assert (=> b!4194162 (= lt!1494035 call!292342)))

(declare-fun call!292345 () Bool)

(assert (=> b!4194162 call!292345))

(declare-fun lt!1494020 () Unit!65139)

(assert (=> b!4194162 (= lt!1494020 lt!1494035)))

(declare-fun lt!1494032 () Unit!65139)

(declare-fun call!292346 () Unit!65139)

(assert (=> b!4194162 (= lt!1494032 call!292346)))

(assert (=> b!4194162 (= input!3342 Nil!46062)))

(declare-fun lt!1494030 () Unit!65139)

(assert (=> b!4194162 (= lt!1494030 lt!1494032)))

(assert (=> b!4194162 false))

(declare-fun b!4194163 () Bool)

(assert (=> b!4194163 (= e!2603539 (>= (size!33850 (_1!25063 lt!1494037)) (size!33850 Nil!46062)))))

(declare-fun bm!292341 () Bool)

(assert (=> bm!292341 (= call!292343 (tail!6747 input!3342))))

(declare-fun bm!292342 () Bool)

(assert (=> bm!292342 (= call!292347 (derivativeStep!3813 (regex!7682 r!4142) call!292344))))

(declare-fun bm!292343 () Bool)

(assert (=> bm!292343 (= call!292345 (isPrefix!4539 input!3342 input!3342))))

(declare-fun b!4194164 () Bool)

(assert (=> b!4194164 (= e!2603538 e!2603544)))

(declare-fun c!715518 () Bool)

(assert (=> b!4194164 (= c!715518 (= (size!33850 Nil!46062) (size!33850 input!3342)))))

(declare-fun b!4194165 () Bool)

(declare-fun c!715516 () Bool)

(assert (=> b!4194165 (= c!715516 call!292348)))

(declare-fun lt!1494033 () Unit!65139)

(declare-fun lt!1494036 () Unit!65139)

(assert (=> b!4194165 (= lt!1494033 lt!1494036)))

(assert (=> b!4194165 (= input!3342 Nil!46062)))

(assert (=> b!4194165 (= lt!1494036 call!292346)))

(declare-fun lt!1494015 () Unit!65139)

(declare-fun lt!1494034 () Unit!65139)

(assert (=> b!4194165 (= lt!1494015 lt!1494034)))

(assert (=> b!4194165 call!292345))

(assert (=> b!4194165 (= lt!1494034 call!292342)))

(assert (=> b!4194165 (= e!2603544 e!2603542)))

(declare-fun b!4194166 () Bool)

(assert (=> b!4194166 (= e!2603545 (tuple2!43859 Nil!46062 input!3342))))

(declare-fun bm!292344 () Bool)

(assert (=> bm!292344 (= call!292346 (lemmaIsPrefixSameLengthThenSameList!1003 input!3342 Nil!46062 input!3342))))

(declare-fun b!4194167 () Bool)

(assert (=> b!4194167 (= e!2603541 call!292349)))

(declare-fun b!4194168 () Bool)

(assert (=> b!4194168 (= e!2603538 (tuple2!43859 Nil!46062 input!3342))))

(assert (= (and d!1237052 c!715517) b!4194168))

(assert (= (and d!1237052 (not c!715517)) b!4194164))

(assert (= (and b!4194164 c!715518) b!4194165))

(assert (= (and b!4194164 (not c!715518)) b!4194158))

(assert (= (and b!4194165 c!715516) b!4194155))

(assert (= (and b!4194165 (not c!715516)) b!4194157))

(assert (= (and b!4194158 c!715521) b!4194162))

(assert (= (and b!4194158 (not c!715521)) b!4194160))

(assert (= (and b!4194158 c!715520) b!4194156))

(assert (= (and b!4194158 (not c!715520)) b!4194167))

(assert (= (and b!4194156 c!715519) b!4194166))

(assert (= (and b!4194156 (not c!715519)) b!4194161))

(assert (= (or b!4194156 b!4194167) bm!292341))

(assert (= (or b!4194156 b!4194167) bm!292339))

(assert (= (or b!4194156 b!4194167) bm!292342))

(assert (= (or b!4194156 b!4194167) bm!292340))

(assert (= (or b!4194165 b!4194162) bm!292338))

(assert (= (or b!4194165 b!4194158) bm!292337))

(assert (= (or b!4194165 b!4194162) bm!292344))

(assert (= (or b!4194165 b!4194162) bm!292343))

(assert (= (and d!1237052 res!1721679) b!4194159))

(assert (= (and b!4194159 (not res!1721678)) b!4194163))

(assert (=> bm!292341 m!4782025))

(assert (=> b!4194158 m!4782467))

(assert (=> b!4194158 m!4782469))

(declare-fun m!4783079 () Bool)

(assert (=> b!4194158 m!4783079))

(declare-fun m!4783081 () Bool)

(assert (=> b!4194158 m!4783081))

(assert (=> b!4194158 m!4782475))

(assert (=> b!4194158 m!4782031))

(assert (=> b!4194158 m!4783079))

(assert (=> b!4194158 m!4782477))

(assert (=> b!4194158 m!4782479))

(assert (=> b!4194158 m!4782481))

(assert (=> b!4194158 m!4782479))

(assert (=> b!4194158 m!4782039))

(assert (=> b!4194158 m!4781803))

(declare-fun m!4783083 () Bool)

(assert (=> b!4194158 m!4783083))

(assert (=> b!4194158 m!4782025))

(assert (=> b!4194158 m!4782467))

(assert (=> b!4194158 m!4782485))

(declare-fun m!4783085 () Bool)

(assert (=> d!1237052 m!4783085))

(assert (=> d!1237052 m!4782489))

(declare-fun m!4783087 () Bool)

(assert (=> d!1237052 m!4783087))

(assert (=> d!1237052 m!4781783))

(declare-fun m!4783089 () Bool)

(assert (=> d!1237052 m!4783089))

(assert (=> d!1237052 m!4782489))

(assert (=> d!1237052 m!4782495))

(assert (=> d!1237052 m!4782467))

(assert (=> d!1237052 m!4782497))

(declare-fun m!4783091 () Bool)

(assert (=> b!4194159 m!4783091))

(declare-fun m!4783093 () Bool)

(assert (=> bm!292342 m!4783093))

(declare-fun m!4783095 () Bool)

(assert (=> b!4194156 m!4783095))

(assert (=> bm!292337 m!4781975))

(assert (=> bm!292339 m!4782031))

(assert (=> bm!292343 m!4781817))

(assert (=> bm!292344 m!4782505))

(assert (=> bm!292338 m!4781821))

(assert (=> bm!292340 m!4781803))

(declare-fun m!4783097 () Bool)

(assert (=> bm!292340 m!4783097))

(declare-fun m!4783099 () Bool)

(assert (=> b!4194163 m!4783099))

(assert (=> b!4194163 m!4782039))

(assert (=> b!4193616 d!1237052))

(assert (=> b!4193616 d!1236788))

(assert (=> b!4193616 d!1236646))

(declare-fun d!1237062 () Bool)

(assert (=> d!1237062 (= (isDefined!7354 lt!1493571) (not (isEmpty!27275 lt!1493571)))))

(declare-fun bs!596740 () Bool)

(assert (= bs!596740 d!1237062))

(assert (=> bs!596740 m!4781879))

(assert (=> b!4193211 d!1237062))

(declare-fun d!1237064 () Bool)

(declare-fun lt!1494044 () Int)

(assert (=> d!1237064 (>= lt!1494044 0)))

(declare-fun e!2603550 () Int)

(assert (=> d!1237064 (= lt!1494044 e!2603550)))

(declare-fun c!715524 () Bool)

(assert (=> d!1237064 (= c!715524 ((_ is Nil!46062) (t!346117 p!2959)))))

(assert (=> d!1237064 (= (size!33850 (t!346117 p!2959)) lt!1494044)))

(declare-fun b!4194174 () Bool)

(assert (=> b!4194174 (= e!2603550 0)))

(declare-fun b!4194175 () Bool)

(assert (=> b!4194175 (= e!2603550 (+ 1 (size!33850 (t!346117 (t!346117 p!2959)))))))

(assert (= (and d!1237064 c!715524) b!4194174))

(assert (= (and d!1237064 (not c!715524)) b!4194175))

(declare-fun m!4783101 () Bool)

(assert (=> b!4194175 m!4783101))

(assert (=> b!4193621 d!1237064))

(declare-fun b!4194176 () Bool)

(declare-fun e!2603556 () Bool)

(declare-fun e!2603557 () Bool)

(assert (=> b!4194176 (= e!2603556 e!2603557)))

(declare-fun c!715526 () Bool)

(assert (=> b!4194176 (= c!715526 ((_ is Union!12587) (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))))))

(declare-fun b!4194177 () Bool)

(declare-fun e!2603551 () Bool)

(declare-fun e!2603553 () Bool)

(assert (=> b!4194177 (= e!2603551 e!2603553)))

(declare-fun res!1721683 () Bool)

(assert (=> b!4194177 (=> (not res!1721683) (not e!2603553))))

(declare-fun call!292351 () Bool)

(assert (=> b!4194177 (= res!1721683 call!292351)))

(declare-fun d!1237066 () Bool)

(declare-fun res!1721682 () Bool)

(declare-fun e!2603554 () Bool)

(assert (=> d!1237066 (=> res!1721682 e!2603554)))

(assert (=> d!1237066 (= res!1721682 ((_ is ElementMatch!12587) (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))))))

(assert (=> d!1237066 (= (validRegex!5704 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))) e!2603554)))

(declare-fun b!4194178 () Bool)

(declare-fun e!2603555 () Bool)

(assert (=> b!4194178 (= e!2603556 e!2603555)))

(declare-fun res!1721684 () Bool)

(assert (=> b!4194178 (= res!1721684 (not (nullable!4423 (reg!12916 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))))))))

(assert (=> b!4194178 (=> (not res!1721684) (not e!2603555))))

(declare-fun c!715525 () Bool)

(declare-fun call!292350 () Bool)

(declare-fun bm!292345 () Bool)

(assert (=> bm!292345 (= call!292350 (validRegex!5704 (ite c!715525 (reg!12916 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))) (ite c!715526 (regOne!25687 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))) (regOne!25686 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142))))))))))

(declare-fun b!4194179 () Bool)

(declare-fun res!1721685 () Bool)

(assert (=> b!4194179 (=> res!1721685 e!2603551)))

(assert (=> b!4194179 (= res!1721685 (not ((_ is Concat!20500) (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142))))))))

(assert (=> b!4194179 (= e!2603557 e!2603551)))

(declare-fun b!4194180 () Bool)

(assert (=> b!4194180 (= e!2603555 call!292350)))

(declare-fun b!4194181 () Bool)

(declare-fun call!292352 () Bool)

(assert (=> b!4194181 (= e!2603553 call!292352)))

(declare-fun bm!292346 () Bool)

(assert (=> bm!292346 (= call!292351 call!292350)))

(declare-fun b!4194182 () Bool)

(declare-fun res!1721686 () Bool)

(declare-fun e!2603552 () Bool)

(assert (=> b!4194182 (=> (not res!1721686) (not e!2603552))))

(assert (=> b!4194182 (= res!1721686 call!292351)))

(assert (=> b!4194182 (= e!2603557 e!2603552)))

(declare-fun b!4194183 () Bool)

(assert (=> b!4194183 (= e!2603552 call!292352)))

(declare-fun b!4194184 () Bool)

(assert (=> b!4194184 (= e!2603554 e!2603556)))

(assert (=> b!4194184 (= c!715525 ((_ is Star!12587) (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))))))

(declare-fun bm!292347 () Bool)

(assert (=> bm!292347 (= call!292352 (validRegex!5704 (ite c!715526 (regTwo!25687 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))) (regTwo!25686 (ite c!715339 (regTwo!25687 (regex!7682 r!4142)) (regTwo!25686 (regex!7682 r!4142)))))))))

(assert (= (and d!1237066 (not res!1721682)) b!4194184))

(assert (= (and b!4194184 c!715525) b!4194178))

(assert (= (and b!4194184 (not c!715525)) b!4194176))

(assert (= (and b!4194178 res!1721684) b!4194180))

(assert (= (and b!4194176 c!715526) b!4194182))

(assert (= (and b!4194176 (not c!715526)) b!4194179))

(assert (= (and b!4194182 res!1721686) b!4194183))

(assert (= (and b!4194179 (not res!1721685)) b!4194177))

(assert (= (and b!4194177 res!1721683) b!4194181))

(assert (= (or b!4194183 b!4194181) bm!292347))

(assert (= (or b!4194182 b!4194177) bm!292346))

(assert (= (or b!4194180 bm!292346) bm!292345))

(declare-fun m!4783109 () Bool)

(assert (=> b!4194178 m!4783109))

(declare-fun m!4783111 () Bool)

(assert (=> bm!292345 m!4783111))

(declare-fun m!4783113 () Bool)

(assert (=> bm!292347 m!4783113))

(assert (=> bm!292248 d!1237066))

(assert (=> b!4193670 d!1236858))

(assert (=> b!4193670 d!1236860))

(declare-fun d!1237070 () Bool)

(declare-fun lt!1494047 () Bool)

(assert (=> d!1237070 (= lt!1494047 (select (content!7182 (t!346118 rules!3843)) rBis!167))))

(declare-fun e!2603563 () Bool)

(assert (=> d!1237070 (= lt!1494047 e!2603563)))

(declare-fun res!1721693 () Bool)

(assert (=> d!1237070 (=> (not res!1721693) (not e!2603563))))

(assert (=> d!1237070 (= res!1721693 ((_ is Cons!46063) (t!346118 rules!3843)))))

(assert (=> d!1237070 (= (contains!9491 (t!346118 rules!3843) rBis!167) lt!1494047)))

(declare-fun b!4194190 () Bool)

(declare-fun e!2603562 () Bool)

(assert (=> b!4194190 (= e!2603563 e!2603562)))

(declare-fun res!1721692 () Bool)

(assert (=> b!4194190 (=> res!1721692 e!2603562)))

(assert (=> b!4194190 (= res!1721692 (= (h!51483 (t!346118 rules!3843)) rBis!167))))

(declare-fun b!4194191 () Bool)

(assert (=> b!4194191 (= e!2603562 (contains!9491 (t!346118 (t!346118 rules!3843)) rBis!167))))

(assert (= (and d!1237070 res!1721693) b!4194190))

(assert (= (and b!4194190 (not res!1721692)) b!4194191))

(assert (=> d!1237070 m!4782451))

(declare-fun m!4783119 () Bool)

(assert (=> d!1237070 m!4783119))

(declare-fun m!4783123 () Bool)

(assert (=> b!4194191 m!4783123))

(assert (=> b!4193674 d!1237070))

(declare-fun d!1237072 () Bool)

(declare-fun e!2603565 () Bool)

(assert (=> d!1237072 e!2603565))

(declare-fun res!1721694 () Bool)

(assert (=> d!1237072 (=> (not res!1721694) (not e!2603565))))

(declare-fun lt!1494048 () List!46186)

(assert (=> d!1237072 (= res!1721694 (= (content!7180 lt!1494048) ((_ map or) (content!7180 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))) (content!7180 (_2!25061 (get!14982 lt!1493571))))))))

(declare-fun e!2603564 () List!46186)

(assert (=> d!1237072 (= lt!1494048 e!2603564)))

(declare-fun c!715527 () Bool)

(assert (=> d!1237072 (= c!715527 ((_ is Nil!46062) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))))))

(assert (=> d!1237072 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))) (_2!25061 (get!14982 lt!1493571))) lt!1494048)))

(declare-fun b!4194192 () Bool)

(assert (=> b!4194192 (= e!2603564 (_2!25061 (get!14982 lt!1493571)))))

(declare-fun b!4194193 () Bool)

(assert (=> b!4194193 (= e!2603564 (Cons!46062 (h!51482 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))) (++!11754 (t!346117 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))) (_2!25061 (get!14982 lt!1493571)))))))

(declare-fun b!4194194 () Bool)

(declare-fun res!1721695 () Bool)

(assert (=> b!4194194 (=> (not res!1721695) (not e!2603565))))

(assert (=> b!4194194 (= res!1721695 (= (size!33850 lt!1494048) (+ (size!33850 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571))))) (size!33850 (_2!25061 (get!14982 lt!1493571))))))))

(declare-fun b!4194195 () Bool)

(assert (=> b!4194195 (= e!2603565 (or (not (= (_2!25061 (get!14982 lt!1493571)) Nil!46062)) (= lt!1494048 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493571)))))))))

(assert (= (and d!1237072 c!715527) b!4194192))

(assert (= (and d!1237072 (not c!715527)) b!4194193))

(assert (= (and d!1237072 res!1721694) b!4194194))

(assert (= (and b!4194194 res!1721695) b!4194195))

(declare-fun m!4783127 () Bool)

(assert (=> d!1237072 m!4783127))

(assert (=> d!1237072 m!4781885))

(declare-fun m!4783129 () Bool)

(assert (=> d!1237072 m!4783129))

(declare-fun m!4783131 () Bool)

(assert (=> d!1237072 m!4783131))

(declare-fun m!4783133 () Bool)

(assert (=> b!4194193 m!4783133))

(declare-fun m!4783135 () Bool)

(assert (=> b!4194194 m!4783135))

(assert (=> b!4194194 m!4781885))

(declare-fun m!4783137 () Bool)

(assert (=> b!4194194 m!4783137))

(assert (=> b!4194194 m!4781893))

(assert (=> b!4193215 d!1237072))

(assert (=> b!4193215 d!1236816))

(assert (=> b!4193215 d!1236818))

(assert (=> b!4193215 d!1236814))

(declare-fun b!4194205 () Bool)

(declare-fun e!2603578 () Bool)

(declare-fun e!2603579 () Bool)

(assert (=> b!4194205 (= e!2603578 e!2603579)))

(declare-fun c!715531 () Bool)

(assert (=> b!4194205 (= c!715531 ((_ is Union!12587) (regex!7682 rBis!167)))))

(declare-fun b!4194206 () Bool)

(declare-fun e!2603573 () Bool)

(declare-fun e!2603575 () Bool)

(assert (=> b!4194206 (= e!2603573 e!2603575)))

(declare-fun res!1721702 () Bool)

(assert (=> b!4194206 (=> (not res!1721702) (not e!2603575))))

(declare-fun call!292357 () Bool)

(assert (=> b!4194206 (= res!1721702 call!292357)))

(declare-fun d!1237078 () Bool)

(declare-fun res!1721701 () Bool)

(declare-fun e!2603576 () Bool)

(assert (=> d!1237078 (=> res!1721701 e!2603576)))

(assert (=> d!1237078 (= res!1721701 ((_ is ElementMatch!12587) (regex!7682 rBis!167)))))

(assert (=> d!1237078 (= (validRegex!5704 (regex!7682 rBis!167)) e!2603576)))

(declare-fun b!4194207 () Bool)

(declare-fun e!2603577 () Bool)

(assert (=> b!4194207 (= e!2603578 e!2603577)))

(declare-fun res!1721703 () Bool)

(assert (=> b!4194207 (= res!1721703 (not (nullable!4423 (reg!12916 (regex!7682 rBis!167)))))))

(assert (=> b!4194207 (=> (not res!1721703) (not e!2603577))))

(declare-fun call!292356 () Bool)

(declare-fun bm!292351 () Bool)

(declare-fun c!715530 () Bool)

(assert (=> bm!292351 (= call!292356 (validRegex!5704 (ite c!715530 (reg!12916 (regex!7682 rBis!167)) (ite c!715531 (regOne!25687 (regex!7682 rBis!167)) (regOne!25686 (regex!7682 rBis!167))))))))

(declare-fun b!4194208 () Bool)

(declare-fun res!1721704 () Bool)

(assert (=> b!4194208 (=> res!1721704 e!2603573)))

(assert (=> b!4194208 (= res!1721704 (not ((_ is Concat!20500) (regex!7682 rBis!167))))))

(assert (=> b!4194208 (= e!2603579 e!2603573)))

(declare-fun b!4194209 () Bool)

(assert (=> b!4194209 (= e!2603577 call!292356)))

(declare-fun b!4194210 () Bool)

(declare-fun call!292358 () Bool)

(assert (=> b!4194210 (= e!2603575 call!292358)))

(declare-fun bm!292352 () Bool)

(assert (=> bm!292352 (= call!292357 call!292356)))

(declare-fun b!4194211 () Bool)

(declare-fun res!1721705 () Bool)

(declare-fun e!2603574 () Bool)

(assert (=> b!4194211 (=> (not res!1721705) (not e!2603574))))

(assert (=> b!4194211 (= res!1721705 call!292357)))

(assert (=> b!4194211 (= e!2603579 e!2603574)))

(declare-fun b!4194212 () Bool)

(assert (=> b!4194212 (= e!2603574 call!292358)))

(declare-fun b!4194213 () Bool)

(assert (=> b!4194213 (= e!2603576 e!2603578)))

(assert (=> b!4194213 (= c!715530 ((_ is Star!12587) (regex!7682 rBis!167)))))

(declare-fun bm!292353 () Bool)

(assert (=> bm!292353 (= call!292358 (validRegex!5704 (ite c!715531 (regTwo!25687 (regex!7682 rBis!167)) (regTwo!25686 (regex!7682 rBis!167)))))))

(assert (= (and d!1237078 (not res!1721701)) b!4194213))

(assert (= (and b!4194213 c!715530) b!4194207))

(assert (= (and b!4194213 (not c!715530)) b!4194205))

(assert (= (and b!4194207 res!1721703) b!4194209))

(assert (= (and b!4194205 c!715531) b!4194211))

(assert (= (and b!4194205 (not c!715531)) b!4194208))

(assert (= (and b!4194211 res!1721705) b!4194212))

(assert (= (and b!4194208 (not res!1721704)) b!4194206))

(assert (= (and b!4194206 res!1721702) b!4194210))

(assert (= (or b!4194212 b!4194210) bm!292353))

(assert (= (or b!4194211 b!4194206) bm!292352))

(assert (= (or b!4194209 bm!292352) bm!292351))

(declare-fun m!4783147 () Bool)

(assert (=> b!4194207 m!4783147))

(declare-fun m!4783149 () Bool)

(assert (=> bm!292351 m!4783149))

(declare-fun m!4783151 () Bool)

(assert (=> bm!292353 m!4783151))

(assert (=> d!1236720 d!1237078))

(declare-fun d!1237084 () Bool)

(assert (=> d!1237084 (= (inv!60609 (tag!8546 (h!51483 (t!346118 rules!3843)))) (= (mod (str.len (value!239468 (tag!8546 (h!51483 (t!346118 rules!3843))))) 2) 0))))

(assert (=> b!4193690 d!1237084))

(declare-fun d!1237086 () Bool)

(declare-fun res!1721711 () Bool)

(declare-fun e!2603587 () Bool)

(assert (=> d!1237086 (=> (not res!1721711) (not e!2603587))))

(assert (=> d!1237086 (= res!1721711 (semiInverseModEq!3332 (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843))))))))

(assert (=> d!1237086 (= (inv!60612 (transformation!7682 (h!51483 (t!346118 rules!3843)))) e!2603587)))

(declare-fun b!4194223 () Bool)

(assert (=> b!4194223 (= e!2603587 (equivClasses!3231 (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843))))))))

(assert (= (and d!1237086 res!1721711) b!4194223))

(declare-fun m!4783157 () Bool)

(assert (=> d!1237086 m!4783157))

(declare-fun m!4783161 () Bool)

(assert (=> b!4194223 m!4783161))

(assert (=> b!4193690 d!1237086))

(declare-fun d!1237088 () Bool)

(assert (=> d!1237088 (= (head!8900 lt!1493553) (h!51482 lt!1493553))))

(assert (=> b!4193321 d!1237088))

(declare-fun d!1237092 () Bool)

(assert (=> d!1237092 (= (head!8900 (++!11754 lt!1493553 (_2!25061 lt!1493544))) (h!51482 (++!11754 lt!1493553 (_2!25061 lt!1493544))))))

(assert (=> b!4193321 d!1237092))

(declare-fun b!4194238 () Bool)

(declare-fun e!2603601 () Bool)

(declare-fun e!2603598 () Bool)

(assert (=> b!4194238 (= e!2603601 e!2603598)))

(declare-fun res!1721725 () Bool)

(assert (=> b!4194238 (=> res!1721725 e!2603598)))

(declare-fun call!292363 () Bool)

(assert (=> b!4194238 (= res!1721725 call!292363)))

(declare-fun b!4194239 () Bool)

(declare-fun res!1721723 () Bool)

(declare-fun e!2603595 () Bool)

(assert (=> b!4194239 (=> res!1721723 e!2603595)))

(assert (=> b!4194239 (= res!1721723 (not ((_ is ElementMatch!12587) (regex!7682 rBis!167))))))

(declare-fun e!2603596 () Bool)

(assert (=> b!4194239 (= e!2603596 e!2603595)))

(declare-fun b!4194240 () Bool)

(declare-fun res!1721722 () Bool)

(declare-fun e!2603599 () Bool)

(assert (=> b!4194240 (=> (not res!1721722) (not e!2603599))))

(assert (=> b!4194240 (= res!1721722 (not call!292363))))

(declare-fun b!4194241 () Bool)

(assert (=> b!4194241 (= e!2603598 (not (= (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))) (c!715317 (regex!7682 rBis!167)))))))

(declare-fun b!4194242 () Bool)

(declare-fun e!2603597 () Bool)

(assert (=> b!4194242 (= e!2603597 (nullable!4423 (regex!7682 rBis!167)))))

(declare-fun b!4194243 () Bool)

(assert (=> b!4194243 (= e!2603595 e!2603601)))

(declare-fun res!1721720 () Bool)

(assert (=> b!4194243 (=> (not res!1721720) (not e!2603601))))

(declare-fun lt!1494050 () Bool)

(assert (=> b!4194243 (= res!1721720 (not lt!1494050))))

(declare-fun b!4194244 () Bool)

(assert (=> b!4194244 (= e!2603599 (= (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))) (c!715317 (regex!7682 rBis!167))))))

(declare-fun b!4194245 () Bool)

(assert (=> b!4194245 (= e!2603597 (matchR!6326 (derivativeStep!3813 (regex!7682 rBis!167) (head!8900 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641)))))) (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641)))))))))

(declare-fun b!4194246 () Bool)

(declare-fun res!1721726 () Bool)

(assert (=> b!4194246 (=> res!1721726 e!2603598)))

(assert (=> b!4194246 (= res!1721726 (not (isEmpty!27276 (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))))))))

(declare-fun d!1237094 () Bool)

(declare-fun e!2603600 () Bool)

(assert (=> d!1237094 e!2603600))

(declare-fun c!715538 () Bool)

(assert (=> d!1237094 (= c!715538 ((_ is EmptyExpr!12587) (regex!7682 rBis!167)))))

(assert (=> d!1237094 (= lt!1494050 e!2603597)))

(declare-fun c!715539 () Bool)

(assert (=> d!1237094 (= c!715539 (isEmpty!27276 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))))))

(assert (=> d!1237094 (validRegex!5704 (regex!7682 rBis!167))))

(assert (=> d!1237094 (= (matchR!6326 (regex!7682 rBis!167) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))) lt!1494050)))

(declare-fun b!4194247 () Bool)

(assert (=> b!4194247 (= e!2603596 (not lt!1494050))))

(declare-fun b!4194248 () Bool)

(assert (=> b!4194248 (= e!2603600 e!2603596)))

(declare-fun c!715537 () Bool)

(assert (=> b!4194248 (= c!715537 ((_ is EmptyLang!12587) (regex!7682 rBis!167)))))

(declare-fun b!4194249 () Bool)

(declare-fun res!1721721 () Bool)

(assert (=> b!4194249 (=> (not res!1721721) (not e!2603599))))

(assert (=> b!4194249 (= res!1721721 (isEmpty!27276 (tail!6747 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641)))))))))

(declare-fun bm!292358 () Bool)

(assert (=> bm!292358 (= call!292363 (isEmpty!27276 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1493641))))))))

(declare-fun b!4194250 () Bool)

(assert (=> b!4194250 (= e!2603600 (= lt!1494050 call!292363))))

(declare-fun b!4194251 () Bool)

(declare-fun res!1721724 () Bool)

(assert (=> b!4194251 (=> res!1721724 e!2603595)))

(assert (=> b!4194251 (= res!1721724 e!2603599)))

(declare-fun res!1721727 () Bool)

(assert (=> b!4194251 (=> (not res!1721727) (not e!2603599))))

(assert (=> b!4194251 (= res!1721727 lt!1494050)))

(assert (= (and d!1237094 c!715539) b!4194242))

(assert (= (and d!1237094 (not c!715539)) b!4194245))

(assert (= (and d!1237094 c!715538) b!4194250))

(assert (= (and d!1237094 (not c!715538)) b!4194248))

(assert (= (and b!4194248 c!715537) b!4194247))

(assert (= (and b!4194248 (not c!715537)) b!4194239))

(assert (= (and b!4194239 (not res!1721723)) b!4194251))

(assert (= (and b!4194251 res!1721727) b!4194240))

(assert (= (and b!4194240 res!1721722) b!4194249))

(assert (= (and b!4194249 res!1721721) b!4194244))

(assert (= (and b!4194251 (not res!1721724)) b!4194243))

(assert (= (and b!4194243 res!1721720) b!4194238))

(assert (= (and b!4194238 (not res!1721725)) b!4194246))

(assert (= (and b!4194246 (not res!1721726)) b!4194241))

(assert (= (or b!4194250 b!4194238 b!4194240) bm!292358))

(assert (=> b!4194249 m!4782055))

(declare-fun m!4783169 () Bool)

(assert (=> b!4194249 m!4783169))

(assert (=> b!4194249 m!4783169))

(declare-fun m!4783173 () Bool)

(assert (=> b!4194249 m!4783173))

(assert (=> b!4194241 m!4782055))

(declare-fun m!4783175 () Bool)

(assert (=> b!4194241 m!4783175))

(assert (=> b!4194244 m!4782055))

(assert (=> b!4194244 m!4783175))

(assert (=> b!4194242 m!4782355))

(assert (=> bm!292358 m!4782055))

(declare-fun m!4783179 () Bool)

(assert (=> bm!292358 m!4783179))

(assert (=> b!4194246 m!4782055))

(assert (=> b!4194246 m!4783169))

(assert (=> b!4194246 m!4783169))

(assert (=> b!4194246 m!4783173))

(assert (=> d!1237094 m!4782055))

(assert (=> d!1237094 m!4783179))

(assert (=> d!1237094 m!4782353))

(assert (=> b!4194245 m!4782055))

(assert (=> b!4194245 m!4783175))

(assert (=> b!4194245 m!4783175))

(declare-fun m!4783183 () Bool)

(assert (=> b!4194245 m!4783183))

(assert (=> b!4194245 m!4782055))

(assert (=> b!4194245 m!4783169))

(assert (=> b!4194245 m!4783183))

(assert (=> b!4194245 m!4783169))

(declare-fun m!4783185 () Bool)

(assert (=> b!4194245 m!4783185))

(assert (=> b!4193376 d!1237094))

(assert (=> b!4193376 d!1236950))

(assert (=> b!4193376 d!1236952))

(assert (=> b!4193376 d!1236750))

(assert (=> b!4193353 d!1236934))

(assert (=> b!4193353 d!1236936))

(assert (=> b!4193219 d!1236816))

(assert (=> b!4193219 d!1236818))

(assert (=> b!4193219 d!1236814))

(declare-fun d!1237102 () Bool)

(assert (=> d!1237102 (= (nullable!4423 (regex!7682 rBis!167)) (nullableFct!1217 (regex!7682 rBis!167)))))

(declare-fun bs!596742 () Bool)

(assert (= bs!596742 d!1237102))

(declare-fun m!4783187 () Bool)

(assert (=> bs!596742 m!4783187))

(assert (=> b!4193622 d!1237102))

(declare-fun bs!596745 () Bool)

(declare-fun d!1237104 () Bool)

(assert (= bs!596745 (and d!1237104 d!1236658)))

(declare-fun lambda!129525 () Int)

(assert (=> bs!596745 (= (and (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142))) (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (= lambda!129525 lambda!129499))))

(declare-fun bs!596747 () Bool)

(assert (= bs!596747 (and d!1237104 d!1236834)))

(assert (=> bs!596747 (= (and (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142))) (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (= lambda!129525 lambda!129509))))

(declare-fun bs!596749 () Bool)

(assert (= bs!596749 (and d!1237104 d!1236882)))

(assert (=> bs!596749 (= lambda!129525 lambda!129514)))

(assert (=> d!1237104 true))

(assert (=> d!1237104 (< (dynLambda!19839 order!24389 (toChars!10237 (transformation!7682 rBis!167))) (dynLambda!19838 order!24387 lambda!129525))))

(assert (=> d!1237104 true))

(assert (=> d!1237104 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 rBis!167))) (dynLambda!19838 order!24387 lambda!129525))))

(assert (=> d!1237104 (= (semiInverseModEq!3332 (toChars!10237 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 rBis!167))) (Forall!1568 lambda!129525))))

(declare-fun bs!596750 () Bool)

(assert (= bs!596750 d!1237104))

(declare-fun m!4783191 () Bool)

(assert (=> bs!596750 m!4783191))

(assert (=> d!1236726 d!1237104))

(declare-fun bs!596751 () Bool)

(declare-fun d!1237108 () Bool)

(assert (= bs!596751 (and d!1237108 d!1236658)))

(declare-fun lambda!129526 () Int)

(assert (=> bs!596751 (= (and (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 r!4142))) (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142)))) (= lambda!129526 lambda!129499))))

(declare-fun bs!596752 () Bool)

(assert (= bs!596752 (and d!1237108 d!1236834)))

(assert (=> bs!596752 (= (and (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 r!4142))) (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142)))) (= lambda!129526 lambda!129509))))

(declare-fun bs!596753 () Bool)

(assert (= bs!596753 (and d!1237108 d!1236882)))

(assert (=> bs!596753 (= (and (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 rBis!167))) (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 rBis!167)))) (= lambda!129526 lambda!129514))))

(declare-fun bs!596754 () Bool)

(assert (= bs!596754 (and d!1237108 d!1237104)))

(assert (=> bs!596754 (= (and (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 rBis!167))) (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 rBis!167)))) (= lambda!129526 lambda!129525))))

(assert (=> d!1237108 true))

(assert (=> d!1237108 (< (dynLambda!19839 order!24389 (toChars!10237 (transformation!7682 (h!51483 rules!3843)))) (dynLambda!19838 order!24387 lambda!129526))))

(assert (=> d!1237108 true))

(assert (=> d!1237108 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 (h!51483 rules!3843)))) (dynLambda!19838 order!24387 lambda!129526))))

(assert (=> d!1237108 (= (semiInverseModEq!3332 (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 (h!51483 rules!3843)))) (Forall!1568 lambda!129526))))

(declare-fun bs!596755 () Bool)

(assert (= bs!596755 d!1237108))

(declare-fun m!4783195 () Bool)

(assert (=> bs!596755 m!4783195))

(assert (=> d!1236614 d!1237108))

(declare-fun d!1237114 () Bool)

(declare-fun e!2603604 () Bool)

(assert (=> d!1237114 e!2603604))

(declare-fun res!1721728 () Bool)

(assert (=> d!1237114 (=> (not res!1721728) (not e!2603604))))

(declare-fun lt!1494052 () List!46186)

(assert (=> d!1237114 (= res!1721728 (= (content!7180 lt!1494052) ((_ map or) (content!7180 (t!346117 lt!1493553)) (content!7180 (_2!25061 lt!1493544)))))))

(declare-fun e!2603603 () List!46186)

(assert (=> d!1237114 (= lt!1494052 e!2603603)))

(declare-fun c!715541 () Bool)

(assert (=> d!1237114 (= c!715541 ((_ is Nil!46062) (t!346117 lt!1493553)))))

(assert (=> d!1237114 (= (++!11754 (t!346117 lt!1493553) (_2!25061 lt!1493544)) lt!1494052)))

(declare-fun b!4194254 () Bool)

(assert (=> b!4194254 (= e!2603603 (_2!25061 lt!1493544))))

(declare-fun b!4194255 () Bool)

(assert (=> b!4194255 (= e!2603603 (Cons!46062 (h!51482 (t!346117 lt!1493553)) (++!11754 (t!346117 (t!346117 lt!1493553)) (_2!25061 lt!1493544))))))

(declare-fun b!4194256 () Bool)

(declare-fun res!1721729 () Bool)

(assert (=> b!4194256 (=> (not res!1721729) (not e!2603604))))

(assert (=> b!4194256 (= res!1721729 (= (size!33850 lt!1494052) (+ (size!33850 (t!346117 lt!1493553)) (size!33850 (_2!25061 lt!1493544)))))))

(declare-fun b!4194257 () Bool)

(assert (=> b!4194257 (= e!2603604 (or (not (= (_2!25061 lt!1493544) Nil!46062)) (= lt!1494052 (t!346117 lt!1493553))))))

(assert (= (and d!1237114 c!715541) b!4194254))

(assert (= (and d!1237114 (not c!715541)) b!4194255))

(assert (= (and d!1237114 res!1721728) b!4194256))

(assert (= (and b!4194256 res!1721729) b!4194257))

(declare-fun m!4783197 () Bool)

(assert (=> d!1237114 m!4783197))

(assert (=> d!1237114 m!4782781))

(assert (=> d!1237114 m!4781991))

(declare-fun m!4783199 () Bool)

(assert (=> b!4194255 m!4783199))

(declare-fun m!4783201 () Bool)

(assert (=> b!4194256 m!4783201))

(assert (=> b!4194256 m!4781895))

(assert (=> b!4194256 m!4781997))

(assert (=> b!4193309 d!1237114))

(declare-fun d!1237116 () Bool)

(declare-fun e!2603606 () Bool)

(assert (=> d!1237116 e!2603606))

(declare-fun res!1721730 () Bool)

(assert (=> d!1237116 (=> (not res!1721730) (not e!2603606))))

(declare-fun lt!1494053 () List!46186)

(assert (=> d!1237116 (= res!1721730 (= (content!7180 lt!1494053) ((_ map or) (content!7180 p!2959) (content!7180 lt!1493651))))))

(declare-fun e!2603605 () List!46186)

(assert (=> d!1237116 (= lt!1494053 e!2603605)))

(declare-fun c!715542 () Bool)

(assert (=> d!1237116 (= c!715542 ((_ is Nil!46062) p!2959))))

(assert (=> d!1237116 (= (++!11754 p!2959 lt!1493651) lt!1494053)))

(declare-fun b!4194258 () Bool)

(assert (=> b!4194258 (= e!2603605 lt!1493651)))

(declare-fun b!4194259 () Bool)

(assert (=> b!4194259 (= e!2603605 (Cons!46062 (h!51482 p!2959) (++!11754 (t!346117 p!2959) lt!1493651)))))

(declare-fun b!4194260 () Bool)

(declare-fun res!1721731 () Bool)

(assert (=> b!4194260 (=> (not res!1721731) (not e!2603606))))

(assert (=> b!4194260 (= res!1721731 (= (size!33850 lt!1494053) (+ (size!33850 p!2959) (size!33850 lt!1493651))))))

(declare-fun b!4194261 () Bool)

(assert (=> b!4194261 (= e!2603606 (or (not (= lt!1493651 Nil!46062)) (= lt!1494053 p!2959)))))

(assert (= (and d!1237116 c!715542) b!4194258))

(assert (= (and d!1237116 (not c!715542)) b!4194259))

(assert (= (and d!1237116 res!1721730) b!4194260))

(assert (= (and b!4194260 res!1721731) b!4194261))

(declare-fun m!4783205 () Bool)

(assert (=> d!1237116 m!4783205))

(declare-fun m!4783207 () Bool)

(assert (=> d!1237116 m!4783207))

(declare-fun m!4783209 () Bool)

(assert (=> d!1237116 m!4783209))

(declare-fun m!4783211 () Bool)

(assert (=> b!4194259 m!4783211))

(declare-fun m!4783213 () Bool)

(assert (=> b!4194260 m!4783213))

(assert (=> b!4194260 m!4781823))

(declare-fun m!4783215 () Bool)

(assert (=> b!4194260 m!4783215))

(assert (=> d!1236648 d!1237116))

(assert (=> d!1236648 d!1236646))

(assert (=> d!1236648 d!1236718))

(assert (=> b!4193619 d!1236744))

(declare-fun d!1237122 () Bool)

(declare-fun lt!1494055 () Int)

(assert (=> d!1237122 (>= lt!1494055 0)))

(declare-fun e!2603608 () Int)

(assert (=> d!1237122 (= lt!1494055 e!2603608)))

(declare-fun c!715544 () Bool)

(assert (=> d!1237122 (= c!715544 ((_ is Nil!46062) (t!346117 input!3342)))))

(assert (=> d!1237122 (= (size!33850 (t!346117 input!3342)) lt!1494055)))

(declare-fun b!4194264 () Bool)

(assert (=> b!4194264 (= e!2603608 0)))

(declare-fun b!4194265 () Bool)

(assert (=> b!4194265 (= e!2603608 (+ 1 (size!33850 (t!346117 (t!346117 input!3342)))))))

(assert (= (and d!1237122 c!715544) b!4194264))

(assert (= (and d!1237122 (not c!715544)) b!4194265))

(declare-fun m!4783217 () Bool)

(assert (=> b!4194265 m!4783217))

(assert (=> b!4193384 d!1237122))

(assert (=> b!4193615 d!1237052))

(declare-fun d!1237124 () Bool)

(assert (=> d!1237124 (= (apply!10647 (transformation!7682 r!4142) (seqFromList!5707 (_1!25063 lt!1493710))) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) (seqFromList!5707 (_1!25063 lt!1493710))))))

(declare-fun b_lambda!123391 () Bool)

(assert (=> (not b_lambda!123391) (not d!1237124)))

(declare-fun t!346301 () Bool)

(declare-fun tb!251323 () Bool)

(assert (=> (and b!4193164 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142))) t!346301) tb!251323))

(declare-fun result!306308 () Bool)

(assert (=> tb!251323 (= result!306308 (inv!21 (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) (seqFromList!5707 (_1!25063 lt!1493710)))))))

(declare-fun m!4783219 () Bool)

(assert (=> tb!251323 m!4783219))

(assert (=> d!1237124 t!346301))

(declare-fun b_and!328841 () Bool)

(assert (= b_and!328809 (and (=> t!346301 result!306308) b_and!328841)))

(declare-fun t!346303 () Bool)

(declare-fun tb!251325 () Bool)

(assert (=> (and b!4193154 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142))) t!346303) tb!251325))

(declare-fun result!306310 () Bool)

(assert (= result!306310 result!306308))

(assert (=> d!1237124 t!346303))

(declare-fun b_and!328843 () Bool)

(assert (= b_and!328811 (and (=> t!346303 result!306310) b_and!328843)))

(declare-fun t!346305 () Bool)

(declare-fun tb!251327 () Bool)

(assert (=> (and b!4193161 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 r!4142))) t!346305) tb!251327))

(declare-fun result!306312 () Bool)

(assert (= result!306312 result!306308))

(assert (=> d!1237124 t!346305))

(declare-fun b_and!328845 () Bool)

(assert (= b_and!328813 (and (=> t!346305 result!306312) b_and!328845)))

(declare-fun tb!251329 () Bool)

(declare-fun t!346307 () Bool)

(assert (=> (and b!4193691 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 r!4142))) t!346307) tb!251329))

(declare-fun result!306314 () Bool)

(assert (= result!306314 result!306308))

(assert (=> d!1237124 t!346307))

(declare-fun b_and!328847 () Bool)

(assert (= b_and!328815 (and (=> t!346307 result!306314) b_and!328847)))

(assert (=> d!1237124 m!4782317))

(declare-fun m!4783221 () Bool)

(assert (=> d!1237124 m!4783221))

(assert (=> b!4193615 d!1237124))

(declare-fun d!1237126 () Bool)

(assert (=> d!1237126 (= (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))) ((_ is Nil!46062) (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(assert (=> b!4193615 d!1237126))

(assert (=> b!4193615 d!1236788))

(declare-fun bs!596757 () Bool)

(declare-fun d!1237128 () Bool)

(assert (= bs!596757 (and d!1237128 d!1237108)))

(declare-fun lambda!129527 () Int)

(assert (=> bs!596757 (= (and (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (h!51483 rules!3843)))) (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 (h!51483 rules!3843))))) (= lambda!129527 lambda!129526))))

(declare-fun bs!596758 () Bool)

(assert (= bs!596758 (and d!1237128 d!1236834)))

(assert (=> bs!596758 (= lambda!129527 lambda!129509)))

(declare-fun bs!596759 () Bool)

(assert (= bs!596759 (and d!1237128 d!1237104)))

(assert (=> bs!596759 (= (and (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 rBis!167))) (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 rBis!167)))) (= lambda!129527 lambda!129525))))

(declare-fun bs!596760 () Bool)

(assert (= bs!596760 (and d!1237128 d!1236658)))

(assert (=> bs!596760 (= lambda!129527 lambda!129499)))

(declare-fun bs!596761 () Bool)

(assert (= bs!596761 (and d!1237128 d!1236882)))

(assert (=> bs!596761 (= (and (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 rBis!167))) (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 rBis!167)))) (= lambda!129527 lambda!129514))))

(declare-fun b!4194270 () Bool)

(declare-fun e!2603614 () Bool)

(assert (=> b!4194270 (= e!2603614 true)))

(assert (=> d!1237128 e!2603614))

(assert (= d!1237128 b!4194270))

(assert (=> b!4194270 (< (dynLambda!19837 order!24385 (toValue!10378 (transformation!7682 r!4142))) (dynLambda!19838 order!24387 lambda!129527))))

(assert (=> b!4194270 (< (dynLambda!19839 order!24389 (toChars!10237 (transformation!7682 r!4142))) (dynLambda!19838 order!24387 lambda!129527))))

(assert (=> d!1237128 (= (list!16646 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) (seqFromList!5707 (_1!25063 lt!1493710))))) (list!16646 (seqFromList!5707 (_1!25063 lt!1493710))))))

(declare-fun lt!1494056 () Unit!65139)

(assert (=> d!1237128 (= lt!1494056 (ForallOf!1066 lambda!129527 (seqFromList!5707 (_1!25063 lt!1493710))))))

(assert (=> d!1237128 (= (lemmaSemiInverse!2448 (transformation!7682 r!4142) (seqFromList!5707 (_1!25063 lt!1493710))) lt!1494056)))

(declare-fun b_lambda!123393 () Bool)

(assert (=> (not b_lambda!123393) (not d!1237128)))

(declare-fun tb!251331 () Bool)

(declare-fun t!346309 () Bool)

(assert (=> (and b!4193164 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142))) t!346309) tb!251331))

(declare-fun b!4194273 () Bool)

(declare-fun e!2603617 () Bool)

(declare-fun tp!1281305 () Bool)

(assert (=> b!4194273 (= e!2603617 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) (seqFromList!5707 (_1!25063 lt!1493710)))))) tp!1281305))))

(declare-fun result!306316 () Bool)

(assert (=> tb!251331 (= result!306316 (and (inv!60617 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) (seqFromList!5707 (_1!25063 lt!1493710))))) e!2603617))))

(assert (= tb!251331 b!4194273))

(declare-fun m!4783227 () Bool)

(assert (=> b!4194273 m!4783227))

(declare-fun m!4783229 () Bool)

(assert (=> tb!251331 m!4783229))

(assert (=> d!1237128 t!346309))

(declare-fun b_and!328849 () Bool)

(assert (= b_and!328801 (and (=> t!346309 result!306316) b_and!328849)))

(declare-fun t!346313 () Bool)

(declare-fun tb!251335 () Bool)

(assert (=> (and b!4193154 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 r!4142))) t!346313) tb!251335))

(declare-fun result!306320 () Bool)

(assert (= result!306320 result!306316))

(assert (=> d!1237128 t!346313))

(declare-fun b_and!328853 () Bool)

(assert (= b_and!328803 (and (=> t!346313 result!306320) b_and!328853)))

(declare-fun t!346317 () Bool)

(declare-fun tb!251339 () Bool)

(assert (=> (and b!4193161 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 r!4142))) t!346317) tb!251339))

(declare-fun result!306323 () Bool)

(assert (= result!306323 result!306316))

(assert (=> d!1237128 t!346317))

(declare-fun b_and!328855 () Bool)

(assert (= b_and!328805 (and (=> t!346317 result!306323) b_and!328855)))

(declare-fun t!346319 () Bool)

(declare-fun tb!251341 () Bool)

(assert (=> (and b!4193691 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 r!4142))) t!346319) tb!251341))

(declare-fun result!306326 () Bool)

(assert (= result!306326 result!306316))

(assert (=> d!1237128 t!346319))

(declare-fun b_and!328857 () Bool)

(assert (= b_and!328807 (and (=> t!346319 result!306326) b_and!328857)))

(declare-fun b_lambda!123397 () Bool)

(assert (=> (not b_lambda!123397) (not d!1237128)))

(assert (=> d!1237128 t!346301))

(declare-fun b_and!328861 () Bool)

(assert (= b_and!328841 (and (=> t!346301 result!306308) b_and!328861)))

(assert (=> d!1237128 t!346303))

(declare-fun b_and!328865 () Bool)

(assert (= b_and!328843 (and (=> t!346303 result!306310) b_and!328865)))

(assert (=> d!1237128 t!346305))

(declare-fun b_and!328867 () Bool)

(assert (= b_and!328845 (and (=> t!346305 result!306312) b_and!328867)))

(assert (=> d!1237128 t!346307))

(declare-fun b_and!328869 () Bool)

(assert (= b_and!328847 (and (=> t!346307 result!306314) b_and!328869)))

(assert (=> d!1237128 m!4783221))

(declare-fun m!4783233 () Bool)

(assert (=> d!1237128 m!4783233))

(assert (=> d!1237128 m!4782317))

(assert (=> d!1237128 m!4783221))

(assert (=> d!1237128 m!4782317))

(declare-fun m!4783235 () Bool)

(assert (=> d!1237128 m!4783235))

(assert (=> d!1237128 m!4783233))

(declare-fun m!4783239 () Bool)

(assert (=> d!1237128 m!4783239))

(assert (=> d!1237128 m!4782317))

(declare-fun m!4783241 () Bool)

(assert (=> d!1237128 m!4783241))

(assert (=> b!4193615 d!1237128))

(declare-fun d!1237134 () Bool)

(assert (=> d!1237134 (= (seqFromList!5707 (_1!25063 lt!1493710)) (fromListB!2615 (_1!25063 lt!1493710)))))

(declare-fun bs!596763 () Bool)

(assert (= bs!596763 d!1237134))

(declare-fun m!4783245 () Bool)

(assert (=> bs!596763 m!4783245))

(assert (=> b!4193615 d!1237134))

(declare-fun d!1237138 () Bool)

(declare-fun lt!1494057 () Int)

(assert (=> d!1237138 (= lt!1494057 (size!33850 (list!16646 (seqFromList!5707 (_1!25063 lt!1493710)))))))

(assert (=> d!1237138 (= lt!1494057 (size!33853 (c!715316 (seqFromList!5707 (_1!25063 lt!1493710)))))))

(assert (=> d!1237138 (= (size!33851 (seqFromList!5707 (_1!25063 lt!1493710))) lt!1494057)))

(declare-fun bs!596764 () Bool)

(assert (= bs!596764 d!1237138))

(assert (=> bs!596764 m!4782317))

(assert (=> bs!596764 m!4783235))

(assert (=> bs!596764 m!4783235))

(declare-fun m!4783247 () Bool)

(assert (=> bs!596764 m!4783247))

(declare-fun m!4783249 () Bool)

(assert (=> bs!596764 m!4783249))

(assert (=> b!4193615 d!1237138))

(assert (=> b!4193615 d!1236646))

(declare-fun d!1237140 () Bool)

(declare-fun e!2603619 () Bool)

(assert (=> d!1237140 e!2603619))

(declare-fun res!1721738 () Bool)

(assert (=> d!1237140 (=> res!1721738 e!2603619)))

(assert (=> d!1237140 (= res!1721738 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun lt!1494058 () Unit!65139)

(assert (=> d!1237140 (= lt!1494058 (choose!25703 (regex!7682 r!4142) input!3342))))

(assert (=> d!1237140 (validRegex!5704 (regex!7682 r!4142))))

(assert (=> d!1237140 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1586 (regex!7682 r!4142) input!3342) lt!1494058)))

(declare-fun b!4194274 () Bool)

(assert (=> b!4194274 (= e!2603619 (matchR!6326 (regex!7682 r!4142) (_1!25063 (findLongestMatchInner!1613 (regex!7682 r!4142) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(assert (= (and d!1237140 (not res!1721738)) b!4194274))

(assert (=> d!1237140 m!4781803))

(declare-fun m!4783251 () Bool)

(assert (=> d!1237140 m!4783251))

(assert (=> d!1237140 m!4782311))

(assert (=> d!1237140 m!4781783))

(assert (=> d!1237140 m!4782039))

(assert (=> d!1237140 m!4781803))

(assert (=> d!1237140 m!4782315))

(assert (=> d!1237140 m!4782039))

(assert (=> b!4194274 m!4782039))

(assert (=> b!4194274 m!4781803))

(assert (=> b!4194274 m!4782039))

(assert (=> b!4194274 m!4781803))

(assert (=> b!4194274 m!4782315))

(assert (=> b!4194274 m!4782339))

(assert (=> b!4193615 d!1237140))

(declare-fun d!1237142 () Bool)

(assert (=> d!1237142 (= (nullable!4423 (reg!12916 (regex!7682 r!4142))) (nullableFct!1217 (reg!12916 (regex!7682 r!4142))))))

(declare-fun bs!596765 () Bool)

(assert (= bs!596765 d!1237142))

(declare-fun m!4783253 () Bool)

(assert (=> bs!596765 m!4783253))

(assert (=> b!4193344 d!1237142))

(declare-fun d!1237144 () Bool)

(assert (=> d!1237144 (= (head!8900 pBis!107) (h!51482 pBis!107))))

(assert (=> b!4193676 d!1237144))

(assert (=> b!4193676 d!1236936))

(declare-fun d!1237146 () Bool)

(declare-fun lt!1494059 () Int)

(assert (=> d!1237146 (>= lt!1494059 0)))

(declare-fun e!2603622 () Int)

(assert (=> d!1237146 (= lt!1494059 e!2603622)))

(declare-fun c!715547 () Bool)

(assert (=> d!1237146 (= c!715547 ((_ is Nil!46062) (_2!25061 (get!14982 lt!1493641))))))

(assert (=> d!1237146 (= (size!33850 (_2!25061 (get!14982 lt!1493641))) lt!1494059)))

(declare-fun b!4194279 () Bool)

(assert (=> b!4194279 (= e!2603622 0)))

(declare-fun b!4194280 () Bool)

(assert (=> b!4194280 (= e!2603622 (+ 1 (size!33850 (t!346117 (_2!25061 (get!14982 lt!1493641))))))))

(assert (= (and d!1237146 c!715547) b!4194279))

(assert (= (and d!1237146 (not c!715547)) b!4194280))

(declare-fun m!4783255 () Bool)

(assert (=> b!4194280 m!4783255))

(assert (=> b!4193380 d!1237146))

(assert (=> b!4193380 d!1236750))

(assert (=> b!4193380 d!1236646))

(assert (=> b!4193665 d!1236934))

(declare-fun d!1237148 () Bool)

(declare-fun c!715549 () Bool)

(assert (=> d!1237148 (= c!715549 ((_ is Node!13893) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))))

(declare-fun e!2603624 () Bool)

(assert (=> d!1237148 (= (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))) e!2603624)))

(declare-fun b!4194283 () Bool)

(assert (=> b!4194283 (= e!2603624 (inv!60618 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))))

(declare-fun b!4194284 () Bool)

(declare-fun e!2603625 () Bool)

(assert (=> b!4194284 (= e!2603624 e!2603625)))

(declare-fun res!1721739 () Bool)

(assert (=> b!4194284 (= res!1721739 (not ((_ is Leaf!21477) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))))))

(assert (=> b!4194284 (=> res!1721739 e!2603625)))

(declare-fun b!4194285 () Bool)

(assert (=> b!4194285 (= e!2603625 (inv!60619 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))))

(assert (= (and d!1237148 c!715549) b!4194283))

(assert (= (and d!1237148 (not c!715549)) b!4194284))

(assert (= (and b!4194284 (not res!1721739)) b!4194285))

(declare-fun m!4783261 () Bool)

(assert (=> b!4194283 m!4783261))

(declare-fun m!4783263 () Bool)

(assert (=> b!4194285 m!4783263))

(assert (=> b!4193610 d!1237148))

(declare-fun b!4194288 () Bool)

(declare-fun e!2603630 () Option!9876)

(assert (=> b!4194288 (= e!2603630 None!9875)))

(declare-fun b!4194289 () Bool)

(declare-fun e!2603627 () Bool)

(declare-fun lt!1494061 () Option!9876)

(assert (=> b!4194289 (= e!2603627 (= (size!33849 (_1!25061 (get!14982 lt!1494061))) (size!33850 (originalCharacters!8070 (_1!25061 (get!14982 lt!1494061))))))))

(declare-fun d!1237152 () Bool)

(declare-fun e!2603629 () Bool)

(assert (=> d!1237152 e!2603629))

(declare-fun res!1721742 () Bool)

(assert (=> d!1237152 (=> res!1721742 e!2603629)))

(assert (=> d!1237152 (= res!1721742 (isEmpty!27275 lt!1494061))))

(assert (=> d!1237152 (= lt!1494061 e!2603630)))

(declare-fun c!715551 () Bool)

(declare-fun lt!1494062 () tuple2!43858)

(assert (=> d!1237152 (= c!715551 (isEmpty!27276 (_1!25063 lt!1494062)))))

(assert (=> d!1237152 (= lt!1494062 (findLongestMatch!1526 (regex!7682 (h!51483 rules!3843)) input!3342))))

(assert (=> d!1237152 (ruleValid!3400 thiss!25986 (h!51483 rules!3843))))

(assert (=> d!1237152 (= (maxPrefixOneRule!3284 thiss!25986 (h!51483 rules!3843) input!3342) lt!1494061)))

(declare-fun b!4194290 () Bool)

(assert (=> b!4194290 (= e!2603629 e!2603627)))

(declare-fun res!1721741 () Bool)

(assert (=> b!4194290 (=> (not res!1721741) (not e!2603627))))

(assert (=> b!4194290 (= res!1721741 (matchR!6326 (regex!7682 (h!51483 rules!3843)) (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1494061))))))))

(declare-fun b!4194291 () Bool)

(declare-fun res!1721743 () Bool)

(assert (=> b!4194291 (=> (not res!1721743) (not e!2603627))))

(assert (=> b!4194291 (= res!1721743 (= (++!11754 (list!16646 (charsOf!5117 (_1!25061 (get!14982 lt!1494061)))) (_2!25061 (get!14982 lt!1494061))) input!3342))))

(declare-fun b!4194292 () Bool)

(assert (=> b!4194292 (= e!2603630 (Some!9875 (tuple2!43855 (Token!14079 (apply!10647 (transformation!7682 (h!51483 rules!3843)) (seqFromList!5707 (_1!25063 lt!1494062))) (h!51483 rules!3843) (size!33851 (seqFromList!5707 (_1!25063 lt!1494062))) (_1!25063 lt!1494062)) (_2!25063 lt!1494062))))))

(declare-fun lt!1494063 () Unit!65139)

(assert (=> b!4194292 (= lt!1494063 (longestMatchIsAcceptedByMatchOrIsEmpty!1586 (regex!7682 (h!51483 rules!3843)) input!3342))))

(declare-fun res!1721746 () Bool)

(assert (=> b!4194292 (= res!1721746 (isEmpty!27276 (_1!25063 (findLongestMatchInner!1613 (regex!7682 (h!51483 rules!3843)) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun e!2603628 () Bool)

(assert (=> b!4194292 (=> res!1721746 e!2603628)))

(assert (=> b!4194292 e!2603628))

(declare-fun lt!1494060 () Unit!65139)

(assert (=> b!4194292 (= lt!1494060 lt!1494063)))

(declare-fun lt!1494064 () Unit!65139)

(assert (=> b!4194292 (= lt!1494064 (lemmaSemiInverse!2448 (transformation!7682 (h!51483 rules!3843)) (seqFromList!5707 (_1!25063 lt!1494062))))))

(declare-fun b!4194293 () Bool)

(assert (=> b!4194293 (= e!2603628 (matchR!6326 (regex!7682 (h!51483 rules!3843)) (_1!25063 (findLongestMatchInner!1613 (regex!7682 (h!51483 rules!3843)) Nil!46062 (size!33850 Nil!46062) input!3342 input!3342 (size!33850 input!3342)))))))

(declare-fun b!4194294 () Bool)

(declare-fun res!1721740 () Bool)

(assert (=> b!4194294 (=> (not res!1721740) (not e!2603627))))

(assert (=> b!4194294 (= res!1721740 (< (size!33850 (_2!25061 (get!14982 lt!1494061))) (size!33850 input!3342)))))

(declare-fun b!4194295 () Bool)

(declare-fun res!1721745 () Bool)

(assert (=> b!4194295 (=> (not res!1721745) (not e!2603627))))

(assert (=> b!4194295 (= res!1721745 (= (value!239469 (_1!25061 (get!14982 lt!1494061))) (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1494061)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1494061)))))))))

(declare-fun b!4194296 () Bool)

(declare-fun res!1721744 () Bool)

(assert (=> b!4194296 (=> (not res!1721744) (not e!2603627))))

(assert (=> b!4194296 (= res!1721744 (= (rule!10770 (_1!25061 (get!14982 lt!1494061))) (h!51483 rules!3843)))))

(assert (= (and d!1237152 c!715551) b!4194288))

(assert (= (and d!1237152 (not c!715551)) b!4194292))

(assert (= (and b!4194292 (not res!1721746)) b!4194293))

(assert (= (and d!1237152 (not res!1721742)) b!4194290))

(assert (= (and b!4194290 res!1721741) b!4194291))

(assert (= (and b!4194291 res!1721743) b!4194294))

(assert (= (and b!4194294 res!1721740) b!4194296))

(assert (= (and b!4194296 res!1721744) b!4194295))

(assert (= (and b!4194295 res!1721745) b!4194289))

(declare-fun m!4783275 () Bool)

(assert (=> b!4194292 m!4783275))

(assert (=> b!4194292 m!4781803))

(declare-fun m!4783277 () Bool)

(assert (=> b!4194292 m!4783277))

(assert (=> b!4194292 m!4782039))

(assert (=> b!4194292 m!4781803))

(declare-fun m!4783279 () Bool)

(assert (=> b!4194292 m!4783279))

(declare-fun m!4783281 () Bool)

(assert (=> b!4194292 m!4783281))

(assert (=> b!4194292 m!4783281))

(declare-fun m!4783283 () Bool)

(assert (=> b!4194292 m!4783283))

(assert (=> b!4194292 m!4782039))

(assert (=> b!4194292 m!4783281))

(declare-fun m!4783285 () Bool)

(assert (=> b!4194292 m!4783285))

(assert (=> b!4194292 m!4783281))

(declare-fun m!4783287 () Bool)

(assert (=> b!4194292 m!4783287))

(declare-fun m!4783289 () Bool)

(assert (=> b!4194290 m!4783289))

(declare-fun m!4783291 () Bool)

(assert (=> b!4194290 m!4783291))

(assert (=> b!4194290 m!4783291))

(declare-fun m!4783293 () Bool)

(assert (=> b!4194290 m!4783293))

(assert (=> b!4194290 m!4783293))

(declare-fun m!4783295 () Bool)

(assert (=> b!4194290 m!4783295))

(declare-fun m!4783297 () Bool)

(assert (=> d!1237152 m!4783297))

(declare-fun m!4783299 () Bool)

(assert (=> d!1237152 m!4783299))

(declare-fun m!4783301 () Bool)

(assert (=> d!1237152 m!4783301))

(declare-fun m!4783303 () Bool)

(assert (=> d!1237152 m!4783303))

(assert (=> b!4194296 m!4783289))

(assert (=> b!4194293 m!4782039))

(assert (=> b!4194293 m!4781803))

(assert (=> b!4194293 m!4782039))

(assert (=> b!4194293 m!4781803))

(assert (=> b!4194293 m!4783279))

(declare-fun m!4783305 () Bool)

(assert (=> b!4194293 m!4783305))

(assert (=> b!4194289 m!4783289))

(declare-fun m!4783307 () Bool)

(assert (=> b!4194289 m!4783307))

(assert (=> b!4194291 m!4783289))

(assert (=> b!4194291 m!4783291))

(assert (=> b!4194291 m!4783291))

(assert (=> b!4194291 m!4783293))

(assert (=> b!4194291 m!4783293))

(declare-fun m!4783309 () Bool)

(assert (=> b!4194291 m!4783309))

(assert (=> b!4194294 m!4783289))

(declare-fun m!4783311 () Bool)

(assert (=> b!4194294 m!4783311))

(assert (=> b!4194294 m!4781803))

(assert (=> b!4194295 m!4783289))

(declare-fun m!4783313 () Bool)

(assert (=> b!4194295 m!4783313))

(assert (=> b!4194295 m!4783313))

(declare-fun m!4783315 () Bool)

(assert (=> b!4194295 m!4783315))

(assert (=> bm!292236 d!1237152))

(declare-fun d!1237168 () Bool)

(assert (=> d!1237168 (= (isEmpty!27275 lt!1493571) (not ((_ is Some!9875) lt!1493571)))))

(assert (=> d!1236572 d!1237168))

(assert (=> d!1236572 d!1236650))

(assert (=> d!1236572 d!1236654))

(declare-fun bs!596769 () Bool)

(declare-fun d!1237170 () Bool)

(assert (= bs!596769 (and d!1237170 d!1236810)))

(declare-fun lambda!129530 () Int)

(assert (=> bs!596769 (= lambda!129530 lambda!129506)))

(assert (=> d!1237170 true))

(declare-fun lt!1494067 () Bool)

(assert (=> d!1237170 (= lt!1494067 (forall!8479 rules!3843 lambda!129530))))

(declare-fun e!2603636 () Bool)

(assert (=> d!1237170 (= lt!1494067 e!2603636)))

(declare-fun res!1721752 () Bool)

(assert (=> d!1237170 (=> res!1721752 e!2603636)))

(assert (=> d!1237170 (= res!1721752 (not ((_ is Cons!46063) rules!3843)))))

(assert (=> d!1237170 (= (rulesValidInductive!2838 thiss!25986 rules!3843) lt!1494067)))

(declare-fun b!4194303 () Bool)

(declare-fun e!2603637 () Bool)

(assert (=> b!4194303 (= e!2603636 e!2603637)))

(declare-fun res!1721751 () Bool)

(assert (=> b!4194303 (=> (not res!1721751) (not e!2603637))))

(assert (=> b!4194303 (= res!1721751 (ruleValid!3400 thiss!25986 (h!51483 rules!3843)))))

(declare-fun b!4194304 () Bool)

(assert (=> b!4194304 (= e!2603637 (rulesValidInductive!2838 thiss!25986 (t!346118 rules!3843)))))

(assert (= (and d!1237170 (not res!1721752)) b!4194303))

(assert (= (and b!4194303 res!1721751) b!4194304))

(declare-fun m!4783317 () Bool)

(assert (=> d!1237170 m!4783317))

(assert (=> b!4194303 m!4783303))

(assert (=> b!4194304 m!4782823))

(assert (=> d!1236572 d!1237170))

(assert (=> d!1236644 d!1236734))

(assert (=> d!1236644 d!1236646))

(declare-fun d!1237172 () Bool)

(assert (=> d!1237172 (<= (size!33850 pBis!107) (size!33850 input!3342))))

(assert (=> d!1237172 true))

(declare-fun _$64!587 () Unit!65139)

(assert (=> d!1237172 (= (choose!25699 pBis!107 input!3342) _$64!587)))

(declare-fun bs!596770 () Bool)

(assert (= bs!596770 d!1237172))

(assert (=> bs!596770 m!4781777))

(assert (=> bs!596770 m!4781803))

(assert (=> d!1236644 d!1237172))

(assert (=> d!1236644 d!1236732))

(assert (=> d!1236628 d!1236626))

(assert (=> d!1236628 d!1236622))

(declare-fun d!1237174 () Bool)

(assert (=> d!1237174 (isPrefix!4539 lt!1493553 (++!11754 lt!1493553 (_2!25061 lt!1493544)))))

(assert (=> d!1237174 true))

(declare-fun _$46!1850 () Unit!65139)

(assert (=> d!1237174 (= (choose!25696 lt!1493553 (_2!25061 lt!1493544)) _$46!1850)))

(declare-fun bs!596771 () Bool)

(assert (= bs!596771 d!1237174))

(assert (=> bs!596771 m!4781839))

(assert (=> bs!596771 m!4781839))

(assert (=> bs!596771 m!4781841))

(assert (=> d!1236628 d!1237174))

(declare-fun d!1237176 () Bool)

(assert (=> d!1237176 (= pBis!107 lt!1493553)))

(assert (=> d!1237176 true))

(declare-fun _$60!849 () Unit!65139)

(assert (=> d!1237176 (= (choose!25694 pBis!107 lt!1493553 input!3342) _$60!849)))

(assert (=> d!1236602 d!1237176))

(assert (=> d!1236602 d!1236732))

(assert (=> b!4193214 d!1236814))

(declare-fun d!1237178 () Bool)

(assert (=> d!1237178 (= (apply!10647 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571))))) (dynLambda!19836 (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571))))))))

(declare-fun b_lambda!123399 () Bool)

(assert (=> (not b_lambda!123399) (not d!1237178)))

(declare-fun tb!251347 () Bool)

(declare-fun t!346325 () Bool)

(assert (=> (and b!4193164 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346325) tb!251347))

(declare-fun result!306332 () Bool)

(assert (=> tb!251347 (= result!306332 (inv!21 (dynLambda!19836 (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571))))) (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571)))))))))

(declare-fun m!4783319 () Bool)

(assert (=> tb!251347 m!4783319))

(assert (=> d!1237178 t!346325))

(declare-fun b_and!328873 () Bool)

(assert (= b_and!328861 (and (=> t!346325 result!306332) b_and!328873)))

(declare-fun tb!251349 () Bool)

(declare-fun t!346327 () Bool)

(assert (=> (and b!4193154 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346327) tb!251349))

(declare-fun result!306334 () Bool)

(assert (= result!306334 result!306332))

(assert (=> d!1237178 t!346327))

(declare-fun b_and!328875 () Bool)

(assert (= b_and!328865 (and (=> t!346327 result!306334) b_and!328875)))

(declare-fun tb!251351 () Bool)

(declare-fun t!346329 () Bool)

(assert (=> (and b!4193161 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346329) tb!251351))

(declare-fun result!306336 () Bool)

(assert (= result!306336 result!306332))

(assert (=> d!1237178 t!346329))

(declare-fun b_and!328877 () Bool)

(assert (= b_and!328867 (and (=> t!346329 result!306336) b_and!328877)))

(declare-fun tb!251353 () Bool)

(declare-fun t!346331 () Bool)

(assert (=> (and b!4193691 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346331) tb!251353))

(declare-fun result!306338 () Bool)

(assert (= result!306338 result!306332))

(assert (=> d!1237178 t!346331))

(declare-fun b_and!328879 () Bool)

(assert (= b_and!328869 (and (=> t!346331 result!306338) b_and!328879)))

(assert (=> d!1237178 m!4781869))

(declare-fun m!4783321 () Bool)

(assert (=> d!1237178 m!4783321))

(assert (=> b!4193214 d!1237178))

(declare-fun d!1237180 () Bool)

(assert (=> d!1237180 (= (seqFromList!5707 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571)))) (fromListB!2615 (originalCharacters!8070 (_1!25061 (get!14982 lt!1493571)))))))

(declare-fun bs!596772 () Bool)

(assert (= bs!596772 d!1237180))

(declare-fun m!4783323 () Bool)

(assert (=> bs!596772 m!4783323))

(assert (=> b!4193214 d!1237180))

(declare-fun b!4194324 () Bool)

(declare-fun res!1721762 () Bool)

(declare-fun e!2603651 () Bool)

(assert (=> b!4194324 (=> res!1721762 e!2603651)))

(assert (=> b!4194324 (= res!1721762 (not ((_ is IntegerValue!23738) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))))

(declare-fun e!2603650 () Bool)

(assert (=> b!4194324 (= e!2603650 e!2603651)))

(declare-fun b!4194326 () Bool)

(declare-fun inv!17 (TokenValue!7912) Bool)

(assert (=> b!4194326 (= e!2603650 (inv!17 (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))

(declare-fun b!4194327 () Bool)

(declare-fun e!2603649 () Bool)

(assert (=> b!4194327 (= e!2603649 e!2603650)))

(declare-fun c!715558 () Bool)

(assert (=> b!4194327 (= c!715558 ((_ is IntegerValue!23737) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))

(declare-fun b!4194328 () Bool)

(declare-fun inv!16 (TokenValue!7912) Bool)

(assert (=> b!4194328 (= e!2603649 (inv!16 (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))

(declare-fun b!4194325 () Bool)

(declare-fun inv!15 (TokenValue!7912) Bool)

(assert (=> b!4194325 (= e!2603651 (inv!15 (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))

(declare-fun d!1237182 () Bool)

(declare-fun c!715559 () Bool)

(assert (=> d!1237182 (= c!715559 ((_ is IntegerValue!23736) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))))

(assert (=> d!1237182 (= (inv!21 (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)) e!2603649)))

(assert (= (and d!1237182 c!715559) b!4194328))

(assert (= (and d!1237182 (not c!715559)) b!4194327))

(assert (= (and b!4194327 c!715558) b!4194326))

(assert (= (and b!4194327 (not c!715558)) b!4194324))

(assert (= (and b!4194324 (not res!1721762)) b!4194325))

(declare-fun m!4783343 () Bool)

(assert (=> b!4194326 m!4783343))

(declare-fun m!4783345 () Bool)

(assert (=> b!4194328 m!4783345))

(declare-fun m!4783347 () Bool)

(assert (=> b!4194325 m!4783347))

(assert (=> tb!251165 d!1237182))

(declare-fun b!4194332 () Bool)

(declare-fun e!2603652 () Bool)

(declare-fun tp!1281306 () Bool)

(declare-fun tp!1281308 () Bool)

(assert (=> b!4194332 (= e!2603652 (and tp!1281306 tp!1281308))))

(assert (=> b!4193708 (= tp!1281283 e!2603652)))

(declare-fun b!4194331 () Bool)

(declare-fun tp!1281307 () Bool)

(assert (=> b!4194331 (= e!2603652 tp!1281307)))

(declare-fun b!4194329 () Bool)

(assert (=> b!4194329 (= e!2603652 tp_is_empty!22137)))

(declare-fun b!4194330 () Bool)

(declare-fun tp!1281309 () Bool)

(declare-fun tp!1281310 () Bool)

(assert (=> b!4194330 (= e!2603652 (and tp!1281309 tp!1281310))))

(assert (= (and b!4193708 ((_ is ElementMatch!12587) (regOne!25686 (regex!7682 rBis!167)))) b!4194329))

(assert (= (and b!4193708 ((_ is Concat!20500) (regOne!25686 (regex!7682 rBis!167)))) b!4194330))

(assert (= (and b!4193708 ((_ is Star!12587) (regOne!25686 (regex!7682 rBis!167)))) b!4194331))

(assert (= (and b!4193708 ((_ is Union!12587) (regOne!25686 (regex!7682 rBis!167)))) b!4194332))

(declare-fun b!4194336 () Bool)

(declare-fun e!2603653 () Bool)

(declare-fun tp!1281311 () Bool)

(declare-fun tp!1281313 () Bool)

(assert (=> b!4194336 (= e!2603653 (and tp!1281311 tp!1281313))))

(assert (=> b!4193708 (= tp!1281284 e!2603653)))

(declare-fun b!4194335 () Bool)

(declare-fun tp!1281312 () Bool)

(assert (=> b!4194335 (= e!2603653 tp!1281312)))

(declare-fun b!4194333 () Bool)

(assert (=> b!4194333 (= e!2603653 tp_is_empty!22137)))

(declare-fun b!4194334 () Bool)

(declare-fun tp!1281314 () Bool)

(declare-fun tp!1281315 () Bool)

(assert (=> b!4194334 (= e!2603653 (and tp!1281314 tp!1281315))))

(assert (= (and b!4193708 ((_ is ElementMatch!12587) (regTwo!25686 (regex!7682 rBis!167)))) b!4194333))

(assert (= (and b!4193708 ((_ is Concat!20500) (regTwo!25686 (regex!7682 rBis!167)))) b!4194334))

(assert (= (and b!4193708 ((_ is Star!12587) (regTwo!25686 (regex!7682 rBis!167)))) b!4194335))

(assert (= (and b!4193708 ((_ is Union!12587) (regTwo!25686 (regex!7682 rBis!167)))) b!4194336))

(declare-fun b!4194340 () Bool)

(declare-fun e!2603654 () Bool)

(declare-fun tp!1281316 () Bool)

(declare-fun tp!1281318 () Bool)

(assert (=> b!4194340 (= e!2603654 (and tp!1281316 tp!1281318))))

(assert (=> b!4193709 (= tp!1281281 e!2603654)))

(declare-fun b!4194339 () Bool)

(declare-fun tp!1281317 () Bool)

(assert (=> b!4194339 (= e!2603654 tp!1281317)))

(declare-fun b!4194337 () Bool)

(assert (=> b!4194337 (= e!2603654 tp_is_empty!22137)))

(declare-fun b!4194338 () Bool)

(declare-fun tp!1281319 () Bool)

(declare-fun tp!1281320 () Bool)

(assert (=> b!4194338 (= e!2603654 (and tp!1281319 tp!1281320))))

(assert (= (and b!4193709 ((_ is ElementMatch!12587) (reg!12916 (regex!7682 rBis!167)))) b!4194337))

(assert (= (and b!4193709 ((_ is Concat!20500) (reg!12916 (regex!7682 rBis!167)))) b!4194338))

(assert (= (and b!4193709 ((_ is Star!12587) (reg!12916 (regex!7682 rBis!167)))) b!4194339))

(assert (= (and b!4193709 ((_ is Union!12587) (reg!12916 (regex!7682 rBis!167)))) b!4194340))

(declare-fun b!4194344 () Bool)

(declare-fun e!2603655 () Bool)

(declare-fun tp!1281321 () Bool)

(declare-fun tp!1281323 () Bool)

(assert (=> b!4194344 (= e!2603655 (and tp!1281321 tp!1281323))))

(assert (=> b!4193717 (= tp!1281294 e!2603655)))

(declare-fun b!4194343 () Bool)

(declare-fun tp!1281322 () Bool)

(assert (=> b!4194343 (= e!2603655 tp!1281322)))

(declare-fun b!4194341 () Bool)

(assert (=> b!4194341 (= e!2603655 tp_is_empty!22137)))

(declare-fun b!4194342 () Bool)

(declare-fun tp!1281324 () Bool)

(declare-fun tp!1281325 () Bool)

(assert (=> b!4194342 (= e!2603655 (and tp!1281324 tp!1281325))))

(assert (= (and b!4193717 ((_ is ElementMatch!12587) (regOne!25686 (regex!7682 r!4142)))) b!4194341))

(assert (= (and b!4193717 ((_ is Concat!20500) (regOne!25686 (regex!7682 r!4142)))) b!4194342))

(assert (= (and b!4193717 ((_ is Star!12587) (regOne!25686 (regex!7682 r!4142)))) b!4194343))

(assert (= (and b!4193717 ((_ is Union!12587) (regOne!25686 (regex!7682 r!4142)))) b!4194344))

(declare-fun b!4194348 () Bool)

(declare-fun e!2603656 () Bool)

(declare-fun tp!1281326 () Bool)

(declare-fun tp!1281328 () Bool)

(assert (=> b!4194348 (= e!2603656 (and tp!1281326 tp!1281328))))

(assert (=> b!4193717 (= tp!1281295 e!2603656)))

(declare-fun b!4194347 () Bool)

(declare-fun tp!1281327 () Bool)

(assert (=> b!4194347 (= e!2603656 tp!1281327)))

(declare-fun b!4194345 () Bool)

(assert (=> b!4194345 (= e!2603656 tp_is_empty!22137)))

(declare-fun b!4194346 () Bool)

(declare-fun tp!1281329 () Bool)

(declare-fun tp!1281330 () Bool)

(assert (=> b!4194346 (= e!2603656 (and tp!1281329 tp!1281330))))

(assert (= (and b!4193717 ((_ is ElementMatch!12587) (regTwo!25686 (regex!7682 r!4142)))) b!4194345))

(assert (= (and b!4193717 ((_ is Concat!20500) (regTwo!25686 (regex!7682 r!4142)))) b!4194346))

(assert (= (and b!4193717 ((_ is Star!12587) (regTwo!25686 (regex!7682 r!4142)))) b!4194347))

(assert (= (and b!4193717 ((_ is Union!12587) (regTwo!25686 (regex!7682 r!4142)))) b!4194348))

(declare-fun e!2603661 () Bool)

(declare-fun b!4194357 () Bool)

(declare-fun tp!1281339 () Bool)

(declare-fun tp!1281337 () Bool)

(assert (=> b!4194357 (= e!2603661 (and (inv!60616 (left!34312 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))))) tp!1281339 (inv!60616 (right!34642 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))))) tp!1281337))))

(declare-fun b!4194359 () Bool)

(declare-fun e!2603662 () Bool)

(declare-fun tp!1281338 () Bool)

(assert (=> b!4194359 (= e!2603662 tp!1281338)))

(declare-fun b!4194358 () Bool)

(declare-fun inv!60622 (IArray!27791) Bool)

(assert (=> b!4194358 (= e!2603661 (and (inv!60622 (xs!17199 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))))) e!2603662))))

(assert (=> b!4193299 (= tp!1281206 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544))))) e!2603661))))

(assert (= (and b!4193299 ((_ is Node!13893) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))))) b!4194357))

(assert (= b!4194358 b!4194359))

(assert (= (and b!4193299 ((_ is Leaf!21477) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))) (value!239469 (_1!25061 lt!1493544)))))) b!4194358))

(declare-fun m!4783389 () Bool)

(assert (=> b!4194357 m!4783389))

(declare-fun m!4783391 () Bool)

(assert (=> b!4194357 m!4783391))

(declare-fun m!4783393 () Bool)

(assert (=> b!4194358 m!4783393))

(assert (=> b!4193299 m!4781977))

(declare-fun b!4194363 () Bool)

(declare-fun e!2603663 () Bool)

(declare-fun tp!1281340 () Bool)

(declare-fun tp!1281342 () Bool)

(assert (=> b!4194363 (= e!2603663 (and tp!1281340 tp!1281342))))

(assert (=> b!4193713 (= tp!1281289 e!2603663)))

(declare-fun b!4194362 () Bool)

(declare-fun tp!1281341 () Bool)

(assert (=> b!4194362 (= e!2603663 tp!1281341)))

(declare-fun b!4194360 () Bool)

(assert (=> b!4194360 (= e!2603663 tp_is_empty!22137)))

(declare-fun b!4194361 () Bool)

(declare-fun tp!1281343 () Bool)

(declare-fun tp!1281344 () Bool)

(assert (=> b!4194361 (= e!2603663 (and tp!1281343 tp!1281344))))

(assert (= (and b!4193713 ((_ is ElementMatch!12587) (regOne!25686 (regex!7682 (h!51483 rules!3843))))) b!4194360))

(assert (= (and b!4193713 ((_ is Concat!20500) (regOne!25686 (regex!7682 (h!51483 rules!3843))))) b!4194361))

(assert (= (and b!4193713 ((_ is Star!12587) (regOne!25686 (regex!7682 (h!51483 rules!3843))))) b!4194362))

(assert (= (and b!4193713 ((_ is Union!12587) (regOne!25686 (regex!7682 (h!51483 rules!3843))))) b!4194363))

(declare-fun b!4194367 () Bool)

(declare-fun e!2603664 () Bool)

(declare-fun tp!1281345 () Bool)

(declare-fun tp!1281347 () Bool)

(assert (=> b!4194367 (= e!2603664 (and tp!1281345 tp!1281347))))

(assert (=> b!4193713 (= tp!1281290 e!2603664)))

(declare-fun b!4194366 () Bool)

(declare-fun tp!1281346 () Bool)

(assert (=> b!4194366 (= e!2603664 tp!1281346)))

(declare-fun b!4194364 () Bool)

(assert (=> b!4194364 (= e!2603664 tp_is_empty!22137)))

(declare-fun b!4194365 () Bool)

(declare-fun tp!1281348 () Bool)

(declare-fun tp!1281349 () Bool)

(assert (=> b!4194365 (= e!2603664 (and tp!1281348 tp!1281349))))

(assert (= (and b!4193713 ((_ is ElementMatch!12587) (regTwo!25686 (regex!7682 (h!51483 rules!3843))))) b!4194364))

(assert (= (and b!4193713 ((_ is Concat!20500) (regTwo!25686 (regex!7682 (h!51483 rules!3843))))) b!4194365))

(assert (= (and b!4193713 ((_ is Star!12587) (regTwo!25686 (regex!7682 (h!51483 rules!3843))))) b!4194366))

(assert (= (and b!4193713 ((_ is Union!12587) (regTwo!25686 (regex!7682 (h!51483 rules!3843))))) b!4194367))

(declare-fun b!4194371 () Bool)

(declare-fun e!2603665 () Bool)

(declare-fun tp!1281350 () Bool)

(declare-fun tp!1281352 () Bool)

(assert (=> b!4194371 (= e!2603665 (and tp!1281350 tp!1281352))))

(assert (=> b!4193710 (= tp!1281280 e!2603665)))

(declare-fun b!4194370 () Bool)

(declare-fun tp!1281351 () Bool)

(assert (=> b!4194370 (= e!2603665 tp!1281351)))

(declare-fun b!4194368 () Bool)

(assert (=> b!4194368 (= e!2603665 tp_is_empty!22137)))

(declare-fun b!4194369 () Bool)

(declare-fun tp!1281353 () Bool)

(declare-fun tp!1281354 () Bool)

(assert (=> b!4194369 (= e!2603665 (and tp!1281353 tp!1281354))))

(assert (= (and b!4193710 ((_ is ElementMatch!12587) (regOne!25687 (regex!7682 rBis!167)))) b!4194368))

(assert (= (and b!4193710 ((_ is Concat!20500) (regOne!25687 (regex!7682 rBis!167)))) b!4194369))

(assert (= (and b!4193710 ((_ is Star!12587) (regOne!25687 (regex!7682 rBis!167)))) b!4194370))

(assert (= (and b!4193710 ((_ is Union!12587) (regOne!25687 (regex!7682 rBis!167)))) b!4194371))

(declare-fun b!4194375 () Bool)

(declare-fun e!2603666 () Bool)

(declare-fun tp!1281355 () Bool)

(declare-fun tp!1281357 () Bool)

(assert (=> b!4194375 (= e!2603666 (and tp!1281355 tp!1281357))))

(assert (=> b!4193710 (= tp!1281282 e!2603666)))

(declare-fun b!4194374 () Bool)

(declare-fun tp!1281356 () Bool)

(assert (=> b!4194374 (= e!2603666 tp!1281356)))

(declare-fun b!4194372 () Bool)

(assert (=> b!4194372 (= e!2603666 tp_is_empty!22137)))

(declare-fun b!4194373 () Bool)

(declare-fun tp!1281358 () Bool)

(declare-fun tp!1281359 () Bool)

(assert (=> b!4194373 (= e!2603666 (and tp!1281358 tp!1281359))))

(assert (= (and b!4193710 ((_ is ElementMatch!12587) (regTwo!25687 (regex!7682 rBis!167)))) b!4194372))

(assert (= (and b!4193710 ((_ is Concat!20500) (regTwo!25687 (regex!7682 rBis!167)))) b!4194373))

(assert (= (and b!4193710 ((_ is Star!12587) (regTwo!25687 (regex!7682 rBis!167)))) b!4194374))

(assert (= (and b!4193710 ((_ is Union!12587) (regTwo!25687 (regex!7682 rBis!167)))) b!4194375))

(declare-fun b!4194376 () Bool)

(declare-fun e!2603667 () Bool)

(declare-fun tp!1281360 () Bool)

(assert (=> b!4194376 (= e!2603667 (and tp_is_empty!22137 tp!1281360))))

(assert (=> b!4193720 (= tp!1281296 e!2603667)))

(assert (= (and b!4193720 ((_ is Cons!46062) (t!346117 (t!346117 p!2959)))) b!4194376))

(declare-fun b!4194377 () Bool)

(declare-fun tp!1281363 () Bool)

(declare-fun tp!1281361 () Bool)

(declare-fun e!2603668 () Bool)

(assert (=> b!4194377 (= e!2603668 (and (inv!60616 (left!34312 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))))) tp!1281363 (inv!60616 (right!34642 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))))) tp!1281361))))

(declare-fun b!4194379 () Bool)

(declare-fun e!2603669 () Bool)

(declare-fun tp!1281362 () Bool)

(assert (=> b!4194379 (= e!2603669 tp!1281362)))

(declare-fun b!4194378 () Bool)

(assert (=> b!4194378 (= e!2603668 (and (inv!60622 (xs!17199 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))))) e!2603669))))

(assert (=> b!4193266 (= tp!1281205 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550)))) e!2603668))))

(assert (= (and b!4193266 ((_ is Node!13893) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))))) b!4194377))

(assert (= b!4194378 b!4194379))

(assert (= (and b!4193266 ((_ is Leaf!21477) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))) (value!239469 lt!1493550))))) b!4194378))

(declare-fun m!4783395 () Bool)

(assert (=> b!4194377 m!4783395))

(declare-fun m!4783397 () Bool)

(assert (=> b!4194377 m!4783397))

(declare-fun m!4783399 () Bool)

(assert (=> b!4194378 m!4783399))

(assert (=> b!4193266 m!4781935))

(declare-fun b!4194380 () Bool)

(declare-fun e!2603670 () Bool)

(declare-fun tp!1281364 () Bool)

(assert (=> b!4194380 (= e!2603670 (and tp_is_empty!22137 tp!1281364))))

(assert (=> b!4193696 (= tp!1281269 e!2603670)))

(assert (= (and b!4193696 ((_ is Cons!46062) (t!346117 (t!346117 input!3342)))) b!4194380))

(declare-fun b!4194384 () Bool)

(declare-fun e!2603671 () Bool)

(declare-fun tp!1281365 () Bool)

(declare-fun tp!1281367 () Bool)

(assert (=> b!4194384 (= e!2603671 (and tp!1281365 tp!1281367))))

(assert (=> b!4193718 (= tp!1281292 e!2603671)))

(declare-fun b!4194383 () Bool)

(declare-fun tp!1281366 () Bool)

(assert (=> b!4194383 (= e!2603671 tp!1281366)))

(declare-fun b!4194381 () Bool)

(assert (=> b!4194381 (= e!2603671 tp_is_empty!22137)))

(declare-fun b!4194382 () Bool)

(declare-fun tp!1281368 () Bool)

(declare-fun tp!1281369 () Bool)

(assert (=> b!4194382 (= e!2603671 (and tp!1281368 tp!1281369))))

(assert (= (and b!4193718 ((_ is ElementMatch!12587) (reg!12916 (regex!7682 r!4142)))) b!4194381))

(assert (= (and b!4193718 ((_ is Concat!20500) (reg!12916 (regex!7682 r!4142)))) b!4194382))

(assert (= (and b!4193718 ((_ is Star!12587) (reg!12916 (regex!7682 r!4142)))) b!4194383))

(assert (= (and b!4193718 ((_ is Union!12587) (reg!12916 (regex!7682 r!4142)))) b!4194384))

(declare-fun b!4194402 () Bool)

(declare-fun e!2603679 () Bool)

(declare-fun tp!1281370 () Bool)

(declare-fun tp!1281372 () Bool)

(assert (=> b!4194402 (= e!2603679 (and tp!1281370 tp!1281372))))

(assert (=> b!4193719 (= tp!1281291 e!2603679)))

(declare-fun b!4194401 () Bool)

(declare-fun tp!1281371 () Bool)

(assert (=> b!4194401 (= e!2603679 tp!1281371)))

(declare-fun b!4194399 () Bool)

(assert (=> b!4194399 (= e!2603679 tp_is_empty!22137)))

(declare-fun b!4194400 () Bool)

(declare-fun tp!1281373 () Bool)

(declare-fun tp!1281374 () Bool)

(assert (=> b!4194400 (= e!2603679 (and tp!1281373 tp!1281374))))

(assert (= (and b!4193719 ((_ is ElementMatch!12587) (regOne!25687 (regex!7682 r!4142)))) b!4194399))

(assert (= (and b!4193719 ((_ is Concat!20500) (regOne!25687 (regex!7682 r!4142)))) b!4194400))

(assert (= (and b!4193719 ((_ is Star!12587) (regOne!25687 (regex!7682 r!4142)))) b!4194401))

(assert (= (and b!4193719 ((_ is Union!12587) (regOne!25687 (regex!7682 r!4142)))) b!4194402))

(declare-fun b!4194406 () Bool)

(declare-fun e!2603680 () Bool)

(declare-fun tp!1281375 () Bool)

(declare-fun tp!1281377 () Bool)

(assert (=> b!4194406 (= e!2603680 (and tp!1281375 tp!1281377))))

(assert (=> b!4193719 (= tp!1281293 e!2603680)))

(declare-fun b!4194405 () Bool)

(declare-fun tp!1281376 () Bool)

(assert (=> b!4194405 (= e!2603680 tp!1281376)))

(declare-fun b!4194403 () Bool)

(assert (=> b!4194403 (= e!2603680 tp_is_empty!22137)))

(declare-fun b!4194404 () Bool)

(declare-fun tp!1281378 () Bool)

(declare-fun tp!1281379 () Bool)

(assert (=> b!4194404 (= e!2603680 (and tp!1281378 tp!1281379))))

(assert (= (and b!4193719 ((_ is ElementMatch!12587) (regTwo!25687 (regex!7682 r!4142)))) b!4194403))

(assert (= (and b!4193719 ((_ is Concat!20500) (regTwo!25687 (regex!7682 r!4142)))) b!4194404))

(assert (= (and b!4193719 ((_ is Star!12587) (regTwo!25687 (regex!7682 r!4142)))) b!4194405))

(assert (= (and b!4193719 ((_ is Union!12587) (regTwo!25687 (regex!7682 r!4142)))) b!4194406))

(declare-fun b!4194410 () Bool)

(declare-fun e!2603681 () Bool)

(declare-fun tp!1281380 () Bool)

(declare-fun tp!1281382 () Bool)

(assert (=> b!4194410 (= e!2603681 (and tp!1281380 tp!1281382))))

(assert (=> b!4193714 (= tp!1281287 e!2603681)))

(declare-fun b!4194409 () Bool)

(declare-fun tp!1281381 () Bool)

(assert (=> b!4194409 (= e!2603681 tp!1281381)))

(declare-fun b!4194407 () Bool)

(assert (=> b!4194407 (= e!2603681 tp_is_empty!22137)))

(declare-fun b!4194408 () Bool)

(declare-fun tp!1281383 () Bool)

(declare-fun tp!1281384 () Bool)

(assert (=> b!4194408 (= e!2603681 (and tp!1281383 tp!1281384))))

(assert (= (and b!4193714 ((_ is ElementMatch!12587) (reg!12916 (regex!7682 (h!51483 rules!3843))))) b!4194407))

(assert (= (and b!4193714 ((_ is Concat!20500) (reg!12916 (regex!7682 (h!51483 rules!3843))))) b!4194408))

(assert (= (and b!4193714 ((_ is Star!12587) (reg!12916 (regex!7682 (h!51483 rules!3843))))) b!4194409))

(assert (= (and b!4193714 ((_ is Union!12587) (reg!12916 (regex!7682 (h!51483 rules!3843))))) b!4194410))

(declare-fun b!4194414 () Bool)

(declare-fun e!2603682 () Bool)

(declare-fun tp!1281385 () Bool)

(declare-fun tp!1281387 () Bool)

(assert (=> b!4194414 (= e!2603682 (and tp!1281385 tp!1281387))))

(assert (=> b!4193715 (= tp!1281286 e!2603682)))

(declare-fun b!4194413 () Bool)

(declare-fun tp!1281386 () Bool)

(assert (=> b!4194413 (= e!2603682 tp!1281386)))

(declare-fun b!4194411 () Bool)

(assert (=> b!4194411 (= e!2603682 tp_is_empty!22137)))

(declare-fun b!4194412 () Bool)

(declare-fun tp!1281388 () Bool)

(declare-fun tp!1281389 () Bool)

(assert (=> b!4194412 (= e!2603682 (and tp!1281388 tp!1281389))))

(assert (= (and b!4193715 ((_ is ElementMatch!12587) (regOne!25687 (regex!7682 (h!51483 rules!3843))))) b!4194411))

(assert (= (and b!4193715 ((_ is Concat!20500) (regOne!25687 (regex!7682 (h!51483 rules!3843))))) b!4194412))

(assert (= (and b!4193715 ((_ is Star!12587) (regOne!25687 (regex!7682 (h!51483 rules!3843))))) b!4194413))

(assert (= (and b!4193715 ((_ is Union!12587) (regOne!25687 (regex!7682 (h!51483 rules!3843))))) b!4194414))

(declare-fun b!4194418 () Bool)

(declare-fun e!2603683 () Bool)

(declare-fun tp!1281390 () Bool)

(declare-fun tp!1281392 () Bool)

(assert (=> b!4194418 (= e!2603683 (and tp!1281390 tp!1281392))))

(assert (=> b!4193715 (= tp!1281288 e!2603683)))

(declare-fun b!4194417 () Bool)

(declare-fun tp!1281391 () Bool)

(assert (=> b!4194417 (= e!2603683 tp!1281391)))

(declare-fun b!4194415 () Bool)

(assert (=> b!4194415 (= e!2603683 tp_is_empty!22137)))

(declare-fun b!4194416 () Bool)

(declare-fun tp!1281393 () Bool)

(declare-fun tp!1281394 () Bool)

(assert (=> b!4194416 (= e!2603683 (and tp!1281393 tp!1281394))))

(assert (= (and b!4193715 ((_ is ElementMatch!12587) (regTwo!25687 (regex!7682 (h!51483 rules!3843))))) b!4194415))

(assert (= (and b!4193715 ((_ is Concat!20500) (regTwo!25687 (regex!7682 (h!51483 rules!3843))))) b!4194416))

(assert (= (and b!4193715 ((_ is Star!12587) (regTwo!25687 (regex!7682 (h!51483 rules!3843))))) b!4194417))

(assert (= (and b!4193715 ((_ is Union!12587) (regTwo!25687 (regex!7682 (h!51483 rules!3843))))) b!4194418))

(declare-fun b!4194421 () Bool)

(declare-fun b_free!122179 () Bool)

(declare-fun b_next!122883 () Bool)

(assert (=> b!4194421 (= b_free!122179 (not b_next!122883))))

(declare-fun t!346333 () Bool)

(declare-fun tb!251355 () Bool)

(assert (=> (and b!4194421 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346333) tb!251355))

(declare-fun result!306342 () Bool)

(assert (= result!306342 result!306204))

(assert (=> d!1236766 t!346333))

(declare-fun t!346335 () Bool)

(declare-fun tb!251357 () Bool)

(assert (=> (and b!4194421 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 r!4142))) t!346335) tb!251357))

(declare-fun result!306344 () Bool)

(assert (= result!306344 result!306134))

(assert (=> d!1236658 t!346335))

(declare-fun t!346337 () Bool)

(declare-fun tb!251359 () Bool)

(assert (=> (and b!4194421 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 rBis!167))) t!346337) tb!251359))

(declare-fun result!306346 () Bool)

(assert (= result!306346 result!306236))

(assert (=> d!1236870 t!346337))

(assert (=> d!1236656 t!346335))

(assert (=> d!1236882 t!346337))

(declare-fun tb!251361 () Bool)

(declare-fun t!346339 () Bool)

(assert (=> (and b!4194421 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346339) tb!251361))

(declare-fun result!306348 () Bool)

(assert (= result!306348 result!306276))

(assert (=> d!1236960 t!346339))

(declare-fun tb!251363 () Bool)

(declare-fun t!346341 () Bool)

(assert (=> (and b!4194421 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 r!4142))) t!346341) tb!251363))

(declare-fun result!306350 () Bool)

(assert (= result!306350 result!306308))

(assert (=> d!1237128 t!346341))

(declare-fun tb!251365 () Bool)

(declare-fun t!346343 () Bool)

(assert (=> (and b!4194421 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346343) tb!251365))

(declare-fun result!306352 () Bool)

(assert (= result!306352 result!306332))

(assert (=> d!1237178 t!346343))

(assert (=> d!1237124 t!346341))

(declare-fun tp!1281397 () Bool)

(declare-fun b_and!328881 () Bool)

(assert (=> b!4194421 (= tp!1281397 (and (=> t!346335 result!306344) (=> t!346339 result!306348) (=> t!346333 result!306342) (=> t!346341 result!306350) (=> t!346343 result!306352) (=> t!346337 result!306346) b_and!328881))))

(declare-fun b_free!122181 () Bool)

(declare-fun b_next!122885 () Bool)

(assert (=> b!4194421 (= b_free!122181 (not b_next!122885))))

(declare-fun t!346345 () Bool)

(declare-fun tb!251367 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 r!4142))) t!346345) tb!251367))

(declare-fun result!306354 () Bool)

(assert (= result!306354 result!306316))

(assert (=> d!1237128 t!346345))

(declare-fun t!346347 () Bool)

(declare-fun tb!251369 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544))))) t!346347) tb!251369))

(declare-fun result!306356 () Bool)

(assert (= result!306356 result!306128))

(assert (=> d!1236618 t!346347))

(declare-fun tb!251371 () Bool)

(declare-fun t!346349 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493709)))))) t!346349) tb!251371))

(declare-fun result!306358 () Bool)

(assert (= result!306358 result!306196))

(assert (=> d!1236742 t!346349))

(declare-fun t!346351 () Bool)

(declare-fun tb!251373 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493641)))))) t!346351) tb!251373))

(declare-fun result!306360 () Bool)

(assert (= result!306360 result!306268))

(assert (=> d!1236952 t!346351))

(declare-fun t!346353 () Bool)

(declare-fun tb!251375 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 r!4142))) t!346353) tb!251375))

(declare-fun result!306362 () Bool)

(assert (= result!306362 result!306176))

(assert (=> d!1236658 t!346353))

(declare-fun tb!251377 () Bool)

(declare-fun t!346355 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550)))) t!346355) tb!251377))

(declare-fun result!306364 () Bool)

(assert (= result!306364 result!306112))

(assert (=> b!4193260 t!346355))

(declare-fun t!346357 () Bool)

(declare-fun tb!251379 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 (get!14982 lt!1493571)))))) t!346357) tb!251379))

(declare-fun result!306366 () Bool)

(assert (= result!306366 result!306212))

(assert (=> d!1236818 t!346357))

(declare-fun tb!251381 () Bool)

(declare-fun t!346359 () Bool)

(assert (=> (and b!4194421 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 rBis!167))) t!346359) tb!251381))

(declare-fun result!306368 () Bool)

(assert (= result!306368 result!306244))

(assert (=> d!1236882 t!346359))

(declare-fun b_and!328883 () Bool)

(declare-fun tp!1281396 () Bool)

(assert (=> b!4194421 (= tp!1281396 (and (=> t!346351 result!306360) (=> t!346355 result!306364) (=> t!346357 result!306366) (=> t!346347 result!306356) (=> t!346359 result!306368) (=> t!346345 result!306354) (=> t!346353 result!306362) (=> t!346349 result!306358) b_and!328883))))

(declare-fun e!2603686 () Bool)

(assert (=> b!4194421 (= e!2603686 (and tp!1281397 tp!1281396))))

(declare-fun tp!1281398 () Bool)

(declare-fun e!2603685 () Bool)

(declare-fun b!4194420 () Bool)

(assert (=> b!4194420 (= e!2603685 (and tp!1281398 (inv!60609 (tag!8546 (h!51483 (t!346118 (t!346118 rules!3843))))) (inv!60612 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) e!2603686))))

(declare-fun b!4194419 () Bool)

(declare-fun e!2603684 () Bool)

(declare-fun tp!1281395 () Bool)

(assert (=> b!4194419 (= e!2603684 (and e!2603685 tp!1281395))))

(assert (=> b!4193689 (= tp!1281263 e!2603684)))

(assert (= b!4194420 b!4194421))

(assert (= b!4194419 b!4194420))

(assert (= (and b!4193689 ((_ is Cons!46063) (t!346118 (t!346118 rules!3843)))) b!4194419))

(declare-fun m!4783413 () Bool)

(assert (=> b!4194420 m!4783413))

(declare-fun m!4783417 () Bool)

(assert (=> b!4194420 m!4783417))

(declare-fun b!4194439 () Bool)

(declare-fun e!2603696 () Bool)

(declare-fun tp!1281399 () Bool)

(declare-fun tp!1281401 () Bool)

(assert (=> b!4194439 (= e!2603696 (and tp!1281399 tp!1281401))))

(assert (=> b!4193690 (= tp!1281266 e!2603696)))

(declare-fun b!4194438 () Bool)

(declare-fun tp!1281400 () Bool)

(assert (=> b!4194438 (= e!2603696 tp!1281400)))

(declare-fun b!4194436 () Bool)

(assert (=> b!4194436 (= e!2603696 tp_is_empty!22137)))

(declare-fun b!4194437 () Bool)

(declare-fun tp!1281402 () Bool)

(declare-fun tp!1281403 () Bool)

(assert (=> b!4194437 (= e!2603696 (and tp!1281402 tp!1281403))))

(assert (= (and b!4193690 ((_ is ElementMatch!12587) (regex!7682 (h!51483 (t!346118 rules!3843))))) b!4194436))

(assert (= (and b!4193690 ((_ is Concat!20500) (regex!7682 (h!51483 (t!346118 rules!3843))))) b!4194437))

(assert (= (and b!4193690 ((_ is Star!12587) (regex!7682 (h!51483 (t!346118 rules!3843))))) b!4194438))

(assert (= (and b!4193690 ((_ is Union!12587) (regex!7682 (h!51483 (t!346118 rules!3843))))) b!4194439))

(declare-fun b!4194440 () Bool)

(declare-fun e!2603697 () Bool)

(declare-fun tp!1281404 () Bool)

(assert (=> b!4194440 (= e!2603697 (and tp_is_empty!22137 tp!1281404))))

(assert (=> b!4193711 (= tp!1281285 e!2603697)))

(assert (= (and b!4193711 ((_ is Cons!46062) (t!346117 (t!346117 pBis!107)))) b!4194440))

(declare-fun tp!1281407 () Bool)

(declare-fun tp!1281405 () Bool)

(declare-fun e!2603698 () Bool)

(declare-fun b!4194441 () Bool)

(assert (=> b!4194441 (= e!2603698 (and (inv!60616 (left!34312 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))) tp!1281407 (inv!60616 (right!34642 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))) tp!1281405))))

(declare-fun b!4194443 () Bool)

(declare-fun e!2603699 () Bool)

(declare-fun tp!1281406 () Bool)

(assert (=> b!4194443 (= e!2603699 tp!1281406)))

(declare-fun b!4194442 () Bool)

(assert (=> b!4194442 (= e!2603698 (and (inv!60622 (xs!17199 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))) e!2603699))))

(assert (=> b!4193610 (= tp!1281254 (and (inv!60616 (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546)))) e!2603698))))

(assert (= (and b!4193610 ((_ is Node!13893) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))) b!4194441))

(assert (= b!4194442 b!4194443))

(assert (= (and b!4193610 ((_ is Leaf!21477) (c!715316 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))))) b!4194442))

(declare-fun m!4783435 () Bool)

(assert (=> b!4194441 m!4783435))

(declare-fun m!4783439 () Bool)

(assert (=> b!4194441 m!4783439))

(declare-fun m!4783441 () Bool)

(assert (=> b!4194442 m!4783441))

(assert (=> b!4193610 m!4782299))

(declare-fun b_lambda!123401 () Bool)

(assert (= b_lambda!123391 (or (and b!4194421 b_free!122179 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193161 b_free!122167) (and b!4193691 b_free!122175 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193164 b_free!122159 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193154 b_free!122163 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142)))) b_lambda!123401)))

(declare-fun b_lambda!123403 () Bool)

(assert (= b_lambda!123371 (or (and b!4194421 b_free!122179 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193154 b_free!122163 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193691 b_free!122175 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193161 b_free!122167 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193164 b_free!122159) b_lambda!123403)))

(declare-fun b_lambda!123405 () Bool)

(assert (= b_lambda!123393 (or (and b!4193161 b_free!122169) (and b!4193154 b_free!122165 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 r!4142)))) (and b!4193164 b_free!122161 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 r!4142)))) (and b!4193691 b_free!122177 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 r!4142)))) (and b!4194421 b_free!122181 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 r!4142)))) b_lambda!123405)))

(declare-fun b_lambda!123407 () Bool)

(assert (= b_lambda!123323 (or (and b!4193161 b_free!122169 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))))) (and b!4194421 b_free!122181 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))))) (and b!4193154 b_free!122165 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))))) (and b!4193164 b_free!122161 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))))) (and b!4193691 b_free!122177 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 (rule!10770 lt!1493550))))) b_lambda!123407)))

(declare-fun b_lambda!123409 () Bool)

(assert (= b_lambda!123367 (or (and b!4194421 b_free!122179 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193154 b_free!122163 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193691 b_free!122175 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193161 b_free!122167 (= (toValue!10378 (transformation!7682 r!4142)) (toValue!10378 (transformation!7682 rBis!167)))) (and b!4193164 b_free!122159) b_lambda!123409)))

(declare-fun b_lambda!123411 () Bool)

(assert (= b_lambda!123381 (or d!1236658 b_lambda!123411)))

(declare-fun bs!596781 () Bool)

(declare-fun d!1237196 () Bool)

(assert (= bs!596781 (and d!1237196 d!1236658)))

(assert (=> bs!596781 (= (dynLambda!19843 lambda!129499 lt!1493546) (= (list!16646 (dynLambda!19835 (toChars!10237 (transformation!7682 r!4142)) (dynLambda!19836 (toValue!10378 (transformation!7682 r!4142)) lt!1493546))) (list!16646 lt!1493546)))))

(declare-fun b_lambda!123419 () Bool)

(assert (=> (not b_lambda!123419) (not bs!596781)))

(assert (=> bs!596781 t!346172))

(declare-fun b_and!328885 () Bool)

(assert (= b_and!328853 (and (=> t!346172 result!306178) b_and!328885)))

(assert (=> bs!596781 t!346353))

(declare-fun b_and!328887 () Bool)

(assert (= b_and!328883 (and (=> t!346353 result!306362) b_and!328887)))

(assert (=> bs!596781 t!346182))

(declare-fun b_and!328889 () Bool)

(assert (= b_and!328857 (and (=> t!346182 result!306190) b_and!328889)))

(assert (=> bs!596781 t!346170))

(declare-fun b_and!328891 () Bool)

(assert (= b_and!328849 (and (=> t!346170 result!306176) b_and!328891)))

(assert (=> bs!596781 t!346174))

(declare-fun b_and!328893 () Bool)

(assert (= b_and!328855 (and (=> t!346174 result!306180) b_and!328893)))

(declare-fun b_lambda!123421 () Bool)

(assert (=> (not b_lambda!123421) (not bs!596781)))

(assert (=> bs!596781 t!346140))

(declare-fun b_and!328895 () Bool)

(assert (= b_and!328875 (and (=> t!346140 result!306138) b_and!328895)))

(assert (=> bs!596781 t!346142))

(declare-fun b_and!328897 () Bool)

(assert (= b_and!328877 (and (=> t!346142 result!306140) b_and!328897)))

(assert (=> bs!596781 t!346176))

(declare-fun b_and!328899 () Bool)

(assert (= b_and!328879 (and (=> t!346176 result!306184) b_and!328899)))

(assert (=> bs!596781 t!346138))

(declare-fun b_and!328901 () Bool)

(assert (= b_and!328873 (and (=> t!346138 result!306134) b_and!328901)))

(assert (=> bs!596781 t!346335))

(declare-fun b_and!328903 () Bool)

(assert (= b_and!328881 (and (=> t!346335 result!306344) b_and!328903)))

(assert (=> bs!596781 m!4782303))

(assert (=> bs!596781 m!4782307))

(assert (=> bs!596781 m!4782305))

(assert (=> bs!596781 m!4782093))

(assert (=> bs!596781 m!4782093))

(assert (=> bs!596781 m!4782303))

(assert (=> d!1236972 d!1237196))

(declare-fun b_lambda!123413 () Bool)

(assert (= b_lambda!123397 (or (and b!4194421 b_free!122179 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193161 b_free!122167) (and b!4193691 b_free!122175 (= (toValue!10378 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193164 b_free!122159 (= (toValue!10378 (transformation!7682 rBis!167)) (toValue!10378 (transformation!7682 r!4142)))) (and b!4193154 b_free!122163 (= (toValue!10378 (transformation!7682 (h!51483 rules!3843))) (toValue!10378 (transformation!7682 r!4142)))) b_lambda!123413)))

(declare-fun b_lambda!123415 () Bool)

(assert (= b_lambda!123369 (or (and b!4194421 b_free!122181 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 rBis!167)))) (and b!4193161 b_free!122169 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 rBis!167)))) (and b!4193164 b_free!122161) (and b!4193154 b_free!122165 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 rBis!167)))) (and b!4193691 b_free!122177 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 rBis!167)))) b_lambda!123415)))

(declare-fun b_lambda!123417 () Bool)

(assert (= b_lambda!123327 (or (and b!4193154 b_free!122165 (= (toChars!10237 (transformation!7682 (h!51483 rules!3843))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))))) (and b!4193691 b_free!122177 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 rules!3843)))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))))) (and b!4193161 b_free!122169 (= (toChars!10237 (transformation!7682 r!4142)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))))) (and b!4193164 b_free!122161 (= (toChars!10237 (transformation!7682 rBis!167)) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))))) (and b!4194421 b_free!122181 (= (toChars!10237 (transformation!7682 (h!51483 (t!346118 (t!346118 rules!3843))))) (toChars!10237 (transformation!7682 (rule!10770 (_1!25061 lt!1493544)))))) b_lambda!123417)))

(check-sat (not b!4193736) (not b!4194332) (not d!1236882) (not b!4194011) (not bm!292305) (not b!4194384) (not tb!251331) (not d!1236796) (not b!4194340) (not b!4194361) (not b!4194175) (not b_lambda!123403) (not bm!292337) (not d!1236962) (not tb!251259) (not d!1237170) (not b!4194371) (not b_lambda!123417) (not b!4194159) (not b!4194402) (not b!4193754) (not b_lambda!123357) (not b!4194376) (not d!1236786) (not b!4193920) (not b_lambda!123399) (not b!4194443) (not bm!292283) (not b!4194413) (not d!1237128) b_and!328903 (not b!4194328) (not b!4193995) tp_is_empty!22137 (not d!1236808) (not b!4194149) (not b_lambda!123351) (not b_next!122863) (not tb!251219) (not b!4194418) (not b_next!122871) (not b!4194380) (not b!4193859) (not b!4194404) (not b_lambda!123355) (not d!1236846) (not b!4193765) (not b!4194290) (not d!1236770) (not bm!292358) (not b!4193856) (not b!4193727) (not b!4194377) (not b!4193991) (not b!4194054) (not b!4194025) (not d!1236924) (not b!4194401) (not b!4193986) (not b!4193738) (not b!4194046) (not d!1237138) (not b!4194245) (not b_lambda!123419) (not d!1236820) (not tb!251211) (not b!4193870) (not b!4194291) (not b!4193955) (not b!4193886) (not d!1237172) (not tb!251227) (not b!4194047) (not b!4193981) (not b!4194373) (not b!4194158) (not b!4194058) (not tb!251251) (not b_lambda!123409) (not d!1236754) (not d!1237116) (not d!1236818) (not b!4194013) (not tb!251323) (not b_next!122873) (not b!4194383) (not d!1236810) (not b!4194412) (not b!4194409) (not bm!292264) (not b!4194021) (not b!4194439) (not b_lambda!123407) (not bm!292286) (not d!1236950) (not d!1236866) (not b!4193747) (not b!4193993) (not b!4193610) (not b!4194223) (not bm!292351) (not d!1237070) (not b!4193902) (not b!4194408) (not d!1236850) (not d!1236824) (not b!4194400) (not d!1236816) (not d!1237006) (not b!4194344) (not bm!292314) (not b!4193930) (not d!1236966) (not b!4194326) (not bm!292287) (not d!1237094) (not bm!292340) (not b!4194293) (not b!4194294) (not b!4194249) (not d!1236904) (not b!4194012) (not b!4194056) (not b!4194335) (not d!1236970) (not bm!292319) (not b!4194061) (not b!4194260) (not b_lambda!123415) (not d!1237180) (not d!1236872) (not b!4194365) (not bs!596781) (not b!4194331) (not d!1236994) (not b!4194419) (not b!4194416) (not d!1237072) (not b!4193906) (not b!4193983) (not b_next!122883) (not b!4193845) (not b!4193938) (not b_next!122881) (not b!4193899) (not d!1237114) (not b!4194246) (not b!4194244) (not d!1236760) (not b!4194366) (not b!4194241) (not b!4194259) (not b_next!122885) (not d!1236946) (not b!4193967) (not d!1236862) (not b_next!122869) (not b!4193918) (not b!4193764) (not b!4194357) (not b!4194178) (not b!4193815) (not b!4194193) (not b!4194053) (not d!1236878) (not b!4194363) (not b!4194339) (not b!4194280) (not b!4193855) (not b!4194265) b_and!328893 (not b!4193916) (not d!1237174) (not b_lambda!123405) (not d!1237086) (not b!4194437) (not b!4193801) (not b!4193766) (not bm!292332) (not b!4194024) (not d!1236738) (not d!1236784) (not b!4194406) (not b_lambda!123359) (not d!1236812) (not d!1236952) (not b!4194163) (not b!4194440) (not b!4194256) (not b!4193898) (not d!1236886) (not b!4193903) (not b_lambda!123413) (not b!4193887) (not b!4194367) (not b!4194274) (not b!4194039) (not bm!292284) (not bm!292339) (not b!4194285) (not b!4194283) (not bm!292347) (not b!4194347) (not b!4193860) (not b!4194015) (not b!4194242) (not b!4194330) (not b!4194152) (not b!4194148) (not b!4194016) (not b!4193808) (not b!4194037) (not d!1237140) (not b_lambda!123421) (not b!4194370) (not b!4194441) (not b!4194289) (not b!4193817) (not tb!251283) (not d!1236736) (not b!4194325) (not b!4194346) (not b!4194369) b_and!328901 (not bm!292331) (not d!1236804) (not d!1237052) (not b!4193989) (not b!4194191) (not b!4194303) (not b!4194358) (not b!4193726) (not b!4194359) (not bm!292285) (not b!4193843) (not b!4194420) (not b!4193803) (not tb!251347) b_and!328895 (not b!4193863) (not b!4194273) (not b!4194374) (not b!4193804) (not b!4193762) (not b!4193769) (not b!4193742) (not b!4193888) b_and!328899 (not b!4194343) (not b!4193755) (not b_next!122867) (not b!4194296) (not b!4194144) (not bm!292344) (not bm!292318) b_and!328897 (not bm!292345) (not b!4193990) (not tb!251291) (not b!4194045) (not b!4194342) (not b!4194438) (not bm!292334) (not bm!292341) (not d!1237152) (not b!4193956) b_and!328891 (not d!1237062) (not b!4194023) (not d!1237108) (not b!4194145) (not b!4193988) (not b!4194375) (not b!4194378) (not b!4194414) (not bm!292336) (not b_lambda!123349) (not bm!292343) (not bm!292330) (not b!4193866) (not b!4193858) (not b!4194292) (not d!1237104) (not b!4193757) (not b!4194156) (not d!1236828) (not b!4194003) (not d!1236834) (not b!4194207) (not b!4194295) (not b!4194334) b_and!328887 (not b!4194117) (not d!1236758) (not d!1236740) (not d!1236984) (not b!4194338) (not b!4193266) (not bm!292342) (not b!4194255) (not d!1236748) (not bm!292353) (not b!4193915) (not d!1236972) b_and!328889 (not d!1236996) (not b!4194336) (not b_lambda!123377) (not b!4194417) (not bm!292281) (not b!4194304) (not d!1237102) (not d!1237142) (not b_lambda!123353) (not d!1237134) b_and!328885 (not bm!292282) (not b!4193901) (not b!4194382) (not b!4194348) (not b_next!122865) (not b!4193761) (not b!4194194) (not d!1236742) (not b!4193729) (not b_next!122879) (not d!1236802) (not b!4193868) (not b!4193740) (not b_lambda!123379) (not bm!292338) (not b_lambda!123411) (not b!4194410) (not b!4194362) (not b!4194103) (not d!1237050) (not b!4193987) (not b!4194442) (not b_lambda!123401) (not b!4193299) (not b!4194048) (not b!4194057) (not b!4193992) (not b!4194379) (not b!4194147) (not bm!292288) (not b!4194405))
(check-sat b_and!328903 (not b_next!122873) b_and!328893 b_and!328901 b_and!328895 b_and!328891 b_and!328887 (not b_next!122863) (not b_next!122871) (not b_next!122883) (not b_next!122881) (not b_next!122869) (not b_next!122885) b_and!328899 (not b_next!122867) b_and!328897 b_and!328889 b_and!328885 (not b_next!122865) (not b_next!122879))
