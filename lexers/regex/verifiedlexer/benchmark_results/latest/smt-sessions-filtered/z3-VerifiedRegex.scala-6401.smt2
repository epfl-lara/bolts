; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!333522 () Bool)

(assert start!333522)

(declare-fun b!3592724 () Bool)

(declare-fun b_free!92721 () Bool)

(declare-fun b_next!93425 () Bool)

(assert (=> b!3592724 (= b_free!92721 (not b_next!93425))))

(declare-fun tp!1099613 () Bool)

(declare-fun b_and!260035 () Bool)

(assert (=> b!3592724 (= tp!1099613 b_and!260035)))

(declare-fun b_free!92723 () Bool)

(declare-fun b_next!93427 () Bool)

(assert (=> b!3592724 (= b_free!92723 (not b_next!93427))))

(declare-fun tp!1099609 () Bool)

(declare-fun b_and!260037 () Bool)

(assert (=> b!3592724 (= tp!1099609 b_and!260037)))

(declare-fun b!3592727 () Bool)

(declare-fun b_free!92725 () Bool)

(declare-fun b_next!93429 () Bool)

(assert (=> b!3592727 (= b_free!92725 (not b_next!93429))))

(declare-fun tp!1099604 () Bool)

(declare-fun b_and!260039 () Bool)

(assert (=> b!3592727 (= tp!1099604 b_and!260039)))

(declare-fun b_free!92727 () Bool)

(declare-fun b_next!93431 () Bool)

(assert (=> b!3592727 (= b_free!92727 (not b_next!93431))))

(declare-fun tp!1099610 () Bool)

(declare-fun b_and!260041 () Bool)

(assert (=> b!3592727 (= tp!1099610 b_and!260041)))

(declare-fun b!3592730 () Bool)

(declare-fun b_free!92729 () Bool)

(declare-fun b_next!93433 () Bool)

(assert (=> b!3592730 (= b_free!92729 (not b_next!93433))))

(declare-fun tp!1099612 () Bool)

(declare-fun b_and!260043 () Bool)

(assert (=> b!3592730 (= tp!1099612 b_and!260043)))

(declare-fun b_free!92731 () Bool)

(declare-fun b_next!93435 () Bool)

(assert (=> b!3592730 (= b_free!92731 (not b_next!93435))))

(declare-fun tp!1099617 () Bool)

(declare-fun b_and!260045 () Bool)

(assert (=> b!3592730 (= tp!1099617 b_and!260045)))

(declare-fun b!3592731 () Bool)

(declare-fun b_free!92733 () Bool)

(declare-fun b_next!93437 () Bool)

(assert (=> b!3592731 (= b_free!92733 (not b_next!93437))))

(declare-fun tp!1099616 () Bool)

(declare-fun b_and!260047 () Bool)

(assert (=> b!3592731 (= tp!1099616 b_and!260047)))

(declare-fun b_free!92735 () Bool)

(declare-fun b_next!93439 () Bool)

(assert (=> b!3592731 (= b_free!92735 (not b_next!93439))))

(declare-fun tp!1099606 () Bool)

(declare-fun b_and!260049 () Bool)

(assert (=> b!3592731 (= tp!1099606 b_and!260049)))

(declare-fun b!3592702 () Bool)

(declare-fun e!2223056 () Bool)

(assert (=> b!3592702 (= e!2223056 true)))

(declare-fun lt!1232832 () Int)

(declare-datatypes ((C!20868 0))(
  ( (C!20869 (val!12482 Int)) )
))
(declare-datatypes ((List!37897 0))(
  ( (Nil!37773) (Cons!37773 (h!43193 C!20868) (t!291268 List!37897)) )
))
(declare-fun lt!1232841 () List!37897)

(declare-fun size!28774 (List!37897) Int)

(assert (=> b!3592702 (= lt!1232832 (size!28774 lt!1232841))))

