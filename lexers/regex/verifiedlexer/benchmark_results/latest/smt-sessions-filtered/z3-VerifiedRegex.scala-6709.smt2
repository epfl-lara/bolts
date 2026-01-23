; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351462 () Bool)

(assert start!351462)

(declare-fun b!3743812 () Bool)

(declare-fun b_free!99365 () Bool)

(declare-fun b_next!100069 () Bool)

(assert (=> b!3743812 (= b_free!99365 (not b_next!100069))))

(declare-fun tp!1141387 () Bool)

(declare-fun b_and!277599 () Bool)

(assert (=> b!3743812 (= tp!1141387 b_and!277599)))

(declare-fun b_free!99367 () Bool)

(declare-fun b_next!100071 () Bool)

(assert (=> b!3743812 (= b_free!99367 (not b_next!100071))))

(declare-fun tp!1141391 () Bool)

(declare-fun b_and!277601 () Bool)

(assert (=> b!3743812 (= tp!1141391 b_and!277601)))

(declare-fun b!3743807 () Bool)

(declare-fun b_free!99369 () Bool)

(declare-fun b_next!100073 () Bool)

(assert (=> b!3743807 (= b_free!99369 (not b_next!100073))))

(declare-fun tp!1141389 () Bool)

(declare-fun b_and!277603 () Bool)

(assert (=> b!3743807 (= tp!1141389 b_and!277603)))

(declare-fun b_free!99371 () Bool)

(declare-fun b_next!100075 () Bool)

(assert (=> b!3743807 (= b_free!99371 (not b_next!100075))))

(declare-fun tp!1141384 () Bool)

(declare-fun b_and!277605 () Bool)

(assert (=> b!3743807 (= tp!1141384 b_and!277605)))

(declare-fun b!3743808 () Bool)

(declare-fun b_free!99373 () Bool)

(declare-fun b_next!100077 () Bool)

(assert (=> b!3743808 (= b_free!99373 (not b_next!100077))))

(declare-fun tp!1141381 () Bool)

(declare-fun b_and!277607 () Bool)

(assert (=> b!3743808 (= tp!1141381 b_and!277607)))

(declare-fun b_free!99375 () Bool)

(declare-fun b_next!100079 () Bool)

(assert (=> b!3743808 (= b_free!99375 (not b_next!100079))))

(declare-fun tp!1141386 () Bool)

(declare-fun b_and!277609 () Bool)

(assert (=> b!3743808 (= tp!1141386 b_and!277609)))

(declare-fun b!3743811 () Bool)

(declare-fun b_free!99377 () Bool)

(declare-fun b_next!100081 () Bool)

(assert (=> b!3743811 (= b_free!99377 (not b_next!100081))))

(declare-fun tp!1141380 () Bool)

(declare-fun b_and!277611 () Bool)

(assert (=> b!3743811 (= tp!1141380 b_and!277611)))

(declare-fun b_free!99379 () Bool)

(declare-fun b_next!100083 () Bool)

(assert (=> b!3743811 (= b_free!99379 (not b_next!100083))))

(declare-fun tp!1141379 () Bool)

(declare-fun b_and!277613 () Bool)

(assert (=> b!3743811 (= tp!1141379 b_and!277613)))

(declare-fun b!3743803 () Bool)

(declare-fun res!1517510 () Bool)

(declare-fun e!2314791 () Bool)

(assert (=> b!3743803 (=> (not res!1517510) (not e!2314791))))

