; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!337850 () Bool)

(assert start!337850)

(declare-fun b!3625701 () Bool)

(declare-fun b_free!94649 () Bool)

(declare-fun b_next!95353 () Bool)

(assert (=> b!3625701 (= b_free!94649 (not b_next!95353))))

(declare-fun tp!1107179 () Bool)

(declare-fun b_and!265535 () Bool)

(assert (=> b!3625701 (= tp!1107179 b_and!265535)))

(declare-fun b_free!94651 () Bool)

(declare-fun b_next!95355 () Bool)

(assert (=> b!3625701 (= b_free!94651 (not b_next!95355))))

(declare-fun tp!1107181 () Bool)

(declare-fun b_and!265537 () Bool)

(assert (=> b!3625701 (= tp!1107181 b_and!265537)))

(declare-fun b!3625731 () Bool)

(declare-fun b_free!94653 () Bool)

(declare-fun b_next!95357 () Bool)

(assert (=> b!3625731 (= b_free!94653 (not b_next!95357))))

(declare-fun tp!1107170 () Bool)

(declare-fun b_and!265539 () Bool)

(assert (=> b!3625731 (= tp!1107170 b_and!265539)))

(declare-fun b_free!94655 () Bool)

(declare-fun b_next!95359 () Bool)

(assert (=> b!3625731 (= b_free!94655 (not b_next!95359))))

(declare-fun tp!1107168 () Bool)

(declare-fun b_and!265541 () Bool)

(assert (=> b!3625731 (= tp!1107168 b_and!265541)))

(declare-fun b!3625725 () Bool)

(declare-fun b_free!94657 () Bool)

(declare-fun b_next!95361 () Bool)

(assert (=> b!3625725 (= b_free!94657 (not b_next!95361))))

(declare-fun tp!1107182 () Bool)

(declare-fun b_and!265543 () Bool)

(assert (=> b!3625725 (= tp!1107182 b_and!265543)))

(declare-fun b_free!94659 () Bool)

(declare-fun b_next!95363 () Bool)

(assert (=> b!3625725 (= b_free!94659 (not b_next!95363))))

(declare-fun tp!1107180 () Bool)

(declare-fun b_and!265545 () Bool)

(assert (=> b!3625725 (= tp!1107180 b_and!265545)))

(declare-fun b!3625708 () Bool)

(declare-fun b_free!94661 () Bool)

(declare-fun b_next!95365 () Bool)

(assert (=> b!3625708 (= b_free!94661 (not b_next!95365))))

(declare-fun tp!1107172 () Bool)

(declare-fun b_and!265547 () Bool)

(assert (=> b!3625708 (= tp!1107172 b_and!265547)))

(declare-fun b_free!94663 () Bool)

(declare-fun b_next!95367 () Bool)

(assert (=> b!3625708 (= b_free!94663 (not b_next!95367))))

(declare-fun tp!1107174 () Bool)

(declare-fun b_and!265549 () Bool)

(assert (=> b!3625708 (= tp!1107174 b_and!265549)))

(declare-fun b!3625700 () Bool)

(declare-fun res!1467691 () Bool)

(declare-fun e!2244249 () Bool)

(assert (=> b!3625700 (=> res!1467691 e!2244249)))

(declare-datatypes ((C!21084 0))(
  ( (C!21085 (val!12590 Int)) )
))
(declare-datatypes ((Regex!10449 0))(
  ( (ElementMatch!10449 (c!627354 C!21084)) (Concat!16369 (regOne!21410 Regex!10449) (regTwo!21410 Regex!10449)) (EmptyExpr!10449) (Star!10449 (reg!10778 Regex!10449)) (EmptyLang!10449) (Union!10449 (regOne!21411 Regex!10449) (regTwo!21411 Regex!10449)) )
))
(declare-datatypes ((String!42933 0))(
  ( (String!42934 (value!182599 String)) )
))
(declare-datatypes ((List!38315 0))(
  ( (Nil!38191) (Cons!38191 (h!43611 (_ BitVec 16)) (t!294650 List!38315)) )
))
(declare-datatypes ((TokenValue!5920 0))(
  ( (FloatLiteralValue!11840 (text!41885 List!38315)) (TokenValueExt!5919 (__x!24057 Int)) (Broken!29600 (value!182600 List!38315)) (Object!6043) (End!5920) (Def!5920) (Underscore!5920) (Match!5920) (Else!5920) (Error!5920) (Case!5920) (If!5920) (Extends!5920) (Abstract!5920) (Class!5920) (Val!5920) (DelimiterValue!11840 (del!5980 List!38315)) (KeywordValue!5926 (value!182601 List!38315)) (CommentValue!11840 (value!182602 List!38315)) (WhitespaceValue!11840 (value!182603 List!38315)) (IndentationValue!5920 (value!182604 List!38315)) (String!42935) (Int32!5920) (Broken!29601 (value!182605 List!38315)) (Boolean!5921) (Unit!54945) (OperatorValue!5923 (op!5980 List!38315)) (IdentifierValue!11840 (value!182606 List!38315)) (IdentifierValue!11841 (value!182607 List!38315)) (WhitespaceValue!11841 (value!182608 List!38315)) (True!11840) (False!11840) (Broken!29602 (value!182609 List!38315)) (Broken!29603 (value!182610 List!38315)) (True!11841) (RightBrace!5920) (RightBracket!5920) (Colon!5920) (Null!5920) (Comma!5920) (LeftBracket!5920) (False!11841) (LeftBrace!5920) (ImaginaryLiteralValue!5920 (text!41886 List!38315)) (StringLiteralValue!17760 (value!182611 List!38315)) (EOFValue!5920 (value!182612 List!38315)) (IdentValue!5920 (value!182613 List!38315)) (DelimiterValue!11841 (value!182614 List!38315)) (DedentValue!5920 (value!182615 List!38315)) (NewLineValue!5920 (value!182616 List!38315)) (IntegerValue!17760 (value!182617 (_ BitVec 32)) (text!41887 List!38315)) (IntegerValue!17761 (value!182618 Int) (text!41888 List!38315)) (Times!5920) (Or!5920) (Equal!5920) (Minus!5920) (Broken!29604 (value!182619 List!38315)) (And!5920) (Div!5920) (LessEqual!5920) (Mod!5920) (Concat!16370) (Not!5920) (Plus!5920) (SpaceValue!5920 (value!182620 List!38315)) (IntegerValue!17762 (value!182621 Int) (text!41889 List!38315)) (StringLiteralValue!17761 (text!41890 List!38315)) (FloatLiteralValue!11841 (text!41891 List!38315)) (BytesLiteralValue!5920 (value!182622 List!38315)) (CommentValue!11841 (value!182623 List!38315)) (StringLiteralValue!17762 (value!182624 List!38315)) (ErrorTokenValue!5920 (msg!5981 List!38315)) )
))
(declare-datatypes ((List!38316 0))(
  ( (Nil!38192) (Cons!38192 (h!43612 C!21084) (t!294651 List!38316)) )
))
(declare-datatypes ((IArray!23303 0))(
  ( (IArray!23304 (innerList!11709 List!38316)) )
))
(declare-datatypes ((Conc!11649 0))(
  ( (Node!11649 (left!29816 Conc!11649) (right!30146 Conc!11649) (csize!23528 Int) (cheight!11860 Int)) (Leaf!18105 (xs!14851 IArray!23303) (csize!23529 Int)) (Empty!11649) )
))
(declare-datatypes ((BalanceConc!22912 0))(
  ( (BalanceConc!22913 (c!627355 Conc!11649)) )
))
(declare-datatypes ((TokenValueInjection!11268 0))(
  ( (TokenValueInjection!11269 (toValue!7978 Int) (toChars!7837 Int)) )
))
(declare-datatypes ((Rule!11180 0))(
  ( (Rule!11181 (regex!5690 Regex!10449) (tag!6414 String!42933) (isSeparator!5690 Bool) (transformation!5690 TokenValueInjection!11268)) )
))
(declare-fun anOtherTypeRule!33 () Rule!11180)

(declare-fun lt!1253372 () C!21084)

(declare-fun contains!7445 (List!38316 C!21084) Bool)

(declare-fun usedCharacters!904 (Regex!10449) List!38316)

(assert (=> b!3625700 (= res!1467691 (not (contains!7445 (usedCharacters!904 (regex!5690 anOtherTypeRule!33)) lt!1253372)))))

(declare-fun e!2244238 () Bool)

(assert (=> b!3625701 (= e!2244238 (and tp!1107179 tp!1107181))))

(declare-fun b!3625702 () Bool)

(declare-fun e!2244251 () Bool)

(declare-fun lt!1253368 () List!38316)

(declare-fun lt!1253371 () C!21084)

(assert (=> b!3625702 (= e!2244251 (contains!7445 lt!1253368 lt!1253371))))

(declare-fun b!3625703 () Bool)

(declare-fun e!2244244 () Bool)

(assert (=> b!3625703 (= e!2244244 e!2244249)))

(declare-fun res!1467706 () Bool)

(assert (=> b!3625703 (=> res!1467706 e!2244249)))

(declare-fun lt!1253361 () List!38316)

(assert (=> b!3625703 (= res!1467706 (contains!7445 lt!1253361 lt!1253372))))

(declare-fun suffix!1395 () List!38316)

(declare-fun head!7666 (List!38316) C!21084)

(assert (=> b!3625703 (= lt!1253372 (head!7666 suffix!1395))))

(declare-fun rule!403 () Rule!11180)

(assert (=> b!3625703 (= lt!1253361 (usedCharacters!904 (regex!5690 rule!403)))))

(declare-fun b!3625704 () Bool)

(declare-fun res!1467708 () Bool)

(assert (=> b!3625704 (=> res!1467708 e!2244249)))

(declare-datatypes ((List!38317 0))(
  ( (Nil!38193) (Cons!38193 (h!43613 Rule!11180) (t!294652 List!38317)) )
))
(declare-fun rules!3307 () List!38317)

(declare-fun sepAndNonSepRulesDisjointChars!1860 (List!38317 List!38317) Bool)

(assert (=> b!3625704 (= res!1467708 (not (sepAndNonSepRulesDisjointChars!1860 rules!3307 rules!3307)))))

(declare-fun b!3625705 () Bool)

(declare-datatypes ((Token!10746 0))(
  ( (Token!10747 (value!182625 TokenValue!5920) (rule!8456 Rule!11180) (size!29135 Int) (originalCharacters!6404 List!38316)) )
))
(declare-fun token!511 () Token!10746)

(declare-fun e!2244242 () Bool)

(declare-fun tp!1107178 () Bool)

(declare-fun inv!51595 (String!42933) Bool)

(declare-fun inv!51598 (TokenValueInjection!11268) Bool)

(assert (=> b!3625705 (= e!2244242 (and tp!1107178 (inv!51595 (tag!6414 (rule!8456 token!511))) (inv!51598 (transformation!5690 (rule!8456 token!511))) e!2244238))))

(declare-fun b!3625706 () Bool)

(declare-datatypes ((Unit!54946 0))(
  ( (Unit!54947) )
))
(declare-fun e!2244250 () Unit!54946)

(declare-fun Unit!54948 () Unit!54946)

(assert (=> b!3625706 (= e!2244250 Unit!54948)))

(declare-fun lt!1253364 () Unit!54946)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!662 (Regex!10449 List!38316 C!21084) Unit!54946)

(assert (=> b!3625706 (= lt!1253364 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!662 (regex!5690 rule!403) lt!1253368 lt!1253371))))

(assert (=> b!3625706 false))

(declare-fun b!3625707 () Bool)

(declare-fun e!2244236 () Bool)

(assert (=> b!3625707 (= e!2244236 (not e!2244244))))

(declare-fun res!1467694 () Bool)

(assert (=> b!3625707 (=> res!1467694 e!2244244)))

(declare-fun matchR!5018 (Regex!10449 List!38316) Bool)

(assert (=> b!3625707 (= res!1467694 (not (matchR!5018 (regex!5690 rule!403) lt!1253368)))))

(declare-datatypes ((LexerInterface!5279 0))(
  ( (LexerInterfaceExt!5276 (__x!24058 Int)) (Lexer!5277) )
))
(declare-fun thiss!23823 () LexerInterface!5279)

(declare-fun ruleValid!1955 (LexerInterface!5279 Rule!11180) Bool)

(assert (=> b!3625707 (ruleValid!1955 thiss!23823 rule!403)))

(declare-fun lt!1253354 () Unit!54946)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1110 (LexerInterface!5279 Rule!11180 List!38317) Unit!54946)

(assert (=> b!3625707 (= lt!1253354 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1110 thiss!23823 rule!403 rules!3307))))

(declare-fun e!2244240 () Bool)

(assert (=> b!3625708 (= e!2244240 (and tp!1107172 tp!1107174))))

(declare-fun b!3625709 () Bool)

(declare-fun e!2244235 () Bool)

(declare-fun e!2244227 () Bool)

(assert (=> b!3625709 (= e!2244235 e!2244227)))

(declare-fun res!1467707 () Bool)

(assert (=> b!3625709 (=> res!1467707 e!2244227)))

(declare-fun lt!1253353 () List!38316)

(declare-datatypes ((tuple2!38068 0))(
  ( (tuple2!38069 (_1!22168 Token!10746) (_2!22168 List!38316)) )
))
(declare-fun lt!1253370 () tuple2!38068)

(declare-datatypes ((Option!8010 0))(
  ( (None!8009) (Some!8009 (v!37787 tuple2!38068)) )
))
(declare-fun lt!1253362 () Option!8010)

(declare-fun lt!1253363 () BalanceConc!22912)

(declare-fun apply!9192 (TokenValueInjection!11268 BalanceConc!22912) TokenValue!5920)

(declare-fun size!29136 (BalanceConc!22912) Int)

(assert (=> b!3625709 (= res!1467707 (not (= lt!1253362 (Some!8009 (tuple2!38069 (Token!10747 (apply!9192 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253363) (rule!8456 (_1!22168 lt!1253370)) (size!29136 lt!1253363) lt!1253353) (_2!22168 lt!1253370))))))))

(declare-fun lt!1253359 () Unit!54946)

(declare-fun lemmaCharactersSize!737 (Token!10746) Unit!54946)

(assert (=> b!3625709 (= lt!1253359 (lemmaCharactersSize!737 (_1!22168 lt!1253370)))))

(declare-fun lt!1253369 () Unit!54946)

(declare-fun lemmaEqSameImage!875 (TokenValueInjection!11268 BalanceConc!22912 BalanceConc!22912) Unit!54946)

(declare-fun seqFromList!4239 (List!38316) BalanceConc!22912)

(assert (=> b!3625709 (= lt!1253369 (lemmaEqSameImage!875 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253363 (seqFromList!4239 (originalCharacters!6404 (_1!22168 lt!1253370)))))))

(declare-fun lt!1253352 () Unit!54946)

(declare-fun lemmaSemiInverse!1441 (TokenValueInjection!11268 BalanceConc!22912) Unit!54946)

(assert (=> b!3625709 (= lt!1253352 (lemmaSemiInverse!1441 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253363))))

(declare-fun b!3625710 () Bool)

(declare-fun res!1467710 () Bool)

(declare-fun e!2244252 () Bool)

(assert (=> b!3625710 (=> (not res!1467710) (not e!2244252))))

(declare-fun contains!7446 (List!38317 Rule!11180) Bool)

(assert (=> b!3625710 (= res!1467710 (contains!7446 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3625711 () Bool)

(declare-fun res!1467693 () Bool)

(assert (=> b!3625711 (=> (not res!1467693) (not e!2244252))))

(declare-fun isEmpty!22580 (List!38317) Bool)

(assert (=> b!3625711 (= res!1467693 (not (isEmpty!22580 rules!3307)))))

(declare-fun e!2244233 () Bool)

(declare-fun b!3625712 () Bool)

(declare-fun tp!1107175 () Bool)

(declare-fun e!2244248 () Bool)

(assert (=> b!3625712 (= e!2244248 (and tp!1107175 (inv!51595 (tag!6414 rule!403)) (inv!51598 (transformation!5690 rule!403)) e!2244233))))

(declare-fun b!3625713 () Bool)

(declare-fun Unit!54949 () Unit!54946)

(assert (=> b!3625713 (= e!2244250 Unit!54949)))

(declare-fun b!3625714 () Bool)

(declare-fun res!1467699 () Bool)

(assert (=> b!3625714 (=> (not res!1467699) (not e!2244236))))

(assert (=> b!3625714 (= res!1467699 (= (rule!8456 token!511) rule!403))))

(declare-fun b!3625715 () Bool)

(declare-fun res!1467701 () Bool)

(assert (=> b!3625715 (=> res!1467701 e!2244235)))

(assert (=> b!3625715 (= res!1467701 (not (matchR!5018 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253353)))))

(declare-fun b!3625716 () Bool)

(declare-fun e!2244234 () Bool)

(assert (=> b!3625716 (= e!2244252 e!2244234)))

(declare-fun res!1467711 () Bool)

(assert (=> b!3625716 (=> (not res!1467711) (not e!2244234))))

(declare-fun lt!1253358 () Option!8010)

(declare-fun isDefined!6242 (Option!8010) Bool)

(assert (=> b!3625716 (= res!1467711 (isDefined!6242 lt!1253358))))

(declare-fun maxPrefix!2813 (LexerInterface!5279 List!38317 List!38316) Option!8010)

(assert (=> b!3625716 (= lt!1253358 (maxPrefix!2813 thiss!23823 rules!3307 lt!1253368))))

(declare-fun list!14106 (BalanceConc!22912) List!38316)

(declare-fun charsOf!3704 (Token!10746) BalanceConc!22912)

(assert (=> b!3625716 (= lt!1253368 (list!14106 (charsOf!3704 token!511)))))

(declare-fun b!3625717 () Bool)

(declare-fun e!2244246 () Bool)

(assert (=> b!3625717 (= e!2244227 e!2244246)))

(declare-fun res!1467700 () Bool)

(assert (=> b!3625717 (=> res!1467700 e!2244246)))

(declare-fun lt!1253367 () List!38316)

(declare-fun lt!1253365 () Option!8010)

(assert (=> b!3625717 (= res!1467700 (or (not (= lt!1253367 (_2!22168 lt!1253370))) (not (= lt!1253365 (Some!8009 (tuple2!38069 (_1!22168 lt!1253370) lt!1253367))))))))

(assert (=> b!3625717 (= (_2!22168 lt!1253370) lt!1253367)))

(declare-fun lt!1253366 () List!38316)

(declare-fun lt!1253357 () Unit!54946)

(declare-fun lemmaSamePrefixThenSameSuffix!1400 (List!38316 List!38316 List!38316 List!38316 List!38316) Unit!54946)

(assert (=> b!3625717 (= lt!1253357 (lemmaSamePrefixThenSameSuffix!1400 lt!1253353 (_2!22168 lt!1253370) lt!1253353 lt!1253367 lt!1253366))))

(declare-fun getSuffix!1620 (List!38316 List!38316) List!38316)

(assert (=> b!3625717 (= lt!1253367 (getSuffix!1620 lt!1253366 lt!1253353))))

(declare-fun lt!1253347 () TokenValue!5920)

(declare-fun lt!1253351 () Int)

(assert (=> b!3625717 (= lt!1253365 (Some!8009 (tuple2!38069 (Token!10747 lt!1253347 (rule!8456 (_1!22168 lt!1253370)) lt!1253351 lt!1253353) (_2!22168 lt!1253370))))))

(declare-fun maxPrefixOneRule!1953 (LexerInterface!5279 Rule!11180 List!38316) Option!8010)

(assert (=> b!3625717 (= lt!1253365 (maxPrefixOneRule!1953 thiss!23823 (rule!8456 (_1!22168 lt!1253370)) lt!1253366))))

(declare-fun size!29137 (List!38316) Int)

(assert (=> b!3625717 (= lt!1253351 (size!29137 lt!1253353))))

(assert (=> b!3625717 (= lt!1253347 (apply!9192 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) (seqFromList!4239 lt!1253353)))))

(declare-fun lt!1253350 () Unit!54946)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1021 (LexerInterface!5279 List!38317 List!38316 List!38316 List!38316 Rule!11180) Unit!54946)

(assert (=> b!3625717 (= lt!1253350 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1021 thiss!23823 rules!3307 lt!1253353 lt!1253366 (_2!22168 lt!1253370) (rule!8456 (_1!22168 lt!1253370))))))

(declare-fun b!3625718 () Bool)

(declare-fun e!2244243 () Bool)

(declare-fun lt!1253373 () Rule!11180)

(assert (=> b!3625718 (= e!2244243 (= (rule!8456 (_1!22168 lt!1253370)) lt!1253373))))

(declare-fun tp!1107171 () Bool)

(declare-fun b!3625719 () Bool)

(declare-fun e!2244241 () Bool)

(declare-fun e!2244237 () Bool)

(assert (=> b!3625719 (= e!2244237 (and tp!1107171 (inv!51595 (tag!6414 anOtherTypeRule!33)) (inv!51598 (transformation!5690 anOtherTypeRule!33)) e!2244241))))

(declare-fun b!3625720 () Bool)

(declare-fun res!1467696 () Bool)

(assert (=> b!3625720 (=> (not res!1467696) (not e!2244236))))

(declare-fun lt!1253356 () tuple2!38068)

(declare-fun isEmpty!22581 (List!38316) Bool)

(assert (=> b!3625720 (= res!1467696 (isEmpty!22581 (_2!22168 lt!1253356)))))

(declare-fun b!3625721 () Bool)

(declare-fun res!1467695 () Bool)

(assert (=> b!3625721 (=> (not res!1467695) (not e!2244252))))

(assert (=> b!3625721 (= res!1467695 (contains!7446 rules!3307 rule!403))))

(declare-fun b!3625722 () Bool)

(declare-fun e!2244253 () Bool)

(assert (=> b!3625722 (= e!2244253 e!2244243)))

(declare-fun res!1467704 () Bool)

(assert (=> b!3625722 (=> (not res!1467704) (not e!2244243))))

(assert (=> b!3625722 (= res!1467704 (matchR!5018 (regex!5690 lt!1253373) (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))))))

(declare-datatypes ((Option!8011 0))(
  ( (None!8010) (Some!8010 (v!37788 Rule!11180)) )
))
(declare-fun lt!1253355 () Option!8011)

(declare-fun get!12465 (Option!8011) Rule!11180)

(assert (=> b!3625722 (= lt!1253373 (get!12465 lt!1253355))))

(declare-fun b!3625723 () Bool)

(declare-fun e!2244245 () Bool)

(declare-fun tp_is_empty!17981 () Bool)

(declare-fun tp!1107169 () Bool)

(assert (=> b!3625723 (= e!2244245 (and tp_is_empty!17981 tp!1107169))))

(declare-fun b!3625724 () Bool)

(declare-fun tp!1107173 () Bool)

(declare-fun e!2244231 () Bool)

(declare-fun inv!21 (TokenValue!5920) Bool)

(assert (=> b!3625724 (= e!2244231 (and (inv!21 (value!182625 token!511)) e!2244242 tp!1107173))))

(assert (=> b!3625725 (= e!2244241 (and tp!1107182 tp!1107180))))

(declare-fun b!3625726 () Bool)

(declare-fun res!1467692 () Bool)

(assert (=> b!3625726 (=> res!1467692 e!2244244)))

(assert (=> b!3625726 (= res!1467692 (isEmpty!22581 suffix!1395))))

(declare-fun res!1467698 () Bool)

(assert (=> start!337850 (=> (not res!1467698) (not e!2244252))))

(get-info :version)

(assert (=> start!337850 (= res!1467698 ((_ is Lexer!5277) thiss!23823))))

(assert (=> start!337850 e!2244252))

(declare-fun e!2244228 () Bool)

(assert (=> start!337850 e!2244228))

(assert (=> start!337850 e!2244245))

(assert (=> start!337850 true))

(declare-fun inv!51599 (Token!10746) Bool)

(assert (=> start!337850 (and (inv!51599 token!511) e!2244231)))

(assert (=> start!337850 e!2244248))

(assert (=> start!337850 e!2244237))

(declare-fun e!2244232 () Bool)

(declare-fun b!3625727 () Bool)

(declare-fun tp!1107176 () Bool)

(assert (=> b!3625727 (= e!2244232 (and tp!1107176 (inv!51595 (tag!6414 (h!43613 rules!3307))) (inv!51598 (transformation!5690 (h!43613 rules!3307))) e!2244240))))

(declare-fun b!3625728 () Bool)

(assert (=> b!3625728 (= e!2244249 e!2244235)))

(declare-fun res!1467703 () Bool)

(assert (=> b!3625728 (=> res!1467703 e!2244235)))

(declare-fun isPrefix!3053 (List!38316 List!38316) Bool)

(assert (=> b!3625728 (= res!1467703 (not (isPrefix!3053 lt!1253353 lt!1253366)))))

(declare-fun ++!9506 (List!38316 List!38316) List!38316)

(assert (=> b!3625728 (isPrefix!3053 lt!1253353 (++!9506 lt!1253353 (_2!22168 lt!1253370)))))

(declare-fun lt!1253374 () Unit!54946)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1974 (List!38316 List!38316) Unit!54946)

(assert (=> b!3625728 (= lt!1253374 (lemmaConcatTwoListThenFirstIsPrefix!1974 lt!1253353 (_2!22168 lt!1253370)))))

(assert (=> b!3625728 (= lt!1253353 (list!14106 lt!1253363))))

(assert (=> b!3625728 (= lt!1253363 (charsOf!3704 (_1!22168 lt!1253370)))))

