; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!384672 () Bool)

(assert start!384672)

(declare-fun b!4074575 () Bool)

(declare-fun b_free!113505 () Bool)

(declare-fun b_next!114209 () Bool)

(assert (=> b!4074575 (= b_free!113505 (not b_next!114209))))

(declare-fun tp!1233342 () Bool)

(declare-fun b_and!313203 () Bool)

(assert (=> b!4074575 (= tp!1233342 b_and!313203)))

(declare-fun b_free!113507 () Bool)

(declare-fun b_next!114211 () Bool)

(assert (=> b!4074575 (= b_free!113507 (not b_next!114211))))

(declare-fun tp!1233335 () Bool)

(declare-fun b_and!313205 () Bool)

(assert (=> b!4074575 (= tp!1233335 b_and!313205)))

(declare-fun b!4074567 () Bool)

(declare-fun b_free!113509 () Bool)

(declare-fun b_next!114213 () Bool)

(assert (=> b!4074567 (= b_free!113509 (not b_next!114213))))

(declare-fun tp!1233336 () Bool)

(declare-fun b_and!313207 () Bool)

(assert (=> b!4074567 (= tp!1233336 b_and!313207)))

(declare-fun b_free!113511 () Bool)

(declare-fun b_next!114215 () Bool)

(assert (=> b!4074567 (= b_free!113511 (not b_next!114215))))

(declare-fun tp!1233340 () Bool)

(declare-fun b_and!313209 () Bool)

(assert (=> b!4074567 (= tp!1233340 b_and!313209)))

(declare-fun b!4074563 () Bool)

(declare-fun res!1664033 () Bool)

(declare-fun e!2528950 () Bool)

(assert (=> b!4074563 (=> (not res!1664033) (not e!2528950))))

(declare-datatypes ((List!43709 0))(
  ( (Nil!43585) (Cons!43585 (h!49005 (_ BitVec 16)) (t!337260 List!43709)) )
))
(declare-datatypes ((TokenValue!7246 0))(
  ( (FloatLiteralValue!14492 (text!51167 List!43709)) (TokenValueExt!7245 (__x!26709 Int)) (Broken!36230 (value!220582 List!43709)) (Object!7369) (End!7246) (Def!7246) (Underscore!7246) (Match!7246) (Else!7246) (Error!7246) (Case!7246) (If!7246) (Extends!7246) (Abstract!7246) (Class!7246) (Val!7246) (DelimiterValue!14492 (del!7306 List!43709)) (KeywordValue!7252 (value!220583 List!43709)) (CommentValue!14492 (value!220584 List!43709)) (WhitespaceValue!14492 (value!220585 List!43709)) (IndentationValue!7246 (value!220586 List!43709)) (String!49979) (Int32!7246) (Broken!36231 (value!220587 List!43709)) (Boolean!7247) (Unit!63132) (OperatorValue!7249 (op!7306 List!43709)) (IdentifierValue!14492 (value!220588 List!43709)) (IdentifierValue!14493 (value!220589 List!43709)) (WhitespaceValue!14493 (value!220590 List!43709)) (True!14492) (False!14492) (Broken!36232 (value!220591 List!43709)) (Broken!36233 (value!220592 List!43709)) (True!14493) (RightBrace!7246) (RightBracket!7246) (Colon!7246) (Null!7246) (Comma!7246) (LeftBracket!7246) (False!14493) (LeftBrace!7246) (ImaginaryLiteralValue!7246 (text!51168 List!43709)) (StringLiteralValue!21738 (value!220593 List!43709)) (EOFValue!7246 (value!220594 List!43709)) (IdentValue!7246 (value!220595 List!43709)) (DelimiterValue!14493 (value!220596 List!43709)) (DedentValue!7246 (value!220597 List!43709)) (NewLineValue!7246 (value!220598 List!43709)) (IntegerValue!21738 (value!220599 (_ BitVec 32)) (text!51169 List!43709)) (IntegerValue!21739 (value!220600 Int) (text!51170 List!43709)) (Times!7246) (Or!7246) (Equal!7246) (Minus!7246) (Broken!36234 (value!220601 List!43709)) (And!7246) (Div!7246) (LessEqual!7246) (Mod!7246) (Concat!19167) (Not!7246) (Plus!7246) (SpaceValue!7246 (value!220602 List!43709)) (IntegerValue!21740 (value!220603 Int) (text!51171 List!43709)) (StringLiteralValue!21739 (text!51172 List!43709)) (FloatLiteralValue!14493 (text!51173 List!43709)) (BytesLiteralValue!7246 (value!220604 List!43709)) (CommentValue!14493 (value!220605 List!43709)) (StringLiteralValue!21740 (value!220606 List!43709)) (ErrorTokenValue!7246 (msg!7307 List!43709)) )
))
(declare-datatypes ((C!24028 0))(
  ( (C!24029 (val!14124 Int)) )
))
(declare-datatypes ((Regex!11921 0))(
  ( (ElementMatch!11921 (c!703020 C!24028)) (Concat!19168 (regOne!24354 Regex!11921) (regTwo!24354 Regex!11921)) (EmptyExpr!11921) (Star!11921 (reg!12250 Regex!11921)) (EmptyLang!11921) (Union!11921 (regOne!24355 Regex!11921) (regTwo!24355 Regex!11921)) )
))
(declare-datatypes ((String!49980 0))(
  ( (String!49981 (value!220607 String)) )
))
(declare-datatypes ((List!43710 0))(
  ( (Nil!43586) (Cons!43586 (h!49006 C!24028) (t!337261 List!43710)) )
))
(declare-datatypes ((IArray!26459 0))(
  ( (IArray!26460 (innerList!13287 List!43710)) )
))
(declare-datatypes ((Conc!13227 0))(
  ( (Node!13227 (left!32765 Conc!13227) (right!33095 Conc!13227) (csize!26684 Int) (cheight!13438 Int)) (Leaf!20450 (xs!16533 IArray!26459) (csize!26685 Int)) (Empty!13227) )
))
(declare-datatypes ((BalanceConc!26048 0))(
  ( (BalanceConc!26049 (c!703021 Conc!13227)) )
))
(declare-datatypes ((TokenValueInjection!13920 0))(
  ( (TokenValueInjection!13921 (toValue!9580 Int) (toChars!9439 Int)) )
))
(declare-datatypes ((Rule!13832 0))(
  ( (Rule!13833 (regex!7016 Regex!11921) (tag!7876 String!49980) (isSeparator!7016 Bool) (transformation!7016 TokenValueInjection!13920)) )
))
(declare-datatypes ((List!43711 0))(
  ( (Nil!43587) (Cons!43587 (h!49007 Rule!13832) (t!337262 List!43711)) )
))
(declare-fun rules!3870 () List!43711)

