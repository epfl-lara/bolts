; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10176 () Bool)

(assert start!10176)

(declare-fun b!103520 () Bool)

(declare-fun b_free!3101 () Bool)

(declare-fun b_next!3101 () Bool)

(assert (=> b!103520 (= b_free!3101 (not b_next!3101))))

(declare-fun tp!57905 () Bool)

(declare-fun b_and!4619 () Bool)

(assert (=> b!103520 (= tp!57905 b_and!4619)))

(declare-fun b_free!3103 () Bool)

(declare-fun b_next!3103 () Bool)

(assert (=> b!103520 (= b_free!3103 (not b_next!3103))))

(declare-fun tp!57904 () Bool)

(declare-fun b_and!4621 () Bool)

(assert (=> b!103520 (= tp!57904 b_and!4621)))

(declare-fun b!103515 () Bool)

(declare-fun e!57382 () Bool)

(declare-datatypes ((List!1664 0))(
  ( (Nil!1658) (Cons!1658 (h!7055 (_ BitVec 16)) (t!21339 List!1664)) )
))
(declare-datatypes ((TokenValue!352 0))(
  ( (FloatLiteralValue!704 (text!2909 List!1664)) (TokenValueExt!351 (__x!1799 Int)) (Broken!1760 (value!13182 List!1664)) (Object!357) (End!352) (Def!352) (Underscore!352) (Match!352) (Else!352) (Error!352) (Case!352) (If!352) (Extends!352) (Abstract!352) (Class!352) (Val!352) (DelimiterValue!704 (del!412 List!1664)) (KeywordValue!358 (value!13183 List!1664)) (CommentValue!704 (value!13184 List!1664)) (WhitespaceValue!704 (value!13185 List!1664)) (IndentationValue!352 (value!13186 List!1664)) (String!2153) (Int32!352) (Broken!1761 (value!13187 List!1664)) (Boolean!353) (Unit!1104) (OperatorValue!355 (op!412 List!1664)) (IdentifierValue!704 (value!13188 List!1664)) (IdentifierValue!705 (value!13189 List!1664)) (WhitespaceValue!705 (value!13190 List!1664)) (True!704) (False!704) (Broken!1762 (value!13191 List!1664)) (Broken!1763 (value!13192 List!1664)) (True!705) (RightBrace!352) (RightBracket!352) (Colon!352) (Null!352) (Comma!352) (LeftBracket!352) (False!705) (LeftBrace!352) (ImaginaryLiteralValue!352 (text!2910 List!1664)) (StringLiteralValue!1056 (value!13193 List!1664)) (EOFValue!352 (value!13194 List!1664)) (IdentValue!352 (value!13195 List!1664)) (DelimiterValue!705 (value!13196 List!1664)) (DedentValue!352 (value!13197 List!1664)) (NewLineValue!352 (value!13198 List!1664)) (IntegerValue!1056 (value!13199 (_ BitVec 32)) (text!2911 List!1664)) (IntegerValue!1057 (value!13200 Int) (text!2912 List!1664)) (Times!352) (Or!352) (Equal!352) (Minus!352) (Broken!1764 (value!13201 List!1664)) (And!352) (Div!352) (LessEqual!352) (Mod!352) (Concat!782) (Not!352) (Plus!352) (SpaceValue!352 (value!13202 List!1664)) (IntegerValue!1058 (value!13203 Int) (text!2913 List!1664)) (StringLiteralValue!1057 (text!2914 List!1664)) (FloatLiteralValue!705 (text!2915 List!1664)) (BytesLiteralValue!352 (value!13204 List!1664)) (CommentValue!705 (value!13205 List!1664)) (StringLiteralValue!1058 (value!13206 List!1664)) (ErrorTokenValue!352 (msg!413 List!1664)) )
))
(declare-datatypes ((C!1782 0))(
  ( (C!1783 (val!498 Int)) )
))
(declare-datatypes ((List!1665 0))(
  ( (Nil!1659) (Cons!1659 (h!7056 C!1782) (t!21340 List!1665)) )
))
(declare-datatypes ((IArray!1041 0))(
  ( (IArray!1042 (innerList!578 List!1665)) )
))
(declare-datatypes ((Conc!520 0))(
  ( (Node!520 (left!1270 Conc!520) (right!1600 Conc!520) (csize!1270 Int) (cheight!731 Int)) (Leaf!837 (xs!3107 IArray!1041) (csize!1271 Int)) (Empty!520) )
))
(declare-datatypes ((BalanceConc!1044 0))(
  ( (BalanceConc!1045 (c!25033 Conc!520)) )
))
(declare-datatypes ((Regex!430 0))(
  ( (ElementMatch!430 (c!25034 C!1782)) (Concat!783 (regOne!1372 Regex!430) (regTwo!1372 Regex!430)) (EmptyExpr!430) (Star!430 (reg!759 Regex!430)) (EmptyLang!430) (Union!430 (regOne!1373 Regex!430) (regTwo!1373 Regex!430)) )
))
(declare-datatypes ((String!2154 0))(
  ( (String!2155 (value!13207 String)) )
))
(declare-datatypes ((TokenValueInjection!528 0))(
  ( (TokenValueInjection!529 (toValue!941 Int) (toChars!800 Int)) )
))
(declare-datatypes ((Rule!524 0))(
  ( (Rule!525 (regex!362 Regex!430) (tag!540 String!2154) (isSeparator!362 Bool) (transformation!362 TokenValueInjection!528)) )
))
(declare-datatypes ((List!1666 0))(
  ( (Nil!1660) (Cons!1660 (h!7057 Rule!524) (t!21341 List!1666)) )
))
(declare-fun rules!1152 () List!1666)

(declare-fun tp!57903 () Bool)

(declare-fun e!57387 () Bool)

(declare-fun inv!2015 (String!2154) Bool)

(declare-fun inv!2018 (TokenValueInjection!528) Bool)

(assert (=> b!103515 (= e!57382 (and tp!57903 (inv!2015 (tag!540 (h!7057 rules!1152))) (inv!2018 (transformation!362 (h!7057 rules!1152))) e!57387))))

(declare-fun b!103516 () Bool)

(declare-fun res!49890 () Bool)

(declare-fun e!57385 () Bool)

(assert (=> b!103516 (=> (not res!49890) (not e!57385))))

(declare-fun isEmpty!763 (List!1666) Bool)

(assert (=> b!103516 (= res!49890 (not (isEmpty!763 rules!1152)))))

(declare-fun b!103517 () Bool)

(declare-fun e!57383 () Bool)

(assert (=> b!103517 (= e!57385 e!57383)))

(declare-fun res!49891 () Bool)

(assert (=> b!103517 (=> (not res!49891) (not e!57383))))

(declare-fun lt!28759 () List!1665)

(declare-fun lt!28757 () List!1665)

(declare-fun ++!267 (List!1665 List!1665) List!1665)

(assert (=> b!103517 (= res!49891 (= lt!28759 (++!267 lt!28757 lt!28759)))))

(declare-fun input!576 () BalanceConc!1044)

(declare-fun list!694 (BalanceConc!1044) List!1665)

(assert (=> b!103517 (= lt!28759 (list!694 input!576))))

(assert (=> b!103517 (= lt!28757 (list!694 (BalanceConc!1045 Empty!520)))))

(declare-fun b!103518 () Bool)

(declare-fun e!57384 () Bool)

(assert (=> b!103518 (= e!57383 e!57384)))

(declare-fun res!49893 () Bool)

(assert (=> b!103518 (=> (not res!49893) (not e!57384))))

(declare-datatypes ((Token!472 0))(
  ( (Token!473 (value!13208 TokenValue!352) (rule!867 Rule!524) (size!1475 Int) (originalCharacters!407 List!1665)) )
))
(declare-datatypes ((List!1667 0))(
  ( (Nil!1661) (Cons!1661 (h!7058 Token!472) (t!21342 List!1667)) )
))
(declare-datatypes ((IArray!1043 0))(
  ( (IArray!1044 (innerList!579 List!1667)) )
))
(declare-datatypes ((Conc!521 0))(
  ( (Node!521 (left!1271 Conc!521) (right!1601 Conc!521) (csize!1272 Int) (cheight!732 Int)) (Leaf!838 (xs!3108 IArray!1043) (csize!1273 Int)) (Empty!521) )
))
(declare-datatypes ((BalanceConc!1046 0))(
  ( (BalanceConc!1047 (c!25035 Conc!521)) )
))
(declare-datatypes ((tuple2!1820 0))(
  ( (tuple2!1821 (_1!1117 BalanceConc!1046) (_2!1117 BalanceConc!1044)) )
))
(declare-fun lt!28758 () tuple2!1820)

(declare-fun list!695 (BalanceConc!1046) List!1667)

(assert (=> b!103518 (= res!49893 (= (list!695 (_1!1117 lt!28758)) (list!695 (BalanceConc!1047 Empty!521))))))

(declare-datatypes ((LexerInterface!254 0))(
  ( (LexerInterfaceExt!251 (__x!1800 Int)) (Lexer!252) )
))
(declare-fun thiss!11428 () LexerInterface!254)

(declare-fun lexRec!55 (LexerInterface!254 List!1666 BalanceConc!1044) tuple2!1820)

(assert (=> b!103518 (= lt!28758 (lexRec!55 thiss!11428 rules!1152 (BalanceConc!1045 Empty!520)))))

(declare-fun b!103519 () Bool)

(declare-fun e!57388 () Bool)

(declare-fun tp!57902 () Bool)

(assert (=> b!103519 (= e!57388 (and e!57382 tp!57902))))

(declare-fun b!103521 () Bool)

(declare-fun lt!28760 () tuple2!1820)

(declare-fun ++!268 (BalanceConc!1046 BalanceConc!1046) BalanceConc!1046)

(assert (=> b!103521 (= e!57384 (not (= (list!695 (_1!1117 lt!28760)) (list!695 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760))))))))

(assert (=> b!103521 (= lt!28760 (lexRec!55 thiss!11428 rules!1152 input!576))))

(declare-fun b!103522 () Bool)

(declare-fun res!49889 () Bool)

(assert (=> b!103522 (=> (not res!49889) (not e!57385))))

(declare-fun rulesInvariant!248 (LexerInterface!254 List!1666) Bool)

(assert (=> b!103522 (= res!49889 (rulesInvariant!248 thiss!11428 rules!1152))))

(declare-fun b!103523 () Bool)

(declare-fun e!57381 () Bool)

(declare-fun tp!57901 () Bool)

(declare-fun inv!2019 (Conc!520) Bool)

(assert (=> b!103523 (= e!57381 (and (inv!2019 (c!25033 input!576)) tp!57901))))

(declare-fun b!103524 () Bool)

(declare-fun res!49892 () Bool)

(assert (=> b!103524 (=> (not res!49892) (not e!57384))))

(declare-fun isEmpty!764 (List!1665) Bool)

(assert (=> b!103524 (= res!49892 (isEmpty!764 (list!694 (_2!1117 lt!28758))))))

(declare-fun res!49888 () Bool)

(assert (=> start!10176 (=> (not res!49888) (not e!57385))))

(assert (=> start!10176 (= res!49888 (is-Lexer!252 thiss!11428))))

(assert (=> start!10176 e!57385))

(assert (=> start!10176 true))

(assert (=> start!10176 e!57388))

(declare-fun inv!2020 (BalanceConc!1044) Bool)

(assert (=> start!10176 (and (inv!2020 input!576) e!57381)))

(assert (=> b!103520 (= e!57387 (and tp!57905 tp!57904))))

(assert (= (and start!10176 res!49888) b!103516))

(assert (= (and b!103516 res!49890) b!103522))

(assert (= (and b!103522 res!49889) b!103517))

(assert (= (and b!103517 res!49891) b!103518))

(assert (= (and b!103518 res!49893) b!103524))

(assert (= (and b!103524 res!49892) b!103521))

(assert (= b!103515 b!103520))

(assert (= b!103519 b!103515))

(assert (= (and start!10176 (is-Cons!1660 rules!1152)) b!103519))

(assert (= start!10176 b!103523))

(declare-fun m!89950 () Bool)

(assert (=> b!103523 m!89950))

(declare-fun m!89952 () Bool)

(assert (=> start!10176 m!89952))

(declare-fun m!89954 () Bool)

(assert (=> b!103516 m!89954))

(declare-fun m!89956 () Bool)

(assert (=> b!103518 m!89956))

(declare-fun m!89958 () Bool)

(assert (=> b!103518 m!89958))

(declare-fun m!89960 () Bool)

(assert (=> b!103518 m!89960))

(declare-fun m!89962 () Bool)

(assert (=> b!103521 m!89962))

(declare-fun m!89964 () Bool)

(assert (=> b!103521 m!89964))

(assert (=> b!103521 m!89964))

(declare-fun m!89966 () Bool)

(assert (=> b!103521 m!89966))

(declare-fun m!89968 () Bool)

(assert (=> b!103521 m!89968))

(declare-fun m!89970 () Bool)

(assert (=> b!103524 m!89970))

(assert (=> b!103524 m!89970))

(declare-fun m!89972 () Bool)

(assert (=> b!103524 m!89972))

(declare-fun m!89974 () Bool)

(assert (=> b!103522 m!89974))

(declare-fun m!89976 () Bool)

(assert (=> b!103515 m!89976))

(declare-fun m!89978 () Bool)

(assert (=> b!103515 m!89978))

(declare-fun m!89980 () Bool)

(assert (=> b!103517 m!89980))

(declare-fun m!89982 () Bool)

(assert (=> b!103517 m!89982))

(declare-fun m!89984 () Bool)

(assert (=> b!103517 m!89984))

(push 1)

(assert b_and!4619)

(assert b_and!4621)

(assert (not b_next!3101))

(assert (not b!103519))

(assert (not b!103523))

(assert (not b!103521))

(assert (not b!103524))

(assert (not b!103518))

(assert (not start!10176))

(assert (not b!103517))

(assert (not b_next!3103))

(assert (not b!103522))

(assert (not b!103516))

(assert (not b!103515))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4621)

(assert b_and!4619)

(assert (not b_next!3103))

(assert (not b_next!3101))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!24857 () Bool)

(declare-fun isBalanced!142 (Conc!520) Bool)

(assert (=> d!24857 (= (inv!2020 input!576) (isBalanced!142 (c!25033 input!576)))))

(declare-fun bs!10058 () Bool)

(assert (= bs!10058 d!24857))

(declare-fun m!90032 () Bool)

(assert (=> bs!10058 m!90032))

(assert (=> start!10176 d!24857))

(declare-fun d!24859 () Bool)

(assert (=> d!24859 (= (isEmpty!764 (list!694 (_2!1117 lt!28758))) (is-Nil!1659 (list!694 (_2!1117 lt!28758))))))

(assert (=> b!103524 d!24859))

(declare-fun d!24865 () Bool)

(declare-fun list!698 (Conc!520) List!1665)

(assert (=> d!24865 (= (list!694 (_2!1117 lt!28758)) (list!698 (c!25033 (_2!1117 lt!28758))))))

(declare-fun bs!10061 () Bool)

(assert (= bs!10061 d!24865))

(declare-fun m!90052 () Bool)

(assert (=> bs!10061 m!90052))

(assert (=> b!103524 d!24865))

(declare-fun d!24871 () Bool)

(declare-fun c!25047 () Bool)

(assert (=> d!24871 (= c!25047 (is-Node!520 (c!25033 input!576)))))

(declare-fun e!57429 () Bool)

(assert (=> d!24871 (= (inv!2019 (c!25033 input!576)) e!57429)))

(declare-fun b!103579 () Bool)

(declare-fun inv!2024 (Conc!520) Bool)

(assert (=> b!103579 (= e!57429 (inv!2024 (c!25033 input!576)))))

(declare-fun b!103580 () Bool)

(declare-fun e!57430 () Bool)

(assert (=> b!103580 (= e!57429 e!57430)))

(declare-fun res!49926 () Bool)

(assert (=> b!103580 (= res!49926 (not (is-Leaf!837 (c!25033 input!576))))))

(assert (=> b!103580 (=> res!49926 e!57430)))

(declare-fun b!103581 () Bool)

(declare-fun inv!2025 (Conc!520) Bool)

(assert (=> b!103581 (= e!57430 (inv!2025 (c!25033 input!576)))))

(assert (= (and d!24871 c!25047) b!103579))

(assert (= (and d!24871 (not c!25047)) b!103580))

(assert (= (and b!103580 (not res!49926)) b!103581))

(declare-fun m!90058 () Bool)

(assert (=> b!103579 m!90058))

(declare-fun m!90060 () Bool)

(assert (=> b!103581 m!90060))

(assert (=> b!103523 d!24871))

(declare-fun d!24877 () Bool)

(declare-fun list!700 (Conc!521) List!1667)

(assert (=> d!24877 (= (list!695 (_1!1117 lt!28758)) (list!700 (c!25035 (_1!1117 lt!28758))))))

(declare-fun bs!10064 () Bool)

(assert (= bs!10064 d!24877))

(declare-fun m!90062 () Bool)

(assert (=> bs!10064 m!90062))

(assert (=> b!103518 d!24877))

(declare-fun d!24879 () Bool)

(assert (=> d!24879 (= (list!695 (BalanceConc!1047 Empty!521)) (list!700 (c!25035 (BalanceConc!1047 Empty!521))))))

(declare-fun bs!10065 () Bool)

(assert (= bs!10065 d!24879))

(declare-fun m!90064 () Bool)

(assert (=> bs!10065 m!90064))

(assert (=> b!103518 d!24879))

(declare-fun b!103608 () Bool)

(declare-fun e!57443 () tuple2!1820)

(declare-fun lt!28786 () tuple2!1820)

(declare-datatypes ((tuple2!1824 0))(
  ( (tuple2!1825 (_1!1119 Token!472) (_2!1119 BalanceConc!1044)) )
))
(declare-datatypes ((Option!191 0))(
  ( (None!190) (Some!190 (v!12997 tuple2!1824)) )
))
(declare-fun lt!28785 () Option!191)

(declare-fun prepend!136 (BalanceConc!1046 Token!472) BalanceConc!1046)

(assert (=> b!103608 (= e!57443 (tuple2!1821 (prepend!136 (_1!1117 lt!28786) (_1!1119 (v!12997 lt!28785))) (_2!1117 lt!28786)))))

(assert (=> b!103608 (= lt!28786 (lexRec!55 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28785))))))

(declare-fun d!24881 () Bool)

(declare-fun e!57442 () Bool)

(assert (=> d!24881 e!57442))

(declare-fun res!49947 () Bool)

(assert (=> d!24881 (=> (not res!49947) (not e!57442))))

(declare-fun e!57445 () Bool)

(assert (=> d!24881 (= res!49947 e!57445)))

(declare-fun c!25055 () Bool)

(declare-fun lt!28787 () tuple2!1820)

(declare-fun size!1477 (BalanceConc!1046) Int)

(assert (=> d!24881 (= c!25055 (> (size!1477 (_1!1117 lt!28787)) 0))))

(assert (=> d!24881 (= lt!28787 e!57443)))

(declare-fun c!25054 () Bool)

(assert (=> d!24881 (= c!25054 (is-Some!190 lt!28785))))

(declare-fun maxPrefixZipperSequence!53 (LexerInterface!254 List!1666 BalanceConc!1044) Option!191)

(assert (=> d!24881 (= lt!28785 (maxPrefixZipperSequence!53 thiss!11428 rules!1152 (BalanceConc!1045 Empty!520)))))

(assert (=> d!24881 (= (lexRec!55 thiss!11428 rules!1152 (BalanceConc!1045 Empty!520)) lt!28787)))

(declare-fun b!103609 () Bool)

(declare-fun res!49946 () Bool)

(assert (=> b!103609 (=> (not res!49946) (not e!57442))))

(declare-datatypes ((tuple2!1826 0))(
  ( (tuple2!1827 (_1!1120 List!1667) (_2!1120 List!1665)) )
))
(declare-fun lexList!78 (LexerInterface!254 List!1666 List!1665) tuple2!1826)

(assert (=> b!103609 (= res!49946 (= (list!695 (_1!1117 lt!28787)) (_1!1120 (lexList!78 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520))))))))

(declare-fun b!103610 () Bool)

(assert (=> b!103610 (= e!57443 (tuple2!1821 (BalanceConc!1047 Empty!521) (BalanceConc!1045 Empty!520)))))

(declare-fun b!103611 () Bool)

(assert (=> b!103611 (= e!57442 (= (list!694 (_2!1117 lt!28787)) (_2!1120 (lexList!78 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520))))))))

(declare-fun b!103612 () Bool)

(assert (=> b!103612 (= e!57445 (= (list!694 (_2!1117 lt!28787)) (list!694 (BalanceConc!1045 Empty!520))))))

(declare-fun b!103613 () Bool)

(declare-fun e!57444 () Bool)

(assert (=> b!103613 (= e!57445 e!57444)))

(declare-fun res!49945 () Bool)

(declare-fun size!1479 (BalanceConc!1044) Int)

(assert (=> b!103613 (= res!49945 (< (size!1479 (_2!1117 lt!28787)) (size!1479 (BalanceConc!1045 Empty!520))))))

(assert (=> b!103613 (=> (not res!49945) (not e!57444))))

(declare-fun b!103614 () Bool)

(declare-fun isEmpty!767 (BalanceConc!1046) Bool)

(assert (=> b!103614 (= e!57444 (not (isEmpty!767 (_1!1117 lt!28787))))))

(assert (= (and d!24881 c!25054) b!103608))

(assert (= (and d!24881 (not c!25054)) b!103610))

(assert (= (and d!24881 c!25055) b!103613))

(assert (= (and d!24881 (not c!25055)) b!103612))

(assert (= (and b!103613 res!49945) b!103614))

(assert (= (and d!24881 res!49947) b!103609))

(assert (= (and b!103609 res!49946) b!103611))

