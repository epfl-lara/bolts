; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57276 () Bool)

(assert start!57276)

(declare-fun b!602510 () Bool)

(declare-fun b_free!17141 () Bool)

(declare-fun b_next!17157 () Bool)

(assert (=> b!602510 (= b_free!17141 (not b_next!17157))))

(declare-fun tp!187509 () Bool)

(declare-fun b_and!59507 () Bool)

(assert (=> b!602510 (= tp!187509 b_and!59507)))

(declare-fun b_free!17143 () Bool)

(declare-fun b_next!17159 () Bool)

(assert (=> b!602510 (= b_free!17143 (not b_next!17159))))

(declare-fun tp!187506 () Bool)

(declare-fun b_and!59509 () Bool)

(assert (=> b!602510 (= tp!187506 b_and!59509)))

(declare-fun b!602511 () Bool)

(declare-fun b_free!17145 () Bool)

(declare-fun b_next!17161 () Bool)

(assert (=> b!602511 (= b_free!17145 (not b_next!17161))))

(declare-fun tp!187508 () Bool)

(declare-fun b_and!59511 () Bool)

(assert (=> b!602511 (= tp!187508 b_and!59511)))

(declare-fun b_free!17147 () Bool)

(declare-fun b_next!17163 () Bool)

(assert (=> b!602511 (= b_free!17147 (not b_next!17163))))

(declare-fun tp!187511 () Bool)

(declare-fun b_and!59513 () Bool)

(assert (=> b!602511 (= tp!187511 b_and!59513)))

(declare-fun b!602495 () Bool)

(declare-fun e!365056 () Bool)

(declare-fun tp_is_empty!3421 () Bool)

(declare-fun tp!187513 () Bool)

(assert (=> b!602495 (= e!365056 (and tp_is_empty!3421 tp!187513))))

(declare-fun b!602496 () Bool)

(declare-fun res!260723 () Bool)

(declare-fun e!365055 () Bool)

(assert (=> b!602496 (=> (not res!260723) (not e!365055))))

