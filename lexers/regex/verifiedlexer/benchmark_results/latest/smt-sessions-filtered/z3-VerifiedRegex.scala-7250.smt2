; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386228 () Bool)

(assert start!386228)

(declare-fun b!4084812 () Bool)

(declare-fun b_free!114105 () Bool)

(declare-fun b_next!114809 () Bool)

(assert (=> b!4084812 (= b_free!114105 (not b_next!114809))))

(declare-fun tp!1236810 () Bool)

(declare-fun b_and!314439 () Bool)

(assert (=> b!4084812 (= tp!1236810 b_and!314439)))

(declare-fun b_free!114107 () Bool)

(declare-fun b_next!114811 () Bool)

(assert (=> b!4084812 (= b_free!114107 (not b_next!114811))))

(declare-fun tp!1236814 () Bool)

(declare-fun b_and!314441 () Bool)

(assert (=> b!4084812 (= tp!1236814 b_and!314441)))

(declare-fun b!4084803 () Bool)

(declare-fun b_free!114109 () Bool)

(declare-fun b_next!114813 () Bool)

(assert (=> b!4084803 (= b_free!114109 (not b_next!114813))))

(declare-fun tp!1236816 () Bool)

(declare-fun b_and!314443 () Bool)

(assert (=> b!4084803 (= tp!1236816 b_and!314443)))

(declare-fun b_free!114111 () Bool)

(declare-fun b_next!114815 () Bool)

(assert (=> b!4084803 (= b_free!114111 (not b_next!114815))))

(declare-fun tp!1236813 () Bool)

(declare-fun b_and!314445 () Bool)

(assert (=> b!4084803 (= tp!1236813 b_and!314445)))

(declare-fun b!4084796 () Bool)

(declare-fun res!1668996 () Bool)

(declare-fun e!2535229 () Bool)

(assert (=> b!4084796 (=> (not res!1668996) (not e!2535229))))

(declare-datatypes ((List!43907 0))(
  ( (Nil!43783) (Cons!43783 (h!49203 (_ BitVec 16)) (t!338042 List!43907)) )
))
(declare-datatypes ((TokenValue!7302 0))(
  ( (FloatLiteralValue!14604 (text!51559 List!43907)) (TokenValueExt!7301 (__x!26821 Int)) (Broken!36510 (value!222178 List!43907)) (Object!7425) (End!7302) (Def!7302) (Underscore!7302) (Match!7302) (Else!7302) (Error!7302) (Case!7302) (If!7302) (Extends!7302) (Abstract!7302) (Class!7302) (Val!7302) (DelimiterValue!14604 (del!7362 List!43907)) (KeywordValue!7308 (value!222179 List!43907)) (CommentValue!14604 (value!222180 List!43907)) (WhitespaceValue!14604 (value!222181 List!43907)) (IndentationValue!7302 (value!222182 List!43907)) (String!50259) (Int32!7302) (Broken!36511 (value!222183 List!43907)) (Boolean!7303) (Unit!63306) (OperatorValue!7305 (op!7362 List!43907)) (IdentifierValue!14604 (value!222184 List!43907)) (IdentifierValue!14605 (value!222185 List!43907)) (WhitespaceValue!14605 (value!222186 List!43907)) (True!14604) (False!14604) (Broken!36512 (value!222187 List!43907)) (Broken!36513 (value!222188 List!43907)) (True!14605) (RightBrace!7302) (RightBracket!7302) (Colon!7302) (Null!7302) (Comma!7302) (LeftBracket!7302) (False!14605) (LeftBrace!7302) (ImaginaryLiteralValue!7302 (text!51560 List!43907)) (StringLiteralValue!21906 (value!222189 List!43907)) (EOFValue!7302 (value!222190 List!43907)) (IdentValue!7302 (value!222191 List!43907)) (DelimiterValue!14605 (value!222192 List!43907)) (DedentValue!7302 (value!222193 List!43907)) (NewLineValue!7302 (value!222194 List!43907)) (IntegerValue!21906 (value!222195 (_ BitVec 32)) (text!51561 List!43907)) (IntegerValue!21907 (value!222196 Int) (text!51562 List!43907)) (Times!7302) (Or!7302) (Equal!7302) (Minus!7302) (Broken!36514 (value!222197 List!43907)) (And!7302) (Div!7302) (LessEqual!7302) (Mod!7302) (Concat!19279) (Not!7302) (Plus!7302) (SpaceValue!7302 (value!222198 List!43907)) (IntegerValue!21908 (value!222199 Int) (text!51563 List!43907)) (StringLiteralValue!21907 (text!51564 List!43907)) (FloatLiteralValue!14605 (text!51565 List!43907)) (BytesLiteralValue!7302 (value!222200 List!43907)) (CommentValue!14605 (value!222201 List!43907)) (StringLiteralValue!21908 (value!222202 List!43907)) (ErrorTokenValue!7302 (msg!7363 List!43907)) )
))
(declare-datatypes ((C!24140 0))(
  ( (C!24141 (val!14180 Int)) )
))
(declare-datatypes ((Regex!11977 0))(
  ( (ElementMatch!11977 (c!704222 C!24140)) (Concat!19280 (regOne!24466 Regex!11977) (regTwo!24466 Regex!11977)) (EmptyExpr!11977) (Star!11977 (reg!12306 Regex!11977)) (EmptyLang!11977) (Union!11977 (regOne!24467 Regex!11977) (regTwo!24467 Regex!11977)) )
))
(declare-datatypes ((String!50260 0))(
  ( (String!50261 (value!222203 String)) )
))
(declare-datatypes ((List!43908 0))(
  ( (Nil!43784) (Cons!43784 (h!49204 C!24140) (t!338043 List!43908)) )
))
(declare-datatypes ((IArray!26571 0))(
  ( (IArray!26572 (innerList!13343 List!43908)) )
))
(declare-datatypes ((Conc!13283 0))(
  ( (Node!13283 (left!32909 Conc!13283) (right!33239 Conc!13283) (csize!26796 Int) (cheight!13494 Int)) (Leaf!20534 (xs!16589 IArray!26571) (csize!26797 Int)) (Empty!13283) )
))
(declare-datatypes ((BalanceConc!26160 0))(
  ( (BalanceConc!26161 (c!704223 Conc!13283)) )
))
(declare-datatypes ((TokenValueInjection!14032 0))(
  ( (TokenValueInjection!14033 (toValue!9652 Int) (toChars!9511 Int)) )
))
(declare-datatypes ((Rule!13944 0))(
  ( (Rule!13945 (regex!7072 Regex!11977) (tag!7932 String!50260) (isSeparator!7072 Bool) (transformation!7072 TokenValueInjection!14032)) )
))
(declare-datatypes ((List!43909 0))(
  ( (Nil!43785) (Cons!43785 (h!49205 Rule!13944) (t!338044 List!43909)) )
))
(declare-fun rules!3870 () List!43909)

