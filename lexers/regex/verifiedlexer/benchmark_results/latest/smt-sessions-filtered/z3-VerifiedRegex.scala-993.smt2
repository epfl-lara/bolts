; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49792 () Bool)

(assert start!49792)

(declare-fun b!538920 () Bool)

(declare-fun b_free!14825 () Bool)

(declare-fun b_next!14841 () Bool)

(assert (=> b!538920 (= b_free!14825 (not b_next!14841))))

(declare-fun tp!171818 () Bool)

(declare-fun b_and!52699 () Bool)

(assert (=> b!538920 (= tp!171818 b_and!52699)))

(declare-fun b_free!14827 () Bool)

(declare-fun b_next!14843 () Bool)

(assert (=> b!538920 (= b_free!14827 (not b_next!14843))))

(declare-fun tp!171822 () Bool)

(declare-fun b_and!52701 () Bool)

(assert (=> b!538920 (= tp!171822 b_and!52701)))

(declare-fun b!538912 () Bool)

(declare-fun b_free!14829 () Bool)

(declare-fun b_next!14845 () Bool)

(assert (=> b!538912 (= b_free!14829 (not b_next!14845))))

(declare-fun tp!171824 () Bool)

(declare-fun b_and!52703 () Bool)

(assert (=> b!538912 (= tp!171824 b_and!52703)))

(declare-fun b_free!14831 () Bool)

(declare-fun b_next!14847 () Bool)

(assert (=> b!538912 (= b_free!14831 (not b_next!14847))))

(declare-fun tp!171820 () Bool)

(declare-fun b_and!52705 () Bool)

(assert (=> b!538912 (= tp!171820 b_and!52705)))

(declare-fun b!538908 () Bool)

(declare-fun e!325303 () Bool)

(declare-fun e!325302 () Bool)

(assert (=> b!538908 (= e!325303 e!325302)))

(declare-fun res!228652 () Bool)

(assert (=> b!538908 (=> res!228652 e!325302)))

(declare-fun lt!223760 () Int)

(declare-fun lt!223757 () Int)

(assert (=> b!538908 (= res!228652 (>= lt!223760 lt!223757))))

(declare-fun b!538909 () Bool)

(declare-fun res!228636 () Bool)

(declare-fun e!325292 () Bool)

(assert (=> b!538909 (=> res!228636 e!325292)))

(declare-datatypes ((C!3536 0))(
  ( (C!3537 (val!1994 Int)) )
))
(declare-datatypes ((List!5259 0))(
  ( (Nil!5249) (Cons!5249 (h!10650 C!3536) (t!74308 List!5259)) )
))
(declare-fun input!2705 () List!5259)

(declare-fun getSuffix!138 (List!5259 List!5259) List!5259)

(assert (=> b!538909 (= res!228636 (not (= (getSuffix!138 input!2705 input!2705) Nil!5249)))))

(declare-fun b!538910 () Bool)

(declare-fun res!228650 () Bool)

(assert (=> b!538910 (=> res!228650 e!325292)))

(declare-fun lt!223768 () List!5259)

(declare-fun isPrefix!615 (List!5259 List!5259) Bool)

(assert (=> b!538910 (= res!228650 (not (isPrefix!615 lt!223768 input!2705)))))

(declare-fun b!538911 () Bool)

(declare-fun suffix!1342 () List!5259)

