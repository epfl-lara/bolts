; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52208 () Bool)

(assert start!52208)

(declare-fun b!566502 () Bool)

(declare-fun b_free!15789 () Bool)

(declare-fun b_next!15805 () Bool)

(assert (=> b!566502 (= b_free!15789 (not b_next!15805))))

(declare-fun tp!178618 () Bool)

(declare-fun b_and!55203 () Bool)

(assert (=> b!566502 (= tp!178618 b_and!55203)))

(declare-fun b_free!15791 () Bool)

(declare-fun b_next!15807 () Bool)

(assert (=> b!566502 (= b_free!15791 (not b_next!15807))))

(declare-fun tp!178624 () Bool)

(declare-fun b_and!55205 () Bool)

(assert (=> b!566502 (= tp!178624 b_and!55205)))

(declare-fun b!566492 () Bool)

(declare-fun b_free!15793 () Bool)

(declare-fun b_next!15809 () Bool)

(assert (=> b!566492 (= b_free!15793 (not b_next!15809))))

(declare-fun tp!178621 () Bool)

(declare-fun b_and!55207 () Bool)

(assert (=> b!566492 (= tp!178621 b_and!55207)))

(declare-fun b_free!15795 () Bool)

(declare-fun b_next!15811 () Bool)

(assert (=> b!566492 (= b_free!15795 (not b_next!15811))))

(declare-fun tp!178623 () Bool)

(declare-fun b_and!55209 () Bool)

(assert (=> b!566492 (= tp!178623 b_and!55209)))

(declare-fun b!566486 () Bool)

(declare-fun e!342342 () Bool)

(declare-fun tp_is_empty!3173 () Bool)

(declare-fun tp!178626 () Bool)

(assert (=> b!566486 (= e!342342 (and tp_is_empty!3173 tp!178626))))

(declare-fun b!566487 () Bool)

(declare-fun e!342355 () Bool)

(declare-fun e!342331 () Bool)

(assert (=> b!566487 (= e!342355 e!342331)))

(declare-fun res!242923 () Bool)

(assert (=> b!566487 (=> (not res!242923) (not e!342331))))

(declare-datatypes ((C!3740 0))(
  ( (C!3741 (val!2096 Int)) )
))
(declare-datatypes ((Regex!1409 0))(
  ( (ElementMatch!1409 (c!106293 C!3740)) (Concat!2508 (regOne!3330 Regex!1409) (regTwo!3330 Regex!1409)) (EmptyExpr!1409) (Star!1409 (reg!1738 Regex!1409)) (EmptyLang!1409) (Union!1409 (regOne!3331 Regex!1409) (regTwo!3331 Regex!1409)) )
))
(declare-datatypes ((List!5594 0))(
  ( (Nil!5584) (Cons!5584 (h!10985 (_ BitVec 16)) (t!76325 List!5594)) )
))
(declare-datatypes ((List!5595 0))(
  ( (Nil!5585) (Cons!5585 (h!10986 C!3740) (t!76326 List!5595)) )
))
(declare-datatypes ((IArray!3585 0))(
  ( (IArray!3586 (innerList!1850 List!5595)) )
))
(declare-datatypes ((Conc!1792 0))(
  ( (Node!1792 (left!4574 Conc!1792) (right!4904 Conc!1792) (csize!3814 Int) (cheight!2003 Int)) (Leaf!2837 (xs!4429 IArray!3585) (csize!3815 Int)) (Empty!1792) )
))
(declare-datatypes ((BalanceConc!3592 0))(
  ( (BalanceConc!3593 (c!106294 Conc!1792)) )
))
(declare-datatypes ((TokenValue!1099 0))(
  ( (FloatLiteralValue!2198 (text!8138 List!5594)) (TokenValueExt!1098 (__x!4096 Int)) (Broken!5495 (value!35478 List!5594)) (Object!1108) (End!1099) (Def!1099) (Underscore!1099) (Match!1099) (Else!1099) (Error!1099) (Case!1099) (If!1099) (Extends!1099) (Abstract!1099) (Class!1099) (Val!1099) (DelimiterValue!2198 (del!1159 List!5594)) (KeywordValue!1105 (value!35479 List!5594)) (CommentValue!2198 (value!35480 List!5594)) (WhitespaceValue!2198 (value!35481 List!5594)) (IndentationValue!1099 (value!35482 List!5594)) (String!7238) (Int32!1099) (Broken!5496 (value!35483 List!5594)) (Boolean!1100) (Unit!9986) (OperatorValue!1102 (op!1159 List!5594)) (IdentifierValue!2198 (value!35484 List!5594)) (IdentifierValue!2199 (value!35485 List!5594)) (WhitespaceValue!2199 (value!35486 List!5594)) (True!2198) (False!2198) (Broken!5497 (value!35487 List!5594)) (Broken!5498 (value!35488 List!5594)) (True!2199) (RightBrace!1099) (RightBracket!1099) (Colon!1099) (Null!1099) (Comma!1099) (LeftBracket!1099) (False!2199) (LeftBrace!1099) (ImaginaryLiteralValue!1099 (text!8139 List!5594)) (StringLiteralValue!3297 (value!35489 List!5594)) (EOFValue!1099 (value!35490 List!5594)) (IdentValue!1099 (value!35491 List!5594)) (DelimiterValue!2199 (value!35492 List!5594)) (DedentValue!1099 (value!35493 List!5594)) (NewLineValue!1099 (value!35494 List!5594)) (IntegerValue!3297 (value!35495 (_ BitVec 32)) (text!8140 List!5594)) (IntegerValue!3298 (value!35496 Int) (text!8141 List!5594)) (Times!1099) (Or!1099) (Equal!1099) (Minus!1099) (Broken!5499 (value!35497 List!5594)) (And!1099) (Div!1099) (LessEqual!1099) (Mod!1099) (Concat!2509) (Not!1099) (Plus!1099) (SpaceValue!1099 (value!35498 List!5594)) (IntegerValue!3299 (value!35499 Int) (text!8142 List!5594)) (StringLiteralValue!3298 (text!8143 List!5594)) (FloatLiteralValue!2199 (text!8144 List!5594)) (BytesLiteralValue!1099 (value!35500 List!5594)) (CommentValue!2199 (value!35501 List!5594)) (StringLiteralValue!3299 (value!35502 List!5594)) (ErrorTokenValue!1099 (msg!1160 List!5594)) )
))
(declare-datatypes ((String!7239 0))(
  ( (String!7240 (value!35503 String)) )
))
(declare-datatypes ((TokenValueInjection!1966 0))(
  ( (TokenValueInjection!1967 (toValue!1930 Int) (toChars!1789 Int)) )
))
(declare-datatypes ((Rule!1950 0))(
  ( (Rule!1951 (regex!1075 Regex!1409) (tag!1337 String!7239) (isSeparator!1075 Bool) (transformation!1075 TokenValueInjection!1966)) )
))
(declare-datatypes ((Token!1886 0))(
  ( (Token!1887 (value!35504 TokenValue!1099) (rule!1813 Rule!1950) (size!4450 Int) (originalCharacters!1114 List!5595)) )
))
(declare-datatypes ((tuple2!6580 0))(
  ( (tuple2!6581 (_1!3554 Token!1886) (_2!3554 List!5595)) )
))
(declare-datatypes ((Option!1426 0))(
  ( (None!1425) (Some!1425 (v!16272 tuple2!6580)) )
))
(declare-fun lt!238763 () Option!1426)

(get-info :version)

(assert (=> b!566487 (= res!242923 ((_ is Some!1425) lt!238763))))

(declare-datatypes ((List!5596 0))(
  ( (Nil!5586) (Cons!5586 (h!10987 Rule!1950) (t!76327 List!5596)) )
))
(declare-fun rules!3103 () List!5596)

(declare-fun input!2705 () List!5595)

(declare-datatypes ((LexerInterface!961 0))(
  ( (LexerInterfaceExt!958 (__x!4097 Int)) (Lexer!959) )
))
(declare-fun thiss!22590 () LexerInterface!961)

(declare-fun maxPrefix!659 (LexerInterface!961 List!5596 List!5595) Option!1426)

(assert (=> b!566487 (= lt!238763 (maxPrefix!659 thiss!22590 rules!3103 input!2705))))

(declare-fun b!566488 () Bool)

(declare-fun e!342338 () Bool)

(declare-fun e!342347 () Bool)

(declare-fun tp!178620 () Bool)

(assert (=> b!566488 (= e!342338 (and e!342347 tp!178620))))

(declare-fun b!566489 () Bool)

(declare-fun e!342345 () Bool)

(declare-fun e!342350 () Bool)

(assert (=> b!566489 (= e!342345 e!342350)))

(declare-fun res!242930 () Bool)

(assert (=> b!566489 (=> (not res!242930) (not e!342350))))

(declare-fun isDefined!1237 (Option!1426) Bool)

(assert (=> b!566489 (= res!242930 (isDefined!1237 lt!238763))))

(declare-fun e!342334 () Bool)

(declare-fun token!491 () Token!1886)

(declare-fun e!342346 () Bool)

(declare-fun tp!178622 () Bool)

(declare-fun b!566490 () Bool)

(declare-fun inv!21 (TokenValue!1099) Bool)

(assert (=> b!566490 (= e!342346 (and (inv!21 (value!35504 token!491)) e!342334 tp!178622))))

(declare-fun b!566491 () Bool)

(declare-datatypes ((Unit!9987 0))(
  ( (Unit!9988) )
))
(declare-fun e!342332 () Unit!9987)

(declare-fun Unit!9989 () Unit!9987)

(assert (=> b!566491 (= e!342332 Unit!9989)))

(declare-fun e!342341 () Bool)

(assert (=> b!566492 (= e!342341 (and tp!178621 tp!178623))))

(declare-fun b!566493 () Bool)

(declare-fun res!242931 () Bool)

(declare-fun e!342330 () Bool)

(assert (=> b!566493 (=> res!242931 e!342330)))

(declare-fun lt!238777 () List!5595)

(assert (=> b!566493 (= res!242931 (not (= lt!238777 input!2705)))))

(declare-fun b!566494 () Bool)

(declare-fun e!342335 () Bool)

(declare-fun tp!178619 () Bool)

(assert (=> b!566494 (= e!342335 (and tp_is_empty!3173 tp!178619))))

(declare-fun b!566495 () Bool)

(declare-fun res!242915 () Bool)

(assert (=> b!566495 (=> res!242915 e!342330)))

(declare-fun matchR!556 (Regex!1409 List!5595) Bool)

(assert (=> b!566495 (= res!242915 (not (matchR!556 (regex!1075 (rule!1813 token!491)) input!2705)))))

(declare-fun b!566496 () Bool)

(declare-fun res!242911 () Bool)

(assert (=> b!566496 (=> res!242911 e!342330)))

(declare-fun lt!238761 () List!5595)

(declare-fun lt!238767 () List!5595)

(declare-fun ++!1563 (List!5595 List!5595) List!5595)

(assert (=> b!566496 (= res!242911 (not (= (++!1563 lt!238761 lt!238767) input!2705)))))

(declare-fun b!566497 () Bool)

(declare-fun e!342344 () Bool)

(declare-fun e!342348 () Bool)

(assert (=> b!566497 (= e!342344 (not e!342348))))

(declare-fun res!242927 () Bool)

(assert (=> b!566497 (=> res!242927 e!342348)))

(declare-fun lt!238758 () List!5595)

(declare-fun isPrefix!709 (List!5595 List!5595) Bool)

(assert (=> b!566497 (= res!242927 (not (isPrefix!709 input!2705 lt!238758)))))

(declare-fun lt!238776 () List!5595)

(assert (=> b!566497 (isPrefix!709 lt!238776 lt!238758)))

(declare-fun lt!238779 () Unit!9987)

(declare-fun suffix!1342 () List!5595)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!556 (List!5595 List!5595) Unit!9987)

(assert (=> b!566497 (= lt!238779 (lemmaConcatTwoListThenFirstIsPrefix!556 lt!238776 suffix!1342))))

(declare-fun lt!238788 () List!5595)

(assert (=> b!566497 (isPrefix!709 input!2705 lt!238788)))

(declare-fun lt!238781 () Unit!9987)

(assert (=> b!566497 (= lt!238781 (lemmaConcatTwoListThenFirstIsPrefix!556 input!2705 suffix!1342))))

(declare-fun e!342333 () Bool)

(assert (=> b!566497 e!342333))

(declare-fun res!242909 () Bool)

(assert (=> b!566497 (=> (not res!242909) (not e!342333))))

(declare-fun lt!238786 () TokenValue!1099)

(assert (=> b!566497 (= res!242909 (= (value!35504 (_1!3554 (v!16272 lt!238763))) lt!238786))))

(declare-fun apply!1340 (TokenValueInjection!1966 BalanceConc!3592) TokenValue!1099)

(declare-fun seqFromList!1263 (List!5595) BalanceConc!3592)

(assert (=> b!566497 (= lt!238786 (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (seqFromList!1263 lt!238761)))))

(declare-fun lt!238762 () Unit!9987)

(declare-fun lemmaInv!211 (TokenValueInjection!1966) Unit!9987)

(assert (=> b!566497 (= lt!238762 (lemmaInv!211 (transformation!1075 (rule!1813 token!491))))))

(declare-fun lt!238778 () Unit!9987)

(assert (=> b!566497 (= lt!238778 (lemmaInv!211 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))))))

(declare-fun ruleValid!285 (LexerInterface!961 Rule!1950) Bool)

(assert (=> b!566497 (ruleValid!285 thiss!22590 (rule!1813 token!491))))

(declare-fun lt!238764 () Unit!9987)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!142 (LexerInterface!961 Rule!1950 List!5596) Unit!9987)

(assert (=> b!566497 (= lt!238764 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!142 thiss!22590 (rule!1813 token!491) rules!3103))))

(assert (=> b!566497 (ruleValid!285 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))))))

(declare-fun lt!238785 () Unit!9987)

(assert (=> b!566497 (= lt!238785 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!142 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))) rules!3103))))

(assert (=> b!566497 (isPrefix!709 input!2705 input!2705)))

(declare-fun lt!238784 () Unit!9987)

(declare-fun lemmaIsPrefixRefl!447 (List!5595 List!5595) Unit!9987)

(assert (=> b!566497 (= lt!238784 (lemmaIsPrefixRefl!447 input!2705 input!2705))))

(assert (=> b!566497 (= (_2!3554 (v!16272 lt!238763)) lt!238767)))

(declare-fun lt!238773 () Unit!9987)

(declare-fun lemmaSamePrefixThenSameSuffix!432 (List!5595 List!5595 List!5595 List!5595 List!5595) Unit!9987)

(assert (=> b!566497 (= lt!238773 (lemmaSamePrefixThenSameSuffix!432 lt!238761 (_2!3554 (v!16272 lt!238763)) lt!238761 lt!238767 input!2705))))

(declare-fun getSuffix!228 (List!5595 List!5595) List!5595)

(assert (=> b!566497 (= lt!238767 (getSuffix!228 input!2705 lt!238761))))

(assert (=> b!566497 (isPrefix!709 lt!238761 lt!238777)))

(assert (=> b!566497 (= lt!238777 (++!1563 lt!238761 (_2!3554 (v!16272 lt!238763))))))

(declare-fun lt!238783 () Unit!9987)

(assert (=> b!566497 (= lt!238783 (lemmaConcatTwoListThenFirstIsPrefix!556 lt!238761 (_2!3554 (v!16272 lt!238763))))))

(declare-fun lt!238775 () Unit!9987)

(declare-fun lemmaCharactersSize!142 (Token!1886) Unit!9987)

(assert (=> b!566497 (= lt!238775 (lemmaCharactersSize!142 token!491))))

(declare-fun lt!238760 () Unit!9987)

(assert (=> b!566497 (= lt!238760 (lemmaCharactersSize!142 (_1!3554 (v!16272 lt!238763))))))

(declare-fun lt!238780 () Unit!9987)

(assert (=> b!566497 (= lt!238780 e!342332)))

(declare-fun c!106292 () Bool)

(declare-fun lt!238774 () Int)

(declare-fun lt!238759 () Int)

(assert (=> b!566497 (= c!106292 (> lt!238774 lt!238759))))

(declare-fun size!4451 (List!5595) Int)

(assert (=> b!566497 (= lt!238759 (size!4451 lt!238776))))

(assert (=> b!566497 (= lt!238774 (size!4451 lt!238761))))

(declare-fun list!2317 (BalanceConc!3592) List!5595)

(declare-fun charsOf!704 (Token!1886) BalanceConc!3592)

(assert (=> b!566497 (= lt!238761 (list!2317 (charsOf!704 (_1!3554 (v!16272 lt!238763)))))))

(declare-fun lt!238770 () tuple2!6580)

(assert (=> b!566497 (= lt!238763 (Some!1425 lt!238770))))

(assert (=> b!566497 (= lt!238770 (tuple2!6581 (_1!3554 (v!16272 lt!238763)) (_2!3554 (v!16272 lt!238763))))))

(declare-fun lt!238769 () Unit!9987)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!152 (List!5595 List!5595 List!5595 List!5595) Unit!9987)

