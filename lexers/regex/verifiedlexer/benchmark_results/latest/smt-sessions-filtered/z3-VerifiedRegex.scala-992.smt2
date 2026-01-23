; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49788 () Bool)

(assert start!49788)

(declare-fun b!538707 () Bool)

(declare-fun b_free!14809 () Bool)

(declare-fun b_next!14825 () Bool)

(assert (=> b!538707 (= b_free!14809 (not b_next!14825))))

(declare-fun tp!171756 () Bool)

(declare-fun b_and!52683 () Bool)

(assert (=> b!538707 (= tp!171756 b_and!52683)))

(declare-fun b_free!14811 () Bool)

(declare-fun b_next!14827 () Bool)

(assert (=> b!538707 (= b_free!14811 (not b_next!14827))))

(declare-fun tp!171760 () Bool)

(declare-fun b_and!52685 () Bool)

(assert (=> b!538707 (= tp!171760 b_and!52685)))

(declare-fun b!538703 () Bool)

(declare-fun b_free!14813 () Bool)

(declare-fun b_next!14829 () Bool)

(assert (=> b!538703 (= b_free!14813 (not b_next!14829))))

(declare-fun tp!171759 () Bool)

(declare-fun b_and!52687 () Bool)

(assert (=> b!538703 (= tp!171759 b_and!52687)))

(declare-fun b_free!14815 () Bool)

(declare-fun b_next!14831 () Bool)

(assert (=> b!538703 (= b_free!14815 (not b_next!14831))))

(declare-fun tp!171763 () Bool)

(declare-fun b_and!52689 () Bool)

(assert (=> b!538703 (= tp!171763 b_and!52689)))

(declare-fun b!538698 () Bool)

(declare-fun e!325152 () Bool)

(declare-fun e!325142 () Bool)

(assert (=> b!538698 (= e!325152 e!325142)))

(declare-fun res!228503 () Bool)

(assert (=> b!538698 (=> (not res!228503) (not e!325142))))

(declare-datatypes ((C!3532 0))(
  ( (C!3533 (val!1992 Int)) )
))
(declare-datatypes ((Regex!1305 0))(
  ( (ElementMatch!1305 (c!102236 C!3532)) (Concat!2300 (regOne!3122 Regex!1305) (regTwo!3122 Regex!1305)) (EmptyExpr!1305) (Star!1305 (reg!1634 Regex!1305)) (EmptyLang!1305) (Union!1305 (regOne!3123 Regex!1305) (regTwo!3123 Regex!1305)) )
))
(declare-datatypes ((List!5253 0))(
  ( (Nil!5243) (Cons!5243 (h!10644 (_ BitVec 16)) (t!74302 List!5253)) )
))
(declare-datatypes ((List!5254 0))(
  ( (Nil!5244) (Cons!5244 (h!10645 C!3532) (t!74303 List!5254)) )
))
(declare-datatypes ((IArray!3377 0))(
  ( (IArray!3378 (innerList!1746 List!5254)) )
))
(declare-datatypes ((Conc!1688 0))(
  ( (Node!1688 (left!4378 Conc!1688) (right!4708 Conc!1688) (csize!3606 Int) (cheight!1899 Int)) (Leaf!2681 (xs!4325 IArray!3377) (csize!3607 Int)) (Empty!1688) )
))
(declare-datatypes ((BalanceConc!3384 0))(
  ( (BalanceConc!3385 (c!102237 Conc!1688)) )
))
(declare-datatypes ((TokenValue!995 0))(
  ( (FloatLiteralValue!1990 (text!7410 List!5253)) (TokenValueExt!994 (__x!3888 Int)) (Broken!4975 (value!32514 List!5253)) (Object!1004) (End!995) (Def!995) (Underscore!995) (Match!995) (Else!995) (Error!995) (Case!995) (If!995) (Extends!995) (Abstract!995) (Class!995) (Val!995) (DelimiterValue!1990 (del!1055 List!5253)) (KeywordValue!1001 (value!32515 List!5253)) (CommentValue!1990 (value!32516 List!5253)) (WhitespaceValue!1990 (value!32517 List!5253)) (IndentationValue!995 (value!32518 List!5253)) (String!6718) (Int32!995) (Broken!4976 (value!32519 List!5253)) (Boolean!996) (Unit!9162) (OperatorValue!998 (op!1055 List!5253)) (IdentifierValue!1990 (value!32520 List!5253)) (IdentifierValue!1991 (value!32521 List!5253)) (WhitespaceValue!1991 (value!32522 List!5253)) (True!1990) (False!1990) (Broken!4977 (value!32523 List!5253)) (Broken!4978 (value!32524 List!5253)) (True!1991) (RightBrace!995) (RightBracket!995) (Colon!995) (Null!995) (Comma!995) (LeftBracket!995) (False!1991) (LeftBrace!995) (ImaginaryLiteralValue!995 (text!7411 List!5253)) (StringLiteralValue!2985 (value!32525 List!5253)) (EOFValue!995 (value!32526 List!5253)) (IdentValue!995 (value!32527 List!5253)) (DelimiterValue!1991 (value!32528 List!5253)) (DedentValue!995 (value!32529 List!5253)) (NewLineValue!995 (value!32530 List!5253)) (IntegerValue!2985 (value!32531 (_ BitVec 32)) (text!7412 List!5253)) (IntegerValue!2986 (value!32532 Int) (text!7413 List!5253)) (Times!995) (Or!995) (Equal!995) (Minus!995) (Broken!4979 (value!32533 List!5253)) (And!995) (Div!995) (LessEqual!995) (Mod!995) (Concat!2301) (Not!995) (Plus!995) (SpaceValue!995 (value!32534 List!5253)) (IntegerValue!2987 (value!32535 Int) (text!7414 List!5253)) (StringLiteralValue!2986 (text!7415 List!5253)) (FloatLiteralValue!1991 (text!7416 List!5253)) (BytesLiteralValue!995 (value!32536 List!5253)) (CommentValue!1991 (value!32537 List!5253)) (StringLiteralValue!2987 (value!32538 List!5253)) (ErrorTokenValue!995 (msg!1056 List!5253)) )
))
(declare-datatypes ((String!6719 0))(
  ( (String!6720 (value!32539 String)) )
))
(declare-datatypes ((TokenValueInjection!1758 0))(
  ( (TokenValueInjection!1759 (toValue!1818 Int) (toChars!1677 Int)) )
))
(declare-datatypes ((Rule!1742 0))(
  ( (Rule!1743 (regex!971 Regex!1305) (tag!1233 String!6719) (isSeparator!971 Bool) (transformation!971 TokenValueInjection!1758)) )
))
(declare-datatypes ((Token!1678 0))(
  ( (Token!1679 (value!32540 TokenValue!995) (rule!1679 Rule!1742) (size!4218 Int) (originalCharacters!1010 List!5254)) )
))
(declare-datatypes ((tuple2!6312 0))(
  ( (tuple2!6313 (_1!3420 Token!1678) (_2!3420 List!5254)) )
))
(declare-datatypes ((Option!1321 0))(
  ( (None!1320) (Some!1320 (v!16129 tuple2!6312)) )
))
(declare-fun lt!223588 () Option!1321)

