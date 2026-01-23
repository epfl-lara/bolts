; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406272 () Bool)

(assert start!406272)

(declare-fun b!4244344 () Bool)

(declare-fun b_free!125851 () Bool)

(declare-fun b_next!126555 () Bool)

(assert (=> b!4244344 (= b_free!125851 (not b_next!126555))))

(declare-fun tp!1301408 () Bool)

(declare-fun b_and!336125 () Bool)

(assert (=> b!4244344 (= tp!1301408 b_and!336125)))

(declare-fun b_free!125853 () Bool)

(declare-fun b_next!126557 () Bool)

(assert (=> b!4244344 (= b_free!125853 (not b_next!126557))))

(declare-fun tp!1301412 () Bool)

(declare-fun b_and!336127 () Bool)

(assert (=> b!4244344 (= tp!1301412 b_and!336127)))

(declare-fun b!4244339 () Bool)

(declare-fun b_free!125855 () Bool)

(declare-fun b_next!126559 () Bool)

(assert (=> b!4244339 (= b_free!125855 (not b_next!126559))))

(declare-fun tp!1301409 () Bool)

(declare-fun b_and!336129 () Bool)

(assert (=> b!4244339 (= tp!1301409 b_and!336129)))

(declare-fun b_free!125857 () Bool)

(declare-fun b_next!126561 () Bool)

(assert (=> b!4244339 (= b_free!125857 (not b_next!126561))))

(declare-fun tp!1301417 () Bool)

(declare-fun b_and!336131 () Bool)

(assert (=> b!4244339 (= tp!1301417 b_and!336131)))

(declare-fun b!4244330 () Bool)

(declare-fun b_free!125859 () Bool)

(declare-fun b_next!126563 () Bool)

(assert (=> b!4244330 (= b_free!125859 (not b_next!126563))))

(declare-fun tp!1301416 () Bool)

(declare-fun b_and!336133 () Bool)

(assert (=> b!4244330 (= tp!1301416 b_and!336133)))

(declare-fun b_free!125861 () Bool)

(declare-fun b_next!126565 () Bool)

(assert (=> b!4244330 (= b_free!125861 (not b_next!126565))))

(declare-fun tp!1301419 () Bool)

(declare-fun b_and!336135 () Bool)

(assert (=> b!4244330 (= tp!1301419 b_and!336135)))

(declare-fun res!1745025 () Bool)

(declare-fun e!2635891 () Bool)

(assert (=> start!406272 (=> (not res!1745025) (not e!2635891))))

(declare-datatypes ((LexerInterface!7534 0))(
  ( (LexerInterfaceExt!7531 (__x!28561 Int)) (Lexer!7532) )
))
(declare-fun thiss!21540 () LexerInterface!7534)

(assert (=> start!406272 (= res!1745025 (is-Lexer!7532 thiss!21540))))

(assert (=> start!406272 e!2635891))

(assert (=> start!406272 true))

(declare-fun e!2635903 () Bool)

(assert (=> start!406272 e!2635903))

(declare-fun e!2635902 () Bool)

(assert (=> start!406272 e!2635902))

(declare-fun e!2635890 () Bool)

(assert (=> start!406272 e!2635890))

(declare-fun e!2635893 () Bool)

(assert (=> start!406272 e!2635893))

(declare-fun e!2635898 () Bool)

(assert (=> start!406272 e!2635898))

(declare-fun e!2635889 () Bool)

(assert (=> start!406272 e!2635889))

(declare-fun b!4244325 () Bool)

(declare-datatypes ((List!47069 0))(
  ( (Nil!46945) (Cons!46945 (h!52365 (_ BitVec 16)) (t!351542 List!47069)) )
))
(declare-datatypes ((TokenValue!8169 0))(
  ( (FloatLiteralValue!16338 (text!57628 List!47069)) (TokenValueExt!8168 (__x!28562 Int)) (Broken!40845 (value!246773 List!47069)) (Object!8292) (End!8169) (Def!8169) (Underscore!8169) (Match!8169) (Else!8169) (Error!8169) (Case!8169) (If!8169) (Extends!8169) (Abstract!8169) (Class!8169) (Val!8169) (DelimiterValue!16338 (del!8229 List!47069)) (KeywordValue!8175 (value!246774 List!47069)) (CommentValue!16338 (value!246775 List!47069)) (WhitespaceValue!16338 (value!246776 List!47069)) (IndentationValue!8169 (value!246777 List!47069)) (String!54776) (Int32!8169) (Broken!40846 (value!246778 List!47069)) (Boolean!8170) (Unit!65999) (OperatorValue!8172 (op!8229 List!47069)) (IdentifierValue!16338 (value!246779 List!47069)) (IdentifierValue!16339 (value!246780 List!47069)) (WhitespaceValue!16339 (value!246781 List!47069)) (True!16338) (False!16338) (Broken!40847 (value!246782 List!47069)) (Broken!40848 (value!246783 List!47069)) (True!16339) (RightBrace!8169) (RightBracket!8169) (Colon!8169) (Null!8169) (Comma!8169) (LeftBracket!8169) (False!16339) (LeftBrace!8169) (ImaginaryLiteralValue!8169 (text!57629 List!47069)) (StringLiteralValue!24507 (value!246784 List!47069)) (EOFValue!8169 (value!246785 List!47069)) (IdentValue!8169 (value!246786 List!47069)) (DelimiterValue!16339 (value!246787 List!47069)) (DedentValue!8169 (value!246788 List!47069)) (NewLineValue!8169 (value!246789 List!47069)) (IntegerValue!24507 (value!246790 (_ BitVec 32)) (text!57630 List!47069)) (IntegerValue!24508 (value!246791 Int) (text!57631 List!47069)) (Times!8169) (Or!8169) (Equal!8169) (Minus!8169) (Broken!40849 (value!246792 List!47069)) (And!8169) (Div!8169) (LessEqual!8169) (Mod!8169) (Concat!21013) (Not!8169) (Plus!8169) (SpaceValue!8169 (value!246793 List!47069)) (IntegerValue!24509 (value!246794 Int) (text!57632 List!47069)) (StringLiteralValue!24508 (text!57633 List!47069)) (FloatLiteralValue!16339 (text!57634 List!47069)) (BytesLiteralValue!8169 (value!246795 List!47069)) (CommentValue!16339 (value!246796 List!47069)) (StringLiteralValue!24509 (value!246797 List!47069)) (ErrorTokenValue!8169 (msg!8230 List!47069)) )
))
(declare-datatypes ((C!25886 0))(
  ( (C!25887 (val!15133 Int)) )
))
(declare-datatypes ((Regex!12844 0))(
  ( (ElementMatch!12844 (c!721031 C!25886)) (Concat!21014 (regOne!26200 Regex!12844) (regTwo!26200 Regex!12844)) (EmptyExpr!12844) (Star!12844 (reg!13173 Regex!12844)) (EmptyLang!12844) (Union!12844 (regOne!26201 Regex!12844) (regTwo!26201 Regex!12844)) )
))
(declare-datatypes ((String!54777 0))(
  ( (String!54778 (value!246798 String)) )
))
(declare-datatypes ((List!47070 0))(
  ( (Nil!46946) (Cons!46946 (h!52366 C!25886) (t!351543 List!47070)) )
))
(declare-datatypes ((IArray!28305 0))(
  ( (IArray!28306 (innerList!14210 List!47070)) )
))
(declare-datatypes ((Conc!14150 0))(
  ( (Node!14150 (left!34870 Conc!14150) (right!35200 Conc!14150) (csize!28530 Int) (cheight!14361 Int)) (Leaf!21879 (xs!17456 IArray!28305) (csize!28531 Int)) (Empty!14150) )
))
(declare-datatypes ((BalanceConc!27894 0))(
  ( (BalanceConc!27895 (c!721032 Conc!14150)) )
))
(declare-datatypes ((TokenValueInjection!15766 0))(
  ( (TokenValueInjection!15767 (toValue!10699 Int) (toChars!10558 Int)) )
))
(declare-datatypes ((Rule!15678 0))(
  ( (Rule!15679 (regex!7939 Regex!12844) (tag!8803 String!54777) (isSeparator!7939 Bool) (transformation!7939 TokenValueInjection!15766)) )
))
(declare-datatypes ((List!47071 0))(
  ( (Nil!46947) (Cons!46947 (h!52367 Rule!15678) (t!351544 List!47071)) )
))
(declare-fun rules!2932 () List!47071)

(declare-fun shorterInput!51 () List!47070)

(declare-fun suffix!1262 () List!47070)

(declare-datatypes ((Token!14504 0))(
  ( (Token!14505 (value!246799 TokenValue!8169) (rule!11069 Rule!15678) (size!34386 Int) (originalCharacters!8283 List!47070)) )
))
(declare-datatypes ((List!47072 0))(
  ( (Nil!46948) (Cons!46948 (h!52368 Token!14504) (t!351545 List!47072)) )
))
(declare-fun tokens!581 () List!47072)

(declare-fun e!2635886 () Bool)

(declare-fun addTokens!17 () List!47072)

(declare-datatypes ((tuple2!44518 0))(
  ( (tuple2!44519 (_1!25393 List!47072) (_2!25393 List!47070)) )
))
(declare-fun lexList!2040 (LexerInterface!7534 List!47071 List!47070) tuple2!44518)

(declare-fun ++!11952 (List!47072 List!47072) List!47072)

(assert (=> b!4244325 (= e!2635886 (= (lexList!2040 thiss!21540 rules!2932 shorterInput!51) (tuple2!44519 (++!11952 addTokens!17 tokens!581) suffix!1262)))))

(declare-fun e!2635901 () Bool)

(declare-fun tp!1301420 () Bool)

(declare-fun b!4244326 () Bool)

(declare-fun inv!61707 (Token!14504) Bool)

(assert (=> b!4244326 (= e!2635902 (and (inv!61707 (h!52368 addTokens!17)) e!2635901 tp!1301420))))

(declare-fun b!4244327 () Bool)

(declare-fun res!1745021 () Bool)

(assert (=> b!4244327 (=> (not res!1745021) (not e!2635891))))

(declare-fun isEmpty!27762 (List!47072) Bool)

(assert (=> b!4244327 (= res!1745021 (not (isEmpty!27762 addTokens!17)))))

(declare-fun e!2635900 () Bool)

(declare-fun b!4244328 () Bool)

(declare-fun tp!1301418 () Bool)

(assert (=> b!4244328 (= e!2635898 (and (inv!61707 (h!52368 tokens!581)) e!2635900 tp!1301418))))

(declare-fun b!4244329 () Bool)

(declare-fun res!1745024 () Bool)

(assert (=> b!4244329 (=> (not res!1745024) (not e!2635891))))

(declare-fun size!34387 (List!47072) Int)

(assert (=> b!4244329 (= res!1745024 (> (size!34387 addTokens!17) 0))))

(declare-fun e!2635888 () Bool)

(assert (=> b!4244330 (= e!2635888 (and tp!1301416 tp!1301419))))

(declare-fun b!4244331 () Bool)

(declare-fun res!1745020 () Bool)

(assert (=> b!4244331 (=> (not res!1745020) (not e!2635891))))

(declare-fun longerInput!51 () List!47070)

(declare-fun size!34388 (List!47070) Int)

(assert (=> b!4244331 (= res!1745020 (> (size!34388 longerInput!51) (size!34388 shorterInput!51)))))

