; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!10338 () Bool)

(assert start!10338)

(declare-fun b!104704 () Bool)

(declare-fun b_free!3153 () Bool)

(declare-fun b_next!3153 () Bool)

(assert (=> b!104704 (= b_free!3153 (not b_next!3153))))

(declare-fun tp!58195 () Bool)

(declare-fun b_and!4671 () Bool)

(assert (=> b!104704 (= tp!58195 b_and!4671)))

(declare-fun b_free!3155 () Bool)

(declare-fun b_next!3155 () Bool)

(assert (=> b!104704 (= b_free!3155 (not b_next!3155))))

(declare-fun tp!58196 () Bool)

(declare-fun b_and!4673 () Bool)

(assert (=> b!104704 (= tp!58196 b_and!4673)))

(declare-fun b!104698 () Bool)

(declare-fun e!58107 () Bool)

(declare-datatypes ((C!1800 0))(
  ( (C!1801 (val!507 Int)) )
))
(declare-datatypes ((List!1701 0))(
  ( (Nil!1695) (Cons!1695 (h!7092 C!1800) (t!21386 List!1701)) )
))
(declare-datatypes ((IArray!1075 0))(
  ( (IArray!1076 (innerList!595 List!1701)) )
))
(declare-datatypes ((Conc!537 0))(
  ( (Node!537 (left!1295 Conc!537) (right!1625 Conc!537) (csize!1304 Int) (cheight!748 Int)) (Leaf!858 (xs!3128 IArray!1075) (csize!1305 Int)) (Empty!537) )
))
(declare-datatypes ((BalanceConc!1078 0))(
  ( (BalanceConc!1079 (c!25267 Conc!537)) )
))
(declare-fun input!576 () BalanceConc!1078)

(declare-fun tp!58197 () Bool)

(declare-fun inv!2063 (Conc!537) Bool)

(assert (=> b!104698 (= e!58107 (and (inv!2063 (c!25267 input!576)) tp!58197))))

(declare-fun b!104699 () Bool)

(declare-fun e!58110 () Bool)

(declare-fun e!58108 () Bool)

(declare-fun tp!58198 () Bool)

(assert (=> b!104699 (= e!58110 (and e!58108 tp!58198))))

(declare-fun res!50412 () Bool)

(declare-fun e!58111 () Bool)

(assert (=> start!10338 (=> (not res!50412) (not e!58111))))

(declare-datatypes ((LexerInterface!263 0))(
  ( (LexerInterfaceExt!260 (__x!1817 Int)) (Lexer!261) )
))
(declare-fun thiss!11428 () LexerInterface!263)

(get-info :version)

(assert (=> start!10338 (= res!50412 ((_ is Lexer!261) thiss!11428))))

(assert (=> start!10338 e!58111))

(assert (=> start!10338 true))

(assert (=> start!10338 e!58110))

(declare-fun inv!2064 (BalanceConc!1078) Bool)

(assert (=> start!10338 (and (inv!2064 input!576) e!58107)))

(declare-fun e!58109 () Bool)

(declare-fun b!104700 () Bool)

(declare-fun tp!58194 () Bool)

(declare-datatypes ((List!1702 0))(
  ( (Nil!1696) (Cons!1696 (h!7093 (_ BitVec 16)) (t!21387 List!1702)) )
))
(declare-datatypes ((TokenValue!361 0))(
  ( (FloatLiteralValue!722 (text!2972 List!1702)) (TokenValueExt!360 (__x!1818 Int)) (Broken!1805 (value!13436 List!1702)) (Object!366) (End!361) (Def!361) (Underscore!361) (Match!361) (Else!361) (Error!361) (Case!361) (If!361) (Extends!361) (Abstract!361) (Class!361) (Val!361) (DelimiterValue!722 (del!421 List!1702)) (KeywordValue!367 (value!13437 List!1702)) (CommentValue!722 (value!13438 List!1702)) (WhitespaceValue!722 (value!13439 List!1702)) (IndentationValue!361 (value!13440 List!1702)) (String!2196) (Int32!361) (Broken!1806 (value!13441 List!1702)) (Boolean!362) (Unit!1117) (OperatorValue!364 (op!421 List!1702)) (IdentifierValue!722 (value!13442 List!1702)) (IdentifierValue!723 (value!13443 List!1702)) (WhitespaceValue!723 (value!13444 List!1702)) (True!722) (False!722) (Broken!1807 (value!13445 List!1702)) (Broken!1808 (value!13446 List!1702)) (True!723) (RightBrace!361) (RightBracket!361) (Colon!361) (Null!361) (Comma!361) (LeftBracket!361) (False!723) (LeftBrace!361) (ImaginaryLiteralValue!361 (text!2973 List!1702)) (StringLiteralValue!1083 (value!13447 List!1702)) (EOFValue!361 (value!13448 List!1702)) (IdentValue!361 (value!13449 List!1702)) (DelimiterValue!723 (value!13450 List!1702)) (DedentValue!361 (value!13451 List!1702)) (NewLineValue!361 (value!13452 List!1702)) (IntegerValue!1083 (value!13453 (_ BitVec 32)) (text!2974 List!1702)) (IntegerValue!1084 (value!13454 Int) (text!2975 List!1702)) (Times!361) (Or!361) (Equal!361) (Minus!361) (Broken!1809 (value!13455 List!1702)) (And!361) (Div!361) (LessEqual!361) (Mod!361) (Concat!800) (Not!361) (Plus!361) (SpaceValue!361 (value!13456 List!1702)) (IntegerValue!1085 (value!13457 Int) (text!2976 List!1702)) (StringLiteralValue!1084 (text!2977 List!1702)) (FloatLiteralValue!723 (text!2978 List!1702)) (BytesLiteralValue!361 (value!13458 List!1702)) (CommentValue!723 (value!13459 List!1702)) (StringLiteralValue!1085 (value!13460 List!1702)) (ErrorTokenValue!361 (msg!422 List!1702)) )
))
(declare-datatypes ((Regex!439 0))(
  ( (ElementMatch!439 (c!25268 C!1800)) (Concat!801 (regOne!1390 Regex!439) (regTwo!1390 Regex!439)) (EmptyExpr!439) (Star!439 (reg!768 Regex!439)) (EmptyLang!439) (Union!439 (regOne!1391 Regex!439) (regTwo!1391 Regex!439)) )
))
(declare-datatypes ((String!2197 0))(
  ( (String!2198 (value!13461 String)) )
))
(declare-datatypes ((TokenValueInjection!546 0))(
  ( (TokenValueInjection!547 (toValue!954 Int) (toChars!813 Int)) )
))
(declare-datatypes ((Rule!542 0))(
  ( (Rule!543 (regex!371 Regex!439) (tag!549 String!2197) (isSeparator!371 Bool) (transformation!371 TokenValueInjection!546)) )
))
(declare-datatypes ((List!1703 0))(
  ( (Nil!1697) (Cons!1697 (h!7094 Rule!542) (t!21388 List!1703)) )
))
(declare-fun rules!1152 () List!1703)

