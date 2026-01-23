; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!4188 () Bool)

(assert start!4188)

(declare-fun b!53800 () Bool)

(declare-fun b_free!1753 () Bool)

(declare-fun b_next!1753 () Bool)

(assert (=> b!53800 (= b_free!1753 (not b_next!1753))))

(declare-fun tp!34552 () Bool)

(declare-fun b_and!1803 () Bool)

(assert (=> b!53800 (= tp!34552 b_and!1803)))

(declare-fun b_free!1755 () Bool)

(declare-fun b_next!1755 () Bool)

(assert (=> b!53800 (= b_free!1755 (not b_next!1755))))

(declare-fun tp!34551 () Bool)

(declare-fun b_and!1805 () Bool)

(assert (=> b!53800 (= tp!34551 b_and!1805)))

(declare-fun b!53791 () Bool)

(declare-fun e!31809 () Bool)

(declare-fun e!31802 () Bool)

(assert (=> b!53791 (= e!31809 e!31802)))

(declare-fun res!34569 () Bool)

(assert (=> b!53791 (=> (not res!34569) (not e!31802))))

(declare-fun from!821 () Int)

(declare-fun lt!9766 () Int)

(assert (=> b!53791 (= res!34569 (<= from!821 lt!9766))))

(declare-datatypes ((List!1134 0))(
  ( (Nil!1128) (Cons!1128 (h!6525 (_ BitVec 16)) (t!17409 List!1134)) )
))
(declare-datatypes ((TokenValue!234 0))(
  ( (FloatLiteralValue!468 (text!2083 List!1134)) (TokenValueExt!233 (__x!1563 Int)) (Broken!1170 (value!9827 List!1134)) (Object!239) (End!234) (Def!234) (Underscore!234) (Match!234) (Else!234) (Error!234) (Case!234) (If!234) (Extends!234) (Abstract!234) (Class!234) (Val!234) (DelimiterValue!468 (del!294 List!1134)) (KeywordValue!240 (value!9828 List!1134)) (CommentValue!468 (value!9829 List!1134)) (WhitespaceValue!468 (value!9830 List!1134)) (IndentationValue!234 (value!9831 List!1134)) (String!1563) (Int32!234) (Broken!1171 (value!9832 List!1134)) (Boolean!235) (Unit!640) (OperatorValue!237 (op!294 List!1134)) (IdentifierValue!468 (value!9833 List!1134)) (IdentifierValue!469 (value!9834 List!1134)) (WhitespaceValue!469 (value!9835 List!1134)) (True!468) (False!468) (Broken!1172 (value!9836 List!1134)) (Broken!1173 (value!9837 List!1134)) (True!469) (RightBrace!234) (RightBracket!234) (Colon!234) (Null!234) (Comma!234) (LeftBracket!234) (False!469) (LeftBrace!234) (ImaginaryLiteralValue!234 (text!2084 List!1134)) (StringLiteralValue!702 (value!9838 List!1134)) (EOFValue!234 (value!9839 List!1134)) (IdentValue!234 (value!9840 List!1134)) (DelimiterValue!469 (value!9841 List!1134)) (DedentValue!234 (value!9842 List!1134)) (NewLineValue!234 (value!9843 List!1134)) (IntegerValue!702 (value!9844 (_ BitVec 32)) (text!2085 List!1134)) (IntegerValue!703 (value!9845 Int) (text!2086 List!1134)) (Times!234) (Or!234) (Equal!234) (Minus!234) (Broken!1174 (value!9846 List!1134)) (And!234) (Div!234) (LessEqual!234) (Mod!234) (Concat!546) (Not!234) (Plus!234) (SpaceValue!234 (value!9847 List!1134)) (IntegerValue!704 (value!9848 Int) (text!2087 List!1134)) (StringLiteralValue!703 (text!2088 List!1134)) (FloatLiteralValue!469 (text!2089 List!1134)) (BytesLiteralValue!234 (value!9849 List!1134)) (CommentValue!469 (value!9850 List!1134)) (StringLiteralValue!704 (value!9851 List!1134)) (ErrorTokenValue!234 (msg!295 List!1134)) )
))
(declare-datatypes ((C!1546 0))(
  ( (C!1547 (val!380 Int)) )
))
(declare-datatypes ((List!1135 0))(
  ( (Nil!1129) (Cons!1129 (h!6526 C!1546) (t!17410 List!1135)) )
))
(declare-datatypes ((IArray!585 0))(
  ( (IArray!586 (innerList!350 List!1135)) )
))
(declare-datatypes ((Conc!292 0))(
  ( (Node!292 (left!859 Conc!292) (right!1189 Conc!292) (csize!814 Int) (cheight!503 Int)) (Leaf!550 (xs!2871 IArray!585) (csize!815 Int)) (Empty!292) )
))
(declare-datatypes ((Regex!312 0))(
  ( (ElementMatch!312 (c!17085 C!1546)) (Concat!547 (regOne!1136 Regex!312) (regTwo!1136 Regex!312)) (EmptyExpr!312) (Star!312 (reg!641 Regex!312)) (EmptyLang!312) (Union!312 (regOne!1137 Regex!312) (regTwo!1137 Regex!312)) )
))
(declare-datatypes ((String!1564 0))(
  ( (String!1565 (value!9852 String)) )
))
(declare-datatypes ((BalanceConc!588 0))(
  ( (BalanceConc!589 (c!17086 Conc!292)) )
))
(declare-datatypes ((TokenValueInjection!292 0))(
  ( (TokenValueInjection!293 (toValue!723 Int) (toChars!582 Int)) )
))
(declare-datatypes ((Rule!288 0))(
  ( (Rule!289 (regex!244 Regex!312) (tag!422 String!1564) (isSeparator!244 Bool) (transformation!244 TokenValueInjection!292)) )
))
(declare-datatypes ((Token!252 0))(
  ( (Token!253 (value!9853 TokenValue!234) (rule!719 Rule!288) (size!1023 Int) (originalCharacters!297 List!1135)) )
))
(declare-datatypes ((List!1136 0))(
  ( (Nil!1130) (Cons!1130 (h!6527 Token!252) (t!17411 List!1136)) )
))
(declare-datatypes ((IArray!587 0))(
  ( (IArray!588 (innerList!351 List!1136)) )
))
(declare-datatypes ((Conc!293 0))(
  ( (Node!293 (left!860 Conc!293) (right!1190 Conc!293) (csize!816 Int) (cheight!504 Int)) (Leaf!551 (xs!2872 IArray!587) (csize!817 Int)) (Empty!293) )
))
(declare-datatypes ((BalanceConc!590 0))(
  ( (BalanceConc!591 (c!17087 Conc!293)) )
))
(declare-fun v!6227 () BalanceConc!590)

(declare-fun size!1024 (BalanceConc!590) Int)

(assert (=> b!53791 (= lt!9766 (size!1024 v!6227))))

(declare-fun b!53792 () Bool)

(declare-fun res!34567 () Bool)

(assert (=> b!53792 (=> (not res!34567) (not e!31802))))

(assert (=> b!53792 (= res!34567 (< from!821 (- lt!9766 1)))))

(declare-fun b!53793 () Bool)

(declare-fun res!34565 () Bool)

(assert (=> b!53793 (=> (not res!34565) (not e!31802))))

(declare-datatypes ((LexerInterface!136 0))(
  ( (LexerInterfaceExt!133 (__x!1564 Int)) (Lexer!134) )
))
(declare-fun thiss!11059 () LexerInterface!136)

(declare-datatypes ((List!1137 0))(
  ( (Nil!1131) (Cons!1131 (h!6528 Rule!288) (t!17412 List!1137)) )
))
(declare-fun rules!1069 () List!1137)

(declare-fun rulesInvariant!130 (LexerInterface!136 List!1137) Bool)

(assert (=> b!53793 (= res!34565 (rulesInvariant!130 thiss!11059 rules!1069))))

(declare-fun b!53794 () Bool)

(declare-fun res!34564 () Bool)

(assert (=> b!53794 (=> (not res!34564) (not e!31802))))

(declare-fun rulesProduceEachTokenIndividually!74 (LexerInterface!136 List!1137 BalanceConc!590) Bool)

