; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!331862 () Bool)

(assert start!331862)

(declare-fun b!3579785 () Bool)

(declare-fun b_free!91741 () Bool)

(declare-fun b_next!92445 () Bool)

(assert (=> b!3579785 (= b_free!91741 (not b_next!92445))))

(declare-fun tp!1095439 () Bool)

(declare-fun b_and!258043 () Bool)

(assert (=> b!3579785 (= tp!1095439 b_and!258043)))

(declare-fun b_free!91743 () Bool)

(declare-fun b_next!92447 () Bool)

(assert (=> b!3579785 (= b_free!91743 (not b_next!92447))))

(declare-fun tp!1095431 () Bool)

(declare-fun b_and!258045 () Bool)

(assert (=> b!3579785 (= tp!1095431 b_and!258045)))

(declare-fun b!3579784 () Bool)

(declare-fun b_free!91745 () Bool)

(declare-fun b_next!92449 () Bool)

(assert (=> b!3579784 (= b_free!91745 (not b_next!92449))))

(declare-fun tp!1095437 () Bool)

(declare-fun b_and!258047 () Bool)

(assert (=> b!3579784 (= tp!1095437 b_and!258047)))

(declare-fun b_free!91747 () Bool)

(declare-fun b_next!92451 () Bool)

(assert (=> b!3579784 (= b_free!91747 (not b_next!92451))))

(declare-fun tp!1095433 () Bool)

(declare-fun b_and!258049 () Bool)

(assert (=> b!3579784 (= tp!1095433 b_and!258049)))

(declare-fun b!3579780 () Bool)

(declare-fun b_free!91749 () Bool)

(declare-fun b_next!92453 () Bool)

(assert (=> b!3579780 (= b_free!91749 (not b_next!92453))))

(declare-fun tp!1095440 () Bool)

(declare-fun b_and!258051 () Bool)

(assert (=> b!3579780 (= tp!1095440 b_and!258051)))

(declare-fun b_free!91751 () Bool)

(declare-fun b_next!92455 () Bool)

(assert (=> b!3579780 (= b_free!91751 (not b_next!92455))))

(declare-fun tp!1095435 () Bool)

(declare-fun b_and!258053 () Bool)

(assert (=> b!3579780 (= tp!1095435 b_and!258053)))

(declare-fun b!3579782 () Bool)

(declare-fun b_free!91753 () Bool)

(declare-fun b_next!92457 () Bool)

(assert (=> b!3579782 (= b_free!91753 (not b_next!92457))))

(declare-fun tp!1095441 () Bool)

(declare-fun b_and!258055 () Bool)

(assert (=> b!3579782 (= tp!1095441 b_and!258055)))

(declare-fun b_free!91755 () Bool)

(declare-fun b_next!92459 () Bool)

(assert (=> b!3579782 (= b_free!91755 (not b_next!92459))))

(declare-fun tp!1095432 () Bool)

(declare-fun b_and!258057 () Bool)

(assert (=> b!3579782 (= tp!1095432 b_and!258057)))

(declare-fun b!3579771 () Bool)

(declare-fun e!2214690 () Bool)

(declare-fun e!2214693 () Bool)

