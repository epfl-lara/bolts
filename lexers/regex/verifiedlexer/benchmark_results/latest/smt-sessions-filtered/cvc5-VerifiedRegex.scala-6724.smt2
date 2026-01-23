; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!351764 () Bool)

(assert start!351764)

(declare-fun b!3746971 () Bool)

(declare-fun b_free!99861 () Bool)

(declare-fun b_next!100565 () Bool)

(assert (=> b!3746971 (= b_free!99861 (not b_next!100565))))

(declare-fun tp!1143159 () Bool)

(declare-fun b_and!278095 () Bool)

(assert (=> b!3746971 (= tp!1143159 b_and!278095)))

(declare-fun b_free!99863 () Bool)

(declare-fun b_next!100567 () Bool)

(assert (=> b!3746971 (= b_free!99863 (not b_next!100567))))

(declare-fun tp!1143155 () Bool)

(declare-fun b_and!278097 () Bool)

(assert (=> b!3746971 (= tp!1143155 b_and!278097)))

(declare-fun b!3746972 () Bool)

(declare-fun b_free!99865 () Bool)

(declare-fun b_next!100569 () Bool)

(assert (=> b!3746972 (= b_free!99865 (not b_next!100569))))

(declare-fun tp!1143161 () Bool)

(declare-fun b_and!278099 () Bool)

(assert (=> b!3746972 (= tp!1143161 b_and!278099)))

(declare-fun b_free!99867 () Bool)

(declare-fun b_next!100571 () Bool)

(assert (=> b!3746972 (= b_free!99867 (not b_next!100571))))

(declare-fun tp!1143164 () Bool)

(declare-fun b_and!278101 () Bool)

(assert (=> b!3746972 (= tp!1143164 b_and!278101)))

(declare-fun b!3746966 () Bool)

(declare-fun b_free!99869 () Bool)

(declare-fun b_next!100573 () Bool)

(assert (=> b!3746966 (= b_free!99869 (not b_next!100573))))

(declare-fun tp!1143163 () Bool)

(declare-fun b_and!278103 () Bool)

(assert (=> b!3746966 (= tp!1143163 b_and!278103)))

(declare-fun b_free!99871 () Bool)

(declare-fun b_next!100575 () Bool)

(assert (=> b!3746966 (= b_free!99871 (not b_next!100575))))

(declare-fun tp!1143158 () Bool)

(declare-fun b_and!278105 () Bool)

(assert (=> b!3746966 (= tp!1143158 b_and!278105)))

(declare-fun b!3746959 () Bool)

(declare-fun res!1518791 () Bool)

(declare-fun e!2317021 () Bool)

(assert (=> b!3746959 (=> (not res!1518791) (not e!2317021))))

(declare-datatypes ((List!39965 0))(
  ( (Nil!39841) (Cons!39841 (h!45261 (_ BitVec 16)) (t!302648 List!39965)) )
))
(declare-datatypes ((TokenValue!6311 0))(
  ( (FloatLiteralValue!12622 (text!44622 List!39965)) (TokenValueExt!6310 (__x!24839 Int)) (Broken!31555 (value!193861 List!39965)) (Object!6434) (End!6311) (Def!6311) (Underscore!6311) (Match!6311) (Else!6311) (Error!6311) (Case!6311) (If!6311) (Extends!6311) (Abstract!6311) (Class!6311) (Val!6311) (DelimiterValue!12622 (del!6371 List!39965)) (KeywordValue!6317 (value!193862 List!39965)) (CommentValue!12622 (value!193863 List!39965)) (WhitespaceValue!12622 (value!193864 List!39965)) (IndentationValue!6311 (value!193865 List!39965)) (String!45182) (Int32!6311) (Broken!31556 (value!193866 List!39965)) (Boolean!6312) (Unit!57666) (OperatorValue!6314 (op!6371 List!39965)) (IdentifierValue!12622 (value!193867 List!39965)) (IdentifierValue!12623 (value!193868 List!39965)) (WhitespaceValue!12623 (value!193869 List!39965)) (True!12622) (False!12622) (Broken!31557 (value!193870 List!39965)) (Broken!31558 (value!193871 List!39965)) (True!12623) (RightBrace!6311) (RightBracket!6311) (Colon!6311) (Null!6311) (Comma!6311) (LeftBracket!6311) (False!12623) (LeftBrace!6311) (ImaginaryLiteralValue!6311 (text!44623 List!39965)) (StringLiteralValue!18933 (value!193872 List!39965)) (EOFValue!6311 (value!193873 List!39965)) (IdentValue!6311 (value!193874 List!39965)) (DelimiterValue!12623 (value!193875 List!39965)) (DedentValue!6311 (value!193876 List!39965)) (NewLineValue!6311 (value!193877 List!39965)) (IntegerValue!18933 (value!193878 (_ BitVec 32)) (text!44624 List!39965)) (IntegerValue!18934 (value!193879 Int) (text!44625 List!39965)) (Times!6311) (Or!6311) (Equal!6311) (Minus!6311) (Broken!31559 (value!193880 List!39965)) (And!6311) (Div!6311) (LessEqual!6311) (Mod!6311) (Concat!17297) (Not!6311) (Plus!6311) (SpaceValue!6311 (value!193881 List!39965)) (IntegerValue!18935 (value!193882 Int) (text!44626 List!39965)) (StringLiteralValue!18934 (text!44627 List!39965)) (FloatLiteralValue!12623 (text!44628 List!39965)) (BytesLiteralValue!6311 (value!193883 List!39965)) (CommentValue!12623 (value!193884 List!39965)) (StringLiteralValue!18935 (value!193885 List!39965)) (ErrorTokenValue!6311 (msg!6372 List!39965)) )
))
(declare-datatypes ((C!22158 0))(
  ( (C!22159 (val!13127 Int)) )
))
(declare-datatypes ((List!39966 0))(
  ( (Nil!39842) (Cons!39842 (h!45262 C!22158) (t!302649 List!39966)) )
))
(declare-datatypes ((IArray!24361 0))(
  ( (IArray!24362 (innerList!12238 List!39966)) )
))
(declare-datatypes ((Conc!12178 0))(
  ( (Node!12178 (left!30858 Conc!12178) (right!31188 Conc!12178) (csize!24586 Int) (cheight!12389 Int)) (Leaf!18903 (xs!15380 IArray!24361) (csize!24587 Int)) (Empty!12178) )
))
(declare-datatypes ((BalanceConc!23970 0))(
  ( (BalanceConc!23971 (c!648880 Conc!12178)) )
))
(declare-datatypes ((TokenValueInjection!12050 0))(
  ( (TokenValueInjection!12051 (toValue!8429 Int) (toChars!8288 Int)) )
))
(declare-datatypes ((String!45183 0))(
  ( (String!45184 (value!193886 String)) )
))
(declare-datatypes ((Regex!10986 0))(
  ( (ElementMatch!10986 (c!648881 C!22158)) (Concat!17298 (regOne!22484 Regex!10986) (regTwo!22484 Regex!10986)) (EmptyExpr!10986) (Star!10986 (reg!11315 Regex!10986)) (EmptyLang!10986) (Union!10986 (regOne!22485 Regex!10986) (regTwo!22485 Regex!10986)) )
))
(declare-datatypes ((Rule!11962 0))(
  ( (Rule!11963 (regex!6081 Regex!10986) (tag!6941 String!45183) (isSeparator!6081 Bool) (transformation!6081 TokenValueInjection!12050)) )
))
(declare-datatypes ((List!39967 0))(
  ( (Nil!39843) (Cons!39843 (h!45263 Rule!11962) (t!302650 List!39967)) )
))
(declare-fun rules!4213 () List!39967)

