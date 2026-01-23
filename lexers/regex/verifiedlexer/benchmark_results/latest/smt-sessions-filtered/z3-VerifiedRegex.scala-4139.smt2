; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!222316 () Bool)

(assert start!222316)

(declare-fun b!2272701 () Bool)

(declare-fun b_free!67613 () Bool)

(declare-fun b_next!68317 () Bool)

(assert (=> b!2272701 (= b_free!67613 (not b_next!68317))))

(declare-fun tp!719818 () Bool)

(declare-fun b_and!179113 () Bool)

(assert (=> b!2272701 (= tp!719818 b_and!179113)))

(declare-fun b_free!67615 () Bool)

(declare-fun b_next!68319 () Bool)

(assert (=> b!2272701 (= b_free!67615 (not b_next!68319))))

(declare-fun tp!719808 () Bool)

(declare-fun b_and!179115 () Bool)

(assert (=> b!2272701 (= tp!719808 b_and!179115)))

(declare-fun b!2272720 () Bool)

(declare-fun b_free!67617 () Bool)

(declare-fun b_next!68321 () Bool)

(assert (=> b!2272720 (= b_free!67617 (not b_next!68321))))

(declare-fun tp!719823 () Bool)

(declare-fun b_and!179117 () Bool)

(assert (=> b!2272720 (= tp!719823 b_and!179117)))

(declare-fun b_free!67619 () Bool)

(declare-fun b_next!68323 () Bool)

(assert (=> b!2272720 (= b_free!67619 (not b_next!68323))))

(declare-fun tp!719809 () Bool)

(declare-fun b_and!179119 () Bool)

(assert (=> b!2272720 (= tp!719809 b_and!179119)))

(declare-fun b!2272705 () Bool)

(declare-fun b_free!67621 () Bool)

(declare-fun b_next!68325 () Bool)

(assert (=> b!2272705 (= b_free!67621 (not b_next!68325))))

(declare-fun tp!719810 () Bool)

(declare-fun b_and!179121 () Bool)

(assert (=> b!2272705 (= tp!719810 b_and!179121)))

(declare-fun b_free!67623 () Bool)

(declare-fun b_next!68327 () Bool)

(assert (=> b!2272705 (= b_free!67623 (not b_next!68327))))

(declare-fun tp!719807 () Bool)

(declare-fun b_and!179123 () Bool)

(assert (=> b!2272705 (= tp!719807 b_and!179123)))

(declare-fun b!2272717 () Bool)

(declare-fun b_free!67625 () Bool)

(declare-fun b_next!68329 () Bool)

(assert (=> b!2272717 (= b_free!67625 (not b_next!68329))))

(declare-fun tp!719814 () Bool)

(declare-fun b_and!179125 () Bool)

(assert (=> b!2272717 (= tp!719814 b_and!179125)))

(declare-fun b_free!67627 () Bool)

(declare-fun b_next!68331 () Bool)

(assert (=> b!2272717 (= b_free!67627 (not b_next!68331))))

(declare-fun tp!719812 () Bool)

(declare-fun b_and!179127 () Bool)

(assert (=> b!2272717 (= tp!719812 b_and!179127)))

(declare-fun e!1455653 () Bool)

(declare-fun e!1455666 () Bool)

