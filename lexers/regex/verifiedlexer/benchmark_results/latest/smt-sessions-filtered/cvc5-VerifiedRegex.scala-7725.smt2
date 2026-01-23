; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!406072 () Bool)

(assert start!406072)

(declare-fun b!4242722 () Bool)

(declare-fun b_free!125707 () Bool)

(declare-fun b_next!126411 () Bool)

(assert (=> b!4242722 (= b_free!125707 (not b_next!126411))))

(declare-fun tp!1300687 () Bool)

(declare-fun b_and!335861 () Bool)

(assert (=> b!4242722 (= tp!1300687 b_and!335861)))

(declare-fun b_free!125709 () Bool)

(declare-fun b_next!126413 () Bool)

(assert (=> b!4242722 (= b_free!125709 (not b_next!126413))))

(declare-fun tp!1300686 () Bool)

(declare-fun b_and!335863 () Bool)

(assert (=> b!4242722 (= tp!1300686 b_and!335863)))

(declare-fun b!4242713 () Bool)

(declare-fun b_free!125711 () Bool)

(declare-fun b_next!126415 () Bool)

(assert (=> b!4242713 (= b_free!125711 (not b_next!126415))))

(declare-fun tp!1300699 () Bool)

(declare-fun b_and!335865 () Bool)

(assert (=> b!4242713 (= tp!1300699 b_and!335865)))

(declare-fun b_free!125713 () Bool)

(declare-fun b_next!126417 () Bool)

(assert (=> b!4242713 (= b_free!125713 (not b_next!126417))))

(declare-fun tp!1300689 () Bool)

(declare-fun b_and!335867 () Bool)

(assert (=> b!4242713 (= tp!1300689 b_and!335867)))

(declare-fun b!4242717 () Bool)

(declare-fun b_free!125715 () Bool)

(declare-fun b_next!126419 () Bool)

(assert (=> b!4242717 (= b_free!125715 (not b_next!126419))))

(declare-fun tp!1300693 () Bool)

(declare-fun b_and!335869 () Bool)

(assert (=> b!4242717 (= tp!1300693 b_and!335869)))

(declare-fun b_free!125717 () Bool)

(declare-fun b_next!126421 () Bool)

(assert (=> b!4242717 (= b_free!125717 (not b_next!126421))))

(declare-fun tp!1300698 () Bool)

(declare-fun b_and!335871 () Bool)

(assert (=> b!4242717 (= tp!1300698 b_and!335871)))

(declare-fun b!4242709 () Bool)

(declare-fun e!2634779 () Bool)

(declare-fun e!2634789 () Bool)

(declare-fun tp!1300695 () Bool)

(assert (=> b!4242709 (= e!2634779 (and e!2634789 tp!1300695))))

(declare-fun b!4242710 () Bool)

(declare-fun res!1744445 () Bool)

(declare-fun e!2634775 () Bool)

(assert (=> b!4242710 (=> (not res!1744445) (not e!2634775))))

(declare-fun lt!1506934 () Int)

(declare-datatypes ((List!47040 0))(
  ( (Nil!46916) (Cons!46916 (h!52336 (_ BitVec 16)) (t!351273 List!47040)) )
))
(declare-datatypes ((TokenValue!8163 0))(
  ( (FloatLiteralValue!16326 (text!57586 List!47040)) (TokenValueExt!8162 (__x!28549 Int)) (Broken!40815 (value!246602 List!47040)) (Object!8286) (End!8163) (Def!8163) (Underscore!8163) (Match!8163) (Else!8163) (Error!8163) (Case!8163) (If!8163) (Extends!8163) (Abstract!8163) (Class!8163) (Val!8163) (DelimiterValue!16326 (del!8223 List!47040)) (KeywordValue!8169 (value!246603 List!47040)) (CommentValue!16326 (value!246604 List!47040)) (WhitespaceValue!16326 (value!246605 List!47040)) (IndentationValue!8163 (value!246606 List!47040)) (String!54746) (Int32!8163) (Broken!40816 (value!246607 List!47040)) (Boolean!8164) (Unit!65981) (OperatorValue!8166 (op!8223 List!47040)) (IdentifierValue!16326 (value!246608 List!47040)) (IdentifierValue!16327 (value!246609 List!47040)) (WhitespaceValue!16327 (value!246610 List!47040)) (True!16326) (False!16326) (Broken!40817 (value!246611 List!47040)) (Broken!40818 (value!246612 List!47040)) (True!16327) (RightBrace!8163) (RightBracket!8163) (Colon!8163) (Null!8163) (Comma!8163) (LeftBracket!8163) (False!16327) (LeftBrace!8163) (ImaginaryLiteralValue!8163 (text!57587 List!47040)) (StringLiteralValue!24489 (value!246613 List!47040)) (EOFValue!8163 (value!246614 List!47040)) (IdentValue!8163 (value!246615 List!47040)) (DelimiterValue!16327 (value!246616 List!47040)) (DedentValue!8163 (value!246617 List!47040)) (NewLineValue!8163 (value!246618 List!47040)) (IntegerValue!24489 (value!246619 (_ BitVec 32)) (text!57588 List!47040)) (IntegerValue!24490 (value!246620 Int) (text!57589 List!47040)) (Times!8163) (Or!8163) (Equal!8163) (Minus!8163) (Broken!40819 (value!246621 List!47040)) (And!8163) (Div!8163) (LessEqual!8163) (Mod!8163) (Concat!21001) (Not!8163) (Plus!8163) (SpaceValue!8163 (value!246622 List!47040)) (IntegerValue!24491 (value!246623 Int) (text!57590 List!47040)) (StringLiteralValue!24490 (text!57591 List!47040)) (FloatLiteralValue!16327 (text!57592 List!47040)) (BytesLiteralValue!8163 (value!246624 List!47040)) (CommentValue!16327 (value!246625 List!47040)) (StringLiteralValue!24491 (value!246626 List!47040)) (ErrorTokenValue!8163 (msg!8224 List!47040)) )
))
(declare-datatypes ((C!25874 0))(
  ( (C!25875 (val!15127 Int)) )
))
(declare-datatypes ((Regex!12838 0))(
  ( (ElementMatch!12838 (c!720815 C!25874)) (Concat!21002 (regOne!26188 Regex!12838) (regTwo!26188 Regex!12838)) (EmptyExpr!12838) (Star!12838 (reg!13167 Regex!12838)) (EmptyLang!12838) (Union!12838 (regOne!26189 Regex!12838) (regTwo!26189 Regex!12838)) )
))
(declare-datatypes ((String!54747 0))(
  ( (String!54748 (value!246627 String)) )
))
(declare-datatypes ((List!47041 0))(
  ( (Nil!46917) (Cons!46917 (h!52337 C!25874) (t!351274 List!47041)) )
))
(declare-datatypes ((IArray!28293 0))(
  ( (IArray!28294 (innerList!14204 List!47041)) )
))
(declare-datatypes ((Conc!14144 0))(
  ( (Node!14144 (left!34861 Conc!14144) (right!35191 Conc!14144) (csize!28518 Int) (cheight!14355 Int)) (Leaf!21870 (xs!17450 IArray!28293) (csize!28519 Int)) (Empty!14144) )
))
(declare-datatypes ((BalanceConc!27882 0))(
  ( (BalanceConc!27883 (c!720816 Conc!14144)) )
))
(declare-datatypes ((TokenValueInjection!15754 0))(
  ( (TokenValueInjection!15755 (toValue!10693 Int) (toChars!10552 Int)) )
))
(declare-datatypes ((Rule!15666 0))(
  ( (Rule!15667 (regex!7933 Regex!12838) (tag!8797 String!54747) (isSeparator!7933 Bool) (transformation!7933 TokenValueInjection!15754)) )
))
(declare-datatypes ((Token!14492 0))(
  ( (Token!14493 (value!246628 TokenValue!8163) (rule!11063 Rule!15666) (size!34368 Int) (originalCharacters!8277 List!47041)) )
))
(declare-datatypes ((tuple2!44494 0))(
  ( (tuple2!44495 (_1!25381 Token!14492) (_2!25381 List!47041)) )
))
(declare-datatypes ((Option!10069 0))(
  ( (None!10068) (Some!10068 (v!41022 tuple2!44494)) )
))
(declare-fun lt!1506936 () Option!10069)

(declare-fun size!34369 (List!47041) Int)

(assert (=> b!4242710 (= res!1744445 (> lt!1506934 (size!34369 (_2!25381 (v!41022 lt!1506936)))))))

(declare-fun b!4242711 () Bool)

(declare-fun res!1744434 () Bool)

(declare-fun e!2634777 () Bool)

(assert (=> b!4242711 (=> (not res!1744434) (not e!2634777))))

(declare-datatypes ((LexerInterface!7528 0))(
  ( (LexerInterfaceExt!7525 (__x!28550 Int)) (Lexer!7526) )
))
(declare-fun thiss!21540 () LexerInterface!7528)

(declare-datatypes ((List!47042 0))(
  ( (Nil!46918) (Cons!46918 (h!52338 Rule!15666) (t!351275 List!47042)) )
))
(declare-fun rules!2932 () List!47042)

(declare-fun rulesInvariant!6639 (LexerInterface!7528 List!47042) Bool)

(assert (=> b!4242711 (= res!1744434 (rulesInvariant!6639 thiss!21540 rules!2932))))

(declare-fun e!2634772 () Bool)

(declare-fun tp!1300692 () Bool)

(declare-datatypes ((List!47043 0))(
  ( (Nil!46919) (Cons!46919 (h!52339 Token!14492) (t!351276 List!47043)) )
))
(declare-fun tokens!581 () List!47043)

(declare-fun b!4242712 () Bool)

(declare-fun e!2634781 () Bool)

(declare-fun inv!61671 (String!54747) Bool)

(declare-fun inv!61674 (TokenValueInjection!15754) Bool)

(assert (=> b!4242712 (= e!2634772 (and tp!1300692 (inv!61671 (tag!8797 (rule!11063 (h!52339 tokens!581)))) (inv!61674 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) e!2634781))))

(assert (=> b!4242713 (= e!2634781 (and tp!1300699 tp!1300689))))

(declare-fun tp!1300697 () Bool)

(declare-fun e!2634791 () Bool)

(declare-fun b!4242714 () Bool)

(declare-fun e!2634786 () Bool)

(declare-fun inv!61675 (Token!14492) Bool)

(assert (=> b!4242714 (= e!2634786 (and (inv!61675 (h!52339 tokens!581)) e!2634791 tp!1300697))))

(declare-fun b!4242715 () Bool)

(declare-fun res!1744439 () Bool)

(declare-fun e!2634778 () Bool)

(assert (=> b!4242715 (=> (not res!1744439) (not e!2634778))))

(declare-fun suffix!1262 () List!47041)

(declare-fun longerInput!51 () List!47041)

(declare-datatypes ((tuple2!44496 0))(
  ( (tuple2!44497 (_1!25382 List!47043) (_2!25382 List!47041)) )
))
(declare-fun lexList!2034 (LexerInterface!7528 List!47042 List!47041) tuple2!44496)

(assert (=> b!4242715 (= res!1744439 (= (lexList!2034 thiss!21540 rules!2932 longerInput!51) (tuple2!44497 tokens!581 suffix!1262)))))

(declare-fun b!4242716 () Bool)

(declare-fun res!1744436 () Bool)

(assert (=> b!4242716 (=> (not res!1744436) (not e!2634775))))

(declare-fun shorterInput!51 () List!47041)

(declare-fun ++!11942 (List!47041 List!47041) List!47041)

(declare-fun list!16918 (BalanceConc!27882) List!47041)

(declare-fun charsOf!5283 (Token!14492) BalanceConc!27882)

(assert (=> b!4242716 (= res!1744436 (= (++!11942 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936)))) (_2!25381 (v!41022 lt!1506936))) shorterInput!51))))

(declare-fun e!2634783 () Bool)

(assert (=> b!4242717 (= e!2634783 (and tp!1300693 tp!1300698))))

(declare-fun b!4242718 () Bool)

(declare-fun e!2634773 () Bool)

(declare-fun tp_is_empty!22667 () Bool)

(declare-fun tp!1300683 () Bool)

(assert (=> b!4242718 (= e!2634773 (and tp_is_empty!22667 tp!1300683))))

(declare-fun b!4242720 () Bool)

(declare-fun addTokens!17 () List!47043)

(declare-fun lt!1506933 () Int)

(declare-fun size!34370 (List!47043) Int)

(declare-fun tail!6843 (List!47043) List!47043)

(assert (=> b!4242720 (= e!2634775 (>= (size!34370 (tail!6843 addTokens!17)) lt!1506933))))

(declare-fun e!2634793 () Bool)

(declare-fun b!4242721 () Bool)

(declare-fun tp!1300690 () Bool)

(declare-fun e!2634780 () Bool)

(assert (=> b!4242721 (= e!2634793 (and (inv!61675 (h!52339 addTokens!17)) e!2634780 tp!1300690))))

(declare-fun e!2634782 () Bool)

