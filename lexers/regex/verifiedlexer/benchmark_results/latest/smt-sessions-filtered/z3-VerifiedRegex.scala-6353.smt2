; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!327898 () Bool)

(assert start!327898)

(declare-fun b!3527619 () Bool)

(declare-fun b_free!90913 () Bool)

(declare-fun b_next!91617 () Bool)

(assert (=> b!3527619 (= b_free!90913 (not b_next!91617))))

(declare-fun tp!1087958 () Bool)

(declare-fun b_and!251543 () Bool)

(assert (=> b!3527619 (= tp!1087958 b_and!251543)))

(declare-fun b_free!90915 () Bool)

(declare-fun b_next!91619 () Bool)

(assert (=> b!3527619 (= b_free!90915 (not b_next!91619))))

(declare-fun tp!1087955 () Bool)

(declare-fun b_and!251545 () Bool)

(assert (=> b!3527619 (= tp!1087955 b_and!251545)))

(declare-fun b!3527595 () Bool)

(declare-fun b_free!90917 () Bool)

(declare-fun b_next!91621 () Bool)

(assert (=> b!3527595 (= b_free!90917 (not b_next!91621))))

(declare-fun tp!1087950 () Bool)

(declare-fun b_and!251547 () Bool)

(assert (=> b!3527595 (= tp!1087950 b_and!251547)))

(declare-fun b_free!90919 () Bool)

(declare-fun b_next!91623 () Bool)

(assert (=> b!3527595 (= b_free!90919 (not b_next!91623))))

(declare-fun tp!1087946 () Bool)

(declare-fun b_and!251549 () Bool)

(assert (=> b!3527595 (= tp!1087946 b_and!251549)))

(declare-fun b!3527600 () Bool)

(declare-fun b_free!90921 () Bool)

(declare-fun b_next!91625 () Bool)

(assert (=> b!3527600 (= b_free!90921 (not b_next!91625))))

(declare-fun tp!1087951 () Bool)

(declare-fun b_and!251551 () Bool)

(assert (=> b!3527600 (= tp!1087951 b_and!251551)))

(declare-fun b_free!90923 () Bool)

(declare-fun b_next!91627 () Bool)

(assert (=> b!3527600 (= b_free!90923 (not b_next!91627))))

(declare-fun tp!1087949 () Bool)

(declare-fun b_and!251553 () Bool)

(assert (=> b!3527600 (= tp!1087949 b_and!251553)))

(declare-fun bs!565773 () Bool)

(declare-fun b!3527621 () Bool)

(declare-fun b!3527613 () Bool)

(assert (= bs!565773 (and b!3527621 b!3527613)))

(declare-fun lambda!122919 () Int)

(declare-fun lambda!122918 () Int)

(assert (=> bs!565773 (not (= lambda!122919 lambda!122918))))

(declare-fun b!3527648 () Bool)

(declare-fun e!2183692 () Bool)

(assert (=> b!3527648 (= e!2183692 true)))

(declare-fun b!3527647 () Bool)

(declare-fun e!2183691 () Bool)

(assert (=> b!3527647 (= e!2183691 e!2183692)))

(declare-fun b!3527646 () Bool)

(declare-fun e!2183690 () Bool)

(assert (=> b!3527646 (= e!2183690 e!2183691)))

(assert (=> b!3527621 e!2183690))

(assert (= b!3527647 b!3527648))

(assert (= b!3527646 b!3527647))

(declare-datatypes ((C!20676 0))(
  ( (C!20677 (val!12386 Int)) )
))
(declare-datatypes ((Regex!10245 0))(
  ( (ElementMatch!10245 (c!608120 C!20676)) (Concat!15961 (regOne!21002 Regex!10245) (regTwo!21002 Regex!10245)) (EmptyExpr!10245) (Star!10245 (reg!10574 Regex!10245)) (EmptyLang!10245) (Union!10245 (regOne!21003 Regex!10245) (regTwo!21003 Regex!10245)) )
))
(declare-datatypes ((List!37512 0))(
  ( (Nil!37388) (Cons!37388 (h!42808 (_ BitVec 16)) (t!282653 List!37512)) )
))
(declare-datatypes ((String!41913 0))(
  ( (String!41914 (value!176785 String)) )
))
(declare-datatypes ((TokenValue!5716 0))(
  ( (FloatLiteralValue!11432 (text!40457 List!37512)) (TokenValueExt!5715 (__x!23649 Int)) (Broken!28580 (value!176786 List!37512)) (Object!5839) (End!5716) (Def!5716) (Underscore!5716) (Match!5716) (Else!5716) (Error!5716) (Case!5716) (If!5716) (Extends!5716) (Abstract!5716) (Class!5716) (Val!5716) (DelimiterValue!11432 (del!5776 List!37512)) (KeywordValue!5722 (value!176787 List!37512)) (CommentValue!11432 (value!176788 List!37512)) (WhitespaceValue!11432 (value!176789 List!37512)) (IndentationValue!5716 (value!176790 List!37512)) (String!41915) (Int32!5716) (Broken!28581 (value!176791 List!37512)) (Boolean!5717) (Unit!53081) (OperatorValue!5719 (op!5776 List!37512)) (IdentifierValue!11432 (value!176792 List!37512)) (IdentifierValue!11433 (value!176793 List!37512)) (WhitespaceValue!11433 (value!176794 List!37512)) (True!11432) (False!11432) (Broken!28582 (value!176795 List!37512)) (Broken!28583 (value!176796 List!37512)) (True!11433) (RightBrace!5716) (RightBracket!5716) (Colon!5716) (Null!5716) (Comma!5716) (LeftBracket!5716) (False!11433) (LeftBrace!5716) (ImaginaryLiteralValue!5716 (text!40458 List!37512)) (StringLiteralValue!17148 (value!176797 List!37512)) (EOFValue!5716 (value!176798 List!37512)) (IdentValue!5716 (value!176799 List!37512)) (DelimiterValue!11433 (value!176800 List!37512)) (DedentValue!5716 (value!176801 List!37512)) (NewLineValue!5716 (value!176802 List!37512)) (IntegerValue!17148 (value!176803 (_ BitVec 32)) (text!40459 List!37512)) (IntegerValue!17149 (value!176804 Int) (text!40460 List!37512)) (Times!5716) (Or!5716) (Equal!5716) (Minus!5716) (Broken!28584 (value!176805 List!37512)) (And!5716) (Div!5716) (LessEqual!5716) (Mod!5716) (Concat!15962) (Not!5716) (Plus!5716) (SpaceValue!5716 (value!176806 List!37512)) (IntegerValue!17150 (value!176807 Int) (text!40461 List!37512)) (StringLiteralValue!17149 (text!40462 List!37512)) (FloatLiteralValue!11433 (text!40463 List!37512)) (BytesLiteralValue!5716 (value!176808 List!37512)) (CommentValue!11433 (value!176809 List!37512)) (StringLiteralValue!17150 (value!176810 List!37512)) (ErrorTokenValue!5716 (msg!5777 List!37512)) )
))
(declare-datatypes ((List!37513 0))(
  ( (Nil!37389) (Cons!37389 (h!42809 C!20676) (t!282654 List!37513)) )
))
(declare-datatypes ((IArray!22699 0))(
  ( (IArray!22700 (innerList!11407 List!37513)) )
))
(declare-datatypes ((Conc!11347 0))(
  ( (Node!11347 (left!29212 Conc!11347) (right!29542 Conc!11347) (csize!22924 Int) (cheight!11558 Int)) (Leaf!17701 (xs!14537 IArray!22699) (csize!22925 Int)) (Empty!11347) )
))
(declare-datatypes ((BalanceConc!22308 0))(
  ( (BalanceConc!22309 (c!608121 Conc!11347)) )
))
(declare-datatypes ((TokenValueInjection!10860 0))(
  ( (TokenValueInjection!10861 (toValue!7742 Int) (toChars!7601 Int)) )
))
(declare-datatypes ((Rule!10772 0))(
  ( (Rule!10773 (regex!5486 Regex!10245) (tag!6130 String!41913) (isSeparator!5486 Bool) (transformation!5486 TokenValueInjection!10860)) )
))
(declare-datatypes ((List!37514 0))(
  ( (Nil!37390) (Cons!37390 (h!42810 Rule!10772) (t!282655 List!37514)) )
))
(declare-fun rules!2135 () List!37514)

