; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!401830 () Bool)

(assert start!401830)

(declare-fun b!4205735 () Bool)

(declare-fun b_free!122899 () Bool)

(declare-fun b_next!123603 () Bool)

(assert (=> b!4205735 (= b_free!122899 (not b_next!123603))))

(declare-fun tp!1285479 () Bool)

(declare-fun b_and!330525 () Bool)

(assert (=> b!4205735 (= tp!1285479 b_and!330525)))

(declare-fun b_free!122901 () Bool)

(declare-fun b_next!123605 () Bool)

(assert (=> b!4205735 (= b_free!122901 (not b_next!123605))))

(declare-fun tp!1285473 () Bool)

(declare-fun b_and!330527 () Bool)

(assert (=> b!4205735 (= tp!1285473 b_and!330527)))

(declare-fun b!4205742 () Bool)

(declare-fun b_free!122903 () Bool)

(declare-fun b_next!123607 () Bool)

(assert (=> b!4205742 (= b_free!122903 (not b_next!123607))))

(declare-fun tp!1285477 () Bool)

(declare-fun b_and!330529 () Bool)

(assert (=> b!4205742 (= tp!1285477 b_and!330529)))

(declare-fun b_free!122905 () Bool)

(declare-fun b_next!123609 () Bool)

(assert (=> b!4205742 (= b_free!122905 (not b_next!123609))))

(declare-fun tp!1285472 () Bool)

(declare-fun b_and!330531 () Bool)

(assert (=> b!4205742 (= tp!1285472 b_and!330531)))

(declare-fun b!4205767 () Bool)

(declare-fun b_free!122907 () Bool)

(declare-fun b_next!123611 () Bool)

(assert (=> b!4205767 (= b_free!122907 (not b_next!123611))))

(declare-fun tp!1285471 () Bool)

(declare-fun b_and!330533 () Bool)

(assert (=> b!4205767 (= tp!1285471 b_and!330533)))

(declare-fun b_free!122909 () Bool)

(declare-fun b_next!123613 () Bool)

(assert (=> b!4205767 (= b_free!122909 (not b_next!123613))))

(declare-fun tp!1285463 () Bool)

(declare-fun b_and!330535 () Bool)

(assert (=> b!4205767 (= tp!1285463 b_and!330535)))

(declare-fun b!4205760 () Bool)

(declare-fun b_free!122911 () Bool)

(declare-fun b_next!123615 () Bool)

(assert (=> b!4205760 (= b_free!122911 (not b_next!123615))))

(declare-fun tp!1285482 () Bool)

(declare-fun b_and!330537 () Bool)

(assert (=> b!4205760 (= tp!1285482 b_and!330537)))

(declare-fun b_free!122913 () Bool)

(declare-fun b_next!123617 () Bool)

(assert (=> b!4205760 (= b_free!122913 (not b_next!123617))))

(declare-fun tp!1285476 () Bool)

(declare-fun b_and!330539 () Bool)

(assert (=> b!4205760 (= tp!1285476 b_and!330539)))

(declare-fun res!1727403 () Bool)

(declare-fun e!2610780 () Bool)

(assert (=> start!401830 (=> (not res!1727403) (not e!2610780))))

(declare-datatypes ((LexerInterface!7325 0))(
  ( (LexerInterfaceExt!7322 (__x!28143 Int)) (Lexer!7323) )
))
(declare-fun thiss!26544 () LexerInterface!7325)

(get-info :version)

(assert (=> start!401830 (= res!1727403 ((_ is Lexer!7323) thiss!26544))))

(assert (=> start!401830 e!2610780))

