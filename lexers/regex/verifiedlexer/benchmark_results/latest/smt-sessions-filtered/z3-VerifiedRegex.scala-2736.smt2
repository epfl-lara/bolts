; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146978 () Bool)

(assert start!146978)

(declare-fun b!1574820 () Bool)

(declare-fun b_free!42359 () Bool)

(declare-fun b_next!43063 () Bool)

(assert (=> b!1574820 (= b_free!42359 (not b_next!43063))))

(declare-fun tp!463611 () Bool)

(declare-fun b_and!110197 () Bool)

(assert (=> b!1574820 (= tp!463611 b_and!110197)))

(declare-fun b_free!42361 () Bool)

(declare-fun b_next!43065 () Bool)

(assert (=> b!1574820 (= b_free!42361 (not b_next!43065))))

(declare-fun tp!463609 () Bool)

(declare-fun b_and!110199 () Bool)

(assert (=> b!1574820 (= tp!463609 b_and!110199)))

(declare-fun b!1574823 () Bool)

(declare-fun b_free!42363 () Bool)

(declare-fun b_next!43067 () Bool)

(assert (=> b!1574823 (= b_free!42363 (not b_next!43067))))

(declare-fun tp!463614 () Bool)

(declare-fun b_and!110201 () Bool)

(assert (=> b!1574823 (= tp!463614 b_and!110201)))

(declare-fun b_free!42365 () Bool)

(declare-fun b_next!43069 () Bool)

(assert (=> b!1574823 (= b_free!42365 (not b_next!43069))))

(declare-fun tp!463613 () Bool)

(declare-fun b_and!110203 () Bool)

(assert (=> b!1574823 (= tp!463613 b_and!110203)))

(declare-fun b!1574812 () Bool)

(declare-fun res!701889 () Bool)

(declare-fun e!1011517 () Bool)

(assert (=> b!1574812 (=> (not res!701889) (not e!1011517))))

(declare-datatypes ((LexerInterface!2662 0))(
  ( (LexerInterfaceExt!2659 (__x!11548 Int)) (Lexer!2660) )
))
(declare-fun thiss!17113 () LexerInterface!2662)

