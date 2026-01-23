; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!181142 () Bool)

(assert start!181142)

(declare-fun b!1826776 () Bool)

(declare-fun b_free!50879 () Bool)

(declare-fun b_next!51583 () Bool)

(assert (=> b!1826776 (= b_free!50879 (not b_next!51583))))

(declare-fun tp!516473 () Bool)

(declare-fun b_and!141893 () Bool)

(assert (=> b!1826776 (= tp!516473 b_and!141893)))

(declare-fun b_free!50881 () Bool)

(declare-fun b_next!51585 () Bool)

(assert (=> b!1826776 (= b_free!50881 (not b_next!51585))))

(declare-fun tp!516476 () Bool)

(declare-fun b_and!141895 () Bool)

(assert (=> b!1826776 (= tp!516476 b_and!141895)))

(declare-fun b!1826779 () Bool)

(declare-fun b_free!50883 () Bool)

(declare-fun b_next!51587 () Bool)

(assert (=> b!1826779 (= b_free!50883 (not b_next!51587))))

(declare-fun tp!516480 () Bool)

(declare-fun b_and!141897 () Bool)

(assert (=> b!1826779 (= tp!516480 b_and!141897)))

(declare-fun b_free!50885 () Bool)

(declare-fun b_next!51589 () Bool)

(assert (=> b!1826779 (= b_free!50885 (not b_next!51589))))

(declare-fun tp!516479 () Bool)

(declare-fun b_and!141899 () Bool)

(assert (=> b!1826779 (= tp!516479 b_and!141899)))

(declare-fun b!1826767 () Bool)

(declare-fun b_free!50887 () Bool)

(declare-fun b_next!51591 () Bool)

(assert (=> b!1826767 (= b_free!50887 (not b_next!51591))))

(declare-fun tp!516475 () Bool)

(declare-fun b_and!141901 () Bool)

(assert (=> b!1826767 (= tp!516475 b_and!141901)))

(declare-fun b_free!50889 () Bool)

(declare-fun b_next!51593 () Bool)

(assert (=> b!1826767 (= b_free!50889 (not b_next!51593))))

(declare-fun tp!516478 () Bool)

(declare-fun b_and!141903 () Bool)

(assert (=> b!1826767 (= tp!516478 b_and!141903)))

(declare-fun b!1826775 () Bool)

(assert (=> b!1826775 true))

(declare-fun e!1167565 () Bool)

(declare-fun tp!516484 () Bool)

(declare-fun b!1826759 () Bool)

(declare-fun e!1167583 () Bool)

