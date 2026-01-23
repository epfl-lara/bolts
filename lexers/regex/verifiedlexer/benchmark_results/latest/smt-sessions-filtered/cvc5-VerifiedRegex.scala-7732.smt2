; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406392 () Bool)

(assert start!406392)

(declare-fun b!4245608 () Bool)

(declare-fun b_free!125995 () Bool)

(declare-fun b_next!126699 () Bool)

(assert (=> b!4245608 (= b_free!125995 (not b_next!126699))))

(declare-fun tp!1302078 () Bool)

(declare-fun b_and!336317 () Bool)

(assert (=> b!4245608 (= tp!1302078 b_and!336317)))

(declare-fun b_free!125997 () Bool)

(declare-fun b_next!126701 () Bool)

(assert (=> b!4245608 (= b_free!125997 (not b_next!126701))))

(declare-fun tp!1302080 () Bool)

(declare-fun b_and!336319 () Bool)

(assert (=> b!4245608 (= tp!1302080 b_and!336319)))

(declare-fun b!4245597 () Bool)

(declare-fun b_free!125999 () Bool)

(declare-fun b_next!126703 () Bool)

(assert (=> b!4245597 (= b_free!125999 (not b_next!126703))))

(declare-fun tp!1302086 () Bool)

(declare-fun b_and!336321 () Bool)

(assert (=> b!4245597 (= tp!1302086 b_and!336321)))

(declare-fun b_free!126001 () Bool)

(declare-fun b_next!126705 () Bool)

(assert (=> b!4245597 (= b_free!126001 (not b_next!126705))))

(declare-fun tp!1302081 () Bool)

(declare-fun b_and!336323 () Bool)

(assert (=> b!4245597 (= tp!1302081 b_and!336323)))

(declare-fun b!4245593 () Bool)

(declare-fun e!2636828 () Bool)

(declare-fun e!2636823 () Bool)

(declare-fun tp!1302075 () Bool)

(assert (=> b!4245593 (= e!2636828 (and e!2636823 tp!1302075))))

(declare-fun e!2636827 () Bool)

(declare-datatypes ((List!47105 0))(
  ( (Nil!46981) (Cons!46981 (h!52401 (_ BitVec 16)) (t!351674 List!47105)) )
))
(declare-datatypes ((TokenValue!8177 0))(
  ( (FloatLiteralValue!16354 (text!57684 List!47105)) (TokenValueExt!8176 (__x!28577 Int)) (Broken!40885 (value!247001 List!47105)) (Object!8300) (End!8177) (Def!8177) (Underscore!8177) (Match!8177) (Else!8177) (Error!8177) (Case!8177) (If!8177) (Extends!8177) (Abstract!8177) (Class!8177) (Val!8177) (DelimiterValue!16354 (del!8237 List!47105)) (KeywordValue!8183 (value!247002 List!47105)) (CommentValue!16354 (value!247003 List!47105)) (WhitespaceValue!16354 (value!247004 List!47105)) (IndentationValue!8177 (value!247005 List!47105)) (String!54816) (Int32!8177) (Broken!40886 (value!247006 List!47105)) (Boolean!8178) (Unit!66015) (OperatorValue!8180 (op!8237 List!47105)) (IdentifierValue!16354 (value!247007 List!47105)) (IdentifierValue!16355 (value!247008 List!47105)) (WhitespaceValue!16355 (value!247009 List!47105)) (True!16354) (False!16354) (Broken!40887 (value!247010 List!47105)) (Broken!40888 (value!247011 List!47105)) (True!16355) (RightBrace!8177) (RightBracket!8177) (Colon!8177) (Null!8177) (Comma!8177) (LeftBracket!8177) (False!16355) (LeftBrace!8177) (ImaginaryLiteralValue!8177 (text!57685 List!47105)) (StringLiteralValue!24531 (value!247012 List!47105)) (EOFValue!8177 (value!247013 List!47105)) (IdentValue!8177 (value!247014 List!47105)) (DelimiterValue!16355 (value!247015 List!47105)) (DedentValue!8177 (value!247016 List!47105)) (NewLineValue!8177 (value!247017 List!47105)) (IntegerValue!24531 (value!247018 (_ BitVec 32)) (text!57686 List!47105)) (IntegerValue!24532 (value!247019 Int) (text!57687 List!47105)) (Times!8177) (Or!8177) (Equal!8177) (Minus!8177) (Broken!40889 (value!247020 List!47105)) (And!8177) (Div!8177) (LessEqual!8177) (Mod!8177) (Concat!21029) (Not!8177) (Plus!8177) (SpaceValue!8177 (value!247021 List!47105)) (IntegerValue!24533 (value!247022 Int) (text!57688 List!47105)) (StringLiteralValue!24532 (text!57689 List!47105)) (FloatLiteralValue!16355 (text!57690 List!47105)) (BytesLiteralValue!8177 (value!247023 List!47105)) (CommentValue!16355 (value!247024 List!47105)) (StringLiteralValue!24533 (value!247025 List!47105)) (ErrorTokenValue!8177 (msg!8238 List!47105)) )
))
(declare-datatypes ((C!25902 0))(
  ( (C!25903 (val!15141 Int)) )
))
(declare-datatypes ((List!47106 0))(
  ( (Nil!46982) (Cons!46982 (h!52402 C!25902) (t!351675 List!47106)) )
))
(declare-datatypes ((IArray!28321 0))(
  ( (IArray!28322 (innerList!14218 List!47106)) )
))
(declare-datatypes ((Conc!14158 0))(
  ( (Node!14158 (left!34882 Conc!14158) (right!35212 Conc!14158) (csize!28546 Int) (cheight!14369 Int)) (Leaf!21891 (xs!17464 IArray!28321) (csize!28547 Int)) (Empty!14158) )
))
(declare-datatypes ((BalanceConc!27910 0))(
  ( (BalanceConc!27911 (c!721175 Conc!14158)) )
))
(declare-datatypes ((TokenValueInjection!15782 0))(
  ( (TokenValueInjection!15783 (toValue!10707 Int) (toChars!10566 Int)) )
))
(declare-datatypes ((Regex!12852 0))(
  ( (ElementMatch!12852 (c!721176 C!25902)) (Concat!21030 (regOne!26216 Regex!12852) (regTwo!26216 Regex!12852)) (EmptyExpr!12852) (Star!12852 (reg!13181 Regex!12852)) (EmptyLang!12852) (Union!12852 (regOne!26217 Regex!12852) (regTwo!26217 Regex!12852)) )
))
(declare-datatypes ((String!54817 0))(
  ( (String!54818 (value!247026 String)) )
))
(declare-datatypes ((Rule!15694 0))(
  ( (Rule!15695 (regex!7947 Regex!12852) (tag!8811 String!54817) (isSeparator!7947 Bool) (transformation!7947 TokenValueInjection!15782)) )
))
(declare-datatypes ((Token!14520 0))(
  ( (Token!14521 (value!247027 TokenValue!8177) (rule!11077 Rule!15694) (size!34410 Int) (originalCharacters!8291 List!47106)) )
))
(declare-datatypes ((List!47107 0))(
  ( (Nil!46983) (Cons!46983 (h!52403 Token!14520) (t!351676 List!47107)) )
))
(declare-fun tokens!592 () List!47107)

(declare-fun b!4245594 () Bool)

(declare-fun tp!1302077 () Bool)

(declare-fun e!2636822 () Bool)

(declare-fun inv!61743 (Token!14520) Bool)

(assert (=> b!4245594 (= e!2636827 (and (inv!61743 (h!52403 tokens!592)) e!2636822 tp!1302077))))

(declare-fun b!4245595 () Bool)

(declare-fun res!1745461 () Bool)

(declare-fun e!2636833 () Bool)

(assert (=> b!4245595 (=> (not res!1745461) (not e!2636833))))

(declare-fun longerInput!62 () List!47106)

(declare-fun shorterInput!62 () List!47106)

(declare-fun size!34411 (List!47106) Int)

(assert (=> b!4245595 (= res!1745461 (> (size!34411 longerInput!62) (size!34411 shorterInput!62)))))

(declare-fun e!2636830 () Bool)

(declare-fun b!4245596 () Bool)

(declare-fun e!2636829 () Bool)

(declare-fun tp!1302085 () Bool)

(declare-fun inv!61740 (String!54817) Bool)

(declare-fun inv!61744 (TokenValueInjection!15782) Bool)

(assert (=> b!4245596 (= e!2636829 (and tp!1302085 (inv!61740 (tag!8811 (rule!11077 (h!52403 tokens!592)))) (inv!61744 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) e!2636830))))

(declare-fun e!2636821 () Bool)

(assert (=> b!4245597 (= e!2636821 (and tp!1302086 tp!1302081))))

(declare-fun b!4245598 () Bool)

(declare-fun e!2636825 () Bool)

(declare-fun tp_is_empty!22695 () Bool)

(declare-fun tp!1302082 () Bool)

(assert (=> b!4245598 (= e!2636825 (and tp_is_empty!22695 tp!1302082))))

(declare-fun b!4245599 () Bool)

(declare-fun res!1745459 () Bool)

(assert (=> b!4245599 (=> (not res!1745459) (not e!2636833))))

(declare-datatypes ((LexerInterface!7542 0))(
  ( (LexerInterfaceExt!7539 (__x!28578 Int)) (Lexer!7540) )
))
(declare-fun thiss!21641 () LexerInterface!7542)

(declare-fun suffix!1284 () List!47106)

(declare-datatypes ((List!47108 0))(
  ( (Nil!46984) (Cons!46984 (h!52404 Rule!15694) (t!351677 List!47108)) )
))
(declare-fun rules!2971 () List!47108)

(declare-datatypes ((tuple2!44550 0))(
  ( (tuple2!44551 (_1!25409 List!47107) (_2!25409 List!47106)) )
))
(declare-fun lexList!2048 (LexerInterface!7542 List!47108 List!47106) tuple2!44550)

(assert (=> b!4245599 (= res!1745459 (= (lexList!2048 thiss!21641 rules!2971 longerInput!62) (tuple2!44551 tokens!592 suffix!1284)))))

(declare-fun b!4245600 () Bool)

(declare-fun res!1745458 () Bool)

(assert (=> b!4245600 (=> (not res!1745458) (not e!2636833))))

(declare-fun isEmpty!27790 (List!47106) Bool)

(assert (=> b!4245600 (= res!1745458 (not (isEmpty!27790 longerInput!62)))))

(declare-fun b!4245601 () Bool)

(declare-fun e!2636826 () Bool)

(declare-fun tp!1302076 () Bool)

(assert (=> b!4245601 (= e!2636826 (and tp_is_empty!22695 tp!1302076))))

(declare-fun b!4245603 () Bool)

(declare-fun e!2636824 () Bool)

(declare-fun tp!1302079 () Bool)

(assert (=> b!4245603 (= e!2636824 (and tp_is_empty!22695 tp!1302079))))

(declare-fun b!4245604 () Bool)

(declare-fun tp!1302084 () Bool)

(assert (=> b!4245604 (= e!2636823 (and tp!1302084 (inv!61740 (tag!8811 (h!52404 rules!2971))) (inv!61744 (transformation!7947 (h!52404 rules!2971))) e!2636821))))

(declare-fun b!4245602 () Bool)

(declare-fun rulesValidInductive!2985 (LexerInterface!7542 List!47108) Bool)

(assert (=> b!4245602 (= e!2636833 (not (rulesValidInductive!2985 thiss!21641 rules!2971)))))

(declare-fun res!1745460 () Bool)

(assert (=> start!406392 (=> (not res!1745460) (not e!2636833))))

(assert (=> start!406392 (= res!1745460 (is-Lexer!7540 thiss!21641))))

(assert (=> start!406392 e!2636833))

(assert (=> start!406392 true))

(assert (=> start!406392 e!2636824))

(assert (=> start!406392 e!2636826))

(assert (=> start!406392 e!2636827))

(assert (=> start!406392 e!2636828))

(assert (=> start!406392 e!2636825))

(declare-fun b!4245605 () Bool)

(declare-fun res!1745457 () Bool)

(assert (=> b!4245605 (=> (not res!1745457) (not e!2636833))))

(declare-fun isEmpty!27791 (List!47108) Bool)

(assert (=> b!4245605 (= res!1745457 (not (isEmpty!27791 rules!2971)))))

(declare-fun tp!1302083 () Bool)

(declare-fun b!4245606 () Bool)

(declare-fun inv!21 (TokenValue!8177) Bool)

(assert (=> b!4245606 (= e!2636822 (and (inv!21 (value!247027 (h!52403 tokens!592))) e!2636829 tp!1302083))))

(declare-fun b!4245607 () Bool)

(declare-fun res!1745462 () Bool)

(assert (=> b!4245607 (=> (not res!1745462) (not e!2636833))))

(declare-fun rulesInvariant!6653 (LexerInterface!7542 List!47108) Bool)

(assert (=> b!4245607 (= res!1745462 (rulesInvariant!6653 thiss!21641 rules!2971))))

(assert (=> b!4245608 (= e!2636830 (and tp!1302078 tp!1302080))))

(assert (= (and start!406392 res!1745460) b!4245605))

(assert (= (and b!4245605 res!1745457) b!4245607))

(assert (= (and b!4245607 res!1745462) b!4245600))

(assert (= (and b!4245600 res!1745458) b!4245595))

(assert (= (and b!4245595 res!1745461) b!4245599))

(assert (= (and b!4245599 res!1745459) b!4245602))

(assert (= (and start!406392 (is-Cons!46982 suffix!1284)) b!4245603))

(assert (= (and start!406392 (is-Cons!46982 longerInput!62)) b!4245601))

(assert (= b!4245596 b!4245608))

(assert (= b!4245606 b!4245596))

(assert (= b!4245594 b!4245606))

(assert (= (and start!406392 (is-Cons!46983 tokens!592)) b!4245594))

(assert (= b!4245604 b!4245597))

(assert (= b!4245593 b!4245604))

(assert (= (and start!406392 (is-Cons!46984 rules!2971)) b!4245593))

(assert (= (and start!406392 (is-Cons!46982 shorterInput!62)) b!4245598))

(declare-fun m!4830771 () Bool)

(assert (=> b!4245602 m!4830771))

(declare-fun m!4830773 () Bool)

(assert (=> b!4245594 m!4830773))

(declare-fun m!4830775 () Bool)

(assert (=> b!4245599 m!4830775))

(declare-fun m!4830777 () Bool)

(assert (=> b!4245605 m!4830777))

(declare-fun m!4830779 () Bool)

(assert (=> b!4245595 m!4830779))

(declare-fun m!4830781 () Bool)

(assert (=> b!4245595 m!4830781))

(declare-fun m!4830783 () Bool)

(assert (=> b!4245600 m!4830783))

(declare-fun m!4830785 () Bool)

(assert (=> b!4245604 m!4830785))

(declare-fun m!4830787 () Bool)

(assert (=> b!4245604 m!4830787))

(declare-fun m!4830789 () Bool)

(assert (=> b!4245596 m!4830789))

(declare-fun m!4830791 () Bool)

(assert (=> b!4245596 m!4830791))

(declare-fun m!4830793 () Bool)

(assert (=> b!4245606 m!4830793))

(declare-fun m!4830795 () Bool)

