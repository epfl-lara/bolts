; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!396504 () Bool)

(assert start!396504)

(declare-fun b!4161070 () Bool)

(declare-fun b_free!119787 () Bool)

(declare-fun b_next!120491 () Bool)

(assert (=> b!4161070 (= b_free!119787 (not b_next!120491))))

(declare-fun tp!1269927 () Bool)

(declare-fun b_and!324149 () Bool)

(assert (=> b!4161070 (= tp!1269927 b_and!324149)))

(declare-fun b_free!119789 () Bool)

(declare-fun b_next!120493 () Bool)

(assert (=> b!4161070 (= b_free!119789 (not b_next!120493))))

(declare-fun tp!1269932 () Bool)

(declare-fun b_and!324151 () Bool)

(assert (=> b!4161070 (= tp!1269932 b_and!324151)))

(declare-fun b!4161068 () Bool)

(declare-fun b_free!119791 () Bool)

(declare-fun b_next!120495 () Bool)

(assert (=> b!4161068 (= b_free!119791 (not b_next!120495))))

(declare-fun tp!1269930 () Bool)

(declare-fun b_and!324153 () Bool)

(assert (=> b!4161068 (= tp!1269930 b_and!324153)))

(declare-fun b_free!119793 () Bool)

(declare-fun b_next!120497 () Bool)

(assert (=> b!4161068 (= b_free!119793 (not b_next!120497))))

(declare-fun tp!1269926 () Bool)

(declare-fun b_and!324155 () Bool)

(assert (=> b!4161068 (= tp!1269926 b_and!324155)))

(declare-fun b!4161057 () Bool)

(declare-fun res!1704521 () Bool)

(declare-fun e!2582827 () Bool)

(assert (=> b!4161057 (=> (not res!1704521) (not e!2582827))))

(declare-datatypes ((List!45598 0))(
  ( (Nil!45474) (Cons!45474 (h!50894 (_ BitVec 16)) (t!343629 List!45598)) )
))
(declare-datatypes ((TokenValue!7741 0))(
  ( (FloatLiteralValue!15482 (text!54632 List!45598)) (TokenValueExt!7740 (__x!27701 Int)) (Broken!38705 (value!234602 List!45598)) (Object!7864) (End!7741) (Def!7741) (Underscore!7741) (Match!7741) (Else!7741) (Error!7741) (Case!7741) (If!7741) (Extends!7741) (Abstract!7741) (Class!7741) (Val!7741) (DelimiterValue!15482 (del!7801 List!45598)) (KeywordValue!7747 (value!234603 List!45598)) (CommentValue!15482 (value!234604 List!45598)) (WhitespaceValue!15482 (value!234605 List!45598)) (IndentationValue!7741 (value!234606 List!45598)) (String!52568) (Int32!7741) (Broken!38706 (value!234607 List!45598)) (Boolean!7742) (Unit!64587) (OperatorValue!7744 (op!7801 List!45598)) (IdentifierValue!15482 (value!234608 List!45598)) (IdentifierValue!15483 (value!234609 List!45598)) (WhitespaceValue!15483 (value!234610 List!45598)) (True!15482) (False!15482) (Broken!38707 (value!234611 List!45598)) (Broken!38708 (value!234612 List!45598)) (True!15483) (RightBrace!7741) (RightBracket!7741) (Colon!7741) (Null!7741) (Comma!7741) (LeftBracket!7741) (False!15483) (LeftBrace!7741) (ImaginaryLiteralValue!7741 (text!54633 List!45598)) (StringLiteralValue!23223 (value!234613 List!45598)) (EOFValue!7741 (value!234614 List!45598)) (IdentValue!7741 (value!234615 List!45598)) (DelimiterValue!15483 (value!234616 List!45598)) (DedentValue!7741 (value!234617 List!45598)) (NewLineValue!7741 (value!234618 List!45598)) (IntegerValue!23223 (value!234619 (_ BitVec 32)) (text!54634 List!45598)) (IntegerValue!23224 (value!234620 Int) (text!54635 List!45598)) (Times!7741) (Or!7741) (Equal!7741) (Minus!7741) (Broken!38709 (value!234621 List!45598)) (And!7741) (Div!7741) (LessEqual!7741) (Mod!7741) (Concat!20157) (Not!7741) (Plus!7741) (SpaceValue!7741 (value!234622 List!45598)) (IntegerValue!23225 (value!234623 Int) (text!54636 List!45598)) (StringLiteralValue!23224 (text!54637 List!45598)) (FloatLiteralValue!15483 (text!54638 List!45598)) (BytesLiteralValue!7741 (value!234624 List!45598)) (CommentValue!15483 (value!234625 List!45598)) (StringLiteralValue!23225 (value!234626 List!45598)) (ErrorTokenValue!7741 (msg!7802 List!45598)) )
))
(declare-datatypes ((C!25018 0))(
  ( (C!25019 (val!14671 Int)) )
))
(declare-datatypes ((Regex!12416 0))(
  ( (ElementMatch!12416 (c!711918 C!25018)) (Concat!20158 (regOne!25344 Regex!12416) (regTwo!25344 Regex!12416)) (EmptyExpr!12416) (Star!12416 (reg!12745 Regex!12416)) (EmptyLang!12416) (Union!12416 (regOne!25345 Regex!12416) (regTwo!25345 Regex!12416)) )
))
(declare-datatypes ((String!52569 0))(
  ( (String!52570 (value!234627 String)) )
))
(declare-datatypes ((List!45599 0))(
  ( (Nil!45475) (Cons!45475 (h!50895 C!25018) (t!343630 List!45599)) )
))
(declare-datatypes ((IArray!27449 0))(
  ( (IArray!27450 (innerList!13782 List!45599)) )
))
(declare-datatypes ((Conc!13722 0))(
  ( (Node!13722 (left!33927 Conc!13722) (right!34257 Conc!13722) (csize!27674 Int) (cheight!13933 Int)) (Leaf!21220 (xs!17028 IArray!27449) (csize!27675 Int)) (Empty!13722) )
))
(declare-datatypes ((BalanceConc!27038 0))(
  ( (BalanceConc!27039 (c!711919 Conc!13722)) )
))
(declare-datatypes ((TokenValueInjection!14910 0))(
  ( (TokenValueInjection!14911 (toValue!10175 Int) (toChars!10034 Int)) )
))
(declare-datatypes ((Rule!14822 0))(
  ( (Rule!14823 (regex!7511 Regex!12416) (tag!8375 String!52569) (isSeparator!7511 Bool) (transformation!7511 TokenValueInjection!14910)) )
))
(declare-datatypes ((List!45600 0))(
  ( (Nil!45476) (Cons!45476 (h!50896 Rule!14822) (t!343631 List!45600)) )
))
(declare-fun rules!4132 () List!45600)