(declare-fun isEmpty!26174 (List!43909) Bool)

(assert (=> b!4084796 (= res!1668996 (not (isEmpty!26174 rules!3870)))))

(declare-fun b!4084797 () Bool)

(declare-fun e!2535226 () Bool)

(declare-fun e!2535230 () Bool)

(declare-fun tp!1236815 () Bool)

(assert (=> b!4084797 (= e!2535226 (and e!2535230 tp!1236815))))

(declare-fun b!4084798 () Bool)

(declare-fun e!2535232 () Bool)

(declare-fun e!2535227 () Bool)

(assert (=> b!4084798 (= e!2535232 (not e!2535227))))

(declare-fun res!1669000 () Bool)

(assert (=> b!4084798 (=> res!1669000 e!2535227)))

(declare-fun r!4213 () Rule!13944)

(declare-fun p!2988 () List!43908)

(declare-fun matchR!5918 (Regex!11977 List!43908) Bool)

(assert (=> b!4084798 (= res!1669000 (not (matchR!5918 (regex!7072 r!4213) p!2988)))))

(declare-datatypes ((LexerInterface!6661 0))(
  ( (LexerInterfaceExt!6658 (__x!26822 Int)) (Lexer!6659) )
))
(declare-fun thiss!26199 () LexerInterface!6661)

(declare-fun ruleValid!2992 (LexerInterface!6661 Rule!13944) Bool)

(assert (=> b!4084798 (ruleValid!2992 thiss!26199 r!4213)))

(declare-datatypes ((Unit!63307 0))(
  ( (Unit!63308) )
))
(declare-fun lt!1461059 () Unit!63307)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2058 (LexerInterface!6661 Rule!13944 List!43909) Unit!63307)

(assert (=> b!4084798 (= lt!1461059 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2058 thiss!26199 r!4213 rules!3870))))

(declare-fun res!1668994 () Bool)

(assert (=> start!386228 (=> (not res!1668994) (not e!2535229))))

(get-info :version)

(assert (=> start!386228 (= res!1668994 ((_ is Lexer!6659) thiss!26199))))

(assert (=> start!386228 e!2535229))

(assert (=> start!386228 true))

(declare-fun e!2535228 () Bool)

(assert (=> start!386228 e!2535228))

(assert (=> start!386228 e!2535226))

(declare-fun e!2535222 () Bool)

(assert (=> start!386228 e!2535222))

(declare-fun e!2535221 () Bool)