(declare-datatypes ((C!3988 0))(
  ( (C!3989 (val!2220 Int)) )
))
(declare-datatypes ((Regex!1533 0))(
  ( (ElementMatch!1533 (c!111783 C!3988)) (Concat!2756 (regOne!3578 Regex!1533) (regTwo!3578 Regex!1533)) (EmptyExpr!1533) (Star!1533 (reg!1862 Regex!1533)) (EmptyLang!1533) (Union!1533 (regOne!3579 Regex!1533) (regTwo!3579 Regex!1533)) )
))
(declare-datatypes ((List!6032 0))(
  ( (Nil!6022) (Cons!6022 (h!11423 (_ BitVec 16)) (t!80033 List!6032)) )
))
(declare-datatypes ((List!6033 0))(
  ( (Nil!6023) (Cons!6023 (h!11424 C!3988) (t!80034 List!6033)) )
))
(declare-datatypes ((IArray!3833 0))(
  ( (IArray!3834 (innerList!1974 List!6033)) )
))
(declare-datatypes ((Conc!1916 0))(
  ( (Node!1916 (left!4836 Conc!1916) (right!5166 Conc!1916) (csize!4062 Int) (cheight!2127 Int)) (Leaf!3023 (xs!4553 IArray!3833) (csize!4063 Int)) (Empty!1916) )
))
(declare-datatypes ((BalanceConc!3840 0))(
  ( (BalanceConc!3841 (c!111784 Conc!1916)) )
))
(declare-datatypes ((TokenValue!1223 0))(
  ( (FloatLiteralValue!2446 (text!9006 List!6032)) (TokenValueExt!1222 (__x!4344 Int)) (Broken!6115 (value!39012 List!6032)) (Object!1232) (End!1223) (Def!1223) (Underscore!1223) (Match!1223) (Else!1223) (Error!1223) (Case!1223) (If!1223) (Extends!1223) (Abstract!1223) (Class!1223) (Val!1223) (DelimiterValue!2446 (del!1283 List!6032)) (KeywordValue!1229 (value!39013 List!6032)) (CommentValue!2446 (value!39014 List!6032)) (WhitespaceValue!2446 (value!39015 List!6032)) (IndentationValue!1223 (value!39016 List!6032)) (String!7858) (Int32!1223) (Broken!6116 (value!39017 List!6032)) (Boolean!1224) (Unit!10967) (OperatorValue!1226 (op!1283 List!6032)) (IdentifierValue!2446 (value!39018 List!6032)) (IdentifierValue!2447 (value!39019 List!6032)) (WhitespaceValue!2447 (value!39020 List!6032)) (True!2446) (False!2446) (Broken!6117 (value!39021 List!6032)) (Broken!6118 (value!39022 List!6032)) (True!2447) (RightBrace!1223) (RightBracket!1223) (Colon!1223) (Null!1223) (Comma!1223) (LeftBracket!1223) (False!2447) (LeftBrace!1223) (ImaginaryLiteralValue!1223 (text!9007 List!6032)) (StringLiteralValue!3669 (value!39023 List!6032)) (EOFValue!1223 (value!39024 List!6032)) (IdentValue!1223 (value!39025 List!6032)) (DelimiterValue!2447 (value!39026 List!6032)) (DedentValue!1223 (value!39027 List!6032)) (NewLineValue!1223 (value!39028 List!6032)) (IntegerValue!3669 (value!39029 (_ BitVec 32)) (text!9008 List!6032)) (IntegerValue!3670 (value!39030 Int) (text!9009 List!6032)) (Times!1223) (Or!1223) (Equal!1223) (Minus!1223) (Broken!6119 (value!39031 List!6032)) (And!1223) (Div!1223) (LessEqual!1223) (Mod!1223) (Concat!2757) (Not!1223) (Plus!1223) (SpaceValue!1223 (value!39032 List!6032)) (IntegerValue!3671 (value!39033 Int) (text!9010 List!6032)) (StringLiteralValue!3670 (text!9011 List!6032)) (FloatLiteralValue!2447 (text!9012 List!6032)) (BytesLiteralValue!1223 (value!39034 List!6032)) (CommentValue!2447 (value!39035 List!6032)) (StringLiteralValue!3671 (value!39036 List!6032)) (ErrorTokenValue!1223 (msg!1284 List!6032)) )
))
(declare-datatypes ((String!7859 0))(
  ( (String!7860 (value!39037 String)) )
))
(declare-datatypes ((TokenValueInjection!2214 0))(
  ( (TokenValueInjection!2215 (toValue!2098 Int) (toChars!1957 Int)) )
))
(declare-datatypes ((Rule!2198 0))(
  ( (Rule!2199 (regex!1199 Regex!1533) (tag!1461 String!7859) (isSeparator!1199 Bool) (transformation!1199 TokenValueInjection!2214)) )
))
(declare-datatypes ((Token!2134 0))(
  ( (Token!2135 (value!39038 TokenValue!1223) (rule!1975 Rule!2198) (size!4738 Int) (originalCharacters!1238 List!6033)) )
))
(declare-datatypes ((tuple2!6904 0))(
  ( (tuple2!6905 (_1!3716 Token!2134) (_2!3716 List!6033)) )
))
(declare-datatypes ((Option!1550 0))(
  ( (None!1549) (Some!1549 (v!16446 tuple2!6904)) )
))
(declare-fun lt!256707 () Option!1550)

(declare-fun size!4739 (List!6033) Int)

(assert (=> b!602496 (= res!260723 (= (size!4738 (_1!3716 (v!16446 lt!256707))) (size!4739 (originalCharacters!1238 (_1!3716 (v!16446 lt!256707))))))))

(declare-fun b!602497 () Bool)

(declare-fun e!365053 () Bool)

(declare-fun e!365057 () Bool)

(assert (=> b!602497 (= e!365053 e!365057)))

(declare-fun res!260735 () Bool)

(assert (=> b!602497 (=> (not res!260735) (not e!365057))))

(get-info :version)

