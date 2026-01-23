; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!382292 () Bool)

(assert start!382292)

(declare-fun b!4053238 () Bool)

(declare-fun b_free!112761 () Bool)

(declare-fun b_next!113465 () Bool)

(assert (=> b!4053238 (= b_free!112761 (not b_next!113465))))

(declare-fun tp!1228762 () Bool)

(declare-fun b_and!311715 () Bool)

(assert (=> b!4053238 (= tp!1228762 b_and!311715)))

(declare-fun b_free!112763 () Bool)

(declare-fun b_next!113467 () Bool)

(assert (=> b!4053238 (= b_free!112763 (not b_next!113467))))

(declare-fun tp!1228772 () Bool)

(declare-fun b_and!311717 () Bool)

(assert (=> b!4053238 (= tp!1228772 b_and!311717)))

(declare-fun b!4053274 () Bool)

(declare-fun b_free!112765 () Bool)

(declare-fun b_next!113469 () Bool)

(assert (=> b!4053274 (= b_free!112765 (not b_next!113469))))

(declare-fun tp!1228770 () Bool)

(declare-fun b_and!311719 () Bool)

(assert (=> b!4053274 (= tp!1228770 b_and!311719)))

(declare-fun b_free!112767 () Bool)

(declare-fun b_next!113471 () Bool)

(assert (=> b!4053274 (= b_free!112767 (not b_next!113471))))

(declare-fun tp!1228766 () Bool)

(declare-fun b_and!311721 () Bool)

(assert (=> b!4053274 (= tp!1228766 b_and!311721)))

(declare-fun b!4053233 () Bool)

(declare-fun e!2514910 () Bool)

(declare-fun e!2514917 () Bool)

(assert (=> b!4053233 (= e!2514910 e!2514917)))

(declare-fun res!1652008 () Bool)

(assert (=> b!4053233 (=> res!1652008 e!2514917)))

(declare-datatypes ((C!23880 0))(
  ( (C!23881 (val!14034 Int)) )
))
(declare-datatypes ((List!43437 0))(
  ( (Nil!43313) (Cons!43313 (h!48733 C!23880) (t!336146 List!43437)) )
))
(declare-fun lt!1445082 () List!43437)

(declare-fun lt!1445039 () List!43437)

(declare-fun isPrefix!4029 (List!43437 List!43437) Bool)

(assert (=> b!4053233 (= res!1652008 (not (isPrefix!4029 lt!1445082 lt!1445039)))))

(declare-fun prefix!494 () List!43437)

(assert (=> b!4053233 (isPrefix!4029 prefix!494 lt!1445039)))

(declare-datatypes ((Unit!62620 0))(
  ( (Unit!62621) )
))
(declare-fun lt!1445060 () Unit!62620)

(declare-fun suffix!1299 () List!43437)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2864 (List!43437 List!43437) Unit!62620)

(assert (=> b!4053233 (= lt!1445060 (lemmaConcatTwoListThenFirstIsPrefix!2864 prefix!494 suffix!1299))))

(declare-fun lt!1445087 () List!43437)

(assert (=> b!4053233 (isPrefix!4029 lt!1445082 lt!1445087)))

(declare-fun lt!1445043 () Unit!62620)

(declare-fun suffixResult!105 () List!43437)

(assert (=> b!4053233 (= lt!1445043 (lemmaConcatTwoListThenFirstIsPrefix!2864 lt!1445082 suffixResult!105))))

(declare-fun b!4053234 () Bool)

(declare-fun e!2514896 () Bool)

(declare-fun tp_is_empty!20665 () Bool)

(declare-fun tp!1228771 () Bool)

(assert (=> b!4053234 (= e!2514896 (and tp_is_empty!20665 tp!1228771))))

(declare-fun b!4053235 () Bool)

(declare-fun e!2514897 () Bool)

(declare-fun e!2514900 () Bool)

(assert (=> b!4053235 (= e!2514897 e!2514900)))

(declare-fun res!1652020 () Bool)

(assert (=> b!4053235 (=> res!1652020 e!2514900)))

(declare-fun lt!1445067 () List!43437)

(declare-fun lt!1445063 () List!43437)

(assert (=> b!4053235 (= res!1652020 (or (not (= lt!1445039 lt!1445063)) (not (= lt!1445039 lt!1445067))))))

(assert (=> b!4053235 (= lt!1445063 lt!1445067)))

(declare-fun lt!1445032 () List!43437)

(declare-fun ++!11344 (List!43437 List!43437) List!43437)

(assert (=> b!4053235 (= lt!1445067 (++!11344 lt!1445082 lt!1445032))))

(declare-fun lt!1445051 () List!43437)

(assert (=> b!4053235 (= lt!1445063 (++!11344 lt!1445051 suffix!1299))))

(declare-fun lt!1445077 () List!43437)

(assert (=> b!4053235 (= lt!1445032 (++!11344 lt!1445077 suffix!1299))))

(declare-fun lt!1445053 () Unit!62620)

(declare-fun lemmaConcatAssociativity!2646 (List!43437 List!43437 List!43437) Unit!62620)

(assert (=> b!4053235 (= lt!1445053 (lemmaConcatAssociativity!2646 lt!1445082 lt!1445077 suffix!1299))))

(declare-fun b!4053236 () Bool)

(declare-fun res!1651999 () Bool)

(declare-fun e!2514906 () Bool)

(assert (=> b!4053236 (=> (not res!1651999) (not e!2514906))))