(assert (=> b!53794 (= res!34564 (rulesProduceEachTokenIndividually!74 thiss!11059 rules!1069 v!6227))))

(declare-fun b!53795 () Bool)

(declare-fun e!31807 () Bool)

(assert (=> b!53795 (= e!31802 (not e!31807))))

(declare-fun res!34572 () Bool)

(assert (=> b!53795 (=> res!34572 e!31807)))

(declare-fun lt!9760 () Token!252)

(declare-fun contains!140 (BalanceConc!590 Token!252) Bool)

(assert (=> b!53795 (= res!34572 (not (contains!140 v!6227 lt!9760)))))

(declare-fun apply!126 (BalanceConc!590 Int) Token!252)

(assert (=> b!53795 (= lt!9760 (apply!126 v!6227 from!821))))

(declare-fun lt!9761 () List!1136)

(declare-fun lt!9757 () List!1136)

(declare-fun tail!79 (List!1136) List!1136)

(declare-fun drop!55 (List!1136 Int) List!1136)

(assert (=> b!53795 (= (tail!79 lt!9761) (drop!55 lt!9757 (+ 2 from!821)))))

(declare-datatypes ((Unit!641 0))(
  ( (Unit!642) )
))
(declare-fun lt!9763 () Unit!641)

(declare-fun lemmaDropTail!47 (List!1136 Int) Unit!641)

(assert (=> b!53795 (= lt!9763 (lemmaDropTail!47 lt!9757 (+ 1 from!821)))))

(declare-fun lt!9759 () List!1136)

(assert (=> b!53795 (= (tail!79 lt!9759) lt!9761)))

(declare-fun lt!9765 () Unit!641)

(assert (=> b!53795 (= lt!9765 (lemmaDropTail!47 lt!9757 from!821))))

(declare-fun head!395 (List!1136) Token!252)

(declare-fun apply!127 (List!1136 Int) Token!252)

(assert (=> b!53795 (= (head!395 lt!9761) (apply!127 lt!9757 (+ 1 from!821)))))

(assert (=> b!53795 (= lt!9761 (drop!55 lt!9757 (+ 1 from!821)))))

(declare-fun lt!9762 () Unit!641)

(declare-fun lemmaDropApply!55 (List!1136 Int) Unit!641)

(assert (=> b!53795 (= lt!9762 (lemmaDropApply!55 lt!9757 (+ 1 from!821)))))

(assert (=> b!53795 (= (head!395 lt!9759) (apply!127 lt!9757 from!821))))

(assert (=> b!53795 (= lt!9759 (drop!55 lt!9757 from!821))))

(declare-fun lt!9764 () Unit!641)

(assert (=> b!53795 (= lt!9764 (lemmaDropApply!55 lt!9757 from!821))))

(declare-fun list!294 (BalanceConc!590) List!1136)

(assert (=> b!53795 (= lt!9757 (list!294 v!6227))))

(declare-fun b!53796 () Bool)

(declare-fun res!34568 () Bool)

(assert (=> b!53796 (=> res!34568 e!31807)))

(declare-fun contains!141 (List!1136 Token!252) Bool)

(assert (=> b!53796 (= res!34568 (not (contains!141 lt!9757 lt!9760)))))

(declare-fun b!53797 () Bool)

(declare-fun e!31803 () Bool)

(declare-fun tp!34553 () Bool)

(declare-fun inv!1492 (Conc!293) Bool)

(assert (=> b!53797 (= e!31803 (and (inv!1492 (c!17087 v!6227)) tp!34553))))

(declare-fun b!53798 () Bool)

(declare-fun res!34571 () Bool)

(declare-fun e!31805 () Bool)

(assert (=> b!53798 (=> res!34571 e!31805)))

(declare-fun lt!9758 () Token!252)

(assert (=> b!53798 (= res!34571 (not (contains!141 lt!9757 lt!9758)))))

(declare-fun b!53799 () Bool)

(declare-fun res!34570 () Bool)

(assert (=> b!53799 (=> (not res!34570) (not e!31802))))

(declare-fun isEmpty!230 (List!1137) Bool)

(assert (=> b!53799 (= res!34570 (not (isEmpty!230 rules!1069)))))

(declare-fun e!31804 () Bool)

(assert (=> b!53800 (= e!31804 (and tp!34552 tp!34551))))

(declare-fun b!53801 () Bool)

(assert (=> b!53801 (= e!31807 e!31805)))

(declare-fun res!34566 () Bool)

(assert (=> b!53801 (=> res!34566 e!31805)))

(assert (=> b!53801 (= res!34566 (not (contains!140 v!6227 lt!9758)))))

(assert (=> b!53801 (= lt!9758 (apply!126 v!6227 (+ 1 from!821)))))

(declare-fun res!34563 () Bool)

(assert (=> start!4188 (=> (not res!34563) (not e!31809))))

(assert (=> start!4188 (= res!34563 (and (is-Lexer!134 thiss!11059) (>= from!821 0)))))

(assert (=> start!4188 e!31809))

(assert (=> start!4188 true))

(declare-fun inv!1493 (BalanceConc!590) Bool)

(assert (=> start!4188 (and (inv!1493 v!6227) e!31803)))

(declare-fun e!31801 () Bool)

(assert (=> start!4188 e!31801))

(declare-fun e!31808 () Bool)

(declare-fun tp!34549 () Bool)

(declare-fun b!53802 () Bool)

(declare-fun inv!1489 (String!1564) Bool)

(declare-fun inv!1494 (TokenValueInjection!292) Bool)

(assert (=> b!53802 (= e!31808 (and tp!34549 (inv!1489 (tag!422 (h!6528 rules!1069))) (inv!1494 (transformation!244 (h!6528 rules!1069))) e!31804))))

(declare-fun b!53803 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!46 (LexerInterface!136 List!1137 List!1136) Bool)

(assert (=> b!53803 (= e!31805 (rulesProduceEachTokenIndividuallyList!46 thiss!11059 rules!1069 lt!9757))))

(declare-fun b!53804 () Bool)

(declare-fun tp!34550 () Bool)

(assert (=> b!53804 (= e!31801 (and e!31808 tp!34550))))

(assert (= (and start!4188 res!34563) b!53791))

(assert (= (and b!53791 res!34569) b!53799))

(assert (= (and b!53799 res!34570) b!53793))

(assert (= (and b!53793 res!34565) b!53794))

(assert (= (and b!53794 res!34564) b!53792))

(assert (= (and b!53792 res!34567) b!53795))

(assert (= (and b!53795 (not res!34572)) b!53796))

(assert (= (and b!53796 (not res!34568)) b!53801))

(assert (= (and b!53801 (not res!34566)) b!53798))

(assert (= (and b!53798 (not res!34571)) b!53803))

(assert (= start!4188 b!53797))

(assert (= b!53802 b!53800))

(assert (= b!53804 b!53802))

(assert (= (and start!4188 (is-Cons!1131 rules!1069)) b!53804))

(declare-fun m!27642 () Bool)

(assert (=> b!53795 m!27642))

(declare-fun m!27644 () Bool)

(assert (=> b!53795 m!27644))

(declare-fun m!27646 () Bool)

(assert (=> b!53795 m!27646))

(declare-fun m!27648 () Bool)

(assert (=> b!53795 m!27648))

(declare-fun m!27650 () Bool)

(assert (=> b!53795 m!27650))

(declare-fun m!27652 () Bool)

(assert (=> b!53795 m!27652))

(declare-fun m!27654 () Bool)

(assert (=> b!53795 m!27654))

(declare-fun m!27656 () Bool)

(assert (=> b!53795 m!27656))

(declare-fun m!27658 () Bool)

(assert (=> b!53795 m!27658))

(declare-fun m!27660 () Bool)

(assert (=> b!53795 m!27660))

(declare-fun m!27662 () Bool)

(assert (=> b!53795 m!27662))

(declare-fun m!27664 () Bool)

(assert (=> b!53795 m!27664))

(declare-fun m!27666 () Bool)

(assert (=> b!53795 m!27666))

(declare-fun m!27668 () Bool)