(assert (=> b!4245607 m!4830795))

(push 1)

(assert b_and!336319)

(assert (not b!4245602))

(assert (not b_next!126699))

(assert b_and!336323)

(assert (not b_next!126703))

(assert b_and!336317)

(assert (not b!4245606))

(assert (not b!4245593))

(assert (not b_next!126701))

(assert (not b!4245601))

(assert (not b!4245607))

(assert (not b_next!126705))

(assert (not b!4245604))

(assert (not b!4245595))

(assert (not b!4245605))

(assert (not b!4245594))

(assert b_and!336321)

(assert (not b!4245600))

(assert (not b!4245599))

(assert tp_is_empty!22695)

(assert (not b!4245603))

(assert (not b!4245596))

(assert (not b!4245598))

(check-sat)

(pop 1)

(push 1)

(assert b_and!336319)

(assert (not b_next!126699))

(assert b_and!336323)

(assert (not b_next!126703))

(assert b_and!336321)

(assert b_and!336317)

(assert (not b_next!126701))

(assert (not b_next!126705))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1248785 () Bool)

(declare-fun lt!1507501 () Int)

(assert (=> d!1248785 (>= lt!1507501 0)))

(declare-fun e!2636881 () Int)

(assert (=> d!1248785 (= lt!1507501 e!2636881)))

(declare-fun c!721182 () Bool)

(assert (=> d!1248785 (= c!721182 (is-Nil!46982 longerInput!62))))

(assert (=> d!1248785 (= (size!34411 longerInput!62) lt!1507501)))

(declare-fun b!4245665 () Bool)

(assert (=> b!4245665 (= e!2636881 0)))

(declare-fun b!4245666 () Bool)

(assert (=> b!4245666 (= e!2636881 (+ 1 (size!34411 (t!351675 longerInput!62))))))

(assert (= (and d!1248785 c!721182) b!4245665))

(assert (= (and d!1248785 (not c!721182)) b!4245666))

(declare-fun m!4830823 () Bool)

(assert (=> b!4245666 m!4830823))

(assert (=> b!4245595 d!1248785))

(declare-fun d!1248787 () Bool)

(declare-fun lt!1507502 () Int)

(assert (=> d!1248787 (>= lt!1507502 0)))

(declare-fun e!2636882 () Int)

(assert (=> d!1248787 (= lt!1507502 e!2636882)))

(declare-fun c!721183 () Bool)

(assert (=> d!1248787 (= c!721183 (is-Nil!46982 shorterInput!62))))

(assert (=> d!1248787 (= (size!34411 shorterInput!62) lt!1507502)))

(declare-fun b!4245667 () Bool)

(assert (=> b!4245667 (= e!2636882 0)))

(declare-fun b!4245668 () Bool)

(assert (=> b!4245668 (= e!2636882 (+ 1 (size!34411 (t!351675 shorterInput!62))))))

(assert (= (and d!1248787 c!721183) b!4245667))

(assert (= (and d!1248787 (not c!721183)) b!4245668))

(declare-fun m!4830825 () Bool)

(assert (=> b!4245668 m!4830825))

(assert (=> b!4245595 d!1248787))

(declare-fun b!4245690 () Bool)

(declare-fun e!2636896 () Bool)

(declare-fun inv!16 (TokenValue!8177) Bool)

(assert (=> b!4245690 (= e!2636896 (inv!16 (value!247027 (h!52403 tokens!592))))))

(declare-fun d!1248789 () Bool)

(declare-fun c!721190 () Bool)

(assert (=> d!1248789 (= c!721190 (is-IntegerValue!24531 (value!247027 (h!52403 tokens!592))))))

(assert (=> d!1248789 (= (inv!21 (value!247027 (h!52403 tokens!592))) e!2636896)))

(declare-fun b!4245691 () Bool)

(declare-fun e!2636897 () Bool)

(declare-fun inv!15 (TokenValue!8177) Bool)

(assert (=> b!4245691 (= e!2636897 (inv!15 (value!247027 (h!52403 tokens!592))))))

(declare-fun b!4245692 () Bool)

(declare-fun e!2636895 () Bool)

(assert (=> b!4245692 (= e!2636896 e!2636895)))

(declare-fun c!721191 () Bool)

(assert (=> b!4245692 (= c!721191 (is-IntegerValue!24532 (value!247027 (h!52403 tokens!592))))))

(declare-fun b!4245693 () Bool)

(declare-fun res!1745489 () Bool)

(assert (=> b!4245693 (=> res!1745489 e!2636897)))

(assert (=> b!4245693 (= res!1745489 (not (is-IntegerValue!24533 (value!247027 (h!52403 tokens!592)))))))

(assert (=> b!4245693 (= e!2636895 e!2636897)))

(declare-fun b!4245694 () Bool)

(declare-fun inv!17 (TokenValue!8177) Bool)

(assert (=> b!4245694 (= e!2636895 (inv!17 (value!247027 (h!52403 tokens!592))))))

(assert (= (and d!1248789 c!721190) b!4245690))

(assert (= (and d!1248789 (not c!721190)) b!4245692))

(assert (= (and b!4245692 c!721191) b!4245694))

(assert (= (and b!4245692 (not c!721191)) b!4245693))

(assert (= (and b!4245693 (not res!1745489)) b!4245691))

(declare-fun m!4830839 () Bool)

(assert (=> b!4245690 m!4830839))

(declare-fun m!4830841 () Bool)

(assert (=> b!4245691 m!4830841))

(declare-fun m!4830843 () Bool)

(assert (=> b!4245694 m!4830843))

(assert (=> b!4245606 d!1248789))

(declare-fun d!1248793 () Bool)

(assert (=> d!1248793 (= (isEmpty!27791 rules!2971) (is-Nil!46984 rules!2971))))

(assert (=> b!4245605 d!1248793))

(declare-fun d!1248795 () Bool)

(assert (=> d!1248795 (= (isEmpty!27790 longerInput!62) (is-Nil!46982 longerInput!62))))

(assert (=> b!4245600 d!1248795))

(declare-fun b!4245715 () Bool)

(declare-fun e!2636909 () Bool)

(declare-fun e!2636908 () Bool)

(assert (=> b!4245715 (= e!2636909 e!2636908)))

(declare-fun res!1745492 () Bool)

(declare-fun lt!1507519 () tuple2!44550)

(assert (=> b!4245715 (= res!1745492 (< (size!34411 (_2!25409 lt!1507519)) (size!34411 longerInput!62)))))

(assert (=> b!4245715 (=> (not res!1745492) (not e!2636908))))

(declare-fun b!4245716 () Bool)

(assert (=> b!4245716 (= e!2636909 (= (_2!25409 lt!1507519) longerInput!62))))

(declare-fun b!4245717 () Bool)

(declare-fun e!2636910 () tuple2!44550)

(assert (=> b!4245717 (= e!2636910 (tuple2!44551 Nil!46983 longerInput!62))))

(declare-fun b!4245718 () Bool)

(declare-fun isEmpty!27794 (List!47107) Bool)

(assert (=> b!4245718 (= e!2636908 (not (isEmpty!27794 (_1!25409 lt!1507519))))))

(declare-fun b!4245719 () Bool)

(declare-datatypes ((tuple2!44554 0))(
  ( (tuple2!44555 (_1!25411 Token!14520) (_2!25411 List!47106)) )
))
(declare-datatypes ((Option!10083 0))(
  ( (None!10082) (Some!10082 (v!41036 tuple2!44554)) )
))
(declare-fun lt!1507521 () Option!10083)

(declare-fun lt!1507520 () tuple2!44550)

(assert (=> b!4245719 (= e!2636910 (tuple2!44551 (Cons!46983 (_1!25411 (v!41036 lt!1507521)) (_1!25409 lt!1507520)) (_2!25409 lt!1507520)))))

(assert (=> b!4245719 (= lt!1507520 (lexList!2048 thiss!21641 rules!2971 (_2!25411 (v!41036 lt!1507521))))))

(declare-fun d!1248801 () Bool)

(assert (=> d!1248801 e!2636909))

(declare-fun c!721200 () Bool)

(declare-fun size!34414 (List!47107) Int)

(assert (=> d!1248801 (= c!721200 (> (size!34414 (_1!25409 lt!1507519)) 0))))

(assert (=> d!1248801 (= lt!1507519 e!2636910)))

(declare-fun c!721201 () Bool)

(assert (=> d!1248801 (= c!721201 (is-Some!10082 lt!1507521))))

(declare-fun maxPrefix!4500 (LexerInterface!7542 List!47108 List!47106) Option!10083)

(assert (=> d!1248801 (= lt!1507521 (maxPrefix!4500 thiss!21641 rules!2971 longerInput!62))))

(assert (=> d!1248801 (= (lexList!2048 thiss!21641 rules!2971 longerInput!62) lt!1507519)))

(assert (= (and d!1248801 c!721201) b!4245719))

(assert (= (and d!1248801 (not c!721201)) b!4245717))

(assert (= (and d!1248801 c!721200) b!4245715))

(assert (= (and d!1248801 (not c!721200)) b!4245716))

(assert (= (and b!4245715 res!1745492) b!4245718))

(declare-fun m!4830849 () Bool)

(assert (=> b!4245715 m!4830849))

(assert (=> b!4245715 m!4830779))

(declare-fun m!4830851 () Bool)

(assert (=> b!4245718 m!4830851))

(declare-fun m!4830853 () Bool)

(assert (=> b!4245719 m!4830853))

(declare-fun m!4830855 () Bool)

(assert (=> d!1248801 m!4830855))

(declare-fun m!4830857 () Bool)

(assert (=> d!1248801 m!4830857))

(assert (=> b!4245599 d!1248801))

(declare-fun d!1248803 () Bool)

(declare-fun res!1745500 () Bool)

(declare-fun e!2636920 () Bool)

(assert (=> d!1248803 (=> (not res!1745500) (not e!2636920))))

(assert (=> d!1248803 (= res!1745500 (not (isEmpty!27790 (originalCharacters!8291 (h!52403 tokens!592)))))))

(assert (=> d!1248803 (= (inv!61743 (h!52403 tokens!592)) e!2636920)))

(declare-fun b!4245733 () Bool)

(declare-fun res!1745501 () Bool)

(assert (=> b!4245733 (=> (not res!1745501) (not e!2636920))))

(declare-fun list!16931 (BalanceConc!27910) List!47106)

(declare-fun dynLambda!20135 (Int TokenValue!8177) BalanceConc!27910)

(assert (=> b!4245733 (= res!1745501 (= (originalCharacters!8291 (h!52403 tokens!592)) (list!16931 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))))))

(declare-fun b!4245734 () Bool)

(assert (=> b!4245734 (= e!2636920 (= (size!34410 (h!52403 tokens!592)) (size!34411 (originalCharacters!8291 (h!52403 tokens!592)))))))

(assert (= (and d!1248803 res!1745500) b!4245733))

(assert (= (and b!4245733 res!1745501) b!4245734))

(declare-fun b_lambda!125053 () Bool)

(assert (=> (not b_lambda!125053) (not b!4245733)))

(declare-fun t!351687 () Bool)

(declare-fun tb!255759 () Bool)

(assert (=> (and b!4245608 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) t!351687) tb!255759))

(declare-fun b!4245739 () Bool)

(declare-fun e!2636923 () Bool)

(declare-fun tp!1302128 () Bool)

(declare-fun inv!61747 (Conc!14158) Bool)

(assert (=> b!4245739 (= e!2636923 (and (inv!61747 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))) tp!1302128))))

(declare-fun result!311882 () Bool)

(declare-fun inv!61748 (BalanceConc!27910) Bool)

(assert (=> tb!255759 (= result!311882 (and (inv!61748 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))) e!2636923))))

(assert (= tb!255759 b!4245739))

(declare-fun m!4830869 () Bool)

(assert (=> b!4245739 m!4830869))

(declare-fun m!4830871 () Bool)

(assert (=> tb!255759 m!4830871))

(assert (=> b!4245733 t!351687))

(declare-fun b_and!336337 () Bool)

(assert (= b_and!336319 (and (=> t!351687 result!311882) b_and!336337)))

(declare-fun tb!255761 () Bool)

(declare-fun t!351689 () Bool)

(assert (=> (and b!4245597 (= (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) t!351689) tb!255761))

(declare-fun result!311886 () Bool)

(assert (= result!311886 result!311882))

(assert (=> b!4245733 t!351689))

(declare-fun b_and!336339 () Bool)

(assert (= b_and!336323 (and (=> t!351689 result!311886) b_and!336339)))

(declare-fun m!4830873 () Bool)

(assert (=> d!1248803 m!4830873))

(declare-fun m!4830875 () Bool)

(assert (=> b!4245733 m!4830875))

(assert (=> b!4245733 m!4830875))

(declare-fun m!4830877 () Bool)

(assert (=> b!4245733 m!4830877))

(declare-fun m!4830879 () Bool)

(assert (=> b!4245734 m!4830879))

(assert (=> b!4245594 d!1248803))

(declare-fun d!1248807 () Bool)

(assert (=> d!1248807 (= (inv!61740 (tag!8811 (h!52404 rules!2971))) (= (mod (str.len (value!247026 (tag!8811 (h!52404 rules!2971)))) 2) 0))))

(assert (=> b!4245604 d!1248807))

(declare-fun d!1248809 () Bool)

(declare-fun res!1745507 () Bool)

(declare-fun e!2636935 () Bool)

(assert (=> d!1248809 (=> (not res!1745507) (not e!2636935))))

(declare-fun semiInverseModEq!3464 (Int Int) Bool)

(assert (=> d!1248809 (= res!1745507 (semiInverseModEq!3464 (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toValue!10707 (transformation!7947 (h!52404 rules!2971)))))))

(assert (=> d!1248809 (= (inv!61744 (transformation!7947 (h!52404 rules!2971))) e!2636935)))

(declare-fun b!4245757 () Bool)

(declare-fun equivClasses!3363 (Int Int) Bool)

(assert (=> b!4245757 (= e!2636935 (equivClasses!3363 (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toValue!10707 (transformation!7947 (h!52404 rules!2971)))))))

(assert (= (and d!1248809 res!1745507) b!4245757))

(declare-fun m!4830887 () Bool)

(assert (=> d!1248809 m!4830887))

(declare-fun m!4830889 () Bool)

(assert (=> b!4245757 m!4830889))

(assert (=> b!4245604 d!1248809))

(declare-fun d!1248813 () Bool)

(declare-fun res!1745510 () Bool)

(declare-fun e!2636938 () Bool)

(assert (=> d!1248813 (=> (not res!1745510) (not e!2636938))))

(declare-fun rulesValid!3086 (LexerInterface!7542 List!47108) Bool)

(assert (=> d!1248813 (= res!1745510 (rulesValid!3086 thiss!21641 rules!2971))))

(assert (=> d!1248813 (= (rulesInvariant!6653 thiss!21641 rules!2971) e!2636938)))

(declare-fun b!4245760 () Bool)

(declare-datatypes ((List!47113 0))(
  ( (Nil!46989) (Cons!46989 (h!52409 String!54817) (t!351694 List!47113)) )
))
(declare-fun noDuplicateTag!3247 (LexerInterface!7542 List!47108 List!47113) Bool)

(assert (=> b!4245760 (= e!2636938 (noDuplicateTag!3247 thiss!21641 rules!2971 Nil!46989))))

(assert (= (and d!1248813 res!1745510) b!4245760))

(declare-fun m!4830891 () Bool)

(assert (=> d!1248813 m!4830891))

(declare-fun m!4830893 () Bool)

(assert (=> b!4245760 m!4830893))

(assert (=> b!4245607 d!1248813))

(declare-fun d!1248819 () Bool)

(assert (=> d!1248819 true))

(declare-fun lt!1507529 () Bool)

(declare-fun lambda!130178 () Int)

(declare-fun forall!8539 (List!47108 Int) Bool)

(assert (=> d!1248819 (= lt!1507529 (forall!8539 rules!2971 lambda!130178))))

(declare-fun e!2636953 () Bool)

(assert (=> d!1248819 (= lt!1507529 e!2636953)))

(declare-fun res!1745526 () Bool)

(assert (=> d!1248819 (=> res!1745526 e!2636953)))

(assert (=> d!1248819 (= res!1745526 (not (is-Cons!46984 rules!2971)))))

(assert (=> d!1248819 (= (rulesValidInductive!2985 thiss!21641 rules!2971) lt!1507529)))

(declare-fun b!4245775 () Bool)

(declare-fun e!2636954 () Bool)

(assert (=> b!4245775 (= e!2636953 e!2636954)))

(declare-fun res!1745525 () Bool)

(assert (=> b!4245775 (=> (not res!1745525) (not e!2636954))))

(declare-fun ruleValid!3603 (LexerInterface!7542 Rule!15694) Bool)

(assert (=> b!4245775 (= res!1745525 (ruleValid!3603 thiss!21641 (h!52404 rules!2971)))))

(declare-fun b!4245776 () Bool)

(assert (=> b!4245776 (= e!2636954 (rulesValidInductive!2985 thiss!21641 (t!351677 rules!2971)))))

(assert (= (and d!1248819 (not res!1745526)) b!4245775))

(assert (= (and b!4245775 res!1745525) b!4245776))

(declare-fun m!4830903 () Bool)

(assert (=> d!1248819 m!4830903))

(declare-fun m!4830905 () Bool)

(assert (=> b!4245775 m!4830905))

(declare-fun m!4830907 () Bool)

(assert (=> b!4245776 m!4830907))

(assert (=> b!4245602 d!1248819))

(declare-fun d!1248825 () Bool)

(assert (=> d!1248825 (= (inv!61740 (tag!8811 (rule!11077 (h!52403 tokens!592)))) (= (mod (str.len (value!247026 (tag!8811 (rule!11077 (h!52403 tokens!592))))) 2) 0))))

(assert (=> b!4245596 d!1248825))

(declare-fun d!1248827 () Bool)

(declare-fun res!1745527 () Bool)

(declare-fun e!2636955 () Bool)

(assert (=> d!1248827 (=> (not res!1745527) (not e!2636955))))

(assert (=> d!1248827 (= res!1745527 (semiInverseModEq!3464 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592))))))))