(declare-datatypes ((List!27115 0))(
  ( (Nil!27021) (Cons!27021 (h!32422 (_ BitVec 16)) (t!202729 List!27115)) )
))
(declare-datatypes ((TokenValue!4471 0))(
  ( (FloatLiteralValue!8942 (text!31742 List!27115)) (TokenValueExt!4470 (__x!18002 Int)) (Broken!22355 (value!136600 List!27115)) (Object!4564) (End!4471) (Def!4471) (Underscore!4471) (Match!4471) (Else!4471) (Error!4471) (Case!4471) (If!4471) (Extends!4471) (Abstract!4471) (Class!4471) (Val!4471) (DelimiterValue!8942 (del!4531 List!27115)) (KeywordValue!4477 (value!136601 List!27115)) (CommentValue!8942 (value!136602 List!27115)) (WhitespaceValue!8942 (value!136603 List!27115)) (IndentationValue!4471 (value!136604 List!27115)) (String!29458) (Int32!4471) (Broken!22356 (value!136605 List!27115)) (Boolean!4472) (Unit!39969) (OperatorValue!4474 (op!4531 List!27115)) (IdentifierValue!8942 (value!136606 List!27115)) (IdentifierValue!8943 (value!136607 List!27115)) (WhitespaceValue!8943 (value!136608 List!27115)) (True!8942) (False!8942) (Broken!22357 (value!136609 List!27115)) (Broken!22358 (value!136610 List!27115)) (True!8943) (RightBrace!4471) (RightBracket!4471) (Colon!4471) (Null!4471) (Comma!4471) (LeftBracket!4471) (False!8943) (LeftBrace!4471) (ImaginaryLiteralValue!4471 (text!31743 List!27115)) (StringLiteralValue!13413 (value!136611 List!27115)) (EOFValue!4471 (value!136612 List!27115)) (IdentValue!4471 (value!136613 List!27115)) (DelimiterValue!8943 (value!136614 List!27115)) (DedentValue!4471 (value!136615 List!27115)) (NewLineValue!4471 (value!136616 List!27115)) (IntegerValue!13413 (value!136617 (_ BitVec 32)) (text!31744 List!27115)) (IntegerValue!13414 (value!136618 Int) (text!31745 List!27115)) (Times!4471) (Or!4471) (Equal!4471) (Minus!4471) (Broken!22359 (value!136619 List!27115)) (And!4471) (Div!4471) (LessEqual!4471) (Mod!4471) (Concat!11128) (Not!4471) (Plus!4471) (SpaceValue!4471 (value!136620 List!27115)) (IntegerValue!13415 (value!136621 Int) (text!31746 List!27115)) (StringLiteralValue!13414 (text!31747 List!27115)) (FloatLiteralValue!8943 (text!31748 List!27115)) (BytesLiteralValue!4471 (value!136622 List!27115)) (CommentValue!8943 (value!136623 List!27115)) (StringLiteralValue!13415 (value!136624 List!27115)) (ErrorTokenValue!4471 (msg!4532 List!27115)) )
))
(declare-datatypes ((C!13460 0))(
  ( (C!13461 (val!7778 Int)) )
))
(declare-datatypes ((List!27116 0))(
  ( (Nil!27022) (Cons!27022 (h!32423 C!13460) (t!202730 List!27116)) )
))
(declare-datatypes ((IArray!17537 0))(
  ( (IArray!17538 (innerList!8826 List!27116)) )
))
(declare-datatypes ((Conc!8766 0))(
  ( (Node!8766 (left!20505 Conc!8766) (right!20835 Conc!8766) (csize!17762 Int) (cheight!8977 Int)) (Leaf!12906 (xs!11708 IArray!17537) (csize!17763 Int)) (Empty!8766) )
))
(declare-datatypes ((BalanceConc!17260 0))(
  ( (BalanceConc!17261 (c!360814 Conc!8766)) )
))
(declare-datatypes ((String!29459 0))(
  ( (String!29460 (value!136625 String)) )
))
(declare-datatypes ((Regex!6657 0))(
  ( (ElementMatch!6657 (c!360815 C!13460)) (Concat!11129 (regOne!13826 Regex!6657) (regTwo!13826 Regex!6657)) (EmptyExpr!6657) (Star!6657 (reg!6986 Regex!6657)) (EmptyLang!6657) (Union!6657 (regOne!13827 Regex!6657) (regTwo!13827 Regex!6657)) )
))
(declare-datatypes ((TokenValueInjection!8482 0))(
  ( (TokenValueInjection!8483 (toValue!6079 Int) (toChars!5938 Int)) )
))
(declare-datatypes ((Rule!8418 0))(
  ( (Rule!8419 (regex!4309 Regex!6657) (tag!4799 String!29459) (isSeparator!4309 Bool) (transformation!4309 TokenValueInjection!8482)) )
))
(declare-datatypes ((Token!8096 0))(
  ( (Token!8097 (value!136626 TokenValue!4471) (rule!6627 Rule!8418) (size!21220 Int) (originalCharacters!5079 List!27116)) )
))
(declare-datatypes ((List!27117 0))(
  ( (Nil!27023) (Cons!27023 (h!32424 Token!8096) (t!202731 List!27117)) )
))
(declare-fun tokens!456 () List!27117)