(declare-datatypes ((List!37699 0))(
  ( (Nil!37575) (Cons!37575 (h!42995 (_ BitVec 16)) (t!290210 List!37699)) )
))
(declare-datatypes ((TokenValue!5758 0))(
  ( (FloatLiteralValue!11516 (text!40751 List!37699)) (TokenValueExt!5757 (__x!23733 Int)) (Broken!28790 (value!177982 List!37699)) (Object!5881) (End!5758) (Def!5758) (Underscore!5758) (Match!5758) (Else!5758) (Error!5758) (Case!5758) (If!5758) (Extends!5758) (Abstract!5758) (Class!5758) (Val!5758) (DelimiterValue!11516 (del!5818 List!37699)) (KeywordValue!5764 (value!177983 List!37699)) (CommentValue!11516 (value!177984 List!37699)) (WhitespaceValue!11516 (value!177985 List!37699)) (IndentationValue!5758 (value!177986 List!37699)) (String!42123) (Int32!5758) (Broken!28791 (value!177987 List!37699)) (Boolean!5759) (Unit!53602) (OperatorValue!5761 (op!5818 List!37699)) (IdentifierValue!11516 (value!177988 List!37699)) (IdentifierValue!11517 (value!177989 List!37699)) (WhitespaceValue!11517 (value!177990 List!37699)) (True!11516) (False!11516) (Broken!28792 (value!177991 List!37699)) (Broken!28793 (value!177992 List!37699)) (True!11517) (RightBrace!5758) (RightBracket!5758) (Colon!5758) (Null!5758) (Comma!5758) (LeftBracket!5758) (False!11517) (LeftBrace!5758) (ImaginaryLiteralValue!5758 (text!40752 List!37699)) (StringLiteralValue!17274 (value!177993 List!37699)) (EOFValue!5758 (value!177994 List!37699)) (IdentValue!5758 (value!177995 List!37699)) (DelimiterValue!11517 (value!177996 List!37699)) (DedentValue!5758 (value!177997 List!37699)) (NewLineValue!5758 (value!177998 List!37699)) (IntegerValue!17274 (value!177999 (_ BitVec 32)) (text!40753 List!37699)) (IntegerValue!17275 (value!178000 Int) (text!40754 List!37699)) (Times!5758) (Or!5758) (Equal!5758) (Minus!5758) (Broken!28794 (value!178001 List!37699)) (And!5758) (Div!5758) (LessEqual!5758) (Mod!5758) (Concat!16045) (Not!5758) (Plus!5758) (SpaceValue!5758 (value!178002 List!37699)) (IntegerValue!17276 (value!178003 Int) (text!40755 List!37699)) (StringLiteralValue!17275 (text!40756 List!37699)) (FloatLiteralValue!11517 (text!40757 List!37699)) (BytesLiteralValue!5758 (value!178004 List!37699)) (CommentValue!11517 (value!178005 List!37699)) (StringLiteralValue!17276 (value!178006 List!37699)) (ErrorTokenValue!5758 (msg!5819 List!37699)) )
))
(declare-datatypes ((C!20760 0))(
  ( (C!20761 (val!12428 Int)) )
))
(declare-datatypes ((Regex!10287 0))(
  ( (ElementMatch!10287 (c!620405 C!20760)) (Concat!16046 (regOne!21086 Regex!10287) (regTwo!21086 Regex!10287)) (EmptyExpr!10287) (Star!10287 (reg!10616 Regex!10287)) (EmptyLang!10287) (Union!10287 (regOne!21087 Regex!10287) (regTwo!21087 Regex!10287)) )
))
(declare-datatypes ((String!42124 0))(
  ( (String!42125 (value!178007 String)) )
))
(declare-datatypes ((List!37700 0))(
  ( (Nil!37576) (Cons!37576 (h!42996 C!20760) (t!290211 List!37700)) )
))
(declare-datatypes ((IArray!22857 0))(
  ( (IArray!22858 (innerList!11486 List!37700)) )
))
(declare-datatypes ((Conc!11426 0))(
  ( (Node!11426 (left!29388 Conc!11426) (right!29718 Conc!11426) (csize!23082 Int) (cheight!11637 Int)) (Leaf!17801 (xs!14628 IArray!22857) (csize!23083 Int)) (Empty!11426) )
))
(declare-datatypes ((BalanceConc!22466 0))(
  ( (BalanceConc!22467 (c!620406 Conc!11426)) )
))
(declare-datatypes ((TokenValueInjection!10944 0))(
  ( (TokenValueInjection!10945 (toValue!7804 Int) (toChars!7663 Int)) )
))
(declare-datatypes ((Rule!10856 0))(
  ( (Rule!10857 (regex!5528 Regex!10287) (tag!6194 String!42124) (isSeparator!5528 Bool) (transformation!5528 TokenValueInjection!10944)) )
))
(declare-datatypes ((Token!10422 0))(
  ( (Token!10423 (value!178008 TokenValue!5758) (rule!8240 Rule!10856) (size!28659 Int) (originalCharacters!6242 List!37700)) )
))
(declare-fun token!511 () Token!10422)

(declare-fun tp!1095429 () Bool)

(declare-fun inv!21 (TokenValue!5758) Bool)

(assert (=> b!3579771 (= e!2214693 (and (inv!21 (value!178008 token!511)) e!2214690 tp!1095429))))

(declare-fun b!3579772 () Bool)

(declare-fun res!1444222 () Bool)

(declare-fun e!2214689 () Bool)

(assert (=> b!3579772 (=> (not res!1444222) (not e!2214689))))

(declare-datatypes ((LexerInterface!5117 0))(
  ( (LexerInterfaceExt!5114 (__x!23734 Int)) (Lexer!5115) )
))
(declare-fun thiss!23823 () LexerInterface!5117)

