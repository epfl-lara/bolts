; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!385482 () Bool)

(assert start!385482)

(declare-fun b!4079881 () Bool)

(declare-fun b_free!113793 () Bool)

(declare-fun b_next!114497 () Bool)

(assert (=> b!4079881 (= b_free!113793 (not b_next!114497))))

(declare-fun tp!1234995 () Bool)

(declare-fun b_and!313831 () Bool)

(assert (=> b!4079881 (= tp!1234995 b_and!313831)))

(declare-fun b_free!113795 () Bool)

(declare-fun b_next!114499 () Bool)

(assert (=> b!4079881 (= b_free!113795 (not b_next!114499))))

(declare-fun tp!1235004 () Bool)

(declare-fun b_and!313833 () Bool)

(assert (=> b!4079881 (= tp!1235004 b_and!313833)))

(declare-fun b!4079876 () Bool)

(declare-fun b_free!113797 () Bool)

(declare-fun b_next!114501 () Bool)

(assert (=> b!4079876 (= b_free!113797 (not b_next!114501))))

(declare-fun tp!1234999 () Bool)

(declare-fun b_and!313835 () Bool)

(assert (=> b!4079876 (= tp!1234999 b_and!313835)))

(declare-fun b_free!113799 () Bool)

(declare-fun b_next!114503 () Bool)

(assert (=> b!4079876 (= b_free!113799 (not b_next!114503))))

(declare-fun tp!1235000 () Bool)

(declare-fun b_and!313837 () Bool)

(assert (=> b!4079876 (= tp!1235000 b_and!313837)))

(declare-fun b!4079873 () Bool)

(declare-fun e!2532184 () Bool)

(declare-fun e!2532196 () Bool)

(assert (=> b!4079873 (= e!2532184 e!2532196)))

(declare-fun res!1666667 () Bool)

(assert (=> b!4079873 (=> res!1666667 e!2532196)))

(declare-datatypes ((List!43804 0))(
  ( (Nil!43680) (Cons!43680 (h!49100 (_ BitVec 16)) (t!337667 List!43804)) )
))
(declare-datatypes ((TokenValue!7273 0))(
  ( (FloatLiteralValue!14546 (text!51356 List!43804)) (TokenValueExt!7272 (__x!26763 Int)) (Broken!36365 (value!221353 List!43804)) (Object!7396) (End!7273) (Def!7273) (Underscore!7273) (Match!7273) (Else!7273) (Error!7273) (Case!7273) (If!7273) (Extends!7273) (Abstract!7273) (Class!7273) (Val!7273) (DelimiterValue!14546 (del!7333 List!43804)) (KeywordValue!7279 (value!221354 List!43804)) (CommentValue!14546 (value!221355 List!43804)) (WhitespaceValue!14546 (value!221356 List!43804)) (IndentationValue!7273 (value!221357 List!43804)) (String!50116) (Int32!7273) (Broken!36366 (value!221358 List!43804)) (Boolean!7274) (Unit!63219) (OperatorValue!7276 (op!7333 List!43804)) (IdentifierValue!14546 (value!221359 List!43804)) (IdentifierValue!14547 (value!221360 List!43804)) (WhitespaceValue!14547 (value!221361 List!43804)) (True!14546) (False!14546) (Broken!36367 (value!221362 List!43804)) (Broken!36368 (value!221363 List!43804)) (True!14547) (RightBrace!7273) (RightBracket!7273) (Colon!7273) (Null!7273) (Comma!7273) (LeftBracket!7273) (False!14547) (LeftBrace!7273) (ImaginaryLiteralValue!7273 (text!51357 List!43804)) (StringLiteralValue!21819 (value!221364 List!43804)) (EOFValue!7273 (value!221365 List!43804)) (IdentValue!7273 (value!221366 List!43804)) (DelimiterValue!14547 (value!221367 List!43804)) (DedentValue!7273 (value!221368 List!43804)) (NewLineValue!7273 (value!221369 List!43804)) (IntegerValue!21819 (value!221370 (_ BitVec 32)) (text!51358 List!43804)) (IntegerValue!21820 (value!221371 Int) (text!51359 List!43804)) (Times!7273) (Or!7273) (Equal!7273) (Minus!7273) (Broken!36369 (value!221372 List!43804)) (And!7273) (Div!7273) (LessEqual!7273) (Mod!7273) (Concat!19221) (Not!7273) (Plus!7273) (SpaceValue!7273 (value!221373 List!43804)) (IntegerValue!21821 (value!221374 Int) (text!51360 List!43804)) (StringLiteralValue!21820 (text!51361 List!43804)) (FloatLiteralValue!14547 (text!51362 List!43804)) (BytesLiteralValue!7273 (value!221375 List!43804)) (CommentValue!14547 (value!221376 List!43804)) (StringLiteralValue!21821 (value!221377 List!43804)) (ErrorTokenValue!7273 (msg!7334 List!43804)) )
))
(declare-datatypes ((C!24082 0))(
  ( (C!24083 (val!14151 Int)) )
))
(declare-datatypes ((Regex!11948 0))(
  ( (ElementMatch!11948 (c!703677 C!24082)) (Concat!19222 (regOne!24408 Regex!11948) (regTwo!24408 Regex!11948)) (EmptyExpr!11948) (Star!11948 (reg!12277 Regex!11948)) (EmptyLang!11948) (Union!11948 (regOne!24409 Regex!11948) (regTwo!24409 Regex!11948)) )
))
(declare-datatypes ((String!50117 0))(
  ( (String!50118 (value!221378 String)) )
))
(declare-datatypes ((List!43805 0))(
  ( (Nil!43681) (Cons!43681 (h!49101 C!24082) (t!337668 List!43805)) )
))
(declare-datatypes ((IArray!26513 0))(
  ( (IArray!26514 (innerList!13314 List!43805)) )
))
(declare-datatypes ((Conc!13254 0))(
  ( (Node!13254 (left!32834 Conc!13254) (right!33164 Conc!13254) (csize!26738 Int) (cheight!13465 Int)) (Leaf!20491 (xs!16560 IArray!26513) (csize!26739 Int)) (Empty!13254) )
))
(declare-datatypes ((BalanceConc!26102 0))(
  ( (BalanceConc!26103 (c!703678 Conc!13254)) )
))
(declare-datatypes ((TokenValueInjection!13974 0))(
  ( (TokenValueInjection!13975 (toValue!9615 Int) (toChars!9474 Int)) )
))
(declare-datatypes ((Rule!13886 0))(
  ( (Rule!13887 (regex!7043 Regex!11948) (tag!7903 String!50117) (isSeparator!7043 Bool) (transformation!7043 TokenValueInjection!13974)) )
))
(declare-datatypes ((Token!13212 0))(
  ( (Token!13213 (value!221379 TokenValue!7273) (rule!10159 Rule!13886) (size!32631 Int) (originalCharacters!7637 List!43805)) )
))
(declare-datatypes ((tuple2!42652 0))(
  ( (tuple2!42653 (_1!24460 Token!13212) (_2!24460 List!43805)) )
))
(declare-datatypes ((Option!9451 0))(
  ( (None!9450) (Some!9450 (v!39906 tuple2!42652)) )
))
(declare-fun lt!1459816 () Option!9451)

(declare-fun isEmpty!26094 (Option!9451) Bool)

(assert (=> b!4079873 (= res!1666667 (isEmpty!26094 lt!1459816))))

(declare-datatypes ((LexerInterface!6632 0))(
  ( (LexerInterfaceExt!6629 (__x!26764 Int)) (Lexer!6630) )
))
(declare-fun thiss!26199 () LexerInterface!6632)

(declare-datatypes ((List!43806 0))(
  ( (Nil!43682) (Cons!43682 (h!49102 Rule!13886) (t!337669 List!43806)) )
))
(declare-fun rules!3870 () List!43806)

(declare-fun input!3411 () List!43805)

(declare-fun maxPrefixOneRule!2918 (LexerInterface!6632 Rule!13886 List!43805) Option!9451)

(assert (=> b!4079873 (= lt!1459816 (maxPrefixOneRule!2918 thiss!26199 (h!49102 rules!3870) input!3411))))

(declare-fun rulesInvariant!5975 (LexerInterface!6632 List!43806) Bool)

(assert (=> b!4079873 (rulesInvariant!5975 thiss!26199 (t!337669 rules!3870))))

(declare-datatypes ((Unit!63220 0))(
  ( (Unit!63221) )
))
(declare-fun lt!1459817 () Unit!63220)

(declare-fun lemmaInvariantOnRulesThenOnTail!761 (LexerInterface!6632 Rule!13886 List!43806) Unit!63220)

(assert (=> b!4079873 (= lt!1459817 (lemmaInvariantOnRulesThenOnTail!761 thiss!26199 (h!49102 rules!3870) (t!337669 rules!3870)))))

(declare-fun b!4079874 () Bool)

(declare-fun e!2532193 () Bool)

(declare-fun e!2532195 () Bool)

(assert (=> b!4079874 (= e!2532193 e!2532195)))

(declare-fun res!1666669 () Bool)

(assert (=> b!4079874 (=> (not res!1666669) (not e!2532195))))

(declare-fun lt!1459820 () Option!9451)

(declare-fun maxPrefix!3924 (LexerInterface!6632 List!43806 List!43805) Option!9451)

(assert (=> b!4079874 (= res!1666669 (= (maxPrefix!3924 thiss!26199 rules!3870 input!3411) lt!1459820))))

(declare-fun lt!1459819 () BalanceConc!26102)

(declare-fun suffix!1518 () List!43805)

(declare-fun p!2988 () List!43805)

(declare-fun r!4213 () Rule!13886)

(declare-fun apply!10226 (TokenValueInjection!13974 BalanceConc!26102) TokenValue!7273)

(declare-fun size!32632 (List!43805) Int)

(assert (=> b!4079874 (= lt!1459820 (Some!9450 (tuple2!42653 (Token!13213 (apply!10226 (transformation!7043 r!4213) lt!1459819) r!4213 (size!32632 p!2988) p!2988) suffix!1518)))))

(declare-fun lt!1459814 () Unit!63220)

(declare-fun lemmaSemiInverse!2010 (TokenValueInjection!13974 BalanceConc!26102) Unit!63220)

(assert (=> b!4079874 (= lt!1459814 (lemmaSemiInverse!2010 (transformation!7043 r!4213) lt!1459819))))