(assert (=> b!4242722 (= e!2634782 (and tp!1300687 tp!1300686))))

(declare-fun b!4242723 () Bool)

(declare-fun res!1744438 () Bool)

(assert (=> b!4242723 (=> (not res!1744438) (not e!2634775))))

(declare-fun lt!1506935 () Option!10069)

(assert (=> b!4242723 (= res!1744438 (= (++!11942 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935)))) (_2!25381 (v!41022 lt!1506935))) longerInput!51))))

(declare-fun e!2634784 () Bool)

(declare-fun b!4242724 () Bool)

(declare-fun tp!1300685 () Bool)

(assert (=> b!4242724 (= e!2634784 (and tp!1300685 (inv!61671 (tag!8797 (rule!11063 (h!52339 addTokens!17)))) (inv!61674 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) e!2634782))))

(declare-fun b!4242725 () Bool)

(declare-fun e!2634792 () Bool)

(assert (=> b!4242725 (= e!2634778 e!2634792)))

(declare-fun res!1744444 () Bool)

(assert (=> b!4242725 (=> (not res!1744444) (not e!2634792))))

(assert (=> b!4242725 (= res!1744444 (> lt!1506933 0))))

(assert (=> b!4242725 (= lt!1506933 (size!34370 addTokens!17))))

(declare-fun b!4242726 () Bool)

(assert (=> b!4242726 (= e!2634792 e!2634775)))

(declare-fun res!1744437 () Bool)

(assert (=> b!4242726 (=> (not res!1744437) (not e!2634775))))

(assert (=> b!4242726 (= res!1744437 (and (is-Some!10068 lt!1506935) (is-Some!10068 lt!1506936)))))

(declare-fun maxPrefix!4486 (LexerInterface!7528 List!47042 List!47041) Option!10069)

(assert (=> b!4242726 (= lt!1506936 (maxPrefix!4486 thiss!21540 rules!2932 shorterInput!51))))

(assert (=> b!4242726 (= lt!1506935 (maxPrefix!4486 thiss!21540 rules!2932 longerInput!51))))

(declare-fun b!4242727 () Bool)

(declare-fun e!2634788 () Bool)

(declare-fun tp!1300684 () Bool)

(assert (=> b!4242727 (= e!2634788 (and tp_is_empty!22667 tp!1300684))))

(declare-fun b!4242728 () Bool)

(declare-fun tp!1300696 () Bool)

(declare-fun inv!21 (TokenValue!8163) Bool)

(assert (=> b!4242728 (= e!2634791 (and (inv!21 (value!246628 (h!52339 tokens!581))) e!2634772 tp!1300696))))

(declare-fun tp!1300688 () Bool)

(declare-fun b!4242729 () Bool)

(assert (=> b!4242729 (= e!2634789 (and tp!1300688 (inv!61671 (tag!8797 (h!52338 rules!2932))) (inv!61674 (transformation!7933 (h!52338 rules!2932))) e!2634783))))

(declare-fun b!4242730 () Bool)

(declare-fun res!1744441 () Bool)

(assert (=> b!4242730 (=> (not res!1744441) (not e!2634777))))

(declare-fun isEmpty!27738 (List!47042) Bool)

(assert (=> b!4242730 (= res!1744441 (not (isEmpty!27738 rules!2932)))))

(declare-fun b!4242731 () Bool)

(declare-fun res!1744443 () Bool)

(assert (=> b!4242731 (=> (not res!1744443) (not e!2634778))))

(declare-fun isEmpty!27739 (List!47043) Bool)

(assert (=> b!4242731 (= res!1744443 (not (isEmpty!27739 addTokens!17)))))

(declare-fun b!4242732 () Bool)

(declare-fun e!2634787 () Bool)

(declare-fun tp!1300694 () Bool)

(assert (=> b!4242732 (= e!2634787 (and tp_is_empty!22667 tp!1300694))))

(declare-fun b!4242719 () Bool)

(assert (=> b!4242719 (= e!2634777 e!2634778)))

(declare-fun res!1744440 () Bool)

(assert (=> b!4242719 (=> (not res!1744440) (not e!2634778))))

(assert (=> b!4242719 (= res!1744440 (> lt!1506934 (size!34369 shorterInput!51)))))

(assert (=> b!4242719 (= lt!1506934 (size!34369 longerInput!51))))

(declare-fun res!1744435 () Bool)

(assert (=> start!406072 (=> (not res!1744435) (not e!2634777))))

(assert (=> start!406072 (= res!1744435 (is-Lexer!7526 thiss!21540))))

(assert (=> start!406072 e!2634777))

(assert (=> start!406072 true))

(assert (=> start!406072 e!2634779))

(assert (=> start!406072 e!2634793))

(assert (=> start!406072 e!2634773))

(assert (=> start!406072 e!2634788))

(assert (=> start!406072 e!2634786))

(assert (=> start!406072 e!2634787))

(declare-fun b!4242733 () Bool)

(declare-fun res!1744442 () Bool)

(assert (=> b!4242733 (=> (not res!1744442) (not e!2634777))))

(declare-fun isEmpty!27740 (List!47041) Bool)

(assert (=> b!4242733 (= res!1744442 (not (isEmpty!27740 longerInput!51)))))

(declare-fun tp!1300691 () Bool)

(declare-fun b!4242734 () Bool)

(assert (=> b!4242734 (= e!2634780 (and (inv!21 (value!246628 (h!52339 addTokens!17))) e!2634784 tp!1300691))))

(assert (= (and start!406072 res!1744435) b!4242730))

(assert (= (and b!4242730 res!1744441) b!4242711))

(assert (= (and b!4242711 res!1744434) b!4242733))

(assert (= (and b!4242733 res!1744442) b!4242719))

(assert (= (and b!4242719 res!1744440) b!4242715))

(assert (= (and b!4242715 res!1744439) b!4242731))

(assert (= (and b!4242731 res!1744443) b!4242725))

(assert (= (and b!4242725 res!1744444) b!4242726))

(assert (= (and b!4242726 res!1744437) b!4242723))

(assert (= (and b!4242723 res!1744438) b!4242716))

(assert (= (and b!4242716 res!1744436) b!4242710))

(assert (= (and b!4242710 res!1744445) b!4242720))

(assert (= b!4242729 b!4242717))

(assert (= b!4242709 b!4242729))

(assert (= (and start!406072 (is-Cons!46918 rules!2932)) b!4242709))

(assert (= b!4242724 b!4242722))

(assert (= b!4242734 b!4242724))

(assert (= b!4242721 b!4242734))

(assert (= (and start!406072 (is-Cons!46919 addTokens!17)) b!4242721))

(assert (= (and start!406072 (is-Cons!46917 shorterInput!51)) b!4242718))

(assert (= (and start!406072 (is-Cons!46917 suffix!1262)) b!4242727))

(assert (= b!4242712 b!4242713))

(assert (= b!4242728 b!4242712))

(assert (= b!4242714 b!4242728))

(assert (= (and start!406072 (is-Cons!46919 tokens!581)) b!4242714))

(assert (= (and start!406072 (is-Cons!46917 longerInput!51)) b!4242732))

(declare-fun m!4828211 () Bool)

(assert (=> b!4242733 m!4828211))

(declare-fun m!4828213 () Bool)

(assert (=> b!4242726 m!4828213))

(declare-fun m!4828215 () Bool)

(assert (=> b!4242726 m!4828215))

(declare-fun m!4828217 () Bool)

(assert (=> b!4242716 m!4828217))

(assert (=> b!4242716 m!4828217))

(declare-fun m!4828219 () Bool)

(assert (=> b!4242716 m!4828219))

(assert (=> b!4242716 m!4828219))

(declare-fun m!4828221 () Bool)

(assert (=> b!4242716 m!4828221))

(declare-fun m!4828223 () Bool)

(assert (=> b!4242719 m!4828223))

(declare-fun m!4828225 () Bool)

(assert (=> b!4242719 m!4828225))

(declare-fun m!4828227 () Bool)

(assert (=> b!4242724 m!4828227))

(declare-fun m!4828229 () Bool)

(assert (=> b!4242724 m!4828229))

(declare-fun m!4828231 () Bool)

(assert (=> b!4242725 m!4828231))

(declare-fun m!4828233 () Bool)

(assert (=> b!4242731 m!4828233))

(declare-fun m!4828235 () Bool)

(assert (=> b!4242730 m!4828235))

(declare-fun m!4828237 () Bool)

(assert (=> b!4242721 m!4828237))

(declare-fun m!4828239 () Bool)

(assert (=> b!4242734 m!4828239))

(declare-fun m!4828241 () Bool)

(assert (=> b!4242710 m!4828241))

(declare-fun m!4828243 () Bool)

(assert (=> b!4242715 m!4828243))

(declare-fun m!4828245 () Bool)

(assert (=> b!4242711 m!4828245))

(declare-fun m!4828247 () Bool)

(assert (=> b!4242723 m!4828247))

(assert (=> b!4242723 m!4828247))

(declare-fun m!4828249 () Bool)

(assert (=> b!4242723 m!4828249))

(assert (=> b!4242723 m!4828249))

(declare-fun m!4828251 () Bool)

(assert (=> b!4242723 m!4828251))

(declare-fun m!4828253 () Bool)

(assert (=> b!4242720 m!4828253))

(assert (=> b!4242720 m!4828253))

(declare-fun m!4828255 () Bool)

(assert (=> b!4242720 m!4828255))

(declare-fun m!4828257 () Bool)

(assert (=> b!4242728 m!4828257))

(declare-fun m!4828259 () Bool)

(assert (=> b!4242712 m!4828259))

(declare-fun m!4828261 () Bool)

(assert (=> b!4242712 m!4828261))

(declare-fun m!4828263 () Bool)

(assert (=> b!4242714 m!4828263))

(declare-fun m!4828265 () Bool)

(assert (=> b!4242729 m!4828265))

(declare-fun m!4828267 () Bool)

(assert (=> b!4242729 m!4828267))

(push 1)

(assert b_and!335865)

(assert (not b!4242719))

(assert (not b!4242725))

(assert (not b!4242721))

(assert (not b!4242715))

(assert (not b!4242727))

(assert b_and!335867)

(assert b_and!335863)

(assert (not b_next!126415))

(assert (not b!4242709))

(assert (not b!4242711))

(assert (not b!4242734))

(assert (not b!4242730))

(assert (not b!4242718))

(assert (not b!4242729))

(assert (not b!4242716))

(assert (not b_next!126413))

(assert (not b!4242723))

(assert (not b_next!126417))

(assert (not b_next!126411))

(assert (not b!4242720))

(assert (not b!4242724))

(assert (not b!4242732))

(assert b_and!335861)

(assert tp_is_empty!22667)

(assert (not b!4242733))

(assert (not b!4242728))

(assert (not b!4242710))

(assert (not b!4242714))

(assert (not b_next!126421))

(assert b_and!335869)

(assert (not b_next!126419))

(assert b_and!335871)

(assert (not b!4242726))

(assert (not b!4242731))

(assert (not b!4242712))

(check-sat)

(pop 1)

(push 1)

(assert b_and!335865)

(assert (not b_next!126413))

(assert b_and!335861)

(assert b_and!335867)

(assert (not b_next!126421))

(assert b_and!335863)

(assert (not b_next!126415))

(assert (not b_next!126417))

(assert (not b_next!126411))

(assert b_and!335869)

(assert (not b_next!126419))

(assert b_and!335871)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1248262 () Bool)

(declare-fun res!1744491 () Bool)

(declare-fun e!2634865 () Bool)

(assert (=> d!1248262 (=> (not res!1744491) (not e!2634865))))

(assert (=> d!1248262 (= res!1744491 (not (isEmpty!27740 (originalCharacters!8277 (h!52339 addTokens!17)))))))

(assert (=> d!1248262 (= (inv!61675 (h!52339 addTokens!17)) e!2634865)))

(declare-fun b!4242817 () Bool)

(declare-fun res!1744492 () Bool)

(assert (=> b!4242817 (=> (not res!1744492) (not e!2634865))))

(declare-fun dynLambda!20125 (Int TokenValue!8163) BalanceConc!27882)

(assert (=> b!4242817 (= res!1744492 (= (originalCharacters!8277 (h!52339 addTokens!17)) (list!16918 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (value!246628 (h!52339 addTokens!17))))))))

(declare-fun b!4242818 () Bool)

(assert (=> b!4242818 (= e!2634865 (= (size!34368 (h!52339 addTokens!17)) (size!34369 (originalCharacters!8277 (h!52339 addTokens!17)))))))

(assert (= (and d!1248262 res!1744491) b!4242817))

(assert (= (and b!4242817 res!1744492) b!4242818))

(declare-fun b_lambda!124955 () Bool)

(assert (=> (not b_lambda!124955) (not b!4242817)))

(declare-fun t!351282 () Bool)

(declare-fun tb!255419 () Bool)

(assert (=> (and b!4242722 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))) t!351282) tb!255419))

(declare-fun b!4242823 () Bool)

(declare-fun e!2634868 () Bool)

(declare-fun tp!1300753 () Bool)

