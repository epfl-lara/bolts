; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!332212 () Bool)

(assert start!332212)

(declare-fun b!3582593 () Bool)

(declare-fun b_free!92113 () Bool)

(declare-fun b_next!92817 () Bool)

(assert (=> b!3582593 (= b_free!92113 (not b_next!92817))))

(declare-fun tp!1096821 () Bool)

(declare-fun b_and!258575 () Bool)

(assert (=> b!3582593 (= tp!1096821 b_and!258575)))

(declare-fun b_free!92115 () Bool)

(declare-fun b_next!92819 () Bool)

(assert (=> b!3582593 (= b_free!92115 (not b_next!92819))))

(declare-fun tp!1096826 () Bool)

(declare-fun b_and!258577 () Bool)

(assert (=> b!3582593 (= tp!1096826 b_and!258577)))

(declare-fun b!3582594 () Bool)

(declare-fun b_free!92117 () Bool)

(declare-fun b_next!92821 () Bool)

(assert (=> b!3582594 (= b_free!92117 (not b_next!92821))))

(declare-fun tp!1096827 () Bool)

(declare-fun b_and!258579 () Bool)

(assert (=> b!3582594 (= tp!1096827 b_and!258579)))

(declare-fun b_free!92119 () Bool)

(declare-fun b_next!92823 () Bool)

(assert (=> b!3582594 (= b_free!92119 (not b_next!92823))))

(declare-fun tp!1096825 () Bool)

(declare-fun b_and!258581 () Bool)

(assert (=> b!3582594 (= tp!1096825 b_and!258581)))

(declare-fun b!3582576 () Bool)

(declare-fun b_free!92121 () Bool)

(declare-fun b_next!92825 () Bool)

(assert (=> b!3582576 (= b_free!92121 (not b_next!92825))))

(declare-fun tp!1096816 () Bool)

(declare-fun b_and!258583 () Bool)

(assert (=> b!3582576 (= tp!1096816 b_and!258583)))

(declare-fun b_free!92123 () Bool)

(declare-fun b_next!92827 () Bool)

(assert (=> b!3582576 (= b_free!92123 (not b_next!92827))))

(declare-fun tp!1096815 () Bool)

(declare-fun b_and!258585 () Bool)

(assert (=> b!3582576 (= tp!1096815 b_and!258585)))

(declare-fun b!3582585 () Bool)

(declare-fun b_free!92125 () Bool)

(declare-fun b_next!92829 () Bool)

(assert (=> b!3582585 (= b_free!92125 (not b_next!92829))))

(declare-fun tp!1096818 () Bool)

(declare-fun b_and!258587 () Bool)

(assert (=> b!3582585 (= tp!1096818 b_and!258587)))

(declare-fun b_free!92127 () Bool)

(declare-fun b_next!92831 () Bool)

(assert (=> b!3582585 (= b_free!92127 (not b_next!92831))))

(declare-fun tp!1096824 () Bool)

(declare-fun b_and!258589 () Bool)

(assert (=> b!3582585 (= tp!1096824 b_and!258589)))

(declare-fun b!3582571 () Bool)

(declare-fun e!2216687 () Bool)

(declare-datatypes ((LexerInterface!5138 0))(
  ( (LexerInterfaceExt!5135 (__x!23775 Int)) (Lexer!5136) )
))
(declare-fun thiss!23823 () LexerInterface!5138)

(declare-datatypes ((List!37770 0))(
  ( (Nil!37646) (Cons!37646 (h!43066 (_ BitVec 16)) (t!290379 List!37770)) )
))
(declare-datatypes ((TokenValue!5779 0))(
  ( (FloatLiteralValue!11558 (text!40898 List!37770)) (TokenValueExt!5778 (__x!23776 Int)) (Broken!28895 (value!178582 List!37770)) (Object!5902) (End!5779) (Def!5779) (Underscore!5779) (Match!5779) (Else!5779) (Error!5779) (Case!5779) (If!5779) (Extends!5779) (Abstract!5779) (Class!5779) (Val!5779) (DelimiterValue!11558 (del!5839 List!37770)) (KeywordValue!5785 (value!178583 List!37770)) (CommentValue!11558 (value!178584 List!37770)) (WhitespaceValue!11558 (value!178585 List!37770)) (IndentationValue!5779 (value!178586 List!37770)) (String!42230) (Int32!5779) (Broken!28896 (value!178587 List!37770)) (Boolean!5780) (Unit!53645) (OperatorValue!5782 (op!5839 List!37770)) (IdentifierValue!11558 (value!178588 List!37770)) (IdentifierValue!11559 (value!178589 List!37770)) (WhitespaceValue!11559 (value!178590 List!37770)) (True!11558) (False!11558) (Broken!28897 (value!178591 List!37770)) (Broken!28898 (value!178592 List!37770)) (True!11559) (RightBrace!5779) (RightBracket!5779) (Colon!5779) (Null!5779) (Comma!5779) (LeftBracket!5779) (False!11559) (LeftBrace!5779) (ImaginaryLiteralValue!5779 (text!40899 List!37770)) (StringLiteralValue!17337 (value!178593 List!37770)) (EOFValue!5779 (value!178594 List!37770)) (IdentValue!5779 (value!178595 List!37770)) (DelimiterValue!11559 (value!178596 List!37770)) (DedentValue!5779 (value!178597 List!37770)) (NewLineValue!5779 (value!178598 List!37770)) (IntegerValue!17337 (value!178599 (_ BitVec 32)) (text!40900 List!37770)) (IntegerValue!17338 (value!178600 Int) (text!40901 List!37770)) (Times!5779) (Or!5779) (Equal!5779) (Minus!5779) (Broken!28899 (value!178601 List!37770)) (And!5779) (Div!5779) (LessEqual!5779) (Mod!5779) (Concat!16087) (Not!5779) (Plus!5779) (SpaceValue!5779 (value!178602 List!37770)) (IntegerValue!17339 (value!178603 Int) (text!40902 List!37770)) (StringLiteralValue!17338 (text!40903 List!37770)) (FloatLiteralValue!11559 (text!40904 List!37770)) (BytesLiteralValue!5779 (value!178604 List!37770)) (CommentValue!11559 (value!178605 List!37770)) (StringLiteralValue!17339 (value!178606 List!37770)) (ErrorTokenValue!5779 (msg!5840 List!37770)) )
))
(declare-datatypes ((C!20802 0))(
  ( (C!20803 (val!12449 Int)) )
))
(declare-datatypes ((Regex!10308 0))(
  ( (ElementMatch!10308 (c!620662 C!20802)) (Concat!16088 (regOne!21128 Regex!10308) (regTwo!21128 Regex!10308)) (EmptyExpr!10308) (Star!10308 (reg!10637 Regex!10308)) (EmptyLang!10308) (Union!10308 (regOne!21129 Regex!10308) (regTwo!21129 Regex!10308)) )
))
(declare-datatypes ((String!42231 0))(
  ( (String!42232 (value!178607 String)) )
))
(declare-datatypes ((List!37771 0))(
  ( (Nil!37647) (Cons!37647 (h!43067 C!20802) (t!290380 List!37771)) )
))
(declare-datatypes ((IArray!22899 0))(
  ( (IArray!22900 (innerList!11507 List!37771)) )
))
(declare-datatypes ((Conc!11447 0))(
  ( (Node!11447 (left!29428 Conc!11447) (right!29758 Conc!11447) (csize!23124 Int) (cheight!11658 Int)) (Leaf!17833 (xs!14649 IArray!22899) (csize!23125 Int)) (Empty!11447) )
))
(declare-datatypes ((BalanceConc!22508 0))(
  ( (BalanceConc!22509 (c!620663 Conc!11447)) )
))
(declare-datatypes ((TokenValueInjection!10986 0))(
  ( (TokenValueInjection!10987 (toValue!7825 Int) (toChars!7684 Int)) )
))
(declare-datatypes ((Rule!10898 0))(
  ( (Rule!10899 (regex!5549 Regex!10308) (tag!6215 String!42231) (isSeparator!5549 Bool) (transformation!5549 TokenValueInjection!10986)) )
))
(declare-datatypes ((List!37772 0))(
  ( (Nil!37648) (Cons!37648 (h!43068 Rule!10898) (t!290381 List!37772)) )
))
(declare-fun rules!3307 () List!37772)

(declare-fun rulesValidInductive!1930 (LexerInterface!5138 List!37772) Bool)

(assert (=> b!3582571 (= e!2216687 (rulesValidInductive!1930 thiss!23823 rules!3307))))

(declare-fun lt!1228853 () List!37771)

(declare-fun lt!1228857 () List!37771)

(declare-fun isPrefix!2912 (List!37771 List!37771) Bool)

(assert (=> b!3582571 (isPrefix!2912 lt!1228853 lt!1228857)))

(declare-datatypes ((Unit!53646 0))(
  ( (Unit!53647) )
))
(declare-fun lt!1228859 () Unit!53646)

(declare-fun suffix!1395 () List!37771)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1833 (List!37771 List!37771) Unit!53646)

(assert (=> b!3582571 (= lt!1228859 (lemmaConcatTwoListThenFirstIsPrefix!1833 lt!1228853 suffix!1395))))

(declare-fun ++!9361 (List!37771 List!37771) List!37771)

(assert (=> b!3582571 (= lt!1228857 (++!9361 lt!1228853 suffix!1395))))

(declare-fun res!1445551 () Bool)

(declare-fun e!2216680 () Bool)

(assert (=> start!332212 (=> (not res!1445551) (not e!2216680))))

(assert (=> start!332212 (= res!1445551 (is-Lexer!5136 thiss!23823))))

(assert (=> start!332212 e!2216680))

(declare-fun e!2216690 () Bool)

(assert (=> start!332212 e!2216690))

(declare-fun e!2216674 () Bool)

(assert (=> start!332212 e!2216674))

(assert (=> start!332212 true))

(declare-datatypes ((Token!10464 0))(
  ( (Token!10465 (value!178608 TokenValue!5779) (rule!8261 Rule!10898) (size!28689 Int) (originalCharacters!6263 List!37771)) )
))
(declare-fun token!511 () Token!10464)

(declare-fun e!2216692 () Bool)

(declare-fun inv!50960 (Token!10464) Bool)

(assert (=> start!332212 (and (inv!50960 token!511) e!2216692)))

(declare-fun e!2216686 () Bool)

(assert (=> start!332212 e!2216686))

(declare-fun e!2216681 () Bool)

(assert (=> start!332212 e!2216681))

(declare-fun b!3582572 () Bool)

(declare-fun res!1445547 () Bool)

(declare-fun e!2216679 () Bool)

(assert (=> b!3582572 (=> res!1445547 e!2216679)))

(declare-fun isEmpty!22166 (List!37771) Bool)

(assert (=> b!3582572 (= res!1445547 (isEmpty!22166 suffix!1395))))

(declare-fun tp!1096829 () Bool)

(declare-fun e!2216693 () Bool)

(declare-fun rule!403 () Rule!10898)

(declare-fun b!3582573 () Bool)

(declare-fun inv!50957 (String!42231) Bool)

(declare-fun inv!50961 (TokenValueInjection!10986) Bool)

(assert (=> b!3582573 (= e!2216686 (and tp!1096829 (inv!50957 (tag!6215 rule!403)) (inv!50961 (transformation!5549 rule!403)) e!2216693))))

(declare-fun b!3582574 () Bool)

(declare-fun tp_is_empty!17699 () Bool)

(declare-fun tp!1096828 () Bool)

(assert (=> b!3582574 (= e!2216674 (and tp_is_empty!17699 tp!1096828))))

(declare-fun tp!1096820 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!10898)

(declare-fun b!3582575 () Bool)

(declare-fun e!2216678 () Bool)

(assert (=> b!3582575 (= e!2216681 (and tp!1096820 (inv!50957 (tag!6215 anOtherTypeRule!33)) (inv!50961 (transformation!5549 anOtherTypeRule!33)) e!2216678))))

(assert (=> b!3582576 (= e!2216678 (and tp!1096816 tp!1096815))))

(declare-fun b!3582577 () Bool)

(declare-fun res!1445553 () Bool)

(assert (=> b!3582577 (=> (not res!1445553) (not e!2216680))))

(assert (=> b!3582577 (= res!1445553 (not (= (isSeparator!5549 anOtherTypeRule!33) (isSeparator!5549 rule!403))))))

(declare-fun b!3582578 () Bool)

(declare-fun res!1445550 () Bool)

(assert (=> b!3582578 (=> (not res!1445550) (not e!2216680))))

(declare-fun rulesInvariant!4535 (LexerInterface!5138 List!37772) Bool)