(declare-fun m!90084 () Bool)

(assert (=> b!103614 m!90084))

(declare-fun m!90086 () Bool)

(assert (=> b!103611 m!90086))

(assert (=> b!103611 m!89984))

(assert (=> b!103611 m!89984))

(declare-fun m!90088 () Bool)

(assert (=> b!103611 m!90088))

(declare-fun m!90090 () Bool)

(assert (=> b!103613 m!90090))

(declare-fun m!90092 () Bool)

(assert (=> b!103613 m!90092))

(declare-fun m!90094 () Bool)

(assert (=> d!24881 m!90094))

(declare-fun m!90096 () Bool)

(assert (=> d!24881 m!90096))

(declare-fun m!90098 () Bool)

(assert (=> b!103609 m!90098))

(assert (=> b!103609 m!89984))

(assert (=> b!103609 m!89984))

(assert (=> b!103609 m!90088))

(declare-fun m!90100 () Bool)

(assert (=> b!103608 m!90100))

(declare-fun m!90102 () Bool)

(assert (=> b!103608 m!90102))

(assert (=> b!103612 m!90086))

(assert (=> b!103612 m!89984))

(assert (=> b!103518 d!24881))

(declare-fun d!24885 () Bool)

(assert (=> d!24885 (= (list!695 (_1!1117 lt!28760)) (list!700 (c!25035 (_1!1117 lt!28760))))))

(declare-fun bs!10066 () Bool)

(assert (= bs!10066 d!24885))

(declare-fun m!90104 () Bool)

(assert (=> bs!10066 m!90104))

(assert (=> b!103521 d!24885))

(declare-fun d!24887 () Bool)

(assert (=> d!24887 (= (list!695 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760))) (list!700 (c!25035 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760)))))))

(declare-fun bs!10067 () Bool)

(assert (= bs!10067 d!24887))

(declare-fun m!90106 () Bool)

(assert (=> bs!10067 m!90106))

(assert (=> b!103521 d!24887))

(declare-fun d!24889 () Bool)

(declare-fun e!57456 () Bool)

(assert (=> d!24889 e!57456))

(declare-fun res!49964 () Bool)

(assert (=> d!24889 (=> (not res!49964) (not e!57456))))

(declare-fun appendAssocInst!8 (Conc!521 Conc!521) Bool)

(assert (=> d!24889 (= res!49964 (appendAssocInst!8 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))))

(declare-fun lt!28796 () BalanceConc!1046)

(declare-fun ++!271 (Conc!521 Conc!521) Conc!521)

(assert (=> d!24889 (= lt!28796 (BalanceConc!1047 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))))))

(assert (=> d!24889 (= (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760)) lt!28796)))

(declare-fun b!103639 () Bool)

(declare-fun res!49963 () Bool)

(assert (=> b!103639 (=> (not res!49963) (not e!57456))))

(declare-fun height!57 (Conc!521) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!103639 (= res!49963 (>= (height!57 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))) (max!0 (height!57 (c!25035 (BalanceConc!1047 Empty!521))) (height!57 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!103637 () Bool)

(declare-fun res!49965 () Bool)

(assert (=> b!103637 (=> (not res!49965) (not e!57456))))

(declare-fun isBalanced!143 (Conc!521) Bool)

(assert (=> b!103637 (= res!49965 (isBalanced!143 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))))))

(declare-fun b!103640 () Bool)

(declare-fun ++!272 (List!1667 List!1667) List!1667)

(assert (=> b!103640 (= e!57456 (= (list!695 lt!28796) (++!272 (list!695 (BalanceConc!1047 Empty!521)) (list!695 (_1!1117 lt!28760)))))))

(declare-fun b!103638 () Bool)

(declare-fun res!49962 () Bool)

(assert (=> b!103638 (=> (not res!49962) (not e!57456))))

(assert (=> b!103638 (= res!49962 (<= (height!57 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))) (+ (max!0 (height!57 (c!25035 (BalanceConc!1047 Empty!521))) (height!57 (c!25035 (_1!1117 lt!28760)))) 1)))))

(assert (= (and d!24889 res!49964) b!103637))

(assert (= (and b!103637 res!49965) b!103638))

(assert (= (and b!103638 res!49962) b!103639))

(assert (= (and b!103639 res!49963) b!103640))

(declare-fun m!90108 () Bool)

(assert (=> b!103640 m!90108))

(assert (=> b!103640 m!89958))

(assert (=> b!103640 m!89962))

(assert (=> b!103640 m!89958))

(assert (=> b!103640 m!89962))

(declare-fun m!90110 () Bool)

(assert (=> b!103640 m!90110))

(declare-fun m!90112 () Bool)

(assert (=> b!103639 m!90112))

(declare-fun m!90114 () Bool)

(assert (=> b!103639 m!90114))

(assert (=> b!103639 m!90112))

(declare-fun m!90116 () Bool)

(assert (=> b!103639 m!90116))

(assert (=> b!103639 m!90116))

(declare-fun m!90118 () Bool)

(assert (=> b!103639 m!90118))

(declare-fun m!90120 () Bool)

(assert (=> b!103639 m!90120))

(assert (=> b!103639 m!90118))

(assert (=> b!103637 m!90112))

(assert (=> b!103637 m!90112))

(declare-fun m!90122 () Bool)

(assert (=> b!103637 m!90122))

(declare-fun m!90124 () Bool)

(assert (=> d!24889 m!90124))

(assert (=> d!24889 m!90112))

(assert (=> b!103638 m!90112))

(assert (=> b!103638 m!90114))

(assert (=> b!103638 m!90112))

(assert (=> b!103638 m!90116))

(assert (=> b!103638 m!90116))

(assert (=> b!103638 m!90118))

(assert (=> b!103638 m!90120))

(assert (=> b!103638 m!90118))

(assert (=> b!103521 d!24889))

(declare-fun b!103648 () Bool)

(declare-fun e!57462 () tuple2!1820)

(declare-fun lt!28801 () tuple2!1820)

(declare-fun lt!28800 () Option!191)

(assert (=> b!103648 (= e!57462 (tuple2!1821 (prepend!136 (_1!1117 lt!28801) (_1!1119 (v!12997 lt!28800))) (_2!1117 lt!28801)))))

(assert (=> b!103648 (= lt!28801 (lexRec!55 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28800))))))

(declare-fun d!24891 () Bool)

(declare-fun e!57461 () Bool)

(assert (=> d!24891 e!57461))

(declare-fun res!49971 () Bool)

(assert (=> d!24891 (=> (not res!49971) (not e!57461))))

(declare-fun e!57464 () Bool)

(assert (=> d!24891 (= res!49971 e!57464)))

(declare-fun c!25066 () Bool)

(declare-fun lt!28802 () tuple2!1820)

(assert (=> d!24891 (= c!25066 (> (size!1477 (_1!1117 lt!28802)) 0))))

(assert (=> d!24891 (= lt!28802 e!57462)))

(declare-fun c!25065 () Bool)

(assert (=> d!24891 (= c!25065 (is-Some!190 lt!28800))))

(assert (=> d!24891 (= lt!28800 (maxPrefixZipperSequence!53 thiss!11428 rules!1152 input!576))))

(assert (=> d!24891 (= (lexRec!55 thiss!11428 rules!1152 input!576) lt!28802)))

(declare-fun b!103649 () Bool)

(declare-fun res!49970 () Bool)

(assert (=> b!103649 (=> (not res!49970) (not e!57461))))

(assert (=> b!103649 (= res!49970 (= (list!695 (_1!1117 lt!28802)) (_1!1120 (lexList!78 thiss!11428 rules!1152 (list!694 input!576)))))))

(declare-fun b!103650 () Bool)

(assert (=> b!103650 (= e!57462 (tuple2!1821 (BalanceConc!1047 Empty!521) input!576))))

(declare-fun b!103651 () Bool)

(assert (=> b!103651 (= e!57461 (= (list!694 (_2!1117 lt!28802)) (_2!1120 (lexList!78 thiss!11428 rules!1152 (list!694 input!576)))))))

(declare-fun b!103652 () Bool)

(assert (=> b!103652 (= e!57464 (= (list!694 (_2!1117 lt!28802)) (list!694 input!576)))))

(declare-fun b!103653 () Bool)

(declare-fun e!57463 () Bool)

(assert (=> b!103653 (= e!57464 e!57463)))

(declare-fun res!49969 () Bool)

(assert (=> b!103653 (= res!49969 (< (size!1479 (_2!1117 lt!28802)) (size!1479 input!576)))))

(assert (=> b!103653 (=> (not res!49969) (not e!57463))))

(declare-fun b!103654 () Bool)

(assert (=> b!103654 (= e!57463 (not (isEmpty!767 (_1!1117 lt!28802))))))

(assert (= (and d!24891 c!25065) b!103648))

(assert (= (and d!24891 (not c!25065)) b!103650))

(assert (= (and d!24891 c!25066) b!103653))

(assert (= (and d!24891 (not c!25066)) b!103652))

(assert (= (and b!103653 res!49969) b!103654))

(assert (= (and d!24891 res!49971) b!103649))

(assert (= (and b!103649 res!49970) b!103651))

(declare-fun m!90138 () Bool)

(assert (=> b!103654 m!90138))

(declare-fun m!90140 () Bool)

(assert (=> b!103651 m!90140))

(assert (=> b!103651 m!89982))

(assert (=> b!103651 m!89982))

(declare-fun m!90144 () Bool)

(assert (=> b!103651 m!90144))

(declare-fun m!90146 () Bool)

(assert (=> b!103653 m!90146))

(declare-fun m!90150 () Bool)

(assert (=> b!103653 m!90150))

(declare-fun m!90152 () Bool)

(assert (=> d!24891 m!90152))

(declare-fun m!90156 () Bool)

(assert (=> d!24891 m!90156))

(declare-fun m!90160 () Bool)

(assert (=> b!103649 m!90160))

(assert (=> b!103649 m!89982))

(assert (=> b!103649 m!89982))

(assert (=> b!103649 m!90144))

(declare-fun m!90162 () Bool)

(assert (=> b!103648 m!90162))

(declare-fun m!90164 () Bool)

(assert (=> b!103648 m!90164))

(assert (=> b!103652 m!90140))

(assert (=> b!103652 m!89982))

(assert (=> b!103521 d!24891))

(declare-fun d!24895 () Bool)

(assert (=> d!24895 (= (isEmpty!763 rules!1152) (is-Nil!1660 rules!1152))))

(assert (=> b!103516 d!24895))

(declare-fun d!24897 () Bool)

(assert (=> d!24897 (= (inv!2015 (tag!540 (h!7057 rules!1152))) (= (mod (str.len (value!13207 (tag!540 (h!7057 rules!1152)))) 2) 0))))

(assert (=> b!103515 d!24897))

(declare-fun d!24899 () Bool)

(declare-fun res!49976 () Bool)

(declare-fun e!57471 () Bool)

(assert (=> d!24899 (=> (not res!49976) (not e!57471))))

(declare-fun semiInverseModEq!95 (Int Int) Bool)

(assert (=> d!24899 (= res!49976 (semiInverseModEq!95 (toChars!800 (transformation!362 (h!7057 rules!1152))) (toValue!941 (transformation!362 (h!7057 rules!1152)))))))

(assert (=> d!24899 (= (inv!2018 (transformation!362 (h!7057 rules!1152))) e!57471)))

(declare-fun b!103663 () Bool)

(declare-fun equivClasses!90 (Int Int) Bool)

(assert (=> b!103663 (= e!57471 (equivClasses!90 (toChars!800 (transformation!362 (h!7057 rules!1152))) (toValue!941 (transformation!362 (h!7057 rules!1152)))))))

(assert (= (and d!24899 res!49976) b!103663))

(declare-fun m!90166 () Bool)

(assert (=> d!24899 m!90166))

(declare-fun m!90168 () Bool)

(assert (=> b!103663 m!90168))

(assert (=> b!103515 d!24899))

(declare-fun e!57482 () Bool)

(declare-fun b!103685 () Bool)

(declare-fun lt!28808 () List!1665)

(assert (=> b!103685 (= e!57482 (or (not (= lt!28759 Nil!1659)) (= lt!28808 lt!28757)))))

(declare-fun b!103684 () Bool)

(declare-fun res!49985 () Bool)

(assert (=> b!103684 (=> (not res!49985) (not e!57482))))

(declare-fun size!1480 (List!1665) Int)

(assert (=> b!103684 (= res!49985 (= (size!1480 lt!28808) (+ (size!1480 lt!28757) (size!1480 lt!28759))))))

(declare-fun d!24901 () Bool)

(assert (=> d!24901 e!57482))

(declare-fun res!49986 () Bool)

(assert (=> d!24901 (=> (not res!49986) (not e!57482))))

(declare-fun content!140 (List!1665) (Set C!1782))

(assert (=> d!24901 (= res!49986 (= (content!140 lt!28808) (set.union (content!140 lt!28757) (content!140 lt!28759))))))

(declare-fun e!57483 () List!1665)

(assert (=> d!24901 (= lt!28808 e!57483)))

(declare-fun c!25074 () Bool)

(assert (=> d!24901 (= c!25074 (is-Nil!1659 lt!28757))))

(assert (=> d!24901 (= (++!267 lt!28757 lt!28759) lt!28808)))

(declare-fun b!103682 () Bool)

(assert (=> b!103682 (= e!57483 lt!28759)))

(declare-fun b!103683 () Bool)

(assert (=> b!103683 (= e!57483 (Cons!1659 (h!7056 lt!28757) (++!267 (t!21340 lt!28757) lt!28759)))))

(assert (= (and d!24901 c!25074) b!103682))

(assert (= (and d!24901 (not c!25074)) b!103683))

(assert (= (and d!24901 res!49986) b!103684))

(assert (= (and b!103684 res!49985) b!103685))

(declare-fun m!90186 () Bool)

(assert (=> b!103684 m!90186))

(declare-fun m!90188 () Bool)

(assert (=> b!103684 m!90188))

(declare-fun m!90190 () Bool)

(assert (=> b!103684 m!90190))

(declare-fun m!90192 () Bool)

(assert (=> d!24901 m!90192))

(declare-fun m!90194 () Bool)

(assert (=> d!24901 m!90194))

(declare-fun m!90198 () Bool)

(assert (=> d!24901 m!90198))

(declare-fun m!90200 () Bool)

(assert (=> b!103683 m!90200))

(assert (=> b!103517 d!24901))

(declare-fun d!24909 () Bool)

(assert (=> d!24909 (= (list!694 input!576) (list!698 (c!25033 input!576)))))

(declare-fun bs!10070 () Bool)

(assert (= bs!10070 d!24909))

(declare-fun m!90204 () Bool)

(assert (=> bs!10070 m!90204))

(assert (=> b!103517 d!24909))

(declare-fun d!24911 () Bool)

(assert (=> d!24911 (= (list!694 (BalanceConc!1045 Empty!520)) (list!698 (c!25033 (BalanceConc!1045 Empty!520))))))

(declare-fun bs!10071 () Bool)

(assert (= bs!10071 d!24911))

(declare-fun m!90214 () Bool)

(assert (=> bs!10071 m!90214))

(assert (=> b!103517 d!24911))

(declare-fun d!24915 () Bool)

(declare-fun res!49989 () Bool)

(declare-fun e!57486 () Bool)

(assert (=> d!24915 (=> (not res!49989) (not e!57486))))

(declare-fun rulesValid!103 (LexerInterface!254 List!1666) Bool)

(assert (=> d!24915 (= res!49989 (rulesValid!103 thiss!11428 rules!1152))))

(assert (=> d!24915 (= (rulesInvariant!248 thiss!11428 rules!1152) e!57486)))

(declare-fun b!103688 () Bool)

(declare-datatypes ((List!1673 0))(
  ( (Nil!1667) (Cons!1667 (h!7064 String!2154) (t!21348 List!1673)) )
))
(declare-fun noDuplicateTag!103 (LexerInterface!254 List!1666 List!1673) Bool)

(assert (=> b!103688 (= e!57486 (noDuplicateTag!103 thiss!11428 rules!1152 Nil!1667))))

(assert (= (and d!24915 res!49989) b!103688))

(declare-fun m!90218 () Bool)

(assert (=> d!24915 m!90218))

(declare-fun m!90220 () Bool)

(assert (=> b!103688 m!90220))

(assert (=> b!103522 d!24915))

(declare-fun b!103707 () Bool)

(declare-fun e!57494 () Bool)

(declare-fun tp!57938 () Bool)

(declare-fun tp!57939 () Bool)

(assert (=> b!103707 (= e!57494 (and (inv!2019 (left!1270 (c!25033 input!576))) tp!57938 (inv!2019 (right!1600 (c!25033 input!576))) tp!57939))))

(declare-fun b!103709 () Bool)

(declare-fun e!57493 () Bool)

(declare-fun tp!57937 () Bool)

(assert (=> b!103709 (= e!57493 tp!57937)))

(declare-fun b!103708 () Bool)

(declare-fun inv!2026 (IArray!1041) Bool)

(assert (=> b!103708 (= e!57494 (and (inv!2026 (xs!3107 (c!25033 input!576))) e!57493))))

(assert (=> b!103523 (= tp!57901 (and (inv!2019 (c!25033 input!576)) e!57494))))

(assert (= (and b!103523 (is-Node!520 (c!25033 input!576))) b!103707))

(assert (= b!103708 b!103709))

(assert (= (and b!103523 (is-Leaf!837 (c!25033 input!576))) b!103708))

(declare-fun m!90222 () Bool)

(assert (=> b!103707 m!90222))

(declare-fun m!90224 () Bool)

(assert (=> b!103707 m!90224))

(declare-fun m!90226 () Bool)

(assert (=> b!103708 m!90226))

(assert (=> b!103523 m!89950))

(declare-fun b!103732 () Bool)

(declare-fun b_free!3109 () Bool)

(declare-fun b_next!3109 () Bool)

(assert (=> b!103732 (= b_free!3109 (not b_next!3109))))

(declare-fun tp!57961 () Bool)

(declare-fun b_and!4627 () Bool)

(assert (=> b!103732 (= tp!57961 b_and!4627)))

(declare-fun b_free!3111 () Bool)

(declare-fun b_next!3111 () Bool)

(assert (=> b!103732 (= b_free!3111 (not b_next!3111))))

(declare-fun tp!57963 () Bool)

(declare-fun b_and!4629 () Bool)

(assert (=> b!103732 (= tp!57963 b_and!4629)))

(declare-fun e!57512 () Bool)

(assert (=> b!103732 (= e!57512 (and tp!57961 tp!57963))))

(declare-fun b!103731 () Bool)

(declare-fun e!57515 () Bool)

(declare-fun tp!57962 () Bool)

(assert (=> b!103731 (= e!57515 (and tp!57962 (inv!2015 (tag!540 (h!7057 (t!21341 rules!1152)))) (inv!2018 (transformation!362 (h!7057 (t!21341 rules!1152)))) e!57512))))

(declare-fun b!103730 () Bool)

(declare-fun e!57514 () Bool)

(declare-fun tp!57964 () Bool)

(assert (=> b!103730 (= e!57514 (and e!57515 tp!57964))))

(assert (=> b!103519 (= tp!57902 e!57514)))

(assert (= b!103731 b!103732))

(assert (= b!103730 b!103731))

(assert (= (and b!103519 (is-Cons!1660 (t!21341 rules!1152))) b!103730))

(declare-fun m!90228 () Bool)

(assert (=> b!103731 m!90228))

(declare-fun m!90230 () Bool)

(assert (=> b!103731 m!90230))

(declare-fun b!103748 () Bool)

(declare-fun e!57522 () Bool)

(declare-fun tp!57982 () Bool)

(assert (=> b!103748 (= e!57522 tp!57982)))

(declare-fun b!103747 () Bool)

(declare-fun tp!57979 () Bool)

(declare-fun tp!57983 () Bool)

(assert (=> b!103747 (= e!57522 (and tp!57979 tp!57983))))

(declare-fun b!103746 () Bool)

(declare-fun tp_is_empty!781 () Bool)

(assert (=> b!103746 (= e!57522 tp_is_empty!781)))

(assert (=> b!103515 (= tp!57903 e!57522)))

(declare-fun b!103749 () Bool)

(declare-fun tp!57981 () Bool)

(declare-fun tp!57980 () Bool)

(assert (=> b!103749 (= e!57522 (and tp!57981 tp!57980))))

(assert (= (and b!103515 (is-ElementMatch!430 (regex!362 (h!7057 rules!1152)))) b!103746))

(assert (= (and b!103515 (is-Concat!783 (regex!362 (h!7057 rules!1152)))) b!103747))

(assert (= (and b!103515 (is-Star!430 (regex!362 (h!7057 rules!1152)))) b!103748))

(assert (= (and b!103515 (is-Union!430 (regex!362 (h!7057 rules!1152)))) b!103749))

(push 1)

(assert (not b!103730))

(assert (not b!103638))

(assert (not b!103663))

(assert (not b!103639))

(assert (not d!24865))

(assert (not b!103683))

(assert (not b!103747))

(assert (not b!103652))

(assert (not b!103609))

(assert (not b!103654))

(assert (not b!103649))

(assert b_and!4619)

(assert (not b!103708))

(assert (not b_next!3111))

(assert b_and!4621)

(assert (not d!24891))

(assert (not d!24879))

(assert (not d!24889))

(assert (not b_next!3101))

(assert (not b!103608))

(assert (not b!103684))

(assert (not b!103611))

(assert (not b!103579))

(assert (not d!24911))

(assert (not b!103749))

(assert (not d!24901))

(assert (not b!103523))

(assert (not b!103637))

(assert (not b!103581))

(assert (not b!103731))

(assert (not b!103653))

(assert (not d!24899))

(assert (not b!103651))

(assert (not b!103648))

(assert (not d!24877))