(declare-fun b!2272699 () Bool)

(declare-fun tp!719813 () Bool)

(declare-fun inv!21 (TokenValue!4471) Bool)

(assert (=> b!2272699 (= e!1455666 (and (inv!21 (value!136626 (h!32424 tokens!456))) e!1455653 tp!719813))))

(declare-fun b!2272700 () Bool)

(declare-fun e!1455652 () Bool)

(declare-fun tp_is_empty!10535 () Bool)

(declare-fun tp!719817 () Bool)

(assert (=> b!2272700 (= e!1455652 (and tp_is_empty!10535 tp!719817))))

(declare-fun e!1455668 () Bool)

(assert (=> b!2272701 (= e!1455668 (and tp!719818 tp!719808))))

(declare-fun e!1455648 () Bool)

(declare-fun b!2272702 () Bool)

(declare-fun tp!719819 () Bool)

(declare-fun inv!36591 (Token!8096) Bool)

(assert (=> b!2272702 (= e!1455648 (and (inv!36591 (h!32424 tokens!456)) e!1455666 tp!719819))))

(declare-fun b!2272703 () Bool)

(declare-fun e!1455661 () Bool)

(declare-fun r!2363 () Rule!8418)

(declare-fun head!4906 (List!27117) Token!8096)

(assert (=> b!2272703 (= e!1455661 (= (rule!6627 (head!4906 tokens!456)) r!2363))))

(declare-fun e!1455664 () Bool)

(assert (=> b!2272705 (= e!1455664 (and tp!719810 tp!719807))))

(declare-fun b!2272706 () Bool)

(declare-fun res!971367 () Bool)

(declare-fun e!1455650 () Bool)

(assert (=> b!2272706 (=> (not res!971367) (not e!1455650))))

(declare-datatypes ((List!27118 0))(
  ( (Nil!27024) (Cons!27024 (h!32425 Rule!8418) (t!202732 List!27118)) )
))
(declare-fun rules!1750 () List!27118)

(declare-fun isEmpty!15311 (List!27118) Bool)

(assert (=> b!2272706 (= res!971367 (not (isEmpty!15311 rules!1750)))))

(declare-fun b!2272707 () Bool)

(declare-fun e!1455670 () Bool)

(assert (=> b!2272707 (= e!1455670 true)))

(declare-fun lt!844144 () Bool)

(declare-datatypes ((LexerInterface!3906 0))(
  ( (LexerInterfaceExt!3903 (__x!18003 Int)) (Lexer!3904) )
))
(declare-fun thiss!16613 () LexerInterface!3906)

(declare-fun rulesValidInductive!1507 (LexerInterface!3906 List!27118) Bool)

(assert (=> b!2272707 (= lt!844144 (rulesValidInductive!1507 thiss!16613 rules!1750))))

(declare-fun b!2272708 () Bool)

(declare-fun res!971359 () Bool)

(assert (=> b!2272708 (=> (not res!971359) (not e!1455650))))

(declare-fun rulesInvariant!3408 (LexerInterface!3906 List!27118) Bool)

(assert (=> b!2272708 (= res!971359 (rulesInvariant!3408 thiss!16613 rules!1750))))

(declare-fun b!2272709 () Bool)

(declare-fun e!1455660 () Bool)

(declare-fun matchR!2914 (Regex!6657 List!27116) Bool)

(declare-fun list!10489 (BalanceConc!17260) List!27116)

(declare-fun charsOf!2697 (Token!8096) BalanceConc!17260)

(assert (=> b!2272709 (= e!1455660 (not (matchR!2914 (regex!4309 r!2363) (list!10489 (charsOf!2697 (head!4906 tokens!456))))))))

(declare-fun b!2272710 () Bool)

(declare-fun res!971362 () Bool)

(declare-fun e!1455673 () Bool)