(declare-fun rSep!170 () Rule!11962)

(declare-fun contains!8121 (List!39967 Rule!11962) Bool)

(assert (=> b!3746959 (= res!1518791 (contains!8121 rules!4213 rSep!170))))

(declare-fun b!3746960 () Bool)

(declare-fun res!1518789 () Bool)

(assert (=> b!3746960 (=> (not res!1518789) (not e!2317021))))

(declare-fun rNSep!170 () Rule!11962)

(assert (=> b!3746960 (= res!1518789 (and (not (isSeparator!6081 rNSep!170)) (isSeparator!6081 rSep!170)))))

(declare-fun e!2317023 () Bool)

(declare-fun e!2317026 () Bool)

(declare-fun b!3746961 () Bool)

(declare-fun tp!1143157 () Bool)

(declare-fun inv!53360 (String!45183) Bool)

(declare-fun inv!53363 (TokenValueInjection!12050) Bool)

(assert (=> b!3746961 (= e!2317023 (and tp!1143157 (inv!53360 (tag!6941 (h!45263 rules!4213))) (inv!53363 (transformation!6081 (h!45263 rules!4213))) e!2317026))))

(declare-fun res!1518792 () Bool)

(assert (=> start!351764 (=> (not res!1518792) (not e!2317021))))

(declare-datatypes ((LexerInterface!5670 0))(
  ( (LexerInterfaceExt!5667 (__x!24840 Int)) (Lexer!5668) )
))
(declare-fun thiss!27193 () LexerInterface!5670)

(assert (=> start!351764 (= res!1518792 (is-Lexer!5668 thiss!27193))))

(assert (=> start!351764 e!2317021))

(declare-fun e!2317031 () Bool)

(assert (=> start!351764 e!2317031))

(declare-fun e!2317028 () Bool)

(assert (=> start!351764 e!2317028))

(assert (=> start!351764 true))

(declare-fun tp_is_empty!18987 () Bool)

(assert (=> start!351764 tp_is_empty!18987))

(declare-fun e!2317024 () Bool)

(assert (=> start!351764 e!2317024))

(declare-fun b!3746962 () Bool)

(assert (=> b!3746962 (= e!2317021 (not (contains!8121 (t!302650 rules!4213) rSep!170)))))

(declare-fun rulesInvariant!5067 (LexerInterface!5670 List!39967) Bool)

(assert (=> b!3746962 (rulesInvariant!5067 thiss!27193 (t!302650 rules!4213))))

(declare-datatypes ((Unit!57667 0))(
  ( (Unit!57668) )
))
(declare-fun lt!1299543 () Unit!57667)

(declare-fun lemmaInvariantOnRulesThenOnTail!711 (LexerInterface!5670 Rule!11962 List!39967) Unit!57667)

(assert (=> b!3746962 (= lt!1299543 (lemmaInvariantOnRulesThenOnTail!711 thiss!27193 (h!45263 rules!4213) (t!302650 rules!4213)))))

(declare-fun b!3746963 () Bool)

(declare-fun tp!1143162 () Bool)

(declare-fun e!2317022 () Bool)

(assert (=> b!3746963 (= e!2317031 (and tp!1143162 (inv!53360 (tag!6941 rNSep!170)) (inv!53363 (transformation!6081 rNSep!170)) e!2317022))))

(declare-fun b!3746964 () Bool)

(declare-fun res!1518788 () Bool)