(assert (not b!103748))

(assert (not d!24857))

(assert (not d!24885))

(assert (not b!103612))

(assert tp_is_empty!781)

(assert b_and!4627)

(assert (not b!103613))

(assert (not d!24915))

(assert (not b!103614))

(assert (not d!24909))

(assert b_and!4629)

(assert (not b_next!3103))

(assert (not b!103707))

(assert (not b!103688))

(assert (not d!24881))

(assert (not b!103640))

(assert (not d!24887))

(assert (not b_next!3109))

(assert (not b!103709))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4619)

(assert (not b_next!3101))

(assert b_and!4627)

(assert b_and!4629)

(assert (not b_next!3103))

(assert (not b_next!3109))

(assert (not b_next!3111))

(assert b_and!4621)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!24917 () Bool)

(assert (=> d!24917 (= (height!57 (c!25035 (BalanceConc!1047 Empty!521))) (ite (is-Empty!521 (c!25035 (BalanceConc!1047 Empty!521))) 0 (ite (is-Leaf!838 (c!25035 (BalanceConc!1047 Empty!521))) 1 (cheight!732 (c!25035 (BalanceConc!1047 Empty!521))))))))

(assert (=> b!103639 d!24917))

(declare-fun d!24919 () Bool)

(assert (=> d!24919 (= (height!57 (c!25035 (_1!1117 lt!28760))) (ite (is-Empty!521 (c!25035 (_1!1117 lt!28760))) 0 (ite (is-Leaf!838 (c!25035 (_1!1117 lt!28760))) 1 (cheight!732 (c!25035 (_1!1117 lt!28760))))))))

(assert (=> b!103639 d!24919))

(declare-fun c!25092 () Bool)

(declare-fun c!25097 () Bool)

(declare-fun c!25091 () Bool)

(declare-fun call!4482 () Conc!521)

(declare-fun lt!28818 () Conc!521)

(declare-fun c!25098 () Bool)

(declare-fun bm!4470 () Bool)

(declare-fun call!4476 () Conc!521)

(declare-fun c!25095 () Bool)

(declare-fun call!4480 () Conc!521)

(declare-fun c!25094 () Bool)

(declare-fun lt!28819 () Conc!521)

(declare-fun <>!10 (Conc!521 Conc!521) Conc!521)

(assert (=> bm!4470 (= call!4482 (<>!10 (ite c!25092 (c!25035 (BalanceConc!1047 Empty!521)) (ite c!25095 (ite c!25098 (left!1271 (c!25035 (BalanceConc!1047 Empty!521))) (ite c!25091 (left!1271 (right!1601 (c!25035 (BalanceConc!1047 Empty!521)))) (left!1271 (c!25035 (BalanceConc!1047 Empty!521))))) (ite c!25094 call!4480 (ite c!25097 lt!28818 (right!1601 (left!1271 (c!25035 (_1!1117 lt!28760)))))))) (ite c!25092 (c!25035 (_1!1117 lt!28760)) (ite c!25095 (ite c!25098 call!4476 (ite c!25091 lt!28819 (left!1271 (right!1601 (c!25035 (BalanceConc!1047 Empty!521)))))) (ite c!25094 (right!1601 (c!25035 (_1!1117 lt!28760))) (ite c!25097 (right!1601 (left!1271 (c!25035 (_1!1117 lt!28760)))) (right!1601 (c!25035 (_1!1117 lt!28760)))))))))))

(declare-fun b!103803 () Bool)

(declare-fun e!57557 () Conc!521)

(assert (=> b!103803 (= e!57557 (c!25035 (_1!1117 lt!28760)))))

(declare-fun b!103804 () Bool)

(declare-fun e!57549 () Conc!521)

(declare-fun call!4490 () Conc!521)

(assert (=> b!103804 (= e!57549 call!4490)))

(declare-fun bm!4471 () Bool)

(declare-fun call!4477 () Int)

(assert (=> bm!4471 (= call!4477 (height!57 (ite c!25095 (left!1271 (c!25035 (BalanceConc!1047 Empty!521))) (c!25035 (_1!1117 lt!28760)))))))

(declare-fun call!4475 () Conc!521)

(declare-fun bm!4472 () Bool)

(declare-fun call!4489 () Conc!521)

(declare-fun call!4485 () Conc!521)

(assert (=> bm!4472 (= call!4475 (<>!10 (ite c!25095 (ite c!25091 (left!1271 (c!25035 (BalanceConc!1047 Empty!521))) call!4489) (ite c!25097 call!4485 lt!28818)) (ite c!25095 (ite c!25091 call!4489 lt!28819) (ite c!25097 (right!1601 (c!25035 (_1!1117 lt!28760))) call!4485))))))

(declare-fun bm!4473 () Bool)

(declare-fun call!4481 () Conc!521)

(declare-fun call!4479 () Conc!521)

(assert (=> bm!4473 (= call!4481 call!4479)))

(declare-fun b!103806 () Bool)

(declare-fun e!57556 () Conc!521)

(declare-fun e!57554 () Conc!521)

(assert (=> b!103806 (= e!57556 e!57554)))

(declare-fun lt!28820 () Int)

(assert (=> b!103806 (= c!25095 (< lt!28820 (- 1)))))

(declare-fun bm!4474 () Bool)

(declare-fun call!4484 () Conc!521)

(assert (=> bm!4474 (= call!4484 call!4475)))

(declare-fun b!103807 () Bool)

(declare-fun call!4487 () Int)

(assert (=> b!103807 (= c!25098 (>= call!4477 call!4487))))

(declare-fun e!57551 () Conc!521)

(assert (=> b!103807 (= e!57554 e!57551)))

(declare-fun b!103808 () Bool)

(declare-fun call!4488 () Int)

(assert (=> b!103808 (= c!25094 (>= call!4487 call!4488))))

(declare-fun e!57558 () Conc!521)

(assert (=> b!103808 (= e!57554 e!57558)))

(declare-fun b!103809 () Bool)

(declare-fun e!57550 () Conc!521)

(assert (=> b!103809 (= e!57550 call!4484)))

(declare-fun call!4478 () Int)

(declare-fun bm!4475 () Bool)

(assert (=> bm!4475 (= call!4478 (height!57 (ite c!25095 lt!28819 lt!28818)))))

(declare-fun bm!4476 () Bool)

(declare-fun call!4486 () Conc!521)

(assert (=> bm!4476 (= call!4486 call!4479)))

(declare-fun b!103810 () Bool)

(assert (=> b!103810 (= e!57558 e!57550)))

(assert (=> b!103810 (= lt!28818 call!4480)))

(assert (=> b!103810 (= c!25097 (= call!4478 (- call!4477 3)))))

(declare-fun b!103811 () Bool)

(assert (=> b!103811 (= e!57549 call!4490)))

(declare-fun b!103812 () Bool)

(declare-fun e!57555 () Conc!521)

(assert (=> b!103812 (= e!57555 (c!25035 (BalanceConc!1047 Empty!521)))))

(declare-fun bm!4477 () Bool)

(assert (=> bm!4477 (= call!4489 call!4486)))

(declare-fun b!103813 () Bool)

(assert (=> b!103813 (= c!25092 (and (<= (- 1) lt!28820) (<= lt!28820 1)))))

(assert (=> b!103813 (= lt!28820 (- (height!57 (c!25035 (_1!1117 lt!28760))) (height!57 (c!25035 (BalanceConc!1047 Empty!521)))))))

(assert (=> b!103813 (= e!57555 e!57556)))

(declare-fun d!24921 () Bool)

(declare-fun e!57552 () Bool)

(assert (=> d!24921 e!57552))

(declare-fun res!50007 () Bool)

(assert (=> d!24921 (=> (not res!50007) (not e!57552))))

(assert (=> d!24921 (= res!50007 (appendAssocInst!8 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))))

(declare-fun lt!28817 () Conc!521)

(assert (=> d!24921 (= lt!28817 e!57557)))

(declare-fun c!25096 () Bool)

(assert (=> d!24921 (= c!25096 (= (c!25035 (BalanceConc!1047 Empty!521)) Empty!521))))

(declare-fun e!57553 () Bool)

(assert (=> d!24921 e!57553))

(declare-fun res!50005 () Bool)

(assert (=> d!24921 (=> (not res!50005) (not e!57553))))

(assert (=> d!24921 (= res!50005 (isBalanced!143 (c!25035 (BalanceConc!1047 Empty!521))))))

(assert (=> d!24921 (= (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))) lt!28817)))

(declare-fun b!103805 () Bool)

(declare-fun res!50008 () Bool)

(assert (=> b!103805 (=> (not res!50008) (not e!57552))))

(assert (=> b!103805 (= res!50008 (>= (height!57 lt!28817) (max!0 (height!57 (c!25035 (BalanceConc!1047 Empty!521))) (height!57 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun bm!4478 () Bool)

(assert (=> bm!4478 (= call!4488 (height!57 (ite c!25095 (c!25035 (BalanceConc!1047 Empty!521)) (left!1271 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun bm!4479 () Bool)

(assert (=> bm!4479 (= call!4485 call!4481)))

(declare-fun bm!4480 () Bool)

(declare-fun call!4483 () Conc!521)

(assert (=> bm!4480 (= call!4480 call!4483)))

(declare-fun bm!4481 () Bool)

(assert (=> bm!4481 (= call!4490 call!4475)))

(declare-fun bm!4482 () Bool)

(assert (=> bm!4482 (= call!4483 (++!271 (ite c!25095 (ite c!25098 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))) (right!1601 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))))) (c!25035 (BalanceConc!1047 Empty!521))) (ite c!25095 (c!25035 (_1!1117 lt!28760)) (ite c!25094 (left!1271 (c!25035 (_1!1117 lt!28760))) (left!1271 (left!1271 (c!25035 (_1!1117 lt!28760))))))))))

(declare-fun b!103814 () Bool)

(assert (=> b!103814 (= e!57558 call!4481)))

(declare-fun b!103815 () Bool)

(assert (=> b!103815 (= e!57551 call!4486)))

(declare-fun b!103816 () Bool)

(declare-fun res!50004 () Bool)

(assert (=> b!103816 (=> (not res!50004) (not e!57552))))

(assert (=> b!103816 (= res!50004 (<= (height!57 lt!28817) (+ (max!0 (height!57 (c!25035 (BalanceConc!1047 Empty!521))) (height!57 (c!25035 (_1!1117 lt!28760)))) 1)))))

(declare-fun b!103817 () Bool)

(declare-fun res!50006 () Bool)

(assert (=> b!103817 (=> (not res!50006) (not e!57552))))

(assert (=> b!103817 (= res!50006 (isBalanced!143 lt!28817))))

(declare-fun b!103818 () Bool)

(assert (=> b!103818 (= e!57551 e!57549)))

(assert (=> b!103818 (= lt!28819 call!4476)))

(assert (=> b!103818 (= c!25091 (= call!4478 (- call!4488 3)))))

(declare-fun bm!4483 () Bool)

(assert (=> bm!4483 (= call!4487 (height!57 (ite c!25095 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))) (right!1601 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun bm!4484 () Bool)

(assert (=> bm!4484 (= call!4476 call!4483)))

(declare-fun bm!4485 () Bool)

(assert (=> bm!4485 (= call!4479 call!4482)))

(declare-fun b!103819 () Bool)

(assert (=> b!103819 (= e!57550 call!4484)))

(declare-fun b!103820 () Bool)

(assert (=> b!103820 (= e!57553 (isBalanced!143 (c!25035 (_1!1117 lt!28760))))))

(declare-fun b!103821 () Bool)

(assert (=> b!103821 (= e!57552 (= (list!700 lt!28817) (++!272 (list!700 (c!25035 (BalanceConc!1047 Empty!521))) (list!700 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!103822 () Bool)

(assert (=> b!103822 (= e!57556 call!4482)))

(declare-fun b!103823 () Bool)

(assert (=> b!103823 (= e!57557 e!57555)))

(declare-fun c!25093 () Bool)

(assert (=> b!103823 (= c!25093 (= (c!25035 (_1!1117 lt!28760)) Empty!521))))

(assert (= (and d!24921 res!50005) b!103820))

(assert (= (and d!24921 c!25096) b!103803))

(assert (= (and d!24921 (not c!25096)) b!103823))

(assert (= (and b!103823 c!25093) b!103812))

(assert (= (and b!103823 (not c!25093)) b!103813))

(assert (= (and b!103813 c!25092) b!103822))

(assert (= (and b!103813 (not c!25092)) b!103806))

(assert (= (and b!103806 c!25095) b!103807))

(assert (= (and b!103806 (not c!25095)) b!103808))

(assert (= (and b!103807 c!25098) b!103815))

(assert (= (and b!103807 (not c!25098)) b!103818))

(assert (= (and b!103818 c!25091) b!103804))

(assert (= (and b!103818 (not c!25091)) b!103811))

(assert (= (or b!103804 b!103811) bm!4477))

(assert (= (or b!103804 b!103811) bm!4481))

(assert (= (or b!103815 b!103818) bm!4484))

(assert (= (or b!103815 bm!4477) bm!4476))

(assert (= (and b!103808 c!25094) b!103814))

(assert (= (and b!103808 (not c!25094)) b!103810))

(assert (= (and b!103810 c!25097) b!103819))

(assert (= (and b!103810 (not c!25097)) b!103809))

(assert (= (or b!103819 b!103809) bm!4479))

(assert (= (or b!103819 b!103809) bm!4474))

(assert (= (or b!103814 b!103810) bm!4480))

(assert (= (or b!103814 bm!4479) bm!4473))

(assert (= (or bm!4481 bm!4474) bm!4472))

(assert (= (or b!103818 b!103810) bm!4475))

(assert (= (or b!103818 b!103808) bm!4478))

(assert (= (or b!103807 b!103808) bm!4483))

(assert (= (or bm!4476 bm!4473) bm!4485))

(assert (= (or bm!4484 bm!4480) bm!4482))

(assert (= (or b!103807 b!103810) bm!4471))

(assert (= (or b!103822 bm!4485) bm!4470))

(assert (= (and d!24921 res!50007) b!103817))

(assert (= (and b!103817 res!50006) b!103816))

(assert (= (and b!103816 res!50004) b!103805))

(assert (= (and b!103805 res!50008) b!103821))

(declare-fun m!90242 () Bool)

(assert (=> bm!4478 m!90242))

(assert (=> b!103813 m!90118))

(assert (=> b!103813 m!90116))

(declare-fun m!90244 () Bool)

(assert (=> b!103820 m!90244))

(declare-fun m!90246 () Bool)

(assert (=> b!103816 m!90246))

(assert (=> b!103816 m!90116))

(assert (=> b!103816 m!90118))

(assert (=> b!103816 m!90116))

(assert (=> b!103816 m!90118))

(assert (=> b!103816 m!90120))

(declare-fun m!90248 () Bool)

(assert (=> b!103817 m!90248))

(declare-fun m!90250 () Bool)

(assert (=> bm!4470 m!90250))

(declare-fun m!90252 () Bool)

(assert (=> b!103821 m!90252))

(assert (=> b!103821 m!90064))

(assert (=> b!103821 m!90104))

(assert (=> b!103821 m!90064))

(assert (=> b!103821 m!90104))

(declare-fun m!90254 () Bool)

(assert (=> b!103821 m!90254))

(assert (=> d!24921 m!90124))

(declare-fun m!90256 () Bool)

(assert (=> d!24921 m!90256))

(declare-fun m!90258 () Bool)

(assert (=> bm!4475 m!90258))

(declare-fun m!90260 () Bool)

(assert (=> bm!4482 m!90260))

(declare-fun m!90262 () Bool)

(assert (=> bm!4471 m!90262))

(declare-fun m!90264 () Bool)

(assert (=> bm!4472 m!90264))

(assert (=> b!103805 m!90246))

(assert (=> b!103805 m!90116))

(assert (=> b!103805 m!90118))

(assert (=> b!103805 m!90116))

(assert (=> b!103805 m!90118))

(assert (=> b!103805 m!90120))

(declare-fun m!90266 () Bool)

(assert (=> bm!4483 m!90266))

(assert (=> b!103639 d!24921))

(declare-fun d!24923 () Bool)

(assert (=> d!24923 (= (height!57 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))) (ite (is-Empty!521 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))) 0 (ite (is-Leaf!838 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))) 1 (cheight!732 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))))))))

(assert (=> b!103639 d!24923))

(declare-fun d!24925 () Bool)

(assert (=> d!24925 (= (max!0 (height!57 (c!25035 (BalanceConc!1047 Empty!521))) (height!57 (c!25035 (_1!1117 lt!28760)))) (ite (< (height!57 (c!25035 (BalanceConc!1047 Empty!521))) (height!57 (c!25035 (_1!1117 lt!28760)))) (height!57 (c!25035 (_1!1117 lt!28760))) (height!57 (c!25035 (BalanceConc!1047 Empty!521)))))))

(assert (=> b!103639 d!24925))

(declare-fun b!103834 () Bool)

(declare-fun e!57564 () List!1665)

(declare-fun list!702 (IArray!1041) List!1665)

(assert (=> b!103834 (= e!57564 (list!702 (xs!3107 (c!25033 input!576))))))

(declare-fun b!103833 () Bool)

(declare-fun e!57563 () List!1665)

(assert (=> b!103833 (= e!57563 e!57564)))

(declare-fun c!25104 () Bool)

(assert (=> b!103833 (= c!25104 (is-Leaf!837 (c!25033 input!576)))))

(declare-fun b!103832 () Bool)

(assert (=> b!103832 (= e!57563 Nil!1659)))

(declare-fun b!103835 () Bool)

(assert (=> b!103835 (= e!57564 (++!267 (list!698 (left!1270 (c!25033 input!576))) (list!698 (right!1600 (c!25033 input!576)))))))

(declare-fun d!24927 () Bool)

(declare-fun c!25103 () Bool)

(assert (=> d!24927 (= c!25103 (is-Empty!520 (c!25033 input!576)))))

(assert (=> d!24927 (= (list!698 (c!25033 input!576)) e!57563)))

(assert (= (and d!24927 c!25103) b!103832))

(assert (= (and d!24927 (not c!25103)) b!103833))

(assert (= (and b!103833 c!25104) b!103834))

(assert (= (and b!103833 (not c!25104)) b!103835))

(declare-fun m!90270 () Bool)

(assert (=> b!103834 m!90270))

(declare-fun m!90272 () Bool)

(assert (=> b!103835 m!90272))

(declare-fun m!90274 () Bool)

(assert (=> b!103835 m!90274))

(assert (=> b!103835 m!90272))

(assert (=> b!103835 m!90274))

(declare-fun m!90276 () Bool)

(assert (=> b!103835 m!90276))

(assert (=> d!24909 d!24927))

(declare-fun d!24933 () Bool)

(declare-fun lt!28823 () Int)

(declare-fun size!1483 (List!1667) Int)

(assert (=> d!24933 (= lt!28823 (size!1483 (list!695 (_1!1117 lt!28787))))))

(declare-fun size!1484 (Conc!521) Int)

(assert (=> d!24933 (= lt!28823 (size!1484 (c!25035 (_1!1117 lt!28787))))))

(assert (=> d!24933 (= (size!1477 (_1!1117 lt!28787)) lt!28823)))

(declare-fun bs!10074 () Bool)

(assert (= bs!10074 d!24933))

(assert (=> bs!10074 m!90098))

(assert (=> bs!10074 m!90098))

(declare-fun m!90278 () Bool)

(assert (=> bs!10074 m!90278))

(declare-fun m!90280 () Bool)

(assert (=> bs!10074 m!90280))

(assert (=> d!24881 d!24933))

(declare-fun b!103867 () Bool)

(declare-fun e!57591 () Bool)

(declare-fun e!57587 () Bool)

(assert (=> b!103867 (= e!57591 e!57587)))

(declare-fun res!50025 () Bool)

(assert (=> b!103867 (=> (not res!50025) (not e!57587))))

(declare-fun lt!28850 () Option!191)

(declare-fun get!426 (Option!191) tuple2!1824)

(declare-datatypes ((tuple2!1832 0))(
  ( (tuple2!1833 (_1!1123 Token!472) (_2!1123 List!1665)) )
))
(declare-datatypes ((Option!193 0))(
  ( (None!192) (Some!192 (v!13001 tuple2!1832)) )
))
(declare-fun get!427 (Option!193) tuple2!1832)

(declare-fun maxPrefixZipper!14 (LexerInterface!254 List!1666 List!1665) Option!193)

(assert (=> b!103867 (= res!50025 (= (_1!1119 (get!426 lt!28850)) (_1!1123 (get!427 (maxPrefixZipper!14 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520)))))))))

(declare-fun b!103868 () Bool)

(declare-fun e!57586 () Bool)

(declare-fun e!57589 () Bool)

(assert (=> b!103868 (= e!57586 e!57589)))

(declare-fun res!50028 () Bool)

(assert (=> b!103868 (=> (not res!50028) (not e!57589))))

(declare-fun maxPrefix!90 (LexerInterface!254 List!1666 List!1665) Option!193)

(assert (=> b!103868 (= res!50028 (= (_1!1119 (get!426 lt!28850)) (_1!1123 (get!427 (maxPrefix!90 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520)))))))))

(declare-fun b!103869 () Bool)

(declare-fun res!50027 () Bool)

(declare-fun e!57588 () Bool)

(assert (=> b!103869 (=> (not res!50027) (not e!57588))))

(assert (=> b!103869 (= res!50027 e!57591)))

(declare-fun res!50029 () Bool)

(assert (=> b!103869 (=> res!50029 e!57591)))

(declare-fun isDefined!65 (Option!191) Bool)

(assert (=> b!103869 (= res!50029 (not (isDefined!65 lt!28850)))))

(declare-fun b!103870 () Bool)

(declare-fun e!57590 () Option!191)

(declare-fun lt!28849 () Option!191)