(declare-datatypes ((List!46355 0))(
  ( (Nil!46231) (Cons!46231 (h!51651 (_ BitVec 16)) (t!347424 List!46355)) )
))
(declare-datatypes ((TokenValue!7960 0))(
  ( (FloatLiteralValue!15920 (text!56165 List!46355)) (TokenValueExt!7959 (__x!28144 Int)) (Broken!39800 (value!240808 List!46355)) (Object!8083) (End!7960) (Def!7960) (Underscore!7960) (Match!7960) (Else!7960) (Error!7960) (Case!7960) (If!7960) (Extends!7960) (Abstract!7960) (Class!7960) (Val!7960) (DelimiterValue!15920 (del!8020 List!46355)) (KeywordValue!7966 (value!240809 List!46355)) (CommentValue!15920 (value!240810 List!46355)) (WhitespaceValue!15920 (value!240811 List!46355)) (IndentationValue!7960 (value!240812 List!46355)) (String!53669) (Int32!7960) (Broken!39801 (value!240813 List!46355)) (Boolean!7961) (Unit!65340) (OperatorValue!7963 (op!8020 List!46355)) (IdentifierValue!15920 (value!240814 List!46355)) (IdentifierValue!15921 (value!240815 List!46355)) (WhitespaceValue!15921 (value!240816 List!46355)) (True!15920) (False!15920) (Broken!39802 (value!240817 List!46355)) (Broken!39803 (value!240818 List!46355)) (True!15921) (RightBrace!7960) (RightBracket!7960) (Colon!7960) (Null!7960) (Comma!7960) (LeftBracket!7960) (False!15921) (LeftBrace!7960) (ImaginaryLiteralValue!7960 (text!56166 List!46355)) (StringLiteralValue!23880 (value!240819 List!46355)) (EOFValue!7960 (value!240820 List!46355)) (IdentValue!7960 (value!240821 List!46355)) (DelimiterValue!15921 (value!240822 List!46355)) (DedentValue!7960 (value!240823 List!46355)) (NewLineValue!7960 (value!240824 List!46355)) (IntegerValue!23880 (value!240825 (_ BitVec 32)) (text!56167 List!46355)) (IntegerValue!23881 (value!240826 Int) (text!56168 List!46355)) (Times!7960) (Or!7960) (Equal!7960) (Minus!7960) (Broken!39804 (value!240827 List!46355)) (And!7960) (Div!7960) (LessEqual!7960) (Mod!7960) (Concat!20595) (Not!7960) (Plus!7960) (SpaceValue!7960 (value!240828 List!46355)) (IntegerValue!23882 (value!240829 Int) (text!56169 List!46355)) (StringLiteralValue!23881 (text!56170 List!46355)) (FloatLiteralValue!15921 (text!56171 List!46355)) (BytesLiteralValue!7960 (value!240830 List!46355)) (CommentValue!15921 (value!240831 List!46355)) (StringLiteralValue!23882 (value!240832 List!46355)) (ErrorTokenValue!7960 (msg!8021 List!46355)) )
))
(declare-datatypes ((C!25464 0))(
  ( (C!25465 (val!14894 Int)) )
))
(declare-datatypes ((List!46356 0))(
  ( (Nil!46232) (Cons!46232 (h!51652 C!25464) (t!347425 List!46356)) )
))
(declare-datatypes ((IArray!27887 0))(
  ( (IArray!27888 (innerList!14001 List!46356)) )
))
(declare-datatypes ((Regex!12635 0))(
  ( (ElementMatch!12635 (c!716800 C!25464)) (Concat!20596 (regOne!25782 Regex!12635) (regTwo!25782 Regex!12635)) (EmptyExpr!12635) (Star!12635 (reg!12964 Regex!12635)) (EmptyLang!12635) (Union!12635 (regOne!25783 Regex!12635) (regTwo!25783 Regex!12635)) )
))
(declare-datatypes ((Conc!13941 0))(
  ( (Node!13941 (left!34429 Conc!13941) (right!34759 Conc!13941) (csize!28112 Int) (cheight!14152 Int)) (Leaf!21550 (xs!17247 IArray!27887) (csize!28113 Int)) (Empty!13941) )
))
(declare-datatypes ((BalanceConc!27476 0))(
  ( (BalanceConc!27477 (c!716801 Conc!13941)) )
))
(declare-datatypes ((String!53670 0))(
  ( (String!53671 (value!240833 String)) )
))
(declare-datatypes ((TokenValueInjection!15348 0))(
  ( (TokenValueInjection!15349 (toValue!10442 Int) (toChars!10301 Int)) )
))
(declare-datatypes ((Rule!15260 0))(
  ( (Rule!15261 (regex!7730 Regex!12635) (tag!8594 String!53670) (isSeparator!7730 Bool) (transformation!7730 TokenValueInjection!15348)) )
))
(declare-datatypes ((Token!14162 0))(
  ( (Token!14163 (value!240834 TokenValue!7960) (rule!10834 Rule!15260) (size!33965 Int) (originalCharacters!8112 List!46356)) )
))
(declare-fun tBis!41 () Token!14162)