(declare-fun isDefined!1133 (Option!1321) Bool)

(assert (=> b!538698 (= res!228503 (isDefined!1133 lt!223588))))

(declare-fun b!538699 () Bool)

(declare-fun res!228491 () Bool)

(declare-fun e!325145 () Bool)

(assert (=> b!538699 (=> (not res!228491) (not e!325145))))

(declare-datatypes ((List!5255 0))(
  ( (Nil!5245) (Cons!5245 (h!10646 Rule!1742) (t!74304 List!5255)) )
))
(declare-fun rules!3103 () List!5255)

(declare-fun isEmpty!3790 (List!5255) Bool)

(assert (=> b!538699 (= res!228491 (not (isEmpty!3790 rules!3103)))))

(declare-fun b!538700 () Bool)

(declare-fun e!325154 () Bool)

(assert (=> b!538700 (= e!325145 e!325154)))

(declare-fun res!228485 () Bool)

(assert (=> b!538700 (=> (not res!228485) (not e!325154))))

(declare-fun lt!223583 () List!5254)

(declare-fun input!2705 () List!5254)

(assert (=> b!538700 (= res!228485 (= lt!223583 input!2705))))

(declare-fun token!491 () Token!1678)

(declare-fun list!2179 (BalanceConc!3384) List!5254)

(declare-fun charsOf!600 (Token!1678) BalanceConc!3384)

(assert (=> b!538700 (= lt!223583 (list!2179 (charsOf!600 token!491)))))

(declare-fun b!538701 () Bool)

(declare-fun res!228499 () Bool)

(declare-fun e!325140 () Bool)

(assert (=> b!538701 (=> res!228499 e!325140)))

(declare-fun getSuffix!136 (List!5254 List!5254) List!5254)

(assert (=> b!538701 (= res!228499 (not (= (getSuffix!136 input!2705 input!2705) Nil!5244)))))

(declare-fun b!538702 () Bool)

(declare-fun suffix!1342 () List!5254)

(declare-fun e!325153 () Bool)

(declare-fun lt!223560 () TokenValue!995)