(assert (=> b!2272710 (=> (not res!971362) (not e!1455673))))

(declare-fun otherR!12 () Rule!8418)

(assert (=> b!2272710 (= res!971362 (not (= r!2363 otherR!12)))))

(declare-fun b!2272711 () Bool)

(declare-fun e!1455649 () Bool)

(declare-fun otherP!12 () List!27116)

(declare-fun size!21221 (BalanceConc!17260) Int)

(declare-fun size!21222 (List!27116) Int)

(assert (=> b!2272711 (= e!1455649 (<= (size!21221 (charsOf!2697 (head!4906 tokens!456))) (size!21222 otherP!12)))))

(declare-fun b!2272712 () Bool)

(declare-fun res!971361 () Bool)

(assert (=> b!2272712 (=> (not res!971361) (not e!1455650))))

(declare-fun contains!4675 (List!27118 Rule!8418) Bool)

(assert (=> b!2272712 (= res!971361 (contains!4675 rules!1750 r!2363))))

(declare-fun b!2272713 () Bool)

(declare-fun res!971364 () Bool)

(assert (=> b!2272713 (=> res!971364 e!1455670)))

(get-info :version)

(assert (=> b!2272713 (= res!971364 (not ((_ is Nil!27023) tokens!456)))))

(declare-fun b!2272714 () Bool)

(declare-fun res!971370 () Bool)

(assert (=> b!2272714 (=> (not res!971370) (not e!1455673))))

(declare-fun input!1722 () List!27116)

(declare-fun isPrefix!2299 (List!27116 List!27116) Bool)

(assert (=> b!2272714 (= res!971370 (isPrefix!2299 otherP!12 input!1722))))

(declare-fun e!1455667 () Bool)

(declare-fun e!1455662 () Bool)

(declare-fun tp!719820 () Bool)

(declare-fun b!2272715 () Bool)

(declare-fun inv!36588 (String!29459) Bool)

(declare-fun inv!36592 (TokenValueInjection!8482) Bool)

(assert (=> b!2272715 (= e!1455667 (and tp!719820 (inv!36588 (tag!4799 otherR!12)) (inv!36592 (transformation!4309 otherR!12)) e!1455662))))

(declare-fun b!2272716 () Bool)

(declare-fun e!1455657 () Bool)

(assert (=> b!2272716 (= e!1455673 (not e!1455657))))

(declare-fun res!971357 () Bool)

(assert (=> b!2272716 (=> res!971357 e!1455657)))

(assert (=> b!2272716 (= res!971357 e!1455660)))

(declare-fun res!971369 () Bool)

(assert (=> b!2272716 (=> (not res!971369) (not e!1455660))))

(declare-fun lt!844143 () Bool)

(assert (=> b!2272716 (= res!971369 (not lt!844143))))

(declare-fun ruleValid!1399 (LexerInterface!3906 Rule!8418) Bool)

(assert (=> b!2272716 (ruleValid!1399 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39970 0))(
  ( (Unit!39971) )
))
(declare-fun lt!844141 () Unit!39970)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!804 (LexerInterface!3906 Rule!8418 List!27118) Unit!39970)

(assert (=> b!2272716 (= lt!844141 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!804 thiss!16613 r!2363 rules!1750))))

(assert (=> b!2272717 (= e!1455662 (and tp!719814 tp!719812))))

(declare-fun b!2272718 () Bool)

(declare-fun e!1455651 () Bool)

(declare-fun tp!719816 () Bool)

(assert (=> b!2272718 (= e!1455651 (and tp_is_empty!10535 tp!719816))))

(declare-fun b!2272719 () Bool)

(declare-fun e!1455663 () Bool)

(assert (=> b!2272719 (= e!1455663 e!1455673)))

(declare-fun res!971363 () Bool)

(assert (=> b!2272719 (=> (not res!971363) (not e!1455673))))

(assert (=> b!2272719 (= res!971363 e!1455649)))

(declare-fun res!971366 () Bool)

(assert (=> b!2272719 (=> res!971366 e!1455649)))

(assert (=> b!2272719 (= res!971366 lt!844143)))