(declare-datatypes ((IArray!26311 0))(
  ( (IArray!26312 (innerList!13213 List!43437)) )
))
(declare-datatypes ((Conc!13153 0))(
  ( (Node!13153 (left!32614 Conc!13153) (right!32944 Conc!13153) (csize!26536 Int) (cheight!13364 Int)) (Leaf!20331 (xs!16459 IArray!26311) (csize!26537 Int)) (Empty!13153) )
))
(declare-datatypes ((BalanceConc!25900 0))(
  ( (BalanceConc!25901 (c!700246 Conc!13153)) )
))
(declare-datatypes ((List!43438 0))(
  ( (Nil!43314) (Cons!43314 (h!48734 (_ BitVec 16)) (t!336147 List!43438)) )
))
(declare-datatypes ((TokenValue!7172 0))(
  ( (FloatLiteralValue!14344 (text!50649 List!43438)) (TokenValueExt!7171 (__x!26561 Int)) (Broken!35860 (value!218455 List!43438)) (Object!7295) (End!7172) (Def!7172) (Underscore!7172) (Match!7172) (Else!7172) (Error!7172) (Case!7172) (If!7172) (Extends!7172) (Abstract!7172) (Class!7172) (Val!7172) (DelimiterValue!14344 (del!7232 List!43438)) (KeywordValue!7178 (value!218456 List!43438)) (CommentValue!14344 (value!218457 List!43438)) (WhitespaceValue!14344 (value!218458 List!43438)) (IndentationValue!7172 (value!218459 List!43438)) (String!49577) (Int32!7172) (Broken!35861 (value!218460 List!43438)) (Boolean!7173) (Unit!62622) (OperatorValue!7175 (op!7232 List!43438)) (IdentifierValue!14344 (value!218461 List!43438)) (IdentifierValue!14345 (value!218462 List!43438)) (WhitespaceValue!14345 (value!218463 List!43438)) (True!14344) (False!14344) (Broken!35862 (value!218464 List!43438)) (Broken!35863 (value!218465 List!43438)) (True!14345) (RightBrace!7172) (RightBracket!7172) (Colon!7172) (Null!7172) (Comma!7172) (LeftBracket!7172) (False!14345) (LeftBrace!7172) (ImaginaryLiteralValue!7172 (text!50650 List!43438)) (StringLiteralValue!21516 (value!218466 List!43438)) (EOFValue!7172 (value!218467 List!43438)) (IdentValue!7172 (value!218468 List!43438)) (DelimiterValue!14345 (value!218469 List!43438)) (DedentValue!7172 (value!218470 List!43438)) (NewLineValue!7172 (value!218471 List!43438)) (IntegerValue!21516 (value!218472 (_ BitVec 32)) (text!50651 List!43438)) (IntegerValue!21517 (value!218473 Int) (text!50652 List!43438)) (Times!7172) (Or!7172) (Equal!7172) (Minus!7172) (Broken!35864 (value!218474 List!43438)) (And!7172) (Div!7172) (LessEqual!7172) (Mod!7172) (Concat!19019) (Not!7172) (Plus!7172) (SpaceValue!7172 (value!218475 List!43438)) (IntegerValue!21518 (value!218476 Int) (text!50653 List!43438)) (StringLiteralValue!21517 (text!50654 List!43438)) (FloatLiteralValue!14345 (text!50655 List!43438)) (BytesLiteralValue!7172 (value!218477 List!43438)) (CommentValue!14345 (value!218478 List!43438)) (StringLiteralValue!21518 (value!218479 List!43438)) (ErrorTokenValue!7172 (msg!7233 List!43438)) )
))
(declare-datatypes ((Regex!11847 0))(
  ( (ElementMatch!11847 (c!700247 C!23880)) (Concat!19020 (regOne!24206 Regex!11847) (regTwo!24206 Regex!11847)) (EmptyExpr!11847) (Star!11847 (reg!12176 Regex!11847)) (EmptyLang!11847) (Union!11847 (regOne!24207 Regex!11847) (regTwo!24207 Regex!11847)) )
))
(declare-datatypes ((String!49578 0))(
  ( (String!49579 (value!218480 String)) )
))
(declare-datatypes ((TokenValueInjection!13772 0))(
  ( (TokenValueInjection!13773 (toValue!9498 Int) (toChars!9357 Int)) )
))
(declare-datatypes ((Rule!13684 0))(
  ( (Rule!13685 (regex!6942 Regex!11847) (tag!7802 String!49578) (isSeparator!6942 Bool) (transformation!6942 TokenValueInjection!13772)) )
))
(declare-datatypes ((Token!13022 0))(
  ( (Token!13023 (value!218481 TokenValue!7172) (rule!10026 Rule!13684) (size!32385 Int) (originalCharacters!7542 List!43437)) )
))
(declare-fun token!484 () Token!13022)

(declare-fun lt!1445065 () TokenValue!7172)

(assert (=> b!4053236 (= res!1651999 (= (value!218481 token!484) lt!1445065))))

(declare-fun b!4053237 () Bool)

(declare-fun e!2514889 () Bool)

(declare-fun e!2514904 () Bool)

(assert (=> b!4053237 (= e!2514889 e!2514904)))

(declare-fun res!1652006 () Bool)

(assert (=> b!4053237 (=> res!1652006 e!2514904)))

(declare-fun lt!1445079 () Int)

(declare-fun lt!1445034 () Int)

(assert (=> b!4053237 (= res!1652006 (>= lt!1445079 lt!1445034))))

(declare-fun lt!1445074 () Unit!62620)

(declare-fun e!2514920 () Unit!62620)

(assert (=> b!4053237 (= lt!1445074 e!2514920)))

(declare-fun c!700245 () Bool)

(assert (=> b!4053237 (= c!700245 (> lt!1445079 lt!1445034))))

(declare-datatypes ((tuple2!42386 0))(
  ( (tuple2!42387 (_1!24327 Token!13022) (_2!24327 List!43437)) )
))
(declare-datatypes ((Option!9356 0))(
  ( (None!9355) (Some!9355 (v!39767 tuple2!42386)) )
))
(declare-fun lt!1445075 () Option!9356)

(declare-fun lt!1445027 () List!43437)

(assert (=> b!4053237 (= (_2!24327 (v!39767 lt!1445075)) lt!1445027)))

(declare-fun lt!1445072 () Unit!62620)

(declare-fun lt!1445069 () List!43437)

(declare-fun lt!1445038 () List!43437)

(declare-fun lemmaSamePrefixThenSameSuffix!2190 (List!43437 List!43437 List!43437 List!43437 List!43437) Unit!62620)

(assert (=> b!4053237 (= lt!1445072 (lemmaSamePrefixThenSameSuffix!2190 lt!1445038 (_2!24327 (v!39767 lt!1445075)) lt!1445038 lt!1445027 lt!1445069))))

(declare-fun lt!1445068 () List!43437)

(assert (=> b!4053237 (isPrefix!4029 lt!1445038 lt!1445068)))

(declare-fun lt!1445080 () Unit!62620)

(assert (=> b!4053237 (= lt!1445080 (lemmaConcatTwoListThenFirstIsPrefix!2864 lt!1445038 lt!1445027))))

(declare-fun e!2514898 () Bool)

(assert (=> b!4053238 (= e!2514898 (and tp!1228762 tp!1228772))))

(declare-fun b!4053239 () Bool)

(declare-fun Unit!62623 () Unit!62620)

(assert (=> b!4053239 (= e!2514920 Unit!62623)))

(declare-fun b!4053240 () Bool)

(declare-fun res!1652017 () Bool)

(assert (=> b!4053240 (=> res!1652017 e!2514904)))

(declare-datatypes ((List!43439 0))(
  ( (Nil!43315) (Cons!43315 (h!48735 Rule!13684) (t!336148 List!43439)) )
))
(declare-fun rules!2999 () List!43439)