(declare-fun r!4395 () Rule!14822)

(declare-fun contains!9300 (List!45600 Rule!14822) Bool)

(assert (=> b!4161057 (= res!1704521 (contains!9300 (t!343631 rules!4132) r!4395))))

(declare-fun b!4161058 () Bool)

(declare-fun e!2582823 () Bool)

(declare-fun e!2582824 () Bool)

(declare-fun tp!1269928 () Bool)

(assert (=> b!4161058 (= e!2582823 (and e!2582824 tp!1269928))))

(declare-fun b!4161059 () Bool)

(declare-fun e!2582831 () Bool)

(declare-datatypes ((List!45601 0))(
  ( (Nil!45477) (Cons!45477 (h!50897 String!52569) (t!343632 List!45601)) )
))
(declare-fun acc!617 () List!45601)

(declare-fun tp!1269931 () Bool)

(declare-fun inv!60004 (String!52569) Bool)

(assert (=> b!4161059 (= e!2582831 (and (inv!60004 (h!50897 acc!617)) tp!1269931))))

(declare-fun b!4161060 () Bool)

(declare-fun res!1704514 () Bool)

(assert (=> b!4161060 (=> (not res!1704514) (not e!2582827))))

(declare-fun lt!1482883 () List!45601)

(declare-datatypes ((LexerInterface!7102 0))(
  ( (LexerInterfaceExt!7099 (__x!27702 Int)) (Lexer!7100) )
))
(declare-fun thiss!27036 () LexerInterface!7102)

(declare-fun noDuplicateTag!3088 (LexerInterface!7102 List!45600 List!45601) Bool)

(assert (=> b!4161060 (= res!1704514 (noDuplicateTag!3088 thiss!27036 (t!343631 rules!4132) lt!1482883))))

(declare-fun b!4161061 () Bool)

(declare-fun res!1704520 () Bool)

(declare-fun e!2582830 () Bool)

(assert (=> b!4161061 (=> (not res!1704520) (not e!2582830))))

(assert (=> b!4161061 (= res!1704520 (noDuplicateTag!3088 thiss!27036 rules!4132 acc!617))))

(declare-fun b!4161062 () Bool)

(assert (=> b!4161062 (= e!2582830 e!2582827)))

(declare-fun res!1704516 () Bool)

(assert (=> b!4161062 (=> (not res!1704516) (not e!2582827))))

(declare-fun tag!272 () String!52569)

(declare-fun contains!9301 (List!45601 String!52569) Bool)

(assert (=> b!4161062 (= res!1704516 (contains!9301 lt!1482883 tag!272))))

