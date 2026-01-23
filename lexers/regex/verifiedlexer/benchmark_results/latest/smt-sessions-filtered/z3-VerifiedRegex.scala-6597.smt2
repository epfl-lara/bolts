; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348654 () Bool)

(assert start!348654)

(declare-fun b!3700616 () Bool)

(declare-fun b_free!98601 () Bool)

(declare-fun b_next!99305 () Bool)

(assert (=> b!3700616 (= b_free!98601 (not b_next!99305))))

(declare-fun tp!1124924 () Bool)

(declare-fun b_and!276711 () Bool)

(assert (=> b!3700616 (= tp!1124924 b_and!276711)))

(declare-fun b_free!98603 () Bool)

(declare-fun b_next!99307 () Bool)

(assert (=> b!3700616 (= b_free!98603 (not b_next!99307))))

(declare-fun tp!1124922 () Bool)

(declare-fun b_and!276713 () Bool)

(assert (=> b!3700616 (= tp!1124922 b_and!276713)))

(declare-fun b!3700619 () Bool)

(declare-fun b_free!98605 () Bool)

(declare-fun b_next!99309 () Bool)

(assert (=> b!3700619 (= b_free!98605 (not b_next!99309))))

(declare-fun tp!1124919 () Bool)

(declare-fun b_and!276715 () Bool)

(assert (=> b!3700619 (= tp!1124919 b_and!276715)))

(declare-fun b_free!98607 () Bool)

(declare-fun b_next!99311 () Bool)

(assert (=> b!3700619 (= b_free!98607 (not b_next!99311))))

(declare-fun tp!1124923 () Bool)

(declare-fun b_and!276717 () Bool)

(assert (=> b!3700619 (= tp!1124923 b_and!276717)))

(declare-fun b!3700605 () Bool)

(declare-fun e!2291782 () Bool)

(declare-fun e!2291770 () Bool)

(assert (=> b!3700605 (= e!2291782 e!2291770)))

(declare-fun res!1505217 () Bool)

(assert (=> b!3700605 (=> (not res!1505217) (not e!2291770))))