(assert (=> b!566497 (= lt!238769 (lemmaConcatSameAndSameSizesThenSameLists!152 lt!238776 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!566498 () Bool)

(declare-fun res!242920 () Bool)

(assert (=> b!566498 (=> res!242920 e!342330)))

(assert (=> b!566498 (= res!242920 (not (isPrefix!709 lt!238776 input!2705)))))

(declare-fun b!566499 () Bool)

(declare-fun e!342343 () Bool)

(assert (=> b!566499 (= e!342343 e!342345)))

(declare-fun res!242926 () Bool)

(assert (=> b!566499 (=> res!242926 e!342345)))

(assert (=> b!566499 (= res!242926 (>= lt!238774 lt!238759))))

(declare-fun lt!238765 () List!5595)

(declare-fun e!342351 () Bool)

(declare-fun b!566500 () Bool)

(declare-fun lt!238768 () TokenValue!1099)

(assert (=> b!566500 (= e!342351 (and (= (size!4450 token!491) lt!238759) (= (originalCharacters!1114 token!491) lt!238776) (= (tuple2!6581 token!491 suffix!1342) (tuple2!6581 (Token!1887 lt!238768 (rule!1813 token!491) lt!238759 lt!238776) lt!238765))))))

(declare-fun b!566501 () Bool)

(declare-fun res!242932 () Bool)

(assert (=> b!566501 (=> res!242932 e!342330)))

(declare-fun contains!1309 (List!5596 Rule!1950) Bool)

(assert (=> b!566501 (= res!242932 (not (contains!1309 rules!3103 (rule!1813 token!491))))))

(declare-fun e!342354 () Bool)

(assert (=> b!566502 (= e!342354 (and tp!178618 tp!178624))))

(declare-fun b!566503 () Bool)

(declare-fun Unit!9990 () Unit!9987)

(assert (=> b!566503 (= e!342332 Unit!9990)))

(assert (=> b!566503 false))

(declare-fun b!566504 () Bool)

(declare-fun get!2127 (Option!1426) tuple2!6580)

(assert (=> b!566504 (= e!342350 (= (_1!3554 (get!2127 lt!238763)) (_1!3554 (v!16272 lt!238763))))))

(declare-fun b!566505 () Bool)

(assert (=> b!566505 (= e!342331 e!342344)))

(declare-fun res!242928 () Bool)

(assert (=> b!566505 (=> (not res!242928) (not e!342344))))

(assert (=> b!566505 (= res!242928 (= lt!238758 lt!238788))))

(assert (=> b!566505 (= lt!238758 (++!1563 lt!238776 suffix!1342))))

(declare-fun b!566506 () Bool)

(declare-fun e!342353 () Bool)

(declare-fun e!342336 () Bool)

(assert (=> b!566506 (= e!342353 e!342336)))

(declare-fun res!242925 () Bool)

(assert (=> b!566506 (=> (not res!242925) (not e!342336))))

(declare-fun lt!238772 () Option!1426)

(assert (=> b!566506 (= res!242925 (isDefined!1237 lt!238772))))

(assert (=> b!566506 (= lt!238772 (maxPrefix!659 thiss!22590 rules!3103 lt!238788))))

(assert (=> b!566506 (= lt!238788 (++!1563 input!2705 suffix!1342))))

(declare-fun b!566507 () Bool)

(assert (=> b!566507 (= e!342333 (and (= (size!4450 (_1!3554 (v!16272 lt!238763))) lt!238774) (= (originalCharacters!1114 (_1!3554 (v!16272 lt!238763))) lt!238761) (= lt!238770 (tuple2!6581 (Token!1887 lt!238786 (rule!1813 (_1!3554 (v!16272 lt!238763))) lt!238774 lt!238761) lt!238767))))))

(declare-fun b!566508 () Bool)

(declare-fun res!242914 () Bool)

(declare-fun e!342352 () Bool)

(assert (=> b!566508 (=> (not res!242914) (not e!342352))))

(declare-fun isEmpty!4031 (List!5595) Bool)

(assert (=> b!566508 (= res!242914 (not (isEmpty!4031 input!2705)))))

(declare-fun b!566509 () Bool)

(declare-fun tp!178617 () Bool)

(declare-fun inv!7015 (String!7239) Bool)

(declare-fun inv!7018 (TokenValueInjection!1966) Bool)

(assert (=> b!566509 (= e!342334 (and tp!178617 (inv!7015 (tag!1337 (rule!1813 token!491))) (inv!7018 (transformation!1075 (rule!1813 token!491))) e!342341))))

(declare-fun b!566510 () Bool)

(declare-fun res!242921 () Bool)

(assert (=> b!566510 (=> res!242921 e!342330)))

(assert (=> b!566510 (= res!242921 (not (= (getSuffix!228 input!2705 input!2705) Nil!5585)))))

(declare-fun b!566511 () Bool)

(declare-fun res!242924 () Bool)

(assert (=> b!566511 (=> (not res!242924) (not e!342333))))

(assert (=> b!566511 (= res!242924 (= (size!4450 (_1!3554 (v!16272 lt!238763))) (size!4451 (originalCharacters!1114 (_1!3554 (v!16272 lt!238763))))))))

(declare-fun b!566512 () Bool)

(declare-fun e!342337 () Bool)

(assert (=> b!566512 (= e!342337 (matchR!556 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) lt!238761))))

(declare-fun b!566513 () Bool)

(declare-fun res!242910 () Bool)

(assert (=> b!566513 (=> (not res!242910) (not e!342351))))

(assert (=> b!566513 (= res!242910 (= (size!4450 token!491) (size!4451 (originalCharacters!1114 token!491))))))

(declare-fun b!566514 () Bool)

(declare-fun res!242917 () Bool)

(assert (=> b!566514 (=> (not res!242917) (not e!342352))))

(declare-fun rulesInvariant!924 (LexerInterface!961 List!5596) Bool)

(assert (=> b!566514 (= res!242917 (rulesInvariant!924 thiss!22590 rules!3103))))

(declare-fun b!566515 () Bool)

(declare-fun res!242922 () Bool)

(assert (=> b!566515 (=> res!242922 e!342330)))

(assert (=> b!566515 (= res!242922 (not (isPrefix!709 lt!238761 input!2705)))))

(declare-fun b!566516 () Bool)

(assert (=> b!566516 (= e!342352 e!342353)))

(declare-fun res!242912 () Bool)

(assert (=> b!566516 (=> (not res!242912) (not e!342353))))

(assert (=> b!566516 (= res!242912 (= lt!238776 input!2705))))

(assert (=> b!566516 (= lt!238776 (list!2317 (charsOf!704 token!491)))))

(declare-fun b!566517 () Bool)

(declare-fun res!242913 () Bool)

(assert (=> b!566517 (=> (not res!242913) (not e!342352))))

(declare-fun isEmpty!4032 (List!5596) Bool)

(assert (=> b!566517 (= res!242913 (not (isEmpty!4032 rules!3103)))))

(declare-fun res!242907 () Bool)

(assert (=> start!52208 (=> (not res!242907) (not e!342352))))

(assert (=> start!52208 (= res!242907 ((_ is Lexer!959) thiss!22590))))

(assert (=> start!52208 e!342352))

(assert (=> start!52208 e!342335))

(assert (=> start!52208 e!342338))

(declare-fun inv!7019 (Token!1886) Bool)

(assert (=> start!52208 (and (inv!7019 token!491) e!342346)))

(assert (=> start!52208 true))

(assert (=> start!52208 e!342342))

(declare-fun b!566518 () Bool)

(declare-fun tp!178625 () Bool)

(assert (=> b!566518 (= e!342347 (and tp!178625 (inv!7015 (tag!1337 (h!10987 rules!3103))) (inv!7018 (transformation!1075 (h!10987 rules!3103))) e!342354))))

(declare-fun b!566519 () Bool)

(assert (=> b!566519 (= e!342330 e!342337)))

(declare-fun res!242908 () Bool)

(assert (=> b!566519 (=> res!242908 e!342337)))

(assert (=> b!566519 (= res!242908 (not (contains!1309 rules!3103 (rule!1813 (_1!3554 (v!16272 lt!238763))))))))

(assert (=> b!566519 (= lt!238767 (_2!3554 (v!16272 lt!238763)))))

(declare-fun b!566520 () Bool)

(assert (=> b!566520 (= e!342348 e!342330)))

(declare-fun res!242918 () Bool)

(assert (=> b!566520 (=> res!242918 e!342330)))

(assert (=> b!566520 (= res!242918 (>= lt!238774 lt!238759))))

(assert (=> b!566520 e!342343))

(declare-fun res!242919 () Bool)

(assert (=> b!566520 (=> (not res!242919) (not e!342343))))

(declare-fun maxPrefixOneRule!360 (LexerInterface!961 Rule!1950 List!5595) Option!1426)

(assert (=> b!566520 (= res!242919 (= (maxPrefixOneRule!360 thiss!22590 (rule!1813 token!491) lt!238788) (Some!1425 (tuple2!6581 (Token!1887 lt!238768 (rule!1813 token!491) lt!238759 lt!238776) suffix!1342))))))

(declare-fun lt!238782 () Unit!9987)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!110 (LexerInterface!961 List!5596 List!5595 List!5595 List!5595 Rule!1950) Unit!9987)

(assert (=> b!566520 (= lt!238782 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!110 thiss!22590 rules!3103 lt!238776 lt!238788 suffix!1342 (rule!1813 token!491)))))

(assert (=> b!566520 (= (maxPrefixOneRule!360 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))) input!2705) (Some!1425 (tuple2!6581 (Token!1887 lt!238786 (rule!1813 (_1!3554 (v!16272 lt!238763))) lt!238774 lt!238761) (_2!3554 (v!16272 lt!238763)))))))

(declare-fun lt!238766 () Unit!9987)

(assert (=> b!566520 (= lt!238766 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!110 thiss!22590 rules!3103 lt!238761 input!2705 (_2!3554 (v!16272 lt!238763)) (rule!1813 (_1!3554 (v!16272 lt!238763)))))))

(assert (=> b!566520 e!342351))

(declare-fun res!242916 () Bool)

(assert (=> b!566520 (=> (not res!242916) (not e!342351))))

(assert (=> b!566520 (= res!242916 (= (value!35504 token!491) lt!238768))))

(assert (=> b!566520 (= lt!238768 (apply!1340 (transformation!1075 (rule!1813 token!491)) (seqFromList!1263 lt!238776)))))

(assert (=> b!566520 (= suffix!1342 lt!238765)))

(declare-fun lt!238771 () Unit!9987)

(assert (=> b!566520 (= lt!238771 (lemmaSamePrefixThenSameSuffix!432 lt!238776 suffix!1342 lt!238776 lt!238765 lt!238788))))

(assert (=> b!566520 (= lt!238765 (getSuffix!228 lt!238788 lt!238776))))

(declare-fun b!566521 () Bool)

(assert (=> b!566521 (= e!342336 e!342355)))

(declare-fun res!242929 () Bool)

(assert (=> b!566521 (=> (not res!242929) (not e!342355))))

(declare-fun lt!238787 () tuple2!6580)

(assert (=> b!566521 (= res!242929 (and (= (_1!3554 lt!238787) token!491) (= (_2!3554 lt!238787) suffix!1342)))))

(assert (=> b!566521 (= lt!238787 (get!2127 lt!238772))))

(assert (= (and start!52208 res!242907) b!566517))

(assert (= (and b!566517 res!242913) b!566514))

(assert (= (and b!566514 res!242917) b!566508))

(assert (= (and b!566508 res!242914) b!566516))

(assert (= (and b!566516 res!242912) b!566506))

(assert (= (and b!566506 res!242925) b!566521))

(assert (= (and b!566521 res!242929) b!566487))

(assert (= (and b!566487 res!242923) b!566505))

(assert (= (and b!566505 res!242928) b!566497))

(assert (= (and b!566497 c!106292) b!566503))

(assert (= (and b!566497 (not c!106292)) b!566491))

(assert (= (and b!566497 res!242909) b!566511))

(assert (= (and b!566511 res!242924) b!566507))

(assert (= (and b!566497 (not res!242927)) b!566520))

(assert (= (and b!566520 res!242916) b!566513))

(assert (= (and b!566513 res!242910) b!566500))

(assert (= (and b!566520 res!242919) b!566499))

(assert (= (and b!566499 (not res!242926)) b!566489))

(assert (= (and b!566489 res!242930) b!566504))

(assert (= (and b!566520 (not res!242918)) b!566501))

(assert (= (and b!566501 (not res!242932)) b!566495))

(assert (= (and b!566495 (not res!242915)) b!566498))

(assert (= (and b!566498 (not res!242920)) b!566510))

(assert (= (and b!566510 (not res!242921)) b!566493))

(assert (= (and b!566493 (not res!242931)) b!566515))

(assert (= (and b!566515 (not res!242922)) b!566496))

(assert (= (and b!566496 (not res!242911)) b!566519))

(assert (= (and b!566519 (not res!242908)) b!566512))

(assert (= (and start!52208 ((_ is Cons!5585) suffix!1342)) b!566494))

(assert (= b!566518 b!566502))

(assert (= b!566488 b!566518))

(assert (= (and start!52208 ((_ is Cons!5586) rules!3103)) b!566488))

(assert (= b!566509 b!566492))

(assert (= b!566490 b!566509))

(assert (= start!52208 b!566490))

(assert (= (and start!52208 ((_ is Cons!5585) input!2705)) b!566486))

(declare-fun m!820157 () Bool)

(assert (=> b!566497 m!820157))

(declare-fun m!820159 () Bool)

(assert (=> b!566497 m!820159))

(declare-fun m!820161 () Bool)

(assert (=> b!566497 m!820161))

(declare-fun m!820163 () Bool)

(assert (=> b!566497 m!820163))

(declare-fun m!820165 () Bool)

(assert (=> b!566497 m!820165))

(declare-fun m!820167 () Bool)

(assert (=> b!566497 m!820167))

(declare-fun m!820169 () Bool)

(assert (=> b!566497 m!820169))

(declare-fun m!820171 () Bool)

(assert (=> b!566497 m!820171))

(declare-fun m!820173 () Bool)

(assert (=> b!566497 m!820173))

(declare-fun m!820175 () Bool)

(assert (=> b!566497 m!820175))

(declare-fun m!820177 () Bool)

(assert (=> b!566497 m!820177))

(declare-fun m!820179 () Bool)

(assert (=> b!566497 m!820179))

(declare-fun m!820181 () Bool)

(assert (=> b!566497 m!820181))

(assert (=> b!566497 m!820173))

(declare-fun m!820183 () Bool)

(assert (=> b!566497 m!820183))

(declare-fun m!820185 () Bool)

(assert (=> b!566497 m!820185))

(declare-fun m!820187 () Bool)

(assert (=> b!566497 m!820187))

(declare-fun m!820189 () Bool)

(assert (=> b!566497 m!820189))

(declare-fun m!820191 () Bool)

(assert (=> b!566497 m!820191))

(declare-fun m!820193 () Bool)

(assert (=> b!566497 m!820193))

(declare-fun m!820195 () Bool)

(assert (=> b!566497 m!820195))

(declare-fun m!820197 () Bool)

(assert (=> b!566497 m!820197))

(declare-fun m!820199 () Bool)

(assert (=> b!566497 m!820199))

(declare-fun m!820201 () Bool)

(assert (=> b!566497 m!820201))

(declare-fun m!820203 () Bool)

(assert (=> b!566497 m!820203))

(declare-fun m!820205 () Bool)

(assert (=> b!566497 m!820205))

(assert (=> b!566497 m!820193))

(declare-fun m!820207 () Bool)

(assert (=> b!566497 m!820207))

(declare-fun m!820209 () Bool)

(assert (=> b!566497 m!820209))

(declare-fun m!820211 () Bool)

(assert (=> b!566498 m!820211))

(declare-fun m!820213 () Bool)

(assert (=> b!566501 m!820213))

(declare-fun m!820215 () Bool)

(assert (=> b!566506 m!820215))

(declare-fun m!820217 () Bool)

(assert (=> b!566506 m!820217))

(declare-fun m!820219 () Bool)

(assert (=> b!566506 m!820219))

(declare-fun m!820221 () Bool)

(assert (=> b!566510 m!820221))

(declare-fun m!820223 () Bool)

(assert (=> b!566521 m!820223))

(declare-fun m!820225 () Bool)

(assert (=> start!52208 m!820225))

(declare-fun m!820227 () Bool)

(assert (=> b!566487 m!820227))

(declare-fun m!820229 () Bool)

(assert (=> b!566518 m!820229))

(declare-fun m!820231 () Bool)

(assert (=> b!566518 m!820231))

(declare-fun m!820233 () Bool)

(assert (=> b!566515 m!820233))

(declare-fun m!820235 () Bool)

(assert (=> b!566517 m!820235))

(declare-fun m!820237 () Bool)

(assert (=> b!566490 m!820237))

(declare-fun m!820239 () Bool)

(assert (=> b!566513 m!820239))

(declare-fun m!820241 () Bool)

(assert (=> b!566496 m!820241))

(declare-fun m!820243 () Bool)

(assert (=> b!566511 m!820243))

(declare-fun m!820245 () Bool)

(assert (=> b!566516 m!820245))

(assert (=> b!566516 m!820245))

(declare-fun m!820247 () Bool)

(assert (=> b!566516 m!820247))

(declare-fun m!820249 () Bool)

(assert (=> b!566509 m!820249))

(declare-fun m!820251 () Bool)

(assert (=> b!566509 m!820251))

(declare-fun m!820253 () Bool)

(assert (=> b!566520 m!820253))

(declare-fun m!820255 () Bool)

(assert (=> b!566520 m!820255))

(declare-fun m!820257 () Bool)

(assert (=> b!566520 m!820257))

(declare-fun m!820259 () Bool)

(assert (=> b!566520 m!820259))

(declare-fun m!820261 () Bool)

(assert (=> b!566520 m!820261))

(declare-fun m!820263 () Bool)

(assert (=> b!566520 m!820263))

(assert (=> b!566520 m!820255))

(declare-fun m!820265 () Bool)

(assert (=> b!566520 m!820265))

(declare-fun m!820267 () Bool)

(assert (=> b!566520 m!820267))

(declare-fun m!820269 () Bool)

(assert (=> b!566504 m!820269))

(declare-fun m!820271 () Bool)

(assert (=> b!566512 m!820271))

(declare-fun m!820273 () Bool)

(assert (=> b!566489 m!820273))

(declare-fun m!820275 () Bool)

(assert (=> b!566514 m!820275))

(declare-fun m!820277 () Bool)

(assert (=> b!566508 m!820277))

(declare-fun m!820279 () Bool)

(assert (=> b!566519 m!820279))

(declare-fun m!820281 () Bool)

(assert (=> b!566495 m!820281))

(declare-fun m!820283 () Bool)

(assert (=> b!566505 m!820283))

(check-sat (not b!566490) (not b!566513) (not b!566494) b_and!55205 (not b!566512) (not b!566517) (not b_next!15811) (not b!566518) b_and!55207 (not b!566495) (not b!566496) b_and!55203 (not b!566487) (not b!566514) tp_is_empty!3173 (not b!566501) (not b!566489) (not b!566506) (not b!566509) (not b!566508) (not b!566488) (not b_next!15807) (not b!566520) (not b!566505) b_and!55209 (not start!52208) (not b!566486) (not b!566516) (not b!566510) (not b!566515) (not b_next!15805) (not b!566504) (not b!566519) (not b!566511) (not b!566497) (not b!566521) (not b!566498) (not b_next!15809))
(check-sat b_and!55207 b_and!55203 (not b_next!15807) b_and!55205 b_and!55209 (not b_next!15805) (not b_next!15811) (not b_next!15809))
(get-model)

(declare-fun d!198417 () Bool)

(declare-fun list!2318 (Conc!1792) List!5595)

(assert (=> d!198417 (= (list!2317 (charsOf!704 token!491)) (list!2318 (c!106294 (charsOf!704 token!491))))))

(declare-fun bs!68712 () Bool)

(assert (= bs!68712 d!198417))

(declare-fun m!820285 () Bool)

(assert (=> bs!68712 m!820285))

(assert (=> b!566516 d!198417))

(declare-fun d!198419 () Bool)

(declare-fun lt!238791 () BalanceConc!3592)

(assert (=> d!198419 (= (list!2317 lt!238791) (originalCharacters!1114 token!491))))

(declare-fun dynLambda!3227 (Int TokenValue!1099) BalanceConc!3592)

(assert (=> d!198419 (= lt!238791 (dynLambda!3227 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (value!35504 token!491)))))

(assert (=> d!198419 (= (charsOf!704 token!491) lt!238791)))

(declare-fun b_lambda!21821 () Bool)

(assert (=> (not b_lambda!21821) (not d!198419)))

(declare-fun t!76329 () Bool)

(declare-fun tb!49291 () Bool)

(assert (=> (and b!566502 (= (toChars!1789 (transformation!1075 (h!10987 rules!3103))) (toChars!1789 (transformation!1075 (rule!1813 token!491)))) t!76329) tb!49291))

(declare-fun b!566526 () Bool)

(declare-fun e!342358 () Bool)

(declare-fun tp!178629 () Bool)

(declare-fun inv!7022 (Conc!1792) Bool)

(assert (=> b!566526 (= e!342358 (and (inv!7022 (c!106294 (dynLambda!3227 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (value!35504 token!491)))) tp!178629))))

(declare-fun result!55174 () Bool)

(declare-fun inv!7023 (BalanceConc!3592) Bool)

(assert (=> tb!49291 (= result!55174 (and (inv!7023 (dynLambda!3227 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (value!35504 token!491))) e!342358))))

(assert (= tb!49291 b!566526))

(declare-fun m!820287 () Bool)

(assert (=> b!566526 m!820287))

(declare-fun m!820289 () Bool)

(assert (=> tb!49291 m!820289))

(assert (=> d!198419 t!76329))

(declare-fun b_and!55211 () Bool)

(assert (= b_and!55205 (and (=> t!76329 result!55174) b_and!55211)))

(declare-fun t!76331 () Bool)

(declare-fun tb!49293 () Bool)

(assert (=> (and b!566492 (= (toChars!1789 (transformation!1075 (rule!1813 token!491))) (toChars!1789 (transformation!1075 (rule!1813 token!491)))) t!76331) tb!49293))

(declare-fun result!55178 () Bool)

(assert (= result!55178 result!55174))

(assert (=> d!198419 t!76331))

(declare-fun b_and!55213 () Bool)

(assert (= b_and!55209 (and (=> t!76331 result!55178) b_and!55213)))

(declare-fun m!820291 () Bool)

(assert (=> d!198419 m!820291))

(declare-fun m!820293 () Bool)

(assert (=> d!198419 m!820293))

(assert (=> b!566516 d!198419))

(declare-fun b!566556 () Bool)

(declare-fun e!342377 () Bool)

(declare-fun lt!238794 () Bool)

(assert (=> b!566556 (= e!342377 (not lt!238794))))

(declare-fun bm!39331 () Bool)

(declare-fun call!39336 () Bool)

(assert (=> bm!39331 (= call!39336 (isEmpty!4031 input!2705))))

(declare-fun b!566557 () Bool)

(declare-fun e!342373 () Bool)

(declare-fun head!1211 (List!5595) C!3740)

(assert (=> b!566557 (= e!342373 (not (= (head!1211 input!2705) (c!106293 (regex!1075 (rule!1813 token!491))))))))

(declare-fun b!566558 () Bool)

(declare-fun e!342378 () Bool)

(assert (=> b!566558 (= e!342378 e!342377)))

(declare-fun c!106301 () Bool)

(assert (=> b!566558 (= c!106301 ((_ is EmptyLang!1409) (regex!1075 (rule!1813 token!491))))))

(declare-fun b!566559 () Bool)

(declare-fun e!342374 () Bool)

(assert (=> b!566559 (= e!342374 e!342373)))

(declare-fun res!242957 () Bool)

(assert (=> b!566559 (=> res!242957 e!342373)))

(assert (=> b!566559 (= res!242957 call!39336)))

(declare-fun b!566560 () Bool)

(assert (=> b!566560 (= e!342378 (= lt!238794 call!39336))))

(declare-fun b!566561 () Bool)

(declare-fun res!242958 () Bool)

(declare-fun e!342375 () Bool)

(assert (=> b!566561 (=> (not res!242958) (not e!342375))))

(assert (=> b!566561 (= res!242958 (not call!39336))))

(declare-fun b!566562 () Bool)

(declare-fun res!242963 () Bool)

(declare-fun e!342379 () Bool)

(assert (=> b!566562 (=> res!242963 e!342379)))

(assert (=> b!566562 (= res!242963 e!342375)))

(declare-fun res!242960 () Bool)

(assert (=> b!566562 (=> (not res!242960) (not e!342375))))

(assert (=> b!566562 (= res!242960 lt!238794)))

(declare-fun d!198421 () Bool)