(declare-fun e!2610785 () Bool)

(declare-fun inv!60817 (Token!14162) Bool)

(assert (=> start!401830 (and (inv!60817 tBis!41) e!2610785)))

(assert (=> start!401830 true))

(declare-fun e!2610801 () Bool)

(assert (=> start!401830 e!2610801))

(declare-fun e!2610798 () Bool)

(assert (=> start!401830 e!2610798))

(declare-fun e!2610795 () Bool)

(assert (=> start!401830 e!2610795))

(declare-fun e!2610784 () Bool)

(assert (=> start!401830 e!2610784))

(declare-fun t!8364 () Token!14162)

(declare-fun e!2610789 () Bool)

(assert (=> start!401830 (and (inv!60817 t!8364) e!2610789)))

(declare-fun e!2610782 () Bool)

(assert (=> start!401830 e!2610782))

(declare-fun e!2610791 () Bool)

(assert (=> start!401830 e!2610791))

(declare-fun e!2610803 () Bool)

(assert (=> start!401830 e!2610803))

(declare-fun b!4205733 () Bool)

(declare-fun tp!1285475 () Bool)

(declare-fun e!2610805 () Bool)

(declare-fun inv!21 (TokenValue!7960) Bool)

(assert (=> b!4205733 (= e!2610789 (and (inv!21 (value!240834 t!8364)) e!2610805 tp!1285475))))

(declare-fun tp!1285468 () Bool)

(declare-fun e!2610788 () Bool)

(declare-fun b!4205734 () Bool)

(declare-fun inv!60814 (String!53670) Bool)

(declare-fun inv!60818 (TokenValueInjection!15348) Bool)

(assert (=> b!4205734 (= e!2610805 (and tp!1285468 (inv!60814 (tag!8594 (rule!10834 t!8364))) (inv!60818 (transformation!7730 (rule!10834 t!8364))) e!2610788))))

(declare-fun e!2610804 () Bool)

(assert (=> b!4205735 (= e!2610804 (and tp!1285479 tp!1285473))))

(declare-fun b!4205736 () Bool)

(declare-fun tp_is_empty!22237 () Bool)

(declare-fun tp!1285467 () Bool)

(assert (=> b!4205736 (= e!2610782 (and tp_is_empty!22237 tp!1285467))))

(declare-fun b!4205737 () Bool)

(declare-fun res!1727411 () Bool)

(assert (=> b!4205737 (=> (not res!1727411) (not e!2610780))))

(declare-datatypes ((List!46357 0))(
  ( (Nil!46233) (Cons!46233 (h!51653 Rule!15260) (t!347426 List!46357)) )
))
(declare-fun rules!3967 () List!46357)

(declare-fun isEmpty!27376 (List!46357) Bool)

(assert (=> b!4205737 (= res!1727411 (not (isEmpty!27376 rules!3967)))))

(declare-fun b!4205738 () Bool)

(declare-fun tp!1285481 () Bool)

(declare-fun e!2610790 () Bool)

(assert (=> b!4205738 (= e!2610785 (and (inv!21 (value!240834 tBis!41)) e!2610790 tp!1285481))))

(declare-fun b!4205739 () Bool)

(declare-fun e!2610797 () Bool)

(declare-fun e!2610792 () Bool)

(assert (=> b!4205739 (= e!2610797 e!2610792)))