(declare-datatypes ((C!8896 0))(
  ( (C!8897 (val!5044 Int)) )
))
(declare-datatypes ((List!17315 0))(
  ( (Nil!17245) (Cons!17245 (h!22646 C!8896) (t!143258 List!17315)) )
))
(declare-datatypes ((IArray!11433 0))(
  ( (IArray!11434 (innerList!5774 List!17315)) )
))
(declare-datatypes ((Conc!5714 0))(
  ( (Node!5714 (left!13944 Conc!5714) (right!14274 Conc!5714) (csize!11658 Int) (cheight!5925 Int)) (Leaf!8451 (xs!8518 IArray!11433) (csize!11659 Int)) (Empty!5714) )
))
(declare-datatypes ((BalanceConc!11372 0))(
  ( (BalanceConc!11373 (c!255303 Conc!5714)) )
))
(declare-datatypes ((List!17316 0))(
  ( (Nil!17246) (Cons!17246 (h!22647 (_ BitVec 16)) (t!143259 List!17316)) )
))
(declare-datatypes ((TokenValue!3123 0))(
  ( (FloatLiteralValue!6246 (text!22306 List!17316)) (TokenValueExt!3122 (__x!11549 Int)) (Broken!15615 (value!96087 List!17316)) (Object!3192) (End!3123) (Def!3123) (Underscore!3123) (Match!3123) (Else!3123) (Error!3123) (Case!3123) (If!3123) (Extends!3123) (Abstract!3123) (Class!3123) (Val!3123) (DelimiterValue!6246 (del!3183 List!17316)) (KeywordValue!3129 (value!96088 List!17316)) (CommentValue!6246 (value!96089 List!17316)) (WhitespaceValue!6246 (value!96090 List!17316)) (IndentationValue!3123 (value!96091 List!17316)) (String!19946) (Int32!3123) (Broken!15616 (value!96092 List!17316)) (Boolean!3124) (Unit!26620) (OperatorValue!3126 (op!3183 List!17316)) (IdentifierValue!6246 (value!96093 List!17316)) (IdentifierValue!6247 (value!96094 List!17316)) (WhitespaceValue!6247 (value!96095 List!17316)) (True!6246) (False!6246) (Broken!15617 (value!96096 List!17316)) (Broken!15618 (value!96097 List!17316)) (True!6247) (RightBrace!3123) (RightBracket!3123) (Colon!3123) (Null!3123) (Comma!3123) (LeftBracket!3123) (False!6247) (LeftBrace!3123) (ImaginaryLiteralValue!3123 (text!22307 List!17316)) (StringLiteralValue!9369 (value!96098 List!17316)) (EOFValue!3123 (value!96099 List!17316)) (IdentValue!3123 (value!96100 List!17316)) (DelimiterValue!6247 (value!96101 List!17316)) (DedentValue!3123 (value!96102 List!17316)) (NewLineValue!3123 (value!96103 List!17316)) (IntegerValue!9369 (value!96104 (_ BitVec 32)) (text!22308 List!17316)) (IntegerValue!9370 (value!96105 Int) (text!22309 List!17316)) (Times!3123) (Or!3123) (Equal!3123) (Minus!3123) (Broken!15619 (value!96106 List!17316)) (And!3123) (Div!3123) (LessEqual!3123) (Mod!3123) (Concat!7484) (Not!3123) (Plus!3123) (SpaceValue!3123 (value!96107 List!17316)) (IntegerValue!9371 (value!96108 Int) (text!22310 List!17316)) (StringLiteralValue!9370 (text!22311 List!17316)) (FloatLiteralValue!6247 (text!22312 List!17316)) (BytesLiteralValue!3123 (value!96109 List!17316)) (CommentValue!6247 (value!96110 List!17316)) (StringLiteralValue!9371 (value!96111 List!17316)) (ErrorTokenValue!3123 (msg!3184 List!17316)) )
))
(declare-datatypes ((Regex!4361 0))(
  ( (ElementMatch!4361 (c!255304 C!8896)) (Concat!7485 (regOne!9234 Regex!4361) (regTwo!9234 Regex!4361)) (EmptyExpr!4361) (Star!4361 (reg!4690 Regex!4361)) (EmptyLang!4361) (Union!4361 (regOne!9235 Regex!4361) (regTwo!9235 Regex!4361)) )
))
(declare-datatypes ((String!19947 0))(
  ( (String!19948 (value!96112 String)) )
))
(declare-datatypes ((TokenValueInjection!5906 0))(
  ( (TokenValueInjection!5907 (toValue!4428 Int) (toChars!4287 Int)) )
))
(declare-datatypes ((Rule!5866 0))(
  ( (Rule!5867 (regex!3033 Regex!4361) (tag!3299 String!19947) (isSeparator!3033 Bool) (transformation!3033 TokenValueInjection!5906)) )
))
(declare-datatypes ((Token!5632 0))(
  ( (Token!5633 (value!96113 TokenValue!3123) (rule!4825 Rule!5866) (size!13898 Int) (originalCharacters!3847 List!17315)) )
))
(declare-datatypes ((List!17317 0))(
  ( (Nil!17247) (Cons!17247 (h!22648 Token!5632) (t!143260 List!17317)) )
))
(declare-fun tokens!457 () List!17317)

(declare-datatypes ((List!17318 0))(
  ( (Nil!17248) (Cons!17248 (h!22649 Rule!5866) (t!143261 List!17318)) )
))
(declare-fun rules!1846 () List!17318)

(declare-fun rulesProduceEachTokenIndividuallyList!864 (LexerInterface!2662 List!17318 List!17317) Bool)

