; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!373540 () Bool)

(assert start!373540)

(declare-fun b!3969635 () Bool)

(declare-fun b_free!109881 () Bool)

(declare-fun b_next!110585 () Bool)

(assert (=> b!3969635 (= b_free!109881 (not b_next!110585))))

(declare-fun tp!1210104 () Bool)

(declare-fun b_and!305111 () Bool)

(assert (=> b!3969635 (= tp!1210104 b_and!305111)))

(declare-fun b_free!109883 () Bool)

(declare-fun b_next!110587 () Bool)

(assert (=> b!3969635 (= b_free!109883 (not b_next!110587))))

(declare-fun tp!1210102 () Bool)

(declare-fun b_and!305113 () Bool)

(assert (=> b!3969635 (= tp!1210102 b_and!305113)))

(declare-fun b!3969634 () Bool)

(declare-fun b_free!109885 () Bool)

(declare-fun b_next!110589 () Bool)

(assert (=> b!3969634 (= b_free!109885 (not b_next!110589))))

(declare-fun tp!1210101 () Bool)

(declare-fun b_and!305115 () Bool)

(assert (=> b!3969634 (= tp!1210101 b_and!305115)))

(declare-fun b_free!109887 () Bool)

(declare-fun b_next!110591 () Bool)

(assert (=> b!3969634 (= b_free!109887 (not b_next!110591))))

(declare-fun tp!1210098 () Bool)

(declare-fun b_and!305117 () Bool)

(assert (=> b!3969634 (= tp!1210098 b_and!305117)))

(declare-fun b!3969625 () Bool)

(declare-fun e!2458774 () Bool)

(declare-fun tp_is_empty!20085 () Bool)

(declare-fun tp!1210106 () Bool)

(assert (=> b!3969625 (= e!2458774 (and tp_is_empty!20085 tp!1210106))))

(declare-fun b!3969626 () Bool)

(declare-fun e!2458784 () Bool)

(declare-fun tp!1210105 () Bool)

(assert (=> b!3969626 (= e!2458784 (and tp_is_empty!20085 tp!1210105))))

(declare-fun b!3969627 () Bool)

(declare-fun e!2458781 () Bool)

(declare-fun tp!1210099 () Bool)

(assert (=> b!3969627 (= e!2458781 (and tp_is_empty!20085 tp!1210099))))

(declare-fun b!3969628 () Bool)

(declare-fun res!1606778 () Bool)

(declare-fun e!2458779 () Bool)

(assert (=> b!3969628 (=> (not res!1606778) (not e!2458779))))