(declare-datatypes ((List!5260 0))(
  ( (Nil!5250) (Cons!5250 (h!10651 (_ BitVec 16)) (t!74309 List!5260)) )
))
(declare-datatypes ((TokenValue!997 0))(
  ( (FloatLiteralValue!1994 (text!7424 List!5260)) (TokenValueExt!996 (__x!3892 Int)) (Broken!4985 (value!32571 List!5260)) (Object!1006) (End!997) (Def!997) (Underscore!997) (Match!997) (Else!997) (Error!997) (Case!997) (If!997) (Extends!997) (Abstract!997) (Class!997) (Val!997) (DelimiterValue!1994 (del!1057 List!5260)) (KeywordValue!1003 (value!32572 List!5260)) (CommentValue!1994 (value!32573 List!5260)) (WhitespaceValue!1994 (value!32574 List!5260)) (IndentationValue!997 (value!32575 List!5260)) (String!6728) (Int32!997) (Broken!4986 (value!32576 List!5260)) (Boolean!998) (Unit!9172) (OperatorValue!1000 (op!1057 List!5260)) (IdentifierValue!1994 (value!32577 List!5260)) (IdentifierValue!1995 (value!32578 List!5260)) (WhitespaceValue!1995 (value!32579 List!5260)) (True!1994) (False!1994) (Broken!4987 (value!32580 List!5260)) (Broken!4988 (value!32581 List!5260)) (True!1995) (RightBrace!997) (RightBracket!997) (Colon!997) (Null!997) (Comma!997) (LeftBracket!997) (False!1995) (LeftBrace!997) (ImaginaryLiteralValue!997 (text!7425 List!5260)) (StringLiteralValue!2991 (value!32582 List!5260)) (EOFValue!997 (value!32583 List!5260)) (IdentValue!997 (value!32584 List!5260)) (DelimiterValue!1995 (value!32585 List!5260)) (DedentValue!997 (value!32586 List!5260)) (NewLineValue!997 (value!32587 List!5260)) (IntegerValue!2991 (value!32588 (_ BitVec 32)) (text!7426 List!5260)) (IntegerValue!2992 (value!32589 Int) (text!7427 List!5260)) (Times!997) (Or!997) (Equal!997) (Minus!997) (Broken!4989 (value!32590 List!5260)) (And!997) (Div!997) (LessEqual!997) (Mod!997) (Concat!2304) (Not!997) (Plus!997) (SpaceValue!997 (value!32591 List!5260)) (IntegerValue!2993 (value!32592 Int) (text!7428 List!5260)) (StringLiteralValue!2992 (text!7429 List!5260)) (FloatLiteralValue!1995 (text!7430 List!5260)) (BytesLiteralValue!997 (value!32593 List!5260)) (CommentValue!1995 (value!32594 List!5260)) (StringLiteralValue!2993 (value!32595 List!5260)) (ErrorTokenValue!997 (msg!1058 List!5260)) )
))
(declare-fun lt!223747 () TokenValue!997)

(declare-fun lt!223769 () List!5259)

(declare-fun e!325299 () Bool)

(declare-datatypes ((Regex!1307 0))(
  ( (ElementMatch!1307 (c!102248 C!3536)) (Concat!2305 (regOne!3126 Regex!1307) (regTwo!3126 Regex!1307)) (EmptyExpr!1307) (Star!1307 (reg!1636 Regex!1307)) (EmptyLang!1307) (Union!1307 (regOne!3127 Regex!1307) (regTwo!3127 Regex!1307)) )
))
(declare-datatypes ((String!6729 0))(
  ( (String!6730 (value!32596 String)) )
))
(declare-datatypes ((IArray!3381 0))(
  ( (IArray!3382 (innerList!1748 List!5259)) )
))
(declare-datatypes ((Conc!1690 0))(
  ( (Node!1690 (left!4381 Conc!1690) (right!4711 Conc!1690) (csize!3610 Int) (cheight!1901 Int)) (Leaf!2684 (xs!4327 IArray!3381) (csize!3611 Int)) (Empty!1690) )
))
(declare-datatypes ((BalanceConc!3388 0))(
  ( (BalanceConc!3389 (c!102249 Conc!1690)) )
))
(declare-datatypes ((TokenValueInjection!1762 0))(
  ( (TokenValueInjection!1763 (toValue!1820 Int) (toChars!1679 Int)) )
))
(declare-datatypes ((Rule!1746 0))(
  ( (Rule!1747 (regex!973 Regex!1307) (tag!1235 String!6729) (isSeparator!973 Bool) (transformation!973 TokenValueInjection!1762)) )
))
(declare-datatypes ((Token!1682 0))(
  ( (Token!1683 (value!32597 TokenValue!997) (rule!1681 Rule!1746) (size!4222 Int) (originalCharacters!1012 List!5259)) )
))
(declare-fun token!491 () Token!1682)

(declare-datatypes ((tuple2!6316 0))(
  ( (tuple2!6317 (_1!3422 Token!1682) (_2!3422 List!5259)) )
))
(assert (=> b!538911 (= e!325299 (and (= (size!4222 token!491) lt!223757) (= (originalCharacters!1012 token!491) lt!223768) (= (tuple2!6317 token!491 suffix!1342) (tuple2!6317 (Token!1683 lt!223747 (rule!1681 token!491) lt!223757 lt!223768) lt!223769))))))

(declare-fun e!325295 () Bool)

(assert (=> b!538912 (= e!325295 (and tp!171824 tp!171820))))

(declare-fun tp!171817 () Bool)

(declare-fun e!325308 () Bool)

(declare-fun e!325300 () Bool)

(declare-fun b!538913 () Bool)

(declare-fun inv!6586 (String!6729) Bool)

(declare-fun inv!6589 (TokenValueInjection!1762) Bool)

(assert (=> b!538913 (= e!325300 (and tp!171817 (inv!6586 (tag!1235 (rule!1681 token!491))) (inv!6589 (transformation!973 (rule!1681 token!491))) e!325308))))

(declare-fun b!538914 () Bool)