(assert (=> b!53795 m!27668))

(declare-fun m!27670 () Bool)

(assert (=> b!53795 m!27670))

(declare-fun m!27672 () Bool)

(assert (=> b!53795 m!27672))

(declare-fun m!27674 () Bool)

(assert (=> b!53799 m!27674))

(declare-fun m!27676 () Bool)

(assert (=> b!53793 m!27676))

(declare-fun m!27678 () Bool)

(assert (=> b!53794 m!27678))

(declare-fun m!27680 () Bool)

(assert (=> b!53801 m!27680))

(declare-fun m!27682 () Bool)

(assert (=> b!53801 m!27682))

(declare-fun m!27684 () Bool)

(assert (=> b!53791 m!27684))

(declare-fun m!27686 () Bool)

(assert (=> b!53798 m!27686))

(declare-fun m!27688 () Bool)

(assert (=> b!53796 m!27688))

(declare-fun m!27690 () Bool)

(assert (=> start!4188 m!27690))

(declare-fun m!27692 () Bool)

(assert (=> b!53803 m!27692))

(declare-fun m!27694 () Bool)

(assert (=> b!53797 m!27694))

(declare-fun m!27696 () Bool)

(assert (=> b!53802 m!27696))

(declare-fun m!27698 () Bool)

(assert (=> b!53802 m!27698))

(push 1)

(assert (not b!53793))

(assert (not b!53791))

(assert (not b_next!1755))

(assert (not b!53804))

(assert (not b_next!1753))

(assert (not b!53801))

(assert (not b!53799))

(assert (not b!53797))

(assert (not b!53795))

(assert (not b!53798))

(assert (not b!53803))

(assert b_and!1803)

(assert b_and!1805)

(assert (not b!53802))

(assert (not start!4188))

(assert (not b!53796))

(assert (not b!53794))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1805)

(assert b_and!1803)

(assert (not b_next!1753))

(assert (not b_next!1755))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6714 () Bool)

(declare-fun lt!9799 () Bool)

(assert (=> d!6714 (= lt!9799 (contains!141 (list!294 v!6227) lt!9758))))

(declare-fun contains!144 (Conc!293 Token!252) Bool)

(assert (=> d!6714 (= lt!9799 (contains!144 (c!17087 v!6227) lt!9758))))

(assert (=> d!6714 (= (contains!140 v!6227 lt!9758) lt!9799)))

(declare-fun bs!6733 () Bool)

(assert (= bs!6733 d!6714))

(assert (=> bs!6733 m!27658))

(assert (=> bs!6733 m!27658))

(declare-fun m!27758 () Bool)

(assert (=> bs!6733 m!27758))

(declare-fun m!27760 () Bool)

(assert (=> bs!6733 m!27760))

(assert (=> b!53801 d!6714))

(declare-fun d!6716 () Bool)

(declare-fun lt!9802 () Token!252)

(assert (=> d!6716 (= lt!9802 (apply!127 (list!294 v!6227) (+ 1 from!821)))))

(declare-fun apply!130 (Conc!293 Int) Token!252)

(assert (=> d!6716 (= lt!9802 (apply!130 (c!17087 v!6227) (+ 1 from!821)))))

(declare-fun e!31839 () Bool)

(assert (=> d!6716 e!31839))

(declare-fun res!34610 () Bool)

(assert (=> d!6716 (=> (not res!34610) (not e!31839))))

(assert (=> d!6716 (= res!34610 (<= 0 (+ 1 from!821)))))

(assert (=> d!6716 (= (apply!126 v!6227 (+ 1 from!821)) lt!9802)))

(declare-fun b!53849 () Bool)

(assert (=> b!53849 (= e!31839 (< (+ 1 from!821) (size!1024 v!6227)))))

(assert (= (and d!6716 res!34610) b!53849))

(assert (=> d!6716 m!27658))

(assert (=> d!6716 m!27658))

(declare-fun m!27762 () Bool)

(assert (=> d!6716 m!27762))

(declare-fun m!27764 () Bool)

(assert (=> d!6716 m!27764))

(assert (=> b!53849 m!27684))

(assert (=> b!53801 d!6716))

(declare-fun d!6718 () Bool)

(assert (=> d!6718 (= (inv!1489 (tag!422 (h!6528 rules!1069))) (= (mod (str.len (value!9852 (tag!422 (h!6528 rules!1069)))) 2) 0))))

(assert (=> b!53802 d!6718))

(declare-fun d!6720 () Bool)

(declare-fun res!34613 () Bool)

(declare-fun e!31842 () Bool)

(assert (=> d!6720 (=> (not res!34613) (not e!31842))))

(declare-fun semiInverseModEq!28 (Int Int) Bool)

(assert (=> d!6720 (= res!34613 (semiInverseModEq!28 (toChars!582 (transformation!244 (h!6528 rules!1069))) (toValue!723 (transformation!244 (h!6528 rules!1069)))))))

(assert (=> d!6720 (= (inv!1494 (transformation!244 (h!6528 rules!1069))) e!31842)))

(declare-fun b!53852 () Bool)

(declare-fun equivClasses!24 (Int Int) Bool)

(assert (=> b!53852 (= e!31842 (equivClasses!24 (toChars!582 (transformation!244 (h!6528 rules!1069))) (toValue!723 (transformation!244 (h!6528 rules!1069)))))))

(assert (= (and d!6720 res!34613) b!53852))

(declare-fun m!27766 () Bool)

(assert (=> d!6720 m!27766))

(declare-fun m!27768 () Bool)

(assert (=> b!53852 m!27768))

(assert (=> b!53802 d!6720))

(declare-fun d!6726 () Bool)

(declare-fun lt!9805 () Int)

(declare-fun size!1027 (List!1136) Int)

(assert (=> d!6726 (= lt!9805 (size!1027 (list!294 v!6227)))))

(declare-fun size!1028 (Conc!293) Int)

(assert (=> d!6726 (= lt!9805 (size!1028 (c!17087 v!6227)))))

(assert (=> d!6726 (= (size!1024 v!6227) lt!9805)))

(declare-fun bs!6734 () Bool)

(assert (= bs!6734 d!6726))

(assert (=> bs!6734 m!27658))

(assert (=> bs!6734 m!27658))

(declare-fun m!27770 () Bool)

(assert (=> bs!6734 m!27770))

(declare-fun m!27772 () Bool)

(assert (=> bs!6734 m!27772))

(assert (=> b!53791 d!6726))

(declare-fun d!6728 () Bool)

(declare-fun lt!9810 () Bool)

(declare-fun content!36 (List!1136) (Set Token!252))

(assert (=> d!6728 (= lt!9810 (set.member lt!9758 (content!36 lt!9757)))))

(declare-fun e!31848 () Bool)

(assert (=> d!6728 (= lt!9810 e!31848)))

(declare-fun res!34618 () Bool)

(assert (=> d!6728 (=> (not res!34618) (not e!31848))))

(assert (=> d!6728 (= res!34618 (is-Cons!1130 lt!9757))))

(assert (=> d!6728 (= (contains!141 lt!9757 lt!9758) lt!9810)))

(declare-fun b!53857 () Bool)

(declare-fun e!31847 () Bool)

(assert (=> b!53857 (= e!31848 e!31847)))

(declare-fun res!34619 () Bool)

(assert (=> b!53857 (=> res!34619 e!31847)))

(assert (=> b!53857 (= res!34619 (= (h!6527 lt!9757) lt!9758))))

(declare-fun b!53858 () Bool)

(assert (=> b!53858 (= e!31847 (contains!141 (t!17411 lt!9757) lt!9758))))

(assert (= (and d!6728 res!34618) b!53857))

(assert (= (and b!53857 (not res!34619)) b!53858))

(declare-fun m!27774 () Bool)

(assert (=> d!6728 m!27774))

(declare-fun m!27776 () Bool)

(assert (=> d!6728 m!27776))

(declare-fun m!27778 () Bool)

(assert (=> b!53858 m!27778))

(assert (=> b!53798 d!6728))

(declare-fun d!6730 () Bool)

(declare-fun isBalanced!44 (Conc!293) Bool)