(declare-fun inv!2059 (String!2197) Bool)

(declare-fun inv!2065 (TokenValueInjection!546) Bool)

(assert (=> b!104700 (= e!58108 (and tp!58194 (inv!2059 (tag!549 (h!7094 rules!1152))) (inv!2065 (transformation!371 (h!7094 rules!1152))) e!58109))))

(declare-fun b!104701 () Bool)

(declare-fun res!50411 () Bool)

(assert (=> b!104701 (=> (not res!50411) (not e!58111))))

(declare-fun isEmpty!788 (List!1703) Bool)

(assert (=> b!104701 (= res!50411 (not (isEmpty!788 rules!1152)))))

(declare-fun b!104702 () Bool)

(declare-fun res!50413 () Bool)

(assert (=> b!104702 (=> (not res!50413) (not e!58111))))

(declare-fun rulesInvariant!257 (LexerInterface!263 List!1703) Bool)

(assert (=> b!104702 (= res!50413 (rulesInvariant!257 thiss!11428 rules!1152))))

(declare-fun b!104703 () Bool)

(declare-fun size!1504 (BalanceConc!1078) Int)

(assert (=> b!104703 (= e!58111 (< (size!1504 input!576) 0))))

(assert (=> b!104704 (= e!58109 (and tp!58195 tp!58196))))

(assert (= (and start!10338 res!50412) b!104701))

(assert (= (and b!104701 res!50411) b!104702))

(assert (= (and b!104702 res!50413) b!104703))

(assert (= b!104700 b!104704))

(assert (= b!104699 b!104700))

(assert (= (and start!10338 ((_ is Cons!1697) rules!1152)) b!104699))

(assert (= start!10338 b!104698))

(declare-fun m!91204 () Bool)

(assert (=> start!10338 m!91204))

(declare-fun m!91206 () Bool)

(assert (=> b!104700 m!91206))

(declare-fun m!91208 () Bool)

(assert (=> b!104700 m!91208))

(declare-fun m!91210 () Bool)

(assert (=> b!104698 m!91210))

(declare-fun m!91212 () Bool)

(assert (=> b!104701 m!91212))

(declare-fun m!91214 () Bool)

(assert (=> b!104702 m!91214))

(declare-fun m!91216 () Bool)

(assert (=> b!104703 m!91216))

(check-sat (not b!104702) (not b!104700) (not b!104703) (not b_next!3155) (not start!10338) (not b!104699) b_and!4673 b_and!4671 (not b_next!3153) (not b!104701) (not b!104698))
(check-sat b_and!4673 b_and!4671 (not b_next!3155) (not b_next!3153))
(get-model)

(declare-fun d!25141 () Bool)

(declare-fun lt!29047 () Int)

(declare-fun size!1505 (List!1701) Int)

(declare-fun list!716 (BalanceConc!1078) List!1701)

(assert (=> d!25141 (= lt!29047 (size!1505 (list!716 input!576)))))

(declare-fun size!1506 (Conc!537) Int)

(assert (=> d!25141 (= lt!29047 (size!1506 (c!25267 input!576)))))

(assert (=> d!25141 (= (size!1504 input!576) lt!29047)))

(declare-fun bs!10115 () Bool)

(assert (= bs!10115 d!25141))

(declare-fun m!91218 () Bool)

(assert (=> bs!10115 m!91218))

(assert (=> bs!10115 m!91218))

(declare-fun m!91220 () Bool)

(assert (=> bs!10115 m!91220))

(declare-fun m!91222 () Bool)

(assert (=> bs!10115 m!91222))

(assert (=> b!104703 d!25141))

(declare-fun d!25143 () Bool)

(declare-fun c!25271 () Bool)

(assert (=> d!25143 (= c!25271 ((_ is Node!537) (c!25267 input!576)))))

(declare-fun e!58117 () Bool)

(assert (=> d!25143 (= (inv!2063 (c!25267 input!576)) e!58117)))

(declare-fun b!104711 () Bool)

(declare-fun inv!2066 (Conc!537) Bool)

(assert (=> b!104711 (= e!58117 (inv!2066 (c!25267 input!576)))))

(declare-fun b!104712 () Bool)

(declare-fun e!58118 () Bool)

(assert (=> b!104712 (= e!58117 e!58118)))

(declare-fun res!50416 () Bool)

(assert (=> b!104712 (= res!50416 (not ((_ is Leaf!858) (c!25267 input!576))))))

(assert (=> b!104712 (=> res!50416 e!58118)))

(declare-fun b!104713 () Bool)

(declare-fun inv!2067 (Conc!537) Bool)

(assert (=> b!104713 (= e!58118 (inv!2067 (c!25267 input!576)))))

(assert (= (and d!25143 c!25271) b!104711))

(assert (= (and d!25143 (not c!25271)) b!104712))

(assert (= (and b!104712 (not res!50416)) b!104713))

(declare-fun m!91230 () Bool)

(assert (=> b!104711 m!91230))

(declare-fun m!91232 () Bool)

(assert (=> b!104713 m!91232))

(assert (=> b!104698 d!25143))

(declare-fun d!25149 () Bool)

(declare-fun isBalanced!146 (Conc!537) Bool)

(assert (=> d!25149 (= (inv!2064 input!576) (isBalanced!146 (c!25267 input!576)))))

(declare-fun bs!10117 () Bool)

(assert (= bs!10117 d!25149))

(declare-fun m!91234 () Bool)

(assert (=> bs!10117 m!91234))

(assert (=> start!10338 d!25149))

(declare-fun d!25153 () Bool)

(assert (=> d!25153 (= (inv!2059 (tag!549 (h!7094 rules!1152))) (= (mod (str.len (value!13461 (tag!549 (h!7094 rules!1152)))) 2) 0))))

(assert (=> b!104700 d!25153))

(declare-fun d!25155 () Bool)

(declare-fun res!50422 () Bool)

(declare-fun e!58124 () Bool)

(assert (=> d!25155 (=> (not res!50422) (not e!58124))))

(declare-fun semiInverseModEq!96 (Int Int) Bool)

(assert (=> d!25155 (= res!50422 (semiInverseModEq!96 (toChars!813 (transformation!371 (h!7094 rules!1152))) (toValue!954 (transformation!371 (h!7094 rules!1152)))))))

(assert (=> d!25155 (= (inv!2065 (transformation!371 (h!7094 rules!1152))) e!58124)))

(declare-fun b!104719 () Bool)

(declare-fun equivClasses!91 (Int Int) Bool)

(assert (=> b!104719 (= e!58124 (equivClasses!91 (toChars!813 (transformation!371 (h!7094 rules!1152))) (toValue!954 (transformation!371 (h!7094 rules!1152)))))))