(declare-datatypes ((List!37898 0))(
  ( (Nil!37774) (Cons!37774 (h!43194 (_ BitVec 16)) (t!291269 List!37898)) )
))
(declare-datatypes ((TokenValue!5812 0))(
  ( (FloatLiteralValue!11624 (text!41129 List!37898)) (TokenValueExt!5811 (__x!23841 Int)) (Broken!29060 (value!179521 List!37898)) (Object!5935) (End!5812) (Def!5812) (Underscore!5812) (Match!5812) (Else!5812) (Error!5812) (Case!5812) (If!5812) (Extends!5812) (Abstract!5812) (Class!5812) (Val!5812) (DelimiterValue!11624 (del!5872 List!37898)) (KeywordValue!5818 (value!179522 List!37898)) (CommentValue!11624 (value!179523 List!37898)) (WhitespaceValue!11624 (value!179524 List!37898)) (IndentationValue!5812 (value!179525 List!37898)) (String!42393) (Int32!5812) (Broken!29061 (value!179526 List!37898)) (Boolean!5813) (Unit!53776) (OperatorValue!5815 (op!5872 List!37898)) (IdentifierValue!11624 (value!179527 List!37898)) (IdentifierValue!11625 (value!179528 List!37898)) (WhitespaceValue!11625 (value!179529 List!37898)) (True!11624) (False!11624) (Broken!29062 (value!179530 List!37898)) (Broken!29063 (value!179531 List!37898)) (True!11625) (RightBrace!5812) (RightBracket!5812) (Colon!5812) (Null!5812) (Comma!5812) (LeftBracket!5812) (False!11625) (LeftBrace!5812) (ImaginaryLiteralValue!5812 (text!41130 List!37898)) (StringLiteralValue!17436 (value!179532 List!37898)) (EOFValue!5812 (value!179533 List!37898)) (IdentValue!5812 (value!179534 List!37898)) (DelimiterValue!11625 (value!179535 List!37898)) (DedentValue!5812 (value!179536 List!37898)) (NewLineValue!5812 (value!179537 List!37898)) (IntegerValue!17436 (value!179538 (_ BitVec 32)) (text!41131 List!37898)) (IntegerValue!17437 (value!179539 Int) (text!41132 List!37898)) (Times!5812) (Or!5812) (Equal!5812) (Minus!5812) (Broken!29064 (value!179540 List!37898)) (And!5812) (Div!5812) (LessEqual!5812) (Mod!5812) (Concat!16153) (Not!5812) (Plus!5812) (SpaceValue!5812 (value!179541 List!37898)) (IntegerValue!17438 (value!179542 Int) (text!41133 List!37898)) (StringLiteralValue!17437 (text!41134 List!37898)) (FloatLiteralValue!11625 (text!41135 List!37898)) (BytesLiteralValue!5812 (value!179543 List!37898)) (CommentValue!11625 (value!179544 List!37898)) (StringLiteralValue!17438 (value!179545 List!37898)) (ErrorTokenValue!5812 (msg!5873 List!37898)) )
))
(declare-datatypes ((Regex!10341 0))(
  ( (ElementMatch!10341 (c!622100 C!20868)) (Concat!16154 (regOne!21194 Regex!10341) (regTwo!21194 Regex!10341)) (EmptyExpr!10341) (Star!10341 (reg!10670 Regex!10341)) (EmptyLang!10341) (Union!10341 (regOne!21195 Regex!10341) (regTwo!21195 Regex!10341)) )
))
(declare-datatypes ((String!42394 0))(
  ( (String!42395 (value!179546 String)) )
))
(declare-datatypes ((IArray!22991 0))(
  ( (IArray!22992 (innerList!11553 List!37897)) )
))
(declare-datatypes ((Conc!11493 0))(
  ( (Node!11493 (left!29514 Conc!11493) (right!29844 Conc!11493) (csize!23216 Int) (cheight!11704 Int)) (Leaf!17895 (xs!14695 IArray!22991) (csize!23217 Int)) (Empty!11493) )
))
(declare-datatypes ((BalanceConc!22600 0))(
  ( (BalanceConc!22601 (c!622101 Conc!11493)) )
))
(declare-datatypes ((TokenValueInjection!11052 0))(
  ( (TokenValueInjection!11053 (toValue!7866 Int) (toChars!7725 Int)) )
))
(declare-datatypes ((Rule!10964 0))(
  ( (Rule!10965 (regex!5582 Regex!10341) (tag!6258 String!42394) (isSeparator!5582 Bool) (transformation!5582 TokenValueInjection!11052)) )
))
(declare-datatypes ((Token!10530 0))(
  ( (Token!10531 (value!179547 TokenValue!5812) (rule!8302 Rule!10964) (size!28775 Int) (originalCharacters!6296 List!37897)) )
))
(declare-datatypes ((tuple2!37660 0))(
  ( (tuple2!37661 (_1!21964 Token!10530) (_2!21964 List!37897)) )
))
(declare-fun lt!1232825 () tuple2!37660)

(declare-fun lt!1232836 () List!37897)

(assert (=> b!3592702 (= (_2!21964 lt!1232825) lt!1232836)))

(declare-fun lt!1232838 () List!37897)

(declare-datatypes ((Unit!53777 0))(
  ( (Unit!53778) )
))
(declare-fun lt!1232845 () Unit!53777)

(declare-fun lemmaSamePrefixThenSameSuffix!1300 (List!37897 List!37897 List!37897 List!37897 List!37897) Unit!53777)

(assert (=> b!3592702 (= lt!1232845 (lemmaSamePrefixThenSameSuffix!1300 lt!1232838 (_2!21964 lt!1232825) lt!1232838 lt!1232836 lt!1232841))))