(assert (=> b!602497 (= res!260735 ((_ is Some!1549) lt!256707))))

(declare-datatypes ((List!6034 0))(
  ( (Nil!6024) (Cons!6024 (h!11425 Rule!2198) (t!80035 List!6034)) )
))
(declare-fun rules!3103 () List!6034)

(declare-datatypes ((LexerInterface!1085 0))(
  ( (LexerInterfaceExt!1082 (__x!4345 Int)) (Lexer!1083) )
))
(declare-fun thiss!22590 () LexerInterface!1085)

(declare-fun input!2705 () List!6033)

(declare-fun maxPrefix!783 (LexerInterface!1085 List!6034 List!6033) Option!1550)

(assert (=> b!602497 (= lt!256707 (maxPrefix!783 thiss!22590 rules!3103 input!2705))))

(declare-fun b!602498 () Bool)

(declare-fun res!260732 () Bool)

(declare-fun e!365059 () Bool)

(assert (=> b!602498 (=> (not res!260732) (not e!365059))))

(declare-fun rulesInvariant!1048 (LexerInterface!1085 List!6034) Bool)

(assert (=> b!602498 (= res!260732 (rulesInvariant!1048 thiss!22590 rules!3103))))

(declare-fun b!602499 () Bool)

(declare-fun e!365042 () Bool)

(declare-fun e!365050 () Bool)

(assert (=> b!602499 (= e!365042 e!365050)))

(declare-fun res!260729 () Bool)

(assert (=> b!602499 (=> (not res!260729) (not e!365050))))

(declare-fun lt!256711 () Option!1550)

(declare-fun isDefined!1361 (Option!1550) Bool)

(assert (=> b!602499 (= res!260729 (isDefined!1361 lt!256711))))

(declare-fun lt!256714 () List!6033)

(assert (=> b!602499 (= lt!256711 (maxPrefix!783 thiss!22590 rules!3103 lt!256714))))

(declare-fun suffix!1342 () List!6033)

(declare-fun ++!1687 (List!6033 List!6033) List!6033)

(assert (=> b!602499 (= lt!256714 (++!1687 input!2705 suffix!1342))))

(declare-fun b!602500 () Bool)

(declare-fun e!365044 () Bool)

(declare-fun lt!256702 () List!6033)

(assert (=> b!602500 (= e!365044 (= lt!256714 lt!256702))))

(declare-fun e!365054 () Bool)

(declare-fun token!491 () Token!2134)

(declare-fun b!602501 () Bool)

(declare-fun e!365041 () Bool)

(declare-fun tp!187505 () Bool)

(declare-fun inv!21 (TokenValue!1223) Bool)

(assert (=> b!602501 (= e!365054 (and (inv!21 (value!39038 token!491)) e!365041 tp!187505))))

(declare-fun b!602502 () Bool)

(declare-datatypes ((Unit!10968 0))(
  ( (Unit!10969) )
))
(declare-fun e!365046 () Unit!10968)

(declare-fun Unit!10970 () Unit!10968)

(assert (=> b!602502 (= e!365046 Unit!10970)))

(declare-fun b!602503 () Bool)

(declare-fun res!260736 () Bool)

(assert (=> b!602503 (=> (not res!260736) (not e!365059))))

(declare-fun isEmpty!4347 (List!6034) Bool)

(assert (=> b!602503 (= res!260736 (not (isEmpty!4347 rules!3103)))))

(declare-fun res!260730 () Bool)

(assert (=> start!57276 (=> (not res!260730) (not e!365059))))

(assert (=> start!57276 (= res!260730 ((_ is Lexer!1083) thiss!22590))))

(assert (=> start!57276 e!365059))

(assert (=> start!57276 e!365056))

(declare-fun e!365040 () Bool)

(assert (=> start!57276 e!365040))

(declare-fun inv!7647 (Token!2134) Bool)

(assert (=> start!57276 (and (inv!7647 token!491) e!365054)))

(assert (=> start!57276 true))

(declare-fun e!365045 () Bool)

(assert (=> start!57276 e!365045))