(declare-fun e!325312 () Bool)

(declare-fun e!325296 () Bool)

(assert (=> b!538914 (= e!325312 e!325296)))

(declare-fun res!228656 () Bool)

(assert (=> b!538914 (=> (not res!228656) (not e!325296))))

(declare-datatypes ((Option!1323 0))(
  ( (None!1322) (Some!1322 (v!16131 tuple2!6316)) )
))
(declare-fun lt!223756 () Option!1323)

(declare-fun isDefined!1135 (Option!1323) Bool)

(assert (=> b!538914 (= res!228656 (isDefined!1135 lt!223756))))

(declare-datatypes ((List!5261 0))(
  ( (Nil!5251) (Cons!5251 (h!10652 Rule!1746) (t!74310 List!5261)) )
))
(declare-fun rules!3103 () List!5261)

(declare-datatypes ((LexerInterface!859 0))(
  ( (LexerInterfaceExt!856 (__x!3893 Int)) (Lexer!857) )
))
(declare-fun thiss!22590 () LexerInterface!859)

(declare-fun lt!223758 () List!5259)

(declare-fun maxPrefix!557 (LexerInterface!859 List!5261 List!5259) Option!1323)

(assert (=> b!538914 (= lt!223756 (maxPrefix!557 thiss!22590 rules!3103 lt!223758))))

(declare-fun ++!1461 (List!5259 List!5259) List!5259)

(assert (=> b!538914 (= lt!223758 (++!1461 input!2705 suffix!1342))))

(declare-fun b!538915 () Bool)

(declare-fun res!228634 () Bool)

(assert (=> b!538915 (=> res!228634 e!325292)))

(declare-fun lt!223775 () List!5259)

(assert (=> b!538915 (= res!228634 (not (= lt!223775 input!2705)))))

(declare-fun b!538916 () Bool)

(declare-fun res!228651 () Bool)

(assert (=> b!538916 (=> res!228651 e!325292)))

(declare-fun lt!223774 () List!5259)

(assert (=> b!538916 (= res!228651 (not (isPrefix!615 lt!223774 input!2705)))))

(declare-fun b!538917 () Bool)

(declare-fun size!4223 (List!5259) Int)

(assert (=> b!538917 (= e!325292 (>= (size!4223 input!2705) lt!223760))))

(declare-fun b!538918 () Bool)

(declare-fun e!325301 () Bool)

(assert (=> b!538918 (= e!325301 e!325312)))

(declare-fun res!228641 () Bool)

(assert (=> b!538918 (=> (not res!228641) (not e!325312))))

(assert (=> b!538918 (= res!228641 (= lt!223768 input!2705))))

(declare-fun list!2181 (BalanceConc!3388) List!5259)

(declare-fun charsOf!602 (Token!1682) BalanceConc!3388)

(assert (=> b!538918 (= lt!223768 (list!2181 (charsOf!602 token!491)))))

(declare-fun b!538919 () Bool)

(declare-fun e!325297 () Bool)

(assert (=> b!538919 (= e!325302 e!325297)))

(declare-fun res!228639 () Bool)

(assert (=> b!538919 (=> (not res!228639) (not e!325297))))

(declare-fun lt!223754 () Option!1323)

(assert (=> b!538919 (= res!228639 (isDefined!1135 lt!223754))))

(assert (=> b!538920 (= e!325308 (and tp!171818 tp!171822))))

(declare-fun res!228653 () Bool)

(assert (=> start!49792 (=> (not res!228653) (not e!325301))))

(get-info :version)

(assert (=> start!49792 (= res!228653 ((_ is Lexer!857) thiss!22590))))

(assert (=> start!49792 e!325301))

(declare-fun e!325310 () Bool)

(assert (=> start!49792 e!325310))

(declare-fun e!325294 () Bool)

(assert (=> start!49792 e!325294))

(declare-fun e!325307 () Bool)

(declare-fun inv!6590 (Token!1682) Bool)

(assert (=> start!49792 (and (inv!6590 token!491) e!325307)))

(assert (=> start!49792 true))

(declare-fun e!325290 () Bool)

(assert (=> start!49792 e!325290))

(declare-fun b!538907 () Bool)

(declare-fun res!228640 () Bool)

(assert (=> b!538907 (=> res!228640 e!325292)))

(declare-fun lt!223770 () List!5259)

(assert (=> b!538907 (= res!228640 (not (= (++!1461 lt!223774 lt!223770) input!2705)))))

(declare-fun b!538921 () Bool)

(declare-fun res!228647 () Bool)

(assert (=> b!538921 (=> (not res!228647) (not e!325301))))

(declare-fun rulesInvariant!822 (LexerInterface!859 List!5261) Bool)