(declare-datatypes ((List!39864 0))(
  ( (Nil!39740) (Cons!39740 (h!45160 (_ BitVec 16)) (t!302547 List!39864)) )
))
(declare-datatypes ((TokenValue!6282 0))(
  ( (FloatLiteralValue!12564 (text!44419 List!39864)) (TokenValueExt!6281 (__x!24781 Int)) (Broken!31410 (value!193062 List!39864)) (Object!6405) (End!6282) (Def!6282) (Underscore!6282) (Match!6282) (Else!6282) (Error!6282) (Case!6282) (If!6282) (Extends!6282) (Abstract!6282) (Class!6282) (Val!6282) (DelimiterValue!12564 (del!6342 List!39864)) (KeywordValue!6288 (value!193063 List!39864)) (CommentValue!12564 (value!193064 List!39864)) (WhitespaceValue!12564 (value!193065 List!39864)) (IndentationValue!6282 (value!193066 List!39864)) (String!45035) (Int32!6282) (Broken!31411 (value!193067 List!39864)) (Boolean!6283) (Unit!57619) (OperatorValue!6285 (op!6342 List!39864)) (IdentifierValue!12564 (value!193068 List!39864)) (IdentifierValue!12565 (value!193069 List!39864)) (WhitespaceValue!12565 (value!193070 List!39864)) (True!12564) (False!12564) (Broken!31412 (value!193071 List!39864)) (Broken!31413 (value!193072 List!39864)) (True!12565) (RightBrace!6282) (RightBracket!6282) (Colon!6282) (Null!6282) (Comma!6282) (LeftBracket!6282) (False!12565) (LeftBrace!6282) (ImaginaryLiteralValue!6282 (text!44420 List!39864)) (StringLiteralValue!18846 (value!193073 List!39864)) (EOFValue!6282 (value!193074 List!39864)) (IdentValue!6282 (value!193075 List!39864)) (DelimiterValue!12565 (value!193076 List!39864)) (DedentValue!6282 (value!193077 List!39864)) (NewLineValue!6282 (value!193078 List!39864)) (IntegerValue!18846 (value!193079 (_ BitVec 32)) (text!44421 List!39864)) (IntegerValue!18847 (value!193080 Int) (text!44422 List!39864)) (Times!6282) (Or!6282) (Equal!6282) (Minus!6282) (Broken!31414 (value!193081 List!39864)) (And!6282) (Div!6282) (LessEqual!6282) (Mod!6282) (Concat!17239) (Not!6282) (Plus!6282) (SpaceValue!6282 (value!193082 List!39864)) (IntegerValue!18848 (value!193083 Int) (text!44423 List!39864)) (StringLiteralValue!18847 (text!44424 List!39864)) (FloatLiteralValue!12565 (text!44425 List!39864)) (BytesLiteralValue!6282 (value!193084 List!39864)) (CommentValue!12565 (value!193085 List!39864)) (StringLiteralValue!18848 (value!193086 List!39864)) (ErrorTokenValue!6282 (msg!6343 List!39864)) )
))
(declare-datatypes ((C!22100 0))(
  ( (C!22101 (val!13098 Int)) )
))
(declare-datatypes ((List!39865 0))(
  ( (Nil!39741) (Cons!39741 (h!45161 C!22100) (t!302548 List!39865)) )
))
(declare-datatypes ((IArray!24303 0))(
  ( (IArray!24304 (innerList!12209 List!39865)) )
))
(declare-datatypes ((Conc!12149 0))(
  ( (Node!12149 (left!30806 Conc!12149) (right!31136 Conc!12149) (csize!24528 Int) (cheight!12360 Int)) (Leaf!18859 (xs!15351 IArray!24303) (csize!24529 Int)) (Empty!12149) )
))
(declare-datatypes ((Regex!10957 0))(
  ( (ElementMatch!10957 (c!648554 C!22100)) (Concat!17240 (regOne!22426 Regex!10957) (regTwo!22426 Regex!10957)) (EmptyExpr!10957) (Star!10957 (reg!11286 Regex!10957)) (EmptyLang!10957) (Union!10957 (regOne!22427 Regex!10957) (regTwo!22427 Regex!10957)) )
))
(declare-datatypes ((String!45036 0))(
  ( (String!45037 (value!193087 String)) )
))
(declare-datatypes ((BalanceConc!23912 0))(
  ( (BalanceConc!23913 (c!648555 Conc!12149)) )
))
(declare-datatypes ((TokenValueInjection!11992 0))(
  ( (TokenValueInjection!11993 (toValue!8396 Int) (toChars!8255 Int)) )
))
(declare-datatypes ((Rule!11904 0))(
  ( (Rule!11905 (regex!6052 Regex!10957) (tag!6912 String!45036) (isSeparator!6052 Bool) (transformation!6052 TokenValueInjection!11992)) )
))
(declare-datatypes ((List!39866 0))(
  ( (Nil!39742) (Cons!39742 (h!45162 Rule!11904) (t!302549 List!39866)) )
))
(declare-fun rulesRec!198 () List!39866)