(assert (=> b!3746964 (=> (not res!1518788) (not e!2317021))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!954 (Rule!11962 List!39967) Bool)

(assert (=> b!3746964 (= res!1518788 (ruleDisjointCharsFromAllFromOtherType!954 rNSep!170 rules!4213))))

(declare-fun b!3746965 () Bool)

(declare-fun res!1518787 () Bool)

(assert (=> b!3746965 (=> (not res!1518787) (not e!2317021))))

(assert (=> b!3746965 (= res!1518787 (and (or (not (is-Cons!39843 rules!4213)) (not (= (h!45263 rules!4213) rSep!170))) (is-Cons!39843 rules!4213)))))

(declare-fun e!2317025 () Bool)

(assert (=> b!3746966 (= e!2317025 (and tp!1143163 tp!1143158))))

(declare-fun b!3746967 () Bool)

(declare-fun res!1518790 () Bool)

(assert (=> b!3746967 (=> (not res!1518790) (not e!2317021))))

(assert (=> b!3746967 (= res!1518790 (rulesInvariant!5067 thiss!27193 rules!4213))))

(declare-fun b!3746968 () Bool)

(declare-fun res!1518786 () Bool)

(assert (=> b!3746968 (=> (not res!1518786) (not e!2317021))))

(declare-fun c!6920 () C!22158)

(declare-fun contains!8122 (List!39966 C!22158) Bool)

(declare-fun usedCharacters!1249 (Regex!10986) List!39966)

(assert (=> b!3746968 (= res!1518786 (contains!8122 (usedCharacters!1249 (regex!6081 rNSep!170)) c!6920))))

(declare-fun b!3746969 () Bool)

(declare-fun tp!1143160 () Bool)

(assert (=> b!3746969 (= e!2317028 (and e!2317023 tp!1143160))))

(declare-fun tp!1143156 () Bool)

(declare-fun b!3746970 () Bool)

(assert (=> b!3746970 (= e!2317024 (and tp!1143156 (inv!53360 (tag!6941 rSep!170)) (inv!53363 (transformation!6081 rSep!170)) e!2317025))))

(assert (=> b!3746971 (= e!2317026 (and tp!1143159 tp!1143155))))

(assert (=> b!3746972 (= e!2317022 (and tp!1143161 tp!1143164))))

(assert (= (and start!351764 res!1518792) b!3746967))

(assert (= (and b!3746967 res!1518790) b!3746959))

(assert (= (and b!3746959 res!1518791) b!3746968))

(assert (= (and b!3746968 res!1518786) b!3746960))

(assert (= (and b!3746960 res!1518789) b!3746964))

(assert (= (and b!3746964 res!1518788) b!3746965))

(assert (= (and b!3746965 res!1518787) b!3746962))

(assert (= b!3746963 b!3746972))

(assert (= start!351764 b!3746963))

(assert (= b!3746961 b!3746971))

(assert (= b!3746969 b!3746961))

(assert (= (and start!351764 (is-Cons!39843 rules!4213)) b!3746969))

(assert (= b!3746970 b!3746966))

(assert (= start!351764 b!3746970))

(declare-fun m!4239289 () Bool)

(assert (=> b!3746967 m!4239289))

(declare-fun m!4239291 () Bool)

(assert (=> b!3746970 m!4239291))

(declare-fun m!4239293 () Bool)

(assert (=> b!3746970 m!4239293))

(declare-fun m!4239295 () Bool)

(assert (=> b!3746964 m!4239295))

(declare-fun m!4239297 () Bool)

(assert (=> b!3746962 m!4239297))

(declare-fun m!4239299 () Bool)

(assert (=> b!3746962 m!4239299))

(declare-fun m!4239301 () Bool)

(assert (=> b!3746962 m!4239301))

(declare-fun m!4239303 () Bool)

(assert (=> b!3746961 m!4239303))

(declare-fun m!4239305 () Bool)

(assert (=> b!3746961 m!4239305))

(declare-fun m!4239307 () Bool)

(assert (=> b!3746968 m!4239307))

(assert (=> b!3746968 m!4239307))

(declare-fun m!4239309 () Bool)

(assert (=> b!3746968 m!4239309))

(declare-fun m!4239311 () Bool)

(assert (=> b!3746959 m!4239311))

(declare-fun m!4239313 () Bool)

(assert (=> b!3746963 m!4239313))

(declare-fun m!4239315 () Bool)

(assert (=> b!3746963 m!4239315))

(push 1)

(assert b_and!278101)

(assert (not b_next!100575))

(assert b_and!278097)

(assert tp_is_empty!18987)

(assert (not b!3746963))

(assert (not b_next!100567))

(assert (not b_next!100571))

(assert (not b!3746968))

(assert b_and!278095)

(assert (not b!3746970))

(assert b_and!278099)

(assert (not b!3746961))

(assert (not b!3746967))

(assert (not b_next!100565))

(assert (not b!3746962))

(assert (not b_next!100569))

(assert b_and!278103)

(assert (not b!3746969))

(assert (not b!3746959))

(assert b_and!278105)

(assert (not b!3746964))

(assert (not b_next!100573))

(check-sat)

(pop 1)

(push 1)

(assert b_and!278101)

(assert (not b_next!100575))

(assert b_and!278097)

(assert (not b_next!100565))

(assert (not b_next!100567))

(assert (not b_next!100571))

(assert b_and!278095)

(assert b_and!278099)

(assert (not b_next!100569))

(assert b_and!278103)

(assert b_and!278105)

(assert (not b_next!100573))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1093479 () Bool)