(assert (=> b!4161062 (= lt!1482883 (Cons!45477 (tag!8375 (h!50896 rules!4132)) acc!617))))

(declare-fun b!4161063 () Bool)

(declare-fun ListPrimitiveSize!294 (List!45600) Int)

(assert (=> b!4161063 (= e!2582827 (>= (ListPrimitiveSize!294 (t!343631 rules!4132)) (ListPrimitiveSize!294 rules!4132)))))

(declare-fun b!4161064 () Bool)

(declare-fun res!1704519 () Bool)

(assert (=> b!4161064 (=> (not res!1704519) (not e!2582830))))

(assert (=> b!4161064 (= res!1704519 (contains!9301 acc!617 tag!272))))

(declare-fun res!1704515 () Bool)

(assert (=> start!396504 (=> (not res!1704515) (not e!2582830))))

(assert (=> start!396504 (= res!1704515 (is-Lexer!7100 thiss!27036))))

(assert (=> start!396504 e!2582830))

(declare-fun e!2582834 () Bool)

(assert (=> start!396504 e!2582834))

(assert (=> start!396504 e!2582831))

(assert (=> start!396504 true))

(assert (=> start!396504 e!2582823))

(assert (=> start!396504 (inv!60004 tag!272)))

(declare-fun b!4161065 () Bool)

(declare-fun res!1704517 () Bool)

(assert (=> b!4161065 (=> (not res!1704517) (not e!2582830))))

(assert (=> b!4161065 (= res!1704517 (and (not (is-Nil!45476 rules!4132)) (not (= (h!50896 rules!4132) r!4395))))))

(declare-fun e!2582832 () Bool)

(declare-fun tp!1269929 () Bool)

(declare-fun b!4161066 () Bool)

(declare-fun inv!60007 (TokenValueInjection!14910) Bool)

(assert (=> b!4161066 (= e!2582834 (and tp!1269929 (inv!60004 (tag!8375 r!4395)) (inv!60007 (transformation!7511 r!4395)) e!2582832))))

(declare-fun tp!1269925 () Bool)

(declare-fun e!2582829 () Bool)

(declare-fun b!4161067 () Bool)

(assert (=> b!4161067 (= e!2582824 (and tp!1269925 (inv!60004 (tag!8375 (h!50896 rules!4132))) (inv!60007 (transformation!7511 (h!50896 rules!4132))) e!2582829))))

(assert (=> b!4161068 (= e!2582829 (and tp!1269930 tp!1269926))))

(declare-fun b!4161069 () Bool)

(declare-fun res!1704518 () Bool)

(assert (=> b!4161069 (=> (not res!1704518) (not e!2582830))))

(assert (=> b!4161069 (= res!1704518 (contains!9300 rules!4132 r!4395))))

(assert (=> b!4161070 (= e!2582832 (and tp!1269927 tp!1269932))))

(assert (= (and start!396504 res!1704515) b!4161064))

(assert (= (and b!4161064 res!1704519) b!4161061))

(assert (= (and b!4161061 res!1704520) b!4161069))

(assert (= (and b!4161069 res!1704518) b!4161065))

(assert (= (and b!4161065 res!1704517) b!4161062))

(assert (= (and b!4161062 res!1704516) b!4161060))

(assert (= (and b!4161060 res!1704514) b!4161057))

(assert (= (and b!4161057 res!1704521) b!4161063))

(assert (= b!4161066 b!4161070))

(assert (= start!396504 b!4161066))

(assert (= (and start!396504 (is-Cons!45477 acc!617)) b!4161059))

(assert (= b!4161067 b!4161068))

(assert (= b!4161058 b!4161067))

(assert (= (and start!396504 (is-Cons!45476 rules!4132)) b!4161058))

(declare-fun m!4754139 () Bool)

(assert (=> b!4161060 m!4754139))

(declare-fun m!4754141 () Bool)

(assert (=> b!4161064 m!4754141))

(declare-fun m!4754143 () Bool)

(assert (=> b!4161067 m!4754143))

(declare-fun m!4754145 () Bool)

(assert (=> b!4161067 m!4754145))

(declare-fun m!4754147 () Bool)

(assert (=> b!4161066 m!4754147))

(declare-fun m!4754149 () Bool)

(assert (=> b!4161066 m!4754149))

(declare-fun m!4754151 () Bool)

(assert (=> b!4161061 m!4754151))

(declare-fun m!4754153 () Bool)

(assert (=> b!4161062 m!4754153))

(declare-fun m!4754155 () Bool)

(assert (=> b!4161063 m!4754155))

(declare-fun m!4754157 () Bool)

(assert (=> b!4161063 m!4754157))

(declare-fun m!4754159 () Bool)

(assert (=> b!4161059 m!4754159))