(assert (=> b!538921 (= res!228647 (rulesInvariant!822 thiss!22590 rules!3103))))

(declare-fun b!538922 () Bool)

(declare-fun e!325291 () Bool)

(declare-fun e!325298 () Bool)

(assert (=> b!538922 (= e!325291 (not e!325298))))

(declare-fun res!228635 () Bool)

(assert (=> b!538922 (=> res!228635 e!325298)))

(declare-fun lt!223762 () List!5259)

(assert (=> b!538922 (= res!228635 (not (isPrefix!615 input!2705 lt!223762)))))

(assert (=> b!538922 (isPrefix!615 lt!223768 lt!223762)))

(declare-datatypes ((Unit!9173 0))(
  ( (Unit!9174) )
))
(declare-fun lt!223761 () Unit!9173)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!466 (List!5259 List!5259) Unit!9173)

(assert (=> b!538922 (= lt!223761 (lemmaConcatTwoListThenFirstIsPrefix!466 lt!223768 suffix!1342))))

(assert (=> b!538922 (isPrefix!615 input!2705 lt!223758)))

(declare-fun lt!223748 () Unit!9173)

(assert (=> b!538922 (= lt!223748 (lemmaConcatTwoListThenFirstIsPrefix!466 input!2705 suffix!1342))))

(declare-fun e!325311 () Bool)

(assert (=> b!538922 e!325311))

(declare-fun res!228638 () Bool)

(assert (=> b!538922 (=> (not res!228638) (not e!325311))))

(declare-fun lt!223749 () TokenValue!997)

(assert (=> b!538922 (= res!228638 (= (value!32597 (_1!3422 (v!16131 lt!223754))) lt!223749))))

(declare-fun apply!1248 (TokenValueInjection!1762 BalanceConc!3388) TokenValue!997)

(declare-fun seqFromList!1171 (List!5259) BalanceConc!3388)

(assert (=> b!538922 (= lt!223749 (apply!1248 (transformation!973 (rule!1681 (_1!3422 (v!16131 lt!223754)))) (seqFromList!1171 lt!223774)))))

(declare-fun lt!223759 () Unit!9173)

(declare-fun lemmaInv!121 (TokenValueInjection!1762) Unit!9173)

(assert (=> b!538922 (= lt!223759 (lemmaInv!121 (transformation!973 (rule!1681 token!491))))))

(declare-fun lt!223766 () Unit!9173)

(assert (=> b!538922 (= lt!223766 (lemmaInv!121 (transformation!973 (rule!1681 (_1!3422 (v!16131 lt!223754))))))))

(declare-fun ruleValid!193 (LexerInterface!859 Rule!1746) Bool)

(assert (=> b!538922 (ruleValid!193 thiss!22590 (rule!1681 token!491))))

(declare-fun lt!223752 () Unit!9173)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!52 (LexerInterface!859 Rule!1746 List!5261) Unit!9173)

(assert (=> b!538922 (= lt!223752 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!52 thiss!22590 (rule!1681 token!491) rules!3103))))

(assert (=> b!538922 (ruleValid!193 thiss!22590 (rule!1681 (_1!3422 (v!16131 lt!223754))))))

(declare-fun lt!223765 () Unit!9173)

(assert (=> b!538922 (= lt!223765 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!52 thiss!22590 (rule!1681 (_1!3422 (v!16131 lt!223754))) rules!3103))))

(assert (=> b!538922 (isPrefix!615 input!2705 input!2705)))

(declare-fun lt!223773 () Unit!9173)

(declare-fun lemmaIsPrefixRefl!355 (List!5259 List!5259) Unit!9173)

(assert (=> b!538922 (= lt!223773 (lemmaIsPrefixRefl!355 input!2705 input!2705))))

(assert (=> b!538922 (= (_2!3422 (v!16131 lt!223754)) lt!223770)))

(declare-fun lt!223771 () Unit!9173)

(declare-fun lemmaSamePrefixThenSameSuffix!342 (List!5259 List!5259 List!5259 List!5259 List!5259) Unit!9173)

(assert (=> b!538922 (= lt!223771 (lemmaSamePrefixThenSameSuffix!342 lt!223774 (_2!3422 (v!16131 lt!223754)) lt!223774 lt!223770 input!2705))))

(assert (=> b!538922 (= lt!223770 (getSuffix!138 input!2705 lt!223774))))

(assert (=> b!538922 (isPrefix!615 lt!223774 lt!223775)))

(assert (=> b!538922 (= lt!223775 (++!1461 lt!223774 (_2!3422 (v!16131 lt!223754))))))

(declare-fun lt!223751 () Unit!9173)