(declare-fun b!4244332 () Bool)

(declare-fun tp!1301421 () Bool)

(declare-fun e!2635897 () Bool)

(declare-fun e!2635892 () Bool)

(declare-fun inv!61704 (String!54777) Bool)

(declare-fun inv!61708 (TokenValueInjection!15766) Bool)

(assert (=> b!4244332 (= e!2635892 (and tp!1301421 (inv!61704 (tag!8803 (h!52367 rules!2932))) (inv!61708 (transformation!7939 (h!52367 rules!2932))) e!2635897))))

(declare-fun b!4244333 () Bool)

(declare-fun tp_is_empty!22679 () Bool)

(declare-fun tp!1301411 () Bool)

(assert (=> b!4244333 (= e!2635893 (and tp_is_empty!22679 tp!1301411))))

(declare-fun b!4244334 () Bool)

(declare-fun res!1745017 () Bool)

(assert (=> b!4244334 (=> (not res!1745017) (not e!2635891))))

(assert (=> b!4244334 (= res!1745017 (= (lexList!2040 thiss!21540 rules!2932 longerInput!51) (tuple2!44519 tokens!581 suffix!1262)))))

(declare-fun b!4244335 () Bool)

(declare-fun res!1745019 () Bool)

(assert (=> b!4244335 (=> (not res!1745019) (not e!2635891))))

(declare-fun rulesInvariant!6645 (LexerInterface!7534 List!47071) Bool)

(assert (=> b!4244335 (= res!1745019 (rulesInvariant!6645 thiss!21540 rules!2932))))

(declare-fun tp!1301414 () Bool)

(declare-fun b!4244336 () Bool)

(declare-fun e!2635896 () Bool)

(declare-fun inv!21 (TokenValue!8169) Bool)

(assert (=> b!4244336 (= e!2635900 (and (inv!21 (value!246799 (h!52368 tokens!581))) e!2635896 tp!1301414))))

(declare-fun b!4244337 () Bool)

(declare-fun res!1745018 () Bool)

(assert (=> b!4244337 (=> (not res!1745018) (not e!2635891))))

(declare-fun isEmpty!27763 (List!47070) Bool)

(assert (=> b!4244337 (= res!1745018 (not (isEmpty!27763 longerInput!51)))))

(declare-fun tp!1301410 () Bool)

(declare-fun e!2635904 () Bool)

(declare-fun b!4244338 () Bool)

(assert (=> b!4244338 (= e!2635896 (and tp!1301410 (inv!61704 (tag!8803 (rule!11069 (h!52368 tokens!581)))) (inv!61708 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) e!2635904))))

(assert (=> b!4244339 (= e!2635897 (and tp!1301409 tp!1301417))))

(declare-fun tp!1301405 () Bool)

(declare-fun b!4244340 () Bool)

(declare-fun e!2635885 () Bool)

(assert (=> b!4244340 (= e!2635885 (and tp!1301405 (inv!61704 (tag!8803 (rule!11069 (h!52368 addTokens!17)))) (inv!61708 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) e!2635888))))

(declare-fun b!4244341 () Bool)

(assert (=> b!4244341 (= e!2635891 e!2635886)))

(declare-fun res!1745023 () Bool)

(assert (=> b!4244341 (=> (not res!1745023) (not e!2635886))))

(declare-datatypes ((tuple2!44520 0))(
  ( (tuple2!44521 (_1!25394 Token!14504) (_2!25394 List!47070)) )
))
(declare-datatypes ((Option!10075 0))(
  ( (None!10074) (Some!10074 (v!41028 tuple2!44520)) )
))
(declare-fun lt!1507288 () Option!10075)

(declare-fun lt!1507287 () Option!10075)

(assert (=> b!4244341 (= res!1745023 (and (or (not (is-Some!10074 lt!1507288)) (not (is-Some!10074 lt!1507287))) (or (not (is-Some!10074 lt!1507288)) (not (is-None!10074 lt!1507287))) (is-None!10074 lt!1507288) (is-Some!10074 lt!1507287)))))

(declare-fun maxPrefix!4492 (LexerInterface!7534 List!47071 List!47070) Option!10075)

(assert (=> b!4244341 (= lt!1507287 (maxPrefix!4492 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4244341 (= lt!1507288 (maxPrefix!4492 thiss!21540 rules!2932 longerInput!51))))

(declare-fun tp!1301406 () Bool)

(declare-fun b!4244342 () Bool)

(assert (=> b!4244342 (= e!2635901 (and (inv!21 (value!246799 (h!52368 addTokens!17))) e!2635885 tp!1301406))))

(declare-fun b!4244343 () Bool)

(declare-fun tp!1301413 () Bool)

(assert (=> b!4244343 (= e!2635890 (and tp_is_empty!22679 tp!1301413))))

(assert (=> b!4244344 (= e!2635904 (and tp!1301408 tp!1301412))))

(declare-fun b!4244345 () Bool)

(declare-fun tp!1301415 () Bool)

(assert (=> b!4244345 (= e!2635889 (and tp_is_empty!22679 tp!1301415))))

(declare-fun b!4244346 () Bool)

(declare-fun res!1745022 () Bool)

(assert (=> b!4244346 (=> (not res!1745022) (not e!2635891))))

(declare-fun isEmpty!27764 (List!47071) Bool)

(assert (=> b!4244346 (= res!1745022 (not (isEmpty!27764 rules!2932)))))

(declare-fun b!4244347 () Bool)

(declare-fun tp!1301407 () Bool)

(assert (=> b!4244347 (= e!2635903 (and e!2635892 tp!1301407))))

(assert (= (and start!406272 res!1745025) b!4244346))

(assert (= (and b!4244346 res!1745022) b!4244335))

(assert (= (and b!4244335 res!1745019) b!4244337))

(assert (= (and b!4244337 res!1745018) b!4244331))

(assert (= (and b!4244331 res!1745020) b!4244334))

(assert (= (and b!4244334 res!1745017) b!4244327))

(assert (= (and b!4244327 res!1745021) b!4244329))

(assert (= (and b!4244329 res!1745024) b!4244341))

(assert (= (and b!4244341 res!1745023) b!4244325))

(assert (= b!4244332 b!4244339))

(assert (= b!4244347 b!4244332))

(assert (= (and start!406272 (is-Cons!46947 rules!2932)) b!4244347))

(assert (= b!4244340 b!4244330))

(assert (= b!4244342 b!4244340))

(assert (= b!4244326 b!4244342))

(assert (= (and start!406272 (is-Cons!46948 addTokens!17)) b!4244326))

(assert (= (and start!406272 (is-Cons!46946 shorterInput!51)) b!4244343))

(assert (= (and start!406272 (is-Cons!46946 suffix!1262)) b!4244333))

(assert (= b!4244338 b!4244344))

(assert (= b!4244336 b!4244338))

(assert (= b!4244328 b!4244336))

(assert (= (and start!406272 (is-Cons!46948 tokens!581)) b!4244328))

(assert (= (and start!406272 (is-Cons!46946 longerInput!51)) b!4244345))

(declare-fun m!4829755 () Bool)

(assert (=> b!4244332 m!4829755))

(declare-fun m!4829757 () Bool)

(assert (=> b!4244332 m!4829757))

(declare-fun m!4829759 () Bool)

(assert (=> b!4244335 m!4829759))

(declare-fun m!4829761 () Bool)

(assert (=> b!4244325 m!4829761))

(declare-fun m!4829763 () Bool)

(assert (=> b!4244325 m!4829763))

(declare-fun m!4829765 () Bool)

(assert (=> b!4244340 m!4829765))

(declare-fun m!4829767 () Bool)

(assert (=> b!4244340 m!4829767))

(declare-fun m!4829769 () Bool)

(assert (=> b!4244331 m!4829769))

(declare-fun m!4829771 () Bool)

(assert (=> b!4244331 m!4829771))

(declare-fun m!4829773 () Bool)

(assert (=> b!4244337 m!4829773))

(declare-fun m!4829775 () Bool)

(assert (=> b!4244334 m!4829775))

(declare-fun m!4829777 () Bool)

(assert (=> b!4244329 m!4829777))

(declare-fun m!4829779 () Bool)

(assert (=> b!4244328 m!4829779))

(declare-fun m!4829781 () Bool)

(assert (=> b!4244342 m!4829781))

(declare-fun m!4829783 () Bool)

(assert (=> b!4244336 m!4829783))

(declare-fun m!4829785 () Bool)

(assert (=> b!4244341 m!4829785))

(declare-fun m!4829787 () Bool)

(assert (=> b!4244341 m!4829787))

(declare-fun m!4829789 () Bool)

(assert (=> b!4244346 m!4829789))

(declare-fun m!4829791 () Bool)

(assert (=> b!4244327 m!4829791))

(declare-fun m!4829793 () Bool)

(assert (=> b!4244338 m!4829793))

(declare-fun m!4829795 () Bool)

(assert (=> b!4244338 m!4829795))

(declare-fun m!4829797 () Bool)

(assert (=> b!4244326 m!4829797))

(push 1)

(assert (not b!4244327))

(assert (not b!4244332))

(assert tp_is_empty!22679)

(assert b_and!336125)

(assert (not b!4244326))

(assert (not b!4244336))

(assert (not b_next!126563))

(assert (not b_next!126565))

(assert b_and!336129)

(assert (not b!4244333))

(assert (not b!4244343))

(assert (not b!4244340))

(assert (not b!4244346))

(assert b_and!336127)

(assert (not b!4244331))

(assert (not b!4244337))

(assert (not b!4244335))

(assert (not b!4244325))

(assert (not b!4244345))

(assert b_and!336133)

(assert (not b!4244347))

(assert (not b!4244342))

(assert (not b_next!126561))

(assert b_and!336135)

(assert (not b_next!126559))

(assert (not b_next!126557))

(assert (not b_next!126555))

(assert (not b!4244341))

(assert (not b!4244328))

(assert b_and!336131)

(assert (not b!4244329))

(assert (not b!4244334))

(assert (not b!4244338))

(check-sat)

(pop 1)

(push 1)

(assert b_and!336125)

(assert (not b_next!126563))

(assert b_and!336133)

(assert (not b_next!126565))

(assert b_and!336129)

(assert b_and!336131)

(assert b_and!336127)

(assert (not b_next!126561))

(assert b_and!336135)

(assert (not b_next!126559))

(assert (not b_next!126557))

(assert (not b_next!126555))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4244441 () Bool)

(declare-fun e!2635984 () Bool)

(declare-fun lt!1507302 () tuple2!44518)

(assert (=> b!4244441 (= e!2635984 (= (_2!25393 lt!1507302) longerInput!51))))

(declare-fun b!4244443 () Bool)

(declare-fun e!2635983 () Bool)

(assert (=> b!4244443 (= e!2635984 e!2635983)))

(declare-fun res!1745067 () Bool)

(assert (=> b!4244443 (= res!1745067 (< (size!34388 (_2!25393 lt!1507302)) (size!34388 longerInput!51)))))

(assert (=> b!4244443 (=> (not res!1745067) (not e!2635983))))

(declare-fun b!4244444 () Bool)

(declare-fun e!2635985 () tuple2!44518)

(declare-fun lt!1507303 () Option!10075)

(declare-fun lt!1507301 () tuple2!44518)

(assert (=> b!4244444 (= e!2635985 (tuple2!44519 (Cons!46948 (_1!25394 (v!41028 lt!1507303)) (_1!25393 lt!1507301)) (_2!25393 lt!1507301)))))

(assert (=> b!4244444 (= lt!1507301 (lexList!2040 thiss!21540 rules!2932 (_2!25394 (v!41028 lt!1507303))))))

(declare-fun b!4244445 () Bool)

(assert (=> b!4244445 (= e!2635983 (not (isEmpty!27762 (_1!25393 lt!1507302))))))

(declare-fun d!1248605 () Bool)

(assert (=> d!1248605 e!2635984))

(declare-fun c!721040 () Bool)

(assert (=> d!1248605 (= c!721040 (> (size!34387 (_1!25393 lt!1507302)) 0))))

(assert (=> d!1248605 (= lt!1507302 e!2635985)))

(declare-fun c!721041 () Bool)

(assert (=> d!1248605 (= c!721041 (is-Some!10074 lt!1507303))))

(assert (=> d!1248605 (= lt!1507303 (maxPrefix!4492 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1248605 (= (lexList!2040 thiss!21540 rules!2932 longerInput!51) lt!1507302)))

(declare-fun b!4244442 () Bool)

(assert (=> b!4244442 (= e!2635985 (tuple2!44519 Nil!46948 longerInput!51))))

(assert (= (and d!1248605 c!721041) b!4244444))

(assert (= (and d!1248605 (not c!721041)) b!4244442))

(assert (= (and d!1248605 c!721040) b!4244443))

(assert (= (and d!1248605 (not c!721040)) b!4244441))

(assert (= (and b!4244443 res!1745067) b!4244445))

(declare-fun m!4829867 () Bool)

(assert (=> b!4244443 m!4829867))

(assert (=> b!4244443 m!4829769))

(declare-fun m!4829869 () Bool)

(assert (=> b!4244444 m!4829869))

(declare-fun m!4829871 () Bool)

(assert (=> b!4244445 m!4829871))

(declare-fun m!4829873 () Bool)

(assert (=> d!1248605 m!4829873))

(assert (=> d!1248605 m!4829787))

(assert (=> b!4244334 d!1248605))

(declare-fun d!1248613 () Bool)

(assert (=> d!1248613 (= (inv!61704 (tag!8803 (h!52367 rules!2932))) (= (mod (str.len (value!246798 (tag!8803 (h!52367 rules!2932)))) 2) 0))))

(assert (=> b!4244332 d!1248613))

(declare-fun d!1248615 () Bool)

(declare-fun res!1745070 () Bool)

(declare-fun e!2635988 () Bool)

(assert (=> d!1248615 (=> (not res!1745070) (not e!2635988))))

(declare-fun semiInverseModEq!3460 (Int Int) Bool)

(assert (=> d!1248615 (= res!1745070 (semiInverseModEq!3460 (toChars!10558 (transformation!7939 (h!52367 rules!2932))) (toValue!10699 (transformation!7939 (h!52367 rules!2932)))))))

(assert (=> d!1248615 (= (inv!61708 (transformation!7939 (h!52367 rules!2932))) e!2635988)))

(declare-fun b!4244448 () Bool)

(declare-fun equivClasses!3359 (Int Int) Bool)

(assert (=> b!4244448 (= e!2635988 (equivClasses!3359 (toChars!10558 (transformation!7939 (h!52367 rules!2932))) (toValue!10699 (transformation!7939 (h!52367 rules!2932)))))))

(assert (= (and d!1248615 res!1745070) b!4244448))

(declare-fun m!4829875 () Bool)

(assert (=> d!1248615 m!4829875))

(declare-fun m!4829877 () Bool)

(assert (=> b!4244448 m!4829877))

(assert (=> b!4244332 d!1248615))

(declare-fun d!1248617 () Bool)

(declare-fun res!1745075 () Bool)

(declare-fun e!2635991 () Bool)

(assert (=> d!1248617 (=> (not res!1745075) (not e!2635991))))

(assert (=> d!1248617 (= res!1745075 (not (isEmpty!27763 (originalCharacters!8283 (h!52368 addTokens!17)))))))

(assert (=> d!1248617 (= (inv!61707 (h!52368 addTokens!17)) e!2635991)))

(declare-fun b!4244453 () Bool)

(declare-fun res!1745076 () Bool)

(assert (=> b!4244453 (=> (not res!1745076) (not e!2635991))))

(declare-fun list!16927 (BalanceConc!27894) List!47070)

(declare-fun dynLambda!20131 (Int TokenValue!8169) BalanceConc!27894)

(assert (=> b!4244453 (= res!1745076 (= (originalCharacters!8283 (h!52368 addTokens!17)) (list!16927 (dynLambda!20131 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (value!246799 (h!52368 addTokens!17))))))))

(declare-fun b!4244454 () Bool)

(assert (=> b!4244454 (= e!2635991 (= (size!34386 (h!52368 addTokens!17)) (size!34388 (originalCharacters!8283 (h!52368 addTokens!17)))))))

(assert (= (and d!1248617 res!1745075) b!4244453))

(assert (= (and b!4244453 res!1745076) b!4244454))

(declare-fun b_lambda!125023 () Bool)

(assert (=> (not b_lambda!125023) (not b!4244453)))

(declare-fun t!351563 () Bool)

(declare-fun tb!255671 () Bool)

(assert (=> (and b!4244344 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))) t!351563) tb!255671))

