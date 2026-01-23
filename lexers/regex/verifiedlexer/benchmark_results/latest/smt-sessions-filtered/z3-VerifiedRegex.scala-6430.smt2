; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!336238 () Bool)

(assert start!336238)

(declare-fun b!3611327 () Bool)

(declare-fun b_free!93777 () Bool)

(declare-fun b_next!94481 () Bool)

(assert (=> b!3611327 (= b_free!93777 (not b_next!94481))))

(declare-fun tp!1103847 () Bool)

(declare-fun b_and!263395 () Bool)

(assert (=> b!3611327 (= tp!1103847 b_and!263395)))

(declare-fun b_free!93779 () Bool)

(declare-fun b_next!94483 () Bool)

(assert (=> b!3611327 (= b_free!93779 (not b_next!94483))))

(declare-fun tp!1103858 () Bool)

(declare-fun b_and!263397 () Bool)

(assert (=> b!3611327 (= tp!1103858 b_and!263397)))

(declare-fun b!3611301 () Bool)

(declare-fun b_free!93781 () Bool)

(declare-fun b_next!94485 () Bool)

(assert (=> b!3611301 (= b_free!93781 (not b_next!94485))))

(declare-fun tp!1103849 () Bool)

(declare-fun b_and!263399 () Bool)

(assert (=> b!3611301 (= tp!1103849 b_and!263399)))

(declare-fun b_free!93783 () Bool)

(declare-fun b_next!94487 () Bool)

(assert (=> b!3611301 (= b_free!93783 (not b_next!94487))))

(declare-fun tp!1103853 () Bool)

(declare-fun b_and!263401 () Bool)

(assert (=> b!3611301 (= tp!1103853 b_and!263401)))

(declare-fun b!3611325 () Bool)

(declare-fun b_free!93785 () Bool)

(declare-fun b_next!94489 () Bool)

(assert (=> b!3611325 (= b_free!93785 (not b_next!94489))))

(declare-fun tp!1103846 () Bool)

(declare-fun b_and!263403 () Bool)

(assert (=> b!3611325 (= tp!1103846 b_and!263403)))

(declare-fun b_free!93787 () Bool)

(declare-fun b_next!94491 () Bool)

(assert (=> b!3611325 (= b_free!93787 (not b_next!94491))))

(declare-fun tp!1103860 () Bool)

(declare-fun b_and!263405 () Bool)

(assert (=> b!3611325 (= tp!1103860 b_and!263405)))

(declare-fun b!3611287 () Bool)

(declare-fun b_free!93789 () Bool)

(declare-fun b_next!94493 () Bool)

(assert (=> b!3611287 (= b_free!93789 (not b_next!94493))))

(declare-fun tp!1103850 () Bool)

(declare-fun b_and!263407 () Bool)

(assert (=> b!3611287 (= tp!1103850 b_and!263407)))

(declare-fun b_free!93791 () Bool)

(declare-fun b_next!94495 () Bool)

(assert (=> b!3611287 (= b_free!93791 (not b_next!94495))))

(declare-fun tp!1103856 () Bool)

(declare-fun b_and!263409 () Bool)

(assert (=> b!3611287 (= tp!1103856 b_and!263409)))

(declare-fun tp!1103857 () Bool)

(declare-fun e!2234987 () Bool)

(declare-fun e!2234984 () Bool)

(declare-datatypes ((List!38133 0))(
  ( (Nil!38009) (Cons!38009 (h!43429 (_ BitVec 16)) (t!293424 List!38133)) )
))
(declare-datatypes ((TokenValue!5870 0))(
  ( (FloatLiteralValue!11740 (text!41535 List!38133)) (TokenValueExt!5869 (__x!23957 Int)) (Broken!29350 (value!181174 List!38133)) (Object!5993) (End!5870) (Def!5870) (Underscore!5870) (Match!5870) (Else!5870) (Error!5870) (Case!5870) (If!5870) (Extends!5870) (Abstract!5870) (Class!5870) (Val!5870) (DelimiterValue!11740 (del!5930 List!38133)) (KeywordValue!5876 (value!181175 List!38133)) (CommentValue!11740 (value!181176 List!38133)) (WhitespaceValue!11740 (value!181177 List!38133)) (IndentationValue!5870 (value!181178 List!38133)) (String!42683) (Int32!5870) (Broken!29351 (value!181179 List!38133)) (Boolean!5871) (Unit!54210) (OperatorValue!5873 (op!5930 List!38133)) (IdentifierValue!11740 (value!181180 List!38133)) (IdentifierValue!11741 (value!181181 List!38133)) (WhitespaceValue!11741 (value!181182 List!38133)) (True!11740) (False!11740) (Broken!29352 (value!181183 List!38133)) (Broken!29353 (value!181184 List!38133)) (True!11741) (RightBrace!5870) (RightBracket!5870) (Colon!5870) (Null!5870) (Comma!5870) (LeftBracket!5870) (False!11741) (LeftBrace!5870) (ImaginaryLiteralValue!5870 (text!41536 List!38133)) (StringLiteralValue!17610 (value!181185 List!38133)) (EOFValue!5870 (value!181186 List!38133)) (IdentValue!5870 (value!181187 List!38133)) (DelimiterValue!11741 (value!181188 List!38133)) (DedentValue!5870 (value!181189 List!38133)) (NewLineValue!5870 (value!181190 List!38133)) (IntegerValue!17610 (value!181191 (_ BitVec 32)) (text!41537 List!38133)) (IntegerValue!17611 (value!181192 Int) (text!41538 List!38133)) (Times!5870) (Or!5870) (Equal!5870) (Minus!5870) (Broken!29354 (value!181193 List!38133)) (And!5870) (Div!5870) (LessEqual!5870) (Mod!5870) (Concat!16269) (Not!5870) (Plus!5870) (SpaceValue!5870 (value!181194 List!38133)) (IntegerValue!17612 (value!181195 Int) (text!41539 List!38133)) (StringLiteralValue!17611 (text!41540 List!38133)) (FloatLiteralValue!11741 (text!41541 List!38133)) (BytesLiteralValue!5870 (value!181196 List!38133)) (CommentValue!11741 (value!181197 List!38133)) (StringLiteralValue!17612 (value!181198 List!38133)) (ErrorTokenValue!5870 (msg!5931 List!38133)) )
))
(declare-datatypes ((String!42684 0))(
  ( (String!42685 (value!181199 String)) )
))
(declare-datatypes ((C!20984 0))(
  ( (C!20985 (val!12540 Int)) )
))
(declare-datatypes ((Regex!10399 0))(
  ( (ElementMatch!10399 (c!624772 C!20984)) (Concat!16270 (regOne!21310 Regex!10399) (regTwo!21310 Regex!10399)) (EmptyExpr!10399) (Star!10399 (reg!10728 Regex!10399)) (EmptyLang!10399) (Union!10399 (regOne!21311 Regex!10399) (regTwo!21311 Regex!10399)) )
))
(declare-datatypes ((List!38134 0))(
  ( (Nil!38010) (Cons!38010 (h!43430 C!20984) (t!293425 List!38134)) )
))
(declare-datatypes ((IArray!23171 0))(
  ( (IArray!23172 (innerList!11643 List!38134)) )
))
(declare-datatypes ((Conc!11583 0))(
  ( (Node!11583 (left!29697 Conc!11583) (right!30027 Conc!11583) (csize!23396 Int) (cheight!11794 Int)) (Leaf!18014 (xs!14785 IArray!23171) (csize!23397 Int)) (Empty!11583) )
))
(declare-datatypes ((BalanceConc!22780 0))(
  ( (BalanceConc!22781 (c!624773 Conc!11583)) )
))
(declare-datatypes ((TokenValueInjection!11168 0))(
  ( (TokenValueInjection!11169 (toValue!7924 Int) (toChars!7783 Int)) )
))
(declare-datatypes ((Rule!11080 0))(
  ( (Rule!11081 (regex!5640 Regex!10399) (tag!6348 String!42684) (isSeparator!5640 Bool) (transformation!5640 TokenValueInjection!11168)) )
))
(declare-fun anOtherTypeRule!33 () Rule!11080)