(declare-datatypes ((List!20126 0))(
  ( (Nil!20056) (Cons!20056 (h!25457 (_ BitVec 16)) (t!170325 List!20126)) )
))
(declare-datatypes ((TokenValue!3709 0))(
  ( (FloatLiteralValue!7418 (text!26408 List!20126)) (TokenValueExt!3708 (__x!12720 Int)) (Broken!18545 (value!112782 List!20126)) (Object!3778) (End!3709) (Def!3709) (Underscore!3709) (Match!3709) (Else!3709) (Error!3709) (Case!3709) (If!3709) (Extends!3709) (Abstract!3709) (Class!3709) (Val!3709) (DelimiterValue!7418 (del!3769 List!20126)) (KeywordValue!3715 (value!112783 List!20126)) (CommentValue!7418 (value!112784 List!20126)) (WhitespaceValue!7418 (value!112785 List!20126)) (IndentationValue!3709 (value!112786 List!20126)) (String!22876) (Int32!3709) (Broken!18546 (value!112787 List!20126)) (Boolean!3710) (Unit!34734) (OperatorValue!3712 (op!3769 List!20126)) (IdentifierValue!7418 (value!112788 List!20126)) (IdentifierValue!7419 (value!112789 List!20126)) (WhitespaceValue!7419 (value!112790 List!20126)) (True!7418) (False!7418) (Broken!18547 (value!112791 List!20126)) (Broken!18548 (value!112792 List!20126)) (True!7419) (RightBrace!3709) (RightBracket!3709) (Colon!3709) (Null!3709) (Comma!3709) (LeftBracket!3709) (False!7419) (LeftBrace!3709) (ImaginaryLiteralValue!3709 (text!26409 List!20126)) (StringLiteralValue!11127 (value!112793 List!20126)) (EOFValue!3709 (value!112794 List!20126)) (IdentValue!3709 (value!112795 List!20126)) (DelimiterValue!7419 (value!112796 List!20126)) (DedentValue!3709 (value!112797 List!20126)) (NewLineValue!3709 (value!112798 List!20126)) (IntegerValue!11127 (value!112799 (_ BitVec 32)) (text!26410 List!20126)) (IntegerValue!11128 (value!112800 Int) (text!26411 List!20126)) (Times!3709) (Or!3709) (Equal!3709) (Minus!3709) (Broken!18549 (value!112801 List!20126)) (And!3709) (Div!3709) (LessEqual!3709) (Mod!3709) (Concat!8656) (Not!3709) (Plus!3709) (SpaceValue!3709 (value!112802 List!20126)) (IntegerValue!11129 (value!112803 Int) (text!26412 List!20126)) (StringLiteralValue!11128 (text!26413 List!20126)) (FloatLiteralValue!7419 (text!26414 List!20126)) (BytesLiteralValue!3709 (value!112804 List!20126)) (CommentValue!7419 (value!112805 List!20126)) (StringLiteralValue!11129 (value!112806 List!20126)) (ErrorTokenValue!3709 (msg!3770 List!20126)) )
))
(declare-datatypes ((C!10068 0))(
  ( (C!10069 (val!5630 Int)) )
))
(declare-datatypes ((List!20127 0))(
  ( (Nil!20057) (Cons!20057 (h!25458 C!10068) (t!170326 List!20127)) )
))
(declare-datatypes ((IArray!13307 0))(
  ( (IArray!13308 (innerList!6711 List!20127)) )
))
(declare-datatypes ((Conc!6651 0))(
  ( (Node!6651 (left!16050 Conc!6651) (right!16380 Conc!6651) (csize!13532 Int) (cheight!6862 Int)) (Leaf!9681 (xs!9527 IArray!13307) (csize!13533 Int)) (Empty!6651) )
))
(declare-datatypes ((BalanceConc!13246 0))(
  ( (BalanceConc!13247 (c!298010 Conc!6651)) )
))
(declare-datatypes ((TokenValueInjection!7078 0))(
  ( (TokenValueInjection!7079 (toValue!5158 Int) (toChars!5017 Int)) )
))
(declare-datatypes ((String!22877 0))(
  ( (String!22878 (value!112807 String)) )
))
(declare-datatypes ((Regex!4947 0))(
  ( (ElementMatch!4947 (c!298011 C!10068)) (Concat!8657 (regOne!10406 Regex!4947) (regTwo!10406 Regex!4947)) (EmptyExpr!4947) (Star!4947 (reg!5276 Regex!4947)) (EmptyLang!4947) (Union!4947 (regOne!10407 Regex!4947) (regTwo!10407 Regex!4947)) )
))
(declare-datatypes ((Rule!7038 0))(
  ( (Rule!7039 (regex!3619 Regex!4947) (tag!4033 String!22877) (isSeparator!3619 Bool) (transformation!3619 TokenValueInjection!7078)) )
))
(declare-datatypes ((Token!6792 0))(
  ( (Token!6793 (value!112808 TokenValue!3709) (rule!5779 Rule!7038) (size!15915 Int) (originalCharacters!4427 List!20127)) )
))
(declare-fun token!556 () Token!6792)

(declare-fun inv!21 (TokenValue!3709) Bool)

(assert (=> b!1826759 (= e!1167565 (and (inv!21 (value!112808 token!556)) e!1167583 tp!516484))))

(declare-fun e!1167576 () Bool)

(declare-fun b!1826760 () Bool)

(declare-datatypes ((List!20128 0))(
  ( (Nil!20058) (Cons!20058 (h!25459 Rule!7038) (t!170327 List!20128)) )
))
(declare-fun rules!4538 () List!20128)

(declare-fun tp!516482 () Bool)

(declare-fun e!1167568 () Bool)

(declare-fun inv!26097 (String!22877) Bool)

(declare-fun inv!26100 (TokenValueInjection!7078) Bool)

(assert (=> b!1826760 (= e!1167568 (and tp!516482 (inv!26097 (tag!4033 (h!25459 rules!4538))) (inv!26100 (transformation!3619 (h!25459 rules!4538))) e!1167576))))

(declare-fun b!1826761 () Bool)

(declare-fun res!821563 () Bool)

(declare-fun e!1167581 () Bool)

(assert (=> b!1826761 (=> (not res!821563) (not e!1167581))))

(declare-fun rule!559 () Rule!7038)

(declare-fun contains!3684 (List!20128 Rule!7038) Bool)

(assert (=> b!1826761 (= res!821563 (contains!3684 rules!4538 rule!559))))