(declare-fun getSuffix!1520 (List!37897 List!37897) List!37897)

(assert (=> b!3592702 (= lt!1232836 (getSuffix!1520 lt!1232841 lt!1232838))))

(declare-datatypes ((LexerInterface!5171 0))(
  ( (LexerInterfaceExt!5168 (__x!23842 Int)) (Lexer!5169) )
))
(declare-fun thiss!23823 () LexerInterface!5171)

(declare-datatypes ((Option!7794 0))(
  ( (None!7793) (Some!7793 (v!37475 tuple2!37660)) )
))
(declare-fun maxPrefixOneRule!1849 (LexerInterface!5171 Rule!10964 List!37897) Option!7794)

(declare-fun apply!9088 (TokenValueInjection!11052 BalanceConc!22600) TokenValue!5812)

(declare-fun seqFromList!4135 (List!37897) BalanceConc!22600)

(assert (=> b!3592702 (= (maxPrefixOneRule!1849 thiss!23823 (rule!8302 (_1!21964 lt!1232825)) lt!1232841) (Some!7793 (tuple2!37661 (Token!10531 (apply!9088 (transformation!5582 (rule!8302 (_1!21964 lt!1232825))) (seqFromList!4135 lt!1232838)) (rule!8302 (_1!21964 lt!1232825)) (size!28774 lt!1232838) lt!1232838) (_2!21964 lt!1232825))))))

(declare-datatypes ((List!37899 0))(
  ( (Nil!37775) (Cons!37775 (h!43195 Rule!10964) (t!291270 List!37899)) )
))
(declare-fun rules!3307 () List!37899)

(declare-fun lt!1232839 () Unit!53777)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!921 (LexerInterface!5171 List!37899 List!37897 List!37897 List!37897 Rule!10964) Unit!53777)

(assert (=> b!3592702 (= lt!1232839 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!921 thiss!23823 rules!3307 lt!1232838 lt!1232841 (_2!21964 lt!1232825) (rule!8302 (_1!21964 lt!1232825))))))

(declare-fun b!3592703 () Bool)

(declare-fun e!2223057 () Bool)

(declare-fun e!2223062 () Bool)

(assert (=> b!3592703 (= e!2223057 e!2223062)))

(declare-fun res!1450725 () Bool)

(assert (=> b!3592703 (=> (not res!1450725) (not e!2223062))))

(declare-fun lt!1232828 () Option!7794)

(declare-fun isDefined!6026 (Option!7794) Bool)

(assert (=> b!3592703 (= res!1450725 (isDefined!6026 lt!1232828))))

(declare-fun lt!1232840 () List!37897)

(declare-fun maxPrefix!2705 (LexerInterface!5171 List!37899 List!37897) Option!7794)

(assert (=> b!3592703 (= lt!1232828 (maxPrefix!2705 thiss!23823 rules!3307 lt!1232840))))

(declare-fun token!511 () Token!10530)

(declare-fun list!13898 (BalanceConc!22600) List!37897)

(declare-fun charsOf!3596 (Token!10530) BalanceConc!22600)

(assert (=> b!3592703 (= lt!1232840 (list!13898 (charsOf!3596 token!511)))))

(declare-fun b!3592704 () Bool)

(declare-fun e!2223071 () Bool)

(declare-fun e!2223072 () Bool)

(assert (=> b!3592704 (= e!2223071 (not e!2223072))))

(declare-fun res!1450723 () Bool)

(assert (=> b!3592704 (=> res!1450723 e!2223072)))

(declare-fun rule!403 () Rule!10964)

(declare-fun matchR!4910 (Regex!10341 List!37897) Bool)

(assert (=> b!3592704 (= res!1450723 (not (matchR!4910 (regex!5582 rule!403) lt!1232840)))))

(declare-fun ruleValid!1847 (LexerInterface!5171 Rule!10964) Bool)

(assert (=> b!3592704 (ruleValid!1847 thiss!23823 rule!403)))

(declare-fun lt!1232835 () Unit!53777)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1002 (LexerInterface!5171 Rule!10964 List!37899) Unit!53777)