(declare-fun b!4244459 () Bool)

(declare-fun e!2635994 () Bool)

(declare-fun tp!1301479 () Bool)

(declare-fun inv!61711 (Conc!14150) Bool)

(assert (=> b!4244459 (= e!2635994 (and (inv!61711 (c!721032 (dynLambda!20131 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (value!246799 (h!52368 addTokens!17))))) tp!1301479))))

(declare-fun result!311754 () Bool)

(declare-fun inv!61712 (BalanceConc!27894) Bool)

(assert (=> tb!255671 (= result!311754 (and (inv!61712 (dynLambda!20131 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (value!246799 (h!52368 addTokens!17)))) e!2635994))))

(assert (= tb!255671 b!4244459))

(declare-fun m!4829879 () Bool)

(assert (=> b!4244459 m!4829879))

(declare-fun m!4829881 () Bool)

(assert (=> tb!255671 m!4829881))

(assert (=> b!4244453 t!351563))

(declare-fun b_and!336161 () Bool)

(assert (= b_and!336127 (and (=> t!351563 result!311754) b_and!336161)))

(declare-fun t!351565 () Bool)

(declare-fun tb!255673 () Bool)

(assert (=> (and b!4244339 (= (toChars!10558 (transformation!7939 (h!52367 rules!2932))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))) t!351565) tb!255673))

(declare-fun result!311758 () Bool)

(assert (= result!311758 result!311754))

(assert (=> b!4244453 t!351565))

(declare-fun b_and!336163 () Bool)

(assert (= b_and!336131 (and (=> t!351565 result!311758) b_and!336163)))

(declare-fun t!351567 () Bool)

(declare-fun tb!255675 () Bool)

(assert (=> (and b!4244330 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))) t!351567) tb!255675))

(declare-fun result!311760 () Bool)

(assert (= result!311760 result!311754))

(assert (=> b!4244453 t!351567))

(declare-fun b_and!336165 () Bool)

(assert (= b_and!336135 (and (=> t!351567 result!311760) b_and!336165)))

(declare-fun m!4829883 () Bool)

(assert (=> d!1248617 m!4829883))

(declare-fun m!4829885 () Bool)

(assert (=> b!4244453 m!4829885))

(assert (=> b!4244453 m!4829885))

(declare-fun m!4829887 () Bool)

(assert (=> b!4244453 m!4829887))

(declare-fun m!4829889 () Bool)

(assert (=> b!4244454 m!4829889))

(assert (=> b!4244326 d!1248617))

(declare-fun b!4244464 () Bool)

(declare-fun e!2635998 () Bool)

(declare-fun lt!1507311 () tuple2!44518)

(assert (=> b!4244464 (= e!2635998 (= (_2!25393 lt!1507311) shorterInput!51))))

(declare-fun b!4244466 () Bool)

(declare-fun e!2635997 () Bool)

(assert (=> b!4244466 (= e!2635998 e!2635997)))

(declare-fun res!1745077 () Bool)

(assert (=> b!4244466 (= res!1745077 (< (size!34388 (_2!25393 lt!1507311)) (size!34388 shorterInput!51)))))

(assert (=> b!4244466 (=> (not res!1745077) (not e!2635997))))

(declare-fun b!4244467 () Bool)

(declare-fun e!2635999 () tuple2!44518)

(declare-fun lt!1507312 () Option!10075)

(declare-fun lt!1507308 () tuple2!44518)

(assert (=> b!4244467 (= e!2635999 (tuple2!44519 (Cons!46948 (_1!25394 (v!41028 lt!1507312)) (_1!25393 lt!1507308)) (_2!25393 lt!1507308)))))

(assert (=> b!4244467 (= lt!1507308 (lexList!2040 thiss!21540 rules!2932 (_2!25394 (v!41028 lt!1507312))))))

(declare-fun b!4244468 () Bool)

(assert (=> b!4244468 (= e!2635997 (not (isEmpty!27762 (_1!25393 lt!1507311))))))

(declare-fun d!1248619 () Bool)

(assert (=> d!1248619 e!2635998))

(declare-fun c!721044 () Bool)

(assert (=> d!1248619 (= c!721044 (> (size!34387 (_1!25393 lt!1507311)) 0))))

(assert (=> d!1248619 (= lt!1507311 e!2635999)))

(declare-fun c!721045 () Bool)

(assert (=> d!1248619 (= c!721045 (is-Some!10074 lt!1507312))))