(assert (=> b!538922 (= lt!223751 (lemmaConcatTwoListThenFirstIsPrefix!466 lt!223774 (_2!3422 (v!16131 lt!223754))))))

(declare-fun lt!223776 () Unit!9173)

(declare-fun lemmaCharactersSize!52 (Token!1682) Unit!9173)

(assert (=> b!538922 (= lt!223776 (lemmaCharactersSize!52 token!491))))

(declare-fun lt!223755 () Unit!9173)

(assert (=> b!538922 (= lt!223755 (lemmaCharactersSize!52 (_1!3422 (v!16131 lt!223754))))))

(declare-fun lt!223777 () Unit!9173)

(declare-fun e!325289 () Unit!9173)

(assert (=> b!538922 (= lt!223777 e!325289)))

(declare-fun c!102247 () Bool)

(assert (=> b!538922 (= c!102247 (> lt!223760 lt!223757))))

(assert (=> b!538922 (= lt!223757 (size!4223 lt!223768))))

(assert (=> b!538922 (= lt!223760 (size!4223 lt!223774))))

(assert (=> b!538922 (= lt!223774 (list!2181 (charsOf!602 (_1!3422 (v!16131 lt!223754)))))))

(declare-fun lt!223772 () tuple2!6316)

(assert (=> b!538922 (= lt!223754 (Some!1322 lt!223772))))

(assert (=> b!538922 (= lt!223772 (tuple2!6317 (_1!3422 (v!16131 lt!223754)) (_2!3422 (v!16131 lt!223754))))))

(declare-fun lt!223750 () Unit!9173)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!58 (List!5259 List!5259 List!5259 List!5259) Unit!9173)

(assert (=> b!538922 (= lt!223750 (lemmaConcatSameAndSameSizesThenSameLists!58 lt!223768 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!538923 () Bool)

(declare-fun e!325304 () Bool)

(assert (=> b!538923 (= e!325304 e!325291)))

(declare-fun res!228637 () Bool)

(assert (=> b!538923 (=> (not res!228637) (not e!325291))))

(assert (=> b!538923 (= res!228637 (= lt!223762 lt!223758))))

(assert (=> b!538923 (= lt!223762 (++!1461 lt!223768 suffix!1342))))

(declare-fun b!538924 () Bool)

(declare-fun e!325288 () Bool)

(assert (=> b!538924 (= e!325296 e!325288)))

(declare-fun res!228632 () Bool)

(assert (=> b!538924 (=> (not res!228632) (not e!325288))))

(declare-fun lt!223767 () tuple2!6316)

(assert (=> b!538924 (= res!228632 (and (= (_1!3422 lt!223767) token!491) (= (_2!3422 lt!223767) suffix!1342)))))

(declare-fun get!1974 (Option!1323) tuple2!6316)

(assert (=> b!538924 (= lt!223767 (get!1974 lt!223756))))

(declare-fun b!538925 () Bool)

(assert (=> b!538925 (= e!325288 e!325304)))

(declare-fun res!228645 () Bool)

(assert (=> b!538925 (=> (not res!228645) (not e!325304))))

(assert (=> b!538925 (= res!228645 ((_ is Some!1322) lt!223754))))

(assert (=> b!538925 (= lt!223754 (maxPrefix!557 thiss!22590 rules!3103 input!2705))))

(declare-fun b!538926 () Bool)

(assert (=> b!538926 (= e!325311 (and (= (size!4222 (_1!3422 (v!16131 lt!223754))) lt!223760) (= (originalCharacters!1012 (_1!3422 (v!16131 lt!223754))) lt!223774) (= lt!223772 (tuple2!6317 (Token!1683 lt!223749 (rule!1681 (_1!3422 (v!16131 lt!223754))) lt!223760 lt!223774) lt!223770))))))

(declare-fun b!538927 () Bool)

(declare-fun tp_is_empty!2969 () Bool)

(declare-fun tp!171821 () Bool)

(assert (=> b!538927 (= e!325290 (and tp_is_empty!2969 tp!171821))))

(declare-fun b!538928 () Bool)

(assert (=> b!538928 (= e!325298 e!325292)))

(declare-fun res!228644 () Bool)

(assert (=> b!538928 (=> res!228644 e!325292)))

(assert (=> b!538928 (= res!228644 (>= lt!223760 lt!223757))))

(assert (=> b!538928 e!325303))

(declare-fun res!228643 () Bool)

(assert (=> b!538928 (=> (not res!228643) (not e!325303))))

(declare-fun maxPrefixOneRule!272 (LexerInterface!859 Rule!1746 List!5259) Option!1323)

(assert (=> b!538928 (= res!228643 (= (maxPrefixOneRule!272 thiss!22590 (rule!1681 token!491) lt!223758) (Some!1322 (tuple2!6317 (Token!1683 lt!223747 (rule!1681 token!491) lt!223757 lt!223768) suffix!1342))))))

(declare-fun lt!223753 () Unit!9173)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!24 (LexerInterface!859 List!5261 List!5259 List!5259 List!5259 Rule!1746) Unit!9173)

(assert (=> b!538928 (= lt!223753 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!24 thiss!22590 rules!3103 lt!223768 lt!223758 suffix!1342 (rule!1681 token!491)))))

(assert (=> b!538928 (= (maxPrefixOneRule!272 thiss!22590 (rule!1681 (_1!3422 (v!16131 lt!223754))) input!2705) (Some!1322 (tuple2!6317 (Token!1683 lt!223749 (rule!1681 (_1!3422 (v!16131 lt!223754))) lt!223760 lt!223774) (_2!3422 (v!16131 lt!223754)))))))

(declare-fun lt!223763 () Unit!9173)

(assert (=> b!538928 (= lt!223763 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!24 thiss!22590 rules!3103 lt!223774 input!2705 (_2!3422 (v!16131 lt!223754)) (rule!1681 (_1!3422 (v!16131 lt!223754)))))))

