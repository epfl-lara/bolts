; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349002 () Bool)

(assert start!349002)

(declare-fun b!3703099 () Bool)

(declare-fun b_free!98761 () Bool)

(declare-fun b_next!99465 () Bool)

(assert (=> b!3703099 (= b_free!98761 (not b_next!99465))))

(declare-fun tp!1125700 () Bool)

(declare-fun b_and!276995 () Bool)

(assert (=> b!3703099 (= tp!1125700 b_and!276995)))

(declare-fun b_free!98763 () Bool)

(declare-fun b_next!99467 () Bool)

(assert (=> b!3703099 (= b_free!98763 (not b_next!99467))))

(declare-fun tp!1125701 () Bool)

(declare-fun b_and!276997 () Bool)

(assert (=> b!3703099 (= tp!1125701 b_and!276997)))

(declare-fun b!3703098 () Bool)

(declare-fun b_free!98765 () Bool)

(declare-fun b_next!99469 () Bool)

(assert (=> b!3703098 (= b_free!98765 (not b_next!99469))))

(declare-fun tp!1125699 () Bool)

(declare-fun b_and!276999 () Bool)

(assert (=> b!3703098 (= tp!1125699 b_and!276999)))

(declare-fun b_free!98767 () Bool)

(declare-fun b_next!99471 () Bool)

(assert (=> b!3703098 (= b_free!98767 (not b_next!99471))))

(declare-fun tp!1125696 () Bool)

(declare-fun b_and!277001 () Bool)

(assert (=> b!3703098 (= tp!1125696 b_and!277001)))

(declare-fun e!2293418 () Bool)

(assert (=> b!3703098 (= e!2293418 (and tp!1125699 tp!1125696))))

(declare-fun e!2293417 () Bool)

(assert (=> b!3703099 (= e!2293417 (and tp!1125700 tp!1125701))))

(declare-fun tp!1125698 () Bool)

(declare-fun b!3703100 () Bool)

(declare-fun e!2293421 () Bool)