(declare-datatypes ((C!21652 0))(
  ( (C!21653 (val!12874 Int)) )
))
(declare-datatypes ((List!39444 0))(
  ( (Nil!39320) (Cons!39320 (h!44740 C!21652) (t!301989 List!39444)) )
))
(declare-datatypes ((IArray!24147 0))(
  ( (IArray!24148 (innerList!12131 List!39444)) )
))
(declare-datatypes ((Conc!12071 0))(
  ( (Node!12071 (left!30608 Conc!12071) (right!30938 Conc!12071) (csize!24372 Int) (cheight!12282 Int)) (Leaf!18669 (xs!15273 IArray!24147) (csize!24373 Int)) (Empty!12071) )
))
(declare-datatypes ((BalanceConc!23756 0))(
  ( (BalanceConc!23757 (c!639454 Conc!12071)) )
))
(declare-datatypes ((List!39445 0))(
  ( (Nil!39321) (Cons!39321 (h!44741 (_ BitVec 16)) (t!301990 List!39445)) )
))
(declare-datatypes ((TokenValue!6204 0))(
  ( (FloatLiteralValue!12408 (text!43873 List!39445)) (TokenValueExt!6203 (__x!24625 Int)) (Broken!31020 (value!190687 List!39445)) (Object!6327) (End!6204) (Def!6204) (Underscore!6204) (Match!6204) (Else!6204) (Error!6204) (Case!6204) (If!6204) (Extends!6204) (Abstract!6204) (Class!6204) (Val!6204) (DelimiterValue!12408 (del!6264 List!39445)) (KeywordValue!6210 (value!190688 List!39445)) (CommentValue!12408 (value!190689 List!39445)) (WhitespaceValue!12408 (value!190690 List!39445)) (IndentationValue!6204 (value!190691 List!39445)) (String!44353) (Int32!6204) (Broken!31021 (value!190692 List!39445)) (Boolean!6205) (Unit!57287) (OperatorValue!6207 (op!6264 List!39445)) (IdentifierValue!12408 (value!190693 List!39445)) (IdentifierValue!12409 (value!190694 List!39445)) (WhitespaceValue!12409 (value!190695 List!39445)) (True!12408) (False!12408) (Broken!31022 (value!190696 List!39445)) (Broken!31023 (value!190697 List!39445)) (True!12409) (RightBrace!6204) (RightBracket!6204) (Colon!6204) (Null!6204) (Comma!6204) (LeftBracket!6204) (False!12409) (LeftBrace!6204) (ImaginaryLiteralValue!6204 (text!43874 List!39445)) (StringLiteralValue!18612 (value!190698 List!39445)) (EOFValue!6204 (value!190699 List!39445)) (IdentValue!6204 (value!190700 List!39445)) (DelimiterValue!12409 (value!190701 List!39445)) (DedentValue!6204 (value!190702 List!39445)) (NewLineValue!6204 (value!190703 List!39445)) (IntegerValue!18612 (value!190704 (_ BitVec 32)) (text!43875 List!39445)) (IntegerValue!18613 (value!190705 Int) (text!43876 List!39445)) (Times!6204) (Or!6204) (Equal!6204) (Minus!6204) (Broken!31024 (value!190706 List!39445)) (And!6204) (Div!6204) (LessEqual!6204) (Mod!6204) (Concat!16937) (Not!6204) (Plus!6204) (SpaceValue!6204 (value!190707 List!39445)) (IntegerValue!18614 (value!190708 Int) (text!43877 List!39445)) (StringLiteralValue!18613 (text!43878 List!39445)) (FloatLiteralValue!12409 (text!43879 List!39445)) (BytesLiteralValue!6204 (value!190709 List!39445)) (CommentValue!12409 (value!190710 List!39445)) (StringLiteralValue!18614 (value!190711 List!39445)) (ErrorTokenValue!6204 (msg!6265 List!39445)) )
))
(declare-datatypes ((Regex!10733 0))(
  ( (ElementMatch!10733 (c!639455 C!21652)) (Concat!16938 (regOne!21978 Regex!10733) (regTwo!21978 Regex!10733)) (EmptyExpr!10733) (Star!10733 (reg!11062 Regex!10733)) (EmptyLang!10733) (Union!10733 (regOne!21979 Regex!10733) (regTwo!21979 Regex!10733)) )
))
(declare-datatypes ((String!44354 0))(
  ( (String!44355 (value!190712 String)) )
))
(declare-datatypes ((TokenValueInjection!11836 0))(
  ( (TokenValueInjection!11837 (toValue!8310 Int) (toChars!8169 Int)) )
))
(declare-datatypes ((Rule!11748 0))(
  ( (Rule!11749 (regex!5974 Regex!10733) (tag!6806 String!44354) (isSeparator!5974 Bool) (transformation!5974 TokenValueInjection!11836)) )
))
(declare-datatypes ((Token!11302 0))(
  ( (Token!11303 (value!190713 TokenValue!6204) (rule!8842 Rule!11748) (size!29986 Int) (originalCharacters!6682 List!39444)) )
))
(declare-datatypes ((tuple2!39184 0))(
  ( (tuple2!39185 (_1!22726 Token!11302) (_2!22726 List!39444)) )
))
(declare-datatypes ((Option!8511 0))(
  ( (None!8510) (Some!8510 (v!38470 tuple2!39184)) )
))
(declare-fun lt!1294987 () Option!8511)

(declare-fun isDefined!6700 (Option!8511) Bool)

(assert (=> b!3700605 (= res!1505217 (isDefined!6700 lt!1294987))))

(declare-fun input!3172 () List!39444)

(declare-datatypes ((List!39446 0))(
  ( (Nil!39322) (Cons!39322 (h!44742 Rule!11748) (t!301991 List!39446)) )
))
(declare-fun rules!3598 () List!39446)

(declare-datatypes ((LexerInterface!5563 0))(
  ( (LexerInterfaceExt!5560 (__x!24626 Int)) (Lexer!5561) )
))
(declare-fun thiss!25322 () LexerInterface!5563)

(declare-fun maxPrefix!3085 (LexerInterface!5563 List!39446 List!39444) Option!8511)