(assert (=> b!3625728 e!2244253))

(declare-fun res!1467705 () Bool)

(assert (=> b!3625728 (=> (not res!1467705) (not e!2244253))))

(declare-fun isDefined!6243 (Option!8011) Bool)

(assert (=> b!3625728 (= res!1467705 (isDefined!6243 lt!1253355))))

(declare-fun getRuleFromTag!1296 (LexerInterface!5279 List!38317 String!42933) Option!8011)

(assert (=> b!3625728 (= lt!1253355 (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 (_1!22168 lt!1253370)))))))

(declare-fun lt!1253349 () Unit!54946)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1296 (LexerInterface!5279 List!38317 List!38316 Token!10746) Unit!54946)

(assert (=> b!3625728 (= lt!1253349 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1296 thiss!23823 rules!3307 lt!1253366 (_1!22168 lt!1253370)))))

(declare-fun get!12466 (Option!8010) tuple2!38068)

(assert (=> b!3625728 (= lt!1253370 (get!12466 lt!1253362))))

(declare-fun lt!1253346 () Unit!54946)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!959 (LexerInterface!5279 List!38317 List!38316 List!38316) Unit!54946)

(assert (=> b!3625728 (= lt!1253346 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!959 thiss!23823 rules!3307 lt!1253368 suffix!1395))))

(assert (=> b!3625728 (= lt!1253362 (maxPrefix!2813 thiss!23823 rules!3307 lt!1253366))))

(assert (=> b!3625728 (isPrefix!3053 lt!1253368 lt!1253366)))

(declare-fun lt!1253348 () Unit!54946)

(assert (=> b!3625728 (= lt!1253348 (lemmaConcatTwoListThenFirstIsPrefix!1974 lt!1253368 suffix!1395))))

(assert (=> b!3625728 (= lt!1253366 (++!9506 lt!1253368 suffix!1395))))

(declare-fun b!3625729 () Bool)

(assert (=> b!3625729 (= e!2244246 e!2244251)))

(declare-fun res!1467690 () Bool)

(assert (=> b!3625729 (=> res!1467690 e!2244251)))

(assert (=> b!3625729 (= res!1467690 (or (not (isSeparator!5690 rule!403)) (isSeparator!5690 (rule!8456 (_1!22168 lt!1253370)))))))

(declare-fun lt!1253360 () Unit!54946)

(assert (=> b!3625729 (= lt!1253360 e!2244250)))

(declare-fun c!627353 () Bool)

(assert (=> b!3625729 (= c!627353 (not (contains!7445 lt!1253361 lt!1253371)))))

(assert (=> b!3625729 (= lt!1253371 (head!7666 lt!1253353))))

(declare-fun b!3625730 () Bool)

(declare-fun tp!1107177 () Bool)

(assert (=> b!3625730 (= e!2244228 (and e!2244232 tp!1107177))))

(assert (=> b!3625731 (= e!2244233 (and tp!1107170 tp!1107168))))

(declare-fun b!3625732 () Bool)

(declare-fun res!1467702 () Bool)

(assert (=> b!3625732 (=> (not res!1467702) (not e!2244252))))

(declare-fun rulesInvariant!4676 (LexerInterface!5279 List!38317) Bool)

(assert (=> b!3625732 (= res!1467702 (rulesInvariant!4676 thiss!23823 rules!3307))))

(declare-fun b!3625733 () Bool)

(declare-fun res!1467697 () Bool)

(assert (=> b!3625733 (=> (not res!1467697) (not e!2244252))))

(assert (=> b!3625733 (= res!1467697 (not (= (isSeparator!5690 anOtherTypeRule!33) (isSeparator!5690 rule!403))))))

(declare-fun b!3625734 () Bool)

(assert (=> b!3625734 (= e!2244234 e!2244236)))

(declare-fun res!1467709 () Bool)

(assert (=> b!3625734 (=> (not res!1467709) (not e!2244236))))

(assert (=> b!3625734 (= res!1467709 (= (_1!22168 lt!1253356) token!511))))

(assert (=> b!3625734 (= lt!1253356 (get!12466 lt!1253358))))

(assert (= (and start!337850 res!1467698) b!3625711))

(assert (= (and b!3625711 res!1467693) b!3625732))

(assert (= (and b!3625732 res!1467702) b!3625721))

(assert (= (and b!3625721 res!1467695) b!3625710))

(assert (= (and b!3625710 res!1467710) b!3625733))

(assert (= (and b!3625733 res!1467697) b!3625716))

(assert (= (and b!3625716 res!1467711) b!3625734))

(assert (= (and b!3625734 res!1467709) b!3625720))

(assert (= (and b!3625720 res!1467696) b!3625714))

(assert (= (and b!3625714 res!1467699) b!3625707))

(assert (= (and b!3625707 (not res!1467694)) b!3625726))

(assert (= (and b!3625726 (not res!1467692)) b!3625703))

(assert (= (and b!3625703 (not res!1467706)) b!3625700))

(assert (= (and b!3625700 (not res!1467691)) b!3625704))

(assert (= (and b!3625704 (not res!1467708)) b!3625728))

(assert (= (and b!3625728 res!1467705) b!3625722))

(assert (= (and b!3625722 res!1467704) b!3625718))

(assert (= (and b!3625728 (not res!1467703)) b!3625715))

(assert (= (and b!3625715 (not res!1467701)) b!3625709))

(assert (= (and b!3625709 (not res!1467707)) b!3625717))

(assert (= (and b!3625717 (not res!1467700)) b!3625729))

(assert (= (and b!3625729 c!627353) b!3625706))

(assert (= (and b!3625729 (not c!627353)) b!3625713))

(assert (= (and b!3625729 (not res!1467690)) b!3625702))

(assert (= b!3625727 b!3625708))

(assert (= b!3625730 b!3625727))

(assert (= (and start!337850 ((_ is Cons!38193) rules!3307)) b!3625730))

(assert (= (and start!337850 ((_ is Cons!38192) suffix!1395)) b!3625723))

(assert (= b!3625705 b!3625701))

(assert (= b!3625724 b!3625705))

(assert (= start!337850 b!3625724))

(assert (= b!3625712 b!3625731))

(assert (= start!337850 b!3625712))

(assert (= b!3625719 b!3625725))

(assert (= start!337850 b!3625719))

(declare-fun m!4126269 () Bool)

(assert (=> b!3625706 m!4126269))

(declare-fun m!4126271 () Bool)

(assert (=> b!3625719 m!4126271))

(declare-fun m!4126273 () Bool)

(assert (=> b!3625719 m!4126273))

(declare-fun m!4126275 () Bool)

(assert (=> b!3625720 m!4126275))

(declare-fun m!4126277 () Bool)

(assert (=> b!3625712 m!4126277))

(declare-fun m!4126279 () Bool)

(assert (=> b!3625712 m!4126279))

(declare-fun m!4126281 () Bool)

(assert (=> b!3625722 m!4126281))

(assert (=> b!3625722 m!4126281))

(declare-fun m!4126283 () Bool)

(assert (=> b!3625722 m!4126283))

(assert (=> b!3625722 m!4126283))

(declare-fun m!4126285 () Bool)

(assert (=> b!3625722 m!4126285))

(declare-fun m!4126287 () Bool)

(assert (=> b!3625722 m!4126287))

(declare-fun m!4126289 () Bool)

(assert (=> b!3625709 m!4126289))

(declare-fun m!4126291 () Bool)

(assert (=> b!3625709 m!4126291))

(declare-fun m!4126293 () Bool)

(assert (=> b!3625709 m!4126293))

(declare-fun m!4126295 () Bool)

(assert (=> b!3625709 m!4126295))

(declare-fun m!4126297 () Bool)

(assert (=> b!3625709 m!4126297))

(assert (=> b!3625709 m!4126295))

(declare-fun m!4126299 () Bool)

(assert (=> b!3625709 m!4126299))

(declare-fun m!4126301 () Bool)

(assert (=> b!3625711 m!4126301))

(declare-fun m!4126303 () Bool)

(assert (=> b!3625715 m!4126303))

(declare-fun m!4126305 () Bool)

(assert (=> b!3625734 m!4126305))

(declare-fun m!4126307 () Bool)

(assert (=> b!3625732 m!4126307))

(declare-fun m!4126309 () Bool)

(assert (=> b!3625726 m!4126309))

(declare-fun m!4126311 () Bool)

(assert (=> b!3625717 m!4126311))

(declare-fun m!4126313 () Bool)

(assert (=> b!3625717 m!4126313))

(declare-fun m!4126315 () Bool)

(assert (=> b!3625717 m!4126315))

(declare-fun m!4126317 () Bool)

(assert (=> b!3625717 m!4126317))

(declare-fun m!4126319 () Bool)

(assert (=> b!3625717 m!4126319))

(assert (=> b!3625717 m!4126317))

(declare-fun m!4126321 () Bool)

(assert (=> b!3625717 m!4126321))

(declare-fun m!4126323 () Bool)

(assert (=> b!3625717 m!4126323))

(declare-fun m!4126325 () Bool)

(assert (=> start!337850 m!4126325))

(declare-fun m!4126327 () Bool)

(assert (=> b!3625721 m!4126327))

(declare-fun m!4126329 () Bool)

(assert (=> b!3625710 m!4126329))

(declare-fun m!4126331 () Bool)

(assert (=> b!3625729 m!4126331))

(declare-fun m!4126333 () Bool)

(assert (=> b!3625729 m!4126333))

(declare-fun m!4126335 () Bool)

(assert (=> b!3625724 m!4126335))

(declare-fun m!4126337 () Bool)

(assert (=> b!3625728 m!4126337))

(declare-fun m!4126339 () Bool)

(assert (=> b!3625728 m!4126339))

(declare-fun m!4126341 () Bool)

(assert (=> b!3625728 m!4126341))

(declare-fun m!4126343 () Bool)

(assert (=> b!3625728 m!4126343))

(declare-fun m!4126345 () Bool)

(assert (=> b!3625728 m!4126345))

(declare-fun m!4126347 () Bool)

(assert (=> b!3625728 m!4126347))

(declare-fun m!4126349 () Bool)

(assert (=> b!3625728 m!4126349))

(declare-fun m!4126351 () Bool)

(assert (=> b!3625728 m!4126351))

(declare-fun m!4126353 () Bool)

(assert (=> b!3625728 m!4126353))

(declare-fun m!4126355 () Bool)

(assert (=> b!3625728 m!4126355))

(assert (=> b!3625728 m!4126281))

(declare-fun m!4126357 () Bool)

(assert (=> b!3625728 m!4126357))

(declare-fun m!4126359 () Bool)

(assert (=> b!3625728 m!4126359))

(declare-fun m!4126361 () Bool)

(assert (=> b!3625728 m!4126361))

(assert (=> b!3625728 m!4126343))

(declare-fun m!4126363 () Bool)

(assert (=> b!3625728 m!4126363))

(declare-fun m!4126365 () Bool)

(assert (=> b!3625716 m!4126365))

(declare-fun m!4126367 () Bool)

(assert (=> b!3625716 m!4126367))

(declare-fun m!4126369 () Bool)

(assert (=> b!3625716 m!4126369))

(assert (=> b!3625716 m!4126369))

(declare-fun m!4126371 () Bool)

(assert (=> b!3625716 m!4126371))

(declare-fun m!4126373 () Bool)

(assert (=> b!3625705 m!4126373))

(declare-fun m!4126375 () Bool)

(assert (=> b!3625705 m!4126375))

(declare-fun m!4126377 () Bool)

(assert (=> b!3625704 m!4126377))

(declare-fun m!4126379 () Bool)

(assert (=> b!3625700 m!4126379))

(assert (=> b!3625700 m!4126379))

(declare-fun m!4126381 () Bool)

(assert (=> b!3625700 m!4126381))

(declare-fun m!4126383 () Bool)

(assert (=> b!3625707 m!4126383))

(declare-fun m!4126385 () Bool)

(assert (=> b!3625707 m!4126385))

(declare-fun m!4126387 () Bool)

(assert (=> b!3625707 m!4126387))

(declare-fun m!4126389 () Bool)

(assert (=> b!3625727 m!4126389))

(declare-fun m!4126391 () Bool)

(assert (=> b!3625727 m!4126391))

(declare-fun m!4126393 () Bool)

(assert (=> b!3625703 m!4126393))

(declare-fun m!4126395 () Bool)

(assert (=> b!3625703 m!4126395))

(declare-fun m!4126397 () Bool)

(assert (=> b!3625703 m!4126397))

(declare-fun m!4126399 () Bool)

(assert (=> b!3625702 m!4126399))

(check-sat (not b!3625704) (not b!3625703) (not b!3625717) b_and!265537 (not b!3625726) b_and!265547 (not b!3625734) tp_is_empty!17981 (not b!3625707) (not b!3625702) b_and!265543 (not b!3625711) (not b!3625723) b_and!265541 (not start!337850) (not b!3625700) (not b!3625705) (not b!3625709) (not b!3625730) (not b!3625728) (not b!3625724) (not b!3625716) (not b!3625715) (not b!3625706) (not b_next!95363) (not b!3625710) b_and!265549 (not b_next!95367) (not b!3625720) (not b_next!95355) (not b!3625712) (not b!3625732) (not b_next!95353) b_and!265535 (not b!3625729) (not b_next!95359) (not b!3625719) b_and!265545 (not b!3625722) (not b!3625721) (not b!3625727) b_and!265539 (not b_next!95365) (not b_next!95357) (not b_next!95361))
(check-sat b_and!265543 b_and!265541 b_and!265537 (not b_next!95355) b_and!265547 (not b_next!95353) b_and!265545 (not b_next!95363) b_and!265549 (not b_next!95367) b_and!265535 (not b_next!95359) b_and!265539 (not b_next!95365) (not b_next!95357) (not b_next!95361))
(get-model)

(declare-fun d!1066552 () Bool)

(declare-fun res!1467754 () Bool)

(declare-fun e!2244289 () Bool)

(assert (=> d!1066552 (=> res!1467754 e!2244289)))

(assert (=> d!1066552 (= res!1467754 (not ((_ is Cons!38193) rules!3307)))))

(assert (=> d!1066552 (= (sepAndNonSepRulesDisjointChars!1860 rules!3307 rules!3307) e!2244289)))

(declare-fun b!3625795 () Bool)

(declare-fun e!2244290 () Bool)

(assert (=> b!3625795 (= e!2244289 e!2244290)))

(declare-fun res!1467755 () Bool)

(assert (=> b!3625795 (=> (not res!1467755) (not e!2244290))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!840 (Rule!11180 List!38317) Bool)

(assert (=> b!3625795 (= res!1467755 (ruleDisjointCharsFromAllFromOtherType!840 (h!43613 rules!3307) rules!3307))))

(declare-fun b!3625796 () Bool)

(assert (=> b!3625796 (= e!2244290 (sepAndNonSepRulesDisjointChars!1860 rules!3307 (t!294652 rules!3307)))))

(assert (= (and d!1066552 (not res!1467754)) b!3625795))

(assert (= (and b!3625795 res!1467755) b!3625796))

(declare-fun m!4126435 () Bool)

(assert (=> b!3625795 m!4126435))

(declare-fun m!4126437 () Bool)

(assert (=> b!3625796 m!4126437))

(assert (=> b!3625704 d!1066552))

(declare-fun d!1066556 () Bool)

(assert (=> d!1066556 (= (isEmpty!22581 suffix!1395) ((_ is Nil!38192) suffix!1395))))

(assert (=> b!3625726 d!1066556))

(declare-fun d!1066558 () Bool)

(assert (=> d!1066558 (= (inv!51595 (tag!6414 (rule!8456 token!511))) (= (mod (str.len (value!182599 (tag!6414 (rule!8456 token!511)))) 2) 0))))

(assert (=> b!3625705 d!1066558))

(declare-fun d!1066560 () Bool)

(declare-fun res!1467758 () Bool)

(declare-fun e!2244293 () Bool)

(assert (=> d!1066560 (=> (not res!1467758) (not e!2244293))))

(declare-fun semiInverseModEq!2414 (Int Int) Bool)

(assert (=> d!1066560 (= res!1467758 (semiInverseModEq!2414 (toChars!7837 (transformation!5690 (rule!8456 token!511))) (toValue!7978 (transformation!5690 (rule!8456 token!511)))))))

(assert (=> d!1066560 (= (inv!51598 (transformation!5690 (rule!8456 token!511))) e!2244293)))

(declare-fun b!3625799 () Bool)

(declare-fun equivClasses!2313 (Int Int) Bool)

(assert (=> b!3625799 (= e!2244293 (equivClasses!2313 (toChars!7837 (transformation!5690 (rule!8456 token!511))) (toValue!7978 (transformation!5690 (rule!8456 token!511)))))))

(assert (= (and d!1066560 res!1467758) b!3625799))

(declare-fun m!4126439 () Bool)

(assert (=> d!1066560 m!4126439))

(declare-fun m!4126441 () Bool)

(assert (=> b!3625799 m!4126441))

(assert (=> b!3625705 d!1066560))

(declare-fun d!1066562 () Bool)

(declare-fun c!627372 () Bool)

(assert (=> d!1066562 (= c!627372 ((_ is IntegerValue!17760) (value!182625 token!511)))))

(declare-fun e!2244301 () Bool)

(assert (=> d!1066562 (= (inv!21 (value!182625 token!511)) e!2244301)))

(declare-fun b!3625810 () Bool)

(declare-fun e!2244300 () Bool)

(declare-fun inv!15 (TokenValue!5920) Bool)

(assert (=> b!3625810 (= e!2244300 (inv!15 (value!182625 token!511)))))

(declare-fun b!3625811 () Bool)

(declare-fun inv!16 (TokenValue!5920) Bool)

(assert (=> b!3625811 (= e!2244301 (inv!16 (value!182625 token!511)))))

(declare-fun b!3625812 () Bool)

(declare-fun e!2244302 () Bool)

(assert (=> b!3625812 (= e!2244301 e!2244302)))

(declare-fun c!627373 () Bool)

(assert (=> b!3625812 (= c!627373 ((_ is IntegerValue!17761) (value!182625 token!511)))))

(declare-fun b!3625813 () Bool)

(declare-fun inv!17 (TokenValue!5920) Bool)

(assert (=> b!3625813 (= e!2244302 (inv!17 (value!182625 token!511)))))

(declare-fun b!3625814 () Bool)

(declare-fun res!1467761 () Bool)

(assert (=> b!3625814 (=> res!1467761 e!2244300)))

(assert (=> b!3625814 (= res!1467761 (not ((_ is IntegerValue!17762) (value!182625 token!511))))))

(assert (=> b!3625814 (= e!2244302 e!2244300)))

(assert (= (and d!1066562 c!627372) b!3625811))

(assert (= (and d!1066562 (not c!627372)) b!3625812))

(assert (= (and b!3625812 c!627373) b!3625813))

(assert (= (and b!3625812 (not c!627373)) b!3625814))

(assert (= (and b!3625814 (not res!1467761)) b!3625810))

(declare-fun m!4126443 () Bool)

(assert (=> b!3625810 m!4126443))

(declare-fun m!4126445 () Bool)

(assert (=> b!3625811 m!4126445))

(declare-fun m!4126447 () Bool)

(assert (=> b!3625813 m!4126447))

(assert (=> b!3625724 d!1066562))

(declare-fun d!1066564 () Bool)

(declare-fun lt!1253389 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5472 (List!38316) (InoxSet C!21084))

(assert (=> d!1066564 (= lt!1253389 (select (content!5472 lt!1253361) lt!1253372))))

(declare-fun e!2244308 () Bool)

(assert (=> d!1066564 (= lt!1253389 e!2244308)))

(declare-fun res!1467766 () Bool)

(assert (=> d!1066564 (=> (not res!1467766) (not e!2244308))))

(assert (=> d!1066564 (= res!1467766 ((_ is Cons!38192) lt!1253361))))

(assert (=> d!1066564 (= (contains!7445 lt!1253361 lt!1253372) lt!1253389)))

(declare-fun b!3625819 () Bool)

(declare-fun e!2244307 () Bool)

(assert (=> b!3625819 (= e!2244308 e!2244307)))

(declare-fun res!1467767 () Bool)

(assert (=> b!3625819 (=> res!1467767 e!2244307)))

(assert (=> b!3625819 (= res!1467767 (= (h!43612 lt!1253361) lt!1253372))))

(declare-fun b!3625820 () Bool)

(assert (=> b!3625820 (= e!2244307 (contains!7445 (t!294651 lt!1253361) lt!1253372))))

(assert (= (and d!1066564 res!1467766) b!3625819))

(assert (= (and b!3625819 (not res!1467767)) b!3625820))

(declare-fun m!4126449 () Bool)

(assert (=> d!1066564 m!4126449))

(declare-fun m!4126451 () Bool)

(assert (=> d!1066564 m!4126451))

(declare-fun m!4126453 () Bool)

(assert (=> b!3625820 m!4126453))

(assert (=> b!3625703 d!1066564))

(declare-fun d!1066566 () Bool)

(assert (=> d!1066566 (= (head!7666 suffix!1395) (h!43612 suffix!1395))))

(assert (=> b!3625703 d!1066566))

(declare-fun b!3625855 () Bool)

(declare-fun e!2244328 () List!38316)

(declare-fun e!2244326 () List!38316)

(assert (=> b!3625855 (= e!2244328 e!2244326)))

(declare-fun c!627384 () Bool)

(assert (=> b!3625855 (= c!627384 ((_ is ElementMatch!10449) (regex!5690 rule!403)))))

(declare-fun b!3625856 () Bool)

(declare-fun e!2244327 () List!38316)

(declare-fun call!262297 () List!38316)

(assert (=> b!3625856 (= e!2244327 call!262297)))

(declare-fun b!3625857 () Bool)

(assert (=> b!3625857 (= e!2244327 call!262297)))

(declare-fun call!262299 () List!38316)

(declare-fun bm!262291 () Bool)

(declare-fun c!627385 () Bool)

(declare-fun call!262298 () List!38316)

(assert (=> bm!262291 (= call!262297 (++!9506 (ite c!627385 call!262298 call!262299) (ite c!627385 call!262299 call!262298)))))

(declare-fun b!3625858 () Bool)

(assert (=> b!3625858 (= e!2244328 Nil!38192)))

(declare-fun b!3625859 () Bool)

(assert (=> b!3625859 (= e!2244326 (Cons!38192 (c!627354 (regex!5690 rule!403)) Nil!38192))))

(declare-fun bm!262292 () Bool)

(assert (=> bm!262292 (= call!262299 (usedCharacters!904 (ite c!627385 (regTwo!21411 (regex!5690 rule!403)) (regOne!21410 (regex!5690 rule!403)))))))

(declare-fun b!3625860 () Bool)

(declare-fun e!2244325 () List!38316)

(declare-fun call!262296 () List!38316)

(assert (=> b!3625860 (= e!2244325 call!262296)))

(declare-fun d!1066568 () Bool)

(declare-fun c!627387 () Bool)

(assert (=> d!1066568 (= c!627387 (or ((_ is EmptyExpr!10449) (regex!5690 rule!403)) ((_ is EmptyLang!10449) (regex!5690 rule!403))))))

(assert (=> d!1066568 (= (usedCharacters!904 (regex!5690 rule!403)) e!2244328)))

(declare-fun b!3625861 () Bool)

(assert (=> b!3625861 (= e!2244325 e!2244327)))

(assert (=> b!3625861 (= c!627385 ((_ is Union!10449) (regex!5690 rule!403)))))

(declare-fun b!3625862 () Bool)

(declare-fun c!627386 () Bool)

(assert (=> b!3625862 (= c!627386 ((_ is Star!10449) (regex!5690 rule!403)))))

(assert (=> b!3625862 (= e!2244326 e!2244325)))

(declare-fun bm!262293 () Bool)

(assert (=> bm!262293 (= call!262296 (usedCharacters!904 (ite c!627386 (reg!10778 (regex!5690 rule!403)) (ite c!627385 (regOne!21411 (regex!5690 rule!403)) (regTwo!21410 (regex!5690 rule!403))))))))

(declare-fun bm!262294 () Bool)

(assert (=> bm!262294 (= call!262298 call!262296)))

(assert (= (and d!1066568 c!627387) b!3625858))

(assert (= (and d!1066568 (not c!627387)) b!3625855))

(assert (= (and b!3625855 c!627384) b!3625859))

(assert (= (and b!3625855 (not c!627384)) b!3625862))

(assert (= (and b!3625862 c!627386) b!3625860))

(assert (= (and b!3625862 (not c!627386)) b!3625861))

(assert (= (and b!3625861 c!627385) b!3625856))

(assert (= (and b!3625861 (not c!627385)) b!3625857))

(assert (= (or b!3625856 b!3625857) bm!262294))

(assert (= (or b!3625856 b!3625857) bm!262292))

(assert (= (or b!3625856 b!3625857) bm!262291))

(assert (= (or b!3625860 bm!262294) bm!262293))

(declare-fun m!4126455 () Bool)

(assert (=> bm!262291 m!4126455))

(declare-fun m!4126457 () Bool)

(assert (=> bm!262292 m!4126457))

(declare-fun m!4126459 () Bool)

(assert (=> bm!262293 m!4126459))

(assert (=> b!3625703 d!1066568))

(declare-fun d!1066570 () Bool)

(declare-fun res!1467793 () Bool)

(declare-fun e!2244338 () Bool)

(assert (=> d!1066570 (=> (not res!1467793) (not e!2244338))))

(assert (=> d!1066570 (= res!1467793 (not (isEmpty!22581 (originalCharacters!6404 token!511))))))

(assert (=> d!1066570 (= (inv!51599 token!511) e!2244338)))

(declare-fun b!3625878 () Bool)

(declare-fun res!1467794 () Bool)

(assert (=> b!3625878 (=> (not res!1467794) (not e!2244338))))

(declare-fun dynLambda!16538 (Int TokenValue!5920) BalanceConc!22912)

(assert (=> b!3625878 (= res!1467794 (= (originalCharacters!6404 token!511) (list!14106 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 token!511))) (value!182625 token!511)))))))