(declare-fun b!602504 () Bool)

(declare-fun e!365049 () Bool)

(declare-fun e!365048 () Bool)

(assert (=> b!602504 (= e!365049 (not e!365048))))

(declare-fun res!260726 () Bool)

(assert (=> b!602504 (=> res!260726 e!365048)))

(declare-fun isPrefix!827 (List!6033 List!6033) Bool)

(assert (=> b!602504 (= res!260726 (not (isPrefix!827 input!2705 lt!256702)))))

(declare-fun lt!256704 () List!6033)

(assert (=> b!602504 (isPrefix!827 lt!256704 lt!256702)))

(declare-fun lt!256710 () Unit!10968)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!672 (List!6033 List!6033) Unit!10968)

(assert (=> b!602504 (= lt!256710 (lemmaConcatTwoListThenFirstIsPrefix!672 lt!256704 suffix!1342))))

(assert (=> b!602504 (isPrefix!827 input!2705 lt!256714)))

(declare-fun lt!256724 () Unit!10968)

(assert (=> b!602504 (= lt!256724 (lemmaConcatTwoListThenFirstIsPrefix!672 input!2705 suffix!1342))))

(assert (=> b!602504 e!365055))

(declare-fun res!260727 () Bool)

(assert (=> b!602504 (=> (not res!260727) (not e!365055))))

(declare-fun lt!256727 () TokenValue!1223)

(assert (=> b!602504 (= res!260727 (= (value!39038 (_1!3716 (v!16446 lt!256707))) lt!256727))))

(declare-fun lt!256722 () List!6033)

(declare-fun apply!1452 (TokenValueInjection!2214 BalanceConc!3840) TokenValue!1223)

(declare-fun seqFromList!1375 (List!6033) BalanceConc!3840)

(assert (=> b!602504 (= lt!256727 (apply!1452 (transformation!1199 (rule!1975 (_1!3716 (v!16446 lt!256707)))) (seqFromList!1375 lt!256722)))))

(declare-fun lt!256723 () Unit!10968)

(declare-fun lemmaInv!307 (TokenValueInjection!2214) Unit!10968)

(assert (=> b!602504 (= lt!256723 (lemmaInv!307 (transformation!1199 (rule!1975 token!491))))))

(declare-fun lt!256718 () Unit!10968)

(assert (=> b!602504 (= lt!256718 (lemmaInv!307 (transformation!1199 (rule!1975 (_1!3716 (v!16446 lt!256707))))))))

(declare-fun ruleValid!397 (LexerInterface!1085 Rule!2198) Bool)

(assert (=> b!602504 (ruleValid!397 thiss!22590 (rule!1975 token!491))))

(declare-fun lt!256708 () Unit!10968)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!244 (LexerInterface!1085 Rule!2198 List!6034) Unit!10968)

(assert (=> b!602504 (= lt!256708 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!244 thiss!22590 (rule!1975 token!491) rules!3103))))

(assert (=> b!602504 (ruleValid!397 thiss!22590 (rule!1975 (_1!3716 (v!16446 lt!256707))))))

(declare-fun lt!256715 () Unit!10968)

(assert (=> b!602504 (= lt!256715 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!244 thiss!22590 (rule!1975 (_1!3716 (v!16446 lt!256707))) rules!3103))))

(assert (=> b!602504 (isPrefix!827 input!2705 input!2705)))

(declare-fun lt!256706 () Unit!10968)

(declare-fun lemmaIsPrefixRefl!563 (List!6033 List!6033) Unit!10968)

(assert (=> b!602504 (= lt!256706 (lemmaIsPrefixRefl!563 input!2705 input!2705))))

(declare-fun lt!256701 () List!6033)

(assert (=> b!602504 (= (_2!3716 (v!16446 lt!256707)) lt!256701)))

(declare-fun lt!256712 () Unit!10968)

(declare-fun lemmaSamePrefixThenSameSuffix!540 (List!6033 List!6033 List!6033 List!6033 List!6033) Unit!10968)