(declare-datatypes ((C!23300 0))(
  ( (C!23301 (val!13744 Int)) )
))
(declare-datatypes ((List!42462 0))(
  ( (Nil!42338) (Cons!42338 (h!47758 C!23300) (t!330817 List!42462)) )
))
(declare-datatypes ((IArray!25731 0))(
  ( (IArray!25732 (innerList!12923 List!42462)) )
))
(declare-datatypes ((Conc!12863 0))(
  ( (Node!12863 (left!32079 Conc!12863) (right!32409 Conc!12863) (csize!25956 Int) (cheight!13074 Int)) (Leaf!19896 (xs!16169 IArray!25731) (csize!25957 Int)) (Empty!12863) )
))
(declare-datatypes ((BalanceConc!25320 0))(
  ( (BalanceConc!25321 (c!688650 Conc!12863)) )
))
(declare-datatypes ((String!48127 0))(
  ( (String!48128 (value!210190 String)) )
))
(declare-datatypes ((List!42463 0))(
  ( (Nil!42339) (Cons!42339 (h!47759 (_ BitVec 16)) (t!330818 List!42463)) )
))
(declare-datatypes ((TokenValue!6882 0))(
  ( (FloatLiteralValue!13764 (text!48619 List!42463)) (TokenValueExt!6881 (__x!25981 Int)) (Broken!34410 (value!210191 List!42463)) (Object!7005) (End!6882) (Def!6882) (Underscore!6882) (Match!6882) (Else!6882) (Error!6882) (Case!6882) (If!6882) (Extends!6882) (Abstract!6882) (Class!6882) (Val!6882) (DelimiterValue!13764 (del!6942 List!42463)) (KeywordValue!6888 (value!210192 List!42463)) (CommentValue!13764 (value!210193 List!42463)) (WhitespaceValue!13764 (value!210194 List!42463)) (IndentationValue!6882 (value!210195 List!42463)) (String!48129) (Int32!6882) (Broken!34411 (value!210196 List!42463)) (Boolean!6883) (Unit!60991) (OperatorValue!6885 (op!6942 List!42463)) (IdentifierValue!13764 (value!210197 List!42463)) (IdentifierValue!13765 (value!210198 List!42463)) (WhitespaceValue!13765 (value!210199 List!42463)) (True!13764) (False!13764) (Broken!34412 (value!210200 List!42463)) (Broken!34413 (value!210201 List!42463)) (True!13765) (RightBrace!6882) (RightBracket!6882) (Colon!6882) (Null!6882) (Comma!6882) (LeftBracket!6882) (False!13765) (LeftBrace!6882) (ImaginaryLiteralValue!6882 (text!48620 List!42463)) (StringLiteralValue!20646 (value!210202 List!42463)) (EOFValue!6882 (value!210203 List!42463)) (IdentValue!6882 (value!210204 List!42463)) (DelimiterValue!13765 (value!210205 List!42463)) (DedentValue!6882 (value!210206 List!42463)) (NewLineValue!6882 (value!210207 List!42463)) (IntegerValue!20646 (value!210208 (_ BitVec 32)) (text!48621 List!42463)) (IntegerValue!20647 (value!210209 Int) (text!48622 List!42463)) (Times!6882) (Or!6882) (Equal!6882) (Minus!6882) (Broken!34414 (value!210210 List!42463)) (And!6882) (Div!6882) (LessEqual!6882) (Mod!6882) (Concat!18439) (Not!6882) (Plus!6882) (SpaceValue!6882 (value!210211 List!42463)) (IntegerValue!20648 (value!210212 Int) (text!48623 List!42463)) (StringLiteralValue!20647 (text!48624 List!42463)) (FloatLiteralValue!13765 (text!48625 List!42463)) (BytesLiteralValue!6882 (value!210213 List!42463)) (CommentValue!13765 (value!210214 List!42463)) (StringLiteralValue!20648 (value!210215 List!42463)) (ErrorTokenValue!6882 (msg!6943 List!42463)) )
))
(declare-datatypes ((Regex!11557 0))(
  ( (ElementMatch!11557 (c!688651 C!23300)) (Concat!18440 (regOne!23626 Regex!11557) (regTwo!23626 Regex!11557)) (EmptyExpr!11557) (Star!11557 (reg!11886 Regex!11557)) (EmptyLang!11557) (Union!11557 (regOne!23627 Regex!11557) (regTwo!23627 Regex!11557)) )
))
(declare-datatypes ((TokenValueInjection!13192 0))(
  ( (TokenValueInjection!13193 (toValue!9140 Int) (toChars!8999 Int)) )
))
(declare-datatypes ((Rule!13104 0))(
  ( (Rule!13105 (regex!6652 Regex!11557) (tag!7512 String!48127) (isSeparator!6652 Bool) (transformation!6652 TokenValueInjection!13192)) )
))
(declare-datatypes ((List!42464 0))(
  ( (Nil!42340) (Cons!42340 (h!47760 Rule!13104) (t!330819 List!42464)) )
))
(declare-fun rules!2999 () List!42464)

(declare-fun isEmpty!25336 (List!42464) Bool)

(assert (=> b!3969628 (= res!1606778 (not (isEmpty!25336 rules!2999)))))

(declare-fun b!3969629 () Bool)