(declare-fun res!1727408 () Bool)

(assert (=> b!4205739 (=> res!1727408 e!2610792)))

(declare-fun lt!1497704 () List!46356)

(declare-fun input!3517 () List!46356)

(assert (=> b!4205739 (= res!1727408 (not (= lt!1497704 input!3517)))))

(declare-fun rulesInvariant!6536 (LexerInterface!7325 List!46357) Bool)

(assert (=> b!4205739 (rulesInvariant!6536 thiss!26544 (t!347426 rules!3967))))

(declare-datatypes ((Unit!65341 0))(
  ( (Unit!65342) )
))
(declare-fun lt!1497708 () Unit!65341)

(declare-fun lemmaInvariantOnRulesThenOnTail!844 (LexerInterface!7325 Rule!15260 List!46357) Unit!65341)

(assert (=> b!4205739 (= lt!1497708 (lemmaInvariantOnRulesThenOnTail!844 thiss!26544 (h!51653 rules!3967) (t!347426 rules!3967)))))

(declare-fun lt!1497701 () List!46356)

(declare-fun isPrefix!4589 (List!46356 List!46356) Bool)

(assert (=> b!4205739 (isPrefix!4589 lt!1497701 lt!1497704)))

(declare-datatypes ((tuple2!43982 0))(
  ( (tuple2!43983 (_1!25125 Token!14162) (_2!25125 List!46356)) )
))
(declare-fun lt!1497710 () tuple2!43982)

(declare-fun ++!11804 (List!46356 List!46356) List!46356)

(assert (=> b!4205739 (= lt!1497704 (++!11804 lt!1497701 (_2!25125 lt!1497710)))))

(declare-fun lt!1497705 () Unit!65341)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3062 (List!46356 List!46356) Unit!65341)

(assert (=> b!4205739 (= lt!1497705 (lemmaConcatTwoListThenFirstIsPrefix!3062 lt!1497701 (_2!25125 lt!1497710)))))

(declare-fun list!16709 (BalanceConc!27476) List!46356)

(declare-fun charsOf!5153 (Token!14162) BalanceConc!27476)

(assert (=> b!4205739 (= lt!1497701 (list!16709 (charsOf!5153 (_1!25125 lt!1497710))))))

(declare-datatypes ((Option!9918 0))(
  ( (None!9917) (Some!9917 (v!40777 tuple2!43982)) )
))
(declare-fun lt!1497706 () Option!9918)

(declare-fun get!15037 (Option!9918) tuple2!43982)

(assert (=> b!4205739 (= lt!1497710 (get!15037 lt!1497706))))

(declare-fun lt!1497703 () Unit!65341)

(declare-fun e!2610800 () Unit!65341)

(assert (=> b!4205739 (= lt!1497703 e!2610800)))

(declare-fun c!716799 () Bool)

(declare-fun isEmpty!27377 (Option!9918) Bool)

(assert (=> b!4205739 (= c!716799 (isEmpty!27377 lt!1497706))))

(declare-fun maxPrefix!4365 (LexerInterface!7325 List!46357 List!46356) Option!9918)

(assert (=> b!4205739 (= lt!1497706 (maxPrefix!4365 thiss!26544 (t!347426 rules!3967) input!3517))))

(declare-fun b!4205740 () Bool)

(declare-fun res!1727404 () Bool)

(assert (=> b!4205740 (=> res!1727404 e!2610797)))

(declare-fun pBis!121 () List!46356)

(assert (=> b!4205740 (= res!1727404 (not (= (list!16709 (charsOf!5153 tBis!41)) pBis!121)))))

(declare-fun b!4205741 () Bool)

(declare-fun tp!1285480 () Bool)

(assert (=> b!4205741 (= e!2610803 (and tp_is_empty!22237 tp!1285480))))

(assert (=> b!4205742 (= e!2610788 (and tp!1285477 tp!1285472))))

(declare-fun b!4205743 () Bool)

(declare-fun Unit!65343 () Unit!65341)

(assert (=> b!4205743 (= e!2610800 Unit!65343)))

