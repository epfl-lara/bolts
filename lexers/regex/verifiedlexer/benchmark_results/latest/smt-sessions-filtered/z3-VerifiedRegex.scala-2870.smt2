; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167282 () Bool)

(assert start!167282)

(declare-fun b!1711094 () Bool)

(declare-fun b_free!46403 () Bool)

(declare-fun b_next!47107 () Bool)

(assert (=> b!1711094 (= b_free!46403 (not b_next!47107))))

(declare-fun tp!488994 () Bool)

(declare-fun b_and!123881 () Bool)

(assert (=> b!1711094 (= tp!488994 b_and!123881)))

(declare-fun b_free!46405 () Bool)

(declare-fun b_next!47109 () Bool)

(assert (=> b!1711094 (= b_free!46405 (not b_next!47109))))

(declare-fun tp!488992 () Bool)

(declare-fun b_and!123883 () Bool)

(assert (=> b!1711094 (= tp!488992 b_and!123883)))

(declare-fun b!1711096 () Bool)

(declare-fun b_free!46407 () Bool)

(declare-fun b_next!47111 () Bool)

(assert (=> b!1711096 (= b_free!46407 (not b_next!47111))))

(declare-fun tp!488998 () Bool)

(declare-fun b_and!123885 () Bool)

(assert (=> b!1711096 (= tp!488998 b_and!123885)))

(declare-fun b_free!46409 () Bool)

(declare-fun b_next!47113 () Bool)

(assert (=> b!1711096 (= b_free!46409 (not b_next!47113))))

(declare-fun tp!488989 () Bool)

(declare-fun b_and!123887 () Bool)

(assert (=> b!1711096 (= tp!488989 b_and!123887)))

(declare-fun b!1711095 () Bool)

(declare-fun b_free!46411 () Bool)

(declare-fun b_next!47115 () Bool)

(assert (=> b!1711095 (= b_free!46411 (not b_next!47115))))

(declare-fun tp!488990 () Bool)

(declare-fun b_and!123889 () Bool)

(assert (=> b!1711095 (= tp!488990 b_and!123889)))

(declare-fun b_free!46413 () Bool)

(declare-fun b_next!47117 () Bool)

(assert (=> b!1711095 (= b_free!46413 (not b_next!47117))))

(declare-fun tp!488993 () Bool)

(declare-fun b_and!123891 () Bool)

(assert (=> b!1711095 (= tp!488993 b_and!123891)))

(declare-fun res!767005 () Bool)

(declare-fun e!1094371 () Bool)

(assert (=> start!167282 (=> (not res!767005) (not e!1094371))))

(declare-datatypes ((LexerInterface!2930 0))(
  ( (LexerInterfaceExt!2927 (__x!12084 Int)) (Lexer!2928) )
))
(declare-fun thiss!24550 () LexerInterface!2930)

(get-info :version)

(assert (=> start!167282 (= res!767005 ((_ is Lexer!2928) thiss!24550))))

(assert (=> start!167282 e!1094371))

(declare-fun e!1094365 () Bool)

(assert (=> start!167282 e!1094365))

(declare-fun e!1094359 () Bool)

(assert (=> start!167282 e!1094359))

(assert (=> start!167282 true))

(declare-datatypes ((List!18751 0))(
  ( (Nil!18681) (Cons!18681 (h!24082 (_ BitVec 16)) (t!158298 List!18751)) )
))
(declare-datatypes ((TokenValue!3391 0))(
  ( (FloatLiteralValue!6782 (text!24182 List!18751)) (TokenValueExt!3390 (__x!12085 Int)) (Broken!16955 (value!103725 List!18751)) (Object!3460) (End!3391) (Def!3391) (Underscore!3391) (Match!3391) (Else!3391) (Error!3391) (Case!3391) (If!3391) (Extends!3391) (Abstract!3391) (Class!3391) (Val!3391) (DelimiterValue!6782 (del!3451 List!18751)) (KeywordValue!3397 (value!103726 List!18751)) (CommentValue!6782 (value!103727 List!18751)) (WhitespaceValue!6782 (value!103728 List!18751)) (IndentationValue!3391 (value!103729 List!18751)) (String!21286) (Int32!3391) (Broken!16956 (value!103730 List!18751)) (Boolean!3392) (Unit!32512) (OperatorValue!3394 (op!3451 List!18751)) (IdentifierValue!6782 (value!103731 List!18751)) (IdentifierValue!6783 (value!103732 List!18751)) (WhitespaceValue!6783 (value!103733 List!18751)) (True!6782) (False!6782) (Broken!16957 (value!103734 List!18751)) (Broken!16958 (value!103735 List!18751)) (True!6783) (RightBrace!3391) (RightBracket!3391) (Colon!3391) (Null!3391) (Comma!3391) (LeftBracket!3391) (False!6783) (LeftBrace!3391) (ImaginaryLiteralValue!3391 (text!24183 List!18751)) (StringLiteralValue!10173 (value!103736 List!18751)) (EOFValue!3391 (value!103737 List!18751)) (IdentValue!3391 (value!103738 List!18751)) (DelimiterValue!6783 (value!103739 List!18751)) (DedentValue!3391 (value!103740 List!18751)) (NewLineValue!3391 (value!103741 List!18751)) (IntegerValue!10173 (value!103742 (_ BitVec 32)) (text!24184 List!18751)) (IntegerValue!10174 (value!103743 Int) (text!24185 List!18751)) (Times!3391) (Or!3391) (Equal!3391) (Minus!3391) (Broken!16959 (value!103744 List!18751)) (And!3391) (Div!3391) (LessEqual!3391) (Mod!3391) (Concat!8020) (Not!3391) (Plus!3391) (SpaceValue!3391 (value!103745 List!18751)) (IntegerValue!10175 (value!103746 Int) (text!24186 List!18751)) (StringLiteralValue!10174 (text!24187 List!18751)) (FloatLiteralValue!6783 (text!24188 List!18751)) (BytesLiteralValue!3391 (value!103747 List!18751)) (CommentValue!6783 (value!103748 List!18751)) (StringLiteralValue!10175 (value!103749 List!18751)) (ErrorTokenValue!3391 (msg!3452 List!18751)) )
))
(declare-datatypes ((C!9432 0))(
  ( (C!9433 (val!5312 Int)) )
))
(declare-datatypes ((List!18752 0))(
  ( (Nil!18682) (Cons!18682 (h!24083 C!9432) (t!158299 List!18752)) )
))
(declare-datatypes ((Regex!4629 0))(
  ( (ElementMatch!4629 (c!280380 C!9432)) (Concat!8021 (regOne!9770 Regex!4629) (regTwo!9770 Regex!4629)) (EmptyExpr!4629) (Star!4629 (reg!4958 Regex!4629)) (EmptyLang!4629) (Union!4629 (regOne!9771 Regex!4629) (regTwo!9771 Regex!4629)) )
))
(declare-datatypes ((String!21287 0))(
  ( (String!21288 (value!103750 String)) )
))
(declare-datatypes ((IArray!12431 0))(
  ( (IArray!12432 (innerList!6273 List!18752)) )
))
(declare-datatypes ((Conc!6213 0))(
  ( (Node!6213 (left!14897 Conc!6213) (right!15227 Conc!6213) (csize!12656 Int) (cheight!6424 Int)) (Leaf!9084 (xs!9089 IArray!12431) (csize!12657 Int)) (Empty!6213) )
))
(declare-datatypes ((BalanceConc!12370 0))(
  ( (BalanceConc!12371 (c!280381 Conc!6213)) )
))
(declare-datatypes ((TokenValueInjection!6442 0))(
  ( (TokenValueInjection!6443 (toValue!4804 Int) (toChars!4663 Int)) )
))
(declare-datatypes ((Rule!6402 0))(
  ( (Rule!6403 (regex!3301 Regex!4629) (tag!3597 String!21287) (isSeparator!3301 Bool) (transformation!3301 TokenValueInjection!6442)) )
))
(declare-datatypes ((Token!6168 0))(
  ( (Token!6169 (value!103751 TokenValue!3391) (rule!5237 Rule!6402) (size!14860 Int) (originalCharacters!4115 List!18752)) )
))
(declare-fun token!523 () Token!6168)

(declare-fun e!1094368 () Bool)

(declare-fun inv!24100 (Token!6168) Bool)

(assert (=> start!167282 (and (inv!24100 token!523) e!1094368)))

(declare-fun e!1094360 () Bool)

(assert (=> start!167282 e!1094360))

(declare-fun b!1711091 () Bool)

(declare-fun e!1094366 () Bool)

(declare-fun e!1094364 () Bool)

(assert (=> b!1711091 (= e!1094366 (not e!1094364))))

(declare-fun res!767004 () Bool)

(assert (=> b!1711091 (=> res!767004 e!1094364)))

(declare-fun rule!422 () Rule!6402)

(declare-fun lt!653730 () List!18752)

(declare-fun matchR!2103 (Regex!4629 List!18752) Bool)

(assert (=> b!1711091 (= res!767004 (not (matchR!2103 (regex!3301 rule!422) lt!653730)))))

(declare-fun ruleValid!800 (LexerInterface!2930 Rule!6402) Bool)

(assert (=> b!1711091 (ruleValid!800 thiss!24550 rule!422)))

(declare-datatypes ((List!18753 0))(
  ( (Nil!18683) (Cons!18683 (h!24084 Rule!6402) (t!158300 List!18753)) )
))
(declare-fun rules!3447 () List!18753)

(declare-datatypes ((Unit!32513 0))(
  ( (Unit!32514) )
))
(declare-fun lt!653733 () Unit!32513)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!324 (LexerInterface!2930 Rule!6402 List!18753) Unit!32513)

(assert (=> b!1711091 (= lt!653733 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!324 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1711092 () Bool)

(declare-fun e!1094369 () Bool)

(assert (=> b!1711092 (= e!1094369 e!1094366)))

(declare-fun res!767009 () Bool)

(assert (=> b!1711092 (=> (not res!767009) (not e!1094366))))

(declare-datatypes ((tuple2!18402 0))(
  ( (tuple2!18403 (_1!10603 Token!6168) (_2!10603 List!18752)) )
))
(declare-fun lt!653728 () tuple2!18402)

(assert (=> b!1711092 (= res!767009 (= (_1!10603 lt!653728) token!523))))

(declare-datatypes ((Option!3627 0))(
  ( (None!3626) (Some!3626 (v!25013 tuple2!18402)) )
))
(declare-fun lt!653732 () Option!3627)

(declare-fun get!5495 (Option!3627) tuple2!18402)

(assert (=> b!1711092 (= lt!653728 (get!5495 lt!653732))))

(declare-fun b!1711093 () Bool)

(declare-fun lt!653727 () Option!3627)

(declare-fun isDefined!2970 (Option!3627) Bool)

(assert (=> b!1711093 (= e!1094364 (isDefined!2970 lt!653727))))

(declare-fun suffix!1421 () List!18752)

(declare-fun lt!653729 () Unit!32513)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!454 (LexerInterface!2930 List!18753 List!18752 List!18752) Unit!32513)

(assert (=> b!1711093 (= lt!653729 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!454 thiss!24550 rules!3447 lt!653730 suffix!1421))))

(declare-fun lt!653731 () List!18752)

(declare-fun maxPrefix!1484 (LexerInterface!2930 List!18753 List!18752) Option!3627)

(assert (=> b!1711093 (= lt!653727 (maxPrefix!1484 thiss!24550 rules!3447 lt!653731))))

(declare-fun isPrefix!1542 (List!18752 List!18752) Bool)

(assert (=> b!1711093 (isPrefix!1542 lt!653730 lt!653731)))

(declare-fun lt!653734 () Unit!32513)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1052 (List!18752 List!18752) Unit!32513)

(assert (=> b!1711093 (= lt!653734 (lemmaConcatTwoListThenFirstIsPrefix!1052 lt!653730 suffix!1421))))

(declare-fun ++!5126 (List!18752 List!18752) List!18752)

(assert (=> b!1711093 (= lt!653731 (++!5126 lt!653730 suffix!1421))))

(declare-fun e!1094367 () Bool)

(assert (=> b!1711094 (= e!1094367 (and tp!488994 tp!488992))))

(declare-fun e!1094356 () Bool)

(assert (=> b!1711095 (= e!1094356 (and tp!488990 tp!488993))))

(declare-fun e!1094358 () Bool)

(assert (=> b!1711096 (= e!1094358 (and tp!488998 tp!488989))))

(declare-fun b!1711097 () Bool)