(assert (=> b!538928 e!325299))

(declare-fun res!228642 () Bool)

(assert (=> b!538928 (=> (not res!228642) (not e!325299))))

(assert (=> b!538928 (= res!228642 (= (value!32597 token!491) lt!223747))))

(assert (=> b!538928 (= lt!223747 (apply!1248 (transformation!973 (rule!1681 token!491)) (seqFromList!1171 lt!223768)))))

(assert (=> b!538928 (= suffix!1342 lt!223769)))

(declare-fun lt!223764 () Unit!9173)

(assert (=> b!538928 (= lt!223764 (lemmaSamePrefixThenSameSuffix!342 lt!223768 suffix!1342 lt!223768 lt!223769 lt!223758))))

(assert (=> b!538928 (= lt!223769 (getSuffix!138 lt!223758 lt!223768))))

(declare-fun b!538929 () Bool)

(declare-fun res!228633 () Bool)

(assert (=> b!538929 (=> (not res!228633) (not e!325301))))

(declare-fun isEmpty!3794 (List!5259) Bool)

(assert (=> b!538929 (= res!228633 (not (isEmpty!3794 input!2705)))))

(declare-fun b!538930 () Bool)

(assert (=> b!538930 (= e!325297 (= (_1!3422 (get!1974 lt!223754)) (_1!3422 (v!16131 lt!223754))))))

(declare-fun b!538931 () Bool)

(declare-fun res!228649 () Bool)

(assert (=> b!538931 (=> (not res!228649) (not e!325299))))

(assert (=> b!538931 (= res!228649 (= (size!4222 token!491) (size!4223 (originalCharacters!1012 token!491))))))

(declare-fun b!538932 () Bool)

(declare-fun res!228648 () Bool)

(assert (=> b!538932 (=> (not res!228648) (not e!325301))))

(declare-fun isEmpty!3795 (List!5261) Bool)

(assert (=> b!538932 (= res!228648 (not (isEmpty!3795 rules!3103)))))

(declare-fun b!538933 () Bool)

(declare-fun res!228654 () Bool)

(assert (=> b!538933 (=> (not res!228654) (not e!325311))))

(assert (=> b!538933 (= res!228654 (= (size!4222 (_1!3422 (v!16131 lt!223754))) (size!4223 (originalCharacters!1012 (_1!3422 (v!16131 lt!223754))))))))

(declare-fun tp!171815 () Bool)

(declare-fun b!538934 () Bool)

(declare-fun inv!21 (TokenValue!997) Bool)

(assert (=> b!538934 (= e!325307 (and (inv!21 (value!32597 token!491)) e!325300 tp!171815))))

(declare-fun b!538935 () Bool)

(declare-fun Unit!9175 () Unit!9173)

(assert (=> b!538935 (= e!325289 Unit!9175)))

(assert (=> b!538935 false))

(declare-fun b!538936 () Bool)

(declare-fun res!228646 () Bool)

(assert (=> b!538936 (=> res!228646 e!325292)))

(declare-fun contains!1217 (List!5261 Rule!1746) Bool)

(assert (=> b!538936 (= res!228646 (not (contains!1217 rules!3103 (rule!1681 token!491))))))

(declare-fun b!538937 () Bool)

(declare-fun res!228655 () Bool)

(assert (=> b!538937 (=> res!228655 e!325292)))

(declare-fun matchR!466 (Regex!1307 List!5259) Bool)

(assert (=> b!538937 (= res!228655 (not (matchR!466 (regex!973 (rule!1681 token!491)) input!2705)))))

