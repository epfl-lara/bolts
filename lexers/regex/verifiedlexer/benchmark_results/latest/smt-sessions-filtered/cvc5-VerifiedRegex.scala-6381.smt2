; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!331988 () Bool)

(assert start!331988)

(declare-fun b!3580950 () Bool)

(declare-fun b_free!91961 () Bool)

(declare-fun b_next!92665 () Bool)

(assert (=> b!3580950 (= b_free!91961 (not b_next!92665))))

(declare-fun tp!1096177 () Bool)

(declare-fun b_and!258327 () Bool)

(assert (=> b!3580950 (= tp!1096177 b_and!258327)))

(declare-fun b_free!91963 () Bool)

(declare-fun b_next!92667 () Bool)

(assert (=> b!3580950 (= b_free!91963 (not b_next!92667))))

(declare-fun tp!1096175 () Bool)

(declare-fun b_and!258329 () Bool)

(assert (=> b!3580950 (= tp!1096175 b_and!258329)))

(declare-fun b!3580960 () Bool)

(declare-fun b_free!91965 () Bool)

(declare-fun b_next!92669 () Bool)

(assert (=> b!3580960 (= b_free!91965 (not b_next!92669))))

(declare-fun tp!1096178 () Bool)

(declare-fun b_and!258331 () Bool)

(assert (=> b!3580960 (= tp!1096178 b_and!258331)))

(declare-fun b_free!91967 () Bool)

(declare-fun b_next!92671 () Bool)

(assert (=> b!3580960 (= b_free!91967 (not b_next!92671))))

(declare-fun tp!1096171 () Bool)

(declare-fun b_and!258333 () Bool)

(assert (=> b!3580960 (= tp!1096171 b_and!258333)))

(declare-fun b!3580958 () Bool)

(declare-fun b_free!91969 () Bool)

(declare-fun b_next!92673 () Bool)

(assert (=> b!3580958 (= b_free!91969 (not b_next!92673))))

(declare-fun tp!1096174 () Bool)

(declare-fun b_and!258335 () Bool)

(assert (=> b!3580958 (= tp!1096174 b_and!258335)))

(declare-fun b_free!91971 () Bool)

(declare-fun b_next!92675 () Bool)

(assert (=> b!3580958 (= b_free!91971 (not b_next!92675))))

(declare-fun tp!1096168 () Bool)

(declare-fun b_and!258337 () Bool)

(assert (=> b!3580958 (= tp!1096168 b_and!258337)))

(declare-fun b!3580954 () Bool)

(declare-fun b_free!91973 () Bool)

(declare-fun b_next!92677 () Bool)

(assert (=> b!3580954 (= b_free!91973 (not b_next!92677))))

(declare-fun tp!1096169 () Bool)

(declare-fun b_and!258339 () Bool)

(assert (=> b!3580954 (= tp!1096169 b_and!258339)))

(declare-fun b_free!91975 () Bool)

(declare-fun b_next!92679 () Bool)

(assert (=> b!3580954 (= b_free!91975 (not b_next!92679))))

(declare-fun tp!1096173 () Bool)

(declare-fun b_and!258341 () Bool)

(assert (=> b!3580954 (= tp!1096173 b_and!258341)))

(declare-datatypes ((List!37740 0))(
  ( (Nil!37616) (Cons!37616 (h!43036 (_ BitVec 16)) (t!290289 List!37740)) )
))
(declare-datatypes ((TokenValue!5771 0))(
  ( (FloatLiteralValue!11542 (text!40842 List!37740)) (TokenValueExt!5770 (__x!23759 Int)) (Broken!28855 (value!178354 List!37740)) (Object!5894) (End!5771) (Def!5771) (Underscore!5771) (Match!5771) (Else!5771) (Error!5771) (Case!5771) (If!5771) (Extends!5771) (Abstract!5771) (Class!5771) (Val!5771) (DelimiterValue!11542 (del!5831 List!37740)) (KeywordValue!5777 (value!178355 List!37740)) (CommentValue!11542 (value!178356 List!37740)) (WhitespaceValue!11542 (value!178357 List!37740)) (IndentationValue!5771 (value!178358 List!37740)) (String!42190) (Int32!5771) (Broken!28856 (value!178359 List!37740)) (Boolean!5772) (Unit!53621) (OperatorValue!5774 (op!5831 List!37740)) (IdentifierValue!11542 (value!178360 List!37740)) (IdentifierValue!11543 (value!178361 List!37740)) (WhitespaceValue!11543 (value!178362 List!37740)) (True!11542) (False!11542) (Broken!28857 (value!178363 List!37740)) (Broken!28858 (value!178364 List!37740)) (True!11543) (RightBrace!5771) (RightBracket!5771) (Colon!5771) (Null!5771) (Comma!5771) (LeftBracket!5771) (False!11543) (LeftBrace!5771) (ImaginaryLiteralValue!5771 (text!40843 List!37740)) (StringLiteralValue!17313 (value!178365 List!37740)) (EOFValue!5771 (value!178366 List!37740)) (IdentValue!5771 (value!178367 List!37740)) (DelimiterValue!11543 (value!178368 List!37740)) (DedentValue!5771 (value!178369 List!37740)) (NewLineValue!5771 (value!178370 List!37740)) (IntegerValue!17313 (value!178371 (_ BitVec 32)) (text!40844 List!37740)) (IntegerValue!17314 (value!178372 Int) (text!40845 List!37740)) (Times!5771) (Or!5771) (Equal!5771) (Minus!5771) (Broken!28859 (value!178373 List!37740)) (And!5771) (Div!5771) (LessEqual!5771) (Mod!5771) (Concat!16071) (Not!5771) (Plus!5771) (SpaceValue!5771 (value!178374 List!37740)) (IntegerValue!17315 (value!178375 Int) (text!40846 List!37740)) (StringLiteralValue!17314 (text!40847 List!37740)) (FloatLiteralValue!11543 (text!40848 List!37740)) (BytesLiteralValue!5771 (value!178376 List!37740)) (CommentValue!11543 (value!178377 List!37740)) (StringLiteralValue!17315 (value!178378 List!37740)) (ErrorTokenValue!5771 (msg!5832 List!37740)) )
))
(declare-datatypes ((C!20786 0))(
  ( (C!20787 (val!12441 Int)) )
))
(declare-datatypes ((Regex!10300 0))(
  ( (ElementMatch!10300 (c!620480 C!20786)) (Concat!16072 (regOne!21112 Regex!10300) (regTwo!21112 Regex!10300)) (EmptyExpr!10300) (Star!10300 (reg!10629 Regex!10300)) (EmptyLang!10300) (Union!10300 (regOne!21113 Regex!10300) (regTwo!21113 Regex!10300)) )
))
(declare-datatypes ((String!42191 0))(
  ( (String!42192 (value!178379 String)) )
))
(declare-datatypes ((List!37741 0))(
  ( (Nil!37617) (Cons!37617 (h!43037 C!20786) (t!290290 List!37741)) )
))
(declare-datatypes ((IArray!22883 0))(
  ( (IArray!22884 (innerList!11499 List!37741)) )
))
(declare-datatypes ((Conc!11439 0))(
  ( (Node!11439 (left!29416 Conc!11439) (right!29746 Conc!11439) (csize!23108 Int) (cheight!11650 Int)) (Leaf!17821 (xs!14641 IArray!22883) (csize!23109 Int)) (Empty!11439) )
))
(declare-datatypes ((BalanceConc!22492 0))(
  ( (BalanceConc!22493 (c!620481 Conc!11439)) )
))
(declare-datatypes ((TokenValueInjection!10970 0))(
  ( (TokenValueInjection!10971 (toValue!7817 Int) (toChars!7676 Int)) )
))
(declare-datatypes ((Rule!10882 0))(
  ( (Rule!10883 (regex!5541 Regex!10300) (tag!6207 String!42191) (isSeparator!5541 Bool) (transformation!5541 TokenValueInjection!10970)) )
))
(declare-datatypes ((Token!10448 0))(
  ( (Token!10449 (value!178380 TokenValue!5771) (rule!8253 Rule!10882) (size!28675 Int) (originalCharacters!6255 List!37741)) )
))
(declare-fun token!511 () Token!10448)

(declare-fun e!2215615 () Bool)

(declare-fun e!2215621 () Bool)

(declare-fun tp!1096167 () Bool)

(declare-fun b!3580943 () Bool)

(declare-fun inv!21 (TokenValue!5771) Bool)

(assert (=> b!3580943 (= e!2215615 (and (inv!21 (value!178380 token!511)) e!2215621 tp!1096167))))

(declare-fun tp!1096170 () Bool)

(declare-fun b!3580944 () Bool)

(declare-fun e!2215606 () Bool)

(declare-fun inv!50917 (String!42191) Bool)

(declare-fun inv!50920 (TokenValueInjection!10970) Bool)