(assert (=> d!1093479 (= (inv!53360 (tag!6941 (h!45263 rules!4213))) (= (mod (str.len (value!193886 (tag!6941 (h!45263 rules!4213)))) 2) 0))))

(assert (=> b!3746961 d!1093479))

(declare-fun d!1093481 () Bool)

(declare-fun res!1518826 () Bool)

(declare-fun e!2317067 () Bool)

(assert (=> d!1093481 (=> (not res!1518826) (not e!2317067))))

(declare-fun semiInverseModEq!2601 (Int Int) Bool)

(assert (=> d!1093481 (= res!1518826 (semiInverseModEq!2601 (toChars!8288 (transformation!6081 (h!45263 rules!4213))) (toValue!8429 (transformation!6081 (h!45263 rules!4213)))))))

(assert (=> d!1093481 (= (inv!53363 (transformation!6081 (h!45263 rules!4213))) e!2317067)))

(declare-fun b!3747017 () Bool)

(declare-fun equivClasses!2500 (Int Int) Bool)

(assert (=> b!3747017 (= e!2317067 (equivClasses!2500 (toChars!8288 (transformation!6081 (h!45263 rules!4213))) (toValue!8429 (transformation!6081 (h!45263 rules!4213)))))))

(assert (= (and d!1093481 res!1518826) b!3747017))

(declare-fun m!4239345 () Bool)

(assert (=> d!1093481 m!4239345))

(declare-fun m!4239347 () Bool)

(assert (=> b!3747017 m!4239347))

(assert (=> b!3746961 d!1093481))

(declare-fun d!1093483 () Bool)

(declare-fun lt!1299549 () Bool)

(declare-fun content!5838 (List!39967) (Set Rule!11962))

(assert (=> d!1093483 (= lt!1299549 (set.member rSep!170 (content!5838 (t!302650 rules!4213))))))

(declare-fun e!2317073 () Bool)

(assert (=> d!1093483 (= lt!1299549 e!2317073)))

(declare-fun res!1518831 () Bool)

(assert (=> d!1093483 (=> (not res!1518831) (not e!2317073))))

(assert (=> d!1093483 (= res!1518831 (is-Cons!39843 (t!302650 rules!4213)))))

(assert (=> d!1093483 (= (contains!8121 (t!302650 rules!4213) rSep!170) lt!1299549)))

(declare-fun b!3747022 () Bool)

(declare-fun e!2317072 () Bool)

(assert (=> b!3747022 (= e!2317073 e!2317072)))

(declare-fun res!1518832 () Bool)

(assert (=> b!3747022 (=> res!1518832 e!2317072)))

(assert (=> b!3747022 (= res!1518832 (= (h!45263 (t!302650 rules!4213)) rSep!170))))

(declare-fun b!3747023 () Bool)

(assert (=> b!3747023 (= e!2317072 (contains!8121 (t!302650 (t!302650 rules!4213)) rSep!170))))

(assert (= (and d!1093483 res!1518831) b!3747022))

(assert (= (and b!3747022 (not res!1518832)) b!3747023))

(declare-fun m!4239349 () Bool)

(assert (=> d!1093483 m!4239349))

(declare-fun m!4239351 () Bool)

(assert (=> d!1093483 m!4239351))

(declare-fun m!4239353 () Bool)

(assert (=> b!3747023 m!4239353))

(assert (=> b!3746962 d!1093483))

(declare-fun d!1093485 () Bool)

(declare-fun res!1518835 () Bool)

(declare-fun e!2317076 () Bool)

(assert (=> d!1093485 (=> (not res!1518835) (not e!2317076))))

(declare-fun rulesValid!2358 (LexerInterface!5670 List!39967) Bool)

(assert (=> d!1093485 (= res!1518835 (rulesValid!2358 thiss!27193 (t!302650 rules!4213)))))

(assert (=> d!1093485 (= (rulesInvariant!5067 thiss!27193 (t!302650 rules!4213)) e!2317076)))

(declare-fun b!3747026 () Bool)

(declare-datatypes ((List!39971 0))(
  ( (Nil!39847) (Cons!39847 (h!45267 String!45183) (t!302654 List!39971)) )
))
(declare-fun noDuplicateTag!2359 (LexerInterface!5670 List!39967 List!39971) Bool)

(assert (=> b!3747026 (= e!2317076 (noDuplicateTag!2359 thiss!27193 (t!302650 rules!4213) Nil!39847))))

(assert (= (and d!1093485 res!1518835) b!3747026))

(declare-fun m!4239355 () Bool)

(assert (=> d!1093485 m!4239355))

(declare-fun m!4239357 () Bool)

(assert (=> b!3747026 m!4239357))

(assert (=> b!3746962 d!1093485))

(declare-fun d!1093487 () Bool)

(assert (=> d!1093487 (rulesInvariant!5067 thiss!27193 (t!302650 rules!4213))))

(declare-fun lt!1299552 () Unit!57667)

(declare-fun choose!22245 (LexerInterface!5670 Rule!11962 List!39967) Unit!57667)

(assert (=> d!1093487 (= lt!1299552 (choose!22245 thiss!27193 (h!45263 rules!4213) (t!302650 rules!4213)))))

(assert (=> d!1093487 (rulesInvariant!5067 thiss!27193 (Cons!39843 (h!45263 rules!4213) (t!302650 rules!4213)))))

(assert (=> d!1093487 (= (lemmaInvariantOnRulesThenOnTail!711 thiss!27193 (h!45263 rules!4213) (t!302650 rules!4213)) lt!1299552)))

(declare-fun bs!575328 () Bool)

(assert (= bs!575328 d!1093487))

(assert (=> bs!575328 m!4239299))