(get-info :version)

(assert (= (and b!3527621 ((_ is Cons!37390) rules!2135)) b!3527646))

(declare-fun order!20155 () Int)

(declare-fun order!20153 () Int)

(declare-fun dynLambda!15956 (Int Int) Int)

(declare-fun dynLambda!15957 (Int Int) Int)

(assert (=> b!3527648 (< (dynLambda!15956 order!20153 (toValue!7742 (transformation!5486 (h!42810 rules!2135)))) (dynLambda!15957 order!20155 lambda!122919))))

(declare-fun order!20157 () Int)

(declare-fun dynLambda!15958 (Int Int) Int)

(assert (=> b!3527648 (< (dynLambda!15958 order!20157 (toChars!7601 (transformation!5486 (h!42810 rules!2135)))) (dynLambda!15957 order!20155 lambda!122919))))

(assert (=> b!3527621 true))

(declare-fun b!3527593 () Bool)

(declare-fun e!2183675 () Bool)

(declare-fun e!2183649 () Bool)

(assert (=> b!3527593 (= e!2183675 e!2183649)))

(declare-fun res!1423166 () Bool)

(assert (=> b!3527593 (=> res!1423166 e!2183649)))

(declare-fun lt!1205674 () List!37513)

(declare-fun lt!1205680 () List!37513)

(assert (=> b!3527593 (= res!1423166 (not (= lt!1205674 lt!1205680)))))

(declare-fun lt!1205702 () List!37513)

(assert (=> b!3527593 (= lt!1205702 lt!1205680)))

(declare-fun lt!1205700 () List!37513)

(declare-fun lt!1205706 () List!37513)

(declare-fun ++!9273 (List!37513 List!37513) List!37513)

(assert (=> b!3527593 (= lt!1205680 (++!9273 lt!1205700 lt!1205706))))

(declare-fun lt!1205698 () List!37513)

(declare-datatypes ((Unit!53082 0))(
  ( (Unit!53083) )
))
(declare-fun lt!1205685 () Unit!53082)

(declare-fun lt!1205673 () List!37513)

(declare-fun lemmaConcatAssociativity!2020 (List!37513 List!37513 List!37513) Unit!53082)

(assert (=> b!3527593 (= lt!1205685 (lemmaConcatAssociativity!2020 lt!1205700 lt!1205673 lt!1205698))))

(declare-fun b!3527594 () Bool)

(declare-fun res!1423167 () Bool)

(declare-fun e!2183662 () Bool)

(assert (=> b!3527594 (=> res!1423167 e!2183662)))

(declare-datatypes ((LexerInterface!5075 0))(
  ( (LexerInterfaceExt!5072 (__x!23650 Int)) (Lexer!5073) )
))
(declare-fun thiss!18206 () LexerInterface!5075)

(declare-datatypes ((Token!10338 0))(
  ( (Token!10339 (value!176811 TokenValue!5716) (rule!8146 Rule!10772) (size!28461 Int) (originalCharacters!6200 List!37513)) )
))
(declare-datatypes ((List!37515 0))(
  ( (Nil!37391) (Cons!37391 (h!42811 Token!10338) (t!282656 List!37515)) )
))
(declare-fun tokens!494 () List!37515)

(declare-fun rulesProduceIndividualToken!2567 (LexerInterface!5075 List!37514 Token!10338) Bool)

(assert (=> b!3527594 (= res!1423167 (not (rulesProduceIndividualToken!2567 thiss!18206 rules!2135 (h!42811 tokens!494))))))

(declare-fun e!2183664 () Bool)

(assert (=> b!3527595 (= e!2183664 (and tp!1087950 tp!1087946))))

(declare-fun b!3527596 () Bool)

(declare-fun res!1423155 () Bool)

(declare-fun e!2183657 () Bool)

(assert (=> b!3527596 (=> (not res!1423155) (not e!2183657))))

(declare-fun separatorToken!241 () Token!10338)