(assert (=> d!6730 (= (inv!1493 v!6227) (isBalanced!44 (c!17087 v!6227)))))

(declare-fun bs!6736 () Bool)

(assert (= bs!6736 d!6730))

(declare-fun m!27784 () Bool)

(assert (=> bs!6736 m!27784))

(assert (=> start!4188 d!6730))

(declare-fun d!6734 () Bool)

(assert (=> d!6734 (= (isEmpty!230 rules!1069) (is-Nil!1131 rules!1069))))

(assert (=> b!53799 d!6734))

(declare-fun d!6736 () Bool)

(declare-fun lt!9812 () Token!252)

(assert (=> d!6736 (= lt!9812 (apply!127 (list!294 v!6227) from!821))))

(assert (=> d!6736 (= lt!9812 (apply!130 (c!17087 v!6227) from!821))))

(declare-fun e!31849 () Bool)

(assert (=> d!6736 e!31849))

(declare-fun res!34620 () Bool)

(assert (=> d!6736 (=> (not res!34620) (not e!31849))))

(assert (=> d!6736 (= res!34620 (<= 0 from!821))))

(assert (=> d!6736 (= (apply!126 v!6227 from!821) lt!9812)))

(declare-fun b!53859 () Bool)

(assert (=> b!53859 (= e!31849 (< from!821 (size!1024 v!6227)))))

(assert (= (and d!6736 res!34620) b!53859))

(assert (=> d!6736 m!27658))

(assert (=> d!6736 m!27658))

(declare-fun m!27786 () Bool)

(assert (=> d!6736 m!27786))

(declare-fun m!27788 () Bool)

(assert (=> d!6736 m!27788))

(assert (=> b!53859 m!27684))

(assert (=> b!53795 d!6736))

(declare-fun d!6738 () Bool)

(declare-fun list!296 (Conc!293) List!1136)

(assert (=> d!6738 (= (list!294 v!6227) (list!296 (c!17087 v!6227)))))

(declare-fun bs!6737 () Bool)

(assert (= bs!6737 d!6738))

(declare-fun m!27790 () Bool)

(assert (=> bs!6737 m!27790))

(assert (=> b!53795 d!6738))

(declare-fun d!6740 () Bool)

(assert (=> d!6740 (= (head!395 (drop!55 lt!9757 from!821)) (apply!127 lt!9757 from!821))))

(declare-fun lt!9815 () Unit!641)

(declare-fun choose!1197 (List!1136 Int) Unit!641)

(assert (=> d!6740 (= lt!9815 (choose!1197 lt!9757 from!821))))

(declare-fun e!31852 () Bool)

(assert (=> d!6740 e!31852))

(declare-fun res!34623 () Bool)

(assert (=> d!6740 (=> (not res!34623) (not e!31852))))

(assert (=> d!6740 (= res!34623 (>= from!821 0))))

(assert (=> d!6740 (= (lemmaDropApply!55 lt!9757 from!821) lt!9815)))

(declare-fun b!53862 () Bool)

(assert (=> b!53862 (= e!31852 (< from!821 (size!1027 lt!9757)))))

(assert (= (and d!6740 res!34623) b!53862))

(assert (=> d!6740 m!27664))

(assert (=> d!6740 m!27664))

(declare-fun m!27792 () Bool)

(assert (=> d!6740 m!27792))

(assert (=> d!6740 m!27650))

(declare-fun m!27794 () Bool)

(assert (=> d!6740 m!27794))

(declare-fun m!27796 () Bool)

(assert (=> b!53862 m!27796))

(assert (=> b!53795 d!6740))

(declare-fun b!53884 () Bool)

(declare-fun e!31866 () List!1136)

(assert (=> b!53884 (= e!31866 lt!9757)))

(declare-fun b!53885 () Bool)

(declare-fun e!31867 () Int)

(assert (=> b!53885 (= e!31867 0)))

(declare-fun b!53886 () Bool)

(declare-fun e!31869 () List!1136)

(assert (=> b!53886 (= e!31869 e!31866)))

(declare-fun c!17099 () Bool)

(assert (=> b!53886 (= c!17099 (<= from!821 0))))

(declare-fun b!53887 () Bool)

(assert (=> b!53887 (= e!31866 (drop!55 (t!17411 lt!9757) (- from!821 1)))))

(declare-fun d!6742 () Bool)

(declare-fun e!31868 () Bool)

(assert (=> d!6742 e!31868))

(declare-fun res!34629 () Bool)

(assert (=> d!6742 (=> (not res!34629) (not e!31868))))

(declare-fun lt!9821 () List!1136)

(assert (=> d!6742 (= res!34629 (set.subset (content!36 lt!9821) (content!36 lt!9757)))))

(assert (=> d!6742 (= lt!9821 e!31869)))

(declare-fun c!17100 () Bool)

(assert (=> d!6742 (= c!17100 (is-Nil!1130 lt!9757))))

(assert (=> d!6742 (= (drop!55 lt!9757 from!821) lt!9821)))

(declare-fun bm!3396 () Bool)

(declare-fun call!3401 () Int)

(assert (=> bm!3396 (= call!3401 (size!1027 lt!9757))))

(declare-fun b!53888 () Bool)

(declare-fun e!31870 () Int)

(assert (=> b!53888 (= e!31868 (= (size!1027 lt!9821) e!31870))))

(declare-fun c!17101 () Bool)

(assert (=> b!53888 (= c!17101 (<= from!821 0))))

(declare-fun b!53889 () Bool)

(assert (=> b!53889 (= e!31867 (- call!3401 from!821))))

(declare-fun b!53890 () Bool)

(assert (=> b!53890 (= e!31869 Nil!1130)))

(declare-fun b!53891 () Bool)

(assert (=> b!53891 (= e!31870 e!31867)))

(declare-fun c!17102 () Bool)

(assert (=> b!53891 (= c!17102 (>= from!821 call!3401))))

(declare-fun b!53892 () Bool)

(assert (=> b!53892 (= e!31870 call!3401)))

(assert (= (and d!6742 c!17100) b!53890))

(assert (= (and d!6742 (not c!17100)) b!53886))

(assert (= (and b!53886 c!17099) b!53884))

(assert (= (and b!53886 (not c!17099)) b!53887))

(assert (= (and d!6742 res!34629) b!53888))

(assert (= (and b!53888 c!17101) b!53892))

(assert (= (and b!53888 (not c!17101)) b!53891))

(assert (= (and b!53891 c!17102) b!53885))

(assert (= (and b!53891 (not c!17102)) b!53889))

(assert (= (or b!53892 b!53891 b!53889) bm!3396))

(declare-fun m!27802 () Bool)

(assert (=> b!53887 m!27802))

(declare-fun m!27804 () Bool)

(assert (=> d!6742 m!27804))

(assert (=> d!6742 m!27774))

(assert (=> bm!3396 m!27796))

(declare-fun m!27806 () Bool)

(assert (=> b!53888 m!27806))

(assert (=> b!53795 d!6742))

(declare-fun d!6746 () Bool)

(assert (=> d!6746 (= (head!395 lt!9759) (h!6527 lt!9759))))

(assert (=> b!53795 d!6746))

(declare-fun d!6748 () Bool)

(assert (=> d!6748 (= (tail!79 (drop!55 lt!9757 (+ 1 from!821))) (drop!55 lt!9757 (+ 1 from!821 1)))))

(declare-fun lt!9824 () Unit!641)

(declare-fun choose!1198 (List!1136 Int) Unit!641)

(assert (=> d!6748 (= lt!9824 (choose!1198 lt!9757 (+ 1 from!821)))))

(declare-fun e!31873 () Bool)

(assert (=> d!6748 e!31873))

(declare-fun res!34632 () Bool)

(assert (=> d!6748 (=> (not res!34632) (not e!31873))))

(assert (=> d!6748 (= res!34632 (>= (+ 1 from!821) 0))))

(assert (=> d!6748 (= (lemmaDropTail!47 lt!9757 (+ 1 from!821)) lt!9824)))

(declare-fun b!53895 () Bool)

(assert (=> b!53895 (= e!31873 (< (+ 1 from!821) (size!1027 lt!9757)))))