(assert (= (and d!25155 res!50422) b!104719))

(declare-fun m!91240 () Bool)

(assert (=> d!25155 m!91240))

(declare-fun m!91242 () Bool)

(assert (=> b!104719 m!91242))

(assert (=> b!104700 d!25155))

(declare-fun d!25159 () Bool)

(assert (=> d!25159 (= (isEmpty!788 rules!1152) ((_ is Nil!1697) rules!1152))))

(assert (=> b!104701 d!25159))

(declare-fun d!25161 () Bool)

(declare-fun res!50428 () Bool)

(declare-fun e!58130 () Bool)

(assert (=> d!25161 (=> (not res!50428) (not e!58130))))

(declare-fun rulesValid!104 (LexerInterface!263 List!1703) Bool)

(assert (=> d!25161 (= res!50428 (rulesValid!104 thiss!11428 rules!1152))))

(assert (=> d!25161 (= (rulesInvariant!257 thiss!11428 rules!1152) e!58130)))

(declare-fun b!104725 () Bool)

(declare-datatypes ((List!1704 0))(
  ( (Nil!1698) (Cons!1698 (h!7095 String!2197) (t!21389 List!1704)) )
))
(declare-fun noDuplicateTag!104 (LexerInterface!263 List!1703 List!1704) Bool)

(assert (=> b!104725 (= e!58130 (noDuplicateTag!104 thiss!11428 rules!1152 Nil!1698))))

(assert (= (and d!25161 res!50428) b!104725))

(declare-fun m!91248 () Bool)

(assert (=> d!25161 m!91248))

(declare-fun m!91250 () Bool)

(assert (=> b!104725 m!91250))

(assert (=> b!104702 d!25161))

(declare-fun e!58139 () Bool)

(declare-fun tp!58205 () Bool)

(declare-fun b!104740 () Bool)

(declare-fun tp!58207 () Bool)

(assert (=> b!104740 (= e!58139 (and (inv!2063 (left!1295 (c!25267 input!576))) tp!58207 (inv!2063 (right!1625 (c!25267 input!576))) tp!58205))))

(declare-fun b!104742 () Bool)

(declare-fun e!58140 () Bool)

(declare-fun tp!58206 () Bool)

(assert (=> b!104742 (= e!58140 tp!58206)))

(declare-fun b!104741 () Bool)

(declare-fun inv!2068 (IArray!1075) Bool)

(assert (=> b!104741 (= e!58139 (and (inv!2068 (xs!3128 (c!25267 input!576))) e!58140))))

(assert (=> b!104698 (= tp!58197 (and (inv!2063 (c!25267 input!576)) e!58139))))

(assert (= (and b!104698 ((_ is Node!537) (c!25267 input!576))) b!104740))

(assert (= b!104741 b!104742))

(assert (= (and b!104698 ((_ is Leaf!858) (c!25267 input!576))) b!104741))

(declare-fun m!91252 () Bool)

(assert (=> b!104740 m!91252))

(declare-fun m!91254 () Bool)

(assert (=> b!104740 m!91254))

(declare-fun m!91256 () Bool)

(assert (=> b!104741 m!91256))

(assert (=> b!104698 m!91210))

(declare-fun b!104756 () Bool)

(declare-fun e!58145 () Bool)

(declare-fun tp_is_empty!783 () Bool)

(assert (=> b!104756 (= e!58145 tp_is_empty!783)))

(declare-fun b!104759 () Bool)

(declare-fun tp!58218 () Bool)

(declare-fun tp!58221 () Bool)

(assert (=> b!104759 (= e!58145 (and tp!58218 tp!58221))))

(declare-fun b!104758 () Bool)

(declare-fun tp!58220 () Bool)

(assert (=> b!104758 (= e!58145 tp!58220)))

(assert (=> b!104700 (= tp!58194 e!58145)))

(declare-fun b!104757 () Bool)

(declare-fun tp!58222 () Bool)

(declare-fun tp!58219 () Bool)

(assert (=> b!104757 (= e!58145 (and tp!58222 tp!58219))))

(assert (= (and b!104700 ((_ is ElementMatch!439) (regex!371 (h!7094 rules!1152)))) b!104756))

(assert (= (and b!104700 ((_ is Concat!801) (regex!371 (h!7094 rules!1152)))) b!104757))

(assert (= (and b!104700 ((_ is Star!439) (regex!371 (h!7094 rules!1152)))) b!104758))

(assert (= (and b!104700 ((_ is Union!439) (regex!371 (h!7094 rules!1152)))) b!104759))

(declare-fun b!104778 () Bool)

(declare-fun b_free!3157 () Bool)

(declare-fun b_next!3157 () Bool)

(assert (=> b!104778 (= b_free!3157 (not b_next!3157))))

(declare-fun tp!58238 () Bool)

(declare-fun b_and!4675 () Bool)

(assert (=> b!104778 (= tp!58238 b_and!4675)))

(declare-fun b_free!3159 () Bool)

(declare-fun b_next!3159 () Bool)

(assert (=> b!104778 (= b_free!3159 (not b_next!3159))))

(declare-fun tp!58239 () Bool)

(declare-fun b_and!4677 () Bool)

(assert (=> b!104778 (= tp!58239 b_and!4677)))

(declare-fun e!58165 () Bool)

(assert (=> b!104778 (= e!58165 (and tp!58238 tp!58239))))

(declare-fun tp!58240 () Bool)

(declare-fun b!104777 () Bool)

(declare-fun e!58162 () Bool)

(assert (=> b!104777 (= e!58162 (and tp!58240 (inv!2059 (tag!549 (h!7094 (t!21388 rules!1152)))) (inv!2065 (transformation!371 (h!7094 (t!21388 rules!1152)))) e!58165))))

(declare-fun b!104776 () Bool)

(declare-fun e!58163 () Bool)

(declare-fun tp!58237 () Bool)

(assert (=> b!104776 (= e!58163 (and e!58162 tp!58237))))

(assert (=> b!104699 (= tp!58198 e!58163)))

(assert (= b!104777 b!104778))

(assert (= b!104776 b!104777))

(assert (= (and b!104699 ((_ is Cons!1697) (t!21388 rules!1152))) b!104776))

(declare-fun m!91264 () Bool)

(assert (=> b!104777 m!91264))

(declare-fun m!91266 () Bool)

(assert (=> b!104777 m!91266))

(check-sat (not b!104711) (not b_next!3155) (not b!104719) (not b!104725) (not b!104776) (not b!104713) (not d!25155) (not b!104757) (not b_next!3159) b_and!4671 (not d!25161) (not b!104741) b_and!4675 (not b_next!3157) (not b!104758) tp_is_empty!783 (not b_next!3153) (not b!104698) (not b!104777) b_and!4673 (not b!104759) (not d!25141) (not b!104740) (not d!25149) (not b!104742) b_and!4677)
(check-sat (not b_next!3153) (not b_next!3155) b_and!4673 (not b_next!3159) b_and!4677 b_and!4671 b_and!4675 (not b_next!3157))
(get-model)