(declare-datatypes ((List!39498 0))(
  ( (Nil!39374) (Cons!39374 (h!44794 (_ BitVec 16)) (t!302181 List!39498)) )
))
(declare-datatypes ((TokenValue!6220 0))(
  ( (FloatLiteralValue!12440 (text!43985 List!39498)) (TokenValueExt!6219 (__x!24657 Int)) (Broken!31100 (value!191138 List!39498)) (Object!6343) (End!6220) (Def!6220) (Underscore!6220) (Match!6220) (Else!6220) (Error!6220) (Case!6220) (If!6220) (Extends!6220) (Abstract!6220) (Class!6220) (Val!6220) (DelimiterValue!12440 (del!6280 List!39498)) (KeywordValue!6226 (value!191139 List!39498)) (CommentValue!12440 (value!191140 List!39498)) (WhitespaceValue!12440 (value!191141 List!39498)) (IndentationValue!6220 (value!191142 List!39498)) (String!44433) (Int32!6220) (Broken!31101 (value!191143 List!39498)) (Boolean!6221) (Unit!57337) (OperatorValue!6223 (op!6280 List!39498)) (IdentifierValue!12440 (value!191144 List!39498)) (IdentifierValue!12441 (value!191145 List!39498)) (WhitespaceValue!12441 (value!191146 List!39498)) (True!12440) (False!12440) (Broken!31102 (value!191147 List!39498)) (Broken!31103 (value!191148 List!39498)) (True!12441) (RightBrace!6220) (RightBracket!6220) (Colon!6220) (Null!6220) (Comma!6220) (LeftBracket!6220) (False!12441) (LeftBrace!6220) (ImaginaryLiteralValue!6220 (text!43986 List!39498)) (StringLiteralValue!18660 (value!191149 List!39498)) (EOFValue!6220 (value!191150 List!39498)) (IdentValue!6220 (value!191151 List!39498)) (DelimiterValue!12441 (value!191152 List!39498)) (DedentValue!6220 (value!191153 List!39498)) (NewLineValue!6220 (value!191154 List!39498)) (IntegerValue!18660 (value!191155 (_ BitVec 32)) (text!43987 List!39498)) (IntegerValue!18661 (value!191156 Int) (text!43988 List!39498)) (Times!6220) (Or!6220) (Equal!6220) (Minus!6220) (Broken!31104 (value!191157 List!39498)) (And!6220) (Div!6220) (LessEqual!6220) (Mod!6220) (Concat!16969) (Not!6220) (Plus!6220) (SpaceValue!6220 (value!191158 List!39498)) (IntegerValue!18662 (value!191159 Int) (text!43989 List!39498)) (StringLiteralValue!18661 (text!43990 List!39498)) (FloatLiteralValue!12441 (text!43991 List!39498)) (BytesLiteralValue!6220 (value!191160 List!39498)) (CommentValue!12441 (value!191161 List!39498)) (StringLiteralValue!18662 (value!191162 List!39498)) (ErrorTokenValue!6220 (msg!6281 List!39498)) )
))
(declare-datatypes ((C!21684 0))(
  ( (C!21685 (val!12890 Int)) )
))
(declare-datatypes ((List!39499 0))(
  ( (Nil!39375) (Cons!39375 (h!44795 C!21684) (t!302182 List!39499)) )
))
(declare-datatypes ((IArray!24179 0))(
  ( (IArray!24180 (innerList!12147 List!39499)) )
))
(declare-datatypes ((Conc!12087 0))(
  ( (Node!12087 (left!30636 Conc!12087) (right!30966 Conc!12087) (csize!24404 Int) (cheight!12298 Int)) (Leaf!18693 (xs!15289 IArray!24179) (csize!24405 Int)) (Empty!12087) )
))
(declare-datatypes ((BalanceConc!23788 0))(
  ( (BalanceConc!23789 (c!639822 Conc!12087)) )
))
(declare-datatypes ((TokenValueInjection!11868 0))(
  ( (TokenValueInjection!11869 (toValue!8330 Int) (toChars!8189 Int)) )
))
(declare-datatypes ((String!44434 0))(
  ( (String!44435 (value!191163 String)) )
))
(declare-datatypes ((Regex!10749 0))(
  ( (ElementMatch!10749 (c!639823 C!21684)) (Concat!16970 (regOne!22010 Regex!10749) (regTwo!22010 Regex!10749)) (EmptyExpr!10749) (Star!10749 (reg!11078 Regex!10749)) (EmptyLang!10749) (Union!10749 (regOne!22011 Regex!10749) (regTwo!22011 Regex!10749)) )
))
(declare-datatypes ((Rule!11780 0))(
  ( (Rule!11781 (regex!5990 Regex!10749) (tag!6830 String!44434) (isSeparator!5990 Bool) (transformation!5990 TokenValueInjection!11868)) )
))
(declare-fun newHd!19 () Rule!11780)

(declare-fun inv!52913 (String!44434) Bool)

(declare-fun inv!52915 (TokenValueInjection!11868) Bool)

(assert (=> b!3703100 (= e!2293421 (and tp!1125698 (inv!52913 (tag!6830 newHd!19)) (inv!52915 (transformation!5990 newHd!19)) e!2293417))))

(declare-fun b!3703101 () Bool)

(declare-fun e!2293419 () Bool)

(declare-fun e!2293420 () Bool)

(declare-fun tp!1125702 () Bool)

(assert (=> b!3703101 (= e!2293419 (and e!2293420 tp!1125702))))

(declare-fun tp!1125697 () Bool)

(declare-datatypes ((List!39500 0))(
  ( (Nil!39376) (Cons!39376 (h!44796 Rule!11780) (t!302183 List!39500)) )
))
(declare-fun rules!3698 () List!39500)

(declare-fun b!3703103 () Bool)

(assert (=> b!3703103 (= e!2293420 (and tp!1125697 (inv!52913 (tag!6830 (h!44796 rules!3698))) (inv!52915 (transformation!5990 (h!44796 rules!3698))) e!2293418))))