(declare-fun b!3625879 () Bool)

(assert (=> b!3625879 (= e!2244338 (= (size!29135 token!511) (size!29137 (originalCharacters!6404 token!511))))))

(assert (= (and d!1066570 res!1467793) b!3625878))

(assert (= (and b!3625878 res!1467794) b!3625879))

(declare-fun b_lambda!107283 () Bool)

(assert (=> (not b_lambda!107283) (not b!3625878)))

(declare-fun t!294670 () Bool)

(declare-fun tb!208113 () Bool)

(assert (=> (and b!3625701 (= (toChars!7837 (transformation!5690 (rule!8456 token!511))) (toChars!7837 (transformation!5690 (rule!8456 token!511)))) t!294670) tb!208113))

(declare-fun b!3625884 () Bool)

(declare-fun e!2244341 () Bool)

(declare-fun tp!1107188 () Bool)

(declare-fun inv!51602 (Conc!11649) Bool)

(assert (=> b!3625884 (= e!2244341 (and (inv!51602 (c!627355 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 token!511))) (value!182625 token!511)))) tp!1107188))))

(declare-fun result!253558 () Bool)

(declare-fun inv!51603 (BalanceConc!22912) Bool)

(assert (=> tb!208113 (= result!253558 (and (inv!51603 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 token!511))) (value!182625 token!511))) e!2244341))))

(assert (= tb!208113 b!3625884))

(declare-fun m!4126511 () Bool)

(assert (=> b!3625884 m!4126511))

(declare-fun m!4126513 () Bool)

(assert (=> tb!208113 m!4126513))

(assert (=> b!3625878 t!294670))

(declare-fun b_and!265567 () Bool)

(assert (= b_and!265537 (and (=> t!294670 result!253558) b_and!265567)))

(declare-fun t!294672 () Bool)

(declare-fun tb!208115 () Bool)

(assert (=> (and b!3625731 (= (toChars!7837 (transformation!5690 rule!403)) (toChars!7837 (transformation!5690 (rule!8456 token!511)))) t!294672) tb!208115))

(declare-fun result!253562 () Bool)

(assert (= result!253562 result!253558))

(assert (=> b!3625878 t!294672))

(declare-fun b_and!265569 () Bool)

(assert (= b_and!265541 (and (=> t!294672 result!253562) b_and!265569)))

(declare-fun t!294674 () Bool)

(declare-fun tb!208117 () Bool)

(assert (=> (and b!3625725 (= (toChars!7837 (transformation!5690 anOtherTypeRule!33)) (toChars!7837 (transformation!5690 (rule!8456 token!511)))) t!294674) tb!208117))

(declare-fun result!253564 () Bool)

(assert (= result!253564 result!253558))

(assert (=> b!3625878 t!294674))

(declare-fun b_and!265571 () Bool)

(assert (= b_and!265545 (and (=> t!294674 result!253564) b_and!265571)))

(declare-fun t!294676 () Bool)

(declare-fun tb!208119 () Bool)

(assert (=> (and b!3625708 (= (toChars!7837 (transformation!5690 (h!43613 rules!3307))) (toChars!7837 (transformation!5690 (rule!8456 token!511)))) t!294676) tb!208119))

(declare-fun result!253566 () Bool)

(assert (= result!253566 result!253558))

(assert (=> b!3625878 t!294676))

(declare-fun b_and!265573 () Bool)

(assert (= b_and!265549 (and (=> t!294676 result!253566) b_and!265573)))

(declare-fun m!4126515 () Bool)

(assert (=> d!1066570 m!4126515))

(declare-fun m!4126517 () Bool)

(assert (=> b!3625878 m!4126517))

(assert (=> b!3625878 m!4126517))

(declare-fun m!4126519 () Bool)

(assert (=> b!3625878 m!4126519))

(declare-fun m!4126521 () Bool)

(assert (=> b!3625879 m!4126521))

(assert (=> start!337850 d!1066570))

(declare-fun d!1066576 () Bool)

(declare-fun lt!1253407 () BalanceConc!22912)

(assert (=> d!1066576 (= (list!14106 lt!1253407) (originalCharacters!6404 (_1!22168 lt!1253370)))))

(assert (=> d!1066576 (= lt!1253407 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (value!182625 (_1!22168 lt!1253370))))))

(assert (=> d!1066576 (= (charsOf!3704 (_1!22168 lt!1253370)) lt!1253407)))

(declare-fun b_lambda!107285 () Bool)

(assert (=> (not b_lambda!107285) (not d!1066576)))

(declare-fun t!294678 () Bool)

(declare-fun tb!208121 () Bool)

(assert (=> (and b!3625701 (= (toChars!7837 (transformation!5690 (rule!8456 token!511))) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294678) tb!208121))

(declare-fun b!3625885 () Bool)

(declare-fun e!2244342 () Bool)

(declare-fun tp!1107189 () Bool)

(assert (=> b!3625885 (= e!2244342 (and (inv!51602 (c!627355 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (value!182625 (_1!22168 lt!1253370))))) tp!1107189))))

(declare-fun result!253568 () Bool)

(assert (=> tb!208121 (= result!253568 (and (inv!51603 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (value!182625 (_1!22168 lt!1253370)))) e!2244342))))

(assert (= tb!208121 b!3625885))

(declare-fun m!4126523 () Bool)

(assert (=> b!3625885 m!4126523))

(declare-fun m!4126525 () Bool)

(assert (=> tb!208121 m!4126525))

(assert (=> d!1066576 t!294678))

(declare-fun b_and!265575 () Bool)

(assert (= b_and!265567 (and (=> t!294678 result!253568) b_and!265575)))

(declare-fun t!294680 () Bool)

(declare-fun tb!208123 () Bool)

(assert (=> (and b!3625731 (= (toChars!7837 (transformation!5690 rule!403)) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294680) tb!208123))

(declare-fun result!253570 () Bool)

(assert (= result!253570 result!253568))

(assert (=> d!1066576 t!294680))

(declare-fun b_and!265577 () Bool)

(assert (= b_and!265569 (and (=> t!294680 result!253570) b_and!265577)))

(declare-fun tb!208125 () Bool)

(declare-fun t!294682 () Bool)

(assert (=> (and b!3625725 (= (toChars!7837 (transformation!5690 anOtherTypeRule!33)) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294682) tb!208125))

(declare-fun result!253572 () Bool)

(assert (= result!253572 result!253568))

(assert (=> d!1066576 t!294682))

(declare-fun b_and!265579 () Bool)

(assert (= b_and!265571 (and (=> t!294682 result!253572) b_and!265579)))

(declare-fun t!294684 () Bool)

(declare-fun tb!208127 () Bool)

(assert (=> (and b!3625708 (= (toChars!7837 (transformation!5690 (h!43613 rules!3307))) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294684) tb!208127))

(declare-fun result!253574 () Bool)

(assert (= result!253574 result!253568))

(assert (=> d!1066576 t!294684))

(declare-fun b_and!265581 () Bool)

(assert (= b_and!265573 (and (=> t!294684 result!253574) b_and!265581)))

(declare-fun m!4126527 () Bool)

(assert (=> d!1066576 m!4126527))

(declare-fun m!4126529 () Bool)

(assert (=> d!1066576 m!4126529))

(assert (=> b!3625728 d!1066576))

(declare-fun d!1066578 () Bool)

(declare-fun list!14109 (Conc!11649) List!38316)

(assert (=> d!1066578 (= (list!14106 lt!1253363) (list!14109 (c!627355 lt!1253363)))))

(declare-fun bs!571422 () Bool)

(assert (= bs!571422 d!1066578))

(declare-fun m!4126531 () Bool)

(assert (=> bs!571422 m!4126531))

(assert (=> b!3625728 d!1066578))

(declare-fun b!3625902 () Bool)

(declare-fun res!1467800 () Bool)

(declare-fun e!2244351 () Bool)

(assert (=> b!3625902 (=> (not res!1467800) (not e!2244351))))

(declare-fun lt!1253416 () List!38316)

(assert (=> b!3625902 (= res!1467800 (= (size!29137 lt!1253416) (+ (size!29137 lt!1253353) (size!29137 (_2!22168 lt!1253370)))))))

(declare-fun d!1066580 () Bool)

(assert (=> d!1066580 e!2244351))

(declare-fun res!1467799 () Bool)

(assert (=> d!1066580 (=> (not res!1467799) (not e!2244351))))

(assert (=> d!1066580 (= res!1467799 (= (content!5472 lt!1253416) ((_ map or) (content!5472 lt!1253353) (content!5472 (_2!22168 lt!1253370)))))))

(declare-fun e!2244350 () List!38316)

(assert (=> d!1066580 (= lt!1253416 e!2244350)))

(declare-fun c!627394 () Bool)

(assert (=> d!1066580 (= c!627394 ((_ is Nil!38192) lt!1253353))))

(assert (=> d!1066580 (= (++!9506 lt!1253353 (_2!22168 lt!1253370)) lt!1253416)))

(declare-fun b!3625900 () Bool)

(assert (=> b!3625900 (= e!2244350 (_2!22168 lt!1253370))))

(declare-fun b!3625901 () Bool)

(assert (=> b!3625901 (= e!2244350 (Cons!38192 (h!43612 lt!1253353) (++!9506 (t!294651 lt!1253353) (_2!22168 lt!1253370))))))

(declare-fun b!3625903 () Bool)

(assert (=> b!3625903 (= e!2244351 (or (not (= (_2!22168 lt!1253370) Nil!38192)) (= lt!1253416 lt!1253353)))))

(assert (= (and d!1066580 c!627394) b!3625900))

(assert (= (and d!1066580 (not c!627394)) b!3625901))

(assert (= (and d!1066580 res!1467799) b!3625902))

(assert (= (and b!3625902 res!1467800) b!3625903))

(declare-fun m!4126543 () Bool)

(assert (=> b!3625902 m!4126543))

(assert (=> b!3625902 m!4126315))

(declare-fun m!4126545 () Bool)

(assert (=> b!3625902 m!4126545))

(declare-fun m!4126547 () Bool)

(assert (=> d!1066580 m!4126547))

(declare-fun m!4126549 () Bool)

(assert (=> d!1066580 m!4126549))

(declare-fun m!4126551 () Bool)

(assert (=> d!1066580 m!4126551))

(declare-fun m!4126553 () Bool)

(assert (=> b!3625901 m!4126553))

(assert (=> b!3625728 d!1066580))

(declare-fun b!3625933 () Bool)

(declare-fun e!2244375 () Bool)

(declare-fun e!2244373 () Bool)

(assert (=> b!3625933 (= e!2244375 e!2244373)))

(declare-fun res!1467818 () Bool)

(assert (=> b!3625933 (=> (not res!1467818) (not e!2244373))))

(assert (=> b!3625933 (= res!1467818 (not ((_ is Nil!38192) lt!1253366)))))

(declare-fun b!3625936 () Bool)

(declare-fun e!2244374 () Bool)

(assert (=> b!3625936 (= e!2244374 (>= (size!29137 lt!1253366) (size!29137 lt!1253353)))))

(declare-fun d!1066588 () Bool)

(assert (=> d!1066588 e!2244374))

(declare-fun res!1467819 () Bool)

(assert (=> d!1066588 (=> res!1467819 e!2244374)))

(declare-fun lt!1253422 () Bool)

(assert (=> d!1066588 (= res!1467819 (not lt!1253422))))

(assert (=> d!1066588 (= lt!1253422 e!2244375)))

(declare-fun res!1467820 () Bool)

(assert (=> d!1066588 (=> res!1467820 e!2244375)))

(assert (=> d!1066588 (= res!1467820 ((_ is Nil!38192) lt!1253353))))

(assert (=> d!1066588 (= (isPrefix!3053 lt!1253353 lt!1253366) lt!1253422)))

(declare-fun b!3625935 () Bool)

(declare-fun tail!5615 (List!38316) List!38316)

(assert (=> b!3625935 (= e!2244373 (isPrefix!3053 (tail!5615 lt!1253353) (tail!5615 lt!1253366)))))

(declare-fun b!3625934 () Bool)

(declare-fun res!1467821 () Bool)

(assert (=> b!3625934 (=> (not res!1467821) (not e!2244373))))

(assert (=> b!3625934 (= res!1467821 (= (head!7666 lt!1253353) (head!7666 lt!1253366)))))

(assert (= (and d!1066588 (not res!1467820)) b!3625933))

(assert (= (and b!3625933 res!1467818) b!3625934))

(assert (= (and b!3625934 res!1467821) b!3625935))

(assert (= (and d!1066588 (not res!1467819)) b!3625936))

(declare-fun m!4126569 () Bool)

(assert (=> b!3625936 m!4126569))

(assert (=> b!3625936 m!4126315))

(declare-fun m!4126571 () Bool)

(assert (=> b!3625935 m!4126571))

(declare-fun m!4126573 () Bool)

(assert (=> b!3625935 m!4126573))

(assert (=> b!3625935 m!4126571))

(assert (=> b!3625935 m!4126573))

(declare-fun m!4126575 () Bool)

(assert (=> b!3625935 m!4126575))

(assert (=> b!3625934 m!4126333))

(declare-fun m!4126577 () Bool)

(assert (=> b!3625934 m!4126577))

(assert (=> b!3625728 d!1066588))

(declare-fun d!1066598 () Bool)

(declare-fun e!2244393 () Bool)

(assert (=> d!1066598 e!2244393))

(declare-fun res!1467844 () Bool)

(assert (=> d!1066598 (=> (not res!1467844) (not e!2244393))))

(assert (=> d!1066598 (= res!1467844 (isDefined!6243 (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 (_1!22168 lt!1253370))))))))

(declare-fun lt!1253434 () Unit!54946)

(declare-fun choose!21286 (LexerInterface!5279 List!38317 List!38316 Token!10746) Unit!54946)

(assert (=> d!1066598 (= lt!1253434 (choose!21286 thiss!23823 rules!3307 lt!1253366 (_1!22168 lt!1253370)))))

(assert (=> d!1066598 (rulesInvariant!4676 thiss!23823 rules!3307)))

(assert (=> d!1066598 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1296 thiss!23823 rules!3307 lt!1253366 (_1!22168 lt!1253370)) lt!1253434)))

(declare-fun b!3625965 () Bool)

(declare-fun res!1467845 () Bool)

(assert (=> b!3625965 (=> (not res!1467845) (not e!2244393))))

(assert (=> b!3625965 (= res!1467845 (matchR!5018 (regex!5690 (get!12465 (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 (_1!22168 lt!1253370)))))) (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))))))

(declare-fun b!3625966 () Bool)

(assert (=> b!3625966 (= e!2244393 (= (rule!8456 (_1!22168 lt!1253370)) (get!12465 (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 (_1!22168 lt!1253370)))))))))

(assert (= (and d!1066598 res!1467844) b!3625965))

(assert (= (and b!3625965 res!1467845) b!3625966))

(assert (=> d!1066598 m!4126341))

(assert (=> d!1066598 m!4126341))

(declare-fun m!4126603 () Bool)

(assert (=> d!1066598 m!4126603))

(declare-fun m!4126605 () Bool)

(assert (=> d!1066598 m!4126605))

(assert (=> d!1066598 m!4126307))

(assert (=> b!3625965 m!4126341))

(declare-fun m!4126607 () Bool)

(assert (=> b!3625965 m!4126607))

(assert (=> b!3625965 m!4126281))

(assert (=> b!3625965 m!4126283))

(declare-fun m!4126609 () Bool)

(assert (=> b!3625965 m!4126609))

(assert (=> b!3625965 m!4126281))

(assert (=> b!3625965 m!4126283))

(assert (=> b!3625965 m!4126341))

(assert (=> b!3625966 m!4126341))

(assert (=> b!3625966 m!4126341))

(assert (=> b!3625966 m!4126607))

(assert (=> b!3625728 d!1066598))

(declare-fun b!3625989 () Bool)

(declare-fun e!2244405 () Unit!54946)

(declare-fun Unit!54952 () Unit!54946)

(assert (=> b!3625989 (= e!2244405 Unit!54952)))

(declare-fun lt!1253523 () List!38316)

(assert (=> b!3625989 (= lt!1253523 (++!9506 lt!1253368 suffix!1395))))

(declare-fun lt!1253535 () Unit!54946)

(declare-fun lt!1253524 () Token!10746)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!504 (LexerInterface!5279 Rule!11180 List!38317 List!38316) Unit!54946)

(assert (=> b!3625989 (= lt!1253535 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!504 thiss!23823 (rule!8456 lt!1253524) rules!3307 lt!1253523))))

(declare-fun isEmpty!22584 (Option!8010) Bool)

(assert (=> b!3625989 (isEmpty!22584 (maxPrefixOneRule!1953 thiss!23823 (rule!8456 lt!1253524) lt!1253523))))

(declare-fun lt!1253534 () Unit!54946)

(assert (=> b!3625989 (= lt!1253534 lt!1253535)))

(declare-fun lt!1253529 () List!38316)

(assert (=> b!3625989 (= lt!1253529 (list!14106 (charsOf!3704 lt!1253524)))))

(declare-fun lt!1253530 () Unit!54946)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!492 (LexerInterface!5279 Rule!11180 List!38316 List!38316) Unit!54946)

(assert (=> b!3625989 (= lt!1253530 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!492 thiss!23823 (rule!8456 lt!1253524) lt!1253529 (++!9506 lt!1253368 suffix!1395)))))

(assert (=> b!3625989 (not (matchR!5018 (regex!5690 (rule!8456 lt!1253524)) lt!1253529))))

(declare-fun lt!1253521 () Unit!54946)

(assert (=> b!3625989 (= lt!1253521 lt!1253530)))

(assert (=> b!3625989 false))

(declare-fun e!2244404 () Bool)

(declare-fun b!3625988 () Bool)

(assert (=> b!3625988 (= e!2244404 (= (rule!8456 lt!1253524) (get!12465 (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 lt!1253524))))))))

(declare-fun b!3625990 () Bool)

(declare-fun Unit!54953 () Unit!54946)

(assert (=> b!3625990 (= e!2244405 Unit!54953)))

(declare-fun b!3625987 () Bool)

(declare-fun res!1467856 () Bool)

(assert (=> b!3625987 (=> (not res!1467856) (not e!2244404))))

(assert (=> b!3625987 (= res!1467856 (matchR!5018 (regex!5690 (get!12465 (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 lt!1253524))))) (list!14106 (charsOf!3704 lt!1253524))))))

(declare-fun d!1066606 () Bool)

(assert (=> d!1066606 (isDefined!6242 (maxPrefix!2813 thiss!23823 rules!3307 (++!9506 lt!1253368 suffix!1395)))))

(declare-fun lt!1253527 () Unit!54946)

(assert (=> d!1066606 (= lt!1253527 e!2244405)))

(declare-fun c!627409 () Bool)

(assert (=> d!1066606 (= c!627409 (isEmpty!22584 (maxPrefix!2813 thiss!23823 rules!3307 (++!9506 lt!1253368 suffix!1395))))))

(declare-fun lt!1253536 () Unit!54946)

(declare-fun lt!1253525 () Unit!54946)

(assert (=> d!1066606 (= lt!1253536 lt!1253525)))

(assert (=> d!1066606 e!2244404))

(declare-fun res!1467857 () Bool)

(assert (=> d!1066606 (=> (not res!1467857) (not e!2244404))))

(assert (=> d!1066606 (= res!1467857 (isDefined!6243 (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 lt!1253524)))))))

(assert (=> d!1066606 (= lt!1253525 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1296 thiss!23823 rules!3307 lt!1253368 lt!1253524))))

(declare-fun lt!1253532 () Unit!54946)

(declare-fun lt!1253526 () Unit!54946)

(assert (=> d!1066606 (= lt!1253532 lt!1253526)))

(declare-fun lt!1253522 () List!38316)