(assert (=> d!1248827 (= (inv!61744 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) e!2636955)))

(declare-fun b!4245779 () Bool)

(assert (=> b!4245779 (= e!2636955 (equivClasses!3363 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592))))))))

(assert (= (and d!1248827 res!1745527) b!4245779))

(declare-fun m!4830909 () Bool)

(assert (=> d!1248827 m!4830909))

(declare-fun m!4830911 () Bool)

(assert (=> b!4245779 m!4830911))

(assert (=> b!4245596 d!1248827))

(declare-fun b!4245784 () Bool)

(declare-fun e!2636958 () Bool)

(declare-fun tp!1302131 () Bool)

(assert (=> b!4245784 (= e!2636958 (and tp_is_empty!22695 tp!1302131))))

(assert (=> b!4245606 (= tp!1302083 e!2636958)))

(assert (= (and b!4245606 (is-Cons!46982 (originalCharacters!8291 (h!52403 tokens!592)))) b!4245784))

(declare-fun b!4245798 () Bool)

(declare-fun b_free!126011 () Bool)

(declare-fun b_next!126715 () Bool)

(assert (=> b!4245798 (= b_free!126011 (not b_next!126715))))

(declare-fun tp!1302142 () Bool)

(declare-fun b_and!336341 () Bool)

(assert (=> b!4245798 (= tp!1302142 b_and!336341)))

(declare-fun b_free!126013 () Bool)

(declare-fun b_next!126717 () Bool)

(assert (=> b!4245798 (= b_free!126013 (not b_next!126717))))

(declare-fun t!351691 () Bool)

(declare-fun tb!255763 () Bool)

(assert (=> (and b!4245798 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) t!351691) tb!255763))

(declare-fun result!311892 () Bool)

(assert (= result!311892 result!311882))

(assert (=> b!4245733 t!351691))

(declare-fun b_and!336343 () Bool)

(declare-fun tp!1302143 () Bool)

(assert (=> b!4245798 (= tp!1302143 (and (=> t!351691 result!311892) b_and!336343))))

(declare-fun e!2636972 () Bool)

(declare-fun tp!1302145 () Bool)

(declare-fun b!4245796 () Bool)

(declare-fun e!2636976 () Bool)

(assert (=> b!4245796 (= e!2636972 (and (inv!21 (value!247027 (h!52403 (t!351676 tokens!592)))) e!2636976 tp!1302145))))

(declare-fun tp!1302144 () Bool)

(declare-fun b!4245795 () Bool)

(declare-fun e!2636975 () Bool)

(assert (=> b!4245795 (= e!2636975 (and (inv!61743 (h!52403 (t!351676 tokens!592))) e!2636972 tp!1302144))))

(declare-fun tp!1302146 () Bool)

(declare-fun b!4245797 () Bool)

(declare-fun e!2636974 () Bool)

(assert (=> b!4245797 (= e!2636976 (and tp!1302146 (inv!61740 (tag!8811 (rule!11077 (h!52403 (t!351676 tokens!592))))) (inv!61744 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) e!2636974))))

(assert (=> b!4245594 (= tp!1302077 e!2636975)))

(assert (=> b!4245798 (= e!2636974 (and tp!1302142 tp!1302143))))

(assert (= b!4245797 b!4245798))

(assert (= b!4245796 b!4245797))

(assert (= b!4245795 b!4245796))

(assert (= (and b!4245594 (is-Cons!46983 (t!351676 tokens!592))) b!4245795))

(declare-fun m!4830913 () Bool)

(assert (=> b!4245796 m!4830913))

(declare-fun m!4830915 () Bool)

(assert (=> b!4245795 m!4830915))

(declare-fun m!4830917 () Bool)

(assert (=> b!4245797 m!4830917))

(declare-fun m!4830919 () Bool)

(assert (=> b!4245797 m!4830919))

(declare-fun b!4245809 () Bool)

(declare-fun b_free!126015 () Bool)

(declare-fun b_next!126719 () Bool)

(assert (=> b!4245809 (= b_free!126015 (not b_next!126719))))

(declare-fun tp!1302157 () Bool)

(declare-fun b_and!336345 () Bool)

(assert (=> b!4245809 (= tp!1302157 b_and!336345)))

(declare-fun b_free!126017 () Bool)

(declare-fun b_next!126721 () Bool)

(assert (=> b!4245809 (= b_free!126017 (not b_next!126721))))

(declare-fun t!351693 () Bool)

(declare-fun tb!255765 () Bool)

(assert (=> (and b!4245809 (= (toChars!10566 (transformation!7947 (h!52404 (t!351677 rules!2971)))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) t!351693) tb!255765))

(declare-fun result!311896 () Bool)

(assert (= result!311896 result!311882))

(assert (=> b!4245733 t!351693))

(declare-fun tp!1302155 () Bool)

(declare-fun b_and!336347 () Bool)

(assert (=> b!4245809 (= tp!1302155 (and (=> t!351693 result!311896) b_and!336347))))

(declare-fun e!2636986 () Bool)

(assert (=> b!4245809 (= e!2636986 (and tp!1302157 tp!1302155))))

(declare-fun e!2636988 () Bool)

(declare-fun tp!1302156 () Bool)

(declare-fun b!4245808 () Bool)

(assert (=> b!4245808 (= e!2636988 (and tp!1302156 (inv!61740 (tag!8811 (h!52404 (t!351677 rules!2971)))) (inv!61744 (transformation!7947 (h!52404 (t!351677 rules!2971)))) e!2636986))))

(declare-fun b!4245807 () Bool)

(declare-fun e!2636987 () Bool)

(declare-fun tp!1302158 () Bool)

(assert (=> b!4245807 (= e!2636987 (and e!2636988 tp!1302158))))

(assert (=> b!4245593 (= tp!1302075 e!2636987)))

(assert (= b!4245808 b!4245809))

(assert (= b!4245807 b!4245808))

(assert (= (and b!4245593 (is-Cons!46984 (t!351677 rules!2971))) b!4245807))

(declare-fun m!4830921 () Bool)

(assert (=> b!4245808 m!4830921))

(declare-fun m!4830923 () Bool)

(assert (=> b!4245808 m!4830923))

(declare-fun b!4245821 () Bool)

(declare-fun e!2636991 () Bool)

(declare-fun tp!1302172 () Bool)

(declare-fun tp!1302173 () Bool)

(assert (=> b!4245821 (= e!2636991 (and tp!1302172 tp!1302173))))

(declare-fun b!4245823 () Bool)

(declare-fun tp!1302170 () Bool)

(declare-fun tp!1302171 () Bool)

(assert (=> b!4245823 (= e!2636991 (and tp!1302170 tp!1302171))))

(declare-fun b!4245820 () Bool)

(assert (=> b!4245820 (= e!2636991 tp_is_empty!22695)))

(declare-fun b!4245822 () Bool)

(declare-fun tp!1302169 () Bool)

(assert (=> b!4245822 (= e!2636991 tp!1302169)))

(assert (=> b!4245604 (= tp!1302084 e!2636991)))

(assert (= (and b!4245604 (is-ElementMatch!12852 (regex!7947 (h!52404 rules!2971)))) b!4245820))

(assert (= (and b!4245604 (is-Concat!21030 (regex!7947 (h!52404 rules!2971)))) b!4245821))

(assert (= (and b!4245604 (is-Star!12852 (regex!7947 (h!52404 rules!2971)))) b!4245822))

(assert (= (and b!4245604 (is-Union!12852 (regex!7947 (h!52404 rules!2971)))) b!4245823))

(declare-fun b!4245824 () Bool)

(declare-fun e!2636992 () Bool)

(declare-fun tp!1302174 () Bool)

(assert (=> b!4245824 (= e!2636992 (and tp_is_empty!22695 tp!1302174))))

(assert (=> b!4245603 (= tp!1302079 e!2636992)))

(assert (= (and b!4245603 (is-Cons!46982 (t!351675 suffix!1284))) b!4245824))

(declare-fun b!4245825 () Bool)

(declare-fun e!2636993 () Bool)

(declare-fun tp!1302175 () Bool)

(assert (=> b!4245825 (= e!2636993 (and tp_is_empty!22695 tp!1302175))))

(assert (=> b!4245598 (= tp!1302082 e!2636993)))

(assert (= (and b!4245598 (is-Cons!46982 (t!351675 shorterInput!62))) b!4245825))

(declare-fun b!4245826 () Bool)

(declare-fun e!2636994 () Bool)

(declare-fun tp!1302176 () Bool)

(assert (=> b!4245826 (= e!2636994 (and tp_is_empty!22695 tp!1302176))))

(assert (=> b!4245601 (= tp!1302076 e!2636994)))

(assert (= (and b!4245601 (is-Cons!46982 (t!351675 longerInput!62))) b!4245826))

(declare-fun b!4245828 () Bool)

(declare-fun e!2636995 () Bool)

(declare-fun tp!1302180 () Bool)

(declare-fun tp!1302181 () Bool)

(assert (=> b!4245828 (= e!2636995 (and tp!1302180 tp!1302181))))

(declare-fun b!4245830 () Bool)

(declare-fun tp!1302178 () Bool)

(declare-fun tp!1302179 () Bool)

(assert (=> b!4245830 (= e!2636995 (and tp!1302178 tp!1302179))))

(declare-fun b!4245827 () Bool)

(assert (=> b!4245827 (= e!2636995 tp_is_empty!22695)))

(declare-fun b!4245829 () Bool)

(declare-fun tp!1302177 () Bool)

(assert (=> b!4245829 (= e!2636995 tp!1302177)))

(assert (=> b!4245596 (= tp!1302085 e!2636995)))

(assert (= (and b!4245596 (is-ElementMatch!12852 (regex!7947 (rule!11077 (h!52403 tokens!592))))) b!4245827))

(assert (= (and b!4245596 (is-Concat!21030 (regex!7947 (rule!11077 (h!52403 tokens!592))))) b!4245828))

(assert (= (and b!4245596 (is-Star!12852 (regex!7947 (rule!11077 (h!52403 tokens!592))))) b!4245829))

(assert (= (and b!4245596 (is-Union!12852 (regex!7947 (rule!11077 (h!52403 tokens!592))))) b!4245830))

(declare-fun b_lambda!125055 () Bool)

(assert (= b_lambda!125053 (or (and b!4245608 b_free!125997) (and b!4245597 b_free!126001 (= (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))))) (and b!4245798 b_free!126013 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))))) (and b!4245809 b_free!126017 (= (toChars!10566 (transformation!7947 (h!52404 (t!351677 rules!2971)))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))))) b_lambda!125055)))

(push 1)

(assert (not b!4245797))

(assert (not b!4245694))

(assert (not b!4245826))

(assert (not b!4245821))

(assert (not d!1248813))

(assert tp_is_empty!22695)

(assert (not d!1248827))

(assert (not b_next!126705))

(assert (not b!4245715))

(assert (not d!1248801))

(assert (not b!4245760))

(assert (not d!1248803))

(assert (not b!4245757))

(assert (not b_next!126717))

(assert b_and!336347)

(assert (not b_next!126699))

(assert (not b!4245830))

(assert (not b!4245718))

(assert (not b_next!126703))

(assert (not b!4245822))

(assert (not b!4245784))

(assert (not b_lambda!125055))

(assert b_and!336337)

(assert b_and!336341)

(assert b_and!336343)

(assert (not b!4245796))

(assert b_and!336321)

(assert b_and!336345)

(assert (not b_next!126719))

(assert b_and!336317)

(assert (not b!4245829))

(assert (not d!1248809))

(assert (not b!4245733))

(assert (not b!4245739))

(assert (not b!4245807))

(assert (not d!1248819))

(assert (not b_next!126715))

(assert (not b!4245775))

(assert (not b!4245734))

(assert (not b!4245668))

(assert (not b_next!126721))

(assert (not b!4245719))

(assert (not b!4245808))

(assert (not b_next!126701))

(assert (not b!4245779))

(assert (not b!4245828))

(assert (not b!4245824))

(assert (not b!4245666))

(assert (not b!4245776))

(assert b_and!336339)

(assert (not b!4245795))

(assert (not tb!255759))

(assert (not b!4245825))

(assert (not b!4245690))

(assert (not b!4245691))

(assert (not b!4245823))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126699))

(assert (not b_next!126703))

(assert b_and!336317)