(declare-fun seqFromList!5260 (List!43805) BalanceConc!26102)

(assert (=> b!4079874 (= lt!1459819 (seqFromList!5260 p!2988))))

(declare-fun b!4079875 () Bool)

(declare-fun res!1666670 () Bool)

(assert (=> b!4079875 (=> (not res!1666670) (not e!2532193))))

(declare-fun contains!8714 (List!43806 Rule!13886) Bool)

(assert (=> b!4079875 (= res!1666670 (contains!8714 rules!3870 r!4213))))

(declare-fun e!2532185 () Bool)

(assert (=> b!4079876 (= e!2532185 (and tp!1234999 tp!1235000))))

(declare-fun b!4079877 () Bool)

(declare-fun res!1666675 () Bool)

(assert (=> b!4079877 (=> (not res!1666675) (not e!2532193))))

(declare-fun isEmpty!26095 (List!43806) Bool)

(assert (=> b!4079877 (= res!1666675 (not (isEmpty!26095 rules!3870)))))

(declare-fun b!4079878 () Bool)

(declare-fun e!2532192 () Bool)

(declare-fun tp_is_empty!20899 () Bool)

(declare-fun tp!1235003 () Bool)

(assert (=> b!4079878 (= e!2532192 (and tp_is_empty!20899 tp!1235003))))

(declare-fun b!4079879 () Bool)

(declare-fun res!1666671 () Bool)

(assert (=> b!4079879 (=> (not res!1666671) (not e!2532193))))

(declare-fun ++!11449 (List!43805 List!43805) List!43805)

(assert (=> b!4079879 (= res!1666671 (= input!3411 (++!11449 p!2988 suffix!1518)))))

(declare-fun b!4079880 () Bool)

(declare-fun res!1666677 () Bool)

(assert (=> b!4079880 (=> (not res!1666677) (not e!2532193))))

(declare-fun isEmpty!26096 (List!43805) Bool)

(assert (=> b!4079880 (= res!1666677 (not (isEmpty!26096 p!2988)))))

(declare-fun e!2532194 () Bool)

(assert (=> b!4079881 (= e!2532194 (and tp!1234995 tp!1235004))))

(declare-fun res!1666673 () Bool)

(assert (=> start!385482 (=> (not res!1666673) (not e!2532193))))

(assert (=> start!385482 (= res!1666673 (is-Lexer!6630 thiss!26199))))

(assert (=> start!385482 e!2532193))

(assert (=> start!385482 true))

(declare-fun e!2532197 () Bool)

(assert (=> start!385482 e!2532197))

(declare-fun e!2532190 () Bool)

(assert (=> start!385482 e!2532190))

(declare-fun e!2532188 () Bool)

(assert (=> start!385482 e!2532188))

(assert (=> start!385482 e!2532192))

(declare-fun e!2532183 () Bool)

(assert (=> start!385482 e!2532183))

(declare-fun b!4079882 () Bool)

(declare-fun tp!1235002 () Bool)

(assert (=> b!4079882 (= e!2532197 (and tp_is_empty!20899 tp!1235002))))

(declare-fun b!4079883 () Bool)

(declare-fun res!1666668 () Bool)

(assert (=> b!4079883 (=> res!1666668 e!2532184)))

(assert (=> b!4079883 (= res!1666668 (or (and (is-Cons!43682 rules!3870) (= (h!49102 rules!3870) r!4213)) (not (is-Cons!43682 rules!3870)) (= (h!49102 rules!3870) r!4213)))))

(declare-fun b!4079884 () Bool)

(declare-fun e!2532191 () Bool)

(assert (=> b!4079884 (= e!2532196 e!2532191)))

(declare-fun res!1666676 () Bool)

(assert (=> b!4079884 (=> res!1666676 e!2532191)))

(declare-fun lt!1459818 () tuple2!42652)

(assert (=> b!4079884 (= res!1666676 (or (not (= (rule!10159 (_1!24460 lt!1459818)) (h!49102 rules!3870))) (= (rule!10159 (_1!24460 lt!1459818)) r!4213) (= lt!1459816 lt!1459820)))))

(declare-fun get!14323 (Option!9451) tuple2!42652)

(assert (=> b!4079884 (= lt!1459818 (get!14323 lt!1459816))))

(declare-fun b!4079885 () Bool)

(assert (=> b!4079885 (= e!2532195 (not e!2532184))))

(declare-fun res!1666674 () Bool)

(assert (=> b!4079885 (=> res!1666674 e!2532184)))

(declare-fun matchR!5893 (Regex!11948 List!43805) Bool)

(assert (=> b!4079885 (= res!1666674 (not (matchR!5893 (regex!7043 r!4213) p!2988)))))

(declare-fun ruleValid!2967 (LexerInterface!6632 Rule!13886) Bool)

(assert (=> b!4079885 (ruleValid!2967 thiss!26199 r!4213)))

(declare-fun lt!1459815 () Unit!63220)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2035 (LexerInterface!6632 Rule!13886 List!43806) Unit!63220)

(assert (=> b!4079885 (= lt!1459815 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2035 thiss!26199 r!4213 rules!3870))))

(declare-fun b!4079886 () Bool)

(declare-fun tp!1234997 () Bool)

(assert (=> b!4079886 (= e!2532188 (and tp_is_empty!20899 tp!1234997))))

(declare-fun b!4079887 () Bool)

(assert (=> b!4079887 (= e!2532191 (not (isEmpty!26095 (t!337669 rules!3870))))))

(declare-fun b!4079888 () Bool)

(declare-fun res!1666672 () Bool)

(assert (=> b!4079888 (=> (not res!1666672) (not e!2532193))))

(assert (=> b!4079888 (= res!1666672 (rulesInvariant!5975 thiss!26199 rules!3870))))

(declare-fun tp!1234996 () Bool)

(declare-fun b!4079889 () Bool)

(declare-fun inv!58344 (String!50117) Bool)

(declare-fun inv!58347 (TokenValueInjection!13974) Bool)

(assert (=> b!4079889 (= e!2532183 (and tp!1234996 (inv!58344 (tag!7903 r!4213)) (inv!58347 (transformation!7043 r!4213)) e!2532194))))

(declare-fun b!4079890 () Bool)

(declare-fun res!1666678 () Bool)

(assert (=> b!4079890 (=> res!1666678 e!2532191)))

(declare-fun rulesValidInductive!2592 (LexerInterface!6632 List!43806) Bool)

(assert (=> b!4079890 (= res!1666678 (not (rulesValidInductive!2592 thiss!26199 (t!337669 rules!3870))))))

(declare-fun b!4079891 () Bool)

(declare-fun e!2532189 () Bool)

(declare-fun tp!1235001 () Bool)

(assert (=> b!4079891 (= e!2532190 (and e!2532189 tp!1235001))))

(declare-fun tp!1234998 () Bool)

(declare-fun b!4079892 () Bool)

(assert (=> b!4079892 (= e!2532189 (and tp!1234998 (inv!58344 (tag!7903 (h!49102 rules!3870))) (inv!58347 (transformation!7043 (h!49102 rules!3870))) e!2532185))))

(assert (= (and start!385482 res!1666673) b!4079877))

(assert (= (and b!4079877 res!1666675) b!4079888))

(assert (= (and b!4079888 res!1666672) b!4079875))

(assert (= (and b!4079875 res!1666670) b!4079879))

(assert (= (and b!4079879 res!1666671) b!4079880))

(assert (= (and b!4079880 res!1666677) b!4079874))

(assert (= (and b!4079874 res!1666669) b!4079885))

(assert (= (and b!4079885 (not res!1666674)) b!4079883))

(assert (= (and b!4079883 (not res!1666668)) b!4079873))

(assert (= (and b!4079873 (not res!1666667)) b!4079884))

(assert (= (and b!4079884 (not res!1666676)) b!4079890))

(assert (= (and b!4079890 (not res!1666678)) b!4079887))

(assert (= (and start!385482 (is-Cons!43681 suffix!1518)) b!4079882))

(assert (= b!4079892 b!4079876))

(assert (= b!4079891 b!4079892))

(assert (= (and start!385482 (is-Cons!43682 rules!3870)) b!4079891))

(assert (= (and start!385482 (is-Cons!43681 p!2988)) b!4079886))

(assert (= (and start!385482 (is-Cons!43681 input!3411)) b!4079878))

(assert (= b!4079889 b!4079881))

(assert (= start!385482 b!4079889))

(declare-fun m!4687749 () Bool)

(assert (=> b!4079890 m!4687749))

(declare-fun m!4687751 () Bool)

(assert (=> b!4079884 m!4687751))

(declare-fun m!4687753 () Bool)

(assert (=> b!4079877 m!4687753))

(declare-fun m!4687755 () Bool)

(assert (=> b!4079888 m!4687755))

(declare-fun m!4687757 () Bool)

(assert (=> b!4079874 m!4687757))

(declare-fun m!4687759 () Bool)

(assert (=> b!4079874 m!4687759))

(declare-fun m!4687761 () Bool)

(assert (=> b!4079874 m!4687761))

(declare-fun m!4687763 () Bool)

(assert (=> b!4079874 m!4687763))

(declare-fun m!4687765 () Bool)

(assert (=> b!4079874 m!4687765))

(declare-fun m!4687767 () Bool)

(assert (=> b!4079879 m!4687767))

(declare-fun m!4687769 () Bool)

(assert (=> b!4079875 m!4687769))

(declare-fun m!4687771 () Bool)

(assert (=> b!4079885 m!4687771))

(declare-fun m!4687773 () Bool)

(assert (=> b!4079885 m!4687773))

(declare-fun m!4687775 () Bool)

(assert (=> b!4079885 m!4687775))

(declare-fun m!4687777 () Bool)

(assert (=> b!4079887 m!4687777))

(declare-fun m!4687779 () Bool)

(assert (=> b!4079880 m!4687779))

(declare-fun m!4687781 () Bool)

(assert (=> b!4079873 m!4687781))

(declare-fun m!4687783 () Bool)

(assert (=> b!4079873 m!4687783))

(declare-fun m!4687785 () Bool)

(assert (=> b!4079873 m!4687785))

(declare-fun m!4687787 () Bool)

(assert (=> b!4079873 m!4687787))

(declare-fun m!4687789 () Bool)

(assert (=> b!4079892 m!4687789))

(declare-fun m!4687791 () Bool)