(declare-fun m!4239359 () Bool)

(assert (=> bs!575328 m!4239359))

(declare-fun m!4239361 () Bool)

(assert (=> bs!575328 m!4239361))

(assert (=> b!3746962 d!1093487))

(declare-fun d!1093491 () Bool)

(declare-fun res!1518836 () Bool)

(declare-fun e!2317077 () Bool)

(assert (=> d!1093491 (=> (not res!1518836) (not e!2317077))))

(assert (=> d!1093491 (= res!1518836 (rulesValid!2358 thiss!27193 rules!4213))))

(assert (=> d!1093491 (= (rulesInvariant!5067 thiss!27193 rules!4213) e!2317077)))

(declare-fun b!3747027 () Bool)

(assert (=> b!3747027 (= e!2317077 (noDuplicateTag!2359 thiss!27193 rules!4213 Nil!39847))))

(assert (= (and d!1093491 res!1518836) b!3747027))

(declare-fun m!4239363 () Bool)

(assert (=> d!1093491 m!4239363))

(declare-fun m!4239365 () Bool)

(assert (=> b!3747027 m!4239365))

(assert (=> b!3746967 d!1093491))

(declare-fun b!3747040 () Bool)

(declare-fun e!2317090 () Bool)

(declare-fun e!2317089 () Bool)

(assert (=> b!3747040 (= e!2317090 e!2317089)))

(declare-fun res!1518845 () Bool)

(declare-fun rulesUseDisjointChars!380 (Rule!11962 Rule!11962) Bool)

(assert (=> b!3747040 (= res!1518845 (rulesUseDisjointChars!380 rNSep!170 (h!45263 rules!4213)))))

(assert (=> b!3747040 (=> (not res!1518845) (not e!2317089))))

(declare-fun d!1093493 () Bool)

(declare-fun c!648886 () Bool)

(assert (=> d!1093493 (= c!648886 (and (is-Cons!39843 rules!4213) (not (= (isSeparator!6081 (h!45263 rules!4213)) (isSeparator!6081 rNSep!170)))))))

(assert (=> d!1093493 (= (ruleDisjointCharsFromAllFromOtherType!954 rNSep!170 rules!4213) e!2317090)))

(declare-fun b!3747041 () Bool)

(declare-fun call!275125 () Bool)

(assert (=> b!3747041 (= e!2317089 call!275125)))

(declare-fun b!3747042 () Bool)

(declare-fun e!2317088 () Bool)

(assert (=> b!3747042 (= e!2317088 call!275125)))

(declare-fun b!3747043 () Bool)

(assert (=> b!3747043 (= e!2317090 e!2317088)))

(declare-fun res!1518846 () Bool)

(assert (=> b!3747043 (= res!1518846 (not (is-Cons!39843 rules!4213)))))

(assert (=> b!3747043 (=> res!1518846 e!2317088)))

(declare-fun bm!275120 () Bool)

(assert (=> bm!275120 (= call!275125 (ruleDisjointCharsFromAllFromOtherType!954 rNSep!170 (t!302650 rules!4213)))))

(assert (= (and d!1093493 c!648886) b!3747040))

(assert (= (and d!1093493 (not c!648886)) b!3747043))

(assert (= (and b!3747040 res!1518845) b!3747041))

(assert (= (and b!3747043 (not res!1518846)) b!3747042))

(assert (= (or b!3747041 b!3747042) bm!275120))

(declare-fun m!4239367 () Bool)

(assert (=> b!3747040 m!4239367))

(declare-fun m!4239369 () Bool)

(assert (=> bm!275120 m!4239369))

(assert (=> b!3746964 d!1093493))

(declare-fun d!1093495 () Bool)

(assert (=> d!1093495 (= (inv!53360 (tag!6941 rSep!170)) (= (mod (str.len (value!193886 (tag!6941 rSep!170))) 2) 0))))

(assert (=> b!3746970 d!1093495))

(declare-fun d!1093497 () Bool)

(declare-fun res!1518849 () Bool)

(declare-fun e!2317093 () Bool)

(assert (=> d!1093497 (=> (not res!1518849) (not e!2317093))))

(assert (=> d!1093497 (= res!1518849 (semiInverseModEq!2601 (toChars!8288 (transformation!6081 rSep!170)) (toValue!8429 (transformation!6081 rSep!170))))))

(assert (=> d!1093497 (= (inv!53363 (transformation!6081 rSep!170)) e!2317093)))

(declare-fun b!3747046 () Bool)

(assert (=> b!3747046 (= e!2317093 (equivClasses!2500 (toChars!8288 (transformation!6081 rSep!170)) (toValue!8429 (transformation!6081 rSep!170))))))

(assert (= (and d!1093497 res!1518849) b!3747046))

(declare-fun m!4239371 () Bool)

(assert (=> d!1093497 m!4239371))

(declare-fun m!4239373 () Bool)

(assert (=> b!3747046 m!4239373))

(assert (=> b!3746970 d!1093497))

(declare-fun d!1093499 () Bool)

(declare-fun lt!1299556 () Bool)

(assert (=> d!1093499 (= lt!1299556 (set.member rSep!170 (content!5838 rules!4213)))))

(declare-fun e!2317095 () Bool)

(assert (=> d!1093499 (= lt!1299556 e!2317095)))

(declare-fun res!1518850 () Bool)

(assert (=> d!1093499 (=> (not res!1518850) (not e!2317095))))

(assert (=> d!1093499 (= res!1518850 (is-Cons!39843 rules!4213))))

(assert (=> d!1093499 (= (contains!8121 rules!4213 rSep!170) lt!1299556)))