(assert (=> start!386228 e!2535221))

(declare-fun e!2535224 () Bool)

(assert (=> start!386228 e!2535224))

(declare-fun b!4084799 () Bool)

(declare-fun rulesInvariant!6004 (LexerInterface!6661 List!43909) Bool)

(assert (=> b!4084799 (= e!2535227 (rulesInvariant!6004 thiss!26199 (Cons!43785 (h!49205 rules!3870) (t!338044 rules!3870))))))

(declare-fun b!4084800 () Bool)

(declare-fun tp_is_empty!20957 () Bool)

(declare-fun tp!1236808 () Bool)

(assert (=> b!4084800 (= e!2535221 (and tp_is_empty!20957 tp!1236808))))

(declare-fun b!4084801 () Bool)

(declare-fun tp!1236807 () Bool)

(assert (=> b!4084801 (= e!2535222 (and tp_is_empty!20957 tp!1236807))))

(declare-fun b!4084802 () Bool)

(assert (=> b!4084802 (= e!2535229 e!2535232)))

(declare-fun res!1668995 () Bool)

(assert (=> b!4084802 (=> (not res!1668995) (not e!2535232))))

(declare-fun suffix!1518 () List!43908)

(declare-fun input!3411 () List!43908)

(declare-fun lt!1461061 () BalanceConc!26160)

(declare-datatypes ((Token!13270 0))(
  ( (Token!13271 (value!222204 TokenValue!7302) (rule!10198 Rule!13944) (size!32700 Int) (originalCharacters!7666 List!43908)) )
))
(declare-datatypes ((tuple2!42724 0))(
  ( (tuple2!42725 (_1!24496 Token!13270) (_2!24496 List!43908)) )
))
(declare-datatypes ((Option!9478 0))(
  ( (None!9477) (Some!9477 (v!39949 tuple2!42724)) )
))
(declare-fun maxPrefix!3951 (LexerInterface!6661 List!43909 List!43908) Option!9478)

(declare-fun apply!10255 (TokenValueInjection!14032 BalanceConc!26160) TokenValue!7302)

(declare-fun size!32701 (List!43908) Int)

(assert (=> b!4084802 (= res!1668995 (= (maxPrefix!3951 thiss!26199 rules!3870 input!3411) (Some!9477 (tuple2!42725 (Token!13271 (apply!10255 (transformation!7072 r!4213) lt!1461061) r!4213 (size!32701 p!2988) p!2988) suffix!1518))))))

(declare-fun lt!1461060 () Unit!63307)

(declare-fun lemmaSemiInverse!2039 (TokenValueInjection!14032 BalanceConc!26160) Unit!63307)

(assert (=> b!4084802 (= lt!1461060 (lemmaSemiInverse!2039 (transformation!7072 r!4213) lt!1461061))))

(declare-fun seqFromList!5289 (List!43908) BalanceConc!26160)

(assert (=> b!4084802 (= lt!1461061 (seqFromList!5289 p!2988))))

(declare-fun e!2535231 () Bool)

(assert (=> b!4084803 (= e!2535231 (and tp!1236816 tp!1236813))))

(declare-fun b!4084804 () Bool)

(declare-fun res!1668992 () Bool)

(assert (=> b!4084804 (=> (not res!1668992) (not e!2535229))))

(declare-fun ++!11478 (List!43908 List!43908) List!43908)

(assert (=> b!4084804 (= res!1668992 (= input!3411 (++!11478 p!2988 suffix!1518)))))

(declare-fun b!4084805 () Bool)

(declare-fun tp!1236809 () Bool)

(assert (=> b!4084805 (= e!2535228 (and tp_is_empty!20957 tp!1236809))))

(declare-fun tp!1236811 () Bool)

(declare-fun b!4084806 () Bool)

(declare-fun e!2535223 () Bool)

(declare-fun inv!58463 (String!50260) Bool)

(declare-fun inv!58465 (TokenValueInjection!14032) Bool)

(assert (=> b!4084806 (= e!2535224 (and tp!1236811 (inv!58463 (tag!7932 r!4213)) (inv!58465 (transformation!7072 r!4213)) e!2535223))))

(declare-fun b!4084807 () Bool)

(declare-fun res!1668999 () Bool)

(assert (=> b!4084807 (=> res!1668999 e!2535227)))

(assert (=> b!4084807 (= res!1668999 (or (not ((_ is Cons!43785) rules!3870)) (not (= (h!49205 rules!3870) r!4213))))))

(declare-fun b!4084808 () Bool)

(declare-fun res!1668997 () Bool)

(assert (=> b!4084808 (=> (not res!1668997) (not e!2535229))))