(assert (= (and d!6748 res!34632) b!53895))

(assert (=> d!6748 m!27672))

(assert (=> d!6748 m!27672))

(declare-fun m!27808 () Bool)

(assert (=> d!6748 m!27808))

(declare-fun m!27810 () Bool)

(assert (=> d!6748 m!27810))

(declare-fun m!27812 () Bool)

(assert (=> d!6748 m!27812))

(assert (=> b!53895 m!27796))

(assert (=> b!53795 d!6748))

(declare-fun b!53896 () Bool)

(declare-fun e!31874 () List!1136)

(assert (=> b!53896 (= e!31874 lt!9757)))

(declare-fun b!53897 () Bool)

(declare-fun e!31875 () Int)

(assert (=> b!53897 (= e!31875 0)))

(declare-fun b!53898 () Bool)

(declare-fun e!31877 () List!1136)

(assert (=> b!53898 (= e!31877 e!31874)))

(declare-fun c!17103 () Bool)

(assert (=> b!53898 (= c!17103 (<= (+ 2 from!821) 0))))

(declare-fun b!53899 () Bool)

(assert (=> b!53899 (= e!31874 (drop!55 (t!17411 lt!9757) (- (+ 2 from!821) 1)))))

(declare-fun d!6750 () Bool)

(declare-fun e!31876 () Bool)

(assert (=> d!6750 e!31876))

(declare-fun res!34633 () Bool)

(assert (=> d!6750 (=> (not res!34633) (not e!31876))))

(declare-fun lt!9825 () List!1136)

(assert (=> d!6750 (= res!34633 (set.subset (content!36 lt!9825) (content!36 lt!9757)))))

(assert (=> d!6750 (= lt!9825 e!31877)))

(declare-fun c!17104 () Bool)

(assert (=> d!6750 (= c!17104 (is-Nil!1130 lt!9757))))

(assert (=> d!6750 (= (drop!55 lt!9757 (+ 2 from!821)) lt!9825)))

(declare-fun bm!3397 () Bool)

(declare-fun call!3402 () Int)

(assert (=> bm!3397 (= call!3402 (size!1027 lt!9757))))

(declare-fun b!53900 () Bool)

(declare-fun e!31878 () Int)

(assert (=> b!53900 (= e!31876 (= (size!1027 lt!9825) e!31878))))

(declare-fun c!17105 () Bool)

(assert (=> b!53900 (= c!17105 (<= (+ 2 from!821) 0))))

(declare-fun b!53901 () Bool)

(assert (=> b!53901 (= e!31875 (- call!3402 (+ 2 from!821)))))

(declare-fun b!53902 () Bool)

(assert (=> b!53902 (= e!31877 Nil!1130)))

(declare-fun b!53903 () Bool)

(assert (=> b!53903 (= e!31878 e!31875)))

(declare-fun c!17106 () Bool)

(assert (=> b!53903 (= c!17106 (>= (+ 2 from!821) call!3402))))

(declare-fun b!53904 () Bool)

(assert (=> b!53904 (= e!31878 call!3402)))

(assert (= (and d!6750 c!17104) b!53902))

(assert (= (and d!6750 (not c!17104)) b!53898))

(assert (= (and b!53898 c!17103) b!53896))

(assert (= (and b!53898 (not c!17103)) b!53899))

(assert (= (and d!6750 res!34633) b!53900))

(assert (= (and b!53900 c!17105) b!53904))

(assert (= (and b!53900 (not c!17105)) b!53903))

(assert (= (and b!53903 c!17106) b!53897))

(assert (= (and b!53903 (not c!17106)) b!53901))

(assert (= (or b!53904 b!53903 b!53901) bm!3397))

(declare-fun m!27814 () Bool)

(assert (=> b!53899 m!27814))

(declare-fun m!27816 () Bool)

(assert (=> d!6750 m!27816))

(assert (=> d!6750 m!27774))

(assert (=> bm!3397 m!27796))

(declare-fun m!27818 () Bool)

(assert (=> b!53900 m!27818))

(assert (=> b!53795 d!6750))

(declare-fun b!53909 () Bool)

(declare-fun e!31881 () List!1136)

(assert (=> b!53909 (= e!31881 lt!9757)))

(declare-fun b!53910 () Bool)

(declare-fun e!31882 () Int)

(assert (=> b!53910 (= e!31882 0)))

(declare-fun b!53911 () Bool)

(declare-fun e!31884 () List!1136)

(assert (=> b!53911 (= e!31884 e!31881)))

(declare-fun c!17109 () Bool)

(assert (=> b!53911 (= c!17109 (<= (+ 1 from!821) 0))))

(declare-fun b!53912 () Bool)

(assert (=> b!53912 (= e!31881 (drop!55 (t!17411 lt!9757) (- (+ 1 from!821) 1)))))

(declare-fun d!6752 () Bool)

(declare-fun e!31883 () Bool)

(assert (=> d!6752 e!31883))

(declare-fun res!34634 () Bool)

(assert (=> d!6752 (=> (not res!34634) (not e!31883))))

(declare-fun lt!9828 () List!1136)

(assert (=> d!6752 (= res!34634 (set.subset (content!36 lt!9828) (content!36 lt!9757)))))

(assert (=> d!6752 (= lt!9828 e!31884)))

(declare-fun c!17110 () Bool)

(assert (=> d!6752 (= c!17110 (is-Nil!1130 lt!9757))))

(assert (=> d!6752 (= (drop!55 lt!9757 (+ 1 from!821)) lt!9828)))

(declare-fun bm!3398 () Bool)

(declare-fun call!3403 () Int)

(assert (=> bm!3398 (= call!3403 (size!1027 lt!9757))))

(declare-fun b!53913 () Bool)

(declare-fun e!31885 () Int)

(assert (=> b!53913 (= e!31883 (= (size!1027 lt!9828) e!31885))))

(declare-fun c!17111 () Bool)

(assert (=> b!53913 (= c!17111 (<= (+ 1 from!821) 0))))

(declare-fun b!53914 () Bool)

(assert (=> b!53914 (= e!31882 (- call!3403 (+ 1 from!821)))))

(declare-fun b!53915 () Bool)

(assert (=> b!53915 (= e!31884 Nil!1130)))

(declare-fun b!53916 () Bool)

(assert (=> b!53916 (= e!31885 e!31882)))

(declare-fun c!17112 () Bool)

(assert (=> b!53916 (= c!17112 (>= (+ 1 from!821) call!3403))))

(declare-fun b!53917 () Bool)

(assert (=> b!53917 (= e!31885 call!3403)))

(assert (= (and d!6752 c!17110) b!53915))

(assert (= (and d!6752 (not c!17110)) b!53911))

(assert (= (and b!53911 c!17109) b!53909))

(assert (= (and b!53911 (not c!17109)) b!53912))

(assert (= (and d!6752 res!34634) b!53913))

(assert (= (and b!53913 c!17111) b!53917))

(assert (= (and b!53913 (not c!17111)) b!53916))

(assert (= (and b!53916 c!17112) b!53910))

(assert (= (and b!53916 (not c!17112)) b!53914))

(assert (= (or b!53917 b!53916 b!53914) bm!3398))

(declare-fun m!27820 () Bool)

(assert (=> b!53912 m!27820))

(declare-fun m!27822 () Bool)

(assert (=> d!6752 m!27822))

(assert (=> d!6752 m!27774))

(assert (=> bm!3398 m!27796))

(declare-fun m!27824 () Bool)

(assert (=> b!53913 m!27824))

(assert (=> b!53795 d!6752))

(declare-fun d!6754 () Bool)

(assert (=> d!6754 (= (tail!79 (drop!55 lt!9757 from!821)) (drop!55 lt!9757 (+ from!821 1)))))

(declare-fun lt!9829 () Unit!641)

(assert (=> d!6754 (= lt!9829 (choose!1198 lt!9757 from!821))))

(declare-fun e!31888 () Bool)

(assert (=> d!6754 e!31888))

(declare-fun res!34635 () Bool)

(assert (=> d!6754 (=> (not res!34635) (not e!31888))))

(assert (=> d!6754 (= res!34635 (>= from!821 0))))