(declare-fun d!25169 () Bool)

(declare-fun lt!29053 () Int)

(assert (=> d!25169 (>= lt!29053 0)))

(declare-fun e!58181 () Int)

(assert (=> d!25169 (= lt!29053 e!58181)))

(declare-fun c!25277 () Bool)

(assert (=> d!25169 (= c!25277 ((_ is Nil!1695) (list!716 input!576)))))

(assert (=> d!25169 (= (size!1505 (list!716 input!576)) lt!29053)))

(declare-fun b!104811 () Bool)

(assert (=> b!104811 (= e!58181 0)))

(declare-fun b!104812 () Bool)

(assert (=> b!104812 (= e!58181 (+ 1 (size!1505 (t!21386 (list!716 input!576)))))))

(assert (= (and d!25169 c!25277) b!104811))

(assert (= (and d!25169 (not c!25277)) b!104812))

(declare-fun m!91278 () Bool)

(assert (=> b!104812 m!91278))

(assert (=> d!25141 d!25169))

(declare-fun d!25171 () Bool)

(declare-fun list!718 (Conc!537) List!1701)

(assert (=> d!25171 (= (list!716 input!576) (list!718 (c!25267 input!576)))))

(declare-fun bs!10119 () Bool)

(assert (= bs!10119 d!25171))

(declare-fun m!91280 () Bool)

(assert (=> bs!10119 m!91280))

(assert (=> d!25141 d!25171))

(declare-fun d!25173 () Bool)

(declare-fun lt!29056 () Int)

(assert (=> d!25173 (= lt!29056 (size!1505 (list!718 (c!25267 input!576))))))

(assert (=> d!25173 (= lt!29056 (ite ((_ is Empty!537) (c!25267 input!576)) 0 (ite ((_ is Leaf!858) (c!25267 input!576)) (csize!1305 (c!25267 input!576)) (csize!1304 (c!25267 input!576)))))))

(assert (=> d!25173 (= (size!1506 (c!25267 input!576)) lt!29056)))

(declare-fun bs!10120 () Bool)

(assert (= bs!10120 d!25173))

(assert (=> bs!10120 m!91280))

(assert (=> bs!10120 m!91280))

(declare-fun m!91282 () Bool)

(assert (=> bs!10120 m!91282))

(assert (=> d!25141 d!25173))

(assert (=> b!104698 d!25143))

(declare-fun d!25175 () Bool)

(declare-fun res!50440 () Bool)

(declare-fun e!58184 () Bool)

(assert (=> d!25175 (=> (not res!50440) (not e!58184))))

(assert (=> d!25175 (= res!50440 (= (csize!1304 (c!25267 input!576)) (+ (size!1506 (left!1295 (c!25267 input!576))) (size!1506 (right!1625 (c!25267 input!576))))))))

(assert (=> d!25175 (= (inv!2066 (c!25267 input!576)) e!58184)))

(declare-fun b!104819 () Bool)

(declare-fun res!50441 () Bool)

(assert (=> b!104819 (=> (not res!50441) (not e!58184))))

(assert (=> b!104819 (= res!50441 (and (not (= (left!1295 (c!25267 input!576)) Empty!537)) (not (= (right!1625 (c!25267 input!576)) Empty!537))))))

(declare-fun b!104820 () Bool)

(declare-fun res!50442 () Bool)

