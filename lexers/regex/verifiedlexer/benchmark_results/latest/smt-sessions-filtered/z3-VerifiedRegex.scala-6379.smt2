; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331982 () Bool)

(assert start!331982)

(declare-fun b!3580779 () Bool)

(declare-fun b_free!91913 () Bool)

(declare-fun b_next!92617 () Bool)

(assert (=> b!3580779 (= b_free!91913 (not b_next!92617))))

(declare-fun tp!1096042 () Bool)

(declare-fun b_and!258279 () Bool)

(assert (=> b!3580779 (= tp!1096042 b_and!258279)))

(declare-fun b_free!91915 () Bool)

(declare-fun b_next!92619 () Bool)

(assert (=> b!3580779 (= b_free!91915 (not b_next!92619))))

(declare-fun tp!1096051 () Bool)

(declare-fun b_and!258281 () Bool)

(assert (=> b!3580779 (= tp!1096051 b_and!258281)))

(declare-fun b!3580765 () Bool)

(declare-fun b_free!91917 () Bool)

(declare-fun b_next!92621 () Bool)

(assert (=> b!3580765 (= b_free!91917 (not b_next!92621))))

(declare-fun tp!1096045 () Bool)

(declare-fun b_and!258283 () Bool)

(assert (=> b!3580765 (= tp!1096045 b_and!258283)))

(declare-fun b_free!91919 () Bool)

(declare-fun b_next!92623 () Bool)

(assert (=> b!3580765 (= b_free!91919 (not b_next!92623))))

(declare-fun tp!1096053 () Bool)

(declare-fun b_and!258285 () Bool)

(assert (=> b!3580765 (= tp!1096053 b_and!258285)))

(declare-fun b!3580767 () Bool)

(declare-fun b_free!91921 () Bool)

(declare-fun b_next!92625 () Bool)

(assert (=> b!3580767 (= b_free!91921 (not b_next!92625))))

(declare-fun tp!1096047 () Bool)

(declare-fun b_and!258287 () Bool)

(assert (=> b!3580767 (= tp!1096047 b_and!258287)))

(declare-fun b_free!91923 () Bool)

(declare-fun b_next!92627 () Bool)

(assert (=> b!3580767 (= b_free!91923 (not b_next!92627))))

(declare-fun tp!1096052 () Bool)

(declare-fun b_and!258289 () Bool)

(assert (=> b!3580767 (= tp!1096052 b_and!258289)))

(declare-fun b!3580774 () Bool)

(declare-fun b_free!91925 () Bool)

(declare-fun b_next!92629 () Bool)

(assert (=> b!3580774 (= b_free!91925 (not b_next!92629))))

(declare-fun tp!1096046 () Bool)

(declare-fun b_and!258291 () Bool)

(assert (=> b!3580774 (= tp!1096046 b_and!258291)))

(declare-fun b_free!91927 () Bool)

(declare-fun b_next!92631 () Bool)

(assert (=> b!3580774 (= b_free!91927 (not b_next!92631))))

(declare-fun tp!1096043 () Bool)

(declare-fun b_and!258293 () Bool)

(assert (=> b!3580774 (= tp!1096043 b_and!258293)))

(declare-fun e!2215458 () Bool)

(assert (=> b!3580765 (= e!2215458 (and tp!1096045 tp!1096053))))

(declare-fun e!2215444 () Bool)

(assert (=> b!3580767 (= e!2215444 (and tp!1096047 tp!1096052))))

(declare-fun b!3580768 () Bool)

(declare-fun res!1444669 () Bool)

(declare-fun e!2215451 () Bool)

(assert (=> b!3580768 (=> (not res!1444669) (not e!2215451))))