(assert (=> d!6754 (= (lemmaDropTail!47 lt!9757 from!821) lt!9829)))

(declare-fun b!53922 () Bool)

(assert (=> b!53922 (= e!31888 (< from!821 (size!1027 lt!9757)))))

(assert (= (and d!6754 res!34635) b!53922))

(assert (=> d!6754 m!27664))

(assert (=> d!6754 m!27664))

(declare-fun m!27826 () Bool)

(assert (=> d!6754 m!27826))

(declare-fun m!27828 () Bool)

(assert (=> d!6754 m!27828))

(declare-fun m!27830 () Bool)

(assert (=> d!6754 m!27830))

(assert (=> b!53922 m!27796))

(assert (=> b!53795 d!6754))

(declare-fun d!6756 () Bool)

(assert (=> d!6756 (= (head!395 (drop!55 lt!9757 (+ 1 from!821))) (apply!127 lt!9757 (+ 1 from!821)))))

(declare-fun lt!9830 () Unit!641)

(assert (=> d!6756 (= lt!9830 (choose!1197 lt!9757 (+ 1 from!821)))))

(declare-fun e!31889 () Bool)

(assert (=> d!6756 e!31889))

(declare-fun res!34636 () Bool)

(assert (=> d!6756 (=> (not res!34636) (not e!31889))))

(assert (=> d!6756 (= res!34636 (>= (+ 1 from!821) 0))))

(assert (=> d!6756 (= (lemmaDropApply!55 lt!9757 (+ 1 from!821)) lt!9830)))

(declare-fun b!53923 () Bool)

(assert (=> b!53923 (= e!31889 (< (+ 1 from!821) (size!1027 lt!9757)))))

(assert (= (and d!6756 res!34636) b!53923))

(assert (=> d!6756 m!27672))

(assert (=> d!6756 m!27672))

(declare-fun m!27832 () Bool)

(assert (=> d!6756 m!27832))

(assert (=> d!6756 m!27656))

(declare-fun m!27834 () Bool)

(assert (=> d!6756 m!27834))

(assert (=> b!53923 m!27796))

(assert (=> b!53795 d!6756))

(declare-fun d!6758 () Bool)

(assert (=> d!6758 (= (tail!79 lt!9759) (t!17411 lt!9759))))

(assert (=> b!53795 d!6758))

(declare-fun d!6760 () Bool)

(declare-fun lt!9833 () Token!252)

(assert (=> d!6760 (contains!141 lt!9757 lt!9833)))

(declare-fun e!31900 () Token!252)

(assert (=> d!6760 (= lt!9833 e!31900)))

(declare-fun c!17121 () Bool)

(assert (=> d!6760 (= c!17121 (= (+ 1 from!821) 0))))

(declare-fun e!31901 () Bool)

(assert (=> d!6760 e!31901))

(declare-fun res!34641 () Bool)

(assert (=> d!6760 (=> (not res!34641) (not e!31901))))

(assert (=> d!6760 (= res!34641 (<= 0 (+ 1 from!821)))))

(assert (=> d!6760 (= (apply!127 lt!9757 (+ 1 from!821)) lt!9833)))

(declare-fun b!53940 () Bool)

(assert (=> b!53940 (= e!31901 (< (+ 1 from!821) (size!1027 lt!9757)))))

(declare-fun b!53941 () Bool)

(assert (=> b!53941 (= e!31900 (head!395 lt!9757))))

(declare-fun b!53942 () Bool)

(assert (=> b!53942 (= e!31900 (apply!127 (tail!79 lt!9757) (- (+ 1 from!821) 1)))))

(assert (= (and d!6760 res!34641) b!53940))

(assert (= (and d!6760 c!17121) b!53941))

(assert (= (and d!6760 (not c!17121)) b!53942))

(declare-fun m!27836 () Bool)

(assert (=> d!6760 m!27836))

(assert (=> b!53940 m!27796))

(declare-fun m!27838 () Bool)

(assert (=> b!53941 m!27838))

(declare-fun m!27840 () Bool)

(assert (=> b!53942 m!27840))

(assert (=> b!53942 m!27840))

(declare-fun m!27842 () Bool)

(assert (=> b!53942 m!27842))

(assert (=> b!53795 d!6760))

(declare-fun d!6762 () Bool)

(declare-fun lt!9834 () Token!252)

(assert (=> d!6762 (contains!141 lt!9757 lt!9834)))

(declare-fun e!31902 () Token!252)

(assert (=> d!6762 (= lt!9834 e!31902)))

(declare-fun c!17122 () Bool)

(assert (=> d!6762 (= c!17122 (= from!821 0))))

(declare-fun e!31903 () Bool)

(assert (=> d!6762 e!31903))

(declare-fun res!34642 () Bool)

(assert (=> d!6762 (=> (not res!34642) (not e!31903))))

(assert (=> d!6762 (= res!34642 (<= 0 from!821))))

(assert (=> d!6762 (= (apply!127 lt!9757 from!821) lt!9834)))

(declare-fun b!53943 () Bool)

(assert (=> b!53943 (= e!31903 (< from!821 (size!1027 lt!9757)))))

(declare-fun b!53944 () Bool)

(assert (=> b!53944 (= e!31902 (head!395 lt!9757))))

(declare-fun b!53945 () Bool)

(assert (=> b!53945 (= e!31902 (apply!127 (tail!79 lt!9757) (- from!821 1)))))

(assert (= (and d!6762 res!34642) b!53943))

(assert (= (and d!6762 c!17122) b!53944))

(assert (= (and d!6762 (not c!17122)) b!53945))

(declare-fun m!27844 () Bool)

(assert (=> d!6762 m!27844))

(assert (=> b!53943 m!27796))

(assert (=> b!53944 m!27838))

(assert (=> b!53945 m!27840))

(assert (=> b!53945 m!27840))

(declare-fun m!27846 () Bool)

(assert (=> b!53945 m!27846))

(assert (=> b!53795 d!6762))

(declare-fun d!6764 () Bool)

(declare-fun lt!9835 () Bool)

(assert (=> d!6764 (= lt!9835 (contains!141 (list!294 v!6227) lt!9760))))

(assert (=> d!6764 (= lt!9835 (contains!144 (c!17087 v!6227) lt!9760))))

(assert (=> d!6764 (= (contains!140 v!6227 lt!9760) lt!9835)))

(declare-fun bs!6738 () Bool)

(assert (= bs!6738 d!6764))

(assert (=> bs!6738 m!27658))

(assert (=> bs!6738 m!27658))

(declare-fun m!27848 () Bool)

(assert (=> bs!6738 m!27848))

(declare-fun m!27850 () Bool)

(assert (=> bs!6738 m!27850))

(assert (=> b!53795 d!6764))

(declare-fun d!6766 () Bool)

(assert (=> d!6766 (= (tail!79 lt!9761) (t!17411 lt!9761))))

(assert (=> b!53795 d!6766))

(declare-fun d!6768 () Bool)

(assert (=> d!6768 (= (head!395 lt!9761) (h!6527 lt!9761))))

(assert (=> b!53795 d!6768))

(declare-fun d!6770 () Bool)

(declare-fun c!17129 () Bool)

(assert (=> d!6770 (= c!17129 (is-Node!293 (c!17087 v!6227)))))

(declare-fun e!31913 () Bool)

(assert (=> d!6770 (= (inv!1492 (c!17087 v!6227)) e!31913)))

(declare-fun b!53961 () Bool)

(declare-fun inv!1498 (Conc!293) Bool)

(assert (=> b!53961 (= e!31913 (inv!1498 (c!17087 v!6227)))))

(declare-fun b!53962 () Bool)

(declare-fun e!31914 () Bool)

(assert (=> b!53962 (= e!31913 e!31914)))

(declare-fun res!34646 () Bool)

(assert (=> b!53962 (= res!34646 (not (is-Leaf!551 (c!17087 v!6227))))))

(assert (=> b!53962 (=> res!34646 e!31914)))

(declare-fun b!53963 () Bool)

(declare-fun inv!1499 (Conc!293) Bool)

(assert (=> b!53963 (= e!31914 (inv!1499 (c!17087 v!6227)))))