(declare-fun m!4754161 () Bool)

(assert (=> b!4161069 m!4754161))

(declare-fun m!4754163 () Bool)

(assert (=> b!4161057 m!4754163))

(declare-fun m!4754165 () Bool)

(assert (=> start!396504 m!4754165))

(push 1)

(assert b_and!324151)

(assert (not b_next!120491))

(assert b_and!324149)

(assert (not b!4161069))

(assert (not b!4161058))

(assert (not b!4161060))

(assert b_and!324153)

(assert (not b_next!120497))

(assert (not b!4161067))

(assert (not b!4161063))

(assert b_and!324155)

(assert (not b!4161057))

(assert (not b!4161062))

(assert (not start!396504))

(assert (not b!4161061))

(assert (not b_next!120495))

(assert (not b!4161066))

(assert (not b!4161059))

(assert (not b!4161064))

(assert (not b_next!120493))

(check-sat)

(pop 1)

(push 1)

(assert b_and!324151)

(assert (not b_next!120491))

(assert b_and!324149)

(assert (not b_next!120495))

(assert b_and!324153)

(assert (not b_next!120497))

(assert (not b_next!120493))

(assert b_and!324155)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1230186 () Bool)

(declare-fun lt!1482889 () Bool)

(declare-fun content!7073 (List!45601) (Set String!52569))

(assert (=> d!1230186 (= lt!1482889 (set.member tag!272 (content!7073 acc!617)))))

(declare-fun e!2582875 () Bool)

(assert (=> d!1230186 (= lt!1482889 e!2582875)))

(declare-fun res!1704558 () Bool)

(assert (=> d!1230186 (=> (not res!1704558) (not e!2582875))))

(assert (=> d!1230186 (= res!1704558 (is-Cons!45477 acc!617))))

(assert (=> d!1230186 (= (contains!9301 acc!617 tag!272) lt!1482889)))

(declare-fun b!4161117 () Bool)

(declare-fun e!2582876 () Bool)

(assert (=> b!4161117 (= e!2582875 e!2582876)))

(declare-fun res!1704557 () Bool)

(assert (=> b!4161117 (=> res!1704557 e!2582876)))

(assert (=> b!4161117 (= res!1704557 (= (h!50897 acc!617) tag!272))))

(declare-fun b!4161118 () Bool)

(assert (=> b!4161118 (= e!2582876 (contains!9301 (t!343632 acc!617) tag!272))))

(assert (= (and d!1230186 res!1704558) b!4161117))

(assert (= (and b!4161117 (not res!1704557)) b!4161118))

(declare-fun m!4754195 () Bool)

(assert (=> d!1230186 m!4754195))

(declare-fun m!4754197 () Bool)

(assert (=> d!1230186 m!4754197))

(declare-fun m!4754199 () Bool)

(assert (=> b!4161118 m!4754199))

(assert (=> b!4161064 d!1230186))

(declare-fun d!1230188 () Bool)

(assert (=> d!1230188 (= (inv!60004 tag!272) (= (mod (str.len (value!234627 tag!272)) 2) 0))))

(assert (=> start!396504 d!1230188))

(declare-fun d!1230190 () Bool)

(declare-fun lt!1482892 () Bool)

(declare-fun content!7074 (List!45600) (Set Rule!14822))

(assert (=> d!1230190 (= lt!1482892 (set.member r!4395 (content!7074 rules!4132)))))

(declare-fun e!2582881 () Bool)

(assert (=> d!1230190 (= lt!1482892 e!2582881)))

(declare-fun res!1704563 () Bool)

(assert (=> d!1230190 (=> (not res!1704563) (not e!2582881))))

(assert (=> d!1230190 (= res!1704563 (is-Cons!45476 rules!4132))))

(assert (=> d!1230190 (= (contains!9300 rules!4132 r!4395) lt!1482892)))

(declare-fun b!4161123 () Bool)

(declare-fun e!2582882 () Bool)

(assert (=> b!4161123 (= e!2582881 e!2582882)))

(declare-fun res!1704564 () Bool)

(assert (=> b!4161123 (=> res!1704564 e!2582882)))

(assert (=> b!4161123 (= res!1704564 (= (h!50896 rules!4132) r!4395))))

(declare-fun b!4161124 () Bool)

(assert (=> b!4161124 (= e!2582882 (contains!9300 (t!343631 rules!4132) r!4395))))

(assert (= (and d!1230190 res!1704563) b!4161123))

(assert (= (and b!4161123 (not res!1704564)) b!4161124))

(declare-fun m!4754201 () Bool)

(assert (=> d!1230190 m!4754201))

(declare-fun m!4754203 () Bool)

(assert (=> d!1230190 m!4754203))

(assert (=> b!4161124 m!4754163))