(assert (=> b!3592704 (= lt!1232835 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1002 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3592705 () Bool)

(declare-fun res!1450728 () Bool)

(assert (=> b!3592705 (=> (not res!1450728) (not e!2223057))))

(declare-fun rulesInvariant!4568 (LexerInterface!5171 List!37899) Bool)

(assert (=> b!3592705 (= res!1450728 (rulesInvariant!4568 thiss!23823 rules!3307))))

(declare-fun b!3592706 () Bool)

(declare-fun e!2223069 () Bool)

(assert (=> b!3592706 (= e!2223072 e!2223069)))

(declare-fun res!1450718 () Bool)

(assert (=> b!3592706 (=> res!1450718 e!2223069)))

(declare-fun lt!1232831 () C!20868)

(declare-fun contains!7227 (List!37897 C!20868) Bool)

(declare-fun usedCharacters!796 (Regex!10341) List!37897)

(assert (=> b!3592706 (= res!1450718 (contains!7227 (usedCharacters!796 (regex!5582 rule!403)) lt!1232831))))

(declare-fun suffix!1395 () List!37897)

(declare-fun head!7510 (List!37897) C!20868)

(assert (=> b!3592706 (= lt!1232831 (head!7510 suffix!1395))))

(declare-fun tp!1099605 () Bool)

(declare-fun b!3592707 () Bool)

(declare-fun e!2223052 () Bool)

(declare-fun e!2223065 () Bool)

(declare-fun inv!51115 (String!42394) Bool)

(declare-fun inv!51118 (TokenValueInjection!11052) Bool)

(assert (=> b!3592707 (= e!2223065 (and tp!1099605 (inv!51115 (tag!6258 rule!403)) (inv!51118 (transformation!5582 rule!403)) e!2223052))))

(declare-fun b!3592708 () Bool)

(declare-fun e!2223063 () Bool)

(declare-fun lt!1232834 () Rule!10964)

(assert (=> b!3592708 (= e!2223063 (= (rule!8302 (_1!21964 lt!1232825)) lt!1232834))))

(declare-fun b!3592709 () Bool)

(declare-fun res!1450715 () Bool)

(assert (=> b!3592709 (=> res!1450715 e!2223069)))

(declare-fun anOtherTypeRule!33 () Rule!10964)

(assert (=> b!3592709 (= res!1450715 (not (contains!7227 (usedCharacters!796 (regex!5582 anOtherTypeRule!33)) lt!1232831)))))

(declare-fun b!3592710 () Bool)

(declare-fun e!2223060 () Bool)

(declare-fun tp_is_empty!17765 () Bool)

(declare-fun tp!1099608 () Bool)

(assert (=> b!3592710 (= e!2223060 (and tp_is_empty!17765 tp!1099608))))

(declare-fun b!3592711 () Bool)

(declare-fun e!2223068 () Bool)

(assert (=> b!3592711 (= e!2223069 e!2223068)))

(declare-fun res!1450719 () Bool)

(assert (=> b!3592711 (=> res!1450719 e!2223068)))

(declare-fun isPrefix!2945 (List!37897 List!37897) Bool)

(assert (=> b!3592711 (= res!1450719 (not (isPrefix!2945 lt!1232838 lt!1232841)))))

(declare-fun ++!9398 (List!37897 List!37897) List!37897)

(assert (=> b!3592711 (isPrefix!2945 lt!1232838 (++!9398 lt!1232838 (_2!21964 lt!1232825)))))

(declare-fun lt!1232833 () Unit!53777)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1866 (List!37897 List!37897) Unit!53777)

(assert (=> b!3592711 (= lt!1232833 (lemmaConcatTwoListThenFirstIsPrefix!1866 lt!1232838 (_2!21964 lt!1232825)))))

(declare-fun lt!1232829 () BalanceConc!22600)

(assert (=> b!3592711 (= lt!1232838 (list!13898 lt!1232829))))

(assert (=> b!3592711 (= lt!1232829 (charsOf!3596 (_1!21964 lt!1232825)))))

(declare-fun e!2223067 () Bool)

(assert (=> b!3592711 e!2223067))

(declare-fun res!1450730 () Bool)

(assert (=> b!3592711 (=> (not res!1450730) (not e!2223067))))

(declare-datatypes ((Option!7795 0))(
  ( (None!7794) (Some!7794 (v!37476 Rule!10964)) )
))
(declare-fun lt!1232843 () Option!7795)

(declare-fun isDefined!6027 (Option!7795) Bool)

(assert (=> b!3592711 (= res!1450730 (isDefined!6027 lt!1232843))))

(declare-fun getRuleFromTag!1188 (LexerInterface!5171 List!37899 String!42394) Option!7795)

(assert (=> b!3592711 (= lt!1232843 (getRuleFromTag!1188 thiss!23823 rules!3307 (tag!6258 (rule!8302 (_1!21964 lt!1232825)))))))

(declare-fun lt!1232830 () Unit!53777)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1188 (LexerInterface!5171 List!37899 List!37897 Token!10530) Unit!53777)

(assert (=> b!3592711 (= lt!1232830 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1188 thiss!23823 rules!3307 lt!1232841 (_1!21964 lt!1232825)))))

(declare-fun lt!1232837 () Option!7794)

(declare-fun get!12195 (Option!7794) tuple2!37660)