(assert (=> b!104820 (=> (not res!50442) (not e!58184))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!61 (Conc!537) Int)

(assert (=> b!104820 (= res!50442 (= (cheight!748 (c!25267 input!576)) (+ (max!0 (height!61 (left!1295 (c!25267 input!576))) (height!61 (right!1625 (c!25267 input!576)))) 1)))))

(declare-fun b!104821 () Bool)

(assert (=> b!104821 (= e!58184 (<= 0 (cheight!748 (c!25267 input!576))))))

(assert (= (and d!25175 res!50440) b!104819))

(assert (= (and b!104819 res!50441) b!104820))

(assert (= (and b!104820 res!50442) b!104821))

(declare-fun m!91284 () Bool)

(assert (=> d!25175 m!91284))

(declare-fun m!91286 () Bool)

(assert (=> d!25175 m!91286))

(declare-fun m!91288 () Bool)

(assert (=> b!104820 m!91288))

(declare-fun m!91290 () Bool)

(assert (=> b!104820 m!91290))

(assert (=> b!104820 m!91288))

(assert (=> b!104820 m!91290))

(declare-fun m!91292 () Bool)

(assert (=> b!104820 m!91292))

(assert (=> b!104711 d!25175))

(declare-fun d!25177 () Bool)

(assert (=> d!25177 true))

(declare-fun lambda!1926 () Int)

(declare-fun order!813 () Int)

(declare-fun order!815 () Int)

(declare-fun dynLambda!525 (Int Int) Int)

(declare-fun dynLambda!526 (Int Int) Int)

(assert (=> d!25177 (< (dynLambda!525 order!813 (toValue!954 (transformation!371 (h!7094 rules!1152)))) (dynLambda!526 order!815 lambda!1926))))

(declare-fun Forall2!64 (Int) Bool)

(assert (=> d!25177 (= (equivClasses!91 (toChars!813 (transformation!371 (h!7094 rules!1152))) (toValue!954 (transformation!371 (h!7094 rules!1152)))) (Forall2!64 lambda!1926))))

(declare-fun bs!10121 () Bool)

(assert (= bs!10121 d!25177))

(declare-fun m!91306 () Bool)

(assert (=> bs!10121 m!91306))

(assert (=> b!104719 d!25177))

(declare-fun d!25183 () Bool)

(declare-fun res!50469 () Bool)

(declare-fun e!58195 () Bool)

(assert (=> d!25183 (=> (not res!50469) (not e!58195))))

(declare-fun list!719 (IArray!1075) List!1701)

(assert (=> d!25183 (= res!50469 (<= (size!1505 (list!719 (xs!3128 (c!25267 input!576)))) 512))))

(assert (=> d!25183 (= (inv!2067 (c!25267 input!576)) e!58195)))

(declare-fun b!104848 () Bool)

(declare-fun res!50470 () Bool)

(assert (=> b!104848 (=> (not res!50470) (not e!58195))))

(assert (=> b!104848 (= res!50470 (= (csize!1305 (c!25267 input!576)) (size!1505 (list!719 (xs!3128 (c!25267 input!576))))))))

(declare-fun b!104849 () Bool)

(assert (=> b!104849 (= e!58195 (and (> (csize!1305 (c!25267 input!576)) 0) (<= (csize!1305 (c!25267 input!576)) 512)))))

(assert (= (and d!25183 res!50469) b!104848))

(assert (= (and b!104848 res!50470) b!104849))

(declare-fun m!91308 () Bool)

(assert (=> d!25183 m!91308))

(assert (=> d!25183 m!91308))

(declare-fun m!91310 () Bool)

(assert (=> d!25183 m!91310))

(assert (=> b!104848 m!91308))

(assert (=> b!104848 m!91308))

(assert (=> b!104848 m!91310))

(assert (=> b!104713 d!25183))

(declare-fun d!25185 () Bool)

(assert (=> d!25185 true))

(declare-fun lt!29061 () Bool)

(declare-fun rulesValidInductive!81 (LexerInterface!263 List!1703) Bool)

(assert (=> d!25185 (= lt!29061 (rulesValidInductive!81 thiss!11428 rules!1152))))

(declare-fun lambda!1929 () Int)

(declare-fun forall!225 (List!1703 Int) Bool)

(assert (=> d!25185 (= lt!29061 (forall!225 rules!1152 lambda!1929))))

(assert (=> d!25185 (= (rulesValid!104 thiss!11428 rules!1152) lt!29061)))

(declare-fun bs!10122 () Bool)

(assert (= bs!10122 d!25185))

(declare-fun m!91312 () Bool)

(assert (=> bs!10122 m!91312))

(declare-fun m!91314 () Bool)

(assert (=> bs!10122 m!91314))

(assert (=> d!25161 d!25185))

(declare-fun d!25187 () Bool)

(declare-fun c!25278 () Bool)

(assert (=> d!25187 (= c!25278 ((_ is Node!537) (left!1295 (c!25267 input!576))))))

(declare-fun e!58196 () Bool)

(assert (=> d!25187 (= (inv!2063 (left!1295 (c!25267 input!576))) e!58196)))

(declare-fun b!104852 () Bool)

(assert (=> b!104852 (= e!58196 (inv!2066 (left!1295 (c!25267 input!576))))))

(declare-fun b!104853 () Bool)

(declare-fun e!58197 () Bool)

(assert (=> b!104853 (= e!58196 e!58197)))

(declare-fun res!50471 () Bool)

(assert (=> b!104853 (= res!50471 (not ((_ is Leaf!858) (left!1295 (c!25267 input!576)))))))

(assert (=> b!104853 (=> res!50471 e!58197)))

(declare-fun b!104854 () Bool)

(assert (=> b!104854 (= e!58197 (inv!2067 (left!1295 (c!25267 input!576))))))

(assert (= (and d!25187 c!25278) b!104852))

(assert (= (and d!25187 (not c!25278)) b!104853))

(assert (= (and b!104853 (not res!50471)) b!104854))

(declare-fun m!91316 () Bool)

(assert (=> b!104852 m!91316))

(declare-fun m!91318 () Bool)

(assert (=> b!104854 m!91318))

(assert (=> b!104740 d!25187))

(declare-fun d!25189 () Bool)

(declare-fun c!25279 () Bool)

(assert (=> d!25189 (= c!25279 ((_ is Node!537) (right!1625 (c!25267 input!576))))))

(declare-fun e!58198 () Bool)

(assert (=> d!25189 (= (inv!2063 (right!1625 (c!25267 input!576))) e!58198)))

(declare-fun b!104855 () Bool)

(assert (=> b!104855 (= e!58198 (inv!2066 (right!1625 (c!25267 input!576))))))

(declare-fun b!104856 () Bool)

(declare-fun e!58199 () Bool)

(assert (=> b!104856 (= e!58198 e!58199)))

(declare-fun res!50472 () Bool)

(assert (=> b!104856 (= res!50472 (not ((_ is Leaf!858) (right!1625 (c!25267 input!576)))))))

(assert (=> b!104856 (=> res!50472 e!58199)))

(declare-fun b!104857 () Bool)

(assert (=> b!104857 (= e!58199 (inv!2067 (right!1625 (c!25267 input!576))))))

(assert (= (and d!25189 c!25279) b!104855))

(assert (= (and d!25189 (not c!25279)) b!104856))

(assert (= (and b!104856 (not res!50472)) b!104857))

(declare-fun m!91320 () Bool)

(assert (=> b!104855 m!91320))

(declare-fun m!91322 () Bool)

(assert (=> b!104857 m!91322))

(assert (=> b!104740 d!25189))

(declare-fun d!25191 () Bool)

(assert (=> d!25191 (= (inv!2059 (tag!549 (h!7094 (t!21388 rules!1152)))) (= (mod (str.len (value!13461 (tag!549 (h!7094 (t!21388 rules!1152))))) 2) 0))))

(assert (=> b!104777 d!25191))

(declare-fun d!25193 () Bool)

(declare-fun res!50473 () Bool)

(declare-fun e!58200 () Bool)

(assert (=> d!25193 (=> (not res!50473) (not e!58200))))

(assert (=> d!25193 (= res!50473 (semiInverseModEq!96 (toChars!813 (transformation!371 (h!7094 (t!21388 rules!1152)))) (toValue!954 (transformation!371 (h!7094 (t!21388 rules!1152))))))))

(assert (=> d!25193 (= (inv!2065 (transformation!371 (h!7094 (t!21388 rules!1152)))) e!58200)))

(declare-fun b!104858 () Bool)

(assert (=> b!104858 (= e!58200 (equivClasses!91 (toChars!813 (transformation!371 (h!7094 (t!21388 rules!1152)))) (toValue!954 (transformation!371 (h!7094 (t!21388 rules!1152))))))))

(assert (= (and d!25193 res!50473) b!104858))

(declare-fun m!91324 () Bool)

(assert (=> d!25193 m!91324))

(declare-fun m!91326 () Bool)

(assert (=> b!104858 m!91326))

(assert (=> b!104777 d!25193))

(declare-fun d!25195 () Bool)

(assert (=> d!25195 (= (inv!2068 (xs!3128 (c!25267 input!576))) (<= (size!1505 (innerList!595 (xs!3128 (c!25267 input!576)))) 2147483647))))

(declare-fun bs!10123 () Bool)

(assert (= bs!10123 d!25195))

(declare-fun m!91328 () Bool)

(assert (=> bs!10123 m!91328))

(assert (=> b!104741 d!25195))

(declare-fun d!25197 () Bool)

(assert (=> d!25197 true))

(declare-fun order!819 () Int)

(declare-fun lambda!1932 () Int)

(declare-fun order!817 () Int)

(declare-fun dynLambda!527 (Int Int) Int)

(declare-fun dynLambda!528 (Int Int) Int)

(assert (=> d!25197 (< (dynLambda!527 order!817 (toChars!813 (transformation!371 (h!7094 rules!1152)))) (dynLambda!528 order!819 lambda!1932))))

(assert (=> d!25197 true))

(assert (=> d!25197 (< (dynLambda!525 order!813 (toValue!954 (transformation!371 (h!7094 rules!1152)))) (dynLambda!528 order!819 lambda!1932))))

(declare-fun Forall!75 (Int) Bool)

(assert (=> d!25197 (= (semiInverseModEq!96 (toChars!813 (transformation!371 (h!7094 rules!1152))) (toValue!954 (transformation!371 (h!7094 rules!1152)))) (Forall!75 lambda!1932))))

(declare-fun bs!10124 () Bool)

(assert (= bs!10124 d!25197))

(declare-fun m!91330 () Bool)

(assert (=> bs!10124 m!91330))

(assert (=> d!25155 d!25197))

(declare-fun d!25199 () Bool)

(declare-fun res!50478 () Bool)

(declare-fun e!58205 () Bool)

(assert (=> d!25199 (=> res!50478 e!58205)))

(assert (=> d!25199 (= res!50478 ((_ is Nil!1697) rules!1152))))

(assert (=> d!25199 (= (noDuplicateTag!104 thiss!11428 rules!1152 Nil!1698) e!58205)))

(declare-fun b!104867 () Bool)

(declare-fun e!58206 () Bool)

(assert (=> b!104867 (= e!58205 e!58206)))

(declare-fun res!50479 () Bool)

(assert (=> b!104867 (=> (not res!50479) (not e!58206))))

(declare-fun contains!274 (List!1704 String!2197) Bool)

(assert (=> b!104867 (= res!50479 (not (contains!274 Nil!1698 (tag!549 (h!7094 rules!1152)))))))

(declare-fun b!104868 () Bool)

(assert (=> b!104868 (= e!58206 (noDuplicateTag!104 thiss!11428 (t!21388 rules!1152) (Cons!1698 (tag!549 (h!7094 rules!1152)) Nil!1698)))))

(assert (= (and d!25199 (not res!50478)) b!104867))

(assert (= (and b!104867 res!50479) b!104868))

(declare-fun m!91332 () Bool)

(assert (=> b!104867 m!91332))

(declare-fun m!91334 () Bool)

(assert (=> b!104868 m!91334))

(assert (=> b!104725 d!25199))

(declare-fun b!104881 () Bool)

(declare-fun res!50497 () Bool)

(declare-fun e!58212 () Bool)

(assert (=> b!104881 (=> (not res!50497) (not e!58212))))

(assert (=> b!104881 (= res!50497 (<= (- (height!61 (left!1295 (c!25267 input!576))) (height!61 (right!1625 (c!25267 input!576)))) 1))))

(declare-fun b!104882 () Bool)

(declare-fun res!50496 () Bool)

(assert (=> b!104882 (=> (not res!50496) (not e!58212))))

(declare-fun isEmpty!789 (Conc!537) Bool)

(assert (=> b!104882 (= res!50496 (not (isEmpty!789 (left!1295 (c!25267 input!576)))))))

(declare-fun b!104883 () Bool)

(declare-fun e!58211 () Bool)

(assert (=> b!104883 (= e!58211 e!58212)))

(declare-fun res!50495 () Bool)

(assert (=> b!104883 (=> (not res!50495) (not e!58212))))

(assert (=> b!104883 (= res!50495 (<= (- 1) (- (height!61 (left!1295 (c!25267 input!576))) (height!61 (right!1625 (c!25267 input!576))))))))

(declare-fun b!104884 () Bool)

(declare-fun res!50493 () Bool)

(assert (=> b!104884 (=> (not res!50493) (not e!58212))))

(assert (=> b!104884 (= res!50493 (isBalanced!146 (left!1295 (c!25267 input!576))))))

(declare-fun b!104885 () Bool)

(assert (=> b!104885 (= e!58212 (not (isEmpty!789 (right!1625 (c!25267 input!576)))))))

(declare-fun d!25201 () Bool)

(declare-fun res!50492 () Bool)

(assert (=> d!25201 (=> res!50492 e!58211)))

(assert (=> d!25201 (= res!50492 (not ((_ is Node!537) (c!25267 input!576))))))

(assert (=> d!25201 (= (isBalanced!146 (c!25267 input!576)) e!58211)))

(declare-fun b!104886 () Bool)

(declare-fun res!50494 () Bool)

(assert (=> b!104886 (=> (not res!50494) (not e!58212))))

(assert (=> b!104886 (= res!50494 (isBalanced!146 (right!1625 (c!25267 input!576))))))

(assert (= (and d!25201 (not res!50492)) b!104883))

(assert (= (and b!104883 res!50495) b!104881))

(assert (= (and b!104881 res!50497) b!104884))

(assert (= (and b!104884 res!50493) b!104886))

(assert (= (and b!104886 res!50494) b!104882))

(assert (= (and b!104882 res!50496) b!104885))

(declare-fun m!91336 () Bool)

(assert (=> b!104884 m!91336))

(declare-fun m!91338 () Bool)

(assert (=> b!104885 m!91338))

(declare-fun m!91340 () Bool)

(assert (=> b!104882 m!91340))

(declare-fun m!91342 () Bool)

(assert (=> b!104886 m!91342))

(assert (=> b!104883 m!91288))

(assert (=> b!104883 m!91290))

(assert (=> b!104881 m!91288))

(assert (=> b!104881 m!91290))

(assert (=> d!25149 d!25201))

(declare-fun b!104891 () Bool)

(declare-fun e!58215 () Bool)

(declare-fun tp!58273 () Bool)

(assert (=> b!104891 (= e!58215 (and tp_is_empty!783 tp!58273))))

(assert (=> b!104742 (= tp!58206 e!58215)))

(assert (= (and b!104742 ((_ is Cons!1695) (innerList!595 (xs!3128 (c!25267 input!576))))) b!104891))

(declare-fun b!104892 () Bool)

(declare-fun e!58216 () Bool)

(assert (=> b!104892 (= e!58216 tp_is_empty!783)))

(declare-fun b!104895 () Bool)

(declare-fun tp!58274 () Bool)

(declare-fun tp!58277 () Bool)

(assert (=> b!104895 (= e!58216 (and tp!58274 tp!58277))))

(declare-fun b!104894 () Bool)

(declare-fun tp!58276 () Bool)

(assert (=> b!104894 (= e!58216 tp!58276)))

(assert (=> b!104777 (= tp!58240 e!58216)))

(declare-fun b!104893 () Bool)

(declare-fun tp!58278 () Bool)

(declare-fun tp!58275 () Bool)

(assert (=> b!104893 (= e!58216 (and tp!58278 tp!58275))))

(assert (= (and b!104777 ((_ is ElementMatch!439) (regex!371 (h!7094 (t!21388 rules!1152))))) b!104892))

(assert (= (and b!104777 ((_ is Concat!801) (regex!371 (h!7094 (t!21388 rules!1152))))) b!104893))

(assert (= (and b!104777 ((_ is Star!439) (regex!371 (h!7094 (t!21388 rules!1152))))) b!104894))

(assert (= (and b!104777 ((_ is Union!439) (regex!371 (h!7094 (t!21388 rules!1152))))) b!104895))

(declare-fun b!104896 () Bool)

(declare-fun e!58217 () Bool)

(assert (=> b!104896 (= e!58217 tp_is_empty!783)))

(declare-fun b!104899 () Bool)

(declare-fun tp!58279 () Bool)

(declare-fun tp!58282 () Bool)

(assert (=> b!104899 (= e!58217 (and tp!58279 tp!58282))))

(declare-fun b!104898 () Bool)

(declare-fun tp!58281 () Bool)

(assert (=> b!104898 (= e!58217 tp!58281)))

(assert (=> b!104758 (= tp!58220 e!58217)))

(declare-fun b!104897 () Bool)

(declare-fun tp!58283 () Bool)

(declare-fun tp!58280 () Bool)

(assert (=> b!104897 (= e!58217 (and tp!58283 tp!58280))))

(assert (= (and b!104758 ((_ is ElementMatch!439) (reg!768 (regex!371 (h!7094 rules!1152))))) b!104896))

(assert (= (and b!104758 ((_ is Concat!801) (reg!768 (regex!371 (h!7094 rules!1152))))) b!104897))

(assert (= (and b!104758 ((_ is Star!439) (reg!768 (regex!371 (h!7094 rules!1152))))) b!104898))

(assert (= (and b!104758 ((_ is Union!439) (reg!768 (regex!371 (h!7094 rules!1152))))) b!104899))

(declare-fun b!104900 () Bool)

(declare-fun e!58218 () Bool)

(assert (=> b!104900 (= e!58218 tp_is_empty!783)))

(declare-fun b!104903 () Bool)

(declare-fun tp!58284 () Bool)

(declare-fun tp!58287 () Bool)

(assert (=> b!104903 (= e!58218 (and tp!58284 tp!58287))))

(declare-fun b!104902 () Bool)

(declare-fun tp!58286 () Bool)

(assert (=> b!104902 (= e!58218 tp!58286)))

(assert (=> b!104757 (= tp!58222 e!58218)))

(declare-fun b!104901 () Bool)

(declare-fun tp!58288 () Bool)

(declare-fun tp!58285 () Bool)

(assert (=> b!104901 (= e!58218 (and tp!58288 tp!58285))))

(assert (= (and b!104757 ((_ is ElementMatch!439) (regOne!1390 (regex!371 (h!7094 rules!1152))))) b!104900))

(assert (= (and b!104757 ((_ is Concat!801) (regOne!1390 (regex!371 (h!7094 rules!1152))))) b!104901))

(assert (= (and b!104757 ((_ is Star!439) (regOne!1390 (regex!371 (h!7094 rules!1152))))) b!104902))

(assert (= (and b!104757 ((_ is Union!439) (regOne!1390 (regex!371 (h!7094 rules!1152))))) b!104903))

(declare-fun b!104904 () Bool)

(declare-fun e!58219 () Bool)

(assert (=> b!104904 (= e!58219 tp_is_empty!783)))

(declare-fun b!104907 () Bool)

(declare-fun tp!58289 () Bool)

(declare-fun tp!58292 () Bool)

(assert (=> b!104907 (= e!58219 (and tp!58289 tp!58292))))

(declare-fun b!104906 () Bool)

(declare-fun tp!58291 () Bool)

(assert (=> b!104906 (= e!58219 tp!58291)))

(assert (=> b!104757 (= tp!58219 e!58219)))

(declare-fun b!104905 () Bool)

(declare-fun tp!58293 () Bool)

(declare-fun tp!58290 () Bool)

(assert (=> b!104905 (= e!58219 (and tp!58293 tp!58290))))

(assert (= (and b!104757 ((_ is ElementMatch!439) (regTwo!1390 (regex!371 (h!7094 rules!1152))))) b!104904))

(assert (= (and b!104757 ((_ is Concat!801) (regTwo!1390 (regex!371 (h!7094 rules!1152))))) b!104905))

(assert (= (and b!104757 ((_ is Star!439) (regTwo!1390 (regex!371 (h!7094 rules!1152))))) b!104906))

(assert (= (and b!104757 ((_ is Union!439) (regTwo!1390 (regex!371 (h!7094 rules!1152))))) b!104907))

(declare-fun b!104908 () Bool)

(declare-fun e!58220 () Bool)

(assert (=> b!104908 (= e!58220 tp_is_empty!783)))

(declare-fun b!104911 () Bool)

(declare-fun tp!58294 () Bool)

(declare-fun tp!58297 () Bool)

(assert (=> b!104911 (= e!58220 (and tp!58294 tp!58297))))

(declare-fun b!104910 () Bool)

(declare-fun tp!58296 () Bool)

(assert (=> b!104910 (= e!58220 tp!58296)))

(assert (=> b!104759 (= tp!58218 e!58220)))

(declare-fun b!104909 () Bool)

(declare-fun tp!58298 () Bool)

(declare-fun tp!58295 () Bool)

(assert (=> b!104909 (= e!58220 (and tp!58298 tp!58295))))

(assert (= (and b!104759 ((_ is ElementMatch!439) (regOne!1391 (regex!371 (h!7094 rules!1152))))) b!104908))

(assert (= (and b!104759 ((_ is Concat!801) (regOne!1391 (regex!371 (h!7094 rules!1152))))) b!104909))

(assert (= (and b!104759 ((_ is Star!439) (regOne!1391 (regex!371 (h!7094 rules!1152))))) b!104910))

(assert (= (and b!104759 ((_ is Union!439) (regOne!1391 (regex!371 (h!7094 rules!1152))))) b!104911))

(declare-fun b!104912 () Bool)

(declare-fun e!58221 () Bool)

(assert (=> b!104912 (= e!58221 tp_is_empty!783)))

(declare-fun b!104915 () Bool)

(declare-fun tp!58299 () Bool)

(declare-fun tp!58302 () Bool)

(assert (=> b!104915 (= e!58221 (and tp!58299 tp!58302))))

(declare-fun b!104914 () Bool)

(declare-fun tp!58301 () Bool)

(assert (=> b!104914 (= e!58221 tp!58301)))

(assert (=> b!104759 (= tp!58221 e!58221)))

(declare-fun b!104913 () Bool)

(declare-fun tp!58303 () Bool)

(declare-fun tp!58300 () Bool)

(assert (=> b!104913 (= e!58221 (and tp!58303 tp!58300))))

(assert (= (and b!104759 ((_ is ElementMatch!439) (regTwo!1391 (regex!371 (h!7094 rules!1152))))) b!104912))

(assert (= (and b!104759 ((_ is Concat!801) (regTwo!1391 (regex!371 (h!7094 rules!1152))))) b!104913))

(assert (= (and b!104759 ((_ is Star!439) (regTwo!1391 (regex!371 (h!7094 rules!1152))))) b!104914))

(assert (= (and b!104759 ((_ is Union!439) (regTwo!1391 (regex!371 (h!7094 rules!1152))))) b!104915))

(declare-fun b!104918 () Bool)

(declare-fun b_free!3165 () Bool)

(declare-fun b_next!3165 () Bool)

(assert (=> b!104918 (= b_free!3165 (not b_next!3165))))

(declare-fun tp!58305 () Bool)

(declare-fun b_and!4683 () Bool)

(assert (=> b!104918 (= tp!58305 b_and!4683)))

(declare-fun b_free!3167 () Bool)

(declare-fun b_next!3167 () Bool)

(assert (=> b!104918 (= b_free!3167 (not b_next!3167))))

(declare-fun tp!58306 () Bool)

(declare-fun b_and!4685 () Bool)

(assert (=> b!104918 (= tp!58306 b_and!4685)))

(declare-fun e!58225 () Bool)

(assert (=> b!104918 (= e!58225 (and tp!58305 tp!58306))))

(declare-fun tp!58307 () Bool)

(declare-fun b!104917 () Bool)

(declare-fun e!58222 () Bool)

(assert (=> b!104917 (= e!58222 (and tp!58307 (inv!2059 (tag!549 (h!7094 (t!21388 (t!21388 rules!1152))))) (inv!2065 (transformation!371 (h!7094 (t!21388 (t!21388 rules!1152))))) e!58225))))

(declare-fun b!104916 () Bool)

(declare-fun e!58223 () Bool)

(declare-fun tp!58304 () Bool)

(assert (=> b!104916 (= e!58223 (and e!58222 tp!58304))))

(assert (=> b!104776 (= tp!58237 e!58223)))

(assert (= b!104917 b!104918))

(assert (= b!104916 b!104917))

(assert (= (and b!104776 ((_ is Cons!1697) (t!21388 (t!21388 rules!1152)))) b!104916))

(declare-fun m!91344 () Bool)

(assert (=> b!104917 m!91344))

(declare-fun m!91346 () Bool)

(assert (=> b!104917 m!91346))

(declare-fun e!58226 () Bool)

(declare-fun b!104919 () Bool)

(declare-fun tp!58310 () Bool)

(declare-fun tp!58308 () Bool)

(assert (=> b!104919 (= e!58226 (and (inv!2063 (left!1295 (left!1295 (c!25267 input!576)))) tp!58310 (inv!2063 (right!1625 (left!1295 (c!25267 input!576)))) tp!58308))))

(declare-fun b!104921 () Bool)

(declare-fun e!58227 () Bool)

(declare-fun tp!58309 () Bool)

(assert (=> b!104921 (= e!58227 tp!58309)))

(declare-fun b!104920 () Bool)

(assert (=> b!104920 (= e!58226 (and (inv!2068 (xs!3128 (left!1295 (c!25267 input!576)))) e!58227))))

(assert (=> b!104740 (= tp!58207 (and (inv!2063 (left!1295 (c!25267 input!576))) e!58226))))

(assert (= (and b!104740 ((_ is Node!537) (left!1295 (c!25267 input!576)))) b!104919))

(assert (= b!104920 b!104921))

(assert (= (and b!104740 ((_ is Leaf!858) (left!1295 (c!25267 input!576)))) b!104920))

(declare-fun m!91348 () Bool)

(assert (=> b!104919 m!91348))

(declare-fun m!91350 () Bool)

(assert (=> b!104919 m!91350))

(declare-fun m!91352 () Bool)

(assert (=> b!104920 m!91352))

(assert (=> b!104740 m!91252))

(declare-fun tp!58313 () Bool)

(declare-fun tp!58311 () Bool)

(declare-fun b!104922 () Bool)

(declare-fun e!58228 () Bool)

(assert (=> b!104922 (= e!58228 (and (inv!2063 (left!1295 (right!1625 (c!25267 input!576)))) tp!58313 (inv!2063 (right!1625 (right!1625 (c!25267 input!576)))) tp!58311))))

(declare-fun b!104924 () Bool)

(declare-fun e!58229 () Bool)

(declare-fun tp!58312 () Bool)

(assert (=> b!104924 (= e!58229 tp!58312)))

(declare-fun b!104923 () Bool)

(assert (=> b!104923 (= e!58228 (and (inv!2068 (xs!3128 (right!1625 (c!25267 input!576)))) e!58229))))

(assert (=> b!104740 (= tp!58205 (and (inv!2063 (right!1625 (c!25267 input!576))) e!58228))))

(assert (= (and b!104740 ((_ is Node!537) (right!1625 (c!25267 input!576)))) b!104922))

(assert (= b!104923 b!104924))

(assert (= (and b!104740 ((_ is Leaf!858) (right!1625 (c!25267 input!576)))) b!104923))

(declare-fun m!91354 () Bool)

(assert (=> b!104922 m!91354))

(declare-fun m!91356 () Bool)

(assert (=> b!104922 m!91356))

(declare-fun m!91358 () Bool)

(assert (=> b!104923 m!91358))

(assert (=> b!104740 m!91254))

(check-sat b_and!4685 tp_is_empty!783 (not b!104909) (not b!104867) (not d!25195) b_and!4677 (not b!104855) b_and!4675 (not b_next!3157) (not b!104902) (not b!104895) (not b!104917) (not b!104905) (not b!104922) (not b!104857) (not b_next!3153) (not b!104812) (not b!104854) (not b_next!3155) (not b!104910) (not b!104883) (not b!104868) (not b!104907) (not b!104894) (not b!104899) (not d!25197) (not d!25175) b_and!4683 (not b!104897) (not b!104903) (not b_next!3167) (not b!104906) (not b!104901) (not d!25185) (not d!25183) (not b!104920) (not d!25177) (not b!104921) (not d!25173) (not b!104884) (not b!104915) (not b!104913) (not b!104858) (not b!104911) (not b!104898) (not b!104885) b_and!4673 (not b!104923) (not b_next!3159) (not d!25193) (not b!104848) (not b!104891) (not b!104919) (not b!104820) (not b!104886) (not b!104924) (not b!104740) b_and!4671 (not b!104916) (not d!25171) (not b!104882) (not b_next!3165) (not b!104881) (not b!104914) (not b!104893) (not b!104852))
(check-sat b_and!4685 (not b_next!3153) (not b_next!3155) b_and!4683 (not b_next!3167) b_and!4673 (not b_next!3159) b_and!4677 b_and!4671 (not b_next!3165) b_and!4675 (not b_next!3157))