(declare-fun contains!8616 (List!43439 Rule!13684) Bool)

(assert (=> b!4053240 (= res!1652017 (not (contains!8616 rules!2999 (rule!10026 token!484))))))

(declare-fun b!4053241 () Bool)

(declare-fun res!1652022 () Bool)

(declare-fun e!2514912 () Bool)

(assert (=> b!4053241 (=> (not res!1652022) (not e!2514912))))

(declare-datatypes ((LexerInterface!6531 0))(
  ( (LexerInterfaceExt!6528 (__x!26562 Int)) (Lexer!6529) )
))
(declare-fun thiss!21717 () LexerInterface!6531)

(declare-fun rulesInvariant!5874 (LexerInterface!6531 List!43439) Bool)

(assert (=> b!4053241 (= res!1652022 (rulesInvariant!5874 thiss!21717 rules!2999))))

(declare-fun b!4053242 () Bool)

(declare-fun res!1652019 () Bool)

(assert (=> b!4053242 (=> (not res!1652019) (not e!2514906))))

(declare-fun size!32386 (List!43437) Int)

(assert (=> b!4053242 (= res!1652019 (= (size!32385 token!484) (size!32386 (originalCharacters!7542 token!484))))))

(declare-fun b!4053243 () Bool)

(declare-fun e!2514914 () Bool)

(declare-fun e!2514902 () Bool)

(assert (=> b!4053243 (= e!2514914 e!2514902)))

(declare-fun res!1652026 () Bool)

(assert (=> b!4053243 (=> res!1652026 e!2514902)))

(declare-fun matchR!5800 (Regex!11847 List!43437) Bool)

(assert (=> b!4053243 (= res!1652026 (not (matchR!5800 (regex!6942 (rule!10026 token!484)) lt!1445082)))))

(assert (=> b!4053243 (isPrefix!4029 lt!1445082 lt!1445069)))

(declare-fun newSuffix!27 () List!43437)

(declare-fun lt!1445076 () Unit!62620)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!822 (List!43437 List!43437 List!43437) Unit!62620)

(assert (=> b!4053243 (= lt!1445076 (lemmaPrefixStaysPrefixWhenAddingToSuffix!822 lt!1445082 prefix!494 newSuffix!27))))

(declare-fun lt!1445055 () Unit!62620)

(assert (=> b!4053243 (= lt!1445055 (lemmaPrefixStaysPrefixWhenAddingToSuffix!822 lt!1445082 prefix!494 suffix!1299))))

(declare-fun b!4053244 () Bool)

(declare-fun res!1652023 () Bool)

(assert (=> b!4053244 (=> (not res!1652023) (not e!2514912))))

(assert (=> b!4053244 (= res!1652023 (>= (size!32386 suffix!1299) (size!32386 newSuffix!27)))))

(declare-fun b!4053245 () Bool)

(declare-fun e!2514913 () Bool)

(declare-fun e!2514890 () Bool)

(assert (=> b!4053245 (= e!2514913 e!2514890)))

(declare-fun res!1652011 () Bool)

(assert (=> b!4053245 (=> (not res!1652011) (not e!2514890))))

(declare-fun lt!1445059 () List!43437)

(assert (=> b!4053245 (= res!1652011 (= lt!1445059 lt!1445069))))