(assert (not b_next!126715))

(assert (not b_next!126721))

(assert (not b_next!126701))

(assert (not b_next!126705))

(assert b_and!336339)

(assert (not b_next!126717))

(assert b_and!336347)

(assert b_and!336337)

(assert b_and!336341)

(assert b_and!336343)

(assert b_and!336321)

(assert b_and!336345)

(assert (not b_next!126719))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4245887 () Bool)

(declare-fun e!2637040 () Bool)

(assert (=> b!4245887 (= e!2637040 (inv!16 (value!247027 (h!52403 (t!351676 tokens!592)))))))

(declare-fun d!1248833 () Bool)

(declare-fun c!721212 () Bool)

(assert (=> d!1248833 (= c!721212 (is-IntegerValue!24531 (value!247027 (h!52403 (t!351676 tokens!592)))))))

(assert (=> d!1248833 (= (inv!21 (value!247027 (h!52403 (t!351676 tokens!592)))) e!2637040)))

(declare-fun b!4245888 () Bool)

(declare-fun e!2637041 () Bool)

(assert (=> b!4245888 (= e!2637041 (inv!15 (value!247027 (h!52403 (t!351676 tokens!592)))))))

(declare-fun b!4245889 () Bool)

(declare-fun e!2637039 () Bool)

(assert (=> b!4245889 (= e!2637040 e!2637039)))

(declare-fun c!721213 () Bool)

(assert (=> b!4245889 (= c!721213 (is-IntegerValue!24532 (value!247027 (h!52403 (t!351676 tokens!592)))))))

(declare-fun b!4245890 () Bool)

(declare-fun res!1745532 () Bool)

(assert (=> b!4245890 (=> res!1745532 e!2637041)))

(assert (=> b!4245890 (= res!1745532 (not (is-IntegerValue!24533 (value!247027 (h!52403 (t!351676 tokens!592))))))))

(assert (=> b!4245890 (= e!2637039 e!2637041)))

(declare-fun b!4245891 () Bool)

(assert (=> b!4245891 (= e!2637039 (inv!17 (value!247027 (h!52403 (t!351676 tokens!592)))))))

(assert (= (and d!1248833 c!721212) b!4245887))

(assert (= (and d!1248833 (not c!721212)) b!4245889))

(assert (= (and b!4245889 c!721213) b!4245891))

(assert (= (and b!4245889 (not c!721213)) b!4245890))

(assert (= (and b!4245890 (not res!1745532)) b!4245888))

(declare-fun m!4830947 () Bool)

(assert (=> b!4245887 m!4830947))

(declare-fun m!4830949 () Bool)

(assert (=> b!4245888 m!4830949))

(declare-fun m!4830951 () Bool)

(assert (=> b!4245891 m!4830951))

(assert (=> b!4245796 d!1248833))

(declare-fun d!1248835 () Bool)

(assert (=> d!1248835 (= (inv!61740 (tag!8811 (rule!11077 (h!52403 (t!351676 tokens!592))))) (= (mod (str.len (value!247026 (tag!8811 (rule!11077 (h!52403 (t!351676 tokens!592)))))) 2) 0))))

(assert (=> b!4245797 d!1248835))

(declare-fun d!1248837 () Bool)

(declare-fun res!1745533 () Bool)

(declare-fun e!2637042 () Bool)

(assert (=> d!1248837 (=> (not res!1745533) (not e!2637042))))

(assert (=> d!1248837 (= res!1745533 (semiInverseModEq!3464 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (toValue!10707 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))))))

(assert (=> d!1248837 (= (inv!61744 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) e!2637042)))

(declare-fun b!4245892 () Bool)

(assert (=> b!4245892 (= e!2637042 (equivClasses!3363 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (toValue!10707 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))))))

(assert (= (and d!1248837 res!1745533) b!4245892))

(declare-fun m!4830953 () Bool)

(assert (=> d!1248837 m!4830953))

(declare-fun m!4830955 () Bool)

(assert (=> b!4245892 m!4830955))

(assert (=> b!4245797 d!1248837))

(declare-fun d!1248839 () Bool)

(declare-fun res!1745534 () Bool)

(declare-fun e!2637043 () Bool)

(assert (=> d!1248839 (=> (not res!1745534) (not e!2637043))))

(assert (=> d!1248839 (= res!1745534 (not (isEmpty!27790 (originalCharacters!8291 (h!52403 (t!351676 tokens!592))))))))

(assert (=> d!1248839 (= (inv!61743 (h!52403 (t!351676 tokens!592))) e!2637043)))

(declare-fun b!4245893 () Bool)

(declare-fun res!1745535 () Bool)

(assert (=> b!4245893 (=> (not res!1745535) (not e!2637043))))

(assert (=> b!4245893 (= res!1745535 (= (originalCharacters!8291 (h!52403 (t!351676 tokens!592))) (list!16931 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (value!247027 (h!52403 (t!351676 tokens!592)))))))))

(declare-fun b!4245894 () Bool)

(assert (=> b!4245894 (= e!2637043 (= (size!34410 (h!52403 (t!351676 tokens!592))) (size!34411 (originalCharacters!8291 (h!52403 (t!351676 tokens!592))))))))

(assert (= (and d!1248839 res!1745534) b!4245893))

(assert (= (and b!4245893 res!1745535) b!4245894))

(declare-fun b_lambda!125059 () Bool)

(assert (=> (not b_lambda!125059) (not b!4245893)))

(declare-fun t!351701 () Bool)

(declare-fun tb!255771 () Bool)

(assert (=> (and b!4245608 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) t!351701) tb!255771))

(declare-fun b!4245895 () Bool)

(declare-fun e!2637044 () Bool)

(declare-fun tp!1302235 () Bool)

(assert (=> b!4245895 (= e!2637044 (and (inv!61747 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (value!247027 (h!52403 (t!351676 tokens!592)))))) tp!1302235))))

(declare-fun result!311912 () Bool)

(assert (=> tb!255771 (= result!311912 (and (inv!61748 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (value!247027 (h!52403 (t!351676 tokens!592))))) e!2637044))))

(assert (= tb!255771 b!4245895))

(declare-fun m!4830957 () Bool)

(assert (=> b!4245895 m!4830957))

(declare-fun m!4830959 () Bool)

(assert (=> tb!255771 m!4830959))

(assert (=> b!4245893 t!351701))

(declare-fun b_and!336357 () Bool)

(assert (= b_and!336337 (and (=> t!351701 result!311912) b_and!336357)))

(declare-fun tb!255773 () Bool)

(declare-fun t!351703 () Bool)

(assert (=> (and b!4245597 (= (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) t!351703) tb!255773))

(declare-fun result!311914 () Bool)

(assert (= result!311914 result!311912))

(assert (=> b!4245893 t!351703))

(declare-fun b_and!336359 () Bool)

(assert (= b_and!336339 (and (=> t!351703 result!311914) b_and!336359)))

(declare-fun t!351705 () Bool)

(declare-fun tb!255775 () Bool)

(assert (=> (and b!4245798 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) t!351705) tb!255775))

(declare-fun result!311916 () Bool)

(assert (= result!311916 result!311912))

(assert (=> b!4245893 t!351705))

(declare-fun b_and!336361 () Bool)

(assert (= b_and!336343 (and (=> t!351705 result!311916) b_and!336361)))

(declare-fun t!351707 () Bool)

(declare-fun tb!255777 () Bool)

(assert (=> (and b!4245809 (= (toChars!10566 (transformation!7947 (h!52404 (t!351677 rules!2971)))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) t!351707) tb!255777))

(declare-fun result!311918 () Bool)

(assert (= result!311918 result!311912))

(assert (=> b!4245893 t!351707))

(declare-fun b_and!336363 () Bool)

(assert (= b_and!336347 (and (=> t!351707 result!311918) b_and!336363)))

(declare-fun m!4830961 () Bool)

(assert (=> d!1248839 m!4830961))

(declare-fun m!4830963 () Bool)

(assert (=> b!4245893 m!4830963))

(assert (=> b!4245893 m!4830963))

(declare-fun m!4830965 () Bool)

(assert (=> b!4245893 m!4830965))

(declare-fun m!4830967 () Bool)

(assert (=> b!4245894 m!4830967))

(assert (=> b!4245795 d!1248839))

(declare-fun d!1248841 () Bool)

(assert (=> d!1248841 true))

(declare-fun lambda!130184 () Int)

(declare-fun order!24707 () Int)

(declare-fun order!24709 () Int)

(declare-fun dynLambda!20137 (Int Int) Int)

(declare-fun dynLambda!20138 (Int Int) Int)

(assert (=> d!1248841 (< (dynLambda!20137 order!24707 (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) (dynLambda!20138 order!24709 lambda!130184))))

(declare-fun Forall2!1198 (Int) Bool)

(assert (=> d!1248841 (= (equivClasses!3363 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) (Forall2!1198 lambda!130184))))

(declare-fun bs!598474 () Bool)

(assert (= bs!598474 d!1248841))

(declare-fun m!4830969 () Bool)

(assert (=> bs!598474 m!4830969))

(assert (=> b!4245779 d!1248841))

(declare-fun d!1248843 () Bool)

(declare-fun res!1745542 () Bool)

(declare-fun e!2637051 () Bool)

(assert (=> d!1248843 (=> res!1745542 e!2637051)))

(assert (=> d!1248843 (= res!1745542 (is-Nil!46984 rules!2971))))

(assert (=> d!1248843 (= (noDuplicateTag!3247 thiss!21641 rules!2971 Nil!46989) e!2637051)))

(declare-fun b!4245904 () Bool)

(declare-fun e!2637052 () Bool)

(assert (=> b!4245904 (= e!2637051 e!2637052)))

(declare-fun res!1745543 () Bool)

(assert (=> b!4245904 (=> (not res!1745543) (not e!2637052))))

(declare-fun contains!9742 (List!47113 String!54817) Bool)

(assert (=> b!4245904 (= res!1745543 (not (contains!9742 Nil!46989 (tag!8811 (h!52404 rules!2971)))))))

(declare-fun b!4245905 () Bool)

(assert (=> b!4245905 (= e!2637052 (noDuplicateTag!3247 thiss!21641 (t!351677 rules!2971) (Cons!46989 (tag!8811 (h!52404 rules!2971)) Nil!46989)))))

(assert (= (and d!1248843 (not res!1745542)) b!4245904))

(assert (= (and b!4245904 res!1745543) b!4245905))

(declare-fun m!4830971 () Bool)

(assert (=> b!4245904 m!4830971))

(declare-fun m!4830973 () Bool)

(assert (=> b!4245905 m!4830973))

(assert (=> b!4245760 d!1248843))

(declare-fun d!1248845 () Bool)

(declare-fun lt!1507531 () Int)

(assert (=> d!1248845 (>= lt!1507531 0)))

(declare-fun e!2637053 () Int)

(assert (=> d!1248845 (= lt!1507531 e!2637053)))

(declare-fun c!721214 () Bool)

(assert (=> d!1248845 (= c!721214 (is-Nil!46982 (originalCharacters!8291 (h!52403 tokens!592))))))

(assert (=> d!1248845 (= (size!34411 (originalCharacters!8291 (h!52403 tokens!592))) lt!1507531)))

(declare-fun b!4245906 () Bool)

(assert (=> b!4245906 (= e!2637053 0)))

(declare-fun b!4245907 () Bool)

(assert (=> b!4245907 (= e!2637053 (+ 1 (size!34411 (t!351675 (originalCharacters!8291 (h!52403 tokens!592))))))))

(assert (= (and d!1248845 c!721214) b!4245906))

(assert (= (and d!1248845 (not c!721214)) b!4245907))

(declare-fun m!4830975 () Bool)

(assert (=> b!4245907 m!4830975))

(assert (=> b!4245734 d!1248845))

(declare-fun d!1248847 () Bool)

(assert (=> d!1248847 true))

(declare-fun order!24713 () Int)

(declare-fun order!24711 () Int)

(declare-fun lambda!130187 () Int)

(declare-fun dynLambda!20139 (Int Int) Int)

(declare-fun dynLambda!20140 (Int Int) Int)

(assert (=> d!1248847 (< (dynLambda!20139 order!24711 (toChars!10566 (transformation!7947 (h!52404 rules!2971)))) (dynLambda!20140 order!24713 lambda!130187))))

(assert (=> d!1248847 true))

(assert (=> d!1248847 (< (dynLambda!20137 order!24707 (toValue!10707 (transformation!7947 (h!52404 rules!2971)))) (dynLambda!20140 order!24713 lambda!130187))))

(declare-fun Forall!1599 (Int) Bool)

(assert (=> d!1248847 (= (semiInverseModEq!3464 (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toValue!10707 (transformation!7947 (h!52404 rules!2971)))) (Forall!1599 lambda!130187))))

(declare-fun bs!598475 () Bool)

(assert (= bs!598475 d!1248847))

(declare-fun m!4830977 () Bool)

(assert (=> bs!598475 m!4830977))

(assert (=> d!1248809 d!1248847))

(declare-fun bs!598476 () Bool)

(declare-fun d!1248849 () Bool)

(assert (= bs!598476 (and d!1248849 d!1248819)))

(declare-fun lambda!130190 () Int)

(assert (=> bs!598476 (= lambda!130190 lambda!130178)))

(assert (=> d!1248849 true))

(declare-fun lt!1507534 () Bool)

(assert (=> d!1248849 (= lt!1507534 (rulesValidInductive!2985 thiss!21641 rules!2971))))

(assert (=> d!1248849 (= lt!1507534 (forall!8539 rules!2971 lambda!130190))))

(assert (=> d!1248849 (= (rulesValid!3086 thiss!21641 rules!2971) lt!1507534)))

(declare-fun bs!598477 () Bool)

(assert (= bs!598477 d!1248849))

(assert (=> bs!598477 m!4830771))

(declare-fun m!4830979 () Bool)

(assert (=> bs!598477 m!4830979))

(assert (=> d!1248813 d!1248849))

(declare-fun d!1248851 () Bool)

(declare-fun list!16933 (Conc!14158) List!47106)

(assert (=> d!1248851 (= (list!16931 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))) (list!16933 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))))))

(declare-fun bs!598478 () Bool)

(assert (= bs!598478 d!1248851))

(declare-fun m!4830981 () Bool)

(assert (=> bs!598478 m!4830981))

(assert (=> b!4245733 d!1248851))

(declare-fun d!1248853 () Bool)

(assert (=> d!1248853 (= (inv!61740 (tag!8811 (h!52404 (t!351677 rules!2971)))) (= (mod (str.len (value!247026 (tag!8811 (h!52404 (t!351677 rules!2971))))) 2) 0))))

(assert (=> b!4245808 d!1248853))

(declare-fun d!1248855 () Bool)

(declare-fun res!1745544 () Bool)

(declare-fun e!2637054 () Bool)

(assert (=> d!1248855 (=> (not res!1745544) (not e!2637054))))

(assert (=> d!1248855 (= res!1745544 (semiInverseModEq!3464 (toChars!10566 (transformation!7947 (h!52404 (t!351677 rules!2971)))) (toValue!10707 (transformation!7947 (h!52404 (t!351677 rules!2971))))))))

(assert (=> d!1248855 (= (inv!61744 (transformation!7947 (h!52404 (t!351677 rules!2971)))) e!2637054)))