(declare-fun res!767002 () Bool)

(assert (=> b!1711097 (=> (not res!767002) (not e!1094366))))

(declare-fun isEmpty!11737 (List!18752) Bool)

(assert (=> b!1711097 (= res!767002 (isEmpty!11737 (_2!10603 lt!653728)))))

(declare-fun b!1711098 () Bool)

(declare-fun res!767006 () Bool)

(assert (=> b!1711098 (=> res!767006 e!1094364)))

(assert (=> b!1711098 (= res!767006 (isEmpty!11737 suffix!1421))))

(declare-fun b!1711099 () Bool)

(declare-fun res!767003 () Bool)

(assert (=> b!1711099 (=> res!767003 e!1094364)))

(declare-fun prefixMatch!514 (Regex!4629 List!18752) Bool)

(declare-fun rulesRegex!659 (LexerInterface!2930 List!18753) Regex!4629)

(declare-fun head!3836 (List!18752) C!9432)

(assert (=> b!1711099 (= res!767003 (prefixMatch!514 (rulesRegex!659 thiss!24550 rules!3447) (++!5126 lt!653730 (Cons!18682 (head!3836 suffix!1421) Nil!18682))))))

(declare-fun b!1711100 () Bool)

(declare-fun res!767010 () Bool)

(assert (=> b!1711100 (=> (not res!767010) (not e!1094371))))

(declare-fun contains!3321 (List!18753 Rule!6402) Bool)

(assert (=> b!1711100 (= res!767010 (contains!3321 rules!3447 rule!422))))

(declare-fun b!1711101 () Bool)

(assert (=> b!1711101 (= e!1094371 e!1094369)))

(declare-fun res!767008 () Bool)

(assert (=> b!1711101 (=> (not res!767008) (not e!1094369))))

(assert (=> b!1711101 (= res!767008 (isDefined!2970 lt!653732))))

(assert (=> b!1711101 (= lt!653732 (maxPrefix!1484 thiss!24550 rules!3447 lt!653730))))

(declare-fun list!7538 (BalanceConc!12370) List!18752)

(declare-fun charsOf!1950 (Token!6168) BalanceConc!12370)

(assert (=> b!1711101 (= lt!653730 (list!7538 (charsOf!1950 token!523)))))

(declare-fun e!1094363 () Bool)

(declare-fun b!1711102 () Bool)

(declare-fun tp!488995 () Bool)

(declare-fun inv!24097 (String!21287) Bool)

(declare-fun inv!24101 (TokenValueInjection!6442) Bool)

(assert (=> b!1711102 (= e!1094363 (and tp!488995 (inv!24097 (tag!3597 (h!24084 rules!3447))) (inv!24101 (transformation!3301 (h!24084 rules!3447))) e!1094367))))

(declare-fun b!1711103 () Bool)

(declare-fun res!767001 () Bool)

(assert (=> b!1711103 (=> (not res!767001) (not e!1094371))))

(declare-fun isEmpty!11738 (List!18753) Bool)

(assert (=> b!1711103 (= res!767001 (not (isEmpty!11738 rules!3447)))))

(declare-fun b!1711104 () Bool)

(declare-fun res!767007 () Bool)

(assert (=> b!1711104 (=> (not res!767007) (not e!1094366))))

(assert (=> b!1711104 (= res!767007 (= (rule!5237 token!523) rule!422))))

(declare-fun tp!488997 () Bool)

(declare-fun e!1094372 () Bool)

(declare-fun b!1711105 () Bool)

(declare-fun inv!21 (TokenValue!3391) Bool)

(assert (=> b!1711105 (= e!1094368 (and (inv!21 (value!103751 token!523)) e!1094372 tp!488997))))

(declare-fun tp!488996 () Bool)

(declare-fun b!1711106 () Bool)

(assert (=> b!1711106 (= e!1094372 (and tp!488996 (inv!24097 (tag!3597 (rule!5237 token!523))) (inv!24101 (transformation!3301 (rule!5237 token!523))) e!1094358))))

(declare-fun tp!488987 () Bool)

(declare-fun b!1711107 () Bool)

(assert (=> b!1711107 (= e!1094359 (and tp!488987 (inv!24097 (tag!3597 rule!422)) (inv!24101 (transformation!3301 rule!422)) e!1094356))))

(declare-fun b!1711108 () Bool)

(declare-fun tp_is_empty!7501 () Bool)

(declare-fun tp!488991 () Bool)

(assert (=> b!1711108 (= e!1094365 (and tp_is_empty!7501 tp!488991))))

(declare-fun b!1711109 () Bool)

(declare-fun res!767000 () Bool)

(assert (=> b!1711109 (=> (not res!767000) (not e!1094371))))

(declare-fun rulesInvariant!2599 (LexerInterface!2930 List!18753) Bool)

(assert (=> b!1711109 (= res!767000 (rulesInvariant!2599 thiss!24550 rules!3447))))

(declare-fun b!1711110 () Bool)

(declare-fun tp!488988 () Bool)

(assert (=> b!1711110 (= e!1094360 (and e!1094363 tp!488988))))

(assert (= (and start!167282 res!767005) b!1711103))

(assert (= (and b!1711103 res!767001) b!1711109))

(assert (= (and b!1711109 res!767000) b!1711100))

(assert (= (and b!1711100 res!767010) b!1711101))

(assert (= (and b!1711101 res!767008) b!1711092))

(assert (= (and b!1711092 res!767009) b!1711097))

(assert (= (and b!1711097 res!767002) b!1711104))

(assert (= (and b!1711104 res!767007) b!1711091))

(assert (= (and b!1711091 (not res!767004)) b!1711098))

(assert (= (and b!1711098 (not res!767006)) b!1711099))

(assert (= (and b!1711099 (not res!767003)) b!1711093))

(assert (= (and start!167282 ((_ is Cons!18682) suffix!1421)) b!1711108))

(assert (= b!1711107 b!1711095))

(assert (= start!167282 b!1711107))

(assert (= b!1711106 b!1711096))

(assert (= b!1711105 b!1711106))

(assert (= start!167282 b!1711105))

(assert (= b!1711102 b!1711094))

(assert (= b!1711110 b!1711102))

(assert (= (and start!167282 ((_ is Cons!18683) rules!3447)) b!1711110))

(declare-fun m!2114399 () Bool)

(assert (=> b!1711103 m!2114399))

(declare-fun m!2114401 () Bool)

(assert (=> b!1711100 m!2114401))

(declare-fun m!2114403 () Bool)

(assert (=> b!1711091 m!2114403))

(declare-fun m!2114405 () Bool)

(assert (=> b!1711091 m!2114405))

(declare-fun m!2114407 () Bool)

(assert (=> b!1711091 m!2114407))

(declare-fun m!2114409 () Bool)

(assert (=> b!1711107 m!2114409))

(declare-fun m!2114411 () Bool)

(assert (=> b!1711107 m!2114411))

(declare-fun m!2114413 () Bool)

(assert (=> b!1711106 m!2114413))

(declare-fun m!2114415 () Bool)

(assert (=> b!1711106 m!2114415))

(declare-fun m!2114417 () Bool)

(assert (=> b!1711105 m!2114417))

(declare-fun m!2114419 () Bool)

(assert (=> b!1711093 m!2114419))

(declare-fun m!2114421 () Bool)

(assert (=> b!1711093 m!2114421))

(declare-fun m!2114423 () Bool)

(assert (=> b!1711093 m!2114423))

(declare-fun m!2114425 () Bool)

(assert (=> b!1711093 m!2114425))

(declare-fun m!2114427 () Bool)

(assert (=> b!1711093 m!2114427))

(declare-fun m!2114429 () Bool)

(assert (=> b!1711093 m!2114429))

(declare-fun m!2114431 () Bool)

(assert (=> start!167282 m!2114431))

(declare-fun m!2114433 () Bool)

(assert (=> b!1711098 m!2114433))

(declare-fun m!2114435 () Bool)

(assert (=> b!1711097 m!2114435))

(declare-fun m!2114437 () Bool)

(assert (=> b!1711101 m!2114437))

(declare-fun m!2114439 () Bool)

(assert (=> b!1711101 m!2114439))

(declare-fun m!2114441 () Bool)

(assert (=> b!1711101 m!2114441))

(assert (=> b!1711101 m!2114441))

(declare-fun m!2114443 () Bool)

(assert (=> b!1711101 m!2114443))

(declare-fun m!2114445 () Bool)

(assert (=> b!1711109 m!2114445))

(declare-fun m!2114447 () Bool)

(assert (=> b!1711102 m!2114447))

(declare-fun m!2114449 () Bool)

(assert (=> b!1711102 m!2114449))

(declare-fun m!2114451 () Bool)

(assert (=> b!1711099 m!2114451))

(declare-fun m!2114453 () Bool)

(assert (=> b!1711099 m!2114453))

(declare-fun m!2114455 () Bool)

(assert (=> b!1711099 m!2114455))

(assert (=> b!1711099 m!2114451))

(assert (=> b!1711099 m!2114455))

(declare-fun m!2114457 () Bool)

(assert (=> b!1711099 m!2114457))

(declare-fun m!2114459 () Bool)

(assert (=> b!1711092 m!2114459))

(check-sat (not b!1711098) (not b!1711097) tp_is_empty!7501 (not b!1711091) (not b!1711102) b_and!123889 b_and!123883 (not b!1711109) (not b!1711108) (not b!1711103) b_and!123885 (not b!1711110) (not b!1711100) (not start!167282) (not b_next!47113) (not b!1711107) (not b!1711092) (not b!1711101) (not b_next!47115) (not b_next!47111) b_and!123887 b_and!123881 (not b!1711099) (not b_next!47109) (not b_next!47107) (not b_next!47117) (not b!1711106) (not b!1711105) (not b!1711093) b_and!123891)
(check-sat b_and!123883 b_and!123885 (not b_next!47113) b_and!123891 b_and!123889 (not b_next!47115) (not b_next!47111) b_and!123887 b_and!123881 (not b_next!47109) (not b_next!47107) (not b_next!47117))
(get-model)

(declare-fun d!525055 () Bool)

(assert (=> d!525055 (= (isEmpty!11737 suffix!1421) ((_ is Nil!18682) suffix!1421))))

(assert (=> b!1711098 d!525055))

(declare-fun d!525057 () Bool)

(assert (=> d!525057 (= (isEmpty!11737 (_2!10603 lt!653728)) ((_ is Nil!18682) (_2!10603 lt!653728)))))

(assert (=> b!1711097 d!525057))

(declare-fun d!525059 () Bool)

(assert (=> d!525059 (= (inv!24097 (tag!3597 rule!422)) (= (mod (str.len (value!103750 (tag!3597 rule!422))) 2) 0))))

(assert (=> b!1711107 d!525059))

(declare-fun d!525061 () Bool)

(declare-fun res!767038 () Bool)

(declare-fun e!1094390 () Bool)

(assert (=> d!525061 (=> (not res!767038) (not e!1094390))))

(declare-fun semiInverseModEq!1303 (Int Int) Bool)

(assert (=> d!525061 (= res!767038 (semiInverseModEq!1303 (toChars!4663 (transformation!3301 rule!422)) (toValue!4804 (transformation!3301 rule!422))))))

(assert (=> d!525061 (= (inv!24101 (transformation!3301 rule!422)) e!1094390)))

(declare-fun b!1711137 () Bool)

(declare-fun equivClasses!1244 (Int Int) Bool)

(assert (=> b!1711137 (= e!1094390 (equivClasses!1244 (toChars!4663 (transformation!3301 rule!422)) (toValue!4804 (transformation!3301 rule!422))))))

(assert (= (and d!525061 res!767038) b!1711137))

(declare-fun m!2114491 () Bool)

(assert (=> d!525061 m!2114491))

(declare-fun m!2114493 () Bool)

(assert (=> b!1711137 m!2114493))

(assert (=> b!1711107 d!525061))

(declare-fun d!525063 () Bool)

(declare-fun res!767043 () Bool)

(declare-fun e!1094393 () Bool)

(assert (=> d!525063 (=> (not res!767043) (not e!1094393))))

(assert (=> d!525063 (= res!767043 (not (isEmpty!11737 (originalCharacters!4115 token!523))))))

(assert (=> d!525063 (= (inv!24100 token!523) e!1094393)))

(declare-fun b!1711142 () Bool)

(declare-fun res!767044 () Bool)

(assert (=> b!1711142 (=> (not res!767044) (not e!1094393))))

(declare-fun dynLambda!8499 (Int TokenValue!3391) BalanceConc!12370)