(declare-fun r!4213 () Rule!13832)

(declare-fun contains!8683 (List!43711 Rule!13832) Bool)

(assert (=> b!4074563 (= res!1664033 (contains!8683 rules!3870 r!4213))))

(declare-fun b!4074564 () Bool)

(declare-fun e!2528946 () Bool)

(assert (=> b!4074564 (= e!2528946 true)))

(declare-fun lt!1458242 () Bool)

(declare-datatypes ((LexerInterface!6605 0))(
  ( (LexerInterfaceExt!6602 (__x!26710 Int)) (Lexer!6603) )
))
(declare-fun thiss!26199 () LexerInterface!6605)

(declare-fun rulesValidInductive!2577 (LexerInterface!6605 List!43711) Bool)

(assert (=> b!4074564 (= lt!1458242 (rulesValidInductive!2577 thiss!26199 (t!337262 rules!3870)))))

(declare-fun b!4074565 () Bool)

(declare-fun e!2528939 () Bool)

(declare-fun e!2528947 () Bool)

(assert (=> b!4074565 (= e!2528939 (not e!2528947))))

(declare-fun res!1664040 () Bool)

(assert (=> b!4074565 (=> res!1664040 e!2528947)))

(declare-fun p!2988 () List!43710)

(declare-fun matchR!5866 (Regex!11921 List!43710) Bool)

(assert (=> b!4074565 (= res!1664040 (not (matchR!5866 (regex!7016 r!4213) p!2988)))))

(declare-fun ruleValid!2940 (LexerInterface!6605 Rule!13832) Bool)

(assert (=> b!4074565 (ruleValid!2940 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63133 0))(
  ( (Unit!63134) )
))
(declare-fun lt!1458237 () Unit!63133)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2008 (LexerInterface!6605 Rule!13832 List!43711) Unit!63133)