(assert (=> d!1248619 (= lt!1507312 (maxPrefix!4492 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> d!1248619 (= (lexList!2040 thiss!21540 rules!2932 shorterInput!51) lt!1507311)))

(declare-fun b!4244465 () Bool)

(assert (=> b!4244465 (= e!2635999 (tuple2!44519 Nil!46948 shorterInput!51))))

(assert (= (and d!1248619 c!721045) b!4244467))

(assert (= (and d!1248619 (not c!721045)) b!4244465))

(assert (= (and d!1248619 c!721044) b!4244466))

(assert (= (and d!1248619 (not c!721044)) b!4244464))

(assert (= (and b!4244466 res!1745077) b!4244468))

(declare-fun m!4829891 () Bool)

(assert (=> b!4244466 m!4829891))

(assert (=> b!4244466 m!4829771))

(declare-fun m!4829893 () Bool)

(assert (=> b!4244467 m!4829893))

(declare-fun m!4829895 () Bool)

(assert (=> b!4244468 m!4829895))

(declare-fun m!4829897 () Bool)

(assert (=> d!1248619 m!4829897))

(assert (=> d!1248619 m!4829785))

(assert (=> b!4244325 d!1248619))

(declare-fun lt!1507318 () List!47072)

(declare-fun b!4244491 () Bool)

(declare-fun e!2636012 () Bool)

(assert (=> b!4244491 (= e!2636012 (or (not (= tokens!581 Nil!46948)) (= lt!1507318 addTokens!17)))))

(declare-fun b!4244490 () Bool)

(declare-fun res!1745086 () Bool)

(assert (=> b!4244490 (=> (not res!1745086) (not e!2636012))))

(assert (=> b!4244490 (= res!1745086 (= (size!34387 lt!1507318) (+ (size!34387 addTokens!17) (size!34387 tokens!581))))))

(declare-fun b!4244488 () Bool)

(declare-fun e!2636011 () List!47072)

(assert (=> b!4244488 (= e!2636011 tokens!581)))

(declare-fun b!4244489 () Bool)

(assert (=> b!4244489 (= e!2636011 (Cons!46948 (h!52368 addTokens!17) (++!11952 (t!351545 addTokens!17) tokens!581)))))

(declare-fun d!1248621 () Bool)

(assert (=> d!1248621 e!2636012))

(declare-fun res!1745085 () Bool)

(assert (=> d!1248621 (=> (not res!1745085) (not e!2636012))))

(declare-fun content!7385 (List!47072) (Set Token!14504))

(assert (=> d!1248621 (= res!1745085 (= (content!7385 lt!1507318) (set.union (content!7385 addTokens!17) (content!7385 tokens!581))))))

(assert (=> d!1248621 (= lt!1507318 e!2636011)))

(declare-fun c!721052 () Bool)

(assert (=> d!1248621 (= c!721052 (is-Nil!46948 addTokens!17))))

(assert (=> d!1248621 (= (++!11952 addTokens!17 tokens!581) lt!1507318)))

(assert (= (and d!1248621 c!721052) b!4244488))

(assert (= (and d!1248621 (not c!721052)) b!4244489))

(assert (= (and d!1248621 res!1745085) b!4244490))

(assert (= (and b!4244490 res!1745086) b!4244491))

(declare-fun m!4829907 () Bool)

(assert (=> b!4244490 m!4829907))

(assert (=> b!4244490 m!4829777))

(declare-fun m!4829909 () Bool)

(assert (=> b!4244490 m!4829909))

(declare-fun m!4829911 () Bool)

(assert (=> b!4244489 m!4829911))

(declare-fun m!4829913 () Bool)

(assert (=> d!1248621 m!4829913))

(declare-fun m!4829915 () Bool)

(assert (=> d!1248621 m!4829915))

(declare-fun m!4829917 () Bool)

(assert (=> d!1248621 m!4829917))

(assert (=> b!4244325 d!1248621))

(declare-fun b!4244508 () Bool)

(declare-fun e!2636024 () Bool)

(declare-fun inv!17 (TokenValue!8169) Bool)

(assert (=> b!4244508 (= e!2636024 (inv!17 (value!246799 (h!52368 tokens!581))))))

(declare-fun b!4244509 () Bool)

(declare-fun e!2636023 () Bool)

(declare-fun inv!15 (TokenValue!8169) Bool)

(assert (=> b!4244509 (= e!2636023 (inv!15 (value!246799 (h!52368 tokens!581))))))

(declare-fun d!1248625 () Bool)

(declare-fun c!721061 () Bool)

(assert (=> d!1248625 (= c!721061 (is-IntegerValue!24507 (value!246799 (h!52368 tokens!581))))))

(declare-fun e!2636022 () Bool)

(assert (=> d!1248625 (= (inv!21 (value!246799 (h!52368 tokens!581))) e!2636022)))

(declare-fun b!4244510 () Bool)

(declare-fun inv!16 (TokenValue!8169) Bool)

(assert (=> b!4244510 (= e!2636022 (inv!16 (value!246799 (h!52368 tokens!581))))))

(declare-fun b!4244511 () Bool)

(assert (=> b!4244511 (= e!2636022 e!2636024)))

(declare-fun c!721060 () Bool)

(assert (=> b!4244511 (= c!721060 (is-IntegerValue!24508 (value!246799 (h!52368 tokens!581))))))

(declare-fun b!4244512 () Bool)

(declare-fun res!1745089 () Bool)

(assert (=> b!4244512 (=> res!1745089 e!2636023)))

(assert (=> b!4244512 (= res!1745089 (not (is-IntegerValue!24509 (value!246799 (h!52368 tokens!581)))))))

(assert (=> b!4244512 (= e!2636024 e!2636023)))

(assert (= (and d!1248625 c!721061) b!4244510))

(assert (= (and d!1248625 (not c!721061)) b!4244511))

(assert (= (and b!4244511 c!721060) b!4244508))

(assert (= (and b!4244511 (not c!721060)) b!4244512))

(assert (= (and b!4244512 (not res!1745089)) b!4244509))

(declare-fun m!4829921 () Bool)

(assert (=> b!4244508 m!4829921))

(declare-fun m!4829923 () Bool)

(assert (=> b!4244509 m!4829923))

(declare-fun m!4829925 () Bool)

(assert (=> b!4244510 m!4829925))

(assert (=> b!4244336 d!1248625))

(declare-fun d!1248629 () Bool)

(declare-fun res!1745093 () Bool)

(declare-fun e!2636034 () Bool)

(assert (=> d!1248629 (=> (not res!1745093) (not e!2636034))))

(declare-fun rulesValid!3082 (LexerInterface!7534 List!47071) Bool)

(assert (=> d!1248629 (= res!1745093 (rulesValid!3082 thiss!21540 rules!2932))))

(assert (=> d!1248629 (= (rulesInvariant!6645 thiss!21540 rules!2932) e!2636034)))

(declare-fun b!4244528 () Bool)

(declare-datatypes ((List!47077 0))(
  ( (Nil!46953) (Cons!46953 (h!52373 String!54777) (t!351586 List!47077)) )
))
(declare-fun noDuplicateTag!3243 (LexerInterface!7534 List!47071 List!47077) Bool)

(assert (=> b!4244528 (= e!2636034 (noDuplicateTag!3243 thiss!21540 rules!2932 Nil!46953))))

(assert (= (and d!1248629 res!1745093) b!4244528))

(declare-fun m!4829931 () Bool)

(assert (=> d!1248629 m!4829931))

(declare-fun m!4829933 () Bool)

(assert (=> b!4244528 m!4829933))

(assert (=> b!4244335 d!1248629))

(declare-fun d!1248635 () Bool)

(assert (=> d!1248635 (= (isEmpty!27764 rules!2932) (is-Nil!46947 rules!2932))))

(assert (=> b!4244346 d!1248635))

(declare-fun d!1248637 () Bool)

(declare-fun res!1745094 () Bool)

(declare-fun e!2636035 () Bool)

(assert (=> d!1248637 (=> (not res!1745094) (not e!2636035))))

(assert (=> d!1248637 (= res!1745094 (not (isEmpty!27763 (originalCharacters!8283 (h!52368 tokens!581)))))))

(assert (=> d!1248637 (= (inv!61707 (h!52368 tokens!581)) e!2636035)))

(declare-fun b!4244529 () Bool)

(declare-fun res!1745095 () Bool)

(assert (=> b!4244529 (=> (not res!1745095) (not e!2636035))))

(assert (=> b!4244529 (= res!1745095 (= (originalCharacters!8283 (h!52368 tokens!581)) (list!16927 (dynLambda!20131 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (value!246799 (h!52368 tokens!581))))))))

(declare-fun b!4244530 () Bool)

(assert (=> b!4244530 (= e!2636035 (= (size!34386 (h!52368 tokens!581)) (size!34388 (originalCharacters!8283 (h!52368 tokens!581)))))))

(assert (= (and d!1248637 res!1745094) b!4244529))

(assert (= (and b!4244529 res!1745095) b!4244530))

(declare-fun b_lambda!125025 () Bool)

(assert (=> (not b_lambda!125025) (not b!4244529)))

(declare-fun t!351569 () Bool)

(declare-fun tb!255677 () Bool)

(assert (=> (and b!4244344 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581))))) t!351569) tb!255677))

(declare-fun b!4244531 () Bool)

(declare-fun e!2636036 () Bool)

(declare-fun tp!1301480 () Bool)

(assert (=> b!4244531 (= e!2636036 (and (inv!61711 (c!721032 (dynLambda!20131 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (value!246799 (h!52368 tokens!581))))) tp!1301480))))

(declare-fun result!311762 () Bool)

(assert (=> tb!255677 (= result!311762 (and (inv!61712 (dynLambda!20131 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (value!246799 (h!52368 tokens!581)))) e!2636036))))

(assert (= tb!255677 b!4244531))

(declare-fun m!4829943 () Bool)

(assert (=> b!4244531 m!4829943))

(declare-fun m!4829945 () Bool)

(assert (=> tb!255677 m!4829945))

(assert (=> b!4244529 t!351569))

(declare-fun b_and!336167 () Bool)

(assert (= b_and!336161 (and (=> t!351569 result!311762) b_and!336167)))

(declare-fun tb!255679 () Bool)

(declare-fun t!351571 () Bool)

(assert (=> (and b!4244339 (= (toChars!10558 (transformation!7939 (h!52367 rules!2932))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581))))) t!351571) tb!255679))

(declare-fun result!311764 () Bool)

(assert (= result!311764 result!311762))

(assert (=> b!4244529 t!351571))

(declare-fun b_and!336169 () Bool)

(assert (= b_and!336163 (and (=> t!351571 result!311764) b_and!336169)))

(declare-fun tb!255681 () Bool)

(declare-fun t!351573 () Bool)

(assert (=> (and b!4244330 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581))))) t!351573) tb!255681))

(declare-fun result!311766 () Bool)

(assert (= result!311766 result!311762))

(assert (=> b!4244529 t!351573))

(declare-fun b_and!336171 () Bool)

(assert (= b_and!336165 (and (=> t!351573 result!311766) b_and!336171)))

(declare-fun m!4829947 () Bool)

(assert (=> d!1248637 m!4829947))

(declare-fun m!4829949 () Bool)

(assert (=> b!4244529 m!4829949))

(assert (=> b!4244529 m!4829949))

(declare-fun m!4829951 () Bool)

(assert (=> b!4244529 m!4829951))

(declare-fun m!4829953 () Bool)

(assert (=> b!4244530 m!4829953))

(assert (=> b!4244328 d!1248637))

(declare-fun d!1248641 () Bool)

(assert (=> d!1248641 (= (isEmpty!27762 addTokens!17) (is-Nil!46948 addTokens!17))))

(assert (=> b!4244327 d!1248641))

(declare-fun d!1248643 () Bool)

(assert (=> d!1248643 (= (inv!61704 (tag!8803 (rule!11069 (h!52368 tokens!581)))) (= (mod (str.len (value!246798 (tag!8803 (rule!11069 (h!52368 tokens!581))))) 2) 0))))

(assert (=> b!4244338 d!1248643))

(declare-fun d!1248645 () Bool)

(declare-fun res!1745096 () Bool)

(declare-fun e!2636037 () Bool)

(assert (=> d!1248645 (=> (not res!1745096) (not e!2636037))))

(assert (=> d!1248645 (= res!1745096 (semiInverseModEq!3460 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (toValue!10699 (transformation!7939 (rule!11069 (h!52368 tokens!581))))))))

(assert (=> d!1248645 (= (inv!61708 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) e!2636037)))

(declare-fun b!4244532 () Bool)

(assert (=> b!4244532 (= e!2636037 (equivClasses!3359 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (toValue!10699 (transformation!7939 (rule!11069 (h!52368 tokens!581))))))))

(assert (= (and d!1248645 res!1745096) b!4244532))

(declare-fun m!4829955 () Bool)