(assert (=> b!3582578 (= res!1445550 (rulesInvariant!4535 thiss!23823 rules!3307))))

(declare-fun b!3582579 () Bool)

(declare-fun res!1445557 () Bool)

(declare-fun e!2216683 () Bool)

(assert (=> b!3582579 (=> (not res!1445557) (not e!2216683))))

(assert (=> b!3582579 (= res!1445557 (= (rule!8261 token!511) rule!403))))

(declare-fun b!3582580 () Bool)

(assert (=> b!3582580 (= e!2216683 (not e!2216679))))

(declare-fun res!1445559 () Bool)

(assert (=> b!3582580 (=> res!1445559 e!2216679)))

(declare-fun matchR!4877 (Regex!10308 List!37771) Bool)

(assert (=> b!3582580 (= res!1445559 (not (matchR!4877 (regex!5549 rule!403) lt!1228853)))))

(declare-fun ruleValid!1814 (LexerInterface!5138 Rule!10898) Bool)

(assert (=> b!3582580 (ruleValid!1814 thiss!23823 rule!403)))

(declare-fun lt!1228854 () Unit!53646)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!969 (LexerInterface!5138 Rule!10898 List!37772) Unit!53646)

(assert (=> b!3582580 (= lt!1228854 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!969 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3582581 () Bool)

(declare-fun e!2216688 () Bool)

(declare-fun tp!1096823 () Bool)

(assert (=> b!3582581 (= e!2216690 (and e!2216688 tp!1096823))))

(declare-fun b!3582582 () Bool)

(declare-fun res!1445555 () Bool)

(assert (=> b!3582582 (=> (not res!1445555) (not e!2216680))))

(declare-fun contains!7157 (List!37772 Rule!10898) Bool)

(assert (=> b!3582582 (= res!1445555 (contains!7157 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3582583 () Bool)

(declare-fun res!1445561 () Bool)

(assert (=> b!3582583 (=> res!1445561 e!2216687)))

(declare-fun lt!1228856 () C!20802)

(declare-fun contains!7158 (List!37771 C!20802) Bool)

(declare-fun usedCharacters!763 (Regex!10308) List!37771)

(assert (=> b!3582583 (= res!1445561 (not (contains!7158 (usedCharacters!763 (regex!5549 anOtherTypeRule!33)) lt!1228856)))))

(declare-fun b!3582584 () Bool)

(declare-fun res!1445556 () Bool)

(assert (=> b!3582584 (=> (not res!1445556) (not e!2216680))))

(declare-fun isEmpty!22167 (List!37772) Bool)

(assert (=> b!3582584 (= res!1445556 (not (isEmpty!22167 rules!3307)))))

(assert (=> b!3582585 (= e!2216693 (and tp!1096818 tp!1096824))))

(declare-fun b!3582586 () Bool)

(declare-fun res!1445549 () Bool)

(assert (=> b!3582586 (=> res!1445549 e!2216687)))

(declare-fun sepAndNonSepRulesDisjointChars!1719 (List!37772 List!37772) Bool)

(assert (=> b!3582586 (= res!1445549 (not (sepAndNonSepRulesDisjointChars!1719 rules!3307 rules!3307)))))

(declare-fun b!3582587 () Bool)

(declare-fun e!2216676 () Bool)

(declare-fun tp!1096822 () Bool)

(assert (=> b!3582587 (= e!2216688 (and tp!1096822 (inv!50957 (tag!6215 (h!43068 rules!3307))) (inv!50961 (transformation!5549 (h!43068 rules!3307))) e!2216676))))

(declare-fun b!3582588 () Bool)

(declare-fun e!2216677 () Bool)

(assert (=> b!3582588 (= e!2216677 e!2216683)))

(declare-fun res!1445558 () Bool)

(assert (=> b!3582588 (=> (not res!1445558) (not e!2216683))))

(declare-datatypes ((tuple2!37540 0))(
  ( (tuple2!37541 (_1!21904 Token!10464) (_2!21904 List!37771)) )
))
(declare-fun lt!1228855 () tuple2!37540)

(assert (=> b!3582588 (= res!1445558 (= (_1!21904 lt!1228855) token!511))))

(declare-datatypes ((Option!7737 0))(
  ( (None!7736) (Some!7736 (v!37386 tuple2!37540)) )
))
(declare-fun lt!1228858 () Option!7737)

(declare-fun get!12124 (Option!7737) tuple2!37540)

(assert (=> b!3582588 (= lt!1228855 (get!12124 lt!1228858))))

(declare-fun e!2216689 () Bool)

(declare-fun tp!1096817 () Bool)

(declare-fun e!2216691 () Bool)

(declare-fun b!3582589 () Bool)

(assert (=> b!3582589 (= e!2216689 (and tp!1096817 (inv!50957 (tag!6215 (rule!8261 token!511))) (inv!50961 (transformation!5549 (rule!8261 token!511))) e!2216691))))

(declare-fun b!3582590 () Bool)

(assert (=> b!3582590 (= e!2216680 e!2216677)))

(declare-fun res!1445554 () Bool)

(assert (=> b!3582590 (=> (not res!1445554) (not e!2216677))))

(declare-fun isDefined!5971 (Option!7737) Bool)

(assert (=> b!3582590 (= res!1445554 (isDefined!5971 lt!1228858))))

(declare-fun maxPrefix!2672 (LexerInterface!5138 List!37772 List!37771) Option!7737)

(assert (=> b!3582590 (= lt!1228858 (maxPrefix!2672 thiss!23823 rules!3307 lt!1228853))))

(declare-fun list!13828 (BalanceConc!22508) List!37771)

(declare-fun charsOf!3563 (Token!10464) BalanceConc!22508)

(assert (=> b!3582590 (= lt!1228853 (list!13828 (charsOf!3563 token!511)))))

(declare-fun b!3582591 () Bool)

(assert (=> b!3582591 (= e!2216679 e!2216687)))

(declare-fun res!1445560 () Bool)

(assert (=> b!3582591 (=> res!1445560 e!2216687)))

(assert (=> b!3582591 (= res!1445560 (contains!7158 (usedCharacters!763 (regex!5549 rule!403)) lt!1228856))))

(declare-fun head!7466 (List!37771) C!20802)

(assert (=> b!3582591 (= lt!1228856 (head!7466 suffix!1395))))

(declare-fun b!3582592 () Bool)

(declare-fun res!1445548 () Bool)

(assert (=> b!3582592 (=> (not res!1445548) (not e!2216683))))

(assert (=> b!3582592 (= res!1445548 (isEmpty!22166 (_2!21904 lt!1228855)))))

(assert (=> b!3582593 (= e!2216691 (and tp!1096821 tp!1096826))))

(assert (=> b!3582594 (= e!2216676 (and tp!1096827 tp!1096825))))

(declare-fun b!3582595 () Bool)

(declare-fun res!1445552 () Bool)

(assert (=> b!3582595 (=> (not res!1445552) (not e!2216680))))

(assert (=> b!3582595 (= res!1445552 (contains!7157 rules!3307 rule!403))))

(declare-fun tp!1096819 () Bool)

(declare-fun b!3582596 () Bool)

(declare-fun inv!21 (TokenValue!5779) Bool)

(assert (=> b!3582596 (= e!2216692 (and (inv!21 (value!178608 token!511)) e!2216689 tp!1096819))))

(assert (= (and start!332212 res!1445551) b!3582584))

(assert (= (and b!3582584 res!1445556) b!3582578))

(assert (= (and b!3582578 res!1445550) b!3582595))

(assert (= (and b!3582595 res!1445552) b!3582582))

(assert (= (and b!3582582 res!1445555) b!3582577))

(assert (= (and b!3582577 res!1445553) b!3582590))

(assert (= (and b!3582590 res!1445554) b!3582588))

(assert (= (and b!3582588 res!1445558) b!3582592))

(assert (= (and b!3582592 res!1445548) b!3582579))

(assert (= (and b!3582579 res!1445557) b!3582580))

(assert (= (and b!3582580 (not res!1445559)) b!3582572))

(assert (= (and b!3582572 (not res!1445547)) b!3582591))

(assert (= (and b!3582591 (not res!1445560)) b!3582583))

(assert (= (and b!3582583 (not res!1445561)) b!3582586))

(assert (= (and b!3582586 (not res!1445549)) b!3582571))

(assert (= b!3582587 b!3582594))

(assert (= b!3582581 b!3582587))

(assert (= (and start!332212 (is-Cons!37648 rules!3307)) b!3582581))

(assert (= (and start!332212 (is-Cons!37647 suffix!1395)) b!3582574))

(assert (= b!3582589 b!3582593))

(assert (= b!3582596 b!3582589))

(assert (= start!332212 b!3582596))

(assert (= b!3582573 b!3582585))

(assert (= start!332212 b!3582573))

(assert (= b!3582575 b!3582576))

(assert (= start!332212 b!3582575))

(declare-fun m!4075877 () Bool)

(assert (=> b!3582572 m!4075877))

(declare-fun m!4075879 () Bool)

(assert (=> b!3582573 m!4075879))

(declare-fun m!4075881 () Bool)

(assert (=> b!3582573 m!4075881))

(declare-fun m!4075883 () Bool)

(assert (=> b!3582591 m!4075883))

(assert (=> b!3582591 m!4075883))

(declare-fun m!4075885 () Bool)

(assert (=> b!3582591 m!4075885))

(declare-fun m!4075887 () Bool)

(assert (=> b!3582591 m!4075887))

(declare-fun m!4075889 () Bool)

(assert (=> b!3582590 m!4075889))

(declare-fun m!4075891 () Bool)

(assert (=> b!3582590 m!4075891))

(declare-fun m!4075893 () Bool)

(assert (=> b!3582590 m!4075893))

(assert (=> b!3582590 m!4075893))

(declare-fun m!4075895 () Bool)

(assert (=> b!3582590 m!4075895))

(declare-fun m!4075897 () Bool)

(assert (=> b!3582596 m!4075897))

(declare-fun m!4075899 () Bool)

(assert (=> b!3582592 m!4075899))

(declare-fun m!4075901 () Bool)

(assert (=> b!3582595 m!4075901))

(declare-fun m!4075903 () Bool)

(assert (=> b!3582586 m!4075903))

(declare-fun m!4075905 () Bool)

(assert (=> b!3582583 m!4075905))

(assert (=> b!3582583 m!4075905))

(declare-fun m!4075907 () Bool)

(assert (=> b!3582583 m!4075907))

(declare-fun m!4075909 () Bool)

(assert (=> b!3582575 m!4075909))

(declare-fun m!4075911 () Bool)

(assert (=> b!3582575 m!4075911))

(declare-fun m!4075913 () Bool)

(assert (=> b!3582580 m!4075913))

(declare-fun m!4075915 () Bool)

(assert (=> b!3582580 m!4075915))

(declare-fun m!4075917 () Bool)

(assert (=> b!3582580 m!4075917))

(declare-fun m!4075919 () Bool)

(assert (=> start!332212 m!4075919))

(declare-fun m!4075921 () Bool)

(assert (=> b!3582588 m!4075921))

(declare-fun m!4075923 () Bool)

(assert (=> b!3582578 m!4075923))

(declare-fun m!4075925 () Bool)

(assert (=> b!3582582 m!4075925))

(declare-fun m!4075927 () Bool)

(assert (=> b!3582587 m!4075927))

(declare-fun m!4075929 () Bool)

(assert (=> b!3582587 m!4075929))

(declare-fun m!4075931 () Bool)

(assert (=> b!3582571 m!4075931))

(declare-fun m!4075933 () Bool)

(assert (=> b!3582571 m!4075933))

(declare-fun m!4075935 () Bool)

(assert (=> b!3582571 m!4075935))

(declare-fun m!4075937 () Bool)

(assert (=> b!3582571 m!4075937))

(declare-fun m!4075939 () Bool)

(assert (=> b!3582589 m!4075939))

(declare-fun m!4075941 () Bool)

(assert (=> b!3582589 m!4075941))

(declare-fun m!4075943 () Bool)

(assert (=> b!3582584 m!4075943))

(push 1)

(assert b_and!258577)

(assert b_and!258587)

(assert b_and!258589)

(assert (not b!3582588))

(assert tp_is_empty!17699)

(assert (not b!3582590))

(assert (not b!3582578))

(assert (not b!3582589))

(assert (not b!3582571))

(assert (not b!3582587))

(assert (not b_next!92821))

(assert (not b!3582581))

(assert b_and!258581)

(assert b_and!258579)

(assert (not b_next!92825))

(assert (not b!3582572))

(assert (not b!3582582))

(assert (not b_next!92827))

(assert (not b_next!92823))

(assert (not start!332212))

(assert b_and!258585)

(assert (not b!3582575))

(assert b_and!258583)

(assert (not b!3582583))

(assert (not b!3582584))

(assert (not b!3582595))

(assert (not b!3582580))

(assert (not b_next!92831))

(assert (not b!3582592))

(assert (not b!3582586))

(assert (not b_next!92817))

(assert (not b!3582574))

(assert (not b!3582596))

(assert (not b_next!92819))

(assert (not b_next!92829))

(assert (not b!3582591))

(assert (not b!3582573))

(assert b_and!258575)

(check-sat)

(pop 1)

(push 1)

(assert b_and!258577)

(assert b_and!258587)

(assert b_and!258589)

(assert (not b_next!92827))

(assert (not b_next!92823))

(assert b_and!258585)

(assert b_and!258583)

(assert (not b_next!92831))

(assert (not b_next!92817))

(assert (not b_next!92821))

(assert b_and!258575)

(assert b_and!258581)

(assert b_and!258579)

(assert (not b_next!92825))

(assert (not b_next!92819))

(assert (not b_next!92829))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!3582685 () Bool)

(declare-fun e!2216765 () Bool)

(declare-fun inv!17 (TokenValue!5779) Bool)

(assert (=> b!3582685 (= e!2216765 (inv!17 (value!178608 token!511)))))

(declare-fun b!3582686 () Bool)

(declare-fun e!2216764 () Bool)

(declare-fun inv!15 (TokenValue!5779) Bool)

(assert (=> b!3582686 (= e!2216764 (inv!15 (value!178608 token!511)))))

(declare-fun d!1056368 () Bool)

(declare-fun c!620671 () Bool)

(assert (=> d!1056368 (= c!620671 (is-IntegerValue!17337 (value!178608 token!511)))))

(declare-fun e!2216763 () Bool)

(assert (=> d!1056368 (= (inv!21 (value!178608 token!511)) e!2216763)))

(declare-fun b!3582687 () Bool)

(declare-fun res!1445617 () Bool)

(assert (=> b!3582687 (=> res!1445617 e!2216764)))

(assert (=> b!3582687 (= res!1445617 (not (is-IntegerValue!17339 (value!178608 token!511))))))

(assert (=> b!3582687 (= e!2216765 e!2216764)))

(declare-fun b!3582688 () Bool)

(assert (=> b!3582688 (= e!2216763 e!2216765)))

(declare-fun c!620672 () Bool)

(assert (=> b!3582688 (= c!620672 (is-IntegerValue!17338 (value!178608 token!511)))))

(declare-fun b!3582689 () Bool)

(declare-fun inv!16 (TokenValue!5779) Bool)

(assert (=> b!3582689 (= e!2216763 (inv!16 (value!178608 token!511)))))

(assert (= (and d!1056368 c!620671) b!3582689))

(assert (= (and d!1056368 (not c!620671)) b!3582688))

(assert (= (and b!3582688 c!620672) b!3582685))

(assert (= (and b!3582688 (not c!620672)) b!3582687))

(assert (= (and b!3582687 (not res!1445617)) b!3582686))

(declare-fun m!4076013 () Bool)

(assert (=> b!3582685 m!4076013))

(declare-fun m!4076015 () Bool)

(assert (=> b!3582686 m!4076015))

(declare-fun m!4076017 () Bool)

(assert (=> b!3582689 m!4076017))

(assert (=> b!3582596 d!1056368))

(declare-fun d!1056370 () Bool)

(assert (=> d!1056370 (= (inv!50957 (tag!6215 anOtherTypeRule!33)) (= (mod (str.len (value!178607 (tag!6215 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3582575 d!1056370))

(declare-fun d!1056372 () Bool)

(declare-fun res!1445620 () Bool)

(declare-fun e!2216768 () Bool)

(assert (=> d!1056372 (=> (not res!1445620) (not e!2216768))))

(declare-fun semiInverseModEq!2351 (Int Int) Bool)

(assert (=> d!1056372 (= res!1445620 (semiInverseModEq!2351 (toChars!7684 (transformation!5549 anOtherTypeRule!33)) (toValue!7825 (transformation!5549 anOtherTypeRule!33))))))

(assert (=> d!1056372 (= (inv!50961 (transformation!5549 anOtherTypeRule!33)) e!2216768)))

(declare-fun b!3582692 () Bool)

(declare-fun equivClasses!2250 (Int Int) Bool)

(assert (=> b!3582692 (= e!2216768 (equivClasses!2250 (toChars!7684 (transformation!5549 anOtherTypeRule!33)) (toValue!7825 (transformation!5549 anOtherTypeRule!33))))))

(assert (= (and d!1056372 res!1445620) b!3582692))

(declare-fun m!4076019 () Bool)

(assert (=> d!1056372 m!4076019))

(declare-fun m!4076021 () Bool)

(assert (=> b!3582692 m!4076021))

(assert (=> b!3582575 d!1056372))

(declare-fun d!1056374 () Bool)

(declare-fun res!1445625 () Bool)

(declare-fun e!2216773 () Bool)

(assert (=> d!1056374 (=> res!1445625 e!2216773)))

(assert (=> d!1056374 (= res!1445625 (not (is-Cons!37648 rules!3307)))))

(assert (=> d!1056374 (= (sepAndNonSepRulesDisjointChars!1719 rules!3307 rules!3307) e!2216773)))

(declare-fun b!3582697 () Bool)

(declare-fun e!2216774 () Bool)

(assert (=> b!3582697 (= e!2216773 e!2216774)))

(declare-fun res!1445626 () Bool)

(assert (=> b!3582697 (=> (not res!1445626) (not e!2216774))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!776 (Rule!10898 List!37772) Bool)

(assert (=> b!3582697 (= res!1445626 (ruleDisjointCharsFromAllFromOtherType!776 (h!43068 rules!3307) rules!3307))))

(declare-fun b!3582698 () Bool)

(assert (=> b!3582698 (= e!2216774 (sepAndNonSepRulesDisjointChars!1719 rules!3307 (t!290381 rules!3307)))))

(assert (= (and d!1056374 (not res!1445625)) b!3582697))

(assert (= (and b!3582697 res!1445626) b!3582698))

(declare-fun m!4076023 () Bool)

(assert (=> b!3582697 m!4076023))

(declare-fun m!4076025 () Bool)

(assert (=> b!3582698 m!4076025))

(assert (=> b!3582586 d!1056374))

(declare-fun d!1056376 () Bool)

(declare-fun res!1445631 () Bool)

(declare-fun e!2216777 () Bool)

(assert (=> d!1056376 (=> (not res!1445631) (not e!2216777))))

(assert (=> d!1056376 (= res!1445631 (not (isEmpty!22166 (originalCharacters!6263 token!511))))))

(assert (=> d!1056376 (= (inv!50960 token!511) e!2216777)))

(declare-fun b!3582703 () Bool)

(declare-fun res!1445632 () Bool)

(assert (=> b!3582703 (=> (not res!1445632) (not e!2216777))))

(declare-fun dynLambda!16187 (Int TokenValue!5779) BalanceConc!22508)

(assert (=> b!3582703 (= res!1445632 (= (originalCharacters!6263 token!511) (list!13828 (dynLambda!16187 (toChars!7684 (transformation!5549 (rule!8261 token!511))) (value!178608 token!511)))))))

(declare-fun b!3582704 () Bool)

(declare-fun size!28691 (List!37771) Int)

(assert (=> b!3582704 (= e!2216777 (= (size!28689 token!511) (size!28691 (originalCharacters!6263 token!511))))))

(assert (= (and d!1056376 res!1445631) b!3582703))

(assert (= (and b!3582703 res!1445632) b!3582704))

(declare-fun b_lambda!105875 () Bool)

(assert (=> (not b_lambda!105875) (not b!3582703)))

(declare-fun t!290386 () Bool)

(declare-fun tb!204381 () Bool)

(assert (=> (and b!3582593 (= (toChars!7684 (transformation!5549 (rule!8261 token!511))) (toChars!7684 (transformation!5549 (rule!8261 token!511)))) t!290386) tb!204381))

(declare-fun b!3582709 () Bool)

(declare-fun e!2216780 () Bool)

(declare-fun tp!1096877 () Bool)

(declare-fun inv!50964 (Conc!11447) Bool)

(assert (=> b!3582709 (= e!2216780 (and (inv!50964 (c!620663 (dynLambda!16187 (toChars!7684 (transformation!5549 (rule!8261 token!511))) (value!178608 token!511)))) tp!1096877))))

(declare-fun result!249186 () Bool)

(declare-fun inv!50965 (BalanceConc!22508) Bool)

(assert (=> tb!204381 (= result!249186 (and (inv!50965 (dynLambda!16187 (toChars!7684 (transformation!5549 (rule!8261 token!511))) (value!178608 token!511))) e!2216780))))

(assert (= tb!204381 b!3582709))

(declare-fun m!4076027 () Bool)

(assert (=> b!3582709 m!4076027))

(declare-fun m!4076029 () Bool)

(assert (=> tb!204381 m!4076029))

(assert (=> b!3582703 t!290386))

(declare-fun b_and!258607 () Bool)

(assert (= b_and!258577 (and (=> t!290386 result!249186) b_and!258607)))

(declare-fun tb!204383 () Bool)

(declare-fun t!290388 () Bool)

(assert (=> (and b!3582594 (= (toChars!7684 (transformation!5549 (h!43068 rules!3307))) (toChars!7684 (transformation!5549 (rule!8261 token!511)))) t!290388) tb!204383))

(declare-fun result!249190 () Bool)

(assert (= result!249190 result!249186))

(assert (=> b!3582703 t!290388))

(declare-fun b_and!258609 () Bool)

(assert (= b_and!258581 (and (=> t!290388 result!249190) b_and!258609)))

(declare-fun tb!204385 () Bool)

(declare-fun t!290390 () Bool)

(assert (=> (and b!3582576 (= (toChars!7684 (transformation!5549 anOtherTypeRule!33)) (toChars!7684 (transformation!5549 (rule!8261 token!511)))) t!290390) tb!204385))

(declare-fun result!249192 () Bool)

(assert (= result!249192 result!249186))

(assert (=> b!3582703 t!290390))

(declare-fun b_and!258611 () Bool)

(assert (= b_and!258585 (and (=> t!290390 result!249192) b_and!258611)))

(declare-fun tb!204387 () Bool)

(declare-fun t!290392 () Bool)

(assert (=> (and b!3582585 (= (toChars!7684 (transformation!5549 rule!403)) (toChars!7684 (transformation!5549 (rule!8261 token!511)))) t!290392) tb!204387))

(declare-fun result!249194 () Bool)

(assert (= result!249194 result!249186))

(assert (=> b!3582703 t!290392))

(declare-fun b_and!258613 () Bool)

(assert (= b_and!258589 (and (=> t!290392 result!249194) b_and!258613)))

(declare-fun m!4076031 () Bool)

(assert (=> d!1056376 m!4076031))

(declare-fun m!4076033 () Bool)

(assert (=> b!3582703 m!4076033))

(assert (=> b!3582703 m!4076033))

(declare-fun m!4076035 () Bool)

(assert (=> b!3582703 m!4076035))

(declare-fun m!4076037 () Bool)

(assert (=> b!3582704 m!4076037))

(assert (=> start!332212 d!1056376))

(declare-fun d!1056380 () Bool)

(assert (=> d!1056380 (= (inv!50957 (tag!6215 (h!43068 rules!3307))) (= (mod (str.len (value!178607 (tag!6215 (h!43068 rules!3307)))) 2) 0))))

(assert (=> b!3582587 d!1056380))

(declare-fun d!1056382 () Bool)

(declare-fun res!1445633 () Bool)

(declare-fun e!2216781 () Bool)

(assert (=> d!1056382 (=> (not res!1445633) (not e!2216781))))

(assert (=> d!1056382 (= res!1445633 (semiInverseModEq!2351 (toChars!7684 (transformation!5549 (h!43068 rules!3307))) (toValue!7825 (transformation!5549 (h!43068 rules!3307)))))))

(assert (=> d!1056382 (= (inv!50961 (transformation!5549 (h!43068 rules!3307))) e!2216781)))

(declare-fun b!3582710 () Bool)

(assert (=> b!3582710 (= e!2216781 (equivClasses!2250 (toChars!7684 (transformation!5549 (h!43068 rules!3307))) (toValue!7825 (transformation!5549 (h!43068 rules!3307)))))))

(assert (= (and d!1056382 res!1445633) b!3582710))

(declare-fun m!4076039 () Bool)

(assert (=> d!1056382 m!4076039))

(declare-fun m!4076041 () Bool)

(assert (=> b!3582710 m!4076041))

(assert (=> b!3582587 d!1056382))

(declare-fun d!1056384 () Bool)

(assert (=> d!1056384 (= (isEmpty!22166 suffix!1395) (is-Nil!37647 suffix!1395))))

(assert (=> b!3582572 d!1056384))

(declare-fun d!1056386 () Bool)

(declare-fun lt!1228883 () Bool)

(declare-fun content!5342 (List!37771) (Set C!20802))

(assert (=> d!1056386 (= lt!1228883 (set.member lt!1228856 (content!5342 (usedCharacters!763 (regex!5549 anOtherTypeRule!33)))))))

(declare-fun e!2216792 () Bool)

(assert (=> d!1056386 (= lt!1228883 e!2216792)))

(declare-fun res!1445645 () Bool)

(assert (=> d!1056386 (=> (not res!1445645) (not e!2216792))))

(assert (=> d!1056386 (= res!1445645 (is-Cons!37647 (usedCharacters!763 (regex!5549 anOtherTypeRule!33))))))

(assert (=> d!1056386 (= (contains!7158 (usedCharacters!763 (regex!5549 anOtherTypeRule!33)) lt!1228856) lt!1228883)))

(declare-fun b!3582721 () Bool)

(declare-fun e!2216793 () Bool)

(assert (=> b!3582721 (= e!2216792 e!2216793)))

(declare-fun res!1445644 () Bool)

(assert (=> b!3582721 (=> res!1445644 e!2216793)))

(assert (=> b!3582721 (= res!1445644 (= (h!43067 (usedCharacters!763 (regex!5549 anOtherTypeRule!33))) lt!1228856))))

(declare-fun b!3582722 () Bool)

(assert (=> b!3582722 (= e!2216793 (contains!7158 (t!290380 (usedCharacters!763 (regex!5549 anOtherTypeRule!33))) lt!1228856))))

(assert (= (and d!1056386 res!1445645) b!3582721))

(assert (= (and b!3582721 (not res!1445644)) b!3582722))

(assert (=> d!1056386 m!4075905))

(declare-fun m!4076047 () Bool)

(assert (=> d!1056386 m!4076047))

(declare-fun m!4076049 () Bool)

(assert (=> d!1056386 m!4076049))

(declare-fun m!4076051 () Bool)

(assert (=> b!3582722 m!4076051))

(assert (=> b!3582583 d!1056386))

(declare-fun c!620691 () Bool)

(declare-fun c!620690 () Bool)

(declare-fun bm!259398 () Bool)

(declare-fun call!259405 () List!37771)

(assert (=> bm!259398 (= call!259405 (usedCharacters!763 (ite c!620691 (reg!10637 (regex!5549 anOtherTypeRule!33)) (ite c!620690 (regOne!21129 (regex!5549 anOtherTypeRule!33)) (regTwo!21128 (regex!5549 anOtherTypeRule!33))))))))

(declare-fun b!3582761 () Bool)

(declare-fun e!2216817 () List!37771)

(declare-fun call!259408 () List!37771)

(assert (=> b!3582761 (= e!2216817 call!259408)))

(declare-fun b!3582762 () Bool)

(declare-fun e!2216816 () List!37771)

(assert (=> b!3582762 (= e!2216816 e!2216817)))

(assert (=> b!3582762 (= c!620690 (is-Union!10308 (regex!5549 anOtherTypeRule!33)))))

(declare-fun b!3582763 () Bool)

(assert (=> b!3582763 (= c!620691 (is-Star!10308 (regex!5549 anOtherTypeRule!33)))))

(declare-fun e!2216818 () List!37771)

(assert (=> b!3582763 (= e!2216818 e!2216816)))

(declare-fun b!3582764 () Bool)

(assert (=> b!3582764 (= e!2216817 call!259408)))

(declare-fun b!3582765 () Bool)

(declare-fun e!2216819 () List!37771)

(assert (=> b!3582765 (= e!2216819 e!2216818)))

(declare-fun c!620692 () Bool)

(assert (=> b!3582765 (= c!620692 (is-ElementMatch!10308 (regex!5549 anOtherTypeRule!33)))))

(declare-fun call!259403 () List!37771)

(declare-fun call!259404 () List!37771)

(declare-fun bm!259399 () Bool)

(assert (=> bm!259399 (= call!259408 (++!9361 (ite c!620690 call!259404 call!259403) (ite c!620690 call!259403 call!259404)))))

(declare-fun b!3582766 () Bool)

(assert (=> b!3582766 (= e!2216818 (Cons!37647 (c!620662 (regex!5549 anOtherTypeRule!33)) Nil!37647))))

(declare-fun bm!259400 () Bool)

(assert (=> bm!259400 (= call!259403 (usedCharacters!763 (ite c!620690 (regTwo!21129 (regex!5549 anOtherTypeRule!33)) (regOne!21128 (regex!5549 anOtherTypeRule!33)))))))

(declare-fun b!3582767 () Bool)

(assert (=> b!3582767 (= e!2216816 call!259405)))

(declare-fun d!1056390 () Bool)

(declare-fun c!620689 () Bool)

(assert (=> d!1056390 (= c!620689 (or (is-EmptyExpr!10308 (regex!5549 anOtherTypeRule!33)) (is-EmptyLang!10308 (regex!5549 anOtherTypeRule!33))))))

(assert (=> d!1056390 (= (usedCharacters!763 (regex!5549 anOtherTypeRule!33)) e!2216819)))

(declare-fun bm!259401 () Bool)

(assert (=> bm!259401 (= call!259404 call!259405)))

(declare-fun b!3582768 () Bool)

(assert (=> b!3582768 (= e!2216819 Nil!37647)))

(assert (= (and d!1056390 c!620689) b!3582768))

(assert (= (and d!1056390 (not c!620689)) b!3582765))

(assert (= (and b!3582765 c!620692) b!3582766))

(assert (= (and b!3582765 (not c!620692)) b!3582763))

(assert (= (and b!3582763 c!620691) b!3582767))

(assert (= (and b!3582763 (not c!620691)) b!3582762))

(assert (= (and b!3582762 c!620690) b!3582764))

(assert (= (and b!3582762 (not c!620690)) b!3582761))

(assert (= (or b!3582764 b!3582761) bm!259401))

(assert (= (or b!3582764 b!3582761) bm!259400))

(assert (= (or b!3582764 b!3582761) bm!259399))

(assert (= (or b!3582767 bm!259401) bm!259398))

(declare-fun m!4076059 () Bool)

(assert (=> bm!259398 m!4076059))

(declare-fun m!4076061 () Bool)

(assert (=> bm!259399 m!4076061))

(declare-fun m!4076063 () Bool)

(assert (=> bm!259400 m!4076063))

(assert (=> b!3582583 d!1056390))

(declare-fun d!1056394 () Bool)

(assert (=> d!1056394 (= (inv!50957 (tag!6215 rule!403)) (= (mod (str.len (value!178607 (tag!6215 rule!403))) 2) 0))))

(assert (=> b!3582573 d!1056394))

(declare-fun d!1056396 () Bool)

(declare-fun res!1445652 () Bool)

(declare-fun e!2216820 () Bool)

(assert (=> d!1056396 (=> (not res!1445652) (not e!2216820))))

(assert (=> d!1056396 (= res!1445652 (semiInverseModEq!2351 (toChars!7684 (transformation!5549 rule!403)) (toValue!7825 (transformation!5549 rule!403))))))

(assert (=> d!1056396 (= (inv!50961 (transformation!5549 rule!403)) e!2216820)))

(declare-fun b!3582769 () Bool)

(assert (=> b!3582769 (= e!2216820 (equivClasses!2250 (toChars!7684 (transformation!5549 rule!403)) (toValue!7825 (transformation!5549 rule!403))))))

(assert (= (and d!1056396 res!1445652) b!3582769))

(declare-fun m!4076065 () Bool)

(assert (=> d!1056396 m!4076065))

(declare-fun m!4076067 () Bool)

(assert (=> b!3582769 m!4076067))

(assert (=> b!3582573 d!1056396))

(declare-fun d!1056398 () Bool)

(assert (=> d!1056398 (= (isEmpty!22167 rules!3307) (is-Nil!37648 rules!3307))))

(assert (=> b!3582584 d!1056398))

(declare-fun d!1056400 () Bool)

(declare-fun lt!1228889 () Bool)

(declare-fun content!5343 (List!37772) (Set Rule!10898))

(assert (=> d!1056400 (= lt!1228889 (set.member rule!403 (content!5343 rules!3307)))))

(declare-fun e!2216825 () Bool)

(assert (=> d!1056400 (= lt!1228889 e!2216825)))

(declare-fun res!1445657 () Bool)

(assert (=> d!1056400 (=> (not res!1445657) (not e!2216825))))

(assert (=> d!1056400 (= res!1445657 (is-Cons!37648 rules!3307))))

(assert (=> d!1056400 (= (contains!7157 rules!3307 rule!403) lt!1228889)))

(declare-fun b!3582774 () Bool)

(declare-fun e!2216826 () Bool)

(assert (=> b!3582774 (= e!2216825 e!2216826)))

(declare-fun res!1445658 () Bool)

(assert (=> b!3582774 (=> res!1445658 e!2216826)))

(assert (=> b!3582774 (= res!1445658 (= (h!43068 rules!3307) rule!403))))

(declare-fun b!3582775 () Bool)

(assert (=> b!3582775 (= e!2216826 (contains!7157 (t!290381 rules!3307) rule!403))))

(assert (= (and d!1056400 res!1445657) b!3582774))

(assert (= (and b!3582774 (not res!1445658)) b!3582775))

(declare-fun m!4076069 () Bool)

(assert (=> d!1056400 m!4076069))

(declare-fun m!4076071 () Bool)

(assert (=> d!1056400 m!4076071))

(declare-fun m!4076073 () Bool)

(assert (=> b!3582775 m!4076073))

(assert (=> b!3582595 d!1056400))

(declare-fun b!3582818 () Bool)

(declare-fun res!1445685 () Bool)

(declare-fun e!2216853 () Bool)

(assert (=> b!3582818 (=> (not res!1445685) (not e!2216853))))

(declare-fun tail!5550 (List!37771) List!37771)

(assert (=> b!3582818 (= res!1445685 (isEmpty!22166 (tail!5550 lt!1228853)))))

(declare-fun b!3582819 () Bool)

(declare-fun res!1445682 () Bool)

(assert (=> b!3582819 (=> (not res!1445682) (not e!2216853))))

(declare-fun call!259421 () Bool)

(assert (=> b!3582819 (= res!1445682 (not call!259421))))

(declare-fun b!3582820 () Bool)

(declare-fun e!2216852 () Bool)

(declare-fun e!2216855 () Bool)

(assert (=> b!3582820 (= e!2216852 e!2216855)))

(declare-fun res!1445688 () Bool)

(assert (=> b!3582820 (=> (not res!1445688) (not e!2216855))))

(declare-fun lt!1228895 () Bool)

(assert (=> b!3582820 (= res!1445688 (not lt!1228895))))

(declare-fun b!3582822 () Bool)

(declare-fun res!1445684 () Bool)

(declare-fun e!2216857 () Bool)

(assert (=> b!3582822 (=> res!1445684 e!2216857)))

(assert (=> b!3582822 (= res!1445684 (not (isEmpty!22166 (tail!5550 lt!1228853))))))

(declare-fun b!3582823 () Bool)

(declare-fun e!2216856 () Bool)

(declare-fun e!2216851 () Bool)

(assert (=> b!3582823 (= e!2216856 e!2216851)))

(declare-fun c!620703 () Bool)

(assert (=> b!3582823 (= c!620703 (is-EmptyLang!10308 (regex!5549 rule!403)))))

(declare-fun b!3582824 () Bool)

(declare-fun res!1445683 () Bool)

(assert (=> b!3582824 (=> res!1445683 e!2216852)))

(assert (=> b!3582824 (= res!1445683 e!2216853)))

(declare-fun res!1445686 () Bool)

(assert (=> b!3582824 (=> (not res!1445686) (not e!2216853))))

(assert (=> b!3582824 (= res!1445686 lt!1228895)))

(declare-fun b!3582825 () Bool)

(declare-fun e!2216854 () Bool)

(declare-fun derivativeStep!3102 (Regex!10308 C!20802) Regex!10308)

(assert (=> b!3582825 (= e!2216854 (matchR!4877 (derivativeStep!3102 (regex!5549 rule!403) (head!7466 lt!1228853)) (tail!5550 lt!1228853)))))

(declare-fun bm!259416 () Bool)

(assert (=> bm!259416 (= call!259421 (isEmpty!22166 lt!1228853))))

(declare-fun b!3582826 () Bool)

(assert (=> b!3582826 (= e!2216856 (= lt!1228895 call!259421))))

(declare-fun b!3582827 () Bool)

(declare-fun nullable!3553 (Regex!10308) Bool)

(assert (=> b!3582827 (= e!2216854 (nullable!3553 (regex!5549 rule!403)))))

(declare-fun b!3582828 () Bool)

(declare-fun res!1445681 () Bool)

(assert (=> b!3582828 (=> res!1445681 e!2216852)))

(assert (=> b!3582828 (= res!1445681 (not (is-ElementMatch!10308 (regex!5549 rule!403))))))

(assert (=> b!3582828 (= e!2216851 e!2216852)))

(declare-fun b!3582829 () Bool)

(assert (=> b!3582829 (= e!2216857 (not (= (head!7466 lt!1228853) (c!620662 (regex!5549 rule!403)))))))

(declare-fun b!3582821 () Bool)

(assert (=> b!3582821 (= e!2216855 e!2216857)))

(declare-fun res!1445687 () Bool)

(assert (=> b!3582821 (=> res!1445687 e!2216857)))

(assert (=> b!3582821 (= res!1445687 call!259421)))

(declare-fun d!1056402 () Bool)

(assert (=> d!1056402 e!2216856))

(declare-fun c!620704 () Bool)

(assert (=> d!1056402 (= c!620704 (is-EmptyExpr!10308 (regex!5549 rule!403)))))

(assert (=> d!1056402 (= lt!1228895 e!2216854)))

(declare-fun c!620705 () Bool)

(assert (=> d!1056402 (= c!620705 (isEmpty!22166 lt!1228853))))

(declare-fun validRegex!4709 (Regex!10308) Bool)

(assert (=> d!1056402 (validRegex!4709 (regex!5549 rule!403))))

(assert (=> d!1056402 (= (matchR!4877 (regex!5549 rule!403) lt!1228853) lt!1228895)))

(declare-fun b!3582830 () Bool)

(assert (=> b!3582830 (= e!2216853 (= (head!7466 lt!1228853) (c!620662 (regex!5549 rule!403))))))

(declare-fun b!3582831 () Bool)

(assert (=> b!3582831 (= e!2216851 (not lt!1228895))))

(assert (= (and d!1056402 c!620705) b!3582827))

(assert (= (and d!1056402 (not c!620705)) b!3582825))

(assert (= (and d!1056402 c!620704) b!3582826))

(assert (= (and d!1056402 (not c!620704)) b!3582823))

(assert (= (and b!3582823 c!620703) b!3582831))

(assert (= (and b!3582823 (not c!620703)) b!3582828))

(assert (= (and b!3582828 (not res!1445681)) b!3582824))

(assert (= (and b!3582824 res!1445686) b!3582819))

(assert (= (and b!3582819 res!1445682) b!3582818))

(assert (= (and b!3582818 res!1445685) b!3582830))

(assert (= (and b!3582824 (not res!1445683)) b!3582820))

(assert (= (and b!3582820 res!1445688) b!3582821))

(assert (= (and b!3582821 (not res!1445687)) b!3582822))

(assert (= (and b!3582822 (not res!1445684)) b!3582829))

(assert (= (or b!3582826 b!3582819 b!3582821) bm!259416))

(declare-fun m!4076087 () Bool)

(assert (=> b!3582830 m!4076087))

(declare-fun m!4076089 () Bool)

(assert (=> d!1056402 m!4076089))

(declare-fun m!4076091 () Bool)

(assert (=> d!1056402 m!4076091))

(assert (=> bm!259416 m!4076089))

(declare-fun m!4076093 () Bool)

(assert (=> b!3582818 m!4076093))

(assert (=> b!3582818 m!4076093))

(declare-fun m!4076095 () Bool)

(assert (=> b!3582818 m!4076095))

(declare-fun m!4076097 () Bool)

(assert (=> b!3582827 m!4076097))

(assert (=> b!3582829 m!4076087))

(assert (=> b!3582825 m!4076087))

(assert (=> b!3582825 m!4076087))

(declare-fun m!4076099 () Bool)

(assert (=> b!3582825 m!4076099))

(assert (=> b!3582825 m!4076093))

(assert (=> b!3582825 m!4076099))

(assert (=> b!3582825 m!4076093))

(declare-fun m!4076101 () Bool)

(assert (=> b!3582825 m!4076101))

(assert (=> b!3582822 m!4076093))

(assert (=> b!3582822 m!4076093))

(assert (=> b!3582822 m!4076095))

(assert (=> b!3582580 d!1056402))

(declare-fun d!1056410 () Bool)

(declare-fun res!1445693 () Bool)

(declare-fun e!2216860 () Bool)

(assert (=> d!1056410 (=> (not res!1445693) (not e!2216860))))

(assert (=> d!1056410 (= res!1445693 (validRegex!4709 (regex!5549 rule!403)))))

(assert (=> d!1056410 (= (ruleValid!1814 thiss!23823 rule!403) e!2216860)))

(declare-fun b!3582836 () Bool)

(declare-fun res!1445694 () Bool)

(assert (=> b!3582836 (=> (not res!1445694) (not e!2216860))))

(assert (=> b!3582836 (= res!1445694 (not (nullable!3553 (regex!5549 rule!403))))))

(declare-fun b!3582837 () Bool)

(assert (=> b!3582837 (= e!2216860 (not (= (tag!6215 rule!403) (String!42232 ""))))))

(assert (= (and d!1056410 res!1445693) b!3582836))

(assert (= (and b!3582836 res!1445694) b!3582837))

(assert (=> d!1056410 m!4076091))

(assert (=> b!3582836 m!4076097))

(assert (=> b!3582580 d!1056410))

(declare-fun d!1056412 () Bool)

(assert (=> d!1056412 (ruleValid!1814 thiss!23823 rule!403)))

(declare-fun lt!1228900 () Unit!53646)

(declare-fun choose!20847 (LexerInterface!5138 Rule!10898 List!37772) Unit!53646)

(assert (=> d!1056412 (= lt!1228900 (choose!20847 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1056412 (contains!7157 rules!3307 rule!403)))

(assert (=> d!1056412 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!969 thiss!23823 rule!403 rules!3307) lt!1228900)))

(declare-fun bs!569906 () Bool)

(assert (= bs!569906 d!1056412))

(assert (=> bs!569906 m!4075915))

(declare-fun m!4076103 () Bool)

(assert (=> bs!569906 m!4076103))

(assert (=> bs!569906 m!4075901))

(assert (=> b!3582580 d!1056412))

(declare-fun d!1056414 () Bool)

(declare-fun lt!1228901 () Bool)

(assert (=> d!1056414 (= lt!1228901 (set.member lt!1228856 (content!5342 (usedCharacters!763 (regex!5549 rule!403)))))))

(declare-fun e!2216865 () Bool)

(assert (=> d!1056414 (= lt!1228901 e!2216865)))

(declare-fun res!1445700 () Bool)

(assert (=> d!1056414 (=> (not res!1445700) (not e!2216865))))

(assert (=> d!1056414 (= res!1445700 (is-Cons!37647 (usedCharacters!763 (regex!5549 rule!403))))))

(assert (=> d!1056414 (= (contains!7158 (usedCharacters!763 (regex!5549 rule!403)) lt!1228856) lt!1228901)))

(declare-fun b!3582842 () Bool)

(declare-fun e!2216866 () Bool)

(assert (=> b!3582842 (= e!2216865 e!2216866)))

(declare-fun res!1445699 () Bool)

(assert (=> b!3582842 (=> res!1445699 e!2216866)))

(assert (=> b!3582842 (= res!1445699 (= (h!43067 (usedCharacters!763 (regex!5549 rule!403))) lt!1228856))))

(declare-fun b!3582843 () Bool)

(assert (=> b!3582843 (= e!2216866 (contains!7158 (t!290380 (usedCharacters!763 (regex!5549 rule!403))) lt!1228856))))

(assert (= (and d!1056414 res!1445700) b!3582842))

(assert (= (and b!3582842 (not res!1445699)) b!3582843))

(assert (=> d!1056414 m!4075883))

(declare-fun m!4076105 () Bool)

(assert (=> d!1056414 m!4076105))

(declare-fun m!4076107 () Bool)

(assert (=> d!1056414 m!4076107))

(declare-fun m!4076109 () Bool)

(assert (=> b!3582843 m!4076109))

(assert (=> b!3582591 d!1056414))

(declare-fun c!620708 () Bool)

(declare-fun c!620707 () Bool)

(declare-fun call!259424 () List!37771)

(declare-fun bm!259417 () Bool)

(assert (=> bm!259417 (= call!259424 (usedCharacters!763 (ite c!620708 (reg!10637 (regex!5549 rule!403)) (ite c!620707 (regOne!21129 (regex!5549 rule!403)) (regTwo!21128 (regex!5549 rule!403))))))))

(declare-fun b!3582844 () Bool)

(declare-fun e!2216868 () List!37771)

(declare-fun call!259425 () List!37771)

(assert (=> b!3582844 (= e!2216868 call!259425)))

(declare-fun b!3582845 () Bool)

(declare-fun e!2216867 () List!37771)

(assert (=> b!3582845 (= e!2216867 e!2216868)))

(assert (=> b!3582845 (= c!620707 (is-Union!10308 (regex!5549 rule!403)))))

(declare-fun b!3582846 () Bool)

(assert (=> b!3582846 (= c!620708 (is-Star!10308 (regex!5549 rule!403)))))

(declare-fun e!2216869 () List!37771)

(assert (=> b!3582846 (= e!2216869 e!2216867)))

(declare-fun b!3582847 () Bool)

(assert (=> b!3582847 (= e!2216868 call!259425)))

(declare-fun b!3582848 () Bool)

(declare-fun e!2216870 () List!37771)

(assert (=> b!3582848 (= e!2216870 e!2216869)))

(declare-fun c!620709 () Bool)

(assert (=> b!3582848 (= c!620709 (is-ElementMatch!10308 (regex!5549 rule!403)))))

(declare-fun call!259422 () List!37771)

(declare-fun bm!259418 () Bool)

(declare-fun call!259423 () List!37771)

(assert (=> bm!259418 (= call!259425 (++!9361 (ite c!620707 call!259423 call!259422) (ite c!620707 call!259422 call!259423)))))

(declare-fun b!3582849 () Bool)

(assert (=> b!3582849 (= e!2216869 (Cons!37647 (c!620662 (regex!5549 rule!403)) Nil!37647))))

(declare-fun bm!259419 () Bool)

(assert (=> bm!259419 (= call!259422 (usedCharacters!763 (ite c!620707 (regTwo!21129 (regex!5549 rule!403)) (regOne!21128 (regex!5549 rule!403)))))))

(declare-fun b!3582850 () Bool)

(assert (=> b!3582850 (= e!2216867 call!259424)))

(declare-fun d!1056416 () Bool)

(declare-fun c!620706 () Bool)

(assert (=> d!1056416 (= c!620706 (or (is-EmptyExpr!10308 (regex!5549 rule!403)) (is-EmptyLang!10308 (regex!5549 rule!403))))))

(assert (=> d!1056416 (= (usedCharacters!763 (regex!5549 rule!403)) e!2216870)))

(declare-fun bm!259420 () Bool)

(assert (=> bm!259420 (= call!259423 call!259424)))

(declare-fun b!3582851 () Bool)

(assert (=> b!3582851 (= e!2216870 Nil!37647)))

(assert (= (and d!1056416 c!620706) b!3582851))

(assert (= (and d!1056416 (not c!620706)) b!3582848))

(assert (= (and b!3582848 c!620709) b!3582849))

(assert (= (and b!3582848 (not c!620709)) b!3582846))

(assert (= (and b!3582846 c!620708) b!3582850))

(assert (= (and b!3582846 (not c!620708)) b!3582845))

(assert (= (and b!3582845 c!620707) b!3582847))

(assert (= (and b!3582845 (not c!620707)) b!3582844))

(assert (= (or b!3582847 b!3582844) bm!259420))

(assert (= (or b!3582847 b!3582844) bm!259419))

(assert (= (or b!3582847 b!3582844) bm!259418))

(assert (= (or b!3582850 bm!259420) bm!259417))

(declare-fun m!4076111 () Bool)

(assert (=> bm!259417 m!4076111))

(declare-fun m!4076113 () Bool)

(assert (=> bm!259418 m!4076113))

(declare-fun m!4076115 () Bool)

(assert (=> bm!259419 m!4076115))

(assert (=> b!3582591 d!1056416))

(declare-fun d!1056418 () Bool)

(assert (=> d!1056418 (= (head!7466 suffix!1395) (h!43067 suffix!1395))))

(assert (=> b!3582591 d!1056418))

(declare-fun d!1056420 () Bool)

(assert (=> d!1056420 (= (isEmpty!22166 (_2!21904 lt!1228855)) (is-Nil!37647 (_2!21904 lt!1228855)))))

(assert (=> b!3582592 d!1056420))

(declare-fun d!1056422 () Bool)

(assert (=> d!1056422 true))

(declare-fun lt!1228904 () Bool)

(declare-fun lambda!123750 () Int)

(declare-fun forall!8140 (List!37772 Int) Bool)

(assert (=> d!1056422 (= lt!1228904 (forall!8140 rules!3307 lambda!123750))))

(declare-fun e!2216875 () Bool)

(assert (=> d!1056422 (= lt!1228904 e!2216875)))

(declare-fun res!1445706 () Bool)

(assert (=> d!1056422 (=> res!1445706 e!2216875)))

(assert (=> d!1056422 (= res!1445706 (not (is-Cons!37648 rules!3307)))))

(assert (=> d!1056422 (= (rulesValidInductive!1930 thiss!23823 rules!3307) lt!1228904)))

(declare-fun b!3582856 () Bool)

(declare-fun e!2216876 () Bool)

(assert (=> b!3582856 (= e!2216875 e!2216876)))

(declare-fun res!1445705 () Bool)

(assert (=> b!3582856 (=> (not res!1445705) (not e!2216876))))

(assert (=> b!3582856 (= res!1445705 (ruleValid!1814 thiss!23823 (h!43068 rules!3307)))))

(declare-fun b!3582857 () Bool)

(assert (=> b!3582857 (= e!2216876 (rulesValidInductive!1930 thiss!23823 (t!290381 rules!3307)))))

(assert (= (and d!1056422 (not res!1445706)) b!3582856))

(assert (= (and b!3582856 res!1445705) b!3582857))

(declare-fun m!4076117 () Bool)

(assert (=> d!1056422 m!4076117))

(declare-fun m!4076119 () Bool)

(assert (=> b!3582856 m!4076119))

(declare-fun m!4076121 () Bool)

(assert (=> b!3582857 m!4076121))

(assert (=> b!3582571 d!1056422))

(declare-fun d!1056424 () Bool)

(declare-fun e!2216883 () Bool)

(assert (=> d!1056424 e!2216883))

(declare-fun res!1445717 () Bool)

(assert (=> d!1056424 (=> res!1445717 e!2216883)))

(declare-fun lt!1228907 () Bool)

(assert (=> d!1056424 (= res!1445717 (not lt!1228907))))

(declare-fun e!2216884 () Bool)

(assert (=> d!1056424 (= lt!1228907 e!2216884)))

(declare-fun res!1445715 () Bool)

(assert (=> d!1056424 (=> res!1445715 e!2216884)))

(assert (=> d!1056424 (= res!1445715 (is-Nil!37647 lt!1228853))))

(assert (=> d!1056424 (= (isPrefix!2912 lt!1228853 lt!1228857) lt!1228907)))

(declare-fun b!3582870 () Bool)

(declare-fun e!2216885 () Bool)

(assert (=> b!3582870 (= e!2216885 (isPrefix!2912 (tail!5550 lt!1228853) (tail!5550 lt!1228857)))))

(declare-fun b!3582869 () Bool)

(declare-fun res!1445718 () Bool)

(assert (=> b!3582869 (=> (not res!1445718) (not e!2216885))))

(assert (=> b!3582869 (= res!1445718 (= (head!7466 lt!1228853) (head!7466 lt!1228857)))))

(declare-fun b!3582871 () Bool)

(assert (=> b!3582871 (= e!2216883 (>= (size!28691 lt!1228857) (size!28691 lt!1228853)))))

(declare-fun b!3582868 () Bool)

(assert (=> b!3582868 (= e!2216884 e!2216885)))

(declare-fun res!1445716 () Bool)

(assert (=> b!3582868 (=> (not res!1445716) (not e!2216885))))

(assert (=> b!3582868 (= res!1445716 (not (is-Nil!37647 lt!1228857)))))

(assert (= (and d!1056424 (not res!1445715)) b!3582868))

(assert (= (and b!3582868 res!1445716) b!3582869))

(assert (= (and b!3582869 res!1445718) b!3582870))

(assert (= (and d!1056424 (not res!1445717)) b!3582871))

(assert (=> b!3582870 m!4076093))

(declare-fun m!4076123 () Bool)

(assert (=> b!3582870 m!4076123))

(assert (=> b!3582870 m!4076093))

(assert (=> b!3582870 m!4076123))

(declare-fun m!4076125 () Bool)

(assert (=> b!3582870 m!4076125))

(assert (=> b!3582869 m!4076087))

(declare-fun m!4076127 () Bool)

(assert (=> b!3582869 m!4076127))

(declare-fun m!4076129 () Bool)

(assert (=> b!3582871 m!4076129))

(declare-fun m!4076131 () Bool)

(assert (=> b!3582871 m!4076131))

(assert (=> b!3582571 d!1056424))

(declare-fun d!1056426 () Bool)

(assert (=> d!1056426 (isPrefix!2912 lt!1228853 (++!9361 lt!1228853 suffix!1395))))

(declare-fun lt!1228910 () Unit!53646)

(declare-fun choose!20848 (List!37771 List!37771) Unit!53646)

(assert (=> d!1056426 (= lt!1228910 (choose!20848 lt!1228853 suffix!1395))))

(assert (=> d!1056426 (= (lemmaConcatTwoListThenFirstIsPrefix!1833 lt!1228853 suffix!1395) lt!1228910)))

(declare-fun bs!569907 () Bool)

(assert (= bs!569907 d!1056426))

(assert (=> bs!569907 m!4075937))

(assert (=> bs!569907 m!4075937))

(declare-fun m!4076133 () Bool)

(assert (=> bs!569907 m!4076133))

(declare-fun m!4076135 () Bool)

(assert (=> bs!569907 m!4076135))

(assert (=> b!3582571 d!1056426))

(declare-fun b!3582880 () Bool)

(declare-fun e!2216890 () List!37771)

(assert (=> b!3582880 (= e!2216890 suffix!1395)))

(declare-fun b!3582882 () Bool)

(declare-fun res!1445724 () Bool)

(declare-fun e!2216891 () Bool)

(assert (=> b!3582882 (=> (not res!1445724) (not e!2216891))))

(declare-fun lt!1228913 () List!37771)

(assert (=> b!3582882 (= res!1445724 (= (size!28691 lt!1228913) (+ (size!28691 lt!1228853) (size!28691 suffix!1395))))))

(declare-fun b!3582883 () Bool)

(assert (=> b!3582883 (= e!2216891 (or (not (= suffix!1395 Nil!37647)) (= lt!1228913 lt!1228853)))))

(declare-fun b!3582881 () Bool)

(assert (=> b!3582881 (= e!2216890 (Cons!37647 (h!43067 lt!1228853) (++!9361 (t!290380 lt!1228853) suffix!1395)))))

(declare-fun d!1056428 () Bool)

(assert (=> d!1056428 e!2216891))

(declare-fun res!1445723 () Bool)

(assert (=> d!1056428 (=> (not res!1445723) (not e!2216891))))

(assert (=> d!1056428 (= res!1445723 (= (content!5342 lt!1228913) (set.union (content!5342 lt!1228853) (content!5342 suffix!1395))))))

(assert (=> d!1056428 (= lt!1228913 e!2216890)))

(declare-fun c!620712 () Bool)

(assert (=> d!1056428 (= c!620712 (is-Nil!37647 lt!1228853))))

(assert (=> d!1056428 (= (++!9361 lt!1228853 suffix!1395) lt!1228913)))

(assert (= (and d!1056428 c!620712) b!3582880))

(assert (= (and d!1056428 (not c!620712)) b!3582881))

(assert (= (and d!1056428 res!1445723) b!3582882))

(assert (= (and b!3582882 res!1445724) b!3582883))

(declare-fun m!4076137 () Bool)

(assert (=> b!3582882 m!4076137))

(assert (=> b!3582882 m!4076131))

(declare-fun m!4076139 () Bool)

(assert (=> b!3582882 m!4076139))

(declare-fun m!4076141 () Bool)

(assert (=> b!3582881 m!4076141))

(declare-fun m!4076143 () Bool)

(assert (=> d!1056428 m!4076143))

(declare-fun m!4076145 () Bool)

(assert (=> d!1056428 m!4076145))

(declare-fun m!4076147 () Bool)

(assert (=> d!1056428 m!4076147))

(assert (=> b!3582571 d!1056428))

(declare-fun d!1056430 () Bool)

(declare-fun lt!1228914 () Bool)

(assert (=> d!1056430 (= lt!1228914 (set.member anOtherTypeRule!33 (content!5343 rules!3307)))))

(declare-fun e!2216892 () Bool)

(assert (=> d!1056430 (= lt!1228914 e!2216892)))

(declare-fun res!1445725 () Bool)

(assert (=> d!1056430 (=> (not res!1445725) (not e!2216892))))

(assert (=> d!1056430 (= res!1445725 (is-Cons!37648 rules!3307))))

(assert (=> d!1056430 (= (contains!7157 rules!3307 anOtherTypeRule!33) lt!1228914)))

(declare-fun b!3582884 () Bool)

(declare-fun e!2216893 () Bool)

(assert (=> b!3582884 (= e!2216892 e!2216893)))

(declare-fun res!1445726 () Bool)

(assert (=> b!3582884 (=> res!1445726 e!2216893)))

(assert (=> b!3582884 (= res!1445726 (= (h!43068 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3582885 () Bool)

(assert (=> b!3582885 (= e!2216893 (contains!7157 (t!290381 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1056430 res!1445725) b!3582884))

(assert (= (and b!3582884 (not res!1445726)) b!3582885))

(assert (=> d!1056430 m!4076069))

(declare-fun m!4076149 () Bool)

(assert (=> d!1056430 m!4076149))

(declare-fun m!4076151 () Bool)

(assert (=> b!3582885 m!4076151))

(assert (=> b!3582582 d!1056430))

(declare-fun d!1056432 () Bool)

(assert (=> d!1056432 (= (get!12124 lt!1228858) (v!37386 lt!1228858))))

(assert (=> b!3582588 d!1056432))

(declare-fun d!1056434 () Bool)

(declare-fun res!1445729 () Bool)

(declare-fun e!2216896 () Bool)

(assert (=> d!1056434 (=> (not res!1445729) (not e!2216896))))

(declare-fun rulesValid!2110 (LexerInterface!5138 List!37772) Bool)

(assert (=> d!1056434 (= res!1445729 (rulesValid!2110 thiss!23823 rules!3307))))

(assert (=> d!1056434 (= (rulesInvariant!4535 thiss!23823 rules!3307) e!2216896)))

(declare-fun b!3582888 () Bool)

(declare-datatypes ((List!37776 0))(
  ( (Nil!37652) (Cons!37652 (h!43072 String!42231) (t!290403 List!37776)) )
))
(declare-fun noDuplicateTag!2106 (LexerInterface!5138 List!37772 List!37776) Bool)

(assert (=> b!3582888 (= e!2216896 (noDuplicateTag!2106 thiss!23823 rules!3307 Nil!37652))))

(assert (= (and d!1056434 res!1445729) b!3582888))

(declare-fun m!4076153 () Bool)

(assert (=> d!1056434 m!4076153))

(declare-fun m!4076155 () Bool)

(assert (=> b!3582888 m!4076155))

(assert (=> b!3582578 d!1056434))

(declare-fun d!1056436 () Bool)

(assert (=> d!1056436 (= (inv!50957 (tag!6215 (rule!8261 token!511))) (= (mod (str.len (value!178607 (tag!6215 (rule!8261 token!511)))) 2) 0))))

(assert (=> b!3582589 d!1056436))

(declare-fun d!1056438 () Bool)

(declare-fun res!1445730 () Bool)

(declare-fun e!2216897 () Bool)

(assert (=> d!1056438 (=> (not res!1445730) (not e!2216897))))

(assert (=> d!1056438 (= res!1445730 (semiInverseModEq!2351 (toChars!7684 (transformation!5549 (rule!8261 token!511))) (toValue!7825 (transformation!5549 (rule!8261 token!511)))))))

(assert (=> d!1056438 (= (inv!50961 (transformation!5549 (rule!8261 token!511))) e!2216897)))

(declare-fun b!3582889 () Bool)

(assert (=> b!3582889 (= e!2216897 (equivClasses!2250 (toChars!7684 (transformation!5549 (rule!8261 token!511))) (toValue!7825 (transformation!5549 (rule!8261 token!511)))))))

(assert (= (and d!1056438 res!1445730) b!3582889))

(declare-fun m!4076157 () Bool)

(assert (=> d!1056438 m!4076157))

(declare-fun m!4076159 () Bool)

(assert (=> b!3582889 m!4076159))

(assert (=> b!3582589 d!1056438))

(declare-fun d!1056440 () Bool)

(declare-fun isEmpty!22170 (Option!7737) Bool)

(assert (=> d!1056440 (= (isDefined!5971 lt!1228858) (not (isEmpty!22170 lt!1228858)))))

(declare-fun bs!569908 () Bool)

(assert (= bs!569908 d!1056440))

(declare-fun m!4076161 () Bool)

(assert (=> bs!569908 m!4076161))

(assert (=> b!3582590 d!1056440))

(declare-fun b!3582908 () Bool)

(declare-fun res!1445746 () Bool)

(declare-fun e!2216906 () Bool)

(assert (=> b!3582908 (=> (not res!1445746) (not e!2216906))))

(declare-fun lt!1228926 () Option!7737)

(assert (=> b!3582908 (= res!1445746 (< (size!28691 (_2!21904 (get!12124 lt!1228926))) (size!28691 lt!1228853)))))

(declare-fun bm!259423 () Bool)

(declare-fun call!259428 () Option!7737)

(declare-fun maxPrefixOneRule!1828 (LexerInterface!5138 Rule!10898 List!37771) Option!7737)

(assert (=> bm!259423 (= call!259428 (maxPrefixOneRule!1828 thiss!23823 (h!43068 rules!3307) lt!1228853))))

(declare-fun b!3582909 () Bool)

(assert (=> b!3582909 (= e!2216906 (contains!7157 rules!3307 (rule!8261 (_1!21904 (get!12124 lt!1228926)))))))

(declare-fun b!3582910 () Bool)

(declare-fun e!2216904 () Option!7737)

(declare-fun lt!1228925 () Option!7737)

(declare-fun lt!1228929 () Option!7737)

(assert (=> b!3582910 (= e!2216904 (ite (and (is-None!7736 lt!1228925) (is-None!7736 lt!1228929)) None!7736 (ite (is-None!7736 lt!1228929) lt!1228925 (ite (is-None!7736 lt!1228925) lt!1228929 (ite (>= (size!28689 (_1!21904 (v!37386 lt!1228925))) (size!28689 (_1!21904 (v!37386 lt!1228929)))) lt!1228925 lt!1228929)))))))

(assert (=> b!3582910 (= lt!1228925 call!259428)))

(assert (=> b!3582910 (= lt!1228929 (maxPrefix!2672 thiss!23823 (t!290381 rules!3307) lt!1228853))))

(declare-fun b!3582911 () Bool)

(declare-fun res!1445750 () Bool)

(assert (=> b!3582911 (=> (not res!1445750) (not e!2216906))))

(declare-fun apply!9065 (TokenValueInjection!10986 BalanceConc!22508) TokenValue!5779)

(declare-fun seqFromList!4108 (List!37771) BalanceConc!22508)

(assert (=> b!3582911 (= res!1445750 (= (value!178608 (_1!21904 (get!12124 lt!1228926))) (apply!9065 (transformation!5549 (rule!8261 (_1!21904 (get!12124 lt!1228926)))) (seqFromList!4108 (originalCharacters!6263 (_1!21904 (get!12124 lt!1228926)))))))))

(declare-fun b!3582912 () Bool)

(declare-fun res!1445749 () Bool)

(assert (=> b!3582912 (=> (not res!1445749) (not e!2216906))))

(assert (=> b!3582912 (= res!1445749 (= (++!9361 (list!13828 (charsOf!3563 (_1!21904 (get!12124 lt!1228926)))) (_2!21904 (get!12124 lt!1228926))) lt!1228853))))

(declare-fun d!1056442 () Bool)

(declare-fun e!2216905 () Bool)

(assert (=> d!1056442 e!2216905))

(declare-fun res!1445745 () Bool)

(assert (=> d!1056442 (=> res!1445745 e!2216905)))

(assert (=> d!1056442 (= res!1445745 (isEmpty!22170 lt!1228926))))

(assert (=> d!1056442 (= lt!1228926 e!2216904)))

(declare-fun c!620715 () Bool)

(assert (=> d!1056442 (= c!620715 (and (is-Cons!37648 rules!3307) (is-Nil!37648 (t!290381 rules!3307))))))

(declare-fun lt!1228927 () Unit!53646)

(declare-fun lt!1228928 () Unit!53646)

(assert (=> d!1056442 (= lt!1228927 lt!1228928)))

(assert (=> d!1056442 (isPrefix!2912 lt!1228853 lt!1228853)))

(declare-fun lemmaIsPrefixRefl!1869 (List!37771 List!37771) Unit!53646)

(assert (=> d!1056442 (= lt!1228928 (lemmaIsPrefixRefl!1869 lt!1228853 lt!1228853))))

(assert (=> d!1056442 (rulesValidInductive!1930 thiss!23823 rules!3307)))

(assert (=> d!1056442 (= (maxPrefix!2672 thiss!23823 rules!3307 lt!1228853) lt!1228926)))

(declare-fun b!3582913 () Bool)

(declare-fun res!1445751 () Bool)

(assert (=> b!3582913 (=> (not res!1445751) (not e!2216906))))

(assert (=> b!3582913 (= res!1445751 (matchR!4877 (regex!5549 (rule!8261 (_1!21904 (get!12124 lt!1228926)))) (list!13828 (charsOf!3563 (_1!21904 (get!12124 lt!1228926))))))))

(declare-fun b!3582914 () Bool)

(assert (=> b!3582914 (= e!2216904 call!259428)))

(declare-fun b!3582915 () Bool)

(declare-fun res!1445747 () Bool)

(assert (=> b!3582915 (=> (not res!1445747) (not e!2216906))))

(assert (=> b!3582915 (= res!1445747 (= (list!13828 (charsOf!3563 (_1!21904 (get!12124 lt!1228926)))) (originalCharacters!6263 (_1!21904 (get!12124 lt!1228926)))))))

(declare-fun b!3582916 () Bool)

(assert (=> b!3582916 (= e!2216905 e!2216906)))

(declare-fun res!1445748 () Bool)

(assert (=> b!3582916 (=> (not res!1445748) (not e!2216906))))

(assert (=> b!3582916 (= res!1445748 (isDefined!5971 lt!1228926))))

(assert (= (and d!1056442 c!620715) b!3582914))

(assert (= (and d!1056442 (not c!620715)) b!3582910))

(assert (= (or b!3582914 b!3582910) bm!259423))

(assert (= (and d!1056442 (not res!1445745)) b!3582916))

(assert (= (and b!3582916 res!1445748) b!3582915))

(assert (= (and b!3582915 res!1445747) b!3582908))

(assert (= (and b!3582908 res!1445746) b!3582912))

(assert (= (and b!3582912 res!1445749) b!3582911))

(assert (= (and b!3582911 res!1445750) b!3582913))

(assert (= (and b!3582913 res!1445751) b!3582909))

(declare-fun m!4076163 () Bool)

(assert (=> d!1056442 m!4076163))

(declare-fun m!4076165 () Bool)

(assert (=> d!1056442 m!4076165))

(declare-fun m!4076167 () Bool)

(assert (=> d!1056442 m!4076167))

(assert (=> d!1056442 m!4075931))

(declare-fun m!4076169 () Bool)

(assert (=> bm!259423 m!4076169))

(declare-fun m!4076171 () Bool)

(assert (=> b!3582909 m!4076171))

(declare-fun m!4076173 () Bool)

(assert (=> b!3582909 m!4076173))

(assert (=> b!3582911 m!4076171))

(declare-fun m!4076175 () Bool)

(assert (=> b!3582911 m!4076175))

(assert (=> b!3582911 m!4076175))

(declare-fun m!4076177 () Bool)

(assert (=> b!3582911 m!4076177))

(assert (=> b!3582913 m!4076171))

(declare-fun m!4076179 () Bool)

(assert (=> b!3582913 m!4076179))

(assert (=> b!3582913 m!4076179))

(declare-fun m!4076181 () Bool)

(assert (=> b!3582913 m!4076181))

(assert (=> b!3582913 m!4076181))

(declare-fun m!4076183 () Bool)

(assert (=> b!3582913 m!4076183))

(assert (=> b!3582908 m!4076171))

(declare-fun m!4076185 () Bool)

(assert (=> b!3582908 m!4076185))

(assert (=> b!3582908 m!4076131))

(assert (=> b!3582912 m!4076171))

(assert (=> b!3582912 m!4076179))

(assert (=> b!3582912 m!4076179))

(assert (=> b!3582912 m!4076181))

(assert (=> b!3582912 m!4076181))

(declare-fun m!4076187 () Bool)

(assert (=> b!3582912 m!4076187))

(assert (=> b!3582915 m!4076171))

(assert (=> b!3582915 m!4076179))

(assert (=> b!3582915 m!4076179))

(assert (=> b!3582915 m!4076181))

(declare-fun m!4076189 () Bool)

(assert (=> b!3582910 m!4076189))

(declare-fun m!4076191 () Bool)

(assert (=> b!3582916 m!4076191))

(assert (=> b!3582590 d!1056442))

(declare-fun d!1056444 () Bool)

(declare-fun list!13830 (Conc!11447) List!37771)

(assert (=> d!1056444 (= (list!13828 (charsOf!3563 token!511)) (list!13830 (c!620663 (charsOf!3563 token!511))))))

(declare-fun bs!569909 () Bool)

(assert (= bs!569909 d!1056444))

(declare-fun m!4076193 () Bool)

(assert (=> bs!569909 m!4076193))

(assert (=> b!3582590 d!1056444))

(declare-fun d!1056446 () Bool)

(declare-fun lt!1228932 () BalanceConc!22508)

(assert (=> d!1056446 (= (list!13828 lt!1228932) (originalCharacters!6263 token!511))))

(assert (=> d!1056446 (= lt!1228932 (dynLambda!16187 (toChars!7684 (transformation!5549 (rule!8261 token!511))) (value!178608 token!511)))))

(assert (=> d!1056446 (= (charsOf!3563 token!511) lt!1228932)))

(declare-fun b_lambda!105877 () Bool)

(assert (=> (not b_lambda!105877) (not d!1056446)))

(assert (=> d!1056446 t!290386))

(declare-fun b_and!258615 () Bool)

(assert (= b_and!258607 (and (=> t!290386 result!249186) b_and!258615)))

(assert (=> d!1056446 t!290388))

(declare-fun b_and!258617 () Bool)

(assert (= b_and!258609 (and (=> t!290388 result!249190) b_and!258617)))

(assert (=> d!1056446 t!290390))

(declare-fun b_and!258619 () Bool)

(assert (= b_and!258611 (and (=> t!290390 result!249192) b_and!258619)))

(assert (=> d!1056446 t!290392))

(declare-fun b_and!258621 () Bool)

(assert (= b_and!258613 (and (=> t!290392 result!249194) b_and!258621)))

(declare-fun m!4076195 () Bool)

(assert (=> d!1056446 m!4076195))

(assert (=> d!1056446 m!4076033))

(assert (=> b!3582590 d!1056446))

(declare-fun b!3582921 () Bool)

(declare-fun e!2216909 () Bool)

(declare-fun tp!1096880 () Bool)

(assert (=> b!3582921 (= e!2216909 (and tp_is_empty!17699 tp!1096880))))

(assert (=> b!3582596 (= tp!1096819 e!2216909)))

(assert (= (and b!3582596 (is-Cons!37647 (originalCharacters!6263 token!511))) b!3582921))

(declare-fun b!3582935 () Bool)

(declare-fun e!2216912 () Bool)

(declare-fun tp!1096893 () Bool)

(declare-fun tp!1096892 () Bool)

(assert (=> b!3582935 (= e!2216912 (and tp!1096893 tp!1096892))))

(declare-fun b!3582932 () Bool)

(assert (=> b!3582932 (= e!2216912 tp_is_empty!17699)))

(declare-fun b!3582934 () Bool)

(declare-fun tp!1096894 () Bool)

(assert (=> b!3582934 (= e!2216912 tp!1096894)))

(assert (=> b!3582575 (= tp!1096820 e!2216912)))

(declare-fun b!3582933 () Bool)

(declare-fun tp!1096895 () Bool)

(declare-fun tp!1096891 () Bool)

(assert (=> b!3582933 (= e!2216912 (and tp!1096895 tp!1096891))))

(assert (= (and b!3582575 (is-ElementMatch!10308 (regex!5549 anOtherTypeRule!33))) b!3582932))

(assert (= (and b!3582575 (is-Concat!16088 (regex!5549 anOtherTypeRule!33))) b!3582933))

(assert (= (and b!3582575 (is-Star!10308 (regex!5549 anOtherTypeRule!33))) b!3582934))

(assert (= (and b!3582575 (is-Union!10308 (regex!5549 anOtherTypeRule!33))) b!3582935))

(declare-fun b!3582946 () Bool)

(declare-fun b_free!92145 () Bool)

(declare-fun b_next!92849 () Bool)

(assert (=> b!3582946 (= b_free!92145 (not b_next!92849))))

(declare-fun tp!1096906 () Bool)

(declare-fun b_and!258623 () Bool)

(assert (=> b!3582946 (= tp!1096906 b_and!258623)))

(declare-fun b_free!92147 () Bool)

(declare-fun b_next!92851 () Bool)

(assert (=> b!3582946 (= b_free!92147 (not b_next!92851))))

(declare-fun t!290394 () Bool)

(declare-fun tb!204389 () Bool)

(assert (=> (and b!3582946 (= (toChars!7684 (transformation!5549 (h!43068 (t!290381 rules!3307)))) (toChars!7684 (transformation!5549 (rule!8261 token!511)))) t!290394) tb!204389))

(declare-fun result!249202 () Bool)

(assert (= result!249202 result!249186))

(assert (=> b!3582703 t!290394))

(assert (=> d!1056446 t!290394))

(declare-fun b_and!258625 () Bool)

(declare-fun tp!1096904 () Bool)

(assert (=> b!3582946 (= tp!1096904 (and (=> t!290394 result!249202) b_and!258625))))

(declare-fun e!2216924 () Bool)

(assert (=> b!3582946 (= e!2216924 (and tp!1096906 tp!1096904))))

(declare-fun e!2216923 () Bool)

(declare-fun tp!1096905 () Bool)

(declare-fun b!3582945 () Bool)

(assert (=> b!3582945 (= e!2216923 (and tp!1096905 (inv!50957 (tag!6215 (h!43068 (t!290381 rules!3307)))) (inv!50961 (transformation!5549 (h!43068 (t!290381 rules!3307)))) e!2216924))))

(declare-fun b!3582944 () Bool)

(declare-fun e!2216921 () Bool)

(declare-fun tp!1096907 () Bool)

(assert (=> b!3582944 (= e!2216921 (and e!2216923 tp!1096907))))

(assert (=> b!3582581 (= tp!1096823 e!2216921)))

(assert (= b!3582945 b!3582946))

(assert (= b!3582944 b!3582945))

(assert (= (and b!3582581 (is-Cons!37648 (t!290381 rules!3307))) b!3582944))

(declare-fun m!4076197 () Bool)

(assert (=> b!3582945 m!4076197))

(declare-fun m!4076199 () Bool)

(assert (=> b!3582945 m!4076199))

(declare-fun b!3582950 () Bool)

(declare-fun e!2216925 () Bool)

(declare-fun tp!1096910 () Bool)

(declare-fun tp!1096909 () Bool)

(assert (=> b!3582950 (= e!2216925 (and tp!1096910 tp!1096909))))

(declare-fun b!3582947 () Bool)

(assert (=> b!3582947 (= e!2216925 tp_is_empty!17699)))

(declare-fun b!3582949 () Bool)

(declare-fun tp!1096911 () Bool)

(assert (=> b!3582949 (= e!2216925 tp!1096911)))

(assert (=> b!3582587 (= tp!1096822 e!2216925)))

(declare-fun b!3582948 () Bool)

(declare-fun tp!1096912 () Bool)

(declare-fun tp!1096908 () Bool)

(assert (=> b!3582948 (= e!2216925 (and tp!1096912 tp!1096908))))

(assert (= (and b!3582587 (is-ElementMatch!10308 (regex!5549 (h!43068 rules!3307)))) b!3582947))

(assert (= (and b!3582587 (is-Concat!16088 (regex!5549 (h!43068 rules!3307)))) b!3582948))

(assert (= (and b!3582587 (is-Star!10308 (regex!5549 (h!43068 rules!3307)))) b!3582949))

(assert (= (and b!3582587 (is-Union!10308 (regex!5549 (h!43068 rules!3307)))) b!3582950))

(declare-fun b!3582954 () Bool)

(declare-fun e!2216926 () Bool)

(declare-fun tp!1096915 () Bool)

(declare-fun tp!1096914 () Bool)

(assert (=> b!3582954 (= e!2216926 (and tp!1096915 tp!1096914))))

(declare-fun b!3582951 () Bool)

(assert (=> b!3582951 (= e!2216926 tp_is_empty!17699)))

(declare-fun b!3582953 () Bool)

(declare-fun tp!1096916 () Bool)

(assert (=> b!3582953 (= e!2216926 tp!1096916)))

(assert (=> b!3582589 (= tp!1096817 e!2216926)))

(declare-fun b!3582952 () Bool)

(declare-fun tp!1096917 () Bool)

(declare-fun tp!1096913 () Bool)

(assert (=> b!3582952 (= e!2216926 (and tp!1096917 tp!1096913))))

(assert (= (and b!3582589 (is-ElementMatch!10308 (regex!5549 (rule!8261 token!511)))) b!3582951))

(assert (= (and b!3582589 (is-Concat!16088 (regex!5549 (rule!8261 token!511)))) b!3582952))

(assert (= (and b!3582589 (is-Star!10308 (regex!5549 (rule!8261 token!511)))) b!3582953))

(assert (= (and b!3582589 (is-Union!10308 (regex!5549 (rule!8261 token!511)))) b!3582954))

(declare-fun b!3582958 () Bool)

(declare-fun e!2216927 () Bool)

(declare-fun tp!1096920 () Bool)

(declare-fun tp!1096919 () Bool)

(assert (=> b!3582958 (= e!2216927 (and tp!1096920 tp!1096919))))

(declare-fun b!3582955 () Bool)

(assert (=> b!3582955 (= e!2216927 tp_is_empty!17699)))

(declare-fun b!3582957 () Bool)

(declare-fun tp!1096921 () Bool)

(assert (=> b!3582957 (= e!2216927 tp!1096921)))

(assert (=> b!3582573 (= tp!1096829 e!2216927)))

(declare-fun b!3582956 () Bool)

(declare-fun tp!1096922 () Bool)

(declare-fun tp!1096918 () Bool)

(assert (=> b!3582956 (= e!2216927 (and tp!1096922 tp!1096918))))

(assert (= (and b!3582573 (is-ElementMatch!10308 (regex!5549 rule!403))) b!3582955))

(assert (= (and b!3582573 (is-Concat!16088 (regex!5549 rule!403))) b!3582956))

(assert (= (and b!3582573 (is-Star!10308 (regex!5549 rule!403))) b!3582957))

(assert (= (and b!3582573 (is-Union!10308 (regex!5549 rule!403))) b!3582958))

(declare-fun b!3582959 () Bool)

(declare-fun e!2216928 () Bool)

(declare-fun tp!1096923 () Bool)

(assert (=> b!3582959 (= e!2216928 (and tp_is_empty!17699 tp!1096923))))

(assert (=> b!3582574 (= tp!1096828 e!2216928)))

(assert (= (and b!3582574 (is-Cons!37647 (t!290380 suffix!1395))) b!3582959))

(declare-fun b_lambda!105879 () Bool)

(assert (= b_lambda!105877 (or (and b!3582576 b_free!92123 (= (toChars!7684 (transformation!5549 anOtherTypeRule!33)) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582946 b_free!92147 (= (toChars!7684 (transformation!5549 (h!43068 (t!290381 rules!3307)))) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582585 b_free!92127 (= (toChars!7684 (transformation!5549 rule!403)) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582594 b_free!92119 (= (toChars!7684 (transformation!5549 (h!43068 rules!3307))) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582593 b_free!92115) b_lambda!105879)))

(declare-fun b_lambda!105881 () Bool)

(assert (= b_lambda!105875 (or (and b!3582576 b_free!92123 (= (toChars!7684 (transformation!5549 anOtherTypeRule!33)) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582946 b_free!92147 (= (toChars!7684 (transformation!5549 (h!43068 (t!290381 rules!3307)))) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582585 b_free!92127 (= (toChars!7684 (transformation!5549 rule!403)) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582594 b_free!92119 (= (toChars!7684 (transformation!5549 (h!43068 rules!3307))) (toChars!7684 (transformation!5549 (rule!8261 token!511))))) (and b!3582593 b_free!92115) b_lambda!105881)))

(push 1)

(assert (not b!3582953))

(assert (not d!1056446))

(assert (not b!3582957))

(assert b_and!258579)

(assert (not b_next!92825))

(assert (not bm!259400))

(assert (not b!3582958))

(assert (not b!3582710))

(assert (not b!3582913))

(assert (not b!3582945))

(assert (not d!1056430))

(assert (not b!3582857))

(assert b_and!258625)

(assert (not b!3582827))

(assert b_and!258587)

(assert (not d!1056428))

(assert (not b!3582944))

(assert (not b!3582952))

(assert (not b!3582933))

(assert (not d!1056426))

(assert (not b!3582775))

(assert (not d!1056412))

(assert (not b_next!92827))

(assert (not bm!259398))

(assert (not b!3582697))

(assert (not b_next!92823))

(assert (not b!3582689))

(assert (not b!3582912))

(assert (not b!3582722))

(assert (not bm!259419))

(assert (not bm!259418))

(assert (not b!3582915))

(assert (not b!3582869))

(assert (not bm!259417))

(assert (not b!3582685))

(assert (not b_lambda!105879))

(assert (not bm!259416))

(assert tp_is_empty!17699)

(assert (not b_next!92851))

(assert (not b!3582935))

(assert (not tb!204381))

(assert (not d!1056422))

(assert (not b!3582692))

(assert b_and!258583)

(assert (not b!3582916))

(assert (not bm!259399))

(assert (not b!3582885))

(assert (not b!3582882))

(assert (not bm!259423))

(assert (not b_next!92831))

(assert (not b!3582871))

(assert b_and!258619)

(assert b_and!258617)

(assert (not b!3582818))

(assert (not b!3582956))

(assert (not b!3582881))

(assert (not d!1056400))

(assert (not b!3582709))

(assert (not b!3582910))

(assert (not b!3582908))

(assert (not d!1056440))

(assert (not b!3582825))

(assert (not b!3582703))

(assert (not b!3582909))

(assert (not b!3582888))

(assert (not d!1056396))

(assert b_and!258623)

(assert (not b!3582954))

(assert (not b!3582911))

(assert (not b!3582830))

(assert (not b!3582836))

(assert (not b!3582950))

(assert (not b!3582870))

(assert (not d!1056438))

(assert (not b_next!92817))

(assert b_and!258621)

(assert (not d!1056442))

(assert (not b_next!92819))

(assert (not b_next!92829))

(assert (not b_lambda!105881))

(assert (not d!1056386))

(assert (not b_next!92821))

(assert (not b!3582829))

(assert (not d!1056414))

(assert (not d!1056444))

(assert (not b!3582949))

(assert (not b!3582704))

(assert (not d!1056376))

(assert b_and!258575)

(assert (not b!3582921))

(assert (not b!3582686))

(assert (not b!3582889))

(assert (not d!1056402))

(assert (not b!3582822))

(assert (not b!3582856))

(assert (not b!3582948))

(assert (not b_next!92849))

(assert (not b!3582769))

(assert (not b!3582843))

(assert (not d!1056410))

(assert b_and!258615)

(assert (not b!3582698))

(assert (not b!3582959))

(assert (not d!1056382))

(assert (not d!1056372))

(assert (not b!3582934))

(assert (not d!1056434))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!92827))

(assert (not b_next!92823))

(assert (not b_next!92851))

(assert b_and!258583)

(assert (not b_next!92831))

(assert b_and!258623)

(assert (not b_next!92817))

(assert b_and!258621)

(assert (not b_next!92821))

(assert b_and!258575)

(assert (not b_next!92849))

(assert b_and!258615)

(assert b_and!258579)

(assert (not b_next!92825))

(assert b_and!258625)

(assert b_and!258587)

(assert b_and!258619)

(assert b_and!258617)

(assert (not b_next!92819))

(assert (not b_next!92829))

(check-sat)

(pop 1)