(assert (=> b!3527596 (= res!1423155 (rulesProduceIndividualToken!2567 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3527597 () Bool)

(declare-fun e!2183650 () Bool)

(declare-fun e!2183654 () Bool)

(declare-fun tp!1087947 () Bool)

(declare-fun inv!50630 (Token!10338) Bool)

(assert (=> b!3527597 (= e!2183654 (and (inv!50630 (h!42811 tokens!494)) e!2183650 tp!1087947))))

(declare-fun b!3527598 () Bool)

(declare-fun e!2183682 () Bool)

(declare-fun e!2183679 () Bool)

(assert (=> b!3527598 (= e!2183682 e!2183679)))

(declare-fun res!1423158 () Bool)

(assert (=> b!3527598 (=> res!1423158 e!2183679)))

(declare-fun lt!1205697 () List!37513)

(declare-fun printWithSeparatorTokenList!362 (LexerInterface!5075 List!37515 Token!10338) List!37513)

(assert (=> b!3527598 (= res!1423158 (not (= lt!1205698 (++!9273 (++!9273 lt!1205697 lt!1205673) (printWithSeparatorTokenList!362 thiss!18206 (t!282656 (t!282656 tokens!494)) separatorToken!241)))))))

(declare-fun list!13685 (BalanceConc!22308) List!37513)

(declare-fun charsOf!3500 (Token!10338) BalanceConc!22308)

(assert (=> b!3527598 (= lt!1205697 (list!13685 (charsOf!3500 (h!42811 (t!282656 tokens!494)))))))

(assert (=> b!3527598 (= lt!1205706 (++!9273 lt!1205673 lt!1205698))))

(assert (=> b!3527598 (= lt!1205673 (list!13685 (charsOf!3500 separatorToken!241)))))

(assert (=> b!3527598 (= lt!1205698 (printWithSeparatorTokenList!362 thiss!18206 (t!282656 tokens!494) separatorToken!241))))

(assert (=> b!3527598 (= lt!1205674 (printWithSeparatorTokenList!362 thiss!18206 tokens!494 separatorToken!241))))

(declare-fun b!3527599 () Bool)

(declare-fun e!2183651 () Bool)

(assert (=> b!3527599 (= e!2183651 e!2183662)))

(declare-fun res!1423148 () Bool)

(assert (=> b!3527599 (=> res!1423148 e!2183662)))

(declare-fun lt!1205687 () List!37513)

(declare-fun lt!1205668 () List!37513)

(assert (=> b!3527599 (= res!1423148 (or (not (= lt!1205687 lt!1205700)) (not (= lt!1205668 lt!1205700))))))

(assert (=> b!3527599 (= lt!1205700 (list!13685 (charsOf!3500 (h!42811 tokens!494))))))

(declare-fun e!2183655 () Bool)

(assert (=> b!3527600 (= e!2183655 (and tp!1087951 tp!1087949))))

(declare-fun b!3527601 () Bool)

(declare-fun e!2183653 () Unit!53082)

(declare-fun Unit!53084 () Unit!53082)

(assert (=> b!3527601 (= e!2183653 Unit!53084)))

(declare-fun b!3527602 () Bool)

(declare-fun e!2183648 () Bool)

(declare-fun e!2183665 () Bool)

(assert (=> b!3527602 (= e!2183648 e!2183665)))

(declare-fun res!1423157 () Bool)

(assert (=> b!3527602 (=> (not res!1423157) (not e!2183665))))

(declare-fun lt!1205677 () Rule!10772)

(declare-fun matchR!4829 (Regex!10245 List!37513) Bool)

(assert (=> b!3527602 (= res!1423157 (matchR!4829 (regex!5486 lt!1205677) lt!1205697))))

(declare-datatypes ((Option!7635 0))(
  ( (None!7634) (Some!7634 (v!37148 Rule!10772)) )
))
(declare-fun lt!1205686 () Option!7635)

(declare-fun get!12010 (Option!7635) Rule!10772)

(assert (=> b!3527602 (= lt!1205677 (get!12010 lt!1205686))))

(declare-fun b!3527603 () Bool)

(declare-fun res!1423156 () Bool)

(declare-fun e!2183666 () Bool)

(assert (=> b!3527603 (=> res!1423156 e!2183666)))

(declare-fun contains!7029 (List!37514 Rule!10772) Bool)

(assert (=> b!3527603 (= res!1423156 (not (contains!7029 rules!2135 (rule!8146 (h!42811 (t!282656 tokens!494))))))))

(declare-fun b!3527604 () Bool)

(declare-fun e!2183671 () Bool)

(assert (=> b!3527604 (= e!2183662 e!2183671)))

(declare-fun res!1423162 () Bool)

(assert (=> b!3527604 (=> res!1423162 e!2183671)))

(declare-fun lt!1205705 () BalanceConc!22308)

(declare-datatypes ((IArray!22701 0))(
  ( (IArray!22702 (innerList!11408 List!37515)) )
))
(declare-datatypes ((Conc!11348 0))(
  ( (Node!11348 (left!29213 Conc!11348) (right!29543 Conc!11348) (csize!22926 Int) (cheight!11559 Int)) (Leaf!17702 (xs!14538 IArray!22701) (csize!22927 Int)) (Empty!11348) )
))
(declare-datatypes ((BalanceConc!22310 0))(
  ( (BalanceConc!22311 (c!608122 Conc!11348)) )
))
(declare-fun isEmpty!21871 (BalanceConc!22310) Bool)

(declare-datatypes ((tuple2!37244 0))(
  ( (tuple2!37245 (_1!21756 BalanceConc!22310) (_2!21756 BalanceConc!22308)) )
))
(declare-fun lex!2401 (LexerInterface!5075 List!37514 BalanceConc!22308) tuple2!37244)

(assert (=> b!3527604 (= res!1423162 (isEmpty!21871 (_1!21756 (lex!2401 thiss!18206 rules!2135 lt!1205705))))))

(declare-fun seqFromList!4025 (List!37513) BalanceConc!22308)

(assert (=> b!3527604 (= lt!1205705 (seqFromList!4025 lt!1205700))))

(declare-fun b!3527605 () Bool)

(declare-fun res!1423159 () Bool)

(assert (=> b!3527605 (=> (not res!1423159) (not e!2183657))))

(declare-fun rulesInvariant!4472 (LexerInterface!5075 List!37514) Bool)

(assert (=> b!3527605 (= res!1423159 (rulesInvariant!4472 thiss!18206 rules!2135))))

(declare-fun e!2183652 () Bool)

(declare-fun tp!1087952 () Bool)

(declare-fun e!2183683 () Bool)

(declare-fun b!3527606 () Bool)

(declare-fun inv!50627 (String!41913) Bool)

(declare-fun inv!50631 (TokenValueInjection!10860) Bool)

(assert (=> b!3527606 (= e!2183652 (and tp!1087952 (inv!50627 (tag!6130 (rule!8146 separatorToken!241))) (inv!50631 (transformation!5486 (rule!8146 separatorToken!241))) e!2183683))))

(declare-fun b!3527607 () Bool)

(assert (=> b!3527607 (= e!2183665 (= (rule!8146 (h!42811 (t!282656 tokens!494))) lt!1205677))))

(declare-fun e!2183667 () Bool)

(declare-fun b!3527608 () Bool)

(declare-fun tp!1087956 () Bool)

(declare-fun inv!21 (TokenValue!5716) Bool)

(assert (=> b!3527608 (= e!2183650 (and (inv!21 (value!176811 (h!42811 tokens!494))) e!2183667 tp!1087956))))

(declare-fun b!3527609 () Bool)

(declare-fun e!2183670 () Bool)

(assert (=> b!3527609 (= e!2183670 false)))

(declare-fun b!3527610 () Bool)

(declare-fun e!2183676 () Bool)

(assert (=> b!3527610 (= e!2183676 false)))

(declare-fun b!3527611 () Bool)

(declare-fun res!1423168 () Bool)

(assert (=> b!3527611 (=> (not res!1423168) (not e!2183657))))

(assert (=> b!3527611 (= res!1423168 (isSeparator!5486 (rule!8146 separatorToken!241)))))

(declare-fun b!3527612 () Bool)

(declare-fun e!2183660 () Bool)

(declare-fun e!2183668 () Bool)

(assert (=> b!3527612 (= e!2183660 e!2183668)))

(declare-fun res!1423171 () Bool)

(assert (=> b!3527612 (=> (not res!1423171) (not e!2183668))))

(declare-fun lt!1205704 () Rule!10772)

(assert (=> b!3527612 (= res!1423171 (matchR!4829 (regex!5486 lt!1205704) lt!1205700))))

(declare-fun lt!1205675 () Option!7635)

(assert (=> b!3527612 (= lt!1205704 (get!12010 lt!1205675))))

(declare-fun res!1423163 () Bool)

(assert (=> b!3527613 (=> (not res!1423163) (not e!2183657))))

(declare-fun forall!8049 (List!37515 Int) Bool)

(assert (=> b!3527613 (= res!1423163 (forall!8049 tokens!494 lambda!122918))))

(declare-fun b!3527614 () Bool)

(assert (=> b!3527614 (= e!2183671 e!2183682)))

(declare-fun res!1423152 () Bool)

(assert (=> b!3527614 (=> res!1423152 e!2183682)))

(assert (=> b!3527614 (= res!1423152 (or (isSeparator!5486 (rule!8146 (h!42811 tokens!494))) (isSeparator!5486 (rule!8146 (h!42811 (t!282656 tokens!494))))))))

(declare-fun lt!1205688 () Unit!53082)

(declare-fun forallContained!1433 (List!37515 Int Token!10338) Unit!53082)

(assert (=> b!3527614 (= lt!1205688 (forallContained!1433 tokens!494 lambda!122918 (h!42811 (t!282656 tokens!494))))))

(declare-fun lt!1205676 () Unit!53082)

(assert (=> b!3527614 (= lt!1205676 (forallContained!1433 tokens!494 lambda!122918 (h!42811 tokens!494)))))

(declare-fun b!3527615 () Bool)

(declare-fun e!2183674 () Unit!53082)

(declare-fun Unit!53085 () Unit!53082)

(assert (=> b!3527615 (= e!2183674 Unit!53085)))

(declare-fun lt!1205671 () C!20676)

(declare-fun lt!1205690 () Unit!53082)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!544 (Regex!10245 List!37513 C!20676) Unit!53082)

(assert (=> b!3527615 (= lt!1205690 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!544 (regex!5486 (rule!8146 (h!42811 (t!282656 tokens!494)))) lt!1205697 lt!1205671))))

(declare-fun res!1423153 () Bool)

(assert (=> b!3527615 (= res!1423153 (not (matchR!4829 (regex!5486 (rule!8146 (h!42811 (t!282656 tokens!494)))) lt!1205697)))))

(assert (=> b!3527615 (=> (not res!1423153) (not e!2183676))))

(assert (=> b!3527615 e!2183676))

(declare-fun b!3527616 () Bool)

(declare-fun res!1423174 () Bool)

(assert (=> b!3527616 (=> (not res!1423174) (not e!2183657))))

(assert (=> b!3527616 (= res!1423174 (and (not ((_ is Nil!37391) tokens!494)) (not ((_ is Nil!37391) (t!282656 tokens!494)))))))

(declare-fun b!3527617 () Bool)

(declare-fun e!2183677 () Bool)

(declare-fun lt!1205703 () tuple2!37244)

(declare-fun isEmpty!21872 (BalanceConc!22308) Bool)

(assert (=> b!3527617 (= e!2183677 (not (isEmpty!21872 (_2!21756 lt!1205703))))))

(declare-fun res!1423154 () Bool)

(assert (=> start!327898 (=> (not res!1423154) (not e!2183657))))

(assert (=> start!327898 (= res!1423154 ((_ is Lexer!5073) thiss!18206))))

(assert (=> start!327898 e!2183657))

(assert (=> start!327898 true))

(declare-fun e!2183681 () Bool)

(assert (=> start!327898 e!2183681))

(assert (=> start!327898 e!2183654))

(declare-fun e!2183680 () Bool)

(assert (=> start!327898 (and (inv!50630 separatorToken!241) e!2183680)))

(declare-fun b!3527618 () Bool)

(declare-fun lt!1205665 () Bool)

(assert (=> b!3527618 (= e!2183666 lt!1205665)))

(assert (=> b!3527619 (= e!2183683 (and tp!1087958 tp!1087955))))

(declare-fun tp!1087957 () Bool)

(declare-fun b!3527620 () Bool)

(declare-fun e!2183678 () Bool)

(assert (=> b!3527620 (= e!2183678 (and tp!1087957 (inv!50627 (tag!6130 (h!42810 rules!2135))) (inv!50631 (transformation!5486 (h!42810 rules!2135))) e!2183655))))

(assert (=> b!3527621 (= e!2183649 e!2183666)))

(declare-fun res!1423164 () Bool)

(assert (=> b!3527621 (=> res!1423164 e!2183666)))

(assert (=> b!3527621 (= res!1423164 (not (contains!7029 rules!2135 (rule!8146 separatorToken!241))))))

(declare-fun lt!1205696 () Unit!53082)

(assert (=> b!3527621 (= lt!1205696 e!2183674)))

(declare-fun c!608118 () Bool)

(assert (=> b!3527621 (= c!608118 (not lt!1205665))))

(declare-fun contains!7030 (List!37513 C!20676) Bool)

(declare-fun usedCharacters!720 (Regex!10245) List!37513)

(assert (=> b!3527621 (= lt!1205665 (contains!7030 (usedCharacters!720 (regex!5486 (rule!8146 (h!42811 (t!282656 tokens!494))))) lt!1205671))))

(declare-fun head!7401 (List!37513) C!20676)

(assert (=> b!3527621 (= lt!1205671 (head!7401 lt!1205697))))

(declare-datatypes ((tuple2!37246 0))(
  ( (tuple2!37247 (_1!21757 Token!10338) (_2!21757 List!37513)) )
))
(declare-datatypes ((Option!7636 0))(
  ( (None!7635) (Some!7635 (v!37149 tuple2!37246)) )
))
(declare-fun maxPrefixOneRule!1782 (LexerInterface!5075 Rule!10772 List!37513) Option!7636)

(declare-fun apply!8930 (TokenValueInjection!10860 BalanceConc!22308) TokenValue!5716)

(declare-fun size!28462 (List!37513) Int)

(assert (=> b!3527621 (= (maxPrefixOneRule!1782 thiss!18206 (rule!8146 (h!42811 (t!282656 tokens!494))) lt!1205697) (Some!7635 (tuple2!37247 (Token!10339 (apply!8930 (transformation!5486 (rule!8146 (h!42811 (t!282656 tokens!494)))) (seqFromList!4025 lt!1205697)) (rule!8146 (h!42811 (t!282656 tokens!494))) (size!28462 lt!1205697) lt!1205697) Nil!37389)))))

(declare-fun lt!1205666 () Unit!53082)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!875 (LexerInterface!5075 List!37514 List!37513 List!37513 List!37513 Rule!10772) Unit!53082)