(declare-datatypes ((List!37731 0))(
  ( (Nil!37607) (Cons!37607 (h!43027 (_ BitVec 16)) (t!290280 List!37731)) )
))
(declare-datatypes ((TokenValue!5768 0))(
  ( (FloatLiteralValue!11536 (text!40821 List!37731)) (TokenValueExt!5767 (__x!23753 Int)) (Broken!28840 (value!178267 List!37731)) (Object!5891) (End!5768) (Def!5768) (Underscore!5768) (Match!5768) (Else!5768) (Error!5768) (Case!5768) (If!5768) (Extends!5768) (Abstract!5768) (Class!5768) (Val!5768) (DelimiterValue!11536 (del!5828 List!37731)) (KeywordValue!5774 (value!178268 List!37731)) (CommentValue!11536 (value!178269 List!37731)) (WhitespaceValue!11536 (value!178270 List!37731)) (IndentationValue!5768 (value!178271 List!37731)) (String!42173) (Int32!5768) (Broken!28841 (value!178272 List!37731)) (Boolean!5769) (Unit!53618) (OperatorValue!5771 (op!5828 List!37731)) (IdentifierValue!11536 (value!178273 List!37731)) (IdentifierValue!11537 (value!178274 List!37731)) (WhitespaceValue!11537 (value!178275 List!37731)) (True!11536) (False!11536) (Broken!28842 (value!178276 List!37731)) (Broken!28843 (value!178277 List!37731)) (True!11537) (RightBrace!5768) (RightBracket!5768) (Colon!5768) (Null!5768) (Comma!5768) (LeftBracket!5768) (False!11537) (LeftBrace!5768) (ImaginaryLiteralValue!5768 (text!40822 List!37731)) (StringLiteralValue!17304 (value!178278 List!37731)) (EOFValue!5768 (value!178279 List!37731)) (IdentValue!5768 (value!178280 List!37731)) (DelimiterValue!11537 (value!178281 List!37731)) (DedentValue!5768 (value!178282 List!37731)) (NewLineValue!5768 (value!178283 List!37731)) (IntegerValue!17304 (value!178284 (_ BitVec 32)) (text!40823 List!37731)) (IntegerValue!17305 (value!178285 Int) (text!40824 List!37731)) (Times!5768) (Or!5768) (Equal!5768) (Minus!5768) (Broken!28844 (value!178286 List!37731)) (And!5768) (Div!5768) (LessEqual!5768) (Mod!5768) (Concat!16065) (Not!5768) (Plus!5768) (SpaceValue!5768 (value!178287 List!37731)) (IntegerValue!17306 (value!178288 Int) (text!40825 List!37731)) (StringLiteralValue!17305 (text!40826 List!37731)) (FloatLiteralValue!11537 (text!40827 List!37731)) (BytesLiteralValue!5768 (value!178289 List!37731)) (CommentValue!11537 (value!178290 List!37731)) (StringLiteralValue!17306 (value!178291 List!37731)) (ErrorTokenValue!5768 (msg!5829 List!37731)) )
))
(declare-datatypes ((C!20780 0))(
  ( (C!20781 (val!12438 Int)) )
))
(declare-datatypes ((Regex!10297 0))(
  ( (ElementMatch!10297 (c!620471 C!20780)) (Concat!16066 (regOne!21106 Regex!10297) (regTwo!21106 Regex!10297)) (EmptyExpr!10297) (Star!10297 (reg!10626 Regex!10297)) (EmptyLang!10297) (Union!10297 (regOne!21107 Regex!10297) (regTwo!21107 Regex!10297)) )
))
(declare-datatypes ((String!42174 0))(
  ( (String!42175 (value!178292 String)) )
))
(declare-datatypes ((List!37732 0))(
  ( (Nil!37608) (Cons!37608 (h!43028 C!20780) (t!290281 List!37732)) )
))
(declare-datatypes ((IArray!22877 0))(
  ( (IArray!22878 (innerList!11496 List!37732)) )
))
(declare-datatypes ((Conc!11436 0))(
  ( (Node!11436 (left!29411 Conc!11436) (right!29741 Conc!11436) (csize!23102 Int) (cheight!11647 Int)) (Leaf!17816 (xs!14638 IArray!22877) (csize!23103 Int)) (Empty!11436) )
))
(declare-datatypes ((BalanceConc!22486 0))(
  ( (BalanceConc!22487 (c!620472 Conc!11436)) )
))
(declare-datatypes ((TokenValueInjection!10964 0))(
  ( (TokenValueInjection!10965 (toValue!7814 Int) (toChars!7673 Int)) )
))
(declare-datatypes ((Rule!10876 0))(
  ( (Rule!10877 (regex!5538 Regex!10297) (tag!6204 String!42174) (isSeparator!5538 Bool) (transformation!5538 TokenValueInjection!10964)) )
))
(declare-datatypes ((Token!10442 0))(
  ( (Token!10443 (value!178293 TokenValue!5768) (rule!8250 Rule!10876) (size!28672 Int) (originalCharacters!6252 List!37732)) )
))
(declare-datatypes ((tuple2!37518 0))(
  ( (tuple2!37519 (_1!21893 Token!10442) (_2!21893 List!37732)) )
))
(declare-datatypes ((Option!7726 0))(
  ( (None!7725) (Some!7725 (v!37367 tuple2!37518)) )
))
(declare-fun lt!1228531 () Option!7726)