(declare-fun b!3611284 () Bool)

(declare-fun inv!51382 (String!42684) Bool)

(declare-fun inv!51385 (TokenValueInjection!11168) Bool)

(assert (=> b!3611284 (= e!2234984 (and tp!1103857 (inv!51382 (tag!6348 anOtherTypeRule!33)) (inv!51385 (transformation!5640 anOtherTypeRule!33)) e!2234987))))

(declare-fun b!3611285 () Bool)

(declare-fun res!1460818 () Bool)

(declare-fun e!2235014 () Bool)

(assert (=> b!3611285 (=> (not res!1460818) (not e!2235014))))

(declare-fun rule!403 () Rule!11080)

(assert (=> b!3611285 (= res!1460818 (not (= (isSeparator!5640 anOtherTypeRule!33) (isSeparator!5640 rule!403))))))

(declare-fun bm!261052 () Bool)

(declare-fun call!261062 () List!38134)

(declare-datatypes ((Token!10646 0))(
  ( (Token!10647 (value!181200 TokenValue!5870) (rule!8392 Rule!11080) (size!28979 Int) (originalCharacters!6354 List!38134)) )
))
(declare-datatypes ((tuple2!37904 0))(
  ( (tuple2!37905 (_1!22086 Token!10646) (_2!22086 List!38134)) )
))
(declare-fun lt!1243510 () tuple2!37904)

(declare-fun usedCharacters!854 (Regex!10399) List!38134)

(assert (=> bm!261052 (= call!261062 (usedCharacters!854 (regex!5640 (rule!8392 (_1!22086 lt!1243510)))))))

(declare-fun b!3611286 () Bool)

(declare-fun e!2235010 () Bool)

(assert (=> b!3611286 (= e!2235010 true)))

(declare-fun lt!1243513 () Int)

(declare-fun lt!1243499 () List!38134)

(declare-fun size!28980 (List!38134) Int)

(assert (=> b!3611286 (= lt!1243513 (size!28980 lt!1243499))))

(declare-fun e!2234994 () Bool)

(assert (=> b!3611287 (= e!2234994 (and tp!1103850 tp!1103856))))

(declare-fun b!3611288 () Bool)

(assert (=> b!3611288 false))

(declare-datatypes ((Unit!54211 0))(
  ( (Unit!54212) )
))
(declare-fun lt!1243505 () Unit!54211)

(declare-fun call!261060 () Unit!54211)

(assert (=> b!3611288 (= lt!1243505 call!261060)))

(declare-fun call!261061 () Bool)

(assert (=> b!3611288 (not call!261061)))

(declare-fun lt!1243498 () Unit!54211)

(declare-datatypes ((List!38135 0))(
  ( (Nil!38011) (Cons!38011 (h!43431 Rule!11080) (t!293426 List!38135)) )
))
(declare-fun rules!3307 () List!38135)

(declare-datatypes ((LexerInterface!5229 0))(
  ( (LexerInterfaceExt!5226 (__x!23958 Int)) (Lexer!5227) )
))
(declare-fun thiss!23823 () LexerInterface!5229)

(declare-fun lt!1243524 () C!20984)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!228 (LexerInterface!5229 List!38135 List!38135 Rule!11080 Rule!11080 C!20984) Unit!54211)

(assert (=> b!3611288 (= lt!1243498 (lemmaSepRuleNotContainsCharContainedInANonSepRule!228 thiss!23823 rules!3307 rules!3307 anOtherTypeRule!33 (rule!8392 (_1!22086 lt!1243510)) lt!1243524))))

(declare-fun e!2235005 () Unit!54211)

(declare-fun Unit!54213 () Unit!54211)

(assert (=> b!3611288 (= e!2235005 Unit!54213)))

(declare-fun b!3611289 () Bool)

(declare-fun e!2234995 () Unit!54211)

(assert (=> b!3611289 (= e!2234995 e!2235005)))

(declare-fun suffix!1395 () List!38134)

(declare-fun lt!1243518 () List!38134)

(declare-fun lt!1243529 () List!38134)

(declare-fun lt!1243515 () Unit!54211)

(declare-fun lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!18 (List!38134 List!38134 List!38134 List!38134) Unit!54211)

(assert (=> b!3611289 (= lt!1243515 (lemmaLongerPrefixContainsHeadOfSuffixOfSmallerPref!18 lt!1243499 suffix!1395 lt!1243529 lt!1243518))))

(declare-fun contains!7343 (List!38134 C!20984) Bool)

(assert (=> b!3611289 (contains!7343 lt!1243529 lt!1243524)))

(declare-fun c!624766 () Bool)

(assert (=> b!3611289 (= c!624766 (isSeparator!5640 rule!403))))

(declare-fun b!3611290 () Bool)

(declare-fun res!1460815 () Bool)

(declare-fun e!2235004 () Bool)

(assert (=> b!3611290 (=> res!1460815 e!2235004)))

(declare-fun contains!7344 (List!38135 Rule!11080) Bool)

(assert (=> b!3611290 (= res!1460815 (not (contains!7344 rules!3307 (rule!8392 (_1!22086 lt!1243510)))))))