(declare-fun b!3703104 () Bool)

(declare-fun res!1506397 () Bool)

(declare-fun e!2293423 () Bool)

(assert (=> b!3703104 (=> (not res!1506397) (not e!2293423))))

(declare-datatypes ((LexerInterface!5579 0))(
  ( (LexerInterfaceExt!5576 (__x!24658 Int)) (Lexer!5577) )
))
(declare-fun thiss!25522 () LexerInterface!5579)

(declare-fun rulesInvariant!4976 (LexerInterface!5579 List!39500) Bool)

(assert (=> b!3703104 (= res!1506397 (rulesInvariant!4976 thiss!25522 (Cons!39376 newHd!19 rules!3698)))))

(declare-fun res!1506396 () Bool)

(assert (=> start!349002 (=> (not res!1506396) (not e!2293423))))

(get-info :version)

(assert (=> start!349002 (= res!1506396 ((_ is Lexer!5577) thiss!25522))))

(assert (=> start!349002 e!2293423))

(assert (=> start!349002 true))

(assert (=> start!349002 e!2293421))

(assert (=> start!349002 e!2293419))

(declare-fun tag!250 () String!44434)

(assert (=> start!349002 (inv!52913 tag!250)))

(declare-fun b!3703102 () Bool)

(assert (=> b!3703102 (= e!2293423 (not true))))

(declare-datatypes ((Option!8532 0))(
  ( (None!8531) (Some!8531 (v!38493 Rule!11780)) )
))
(declare-fun lt!1295783 () Option!8532)

(declare-fun getRuleFromTag!1524 (LexerInterface!5579 List!39500 String!44434) Option!8532)

(assert (=> b!3703102 (= lt!1295783 (getRuleFromTag!1524 thiss!25522 rules!3698 tag!250))))

(assert (=> b!3703102 (rulesInvariant!4976 thiss!25522 rules!3698)))

(declare-datatypes ((Unit!57338 0))(
  ( (Unit!57339) )
))
(declare-fun lt!1295784 () Unit!57338)

(declare-fun lemmaInvariantOnRulesThenOnTail!682 (LexerInterface!5579 Rule!11780 List!39500) Unit!57338)

(assert (=> b!3703102 (= lt!1295784 (lemmaInvariantOnRulesThenOnTail!682 thiss!25522 newHd!19 rules!3698))))

(assert (= (and start!349002 res!1506396) b!3703104))

(assert (= (and b!3703104 res!1506397) b!3703102))

(assert (= b!3703100 b!3703099))

(assert (= start!349002 b!3703100))

(assert (= b!3703103 b!3703098))

(assert (= b!3703101 b!3703103))

(assert (= (and start!349002 ((_ is Cons!39376) rules!3698)) b!3703101))

(declare-fun m!4214051 () Bool)

(assert (=> start!349002 m!4214051))

(declare-fun m!4214053 () Bool)

(assert (=> b!3703102 m!4214053))

(declare-fun m!4214055 () Bool)

(assert (=> b!3703102 m!4214055))

(declare-fun m!4214057 () Bool)

(assert (=> b!3703102 m!4214057))

(declare-fun m!4214059 () Bool)

(assert (=> b!3703100 m!4214059))

(declare-fun m!4214061 () Bool)

(assert (=> b!3703100 m!4214061))

(declare-fun m!4214063 () Bool)

(assert (=> b!3703103 m!4214063))

(declare-fun m!4214065 () Bool)

(assert (=> b!3703103 m!4214065))

(declare-fun m!4214067 () Bool)

(assert (=> b!3703104 m!4214067))

(check-sat b_and!276999 b_and!277001 (not b_next!99465) (not b!3703100) (not start!349002) b_and!276995 (not b_next!99471) (not b_next!99467) (not b!3703103) b_and!276997 (not b_next!99469) (not b!3703104) (not b!3703102) (not b!3703101))
(check-sat b_and!276999 b_and!277001 (not b_next!99465) b_and!276995 (not b_next!99471) (not b_next!99467) b_and!276997 (not b_next!99469))