(assert (=> b!1711142 (= res!767044 (= (originalCharacters!4115 token!523) (list!7538 (dynLambda!8499 (toChars!4663 (transformation!3301 (rule!5237 token!523))) (value!103751 token!523)))))))

(declare-fun b!1711143 () Bool)

(declare-fun size!14862 (List!18752) Int)

(assert (=> b!1711143 (= e!1094393 (= (size!14860 token!523) (size!14862 (originalCharacters!4115 token!523))))))

(assert (= (and d!525063 res!767043) b!1711142))

(assert (= (and b!1711142 res!767044) b!1711143))

(declare-fun b_lambda!53989 () Bool)

(assert (=> (not b_lambda!53989) (not b!1711142)))

(declare-fun tb!100987 () Bool)

(declare-fun t!158302 () Bool)

(assert (=> (and b!1711094 (= (toChars!4663 (transformation!3301 (h!24084 rules!3447))) (toChars!4663 (transformation!3301 (rule!5237 token!523)))) t!158302) tb!100987))

(declare-fun b!1711148 () Bool)

(declare-fun e!1094396 () Bool)

(declare-fun tp!489001 () Bool)

(declare-fun inv!24104 (Conc!6213) Bool)

(assert (=> b!1711148 (= e!1094396 (and (inv!24104 (c!280381 (dynLambda!8499 (toChars!4663 (transformation!3301 (rule!5237 token!523))) (value!103751 token!523)))) tp!489001))))

(declare-fun result!121338 () Bool)

(declare-fun inv!24105 (BalanceConc!12370) Bool)

(assert (=> tb!100987 (= result!121338 (and (inv!24105 (dynLambda!8499 (toChars!4663 (transformation!3301 (rule!5237 token!523))) (value!103751 token!523))) e!1094396))))

(assert (= tb!100987 b!1711148))

(declare-fun m!2114495 () Bool)

(assert (=> b!1711148 m!2114495))

(declare-fun m!2114497 () Bool)

(assert (=> tb!100987 m!2114497))

(assert (=> b!1711142 t!158302))

(declare-fun b_and!123893 () Bool)

(assert (= b_and!123883 (and (=> t!158302 result!121338) b_and!123893)))

(declare-fun t!158304 () Bool)

(declare-fun tb!100989 () Bool)

(assert (=> (and b!1711096 (= (toChars!4663 (transformation!3301 (rule!5237 token!523))) (toChars!4663 (transformation!3301 (rule!5237 token!523)))) t!158304) tb!100989))

(declare-fun result!121342 () Bool)

(assert (= result!121342 result!121338))

(assert (=> b!1711142 t!158304))

(declare-fun b_and!123895 () Bool)

(assert (= b_and!123887 (and (=> t!158304 result!121342) b_and!123895)))

(declare-fun tb!100991 () Bool)

(declare-fun t!158306 () Bool)

(assert (=> (and b!1711095 (= (toChars!4663 (transformation!3301 rule!422)) (toChars!4663 (transformation!3301 (rule!5237 token!523)))) t!158306) tb!100991))

(declare-fun result!121344 () Bool)

(assert (= result!121344 result!121338))

(assert (=> b!1711142 t!158306))

(declare-fun b_and!123897 () Bool)

(assert (= b_and!123891 (and (=> t!158306 result!121344) b_and!123897)))

(declare-fun m!2114499 () Bool)

(assert (=> d!525063 m!2114499))

(declare-fun m!2114501 () Bool)

(assert (=> b!1711142 m!2114501))

(assert (=> b!1711142 m!2114501))

(declare-fun m!2114503 () Bool)

(assert (=> b!1711142 m!2114503))

(declare-fun m!2114505 () Bool)

(assert (=> b!1711143 m!2114505))

(assert (=> start!167282 d!525063))

(declare-fun d!525065 () Bool)

(assert (=> d!525065 (= (inv!24097 (tag!3597 (rule!5237 token!523))) (= (mod (str.len (value!103750 (tag!3597 (rule!5237 token!523)))) 2) 0))))

(assert (=> b!1711106 d!525065))

(declare-fun d!525067 () Bool)

(declare-fun res!767045 () Bool)

(declare-fun e!1094397 () Bool)

(assert (=> d!525067 (=> (not res!767045) (not e!1094397))))

(assert (=> d!525067 (= res!767045 (semiInverseModEq!1303 (toChars!4663 (transformation!3301 (rule!5237 token!523))) (toValue!4804 (transformation!3301 (rule!5237 token!523)))))))

(assert (=> d!525067 (= (inv!24101 (transformation!3301 (rule!5237 token!523))) e!1094397)))

(declare-fun b!1711149 () Bool)

(assert (=> b!1711149 (= e!1094397 (equivClasses!1244 (toChars!4663 (transformation!3301 (rule!5237 token!523))) (toValue!4804 (transformation!3301 (rule!5237 token!523)))))))

(assert (= (and d!525067 res!767045) b!1711149))

(declare-fun m!2114507 () Bool)

(assert (=> d!525067 m!2114507))

(declare-fun m!2114509 () Bool)

(assert (=> b!1711149 m!2114509))

(assert (=> b!1711106 d!525067))

(declare-fun b!1711160 () Bool)

(declare-fun e!1094406 () Bool)

(declare-fun inv!17 (TokenValue!3391) Bool)

(assert (=> b!1711160 (= e!1094406 (inv!17 (value!103751 token!523)))))

(declare-fun b!1711161 () Bool)

(declare-fun e!1094404 () Bool)

(declare-fun inv!15 (TokenValue!3391) Bool)

(assert (=> b!1711161 (= e!1094404 (inv!15 (value!103751 token!523)))))

(declare-fun b!1711162 () Bool)

(declare-fun e!1094405 () Bool)

(assert (=> b!1711162 (= e!1094405 e!1094406)))

(declare-fun c!280389 () Bool)

(assert (=> b!1711162 (= c!280389 ((_ is IntegerValue!10174) (value!103751 token!523)))))

(declare-fun b!1711163 () Bool)

(declare-fun res!767048 () Bool)

(assert (=> b!1711163 (=> res!767048 e!1094404)))

(assert (=> b!1711163 (= res!767048 (not ((_ is IntegerValue!10175) (value!103751 token!523))))))

(assert (=> b!1711163 (= e!1094406 e!1094404)))

(declare-fun b!1711164 () Bool)

(declare-fun inv!16 (TokenValue!3391) Bool)

(assert (=> b!1711164 (= e!1094405 (inv!16 (value!103751 token!523)))))

(declare-fun d!525069 () Bool)

(declare-fun c!280390 () Bool)

(assert (=> d!525069 (= c!280390 ((_ is IntegerValue!10173) (value!103751 token!523)))))

(assert (=> d!525069 (= (inv!21 (value!103751 token!523)) e!1094405)))

(assert (= (and d!525069 c!280390) b!1711164))

(assert (= (and d!525069 (not c!280390)) b!1711162))

(assert (= (and b!1711162 c!280389) b!1711160))

(assert (= (and b!1711162 (not c!280389)) b!1711163))

(assert (= (and b!1711163 (not res!767048)) b!1711161))

(declare-fun m!2114511 () Bool)

(assert (=> b!1711160 m!2114511))

(declare-fun m!2114513 () Bool)

(assert (=> b!1711161 m!2114513))

(declare-fun m!2114515 () Bool)

(assert (=> b!1711164 m!2114515))

(assert (=> b!1711105 d!525069))

(declare-fun d!525071 () Bool)

(declare-fun e!1094412 () Bool)

(assert (=> d!525071 e!1094412))

(declare-fun res!767054 () Bool)

(assert (=> d!525071 (=> (not res!767054) (not e!1094412))))

(declare-fun lt!653746 () List!18752)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2657 (List!18752) (InoxSet C!9432))

(assert (=> d!525071 (= res!767054 (= (content!2657 lt!653746) ((_ map or) (content!2657 lt!653730) (content!2657 suffix!1421))))))

(declare-fun e!1094411 () List!18752)

(assert (=> d!525071 (= lt!653746 e!1094411)))

(declare-fun c!280393 () Bool)

(assert (=> d!525071 (= c!280393 ((_ is Nil!18682) lt!653730))))

(assert (=> d!525071 (= (++!5126 lt!653730 suffix!1421) lt!653746)))

(declare-fun b!1711174 () Bool)

(assert (=> b!1711174 (= e!1094411 (Cons!18682 (h!24083 lt!653730) (++!5126 (t!158299 lt!653730) suffix!1421)))))

(declare-fun b!1711176 () Bool)

(assert (=> b!1711176 (= e!1094412 (or (not (= suffix!1421 Nil!18682)) (= lt!653746 lt!653730)))))

(declare-fun b!1711175 () Bool)

(declare-fun res!767053 () Bool)

(assert (=> b!1711175 (=> (not res!767053) (not e!1094412))))

(assert (=> b!1711175 (= res!767053 (= (size!14862 lt!653746) (+ (size!14862 lt!653730) (size!14862 suffix!1421))))))

(declare-fun b!1711173 () Bool)

(assert (=> b!1711173 (= e!1094411 suffix!1421)))

(assert (= (and d!525071 c!280393) b!1711173))

(assert (= (and d!525071 (not c!280393)) b!1711174))

(assert (= (and d!525071 res!767054) b!1711175))

(assert (= (and b!1711175 res!767053) b!1711176))

(declare-fun m!2114517 () Bool)

(assert (=> d!525071 m!2114517))

(declare-fun m!2114519 () Bool)

(assert (=> d!525071 m!2114519))

(declare-fun m!2114521 () Bool)

(assert (=> d!525071 m!2114521))

(declare-fun m!2114523 () Bool)

(assert (=> b!1711174 m!2114523))

(declare-fun m!2114525 () Bool)

(assert (=> b!1711175 m!2114525))

(declare-fun m!2114527 () Bool)

(assert (=> b!1711175 m!2114527))

(declare-fun m!2114529 () Bool)

(assert (=> b!1711175 m!2114529))

(assert (=> b!1711093 d!525071))

(declare-fun d!525073 () Bool)

(assert (=> d!525073 (isPrefix!1542 lt!653730 (++!5126 lt!653730 suffix!1421))))

(declare-fun lt!653749 () Unit!32513)

(declare-fun choose!10383 (List!18752 List!18752) Unit!32513)

(assert (=> d!525073 (= lt!653749 (choose!10383 lt!653730 suffix!1421))))

(assert (=> d!525073 (= (lemmaConcatTwoListThenFirstIsPrefix!1052 lt!653730 suffix!1421) lt!653749)))

(declare-fun bs!401783 () Bool)

(assert (= bs!401783 d!525073))

(assert (=> bs!401783 m!2114425))

(assert (=> bs!401783 m!2114425))

(declare-fun m!2114531 () Bool)

(assert (=> bs!401783 m!2114531))

(declare-fun m!2114533 () Bool)

(assert (=> bs!401783 m!2114533))

(assert (=> b!1711093 d!525073))

(declare-fun b!1711188 () Bool)

(declare-fun e!1094421 () Bool)

(assert (=> b!1711188 (= e!1094421 (>= (size!14862 lt!653731) (size!14862 lt!653730)))))

(declare-fun d!525075 () Bool)

(assert (=> d!525075 e!1094421))

(declare-fun res!767064 () Bool)

(assert (=> d!525075 (=> res!767064 e!1094421)))

(declare-fun lt!653752 () Bool)

(assert (=> d!525075 (= res!767064 (not lt!653752))))

(declare-fun e!1094420 () Bool)

(assert (=> d!525075 (= lt!653752 e!1094420)))

(declare-fun res!767063 () Bool)

(assert (=> d!525075 (=> res!767063 e!1094420)))

(assert (=> d!525075 (= res!767063 ((_ is Nil!18682) lt!653730))))

(assert (=> d!525075 (= (isPrefix!1542 lt!653730 lt!653731) lt!653752)))

(declare-fun b!1711185 () Bool)

(declare-fun e!1094419 () Bool)

(assert (=> b!1711185 (= e!1094420 e!1094419)))

(declare-fun res!767065 () Bool)

(assert (=> b!1711185 (=> (not res!767065) (not e!1094419))))

(assert (=> b!1711185 (= res!767065 (not ((_ is Nil!18682) lt!653731)))))

(declare-fun b!1711186 () Bool)

(declare-fun res!767066 () Bool)

(assert (=> b!1711186 (=> (not res!767066) (not e!1094419))))