(assert (=> b!3527621 (= lt!1205666 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!875 thiss!18206 rules!2135 lt!1205697 lt!1205697 Nil!37389 (rule!8146 (h!42811 (t!282656 tokens!494)))))))

(assert (=> b!3527621 e!2183648))

(declare-fun res!1423147 () Bool)

(assert (=> b!3527621 (=> (not res!1423147) (not e!2183648))))

(declare-fun isDefined!5886 (Option!7635) Bool)

(assert (=> b!3527621 (= res!1423147 (isDefined!5886 lt!1205686))))

(declare-fun getRuleFromTag!1129 (LexerInterface!5075 List!37514 String!41913) Option!7635)

(assert (=> b!3527621 (= lt!1205686 (getRuleFromTag!1129 thiss!18206 rules!2135 (tag!6130 (rule!8146 (h!42811 (t!282656 tokens!494))))))))

(declare-fun lt!1205669 () Unit!53082)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1129 (LexerInterface!5075 List!37514 List!37513 Token!10338) Unit!53082)

(assert (=> b!3527621 (= lt!1205669 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1129 thiss!18206 rules!2135 lt!1205697 (h!42811 (t!282656 tokens!494))))))

(declare-fun lt!1205663 () Bool)

(assert (=> b!3527621 lt!1205663))