(assert (=> b!4079892 m!4687791))

(declare-fun m!4687793 () Bool)

(assert (=> b!4079889 m!4687793))

(declare-fun m!4687795 () Bool)

(assert (=> b!4079889 m!4687795))

(push 1)

(assert (not b!4079882))

(assert (not b!4079891))

(assert (not b!4079885))

(assert (not b!4079886))

(assert b_and!313833)

(assert (not b!4079880))

(assert (not b!4079892))

(assert b_and!313835)

(assert (not b!4079888))

(assert (not b!4079878))

(assert (not b!4079873))

(assert (not b!4079884))

(assert (not b_next!114503))

(assert (not b_next!114497))

(assert (not b!4079889))

(assert b_and!313831)

(assert tp_is_empty!20899)

(assert (not b_next!114501))

(assert (not b!4079877))

(assert (not b!4079875))

(assert (not b!4079879))

(assert (not b!4079874))

(assert b_and!313837)

(assert (not b!4079890))

(assert (not b!4079887))

(assert (not b_next!114499))

(check-sat)

(pop 1)

(push 1)

(assert b_and!313831)

(assert (not b_next!114501))

(assert b_and!313833)

(assert b_and!313837)

(assert b_and!313835)

(assert (not b_next!114499))

(assert (not b_next!114503))

(assert (not b_next!114497))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1212005 () Bool)

(assert (=> d!1212005 (= (isEmpty!26094 lt!1459816) (not (is-Some!9450 lt!1459816)))))

(assert (=> b!4079873 d!1212005))

(declare-fun b!4079989 () Bool)

(declare-fun res!1666748 () Bool)

(declare-fun e!2532266 () Bool)

(assert (=> b!4079989 (=> (not res!1666748) (not e!2532266))))

(declare-fun lt!1459862 () Option!9451)

(assert (=> b!4079989 (= res!1666748 (< (size!32632 (_2!24460 (get!14323 lt!1459862))) (size!32632 input!3411)))))

(declare-fun b!4079990 () Bool)

(declare-fun res!1666753 () Bool)

(assert (=> b!4079990 (=> (not res!1666753) (not e!2532266))))

(declare-fun list!16243 (BalanceConc!26102) List!43805)

(declare-fun charsOf!4825 (Token!13212) BalanceConc!26102)

(assert (=> b!4079990 (= res!1666753 (= (++!11449 (list!16243 (charsOf!4825 (_1!24460 (get!14323 lt!1459862)))) (_2!24460 (get!14323 lt!1459862))) input!3411))))

(declare-fun b!4079991 () Bool)

(declare-fun e!2532265 () Bool)

(declare-datatypes ((tuple2!42656 0))(
  ( (tuple2!42657 (_1!24462 List!43805) (_2!24462 List!43805)) )
))
(declare-fun findLongestMatchInner!1436 (Regex!11948 List!43805 Int List!43805 List!43805 Int) tuple2!42656)

(assert (=> b!4079991 (= e!2532265 (matchR!5893 (regex!7043 (h!49102 rules!3870)) (_1!24462 (findLongestMatchInner!1436 (regex!7043 (h!49102 rules!3870)) Nil!43681 (size!32632 Nil!43681) input!3411 input!3411 (size!32632 input!3411)))))))

(declare-fun b!4079992 () Bool)

(declare-fun e!2532264 () Bool)

(assert (=> b!4079992 (= e!2532264 e!2532266)))

(declare-fun res!1666750 () Bool)

(assert (=> b!4079992 (=> (not res!1666750) (not e!2532266))))

(assert (=> b!4079992 (= res!1666750 (matchR!5893 (regex!7043 (h!49102 rules!3870)) (list!16243 (charsOf!4825 (_1!24460 (get!14323 lt!1459862))))))))

(declare-fun b!4079993 () Bool)

(declare-fun res!1666754 () Bool)

(assert (=> b!4079993 (=> (not res!1666754) (not e!2532266))))

(assert (=> b!4079993 (= res!1666754 (= (value!221379 (_1!24460 (get!14323 lt!1459862))) (apply!10226 (transformation!7043 (rule!10159 (_1!24460 (get!14323 lt!1459862)))) (seqFromList!5260 (originalCharacters!7637 (_1!24460 (get!14323 lt!1459862)))))))))

(declare-fun b!4079995 () Bool)

(assert (=> b!4079995 (= e!2532266 (= (size!32631 (_1!24460 (get!14323 lt!1459862))) (size!32632 (originalCharacters!7637 (_1!24460 (get!14323 lt!1459862))))))))

(declare-fun b!4079996 () Bool)

(declare-fun e!2532263 () Option!9451)

(declare-fun lt!1459861 () tuple2!42656)

(declare-fun size!32635 (BalanceConc!26102) Int)

(assert (=> b!4079996 (= e!2532263 (Some!9450 (tuple2!42653 (Token!13213 (apply!10226 (transformation!7043 (h!49102 rules!3870)) (seqFromList!5260 (_1!24462 lt!1459861))) (h!49102 rules!3870) (size!32635 (seqFromList!5260 (_1!24462 lt!1459861))) (_1!24462 lt!1459861)) (_2!24462 lt!1459861))))))

(declare-fun lt!1459859 () Unit!63220)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1409 (Regex!11948 List!43805) Unit!63220)

(assert (=> b!4079996 (= lt!1459859 (longestMatchIsAcceptedByMatchOrIsEmpty!1409 (regex!7043 (h!49102 rules!3870)) input!3411))))

(declare-fun res!1666751 () Bool)

(assert (=> b!4079996 (= res!1666751 (isEmpty!26096 (_1!24462 (findLongestMatchInner!1436 (regex!7043 (h!49102 rules!3870)) Nil!43681 (size!32632 Nil!43681) input!3411 input!3411 (size!32632 input!3411)))))))

(assert (=> b!4079996 (=> res!1666751 e!2532265)))

(assert (=> b!4079996 e!2532265))

(declare-fun lt!1459858 () Unit!63220)

(assert (=> b!4079996 (= lt!1459858 lt!1459859)))

(declare-fun lt!1459860 () Unit!63220)

(assert (=> b!4079996 (= lt!1459860 (lemmaSemiInverse!2010 (transformation!7043 (h!49102 rules!3870)) (seqFromList!5260 (_1!24462 lt!1459861))))))

(declare-fun b!4079997 () Bool)

(assert (=> b!4079997 (= e!2532263 None!9450)))

(declare-fun b!4079994 () Bool)

(declare-fun res!1666749 () Bool)

(assert (=> b!4079994 (=> (not res!1666749) (not e!2532266))))

(assert (=> b!4079994 (= res!1666749 (= (rule!10159 (_1!24460 (get!14323 lt!1459862))) (h!49102 rules!3870)))))

(declare-fun d!1212007 () Bool)

(assert (=> d!1212007 e!2532264))

(declare-fun res!1666752 () Bool)

(assert (=> d!1212007 (=> res!1666752 e!2532264)))

(assert (=> d!1212007 (= res!1666752 (isEmpty!26094 lt!1459862))))

(assert (=> d!1212007 (= lt!1459862 e!2532263)))

(declare-fun c!703687 () Bool)

(assert (=> d!1212007 (= c!703687 (isEmpty!26096 (_1!24462 lt!1459861)))))

(declare-fun findLongestMatch!1349 (Regex!11948 List!43805) tuple2!42656)

(assert (=> d!1212007 (= lt!1459861 (findLongestMatch!1349 (regex!7043 (h!49102 rules!3870)) input!3411))))

(assert (=> d!1212007 (ruleValid!2967 thiss!26199 (h!49102 rules!3870))))

(assert (=> d!1212007 (= (maxPrefixOneRule!2918 thiss!26199 (h!49102 rules!3870) input!3411) lt!1459862)))

(assert (= (and d!1212007 c!703687) b!4079997))

(assert (= (and d!1212007 (not c!703687)) b!4079996))

(assert (= (and b!4079996 (not res!1666751)) b!4079991))

(assert (= (and d!1212007 (not res!1666752)) b!4079992))

(assert (= (and b!4079992 res!1666750) b!4079990))

(assert (= (and b!4079990 res!1666753) b!4079989))

(assert (= (and b!4079989 res!1666748) b!4079994))

(assert (= (and b!4079994 res!1666749) b!4079993))

(assert (= (and b!4079993 res!1666754) b!4079995))

(declare-fun m!4687863 () Bool)

(assert (=> b!4079994 m!4687863))

(assert (=> b!4079995 m!4687863))

(declare-fun m!4687865 () Bool)

(assert (=> b!4079995 m!4687865))

(assert (=> b!4079989 m!4687863))

(declare-fun m!4687867 () Bool)

(assert (=> b!4079989 m!4687867))

(declare-fun m!4687869 () Bool)

(assert (=> b!4079989 m!4687869))

(assert (=> b!4079993 m!4687863))

(declare-fun m!4687871 () Bool)

(assert (=> b!4079993 m!4687871))

(assert (=> b!4079993 m!4687871))

(declare-fun m!4687873 () Bool)

(assert (=> b!4079993 m!4687873))

(declare-fun m!4687875 () Bool)

(assert (=> b!4079991 m!4687875))

(assert (=> b!4079991 m!4687869))

(assert (=> b!4079991 m!4687875))

(assert (=> b!4079991 m!4687869))

(declare-fun m!4687877 () Bool)

(assert (=> b!4079991 m!4687877))

(declare-fun m!4687879 () Bool)

(assert (=> b!4079991 m!4687879))

(assert (=> b!4079990 m!4687863))

(declare-fun m!4687881 () Bool)

(assert (=> b!4079990 m!4687881))

(assert (=> b!4079990 m!4687881))

(declare-fun m!4687883 () Bool)

(assert (=> b!4079990 m!4687883))

(assert (=> b!4079990 m!4687883))

(declare-fun m!4687885 () Bool)

(assert (=> b!4079990 m!4687885))

(declare-fun m!4687887 () Bool)

(assert (=> d!1212007 m!4687887))

(declare-fun m!4687889 () Bool)

(assert (=> d!1212007 m!4687889))

(declare-fun m!4687891 () Bool)

(assert (=> d!1212007 m!4687891))

(declare-fun m!4687893 () Bool)

(assert (=> d!1212007 m!4687893))

(assert (=> b!4079996 m!4687869))

(declare-fun m!4687895 () Bool)