(declare-fun e!2458778 () Bool)

(declare-fun tp!1210096 () Bool)

(assert (=> b!3969629 (= e!2458778 (and tp_is_empty!20085 tp!1210096))))

(declare-fun b!3969630 () Bool)

(declare-fun e!2458782 () Bool)

(declare-fun tp!1210097 () Bool)

(assert (=> b!3969630 (= e!2458782 (and tp_is_empty!20085 tp!1210097))))

(declare-fun b!3969631 () Bool)

(declare-fun e!2458775 () Bool)

(assert (=> b!3969631 (= e!2458775 false)))

(declare-fun lt!1390288 () Bool)

(declare-datatypes ((LexerInterface!6241 0))(
  ( (LexerInterfaceExt!6238 (__x!25982 Int)) (Lexer!6239) )
))
(declare-fun thiss!21717 () LexerInterface!6241)

(declare-fun rulesValidInductive!2414 (LexerInterface!6241 List!42464) Bool)

(assert (=> b!3969631 (= lt!1390288 (rulesValidInductive!2414 thiss!21717 rules!2999))))

(declare-fun b!3969632 () Bool)

(declare-fun res!1606777 () Bool)

(assert (=> b!3969632 (=> (not res!1606777) (not e!2458775))))

(declare-fun prefix!494 () List!42462)

(declare-datatypes ((Token!12442 0))(
  ( (Token!12443 (value!210216 TokenValue!6882) (rule!9640 Rule!13104) (size!31684 Int) (originalCharacters!7252 List!42462)) )
))
(declare-fun token!484 () Token!12442)

(declare-fun suffixResult!105 () List!42462)

(declare-fun suffix!1299 () List!42462)

(declare-datatypes ((tuple2!41616 0))(
  ( (tuple2!41617 (_1!23942 Token!12442) (_2!23942 List!42462)) )
))
(declare-datatypes ((Option!9066 0))(
  ( (None!9065) (Some!9065 (v!39413 tuple2!41616)) )
))
(declare-fun maxPrefix!3539 (LexerInterface!6241 List!42464 List!42462) Option!9066)

(declare-fun ++!11054 (List!42462 List!42462) List!42462)

(assert (=> b!3969632 (= res!1606777 (= (maxPrefix!3539 thiss!21717 rules!2999 (++!11054 prefix!494 suffix!1299)) (Some!9065 (tuple2!41617 token!484 suffixResult!105))))))

(declare-fun b!3969633 () Bool)

(declare-fun tp!1210094 () Bool)

(declare-fun e!2458771 () Bool)

(declare-fun e!2458783 () Bool)

(declare-fun inv!21 (TokenValue!6882) Bool)

(assert (=> b!3969633 (= e!2458783 (and (inv!21 (value!210216 token!484)) e!2458771 tp!1210094))))

(declare-fun e!2458777 () Bool)

(assert (=> b!3969634 (= e!2458777 (and tp!1210101 tp!1210098))))

(declare-fun e!2458780 () Bool)

(assert (=> b!3969635 (= e!2458780 (and tp!1210104 tp!1210102))))

(declare-fun b!3969636 () Bool)

(assert (=> b!3969636 (= e!2458779 e!2458775)))

(declare-fun res!1606774 () Bool)

(assert (=> b!3969636 (=> (not res!1606774) (not e!2458775))))

(declare-fun lt!1390289 () List!42462)

(declare-fun size!31685 (List!42462) Int)

(assert (=> b!3969636 (= res!1606774 (>= (size!31685 prefix!494) (size!31685 lt!1390289)))))

(declare-fun list!15710 (BalanceConc!25320) List!42462)

(declare-fun charsOf!4468 (Token!12442) BalanceConc!25320)

(assert (=> b!3969636 (= lt!1390289 (list!15710 (charsOf!4468 token!484)))))

(declare-fun b!3969637 () Bool)

(declare-fun res!1606780 () Bool)