(declare-fun token!511 () Token!10442)

(declare-fun get!12107 (Option!7726) tuple2!37518)

(assert (=> b!3580768 (= res!1444669 (= (_1!21893 (get!12107 lt!1228531)) token!511))))

(declare-fun tp!1096049 () Bool)

(declare-fun anOtherTypeRule!33 () Rule!10876)

(declare-fun e!2215450 () Bool)

(declare-fun e!2215446 () Bool)

(declare-fun b!3580769 () Bool)

(declare-fun inv!50905 (String!42174) Bool)

(declare-fun inv!50908 (TokenValueInjection!10964) Bool)

(assert (=> b!3580769 (= e!2215446 (and tp!1096049 (inv!50905 (tag!6204 anOtherTypeRule!33)) (inv!50908 (transformation!5538 anOtherTypeRule!33)) e!2215450))))

(declare-fun b!3580770 () Bool)

(declare-fun e!2215449 () Bool)

(declare-fun tp!1096041 () Bool)

(assert (=> b!3580770 (= e!2215449 (and tp!1096041 (inv!50905 (tag!6204 (rule!8250 token!511))) (inv!50908 (transformation!5538 (rule!8250 token!511))) e!2215444))))

(declare-fun b!3580771 () Bool)

(declare-fun res!1444671 () Bool)

(declare-fun e!2215447 () Bool)

(assert (=> b!3580771 (=> (not res!1444671) (not e!2215447))))

(declare-datatypes ((LexerInterface!5127 0))(
  ( (LexerInterfaceExt!5124 (__x!23754 Int)) (Lexer!5125) )
))
(declare-fun thiss!23823 () LexerInterface!5127)

(declare-datatypes ((List!37733 0))(
  ( (Nil!37609) (Cons!37609 (h!43029 Rule!10876) (t!290282 List!37733)) )
))
(declare-fun rules!3307 () List!37733)

(declare-fun rulesInvariant!4524 (LexerInterface!5127 List!37733) Bool)

(assert (=> b!3580771 (= res!1444671 (rulesInvariant!4524 thiss!23823 rules!3307))))

(declare-fun b!3580772 () Bool)

(assert (=> b!3580772 (= e!2215447 e!2215451)))

(declare-fun res!1444674 () Bool)

(assert (=> b!3580772 (=> (not res!1444674) (not e!2215451))))

(declare-fun isDefined!5960 (Option!7726) Bool)

(assert (=> b!3580772 (= res!1444674 (isDefined!5960 lt!1228531))))

(declare-fun maxPrefix!2661 (LexerInterface!5127 List!37733 List!37732) Option!7726)

(declare-fun list!13812 (BalanceConc!22486) List!37732)

(declare-fun charsOf!3552 (Token!10442) BalanceConc!22486)