(declare-fun isEmpty!15312 (List!27117) Bool)

(assert (=> b!2272719 (= lt!844143 (isEmpty!15312 tokens!456))))

(declare-fun e!1455654 () Bool)

(assert (=> b!2272720 (= e!1455654 (and tp!719823 tp!719809))))

(declare-fun e!1455659 () Bool)

(declare-fun tp!719806 () Bool)

(declare-fun b!2272704 () Bool)

(assert (=> b!2272704 (= e!1455659 (and tp!719806 (inv!36588 (tag!4799 (h!32425 rules!1750))) (inv!36592 (transformation!4309 (h!32425 rules!1750))) e!1455664))))

(declare-fun res!971368 () Bool)

(assert (=> start!222316 (=> (not res!971368) (not e!1455650))))

(assert (=> start!222316 (= res!971368 ((_ is Lexer!3904) thiss!16613))))

(assert (=> start!222316 e!1455650))

(assert (=> start!222316 true))

(assert (=> start!222316 e!1455651))

(assert (=> start!222316 e!1455667))

(assert (=> start!222316 e!1455652))

(declare-fun e!1455655 () Bool)

(assert (=> start!222316 e!1455655))

(declare-fun e!1455669 () Bool)

(assert (=> start!222316 e!1455669))

(declare-fun e!1455656 () Bool)

(assert (=> start!222316 e!1455656))

(assert (=> start!222316 e!1455648))

(declare-fun b!2272721 () Bool)

(declare-fun tp!719811 () Bool)

(assert (=> b!2272721 (= e!1455655 (and tp_is_empty!10535 tp!719811))))

(declare-fun tp!719822 () Bool)

(declare-fun b!2272722 () Bool)

(assert (=> b!2272722 (= e!1455653 (and tp!719822 (inv!36588 (tag!4799 (rule!6627 (h!32424 tokens!456)))) (inv!36592 (transformation!4309 (rule!6627 (h!32424 tokens!456)))) e!1455668))))

(declare-fun b!2272723 () Bool)

(declare-fun res!971365 () Bool)

(assert (=> b!2272723 (=> (not res!971365) (not e!1455650))))

(assert (=> b!2272723 (= res!971365 (contains!4675 rules!1750 otherR!12))))

(declare-fun b!2272724 () Bool)

(declare-fun tp!719821 () Bool)

(assert (=> b!2272724 (= e!1455669 (and e!1455659 tp!719821))))

(declare-fun b!2272725 () Bool)

(assert (=> b!2272725 (= e!1455650 e!1455663)))

(declare-fun res!971356 () Bool)

(assert (=> b!2272725 (=> (not res!971356) (not e!1455663))))

(declare-datatypes ((IArray!17539 0))(
  ( (IArray!17540 (innerList!8827 List!27117)) )
))
(declare-datatypes ((Conc!8767 0))(
  ( (Node!8767 (left!20506 Conc!8767) (right!20836 Conc!8767) (csize!17764 Int) (cheight!8978 Int)) (Leaf!12907 (xs!11709 IArray!17539) (csize!17765 Int)) (Empty!8767) )
))
(declare-datatypes ((BalanceConc!17262 0))(
  ( (BalanceConc!17263 (c!360816 Conc!8767)) )
))
(declare-datatypes ((tuple2!26700 0))(
  ( (tuple2!26701 (_1!15860 BalanceConc!17262) (_2!15860 BalanceConc!17260)) )
))
(declare-fun lt!844142 () tuple2!26700)

(declare-fun suffix!886 () List!27116)

(declare-datatypes ((tuple2!26702 0))(
  ( (tuple2!26703 (_1!15861 List!27117) (_2!15861 List!27116)) )
))
(declare-fun list!10490 (BalanceConc!17262) List!27117)

(assert (=> b!2272725 (= res!971356 (= (tuple2!26703 (list!10490 (_1!15860 lt!844142)) (list!10489 (_2!15860 lt!844142))) (tuple2!26703 tokens!456 suffix!886)))))

(declare-fun lex!1745 (LexerInterface!3906 List!27118 BalanceConc!17260) tuple2!26700)