(declare-fun b!1826762 () Bool)

(declare-fun e!1167574 () Bool)

(declare-fun e!1167573 () Bool)

(assert (=> b!1826762 (= e!1167574 e!1167573)))

(declare-fun res!821559 () Bool)

(assert (=> b!1826762 (=> res!821559 e!1167573)))

(declare-fun lt!709793 () Regex!4947)

(declare-datatypes ((List!20129 0))(
  ( (Nil!20059) (Cons!20059 (h!25460 Regex!4947) (t!170328 List!20129)) )
))
(declare-fun lt!709795 () List!20129)

(declare-fun generalisedUnion!472 (List!20129) Regex!4947)

(assert (=> b!1826762 (= res!821559 (not (= lt!709793 (generalisedUnion!472 lt!709795))))))

(declare-datatypes ((LexerInterface!3248 0))(
  ( (LexerInterfaceExt!3245 (__x!12721 Int)) (Lexer!3246) )
))
(declare-fun thiss!28068 () LexerInterface!3248)

(declare-fun rulesRegex!949 (LexerInterface!3248 List!20128) Regex!4947)

(assert (=> b!1826762 (= lt!709793 (rulesRegex!949 thiss!28068 rules!4538))))

(declare-fun lambda!71727 () Int)

(declare-fun map!4157 (List!20128 Int) List!20129)

(assert (=> b!1826762 (= lt!709795 (map!4157 rules!4538 lambda!71727))))

(declare-datatypes ((Unit!34735 0))(
  ( (Unit!34736) )
))
(declare-fun lt!709800 () Unit!34735)

(declare-fun suffix!1667 () List!20127)

(declare-fun input!3612 () List!20127)

(declare-fun lemma!511 (List!20127 Rule!7038 List!20128 List!20127 LexerInterface!3248 Token!6792 List!20128) Unit!34735)