(declare-fun b!4205744 () Bool)

(declare-fun res!1727417 () Bool)

(assert (=> b!4205744 (=> res!1727417 e!2610792)))

(assert (=> b!4205744 (= res!1727417 (isEmpty!27376 (t!347426 rules!3967)))))

(declare-fun b!4205745 () Bool)

(declare-fun tp!1285469 () Bool)

(assert (=> b!4205745 (= e!2610790 (and tp!1285469 (inv!60814 (tag!8594 (rule!10834 tBis!41))) (inv!60818 (transformation!7730 (rule!10834 tBis!41))) e!2610804))))

(declare-fun b!4205746 () Bool)

(declare-fun tp!1285474 () Bool)

(assert (=> b!4205746 (= e!2610784 (and tp_is_empty!22237 tp!1285474))))

(declare-fun b!4205747 () Bool)

(declare-fun Unit!65344 () Unit!65341)

(assert (=> b!4205747 (= e!2610800 Unit!65344)))

(declare-fun rBis!178 () Rule!15260)

(declare-fun lt!1497707 () Unit!65341)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!608 (LexerInterface!7325 Rule!15260 List!46357 List!46356) Unit!65341)

(assert (=> b!4205747 (= lt!1497707 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!608 thiss!26544 rBis!178 (t!347426 rules!3967) input!3517))))

(assert (=> b!4205747 false))

(declare-fun b!4205748 () Bool)

(declare-fun tp!1285466 () Bool)

(assert (=> b!4205748 (= e!2610798 (and tp_is_empty!22237 tp!1285466))))

(declare-fun b!4205749 () Bool)

(declare-fun res!1727415 () Bool)

(assert (=> b!4205749 (=> (not res!1727415) (not e!2610780))))

(assert (=> b!4205749 (= res!1727415 (isPrefix!4589 pBis!121 input!3517))))

(declare-fun b!4205750 () Bool)

(declare-fun res!1727400 () Bool)

(assert (=> b!4205750 (=> res!1727400 e!2610797)))

(assert (=> b!4205750 (= res!1727400 (or (and ((_ is Cons!46233) rules!3967) ((_ is Nil!46233) (t!347426 rules!3967))) (not ((_ is Cons!46233) rules!3967)) (= (h!51653 rules!3967) rBis!178)))))

(declare-fun b!4205751 () Bool)

(declare-fun res!1727402 () Bool)

(assert (=> b!4205751 (=> res!1727402 e!2610797)))

(declare-fun lt!1497709 () Option!9918)

(declare-fun maxPrefixOneRule!3320 (LexerInterface!7325 Rule!15260 List!46356) Option!9918)

(assert (=> b!4205751 (= res!1727402 (not (= (maxPrefixOneRule!3320 thiss!26544 (h!51653 rules!3967) input!3517) lt!1497709)))))

(declare-fun b!4205752 () Bool)

(declare-fun tp!1285465 () Bool)

(assert (=> b!4205752 (= e!2610791 (and tp_is_empty!22237 tp!1285465))))

(declare-fun b!4205753 () Bool)

(declare-fun res!1727412 () Bool)

(assert (=> b!4205753 (=> res!1727412 e!2610792)))

(assert (=> b!4205753 (= res!1727412 (not (isPrefix!4589 lt!1497701 input!3517)))))

(declare-fun e!2610787 () Bool)

(declare-fun b!4205754 () Bool)

(declare-fun tp!1285470 () Bool)

(assert (=> b!4205754 (= e!2610801 (and tp!1285470 (inv!60814 (tag!8594 rBis!178)) (inv!60818 (transformation!7730 rBis!178)) e!2610787))))

(declare-fun b!4205755 () Bool)

(declare-fun res!1727401 () Bool)

(assert (=> b!4205755 (=> (not res!1727401) (not e!2610780))))

(assert (=> b!4205755 (= res!1727401 (rulesInvariant!6536 thiss!26544 rules!3967))))

(declare-fun b!4205756 () Bool)

(declare-fun res!1727406 () Bool)