(declare-fun seqFromList!3013 (List!27116) BalanceConc!17260)

(assert (=> b!2272725 (= lt!844142 (lex!1745 thiss!16613 rules!1750 (seqFromList!3013 input!1722)))))

(declare-fun tp!719815 () Bool)

(declare-fun b!2272726 () Bool)

(assert (=> b!2272726 (= e!1455656 (and tp!719815 (inv!36588 (tag!4799 r!2363)) (inv!36592 (transformation!4309 r!2363)) e!1455654))))

(declare-fun b!2272727 () Bool)

(declare-fun res!971371 () Bool)

(assert (=> b!2272727 (=> (not res!971371) (not e!1455673))))

(assert (=> b!2272727 (= res!971371 e!1455661)))

(declare-fun res!971360 () Bool)

(assert (=> b!2272727 (=> res!971360 e!1455661)))

(assert (=> b!2272727 (= res!971360 lt!844143)))

(declare-fun b!2272728 () Bool)

(assert (=> b!2272728 (= e!1455657 e!1455670)))

(declare-fun res!971358 () Bool)

(assert (=> b!2272728 (=> res!971358 e!1455670)))

(declare-fun getIndex!322 (List!27118 Rule!8418) Int)

(assert (=> b!2272728 (= res!971358 (<= (getIndex!322 rules!1750 r!2363) (getIndex!322 rules!1750 otherR!12)))))

(assert (=> b!2272728 (ruleValid!1399 thiss!16613 otherR!12)))

(declare-fun lt!844140 () Unit!39970)

(assert (=> b!2272728 (= lt!844140 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!804 thiss!16613 otherR!12 rules!1750))))

(assert (= (and start!222316 res!971368) b!2272706))

(assert (= (and b!2272706 res!971367) b!2272708))

(assert (= (and b!2272708 res!971359) b!2272712))

(assert (= (and b!2272712 res!971361) b!2272723))

(assert (= (and b!2272723 res!971365) b!2272725))

(assert (= (and b!2272725 res!971356) b!2272719))

(assert (= (and b!2272719 (not res!971366)) b!2272711))

(assert (= (and b!2272719 res!971363) b!2272727))

(assert (= (and b!2272727 (not res!971360)) b!2272703))

(assert (= (and b!2272727 res!971371) b!2272714))

(assert (= (and b!2272714 res!971370) b!2272710))

(assert (= (and b!2272710 res!971362) b!2272716))

(assert (= (and b!2272716 res!971369) b!2272709))

(assert (= (and b!2272716 (not res!971357)) b!2272728))

(assert (= (and b!2272728 (not res!971358)) b!2272713))

(assert (= (and b!2272713 (not res!971364)) b!2272707))

(assert (= (and start!222316 ((_ is Cons!27022) input!1722)) b!2272718))

(assert (= b!2272715 b!2272717))

(assert (= start!222316 b!2272715))

(assert (= (and start!222316 ((_ is Cons!27022) suffix!886)) b!2272700))

(assert (= (and start!222316 ((_ is Cons!27022) otherP!12)) b!2272721))

(assert (= b!2272704 b!2272705))

(assert (= b!2272724 b!2272704))

(assert (= (and start!222316 ((_ is Cons!27024) rules!1750)) b!2272724))

(assert (= b!2272726 b!2272720))

(assert (= start!222316 b!2272726))

(assert (= b!2272722 b!2272701))

(assert (= b!2272699 b!2272722))

(assert (= b!2272702 b!2272699))

(assert (= (and start!222316 ((_ is Cons!27023) tokens!456)) b!2272702))

(declare-fun m!2701201 () Bool)

(assert (=> b!2272707 m!2701201))

(declare-fun m!2701203 () Bool)

(assert (=> b!2272722 m!2701203))

(declare-fun m!2701205 () Bool)

(assert (=> b!2272722 m!2701205))

(declare-fun m!2701207 () Bool)

(assert (=> b!2272726 m!2701207))

(declare-fun m!2701209 () Bool)

(assert (=> b!2272726 m!2701209))

(declare-fun m!2701211 () Bool)

(assert (=> b!2272728 m!2701211))