(declare-fun b!3611291 () Bool)

(declare-fun Unit!54214 () Unit!54211)

(assert (=> b!3611291 (= e!2234995 Unit!54214)))

(declare-fun b!3611292 () Bool)

(declare-fun e!2235001 () Bool)

(declare-fun e!2234992 () Bool)

(assert (=> b!3611292 (= e!2235001 e!2234992)))

(declare-fun res!1460803 () Bool)

(assert (=> b!3611292 (=> (not res!1460803) (not e!2234992))))

(declare-fun lt!1243527 () Rule!11080)

(declare-fun matchR!4968 (Regex!10399 List!38134) Bool)

(declare-fun list!14020 (BalanceConc!22780) List!38134)

(declare-fun charsOf!3654 (Token!10646) BalanceConc!22780)

(assert (=> b!3611292 (= res!1460803 (matchR!4968 (regex!5640 lt!1243527) (list!14020 (charsOf!3654 (_1!22086 lt!1243510)))))))

(declare-datatypes ((Option!7910 0))(
  ( (None!7909) (Some!7909 (v!37655 Rule!11080)) )
))
(declare-fun lt!1243494 () Option!7910)

(declare-fun get!12340 (Option!7910) Rule!11080)

(assert (=> b!3611292 (= lt!1243527 (get!12340 lt!1243494))))

(declare-fun b!3611293 () Bool)

(declare-fun e!2234997 () Bool)

(declare-fun e!2234991 () Bool)

(assert (=> b!3611293 (= e!2234997 e!2234991)))

(declare-fun res!1460823 () Bool)

(assert (=> b!3611293 (=> (not res!1460823) (not e!2234991))))

(declare-fun lt!1243495 () tuple2!37904)

(declare-fun token!511 () Token!10646)

(assert (=> b!3611293 (= res!1460823 (= (_1!22086 lt!1243495) token!511))))

(declare-datatypes ((Option!7911 0))(
  ( (None!7910) (Some!7910 (v!37656 tuple2!37904)) )
))
(declare-fun lt!1243514 () Option!7911)

(declare-fun get!12341 (Option!7911) tuple2!37904)

(assert (=> b!3611293 (= lt!1243495 (get!12341 lt!1243514))))

(declare-fun b!3611294 () Bool)

(assert (=> b!3611294 (= e!2234992 (= (rule!8392 (_1!22086 lt!1243510)) lt!1243527))))

(declare-fun b!3611295 () Bool)

(declare-fun res!1460805 () Bool)

(declare-fun e!2235016 () Bool)

(assert (=> b!3611295 (=> res!1460805 e!2235016)))

(declare-fun sepAndNonSepRulesDisjointChars!1810 (List!38135 List!38135) Bool)

(assert (=> b!3611295 (= res!1460805 (not (sepAndNonSepRulesDisjointChars!1810 rules!3307 rules!3307)))))

(declare-fun b!3611296 () Bool)

(declare-fun res!1460806 () Bool)

(assert (=> b!3611296 (=> (not res!1460806) (not e!2235014))))

(declare-fun rulesInvariant!4626 (LexerInterface!5229 List!38135) Bool)

(assert (=> b!3611296 (= res!1460806 (rulesInvariant!4626 thiss!23823 rules!3307))))

(declare-fun b!3611297 () Bool)

(assert (=> b!3611297 false))

(declare-fun lt!1243523 () Unit!54211)

(declare-fun call!261059 () Unit!54211)

(assert (=> b!3611297 (= lt!1243523 call!261059)))

(declare-fun call!261057 () Bool)

(assert (=> b!3611297 (not call!261057)))

(declare-fun lt!1243483 () C!20984)

(declare-fun lt!1243493 () Unit!54211)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!346 (LexerInterface!5229 List!38135 List!38135 Rule!11080 Rule!11080 C!20984) Unit!54211)

(assert (=> b!3611297 (= lt!1243493 (lemmaNonSepRuleNotContainsCharContainedInASepRule!346 thiss!23823 rules!3307 rules!3307 (rule!8392 (_1!22086 lt!1243510)) rule!403 lt!1243483))))

(declare-fun e!2235000 () Unit!54211)

(declare-fun Unit!54215 () Unit!54211)

(assert (=> b!3611297 (= e!2235000 Unit!54215)))

(declare-fun tp!1103859 () Bool)

(declare-fun b!3611298 () Bool)

(declare-fun e!2235015 () Bool)

(declare-fun e!2234989 () Bool)

(assert (=> b!3611298 (= e!2234989 (and tp!1103859 (inv!51382 (tag!6348 rule!403)) (inv!51385 (transformation!5640 rule!403)) e!2235015))))

(declare-fun b!3611299 () Bool)

(declare-fun res!1460807 () Bool)

(declare-fun e!2235007 () Bool)

(assert (=> b!3611299 (=> res!1460807 e!2235007)))