(declare-fun b!538938 () Bool)

(declare-fun e!325306 () Bool)

(declare-fun tp!171819 () Bool)

(assert (=> b!538938 (= e!325294 (and e!325306 tp!171819))))

(declare-fun b!538939 () Bool)

(declare-fun Unit!9176 () Unit!9173)

(assert (=> b!538939 (= e!325289 Unit!9176)))

(declare-fun b!538940 () Bool)

(declare-fun tp!171823 () Bool)

(assert (=> b!538940 (= e!325310 (and tp_is_empty!2969 tp!171823))))

(declare-fun b!538941 () Bool)

(declare-fun tp!171816 () Bool)

(assert (=> b!538941 (= e!325306 (and tp!171816 (inv!6586 (tag!1235 (h!10652 rules!3103))) (inv!6589 (transformation!973 (h!10652 rules!3103))) e!325295))))

(assert (= (and start!49792 res!228653) b!538932))

(assert (= (and b!538932 res!228648) b!538921))

(assert (= (and b!538921 res!228647) b!538929))

(assert (= (and b!538929 res!228633) b!538918))

(assert (= (and b!538918 res!228641) b!538914))

(assert (= (and b!538914 res!228656) b!538924))

(assert (= (and b!538924 res!228632) b!538925))

(assert (= (and b!538925 res!228645) b!538923))

(assert (= (and b!538923 res!228637) b!538922))

(assert (= (and b!538922 c!102247) b!538935))

(assert (= (and b!538922 (not c!102247)) b!538939))

(assert (= (and b!538922 res!228638) b!538933))

(assert (= (and b!538933 res!228654) b!538926))

(assert (= (and b!538922 (not res!228635)) b!538928))

(assert (= (and b!538928 res!228642) b!538931))

(assert (= (and b!538931 res!228649) b!538911))

(assert (= (and b!538928 res!228643) b!538908))

(assert (= (and b!538908 (not res!228652)) b!538919))

(assert (= (and b!538919 res!228639) b!538930))

(assert (= (and b!538928 (not res!228644)) b!538936))

(assert (= (and b!538936 (not res!228646)) b!538937))

(assert (= (and b!538937 (not res!228655)) b!538910))

(assert (= (and b!538910 (not res!228650)) b!538909))

(assert (= (and b!538909 (not res!228636)) b!538915))

(assert (= (and b!538915 (not res!228634)) b!538916))

(assert (= (and b!538916 (not res!228651)) b!538907))

(assert (= (and b!538907 (not res!228640)) b!538917))

(assert (= (and start!49792 ((_ is Cons!5249) suffix!1342)) b!538940))

(assert (= b!538941 b!538912))

(assert (= b!538938 b!538941))

(assert (= (and start!49792 ((_ is Cons!5251) rules!3103)) b!538938))

(assert (= b!538913 b!538920))

(assert (= b!538934 b!538913))

(assert (= start!49792 b!538934))

(assert (= (and start!49792 ((_ is Cons!5249) input!2705)) b!538927))

(declare-fun m!786149 () Bool)

(assert (=> b!538919 m!786149))

(declare-fun m!786151 () Bool)

(assert (=> b!538909 m!786151))

(declare-fun m!786153 () Bool)

(assert (=> b!538930 m!786153))

(declare-fun m!786155 () Bool)

(assert (=> b!538913 m!786155))

(declare-fun m!786157 () Bool)

(assert (=> b!538913 m!786157))

(declare-fun m!786159 () Bool)

(assert (=> b!538937 m!786159))

(declare-fun m!786161 () Bool)

(assert (=> b!538918 m!786161))

(assert (=> b!538918 m!786161))

(declare-fun m!786163 () Bool)

(assert (=> b!538918 m!786163))

(declare-fun m!786165 () Bool)

(assert (=> b!538910 m!786165))

(declare-fun m!786167 () Bool)

(assert (=> b!538914 m!786167))

(declare-fun m!786169 () Bool)

(assert (=> b!538914 m!786169))

(declare-fun m!786171 () Bool)

(assert (=> b!538914 m!786171))

(declare-fun m!786173 () Bool)

(assert (=> start!49792 m!786173))

(declare-fun m!786175 () Bool)

(assert (=> b!538931 m!786175))

(declare-fun m!786177 () Bool)

(assert (=> b!538917 m!786177))

(declare-fun m!786179 () Bool)

(assert (=> b!538924 m!786179))

(declare-fun m!786181 () Bool)

(assert (=> b!538936 m!786181))

(declare-fun m!786183 () Bool)

(assert (=> b!538922 m!786183))

(declare-fun m!786185 () Bool)

(assert (=> b!538922 m!786185))

(declare-fun m!786187 () Bool)