(assert (=> d!1066606 (isPrefix!3053 lt!1253522 (++!9506 lt!1253368 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!468 (List!38316 List!38316 List!38316) Unit!54946)

(assert (=> d!1066606 (= lt!1253526 (lemmaPrefixStaysPrefixWhenAddingToSuffix!468 lt!1253522 lt!1253368 suffix!1395))))

(assert (=> d!1066606 (= lt!1253522 (list!14106 (charsOf!3704 lt!1253524)))))

(declare-fun lt!1253533 () Unit!54946)

(declare-fun lt!1253531 () Unit!54946)

(assert (=> d!1066606 (= lt!1253533 lt!1253531)))

(declare-fun lt!1253528 () List!38316)

(declare-fun lt!1253520 () List!38316)

(assert (=> d!1066606 (isPrefix!3053 lt!1253528 (++!9506 lt!1253528 lt!1253520))))

(assert (=> d!1066606 (= lt!1253531 (lemmaConcatTwoListThenFirstIsPrefix!1974 lt!1253528 lt!1253520))))

(assert (=> d!1066606 (= lt!1253520 (_2!22168 (get!12466 (maxPrefix!2813 thiss!23823 rules!3307 lt!1253368))))))

(assert (=> d!1066606 (= lt!1253528 (list!14106 (charsOf!3704 lt!1253524)))))

(declare-datatypes ((List!38320 0))(
  ( (Nil!38196) (Cons!38196 (h!43616 Token!10746) (t!294775 List!38320)) )
))
(declare-fun head!7668 (List!38320) Token!10746)

(declare-datatypes ((IArray!23307 0))(
  ( (IArray!23308 (innerList!11711 List!38320)) )
))
(declare-datatypes ((Conc!11651 0))(
  ( (Node!11651 (left!29822 Conc!11651) (right!30152 Conc!11651) (csize!23532 Int) (cheight!11862 Int)) (Leaf!18107 (xs!14853 IArray!23307) (csize!23533 Int)) (Empty!11651) )
))
(declare-datatypes ((BalanceConc!22916 0))(
  ( (BalanceConc!22917 (c!627487 Conc!11651)) )
))
(declare-fun list!14110 (BalanceConc!22916) List!38320)

(declare-datatypes ((tuple2!38074 0))(
  ( (tuple2!38075 (_1!22171 BalanceConc!22916) (_2!22171 BalanceConc!22912)) )
))
(declare-fun lex!2500 (LexerInterface!5279 List!38317 BalanceConc!22912) tuple2!38074)

(assert (=> d!1066606 (= lt!1253524 (head!7668 (list!14110 (_1!22171 (lex!2500 thiss!23823 rules!3307 (seqFromList!4239 lt!1253368))))))))

(assert (=> d!1066606 (not (isEmpty!22580 rules!3307))))

(assert (=> d!1066606 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!959 thiss!23823 rules!3307 lt!1253368 suffix!1395) lt!1253527)))

(assert (= (and d!1066606 res!1467857) b!3625987))

(assert (= (and b!3625987 res!1467856) b!3625988))

(assert (= (and d!1066606 c!627409) b!3625989))

(assert (= (and d!1066606 (not c!627409)) b!3625990))

(declare-fun m!4126661 () Bool)

(assert (=> b!3625989 m!4126661))

(declare-fun m!4126663 () Bool)

(assert (=> b!3625989 m!4126663))

(declare-fun m!4126665 () Bool)

(assert (=> b!3625989 m!4126665))

(assert (=> b!3625989 m!4126359))

(declare-fun m!4126667 () Bool)

(assert (=> b!3625989 m!4126667))

(assert (=> b!3625989 m!4126359))

(declare-fun m!4126669 () Bool)

(assert (=> b!3625989 m!4126669))

(declare-fun m!4126671 () Bool)

(assert (=> b!3625989 m!4126671))

(declare-fun m!4126673 () Bool)

(assert (=> b!3625989 m!4126673))

(assert (=> b!3625989 m!4126671))

(assert (=> b!3625989 m!4126661))

(declare-fun m!4126675 () Bool)

(assert (=> b!3625988 m!4126675))

(assert (=> b!3625988 m!4126675))

(declare-fun m!4126677 () Bool)

(assert (=> b!3625988 m!4126677))

(assert (=> b!3625987 m!4126675))

(assert (=> b!3625987 m!4126675))

(assert (=> b!3625987 m!4126677))

(assert (=> b!3625987 m!4126671))

(assert (=> b!3625987 m!4126673))

(assert (=> b!3625987 m!4126671))

(assert (=> b!3625987 m!4126673))

(declare-fun m!4126679 () Bool)

(assert (=> b!3625987 m!4126679))

(declare-fun m!4126681 () Bool)

(assert (=> d!1066606 m!4126681))

(declare-fun m!4126683 () Bool)

(assert (=> d!1066606 m!4126683))

(assert (=> d!1066606 m!4126359))

(declare-fun m!4126685 () Bool)

(assert (=> d!1066606 m!4126685))

(declare-fun m!4126687 () Bool)

(assert (=> d!1066606 m!4126687))

(assert (=> d!1066606 m!4126367))

(assert (=> d!1066606 m!4126685))

(declare-fun m!4126689 () Bool)

(assert (=> d!1066606 m!4126689))

(assert (=> d!1066606 m!4126681))

(assert (=> d!1066606 m!4126301))

(declare-fun m!4126691 () Bool)

(assert (=> d!1066606 m!4126691))

(declare-fun m!4126693 () Bool)

(assert (=> d!1066606 m!4126693))

(assert (=> d!1066606 m!4126359))

(assert (=> d!1066606 m!4126675))

(declare-fun m!4126695 () Bool)

(assert (=> d!1066606 m!4126695))

(assert (=> d!1066606 m!4126359))

(declare-fun m!4126697 () Bool)

(assert (=> d!1066606 m!4126697))

(assert (=> d!1066606 m!4126671))

(assert (=> d!1066606 m!4126673))

(assert (=> d!1066606 m!4126671))

(declare-fun m!4126699 () Bool)

(assert (=> d!1066606 m!4126699))

(assert (=> d!1066606 m!4126675))

(assert (=> d!1066606 m!4126367))

(declare-fun m!4126701 () Bool)

(assert (=> d!1066606 m!4126701))

(declare-fun m!4126703 () Bool)

(assert (=> d!1066606 m!4126703))

(declare-fun m!4126705 () Bool)

(assert (=> d!1066606 m!4126705))

(declare-fun m!4126707 () Bool)

(assert (=> d!1066606 m!4126707))

(assert (=> d!1066606 m!4126685))

(declare-fun m!4126709 () Bool)

(assert (=> d!1066606 m!4126709))

(assert (=> d!1066606 m!4126705))

(assert (=> d!1066606 m!4126691))

(assert (=> b!3625728 d!1066606))

(declare-fun b!3625993 () Bool)

(declare-fun res!1467859 () Bool)

(declare-fun e!2244407 () Bool)

(assert (=> b!3625993 (=> (not res!1467859) (not e!2244407))))

(declare-fun lt!1253537 () List!38316)

(assert (=> b!3625993 (= res!1467859 (= (size!29137 lt!1253537) (+ (size!29137 lt!1253368) (size!29137 suffix!1395))))))

(declare-fun d!1066610 () Bool)

(assert (=> d!1066610 e!2244407))

(declare-fun res!1467858 () Bool)

(assert (=> d!1066610 (=> (not res!1467858) (not e!2244407))))

(assert (=> d!1066610 (= res!1467858 (= (content!5472 lt!1253537) ((_ map or) (content!5472 lt!1253368) (content!5472 suffix!1395))))))

(declare-fun e!2244406 () List!38316)

(assert (=> d!1066610 (= lt!1253537 e!2244406)))

(declare-fun c!627410 () Bool)

(assert (=> d!1066610 (= c!627410 ((_ is Nil!38192) lt!1253368))))

(assert (=> d!1066610 (= (++!9506 lt!1253368 suffix!1395) lt!1253537)))

(declare-fun b!3625991 () Bool)

(assert (=> b!3625991 (= e!2244406 suffix!1395)))

(declare-fun b!3625992 () Bool)

(assert (=> b!3625992 (= e!2244406 (Cons!38192 (h!43612 lt!1253368) (++!9506 (t!294651 lt!1253368) suffix!1395)))))

(declare-fun b!3625994 () Bool)

(assert (=> b!3625994 (= e!2244407 (or (not (= suffix!1395 Nil!38192)) (= lt!1253537 lt!1253368)))))

(assert (= (and d!1066610 c!627410) b!3625991))

(assert (= (and d!1066610 (not c!627410)) b!3625992))

(assert (= (and d!1066610 res!1467858) b!3625993))

(assert (= (and b!3625993 res!1467859) b!3625994))

(declare-fun m!4126711 () Bool)

(assert (=> b!3625993 m!4126711))

(declare-fun m!4126713 () Bool)

(assert (=> b!3625993 m!4126713))

(declare-fun m!4126715 () Bool)

(assert (=> b!3625993 m!4126715))

(declare-fun m!4126717 () Bool)

(assert (=> d!1066610 m!4126717))

(declare-fun m!4126719 () Bool)

(assert (=> d!1066610 m!4126719))

(declare-fun m!4126721 () Bool)

(assert (=> d!1066610 m!4126721))

(declare-fun m!4126723 () Bool)

(assert (=> b!3625992 m!4126723))

(assert (=> b!3625728 d!1066610))

(declare-fun b!3626034 () Bool)

(declare-fun e!2244426 () Option!8011)

(declare-fun e!2244428 () Option!8011)

(assert (=> b!3626034 (= e!2244426 e!2244428)))

(declare-fun c!627419 () Bool)

(assert (=> b!3626034 (= c!627419 (and ((_ is Cons!38193) rules!3307) (not (= (tag!6414 (h!43613 rules!3307)) (tag!6414 (rule!8456 (_1!22168 lt!1253370)))))))))

(declare-fun d!1066612 () Bool)

(declare-fun e!2244425 () Bool)

(assert (=> d!1066612 e!2244425))

(declare-fun res!1467885 () Bool)

(assert (=> d!1066612 (=> res!1467885 e!2244425)))

(declare-fun lt!1253559 () Option!8011)

(declare-fun isEmpty!22585 (Option!8011) Bool)

(assert (=> d!1066612 (= res!1467885 (isEmpty!22585 lt!1253559))))

(assert (=> d!1066612 (= lt!1253559 e!2244426)))

(declare-fun c!627418 () Bool)

(assert (=> d!1066612 (= c!627418 (and ((_ is Cons!38193) rules!3307) (= (tag!6414 (h!43613 rules!3307)) (tag!6414 (rule!8456 (_1!22168 lt!1253370))))))))

(assert (=> d!1066612 (rulesInvariant!4676 thiss!23823 rules!3307)))

(assert (=> d!1066612 (= (getRuleFromTag!1296 thiss!23823 rules!3307 (tag!6414 (rule!8456 (_1!22168 lt!1253370)))) lt!1253559)))

(declare-fun b!3626035 () Bool)

(declare-fun lt!1253561 () Unit!54946)

(declare-fun lt!1253560 () Unit!54946)

(assert (=> b!3626035 (= lt!1253561 lt!1253560)))

(assert (=> b!3626035 (rulesInvariant!4676 thiss!23823 (t!294652 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!547 (LexerInterface!5279 Rule!11180 List!38317) Unit!54946)

(assert (=> b!3626035 (= lt!1253560 (lemmaInvariantOnRulesThenOnTail!547 thiss!23823 (h!43613 rules!3307) (t!294652 rules!3307)))))

(assert (=> b!3626035 (= e!2244428 (getRuleFromTag!1296 thiss!23823 (t!294652 rules!3307) (tag!6414 (rule!8456 (_1!22168 lt!1253370)))))))

(declare-fun b!3626036 () Bool)

(declare-fun e!2244427 () Bool)

(assert (=> b!3626036 (= e!2244425 e!2244427)))

(declare-fun res!1467886 () Bool)

(assert (=> b!3626036 (=> (not res!1467886) (not e!2244427))))

(assert (=> b!3626036 (= res!1467886 (contains!7446 rules!3307 (get!12465 lt!1253559)))))

(declare-fun b!3626037 () Bool)

(assert (=> b!3626037 (= e!2244427 (= (tag!6414 (get!12465 lt!1253559)) (tag!6414 (rule!8456 (_1!22168 lt!1253370)))))))

(declare-fun b!3626038 () Bool)

(assert (=> b!3626038 (= e!2244426 (Some!8010 (h!43613 rules!3307)))))

(declare-fun b!3626039 () Bool)

(assert (=> b!3626039 (= e!2244428 None!8010)))

(assert (= (and d!1066612 c!627418) b!3626038))

(assert (= (and d!1066612 (not c!627418)) b!3626034))

(assert (= (and b!3626034 c!627419) b!3626035))

(assert (= (and b!3626034 (not c!627419)) b!3626039))

(assert (= (and d!1066612 (not res!1467885)) b!3626036))

(assert (= (and b!3626036 res!1467886) b!3626037))

(declare-fun m!4126725 () Bool)

(assert (=> d!1066612 m!4126725))

(assert (=> d!1066612 m!4126307))

(declare-fun m!4126727 () Bool)

(assert (=> b!3626035 m!4126727))

(declare-fun m!4126729 () Bool)

(assert (=> b!3626035 m!4126729))

(declare-fun m!4126731 () Bool)

(assert (=> b!3626035 m!4126731))

(declare-fun m!4126733 () Bool)

(assert (=> b!3626036 m!4126733))

(assert (=> b!3626036 m!4126733))

(declare-fun m!4126735 () Bool)

(assert (=> b!3626036 m!4126735))

(assert (=> b!3626037 m!4126733))

(assert (=> b!3625728 d!1066612))

(declare-fun d!1066614 () Bool)

(assert (=> d!1066614 (= (get!12466 lt!1253362) (v!37787 lt!1253362))))

(assert (=> b!3625728 d!1066614))

(declare-fun d!1066616 () Bool)

(assert (=> d!1066616 (isPrefix!3053 lt!1253353 (++!9506 lt!1253353 (_2!22168 lt!1253370)))))

(declare-fun lt!1253565 () Unit!54946)

(declare-fun choose!21288 (List!38316 List!38316) Unit!54946)

(assert (=> d!1066616 (= lt!1253565 (choose!21288 lt!1253353 (_2!22168 lt!1253370)))))

(assert (=> d!1066616 (= (lemmaConcatTwoListThenFirstIsPrefix!1974 lt!1253353 (_2!22168 lt!1253370)) lt!1253565)))

(declare-fun bs!571429 () Bool)

(assert (= bs!571429 d!1066616))

(assert (=> bs!571429 m!4126343))

(assert (=> bs!571429 m!4126343))

(assert (=> bs!571429 m!4126363))

(declare-fun m!4126775 () Bool)

(assert (=> bs!571429 m!4126775))

(assert (=> b!3625728 d!1066616))

(declare-fun b!3626107 () Bool)

(declare-fun e!2244469 () Option!8010)

(declare-fun call!262305 () Option!8010)

(assert (=> b!3626107 (= e!2244469 call!262305)))

(declare-fun b!3626108 () Bool)

(declare-fun res!1467938 () Bool)

(declare-fun e!2244471 () Bool)

(assert (=> b!3626108 (=> (not res!1467938) (not e!2244471))))

(declare-fun lt!1253591 () Option!8010)

(assert (=> b!3626108 (= res!1467938 (= (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253591)))) (originalCharacters!6404 (_1!22168 (get!12466 lt!1253591)))))))

(declare-fun b!3626109 () Bool)

(declare-fun res!1467942 () Bool)

(assert (=> b!3626109 (=> (not res!1467942) (not e!2244471))))

(assert (=> b!3626109 (= res!1467942 (matchR!5018 (regex!5690 (rule!8456 (_1!22168 (get!12466 lt!1253591)))) (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253591))))))))

(declare-fun b!3626111 () Bool)

(declare-fun lt!1253593 () Option!8010)

(declare-fun lt!1253595 () Option!8010)

(assert (=> b!3626111 (= e!2244469 (ite (and ((_ is None!8009) lt!1253593) ((_ is None!8009) lt!1253595)) None!8009 (ite ((_ is None!8009) lt!1253595) lt!1253593 (ite ((_ is None!8009) lt!1253593) lt!1253595 (ite (>= (size!29135 (_1!22168 (v!37787 lt!1253593))) (size!29135 (_1!22168 (v!37787 lt!1253595)))) lt!1253593 lt!1253595)))))))

(assert (=> b!3626111 (= lt!1253593 call!262305)))

(assert (=> b!3626111 (= lt!1253595 (maxPrefix!2813 thiss!23823 (t!294652 rules!3307) lt!1253366))))

(declare-fun b!3626112 () Bool)

(assert (=> b!3626112 (= e!2244471 (contains!7446 rules!3307 (rule!8456 (_1!22168 (get!12466 lt!1253591)))))))

(declare-fun b!3626113 () Bool)

(declare-fun res!1467941 () Bool)

(assert (=> b!3626113 (=> (not res!1467941) (not e!2244471))))

(assert (=> b!3626113 (= res!1467941 (= (++!9506 (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253591)))) (_2!22168 (get!12466 lt!1253591))) lt!1253366))))

(declare-fun b!3626114 () Bool)

(declare-fun e!2244470 () Bool)

(assert (=> b!3626114 (= e!2244470 e!2244471)))

(declare-fun res!1467939 () Bool)

(assert (=> b!3626114 (=> (not res!1467939) (not e!2244471))))

(assert (=> b!3626114 (= res!1467939 (isDefined!6242 lt!1253591))))

(declare-fun bm!262300 () Bool)

(assert (=> bm!262300 (= call!262305 (maxPrefixOneRule!1953 thiss!23823 (h!43613 rules!3307) lt!1253366))))

(declare-fun b!3626115 () Bool)

(declare-fun res!1467940 () Bool)

(assert (=> b!3626115 (=> (not res!1467940) (not e!2244471))))

(assert (=> b!3626115 (= res!1467940 (= (value!182625 (_1!22168 (get!12466 lt!1253591))) (apply!9192 (transformation!5690 (rule!8456 (_1!22168 (get!12466 lt!1253591)))) (seqFromList!4239 (originalCharacters!6404 (_1!22168 (get!12466 lt!1253591)))))))))

(declare-fun b!3626110 () Bool)

(declare-fun res!1467936 () Bool)

(assert (=> b!3626110 (=> (not res!1467936) (not e!2244471))))

(assert (=> b!3626110 (= res!1467936 (< (size!29137 (_2!22168 (get!12466 lt!1253591))) (size!29137 lt!1253366)))))

(declare-fun d!1066624 () Bool)

(assert (=> d!1066624 e!2244470))

(declare-fun res!1467937 () Bool)

(assert (=> d!1066624 (=> res!1467937 e!2244470)))

(assert (=> d!1066624 (= res!1467937 (isEmpty!22584 lt!1253591))))

(assert (=> d!1066624 (= lt!1253591 e!2244469)))

(declare-fun c!627429 () Bool)

(assert (=> d!1066624 (= c!627429 (and ((_ is Cons!38193) rules!3307) ((_ is Nil!38193) (t!294652 rules!3307))))))

(declare-fun lt!1253594 () Unit!54946)

(declare-fun lt!1253592 () Unit!54946)

(assert (=> d!1066624 (= lt!1253594 lt!1253592)))

(assert (=> d!1066624 (isPrefix!3053 lt!1253366 lt!1253366)))

(declare-fun lemmaIsPrefixRefl!1936 (List!38316 List!38316) Unit!54946)

(assert (=> d!1066624 (= lt!1253592 (lemmaIsPrefixRefl!1936 lt!1253366 lt!1253366))))

(declare-fun rulesValidInductive!2001 (LexerInterface!5279 List!38317) Bool)

(assert (=> d!1066624 (rulesValidInductive!2001 thiss!23823 rules!3307)))

(assert (=> d!1066624 (= (maxPrefix!2813 thiss!23823 rules!3307 lt!1253366) lt!1253591)))

(assert (= (and d!1066624 c!627429) b!3626107))

(assert (= (and d!1066624 (not c!627429)) b!3626111))

(assert (= (or b!3626107 b!3626111) bm!262300))

(assert (= (and d!1066624 (not res!1467937)) b!3626114))

(assert (= (and b!3626114 res!1467939) b!3626108))

(assert (= (and b!3626108 res!1467938) b!3626110))

(assert (= (and b!3626110 res!1467936) b!3626113))

(assert (= (and b!3626113 res!1467941) b!3626115))

(assert (= (and b!3626115 res!1467940) b!3626109))

(assert (= (and b!3626109 res!1467942) b!3626112))

(declare-fun m!4126831 () Bool)

(assert (=> b!3626112 m!4126831))

(declare-fun m!4126835 () Bool)

(assert (=> b!3626112 m!4126835))

(assert (=> b!3626109 m!4126831))

(declare-fun m!4126837 () Bool)

(assert (=> b!3626109 m!4126837))

(assert (=> b!3626109 m!4126837))

(declare-fun m!4126839 () Bool)

(assert (=> b!3626109 m!4126839))

(assert (=> b!3626109 m!4126839))

(declare-fun m!4126845 () Bool)

(assert (=> b!3626109 m!4126845))

(assert (=> b!3626110 m!4126831))

(declare-fun m!4126849 () Bool)

(assert (=> b!3626110 m!4126849))

(assert (=> b!3626110 m!4126569))

(assert (=> b!3626113 m!4126831))

(assert (=> b!3626113 m!4126837))

(assert (=> b!3626113 m!4126837))

(assert (=> b!3626113 m!4126839))

(assert (=> b!3626113 m!4126839))

(declare-fun m!4126853 () Bool)

(assert (=> b!3626113 m!4126853))

(declare-fun m!4126855 () Bool)

(assert (=> d!1066624 m!4126855))

(declare-fun m!4126857 () Bool)

(assert (=> d!1066624 m!4126857))

(declare-fun m!4126859 () Bool)

(assert (=> d!1066624 m!4126859))

(declare-fun m!4126861 () Bool)

(assert (=> d!1066624 m!4126861))

(declare-fun m!4126863 () Bool)

(assert (=> bm!262300 m!4126863))

(assert (=> b!3626108 m!4126831))

(assert (=> b!3626108 m!4126837))

(assert (=> b!3626108 m!4126837))

(assert (=> b!3626108 m!4126839))

(declare-fun m!4126865 () Bool)

(assert (=> b!3626111 m!4126865))

(assert (=> b!3626115 m!4126831))

(declare-fun m!4126867 () Bool)

(assert (=> b!3626115 m!4126867))

(assert (=> b!3626115 m!4126867))

(declare-fun m!4126869 () Bool)

(assert (=> b!3626115 m!4126869))

(declare-fun m!4126871 () Bool)

(assert (=> b!3626114 m!4126871))

(assert (=> b!3625728 d!1066624))

(declare-fun b!3626119 () Bool)

(declare-fun e!2244476 () Bool)

(declare-fun e!2244474 () Bool)

(assert (=> b!3626119 (= e!2244476 e!2244474)))

(declare-fun res!1467945 () Bool)

(assert (=> b!3626119 (=> (not res!1467945) (not e!2244474))))

(assert (=> b!3626119 (= res!1467945 (not ((_ is Nil!38192) (++!9506 lt!1253353 (_2!22168 lt!1253370)))))))

(declare-fun b!3626122 () Bool)

(declare-fun e!2244475 () Bool)

(assert (=> b!3626122 (= e!2244475 (>= (size!29137 (++!9506 lt!1253353 (_2!22168 lt!1253370))) (size!29137 lt!1253353)))))

(declare-fun d!1066644 () Bool)

(assert (=> d!1066644 e!2244475))

(declare-fun res!1467946 () Bool)

(assert (=> d!1066644 (=> res!1467946 e!2244475)))

(declare-fun lt!1253596 () Bool)

(assert (=> d!1066644 (= res!1467946 (not lt!1253596))))

(assert (=> d!1066644 (= lt!1253596 e!2244476)))

(declare-fun res!1467947 () Bool)

(assert (=> d!1066644 (=> res!1467947 e!2244476)))

(assert (=> d!1066644 (= res!1467947 ((_ is Nil!38192) lt!1253353))))

(assert (=> d!1066644 (= (isPrefix!3053 lt!1253353 (++!9506 lt!1253353 (_2!22168 lt!1253370))) lt!1253596)))

(declare-fun b!3626121 () Bool)

(assert (=> b!3626121 (= e!2244474 (isPrefix!3053 (tail!5615 lt!1253353) (tail!5615 (++!9506 lt!1253353 (_2!22168 lt!1253370)))))))

(declare-fun b!3626120 () Bool)

(declare-fun res!1467948 () Bool)

(assert (=> b!3626120 (=> (not res!1467948) (not e!2244474))))

(assert (=> b!3626120 (= res!1467948 (= (head!7666 lt!1253353) (head!7666 (++!9506 lt!1253353 (_2!22168 lt!1253370)))))))

(assert (= (and d!1066644 (not res!1467947)) b!3626119))

(assert (= (and b!3626119 res!1467945) b!3626120))

(assert (= (and b!3626120 res!1467948) b!3626121))

(assert (= (and d!1066644 (not res!1467946)) b!3626122))

(assert (=> b!3626122 m!4126343))

(declare-fun m!4126873 () Bool)

(assert (=> b!3626122 m!4126873))

(assert (=> b!3626122 m!4126315))

(assert (=> b!3626121 m!4126571))

(assert (=> b!3626121 m!4126343))

(declare-fun m!4126875 () Bool)

(assert (=> b!3626121 m!4126875))

(assert (=> b!3626121 m!4126571))

(assert (=> b!3626121 m!4126875))

(declare-fun m!4126877 () Bool)

(assert (=> b!3626121 m!4126877))

(assert (=> b!3626120 m!4126333))

(assert (=> b!3626120 m!4126343))

(declare-fun m!4126879 () Bool)

(assert (=> b!3626120 m!4126879))

(assert (=> b!3625728 d!1066644))

(declare-fun b!3626127 () Bool)

(declare-fun e!2244483 () Bool)

(declare-fun e!2244481 () Bool)

(assert (=> b!3626127 (= e!2244483 e!2244481)))

(declare-fun res!1467953 () Bool)

(assert (=> b!3626127 (=> (not res!1467953) (not e!2244481))))

(assert (=> b!3626127 (= res!1467953 (not ((_ is Nil!38192) lt!1253366)))))

(declare-fun b!3626130 () Bool)

(declare-fun e!2244482 () Bool)

(assert (=> b!3626130 (= e!2244482 (>= (size!29137 lt!1253366) (size!29137 lt!1253368)))))

(declare-fun d!1066646 () Bool)

(assert (=> d!1066646 e!2244482))

(declare-fun res!1467954 () Bool)

(assert (=> d!1066646 (=> res!1467954 e!2244482)))

(declare-fun lt!1253599 () Bool)

(assert (=> d!1066646 (= res!1467954 (not lt!1253599))))

(assert (=> d!1066646 (= lt!1253599 e!2244483)))

(declare-fun res!1467955 () Bool)

(assert (=> d!1066646 (=> res!1467955 e!2244483)))

(assert (=> d!1066646 (= res!1467955 ((_ is Nil!38192) lt!1253368))))

(assert (=> d!1066646 (= (isPrefix!3053 lt!1253368 lt!1253366) lt!1253599)))

(declare-fun b!3626129 () Bool)

(assert (=> b!3626129 (= e!2244481 (isPrefix!3053 (tail!5615 lt!1253368) (tail!5615 lt!1253366)))))

(declare-fun b!3626128 () Bool)

(declare-fun res!1467956 () Bool)

(assert (=> b!3626128 (=> (not res!1467956) (not e!2244481))))

(assert (=> b!3626128 (= res!1467956 (= (head!7666 lt!1253368) (head!7666 lt!1253366)))))

(assert (= (and d!1066646 (not res!1467955)) b!3626127))

(assert (= (and b!3626127 res!1467953) b!3626128))

(assert (= (and b!3626128 res!1467956) b!3626129))

(assert (= (and d!1066646 (not res!1467954)) b!3626130))

(assert (=> b!3626130 m!4126569))

(assert (=> b!3626130 m!4126713))

(declare-fun m!4126881 () Bool)

(assert (=> b!3626129 m!4126881))

(assert (=> b!3626129 m!4126573))

(assert (=> b!3626129 m!4126881))

(assert (=> b!3626129 m!4126573))

(declare-fun m!4126883 () Bool)

(assert (=> b!3626129 m!4126883))

(declare-fun m!4126885 () Bool)

(assert (=> b!3626128 m!4126885))

(assert (=> b!3626128 m!4126577))

(assert (=> b!3625728 d!1066646))

(declare-fun d!1066648 () Bool)

(assert (=> d!1066648 (isPrefix!3053 lt!1253368 (++!9506 lt!1253368 suffix!1395))))

(declare-fun lt!1253600 () Unit!54946)

(assert (=> d!1066648 (= lt!1253600 (choose!21288 lt!1253368 suffix!1395))))

(assert (=> d!1066648 (= (lemmaConcatTwoListThenFirstIsPrefix!1974 lt!1253368 suffix!1395) lt!1253600)))

(declare-fun bs!571430 () Bool)

(assert (= bs!571430 d!1066648))

(assert (=> bs!571430 m!4126359))

(assert (=> bs!571430 m!4126359))

(declare-fun m!4126887 () Bool)

(assert (=> bs!571430 m!4126887))

(declare-fun m!4126889 () Bool)

(assert (=> bs!571430 m!4126889))

(assert (=> b!3625728 d!1066648))

(declare-fun d!1066650 () Bool)

(assert (=> d!1066650 (= (isDefined!6243 lt!1253355) (not (isEmpty!22585 lt!1253355)))))

(declare-fun bs!571431 () Bool)

(assert (= bs!571431 d!1066650))

(declare-fun m!4126897 () Bool)

(assert (=> bs!571431 m!4126897))

(assert (=> b!3625728 d!1066650))

(declare-fun d!1066654 () Bool)

(declare-fun e!2244527 () Bool)

(assert (=> d!1066654 e!2244527))

(declare-fun c!627455 () Bool)

(assert (=> d!1066654 (= c!627455 ((_ is EmptyExpr!10449) (regex!5690 rule!403)))))

(declare-fun lt!1253610 () Bool)

(declare-fun e!2244526 () Bool)

(assert (=> d!1066654 (= lt!1253610 e!2244526)))

(declare-fun c!627453 () Bool)

(assert (=> d!1066654 (= c!627453 (isEmpty!22581 lt!1253368))))

(declare-fun validRegex!4779 (Regex!10449) Bool)

(assert (=> d!1066654 (validRegex!4779 (regex!5690 rule!403))))