(assert (=> b!3580944 (= e!2215621 (and tp!1096170 (inv!50917 (tag!6207 (rule!8253 token!511))) (inv!50920 (transformation!5541 (rule!8253 token!511))) e!2215606))))

(declare-fun b!3580945 () Bool)

(declare-fun e!2215622 () Bool)

(declare-fun e!2215620 () Bool)

(assert (=> b!3580945 (= e!2215622 e!2215620)))

(declare-fun res!1444764 () Bool)

(assert (=> b!3580945 (=> (not res!1444764) (not e!2215620))))

(declare-datatypes ((tuple2!37524 0))(
  ( (tuple2!37525 (_1!21896 Token!10448) (_2!21896 List!37741)) )
))
(declare-fun lt!1228557 () tuple2!37524)

(assert (=> b!3580945 (= res!1444764 (= (_1!21896 lt!1228557) token!511))))

(declare-datatypes ((Option!7729 0))(
  ( (None!7728) (Some!7728 (v!37370 tuple2!37524)) )
))
(declare-fun lt!1228558 () Option!7729)

(declare-fun get!12112 (Option!7729) tuple2!37524)

(assert (=> b!3580945 (= lt!1228557 (get!12112 lt!1228558))))

(declare-datatypes ((List!37742 0))(
  ( (Nil!37618) (Cons!37618 (h!43038 Rule!10882) (t!290291 List!37742)) )
))
(declare-fun rules!3307 () List!37742)

(declare-fun b!3580946 () Bool)

(declare-fun e!2215618 () Bool)

(declare-fun e!2215610 () Bool)

(declare-fun tp!1096172 () Bool)

(assert (=> b!3580946 (= e!2215610 (and tp!1096172 (inv!50917 (tag!6207 (h!43038 rules!3307))) (inv!50920 (transformation!5541 (h!43038 rules!3307))) e!2215618))))

(declare-fun b!3580947 () Bool)

(declare-fun res!1444758 () Bool)

(declare-fun e!2215617 () Bool)

(assert (=> b!3580947 (=> (not res!1444758) (not e!2215617))))

(declare-fun anOtherTypeRule!33 () Rule!10882)

(declare-fun contains!7145 (List!37742 Rule!10882) Bool)

(assert (=> b!3580947 (= res!1444758 (contains!7145 rules!3307 anOtherTypeRule!33))))

(declare-fun b!3580948 () Bool)

(declare-fun e!2215619 () Bool)

(declare-fun tp!1096179 () Bool)

(declare-fun rule!403 () Rule!10882)

(declare-fun e!2215612 () Bool)

(assert (=> b!3580948 (= e!2215612 (and tp!1096179 (inv!50917 (tag!6207 rule!403)) (inv!50920 (transformation!5541 rule!403)) e!2215619))))

(declare-fun b!3580949 () Bool)

(assert (=> b!3580949 (= e!2215617 e!2215622)))

(declare-fun res!1444763 () Bool)

(assert (=> b!3580949 (=> (not res!1444763) (not e!2215622))))

(declare-fun isDefined!5963 (Option!7729) Bool)

(assert (=> b!3580949 (= res!1444763 (isDefined!5963 lt!1228558))))

(declare-datatypes ((LexerInterface!5130 0))(
  ( (LexerInterfaceExt!5127 (__x!23760 Int)) (Lexer!5128) )
))
(declare-fun thiss!23823 () LexerInterface!5130)

(declare-fun maxPrefix!2664 (LexerInterface!5130 List!37742 List!37741) Option!7729)

(declare-fun list!13815 (BalanceConc!22492) List!37741)

(declare-fun charsOf!3555 (Token!10448) BalanceConc!22492)

(assert (=> b!3580949 (= lt!1228558 (maxPrefix!2664 thiss!23823 rules!3307 (list!13815 (charsOf!3555 token!511))))))

(declare-fun b!3580951 () Bool)

(declare-fun res!1444762 () Bool)

(assert (=> b!3580951 (=> (not res!1444762) (not e!2215617))))

(assert (=> b!3580951 (= res!1444762 (contains!7145 rules!3307 rule!403))))

(declare-fun b!3580952 () Bool)

(declare-fun e!2215613 () Bool)

(declare-fun tp!1096180 () Bool)

(assert (=> b!3580952 (= e!2215613 (and e!2215610 tp!1096180))))

(declare-fun b!3580953 () Bool)

(declare-fun res!1444760 () Bool)

(assert (=> b!3580953 (=> (not res!1444760) (not e!2215617))))

(declare-fun isEmpty!22144 (List!37742) Bool)

(assert (=> b!3580953 (= res!1444760 (not (isEmpty!22144 rules!3307)))))

(assert (=> b!3580954 (= e!2215606 (and tp!1096169 tp!1096173))))

(declare-fun b!3580955 () Bool)

(declare-fun res!1444761 () Bool)

(assert (=> b!3580955 (=> (not res!1444761) (not e!2215617))))

(assert (=> b!3580955 (= res!1444761 (not (= (isSeparator!5541 anOtherTypeRule!33) (isSeparator!5541 rule!403))))))

(declare-fun b!3580956 () Bool)

(declare-fun res!1444757 () Bool)

(assert (=> b!3580956 (=> (not res!1444757) (not e!2215620))))

(assert (=> b!3580956 (= res!1444757 (= (rule!8253 token!511) rule!403))))

(declare-fun b!3580957 () Bool)

(declare-fun validRegex!4703 (Regex!10300) Bool)

(assert (=> b!3580957 (= e!2215620 (not (validRegex!4703 (regex!5541 rule!403))))))

(declare-fun ruleValid!1806 (LexerInterface!5130 Rule!10882) Bool)

(assert (=> b!3580957 (ruleValid!1806 thiss!23823 rule!403)))

(declare-datatypes ((Unit!53622 0))(
  ( (Unit!53623) )
))
(declare-fun lt!1228559 () Unit!53622)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!961 (LexerInterface!5130 Rule!10882 List!37742) Unit!53622)

(assert (=> b!3580957 (= lt!1228559 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!961 thiss!23823 rule!403 rules!3307))))

(assert (=> b!3580958 (= e!2215619 (and tp!1096174 tp!1096168))))

(declare-fun e!2215609 () Bool)

(assert (=> b!3580950 (= e!2215609 (and tp!1096177 tp!1096175))))

(declare-fun res!1444759 () Bool)

(assert (=> start!331988 (=> (not res!1444759) (not e!2215617))))

(assert (=> start!331988 (= res!1444759 (is-Lexer!5128 thiss!23823))))

(assert (=> start!331988 e!2215617))

(assert (=> start!331988 e!2215613))

(assert (=> start!331988 true))

(declare-fun inv!50921 (Token!10448) Bool)

(assert (=> start!331988 (and (inv!50921 token!511) e!2215615)))

(assert (=> start!331988 e!2215612))

(declare-fun e!2215608 () Bool)

(assert (=> start!331988 e!2215608))

(declare-fun b!3580959 () Bool)

(declare-fun res!1444765 () Bool)

(assert (=> b!3580959 (=> (not res!1444765) (not e!2215617))))

(declare-fun rulesInvariant!4527 (LexerInterface!5130 List!37742) Bool)

(assert (=> b!3580959 (= res!1444765 (rulesInvariant!4527 thiss!23823 rules!3307))))

(assert (=> b!3580960 (= e!2215618 (and tp!1096178 tp!1096171))))

(declare-fun tp!1096176 () Bool)

(declare-fun b!3580961 () Bool)

(assert (=> b!3580961 (= e!2215608 (and tp!1096176 (inv!50917 (tag!6207 anOtherTypeRule!33)) (inv!50920 (transformation!5541 anOtherTypeRule!33)) e!2215609))))

(declare-fun b!3580962 () Bool)

(declare-fun res!1444766 () Bool)

(assert (=> b!3580962 (=> (not res!1444766) (not e!2215620))))

(declare-fun isEmpty!22145 (List!37741) Bool)

(assert (=> b!3580962 (= res!1444766 (isEmpty!22145 (_2!21896 lt!1228557)))))

(assert (= (and start!331988 res!1444759) b!3580953))

(assert (= (and b!3580953 res!1444760) b!3580959))

(assert (= (and b!3580959 res!1444765) b!3580951))

(assert (= (and b!3580951 res!1444762) b!3580947))

(assert (= (and b!3580947 res!1444758) b!3580955))

(assert (= (and b!3580955 res!1444761) b!3580949))

(assert (= (and b!3580949 res!1444763) b!3580945))

(assert (= (and b!3580945 res!1444764) b!3580962))

(assert (= (and b!3580962 res!1444766) b!3580956))

(assert (= (and b!3580956 res!1444757) b!3580957))

(assert (= b!3580946 b!3580960))

(assert (= b!3580952 b!3580946))

(assert (= (and start!331988 (is-Cons!37618 rules!3307)) b!3580952))

(assert (= b!3580944 b!3580954))

(assert (= b!3580943 b!3580944))

(assert (= start!331988 b!3580943))

(assert (= b!3580948 b!3580958))