(assert (=> b!1826762 (= lt!709800 (lemma!511 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(declare-fun res!821567 () Bool)

(assert (=> start!181142 (=> (not res!821567) (not e!1167581))))

(get-info :version)

(assert (=> start!181142 (= res!821567 ((_ is Lexer!3246) thiss!28068))))

(assert (=> start!181142 e!1167581))

(declare-fun e!1167564 () Bool)

(assert (=> start!181142 e!1167564))

(assert (=> start!181142 true))

(declare-fun e!1167570 () Bool)

(assert (=> start!181142 e!1167570))

(declare-fun inv!26101 (Token!6792) Bool)

(assert (=> start!181142 (and (inv!26101 token!556) e!1167565)))

(declare-fun e!1167579 () Bool)

(assert (=> start!181142 e!1167579))

(declare-fun e!1167580 () Bool)

(assert (=> start!181142 e!1167580))

(declare-fun b!1826763 () Bool)

(declare-fun e!1167578 () Bool)

(declare-fun e!1167584 () Bool)

(assert (=> b!1826763 (= e!1167578 e!1167584)))

(declare-fun res!821568 () Bool)

(assert (=> b!1826763 (=> (not res!821568) (not e!1167584))))

(declare-fun lt!709798 () List!20127)

(declare-fun ++!5443 (List!20127 List!20127) List!20127)

(assert (=> b!1826763 (= res!821568 (= input!3612 (++!5443 lt!709798 suffix!1667)))))

(declare-fun list!8149 (BalanceConc!13246) List!20127)

(declare-fun charsOf!2262 (Token!6792) BalanceConc!13246)

(assert (=> b!1826763 (= lt!709798 (list!8149 (charsOf!2262 token!556)))))

(declare-fun b!1826764 () Bool)

(declare-fun tp!516472 () Bool)

(assert (=> b!1826764 (= e!1167570 (and e!1167568 tp!516472))))

(declare-fun e!1167569 () Bool)

(declare-fun b!1826765 () Bool)

(declare-fun tp!516474 () Bool)

(assert (=> b!1826765 (= e!1167579 (and tp!516474 (inv!26097 (tag!4033 rule!559)) (inv!26100 (transformation!3619 rule!559)) e!1167569))))

(declare-fun b!1826766 () Bool)

(declare-fun e!1167572 () Bool)

(assert (=> b!1826766 (= e!1167584 (not e!1167572))))

(declare-fun res!821561 () Bool)

(assert (=> b!1826766 (=> res!821561 e!1167572)))

(declare-fun matchR!2412 (Regex!4947 List!20127) Bool)

(assert (=> b!1826766 (= res!821561 (not (matchR!2412 (regex!3619 rule!559) lt!709798)))))

(declare-fun ruleValid!1111 (LexerInterface!3248 Rule!7038) Bool)

(assert (=> b!1826766 (ruleValid!1111 thiss!28068 rule!559)))

(declare-fun lt!709797 () Unit!34735)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!632 (LexerInterface!3248 Rule!7038 List!20128) Unit!34735)

(assert (=> b!1826766 (= lt!709797 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!632 thiss!28068 rule!559 rules!4538))))

(assert (=> b!1826767 (= e!1167576 (and tp!516475 tp!516478))))

(declare-fun b!1826768 () Bool)

(assert (=> b!1826768 (= e!1167581 e!1167578)))

(declare-fun res!821570 () Bool)

(assert (=> b!1826768 (=> (not res!821570) (not e!1167578))))

(declare-datatypes ((tuple2!19546 0))(
  ( (tuple2!19547 (_1!11175 Token!6792) (_2!11175 List!20127)) )
))
(declare-datatypes ((Option!4199 0))(
  ( (None!4198) (Some!4198 (v!25759 tuple2!19546)) )
))
(declare-fun lt!709791 () Option!4199)

(declare-fun maxPrefix!1796 (LexerInterface!3248 List!20128 List!20127) Option!4199)

(assert (=> b!1826768 (= res!821570 (= (maxPrefix!1796 thiss!28068 rules!4538 input!3612) lt!709791))))

(assert (=> b!1826768 (= lt!709791 (Some!4198 (tuple2!19547 token!556 suffix!1667)))))

(declare-fun b!1826769 () Bool)

(assert (=> b!1826769 (= e!1167572 e!1167574)))

(declare-fun res!821566 () Bool)

(assert (=> b!1826769 (=> res!821566 e!1167574)))

(declare-fun lt!709790 () Option!4199)

(assert (=> b!1826769 (= res!821566 (not (= lt!709790 lt!709791)))))

(declare-fun lt!709796 () Int)

(declare-fun lt!709787 () TokenValue!3709)

(assert (=> b!1826769 (= lt!709790 (Some!4198 (tuple2!19547 (Token!6793 lt!709787 rule!559 lt!709796 lt!709798) suffix!1667)))))

(declare-fun maxPrefixOneRule!1161 (LexerInterface!3248 Rule!7038 List!20127) Option!4199)

(assert (=> b!1826769 (= lt!709790 (maxPrefixOneRule!1161 thiss!28068 rule!559 input!3612))))

(declare-fun size!15916 (List!20127) Int)

(assert (=> b!1826769 (= lt!709796 (size!15916 lt!709798))))

(declare-fun apply!5411 (TokenValueInjection!7078 BalanceConc!13246) TokenValue!3709)

(declare-fun seqFromList!2580 (List!20127) BalanceConc!13246)

(assert (=> b!1826769 (= lt!709787 (apply!5411 (transformation!3619 rule!559) (seqFromList!2580 lt!709798)))))

(declare-fun lt!709788 () Unit!34735)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!537 (LexerInterface!3248 List!20128 List!20127 List!20127 List!20127 Rule!7038) Unit!34735)

(assert (=> b!1826769 (= lt!709788 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!537 thiss!28068 rules!4538 lt!709798 input!3612 suffix!1667 rule!559))))

(declare-fun b!1826770 () Bool)

(declare-fun res!821569 () Bool)

(assert (=> b!1826770 (=> (not res!821569) (not e!1167581))))

(declare-fun rulesInvariant!2917 (LexerInterface!3248 List!20128) Bool)

(assert (=> b!1826770 (= res!821569 (rulesInvariant!2917 thiss!28068 rules!4538))))

(declare-fun b!1826771 () Bool)

(declare-fun res!821562 () Bool)

(assert (=> b!1826771 (=> (not res!821562) (not e!1167578))))

(assert (=> b!1826771 (= res!821562 (= (rule!5779 token!556) rule!559))))

(declare-fun b!1826772 () Bool)

(declare-fun e!1167571 () Bool)

(declare-fun tp!516483 () Bool)

(assert (=> b!1826772 (= e!1167583 (and tp!516483 (inv!26097 (tag!4033 (rule!5779 token!556))) (inv!26100 (transformation!3619 (rule!5779 token!556))) e!1167571))))

(declare-fun b!1826773 () Bool)

(declare-fun tp_is_empty!8129 () Bool)

(declare-fun tp!516477 () Bool)