(assert (=> d!198421 e!342378))

(declare-fun c!106302 () Bool)

(assert (=> d!198421 (= c!106302 ((_ is EmptyExpr!1409) (regex!1075 (rule!1813 token!491))))))

(declare-fun e!342376 () Bool)

(assert (=> d!198421 (= lt!238794 e!342376)))

(declare-fun c!106303 () Bool)

(assert (=> d!198421 (= c!106303 (isEmpty!4031 input!2705))))

(declare-fun validRegex!469 (Regex!1409) Bool)

(assert (=> d!198421 (validRegex!469 (regex!1075 (rule!1813 token!491)))))

(assert (=> d!198421 (= (matchR!556 (regex!1075 (rule!1813 token!491)) input!2705) lt!238794)))

(declare-fun b!566555 () Bool)

(declare-fun res!242961 () Bool)

(assert (=> b!566555 (=> res!242961 e!342373)))

(declare-fun tail!740 (List!5595) List!5595)

(assert (=> b!566555 (= res!242961 (not (isEmpty!4031 (tail!740 input!2705))))))

(declare-fun b!566563 () Bool)

(declare-fun derivativeStep!288 (Regex!1409 C!3740) Regex!1409)

(assert (=> b!566563 (= e!342376 (matchR!556 (derivativeStep!288 (regex!1075 (rule!1813 token!491)) (head!1211 input!2705)) (tail!740 input!2705)))))

(declare-fun b!566564 () Bool)

(assert (=> b!566564 (= e!342375 (= (head!1211 input!2705) (c!106293 (regex!1075 (rule!1813 token!491)))))))

(declare-fun b!566565 () Bool)

(assert (=> b!566565 (= e!342379 e!342374)))

(declare-fun res!242959 () Bool)

(assert (=> b!566565 (=> (not res!242959) (not e!342374))))

(assert (=> b!566565 (= res!242959 (not lt!238794))))

(declare-fun b!566566 () Bool)

(declare-fun res!242962 () Bool)

(assert (=> b!566566 (=> (not res!242962) (not e!342375))))

(assert (=> b!566566 (= res!242962 (isEmpty!4031 (tail!740 input!2705)))))

(declare-fun b!566567 () Bool)

(declare-fun nullable!374 (Regex!1409) Bool)

(assert (=> b!566567 (= e!342376 (nullable!374 (regex!1075 (rule!1813 token!491))))))

(declare-fun b!566568 () Bool)

(declare-fun res!242964 () Bool)

(assert (=> b!566568 (=> res!242964 e!342379)))

(assert (=> b!566568 (= res!242964 (not ((_ is ElementMatch!1409) (regex!1075 (rule!1813 token!491)))))))

(assert (=> b!566568 (= e!342377 e!342379)))

(assert (= (and d!198421 c!106303) b!566567))

(assert (= (and d!198421 (not c!106303)) b!566563))

(assert (= (and d!198421 c!106302) b!566560))

(assert (= (and d!198421 (not c!106302)) b!566558))

(assert (= (and b!566558 c!106301) b!566556))

(assert (= (and b!566558 (not c!106301)) b!566568))

(assert (= (and b!566568 (not res!242964)) b!566562))

(assert (= (and b!566562 res!242960) b!566561))

(assert (= (and b!566561 res!242958) b!566566))

(assert (= (and b!566566 res!242962) b!566564))

(assert (= (and b!566562 (not res!242963)) b!566565))

(assert (= (and b!566565 res!242959) b!566559))

(assert (= (and b!566559 (not res!242957)) b!566555))

(assert (= (and b!566555 (not res!242961)) b!566557))

(assert (= (or b!566560 b!566559 b!566561) bm!39331))

(declare-fun m!820297 () Bool)

(assert (=> b!566567 m!820297))

(assert (=> d!198421 m!820277))

(declare-fun m!820299 () Bool)

(assert (=> d!198421 m!820299))

(declare-fun m!820301 () Bool)

(assert (=> b!566557 m!820301))

(assert (=> b!566564 m!820301))

(declare-fun m!820303 () Bool)

(assert (=> b!566566 m!820303))

(assert (=> b!566566 m!820303))

(declare-fun m!820305 () Bool)

(assert (=> b!566566 m!820305))

(assert (=> bm!39331 m!820277))

(assert (=> b!566563 m!820301))

(assert (=> b!566563 m!820301))

(declare-fun m!820307 () Bool)

(assert (=> b!566563 m!820307))

(assert (=> b!566563 m!820303))

(assert (=> b!566563 m!820307))

(assert (=> b!566563 m!820303))

(declare-fun m!820309 () Bool)

(assert (=> b!566563 m!820309))

(assert (=> b!566555 m!820303))

(assert (=> b!566555 m!820303))

(assert (=> b!566555 m!820305))

(assert (=> b!566495 d!198421))

(declare-fun d!198427 () Bool)

(assert (=> d!198427 (= (isEmpty!4032 rules!3103) ((_ is Nil!5586) rules!3103))))

(assert (=> b!566517 d!198427))

(declare-fun b!566596 () Bool)

(declare-fun e!342392 () List!5595)

(assert (=> b!566596 (= e!342392 (Cons!5585 (h!10986 lt!238761) (++!1563 (t!76326 lt!238761) lt!238767)))))

(declare-fun lt!238807 () List!5595)

(declare-fun e!342390 () Bool)

(declare-fun b!566598 () Bool)

(assert (=> b!566598 (= e!342390 (or (not (= lt!238767 Nil!5585)) (= lt!238807 lt!238761)))))

(declare-fun b!566595 () Bool)

(assert (=> b!566595 (= e!342392 lt!238767)))

(declare-fun b!566597 () Bool)

(declare-fun res!242988 () Bool)

(assert (=> b!566597 (=> (not res!242988) (not e!342390))))

(assert (=> b!566597 (= res!242988 (= (size!4451 lt!238807) (+ (size!4451 lt!238761) (size!4451 lt!238767))))))

(declare-fun d!198429 () Bool)

(assert (=> d!198429 e!342390))

(declare-fun res!242985 () Bool)

(assert (=> d!198429 (=> (not res!242985) (not e!342390))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!981 (List!5595) (InoxSet C!3740))

(assert (=> d!198429 (= res!242985 (= (content!981 lt!238807) ((_ map or) (content!981 lt!238761) (content!981 lt!238767))))))

(assert (=> d!198429 (= lt!238807 e!342392)))

(declare-fun c!106309 () Bool)

(assert (=> d!198429 (= c!106309 ((_ is Nil!5585) lt!238761))))

(assert (=> d!198429 (= (++!1563 lt!238761 lt!238767) lt!238807)))

(assert (= (and d!198429 c!106309) b!566595))

(assert (= (and d!198429 (not c!106309)) b!566596))

(assert (= (and d!198429 res!242985) b!566597))

(assert (= (and b!566597 res!242988) b!566598))

(declare-fun m!820311 () Bool)

(assert (=> b!566596 m!820311))

(declare-fun m!820313 () Bool)

(assert (=> b!566597 m!820313))

(assert (=> b!566597 m!820189))

(declare-fun m!820315 () Bool)

(assert (=> b!566597 m!820315))

(declare-fun m!820317 () Bool)

(assert (=> d!198429 m!820317))

(declare-fun m!820319 () Bool)

(assert (=> d!198429 m!820319))

(declare-fun m!820321 () Bool)

(assert (=> d!198429 m!820321))

(assert (=> b!566496 d!198429))

(declare-fun d!198431 () Bool)

(assert (=> d!198431 (= (inv!7015 (tag!1337 (h!10987 rules!3103))) (= (mod (str.len (value!35503 (tag!1337 (h!10987 rules!3103)))) 2) 0))))

(assert (=> b!566518 d!198431))

(declare-fun d!198433 () Bool)

(declare-fun res!243000 () Bool)

(declare-fun e!342403 () Bool)

(assert (=> d!198433 (=> (not res!243000) (not e!342403))))

(declare-fun semiInverseModEq!413 (Int Int) Bool)

(assert (=> d!198433 (= res!243000 (semiInverseModEq!413 (toChars!1789 (transformation!1075 (h!10987 rules!3103))) (toValue!1930 (transformation!1075 (h!10987 rules!3103)))))))

(assert (=> d!198433 (= (inv!7018 (transformation!1075 (h!10987 rules!3103))) e!342403)))

(declare-fun b!566622 () Bool)

(declare-fun equivClasses!396 (Int Int) Bool)

(assert (=> b!566622 (= e!342403 (equivClasses!396 (toChars!1789 (transformation!1075 (h!10987 rules!3103))) (toValue!1930 (transformation!1075 (h!10987 rules!3103)))))))

(assert (= (and d!198433 res!243000) b!566622))

(declare-fun m!820371 () Bool)

(assert (=> d!198433 m!820371))

(declare-fun m!820373 () Bool)

(assert (=> b!566622 m!820373))

(assert (=> b!566518 d!198433))

(declare-fun d!198441 () Bool)

(declare-fun lt!238823 () Int)

(assert (=> d!198441 (>= lt!238823 0)))

(declare-fun e!342415 () Int)

(assert (=> d!198441 (= lt!238823 e!342415)))

(declare-fun c!106316 () Bool)

(assert (=> d!198441 (= c!106316 ((_ is Nil!5585) lt!238776))))

(assert (=> d!198441 (= (size!4451 lt!238776) lt!238823)))

(declare-fun b!566647 () Bool)

(assert (=> b!566647 (= e!342415 0)))

(declare-fun b!566648 () Bool)

(assert (=> b!566648 (= e!342415 (+ 1 (size!4451 (t!76326 lt!238776))))))

(assert (= (and d!198441 c!106316) b!566647))

(assert (= (and d!198441 (not c!106316)) b!566648))

(declare-fun m!820385 () Bool)

(assert (=> b!566648 m!820385))

(assert (=> b!566497 d!198441))

(declare-fun d!198445 () Bool)

(assert (=> d!198445 (= (size!4450 (_1!3554 (v!16272 lt!238763))) (size!4451 (originalCharacters!1114 (_1!3554 (v!16272 lt!238763)))))))

(declare-fun Unit!9991 () Unit!9987)

(assert (=> d!198445 (= (lemmaCharactersSize!142 (_1!3554 (v!16272 lt!238763))) Unit!9991)))

(declare-fun bs!68714 () Bool)

(assert (= bs!68714 d!198445))

(assert (=> bs!68714 m!820243))

(assert (=> b!566497 d!198445))

(declare-fun d!198449 () Bool)

(declare-fun res!243018 () Bool)

(declare-fun e!342418 () Bool)

(assert (=> d!198449 (=> (not res!243018) (not e!342418))))

(assert (=> d!198449 (= res!243018 (validRegex!469 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))))))

(assert (=> d!198449 (= (ruleValid!285 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763)))) e!342418)))

(declare-fun b!566653 () Bool)

(declare-fun res!243019 () Bool)

(assert (=> b!566653 (=> (not res!243019) (not e!342418))))

(assert (=> b!566653 (= res!243019 (not (nullable!374 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))))))

(declare-fun b!566654 () Bool)

(assert (=> b!566654 (= e!342418 (not (= (tag!1337 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (String!7240 ""))))))

(assert (= (and d!198449 res!243018) b!566653))

(assert (= (and b!566653 res!243019) b!566654))

(declare-fun m!820417 () Bool)

(assert (=> d!198449 m!820417))

(declare-fun m!820419 () Bool)

(assert (=> b!566653 m!820419))

(assert (=> b!566497 d!198449))

(declare-fun b!566666 () Bool)

(declare-fun e!342429 () Bool)

(declare-fun e!342430 () Bool)

(assert (=> b!566666 (= e!342429 e!342430)))

(declare-fun res!243032 () Bool)

(assert (=> b!566666 (=> (not res!243032) (not e!342430))))

(assert (=> b!566666 (= res!243032 (not ((_ is Nil!5585) lt!238788)))))

(declare-fun d!198457 () Bool)

(declare-fun e!342428 () Bool)

(assert (=> d!198457 e!342428))

(declare-fun res!243034 () Bool)

(assert (=> d!198457 (=> res!243034 e!342428)))

(declare-fun lt!238829 () Bool)

(assert (=> d!198457 (= res!243034 (not lt!238829))))

(assert (=> d!198457 (= lt!238829 e!342429)))

(declare-fun res!243033 () Bool)

(assert (=> d!198457 (=> res!243033 e!342429)))

(assert (=> d!198457 (= res!243033 ((_ is Nil!5585) input!2705))))

(assert (=> d!198457 (= (isPrefix!709 input!2705 lt!238788) lt!238829)))

(declare-fun b!566668 () Bool)

(assert (=> b!566668 (= e!342430 (isPrefix!709 (tail!740 input!2705) (tail!740 lt!238788)))))

(declare-fun b!566667 () Bool)

(declare-fun res!243031 () Bool)

(assert (=> b!566667 (=> (not res!243031) (not e!342430))))

(assert (=> b!566667 (= res!243031 (= (head!1211 input!2705) (head!1211 lt!238788)))))

(declare-fun b!566669 () Bool)

(assert (=> b!566669 (= e!342428 (>= (size!4451 lt!238788) (size!4451 input!2705)))))

(assert (= (and d!198457 (not res!243033)) b!566666))

(assert (= (and b!566666 res!243032) b!566667))

(assert (= (and b!566667 res!243031) b!566668))

(assert (= (and d!198457 (not res!243034)) b!566669))

(assert (=> b!566668 m!820303))

(declare-fun m!820425 () Bool)

(assert (=> b!566668 m!820425))

(assert (=> b!566668 m!820303))

(assert (=> b!566668 m!820425))

(declare-fun m!820427 () Bool)

(assert (=> b!566668 m!820427))

(assert (=> b!566667 m!820301))

(declare-fun m!820429 () Bool)

(assert (=> b!566667 m!820429))

(declare-fun m!820431 () Bool)

(assert (=> b!566669 m!820431))

(declare-fun m!820433 () Bool)

(assert (=> b!566669 m!820433))

(assert (=> b!566497 d!198457))

(declare-fun d!198461 () Bool)

(assert (=> d!198461 (= (list!2317 (charsOf!704 (_1!3554 (v!16272 lt!238763)))) (list!2318 (c!106294 (charsOf!704 (_1!3554 (v!16272 lt!238763))))))))

(declare-fun bs!68716 () Bool)

(assert (= bs!68716 d!198461))

(declare-fun m!820435 () Bool)

(assert (=> bs!68716 m!820435))

(assert (=> b!566497 d!198461))

(declare-fun b!566697 () Bool)

(declare-fun e!342446 () Bool)

(declare-fun e!342447 () Bool)

(assert (=> b!566697 (= e!342446 e!342447)))

(declare-fun res!243050 () Bool)

(assert (=> b!566697 (=> (not res!243050) (not e!342447))))

(assert (=> b!566697 (= res!243050 (not ((_ is Nil!5585) input!2705)))))

(declare-fun d!198463 () Bool)

(declare-fun e!342443 () Bool)

(assert (=> d!198463 e!342443))

(declare-fun res!243052 () Bool)

(assert (=> d!198463 (=> res!243052 e!342443)))

(declare-fun lt!238832 () Bool)

(assert (=> d!198463 (= res!243052 (not lt!238832))))

(assert (=> d!198463 (= lt!238832 e!342446)))

(declare-fun res!243051 () Bool)

(assert (=> d!198463 (=> res!243051 e!342446)))

(assert (=> d!198463 (= res!243051 ((_ is Nil!5585) input!2705))))

(assert (=> d!198463 (= (isPrefix!709 input!2705 input!2705) lt!238832)))

(declare-fun b!566700 () Bool)

(assert (=> b!566700 (= e!342447 (isPrefix!709 (tail!740 input!2705) (tail!740 input!2705)))))

(declare-fun b!566699 () Bool)

(declare-fun res!243047 () Bool)

(assert (=> b!566699 (=> (not res!243047) (not e!342447))))

(assert (=> b!566699 (= res!243047 (= (head!1211 input!2705) (head!1211 input!2705)))))

(declare-fun b!566701 () Bool)

(assert (=> b!566701 (= e!342443 (>= (size!4451 input!2705) (size!4451 input!2705)))))

(assert (= (and d!198463 (not res!243051)) b!566697))

(assert (= (and b!566697 res!243050) b!566699))

(assert (= (and b!566699 res!243047) b!566700))

(assert (= (and d!198463 (not res!243052)) b!566701))

(assert (=> b!566700 m!820303))

(assert (=> b!566700 m!820303))

(assert (=> b!566700 m!820303))

(assert (=> b!566700 m!820303))

(declare-fun m!820437 () Bool)

(assert (=> b!566700 m!820437))

(assert (=> b!566699 m!820301))

(assert (=> b!566699 m!820301))

(assert (=> b!566701 m!820433))

(assert (=> b!566701 m!820433))

(assert (=> b!566497 d!198463))

(declare-fun d!198465 () Bool)

(declare-fun res!243055 () Bool)

(declare-fun e!342448 () Bool)

(assert (=> d!198465 (=> (not res!243055) (not e!342448))))

(assert (=> d!198465 (= res!243055 (validRegex!469 (regex!1075 (rule!1813 token!491))))))

(assert (=> d!198465 (= (ruleValid!285 thiss!22590 (rule!1813 token!491)) e!342448)))

(declare-fun b!566702 () Bool)

(declare-fun res!243056 () Bool)

(assert (=> b!566702 (=> (not res!243056) (not e!342448))))

(assert (=> b!566702 (= res!243056 (not (nullable!374 (regex!1075 (rule!1813 token!491)))))))

(declare-fun b!566703 () Bool)

(assert (=> b!566703 (= e!342448 (not (= (tag!1337 (rule!1813 token!491)) (String!7240 ""))))))

(assert (= (and d!198465 res!243055) b!566702))

(assert (= (and b!566702 res!243056) b!566703))

(assert (=> d!198465 m!820299))

(assert (=> b!566702 m!820297))

(assert (=> b!566497 d!198465))

(declare-fun d!198467 () Bool)

(assert (=> d!198467 (isPrefix!709 lt!238776 (++!1563 lt!238776 suffix!1342))))

(declare-fun lt!238835 () Unit!9987)

(declare-fun choose!4025 (List!5595 List!5595) Unit!9987)

(assert (=> d!198467 (= lt!238835 (choose!4025 lt!238776 suffix!1342))))

(assert (=> d!198467 (= (lemmaConcatTwoListThenFirstIsPrefix!556 lt!238776 suffix!1342) lt!238835)))

(declare-fun bs!68717 () Bool)

(assert (= bs!68717 d!198467))

(assert (=> bs!68717 m!820283))

(assert (=> bs!68717 m!820283))

(declare-fun m!820439 () Bool)

(assert (=> bs!68717 m!820439))

(declare-fun m!820441 () Bool)

(assert (=> bs!68717 m!820441))

(assert (=> b!566497 d!198467))

(declare-fun d!198469 () Bool)

(declare-fun lt!238837 () BalanceConc!3592)

(assert (=> d!198469 (= (list!2317 lt!238837) (originalCharacters!1114 (_1!3554 (v!16272 lt!238763))))))

(assert (=> d!198469 (= lt!238837 (dynLambda!3227 (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) (value!35504 (_1!3554 (v!16272 lt!238763)))))))

(assert (=> d!198469 (= (charsOf!704 (_1!3554 (v!16272 lt!238763))) lt!238837)))

(declare-fun b_lambda!21827 () Bool)

(assert (=> (not b_lambda!21827) (not d!198469)))

(declare-fun t!76337 () Bool)

(declare-fun tb!49299 () Bool)

(assert (=> (and b!566502 (= (toChars!1789 (transformation!1075 (h!10987 rules!3103))) (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))) t!76337) tb!49299))

(declare-fun b!566718 () Bool)

(declare-fun e!342456 () Bool)

(declare-fun tp!178633 () Bool)

(assert (=> b!566718 (= e!342456 (and (inv!7022 (c!106294 (dynLambda!3227 (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) (value!35504 (_1!3554 (v!16272 lt!238763)))))) tp!178633))))

(declare-fun result!55186 () Bool)

(assert (=> tb!49299 (= result!55186 (and (inv!7023 (dynLambda!3227 (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) (value!35504 (_1!3554 (v!16272 lt!238763))))) e!342456))))

(assert (= tb!49299 b!566718))

(declare-fun m!820459 () Bool)

(assert (=> b!566718 m!820459))

(declare-fun m!820461 () Bool)

(assert (=> tb!49299 m!820461))

(assert (=> d!198469 t!76337))

(declare-fun b_and!55223 () Bool)

(assert (= b_and!55211 (and (=> t!76337 result!55186) b_and!55223)))

(declare-fun t!76339 () Bool)

(declare-fun tb!49301 () Bool)

(assert (=> (and b!566492 (= (toChars!1789 (transformation!1075 (rule!1813 token!491))) (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))) t!76339) tb!49301))

(declare-fun result!55188 () Bool)

(assert (= result!55188 result!55186))

(assert (=> d!198469 t!76339))

(declare-fun b_and!55225 () Bool)