(assert (=> b!3611299 (= res!1460807 (not (matchR!4968 (regex!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243529)))))

(declare-fun b!3611300 () Bool)

(declare-fun res!1460812 () Bool)

(assert (=> b!3611300 (=> res!1460812 e!2235016)))

(assert (=> b!3611300 (= res!1460812 (not (contains!7343 (usedCharacters!854 (regex!5640 anOtherTypeRule!33)) lt!1243524)))))

(assert (=> b!3611301 (= e!2235015 (and tp!1103849 tp!1103853))))

(declare-fun bm!261053 () Bool)

(assert (=> bm!261053 (= call!261061 (contains!7343 call!261062 lt!1243524))))

(declare-fun res!1460810 () Bool)

(assert (=> start!336238 (=> (not res!1460810) (not e!2235014))))

(get-info :version)

(assert (=> start!336238 (= res!1460810 ((_ is Lexer!5227) thiss!23823))))

(assert (=> start!336238 e!2235014))

(declare-fun e!2235012 () Bool)

(assert (=> start!336238 e!2235012))

(declare-fun e!2235009 () Bool)

(assert (=> start!336238 e!2235009))

(assert (=> start!336238 true))

(declare-fun e!2235006 () Bool)

(declare-fun inv!51386 (Token!10646) Bool)

(assert (=> start!336238 (and (inv!51386 token!511) e!2235006)))

(assert (=> start!336238 e!2234989))

(assert (=> start!336238 e!2234984))

(declare-fun b!3611302 () Bool)

(declare-fun res!1460804 () Bool)

(assert (=> b!3611302 (=> (not res!1460804) (not e!2235014))))

(assert (=> b!3611302 (= res!1460804 (contains!7344 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3611303 () Bool)

(declare-fun res!1460801 () Bool)

(assert (=> b!3611303 (=> (not res!1460801) (not e!2234991))))

(assert (=> b!3611303 (= res!1460801 (= (rule!8392 token!511) rule!403))))

(declare-fun b!3611304 () Bool)

(declare-fun e!2235013 () Unit!54211)

(declare-fun Unit!54216 () Unit!54211)

(assert (=> b!3611304 (= e!2235013 Unit!54216)))

(declare-fun b!3611305 () Bool)

(declare-fun e!2234999 () Unit!54211)

(assert (=> b!3611305 (= e!2234999 e!2235013)))

(declare-fun c!624768 () Bool)

(assert (=> b!3611305 (= c!624768 (isSeparator!5640 (rule!8392 (_1!22086 lt!1243510))))))

(declare-fun b!3611306 () Bool)

(assert (=> b!3611306 (= e!2235004 e!2235010)))

(declare-fun res!1460816 () Bool)

(assert (=> b!3611306 (=> res!1460816 e!2235010)))

(declare-fun lt!1243511 () Option!7911)

(declare-fun lt!1243487 () List!38134)

(declare-fun lt!1243506 () Token!10646)

(assert (=> b!3611306 (= res!1460816 (not (= lt!1243511 (Some!7910 (tuple2!37905 lt!1243506 lt!1243487)))))))

(declare-fun isPrefix!3003 (List!38134 List!38134) Bool)

(assert (=> b!3611306 (isPrefix!3003 lt!1243518 lt!1243518)))

(declare-fun lt!1243496 () Unit!54211)

(declare-fun lemmaIsPrefixRefl!1918 (List!38134 List!38134) Unit!54211)

(assert (=> b!3611306 (= lt!1243496 (lemmaIsPrefixRefl!1918 lt!1243518 lt!1243518))))

(declare-fun lt!1243492 () Unit!54211)

(declare-fun lt!1243530 () BalanceConc!22780)

(declare-fun lemmaSemiInverse!1397 (TokenValueInjection!11168 BalanceConc!22780) Unit!54211)

(assert (=> b!3611306 (= lt!1243492 (lemmaSemiInverse!1397 (transformation!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243530))))

(declare-fun ruleValid!1905 (LexerInterface!5229 Rule!11080) Bool)

(assert (=> b!3611306 (ruleValid!1905 thiss!23823 (rule!8392 (_1!22086 lt!1243510)))))

(declare-fun lt!1243502 () Unit!54211)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1060 (LexerInterface!5229 Rule!11080 List!38135) Unit!54211)

(assert (=> b!3611306 (= lt!1243502 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1060 thiss!23823 (rule!8392 (_1!22086 lt!1243510)) rules!3307))))

(declare-fun b!3611307 () Bool)

(declare-fun e!2235011 () Bool)

(declare-fun e!2234988 () Bool)

(assert (=> b!3611307 (= e!2235011 e!2234988)))

(declare-fun res!1460822 () Bool)

(assert (=> b!3611307 (=> res!1460822 e!2234988)))

(assert (=> b!3611307 (= res!1460822 (or (not (= lt!1243487 (_2!22086 lt!1243510))) (not (= lt!1243511 (Some!7910 (tuple2!37905 (_1!22086 lt!1243510) lt!1243487))))))))

(assert (=> b!3611307 (= (_2!22086 lt!1243510) lt!1243487)))

(declare-fun lt!1243500 () Unit!54211)

(declare-fun lemmaSamePrefixThenSameSuffix!1358 (List!38134 List!38134 List!38134 List!38134 List!38134) Unit!54211)

(assert (=> b!3611307 (= lt!1243500 (lemmaSamePrefixThenSameSuffix!1358 lt!1243529 (_2!22086 lt!1243510) lt!1243529 lt!1243487 lt!1243518))))

(declare-fun getSuffix!1578 (List!38134 List!38134) List!38134)

(assert (=> b!3611307 (= lt!1243487 (getSuffix!1578 lt!1243518 lt!1243529))))

(assert (=> b!3611307 (= lt!1243511 (Some!7910 (tuple2!37905 lt!1243506 (_2!22086 lt!1243510))))))

(declare-fun maxPrefixOneRule!1907 (LexerInterface!5229 Rule!11080 List!38134) Option!7911)

(assert (=> b!3611307 (= lt!1243511 (maxPrefixOneRule!1907 thiss!23823 (rule!8392 (_1!22086 lt!1243510)) lt!1243518))))

(declare-fun apply!9146 (TokenValueInjection!11168 BalanceConc!22780) TokenValue!5870)

(assert (=> b!3611307 (= lt!1243506 (Token!10647 (apply!9146 (transformation!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243530) (rule!8392 (_1!22086 lt!1243510)) (size!28980 lt!1243529) lt!1243529))))

(declare-fun seqFromList!4193 (List!38134) BalanceConc!22780)

(assert (=> b!3611307 (= lt!1243530 (seqFromList!4193 lt!1243529))))

(declare-fun lt!1243504 () Unit!54211)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!979 (LexerInterface!5229 List!38135 List!38134 List!38134 List!38134 Rule!11080) Unit!54211)

(assert (=> b!3611307 (= lt!1243504 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!979 thiss!23823 rules!3307 lt!1243529 lt!1243518 (_2!22086 lt!1243510) (rule!8392 (_1!22086 lt!1243510))))))

(declare-fun bm!261054 () Bool)

(declare-fun call!261058 () List!38134)

(assert (=> bm!261054 (= call!261058 (usedCharacters!854 (regex!5640 (rule!8392 (_1!22086 lt!1243510)))))))

(declare-fun bm!261055 () Bool)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!624 (Regex!10399 List!38134 C!20984) Unit!54211)

(assert (=> bm!261055 (= call!261060 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!624 (regex!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243529 lt!1243524))))

(declare-fun b!3611308 () Bool)

(declare-fun tp!1103855 () Bool)

(declare-fun e!2234983 () Bool)

(assert (=> b!3611308 (= e!2234983 (and tp!1103855 (inv!51382 (tag!6348 (h!43431 rules!3307))) (inv!51385 (transformation!5640 (h!43431 rules!3307))) e!2234994))))

(declare-fun b!3611309 () Bool)

(assert (=> b!3611309 false))

(declare-fun lt!1243486 () Unit!54211)

(assert (=> b!3611309 (= lt!1243486 call!261060)))

(assert (=> b!3611309 (not call!261061)))

(declare-fun lt!1243508 () Unit!54211)

(assert (=> b!3611309 (= lt!1243508 (lemmaNonSepRuleNotContainsCharContainedInASepRule!346 thiss!23823 rules!3307 rules!3307 (rule!8392 (_1!22086 lt!1243510)) anOtherTypeRule!33 lt!1243524))))

(declare-fun Unit!54217 () Unit!54211)

(assert (=> b!3611309 (= e!2235005 Unit!54217)))

(declare-fun b!3611310 () Bool)

(declare-fun e!2234986 () Unit!54211)

(declare-fun Unit!54218 () Unit!54211)

(assert (=> b!3611310 (= e!2234986 Unit!54218)))

(declare-fun lt!1243497 () Unit!54211)

(assert (=> b!3611310 (= lt!1243497 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!624 (regex!5640 rule!403) lt!1243499 lt!1243483))))