(assert (=> b!4053245 (= lt!1445069 (++!11344 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!43437)

(assert (=> b!4053245 (= lt!1445059 (++!11344 lt!1445082 newSuffixResult!27))))

(declare-fun b!4053246 () Bool)

(declare-fun e!2514901 () Bool)

(declare-fun tp!1228768 () Bool)

(assert (=> b!4053246 (= e!2514901 (and tp_is_empty!20665 tp!1228768))))

(declare-fun e!2514899 () Bool)

(declare-fun tp!1228769 () Bool)

(declare-fun b!4053247 () Bool)

(declare-fun e!2514894 () Bool)

(declare-fun inv!57903 (String!49578) Bool)

(declare-fun inv!57906 (TokenValueInjection!13772) Bool)

(assert (=> b!4053247 (= e!2514899 (and tp!1228769 (inv!57903 (tag!7802 (rule!10026 token!484))) (inv!57906 (transformation!6942 (rule!10026 token!484))) e!2514894))))

(declare-fun b!4053248 () Bool)

(declare-fun e!2514893 () Bool)

(declare-fun tp!1228767 () Bool)

(assert (=> b!4053248 (= e!2514893 (and tp_is_empty!20665 tp!1228767))))

(declare-fun b!4053249 () Bool)

(declare-fun e!2514911 () Bool)

(assert (=> b!4053249 (= e!2514911 (not e!2514910))))

(declare-fun res!1652004 () Bool)

(assert (=> b!4053249 (=> res!1652004 e!2514910)))

(assert (=> b!4053249 (= res!1652004 (not (= lt!1445087 lt!1445039)))))

(assert (=> b!4053249 (= lt!1445087 (++!11344 lt!1445082 suffixResult!105))))

(declare-fun lt!1445057 () Unit!62620)

(declare-fun lemmaInv!1151 (TokenValueInjection!13772) Unit!62620)

(assert (=> b!4053249 (= lt!1445057 (lemmaInv!1151 (transformation!6942 (rule!10026 token!484))))))

(declare-fun ruleValid!2872 (LexerInterface!6531 Rule!13684) Bool)

(assert (=> b!4053249 (ruleValid!2872 thiss!21717 (rule!10026 token!484))))

(declare-fun lt!1445058 () Unit!62620)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1942 (LexerInterface!6531 Rule!13684 List!43439) Unit!62620)

(assert (=> b!4053249 (= lt!1445058 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1942 thiss!21717 (rule!10026 token!484) rules!2999))))

(declare-fun b!4053250 () Bool)

(assert (=> b!4053250 (= e!2514906 (and (= (size!32385 token!484) lt!1445034) (= (originalCharacters!7542 token!484) lt!1445082)))))

(declare-fun b!4053251 () Bool)

(declare-fun e!2514918 () Bool)

(declare-fun tp!1228774 () Bool)

(assert (=> b!4053251 (= e!2514918 (and tp_is_empty!20665 tp!1228774))))

(declare-fun b!4053252 () Bool)

(declare-fun e!2514908 () Bool)

(declare-fun e!2514921 () Bool)

(assert (=> b!4053252 (= e!2514908 e!2514921)))

(declare-fun res!1652015 () Bool)

(assert (=> b!4053252 (=> res!1652015 e!2514921)))

(assert (=> b!4053252 (= res!1652015 (not (isPrefix!4029 lt!1445038 lt!1445039)))))

(declare-fun lt!1445062 () List!43437)

(assert (=> b!4053252 (isPrefix!4029 lt!1445038 lt!1445062)))

(declare-fun lt!1445070 () Unit!62620)

(declare-fun lt!1445035 () List!43437)

(assert (=> b!4053252 (= lt!1445070 (lemmaPrefixStaysPrefixWhenAddingToSuffix!822 lt!1445038 lt!1445069 lt!1445035))))

(declare-fun b!4053253 () Bool)

(declare-fun res!1652021 () Bool)

(assert (=> b!4053253 (=> res!1652021 e!2514921)))

(declare-fun lt!1445029 () List!43437)

(assert (=> b!4053253 (= res!1652021 (not (= lt!1445029 lt!1445069)))))

(declare-fun b!4053254 () Bool)

(declare-fun e!2514903 () Bool)

(declare-fun e!2514892 () Bool)

(assert (=> b!4053254 (= e!2514903 e!2514892)))

(declare-fun res!1652001 () Bool)

(assert (=> b!4053254 (=> res!1652001 e!2514892)))

(get-info :version)

(assert (=> b!4053254 (= res!1652001 (not ((_ is Some!9355) lt!1445075)))))

(declare-fun maxPrefix!3829 (LexerInterface!6531 List!43439 List!43437) Option!9356)

(assert (=> b!4053254 (= lt!1445075 (maxPrefix!3829 thiss!21717 rules!2999 lt!1445069))))

(declare-fun lt!1445046 () List!43437)

(declare-fun lt!1445044 () Token!13022)

(declare-fun lt!1445054 () tuple2!42386)

(assert (=> b!4053254 (and (= suffixResult!105 lt!1445046) (= lt!1445054 (tuple2!42387 lt!1445044 lt!1445046)))))

(declare-fun lt!1445052 () Unit!62620)

(assert (=> b!4053254 (= lt!1445052 (lemmaSamePrefixThenSameSuffix!2190 lt!1445082 suffixResult!105 lt!1445082 lt!1445046 lt!1445039))))

(declare-fun lt!1445078 () List!43437)

(assert (=> b!4053254 (isPrefix!4029 lt!1445082 lt!1445078)))

(declare-fun lt!1445037 () Unit!62620)

(assert (=> b!4053254 (= lt!1445037 (lemmaConcatTwoListThenFirstIsPrefix!2864 lt!1445082 lt!1445046))))

(declare-fun b!4053255 () Bool)

(declare-fun e!2514891 () Bool)

(assert (=> b!4053255 (= e!2514891 e!2514908)))

(declare-fun res!1652012 () Bool)

(assert (=> b!4053255 (=> res!1652012 e!2514908)))

(assert (=> b!4053255 (= res!1652012 (not (= lt!1445062 lt!1445039)))))

(declare-fun lt!1445064 () List!43437)

(assert (=> b!4053255 (= lt!1445062 (++!11344 prefix!494 lt!1445064))))

(assert (=> b!4053255 (= lt!1445062 (++!11344 lt!1445069 lt!1445035))))

(declare-fun lt!1445085 () Unit!62620)

(assert (=> b!4053255 (= lt!1445085 (lemmaConcatAssociativity!2646 prefix!494 newSuffix!27 lt!1445035))))

(declare-fun b!4053256 () Bool)

(declare-fun res!1652013 () Bool)

(assert (=> b!4053256 (=> res!1652013 e!2514904)))

(assert (=> b!4053256 (= res!1652013 (not (matchR!5800 (regex!6942 (rule!10026 (_1!24327 (v!39767 lt!1445075)))) lt!1445038)))))

(declare-fun b!4053257 () Bool)

(assert (=> b!4053257 (= e!2514900 e!2514914)))

(declare-fun res!1652027 () Bool)

(assert (=> b!4053257 (=> res!1652027 e!2514914)))

(declare-fun lt!1445045 () Option!9356)

(declare-fun lt!1445048 () Option!9356)

(assert (=> b!4053257 (= res!1652027 (not (= lt!1445045 lt!1445048)))))

(assert (=> b!4053257 (= lt!1445045 (Some!9355 (tuple2!42387 lt!1445044 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2841 (LexerInterface!6531 Rule!13684 List!43437) Option!9356)

(assert (=> b!4053257 (= lt!1445045 (maxPrefixOneRule!2841 thiss!21717 (rule!10026 token!484) lt!1445039))))

(assert (=> b!4053257 (= lt!1445044 (Token!13023 lt!1445065 (rule!10026 token!484) lt!1445034 lt!1445082))))

(declare-fun apply!10131 (TokenValueInjection!13772 BalanceConc!25900) TokenValue!7172)

(declare-fun seqFromList!5159 (List!43437) BalanceConc!25900)

(assert (=> b!4053257 (= lt!1445065 (apply!10131 (transformation!6942 (rule!10026 token!484)) (seqFromList!5159 lt!1445082)))))

(declare-fun lt!1445033 () Unit!62620)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1647 (LexerInterface!6531 List!43439 List!43437 List!43437 List!43437 Rule!13684) Unit!62620)

(assert (=> b!4053257 (= lt!1445033 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1647 thiss!21717 rules!2999 lt!1445082 lt!1445039 suffixResult!105 (rule!10026 token!484)))))

(assert (=> b!4053257 (= lt!1445032 suffixResult!105)))

(declare-fun lt!1445036 () Unit!62620)

(assert (=> b!4053257 (= lt!1445036 (lemmaSamePrefixThenSameSuffix!2190 lt!1445082 lt!1445032 lt!1445082 suffixResult!105 lt!1445039))))

(assert (=> b!4053257 (isPrefix!4029 lt!1445082 lt!1445067)))

(declare-fun lt!1445081 () Unit!62620)

(assert (=> b!4053257 (= lt!1445081 (lemmaConcatTwoListThenFirstIsPrefix!2864 lt!1445082 lt!1445032))))

(declare-fun b!4053258 () Bool)

(assert (=> b!4053258 (= e!2514917 e!2514897)))

(declare-fun res!1652024 () Bool)

(assert (=> b!4053258 (=> res!1652024 e!2514897)))

(assert (=> b!4053258 (= res!1652024 (not (= lt!1445051 prefix!494)))))

(assert (=> b!4053258 (= lt!1445051 (++!11344 lt!1445082 lt!1445077))))

(declare-fun getSuffix!2446 (List!43437 List!43437) List!43437)

(assert (=> b!4053258 (= lt!1445077 (getSuffix!2446 prefix!494 lt!1445082))))

(assert (=> b!4053258 (isPrefix!4029 lt!1445082 prefix!494)))

(declare-fun lt!1445056 () Unit!62620)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!593 (List!43437 List!43437 List!43437) Unit!62620)

(assert (=> b!4053258 (= lt!1445056 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!593 prefix!494 lt!1445082 lt!1445039))))

(declare-fun res!1652005 () Bool)

(assert (=> start!382292 (=> (not res!1652005) (not e!2514912))))

(assert (=> start!382292 (= res!1652005 ((_ is Lexer!6529) thiss!21717))))

(assert (=> start!382292 e!2514912))

(assert (=> start!382292 e!2514893))

(declare-fun e!2514915 () Bool)

(declare-fun inv!57907 (Token!13022) Bool)

(assert (=> start!382292 (and (inv!57907 token!484) e!2514915)))

(assert (=> start!382292 e!2514896))

(assert (=> start!382292 e!2514918))

(declare-fun e!2514907 () Bool)

(assert (=> start!382292 e!2514907))

(assert (=> start!382292 true))

(declare-fun e!2514919 () Bool)

(assert (=> start!382292 e!2514919))

(assert (=> start!382292 e!2514901))

(declare-fun b!4053259 () Bool)

(assert (=> b!4053259 (= e!2514912 e!2514913)))

(declare-fun res!1652018 () Bool)

(assert (=> b!4053259 (=> (not res!1652018) (not e!2514913))))

(declare-fun lt!1445049 () Int)

(assert (=> b!4053259 (= res!1652018 (>= lt!1445049 lt!1445034))))

(assert (=> b!4053259 (= lt!1445034 (size!32386 lt!1445082))))

(assert (=> b!4053259 (= lt!1445049 (size!32386 prefix!494))))

(declare-fun list!16140 (BalanceConc!25900) List!43437)

(declare-fun charsOf!4758 (Token!13022) BalanceConc!25900)

(assert (=> b!4053259 (= lt!1445082 (list!16140 (charsOf!4758 token!484)))))

(declare-fun b!4053260 () Bool)

(declare-fun res!1652010 () Bool)

(assert (=> b!4053260 (=> res!1652010 e!2514904)))

(assert (=> b!4053260 (= res!1652010 (not (isPrefix!4029 lt!1445038 lt!1445069)))))

(declare-fun b!4053261 () Bool)

(declare-fun lt!1445073 () Option!9356)

(declare-fun lt!1445084 () Token!13022)

(assert (=> b!4053261 (= e!2514904 (= lt!1445073 (Some!9355 (tuple2!42387 lt!1445084 lt!1445027))))))

(assert (=> b!4053261 (isPrefix!4029 lt!1445069 lt!1445069)))

(declare-fun lt!1445050 () Unit!62620)

(declare-fun lemmaIsPrefixRefl!2596 (List!43437 List!43437) Unit!62620)

(assert (=> b!4053261 (= lt!1445050 (lemmaIsPrefixRefl!2596 lt!1445069 lt!1445069))))

(declare-fun lt!1445041 () Unit!62620)

(declare-fun lt!1445030 () BalanceConc!25900)

(declare-fun lemmaSemiInverse!1921 (TokenValueInjection!13772 BalanceConc!25900) Unit!62620)

(assert (=> b!4053261 (= lt!1445041 (lemmaSemiInverse!1921 (transformation!6942 (rule!10026 (_1!24327 (v!39767 lt!1445075)))) lt!1445030))))

(declare-fun b!4053262 () Bool)

(declare-fun res!1652002 () Bool)

(assert (=> b!4053262 (=> res!1652002 e!2514904)))

(assert (=> b!4053262 (= res!1652002 (not (contains!8616 rules!2999 (rule!10026 (_1!24327 (v!39767 lt!1445075))))))))

(declare-fun b!4053263 () Bool)

(assert (=> b!4053263 (= e!2514902 e!2514903)))

(declare-fun res!1652000 () Bool)

(assert (=> b!4053263 (=> res!1652000 e!2514903)))

(assert (=> b!4053263 (= res!1652000 (not (= lt!1445078 lt!1445039)))))

(assert (=> b!4053263 (= lt!1445078 (++!11344 lt!1445082 lt!1445046))))

(assert (=> b!4053263 (= lt!1445046 (getSuffix!2446 lt!1445039 lt!1445082))))

(assert (=> b!4053263 e!2514906))

(declare-fun res!1652009 () Bool)

(assert (=> b!4053263 (=> (not res!1652009) (not e!2514906))))

(assert (=> b!4053263 (= res!1652009 (isPrefix!4029 lt!1445039 lt!1445039))))

(declare-fun lt!1445042 () Unit!62620)

(assert (=> b!4053263 (= lt!1445042 (lemmaIsPrefixRefl!2596 lt!1445039 lt!1445039))))

(declare-fun b!4053264 () Bool)

(declare-fun e!2514922 () Bool)

(assert (=> b!4053264 (= e!2514892 e!2514922)))

(declare-fun res!1652014 () Bool)

(assert (=> b!4053264 (=> res!1652014 e!2514922)))

(assert (=> b!4053264 (= res!1652014 (not (= lt!1445073 (Some!9355 (v!39767 lt!1445075)))))))

(assert (=> b!4053264 (isPrefix!4029 lt!1445038 (++!11344 lt!1445038 newSuffixResult!27))))

(declare-fun lt!1445040 () Unit!62620)

(assert (=> b!4053264 (= lt!1445040 (lemmaConcatTwoListThenFirstIsPrefix!2864 lt!1445038 newSuffixResult!27))))

(assert (=> b!4053264 (isPrefix!4029 lt!1445038 lt!1445029)))

(assert (=> b!4053264 (= lt!1445029 (++!11344 lt!1445038 (_2!24327 (v!39767 lt!1445075))))))

(declare-fun lt!1445066 () Unit!62620)

(assert (=> b!4053264 (= lt!1445066 (lemmaConcatTwoListThenFirstIsPrefix!2864 lt!1445038 (_2!24327 (v!39767 lt!1445075))))))

(assert (=> b!4053264 (= lt!1445073 (Some!9355 (tuple2!42387 lt!1445084 (_2!24327 (v!39767 lt!1445075)))))))

(assert (=> b!4053264 (= lt!1445073 (maxPrefixOneRule!2841 thiss!21717 (rule!10026 (_1!24327 (v!39767 lt!1445075))) lt!1445069))))

(declare-fun lt!1445083 () TokenValue!7172)

(assert (=> b!4053264 (= lt!1445084 (Token!13023 lt!1445083 (rule!10026 (_1!24327 (v!39767 lt!1445075))) lt!1445079 lt!1445038))))

(assert (=> b!4053264 (= lt!1445079 (size!32386 lt!1445038))))

(assert (=> b!4053264 (= lt!1445083 (apply!10131 (transformation!6942 (rule!10026 (_1!24327 (v!39767 lt!1445075)))) lt!1445030))))

(assert (=> b!4053264 (= lt!1445030 (seqFromList!5159 lt!1445038))))

(declare-fun lt!1445086 () Unit!62620)

(assert (=> b!4053264 (= lt!1445086 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1647 thiss!21717 rules!2999 lt!1445038 lt!1445069 (_2!24327 (v!39767 lt!1445075)) (rule!10026 (_1!24327 (v!39767 lt!1445075)))))))