(assert (= b_and!55213 (and (=> t!76339 result!55188) b_and!55225)))

(declare-fun m!820463 () Bool)

(assert (=> d!198469 m!820463))

(declare-fun m!820465 () Bool)

(assert (=> d!198469 m!820465))

(assert (=> b!566497 d!198469))

(declare-fun b!566720 () Bool)

(declare-fun e!342458 () List!5595)

(assert (=> b!566720 (= e!342458 (Cons!5585 (h!10986 lt!238761) (++!1563 (t!76326 lt!238761) (_2!3554 (v!16272 lt!238763)))))))

(declare-fun lt!238838 () List!5595)

(declare-fun b!566722 () Bool)

(declare-fun e!342457 () Bool)

(assert (=> b!566722 (= e!342457 (or (not (= (_2!3554 (v!16272 lt!238763)) Nil!5585)) (= lt!238838 lt!238761)))))

(declare-fun b!566719 () Bool)

(assert (=> b!566719 (= e!342458 (_2!3554 (v!16272 lt!238763)))))

(declare-fun b!566721 () Bool)

(declare-fun res!243066 () Bool)

(assert (=> b!566721 (=> (not res!243066) (not e!342457))))

(assert (=> b!566721 (= res!243066 (= (size!4451 lt!238838) (+ (size!4451 lt!238761) (size!4451 (_2!3554 (v!16272 lt!238763))))))))

(declare-fun d!198473 () Bool)

(assert (=> d!198473 e!342457))

(declare-fun res!243065 () Bool)

(assert (=> d!198473 (=> (not res!243065) (not e!342457))))

(assert (=> d!198473 (= res!243065 (= (content!981 lt!238838) ((_ map or) (content!981 lt!238761) (content!981 (_2!3554 (v!16272 lt!238763))))))))

(assert (=> d!198473 (= lt!238838 e!342458)))

(declare-fun c!106326 () Bool)

(assert (=> d!198473 (= c!106326 ((_ is Nil!5585) lt!238761))))

(assert (=> d!198473 (= (++!1563 lt!238761 (_2!3554 (v!16272 lt!238763))) lt!238838)))

(assert (= (and d!198473 c!106326) b!566719))

(assert (= (and d!198473 (not c!106326)) b!566720))

(assert (= (and d!198473 res!243065) b!566721))

(assert (= (and b!566721 res!243066) b!566722))

(declare-fun m!820467 () Bool)

(assert (=> b!566720 m!820467))

(declare-fun m!820469 () Bool)

(assert (=> b!566721 m!820469))

(assert (=> b!566721 m!820189))

(declare-fun m!820471 () Bool)

(assert (=> b!566721 m!820471))

(declare-fun m!820473 () Bool)

(assert (=> d!198473 m!820473))

(assert (=> d!198473 m!820319))

(declare-fun m!820475 () Bool)

(assert (=> d!198473 m!820475))

(assert (=> b!566497 d!198473))

(declare-fun d!198475 () Bool)

(declare-fun e!342470 () Bool)

(assert (=> d!198475 e!342470))

(declare-fun res!243077 () Bool)

(assert (=> d!198475 (=> (not res!243077) (not e!342470))))

(assert (=> d!198475 (= res!243077 (semiInverseModEq!413 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (toValue!1930 (transformation!1075 (rule!1813 token!491)))))))

(declare-fun Unit!9992 () Unit!9987)

(assert (=> d!198475 (= (lemmaInv!211 (transformation!1075 (rule!1813 token!491))) Unit!9992)))

(declare-fun b!566739 () Bool)

(assert (=> b!566739 (= e!342470 (equivClasses!396 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (toValue!1930 (transformation!1075 (rule!1813 token!491)))))))

(assert (= (and d!198475 res!243077) b!566739))

(declare-fun m!820483 () Bool)

(assert (=> d!198475 m!820483))

(declare-fun m!820485 () Bool)

(assert (=> b!566739 m!820485))

(assert (=> b!566497 d!198475))

(declare-fun d!198479 () Bool)

(assert (=> d!198479 (ruleValid!285 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))))))

(declare-fun lt!238847 () Unit!9987)

(declare-fun choose!4026 (LexerInterface!961 Rule!1950 List!5596) Unit!9987)

(assert (=> d!198479 (= lt!238847 (choose!4026 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))) rules!3103))))

(assert (=> d!198479 (contains!1309 rules!3103 (rule!1813 (_1!3554 (v!16272 lt!238763))))))

(assert (=> d!198479 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!142 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))) rules!3103) lt!238847)))

(declare-fun bs!68718 () Bool)

(assert (= bs!68718 d!198479))

(assert (=> bs!68718 m!820195))

(declare-fun m!820491 () Bool)

(assert (=> bs!68718 m!820491))

(assert (=> bs!68718 m!820279))

(assert (=> b!566497 d!198479))

(declare-fun d!198483 () Bool)

(assert (=> d!198483 (= (size!4450 token!491) (size!4451 (originalCharacters!1114 token!491)))))

(declare-fun Unit!9993 () Unit!9987)

(assert (=> d!198483 (= (lemmaCharactersSize!142 token!491) Unit!9993)))

(declare-fun bs!68719 () Bool)

(assert (= bs!68719 d!198483))

(assert (=> bs!68719 m!820239))

(assert (=> b!566497 d!198483))

(declare-fun d!198485 () Bool)

(declare-fun lt!238850 () List!5595)

(assert (=> d!198485 (= (++!1563 lt!238761 lt!238850) input!2705)))

(declare-fun e!342476 () List!5595)

(assert (=> d!198485 (= lt!238850 e!342476)))

(declare-fun c!106332 () Bool)

(assert (=> d!198485 (= c!106332 ((_ is Cons!5585) lt!238761))))

(assert (=> d!198485 (>= (size!4451 input!2705) (size!4451 lt!238761))))

(assert (=> d!198485 (= (getSuffix!228 input!2705 lt!238761) lt!238850)))

(declare-fun b!566748 () Bool)

(assert (=> b!566748 (= e!342476 (getSuffix!228 (tail!740 input!2705) (t!76326 lt!238761)))))

(declare-fun b!566749 () Bool)

(assert (=> b!566749 (= e!342476 input!2705)))

(assert (= (and d!198485 c!106332) b!566748))

(assert (= (and d!198485 (not c!106332)) b!566749))

(declare-fun m!820493 () Bool)

(assert (=> d!198485 m!820493))

(assert (=> d!198485 m!820433))

(assert (=> d!198485 m!820189))

(assert (=> b!566748 m!820303))

(assert (=> b!566748 m!820303))

(declare-fun m!820495 () Bool)

(assert (=> b!566748 m!820495))

(assert (=> b!566497 d!198485))

(declare-fun d!198487 () Bool)

(declare-fun lt!238851 () Int)

(assert (=> d!198487 (>= lt!238851 0)))

(declare-fun e!342477 () Int)

(assert (=> d!198487 (= lt!238851 e!342477)))

(declare-fun c!106333 () Bool)

(assert (=> d!198487 (= c!106333 ((_ is Nil!5585) lt!238761))))

(assert (=> d!198487 (= (size!4451 lt!238761) lt!238851)))

(declare-fun b!566750 () Bool)

(assert (=> b!566750 (= e!342477 0)))

(declare-fun b!566751 () Bool)

(assert (=> b!566751 (= e!342477 (+ 1 (size!4451 (t!76326 lt!238761))))))

(assert (= (and d!198487 c!106333) b!566750))

(assert (= (and d!198487 (not c!106333)) b!566751))

(declare-fun m!820497 () Bool)

(assert (=> b!566751 m!820497))

(assert (=> b!566497 d!198487))

(declare-fun d!198489 () Bool)

(assert (=> d!198489 (isPrefix!709 lt!238761 (++!1563 lt!238761 (_2!3554 (v!16272 lt!238763))))))

(declare-fun lt!238852 () Unit!9987)

(assert (=> d!198489 (= lt!238852 (choose!4025 lt!238761 (_2!3554 (v!16272 lt!238763))))))

(assert (=> d!198489 (= (lemmaConcatTwoListThenFirstIsPrefix!556 lt!238761 (_2!3554 (v!16272 lt!238763))) lt!238852)))

(declare-fun bs!68720 () Bool)

(assert (= bs!68720 d!198489))

(assert (=> bs!68720 m!820165))

(assert (=> bs!68720 m!820165))

(declare-fun m!820499 () Bool)

(assert (=> bs!68720 m!820499))

(declare-fun m!820501 () Bool)

(assert (=> bs!68720 m!820501))

(assert (=> b!566497 d!198489))

(declare-fun d!198491 () Bool)

(declare-fun e!342478 () Bool)

(assert (=> d!198491 e!342478))

(declare-fun res!243082 () Bool)

(assert (=> d!198491 (=> (not res!243082) (not e!342478))))

(assert (=> d!198491 (= res!243082 (semiInverseModEq!413 (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) (toValue!1930 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))))))

(declare-fun Unit!9994 () Unit!9987)

(assert (=> d!198491 (= (lemmaInv!211 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) Unit!9994)))

(declare-fun b!566752 () Bool)

(assert (=> b!566752 (= e!342478 (equivClasses!396 (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) (toValue!1930 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))))))

(assert (= (and d!198491 res!243082) b!566752))

(declare-fun m!820503 () Bool)

(assert (=> d!198491 m!820503))

(declare-fun m!820505 () Bool)

(assert (=> b!566752 m!820505))

(assert (=> b!566497 d!198491))

(declare-fun d!198493 () Bool)

(assert (=> d!198493 (= (_2!3554 (v!16272 lt!238763)) lt!238767)))

(declare-fun lt!238855 () Unit!9987)

(declare-fun choose!4028 (List!5595 List!5595 List!5595 List!5595 List!5595) Unit!9987)

(assert (=> d!198493 (= lt!238855 (choose!4028 lt!238761 (_2!3554 (v!16272 lt!238763)) lt!238761 lt!238767 input!2705))))

(assert (=> d!198493 (isPrefix!709 lt!238761 input!2705)))

(assert (=> d!198493 (= (lemmaSamePrefixThenSameSuffix!432 lt!238761 (_2!3554 (v!16272 lt!238763)) lt!238761 lt!238767 input!2705) lt!238855)))

(declare-fun bs!68721 () Bool)

(assert (= bs!68721 d!198493))

(declare-fun m!820507 () Bool)

(assert (=> bs!68721 m!820507))

(assert (=> bs!68721 m!820233))

(assert (=> b!566497 d!198493))

(declare-fun b!566753 () Bool)

(declare-fun e!342480 () Bool)

(declare-fun e!342481 () Bool)

(assert (=> b!566753 (= e!342480 e!342481)))

(declare-fun res!243084 () Bool)

(assert (=> b!566753 (=> (not res!243084) (not e!342481))))

(assert (=> b!566753 (= res!243084 (not ((_ is Nil!5585) lt!238758)))))

(declare-fun d!198495 () Bool)

(declare-fun e!342479 () Bool)

(assert (=> d!198495 e!342479))

(declare-fun res!243086 () Bool)

(assert (=> d!198495 (=> res!243086 e!342479)))

(declare-fun lt!238856 () Bool)

(assert (=> d!198495 (= res!243086 (not lt!238856))))

(assert (=> d!198495 (= lt!238856 e!342480)))

(declare-fun res!243085 () Bool)

(assert (=> d!198495 (=> res!243085 e!342480)))

(assert (=> d!198495 (= res!243085 ((_ is Nil!5585) input!2705))))

(assert (=> d!198495 (= (isPrefix!709 input!2705 lt!238758) lt!238856)))

(declare-fun b!566755 () Bool)

(assert (=> b!566755 (= e!342481 (isPrefix!709 (tail!740 input!2705) (tail!740 lt!238758)))))

(declare-fun b!566754 () Bool)

(declare-fun res!243083 () Bool)

(assert (=> b!566754 (=> (not res!243083) (not e!342481))))

(assert (=> b!566754 (= res!243083 (= (head!1211 input!2705) (head!1211 lt!238758)))))

(declare-fun b!566756 () Bool)

(assert (=> b!566756 (= e!342479 (>= (size!4451 lt!238758) (size!4451 input!2705)))))

(assert (= (and d!198495 (not res!243085)) b!566753))

(assert (= (and b!566753 res!243084) b!566754))

(assert (= (and b!566754 res!243083) b!566755))

(assert (= (and d!198495 (not res!243086)) b!566756))

(assert (=> b!566755 m!820303))

(declare-fun m!820509 () Bool)

(assert (=> b!566755 m!820509))

(assert (=> b!566755 m!820303))

(assert (=> b!566755 m!820509))

(declare-fun m!820511 () Bool)

(assert (=> b!566755 m!820511))

(assert (=> b!566754 m!820301))

(declare-fun m!820513 () Bool)

(assert (=> b!566754 m!820513))

(declare-fun m!820515 () Bool)

(assert (=> b!566756 m!820515))

(assert (=> b!566756 m!820433))

(assert (=> b!566497 d!198495))

(declare-fun d!198497 () Bool)

(assert (=> d!198497 (and (= lt!238776 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!238859 () Unit!9987)

(declare-fun choose!4029 (List!5595 List!5595 List!5595 List!5595) Unit!9987)

(assert (=> d!198497 (= lt!238859 (choose!4029 lt!238776 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!198497 (= (++!1563 lt!238776 suffix!1342) (++!1563 input!2705 suffix!1342))))

(assert (=> d!198497 (= (lemmaConcatSameAndSameSizesThenSameLists!152 lt!238776 suffix!1342 input!2705 suffix!1342) lt!238859)))

(declare-fun bs!68722 () Bool)

(assert (= bs!68722 d!198497))

(declare-fun m!820517 () Bool)

(assert (=> bs!68722 m!820517))

(assert (=> bs!68722 m!820283))

(assert (=> bs!68722 m!820219))

(assert (=> b!566497 d!198497))

(declare-fun b!566757 () Bool)

(declare-fun e!342483 () Bool)

(declare-fun e!342484 () Bool)

(assert (=> b!566757 (= e!342483 e!342484)))

(declare-fun res!243088 () Bool)

(assert (=> b!566757 (=> (not res!243088) (not e!342484))))

(assert (=> b!566757 (= res!243088 (not ((_ is Nil!5585) lt!238758)))))

(declare-fun d!198499 () Bool)

(declare-fun e!342482 () Bool)

(assert (=> d!198499 e!342482))

(declare-fun res!243090 () Bool)

(assert (=> d!198499 (=> res!243090 e!342482)))

(declare-fun lt!238860 () Bool)

(assert (=> d!198499 (= res!243090 (not lt!238860))))

(assert (=> d!198499 (= lt!238860 e!342483)))

(declare-fun res!243089 () Bool)

(assert (=> d!198499 (=> res!243089 e!342483)))

(assert (=> d!198499 (= res!243089 ((_ is Nil!5585) lt!238776))))

(assert (=> d!198499 (= (isPrefix!709 lt!238776 lt!238758) lt!238860)))

(declare-fun b!566759 () Bool)

(assert (=> b!566759 (= e!342484 (isPrefix!709 (tail!740 lt!238776) (tail!740 lt!238758)))))

(declare-fun b!566758 () Bool)

(declare-fun res!243087 () Bool)

(assert (=> b!566758 (=> (not res!243087) (not e!342484))))

(assert (=> b!566758 (= res!243087 (= (head!1211 lt!238776) (head!1211 lt!238758)))))

(declare-fun b!566760 () Bool)

(assert (=> b!566760 (= e!342482 (>= (size!4451 lt!238758) (size!4451 lt!238776)))))

(assert (= (and d!198499 (not res!243089)) b!566757))

(assert (= (and b!566757 res!243088) b!566758))

(assert (= (and b!566758 res!243087) b!566759))

(assert (= (and d!198499 (not res!243090)) b!566760))

(declare-fun m!820519 () Bool)

(assert (=> b!566759 m!820519))

(assert (=> b!566759 m!820509))

(assert (=> b!566759 m!820519))

(assert (=> b!566759 m!820509))

(declare-fun m!820521 () Bool)

(assert (=> b!566759 m!820521))

(declare-fun m!820523 () Bool)

(assert (=> b!566758 m!820523))

(assert (=> b!566758 m!820513))

(assert (=> b!566760 m!820515))

(assert (=> b!566760 m!820187))

(assert (=> b!566497 d!198499))

(declare-fun d!198501 () Bool)

(assert (=> d!198501 (ruleValid!285 thiss!22590 (rule!1813 token!491))))

(declare-fun lt!238861 () Unit!9987)

(assert (=> d!198501 (= lt!238861 (choose!4026 thiss!22590 (rule!1813 token!491) rules!3103))))

(assert (=> d!198501 (contains!1309 rules!3103 (rule!1813 token!491))))

(assert (=> d!198501 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!142 thiss!22590 (rule!1813 token!491) rules!3103) lt!238861)))

(declare-fun bs!68723 () Bool)

(assert (= bs!68723 d!198501))

(assert (=> bs!68723 m!820159))

(declare-fun m!820525 () Bool)

(assert (=> bs!68723 m!820525))

(assert (=> bs!68723 m!820213))

(assert (=> b!566497 d!198501))

(declare-fun d!198503 () Bool)

(assert (=> d!198503 (isPrefix!709 input!2705 (++!1563 input!2705 suffix!1342))))

(declare-fun lt!238862 () Unit!9987)

(assert (=> d!198503 (= lt!238862 (choose!4025 input!2705 suffix!1342))))

(assert (=> d!198503 (= (lemmaConcatTwoListThenFirstIsPrefix!556 input!2705 suffix!1342) lt!238862)))

(declare-fun bs!68724 () Bool)

(assert (= bs!68724 d!198503))

(assert (=> bs!68724 m!820219))

(assert (=> bs!68724 m!820219))

(declare-fun m!820527 () Bool)

(assert (=> bs!68724 m!820527))

(declare-fun m!820529 () Bool)

(assert (=> bs!68724 m!820529))

(assert (=> b!566497 d!198503))

(declare-fun b!566761 () Bool)

(declare-fun e!342486 () Bool)

(declare-fun e!342487 () Bool)

(assert (=> b!566761 (= e!342486 e!342487)))

(declare-fun res!243092 () Bool)

(assert (=> b!566761 (=> (not res!243092) (not e!342487))))

(assert (=> b!566761 (= res!243092 (not ((_ is Nil!5585) lt!238777)))))

(declare-fun d!198505 () Bool)

(declare-fun e!342485 () Bool)

(assert (=> d!198505 e!342485))

(declare-fun res!243094 () Bool)

(assert (=> d!198505 (=> res!243094 e!342485)))

(declare-fun lt!238863 () Bool)

(assert (=> d!198505 (= res!243094 (not lt!238863))))

(assert (=> d!198505 (= lt!238863 e!342486)))

(declare-fun res!243093 () Bool)

(assert (=> d!198505 (=> res!243093 e!342486)))

(assert (=> d!198505 (= res!243093 ((_ is Nil!5585) lt!238761))))

(assert (=> d!198505 (= (isPrefix!709 lt!238761 lt!238777) lt!238863)))

(declare-fun b!566763 () Bool)

(assert (=> b!566763 (= e!342487 (isPrefix!709 (tail!740 lt!238761) (tail!740 lt!238777)))))

(declare-fun b!566762 () Bool)

(declare-fun res!243091 () Bool)

(assert (=> b!566762 (=> (not res!243091) (not e!342487))))

(assert (=> b!566762 (= res!243091 (= (head!1211 lt!238761) (head!1211 lt!238777)))))

(declare-fun b!566764 () Bool)

(assert (=> b!566764 (= e!342485 (>= (size!4451 lt!238777) (size!4451 lt!238761)))))

(assert (= (and d!198505 (not res!243093)) b!566761))

(assert (= (and b!566761 res!243092) b!566762))

(assert (= (and b!566762 res!243091) b!566763))

(assert (= (and d!198505 (not res!243094)) b!566764))

(declare-fun m!820531 () Bool)

(assert (=> b!566763 m!820531))

(declare-fun m!820533 () Bool)

(assert (=> b!566763 m!820533))

(assert (=> b!566763 m!820531))

(assert (=> b!566763 m!820533))

(declare-fun m!820535 () Bool)

(assert (=> b!566763 m!820535))

(declare-fun m!820537 () Bool)

(assert (=> b!566762 m!820537))

(declare-fun m!820539 () Bool)

(assert (=> b!566762 m!820539))

(declare-fun m!820541 () Bool)

(assert (=> b!566764 m!820541))

(assert (=> b!566764 m!820189))

(assert (=> b!566497 d!198505))

(declare-fun d!198507 () Bool)

(declare-fun dynLambda!3229 (Int BalanceConc!3592) TokenValue!1099)

(assert (=> d!198507 (= (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (seqFromList!1263 lt!238761)) (dynLambda!3229 (toValue!1930 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) (seqFromList!1263 lt!238761)))))

(declare-fun b_lambda!21829 () Bool)

(assert (=> (not b_lambda!21829) (not d!198507)))

(declare-fun t!76341 () Bool)

(declare-fun tb!49303 () Bool)

(assert (=> (and b!566502 (= (toValue!1930 (transformation!1075 (h!10987 rules!3103))) (toValue!1930 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))) t!76341) tb!49303))

(declare-fun result!55190 () Bool)

(assert (=> tb!49303 (= result!55190 (inv!21 (dynLambda!3229 (toValue!1930 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))) (seqFromList!1263 lt!238761))))))