(declare-fun b!3747047 () Bool)

(declare-fun e!2317094 () Bool)

(assert (=> b!3747047 (= e!2317095 e!2317094)))

(declare-fun res!1518851 () Bool)

(assert (=> b!3747047 (=> res!1518851 e!2317094)))

(assert (=> b!3747047 (= res!1518851 (= (h!45263 rules!4213) rSep!170))))

(declare-fun b!3747048 () Bool)

(assert (=> b!3747048 (= e!2317094 (contains!8121 (t!302650 rules!4213) rSep!170))))

(assert (= (and d!1093499 res!1518850) b!3747047))

(assert (= (and b!3747047 (not res!1518851)) b!3747048))

(declare-fun m!4239379 () Bool)

(assert (=> d!1093499 m!4239379))

(declare-fun m!4239383 () Bool)

(assert (=> d!1093499 m!4239383))

(assert (=> b!3747048 m!4239297))

(assert (=> b!3746959 d!1093499))

(declare-fun d!1093501 () Bool)

(declare-fun lt!1299559 () Bool)

(declare-fun content!5839 (List!39966) (Set C!22158))

(assert (=> d!1093501 (= lt!1299559 (set.member c!6920 (content!5839 (usedCharacters!1249 (regex!6081 rNSep!170)))))))

(declare-fun e!2317100 () Bool)

(assert (=> d!1093501 (= lt!1299559 e!2317100)))

(declare-fun res!1518856 () Bool)

(assert (=> d!1093501 (=> (not res!1518856) (not e!2317100))))

(assert (=> d!1093501 (= res!1518856 (is-Cons!39842 (usedCharacters!1249 (regex!6081 rNSep!170))))))

(assert (=> d!1093501 (= (contains!8122 (usedCharacters!1249 (regex!6081 rNSep!170)) c!6920) lt!1299559)))

(declare-fun b!3747053 () Bool)

(declare-fun e!2317101 () Bool)

(assert (=> b!3747053 (= e!2317100 e!2317101)))

(declare-fun res!1518857 () Bool)

(assert (=> b!3747053 (=> res!1518857 e!2317101)))

(assert (=> b!3747053 (= res!1518857 (= (h!45262 (usedCharacters!1249 (regex!6081 rNSep!170))) c!6920))))

(declare-fun b!3747054 () Bool)

(assert (=> b!3747054 (= e!2317101 (contains!8122 (t!302649 (usedCharacters!1249 (regex!6081 rNSep!170))) c!6920))))

(assert (= (and d!1093501 res!1518856) b!3747053))

(assert (= (and b!3747053 (not res!1518857)) b!3747054))

(assert (=> d!1093501 m!4239307))

(declare-fun m!4239385 () Bool)

(assert (=> d!1093501 m!4239385))

(declare-fun m!4239387 () Bool)

(assert (=> d!1093501 m!4239387))

(declare-fun m!4239389 () Bool)

(assert (=> b!3747054 m!4239389))

(assert (=> b!3746968 d!1093501))

(declare-fun b!3747074 () Bool)

(declare-fun e!2317113 () List!39966)

(declare-fun call!275135 () List!39966)

(assert (=> b!3747074 (= e!2317113 call!275135)))

(declare-fun bm!275129 () Bool)

(declare-fun call!275136 () List!39966)

(declare-fun call!275134 () List!39966)

(declare-fun call!275137 () List!39966)

(declare-fun ++!9888 (List!39966 List!39966) List!39966)

(assert (=> bm!275129 (= call!275136 (++!9888 call!275134 call!275137))))

(declare-fun d!1093505 () Bool)

(declare-fun c!648895 () Bool)

(assert (=> d!1093505 (= c!648895 (or (is-EmptyExpr!10986 (regex!6081 rNSep!170)) (is-EmptyLang!10986 (regex!6081 rNSep!170))))))

(declare-fun e!2317115 () List!39966)

(assert (=> d!1093505 (= (usedCharacters!1249 (regex!6081 rNSep!170)) e!2317115)))

(declare-fun b!3747075 () Bool)

(declare-fun c!648897 () Bool)

(assert (=> b!3747075 (= c!648897 (is-Star!10986 (regex!6081 rNSep!170)))))

(declare-fun e!2317114 () List!39966)

(assert (=> b!3747075 (= e!2317114 e!2317113)))

(declare-fun b!3747076 () Bool)

(assert (=> b!3747076 (= e!2317115 e!2317114)))

(declare-fun c!648898 () Bool)

(assert (=> b!3747076 (= c!648898 (is-ElementMatch!10986 (regex!6081 rNSep!170)))))

(declare-fun b!3747077 () Bool)

(assert (=> b!3747077 (= e!2317114 (Cons!39842 (c!648881 (regex!6081 rNSep!170)) Nil!39842))))

(declare-fun b!3747078 () Bool)

(declare-fun e!2317116 () List!39966)

(assert (=> b!3747078 (= e!2317113 e!2317116)))

(declare-fun c!648896 () Bool)

(assert (=> b!3747078 (= c!648896 (is-Union!10986 (regex!6081 rNSep!170)))))

(declare-fun b!3747079 () Bool)

(assert (=> b!3747079 (= e!2317115 Nil!39842)))

(declare-fun b!3747080 () Bool)

(assert (=> b!3747080 (= e!2317116 call!275136)))

(declare-fun bm!275130 () Bool)

(assert (=> bm!275130 (= call!275135 (usedCharacters!1249 (ite c!648897 (reg!11315 (regex!6081 rNSep!170)) (ite c!648896 (regTwo!22485 (regex!6081 rNSep!170)) (regTwo!22484 (regex!6081 rNSep!170))))))))