(assert (=> b!4084808 (= res!1668997 (rulesInvariant!6004 thiss!26199 rules!3870))))

(declare-fun b!4084809 () Bool)

(declare-fun res!1668998 () Bool)

(assert (=> b!4084809 (=> (not res!1668998) (not e!2535229))))

(declare-fun contains!8747 (List!43909 Rule!13944) Bool)

(assert (=> b!4084809 (= res!1668998 (contains!8747 rules!3870 r!4213))))

(declare-fun b!4084810 () Bool)

(declare-fun tp!1236812 () Bool)

(assert (=> b!4084810 (= e!2535230 (and tp!1236812 (inv!58463 (tag!7932 (h!49205 rules!3870))) (inv!58465 (transformation!7072 (h!49205 rules!3870))) e!2535231))))

(declare-fun b!4084811 () Bool)

(declare-fun res!1668993 () Bool)

(assert (=> b!4084811 (=> (not res!1668993) (not e!2535229))))

(declare-fun isEmpty!26175 (List!43908) Bool)

(assert (=> b!4084811 (= res!1668993 (not (isEmpty!26175 p!2988)))))

(assert (=> b!4084812 (= e!2535223 (and tp!1236810 tp!1236814))))

(assert (= (and start!386228 res!1668994) b!4084796))

(assert (= (and b!4084796 res!1668996) b!4084808))

(assert (= (and b!4084808 res!1668997) b!4084809))

(assert (= (and b!4084809 res!1668998) b!4084804))

(assert (= (and b!4084804 res!1668992) b!4084811))

(assert (= (and b!4084811 res!1668993) b!4084802))

(assert (= (and b!4084802 res!1668995) b!4084798))

(assert (= (and b!4084798 (not res!1669000)) b!4084807))

(assert (= (and b!4084807 (not res!1668999)) b!4084799))

(assert (= (and start!386228 ((_ is Cons!43784) suffix!1518)) b!4084805))

(assert (= b!4084810 b!4084803))

(assert (= b!4084797 b!4084810))

(assert (= (and start!386228 ((_ is Cons!43785) rules!3870)) b!4084797))

(assert (= (and start!386228 ((_ is Cons!43784) p!2988)) b!4084801))

(assert (= (and start!386228 ((_ is Cons!43784) input!3411)) b!4084800))

(assert (= b!4084806 b!4084812))

(assert (= start!386228 b!4084806))

(declare-fun m!4691737 () Bool)

(assert (=> b!4084808 m!4691737))

(declare-fun m!4691739 () Bool)

(assert (=> b!4084799 m!4691739))

(declare-fun m!4691741 () Bool)

(assert (=> b!4084798 m!4691741))

(declare-fun m!4691743 () Bool)

(assert (=> b!4084798 m!4691743))

(declare-fun m!4691745 () Bool)

(assert (=> b!4084798 m!4691745))

(declare-fun m!4691747 () Bool)

(assert (=> b!4084802 m!4691747))

(declare-fun m!4691749 () Bool)

(assert (=> b!4084802 m!4691749))

(declare-fun m!4691751 () Bool)

(assert (=> b!4084802 m!4691751))

(declare-fun m!4691753 () Bool)

(assert (=> b!4084802 m!4691753))

(declare-fun m!4691755 () Bool)

(assert (=> b!4084802 m!4691755))

(declare-fun m!4691757 () Bool)

(assert (=> b!4084796 m!4691757))

(declare-fun m!4691759 () Bool)

(assert (=> b!4084811 m!4691759))

(declare-fun m!4691761 () Bool)

(assert (=> b!4084806 m!4691761))

(declare-fun m!4691763 () Bool)

(assert (=> b!4084806 m!4691763))

(declare-fun m!4691765 () Bool)

(assert (=> b!4084810 m!4691765))

(declare-fun m!4691767 () Bool)

(assert (=> b!4084810 m!4691767))

(declare-fun m!4691769 () Bool)

(assert (=> b!4084809 m!4691769))

(declare-fun m!4691771 () Bool)

(assert (=> b!4084804 m!4691771))

(check-sat (not b!4084802) (not b!4084796) (not b_next!114815) (not b_next!114809) (not b!4084805) (not b!4084808) (not b!4084810) b_and!314445 b_and!314439 b_and!314443 (not b_next!114811) (not b!4084801) tp_is_empty!20957 (not b!4084811) (not b!4084797) (not b_next!114813) (not b!4084799) (not b!4084798) (not b!4084806) b_and!314441 (not b!4084800) (not b!4084804) (not b!4084809))
(check-sat (not b_next!114815) (not b_next!114809) (not b_next!114813) b_and!314445 b_and!314439 b_and!314443 (not b_next!114811) b_and!314441)