(assert (=> b!4079996 m!4687895))

(declare-fun m!4687897 () Bool)

(assert (=> b!4079996 m!4687897))

(assert (=> b!4079996 m!4687875))

(assert (=> b!4079996 m!4687869))

(assert (=> b!4079996 m!4687877))

(assert (=> b!4079996 m!4687895))

(declare-fun m!4687899 () Bool)

(assert (=> b!4079996 m!4687899))

(assert (=> b!4079996 m!4687875))

(assert (=> b!4079996 m!4687895))

(assert (=> b!4079996 m!4687895))

(declare-fun m!4687901 () Bool)

(assert (=> b!4079996 m!4687901))

(declare-fun m!4687903 () Bool)

(assert (=> b!4079996 m!4687903))

(declare-fun m!4687905 () Bool)

(assert (=> b!4079996 m!4687905))

(assert (=> b!4079992 m!4687863))

(assert (=> b!4079992 m!4687881))

(assert (=> b!4079992 m!4687881))

(assert (=> b!4079992 m!4687883))

(assert (=> b!4079992 m!4687883))

(declare-fun m!4687907 () Bool)

(assert (=> b!4079992 m!4687907))

(assert (=> b!4079873 d!1212007))

(declare-fun d!1212017 () Bool)

(declare-fun res!1666757 () Bool)

(declare-fun e!2532269 () Bool)

(assert (=> d!1212017 (=> (not res!1666757) (not e!2532269))))

(declare-fun rulesValid!2751 (LexerInterface!6632 List!43806) Bool)

(assert (=> d!1212017 (= res!1666757 (rulesValid!2751 thiss!26199 (t!337669 rules!3870)))))

(assert (=> d!1212017 (= (rulesInvariant!5975 thiss!26199 (t!337669 rules!3870)) e!2532269)))

(declare-fun b!4080000 () Bool)

(declare-datatypes ((List!43810 0))(
  ( (Nil!43686) (Cons!43686 (h!49106 String!50117) (t!337689 List!43810)) )
))
(declare-fun noDuplicateTag!2752 (LexerInterface!6632 List!43806 List!43810) Bool)

(assert (=> b!4080000 (= e!2532269 (noDuplicateTag!2752 thiss!26199 (t!337669 rules!3870) Nil!43686))))

(assert (= (and d!1212017 res!1666757) b!4080000))

(declare-fun m!4687909 () Bool)

(assert (=> d!1212017 m!4687909))

(declare-fun m!4687911 () Bool)

(assert (=> b!4080000 m!4687911))

(assert (=> b!4079873 d!1212017))

(declare-fun d!1212019 () Bool)

(assert (=> d!1212019 (rulesInvariant!5975 thiss!26199 (t!337669 rules!3870))))

(declare-fun lt!1459865 () Unit!63220)

(declare-fun choose!24911 (LexerInterface!6632 Rule!13886 List!43806) Unit!63220)

(assert (=> d!1212019 (= lt!1459865 (choose!24911 thiss!26199 (h!49102 rules!3870) (t!337669 rules!3870)))))

(assert (=> d!1212019 (rulesInvariant!5975 thiss!26199 (Cons!43682 (h!49102 rules!3870) (t!337669 rules!3870)))))

(assert (=> d!1212019 (= (lemmaInvariantOnRulesThenOnTail!761 thiss!26199 (h!49102 rules!3870) (t!337669 rules!3870)) lt!1459865)))

(declare-fun bs!592895 () Bool)

(assert (= bs!592895 d!1212019))

(assert (=> bs!592895 m!4687785))

(declare-fun m!4687913 () Bool)

(assert (=> bs!592895 m!4687913))

(declare-fun m!4687915 () Bool)

(assert (=> bs!592895 m!4687915))

(assert (=> b!4079873 d!1212019))

(declare-fun d!1212021 () Bool)

(assert (=> d!1212021 (= (get!14323 lt!1459816) (v!39906 lt!1459816))))

(assert (=> b!4079884 d!1212021))

(declare-fun b!4080019 () Bool)

(declare-fun res!1666773 () Bool)

(declare-fun e!2532278 () Bool)

(assert (=> b!4080019 (=> (not res!1666773) (not e!2532278))))

(declare-fun lt!1459880 () Option!9451)

(assert (=> b!4080019 (= res!1666773 (= (list!16243 (charsOf!4825 (_1!24460 (get!14323 lt!1459880)))) (originalCharacters!7637 (_1!24460 (get!14323 lt!1459880)))))))

(declare-fun b!4080020 () Bool)

(declare-fun e!2532277 () Option!9451)

(declare-fun call!288663 () Option!9451)

(assert (=> b!4080020 (= e!2532277 call!288663)))

(declare-fun b!4080021 () Bool)

(declare-fun lt!1459879 () Option!9451)

(declare-fun lt!1459876 () Option!9451)

(assert (=> b!4080021 (= e!2532277 (ite (and (is-None!9450 lt!1459879) (is-None!9450 lt!1459876)) None!9450 (ite (is-None!9450 lt!1459876) lt!1459879 (ite (is-None!9450 lt!1459879) lt!1459876 (ite (>= (size!32631 (_1!24460 (v!39906 lt!1459879))) (size!32631 (_1!24460 (v!39906 lt!1459876)))) lt!1459879 lt!1459876)))))))

(assert (=> b!4080021 (= lt!1459879 call!288663)))

(assert (=> b!4080021 (= lt!1459876 (maxPrefix!3924 thiss!26199 (t!337669 rules!3870) input!3411))))

(declare-fun b!4080022 () Bool)

(declare-fun res!1666774 () Bool)

(assert (=> b!4080022 (=> (not res!1666774) (not e!2532278))))

(assert (=> b!4080022 (= res!1666774 (= (value!221379 (_1!24460 (get!14323 lt!1459880))) (apply!10226 (transformation!7043 (rule!10159 (_1!24460 (get!14323 lt!1459880)))) (seqFromList!5260 (originalCharacters!7637 (_1!24460 (get!14323 lt!1459880)))))))))

(declare-fun b!4080023 () Bool)

(declare-fun e!2532276 () Bool)

(assert (=> b!4080023 (= e!2532276 e!2532278)))

(declare-fun res!1666777 () Bool)

(assert (=> b!4080023 (=> (not res!1666777) (not e!2532278))))

(declare-fun isDefined!7161 (Option!9451) Bool)

(assert (=> b!4080023 (= res!1666777 (isDefined!7161 lt!1459880))))

(declare-fun d!1212023 () Bool)

(assert (=> d!1212023 e!2532276))

(declare-fun res!1666776 () Bool)

(assert (=> d!1212023 (=> res!1666776 e!2532276)))

(assert (=> d!1212023 (= res!1666776 (isEmpty!26094 lt!1459880))))

(assert (=> d!1212023 (= lt!1459880 e!2532277)))

(declare-fun c!703690 () Bool)

(assert (=> d!1212023 (= c!703690 (and (is-Cons!43682 rules!3870) (is-Nil!43682 (t!337669 rules!3870))))))

(declare-fun lt!1459878 () Unit!63220)

(declare-fun lt!1459877 () Unit!63220)

(assert (=> d!1212023 (= lt!1459878 lt!1459877)))

(declare-fun isPrefix!4112 (List!43805 List!43805) Bool)