(declare-fun m!820543 () Bool)

(assert (=> tb!49303 m!820543))

(assert (=> d!198507 t!76341))

(declare-fun b_and!55227 () Bool)

(assert (= b_and!55203 (and (=> t!76341 result!55190) b_and!55227)))

(declare-fun tb!49305 () Bool)

(declare-fun t!76343 () Bool)

(assert (=> (and b!566492 (= (toValue!1930 (transformation!1075 (rule!1813 token!491))) (toValue!1930 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))) t!76343) tb!49305))

(declare-fun result!55194 () Bool)

(assert (= result!55194 result!55190))

(assert (=> d!198507 t!76343))

(declare-fun b_and!55229 () Bool)

(assert (= b_and!55207 (and (=> t!76343 result!55194) b_and!55229)))

(assert (=> d!198507 m!820193))

(declare-fun m!820545 () Bool)

(assert (=> d!198507 m!820545))

(assert (=> b!566497 d!198507))

(declare-fun d!198509 () Bool)

(assert (=> d!198509 (isPrefix!709 input!2705 input!2705)))

(declare-fun lt!238866 () Unit!9987)

(declare-fun choose!4031 (List!5595 List!5595) Unit!9987)

(assert (=> d!198509 (= lt!238866 (choose!4031 input!2705 input!2705))))

(assert (=> d!198509 (= (lemmaIsPrefixRefl!447 input!2705 input!2705) lt!238866)))

(declare-fun bs!68725 () Bool)

(assert (= bs!68725 d!198509))

(assert (=> bs!68725 m!820179))

(declare-fun m!820547 () Bool)

(assert (=> bs!68725 m!820547))

(assert (=> b!566497 d!198509))

(declare-fun d!198511 () Bool)

(declare-fun fromListB!549 (List!5595) BalanceConc!3592)

(assert (=> d!198511 (= (seqFromList!1263 lt!238761) (fromListB!549 lt!238761))))

(declare-fun bs!68726 () Bool)

(assert (= bs!68726 d!198511))

(declare-fun m!820549 () Bool)

(assert (=> bs!68726 m!820549))

(assert (=> b!566497 d!198511))

(declare-fun d!198513 () Bool)

(declare-fun lt!238869 () Bool)

(declare-fun content!982 (List!5596) (InoxSet Rule!1950))

(assert (=> d!198513 (= lt!238869 (select (content!982 rules!3103) (rule!1813 (_1!3554 (v!16272 lt!238763)))))))

(declare-fun e!342495 () Bool)

(assert (=> d!198513 (= lt!238869 e!342495)))

(declare-fun res!243100 () Bool)

(assert (=> d!198513 (=> (not res!243100) (not e!342495))))

(assert (=> d!198513 (= res!243100 ((_ is Cons!5586) rules!3103))))

(assert (=> d!198513 (= (contains!1309 rules!3103 (rule!1813 (_1!3554 (v!16272 lt!238763)))) lt!238869)))

(declare-fun b!566771 () Bool)

(declare-fun e!342496 () Bool)

(assert (=> b!566771 (= e!342495 e!342496)))

(declare-fun res!243099 () Bool)

(assert (=> b!566771 (=> res!243099 e!342496)))

(assert (=> b!566771 (= res!243099 (= (h!10987 rules!3103) (rule!1813 (_1!3554 (v!16272 lt!238763)))))))

(declare-fun b!566772 () Bool)

(assert (=> b!566772 (= e!342496 (contains!1309 (t!76327 rules!3103) (rule!1813 (_1!3554 (v!16272 lt!238763)))))))

(assert (= (and d!198513 res!243100) b!566771))

(assert (= (and b!566771 (not res!243099)) b!566772))

(declare-fun m!820551 () Bool)

(assert (=> d!198513 m!820551))

(declare-fun m!820553 () Bool)

(assert (=> d!198513 m!820553))

(declare-fun m!820555 () Bool)

(assert (=> b!566772 m!820555))

(assert (=> b!566519 d!198513))

(declare-fun b!566773 () Bool)

(declare-fun e!342498 () Bool)

(declare-fun e!342499 () Bool)

(assert (=> b!566773 (= e!342498 e!342499)))

(declare-fun res!243102 () Bool)

(assert (=> b!566773 (=> (not res!243102) (not e!342499))))

(assert (=> b!566773 (= res!243102 (not ((_ is Nil!5585) input!2705)))))

(declare-fun d!198515 () Bool)

(declare-fun e!342497 () Bool)

(assert (=> d!198515 e!342497))

(declare-fun res!243104 () Bool)

(assert (=> d!198515 (=> res!243104 e!342497)))

(declare-fun lt!238870 () Bool)

(assert (=> d!198515 (= res!243104 (not lt!238870))))

(assert (=> d!198515 (= lt!238870 e!342498)))

(declare-fun res!243103 () Bool)

(assert (=> d!198515 (=> res!243103 e!342498)))

(assert (=> d!198515 (= res!243103 ((_ is Nil!5585) lt!238776))))

(assert (=> d!198515 (= (isPrefix!709 lt!238776 input!2705) lt!238870)))

(declare-fun b!566775 () Bool)

(assert (=> b!566775 (= e!342499 (isPrefix!709 (tail!740 lt!238776) (tail!740 input!2705)))))

(declare-fun b!566774 () Bool)

(declare-fun res!243101 () Bool)

(assert (=> b!566774 (=> (not res!243101) (not e!342499))))

(assert (=> b!566774 (= res!243101 (= (head!1211 lt!238776) (head!1211 input!2705)))))

(declare-fun b!566776 () Bool)

(assert (=> b!566776 (= e!342497 (>= (size!4451 input!2705) (size!4451 lt!238776)))))

(assert (= (and d!198515 (not res!243103)) b!566773))

(assert (= (and b!566773 res!243102) b!566774))

(assert (= (and b!566774 res!243101) b!566775))

(assert (= (and d!198515 (not res!243104)) b!566776))

(assert (=> b!566775 m!820519))

(assert (=> b!566775 m!820303))

(assert (=> b!566775 m!820519))

(assert (=> b!566775 m!820303))

(declare-fun m!820557 () Bool)

(assert (=> b!566775 m!820557))

(assert (=> b!566774 m!820523))

(assert (=> b!566774 m!820301))

(assert (=> b!566776 m!820433))

(assert (=> b!566776 m!820187))

(assert (=> b!566498 d!198515))

(declare-fun d!198517 () Bool)

(assert (=> d!198517 (= (apply!1340 (transformation!1075 (rule!1813 token!491)) (seqFromList!1263 lt!238776)) (dynLambda!3229 (toValue!1930 (transformation!1075 (rule!1813 token!491))) (seqFromList!1263 lt!238776)))))

(declare-fun b_lambda!21831 () Bool)

(assert (=> (not b_lambda!21831) (not d!198517)))

(declare-fun tb!49307 () Bool)

(declare-fun t!76345 () Bool)

(assert (=> (and b!566502 (= (toValue!1930 (transformation!1075 (h!10987 rules!3103))) (toValue!1930 (transformation!1075 (rule!1813 token!491)))) t!76345) tb!49307))

(declare-fun result!55196 () Bool)

(assert (=> tb!49307 (= result!55196 (inv!21 (dynLambda!3229 (toValue!1930 (transformation!1075 (rule!1813 token!491))) (seqFromList!1263 lt!238776))))))

(declare-fun m!820559 () Bool)

(assert (=> tb!49307 m!820559))

(assert (=> d!198517 t!76345))

(declare-fun b_and!55231 () Bool)

(assert (= b_and!55227 (and (=> t!76345 result!55196) b_and!55231)))

(declare-fun t!76347 () Bool)

(declare-fun tb!49309 () Bool)

(assert (=> (and b!566492 (= (toValue!1930 (transformation!1075 (rule!1813 token!491))) (toValue!1930 (transformation!1075 (rule!1813 token!491)))) t!76347) tb!49309))

(declare-fun result!55198 () Bool)

(assert (= result!55198 result!55196))

(assert (=> d!198517 t!76347))

(declare-fun b_and!55233 () Bool)

(assert (= b_and!55229 (and (=> t!76347 result!55198) b_and!55233)))

(assert (=> d!198517 m!820255))

(declare-fun m!820561 () Bool)

(assert (=> d!198517 m!820561))

(assert (=> b!566520 d!198517))

(declare-fun b!566868 () Bool)

(declare-fun e!342555 () Option!1426)

(assert (=> b!566868 (= e!342555 None!1425)))

(declare-fun b!566869 () Bool)

(declare-fun res!243180 () Bool)

(declare-fun e!342556 () Bool)

(assert (=> b!566869 (=> (not res!243180) (not e!342556))))

(declare-fun lt!238923 () Option!1426)

(assert (=> b!566869 (= res!243180 (= (++!1563 (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238923)))) (_2!3554 (get!2127 lt!238923))) input!2705))))

(declare-fun b!566870 () Bool)

(assert (=> b!566870 (= e!342556 (= (size!4450 (_1!3554 (get!2127 lt!238923))) (size!4451 (originalCharacters!1114 (_1!3554 (get!2127 lt!238923))))))))

(declare-fun b!566871 () Bool)

(declare-fun e!342553 () Bool)

(declare-datatypes ((tuple2!6584 0))(
  ( (tuple2!6585 (_1!3556 List!5595) (_2!3556 List!5595)) )
))
(declare-fun findLongestMatchInner!159 (Regex!1409 List!5595 Int List!5595 List!5595 Int) tuple2!6584)

(assert (=> b!566871 (= e!342553 (matchR!556 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (_1!3556 (findLongestMatchInner!159 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) Nil!5585 (size!4451 Nil!5585) input!2705 input!2705 (size!4451 input!2705)))))))

(declare-fun d!198519 () Bool)

(declare-fun e!342554 () Bool)

(assert (=> d!198519 e!342554))

(declare-fun res!243175 () Bool)

(assert (=> d!198519 (=> res!243175 e!342554)))

(declare-fun isEmpty!4034 (Option!1426) Bool)

(assert (=> d!198519 (= res!243175 (isEmpty!4034 lt!238923))))

(assert (=> d!198519 (= lt!238923 e!342555)))

(declare-fun c!106344 () Bool)

(declare-fun lt!238922 () tuple2!6584)

(assert (=> d!198519 (= c!106344 (isEmpty!4031 (_1!3556 lt!238922)))))

(declare-fun findLongestMatch!138 (Regex!1409 List!5595) tuple2!6584)

(assert (=> d!198519 (= lt!238922 (findLongestMatch!138 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) input!2705))))

(assert (=> d!198519 (ruleValid!285 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))))))

(assert (=> d!198519 (= (maxPrefixOneRule!360 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))) input!2705) lt!238923)))

(declare-fun b!566872 () Bool)

(declare-fun res!243179 () Bool)

(assert (=> b!566872 (=> (not res!243179) (not e!342556))))

(assert (=> b!566872 (= res!243179 (= (value!35504 (_1!3554 (get!2127 lt!238923))) (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (get!2127 lt!238923)))) (seqFromList!1263 (originalCharacters!1114 (_1!3554 (get!2127 lt!238923)))))))))

(declare-fun b!566873 () Bool)

(declare-fun size!4453 (BalanceConc!3592) Int)

(assert (=> b!566873 (= e!342555 (Some!1425 (tuple2!6581 (Token!1887 (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (seqFromList!1263 (_1!3556 lt!238922))) (rule!1813 (_1!3554 (v!16272 lt!238763))) (size!4453 (seqFromList!1263 (_1!3556 lt!238922))) (_1!3556 lt!238922)) (_2!3556 lt!238922))))))

(declare-fun lt!238920 () Unit!9987)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!143 (Regex!1409 List!5595) Unit!9987)

(assert (=> b!566873 (= lt!238920 (longestMatchIsAcceptedByMatchOrIsEmpty!143 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) input!2705))))

(declare-fun res!243177 () Bool)

(assert (=> b!566873 (= res!243177 (isEmpty!4031 (_1!3556 (findLongestMatchInner!159 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) Nil!5585 (size!4451 Nil!5585) input!2705 input!2705 (size!4451 input!2705)))))))

(assert (=> b!566873 (=> res!243177 e!342553)))

(assert (=> b!566873 e!342553))

(declare-fun lt!238924 () Unit!9987)

(assert (=> b!566873 (= lt!238924 lt!238920)))

(declare-fun lt!238921 () Unit!9987)

(declare-fun lemmaSemiInverse!178 (TokenValueInjection!1966 BalanceConc!3592) Unit!9987)

(assert (=> b!566873 (= lt!238921 (lemmaSemiInverse!178 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (seqFromList!1263 (_1!3556 lt!238922))))))

(declare-fun b!566874 () Bool)

(declare-fun res!243174 () Bool)

(assert (=> b!566874 (=> (not res!243174) (not e!342556))))

(assert (=> b!566874 (= res!243174 (< (size!4451 (_2!3554 (get!2127 lt!238923))) (size!4451 input!2705)))))

(declare-fun b!566875 () Bool)

(declare-fun res!243178 () Bool)

(assert (=> b!566875 (=> (not res!243178) (not e!342556))))

(assert (=> b!566875 (= res!243178 (= (rule!1813 (_1!3554 (get!2127 lt!238923))) (rule!1813 (_1!3554 (v!16272 lt!238763)))))))

(declare-fun b!566876 () Bool)

(assert (=> b!566876 (= e!342554 e!342556)))

(declare-fun res!243176 () Bool)

(assert (=> b!566876 (=> (not res!243176) (not e!342556))))

(assert (=> b!566876 (= res!243176 (matchR!556 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238923))))))))

(assert (= (and d!198519 c!106344) b!566868))

(assert (= (and d!198519 (not c!106344)) b!566873))

(assert (= (and b!566873 (not res!243177)) b!566871))

(assert (= (and d!198519 (not res!243175)) b!566876))

(assert (= (and b!566876 res!243176) b!566869))

(assert (= (and b!566869 res!243180) b!566874))

(assert (= (and b!566874 res!243174) b!566875))

(assert (= (and b!566875 res!243178) b!566872))

(assert (= (and b!566872 res!243179) b!566870))

(declare-fun m!820727 () Bool)

(assert (=> b!566873 m!820727))

(declare-fun m!820729 () Bool)

(assert (=> b!566873 m!820729))

(assert (=> b!566873 m!820433))

(assert (=> b!566873 m!820727))

(declare-fun m!820731 () Bool)

(assert (=> b!566873 m!820731))

(declare-fun m!820733 () Bool)

(assert (=> b!566873 m!820733))

(assert (=> b!566873 m!820433))

(declare-fun m!820735 () Bool)

(assert (=> b!566873 m!820735))

(assert (=> b!566873 m!820727))

(declare-fun m!820737 () Bool)

(assert (=> b!566873 m!820737))

(declare-fun m!820739 () Bool)

(assert (=> b!566873 m!820739))

(assert (=> b!566873 m!820727))

(declare-fun m!820741 () Bool)

(assert (=> b!566873 m!820741))

(assert (=> b!566873 m!820733))

(declare-fun m!820743 () Bool)

(assert (=> b!566875 m!820743))

(assert (=> b!566872 m!820743))

(declare-fun m!820745 () Bool)

(assert (=> b!566872 m!820745))

(assert (=> b!566872 m!820745))

(declare-fun m!820747 () Bool)

(assert (=> b!566872 m!820747))

(assert (=> b!566871 m!820733))

(assert (=> b!566871 m!820433))

(assert (=> b!566871 m!820733))

(assert (=> b!566871 m!820433))

(assert (=> b!566871 m!820735))

(declare-fun m!820749 () Bool)

(assert (=> b!566871 m!820749))

(assert (=> b!566876 m!820743))

(declare-fun m!820751 () Bool)

(assert (=> b!566876 m!820751))

(assert (=> b!566876 m!820751))

(declare-fun m!820753 () Bool)

(assert (=> b!566876 m!820753))

(assert (=> b!566876 m!820753))

(declare-fun m!820755 () Bool)

(assert (=> b!566876 m!820755))

(assert (=> b!566874 m!820743))

(declare-fun m!820757 () Bool)

(assert (=> b!566874 m!820757))

(assert (=> b!566874 m!820433))

(assert (=> b!566870 m!820743))

(declare-fun m!820759 () Bool)

(assert (=> b!566870 m!820759))

(assert (=> b!566869 m!820743))

(assert (=> b!566869 m!820751))

(assert (=> b!566869 m!820751))

(assert (=> b!566869 m!820753))

(assert (=> b!566869 m!820753))

(declare-fun m!820761 () Bool)

(assert (=> b!566869 m!820761))

(declare-fun m!820765 () Bool)

(assert (=> d!198519 m!820765))

(declare-fun m!820767 () Bool)

(assert (=> d!198519 m!820767))

(declare-fun m!820769 () Bool)

(assert (=> d!198519 m!820769))

(assert (=> d!198519 m!820195))

(assert (=> b!566520 d!198519))

(declare-fun d!198567 () Bool)

(assert (=> d!198567 (= suffix!1342 lt!238765)))

(declare-fun lt!238930 () Unit!9987)

(assert (=> d!198567 (= lt!238930 (choose!4028 lt!238776 suffix!1342 lt!238776 lt!238765 lt!238788))))

(assert (=> d!198567 (isPrefix!709 lt!238776 lt!238788)))

(assert (=> d!198567 (= (lemmaSamePrefixThenSameSuffix!432 lt!238776 suffix!1342 lt!238776 lt!238765 lt!238788) lt!238930)))

(declare-fun bs!68736 () Bool)

(assert (= bs!68736 d!198567))

(declare-fun m!820771 () Bool)

(assert (=> bs!68736 m!820771))

(declare-fun m!820773 () Bool)

(assert (=> bs!68736 m!820773))

(assert (=> b!566520 d!198567))

(declare-fun d!198569 () Bool)

(assert (=> d!198569 (= (maxPrefixOneRule!360 thiss!22590 (rule!1813 token!491) lt!238788) (Some!1425 (tuple2!6581 (Token!1887 (apply!1340 (transformation!1075 (rule!1813 token!491)) (seqFromList!1263 lt!238776)) (rule!1813 token!491) (size!4451 lt!238776) lt!238776) suffix!1342)))))

(declare-fun lt!238949 () Unit!9987)

(declare-fun choose!4034 (LexerInterface!961 List!5596 List!5595 List!5595 List!5595 Rule!1950) Unit!9987)

(assert (=> d!198569 (= lt!238949 (choose!4034 thiss!22590 rules!3103 lt!238776 lt!238788 suffix!1342 (rule!1813 token!491)))))

(assert (=> d!198569 (not (isEmpty!4032 rules!3103))))

(assert (=> d!198569 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!110 thiss!22590 rules!3103 lt!238776 lt!238788 suffix!1342 (rule!1813 token!491)) lt!238949)))

(declare-fun bs!68744 () Bool)

(assert (= bs!68744 d!198569))

(assert (=> bs!68744 m!820187))

(assert (=> bs!68744 m!820235))

(declare-fun m!820827 () Bool)

(assert (=> bs!68744 m!820827))

(assert (=> bs!68744 m!820255))

(assert (=> bs!68744 m!820259))

(assert (=> bs!68744 m!820255))

(assert (=> bs!68744 m!820257))

(assert (=> b!566520 d!198569))

(declare-fun d!198603 () Bool)

(declare-fun lt!238950 () List!5595)

(assert (=> d!198603 (= (++!1563 lt!238776 lt!238950) lt!238788)))

(declare-fun e!342581 () List!5595)

(assert (=> d!198603 (= lt!238950 e!342581)))

(declare-fun c!106352 () Bool)

(assert (=> d!198603 (= c!106352 ((_ is Cons!5585) lt!238776))))

(assert (=> d!198603 (>= (size!4451 lt!238788) (size!4451 lt!238776))))

(assert (=> d!198603 (= (getSuffix!228 lt!238788 lt!238776) lt!238950)))

(declare-fun b!566916 () Bool)

(assert (=> b!566916 (= e!342581 (getSuffix!228 (tail!740 lt!238788) (t!76326 lt!238776)))))

(declare-fun b!566917 () Bool)

(assert (=> b!566917 (= e!342581 lt!238788)))

(assert (= (and d!198603 c!106352) b!566916))

(assert (= (and d!198603 (not c!106352)) b!566917))

(declare-fun m!820829 () Bool)

(assert (=> d!198603 m!820829))

(assert (=> d!198603 m!820431))

(assert (=> d!198603 m!820187))

(assert (=> b!566916 m!820425))

(assert (=> b!566916 m!820425))

(declare-fun m!820833 () Bool)

(assert (=> b!566916 m!820833))