(assert (= (and d!6770 c!17129) b!53961))

(assert (= (and d!6770 (not c!17129)) b!53962))

(assert (= (and b!53962 (not res!34646)) b!53963))

(declare-fun m!27862 () Bool)

(assert (=> b!53961 m!27862))

(declare-fun m!27864 () Bool)

(assert (=> b!53963 m!27864))

(assert (=> b!53797 d!6770))

(declare-fun d!6774 () Bool)

(declare-fun lt!9837 () Bool)

(assert (=> d!6774 (= lt!9837 (set.member lt!9760 (content!36 lt!9757)))))

(declare-fun e!31916 () Bool)

(assert (=> d!6774 (= lt!9837 e!31916)))

(declare-fun res!34647 () Bool)

(assert (=> d!6774 (=> (not res!34647) (not e!31916))))

(assert (=> d!6774 (= res!34647 (is-Cons!1130 lt!9757))))

(assert (=> d!6774 (= (contains!141 lt!9757 lt!9760) lt!9837)))

(declare-fun b!53964 () Bool)

(declare-fun e!31915 () Bool)

(assert (=> b!53964 (= e!31916 e!31915)))

(declare-fun res!34648 () Bool)

(assert (=> b!53964 (=> res!34648 e!31915)))

(assert (=> b!53964 (= res!34648 (= (h!6527 lt!9757) lt!9760))))

(declare-fun b!53965 () Bool)

(assert (=> b!53965 (= e!31915 (contains!141 (t!17411 lt!9757) lt!9760))))

(assert (= (and d!6774 res!34647) b!53964))

(assert (= (and b!53964 (not res!34648)) b!53965))

(assert (=> d!6774 m!27774))

(declare-fun m!27866 () Bool)

(assert (=> d!6774 m!27866))

(declare-fun m!27868 () Bool)

(assert (=> b!53965 m!27868))

(assert (=> b!53796 d!6774))

(declare-fun d!6776 () Bool)

(declare-fun res!34651 () Bool)

(declare-fun e!31919 () Bool)

(assert (=> d!6776 (=> (not res!34651) (not e!31919))))

(declare-fun rulesValid!36 (LexerInterface!136 List!1137) Bool)

(assert (=> d!6776 (= res!34651 (rulesValid!36 thiss!11059 rules!1069))))

(assert (=> d!6776 (= (rulesInvariant!130 thiss!11059 rules!1069) e!31919)))

(declare-fun b!53968 () Bool)

(declare-datatypes ((List!1142 0))(
  ( (Nil!1136) (Cons!1136 (h!6533 String!1564) (t!17427 List!1142)) )
))
(declare-fun noDuplicateTag!36 (LexerInterface!136 List!1137 List!1142) Bool)

(assert (=> b!53968 (= e!31919 (noDuplicateTag!36 thiss!11059 rules!1069 Nil!1136))))

(assert (= (and d!6776 res!34651) b!53968))

(declare-fun m!27870 () Bool)

(assert (=> d!6776 m!27870))

(declare-fun m!27872 () Bool)

(assert (=> b!53968 m!27872))

(assert (=> b!53793 d!6776))

(declare-fun b!54035 () Bool)

(declare-fun e!31969 () Bool)

(assert (=> b!54035 (= e!31969 true)))

(declare-fun b!54034 () Bool)

(declare-fun e!31968 () Bool)

(assert (=> b!54034 (= e!31968 e!31969)))

(declare-fun b!54033 () Bool)

(declare-fun e!31967 () Bool)

(assert (=> b!54033 (= e!31967 e!31968)))

(declare-fun d!6778 () Bool)

(assert (=> d!6778 e!31967))

(assert (= b!54034 b!54035))

(assert (= b!54033 b!54034))

(assert (= (and d!6778 (is-Cons!1131 rules!1069)) b!54033))

(declare-fun order!361 () Int)

(declare-fun order!363 () Int)

(declare-fun lambda!1102 () Int)

(declare-fun dynLambda!207 (Int Int) Int)

(declare-fun dynLambda!208 (Int Int) Int)

(assert (=> b!54035 (< (dynLambda!207 order!361 (toValue!723 (transformation!244 (h!6528 rules!1069)))) (dynLambda!208 order!363 lambda!1102))))

(declare-fun order!365 () Int)

(declare-fun dynLambda!209 (Int Int) Int)

(assert (=> b!54035 (< (dynLambda!209 order!365 (toChars!582 (transformation!244 (h!6528 rules!1069)))) (dynLambda!208 order!363 lambda!1102))))

(assert (=> d!6778 true))

(declare-fun lt!9859 () Bool)

(declare-fun forall!139 (List!1136 Int) Bool)

(assert (=> d!6778 (= lt!9859 (forall!139 lt!9757 lambda!1102))))

(declare-fun e!31960 () Bool)

(assert (=> d!6778 (= lt!9859 e!31960)))

(declare-fun res!34676 () Bool)

(assert (=> d!6778 (=> res!34676 e!31960)))

(assert (=> d!6778 (= res!34676 (not (is-Cons!1130 lt!9757)))))

(assert (=> d!6778 (not (isEmpty!230 rules!1069))))

(assert (=> d!6778 (= (rulesProduceEachTokenIndividuallyList!46 thiss!11059 rules!1069 lt!9757) lt!9859)))

(declare-fun b!54023 () Bool)

(declare-fun e!31959 () Bool)

(assert (=> b!54023 (= e!31960 e!31959)))

(declare-fun res!34677 () Bool)

(assert (=> b!54023 (=> (not res!34677) (not e!31959))))

(declare-fun rulesProduceIndividualToken!33 (LexerInterface!136 List!1137 Token!252) Bool)

(assert (=> b!54023 (= res!34677 (rulesProduceIndividualToken!33 thiss!11059 rules!1069 (h!6527 lt!9757)))))

(declare-fun b!54024 () Bool)

(assert (=> b!54024 (= e!31959 (rulesProduceEachTokenIndividuallyList!46 thiss!11059 rules!1069 (t!17411 lt!9757)))))

(assert (= (and d!6778 (not res!34676)) b!54023))

(assert (= (and b!54023 res!34677) b!54024))

(declare-fun m!27934 () Bool)

(assert (=> d!6778 m!27934))

(assert (=> d!6778 m!27674))

(declare-fun m!27936 () Bool)

(assert (=> b!54023 m!27936))

(declare-fun m!27938 () Bool)

(assert (=> b!54024 m!27938))

(assert (=> b!53803 d!6778))

(declare-fun bs!6742 () Bool)

(declare-fun d!6814 () Bool)

(assert (= bs!6742 (and d!6814 d!6778)))

(declare-fun lambda!1107 () Int)

(assert (=> bs!6742 (= lambda!1107 lambda!1102)))

(declare-fun b!54043 () Bool)

(declare-fun e!31975 () Bool)

(assert (=> b!54043 (= e!31975 true)))

(declare-fun b!54042 () Bool)

(declare-fun e!31974 () Bool)

(assert (=> b!54042 (= e!31974 e!31975)))

(declare-fun b!54041 () Bool)

(declare-fun e!31973 () Bool)

(assert (=> b!54041 (= e!31973 e!31974)))

(assert (=> d!6814 e!31973))

(assert (= b!54042 b!54043))

(assert (= b!54041 b!54042))

(assert (= (and d!6814 (is-Cons!1131 rules!1069)) b!54041))

(assert (=> b!54043 (< (dynLambda!207 order!361 (toValue!723 (transformation!244 (h!6528 rules!1069)))) (dynLambda!208 order!363 lambda!1107))))

(assert (=> b!54043 (< (dynLambda!209 order!365 (toChars!582 (transformation!244 (h!6528 rules!1069)))) (dynLambda!208 order!363 lambda!1107))))

(assert (=> d!6814 true))

(declare-fun e!31972 () Bool)

(assert (=> d!6814 e!31972))

(declare-fun res!34680 () Bool)

(assert (=> d!6814 (=> (not res!34680) (not e!31972))))

(declare-fun lt!9862 () Bool)

(assert (=> d!6814 (= res!34680 (= lt!9862 (forall!139 (list!294 v!6227) lambda!1107)))))