(assert (=> d!1248645 m!4829955))

(declare-fun m!4829957 () Bool)

(assert (=> b!4244532 m!4829957))

(assert (=> b!4244338 d!1248645))

(declare-fun d!1248647 () Bool)

(assert (=> d!1248647 (= (isEmpty!27763 longerInput!51) (is-Nil!46946 longerInput!51))))

(assert (=> b!4244337 d!1248647))

(declare-fun d!1248649 () Bool)

(declare-fun lt!1507333 () Int)

(assert (=> d!1248649 (>= lt!1507333 0)))

(declare-fun e!2636042 () Int)

(assert (=> d!1248649 (= lt!1507333 e!2636042)))

(declare-fun c!721072 () Bool)

(assert (=> d!1248649 (= c!721072 (is-Nil!46946 longerInput!51))))

(assert (=> d!1248649 (= (size!34388 longerInput!51) lt!1507333)))

(declare-fun b!4244541 () Bool)

(assert (=> b!4244541 (= e!2636042 0)))

(declare-fun b!4244542 () Bool)

(assert (=> b!4244542 (= e!2636042 (+ 1 (size!34388 (t!351543 longerInput!51))))))

(assert (= (and d!1248649 c!721072) b!4244541))

(assert (= (and d!1248649 (not c!721072)) b!4244542))

(declare-fun m!4829959 () Bool)

(assert (=> b!4244542 m!4829959))

(assert (=> b!4244331 d!1248649))

(declare-fun d!1248651 () Bool)

(declare-fun lt!1507334 () Int)

(assert (=> d!1248651 (>= lt!1507334 0)))

(declare-fun e!2636043 () Int)

(assert (=> d!1248651 (= lt!1507334 e!2636043)))

(declare-fun c!721073 () Bool)

(assert (=> d!1248651 (= c!721073 (is-Nil!46946 shorterInput!51))))

(assert (=> d!1248651 (= (size!34388 shorterInput!51) lt!1507334)))

(declare-fun b!4244543 () Bool)

(assert (=> b!4244543 (= e!2636043 0)))

(declare-fun b!4244544 () Bool)

(assert (=> b!4244544 (= e!2636043 (+ 1 (size!34388 (t!351543 shorterInput!51))))))

(assert (= (and d!1248651 c!721073) b!4244543))

(assert (= (and d!1248651 (not c!721073)) b!4244544))

(declare-fun m!4829961 () Bool)

(assert (=> b!4244544 m!4829961))

(assert (=> b!4244331 d!1248651))

(declare-fun b!4244545 () Bool)

(declare-fun e!2636046 () Bool)

(assert (=> b!4244545 (= e!2636046 (inv!17 (value!246799 (h!52368 addTokens!17))))))

(declare-fun b!4244546 () Bool)

(declare-fun e!2636045 () Bool)

(assert (=> b!4244546 (= e!2636045 (inv!15 (value!246799 (h!52368 addTokens!17))))))

(declare-fun d!1248653 () Bool)

(declare-fun c!721075 () Bool)

(assert (=> d!1248653 (= c!721075 (is-IntegerValue!24507 (value!246799 (h!52368 addTokens!17))))))

(declare-fun e!2636044 () Bool)

(assert (=> d!1248653 (= (inv!21 (value!246799 (h!52368 addTokens!17))) e!2636044)))

(declare-fun b!4244547 () Bool)

(assert (=> b!4244547 (= e!2636044 (inv!16 (value!246799 (h!52368 addTokens!17))))))

(declare-fun b!4244548 () Bool)

(assert (=> b!4244548 (= e!2636044 e!2636046)))

(declare-fun c!721074 () Bool)

(assert (=> b!4244548 (= c!721074 (is-IntegerValue!24508 (value!246799 (h!52368 addTokens!17))))))

(declare-fun b!4244549 () Bool)

(declare-fun res!1745097 () Bool)

(assert (=> b!4244549 (=> res!1745097 e!2636045)))

(assert (=> b!4244549 (= res!1745097 (not (is-IntegerValue!24509 (value!246799 (h!52368 addTokens!17)))))))

(assert (=> b!4244549 (= e!2636046 e!2636045)))

(assert (= (and d!1248653 c!721075) b!4244547))

(assert (= (and d!1248653 (not c!721075)) b!4244548))

(assert (= (and b!4244548 c!721074) b!4244545))

(assert (= (and b!4244548 (not c!721074)) b!4244549))

(assert (= (and b!4244549 (not res!1745097)) b!4244546))

(declare-fun m!4829963 () Bool)

(assert (=> b!4244545 m!4829963))

(declare-fun m!4829965 () Bool)

(assert (=> b!4244546 m!4829965))

(declare-fun m!4829967 () Bool)

(assert (=> b!4244547 m!4829967))

(assert (=> b!4244342 d!1248653))

(declare-fun b!4244576 () Bool)

(declare-fun e!2636059 () Bool)

(declare-fun e!2636058 () Bool)

(assert (=> b!4244576 (= e!2636059 e!2636058)))

(declare-fun res!1745120 () Bool)

(assert (=> b!4244576 (=> (not res!1745120) (not e!2636058))))

(declare-fun lt!1507348 () Option!10075)

(declare-fun isDefined!7447 (Option!10075) Bool)

(assert (=> b!4244576 (= res!1745120 (isDefined!7447 lt!1507348))))

(declare-fun d!1248655 () Bool)

(assert (=> d!1248655 e!2636059))

(declare-fun res!1745118 () Bool)

(assert (=> d!1248655 (=> res!1745118 e!2636059)))

(declare-fun isEmpty!27768 (Option!10075) Bool)

(assert (=> d!1248655 (= res!1745118 (isEmpty!27768 lt!1507348))))

(declare-fun e!2636057 () Option!10075)

(assert (=> d!1248655 (= lt!1507348 e!2636057)))

(declare-fun c!721079 () Bool)

(assert (=> d!1248655 (= c!721079 (and (is-Cons!46947 rules!2932) (is-Nil!46947 (t!351544 rules!2932))))))

(declare-datatypes ((Unit!66001 0))(
  ( (Unit!66002) )
))
(declare-fun lt!1507349 () Unit!66001)

(declare-fun lt!1507346 () Unit!66001)

(assert (=> d!1248655 (= lt!1507349 lt!1507346)))

(declare-fun isPrefix!4732 (List!47070 List!47070) Bool)