(declare-fun rNSep!159 () Rule!11904)

(declare-fun contains!8061 (List!39866 Rule!11904) Bool)

(assert (=> b!3743803 (= res!1517510 (contains!8061 rulesRec!198 rNSep!159))))

(declare-fun b!3743804 () Bool)

(declare-fun res!1517515 () Bool)

(assert (=> b!3743804 (=> (not res!1517515) (not e!2314791))))

(declare-fun rules!4189 () List!39866)

(declare-fun rSep!159 () Rule!11904)

(assert (=> b!3743804 (= res!1517515 (contains!8061 rules!4189 rSep!159))))

(declare-fun b!3743805 () Bool)

(declare-fun e!2314788 () Bool)

(declare-fun e!2314795 () Bool)

(declare-fun tp!1141383 () Bool)

(declare-fun inv!53287 (String!45036) Bool)

(declare-fun inv!53289 (TokenValueInjection!11992) Bool)

(assert (=> b!3743805 (= e!2314788 (and tp!1141383 (inv!53287 (tag!6912 rSep!159)) (inv!53289 (transformation!6052 rSep!159)) e!2314795))))

(declare-fun tp!1141392 () Bool)

(declare-fun e!2314790 () Bool)

(declare-fun b!3743806 () Bool)

(declare-fun e!2314799 () Bool)

(assert (=> b!3743806 (= e!2314790 (and tp!1141392 (inv!53287 (tag!6912 (h!45162 rules!4189))) (inv!53289 (transformation!6052 (h!45162 rules!4189))) e!2314799))))

(declare-fun res!1517514 () Bool)

(assert (=> start!351462 (=> (not res!1517514) (not e!2314791))))

(declare-datatypes ((LexerInterface!5641 0))(
  ( (LexerInterfaceExt!5638 (__x!24782 Int)) (Lexer!5639) )
))
(declare-fun thiss!27143 () LexerInterface!5641)

(get-info :version)

(assert (=> start!351462 (= res!1517514 ((_ is Lexer!5639) thiss!27143))))

(assert (=> start!351462 e!2314791))

(assert (=> start!351462 true))

(declare-fun e!2314802 () Bool)

(assert (=> start!351462 e!2314802))

(assert (=> start!351462 e!2314788))

(declare-fun e!2314797 () Bool)

(assert (=> start!351462 e!2314797))

(declare-fun tp_is_empty!18929 () Bool)

(assert (=> start!351462 tp_is_empty!18929))

(declare-fun e!2314792 () Bool)

(assert (=> start!351462 e!2314792))

(assert (=> b!3743807 (= e!2314799 (and tp!1141389 tp!1141384))))

(declare-fun e!2314794 () Bool)

(assert (=> b!3743808 (= e!2314794 (and tp!1141381 tp!1141386))))

(declare-fun b!3743809 () Bool)

(declare-fun tp!1141385 () Bool)

(assert (=> b!3743809 (= e!2314792 (and tp!1141385 (inv!53287 (tag!6912 rNSep!159)) (inv!53289 (transformation!6052 rNSep!159)) e!2314794))))

(declare-fun b!3743810 () Bool)

(declare-fun res!1517507 () Bool)

(assert (=> b!3743810 (=> (not res!1517507) (not e!2314791))))

(declare-fun sepAndNonSepRulesDisjointChars!2030 (List!39866 List!39866) Bool)

(assert (=> b!3743810 (= res!1517507 (sepAndNonSepRulesDisjointChars!2030 rules!4189 rulesRec!198))))