(assert (=> b!3969637 (=> (not res!1606780) (not e!2458779))))

(declare-fun rulesInvariant!5584 (LexerInterface!6241 List!42464) Bool)

(assert (=> b!3969637 (= res!1606780 (rulesInvariant!5584 thiss!21717 rules!2999))))

(declare-fun e!2458773 () Bool)

(declare-fun tp!1210095 () Bool)

(declare-fun b!3969638 () Bool)

(declare-fun inv!56578 (String!48127) Bool)

(declare-fun inv!56581 (TokenValueInjection!13192) Bool)

(assert (=> b!3969638 (= e!2458773 (and tp!1210095 (inv!56578 (tag!7512 (h!47760 rules!2999))) (inv!56581 (transformation!6652 (h!47760 rules!2999))) e!2458780))))

(declare-fun b!3969639 () Bool)

(declare-fun res!1606776 () Bool)

(assert (=> b!3969639 (=> (not res!1606776) (not e!2458779))))

(declare-fun newSuffix!27 () List!42462)

(assert (=> b!3969639 (= res!1606776 (>= (size!31685 suffix!1299) (size!31685 newSuffix!27)))))

(declare-fun b!3969640 () Bool)

(declare-fun res!1606775 () Bool)

(assert (=> b!3969640 (=> (not res!1606775) (not e!2458779))))

(declare-fun isPrefix!3739 (List!42462 List!42462) Bool)

(assert (=> b!3969640 (= res!1606775 (isPrefix!3739 newSuffix!27 suffix!1299))))

(declare-fun b!3969641 () Bool)

(declare-fun res!1606772 () Bool)

(assert (=> b!3969641 (=> (not res!1606772) (not e!2458775))))

(declare-fun newSuffixResult!27 () List!42462)

(assert (=> b!3969641 (= res!1606772 (= (++!11054 lt!1390289 newSuffixResult!27) (++!11054 prefix!494 newSuffix!27)))))

(declare-fun b!3969642 () Bool)

(declare-fun res!1606773 () Bool)

(assert (=> b!3969642 (=> (not res!1606773) (not e!2458775))))

(declare-fun contains!8444 (List!42464 Rule!13104) Bool)

(assert (=> b!3969642 (= res!1606773 (contains!8444 rules!2999 (rule!9640 token!484)))))

(declare-fun b!3969643 () Bool)

(declare-fun e!2458769 () Bool)

(declare-fun tp!1210103 () Bool)

(assert (=> b!3969643 (= e!2458769 (and e!2458773 tp!1210103))))

(declare-fun res!1606779 () Bool)

(assert (=> start!373540 (=> (not res!1606779) (not e!2458779))))

(get-info :version)

(assert (=> start!373540 (= res!1606779 ((_ is Lexer!6239) thiss!21717))))

(assert (=> start!373540 e!2458779))

(assert (=> start!373540 e!2458784))

(declare-fun inv!56582 (Token!12442) Bool)

(assert (=> start!373540 (and (inv!56582 token!484) e!2458783)))

(assert (=> start!373540 e!2458782))

(assert (=> start!373540 e!2458778))

(assert (=> start!373540 e!2458781))

(assert (=> start!373540 true))

(assert (=> start!373540 e!2458769))

(assert (=> start!373540 e!2458774))

(declare-fun tp!1210100 () Bool)

(declare-fun b!3969644 () Bool)

(assert (=> b!3969644 (= e!2458771 (and tp!1210100 (inv!56578 (tag!7512 (rule!9640 token!484))) (inv!56581 (transformation!6652 (rule!9640 token!484))) e!2458777))))

(assert (= (and start!373540 res!1606779) b!3969628))

(assert (= (and b!3969628 res!1606778) b!3969637))

(assert (= (and b!3969637 res!1606780) b!3969639))

(assert (= (and b!3969639 res!1606776) b!3969640))

(assert (= (and b!3969640 res!1606775) b!3969636))