(assert (=> b!4053264 (= lt!1445038 (list!16140 (charsOf!4758 (_1!24327 (v!39767 lt!1445075)))))))

(declare-fun lt!1445071 () Unit!62620)

(assert (=> b!4053264 (= lt!1445071 (lemmaInv!1151 (transformation!6942 (rule!10026 (_1!24327 (v!39767 lt!1445075))))))))

(assert (=> b!4053264 (ruleValid!2872 thiss!21717 (rule!10026 (_1!24327 (v!39767 lt!1445075))))))

(declare-fun lt!1445028 () Unit!62620)

(assert (=> b!4053264 (= lt!1445028 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1942 thiss!21717 (rule!10026 (_1!24327 (v!39767 lt!1445075))) rules!2999))))

(declare-fun lt!1445031 () Unit!62620)

(declare-fun lemmaCharactersSize!1461 (Token!13022) Unit!62620)

(assert (=> b!4053264 (= lt!1445031 (lemmaCharactersSize!1461 token!484))))

(declare-fun lt!1445061 () Unit!62620)

(assert (=> b!4053264 (= lt!1445061 (lemmaCharactersSize!1461 (_1!24327 (v!39767 lt!1445075))))))

(declare-fun b!4053265 () Bool)

(assert (=> b!4053265 (= e!2514890 e!2514911)))