(declare-fun e!2314789 () Bool)

(assert (=> b!3743811 (= e!2314789 (and tp!1141380 tp!1141379))))

(assert (=> b!3743812 (= e!2314795 (and tp!1141387 tp!1141391))))

(declare-fun b!3743813 () Bool)

(declare-fun res!1517513 () Bool)

(assert (=> b!3743813 (=> (not res!1517513) (not e!2314791))))

(assert (=> b!3743813 (= res!1517513 (and ((_ is Cons!39742) rulesRec!198) (= (h!45162 rulesRec!198) rNSep!159)))))

(declare-fun b!3743814 () Bool)

(declare-fun res!1517512 () Bool)

(assert (=> b!3743814 (=> (not res!1517512) (not e!2314791))))

(declare-fun c!6900 () C!22100)

(declare-fun contains!8062 (List!39865 C!22100) Bool)

(declare-fun usedCharacters!1220 (Regex!10957) List!39865)

(assert (=> b!3743814 (= res!1517512 (contains!8062 (usedCharacters!1220 (regex!6052 rNSep!159)) c!6900))))

(declare-fun b!3743815 () Bool)

(declare-fun res!1517511 () Bool)

(assert (=> b!3743815 (=> (not res!1517511) (not e!2314791))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!929 (Rule!11904 List!39866) Bool)

(assert (=> b!3743815 (= res!1517511 (ruleDisjointCharsFromAllFromOtherType!929 rNSep!159 rules!4189))))

(declare-fun b!3743816 () Bool)

(assert (=> b!3743816 (= e!2314791 (not true))))

(assert (=> b!3743816 (not (contains!8062 (usedCharacters!1220 (regex!6052 rSep!159)) c!6900))))

(declare-datatypes ((Unit!57620 0))(
  ( (Unit!57621) )
))
(declare-fun lt!1299332 () Unit!57620)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRuleInner!2 (LexerInterface!5641 List!39866 Rule!11904 Rule!11904 C!22100) Unit!57620)

(assert (=> b!3743816 (= lt!1299332 (lemmaSepRuleNotContainsCharContainedInANonSepRuleInner!2 thiss!27143 rules!4189 rNSep!159 rSep!159 c!6900))))

(declare-fun b!3743817 () Bool)

(declare-fun res!1517509 () Bool)

(assert (=> b!3743817 (=> (not res!1517509) (not e!2314791))))

(assert (=> b!3743817 (= res!1517509 (contains!8061 rules!4189 rNSep!159))))

(declare-fun b!3743818 () Bool)

(declare-fun res!1517516 () Bool)

(assert (=> b!3743818 (=> (not res!1517516) (not e!2314791))))

(assert (=> b!3743818 (= res!1517516 (and (not (isSeparator!6052 rNSep!159)) (isSeparator!6052 rSep!159)))))

(declare-fun b!3743819 () Bool)

(declare-fun res!1517508 () Bool)

(assert (=> b!3743819 (=> (not res!1517508) (not e!2314791))))

(declare-fun rulesInvariant!5038 (LexerInterface!5641 List!39866) Bool)

(assert (=> b!3743819 (= res!1517508 (rulesInvariant!5038 thiss!27143 rules!4189))))

(declare-fun tp!1141382 () Bool)

(declare-fun e!2314801 () Bool)

(declare-fun b!3743820 () Bool)

(assert (=> b!3743820 (= e!2314801 (and tp!1141382 (inv!53287 (tag!6912 (h!45162 rulesRec!198))) (inv!53289 (transformation!6052 (h!45162 rulesRec!198))) e!2314789))))

(declare-fun b!3743821 () Bool)

(declare-fun tp!1141388 () Bool)

(assert (=> b!3743821 (= e!2314797 (and e!2314801 tp!1141388))))

(declare-fun b!3743822 () Bool)

(declare-fun tp!1141390 () Bool)

(assert (=> b!3743822 (= e!2314802 (and e!2314790 tp!1141390))))

(assert (= (and start!351462 res!1517514) b!3743819))