(assert (=> d!1066654 (= (matchR!5018 (regex!5690 rule!403) lt!1253368) lt!1253610)))

(declare-fun b!3626205 () Bool)

(declare-fun e!2244524 () Bool)

(assert (=> b!3626205 (= e!2244524 (not (= (head!7666 lt!1253368) (c!627354 (regex!5690 rule!403)))))))

(declare-fun b!3626206 () Bool)

(declare-fun res!1467992 () Bool)

(declare-fun e!2244525 () Bool)

(assert (=> b!3626206 (=> (not res!1467992) (not e!2244525))))

(assert (=> b!3626206 (= res!1467992 (isEmpty!22581 (tail!5615 lt!1253368)))))

(declare-fun b!3626207 () Bool)

(declare-fun e!2244528 () Bool)

(assert (=> b!3626207 (= e!2244527 e!2244528)))

(declare-fun c!627454 () Bool)

(assert (=> b!3626207 (= c!627454 ((_ is EmptyLang!10449) (regex!5690 rule!403)))))

(declare-fun b!3626208 () Bool)

(declare-fun res!1467990 () Bool)

(declare-fun e!2244522 () Bool)

(assert (=> b!3626208 (=> res!1467990 e!2244522)))

(assert (=> b!3626208 (= res!1467990 e!2244525)))

(declare-fun res!1467987 () Bool)

(assert (=> b!3626208 (=> (not res!1467987) (not e!2244525))))

(assert (=> b!3626208 (= res!1467987 lt!1253610)))

(declare-fun b!3626209 () Bool)

(assert (=> b!3626209 (= e!2244528 (not lt!1253610))))

(declare-fun bm!262320 () Bool)

(declare-fun call!262325 () Bool)

(assert (=> bm!262320 (= call!262325 (isEmpty!22581 lt!1253368))))

(declare-fun b!3626210 () Bool)

(declare-fun e!2244523 () Bool)

(assert (=> b!3626210 (= e!2244523 e!2244524)))

(declare-fun res!1467986 () Bool)

(assert (=> b!3626210 (=> res!1467986 e!2244524)))

(assert (=> b!3626210 (= res!1467986 call!262325)))

(declare-fun b!3626211 () Bool)

(declare-fun derivativeStep!3166 (Regex!10449 C!21084) Regex!10449)

(assert (=> b!3626211 (= e!2244526 (matchR!5018 (derivativeStep!3166 (regex!5690 rule!403) (head!7666 lt!1253368)) (tail!5615 lt!1253368)))))

(declare-fun b!3626212 () Bool)

(declare-fun nullable!3617 (Regex!10449) Bool)

(assert (=> b!3626212 (= e!2244526 (nullable!3617 (regex!5690 rule!403)))))

(declare-fun b!3626213 () Bool)

(declare-fun res!1467989 () Bool)

(assert (=> b!3626213 (=> (not res!1467989) (not e!2244525))))

(assert (=> b!3626213 (= res!1467989 (not call!262325))))

(declare-fun b!3626214 () Bool)

(declare-fun res!1467985 () Bool)

(assert (=> b!3626214 (=> res!1467985 e!2244522)))

(assert (=> b!3626214 (= res!1467985 (not ((_ is ElementMatch!10449) (regex!5690 rule!403))))))

(assert (=> b!3626214 (= e!2244528 e!2244522)))

(declare-fun b!3626215 () Bool)

(declare-fun res!1467991 () Bool)

(assert (=> b!3626215 (=> res!1467991 e!2244524)))

(assert (=> b!3626215 (= res!1467991 (not (isEmpty!22581 (tail!5615 lt!1253368))))))

(declare-fun b!3626216 () Bool)

(assert (=> b!3626216 (= e!2244525 (= (head!7666 lt!1253368) (c!627354 (regex!5690 rule!403))))))

(declare-fun b!3626217 () Bool)

(assert (=> b!3626217 (= e!2244522 e!2244523)))

(declare-fun res!1467988 () Bool)

(assert (=> b!3626217 (=> (not res!1467988) (not e!2244523))))

(assert (=> b!3626217 (= res!1467988 (not lt!1253610))))

(declare-fun b!3626218 () Bool)

(assert (=> b!3626218 (= e!2244527 (= lt!1253610 call!262325))))

(assert (= (and d!1066654 c!627453) b!3626212))

(assert (= (and d!1066654 (not c!627453)) b!3626211))

(assert (= (and d!1066654 c!627455) b!3626218))

(assert (= (and d!1066654 (not c!627455)) b!3626207))

(assert (= (and b!3626207 c!627454) b!3626209))

(assert (= (and b!3626207 (not c!627454)) b!3626214))

(assert (= (and b!3626214 (not res!1467985)) b!3626208))

(assert (= (and b!3626208 res!1467987) b!3626213))

(assert (= (and b!3626213 res!1467989) b!3626206))

(assert (= (and b!3626206 res!1467992) b!3626216))

(assert (= (and b!3626208 (not res!1467990)) b!3626217))

(assert (= (and b!3626217 res!1467988) b!3626210))

(assert (= (and b!3626210 (not res!1467986)) b!3626215))

(assert (= (and b!3626215 (not res!1467991)) b!3626205))

(assert (= (or b!3626218 b!3626210 b!3626213) bm!262320))

(declare-fun m!4126947 () Bool)

(assert (=> bm!262320 m!4126947))

(assert (=> b!3626216 m!4126885))

(assert (=> b!3626205 m!4126885))

(assert (=> b!3626215 m!4126881))

(assert (=> b!3626215 m!4126881))

(declare-fun m!4126953 () Bool)

(assert (=> b!3626215 m!4126953))

(declare-fun m!4126955 () Bool)

(assert (=> b!3626212 m!4126955))

(assert (=> d!1066654 m!4126947))

(declare-fun m!4126957 () Bool)

(assert (=> d!1066654 m!4126957))

(assert (=> b!3626206 m!4126881))

(assert (=> b!3626206 m!4126881))

(assert (=> b!3626206 m!4126953))

(assert (=> b!3626211 m!4126885))

(assert (=> b!3626211 m!4126885))

(declare-fun m!4126961 () Bool)

(assert (=> b!3626211 m!4126961))

(assert (=> b!3626211 m!4126881))

(assert (=> b!3626211 m!4126961))

(assert (=> b!3626211 m!4126881))

(declare-fun m!4126963 () Bool)

(assert (=> b!3626211 m!4126963))

(assert (=> b!3625707 d!1066654))

(declare-fun d!1066672 () Bool)

(declare-fun res!1468010 () Bool)

(declare-fun e!2244543 () Bool)

(assert (=> d!1066672 (=> (not res!1468010) (not e!2244543))))

(assert (=> d!1066672 (= res!1468010 (validRegex!4779 (regex!5690 rule!403)))))

(assert (=> d!1066672 (= (ruleValid!1955 thiss!23823 rule!403) e!2244543)))

(declare-fun b!3626242 () Bool)

(declare-fun res!1468011 () Bool)

(assert (=> b!3626242 (=> (not res!1468011) (not e!2244543))))

(assert (=> b!3626242 (= res!1468011 (not (nullable!3617 (regex!5690 rule!403))))))

(declare-fun b!3626243 () Bool)

(assert (=> b!3626243 (= e!2244543 (not (= (tag!6414 rule!403) (String!42934 ""))))))

(assert (= (and d!1066672 res!1468010) b!3626242))

(assert (= (and b!3626242 res!1468011) b!3626243))

(assert (=> d!1066672 m!4126957))

(assert (=> b!3626242 m!4126955))

(assert (=> b!3625707 d!1066672))

(declare-fun d!1066690 () Bool)

(assert (=> d!1066690 (ruleValid!1955 thiss!23823 rule!403)))

(declare-fun lt!1253617 () Unit!54946)

(declare-fun choose!21289 (LexerInterface!5279 Rule!11180 List!38317) Unit!54946)

(assert (=> d!1066690 (= lt!1253617 (choose!21289 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1066690 (contains!7446 rules!3307 rule!403)))

(assert (=> d!1066690 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1110 thiss!23823 rule!403 rules!3307) lt!1253617)))

(declare-fun bs!571434 () Bool)

(assert (= bs!571434 d!1066690))

(assert (=> bs!571434 m!4126385))

(declare-fun m!4126993 () Bool)

(assert (=> bs!571434 m!4126993))

(assert (=> bs!571434 m!4126327))

(assert (=> b!3625707 d!1066690))

(declare-fun d!1066694 () Bool)

(declare-fun lt!1253618 () Bool)

(assert (=> d!1066694 (= lt!1253618 (select (content!5472 lt!1253361) lt!1253371))))

(declare-fun e!2244545 () Bool)

(assert (=> d!1066694 (= lt!1253618 e!2244545)))

(declare-fun res!1468012 () Bool)

(assert (=> d!1066694 (=> (not res!1468012) (not e!2244545))))

(assert (=> d!1066694 (= res!1468012 ((_ is Cons!38192) lt!1253361))))

(assert (=> d!1066694 (= (contains!7445 lt!1253361 lt!1253371) lt!1253618)))

(declare-fun b!3626244 () Bool)

(declare-fun e!2244544 () Bool)

(assert (=> b!3626244 (= e!2244545 e!2244544)))

(declare-fun res!1468013 () Bool)

(assert (=> b!3626244 (=> res!1468013 e!2244544)))

(assert (=> b!3626244 (= res!1468013 (= (h!43612 lt!1253361) lt!1253371))))

(declare-fun b!3626245 () Bool)

(assert (=> b!3626245 (= e!2244544 (contains!7445 (t!294651 lt!1253361) lt!1253371))))

(assert (= (and d!1066694 res!1468012) b!3626244))

(assert (= (and b!3626244 (not res!1468013)) b!3626245))

(assert (=> d!1066694 m!4126449))

(declare-fun m!4126995 () Bool)

(assert (=> d!1066694 m!4126995))

(declare-fun m!4126997 () Bool)

(assert (=> b!3626245 m!4126997))

(assert (=> b!3625729 d!1066694))

(declare-fun d!1066696 () Bool)

(assert (=> d!1066696 (= (head!7666 lt!1253353) (h!43612 lt!1253353))))

(assert (=> b!3625729 d!1066696))

(declare-fun d!1066698 () Bool)

(assert (=> d!1066698 (= (inv!51595 (tag!6414 (h!43613 rules!3307))) (= (mod (str.len (value!182599 (tag!6414 (h!43613 rules!3307)))) 2) 0))))

(assert (=> b!3625727 d!1066698))

(declare-fun d!1066700 () Bool)

(declare-fun res!1468018 () Bool)

(declare-fun e!2244548 () Bool)

(assert (=> d!1066700 (=> (not res!1468018) (not e!2244548))))

(assert (=> d!1066700 (= res!1468018 (semiInverseModEq!2414 (toChars!7837 (transformation!5690 (h!43613 rules!3307))) (toValue!7978 (transformation!5690 (h!43613 rules!3307)))))))

(assert (=> d!1066700 (= (inv!51598 (transformation!5690 (h!43613 rules!3307))) e!2244548)))

(declare-fun b!3626250 () Bool)

(assert (=> b!3626250 (= e!2244548 (equivClasses!2313 (toChars!7837 (transformation!5690 (h!43613 rules!3307))) (toValue!7978 (transformation!5690 (h!43613 rules!3307)))))))

(assert (= (and d!1066700 res!1468018) b!3626250))

(declare-fun m!4126999 () Bool)

(assert (=> d!1066700 m!4126999))

(declare-fun m!4127001 () Bool)

(assert (=> b!3626250 m!4127001))

(assert (=> b!3625727 d!1066700))

(declare-fun d!1066702 () Bool)

(assert (=> d!1066702 (not (matchR!5018 (regex!5690 rule!403) lt!1253368))))

(declare-fun lt!1253621 () Unit!54946)

(declare-fun choose!21290 (Regex!10449 List!38316 C!21084) Unit!54946)

(assert (=> d!1066702 (= lt!1253621 (choose!21290 (regex!5690 rule!403) lt!1253368 lt!1253371))))

(assert (=> d!1066702 (validRegex!4779 (regex!5690 rule!403))))

(assert (=> d!1066702 (= (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!662 (regex!5690 rule!403) lt!1253368 lt!1253371) lt!1253621)))

(declare-fun bs!571435 () Bool)

(assert (= bs!571435 d!1066702))

(assert (=> bs!571435 m!4126383))

(declare-fun m!4127003 () Bool)

(assert (=> bs!571435 m!4127003))

(assert (=> bs!571435 m!4126957))

(assert (=> b!3625706 d!1066702))

(declare-fun d!1066706 () Bool)

(declare-fun lt!1253628 () Bool)

(declare-fun content!5473 (List!38317) (InoxSet Rule!11180))