(declare-fun b!4245912 () Bool)

(assert (=> b!4245912 (= e!2637054 (equivClasses!3363 (toChars!10566 (transformation!7947 (h!52404 (t!351677 rules!2971)))) (toValue!10707 (transformation!7947 (h!52404 (t!351677 rules!2971))))))))

(assert (= (and d!1248855 res!1745544) b!4245912))

(declare-fun m!4830983 () Bool)

(assert (=> d!1248855 m!4830983))

(declare-fun m!4830985 () Bool)

(assert (=> b!4245912 m!4830985))

(assert (=> b!4245808 d!1248855))

(declare-fun d!1248857 () Bool)

(declare-fun charsToBigInt!0 (List!47105 Int) Int)

(assert (=> d!1248857 (= (inv!15 (value!247027 (h!52403 tokens!592))) (= (charsToBigInt!0 (text!57688 (value!247027 (h!52403 tokens!592))) 0) (value!247022 (value!247027 (h!52403 tokens!592)))))))

(declare-fun bs!598479 () Bool)

(assert (= bs!598479 d!1248857))

(declare-fun m!4830987 () Bool)

(assert (=> bs!598479 m!4830987))

(assert (=> b!4245691 d!1248857))

(declare-fun b!4245913 () Bool)

(declare-fun e!2637056 () Bool)

(declare-fun e!2637055 () Bool)

(assert (=> b!4245913 (= e!2637056 e!2637055)))

(declare-fun res!1745545 () Bool)

(declare-fun lt!1507535 () tuple2!44550)

(assert (=> b!4245913 (= res!1745545 (< (size!34411 (_2!25409 lt!1507535)) (size!34411 (_2!25411 (v!41036 lt!1507521)))))))

(assert (=> b!4245913 (=> (not res!1745545) (not e!2637055))))

(declare-fun b!4245914 () Bool)

(assert (=> b!4245914 (= e!2637056 (= (_2!25409 lt!1507535) (_2!25411 (v!41036 lt!1507521))))))

(declare-fun b!4245915 () Bool)

(declare-fun e!2637057 () tuple2!44550)

(assert (=> b!4245915 (= e!2637057 (tuple2!44551 Nil!46983 (_2!25411 (v!41036 lt!1507521))))))

(declare-fun b!4245916 () Bool)

(assert (=> b!4245916 (= e!2637055 (not (isEmpty!27794 (_1!25409 lt!1507535))))))

(declare-fun b!4245917 () Bool)

(declare-fun lt!1507537 () Option!10083)

(declare-fun lt!1507536 () tuple2!44550)

(assert (=> b!4245917 (= e!2637057 (tuple2!44551 (Cons!46983 (_1!25411 (v!41036 lt!1507537)) (_1!25409 lt!1507536)) (_2!25409 lt!1507536)))))

(assert (=> b!4245917 (= lt!1507536 (lexList!2048 thiss!21641 rules!2971 (_2!25411 (v!41036 lt!1507537))))))

(declare-fun d!1248859 () Bool)

(assert (=> d!1248859 e!2637056))

(declare-fun c!721215 () Bool)

(assert (=> d!1248859 (= c!721215 (> (size!34414 (_1!25409 lt!1507535)) 0))))

(assert (=> d!1248859 (= lt!1507535 e!2637057)))

(declare-fun c!721216 () Bool)

(assert (=> d!1248859 (= c!721216 (is-Some!10082 lt!1507537))))

(assert (=> d!1248859 (= lt!1507537 (maxPrefix!4500 thiss!21641 rules!2971 (_2!25411 (v!41036 lt!1507521))))))

(assert (=> d!1248859 (= (lexList!2048 thiss!21641 rules!2971 (_2!25411 (v!41036 lt!1507521))) lt!1507535)))

(assert (= (and d!1248859 c!721216) b!4245917))

(assert (= (and d!1248859 (not c!721216)) b!4245915))

(assert (= (and d!1248859 c!721215) b!4245913))

(assert (= (and d!1248859 (not c!721215)) b!4245914))

(assert (= (and b!4245913 res!1745545) b!4245916))

(declare-fun m!4830989 () Bool)

(assert (=> b!4245913 m!4830989))

(declare-fun m!4830991 () Bool)

(assert (=> b!4245913 m!4830991))

(declare-fun m!4830993 () Bool)

(assert (=> b!4245916 m!4830993))

(declare-fun m!4830995 () Bool)

(assert (=> b!4245917 m!4830995))

(declare-fun m!4830997 () Bool)

(assert (=> d!1248859 m!4830997))

(declare-fun m!4830999 () Bool)

(assert (=> d!1248859 m!4830999))

(assert (=> b!4245719 d!1248859))

(declare-fun d!1248861 () Bool)

(assert (=> d!1248861 (= (isEmpty!27794 (_1!25409 lt!1507519)) (is-Nil!46983 (_1!25409 lt!1507519)))))

(assert (=> b!4245718 d!1248861))

(declare-fun d!1248863 () Bool)

(declare-fun charsToInt!0 (List!47105) (_ BitVec 32))

(assert (=> d!1248863 (= (inv!16 (value!247027 (h!52403 tokens!592))) (= (charsToInt!0 (text!57686 (value!247027 (h!52403 tokens!592)))) (value!247018 (value!247027 (h!52403 tokens!592)))))))

(declare-fun bs!598480 () Bool)

(assert (= bs!598480 d!1248863))

(declare-fun m!4831001 () Bool)

(assert (=> bs!598480 m!4831001))

(assert (=> b!4245690 d!1248863))

(declare-fun d!1248865 () Bool)

(declare-fun res!1745550 () Bool)

(declare-fun e!2637062 () Bool)

(assert (=> d!1248865 (=> res!1745550 e!2637062)))

(assert (=> d!1248865 (= res!1745550 (is-Nil!46984 rules!2971))))

(assert (=> d!1248865 (= (forall!8539 rules!2971 lambda!130178) e!2637062)))

(declare-fun b!4245922 () Bool)

(declare-fun e!2637063 () Bool)

(assert (=> b!4245922 (= e!2637062 e!2637063)))

(declare-fun res!1745551 () Bool)

(assert (=> b!4245922 (=> (not res!1745551) (not e!2637063))))

(declare-fun dynLambda!20141 (Int Rule!15694) Bool)

(assert (=> b!4245922 (= res!1745551 (dynLambda!20141 lambda!130178 (h!52404 rules!2971)))))

(declare-fun b!4245923 () Bool)

(assert (=> b!4245923 (= e!2637063 (forall!8539 (t!351677 rules!2971) lambda!130178))))

(assert (= (and d!1248865 (not res!1745550)) b!4245922))

(assert (= (and b!4245922 res!1745551) b!4245923))

(declare-fun b_lambda!125061 () Bool)

(assert (=> (not b_lambda!125061) (not b!4245922)))

(declare-fun m!4831003 () Bool)

(assert (=> b!4245922 m!4831003))

(declare-fun m!4831005 () Bool)

(assert (=> b!4245923 m!4831005))

(assert (=> d!1248819 d!1248865))

(declare-fun d!1248867 () Bool)

(declare-fun lt!1507538 () Int)

(assert (=> d!1248867 (>= lt!1507538 0)))

(declare-fun e!2637064 () Int)

(assert (=> d!1248867 (= lt!1507538 e!2637064)))

(declare-fun c!721217 () Bool)

(assert (=> d!1248867 (= c!721217 (is-Nil!46982 (t!351675 longerInput!62)))))

(assert (=> d!1248867 (= (size!34411 (t!351675 longerInput!62)) lt!1507538)))

(declare-fun b!4245924 () Bool)

(assert (=> b!4245924 (= e!2637064 0)))

(declare-fun b!4245925 () Bool)

(assert (=> b!4245925 (= e!2637064 (+ 1 (size!34411 (t!351675 (t!351675 longerInput!62)))))))

(assert (= (and d!1248867 c!721217) b!4245924))

(assert (= (and d!1248867 (not c!721217)) b!4245925))

(declare-fun m!4831007 () Bool)

(assert (=> b!4245925 m!4831007))

(assert (=> b!4245666 d!1248867))

(declare-fun d!1248869 () Bool)

(declare-fun lt!1507539 () Int)

(assert (=> d!1248869 (>= lt!1507539 0)))

(declare-fun e!2637065 () Int)

(assert (=> d!1248869 (= lt!1507539 e!2637065)))

(declare-fun c!721218 () Bool)

(assert (=> d!1248869 (= c!721218 (is-Nil!46982 (_2!25409 lt!1507519)))))

(assert (=> d!1248869 (= (size!34411 (_2!25409 lt!1507519)) lt!1507539)))

(declare-fun b!4245926 () Bool)

(assert (=> b!4245926 (= e!2637065 0)))

(declare-fun b!4245927 () Bool)

(assert (=> b!4245927 (= e!2637065 (+ 1 (size!34411 (t!351675 (_2!25409 lt!1507519)))))))

(assert (= (and d!1248869 c!721218) b!4245926))

(assert (= (and d!1248869 (not c!721218)) b!4245927))

(declare-fun m!4831009 () Bool)

(assert (=> b!4245927 m!4831009))

(assert (=> b!4245715 d!1248869))

(assert (=> b!4245715 d!1248785))

(declare-fun d!1248871 () Bool)

(declare-fun lt!1507542 () Int)

(assert (=> d!1248871 (>= lt!1507542 0)))

(declare-fun e!2637068 () Int)

(assert (=> d!1248871 (= lt!1507542 e!2637068)))

(declare-fun c!721221 () Bool)

(assert (=> d!1248871 (= c!721221 (is-Nil!46983 (_1!25409 lt!1507519)))))

(assert (=> d!1248871 (= (size!34414 (_1!25409 lt!1507519)) lt!1507542)))

(declare-fun b!4245932 () Bool)

(assert (=> b!4245932 (= e!2637068 0)))

(declare-fun b!4245933 () Bool)

(assert (=> b!4245933 (= e!2637068 (+ 1 (size!34414 (t!351676 (_1!25409 lt!1507519)))))))

(assert (= (and d!1248871 c!721221) b!4245932))

(assert (= (and d!1248871 (not c!721221)) b!4245933))

(declare-fun m!4831011 () Bool)

(assert (=> b!4245933 m!4831011))

(assert (=> d!1248801 d!1248871))

(declare-fun b!4245952 () Bool)

(declare-fun res!1745567 () Bool)

(declare-fun e!2637077 () Bool)

(assert (=> b!4245952 (=> (not res!1745567) (not e!2637077))))

(declare-fun lt!1507555 () Option!10083)

(declare-fun charsOf!5293 (Token!14520) BalanceConc!27910)

(declare-fun get!15267 (Option!10083) tuple2!44554)

(assert (=> b!4245952 (= res!1745567 (= (list!16931 (charsOf!5293 (_1!25411 (get!15267 lt!1507555)))) (originalCharacters!8291 (_1!25411 (get!15267 lt!1507555)))))))

(declare-fun b!4245953 () Bool)

(declare-fun e!2637075 () Bool)

(assert (=> b!4245953 (= e!2637075 e!2637077)))

(declare-fun res!1745568 () Bool)

(assert (=> b!4245953 (=> (not res!1745568) (not e!2637077))))

(declare-fun isDefined!7451 (Option!10083) Bool)

(assert (=> b!4245953 (= res!1745568 (isDefined!7451 lt!1507555))))

(declare-fun b!4245954 () Bool)

(declare-fun res!1745569 () Bool)

(assert (=> b!4245954 (=> (not res!1745569) (not e!2637077))))

(declare-fun matchR!6458 (Regex!12852 List!47106) Bool)

(assert (=> b!4245954 (= res!1745569 (matchR!6458 (regex!7947 (rule!11077 (_1!25411 (get!15267 lt!1507555)))) (list!16931 (charsOf!5293 (_1!25411 (get!15267 lt!1507555))))))))

(declare-fun bm!293896 () Bool)

(declare-fun call!293901 () Option!10083)

(declare-fun maxPrefixOneRule!3461 (LexerInterface!7542 Rule!15694 List!47106) Option!10083)

(assert (=> bm!293896 (= call!293901 (maxPrefixOneRule!3461 thiss!21641 (h!52404 rules!2971) longerInput!62))))

(declare-fun b!4245955 () Bool)

(declare-fun res!1745566 () Bool)

(assert (=> b!4245955 (=> (not res!1745566) (not e!2637077))))

(declare-fun apply!10763 (TokenValueInjection!15782 BalanceConc!27910) TokenValue!8177)

(declare-fun seqFromList!5823 (List!47106) BalanceConc!27910)

(assert (=> b!4245955 (= res!1745566 (= (value!247027 (_1!25411 (get!15267 lt!1507555))) (apply!10763 (transformation!7947 (rule!11077 (_1!25411 (get!15267 lt!1507555)))) (seqFromList!5823 (originalCharacters!8291 (_1!25411 (get!15267 lt!1507555)))))))))

(declare-fun b!4245956 () Bool)

(declare-fun res!1745571 () Bool)

(assert (=> b!4245956 (=> (not res!1745571) (not e!2637077))))

(assert (=> b!4245956 (= res!1745571 (< (size!34411 (_2!25411 (get!15267 lt!1507555))) (size!34411 longerInput!62)))))

(declare-fun b!4245957 () Bool)

(declare-fun res!1745570 () Bool)

(assert (=> b!4245957 (=> (not res!1745570) (not e!2637077))))

(declare-fun ++!11962 (List!47106 List!47106) List!47106)

(assert (=> b!4245957 (= res!1745570 (= (++!11962 (list!16931 (charsOf!5293 (_1!25411 (get!15267 lt!1507555)))) (_2!25411 (get!15267 lt!1507555))) longerInput!62))))

(declare-fun d!1248873 () Bool)

(assert (=> d!1248873 e!2637075))

(declare-fun res!1745572 () Bool)

(assert (=> d!1248873 (=> res!1745572 e!2637075)))

(declare-fun isEmpty!27796 (Option!10083) Bool)

(assert (=> d!1248873 (= res!1745572 (isEmpty!27796 lt!1507555))))

(declare-fun e!2637076 () Option!10083)

(assert (=> d!1248873 (= lt!1507555 e!2637076)))

(declare-fun c!721224 () Bool)

(assert (=> d!1248873 (= c!721224 (and (is-Cons!46984 rules!2971) (is-Nil!46984 (t!351677 rules!2971))))))

(declare-datatypes ((Unit!66017 0))(
  ( (Unit!66018) )
))
(declare-fun lt!1507554 () Unit!66017)

(declare-fun lt!1507557 () Unit!66017)

(assert (=> d!1248873 (= lt!1507554 lt!1507557)))

(declare-fun isPrefix!4736 (List!47106 List!47106) Bool)

(assert (=> d!1248873 (isPrefix!4736 longerInput!62 longerInput!62)))

(declare-fun lemmaIsPrefixRefl!3133 (List!47106 List!47106) Unit!66017)

(assert (=> d!1248873 (= lt!1507557 (lemmaIsPrefixRefl!3133 longerInput!62 longerInput!62))))

(assert (=> d!1248873 (rulesValidInductive!2985 thiss!21641 rules!2971)))