(assert (=> b!3580772 (= lt!1228531 (maxPrefix!2661 thiss!23823 rules!3307 (list!13812 (charsOf!3552 token!511))))))

(declare-fun b!3580773 () Bool)

(declare-fun e!2215445 () Bool)

(declare-fun e!2215459 () Bool)

(declare-fun tp!1096050 () Bool)

(assert (=> b!3580773 (= e!2215445 (and e!2215459 tp!1096050))))

(assert (=> b!3580774 (= e!2215450 (and tp!1096046 tp!1096043))))

(declare-fun b!3580775 () Bool)

(assert (=> b!3580775 (= e!2215451 false)))

(declare-fun lt!1228532 () Bool)

(declare-fun rulesValidInductive!1921 (LexerInterface!5127 List!37733) Bool)

(assert (=> b!3580775 (= lt!1228532 (rulesValidInductive!1921 thiss!23823 rules!3307))))

(declare-fun e!2215456 () Bool)

(declare-fun b!3580776 () Bool)

(declare-fun e!2215448 () Bool)

(declare-fun rule!403 () Rule!10876)

(declare-fun tp!1096048 () Bool)

(assert (=> b!3580776 (= e!2215456 (and tp!1096048 (inv!50905 (tag!6204 rule!403)) (inv!50908 (transformation!5538 rule!403)) e!2215448))))

(declare-fun b!3580777 () Bool)

(declare-fun res!1444670 () Bool)

(assert (=> b!3580777 (=> (not res!1444670) (not e!2215447))))

(declare-fun contains!7142 (List!37733 Rule!10876) Bool)