(assert (=> b!1826773 (= e!1167580 (and tp_is_empty!8129 tp!516477))))

(declare-fun b!1826774 () Bool)

(declare-fun e!1167567 () Bool)

(declare-fun lt!709792 () List!20129)

(declare-fun lambda!71728 () Int)

(declare-fun exists!643 (List!20129 Int) Bool)

(assert (=> b!1826774 (= e!1167567 (exists!643 lt!709792 lambda!71728))))

(assert (=> b!1826774 (exists!643 lt!709792 lambda!71728)))

(declare-fun lt!709789 () Unit!34735)

(declare-fun lemmaContainsThenExists!49 (List!20129 Regex!4947 Int) Unit!34735)

(assert (=> b!1826774 (= lt!709789 (lemmaContainsThenExists!49 lt!709792 (regex!3619 rule!559) lambda!71728))))

(declare-fun e!1167563 () Bool)

(assert (=> b!1826775 (= e!1167563 e!1167567)))

(declare-fun res!821560 () Bool)

(assert (=> b!1826775 (=> res!821560 e!1167567)))

(declare-fun validRegex!2015 (Regex!4947) Bool)

(assert (=> b!1826775 (= res!821560 (not (validRegex!2015 (regex!3619 rule!559))))))

(assert (=> b!1826775 (= (matchR!2412 lt!709793 lt!709798) (exists!643 lt!709792 lambda!71728))))

(declare-fun lt!709794 () Unit!34735)

(declare-fun matchRGenUnionSpec!228 (Regex!4947 List!20129 List!20127) Unit!34735)

(assert (=> b!1826775 (= lt!709794 (matchRGenUnionSpec!228 lt!709793 lt!709792 lt!709798))))

(assert (=> b!1826776 (= e!1167569 (and tp!516473 tp!516476))))

(declare-fun b!1826777 () Bool)

(declare-fun tp!516481 () Bool)

(assert (=> b!1826777 (= e!1167564 (and tp_is_empty!8129 tp!516481))))

(declare-fun b!1826778 () Bool)

(assert (=> b!1826778 (= e!1167573 e!1167563)))

(declare-fun res!821564 () Bool)

(assert (=> b!1826778 (=> res!821564 e!1167563)))

(declare-fun contains!3685 (List!20129 Regex!4947) Bool)

(assert (=> b!1826778 (= res!821564 (not (contains!3685 lt!709792 (regex!3619 rule!559))))))

(assert (=> b!1826778 (= lt!709792 (map!4157 rules!4538 lambda!71727))))

(declare-fun lt!709799 () Unit!34735)

(declare-fun lemma!512 (List!20127 Rule!7038 List!20128 List!20127 LexerInterface!3248 Token!6792 List!20128) Unit!34735)

(assert (=> b!1826778 (= lt!709799 (lemma!512 input!3612 rule!559 rules!4538 suffix!1667 thiss!28068 token!556 rules!4538))))

(assert (=> b!1826779 (= e!1167571 (and tp!516480 tp!516479))))

(declare-fun b!1826780 () Bool)

(declare-fun res!821565 () Bool)

(assert (=> b!1826780 (=> (not res!821565) (not e!1167581))))

(declare-fun isEmpty!12667 (List!20128) Bool)

(assert (=> b!1826780 (= res!821565 (not (isEmpty!12667 rules!4538)))))

(assert (= (and start!181142 res!821567) b!1826780))

(assert (= (and b!1826780 res!821565) b!1826770))

(assert (= (and b!1826770 res!821569) b!1826761))

(assert (= (and b!1826761 res!821563) b!1826768))

(assert (= (and b!1826768 res!821570) b!1826771))

(assert (= (and b!1826771 res!821562) b!1826763))

(assert (= (and b!1826763 res!821568) b!1826766))

(assert (= (and b!1826766 (not res!821561)) b!1826769))

(assert (= (and b!1826769 (not res!821566)) b!1826762))

(assert (= (and b!1826762 (not res!821559)) b!1826778))

(assert (= (and b!1826778 (not res!821564)) b!1826775))

(assert (= (and b!1826775 (not res!821560)) b!1826774))

(assert (= (and start!181142 ((_ is Cons!20057) suffix!1667)) b!1826777))

(assert (= b!1826760 b!1826767))

(assert (= b!1826764 b!1826760))

(assert (= (and start!181142 ((_ is Cons!20058) rules!4538)) b!1826764))

(assert (= b!1826772 b!1826779))

(assert (= b!1826759 b!1826772))

(assert (= start!181142 b!1826759))