(assert (=> b!4074565 (= lt!1458237 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2008 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4074566 () Bool)

(assert (=> b!4074566 (= e!2528950 e!2528939)))

(declare-fun res!1664036 () Bool)

(assert (=> b!4074566 (=> (not res!1664036) (not e!2528939))))

(declare-fun suffix!1518 () List!43710)

(declare-fun input!3411 () List!43710)

(declare-fun lt!1458238 () BalanceConc!26048)

(declare-datatypes ((Token!13158 0))(
  ( (Token!13159 (value!220608 TokenValue!7246) (rule!10120 Rule!13832) (size!32563 Int) (originalCharacters!7610 List!43710)) )
))
(declare-datatypes ((tuple2!42574 0))(
  ( (tuple2!42575 (_1!24421 Token!13158) (_2!24421 List!43710)) )
))
(declare-datatypes ((Option!9424 0))(
  ( (None!9423) (Some!9423 (v!39865 tuple2!42574)) )
))
(declare-fun maxPrefix!3897 (LexerInterface!6605 List!43711 List!43710) Option!9424)

(declare-fun apply!10199 (TokenValueInjection!13920 BalanceConc!26048) TokenValue!7246)

(declare-fun size!32564 (List!43710) Int)

(assert (=> b!4074566 (= res!1664036 (= (maxPrefix!3897 thiss!26199 rules!3870 input!3411) (Some!9423 (tuple2!42575 (Token!13159 (apply!10199 (transformation!7016 r!4213) lt!1458238) r!4213 (size!32564 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1458239 () Unit!63133)

(declare-fun lemmaSemiInverse!1983 (TokenValueInjection!13920 BalanceConc!26048) Unit!63133)

(assert (=> b!4074566 (= lt!1458239 (lemmaSemiInverse!1983 (transformation!7016 r!4213) lt!1458238))))

(declare-fun seqFromList!5233 (List!43710) BalanceConc!26048)

(assert (=> b!4074566 (= lt!1458238 (seqFromList!5233 p!2988))))

(declare-fun e!2528945 () Bool)

(assert (=> b!4074567 (= e!2528945 (and tp!1233336 tp!1233340))))

(declare-fun b!4074569 () Bool)

(declare-fun e!2528942 () Bool)

(declare-fun e!2528941 () Bool)

(declare-fun tp!1233337 () Bool)

(assert (=> b!4074569 (= e!2528942 (and e!2528941 tp!1233337))))

(declare-fun b!4074570 () Bool)

(declare-fun e!2528937 () Bool)

(declare-fun tp_is_empty!20845 () Bool)

(declare-fun tp!1233338 () Bool)

(assert (=> b!4074570 (= e!2528937 (and tp_is_empty!20845 tp!1233338))))

(declare-fun b!4074571 () Bool)

(declare-fun e!2528938 () Bool)

(assert (=> b!4074571 (= e!2528947 e!2528938)))

(declare-fun res!1664034 () Bool)

(assert (=> b!4074571 (=> res!1664034 e!2528938)))

(declare-fun isEmpty!26019 (List!43711) Bool)

(assert (=> b!4074571 (= res!1664034 (isEmpty!26019 (t!337262 rules!3870)))))

(declare-fun rulesInvariant!5948 (LexerInterface!6605 List!43711) Bool)

(assert (=> b!4074571 (rulesInvariant!5948 thiss!26199 (t!337262 rules!3870))))

(declare-fun lt!1458236 () Unit!63133)

(declare-fun lemmaInvariantOnRulesThenOnTail!736 (LexerInterface!6605 Rule!13832 List!43711) Unit!63133)

(assert (=> b!4074571 (= lt!1458236 (lemmaInvariantOnRulesThenOnTail!736 thiss!26199 (h!49007 rules!3870) (t!337262 rules!3870)))))

(declare-fun tp!1233334 () Bool)

(declare-fun b!4074572 () Bool)

(declare-fun e!2528940 () Bool)

(declare-fun e!2528948 () Bool)

(declare-fun inv!58236 (String!49980) Bool)

(declare-fun inv!58238 (TokenValueInjection!13920) Bool)

(assert (=> b!4074572 (= e!2528940 (and tp!1233334 (inv!58236 (tag!7876 r!4213)) (inv!58238 (transformation!7016 r!4213)) e!2528948))))

(declare-fun b!4074573 () Bool)

(declare-fun e!2528951 () Bool)

(declare-fun tp!1233341 () Bool)

(assert (=> b!4074573 (= e!2528951 (and tp_is_empty!20845 tp!1233341))))

(declare-fun b!4074574 () Bool)

(declare-fun res!1664038 () Bool)

(assert (=> b!4074574 (=> (not res!1664038) (not e!2528950))))

(assert (=> b!4074574 (= res!1664038 (rulesInvariant!5948 thiss!26199 rules!3870))))

(assert (=> b!4074575 (= e!2528948 (and tp!1233342 tp!1233335))))

(declare-fun b!4074576 () Bool)

(declare-fun res!1664037 () Bool)

(assert (=> b!4074576 (=> (not res!1664037) (not e!2528950))))

(declare-fun isEmpty!26020 (List!43710) Bool)

(assert (=> b!4074576 (= res!1664037 (not (isEmpty!26020 p!2988)))))

(declare-fun b!4074577 () Bool)

(assert (=> b!4074577 (= e!2528938 e!2528946)))

(declare-fun res!1664044 () Bool)

(assert (=> b!4074577 (=> res!1664044 e!2528946)))

(declare-fun lt!1458243 () Bool)

(assert (=> b!4074577 (= res!1664044 lt!1458243)))

(declare-fun e!2528944 () Bool)

(assert (=> b!4074577 e!2528944))

(declare-fun res!1664039 () Bool)

(assert (=> b!4074577 (=> res!1664039 e!2528944)))

(assert (=> b!4074577 (= res!1664039 lt!1458243)))

(declare-fun lt!1458240 () Option!9424)

(declare-fun isEmpty!26021 (Option!9424) Bool)

(assert (=> b!4074577 (= lt!1458243 (isEmpty!26021 lt!1458240))))

(assert (=> b!4074577 (= lt!1458240 (maxPrefix!3897 thiss!26199 (t!337262 rules!3870) input!3411))))

(declare-fun lt!1458241 () Unit!63133)

(declare-fun lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!10 (LexerInterface!6605 Rule!13832 List!43711 List!43710) Unit!63133)

(assert (=> b!4074577 (= lt!1458241 (lemmaNoDuplTagThenTailRulesCannotProduceHeadTagInTok!10 thiss!26199 (h!49007 rules!3870) (t!337262 rules!3870) input!3411))))

(declare-fun res!1664035 () Bool)

(assert (=> start!384672 (=> (not res!1664035) (not e!2528950))))

(get-info :version)

(assert (=> start!384672 (= res!1664035 ((_ is Lexer!6603) thiss!26199))))

(assert (=> start!384672 e!2528950))

(assert (=> start!384672 true))

(declare-fun e!2528952 () Bool)

(assert (=> start!384672 e!2528952))

(assert (=> start!384672 e!2528942))

(assert (=> start!384672 e!2528937))

(assert (=> start!384672 e!2528951))

(assert (=> start!384672 e!2528940))

(declare-fun b!4074568 () Bool)

(declare-fun tp!1233339 () Bool)

(assert (=> b!4074568 (= e!2528941 (and tp!1233339 (inv!58236 (tag!7876 (h!49007 rules!3870))) (inv!58238 (transformation!7016 (h!49007 rules!3870))) e!2528945))))

(declare-fun b!4074578 () Bool)

(declare-fun res!1664041 () Bool)

(assert (=> b!4074578 (=> (not res!1664041) (not e!2528950))))

(declare-fun ++!11422 (List!43710 List!43710) List!43710)

(assert (=> b!4074578 (= res!1664041 (= input!3411 (++!11422 p!2988 suffix!1518)))))

(declare-fun b!4074579 () Bool)

(declare-fun res!1664042 () Bool)

(assert (=> b!4074579 (=> (not res!1664042) (not e!2528950))))

(assert (=> b!4074579 (= res!1664042 (not (isEmpty!26019 rules!3870)))))

(declare-fun b!4074580 () Bool)

(declare-fun res!1664043 () Bool)

(assert (=> b!4074580 (=> res!1664043 e!2528947)))

(assert (=> b!4074580 (= res!1664043 (or (not ((_ is Cons!43587) rules!3870)) (not (= (h!49007 rules!3870) r!4213))))))

(declare-fun b!4074581 () Bool)

(declare-fun tp!1233333 () Bool)

(assert (=> b!4074581 (= e!2528952 (and tp_is_empty!20845 tp!1233333))))

(declare-fun b!4074582 () Bool)

(declare-fun get!14292 (Option!9424) tuple2!42574)

(assert (=> b!4074582 (= e!2528944 (not (= (rule!10120 (_1!24421 (get!14292 lt!1458240))) (h!49007 rules!3870))))))

(assert (= (and start!384672 res!1664035) b!4074579))

(assert (= (and b!4074579 res!1664042) b!4074574))

(assert (= (and b!4074574 res!1664038) b!4074563))

(assert (= (and b!4074563 res!1664033) b!4074578))

(assert (= (and b!4074578 res!1664041) b!4074576))

(assert (= (and b!4074576 res!1664037) b!4074566))

(assert (= (and b!4074566 res!1664036) b!4074565))

(assert (= (and b!4074565 (not res!1664040)) b!4074580))

(assert (= (and b!4074580 (not res!1664043)) b!4074571))

(assert (= (and b!4074571 (not res!1664034)) b!4074577))

(assert (= (and b!4074577 (not res!1664039)) b!4074582))

(assert (= (and b!4074577 (not res!1664044)) b!4074564))

(assert (= (and start!384672 ((_ is Cons!43586) suffix!1518)) b!4074581))

(assert (= b!4074568 b!4074567))

(assert (= b!4074569 b!4074568))

(assert (= (and start!384672 ((_ is Cons!43587) rules!3870)) b!4074569))

(assert (= (and start!384672 ((_ is Cons!43586) p!2988)) b!4074570))

(assert (= (and start!384672 ((_ is Cons!43586) input!3411)) b!4074573))

(assert (= b!4074572 b!4074575))

(assert (= start!384672 b!4074572))

(declare-fun m!4683167 () Bool)

(assert (=> b!4074568 m!4683167))

(declare-fun m!4683169 () Bool)

(assert (=> b!4074568 m!4683169))

(declare-fun m!4683171 () Bool)

(assert (=> b!4074571 m!4683171))

(declare-fun m!4683173 () Bool)

(assert (=> b!4074571 m!4683173))

(declare-fun m!4683175 () Bool)

(assert (=> b!4074571 m!4683175))

(declare-fun m!4683177 () Bool)

(assert (=> b!4074566 m!4683177))

(declare-fun m!4683179 () Bool)

(assert (=> b!4074566 m!4683179))

(declare-fun m!4683181 () Bool)

(assert (=> b!4074566 m!4683181))

(declare-fun m!4683183 () Bool)

(assert (=> b!4074566 m!4683183))

(declare-fun m!4683185 () Bool)

(assert (=> b!4074566 m!4683185))

(declare-fun m!4683187 () Bool)

(assert (=> b!4074582 m!4683187))

(declare-fun m!4683189 () Bool)

(assert (=> b!4074564 m!4683189))

(declare-fun m!4683191 () Bool)

(assert (=> b!4074572 m!4683191))

(declare-fun m!4683193 () Bool)

(assert (=> b!4074572 m!4683193))

(declare-fun m!4683195 () Bool)

(assert (=> b!4074574 m!4683195))

(declare-fun m!4683197 () Bool)

(assert (=> b!4074579 m!4683197))

(declare-fun m!4683199 () Bool)

(assert (=> b!4074565 m!4683199))

(declare-fun m!4683201 () Bool)

(assert (=> b!4074565 m!4683201))

(declare-fun m!4683203 () Bool)

(assert (=> b!4074565 m!4683203))

(declare-fun m!4683205 () Bool)

(assert (=> b!4074563 m!4683205))

(declare-fun m!4683207 () Bool)

(assert (=> b!4074578 m!4683207))

(declare-fun m!4683209 () Bool)

(assert (=> b!4074576 m!4683209))

(declare-fun m!4683211 () Bool)

(assert (=> b!4074577 m!4683211))

(declare-fun m!4683213 () Bool)

(assert (=> b!4074577 m!4683213))

(declare-fun m!4683215 () Bool)

(assert (=> b!4074577 m!4683215))

(check-sat (not b!4074573) (not b!4074577) (not b!4074564) (not b!4074578) b_and!313205 (not b_next!114213) (not b!4074565) (not b!4074576) (not b_next!114215) (not b!4074574) b_and!313203 (not b_next!114209) (not b!4074579) (not b!4074571) (not b!4074582) (not b!4074563) (not b!4074569) (not b!4074572) (not b!4074581) (not b!4074568) (not b!4074570) b_and!313207 b_and!313209 (not b!4074566) tp_is_empty!20845 (not b_next!114211))
(check-sat b_and!313205 (not b_next!114213) (not b_next!114215) b_and!313203 (not b_next!114209) b_and!313207 b_and!313209 (not b_next!114211))