(declare-datatypes ((List!37701 0))(
  ( (Nil!37577) (Cons!37577 (h!42997 Rule!10856) (t!290212 List!37701)) )
))
(declare-fun rules!3307 () List!37701)

(declare-fun rulesInvariant!4514 (LexerInterface!5117 List!37701) Bool)

(assert (=> b!3579772 (= res!1444222 (rulesInvariant!4514 thiss!23823 rules!3307))))

(declare-fun res!1444221 () Bool)

(assert (=> start!331862 (=> (not res!1444221) (not e!2214689))))

(get-info :version)

(assert (=> start!331862 (= res!1444221 ((_ is Lexer!5115) thiss!23823))))

(assert (=> start!331862 e!2214689))

(declare-fun e!2214682 () Bool)

(assert (=> start!331862 e!2214682))

(assert (=> start!331862 true))

(declare-fun inv!50867 (Token!10422) Bool)

(assert (=> start!331862 (and (inv!50867 token!511) e!2214693)))

(declare-fun e!2214687 () Bool)

(assert (=> start!331862 e!2214687))

(declare-fun e!2214692 () Bool)

(assert (=> start!331862 e!2214692))

(declare-fun tp!1095436 () Bool)

(declare-fun b!3579773 () Bool)

(declare-fun e!2214681 () Bool)

(declare-fun inv!50864 (String!42124) Bool)

(declare-fun inv!50868 (TokenValueInjection!10944) Bool)

(assert (=> b!3579773 (= e!2214690 (and tp!1095436 (inv!50864 (tag!6194 (rule!8240 token!511))) (inv!50868 (transformation!5528 (rule!8240 token!511))) e!2214681))))

(declare-fun b!3579774 () Bool)

(assert (=> b!3579774 (= e!2214689 false)))

(declare-fun lt!1228401 () Bool)

(declare-fun rulesValidInductive!1913 (LexerInterface!5117 List!37701) Bool)

(assert (=> b!3579774 (= lt!1228401 (rulesValidInductive!1913 thiss!23823 rules!3307))))

(declare-fun lt!1228402 () List!37700)

(declare-fun list!13799 (BalanceConc!22466) List!37700)

(declare-fun charsOf!3542 (Token!10422) BalanceConc!22466)

(assert (=> b!3579774 (= lt!1228402 (list!13799 (charsOf!3542 token!511)))))

(declare-fun b!3579775 () Bool)

(declare-fun res!1444226 () Bool)

(assert (=> b!3579775 (=> (not res!1444226) (not e!2214689))))

(declare-fun rule!403 () Rule!10856)

(declare-fun contains!7132 (List!37701 Rule!10856) Bool)

(assert (=> b!3579775 (= res!1444226 (contains!7132 rules!3307 rule!403))))

(declare-fun b!3579776 () Bool)

(declare-fun e!2214688 () Bool)

(declare-fun tp!1095438 () Bool)

(assert (=> b!3579776 (= e!2214682 (and e!2214688 tp!1095438))))

(declare-fun b!3579777 () Bool)

(declare-fun res!1444224 () Bool)

(assert (=> b!3579777 (=> (not res!1444224) (not e!2214689))))

(declare-fun isEmpty!22123 (List!37701) Bool)

(assert (=> b!3579777 (= res!1444224 (not (isEmpty!22123 rules!3307)))))

(declare-fun e!2214695 () Bool)

(declare-fun b!3579778 () Bool)

(declare-fun tp!1095430 () Bool)

(assert (=> b!3579778 (= e!2214688 (and tp!1095430 (inv!50864 (tag!6194 (h!42997 rules!3307))) (inv!50868 (transformation!5528 (h!42997 rules!3307))) e!2214695))))

(declare-fun tp!1095434 () Bool)

(declare-fun b!3579779 () Bool)

(declare-fun e!2214696 () Bool)

(assert (=> b!3579779 (= e!2214687 (and tp!1095434 (inv!50864 (tag!6194 rule!403)) (inv!50868 (transformation!5528 rule!403)) e!2214696))))

(declare-fun e!2214683 () Bool)

(assert (=> b!3579780 (= e!2214683 (and tp!1095440 tp!1095435))))

(declare-fun b!3579781 () Bool)

(declare-fun res!1444223 () Bool)

(assert (=> b!3579781 (=> (not res!1444223) (not e!2214689))))

(declare-fun anOtherTypeRule!33 () Rule!10856)