(declare-fun lt!28852 () Option!191)

(assert (=> b!103870 (= e!57590 (ite (and (is-None!190 lt!28849) (is-None!190 lt!28852)) None!190 (ite (is-None!190 lt!28852) lt!28849 (ite (is-None!190 lt!28849) lt!28852 (ite (>= (size!1475 (_1!1119 (v!12997 lt!28849))) (size!1475 (_1!1119 (v!12997 lt!28852)))) lt!28849 lt!28852)))))))

(declare-fun call!4493 () Option!191)

(assert (=> b!103870 (= lt!28849 call!4493)))

(assert (=> b!103870 (= lt!28852 (maxPrefixZipperSequence!53 thiss!11428 (t!21341 rules!1152) (BalanceConc!1045 Empty!520)))))

(declare-fun b!103871 () Bool)

(assert (=> b!103871 (= e!57588 e!57586)))

(declare-fun res!50026 () Bool)

(assert (=> b!103871 (=> res!50026 e!57586)))

(assert (=> b!103871 (= res!50026 (not (isDefined!65 lt!28850)))))

(declare-fun b!103872 () Bool)

(assert (=> b!103872 (= e!57590 call!4493)))

(declare-fun bm!4488 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!15 (LexerInterface!254 Rule!524 BalanceConc!1044) Option!191)

(assert (=> bm!4488 (= call!4493 (maxPrefixOneRuleZipperSequence!15 thiss!11428 (h!7057 rules!1152) (BalanceConc!1045 Empty!520)))))

(declare-fun d!24935 () Bool)

(assert (=> d!24935 e!57588))

(declare-fun res!50024 () Bool)

(assert (=> d!24935 (=> (not res!50024) (not e!57588))))

(declare-fun isDefined!66 (Option!193) Bool)

(assert (=> d!24935 (= res!50024 (= (isDefined!65 lt!28850) (isDefined!66 (maxPrefixZipper!14 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520))))))))

(assert (=> d!24935 (= lt!28850 e!57590)))

(declare-fun c!25113 () Bool)

(assert (=> d!24935 (= c!25113 (and (is-Cons!1660 rules!1152) (is-Nil!1660 (t!21341 rules!1152))))))

(declare-datatypes ((Unit!1106 0))(
  ( (Unit!1107) )
))
(declare-fun lt!28853 () Unit!1106)

(declare-fun lt!28851 () Unit!1106)

(assert (=> d!24935 (= lt!28853 lt!28851)))

(declare-fun lt!28848 () List!1665)

(declare-fun lt!28847 () List!1665)

(declare-fun isPrefix!48 (List!1665 List!1665) Bool)

(assert (=> d!24935 (isPrefix!48 lt!28848 lt!28847)))

(declare-fun lemmaIsPrefixRefl!48 (List!1665 List!1665) Unit!1106)

(assert (=> d!24935 (= lt!28851 (lemmaIsPrefixRefl!48 lt!28848 lt!28847))))

(assert (=> d!24935 (= lt!28847 (list!694 (BalanceConc!1045 Empty!520)))))

(assert (=> d!24935 (= lt!28848 (list!694 (BalanceConc!1045 Empty!520)))))

(declare-fun rulesValidInductive!79 (LexerInterface!254 List!1666) Bool)

(assert (=> d!24935 (rulesValidInductive!79 thiss!11428 rules!1152)))

(assert (=> d!24935 (= (maxPrefixZipperSequence!53 thiss!11428 rules!1152 (BalanceConc!1045 Empty!520)) lt!28850)))

(declare-fun b!103873 () Bool)

(assert (=> b!103873 (= e!57587 (= (list!694 (_2!1119 (get!426 lt!28850))) (_2!1123 (get!427 (maxPrefixZipper!14 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520)))))))))

(declare-fun b!103874 () Bool)

(assert (=> b!103874 (= e!57589 (= (list!694 (_2!1119 (get!426 lt!28850))) (_2!1123 (get!427 (maxPrefix!90 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520)))))))))

(assert (= (and d!24935 c!25113) b!103872))

(assert (= (and d!24935 (not c!25113)) b!103870))

(assert (= (or b!103872 b!103870) bm!4488))

(assert (= (and d!24935 res!50024) b!103869))

(assert (= (and b!103869 (not res!50029)) b!103867))

(assert (= (and b!103867 res!50025) b!103873))

(assert (= (and b!103869 res!50027) b!103871))

(assert (= (and b!103871 (not res!50026)) b!103868))

(assert (= (and b!103868 res!50028) b!103874))

(declare-fun m!90294 () Bool)

(assert (=> b!103873 m!90294))

(declare-fun m!90296 () Bool)

(assert (=> b!103873 m!90296))

(assert (=> b!103873 m!89984))

(declare-fun m!90298 () Bool)

(assert (=> b!103873 m!90298))

(declare-fun m!90300 () Bool)

(assert (=> b!103873 m!90300))

(assert (=> b!103873 m!89984))

(assert (=> b!103873 m!90298))

(assert (=> b!103867 m!90294))

(assert (=> b!103867 m!89984))

(assert (=> b!103867 m!89984))

(assert (=> b!103867 m!90298))

(assert (=> b!103867 m!90298))

(assert (=> b!103867 m!90300))

(assert (=> b!103874 m!90294))

(assert (=> b!103874 m!89984))

(declare-fun m!90302 () Bool)

(assert (=> b!103874 m!90302))

(declare-fun m!90304 () Bool)

(assert (=> b!103874 m!90304))

(assert (=> b!103874 m!89984))

(assert (=> b!103874 m!90302))

(assert (=> b!103874 m!90296))

(declare-fun m!90306 () Bool)

(assert (=> d!24935 m!90306))

(declare-fun m!90308 () Bool)

(assert (=> d!24935 m!90308))

(assert (=> d!24935 m!90298))

(declare-fun m!90310 () Bool)

(assert (=> d!24935 m!90310))

(assert (=> d!24935 m!89984))

(assert (=> d!24935 m!89984))

(assert (=> d!24935 m!90298))

(declare-fun m!90312 () Bool)

(assert (=> d!24935 m!90312))

(declare-fun m!90314 () Bool)

(assert (=> d!24935 m!90314))

(assert (=> b!103869 m!90312))

(declare-fun m!90316 () Bool)

(assert (=> b!103870 m!90316))

(assert (=> b!103871 m!90312))

(declare-fun m!90318 () Bool)

(assert (=> bm!4488 m!90318))

(assert (=> b!103868 m!90294))

(assert (=> b!103868 m!89984))

(assert (=> b!103868 m!89984))

(assert (=> b!103868 m!90302))

(assert (=> b!103868 m!90302))

(assert (=> b!103868 m!90304))

(assert (=> d!24881 d!24935))

(declare-fun d!24939 () Bool)

(assert (=> d!24939 true))

(declare-fun lt!28869 () Bool)

(assert (=> d!24939 (= lt!28869 (rulesValidInductive!79 thiss!11428 rules!1152))))

(declare-fun lambda!1911 () Int)

(declare-fun forall!223 (List!1666 Int) Bool)

(assert (=> d!24939 (= lt!28869 (forall!223 rules!1152 lambda!1911))))

(assert (=> d!24939 (= (rulesValid!103 thiss!11428 rules!1152) lt!28869)))

(declare-fun bs!10081 () Bool)

(assert (= bs!10081 d!24939))

(assert (=> bs!10081 m!90314))

(declare-fun m!90382 () Bool)

(assert (=> bs!10081 m!90382))

(assert (=> d!24915 d!24939))

(declare-fun d!24963 () Bool)

(assert (=> d!24963 (= (list!695 lt!28796) (list!700 (c!25035 lt!28796)))))

(declare-fun bs!10082 () Bool)

(assert (= bs!10082 d!24963))

(declare-fun m!90384 () Bool)

(assert (=> bs!10082 m!90384))

(assert (=> b!103640 d!24963))

(declare-fun b!103917 () Bool)

(declare-fun e!57614 () List!1667)

(assert (=> b!103917 (= e!57614 (list!695 (_1!1117 lt!28760)))))

(declare-fun d!24965 () Bool)

(declare-fun e!57613 () Bool)

(assert (=> d!24965 e!57613))

(declare-fun res!50042 () Bool)

(assert (=> d!24965 (=> (not res!50042) (not e!57613))))

(declare-fun lt!28872 () List!1667)

(declare-fun content!141 (List!1667) (Set Token!472))

(assert (=> d!24965 (= res!50042 (= (content!141 lt!28872) (set.union (content!141 (list!695 (BalanceConc!1047 Empty!521))) (content!141 (list!695 (_1!1117 lt!28760))))))))

(assert (=> d!24965 (= lt!28872 e!57614)))

(declare-fun c!25127 () Bool)

(assert (=> d!24965 (= c!25127 (is-Nil!1661 (list!695 (BalanceConc!1047 Empty!521))))))

(assert (=> d!24965 (= (++!272 (list!695 (BalanceConc!1047 Empty!521)) (list!695 (_1!1117 lt!28760))) lt!28872)))

(declare-fun b!103918 () Bool)

(assert (=> b!103918 (= e!57614 (Cons!1661 (h!7058 (list!695 (BalanceConc!1047 Empty!521))) (++!272 (t!21342 (list!695 (BalanceConc!1047 Empty!521))) (list!695 (_1!1117 lt!28760)))))))

(declare-fun b!103920 () Bool)

(assert (=> b!103920 (= e!57613 (or (not (= (list!695 (_1!1117 lt!28760)) Nil!1661)) (= lt!28872 (list!695 (BalanceConc!1047 Empty!521)))))))

(declare-fun b!103919 () Bool)

(declare-fun res!50043 () Bool)

(assert (=> b!103919 (=> (not res!50043) (not e!57613))))

(assert (=> b!103919 (= res!50043 (= (size!1483 lt!28872) (+ (size!1483 (list!695 (BalanceConc!1047 Empty!521))) (size!1483 (list!695 (_1!1117 lt!28760))))))))

(assert (= (and d!24965 c!25127) b!103917))

(assert (= (and d!24965 (not c!25127)) b!103918))

(assert (= (and d!24965 res!50042) b!103919))

(assert (= (and b!103919 res!50043) b!103920))

(declare-fun m!90386 () Bool)

(assert (=> d!24965 m!90386))

(assert (=> d!24965 m!89958))

(declare-fun m!90388 () Bool)

(assert (=> d!24965 m!90388))

(assert (=> d!24965 m!89962))

(declare-fun m!90390 () Bool)

(assert (=> d!24965 m!90390))

(assert (=> b!103918 m!89962))

(declare-fun m!90392 () Bool)

(assert (=> b!103918 m!90392))

(declare-fun m!90394 () Bool)

(assert (=> b!103919 m!90394))

(assert (=> b!103919 m!89958))

(declare-fun m!90396 () Bool)

(assert (=> b!103919 m!90396))

(assert (=> b!103919 m!89962))

(declare-fun m!90398 () Bool)

(assert (=> b!103919 m!90398))

(assert (=> b!103640 d!24965))

(assert (=> b!103640 d!24879))

(assert (=> b!103640 d!24885))

(declare-fun b!103923 () Bool)

(declare-fun e!57616 () List!1665)

(assert (=> b!103923 (= e!57616 (list!702 (xs!3107 (c!25033 (_2!1117 lt!28758)))))))

(declare-fun b!103922 () Bool)

(declare-fun e!57615 () List!1665)

(assert (=> b!103922 (= e!57615 e!57616)))

(declare-fun c!25129 () Bool)

(assert (=> b!103922 (= c!25129 (is-Leaf!837 (c!25033 (_2!1117 lt!28758))))))

(declare-fun b!103921 () Bool)

(assert (=> b!103921 (= e!57615 Nil!1659)))

(declare-fun b!103924 () Bool)

(assert (=> b!103924 (= e!57616 (++!267 (list!698 (left!1270 (c!25033 (_2!1117 lt!28758)))) (list!698 (right!1600 (c!25033 (_2!1117 lt!28758))))))))

(declare-fun d!24967 () Bool)

(declare-fun c!25128 () Bool)

(assert (=> d!24967 (= c!25128 (is-Empty!520 (c!25033 (_2!1117 lt!28758))))))

(assert (=> d!24967 (= (list!698 (c!25033 (_2!1117 lt!28758))) e!57615)))

(assert (= (and d!24967 c!25128) b!103921))

(assert (= (and d!24967 (not c!25128)) b!103922))

(assert (= (and b!103922 c!25129) b!103923))

(assert (= (and b!103922 (not c!25129)) b!103924))

(declare-fun m!90400 () Bool)

(assert (=> b!103923 m!90400))

(declare-fun m!90402 () Bool)

(assert (=> b!103924 m!90402))

(declare-fun m!90404 () Bool)

(assert (=> b!103924 m!90404))

(assert (=> b!103924 m!90402))

(assert (=> b!103924 m!90404))

(declare-fun m!90406 () Bool)

(assert (=> b!103924 m!90406))

(assert (=> d!24865 d!24967))

(declare-fun d!24969 () Bool)

(declare-fun lt!28873 () Int)

(assert (=> d!24969 (= lt!28873 (size!1483 (list!695 (_1!1117 lt!28802))))))

(assert (=> d!24969 (= lt!28873 (size!1484 (c!25035 (_1!1117 lt!28802))))))

(assert (=> d!24969 (= (size!1477 (_1!1117 lt!28802)) lt!28873)))

(declare-fun bs!10083 () Bool)

(assert (= bs!10083 d!24969))

(assert (=> bs!10083 m!90160))

(assert (=> bs!10083 m!90160))

(declare-fun m!90408 () Bool)

(assert (=> bs!10083 m!90408))

(declare-fun m!90410 () Bool)

(assert (=> bs!10083 m!90410))

(assert (=> d!24891 d!24969))

(declare-fun b!103925 () Bool)

(declare-fun e!57622 () Bool)

(declare-fun e!57618 () Bool)

(assert (=> b!103925 (= e!57622 e!57618)))

(declare-fun res!50045 () Bool)

(assert (=> b!103925 (=> (not res!50045) (not e!57618))))

(declare-fun lt!28877 () Option!191)

(assert (=> b!103925 (= res!50045 (= (_1!1119 (get!426 lt!28877)) (_1!1123 (get!427 (maxPrefixZipper!14 thiss!11428 rules!1152 (list!694 input!576))))))))

(declare-fun b!103926 () Bool)

(declare-fun e!57617 () Bool)

(declare-fun e!57620 () Bool)

(assert (=> b!103926 (= e!57617 e!57620)))

(declare-fun res!50048 () Bool)

(assert (=> b!103926 (=> (not res!50048) (not e!57620))))

(assert (=> b!103926 (= res!50048 (= (_1!1119 (get!426 lt!28877)) (_1!1123 (get!427 (maxPrefix!90 thiss!11428 rules!1152 (list!694 input!576))))))))

(declare-fun b!103927 () Bool)

(declare-fun res!50047 () Bool)

(declare-fun e!57619 () Bool)

(assert (=> b!103927 (=> (not res!50047) (not e!57619))))

(assert (=> b!103927 (= res!50047 e!57622)))

(declare-fun res!50049 () Bool)

(assert (=> b!103927 (=> res!50049 e!57622)))

(assert (=> b!103927 (= res!50049 (not (isDefined!65 lt!28877)))))

(declare-fun b!103928 () Bool)

(declare-fun e!57621 () Option!191)

(declare-fun lt!28876 () Option!191)

(declare-fun lt!28879 () Option!191)

(assert (=> b!103928 (= e!57621 (ite (and (is-None!190 lt!28876) (is-None!190 lt!28879)) None!190 (ite (is-None!190 lt!28879) lt!28876 (ite (is-None!190 lt!28876) lt!28879 (ite (>= (size!1475 (_1!1119 (v!12997 lt!28876))) (size!1475 (_1!1119 (v!12997 lt!28879)))) lt!28876 lt!28879)))))))

(declare-fun call!4494 () Option!191)

(assert (=> b!103928 (= lt!28876 call!4494)))

(assert (=> b!103928 (= lt!28879 (maxPrefixZipperSequence!53 thiss!11428 (t!21341 rules!1152) input!576))))

(declare-fun b!103929 () Bool)

(assert (=> b!103929 (= e!57619 e!57617)))

(declare-fun res!50046 () Bool)

(assert (=> b!103929 (=> res!50046 e!57617)))

(assert (=> b!103929 (= res!50046 (not (isDefined!65 lt!28877)))))

(declare-fun b!103930 () Bool)

(assert (=> b!103930 (= e!57621 call!4494)))

(declare-fun bm!4489 () Bool)

(assert (=> bm!4489 (= call!4494 (maxPrefixOneRuleZipperSequence!15 thiss!11428 (h!7057 rules!1152) input!576))))

(declare-fun d!24971 () Bool)

(assert (=> d!24971 e!57619))

(declare-fun res!50044 () Bool)

(assert (=> d!24971 (=> (not res!50044) (not e!57619))))

(assert (=> d!24971 (= res!50044 (= (isDefined!65 lt!28877) (isDefined!66 (maxPrefixZipper!14 thiss!11428 rules!1152 (list!694 input!576)))))))

(assert (=> d!24971 (= lt!28877 e!57621)))

(declare-fun c!25130 () Bool)

(assert (=> d!24971 (= c!25130 (and (is-Cons!1660 rules!1152) (is-Nil!1660 (t!21341 rules!1152))))))

(declare-fun lt!28880 () Unit!1106)

(declare-fun lt!28878 () Unit!1106)

(assert (=> d!24971 (= lt!28880 lt!28878)))

(declare-fun lt!28875 () List!1665)

(declare-fun lt!28874 () List!1665)

(assert (=> d!24971 (isPrefix!48 lt!28875 lt!28874)))

(assert (=> d!24971 (= lt!28878 (lemmaIsPrefixRefl!48 lt!28875 lt!28874))))

(assert (=> d!24971 (= lt!28874 (list!694 input!576))))

(assert (=> d!24971 (= lt!28875 (list!694 input!576))))

(assert (=> d!24971 (rulesValidInductive!79 thiss!11428 rules!1152)))

(assert (=> d!24971 (= (maxPrefixZipperSequence!53 thiss!11428 rules!1152 input!576) lt!28877)))

(declare-fun b!103931 () Bool)

(assert (=> b!103931 (= e!57618 (= (list!694 (_2!1119 (get!426 lt!28877))) (_2!1123 (get!427 (maxPrefixZipper!14 thiss!11428 rules!1152 (list!694 input!576))))))))

(declare-fun b!103932 () Bool)

(assert (=> b!103932 (= e!57620 (= (list!694 (_2!1119 (get!426 lt!28877))) (_2!1123 (get!427 (maxPrefix!90 thiss!11428 rules!1152 (list!694 input!576))))))))

(assert (= (and d!24971 c!25130) b!103930))

(assert (= (and d!24971 (not c!25130)) b!103928))

(assert (= (or b!103930 b!103928) bm!4489))

(assert (= (and d!24971 res!50044) b!103927))

(assert (= (and b!103927 (not res!50049)) b!103925))

(assert (= (and b!103925 res!50045) b!103931))

(assert (= (and b!103927 res!50047) b!103929))

(assert (= (and b!103929 (not res!50046)) b!103926))

(assert (= (and b!103926 res!50048) b!103932))

(declare-fun m!90412 () Bool)

(assert (=> b!103931 m!90412))

(declare-fun m!90414 () Bool)

(assert (=> b!103931 m!90414))

(assert (=> b!103931 m!89982))

(declare-fun m!90416 () Bool)

(assert (=> b!103931 m!90416))

(declare-fun m!90418 () Bool)

(assert (=> b!103931 m!90418))

(assert (=> b!103931 m!89982))

(assert (=> b!103931 m!90416))

(assert (=> b!103925 m!90412))

(assert (=> b!103925 m!89982))

(assert (=> b!103925 m!89982))

(assert (=> b!103925 m!90416))

(assert (=> b!103925 m!90416))

(assert (=> b!103925 m!90418))

(assert (=> b!103932 m!90412))

(assert (=> b!103932 m!89982))

(declare-fun m!90420 () Bool)

(assert (=> b!103932 m!90420))

(declare-fun m!90422 () Bool)

(assert (=> b!103932 m!90422))

(assert (=> b!103932 m!89982))

(assert (=> b!103932 m!90420))

(assert (=> b!103932 m!90414))

(declare-fun m!90424 () Bool)

(assert (=> d!24971 m!90424))

(declare-fun m!90426 () Bool)

(assert (=> d!24971 m!90426))

(assert (=> d!24971 m!90416))

(declare-fun m!90428 () Bool)

(assert (=> d!24971 m!90428))

(assert (=> d!24971 m!89982))

(assert (=> d!24971 m!89982))

(assert (=> d!24971 m!90416))

(declare-fun m!90430 () Bool)

(assert (=> d!24971 m!90430))

(assert (=> d!24971 m!90314))

(assert (=> b!103927 m!90430))

(declare-fun m!90432 () Bool)

(assert (=> b!103928 m!90432))

(assert (=> b!103929 m!90430))

(declare-fun m!90434 () Bool)

(assert (=> bm!4489 m!90434))

(assert (=> b!103926 m!90412))

(assert (=> b!103926 m!89982))

(assert (=> b!103926 m!89982))

(assert (=> b!103926 m!90420))

(assert (=> b!103926 m!90420))

(assert (=> b!103926 m!90422))

(assert (=> d!24891 d!24971))

(declare-fun b!103941 () Bool)

(declare-fun e!57627 () List!1667)

(assert (=> b!103941 (= e!57627 Nil!1661)))

(declare-fun b!103943 () Bool)

(declare-fun e!57628 () List!1667)

(declare-fun list!703 (IArray!1043) List!1667)

(assert (=> b!103943 (= e!57628 (list!703 (xs!3108 (c!25035 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760))))))))