(declare-fun forall!140 (BalanceConc!590 Int) Bool)

(assert (=> d!6814 (= lt!9862 (forall!140 v!6227 lambda!1107))))

(assert (=> d!6814 (not (isEmpty!230 rules!1069))))

(assert (=> d!6814 (= (rulesProduceEachTokenIndividually!74 thiss!11059 rules!1069 v!6227) lt!9862)))

(declare-fun b!54040 () Bool)

(assert (=> b!54040 (= e!31972 (= lt!9862 (rulesProduceEachTokenIndividuallyList!46 thiss!11059 rules!1069 (list!294 v!6227))))))

(assert (= (and d!6814 res!34680) b!54040))

(assert (=> d!6814 m!27658))

(assert (=> d!6814 m!27658))

(declare-fun m!27940 () Bool)

(assert (=> d!6814 m!27940))

(declare-fun m!27942 () Bool)

(assert (=> d!6814 m!27942))

(assert (=> d!6814 m!27674))

(assert (=> b!54040 m!27658))

(assert (=> b!54040 m!27658))

(declare-fun m!27944 () Bool)

(assert (=> b!54040 m!27944))

(assert (=> b!53794 d!6814))

(declare-fun e!31978 () Bool)

(assert (=> b!53802 (= tp!34549 e!31978)))

(declare-fun b!54057 () Bool)

(declare-fun tp!34582 () Bool)

(declare-fun tp!34581 () Bool)

(assert (=> b!54057 (= e!31978 (and tp!34582 tp!34581))))

(declare-fun b!54054 () Bool)

(declare-fun tp_is_empty!555 () Bool)

(assert (=> b!54054 (= e!31978 tp_is_empty!555)))

(declare-fun b!54055 () Bool)

(declare-fun tp!34579 () Bool)

(declare-fun tp!34580 () Bool)

(assert (=> b!54055 (= e!31978 (and tp!34579 tp!34580))))

(declare-fun b!54056 () Bool)

(declare-fun tp!34583 () Bool)

(assert (=> b!54056 (= e!31978 tp!34583)))

(assert (= (and b!53802 (is-ElementMatch!312 (regex!244 (h!6528 rules!1069)))) b!54054))

(assert (= (and b!53802 (is-Concat!547 (regex!244 (h!6528 rules!1069)))) b!54055))

(assert (= (and b!53802 (is-Star!312 (regex!244 (h!6528 rules!1069)))) b!54056))

(assert (= (and b!53802 (is-Union!312 (regex!244 (h!6528 rules!1069)))) b!54057))

(declare-fun b!54066 () Bool)

(declare-fun tp!34591 () Bool)

(declare-fun e!31984 () Bool)

(declare-fun tp!34592 () Bool)

(assert (=> b!54066 (= e!31984 (and (inv!1492 (left!860 (c!17087 v!6227))) tp!34591 (inv!1492 (right!1190 (c!17087 v!6227))) tp!34592))))

(declare-fun b!54068 () Bool)

(declare-fun e!31983 () Bool)

(declare-fun tp!34590 () Bool)

(assert (=> b!54068 (= e!31983 tp!34590)))

(declare-fun b!54067 () Bool)

(declare-fun inv!1500 (IArray!587) Bool)

(assert (=> b!54067 (= e!31984 (and (inv!1500 (xs!2872 (c!17087 v!6227))) e!31983))))

(assert (=> b!53797 (= tp!34553 (and (inv!1492 (c!17087 v!6227)) e!31984))))

(assert (= (and b!53797 (is-Node!293 (c!17087 v!6227))) b!54066))

(assert (= b!54067 b!54068))

(assert (= (and b!53797 (is-Leaf!551 (c!17087 v!6227))) b!54067))

(declare-fun m!27946 () Bool)

(assert (=> b!54066 m!27946))

(declare-fun m!27948 () Bool)

(assert (=> b!54066 m!27948))

(declare-fun m!27950 () Bool)

(assert (=> b!54067 m!27950))

(assert (=> b!53797 m!27694))

(declare-fun b!54079 () Bool)

(declare-fun b_free!1761 () Bool)

(declare-fun b_next!1761 () Bool)

(assert (=> b!54079 (= b_free!1761 (not b_next!1761))))

(declare-fun tp!34602 () Bool)

(declare-fun b_and!1811 () Bool)

(assert (=> b!54079 (= tp!34602 b_and!1811)))

(declare-fun b_free!1763 () Bool)

(declare-fun b_next!1763 () Bool)

(assert (=> b!54079 (= b_free!1763 (not b_next!1763))))

(declare-fun tp!34603 () Bool)

(declare-fun b_and!1813 () Bool)

(assert (=> b!54079 (= tp!34603 b_and!1813)))

(declare-fun e!31995 () Bool)

(assert (=> b!54079 (= e!31995 (and tp!34602 tp!34603))))

(declare-fun tp!34601 () Bool)

(declare-fun b!54078 () Bool)

(declare-fun e!31994 () Bool)

(assert (=> b!54078 (= e!31994 (and tp!34601 (inv!1489 (tag!422 (h!6528 (t!17412 rules!1069)))) (inv!1494 (transformation!244 (h!6528 (t!17412 rules!1069)))) e!31995))))

(declare-fun b!54077 () Bool)

(declare-fun e!31993 () Bool)

(declare-fun tp!34604 () Bool)

(assert (=> b!54077 (= e!31993 (and e!31994 tp!34604))))

(assert (=> b!53804 (= tp!34550 e!31993)))

(assert (= b!54078 b!54079))

(assert (= b!54077 b!54078))

(assert (= (and b!53804 (is-Cons!1131 (t!17412 rules!1069))) b!54077))

(declare-fun m!27952 () Bool)

(assert (=> b!54078 m!27952))

(declare-fun m!27954 () Bool)

(assert (=> b!54078 m!27954))

(push 1)

(assert (not d!6774))

(assert (not d!6814))

(assert (not b!54033))

(assert (not b!54057))

(assert (not b!53940))

(assert (not b!53961))

(assert (not b!53923))

(assert (not b!53900))

(assert (not d!6748))

(assert (not d!6760))

(assert (not b!53941))

(assert (not b!53943))

(assert (not b!54055))

(assert (not b!53965))

(assert (not d!6726))

(assert (not d!6720))

(assert (not d!6750))

(assert (not d!6714))

(assert (not b_next!1755))

(assert (not d!6756))

(assert (not d!6728))

(assert (not b!54078))

(assert (not b!53963))

(assert (not d!6742))

(assert (not b!53858))

(assert (not b!54041))

(assert (not d!6740))

(assert (not b_next!1753))

(assert (not b_next!1763))

(assert tp_is_empty!555)

(assert (not b!53888))

(assert (not d!6778))

(assert (not b!53852))

(assert (not b!53912))

(assert b_and!1811)

(assert (not b!53968))

(assert b_and!1803)

(assert (not b!53862))

(assert (not b!54024))

(assert (not b!54068))

(assert (not b!53859))

(assert (not d!6736))

(assert (not d!6754))

(assert (not b!54067))

(assert (not b_next!1761))

(assert (not d!6730))

(assert (not d!6764))

(assert (not b!53849))

(assert (not bm!3396))

(assert (not b!54040))

(assert (not d!6776))

(assert (not bm!3397))

(assert b_and!1813)

(assert (not b!54056))

(assert (not b!53945))

(assert (not b!53899))

(assert b_and!1805)

(assert (not bm!3398))

(assert (not b!53895))

(assert (not b!53887))

(assert (not b!53944))

(assert (not d!6762))

(assert (not b!54077))

(assert (not d!6738))

(assert (not b!53922))

(assert (not b!53797))

(assert (not b!53942))

(assert (not b!54066))

(assert (not d!6716))

(assert (not b!54023))

(assert (not d!6752))

(assert (not b!53913))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!1755))

(assert b_and!1811)

(assert b_and!1803)

(assert (not b_next!1761))

(assert b_and!1813)

(assert b_and!1805)

(assert (not b_next!1753))

(assert (not b_next!1763))

(check-sat)

(pop 1)