(assert (= (and b!3743819 res!1517508) b!3743804))

(assert (= (and b!3743804 res!1517515) b!3743803))

(assert (= (and b!3743803 res!1517510) b!3743817))

(assert (= (and b!3743817 res!1517509) b!3743818))

(assert (= (and b!3743818 res!1517516) b!3743814))

(assert (= (and b!3743814 res!1517512) b!3743810))

(assert (= (and b!3743810 res!1517507) b!3743813))

(assert (= (and b!3743813 res!1517513) b!3743815))

(assert (= (and b!3743815 res!1517511) b!3743816))

(assert (= b!3743806 b!3743807))

(assert (= b!3743822 b!3743806))

(assert (= (and start!351462 ((_ is Cons!39742) rules!4189)) b!3743822))

(assert (= b!3743805 b!3743812))

(assert (= start!351462 b!3743805))

(assert (= b!3743820 b!3743811))

(assert (= b!3743821 b!3743820))

(assert (= (and start!351462 ((_ is Cons!39742) rulesRec!198)) b!3743821))

(assert (= b!3743809 b!3743808))

(assert (= start!351462 b!3743809))

(declare-fun m!4237391 () Bool)

(assert (=> b!3743817 m!4237391))

(declare-fun m!4237393 () Bool)

(assert (=> b!3743816 m!4237393))

(assert (=> b!3743816 m!4237393))

(declare-fun m!4237395 () Bool)

(assert (=> b!3743816 m!4237395))

(declare-fun m!4237397 () Bool)

(assert (=> b!3743816 m!4237397))

(declare-fun m!4237399 () Bool)

(assert (=> b!3743803 m!4237399))

(declare-fun m!4237401 () Bool)

(assert (=> b!3743805 m!4237401))

(declare-fun m!4237403 () Bool)

(assert (=> b!3743805 m!4237403))

(declare-fun m!4237405 () Bool)

(assert (=> b!3743819 m!4237405))

(declare-fun m!4237407 () Bool)

(assert (=> b!3743815 m!4237407))

(declare-fun m!4237409 () Bool)

(assert (=> b!3743820 m!4237409))

(declare-fun m!4237411 () Bool)

(assert (=> b!3743820 m!4237411))

(declare-fun m!4237413 () Bool)

(assert (=> b!3743814 m!4237413))

(assert (=> b!3743814 m!4237413))

(declare-fun m!4237415 () Bool)

(assert (=> b!3743814 m!4237415))

(declare-fun m!4237417 () Bool)

(assert (=> b!3743806 m!4237417))

(declare-fun m!4237419 () Bool)

(assert (=> b!3743806 m!4237419))

(declare-fun m!4237421 () Bool)

(assert (=> b!3743809 m!4237421))

(declare-fun m!4237423 () Bool)

(assert (=> b!3743809 m!4237423))

(declare-fun m!4237425 () Bool)

(assert (=> b!3743810 m!4237425))

(declare-fun m!4237427 () Bool)

(assert (=> b!3743804 m!4237427))

(check-sat b_and!277601 (not b!3743817) (not b!3743822) (not b!3743803) (not b_next!100073) (not b!3743816) (not b!3743805) (not b!3743810) (not b_next!100069) (not b!3743809) (not b!3743814) (not b!3743819) (not b!3743806) b_and!277609 b_and!277605 (not b!3743815) (not b!3743820) b_and!277603 (not b_next!100077) (not b_next!100081) (not b_next!100083) b_and!277599 b_and!277613 b_and!277607 (not b!3743804) b_and!277611 (not b_next!100075) (not b_next!100079) (not b!3743821) (not b_next!100071) tp_is_empty!18929)
(check-sat b_and!277601 (not b_next!100073) (not b_next!100069) b_and!277607 (not b_next!100079) (not b_next!100071) b_and!277609 b_and!277605 b_and!277603 (not b_next!100077) (not b_next!100081) (not b_next!100083) b_and!277599 b_and!277613 b_and!277611 (not b_next!100075))