(declare-fun b!103944 () Bool)

(assert (=> b!103944 (= e!57628 (++!272 (list!700 (left!1271 (c!25035 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760))))) (list!700 (right!1601 (c!25035 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760)))))))))

(declare-fun b!103942 () Bool)

(assert (=> b!103942 (= e!57627 e!57628)))

(declare-fun c!25136 () Bool)

(assert (=> b!103942 (= c!25136 (is-Leaf!838 (c!25035 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760)))))))

(declare-fun d!24973 () Bool)

(declare-fun c!25135 () Bool)

(assert (=> d!24973 (= c!25135 (is-Empty!521 (c!25035 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760)))))))

(assert (=> d!24973 (= (list!700 (c!25035 (++!268 (BalanceConc!1047 Empty!521) (_1!1117 lt!28760)))) e!57627)))

(assert (= (and d!24973 c!25135) b!103941))

(assert (= (and d!24973 (not c!25135)) b!103942))

(assert (= (and b!103942 c!25136) b!103943))

(assert (= (and b!103942 (not c!25136)) b!103944))

(declare-fun m!90436 () Bool)

(assert (=> b!103943 m!90436))

(declare-fun m!90438 () Bool)

(assert (=> b!103944 m!90438))

(declare-fun m!90440 () Bool)

(assert (=> b!103944 m!90440))

(assert (=> b!103944 m!90438))

(assert (=> b!103944 m!90440))

(declare-fun m!90442 () Bool)

(assert (=> b!103944 m!90442))

(assert (=> d!24887 d!24973))

(declare-fun b!103957 () Bool)

(declare-fun e!57634 () Bool)

(declare-fun e!57633 () Bool)

(assert (=> b!103957 (= e!57634 e!57633)))

(declare-fun res!50065 () Bool)

(assert (=> b!103957 (=> (not res!50065) (not e!57633))))

(assert (=> b!103957 (= res!50065 (<= (- 1) (- (height!57 (left!1271 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))) (height!57 (right!1601 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))))))))

(declare-fun b!103958 () Bool)

(declare-fun isEmpty!770 (Conc!521) Bool)

(assert (=> b!103958 (= e!57633 (not (isEmpty!770 (right!1601 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))))))))

(declare-fun d!24975 () Bool)

(declare-fun res!50067 () Bool)

(assert (=> d!24975 (=> res!50067 e!57634)))

(assert (=> d!24975 (= res!50067 (not (is-Node!521 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))))))

(assert (=> d!24975 (= (isBalanced!143 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))) e!57634)))

(declare-fun b!103959 () Bool)

(declare-fun res!50066 () Bool)

(assert (=> b!103959 (=> (not res!50066) (not e!57633))))

(assert (=> b!103959 (= res!50066 (isBalanced!143 (left!1271 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!103960 () Bool)

(declare-fun res!50064 () Bool)

(assert (=> b!103960 (=> (not res!50064) (not e!57633))))

(assert (=> b!103960 (= res!50064 (<= (- (height!57 (left!1271 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))) (height!57 (right!1601 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))))) 1))))

(declare-fun b!103961 () Bool)

(declare-fun res!50062 () Bool)

(assert (=> b!103961 (=> (not res!50062) (not e!57633))))

(assert (=> b!103961 (= res!50062 (isBalanced!143 (right!1601 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!103962 () Bool)

(declare-fun res!50063 () Bool)

(assert (=> b!103962 (=> (not res!50063) (not e!57633))))

(assert (=> b!103962 (= res!50063 (not (isEmpty!770 (left!1271 (++!271 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760)))))))))

(assert (= (and d!24975 (not res!50067)) b!103957))

(assert (= (and b!103957 res!50065) b!103960))

(assert (= (and b!103960 res!50064) b!103959))

(assert (= (and b!103959 res!50066) b!103961))

(assert (= (and b!103961 res!50062) b!103962))

(assert (= (and b!103962 res!50063) b!103958))

(declare-fun m!90444 () Bool)

(assert (=> b!103958 m!90444))

(declare-fun m!90446 () Bool)

(assert (=> b!103959 m!90446))

(declare-fun m!90448 () Bool)

(assert (=> b!103962 m!90448))

(declare-fun m!90450 () Bool)

(assert (=> b!103957 m!90450))

(declare-fun m!90452 () Bool)

(assert (=> b!103957 m!90452))

(assert (=> b!103960 m!90450))

(assert (=> b!103960 m!90452))

(declare-fun m!90454 () Bool)

(assert (=> b!103961 m!90454))

(assert (=> b!103637 d!24975))

(assert (=> b!103637 d!24921))

(declare-fun d!24977 () Bool)

(declare-fun res!50072 () Bool)

(declare-fun e!57637 () Bool)

(assert (=> d!24977 (=> (not res!50072) (not e!57637))))

(assert (=> d!24977 (= res!50072 (<= (size!1480 (list!702 (xs!3107 (c!25033 input!576)))) 512))))

(assert (=> d!24977 (= (inv!2025 (c!25033 input!576)) e!57637)))

(declare-fun b!103967 () Bool)

(declare-fun res!50073 () Bool)

(assert (=> b!103967 (=> (not res!50073) (not e!57637))))

(assert (=> b!103967 (= res!50073 (= (csize!1271 (c!25033 input!576)) (size!1480 (list!702 (xs!3107 (c!25033 input!576))))))))

(declare-fun b!103968 () Bool)

(assert (=> b!103968 (= e!57637 (and (> (csize!1271 (c!25033 input!576)) 0) (<= (csize!1271 (c!25033 input!576)) 512)))))

(assert (= (and d!24977 res!50072) b!103967))

(assert (= (and b!103967 res!50073) b!103968))

(assert (=> d!24977 m!90270))

(assert (=> d!24977 m!90270))

(declare-fun m!90456 () Bool)

(assert (=> d!24977 m!90456))

(assert (=> b!103967 m!90270))

(assert (=> b!103967 m!90270))

(assert (=> b!103967 m!90456))

(assert (=> b!103581 d!24977))

(declare-fun d!24979 () Bool)

(declare-fun c!25139 () Bool)

(assert (=> d!24979 (= c!25139 (is-Nil!1659 lt!28808))))

(declare-fun e!57640 () (Set C!1782))

(assert (=> d!24979 (= (content!140 lt!28808) e!57640)))

(declare-fun b!103973 () Bool)

(assert (=> b!103973 (= e!57640 (as set.empty (Set C!1782)))))

(declare-fun b!103974 () Bool)

(assert (=> b!103974 (= e!57640 (set.union (set.insert (h!7056 lt!28808) (as set.empty (Set C!1782))) (content!140 (t!21340 lt!28808))))))

(assert (= (and d!24979 c!25139) b!103973))

(assert (= (and d!24979 (not c!25139)) b!103974))

(declare-fun m!90458 () Bool)

(assert (=> b!103974 m!90458))

(declare-fun m!90460 () Bool)

(assert (=> b!103974 m!90460))

(assert (=> d!24901 d!24979))

(declare-fun d!24981 () Bool)

(declare-fun c!25140 () Bool)

(assert (=> d!24981 (= c!25140 (is-Nil!1659 lt!28757))))

(declare-fun e!57641 () (Set C!1782))

(assert (=> d!24981 (= (content!140 lt!28757) e!57641)))

(declare-fun b!103975 () Bool)

(assert (=> b!103975 (= e!57641 (as set.empty (Set C!1782)))))

(declare-fun b!103976 () Bool)

(assert (=> b!103976 (= e!57641 (set.union (set.insert (h!7056 lt!28757) (as set.empty (Set C!1782))) (content!140 (t!21340 lt!28757))))))

(assert (= (and d!24981 c!25140) b!103975))

(assert (= (and d!24981 (not c!25140)) b!103976))

(declare-fun m!90462 () Bool)

(assert (=> b!103976 m!90462))

(declare-fun m!90464 () Bool)

(assert (=> b!103976 m!90464))

(assert (=> d!24901 d!24981))

(declare-fun d!24983 () Bool)

(declare-fun c!25141 () Bool)

(assert (=> d!24983 (= c!25141 (is-Nil!1659 lt!28759))))

(declare-fun e!57642 () (Set C!1782))

(assert (=> d!24983 (= (content!140 lt!28759) e!57642)))

(declare-fun b!103977 () Bool)

(assert (=> b!103977 (= e!57642 (as set.empty (Set C!1782)))))

(declare-fun b!103978 () Bool)

(assert (=> b!103978 (= e!57642 (set.union (set.insert (h!7056 lt!28759) (as set.empty (Set C!1782))) (content!140 (t!21340 lt!28759))))))

(assert (= (and d!24983 c!25141) b!103977))

(assert (= (and d!24983 (not c!25141)) b!103978))

(declare-fun m!90466 () Bool)

(assert (=> b!103978 m!90466))

(declare-fun m!90468 () Bool)

(assert (=> b!103978 m!90468))

(assert (=> d!24901 d!24983))

(assert (=> b!103638 d!24917))

(assert (=> b!103638 d!24919))

(assert (=> b!103638 d!24921))

(assert (=> b!103638 d!24923))

(assert (=> b!103638 d!24925))

(declare-fun d!24985 () Bool)

(declare-fun c!25142 () Bool)

(assert (=> d!24985 (= c!25142 (is-Node!520 (left!1270 (c!25033 input!576))))))

(declare-fun e!57643 () Bool)

(assert (=> d!24985 (= (inv!2019 (left!1270 (c!25033 input!576))) e!57643)))

(declare-fun b!103979 () Bool)

(assert (=> b!103979 (= e!57643 (inv!2024 (left!1270 (c!25033 input!576))))))

(declare-fun b!103980 () Bool)

(declare-fun e!57644 () Bool)

(assert (=> b!103980 (= e!57643 e!57644)))

(declare-fun res!50074 () Bool)

(assert (=> b!103980 (= res!50074 (not (is-Leaf!837 (left!1270 (c!25033 input!576)))))))

(assert (=> b!103980 (=> res!50074 e!57644)))

(declare-fun b!103981 () Bool)

(assert (=> b!103981 (= e!57644 (inv!2025 (left!1270 (c!25033 input!576))))))

(assert (= (and d!24985 c!25142) b!103979))

(assert (= (and d!24985 (not c!25142)) b!103980))

(assert (= (and b!103980 (not res!50074)) b!103981))

(declare-fun m!90470 () Bool)

(assert (=> b!103979 m!90470))

(declare-fun m!90472 () Bool)

(assert (=> b!103981 m!90472))

(assert (=> b!103707 d!24985))

(declare-fun d!24987 () Bool)

(declare-fun c!25143 () Bool)

(assert (=> d!24987 (= c!25143 (is-Node!520 (right!1600 (c!25033 input!576))))))

(declare-fun e!57645 () Bool)

(assert (=> d!24987 (= (inv!2019 (right!1600 (c!25033 input!576))) e!57645)))

(declare-fun b!103982 () Bool)

(assert (=> b!103982 (= e!57645 (inv!2024 (right!1600 (c!25033 input!576))))))

(declare-fun b!103983 () Bool)

(declare-fun e!57646 () Bool)

(assert (=> b!103983 (= e!57645 e!57646)))

(declare-fun res!50075 () Bool)

(assert (=> b!103983 (= res!50075 (not (is-Leaf!837 (right!1600 (c!25033 input!576)))))))

(assert (=> b!103983 (=> res!50075 e!57646)))

(declare-fun b!103984 () Bool)

(assert (=> b!103984 (= e!57646 (inv!2025 (right!1600 (c!25033 input!576))))))

(assert (= (and d!24987 c!25143) b!103982))

(assert (= (and d!24987 (not c!25143)) b!103983))

(assert (= (and b!103983 (not res!50075)) b!103984))

(declare-fun m!90474 () Bool)

(assert (=> b!103982 m!90474))

(declare-fun m!90476 () Bool)

(assert (=> b!103984 m!90476))

(assert (=> b!103707 d!24987))

(declare-fun d!24989 () Bool)

(declare-fun lt!28883 () Bool)

(declare-fun isEmpty!771 (List!1667) Bool)

(assert (=> d!24989 (= lt!28883 (isEmpty!771 (list!695 (_1!1117 lt!28802))))))

(assert (=> d!24989 (= lt!28883 (isEmpty!770 (c!25035 (_1!1117 lt!28802))))))

(assert (=> d!24989 (= (isEmpty!767 (_1!1117 lt!28802)) lt!28883)))

(declare-fun bs!10084 () Bool)

(assert (= bs!10084 d!24989))

(assert (=> bs!10084 m!90160))

(assert (=> bs!10084 m!90160))

(declare-fun m!90478 () Bool)

(assert (=> bs!10084 m!90478))

(declare-fun m!90480 () Bool)

(assert (=> bs!10084 m!90480))

(assert (=> b!103654 d!24989))

(declare-fun d!24991 () Bool)

(assert (=> d!24991 (= (inv!2026 (xs!3107 (c!25033 input!576))) (<= (size!1480 (innerList!578 (xs!3107 (c!25033 input!576)))) 2147483647))))

(declare-fun bs!10085 () Bool)

(assert (= bs!10085 d!24991))

(declare-fun m!90482 () Bool)

(assert (=> bs!10085 m!90482))

(assert (=> b!103708 d!24991))

(declare-fun d!24993 () Bool)

(declare-fun res!50080 () Bool)

(declare-fun e!57651 () Bool)

(assert (=> d!24993 (=> res!50080 e!57651)))

(assert (=> d!24993 (= res!50080 (is-Nil!1660 rules!1152))))

(assert (=> d!24993 (= (noDuplicateTag!103 thiss!11428 rules!1152 Nil!1667) e!57651)))

(declare-fun b!103989 () Bool)

(declare-fun e!57652 () Bool)

(assert (=> b!103989 (= e!57651 e!57652)))

(declare-fun res!50081 () Bool)

(assert (=> b!103989 (=> (not res!50081) (not e!57652))))

(declare-fun contains!272 (List!1673 String!2154) Bool)

(assert (=> b!103989 (= res!50081 (not (contains!272 Nil!1667 (tag!540 (h!7057 rules!1152)))))))

(declare-fun b!103990 () Bool)

(assert (=> b!103990 (= e!57652 (noDuplicateTag!103 thiss!11428 (t!21341 rules!1152) (Cons!1667 (tag!540 (h!7057 rules!1152)) Nil!1667)))))

(assert (= (and d!24993 (not res!50080)) b!103989))

(assert (= (and b!103989 res!50081) b!103990))

(declare-fun m!90484 () Bool)

(assert (=> b!103989 m!90484))

(declare-fun m!90486 () Bool)

(assert (=> b!103990 m!90486))

(assert (=> b!103688 d!24993))

(declare-fun d!24995 () Bool)

(declare-fun res!50088 () Bool)

(declare-fun e!57655 () Bool)

(assert (=> d!24995 (=> (not res!50088) (not e!57655))))

(declare-fun size!1488 (Conc!520) Int)

(assert (=> d!24995 (= res!50088 (= (csize!1270 (c!25033 input!576)) (+ (size!1488 (left!1270 (c!25033 input!576))) (size!1488 (right!1600 (c!25033 input!576))))))))

(assert (=> d!24995 (= (inv!2024 (c!25033 input!576)) e!57655)))

(declare-fun b!103997 () Bool)

(declare-fun res!50089 () Bool)

(assert (=> b!103997 (=> (not res!50089) (not e!57655))))

(assert (=> b!103997 (= res!50089 (and (not (= (left!1270 (c!25033 input!576)) Empty!520)) (not (= (right!1600 (c!25033 input!576)) Empty!520))))))

(declare-fun b!103998 () Bool)

(declare-fun res!50090 () Bool)

(assert (=> b!103998 (=> (not res!50090) (not e!57655))))

(declare-fun height!59 (Conc!520) Int)

(assert (=> b!103998 (= res!50090 (= (cheight!731 (c!25033 input!576)) (+ (max!0 (height!59 (left!1270 (c!25033 input!576))) (height!59 (right!1600 (c!25033 input!576)))) 1)))))

(declare-fun b!103999 () Bool)

(assert (=> b!103999 (= e!57655 (<= 0 (cheight!731 (c!25033 input!576))))))

(assert (= (and d!24995 res!50088) b!103997))

(assert (= (and b!103997 res!50089) b!103998))

(assert (= (and b!103998 res!50090) b!103999))

(declare-fun m!90488 () Bool)

(assert (=> d!24995 m!90488))

(declare-fun m!90490 () Bool)

(assert (=> d!24995 m!90490))

(declare-fun m!90492 () Bool)

(assert (=> b!103998 m!90492))

(declare-fun m!90494 () Bool)

(assert (=> b!103998 m!90494))

(assert (=> b!103998 m!90492))

(assert (=> b!103998 m!90494))

(declare-fun m!90496 () Bool)

(assert (=> b!103998 m!90496))

(assert (=> b!103579 d!24995))

(declare-fun b!104012 () Bool)

(declare-fun res!50107 () Bool)

(declare-fun e!57660 () Bool)

(assert (=> b!104012 (=> (not res!50107) (not e!57660))))

(assert (=> b!104012 (= res!50107 (isBalanced!142 (right!1600 (c!25033 input!576))))))

(declare-fun b!104013 () Bool)

(declare-fun isEmpty!772 (Conc!520) Bool)

(assert (=> b!104013 (= e!57660 (not (isEmpty!772 (right!1600 (c!25033 input!576)))))))

(declare-fun b!104014 () Bool)

(declare-fun e!57661 () Bool)

(assert (=> b!104014 (= e!57661 e!57660)))

(declare-fun res!50104 () Bool)

(assert (=> b!104014 (=> (not res!50104) (not e!57660))))

(assert (=> b!104014 (= res!50104 (<= (- 1) (- (height!59 (left!1270 (c!25033 input!576))) (height!59 (right!1600 (c!25033 input!576))))))))

(declare-fun b!104015 () Bool)

(declare-fun res!50103 () Bool)

(assert (=> b!104015 (=> (not res!50103) (not e!57660))))

(assert (=> b!104015 (= res!50103 (isBalanced!142 (left!1270 (c!25033 input!576))))))

(declare-fun b!104016 () Bool)

(declare-fun res!50105 () Bool)

(assert (=> b!104016 (=> (not res!50105) (not e!57660))))

(assert (=> b!104016 (= res!50105 (not (isEmpty!772 (left!1270 (c!25033 input!576)))))))

(declare-fun d!24997 () Bool)

(declare-fun res!50106 () Bool)

(assert (=> d!24997 (=> res!50106 e!57661)))

(assert (=> d!24997 (= res!50106 (not (is-Node!520 (c!25033 input!576))))))

(assert (=> d!24997 (= (isBalanced!142 (c!25033 input!576)) e!57661)))

(declare-fun b!104017 () Bool)

(declare-fun res!50108 () Bool)

(assert (=> b!104017 (=> (not res!50108) (not e!57660))))

(assert (=> b!104017 (= res!50108 (<= (- (height!59 (left!1270 (c!25033 input!576))) (height!59 (right!1600 (c!25033 input!576)))) 1))))

(assert (= (and d!24997 (not res!50106)) b!104014))

(assert (= (and b!104014 res!50104) b!104017))

(assert (= (and b!104017 res!50108) b!104015))

(assert (= (and b!104015 res!50103) b!104012))

(assert (= (and b!104012 res!50107) b!104016))

(assert (= (and b!104016 res!50105) b!104013))

(declare-fun m!90498 () Bool)

(assert (=> b!104016 m!90498))

(assert (=> b!104014 m!90492))

(assert (=> b!104014 m!90494))

(assert (=> b!104017 m!90492))

(assert (=> b!104017 m!90494))

(declare-fun m!90500 () Bool)

(assert (=> b!104013 m!90500))

(declare-fun m!90502 () Bool)

(assert (=> b!104012 m!90502))

(declare-fun m!90504 () Bool)

(assert (=> b!104015 m!90504))

(assert (=> d!24857 d!24997))

(declare-fun d!24999 () Bool)

(assert (=> d!24999 (= (list!694 (_2!1117 lt!28802)) (list!698 (c!25033 (_2!1117 lt!28802))))))

(declare-fun bs!10086 () Bool)

(assert (= bs!10086 d!24999))

(declare-fun m!90506 () Bool)

(assert (=> bs!10086 m!90506))

(assert (=> b!103651 d!24999))

(declare-fun b!104057 () Bool)

(declare-fun e!57689 () tuple2!1826)

(declare-fun lt!28914 () Option!193)

(declare-fun lt!28916 () tuple2!1826)

(assert (=> b!104057 (= e!57689 (tuple2!1827 (Cons!1661 (_1!1123 (v!13001 lt!28914)) (_1!1120 lt!28916)) (_2!1120 lt!28916)))))

(assert (=> b!104057 (= lt!28916 (lexList!78 thiss!11428 rules!1152 (_2!1123 (v!13001 lt!28914))))))

(declare-fun b!104058 () Bool)

(declare-fun e!57690 () Bool)

(declare-fun lt!28915 () tuple2!1826)

(assert (=> b!104058 (= e!57690 (= (_2!1120 lt!28915) (list!694 input!576)))))

(declare-fun b!104059 () Bool)

(declare-fun e!57691 () Bool)

(assert (=> b!104059 (= e!57691 (not (isEmpty!771 (_1!1120 lt!28915))))))

(declare-fun d!25001 () Bool)

(assert (=> d!25001 e!57690))

(declare-fun c!25153 () Bool)

(assert (=> d!25001 (= c!25153 (> (size!1483 (_1!1120 lt!28915)) 0))))

(assert (=> d!25001 (= lt!28915 e!57689)))

(declare-fun c!25154 () Bool)

(assert (=> d!25001 (= c!25154 (is-Some!192 lt!28914))))

(assert (=> d!25001 (= lt!28914 (maxPrefix!90 thiss!11428 rules!1152 (list!694 input!576)))))

(assert (=> d!25001 (= (lexList!78 thiss!11428 rules!1152 (list!694 input!576)) lt!28915)))

(declare-fun b!104060 () Bool)

(assert (=> b!104060 (= e!57690 e!57691)))

(declare-fun res!50130 () Bool)

(assert (=> b!104060 (= res!50130 (< (size!1480 (_2!1120 lt!28915)) (size!1480 (list!694 input!576))))))

(assert (=> b!104060 (=> (not res!50130) (not e!57691))))

(declare-fun b!104061 () Bool)

(assert (=> b!104061 (= e!57689 (tuple2!1827 Nil!1661 (list!694 input!576)))))

(assert (= (and d!25001 c!25154) b!104057))

(assert (= (and d!25001 (not c!25154)) b!104061))

(assert (= (and d!25001 c!25153) b!104060))

(assert (= (and d!25001 (not c!25153)) b!104058))

(assert (= (and b!104060 res!50130) b!104059))

(declare-fun m!90546 () Bool)

(assert (=> b!104057 m!90546))

(declare-fun m!90548 () Bool)

(assert (=> b!104059 m!90548))

(declare-fun m!90550 () Bool)

(assert (=> d!25001 m!90550))

(assert (=> d!25001 m!89982))

(assert (=> d!25001 m!90420))

(declare-fun m!90552 () Bool)

(assert (=> b!104060 m!90552))

(assert (=> b!104060 m!89982))

(declare-fun m!90554 () Bool)

(assert (=> b!104060 m!90554))

(assert (=> b!103651 d!25001))

(assert (=> b!103651 d!24909))

(declare-fun d!25009 () Bool)

(declare-fun lt!28917 () Bool)

(assert (=> d!25009 (= lt!28917 (isEmpty!771 (list!695 (_1!1117 lt!28787))))))

(assert (=> d!25009 (= lt!28917 (isEmpty!770 (c!25035 (_1!1117 lt!28787))))))

(assert (=> d!25009 (= (isEmpty!767 (_1!1117 lt!28787)) lt!28917)))

(declare-fun bs!10088 () Bool)

(assert (= bs!10088 d!25009))

(assert (=> bs!10088 m!90098))

(assert (=> bs!10088 m!90098))

(declare-fun m!90556 () Bool)

(assert (=> bs!10088 m!90556))

(declare-fun m!90558 () Bool)

(assert (=> bs!10088 m!90558))

(assert (=> b!103614 d!25009))

(declare-fun d!25011 () Bool)

(assert (=> d!25011 true))

(declare-fun order!805 () Int)

(declare-fun order!803 () Int)

(declare-fun lambda!1914 () Int)

(declare-fun dynLambda!520 (Int Int) Int)

(declare-fun dynLambda!521 (Int Int) Int)

(assert (=> d!25011 (< (dynLambda!520 order!803 (toValue!941 (transformation!362 (h!7057 rules!1152)))) (dynLambda!521 order!805 lambda!1914))))

(declare-fun Forall2!62 (Int) Bool)

(assert (=> d!25011 (= (equivClasses!90 (toChars!800 (transformation!362 (h!7057 rules!1152))) (toValue!941 (transformation!362 (h!7057 rules!1152)))) (Forall2!62 lambda!1914))))

(declare-fun bs!10089 () Bool)

(assert (= bs!10089 d!25011))

(declare-fun m!90568 () Bool)

(assert (=> bs!10089 m!90568))

(assert (=> b!103663 d!25011))

(declare-fun d!25015 () Bool)

(declare-fun lt!28920 () Int)

(assert (=> d!25015 (>= lt!28920 0)))

(declare-fun e!57708 () Int)

(assert (=> d!25015 (= lt!28920 e!57708)))

(declare-fun c!25163 () Bool)

(assert (=> d!25015 (= c!25163 (is-Nil!1659 lt!28808))))

(assert (=> d!25015 (= (size!1480 lt!28808) lt!28920)))

(declare-fun b!104100 () Bool)

(assert (=> b!104100 (= e!57708 0)))

(declare-fun b!104101 () Bool)

(assert (=> b!104101 (= e!57708 (+ 1 (size!1480 (t!21340 lt!28808))))))

(assert (= (and d!25015 c!25163) b!104100))

(assert (= (and d!25015 (not c!25163)) b!104101))

(declare-fun m!90576 () Bool)

(assert (=> b!104101 m!90576))

(assert (=> b!103684 d!25015))

(declare-fun d!25017 () Bool)

(declare-fun lt!28921 () Int)

(assert (=> d!25017 (>= lt!28921 0)))

(declare-fun e!57709 () Int)

(assert (=> d!25017 (= lt!28921 e!57709)))

(declare-fun c!25164 () Bool)

(assert (=> d!25017 (= c!25164 (is-Nil!1659 lt!28757))))

(assert (=> d!25017 (= (size!1480 lt!28757) lt!28921)))

(declare-fun b!104102 () Bool)

(assert (=> b!104102 (= e!57709 0)))

(declare-fun b!104103 () Bool)

(assert (=> b!104103 (= e!57709 (+ 1 (size!1480 (t!21340 lt!28757))))))

(assert (= (and d!25017 c!25164) b!104102))

(assert (= (and d!25017 (not c!25164)) b!104103))

(declare-fun m!90584 () Bool)

(assert (=> b!104103 m!90584))

(assert (=> b!103684 d!25017))

(declare-fun d!25021 () Bool)

(declare-fun lt!28923 () Int)

(assert (=> d!25021 (>= lt!28923 0)))

(declare-fun e!57711 () Int)

(assert (=> d!25021 (= lt!28923 e!57711)))

(declare-fun c!25165 () Bool)

(assert (=> d!25021 (= c!25165 (is-Nil!1659 lt!28759))))

(assert (=> d!25021 (= (size!1480 lt!28759) lt!28923)))

(declare-fun b!104105 () Bool)

(assert (=> b!104105 (= e!57711 0)))

(declare-fun b!104106 () Bool)

(assert (=> b!104106 (= e!57711 (+ 1 (size!1480 (t!21340 lt!28759))))))

(assert (= (and d!25021 c!25165) b!104105))

(assert (= (and d!25021 (not c!25165)) b!104106))

(declare-fun m!90586 () Bool)

(assert (=> b!104106 m!90586))

(assert (=> b!103684 d!25021))

(declare-fun b!104107 () Bool)

(declare-fun e!57712 () List!1667)

(assert (=> b!104107 (= e!57712 Nil!1661)))

(declare-fun b!104109 () Bool)

(declare-fun e!57713 () List!1667)

(assert (=> b!104109 (= e!57713 (list!703 (xs!3108 (c!25035 (_1!1117 lt!28760)))))))

(declare-fun b!104110 () Bool)

(assert (=> b!104110 (= e!57713 (++!272 (list!700 (left!1271 (c!25035 (_1!1117 lt!28760)))) (list!700 (right!1601 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!104108 () Bool)

(assert (=> b!104108 (= e!57712 e!57713)))

(declare-fun c!25167 () Bool)

(assert (=> b!104108 (= c!25167 (is-Leaf!838 (c!25035 (_1!1117 lt!28760))))))

(declare-fun d!25023 () Bool)

(declare-fun c!25166 () Bool)

(assert (=> d!25023 (= c!25166 (is-Empty!521 (c!25035 (_1!1117 lt!28760))))))

(assert (=> d!25023 (= (list!700 (c!25035 (_1!1117 lt!28760))) e!57712)))

(assert (= (and d!25023 c!25166) b!104107))

(assert (= (and d!25023 (not c!25166)) b!104108))

(assert (= (and b!104108 c!25167) b!104109))

(assert (= (and b!104108 (not c!25167)) b!104110))

(declare-fun m!90596 () Bool)

(assert (=> b!104109 m!90596))

(declare-fun m!90598 () Bool)

(assert (=> b!104110 m!90598))

(declare-fun m!90600 () Bool)

(assert (=> b!104110 m!90600))

(assert (=> b!104110 m!90598))

(assert (=> b!104110 m!90600))

(declare-fun m!90602 () Bool)

(assert (=> b!104110 m!90602))

(assert (=> d!24885 d!25023))

(declare-fun b!104118 () Bool)

(declare-fun e!57718 () List!1667)

(assert (=> b!104118 (= e!57718 Nil!1661)))

(declare-fun b!104120 () Bool)

(declare-fun e!57719 () List!1667)

(assert (=> b!104120 (= e!57719 (list!703 (xs!3108 (c!25035 (BalanceConc!1047 Empty!521)))))))

(declare-fun b!104121 () Bool)

(assert (=> b!104121 (= e!57719 (++!272 (list!700 (left!1271 (c!25035 (BalanceConc!1047 Empty!521)))) (list!700 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))))))))

(declare-fun b!104119 () Bool)

(assert (=> b!104119 (= e!57718 e!57719)))

(declare-fun c!25171 () Bool)

(assert (=> b!104119 (= c!25171 (is-Leaf!838 (c!25035 (BalanceConc!1047 Empty!521))))))

(declare-fun d!25027 () Bool)

(declare-fun c!25170 () Bool)

(assert (=> d!25027 (= c!25170 (is-Empty!521 (c!25035 (BalanceConc!1047 Empty!521))))))

(assert (=> d!25027 (= (list!700 (c!25035 (BalanceConc!1047 Empty!521))) e!57718)))

(assert (= (and d!25027 c!25170) b!104118))

(assert (= (and d!25027 (not c!25170)) b!104119))

(assert (= (and b!104119 c!25171) b!104120))

(assert (= (and b!104119 (not c!25171)) b!104121))

(declare-fun m!90606 () Bool)

(assert (=> b!104120 m!90606))

(declare-fun m!90610 () Bool)

(assert (=> b!104121 m!90610))

(declare-fun m!90614 () Bool)

(assert (=> b!104121 m!90614))

(assert (=> b!104121 m!90610))

(assert (=> b!104121 m!90614))

(declare-fun m!90622 () Bool)

(assert (=> b!104121 m!90622))

(assert (=> d!24879 d!25027))

(declare-fun d!25029 () Bool)

(assert (=> d!25029 (= (inv!2015 (tag!540 (h!7057 (t!21341 rules!1152)))) (= (mod (str.len (value!13207 (tag!540 (h!7057 (t!21341 rules!1152))))) 2) 0))))

(assert (=> b!103731 d!25029))

(declare-fun d!25031 () Bool)

(declare-fun res!50155 () Bool)

(declare-fun e!57720 () Bool)

(assert (=> d!25031 (=> (not res!50155) (not e!57720))))

(assert (=> d!25031 (= res!50155 (semiInverseModEq!95 (toChars!800 (transformation!362 (h!7057 (t!21341 rules!1152)))) (toValue!941 (transformation!362 (h!7057 (t!21341 rules!1152))))))))

(assert (=> d!25031 (= (inv!2018 (transformation!362 (h!7057 (t!21341 rules!1152)))) e!57720)))

(declare-fun b!104122 () Bool)

(assert (=> b!104122 (= e!57720 (equivClasses!90 (toChars!800 (transformation!362 (h!7057 (t!21341 rules!1152)))) (toValue!941 (transformation!362 (h!7057 (t!21341 rules!1152))))))))

(assert (= (and d!25031 res!50155) b!104122))

(declare-fun m!90634 () Bool)

(assert (=> d!25031 m!90634))

(declare-fun m!90636 () Bool)

(assert (=> b!104122 m!90636))

(assert (=> b!103731 d!25031))

(assert (=> b!103652 d!24999))

(assert (=> b!103652 d!24909))

(declare-fun d!25035 () Bool)

(declare-fun lt!28932 () Int)

(assert (=> d!25035 (= lt!28932 (size!1480 (list!694 (_2!1117 lt!28802))))))

(assert (=> d!25035 (= lt!28932 (size!1488 (c!25033 (_2!1117 lt!28802))))))

(assert (=> d!25035 (= (size!1479 (_2!1117 lt!28802)) lt!28932)))

(declare-fun bs!10091 () Bool)

(assert (= bs!10091 d!25035))

(assert (=> bs!10091 m!90140))

(assert (=> bs!10091 m!90140))

(declare-fun m!90640 () Bool)

(assert (=> bs!10091 m!90640))

(declare-fun m!90644 () Bool)

(assert (=> bs!10091 m!90644))

(assert (=> b!103653 d!25035))

(declare-fun d!25039 () Bool)

(declare-fun lt!28933 () Int)

(assert (=> d!25039 (= lt!28933 (size!1480 (list!694 input!576)))))

(assert (=> d!25039 (= lt!28933 (size!1488 (c!25033 input!576)))))

(assert (=> d!25039 (= (size!1479 input!576) lt!28933)))

(declare-fun bs!10092 () Bool)

(assert (= bs!10092 d!25039))

(assert (=> bs!10092 m!89982))

(assert (=> bs!10092 m!89982))

(assert (=> bs!10092 m!90554))

(declare-fun m!90646 () Bool)

(assert (=> bs!10092 m!90646))

(assert (=> b!103653 d!25039))

(declare-fun d!25041 () Bool)

(declare-fun e!57725 () Bool)

(assert (=> d!25041 e!57725))

(declare-fun res!50158 () Bool)

(assert (=> d!25041 (=> (not res!50158) (not e!57725))))

(declare-fun prepend!139 (Conc!521 Token!472) Conc!521)

(assert (=> d!25041 (= res!50158 (isBalanced!143 (prepend!139 (c!25035 (_1!1117 lt!28801)) (_1!1119 (v!12997 lt!28800)))))))

(declare-fun lt!28943 () BalanceConc!1046)

(assert (=> d!25041 (= lt!28943 (BalanceConc!1047 (prepend!139 (c!25035 (_1!1117 lt!28801)) (_1!1119 (v!12997 lt!28800)))))))

(assert (=> d!25041 (= (prepend!136 (_1!1117 lt!28801) (_1!1119 (v!12997 lt!28800))) lt!28943)))

(declare-fun b!104131 () Bool)

(assert (=> b!104131 (= e!57725 (= (list!695 lt!28943) (Cons!1661 (_1!1119 (v!12997 lt!28800)) (list!695 (_1!1117 lt!28801)))))))

(assert (= (and d!25041 res!50158) b!104131))

(declare-fun m!90656 () Bool)

(assert (=> d!25041 m!90656))

(assert (=> d!25041 m!90656))

(declare-fun m!90658 () Bool)

(assert (=> d!25041 m!90658))

(declare-fun m!90662 () Bool)

(assert (=> b!104131 m!90662))

(declare-fun m!90664 () Bool)

(assert (=> b!104131 m!90664))

(assert (=> b!103648 d!25041))

(declare-fun b!104136 () Bool)

(declare-fun e!57729 () tuple2!1820)

(declare-fun lt!28947 () tuple2!1820)

(declare-fun lt!28946 () Option!191)

(assert (=> b!104136 (= e!57729 (tuple2!1821 (prepend!136 (_1!1117 lt!28947) (_1!1119 (v!12997 lt!28946))) (_2!1117 lt!28947)))))

(assert (=> b!104136 (= lt!28947 (lexRec!55 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28946))))))

(declare-fun d!25051 () Bool)

(declare-fun e!57728 () Bool)

(assert (=> d!25051 e!57728))

(declare-fun res!50161 () Bool)

(assert (=> d!25051 (=> (not res!50161) (not e!57728))))

(declare-fun e!57731 () Bool)

(assert (=> d!25051 (= res!50161 e!57731)))

(declare-fun c!25178 () Bool)

(declare-fun lt!28948 () tuple2!1820)

(assert (=> d!25051 (= c!25178 (> (size!1477 (_1!1117 lt!28948)) 0))))

(assert (=> d!25051 (= lt!28948 e!57729)))

(declare-fun c!25177 () Bool)

(assert (=> d!25051 (= c!25177 (is-Some!190 lt!28946))))

(assert (=> d!25051 (= lt!28946 (maxPrefixZipperSequence!53 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28800))))))

(assert (=> d!25051 (= (lexRec!55 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28800))) lt!28948)))