(declare-fun inv!61678 (Conc!14144) Bool)

(assert (=> b!4242823 (= e!2634868 (and (inv!61678 (c!720816 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (value!246628 (h!52339 addTokens!17))))) tp!1300753))))

(declare-fun result!311440 () Bool)

(declare-fun inv!61679 (BalanceConc!27882) Bool)

(assert (=> tb!255419 (= result!311440 (and (inv!61679 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (value!246628 (h!52339 addTokens!17)))) e!2634868))))

(assert (= tb!255419 b!4242823))

(declare-fun m!4828327 () Bool)

(assert (=> b!4242823 m!4828327))

(declare-fun m!4828329 () Bool)

(assert (=> tb!255419 m!4828329))

(assert (=> b!4242817 t!351282))

(declare-fun b_and!335885 () Bool)

(assert (= b_and!335863 (and (=> t!351282 result!311440) b_and!335885)))

(declare-fun t!351284 () Bool)

(declare-fun tb!255421 () Bool)

(assert (=> (and b!4242713 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))) t!351284) tb!255421))

(declare-fun result!311444 () Bool)

(assert (= result!311444 result!311440))

(assert (=> b!4242817 t!351284))

(declare-fun b_and!335887 () Bool)

(assert (= b_and!335867 (and (=> t!351284 result!311444) b_and!335887)))

(declare-fun t!351286 () Bool)

(declare-fun tb!255423 () Bool)

(assert (=> (and b!4242717 (= (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))) t!351286) tb!255423))

(declare-fun result!311446 () Bool)

(assert (= result!311446 result!311440))

(assert (=> b!4242817 t!351286))

(declare-fun b_and!335889 () Bool)

(assert (= b_and!335871 (and (=> t!351286 result!311446) b_and!335889)))

(declare-fun m!4828331 () Bool)

(assert (=> d!1248262 m!4828331))

(declare-fun m!4828333 () Bool)

(assert (=> b!4242817 m!4828333))

(assert (=> b!4242817 m!4828333))

(declare-fun m!4828335 () Bool)

(assert (=> b!4242817 m!4828335))

(declare-fun m!4828337 () Bool)

(assert (=> b!4242818 m!4828337))

(assert (=> b!4242721 d!1248262))

(declare-fun d!1248264 () Bool)

(declare-fun lt!1506951 () Int)

(assert (=> d!1248264 (>= lt!1506951 0)))

(declare-fun e!2634871 () Int)

(assert (=> d!1248264 (= lt!1506951 e!2634871)))

(declare-fun c!720822 () Bool)

(assert (=> d!1248264 (= c!720822 (is-Nil!46917 (_2!25381 (v!41022 lt!1506936))))))

(assert (=> d!1248264 (= (size!34369 (_2!25381 (v!41022 lt!1506936))) lt!1506951)))

(declare-fun b!4242828 () Bool)

(assert (=> b!4242828 (= e!2634871 0)))

(declare-fun b!4242829 () Bool)

(assert (=> b!4242829 (= e!2634871 (+ 1 (size!34369 (t!351274 (_2!25381 (v!41022 lt!1506936))))))))

(assert (= (and d!1248264 c!720822) b!4242828))

(assert (= (and d!1248264 (not c!720822)) b!4242829))

(declare-fun m!4828339 () Bool)

(assert (=> b!4242829 m!4828339))

(assert (=> b!4242710 d!1248264))

(declare-fun d!1248266 () Bool)

(assert (=> d!1248266 (= (isEmpty!27739 addTokens!17) (is-Nil!46919 addTokens!17))))

(assert (=> b!4242731 d!1248266))

(declare-fun d!1248268 () Bool)

(declare-fun lt!1506954 () Int)

(assert (=> d!1248268 (>= lt!1506954 0)))

(declare-fun e!2634874 () Int)

(assert (=> d!1248268 (= lt!1506954 e!2634874)))

(declare-fun c!720825 () Bool)

(assert (=> d!1248268 (= c!720825 (is-Nil!46919 (tail!6843 addTokens!17)))))

(assert (=> d!1248268 (= (size!34370 (tail!6843 addTokens!17)) lt!1506954)))

(declare-fun b!4242834 () Bool)

(assert (=> b!4242834 (= e!2634874 0)))

(declare-fun b!4242835 () Bool)

(assert (=> b!4242835 (= e!2634874 (+ 1 (size!34370 (t!351276 (tail!6843 addTokens!17)))))))

(assert (= (and d!1248268 c!720825) b!4242834))

(assert (= (and d!1248268 (not c!720825)) b!4242835))

(declare-fun m!4828341 () Bool)

(assert (=> b!4242835 m!4828341))

(assert (=> b!4242720 d!1248268))

(declare-fun d!1248270 () Bool)

(assert (=> d!1248270 (= (tail!6843 addTokens!17) (t!351276 addTokens!17))))

(assert (=> b!4242720 d!1248270))

(declare-fun d!1248272 () Bool)

(assert (=> d!1248272 (= (isEmpty!27738 rules!2932) (is-Nil!46918 rules!2932))))

(assert (=> b!4242730 d!1248272))

(declare-fun d!1248274 () Bool)

(declare-fun lt!1506955 () Int)

(assert (=> d!1248274 (>= lt!1506955 0)))

(declare-fun e!2634875 () Int)

(assert (=> d!1248274 (= lt!1506955 e!2634875)))

(declare-fun c!720826 () Bool)

(assert (=> d!1248274 (= c!720826 (is-Nil!46917 shorterInput!51))))

(assert (=> d!1248274 (= (size!34369 shorterInput!51) lt!1506955)))

(declare-fun b!4242836 () Bool)

(assert (=> b!4242836 (= e!2634875 0)))

(declare-fun b!4242837 () Bool)

(assert (=> b!4242837 (= e!2634875 (+ 1 (size!34369 (t!351274 shorterInput!51))))))

(assert (= (and d!1248274 c!720826) b!4242836))

(assert (= (and d!1248274 (not c!720826)) b!4242837))

(declare-fun m!4828343 () Bool)

(assert (=> b!4242837 m!4828343))

(assert (=> b!4242719 d!1248274))

(declare-fun d!1248276 () Bool)

(declare-fun lt!1506956 () Int)

(assert (=> d!1248276 (>= lt!1506956 0)))

(declare-fun e!2634876 () Int)

(assert (=> d!1248276 (= lt!1506956 e!2634876)))

(declare-fun c!720827 () Bool)

(assert (=> d!1248276 (= c!720827 (is-Nil!46917 longerInput!51))))

(assert (=> d!1248276 (= (size!34369 longerInput!51) lt!1506956)))

(declare-fun b!4242838 () Bool)

(assert (=> b!4242838 (= e!2634876 0)))

(declare-fun b!4242839 () Bool)

(assert (=> b!4242839 (= e!2634876 (+ 1 (size!34369 (t!351274 longerInput!51))))))

(assert (= (and d!1248276 c!720827) b!4242838))

(assert (= (and d!1248276 (not c!720827)) b!4242839))

(declare-fun m!4828345 () Bool)

(assert (=> b!4242839 m!4828345))

(assert (=> b!4242719 d!1248276))

(declare-fun d!1248278 () Bool)

(assert (=> d!1248278 (= (inv!61671 (tag!8797 (h!52338 rules!2932))) (= (mod (str.len (value!246627 (tag!8797 (h!52338 rules!2932)))) 2) 0))))

(assert (=> b!4242729 d!1248278))

(declare-fun d!1248280 () Bool)

(declare-fun res!1744496 () Bool)

(declare-fun e!2634879 () Bool)

(assert (=> d!1248280 (=> (not res!1744496) (not e!2634879))))

(declare-fun semiInverseModEq!3454 (Int Int) Bool)

(assert (=> d!1248280 (= res!1744496 (semiInverseModEq!3454 (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toValue!10693 (transformation!7933 (h!52338 rules!2932)))))))

(assert (=> d!1248280 (= (inv!61674 (transformation!7933 (h!52338 rules!2932))) e!2634879)))

(declare-fun b!4242842 () Bool)

(declare-fun equivClasses!3353 (Int Int) Bool)

(assert (=> b!4242842 (= e!2634879 (equivClasses!3353 (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toValue!10693 (transformation!7933 (h!52338 rules!2932)))))))

(assert (= (and d!1248280 res!1744496) b!4242842))

(declare-fun m!4828347 () Bool)

(assert (=> d!1248280 m!4828347))

(declare-fun m!4828349 () Bool)

(assert (=> b!4242842 m!4828349))

(assert (=> b!4242729 d!1248280))

(declare-fun b!4242853 () Bool)

(declare-fun e!2634888 () Bool)

(declare-fun e!2634887 () Bool)

(assert (=> b!4242853 (= e!2634888 e!2634887)))

(declare-fun c!720832 () Bool)

(assert (=> b!4242853 (= c!720832 (is-IntegerValue!24490 (value!246628 (h!52339 tokens!581))))))

(declare-fun b!4242855 () Bool)

(declare-fun e!2634886 () Bool)

(declare-fun inv!15 (TokenValue!8163) Bool)

(assert (=> b!4242855 (= e!2634886 (inv!15 (value!246628 (h!52339 tokens!581))))))

(declare-fun b!4242856 () Bool)

(declare-fun res!1744499 () Bool)

(assert (=> b!4242856 (=> res!1744499 e!2634886)))

(assert (=> b!4242856 (= res!1744499 (not (is-IntegerValue!24491 (value!246628 (h!52339 tokens!581)))))))

(assert (=> b!4242856 (= e!2634887 e!2634886)))

(declare-fun b!4242857 () Bool)

(declare-fun inv!16 (TokenValue!8163) Bool)

(assert (=> b!4242857 (= e!2634888 (inv!16 (value!246628 (h!52339 tokens!581))))))

(declare-fun b!4242854 () Bool)

(declare-fun inv!17 (TokenValue!8163) Bool)

(assert (=> b!4242854 (= e!2634887 (inv!17 (value!246628 (h!52339 tokens!581))))))

(declare-fun d!1248282 () Bool)

(declare-fun c!720833 () Bool)

(assert (=> d!1248282 (= c!720833 (is-IntegerValue!24489 (value!246628 (h!52339 tokens!581))))))

(assert (=> d!1248282 (= (inv!21 (value!246628 (h!52339 tokens!581))) e!2634888)))

(assert (= (and d!1248282 c!720833) b!4242857))

(assert (= (and d!1248282 (not c!720833)) b!4242853))

(assert (= (and b!4242853 c!720832) b!4242854))

(assert (= (and b!4242853 (not c!720832)) b!4242856))

(assert (= (and b!4242856 (not res!1744499)) b!4242855))

(declare-fun m!4828351 () Bool)

(assert (=> b!4242855 m!4828351))

(declare-fun m!4828353 () Bool)

(assert (=> b!4242857 m!4828353))

(declare-fun m!4828355 () Bool)

(assert (=> b!4242854 m!4828355))

(assert (=> b!4242728 d!1248282))

(declare-fun b!4242870 () Bool)

(declare-fun e!2634896 () List!47041)

(assert (=> b!4242870 (= e!2634896 (Cons!46917 (h!52337 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936))))) (++!11942 (t!351274 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936))))) (_2!25381 (v!41022 lt!1506936)))))))

(declare-fun b!4242869 () Bool)

(assert (=> b!4242869 (= e!2634896 (_2!25381 (v!41022 lt!1506936)))))

(declare-fun d!1248292 () Bool)

(declare-fun e!2634897 () Bool)

(assert (=> d!1248292 e!2634897))

(declare-fun res!1744508 () Bool)

(assert (=> d!1248292 (=> (not res!1744508) (not e!2634897))))

(declare-fun lt!1506959 () List!47041)

(declare-fun content!7378 (List!47041) (Set C!25874))

(assert (=> d!1248292 (= res!1744508 (= (content!7378 lt!1506959) (set.union (content!7378 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936))))) (content!7378 (_2!25381 (v!41022 lt!1506936))))))))

(assert (=> d!1248292 (= lt!1506959 e!2634896)))

(declare-fun c!720836 () Bool)

(assert (=> d!1248292 (= c!720836 (is-Nil!46917 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936))))))))

(assert (=> d!1248292 (= (++!11942 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936)))) (_2!25381 (v!41022 lt!1506936))) lt!1506959)))

(declare-fun b!4242871 () Bool)

(declare-fun res!1744507 () Bool)

(assert (=> b!4242871 (=> (not res!1744507) (not e!2634897))))

(assert (=> b!4242871 (= res!1744507 (= (size!34369 lt!1506959) (+ (size!34369 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936))))) (size!34369 (_2!25381 (v!41022 lt!1506936))))))))

(declare-fun b!4242872 () Bool)

(assert (=> b!4242872 (= e!2634897 (or (not (= (_2!25381 (v!41022 lt!1506936)) Nil!46917)) (= lt!1506959 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936)))))))))

(assert (= (and d!1248292 c!720836) b!4242869))

(assert (= (and d!1248292 (not c!720836)) b!4242870))

(assert (= (and d!1248292 res!1744508) b!4242871))