(assert (=> b!3611310 false))

(declare-fun b!3611311 () Bool)

(assert (=> b!3611311 (= e!2235007 e!2235011)))

(declare-fun res!1460824 () Bool)

(assert (=> b!3611311 (=> res!1460824 e!2235011)))

(declare-fun lt!1243484 () Int)

(declare-fun lt!1243526 () Option!7911)

(declare-fun lt!1243507 () TokenValue!5870)

(assert (=> b!3611311 (= res!1460824 (not (= lt!1243526 (Some!7910 (tuple2!37905 (Token!10647 lt!1243507 (rule!8392 (_1!22086 lt!1243510)) lt!1243484 lt!1243529) (_2!22086 lt!1243510))))))))

(declare-fun lt!1243522 () BalanceConc!22780)

(declare-fun size!28981 (BalanceConc!22780) Int)

(assert (=> b!3611311 (= lt!1243484 (size!28981 lt!1243522))))

(assert (=> b!3611311 (= lt!1243507 (apply!9146 (transformation!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243522))))

(declare-fun lt!1243491 () Unit!54211)

(declare-fun lemmaCharactersSize!693 (Token!10646) Unit!54211)

(assert (=> b!3611311 (= lt!1243491 (lemmaCharactersSize!693 (_1!22086 lt!1243510)))))

(declare-fun lt!1243525 () Unit!54211)

(declare-fun lemmaEqSameImage!831 (TokenValueInjection!11168 BalanceConc!22780 BalanceConc!22780) Unit!54211)

(assert (=> b!3611311 (= lt!1243525 (lemmaEqSameImage!831 (transformation!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243522 (seqFromList!4193 (originalCharacters!6354 (_1!22086 lt!1243510)))))))

(declare-fun lt!1243489 () Unit!54211)

(assert (=> b!3611311 (= lt!1243489 (lemmaSemiInverse!1397 (transformation!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243522))))

(declare-fun b!3611312 () Bool)

(declare-fun e!2234990 () Bool)

(assert (=> b!3611312 (= e!2234990 e!2235016)))

(declare-fun res!1460817 () Bool)

(assert (=> b!3611312 (=> res!1460817 e!2235016)))

(declare-fun lt!1243509 () List!38134)

(assert (=> b!3611312 (= res!1460817 (contains!7343 lt!1243509 lt!1243524))))

(declare-fun head!7600 (List!38134) C!20984)

(assert (=> b!3611312 (= lt!1243524 (head!7600 suffix!1395))))

(assert (=> b!3611312 (= lt!1243509 (usedCharacters!854 (regex!5640 rule!403)))))

(declare-fun b!3611313 () Bool)

(assert (=> b!3611313 (= e!2235014 e!2234997)))

(declare-fun res!1460808 () Bool)

(assert (=> b!3611313 (=> (not res!1460808) (not e!2234997))))

(declare-fun isDefined!6142 (Option!7911) Bool)

(assert (=> b!3611313 (= res!1460808 (isDefined!6142 lt!1243514))))

(declare-fun maxPrefix!2763 (LexerInterface!5229 List!38135 List!38134) Option!7911)

(assert (=> b!3611313 (= lt!1243514 (maxPrefix!2763 thiss!23823 rules!3307 lt!1243499))))

(declare-fun lt!1243490 () BalanceConc!22780)

(assert (=> b!3611313 (= lt!1243499 (list!14020 lt!1243490))))

(assert (=> b!3611313 (= lt!1243490 (charsOf!3654 token!511))))

(declare-fun b!3611314 () Bool)

(assert (=> b!3611314 false))

(declare-fun lt!1243517 () Unit!54211)

(assert (=> b!3611314 (= lt!1243517 call!261059)))

(assert (=> b!3611314 (not call!261057)))

(declare-fun lt!1243485 () Unit!54211)

(assert (=> b!3611314 (= lt!1243485 (lemmaSepRuleNotContainsCharContainedInANonSepRule!228 thiss!23823 rules!3307 rules!3307 rule!403 (rule!8392 (_1!22086 lt!1243510)) lt!1243483))))

(declare-fun Unit!54219 () Unit!54211)

(assert (=> b!3611314 (= e!2235013 Unit!54219)))

(declare-fun b!3611315 () Bool)

(declare-fun res!1460802 () Bool)

(assert (=> b!3611315 (=> res!1460802 e!2234990)))

(declare-fun isEmpty!22446 (List!38134) Bool)

(assert (=> b!3611315 (= res!1460802 (isEmpty!22446 suffix!1395))))

(declare-fun b!3611316 () Bool)

(declare-fun tp_is_empty!17881 () Bool)

(declare-fun tp!1103848 () Bool)

(assert (=> b!3611316 (= e!2235009 (and tp_is_empty!17881 tp!1103848))))

(declare-fun b!3611317 () Bool)

(declare-fun Unit!54220 () Unit!54211)

(assert (=> b!3611317 (= e!2234986 Unit!54220)))

(declare-fun b!3611318 () Bool)

(declare-fun tp!1103854 () Bool)

(assert (=> b!3611318 (= e!2235012 (and e!2234983 tp!1103854))))

(declare-fun tp!1103852 () Bool)

(declare-fun e!2234998 () Bool)

(declare-fun b!3611319 () Bool)

(declare-fun e!2234985 () Bool)

(assert (=> b!3611319 (= e!2234998 (and tp!1103852 (inv!51382 (tag!6348 (rule!8392 token!511))) (inv!51385 (transformation!5640 (rule!8392 token!511))) e!2234985))))

(declare-fun b!3611320 () Bool)

(assert (=> b!3611320 (= e!2234988 e!2235004)))

(declare-fun res!1460813 () Bool)

(assert (=> b!3611320 (=> res!1460813 e!2235004)))

(declare-fun lt!1243512 () Int)

(assert (=> b!3611320 (= res!1460813 (>= lt!1243484 lt!1243512))))

(declare-fun lt!1243488 () Unit!54211)

(assert (=> b!3611320 (= lt!1243488 e!2234995)))

(declare-fun c!624770 () Bool)

(assert (=> b!3611320 (= c!624770 (> lt!1243484 lt!1243512))))

(assert (=> b!3611320 (= lt!1243512 (size!28981 lt!1243490))))

(declare-fun lt!1243503 () Unit!54211)

(assert (=> b!3611320 (= lt!1243503 e!2234999)))

(declare-fun c!624771 () Bool)

(assert (=> b!3611320 (= c!624771 (isSeparator!5640 rule!403))))

(declare-fun lt!1243501 () Unit!54211)

(assert (=> b!3611320 (= lt!1243501 e!2234986)))

(declare-fun c!624769 () Bool)

(assert (=> b!3611320 (= c!624769 (not (contains!7343 lt!1243509 lt!1243483)))))

(assert (=> b!3611320 (= lt!1243483 (head!7600 lt!1243529))))

(declare-fun bm!261056 () Bool)

(assert (=> bm!261056 (= call!261057 (contains!7343 call!261058 lt!1243483))))

(declare-fun b!3611321 () Bool)

(declare-fun res!1460820 () Bool)

(assert (=> b!3611321 (=> (not res!1460820) (not e!2234991))))

(assert (=> b!3611321 (= res!1460820 (isEmpty!22446 (_2!22086 lt!1243495)))))

(declare-fun b!3611322 () Bool)

(declare-fun res!1460821 () Bool)

(assert (=> b!3611322 (=> (not res!1460821) (not e!2235014))))

(assert (=> b!3611322 (= res!1460821 (contains!7344 rules!3307 rule!403))))

(declare-fun b!3611323 () Bool)

(assert (=> b!3611323 (= e!2234999 e!2235000)))

(declare-fun c!624767 () Bool)

(assert (=> b!3611323 (= c!624767 (not (isSeparator!5640 (rule!8392 (_1!22086 lt!1243510)))))))

(declare-fun b!3611324 () Bool)

(declare-fun Unit!54221 () Unit!54211)

(assert (=> b!3611324 (= e!2235000 Unit!54221)))

(assert (=> b!3611325 (= e!2234987 (and tp!1103846 tp!1103860))))

(declare-fun bm!261057 () Bool)

(assert (=> bm!261057 (= call!261059 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!624 (regex!5640 (rule!8392 (_1!22086 lt!1243510))) lt!1243529 lt!1243483))))

(declare-fun b!3611326 () Bool)

(assert (=> b!3611326 (= e!2234991 (not e!2234990))))

(declare-fun res!1460819 () Bool)

(assert (=> b!3611326 (=> res!1460819 e!2234990)))

(assert (=> b!3611326 (= res!1460819 (not (matchR!4968 (regex!5640 rule!403) lt!1243499)))))

(assert (=> b!3611326 (ruleValid!1905 thiss!23823 rule!403)))

(declare-fun lt!1243520 () Unit!54211)

(assert (=> b!3611326 (= lt!1243520 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1060 thiss!23823 rule!403 rules!3307))))

(assert (=> b!3611327 (= e!2234985 (and tp!1103847 tp!1103858))))

(declare-fun b!3611328 () Bool)

(assert (=> b!3611328 (= e!2235016 e!2235007)))

(declare-fun res!1460809 () Bool)

(assert (=> b!3611328 (=> res!1460809 e!2235007)))

(assert (=> b!3611328 (= res!1460809 (not (isPrefix!3003 lt!1243529 lt!1243518)))))

(declare-fun ++!9456 (List!38134 List!38134) List!38134)

(assert (=> b!3611328 (isPrefix!3003 lt!1243529 (++!9456 lt!1243529 (_2!22086 lt!1243510)))))

(declare-fun lt!1243519 () Unit!54211)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1924 (List!38134 List!38134) Unit!54211)