(assert (=> b!1574812 (= res!701889 (rulesProduceEachTokenIndividuallyList!864 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1574813 () Bool)

(declare-fun e!1011524 () Bool)

(assert (=> b!1574813 (= e!1011517 e!1011524)))

(declare-fun res!701890 () Bool)

(assert (=> b!1574813 (=> (not res!701890) (not e!1011524))))

(declare-fun lt!547577 () List!17315)

(declare-fun lt!547586 () List!17315)

(assert (=> b!1574813 (= res!701890 (= lt!547577 lt!547586))))

(declare-fun lt!547581 () List!17315)

(declare-fun lt!547578 () List!17315)

(declare-fun ++!4469 (List!17315 List!17315) List!17315)

(assert (=> b!1574813 (= lt!547586 (++!4469 lt!547581 lt!547578))))

(declare-fun lt!547588 () BalanceConc!11372)

(declare-fun list!6631 (BalanceConc!11372) List!17315)

(assert (=> b!1574813 (= lt!547577 (list!6631 lt!547588))))

(declare-fun lt!547584 () BalanceConc!11372)

(assert (=> b!1574813 (= lt!547578 (list!6631 lt!547584))))

(declare-fun charsOf!1682 (Token!5632) BalanceConc!11372)

(assert (=> b!1574813 (= lt!547581 (list!6631 (charsOf!1682 (h!22648 tokens!457))))))

(declare-datatypes ((IArray!11435 0))(
  ( (IArray!11436 (innerList!5775 List!17317)) )
))
(declare-datatypes ((Conc!5715 0))(
  ( (Node!5715 (left!13945 Conc!5715) (right!14275 Conc!5715) (csize!11660 Int) (cheight!5926 Int)) (Leaf!8452 (xs!8519 IArray!11435) (csize!11661 Int)) (Empty!5715) )
))
(declare-datatypes ((BalanceConc!11374 0))(
  ( (BalanceConc!11375 (c!255305 Conc!5715)) )
))
(declare-datatypes ((tuple2!16710 0))(
  ( (tuple2!16711 (_1!9757 BalanceConc!11374) (_2!9757 BalanceConc!11372)) )
))
(declare-fun lt!547580 () tuple2!16710)

(declare-fun lex!1146 (LexerInterface!2662 List!17318 BalanceConc!11372) tuple2!16710)

(assert (=> b!1574813 (= lt!547580 (lex!1146 thiss!17113 rules!1846 lt!547584))))

(declare-fun lt!547579 () BalanceConc!11374)

(declare-fun print!1193 (LexerInterface!2662 BalanceConc!11374) BalanceConc!11372)

(assert (=> b!1574813 (= lt!547584 (print!1193 thiss!17113 lt!547579))))

(declare-fun seqFromList!1830 (List!17317) BalanceConc!11374)

(assert (=> b!1574813 (= lt!547579 (seqFromList!1830 (t!143260 tokens!457)))))

(assert (=> b!1574813 (= lt!547588 (print!1193 thiss!17113 (seqFromList!1830 tokens!457)))))

(declare-fun res!701888 () Bool)

(assert (=> start!146978 (=> (not res!701888) (not e!1011517))))

(get-info :version)

(assert (=> start!146978 (= res!701888 ((_ is Lexer!2660) thiss!17113))))

(assert (=> start!146978 e!1011517))

(assert (=> start!146978 true))

(declare-fun e!1011515 () Bool)

(assert (=> start!146978 e!1011515))

(declare-fun e!1011522 () Bool)

(assert (=> start!146978 e!1011522))

(declare-fun b!1574814 () Bool)

(declare-fun res!701891 () Bool)

(assert (=> b!1574814 (=> (not res!701891) (not e!1011517))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!355 (LexerInterface!2662 List!17317 List!17318) Bool)

(assert (=> b!1574814 (= res!701891 (tokensListTwoByTwoPredicateSeparableList!355 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1011514 () Bool)

(declare-fun b!1574815 () Bool)

(declare-fun tp!463612 () Bool)

(declare-fun e!1011518 () Bool)

(declare-fun inv!22651 (String!19947) Bool)

(declare-fun inv!22654 (TokenValueInjection!5906) Bool)

(assert (=> b!1574815 (= e!1011514 (and tp!463612 (inv!22651 (tag!3299 (h!22649 rules!1846))) (inv!22654 (transformation!3033 (h!22649 rules!1846))) e!1011518))))

(declare-fun b!1574816 () Bool)

(declare-fun res!701892 () Bool)

(assert (=> b!1574816 (=> (not res!701892) (not e!1011517))))

(assert (=> b!1574816 (= res!701892 (and (not ((_ is Nil!17247) tokens!457)) (not ((_ is Nil!17247) (t!143260 tokens!457)))))))

(declare-fun b!1574817 () Bool)

(declare-fun e!1011525 () Bool)

(assert (=> b!1574817 (= e!1011525 true)))

(declare-fun lt!547576 () List!17317)

(declare-fun list!6632 (BalanceConc!11374) List!17317)

(assert (=> b!1574817 (= lt!547576 (list!6632 lt!547579))))

(declare-fun lt!547583 () List!17317)

(declare-fun prepend!499 (BalanceConc!11374 Token!5632) BalanceConc!11374)

(assert (=> b!1574817 (= lt!547583 (list!6632 (prepend!499 (seqFromList!1830 (t!143260 (t!143260 tokens!457))) (h!22648 (t!143260 tokens!457)))))))

(declare-datatypes ((Unit!26621 0))(
  ( (Unit!26622) )
))
(declare-fun lt!547582 () Unit!26621)

(declare-fun seqFromListBHdTlConstructive!110 (Token!5632 List!17317 BalanceConc!11374) Unit!26621)

(assert (=> b!1574817 (= lt!547582 (seqFromListBHdTlConstructive!110 (h!22648 (t!143260 tokens!457)) (t!143260 (t!143260 tokens!457)) (_1!9757 lt!547580)))))

(declare-fun e!1011519 () Bool)

(declare-fun e!1011523 () Bool)

(declare-fun tp!463610 () Bool)

(declare-fun b!1574818 () Bool)

(declare-fun inv!21 (TokenValue!3123) Bool)

(assert (=> b!1574818 (= e!1011519 (and (inv!21 (value!96113 (h!22648 tokens!457))) e!1011523 tp!463610))))

(declare-fun b!1574819 () Bool)

(declare-fun res!701887 () Bool)

(assert (=> b!1574819 (=> (not res!701887) (not e!1011517))))

(declare-fun isEmpty!10291 (List!17318) Bool)

(assert (=> b!1574819 (= res!701887 (not (isEmpty!10291 rules!1846)))))

(assert (=> b!1574820 (= e!1011518 (and tp!463611 tp!463609))))

(declare-fun tp!463606 () Bool)

(declare-fun b!1574821 () Bool)

(declare-fun inv!22655 (Token!5632) Bool)

(assert (=> b!1574821 (= e!1011522 (and (inv!22655 (h!22648 tokens!457)) e!1011519 tp!463606))))

(declare-fun b!1574822 () Bool)

(assert (=> b!1574822 (= e!1011524 (not e!1011525))))

(declare-fun res!701893 () Bool)

(assert (=> b!1574822 (=> res!701893 e!1011525)))

(assert (=> b!1574822 (= res!701893 (not (= lt!547583 (t!143260 tokens!457))))))

(assert (=> b!1574822 (= lt!547583 (list!6632 (_1!9757 lt!547580)))))

(declare-fun lt!547585 () Unit!26621)

(declare-fun theoremInvertabilityWhenTokenListSeparable!107 (LexerInterface!2662 List!17318 List!17317) Unit!26621)

(assert (=> b!1574822 (= lt!547585 (theoremInvertabilityWhenTokenListSeparable!107 thiss!17113 rules!1846 (t!143260 tokens!457)))))

(declare-fun isPrefix!1293 (List!17315 List!17315) Bool)

(assert (=> b!1574822 (isPrefix!1293 lt!547581 lt!547586)))

(declare-fun lt!547587 () Unit!26621)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!818 (List!17315 List!17315) Unit!26621)

(assert (=> b!1574822 (= lt!547587 (lemmaConcatTwoListThenFirstIsPrefix!818 lt!547581 lt!547578))))

(declare-fun e!1011516 () Bool)

(assert (=> b!1574823 (= e!1011516 (and tp!463614 tp!463613))))

(declare-fun b!1574824 () Bool)

(declare-fun tp!463608 () Bool)

(assert (=> b!1574824 (= e!1011515 (and e!1011514 tp!463608))))

(declare-fun b!1574825 () Bool)

(declare-fun res!701894 () Bool)

(assert (=> b!1574825 (=> (not res!701894) (not e!1011517))))

(declare-fun rulesInvariant!2331 (LexerInterface!2662 List!17318) Bool)

(assert (=> b!1574825 (= res!701894 (rulesInvariant!2331 thiss!17113 rules!1846))))

(declare-fun b!1574826 () Bool)

(declare-fun tp!463607 () Bool)

(assert (=> b!1574826 (= e!1011523 (and tp!463607 (inv!22651 (tag!3299 (rule!4825 (h!22648 tokens!457)))) (inv!22654 (transformation!3033 (rule!4825 (h!22648 tokens!457)))) e!1011516))))

(assert (= (and start!146978 res!701888) b!1574819))

(assert (= (and b!1574819 res!701887) b!1574825))

(assert (= (and b!1574825 res!701894) b!1574812))

(assert (= (and b!1574812 res!701889) b!1574814))

(assert (= (and b!1574814 res!701891) b!1574816))

(assert (= (and b!1574816 res!701892) b!1574813))

(assert (= (and b!1574813 res!701890) b!1574822))

(assert (= (and b!1574822 (not res!701893)) b!1574817))

(assert (= b!1574815 b!1574820))

(assert (= b!1574824 b!1574815))

(assert (= (and start!146978 ((_ is Cons!17248) rules!1846)) b!1574824))

(assert (= b!1574826 b!1574823))

(assert (= b!1574818 b!1574826))

(assert (= b!1574821 b!1574818))

(assert (= (and start!146978 ((_ is Cons!17247) tokens!457)) b!1574821))

(declare-fun m!1853791 () Bool)

(assert (=> b!1574819 m!1853791))

(declare-fun m!1853793 () Bool)

(assert (=> b!1574822 m!1853793))

(declare-fun m!1853795 () Bool)

(assert (=> b!1574822 m!1853795))

(declare-fun m!1853797 () Bool)

(assert (=> b!1574822 m!1853797))

(declare-fun m!1853799 () Bool)

(assert (=> b!1574822 m!1853799))

(declare-fun m!1853801 () Bool)

(assert (=> b!1574813 m!1853801))

(declare-fun m!1853803 () Bool)

(assert (=> b!1574813 m!1853803))

(declare-fun m!1853805 () Bool)

(assert (=> b!1574813 m!1853805))

(assert (=> b!1574813 m!1853801))

(declare-fun m!1853807 () Bool)

(assert (=> b!1574813 m!1853807))

(declare-fun m!1853809 () Bool)

(assert (=> b!1574813 m!1853809))

(declare-fun m!1853811 () Bool)

(assert (=> b!1574813 m!1853811))

(declare-fun m!1853813 () Bool)

(assert (=> b!1574813 m!1853813))

(declare-fun m!1853815 () Bool)

(assert (=> b!1574813 m!1853815))

(declare-fun m!1853817 () Bool)

(assert (=> b!1574813 m!1853817))

(assert (=> b!1574813 m!1853809))

(declare-fun m!1853819 () Bool)

(assert (=> b!1574813 m!1853819))

(declare-fun m!1853821 () Bool)

(assert (=> b!1574818 m!1853821))

(declare-fun m!1853823 () Bool)

(assert (=> b!1574814 m!1853823))

(declare-fun m!1853825 () Bool)

(assert (=> b!1574821 m!1853825))

(declare-fun m!1853827 () Bool)

(assert (=> b!1574815 m!1853827))

(declare-fun m!1853829 () Bool)

(assert (=> b!1574815 m!1853829))

(declare-fun m!1853831 () Bool)

(assert (=> b!1574812 m!1853831))

(declare-fun m!1853833 () Bool)

(assert (=> b!1574826 m!1853833))

(declare-fun m!1853835 () Bool)

(assert (=> b!1574826 m!1853835))

(declare-fun m!1853837 () Bool)

(assert (=> b!1574817 m!1853837))

(declare-fun m!1853839 () Bool)

(assert (=> b!1574817 m!1853839))

(declare-fun m!1853841 () Bool)

(assert (=> b!1574817 m!1853841))

(declare-fun m!1853843 () Bool)

(assert (=> b!1574817 m!1853843))

(declare-fun m!1853845 () Bool)

(assert (=> b!1574817 m!1853845))

(assert (=> b!1574817 m!1853841))

(assert (=> b!1574817 m!1853843))

(declare-fun m!1853847 () Bool)

(assert (=> b!1574825 m!1853847))

(check-sat b_and!110203 (not b_next!43067) (not b!1574822) (not b!1574824) (not b!1574826) (not b_next!43065) b_and!110201 (not b!1574817) (not b!1574815) b_and!110197 (not b_next!43063) (not b_next!43069) (not b!1574812) (not b!1574821) b_and!110199 (not b!1574813) (not b!1574825) (not b!1574814) (not b!1574819) (not b!1574818))
(check-sat b_and!110199 b_and!110203 (not b_next!43067) (not b_next!43065) b_and!110201 b_and!110197 (not b_next!43063) (not b_next!43069))