(assert (=> b!3700605 (= lt!1294987 (maxPrefix!3085 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3700606 () Bool)

(declare-fun res!1505220 () Bool)

(assert (=> b!3700606 (=> (not res!1505220) (not e!2291770))))

(declare-fun token!544 () Token!11302)

(declare-fun get!13085 (Option!8511) tuple2!39184)

(assert (=> b!3700606 (= res!1505220 (= (_1!22726 (get!13085 lt!1294987)) token!544))))

(declare-fun e!2291773 () Bool)

(declare-fun b!3700607 () Bool)

(declare-fun e!2291776 () Bool)

(declare-fun tp!1124920 () Bool)

(declare-fun inv!52843 (String!44354) Bool)

(declare-fun inv!52846 (TokenValueInjection!11836) Bool)

(assert (=> b!3700607 (= e!2291773 (and tp!1124920 (inv!52843 (tag!6806 (rule!8842 token!544))) (inv!52846 (transformation!5974 (rule!8842 token!544))) e!2291776))))

(declare-fun res!1505226 () Bool)

(assert (=> start!348654 (=> (not res!1505226) (not e!2291782))))

(get-info :version)

(assert (=> start!348654 (= res!1505226 ((_ is Lexer!5561) thiss!25322))))

(assert (=> start!348654 e!2291782))

(assert (=> start!348654 true))

(declare-fun e!2291775 () Bool)

(assert (=> start!348654 e!2291775))

(declare-fun e!2291769 () Bool)

(declare-fun inv!52847 (Token!11302) Bool)

(assert (=> start!348654 (and (inv!52847 token!544) e!2291769)))

(declare-fun e!2291772 () Bool)

(assert (=> start!348654 e!2291772))

(declare-fun b!3700608 () Bool)

(declare-fun res!1505221 () Bool)

(assert (=> b!3700608 (=> (not res!1505221) (not e!2291782))))

(declare-fun rulesInvariant!4960 (LexerInterface!5563 List!39446) Bool)

(assert (=> b!3700608 (= res!1505221 (rulesInvariant!4960 thiss!25322 rules!3598))))

(declare-fun b!3700609 () Bool)

(declare-fun res!1505218 () Bool)

(declare-fun e!2291781 () Bool)

(assert (=> b!3700609 (=> (not res!1505218) (not e!2291781))))

(declare-fun isEmpty!23436 (List!39446) Bool)

(assert (=> b!3700609 (= res!1505218 (not (isEmpty!23436 (t!301991 rules!3598))))))

(declare-fun b!3700610 () Bool)

(declare-fun e!2291774 () Bool)

(declare-fun lt!1294988 () Rule!11748)

(assert (=> b!3700610 (= e!2291774 (= (rule!8842 token!544) lt!1294988))))

(declare-fun b!3700611 () Bool)

(assert (=> b!3700611 (= e!2291781 (not true))))

(declare-fun e!2291780 () Bool)

(assert (=> b!3700611 e!2291780))

(declare-fun res!1505227 () Bool)

(assert (=> b!3700611 (=> (not res!1505227) (not e!2291780))))

(declare-datatypes ((Option!8512 0))(
  ( (None!8511) (Some!8511 (v!38471 Rule!11748)) )
))
(declare-fun lt!1294986 () Option!8512)

(declare-fun isDefined!6701 (Option!8512) Bool)

(assert (=> b!3700611 (= res!1505227 (isDefined!6701 lt!1294986))))

(declare-fun getRuleFromTag!1514 (LexerInterface!5563 List!39446 String!44354) Option!8512)

(assert (=> b!3700611 (= lt!1294986 (getRuleFromTag!1514 thiss!25322 (t!301991 rules!3598) (tag!6806 (rule!8842 token!544))))))

(declare-datatypes ((Unit!57288 0))(
  ( (Unit!57289) )
))
(declare-fun lt!1294990 () Unit!57288)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1500 (LexerInterface!5563 List!39446 List!39444 Token!11302) Unit!57288)

(assert (=> b!3700611 (= lt!1294990 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1500 thiss!25322 (t!301991 rules!3598) input!3172 token!544))))

(assert (=> b!3700611 (rulesInvariant!4960 thiss!25322 (t!301991 rules!3598))))

(declare-fun lt!1294985 () Unit!57288)

(declare-fun lemmaInvariantOnRulesThenOnTail!670 (LexerInterface!5563 Rule!11748 List!39446) Unit!57288)

(assert (=> b!3700611 (= lt!1294985 (lemmaInvariantOnRulesThenOnTail!670 thiss!25322 (h!44742 rules!3598) (t!301991 rules!3598)))))

(declare-fun b!3700612 () Bool)

(declare-fun tp_is_empty!18541 () Bool)

(declare-fun tp!1124925 () Bool)

(assert (=> b!3700612 (= e!2291772 (and tp_is_empty!18541 tp!1124925))))

(declare-fun b!3700613 () Bool)

(declare-fun tp!1124918 () Bool)

(declare-fun inv!21 (TokenValue!6204) Bool)

(assert (=> b!3700613 (= e!2291769 (and (inv!21 (value!190713 token!544)) e!2291773 tp!1124918))))

(declare-fun b!3700614 () Bool)

(declare-fun e!2291771 () Bool)

(declare-fun lt!1294989 () Option!8511)

(assert (=> b!3700614 (= e!2291771 (not (= (_1!22726 (get!13085 lt!1294989)) token!544)))))

(declare-fun b!3700615 () Bool)

(assert (=> b!3700615 (= e!2291770 e!2291781)))

(declare-fun res!1505224 () Bool)

(assert (=> b!3700615 (=> (not res!1505224) (not e!2291781))))

(assert (=> b!3700615 (= res!1505224 e!2291771)))

(declare-fun res!1505225 () Bool)

(assert (=> b!3700615 (=> res!1505225 e!2291771)))

(assert (=> b!3700615 (= res!1505225 (not (isDefined!6700 lt!1294989)))))

(declare-fun maxPrefixOneRule!2195 (LexerInterface!5563 Rule!11748 List!39444) Option!8511)

(assert (=> b!3700615 (= lt!1294989 (maxPrefixOneRule!2195 thiss!25322 (h!44742 rules!3598) input!3172))))

(assert (=> b!3700616 (= e!2291776 (and tp!1124924 tp!1124922))))

(declare-fun b!3700617 () Bool)

(declare-fun e!2291768 () Bool)

(declare-fun tp!1124921 () Bool)

(declare-fun e!2291777 () Bool)

(assert (=> b!3700617 (= e!2291777 (and tp!1124921 (inv!52843 (tag!6806 (h!44742 rules!3598))) (inv!52846 (transformation!5974 (h!44742 rules!3598))) e!2291768))))

(declare-fun b!3700618 () Bool)

(assert (=> b!3700618 (= e!2291780 e!2291774)))

(declare-fun res!1505223 () Bool)

(assert (=> b!3700618 (=> (not res!1505223) (not e!2291774))))

(declare-fun matchR!5266 (Regex!10733 List!39444) Bool)

(declare-fun list!14685 (BalanceConc!23756) List!39444)

(declare-fun charsOf!3963 (Token!11302) BalanceConc!23756)

(assert (=> b!3700618 (= res!1505223 (matchR!5266 (regex!5974 lt!1294988) (list!14685 (charsOf!3963 token!544))))))

(declare-fun get!13086 (Option!8512) Rule!11748)

(assert (=> b!3700618 (= lt!1294988 (get!13086 lt!1294986))))

(assert (=> b!3700619 (= e!2291768 (and tp!1124919 tp!1124923))))

(declare-fun b!3700620 () Bool)

(declare-fun res!1505222 () Bool)

(assert (=> b!3700620 (=> (not res!1505222) (not e!2291782))))

(assert (=> b!3700620 (= res!1505222 (not (isEmpty!23436 rules!3598)))))

(declare-fun b!3700621 () Bool)

(declare-fun tp!1124926 () Bool)

(assert (=> b!3700621 (= e!2291775 (and e!2291777 tp!1124926))))

(declare-fun b!3700622 () Bool)

(declare-fun res!1505219 () Bool)

(assert (=> b!3700622 (=> (not res!1505219) (not e!2291770))))

(assert (=> b!3700622 (= res!1505219 ((_ is Cons!39322) rules!3598))))

(assert (= (and start!348654 res!1505226) b!3700608))

(assert (= (and b!3700608 res!1505221) b!3700620))

(assert (= (and b!3700620 res!1505222) b!3700605))

(assert (= (and b!3700605 res!1505217) b!3700606))

(assert (= (and b!3700606 res!1505220) b!3700622))

(assert (= (and b!3700622 res!1505219) b!3700615))

(assert (= (and b!3700615 (not res!1505225)) b!3700614))

(assert (= (and b!3700615 res!1505224) b!3700609))

(assert (= (and b!3700609 res!1505218) b!3700611))

(assert (= (and b!3700611 res!1505227) b!3700618))

(assert (= (and b!3700618 res!1505223) b!3700610))

(assert (= b!3700617 b!3700619))

(assert (= b!3700621 b!3700617))

(assert (= (and start!348654 ((_ is Cons!39322) rules!3598)) b!3700621))

(assert (= b!3700607 b!3700616))

(assert (= b!3700613 b!3700607))

(assert (= start!348654 b!3700613))

(assert (= (and start!348654 ((_ is Cons!39320) input!3172)) b!3700612))

(declare-fun m!4211761 () Bool)

(assert (=> b!3700608 m!4211761))

(declare-fun m!4211763 () Bool)

(assert (=> b!3700617 m!4211763))

(declare-fun m!4211765 () Bool)

(assert (=> b!3700617 m!4211765))

(declare-fun m!4211767 () Bool)

(assert (=> b!3700611 m!4211767))

(declare-fun m!4211769 () Bool)

(assert (=> b!3700611 m!4211769))

(declare-fun m!4211771 () Bool)

(assert (=> b!3700611 m!4211771))

(declare-fun m!4211773 () Bool)

(assert (=> b!3700611 m!4211773))

(declare-fun m!4211775 () Bool)

(assert (=> b!3700611 m!4211775))

(declare-fun m!4211777 () Bool)

(assert (=> b!3700613 m!4211777))

(declare-fun m!4211779 () Bool)

(assert (=> b!3700606 m!4211779))

(declare-fun m!4211781 () Bool)

(assert (=> b!3700609 m!4211781))

(declare-fun m!4211783 () Bool)

(assert (=> b!3700605 m!4211783))

(declare-fun m!4211785 () Bool)

(assert (=> b!3700605 m!4211785))

(declare-fun m!4211787 () Bool)

(assert (=> b!3700618 m!4211787))

(assert (=> b!3700618 m!4211787))

(declare-fun m!4211789 () Bool)

(assert (=> b!3700618 m!4211789))

(assert (=> b!3700618 m!4211789))

(declare-fun m!4211791 () Bool)

(assert (=> b!3700618 m!4211791))

(declare-fun m!4211793 () Bool)

(assert (=> b!3700618 m!4211793))

(declare-fun m!4211795 () Bool)

(assert (=> b!3700614 m!4211795))

(declare-fun m!4211797 () Bool)

(assert (=> b!3700615 m!4211797))

(declare-fun m!4211799 () Bool)

(assert (=> b!3700615 m!4211799))

(declare-fun m!4211801 () Bool)

(assert (=> b!3700620 m!4211801))

(declare-fun m!4211803 () Bool)

(assert (=> b!3700607 m!4211803))

(declare-fun m!4211805 () Bool)

(assert (=> b!3700607 m!4211805))

(declare-fun m!4211807 () Bool)

(assert (=> start!348654 m!4211807))

(check-sat (not start!348654) (not b!3700617) (not b!3700613) (not b!3700609) b_and!276713 (not b!3700615) tp_is_empty!18541 (not b!3700608) (not b!3700620) b_and!276711 b_and!276715 (not b!3700621) b_and!276717 (not b_next!99307) (not b!3700618) (not b!3700606) (not b_next!99311) (not b_next!99305) (not b!3700612) (not b!3700607) (not b!3700614) (not b!3700611) (not b!3700605) (not b_next!99309))
(check-sat b_and!276713 (not b_next!99307) b_and!276711 b_and!276715 (not b_next!99311) (not b_next!99305) (not b_next!99309) b_and!276717)