(assert (=> b!3611328 (= lt!1243519 (lemmaConcatTwoListThenFirstIsPrefix!1924 lt!1243529 (_2!22086 lt!1243510)))))

(assert (=> b!3611328 (= lt!1243529 (list!14020 lt!1243522))))

(assert (=> b!3611328 (= lt!1243522 (charsOf!3654 (_1!22086 lt!1243510)))))

(assert (=> b!3611328 e!2235001))

(declare-fun res!1460814 () Bool)

(assert (=> b!3611328 (=> (not res!1460814) (not e!2235001))))

(declare-fun isDefined!6143 (Option!7910) Bool)

(assert (=> b!3611328 (= res!1460814 (isDefined!6143 lt!1243494))))

(declare-fun getRuleFromTag!1246 (LexerInterface!5229 List!38135 String!42684) Option!7910)

(assert (=> b!3611328 (= lt!1243494 (getRuleFromTag!1246 thiss!23823 rules!3307 (tag!6348 (rule!8392 (_1!22086 lt!1243510)))))))

(declare-fun lt!1243521 () Unit!54211)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1246 (LexerInterface!5229 List!38135 List!38134 Token!10646) Unit!54211)

(assert (=> b!3611328 (= lt!1243521 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1246 thiss!23823 rules!3307 lt!1243518 (_1!22086 lt!1243510)))))

(assert (=> b!3611328 (= lt!1243510 (get!12341 lt!1243526))))

(declare-fun lt!1243528 () Unit!54211)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!909 (LexerInterface!5229 List!38135 List!38134 List!38134) Unit!54211)

(assert (=> b!3611328 (= lt!1243528 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!909 thiss!23823 rules!3307 lt!1243499 suffix!1395))))

(assert (=> b!3611328 (= lt!1243526 (maxPrefix!2763 thiss!23823 rules!3307 lt!1243518))))

(assert (=> b!3611328 (isPrefix!3003 lt!1243499 lt!1243518)))

(declare-fun lt!1243516 () Unit!54211)

(assert (=> b!3611328 (= lt!1243516 (lemmaConcatTwoListThenFirstIsPrefix!1924 lt!1243499 suffix!1395))))

(assert (=> b!3611328 (= lt!1243518 (++!9456 lt!1243499 suffix!1395))))

(declare-fun b!3611329 () Bool)

(declare-fun tp!1103851 () Bool)

(declare-fun inv!21 (TokenValue!5870) Bool)

(assert (=> b!3611329 (= e!2235006 (and (inv!21 (value!181200 token!511)) e!2234998 tp!1103851))))

(declare-fun b!3611330 () Bool)

(declare-fun res!1460811 () Bool)

(assert (=> b!3611330 (=> (not res!1460811) (not e!2235014))))