(assert (=> b!538922 m!786187))

(declare-fun m!786189 () Bool)

(assert (=> b!538922 m!786189))

(declare-fun m!786191 () Bool)

(assert (=> b!538922 m!786191))

(declare-fun m!786193 () Bool)

(assert (=> b!538922 m!786193))

(declare-fun m!786195 () Bool)

(assert (=> b!538922 m!786195))

(declare-fun m!786197 () Bool)

(assert (=> b!538922 m!786197))

(declare-fun m!786199 () Bool)

(assert (=> b!538922 m!786199))

(declare-fun m!786201 () Bool)

(assert (=> b!538922 m!786201))

(declare-fun m!786203 () Bool)

(assert (=> b!538922 m!786203))

(declare-fun m!786205 () Bool)

(assert (=> b!538922 m!786205))

(assert (=> b!538922 m!786191))

(assert (=> b!538922 m!786189))

(declare-fun m!786207 () Bool)

(assert (=> b!538922 m!786207))

(declare-fun m!786209 () Bool)

(assert (=> b!538922 m!786209))

(declare-fun m!786211 () Bool)

(assert (=> b!538922 m!786211))

(declare-fun m!786213 () Bool)

(assert (=> b!538922 m!786213))

(declare-fun m!786215 () Bool)

(assert (=> b!538922 m!786215))

(declare-fun m!786217 () Bool)

(assert (=> b!538922 m!786217))

(declare-fun m!786219 () Bool)

(assert (=> b!538922 m!786219))

(declare-fun m!786221 () Bool)

(assert (=> b!538922 m!786221))

(declare-fun m!786223 () Bool)

(assert (=> b!538922 m!786223))

(declare-fun m!786225 () Bool)

(assert (=> b!538922 m!786225))

(declare-fun m!786227 () Bool)

(assert (=> b!538922 m!786227))

(declare-fun m!786229 () Bool)

(assert (=> b!538922 m!786229))

(declare-fun m!786231 () Bool)

(assert (=> b!538922 m!786231))

(declare-fun m!786233 () Bool)

(assert (=> b!538922 m!786233))

(declare-fun m!786235 () Bool)

(assert (=> b!538922 m!786235))

(declare-fun m!786237 () Bool)

(assert (=> b!538928 m!786237))

(declare-fun m!786239 () Bool)

(assert (=> b!538928 m!786239))

(declare-fun m!786241 () Bool)

(assert (=> b!538928 m!786241))

(declare-fun m!786243 () Bool)

(assert (=> b!538928 m!786243))

(declare-fun m!786245 () Bool)

(assert (=> b!538928 m!786245))

(assert (=> b!538928 m!786243))

(declare-fun m!786247 () Bool)

(assert (=> b!538928 m!786247))

(declare-fun m!786249 () Bool)

(assert (=> b!538928 m!786249))

(declare-fun m!786251 () Bool)

(assert (=> b!538928 m!786251))

(declare-fun m!786253 () Bool)

(assert (=> b!538934 m!786253))

(declare-fun m!786255 () Bool)

(assert (=> b!538923 m!786255))

(declare-fun m!786257 () Bool)

(assert (=> b!538932 m!786257))

(declare-fun m!786259 () Bool)

(assert (=> b!538921 m!786259))

(declare-fun m!786261 () Bool)

(assert (=> b!538941 m!786261))

(declare-fun m!786263 () Bool)

(assert (=> b!538941 m!786263))

(declare-fun m!786265 () Bool)

(assert (=> b!538916 m!786265))

(declare-fun m!786267 () Bool)

(assert (=> b!538933 m!786267))

(declare-fun m!786269 () Bool)

(assert (=> b!538929 m!786269))

(declare-fun m!786271 () Bool)

(assert (=> b!538925 m!786271))

(declare-fun m!786273 () Bool)

(assert (=> b!538907 m!786273))

(check-sat (not b_next!14847) (not b_next!14845) (not b!538909) b_and!52699 tp_is_empty!2969 (not b!538928) b_and!52703 (not b!538907) (not b!538914) (not b!538913) (not b!538930) (not b!538938) (not b!538932) (not b!538929) (not b!538936) (not b!538941) (not b!538925) (not b!538927) (not b!538937) (not b_next!14841) b_and!52701 (not b!538940) (not b!538922) (not b!538910) (not b!538916) (not b!538931) b_and!52705 (not b_next!14843) (not b!538918) (not b!538921) (not b!538919) (not b!538923) (not b!538934) (not b!538924) (not b!538933) (not b!538917) (not start!49792))
(check-sat (not b_next!14847) (not b_next!14845) b_and!52699 b_and!52703 b_and!52705 (not b_next!14843) (not b_next!14841) b_and!52701)