(assert (= b!1826765 b!1826776))

(assert (= start!181142 b!1826765))

(assert (= (and start!181142 ((_ is Cons!20057) input!3612)) b!1826773))

(declare-fun m!2255053 () Bool)

(assert (=> b!1826761 m!2255053))

(declare-fun m!2255055 () Bool)

(assert (=> b!1826766 m!2255055))

(declare-fun m!2255057 () Bool)

(assert (=> b!1826766 m!2255057))

(declare-fun m!2255059 () Bool)

(assert (=> b!1826766 m!2255059))

(declare-fun m!2255061 () Bool)

(assert (=> b!1826774 m!2255061))

(assert (=> b!1826774 m!2255061))

(declare-fun m!2255063 () Bool)

(assert (=> b!1826774 m!2255063))

(declare-fun m!2255065 () Bool)

(assert (=> b!1826780 m!2255065))

(declare-fun m!2255067 () Bool)

(assert (=> b!1826769 m!2255067))

(declare-fun m!2255069 () Bool)

(assert (=> b!1826769 m!2255069))

(declare-fun m!2255071 () Bool)

(assert (=> b!1826769 m!2255071))

(assert (=> b!1826769 m!2255071))

(declare-fun m!2255073 () Bool)

(assert (=> b!1826769 m!2255073))

(declare-fun m!2255075 () Bool)

(assert (=> b!1826769 m!2255075))

(declare-fun m!2255077 () Bool)

(assert (=> b!1826772 m!2255077))

(declare-fun m!2255079 () Bool)

(assert (=> b!1826772 m!2255079))

(declare-fun m!2255081 () Bool)

(assert (=> b!1826765 m!2255081))

(declare-fun m!2255083 () Bool)

(assert (=> b!1826765 m!2255083))

(declare-fun m!2255085 () Bool)

(assert (=> b!1826759 m!2255085))

(declare-fun m!2255087 () Bool)

(assert (=> b!1826763 m!2255087))

(declare-fun m!2255089 () Bool)

(assert (=> b!1826763 m!2255089))

(assert (=> b!1826763 m!2255089))

(declare-fun m!2255091 () Bool)

(assert (=> b!1826763 m!2255091))

(declare-fun m!2255093 () Bool)

(assert (=> b!1826775 m!2255093))

(declare-fun m!2255095 () Bool)

(assert (=> b!1826775 m!2255095))

(assert (=> b!1826775 m!2255061))

(declare-fun m!2255097 () Bool)

(assert (=> b!1826775 m!2255097))

(declare-fun m!2255099 () Bool)

(assert (=> b!1826760 m!2255099))

(declare-fun m!2255101 () Bool)

(assert (=> b!1826760 m!2255101))

(declare-fun m!2255103 () Bool)

(assert (=> start!181142 m!2255103))

(declare-fun m!2255105 () Bool)

(assert (=> b!1826778 m!2255105))

(declare-fun m!2255107 () Bool)

(assert (=> b!1826778 m!2255107))

(declare-fun m!2255109 () Bool)

(assert (=> b!1826778 m!2255109))

(declare-fun m!2255111 () Bool)

(assert (=> b!1826768 m!2255111))

(declare-fun m!2255113 () Bool)

(assert (=> b!1826762 m!2255113))

(declare-fun m!2255115 () Bool)

(assert (=> b!1826762 m!2255115))

(assert (=> b!1826762 m!2255107))

(declare-fun m!2255117 () Bool)

(assert (=> b!1826762 m!2255117))

(declare-fun m!2255119 () Bool)

(assert (=> b!1826770 m!2255119))

(check-sat (not b!1826775) (not b!1826769) (not b!1826774) (not b!1826768) b_and!141903 (not b!1826764) (not b_next!51591) (not b!1826766) (not b!1826763) b_and!141897 (not b!1826780) (not b!1826778) b_and!141895 (not b!1826762) (not b_next!51589) (not b!1826773) (not b!1826761) (not b_next!51583) (not b!1826765) (not b!1826759) (not b!1826770) (not b_next!51593) (not b_next!51585) (not b!1826777) (not b!1826760) b_and!141893 (not b_next!51587) tp_is_empty!8129 (not b!1826772) b_and!141901 b_and!141899 (not start!181142))
(check-sat (not b_next!51583) b_and!141903 (not b_next!51593) (not b_next!51587) (not b_next!51591) b_and!141897 b_and!141901 b_and!141895 (not b_next!51589) b_and!141899 (not b_next!51585) b_and!141893)