(declare-fun bm!275131 () Bool)

(assert (=> bm!275131 (= call!275137 call!275135)))

(declare-fun bm!275132 () Bool)

(assert (=> bm!275132 (= call!275134 (usedCharacters!1249 (ite c!648896 (regOne!22485 (regex!6081 rNSep!170)) (regOne!22484 (regex!6081 rNSep!170)))))))

(declare-fun b!3747081 () Bool)

(assert (=> b!3747081 (= e!2317116 call!275136)))

(assert (= (and d!1093505 c!648895) b!3747079))

(assert (= (and d!1093505 (not c!648895)) b!3747076))

(assert (= (and b!3747076 c!648898) b!3747077))

(assert (= (and b!3747076 (not c!648898)) b!3747075))

(assert (= (and b!3747075 c!648897) b!3747074))

(assert (= (and b!3747075 (not c!648897)) b!3747078))

(assert (= (and b!3747078 c!648896) b!3747081))

(assert (= (and b!3747078 (not c!648896)) b!3747080))

(assert (= (or b!3747081 b!3747080) bm!275132))

(assert (= (or b!3747081 b!3747080) bm!275131))

(assert (= (or b!3747081 b!3747080) bm!275129))

(assert (= (or b!3747074 bm!275131) bm!275130))

(declare-fun m!4239395 () Bool)

(assert (=> bm!275129 m!4239395))

(declare-fun m!4239397 () Bool)

(assert (=> bm!275130 m!4239397))

(declare-fun m!4239399 () Bool)

(assert (=> bm!275132 m!4239399))

(assert (=> b!3746968 d!1093505))

(declare-fun d!1093509 () Bool)

(assert (=> d!1093509 (= (inv!53360 (tag!6941 rNSep!170)) (= (mod (str.len (value!193886 (tag!6941 rNSep!170))) 2) 0))))

(assert (=> b!3746963 d!1093509))

(declare-fun d!1093511 () Bool)

(declare-fun res!1518861 () Bool)

(declare-fun e!2317117 () Bool)

(assert (=> d!1093511 (=> (not res!1518861) (not e!2317117))))

(assert (=> d!1093511 (= res!1518861 (semiInverseModEq!2601 (toChars!8288 (transformation!6081 rNSep!170)) (toValue!8429 (transformation!6081 rNSep!170))))))

(assert (=> d!1093511 (= (inv!53363 (transformation!6081 rNSep!170)) e!2317117)))

(declare-fun b!3747082 () Bool)

(assert (=> b!3747082 (= e!2317117 (equivClasses!2500 (toChars!8288 (transformation!6081 rNSep!170)) (toValue!8429 (transformation!6081 rNSep!170))))))

(assert (= (and d!1093511 res!1518861) b!3747082))

(declare-fun m!4239401 () Bool)

(assert (=> d!1093511 m!4239401))

(declare-fun m!4239403 () Bool)

(assert (=> b!3747082 m!4239403))

(assert (=> b!3746963 d!1093511))

(declare-fun e!2317120 () Bool)

(assert (=> b!3746961 (= tp!1143157 e!2317120)))

(declare-fun b!3747095 () Bool)

(declare-fun tp!1143208 () Bool)

(assert (=> b!3747095 (= e!2317120 tp!1143208)))

(declare-fun b!3747093 () Bool)

(assert (=> b!3747093 (= e!2317120 tp_is_empty!18987)))

(declare-fun b!3747094 () Bool)

(declare-fun tp!1143207 () Bool)

(declare-fun tp!1143205 () Bool)

(assert (=> b!3747094 (= e!2317120 (and tp!1143207 tp!1143205))))

(declare-fun b!3747096 () Bool)

(declare-fun tp!1143209 () Bool)

(declare-fun tp!1143206 () Bool)

(assert (=> b!3747096 (= e!2317120 (and tp!1143209 tp!1143206))))

(assert (= (and b!3746961 (is-ElementMatch!10986 (regex!6081 (h!45263 rules!4213)))) b!3747093))

(assert (= (and b!3746961 (is-Concat!17298 (regex!6081 (h!45263 rules!4213)))) b!3747094))

(assert (= (and b!3746961 (is-Star!10986 (regex!6081 (h!45263 rules!4213)))) b!3747095))

(assert (= (and b!3746961 (is-Union!10986 (regex!6081 (h!45263 rules!4213)))) b!3747096))

(declare-fun b!3747107 () Bool)

(declare-fun b_free!99885 () Bool)

(declare-fun b_next!100589 () Bool)

(assert (=> b!3747107 (= b_free!99885 (not b_next!100589))))

(declare-fun tp!1143218 () Bool)

(declare-fun b_and!278119 () Bool)

(assert (=> b!3747107 (= tp!1143218 b_and!278119)))

(declare-fun b_free!99887 () Bool)

(declare-fun b_next!100591 () Bool)

(assert (=> b!3747107 (= b_free!99887 (not b_next!100591))))

(declare-fun tp!1143221 () Bool)

(declare-fun b_and!278121 () Bool)

(assert (=> b!3747107 (= tp!1143221 b_and!278121)))

(declare-fun e!2317132 () Bool)

(assert (=> b!3747107 (= e!2317132 (and tp!1143218 tp!1143221))))

(declare-fun e!2317130 () Bool)

(declare-fun tp!1143219 () Bool)

(declare-fun b!3747106 () Bool)