(assert (=> b!4161069 d!1230190))

(declare-fun d!1230192 () Bool)

(declare-fun lt!1482895 () Int)

(assert (=> d!1230192 (>= lt!1482895 0)))

(declare-fun e!2582885 () Int)

(assert (=> d!1230192 (= lt!1482895 e!2582885)))

(declare-fun c!711924 () Bool)

(assert (=> d!1230192 (= c!711924 (is-Nil!45476 (t!343631 rules!4132)))))

(assert (=> d!1230192 (= (ListPrimitiveSize!294 (t!343631 rules!4132)) lt!1482895)))

(declare-fun b!4161129 () Bool)

(assert (=> b!4161129 (= e!2582885 0)))

(declare-fun b!4161130 () Bool)

(assert (=> b!4161130 (= e!2582885 (+ 1 (ListPrimitiveSize!294 (t!343631 (t!343631 rules!4132)))))))

(assert (= (and d!1230192 c!711924) b!4161129))

(assert (= (and d!1230192 (not c!711924)) b!4161130))

(declare-fun m!4754205 () Bool)

(assert (=> b!4161130 m!4754205))

(assert (=> b!4161063 d!1230192))

(declare-fun d!1230194 () Bool)

(declare-fun lt!1482896 () Int)

(assert (=> d!1230194 (>= lt!1482896 0)))

(declare-fun e!2582886 () Int)

(assert (=> d!1230194 (= lt!1482896 e!2582886)))

(declare-fun c!711925 () Bool)

(assert (=> d!1230194 (= c!711925 (is-Nil!45476 rules!4132))))

(assert (=> d!1230194 (= (ListPrimitiveSize!294 rules!4132) lt!1482896)))

(declare-fun b!4161131 () Bool)

(assert (=> b!4161131 (= e!2582886 0)))

(declare-fun b!4161132 () Bool)

(assert (=> b!4161132 (= e!2582886 (+ 1 (ListPrimitiveSize!294 (t!343631 rules!4132))))))

(assert (= (and d!1230194 c!711925) b!4161131))

(assert (= (and d!1230194 (not c!711925)) b!4161132))

(assert (=> b!4161132 m!4754155))

(assert (=> b!4161063 d!1230194))

(declare-fun d!1230196 () Bool)

(declare-fun lt!1482897 () Bool)

(assert (=> d!1230196 (= lt!1482897 (set.member r!4395 (content!7074 (t!343631 rules!4132))))))

(declare-fun e!2582887 () Bool)

(assert (=> d!1230196 (= lt!1482897 e!2582887)))

(declare-fun res!1704565 () Bool)

(assert (=> d!1230196 (=> (not res!1704565) (not e!2582887))))

(assert (=> d!1230196 (= res!1704565 (is-Cons!45476 (t!343631 rules!4132)))))

(assert (=> d!1230196 (= (contains!9300 (t!343631 rules!4132) r!4395) lt!1482897)))

(declare-fun b!4161133 () Bool)

(declare-fun e!2582888 () Bool)

(assert (=> b!4161133 (= e!2582887 e!2582888)))

(declare-fun res!1704566 () Bool)

(assert (=> b!4161133 (=> res!1704566 e!2582888)))

(assert (=> b!4161133 (= res!1704566 (= (h!50896 (t!343631 rules!4132)) r!4395))))

(declare-fun b!4161134 () Bool)

(assert (=> b!4161134 (= e!2582888 (contains!9300 (t!343631 (t!343631 rules!4132)) r!4395))))

(assert (= (and d!1230196 res!1704565) b!4161133))

(assert (= (and b!4161133 (not res!1704566)) b!4161134))

(declare-fun m!4754207 () Bool)

(assert (=> d!1230196 m!4754207))

(declare-fun m!4754209 () Bool)

(assert (=> d!1230196 m!4754209))

(declare-fun m!4754211 () Bool)

(assert (=> b!4161134 m!4754211))

(assert (=> b!4161057 d!1230196))

(declare-fun d!1230200 () Bool)

(declare-fun lt!1482898 () Bool)

(assert (=> d!1230200 (= lt!1482898 (set.member tag!272 (content!7073 lt!1482883)))))

(declare-fun e!2582889 () Bool)

(assert (=> d!1230200 (= lt!1482898 e!2582889)))

(declare-fun res!1704568 () Bool)

(assert (=> d!1230200 (=> (not res!1704568) (not e!2582889))))

(assert (=> d!1230200 (= res!1704568 (is-Cons!45477 lt!1482883))))

(assert (=> d!1230200 (= (contains!9301 lt!1482883 tag!272) lt!1482898)))

(declare-fun b!4161135 () Bool)

(declare-fun e!2582890 () Bool)