(declare-fun lt!223577 () List!5254)

(declare-fun lt!223578 () Int)

(assert (=> b!538702 (= e!325153 (and (= (size!4218 token!491) lt!223578) (= (originalCharacters!1010 token!491) lt!223583) (= (tuple2!6313 token!491 suffix!1342) (tuple2!6313 (Token!1679 lt!223560 (rule!1679 token!491) lt!223578 lt!223583) lt!223577))))))

(declare-fun e!325160 () Bool)

(assert (=> b!538703 (= e!325160 (and tp!171759 tp!171763))))

(declare-fun b!538704 () Bool)

(declare-fun e!325151 () Bool)

(assert (=> b!538704 (= e!325151 e!325140)))

(declare-fun res!228505 () Bool)

(assert (=> b!538704 (=> res!228505 e!325140)))

(declare-fun lt!223582 () Int)

(assert (=> b!538704 (= res!228505 (>= lt!223582 lt!223578))))

(declare-fun e!325161 () Bool)

(assert (=> b!538704 e!325161))

(declare-fun res!228492 () Bool)

(assert (=> b!538704 (=> (not res!228492) (not e!325161))))

(declare-fun lt!223580 () List!5254)

(declare-datatypes ((LexerInterface!857 0))(
  ( (LexerInterfaceExt!854 (__x!3889 Int)) (Lexer!855) )
))
(declare-fun thiss!22590 () LexerInterface!857)

(declare-fun maxPrefixOneRule!270 (LexerInterface!857 Rule!1742 List!5254) Option!1321)

(assert (=> b!538704 (= res!228492 (= (maxPrefixOneRule!270 thiss!22590 (rule!1679 token!491) lt!223580) (Some!1320 (tuple2!6313 (Token!1679 lt!223560 (rule!1679 token!491) lt!223578 lt!223583) suffix!1342))))))

(declare-datatypes ((Unit!9163 0))(
  ( (Unit!9164) )
))
(declare-fun lt!223562 () Unit!9163)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!22 (LexerInterface!857 List!5255 List!5254 List!5254 List!5254 Rule!1742) Unit!9163)

(assert (=> b!538704 (= lt!223562 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!22 thiss!22590 rules!3103 lt!223583 lt!223580 suffix!1342 (rule!1679 token!491)))))

(declare-fun lt!223585 () List!5254)

(declare-fun lt!223571 () TokenValue!995)

(assert (=> b!538704 (= (maxPrefixOneRule!270 thiss!22590 (rule!1679 (_1!3420 (v!16129 lt!223588))) input!2705) (Some!1320 (tuple2!6313 (Token!1679 lt!223571 (rule!1679 (_1!3420 (v!16129 lt!223588))) lt!223582 lt!223585) (_2!3420 (v!16129 lt!223588)))))))

(declare-fun lt!223573 () Unit!9163)

(assert (=> b!538704 (= lt!223573 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!22 thiss!22590 rules!3103 lt!223585 input!2705 (_2!3420 (v!16129 lt!223588)) (rule!1679 (_1!3420 (v!16129 lt!223588)))))))

(assert (=> b!538704 e!325153))

(declare-fun res!228506 () Bool)

(assert (=> b!538704 (=> (not res!228506) (not e!325153))))

(assert (=> b!538704 (= res!228506 (= (value!32540 token!491) lt!223560))))

(declare-fun apply!1246 (TokenValueInjection!1758 BalanceConc!3384) TokenValue!995)

(declare-fun seqFromList!1169 (List!5254) BalanceConc!3384)

(assert (=> b!538704 (= lt!223560 (apply!1246 (transformation!971 (rule!1679 token!491)) (seqFromList!1169 lt!223583)))))

(assert (=> b!538704 (= suffix!1342 lt!223577)))

(declare-fun lt!223570 () Unit!9163)

(declare-fun lemmaSamePrefixThenSameSuffix!340 (List!5254 List!5254 List!5254 List!5254 List!5254) Unit!9163)

(assert (=> b!538704 (= lt!223570 (lemmaSamePrefixThenSameSuffix!340 lt!223583 suffix!1342 lt!223583 lt!223577 lt!223580))))

(assert (=> b!538704 (= lt!223577 (getSuffix!136 lt!223580 lt!223583))))

(declare-fun b!538705 () Bool)

(declare-fun e!325141 () Bool)

(declare-fun e!325159 () Bool)

(assert (=> b!538705 (= e!325141 e!325159)))

(declare-fun res!228498 () Bool)

(assert (=> b!538705 (=> (not res!228498) (not e!325159))))

(get-info :version)

(assert (=> b!538705 (= res!228498 ((_ is Some!1320) lt!223588))))