(assert (=> b!1711186 (= res!767066 (= (head!3836 lt!653730) (head!3836 lt!653731)))))

(declare-fun b!1711187 () Bool)

(declare-fun tail!2553 (List!18752) List!18752)

(assert (=> b!1711187 (= e!1094419 (isPrefix!1542 (tail!2553 lt!653730) (tail!2553 lt!653731)))))

(assert (= (and d!525075 (not res!767063)) b!1711185))

(assert (= (and b!1711185 res!767065) b!1711186))

(assert (= (and b!1711186 res!767066) b!1711187))

(assert (= (and d!525075 (not res!767064)) b!1711188))

(declare-fun m!2114535 () Bool)

(assert (=> b!1711188 m!2114535))

(assert (=> b!1711188 m!2114527))

(declare-fun m!2114537 () Bool)

(assert (=> b!1711186 m!2114537))

(declare-fun m!2114539 () Bool)

(assert (=> b!1711186 m!2114539))

(declare-fun m!2114541 () Bool)

(assert (=> b!1711187 m!2114541))

(declare-fun m!2114543 () Bool)

(assert (=> b!1711187 m!2114543))

(assert (=> b!1711187 m!2114541))

(assert (=> b!1711187 m!2114543))

(declare-fun m!2114545 () Bool)

(assert (=> b!1711187 m!2114545))

(assert (=> b!1711093 d!525075))

(declare-fun d!525077 () Bool)

(declare-fun isEmpty!11740 (Option!3627) Bool)

(assert (=> d!525077 (= (isDefined!2970 lt!653727) (not (isEmpty!11740 lt!653727)))))

(declare-fun bs!401784 () Bool)

(assert (= bs!401784 d!525077))

(declare-fun m!2114547 () Bool)

(assert (=> bs!401784 m!2114547))

(assert (=> b!1711093 d!525077))

(declare-fun call!109461 () Option!3627)

(declare-fun bm!109456 () Bool)

(declare-fun maxPrefixOneRule!868 (LexerInterface!2930 Rule!6402 List!18752) Option!3627)

(assert (=> bm!109456 (= call!109461 (maxPrefixOneRule!868 thiss!24550 (h!24084 rules!3447) lt!653731))))

(declare-fun b!1711219 () Bool)

(declare-fun e!1094436 () Bool)

(declare-fun e!1094434 () Bool)

(assert (=> b!1711219 (= e!1094436 e!1094434)))

(declare-fun res!767089 () Bool)

(assert (=> b!1711219 (=> (not res!767089) (not e!1094434))))

(declare-fun lt!653816 () Option!3627)

(assert (=> b!1711219 (= res!767089 (isDefined!2970 lt!653816))))

(declare-fun b!1711220 () Bool)

(declare-fun e!1094435 () Option!3627)

(declare-fun lt!653817 () Option!3627)

(declare-fun lt!653815 () Option!3627)

(assert (=> b!1711220 (= e!1094435 (ite (and ((_ is None!3626) lt!653817) ((_ is None!3626) lt!653815)) None!3626 (ite ((_ is None!3626) lt!653815) lt!653817 (ite ((_ is None!3626) lt!653817) lt!653815 (ite (>= (size!14860 (_1!10603 (v!25013 lt!653817))) (size!14860 (_1!10603 (v!25013 lt!653815)))) lt!653817 lt!653815)))))))

(assert (=> b!1711220 (= lt!653817 call!109461)))

(assert (=> b!1711220 (= lt!653815 (maxPrefix!1484 thiss!24550 (t!158300 rules!3447) lt!653731))))

(declare-fun d!525079 () Bool)

(assert (=> d!525079 e!1094436))

(declare-fun res!767092 () Bool)

(assert (=> d!525079 (=> res!767092 e!1094436)))

(assert (=> d!525079 (= res!767092 (isEmpty!11740 lt!653816))))

(assert (=> d!525079 (= lt!653816 e!1094435)))

(declare-fun c!280399 () Bool)

(assert (=> d!525079 (= c!280399 (and ((_ is Cons!18683) rules!3447) ((_ is Nil!18683) (t!158300 rules!3447))))))

(declare-fun lt!653814 () Unit!32513)

(declare-fun lt!653818 () Unit!32513)

(assert (=> d!525079 (= lt!653814 lt!653818)))

(assert (=> d!525079 (isPrefix!1542 lt!653731 lt!653731)))

(declare-fun lemmaIsPrefixRefl!1053 (List!18752 List!18752) Unit!32513)

(assert (=> d!525079 (= lt!653818 (lemmaIsPrefixRefl!1053 lt!653731 lt!653731))))

(declare-fun rulesValidInductive!1088 (LexerInterface!2930 List!18753) Bool)

(assert (=> d!525079 (rulesValidInductive!1088 thiss!24550 rules!3447)))

(assert (=> d!525079 (= (maxPrefix!1484 thiss!24550 rules!3447 lt!653731) lt!653816)))

(declare-fun b!1711221 () Bool)

(declare-fun res!767087 () Bool)

(assert (=> b!1711221 (=> (not res!767087) (not e!1094434))))

(declare-fun apply!5112 (TokenValueInjection!6442 BalanceConc!12370) TokenValue!3391)

(declare-fun seqFromList!2277 (List!18752) BalanceConc!12370)

(assert (=> b!1711221 (= res!767087 (= (value!103751 (_1!10603 (get!5495 lt!653816))) (apply!5112 (transformation!3301 (rule!5237 (_1!10603 (get!5495 lt!653816)))) (seqFromList!2277 (originalCharacters!4115 (_1!10603 (get!5495 lt!653816)))))))))

(declare-fun b!1711222 () Bool)

(assert (=> b!1711222 (= e!1094434 (contains!3321 rules!3447 (rule!5237 (_1!10603 (get!5495 lt!653816)))))))

(declare-fun b!1711223 () Bool)

(declare-fun res!767090 () Bool)

(assert (=> b!1711223 (=> (not res!767090) (not e!1094434))))

(assert (=> b!1711223 (= res!767090 (= (++!5126 (list!7538 (charsOf!1950 (_1!10603 (get!5495 lt!653816)))) (_2!10603 (get!5495 lt!653816))) lt!653731))))

(declare-fun b!1711224 () Bool)

(declare-fun res!767088 () Bool)

(assert (=> b!1711224 (=> (not res!767088) (not e!1094434))))

(assert (=> b!1711224 (= res!767088 (= (list!7538 (charsOf!1950 (_1!10603 (get!5495 lt!653816)))) (originalCharacters!4115 (_1!10603 (get!5495 lt!653816)))))))

(declare-fun b!1711225 () Bool)

(declare-fun res!767093 () Bool)

(assert (=> b!1711225 (=> (not res!767093) (not e!1094434))))

(assert (=> b!1711225 (= res!767093 (matchR!2103 (regex!3301 (rule!5237 (_1!10603 (get!5495 lt!653816)))) (list!7538 (charsOf!1950 (_1!10603 (get!5495 lt!653816))))))))

(declare-fun b!1711226 () Bool)

(declare-fun res!767091 () Bool)

(assert (=> b!1711226 (=> (not res!767091) (not e!1094434))))

(assert (=> b!1711226 (= res!767091 (< (size!14862 (_2!10603 (get!5495 lt!653816))) (size!14862 lt!653731)))))

(declare-fun b!1711227 () Bool)

(assert (=> b!1711227 (= e!1094435 call!109461)))

(assert (= (and d!525079 c!280399) b!1711227))

(assert (= (and d!525079 (not c!280399)) b!1711220))

(assert (= (or b!1711227 b!1711220) bm!109456))

(assert (= (and d!525079 (not res!767092)) b!1711219))

(assert (= (and b!1711219 res!767089) b!1711224))

(assert (= (and b!1711224 res!767088) b!1711226))

(assert (= (and b!1711226 res!767091) b!1711223))

(assert (= (and b!1711223 res!767090) b!1711221))

(assert (= (and b!1711221 res!767087) b!1711225))

(assert (= (and b!1711225 res!767093) b!1711222))

(declare-fun m!2114599 () Bool)

(assert (=> b!1711225 m!2114599))

(declare-fun m!2114601 () Bool)

(assert (=> b!1711225 m!2114601))

(assert (=> b!1711225 m!2114601))

(declare-fun m!2114603 () Bool)

(assert (=> b!1711225 m!2114603))

(assert (=> b!1711225 m!2114603))

(declare-fun m!2114605 () Bool)

(assert (=> b!1711225 m!2114605))

(declare-fun m!2114607 () Bool)

(assert (=> d!525079 m!2114607))

(declare-fun m!2114609 () Bool)

(assert (=> d!525079 m!2114609))

(declare-fun m!2114611 () Bool)

(assert (=> d!525079 m!2114611))

(declare-fun m!2114613 () Bool)

(assert (=> d!525079 m!2114613))

(declare-fun m!2114615 () Bool)

(assert (=> b!1711219 m!2114615))

(assert (=> b!1711221 m!2114599))

(declare-fun m!2114617 () Bool)

(assert (=> b!1711221 m!2114617))

(assert (=> b!1711221 m!2114617))

(declare-fun m!2114619 () Bool)

(assert (=> b!1711221 m!2114619))

(assert (=> b!1711223 m!2114599))

(assert (=> b!1711223 m!2114601))

(assert (=> b!1711223 m!2114601))

(assert (=> b!1711223 m!2114603))

(assert (=> b!1711223 m!2114603))

(declare-fun m!2114621 () Bool)

(assert (=> b!1711223 m!2114621))

(declare-fun m!2114623 () Bool)

(assert (=> bm!109456 m!2114623))

(declare-fun m!2114625 () Bool)

(assert (=> b!1711220 m!2114625))

(assert (=> b!1711226 m!2114599))

(declare-fun m!2114627 () Bool)

(assert (=> b!1711226 m!2114627))

(assert (=> b!1711226 m!2114535))

(assert (=> b!1711224 m!2114599))

(assert (=> b!1711224 m!2114601))

(assert (=> b!1711224 m!2114601))

(assert (=> b!1711224 m!2114603))

(assert (=> b!1711222 m!2114599))

(declare-fun m!2114629 () Bool)

(assert (=> b!1711222 m!2114629))

(assert (=> b!1711093 d!525079))

(declare-fun b!1711412 () Bool)

(declare-fun e!1094533 () Unit!32513)

(declare-fun Unit!32517 () Unit!32513)

(assert (=> b!1711412 (= e!1094533 Unit!32517)))

(declare-fun d!525083 () Bool)

(assert (=> d!525083 (isDefined!2970 (maxPrefix!1484 thiss!24550 rules!3447 (++!5126 lt!653730 suffix!1421)))))

(declare-fun lt!653889 () Unit!32513)

(assert (=> d!525083 (= lt!653889 e!1094533)))

(declare-fun c!280426 () Bool)

(assert (=> d!525083 (= c!280426 (isEmpty!11740 (maxPrefix!1484 thiss!24550 rules!3447 (++!5126 lt!653730 suffix!1421))))))

(declare-fun lt!653905 () Unit!32513)

(declare-fun lt!653899 () Unit!32513)

(assert (=> d!525083 (= lt!653905 lt!653899)))

(declare-fun e!1094532 () Bool)

(assert (=> d!525083 e!1094532))

(declare-fun res!767181 () Bool)

(assert (=> d!525083 (=> (not res!767181) (not e!1094532))))

(declare-fun lt!653901 () Token!6168)

(declare-datatypes ((Option!3629 0))(
  ( (None!3628) (Some!3628 (v!25017 Rule!6402)) )
))
(declare-fun isDefined!2972 (Option!3629) Bool)

(declare-fun getRuleFromTag!353 (LexerInterface!2930 List!18753 String!21287) Option!3629)