(declare-fun res!1651998 () Bool)

(assert (=> b!4053265 (=> (not res!1651998) (not e!2514911))))

(assert (=> b!4053265 (= res!1651998 (= (maxPrefix!3829 thiss!21717 rules!2999 lt!1445039) lt!1445048))))

(assert (=> b!4053265 (= lt!1445048 (Some!9355 lt!1445054))))

(assert (=> b!4053265 (= lt!1445054 (tuple2!42387 token!484 suffixResult!105))))

(assert (=> b!4053265 (= lt!1445039 (++!11344 prefix!494 suffix!1299))))

(declare-fun b!4053266 () Bool)

(declare-fun Unit!62624 () Unit!62620)

(assert (=> b!4053266 (= e!2514920 Unit!62624)))

(declare-fun lt!1445047 () Unit!62620)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!468 (LexerInterface!6531 List!43439 Rule!13684 List!43437 List!43437 List!43437 Rule!13684) Unit!62620)

(assert (=> b!4053266 (= lt!1445047 (lemmaMaxPrefixOutputsMaxPrefix!468 thiss!21717 rules!2999 (rule!10026 token!484) lt!1445082 lt!1445039 lt!1445038 (rule!10026 (_1!24327 (v!39767 lt!1445075)))))))

(declare-fun res!1651997 () Bool)

(assert (=> b!4053266 (= res!1651997 (not (matchR!5800 (regex!6942 (rule!10026 (_1!24327 (v!39767 lt!1445075)))) lt!1445038)))))

(declare-fun e!2514905 () Bool)

(assert (=> b!4053266 (=> (not res!1651997) (not e!2514905))))

(assert (=> b!4053266 e!2514905))

(declare-fun b!4053267 () Bool)

(declare-fun e!2514888 () Bool)

(declare-fun tp!1228773 () Bool)

(assert (=> b!4053267 (= e!2514919 (and e!2514888 tp!1228773))))

(declare-fun b!4053268 () Bool)

(declare-fun res!1652003 () Bool)

(assert (=> b!4053268 (=> (not res!1652003) (not e!2514912))))

(declare-fun isEmpty!25851 (List!43439) Bool)

(assert (=> b!4053268 (= res!1652003 (not (isEmpty!25851 rules!2999)))))

(declare-fun b!4053269 () Bool)

(declare-fun res!1652007 () Bool)

(assert (=> b!4053269 (=> (not res!1652007) (not e!2514912))))

(assert (=> b!4053269 (= res!1652007 (isPrefix!4029 newSuffix!27 suffix!1299))))

(declare-fun b!4053270 () Bool)

(declare-fun tp!1228763 () Bool)

(assert (=> b!4053270 (= e!2514907 (and tp_is_empty!20665 tp!1228763))))

(declare-fun b!4053271 () Bool)

(declare-fun tp!1228765 () Bool)

(assert (=> b!4053271 (= e!2514888 (and tp!1228765 (inv!57903 (tag!7802 (h!48735 rules!2999))) (inv!57906 (transformation!6942 (h!48735 rules!2999))) e!2514898))))

(declare-fun b!4053272 () Bool)

(assert (=> b!4053272 (= e!2514905 false)))

(declare-fun b!4053273 () Bool)

(declare-fun tp!1228764 () Bool)

(declare-fun inv!21 (TokenValue!7172) Bool)

(assert (=> b!4053273 (= e!2514915 (and (inv!21 (value!218481 token!484)) e!2514899 tp!1228764))))

(assert (=> b!4053274 (= e!2514894 (and tp!1228770 tp!1228766))))

(declare-fun b!4053275 () Bool)

(assert (=> b!4053275 (= e!2514922 e!2514891)))

(declare-fun res!1652016 () Bool)

(assert (=> b!4053275 (=> res!1652016 e!2514891)))

(assert (=> b!4053275 (= res!1652016 (not (= lt!1445064 suffix!1299)))))

(assert (=> b!4053275 (= lt!1445064 (++!11344 newSuffix!27 lt!1445035))))

(assert (=> b!4053275 (= lt!1445035 (getSuffix!2446 suffix!1299 newSuffix!27))))

(declare-fun b!4053276 () Bool)

(assert (=> b!4053276 (= e!2514921 e!2514889)))

(declare-fun res!1652025 () Bool)

(assert (=> b!4053276 (=> res!1652025 e!2514889)))

(assert (=> b!4053276 (= res!1652025 (not (= lt!1445068 lt!1445069)))))

(assert (=> b!4053276 (= lt!1445068 (++!11344 lt!1445038 lt!1445027))))

(assert (=> b!4053276 (= lt!1445027 (getSuffix!2446 lt!1445069 lt!1445038))))