(declare-fun b!104137 () Bool)

(declare-fun res!50160 () Bool)

(assert (=> b!104137 (=> (not res!50160) (not e!57728))))

(assert (=> b!104137 (= res!50160 (= (list!695 (_1!1117 lt!28948)) (_1!1120 (lexList!78 thiss!11428 rules!1152 (list!694 (_2!1119 (v!12997 lt!28800)))))))))

(declare-fun b!104138 () Bool)

(assert (=> b!104138 (= e!57729 (tuple2!1821 (BalanceConc!1047 Empty!521) (_2!1119 (v!12997 lt!28800))))))

(declare-fun b!104139 () Bool)

(assert (=> b!104139 (= e!57728 (= (list!694 (_2!1117 lt!28948)) (_2!1120 (lexList!78 thiss!11428 rules!1152 (list!694 (_2!1119 (v!12997 lt!28800)))))))))

(declare-fun b!104140 () Bool)

(assert (=> b!104140 (= e!57731 (= (list!694 (_2!1117 lt!28948)) (list!694 (_2!1119 (v!12997 lt!28800)))))))

(declare-fun b!104141 () Bool)

(declare-fun e!57730 () Bool)

(assert (=> b!104141 (= e!57731 e!57730)))

(declare-fun res!50159 () Bool)

(assert (=> b!104141 (= res!50159 (< (size!1479 (_2!1117 lt!28948)) (size!1479 (_2!1119 (v!12997 lt!28800)))))))

(assert (=> b!104141 (=> (not res!50159) (not e!57730))))

(declare-fun b!104142 () Bool)

(assert (=> b!104142 (= e!57730 (not (isEmpty!767 (_1!1117 lt!28948))))))

(assert (= (and d!25051 c!25177) b!104136))

(assert (= (and d!25051 (not c!25177)) b!104138))

(assert (= (and d!25051 c!25178) b!104141))

(assert (= (and d!25051 (not c!25178)) b!104140))

(assert (= (and b!104141 res!50159) b!104142))

(assert (= (and d!25051 res!50161) b!104137))

(assert (= (and b!104137 res!50160) b!104139))

(declare-fun m!90670 () Bool)

(assert (=> b!104142 m!90670))

(declare-fun m!90672 () Bool)

(assert (=> b!104139 m!90672))

(declare-fun m!90674 () Bool)

(assert (=> b!104139 m!90674))

(assert (=> b!104139 m!90674))

(declare-fun m!90676 () Bool)

(assert (=> b!104139 m!90676))

(declare-fun m!90678 () Bool)

(assert (=> b!104141 m!90678))

(declare-fun m!90680 () Bool)

(assert (=> b!104141 m!90680))

(declare-fun m!90682 () Bool)

(assert (=> d!25051 m!90682))

(declare-fun m!90684 () Bool)

(assert (=> d!25051 m!90684))

(declare-fun m!90686 () Bool)

(assert (=> b!104137 m!90686))

(assert (=> b!104137 m!90674))

(assert (=> b!104137 m!90674))

(assert (=> b!104137 m!90676))

(declare-fun m!90688 () Bool)

(assert (=> b!104136 m!90688))

(declare-fun m!90690 () Bool)

(assert (=> b!104136 m!90690))

(assert (=> b!104140 m!90672))

(assert (=> b!104140 m!90674))

(assert (=> b!103648 d!25051))

(declare-fun d!25057 () Bool)

(assert (=> d!25057 (= (list!695 (_1!1117 lt!28802)) (list!700 (c!25035 (_1!1117 lt!28802))))))

(declare-fun bs!10096 () Bool)

(assert (= bs!10096 d!25057))

(declare-fun m!90692 () Bool)

(assert (=> bs!10096 m!90692))

(assert (=> b!103649 d!25057))

(assert (=> b!103649 d!25001))

(assert (=> b!103649 d!24909))

(declare-fun d!25059 () Bool)

(assert (=> d!25059 (= (list!694 (_2!1117 lt!28787)) (list!698 (c!25033 (_2!1117 lt!28787))))))

(declare-fun bs!10097 () Bool)

(assert (= bs!10097 d!25059))

(declare-fun m!90694 () Bool)

(assert (=> bs!10097 m!90694))

(assert (=> b!103612 d!25059))

(assert (=> b!103612 d!24911))

(declare-fun d!25061 () Bool)

(declare-fun lt!28950 () Int)

(assert (=> d!25061 (= lt!28950 (size!1480 (list!694 (_2!1117 lt!28787))))))

(assert (=> d!25061 (= lt!28950 (size!1488 (c!25033 (_2!1117 lt!28787))))))

(assert (=> d!25061 (= (size!1479 (_2!1117 lt!28787)) lt!28950)))

(declare-fun bs!10098 () Bool)

(assert (= bs!10098 d!25061))

(assert (=> bs!10098 m!90086))

(assert (=> bs!10098 m!90086))

(declare-fun m!90696 () Bool)

(assert (=> bs!10098 m!90696))

(declare-fun m!90698 () Bool)

(assert (=> bs!10098 m!90698))

(assert (=> b!103613 d!25061))

(declare-fun d!25063 () Bool)

(declare-fun lt!28951 () Int)

(assert (=> d!25063 (= lt!28951 (size!1480 (list!694 (BalanceConc!1045 Empty!520))))))

(assert (=> d!25063 (= lt!28951 (size!1488 (c!25033 (BalanceConc!1045 Empty!520))))))

(assert (=> d!25063 (= (size!1479 (BalanceConc!1045 Empty!520)) lt!28951)))

(declare-fun bs!10099 () Bool)

(assert (= bs!10099 d!25063))

(assert (=> bs!10099 m!89984))

(assert (=> bs!10099 m!89984))

(declare-fun m!90704 () Bool)

(assert (=> bs!10099 m!90704))

(declare-fun m!90706 () Bool)

(assert (=> bs!10099 m!90706))

(assert (=> b!103613 d!25063))

(declare-fun e!57737 () Bool)