(assert (=> b!602504 (= lt!256712 (lemmaSamePrefixThenSameSuffix!540 lt!256722 (_2!3716 (v!16446 lt!256707)) lt!256722 lt!256701 input!2705))))

(declare-fun getSuffix!344 (List!6033 List!6033) List!6033)

(assert (=> b!602504 (= lt!256701 (getSuffix!344 input!2705 lt!256722))))

(assert (=> b!602504 (isPrefix!827 lt!256722 (++!1687 lt!256722 (_2!3716 (v!16446 lt!256707))))))

(declare-fun lt!256725 () Unit!10968)

(assert (=> b!602504 (= lt!256725 (lemmaConcatTwoListThenFirstIsPrefix!672 lt!256722 (_2!3716 (v!16446 lt!256707))))))

(declare-fun lt!256703 () Unit!10968)

(declare-fun lemmaCharactersSize!258 (Token!2134) Unit!10968)

(assert (=> b!602504 (= lt!256703 (lemmaCharactersSize!258 token!491))))

(declare-fun lt!256721 () Unit!10968)

(assert (=> b!602504 (= lt!256721 (lemmaCharactersSize!258 (_1!3716 (v!16446 lt!256707))))))

(declare-fun lt!256705 () Unit!10968)

(assert (=> b!602504 (= lt!256705 e!365046)))

(declare-fun c!111782 () Bool)

(declare-fun lt!256717 () Int)

(declare-fun lt!256716 () Int)

(assert (=> b!602504 (= c!111782 (> lt!256717 lt!256716))))

(assert (=> b!602504 (= lt!256716 (size!4739 lt!256704))))

(assert (=> b!602504 (= lt!256717 (size!4739 lt!256722))))

(declare-fun list!2528 (BalanceConc!3840) List!6033)

(declare-fun charsOf!828 (Token!2134) BalanceConc!3840)

(assert (=> b!602504 (= lt!256722 (list!2528 (charsOf!828 (_1!3716 (v!16446 lt!256707)))))))

(assert (=> b!602504 (= lt!256707 (Some!1549 (v!16446 lt!256707)))))

(declare-fun lt!256713 () Unit!10968)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!272 (List!6033 List!6033 List!6033 List!6033) Unit!10968)