(assert (=> b!566520 d!198603))

(declare-fun d!198605 () Bool)

(assert (=> d!198605 (= (maxPrefixOneRule!360 thiss!22590 (rule!1813 (_1!3554 (v!16272 lt!238763))) input!2705) (Some!1425 (tuple2!6581 (Token!1887 (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (seqFromList!1263 lt!238761)) (rule!1813 (_1!3554 (v!16272 lt!238763))) (size!4451 lt!238761) lt!238761) (_2!3554 (v!16272 lt!238763)))))))

(declare-fun lt!238952 () Unit!9987)

(assert (=> d!198605 (= lt!238952 (choose!4034 thiss!22590 rules!3103 lt!238761 input!2705 (_2!3554 (v!16272 lt!238763)) (rule!1813 (_1!3554 (v!16272 lt!238763)))))))

(assert (=> d!198605 (not (isEmpty!4032 rules!3103))))

(assert (=> d!198605 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!110 thiss!22590 rules!3103 lt!238761 input!2705 (_2!3554 (v!16272 lt!238763)) (rule!1813 (_1!3554 (v!16272 lt!238763)))) lt!238952)))

(declare-fun bs!68745 () Bool)

(assert (= bs!68745 d!198605))

(assert (=> bs!68745 m!820189))

(assert (=> bs!68745 m!820235))

(declare-fun m!820839 () Bool)

(assert (=> bs!68745 m!820839))

(assert (=> bs!68745 m!820193))

(assert (=> bs!68745 m!820253))

(assert (=> bs!68745 m!820193))

(assert (=> bs!68745 m!820207))

(assert (=> b!566520 d!198605))

(declare-fun d!198609 () Bool)

(assert (=> d!198609 (= (seqFromList!1263 lt!238776) (fromListB!549 lt!238776))))

(declare-fun bs!68746 () Bool)

(assert (= bs!68746 d!198609))

(declare-fun m!820841 () Bool)

(assert (=> bs!68746 m!820841))

(assert (=> b!566520 d!198609))

(declare-fun b!566920 () Bool)

(declare-fun e!342586 () Option!1426)

(assert (=> b!566920 (= e!342586 None!1425)))

(declare-fun b!566921 () Bool)

(declare-fun res!243213 () Bool)

(declare-fun e!342587 () Bool)

(assert (=> b!566921 (=> (not res!243213) (not e!342587))))

(declare-fun lt!238956 () Option!1426)

(assert (=> b!566921 (= res!243213 (= (++!1563 (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238956)))) (_2!3554 (get!2127 lt!238956))) lt!238788))))

(declare-fun b!566922 () Bool)

(assert (=> b!566922 (= e!342587 (= (size!4450 (_1!3554 (get!2127 lt!238956))) (size!4451 (originalCharacters!1114 (_1!3554 (get!2127 lt!238956))))))))

(declare-fun b!566923 () Bool)

(declare-fun e!342584 () Bool)

(assert (=> b!566923 (= e!342584 (matchR!556 (regex!1075 (rule!1813 token!491)) (_1!3556 (findLongestMatchInner!159 (regex!1075 (rule!1813 token!491)) Nil!5585 (size!4451 Nil!5585) lt!238788 lt!238788 (size!4451 lt!238788)))))))

(declare-fun d!198611 () Bool)

(declare-fun e!342585 () Bool)

(assert (=> d!198611 e!342585))

(declare-fun res!243208 () Bool)

(assert (=> d!198611 (=> res!243208 e!342585)))

(assert (=> d!198611 (= res!243208 (isEmpty!4034 lt!238956))))

(assert (=> d!198611 (= lt!238956 e!342586)))

(declare-fun c!106353 () Bool)

(declare-fun lt!238955 () tuple2!6584)

(assert (=> d!198611 (= c!106353 (isEmpty!4031 (_1!3556 lt!238955)))))

(assert (=> d!198611 (= lt!238955 (findLongestMatch!138 (regex!1075 (rule!1813 token!491)) lt!238788))))

(assert (=> d!198611 (ruleValid!285 thiss!22590 (rule!1813 token!491))))

(assert (=> d!198611 (= (maxPrefixOneRule!360 thiss!22590 (rule!1813 token!491) lt!238788) lt!238956)))

(declare-fun b!566924 () Bool)

(declare-fun res!243212 () Bool)

(assert (=> b!566924 (=> (not res!243212) (not e!342587))))

(assert (=> b!566924 (= res!243212 (= (value!35504 (_1!3554 (get!2127 lt!238956))) (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (get!2127 lt!238956)))) (seqFromList!1263 (originalCharacters!1114 (_1!3554 (get!2127 lt!238956)))))))))

(declare-fun b!566925 () Bool)

(assert (=> b!566925 (= e!342586 (Some!1425 (tuple2!6581 (Token!1887 (apply!1340 (transformation!1075 (rule!1813 token!491)) (seqFromList!1263 (_1!3556 lt!238955))) (rule!1813 token!491) (size!4453 (seqFromList!1263 (_1!3556 lt!238955))) (_1!3556 lt!238955)) (_2!3556 lt!238955))))))

(declare-fun lt!238953 () Unit!9987)

(assert (=> b!566925 (= lt!238953 (longestMatchIsAcceptedByMatchOrIsEmpty!143 (regex!1075 (rule!1813 token!491)) lt!238788))))

(declare-fun res!243210 () Bool)

(assert (=> b!566925 (= res!243210 (isEmpty!4031 (_1!3556 (findLongestMatchInner!159 (regex!1075 (rule!1813 token!491)) Nil!5585 (size!4451 Nil!5585) lt!238788 lt!238788 (size!4451 lt!238788)))))))

(assert (=> b!566925 (=> res!243210 e!342584)))

(assert (=> b!566925 e!342584))

(declare-fun lt!238957 () Unit!9987)

(assert (=> b!566925 (= lt!238957 lt!238953)))

(declare-fun lt!238954 () Unit!9987)

(assert (=> b!566925 (= lt!238954 (lemmaSemiInverse!178 (transformation!1075 (rule!1813 token!491)) (seqFromList!1263 (_1!3556 lt!238955))))))

(declare-fun b!566926 () Bool)

(declare-fun res!243207 () Bool)

(assert (=> b!566926 (=> (not res!243207) (not e!342587))))

(assert (=> b!566926 (= res!243207 (< (size!4451 (_2!3554 (get!2127 lt!238956))) (size!4451 lt!238788)))))

(declare-fun b!566927 () Bool)

(declare-fun res!243211 () Bool)

(assert (=> b!566927 (=> (not res!243211) (not e!342587))))

(assert (=> b!566927 (= res!243211 (= (rule!1813 (_1!3554 (get!2127 lt!238956))) (rule!1813 token!491)))))

(declare-fun b!566928 () Bool)

(assert (=> b!566928 (= e!342585 e!342587)))

(declare-fun res!243209 () Bool)

(assert (=> b!566928 (=> (not res!243209) (not e!342587))))

(assert (=> b!566928 (= res!243209 (matchR!556 (regex!1075 (rule!1813 token!491)) (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238956))))))))

(assert (= (and d!198611 c!106353) b!566920))

(assert (= (and d!198611 (not c!106353)) b!566925))

(assert (= (and b!566925 (not res!243210)) b!566923))

(assert (= (and d!198611 (not res!243208)) b!566928))

(assert (= (and b!566928 res!243209) b!566921))

(assert (= (and b!566921 res!243213) b!566926))

(assert (= (and b!566926 res!243207) b!566927))

(assert (= (and b!566927 res!243211) b!566924))

(assert (= (and b!566924 res!243212) b!566922))

(declare-fun m!820843 () Bool)

(assert (=> b!566925 m!820843))

(declare-fun m!820845 () Bool)

(assert (=> b!566925 m!820845))

(assert (=> b!566925 m!820431))

(assert (=> b!566925 m!820843))

(declare-fun m!820847 () Bool)

(assert (=> b!566925 m!820847))

(assert (=> b!566925 m!820733))

(assert (=> b!566925 m!820431))

(declare-fun m!820849 () Bool)

(assert (=> b!566925 m!820849))

(assert (=> b!566925 m!820843))

(declare-fun m!820851 () Bool)

(assert (=> b!566925 m!820851))

(declare-fun m!820853 () Bool)

(assert (=> b!566925 m!820853))

(assert (=> b!566925 m!820843))

(declare-fun m!820855 () Bool)

(assert (=> b!566925 m!820855))

(assert (=> b!566925 m!820733))

(declare-fun m!820857 () Bool)

(assert (=> b!566927 m!820857))

(assert (=> b!566924 m!820857))

(declare-fun m!820859 () Bool)

(assert (=> b!566924 m!820859))

(assert (=> b!566924 m!820859))

(declare-fun m!820861 () Bool)

(assert (=> b!566924 m!820861))

(assert (=> b!566923 m!820733))

(assert (=> b!566923 m!820431))

(assert (=> b!566923 m!820733))

(assert (=> b!566923 m!820431))

(assert (=> b!566923 m!820849))

(declare-fun m!820863 () Bool)

(assert (=> b!566923 m!820863))

(assert (=> b!566928 m!820857))

(declare-fun m!820865 () Bool)

(assert (=> b!566928 m!820865))

(assert (=> b!566928 m!820865))

(declare-fun m!820867 () Bool)

(assert (=> b!566928 m!820867))

(assert (=> b!566928 m!820867))

(declare-fun m!820869 () Bool)

(assert (=> b!566928 m!820869))

(assert (=> b!566926 m!820857))

(declare-fun m!820871 () Bool)

(assert (=> b!566926 m!820871))

(assert (=> b!566926 m!820431))

(assert (=> b!566922 m!820857))

(declare-fun m!820873 () Bool)

(assert (=> b!566922 m!820873))

(assert (=> b!566921 m!820857))

(assert (=> b!566921 m!820865))

(assert (=> b!566921 m!820865))

(assert (=> b!566921 m!820867))

(assert (=> b!566921 m!820867))

(declare-fun m!820875 () Bool)

(assert (=> b!566921 m!820875))

(declare-fun m!820877 () Bool)

(assert (=> d!198611 m!820877))

(declare-fun m!820879 () Bool)

(assert (=> d!198611 m!820879))

(declare-fun m!820881 () Bool)

(assert (=> d!198611 m!820881))

(assert (=> d!198611 m!820159))

(assert (=> b!566520 d!198611))

(declare-fun d!198613 () Bool)

(assert (=> d!198613 (= (get!2127 lt!238772) (v!16272 lt!238772))))

(assert (=> b!566521 d!198613))

(declare-fun d!198621 () Bool)

(declare-fun lt!238960 () Bool)

(assert (=> d!198621 (= lt!238960 (select (content!982 rules!3103) (rule!1813 token!491)))))

(declare-fun e!342599 () Bool)

(assert (=> d!198621 (= lt!238960 e!342599)))

(declare-fun res!243218 () Bool)

(assert (=> d!198621 (=> (not res!243218) (not e!342599))))

(assert (=> d!198621 (= res!243218 ((_ is Cons!5586) rules!3103))))

(assert (=> d!198621 (= (contains!1309 rules!3103 (rule!1813 token!491)) lt!238960)))

(declare-fun b!566948 () Bool)

(declare-fun e!342600 () Bool)

(assert (=> b!566948 (= e!342599 e!342600)))

(declare-fun res!243217 () Bool)

(assert (=> b!566948 (=> res!243217 e!342600)))

(assert (=> b!566948 (= res!243217 (= (h!10987 rules!3103) (rule!1813 token!491)))))

(declare-fun b!566949 () Bool)

(assert (=> b!566949 (= e!342600 (contains!1309 (t!76327 rules!3103) (rule!1813 token!491)))))

(assert (= (and d!198621 res!243218) b!566948))

(assert (= (and b!566948 (not res!243217)) b!566949))

(assert (=> d!198621 m!820551))

(declare-fun m!820895 () Bool)

(assert (=> d!198621 m!820895))

(declare-fun m!820897 () Bool)

(assert (=> b!566949 m!820897))

(assert (=> b!566501 d!198621))

(declare-fun d!198625 () Bool)

(assert (=> d!198625 (= (get!2127 lt!238763) (v!16272 lt!238763))))

(assert (=> b!566504 d!198625))

(declare-fun d!198627 () Bool)

(declare-fun res!243232 () Bool)

(declare-fun e!342617 () Bool)

(assert (=> d!198627 (=> (not res!243232) (not e!342617))))

(assert (=> d!198627 (= res!243232 (not (isEmpty!4031 (originalCharacters!1114 token!491))))))

(assert (=> d!198627 (= (inv!7019 token!491) e!342617)))

(declare-fun b!566971 () Bool)

(declare-fun res!243233 () Bool)

(assert (=> b!566971 (=> (not res!243233) (not e!342617))))

(assert (=> b!566971 (= res!243233 (= (originalCharacters!1114 token!491) (list!2317 (dynLambda!3227 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (value!35504 token!491)))))))

(declare-fun b!566972 () Bool)

(assert (=> b!566972 (= e!342617 (= (size!4450 token!491) (size!4451 (originalCharacters!1114 token!491))))))

(assert (= (and d!198627 res!243232) b!566971))

(assert (= (and b!566971 res!243233) b!566972))

(declare-fun b_lambda!21839 () Bool)

(assert (=> (not b_lambda!21839) (not b!566971)))

(assert (=> b!566971 t!76329))

(declare-fun b_and!55247 () Bool)

(assert (= b_and!55223 (and (=> t!76329 result!55174) b_and!55247)))

(assert (=> b!566971 t!76331))

(declare-fun b_and!55249 () Bool)

(assert (= b_and!55225 (and (=> t!76331 result!55178) b_and!55249)))

(declare-fun m!820915 () Bool)

(assert (=> d!198627 m!820915))

(assert (=> b!566971 m!820293))

(assert (=> b!566971 m!820293))

(declare-fun m!820917 () Bool)

(assert (=> b!566971 m!820917))

(assert (=> b!566972 m!820239))

(assert (=> start!52208 d!198627))

(declare-fun b!566976 () Bool)

(declare-fun e!342621 () List!5595)

(assert (=> b!566976 (= e!342621 (Cons!5585 (h!10986 lt!238776) (++!1563 (t!76326 lt!238776) suffix!1342)))))

(declare-fun e!342620 () Bool)

(declare-fun b!566978 () Bool)

(declare-fun lt!238964 () List!5595)

(assert (=> b!566978 (= e!342620 (or (not (= suffix!1342 Nil!5585)) (= lt!238964 lt!238776)))))

(declare-fun b!566975 () Bool)

(assert (=> b!566975 (= e!342621 suffix!1342)))

(declare-fun b!566977 () Bool)

(declare-fun res!243235 () Bool)

(assert (=> b!566977 (=> (not res!243235) (not e!342620))))

(assert (=> b!566977 (= res!243235 (= (size!4451 lt!238964) (+ (size!4451 lt!238776) (size!4451 suffix!1342))))))

(declare-fun d!198641 () Bool)

(assert (=> d!198641 e!342620))

(declare-fun res!243234 () Bool)

(assert (=> d!198641 (=> (not res!243234) (not e!342620))))

(assert (=> d!198641 (= res!243234 (= (content!981 lt!238964) ((_ map or) (content!981 lt!238776) (content!981 suffix!1342))))))

(assert (=> d!198641 (= lt!238964 e!342621)))

(declare-fun c!106363 () Bool)

(assert (=> d!198641 (= c!106363 ((_ is Nil!5585) lt!238776))))

(assert (=> d!198641 (= (++!1563 lt!238776 suffix!1342) lt!238964)))

(assert (= (and d!198641 c!106363) b!566975))

(assert (= (and d!198641 (not c!106363)) b!566976))

(assert (= (and d!198641 res!243234) b!566977))

(assert (= (and b!566977 res!243235) b!566978))

(declare-fun m!820919 () Bool)

(assert (=> b!566976 m!820919))

(declare-fun m!820921 () Bool)

(assert (=> b!566977 m!820921))

(assert (=> b!566977 m!820187))

(declare-fun m!820923 () Bool)

(assert (=> b!566977 m!820923))

(declare-fun m!820925 () Bool)

(assert (=> d!198641 m!820925))

(declare-fun m!820927 () Bool)

(assert (=> d!198641 m!820927))

(declare-fun m!820929 () Bool)

(assert (=> d!198641 m!820929))

(assert (=> b!566505 d!198641))

(declare-fun d!198643 () Bool)

(assert (=> d!198643 (= (isDefined!1237 lt!238772) (not (isEmpty!4034 lt!238772)))))

(declare-fun bs!68748 () Bool)

(assert (= bs!68748 d!198643))

(declare-fun m!820931 () Bool)

(assert (=> bs!68748 m!820931))

(assert (=> b!566506 d!198643))

(declare-fun b!567025 () Bool)

(declare-fun e!342642 () Bool)

(declare-fun e!342641 () Bool)

(assert (=> b!567025 (= e!342642 e!342641)))

(declare-fun res!243256 () Bool)

(assert (=> b!567025 (=> (not res!243256) (not e!342641))))

(declare-fun lt!238979 () Option!1426)

(assert (=> b!567025 (= res!243256 (isDefined!1237 lt!238979))))

(declare-fun b!567026 () Bool)

(declare-fun e!342643 () Option!1426)

(declare-fun lt!238977 () Option!1426)

(declare-fun lt!238975 () Option!1426)

(assert (=> b!567026 (= e!342643 (ite (and ((_ is None!1425) lt!238977) ((_ is None!1425) lt!238975)) None!1425 (ite ((_ is None!1425) lt!238975) lt!238977 (ite ((_ is None!1425) lt!238977) lt!238975 (ite (>= (size!4450 (_1!3554 (v!16272 lt!238977))) (size!4450 (_1!3554 (v!16272 lt!238975)))) lt!238977 lt!238975)))))))

(declare-fun call!39347 () Option!1426)

(assert (=> b!567026 (= lt!238977 call!39347)))

(assert (=> b!567026 (= lt!238975 (maxPrefix!659 thiss!22590 (t!76327 rules!3103) lt!238788))))

(declare-fun b!567027 () Bool)

(declare-fun res!243255 () Bool)

(assert (=> b!567027 (=> (not res!243255) (not e!342641))))

(assert (=> b!567027 (= res!243255 (= (value!35504 (_1!3554 (get!2127 lt!238979))) (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (get!2127 lt!238979)))) (seqFromList!1263 (originalCharacters!1114 (_1!3554 (get!2127 lt!238979)))))))))

(declare-fun d!198645 () Bool)

(assert (=> d!198645 e!342642))

(declare-fun res!243254 () Bool)

(assert (=> d!198645 (=> res!243254 e!342642)))

(assert (=> d!198645 (= res!243254 (isEmpty!4034 lt!238979))))

(assert (=> d!198645 (= lt!238979 e!342643)))

(declare-fun c!106366 () Bool)

(assert (=> d!198645 (= c!106366 (and ((_ is Cons!5586) rules!3103) ((_ is Nil!5586) (t!76327 rules!3103))))))

(declare-fun lt!238978 () Unit!9987)

(declare-fun lt!238976 () Unit!9987)

(assert (=> d!198645 (= lt!238978 lt!238976)))

(assert (=> d!198645 (isPrefix!709 lt!238788 lt!238788)))

(assert (=> d!198645 (= lt!238976 (lemmaIsPrefixRefl!447 lt!238788 lt!238788))))

(declare-fun rulesValidInductive!382 (LexerInterface!961 List!5596) Bool)

(assert (=> d!198645 (rulesValidInductive!382 thiss!22590 rules!3103)))

(assert (=> d!198645 (= (maxPrefix!659 thiss!22590 rules!3103 lt!238788) lt!238979)))

(declare-fun b!567028 () Bool)

(declare-fun res!243251 () Bool)

(assert (=> b!567028 (=> (not res!243251) (not e!342641))))

(assert (=> b!567028 (= res!243251 (< (size!4451 (_2!3554 (get!2127 lt!238979))) (size!4451 lt!238788)))))

(declare-fun b!567029 () Bool)

(declare-fun res!243252 () Bool)

(assert (=> b!567029 (=> (not res!243252) (not e!342641))))

(assert (=> b!567029 (= res!243252 (matchR!556 (regex!1075 (rule!1813 (_1!3554 (get!2127 lt!238979)))) (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238979))))))))

(declare-fun b!567030 () Bool)

(assert (=> b!567030 (= e!342641 (contains!1309 rules!3103 (rule!1813 (_1!3554 (get!2127 lt!238979)))))))

(declare-fun b!567031 () Bool)

(declare-fun res!243250 () Bool)

(assert (=> b!567031 (=> (not res!243250) (not e!342641))))

(assert (=> b!567031 (= res!243250 (= (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238979)))) (originalCharacters!1114 (_1!3554 (get!2127 lt!238979)))))))

(declare-fun b!567032 () Bool)

(assert (=> b!567032 (= e!342643 call!39347)))

(declare-fun b!567033 () Bool)

(declare-fun res!243253 () Bool)

(assert (=> b!567033 (=> (not res!243253) (not e!342641))))