(assert (= (and b!4242871 res!1744507) b!4242872))

(declare-fun m!4828361 () Bool)

(assert (=> b!4242870 m!4828361))

(declare-fun m!4828363 () Bool)

(assert (=> d!1248292 m!4828363))

(assert (=> d!1248292 m!4828219))

(declare-fun m!4828365 () Bool)

(assert (=> d!1248292 m!4828365))

(declare-fun m!4828367 () Bool)

(assert (=> d!1248292 m!4828367))

(declare-fun m!4828369 () Bool)

(assert (=> b!4242871 m!4828369))

(assert (=> b!4242871 m!4828219))

(declare-fun m!4828371 () Bool)

(assert (=> b!4242871 m!4828371))

(assert (=> b!4242871 m!4828241))

(assert (=> b!4242716 d!1248292))

(declare-fun d!1248296 () Bool)

(declare-fun list!16920 (Conc!14144) List!47041)

(assert (=> d!1248296 (= (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506936)))) (list!16920 (c!720816 (charsOf!5283 (_1!25381 (v!41022 lt!1506936))))))))

(declare-fun bs!598450 () Bool)

(assert (= bs!598450 d!1248296))

(declare-fun m!4828373 () Bool)

(assert (=> bs!598450 m!4828373))

(assert (=> b!4242716 d!1248296))

(declare-fun d!1248298 () Bool)

(declare-fun lt!1506965 () BalanceConc!27882)

(assert (=> d!1248298 (= (list!16918 lt!1506965) (originalCharacters!8277 (_1!25381 (v!41022 lt!1506936))))))

(assert (=> d!1248298 (= lt!1506965 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936))))) (value!246628 (_1!25381 (v!41022 lt!1506936)))))))

(assert (=> d!1248298 (= (charsOf!5283 (_1!25381 (v!41022 lt!1506936))) lt!1506965)))

(declare-fun b_lambda!124957 () Bool)

(assert (=> (not b_lambda!124957) (not d!1248298)))

(declare-fun tb!255425 () Bool)

(declare-fun t!351288 () Bool)

(assert (=> (and b!4242722 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936)))))) t!351288) tb!255425))

(declare-fun b!4242879 () Bool)

(declare-fun e!2634901 () Bool)

(declare-fun tp!1300754 () Bool)

(assert (=> b!4242879 (= e!2634901 (and (inv!61678 (c!720816 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936))))) (value!246628 (_1!25381 (v!41022 lt!1506936)))))) tp!1300754))))

(declare-fun result!311448 () Bool)

(assert (=> tb!255425 (= result!311448 (and (inv!61679 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936))))) (value!246628 (_1!25381 (v!41022 lt!1506936))))) e!2634901))))

(assert (= tb!255425 b!4242879))

(declare-fun m!4828377 () Bool)

(assert (=> b!4242879 m!4828377))

(declare-fun m!4828379 () Bool)

(assert (=> tb!255425 m!4828379))

(assert (=> d!1248298 t!351288))

(declare-fun b_and!335891 () Bool)

(assert (= b_and!335885 (and (=> t!351288 result!311448) b_and!335891)))

(declare-fun t!351290 () Bool)

(declare-fun tb!255427 () Bool)

(assert (=> (and b!4242713 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936)))))) t!351290) tb!255427))

(declare-fun result!311450 () Bool)

(assert (= result!311450 result!311448))

(assert (=> d!1248298 t!351290))

(declare-fun b_and!335893 () Bool)

(assert (= b_and!335887 (and (=> t!351290 result!311450) b_and!335893)))

(declare-fun tb!255429 () Bool)

(declare-fun t!351292 () Bool)

(assert (=> (and b!4242717 (= (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936)))))) t!351292) tb!255429))

(declare-fun result!311452 () Bool)

(assert (= result!311452 result!311448))

(assert (=> d!1248298 t!351292))

(declare-fun b_and!335895 () Bool)

(assert (= b_and!335889 (and (=> t!351292 result!311452) b_and!335895)))

(declare-fun m!4828381 () Bool)

(assert (=> d!1248298 m!4828381))

(declare-fun m!4828383 () Bool)

(assert (=> d!1248298 m!4828383))

(assert (=> b!4242716 d!1248298))

(declare-fun bm!293856 () Bool)

(declare-fun call!293861 () Option!10069)

(declare-fun maxPrefixOneRule!3451 (LexerInterface!7528 Rule!15666 List!47041) Option!10069)

(assert (=> bm!293856 (= call!293861 (maxPrefixOneRule!3451 thiss!21540 (h!52338 rules!2932) shorterInput!51))))

(declare-fun b!4242912 () Bool)

(declare-fun e!2634917 () Option!10069)

(assert (=> b!4242912 (= e!2634917 call!293861)))

(declare-fun b!4242913 () Bool)

(declare-fun e!2634916 () Bool)

(declare-fun e!2634918 () Bool)

(assert (=> b!4242913 (= e!2634916 e!2634918)))

(declare-fun res!1744535 () Bool)

(assert (=> b!4242913 (=> (not res!1744535) (not e!2634918))))

(declare-fun lt!1506979 () Option!10069)

(declare-fun isDefined!7441 (Option!10069) Bool)

(assert (=> b!4242913 (= res!1744535 (isDefined!7441 lt!1506979))))

(declare-fun b!4242914 () Bool)

(declare-fun lt!1506978 () Option!10069)

(declare-fun lt!1506980 () Option!10069)

(assert (=> b!4242914 (= e!2634917 (ite (and (is-None!10068 lt!1506978) (is-None!10068 lt!1506980)) None!10068 (ite (is-None!10068 lt!1506980) lt!1506978 (ite (is-None!10068 lt!1506978) lt!1506980 (ite (>= (size!34368 (_1!25381 (v!41022 lt!1506978))) (size!34368 (_1!25381 (v!41022 lt!1506980)))) lt!1506978 lt!1506980)))))))

(assert (=> b!4242914 (= lt!1506978 call!293861)))

(assert (=> b!4242914 (= lt!1506980 (maxPrefix!4486 thiss!21540 (t!351275 rules!2932) shorterInput!51))))

(declare-fun d!1248304 () Bool)

(assert (=> d!1248304 e!2634916))

(declare-fun res!1744533 () Bool)

(assert (=> d!1248304 (=> res!1744533 e!2634916)))

(declare-fun isEmpty!27744 (Option!10069) Bool)

(assert (=> d!1248304 (= res!1744533 (isEmpty!27744 lt!1506979))))

(assert (=> d!1248304 (= lt!1506979 e!2634917)))

(declare-fun c!720842 () Bool)

(assert (=> d!1248304 (= c!720842 (and (is-Cons!46918 rules!2932) (is-Nil!46918 (t!351275 rules!2932))))))

(declare-datatypes ((Unit!65983 0))(
  ( (Unit!65984) )
))
(declare-fun lt!1506976 () Unit!65983)

(declare-fun lt!1506977 () Unit!65983)

(assert (=> d!1248304 (= lt!1506976 lt!1506977)))

(declare-fun isPrefix!4726 (List!47041 List!47041) Bool)

(assert (=> d!1248304 (isPrefix!4726 shorterInput!51 shorterInput!51)))

(declare-fun lemmaIsPrefixRefl!3123 (List!47041 List!47041) Unit!65983)

(assert (=> d!1248304 (= lt!1506977 (lemmaIsPrefixRefl!3123 shorterInput!51 shorterInput!51))))

(declare-fun rulesValidInductive!2975 (LexerInterface!7528 List!47042) Bool)

(assert (=> d!1248304 (rulesValidInductive!2975 thiss!21540 rules!2932)))

(assert (=> d!1248304 (= (maxPrefix!4486 thiss!21540 rules!2932 shorterInput!51) lt!1506979)))

(declare-fun b!4242915 () Bool)

(declare-fun res!1744536 () Bool)

(assert (=> b!4242915 (=> (not res!1744536) (not e!2634918))))

(declare-fun matchR!6448 (Regex!12838 List!47041) Bool)

(declare-fun get!15250 (Option!10069) tuple2!44494)

(assert (=> b!4242915 (= res!1744536 (matchR!6448 (regex!7933 (rule!11063 (_1!25381 (get!15250 lt!1506979)))) (list!16918 (charsOf!5283 (_1!25381 (get!15250 lt!1506979))))))))

(declare-fun b!4242916 () Bool)

(declare-fun res!1744531 () Bool)

(assert (=> b!4242916 (=> (not res!1744531) (not e!2634918))))

(declare-fun apply!10753 (TokenValueInjection!15754 BalanceConc!27882) TokenValue!8163)

(declare-fun seqFromList!5813 (List!47041) BalanceConc!27882)

(assert (=> b!4242916 (= res!1744531 (= (value!246628 (_1!25381 (get!15250 lt!1506979))) (apply!10753 (transformation!7933 (rule!11063 (_1!25381 (get!15250 lt!1506979)))) (seqFromList!5813 (originalCharacters!8277 (_1!25381 (get!15250 lt!1506979)))))))))

(declare-fun b!4242917 () Bool)

(declare-fun res!1744537 () Bool)

(assert (=> b!4242917 (=> (not res!1744537) (not e!2634918))))

(assert (=> b!4242917 (= res!1744537 (= (++!11942 (list!16918 (charsOf!5283 (_1!25381 (get!15250 lt!1506979)))) (_2!25381 (get!15250 lt!1506979))) shorterInput!51))))

(declare-fun b!4242918 () Bool)

(declare-fun contains!9732 (List!47042 Rule!15666) Bool)

(assert (=> b!4242918 (= e!2634918 (contains!9732 rules!2932 (rule!11063 (_1!25381 (get!15250 lt!1506979)))))))

(declare-fun b!4242919 () Bool)

(declare-fun res!1744534 () Bool)

(assert (=> b!4242919 (=> (not res!1744534) (not e!2634918))))

(assert (=> b!4242919 (= res!1744534 (< (size!34369 (_2!25381 (get!15250 lt!1506979))) (size!34369 shorterInput!51)))))

(declare-fun b!4242920 () Bool)

(declare-fun res!1744532 () Bool)

(assert (=> b!4242920 (=> (not res!1744532) (not e!2634918))))

(assert (=> b!4242920 (= res!1744532 (= (list!16918 (charsOf!5283 (_1!25381 (get!15250 lt!1506979)))) (originalCharacters!8277 (_1!25381 (get!15250 lt!1506979)))))))

(assert (= (and d!1248304 c!720842) b!4242912))

(assert (= (and d!1248304 (not c!720842)) b!4242914))

(assert (= (or b!4242912 b!4242914) bm!293856))

(assert (= (and d!1248304 (not res!1744533)) b!4242913))

(assert (= (and b!4242913 res!1744535) b!4242920))

(assert (= (and b!4242920 res!1744532) b!4242919))

(assert (= (and b!4242919 res!1744534) b!4242917))

(assert (= (and b!4242917 res!1744537) b!4242916))

(assert (= (and b!4242916 res!1744531) b!4242915))

(assert (= (and b!4242915 res!1744536) b!4242918))

(declare-fun m!4828409 () Bool)

(assert (=> b!4242919 m!4828409))

(declare-fun m!4828411 () Bool)

(assert (=> b!4242919 m!4828411))

(assert (=> b!4242919 m!4828223))

(declare-fun m!4828413 () Bool)

(assert (=> d!1248304 m!4828413))

(declare-fun m!4828415 () Bool)

(assert (=> d!1248304 m!4828415))

(declare-fun m!4828417 () Bool)

(assert (=> d!1248304 m!4828417))

(declare-fun m!4828419 () Bool)

(assert (=> d!1248304 m!4828419))

(declare-fun m!4828421 () Bool)

(assert (=> b!4242914 m!4828421))

(assert (=> b!4242917 m!4828409))

(declare-fun m!4828423 () Bool)

(assert (=> b!4242917 m!4828423))

(assert (=> b!4242917 m!4828423))

(declare-fun m!4828425 () Bool)

(assert (=> b!4242917 m!4828425))

(assert (=> b!4242917 m!4828425))

(declare-fun m!4828427 () Bool)

(assert (=> b!4242917 m!4828427))

(declare-fun m!4828429 () Bool)

(assert (=> bm!293856 m!4828429))

(declare-fun m!4828431 () Bool)

(assert (=> b!4242913 m!4828431))

(assert (=> b!4242916 m!4828409))

(declare-fun m!4828433 () Bool)

(assert (=> b!4242916 m!4828433))

(assert (=> b!4242916 m!4828433))

(declare-fun m!4828435 () Bool)

(assert (=> b!4242916 m!4828435))

(assert (=> b!4242915 m!4828409))

(assert (=> b!4242915 m!4828423))

(assert (=> b!4242915 m!4828423))

(assert (=> b!4242915 m!4828425))

(assert (=> b!4242915 m!4828425))

(declare-fun m!4828437 () Bool)

(assert (=> b!4242915 m!4828437))

(assert (=> b!4242920 m!4828409))

(assert (=> b!4242920 m!4828423))

(assert (=> b!4242920 m!4828423))

(assert (=> b!4242920 m!4828425))