(assert (=> d!1248655 (isPrefix!4732 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3129 (List!47070 List!47070) Unit!66001)

(assert (=> d!1248655 (= lt!1507346 (lemmaIsPrefixRefl!3129 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2981 (LexerInterface!7534 List!47071) Bool)

(assert (=> d!1248655 (rulesValidInductive!2981 thiss!21540 rules!2932)))

(assert (=> d!1248655 (= (maxPrefix!4492 thiss!21540 rules!2932 shorterInput!51) lt!1507348)))

(declare-fun call!293885 () Option!10075)

(declare-fun bm!293880 () Bool)

(declare-fun maxPrefixOneRule!3457 (LexerInterface!7534 Rule!15678 List!47070) Option!10075)

(assert (=> bm!293880 (= call!293885 (maxPrefixOneRule!3457 thiss!21540 (h!52367 rules!2932) shorterInput!51))))

(declare-fun b!4244577 () Bool)

(declare-fun contains!9738 (List!47071 Rule!15678) Bool)

(declare-fun get!15259 (Option!10075) tuple2!44520)

(assert (=> b!4244577 (= e!2636058 (contains!9738 rules!2932 (rule!11069 (_1!25394 (get!15259 lt!1507348)))))))

(declare-fun b!4244578 () Bool)

(declare-fun res!1745124 () Bool)

(assert (=> b!4244578 (=> (not res!1745124) (not e!2636058))))

(declare-fun apply!10759 (TokenValueInjection!15766 BalanceConc!27894) TokenValue!8169)

(declare-fun seqFromList!5819 (List!47070) BalanceConc!27894)

(assert (=> b!4244578 (= res!1745124 (= (value!246799 (_1!25394 (get!15259 lt!1507348))) (apply!10759 (transformation!7939 (rule!11069 (_1!25394 (get!15259 lt!1507348)))) (seqFromList!5819 (originalCharacters!8283 (_1!25394 (get!15259 lt!1507348)))))))))

(declare-fun b!4244579 () Bool)

(declare-fun res!1745119 () Bool)

(assert (=> b!4244579 (=> (not res!1745119) (not e!2636058))))

(declare-fun ++!11954 (List!47070 List!47070) List!47070)

(declare-fun charsOf!5289 (Token!14504) BalanceConc!27894)

(assert (=> b!4244579 (= res!1745119 (= (++!11954 (list!16927 (charsOf!5289 (_1!25394 (get!15259 lt!1507348)))) (_2!25394 (get!15259 lt!1507348))) shorterInput!51))))

(declare-fun b!4244580 () Bool)

(declare-fun res!1745123 () Bool)

(assert (=> b!4244580 (=> (not res!1745123) (not e!2636058))))

(assert (=> b!4244580 (= res!1745123 (< (size!34388 (_2!25394 (get!15259 lt!1507348))) (size!34388 shorterInput!51)))))

(declare-fun b!4244581 () Bool)

(declare-fun lt!1507347 () Option!10075)

(declare-fun lt!1507350 () Option!10075)

(assert (=> b!4244581 (= e!2636057 (ite (and (is-None!10074 lt!1507347) (is-None!10074 lt!1507350)) None!10074 (ite (is-None!10074 lt!1507350) lt!1507347 (ite (is-None!10074 lt!1507347) lt!1507350 (ite (>= (size!34386 (_1!25394 (v!41028 lt!1507347))) (size!34386 (_1!25394 (v!41028 lt!1507350)))) lt!1507347 lt!1507350)))))))

(assert (=> b!4244581 (= lt!1507347 call!293885)))

(assert (=> b!4244581 (= lt!1507350 (maxPrefix!4492 thiss!21540 (t!351544 rules!2932) shorterInput!51))))

(declare-fun b!4244582 () Bool)

(declare-fun res!1745121 () Bool)

(assert (=> b!4244582 (=> (not res!1745121) (not e!2636058))))

(declare-fun matchR!6454 (Regex!12844 List!47070) Bool)

(assert (=> b!4244582 (= res!1745121 (matchR!6454 (regex!7939 (rule!11069 (_1!25394 (get!15259 lt!1507348)))) (list!16927 (charsOf!5289 (_1!25394 (get!15259 lt!1507348))))))))

(declare-fun b!4244583 () Bool)

(assert (=> b!4244583 (= e!2636057 call!293885)))

(declare-fun b!4244584 () Bool)

(declare-fun res!1745122 () Bool)

(assert (=> b!4244584 (=> (not res!1745122) (not e!2636058))))

(assert (=> b!4244584 (= res!1745122 (= (list!16927 (charsOf!5289 (_1!25394 (get!15259 lt!1507348)))) (originalCharacters!8283 (_1!25394 (get!15259 lt!1507348)))))))

(assert (= (and d!1248655 c!721079) b!4244583))

(assert (= (and d!1248655 (not c!721079)) b!4244581))

(assert (= (or b!4244583 b!4244581) bm!293880))

(assert (= (and d!1248655 (not res!1745118)) b!4244576))

(assert (= (and b!4244576 res!1745120) b!4244584))

(assert (= (and b!4244584 res!1745122) b!4244580))

(assert (= (and b!4244580 res!1745123) b!4244579))

(assert (= (and b!4244579 res!1745119) b!4244578))

(assert (= (and b!4244578 res!1745124) b!4244582))

(assert (= (and b!4244582 res!1745121) b!4244577))

(declare-fun m!4829981 () Bool)

(assert (=> b!4244581 m!4829981))

(declare-fun m!4829983 () Bool)

(assert (=> d!1248655 m!4829983))

(declare-fun m!4829985 () Bool)

(assert (=> d!1248655 m!4829985))

(declare-fun m!4829987 () Bool)

(assert (=> d!1248655 m!4829987))

(declare-fun m!4829989 () Bool)

(assert (=> d!1248655 m!4829989))

(declare-fun m!4829991 () Bool)

(assert (=> b!4244576 m!4829991))

(declare-fun m!4829993 () Bool)

(assert (=> b!4244578 m!4829993))

(declare-fun m!4829995 () Bool)

(assert (=> b!4244578 m!4829995))

(assert (=> b!4244578 m!4829995))

(declare-fun m!4829997 () Bool)

(assert (=> b!4244578 m!4829997))

(assert (=> b!4244580 m!4829993))

(declare-fun m!4829999 () Bool)

(assert (=> b!4244580 m!4829999))

(assert (=> b!4244580 m!4829771))

(assert (=> b!4244582 m!4829993))

(declare-fun m!4830001 () Bool)

(assert (=> b!4244582 m!4830001))

(assert (=> b!4244582 m!4830001))

(declare-fun m!4830003 () Bool)

(assert (=> b!4244582 m!4830003))

(assert (=> b!4244582 m!4830003))

(declare-fun m!4830005 () Bool)

(assert (=> b!4244582 m!4830005))

(assert (=> b!4244584 m!4829993))

(assert (=> b!4244584 m!4830001))

(assert (=> b!4244584 m!4830001))

(assert (=> b!4244584 m!4830003))

(assert (=> b!4244579 m!4829993))

(assert (=> b!4244579 m!4830001))

(assert (=> b!4244579 m!4830001))

(assert (=> b!4244579 m!4830003))

(assert (=> b!4244579 m!4830003))

(declare-fun m!4830007 () Bool)

(assert (=> b!4244579 m!4830007))

(assert (=> b!4244577 m!4829993))

(declare-fun m!4830009 () Bool)

(assert (=> b!4244577 m!4830009))

(declare-fun m!4830011 () Bool)

(assert (=> bm!293880 m!4830011))

(assert (=> b!4244341 d!1248655))

(declare-fun b!4244585 () Bool)

(declare-fun e!2636062 () Bool)

(declare-fun e!2636061 () Bool)

(assert (=> b!4244585 (= e!2636062 e!2636061)))

(declare-fun res!1745127 () Bool)

(assert (=> b!4244585 (=> (not res!1745127) (not e!2636061))))

(declare-fun lt!1507353 () Option!10075)

(assert (=> b!4244585 (= res!1745127 (isDefined!7447 lt!1507353))))

(declare-fun d!1248659 () Bool)

(assert (=> d!1248659 e!2636062))

(declare-fun res!1745125 () Bool)

(assert (=> d!1248659 (=> res!1745125 e!2636062)))

(assert (=> d!1248659 (= res!1745125 (isEmpty!27768 lt!1507353))))

(declare-fun e!2636060 () Option!10075)

(assert (=> d!1248659 (= lt!1507353 e!2636060)))

(declare-fun c!721080 () Bool)

(assert (=> d!1248659 (= c!721080 (and (is-Cons!46947 rules!2932) (is-Nil!46947 (t!351544 rules!2932))))))

(declare-fun lt!1507354 () Unit!66001)

(declare-fun lt!1507351 () Unit!66001)

(assert (=> d!1248659 (= lt!1507354 lt!1507351)))

(assert (=> d!1248659 (isPrefix!4732 longerInput!51 longerInput!51)))

(assert (=> d!1248659 (= lt!1507351 (lemmaIsPrefixRefl!3129 longerInput!51 longerInput!51))))

(assert (=> d!1248659 (rulesValidInductive!2981 thiss!21540 rules!2932)))

(assert (=> d!1248659 (= (maxPrefix!4492 thiss!21540 rules!2932 longerInput!51) lt!1507353)))

(declare-fun call!293886 () Option!10075)

(declare-fun bm!293881 () Bool)

(assert (=> bm!293881 (= call!293886 (maxPrefixOneRule!3457 thiss!21540 (h!52367 rules!2932) longerInput!51))))

(declare-fun b!4244586 () Bool)

(assert (=> b!4244586 (= e!2636061 (contains!9738 rules!2932 (rule!11069 (_1!25394 (get!15259 lt!1507353)))))))

(declare-fun b!4244587 () Bool)

(declare-fun res!1745131 () Bool)

(assert (=> b!4244587 (=> (not res!1745131) (not e!2636061))))

(assert (=> b!4244587 (= res!1745131 (= (value!246799 (_1!25394 (get!15259 lt!1507353))) (apply!10759 (transformation!7939 (rule!11069 (_1!25394 (get!15259 lt!1507353)))) (seqFromList!5819 (originalCharacters!8283 (_1!25394 (get!15259 lt!1507353)))))))))

(declare-fun b!4244588 () Bool)

(declare-fun res!1745126 () Bool)

(assert (=> b!4244588 (=> (not res!1745126) (not e!2636061))))

(assert (=> b!4244588 (= res!1745126 (= (++!11954 (list!16927 (charsOf!5289 (_1!25394 (get!15259 lt!1507353)))) (_2!25394 (get!15259 lt!1507353))) longerInput!51))))

(declare-fun b!4244589 () Bool)

(declare-fun res!1745130 () Bool)

(assert (=> b!4244589 (=> (not res!1745130) (not e!2636061))))

(assert (=> b!4244589 (= res!1745130 (< (size!34388 (_2!25394 (get!15259 lt!1507353))) (size!34388 longerInput!51)))))

(declare-fun b!4244590 () Bool)

(declare-fun lt!1507352 () Option!10075)

(declare-fun lt!1507355 () Option!10075)

(assert (=> b!4244590 (= e!2636060 (ite (and (is-None!10074 lt!1507352) (is-None!10074 lt!1507355)) None!10074 (ite (is-None!10074 lt!1507355) lt!1507352 (ite (is-None!10074 lt!1507352) lt!1507355 (ite (>= (size!34386 (_1!25394 (v!41028 lt!1507352))) (size!34386 (_1!25394 (v!41028 lt!1507355)))) lt!1507352 lt!1507355)))))))

(assert (=> b!4244590 (= lt!1507352 call!293886)))

(assert (=> b!4244590 (= lt!1507355 (maxPrefix!4492 thiss!21540 (t!351544 rules!2932) longerInput!51))))

(declare-fun b!4244591 () Bool)

(declare-fun res!1745128 () Bool)

(assert (=> b!4244591 (=> (not res!1745128) (not e!2636061))))

(assert (=> b!4244591 (= res!1745128 (matchR!6454 (regex!7939 (rule!11069 (_1!25394 (get!15259 lt!1507353)))) (list!16927 (charsOf!5289 (_1!25394 (get!15259 lt!1507353))))))))

(declare-fun b!4244592 () Bool)

(assert (=> b!4244592 (= e!2636060 call!293886)))

(declare-fun b!4244593 () Bool)

(declare-fun res!1745129 () Bool)

(assert (=> b!4244593 (=> (not res!1745129) (not e!2636061))))

(assert (=> b!4244593 (= res!1745129 (= (list!16927 (charsOf!5289 (_1!25394 (get!15259 lt!1507353)))) (originalCharacters!8283 (_1!25394 (get!15259 lt!1507353)))))))

(assert (= (and d!1248659 c!721080) b!4244592))

(assert (= (and d!1248659 (not c!721080)) b!4244590))

(assert (= (or b!4244592 b!4244590) bm!293881))

(assert (= (and d!1248659 (not res!1745125)) b!4244585))

(assert (= (and b!4244585 res!1745127) b!4244593))

(assert (= (and b!4244593 res!1745129) b!4244589))

(assert (= (and b!4244589 res!1745130) b!4244588))

(assert (= (and b!4244588 res!1745126) b!4244587))

(assert (= (and b!4244587 res!1745131) b!4244591))

(assert (= (and b!4244591 res!1745128) b!4244586))

(declare-fun m!4830013 () Bool)

(assert (=> b!4244590 m!4830013))

(declare-fun m!4830015 () Bool)

(assert (=> d!1248659 m!4830015))

(declare-fun m!4830017 () Bool)

(assert (=> d!1248659 m!4830017))

(declare-fun m!4830019 () Bool)

(assert (=> d!1248659 m!4830019))

(assert (=> d!1248659 m!4829989))

(declare-fun m!4830021 () Bool)

(assert (=> b!4244585 m!4830021))

(declare-fun m!4830023 () Bool)

(assert (=> b!4244587 m!4830023))

(declare-fun m!4830025 () Bool)

(assert (=> b!4244587 m!4830025))

(assert (=> b!4244587 m!4830025))

(declare-fun m!4830027 () Bool)

(assert (=> b!4244587 m!4830027))

(assert (=> b!4244589 m!4830023))

(declare-fun m!4830029 () Bool)

(assert (=> b!4244589 m!4830029))

(assert (=> b!4244589 m!4829769))

(assert (=> b!4244591 m!4830023))

(declare-fun m!4830031 () Bool)

(assert (=> b!4244591 m!4830031))

(assert (=> b!4244591 m!4830031))

(declare-fun m!4830033 () Bool)

(assert (=> b!4244591 m!4830033))

(assert (=> b!4244591 m!4830033))

(declare-fun m!4830035 () Bool)

(assert (=> b!4244591 m!4830035))

(assert (=> b!4244593 m!4830023))

(assert (=> b!4244593 m!4830031))

(assert (=> b!4244593 m!4830031))

(assert (=> b!4244593 m!4830033))

(assert (=> b!4244588 m!4830023))

(assert (=> b!4244588 m!4830031))

(assert (=> b!4244588 m!4830031))

(assert (=> b!4244588 m!4830033))

(assert (=> b!4244588 m!4830033))

(declare-fun m!4830037 () Bool)

(assert (=> b!4244588 m!4830037))

(assert (=> b!4244586 m!4830023))

(declare-fun m!4830039 () Bool)

(assert (=> b!4244586 m!4830039))

(declare-fun m!4830041 () Bool)

(assert (=> bm!293881 m!4830041))

(assert (=> b!4244341 d!1248659))

(declare-fun d!1248661 () Bool)

(declare-fun lt!1507358 () Int)

(assert (=> d!1248661 (>= lt!1507358 0)))

(declare-fun e!2636065 () Int)

(assert (=> d!1248661 (= lt!1507358 e!2636065)))

(declare-fun c!721083 () Bool)

(assert (=> d!1248661 (= c!721083 (is-Nil!46948 addTokens!17))))

(assert (=> d!1248661 (= (size!34387 addTokens!17) lt!1507358)))

(declare-fun b!4244598 () Bool)

(assert (=> b!4244598 (= e!2636065 0)))

(declare-fun b!4244599 () Bool)

(assert (=> b!4244599 (= e!2636065 (+ 1 (size!34387 (t!351545 addTokens!17))))))

(assert (= (and d!1248661 c!721083) b!4244598))

(assert (= (and d!1248661 (not c!721083)) b!4244599))

(declare-fun m!4830043 () Bool)

(assert (=> b!4244599 m!4830043))

(assert (=> b!4244329 d!1248661))

(declare-fun d!1248663 () Bool)

(assert (=> d!1248663 (= (inv!61704 (tag!8803 (rule!11069 (h!52368 addTokens!17)))) (= (mod (str.len (value!246798 (tag!8803 (rule!11069 (h!52368 addTokens!17))))) 2) 0))))

(assert (=> b!4244340 d!1248663))

(declare-fun d!1248665 () Bool)

(declare-fun res!1745132 () Bool)

(declare-fun e!2636066 () Bool)

(assert (=> d!1248665 (=> (not res!1745132) (not e!2636066))))

(assert (=> d!1248665 (= res!1745132 (semiInverseModEq!3460 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (toValue!10699 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))))))

(assert (=> d!1248665 (= (inv!61708 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) e!2636066)))

(declare-fun b!4244600 () Bool)

(assert (=> b!4244600 (= e!2636066 (equivClasses!3359 (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (toValue!10699 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))))))

(assert (= (and d!1248665 res!1745132) b!4244600))

(declare-fun m!4830045 () Bool)

(assert (=> d!1248665 m!4830045))

(declare-fun m!4830047 () Bool)

(assert (=> b!4244600 m!4830047))

(assert (=> b!4244340 d!1248665))

(declare-fun b!4244605 () Bool)

(declare-fun e!2636069 () Bool)

(declare-fun tp!1301483 () Bool)

(assert (=> b!4244605 (= e!2636069 (and tp_is_empty!22679 tp!1301483))))

(assert (=> b!4244333 (= tp!1301411 e!2636069)))

(assert (= (and b!4244333 (is-Cons!46946 (t!351543 suffix!1262))) b!4244605))

(declare-fun b!4244606 () Bool)

(declare-fun e!2636070 () Bool)

(declare-fun tp!1301484 () Bool)

(assert (=> b!4244606 (= e!2636070 (and tp_is_empty!22679 tp!1301484))))

(assert (=> b!4244343 (= tp!1301413 e!2636070)))

(assert (= (and b!4244343 (is-Cons!46946 (t!351543 shorterInput!51))) b!4244606))

(declare-fun b!4244617 () Bool)

(declare-fun e!2636073 () Bool)

(assert (=> b!4244617 (= e!2636073 tp_is_empty!22679)))

(assert (=> b!4244332 (= tp!1301421 e!2636073)))

(declare-fun b!4244618 () Bool)

(declare-fun tp!1301498 () Bool)

(declare-fun tp!1301499 () Bool)

(assert (=> b!4244618 (= e!2636073 (and tp!1301498 tp!1301499))))

(declare-fun b!4244620 () Bool)

(declare-fun tp!1301495 () Bool)

(declare-fun tp!1301496 () Bool)

(assert (=> b!4244620 (= e!2636073 (and tp!1301495 tp!1301496))))

(declare-fun b!4244619 () Bool)

(declare-fun tp!1301497 () Bool)

(assert (=> b!4244619 (= e!2636073 tp!1301497)))

(assert (= (and b!4244332 (is-ElementMatch!12844 (regex!7939 (h!52367 rules!2932)))) b!4244617))

(assert (= (and b!4244332 (is-Concat!21014 (regex!7939 (h!52367 rules!2932)))) b!4244618))

(assert (= (and b!4244332 (is-Star!12844 (regex!7939 (h!52367 rules!2932)))) b!4244619))

(assert (= (and b!4244332 (is-Union!12844 (regex!7939 (h!52367 rules!2932)))) b!4244620))

(declare-fun b!4244631 () Bool)

(declare-fun b_free!125875 () Bool)

(declare-fun b_next!126579 () Bool)

(assert (=> b!4244631 (= b_free!125875 (not b_next!126579))))

(declare-fun tp!1301508 () Bool)

(declare-fun b_and!336173 () Bool)

(assert (=> b!4244631 (= tp!1301508 b_and!336173)))

(declare-fun b_free!125877 () Bool)

(declare-fun b_next!126581 () Bool)

(assert (=> b!4244631 (= b_free!125877 (not b_next!126581))))

(declare-fun t!351575 () Bool)

(declare-fun tb!255683 () Bool)

(assert (=> (and b!4244631 (= (toChars!10558 (transformation!7939 (h!52367 (t!351544 rules!2932)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))) t!351575) tb!255683))

(declare-fun result!311774 () Bool)

(assert (= result!311774 result!311754))

(assert (=> b!4244453 t!351575))

(declare-fun tb!255685 () Bool)

(declare-fun t!351577 () Bool)

(assert (=> (and b!4244631 (= (toChars!10558 (transformation!7939 (h!52367 (t!351544 rules!2932)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581))))) t!351577) tb!255685))

(declare-fun result!311776 () Bool)

(assert (= result!311776 result!311762))

(assert (=> b!4244529 t!351577))

(declare-fun b_and!336175 () Bool)

(declare-fun tp!1301509 () Bool)

(assert (=> b!4244631 (= tp!1301509 (and (=> t!351575 result!311774) (=> t!351577 result!311776) b_and!336175))))

(declare-fun e!2636084 () Bool)

(assert (=> b!4244631 (= e!2636084 (and tp!1301508 tp!1301509))))

(declare-fun tp!1301511 () Bool)

(declare-fun e!2636085 () Bool)

(declare-fun b!4244630 () Bool)

(assert (=> b!4244630 (= e!2636085 (and tp!1301511 (inv!61704 (tag!8803 (h!52367 (t!351544 rules!2932)))) (inv!61708 (transformation!7939 (h!52367 (t!351544 rules!2932)))) e!2636084))))

(declare-fun b!4244629 () Bool)

(declare-fun e!2636082 () Bool)

(declare-fun tp!1301510 () Bool)

(assert (=> b!4244629 (= e!2636082 (and e!2636085 tp!1301510))))

(assert (=> b!4244347 (= tp!1301407 e!2636082)))

(assert (= b!4244630 b!4244631))

(assert (= b!4244629 b!4244630))

(assert (= (and b!4244347 (is-Cons!46947 (t!351544 rules!2932))) b!4244629))

(declare-fun m!4830049 () Bool)

(assert (=> b!4244630 m!4830049))

(declare-fun m!4830051 () Bool)

(assert (=> b!4244630 m!4830051))

(declare-fun b!4244645 () Bool)

(declare-fun b_free!125879 () Bool)

(declare-fun b_next!126583 () Bool)

(assert (=> b!4244645 (= b_free!125879 (not b_next!126583))))

(declare-fun tp!1301524 () Bool)

(declare-fun b_and!336177 () Bool)

(assert (=> b!4244645 (= tp!1301524 b_and!336177)))

(declare-fun b_free!125881 () Bool)

(declare-fun b_next!126585 () Bool)

(assert (=> b!4244645 (= b_free!125881 (not b_next!126585))))

(declare-fun t!351579 () Bool)

(declare-fun tb!255687 () Bool)

(assert (=> (and b!4244645 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 addTokens!17))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))) t!351579) tb!255687))