(assert (=> b!3747106 (= e!2317130 (and tp!1143219 (inv!53360 (tag!6941 (h!45263 (t!302650 rules!4213)))) (inv!53363 (transformation!6081 (h!45263 (t!302650 rules!4213)))) e!2317132))))

(declare-fun b!3747105 () Bool)

(declare-fun e!2317129 () Bool)

(declare-fun tp!1143220 () Bool)

(assert (=> b!3747105 (= e!2317129 (and e!2317130 tp!1143220))))

(assert (=> b!3746969 (= tp!1143160 e!2317129)))

(assert (= b!3747106 b!3747107))

(assert (= b!3747105 b!3747106))

(assert (= (and b!3746969 (is-Cons!39843 (t!302650 rules!4213))) b!3747105))

(declare-fun m!4239409 () Bool)

(assert (=> b!3747106 m!4239409))

(declare-fun m!4239411 () Bool)

(assert (=> b!3747106 m!4239411))

(declare-fun e!2317133 () Bool)

(assert (=> b!3746970 (= tp!1143156 e!2317133)))

(declare-fun b!3747110 () Bool)

(declare-fun tp!1143225 () Bool)

(assert (=> b!3747110 (= e!2317133 tp!1143225)))

(declare-fun b!3747108 () Bool)

(assert (=> b!3747108 (= e!2317133 tp_is_empty!18987)))

(declare-fun b!3747109 () Bool)

(declare-fun tp!1143224 () Bool)

(declare-fun tp!1143222 () Bool)

(assert (=> b!3747109 (= e!2317133 (and tp!1143224 tp!1143222))))

(declare-fun b!3747111 () Bool)

(declare-fun tp!1143226 () Bool)

(declare-fun tp!1143223 () Bool)

(assert (=> b!3747111 (= e!2317133 (and tp!1143226 tp!1143223))))

(assert (= (and b!3746970 (is-ElementMatch!10986 (regex!6081 rSep!170))) b!3747108))

(assert (= (and b!3746970 (is-Concat!17298 (regex!6081 rSep!170))) b!3747109))

(assert (= (and b!3746970 (is-Star!10986 (regex!6081 rSep!170))) b!3747110))

(assert (= (and b!3746970 (is-Union!10986 (regex!6081 rSep!170))) b!3747111))

(declare-fun e!2317134 () Bool)

(assert (=> b!3746963 (= tp!1143162 e!2317134)))

(declare-fun b!3747114 () Bool)

(declare-fun tp!1143230 () Bool)

(assert (=> b!3747114 (= e!2317134 tp!1143230)))

(declare-fun b!3747112 () Bool)

(assert (=> b!3747112 (= e!2317134 tp_is_empty!18987)))

(declare-fun b!3747113 () Bool)

(declare-fun tp!1143229 () Bool)

(declare-fun tp!1143227 () Bool)

(assert (=> b!3747113 (= e!2317134 (and tp!1143229 tp!1143227))))

(declare-fun b!3747115 () Bool)

(declare-fun tp!1143231 () Bool)

(declare-fun tp!1143228 () Bool)

(assert (=> b!3747115 (= e!2317134 (and tp!1143231 tp!1143228))))

(assert (= (and b!3746963 (is-ElementMatch!10986 (regex!6081 rNSep!170))) b!3747112))

(assert (= (and b!3746963 (is-Concat!17298 (regex!6081 rNSep!170))) b!3747113))

(assert (= (and b!3746963 (is-Star!10986 (regex!6081 rNSep!170))) b!3747114))

(assert (= (and b!3746963 (is-Union!10986 (regex!6081 rNSep!170))) b!3747115))

(push 1)

(assert (not b!3747106))

(assert (not b!3747115))

(assert b_and!278101)

(assert (not b_next!100565))

(assert (not d!1093499))

(assert (not b!3747048))

(assert (not b_next!100571))

(assert (not b!3747105))

(assert b_and!278099)

(assert (not b!3747027))

(assert (not d!1093481))

(assert (not b!3747046))

(assert (not d!1093487))

(assert (not b_next!100589))

(assert (not b_next!100575))

(assert b_and!278097)

(assert (not b!3747113))

(assert tp_is_empty!18987)

(assert (not d!1093483))

(assert (not b!3747054))

(assert (not b!3747040))

(assert (not b!3747023))

(assert (not b!3747094))

(assert (not b!3747096))

(assert (not b!3747111))

(assert (not b!3747114))

(assert (not d!1093491))

(assert b_and!278119)

(assert (not b!3747017))

(assert (not b_next!100567))

(assert (not b!3747082))

(assert (not b_next!100569))

(assert (not b!3747095))

(assert b_and!278103)

(assert (not b!3747026))

(assert (not bm!275130))

(assert (not d!1093501))

(assert (not bm!275132))

(assert (not b!3747110))

(assert (not d!1093485))

(assert b_and!278095)

(assert (not bm!275129))

(assert (not d!1093511))

(assert (not d!1093497))

(assert b_and!278121)

(assert (not b!3747109))

(assert (not bm!275120))

(assert (not b_next!100591))

(assert b_and!278105)

(assert (not b_next!100573))

(check-sat)

(pop 1)

(push 1)

(assert b_and!278101)

(assert b_and!278097)

(assert b_and!278119)

(assert (not b_next!100565))

(assert (not b_next!100567))

(assert (not b_next!100571))

(assert b_and!278095)

(assert b_and!278099)

(assert b_and!278121)

(assert (not b_next!100589))

(assert (not b_next!100575))

(assert (not b_next!100569))

(assert b_and!278103)

(assert (not b_next!100591))

(assert b_and!278105)

(assert (not b_next!100573))

(check-sat)

(pop 1)