(assert (=> b!4242918 m!4828409))

(declare-fun m!4828439 () Bool)

(assert (=> b!4242918 m!4828439))

(assert (=> b!4242726 d!1248304))

(declare-fun call!293862 () Option!10069)

(declare-fun bm!293857 () Bool)

(assert (=> bm!293857 (= call!293862 (maxPrefixOneRule!3451 thiss!21540 (h!52338 rules!2932) longerInput!51))))

(declare-fun b!4242921 () Bool)

(declare-fun e!2634920 () Option!10069)

(assert (=> b!4242921 (= e!2634920 call!293862)))

(declare-fun b!4242922 () Bool)

(declare-fun e!2634919 () Bool)

(declare-fun e!2634921 () Bool)

(assert (=> b!4242922 (= e!2634919 e!2634921)))

(declare-fun res!1744542 () Bool)

(assert (=> b!4242922 (=> (not res!1744542) (not e!2634921))))

(declare-fun lt!1506984 () Option!10069)

(assert (=> b!4242922 (= res!1744542 (isDefined!7441 lt!1506984))))

(declare-fun b!4242923 () Bool)

(declare-fun lt!1506983 () Option!10069)

(declare-fun lt!1506985 () Option!10069)

(assert (=> b!4242923 (= e!2634920 (ite (and (is-None!10068 lt!1506983) (is-None!10068 lt!1506985)) None!10068 (ite (is-None!10068 lt!1506985) lt!1506983 (ite (is-None!10068 lt!1506983) lt!1506985 (ite (>= (size!34368 (_1!25381 (v!41022 lt!1506983))) (size!34368 (_1!25381 (v!41022 lt!1506985)))) lt!1506983 lt!1506985)))))))

(assert (=> b!4242923 (= lt!1506983 call!293862)))

(assert (=> b!4242923 (= lt!1506985 (maxPrefix!4486 thiss!21540 (t!351275 rules!2932) longerInput!51))))

(declare-fun d!1248310 () Bool)

(assert (=> d!1248310 e!2634919))

(declare-fun res!1744540 () Bool)

(assert (=> d!1248310 (=> res!1744540 e!2634919)))

(assert (=> d!1248310 (= res!1744540 (isEmpty!27744 lt!1506984))))

(assert (=> d!1248310 (= lt!1506984 e!2634920)))

(declare-fun c!720843 () Bool)

(assert (=> d!1248310 (= c!720843 (and (is-Cons!46918 rules!2932) (is-Nil!46918 (t!351275 rules!2932))))))

(declare-fun lt!1506981 () Unit!65983)

(declare-fun lt!1506982 () Unit!65983)

(assert (=> d!1248310 (= lt!1506981 lt!1506982)))

(assert (=> d!1248310 (isPrefix!4726 longerInput!51 longerInput!51)))

(assert (=> d!1248310 (= lt!1506982 (lemmaIsPrefixRefl!3123 longerInput!51 longerInput!51))))

(assert (=> d!1248310 (rulesValidInductive!2975 thiss!21540 rules!2932)))

(assert (=> d!1248310 (= (maxPrefix!4486 thiss!21540 rules!2932 longerInput!51) lt!1506984)))

(declare-fun b!4242924 () Bool)

(declare-fun res!1744543 () Bool)

(assert (=> b!4242924 (=> (not res!1744543) (not e!2634921))))

(assert (=> b!4242924 (= res!1744543 (matchR!6448 (regex!7933 (rule!11063 (_1!25381 (get!15250 lt!1506984)))) (list!16918 (charsOf!5283 (_1!25381 (get!15250 lt!1506984))))))))

(declare-fun b!4242925 () Bool)

(declare-fun res!1744538 () Bool)

(assert (=> b!4242925 (=> (not res!1744538) (not e!2634921))))

(assert (=> b!4242925 (= res!1744538 (= (value!246628 (_1!25381 (get!15250 lt!1506984))) (apply!10753 (transformation!7933 (rule!11063 (_1!25381 (get!15250 lt!1506984)))) (seqFromList!5813 (originalCharacters!8277 (_1!25381 (get!15250 lt!1506984)))))))))

(declare-fun b!4242926 () Bool)

(declare-fun res!1744544 () Bool)

(assert (=> b!4242926 (=> (not res!1744544) (not e!2634921))))

(assert (=> b!4242926 (= res!1744544 (= (++!11942 (list!16918 (charsOf!5283 (_1!25381 (get!15250 lt!1506984)))) (_2!25381 (get!15250 lt!1506984))) longerInput!51))))

(declare-fun b!4242927 () Bool)

(assert (=> b!4242927 (= e!2634921 (contains!9732 rules!2932 (rule!11063 (_1!25381 (get!15250 lt!1506984)))))))

(declare-fun b!4242928 () Bool)

(declare-fun res!1744541 () Bool)

(assert (=> b!4242928 (=> (not res!1744541) (not e!2634921))))

(assert (=> b!4242928 (= res!1744541 (< (size!34369 (_2!25381 (get!15250 lt!1506984))) (size!34369 longerInput!51)))))

(declare-fun b!4242929 () Bool)

(declare-fun res!1744539 () Bool)

(assert (=> b!4242929 (=> (not res!1744539) (not e!2634921))))

(assert (=> b!4242929 (= res!1744539 (= (list!16918 (charsOf!5283 (_1!25381 (get!15250 lt!1506984)))) (originalCharacters!8277 (_1!25381 (get!15250 lt!1506984)))))))

(assert (= (and d!1248310 c!720843) b!4242921))

(assert (= (and d!1248310 (not c!720843)) b!4242923))

(assert (= (or b!4242921 b!4242923) bm!293857))

(assert (= (and d!1248310 (not res!1744540)) b!4242922))

(assert (= (and b!4242922 res!1744542) b!4242929))

(assert (= (and b!4242929 res!1744539) b!4242928))

(assert (= (and b!4242928 res!1744541) b!4242926))

(assert (= (and b!4242926 res!1744544) b!4242925))

(assert (= (and b!4242925 res!1744538) b!4242924))

(assert (= (and b!4242924 res!1744543) b!4242927))

(declare-fun m!4828441 () Bool)

(assert (=> b!4242928 m!4828441))

(declare-fun m!4828443 () Bool)

(assert (=> b!4242928 m!4828443))

(assert (=> b!4242928 m!4828225))

(declare-fun m!4828445 () Bool)

(assert (=> d!1248310 m!4828445))

(declare-fun m!4828447 () Bool)

(assert (=> d!1248310 m!4828447))

(declare-fun m!4828449 () Bool)

(assert (=> d!1248310 m!4828449))

(assert (=> d!1248310 m!4828419))

(declare-fun m!4828451 () Bool)

(assert (=> b!4242923 m!4828451))

(assert (=> b!4242926 m!4828441))

(declare-fun m!4828453 () Bool)

(assert (=> b!4242926 m!4828453))

(assert (=> b!4242926 m!4828453))

(declare-fun m!4828455 () Bool)

(assert (=> b!4242926 m!4828455))

(assert (=> b!4242926 m!4828455))

(declare-fun m!4828457 () Bool)

(assert (=> b!4242926 m!4828457))

(declare-fun m!4828459 () Bool)

(assert (=> bm!293857 m!4828459))

(declare-fun m!4828461 () Bool)

(assert (=> b!4242922 m!4828461))

(assert (=> b!4242925 m!4828441))

(declare-fun m!4828463 () Bool)

(assert (=> b!4242925 m!4828463))

(assert (=> b!4242925 m!4828463))

(declare-fun m!4828465 () Bool)

(assert (=> b!4242925 m!4828465))

(assert (=> b!4242924 m!4828441))

(assert (=> b!4242924 m!4828453))

(assert (=> b!4242924 m!4828453))

(assert (=> b!4242924 m!4828455))

(assert (=> b!4242924 m!4828455))

(declare-fun m!4828467 () Bool)

(assert (=> b!4242924 m!4828467))

(assert (=> b!4242929 m!4828441))

(assert (=> b!4242929 m!4828453))

(assert (=> b!4242929 m!4828453))

(assert (=> b!4242929 m!4828455))

(assert (=> b!4242927 m!4828441))

(declare-fun m!4828469 () Bool)

(assert (=> b!4242927 m!4828469))

(assert (=> b!4242726 d!1248310))

(declare-fun b!4242940 () Bool)

(declare-fun e!2634930 () Bool)

(declare-fun e!2634928 () Bool)

(assert (=> b!4242940 (= e!2634930 e!2634928)))

(declare-fun res!1744547 () Bool)

(declare-fun lt!1506993 () tuple2!44496)

(assert (=> b!4242940 (= res!1744547 (< (size!34369 (_2!25382 lt!1506993)) (size!34369 longerInput!51)))))

(assert (=> b!4242940 (=> (not res!1744547) (not e!2634928))))

(declare-fun d!1248312 () Bool)

(assert (=> d!1248312 e!2634930))

(declare-fun c!720849 () Bool)

(assert (=> d!1248312 (= c!720849 (> (size!34370 (_1!25382 lt!1506993)) 0))))

(declare-fun e!2634929 () tuple2!44496)

(assert (=> d!1248312 (= lt!1506993 e!2634929)))

(declare-fun c!720848 () Bool)

(declare-fun lt!1506994 () Option!10069)

(assert (=> d!1248312 (= c!720848 (is-Some!10068 lt!1506994))))

(assert (=> d!1248312 (= lt!1506994 (maxPrefix!4486 thiss!21540 rules!2932 longerInput!51))))

(assert (=> d!1248312 (= (lexList!2034 thiss!21540 rules!2932 longerInput!51) lt!1506993)))

(declare-fun b!4242941 () Bool)

(declare-fun lt!1506992 () tuple2!44496)

(assert (=> b!4242941 (= e!2634929 (tuple2!44497 (Cons!46919 (_1!25381 (v!41022 lt!1506994)) (_1!25382 lt!1506992)) (_2!25382 lt!1506992)))))

(assert (=> b!4242941 (= lt!1506992 (lexList!2034 thiss!21540 rules!2932 (_2!25381 (v!41022 lt!1506994))))))

(declare-fun b!4242942 () Bool)

(assert (=> b!4242942 (= e!2634930 (= (_2!25382 lt!1506993) longerInput!51))))

(declare-fun b!4242943 () Bool)

(assert (=> b!4242943 (= e!2634929 (tuple2!44497 Nil!46919 longerInput!51))))

(declare-fun b!4242944 () Bool)

(assert (=> b!4242944 (= e!2634928 (not (isEmpty!27739 (_1!25382 lt!1506993))))))

(assert (= (and d!1248312 c!720848) b!4242941))

(assert (= (and d!1248312 (not c!720848)) b!4242943))

(assert (= (and d!1248312 c!720849) b!4242940))

(assert (= (and d!1248312 (not c!720849)) b!4242942))

(assert (= (and b!4242940 res!1744547) b!4242944))

(declare-fun m!4828471 () Bool)

(assert (=> b!4242940 m!4828471))

(assert (=> b!4242940 m!4828225))

(declare-fun m!4828473 () Bool)

(assert (=> d!1248312 m!4828473))

(assert (=> d!1248312 m!4828215))

(declare-fun m!4828475 () Bool)

(assert (=> b!4242941 m!4828475))

(declare-fun m!4828477 () Bool)

(assert (=> b!4242944 m!4828477))

(assert (=> b!4242715 d!1248312))

(declare-fun d!1248314 () Bool)

(declare-fun lt!1506995 () Int)

(assert (=> d!1248314 (>= lt!1506995 0)))

(declare-fun e!2634931 () Int)

(assert (=> d!1248314 (= lt!1506995 e!2634931)))

(declare-fun c!720850 () Bool)

(assert (=> d!1248314 (= c!720850 (is-Nil!46919 addTokens!17))))

(assert (=> d!1248314 (= (size!34370 addTokens!17) lt!1506995)))

(declare-fun b!4242945 () Bool)

(assert (=> b!4242945 (= e!2634931 0)))

(declare-fun b!4242946 () Bool)

(assert (=> b!4242946 (= e!2634931 (+ 1 (size!34370 (t!351276 addTokens!17))))))

(assert (= (and d!1248314 c!720850) b!4242945))

(assert (= (and d!1248314 (not c!720850)) b!4242946))

(declare-fun m!4828479 () Bool)

(assert (=> b!4242946 m!4828479))

(assert (=> b!4242725 d!1248314))

(declare-fun d!1248316 () Bool)

(declare-fun res!1744548 () Bool)

(declare-fun e!2634932 () Bool)

(assert (=> d!1248316 (=> (not res!1744548) (not e!2634932))))

(assert (=> d!1248316 (= res!1744548 (not (isEmpty!27740 (originalCharacters!8277 (h!52339 tokens!581)))))))

(assert (=> d!1248316 (= (inv!61675 (h!52339 tokens!581)) e!2634932)))

(declare-fun b!4242947 () Bool)

(declare-fun res!1744549 () Bool)

(assert (=> b!4242947 (=> (not res!1744549) (not e!2634932))))