(assert (=> d!1248873 (= (maxPrefix!4500 thiss!21641 rules!2971 longerInput!62) lt!1507555)))

(declare-fun b!4245958 () Bool)

(declare-fun contains!9743 (List!47108 Rule!15694) Bool)

(assert (=> b!4245958 (= e!2637077 (contains!9743 rules!2971 (rule!11077 (_1!25411 (get!15267 lt!1507555)))))))

(declare-fun b!4245959 () Bool)

(declare-fun lt!1507556 () Option!10083)

(declare-fun lt!1507553 () Option!10083)

(assert (=> b!4245959 (= e!2637076 (ite (and (is-None!10082 lt!1507556) (is-None!10082 lt!1507553)) None!10082 (ite (is-None!10082 lt!1507553) lt!1507556 (ite (is-None!10082 lt!1507556) lt!1507553 (ite (>= (size!34410 (_1!25411 (v!41036 lt!1507556))) (size!34410 (_1!25411 (v!41036 lt!1507553)))) lt!1507556 lt!1507553)))))))

(assert (=> b!4245959 (= lt!1507556 call!293901)))

(assert (=> b!4245959 (= lt!1507553 (maxPrefix!4500 thiss!21641 (t!351677 rules!2971) longerInput!62))))

(declare-fun b!4245960 () Bool)

(assert (=> b!4245960 (= e!2637076 call!293901)))

(assert (= (and d!1248873 c!721224) b!4245960))

(assert (= (and d!1248873 (not c!721224)) b!4245959))

(assert (= (or b!4245960 b!4245959) bm!293896))

(assert (= (and d!1248873 (not res!1745572)) b!4245953))

(assert (= (and b!4245953 res!1745568) b!4245952))

(assert (= (and b!4245952 res!1745567) b!4245956))

(assert (= (and b!4245956 res!1745571) b!4245957))

(assert (= (and b!4245957 res!1745570) b!4245955))

(assert (= (and b!4245955 res!1745566) b!4245954))

(assert (= (and b!4245954 res!1745569) b!4245958))

(declare-fun m!4831013 () Bool)

(assert (=> b!4245952 m!4831013))

(declare-fun m!4831015 () Bool)

(assert (=> b!4245952 m!4831015))

(assert (=> b!4245952 m!4831015))

(declare-fun m!4831017 () Bool)

(assert (=> b!4245952 m!4831017))

(assert (=> b!4245956 m!4831013))

(declare-fun m!4831019 () Bool)

(assert (=> b!4245956 m!4831019))

(assert (=> b!4245956 m!4830779))

(declare-fun m!4831021 () Bool)

(assert (=> bm!293896 m!4831021))

(declare-fun m!4831023 () Bool)

(assert (=> d!1248873 m!4831023))

(declare-fun m!4831025 () Bool)

(assert (=> d!1248873 m!4831025))

(declare-fun m!4831027 () Bool)

(assert (=> d!1248873 m!4831027))

(assert (=> d!1248873 m!4830771))

(assert (=> b!4245954 m!4831013))

(assert (=> b!4245954 m!4831015))

(assert (=> b!4245954 m!4831015))

(assert (=> b!4245954 m!4831017))

(assert (=> b!4245954 m!4831017))

(declare-fun m!4831029 () Bool)

(assert (=> b!4245954 m!4831029))

(declare-fun m!4831031 () Bool)

(assert (=> b!4245959 m!4831031))

(assert (=> b!4245955 m!4831013))

(declare-fun m!4831033 () Bool)

(assert (=> b!4245955 m!4831033))

(assert (=> b!4245955 m!4831033))

(declare-fun m!4831035 () Bool)

(assert (=> b!4245955 m!4831035))

(assert (=> b!4245958 m!4831013))

(declare-fun m!4831037 () Bool)

(assert (=> b!4245958 m!4831037))

(assert (=> b!4245957 m!4831013))

(assert (=> b!4245957 m!4831015))

(assert (=> b!4245957 m!4831015))

(assert (=> b!4245957 m!4831017))

(assert (=> b!4245957 m!4831017))

(declare-fun m!4831039 () Bool)

(assert (=> b!4245957 m!4831039))

(declare-fun m!4831041 () Bool)

(assert (=> b!4245953 m!4831041))

(assert (=> d!1248801 d!1248873))

(declare-fun d!1248875 () Bool)

(declare-fun c!721227 () Bool)

(assert (=> d!1248875 (= c!721227 (is-Node!14158 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))))))

(declare-fun e!2637082 () Bool)

(assert (=> d!1248875 (= (inv!61747 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))) e!2637082)))

(declare-fun b!4245967 () Bool)

(declare-fun inv!61751 (Conc!14158) Bool)

(assert (=> b!4245967 (= e!2637082 (inv!61751 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))))))

(declare-fun b!4245968 () Bool)

(declare-fun e!2637083 () Bool)

(assert (=> b!4245968 (= e!2637082 e!2637083)))

(declare-fun res!1745575 () Bool)

(assert (=> b!4245968 (= res!1745575 (not (is-Leaf!21891 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))))))))

(assert (=> b!4245968 (=> res!1745575 e!2637083)))

(declare-fun b!4245969 () Bool)

(declare-fun inv!61752 (Conc!14158) Bool)

(assert (=> b!4245969 (= e!2637083 (inv!61752 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))))))

(assert (= (and d!1248875 c!721227) b!4245967))

(assert (= (and d!1248875 (not c!721227)) b!4245968))

(assert (= (and b!4245968 (not res!1745575)) b!4245969))

(declare-fun m!4831043 () Bool)

(assert (=> b!4245967 m!4831043))

(declare-fun m!4831045 () Bool)

(assert (=> b!4245969 m!4831045))

(assert (=> b!4245739 d!1248875))

(declare-fun bs!598481 () Bool)

(declare-fun d!1248877 () Bool)

(assert (= bs!598481 (and d!1248877 d!1248819)))

(declare-fun lambda!130191 () Int)

(assert (=> bs!598481 (= lambda!130191 lambda!130178)))

(declare-fun bs!598482 () Bool)

(assert (= bs!598482 (and d!1248877 d!1248849)))

(assert (=> bs!598482 (= lambda!130191 lambda!130190)))

(assert (=> d!1248877 true))

(declare-fun lt!1507558 () Bool)

(assert (=> d!1248877 (= lt!1507558 (forall!8539 (t!351677 rules!2971) lambda!130191))))

(declare-fun e!2637084 () Bool)

(assert (=> d!1248877 (= lt!1507558 e!2637084)))

(declare-fun res!1745577 () Bool)

(assert (=> d!1248877 (=> res!1745577 e!2637084)))

(assert (=> d!1248877 (= res!1745577 (not (is-Cons!46984 (t!351677 rules!2971))))))

(assert (=> d!1248877 (= (rulesValidInductive!2985 thiss!21641 (t!351677 rules!2971)) lt!1507558)))

(declare-fun b!4245970 () Bool)

(declare-fun e!2637085 () Bool)

(assert (=> b!4245970 (= e!2637084 e!2637085)))

(declare-fun res!1745576 () Bool)

(assert (=> b!4245970 (=> (not res!1745576) (not e!2637085))))

(assert (=> b!4245970 (= res!1745576 (ruleValid!3603 thiss!21641 (h!52404 (t!351677 rules!2971))))))

(declare-fun b!4245971 () Bool)

(assert (=> b!4245971 (= e!2637085 (rulesValidInductive!2985 thiss!21641 (t!351677 (t!351677 rules!2971))))))

(assert (= (and d!1248877 (not res!1745577)) b!4245970))

(assert (= (and b!4245970 res!1745576) b!4245971))

(declare-fun m!4831047 () Bool)

(assert (=> d!1248877 m!4831047))

(declare-fun m!4831049 () Bool)

(assert (=> b!4245970 m!4831049))

(declare-fun m!4831051 () Bool)

(assert (=> b!4245971 m!4831051))

(assert (=> b!4245776 d!1248877))

(declare-fun d!1248879 () Bool)

(declare-fun lt!1507559 () Int)

(assert (=> d!1248879 (>= lt!1507559 0)))

(declare-fun e!2637086 () Int)

(assert (=> d!1248879 (= lt!1507559 e!2637086)))

(declare-fun c!721228 () Bool)

(assert (=> d!1248879 (= c!721228 (is-Nil!46982 (t!351675 shorterInput!62)))))

(assert (=> d!1248879 (= (size!34411 (t!351675 shorterInput!62)) lt!1507559)))

(declare-fun b!4245972 () Bool)

(assert (=> b!4245972 (= e!2637086 0)))

(declare-fun b!4245973 () Bool)

(assert (=> b!4245973 (= e!2637086 (+ 1 (size!34411 (t!351675 (t!351675 shorterInput!62)))))))

(assert (= (and d!1248879 c!721228) b!4245972))

(assert (= (and d!1248879 (not c!721228)) b!4245973))

(declare-fun m!4831053 () Bool)

(assert (=> b!4245973 m!4831053))

(assert (=> b!4245668 d!1248879))

(declare-fun bs!598483 () Bool)

(declare-fun d!1248881 () Bool)

(assert (= bs!598483 (and d!1248881 d!1248841)))

(declare-fun lambda!130192 () Int)

(assert (=> bs!598483 (= (= (toValue!10707 (transformation!7947 (h!52404 rules!2971))) (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) (= lambda!130192 lambda!130184))))

(assert (=> d!1248881 true))

(assert (=> d!1248881 (< (dynLambda!20137 order!24707 (toValue!10707 (transformation!7947 (h!52404 rules!2971)))) (dynLambda!20138 order!24709 lambda!130192))))

(assert (=> d!1248881 (= (equivClasses!3363 (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toValue!10707 (transformation!7947 (h!52404 rules!2971)))) (Forall2!1198 lambda!130192))))

(declare-fun bs!598484 () Bool)

(assert (= bs!598484 d!1248881))

(declare-fun m!4831055 () Bool)

(assert (=> bs!598484 m!4831055))

(assert (=> b!4245757 d!1248881))

(declare-fun d!1248883 () Bool)

(declare-fun res!1745582 () Bool)

(declare-fun e!2637089 () Bool)

(assert (=> d!1248883 (=> (not res!1745582) (not e!2637089))))

(declare-fun validRegex!5828 (Regex!12852) Bool)

(assert (=> d!1248883 (= res!1745582 (validRegex!5828 (regex!7947 (h!52404 rules!2971))))))

(assert (=> d!1248883 (= (ruleValid!3603 thiss!21641 (h!52404 rules!2971)) e!2637089)))

(declare-fun b!4245978 () Bool)

(declare-fun res!1745583 () Bool)

(assert (=> b!4245978 (=> (not res!1745583) (not e!2637089))))

(declare-fun nullable!4521 (Regex!12852) Bool)

(assert (=> b!4245978 (= res!1745583 (not (nullable!4521 (regex!7947 (h!52404 rules!2971)))))))

(declare-fun b!4245979 () Bool)

(assert (=> b!4245979 (= e!2637089 (not (= (tag!8811 (h!52404 rules!2971)) (String!54818 ""))))))

(assert (= (and d!1248883 res!1745582) b!4245978))

(assert (= (and b!4245978 res!1745583) b!4245979))

(declare-fun m!4831057 () Bool)

(assert (=> d!1248883 m!4831057))

(declare-fun m!4831059 () Bool)

(assert (=> b!4245978 m!4831059))

(assert (=> b!4245775 d!1248883))

(declare-fun d!1248885 () Bool)

(declare-fun isBalanced!3761 (Conc!14158) Bool)

(assert (=> d!1248885 (= (inv!61748 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))) (isBalanced!3761 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))))))

(declare-fun bs!598485 () Bool)

(assert (= bs!598485 d!1248885))

(declare-fun m!4831061 () Bool)

(assert (=> bs!598485 m!4831061))

(assert (=> tb!255759 d!1248885))

(declare-fun bs!598486 () Bool)

(declare-fun d!1248887 () Bool)

(assert (= bs!598486 (and d!1248887 d!1248847)))

(declare-fun lambda!130193 () Int)

(assert (=> bs!598486 (= (and (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toChars!10566 (transformation!7947 (h!52404 rules!2971)))) (= (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toValue!10707 (transformation!7947 (h!52404 rules!2971))))) (= lambda!130193 lambda!130187))))

(assert (=> d!1248887 true))

(assert (=> d!1248887 (< (dynLambda!20139 order!24711 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) (dynLambda!20140 order!24713 lambda!130193))))

(assert (=> d!1248887 true))