(declare-fun lt!1205695 () Unit!53082)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1064 (LexerInterface!5075 List!37514 List!37515 Token!10338) Unit!53082)

(assert (=> b!3527621 (= lt!1205695 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1064 thiss!18206 rules!2135 tokens!494 (h!42811 (t!282656 tokens!494))))))

(declare-fun maxPrefix!2615 (LexerInterface!5075 List!37514 List!37513) Option!7636)

(assert (=> b!3527621 (= (maxPrefix!2615 thiss!18206 rules!2135 lt!1205680) (Some!7635 (tuple2!37247 (h!42811 tokens!494) lt!1205706)))))

(declare-fun lt!1205670 () Unit!53082)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!242 (LexerInterface!5075 List!37514 Token!10338 Rule!10772 List!37513 Rule!10772) Unit!53082)

(assert (=> b!3527621 (= lt!1205670 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!242 thiss!18206 rules!2135 (h!42811 tokens!494) (rule!8146 (h!42811 tokens!494)) lt!1205706 (rule!8146 separatorToken!241)))))

(declare-fun lt!1205683 () C!20676)

(assert (=> b!3527621 (not (contains!7030 (usedCharacters!720 (regex!5486 (rule!8146 (h!42811 tokens!494)))) lt!1205683))))

(declare-fun lt!1205678 () Unit!53082)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!286 (LexerInterface!5075 List!37514 List!37514 Rule!10772 Rule!10772 C!20676) Unit!53082)

(assert (=> b!3527621 (= lt!1205678 (lemmaNonSepRuleNotContainsCharContainedInASepRule!286 thiss!18206 rules!2135 rules!2135 (rule!8146 (h!42811 tokens!494)) (rule!8146 separatorToken!241) lt!1205683))))

(declare-fun lt!1205699 () Unit!53082)

(assert (=> b!3527621 (= lt!1205699 (forallContained!1433 tokens!494 lambda!122919 (h!42811 (t!282656 tokens!494))))))

(declare-fun lt!1205692 () Bool)

(assert (=> b!3527621 (= lt!1205663 (not lt!1205692))))

(assert (=> b!3527621 (= lt!1205663 (rulesProduceIndividualToken!2567 thiss!18206 rules!2135 (h!42811 (t!282656 tokens!494))))))

(assert (=> b!3527621 (= lt!1205692 e!2183677)))

(declare-fun res!1423145 () Bool)

(assert (=> b!3527621 (=> res!1423145 e!2183677)))

(declare-fun size!28463 (BalanceConc!22310) Int)

(assert (=> b!3527621 (= res!1423145 (not (= (size!28463 (_1!21756 lt!1205703)) 1)))))

(declare-fun lt!1205667 () BalanceConc!22308)

(assert (=> b!3527621 (= lt!1205703 (lex!2401 thiss!18206 rules!2135 lt!1205667))))

(declare-fun lt!1205662 () BalanceConc!22310)

(declare-fun printTailRec!1570 (LexerInterface!5075 BalanceConc!22310 Int BalanceConc!22308) BalanceConc!22308)

(assert (=> b!3527621 (= lt!1205667 (printTailRec!1570 thiss!18206 lt!1205662 0 (BalanceConc!22309 Empty!11347)))))

(declare-fun print!2140 (LexerInterface!5075 BalanceConc!22310) BalanceConc!22308)

(assert (=> b!3527621 (= lt!1205667 (print!2140 thiss!18206 lt!1205662))))

(declare-fun singletonSeq!2582 (Token!10338) BalanceConc!22310)

(assert (=> b!3527621 (= lt!1205662 (singletonSeq!2582 (h!42811 (t!282656 tokens!494))))))

(declare-fun e!2183659 () Bool)

(assert (=> b!3527621 e!2183659))

(declare-fun res!1423151 () Bool)

(assert (=> b!3527621 (=> (not res!1423151) (not e!2183659))))

(declare-fun lt!1205693 () tuple2!37244)

(assert (=> b!3527621 (= res!1423151 (= (size!28463 (_1!21756 lt!1205693)) 1))))

(declare-fun lt!1205681 () BalanceConc!22308)

(assert (=> b!3527621 (= lt!1205693 (lex!2401 thiss!18206 rules!2135 lt!1205681))))

(declare-fun lt!1205684 () BalanceConc!22310)

(assert (=> b!3527621 (= lt!1205681 (printTailRec!1570 thiss!18206 lt!1205684 0 (BalanceConc!22309 Empty!11347)))))

(assert (=> b!3527621 (= lt!1205681 (print!2140 thiss!18206 lt!1205684))))

(assert (=> b!3527621 (= lt!1205684 (singletonSeq!2582 separatorToken!241))))

(declare-fun lt!1205679 () Unit!53082)

(assert (=> b!3527621 (= lt!1205679 e!2183653)))

(declare-fun c!608119 () Bool)

(assert (=> b!3527621 (= c!608119 (not (contains!7030 (usedCharacters!720 (regex!5486 (rule!8146 separatorToken!241))) lt!1205683)))))

(assert (=> b!3527621 (= lt!1205683 (head!7401 lt!1205673))))

(declare-fun e!2183656 () Bool)

(assert (=> b!3527621 e!2183656))

(declare-fun res!1423149 () Bool)

(assert (=> b!3527621 (=> (not res!1423149) (not e!2183656))))

(declare-fun lt!1205694 () Option!7635)

(assert (=> b!3527621 (= res!1423149 (isDefined!5886 lt!1205694))))

(assert (=> b!3527621 (= lt!1205694 (getRuleFromTag!1129 thiss!18206 rules!2135 (tag!6130 (rule!8146 separatorToken!241))))))

(declare-fun lt!1205707 () Unit!53082)

(assert (=> b!3527621 (= lt!1205707 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1129 thiss!18206 rules!2135 lt!1205673 separatorToken!241))))

(assert (=> b!3527621 (= (maxPrefixOneRule!1782 thiss!18206 (rule!8146 (h!42811 tokens!494)) lt!1205700) (Some!7635 (tuple2!37247 (Token!10339 (apply!8930 (transformation!5486 (rule!8146 (h!42811 tokens!494))) lt!1205705) (rule!8146 (h!42811 tokens!494)) (size!28462 lt!1205700) lt!1205700) Nil!37389)))))

(declare-fun lt!1205689 () Unit!53082)

(assert (=> b!3527621 (= lt!1205689 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!875 thiss!18206 rules!2135 lt!1205700 lt!1205700 Nil!37389 (rule!8146 (h!42811 tokens!494))))))

(assert (=> b!3527621 e!2183660))

(declare-fun res!1423170 () Bool)