(assert (=> b!4242947 (= res!1744549 (= (originalCharacters!8277 (h!52339 tokens!581)) (list!16918 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (value!246628 (h!52339 tokens!581))))))))

(declare-fun b!4242948 () Bool)

(assert (=> b!4242948 (= e!2634932 (= (size!34368 (h!52339 tokens!581)) (size!34369 (originalCharacters!8277 (h!52339 tokens!581)))))))

(assert (= (and d!1248316 res!1744548) b!4242947))

(assert (= (and b!4242947 res!1744549) b!4242948))

(declare-fun b_lambda!124963 () Bool)

(assert (=> (not b_lambda!124963) (not b!4242947)))

(declare-fun tb!255443 () Bool)

(declare-fun t!351306 () Bool)

(assert (=> (and b!4242722 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581))))) t!351306) tb!255443))

(declare-fun b!4242949 () Bool)

(declare-fun e!2634933 () Bool)

(declare-fun tp!1300759 () Bool)

(assert (=> b!4242949 (= e!2634933 (and (inv!61678 (c!720816 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (value!246628 (h!52339 tokens!581))))) tp!1300759))))

(declare-fun result!311468 () Bool)

(assert (=> tb!255443 (= result!311468 (and (inv!61679 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (value!246628 (h!52339 tokens!581)))) e!2634933))))

(assert (= tb!255443 b!4242949))

(declare-fun m!4828481 () Bool)

(assert (=> b!4242949 m!4828481))

(declare-fun m!4828483 () Bool)

(assert (=> tb!255443 m!4828483))

(assert (=> b!4242947 t!351306))

(declare-fun b_and!335909 () Bool)

(assert (= b_and!335891 (and (=> t!351306 result!311468) b_and!335909)))

(declare-fun t!351308 () Bool)

(declare-fun tb!255445 () Bool)

(assert (=> (and b!4242713 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581))))) t!351308) tb!255445))

(declare-fun result!311470 () Bool)

(assert (= result!311470 result!311468))

(assert (=> b!4242947 t!351308))

(declare-fun b_and!335911 () Bool)

(assert (= b_and!335893 (and (=> t!351308 result!311470) b_and!335911)))

(declare-fun t!351310 () Bool)

(declare-fun tb!255447 () Bool)

(assert (=> (and b!4242717 (= (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581))))) t!351310) tb!255447))

(declare-fun result!311472 () Bool)

(assert (= result!311472 result!311468))

(assert (=> b!4242947 t!351310))

(declare-fun b_and!335913 () Bool)

(assert (= b_and!335895 (and (=> t!351310 result!311472) b_and!335913)))

(declare-fun m!4828485 () Bool)

(assert (=> d!1248316 m!4828485))

(declare-fun m!4828487 () Bool)

(assert (=> b!4242947 m!4828487))

(assert (=> b!4242947 m!4828487))

(declare-fun m!4828489 () Bool)

(assert (=> b!4242947 m!4828489))

(declare-fun m!4828491 () Bool)

(assert (=> b!4242948 m!4828491))

(assert (=> b!4242714 d!1248316))

(declare-fun d!1248318 () Bool)

(assert (=> d!1248318 (= (inv!61671 (tag!8797 (rule!11063 (h!52339 addTokens!17)))) (= (mod (str.len (value!246627 (tag!8797 (rule!11063 (h!52339 addTokens!17))))) 2) 0))))

(assert (=> b!4242724 d!1248318))

(declare-fun d!1248320 () Bool)

(declare-fun res!1744550 () Bool)

(declare-fun e!2634934 () Bool)

(assert (=> d!1248320 (=> (not res!1744550) (not e!2634934))))

(assert (=> d!1248320 (= res!1744550 (semiInverseModEq!3454 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (toValue!10693 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))))))

(assert (=> d!1248320 (= (inv!61674 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) e!2634934)))

(declare-fun b!4242950 () Bool)

(assert (=> b!4242950 (= e!2634934 (equivClasses!3353 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (toValue!10693 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))))))

(assert (= (and d!1248320 res!1744550) b!4242950))

(declare-fun m!4828493 () Bool)

(assert (=> d!1248320 m!4828493))

(declare-fun m!4828495 () Bool)

(assert (=> b!4242950 m!4828495))

(assert (=> b!4242724 d!1248320))

(declare-fun b!4242951 () Bool)

(declare-fun e!2634937 () Bool)

(declare-fun e!2634936 () Bool)

(assert (=> b!4242951 (= e!2634937 e!2634936)))

(declare-fun c!720851 () Bool)

(assert (=> b!4242951 (= c!720851 (is-IntegerValue!24490 (value!246628 (h!52339 addTokens!17))))))

(declare-fun b!4242953 () Bool)

(declare-fun e!2634935 () Bool)

(assert (=> b!4242953 (= e!2634935 (inv!15 (value!246628 (h!52339 addTokens!17))))))

(declare-fun b!4242954 () Bool)

(declare-fun res!1744551 () Bool)

(assert (=> b!4242954 (=> res!1744551 e!2634935)))

(assert (=> b!4242954 (= res!1744551 (not (is-IntegerValue!24491 (value!246628 (h!52339 addTokens!17)))))))

(assert (=> b!4242954 (= e!2634936 e!2634935)))

(declare-fun b!4242955 () Bool)

(assert (=> b!4242955 (= e!2634937 (inv!16 (value!246628 (h!52339 addTokens!17))))))

(declare-fun b!4242952 () Bool)

(assert (=> b!4242952 (= e!2634936 (inv!17 (value!246628 (h!52339 addTokens!17))))))

(declare-fun d!1248322 () Bool)

(declare-fun c!720852 () Bool)

(assert (=> d!1248322 (= c!720852 (is-IntegerValue!24489 (value!246628 (h!52339 addTokens!17))))))

(assert (=> d!1248322 (= (inv!21 (value!246628 (h!52339 addTokens!17))) e!2634937)))

(assert (= (and d!1248322 c!720852) b!4242955))

(assert (= (and d!1248322 (not c!720852)) b!4242951))

(assert (= (and b!4242951 c!720851) b!4242952))

(assert (= (and b!4242951 (not c!720851)) b!4242954))

(assert (= (and b!4242954 (not res!1744551)) b!4242953))

(declare-fun m!4828497 () Bool)

(assert (=> b!4242953 m!4828497))

(declare-fun m!4828499 () Bool)

(assert (=> b!4242955 m!4828499))

(declare-fun m!4828501 () Bool)

(assert (=> b!4242952 m!4828501))

(assert (=> b!4242734 d!1248322))

(declare-fun b!4242957 () Bool)

(declare-fun e!2634938 () List!47041)

(assert (=> b!4242957 (= e!2634938 (Cons!46917 (h!52337 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935))))) (++!11942 (t!351274 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935))))) (_2!25381 (v!41022 lt!1506935)))))))

(declare-fun b!4242956 () Bool)

(assert (=> b!4242956 (= e!2634938 (_2!25381 (v!41022 lt!1506935)))))

(declare-fun d!1248324 () Bool)

(declare-fun e!2634939 () Bool)

(assert (=> d!1248324 e!2634939))

(declare-fun res!1744553 () Bool)

(assert (=> d!1248324 (=> (not res!1744553) (not e!2634939))))

(declare-fun lt!1506996 () List!47041)

(assert (=> d!1248324 (= res!1744553 (= (content!7378 lt!1506996) (set.union (content!7378 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935))))) (content!7378 (_2!25381 (v!41022 lt!1506935))))))))

(assert (=> d!1248324 (= lt!1506996 e!2634938)))

(declare-fun c!720853 () Bool)

(assert (=> d!1248324 (= c!720853 (is-Nil!46917 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935))))))))

(assert (=> d!1248324 (= (++!11942 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935)))) (_2!25381 (v!41022 lt!1506935))) lt!1506996)))

(declare-fun b!4242958 () Bool)

(declare-fun res!1744552 () Bool)

(assert (=> b!4242958 (=> (not res!1744552) (not e!2634939))))

(assert (=> b!4242958 (= res!1744552 (= (size!34369 lt!1506996) (+ (size!34369 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935))))) (size!34369 (_2!25381 (v!41022 lt!1506935))))))))

(declare-fun b!4242959 () Bool)

(assert (=> b!4242959 (= e!2634939 (or (not (= (_2!25381 (v!41022 lt!1506935)) Nil!46917)) (= lt!1506996 (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935)))))))))

(assert (= (and d!1248324 c!720853) b!4242956))

(assert (= (and d!1248324 (not c!720853)) b!4242957))

(assert (= (and d!1248324 res!1744553) b!4242958))

(assert (= (and b!4242958 res!1744552) b!4242959))

(declare-fun m!4828503 () Bool)

(assert (=> b!4242957 m!4828503))

(declare-fun m!4828505 () Bool)

(assert (=> d!1248324 m!4828505))

(assert (=> d!1248324 m!4828249))

(declare-fun m!4828507 () Bool)

(assert (=> d!1248324 m!4828507))

(declare-fun m!4828509 () Bool)

(assert (=> d!1248324 m!4828509))

(declare-fun m!4828511 () Bool)

(assert (=> b!4242958 m!4828511))

(assert (=> b!4242958 m!4828249))

(declare-fun m!4828513 () Bool)

(assert (=> b!4242958 m!4828513))

(declare-fun m!4828515 () Bool)

(assert (=> b!4242958 m!4828515))

(assert (=> b!4242723 d!1248324))

(declare-fun d!1248326 () Bool)

(assert (=> d!1248326 (= (list!16918 (charsOf!5283 (_1!25381 (v!41022 lt!1506935)))) (list!16920 (c!720816 (charsOf!5283 (_1!25381 (v!41022 lt!1506935))))))))

(declare-fun bs!598451 () Bool)

(assert (= bs!598451 d!1248326))

(declare-fun m!4828517 () Bool)

(assert (=> bs!598451 m!4828517))

(assert (=> b!4242723 d!1248326))

(declare-fun d!1248328 () Bool)

(declare-fun lt!1506997 () BalanceConc!27882)

(assert (=> d!1248328 (= (list!16918 lt!1506997) (originalCharacters!8277 (_1!25381 (v!41022 lt!1506935))))))

(assert (=> d!1248328 (= lt!1506997 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935))))) (value!246628 (_1!25381 (v!41022 lt!1506935)))))))

(assert (=> d!1248328 (= (charsOf!5283 (_1!25381 (v!41022 lt!1506935))) lt!1506997)))

(declare-fun b_lambda!124965 () Bool)

(assert (=> (not b_lambda!124965) (not d!1248328)))

(declare-fun t!351312 () Bool)

(declare-fun tb!255449 () Bool)

(assert (=> (and b!4242722 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935)))))) t!351312) tb!255449))

(declare-fun b!4242960 () Bool)

(declare-fun e!2634940 () Bool)

(declare-fun tp!1300760 () Bool)

(assert (=> b!4242960 (= e!2634940 (and (inv!61678 (c!720816 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935))))) (value!246628 (_1!25381 (v!41022 lt!1506935)))))) tp!1300760))))

(declare-fun result!311474 () Bool)

(assert (=> tb!255449 (= result!311474 (and (inv!61679 (dynLambda!20125 (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935))))) (value!246628 (_1!25381 (v!41022 lt!1506935))))) e!2634940))))

(assert (= tb!255449 b!4242960))

(declare-fun m!4828519 () Bool)

(assert (=> b!4242960 m!4828519))

(declare-fun m!4828521 () Bool)

(assert (=> tb!255449 m!4828521))

(assert (=> d!1248328 t!351312))

(declare-fun b_and!335915 () Bool)

(assert (= b_and!335909 (and (=> t!351312 result!311474) b_and!335915)))

(declare-fun tb!255451 () Bool)

(declare-fun t!351314 () Bool)

(assert (=> (and b!4242713 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935)))))) t!351314) tb!255451))

(declare-fun result!311476 () Bool)

(assert (= result!311476 result!311474))

(assert (=> d!1248328 t!351314))

(declare-fun b_and!335917 () Bool)

(assert (= b_and!335911 (and (=> t!351314 result!311476) b_and!335917)))

(declare-fun tb!255453 () Bool)

(declare-fun t!351316 () Bool)

(assert (=> (and b!4242717 (= (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935)))))) t!351316) tb!255453))

(declare-fun result!311478 () Bool)

(assert (= result!311478 result!311474))

(assert (=> d!1248328 t!351316))

(declare-fun b_and!335919 () Bool)

(assert (= b_and!335913 (and (=> t!351316 result!311478) b_and!335919)))

(declare-fun m!4828523 () Bool)

(assert (=> d!1248328 m!4828523))

(declare-fun m!4828525 () Bool)

(assert (=> d!1248328 m!4828525))

(assert (=> b!4242723 d!1248328))

(declare-fun d!1248330 () Bool)

(assert (=> d!1248330 (= (inv!61671 (tag!8797 (rule!11063 (h!52339 tokens!581)))) (= (mod (str.len (value!246627 (tag!8797 (rule!11063 (h!52339 tokens!581))))) 2) 0))))

(assert (=> b!4242712 d!1248330))