(assert (= start!331988 b!3580948))

(assert (= b!3580961 b!3580950))

(assert (= start!331988 b!3580961))

(declare-fun m!4074749 () Bool)

(assert (=> b!3580945 m!4074749))

(declare-fun m!4074751 () Bool)

(assert (=> b!3580959 m!4074751))

(declare-fun m!4074753 () Bool)

(assert (=> b!3580949 m!4074753))

(declare-fun m!4074755 () Bool)

(assert (=> b!3580949 m!4074755))

(assert (=> b!3580949 m!4074755))

(declare-fun m!4074757 () Bool)

(assert (=> b!3580949 m!4074757))

(assert (=> b!3580949 m!4074757))

(declare-fun m!4074759 () Bool)

(assert (=> b!3580949 m!4074759))

(declare-fun m!4074761 () Bool)

(assert (=> b!3580951 m!4074761))

(declare-fun m!4074763 () Bool)

(assert (=> b!3580946 m!4074763))

(declare-fun m!4074765 () Bool)

(assert (=> b!3580946 m!4074765))

(declare-fun m!4074767 () Bool)

(assert (=> b!3580944 m!4074767))

(declare-fun m!4074769 () Bool)

(assert (=> b!3580944 m!4074769))

(declare-fun m!4074771 () Bool)

(assert (=> b!3580948 m!4074771))

(declare-fun m!4074773 () Bool)

(assert (=> b!3580948 m!4074773))

(declare-fun m!4074775 () Bool)

(assert (=> b!3580961 m!4074775))

(declare-fun m!4074777 () Bool)

(assert (=> b!3580961 m!4074777))

(declare-fun m!4074779 () Bool)

(assert (=> start!331988 m!4074779))

(declare-fun m!4074781 () Bool)

(assert (=> b!3580957 m!4074781))

(declare-fun m!4074783 () Bool)

(assert (=> b!3580957 m!4074783))

(declare-fun m!4074785 () Bool)

(assert (=> b!3580957 m!4074785))

(declare-fun m!4074787 () Bool)

(assert (=> b!3580947 m!4074787))

(declare-fun m!4074789 () Bool)

(assert (=> b!3580953 m!4074789))

(declare-fun m!4074791 () Bool)

(assert (=> b!3580943 m!4074791))

(declare-fun m!4074793 () Bool)

(assert (=> b!3580962 m!4074793))

(push 1)

(assert (not b!3580948))

(assert b_and!258339)

(assert (not b_next!92675))

(assert (not b!3580944))

(assert (not b_next!92669))

(assert b_and!258329)

(assert b_and!258341)

(assert (not b_next!92667))

(assert (not b!3580962))

(assert (not b!3580957))

(assert b_and!258335)

(assert b_and!258331)

(assert (not b_next!92679))

(assert (not b!3580946))

(assert (not b!3580961))

(assert b_and!258327)

(assert (not b!3580952))

(assert (not start!331988))

(assert (not b_next!92665))

(assert (not b_next!92673))

(assert (not b!3580945))

(assert (not b_next!92677))

(assert b_and!258337)

(assert (not b!3580947))

(assert (not b!3580943))

(assert (not b!3580949))

(assert (not b!3580951))

(assert (not b!3580953))

(assert b_and!258333)

(assert (not b!3580959))

(assert (not b_next!92671))

(check-sat)

(pop 1)

(push 1)

(assert b_and!258327)

(assert b_and!258339)

(assert (not b_next!92665))

(assert (not b_next!92673))

(assert (not b_next!92675))

(assert (not b_next!92669))

(assert b_and!258329)

(assert b_and!258341)

(assert (not b_next!92667))

(assert b_and!258335)

(assert b_and!258331)

(assert (not b_next!92679))

(assert (not b_next!92677))

(assert b_and!258337)

(assert b_and!258333)

(assert (not b_next!92671))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1056060 () Bool)