(assert (=> d!1066706 (= lt!1253628 (select (content!5473 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2244557 () Bool)

(assert (=> d!1066706 (= lt!1253628 e!2244557)))

(declare-fun res!1468027 () Bool)

(assert (=> d!1066706 (=> (not res!1468027) (not e!2244557))))

(assert (=> d!1066706 (= res!1468027 ((_ is Cons!38193) rules!3307))))

(assert (=> d!1066706 (= (contains!7446 rules!3307 anOtherTypeRule!33) lt!1253628)))

(declare-fun b!3626259 () Bool)

(declare-fun e!2244558 () Bool)

(assert (=> b!3626259 (= e!2244557 e!2244558)))

(declare-fun res!1468028 () Bool)

(assert (=> b!3626259 (=> res!1468028 e!2244558)))

(assert (=> b!3626259 (= res!1468028 (= (h!43613 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3626260 () Bool)

(assert (=> b!3626260 (= e!2244558 (contains!7446 (t!294652 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1066706 res!1468027) b!3626259))

(assert (= (and b!3626259 (not res!1468028)) b!3626260))

(declare-fun m!4127015 () Bool)

(assert (=> d!1066706 m!4127015))

(declare-fun m!4127017 () Bool)

(assert (=> d!1066706 m!4127017))

(declare-fun m!4127019 () Bool)

(assert (=> b!3626260 m!4127019))

(assert (=> b!3625710 d!1066706))

(declare-fun b!3626265 () Bool)

(declare-fun e!2244561 () Bool)

(assert (=> b!3626265 (= e!2244561 true)))

(declare-fun d!1066714 () Bool)

(assert (=> d!1066714 e!2244561))

(assert (= d!1066714 b!3626265))

(declare-fun order!20883 () Int)

(declare-fun lambda!124196 () Int)

(declare-fun order!20885 () Int)

(declare-fun dynLambda!16539 (Int Int) Int)

(declare-fun dynLambda!16540 (Int Int) Int)

(assert (=> b!3626265 (< (dynLambda!16539 order!20883 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) (dynLambda!16540 order!20885 lambda!124196))))

(declare-fun order!20887 () Int)

(declare-fun dynLambda!16541 (Int Int) Int)

(assert (=> b!3626265 (< (dynLambda!16541 order!20887 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) (dynLambda!16540 order!20885 lambda!124196))))

(declare-fun dynLambda!16542 (Int BalanceConc!22912) TokenValue!5920)

(assert (=> d!1066714 (= (list!14106 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) lt!1253363))) (list!14106 lt!1253363))))

(declare-fun lt!1253636 () Unit!54946)

(declare-fun ForallOf!673 (Int BalanceConc!22912) Unit!54946)

(assert (=> d!1066714 (= lt!1253636 (ForallOf!673 lambda!124196 lt!1253363))))

(assert (=> d!1066714 (= (lemmaSemiInverse!1441 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253363) lt!1253636)))

(declare-fun b_lambda!107293 () Bool)

(assert (=> (not b_lambda!107293) (not d!1066714)))

(declare-fun t!294702 () Bool)

(declare-fun tb!208145 () Bool)

(assert (=> (and b!3625701 (= (toChars!7837 (transformation!5690 (rule!8456 token!511))) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294702) tb!208145))

(declare-fun b!3626270 () Bool)

(declare-fun e!2244564 () Bool)

(declare-fun tp!1107191 () Bool)

(assert (=> b!3626270 (= e!2244564 (and (inv!51602 (c!627355 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) lt!1253363)))) tp!1107191))))

(declare-fun result!253592 () Bool)

(assert (=> tb!208145 (= result!253592 (and (inv!51603 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) lt!1253363))) e!2244564))))

(assert (= tb!208145 b!3626270))

(declare-fun m!4127027 () Bool)

(assert (=> b!3626270 m!4127027))

(declare-fun m!4127029 () Bool)

(assert (=> tb!208145 m!4127029))

(assert (=> d!1066714 t!294702))

(declare-fun b_and!265607 () Bool)

(assert (= b_and!265575 (and (=> t!294702 result!253592) b_and!265607)))

(declare-fun t!294704 () Bool)

(declare-fun tb!208147 () Bool)

(assert (=> (and b!3625731 (= (toChars!7837 (transformation!5690 rule!403)) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294704) tb!208147))

(declare-fun result!253594 () Bool)

(assert (= result!253594 result!253592))

(assert (=> d!1066714 t!294704))

(declare-fun b_and!265609 () Bool)

(assert (= b_and!265577 (and (=> t!294704 result!253594) b_and!265609)))

(declare-fun tb!208149 () Bool)

(declare-fun t!294706 () Bool)

(assert (=> (and b!3625725 (= (toChars!7837 (transformation!5690 anOtherTypeRule!33)) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294706) tb!208149))

(declare-fun result!253596 () Bool)

(assert (= result!253596 result!253592))

(assert (=> d!1066714 t!294706))

(declare-fun b_and!265611 () Bool)

(assert (= b_and!265579 (and (=> t!294706 result!253596) b_and!265611)))

(declare-fun tb!208151 () Bool)

(declare-fun t!294708 () Bool)

(assert (=> (and b!3625708 (= (toChars!7837 (transformation!5690 (h!43613 rules!3307))) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294708) tb!208151))

(declare-fun result!253598 () Bool)

(assert (= result!253598 result!253592))

(assert (=> d!1066714 t!294708))

(declare-fun b_and!265613 () Bool)

(assert (= b_and!265581 (and (=> t!294708 result!253598) b_and!265613)))

(declare-fun b_lambda!107295 () Bool)

(assert (=> (not b_lambda!107295) (not d!1066714)))

(declare-fun tb!208153 () Bool)

(declare-fun t!294710 () Bool)

(assert (=> (and b!3625701 (= (toValue!7978 (transformation!5690 (rule!8456 token!511))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294710) tb!208153))

(declare-fun result!253600 () Bool)

(assert (=> tb!208153 (= result!253600 (inv!21 (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) lt!1253363)))))

(declare-fun m!4127031 () Bool)

(assert (=> tb!208153 m!4127031))

(assert (=> d!1066714 t!294710))

(declare-fun b_and!265615 () Bool)

(assert (= b_and!265535 (and (=> t!294710 result!253600) b_and!265615)))

(declare-fun t!294714 () Bool)

(declare-fun tb!208157 () Bool)

(assert (=> (and b!3625731 (= (toValue!7978 (transformation!5690 rule!403)) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294714) tb!208157))

(declare-fun result!253606 () Bool)

(assert (= result!253606 result!253600))

(assert (=> d!1066714 t!294714))

(declare-fun b_and!265617 () Bool)

(assert (= b_and!265539 (and (=> t!294714 result!253606) b_and!265617)))

(declare-fun t!294716 () Bool)

(declare-fun tb!208159 () Bool)

(assert (=> (and b!3625725 (= (toValue!7978 (transformation!5690 anOtherTypeRule!33)) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294716) tb!208159))

(declare-fun result!253608 () Bool)

(assert (= result!253608 result!253600))

(assert (=> d!1066714 t!294716))

(declare-fun b_and!265619 () Bool)

(assert (= b_and!265543 (and (=> t!294716 result!253608) b_and!265619)))

(declare-fun tb!208161 () Bool)

(declare-fun t!294718 () Bool)

(assert (=> (and b!3625708 (= (toValue!7978 (transformation!5690 (h!43613 rules!3307))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294718) tb!208161))

(declare-fun result!253610 () Bool)

(assert (= result!253610 result!253600))

(assert (=> d!1066714 t!294718))

(declare-fun b_and!265623 () Bool)

(assert (= b_and!265547 (and (=> t!294718 result!253610) b_and!265623)))

(assert (=> d!1066714 m!4126349))

(declare-fun m!4127037 () Bool)

(assert (=> d!1066714 m!4127037))

(declare-fun m!4127039 () Bool)

(assert (=> d!1066714 m!4127039))

(declare-fun m!4127041 () Bool)

(assert (=> d!1066714 m!4127041))

(assert (=> d!1066714 m!4127039))

(declare-fun m!4127043 () Bool)

(assert (=> d!1066714 m!4127043))

(assert (=> d!1066714 m!4127037))

(assert (=> b!3625709 d!1066714))

(declare-fun d!1066720 () Bool)

(assert (=> d!1066720 (= (size!29135 (_1!22168 lt!1253370)) (size!29137 (originalCharacters!6404 (_1!22168 lt!1253370))))))

(declare-fun Unit!54954 () Unit!54946)

(assert (=> d!1066720 (= (lemmaCharactersSize!737 (_1!22168 lt!1253370)) Unit!54954)))

(declare-fun bs!571439 () Bool)

(assert (= bs!571439 d!1066720))

(declare-fun m!4127051 () Bool)

(assert (=> bs!571439 m!4127051))

(assert (=> b!3625709 d!1066720))

(declare-fun b!3626288 () Bool)

(declare-fun e!2244579 () Bool)

(assert (=> b!3626288 (= e!2244579 true)))

(declare-fun d!1066724 () Bool)

(assert (=> d!1066724 e!2244579))

(assert (= d!1066724 b!3626288))

(declare-fun order!20897 () Int)

(declare-fun lambda!124203 () Int)

(declare-fun dynLambda!16543 (Int Int) Int)

(assert (=> b!3626288 (< (dynLambda!16539 order!20883 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) (dynLambda!16543 order!20897 lambda!124203))))

(assert (=> b!3626288 (< (dynLambda!16541 order!20887 (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) (dynLambda!16543 order!20897 lambda!124203))))

(assert (=> d!1066724 (= (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) lt!1253363) (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (seqFromList!4239 (originalCharacters!6404 (_1!22168 lt!1253370)))))))

(declare-fun lt!1253643 () Unit!54946)

(declare-fun Forall2of!331 (Int BalanceConc!22912 BalanceConc!22912) Unit!54946)

(assert (=> d!1066724 (= lt!1253643 (Forall2of!331 lambda!124203 lt!1253363 (seqFromList!4239 (originalCharacters!6404 (_1!22168 lt!1253370)))))))

(assert (=> d!1066724 (= (list!14106 lt!1253363) (list!14106 (seqFromList!4239 (originalCharacters!6404 (_1!22168 lt!1253370)))))))

(assert (=> d!1066724 (= (lemmaEqSameImage!875 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253363 (seqFromList!4239 (originalCharacters!6404 (_1!22168 lt!1253370)))) lt!1253643)))

(declare-fun b_lambda!107303 () Bool)

(assert (=> (not b_lambda!107303) (not d!1066724)))

(assert (=> d!1066724 t!294710))

(declare-fun b_and!265643 () Bool)

(assert (= b_and!265615 (and (=> t!294710 result!253600) b_and!265643)))

(assert (=> d!1066724 t!294714))

(declare-fun b_and!265647 () Bool)

(assert (= b_and!265617 (and (=> t!294714 result!253606) b_and!265647)))

(assert (=> d!1066724 t!294716))

(declare-fun b_and!265651 () Bool)

(assert (= b_and!265619 (and (=> t!294716 result!253608) b_and!265651)))

(assert (=> d!1066724 t!294718))

(declare-fun b_and!265653 () Bool)

(assert (= b_and!265623 (and (=> t!294718 result!253610) b_and!265653)))

(declare-fun b_lambda!107307 () Bool)

(assert (=> (not b_lambda!107307) (not d!1066724)))

(declare-fun t!294728 () Bool)

(declare-fun tb!208171 () Bool)

(assert (=> (and b!3625701 (= (toValue!7978 (transformation!5690 (rule!8456 token!511))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294728) tb!208171))

(declare-fun result!253620 () Bool)

(assert (=> tb!208171 (= result!253620 (inv!21 (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (seqFromList!4239 (originalCharacters!6404 (_1!22168 lt!1253370))))))))

(declare-fun m!4127055 () Bool)

(assert (=> tb!208171 m!4127055))

(assert (=> d!1066724 t!294728))

(declare-fun b_and!265657 () Bool)

(assert (= b_and!265643 (and (=> t!294728 result!253620) b_and!265657)))

(declare-fun t!294732 () Bool)

(declare-fun tb!208175 () Bool)

(assert (=> (and b!3625731 (= (toValue!7978 (transformation!5690 rule!403)) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294732) tb!208175))

(declare-fun result!253623 () Bool)

(assert (= result!253623 result!253620))

(assert (=> d!1066724 t!294732))

(declare-fun b_and!265659 () Bool)

(assert (= b_and!265647 (and (=> t!294732 result!253623) b_and!265659)))

(declare-fun t!294734 () Bool)

(declare-fun tb!208177 () Bool)

(assert (=> (and b!3625725 (= (toValue!7978 (transformation!5690 anOtherTypeRule!33)) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294734) tb!208177))

(declare-fun result!253626 () Bool)

(assert (= result!253626 result!253620))

(assert (=> d!1066724 t!294734))

(declare-fun b_and!265663 () Bool)

(assert (= b_and!265651 (and (=> t!294734 result!253626) b_and!265663)))

(declare-fun tb!208183 () Bool)

(declare-fun t!294738 () Bool)

(assert (=> (and b!3625708 (= (toValue!7978 (transformation!5690 (h!43613 rules!3307))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294738) tb!208183))

(declare-fun result!253632 () Bool)

(assert (= result!253632 result!253620))

(assert (=> d!1066724 t!294738))

(declare-fun b_and!265667 () Bool)

(assert (= b_and!265653 (and (=> t!294738 result!253632) b_and!265667)))

(assert (=> d!1066724 m!4126295))

(declare-fun m!4127057 () Bool)

(assert (=> d!1066724 m!4127057))

(assert (=> d!1066724 m!4126295))

(declare-fun m!4127059 () Bool)

(assert (=> d!1066724 m!4127059))

(assert (=> d!1066724 m!4127037))

(assert (=> d!1066724 m!4126349))

(assert (=> d!1066724 m!4126295))

(declare-fun m!4127065 () Bool)

(assert (=> d!1066724 m!4127065))

(assert (=> b!3625709 d!1066724))

(declare-fun d!1066726 () Bool)

(declare-fun fromListB!1953 (List!38316) BalanceConc!22912)

(assert (=> d!1066726 (= (seqFromList!4239 (originalCharacters!6404 (_1!22168 lt!1253370))) (fromListB!1953 (originalCharacters!6404 (_1!22168 lt!1253370))))))

(declare-fun bs!571441 () Bool)

(assert (= bs!571441 d!1066726))

(declare-fun m!4127075 () Bool)

(assert (=> bs!571441 m!4127075))

(assert (=> b!3625709 d!1066726))

(declare-fun d!1066732 () Bool)

(declare-fun lt!1253647 () Int)

(assert (=> d!1066732 (= lt!1253647 (size!29137 (list!14106 lt!1253363)))))

(declare-fun size!29138 (Conc!11649) Int)

(assert (=> d!1066732 (= lt!1253647 (size!29138 (c!627355 lt!1253363)))))

(assert (=> d!1066732 (= (size!29136 lt!1253363) lt!1253647)))

(declare-fun bs!571442 () Bool)

(assert (= bs!571442 d!1066732))

(assert (=> bs!571442 m!4126349))

(assert (=> bs!571442 m!4126349))

(declare-fun m!4127085 () Bool)

(assert (=> bs!571442 m!4127085))

(declare-fun m!4127087 () Bool)

(assert (=> bs!571442 m!4127087))

(assert (=> b!3625709 d!1066732))

(declare-fun d!1066742 () Bool)

(assert (=> d!1066742 (= (apply!9192 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253363) (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) lt!1253363))))

(declare-fun b_lambda!107309 () Bool)

(assert (=> (not b_lambda!107309) (not d!1066742)))

(assert (=> d!1066742 t!294710))

(declare-fun b_and!265671 () Bool)

(assert (= b_and!265657 (and (=> t!294710 result!253600) b_and!265671)))

(assert (=> d!1066742 t!294714))

(declare-fun b_and!265673 () Bool)

(assert (= b_and!265659 (and (=> t!294714 result!253606) b_and!265673)))

(assert (=> d!1066742 t!294716))

(declare-fun b_and!265675 () Bool)

(assert (= b_and!265663 (and (=> t!294716 result!253608) b_and!265675)))

(assert (=> d!1066742 t!294718))

(declare-fun b_and!265677 () Bool)

(assert (= b_and!265667 (and (=> t!294718 result!253610) b_and!265677)))

(assert (=> d!1066742 m!4127037))

(assert (=> b!3625709 d!1066742))

(declare-fun d!1066744 () Bool)

(assert (=> d!1066744 (= (inv!51595 (tag!6414 rule!403)) (= (mod (str.len (value!182599 (tag!6414 rule!403))) 2) 0))))

(assert (=> b!3625712 d!1066744))

(declare-fun d!1066746 () Bool)

(declare-fun res!1468041 () Bool)

(declare-fun e!2244589 () Bool)

(assert (=> d!1066746 (=> (not res!1468041) (not e!2244589))))

(assert (=> d!1066746 (= res!1468041 (semiInverseModEq!2414 (toChars!7837 (transformation!5690 rule!403)) (toValue!7978 (transformation!5690 rule!403))))))

(assert (=> d!1066746 (= (inv!51598 (transformation!5690 rule!403)) e!2244589)))

(declare-fun b!3626303 () Bool)

(assert (=> b!3626303 (= e!2244589 (equivClasses!2313 (toChars!7837 (transformation!5690 rule!403)) (toValue!7978 (transformation!5690 rule!403))))))

(assert (= (and d!1066746 res!1468041) b!3626303))

(declare-fun m!4127089 () Bool)

(assert (=> d!1066746 m!4127089))

(declare-fun m!4127091 () Bool)

(assert (=> b!3626303 m!4127091))

(assert (=> b!3625712 d!1066746))

(declare-fun d!1066748 () Bool)

(assert (=> d!1066748 (= (get!12466 lt!1253358) (v!37787 lt!1253358))))

(assert (=> b!3625734 d!1066748))

(declare-fun d!1066750 () Bool)

(declare-fun res!1468045 () Bool)

(declare-fun e!2244598 () Bool)

(assert (=> d!1066750 (=> (not res!1468045) (not e!2244598))))

(declare-fun rulesValid!2172 (LexerInterface!5279 List!38317) Bool)

(assert (=> d!1066750 (= res!1468045 (rulesValid!2172 thiss!23823 rules!3307))))

(assert (=> d!1066750 (= (rulesInvariant!4676 thiss!23823 rules!3307) e!2244598)))

(declare-fun b!3626316 () Bool)

(declare-datatypes ((List!38321 0))(
  ( (Nil!38197) (Cons!38197 (h!43617 String!42933) (t!294776 List!38321)) )
))
(declare-fun noDuplicateTag!2168 (LexerInterface!5279 List!38317 List!38321) Bool)

(assert (=> b!3626316 (= e!2244598 (noDuplicateTag!2168 thiss!23823 rules!3307 Nil!38197))))

(assert (= (and d!1066750 res!1468045) b!3626316))

(declare-fun m!4127099 () Bool)

(assert (=> d!1066750 m!4127099))

(declare-fun m!4127101 () Bool)

(assert (=> b!3626316 m!4127101))

(assert (=> b!3625732 d!1066750))

(declare-fun d!1066756 () Bool)

(assert (=> d!1066756 (= (isEmpty!22580 rules!3307) ((_ is Nil!38193) rules!3307))))

(assert (=> b!3625711 d!1066756))

(declare-fun d!1066758 () Bool)

(declare-fun e!2244610 () Bool)

(assert (=> d!1066758 e!2244610))

(declare-fun c!627468 () Bool)

(assert (=> d!1066758 (= c!627468 ((_ is EmptyExpr!10449) (regex!5690 (rule!8456 (_1!22168 lt!1253370)))))))

(declare-fun lt!1253651 () Bool)

(declare-fun e!2244609 () Bool)

(assert (=> d!1066758 (= lt!1253651 e!2244609)))

(declare-fun c!627466 () Bool)

(assert (=> d!1066758 (= c!627466 (isEmpty!22581 lt!1253353))))

(assert (=> d!1066758 (validRegex!4779 (regex!5690 (rule!8456 (_1!22168 lt!1253370))))))

(assert (=> d!1066758 (= (matchR!5018 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253353) lt!1253651)))

(declare-fun b!3626321 () Bool)

(declare-fun e!2244607 () Bool)

(assert (=> b!3626321 (= e!2244607 (not (= (head!7666 lt!1253353) (c!627354 (regex!5690 (rule!8456 (_1!22168 lt!1253370)))))))))

(declare-fun b!3626322 () Bool)

(declare-fun res!1468053 () Bool)

(declare-fun e!2244608 () Bool)

(assert (=> b!3626322 (=> (not res!1468053) (not e!2244608))))

(assert (=> b!3626322 (= res!1468053 (isEmpty!22581 (tail!5615 lt!1253353)))))

(declare-fun b!3626323 () Bool)

(declare-fun e!2244611 () Bool)

(assert (=> b!3626323 (= e!2244610 e!2244611)))

(declare-fun c!627467 () Bool)

(assert (=> b!3626323 (= c!627467 ((_ is EmptyLang!10449) (regex!5690 (rule!8456 (_1!22168 lt!1253370)))))))

(declare-fun b!3626324 () Bool)

(declare-fun res!1468051 () Bool)

(declare-fun e!2244605 () Bool)

(assert (=> b!3626324 (=> res!1468051 e!2244605)))

(assert (=> b!3626324 (= res!1468051 e!2244608)))

(declare-fun res!1468048 () Bool)

(assert (=> b!3626324 (=> (not res!1468048) (not e!2244608))))

(assert (=> b!3626324 (= res!1468048 lt!1253651)))

(declare-fun b!3626325 () Bool)

(assert (=> b!3626325 (= e!2244611 (not lt!1253651))))

(declare-fun bm!262323 () Bool)

(declare-fun call!262328 () Bool)

(assert (=> bm!262323 (= call!262328 (isEmpty!22581 lt!1253353))))

(declare-fun b!3626326 () Bool)

(declare-fun e!2244606 () Bool)

(assert (=> b!3626326 (= e!2244606 e!2244607)))

(declare-fun res!1468047 () Bool)

(assert (=> b!3626326 (=> res!1468047 e!2244607)))

(assert (=> b!3626326 (= res!1468047 call!262328)))

(declare-fun b!3626327 () Bool)

(assert (=> b!3626327 (= e!2244609 (matchR!5018 (derivativeStep!3166 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) (head!7666 lt!1253353)) (tail!5615 lt!1253353)))))

(declare-fun b!3626328 () Bool)

(assert (=> b!3626328 (= e!2244609 (nullable!3617 (regex!5690 (rule!8456 (_1!22168 lt!1253370)))))))

(declare-fun b!3626329 () Bool)

(declare-fun res!1468050 () Bool)

(assert (=> b!3626329 (=> (not res!1468050) (not e!2244608))))

(assert (=> b!3626329 (= res!1468050 (not call!262328))))

(declare-fun b!3626330 () Bool)

(declare-fun res!1468046 () Bool)

(assert (=> b!3626330 (=> res!1468046 e!2244605)))

(assert (=> b!3626330 (= res!1468046 (not ((_ is ElementMatch!10449) (regex!5690 (rule!8456 (_1!22168 lt!1253370))))))))

(assert (=> b!3626330 (= e!2244611 e!2244605)))

(declare-fun b!3626331 () Bool)

(declare-fun res!1468052 () Bool)

(assert (=> b!3626331 (=> res!1468052 e!2244607)))

(assert (=> b!3626331 (= res!1468052 (not (isEmpty!22581 (tail!5615 lt!1253353))))))

(declare-fun b!3626332 () Bool)

(assert (=> b!3626332 (= e!2244608 (= (head!7666 lt!1253353) (c!627354 (regex!5690 (rule!8456 (_1!22168 lt!1253370))))))))

(declare-fun b!3626333 () Bool)

(assert (=> b!3626333 (= e!2244605 e!2244606)))

(declare-fun res!1468049 () Bool)

(assert (=> b!3626333 (=> (not res!1468049) (not e!2244606))))

(assert (=> b!3626333 (= res!1468049 (not lt!1253651))))

(declare-fun b!3626334 () Bool)

(assert (=> b!3626334 (= e!2244610 (= lt!1253651 call!262328))))

(assert (= (and d!1066758 c!627466) b!3626328))

(assert (= (and d!1066758 (not c!627466)) b!3626327))

(assert (= (and d!1066758 c!627468) b!3626334))

(assert (= (and d!1066758 (not c!627468)) b!3626323))

(assert (= (and b!3626323 c!627467) b!3626325))

(assert (= (and b!3626323 (not c!627467)) b!3626330))

(assert (= (and b!3626330 (not res!1468046)) b!3626324))

(assert (= (and b!3626324 res!1468048) b!3626329))

(assert (= (and b!3626329 res!1468050) b!3626322))

(assert (= (and b!3626322 res!1468053) b!3626332))

(assert (= (and b!3626324 (not res!1468051)) b!3626333))

(assert (= (and b!3626333 res!1468049) b!3626326))

(assert (= (and b!3626326 (not res!1468047)) b!3626331))

(assert (= (and b!3626331 (not res!1468052)) b!3626321))

(assert (= (or b!3626334 b!3626326 b!3626329) bm!262323))

(declare-fun m!4127103 () Bool)

(assert (=> bm!262323 m!4127103))

(assert (=> b!3626332 m!4126333))

(assert (=> b!3626321 m!4126333))

(assert (=> b!3626331 m!4126571))

(assert (=> b!3626331 m!4126571))

(declare-fun m!4127105 () Bool)

(assert (=> b!3626331 m!4127105))

(declare-fun m!4127107 () Bool)

(assert (=> b!3626328 m!4127107))

(assert (=> d!1066758 m!4127103))

(declare-fun m!4127109 () Bool)

(assert (=> d!1066758 m!4127109))

(assert (=> b!3626322 m!4126571))

(assert (=> b!3626322 m!4126571))

(assert (=> b!3626322 m!4127105))

(assert (=> b!3626327 m!4126333))

(assert (=> b!3626327 m!4126333))

(declare-fun m!4127111 () Bool)

(assert (=> b!3626327 m!4127111))

(assert (=> b!3626327 m!4126571))

(assert (=> b!3626327 m!4127111))

(assert (=> b!3626327 m!4126571))

(declare-fun m!4127113 () Bool)

(assert (=> b!3626327 m!4127113))

(assert (=> b!3625715 d!1066758))

(declare-fun d!1066760 () Bool)

(assert (=> d!1066760 (= (isDefined!6242 lt!1253358) (not (isEmpty!22584 lt!1253358)))))

(declare-fun bs!571444 () Bool)

(assert (= bs!571444 d!1066760))

(declare-fun m!4127115 () Bool)

(assert (=> bs!571444 m!4127115))

(assert (=> b!3625716 d!1066760))

(declare-fun b!3626338 () Bool)

(declare-fun e!2244616 () Option!8010)

(declare-fun call!262329 () Option!8010)

(assert (=> b!3626338 (= e!2244616 call!262329)))

(declare-fun b!3626339 () Bool)

(declare-fun res!1468056 () Bool)

(declare-fun e!2244618 () Bool)

(assert (=> b!3626339 (=> (not res!1468056) (not e!2244618))))

(declare-fun lt!1253652 () Option!8010)

(assert (=> b!3626339 (= res!1468056 (= (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253652)))) (originalCharacters!6404 (_1!22168 (get!12466 lt!1253652)))))))

(declare-fun b!3626340 () Bool)

(declare-fun res!1468060 () Bool)

(assert (=> b!3626340 (=> (not res!1468060) (not e!2244618))))

(assert (=> b!3626340 (= res!1468060 (matchR!5018 (regex!5690 (rule!8456 (_1!22168 (get!12466 lt!1253652)))) (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253652))))))))

(declare-fun b!3626342 () Bool)

(declare-fun lt!1253654 () Option!8010)

(declare-fun lt!1253656 () Option!8010)

(assert (=> b!3626342 (= e!2244616 (ite (and ((_ is None!8009) lt!1253654) ((_ is None!8009) lt!1253656)) None!8009 (ite ((_ is None!8009) lt!1253656) lt!1253654 (ite ((_ is None!8009) lt!1253654) lt!1253656 (ite (>= (size!29135 (_1!22168 (v!37787 lt!1253654))) (size!29135 (_1!22168 (v!37787 lt!1253656)))) lt!1253654 lt!1253656)))))))

(assert (=> b!3626342 (= lt!1253654 call!262329)))

(assert (=> b!3626342 (= lt!1253656 (maxPrefix!2813 thiss!23823 (t!294652 rules!3307) lt!1253368))))

(declare-fun b!3626343 () Bool)

(assert (=> b!3626343 (= e!2244618 (contains!7446 rules!3307 (rule!8456 (_1!22168 (get!12466 lt!1253652)))))))

(declare-fun b!3626344 () Bool)

(declare-fun res!1468059 () Bool)

(assert (=> b!3626344 (=> (not res!1468059) (not e!2244618))))

(assert (=> b!3626344 (= res!1468059 (= (++!9506 (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253652)))) (_2!22168 (get!12466 lt!1253652))) lt!1253368))))

(declare-fun b!3626345 () Bool)

(declare-fun e!2244617 () Bool)

(assert (=> b!3626345 (= e!2244617 e!2244618)))

(declare-fun res!1468057 () Bool)

(assert (=> b!3626345 (=> (not res!1468057) (not e!2244618))))

(assert (=> b!3626345 (= res!1468057 (isDefined!6242 lt!1253652))))

(declare-fun bm!262324 () Bool)

(assert (=> bm!262324 (= call!262329 (maxPrefixOneRule!1953 thiss!23823 (h!43613 rules!3307) lt!1253368))))

(declare-fun b!3626346 () Bool)

(declare-fun res!1468058 () Bool)

(assert (=> b!3626346 (=> (not res!1468058) (not e!2244618))))

(assert (=> b!3626346 (= res!1468058 (= (value!182625 (_1!22168 (get!12466 lt!1253652))) (apply!9192 (transformation!5690 (rule!8456 (_1!22168 (get!12466 lt!1253652)))) (seqFromList!4239 (originalCharacters!6404 (_1!22168 (get!12466 lt!1253652)))))))))

(declare-fun b!3626341 () Bool)

(declare-fun res!1468054 () Bool)

(assert (=> b!3626341 (=> (not res!1468054) (not e!2244618))))

(assert (=> b!3626341 (= res!1468054 (< (size!29137 (_2!22168 (get!12466 lt!1253652))) (size!29137 lt!1253368)))))

(declare-fun d!1066762 () Bool)

(assert (=> d!1066762 e!2244617))

(declare-fun res!1468055 () Bool)

(assert (=> d!1066762 (=> res!1468055 e!2244617)))

(assert (=> d!1066762 (= res!1468055 (isEmpty!22584 lt!1253652))))

(assert (=> d!1066762 (= lt!1253652 e!2244616)))

(declare-fun c!627469 () Bool)

(assert (=> d!1066762 (= c!627469 (and ((_ is Cons!38193) rules!3307) ((_ is Nil!38193) (t!294652 rules!3307))))))

(declare-fun lt!1253655 () Unit!54946)

(declare-fun lt!1253653 () Unit!54946)

(assert (=> d!1066762 (= lt!1253655 lt!1253653)))

(assert (=> d!1066762 (isPrefix!3053 lt!1253368 lt!1253368)))

(assert (=> d!1066762 (= lt!1253653 (lemmaIsPrefixRefl!1936 lt!1253368 lt!1253368))))

(assert (=> d!1066762 (rulesValidInductive!2001 thiss!23823 rules!3307)))

(assert (=> d!1066762 (= (maxPrefix!2813 thiss!23823 rules!3307 lt!1253368) lt!1253652)))

(assert (= (and d!1066762 c!627469) b!3626338))

(assert (= (and d!1066762 (not c!627469)) b!3626342))

(assert (= (or b!3626338 b!3626342) bm!262324))

(assert (= (and d!1066762 (not res!1468055)) b!3626345))

(assert (= (and b!3626345 res!1468057) b!3626339))

(assert (= (and b!3626339 res!1468056) b!3626341))

(assert (= (and b!3626341 res!1468054) b!3626344))

(assert (= (and b!3626344 res!1468059) b!3626346))

(assert (= (and b!3626346 res!1468058) b!3626340))

(assert (= (and b!3626340 res!1468060) b!3626343))

(declare-fun m!4127121 () Bool)

(assert (=> b!3626343 m!4127121))

(declare-fun m!4127123 () Bool)

(assert (=> b!3626343 m!4127123))

(assert (=> b!3626340 m!4127121))

(declare-fun m!4127125 () Bool)

(assert (=> b!3626340 m!4127125))

(assert (=> b!3626340 m!4127125))

(declare-fun m!4127127 () Bool)

(assert (=> b!3626340 m!4127127))

(assert (=> b!3626340 m!4127127))

(declare-fun m!4127129 () Bool)

(assert (=> b!3626340 m!4127129))

(assert (=> b!3626341 m!4127121))

(declare-fun m!4127131 () Bool)

(assert (=> b!3626341 m!4127131))

(assert (=> b!3626341 m!4126713))

(assert (=> b!3626344 m!4127121))

(assert (=> b!3626344 m!4127125))

(assert (=> b!3626344 m!4127125))

(assert (=> b!3626344 m!4127127))

(assert (=> b!3626344 m!4127127))

(declare-fun m!4127133 () Bool)

(assert (=> b!3626344 m!4127133))

(declare-fun m!4127135 () Bool)

(assert (=> d!1066762 m!4127135))

(declare-fun m!4127137 () Bool)

(assert (=> d!1066762 m!4127137))

(declare-fun m!4127139 () Bool)

(assert (=> d!1066762 m!4127139))

(assert (=> d!1066762 m!4126861))

(declare-fun m!4127141 () Bool)

(assert (=> bm!262324 m!4127141))

(assert (=> b!3626339 m!4127121))

(assert (=> b!3626339 m!4127125))

(assert (=> b!3626339 m!4127125))

(assert (=> b!3626339 m!4127127))

(declare-fun m!4127143 () Bool)

(assert (=> b!3626342 m!4127143))

(assert (=> b!3626346 m!4127121))

(declare-fun m!4127145 () Bool)

(assert (=> b!3626346 m!4127145))

(assert (=> b!3626346 m!4127145))

(declare-fun m!4127147 () Bool)

(assert (=> b!3626346 m!4127147))

(declare-fun m!4127149 () Bool)

(assert (=> b!3626345 m!4127149))

(assert (=> b!3625716 d!1066762))

(declare-fun d!1066764 () Bool)

(assert (=> d!1066764 (= (list!14106 (charsOf!3704 token!511)) (list!14109 (c!627355 (charsOf!3704 token!511))))))

(declare-fun bs!571445 () Bool)

(assert (= bs!571445 d!1066764))

(declare-fun m!4127151 () Bool)

(assert (=> bs!571445 m!4127151))

(assert (=> b!3625716 d!1066764))

(declare-fun d!1066766 () Bool)

(declare-fun lt!1253657 () BalanceConc!22912)

(assert (=> d!1066766 (= (list!14106 lt!1253657) (originalCharacters!6404 token!511))))

(assert (=> d!1066766 (= lt!1253657 (dynLambda!16538 (toChars!7837 (transformation!5690 (rule!8456 token!511))) (value!182625 token!511)))))

(assert (=> d!1066766 (= (charsOf!3704 token!511) lt!1253657)))

(declare-fun b_lambda!107315 () Bool)

(assert (=> (not b_lambda!107315) (not d!1066766)))

(assert (=> d!1066766 t!294670))

(declare-fun b_and!265683 () Bool)

(assert (= b_and!265607 (and (=> t!294670 result!253558) b_and!265683)))

(assert (=> d!1066766 t!294672))

(declare-fun b_and!265685 () Bool)

(assert (= b_and!265609 (and (=> t!294672 result!253562) b_and!265685)))

(assert (=> d!1066766 t!294674))

(declare-fun b_and!265687 () Bool)

(assert (= b_and!265611 (and (=> t!294674 result!253564) b_and!265687)))

(assert (=> d!1066766 t!294676))

(declare-fun b_and!265689 () Bool)

(assert (= b_and!265613 (and (=> t!294676 result!253566) b_and!265689)))

(declare-fun m!4127153 () Bool)

(assert (=> d!1066766 m!4127153))

(assert (=> d!1066766 m!4126517))

(assert (=> b!3625716 d!1066766))

(declare-fun d!1066768 () Bool)

(assert (=> d!1066768 (= (_2!22168 lt!1253370) lt!1253367)))

(declare-fun lt!1253660 () Unit!54946)

(declare-fun choose!21292 (List!38316 List!38316 List!38316 List!38316 List!38316) Unit!54946)

(assert (=> d!1066768 (= lt!1253660 (choose!21292 lt!1253353 (_2!22168 lt!1253370) lt!1253353 lt!1253367 lt!1253366))))

(assert (=> d!1066768 (isPrefix!3053 lt!1253353 lt!1253366)))

(assert (=> d!1066768 (= (lemmaSamePrefixThenSameSuffix!1400 lt!1253353 (_2!22168 lt!1253370) lt!1253353 lt!1253367 lt!1253366) lt!1253660)))

(declare-fun bs!571446 () Bool)

(assert (= bs!571446 d!1066768))

(declare-fun m!4127155 () Bool)

(assert (=> bs!571446 m!4127155))

(assert (=> bs!571446 m!4126337))

(assert (=> b!3625717 d!1066768))

(declare-fun d!1066770 () Bool)

(assert (=> d!1066770 (= (seqFromList!4239 lt!1253353) (fromListB!1953 lt!1253353))))

(declare-fun bs!571447 () Bool)

(assert (= bs!571447 d!1066770))

(declare-fun m!4127157 () Bool)

(assert (=> bs!571447 m!4127157))

(assert (=> b!3625717 d!1066770))

(declare-fun b!3626392 () Bool)

(declare-fun res!1468080 () Bool)

(declare-fun e!2244635 () Bool)

(assert (=> b!3626392 (=> (not res!1468080) (not e!2244635))))

(declare-fun lt!1253674 () Option!8010)

(assert (=> b!3626392 (= res!1468080 (< (size!29137 (_2!22168 (get!12466 lt!1253674))) (size!29137 lt!1253366)))))

(declare-fun b!3626393 () Bool)

(declare-fun e!2244637 () Bool)

(assert (=> b!3626393 (= e!2244637 e!2244635)))

(declare-fun res!1468077 () Bool)

(assert (=> b!3626393 (=> (not res!1468077) (not e!2244635))))

(assert (=> b!3626393 (= res!1468077 (matchR!5018 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253674))))))))

(declare-fun b!3626394 () Bool)

(assert (=> b!3626394 (= e!2244635 (= (size!29135 (_1!22168 (get!12466 lt!1253674))) (size!29137 (originalCharacters!6404 (_1!22168 (get!12466 lt!1253674))))))))

(declare-fun b!3626395 () Bool)

(declare-fun res!1468075 () Bool)

(assert (=> b!3626395 (=> (not res!1468075) (not e!2244635))))

(assert (=> b!3626395 (= res!1468075 (= (value!182625 (_1!22168 (get!12466 lt!1253674))) (apply!9192 (transformation!5690 (rule!8456 (_1!22168 (get!12466 lt!1253674)))) (seqFromList!4239 (originalCharacters!6404 (_1!22168 (get!12466 lt!1253674)))))))))

(declare-fun b!3626396 () Bool)

(declare-fun res!1468079 () Bool)

(assert (=> b!3626396 (=> (not res!1468079) (not e!2244635))))

(assert (=> b!3626396 (= res!1468079 (= (++!9506 (list!14106 (charsOf!3704 (_1!22168 (get!12466 lt!1253674)))) (_2!22168 (get!12466 lt!1253674))) lt!1253366))))

(declare-fun b!3626397 () Bool)

(declare-fun res!1468078 () Bool)

(assert (=> b!3626397 (=> (not res!1468078) (not e!2244635))))

(assert (=> b!3626397 (= res!1468078 (= (rule!8456 (_1!22168 (get!12466 lt!1253674))) (rule!8456 (_1!22168 lt!1253370))))))

(declare-fun b!3626398 () Bool)

(declare-fun e!2244636 () Option!8010)

(declare-datatypes ((tuple2!38076 0))(
  ( (tuple2!38077 (_1!22172 List!38316) (_2!22172 List!38316)) )
))
(declare-fun lt!1253673 () tuple2!38076)

(assert (=> b!3626398 (= e!2244636 (Some!8009 (tuple2!38069 (Token!10747 (apply!9192 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) (seqFromList!4239 (_1!22172 lt!1253673))) (rule!8456 (_1!22168 lt!1253370)) (size!29136 (seqFromList!4239 (_1!22172 lt!1253673))) (_1!22172 lt!1253673)) (_2!22172 lt!1253673))))))