(assert (=> d!1248887 (< (dynLambda!20137 order!24707 (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) (dynLambda!20140 order!24713 lambda!130193))))

(assert (=> d!1248887 (= (semiInverseModEq!3464 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toValue!10707 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) (Forall!1599 lambda!130193))))

(declare-fun bs!598487 () Bool)

(assert (= bs!598487 d!1248887))

(declare-fun m!4831063 () Bool)

(assert (=> bs!598487 m!4831063))

(assert (=> d!1248827 d!1248887))

(declare-fun d!1248889 () Bool)

(assert (=> d!1248889 (= (isEmpty!27790 (originalCharacters!8291 (h!52403 tokens!592))) (is-Nil!46982 (originalCharacters!8291 (h!52403 tokens!592))))))

(assert (=> d!1248803 d!1248889))

(declare-fun d!1248891 () Bool)

(declare-fun charsToBigInt!1 (List!47105) Int)

(assert (=> d!1248891 (= (inv!17 (value!247027 (h!52403 tokens!592))) (= (charsToBigInt!1 (text!57687 (value!247027 (h!52403 tokens!592)))) (value!247019 (value!247027 (h!52403 tokens!592)))))))

(declare-fun bs!598488 () Bool)

(assert (= bs!598488 d!1248891))

(declare-fun m!4831065 () Bool)

(assert (=> bs!598488 m!4831065))

(assert (=> b!4245694 d!1248891))

(declare-fun b!4245980 () Bool)

(declare-fun e!2637090 () Bool)

(declare-fun tp!1302236 () Bool)

(assert (=> b!4245980 (= e!2637090 (and tp_is_empty!22695 tp!1302236))))

(assert (=> b!4245824 (= tp!1302174 e!2637090)))

(assert (= (and b!4245824 (is-Cons!46982 (t!351675 (t!351675 suffix!1284)))) b!4245980))

(declare-fun b!4245981 () Bool)

(declare-fun e!2637091 () Bool)

(declare-fun tp!1302237 () Bool)

(assert (=> b!4245981 (= e!2637091 (and tp_is_empty!22695 tp!1302237))))

(assert (=> b!4245796 (= tp!1302145 e!2637091)))

(assert (= (and b!4245796 (is-Cons!46982 (originalCharacters!8291 (h!52403 (t!351676 tokens!592))))) b!4245981))

(declare-fun b!4245983 () Bool)

(declare-fun e!2637092 () Bool)

(declare-fun tp!1302241 () Bool)

(declare-fun tp!1302242 () Bool)

(assert (=> b!4245983 (= e!2637092 (and tp!1302241 tp!1302242))))

(declare-fun b!4245985 () Bool)

(declare-fun tp!1302239 () Bool)

(declare-fun tp!1302240 () Bool)

(assert (=> b!4245985 (= e!2637092 (and tp!1302239 tp!1302240))))

(declare-fun b!4245982 () Bool)

(assert (=> b!4245982 (= e!2637092 tp_is_empty!22695)))

(declare-fun b!4245984 () Bool)

(declare-fun tp!1302238 () Bool)

(assert (=> b!4245984 (= e!2637092 tp!1302238)))

(assert (=> b!4245797 (= tp!1302146 e!2637092)))

(assert (= (and b!4245797 (is-ElementMatch!12852 (regex!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) b!4245982))

(assert (= (and b!4245797 (is-Concat!21030 (regex!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) b!4245983))

(assert (= (and b!4245797 (is-Star!12852 (regex!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) b!4245984))

(assert (= (and b!4245797 (is-Union!12852 (regex!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) b!4245985))

(declare-fun b!4245988 () Bool)

(declare-fun b_free!126027 () Bool)

(declare-fun b_next!126731 () Bool)

(assert (=> b!4245988 (= b_free!126027 (not b_next!126731))))

(declare-fun tp!1302245 () Bool)

(declare-fun b_and!336365 () Bool)

(assert (=> b!4245988 (= tp!1302245 b_and!336365)))

(declare-fun b_free!126029 () Bool)

(declare-fun b_next!126733 () Bool)

(assert (=> b!4245988 (= b_free!126029 (not b_next!126733))))

(declare-fun t!351709 () Bool)

(declare-fun tb!255779 () Bool)

(assert (=> (and b!4245988 (= (toChars!10566 (transformation!7947 (h!52404 (t!351677 (t!351677 rules!2971))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) t!351709) tb!255779))

(declare-fun result!311920 () Bool)

(assert (= result!311920 result!311882))

(assert (=> b!4245733 t!351709))

(declare-fun t!351711 () Bool)

(declare-fun tb!255781 () Bool)

(assert (=> (and b!4245988 (= (toChars!10566 (transformation!7947 (h!52404 (t!351677 (t!351677 rules!2971))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) t!351711) tb!255781))

(declare-fun result!311922 () Bool)

(assert (= result!311922 result!311912))

(assert (=> b!4245893 t!351711))

(declare-fun b_and!336367 () Bool)

(declare-fun tp!1302243 () Bool)

(assert (=> b!4245988 (= tp!1302243 (and (=> t!351709 result!311920) (=> t!351711 result!311922) b_and!336367))))

(declare-fun e!2637094 () Bool)

(assert (=> b!4245988 (= e!2637094 (and tp!1302245 tp!1302243))))

(declare-fun tp!1302244 () Bool)

(declare-fun e!2637096 () Bool)

(declare-fun b!4245987 () Bool)

(assert (=> b!4245987 (= e!2637096 (and tp!1302244 (inv!61740 (tag!8811 (h!52404 (t!351677 (t!351677 rules!2971))))) (inv!61744 (transformation!7947 (h!52404 (t!351677 (t!351677 rules!2971))))) e!2637094))))

(declare-fun b!4245986 () Bool)

(declare-fun e!2637095 () Bool)

(declare-fun tp!1302246 () Bool)

(assert (=> b!4245986 (= e!2637095 (and e!2637096 tp!1302246))))

(assert (=> b!4245807 (= tp!1302158 e!2637095)))

(assert (= b!4245987 b!4245988))

(assert (= b!4245986 b!4245987))

(assert (= (and b!4245807 (is-Cons!46984 (t!351677 (t!351677 rules!2971)))) b!4245986))

(declare-fun m!4831067 () Bool)

(assert (=> b!4245987 m!4831067))

(declare-fun m!4831069 () Bool)

(assert (=> b!4245987 m!4831069))

(declare-fun b!4245992 () Bool)

(declare-fun b_free!126031 () Bool)

(declare-fun b_next!126735 () Bool)

(assert (=> b!4245992 (= b_free!126031 (not b_next!126735))))

(declare-fun tp!1302247 () Bool)

(declare-fun b_and!336369 () Bool)

(assert (=> b!4245992 (= tp!1302247 b_and!336369)))

(declare-fun b_free!126033 () Bool)

(declare-fun b_next!126737 () Bool)

(assert (=> b!4245992 (= b_free!126033 (not b_next!126737))))

(declare-fun t!351713 () Bool)

(declare-fun tb!255783 () Bool)

(assert (=> (and b!4245992 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 (t!351676 tokens!592)))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592))))) t!351713) tb!255783))

(declare-fun result!311924 () Bool)

(assert (= result!311924 result!311882))

(assert (=> b!4245733 t!351713))

(declare-fun t!351715 () Bool)

(declare-fun tb!255785 () Bool)

(assert (=> (and b!4245992 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 (t!351676 tokens!592)))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592)))))) t!351715) tb!255785))

(declare-fun result!311926 () Bool)

(assert (= result!311926 result!311912))

(assert (=> b!4245893 t!351715))

(declare-fun b_and!336371 () Bool)

(declare-fun tp!1302248 () Bool)

(assert (=> b!4245992 (= tp!1302248 (and (=> t!351713 result!311924) (=> t!351715 result!311926) b_and!336371))))

(declare-fun b!4245990 () Bool)

(declare-fun tp!1302250 () Bool)

(declare-fun e!2637102 () Bool)

(declare-fun e!2637098 () Bool)

(assert (=> b!4245990 (= e!2637098 (and (inv!21 (value!247027 (h!52403 (t!351676 (t!351676 tokens!592))))) e!2637102 tp!1302250))))

(declare-fun b!4245989 () Bool)

(declare-fun tp!1302249 () Bool)

(declare-fun e!2637101 () Bool)

(assert (=> b!4245989 (= e!2637101 (and (inv!61743 (h!52403 (t!351676 (t!351676 tokens!592)))) e!2637098 tp!1302249))))

(declare-fun e!2637100 () Bool)

(declare-fun b!4245991 () Bool)

(declare-fun tp!1302251 () Bool)

(assert (=> b!4245991 (= e!2637102 (and tp!1302251 (inv!61740 (tag!8811 (rule!11077 (h!52403 (t!351676 (t!351676 tokens!592)))))) (inv!61744 (transformation!7947 (rule!11077 (h!52403 (t!351676 (t!351676 tokens!592)))))) e!2637100))))

(assert (=> b!4245795 (= tp!1302144 e!2637101)))

(assert (=> b!4245992 (= e!2637100 (and tp!1302247 tp!1302248))))

(assert (= b!4245991 b!4245992))

(assert (= b!4245990 b!4245991))

(assert (= b!4245989 b!4245990))

(assert (= (and b!4245795 (is-Cons!46983 (t!351676 (t!351676 tokens!592)))) b!4245989))

(declare-fun m!4831071 () Bool)

(assert (=> b!4245990 m!4831071))

(declare-fun m!4831073 () Bool)

(assert (=> b!4245989 m!4831073))

(declare-fun m!4831075 () Bool)

(assert (=> b!4245991 m!4831075))

(declare-fun m!4831077 () Bool)

(assert (=> b!4245991 m!4831077))

(declare-fun b!4245994 () Bool)

(declare-fun e!2637103 () Bool)

(declare-fun tp!1302255 () Bool)

(declare-fun tp!1302256 () Bool)

(assert (=> b!4245994 (= e!2637103 (and tp!1302255 tp!1302256))))

(declare-fun b!4245996 () Bool)

(declare-fun tp!1302253 () Bool)

(declare-fun tp!1302254 () Bool)

(assert (=> b!4245996 (= e!2637103 (and tp!1302253 tp!1302254))))

(declare-fun b!4245993 () Bool)

(assert (=> b!4245993 (= e!2637103 tp_is_empty!22695)))

(declare-fun b!4245995 () Bool)

(declare-fun tp!1302252 () Bool)

(assert (=> b!4245995 (= e!2637103 tp!1302252)))

(assert (=> b!4245822 (= tp!1302169 e!2637103)))

(assert (= (and b!4245822 (is-ElementMatch!12852 (reg!13181 (regex!7947 (h!52404 rules!2971))))) b!4245993))

(assert (= (and b!4245822 (is-Concat!21030 (reg!13181 (regex!7947 (h!52404 rules!2971))))) b!4245994))

(assert (= (and b!4245822 (is-Star!12852 (reg!13181 (regex!7947 (h!52404 rules!2971))))) b!4245995))

(assert (= (and b!4245822 (is-Union!12852 (reg!13181 (regex!7947 (h!52404 rules!2971))))) b!4245996))

(declare-fun b!4245998 () Bool)

(declare-fun e!2637104 () Bool)

(declare-fun tp!1302260 () Bool)

(declare-fun tp!1302261 () Bool)

(assert (=> b!4245998 (= e!2637104 (and tp!1302260 tp!1302261))))

(declare-fun b!4246000 () Bool)

(declare-fun tp!1302258 () Bool)

(declare-fun tp!1302259 () Bool)

(assert (=> b!4246000 (= e!2637104 (and tp!1302258 tp!1302259))))

(declare-fun b!4245997 () Bool)

(assert (=> b!4245997 (= e!2637104 tp_is_empty!22695)))

(declare-fun b!4245999 () Bool)

(declare-fun tp!1302257 () Bool)

(assert (=> b!4245999 (= e!2637104 tp!1302257)))

(assert (=> b!4245823 (= tp!1302170 e!2637104)))

(assert (= (and b!4245823 (is-ElementMatch!12852 (regOne!26217 (regex!7947 (h!52404 rules!2971))))) b!4245997))

(assert (= (and b!4245823 (is-Concat!21030 (regOne!26217 (regex!7947 (h!52404 rules!2971))))) b!4245998))

(assert (= (and b!4245823 (is-Star!12852 (regOne!26217 (regex!7947 (h!52404 rules!2971))))) b!4245999))

(assert (= (and b!4245823 (is-Union!12852 (regOne!26217 (regex!7947 (h!52404 rules!2971))))) b!4246000))

(declare-fun b!4246002 () Bool)

(declare-fun e!2637105 () Bool)

(declare-fun tp!1302265 () Bool)

(declare-fun tp!1302266 () Bool)

(assert (=> b!4246002 (= e!2637105 (and tp!1302265 tp!1302266))))

(declare-fun b!4246004 () Bool)

(declare-fun tp!1302263 () Bool)

(declare-fun tp!1302264 () Bool)

(assert (=> b!4246004 (= e!2637105 (and tp!1302263 tp!1302264))))

(declare-fun b!4246001 () Bool)

(assert (=> b!4246001 (= e!2637105 tp_is_empty!22695)))

(declare-fun b!4246003 () Bool)

(declare-fun tp!1302262 () Bool)

(assert (=> b!4246003 (= e!2637105 tp!1302262)))

(assert (=> b!4245823 (= tp!1302171 e!2637105)))

(assert (= (and b!4245823 (is-ElementMatch!12852 (regTwo!26217 (regex!7947 (h!52404 rules!2971))))) b!4246001))

(assert (= (and b!4245823 (is-Concat!21030 (regTwo!26217 (regex!7947 (h!52404 rules!2971))))) b!4246002))

(assert (= (and b!4245823 (is-Star!12852 (regTwo!26217 (regex!7947 (h!52404 rules!2971))))) b!4246003))

(assert (= (and b!4245823 (is-Union!12852 (regTwo!26217 (regex!7947 (h!52404 rules!2971))))) b!4246004))

(declare-fun b!4246006 () Bool)

(declare-fun e!2637106 () Bool)

(declare-fun tp!1302270 () Bool)

(declare-fun tp!1302271 () Bool)

(assert (=> b!4246006 (= e!2637106 (and tp!1302270 tp!1302271))))

(declare-fun b!4246008 () Bool)

(declare-fun tp!1302268 () Bool)

(declare-fun tp!1302269 () Bool)

(assert (=> b!4246008 (= e!2637106 (and tp!1302268 tp!1302269))))

(declare-fun b!4246005 () Bool)

(assert (=> b!4246005 (= e!2637106 tp_is_empty!22695)))

(declare-fun b!4246007 () Bool)

(declare-fun tp!1302267 () Bool)

(assert (=> b!4246007 (= e!2637106 tp!1302267)))

(assert (=> b!4245821 (= tp!1302172 e!2637106)))

(assert (= (and b!4245821 (is-ElementMatch!12852 (regOne!26216 (regex!7947 (h!52404 rules!2971))))) b!4246005))

(assert (= (and b!4245821 (is-Concat!21030 (regOne!26216 (regex!7947 (h!52404 rules!2971))))) b!4246006))

(assert (= (and b!4245821 (is-Star!12852 (regOne!26216 (regex!7947 (h!52404 rules!2971))))) b!4246007))

(assert (= (and b!4245821 (is-Union!12852 (regOne!26216 (regex!7947 (h!52404 rules!2971))))) b!4246008))

(declare-fun b!4246010 () Bool)

(declare-fun e!2637107 () Bool)

(declare-fun tp!1302275 () Bool)

(declare-fun tp!1302276 () Bool)

(assert (=> b!4246010 (= e!2637107 (and tp!1302275 tp!1302276))))

(declare-fun b!4246012 () Bool)

(declare-fun tp!1302273 () Bool)

(declare-fun tp!1302274 () Bool)

(assert (=> b!4246012 (= e!2637107 (and tp!1302273 tp!1302274))))

(declare-fun b!4246009 () Bool)

(assert (=> b!4246009 (= e!2637107 tp_is_empty!22695)))

(declare-fun b!4246011 () Bool)

(declare-fun tp!1302272 () Bool)

(assert (=> b!4246011 (= e!2637107 tp!1302272)))

(assert (=> b!4245821 (= tp!1302173 e!2637107)))

(assert (= (and b!4245821 (is-ElementMatch!12852 (regTwo!26216 (regex!7947 (h!52404 rules!2971))))) b!4246009))

(assert (= (and b!4245821 (is-Concat!21030 (regTwo!26216 (regex!7947 (h!52404 rules!2971))))) b!4246010))

(assert (= (and b!4245821 (is-Star!12852 (regTwo!26216 (regex!7947 (h!52404 rules!2971))))) b!4246011))

(assert (= (and b!4245821 (is-Union!12852 (regTwo!26216 (regex!7947 (h!52404 rules!2971))))) b!4246012))

(declare-fun b!4246014 () Bool)

(declare-fun e!2637108 () Bool)

(declare-fun tp!1302280 () Bool)

(declare-fun tp!1302281 () Bool)

(assert (=> b!4246014 (= e!2637108 (and tp!1302280 tp!1302281))))

(declare-fun b!4246016 () Bool)

(declare-fun tp!1302278 () Bool)

(declare-fun tp!1302279 () Bool)

(assert (=> b!4246016 (= e!2637108 (and tp!1302278 tp!1302279))))

(declare-fun b!4246013 () Bool)

(assert (=> b!4246013 (= e!2637108 tp_is_empty!22695)))

(declare-fun b!4246015 () Bool)

(declare-fun tp!1302277 () Bool)

(assert (=> b!4246015 (= e!2637108 tp!1302277)))

(assert (=> b!4245830 (= tp!1302178 e!2637108)))