(assert (=> d!1056060 (= (inv!50917 (tag!6207 anOtherTypeRule!33)) (= (mod (str.len (value!178379 (tag!6207 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3580961 d!1056060))

(declare-fun d!1056062 () Bool)

(declare-fun res!1444807 () Bool)

(declare-fun e!2215679 () Bool)

(assert (=> d!1056062 (=> (not res!1444807) (not e!2215679))))

(declare-fun semiInverseModEq!2345 (Int Int) Bool)

(assert (=> d!1056062 (= res!1444807 (semiInverseModEq!2345 (toChars!7676 (transformation!5541 anOtherTypeRule!33)) (toValue!7817 (transformation!5541 anOtherTypeRule!33))))))

(assert (=> d!1056062 (= (inv!50920 (transformation!5541 anOtherTypeRule!33)) e!2215679)))

(declare-fun b!3581025 () Bool)

(declare-fun equivClasses!2244 (Int Int) Bool)

(assert (=> b!3581025 (= e!2215679 (equivClasses!2244 (toChars!7676 (transformation!5541 anOtherTypeRule!33)) (toValue!7817 (transformation!5541 anOtherTypeRule!33))))))

(assert (= (and d!1056062 res!1444807) b!3581025))

(declare-fun m!4074841 () Bool)

(assert (=> d!1056062 m!4074841))

(declare-fun m!4074843 () Bool)

(assert (=> b!3581025 m!4074843))

(assert (=> b!3580961 d!1056062))

(declare-fun d!1056064 () Bool)

(declare-fun lt!1228571 () Bool)

(declare-fun content!5334 (List!37742) (Set Rule!10882))

(assert (=> d!1056064 (= lt!1228571 (set.member rule!403 (content!5334 rules!3307)))))

(declare-fun e!2215684 () Bool)

(assert (=> d!1056064 (= lt!1228571 e!2215684)))

(declare-fun res!1444812 () Bool)

(assert (=> d!1056064 (=> (not res!1444812) (not e!2215684))))

(assert (=> d!1056064 (= res!1444812 (is-Cons!37618 rules!3307))))

(assert (=> d!1056064 (= (contains!7145 rules!3307 rule!403) lt!1228571)))

(declare-fun b!3581030 () Bool)

(declare-fun e!2215685 () Bool)

(assert (=> b!3581030 (= e!2215684 e!2215685)))

(declare-fun res!1444813 () Bool)

(assert (=> b!3581030 (=> res!1444813 e!2215685)))

(assert (=> b!3581030 (= res!1444813 (= (h!43038 rules!3307) rule!403))))

(declare-fun b!3581031 () Bool)

(assert (=> b!3581031 (= e!2215685 (contains!7145 (t!290291 rules!3307) rule!403))))

(assert (= (and d!1056064 res!1444812) b!3581030))

(assert (= (and b!3581030 (not res!1444813)) b!3581031))

(declare-fun m!4074845 () Bool)

(assert (=> d!1056064 m!4074845))

(declare-fun m!4074847 () Bool)

(assert (=> d!1056064 m!4074847))

(declare-fun m!4074849 () Bool)

(assert (=> b!3581031 m!4074849))

(assert (=> b!3580951 d!1056064))

(declare-fun d!1056066 () Bool)

(assert (=> d!1056066 (= (isEmpty!22145 (_2!21896 lt!1228557)) (is-Nil!37617 (_2!21896 lt!1228557)))))

(assert (=> b!3580962 d!1056066))

(declare-fun d!1056068 () Bool)

(assert (=> d!1056068 (= (isEmpty!22144 rules!3307) (is-Nil!37618 rules!3307))))

(assert (=> b!3580953 d!1056068))

(declare-fun d!1056070 () Bool)

(declare-fun c!620490 () Bool)

(assert (=> d!1056070 (= c!620490 (is-IntegerValue!17313 (value!178380 token!511)))))

(declare-fun e!2215694 () Bool)

(assert (=> d!1056070 (= (inv!21 (value!178380 token!511)) e!2215694)))

(declare-fun b!3581042 () Bool)

(declare-fun res!1444816 () Bool)

(declare-fun e!2215693 () Bool)

(assert (=> b!3581042 (=> res!1444816 e!2215693)))

(assert (=> b!3581042 (= res!1444816 (not (is-IntegerValue!17315 (value!178380 token!511))))))

(declare-fun e!2215692 () Bool)

(assert (=> b!3581042 (= e!2215692 e!2215693)))

(declare-fun b!3581043 () Bool)

(declare-fun inv!16 (TokenValue!5771) Bool)

(assert (=> b!3581043 (= e!2215694 (inv!16 (value!178380 token!511)))))

(declare-fun b!3581044 () Bool)

(assert (=> b!3581044 (= e!2215694 e!2215692)))

(declare-fun c!620489 () Bool)

(assert (=> b!3581044 (= c!620489 (is-IntegerValue!17314 (value!178380 token!511)))))

(declare-fun b!3581045 () Bool)

(declare-fun inv!17 (TokenValue!5771) Bool)

(assert (=> b!3581045 (= e!2215692 (inv!17 (value!178380 token!511)))))

(declare-fun b!3581046 () Bool)

(declare-fun inv!15 (TokenValue!5771) Bool)

(assert (=> b!3581046 (= e!2215693 (inv!15 (value!178380 token!511)))))

(assert (= (and d!1056070 c!620490) b!3581043))

(assert (= (and d!1056070 (not c!620490)) b!3581044))

(assert (= (and b!3581044 c!620489) b!3581045))

(assert (= (and b!3581044 (not c!620489)) b!3581042))

(assert (= (and b!3581042 (not res!1444816)) b!3581046))

(declare-fun m!4074851 () Bool)

(assert (=> b!3581043 m!4074851))

(declare-fun m!4074853 () Bool)

(assert (=> b!3581045 m!4074853))

(declare-fun m!4074855 () Bool)

(assert (=> b!3581046 m!4074855))

(assert (=> b!3580943 d!1056070))

(declare-fun d!1056072 () Bool)

(assert (=> d!1056072 (= (inv!50917 (tag!6207 (rule!8253 token!511))) (= (mod (str.len (value!178379 (tag!6207 (rule!8253 token!511)))) 2) 0))))

(assert (=> b!3580944 d!1056072))

(declare-fun d!1056074 () Bool)

(declare-fun res!1444817 () Bool)

(declare-fun e!2215695 () Bool)

(assert (=> d!1056074 (=> (not res!1444817) (not e!2215695))))

(assert (=> d!1056074 (= res!1444817 (semiInverseModEq!2345 (toChars!7676 (transformation!5541 (rule!8253 token!511))) (toValue!7817 (transformation!5541 (rule!8253 token!511)))))))

(assert (=> d!1056074 (= (inv!50920 (transformation!5541 (rule!8253 token!511))) e!2215695)))

(declare-fun b!3581047 () Bool)

(assert (=> b!3581047 (= e!2215695 (equivClasses!2244 (toChars!7676 (transformation!5541 (rule!8253 token!511))) (toValue!7817 (transformation!5541 (rule!8253 token!511)))))))

(assert (= (and d!1056074 res!1444817) b!3581047))

(declare-fun m!4074857 () Bool)

(assert (=> d!1056074 m!4074857))

(declare-fun m!4074859 () Bool)

(assert (=> b!3581047 m!4074859))

(assert (=> b!3580944 d!1056074))

(declare-fun d!1056076 () Bool)

(assert (=> d!1056076 (= (get!12112 lt!1228558) (v!37370 lt!1228558))))

(assert (=> b!3580945 d!1056076))

(declare-fun bm!259292 () Bool)

(declare-fun call!259298 () Bool)

(declare-fun c!620495 () Bool)

(assert (=> bm!259292 (= call!259298 (validRegex!4703 (ite c!620495 (regOne!21113 (regex!5541 rule!403)) (regTwo!21112 (regex!5541 rule!403)))))))

(declare-fun d!1056078 () Bool)

(declare-fun res!1444829 () Bool)

(declare-fun e!2215710 () Bool)

(assert (=> d!1056078 (=> res!1444829 e!2215710)))

(assert (=> d!1056078 (= res!1444829 (is-ElementMatch!10300 (regex!5541 rule!403)))))

(assert (=> d!1056078 (= (validRegex!4703 (regex!5541 rule!403)) e!2215710)))

(declare-fun bm!259293 () Bool)

(declare-fun call!259299 () Bool)

(declare-fun call!259297 () Bool)

(assert (=> bm!259293 (= call!259299 call!259297)))

(declare-fun b!3581066 () Bool)

(declare-fun e!2215716 () Bool)

(declare-fun e!2215718 () Bool)

(assert (=> b!3581066 (= e!2215716 e!2215718)))

(declare-fun res!1444832 () Bool)

(assert (=> b!3581066 (=> (not res!1444832) (not e!2215718))))

(assert (=> b!3581066 (= res!1444832 call!259299)))

(declare-fun c!620496 () Bool)

(declare-fun bm!259294 () Bool)

(assert (=> bm!259294 (= call!259297 (validRegex!4703 (ite c!620496 (reg!10629 (regex!5541 rule!403)) (ite c!620495 (regTwo!21113 (regex!5541 rule!403)) (regOne!21112 (regex!5541 rule!403))))))))

(declare-fun b!3581067 () Bool)

(declare-fun e!2215711 () Bool)

(assert (=> b!3581067 (= e!2215711 call!259299)))

(declare-fun b!3581068 () Bool)

(assert (=> b!3581068 (= e!2215718 call!259298)))

(declare-fun b!3581069 () Bool)

(declare-fun res!1444831 () Bool)

(assert (=> b!3581069 (=> (not res!1444831) (not e!2215711))))

(assert (=> b!3581069 (= res!1444831 call!259298)))

(declare-fun e!2215717 () Bool)

(assert (=> b!3581069 (= e!2215717 e!2215711)))

(declare-fun b!3581070 () Bool)

(declare-fun e!2215715 () Bool)

(declare-fun e!2215714 () Bool)

(assert (=> b!3581070 (= e!2215715 e!2215714)))

(declare-fun res!1444828 () Bool)

(declare-fun nullable!3547 (Regex!10300) Bool)

(assert (=> b!3581070 (= res!1444828 (not (nullable!3547 (reg!10629 (regex!5541 rule!403)))))))

(assert (=> b!3581070 (=> (not res!1444828) (not e!2215714))))

(declare-fun b!3581071 () Bool)

(declare-fun res!1444830 () Bool)

(assert (=> b!3581071 (=> res!1444830 e!2215716)))

(assert (=> b!3581071 (= res!1444830 (not (is-Concat!16072 (regex!5541 rule!403))))))

(assert (=> b!3581071 (= e!2215717 e!2215716)))

(declare-fun b!3581072 () Bool)

(assert (=> b!3581072 (= e!2215710 e!2215715)))

(assert (=> b!3581072 (= c!620496 (is-Star!10300 (regex!5541 rule!403)))))

(declare-fun b!3581073 () Bool)

(assert (=> b!3581073 (= e!2215714 call!259297)))

(declare-fun b!3581076 () Bool)

(assert (=> b!3581076 (= e!2215715 e!2215717)))

(assert (=> b!3581076 (= c!620495 (is-Union!10300 (regex!5541 rule!403)))))

(assert (= (and d!1056078 (not res!1444829)) b!3581072))

(assert (= (and b!3581072 c!620496) b!3581070))

(assert (= (and b!3581072 (not c!620496)) b!3581076))

(assert (= (and b!3581070 res!1444828) b!3581073))

(assert (= (and b!3581076 c!620495) b!3581069))

(assert (= (and b!3581076 (not c!620495)) b!3581071))

(assert (= (and b!3581069 res!1444831) b!3581067))

(assert (= (and b!3581071 (not res!1444830)) b!3581066))

(assert (= (and b!3581066 res!1444832) b!3581068))

(assert (= (or b!3581069 b!3581068) bm!259292))

(assert (= (or b!3581067 b!3581066) bm!259293))

(assert (= (or b!3581073 bm!259293) bm!259294))

(declare-fun m!4074861 () Bool)

(assert (=> bm!259292 m!4074861))

(declare-fun m!4074863 () Bool)

(assert (=> bm!259294 m!4074863))

(declare-fun m!4074865 () Bool)

(assert (=> b!3581070 m!4074865))

(assert (=> b!3580957 d!1056078))

(declare-fun d!1056082 () Bool)

(declare-fun res!1444840 () Bool)

(declare-fun e!2215722 () Bool)

(assert (=> d!1056082 (=> (not res!1444840) (not e!2215722))))

(assert (=> d!1056082 (= res!1444840 (validRegex!4703 (regex!5541 rule!403)))))

(assert (=> d!1056082 (= (ruleValid!1806 thiss!23823 rule!403) e!2215722)))

(declare-fun b!3581082 () Bool)

(declare-fun res!1444841 () Bool)

(assert (=> b!3581082 (=> (not res!1444841) (not e!2215722))))

(assert (=> b!3581082 (= res!1444841 (not (nullable!3547 (regex!5541 rule!403))))))

(declare-fun b!3581083 () Bool)

(assert (=> b!3581083 (= e!2215722 (not (= (tag!6207 rule!403) (String!42192 ""))))))

(assert (= (and d!1056082 res!1444840) b!3581082))

(assert (= (and b!3581082 res!1444841) b!3581083))

(assert (=> d!1056082 m!4074781))

(declare-fun m!4074871 () Bool)

(assert (=> b!3581082 m!4074871))

(assert (=> b!3580957 d!1056082))

(declare-fun d!1056086 () Bool)

(assert (=> d!1056086 (ruleValid!1806 thiss!23823 rule!403)))

(declare-fun lt!1228574 () Unit!53622)

(declare-fun choose!20841 (LexerInterface!5130 Rule!10882 List!37742) Unit!53622)

(assert (=> d!1056086 (= lt!1228574 (choose!20841 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1056086 (contains!7145 rules!3307 rule!403)))

(assert (=> d!1056086 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!961 thiss!23823 rule!403 rules!3307) lt!1228574)))

(declare-fun bs!569880 () Bool)

(assert (= bs!569880 d!1056086))

(assert (=> bs!569880 m!4074783))

(declare-fun m!4074873 () Bool)

(assert (=> bs!569880 m!4074873))

(assert (=> bs!569880 m!4074761))

(assert (=> b!3580957 d!1056086))

(declare-fun d!1056088 () Bool)

(assert (=> d!1056088 (= (inv!50917 (tag!6207 (h!43038 rules!3307))) (= (mod (str.len (value!178379 (tag!6207 (h!43038 rules!3307)))) 2) 0))))

(assert (=> b!3580946 d!1056088))

(declare-fun d!1056090 () Bool)

(declare-fun res!1444848 () Bool)

(declare-fun e!2215726 () Bool)

(assert (=> d!1056090 (=> (not res!1444848) (not e!2215726))))

(assert (=> d!1056090 (= res!1444848 (semiInverseModEq!2345 (toChars!7676 (transformation!5541 (h!43038 rules!3307))) (toValue!7817 (transformation!5541 (h!43038 rules!3307)))))))

(assert (=> d!1056090 (= (inv!50920 (transformation!5541 (h!43038 rules!3307))) e!2215726)))

(declare-fun b!3581090 () Bool)

(assert (=> b!3581090 (= e!2215726 (equivClasses!2244 (toChars!7676 (transformation!5541 (h!43038 rules!3307))) (toValue!7817 (transformation!5541 (h!43038 rules!3307)))))))

(assert (= (and d!1056090 res!1444848) b!3581090))

(declare-fun m!4074875 () Bool)

(assert (=> d!1056090 m!4074875))

(declare-fun m!4074877 () Bool)

(assert (=> b!3581090 m!4074877))

(assert (=> b!3580946 d!1056090))

(declare-fun d!1056092 () Bool)

(declare-fun lt!1228575 () Bool)

(assert (=> d!1056092 (= lt!1228575 (set.member anOtherTypeRule!33 (content!5334 rules!3307)))))

(declare-fun e!2215727 () Bool)

(assert (=> d!1056092 (= lt!1228575 e!2215727)))

(declare-fun res!1444849 () Bool)

(assert (=> d!1056092 (=> (not res!1444849) (not e!2215727))))

(assert (=> d!1056092 (= res!1444849 (is-Cons!37618 rules!3307))))

(assert (=> d!1056092 (= (contains!7145 rules!3307 anOtherTypeRule!33) lt!1228575)))

(declare-fun b!3581091 () Bool)

(declare-fun e!2215728 () Bool)

(assert (=> b!3581091 (= e!2215727 e!2215728)))

(declare-fun res!1444850 () Bool)

(assert (=> b!3581091 (=> res!1444850 e!2215728)))

(assert (=> b!3581091 (= res!1444850 (= (h!43038 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3581092 () Bool)

(assert (=> b!3581092 (= e!2215728 (contains!7145 (t!290291 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1056092 res!1444849) b!3581091))

(assert (= (and b!3581091 (not res!1444850)) b!3581092))

(assert (=> d!1056092 m!4074845))

(declare-fun m!4074879 () Bool)

(assert (=> d!1056092 m!4074879))

(declare-fun m!4074881 () Bool)

(assert (=> b!3581092 m!4074881))

(assert (=> b!3580947 d!1056092))

(declare-fun d!1056094 () Bool)

(declare-fun res!1444855 () Bool)

(declare-fun e!2215734 () Bool)

(assert (=> d!1056094 (=> (not res!1444855) (not e!2215734))))

(assert (=> d!1056094 (= res!1444855 (not (isEmpty!22145 (originalCharacters!6255 token!511))))))

(assert (=> d!1056094 (= (inv!50921 token!511) e!2215734)))

(declare-fun b!3581102 () Bool)

(declare-fun res!1444856 () Bool)

(assert (=> b!3581102 (=> (not res!1444856) (not e!2215734))))

(declare-fun dynLambda!16181 (Int TokenValue!5771) BalanceConc!22492)

(assert (=> b!3581102 (= res!1444856 (= (originalCharacters!6255 token!511) (list!13815 (dynLambda!16181 (toChars!7676 (transformation!5541 (rule!8253 token!511))) (value!178380 token!511)))))))

(declare-fun b!3581103 () Bool)

(declare-fun size!28677 (List!37741) Int)

(assert (=> b!3581103 (= e!2215734 (= (size!28675 token!511) (size!28677 (originalCharacters!6255 token!511))))))

(assert (= (and d!1056094 res!1444855) b!3581102))

(assert (= (and b!3581102 res!1444856) b!3581103))

(declare-fun b_lambda!105829 () Bool)

(assert (=> (not b_lambda!105829) (not b!3581102)))

(declare-fun t!290304 () Bool)

(declare-fun tb!204329 () Bool)

(assert (=> (and b!3580950 (= (toChars!7676 (transformation!5541 anOtherTypeRule!33)) (toChars!7676 (transformation!5541 (rule!8253 token!511)))) t!290304) tb!204329))

(declare-fun b!3581108 () Bool)

(declare-fun e!2215737 () Bool)

(declare-fun tp!1096228 () Bool)

(declare-fun inv!50924 (Conc!11439) Bool)

(assert (=> b!3581108 (= e!2215737 (and (inv!50924 (c!620481 (dynLambda!16181 (toChars!7676 (transformation!5541 (rule!8253 token!511))) (value!178380 token!511)))) tp!1096228))))

(declare-fun result!249088 () Bool)

(declare-fun inv!50925 (BalanceConc!22492) Bool)

(assert (=> tb!204329 (= result!249088 (and (inv!50925 (dynLambda!16181 (toChars!7676 (transformation!5541 (rule!8253 token!511))) (value!178380 token!511))) e!2215737))))

(assert (= tb!204329 b!3581108))

(declare-fun m!4074895 () Bool)

(assert (=> b!3581108 m!4074895))

(declare-fun m!4074897 () Bool)

(assert (=> tb!204329 m!4074897))

(assert (=> b!3581102 t!290304))

(declare-fun b_and!258367 () Bool)

(assert (= b_and!258329 (and (=> t!290304 result!249088) b_and!258367)))

(declare-fun tb!204331 () Bool)

(declare-fun t!290306 () Bool)

(assert (=> (and b!3580960 (= (toChars!7676 (transformation!5541 (h!43038 rules!3307))) (toChars!7676 (transformation!5541 (rule!8253 token!511)))) t!290306) tb!204331))

(declare-fun result!249092 () Bool)

(assert (= result!249092 result!249088))

(assert (=> b!3581102 t!290306))

(declare-fun b_and!258369 () Bool)

(assert (= b_and!258333 (and (=> t!290306 result!249092) b_and!258369)))

(declare-fun t!290308 () Bool)

(declare-fun tb!204333 () Bool)

(assert (=> (and b!3580958 (= (toChars!7676 (transformation!5541 rule!403)) (toChars!7676 (transformation!5541 (rule!8253 token!511)))) t!290308) tb!204333))

(declare-fun result!249094 () Bool)

(assert (= result!249094 result!249088))

(assert (=> b!3581102 t!290308))

(declare-fun b_and!258371 () Bool)

(assert (= b_and!258337 (and (=> t!290308 result!249094) b_and!258371)))

(declare-fun t!290310 () Bool)

(declare-fun tb!204335 () Bool)

(assert (=> (and b!3580954 (= (toChars!7676 (transformation!5541 (rule!8253 token!511))) (toChars!7676 (transformation!5541 (rule!8253 token!511)))) t!290310) tb!204335))

(declare-fun result!249096 () Bool)

(assert (= result!249096 result!249088))

(assert (=> b!3581102 t!290310))

(declare-fun b_and!258373 () Bool)

(assert (= b_and!258341 (and (=> t!290310 result!249096) b_and!258373)))

(declare-fun m!4074899 () Bool)

(assert (=> d!1056094 m!4074899))

(declare-fun m!4074901 () Bool)

(assert (=> b!3581102 m!4074901))

(assert (=> b!3581102 m!4074901))

(declare-fun m!4074903 () Bool)

(assert (=> b!3581102 m!4074903))

(declare-fun m!4074905 () Bool)

(assert (=> b!3581103 m!4074905))

(assert (=> start!331988 d!1056094))

(declare-fun d!1056100 () Bool)

(declare-fun res!1444861 () Bool)

(declare-fun e!2215742 () Bool)

(assert (=> d!1056100 (=> (not res!1444861) (not e!2215742))))

(declare-fun rulesValid!2104 (LexerInterface!5130 List!37742) Bool)

(assert (=> d!1056100 (= res!1444861 (rulesValid!2104 thiss!23823 rules!3307))))

(assert (=> d!1056100 (= (rulesInvariant!4527 thiss!23823 rules!3307) e!2215742)))

(declare-fun b!3581113 () Bool)

(declare-datatypes ((List!37746 0))(
  ( (Nil!37622) (Cons!37622 (h!43042 String!42191) (t!290313 List!37746)) )
))
(declare-fun noDuplicateTag!2100 (LexerInterface!5130 List!37742 List!37746) Bool)

(assert (=> b!3581113 (= e!2215742 (noDuplicateTag!2100 thiss!23823 rules!3307 Nil!37622))))

(assert (= (and d!1056100 res!1444861) b!3581113))

(declare-fun m!4074907 () Bool)

(assert (=> d!1056100 m!4074907))

(declare-fun m!4074909 () Bool)

(assert (=> b!3581113 m!4074909))

(assert (=> b!3580959 d!1056100))

(declare-fun d!1056102 () Bool)

(assert (=> d!1056102 (= (inv!50917 (tag!6207 rule!403)) (= (mod (str.len (value!178379 (tag!6207 rule!403))) 2) 0))))

(assert (=> b!3580948 d!1056102))

(declare-fun d!1056104 () Bool)

(declare-fun res!1444863 () Bool)

(declare-fun e!2215744 () Bool)

(assert (=> d!1056104 (=> (not res!1444863) (not e!2215744))))

(assert (=> d!1056104 (= res!1444863 (semiInverseModEq!2345 (toChars!7676 (transformation!5541 rule!403)) (toValue!7817 (transformation!5541 rule!403))))))

(assert (=> d!1056104 (= (inv!50920 (transformation!5541 rule!403)) e!2215744)))

(declare-fun b!3581115 () Bool)

(assert (=> b!3581115 (= e!2215744 (equivClasses!2244 (toChars!7676 (transformation!5541 rule!403)) (toValue!7817 (transformation!5541 rule!403))))))

(assert (= (and d!1056104 res!1444863) b!3581115))

(declare-fun m!4074915 () Bool)

(assert (=> d!1056104 m!4074915))

(declare-fun m!4074917 () Bool)

(assert (=> b!3581115 m!4074917))

(assert (=> b!3580948 d!1056104))

(declare-fun d!1056108 () Bool)

(declare-fun isEmpty!22148 (Option!7729) Bool)

(assert (=> d!1056108 (= (isDefined!5963 lt!1228558) (not (isEmpty!22148 lt!1228558)))))

(declare-fun bs!569881 () Bool)

(assert (= bs!569881 d!1056108))

(declare-fun m!4074919 () Bool)

(assert (=> bs!569881 m!4074919))

(assert (=> b!3580949 d!1056108))

(declare-fun b!3581183 () Bool)

(declare-fun e!2215785 () Bool)

(declare-fun e!2215787 () Bool)

(assert (=> b!3581183 (= e!2215785 e!2215787)))

(declare-fun res!1444909 () Bool)

(assert (=> b!3581183 (=> (not res!1444909) (not e!2215787))))

(declare-fun lt!1228586 () Option!7729)

(assert (=> b!3581183 (= res!1444909 (isDefined!5963 lt!1228586))))

(declare-fun b!3581184 () Bool)

(declare-fun res!1444903 () Bool)

(assert (=> b!3581184 (=> (not res!1444903) (not e!2215787))))

(declare-fun apply!9059 (TokenValueInjection!10970 BalanceConc!22492) TokenValue!5771)

(declare-fun seqFromList!4102 (List!37741) BalanceConc!22492)

(assert (=> b!3581184 (= res!1444903 (= (value!178380 (_1!21896 (get!12112 lt!1228586))) (apply!9059 (transformation!5541 (rule!8253 (_1!21896 (get!12112 lt!1228586)))) (seqFromList!4102 (originalCharacters!6255 (_1!21896 (get!12112 lt!1228586)))))))))

(declare-fun b!3581185 () Bool)

(declare-fun res!1444905 () Bool)

(assert (=> b!3581185 (=> (not res!1444905) (not e!2215787))))

(assert (=> b!3581185 (= res!1444905 (= (list!13815 (charsOf!3555 (_1!21896 (get!12112 lt!1228586)))) (originalCharacters!6255 (_1!21896 (get!12112 lt!1228586)))))))

(declare-fun d!1056110 () Bool)

(assert (=> d!1056110 e!2215785))

(declare-fun res!1444908 () Bool)

(assert (=> d!1056110 (=> res!1444908 e!2215785)))

(assert (=> d!1056110 (= res!1444908 (isEmpty!22148 lt!1228586))))

(declare-fun e!2215786 () Option!7729)

(assert (=> d!1056110 (= lt!1228586 e!2215786)))

(declare-fun c!620511 () Bool)

(assert (=> d!1056110 (= c!620511 (and (is-Cons!37618 rules!3307) (is-Nil!37618 (t!290291 rules!3307))))))

(declare-fun lt!1228589 () Unit!53622)

(declare-fun lt!1228587 () Unit!53622)

(assert (=> d!1056110 (= lt!1228589 lt!1228587)))

(declare-fun isPrefix!2904 (List!37741 List!37741) Bool)

(assert (=> d!1056110 (isPrefix!2904 (list!13815 (charsOf!3555 token!511)) (list!13815 (charsOf!3555 token!511)))))

(declare-fun lemmaIsPrefixRefl!1863 (List!37741 List!37741) Unit!53622)

(assert (=> d!1056110 (= lt!1228587 (lemmaIsPrefixRefl!1863 (list!13815 (charsOf!3555 token!511)) (list!13815 (charsOf!3555 token!511))))))

(declare-fun rulesValidInductive!1924 (LexerInterface!5130 List!37742) Bool)

(assert (=> d!1056110 (rulesValidInductive!1924 thiss!23823 rules!3307)))

(assert (=> d!1056110 (= (maxPrefix!2664 thiss!23823 rules!3307 (list!13815 (charsOf!3555 token!511))) lt!1228586)))

(declare-fun bm!259306 () Bool)

(declare-fun call!259311 () Option!7729)

(declare-fun maxPrefixOneRule!1822 (LexerInterface!5130 Rule!10882 List!37741) Option!7729)

(assert (=> bm!259306 (= call!259311 (maxPrefixOneRule!1822 thiss!23823 (h!43038 rules!3307) (list!13815 (charsOf!3555 token!511))))))

(declare-fun b!3581186 () Bool)

(assert (=> b!3581186 (= e!2215786 call!259311)))

(declare-fun b!3581187 () Bool)

(declare-fun res!1444907 () Bool)

(assert (=> b!3581187 (=> (not res!1444907) (not e!2215787))))

(assert (=> b!3581187 (= res!1444907 (< (size!28677 (_2!21896 (get!12112 lt!1228586))) (size!28677 (list!13815 (charsOf!3555 token!511)))))))

(declare-fun b!3581188 () Bool)

(declare-fun res!1444906 () Bool)

(assert (=> b!3581188 (=> (not res!1444906) (not e!2215787))))

(declare-fun ++!9353 (List!37741 List!37741) List!37741)

(assert (=> b!3581188 (= res!1444906 (= (++!9353 (list!13815 (charsOf!3555 (_1!21896 (get!12112 lt!1228586)))) (_2!21896 (get!12112 lt!1228586))) (list!13815 (charsOf!3555 token!511))))))

(declare-fun b!3581189 () Bool)

(declare-fun res!1444904 () Bool)

(assert (=> b!3581189 (=> (not res!1444904) (not e!2215787))))

(declare-fun matchR!4869 (Regex!10300 List!37741) Bool)

(assert (=> b!3581189 (= res!1444904 (matchR!4869 (regex!5541 (rule!8253 (_1!21896 (get!12112 lt!1228586)))) (list!13815 (charsOf!3555 (_1!21896 (get!12112 lt!1228586))))))))

(declare-fun b!3581190 () Bool)

(assert (=> b!3581190 (= e!2215787 (contains!7145 rules!3307 (rule!8253 (_1!21896 (get!12112 lt!1228586)))))))

(declare-fun b!3581191 () Bool)

(declare-fun lt!1228590 () Option!7729)

(declare-fun lt!1228588 () Option!7729)

(assert (=> b!3581191 (= e!2215786 (ite (and (is-None!7728 lt!1228590) (is-None!7728 lt!1228588)) None!7728 (ite (is-None!7728 lt!1228588) lt!1228590 (ite (is-None!7728 lt!1228590) lt!1228588 (ite (>= (size!28675 (_1!21896 (v!37370 lt!1228590))) (size!28675 (_1!21896 (v!37370 lt!1228588)))) lt!1228590 lt!1228588)))))))

(assert (=> b!3581191 (= lt!1228590 call!259311)))

(assert (=> b!3581191 (= lt!1228588 (maxPrefix!2664 thiss!23823 (t!290291 rules!3307) (list!13815 (charsOf!3555 token!511))))))

(assert (= (and d!1056110 c!620511) b!3581186))

(assert (= (and d!1056110 (not c!620511)) b!3581191))

(assert (= (or b!3581186 b!3581191) bm!259306))

(assert (= (and d!1056110 (not res!1444908)) b!3581183))

(assert (= (and b!3581183 res!1444909) b!3581185))

(assert (= (and b!3581185 res!1444905) b!3581187))

(assert (= (and b!3581187 res!1444907) b!3581188))

(assert (= (and b!3581188 res!1444906) b!3581184))

(assert (= (and b!3581184 res!1444903) b!3581189))

(assert (= (and b!3581189 res!1444904) b!3581190))

(assert (=> b!3581191 m!4074757))

(declare-fun m!4074939 () Bool)

(assert (=> b!3581191 m!4074939))

(declare-fun m!4074941 () Bool)

(assert (=> d!1056110 m!4074941))

(assert (=> d!1056110 m!4074757))

(assert (=> d!1056110 m!4074757))

(declare-fun m!4074943 () Bool)

(assert (=> d!1056110 m!4074943))

(assert (=> d!1056110 m!4074757))

(assert (=> d!1056110 m!4074757))

(declare-fun m!4074945 () Bool)

(assert (=> d!1056110 m!4074945))

(declare-fun m!4074947 () Bool)

(assert (=> d!1056110 m!4074947))

(declare-fun m!4074949 () Bool)

(assert (=> b!3581189 m!4074949))

(declare-fun m!4074951 () Bool)

(assert (=> b!3581189 m!4074951))

(assert (=> b!3581189 m!4074951))

(declare-fun m!4074953 () Bool)

(assert (=> b!3581189 m!4074953))

(assert (=> b!3581189 m!4074953))

(declare-fun m!4074955 () Bool)

(assert (=> b!3581189 m!4074955))

(assert (=> bm!259306 m!4074757))

(declare-fun m!4074957 () Bool)

(assert (=> bm!259306 m!4074957))

(assert (=> b!3581188 m!4074949))

(assert (=> b!3581188 m!4074951))

(assert (=> b!3581188 m!4074951))

(assert (=> b!3581188 m!4074953))

(assert (=> b!3581188 m!4074953))

(declare-fun m!4074959 () Bool)

(assert (=> b!3581188 m!4074959))

(assert (=> b!3581187 m!4074949))

(declare-fun m!4074961 () Bool)

(assert (=> b!3581187 m!4074961))

(assert (=> b!3581187 m!4074757))

(declare-fun m!4074963 () Bool)

(assert (=> b!3581187 m!4074963))

(assert (=> b!3581190 m!4074949))

(declare-fun m!4074965 () Bool)

(assert (=> b!3581190 m!4074965))

(assert (=> b!3581184 m!4074949))

(declare-fun m!4074967 () Bool)

(assert (=> b!3581184 m!4074967))

(assert (=> b!3581184 m!4074967))

(declare-fun m!4074969 () Bool)

(assert (=> b!3581184 m!4074969))

(assert (=> b!3581185 m!4074949))

(assert (=> b!3581185 m!4074951))

(assert (=> b!3581185 m!4074951))

(assert (=> b!3581185 m!4074953))

(declare-fun m!4074971 () Bool)

(assert (=> b!3581183 m!4074971))

(assert (=> b!3580949 d!1056110))

(declare-fun d!1056124 () Bool)

(declare-fun list!13817 (Conc!11439) List!37741)

(assert (=> d!1056124 (= (list!13815 (charsOf!3555 token!511)) (list!13817 (c!620481 (charsOf!3555 token!511))))))

(declare-fun bs!569883 () Bool)

(assert (= bs!569883 d!1056124))

(declare-fun m!4074975 () Bool)

(assert (=> bs!569883 m!4074975))

(assert (=> b!3580949 d!1056124))

(declare-fun d!1056128 () Bool)

(declare-fun lt!1228596 () BalanceConc!22492)

(assert (=> d!1056128 (= (list!13815 lt!1228596) (originalCharacters!6255 token!511))))

(assert (=> d!1056128 (= lt!1228596 (dynLambda!16181 (toChars!7676 (transformation!5541 (rule!8253 token!511))) (value!178380 token!511)))))

(assert (=> d!1056128 (= (charsOf!3555 token!511) lt!1228596)))

(declare-fun b_lambda!105831 () Bool)

(assert (=> (not b_lambda!105831) (not d!1056128)))

(assert (=> d!1056128 t!290304))

(declare-fun b_and!258375 () Bool)

(assert (= b_and!258367 (and (=> t!290304 result!249088) b_and!258375)))

(assert (=> d!1056128 t!290306))

(declare-fun b_and!258377 () Bool)

(assert (= b_and!258369 (and (=> t!290306 result!249092) b_and!258377)))

(assert (=> d!1056128 t!290308))

(declare-fun b_and!258379 () Bool)

(assert (= b_and!258371 (and (=> t!290308 result!249094) b_and!258379)))

(assert (=> d!1056128 t!290310))

(declare-fun b_and!258381 () Bool)

(assert (= b_and!258373 (and (=> t!290310 result!249096) b_and!258381)))

(declare-fun m!4074977 () Bool)

(assert (=> d!1056128 m!4074977))

(assert (=> d!1056128 m!4074901))

(assert (=> b!3580949 d!1056128))

(declare-fun b!3581205 () Bool)

(declare-fun e!2215790 () Bool)

(declare-fun tp!1096239 () Bool)

(declare-fun tp!1096243 () Bool)

(assert (=> b!3581205 (= e!2215790 (and tp!1096239 tp!1096243))))

(declare-fun b!3581202 () Bool)

(declare-fun tp_is_empty!17683 () Bool)

(assert (=> b!3581202 (= e!2215790 tp_is_empty!17683)))

(assert (=> b!3580961 (= tp!1096176 e!2215790)))

(declare-fun b!3581204 () Bool)

(declare-fun tp!1096240 () Bool)

(assert (=> b!3581204 (= e!2215790 tp!1096240)))

(declare-fun b!3581203 () Bool)

(declare-fun tp!1096242 () Bool)

(declare-fun tp!1096241 () Bool)

(assert (=> b!3581203 (= e!2215790 (and tp!1096242 tp!1096241))))

(assert (= (and b!3580961 (is-ElementMatch!10300 (regex!5541 anOtherTypeRule!33))) b!3581202))

(assert (= (and b!3580961 (is-Concat!16072 (regex!5541 anOtherTypeRule!33))) b!3581203))

(assert (= (and b!3580961 (is-Star!10300 (regex!5541 anOtherTypeRule!33))) b!3581204))

(assert (= (and b!3580961 (is-Union!10300 (regex!5541 anOtherTypeRule!33))) b!3581205))

(declare-fun b!3581211 () Bool)

(declare-fun e!2215793 () Bool)

(declare-fun tp!1096244 () Bool)

(declare-fun tp!1096248 () Bool)

(assert (=> b!3581211 (= e!2215793 (and tp!1096244 tp!1096248))))

(declare-fun b!3581208 () Bool)

(assert (=> b!3581208 (= e!2215793 tp_is_empty!17683)))

(assert (=> b!3580946 (= tp!1096172 e!2215793)))

(declare-fun b!3581210 () Bool)

(declare-fun tp!1096245 () Bool)

(assert (=> b!3581210 (= e!2215793 tp!1096245)))

(declare-fun b!3581209 () Bool)

(declare-fun tp!1096247 () Bool)

(declare-fun tp!1096246 () Bool)

(assert (=> b!3581209 (= e!2215793 (and tp!1096247 tp!1096246))))

(assert (= (and b!3580946 (is-ElementMatch!10300 (regex!5541 (h!43038 rules!3307)))) b!3581208))

(assert (= (and b!3580946 (is-Concat!16072 (regex!5541 (h!43038 rules!3307)))) b!3581209))

(assert (= (and b!3580946 (is-Star!10300 (regex!5541 (h!43038 rules!3307)))) b!3581210))

(assert (= (and b!3580946 (is-Union!10300 (regex!5541 (h!43038 rules!3307)))) b!3581211))

(declare-fun b!3581224 () Bool)

(declare-fun b_free!91993 () Bool)

(declare-fun b_next!92697 () Bool)

(assert (=> b!3581224 (= b_free!91993 (not b_next!92697))))

(declare-fun tp!1096257 () Bool)

(declare-fun b_and!258383 () Bool)

(assert (=> b!3581224 (= tp!1096257 b_and!258383)))

(declare-fun b_free!91995 () Bool)

(declare-fun b_next!92699 () Bool)

(assert (=> b!3581224 (= b_free!91995 (not b_next!92699))))

(declare-fun t!290312 () Bool)

(declare-fun tb!204337 () Bool)

(assert (=> (and b!3581224 (= (toChars!7676 (transformation!5541 (h!43038 (t!290291 rules!3307)))) (toChars!7676 (transformation!5541 (rule!8253 token!511)))) t!290312) tb!204337))

(declare-fun result!249102 () Bool)

(assert (= result!249102 result!249088))

(assert (=> b!3581102 t!290312))

(assert (=> d!1056128 t!290312))

(declare-fun tp!1096259 () Bool)

(declare-fun b_and!258385 () Bool)

(assert (=> b!3581224 (= tp!1096259 (and (=> t!290312 result!249102) b_and!258385))))

(declare-fun e!2215806 () Bool)

(assert (=> b!3581224 (= e!2215806 (and tp!1096257 tp!1096259))))

(declare-fun e!2215805 () Bool)

(declare-fun b!3581223 () Bool)

(declare-fun tp!1096258 () Bool)

(assert (=> b!3581223 (= e!2215805 (and tp!1096258 (inv!50917 (tag!6207 (h!43038 (t!290291 rules!3307)))) (inv!50920 (transformation!5541 (h!43038 (t!290291 rules!3307)))) e!2215806))))

(declare-fun b!3581222 () Bool)

(declare-fun e!2215807 () Bool)

(declare-fun tp!1096260 () Bool)

(assert (=> b!3581222 (= e!2215807 (and e!2215805 tp!1096260))))

(assert (=> b!3580952 (= tp!1096180 e!2215807)))

(assert (= b!3581223 b!3581224))

(assert (= b!3581222 b!3581223))

(assert (= (and b!3580952 (is-Cons!37618 (t!290291 rules!3307))) b!3581222))

(declare-fun m!4074979 () Bool)

(assert (=> b!3581223 m!4074979))

(declare-fun m!4074981 () Bool)

(assert (=> b!3581223 m!4074981))

(declare-fun b!3581231 () Bool)

(declare-fun e!2215812 () Bool)

(declare-fun tp!1096263 () Bool)

(assert (=> b!3581231 (= e!2215812 (and tp_is_empty!17683 tp!1096263))))

(assert (=> b!3580943 (= tp!1096167 e!2215812)))

(assert (= (and b!3580943 (is-Cons!37617 (originalCharacters!6255 token!511))) b!3581231))

(declare-fun b!3581235 () Bool)

(declare-fun e!2215813 () Bool)

(declare-fun tp!1096264 () Bool)

(declare-fun tp!1096268 () Bool)

(assert (=> b!3581235 (= e!2215813 (and tp!1096264 tp!1096268))))

(declare-fun b!3581232 () Bool)

(assert (=> b!3581232 (= e!2215813 tp_is_empty!17683)))

(assert (=> b!3580948 (= tp!1096179 e!2215813)))

(declare-fun b!3581234 () Bool)

(declare-fun tp!1096265 () Bool)

(assert (=> b!3581234 (= e!2215813 tp!1096265)))

(declare-fun b!3581233 () Bool)

(declare-fun tp!1096267 () Bool)

(declare-fun tp!1096266 () Bool)

(assert (=> b!3581233 (= e!2215813 (and tp!1096267 tp!1096266))))

(assert (= (and b!3580948 (is-ElementMatch!10300 (regex!5541 rule!403))) b!3581232))

(assert (= (and b!3580948 (is-Concat!16072 (regex!5541 rule!403))) b!3581233))

(assert (= (and b!3580948 (is-Star!10300 (regex!5541 rule!403))) b!3581234))

(assert (= (and b!3580948 (is-Union!10300 (regex!5541 rule!403))) b!3581235))

(declare-fun b!3581239 () Bool)

(declare-fun e!2215814 () Bool)

(declare-fun tp!1096269 () Bool)

(declare-fun tp!1096273 () Bool)

(assert (=> b!3581239 (= e!2215814 (and tp!1096269 tp!1096273))))

(declare-fun b!3581236 () Bool)

(assert (=> b!3581236 (= e!2215814 tp_is_empty!17683)))

(assert (=> b!3580944 (= tp!1096170 e!2215814)))

(declare-fun b!3581238 () Bool)

(declare-fun tp!1096270 () Bool)

(assert (=> b!3581238 (= e!2215814 tp!1096270)))

(declare-fun b!3581237 () Bool)

(declare-fun tp!1096272 () Bool)

(declare-fun tp!1096271 () Bool)

(assert (=> b!3581237 (= e!2215814 (and tp!1096272 tp!1096271))))

(assert (= (and b!3580944 (is-ElementMatch!10300 (regex!5541 (rule!8253 token!511)))) b!3581236))

(assert (= (and b!3580944 (is-Concat!16072 (regex!5541 (rule!8253 token!511)))) b!3581237))

(assert (= (and b!3580944 (is-Star!10300 (regex!5541 (rule!8253 token!511)))) b!3581238))

(assert (= (and b!3580944 (is-Union!10300 (regex!5541 (rule!8253 token!511)))) b!3581239))

(declare-fun b_lambda!105833 () Bool)

(assert (= b_lambda!105831 (or (and b!3580958 b_free!91971 (= (toChars!7676 (transformation!5541 rule!403)) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) (and b!3580960 b_free!91967 (= (toChars!7676 (transformation!5541 (h!43038 rules!3307))) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) (and b!3580954 b_free!91975) (and b!3580950 b_free!91963 (= (toChars!7676 (transformation!5541 anOtherTypeRule!33)) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) (and b!3581224 b_free!91995 (= (toChars!7676 (transformation!5541 (h!43038 (t!290291 rules!3307)))) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) b_lambda!105833)))

(declare-fun b_lambda!105835 () Bool)

(assert (= b_lambda!105829 (or (and b!3580958 b_free!91971 (= (toChars!7676 (transformation!5541 rule!403)) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) (and b!3580960 b_free!91967 (= (toChars!7676 (transformation!5541 (h!43038 rules!3307))) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) (and b!3580954 b_free!91975) (and b!3580950 b_free!91963 (= (toChars!7676 (transformation!5541 anOtherTypeRule!33)) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) (and b!3581224 b_free!91995 (= (toChars!7676 (transformation!5541 (h!43038 (t!290291 rules!3307)))) (toChars!7676 (transformation!5541 (rule!8253 token!511))))) b_lambda!105835)))

(push 1)

(assert (not b!3581210))

(assert b_and!258339)

(assert (not b!3581209))

(assert (not b!3581211))

(assert (not b!3581235))

(assert (not b_next!92671))

(assert (not d!1056110))

(assert (not b!3581043))

(assert (not b!3581113))

(assert b_and!258331)

(assert (not b_next!92679))

(assert (not tb!204329))

(assert (not b!3581233))

(assert (not b!3581223))

(assert b_and!258381)

(assert (not d!1056104))

(assert (not b!3581115))

(assert (not b!3581031))

(assert (not b!3581183))

(assert b_and!258327)

(assert (not b!3581234))

(assert (not b!3581070))

(assert (not b_lambda!105835))

(assert (not d!1056100))

(assert (not b_next!92665))

(assert (not b!3581204))

(assert (not b!3581025))

(assert (not b!3581239))

(assert b_and!258383)

(assert (not b_next!92673))

(assert (not b_next!92699))

(assert (not b!3581108))

(assert (not b!3581191))

(assert (not b_next!92677))

(assert (not d!1056090))

(assert (not b!3581092))

(assert (not d!1056092))

(assert (not b!3581184))

(assert (not b_next!92675))

(assert (not d!1056086))

(assert (not d!1056124))

(assert (not d!1056094))

(assert (not b!3581187))

(assert (not b!3581190))

(assert (not b!3581189))

(assert (not b!3581103))

(assert (not b!3581203))

(assert (not b!3581205))

(assert b_and!258377)

(assert (not b!3581185))

(assert (not b!3581046))

(assert (not d!1056128))

(assert (not b_next!92669))

(assert (not b_lambda!105833))

(assert (not b!3581102))

(assert (not d!1056082))

(assert (not b!3581238))

(assert b_and!258375)

(assert (not d!1056062))

(assert (not b!3581222))

(assert (not bm!259292))

(assert (not b!3581237))

(assert (not b_next!92667))

(assert (not b!3581188))

(assert (not b!3581082))

(assert (not b!3581047))

(assert b_and!258379)

(assert (not bm!259306))

(assert (not b!3581090))

(assert tp_is_empty!17683)

(assert (not d!1056074))

(assert (not d!1056064))

(assert (not b!3581231))

(assert b_and!258385)

(assert (not b_next!92697))

(assert b_and!258335)

(assert (not bm!259294))

(assert (not b!3581045))

(assert (not d!1056108))

(check-sat)

(pop 1)

(push 1)

(assert b_and!258381)

(assert b_and!258327)

(assert b_and!258339)

(assert (not b_next!92665))

(assert (not b_next!92677))

(assert (not b_next!92675))

(assert b_and!258377)

(assert (not b_next!92669))

(assert b_and!258375)

(assert (not b_next!92667))

(assert b_and!258379)

(assert (not b_next!92671))

(assert b_and!258335)

(assert b_and!258331)

(assert (not b_next!92679))

(assert b_and!258383)

(assert (not b_next!92673))

(assert (not b_next!92699))

(assert b_and!258385)

(assert (not b_next!92697))

(check-sat)

(pop 1)