(assert (=> d!1212023 (isPrefix!4112 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2663 (List!43805 List!43805) Unit!63220)

(assert (=> d!1212023 (= lt!1459877 (lemmaIsPrefixRefl!2663 input!3411 input!3411))))

(assert (=> d!1212023 (rulesValidInductive!2592 thiss!26199 rules!3870)))

(assert (=> d!1212023 (= (maxPrefix!3924 thiss!26199 rules!3870 input!3411) lt!1459880)))

(declare-fun bm!288658 () Bool)

(assert (=> bm!288658 (= call!288663 (maxPrefixOneRule!2918 thiss!26199 (h!49102 rules!3870) input!3411))))

(declare-fun b!4080024 () Bool)

(declare-fun res!1666778 () Bool)

(assert (=> b!4080024 (=> (not res!1666778) (not e!2532278))))

(assert (=> b!4080024 (= res!1666778 (< (size!32632 (_2!24460 (get!14323 lt!1459880))) (size!32632 input!3411)))))

(declare-fun b!4080025 () Bool)

(declare-fun res!1666775 () Bool)

(assert (=> b!4080025 (=> (not res!1666775) (not e!2532278))))

(assert (=> b!4080025 (= res!1666775 (matchR!5893 (regex!7043 (rule!10159 (_1!24460 (get!14323 lt!1459880)))) (list!16243 (charsOf!4825 (_1!24460 (get!14323 lt!1459880))))))))

(declare-fun b!4080026 () Bool)

(assert (=> b!4080026 (= e!2532278 (contains!8714 rules!3870 (rule!10159 (_1!24460 (get!14323 lt!1459880)))))))

(declare-fun b!4080027 () Bool)

(declare-fun res!1666772 () Bool)

(assert (=> b!4080027 (=> (not res!1666772) (not e!2532278))))

(assert (=> b!4080027 (= res!1666772 (= (++!11449 (list!16243 (charsOf!4825 (_1!24460 (get!14323 lt!1459880)))) (_2!24460 (get!14323 lt!1459880))) input!3411))))

(assert (= (and d!1212023 c!703690) b!4080020))

(assert (= (and d!1212023 (not c!703690)) b!4080021))

(assert (= (or b!4080020 b!4080021) bm!288658))

(assert (= (and d!1212023 (not res!1666776)) b!4080023))

(assert (= (and b!4080023 res!1666777) b!4080019))

(assert (= (and b!4080019 res!1666773) b!4080024))

(assert (= (and b!4080024 res!1666778) b!4080027))

(assert (= (and b!4080027 res!1666772) b!4080022))

(assert (= (and b!4080022 res!1666774) b!4080025))

(assert (= (and b!4080025 res!1666775) b!4080026))

(assert (=> bm!288658 m!4687783))

(declare-fun m!4687917 () Bool)

(assert (=> d!1212023 m!4687917))

(declare-fun m!4687919 () Bool)

(assert (=> d!1212023 m!4687919))

(declare-fun m!4687921 () Bool)

(assert (=> d!1212023 m!4687921))

(declare-fun m!4687923 () Bool)

(assert (=> d!1212023 m!4687923))

(declare-fun m!4687925 () Bool)

(assert (=> b!4080023 m!4687925))

(declare-fun m!4687927 () Bool)

(assert (=> b!4080021 m!4687927))

(declare-fun m!4687929 () Bool)

(assert (=> b!4080022 m!4687929))

(declare-fun m!4687931 () Bool)

(assert (=> b!4080022 m!4687931))

(assert (=> b!4080022 m!4687931))

(declare-fun m!4687933 () Bool)

(assert (=> b!4080022 m!4687933))

(assert (=> b!4080027 m!4687929))

(declare-fun m!4687935 () Bool)

(assert (=> b!4080027 m!4687935))

(assert (=> b!4080027 m!4687935))

(declare-fun m!4687937 () Bool)

(assert (=> b!4080027 m!4687937))

(assert (=> b!4080027 m!4687937))

(declare-fun m!4687939 () Bool)

(assert (=> b!4080027 m!4687939))

(assert (=> b!4080019 m!4687929))

(assert (=> b!4080019 m!4687935))

(assert (=> b!4080019 m!4687935))

(assert (=> b!4080019 m!4687937))

(assert (=> b!4080026 m!4687929))

(declare-fun m!4687941 () Bool)

(assert (=> b!4080026 m!4687941))

(assert (=> b!4080024 m!4687929))

(declare-fun m!4687943 () Bool)

(assert (=> b!4080024 m!4687943))

(assert (=> b!4080024 m!4687869))

(assert (=> b!4080025 m!4687929))

(assert (=> b!4080025 m!4687935))

(assert (=> b!4080025 m!4687935))

(assert (=> b!4080025 m!4687937))

(assert (=> b!4080025 m!4687937))

(declare-fun m!4687945 () Bool)

(assert (=> b!4080025 m!4687945))

(assert (=> b!4079874 d!1212023))

(declare-fun d!1212025 () Bool)

(declare-fun fromListB!2403 (List!43805) BalanceConc!26102)

(assert (=> d!1212025 (= (seqFromList!5260 p!2988) (fromListB!2403 p!2988))))

(declare-fun bs!592896 () Bool)

(assert (= bs!592896 d!1212025))

(declare-fun m!4687947 () Bool)

(assert (=> bs!592896 m!4687947))

(assert (=> b!4079874 d!1212025))

(declare-fun d!1212027 () Bool)

(declare-fun dynLambda!18597 (Int BalanceConc!26102) TokenValue!7273)

(assert (=> d!1212027 (= (apply!10226 (transformation!7043 r!4213) lt!1459819) (dynLambda!18597 (toValue!9615 (transformation!7043 r!4213)) lt!1459819))))

(declare-fun b_lambda!119303 () Bool)

(assert (=> (not b_lambda!119303) (not d!1212027)))

(declare-fun t!337674 () Bool)

(declare-fun tb!245089 () Bool)

(assert (=> (and b!4079881 (= (toValue!9615 (transformation!7043 r!4213)) (toValue!9615 (transformation!7043 r!4213))) t!337674) tb!245089))

(declare-fun result!297242 () Bool)

(declare-fun inv!21 (TokenValue!7273) Bool)

(assert (=> tb!245089 (= result!297242 (inv!21 (dynLambda!18597 (toValue!9615 (transformation!7043 r!4213)) lt!1459819)))))

(declare-fun m!4687949 () Bool)

(assert (=> tb!245089 m!4687949))

(assert (=> d!1212027 t!337674))

(declare-fun b_and!313847 () Bool)

(assert (= b_and!313831 (and (=> t!337674 result!297242) b_and!313847)))

(declare-fun tb!245091 () Bool)

(declare-fun t!337676 () Bool)

(assert (=> (and b!4079876 (= (toValue!9615 (transformation!7043 (h!49102 rules!3870))) (toValue!9615 (transformation!7043 r!4213))) t!337676) tb!245091))

(declare-fun result!297246 () Bool)

(assert (= result!297246 result!297242))

(assert (=> d!1212027 t!337676))

(declare-fun b_and!313849 () Bool)

(assert (= b_and!313835 (and (=> t!337676 result!297246) b_and!313849)))

(declare-fun m!4687951 () Bool)

(assert (=> d!1212027 m!4687951))

(assert (=> b!4079874 d!1212027))

(declare-fun d!1212029 () Bool)

(declare-fun lt!1459883 () Int)

(assert (=> d!1212029 (>= lt!1459883 0)))

(declare-fun e!2532284 () Int)

(assert (=> d!1212029 (= lt!1459883 e!2532284)))

(declare-fun c!703693 () Bool)

(assert (=> d!1212029 (= c!703693 (is-Nil!43681 p!2988))))

(assert (=> d!1212029 (= (size!32632 p!2988) lt!1459883)))

(declare-fun b!4080034 () Bool)

(assert (=> b!4080034 (= e!2532284 0)))

(declare-fun b!4080035 () Bool)

(assert (=> b!4080035 (= e!2532284 (+ 1 (size!32632 (t!337668 p!2988))))))

(assert (= (and d!1212029 c!703693) b!4080034))

(assert (= (and d!1212029 (not c!703693)) b!4080035))

(declare-fun m!4687953 () Bool)

(assert (=> b!4080035 m!4687953))

(assert (=> b!4079874 d!1212029))

(declare-fun b!4080083 () Bool)

(declare-fun e!2532313 () Bool)

(assert (=> b!4080083 (= e!2532313 true)))

(declare-fun d!1212031 () Bool)

(assert (=> d!1212031 e!2532313))

(assert (= d!1212031 b!4080083))

(declare-fun order!22863 () Int)

(declare-fun order!22865 () Int)

(declare-fun lambda!127774 () Int)

(declare-fun dynLambda!18598 (Int Int) Int)

(declare-fun dynLambda!18599 (Int Int) Int)

(assert (=> b!4080083 (< (dynLambda!18598 order!22863 (toValue!9615 (transformation!7043 r!4213))) (dynLambda!18599 order!22865 lambda!127774))))

(declare-fun order!22867 () Int)

(declare-fun dynLambda!18600 (Int Int) Int)

(assert (=> b!4080083 (< (dynLambda!18600 order!22867 (toChars!9474 (transformation!7043 r!4213))) (dynLambda!18599 order!22865 lambda!127774))))

(declare-fun dynLambda!18601 (Int TokenValue!7273) BalanceConc!26102)

(assert (=> d!1212031 (= (list!16243 (dynLambda!18601 (toChars!9474 (transformation!7043 r!4213)) (dynLambda!18597 (toValue!9615 (transformation!7043 r!4213)) lt!1459819))) (list!16243 lt!1459819))))

(declare-fun lt!1459909 () Unit!63220)

(declare-fun ForallOf!856 (Int BalanceConc!26102) Unit!63220)

(assert (=> d!1212031 (= lt!1459909 (ForallOf!856 lambda!127774 lt!1459819))))

(assert (=> d!1212031 (= (lemmaSemiInverse!2010 (transformation!7043 r!4213) lt!1459819) lt!1459909)))

(declare-fun b_lambda!119307 () Bool)

(assert (=> (not b_lambda!119307) (not d!1212031)))

(declare-fun t!337682 () Bool)

(declare-fun tb!245097 () Bool)

(assert (=> (and b!4079881 (= (toChars!9474 (transformation!7043 r!4213)) (toChars!9474 (transformation!7043 r!4213))) t!337682) tb!245097))

(declare-fun tp!1235037 () Bool)

(declare-fun b!4080088 () Bool)

(declare-fun e!2532316 () Bool)

(declare-fun inv!58349 (Conc!13254) Bool)

(assert (=> b!4080088 (= e!2532316 (and (inv!58349 (c!703678 (dynLambda!18601 (toChars!9474 (transformation!7043 r!4213)) (dynLambda!18597 (toValue!9615 (transformation!7043 r!4213)) lt!1459819)))) tp!1235037))))

(declare-fun result!297254 () Bool)

(declare-fun inv!58350 (BalanceConc!26102) Bool)

(assert (=> tb!245097 (= result!297254 (and (inv!58350 (dynLambda!18601 (toChars!9474 (transformation!7043 r!4213)) (dynLambda!18597 (toValue!9615 (transformation!7043 r!4213)) lt!1459819))) e!2532316))))

(assert (= tb!245097 b!4080088))

(declare-fun m!4688029 () Bool)

(assert (=> b!4080088 m!4688029))

(declare-fun m!4688031 () Bool)

(assert (=> tb!245097 m!4688031))

(assert (=> d!1212031 t!337682))

(declare-fun b_and!313855 () Bool)

(assert (= b_and!313833 (and (=> t!337682 result!297254) b_and!313855)))

(declare-fun tb!245099 () Bool)

(declare-fun t!337684 () Bool)

(assert (=> (and b!4079876 (= (toChars!9474 (transformation!7043 (h!49102 rules!3870))) (toChars!9474 (transformation!7043 r!4213))) t!337684) tb!245099))

(declare-fun result!297258 () Bool)

(assert (= result!297258 result!297254))

(assert (=> d!1212031 t!337684))

(declare-fun b_and!313857 () Bool)

(assert (= b_and!313837 (and (=> t!337684 result!297258) b_and!313857)))

(declare-fun b_lambda!119309 () Bool)

(assert (=> (not b_lambda!119309) (not d!1212031)))

(assert (=> d!1212031 t!337674))

(declare-fun b_and!313859 () Bool)

(assert (= b_and!313847 (and (=> t!337674 result!297242) b_and!313859)))

(assert (=> d!1212031 t!337676))

(declare-fun b_and!313861 () Bool)

(assert (= b_and!313849 (and (=> t!337676 result!297246) b_and!313861)))

(assert (=> d!1212031 m!4687951))

(assert (=> d!1212031 m!4687951))

(declare-fun m!4688033 () Bool)

(assert (=> d!1212031 m!4688033))

(assert (=> d!1212031 m!4688033))

(declare-fun m!4688035 () Bool)

(assert (=> d!1212031 m!4688035))

(declare-fun m!4688037 () Bool)

(assert (=> d!1212031 m!4688037))

(declare-fun m!4688039 () Bool)

(assert (=> d!1212031 m!4688039))

(assert (=> b!4079874 d!1212031))

(declare-fun b!4080117 () Bool)

(declare-fun res!1666826 () Bool)

(declare-fun e!2532334 () Bool)

(assert (=> b!4080117 (=> res!1666826 e!2532334)))

(declare-fun tail!6354 (List!43805) List!43805)

(assert (=> b!4080117 (= res!1666826 (not (isEmpty!26096 (tail!6354 p!2988))))))

(declare-fun b!4080118 () Bool)

(declare-fun e!2532332 () Bool)

(assert (=> b!4080118 (= e!2532332 e!2532334)))

(declare-fun res!1666825 () Bool)

(assert (=> b!4080118 (=> res!1666825 e!2532334)))

(declare-fun call!288666 () Bool)

(assert (=> b!4080118 (= res!1666825 call!288666)))

(declare-fun b!4080119 () Bool)

(declare-fun e!2532333 () Bool)

(declare-fun lt!1459912 () Bool)

(assert (=> b!4080119 (= e!2532333 (= lt!1459912 call!288666))))

(declare-fun b!4080120 () Bool)

(declare-fun res!1666827 () Bool)

(declare-fun e!2532335 () Bool)

(assert (=> b!4080120 (=> (not res!1666827) (not e!2532335))))

(assert (=> b!4080120 (= res!1666827 (isEmpty!26096 (tail!6354 p!2988)))))

(declare-fun b!4080121 () Bool)

(declare-fun head!8620 (List!43805) C!24082)

(assert (=> b!4080121 (= e!2532335 (= (head!8620 p!2988) (c!703677 (regex!7043 r!4213))))))

(declare-fun bm!288661 () Bool)

(assert (=> bm!288661 (= call!288666 (isEmpty!26096 p!2988))))

(declare-fun b!4080122 () Bool)

(declare-fun res!1666829 () Bool)

(declare-fun e!2532336 () Bool)

(assert (=> b!4080122 (=> res!1666829 e!2532336)))

(assert (=> b!4080122 (= res!1666829 e!2532335)))

(declare-fun res!1666830 () Bool)

(assert (=> b!4080122 (=> (not res!1666830) (not e!2532335))))

(assert (=> b!4080122 (= res!1666830 lt!1459912)))

(declare-fun b!4080123 () Bool)

(declare-fun e!2532337 () Bool)

(assert (=> b!4080123 (= e!2532337 (not lt!1459912))))

(declare-fun b!4080124 () Bool)

(assert (=> b!4080124 (= e!2532336 e!2532332)))

(declare-fun res!1666828 () Bool)

(assert (=> b!4080124 (=> (not res!1666828) (not e!2532332))))

(assert (=> b!4080124 (= res!1666828 (not lt!1459912))))

(declare-fun d!1212061 () Bool)

(assert (=> d!1212061 e!2532333))

(declare-fun c!703708 () Bool)

(assert (=> d!1212061 (= c!703708 (is-EmptyExpr!11948 (regex!7043 r!4213)))))

(declare-fun e!2532331 () Bool)

(assert (=> d!1212061 (= lt!1459912 e!2532331)))

(declare-fun c!703709 () Bool)

(assert (=> d!1212061 (= c!703709 (isEmpty!26096 p!2988))))

(declare-fun validRegex!5409 (Regex!11948) Bool)

(assert (=> d!1212061 (validRegex!5409 (regex!7043 r!4213))))

(assert (=> d!1212061 (= (matchR!5893 (regex!7043 r!4213) p!2988) lt!1459912)))

(declare-fun b!4080125 () Bool)

(assert (=> b!4080125 (= e!2532333 e!2532337)))

(declare-fun c!703710 () Bool)

(assert (=> b!4080125 (= c!703710 (is-EmptyLang!11948 (regex!7043 r!4213)))))

(declare-fun b!4080126 () Bool)

(declare-fun nullable!4209 (Regex!11948) Bool)

(assert (=> b!4080126 (= e!2532331 (nullable!4209 (regex!7043 r!4213)))))

(declare-fun b!4080127 () Bool)

(assert (=> b!4080127 (= e!2532334 (not (= (head!8620 p!2988) (c!703677 (regex!7043 r!4213)))))))

(declare-fun b!4080128 () Bool)

(declare-fun res!1666831 () Bool)

(assert (=> b!4080128 (=> res!1666831 e!2532336)))

(assert (=> b!4080128 (= res!1666831 (not (is-ElementMatch!11948 (regex!7043 r!4213))))))

(assert (=> b!4080128 (= e!2532337 e!2532336)))

(declare-fun b!4080129 () Bool)

(declare-fun res!1666824 () Bool)

(assert (=> b!4080129 (=> (not res!1666824) (not e!2532335))))

(assert (=> b!4080129 (= res!1666824 (not call!288666))))

(declare-fun b!4080130 () Bool)

(declare-fun derivativeStep!3610 (Regex!11948 C!24082) Regex!11948)

(assert (=> b!4080130 (= e!2532331 (matchR!5893 (derivativeStep!3610 (regex!7043 r!4213) (head!8620 p!2988)) (tail!6354 p!2988)))))

(assert (= (and d!1212061 c!703709) b!4080126))

(assert (= (and d!1212061 (not c!703709)) b!4080130))

(assert (= (and d!1212061 c!703708) b!4080119))

(assert (= (and d!1212061 (not c!703708)) b!4080125))

(assert (= (and b!4080125 c!703710) b!4080123))

(assert (= (and b!4080125 (not c!703710)) b!4080128))

(assert (= (and b!4080128 (not res!1666831)) b!4080122))

(assert (= (and b!4080122 res!1666830) b!4080129))

(assert (= (and b!4080129 res!1666824) b!4080120))

(assert (= (and b!4080120 res!1666827) b!4080121))

(assert (= (and b!4080122 (not res!1666829)) b!4080124))

(assert (= (and b!4080124 res!1666828) b!4080118))

(assert (= (and b!4080118 (not res!1666825)) b!4080117))

(assert (= (and b!4080117 (not res!1666826)) b!4080127))

(assert (= (or b!4080119 b!4080129 b!4080118) bm!288661))

(declare-fun m!4688041 () Bool)

(assert (=> b!4080127 m!4688041))

(assert (=> b!4080130 m!4688041))

(assert (=> b!4080130 m!4688041))

(declare-fun m!4688043 () Bool)

(assert (=> b!4080130 m!4688043))

(declare-fun m!4688045 () Bool)

(assert (=> b!4080130 m!4688045))

(assert (=> b!4080130 m!4688043))

(assert (=> b!4080130 m!4688045))

(declare-fun m!4688047 () Bool)

(assert (=> b!4080130 m!4688047))

(assert (=> bm!288661 m!4687779))

(assert (=> b!4080117 m!4688045))

(assert (=> b!4080117 m!4688045))

(declare-fun m!4688049 () Bool)

(assert (=> b!4080117 m!4688049))

(assert (=> d!1212061 m!4687779))

(declare-fun m!4688051 () Bool)

(assert (=> d!1212061 m!4688051))

(assert (=> b!4080120 m!4688045))

(assert (=> b!4080120 m!4688045))

(assert (=> b!4080120 m!4688049))

(declare-fun m!4688053 () Bool)

(assert (=> b!4080126 m!4688053))

(assert (=> b!4080121 m!4688041))

(assert (=> b!4079885 d!1212061))

(declare-fun d!1212063 () Bool)

(declare-fun res!1666836 () Bool)

(declare-fun e!2532340 () Bool)

(assert (=> d!1212063 (=> (not res!1666836) (not e!2532340))))

(assert (=> d!1212063 (= res!1666836 (validRegex!5409 (regex!7043 r!4213)))))

(assert (=> d!1212063 (= (ruleValid!2967 thiss!26199 r!4213) e!2532340)))

(declare-fun b!4080135 () Bool)

(declare-fun res!1666837 () Bool)

(assert (=> b!4080135 (=> (not res!1666837) (not e!2532340))))

(assert (=> b!4080135 (= res!1666837 (not (nullable!4209 (regex!7043 r!4213))))))

(declare-fun b!4080136 () Bool)

(assert (=> b!4080136 (= e!2532340 (not (= (tag!7903 r!4213) (String!50118 ""))))))

(assert (= (and d!1212063 res!1666836) b!4080135))

(assert (= (and b!4080135 res!1666837) b!4080136))

(assert (=> d!1212063 m!4688051))

(assert (=> b!4080135 m!4688053))

(assert (=> b!4079885 d!1212063))

(declare-fun d!1212065 () Bool)

(assert (=> d!1212065 (ruleValid!2967 thiss!26199 r!4213)))

(declare-fun lt!1459915 () Unit!63220)

(declare-fun choose!24912 (LexerInterface!6632 Rule!13886 List!43806) Unit!63220)

(assert (=> d!1212065 (= lt!1459915 (choose!24912 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1212065 (contains!8714 rules!3870 r!4213)))

(assert (=> d!1212065 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2035 thiss!26199 r!4213 rules!3870) lt!1459915)))

(declare-fun bs!592899 () Bool)

(assert (= bs!592899 d!1212065))

(assert (=> bs!592899 m!4687773))

(declare-fun m!4688055 () Bool)

(assert (=> bs!592899 m!4688055))

(assert (=> bs!592899 m!4687769))

(assert (=> b!4079885 d!1212065))

(declare-fun d!1212067 () Bool)

(declare-fun lt!1459918 () Bool)

(declare-fun content!6696 (List!43806) (Set Rule!13886))

(assert (=> d!1212067 (= lt!1459918 (set.member r!4213 (content!6696 rules!3870)))))

(declare-fun e!2532346 () Bool)

(assert (=> d!1212067 (= lt!1459918 e!2532346)))

(declare-fun res!1666843 () Bool)

(assert (=> d!1212067 (=> (not res!1666843) (not e!2532346))))

(assert (=> d!1212067 (= res!1666843 (is-Cons!43682 rules!3870))))

(assert (=> d!1212067 (= (contains!8714 rules!3870 r!4213) lt!1459918)))

(declare-fun b!4080141 () Bool)

(declare-fun e!2532345 () Bool)

(assert (=> b!4080141 (= e!2532346 e!2532345)))

(declare-fun res!1666842 () Bool)

(assert (=> b!4080141 (=> res!1666842 e!2532345)))

(assert (=> b!4080141 (= res!1666842 (= (h!49102 rules!3870) r!4213))))

(declare-fun b!4080142 () Bool)

(assert (=> b!4080142 (= e!2532345 (contains!8714 (t!337669 rules!3870) r!4213))))

(assert (= (and d!1212067 res!1666843) b!4080141))

(assert (= (and b!4080141 (not res!1666842)) b!4080142))

(declare-fun m!4688057 () Bool)

(assert (=> d!1212067 m!4688057))

(declare-fun m!4688059 () Bool)

(assert (=> d!1212067 m!4688059))

(declare-fun m!4688061 () Bool)

(assert (=> b!4080142 m!4688061))

(assert (=> b!4079875 d!1212067))

(declare-fun d!1212069 () Bool)

(assert (=> d!1212069 (= (inv!58344 (tag!7903 (h!49102 rules!3870))) (= (mod (str.len (value!221378 (tag!7903 (h!49102 rules!3870)))) 2) 0))))

(assert (=> b!4079892 d!1212069))

(declare-fun d!1212071 () Bool)

(declare-fun res!1666846 () Bool)

(declare-fun e!2532349 () Bool)

(assert (=> d!1212071 (=> (not res!1666846) (not e!2532349))))

(declare-fun semiInverseModEq!3017 (Int Int) Bool)

(assert (=> d!1212071 (= res!1666846 (semiInverseModEq!3017 (toChars!9474 (transformation!7043 (h!49102 rules!3870))) (toValue!9615 (transformation!7043 (h!49102 rules!3870)))))))

(assert (=> d!1212071 (= (inv!58347 (transformation!7043 (h!49102 rules!3870))) e!2532349)))

(declare-fun b!4080145 () Bool)

(declare-fun equivClasses!2916 (Int Int) Bool)

(assert (=> b!4080145 (= e!2532349 (equivClasses!2916 (toChars!9474 (transformation!7043 (h!49102 rules!3870))) (toValue!9615 (transformation!7043 (h!49102 rules!3870)))))))

(assert (= (and d!1212071 res!1666846) b!4080145))

(declare-fun m!4688063 () Bool)

(assert (=> d!1212071 m!4688063))

(declare-fun m!4688065 () Bool)

(assert (=> b!4080145 m!4688065))

(assert (=> b!4079892 d!1212071))

(declare-fun d!1212073 () Bool)

(assert (=> d!1212073 (= (isEmpty!26095 (t!337669 rules!3870)) (is-Nil!43682 (t!337669 rules!3870)))))

(assert (=> b!4079887 d!1212073))

(declare-fun d!1212075 () Bool)

(assert (=> d!1212075 (= (isEmpty!26095 rules!3870) (is-Nil!43682 rules!3870))))

(assert (=> b!4079877 d!1212075))

(declare-fun d!1212077 () Bool)

(declare-fun res!1666847 () Bool)

(declare-fun e!2532350 () Bool)

(assert (=> d!1212077 (=> (not res!1666847) (not e!2532350))))

(assert (=> d!1212077 (= res!1666847 (rulesValid!2751 thiss!26199 rules!3870))))

(assert (=> d!1212077 (= (rulesInvariant!5975 thiss!26199 rules!3870) e!2532350)))

(declare-fun b!4080146 () Bool)

(assert (=> b!4080146 (= e!2532350 (noDuplicateTag!2752 thiss!26199 rules!3870 Nil!43686))))

(assert (= (and d!1212077 res!1666847) b!4080146))

(declare-fun m!4688067 () Bool)

(assert (=> d!1212077 m!4688067))

(declare-fun m!4688069 () Bool)

(assert (=> b!4080146 m!4688069))

(assert (=> b!4079888 d!1212077))

(declare-fun d!1212079 () Bool)

(assert (=> d!1212079 (= (inv!58344 (tag!7903 r!4213)) (= (mod (str.len (value!221378 (tag!7903 r!4213))) 2) 0))))

(assert (=> b!4079889 d!1212079))

(declare-fun d!1212081 () Bool)

(declare-fun res!1666848 () Bool)

(declare-fun e!2532351 () Bool)

(assert (=> d!1212081 (=> (not res!1666848) (not e!2532351))))

(assert (=> d!1212081 (= res!1666848 (semiInverseModEq!3017 (toChars!9474 (transformation!7043 r!4213)) (toValue!9615 (transformation!7043 r!4213))))))

(assert (=> d!1212081 (= (inv!58347 (transformation!7043 r!4213)) e!2532351)))

(declare-fun b!4080147 () Bool)

(assert (=> b!4080147 (= e!2532351 (equivClasses!2916 (toChars!9474 (transformation!7043 r!4213)) (toValue!9615 (transformation!7043 r!4213))))))

(assert (= (and d!1212081 res!1666848) b!4080147))

(declare-fun m!4688071 () Bool)

(assert (=> d!1212081 m!4688071))

(declare-fun m!4688073 () Bool)

(assert (=> b!4080147 m!4688073))

(assert (=> b!4079889 d!1212081))

(declare-fun b!4080156 () Bool)

(declare-fun e!2532357 () List!43805)

(assert (=> b!4080156 (= e!2532357 suffix!1518)))

(declare-fun lt!1459921 () List!43805)

(declare-fun b!4080159 () Bool)

(declare-fun e!2532356 () Bool)

(assert (=> b!4080159 (= e!2532356 (or (not (= suffix!1518 Nil!43681)) (= lt!1459921 p!2988)))))

(declare-fun d!1212083 () Bool)

(assert (=> d!1212083 e!2532356))

(declare-fun res!1666853 () Bool)

(assert (=> d!1212083 (=> (not res!1666853) (not e!2532356))))

(declare-fun content!6698 (List!43805) (Set C!24082))

(assert (=> d!1212083 (= res!1666853 (= (content!6698 lt!1459921) (set.union (content!6698 p!2988) (content!6698 suffix!1518))))))

(assert (=> d!1212083 (= lt!1459921 e!2532357)))

(declare-fun c!703713 () Bool)

(assert (=> d!1212083 (= c!703713 (is-Nil!43681 p!2988))))

(assert (=> d!1212083 (= (++!11449 p!2988 suffix!1518) lt!1459921)))

(declare-fun b!4080157 () Bool)

(assert (=> b!4080157 (= e!2532357 (Cons!43681 (h!49101 p!2988) (++!11449 (t!337668 p!2988) suffix!1518)))))

(declare-fun b!4080158 () Bool)

(declare-fun res!1666854 () Bool)

(assert (=> b!4080158 (=> (not res!1666854) (not e!2532356))))

(assert (=> b!4080158 (= res!1666854 (= (size!32632 lt!1459921) (+ (size!32632 p!2988) (size!32632 suffix!1518))))))

(assert (= (and d!1212083 c!703713) b!4080156))

(assert (= (and d!1212083 (not c!703713)) b!4080157))

(assert (= (and d!1212083 res!1666853) b!4080158))

(assert (= (and b!4080158 res!1666854) b!4080159))

(declare-fun m!4688075 () Bool)

(assert (=> d!1212083 m!4688075))

(declare-fun m!4688077 () Bool)

(assert (=> d!1212083 m!4688077))

(declare-fun m!4688079 () Bool)

(assert (=> d!1212083 m!4688079))

(declare-fun m!4688081 () Bool)

(assert (=> b!4080157 m!4688081))

(declare-fun m!4688083 () Bool)

(assert (=> b!4080158 m!4688083))

(assert (=> b!4080158 m!4687765))

(declare-fun m!4688085 () Bool)

(assert (=> b!4080158 m!4688085))

(assert (=> b!4079879 d!1212083))

(declare-fun d!1212085 () Bool)

(assert (=> d!1212085 true))

(declare-fun lt!1459924 () Bool)

(declare-fun lambda!127777 () Int)

(declare-fun forall!8399 (List!43806 Int) Bool)

(assert (=> d!1212085 (= lt!1459924 (forall!8399 (t!337669 rules!3870) lambda!127777))))

(declare-fun e!2532363 () Bool)

(assert (=> d!1212085 (= lt!1459924 e!2532363)))

(declare-fun res!1666859 () Bool)

(assert (=> d!1212085 (=> res!1666859 e!2532363)))

(assert (=> d!1212085 (= res!1666859 (not (is-Cons!43682 (t!337669 rules!3870))))))

(assert (=> d!1212085 (= (rulesValidInductive!2592 thiss!26199 (t!337669 rules!3870)) lt!1459924)))

(declare-fun b!4080164 () Bool)

(declare-fun e!2532362 () Bool)

(assert (=> b!4080164 (= e!2532363 e!2532362)))

(declare-fun res!1666860 () Bool)

(assert (=> b!4080164 (=> (not res!1666860) (not e!2532362))))

(assert (=> b!4080164 (= res!1666860 (ruleValid!2967 thiss!26199 (h!49102 (t!337669 rules!3870))))))

(declare-fun b!4080165 () Bool)

(assert (=> b!4080165 (= e!2532362 (rulesValidInductive!2592 thiss!26199 (t!337669 (t!337669 rules!3870))))))

(assert (= (and d!1212085 (not res!1666859)) b!4080164))

(assert (= (and b!4080164 res!1666860) b!4080165))

(declare-fun m!4688087 () Bool)

(assert (=> d!1212085 m!4688087))

(declare-fun m!4688089 () Bool)

(assert (=> b!4080164 m!4688089))

(declare-fun m!4688091 () Bool)

(assert (=> b!4080165 m!4688091))

(assert (=> b!4079890 d!1212085))

(declare-fun d!1212087 () Bool)

(assert (=> d!1212087 (= (isEmpty!26096 p!2988) (is-Nil!43681 p!2988))))

(assert (=> b!4079880 d!1212087))

(declare-fun b!4080180 () Bool)

(declare-fun e!2532366 () Bool)

(declare-fun tp!1235051 () Bool)

(assert (=> b!4080180 (= e!2532366 tp!1235051)))

(declare-fun b!4080178 () Bool)

(assert (=> b!4080178 (= e!2532366 tp_is_empty!20899)))

(assert (=> b!4079889 (= tp!1234996 e!2532366)))

(declare-fun b!4080179 () Bool)

(declare-fun tp!1235052 () Bool)

(declare-fun tp!1235048 () Bool)

(assert (=> b!4080179 (= e!2532366 (and tp!1235052 tp!1235048))))

(declare-fun b!4080181 () Bool)

(declare-fun tp!1235050 () Bool)

(declare-fun tp!1235049 () Bool)

(assert (=> b!4080181 (= e!2532366 (and tp!1235050 tp!1235049))))

(assert (= (and b!4079889 (is-ElementMatch!11948 (regex!7043 r!4213))) b!4080178))

(assert (= (and b!4079889 (is-Concat!19222 (regex!7043 r!4213))) b!4080179))

(assert (= (and b!4079889 (is-Star!11948 (regex!7043 r!4213))) b!4080180))

(assert (= (and b!4079889 (is-Union!11948 (regex!7043 r!4213))) b!4080181))

(declare-fun b!4080184 () Bool)

(declare-fun e!2532367 () Bool)

(declare-fun tp!1235056 () Bool)

(assert (=> b!4080184 (= e!2532367 tp!1235056)))

(declare-fun b!4080182 () Bool)

(assert (=> b!4080182 (= e!2532367 tp_is_empty!20899)))

(assert (=> b!4079892 (= tp!1234998 e!2532367)))

(declare-fun b!4080183 () Bool)

(declare-fun tp!1235057 () Bool)

(declare-fun tp!1235053 () Bool)

(assert (=> b!4080183 (= e!2532367 (and tp!1235057 tp!1235053))))

(declare-fun b!4080185 () Bool)

(declare-fun tp!1235055 () Bool)

(declare-fun tp!1235054 () Bool)

(assert (=> b!4080185 (= e!2532367 (and tp!1235055 tp!1235054))))

(assert (= (and b!4079892 (is-ElementMatch!11948 (regex!7043 (h!49102 rules!3870)))) b!4080182))

(assert (= (and b!4079892 (is-Concat!19222 (regex!7043 (h!49102 rules!3870)))) b!4080183))

(assert (= (and b!4079892 (is-Star!11948 (regex!7043 (h!49102 rules!3870)))) b!4080184))

(assert (= (and b!4079892 (is-Union!11948 (regex!7043 (h!49102 rules!3870)))) b!4080185))

(declare-fun b!4080190 () Bool)

(declare-fun e!2532370 () Bool)

(declare-fun tp!1235060 () Bool)

(assert (=> b!4080190 (= e!2532370 (and tp_is_empty!20899 tp!1235060))))

(assert (=> b!4079886 (= tp!1234997 e!2532370)))

(assert (= (and b!4079886 (is-Cons!43681 (t!337668 p!2988))) b!4080190))

(declare-fun b!4080201 () Bool)

(declare-fun b_free!113809 () Bool)

(declare-fun b_next!114513 () Bool)

(assert (=> b!4080201 (= b_free!113809 (not b_next!114513))))

(declare-fun t!337686 () Bool)

(declare-fun tb!245101 () Bool)

(assert (=> (and b!4080201 (= (toValue!9615 (transformation!7043 (h!49102 (t!337669 rules!3870)))) (toValue!9615 (transformation!7043 r!4213))) t!337686) tb!245101))

(declare-fun result!297266 () Bool)

(assert (= result!297266 result!297242))

(assert (=> d!1212027 t!337686))

(assert (=> d!1212031 t!337686))

(declare-fun tp!1235070 () Bool)

(declare-fun b_and!313863 () Bool)

(assert (=> b!4080201 (= tp!1235070 (and (=> t!337686 result!297266) b_and!313863))))

(declare-fun b_free!113811 () Bool)

(declare-fun b_next!114515 () Bool)

(assert (=> b!4080201 (= b_free!113811 (not b_next!114515))))

(declare-fun tb!245103 () Bool)

(declare-fun t!337688 () Bool)

(assert (=> (and b!4080201 (= (toChars!9474 (transformation!7043 (h!49102 (t!337669 rules!3870)))) (toChars!9474 (transformation!7043 r!4213))) t!337688) tb!245103))

(declare-fun result!297268 () Bool)

(assert (= result!297268 result!297254))

(assert (=> d!1212031 t!337688))

(declare-fun b_and!313865 () Bool)

(declare-fun tp!1235069 () Bool)

(assert (=> b!4080201 (= tp!1235069 (and (=> t!337688 result!297268) b_and!313865))))

(declare-fun e!2532379 () Bool)

(assert (=> b!4080201 (= e!2532379 (and tp!1235070 tp!1235069))))

(declare-fun e!2532382 () Bool)

(declare-fun tp!1235072 () Bool)

(declare-fun b!4080200 () Bool)

(assert (=> b!4080200 (= e!2532382 (and tp!1235072 (inv!58344 (tag!7903 (h!49102 (t!337669 rules!3870)))) (inv!58347 (transformation!7043 (h!49102 (t!337669 rules!3870)))) e!2532379))))

(declare-fun b!4080199 () Bool)

(declare-fun e!2532381 () Bool)

(declare-fun tp!1235071 () Bool)

(assert (=> b!4080199 (= e!2532381 (and e!2532382 tp!1235071))))

(assert (=> b!4079891 (= tp!1235001 e!2532381)))

(assert (= b!4080200 b!4080201))

(assert (= b!4080199 b!4080200))

(assert (= (and b!4079891 (is-Cons!43682 (t!337669 rules!3870))) b!4080199))

(declare-fun m!4688093 () Bool)

(assert (=> b!4080200 m!4688093))

(declare-fun m!4688095 () Bool)

(assert (=> b!4080200 m!4688095))

(declare-fun b!4080202 () Bool)

(declare-fun e!2532383 () Bool)

(declare-fun tp!1235073 () Bool)

(assert (=> b!4080202 (= e!2532383 (and tp_is_empty!20899 tp!1235073))))

(assert (=> b!4079882 (= tp!1235002 e!2532383)))

(assert (= (and b!4079882 (is-Cons!43681 (t!337668 suffix!1518))) b!4080202))

(declare-fun b!4080203 () Bool)

(declare-fun e!2532384 () Bool)

(declare-fun tp!1235074 () Bool)

(assert (=> b!4080203 (= e!2532384 (and tp_is_empty!20899 tp!1235074))))

(assert (=> b!4079878 (= tp!1235003 e!2532384)))

(assert (= (and b!4079878 (is-Cons!43681 (t!337668 input!3411))) b!4080203))

(declare-fun b_lambda!119311 () Bool)

(assert (= b_lambda!119307 (or (and b!4079881 b_free!113795) (and b!4079876 b_free!113799 (= (toChars!9474 (transformation!7043 (h!49102 rules!3870))) (toChars!9474 (transformation!7043 r!4213)))) (and b!4080201 b_free!113811 (= (toChars!9474 (transformation!7043 (h!49102 (t!337669 rules!3870)))) (toChars!9474 (transformation!7043 r!4213)))) b_lambda!119311)))

(declare-fun b_lambda!119313 () Bool)

(assert (= b_lambda!119303 (or (and b!4079881 b_free!113793) (and b!4079876 b_free!113797 (= (toValue!9615 (transformation!7043 (h!49102 rules!3870))) (toValue!9615 (transformation!7043 r!4213)))) (and b!4080201 b_free!113809 (= (toValue!9615 (transformation!7043 (h!49102 (t!337669 rules!3870)))) (toValue!9615 (transformation!7043 r!4213)))) b_lambda!119313)))

(declare-fun b_lambda!119315 () Bool)

(assert (= b_lambda!119309 (or (and b!4079881 b_free!113793) (and b!4079876 b_free!113797 (= (toValue!9615 (transformation!7043 (h!49102 rules!3870))) (toValue!9615 (transformation!7043 r!4213)))) (and b!4080201 b_free!113809 (= (toValue!9615 (transformation!7043 (h!49102 (t!337669 rules!3870)))) (toValue!9615 (transformation!7043 r!4213)))) b_lambda!119315)))

(push 1)

(assert (not d!1212017))

(assert (not b!4080127))

(assert (not b!4079992))

(assert (not b!4080190))

(assert (not b!4079995))

(assert b_and!313855)

(assert (not b!4080027))

(assert (not b_lambda!119313))

(assert (not b!4080203))

(assert (not tb!245097))

(assert (not b!4080023))

(assert (not b!4080035))

(assert (not b!4080120))

(assert (not b!4080202))

(assert (not b!4080022))

(assert b_and!313865)

(assert (not b!4079991))

(assert (not b!4080157))

(assert (not b!4079996))

(assert (not d!1212019))

(assert (not b!4080025))

(assert (not d!1212063))

(assert (not b_next!114513))

(assert b_and!313861)

(assert (not b!4080147))

(assert (not d!1212083))

(assert (not b!4080179))

(assert (not b!4079994))

(assert (not b!4080142))

(assert (not d!1212071))

(assert (not b!4080000))

(assert (not b!4080121))

(assert tp_is_empty!20899)

(assert (not b_next!114501))

(assert (not b!4080088))

(assert (not d!1212067))

(assert (not b!4080135))

(assert (not b!4079989))

(assert (not d!1212081))

(assert b_and!313863)

(assert (not b!4080165))

(assert (not b!4080158))

(assert (not bm!288661))

(assert (not b!4080199))

(assert (not b_lambda!119315))

(assert (not b!4079990))

(assert (not b!4080180))

(assert (not b!4080026))

(assert (not bm!288658))

(assert b_and!313857)

(assert (not b!4080146))

(assert (not b!4079993))

(assert (not d!1212061))

(assert (not d!1212031))

(assert (not b!4080019))

(assert (not b!4080024))

(assert (not tb!245089))

(assert (not b!4080130))

(assert (not b!4080145))

(assert (not b_next!114515))

(assert (not b!4080185))

(assert (not d!1212023))

(assert (not d!1212065))

(assert (not b_next!114499))

(assert (not d!1212085))

(assert (not b!4080126))

(assert (not b!4080184))

(assert (not b!4080200))

(assert (not d!1212025))

(assert (not b!4080021))

(assert (not b!4080181))

(assert (not b_lambda!119311))

(assert (not b_next!114503))

(assert (not b!4080164))

(assert (not d!1212007))

(assert (not b!4080117))

(assert (not b!4080183))

(assert b_and!313859)

(assert (not d!1212077))

(assert (not b_next!114497))

(check-sat)

(pop 1)

(push 1)

(assert b_and!313855)

(assert b_and!313865)

(assert (not b_next!114501))

(assert b_and!313863)

(assert b_and!313857)

(assert (not b_next!114515))

(assert (not b_next!114499))

(assert (not b_next!114503))

(assert (not b_next!114513))

(assert b_and!313861)

(assert b_and!313859)

(assert (not b_next!114497))

(check-sat)

(pop 1)