(assert (=> d!525083 (= res!767181 (isDefined!2972 (getRuleFromTag!353 thiss!24550 rules!3447 (tag!3597 (rule!5237 lt!653901)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!353 (LexerInterface!2930 List!18753 List!18752 Token!6168) Unit!32513)

(assert (=> d!525083 (= lt!653899 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!353 thiss!24550 rules!3447 lt!653730 lt!653901))))

(declare-fun lt!653897 () Unit!32513)

(declare-fun lt!653890 () Unit!32513)

(assert (=> d!525083 (= lt!653897 lt!653890)))

(declare-fun lt!653903 () List!18752)

(assert (=> d!525083 (isPrefix!1542 lt!653903 (++!5126 lt!653730 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!239 (List!18752 List!18752 List!18752) Unit!32513)

(assert (=> d!525083 (= lt!653890 (lemmaPrefixStaysPrefixWhenAddingToSuffix!239 lt!653903 lt!653730 suffix!1421))))

(assert (=> d!525083 (= lt!653903 (list!7538 (charsOf!1950 lt!653901)))))

(declare-fun lt!653894 () Unit!32513)

(declare-fun lt!653900 () Unit!32513)

(assert (=> d!525083 (= lt!653894 lt!653900)))

(declare-fun lt!653891 () List!18752)

(declare-fun lt!653896 () List!18752)

(assert (=> d!525083 (isPrefix!1542 lt!653891 (++!5126 lt!653891 lt!653896))))

(assert (=> d!525083 (= lt!653900 (lemmaConcatTwoListThenFirstIsPrefix!1052 lt!653891 lt!653896))))

(assert (=> d!525083 (= lt!653896 (_2!10603 (get!5495 (maxPrefix!1484 thiss!24550 rules!3447 lt!653730))))))

(assert (=> d!525083 (= lt!653891 (list!7538 (charsOf!1950 lt!653901)))))

(declare-datatypes ((List!18757 0))(
  ( (Nil!18687) (Cons!18687 (h!24088 Token!6168) (t!158320 List!18757)) )
))
(declare-fun head!3838 (List!18757) Token!6168)

(declare-datatypes ((IArray!12435 0))(
  ( (IArray!12436 (innerList!6275 List!18757)) )
))
(declare-datatypes ((Conc!6215 0))(
  ( (Node!6215 (left!14899 Conc!6215) (right!15229 Conc!6215) (csize!12660 Int) (cheight!6426 Int)) (Leaf!9086 (xs!9091 IArray!12435) (csize!12661 Int)) (Empty!6215) )
))
(declare-datatypes ((BalanceConc!12374 0))(
  ( (BalanceConc!12375 (c!280441 Conc!6215)) )
))
(declare-fun list!7541 (BalanceConc!12374) List!18757)

(declare-datatypes ((tuple2!18406 0))(
  ( (tuple2!18407 (_1!10605 BalanceConc!12374) (_2!10605 BalanceConc!12370)) )
))
(declare-fun lex!1378 (LexerInterface!2930 List!18753 BalanceConc!12370) tuple2!18406)

(assert (=> d!525083 (= lt!653901 (head!3838 (list!7541 (_1!10605 (lex!1378 thiss!24550 rules!3447 (seqFromList!2277 lt!653730))))))))

(assert (=> d!525083 (not (isEmpty!11738 rules!3447))))

(assert (=> d!525083 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!454 thiss!24550 rules!3447 lt!653730 suffix!1421) lt!653889)))

(declare-fun b!1711409 () Bool)

(declare-fun res!767182 () Bool)

(assert (=> b!1711409 (=> (not res!767182) (not e!1094532))))

(declare-fun get!5497 (Option!3629) Rule!6402)

(assert (=> b!1711409 (= res!767182 (matchR!2103 (regex!3301 (get!5497 (getRuleFromTag!353 thiss!24550 rules!3447 (tag!3597 (rule!5237 lt!653901))))) (list!7538 (charsOf!1950 lt!653901))))))

(declare-fun b!1711411 () Bool)

(declare-fun Unit!32518 () Unit!32513)

(assert (=> b!1711411 (= e!1094533 Unit!32518)))

(declare-fun lt!653895 () List!18752)

(assert (=> b!1711411 (= lt!653895 (++!5126 lt!653730 suffix!1421))))

(declare-fun lt!653904 () Unit!32513)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!247 (LexerInterface!2930 Rule!6402 List!18753 List!18752) Unit!32513)

(assert (=> b!1711411 (= lt!653904 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!247 thiss!24550 (rule!5237 lt!653901) rules!3447 lt!653895))))

(assert (=> b!1711411 (isEmpty!11740 (maxPrefixOneRule!868 thiss!24550 (rule!5237 lt!653901) lt!653895))))

(declare-fun lt!653892 () Unit!32513)

(assert (=> b!1711411 (= lt!653892 lt!653904)))

(declare-fun lt!653902 () List!18752)

(assert (=> b!1711411 (= lt!653902 (list!7538 (charsOf!1950 lt!653901)))))

(declare-fun lt!653898 () Unit!32513)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!243 (LexerInterface!2930 Rule!6402 List!18752 List!18752) Unit!32513)

(assert (=> b!1711411 (= lt!653898 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!243 thiss!24550 (rule!5237 lt!653901) lt!653902 (++!5126 lt!653730 suffix!1421)))))

(assert (=> b!1711411 (not (matchR!2103 (regex!3301 (rule!5237 lt!653901)) lt!653902))))

(declare-fun lt!653893 () Unit!32513)

(assert (=> b!1711411 (= lt!653893 lt!653898)))

(assert (=> b!1711411 false))

(declare-fun b!1711410 () Bool)

(assert (=> b!1711410 (= e!1094532 (= (rule!5237 lt!653901) (get!5497 (getRuleFromTag!353 thiss!24550 rules!3447 (tag!3597 (rule!5237 lt!653901))))))))

(assert (= (and d!525083 res!767181) b!1711409))

(assert (= (and b!1711409 res!767182) b!1711410))

(assert (= (and d!525083 c!280426) b!1711411))

(assert (= (and d!525083 (not c!280426)) b!1711412))

(declare-fun m!2114787 () Bool)

(assert (=> d!525083 m!2114787))

(assert (=> d!525083 m!2114787))

(declare-fun m!2114789 () Bool)

(assert (=> d!525083 m!2114789))

(declare-fun m!2114791 () Bool)

(assert (=> d!525083 m!2114791))

(declare-fun m!2114793 () Bool)

(assert (=> d!525083 m!2114793))

(declare-fun m!2114795 () Bool)

(assert (=> d!525083 m!2114795))

(assert (=> d!525083 m!2114425))

(assert (=> d!525083 m!2114791))

(assert (=> d!525083 m!2114425))

(declare-fun m!2114797 () Bool)

(assert (=> d!525083 m!2114797))

(declare-fun m!2114799 () Bool)

(assert (=> d!525083 m!2114799))

(declare-fun m!2114801 () Bool)

(assert (=> d!525083 m!2114801))

(assert (=> d!525083 m!2114791))

(declare-fun m!2114803 () Bool)

(assert (=> d!525083 m!2114803))

(declare-fun m!2114805 () Bool)

(assert (=> d!525083 m!2114805))

(assert (=> d!525083 m!2114439))

(declare-fun m!2114807 () Bool)

(assert (=> d!525083 m!2114807))

(declare-fun m!2114809 () Bool)

(assert (=> d!525083 m!2114809))

(declare-fun m!2114811 () Bool)

(assert (=> d!525083 m!2114811))

(assert (=> d!525083 m!2114809))

(declare-fun m!2114813 () Bool)

(assert (=> d!525083 m!2114813))

(assert (=> d!525083 m!2114425))

(assert (=> d!525083 m!2114813))

(declare-fun m!2114815 () Bool)

(assert (=> d!525083 m!2114815))

(assert (=> d!525083 m!2114801))

(declare-fun m!2114817 () Bool)

(assert (=> d!525083 m!2114817))

(declare-fun m!2114819 () Bool)

(assert (=> d!525083 m!2114819))

(assert (=> d!525083 m!2114399))

(assert (=> d!525083 m!2114819))

(declare-fun m!2114821 () Bool)

(assert (=> d!525083 m!2114821))

(assert (=> d!525083 m!2114439))

(assert (=> b!1711409 m!2114787))

(assert (=> b!1711409 m!2114787))

(assert (=> b!1711409 m!2114789))

(assert (=> b!1711409 m!2114819))

(assert (=> b!1711409 m!2114789))

(declare-fun m!2114823 () Bool)

(assert (=> b!1711409 m!2114823))

(assert (=> b!1711409 m!2114819))

(declare-fun m!2114825 () Bool)

(assert (=> b!1711409 m!2114825))

(assert (=> b!1711411 m!2114787))

(assert (=> b!1711411 m!2114787))

(assert (=> b!1711411 m!2114789))

(assert (=> b!1711411 m!2114425))

(declare-fun m!2114827 () Bool)

(assert (=> b!1711411 m!2114827))

(declare-fun m!2114829 () Bool)

(assert (=> b!1711411 m!2114829))

(declare-fun m!2114831 () Bool)

(assert (=> b!1711411 m!2114831))

(declare-fun m!2114833 () Bool)

(assert (=> b!1711411 m!2114833))

(assert (=> b!1711411 m!2114829))

(assert (=> b!1711411 m!2114425))

(declare-fun m!2114835 () Bool)

(assert (=> b!1711411 m!2114835))

(assert (=> b!1711410 m!2114819))

(assert (=> b!1711410 m!2114819))

(assert (=> b!1711410 m!2114825))

(assert (=> b!1711093 d!525083))

(declare-fun d!525135 () Bool)

(assert (=> d!525135 (= (isEmpty!11738 rules!3447) ((_ is Nil!18683) rules!3447))))

(assert (=> b!1711103 d!525135))

(declare-fun d!525137 () Bool)

(assert (=> d!525137 (= (get!5495 lt!653732) (v!25013 lt!653732))))

(assert (=> b!1711092 d!525137))

(declare-fun b!1711441 () Bool)

(declare-fun e!1094548 () Bool)

(declare-fun lt!653908 () Bool)

(declare-fun call!109471 () Bool)

(assert (=> b!1711441 (= e!1094548 (= lt!653908 call!109471))))

(declare-fun b!1711442 () Bool)

(declare-fun res!767205 () Bool)

(declare-fun e!1094553 () Bool)

(assert (=> b!1711442 (=> (not res!767205) (not e!1094553))))

(assert (=> b!1711442 (= res!767205 (isEmpty!11737 (tail!2553 lt!653730)))))

(declare-fun b!1711444 () Bool)

(declare-fun e!1094552 () Bool)

(assert (=> b!1711444 (= e!1094548 e!1094552)))

(declare-fun c!280435 () Bool)

(assert (=> b!1711444 (= c!280435 ((_ is EmptyLang!4629) (regex!3301 rule!422)))))

(declare-fun b!1711445 () Bool)

(declare-fun e!1094551 () Bool)

(declare-fun nullable!1390 (Regex!4629) Bool)

(assert (=> b!1711445 (= e!1094551 (nullable!1390 (regex!3301 rule!422)))))

(declare-fun b!1711446 () Bool)

(declare-fun e!1094554 () Bool)

(declare-fun e!1094550 () Bool)

(assert (=> b!1711446 (= e!1094554 e!1094550)))

(declare-fun res!767201 () Bool)

(assert (=> b!1711446 (=> (not res!767201) (not e!1094550))))

(assert (=> b!1711446 (= res!767201 (not lt!653908))))

(declare-fun b!1711447 () Bool)

(declare-fun res!767202 () Bool)

(declare-fun e!1094549 () Bool)

(assert (=> b!1711447 (=> res!767202 e!1094549)))

(assert (=> b!1711447 (= res!767202 (not (isEmpty!11737 (tail!2553 lt!653730))))))

(declare-fun bm!109466 () Bool)

(assert (=> bm!109466 (= call!109471 (isEmpty!11737 lt!653730))))

(declare-fun b!1711448 () Bool)

(assert (=> b!1711448 (= e!1094550 e!1094549)))

(declare-fun res!767199 () Bool)

(assert (=> b!1711448 (=> res!767199 e!1094549)))

(assert (=> b!1711448 (= res!767199 call!109471)))

(declare-fun d!525139 () Bool)

(assert (=> d!525139 e!1094548))

(declare-fun c!280433 () Bool)

(assert (=> d!525139 (= c!280433 ((_ is EmptyExpr!4629) (regex!3301 rule!422)))))

(assert (=> d!525139 (= lt!653908 e!1094551)))

(declare-fun c!280434 () Bool)

(assert (=> d!525139 (= c!280434 (isEmpty!11737 lt!653730))))

(declare-fun validRegex!1864 (Regex!4629) Bool)

(assert (=> d!525139 (validRegex!1864 (regex!3301 rule!422))))

(assert (=> d!525139 (= (matchR!2103 (regex!3301 rule!422) lt!653730) lt!653908)))

(declare-fun b!1711443 () Bool)

(declare-fun res!767204 () Bool)

(assert (=> b!1711443 (=> res!767204 e!1094554)))

(assert (=> b!1711443 (= res!767204 (not ((_ is ElementMatch!4629) (regex!3301 rule!422))))))

(assert (=> b!1711443 (= e!1094552 e!1094554)))

(declare-fun b!1711449 () Bool)

(declare-fun res!767203 () Bool)

(assert (=> b!1711449 (=> (not res!767203) (not e!1094553))))

(assert (=> b!1711449 (= res!767203 (not call!109471))))

(declare-fun b!1711450 () Bool)

(assert (=> b!1711450 (= e!1094549 (not (= (head!3836 lt!653730) (c!280380 (regex!3301 rule!422)))))))

(declare-fun b!1711451 () Bool)

(declare-fun derivativeStep!1158 (Regex!4629 C!9432) Regex!4629)

(assert (=> b!1711451 (= e!1094551 (matchR!2103 (derivativeStep!1158 (regex!3301 rule!422) (head!3836 lt!653730)) (tail!2553 lt!653730)))))

(declare-fun b!1711452 () Bool)

(assert (=> b!1711452 (= e!1094553 (= (head!3836 lt!653730) (c!280380 (regex!3301 rule!422))))))

(declare-fun b!1711453 () Bool)

(assert (=> b!1711453 (= e!1094552 (not lt!653908))))

(declare-fun b!1711454 () Bool)

(declare-fun res!767200 () Bool)

(assert (=> b!1711454 (=> res!767200 e!1094554)))

(assert (=> b!1711454 (= res!767200 e!1094553)))

(declare-fun res!767206 () Bool)

(assert (=> b!1711454 (=> (not res!767206) (not e!1094553))))

(assert (=> b!1711454 (= res!767206 lt!653908)))

(assert (= (and d!525139 c!280434) b!1711445))

(assert (= (and d!525139 (not c!280434)) b!1711451))

(assert (= (and d!525139 c!280433) b!1711441))

(assert (= (and d!525139 (not c!280433)) b!1711444))

(assert (= (and b!1711444 c!280435) b!1711453))

(assert (= (and b!1711444 (not c!280435)) b!1711443))

(assert (= (and b!1711443 (not res!767204)) b!1711454))

(assert (= (and b!1711454 res!767206) b!1711449))

(assert (= (and b!1711449 res!767203) b!1711442))

(assert (= (and b!1711442 res!767205) b!1711452))

(assert (= (and b!1711454 (not res!767200)) b!1711446))

(assert (= (and b!1711446 res!767201) b!1711448))

(assert (= (and b!1711448 (not res!767199)) b!1711447))

(assert (= (and b!1711447 (not res!767202)) b!1711450))

(assert (= (or b!1711441 b!1711448 b!1711449) bm!109466))

(assert (=> b!1711452 m!2114537))

(assert (=> b!1711442 m!2114541))

(assert (=> b!1711442 m!2114541))

(declare-fun m!2114837 () Bool)

(assert (=> b!1711442 m!2114837))

(declare-fun m!2114839 () Bool)

(assert (=> b!1711445 m!2114839))

(assert (=> b!1711450 m!2114537))

(assert (=> b!1711447 m!2114541))

(assert (=> b!1711447 m!2114541))

(assert (=> b!1711447 m!2114837))

(declare-fun m!2114841 () Bool)

(assert (=> d!525139 m!2114841))

(declare-fun m!2114843 () Bool)

(assert (=> d!525139 m!2114843))

(assert (=> b!1711451 m!2114537))

(assert (=> b!1711451 m!2114537))

(declare-fun m!2114845 () Bool)

(assert (=> b!1711451 m!2114845))

(assert (=> b!1711451 m!2114541))

(assert (=> b!1711451 m!2114845))

(assert (=> b!1711451 m!2114541))

(declare-fun m!2114847 () Bool)

(assert (=> b!1711451 m!2114847))

(assert (=> bm!109466 m!2114841))

(assert (=> b!1711091 d!525139))

(declare-fun d!525141 () Bool)

(declare-fun res!767211 () Bool)

(declare-fun e!1094557 () Bool)

(assert (=> d!525141 (=> (not res!767211) (not e!1094557))))

(assert (=> d!525141 (= res!767211 (validRegex!1864 (regex!3301 rule!422)))))

(assert (=> d!525141 (= (ruleValid!800 thiss!24550 rule!422) e!1094557)))

(declare-fun b!1711459 () Bool)

(declare-fun res!767212 () Bool)

(assert (=> b!1711459 (=> (not res!767212) (not e!1094557))))

(assert (=> b!1711459 (= res!767212 (not (nullable!1390 (regex!3301 rule!422))))))

(declare-fun b!1711460 () Bool)

(assert (=> b!1711460 (= e!1094557 (not (= (tag!3597 rule!422) (String!21288 ""))))))

(assert (= (and d!525141 res!767211) b!1711459))

(assert (= (and b!1711459 res!767212) b!1711460))

(assert (=> d!525141 m!2114843))

(assert (=> b!1711459 m!2114839))

(assert (=> b!1711091 d!525141))

(declare-fun d!525143 () Bool)

(assert (=> d!525143 (ruleValid!800 thiss!24550 rule!422)))

(declare-fun lt!653911 () Unit!32513)

(declare-fun choose!10384 (LexerInterface!2930 Rule!6402 List!18753) Unit!32513)

(assert (=> d!525143 (= lt!653911 (choose!10384 thiss!24550 rule!422 rules!3447))))

(assert (=> d!525143 (contains!3321 rules!3447 rule!422)))

(assert (=> d!525143 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!324 thiss!24550 rule!422 rules!3447) lt!653911)))