(assert (= (and start!382292 res!1652005) b!4053268))

(assert (= (and b!4053268 res!1652003) b!4053241))

(assert (= (and b!4053241 res!1652022) b!4053244))

(assert (= (and b!4053244 res!1652023) b!4053269))

(assert (= (and b!4053269 res!1652007) b!4053259))

(assert (= (and b!4053259 res!1652018) b!4053245))

(assert (= (and b!4053245 res!1652011) b!4053265))

(assert (= (and b!4053265 res!1651998) b!4053249))

(assert (= (and b!4053249 (not res!1652004)) b!4053233))

(assert (= (and b!4053233 (not res!1652008)) b!4053258))

(assert (= (and b!4053258 (not res!1652024)) b!4053235))

(assert (= (and b!4053235 (not res!1652020)) b!4053257))

(assert (= (and b!4053257 (not res!1652027)) b!4053243))

(assert (= (and b!4053243 (not res!1652026)) b!4053263))

(assert (= (and b!4053263 res!1652009) b!4053236))

(assert (= (and b!4053236 res!1651999) b!4053242))

(assert (= (and b!4053242 res!1652019) b!4053250))

(assert (= (and b!4053263 (not res!1652000)) b!4053254))

(assert (= (and b!4053254 (not res!1652001)) b!4053264))

(assert (= (and b!4053264 (not res!1652014)) b!4053275))

(assert (= (and b!4053275 (not res!1652016)) b!4053255))

(assert (= (and b!4053255 (not res!1652012)) b!4053252))

(assert (= (and b!4053252 (not res!1652015)) b!4053253))

(assert (= (and b!4053253 (not res!1652021)) b!4053276))

(assert (= (and b!4053276 (not res!1652025)) b!4053237))

(assert (= (and b!4053237 c!700245) b!4053266))

(assert (= (and b!4053237 (not c!700245)) b!4053239))

(assert (= (and b!4053266 res!1651997) b!4053272))

(assert (= (and b!4053237 (not res!1652006)) b!4053260))

(assert (= (and b!4053260 (not res!1652010)) b!4053262))

(assert (= (and b!4053262 (not res!1652002)) b!4053240))

(assert (= (and b!4053240 (not res!1652017)) b!4053256))

(assert (= (and b!4053256 (not res!1652013)) b!4053261))

(assert (= (and start!382292 ((_ is Cons!43313) prefix!494)) b!4053248))

(assert (= b!4053247 b!4053274))

(assert (= b!4053273 b!4053247))

(assert (= start!382292 b!4053273))

(assert (= (and start!382292 ((_ is Cons!43313) suffixResult!105)) b!4053234))

(assert (= (and start!382292 ((_ is Cons!43313) suffix!1299)) b!4053251))

(assert (= (and start!382292 ((_ is Cons!43313) newSuffix!27)) b!4053270))

(assert (= b!4053271 b!4053238))

(assert (= b!4053267 b!4053271))

(assert (= (and start!382292 ((_ is Cons!43315) rules!2999)) b!4053267))

(assert (= (and start!382292 ((_ is Cons!43313) newSuffixResult!27)) b!4053246))

(declare-fun m!4655463 () Bool)

(assert (=> b!4053237 m!4655463))

(declare-fun m!4655465 () Bool)

(assert (=> b!4053237 m!4655465))

(declare-fun m!4655467 () Bool)

(assert (=> b!4053237 m!4655467))

(declare-fun m!4655469 () Bool)

(assert (=> b!4053252 m!4655469))

(declare-fun m!4655471 () Bool)

(assert (=> b!4053252 m!4655471))

(declare-fun m!4655473 () Bool)

(assert (=> b!4053252 m!4655473))

(declare-fun m!4655475 () Bool)

(assert (=> b!4053245 m!4655475))

(declare-fun m!4655477 () Bool)

(assert (=> b!4053245 m!4655477))

(declare-fun m!4655479 () Bool)

(assert (=> b!4053271 m!4655479))

(declare-fun m!4655481 () Bool)

(assert (=> b!4053271 m!4655481))

(declare-fun m!4655483 () Bool)

(assert (=> b!4053275 m!4655483))

(declare-fun m!4655485 () Bool)

(assert (=> b!4053275 m!4655485))

(declare-fun m!4655487 () Bool)

(assert (=> b!4053268 m!4655487))

(declare-fun m!4655489 () Bool)

(assert (=> b!4053249 m!4655489))

(declare-fun m!4655491 () Bool)

(assert (=> b!4053249 m!4655491))

(declare-fun m!4655493 () Bool)

(assert (=> b!4053249 m!4655493))

(declare-fun m!4655495 () Bool)

(assert (=> b!4053249 m!4655495))

(declare-fun m!4655497 () Bool)

(assert (=> b!4053263 m!4655497))

(declare-fun m!4655499 () Bool)

(assert (=> b!4053263 m!4655499))

(declare-fun m!4655501 () Bool)

(assert (=> b!4053263 m!4655501))

(declare-fun m!4655503 () Bool)

(assert (=> b!4053263 m!4655503))

(declare-fun m!4655505 () Bool)

(assert (=> b!4053242 m!4655505))

(declare-fun m!4655507 () Bool)

(assert (=> b!4053244 m!4655507))

(declare-fun m!4655509 () Bool)

(assert (=> b!4053244 m!4655509))

(declare-fun m!4655511 () Bool)

(assert (=> b!4053247 m!4655511))

(declare-fun m!4655513 () Bool)

(assert (=> b!4053247 m!4655513))

(declare-fun m!4655515 () Bool)

(assert (=> b!4053258 m!4655515))

(declare-fun m!4655517 () Bool)

(assert (=> b!4053258 m!4655517))

(declare-fun m!4655519 () Bool)

(assert (=> b!4053258 m!4655519))

(declare-fun m!4655521 () Bool)

(assert (=> b!4053258 m!4655521))

(declare-fun m!4655523 () Bool)

(assert (=> b!4053243 m!4655523))

(declare-fun m!4655525 () Bool)

(assert (=> b!4053243 m!4655525))

(declare-fun m!4655527 () Bool)

(assert (=> b!4053243 m!4655527))

(declare-fun m!4655529 () Bool)

(assert (=> b!4053243 m!4655529))

(declare-fun m!4655531 () Bool)

(assert (=> b!4053259 m!4655531))

(declare-fun m!4655533 () Bool)

(assert (=> b!4053259 m!4655533))

(declare-fun m!4655535 () Bool)

(assert (=> b!4053259 m!4655535))

(assert (=> b!4053259 m!4655535))

(declare-fun m!4655537 () Bool)