(assert (=> b!567033 (= res!243253 (= (++!1563 (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238979)))) (_2!3554 (get!2127 lt!238979))) lt!238788))))

(declare-fun bm!39342 () Bool)

(assert (=> bm!39342 (= call!39347 (maxPrefixOneRule!360 thiss!22590 (h!10987 rules!3103) lt!238788))))

(assert (= (and d!198645 c!106366) b!567032))

(assert (= (and d!198645 (not c!106366)) b!567026))

(assert (= (or b!567032 b!567026) bm!39342))

(assert (= (and d!198645 (not res!243254)) b!567025))

(assert (= (and b!567025 res!243256) b!567031))

(assert (= (and b!567031 res!243250) b!567028))

(assert (= (and b!567028 res!243251) b!567033))

(assert (= (and b!567033 res!243253) b!567027))

(assert (= (and b!567027 res!243255) b!567029))

(assert (= (and b!567029 res!243252) b!567030))

(declare-fun m!820937 () Bool)

(assert (=> d!198645 m!820937))

(declare-fun m!820939 () Bool)

(assert (=> d!198645 m!820939))

(declare-fun m!820941 () Bool)

(assert (=> d!198645 m!820941))

(declare-fun m!820943 () Bool)

(assert (=> d!198645 m!820943))

(declare-fun m!820945 () Bool)

(assert (=> b!567033 m!820945))

(declare-fun m!820947 () Bool)

(assert (=> b!567033 m!820947))

(assert (=> b!567033 m!820947))

(declare-fun m!820949 () Bool)

(assert (=> b!567033 m!820949))

(assert (=> b!567033 m!820949))

(declare-fun m!820951 () Bool)

(assert (=> b!567033 m!820951))

(assert (=> b!567027 m!820945))

(declare-fun m!820953 () Bool)

(assert (=> b!567027 m!820953))

(assert (=> b!567027 m!820953))

(declare-fun m!820955 () Bool)

(assert (=> b!567027 m!820955))

(assert (=> b!567031 m!820945))

(assert (=> b!567031 m!820947))

(assert (=> b!567031 m!820947))

(assert (=> b!567031 m!820949))

(assert (=> b!567029 m!820945))

(assert (=> b!567029 m!820947))

(assert (=> b!567029 m!820947))

(assert (=> b!567029 m!820949))

(assert (=> b!567029 m!820949))

(declare-fun m!820957 () Bool)

(assert (=> b!567029 m!820957))

(declare-fun m!820959 () Bool)

(assert (=> b!567025 m!820959))

(assert (=> b!567028 m!820945))

(declare-fun m!820961 () Bool)

(assert (=> b!567028 m!820961))

(assert (=> b!567028 m!820431))

(declare-fun m!820963 () Bool)

(assert (=> b!567026 m!820963))

(assert (=> b!567030 m!820945))

(declare-fun m!820965 () Bool)

(assert (=> b!567030 m!820965))

(declare-fun m!820967 () Bool)

(assert (=> bm!39342 m!820967))

(assert (=> b!566506 d!198645))

(declare-fun b!567035 () Bool)

(declare-fun e!342645 () List!5595)

(assert (=> b!567035 (= e!342645 (Cons!5585 (h!10986 input!2705) (++!1563 (t!76326 input!2705) suffix!1342)))))

(declare-fun b!567037 () Bool)

(declare-fun lt!238980 () List!5595)

(declare-fun e!342644 () Bool)

(assert (=> b!567037 (= e!342644 (or (not (= suffix!1342 Nil!5585)) (= lt!238980 input!2705)))))

(declare-fun b!567034 () Bool)

(assert (=> b!567034 (= e!342645 suffix!1342)))

(declare-fun b!567036 () Bool)

(declare-fun res!243258 () Bool)

(assert (=> b!567036 (=> (not res!243258) (not e!342644))))

(assert (=> b!567036 (= res!243258 (= (size!4451 lt!238980) (+ (size!4451 input!2705) (size!4451 suffix!1342))))))

(declare-fun d!198647 () Bool)

(assert (=> d!198647 e!342644))

(declare-fun res!243257 () Bool)

(assert (=> d!198647 (=> (not res!243257) (not e!342644))))

(assert (=> d!198647 (= res!243257 (= (content!981 lt!238980) ((_ map or) (content!981 input!2705) (content!981 suffix!1342))))))

(assert (=> d!198647 (= lt!238980 e!342645)))

(declare-fun c!106367 () Bool)

(assert (=> d!198647 (= c!106367 ((_ is Nil!5585) input!2705))))

(assert (=> d!198647 (= (++!1563 input!2705 suffix!1342) lt!238980)))

(assert (= (and d!198647 c!106367) b!567034))

(assert (= (and d!198647 (not c!106367)) b!567035))

(assert (= (and d!198647 res!243257) b!567036))

(assert (= (and b!567036 res!243258) b!567037))

(declare-fun m!820969 () Bool)

(assert (=> b!567035 m!820969))

(declare-fun m!820971 () Bool)

(assert (=> b!567036 m!820971))

(assert (=> b!567036 m!820433))

(assert (=> b!567036 m!820923))

(declare-fun m!820973 () Bool)

(assert (=> d!198647 m!820973))

(declare-fun m!820975 () Bool)

(assert (=> d!198647 m!820975))

(assert (=> d!198647 m!820929))

(assert (=> b!566506 d!198647))

(declare-fun d!198649 () Bool)

(assert (=> d!198649 (= (isEmpty!4031 input!2705) ((_ is Nil!5585) input!2705))))

(assert (=> b!566508 d!198649))

(declare-fun b!567038 () Bool)

(declare-fun e!342647 () Bool)

(declare-fun e!342646 () Bool)

(assert (=> b!567038 (= e!342647 e!342646)))

(declare-fun res!243265 () Bool)

(assert (=> b!567038 (=> (not res!243265) (not e!342646))))

(declare-fun lt!238985 () Option!1426)

(assert (=> b!567038 (= res!243265 (isDefined!1237 lt!238985))))

(declare-fun b!567039 () Bool)

(declare-fun e!342648 () Option!1426)

(declare-fun lt!238983 () Option!1426)

(declare-fun lt!238981 () Option!1426)

(assert (=> b!567039 (= e!342648 (ite (and ((_ is None!1425) lt!238983) ((_ is None!1425) lt!238981)) None!1425 (ite ((_ is None!1425) lt!238981) lt!238983 (ite ((_ is None!1425) lt!238983) lt!238981 (ite (>= (size!4450 (_1!3554 (v!16272 lt!238983))) (size!4450 (_1!3554 (v!16272 lt!238981)))) lt!238983 lt!238981)))))))

(declare-fun call!39348 () Option!1426)

(assert (=> b!567039 (= lt!238983 call!39348)))

(assert (=> b!567039 (= lt!238981 (maxPrefix!659 thiss!22590 (t!76327 rules!3103) input!2705))))

(declare-fun b!567040 () Bool)

(declare-fun res!243264 () Bool)

(assert (=> b!567040 (=> (not res!243264) (not e!342646))))

(assert (=> b!567040 (= res!243264 (= (value!35504 (_1!3554 (get!2127 lt!238985))) (apply!1340 (transformation!1075 (rule!1813 (_1!3554 (get!2127 lt!238985)))) (seqFromList!1263 (originalCharacters!1114 (_1!3554 (get!2127 lt!238985)))))))))

(declare-fun d!198651 () Bool)

(assert (=> d!198651 e!342647))

(declare-fun res!243263 () Bool)

(assert (=> d!198651 (=> res!243263 e!342647)))

(assert (=> d!198651 (= res!243263 (isEmpty!4034 lt!238985))))

(assert (=> d!198651 (= lt!238985 e!342648)))

(declare-fun c!106368 () Bool)

(assert (=> d!198651 (= c!106368 (and ((_ is Cons!5586) rules!3103) ((_ is Nil!5586) (t!76327 rules!3103))))))

(declare-fun lt!238984 () Unit!9987)

(declare-fun lt!238982 () Unit!9987)

(assert (=> d!198651 (= lt!238984 lt!238982)))

(assert (=> d!198651 (isPrefix!709 input!2705 input!2705)))

(assert (=> d!198651 (= lt!238982 (lemmaIsPrefixRefl!447 input!2705 input!2705))))

(assert (=> d!198651 (rulesValidInductive!382 thiss!22590 rules!3103)))

(assert (=> d!198651 (= (maxPrefix!659 thiss!22590 rules!3103 input!2705) lt!238985)))

(declare-fun b!567041 () Bool)

(declare-fun res!243260 () Bool)

(assert (=> b!567041 (=> (not res!243260) (not e!342646))))

(assert (=> b!567041 (= res!243260 (< (size!4451 (_2!3554 (get!2127 lt!238985))) (size!4451 input!2705)))))

(declare-fun b!567042 () Bool)

(declare-fun res!243261 () Bool)

(assert (=> b!567042 (=> (not res!243261) (not e!342646))))

(assert (=> b!567042 (= res!243261 (matchR!556 (regex!1075 (rule!1813 (_1!3554 (get!2127 lt!238985)))) (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238985))))))))

(declare-fun b!567043 () Bool)

(assert (=> b!567043 (= e!342646 (contains!1309 rules!3103 (rule!1813 (_1!3554 (get!2127 lt!238985)))))))

(declare-fun b!567044 () Bool)

(declare-fun res!243259 () Bool)

(assert (=> b!567044 (=> (not res!243259) (not e!342646))))

(assert (=> b!567044 (= res!243259 (= (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238985)))) (originalCharacters!1114 (_1!3554 (get!2127 lt!238985)))))))

(declare-fun b!567045 () Bool)

(assert (=> b!567045 (= e!342648 call!39348)))

(declare-fun b!567046 () Bool)

(declare-fun res!243262 () Bool)

(assert (=> b!567046 (=> (not res!243262) (not e!342646))))

(assert (=> b!567046 (= res!243262 (= (++!1563 (list!2317 (charsOf!704 (_1!3554 (get!2127 lt!238985)))) (_2!3554 (get!2127 lt!238985))) input!2705))))

(declare-fun bm!39343 () Bool)

(assert (=> bm!39343 (= call!39348 (maxPrefixOneRule!360 thiss!22590 (h!10987 rules!3103) input!2705))))

(assert (= (and d!198651 c!106368) b!567045))

(assert (= (and d!198651 (not c!106368)) b!567039))

(assert (= (or b!567045 b!567039) bm!39343))

(assert (= (and d!198651 (not res!243263)) b!567038))

(assert (= (and b!567038 res!243265) b!567044))

(assert (= (and b!567044 res!243259) b!567041))

(assert (= (and b!567041 res!243260) b!567046))

(assert (= (and b!567046 res!243262) b!567040))

(assert (= (and b!567040 res!243264) b!567042))

(assert (= (and b!567042 res!243261) b!567043))

(declare-fun m!820977 () Bool)

(assert (=> d!198651 m!820977))

(assert (=> d!198651 m!820179))

(assert (=> d!198651 m!820203))

(assert (=> d!198651 m!820943))

(declare-fun m!820979 () Bool)

(assert (=> b!567046 m!820979))

(declare-fun m!820981 () Bool)

(assert (=> b!567046 m!820981))

(assert (=> b!567046 m!820981))

(declare-fun m!820983 () Bool)

(assert (=> b!567046 m!820983))

(assert (=> b!567046 m!820983))

(declare-fun m!820985 () Bool)

(assert (=> b!567046 m!820985))

(assert (=> b!567040 m!820979))

(declare-fun m!820987 () Bool)

(assert (=> b!567040 m!820987))

(assert (=> b!567040 m!820987))

(declare-fun m!820989 () Bool)

(assert (=> b!567040 m!820989))

(assert (=> b!567044 m!820979))

(assert (=> b!567044 m!820981))

(assert (=> b!567044 m!820981))

(assert (=> b!567044 m!820983))

(assert (=> b!567042 m!820979))

(assert (=> b!567042 m!820981))

(assert (=> b!567042 m!820981))

(assert (=> b!567042 m!820983))

(assert (=> b!567042 m!820983))

(declare-fun m!820991 () Bool)

(assert (=> b!567042 m!820991))

(declare-fun m!820993 () Bool)

(assert (=> b!567038 m!820993))

(assert (=> b!567041 m!820979))

(declare-fun m!820995 () Bool)

(assert (=> b!567041 m!820995))

(assert (=> b!567041 m!820433))

(declare-fun m!820997 () Bool)

(assert (=> b!567039 m!820997))

(assert (=> b!567043 m!820979))

(declare-fun m!820999 () Bool)

(assert (=> b!567043 m!820999))

(declare-fun m!821001 () Bool)

(assert (=> bm!39343 m!821001))

(assert (=> b!566487 d!198651))

(declare-fun d!198653 () Bool)

(assert (=> d!198653 (= (inv!7015 (tag!1337 (rule!1813 token!491))) (= (mod (str.len (value!35503 (tag!1337 (rule!1813 token!491)))) 2) 0))))

(assert (=> b!566509 d!198653))

(declare-fun d!198655 () Bool)

(declare-fun res!243266 () Bool)

(declare-fun e!342649 () Bool)

(assert (=> d!198655 (=> (not res!243266) (not e!342649))))

(assert (=> d!198655 (= res!243266 (semiInverseModEq!413 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (toValue!1930 (transformation!1075 (rule!1813 token!491)))))))

(assert (=> d!198655 (= (inv!7018 (transformation!1075 (rule!1813 token!491))) e!342649)))

(declare-fun b!567047 () Bool)

(assert (=> b!567047 (= e!342649 (equivClasses!396 (toChars!1789 (transformation!1075 (rule!1813 token!491))) (toValue!1930 (transformation!1075 (rule!1813 token!491)))))))

(assert (= (and d!198655 res!243266) b!567047))

(assert (=> d!198655 m!820483))

(assert (=> b!567047 m!820485))

(assert (=> b!566509 d!198655))

(declare-fun d!198657 () Bool)

(declare-fun lt!238986 () List!5595)

(assert (=> d!198657 (= (++!1563 input!2705 lt!238986) input!2705)))

(declare-fun e!342650 () List!5595)

(assert (=> d!198657 (= lt!238986 e!342650)))

(declare-fun c!106369 () Bool)

(assert (=> d!198657 (= c!106369 ((_ is Cons!5585) input!2705))))

(assert (=> d!198657 (>= (size!4451 input!2705) (size!4451 input!2705))))

(assert (=> d!198657 (= (getSuffix!228 input!2705 input!2705) lt!238986)))

(declare-fun b!567048 () Bool)

(assert (=> b!567048 (= e!342650 (getSuffix!228 (tail!740 input!2705) (t!76326 input!2705)))))

(declare-fun b!567049 () Bool)

(assert (=> b!567049 (= e!342650 input!2705)))

(assert (= (and d!198657 c!106369) b!567048))

(assert (= (and d!198657 (not c!106369)) b!567049))

(declare-fun m!821003 () Bool)

(assert (=> d!198657 m!821003))

(assert (=> d!198657 m!820433))

(assert (=> d!198657 m!820433))

(assert (=> b!567048 m!820303))

(assert (=> b!567048 m!820303))

(declare-fun m!821005 () Bool)

(assert (=> b!567048 m!821005))

(assert (=> b!566510 d!198657))

(declare-fun d!198659 () Bool)

(assert (=> d!198659 (= (isDefined!1237 lt!238763) (not (isEmpty!4034 lt!238763)))))

(declare-fun bs!68749 () Bool)

(assert (= bs!68749 d!198659))

(declare-fun m!821007 () Bool)

(assert (=> bs!68749 m!821007))

(assert (=> b!566489 d!198659))

(declare-fun d!198661 () Bool)

(declare-fun lt!238987 () Int)

(assert (=> d!198661 (>= lt!238987 0)))

(declare-fun e!342651 () Int)

(assert (=> d!198661 (= lt!238987 e!342651)))

(declare-fun c!106370 () Bool)

(assert (=> d!198661 (= c!106370 ((_ is Nil!5585) (originalCharacters!1114 (_1!3554 (v!16272 lt!238763)))))))

(assert (=> d!198661 (= (size!4451 (originalCharacters!1114 (_1!3554 (v!16272 lt!238763)))) lt!238987)))

(declare-fun b!567050 () Bool)

(assert (=> b!567050 (= e!342651 0)))

(declare-fun b!567051 () Bool)

(assert (=> b!567051 (= e!342651 (+ 1 (size!4451 (t!76326 (originalCharacters!1114 (_1!3554 (v!16272 lt!238763)))))))))

(assert (= (and d!198661 c!106370) b!567050))

(assert (= (and d!198661 (not c!106370)) b!567051))

(declare-fun m!821009 () Bool)

(assert (=> b!567051 m!821009))

(assert (=> b!566511 d!198661))

(declare-fun b!567062 () Bool)

(declare-fun e!342660 () Bool)

(declare-fun inv!17 (TokenValue!1099) Bool)

(assert (=> b!567062 (= e!342660 (inv!17 (value!35504 token!491)))))

(declare-fun b!567063 () Bool)

(declare-fun e!342658 () Bool)

(declare-fun inv!15 (TokenValue!1099) Bool)

(assert (=> b!567063 (= e!342658 (inv!15 (value!35504 token!491)))))

(declare-fun b!567064 () Bool)

(declare-fun e!342659 () Bool)

(declare-fun inv!16 (TokenValue!1099) Bool)

(assert (=> b!567064 (= e!342659 (inv!16 (value!35504 token!491)))))

(declare-fun d!198663 () Bool)

(declare-fun c!106375 () Bool)

(assert (=> d!198663 (= c!106375 ((_ is IntegerValue!3297) (value!35504 token!491)))))

(assert (=> d!198663 (= (inv!21 (value!35504 token!491)) e!342659)))

(declare-fun b!567065 () Bool)

(assert (=> b!567065 (= e!342659 e!342660)))

(declare-fun c!106376 () Bool)

(assert (=> b!567065 (= c!106376 ((_ is IntegerValue!3298) (value!35504 token!491)))))

(declare-fun b!567066 () Bool)

(declare-fun res!243269 () Bool)

(assert (=> b!567066 (=> res!243269 e!342658)))

(assert (=> b!567066 (= res!243269 (not ((_ is IntegerValue!3299) (value!35504 token!491))))))

(assert (=> b!567066 (= e!342660 e!342658)))

(assert (= (and d!198663 c!106375) b!567064))

(assert (= (and d!198663 (not c!106375)) b!567065))

(assert (= (and b!567065 c!106376) b!567062))

(assert (= (and b!567065 (not c!106376)) b!567066))

(assert (= (and b!567066 (not res!243269)) b!567063))

(declare-fun m!821011 () Bool)

(assert (=> b!567062 m!821011))

(declare-fun m!821013 () Bool)

(assert (=> b!567063 m!821013))

(declare-fun m!821015 () Bool)

(assert (=> b!567064 m!821015))

(assert (=> b!566490 d!198663))

(declare-fun b!567068 () Bool)

(declare-fun e!342665 () Bool)

(declare-fun lt!238988 () Bool)

(assert (=> b!567068 (= e!342665 (not lt!238988))))

(declare-fun bm!39344 () Bool)

(declare-fun call!39349 () Bool)

(assert (=> bm!39344 (= call!39349 (isEmpty!4031 lt!238761))))

(declare-fun b!567069 () Bool)

(declare-fun e!342661 () Bool)

(assert (=> b!567069 (= e!342661 (not (= (head!1211 lt!238761) (c!106293 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))))))))

(declare-fun b!567070 () Bool)

(declare-fun e!342666 () Bool)

(assert (=> b!567070 (= e!342666 e!342665)))

(declare-fun c!106377 () Bool)

(assert (=> b!567070 (= c!106377 ((_ is EmptyLang!1409) (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))))))

(declare-fun b!567071 () Bool)

(declare-fun e!342662 () Bool)

(assert (=> b!567071 (= e!342662 e!342661)))

(declare-fun res!243270 () Bool)

(assert (=> b!567071 (=> res!243270 e!342661)))

(assert (=> b!567071 (= res!243270 call!39349)))

(declare-fun b!567072 () Bool)

(assert (=> b!567072 (= e!342666 (= lt!238988 call!39349))))

(declare-fun b!567073 () Bool)

(declare-fun res!243271 () Bool)

(declare-fun e!342663 () Bool)

(assert (=> b!567073 (=> (not res!243271) (not e!342663))))

(assert (=> b!567073 (= res!243271 (not call!39349))))

(declare-fun b!567074 () Bool)

(declare-fun res!243276 () Bool)

(declare-fun e!342667 () Bool)

(assert (=> b!567074 (=> res!243276 e!342667)))

(assert (=> b!567074 (= res!243276 e!342663)))

(declare-fun res!243273 () Bool)

(assert (=> b!567074 (=> (not res!243273) (not e!342663))))

(assert (=> b!567074 (= res!243273 lt!238988)))

(declare-fun d!198665 () Bool)

(assert (=> d!198665 e!342666))

(declare-fun c!106378 () Bool)