(assert (=> b!3580777 (= res!1444670 (contains!7142 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3580778 () Bool)

(declare-fun res!1444673 () Bool)

(assert (=> b!3580778 (=> (not res!1444673) (not e!2215447))))

(assert (=> b!3580778 (= res!1444673 (not (= (isSeparator!5538 anOtherTypeRule!33) (isSeparator!5538 rule!403))))))

(assert (=> b!3580779 (= e!2215448 (and tp!1096042 tp!1096051))))

(declare-fun b!3580780 () Bool)

(declare-fun res!1444676 () Bool)

(assert (=> b!3580780 (=> (not res!1444676) (not e!2215447))))

(assert (=> b!3580780 (= res!1444676 (contains!7142 rules!3307 rule!403))))

(declare-fun b!3580781 () Bool)

(declare-fun e!2215457 () Bool)

(declare-fun tp!1096044 () Bool)

(declare-fun inv!21 (TokenValue!5768) Bool)

(assert (=> b!3580781 (= e!2215457 (and (inv!21 (value!178293 token!511)) e!2215449 tp!1096044))))

(declare-fun tp!1096054 () Bool)

(declare-fun b!3580782 () Bool)

(assert (=> b!3580782 (= e!2215459 (and tp!1096054 (inv!50905 (tag!6204 (h!43029 rules!3307))) (inv!50908 (transformation!5538 (h!43029 rules!3307))) e!2215458))))

(declare-fun res!1444675 () Bool)

(assert (=> start!331982 (=> (not res!1444675) (not e!2215447))))

(get-info :version)

(assert (=> start!331982 (= res!1444675 ((_ is Lexer!5125) thiss!23823))))

(assert (=> start!331982 e!2215447))

(assert (=> start!331982 e!2215445))

(assert (=> start!331982 true))

(declare-fun inv!50909 (Token!10442) Bool)

(assert (=> start!331982 (and (inv!50909 token!511) e!2215457)))

(assert (=> start!331982 e!2215456))

(assert (=> start!331982 e!2215446))

(declare-fun b!3580766 () Bool)

(declare-fun res!1444672 () Bool)

(assert (=> b!3580766 (=> (not res!1444672) (not e!2215447))))

(declare-fun isEmpty!22139 (List!37733) Bool)

(assert (=> b!3580766 (= res!1444672 (not (isEmpty!22139 rules!3307)))))

(assert (= (and start!331982 res!1444675) b!3580766))

(assert (= (and b!3580766 res!1444672) b!3580771))

(assert (= (and b!3580771 res!1444671) b!3580780))

(assert (= (and b!3580780 res!1444676) b!3580777))

(assert (= (and b!3580777 res!1444670) b!3580778))

(assert (= (and b!3580778 res!1444673) b!3580772))

(assert (= (and b!3580772 res!1444674) b!3580768))

(assert (= (and b!3580768 res!1444669) b!3580775))

(assert (= b!3580782 b!3580765))

(assert (= b!3580773 b!3580782))

(assert (= (and start!331982 ((_ is Cons!37609) rules!3307)) b!3580773))

(assert (= b!3580770 b!3580767))

(assert (= b!3580781 b!3580770))

(assert (= start!331982 b!3580781))

(assert (= b!3580776 b!3580779))

(assert (= start!331982 b!3580776))

(assert (= b!3580769 b!3580774))

(assert (= start!331982 b!3580769))

(declare-fun m!4074625 () Bool)

(assert (=> b!3580782 m!4074625))

(declare-fun m!4074627 () Bool)

(assert (=> b!3580782 m!4074627))

(declare-fun m!4074629 () Bool)

(assert (=> b!3580781 m!4074629))

(declare-fun m!4074631 () Bool)

(assert (=> b!3580768 m!4074631))

(declare-fun m!4074633 () Bool)

(assert (=> start!331982 m!4074633))

(declare-fun m!4074635 () Bool)

(assert (=> b!3580772 m!4074635))

(declare-fun m!4074637 () Bool)

(assert (=> b!3580772 m!4074637))

(assert (=> b!3580772 m!4074637))

(declare-fun m!4074639 () Bool)

(assert (=> b!3580772 m!4074639))

(assert (=> b!3580772 m!4074639))

(declare-fun m!4074641 () Bool)

(assert (=> b!3580772 m!4074641))

(declare-fun m!4074643 () Bool)

(assert (=> b!3580771 m!4074643))

(declare-fun m!4074645 () Bool)

(assert (=> b!3580780 m!4074645))

(declare-fun m!4074647 () Bool)

(assert (=> b!3580777 m!4074647))

(declare-fun m!4074649 () Bool)

(assert (=> b!3580770 m!4074649))

(declare-fun m!4074651 () Bool)

(assert (=> b!3580770 m!4074651))

(declare-fun m!4074653 () Bool)

(assert (=> b!3580766 m!4074653))

(declare-fun m!4074655 () Bool)

(assert (=> b!3580776 m!4074655))

(declare-fun m!4074657 () Bool)

(assert (=> b!3580776 m!4074657))

(declare-fun m!4074659 () Bool)

(assert (=> b!3580775 m!4074659))

(declare-fun m!4074661 () Bool)

(assert (=> b!3580769 m!4074661))

(declare-fun m!4074663 () Bool)

(assert (=> b!3580769 m!4074663))

(check-sat (not b_next!92627) b_and!258279 (not b!3580770) (not b!3580782) (not b_next!92629) b_and!258293 (not b_next!92623) (not b!3580772) (not b!3580781) (not b_next!92617) b_and!258289 (not b!3580773) (not b!3580776) (not b_next!92631) (not b!3580780) (not b!3580777) b_and!258285 (not b_next!92621) (not b!3580768) (not b_next!92619) (not b!3580769) b_and!258291 b_and!258281 (not start!331982) b_and!258283 (not b_next!92625) (not b!3580766) b_and!258287 (not b!3580775) (not b!3580771))
(check-sat (not b_next!92627) b_and!258279 (not b_next!92631) b_and!258285 (not b_next!92621) (not b_next!92629) (not b_next!92619) b_and!258293 (not b_next!92623) (not b_next!92617) b_and!258287 b_and!258289 b_and!258291 b_and!258281 b_and!258283 (not b_next!92625))