(declare-fun maxPrefix!555 (LexerInterface!857 List!5255 List!5254) Option!1321)

(assert (=> b!538705 (= lt!223588 (maxPrefix!555 thiss!22590 rules!3103 input!2705))))

(declare-fun b!538706 () Bool)

(declare-fun e!325144 () Bool)

(declare-fun tp_is_empty!2965 () Bool)

(declare-fun tp!171762 () Bool)

(assert (=> b!538706 (= e!325144 (and tp_is_empty!2965 tp!171762))))

(declare-fun e!325156 () Bool)

(assert (=> b!538707 (= e!325156 (and tp!171756 tp!171760))))

(declare-fun b!538708 () Bool)

(declare-fun e!325143 () Bool)

(assert (=> b!538708 (= e!325143 e!325141)))

(declare-fun res!228483 () Bool)

(assert (=> b!538708 (=> (not res!228483) (not e!325141))))

(declare-fun lt!223563 () tuple2!6312)

(assert (=> b!538708 (= res!228483 (and (= (_1!3420 lt!223563) token!491) (= (_2!3420 lt!223563) suffix!1342)))))

(declare-fun lt!223566 () Option!1321)

(declare-fun get!1971 (Option!1321) tuple2!6312)

(assert (=> b!538708 (= lt!223563 (get!1971 lt!223566))))

(declare-fun b!538709 () Bool)

(declare-fun e!325146 () Bool)

(declare-fun e!325139 () Bool)

(declare-fun tp!171758 () Bool)

(assert (=> b!538709 (= e!325146 (and e!325139 tp!171758))))

(declare-fun b!538710 () Bool)

(assert (=> b!538710 (= e!325154 e!325143)))

(declare-fun res!228490 () Bool)

(assert (=> b!538710 (=> (not res!228490) (not e!325143))))

(assert (=> b!538710 (= res!228490 (isDefined!1133 lt!223566))))

(assert (=> b!538710 (= lt!223566 (maxPrefix!555 thiss!22590 rules!3103 lt!223580))))

(declare-fun ++!1459 (List!5254 List!5254) List!5254)

(assert (=> b!538710 (= lt!223580 (++!1459 input!2705 suffix!1342))))

(declare-fun b!538711 () Bool)

(declare-fun res!228487 () Bool)

(assert (=> b!538711 (=> res!228487 e!325140)))

(declare-fun isPrefix!613 (List!5254 List!5254) Bool)

(assert (=> b!538711 (= res!228487 (not (isPrefix!613 lt!223585 input!2705)))))

(declare-fun b!538712 () Bool)

(declare-fun e!325138 () Bool)

(assert (=> b!538712 (= e!325138 (not e!325151))))

(declare-fun res!228486 () Bool)

(assert (=> b!538712 (=> res!228486 e!325151)))

(declare-fun lt!223586 () List!5254)

(assert (=> b!538712 (= res!228486 (not (isPrefix!613 input!2705 lt!223586)))))

(assert (=> b!538712 (isPrefix!613 lt!223583 lt!223586)))

(declare-fun lt!223591 () Unit!9163)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!464 (List!5254 List!5254) Unit!9163)

(assert (=> b!538712 (= lt!223591 (lemmaConcatTwoListThenFirstIsPrefix!464 lt!223583 suffix!1342))))

(assert (=> b!538712 (isPrefix!613 input!2705 lt!223580)))

(declare-fun lt!223572 () Unit!9163)

(assert (=> b!538712 (= lt!223572 (lemmaConcatTwoListThenFirstIsPrefix!464 input!2705 suffix!1342))))

(declare-fun e!325157 () Bool)

(assert (=> b!538712 e!325157))

(declare-fun res!228493 () Bool)

(assert (=> b!538712 (=> (not res!228493) (not e!325157))))

(assert (=> b!538712 (= res!228493 (= (value!32540 (_1!3420 (v!16129 lt!223588))) lt!223571))))

(assert (=> b!538712 (= lt!223571 (apply!1246 (transformation!971 (rule!1679 (_1!3420 (v!16129 lt!223588)))) (seqFromList!1169 lt!223585)))))

(declare-fun lt!223584 () Unit!9163)

(declare-fun lemmaInv!119 (TokenValueInjection!1758) Unit!9163)

(assert (=> b!538712 (= lt!223584 (lemmaInv!119 (transformation!971 (rule!1679 token!491))))))

(declare-fun lt!223565 () Unit!9163)

(assert (=> b!538712 (= lt!223565 (lemmaInv!119 (transformation!971 (rule!1679 (_1!3420 (v!16129 lt!223588))))))))