(declare-fun b!104156 () Bool)

(declare-fun lt!28952 () List!1665)

(assert (=> b!104156 (= e!57737 (or (not (= lt!28759 Nil!1659)) (= lt!28952 (t!21340 lt!28757))))))

(declare-fun b!104155 () Bool)

(declare-fun res!50162 () Bool)

(assert (=> b!104155 (=> (not res!50162) (not e!57737))))

(assert (=> b!104155 (= res!50162 (= (size!1480 lt!28952) (+ (size!1480 (t!21340 lt!28757)) (size!1480 lt!28759))))))

(declare-fun d!25067 () Bool)

(assert (=> d!25067 e!57737))

(declare-fun res!50163 () Bool)

(assert (=> d!25067 (=> (not res!50163) (not e!57737))))

(assert (=> d!25067 (= res!50163 (= (content!140 lt!28952) (set.union (content!140 (t!21340 lt!28757)) (content!140 lt!28759))))))

(declare-fun e!57738 () List!1665)

(assert (=> d!25067 (= lt!28952 e!57738)))

(declare-fun c!25184 () Bool)

(assert (=> d!25067 (= c!25184 (is-Nil!1659 (t!21340 lt!28757)))))

(assert (=> d!25067 (= (++!267 (t!21340 lt!28757) lt!28759) lt!28952)))

(declare-fun b!104153 () Bool)

(assert (=> b!104153 (= e!57738 lt!28759)))

(declare-fun b!104154 () Bool)

(assert (=> b!104154 (= e!57738 (Cons!1659 (h!7056 (t!21340 lt!28757)) (++!267 (t!21340 (t!21340 lt!28757)) lt!28759)))))

(assert (= (and d!25067 c!25184) b!104153))

(assert (= (and d!25067 (not c!25184)) b!104154))

(assert (= (and d!25067 res!50163) b!104155))

(assert (= (and b!104155 res!50162) b!104156))

(declare-fun m!90718 () Bool)

(assert (=> b!104155 m!90718))

(assert (=> b!104155 m!90584))

(assert (=> b!104155 m!90190))

(declare-fun m!90720 () Bool)

(assert (=> d!25067 m!90720))

(assert (=> d!25067 m!90464))

(assert (=> d!25067 m!90198))

(declare-fun m!90722 () Bool)

(assert (=> b!104154 m!90722))

(assert (=> b!103683 d!25067))

(declare-fun d!25075 () Bool)

(assert (=> d!25075 (= (list!695 (_1!1117 lt!28787)) (list!700 (c!25035 (_1!1117 lt!28787))))))

(declare-fun bs!10101 () Bool)

(assert (= bs!10101 d!25075))

(declare-fun m!90724 () Bool)

(assert (=> bs!10101 m!90724))

(assert (=> b!103609 d!25075))

(declare-fun b!104159 () Bool)

(declare-fun e!57740 () tuple2!1826)

(declare-fun lt!28953 () Option!193)

(declare-fun lt!28955 () tuple2!1826)

(assert (=> b!104159 (= e!57740 (tuple2!1827 (Cons!1661 (_1!1123 (v!13001 lt!28953)) (_1!1120 lt!28955)) (_2!1120 lt!28955)))))

(assert (=> b!104159 (= lt!28955 (lexList!78 thiss!11428 rules!1152 (_2!1123 (v!13001 lt!28953))))))

(declare-fun b!104160 () Bool)

(declare-fun e!57741 () Bool)

(declare-fun lt!28954 () tuple2!1826)

(assert (=> b!104160 (= e!57741 (= (_2!1120 lt!28954) (list!694 (BalanceConc!1045 Empty!520))))))

(declare-fun b!104161 () Bool)

(declare-fun e!57742 () Bool)

(assert (=> b!104161 (= e!57742 (not (isEmpty!771 (_1!1120 lt!28954))))))

(declare-fun d!25077 () Bool)

(assert (=> d!25077 e!57741))

(declare-fun c!25186 () Bool)

(assert (=> d!25077 (= c!25186 (> (size!1483 (_1!1120 lt!28954)) 0))))

(assert (=> d!25077 (= lt!28954 e!57740)))

(declare-fun c!25187 () Bool)

(assert (=> d!25077 (= c!25187 (is-Some!192 lt!28953))))

(assert (=> d!25077 (= lt!28953 (maxPrefix!90 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520))))))

(assert (=> d!25077 (= (lexList!78 thiss!11428 rules!1152 (list!694 (BalanceConc!1045 Empty!520))) lt!28954)))

(declare-fun b!104162 () Bool)

(assert (=> b!104162 (= e!57741 e!57742)))

(declare-fun res!50164 () Bool)

(assert (=> b!104162 (= res!50164 (< (size!1480 (_2!1120 lt!28954)) (size!1480 (list!694 (BalanceConc!1045 Empty!520)))))))

(assert (=> b!104162 (=> (not res!50164) (not e!57742))))

(declare-fun b!104163 () Bool)

(assert (=> b!104163 (= e!57740 (tuple2!1827 Nil!1661 (list!694 (BalanceConc!1045 Empty!520))))))

(assert (= (and d!25077 c!25187) b!104159))

(assert (= (and d!25077 (not c!25187)) b!104163))

(assert (= (and d!25077 c!25186) b!104162))

(assert (= (and d!25077 (not c!25186)) b!104160))

(assert (= (and b!104162 res!50164) b!104161))

(declare-fun m!90726 () Bool)

(assert (=> b!104159 m!90726))

(declare-fun m!90728 () Bool)

(assert (=> b!104161 m!90728))

(declare-fun m!90730 () Bool)

(assert (=> d!25077 m!90730))

(assert (=> d!25077 m!89984))

(assert (=> d!25077 m!90302))

(declare-fun m!90732 () Bool)

(assert (=> b!104162 m!90732))

(assert (=> b!104162 m!89984))

(assert (=> b!104162 m!90704))

(assert (=> b!103609 d!25077))

(assert (=> b!103609 d!24911))

(assert (=> b!103611 d!25059))

(assert (=> b!103611 d!25077))

(assert (=> b!103611 d!24911))

(assert (=> b!103523 d!24871))

(declare-fun d!25083 () Bool)

(assert (=> d!25083 true))

(declare-fun order!807 () Int)

(declare-fun lambda!1920 () Int)

(declare-fun order!809 () Int)

(declare-fun dynLambda!522 (Int Int) Int)

(declare-fun dynLambda!523 (Int Int) Int)

(assert (=> d!25083 (< (dynLambda!522 order!807 (toChars!800 (transformation!362 (h!7057 rules!1152)))) (dynLambda!523 order!809 lambda!1920))))

(assert (=> d!25083 true))

(assert (=> d!25083 (< (dynLambda!520 order!803 (toValue!941 (transformation!362 (h!7057 rules!1152)))) (dynLambda!523 order!809 lambda!1920))))

(declare-fun Forall!74 (Int) Bool)

(assert (=> d!25083 (= (semiInverseModEq!95 (toChars!800 (transformation!362 (h!7057 rules!1152))) (toValue!941 (transformation!362 (h!7057 rules!1152)))) (Forall!74 lambda!1920))))

(declare-fun bs!10102 () Bool)

(assert (= bs!10102 d!25083))

(declare-fun m!90734 () Bool)

(assert (=> bs!10102 m!90734))

(assert (=> d!24899 d!25083))

(declare-fun b!104170 () Bool)

(declare-fun e!57744 () List!1665)

(assert (=> b!104170 (= e!57744 (list!702 (xs!3107 (c!25033 (BalanceConc!1045 Empty!520)))))))

(declare-fun b!104169 () Bool)

(declare-fun e!57743 () List!1665)

(assert (=> b!104169 (= e!57743 e!57744)))

(declare-fun c!25189 () Bool)

(assert (=> b!104169 (= c!25189 (is-Leaf!837 (c!25033 (BalanceConc!1045 Empty!520))))))

(declare-fun b!104168 () Bool)

(assert (=> b!104168 (= e!57743 Nil!1659)))

(declare-fun b!104171 () Bool)

(assert (=> b!104171 (= e!57744 (++!267 (list!698 (left!1270 (c!25033 (BalanceConc!1045 Empty!520)))) (list!698 (right!1600 (c!25033 (BalanceConc!1045 Empty!520))))))))

(declare-fun d!25085 () Bool)

(declare-fun c!25188 () Bool)

(assert (=> d!25085 (= c!25188 (is-Empty!520 (c!25033 (BalanceConc!1045 Empty!520))))))

(assert (=> d!25085 (= (list!698 (c!25033 (BalanceConc!1045 Empty!520))) e!57743)))

(assert (= (and d!25085 c!25188) b!104168))

(assert (= (and d!25085 (not c!25188)) b!104169))

(assert (= (and b!104169 c!25189) b!104170))

(assert (= (and b!104169 (not c!25189)) b!104171))

(declare-fun m!90736 () Bool)

(assert (=> b!104170 m!90736))

(declare-fun m!90738 () Bool)

(assert (=> b!104171 m!90738))

(declare-fun m!90740 () Bool)

(assert (=> b!104171 m!90740))

(assert (=> b!104171 m!90738))

(assert (=> b!104171 m!90740))

(declare-fun m!90742 () Bool)

(assert (=> b!104171 m!90742))

(assert (=> d!24911 d!25085))

(declare-fun d!25087 () Bool)

(declare-fun e!57745 () Bool)

(assert (=> d!25087 e!57745))

(declare-fun res!50165 () Bool)

(assert (=> d!25087 (=> (not res!50165) (not e!57745))))

(assert (=> d!25087 (= res!50165 (isBalanced!143 (prepend!139 (c!25035 (_1!1117 lt!28786)) (_1!1119 (v!12997 lt!28785)))))))

(declare-fun lt!28956 () BalanceConc!1046)

(assert (=> d!25087 (= lt!28956 (BalanceConc!1047 (prepend!139 (c!25035 (_1!1117 lt!28786)) (_1!1119 (v!12997 lt!28785)))))))

(assert (=> d!25087 (= (prepend!136 (_1!1117 lt!28786) (_1!1119 (v!12997 lt!28785))) lt!28956)))

(declare-fun b!104172 () Bool)

(assert (=> b!104172 (= e!57745 (= (list!695 lt!28956) (Cons!1661 (_1!1119 (v!12997 lt!28785)) (list!695 (_1!1117 lt!28786)))))))

(assert (= (and d!25087 res!50165) b!104172))

(declare-fun m!90744 () Bool)

(assert (=> d!25087 m!90744))

(assert (=> d!25087 m!90744))

(declare-fun m!90746 () Bool)

(assert (=> d!25087 m!90746))

(declare-fun m!90748 () Bool)

(assert (=> b!104172 m!90748))

(declare-fun m!90750 () Bool)

(assert (=> b!104172 m!90750))

(assert (=> b!103608 d!25087))

(declare-fun b!104173 () Bool)

(declare-fun e!57747 () tuple2!1820)

(declare-fun lt!28958 () tuple2!1820)

(declare-fun lt!28957 () Option!191)

(assert (=> b!104173 (= e!57747 (tuple2!1821 (prepend!136 (_1!1117 lt!28958) (_1!1119 (v!12997 lt!28957))) (_2!1117 lt!28958)))))

(assert (=> b!104173 (= lt!28958 (lexRec!55 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28957))))))

(declare-fun d!25089 () Bool)

(declare-fun e!57746 () Bool)

(assert (=> d!25089 e!57746))

(declare-fun res!50168 () Bool)

(assert (=> d!25089 (=> (not res!50168) (not e!57746))))

(declare-fun e!57749 () Bool)

(assert (=> d!25089 (= res!50168 e!57749)))

(declare-fun c!25191 () Bool)

(declare-fun lt!28959 () tuple2!1820)

(assert (=> d!25089 (= c!25191 (> (size!1477 (_1!1117 lt!28959)) 0))))

(assert (=> d!25089 (= lt!28959 e!57747)))

(declare-fun c!25190 () Bool)

(assert (=> d!25089 (= c!25190 (is-Some!190 lt!28957))))

(assert (=> d!25089 (= lt!28957 (maxPrefixZipperSequence!53 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28785))))))

(assert (=> d!25089 (= (lexRec!55 thiss!11428 rules!1152 (_2!1119 (v!12997 lt!28785))) lt!28959)))

(declare-fun b!104174 () Bool)

(declare-fun res!50167 () Bool)

(assert (=> b!104174 (=> (not res!50167) (not e!57746))))

(assert (=> b!104174 (= res!50167 (= (list!695 (_1!1117 lt!28959)) (_1!1120 (lexList!78 thiss!11428 rules!1152 (list!694 (_2!1119 (v!12997 lt!28785)))))))))

(declare-fun b!104175 () Bool)

(assert (=> b!104175 (= e!57747 (tuple2!1821 (BalanceConc!1047 Empty!521) (_2!1119 (v!12997 lt!28785))))))

(declare-fun b!104176 () Bool)

(assert (=> b!104176 (= e!57746 (= (list!694 (_2!1117 lt!28959)) (_2!1120 (lexList!78 thiss!11428 rules!1152 (list!694 (_2!1119 (v!12997 lt!28785)))))))))

(declare-fun b!104177 () Bool)

(assert (=> b!104177 (= e!57749 (= (list!694 (_2!1117 lt!28959)) (list!694 (_2!1119 (v!12997 lt!28785)))))))

(declare-fun b!104178 () Bool)

(declare-fun e!57748 () Bool)

(assert (=> b!104178 (= e!57749 e!57748)))

(declare-fun res!50166 () Bool)

(assert (=> b!104178 (= res!50166 (< (size!1479 (_2!1117 lt!28959)) (size!1479 (_2!1119 (v!12997 lt!28785)))))))

(assert (=> b!104178 (=> (not res!50166) (not e!57748))))

(declare-fun b!104179 () Bool)

(assert (=> b!104179 (= e!57748 (not (isEmpty!767 (_1!1117 lt!28959))))))

(assert (= (and d!25089 c!25190) b!104173))

(assert (= (and d!25089 (not c!25190)) b!104175))

(assert (= (and d!25089 c!25191) b!104178))

(assert (= (and d!25089 (not c!25191)) b!104177))

(assert (= (and b!104178 res!50166) b!104179))

(assert (= (and d!25089 res!50168) b!104174))

(assert (= (and b!104174 res!50167) b!104176))

(declare-fun m!90752 () Bool)

(assert (=> b!104179 m!90752))

(declare-fun m!90754 () Bool)

(assert (=> b!104176 m!90754))

(declare-fun m!90756 () Bool)

(assert (=> b!104176 m!90756))

(assert (=> b!104176 m!90756))

(declare-fun m!90758 () Bool)

(assert (=> b!104176 m!90758))

(declare-fun m!90760 () Bool)

(assert (=> b!104178 m!90760))

(declare-fun m!90762 () Bool)

(assert (=> b!104178 m!90762))

(declare-fun m!90764 () Bool)

(assert (=> d!25089 m!90764))

(declare-fun m!90766 () Bool)

(assert (=> d!25089 m!90766))

(declare-fun m!90768 () Bool)

(assert (=> b!104174 m!90768))

(assert (=> b!104174 m!90756))

(assert (=> b!104174 m!90756))

(assert (=> b!104174 m!90758))

(declare-fun m!90770 () Bool)

(assert (=> b!104173 m!90770))

(declare-fun m!90772 () Bool)

(assert (=> b!104173 m!90772))

(assert (=> b!104177 m!90754))

(assert (=> b!104177 m!90756))

(assert (=> b!103608 d!25089))

(declare-fun b!104224 () Bool)

(declare-fun e!57783 () Bool)

(declare-fun e!57787 () Bool)

(assert (=> b!104224 (= e!57783 e!57787)))

(declare-fun res!50196 () Bool)

(assert (=> b!104224 (=> (not res!50196) (not e!57787))))

(declare-fun appendAssoc!6 (List!1667 List!1667 List!1667) Bool)

(assert (=> b!104224 (= res!50196 (appendAssoc!6 (list!700 (left!1271 (c!25035 (BalanceConc!1047 Empty!521)))) (list!700 (right!1601 (c!25035 (BalanceConc!1047 Empty!521)))) (list!700 (c!25035 (_1!1117 lt!28760)))))))

(declare-fun b!104225 () Bool)

(declare-fun e!57782 () Bool)

(declare-fun e!57786 () Bool)

(assert (=> b!104225 (= e!57782 e!57786)))

(declare-fun res!50193 () Bool)

(assert (=> b!104225 (=> res!50193 e!57786)))

(assert (=> b!104225 (= res!50193 (not (is-Node!521 (left!1271 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!104226 () Bool)

(declare-fun e!57784 () Bool)

(declare-fun e!57788 () Bool)

(assert (=> b!104226 (= e!57784 e!57788)))

(declare-fun res!50190 () Bool)

(assert (=> b!104226 (=> (not res!50190) (not e!57788))))

(assert (=> b!104226 (= res!50190 (appendAssoc!6 (list!700 (left!1271 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))))) (list!700 (right!1601 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))))) (list!700 (c!25035 (_1!1117 lt!28760)))))))

(declare-fun b!104227 () Bool)

(declare-fun e!57785 () Bool)

(declare-fun e!57789 () Bool)

(assert (=> b!104227 (= e!57785 e!57789)))

(declare-fun res!50197 () Bool)

(assert (=> b!104227 (=> res!50197 e!57789)))

(assert (=> b!104227 (= res!50197 (not (is-Node!521 (c!25035 (_1!1117 lt!28760)))))))

(declare-fun d!25091 () Bool)

(assert (=> d!25091 e!57785))

(declare-fun res!50189 () Bool)

(assert (=> d!25091 (=> (not res!50189) (not e!57785))))

(assert (=> d!25091 (= res!50189 e!57783)))

(declare-fun res!50194 () Bool)

(assert (=> d!25091 (=> res!50194 e!57783)))

(assert (=> d!25091 (= res!50194 (not (is-Node!521 (c!25035 (BalanceConc!1047 Empty!521)))))))

(assert (=> d!25091 (= (appendAssocInst!8 (c!25035 (BalanceConc!1047 Empty!521)) (c!25035 (_1!1117 lt!28760))) true)))

(declare-fun b!104228 () Bool)

(declare-fun e!57790 () Bool)

(assert (=> b!104228 (= e!57790 (appendAssoc!6 (++!272 (list!700 (c!25035 (BalanceConc!1047 Empty!521))) (list!700 (left!1271 (left!1271 (c!25035 (_1!1117 lt!28760)))))) (list!700 (right!1601 (left!1271 (c!25035 (_1!1117 lt!28760))))) (list!700 (right!1601 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!104229 () Bool)

(assert (=> b!104229 (= e!57788 (appendAssoc!6 (list!700 (left!1271 (c!25035 (BalanceConc!1047 Empty!521)))) (list!700 (left!1271 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))))) (++!272 (list!700 (right!1601 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))))) (list!700 (c!25035 (_1!1117 lt!28760))))))))

(declare-fun b!104230 () Bool)

(assert (=> b!104230 (= e!57787 e!57784)))

(declare-fun res!50195 () Bool)

(assert (=> b!104230 (=> res!50195 e!57784)))

(assert (=> b!104230 (= res!50195 (not (is-Node!521 (right!1601 (c!25035 (BalanceConc!1047 Empty!521))))))))

(declare-fun b!104231 () Bool)

(assert (=> b!104231 (= e!57786 e!57790)))

(declare-fun res!50192 () Bool)

(assert (=> b!104231 (=> (not res!50192) (not e!57790))))

(assert (=> b!104231 (= res!50192 (appendAssoc!6 (list!700 (c!25035 (BalanceConc!1047 Empty!521))) (list!700 (left!1271 (left!1271 (c!25035 (_1!1117 lt!28760))))) (list!700 (right!1601 (left!1271 (c!25035 (_1!1117 lt!28760)))))))))

(declare-fun b!104232 () Bool)

(assert (=> b!104232 (= e!57789 e!57782)))

(declare-fun res!50191 () Bool)

(assert (=> b!104232 (=> (not res!50191) (not e!57782))))

(assert (=> b!104232 (= res!50191 (appendAssoc!6 (list!700 (c!25035 (BalanceConc!1047 Empty!521))) (list!700 (left!1271 (c!25035 (_1!1117 lt!28760)))) (list!700 (right!1601 (c!25035 (_1!1117 lt!28760))))))))

(assert (= (and d!25091 (not res!50194)) b!104224))

(assert (= (and b!104224 res!50196) b!104230))

(assert (= (and b!104230 (not res!50195)) b!104226))

(assert (= (and b!104226 res!50190) b!104229))

(assert (= (and d!25091 res!50189) b!104227))

(assert (= (and b!104227 (not res!50197)) b!104232))

(assert (= (and b!104232 res!50191) b!104225))

(assert (= (and b!104225 (not res!50193)) b!104231))

(assert (= (and b!104231 res!50192) b!104228))

(declare-fun m!90774 () Bool)

(assert (=> b!104226 m!90774))

(declare-fun m!90776 () Bool)

(assert (=> b!104226 m!90776))

(assert (=> b!104226 m!90104))

(assert (=> b!104226 m!90774))

(assert (=> b!104226 m!90776))

(assert (=> b!104226 m!90104))

(declare-fun m!90778 () Bool)

(assert (=> b!104226 m!90778))

(assert (=> b!104232 m!90064))

(assert (=> b!104232 m!90598))

(assert (=> b!104232 m!90600))

(assert (=> b!104232 m!90064))

(assert (=> b!104232 m!90598))

(assert (=> b!104232 m!90600))

(declare-fun m!90780 () Bool)

(assert (=> b!104232 m!90780))

(assert (=> b!104231 m!90064))

(declare-fun m!90782 () Bool)

(assert (=> b!104231 m!90782))

(declare-fun m!90784 () Bool)

(assert (=> b!104231 m!90784))