(assert (=> b!602504 (= lt!256713 (lemmaConcatSameAndSameSizesThenSameLists!272 lt!256704 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!602505 () Bool)

(assert (=> b!602505 (= e!365050 e!365053)))

(declare-fun res!260728 () Bool)

(assert (=> b!602505 (=> (not res!260728) (not e!365053))))

(declare-fun lt!256719 () tuple2!6904)

(assert (=> b!602505 (= res!260728 (and (= (_1!3716 lt!256719) token!491) (= (_2!3716 lt!256719) suffix!1342)))))

(declare-fun get!2313 (Option!1550) tuple2!6904)

(assert (=> b!602505 (= lt!256719 (get!2313 lt!256711))))

(declare-fun b!602506 () Bool)

(declare-fun Unit!10971 () Unit!10968)

(assert (=> b!602506 (= e!365046 Unit!10971)))

(assert (=> b!602506 false))

(declare-fun b!602507 () Bool)

(declare-fun tp!187507 () Bool)

(assert (=> b!602507 (= e!365045 (and tp_is_empty!3421 tp!187507))))

(declare-fun b!602508 () Bool)

(declare-fun res!260733 () Bool)

(assert (=> b!602508 (=> (not res!260733) (not e!365059))))

(declare-fun isEmpty!4348 (List!6033) Bool)

(assert (=> b!602508 (= res!260733 (not (isEmpty!4348 input!2705)))))

(declare-fun b!602509 () Bool)

(assert (=> b!602509 (= e!365057 e!365049)))

(declare-fun res!260724 () Bool)

(assert (=> b!602509 (=> (not res!260724) (not e!365049))))

(assert (=> b!602509 (= res!260724 (= lt!256702 lt!256714))))

(assert (=> b!602509 (= lt!256702 (++!1687 lt!256704 suffix!1342))))

(declare-fun e!365043 () Bool)

(assert (=> b!602510 (= e!365043 (and tp!187509 tp!187506))))

(declare-fun e!365052 () Bool)

(assert (=> b!602511 (= e!365052 (and tp!187508 tp!187511))))

(declare-fun b!602512 () Bool)

(declare-fun res!260734 () Bool)

(declare-fun e!365039 () Bool)

(assert (=> b!602512 (=> (not res!260734) (not e!365039))))

(assert (=> b!602512 (= res!260734 (= (size!4738 token!491) (size!4739 (originalCharacters!1238 token!491))))))

(declare-fun b!602513 () Bool)

(declare-fun e!365038 () Bool)

(declare-fun tp!187510 () Bool)

(declare-fun inv!7644 (String!7859) Bool)

(declare-fun inv!7648 (TokenValueInjection!2214) Bool)

(assert (=> b!602513 (= e!365038 (and tp!187510 (inv!7644 (tag!1461 (h!11425 rules!3103))) (inv!7648 (transformation!1199 (h!11425 rules!3103))) e!365052))))

(declare-fun lt!256728 () TokenValue!1223)

(declare-fun b!602514 () Bool)

(declare-fun lt!256709 () List!6033)

(assert (=> b!602514 (= e!365039 (and (= (size!4738 token!491) lt!256716) (= (originalCharacters!1238 token!491) lt!256704) (= (tuple2!6905 token!491 suffix!1342) (tuple2!6905 (Token!2135 lt!256728 (rule!1975 token!491) lt!256716 lt!256704) lt!256709))))))

(declare-fun b!602515 () Bool)

(declare-fun tp!187512 () Bool)

(assert (=> b!602515 (= e!365041 (and tp!187512 (inv!7644 (tag!1461 (rule!1975 token!491))) (inv!7648 (transformation!1199 (rule!1975 token!491))) e!365043))))

(declare-fun b!602516 () Bool)

(declare-fun tp!187514 () Bool)

(assert (=> b!602516 (= e!365040 (and e!365038 tp!187514))))

(declare-fun b!602517 () Bool)

(assert (=> b!602517 (= e!365055 (and (= (size!4738 (_1!3716 (v!16446 lt!256707))) lt!256717) (= (originalCharacters!1238 (_1!3716 (v!16446 lt!256707))) lt!256722) (= (v!16446 lt!256707) (tuple2!6905 (Token!2135 lt!256727 (rule!1975 (_1!3716 (v!16446 lt!256707))) lt!256717 lt!256722) lt!256701))))))

(declare-fun b!602518 () Bool)

(assert (=> b!602518 (= e!365059 e!365042)))

(declare-fun res!260722 () Bool)

(assert (=> b!602518 (=> (not res!260722) (not e!365042))))

(assert (=> b!602518 (= res!260722 (= lt!256704 input!2705))))

(assert (=> b!602518 (= lt!256704 (list!2528 (charsOf!828 token!491)))))

(declare-fun b!602519 () Bool)

(assert (=> b!602519 (= e!365048 e!365044)))

(declare-fun res!260731 () Bool)

(assert (=> b!602519 (=> res!260731 e!365044)))

(declare-fun contains!1411 (List!6034 Rule!2198) Bool)

(assert (=> b!602519 (= res!260731 (not (contains!1411 rules!3103 (rule!1975 token!491))))))

(declare-fun maxPrefixOneRule!446 (LexerInterface!1085 Rule!2198 List!6033) Option!1550)

(assert (=> b!602519 (= (maxPrefixOneRule!446 thiss!22590 (rule!1975 (_1!3716 (v!16446 lt!256707))) input!2705) (Some!1549 (tuple2!6905 (Token!2135 lt!256727 (rule!1975 (_1!3716 (v!16446 lt!256707))) lt!256717 lt!256722) (_2!3716 (v!16446 lt!256707)))))))

(declare-fun lt!256726 () Unit!10968)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!152 (LexerInterface!1085 List!6034 List!6033 List!6033 List!6033 Rule!2198) Unit!10968)

(assert (=> b!602519 (= lt!256726 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!152 thiss!22590 rules!3103 lt!256722 input!2705 (_2!3716 (v!16446 lt!256707)) (rule!1975 (_1!3716 (v!16446 lt!256707)))))))

(assert (=> b!602519 e!365039))

(declare-fun res!260725 () Bool)

(assert (=> b!602519 (=> (not res!260725) (not e!365039))))

(assert (=> b!602519 (= res!260725 (= (value!39038 token!491) lt!256728))))

(assert (=> b!602519 (= lt!256728 (apply!1452 (transformation!1199 (rule!1975 token!491)) (seqFromList!1375 lt!256704)))))

(assert (=> b!602519 (= suffix!1342 lt!256709)))

(declare-fun lt!256720 () Unit!10968)

(assert (=> b!602519 (= lt!256720 (lemmaSamePrefixThenSameSuffix!540 lt!256704 suffix!1342 lt!256704 lt!256709 lt!256714))))

(assert (=> b!602519 (= lt!256709 (getSuffix!344 lt!256714 lt!256704))))

(assert (= (and start!57276 res!260730) b!602503))

(assert (= (and b!602503 res!260736) b!602498))

(assert (= (and b!602498 res!260732) b!602508))

(assert (= (and b!602508 res!260733) b!602518))

(assert (= (and b!602518 res!260722) b!602499))

(assert (= (and b!602499 res!260729) b!602505))

(assert (= (and b!602505 res!260728) b!602497))

(assert (= (and b!602497 res!260735) b!602509))

(assert (= (and b!602509 res!260724) b!602504))

(assert (= (and b!602504 c!111782) b!602506))

(assert (= (and b!602504 (not c!111782)) b!602502))

(assert (= (and b!602504 res!260727) b!602496))

(assert (= (and b!602496 res!260723) b!602517))

(assert (= (and b!602504 (not res!260726)) b!602519))

(assert (= (and b!602519 res!260725) b!602512))

(assert (= (and b!602512 res!260734) b!602514))

(assert (= (and b!602519 (not res!260731)) b!602500))

(assert (= (and start!57276 ((_ is Cons!6023) suffix!1342)) b!602495))

(assert (= b!602513 b!602511))

(assert (= b!602516 b!602513))

(assert (= (and start!57276 ((_ is Cons!6024) rules!3103)) b!602516))

(assert (= b!602515 b!602510))

(assert (= b!602501 b!602515))

(assert (= start!57276 b!602501))

(assert (= (and start!57276 ((_ is Cons!6023) input!2705)) b!602507))

(declare-fun m!867335 () Bool)

(assert (=> start!57276 m!867335))

(declare-fun m!867337 () Bool)

(assert (=> b!602513 m!867337))

(declare-fun m!867339 () Bool)

(assert (=> b!602513 m!867339))

(declare-fun m!867341 () Bool)

(assert (=> b!602497 m!867341))

(declare-fun m!867343 () Bool)

(assert (=> b!602496 m!867343))

(declare-fun m!867345 () Bool)

(assert (=> b!602501 m!867345))

(declare-fun m!867347 () Bool)

(assert (=> b!602504 m!867347))

(declare-fun m!867349 () Bool)

(assert (=> b!602504 m!867349))

(declare-fun m!867351 () Bool)

(assert (=> b!602504 m!867351))

(declare-fun m!867353 () Bool)

(assert (=> b!602504 m!867353))

(declare-fun m!867355 () Bool)

(assert (=> b!602504 m!867355))

(declare-fun m!867357 () Bool)

(assert (=> b!602504 m!867357))

(declare-fun m!867359 () Bool)

(assert (=> b!602504 m!867359))

(declare-fun m!867361 () Bool)

(assert (=> b!602504 m!867361))

(declare-fun m!867363 () Bool)

(assert (=> b!602504 m!867363))

(declare-fun m!867365 () Bool)

(assert (=> b!602504 m!867365))

(assert (=> b!602504 m!867365))

(declare-fun m!867367 () Bool)

(assert (=> b!602504 m!867367))

(declare-fun m!867369 () Bool)

(assert (=> b!602504 m!867369))

(declare-fun m!867371 () Bool)

(assert (=> b!602504 m!867371))

(declare-fun m!867373 () Bool)

(assert (=> b!602504 m!867373))

(declare-fun m!867375 () Bool)

(assert (=> b!602504 m!867375))

(declare-fun m!867377 () Bool)

(assert (=> b!602504 m!867377))

(declare-fun m!867379 () Bool)

(assert (=> b!602504 m!867379))

(declare-fun m!867381 () Bool)

(assert (=> b!602504 m!867381))

(declare-fun m!867383 () Bool)

(assert (=> b!602504 m!867383))

(declare-fun m!867385 () Bool)

(assert (=> b!602504 m!867385))

(declare-fun m!867387 () Bool)

(assert (=> b!602504 m!867387))

(declare-fun m!867389 () Bool)

(assert (=> b!602504 m!867389))

(declare-fun m!867391 () Bool)

(assert (=> b!602504 m!867391))

(assert (=> b!602504 m!867389))

(assert (=> b!602504 m!867379))

(declare-fun m!867393 () Bool)

(assert (=> b!602504 m!867393))

(declare-fun m!867395 () Bool)

(assert (=> b!602504 m!867395))

(declare-fun m!867397 () Bool)

(assert (=> b!602504 m!867397))

(declare-fun m!867399 () Bool)

(assert (=> b!602504 m!867399))

(declare-fun m!867401 () Bool)

(assert (=> b!602503 m!867401))

(declare-fun m!867403 () Bool)

(assert (=> b!602498 m!867403))

(declare-fun m!867405 () Bool)

(assert (=> b!602508 m!867405))

(declare-fun m!867407 () Bool)

(assert (=> b!602512 m!867407))

(declare-fun m!867409 () Bool)

(assert (=> b!602509 m!867409))

(declare-fun m!867411 () Bool)

(assert (=> b!602499 m!867411))

(declare-fun m!867413 () Bool)

(assert (=> b!602499 m!867413))

(declare-fun m!867415 () Bool)

(assert (=> b!602499 m!867415))

(declare-fun m!867417 () Bool)

(assert (=> b!602505 m!867417))

(declare-fun m!867419 () Bool)

(assert (=> b!602519 m!867419))

(declare-fun m!867421 () Bool)

(assert (=> b!602519 m!867421))

(declare-fun m!867423 () Bool)

(assert (=> b!602519 m!867423))

(declare-fun m!867425 () Bool)

(assert (=> b!602519 m!867425))

(declare-fun m!867427 () Bool)

(assert (=> b!602519 m!867427))

(declare-fun m!867429 () Bool)

(assert (=> b!602519 m!867429))

(assert (=> b!602519 m!867421))

(declare-fun m!867431 () Bool)

(assert (=> b!602519 m!867431))

(declare-fun m!867433 () Bool)

(assert (=> b!602515 m!867433))

(declare-fun m!867435 () Bool)

(assert (=> b!602515 m!867435))

(declare-fun m!867437 () Bool)

(assert (=> b!602518 m!867437))

(assert (=> b!602518 m!867437))

(declare-fun m!867439 () Bool)

(assert (=> b!602518 m!867439))

(check-sat b_and!59507 (not b!602508) b_and!59513 (not b_next!17161) (not b!602499) (not b!602516) (not b_next!17163) (not b!602504) (not b!602495) (not b!602515) (not b!602497) (not b!602519) (not b!602498) (not b_next!17159) (not b!602509) (not b!602496) (not b!602503) b_and!59509 (not b!602507) (not start!57276) tp_is_empty!3421 (not b!602501) (not b!602512) b_and!59511 (not b!602505) (not b!602518) (not b_next!17157) (not b!602513))
(check-sat b_and!59507 (not b_next!17159) b_and!59513 (not b_next!17161) b_and!59509 b_and!59511 (not b_next!17163) (not b_next!17157))