(declare-fun result!311780 () Bool)

(assert (= result!311780 result!311754))

(assert (=> b!4244453 t!351579))

(declare-fun t!351581 () Bool)

(declare-fun tb!255689 () Bool)

(assert (=> (and b!4244645 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 addTokens!17))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581))))) t!351581) tb!255689))

(declare-fun result!311782 () Bool)

(assert (= result!311782 result!311762))

(assert (=> b!4244529 t!351581))

(declare-fun tp!1301525 () Bool)

(declare-fun b_and!336179 () Bool)

(assert (=> b!4244645 (= tp!1301525 (and (=> t!351579 result!311780) (=> t!351581 result!311782) b_and!336179))))

(declare-fun e!2636100 () Bool)

(assert (=> b!4244645 (= e!2636100 (and tp!1301524 tp!1301525))))

(declare-fun e!2636098 () Bool)

(declare-fun tp!1301523 () Bool)

(declare-fun e!2636099 () Bool)

(declare-fun b!4244643 () Bool)

(assert (=> b!4244643 (= e!2636098 (and (inv!21 (value!246799 (h!52368 (t!351545 addTokens!17)))) e!2636099 tp!1301523))))

(declare-fun e!2636102 () Bool)

(assert (=> b!4244326 (= tp!1301420 e!2636102)))

(declare-fun b!4244642 () Bool)

(declare-fun tp!1301522 () Bool)

(assert (=> b!4244642 (= e!2636102 (and (inv!61707 (h!52368 (t!351545 addTokens!17))) e!2636098 tp!1301522))))

(declare-fun tp!1301526 () Bool)

(declare-fun b!4244644 () Bool)

(assert (=> b!4244644 (= e!2636099 (and tp!1301526 (inv!61704 (tag!8803 (rule!11069 (h!52368 (t!351545 addTokens!17))))) (inv!61708 (transformation!7939 (rule!11069 (h!52368 (t!351545 addTokens!17))))) e!2636100))))

(assert (= b!4244644 b!4244645))

(assert (= b!4244643 b!4244644))

(assert (= b!4244642 b!4244643))

(assert (= (and b!4244326 (is-Cons!46948 (t!351545 addTokens!17))) b!4244642))

(declare-fun m!4830053 () Bool)

(assert (=> b!4244643 m!4830053))

(declare-fun m!4830055 () Bool)

(assert (=> b!4244642 m!4830055))

(declare-fun m!4830057 () Bool)

(assert (=> b!4244644 m!4830057))

(declare-fun m!4830059 () Bool)

(assert (=> b!4244644 m!4830059))

(declare-fun b!4244646 () Bool)

(declare-fun e!2636104 () Bool)

(declare-fun tp!1301527 () Bool)

(assert (=> b!4244646 (= e!2636104 (and tp_is_empty!22679 tp!1301527))))

(assert (=> b!4244336 (= tp!1301414 e!2636104)))

(assert (= (and b!4244336 (is-Cons!46946 (originalCharacters!8283 (h!52368 tokens!581)))) b!4244646))

(declare-fun b!4244647 () Bool)

(declare-fun e!2636105 () Bool)

(declare-fun tp!1301528 () Bool)

(assert (=> b!4244647 (= e!2636105 (and tp_is_empty!22679 tp!1301528))))

(assert (=> b!4244345 (= tp!1301415 e!2636105)))

(assert (= (and b!4244345 (is-Cons!46946 (t!351543 longerInput!51))) b!4244647))

(declare-fun b!4244651 () Bool)

(declare-fun b_free!125883 () Bool)

(declare-fun b_next!126587 () Bool)

(assert (=> b!4244651 (= b_free!125883 (not b_next!126587))))

(declare-fun tp!1301531 () Bool)

(declare-fun b_and!336181 () Bool)

(assert (=> b!4244651 (= tp!1301531 b_and!336181)))

(declare-fun b_free!125885 () Bool)

(declare-fun b_next!126589 () Bool)

(assert (=> b!4244651 (= b_free!125885 (not b_next!126589))))

(declare-fun t!351583 () Bool)

(declare-fun tb!255691 () Bool)