(declare-fun lt!1253672 () Unit!54946)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!994 (Regex!10449 List!38316) Unit!54946)

(assert (=> b!3626398 (= lt!1253672 (longestMatchIsAcceptedByMatchOrIsEmpty!994 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253366))))

(declare-fun res!1468076 () Bool)

(declare-fun findLongestMatchInner!1021 (Regex!10449 List!38316 Int List!38316 List!38316 Int) tuple2!38076)

(assert (=> b!3626398 (= res!1468076 (isEmpty!22581 (_1!22172 (findLongestMatchInner!1021 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) Nil!38192 (size!29137 Nil!38192) lt!1253366 lt!1253366 (size!29137 lt!1253366)))))))

(declare-fun e!2244634 () Bool)

(assert (=> b!3626398 (=> res!1468076 e!2244634)))

(assert (=> b!3626398 e!2244634))

(declare-fun lt!1253675 () Unit!54946)

(assert (=> b!3626398 (= lt!1253675 lt!1253672)))

(declare-fun lt!1253671 () Unit!54946)

(assert (=> b!3626398 (= lt!1253671 (lemmaSemiInverse!1441 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) (seqFromList!4239 (_1!22172 lt!1253673))))))

(declare-fun b!3626399 () Bool)

(assert (=> b!3626399 (= e!2244636 None!8009)))

(declare-fun d!1066772 () Bool)

(assert (=> d!1066772 e!2244637))

(declare-fun res!1468081 () Bool)

(assert (=> d!1066772 (=> res!1468081 e!2244637)))

(assert (=> d!1066772 (= res!1468081 (isEmpty!22584 lt!1253674))))

(assert (=> d!1066772 (= lt!1253674 e!2244636)))

(declare-fun c!627472 () Bool)

(assert (=> d!1066772 (= c!627472 (isEmpty!22581 (_1!22172 lt!1253673)))))

(declare-fun findLongestMatch!936 (Regex!10449 List!38316) tuple2!38076)

(assert (=> d!1066772 (= lt!1253673 (findLongestMatch!936 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) lt!1253366))))

(assert (=> d!1066772 (ruleValid!1955 thiss!23823 (rule!8456 (_1!22168 lt!1253370)))))

(assert (=> d!1066772 (= (maxPrefixOneRule!1953 thiss!23823 (rule!8456 (_1!22168 lt!1253370)) lt!1253366) lt!1253674)))

(declare-fun b!3626400 () Bool)

(assert (=> b!3626400 (= e!2244634 (matchR!5018 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) (_1!22172 (findLongestMatchInner!1021 (regex!5690 (rule!8456 (_1!22168 lt!1253370))) Nil!38192 (size!29137 Nil!38192) lt!1253366 lt!1253366 (size!29137 lt!1253366)))))))

(assert (= (and d!1066772 c!627472) b!3626399))

(assert (= (and d!1066772 (not c!627472)) b!3626398))

(assert (= (and b!3626398 (not res!1468076)) b!3626400))

(assert (= (and d!1066772 (not res!1468081)) b!3626393))

(assert (= (and b!3626393 res!1468077) b!3626396))

(assert (= (and b!3626396 res!1468079) b!3626392))

(assert (= (and b!3626392 res!1468080) b!3626397))

(assert (= (and b!3626397 res!1468078) b!3626395))

(assert (= (and b!3626395 res!1468075) b!3626394))

(declare-fun m!4127159 () Bool)

(assert (=> b!3626400 m!4127159))

(assert (=> b!3626400 m!4126569))

(assert (=> b!3626400 m!4127159))

(assert (=> b!3626400 m!4126569))

(declare-fun m!4127161 () Bool)

(assert (=> b!3626400 m!4127161))

(declare-fun m!4127163 () Bool)

(assert (=> b!3626400 m!4127163))

(declare-fun m!4127165 () Bool)

(assert (=> b!3626393 m!4127165))

(declare-fun m!4127167 () Bool)

(assert (=> b!3626393 m!4127167))

(assert (=> b!3626393 m!4127167))

(declare-fun m!4127169 () Bool)

(assert (=> b!3626393 m!4127169))

(assert (=> b!3626393 m!4127169))

(declare-fun m!4127171 () Bool)

(assert (=> b!3626393 m!4127171))

(assert (=> b!3626395 m!4127165))

(declare-fun m!4127173 () Bool)

(assert (=> b!3626395 m!4127173))

(assert (=> b!3626395 m!4127173))

(declare-fun m!4127175 () Bool)

(assert (=> b!3626395 m!4127175))

(assert (=> b!3626396 m!4127165))

(assert (=> b!3626396 m!4127167))

(assert (=> b!3626396 m!4127167))

(assert (=> b!3626396 m!4127169))

(assert (=> b!3626396 m!4127169))

(declare-fun m!4127177 () Bool)

(assert (=> b!3626396 m!4127177))

(assert (=> b!3626397 m!4127165))

(assert (=> b!3626394 m!4127165))

(declare-fun m!4127179 () Bool)

(assert (=> b!3626394 m!4127179))

(assert (=> b!3626392 m!4127165))

(declare-fun m!4127181 () Bool)

(assert (=> b!3626392 m!4127181))

(assert (=> b!3626392 m!4126569))

(declare-fun m!4127183 () Bool)

(assert (=> d!1066772 m!4127183))

(declare-fun m!4127185 () Bool)

(assert (=> d!1066772 m!4127185))

(declare-fun m!4127187 () Bool)

(assert (=> d!1066772 m!4127187))

(declare-fun m!4127189 () Bool)

(assert (=> d!1066772 m!4127189))

(declare-fun m!4127191 () Bool)

(assert (=> b!3626398 m!4127191))

(declare-fun m!4127193 () Bool)

(assert (=> b!3626398 m!4127193))

(assert (=> b!3626398 m!4126569))

(assert (=> b!3626398 m!4127191))

(declare-fun m!4127195 () Bool)

(assert (=> b!3626398 m!4127195))

(assert (=> b!3626398 m!4127159))

(declare-fun m!4127197 () Bool)

(assert (=> b!3626398 m!4127197))

(assert (=> b!3626398 m!4127191))

(declare-fun m!4127199 () Bool)

(assert (=> b!3626398 m!4127199))

(assert (=> b!3626398 m!4127159))

(assert (=> b!3626398 m!4126569))

(assert (=> b!3626398 m!4127161))

(assert (=> b!3626398 m!4127191))

(declare-fun m!4127201 () Bool)

(assert (=> b!3626398 m!4127201))

(assert (=> b!3625717 d!1066772))

(declare-fun d!1066774 () Bool)

(assert (=> d!1066774 (= (apply!9192 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) (seqFromList!4239 lt!1253353)) (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (seqFromList!4239 lt!1253353)))))

(declare-fun b_lambda!107317 () Bool)

(assert (=> (not b_lambda!107317) (not d!1066774)))

(declare-fun t!294755 () Bool)

(declare-fun tb!208197 () Bool)

(assert (=> (and b!3625701 (= (toValue!7978 (transformation!5690 (rule!8456 token!511))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294755) tb!208197))

(declare-fun result!253652 () Bool)

(assert (=> tb!208197 (= result!253652 (inv!21 (dynLambda!16542 (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370)))) (seqFromList!4239 lt!1253353))))))

(declare-fun m!4127203 () Bool)

(assert (=> tb!208197 m!4127203))

(assert (=> d!1066774 t!294755))

(declare-fun b_and!265691 () Bool)

(assert (= b_and!265671 (and (=> t!294755 result!253652) b_and!265691)))

(declare-fun t!294757 () Bool)

(declare-fun tb!208199 () Bool)

(assert (=> (and b!3625731 (= (toValue!7978 (transformation!5690 rule!403)) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294757) tb!208199))

(declare-fun result!253654 () Bool)

(assert (= result!253654 result!253652))

(assert (=> d!1066774 t!294757))

(declare-fun b_and!265693 () Bool)

(assert (= b_and!265673 (and (=> t!294757 result!253654) b_and!265693)))

(declare-fun t!294759 () Bool)

(declare-fun tb!208201 () Bool)

(assert (=> (and b!3625725 (= (toValue!7978 (transformation!5690 anOtherTypeRule!33)) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294759) tb!208201))

(declare-fun result!253656 () Bool)

(assert (= result!253656 result!253652))

(assert (=> d!1066774 t!294759))

(declare-fun b_and!265695 () Bool)

(assert (= b_and!265675 (and (=> t!294759 result!253656) b_and!265695)))

(declare-fun tb!208203 () Bool)

(declare-fun t!294761 () Bool)

(assert (=> (and b!3625708 (= (toValue!7978 (transformation!5690 (h!43613 rules!3307))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294761) tb!208203))

(declare-fun result!253658 () Bool)

(assert (= result!253658 result!253652))

(assert (=> d!1066774 t!294761))

(declare-fun b_and!265697 () Bool)

(assert (= b_and!265677 (and (=> t!294761 result!253658) b_and!265697)))

(assert (=> d!1066774 m!4126317))

(declare-fun m!4127205 () Bool)

(assert (=> d!1066774 m!4127205))

(assert (=> b!3625717 d!1066774))

(declare-fun d!1066776 () Bool)

(assert (=> d!1066776 (= (maxPrefixOneRule!1953 thiss!23823 (rule!8456 (_1!22168 lt!1253370)) lt!1253366) (Some!8009 (tuple2!38069 (Token!10747 (apply!9192 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))) (seqFromList!4239 lt!1253353)) (rule!8456 (_1!22168 lt!1253370)) (size!29137 lt!1253353) lt!1253353) (_2!22168 lt!1253370))))))

(declare-fun lt!1253678 () Unit!54946)

(declare-fun choose!21294 (LexerInterface!5279 List!38317 List!38316 List!38316 List!38316 Rule!11180) Unit!54946)

(assert (=> d!1066776 (= lt!1253678 (choose!21294 thiss!23823 rules!3307 lt!1253353 lt!1253366 (_2!22168 lt!1253370) (rule!8456 (_1!22168 lt!1253370))))))

(assert (=> d!1066776 (not (isEmpty!22580 rules!3307))))

(assert (=> d!1066776 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1021 thiss!23823 rules!3307 lt!1253353 lt!1253366 (_2!22168 lt!1253370) (rule!8456 (_1!22168 lt!1253370))) lt!1253678)))

(declare-fun bs!571448 () Bool)

(assert (= bs!571448 d!1066776))

(assert (=> bs!571448 m!4126315))

(declare-fun m!4127207 () Bool)

(assert (=> bs!571448 m!4127207))

(assert (=> bs!571448 m!4126323))

(assert (=> bs!571448 m!4126317))

(assert (=> bs!571448 m!4126317))

(assert (=> bs!571448 m!4126319))

(assert (=> bs!571448 m!4126301))

(assert (=> b!3625717 d!1066776))

(declare-fun d!1066778 () Bool)

(declare-fun lt!1253681 () List!38316)

(assert (=> d!1066778 (= (++!9506 lt!1253353 lt!1253681) lt!1253366)))

(declare-fun e!2244641 () List!38316)

(assert (=> d!1066778 (= lt!1253681 e!2244641)))

(declare-fun c!627475 () Bool)

(assert (=> d!1066778 (= c!627475 ((_ is Cons!38192) lt!1253353))))

(assert (=> d!1066778 (>= (size!29137 lt!1253366) (size!29137 lt!1253353))))

(assert (=> d!1066778 (= (getSuffix!1620 lt!1253366 lt!1253353) lt!1253681)))

(declare-fun b!3626405 () Bool)

(assert (=> b!3626405 (= e!2244641 (getSuffix!1620 (tail!5615 lt!1253366) (t!294651 lt!1253353)))))

(declare-fun b!3626406 () Bool)

(assert (=> b!3626406 (= e!2244641 lt!1253366)))

(assert (= (and d!1066778 c!627475) b!3626405))

(assert (= (and d!1066778 (not c!627475)) b!3626406))

(declare-fun m!4127209 () Bool)

(assert (=> d!1066778 m!4127209))

(assert (=> d!1066778 m!4126569))

(assert (=> d!1066778 m!4126315))

(assert (=> b!3626405 m!4126573))

(assert (=> b!3626405 m!4126573))

(declare-fun m!4127211 () Bool)

(assert (=> b!3626405 m!4127211))

(assert (=> b!3625717 d!1066778))

(declare-fun d!1066780 () Bool)

(declare-fun lt!1253684 () Int)

(assert (=> d!1066780 (>= lt!1253684 0)))

(declare-fun e!2244644 () Int)

(assert (=> d!1066780 (= lt!1253684 e!2244644)))

(declare-fun c!627478 () Bool)

(assert (=> d!1066780 (= c!627478 ((_ is Nil!38192) lt!1253353))))

(assert (=> d!1066780 (= (size!29137 lt!1253353) lt!1253684)))

(declare-fun b!3626411 () Bool)

(assert (=> b!3626411 (= e!2244644 0)))

(declare-fun b!3626412 () Bool)

(assert (=> b!3626412 (= e!2244644 (+ 1 (size!29137 (t!294651 lt!1253353))))))

(assert (= (and d!1066780 c!627478) b!3626411))

(assert (= (and d!1066780 (not c!627478)) b!3626412))

(declare-fun m!4127213 () Bool)

(assert (=> b!3626412 m!4127213))

(assert (=> b!3625717 d!1066780))

(declare-fun d!1066782 () Bool)

(assert (=> d!1066782 (= (isEmpty!22581 (_2!22168 lt!1253356)) ((_ is Nil!38192) (_2!22168 lt!1253356)))))

(assert (=> b!3625720 d!1066782))

(declare-fun d!1066784 () Bool)

(declare-fun lt!1253685 () Bool)

(assert (=> d!1066784 (= lt!1253685 (select (content!5473 rules!3307) rule!403))))

(declare-fun e!2244645 () Bool)

(assert (=> d!1066784 (= lt!1253685 e!2244645)))

(declare-fun res!1468082 () Bool)

(assert (=> d!1066784 (=> (not res!1468082) (not e!2244645))))

(assert (=> d!1066784 (= res!1468082 ((_ is Cons!38193) rules!3307))))

(assert (=> d!1066784 (= (contains!7446 rules!3307 rule!403) lt!1253685)))

(declare-fun b!3626413 () Bool)

(declare-fun e!2244646 () Bool)

(assert (=> b!3626413 (= e!2244645 e!2244646)))

(declare-fun res!1468083 () Bool)

(assert (=> b!3626413 (=> res!1468083 e!2244646)))

(assert (=> b!3626413 (= res!1468083 (= (h!43613 rules!3307) rule!403))))

(declare-fun b!3626414 () Bool)

(assert (=> b!3626414 (= e!2244646 (contains!7446 (t!294652 rules!3307) rule!403))))

(assert (= (and d!1066784 res!1468082) b!3626413))

(assert (= (and b!3626413 (not res!1468083)) b!3626414))

(assert (=> d!1066784 m!4127015))

(declare-fun m!4127215 () Bool)

(assert (=> d!1066784 m!4127215))

(declare-fun m!4127217 () Bool)

(assert (=> b!3626414 m!4127217))

(assert (=> b!3625721 d!1066784))

(declare-fun d!1066786 () Bool)