(declare-fun ruleValid!191 (LexerInterface!857 Rule!1742) Bool)

(assert (=> b!538712 (ruleValid!191 thiss!22590 (rule!1679 token!491))))

(declare-fun lt!223567 () Unit!9163)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!50 (LexerInterface!857 Rule!1742 List!5255) Unit!9163)

(assert (=> b!538712 (= lt!223567 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!50 thiss!22590 (rule!1679 token!491) rules!3103))))

(assert (=> b!538712 (ruleValid!191 thiss!22590 (rule!1679 (_1!3420 (v!16129 lt!223588))))))

(declare-fun lt!223579 () Unit!9163)

(assert (=> b!538712 (= lt!223579 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!50 thiss!22590 (rule!1679 (_1!3420 (v!16129 lt!223588))) rules!3103))))

(assert (=> b!538712 (isPrefix!613 input!2705 input!2705)))

(declare-fun lt!223590 () Unit!9163)

(declare-fun lemmaIsPrefixRefl!353 (List!5254 List!5254) Unit!9163)

(assert (=> b!538712 (= lt!223590 (lemmaIsPrefixRefl!353 input!2705 input!2705))))

(declare-fun lt!223589 () List!5254)

(assert (=> b!538712 (= (_2!3420 (v!16129 lt!223588)) lt!223589)))

(declare-fun lt!223576 () Unit!9163)

(assert (=> b!538712 (= lt!223576 (lemmaSamePrefixThenSameSuffix!340 lt!223585 (_2!3420 (v!16129 lt!223588)) lt!223585 lt!223589 input!2705))))

(assert (=> b!538712 (= lt!223589 (getSuffix!136 input!2705 lt!223585))))

(declare-fun lt!223568 () List!5254)

(assert (=> b!538712 (isPrefix!613 lt!223585 lt!223568)))

(assert (=> b!538712 (= lt!223568 (++!1459 lt!223585 (_2!3420 (v!16129 lt!223588))))))

(declare-fun lt!223574 () Unit!9163)

(assert (=> b!538712 (= lt!223574 (lemmaConcatTwoListThenFirstIsPrefix!464 lt!223585 (_2!3420 (v!16129 lt!223588))))))

(declare-fun lt!223575 () Unit!9163)

(declare-fun lemmaCharactersSize!50 (Token!1678) Unit!9163)

(assert (=> b!538712 (= lt!223575 (lemmaCharactersSize!50 token!491))))

(declare-fun lt!223561 () Unit!9163)

(assert (=> b!538712 (= lt!223561 (lemmaCharactersSize!50 (_1!3420 (v!16129 lt!223588))))))

(declare-fun lt!223581 () Unit!9163)

(declare-fun e!325149 () Unit!9163)

(assert (=> b!538712 (= lt!223581 e!325149)))

(declare-fun c!102235 () Bool)

(assert (=> b!538712 (= c!102235 (> lt!223582 lt!223578))))

(declare-fun size!4219 (List!5254) Int)

(assert (=> b!538712 (= lt!223578 (size!4219 lt!223583))))

(assert (=> b!538712 (= lt!223582 (size!4219 lt!223585))))

(assert (=> b!538712 (= lt!223585 (list!2179 (charsOf!600 (_1!3420 (v!16129 lt!223588)))))))

(declare-fun lt!223564 () tuple2!6312)

(assert (=> b!538712 (= lt!223588 (Some!1320 lt!223564))))

(assert (=> b!538712 (= lt!223564 (tuple2!6313 (_1!3420 (v!16129 lt!223588)) (_2!3420 (v!16129 lt!223588))))))

(declare-fun lt!223587 () Unit!9163)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!56 (List!5254 List!5254 List!5254 List!5254) Unit!9163)