(declare-fun m!2701213 () Bool)

(assert (=> b!2272728 m!2701213))

(declare-fun m!2701215 () Bool)

(assert (=> b!2272728 m!2701215))

(declare-fun m!2701217 () Bool)

(assert (=> b!2272728 m!2701217))

(declare-fun m!2701219 () Bool)

(assert (=> b!2272708 m!2701219))

(declare-fun m!2701221 () Bool)

(assert (=> b!2272716 m!2701221))

(declare-fun m!2701223 () Bool)

(assert (=> b!2272716 m!2701223))

(declare-fun m!2701225 () Bool)

(assert (=> b!2272706 m!2701225))

(declare-fun m!2701227 () Bool)

(assert (=> b!2272711 m!2701227))

(assert (=> b!2272711 m!2701227))

(declare-fun m!2701229 () Bool)

(assert (=> b!2272711 m!2701229))

(assert (=> b!2272711 m!2701229))

(declare-fun m!2701231 () Bool)

(assert (=> b!2272711 m!2701231))

(declare-fun m!2701233 () Bool)

(assert (=> b!2272711 m!2701233))

(declare-fun m!2701235 () Bool)

(assert (=> b!2272725 m!2701235))

(declare-fun m!2701237 () Bool)

(assert (=> b!2272725 m!2701237))

(declare-fun m!2701239 () Bool)

(assert (=> b!2272725 m!2701239))

(assert (=> b!2272725 m!2701239))

(declare-fun m!2701241 () Bool)

(assert (=> b!2272725 m!2701241))

(declare-fun m!2701243 () Bool)

(assert (=> b!2272714 m!2701243))

(declare-fun m!2701245 () Bool)

(assert (=> b!2272719 m!2701245))

(assert (=> b!2272709 m!2701227))

(assert (=> b!2272709 m!2701227))

(assert (=> b!2272709 m!2701229))

(assert (=> b!2272709 m!2701229))

(declare-fun m!2701247 () Bool)

(assert (=> b!2272709 m!2701247))

(assert (=> b!2272709 m!2701247))

(declare-fun m!2701249 () Bool)

(assert (=> b!2272709 m!2701249))

(declare-fun m!2701251 () Bool)

(assert (=> b!2272702 m!2701251))

(declare-fun m!2701253 () Bool)

(assert (=> b!2272723 m!2701253))

(declare-fun m!2701255 () Bool)

(assert (=> b!2272715 m!2701255))

(declare-fun m!2701257 () Bool)

(assert (=> b!2272715 m!2701257))

(assert (=> b!2272703 m!2701227))

(declare-fun m!2701259 () Bool)

(assert (=> b!2272699 m!2701259))

(declare-fun m!2701261 () Bool)

(assert (=> b!2272712 m!2701261))

(declare-fun m!2701263 () Bool)

(assert (=> b!2272704 m!2701263))

(declare-fun m!2701265 () Bool)

(assert (=> b!2272704 m!2701265))

(check-sat tp_is_empty!10535 (not b!2272703) (not b_next!68325) (not b!2272721) (not b!2272726) (not b!2272725) (not b!2272719) (not b_next!68319) (not b_next!68327) (not b!2272707) (not b!2272723) (not b!2272708) b_and!179127 (not b!2272718) (not b_next!68321) (not b!2272704) (not b!2272716) b_and!179123 b_and!179117 b_and!179121 (not b!2272724) (not b!2272715) b_and!179115 (not b_next!68331) (not b!2272706) (not b!2272722) (not b!2272714) (not b!2272712) (not b!2272709) (not b!2272728) (not b_next!68317) (not b_next!68329) (not b!2272702) b_and!179125 (not b!2272700) (not b!2272711) b_and!179119 (not b!2272699) (not b_next!68323) b_and!179113)
(check-sat (not b_next!68321) b_and!179123 (not b_next!68325) (not b_next!68317) (not b_next!68329) b_and!179125 b_and!179119 (not b_next!68319) (not b_next!68327) b_and!179127 b_and!179117 b_and!179121 b_and!179115 (not b_next!68331) (not b_next!68323) b_and!179113)