(assert (=> b!104231 m!90064))

(assert (=> b!104231 m!90782))

(assert (=> b!104231 m!90784))

(declare-fun m!90786 () Bool)

(assert (=> b!104231 m!90786))

(assert (=> b!104224 m!90610))

(assert (=> b!104224 m!90614))

(assert (=> b!104224 m!90104))

(assert (=> b!104224 m!90610))

(assert (=> b!104224 m!90614))

(assert (=> b!104224 m!90104))

(declare-fun m!90788 () Bool)

(assert (=> b!104224 m!90788))

(assert (=> b!104228 m!90064))

(assert (=> b!104228 m!90782))

(declare-fun m!90790 () Bool)

(assert (=> b!104228 m!90790))

(assert (=> b!104228 m!90064))

(assert (=> b!104228 m!90784))

(assert (=> b!104228 m!90790))

(assert (=> b!104228 m!90784))

(assert (=> b!104228 m!90600))

(declare-fun m!90792 () Bool)

(assert (=> b!104228 m!90792))

(assert (=> b!104228 m!90782))

(assert (=> b!104228 m!90600))

(assert (=> b!104229 m!90610))

(assert (=> b!104229 m!90776))

(assert (=> b!104229 m!90104))

(declare-fun m!90794 () Bool)

(assert (=> b!104229 m!90794))

(assert (=> b!104229 m!90776))

(assert (=> b!104229 m!90104))

(assert (=> b!104229 m!90610))

(assert (=> b!104229 m!90774))

(assert (=> b!104229 m!90794))

(declare-fun m!90796 () Bool)

(assert (=> b!104229 m!90796))

(assert (=> b!104229 m!90774))

(assert (=> d!24889 d!25091))

(assert (=> d!24889 d!24921))

(declare-fun b!104241 () Bool)

(declare-fun e!57795 () List!1667)

(assert (=> b!104241 (= e!57795 Nil!1661)))

(declare-fun b!104243 () Bool)

(declare-fun e!57796 () List!1667)

(assert (=> b!104243 (= e!57796 (list!703 (xs!3108 (c!25035 (_1!1117 lt!28758)))))))

(declare-fun b!104244 () Bool)

(assert (=> b!104244 (= e!57796 (++!272 (list!700 (left!1271 (c!25035 (_1!1117 lt!28758)))) (list!700 (right!1601 (c!25035 (_1!1117 lt!28758))))))))

(declare-fun b!104242 () Bool)

(assert (=> b!104242 (= e!57795 e!57796)))

(declare-fun c!25209 () Bool)

(assert (=> b!104242 (= c!25209 (is-Leaf!838 (c!25035 (_1!1117 lt!28758))))))

(declare-fun d!25093 () Bool)

(declare-fun c!25208 () Bool)

(assert (=> d!25093 (= c!25208 (is-Empty!521 (c!25035 (_1!1117 lt!28758))))))

(assert (=> d!25093 (= (list!700 (c!25035 (_1!1117 lt!28758))) e!57795)))

(assert (= (and d!25093 c!25208) b!104241))

(assert (= (and d!25093 (not c!25208)) b!104242))

(assert (= (and b!104242 c!25209) b!104243))

(assert (= (and b!104242 (not c!25209)) b!104244))

(declare-fun m!90798 () Bool)

(assert (=> b!104243 m!90798))

(declare-fun m!90800 () Bool)

(assert (=> b!104244 m!90800))

(declare-fun m!90802 () Bool)

(assert (=> b!104244 m!90802))

(assert (=> b!104244 m!90800))

(assert (=> b!104244 m!90802))

(declare-fun m!90804 () Bool)

(assert (=> b!104244 m!90804))

(assert (=> d!24877 d!25093))

(declare-fun b!104247 () Bool)

(declare-fun e!57797 () Bool)

(declare-fun tp!57996 () Bool)

(assert (=> b!104247 (= e!57797 tp!57996)))

(declare-fun b!104246 () Bool)

(declare-fun tp!57993 () Bool)

(declare-fun tp!57997 () Bool)

(assert (=> b!104246 (= e!57797 (and tp!57993 tp!57997))))

(declare-fun b!104245 () Bool)

(assert (=> b!104245 (= e!57797 tp_is_empty!781)))

(assert (=> b!103747 (= tp!57979 e!57797)))

(declare-fun b!104248 () Bool)

(declare-fun tp!57995 () Bool)

(declare-fun tp!57994 () Bool)

(assert (=> b!104248 (= e!57797 (and tp!57995 tp!57994))))

(assert (= (and b!103747 (is-ElementMatch!430 (regOne!1372 (regex!362 (h!7057 rules!1152))))) b!104245))

(assert (= (and b!103747 (is-Concat!783 (regOne!1372 (regex!362 (h!7057 rules!1152))))) b!104246))

(assert (= (and b!103747 (is-Star!430 (regOne!1372 (regex!362 (h!7057 rules!1152))))) b!104247))

(assert (= (and b!103747 (is-Union!430 (regOne!1372 (regex!362 (h!7057 rules!1152))))) b!104248))

(declare-fun b!104251 () Bool)

(declare-fun e!57798 () Bool)

(declare-fun tp!58001 () Bool)

(assert (=> b!104251 (= e!57798 tp!58001)))

(declare-fun b!104250 () Bool)

(declare-fun tp!57998 () Bool)

(declare-fun tp!58002 () Bool)

(assert (=> b!104250 (= e!57798 (and tp!57998 tp!58002))))

(declare-fun b!104249 () Bool)

(assert (=> b!104249 (= e!57798 tp_is_empty!781)))

(assert (=> b!103747 (= tp!57983 e!57798)))

(declare-fun b!104252 () Bool)

(declare-fun tp!58000 () Bool)

(declare-fun tp!57999 () Bool)

(assert (=> b!104252 (= e!57798 (and tp!58000 tp!57999))))

(assert (= (and b!103747 (is-ElementMatch!430 (regTwo!1372 (regex!362 (h!7057 rules!1152))))) b!104249))

(assert (= (and b!103747 (is-Concat!783 (regTwo!1372 (regex!362 (h!7057 rules!1152))))) b!104250))

(assert (= (and b!103747 (is-Star!430 (regTwo!1372 (regex!362 (h!7057 rules!1152))))) b!104251))

(assert (= (and b!103747 (is-Union!430 (regTwo!1372 (regex!362 (h!7057 rules!1152))))) b!104252))

(declare-fun b!104253 () Bool)

(declare-fun e!57800 () Bool)

(declare-fun tp!58005 () Bool)

(declare-fun tp!58004 () Bool)

(assert (=> b!104253 (= e!57800 (and (inv!2019 (left!1270 (left!1270 (c!25033 input!576)))) tp!58004 (inv!2019 (right!1600 (left!1270 (c!25033 input!576)))) tp!58005))))

(declare-fun b!104255 () Bool)

(declare-fun e!57799 () Bool)

(declare-fun tp!58003 () Bool)

(assert (=> b!104255 (= e!57799 tp!58003)))

(declare-fun b!104254 () Bool)

(assert (=> b!104254 (= e!57800 (and (inv!2026 (xs!3107 (left!1270 (c!25033 input!576)))) e!57799))))

(assert (=> b!103707 (= tp!57938 (and (inv!2019 (left!1270 (c!25033 input!576))) e!57800))))

(assert (= (and b!103707 (is-Node!520 (left!1270 (c!25033 input!576)))) b!104253))

(assert (= b!104254 b!104255))

(assert (= (and b!103707 (is-Leaf!837 (left!1270 (c!25033 input!576)))) b!104254))

(declare-fun m!90806 () Bool)

(assert (=> b!104253 m!90806))

(declare-fun m!90808 () Bool)

(assert (=> b!104253 m!90808))

(declare-fun m!90810 () Bool)

(assert (=> b!104254 m!90810))

(assert (=> b!103707 m!90222))

(declare-fun e!57802 () Bool)

(declare-fun tp!58008 () Bool)

(declare-fun b!104256 () Bool)

(declare-fun tp!58007 () Bool)

(assert (=> b!104256 (= e!57802 (and (inv!2019 (left!1270 (right!1600 (c!25033 input!576)))) tp!58007 (inv!2019 (right!1600 (right!1600 (c!25033 input!576)))) tp!58008))))

(declare-fun b!104258 () Bool)

(declare-fun e!57801 () Bool)

(declare-fun tp!58006 () Bool)

(assert (=> b!104258 (= e!57801 tp!58006)))

(declare-fun b!104257 () Bool)

(assert (=> b!104257 (= e!57802 (and (inv!2026 (xs!3107 (right!1600 (c!25033 input!576)))) e!57801))))

(assert (=> b!103707 (= tp!57939 (and (inv!2019 (right!1600 (c!25033 input!576))) e!57802))))

(assert (= (and b!103707 (is-Node!520 (right!1600 (c!25033 input!576)))) b!104256))

(assert (= b!104257 b!104258))

(assert (= (and b!103707 (is-Leaf!837 (right!1600 (c!25033 input!576)))) b!104257))

(declare-fun m!90812 () Bool)

(assert (=> b!104256 m!90812))

(declare-fun m!90814 () Bool)

(assert (=> b!104256 m!90814))

(declare-fun m!90816 () Bool)

(assert (=> b!104257 m!90816))

(assert (=> b!103707 m!90224))

(declare-fun b!104263 () Bool)

(declare-fun e!57805 () Bool)

(declare-fun tp!58011 () Bool)

(assert (=> b!104263 (= e!57805 (and tp_is_empty!781 tp!58011))))

(assert (=> b!103709 (= tp!57937 e!57805)))

(assert (= (and b!103709 (is-Cons!1659 (innerList!578 (xs!3107 (c!25033 input!576))))) b!104263))

(declare-fun b!104266 () Bool)

(declare-fun e!57806 () Bool)

(declare-fun tp!58015 () Bool)

(assert (=> b!104266 (= e!57806 tp!58015)))

(declare-fun b!104265 () Bool)

(declare-fun tp!58012 () Bool)

(declare-fun tp!58016 () Bool)

(assert (=> b!104265 (= e!57806 (and tp!58012 tp!58016))))

(declare-fun b!104264 () Bool)

(assert (=> b!104264 (= e!57806 tp_is_empty!781)))

(assert (=> b!103748 (= tp!57982 e!57806)))

(declare-fun b!104267 () Bool)

(declare-fun tp!58014 () Bool)

(declare-fun tp!58013 () Bool)

(assert (=> b!104267 (= e!57806 (and tp!58014 tp!58013))))

(assert (= (and b!103748 (is-ElementMatch!430 (reg!759 (regex!362 (h!7057 rules!1152))))) b!104264))

(assert (= (and b!103748 (is-Concat!783 (reg!759 (regex!362 (h!7057 rules!1152))))) b!104265))

(assert (= (and b!103748 (is-Star!430 (reg!759 (regex!362 (h!7057 rules!1152))))) b!104266))

(assert (= (and b!103748 (is-Union!430 (reg!759 (regex!362 (h!7057 rules!1152))))) b!104267))

(declare-fun b!104270 () Bool)

(declare-fun b_free!3117 () Bool)

(declare-fun b_next!3117 () Bool)

(assert (=> b!104270 (= b_free!3117 (not b_next!3117))))

(declare-fun tp!58017 () Bool)

(declare-fun b_and!4635 () Bool)

(assert (=> b!104270 (= tp!58017 b_and!4635)))

(declare-fun b_free!3119 () Bool)

(declare-fun b_next!3119 () Bool)

(assert (=> b!104270 (= b_free!3119 (not b_next!3119))))

(declare-fun tp!58019 () Bool)

(declare-fun b_and!4637 () Bool)

(assert (=> b!104270 (= tp!58019 b_and!4637)))

(declare-fun e!57807 () Bool)

(assert (=> b!104270 (= e!57807 (and tp!58017 tp!58019))))

(declare-fun b!104269 () Bool)

(declare-fun tp!58018 () Bool)

(declare-fun e!57810 () Bool)

(assert (=> b!104269 (= e!57810 (and tp!58018 (inv!2015 (tag!540 (h!7057 (t!21341 (t!21341 rules!1152))))) (inv!2018 (transformation!362 (h!7057 (t!21341 (t!21341 rules!1152))))) e!57807))))

(declare-fun b!104268 () Bool)

(declare-fun e!57809 () Bool)

(declare-fun tp!58020 () Bool)

(assert (=> b!104268 (= e!57809 (and e!57810 tp!58020))))

(assert (=> b!103730 (= tp!57964 e!57809)))

(assert (= b!104269 b!104270))

(assert (= b!104268 b!104269))

(assert (= (and b!103730 (is-Cons!1660 (t!21341 (t!21341 rules!1152)))) b!104268))

(declare-fun m!90818 () Bool)

(assert (=> b!104269 m!90818))

(declare-fun m!90820 () Bool)

(assert (=> b!104269 m!90820))

(declare-fun b!104273 () Bool)

(declare-fun e!57811 () Bool)

(declare-fun tp!58024 () Bool)

(assert (=> b!104273 (= e!57811 tp!58024)))

(declare-fun b!104272 () Bool)

(declare-fun tp!58021 () Bool)

(declare-fun tp!58025 () Bool)

(assert (=> b!104272 (= e!57811 (and tp!58021 tp!58025))))

(declare-fun b!104271 () Bool)

(assert (=> b!104271 (= e!57811 tp_is_empty!781)))

(assert (=> b!103749 (= tp!57981 e!57811)))

(declare-fun b!104274 () Bool)

(declare-fun tp!58023 () Bool)

(declare-fun tp!58022 () Bool)

(assert (=> b!104274 (= e!57811 (and tp!58023 tp!58022))))

(assert (= (and b!103749 (is-ElementMatch!430 (regOne!1373 (regex!362 (h!7057 rules!1152))))) b!104271))

(assert (= (and b!103749 (is-Concat!783 (regOne!1373 (regex!362 (h!7057 rules!1152))))) b!104272))

(assert (= (and b!103749 (is-Star!430 (regOne!1373 (regex!362 (h!7057 rules!1152))))) b!104273))

(assert (= (and b!103749 (is-Union!430 (regOne!1373 (regex!362 (h!7057 rules!1152))))) b!104274))

(declare-fun b!104277 () Bool)

(declare-fun e!57812 () Bool)

(declare-fun tp!58029 () Bool)

(assert (=> b!104277 (= e!57812 tp!58029)))

(declare-fun b!104276 () Bool)

(declare-fun tp!58026 () Bool)

(declare-fun tp!58030 () Bool)

(assert (=> b!104276 (= e!57812 (and tp!58026 tp!58030))))

(declare-fun b!104275 () Bool)

(assert (=> b!104275 (= e!57812 tp_is_empty!781)))

(assert (=> b!103749 (= tp!57980 e!57812)))

(declare-fun b!104278 () Bool)

(declare-fun tp!58028 () Bool)

(declare-fun tp!58027 () Bool)

(assert (=> b!104278 (= e!57812 (and tp!58028 tp!58027))))

(assert (= (and b!103749 (is-ElementMatch!430 (regTwo!1373 (regex!362 (h!7057 rules!1152))))) b!104275))

(assert (= (and b!103749 (is-Concat!783 (regTwo!1373 (regex!362 (h!7057 rules!1152))))) b!104276))

(assert (= (and b!103749 (is-Star!430 (regTwo!1373 (regex!362 (h!7057 rules!1152))))) b!104277))

(assert (= (and b!103749 (is-Union!430 (regTwo!1373 (regex!362 (h!7057 rules!1152))))) b!104278))

(declare-fun b!104281 () Bool)

(declare-fun e!57813 () Bool)

(declare-fun tp!58034 () Bool)

(assert (=> b!104281 (= e!57813 tp!58034)))

(declare-fun b!104280 () Bool)

(declare-fun tp!58031 () Bool)

(declare-fun tp!58035 () Bool)

(assert (=> b!104280 (= e!57813 (and tp!58031 tp!58035))))

(declare-fun b!104279 () Bool)

(assert (=> b!104279 (= e!57813 tp_is_empty!781)))

(assert (=> b!103731 (= tp!57962 e!57813)))

(declare-fun b!104282 () Bool)

(declare-fun tp!58033 () Bool)

(declare-fun tp!58032 () Bool)

(assert (=> b!104282 (= e!57813 (and tp!58033 tp!58032))))

(assert (= (and b!103731 (is-ElementMatch!430 (regex!362 (h!7057 (t!21341 rules!1152))))) b!104279))

(assert (= (and b!103731 (is-Concat!783 (regex!362 (h!7057 (t!21341 rules!1152))))) b!104280))

(assert (= (and b!103731 (is-Star!430 (regex!362 (h!7057 (t!21341 rules!1152))))) b!104281))

(assert (= (and b!103731 (is-Union!430 (regex!362 (h!7057 (t!21341 rules!1152))))) b!104282))

(push 1)

(assert (not b!104120))

(assert b_and!4619)

(assert (not b!103943))

(assert (not b_next!3119))

(assert (not d!25067))

(assert (not b!104280))

(assert (not b!104122))

(assert (not b!104265))

(assert (not b!104282))

(assert (not b!103932))

(assert (not d!25083))

(assert (not b!104172))

(assert (not b_next!3111))

(assert (not b!103873))

(assert b_and!4621)

(assert (not d!24991))

(assert (not b!104251))

(assert (not d!24969))

(assert (not b!103959))

(assert (not b!104174))

(assert (not b!104179))

(assert (not d!25051))

(assert (not b!104226))

(assert (not b!104015))

(assert (not b_next!3101))

(assert (not b!104232))

(assert (not b!103874))

(assert (not b!104142))

(assert (not b!103821))

(assert (not b!104106))

(assert (not b!104139))

(assert (not b!104255))

(assert (not b!104173))

(assert (not b_next!3117))

(assert (not b!104140))

(assert (not d!25077))

(assert (not bm!4482))

(assert (not d!25063))

(assert (not b!104252))

(assert (not b!104014))

(assert (not b!103974))

(assert (not b!103990))

(assert (not b!104177))

(assert (not b!104057))

(assert (not b!104281))

(assert (not b!104247))

(assert (not b!103960))

(assert (not b!103924))

(assert (not b!103989))

(assert (not b!104224))

(assert (not b!104253))

(assert (not b!104109))

(assert (not b!103871))

(assert (not b!104258))

(assert (not b!104137))

(assert (not b!104246))

(assert (not b!104060))

(assert (not b!104013))

(assert (not b!103979))

(assert (not d!25061))

(assert (not b!104278))

(assert (not b!104016))

(assert (not b!103868))

(assert (not b!104273))

(assert (not bm!4471))

(assert (not b!103816))

(assert (not d!25089))

(assert (not b!104276))

(assert (not b!104229))

(assert (not b!103976))

(assert (not b!103984))

(assert (not d!25011))

(assert (not b!103926))

(assert (not d!25001))

(assert (not b!104121))

(assert (not d!24963))

(assert (not b!104231))

(assert (not b!104101))

(assert (not b!104161))

(assert (not b!104059))

(assert (not bm!4472))

(assert (not b!104136))

(assert (not bm!4470))

(assert (not b!103870))

(assert (not d!24921))

(assert (not b!103834))

(assert (not b!104228))

(assert (not b!103820))

(assert (not b!103957))

(assert (not d!24995))

(assert (not d!24935))

(assert (not b!104103))

(assert (not bm!4489))

(assert (not d!25039))

(assert (not d!24977))

(assert (not b!103835))

(assert (not b!104243))

(assert (not b!104170))

(assert (not d!24933))

(assert tp_is_empty!781)

(assert (not b!103869))

(assert (not b!103813))

(assert (not d!25059))

(assert b_and!4627)

(assert (not b!103982))

(assert (not b!103919))

(assert (not b!103967))

(assert (not b!103929))

(assert (not d!24989))

(assert (not b!104017))

(assert (not b!104154))

(assert (not d!24939))

(assert (not b!104268))

(assert (not b!104131))

(assert (not b!103978))

(assert (not d!25035))

(assert (not d!24965))

(assert (not b!104162))

(assert (not b!103805))

(assert (not b!104267))

(assert (not b!103962))

(assert (not b!104272))

(assert (not b!103981))

(assert (not b!103931))

(assert (not d!25009))

(assert (not bm!4488))

(assert (not b!104178))

(assert (not d!25087))

(assert (not b!103961))

(assert (not b!104274))

(assert b_and!4635)

(assert (not d!24999))

(assert (not bm!4483))

(assert (not b!103867))

(assert (not b!104155))

(assert (not b!104141))

(assert (not b!104110))

(assert (not b!103925))

(assert (not b!104248))

(assert (not b!104263))

(assert (not bm!4475))

(assert b_and!4629)

(assert (not b!104266))

(assert (not b!104244))

(assert (not b!103927))

(assert (not b!104159))

(assert (not b!103944))

(assert (not b!104256))

(assert (not b!103958))

(assert (not b_next!3103))

(assert (not d!25075))

(assert (not b!104176))

(assert (not b!103707))

(assert (not d!25031))

(assert (not b!104269))

(assert (not b!104250))

(assert (not d!24971))

(assert (not b!104012))

(assert (not d!25041))

(assert (not b!103923))

(assert (not b!104171))

(assert (not d!25057))

(assert (not b!104254))

(assert (not b!103928))

(assert (not b!103918))

(assert b_and!4637)

(assert (not b!104257))

(assert (not b!104277))

(assert (not b!103817))

(assert (not bm!4478))

(assert (not b_next!3109))

(assert (not b!103998))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!3101))

(assert (not b_next!3117))

(assert b_and!4627)

(assert b_and!4635)

(assert b_and!4629)

(assert (not b_next!3103))

(assert b_and!4637)

(assert (not b_next!3109))

(assert b_and!4619)

(assert (not b_next!3119))

(assert (not b_next!3111))

(assert b_and!4621)

(check-sat)

(pop 1)