(assert (=> b!3579781 (= res!1444223 (contains!7132 rules!3307 anOtherTypeRule!33))))

(assert (=> b!3579782 (= e!2214695 (and tp!1095441 tp!1095432))))

(declare-fun tp!1095442 () Bool)

(declare-fun b!3579783 () Bool)

(assert (=> b!3579783 (= e!2214692 (and tp!1095442 (inv!50864 (tag!6194 anOtherTypeRule!33)) (inv!50868 (transformation!5528 anOtherTypeRule!33)) e!2214683))))

(assert (=> b!3579784 (= e!2214681 (and tp!1095437 tp!1095433))))

(assert (=> b!3579785 (= e!2214696 (and tp!1095439 tp!1095431))))

(declare-fun b!3579786 () Bool)

(declare-fun res!1444225 () Bool)

(assert (=> b!3579786 (=> (not res!1444225) (not e!2214689))))

(assert (=> b!3579786 (= res!1444225 (not (= (isSeparator!5528 anOtherTypeRule!33) (isSeparator!5528 rule!403))))))

(assert (= (and start!331862 res!1444221) b!3579777))

(assert (= (and b!3579777 res!1444224) b!3579772))

(assert (= (and b!3579772 res!1444222) b!3579775))

(assert (= (and b!3579775 res!1444226) b!3579781))

(assert (= (and b!3579781 res!1444223) b!3579786))

(assert (= (and b!3579786 res!1444225) b!3579774))

(assert (= b!3579778 b!3579782))

(assert (= b!3579776 b!3579778))

(assert (= (and start!331862 ((_ is Cons!37577) rules!3307)) b!3579776))

(assert (= b!3579773 b!3579784))

(assert (= b!3579771 b!3579773))

(assert (= start!331862 b!3579771))

(assert (= b!3579779 b!3579785))

(assert (= start!331862 b!3579779))

(assert (= b!3579783 b!3579780))

(assert (= start!331862 b!3579783))

(declare-fun m!4073871 () Bool)

(assert (=> b!3579783 m!4073871))

(declare-fun m!4073873 () Bool)

(assert (=> b!3579783 m!4073873))

(declare-fun m!4073875 () Bool)

(assert (=> b!3579774 m!4073875))

(declare-fun m!4073877 () Bool)

(assert (=> b!3579774 m!4073877))

(assert (=> b!3579774 m!4073877))

(declare-fun m!4073879 () Bool)

(assert (=> b!3579774 m!4073879))

(declare-fun m!4073881 () Bool)

(assert (=> b!3579777 m!4073881))

(declare-fun m!4073883 () Bool)

(assert (=> b!3579772 m!4073883))

(declare-fun m!4073885 () Bool)

(assert (=> b!3579781 m!4073885))

(declare-fun m!4073887 () Bool)

(assert (=> start!331862 m!4073887))

(declare-fun m!4073889 () Bool)

(assert (=> b!3579775 m!4073889))

(declare-fun m!4073891 () Bool)

(assert (=> b!3579779 m!4073891))

(declare-fun m!4073893 () Bool)

(assert (=> b!3579779 m!4073893))

(declare-fun m!4073895 () Bool)

(assert (=> b!3579778 m!4073895))

(declare-fun m!4073897 () Bool)

(assert (=> b!3579778 m!4073897))

(declare-fun m!4073899 () Bool)

(assert (=> b!3579773 m!4073899))

(declare-fun m!4073901 () Bool)

(assert (=> b!3579773 m!4073901))

(declare-fun m!4073903 () Bool)

(assert (=> b!3579771 m!4073903))

(check-sat (not b_next!92457) (not b_next!92453) (not b!3579774) (not b!3579778) (not b_next!92449) b_and!258055 (not b!3579783) b_and!258045 b_and!258047 b_and!258057 b_and!258049 (not start!331862) b_and!258051 (not b!3579776) (not b!3579772) (not b!3579777) (not b!3579775) (not b_next!92459) (not b_next!92451) (not b!3579771) b_and!258043 (not b!3579773) (not b_next!92455) (not b_next!92445) (not b!3579779) (not b!3579781) b_and!258053 (not b_next!92447))
(check-sat (not b_next!92457) (not b_next!92453) (not b_next!92449) b_and!258043 b_and!258055 b_and!258045 b_and!258047 b_and!258057 b_and!258049 b_and!258051 (not b_next!92459) (not b_next!92451) (not b_next!92455) (not b_next!92445) b_and!258053 (not b_next!92447))