(assert (=> (and b!4244651 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 tokens!581))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17))))) t!351583) tb!255691))

(declare-fun result!311784 () Bool)

(assert (= result!311784 result!311754))

(assert (=> b!4244453 t!351583))

(declare-fun t!351585 () Bool)

(declare-fun tb!255693 () Bool)

(assert (=> (and b!4244651 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 tokens!581))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581))))) t!351585) tb!255693))

(declare-fun result!311786 () Bool)

(assert (= result!311786 result!311762))

(assert (=> b!4244529 t!351585))

(declare-fun tp!1301532 () Bool)

(declare-fun b_and!336183 () Bool)

(assert (=> b!4244651 (= tp!1301532 (and (=> t!351583 result!311784) (=> t!351585 result!311786) b_and!336183))))

(declare-fun e!2636108 () Bool)

(assert (=> b!4244651 (= e!2636108 (and tp!1301531 tp!1301532))))

(declare-fun e!2636107 () Bool)

(declare-fun b!4244649 () Bool)

(declare-fun e!2636106 () Bool)

(declare-fun tp!1301530 () Bool)

(assert (=> b!4244649 (= e!2636106 (and (inv!21 (value!246799 (h!52368 (t!351545 tokens!581)))) e!2636107 tp!1301530))))

(declare-fun e!2636110 () Bool)

(assert (=> b!4244328 (= tp!1301418 e!2636110)))

(declare-fun tp!1301529 () Bool)

(declare-fun b!4244648 () Bool)

(assert (=> b!4244648 (= e!2636110 (and (inv!61707 (h!52368 (t!351545 tokens!581))) e!2636106 tp!1301529))))

(declare-fun tp!1301533 () Bool)

(declare-fun b!4244650 () Bool)

(assert (=> b!4244650 (= e!2636107 (and tp!1301533 (inv!61704 (tag!8803 (rule!11069 (h!52368 (t!351545 tokens!581))))) (inv!61708 (transformation!7939 (rule!11069 (h!52368 (t!351545 tokens!581))))) e!2636108))))

(assert (= b!4244650 b!4244651))

(assert (= b!4244649 b!4244650))

(assert (= b!4244648 b!4244649))

(assert (= (and b!4244328 (is-Cons!46948 (t!351545 tokens!581))) b!4244648))

(declare-fun m!4830061 () Bool)

(assert (=> b!4244649 m!4830061))

(declare-fun m!4830063 () Bool)

(assert (=> b!4244648 m!4830063))

(declare-fun m!4830065 () Bool)

(assert (=> b!4244650 m!4830065))

(declare-fun m!4830067 () Bool)

(assert (=> b!4244650 m!4830067))

(declare-fun b!4244652 () Bool)

(declare-fun e!2636112 () Bool)

(assert (=> b!4244652 (= e!2636112 tp_is_empty!22679)))

(assert (=> b!4244338 (= tp!1301410 e!2636112)))

(declare-fun b!4244653 () Bool)

(declare-fun tp!1301537 () Bool)

(declare-fun tp!1301538 () Bool)

(assert (=> b!4244653 (= e!2636112 (and tp!1301537 tp!1301538))))

(declare-fun b!4244655 () Bool)

(declare-fun tp!1301534 () Bool)

(declare-fun tp!1301535 () Bool)

(assert (=> b!4244655 (= e!2636112 (and tp!1301534 tp!1301535))))

(declare-fun b!4244654 () Bool)

(declare-fun tp!1301536 () Bool)

(assert (=> b!4244654 (= e!2636112 tp!1301536)))

(assert (= (and b!4244338 (is-ElementMatch!12844 (regex!7939 (rule!11069 (h!52368 tokens!581))))) b!4244652))

(assert (= (and b!4244338 (is-Concat!21014 (regex!7939 (rule!11069 (h!52368 tokens!581))))) b!4244653))

(assert (= (and b!4244338 (is-Star!12844 (regex!7939 (rule!11069 (h!52368 tokens!581))))) b!4244654))

(assert (= (and b!4244338 (is-Union!12844 (regex!7939 (rule!11069 (h!52368 tokens!581))))) b!4244655))

(declare-fun b!4244656 () Bool)

(declare-fun e!2636113 () Bool)

(declare-fun tp!1301539 () Bool)

(assert (=> b!4244656 (= e!2636113 (and tp_is_empty!22679 tp!1301539))))

(assert (=> b!4244342 (= tp!1301406 e!2636113)))

(assert (= (and b!4244342 (is-Cons!46946 (originalCharacters!8283 (h!52368 addTokens!17)))) b!4244656))

(declare-fun b!4244657 () Bool)

(declare-fun e!2636114 () Bool)

(assert (=> b!4244657 (= e!2636114 tp_is_empty!22679)))

(assert (=> b!4244340 (= tp!1301405 e!2636114)))

(declare-fun b!4244658 () Bool)

(declare-fun tp!1301543 () Bool)

(declare-fun tp!1301544 () Bool)

(assert (=> b!4244658 (= e!2636114 (and tp!1301543 tp!1301544))))

(declare-fun b!4244660 () Bool)

(declare-fun tp!1301540 () Bool)

(declare-fun tp!1301541 () Bool)

(assert (=> b!4244660 (= e!2636114 (and tp!1301540 tp!1301541))))

(declare-fun b!4244659 () Bool)

(declare-fun tp!1301542 () Bool)

(assert (=> b!4244659 (= e!2636114 tp!1301542)))

(assert (= (and b!4244340 (is-ElementMatch!12844 (regex!7939 (rule!11069 (h!52368 addTokens!17))))) b!4244657))

(assert (= (and b!4244340 (is-Concat!21014 (regex!7939 (rule!11069 (h!52368 addTokens!17))))) b!4244658))

(assert (= (and b!4244340 (is-Star!12844 (regex!7939 (rule!11069 (h!52368 addTokens!17))))) b!4244659))

(assert (= (and b!4244340 (is-Union!12844 (regex!7939 (rule!11069 (h!52368 addTokens!17))))) b!4244660))

(declare-fun b_lambda!125027 () Bool)

(assert (= b_lambda!125023 (or (and b!4244344 b_free!125853 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))))) (and b!4244339 b_free!125857 (= (toChars!10558 (transformation!7939 (h!52367 rules!2932))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))))) (and b!4244651 b_free!125885 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 tokens!581))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))))) (and b!4244631 b_free!125877 (= (toChars!10558 (transformation!7939 (h!52367 (t!351544 rules!2932)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))))) (and b!4244330 b_free!125861) (and b!4244645 b_free!125881 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 addTokens!17))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))))) b_lambda!125027)))

(declare-fun b_lambda!125029 () Bool)

(assert (= b_lambda!125025 (or (and b!4244645 b_free!125881 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 addTokens!17))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))))) (and b!4244344 b_free!125853) (and b!4244330 b_free!125861 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 addTokens!17)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))))) (and b!4244339 b_free!125857 (= (toChars!10558 (transformation!7939 (h!52367 rules!2932))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))))) (and b!4244651 b_free!125885 (= (toChars!10558 (transformation!7939 (rule!11069 (h!52368 (t!351545 tokens!581))))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))))) (and b!4244631 b_free!125877 (= (toChars!10558 (transformation!7939 (h!52367 (t!351544 rules!2932)))) (toChars!10558 (transformation!7939 (rule!11069 (h!52368 tokens!581)))))) b_lambda!125029)))

(push 1)

(assert (not d!1248629))

(assert (not b!4244660))

(assert (not b_lambda!125027))

(assert b_and!336181)

(assert (not d!1248621))

(assert (not b!4244606))

(assert (not b!4244546))

(assert (not tb!255677))

(assert (not b!4244600))

(assert (not b!4244529))

(assert (not b!4244489))

(assert (not b!4244468))

(assert b_and!336167)

(assert (not b!4244646))

(assert (not b!4244509))

(assert (not b!4244620))

(assert (not b_next!126589))

(assert (not bm!293881))

(assert (not b!4244466))

(assert (not b!4244490))

(assert tp_is_empty!22679)

(assert (not b!4244658))

(assert (not b_lambda!125029))

(assert (not b!4244544))

(assert b_and!336125)

(assert (not b!4244649))

(assert (not b!4244588))

(assert (not b!4244467))

(assert (not bm!293880))

(assert (not b!4244590))

(assert (not b!4244545))

(assert (not b!4244578))

(assert (not b_next!126583))

(assert (not d!1248665))

(assert (not b!4244642))

(assert (not b!4244591))

(assert b_and!336173)

(assert (not b!4244630))

(assert (not b!4244593))

(assert (not b_next!126563))

(assert (not d!1248659))

(assert (not b!4244582))

(assert b_and!336133)

(assert (not b!4244647))

(assert (not b!4244585))

(assert (not b!4244528))

(assert (not b_next!126565))

(assert (not b!4244576))

(assert (not b!4244643))

(assert (not b!4244532))

(assert (not b!4244648))

(assert (not b!4244530))

(assert (not b!4244448))

(assert (not d!1248615))

(assert b_and!336177)

(assert b_and!336129)

(assert (not b!4244655))

(assert (not b!4244508))

(assert (not b_next!126561))

(assert (not b_next!126559))

(assert (not b!4244584))

(assert (not d!1248637))

(assert (not b!4244656))

(assert (not b!4244650))

(assert (not b!4244454))

(assert (not d!1248617))

(assert (not d!1248645))

(assert (not d!1248605))

(assert (not b!4244644))

(assert (not b!4244580))

(assert b_and!336175)

(assert (not b_next!126557))

(assert (not b_next!126555))

(assert (not b_next!126579))

(assert (not b!4244605))

(assert b_and!336183)

(assert (not b!4244459))

(assert (not d!1248655))

(assert b_and!336171)

(assert (not b!4244629))

(assert (not b!4244577))

(assert (not b!4244587))

(assert (not b!4244531))

(assert (not b!4244586))

(assert (not b!4244445))

(assert (not b!4244618))

(assert (not b!4244659))

(assert (not b_next!126587))

(assert b_and!336169)

(assert (not b_next!126581))

(assert (not b!4244654))

(assert (not b!4244542))

(assert (not b!4244653))

(assert (not b!4244510))

(assert (not d!1248619))

(assert (not b!4244547))

(assert (not b_next!126585))

(assert (not b!4244599))

(assert (not b!4244444))

(assert (not b!4244453))

(assert (not b!4244443))

(assert (not b!4244619))

(assert b_and!336179)

(assert (not tb!255671))

(assert (not b!4244579))

(assert (not b!4244581))

(assert (not b!4244589))

(check-sat)

(pop 1)

(push 1)

(assert b_and!336167)

(assert (not b_next!126589))

(assert b_and!336125)

(assert (not b_next!126583))

(assert b_and!336173)

(assert (not b_next!126563))

(assert b_and!336133)

(assert (not b_next!126565))

(assert b_and!336175)

(assert b_and!336171)

(assert b_and!336181)

(assert (not b_next!126585))

(assert b_and!336179)

(assert b_and!336177)

(assert b_and!336129)

(assert (not b_next!126561))

(assert (not b_next!126559))

(assert (not b_next!126557))

(assert (not b_next!126555))

(assert (not b_next!126579))

(assert b_and!336183)

(assert (not b_next!126587))

(assert b_and!336169)

(assert (not b_next!126581))

(check-sat)

(pop 1)