(assert (= (and b!3969636 res!1606774) b!3969641))

(assert (= (and b!3969641 res!1606772) b!3969632))

(assert (= (and b!3969632 res!1606777) b!3969642))

(assert (= (and b!3969642 res!1606773) b!3969631))

(assert (= (and start!373540 ((_ is Cons!42338) prefix!494)) b!3969626))

(assert (= b!3969644 b!3969634))

(assert (= b!3969633 b!3969644))

(assert (= start!373540 b!3969633))

(assert (= (and start!373540 ((_ is Cons!42338) suffixResult!105)) b!3969630))

(assert (= (and start!373540 ((_ is Cons!42338) suffix!1299)) b!3969629))

(assert (= (and start!373540 ((_ is Cons!42338) newSuffix!27)) b!3969627))

(assert (= b!3969638 b!3969635))

(assert (= b!3969643 b!3969638))

(assert (= (and start!373540 ((_ is Cons!42340) rules!2999)) b!3969643))

(assert (= (and start!373540 ((_ is Cons!42338) newSuffixResult!27)) b!3969625))

(declare-fun m!4539915 () Bool)

(assert (=> b!3969628 m!4539915))

(declare-fun m!4539917 () Bool)

(assert (=> b!3969636 m!4539917))

(declare-fun m!4539919 () Bool)

(assert (=> b!3969636 m!4539919))

(declare-fun m!4539921 () Bool)

(assert (=> b!3969636 m!4539921))

(assert (=> b!3969636 m!4539921))

(declare-fun m!4539923 () Bool)

(assert (=> b!3969636 m!4539923))

(declare-fun m!4539925 () Bool)

(assert (=> b!3969639 m!4539925))

(declare-fun m!4539927 () Bool)

(assert (=> b!3969639 m!4539927))

(declare-fun m!4539929 () Bool)

(assert (=> b!3969640 m!4539929))

(declare-fun m!4539931 () Bool)

(assert (=> b!3969633 m!4539931))

(declare-fun m!4539933 () Bool)

(assert (=> b!3969637 m!4539933))

(declare-fun m!4539935 () Bool)

(assert (=> b!3969642 m!4539935))

(declare-fun m!4539937 () Bool)

(assert (=> b!3969638 m!4539937))

(declare-fun m!4539939 () Bool)

(assert (=> b!3969638 m!4539939))

(declare-fun m!4539941 () Bool)

(assert (=> b!3969632 m!4539941))

(assert (=> b!3969632 m!4539941))

(declare-fun m!4539943 () Bool)

(assert (=> b!3969632 m!4539943))

(declare-fun m!4539945 () Bool)

(assert (=> start!373540 m!4539945))

(declare-fun m!4539947 () Bool)

(assert (=> b!3969631 m!4539947))

(declare-fun m!4539949 () Bool)

(assert (=> b!3969641 m!4539949))

(declare-fun m!4539951 () Bool)

(assert (=> b!3969641 m!4539951))

(declare-fun m!4539953 () Bool)

(assert (=> b!3969644 m!4539953))

(declare-fun m!4539955 () Bool)

(assert (=> b!3969644 m!4539955))

(check-sat b_and!305111 b_and!305113 (not b_next!110589) (not b!3969642) (not b!3969625) b_and!305117 (not b!3969636) (not b!3969637) (not b!3969638) (not b!3969630) (not b!3969640) (not b!3969644) (not b_next!110587) (not b!3969627) (not b!3969639) (not b!3969632) (not b!3969629) b_and!305115 (not b!3969631) (not b!3969626) (not b_next!110585) (not b!3969641) (not start!373540) tp_is_empty!20085 (not b!3969633) (not b_next!110591) (not b!3969628) (not b!3969643))
(check-sat b_and!305111 b_and!305113 (not b_next!110589) (not b_next!110587) b_and!305117 b_and!305115 (not b_next!110585) (not b_next!110591))