(declare-fun bs!401790 () Bool)

(assert (= bs!401790 d!525143))

(assert (=> bs!401790 m!2114405))

(declare-fun m!2114849 () Bool)

(assert (=> bs!401790 m!2114849))

(assert (=> bs!401790 m!2114401))

(assert (=> b!1711091 d!525143))

(declare-fun d!525145 () Bool)

(assert (=> d!525145 (= (inv!24097 (tag!3597 (h!24084 rules!3447))) (= (mod (str.len (value!103750 (tag!3597 (h!24084 rules!3447)))) 2) 0))))

(assert (=> b!1711102 d!525145))

(declare-fun d!525147 () Bool)

(declare-fun res!767213 () Bool)

(declare-fun e!1094558 () Bool)

(assert (=> d!525147 (=> (not res!767213) (not e!1094558))))

(assert (=> d!525147 (= res!767213 (semiInverseModEq!1303 (toChars!4663 (transformation!3301 (h!24084 rules!3447))) (toValue!4804 (transformation!3301 (h!24084 rules!3447)))))))

(assert (=> d!525147 (= (inv!24101 (transformation!3301 (h!24084 rules!3447))) e!1094558)))

(declare-fun b!1711461 () Bool)

(assert (=> b!1711461 (= e!1094558 (equivClasses!1244 (toChars!4663 (transformation!3301 (h!24084 rules!3447))) (toValue!4804 (transformation!3301 (h!24084 rules!3447)))))))

(assert (= (and d!525147 res!767213) b!1711461))

(declare-fun m!2114851 () Bool)

(assert (=> d!525147 m!2114851))

(declare-fun m!2114853 () Bool)

(assert (=> b!1711461 m!2114853))

(assert (=> b!1711102 d!525147))

(declare-fun d!525149 () Bool)

(assert (=> d!525149 (= (isDefined!2970 lt!653732) (not (isEmpty!11740 lt!653732)))))

(declare-fun bs!401791 () Bool)

(assert (= bs!401791 d!525149))

(declare-fun m!2114855 () Bool)

(assert (=> bs!401791 m!2114855))

(assert (=> b!1711101 d!525149))

(declare-fun bm!109467 () Bool)

(declare-fun call!109472 () Option!3627)

(assert (=> bm!109467 (= call!109472 (maxPrefixOneRule!868 thiss!24550 (h!24084 rules!3447) lt!653730))))

(declare-fun b!1711462 () Bool)

(declare-fun e!1094561 () Bool)

(declare-fun e!1094559 () Bool)

(assert (=> b!1711462 (= e!1094561 e!1094559)))

(declare-fun res!767216 () Bool)

(assert (=> b!1711462 (=> (not res!767216) (not e!1094559))))

(declare-fun lt!653914 () Option!3627)

(assert (=> b!1711462 (= res!767216 (isDefined!2970 lt!653914))))

(declare-fun b!1711463 () Bool)

(declare-fun e!1094560 () Option!3627)

(declare-fun lt!653915 () Option!3627)

(declare-fun lt!653913 () Option!3627)

(assert (=> b!1711463 (= e!1094560 (ite (and ((_ is None!3626) lt!653915) ((_ is None!3626) lt!653913)) None!3626 (ite ((_ is None!3626) lt!653913) lt!653915 (ite ((_ is None!3626) lt!653915) lt!653913 (ite (>= (size!14860 (_1!10603 (v!25013 lt!653915))) (size!14860 (_1!10603 (v!25013 lt!653913)))) lt!653915 lt!653913)))))))

(assert (=> b!1711463 (= lt!653915 call!109472)))

(assert (=> b!1711463 (= lt!653913 (maxPrefix!1484 thiss!24550 (t!158300 rules!3447) lt!653730))))

(declare-fun d!525151 () Bool)

(assert (=> d!525151 e!1094561))

(declare-fun res!767219 () Bool)

(assert (=> d!525151 (=> res!767219 e!1094561)))

(assert (=> d!525151 (= res!767219 (isEmpty!11740 lt!653914))))

(assert (=> d!525151 (= lt!653914 e!1094560)))

(declare-fun c!280436 () Bool)

(assert (=> d!525151 (= c!280436 (and ((_ is Cons!18683) rules!3447) ((_ is Nil!18683) (t!158300 rules!3447))))))

(declare-fun lt!653912 () Unit!32513)

(declare-fun lt!653916 () Unit!32513)

(assert (=> d!525151 (= lt!653912 lt!653916)))

(assert (=> d!525151 (isPrefix!1542 lt!653730 lt!653730)))

(assert (=> d!525151 (= lt!653916 (lemmaIsPrefixRefl!1053 lt!653730 lt!653730))))

(assert (=> d!525151 (rulesValidInductive!1088 thiss!24550 rules!3447)))

(assert (=> d!525151 (= (maxPrefix!1484 thiss!24550 rules!3447 lt!653730) lt!653914)))

(declare-fun b!1711464 () Bool)

(declare-fun res!767214 () Bool)

(assert (=> b!1711464 (=> (not res!767214) (not e!1094559))))

(assert (=> b!1711464 (= res!767214 (= (value!103751 (_1!10603 (get!5495 lt!653914))) (apply!5112 (transformation!3301 (rule!5237 (_1!10603 (get!5495 lt!653914)))) (seqFromList!2277 (originalCharacters!4115 (_1!10603 (get!5495 lt!653914)))))))))

(declare-fun b!1711465 () Bool)

(assert (=> b!1711465 (= e!1094559 (contains!3321 rules!3447 (rule!5237 (_1!10603 (get!5495 lt!653914)))))))

(declare-fun b!1711466 () Bool)

(declare-fun res!767217 () Bool)

(assert (=> b!1711466 (=> (not res!767217) (not e!1094559))))

(assert (=> b!1711466 (= res!767217 (= (++!5126 (list!7538 (charsOf!1950 (_1!10603 (get!5495 lt!653914)))) (_2!10603 (get!5495 lt!653914))) lt!653730))))

(declare-fun b!1711467 () Bool)

(declare-fun res!767215 () Bool)

(assert (=> b!1711467 (=> (not res!767215) (not e!1094559))))

(assert (=> b!1711467 (= res!767215 (= (list!7538 (charsOf!1950 (_1!10603 (get!5495 lt!653914)))) (originalCharacters!4115 (_1!10603 (get!5495 lt!653914)))))))

(declare-fun b!1711468 () Bool)

(declare-fun res!767220 () Bool)

(assert (=> b!1711468 (=> (not res!767220) (not e!1094559))))

(assert (=> b!1711468 (= res!767220 (matchR!2103 (regex!3301 (rule!5237 (_1!10603 (get!5495 lt!653914)))) (list!7538 (charsOf!1950 (_1!10603 (get!5495 lt!653914))))))))

(declare-fun b!1711469 () Bool)

(declare-fun res!767218 () Bool)

(assert (=> b!1711469 (=> (not res!767218) (not e!1094559))))

(assert (=> b!1711469 (= res!767218 (< (size!14862 (_2!10603 (get!5495 lt!653914))) (size!14862 lt!653730)))))

(declare-fun b!1711470 () Bool)

(assert (=> b!1711470 (= e!1094560 call!109472)))