(assert (=> b!3592711 (= lt!1232825 (get!12195 lt!1232837))))

(declare-fun lt!1232846 () Unit!53777)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!851 (LexerInterface!5171 List!37899 List!37897 List!37897) Unit!53777)

(assert (=> b!3592711 (= lt!1232846 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!851 thiss!23823 rules!3307 lt!1232840 suffix!1395))))

(assert (=> b!3592711 (= lt!1232837 (maxPrefix!2705 thiss!23823 rules!3307 lt!1232841))))

(assert (=> b!3592711 (isPrefix!2945 lt!1232840 lt!1232841)))

(declare-fun lt!1232844 () Unit!53777)

(assert (=> b!3592711 (= lt!1232844 (lemmaConcatTwoListThenFirstIsPrefix!1866 lt!1232840 suffix!1395))))

(assert (=> b!3592711 (= lt!1232841 (++!9398 lt!1232840 suffix!1395))))

(declare-fun b!3592712 () Bool)

(declare-fun res!1450733 () Bool)

(assert (=> b!3592712 (=> (not res!1450733) (not e!2223057))))

(declare-fun isEmpty!22266 (List!37899) Bool)

(assert (=> b!3592712 (= res!1450733 (not (isEmpty!22266 rules!3307)))))

(declare-fun b!3592713 () Bool)

(declare-fun res!1450720 () Bool)

(assert (=> b!3592713 (=> (not res!1450720) (not e!2223057))))

(declare-fun contains!7228 (List!37899 Rule!10964) Bool)

(assert (=> b!3592713 (= res!1450720 (contains!7228 rules!3307 rule!403))))

(declare-fun b!3592714 () Bool)

(assert (=> b!3592714 (= e!2223062 e!2223071)))

(declare-fun res!1450717 () Bool)

(assert (=> b!3592714 (=> (not res!1450717) (not e!2223071))))

(declare-fun lt!1232826 () tuple2!37660)

(assert (=> b!3592714 (= res!1450717 (= (_1!21964 lt!1232826) token!511))))

(assert (=> b!3592714 (= lt!1232826 (get!12195 lt!1232828))))

(declare-fun b!3592715 () Bool)

(declare-fun res!1450716 () Bool)

(assert (=> b!3592715 (=> (not res!1450716) (not e!2223057))))

(assert (=> b!3592715 (= res!1450716 (not (= (isSeparator!5582 anOtherTypeRule!33) (isSeparator!5582 rule!403))))))

(declare-fun b!3592716 () Bool)

(assert (=> b!3592716 (= e!2223068 e!2223056)))

(declare-fun res!1450729 () Bool)

(assert (=> b!3592716 (=> res!1450729 e!2223056)))

(declare-fun size!28776 (BalanceConc!22600) Int)

(assert (=> b!3592716 (= res!1450729 (not (= lt!1232837 (Some!7793 (tuple2!37661 (Token!10531 (apply!9088 (transformation!5582 (rule!8302 (_1!21964 lt!1232825))) lt!1232829) (rule!8302 (_1!21964 lt!1232825)) (size!28776 lt!1232829) lt!1232838) (_2!21964 lt!1232825))))))))

(declare-fun lt!1232842 () Unit!53777)

(declare-fun lemmaCharactersSize!635 (Token!10530) Unit!53777)

(assert (=> b!3592716 (= lt!1232842 (lemmaCharactersSize!635 (_1!21964 lt!1232825)))))

(declare-fun lt!1232827 () Unit!53777)

(declare-fun lemmaEqSameImage!773 (TokenValueInjection!11052 BalanceConc!22600 BalanceConc!22600) Unit!53777)

(assert (=> b!3592716 (= lt!1232827 (lemmaEqSameImage!773 (transformation!5582 (rule!8302 (_1!21964 lt!1232825))) lt!1232829 (seqFromList!4135 (originalCharacters!6296 (_1!21964 lt!1232825)))))))

(declare-fun lt!1232824 () Unit!53777)

(declare-fun lemmaSemiInverse!1339 (TokenValueInjection!11052 BalanceConc!22600) Unit!53777)

(assert (=> b!3592716 (= lt!1232824 (lemmaSemiInverse!1339 (transformation!5582 (rule!8302 (_1!21964 lt!1232825))) lt!1232829))))

(declare-fun res!1450724 () Bool)

(assert (=> start!333522 (=> (not res!1450724) (not e!2223057))))

(get-info :version)

(assert (=> start!333522 (= res!1450724 ((_ is Lexer!5169) thiss!23823))))

(assert (=> start!333522 e!2223057))

(declare-fun e!2223050 () Bool)

(assert (=> start!333522 e!2223050))

(assert (=> start!333522 e!2223060))

(assert (=> start!333522 true))

(declare-fun e!2223055 () Bool)