(assert (=> b!3527621 (=> (not res!1423170) (not e!2183660))))

(assert (=> b!3527621 (= res!1423170 (isDefined!5886 lt!1205675))))

(assert (=> b!3527621 (= lt!1205675 (getRuleFromTag!1129 thiss!18206 rules!2135 (tag!6130 (rule!8146 (h!42811 tokens!494)))))))

(declare-fun lt!1205691 () Unit!53082)

(assert (=> b!3527621 (= lt!1205691 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1129 thiss!18206 rules!2135 lt!1205700 (h!42811 tokens!494)))))

(declare-fun lt!1205708 () Unit!53082)

(assert (=> b!3527621 (= lt!1205708 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!1064 thiss!18206 rules!2135 tokens!494 (h!42811 tokens!494)))))

(declare-fun b!3527622 () Bool)

(declare-fun Unit!53086 () Unit!53082)

(assert (=> b!3527622 (= e!2183674 Unit!53086)))

(declare-fun b!3527623 () Bool)

(declare-fun res!1423169 () Bool)

(assert (=> b!3527623 (=> res!1423169 e!2183677)))

(declare-fun apply!8931 (BalanceConc!22310 Int) Token!10338)

(assert (=> b!3527623 (= res!1423169 (not (= (apply!8931 (_1!21756 lt!1205703) 0) (h!42811 (t!282656 tokens!494)))))))

(declare-fun b!3527624 () Bool)

(assert (=> b!3527624 (= e!2183659 (isEmpty!21872 (_2!21756 lt!1205693)))))

(declare-fun b!3527625 () Bool)

(declare-fun Unit!53087 () Unit!53082)

(assert (=> b!3527625 (= e!2183653 Unit!53087)))

(declare-fun lt!1205672 () Unit!53082)

(assert (=> b!3527625 (= lt!1205672 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!544 (regex!5486 (rule!8146 separatorToken!241)) lt!1205673 lt!1205683))))

(declare-fun res!1423161 () Bool)

(assert (=> b!3527625 (= res!1423161 (not (matchR!4829 (regex!5486 (rule!8146 separatorToken!241)) lt!1205673)))))

(assert (=> b!3527625 (=> (not res!1423161) (not e!2183670))))

(assert (=> b!3527625 e!2183670))

(declare-fun b!3527626 () Bool)

(assert (=> b!3527626 (= e!2183657 (not e!2183651))))

(declare-fun res!1423160 () Bool)

(assert (=> b!3527626 (=> res!1423160 e!2183651)))

(assert (=> b!3527626 (= res!1423160 (not (= lt!1205668 lt!1205687)))))

(declare-fun printList!1623 (LexerInterface!5075 List!37515) List!37513)

(assert (=> b!3527626 (= lt!1205687 (printList!1623 thiss!18206 (Cons!37391 (h!42811 tokens!494) Nil!37391)))))

(declare-fun lt!1205701 () BalanceConc!22308)

(assert (=> b!3527626 (= lt!1205668 (list!13685 lt!1205701))))

(declare-fun lt!1205664 () BalanceConc!22310)

(assert (=> b!3527626 (= lt!1205701 (printTailRec!1570 thiss!18206 lt!1205664 0 (BalanceConc!22309 Empty!11347)))))

(assert (=> b!3527626 (= lt!1205701 (print!2140 thiss!18206 lt!1205664))))

(assert (=> b!3527626 (= lt!1205664 (singletonSeq!2582 (h!42811 tokens!494)))))

(declare-fun b!3527627 () Bool)

(declare-fun res!1423146 () Bool)

(assert (=> b!3527627 (=> (not res!1423146) (not e!2183657))))

(declare-fun isEmpty!21873 (List!37514) Bool)

(assert (=> b!3527627 (= res!1423146 (not (isEmpty!21873 rules!2135)))))

(declare-fun b!3527628 () Bool)

(declare-fun tp!1087948 () Bool)

(assert (=> b!3527628 (= e!2183681 (and e!2183678 tp!1087948))))

(declare-fun b!3527629 () Bool)

(declare-fun e!2183669 () Bool)

(assert (=> b!3527629 (= e!2183656 e!2183669)))

(declare-fun res!1423150 () Bool)

(assert (=> b!3527629 (=> (not res!1423150) (not e!2183669))))

(declare-fun lt!1205682 () Rule!10772)

(assert (=> b!3527629 (= res!1423150 (matchR!4829 (regex!5486 lt!1205682) lt!1205673))))

(assert (=> b!3527629 (= lt!1205682 (get!12010 lt!1205694))))

(declare-fun b!3527630 () Bool)

(declare-fun res!1423165 () Bool)

(assert (=> b!3527630 (=> (not res!1423165) (not e!2183659))))

(assert (=> b!3527630 (= res!1423165 (= (apply!8931 (_1!21756 lt!1205693) 0) separatorToken!241))))

(declare-fun b!3527631 () Bool)

(declare-fun res!1423175 () Bool)

(assert (=> b!3527631 (=> (not res!1423175) (not e!2183657))))

(declare-fun rulesProduceEachTokenIndividually!1526 (LexerInterface!5075 List!37514 BalanceConc!22310) Bool)

(declare-fun seqFromList!4026 (List!37515) BalanceConc!22310)

(assert (=> b!3527631 (= res!1423175 (rulesProduceEachTokenIndividually!1526 thiss!18206 rules!2135 (seqFromList!4026 tokens!494)))))

(declare-fun b!3527632 () Bool)

(declare-fun res!1423173 () Bool)

(assert (=> b!3527632 (=> (not res!1423173) (not e!2183657))))

(declare-fun sepAndNonSepRulesDisjointChars!1680 (List!37514 List!37514) Bool)

(assert (=> b!3527632 (= res!1423173 (sepAndNonSepRulesDisjointChars!1680 rules!2135 rules!2135))))

(declare-fun b!3527633 () Bool)

(declare-fun tp!1087953 () Bool)

(assert (=> b!3527633 (= e!2183680 (and (inv!21 (value!176811 separatorToken!241)) e!2183652 tp!1087953))))

(declare-fun b!3527634 () Bool)

(assert (=> b!3527634 (= e!2183669 (= (rule!8146 separatorToken!241) lt!1205682))))

(declare-fun b!3527635 () Bool)

(assert (=> b!3527635 (= e!2183679 e!2183675)))

(declare-fun res!1423172 () Bool)

(assert (=> b!3527635 (=> res!1423172 e!2183675)))

(assert (=> b!3527635 (= res!1423172 (not (= lt!1205674 lt!1205702)))))

(assert (=> b!3527635 (= lt!1205702 (++!9273 (++!9273 lt!1205700 lt!1205673) lt!1205698))))

(declare-fun tp!1087954 () Bool)

(declare-fun b!3527636 () Bool)

(assert (=> b!3527636 (= e!2183667 (and tp!1087954 (inv!50627 (tag!6130 (rule!8146 (h!42811 tokens!494)))) (inv!50631 (transformation!5486 (rule!8146 (h!42811 tokens!494)))) e!2183664))))

(declare-fun b!3527637 () Bool)