(assert (= (and d!525151 c!280436) b!1711470))

(assert (= (and d!525151 (not c!280436)) b!1711463))

(assert (= (or b!1711470 b!1711463) bm!109467))

(assert (= (and d!525151 (not res!767219)) b!1711462))

(assert (= (and b!1711462 res!767216) b!1711467))

(assert (= (and b!1711467 res!767215) b!1711469))

(assert (= (and b!1711469 res!767218) b!1711466))

(assert (= (and b!1711466 res!767217) b!1711464))

(assert (= (and b!1711464 res!767214) b!1711468))

(assert (= (and b!1711468 res!767220) b!1711465))

(declare-fun m!2114857 () Bool)

(assert (=> b!1711468 m!2114857))

(declare-fun m!2114859 () Bool)

(assert (=> b!1711468 m!2114859))

(assert (=> b!1711468 m!2114859))

(declare-fun m!2114861 () Bool)

(assert (=> b!1711468 m!2114861))

(assert (=> b!1711468 m!2114861))

(declare-fun m!2114863 () Bool)

(assert (=> b!1711468 m!2114863))

(declare-fun m!2114865 () Bool)

(assert (=> d!525151 m!2114865))

(declare-fun m!2114867 () Bool)

(assert (=> d!525151 m!2114867))

(declare-fun m!2114869 () Bool)

(assert (=> d!525151 m!2114869))

(assert (=> d!525151 m!2114613))

(declare-fun m!2114871 () Bool)

(assert (=> b!1711462 m!2114871))

(assert (=> b!1711464 m!2114857))

(declare-fun m!2114873 () Bool)

(assert (=> b!1711464 m!2114873))

(assert (=> b!1711464 m!2114873))

(declare-fun m!2114875 () Bool)

(assert (=> b!1711464 m!2114875))

(assert (=> b!1711466 m!2114857))

(assert (=> b!1711466 m!2114859))

(assert (=> b!1711466 m!2114859))

(assert (=> b!1711466 m!2114861))

(assert (=> b!1711466 m!2114861))

(declare-fun m!2114877 () Bool)

(assert (=> b!1711466 m!2114877))

(declare-fun m!2114879 () Bool)

(assert (=> bm!109467 m!2114879))

(declare-fun m!2114881 () Bool)

(assert (=> b!1711463 m!2114881))

(assert (=> b!1711469 m!2114857))

(declare-fun m!2114883 () Bool)

(assert (=> b!1711469 m!2114883))

(assert (=> b!1711469 m!2114527))

(assert (=> b!1711467 m!2114857))

(assert (=> b!1711467 m!2114859))

(assert (=> b!1711467 m!2114859))

(assert (=> b!1711467 m!2114861))

(assert (=> b!1711465 m!2114857))

(declare-fun m!2114885 () Bool)

(assert (=> b!1711465 m!2114885))

(assert (=> b!1711101 d!525151))

(declare-fun d!525153 () Bool)

(declare-fun list!7542 (Conc!6213) List!18752)

(assert (=> d!525153 (= (list!7538 (charsOf!1950 token!523)) (list!7542 (c!280381 (charsOf!1950 token!523))))))

(declare-fun bs!401792 () Bool)

(assert (= bs!401792 d!525153))

(declare-fun m!2114887 () Bool)

(assert (=> bs!401792 m!2114887))

(assert (=> b!1711101 d!525153))

(declare-fun d!525155 () Bool)

(declare-fun lt!653919 () BalanceConc!12370)

(assert (=> d!525155 (= (list!7538 lt!653919) (originalCharacters!4115 token!523))))

(assert (=> d!525155 (= lt!653919 (dynLambda!8499 (toChars!4663 (transformation!3301 (rule!5237 token!523))) (value!103751 token!523)))))

(assert (=> d!525155 (= (charsOf!1950 token!523) lt!653919)))

(declare-fun b_lambda!53999 () Bool)

(assert (=> (not b_lambda!53999) (not d!525155)))

(assert (=> d!525155 t!158302))

(declare-fun b_and!123915 () Bool)

(assert (= b_and!123893 (and (=> t!158302 result!121338) b_and!123915)))

(assert (=> d!525155 t!158304))

(declare-fun b_and!123917 () Bool)

(assert (= b_and!123895 (and (=> t!158304 result!121342) b_and!123917)))

(assert (=> d!525155 t!158306))

(declare-fun b_and!123919 () Bool)

(assert (= b_and!123897 (and (=> t!158306 result!121344) b_and!123919)))

(declare-fun m!2114889 () Bool)

(assert (=> d!525155 m!2114889))

(assert (=> d!525155 m!2114501))

(assert (=> b!1711101 d!525155))

(declare-fun d!525157 () Bool)

(declare-fun lt!653922 () Bool)

(declare-fun content!2658 (List!18753) (InoxSet Rule!6402))

(assert (=> d!525157 (= lt!653922 (select (content!2658 rules!3447) rule!422))))

(declare-fun e!1094566 () Bool)

(assert (=> d!525157 (= lt!653922 e!1094566)))

(declare-fun res!767226 () Bool)

(assert (=> d!525157 (=> (not res!767226) (not e!1094566))))

(assert (=> d!525157 (= res!767226 ((_ is Cons!18683) rules!3447))))

(assert (=> d!525157 (= (contains!3321 rules!3447 rule!422) lt!653922)))

(declare-fun b!1711475 () Bool)

(declare-fun e!1094567 () Bool)

(assert (=> b!1711475 (= e!1094566 e!1094567)))

(declare-fun res!767225 () Bool)

(assert (=> b!1711475 (=> res!767225 e!1094567)))

(assert (=> b!1711475 (= res!767225 (= (h!24084 rules!3447) rule!422))))

(declare-fun b!1711476 () Bool)

(assert (=> b!1711476 (= e!1094567 (contains!3321 (t!158300 rules!3447) rule!422))))

(assert (= (and d!525157 res!767226) b!1711475))

(assert (= (and b!1711475 (not res!767225)) b!1711476))

(declare-fun m!2114891 () Bool)

(assert (=> d!525157 m!2114891))

(declare-fun m!2114893 () Bool)

(assert (=> d!525157 m!2114893))

(declare-fun m!2114895 () Bool)

(assert (=> b!1711476 m!2114895))

(assert (=> b!1711100 d!525157))

(declare-fun d!525159 () Bool)

(declare-fun c!280439 () Bool)

(assert (=> d!525159 (= c!280439 (isEmpty!11737 (++!5126 lt!653730 (Cons!18682 (head!3836 suffix!1421) Nil!18682))))))

(declare-fun e!1094570 () Bool)

(assert (=> d!525159 (= (prefixMatch!514 (rulesRegex!659 thiss!24550 rules!3447) (++!5126 lt!653730 (Cons!18682 (head!3836 suffix!1421) Nil!18682))) e!1094570)))

(declare-fun b!1711481 () Bool)

(declare-fun lostCause!500 (Regex!4629) Bool)

(assert (=> b!1711481 (= e!1094570 (not (lostCause!500 (rulesRegex!659 thiss!24550 rules!3447))))))

(declare-fun b!1711482 () Bool)

(assert (=> b!1711482 (= e!1094570 (prefixMatch!514 (derivativeStep!1158 (rulesRegex!659 thiss!24550 rules!3447) (head!3836 (++!5126 lt!653730 (Cons!18682 (head!3836 suffix!1421) Nil!18682)))) (tail!2553 (++!5126 lt!653730 (Cons!18682 (head!3836 suffix!1421) Nil!18682)))))))

(assert (= (and d!525159 c!280439) b!1711481))

(assert (= (and d!525159 (not c!280439)) b!1711482))

(assert (=> d!525159 m!2114455))

(declare-fun m!2114897 () Bool)

(assert (=> d!525159 m!2114897))

(assert (=> b!1711481 m!2114451))

(declare-fun m!2114899 () Bool)

(assert (=> b!1711481 m!2114899))

(assert (=> b!1711482 m!2114455))

(declare-fun m!2114901 () Bool)

(assert (=> b!1711482 m!2114901))

(assert (=> b!1711482 m!2114451))

(assert (=> b!1711482 m!2114901))

(declare-fun m!2114903 () Bool)

(assert (=> b!1711482 m!2114903))

(assert (=> b!1711482 m!2114455))

(declare-fun m!2114905 () Bool)

(assert (=> b!1711482 m!2114905))

(assert (=> b!1711482 m!2114903))

(assert (=> b!1711482 m!2114905))

(declare-fun m!2114907 () Bool)

(assert (=> b!1711482 m!2114907))

(assert (=> b!1711099 d!525159))

(declare-fun d!525161 () Bool)

(declare-fun lt!653925 () Unit!32513)

(declare-fun lemma!314 (List!18753 LexerInterface!2930 List!18753) Unit!32513)