(assert (=> b!4053259 m!4655537))

(declare-fun m!4655539 () Bool)

(assert (=> b!4053235 m!4655539))

(declare-fun m!4655541 () Bool)

(assert (=> b!4053235 m!4655541))

(declare-fun m!4655543 () Bool)

(assert (=> b!4053235 m!4655543))

(declare-fun m!4655545 () Bool)

(assert (=> b!4053235 m!4655545))

(declare-fun m!4655547 () Bool)

(assert (=> b!4053241 m!4655547))

(declare-fun m!4655549 () Bool)

(assert (=> b!4053260 m!4655549))

(declare-fun m!4655551 () Bool)

(assert (=> b!4053240 m!4655551))

(declare-fun m!4655553 () Bool)

(assert (=> b!4053262 m!4655553))

(declare-fun m!4655555 () Bool)

(assert (=> b!4053265 m!4655555))

(declare-fun m!4655557 () Bool)

(assert (=> b!4053265 m!4655557))

(declare-fun m!4655559 () Bool)

(assert (=> b!4053257 m!4655559))

(declare-fun m!4655561 () Bool)

(assert (=> b!4053257 m!4655561))

(declare-fun m!4655563 () Bool)

(assert (=> b!4053257 m!4655563))

(declare-fun m!4655565 () Bool)

(assert (=> b!4053257 m!4655565))

(declare-fun m!4655567 () Bool)

(assert (=> b!4053257 m!4655567))

(declare-fun m!4655569 () Bool)

(assert (=> b!4053257 m!4655569))

(assert (=> b!4053257 m!4655567))

(declare-fun m!4655571 () Bool)

(assert (=> b!4053257 m!4655571))

(declare-fun m!4655573 () Bool)

(assert (=> b!4053233 m!4655573))

(declare-fun m!4655575 () Bool)

(assert (=> b!4053233 m!4655575))

(declare-fun m!4655577 () Bool)

(assert (=> b!4053233 m!4655577))

(declare-fun m!4655579 () Bool)

(assert (=> b!4053233 m!4655579))

(declare-fun m!4655581 () Bool)

(assert (=> b!4053233 m!4655581))

(declare-fun m!4655583 () Bool)

(assert (=> b!4053256 m!4655583))

(declare-fun m!4655585 () Bool)

(assert (=> b!4053266 m!4655585))

(assert (=> b!4053266 m!4655583))

(declare-fun m!4655587 () Bool)

(assert (=> b!4053261 m!4655587))

(declare-fun m!4655589 () Bool)

(assert (=> b!4053261 m!4655589))

(declare-fun m!4655591 () Bool)

(assert (=> b!4053261 m!4655591))

(declare-fun m!4655593 () Bool)

(assert (=> start!382292 m!4655593))

(declare-fun m!4655595 () Bool)

(assert (=> b!4053273 m!4655595))

(declare-fun m!4655597 () Bool)

(assert (=> b!4053254 m!4655597))

(declare-fun m!4655599 () Bool)

(assert (=> b!4053254 m!4655599))

(declare-fun m!4655601 () Bool)

(assert (=> b!4053254 m!4655601))

(declare-fun m!4655603 () Bool)

(assert (=> b!4053254 m!4655603))

(declare-fun m!4655605 () Bool)

(assert (=> b!4053255 m!4655605))

(declare-fun m!4655607 () Bool)

(assert (=> b!4053255 m!4655607))

(declare-fun m!4655609 () Bool)

(assert (=> b!4053255 m!4655609))

(declare-fun m!4655611 () Bool)

(assert (=> b!4053276 m!4655611))

(declare-fun m!4655613 () Bool)

(assert (=> b!4053276 m!4655613))

(declare-fun m!4655615 () Bool)

(assert (=> b!4053264 m!4655615))

(declare-fun m!4655617 () Bool)

(assert (=> b!4053264 m!4655617))

(declare-fun m!4655619 () Bool)

(assert (=> b!4053264 m!4655619))

(declare-fun m!4655621 () Bool)

(assert (=> b!4053264 m!4655621))

(declare-fun m!4655623 () Bool)

(assert (=> b!4053264 m!4655623))

(declare-fun m!4655625 () Bool)

(assert (=> b!4053264 m!4655625))

(declare-fun m!4655627 () Bool)

(assert (=> b!4053264 m!4655627))

(declare-fun m!4655629 () Bool)

(assert (=> b!4053264 m!4655629))

(declare-fun m!4655631 () Bool)

(assert (=> b!4053264 m!4655631))

(declare-fun m!4655633 () Bool)

(assert (=> b!4053264 m!4655633))

(declare-fun m!4655635 () Bool)

(assert (=> b!4053264 m!4655635))

(declare-fun m!4655637 () Bool)

(assert (=> b!4053264 m!4655637))

(assert (=> b!4053264 m!4655629))

(declare-fun m!4655639 () Bool)

(assert (=> b!4053264 m!4655639))

(declare-fun m!4655641 () Bool)

(assert (=> b!4053264 m!4655641))

(declare-fun m!4655643 () Bool)

(assert (=> b!4053264 m!4655643))

(declare-fun m!4655645 () Bool)

(assert (=> b!4053264 m!4655645))

(declare-fun m!4655647 () Bool)

(assert (=> b!4053264 m!4655647))

(assert (=> b!4053264 m!4655623))

(declare-fun m!4655649 () Bool)

(assert (=> b!4053264 m!4655649))

(declare-fun m!4655651 () Bool)

(assert (=> b!4053269 m!4655651))

(check-sat (not b!4053248) (not start!382292) (not b_next!113469) b_and!311717 (not b!4053237) (not b_next!113467) (not b!4053241) b_and!311715 (not b!4053245) (not b!4053233) (not b!4053262) (not b!4053251) (not b!4053267) (not b!4053249) (not b!4053263) tp_is_empty!20665 (not b!4053258) (not b_next!113465) (not b!4053242) (not b!4053240) (not b!4053244) (not b!4053273) (not b!4053265) (not b!4053275) (not b!4053270) (not b!4053264) (not b!4053269) (not b!4053256) b_and!311719 (not b!4053235) (not b!4053243) b_and!311721 (not b!4053261) (not b!4053276) (not b_next!113471) (not b!4053247) (not b!4053255) (not b!4053260) (not b!4053246) (not b!4053234) (not b!4053268) (not b!4053252) (not b!4053257) (not b!4053271) (not b!4053259) (not b!4053254) (not b!4053266))
(check-sat (not b_next!113465) (not b_next!113469) b_and!311719 b_and!311721 b_and!311717 (not b_next!113471) (not b_next!113467) b_and!311715)