(assert (=> b!3527637 (= e!2183668 (= (rule!8146 (h!42811 tokens!494)) lt!1205704))))

(assert (= (and start!327898 res!1423154) b!3527627))

(assert (= (and b!3527627 res!1423146) b!3527605))

(assert (= (and b!3527605 res!1423159) b!3527631))

(assert (= (and b!3527631 res!1423175) b!3527596))

(assert (= (and b!3527596 res!1423155) b!3527611))

(assert (= (and b!3527611 res!1423168) b!3527613))

(assert (= (and b!3527613 res!1423163) b!3527632))

(assert (= (and b!3527632 res!1423173) b!3527616))

(assert (= (and b!3527616 res!1423174) b!3527626))

(assert (= (and b!3527626 (not res!1423160)) b!3527599))

(assert (= (and b!3527599 (not res!1423148)) b!3527594))

(assert (= (and b!3527594 (not res!1423167)) b!3527604))

(assert (= (and b!3527604 (not res!1423162)) b!3527614))

(assert (= (and b!3527614 (not res!1423152)) b!3527598))

(assert (= (and b!3527598 (not res!1423158)) b!3527635))

(assert (= (and b!3527635 (not res!1423172)) b!3527593))

(assert (= (and b!3527593 (not res!1423166)) b!3527621))

(assert (= (and b!3527621 res!1423170) b!3527612))

(assert (= (and b!3527612 res!1423171) b!3527637))

(assert (= (and b!3527621 res!1423149) b!3527629))

(assert (= (and b!3527629 res!1423150) b!3527634))

(assert (= (and b!3527621 c!608119) b!3527625))

(assert (= (and b!3527621 (not c!608119)) b!3527601))

(assert (= (and b!3527625 res!1423161) b!3527609))

(assert (= (and b!3527621 res!1423151) b!3527630))

(assert (= (and b!3527630 res!1423165) b!3527624))

(assert (= (and b!3527621 (not res!1423145)) b!3527623))

(assert (= (and b!3527623 (not res!1423169)) b!3527617))

(assert (= (and b!3527621 res!1423147) b!3527602))

(assert (= (and b!3527602 res!1423157) b!3527607))

(assert (= (and b!3527621 c!608118) b!3527615))

(assert (= (and b!3527621 (not c!608118)) b!3527622))

(assert (= (and b!3527615 res!1423153) b!3527610))

(assert (= (and b!3527621 (not res!1423164)) b!3527603))

(assert (= (and b!3527603 (not res!1423156)) b!3527618))

(assert (= b!3527620 b!3527600))

(assert (= b!3527628 b!3527620))

(assert (= (and start!327898 ((_ is Cons!37390) rules!2135)) b!3527628))

(assert (= b!3527636 b!3527595))

(assert (= b!3527608 b!3527636))

(assert (= b!3527597 b!3527608))

(assert (= (and start!327898 ((_ is Cons!37391) tokens!494)) b!3527597))

(assert (= b!3527606 b!3527619))

(assert (= b!3527633 b!3527606))

(assert (= start!327898 b!3527633))

(declare-fun m!3982071 () Bool)

(assert (=> b!3527632 m!3982071))

(declare-fun m!3982073 () Bool)

(assert (=> b!3527604 m!3982073))

(declare-fun m!3982075 () Bool)

(assert (=> b!3527604 m!3982075))

(declare-fun m!3982077 () Bool)

(assert (=> b!3527604 m!3982077))

(declare-fun m!3982079 () Bool)

(assert (=> b!3527603 m!3982079))

(declare-fun m!3982081 () Bool)

(assert (=> b!3527624 m!3982081))

(declare-fun m!3982083 () Bool)

(assert (=> b!3527627 m!3982083))

(declare-fun m!3982085 () Bool)

(assert (=> b!3527631 m!3982085))

(assert (=> b!3527631 m!3982085))

(declare-fun m!3982087 () Bool)

(assert (=> b!3527631 m!3982087))

(declare-fun m!3982089 () Bool)

(assert (=> b!3527606 m!3982089))

(declare-fun m!3982091 () Bool)

(assert (=> b!3527606 m!3982091))

(declare-fun m!3982093 () Bool)

(assert (=> b!3527596 m!3982093))

(declare-fun m!3982095 () Bool)

(assert (=> b!3527599 m!3982095))

(assert (=> b!3527599 m!3982095))

(declare-fun m!3982097 () Bool)

(assert (=> b!3527599 m!3982097))

(declare-fun m!3982099 () Bool)

(assert (=> b!3527594 m!3982099))

(declare-fun m!3982101 () Bool)

(assert (=> b!3527612 m!3982101))

(declare-fun m!3982103 () Bool)

(assert (=> b!3527612 m!3982103))

(declare-fun m!3982105 () Bool)

(assert (=> b!3527615 m!3982105))

(declare-fun m!3982107 () Bool)

(assert (=> b!3527615 m!3982107))

(declare-fun m!3982109 () Bool)

(assert (=> b!3527630 m!3982109))

(declare-fun m!3982111 () Bool)

(assert (=> b!3527629 m!3982111))

(declare-fun m!3982113 () Bool)

(assert (=> b!3527629 m!3982113))

(declare-fun m!3982115 () Bool)

(assert (=> b!3527598 m!3982115))

(declare-fun m!3982117 () Bool)

(assert (=> b!3527598 m!3982117))

(declare-fun m!3982119 () Bool)

(assert (=> b!3527598 m!3982119))

(declare-fun m!3982121 () Bool)

(assert (=> b!3527598 m!3982121))

(declare-fun m!3982123 () Bool)

(assert (=> b!3527598 m!3982123))

(declare-fun m!3982125 () Bool)

(assert (=> b!3527598 m!3982125))

(assert (=> b!3527598 m!3982117))

(declare-fun m!3982127 () Bool)

(assert (=> b!3527598 m!3982127))

(declare-fun m!3982129 () Bool)

(assert (=> b!3527598 m!3982129))

(assert (=> b!3527598 m!3982115))

(declare-fun m!3982131 () Bool)

(assert (=> b!3527598 m!3982131))

(assert (=> b!3527598 m!3982129))

(assert (=> b!3527598 m!3982123))

(declare-fun m!3982133 () Bool)

(assert (=> b!3527598 m!3982133))

(declare-fun m!3982135 () Bool)

(assert (=> b!3527593 m!3982135))

(declare-fun m!3982137 () Bool)

(assert (=> b!3527593 m!3982137))

(declare-fun m!3982139 () Bool)

(assert (=> b!3527626 m!3982139))

(declare-fun m!3982141 () Bool)

(assert (=> b!3527626 m!3982141))

(declare-fun m!3982143 () Bool)

(assert (=> b!3527626 m!3982143))

(declare-fun m!3982145 () Bool)

(assert (=> b!3527626 m!3982145))

(declare-fun m!3982147 () Bool)

(assert (=> b!3527626 m!3982147))

(declare-fun m!3982149 () Bool)

(assert (=> b!3527635 m!3982149))

(assert (=> b!3527635 m!3982149))

(declare-fun m!3982151 () Bool)

(assert (=> b!3527635 m!3982151))