(assert (=> d!525161 (= lt!653925 (lemma!314 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68852 () Int)

(declare-datatypes ((List!18758 0))(
  ( (Nil!18688) (Cons!18688 (h!24089 Regex!4629) (t!158321 List!18758)) )
))
(declare-fun generalisedUnion!322 (List!18758) Regex!4629)

(declare-fun map!3844 (List!18753 Int) List!18758)

(assert (=> d!525161 (= (rulesRegex!659 thiss!24550 rules!3447) (generalisedUnion!322 (map!3844 rules!3447 lambda!68852)))))

(declare-fun bs!401793 () Bool)

(assert (= bs!401793 d!525161))

(declare-fun m!2114909 () Bool)

(assert (=> bs!401793 m!2114909))

(declare-fun m!2114911 () Bool)

(assert (=> bs!401793 m!2114911))

(assert (=> bs!401793 m!2114911))

(declare-fun m!2114913 () Bool)

(assert (=> bs!401793 m!2114913))

(assert (=> b!1711099 d!525161))

(declare-fun d!525163 () Bool)

(declare-fun e!1094572 () Bool)

(assert (=> d!525163 e!1094572))

(declare-fun res!767228 () Bool)

(assert (=> d!525163 (=> (not res!767228) (not e!1094572))))

(declare-fun lt!653926 () List!18752)

(assert (=> d!525163 (= res!767228 (= (content!2657 lt!653926) ((_ map or) (content!2657 lt!653730) (content!2657 (Cons!18682 (head!3836 suffix!1421) Nil!18682)))))))

(declare-fun e!1094571 () List!18752)

(assert (=> d!525163 (= lt!653926 e!1094571)))

(declare-fun c!280440 () Bool)

(assert (=> d!525163 (= c!280440 ((_ is Nil!18682) lt!653730))))

(assert (=> d!525163 (= (++!5126 lt!653730 (Cons!18682 (head!3836 suffix!1421) Nil!18682)) lt!653926)))

(declare-fun b!1711484 () Bool)

(assert (=> b!1711484 (= e!1094571 (Cons!18682 (h!24083 lt!653730) (++!5126 (t!158299 lt!653730) (Cons!18682 (head!3836 suffix!1421) Nil!18682))))))

(declare-fun b!1711486 () Bool)

(assert (=> b!1711486 (= e!1094572 (or (not (= (Cons!18682 (head!3836 suffix!1421) Nil!18682) Nil!18682)) (= lt!653926 lt!653730)))))

(declare-fun b!1711485 () Bool)

(declare-fun res!767227 () Bool)

(assert (=> b!1711485 (=> (not res!767227) (not e!1094572))))

(assert (=> b!1711485 (= res!767227 (= (size!14862 lt!653926) (+ (size!14862 lt!653730) (size!14862 (Cons!18682 (head!3836 suffix!1421) Nil!18682)))))))

(declare-fun b!1711483 () Bool)

(assert (=> b!1711483 (= e!1094571 (Cons!18682 (head!3836 suffix!1421) Nil!18682))))

(assert (= (and d!525163 c!280440) b!1711483))

(assert (= (and d!525163 (not c!280440)) b!1711484))

(assert (= (and d!525163 res!767228) b!1711485))

(assert (= (and b!1711485 res!767227) b!1711486))

(declare-fun m!2114915 () Bool)

(assert (=> d!525163 m!2114915))

(assert (=> d!525163 m!2114519))

(declare-fun m!2114917 () Bool)

(assert (=> d!525163 m!2114917))

(declare-fun m!2114919 () Bool)

(assert (=> b!1711484 m!2114919))

(declare-fun m!2114921 () Bool)

(assert (=> b!1711485 m!2114921))

(assert (=> b!1711485 m!2114527))

(declare-fun m!2114923 () Bool)

(assert (=> b!1711485 m!2114923))

(assert (=> b!1711099 d!525163))

(declare-fun d!525165 () Bool)

(assert (=> d!525165 (= (head!3836 suffix!1421) (h!24083 suffix!1421))))

(assert (=> b!1711099 d!525165))

(declare-fun d!525167 () Bool)

(declare-fun res!767231 () Bool)

(declare-fun e!1094575 () Bool)

(assert (=> d!525167 (=> (not res!767231) (not e!1094575))))

(declare-fun rulesValid!1231 (LexerInterface!2930 List!18753) Bool)

(assert (=> d!525167 (= res!767231 (rulesValid!1231 thiss!24550 rules!3447))))

(assert (=> d!525167 (= (rulesInvariant!2599 thiss!24550 rules!3447) e!1094575)))

(declare-fun b!1711489 () Bool)

(declare-datatypes ((List!18759 0))(
  ( (Nil!18689) (Cons!18689 (h!24090 String!21287) (t!158322 List!18759)) )
))
(declare-fun noDuplicateTag!1231 (LexerInterface!2930 List!18753 List!18759) Bool)

(assert (=> b!1711489 (= e!1094575 (noDuplicateTag!1231 thiss!24550 rules!3447 Nil!18689))))

(assert (= (and d!525167 res!767231) b!1711489))

(declare-fun m!2114925 () Bool)

(assert (=> d!525167 m!2114925))

(declare-fun m!2114927 () Bool)

(assert (=> b!1711489 m!2114927))

(assert (=> b!1711109 d!525167))

(declare-fun b!1711494 () Bool)

(declare-fun e!1094578 () Bool)

(declare-fun tp!489048 () Bool)

(assert (=> b!1711494 (= e!1094578 (and tp_is_empty!7501 tp!489048))))

(assert (=> b!1711108 (= tp!488991 e!1094578)))

(assert (= (and b!1711108 ((_ is Cons!18682) (t!158299 suffix!1421))) b!1711494))

(declare-fun b!1711505 () Bool)

(declare-fun e!1094581 () Bool)

(assert (=> b!1711505 (= e!1094581 tp_is_empty!7501)))

(declare-fun b!1711506 () Bool)

(declare-fun tp!489062 () Bool)

(declare-fun tp!489061 () Bool)

(assert (=> b!1711506 (= e!1094581 (and tp!489062 tp!489061))))

(declare-fun b!1711508 () Bool)

(declare-fun tp!489060 () Bool)

(declare-fun tp!489063 () Bool)

(assert (=> b!1711508 (= e!1094581 (and tp!489060 tp!489063))))

(declare-fun b!1711507 () Bool)

(declare-fun tp!489059 () Bool)

(assert (=> b!1711507 (= e!1094581 tp!489059)))

(assert (=> b!1711107 (= tp!488987 e!1094581)))

(assert (= (and b!1711107 ((_ is ElementMatch!4629) (regex!3301 rule!422))) b!1711505))

(assert (= (and b!1711107 ((_ is Concat!8021) (regex!3301 rule!422))) b!1711506))

(assert (= (and b!1711107 ((_ is Star!4629) (regex!3301 rule!422))) b!1711507))

(assert (= (and b!1711107 ((_ is Union!4629) (regex!3301 rule!422))) b!1711508))

(declare-fun b!1711509 () Bool)

(declare-fun e!1094582 () Bool)

(assert (=> b!1711509 (= e!1094582 tp_is_empty!7501)))

(declare-fun b!1711510 () Bool)

(declare-fun tp!489067 () Bool)

(declare-fun tp!489066 () Bool)

(assert (=> b!1711510 (= e!1094582 (and tp!489067 tp!489066))))

(declare-fun b!1711512 () Bool)

(declare-fun tp!489065 () Bool)

(declare-fun tp!489068 () Bool)

(assert (=> b!1711512 (= e!1094582 (and tp!489065 tp!489068))))

(declare-fun b!1711511 () Bool)

(declare-fun tp!489064 () Bool)

(assert (=> b!1711511 (= e!1094582 tp!489064)))

(assert (=> b!1711102 (= tp!488995 e!1094582)))

(assert (= (and b!1711102 ((_ is ElementMatch!4629) (regex!3301 (h!24084 rules!3447)))) b!1711509))

(assert (= (and b!1711102 ((_ is Concat!8021) (regex!3301 (h!24084 rules!3447)))) b!1711510))

(assert (= (and b!1711102 ((_ is Star!4629) (regex!3301 (h!24084 rules!3447)))) b!1711511))

(assert (= (and b!1711102 ((_ is Union!4629) (regex!3301 (h!24084 rules!3447)))) b!1711512))

(declare-fun b!1711513 () Bool)

(declare-fun e!1094583 () Bool)

(assert (=> b!1711513 (= e!1094583 tp_is_empty!7501)))

(declare-fun b!1711514 () Bool)

(declare-fun tp!489072 () Bool)

(declare-fun tp!489071 () Bool)

(assert (=> b!1711514 (= e!1094583 (and tp!489072 tp!489071))))

(declare-fun b!1711516 () Bool)

(declare-fun tp!489070 () Bool)

(declare-fun tp!489073 () Bool)

(assert (=> b!1711516 (= e!1094583 (and tp!489070 tp!489073))))

(declare-fun b!1711515 () Bool)

(declare-fun tp!489069 () Bool)

(assert (=> b!1711515 (= e!1094583 tp!489069)))

(assert (=> b!1711106 (= tp!488996 e!1094583)))

(assert (= (and b!1711106 ((_ is ElementMatch!4629) (regex!3301 (rule!5237 token!523)))) b!1711513))

(assert (= (and b!1711106 ((_ is Concat!8021) (regex!3301 (rule!5237 token!523)))) b!1711514))

(assert (= (and b!1711106 ((_ is Star!4629) (regex!3301 (rule!5237 token!523)))) b!1711515))

(assert (= (and b!1711106 ((_ is Union!4629) (regex!3301 (rule!5237 token!523)))) b!1711516))

(declare-fun b!1711517 () Bool)

(declare-fun e!1094584 () Bool)

(declare-fun tp!489074 () Bool)

(assert (=> b!1711517 (= e!1094584 (and tp_is_empty!7501 tp!489074))))

(assert (=> b!1711105 (= tp!488997 e!1094584)))

(assert (= (and b!1711105 ((_ is Cons!18682) (originalCharacters!4115 token!523))) b!1711517))

(declare-fun b!1711528 () Bool)

(declare-fun b_free!46419 () Bool)

(declare-fun b_next!47123 () Bool)

(assert (=> b!1711528 (= b_free!46419 (not b_next!47123))))

(declare-fun tp!489086 () Bool)

(declare-fun b_and!123921 () Bool)

(assert (=> b!1711528 (= tp!489086 b_and!123921)))

(declare-fun b_free!46421 () Bool)

(declare-fun b_next!47125 () Bool)

(assert (=> b!1711528 (= b_free!46421 (not b_next!47125))))

(declare-fun tb!101001 () Bool)

(declare-fun t!158318 () Bool)

(assert (=> (and b!1711528 (= (toChars!4663 (transformation!3301 (h!24084 (t!158300 rules!3447)))) (toChars!4663 (transformation!3301 (rule!5237 token!523)))) t!158318) tb!101001))

(declare-fun result!121368 () Bool)

(assert (= result!121368 result!121338))

(assert (=> b!1711142 t!158318))

(assert (=> d!525155 t!158318))

(declare-fun b_and!123923 () Bool)

(declare-fun tp!489085 () Bool)

(assert (=> b!1711528 (= tp!489085 (and (=> t!158318 result!121368) b_and!123923))))

(declare-fun e!1094594 () Bool)

(assert (=> b!1711528 (= e!1094594 (and tp!489086 tp!489085))))

(declare-fun e!1094593 () Bool)

(declare-fun tp!489083 () Bool)

(declare-fun b!1711527 () Bool)

(assert (=> b!1711527 (= e!1094593 (and tp!489083 (inv!24097 (tag!3597 (h!24084 (t!158300 rules!3447)))) (inv!24101 (transformation!3301 (h!24084 (t!158300 rules!3447)))) e!1094594))))

(declare-fun b!1711526 () Bool)

(declare-fun e!1094595 () Bool)

(declare-fun tp!489084 () Bool)

(assert (=> b!1711526 (= e!1094595 (and e!1094593 tp!489084))))

(assert (=> b!1711110 (= tp!488988 e!1094595)))

(assert (= b!1711527 b!1711528))

(assert (= b!1711526 b!1711527))

(assert (= (and b!1711110 ((_ is Cons!18683) (t!158300 rules!3447))) b!1711526))

(declare-fun m!2114929 () Bool)

(assert (=> b!1711527 m!2114929))

(declare-fun m!2114931 () Bool)

(assert (=> b!1711527 m!2114931))

(declare-fun b_lambda!54001 () Bool)

(assert (= b_lambda!53999 (or (and b!1711094 b_free!46405 (= (toChars!4663 (transformation!3301 (h!24084 rules!3447))) (toChars!4663 (transformation!3301 (rule!5237 token!523))))) (and b!1711096 b_free!46409) (and b!1711095 b_free!46413 (= (toChars!4663 (transformation!3301 rule!422)) (toChars!4663 (transformation!3301 (rule!5237 token!523))))) (and b!1711528 b_free!46421 (= (toChars!4663 (transformation!3301 (h!24084 (t!158300 rules!3447)))) (toChars!4663 (transformation!3301 (rule!5237 token!523))))) b_lambda!54001)))

(declare-fun b_lambda!54003 () Bool)

(assert (= b_lambda!53989 (or (and b!1711094 b_free!46405 (= (toChars!4663 (transformation!3301 (h!24084 rules!3447))) (toChars!4663 (transformation!3301 (rule!5237 token!523))))) (and b!1711096 b_free!46409) (and b!1711095 b_free!46413 (= (toChars!4663 (transformation!3301 rule!422)) (toChars!4663 (transformation!3301 (rule!5237 token!523))))) (and b!1711528 b_free!46421 (= (toChars!4663 (transformation!3301 (h!24084 (t!158300 rules!3447)))) (toChars!4663 (transformation!3301 (rule!5237 token!523))))) b_lambda!54003)))

(check-sat b_and!123921 (not b_next!47123) (not b!1711465) (not b!1711174) (not b!1711164) b_and!123889 (not b!1711220) (not b!1711463) (not b!1711221) (not b!1711223) (not b!1711517) (not b!1711137) (not b!1711482) (not d!525151) (not b!1711526) b_and!123915 (not b!1711442) (not b!1711175) (not b_lambda!54001) (not bm!109466) (not b!1711464) (not d!525159) (not d!525167) (not d!525141) (not b!1711462) b_and!123919 (not b!1711161) b_and!123885 (not b!1711409) (not b!1711510) (not b_next!47113) (not d!525067) (not d!525073) (not d!525079) (not b!1711445) (not b!1711511) (not d!525161) (not d!525061) (not b_next!47115) (not b_next!47111) (not b!1711143) (not b!1711508) (not b_next!47125) (not d!525143) (not d!525149) b_and!123881 b_and!123923 (not b_next!47109) (not b!1711467) (not b!1711187) (not d!525147) (not b_lambda!54003) (not d!525153) (not b!1711222) (not b_next!47107) (not b_next!47117) (not b!1711188) (not b!1711224) (not b!1711469) (not b!1711468) (not b!1711219) (not b!1711411) (not d!525083) (not b!1711149) (not b!1711452) (not b!1711489) (not b!1711461) b_and!123917 (not b!1711515) (not d!525163) (not b!1711466) (not b!1711514) (not b!1711451) (not d!525071) (not b!1711148) (not b!1711494) (not bm!109456) (not b!1711186) (not d!525157) (not b!1711506) (not b!1711142) (not b!1711225) (not bm!109467) (not b!1711481) tp_is_empty!7501 (not b!1711476) (not b!1711485) (not b!1711516) (not d!525063) (not b!1711459) (not b!1711484) (not d!525139) (not d!525155) (not b!1711512) (not b!1711226) (not b!1711507) (not b!1711527) (not d!525077) (not b!1711410) (not b!1711450) (not b!1711447) (not tb!100987) (not b!1711160))
(check-sat b_and!123921 b_and!123915 b_and!123919 b_and!123885 (not b_next!47123) (not b_next!47113) (not b_next!47125) b_and!123917 b_and!123889 (not b_next!47115) (not b_next!47111) b_and!123881 b_and!123923 (not b_next!47109) (not b_next!47107) (not b_next!47117))