(declare-fun isEmpty!22447 (List!38135) Bool)

(assert (=> b!3611330 (= res!1460811 (not (isEmpty!22447 rules!3307)))))

(assert (= (and start!336238 res!1460810) b!3611330))

(assert (= (and b!3611330 res!1460811) b!3611296))

(assert (= (and b!3611296 res!1460806) b!3611322))

(assert (= (and b!3611322 res!1460821) b!3611302))

(assert (= (and b!3611302 res!1460804) b!3611285))

(assert (= (and b!3611285 res!1460818) b!3611313))

(assert (= (and b!3611313 res!1460808) b!3611293))

(assert (= (and b!3611293 res!1460823) b!3611321))

(assert (= (and b!3611321 res!1460820) b!3611303))

(assert (= (and b!3611303 res!1460801) b!3611326))

(assert (= (and b!3611326 (not res!1460819)) b!3611315))

(assert (= (and b!3611315 (not res!1460802)) b!3611312))

(assert (= (and b!3611312 (not res!1460817)) b!3611300))

(assert (= (and b!3611300 (not res!1460812)) b!3611295))

(assert (= (and b!3611295 (not res!1460805)) b!3611328))

(assert (= (and b!3611328 res!1460814) b!3611292))

(assert (= (and b!3611292 res!1460803) b!3611294))

(assert (= (and b!3611328 (not res!1460809)) b!3611299))

(assert (= (and b!3611299 (not res!1460807)) b!3611311))

(assert (= (and b!3611311 (not res!1460824)) b!3611307))

(assert (= (and b!3611307 (not res!1460822)) b!3611320))

(assert (= (and b!3611320 c!624769) b!3611310))

(assert (= (and b!3611320 (not c!624769)) b!3611317))

(assert (= (and b!3611320 c!624771) b!3611323))

(assert (= (and b!3611320 (not c!624771)) b!3611305))

(assert (= (and b!3611323 c!624767) b!3611297))

(assert (= (and b!3611323 (not c!624767)) b!3611324))

(assert (= (and b!3611305 c!624768) b!3611314))

(assert (= (and b!3611305 (not c!624768)) b!3611304))

(assert (= (or b!3611297 b!3611314) bm!261057))

(assert (= (or b!3611297 b!3611314) bm!261054))

(assert (= (or b!3611297 b!3611314) bm!261056))

(assert (= (and b!3611320 c!624770) b!3611289))

(assert (= (and b!3611320 (not c!624770)) b!3611291))

(assert (= (and b!3611289 c!624766) b!3611288))

(assert (= (and b!3611289 (not c!624766)) b!3611309))

(assert (= (or b!3611288 b!3611309) bm!261055))

(assert (= (or b!3611288 b!3611309) bm!261052))

(assert (= (or b!3611288 b!3611309) bm!261053))

(assert (= (and b!3611320 (not res!1460813)) b!3611290))

(assert (= (and b!3611290 (not res!1460815)) b!3611306))

(assert (= (and b!3611306 (not res!1460816)) b!3611286))

(assert (= b!3611308 b!3611287))

(assert (= b!3611318 b!3611308))

(assert (= (and start!336238 ((_ is Cons!38011) rules!3307)) b!3611318))

(assert (= (and start!336238 ((_ is Cons!38010) suffix!1395)) b!3611316))

(assert (= b!3611319 b!3611327))

(assert (= b!3611329 b!3611319))

(assert (= start!336238 b!3611329))

(assert (= b!3611298 b!3611301))

(assert (= start!336238 b!3611298))

(assert (= b!3611284 b!3611325))

(assert (= start!336238 b!3611284))

(declare-fun m!4109049 () Bool)

(assert (=> bm!261052 m!4109049))

(declare-fun m!4109051 () Bool)

(assert (=> b!3611330 m!4109051))

(declare-fun m!4109053 () Bool)

(assert (=> b!3611286 m!4109053))

(declare-fun m!4109055 () Bool)

(assert (=> b!3611290 m!4109055))

(declare-fun m!4109057 () Bool)

(assert (=> b!3611322 m!4109057))

(declare-fun m!4109059 () Bool)

(assert (=> b!3611310 m!4109059))

(declare-fun m!4109061 () Bool)

(assert (=> bm!261053 m!4109061))

(declare-fun m!4109063 () Bool)

(assert (=> b!3611320 m!4109063))

(declare-fun m!4109065 () Bool)

(assert (=> b!3611320 m!4109065))

(declare-fun m!4109067 () Bool)

(assert (=> b!3611320 m!4109067))

(declare-fun m!4109069 () Bool)

(assert (=> b!3611307 m!4109069))

(declare-fun m!4109071 () Bool)

(assert (=> b!3611307 m!4109071))

(declare-fun m!4109073 () Bool)

(assert (=> b!3611307 m!4109073))

(declare-fun m!4109075 () Bool)

(assert (=> b!3611307 m!4109075))

(declare-fun m!4109077 () Bool)

(assert (=> b!3611307 m!4109077))

(declare-fun m!4109079 () Bool)

(assert (=> b!3611307 m!4109079))

(declare-fun m!4109081 () Bool)

(assert (=> b!3611307 m!4109081))

(declare-fun m!4109083 () Bool)

(assert (=> b!3611293 m!4109083))

(declare-fun m!4109085 () Bool)

(assert (=> b!3611328 m!4109085))

(declare-fun m!4109087 () Bool)

(assert (=> b!3611328 m!4109087))

(declare-fun m!4109089 () Bool)

(assert (=> b!3611328 m!4109089))

(declare-fun m!4109091 () Bool)

(assert (=> b!3611328 m!4109091))

(declare-fun m!4109093 () Bool)

(assert (=> b!3611328 m!4109093))

(declare-fun m!4109095 () Bool)

(assert (=> b!3611328 m!4109095))

(declare-fun m!4109097 () Bool)

(assert (=> b!3611328 m!4109097))

(declare-fun m!4109099 () Bool)

(assert (=> b!3611328 m!4109099))

(declare-fun m!4109101 () Bool)

(assert (=> b!3611328 m!4109101))

(declare-fun m!4109103 () Bool)

(assert (=> b!3611328 m!4109103))

(declare-fun m!4109105 () Bool)

(assert (=> b!3611328 m!4109105))

(declare-fun m!4109107 () Bool)

(assert (=> b!3611328 m!4109107))

(assert (=> b!3611328 m!4109095))

(declare-fun m!4109109 () Bool)

(assert (=> b!3611328 m!4109109))

(declare-fun m!4109111 () Bool)

(assert (=> b!3611328 m!4109111))