(assert (=> b!4161135 (= e!2582889 e!2582890)))

(declare-fun res!1704567 () Bool)

(assert (=> b!4161135 (=> res!1704567 e!2582890)))

(assert (=> b!4161135 (= res!1704567 (= (h!50897 lt!1482883) tag!272))))

(declare-fun b!4161136 () Bool)

(assert (=> b!4161136 (= e!2582890 (contains!9301 (t!343632 lt!1482883) tag!272))))

(assert (= (and d!1230200 res!1704568) b!4161135))

(assert (= (and b!4161135 (not res!1704567)) b!4161136))

(declare-fun m!4754213 () Bool)

(assert (=> d!1230200 m!4754213))

(declare-fun m!4754215 () Bool)

(assert (=> d!1230200 m!4754215))

(declare-fun m!4754217 () Bool)

(assert (=> b!4161136 m!4754217))

(assert (=> b!4161062 d!1230200))

(declare-fun d!1230202 () Bool)

(assert (=> d!1230202 (= (inv!60004 (tag!8375 (h!50896 rules!4132))) (= (mod (str.len (value!234627 (tag!8375 (h!50896 rules!4132)))) 2) 0))))

(assert (=> b!4161067 d!1230202))

(declare-fun d!1230204 () Bool)

(declare-fun res!1704571 () Bool)

(declare-fun e!2582893 () Bool)

(assert (=> d!1230204 (=> (not res!1704571) (not e!2582893))))

(declare-fun semiInverseModEq!3263 (Int Int) Bool)

(assert (=> d!1230204 (= res!1704571 (semiInverseModEq!3263 (toChars!10034 (transformation!7511 (h!50896 rules!4132))) (toValue!10175 (transformation!7511 (h!50896 rules!4132)))))))

(assert (=> d!1230204 (= (inv!60007 (transformation!7511 (h!50896 rules!4132))) e!2582893)))

(declare-fun b!4161139 () Bool)

(declare-fun equivClasses!3162 (Int Int) Bool)

(assert (=> b!4161139 (= e!2582893 (equivClasses!3162 (toChars!10034 (transformation!7511 (h!50896 rules!4132))) (toValue!10175 (transformation!7511 (h!50896 rules!4132)))))))

(assert (= (and d!1230204 res!1704571) b!4161139))

(declare-fun m!4754219 () Bool)

(assert (=> d!1230204 m!4754219))

(declare-fun m!4754221 () Bool)

(assert (=> b!4161139 m!4754221))

(assert (=> b!4161067 d!1230204))

(declare-fun d!1230206 () Bool)

(declare-fun res!1704580 () Bool)

(declare-fun e!2582902 () Bool)

(assert (=> d!1230206 (=> res!1704580 e!2582902)))

(assert (=> d!1230206 (= res!1704580 (is-Nil!45476 rules!4132))))

(assert (=> d!1230206 (= (noDuplicateTag!3088 thiss!27036 rules!4132 acc!617) e!2582902)))

(declare-fun b!4161148 () Bool)

(declare-fun e!2582903 () Bool)

(assert (=> b!4161148 (= e!2582902 e!2582903)))

(declare-fun res!1704581 () Bool)

(assert (=> b!4161148 (=> (not res!1704581) (not e!2582903))))

(assert (=> b!4161148 (= res!1704581 (not (contains!9301 acc!617 (tag!8375 (h!50896 rules!4132)))))))

(declare-fun b!4161149 () Bool)

(assert (=> b!4161149 (= e!2582903 (noDuplicateTag!3088 thiss!27036 (t!343631 rules!4132) (Cons!45477 (tag!8375 (h!50896 rules!4132)) acc!617)))))

(assert (= (and d!1230206 (not res!1704580)) b!4161148))

(assert (= (and b!4161148 res!1704581) b!4161149))

(declare-fun m!4754223 () Bool)

(assert (=> b!4161148 m!4754223))

(declare-fun m!4754225 () Bool)

(assert (=> b!4161149 m!4754225))

(assert (=> b!4161061 d!1230206))

(declare-fun d!1230208 () Bool)

(assert (=> d!1230208 (= (inv!60004 (tag!8375 r!4395)) (= (mod (str.len (value!234627 (tag!8375 r!4395))) 2) 0))))

(assert (=> b!4161066 d!1230208))

(declare-fun d!1230210 () Bool)

(declare-fun res!1704582 () Bool)

(declare-fun e!2582904 () Bool)

(assert (=> d!1230210 (=> (not res!1704582) (not e!2582904))))

(assert (=> d!1230210 (= res!1704582 (semiInverseModEq!3263 (toChars!10034 (transformation!7511 r!4395)) (toValue!10175 (transformation!7511 r!4395))))))