(declare-fun inv!51119 (Token!10530) Bool)

(assert (=> start!333522 (and (inv!51119 token!511) e!2223055)))

(assert (=> start!333522 e!2223065))

(declare-fun e!2223064 () Bool)

(assert (=> start!333522 e!2223064))

(declare-fun b!3592717 () Bool)

(declare-fun tp!1099607 () Bool)

(declare-fun e!2223048 () Bool)

(assert (=> b!3592717 (= e!2223064 (and tp!1099607 (inv!51115 (tag!6258 anOtherTypeRule!33)) (inv!51118 (transformation!5582 anOtherTypeRule!33)) e!2223048))))

(declare-fun b!3592718 () Bool)

(declare-fun res!1450721 () Bool)

(assert (=> b!3592718 (=> res!1450721 e!2223069)))

(declare-fun sepAndNonSepRulesDisjointChars!1752 (List!37899 List!37899) Bool)

(assert (=> b!3592718 (= res!1450721 (not (sepAndNonSepRulesDisjointChars!1752 rules!3307 rules!3307)))))

(declare-fun b!3592719 () Bool)

(declare-fun res!1450734 () Bool)

(assert (=> b!3592719 (=> (not res!1450734) (not e!2223071))))

(assert (=> b!3592719 (= res!1450734 (= (rule!8302 token!511) rule!403))))

(declare-fun e!2223070 () Bool)

(declare-fun tp!1099618 () Bool)

(declare-fun b!3592720 () Bool)

(declare-fun e!2223049 () Bool)

(assert (=> b!3592720 (= e!2223049 (and tp!1099618 (inv!51115 (tag!6258 (rule!8302 token!511))) (inv!51118 (transformation!5582 (rule!8302 token!511))) e!2223070))))

(declare-fun b!3592721 () Bool)

(declare-fun tp!1099615 () Bool)

(declare-fun inv!21 (TokenValue!5812) Bool)

(assert (=> b!3592721 (= e!2223055 (and (inv!21 (value!179547 token!511)) e!2223049 tp!1099615))))

(declare-fun b!3592722 () Bool)

(declare-fun tp!1099614 () Bool)

(declare-fun e!2223053 () Bool)

(declare-fun e!2223058 () Bool)

(assert (=> b!3592722 (= e!2223058 (and tp!1099614 (inv!51115 (tag!6258 (h!43195 rules!3307))) (inv!51118 (transformation!5582 (h!43195 rules!3307))) e!2223053))))

(declare-fun b!3592723 () Bool)

(declare-fun res!1450732 () Bool)

(assert (=> b!3592723 (=> (not res!1450732) (not e!2223057))))