(declare-fun d!1248332 () Bool)

(declare-fun res!1744554 () Bool)

(declare-fun e!2634941 () Bool)

(assert (=> d!1248332 (=> (not res!1744554) (not e!2634941))))

(assert (=> d!1248332 (= res!1744554 (semiInverseModEq!3454 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (toValue!10693 (transformation!7933 (rule!11063 (h!52339 tokens!581))))))))

(assert (=> d!1248332 (= (inv!61674 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) e!2634941)))

(declare-fun b!4242961 () Bool)

(assert (=> b!4242961 (= e!2634941 (equivClasses!3353 (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (toValue!10693 (transformation!7933 (rule!11063 (h!52339 tokens!581))))))))

(assert (= (and d!1248332 res!1744554) b!4242961))

(declare-fun m!4828527 () Bool)

(assert (=> d!1248332 m!4828527))

(declare-fun m!4828529 () Bool)

(assert (=> b!4242961 m!4828529))

(assert (=> b!4242712 d!1248332))

(declare-fun d!1248334 () Bool)

(assert (=> d!1248334 (= (isEmpty!27740 longerInput!51) (is-Nil!46917 longerInput!51))))

(assert (=> b!4242733 d!1248334))

(declare-fun d!1248336 () Bool)

(declare-fun res!1744557 () Bool)

(declare-fun e!2634944 () Bool)

(assert (=> d!1248336 (=> (not res!1744557) (not e!2634944))))

(declare-fun rulesValid!3077 (LexerInterface!7528 List!47042) Bool)

(assert (=> d!1248336 (= res!1744557 (rulesValid!3077 thiss!21540 rules!2932))))

(assert (=> d!1248336 (= (rulesInvariant!6639 thiss!21540 rules!2932) e!2634944)))

(declare-fun b!4242964 () Bool)

(declare-datatypes ((List!47048 0))(
  ( (Nil!46924) (Cons!46924 (h!52344 String!54747) (t!351353 List!47048)) )
))
(declare-fun noDuplicateTag!3238 (LexerInterface!7528 List!47042 List!47048) Bool)

(assert (=> b!4242964 (= e!2634944 (noDuplicateTag!3238 thiss!21540 rules!2932 Nil!46924))))

(assert (= (and d!1248336 res!1744557) b!4242964))

(declare-fun m!4828531 () Bool)

(assert (=> d!1248336 m!4828531))

(declare-fun m!4828533 () Bool)

(assert (=> b!4242964 m!4828533))

(assert (=> b!4242711 d!1248336))

(declare-fun b!4242978 () Bool)

(declare-fun b_free!125731 () Bool)

(declare-fun b_next!126435 () Bool)

(assert (=> b!4242978 (= b_free!125731 (not b_next!126435))))

(declare-fun tp!1300775 () Bool)

(declare-fun b_and!335921 () Bool)

(assert (=> b!4242978 (= tp!1300775 b_and!335921)))

(declare-fun b_free!125733 () Bool)

(declare-fun b_next!126437 () Bool)

(assert (=> b!4242978 (= b_free!125733 (not b_next!126437))))

(declare-fun t!351318 () Bool)

(declare-fun tb!255455 () Bool)

(assert (=> (and b!4242978 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 addTokens!17))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))) t!351318) tb!255455))

(declare-fun result!311482 () Bool)

(assert (= result!311482 result!311440))

(assert (=> b!4242817 t!351318))

(declare-fun t!351320 () Bool)

(declare-fun tb!255457 () Bool)

(assert (=> (and b!4242978 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 addTokens!17))))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936)))))) t!351320) tb!255457))

(declare-fun result!311484 () Bool)

(assert (= result!311484 result!311448))

(assert (=> d!1248298 t!351320))

(declare-fun tb!255459 () Bool)

(declare-fun t!351322 () Bool)

(assert (=> (and b!4242978 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 addTokens!17))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581))))) t!351322) tb!255459))

(declare-fun result!311486 () Bool)

(assert (= result!311486 result!311468))

(assert (=> b!4242947 t!351322))

(declare-fun tb!255461 () Bool)

(declare-fun t!351324 () Bool)

(assert (=> (and b!4242978 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 addTokens!17))))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935)))))) t!351324) tb!255461))

(declare-fun result!311488 () Bool)

(assert (= result!311488 result!311474))

(assert (=> d!1248328 t!351324))

(declare-fun tp!1300771 () Bool)

(declare-fun b_and!335923 () Bool)

(assert (=> b!4242978 (= tp!1300771 (and (=> t!351318 result!311482) (=> t!351320 result!311484) (=> t!351322 result!311486) (=> t!351324 result!311488) b_and!335923))))

(declare-fun e!2634957 () Bool)

(declare-fun tp!1300774 () Bool)

(declare-fun b!4242975 () Bool)

(declare-fun e!2634961 () Bool)

(assert (=> b!4242975 (= e!2634961 (and (inv!61675 (h!52339 (t!351276 addTokens!17))) e!2634957 tp!1300774))))

(assert (=> b!4242721 (= tp!1300690 e!2634961)))

(declare-fun tp!1300772 () Bool)

(declare-fun b!4242976 () Bool)

(declare-fun e!2634960 () Bool)

(assert (=> b!4242976 (= e!2634957 (and (inv!21 (value!246628 (h!52339 (t!351276 addTokens!17)))) e!2634960 tp!1300772))))

(declare-fun b!4242977 () Bool)

(declare-fun e!2634959 () Bool)

(declare-fun tp!1300773 () Bool)

(assert (=> b!4242977 (= e!2634960 (and tp!1300773 (inv!61671 (tag!8797 (rule!11063 (h!52339 (t!351276 addTokens!17))))) (inv!61674 (transformation!7933 (rule!11063 (h!52339 (t!351276 addTokens!17))))) e!2634959))))

(assert (=> b!4242978 (= e!2634959 (and tp!1300775 tp!1300771))))

(assert (= b!4242977 b!4242978))

(assert (= b!4242976 b!4242977))

(assert (= b!4242975 b!4242976))

(assert (= (and b!4242721 (is-Cons!46919 (t!351276 addTokens!17))) b!4242975))

(declare-fun m!4828535 () Bool)

(assert (=> b!4242975 m!4828535))

(declare-fun m!4828537 () Bool)

(assert (=> b!4242976 m!4828537))

(declare-fun m!4828539 () Bool)

(assert (=> b!4242977 m!4828539))

(declare-fun m!4828541 () Bool)

(assert (=> b!4242977 m!4828541))

(declare-fun b!4242989 () Bool)

(declare-fun b_free!125735 () Bool)

(declare-fun b_next!126439 () Bool)

(assert (=> b!4242989 (= b_free!125735 (not b_next!126439))))

(declare-fun tp!1300784 () Bool)

(declare-fun b_and!335925 () Bool)

(assert (=> b!4242989 (= tp!1300784 b_and!335925)))

(declare-fun b_free!125737 () Bool)

(declare-fun b_next!126441 () Bool)

(assert (=> b!4242989 (= b_free!125737 (not b_next!126441))))

(declare-fun tb!255463 () Bool)

(declare-fun t!351326 () Bool)

(assert (=> (and b!4242989 (= (toChars!10552 (transformation!7933 (h!52338 (t!351275 rules!2932)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))) t!351326) tb!255463))

(declare-fun result!311492 () Bool)

(assert (= result!311492 result!311440))

(assert (=> b!4242817 t!351326))

(declare-fun t!351328 () Bool)

(declare-fun tb!255465 () Bool)

(assert (=> (and b!4242989 (= (toChars!10552 (transformation!7933 (h!52338 (t!351275 rules!2932)))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936)))))) t!351328) tb!255465))

(declare-fun result!311494 () Bool)

(assert (= result!311494 result!311448))

(assert (=> d!1248298 t!351328))

(declare-fun tb!255467 () Bool)

(declare-fun t!351330 () Bool)

(assert (=> (and b!4242989 (= (toChars!10552 (transformation!7933 (h!52338 (t!351275 rules!2932)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581))))) t!351330) tb!255467))

(declare-fun result!311496 () Bool)

(assert (= result!311496 result!311468))

(assert (=> b!4242947 t!351330))

(declare-fun t!351332 () Bool)

(declare-fun tb!255469 () Bool)

(assert (=> (and b!4242989 (= (toChars!10552 (transformation!7933 (h!52338 (t!351275 rules!2932)))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935)))))) t!351332) tb!255469))

(declare-fun result!311498 () Bool)

(assert (= result!311498 result!311474))

(assert (=> d!1248328 t!351332))

(declare-fun b_and!335927 () Bool)

(declare-fun tp!1300785 () Bool)

(assert (=> b!4242989 (= tp!1300785 (and (=> t!351326 result!311492) (=> t!351328 result!311494) (=> t!351330 result!311496) (=> t!351332 result!311498) b_and!335927))))

(declare-fun e!2634972 () Bool)

(assert (=> b!4242989 (= e!2634972 (and tp!1300784 tp!1300785))))

(declare-fun e!2634971 () Bool)

(declare-fun tp!1300787 () Bool)

(declare-fun b!4242988 () Bool)

(assert (=> b!4242988 (= e!2634971 (and tp!1300787 (inv!61671 (tag!8797 (h!52338 (t!351275 rules!2932)))) (inv!61674 (transformation!7933 (h!52338 (t!351275 rules!2932)))) e!2634972))))

(declare-fun b!4242987 () Bool)

(declare-fun e!2634973 () Bool)

(declare-fun tp!1300786 () Bool)

(assert (=> b!4242987 (= e!2634973 (and e!2634971 tp!1300786))))

(assert (=> b!4242709 (= tp!1300695 e!2634973)))

(assert (= b!4242988 b!4242989))

(assert (= b!4242987 b!4242988))

(assert (= (and b!4242709 (is-Cons!46918 (t!351275 rules!2932))) b!4242987))

(declare-fun m!4828543 () Bool)

(assert (=> b!4242988 m!4828543))

(declare-fun m!4828545 () Bool)

(assert (=> b!4242988 m!4828545))

(declare-fun b!4243006 () Bool)

(declare-fun e!2634979 () Bool)

(declare-fun tp!1300802 () Bool)

(assert (=> b!4243006 (= e!2634979 tp!1300802)))

(declare-fun b!4243007 () Bool)

(declare-fun tp!1300801 () Bool)

(declare-fun tp!1300800 () Bool)

(assert (=> b!4243007 (= e!2634979 (and tp!1300801 tp!1300800))))

(declare-fun b!4243004 () Bool)

(assert (=> b!4243004 (= e!2634979 tp_is_empty!22667)))

(declare-fun b!4243005 () Bool)

(declare-fun tp!1300799 () Bool)

(declare-fun tp!1300798 () Bool)

(assert (=> b!4243005 (= e!2634979 (and tp!1300799 tp!1300798))))

(assert (=> b!4242729 (= tp!1300688 e!2634979)))

(assert (= (and b!4242729 (is-ElementMatch!12838 (regex!7933 (h!52338 rules!2932)))) b!4243004))

(assert (= (and b!4242729 (is-Concat!21002 (regex!7933 (h!52338 rules!2932)))) b!4243005))

(assert (= (and b!4242729 (is-Star!12838 (regex!7933 (h!52338 rules!2932)))) b!4243006))

(assert (= (and b!4242729 (is-Union!12838 (regex!7933 (h!52338 rules!2932)))) b!4243007))

(declare-fun b!4243012 () Bool)

(declare-fun e!2634982 () Bool)

(declare-fun tp!1300805 () Bool)

(assert (=> b!4243012 (= e!2634982 (and tp_is_empty!22667 tp!1300805))))

(assert (=> b!4242718 (= tp!1300683 e!2634982)))

(assert (= (and b!4242718 (is-Cons!46917 (t!351274 shorterInput!51))) b!4243012))

(declare-fun b!4243013 () Bool)

(declare-fun e!2634983 () Bool)

(declare-fun tp!1300806 () Bool)

(assert (=> b!4243013 (= e!2634983 (and tp_is_empty!22667 tp!1300806))))

(assert (=> b!4242728 (= tp!1300696 e!2634983)))

(assert (= (and b!4242728 (is-Cons!46917 (originalCharacters!8277 (h!52339 tokens!581)))) b!4243013))

(declare-fun b!4243014 () Bool)

(declare-fun e!2634984 () Bool)

(declare-fun tp!1300807 () Bool)

(assert (=> b!4243014 (= e!2634984 (and tp_is_empty!22667 tp!1300807))))

(assert (=> b!4242727 (= tp!1300684 e!2634984)))

(assert (= (and b!4242727 (is-Cons!46917 (t!351274 suffix!1262))) b!4243014))

(declare-fun b!4243018 () Bool)

(declare-fun b_free!125739 () Bool)

(declare-fun b_next!126443 () Bool)

(assert (=> b!4243018 (= b_free!125739 (not b_next!126443))))

(declare-fun tp!1300812 () Bool)

(declare-fun b_and!335929 () Bool)

(assert (=> b!4243018 (= tp!1300812 b_and!335929)))