(assert (=> d!1230210 (= (inv!60007 (transformation!7511 r!4395)) e!2582904)))

(declare-fun b!4161150 () Bool)

(assert (=> b!4161150 (= e!2582904 (equivClasses!3162 (toChars!10034 (transformation!7511 r!4395)) (toValue!10175 (transformation!7511 r!4395))))))

(assert (= (and d!1230210 res!1704582) b!4161150))

(declare-fun m!4754227 () Bool)

(assert (=> d!1230210 m!4754227))

(declare-fun m!4754229 () Bool)

(assert (=> b!4161150 m!4754229))

(assert (=> b!4161066 d!1230210))

(declare-fun d!1230212 () Bool)

(declare-fun res!1704583 () Bool)

(declare-fun e!2582905 () Bool)

(assert (=> d!1230212 (=> res!1704583 e!2582905)))

(assert (=> d!1230212 (= res!1704583 (is-Nil!45476 (t!343631 rules!4132)))))

(assert (=> d!1230212 (= (noDuplicateTag!3088 thiss!27036 (t!343631 rules!4132) lt!1482883) e!2582905)))

(declare-fun b!4161151 () Bool)

(declare-fun e!2582906 () Bool)

(assert (=> b!4161151 (= e!2582905 e!2582906)))

(declare-fun res!1704584 () Bool)

(assert (=> b!4161151 (=> (not res!1704584) (not e!2582906))))

(assert (=> b!4161151 (= res!1704584 (not (contains!9301 lt!1482883 (tag!8375 (h!50896 (t!343631 rules!4132))))))))

(declare-fun b!4161152 () Bool)

(assert (=> b!4161152 (= e!2582906 (noDuplicateTag!3088 thiss!27036 (t!343631 (t!343631 rules!4132)) (Cons!45477 (tag!8375 (h!50896 (t!343631 rules!4132))) lt!1482883)))))

(assert (= (and d!1230212 (not res!1704583)) b!4161151))

(assert (= (and b!4161151 res!1704584) b!4161152))

(declare-fun m!4754231 () Bool)

(assert (=> b!4161151 m!4754231))

(declare-fun m!4754233 () Bool)

(assert (=> b!4161152 m!4754233))

(assert (=> b!4161060 d!1230212))

(declare-fun d!1230214 () Bool)

(assert (=> d!1230214 (= (inv!60004 (h!50897 acc!617)) (= (mod (str.len (value!234627 (h!50897 acc!617))) 2) 0))))

(assert (=> b!4161059 d!1230214))

(declare-fun b!4161165 () Bool)

(declare-fun b_free!119803 () Bool)

(declare-fun b_next!120507 () Bool)

(assert (=> b!4161165 (= b_free!119803 (not b_next!120507))))

(declare-fun tp!1269967 () Bool)

(declare-fun b_and!324165 () Bool)

(assert (=> b!4161165 (= tp!1269967 b_and!324165)))

(declare-fun b_free!119805 () Bool)

(declare-fun b_next!120509 () Bool)

(assert (=> b!4161165 (= b_free!119805 (not b_next!120509))))

(declare-fun tp!1269968 () Bool)

(declare-fun b_and!324167 () Bool)

(assert (=> b!4161165 (= tp!1269968 b_and!324167)))

(declare-fun e!2582918 () Bool)

(assert (=> b!4161165 (= e!2582918 (and tp!1269967 tp!1269968))))

(declare-fun b!4161164 () Bool)

(declare-fun tp!1269966 () Bool)

(declare-fun e!2582920 () Bool)

(assert (=> b!4161164 (= e!2582920 (and tp!1269966 (inv!60004 (tag!8375 (h!50896 (t!343631 rules!4132)))) (inv!60007 (transformation!7511 (h!50896 (t!343631 rules!4132)))) e!2582918))))

(declare-fun b!4161163 () Bool)

(declare-fun e!2582917 () Bool)

(declare-fun tp!1269965 () Bool)

(assert (=> b!4161163 (= e!2582917 (and e!2582920 tp!1269965))))

(assert (=> b!4161058 (= tp!1269928 e!2582917)))

(assert (= b!4161164 b!4161165))

(assert (= b!4161163 b!4161164))

(assert (= (and b!4161058 (is-Cons!45476 (t!343631 rules!4132))) b!4161163))

(declare-fun m!4754241 () Bool)

(assert (=> b!4161164 m!4754241))

(declare-fun m!4754243 () Bool)

(assert (=> b!4161164 m!4754243))

(declare-fun b!4161177 () Bool)

(declare-fun e!2582923 () Bool)

(declare-fun tp!1269980 () Bool)

(declare-fun tp!1269981 () Bool)

(assert (=> b!4161177 (= e!2582923 (and tp!1269980 tp!1269981))))