(assert (= (and b!4245830 (is-ElementMatch!12852 (regOne!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246013))

(assert (= (and b!4245830 (is-Concat!21030 (regOne!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246014))

(assert (= (and b!4245830 (is-Star!12852 (regOne!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246015))

(assert (= (and b!4245830 (is-Union!12852 (regOne!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246016))

(declare-fun b!4246018 () Bool)

(declare-fun e!2637109 () Bool)

(declare-fun tp!1302285 () Bool)

(declare-fun tp!1302286 () Bool)

(assert (=> b!4246018 (= e!2637109 (and tp!1302285 tp!1302286))))

(declare-fun b!4246020 () Bool)

(declare-fun tp!1302283 () Bool)

(declare-fun tp!1302284 () Bool)

(assert (=> b!4246020 (= e!2637109 (and tp!1302283 tp!1302284))))

(declare-fun b!4246017 () Bool)

(assert (=> b!4246017 (= e!2637109 tp_is_empty!22695)))

(declare-fun b!4246019 () Bool)

(declare-fun tp!1302282 () Bool)

(assert (=> b!4246019 (= e!2637109 tp!1302282)))

(assert (=> b!4245830 (= tp!1302179 e!2637109)))

(assert (= (and b!4245830 (is-ElementMatch!12852 (regTwo!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246017))

(assert (= (and b!4245830 (is-Concat!21030 (regTwo!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246018))

(assert (= (and b!4245830 (is-Star!12852 (regTwo!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246019))

(assert (= (and b!4245830 (is-Union!12852 (regTwo!26217 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246020))

(declare-fun tp!1302294 () Bool)

(declare-fun tp!1302295 () Bool)

(declare-fun b!4246029 () Bool)

(declare-fun e!2637115 () Bool)

(assert (=> b!4246029 (= e!2637115 (and (inv!61747 (left!34882 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))))) tp!1302295 (inv!61747 (right!35212 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))))) tp!1302294))))

(declare-fun b!4246031 () Bool)

(declare-fun e!2637114 () Bool)

(declare-fun tp!1302293 () Bool)

(assert (=> b!4246031 (= e!2637114 tp!1302293)))

(declare-fun b!4246030 () Bool)

(declare-fun inv!61753 (IArray!28321) Bool)

(assert (=> b!4246030 (= e!2637115 (and (inv!61753 (xs!17464 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))))) e!2637114))))

(assert (=> b!4245739 (= tp!1302128 (and (inv!61747 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592))))) e!2637115))))

(assert (= (and b!4245739 (is-Node!14158 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))))) b!4246029))

(assert (= b!4246030 b!4246031))

(assert (= (and b!4245739 (is-Leaf!21891 (c!721175 (dynLambda!20135 (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (value!247027 (h!52403 tokens!592)))))) b!4246030))

(declare-fun m!4831079 () Bool)

(assert (=> b!4246029 m!4831079))

(declare-fun m!4831081 () Bool)

(assert (=> b!4246029 m!4831081))

(declare-fun m!4831083 () Bool)

(assert (=> b!4246030 m!4831083))

(assert (=> b!4245739 m!4830869))

(declare-fun b!4246032 () Bool)

(declare-fun e!2637116 () Bool)

(declare-fun tp!1302296 () Bool)

(assert (=> b!4246032 (= e!2637116 (and tp_is_empty!22695 tp!1302296))))

(assert (=> b!4245826 (= tp!1302176 e!2637116)))

(assert (= (and b!4245826 (is-Cons!46982 (t!351675 (t!351675 longerInput!62)))) b!4246032))

(declare-fun b!4246034 () Bool)

(declare-fun e!2637117 () Bool)

(declare-fun tp!1302300 () Bool)

(declare-fun tp!1302301 () Bool)

(assert (=> b!4246034 (= e!2637117 (and tp!1302300 tp!1302301))))

(declare-fun b!4246036 () Bool)

(declare-fun tp!1302298 () Bool)

(declare-fun tp!1302299 () Bool)

(assert (=> b!4246036 (= e!2637117 (and tp!1302298 tp!1302299))))

(declare-fun b!4246033 () Bool)

(assert (=> b!4246033 (= e!2637117 tp_is_empty!22695)))

(declare-fun b!4246035 () Bool)

(declare-fun tp!1302297 () Bool)

(assert (=> b!4246035 (= e!2637117 tp!1302297)))

(assert (=> b!4245829 (= tp!1302177 e!2637117)))

(assert (= (and b!4245829 (is-ElementMatch!12852 (reg!13181 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246033))

(assert (= (and b!4245829 (is-Concat!21030 (reg!13181 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246034))

(assert (= (and b!4245829 (is-Star!12852 (reg!13181 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246035))

(assert (= (and b!4245829 (is-Union!12852 (reg!13181 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246036))

(declare-fun b!4246037 () Bool)

(declare-fun e!2637118 () Bool)

(declare-fun tp!1302302 () Bool)

(assert (=> b!4246037 (= e!2637118 (and tp_is_empty!22695 tp!1302302))))

(assert (=> b!4245784 (= tp!1302131 e!2637118)))

(assert (= (and b!4245784 (is-Cons!46982 (t!351675 (originalCharacters!8291 (h!52403 tokens!592))))) b!4246037))

(declare-fun b!4246038 () Bool)

(declare-fun e!2637119 () Bool)

(declare-fun tp!1302303 () Bool)

(assert (=> b!4246038 (= e!2637119 (and tp_is_empty!22695 tp!1302303))))

(assert (=> b!4245825 (= tp!1302175 e!2637119)))

(assert (= (and b!4245825 (is-Cons!46982 (t!351675 (t!351675 shorterInput!62)))) b!4246038))

(declare-fun b!4246040 () Bool)

(declare-fun e!2637120 () Bool)

(declare-fun tp!1302307 () Bool)

(declare-fun tp!1302308 () Bool)

(assert (=> b!4246040 (= e!2637120 (and tp!1302307 tp!1302308))))

(declare-fun b!4246042 () Bool)

(declare-fun tp!1302305 () Bool)

(declare-fun tp!1302306 () Bool)

(assert (=> b!4246042 (= e!2637120 (and tp!1302305 tp!1302306))))

(declare-fun b!4246039 () Bool)

(assert (=> b!4246039 (= e!2637120 tp_is_empty!22695)))

(declare-fun b!4246041 () Bool)

(declare-fun tp!1302304 () Bool)

(assert (=> b!4246041 (= e!2637120 tp!1302304)))

(assert (=> b!4245828 (= tp!1302180 e!2637120)))

(assert (= (and b!4245828 (is-ElementMatch!12852 (regOne!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246039))

(assert (= (and b!4245828 (is-Concat!21030 (regOne!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246040))

(assert (= (and b!4245828 (is-Star!12852 (regOne!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246041))

(assert (= (and b!4245828 (is-Union!12852 (regOne!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246042))

(declare-fun b!4246044 () Bool)

(declare-fun e!2637121 () Bool)

(declare-fun tp!1302312 () Bool)

(declare-fun tp!1302313 () Bool)

(assert (=> b!4246044 (= e!2637121 (and tp!1302312 tp!1302313))))

(declare-fun b!4246046 () Bool)

(declare-fun tp!1302310 () Bool)

(declare-fun tp!1302311 () Bool)

(assert (=> b!4246046 (= e!2637121 (and tp!1302310 tp!1302311))))

(declare-fun b!4246043 () Bool)

(assert (=> b!4246043 (= e!2637121 tp_is_empty!22695)))

(declare-fun b!4246045 () Bool)

(declare-fun tp!1302309 () Bool)

(assert (=> b!4246045 (= e!2637121 tp!1302309)))

(assert (=> b!4245828 (= tp!1302181 e!2637121)))

(assert (= (and b!4245828 (is-ElementMatch!12852 (regTwo!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246043))

(assert (= (and b!4245828 (is-Concat!21030 (regTwo!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246044))

(assert (= (and b!4245828 (is-Star!12852 (regTwo!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246045))

(assert (= (and b!4245828 (is-Union!12852 (regTwo!26216 (regex!7947 (rule!11077 (h!52403 tokens!592)))))) b!4246046))

(declare-fun b!4246048 () Bool)

(declare-fun e!2637122 () Bool)

(declare-fun tp!1302317 () Bool)

(declare-fun tp!1302318 () Bool)

(assert (=> b!4246048 (= e!2637122 (and tp!1302317 tp!1302318))))

(declare-fun b!4246050 () Bool)

(declare-fun tp!1302315 () Bool)

(declare-fun tp!1302316 () Bool)

(assert (=> b!4246050 (= e!2637122 (and tp!1302315 tp!1302316))))

(declare-fun b!4246047 () Bool)

(assert (=> b!4246047 (= e!2637122 tp_is_empty!22695)))

(declare-fun b!4246049 () Bool)

(declare-fun tp!1302314 () Bool)

(assert (=> b!4246049 (= e!2637122 tp!1302314)))

(assert (=> b!4245808 (= tp!1302156 e!2637122)))

(assert (= (and b!4245808 (is-ElementMatch!12852 (regex!7947 (h!52404 (t!351677 rules!2971))))) b!4246047))

(assert (= (and b!4245808 (is-Concat!21030 (regex!7947 (h!52404 (t!351677 rules!2971))))) b!4246048))

(assert (= (and b!4245808 (is-Star!12852 (regex!7947 (h!52404 (t!351677 rules!2971))))) b!4246049))

(assert (= (and b!4245808 (is-Union!12852 (regex!7947 (h!52404 (t!351677 rules!2971))))) b!4246050))

(declare-fun b_lambda!125063 () Bool)

(assert (= b_lambda!125059 (or (and b!4245992 b_free!126033 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 (t!351676 tokens!592)))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))))) (and b!4245798 b_free!126013) (and b!4245608 b_free!125997 (= (toChars!10566 (transformation!7947 (rule!11077 (h!52403 tokens!592)))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))))) (and b!4245597 b_free!126001 (= (toChars!10566 (transformation!7947 (h!52404 rules!2971))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))))) (and b!4245988 b_free!126029 (= (toChars!10566 (transformation!7947 (h!52404 (t!351677 (t!351677 rules!2971))))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))))) (and b!4245809 b_free!126017 (= (toChars!10566 (transformation!7947 (h!52404 (t!351677 rules!2971)))) (toChars!10566 (transformation!7947 (rule!11077 (h!52403 (t!351676 tokens!592))))))) b_lambda!125063)))

(declare-fun b_lambda!125065 () Bool)

(assert (= b_lambda!125061 (or d!1248819 b_lambda!125065)))

(declare-fun bs!598489 () Bool)

(declare-fun d!1248893 () Bool)

(assert (= bs!598489 (and d!1248893 d!1248819)))

(assert (=> bs!598489 (= (dynLambda!20141 lambda!130178 (h!52404 rules!2971)) (ruleValid!3603 thiss!21641 (h!52404 rules!2971)))))

(assert (=> bs!598489 m!4830905))

(assert (=> b!4245922 d!1248893))

(push 1)

(assert (not b_next!126733))

(assert (not b_next!126717))

(assert (not b!4246019))

(assert (not d!1248839))

(assert (not b!4246038))

(assert (not b!4246048))

(assert (not d!1248859))

(assert b_and!336363)

(assert (not b!4246030))

(assert (not b!4246040))

(assert (not b!4246015))

(assert (not b!4245912))

(assert (not b!4245970))

(assert (not d!1248837))

(assert (not b!4246029))

(assert (not b_next!126699))

(assert (not d!1248855))

(assert (not b!4245987))

(assert (not b!4245969))

(assert (not b!4246045))

(assert (not b!4245996))

(assert (not b!4246046))

(assert (not b!4246010))

(assert (not d!1248841))

(assert (not b!4245887))

(assert (not b_lambda!125065))

(assert (not b!4245989))

(assert (not d!1248877))

(assert (not d!1248863))

(assert (not b!4246034))

(assert (not b!4245927))

(assert (not b!4246041))

(assert (not b!4245978))

(assert b_and!336371)

(assert (not b!4246042))

(assert b_and!336369)

(assert (not b_next!126703))

(assert (not b!4245952))

(assert (not b!4246018))

(assert (not d!1248887))

(assert (not b!4245959))

(assert (not d!1248885))

(assert (not d!1248849))

(assert (not b_next!126737))

(assert (not b!4245955))

(assert (not b!4245971))

(assert (not d!1248851))

(assert (not b_lambda!125055))

(assert b_and!336341)

(assert (not b!4245983))

(assert b_and!336359)

(assert b_and!336321)

(assert b_and!336345)

(assert (not b_next!126719))

(assert (not b!4245984))

(assert (not b!4246036))

(assert (not b!4245895))

(assert (not b_next!126731))

(assert b_and!336317)

(assert (not tb!255771))

(assert (not b!4246049))

(assert b_and!336357)

(assert (not b!4245986))

(assert (not b!4245923))

(assert (not b!4246037))

(assert (not b!4245739))

(assert (not b!4245967))

(assert (not b!4246020))

(assert (not b!4246032))

(assert (not b!4245956))

(assert (not b!4246035))

(assert (not b!4245985))

(assert (not b!4245893))

(assert (not b!4245990))

(assert (not b!4245888))

(assert (not b!4246004))

(assert (not b!4245998))

(assert (not b!4245905))

(assert (not d!1248847))

(assert (not b!4245933))

(assert (not b!4246003))

(assert b_and!336367)

(assert (not b_next!126715))

(assert (not b!4245894))

(assert b_and!336365)

(assert (not b!4246007))

(assert (not b!4246008))

(assert (not b_next!126735))

(assert (not b!4246031))

(assert (not b_next!126721))

(assert (not b!4245891))

(assert (not b!4246050))

(assert (not b!4245995))

(assert (not b!4246014))

(assert (not b_next!126701))

(assert (not b!4246012))

(assert (not d!1248857))

(assert (not b!4245953))

(assert (not b!4245980))

(assert (not b!4245916))

(assert (not b!4245999))

(assert (not b!4245892))

(assert (not b!4246006))

(assert (not b!4245958))

(assert (not b!4245954))

(assert (not b!4245904))

(assert (not b!4246002))

(assert tp_is_empty!22695)

(assert (not b_lambda!125063))

(assert (not d!1248891))

(assert (not b!4246044))

(assert (not d!1248883))

(assert (not b!4245957))

(assert (not b!4245907))

(assert (not b_next!126705))

(assert (not d!1248873))

(assert (not d!1248881))

(assert (not b!4245981))

(assert (not b!4245917))

(assert (not b!4245913))

(assert (not bs!598489))

(assert (not bm!293896))

(assert (not b!4245973))

(assert (not b!4246011))

(assert (not b!4245925))

(assert (not b!4246000))

(assert (not b!4245991))

(assert (not b!4246016))

(assert (not b!4245994))

(assert b_and!336361)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!126733))

(assert b_and!336363)

(assert (not b_next!126717))

(assert (not b_next!126699))

(assert (not b_next!126737))

(assert b_and!336341)

(assert b_and!336365)

(assert (not b_next!126701))

(assert (not b_next!126705))

(assert b_and!336361)

(assert b_and!336371)

(assert (not b_next!126703))

(assert b_and!336369)

(assert b_and!336359)

(assert b_and!336321)

(assert b_and!336345)

(assert (not b_next!126719))

(assert (not b_next!126731))

(assert b_and!336317)

(assert b_and!336357)

(assert b_and!336367)

(assert (not b_next!126715))

(assert (not b_next!126735))

(assert (not b_next!126721))

(check-sat)

(pop 1)