(assert (=> b!4205756 (=> (not res!1727406) (not e!2610780))))

(declare-fun p!3001 () List!46356)

(assert (=> b!4205756 (= res!1727406 (isPrefix!4589 p!3001 input!3517))))

(declare-fun b!4205757 () Bool)

(declare-fun res!1727413 () Bool)

(assert (=> b!4205757 (=> (not res!1727413) (not e!2610780))))

(declare-fun suffix!1557 () List!46356)

(assert (=> b!4205757 (= res!1727413 (= (++!11804 p!3001 suffix!1557) input!3517))))

(declare-fun b!4205758 () Bool)

(declare-fun e!2610781 () Bool)

(assert (=> b!4205758 (= e!2610780 e!2610781)))

(declare-fun res!1727405 () Bool)

(assert (=> b!4205758 (=> (not res!1727405) (not e!2610781))))

(assert (=> b!4205758 (= res!1727405 (= (maxPrefix!4365 thiss!26544 rules!3967 input!3517) lt!1497709))))

(assert (=> b!4205758 (= lt!1497709 (Some!9917 (tuple2!43983 t!8364 suffix!1557)))))

(declare-fun b!4205759 () Bool)

(declare-fun res!1727409 () Bool)

(assert (=> b!4205759 (=> res!1727409 e!2610797)))

(assert (=> b!4205759 (= res!1727409 (not (= (rule!10834 tBis!41) rBis!178)))))

(assert (=> b!4205760 (= e!2610787 (and tp!1285482 tp!1285476))))

(declare-fun b!4205761 () Bool)

(assert (=> b!4205761 (= e!2610781 (not e!2610797))))

(declare-fun res!1727407 () Bool)

(assert (=> b!4205761 (=> res!1727407 e!2610797)))

(declare-fun suffixBis!41 () List!46356)

(assert (=> b!4205761 (= res!1727407 (not (= (maxPrefixOneRule!3320 thiss!26544 rBis!178 input!3517) (Some!9917 (tuple2!43983 tBis!41 suffixBis!41)))))))

(assert (=> b!4205761 (isPrefix!4589 input!3517 input!3517)))

(declare-fun lt!1497702 () Unit!65341)

(declare-fun lemmaIsPrefixRefl!3006 (List!46356 List!46356) Unit!65341)

(assert (=> b!4205761 (= lt!1497702 (lemmaIsPrefixRefl!3006 input!3517 input!3517))))

(declare-fun b!4205762 () Bool)

(declare-fun e!2610793 () Bool)

(declare-fun tp!1285478 () Bool)

(assert (=> b!4205762 (= e!2610795 (and e!2610793 tp!1285478))))

(declare-fun b!4205763 () Bool)

(declare-fun res!1727410 () Bool)

(assert (=> b!4205763 (=> res!1727410 e!2610797)))

(assert (=> b!4205763 (= res!1727410 (not (= (++!11804 pBis!121 suffixBis!41) input!3517)))))

(declare-fun b!4205764 () Bool)

(declare-fun res!1727416 () Bool)

(assert (=> b!4205764 (=> (not res!1727416) (not e!2610780))))

(declare-fun contains!9547 (List!46357 Rule!15260) Bool)

(assert (=> b!4205764 (= res!1727416 (contains!9547 rules!3967 rBis!178))))

(declare-fun b!4205765 () Bool)

(declare-fun res!1727414 () Bool)

(assert (=> b!4205765 (=> (not res!1727414) (not e!2610781))))

(declare-fun ruleValid!3442 (LexerInterface!7325 Rule!15260) Bool)

(assert (=> b!4205765 (= res!1727414 (ruleValid!3442 thiss!26544 rBis!178))))

(declare-fun b!4205766 () Bool)

(declare-fun tp!1285464 () Bool)

(declare-fun e!2610806 () Bool)

(assert (=> b!4205766 (= e!2610793 (and tp!1285464 (inv!60814 (tag!8594 (h!51653 rules!3967))) (inv!60818 (transformation!7730 (h!51653 rules!3967))) e!2610806))))