(declare-fun b!4161176 () Bool)

(declare-fun tp_is_empty!21799 () Bool)

(assert (=> b!4161176 (= e!2582923 tp_is_empty!21799)))

(assert (=> b!4161067 (= tp!1269925 e!2582923)))

(declare-fun b!4161179 () Bool)

(declare-fun tp!1269983 () Bool)

(declare-fun tp!1269979 () Bool)

(assert (=> b!4161179 (= e!2582923 (and tp!1269983 tp!1269979))))

(declare-fun b!4161178 () Bool)

(declare-fun tp!1269982 () Bool)

(assert (=> b!4161178 (= e!2582923 tp!1269982)))

(assert (= (and b!4161067 (is-ElementMatch!12416 (regex!7511 (h!50896 rules!4132)))) b!4161176))

(assert (= (and b!4161067 (is-Concat!20158 (regex!7511 (h!50896 rules!4132)))) b!4161177))

(assert (= (and b!4161067 (is-Star!12416 (regex!7511 (h!50896 rules!4132)))) b!4161178))

(assert (= (and b!4161067 (is-Union!12416 (regex!7511 (h!50896 rules!4132)))) b!4161179))

(declare-fun b!4161181 () Bool)

(declare-fun e!2582924 () Bool)

(declare-fun tp!1269985 () Bool)

(declare-fun tp!1269986 () Bool)

(assert (=> b!4161181 (= e!2582924 (and tp!1269985 tp!1269986))))

(declare-fun b!4161180 () Bool)

(assert (=> b!4161180 (= e!2582924 tp_is_empty!21799)))

(assert (=> b!4161066 (= tp!1269929 e!2582924)))

(declare-fun b!4161183 () Bool)

(declare-fun tp!1269988 () Bool)

(declare-fun tp!1269984 () Bool)

(assert (=> b!4161183 (= e!2582924 (and tp!1269988 tp!1269984))))

(declare-fun b!4161182 () Bool)

(declare-fun tp!1269987 () Bool)

(assert (=> b!4161182 (= e!2582924 tp!1269987)))

(assert (= (and b!4161066 (is-ElementMatch!12416 (regex!7511 r!4395))) b!4161180))

(assert (= (and b!4161066 (is-Concat!20158 (regex!7511 r!4395))) b!4161181))

(assert (= (and b!4161066 (is-Star!12416 (regex!7511 r!4395))) b!4161182))

(assert (= (and b!4161066 (is-Union!12416 (regex!7511 r!4395))) b!4161183))

(declare-fun b!4161190 () Bool)

(declare-fun e!2582931 () Bool)

(declare-fun tp!1269991 () Bool)

(assert (=> b!4161190 (= e!2582931 (and (inv!60004 (h!50897 (t!343632 acc!617))) tp!1269991))))

(assert (=> b!4161059 (= tp!1269931 e!2582931)))

(assert (= (and b!4161059 (is-Cons!45477 (t!343632 acc!617))) b!4161190))

(declare-fun m!4754245 () Bool)

(assert (=> b!4161190 m!4754245))

(push 1)

(assert (not d!1230196))

(assert (not b!4161152))

(assert (not b!4161181))

(assert (not b!4161150))

(assert tp_is_empty!21799)

(assert (not b!4161177))

(assert (not b!4161118))

(assert b_and!324153)

(assert (not b!4161183))

(assert (not b_next!120497))

(assert (not b!4161148))

(assert (not b!4161124))

(assert (not b!4161139))

(assert b_and!324151)

(assert (not b_next!120491))

(assert b_and!324167)

(assert (not b!4161149))

(assert b_and!324149)

(assert (not b!4161182))

(assert (not d!1230200))

(assert (not d!1230204))

(assert (not b!4161163))

(assert (not b_next!120507))

(assert (not b_next!120495))

(assert (not b!4161178))

(assert (not d!1230210))

(assert (not b!4161151))

(assert (not d!1230186))

(assert (not b!4161164))

(assert (not b!4161190))

(assert (not d!1230190))

(assert (not b_next!120493))

(assert (not b!4161136))

(assert b_and!324155)

(assert (not b!4161130))

(assert (not b!4161134))

(assert b_and!324165)

(assert (not b!4161179))

(assert (not b!4161132))

(assert (not b_next!120509))

(check-sat)

(pop 1)

(push 1)

(assert b_and!324151)

(assert b_and!324149)

(assert b_and!324153)

(assert (not b_next!120497))

(assert (not b_next!120493))

(assert b_and!324155)

(assert b_and!324165)

(assert (not b_next!120509))

(assert (not b_next!120491))

(assert b_and!324167)

(assert (not b_next!120507))

(assert (not b_next!120495))

(check-sat)

(pop 1)