(declare-fun b_free!125741 () Bool)

(declare-fun b_next!126445 () Bool)

(assert (=> b!4243018 (= b_free!125741 (not b_next!126445))))

(declare-fun tb!255471 () Bool)

(declare-fun t!351334 () Bool)

(assert (=> (and b!4243018 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 tokens!581))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17))))) t!351334) tb!255471))

(declare-fun result!311504 () Bool)

(assert (= result!311504 result!311440))

(assert (=> b!4242817 t!351334))

(declare-fun t!351336 () Bool)

(declare-fun tb!255473 () Bool)

(assert (=> (and b!4243018 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 tokens!581))))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506936)))))) t!351336) tb!255473))

(declare-fun result!311506 () Bool)

(assert (= result!311506 result!311448))

(assert (=> d!1248298 t!351336))

(declare-fun t!351338 () Bool)

(declare-fun tb!255475 () Bool)

(assert (=> (and b!4243018 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 tokens!581))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581))))) t!351338) tb!255475))

(declare-fun result!311508 () Bool)

(assert (= result!311508 result!311468))

(assert (=> b!4242947 t!351338))

(declare-fun tb!255477 () Bool)

(declare-fun t!351340 () Bool)

(assert (=> (and b!4243018 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 tokens!581))))) (toChars!10552 (transformation!7933 (rule!11063 (_1!25381 (v!41022 lt!1506935)))))) t!351340) tb!255477))

(declare-fun result!311510 () Bool)

(assert (= result!311510 result!311474))

(assert (=> d!1248328 t!351340))

(declare-fun tp!1300808 () Bool)

(declare-fun b_and!335931 () Bool)

(assert (=> b!4243018 (= tp!1300808 (and (=> t!351334 result!311504) (=> t!351336 result!311506) (=> t!351338 result!311508) (=> t!351340 result!311510) b_and!335931))))

(declare-fun e!2634985 () Bool)

(declare-fun b!4243015 () Bool)

(declare-fun e!2634989 () Bool)

(declare-fun tp!1300811 () Bool)

(assert (=> b!4243015 (= e!2634989 (and (inv!61675 (h!52339 (t!351276 tokens!581))) e!2634985 tp!1300811))))

(assert (=> b!4242714 (= tp!1300697 e!2634989)))

(declare-fun b!4243016 () Bool)

(declare-fun tp!1300809 () Bool)

(declare-fun e!2634988 () Bool)

(assert (=> b!4243016 (= e!2634985 (and (inv!21 (value!246628 (h!52339 (t!351276 tokens!581)))) e!2634988 tp!1300809))))

(declare-fun tp!1300810 () Bool)

(declare-fun e!2634987 () Bool)

(declare-fun b!4243017 () Bool)

(assert (=> b!4243017 (= e!2634988 (and tp!1300810 (inv!61671 (tag!8797 (rule!11063 (h!52339 (t!351276 tokens!581))))) (inv!61674 (transformation!7933 (rule!11063 (h!52339 (t!351276 tokens!581))))) e!2634987))))

(assert (=> b!4243018 (= e!2634987 (and tp!1300812 tp!1300808))))

(assert (= b!4243017 b!4243018))

(assert (= b!4243016 b!4243017))

(assert (= b!4243015 b!4243016))

(assert (= (and b!4242714 (is-Cons!46919 (t!351276 tokens!581))) b!4243015))

(declare-fun m!4828547 () Bool)

(assert (=> b!4243015 m!4828547))

(declare-fun m!4828549 () Bool)

(assert (=> b!4243016 m!4828549))

(declare-fun m!4828551 () Bool)

(assert (=> b!4243017 m!4828551))

(declare-fun m!4828553 () Bool)

(assert (=> b!4243017 m!4828553))

(declare-fun b!4243021 () Bool)

(declare-fun e!2634991 () Bool)

(declare-fun tp!1300817 () Bool)

(assert (=> b!4243021 (= e!2634991 tp!1300817)))

(declare-fun b!4243022 () Bool)

(declare-fun tp!1300816 () Bool)

(declare-fun tp!1300815 () Bool)

(assert (=> b!4243022 (= e!2634991 (and tp!1300816 tp!1300815))))

(declare-fun b!4243019 () Bool)

(assert (=> b!4243019 (= e!2634991 tp_is_empty!22667)))

(declare-fun b!4243020 () Bool)

(declare-fun tp!1300814 () Bool)

(declare-fun tp!1300813 () Bool)

(assert (=> b!4243020 (= e!2634991 (and tp!1300814 tp!1300813))))

(assert (=> b!4242724 (= tp!1300685 e!2634991)))

(assert (= (and b!4242724 (is-ElementMatch!12838 (regex!7933 (rule!11063 (h!52339 addTokens!17))))) b!4243019))

(assert (= (and b!4242724 (is-Concat!21002 (regex!7933 (rule!11063 (h!52339 addTokens!17))))) b!4243020))

(assert (= (and b!4242724 (is-Star!12838 (regex!7933 (rule!11063 (h!52339 addTokens!17))))) b!4243021))

(assert (= (and b!4242724 (is-Union!12838 (regex!7933 (rule!11063 (h!52339 addTokens!17))))) b!4243022))

(declare-fun b!4243023 () Bool)

(declare-fun e!2634992 () Bool)

(declare-fun tp!1300818 () Bool)

(assert (=> b!4243023 (= e!2634992 (and tp_is_empty!22667 tp!1300818))))

(assert (=> b!4242734 (= tp!1300691 e!2634992)))

(assert (= (and b!4242734 (is-Cons!46917 (originalCharacters!8277 (h!52339 addTokens!17)))) b!4243023))

(declare-fun b!4243026 () Bool)

(declare-fun e!2634993 () Bool)

(declare-fun tp!1300823 () Bool)

(assert (=> b!4243026 (= e!2634993 tp!1300823)))

(declare-fun b!4243027 () Bool)

(declare-fun tp!1300822 () Bool)

(declare-fun tp!1300821 () Bool)

(assert (=> b!4243027 (= e!2634993 (and tp!1300822 tp!1300821))))

(declare-fun b!4243024 () Bool)

(assert (=> b!4243024 (= e!2634993 tp_is_empty!22667)))

(declare-fun b!4243025 () Bool)

(declare-fun tp!1300820 () Bool)

(declare-fun tp!1300819 () Bool)

(assert (=> b!4243025 (= e!2634993 (and tp!1300820 tp!1300819))))

(assert (=> b!4242712 (= tp!1300692 e!2634993)))

(assert (= (and b!4242712 (is-ElementMatch!12838 (regex!7933 (rule!11063 (h!52339 tokens!581))))) b!4243024))

(assert (= (and b!4242712 (is-Concat!21002 (regex!7933 (rule!11063 (h!52339 tokens!581))))) b!4243025))

(assert (= (and b!4242712 (is-Star!12838 (regex!7933 (rule!11063 (h!52339 tokens!581))))) b!4243026))

(assert (= (and b!4242712 (is-Union!12838 (regex!7933 (rule!11063 (h!52339 tokens!581))))) b!4243027))

(declare-fun b!4243028 () Bool)

(declare-fun e!2634994 () Bool)

(declare-fun tp!1300824 () Bool)

(assert (=> b!4243028 (= e!2634994 (and tp_is_empty!22667 tp!1300824))))

(assert (=> b!4242732 (= tp!1300694 e!2634994)))

(assert (= (and b!4242732 (is-Cons!46917 (t!351274 longerInput!51))) b!4243028))

(declare-fun b_lambda!124967 () Bool)

(assert (= b_lambda!124955 (or (and b!4242978 b_free!125733 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 addTokens!17))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))))) (and b!4242713 b_free!125713 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))))) (and b!4242722 b_free!125709) (and b!4242989 b_free!125737 (= (toChars!10552 (transformation!7933 (h!52338 (t!351275 rules!2932)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))))) (and b!4243018 b_free!125741 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 tokens!581))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))))) (and b!4242717 b_free!125717 (= (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))))) b_lambda!124967)))

(declare-fun b_lambda!124969 () Bool)

(assert (= b_lambda!124963 (or (and b!4242717 b_free!125717 (= (toChars!10552 (transformation!7933 (h!52338 rules!2932))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))))) (and b!4242722 b_free!125709 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 addTokens!17)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))))) (and b!4242713 b_free!125713) (and b!4242989 b_free!125737 (= (toChars!10552 (transformation!7933 (h!52338 (t!351275 rules!2932)))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))))) (and b!4243018 b_free!125741 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 tokens!581))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))))) (and b!4242978 b_free!125733 (= (toChars!10552 (transformation!7933 (rule!11063 (h!52339 (t!351276 addTokens!17))))) (toChars!10552 (transformation!7933 (rule!11063 (h!52339 tokens!581)))))) b_lambda!124969)))

(push 1)

(assert (not b!4242950))

(assert (not b_next!126413))

(assert (not b!4243026))

(assert (not b!4242915))

(assert b_and!335865)

(assert (not b_lambda!124967))

(assert (not b!4242919))

(assert (not d!1248292))

(assert (not b!4242948))

(assert (not b!4243022))

(assert (not d!1248280))

(assert (not b!4242837))

(assert (not b!4242829))

(assert (not b!4242842))

(assert (not b!4242923))

(assert (not b_lambda!124957))

(assert (not d!1248312))

(assert b_and!335919)

(assert (not b!4242976))

(assert b_and!335929)

(assert (not d!1248262))

(assert (not b_next!126435))

(assert (not b!4242958))

(assert (not tb!255419))

(assert (not b!4242870))

(assert (not b!4242835))

(assert b_and!335923)

(assert (not b!4242913))

(assert (not b!4243016))

(assert (not b!4242957))

(assert (not b!4242961))

(assert (not tb!255425))

(assert (not d!1248336))

(assert (not b!4243023))

(assert (not b!4242857))

(assert (not b_next!126441))

(assert (not b!4242955))

(assert (not b!4243014))

(assert (not b_next!126417))

(assert (not b_next!126411))

(assert (not b_next!126439))

(assert (not b!4242949))

(assert (not tb!255449))

(assert (not b!4243006))

(assert (not d!1248324))

(assert (not b!4242879))

(assert (not d!1248298))

(assert (not b!4242947))

(assert (not d!1248320))

(assert (not b!4243005))

(assert (not b!4242952))

(assert (not d!1248304))

(assert (not b!4242964))

(assert b_and!335861)

(assert (not b!4242941))

(assert (not b!4242823))

(assert (not b_next!126437))

(assert (not b!4242839))

(assert b_and!335925)

(assert (not d!1248332))

(assert b_and!335915)

(assert (not d!1248328))

(assert (not d!1248310))

(assert b_and!335921)

(assert (not b!4242927))

(assert (not b!4243013))

(assert (not b!4242946))

(assert (not d!1248326))

(assert (not b!4242940))

(assert tp_is_empty!22667)

(assert (not b!4242922))

(assert (not b!4242855))

(assert (not bm!293857))

(assert (not b!4242924))

(assert (not b!4242818))

(assert (not b!4242926))

(assert (not b!4242960))

(assert (not b!4243020))

(assert (not b!4242988))

(assert (not b!4242925))

(assert b_and!335931)

(assert (not b_next!126445))

(assert (not b!4243007))

(assert (not b!4242977))

(assert (not d!1248316))

(assert (not b!4242928))

(assert (not b!4243015))

(assert (not b!4242929))

(assert (not b!4242916))

(assert (not b_next!126421))

(assert (not b_lambda!124965))

(assert b_and!335927)

(assert b_and!335869)

(assert (not b!4242817))

(assert (not b_next!126443))

(assert (not b!4242914))

(assert (not b_next!126419))

(assert (not b!4243012))

(assert (not b_lambda!124969))

(assert (not b!4242953))

(assert (not b!4243017))

(assert (not bm!293856))

(assert (not b!4243025))

(assert (not b!4242987))

(assert (not d!1248296))

(assert (not b!4242871))

(assert (not b!4242918))

(assert (not b!4242854))

(assert (not b!4243021))

(assert (not tb!255443))

(assert (not b!4242975))

(assert (not b!4242944))

(assert (not b_next!126415))

(assert b_and!335917)

(assert (not b!4243027))

(assert (not b!4243028))

(assert (not b!4242917))

(assert (not b!4242920))

(check-sat)

(pop 1)

(push 1)

(assert b_and!335865)

(assert b_and!335919)

(assert b_and!335923)

(assert (not b_next!126413))

(assert (not b_next!126439))

(assert b_and!335861)

(assert (not b_next!126437))

(assert b_and!335925)

(assert b_and!335929)

(assert (not b_next!126435))

(assert (not b_next!126441))

(assert (not b_next!126417))

(assert (not b_next!126411))

(assert b_and!335915)

(assert b_and!335921)

(assert b_and!335931)

(assert (not b_next!126445))

(assert (not b_next!126421))

(assert b_and!335927)

(assert b_and!335869)

(assert (not b_next!126443))

(assert (not b_next!126419))

(assert (not b_next!126415))

(assert b_and!335917)

(check-sat)

(pop 1)