(assert (=> b!4205767 (= e!2610806 (and tp!1285471 tp!1285463))))

(declare-fun b!4205768 () Bool)

(assert (=> b!4205768 (= e!2610792 true)))

(declare-fun lt!1497700 () Bool)

(assert (=> b!4205768 (= lt!1497700 (contains!9547 (t!347426 rules!3967) rBis!178))))

(assert (= (and start!401830 res!1727403) b!4205757))

(assert (= (and b!4205757 res!1727413) b!4205756))

(assert (= (and b!4205756 res!1727406) b!4205749))

(assert (= (and b!4205749 res!1727415) b!4205737))

(assert (= (and b!4205737 res!1727411) b!4205755))

(assert (= (and b!4205755 res!1727401) b!4205764))

(assert (= (and b!4205764 res!1727416) b!4205758))

(assert (= (and b!4205758 res!1727405) b!4205765))

(assert (= (and b!4205765 res!1727414) b!4205761))

(assert (= (and b!4205761 (not res!1727407)) b!4205759))

(assert (= (and b!4205759 (not res!1727409)) b!4205740))

(assert (= (and b!4205740 (not res!1727404)) b!4205763))

(assert (= (and b!4205763 (not res!1727410)) b!4205750))

(assert (= (and b!4205750 (not res!1727400)) b!4205751))

(assert (= (and b!4205751 (not res!1727402)) b!4205739))

(assert (= (and b!4205739 c!716799) b!4205747))

(assert (= (and b!4205739 (not c!716799)) b!4205743))

(assert (= (and b!4205739 (not res!1727408)) b!4205753))

(assert (= (and b!4205753 (not res!1727412)) b!4205744))

(assert (= (and b!4205744 (not res!1727417)) b!4205768))

(assert (= b!4205745 b!4205735))

(assert (= b!4205738 b!4205745))

(assert (= start!401830 b!4205738))

(assert (= b!4205754 b!4205760))

(assert (= start!401830 b!4205754))

(assert (= (and start!401830 ((_ is Cons!46232) p!3001)) b!4205748))

(assert (= b!4205766 b!4205767))

(assert (= b!4205762 b!4205766))

(assert (= (and start!401830 ((_ is Cons!46233) rules!3967)) b!4205762))

(assert (= (and start!401830 ((_ is Cons!46232) input!3517)) b!4205746))

(assert (= b!4205734 b!4205742))

(assert (= b!4205733 b!4205734))

(assert (= start!401830 b!4205733))

(assert (= (and start!401830 ((_ is Cons!46232) pBis!121)) b!4205736))

(assert (= (and start!401830 ((_ is Cons!46232) suffix!1557)) b!4205752))

(assert (= (and start!401830 ((_ is Cons!46232) suffixBis!41)) b!4205741))

(declare-fun m!4793825 () Bool)

(assert (=> b!4205756 m!4793825))

(declare-fun m!4793827 () Bool)

(assert (=> b!4205761 m!4793827))

(declare-fun m!4793829 () Bool)

(assert (=> b!4205761 m!4793829))

(declare-fun m!4793831 () Bool)

(assert (=> b!4205761 m!4793831))

(declare-fun m!4793833 () Bool)

(assert (=> b!4205768 m!4793833))

(declare-fun m!4793835 () Bool)

(assert (=> b!4205740 m!4793835))

(assert (=> b!4205740 m!4793835))

(declare-fun m!4793837 () Bool)

(assert (=> b!4205740 m!4793837))

(declare-fun m!4793839 () Bool)

(assert (=> b!4205733 m!4793839))

(declare-fun m!4793841 () Bool)

(assert (=> b!4205765 m!4793841))

(declare-fun m!4793843 () Bool)

(assert (=> start!401830 m!4793843))

(declare-fun m!4793845 () Bool)

(assert (=> start!401830 m!4793845))

(declare-fun m!4793847 () Bool)

(assert (=> b!4205753 m!4793847))

(declare-fun m!4793849 () Bool)