(assert (=> d!198665 (= c!106378 ((_ is EmptyExpr!1409) (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))))))

(declare-fun e!342664 () Bool)

(assert (=> d!198665 (= lt!238988 e!342664)))

(declare-fun c!106379 () Bool)

(assert (=> d!198665 (= c!106379 (isEmpty!4031 lt!238761))))

(assert (=> d!198665 (validRegex!469 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))))

(assert (=> d!198665 (= (matchR!556 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) lt!238761) lt!238988)))

(declare-fun b!567067 () Bool)

(declare-fun res!243274 () Bool)

(assert (=> b!567067 (=> res!243274 e!342661)))

(assert (=> b!567067 (= res!243274 (not (isEmpty!4031 (tail!740 lt!238761))))))

(declare-fun b!567075 () Bool)

(assert (=> b!567075 (= e!342664 (matchR!556 (derivativeStep!288 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))) (head!1211 lt!238761)) (tail!740 lt!238761)))))

(declare-fun b!567076 () Bool)

(assert (=> b!567076 (= e!342663 (= (head!1211 lt!238761) (c!106293 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))))))

(declare-fun b!567077 () Bool)

(assert (=> b!567077 (= e!342667 e!342662)))

(declare-fun res!243272 () Bool)

(assert (=> b!567077 (=> (not res!243272) (not e!342662))))

(assert (=> b!567077 (= res!243272 (not lt!238988))))

(declare-fun b!567078 () Bool)

(declare-fun res!243275 () Bool)

(assert (=> b!567078 (=> (not res!243275) (not e!342663))))

(assert (=> b!567078 (= res!243275 (isEmpty!4031 (tail!740 lt!238761)))))

(declare-fun b!567079 () Bool)

(assert (=> b!567079 (= e!342664 (nullable!374 (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763))))))))

(declare-fun b!567080 () Bool)

(declare-fun res!243277 () Bool)

(assert (=> b!567080 (=> res!243277 e!342667)))

(assert (=> b!567080 (= res!243277 (not ((_ is ElementMatch!1409) (regex!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))))))

(assert (=> b!567080 (= e!342665 e!342667)))

(assert (= (and d!198665 c!106379) b!567079))

(assert (= (and d!198665 (not c!106379)) b!567075))

(assert (= (and d!198665 c!106378) b!567072))

(assert (= (and d!198665 (not c!106378)) b!567070))

(assert (= (and b!567070 c!106377) b!567068))

(assert (= (and b!567070 (not c!106377)) b!567080))

(assert (= (and b!567080 (not res!243277)) b!567074))

(assert (= (and b!567074 res!243273) b!567073))

(assert (= (and b!567073 res!243271) b!567078))

(assert (= (and b!567078 res!243275) b!567076))

(assert (= (and b!567074 (not res!243276)) b!567077))

(assert (= (and b!567077 res!243272) b!567071))

(assert (= (and b!567071 (not res!243270)) b!567067))

(assert (= (and b!567067 (not res!243274)) b!567069))

(assert (= (or b!567072 b!567071 b!567073) bm!39344))

(assert (=> b!567079 m!820419))

(declare-fun m!821017 () Bool)

(assert (=> d!198665 m!821017))

(assert (=> d!198665 m!820417))

(assert (=> b!567069 m!820537))

(assert (=> b!567076 m!820537))

(assert (=> b!567078 m!820531))

(assert (=> b!567078 m!820531))

(declare-fun m!821019 () Bool)

(assert (=> b!567078 m!821019))

(assert (=> bm!39344 m!821017))

(assert (=> b!567075 m!820537))

(assert (=> b!567075 m!820537))

(declare-fun m!821021 () Bool)

(assert (=> b!567075 m!821021))

(assert (=> b!567075 m!820531))

(assert (=> b!567075 m!821021))

(assert (=> b!567075 m!820531))

(declare-fun m!821023 () Bool)

(assert (=> b!567075 m!821023))

(assert (=> b!567067 m!820531))

(assert (=> b!567067 m!820531))

(assert (=> b!567067 m!821019))

(assert (=> b!566512 d!198665))

(declare-fun d!198667 () Bool)

(declare-fun lt!238989 () Int)

(assert (=> d!198667 (>= lt!238989 0)))

(declare-fun e!342668 () Int)

(assert (=> d!198667 (= lt!238989 e!342668)))

(declare-fun c!106380 () Bool)

(assert (=> d!198667 (= c!106380 ((_ is Nil!5585) (originalCharacters!1114 token!491)))))

(assert (=> d!198667 (= (size!4451 (originalCharacters!1114 token!491)) lt!238989)))

(declare-fun b!567081 () Bool)

(assert (=> b!567081 (= e!342668 0)))

(declare-fun b!567082 () Bool)

(assert (=> b!567082 (= e!342668 (+ 1 (size!4451 (t!76326 (originalCharacters!1114 token!491)))))))

(assert (= (and d!198667 c!106380) b!567081))

(assert (= (and d!198667 (not c!106380)) b!567082))

(declare-fun m!821025 () Bool)

(assert (=> b!567082 m!821025))

(assert (=> b!566513 d!198667))

(declare-fun d!198669 () Bool)

(declare-fun res!243280 () Bool)

(declare-fun e!342671 () Bool)

(assert (=> d!198669 (=> (not res!243280) (not e!342671))))

(declare-fun rulesValid!377 (LexerInterface!961 List!5596) Bool)

(assert (=> d!198669 (= res!243280 (rulesValid!377 thiss!22590 rules!3103))))

(assert (=> d!198669 (= (rulesInvariant!924 thiss!22590 rules!3103) e!342671)))

(declare-fun b!567085 () Bool)

(declare-datatypes ((List!5598 0))(
  ( (Nil!5588) (Cons!5588 (h!10989 String!7239) (t!76377 List!5598)) )
))
(declare-fun noDuplicateTag!377 (LexerInterface!961 List!5596 List!5598) Bool)

(assert (=> b!567085 (= e!342671 (noDuplicateTag!377 thiss!22590 rules!3103 Nil!5588))))

(assert (= (and d!198669 res!243280) b!567085))

(declare-fun m!821027 () Bool)

(assert (=> d!198669 m!821027))

(declare-fun m!821029 () Bool)

(assert (=> b!567085 m!821029))

(assert (=> b!566514 d!198669))

(declare-fun b!567086 () Bool)

(declare-fun e!342673 () Bool)

(declare-fun e!342674 () Bool)

(assert (=> b!567086 (= e!342673 e!342674)))

(declare-fun res!243282 () Bool)

(assert (=> b!567086 (=> (not res!243282) (not e!342674))))

(assert (=> b!567086 (= res!243282 (not ((_ is Nil!5585) input!2705)))))

(declare-fun d!198671 () Bool)

(declare-fun e!342672 () Bool)

(assert (=> d!198671 e!342672))

(declare-fun res!243284 () Bool)

(assert (=> d!198671 (=> res!243284 e!342672)))

(declare-fun lt!238990 () Bool)

(assert (=> d!198671 (= res!243284 (not lt!238990))))

(assert (=> d!198671 (= lt!238990 e!342673)))

(declare-fun res!243283 () Bool)

(assert (=> d!198671 (=> res!243283 e!342673)))

(assert (=> d!198671 (= res!243283 ((_ is Nil!5585) lt!238761))))

(assert (=> d!198671 (= (isPrefix!709 lt!238761 input!2705) lt!238990)))

(declare-fun b!567088 () Bool)

(assert (=> b!567088 (= e!342674 (isPrefix!709 (tail!740 lt!238761) (tail!740 input!2705)))))

(declare-fun b!567087 () Bool)

(declare-fun res!243281 () Bool)

(assert (=> b!567087 (=> (not res!243281) (not e!342674))))

(assert (=> b!567087 (= res!243281 (= (head!1211 lt!238761) (head!1211 input!2705)))))

(declare-fun b!567089 () Bool)

(assert (=> b!567089 (= e!342672 (>= (size!4451 input!2705) (size!4451 lt!238761)))))

(assert (= (and d!198671 (not res!243283)) b!567086))

(assert (= (and b!567086 res!243282) b!567087))

(assert (= (and b!567087 res!243281) b!567088))

(assert (= (and d!198671 (not res!243284)) b!567089))

(assert (=> b!567088 m!820531))

(assert (=> b!567088 m!820303))

(assert (=> b!567088 m!820531))

(assert (=> b!567088 m!820303))

(declare-fun m!821031 () Bool)

(assert (=> b!567088 m!821031))

(assert (=> b!567087 m!820537))

(assert (=> b!567087 m!820301))

(assert (=> b!567089 m!820433))

(assert (=> b!567089 m!820189))

(assert (=> b!566515 d!198671))

(declare-fun b!567094 () Bool)

(declare-fun e!342677 () Bool)

(declare-fun tp!178674 () Bool)

(assert (=> b!567094 (= e!342677 (and tp_is_empty!3173 tp!178674))))

(assert (=> b!566490 (= tp!178622 e!342677)))

(assert (= (and b!566490 ((_ is Cons!5585) (originalCharacters!1114 token!491))) b!567094))

(declare-fun b!567106 () Bool)

(declare-fun e!342680 () Bool)

(declare-fun tp!178686 () Bool)

(declare-fun tp!178687 () Bool)

(assert (=> b!567106 (= e!342680 (and tp!178686 tp!178687))))

(declare-fun b!567107 () Bool)

(declare-fun tp!178689 () Bool)

(assert (=> b!567107 (= e!342680 tp!178689)))

(assert (=> b!566518 (= tp!178625 e!342680)))

(declare-fun b!567108 () Bool)

(declare-fun tp!178688 () Bool)

(declare-fun tp!178685 () Bool)

(assert (=> b!567108 (= e!342680 (and tp!178688 tp!178685))))

(declare-fun b!567105 () Bool)

(assert (=> b!567105 (= e!342680 tp_is_empty!3173)))

(assert (= (and b!566518 ((_ is ElementMatch!1409) (regex!1075 (h!10987 rules!3103)))) b!567105))

(assert (= (and b!566518 ((_ is Concat!2508) (regex!1075 (h!10987 rules!3103)))) b!567106))

(assert (= (and b!566518 ((_ is Star!1409) (regex!1075 (h!10987 rules!3103)))) b!567107))

(assert (= (and b!566518 ((_ is Union!1409) (regex!1075 (h!10987 rules!3103)))) b!567108))

(declare-fun b!567109 () Bool)

(declare-fun e!342681 () Bool)

(declare-fun tp!178690 () Bool)

(assert (=> b!567109 (= e!342681 (and tp_is_empty!3173 tp!178690))))

(assert (=> b!566486 (= tp!178626 e!342681)))

(assert (= (and b!566486 ((_ is Cons!5585) (t!76326 input!2705))) b!567109))

(declare-fun b!567111 () Bool)

(declare-fun e!342682 () Bool)

(declare-fun tp!178692 () Bool)

(declare-fun tp!178693 () Bool)

(assert (=> b!567111 (= e!342682 (and tp!178692 tp!178693))))

(declare-fun b!567112 () Bool)

(declare-fun tp!178695 () Bool)

(assert (=> b!567112 (= e!342682 tp!178695)))

(assert (=> b!566509 (= tp!178617 e!342682)))

(declare-fun b!567113 () Bool)

(declare-fun tp!178694 () Bool)

(declare-fun tp!178691 () Bool)

(assert (=> b!567113 (= e!342682 (and tp!178694 tp!178691))))

(declare-fun b!567110 () Bool)

(assert (=> b!567110 (= e!342682 tp_is_empty!3173)))

(assert (= (and b!566509 ((_ is ElementMatch!1409) (regex!1075 (rule!1813 token!491)))) b!567110))

(assert (= (and b!566509 ((_ is Concat!2508) (regex!1075 (rule!1813 token!491)))) b!567111))

(assert (= (and b!566509 ((_ is Star!1409) (regex!1075 (rule!1813 token!491)))) b!567112))

(assert (= (and b!566509 ((_ is Union!1409) (regex!1075 (rule!1813 token!491)))) b!567113))

(declare-fun b!567124 () Bool)

(declare-fun b_free!15801 () Bool)

(declare-fun b_next!15817 () Bool)

(assert (=> b!567124 (= b_free!15801 (not b_next!15817))))

(declare-fun tb!49331 () Bool)

(declare-fun t!76369 () Bool)

(assert (=> (and b!567124 (= (toValue!1930 (transformation!1075 (h!10987 (t!76327 rules!3103)))) (toValue!1930 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))) t!76369) tb!49331))

(declare-fun result!55234 () Bool)

(assert (= result!55234 result!55190))

(assert (=> d!198507 t!76369))

(declare-fun tb!49333 () Bool)

(declare-fun t!76371 () Bool)

(assert (=> (and b!567124 (= (toValue!1930 (transformation!1075 (h!10987 (t!76327 rules!3103)))) (toValue!1930 (transformation!1075 (rule!1813 token!491)))) t!76371) tb!49333))

(declare-fun result!55236 () Bool)

(assert (= result!55236 result!55196))

(assert (=> d!198517 t!76371))

(declare-fun b_and!55255 () Bool)

(declare-fun tp!178704 () Bool)

(assert (=> b!567124 (= tp!178704 (and (=> t!76369 result!55234) (=> t!76371 result!55236) b_and!55255))))

(declare-fun b_free!15803 () Bool)

(declare-fun b_next!15819 () Bool)

(assert (=> b!567124 (= b_free!15803 (not b_next!15819))))

(declare-fun tb!49335 () Bool)

(declare-fun t!76373 () Bool)

(assert (=> (and b!567124 (= (toChars!1789 (transformation!1075 (h!10987 (t!76327 rules!3103)))) (toChars!1789 (transformation!1075 (rule!1813 token!491)))) t!76373) tb!49335))

(declare-fun result!55238 () Bool)

(assert (= result!55238 result!55174))

(assert (=> d!198419 t!76373))

(declare-fun t!76375 () Bool)

(declare-fun tb!49337 () Bool)

(assert (=> (and b!567124 (= (toChars!1789 (transformation!1075 (h!10987 (t!76327 rules!3103)))) (toChars!1789 (transformation!1075 (rule!1813 (_1!3554 (v!16272 lt!238763)))))) t!76375) tb!49337))

(declare-fun result!55240 () Bool)

(assert (= result!55240 result!55186))

(assert (=> d!198469 t!76375))

(assert (=> b!566971 t!76373))

(declare-fun b_and!55257 () Bool)

(declare-fun tp!178705 () Bool)

(assert (=> b!567124 (= tp!178705 (and (=> t!76373 result!55238) (=> t!76375 result!55240) b_and!55257))))

(declare-fun e!342693 () Bool)

(assert (=> b!567124 (= e!342693 (and tp!178704 tp!178705))))

(declare-fun e!342691 () Bool)

(declare-fun tp!178706 () Bool)

(declare-fun b!567123 () Bool)

(assert (=> b!567123 (= e!342691 (and tp!178706 (inv!7015 (tag!1337 (h!10987 (t!76327 rules!3103)))) (inv!7018 (transformation!1075 (h!10987 (t!76327 rules!3103)))) e!342693))))

(declare-fun b!567122 () Bool)

(declare-fun e!342692 () Bool)

(declare-fun tp!178707 () Bool)

(assert (=> b!567122 (= e!342692 (and e!342691 tp!178707))))

(assert (=> b!566488 (= tp!178620 e!342692)))

(assert (= b!567123 b!567124))

(assert (= b!567122 b!567123))

(assert (= (and b!566488 ((_ is Cons!5586) (t!76327 rules!3103))) b!567122))

(declare-fun m!821033 () Bool)

(assert (=> b!567123 m!821033))

(declare-fun m!821035 () Bool)

(assert (=> b!567123 m!821035))

(declare-fun b!567125 () Bool)

(declare-fun e!342695 () Bool)

(declare-fun tp!178708 () Bool)

(assert (=> b!567125 (= e!342695 (and tp_is_empty!3173 tp!178708))))

(assert (=> b!566494 (= tp!178619 e!342695)))

(assert (= (and b!566494 ((_ is Cons!5585) (t!76326 suffix!1342))) b!567125))

(declare-fun b_lambda!21847 () Bool)

(assert (= b_lambda!21821 (or (and b!566502 b_free!15791 (= (toChars!1789 (transformation!1075 (h!10987 rules!3103))) (toChars!1789 (transformation!1075 (rule!1813 token!491))))) (and b!566492 b_free!15795) (and b!567124 b_free!15803 (= (toChars!1789 (transformation!1075 (h!10987 (t!76327 rules!3103)))) (toChars!1789 (transformation!1075 (rule!1813 token!491))))) b_lambda!21847)))

(declare-fun b_lambda!21849 () Bool)

(assert (= b_lambda!21831 (or (and b!566502 b_free!15789 (= (toValue!1930 (transformation!1075 (h!10987 rules!3103))) (toValue!1930 (transformation!1075 (rule!1813 token!491))))) (and b!566492 b_free!15793) (and b!567124 b_free!15801 (= (toValue!1930 (transformation!1075 (h!10987 (t!76327 rules!3103)))) (toValue!1930 (transformation!1075 (rule!1813 token!491))))) b_lambda!21849)))

(declare-fun b_lambda!21851 () Bool)

(assert (= b_lambda!21839 (or (and b!566502 b_free!15791 (= (toChars!1789 (transformation!1075 (h!10987 rules!3103))) (toChars!1789 (transformation!1075 (rule!1813 token!491))))) (and b!566492 b_free!15795) (and b!567124 b_free!15803 (= (toChars!1789 (transformation!1075 (h!10987 (t!76327 rules!3103)))) (toChars!1789 (transformation!1075 (rule!1813 token!491))))) b_lambda!21851)))

(check-sat (not b!567085) (not b!567108) (not tb!49291) (not d!198491) (not b!567082) (not b!566873) (not d!198659) (not b_lambda!21829) (not b!566754) (not d!198669) (not b!566972) (not b!566755) (not d!198513) (not b!566925) (not b!566622) (not d!198519) (not b!566762) b_and!55233 (not b!566752) (not b!566596) (not b!566700) (not b_lambda!21849) (not b!567038) (not b!566718) (not b!566776) (not b!566566) (not b!567035) (not d!198645) (not d!198475) (not b!567051) (not d!198657) tp_is_empty!3173 (not b!566756) (not d!198433) (not b!567043) (not b!567026) (not d!198611) (not d!198621) (not d!198493) (not d!198511) (not b!566869) b_and!55255 (not b!566772) (not b!567030) (not b!566926) (not b_lambda!21847) (not d!198567) (not d!198655) (not b!566668) (not b!566976) (not tb!49307) (not b!566564) (not d!198609) (not b!566759) (not b!567111) (not b!566763) (not b!566874) (not b!566720) (not b!567107) (not b!567087) (not b_next!15807) (not b!566922) (not b!566870) (not tb!49299) (not b!566876) b_and!55231 (not d!198469) (not b!566699) (not d!198419) (not tb!49303) (not b!566775) (not d!198489) (not bm!39343) (not b!566923) (not b!567109) (not b!566567) (not b!566875) (not b!567063) (not d!198467) (not b!567028) (not b!566739) (not b!566557) (not b!567031) (not d!198421) (not d!198465) (not d!198461) (not b!566669) (not b!566977) (not b!566872) (not b!566949) (not b!566760) (not b!567041) (not b!567076) (not b!567025) (not b!566748) (not b!566526) (not b!567040) (not b!566921) (not b!566597) (not d!198665) (not d!198647) (not b!566928) (not b!567112) (not bm!39342) (not b!567123) (not b!567113) (not b!567033) b_and!55249 (not bm!39344) (not b!567067) (not b!567079) (not b!567078) (not b!566721) b_and!55257 (not b!567075) (not b!567029) (not d!198449) (not d!198501) (not b!566653) (not b!566927) (not d!198651) (not b_next!15819) (not b!567046) (not b!567125) (not b_lambda!21827) (not b!567089) (not d!198603) (not d!198483) (not b!566764) (not b_next!15805) (not d!198417) (not d!198627) (not b!566971) (not d!198473) (not d!198641) (not b!566916) (not b!566871) (not b_next!15811) (not d!198503) (not d!198479) (not b!567062) (not b!566702) (not b!566758) (not b!566555) (not b!566648) (not b_lambda!21851) (not d!198605) (not b!567048) (not d!198643) (not d!198485) (not b!566667) (not b!567122) (not b!567042) (not b!566563) b_and!55247 (not b!566751) (not d!198509) (not b!567088) (not d!198429) (not b!567094) (not b!567047) (not b!566924) (not d!198569) (not b!567027) (not bm!39331) (not b!567069) (not b!567044) (not b!566701) (not b_next!15817) (not d!198497) (not b!567106) (not b!566774) (not b!567064) (not b!567039) (not b_next!15809) (not b!567036) (not d!198445))
(check-sat b_and!55233 b_and!55255 (not b_next!15807) b_and!55231 b_and!55249 b_and!55257 (not b_next!15819) (not b_next!15805) (not b_next!15811) b_and!55247 (not b_next!15817) (not b_next!15809))