(assert (=> b!3592723 (= res!1450732 (contains!7228 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3592724 (= e!2223070 (and tp!1099613 tp!1099609))))

(declare-fun b!3592725 () Bool)

(declare-fun res!1450722 () Bool)

(assert (=> b!3592725 (=> res!1450722 e!2223068)))

(assert (=> b!3592725 (= res!1450722 (not (matchR!4910 (regex!5582 (rule!8302 (_1!21964 lt!1232825))) lt!1232838)))))

(declare-fun b!3592726 () Bool)

(assert (=> b!3592726 (= e!2223067 e!2223063)))

(declare-fun res!1450727 () Bool)

(assert (=> b!3592726 (=> (not res!1450727) (not e!2223063))))

(assert (=> b!3592726 (= res!1450727 (matchR!4910 (regex!5582 lt!1232834) (list!13898 (charsOf!3596 (_1!21964 lt!1232825)))))))

(declare-fun get!12196 (Option!7795) Rule!10964)

(assert (=> b!3592726 (= lt!1232834 (get!12196 lt!1232843))))

(assert (=> b!3592727 (= e!2223053 (and tp!1099604 tp!1099610))))

(declare-fun b!3592728 () Bool)

(declare-fun res!1450731 () Bool)

(assert (=> b!3592728 (=> res!1450731 e!2223072)))

(declare-fun isEmpty!22267 (List!37897) Bool)

(assert (=> b!3592728 (= res!1450731 (isEmpty!22267 suffix!1395))))

(declare-fun b!3592729 () Bool)

(declare-fun tp!1099611 () Bool)

(assert (=> b!3592729 (= e!2223050 (and e!2223058 tp!1099611))))

(assert (=> b!3592730 (= e!2223052 (and tp!1099612 tp!1099617))))

(assert (=> b!3592731 (= e!2223048 (and tp!1099616 tp!1099606))))

(declare-fun b!3592732 () Bool)

(declare-fun res!1450726 () Bool)

(assert (=> b!3592732 (=> (not res!1450726) (not e!2223071))))

(assert (=> b!3592732 (= res!1450726 (isEmpty!22267 (_2!21964 lt!1232826)))))

(assert (= (and start!333522 res!1450724) b!3592712))

(assert (= (and b!3592712 res!1450733) b!3592705))

(assert (= (and b!3592705 res!1450728) b!3592713))

(assert (= (and b!3592713 res!1450720) b!3592723))

(assert (= (and b!3592723 res!1450732) b!3592715))

(assert (= (and b!3592715 res!1450716) b!3592703))

(assert (= (and b!3592703 res!1450725) b!3592714))

(assert (= (and b!3592714 res!1450717) b!3592732))

(assert (= (and b!3592732 res!1450726) b!3592719))

(assert (= (and b!3592719 res!1450734) b!3592704))

(assert (= (and b!3592704 (not res!1450723)) b!3592728))

(assert (= (and b!3592728 (not res!1450731)) b!3592706))

(assert (= (and b!3592706 (not res!1450718)) b!3592709))

(assert (= (and b!3592709 (not res!1450715)) b!3592718))

(assert (= (and b!3592718 (not res!1450721)) b!3592711))

(assert (= (and b!3592711 res!1450730) b!3592726))

(assert (= (and b!3592726 res!1450727) b!3592708))

(assert (= (and b!3592711 (not res!1450719)) b!3592725))

(assert (= (and b!3592725 (not res!1450722)) b!3592716))

(assert (= (and b!3592716 (not res!1450729)) b!3592702))

(assert (= b!3592722 b!3592727))

(assert (= b!3592729 b!3592722))

(assert (= (and start!333522 ((_ is Cons!37775) rules!3307)) b!3592729))

(assert (= (and start!333522 ((_ is Cons!37773) suffix!1395)) b!3592710))

(assert (= b!3592720 b!3592724))

(assert (= b!3592721 b!3592720))

(assert (= start!333522 b!3592721))

(assert (= b!3592707 b!3592730))

(assert (= start!333522 b!3592707))

(assert (= b!3592717 b!3592731))

(assert (= start!333522 b!3592717))

(declare-fun m!4087095 () Bool)

(assert (=> b!3592704 m!4087095))

(declare-fun m!4087097 () Bool)

(assert (=> b!3592704 m!4087097))

(declare-fun m!4087099 () Bool)

(assert (=> b!3592704 m!4087099))

(declare-fun m!4087101 () Bool)

(assert (=> b!3592726 m!4087101))

(assert (=> b!3592726 m!4087101))

(declare-fun m!4087103 () Bool)

(assert (=> b!3592726 m!4087103))

(assert (=> b!3592726 m!4087103))

(declare-fun m!4087105 () Bool)

(assert (=> b!3592726 m!4087105))

(declare-fun m!4087107 () Bool)

(assert (=> b!3592726 m!4087107))

(declare-fun m!4087109 () Bool)

(assert (=> b!3592732 m!4087109))

(declare-fun m!4087111 () Bool)

(assert (=> b!3592702 m!4087111))

(declare-fun m!4087113 () Bool)

(assert (=> b!3592702 m!4087113))

(declare-fun m!4087115 () Bool)

(assert (=> b!3592702 m!4087115))

(declare-fun m!4087117 () Bool)

(assert (=> b!3592702 m!4087117))

(declare-fun m!4087119 () Bool)

(assert (=> b!3592702 m!4087119))

(declare-fun m!4087121 () Bool)

(assert (=> b!3592702 m!4087121))

(assert (=> b!3592702 m!4087113))

(declare-fun m!4087123 () Bool)

(assert (=> b!3592702 m!4087123))

(declare-fun m!4087125 () Bool)

(assert (=> b!3592702 m!4087125))

(declare-fun m!4087127 () Bool)

(assert (=> b!3592723 m!4087127))

(declare-fun m!4087129 () Bool)

(assert (=> b!3592705 m!4087129))

(declare-fun m!4087131 () Bool)

(assert (=> b!3592712 m!4087131))

(declare-fun m!4087133 () Bool)

(assert (=> b!3592720 m!4087133))

(declare-fun m!4087135 () Bool)

(assert (=> b!3592720 m!4087135))

(declare-fun m!4087137 () Bool)

(assert (=> b!3592707 m!4087137))

(declare-fun m!4087139 () Bool)

(assert (=> b!3592707 m!4087139))

(declare-fun m!4087141 () Bool)

(assert (=> start!333522 m!4087141))

(declare-fun m!4087143 () Bool)

(assert (=> b!3592716 m!4087143))

(declare-fun m!4087145 () Bool)

(assert (=> b!3592716 m!4087145))

(declare-fun m!4087147 () Bool)

(assert (=> b!3592716 m!4087147))

(assert (=> b!3592716 m!4087143))

(declare-fun m!4087149 () Bool)

(assert (=> b!3592716 m!4087149))

(declare-fun m!4087151 () Bool)

(assert (=> b!3592716 m!4087151))

(declare-fun m!4087153 () Bool)

(assert (=> b!3592716 m!4087153))

(declare-fun m!4087155 () Bool)

(assert (=> b!3592711 m!4087155))

(declare-fun m!4087157 () Bool)

(assert (=> b!3592711 m!4087157))

(declare-fun m!4087159 () Bool)

(assert (=> b!3592711 m!4087159))

(assert (=> b!3592711 m!4087157))

(declare-fun m!4087161 () Bool)

(assert (=> b!3592711 m!4087161))

(declare-fun m!4087163 () Bool)

(assert (=> b!3592711 m!4087163))

(declare-fun m!4087165 () Bool)

(assert (=> b!3592711 m!4087165))

(assert (=> b!3592711 m!4087101))

(declare-fun m!4087167 () Bool)

(assert (=> b!3592711 m!4087167))

(declare-fun m!4087169 () Bool)

(assert (=> b!3592711 m!4087169))

(declare-fun m!4087171 () Bool)

(assert (=> b!3592711 m!4087171))

(declare-fun m!4087173 () Bool)

(assert (=> b!3592711 m!4087173))

(declare-fun m!4087175 () Bool)

(assert (=> b!3592711 m!4087175))

(declare-fun m!4087177 () Bool)

(assert (=> b!3592711 m!4087177))

(declare-fun m!4087179 () Bool)

(assert (=> b!3592711 m!4087179))

(declare-fun m!4087181 () Bool)

(assert (=> b!3592711 m!4087181))

(declare-fun m!4087183 () Bool)

(assert (=> b!3592718 m!4087183))

(declare-fun m!4087185 () Bool)

(assert (=> b!3592717 m!4087185))

(declare-fun m!4087187 () Bool)

(assert (=> b!3592717 m!4087187))

(declare-fun m!4087189 () Bool)

(assert (=> b!3592721 m!4087189))

(declare-fun m!4087191 () Bool)

(assert (=> b!3592713 m!4087191))

(declare-fun m!4087193 () Bool)

(assert (=> b!3592714 m!4087193))

(declare-fun m!4087195 () Bool)

(assert (=> b!3592722 m!4087195))

(declare-fun m!4087197 () Bool)

(assert (=> b!3592722 m!4087197))

(declare-fun m!4087199 () Bool)

(assert (=> b!3592703 m!4087199))

(declare-fun m!4087201 () Bool)

(assert (=> b!3592703 m!4087201))

(declare-fun m!4087203 () Bool)

(assert (=> b!3592703 m!4087203))

(assert (=> b!3592703 m!4087203))

(declare-fun m!4087205 () Bool)

(assert (=> b!3592703 m!4087205))

(declare-fun m!4087207 () Bool)

(assert (=> b!3592728 m!4087207))

(declare-fun m!4087209 () Bool)

(assert (=> b!3592709 m!4087209))

(assert (=> b!3592709 m!4087209))

(declare-fun m!4087211 () Bool)

(assert (=> b!3592709 m!4087211))

(declare-fun m!4087213 () Bool)

(assert (=> b!3592706 m!4087213))

(assert (=> b!3592706 m!4087213))

(declare-fun m!4087215 () Bool)

(assert (=> b!3592706 m!4087215))

(declare-fun m!4087217 () Bool)

(assert (=> b!3592706 m!4087217))

(declare-fun m!4087219 () Bool)

(assert (=> b!3592725 m!4087219))

(check-sat (not b_next!93439) (not b!3592705) (not b_next!93437) (not b!3592709) (not b!3592732) (not start!333522) b_and!260047 (not b!3592712) b_and!260045 (not b!3592728) b_and!260037 (not b!3592717) (not b!3592716) (not b!3592723) b_and!260035 (not b!3592726) (not b!3592707) (not b!3592722) (not b!3592721) b_and!260043 b_and!260039 (not b_next!93431) tp_is_empty!17765 (not b!3592706) (not b_next!93435) (not b!3592718) (not b!3592702) (not b_next!93429) (not b!3592713) (not b!3592710) (not b_next!93425) (not b!3592729) b_and!260049 (not b!3592725) (not b!3592704) (not b!3592720) (not b_next!93427) (not b_next!93433) (not b!3592711) (not b!3592703) (not b!3592714) b_and!260041)
(check-sat b_and!260035 (not b_next!93439) (not b_next!93437) (not b_next!93431) (not b_next!93435) b_and!260047 (not b_next!93429) b_and!260045 (not b_next!93427) b_and!260037 (not b_next!93433) b_and!260041 b_and!260043 b_and!260039 (not b_next!93425) b_and!260049)