(assert (=> d!1066786 (= (inv!51595 (tag!6414 anOtherTypeRule!33)) (= (mod (str.len (value!182599 (tag!6414 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3625719 d!1066786))

(declare-fun d!1066788 () Bool)

(declare-fun res!1468084 () Bool)

(declare-fun e!2244647 () Bool)

(assert (=> d!1066788 (=> (not res!1468084) (not e!2244647))))

(assert (=> d!1066788 (= res!1468084 (semiInverseModEq!2414 (toChars!7837 (transformation!5690 anOtherTypeRule!33)) (toValue!7978 (transformation!5690 anOtherTypeRule!33))))))

(assert (=> d!1066788 (= (inv!51598 (transformation!5690 anOtherTypeRule!33)) e!2244647)))

(declare-fun b!3626415 () Bool)

(assert (=> b!3626415 (= e!2244647 (equivClasses!2313 (toChars!7837 (transformation!5690 anOtherTypeRule!33)) (toValue!7978 (transformation!5690 anOtherTypeRule!33))))))

(assert (= (and d!1066788 res!1468084) b!3626415))

(declare-fun m!4127219 () Bool)

(assert (=> d!1066788 m!4127219))

(declare-fun m!4127221 () Bool)

(assert (=> b!3626415 m!4127221))

(assert (=> b!3625719 d!1066788))

(declare-fun d!1066790 () Bool)

(declare-fun lt!1253686 () Bool)

(assert (=> d!1066790 (= lt!1253686 (select (content!5472 lt!1253368) lt!1253371))))

(declare-fun e!2244649 () Bool)

(assert (=> d!1066790 (= lt!1253686 e!2244649)))

(declare-fun res!1468085 () Bool)

(assert (=> d!1066790 (=> (not res!1468085) (not e!2244649))))

(assert (=> d!1066790 (= res!1468085 ((_ is Cons!38192) lt!1253368))))

(assert (=> d!1066790 (= (contains!7445 lt!1253368 lt!1253371) lt!1253686)))

(declare-fun b!3626416 () Bool)

(declare-fun e!2244648 () Bool)

(assert (=> b!3626416 (= e!2244649 e!2244648)))

(declare-fun res!1468086 () Bool)

(assert (=> b!3626416 (=> res!1468086 e!2244648)))

(assert (=> b!3626416 (= res!1468086 (= (h!43612 lt!1253368) lt!1253371))))

(declare-fun b!3626417 () Bool)

(assert (=> b!3626417 (= e!2244648 (contains!7445 (t!294651 lt!1253368) lt!1253371))))

(assert (= (and d!1066790 res!1468085) b!3626416))

(assert (= (and b!3626416 (not res!1468086)) b!3626417))

(assert (=> d!1066790 m!4126719))

(declare-fun m!4127223 () Bool)

(assert (=> d!1066790 m!4127223))

(declare-fun m!4127225 () Bool)

(assert (=> b!3626417 m!4127225))

(assert (=> b!3625702 d!1066790))

(declare-fun d!1066792 () Bool)

(declare-fun lt!1253687 () Bool)

(assert (=> d!1066792 (= lt!1253687 (select (content!5472 (usedCharacters!904 (regex!5690 anOtherTypeRule!33))) lt!1253372))))

(declare-fun e!2244651 () Bool)

(assert (=> d!1066792 (= lt!1253687 e!2244651)))

(declare-fun res!1468087 () Bool)

(assert (=> d!1066792 (=> (not res!1468087) (not e!2244651))))

(assert (=> d!1066792 (= res!1468087 ((_ is Cons!38192) (usedCharacters!904 (regex!5690 anOtherTypeRule!33))))))

(assert (=> d!1066792 (= (contains!7445 (usedCharacters!904 (regex!5690 anOtherTypeRule!33)) lt!1253372) lt!1253687)))

(declare-fun b!3626418 () Bool)

(declare-fun e!2244650 () Bool)

(assert (=> b!3626418 (= e!2244651 e!2244650)))

(declare-fun res!1468088 () Bool)

(assert (=> b!3626418 (=> res!1468088 e!2244650)))

(assert (=> b!3626418 (= res!1468088 (= (h!43612 (usedCharacters!904 (regex!5690 anOtherTypeRule!33))) lt!1253372))))

(declare-fun b!3626419 () Bool)

(assert (=> b!3626419 (= e!2244650 (contains!7445 (t!294651 (usedCharacters!904 (regex!5690 anOtherTypeRule!33))) lt!1253372))))

(assert (= (and d!1066792 res!1468087) b!3626418))

(assert (= (and b!3626418 (not res!1468088)) b!3626419))

(assert (=> d!1066792 m!4126379))

(declare-fun m!4127227 () Bool)

(assert (=> d!1066792 m!4127227))

(declare-fun m!4127229 () Bool)

(assert (=> d!1066792 m!4127229))

(declare-fun m!4127231 () Bool)

(assert (=> b!3626419 m!4127231))

(assert (=> b!3625700 d!1066792))

(declare-fun b!3626420 () Bool)

(declare-fun e!2244655 () List!38316)

(declare-fun e!2244653 () List!38316)

(assert (=> b!3626420 (= e!2244655 e!2244653)))

(declare-fun c!627479 () Bool)

(assert (=> b!3626420 (= c!627479 ((_ is ElementMatch!10449) (regex!5690 anOtherTypeRule!33)))))

(declare-fun b!3626421 () Bool)

(declare-fun e!2244654 () List!38316)

(declare-fun call!262331 () List!38316)

(assert (=> b!3626421 (= e!2244654 call!262331)))

(declare-fun b!3626422 () Bool)

(assert (=> b!3626422 (= e!2244654 call!262331)))

(declare-fun c!627480 () Bool)

(declare-fun bm!262325 () Bool)

(declare-fun call!262333 () List!38316)

(declare-fun call!262332 () List!38316)

(assert (=> bm!262325 (= call!262331 (++!9506 (ite c!627480 call!262332 call!262333) (ite c!627480 call!262333 call!262332)))))

(declare-fun b!3626423 () Bool)

(assert (=> b!3626423 (= e!2244655 Nil!38192)))

(declare-fun b!3626424 () Bool)

(assert (=> b!3626424 (= e!2244653 (Cons!38192 (c!627354 (regex!5690 anOtherTypeRule!33)) Nil!38192))))

(declare-fun bm!262326 () Bool)

(assert (=> bm!262326 (= call!262333 (usedCharacters!904 (ite c!627480 (regTwo!21411 (regex!5690 anOtherTypeRule!33)) (regOne!21410 (regex!5690 anOtherTypeRule!33)))))))

(declare-fun b!3626425 () Bool)

(declare-fun e!2244652 () List!38316)

(declare-fun call!262330 () List!38316)

(assert (=> b!3626425 (= e!2244652 call!262330)))

(declare-fun d!1066794 () Bool)

(declare-fun c!627482 () Bool)

(assert (=> d!1066794 (= c!627482 (or ((_ is EmptyExpr!10449) (regex!5690 anOtherTypeRule!33)) ((_ is EmptyLang!10449) (regex!5690 anOtherTypeRule!33))))))

(assert (=> d!1066794 (= (usedCharacters!904 (regex!5690 anOtherTypeRule!33)) e!2244655)))

(declare-fun b!3626426 () Bool)

(assert (=> b!3626426 (= e!2244652 e!2244654)))

(assert (=> b!3626426 (= c!627480 ((_ is Union!10449) (regex!5690 anOtherTypeRule!33)))))

(declare-fun b!3626427 () Bool)

(declare-fun c!627481 () Bool)

(assert (=> b!3626427 (= c!627481 ((_ is Star!10449) (regex!5690 anOtherTypeRule!33)))))

(assert (=> b!3626427 (= e!2244653 e!2244652)))

(declare-fun bm!262327 () Bool)

(assert (=> bm!262327 (= call!262330 (usedCharacters!904 (ite c!627481 (reg!10778 (regex!5690 anOtherTypeRule!33)) (ite c!627480 (regOne!21411 (regex!5690 anOtherTypeRule!33)) (regTwo!21410 (regex!5690 anOtherTypeRule!33))))))))

(declare-fun bm!262328 () Bool)

(assert (=> bm!262328 (= call!262332 call!262330)))

(assert (= (and d!1066794 c!627482) b!3626423))

(assert (= (and d!1066794 (not c!627482)) b!3626420))

(assert (= (and b!3626420 c!627479) b!3626424))

(assert (= (and b!3626420 (not c!627479)) b!3626427))

(assert (= (and b!3626427 c!627481) b!3626425))

(assert (= (and b!3626427 (not c!627481)) b!3626426))

(assert (= (and b!3626426 c!627480) b!3626421))

(assert (= (and b!3626426 (not c!627480)) b!3626422))

(assert (= (or b!3626421 b!3626422) bm!262328))

(assert (= (or b!3626421 b!3626422) bm!262326))

(assert (= (or b!3626421 b!3626422) bm!262325))

(assert (= (or b!3626425 bm!262328) bm!262327))

(declare-fun m!4127233 () Bool)

(assert (=> bm!262325 m!4127233))

(declare-fun m!4127235 () Bool)

(assert (=> bm!262326 m!4127235))

(declare-fun m!4127237 () Bool)

(assert (=> bm!262327 m!4127237))

(assert (=> b!3625700 d!1066794))

(declare-fun d!1066796 () Bool)

(declare-fun e!2244661 () Bool)

(assert (=> d!1066796 e!2244661))

(declare-fun c!627485 () Bool)

(assert (=> d!1066796 (= c!627485 ((_ is EmptyExpr!10449) (regex!5690 lt!1253373)))))

(declare-fun lt!1253688 () Bool)

(declare-fun e!2244660 () Bool)

(assert (=> d!1066796 (= lt!1253688 e!2244660)))

(declare-fun c!627483 () Bool)

(assert (=> d!1066796 (= c!627483 (isEmpty!22581 (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))))))

(assert (=> d!1066796 (validRegex!4779 (regex!5690 lt!1253373))))

(assert (=> d!1066796 (= (matchR!5018 (regex!5690 lt!1253373) (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))) lt!1253688)))

(declare-fun b!3626428 () Bool)

(declare-fun e!2244658 () Bool)

(assert (=> b!3626428 (= e!2244658 (not (= (head!7666 (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))) (c!627354 (regex!5690 lt!1253373)))))))

(declare-fun b!3626429 () Bool)

(declare-fun res!1468096 () Bool)

(declare-fun e!2244659 () Bool)

(assert (=> b!3626429 (=> (not res!1468096) (not e!2244659))))

(assert (=> b!3626429 (= res!1468096 (isEmpty!22581 (tail!5615 (list!14106 (charsOf!3704 (_1!22168 lt!1253370))))))))

(declare-fun b!3626430 () Bool)

(declare-fun e!2244662 () Bool)

(assert (=> b!3626430 (= e!2244661 e!2244662)))

(declare-fun c!627484 () Bool)

(assert (=> b!3626430 (= c!627484 ((_ is EmptyLang!10449) (regex!5690 lt!1253373)))))

(declare-fun b!3626431 () Bool)

(declare-fun res!1468094 () Bool)

(declare-fun e!2244656 () Bool)

(assert (=> b!3626431 (=> res!1468094 e!2244656)))

(assert (=> b!3626431 (= res!1468094 e!2244659)))

(declare-fun res!1468091 () Bool)

(assert (=> b!3626431 (=> (not res!1468091) (not e!2244659))))

(assert (=> b!3626431 (= res!1468091 lt!1253688)))

(declare-fun b!3626432 () Bool)

(assert (=> b!3626432 (= e!2244662 (not lt!1253688))))

(declare-fun bm!262329 () Bool)

(declare-fun call!262334 () Bool)

(assert (=> bm!262329 (= call!262334 (isEmpty!22581 (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))))))

(declare-fun b!3626433 () Bool)

(declare-fun e!2244657 () Bool)

(assert (=> b!3626433 (= e!2244657 e!2244658)))

(declare-fun res!1468090 () Bool)

(assert (=> b!3626433 (=> res!1468090 e!2244658)))

(assert (=> b!3626433 (= res!1468090 call!262334)))

(declare-fun b!3626434 () Bool)

(assert (=> b!3626434 (= e!2244660 (matchR!5018 (derivativeStep!3166 (regex!5690 lt!1253373) (head!7666 (list!14106 (charsOf!3704 (_1!22168 lt!1253370))))) (tail!5615 (list!14106 (charsOf!3704 (_1!22168 lt!1253370))))))))

(declare-fun b!3626435 () Bool)

(assert (=> b!3626435 (= e!2244660 (nullable!3617 (regex!5690 lt!1253373)))))

(declare-fun b!3626436 () Bool)

(declare-fun res!1468093 () Bool)

(assert (=> b!3626436 (=> (not res!1468093) (not e!2244659))))

(assert (=> b!3626436 (= res!1468093 (not call!262334))))

(declare-fun b!3626437 () Bool)

(declare-fun res!1468089 () Bool)

(assert (=> b!3626437 (=> res!1468089 e!2244656)))

(assert (=> b!3626437 (= res!1468089 (not ((_ is ElementMatch!10449) (regex!5690 lt!1253373))))))

(assert (=> b!3626437 (= e!2244662 e!2244656)))

(declare-fun b!3626438 () Bool)

(declare-fun res!1468095 () Bool)

(assert (=> b!3626438 (=> res!1468095 e!2244658)))

(assert (=> b!3626438 (= res!1468095 (not (isEmpty!22581 (tail!5615 (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))))))))

(declare-fun b!3626439 () Bool)

(assert (=> b!3626439 (= e!2244659 (= (head!7666 (list!14106 (charsOf!3704 (_1!22168 lt!1253370)))) (c!627354 (regex!5690 lt!1253373))))))

(declare-fun b!3626440 () Bool)

(assert (=> b!3626440 (= e!2244656 e!2244657)))

(declare-fun res!1468092 () Bool)

(assert (=> b!3626440 (=> (not res!1468092) (not e!2244657))))

(assert (=> b!3626440 (= res!1468092 (not lt!1253688))))

(declare-fun b!3626441 () Bool)

(assert (=> b!3626441 (= e!2244661 (= lt!1253688 call!262334))))

(assert (= (and d!1066796 c!627483) b!3626435))

(assert (= (and d!1066796 (not c!627483)) b!3626434))

(assert (= (and d!1066796 c!627485) b!3626441))

(assert (= (and d!1066796 (not c!627485)) b!3626430))

(assert (= (and b!3626430 c!627484) b!3626432))

(assert (= (and b!3626430 (not c!627484)) b!3626437))

(assert (= (and b!3626437 (not res!1468089)) b!3626431))

(assert (= (and b!3626431 res!1468091) b!3626436))

(assert (= (and b!3626436 res!1468093) b!3626429))

(assert (= (and b!3626429 res!1468096) b!3626439))

(assert (= (and b!3626431 (not res!1468094)) b!3626440))

(assert (= (and b!3626440 res!1468092) b!3626433))

(assert (= (and b!3626433 (not res!1468090)) b!3626438))

(assert (= (and b!3626438 (not res!1468095)) b!3626428))

(assert (= (or b!3626441 b!3626433 b!3626436) bm!262329))

(assert (=> bm!262329 m!4126283))

(declare-fun m!4127239 () Bool)

(assert (=> bm!262329 m!4127239))

(assert (=> b!3626439 m!4126283))

(declare-fun m!4127241 () Bool)

(assert (=> b!3626439 m!4127241))

(assert (=> b!3626428 m!4126283))

(assert (=> b!3626428 m!4127241))

(assert (=> b!3626438 m!4126283))

(declare-fun m!4127243 () Bool)

(assert (=> b!3626438 m!4127243))

(assert (=> b!3626438 m!4127243))

(declare-fun m!4127245 () Bool)

(assert (=> b!3626438 m!4127245))

(declare-fun m!4127247 () Bool)

(assert (=> b!3626435 m!4127247))

(assert (=> d!1066796 m!4126283))

(assert (=> d!1066796 m!4127239))

(declare-fun m!4127249 () Bool)

(assert (=> d!1066796 m!4127249))

(assert (=> b!3626429 m!4126283))

(assert (=> b!3626429 m!4127243))

(assert (=> b!3626429 m!4127243))

(assert (=> b!3626429 m!4127245))

(assert (=> b!3626434 m!4126283))

(assert (=> b!3626434 m!4127241))

(assert (=> b!3626434 m!4127241))

(declare-fun m!4127251 () Bool)

(assert (=> b!3626434 m!4127251))

(assert (=> b!3626434 m!4126283))

(assert (=> b!3626434 m!4127243))

(assert (=> b!3626434 m!4127251))

(assert (=> b!3626434 m!4127243))

(declare-fun m!4127253 () Bool)

(assert (=> b!3626434 m!4127253))

(assert (=> b!3625722 d!1066796))

(declare-fun d!1066798 () Bool)

(assert (=> d!1066798 (= (list!14106 (charsOf!3704 (_1!22168 lt!1253370))) (list!14109 (c!627355 (charsOf!3704 (_1!22168 lt!1253370)))))))

(declare-fun bs!571449 () Bool)

(assert (= bs!571449 d!1066798))

(declare-fun m!4127255 () Bool)

(assert (=> bs!571449 m!4127255))

(assert (=> b!3625722 d!1066798))

(assert (=> b!3625722 d!1066576))

(declare-fun d!1066800 () Bool)

(assert (=> d!1066800 (= (get!12465 lt!1253355) (v!37788 lt!1253355))))

(assert (=> b!3625722 d!1066800))

(declare-fun e!2244665 () Bool)

(assert (=> b!3625705 (= tp!1107178 e!2244665)))

(declare-fun b!3626455 () Bool)

(declare-fun tp!1107250 () Bool)

(declare-fun tp!1107249 () Bool)

(assert (=> b!3626455 (= e!2244665 (and tp!1107250 tp!1107249))))

(declare-fun b!3626454 () Bool)

(declare-fun tp!1107252 () Bool)

(assert (=> b!3626454 (= e!2244665 tp!1107252)))

(declare-fun b!3626453 () Bool)

(declare-fun tp!1107253 () Bool)

(declare-fun tp!1107251 () Bool)

(assert (=> b!3626453 (= e!2244665 (and tp!1107253 tp!1107251))))

(declare-fun b!3626452 () Bool)

(assert (=> b!3626452 (= e!2244665 tp_is_empty!17981)))

(assert (= (and b!3625705 ((_ is ElementMatch!10449) (regex!5690 (rule!8456 token!511)))) b!3626452))

(assert (= (and b!3625705 ((_ is Concat!16369) (regex!5690 (rule!8456 token!511)))) b!3626453))

(assert (= (and b!3625705 ((_ is Star!10449) (regex!5690 (rule!8456 token!511)))) b!3626454))

(assert (= (and b!3625705 ((_ is Union!10449) (regex!5690 (rule!8456 token!511)))) b!3626455))

(declare-fun b!3626460 () Bool)

(declare-fun e!2244668 () Bool)

(declare-fun tp!1107256 () Bool)

(assert (=> b!3626460 (= e!2244668 (and tp_is_empty!17981 tp!1107256))))

(assert (=> b!3625724 (= tp!1107173 e!2244668)))

(assert (= (and b!3625724 ((_ is Cons!38192) (originalCharacters!6404 token!511))) b!3626460))

(declare-fun e!2244669 () Bool)

(assert (=> b!3625719 (= tp!1107171 e!2244669)))

(declare-fun b!3626464 () Bool)

(declare-fun tp!1107258 () Bool)

(declare-fun tp!1107257 () Bool)

(assert (=> b!3626464 (= e!2244669 (and tp!1107258 tp!1107257))))

(declare-fun b!3626463 () Bool)

(declare-fun tp!1107260 () Bool)

(assert (=> b!3626463 (= e!2244669 tp!1107260)))

(declare-fun b!3626462 () Bool)

(declare-fun tp!1107261 () Bool)

(declare-fun tp!1107259 () Bool)

(assert (=> b!3626462 (= e!2244669 (and tp!1107261 tp!1107259))))

(declare-fun b!3626461 () Bool)

(assert (=> b!3626461 (= e!2244669 tp_is_empty!17981)))

(assert (= (and b!3625719 ((_ is ElementMatch!10449) (regex!5690 anOtherTypeRule!33))) b!3626461))

(assert (= (and b!3625719 ((_ is Concat!16369) (regex!5690 anOtherTypeRule!33))) b!3626462))

(assert (= (and b!3625719 ((_ is Star!10449) (regex!5690 anOtherTypeRule!33))) b!3626463))

(assert (= (and b!3625719 ((_ is Union!10449) (regex!5690 anOtherTypeRule!33))) b!3626464))

(declare-fun b!3626475 () Bool)

(declare-fun b_free!94669 () Bool)

(declare-fun b_next!95373 () Bool)

(assert (=> b!3626475 (= b_free!94669 (not b_next!95373))))

(declare-fun t!294763 () Bool)

(declare-fun tb!208205 () Bool)

(assert (=> (and b!3626475 (= (toValue!7978 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294763) tb!208205))

(declare-fun result!253666 () Bool)

(assert (= result!253666 result!253600))

(assert (=> d!1066742 t!294763))

(assert (=> d!1066714 t!294763))

(declare-fun t!294765 () Bool)

(declare-fun tb!208207 () Bool)

(assert (=> (and b!3626475 (= (toValue!7978 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294765) tb!208207))

(declare-fun result!253668 () Bool)

(assert (= result!253668 result!253620))

(assert (=> d!1066724 t!294765))

(declare-fun t!294767 () Bool)

(declare-fun tb!208209 () Bool)

(assert (=> (and b!3626475 (= (toValue!7978 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toValue!7978 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294767) tb!208209))

(declare-fun result!253670 () Bool)

(assert (= result!253670 result!253652))

(assert (=> d!1066774 t!294767))

(assert (=> d!1066724 t!294763))

(declare-fun tp!1107270 () Bool)

(declare-fun b_and!265699 () Bool)

(assert (=> b!3626475 (= tp!1107270 (and (=> t!294763 result!253666) (=> t!294765 result!253668) (=> t!294767 result!253670) b_and!265699))))

(declare-fun b_free!94671 () Bool)

(declare-fun b_next!95375 () Bool)

(assert (=> b!3626475 (= b_free!94671 (not b_next!95375))))

(declare-fun t!294769 () Bool)

(declare-fun tb!208211 () Bool)

(assert (=> (and b!3626475 (= (toChars!7837 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toChars!7837 (transformation!5690 (rule!8456 token!511)))) t!294769) tb!208211))

(declare-fun result!253672 () Bool)

(assert (= result!253672 result!253558))

(assert (=> b!3625878 t!294769))

(declare-fun t!294771 () Bool)

(declare-fun tb!208213 () Bool)

(assert (=> (and b!3626475 (= (toChars!7837 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294771) tb!208213))

(declare-fun result!253674 () Bool)

(assert (= result!253674 result!253568))

(assert (=> d!1066576 t!294771))

(declare-fun tb!208215 () Bool)

(declare-fun t!294773 () Bool)

(assert (=> (and b!3626475 (= (toChars!7837 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toChars!7837 (transformation!5690 (rule!8456 (_1!22168 lt!1253370))))) t!294773) tb!208215))

(declare-fun result!253676 () Bool)

(assert (= result!253676 result!253592))

(assert (=> d!1066714 t!294773))

(assert (=> d!1066766 t!294769))

(declare-fun tp!1107271 () Bool)

(declare-fun b_and!265701 () Bool)

(assert (=> b!3626475 (= tp!1107271 (and (=> t!294769 result!253672) (=> t!294771 result!253674) (=> t!294773 result!253676) b_and!265701))))

(declare-fun e!2244681 () Bool)

(assert (=> b!3626475 (= e!2244681 (and tp!1107270 tp!1107271))))

(declare-fun b!3626474 () Bool)

(declare-fun e!2244678 () Bool)

(declare-fun tp!1107272 () Bool)

(assert (=> b!3626474 (= e!2244678 (and tp!1107272 (inv!51595 (tag!6414 (h!43613 (t!294652 rules!3307)))) (inv!51598 (transformation!5690 (h!43613 (t!294652 rules!3307)))) e!2244681))))

(declare-fun b!3626473 () Bool)

(declare-fun e!2244680 () Bool)

(declare-fun tp!1107273 () Bool)

(assert (=> b!3626473 (= e!2244680 (and e!2244678 tp!1107273))))

(assert (=> b!3625730 (= tp!1107177 e!2244680)))

(assert (= b!3626474 b!3626475))

(assert (= b!3626473 b!3626474))

(assert (= (and b!3625730 ((_ is Cons!38193) (t!294652 rules!3307))) b!3626473))

(declare-fun m!4127257 () Bool)

(assert (=> b!3626474 m!4127257))

(declare-fun m!4127259 () Bool)

(assert (=> b!3626474 m!4127259))

(declare-fun e!2244682 () Bool)

(assert (=> b!3625712 (= tp!1107175 e!2244682)))

(declare-fun b!3626479 () Bool)

(declare-fun tp!1107275 () Bool)

(declare-fun tp!1107274 () Bool)

(assert (=> b!3626479 (= e!2244682 (and tp!1107275 tp!1107274))))

(declare-fun b!3626478 () Bool)

(declare-fun tp!1107277 () Bool)

(assert (=> b!3626478 (= e!2244682 tp!1107277)))

(declare-fun b!3626477 () Bool)

(declare-fun tp!1107278 () Bool)

(declare-fun tp!1107276 () Bool)

(assert (=> b!3626477 (= e!2244682 (and tp!1107278 tp!1107276))))

(declare-fun b!3626476 () Bool)

(assert (=> b!3626476 (= e!2244682 tp_is_empty!17981)))

(assert (= (and b!3625712 ((_ is ElementMatch!10449) (regex!5690 rule!403))) b!3626476))

(assert (= (and b!3625712 ((_ is Concat!16369) (regex!5690 rule!403))) b!3626477))

(assert (= (and b!3625712 ((_ is Star!10449) (regex!5690 rule!403))) b!3626478))

(assert (= (and b!3625712 ((_ is Union!10449) (regex!5690 rule!403))) b!3626479))

(declare-fun b!3626480 () Bool)

(declare-fun e!2244683 () Bool)

(declare-fun tp!1107279 () Bool)

(assert (=> b!3626480 (= e!2244683 (and tp_is_empty!17981 tp!1107279))))

(assert (=> b!3625723 (= tp!1107169 e!2244683)))

(assert (= (and b!3625723 ((_ is Cons!38192) (t!294651 suffix!1395))) b!3626480))

(declare-fun e!2244684 () Bool)

(assert (=> b!3625727 (= tp!1107176 e!2244684)))

(declare-fun b!3626484 () Bool)

(declare-fun tp!1107281 () Bool)

(declare-fun tp!1107280 () Bool)

(assert (=> b!3626484 (= e!2244684 (and tp!1107281 tp!1107280))))

(declare-fun b!3626483 () Bool)

(declare-fun tp!1107283 () Bool)

(assert (=> b!3626483 (= e!2244684 tp!1107283)))

(declare-fun b!3626482 () Bool)

(declare-fun tp!1107284 () Bool)

(declare-fun tp!1107282 () Bool)

(assert (=> b!3626482 (= e!2244684 (and tp!1107284 tp!1107282))))

(declare-fun b!3626481 () Bool)

(assert (=> b!3626481 (= e!2244684 tp_is_empty!17981)))

(assert (= (and b!3625727 ((_ is ElementMatch!10449) (regex!5690 (h!43613 rules!3307)))) b!3626481))

(assert (= (and b!3625727 ((_ is Concat!16369) (regex!5690 (h!43613 rules!3307)))) b!3626482))

(assert (= (and b!3625727 ((_ is Star!10449) (regex!5690 (h!43613 rules!3307)))) b!3626483))

(assert (= (and b!3625727 ((_ is Union!10449) (regex!5690 (h!43613 rules!3307)))) b!3626484))

(declare-fun b_lambda!107319 () Bool)

(assert (= b_lambda!107283 (or (and b!3625731 b_free!94655 (= (toChars!7837 (transformation!5690 rule!403)) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) (and b!3625708 b_free!94663 (= (toChars!7837 (transformation!5690 (h!43613 rules!3307))) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) (and b!3625701 b_free!94651) (and b!3626475 b_free!94671 (= (toChars!7837 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) (and b!3625725 b_free!94659 (= (toChars!7837 (transformation!5690 anOtherTypeRule!33)) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) b_lambda!107319)))

(declare-fun b_lambda!107321 () Bool)

(assert (= b_lambda!107315 (or (and b!3625731 b_free!94655 (= (toChars!7837 (transformation!5690 rule!403)) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) (and b!3625708 b_free!94663 (= (toChars!7837 (transformation!5690 (h!43613 rules!3307))) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) (and b!3625701 b_free!94651) (and b!3626475 b_free!94671 (= (toChars!7837 (transformation!5690 (h!43613 (t!294652 rules!3307)))) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) (and b!3625725 b_free!94659 (= (toChars!7837 (transformation!5690 anOtherTypeRule!33)) (toChars!7837 (transformation!5690 (rule!8456 token!511))))) b_lambda!107321)))

(check-sat (not b!3626346) (not b!3626405) b_and!265685 (not d!1066762) (not b!3626341) (not bm!262320) (not b!3626316) (not b!3626392) (not tb!208197) (not d!1066612) (not d!1066772) (not b!3626477) (not bm!262329) (not b!3626455) (not d!1066776) (not b!3626474) (not d!1066672) (not b!3625993) (not bm!262292) (not b!3626400) (not d!1066768) (not b!3626122) (not tb!208113) (not d!1066720) (not b!3626484) (not b!3626321) (not b!3626415) (not bm!262324) (not b!3626393) (not d!1066798) (not b!3626453) (not b!3625936) (not d!1066760) (not b_lambda!107285) (not d!1066758) (not b!3626113) (not b!3625901) (not b_next!95373) (not b!3625989) (not tb!208145) (not b!3626128) (not b!3626206) b_and!265689 (not b!3626270) (not b!3626396) (not b!3625884) (not d!1066724) b_and!265683 (not b!3625810) (not b!3626328) b_and!265697 (not d!1066578) (not b!3626120) (not b!3626462) (not b!3626428) (not d!1066706) (not d!1066560) (not tb!208171) (not b!3625885) (not d!1066598) (not b!3625935) b_and!265687 (not b_lambda!107293) (not b!3626345) (not d!1066784) (not b!3626211) (not b_lambda!107321) (not b!3625820) (not b!3626114) b_and!265701 (not bm!262325) (not b!3626480) (not b!3626121) (not b!3626419) (not b!3625879) (not b_lambda!107309) (not b_next!95375) (not b!3626242) (not b!3626434) (not d!1066702) (not b!3626109) (not b!3626332) (not b!3626327) (not b!3625992) (not b!3626460) b_and!265695 (not b!3626129) (not b!3626417) (not b!3625966) (not bm!262327) (not d!1066610) (not b!3626216) (not b!3626339) (not bm!262300) (not d!1066790) (not b!3626463) b_and!265693 (not b!3626036) (not b!3625799) (not d!1066766) (not d!1066778) (not b!3625813) (not d!1066650) (not b_next!95363) (not d!1066714) (not b!3626397) (not b_next!95367) (not b!3626322) (not tb!208153) (not d!1066700) (not b!3626482) (not b!3626340) (not d!1066654) (not b!3626250) (not b!3626112) (not d!1066648) (not b_next!95355) (not d!1066624) (not b!3626429) (not d!1066564) (not b_lambda!107319) (not b!3626260) (not d!1066580) (not b!3626435) (not b!3625878) (not b_lambda!107317) (not b_lambda!107295) (not b!3625965) (not b!3626331) (not d!1066606) (not b!3626037) (not b!3625811) (not b_lambda!107307) (not bm!262323) (not d!1066788) (not b_next!95353) (not d!1066764) (not b_next!95359) (not b!3626110) b_and!265699 b_and!265691 (not bm!262326) (not b!3626454) tp_is_empty!17981 (not b!3626215) (not b!3626115) (not b!3626130) (not b!3626414) (not d!1066726) (not b!3626303) (not tb!208121) (not d!1066750) (not d!1066576) (not d!1066746) (not b!3626245) (not b!3626483) (not b!3625934) (not b!3626398) (not b!3625988) (not b!3626108) (not b!3626464) (not d!1066732) (not b_next!95365) (not d!1066694) (not bm!262291) (not b!3626479) (not b_next!95357) (not b!3626343) (not b_next!95361) (not d!1066690) (not b!3626478) (not b!3625902) (not b_lambda!107303) (not b!3626205) (not d!1066770) (not b!3626395) (not b!3625795) (not bm!262293) (not d!1066616) (not b!3626111) (not b!3626412) (not d!1066570) (not b!3626394) (not b!3625987) (not b!3625796) (not b!3626035) (not b!3626439) (not b!3626342) (not b!3626473) (not b!3626344) (not b!3626438) (not d!1066796) (not b!3626212) (not d!1066792))
(check-sat b_and!265685 b_and!265697 b_and!265687 b_and!265695 b_and!265693 (not b_next!95355) (not b_next!95353) (not b_next!95373) b_and!265689 b_and!265683 b_and!265701 (not b_next!95375) (not b_next!95363) (not b_next!95367) (not b_next!95359) b_and!265699 b_and!265691 (not b_next!95365) (not b_next!95357) (not b_next!95361))