(assert (=> b!538712 (= lt!223587 (lemmaConcatSameAndSameSizesThenSameLists!56 lt!223583 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!538713 () Bool)

(assert (=> b!538713 (= e!325159 e!325138)))

(declare-fun res!228504 () Bool)

(assert (=> b!538713 (=> (not res!228504) (not e!325138))))

(assert (=> b!538713 (= res!228504 (= lt!223586 lt!223580))))

(assert (=> b!538713 (= lt!223586 (++!1459 lt!223583 suffix!1342))))

(declare-fun b!538714 () Bool)

(declare-fun res!228484 () Bool)

(assert (=> b!538714 (=> (not res!228484) (not e!325153))))

(assert (=> b!538714 (= res!228484 (= (size!4218 token!491) (size!4219 (originalCharacters!1010 token!491))))))

(declare-fun res!228501 () Bool)

(assert (=> start!49788 (=> (not res!228501) (not e!325145))))

(assert (=> start!49788 (= res!228501 ((_ is Lexer!855) thiss!22590))))

(assert (=> start!49788 e!325145))

(assert (=> start!49788 e!325144))

(assert (=> start!49788 e!325146))

(declare-fun e!325158 () Bool)

(declare-fun inv!6582 (Token!1678) Bool)

(assert (=> start!49788 (and (inv!6582 token!491) e!325158)))

(assert (=> start!49788 true))

(declare-fun e!325147 () Bool)

(assert (=> start!49788 e!325147))

(declare-fun b!538715 () Bool)

(assert (=> b!538715 (= e!325161 e!325152)))

(declare-fun res!228488 () Bool)

(assert (=> b!538715 (=> res!228488 e!325152)))

(assert (=> b!538715 (= res!228488 (>= lt!223582 lt!223578))))

(declare-fun b!538716 () Bool)

(declare-fun res!228497 () Bool)

(assert (=> b!538716 (=> (not res!228497) (not e!325157))))

(assert (=> b!538716 (= res!228497 (= (size!4218 (_1!3420 (v!16129 lt!223588))) (size!4219 (originalCharacters!1010 (_1!3420 (v!16129 lt!223588))))))))

(declare-fun b!538717 () Bool)

(declare-fun res!228500 () Bool)

(assert (=> b!538717 (=> res!228500 e!325140)))

(declare-fun contains!1215 (List!5255 Rule!1742) Bool)

(assert (=> b!538717 (= res!228500 (not (contains!1215 rules!3103 (rule!1679 token!491))))))

(declare-fun b!538718 () Bool)

(declare-fun res!228494 () Bool)

(assert (=> b!538718 (=> res!228494 e!325140)))

(assert (=> b!538718 (= res!228494 (not (= lt!223568 input!2705)))))

(declare-fun tp!171755 () Bool)

(declare-fun b!538719 () Bool)

(declare-fun inv!6579 (String!6719) Bool)

(declare-fun inv!6583 (TokenValueInjection!1758) Bool)

(assert (=> b!538719 (= e!325139 (and tp!171755 (inv!6579 (tag!1233 (h!10646 rules!3103))) (inv!6583 (transformation!971 (h!10646 rules!3103))) e!325156))))

(declare-fun e!325162 () Bool)

(declare-fun b!538720 () Bool)

(declare-fun tp!171757 () Bool)

(assert (=> b!538720 (= e!325162 (and tp!171757 (inv!6579 (tag!1233 (rule!1679 token!491))) (inv!6583 (transformation!971 (rule!1679 token!491))) e!325160))))

(declare-fun b!538721 () Bool)

(declare-fun res!228496 () Bool)

(assert (=> b!538721 (=> res!228496 e!325140)))

(assert (=> b!538721 (= res!228496 (not (isPrefix!613 lt!223583 input!2705)))))

(declare-fun b!538722 () Bool)

(assert (=> b!538722 (= e!325142 (= (_1!3420 (get!1971 lt!223588)) (_1!3420 (v!16129 lt!223588))))))

(declare-fun b!538723 () Bool)

(declare-fun Unit!9165 () Unit!9163)

(assert (=> b!538723 (= e!325149 Unit!9165)))

(assert (=> b!538723 false))

(declare-fun b!538724 () Bool)

(declare-fun res!228489 () Bool)

(assert (=> b!538724 (=> (not res!228489) (not e!325145))))

(declare-fun isEmpty!3791 (List!5254) Bool)

(assert (=> b!538724 (= res!228489 (not (isEmpty!3791 input!2705)))))

(declare-fun b!538725 () Bool)

(declare-fun res!228502 () Bool)

(assert (=> b!538725 (=> res!228502 e!325140)))

(declare-fun matchR!464 (Regex!1305 List!5254) Bool)

(assert (=> b!538725 (= res!228502 (not (matchR!464 (regex!971 (rule!1679 token!491)) input!2705)))))

(declare-fun b!538726 () Bool)

(declare-fun tp!171761 () Bool)

(assert (=> b!538726 (= e!325147 (and tp_is_empty!2965 tp!171761))))

(declare-fun b!538727 () Bool)

(assert (=> b!538727 (= e!325157 (and (= (size!4218 (_1!3420 (v!16129 lt!223588))) lt!223582) (= (originalCharacters!1010 (_1!3420 (v!16129 lt!223588))) lt!223585) (= lt!223564 (tuple2!6313 (Token!1679 lt!223571 (rule!1679 (_1!3420 (v!16129 lt!223588))) lt!223582 lt!223585) lt!223589))))))

(declare-fun b!538728 () Bool)

(declare-fun Unit!9166 () Unit!9163)

(assert (=> b!538728 (= e!325149 Unit!9166)))

(declare-fun b!538729 () Bool)

(declare-fun res!228495 () Bool)

(assert (=> b!538729 (=> (not res!228495) (not e!325145))))

(declare-fun rulesInvariant!820 (LexerInterface!857 List!5255) Bool)

(assert (=> b!538729 (= res!228495 (rulesInvariant!820 thiss!22590 rules!3103))))

(declare-fun b!538730 () Bool)

(declare-fun tp!171764 () Bool)

(declare-fun inv!21 (TokenValue!995) Bool)

(assert (=> b!538730 (= e!325158 (and (inv!21 (value!32540 token!491)) e!325162 tp!171764))))

(declare-fun b!538731 () Bool)

(assert (=> b!538731 (= e!325140 true)))

(declare-fun lt!223569 () Int)

(assert (=> b!538731 (= lt!223569 (size!4219 input!2705))))

(assert (= (and start!49788 res!228501) b!538699))

(assert (= (and b!538699 res!228491) b!538729))

(assert (= (and b!538729 res!228495) b!538724))

(assert (= (and b!538724 res!228489) b!538700))

(assert (= (and b!538700 res!228485) b!538710))

(assert (= (and b!538710 res!228490) b!538708))

(assert (= (and b!538708 res!228483) b!538705))

(assert (= (and b!538705 res!228498) b!538713))

(assert (= (and b!538713 res!228504) b!538712))

(assert (= (and b!538712 c!102235) b!538723))

(assert (= (and b!538712 (not c!102235)) b!538728))

(assert (= (and b!538712 res!228493) b!538716))

(assert (= (and b!538716 res!228497) b!538727))

(assert (= (and b!538712 (not res!228486)) b!538704))

(assert (= (and b!538704 res!228506) b!538714))

(assert (= (and b!538714 res!228484) b!538702))

(assert (= (and b!538704 res!228492) b!538715))

(assert (= (and b!538715 (not res!228488)) b!538698))

(assert (= (and b!538698 res!228503) b!538722))

(assert (= (and b!538704 (not res!228505)) b!538717))

(assert (= (and b!538717 (not res!228500)) b!538725))

(assert (= (and b!538725 (not res!228502)) b!538721))

(assert (= (and b!538721 (not res!228496)) b!538701))

(assert (= (and b!538701 (not res!228499)) b!538718))

(assert (= (and b!538718 (not res!228494)) b!538711))

(assert (= (and b!538711 (not res!228487)) b!538731))

(assert (= (and start!49788 ((_ is Cons!5244) suffix!1342)) b!538706))

(assert (= b!538719 b!538707))

(assert (= b!538709 b!538719))

(assert (= (and start!49788 ((_ is Cons!5245) rules!3103)) b!538709))

(assert (= b!538720 b!538703))

(assert (= b!538730 b!538720))

(assert (= start!49788 b!538730))

(assert (= (and start!49788 ((_ is Cons!5244) input!2705)) b!538726))

(declare-fun m!785899 () Bool)

(assert (=> b!538712 m!785899))

(declare-fun m!785901 () Bool)

(assert (=> b!538712 m!785901))

(declare-fun m!785903 () Bool)

(assert (=> b!538712 m!785903))

(declare-fun m!785905 () Bool)

(assert (=> b!538712 m!785905))

(declare-fun m!785907 () Bool)

(assert (=> b!538712 m!785907))

(declare-fun m!785909 () Bool)

(assert (=> b!538712 m!785909))

(assert (=> b!538712 m!785907))

(declare-fun m!785911 () Bool)

(assert (=> b!538712 m!785911))

(declare-fun m!785913 () Bool)

(assert (=> b!538712 m!785913))

(declare-fun m!785915 () Bool)

(assert (=> b!538712 m!785915))

(declare-fun m!785917 () Bool)

(assert (=> b!538712 m!785917))

(declare-fun m!785919 () Bool)

(assert (=> b!538712 m!785919))

(declare-fun m!785921 () Bool)

(assert (=> b!538712 m!785921))

(declare-fun m!785923 () Bool)

(assert (=> b!538712 m!785923))

(declare-fun m!785925 () Bool)

(assert (=> b!538712 m!785925))

(assert (=> b!538712 m!785915))

(declare-fun m!785927 () Bool)

(assert (=> b!538712 m!785927))

(declare-fun m!785929 () Bool)

(assert (=> b!538712 m!785929))

(declare-fun m!785931 () Bool)

(assert (=> b!538712 m!785931))

(declare-fun m!785933 () Bool)

(assert (=> b!538712 m!785933))

(declare-fun m!785935 () Bool)

(assert (=> b!538712 m!785935))

(declare-fun m!785937 () Bool)

(assert (=> b!538712 m!785937))

(declare-fun m!785939 () Bool)

(assert (=> b!538712 m!785939))

(declare-fun m!785941 () Bool)

(assert (=> b!538712 m!785941))

(declare-fun m!785943 () Bool)

(assert (=> b!538712 m!785943))

(declare-fun m!785945 () Bool)

(assert (=> b!538712 m!785945))

(declare-fun m!785947 () Bool)

(assert (=> b!538712 m!785947))

(declare-fun m!785949 () Bool)

(assert (=> b!538712 m!785949))

(declare-fun m!785951 () Bool)

(assert (=> b!538712 m!785951))

(declare-fun m!785953 () Bool)

(assert (=> b!538701 m!785953))

(declare-fun m!785955 () Bool)

(assert (=> b!538708 m!785955))

(declare-fun m!785957 () Bool)

(assert (=> b!538711 m!785957))

(declare-fun m!785959 () Bool)

(assert (=> b!538729 m!785959))

(declare-fun m!785961 () Bool)

(assert (=> b!538705 m!785961))

(declare-fun m!785963 () Bool)

(assert (=> start!49788 m!785963))

(declare-fun m!785965 () Bool)

(assert (=> b!538714 m!785965))

(declare-fun m!785967 () Bool)

(assert (=> b!538699 m!785967))

(declare-fun m!785969 () Bool)

(assert (=> b!538713 m!785969))

(declare-fun m!785971 () Bool)

(assert (=> b!538731 m!785971))

(declare-fun m!785973 () Bool)

(assert (=> b!538722 m!785973))

(declare-fun m!785975 () Bool)

(assert (=> b!538720 m!785975))

(declare-fun m!785977 () Bool)

(assert (=> b!538720 m!785977))

(declare-fun m!785979 () Bool)

(assert (=> b!538721 m!785979))

(declare-fun m!785981 () Bool)

(assert (=> b!538717 m!785981))

(declare-fun m!785983 () Bool)

(assert (=> b!538700 m!785983))

(assert (=> b!538700 m!785983))

(declare-fun m!785985 () Bool)

(assert (=> b!538700 m!785985))

(declare-fun m!785987 () Bool)

(assert (=> b!538730 m!785987))

(declare-fun m!785989 () Bool)

(assert (=> b!538704 m!785989))

(declare-fun m!785991 () Bool)

(assert (=> b!538704 m!785991))

(declare-fun m!785993 () Bool)

(assert (=> b!538704 m!785993))

(declare-fun m!785995 () Bool)

(assert (=> b!538704 m!785995))

(declare-fun m!785997 () Bool)

(assert (=> b!538704 m!785997))

(declare-fun m!785999 () Bool)

(assert (=> b!538704 m!785999))

(declare-fun m!786001 () Bool)

(assert (=> b!538704 m!786001))

(assert (=> b!538704 m!785991))

(declare-fun m!786003 () Bool)

(assert (=> b!538704 m!786003))

(declare-fun m!786005 () Bool)

(assert (=> b!538716 m!786005))

(declare-fun m!786007 () Bool)

(assert (=> b!538724 m!786007))

(declare-fun m!786009 () Bool)

(assert (=> b!538719 m!786009))

(declare-fun m!786011 () Bool)

(assert (=> b!538719 m!786011))

(declare-fun m!786013 () Bool)

(assert (=> b!538710 m!786013))

(declare-fun m!786015 () Bool)

(assert (=> b!538710 m!786015))

(declare-fun m!786017 () Bool)

(assert (=> b!538710 m!786017))

(declare-fun m!786019 () Bool)

(assert (=> b!538698 m!786019))

(declare-fun m!786021 () Bool)

(assert (=> b!538725 m!786021))

(check-sat b_and!52687 (not b_next!14825) (not b!538704) (not b!538706) b_and!52685 (not b!538720) (not b!538701) (not b!538711) (not b!538719) (not b!538708) (not b!538717) tp_is_empty!2965 (not b!538699) (not b!538698) (not b!538712) (not b!538716) b_and!52689 (not b!538705) (not b_next!14831) (not b!538724) (not b!538713) (not b!538726) (not b!538709) (not b!538721) (not b_next!14827) (not b_next!14829) (not b!538700) (not b!538710) (not b!538725) (not b!538714) (not b!538722) b_and!52683 (not start!49788) (not b!538730) (not b!538729) (not b!538731))
(check-sat b_and!52687 (not b_next!14825) b_and!52689 (not b_next!14831) b_and!52685 b_and!52683 (not b_next!14827) (not b_next!14829))