(declare-fun m!4109113 () Bool)

(assert (=> b!3611328 m!4109113))

(declare-fun m!4109115 () Bool)

(assert (=> b!3611296 m!4109115))

(declare-fun m!4109117 () Bool)

(assert (=> b!3611284 m!4109117))

(declare-fun m!4109119 () Bool)

(assert (=> b!3611284 m!4109119))

(declare-fun m!4109121 () Bool)

(assert (=> bm!261057 m!4109121))

(declare-fun m!4109123 () Bool)

(assert (=> b!3611313 m!4109123))

(declare-fun m!4109125 () Bool)

(assert (=> b!3611313 m!4109125))

(declare-fun m!4109127 () Bool)

(assert (=> b!3611313 m!4109127))

(declare-fun m!4109129 () Bool)

(assert (=> b!3611313 m!4109129))

(declare-fun m!4109131 () Bool)

(assert (=> b!3611306 m!4109131))

(declare-fun m!4109133 () Bool)

(assert (=> b!3611306 m!4109133))

(declare-fun m!4109135 () Bool)

(assert (=> b!3611306 m!4109135))

(declare-fun m!4109137 () Bool)

(assert (=> b!3611306 m!4109137))

(declare-fun m!4109139 () Bool)

(assert (=> b!3611306 m!4109139))

(declare-fun m!4109141 () Bool)

(assert (=> b!3611319 m!4109141))

(declare-fun m!4109143 () Bool)

(assert (=> b!3611319 m!4109143))

(declare-fun m!4109145 () Bool)

(assert (=> b!3611289 m!4109145))

(declare-fun m!4109147 () Bool)

(assert (=> b!3611289 m!4109147))

(declare-fun m!4109149 () Bool)

(assert (=> b!3611329 m!4109149))

(declare-fun m!4109151 () Bool)

(assert (=> b!3611315 m!4109151))

(declare-fun m!4109153 () Bool)

(assert (=> b!3611300 m!4109153))

(assert (=> b!3611300 m!4109153))

(declare-fun m!4109155 () Bool)

(assert (=> b!3611300 m!4109155))

(assert (=> bm!261054 m!4109049))

(declare-fun m!4109157 () Bool)

(assert (=> b!3611314 m!4109157))

(declare-fun m!4109159 () Bool)

(assert (=> b!3611311 m!4109159))

(declare-fun m!4109161 () Bool)

(assert (=> b!3611311 m!4109161))

(declare-fun m!4109163 () Bool)

(assert (=> b!3611311 m!4109163))

(assert (=> b!3611311 m!4109163))

(declare-fun m!4109165 () Bool)

(assert (=> b!3611311 m!4109165))

(declare-fun m!4109167 () Bool)

(assert (=> b!3611311 m!4109167))

(declare-fun m!4109169 () Bool)

(assert (=> b!3611311 m!4109169))

(declare-fun m!4109171 () Bool)

(assert (=> b!3611298 m!4109171))

(declare-fun m!4109173 () Bool)

(assert (=> b!3611298 m!4109173))

(declare-fun m!4109175 () Bool)

(assert (=> b!3611302 m!4109175))

(declare-fun m!4109177 () Bool)

(assert (=> b!3611309 m!4109177))

(declare-fun m!4109179 () Bool)

(assert (=> b!3611297 m!4109179))

(declare-fun m!4109181 () Bool)

(assert (=> bm!261056 m!4109181))

(declare-fun m!4109183 () Bool)

(assert (=> b!3611299 m!4109183))

(declare-fun m!4109185 () Bool)

(assert (=> b!3611326 m!4109185))

(declare-fun m!4109187 () Bool)

(assert (=> b!3611326 m!4109187))

(declare-fun m!4109189 () Bool)

(assert (=> b!3611326 m!4109189))

(declare-fun m!4109191 () Bool)

(assert (=> bm!261055 m!4109191))

(declare-fun m!4109193 () Bool)

(assert (=> b!3611295 m!4109193))

(declare-fun m!4109195 () Bool)

(assert (=> start!336238 m!4109195))

(declare-fun m!4109197 () Bool)

(assert (=> b!3611308 m!4109197))

(declare-fun m!4109199 () Bool)

(assert (=> b!3611308 m!4109199))

(declare-fun m!4109201 () Bool)

(assert (=> b!3611288 m!4109201))

(declare-fun m!4109203 () Bool)

(assert (=> b!3611312 m!4109203))

(declare-fun m!4109205 () Bool)

(assert (=> b!3611312 m!4109205))

(declare-fun m!4109207 () Bool)

(assert (=> b!3611312 m!4109207))

(assert (=> b!3611292 m!4109091))

(assert (=> b!3611292 m!4109091))

(declare-fun m!4109209 () Bool)

(assert (=> b!3611292 m!4109209))

(assert (=> b!3611292 m!4109209))

(declare-fun m!4109211 () Bool)

(assert (=> b!3611292 m!4109211))

(declare-fun m!4109213 () Bool)

(assert (=> b!3611292 m!4109213))

(declare-fun m!4109215 () Bool)

(assert (=> b!3611321 m!4109215))

(check-sat (not b!3611289) b_and!263407 (not b_next!94481) (not b!3611288) (not b!3611318) (not b_next!94493) tp_is_empty!17881 (not b!3611329) b_and!263409 (not b!3611310) (not b!3611299) (not b!3611306) (not b!3611296) (not b!3611314) (not b!3611290) (not b_next!94487) (not b!3611316) (not b!3611311) (not bm!261053) (not b_next!94491) (not b!3611321) (not b!3611315) (not b!3611313) (not bm!261054) (not b!3611293) b_and!263403 (not b_next!94495) (not b!3611322) (not bm!261055) b_and!263405 (not b!3611286) (not b!3611302) b_and!263397 (not b!3611328) (not b_next!94485) (not b!3611307) (not b!3611295) (not b!3611309) (not b_next!94483) (not b!3611320) (not b!3611308) (not b!3611319) (not b!3611330) b_and!263395 (not bm!261056) (not b!3611300) (not b!3611298) (not bm!261057) b_and!263401 (not b_next!94489) (not bm!261052) (not b!3611292) b_and!263399 (not b!3611312) (not b!3611297) (not b!3611326) (not b!3611284) (not start!336238))
(check-sat b_and!263407 (not b_next!94487) (not b_next!94491) b_and!263403 (not b_next!94481) (not b_next!94495) b_and!263405 b_and!263397 (not b_next!94485) (not b_next!94483) (not b_next!94493) b_and!263395 b_and!263399 b_and!263409 b_and!263401 (not b_next!94489))