(declare-fun m!3982153 () Bool)

(assert (=> b!3527602 m!3982153))

(declare-fun m!3982155 () Bool)

(assert (=> b!3527602 m!3982155))

(declare-fun m!3982157 () Bool)

(assert (=> b!3527621 m!3982157))

(declare-fun m!3982159 () Bool)

(assert (=> b!3527621 m!3982159))

(declare-fun m!3982161 () Bool)

(assert (=> b!3527621 m!3982161))

(declare-fun m!3982163 () Bool)

(assert (=> b!3527621 m!3982163))

(declare-fun m!3982165 () Bool)

(assert (=> b!3527621 m!3982165))

(declare-fun m!3982167 () Bool)

(assert (=> b!3527621 m!3982167))

(declare-fun m!3982169 () Bool)

(assert (=> b!3527621 m!3982169))

(declare-fun m!3982171 () Bool)

(assert (=> b!3527621 m!3982171))

(declare-fun m!3982173 () Bool)

(assert (=> b!3527621 m!3982173))

(declare-fun m!3982175 () Bool)

(assert (=> b!3527621 m!3982175))

(declare-fun m!3982177 () Bool)

(assert (=> b!3527621 m!3982177))

(declare-fun m!3982179 () Bool)

(assert (=> b!3527621 m!3982179))

(assert (=> b!3527621 m!3982159))

(declare-fun m!3982181 () Bool)

(assert (=> b!3527621 m!3982181))

(declare-fun m!3982183 () Bool)

(assert (=> b!3527621 m!3982183))

(declare-fun m!3982185 () Bool)

(assert (=> b!3527621 m!3982185))

(declare-fun m!3982187 () Bool)

(assert (=> b!3527621 m!3982187))

(declare-fun m!3982189 () Bool)

(assert (=> b!3527621 m!3982189))

(declare-fun m!3982191 () Bool)

(assert (=> b!3527621 m!3982191))

(declare-fun m!3982193 () Bool)

(assert (=> b!3527621 m!3982193))

(declare-fun m!3982195 () Bool)

(assert (=> b!3527621 m!3982195))

(declare-fun m!3982197 () Bool)

(assert (=> b!3527621 m!3982197))

(assert (=> b!3527621 m!3982187))

(declare-fun m!3982199 () Bool)

(assert (=> b!3527621 m!3982199))

(declare-fun m!3982201 () Bool)

(assert (=> b!3527621 m!3982201))

(declare-fun m!3982203 () Bool)

(assert (=> b!3527621 m!3982203))

(declare-fun m!3982205 () Bool)

(assert (=> b!3527621 m!3982205))

(declare-fun m!3982207 () Bool)

(assert (=> b!3527621 m!3982207))

(declare-fun m!3982209 () Bool)

(assert (=> b!3527621 m!3982209))

(declare-fun m!3982211 () Bool)

(assert (=> b!3527621 m!3982211))

(declare-fun m!3982213 () Bool)

(assert (=> b!3527621 m!3982213))

(declare-fun m!3982215 () Bool)

(assert (=> b!3527621 m!3982215))

(declare-fun m!3982217 () Bool)

(assert (=> b!3527621 m!3982217))

(declare-fun m!3982219 () Bool)

(assert (=> b!3527621 m!3982219))

(declare-fun m!3982221 () Bool)

(assert (=> b!3527621 m!3982221))

(declare-fun m!3982223 () Bool)

(assert (=> b!3527621 m!3982223))

(declare-fun m!3982225 () Bool)

(assert (=> b!3527621 m!3982225))

(declare-fun m!3982227 () Bool)

(assert (=> b!3527621 m!3982227))

(assert (=> b!3527621 m!3982191))

(declare-fun m!3982229 () Bool)

(assert (=> b!3527621 m!3982229))

(assert (=> b!3527621 m!3982167))

(declare-fun m!3982231 () Bool)

(assert (=> b!3527621 m!3982231))

(declare-fun m!3982233 () Bool)

(assert (=> b!3527621 m!3982233))

(declare-fun m!3982235 () Bool)

(assert (=> b!3527621 m!3982235))

(declare-fun m!3982237 () Bool)

(assert (=> b!3527621 m!3982237))

(declare-fun m!3982239 () Bool)

(assert (=> b!3527621 m!3982239))

(declare-fun m!3982241 () Bool)

(assert (=> b!3527621 m!3982241))

(declare-fun m!3982243 () Bool)

(assert (=> b!3527621 m!3982243))

(declare-fun m!3982245 () Bool)

(assert (=> b!3527597 m!3982245))

(declare-fun m!3982247 () Bool)

(assert (=> b!3527625 m!3982247))

(declare-fun m!3982249 () Bool)

(assert (=> b!3527625 m!3982249))

(declare-fun m!3982251 () Bool)

(assert (=> b!3527605 m!3982251))

(declare-fun m!3982253 () Bool)

(assert (=> b!3527608 m!3982253))

(declare-fun m!3982255 () Bool)

(assert (=> b!3527636 m!3982255))

(declare-fun m!3982257 () Bool)

(assert (=> b!3527636 m!3982257))

(declare-fun m!3982259 () Bool)

(assert (=> start!327898 m!3982259))

(declare-fun m!3982261 () Bool)

(assert (=> b!3527633 m!3982261))

(declare-fun m!3982263 () Bool)

(assert (=> b!3527620 m!3982263))

(declare-fun m!3982265 () Bool)

(assert (=> b!3527620 m!3982265))

(declare-fun m!3982267 () Bool)

(assert (=> b!3527623 m!3982267))

(declare-fun m!3982269 () Bool)

(assert (=> b!3527617 m!3982269))

(declare-fun m!3982271 () Bool)

(assert (=> b!3527614 m!3982271))

(declare-fun m!3982273 () Bool)

(assert (=> b!3527614 m!3982273))

(declare-fun m!3982275 () Bool)

(assert (=> b!3527613 m!3982275))

(check-sat (not b!3527596) (not b!3527598) (not b!3527614) (not b!3527602) (not b!3527626) (not b!3527633) (not b!3527646) b_and!251545 (not b!3527628) (not b_next!91619) (not b_next!91621) (not b!3527593) (not b!3527605) b_and!251543 (not b!3527597) (not b!3527606) (not b!3527630) (not b!3527632) b_and!251551 b_and!251547 (not b!3527613) (not b_next!91623) (not b!3527617) (not b!3527625) (not b_next!91617) (not b!3527594) (not b!3527603) b_and!251549 (not b!3527624) (not b!3527608) (not start!327898) (not b!3527631) (not b!3527623) (not b!3527627) (not b!3527635) (not b!3527620) b_and!251553 (not b!3527612) (not b!3527615) (not b_next!91625) (not b!3527604) (not b!3527599) (not b!3527621) (not b_next!91627) (not b!3527629) (not b!3527636))
(check-sat (not b_next!91619) (not b_next!91621) b_and!251543 b_and!251551 (not b_next!91617) b_and!251549 b_and!251553 (not b_next!91625) (not b_next!91627) b_and!251545 b_and!251547 (not b_next!91623))