(assert (=> b!4205737 m!4793849))

(declare-fun m!4793851 () Bool)

(assert (=> b!4205747 m!4793851))

(declare-fun m!4793853 () Bool)

(assert (=> b!4205758 m!4793853))

(declare-fun m!4793855 () Bool)

(assert (=> b!4205755 m!4793855))

(declare-fun m!4793857 () Bool)

(assert (=> b!4205739 m!4793857))

(declare-fun m!4793859 () Bool)

(assert (=> b!4205739 m!4793859))

(declare-fun m!4793861 () Bool)

(assert (=> b!4205739 m!4793861))

(declare-fun m!4793863 () Bool)

(assert (=> b!4205739 m!4793863))

(declare-fun m!4793865 () Bool)

(assert (=> b!4205739 m!4793865))

(declare-fun m!4793867 () Bool)

(assert (=> b!4205739 m!4793867))

(declare-fun m!4793869 () Bool)

(assert (=> b!4205739 m!4793869))

(assert (=> b!4205739 m!4793865))

(declare-fun m!4793871 () Bool)

(assert (=> b!4205739 m!4793871))

(declare-fun m!4793873 () Bool)

(assert (=> b!4205739 m!4793873))

(declare-fun m!4793875 () Bool)

(assert (=> b!4205739 m!4793875))

(declare-fun m!4793877 () Bool)

(assert (=> b!4205763 m!4793877))

(declare-fun m!4793879 () Bool)

(assert (=> b!4205754 m!4793879))

(declare-fun m!4793881 () Bool)

(assert (=> b!4205754 m!4793881))

(declare-fun m!4793883 () Bool)

(assert (=> b!4205744 m!4793883))

(declare-fun m!4793885 () Bool)

(assert (=> b!4205764 m!4793885))

(declare-fun m!4793887 () Bool)

(assert (=> b!4205734 m!4793887))

(declare-fun m!4793889 () Bool)

(assert (=> b!4205734 m!4793889))

(declare-fun m!4793891 () Bool)

(assert (=> b!4205745 m!4793891))

(declare-fun m!4793893 () Bool)

(assert (=> b!4205745 m!4793893))

(declare-fun m!4793895 () Bool)

(assert (=> b!4205751 m!4793895))

(declare-fun m!4793897 () Bool)

(assert (=> b!4205738 m!4793897))

(declare-fun m!4793899 () Bool)

(assert (=> b!4205766 m!4793899))

(declare-fun m!4793901 () Bool)

(assert (=> b!4205766 m!4793901))

(declare-fun m!4793903 () Bool)

(assert (=> b!4205757 m!4793903))

(declare-fun m!4793905 () Bool)

(assert (=> b!4205749 m!4793905))

(check-sat (not b!4205738) (not b!4205756) (not b!4205752) (not b!4205765) (not b!4205753) (not b!4205764) b_and!330529 (not b!4205768) b_and!330527 (not b!4205758) (not b!4205745) b_and!330533 (not b_next!123605) (not b!4205734) (not b!4205741) (not b!4205746) (not b_next!123617) (not b!4205761) (not b_next!123613) (not b!4205744) b_and!330531 (not b!4205736) (not b!4205757) (not b_next!123609) (not b!4205762) b_and!330539 (not b!4205766) (not start!401830) (not b!4205733) b_and!330537 b_and!330525 b_and!330535 (not b!4205751) tp_is_empty!22237 (not b_next!123603) (not b!4205739) (not b_next!123611) (not b_next!123615) (not b_next!123607) (not b!4205755) (not b!4205747) (not b!4205748) (not b!4205754) (not b!4205737) (not b!4205763) (not b!4205740) (not b!4205749))
(check-sat (not b_next!123617) (not b_next!123613) b_and!330531 (not b_next!123609) b_and!330539 b_and!330529 b_and!330537 (not b_next!123603) (not b_next!123607) b_and!330527 b_and!330533 (not b_next!123605) b_and!330525 b_and!330535 (not b_next!123611) (not b_next!123615))
