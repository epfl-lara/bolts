; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349010 () Bool)

(assert start!349010)

(declare-fun b!3703225 () Bool)

(declare-fun b_free!98793 () Bool)

(declare-fun b_next!99497 () Bool)

(assert (=> b!3703225 (= b_free!98793 (not b_next!99497))))

(declare-fun tp!1125782 () Bool)

(declare-fun b_and!277027 () Bool)

(assert (=> b!3703225 (= tp!1125782 b_and!277027)))

(declare-fun b_free!98795 () Bool)

(declare-fun b_next!99499 () Bool)

(assert (=> b!3703225 (= b_free!98795 (not b_next!99499))))

(declare-fun tp!1125786 () Bool)

(declare-fun b_and!277029 () Bool)

(assert (=> b!3703225 (= tp!1125786 b_and!277029)))

(declare-fun b!3703220 () Bool)

(declare-fun b_free!98797 () Bool)

(declare-fun b_next!99501 () Bool)

(assert (=> b!3703220 (= b_free!98797 (not b_next!99501))))

(declare-fun tp!1125785 () Bool)

(declare-fun b_and!277031 () Bool)

(assert (=> b!3703220 (= tp!1125785 b_and!277031)))

(declare-fun b_free!98799 () Bool)

(declare-fun b_next!99503 () Bool)

(assert (=> b!3703220 (= b_free!98799 (not b_next!99503))))

(declare-fun tp!1125780 () Bool)

(declare-fun b_and!277033 () Bool)

(assert (=> b!3703220 (= tp!1125780 b_and!277033)))

(declare-fun e!2293551 () Bool)

(assert (=> b!3703220 (= e!2293551 (and tp!1125785 tp!1125780))))

(declare-fun b!3703221 () Bool)

(declare-fun res!1506458 () Bool)

(declare-fun e!2293546 () Bool)

(assert (=> b!3703221 (=> res!1506458 e!2293546)))

(declare-datatypes ((LexerInterface!5583 0))(
  ( (LexerInterfaceExt!5580 (__x!24665 Int)) (Lexer!5581) )
))
(declare-fun thiss!25522 () LexerInterface!5583)

(declare-datatypes ((List!39513 0))(
  ( (Nil!39389) (Cons!39389 (h!44809 (_ BitVec 16)) (t!302196 List!39513)) )
))
(declare-datatypes ((TokenValue!6224 0))(
  ( (FloatLiteralValue!12448 (text!44013 List!39513)) (TokenValueExt!6223 (__x!24666 Int)) (Broken!31120 (value!191248 List!39513)) (Object!6347) (End!6224) (Def!6224) (Underscore!6224) (Match!6224) (Else!6224) (Error!6224) (Case!6224) (If!6224) (Extends!6224) (Abstract!6224) (Class!6224) (Val!6224) (DelimiterValue!12448 (del!6284 List!39513)) (KeywordValue!6230 (value!191249 List!39513)) (CommentValue!12448 (value!191250 List!39513)) (WhitespaceValue!12448 (value!191251 List!39513)) (IndentationValue!6224 (value!191252 List!39513)) (String!44453) (Int32!6224) (Broken!31121 (value!191253 List!39513)) (Boolean!6225) (Unit!57349) (OperatorValue!6227 (op!6284 List!39513)) (IdentifierValue!12448 (value!191254 List!39513)) (IdentifierValue!12449 (value!191255 List!39513)) (WhitespaceValue!12449 (value!191256 List!39513)) (True!12448) (False!12448) (Broken!31122 (value!191257 List!39513)) (Broken!31123 (value!191258 List!39513)) (True!12449) (RightBrace!6224) (RightBracket!6224) (Colon!6224) (Null!6224) (Comma!6224) (LeftBracket!6224) (False!12449) (LeftBrace!6224) (ImaginaryLiteralValue!6224 (text!44014 List!39513)) (StringLiteralValue!18672 (value!191259 List!39513)) (EOFValue!6224 (value!191260 List!39513)) (IdentValue!6224 (value!191261 List!39513)) (DelimiterValue!12449 (value!191262 List!39513)) (DedentValue!6224 (value!191263 List!39513)) (NewLineValue!6224 (value!191264 List!39513)) (IntegerValue!18672 (value!191265 (_ BitVec 32)) (text!44015 List!39513)) (IntegerValue!18673 (value!191266 Int) (text!44016 List!39513)) (Times!6224) (Or!6224) (Equal!6224) (Minus!6224) (Broken!31124 (value!191267 List!39513)) (And!6224) (Div!6224) (LessEqual!6224) (Mod!6224) (Concat!16977) (Not!6224) (Plus!6224) (SpaceValue!6224 (value!191268 List!39513)) (IntegerValue!18674 (value!191269 Int) (text!44017 List!39513)) (StringLiteralValue!18673 (text!44018 List!39513)) (FloatLiteralValue!12449 (text!44019 List!39513)) (BytesLiteralValue!6224 (value!191270 List!39513)) (CommentValue!12449 (value!191271 List!39513)) (StringLiteralValue!18674 (value!191272 List!39513)) (ErrorTokenValue!6224 (msg!6285 List!39513)) )
))
(declare-datatypes ((C!21692 0))(
  ( (C!21693 (val!12894 Int)) )
))
(declare-datatypes ((List!39514 0))(
  ( (Nil!39390) (Cons!39390 (h!44810 C!21692) (t!302197 List!39514)) )
))
(declare-datatypes ((IArray!24187 0))(
  ( (IArray!24188 (innerList!12151 List!39514)) )
))
(declare-datatypes ((Conc!12091 0))(
  ( (Node!12091 (left!30642 Conc!12091) (right!30972 Conc!12091) (csize!24412 Int) (cheight!12302 Int)) (Leaf!18699 (xs!15293 IArray!24187) (csize!24413 Int)) (Empty!12091) )
))
(declare-datatypes ((BalanceConc!23796 0))(
  ( (BalanceConc!23797 (c!639830 Conc!12091)) )
))
(declare-datatypes ((TokenValueInjection!11876 0))(
  ( (TokenValueInjection!11877 (toValue!8334 Int) (toChars!8193 Int)) )
))
(declare-datatypes ((String!44454 0))(
  ( (String!44455 (value!191273 String)) )
))
(declare-datatypes ((Regex!10753 0))(
  ( (ElementMatch!10753 (c!639831 C!21692)) (Concat!16978 (regOne!22018 Regex!10753) (regTwo!22018 Regex!10753)) (EmptyExpr!10753) (Star!10753 (reg!11082 Regex!10753)) (EmptyLang!10753) (Union!10753 (regOne!22019 Regex!10753) (regTwo!22019 Regex!10753)) )
))
(declare-datatypes ((Rule!11788 0))(
  ( (Rule!11789 (regex!5994 Regex!10753) (tag!6834 String!44454) (isSeparator!5994 Bool) (transformation!5994 TokenValueInjection!11876)) )
))
(declare-datatypes ((List!39515 0))(
  ( (Nil!39391) (Cons!39391 (h!44811 Rule!11788) (t!302198 List!39515)) )
))
(declare-fun rules!3698 () List!39515)

(declare-datatypes ((List!39516 0))(
  ( (Nil!39392) (Cons!39392 (h!44812 String!44454) (t!302199 List!39516)) )
))
(declare-fun lt!1295837 () List!39516)

(declare-fun noDuplicateTag!2315 (LexerInterface!5583 List!39515 List!39516) Bool)

(assert (=> b!3703221 (= res!1506458 (not (noDuplicateTag!2315 thiss!25522 rules!3698 lt!1295837)))))

(declare-fun tp!1125784 () Bool)

(declare-fun b!3703222 () Bool)

(declare-fun e!2293554 () Bool)

(declare-fun inv!52923 (String!44454) Bool)

(declare-fun inv!52925 (TokenValueInjection!11876) Bool)

(assert (=> b!3703222 (= e!2293554 (and tp!1125784 (inv!52923 (tag!6834 (h!44811 rules!3698))) (inv!52925 (transformation!5994 (h!44811 rules!3698))) e!2293551))))

(declare-fun b!3703223 () Bool)

(declare-fun e!2293547 () Bool)

(declare-fun tp!1125781 () Bool)

(assert (=> b!3703223 (= e!2293547 (and e!2293554 tp!1125781))))

(declare-fun b!3703224 () Bool)

(declare-fun e!2293552 () Bool)

(assert (=> b!3703224 (= e!2293552 e!2293546)))

(declare-fun res!1506462 () Bool)

(assert (=> b!3703224 (=> res!1506462 e!2293546)))

(declare-fun newHd!19 () Rule!11788)

(declare-fun contains!7854 (List!39516 String!44454) Bool)

(assert (=> b!3703224 (= res!1506462 (not (contains!7854 lt!1295837 (tag!6834 newHd!19))))))

(assert (=> b!3703224 (= lt!1295837 (Cons!39392 (tag!6834 newHd!19) Nil!39392))))

(declare-fun lt!1295838 () Rule!11788)

(declare-datatypes ((Option!8536 0))(
  ( (None!8535) (Some!8535 (v!38497 Rule!11788)) )
))
(declare-fun lt!1295835 () Option!8536)

(declare-fun get!13118 (Option!8536) Rule!11788)

(assert (=> b!3703224 (= lt!1295838 (get!13118 lt!1295835))))

(declare-fun e!2293549 () Bool)

(assert (=> b!3703225 (= e!2293549 (and tp!1125782 tp!1125786))))

(declare-fun res!1506461 () Bool)

(declare-fun e!2293555 () Bool)

(assert (=> start!349010 (=> (not res!1506461) (not e!2293555))))

(get-info :version)

(assert (=> start!349010 (= res!1506461 ((_ is Lexer!5581) thiss!25522))))

(assert (=> start!349010 e!2293555))

(assert (=> start!349010 true))

(declare-fun e!2293550 () Bool)

(assert (=> start!349010 e!2293550))

(assert (=> start!349010 e!2293547))

(declare-fun tag!250 () String!44454)

(assert (=> start!349010 (inv!52923 tag!250)))

(declare-fun b!3703226 () Bool)

(assert (=> b!3703226 (= e!2293555 (not e!2293552))))

(declare-fun res!1506463 () Bool)

(assert (=> b!3703226 (=> res!1506463 e!2293552)))

(declare-fun isDefined!6723 (Option!8536) Bool)

(assert (=> b!3703226 (= res!1506463 (not (isDefined!6723 lt!1295835)))))

(declare-fun getRuleFromTag!1528 (LexerInterface!5583 List!39515 String!44454) Option!8536)

(assert (=> b!3703226 (= lt!1295835 (getRuleFromTag!1528 thiss!25522 rules!3698 tag!250))))

(declare-fun rulesInvariant!4980 (LexerInterface!5583 List!39515) Bool)

(assert (=> b!3703226 (rulesInvariant!4980 thiss!25522 rules!3698)))

(declare-datatypes ((Unit!57350 0))(
  ( (Unit!57351) )
))
(declare-fun lt!1295836 () Unit!57350)

(declare-fun lemmaInvariantOnRulesThenOnTail!686 (LexerInterface!5583 Rule!11788 List!39515) Unit!57350)

(assert (=> b!3703226 (= lt!1295836 (lemmaInvariantOnRulesThenOnTail!686 thiss!25522 newHd!19 rules!3698))))

(declare-fun b!3703227 () Bool)

(declare-fun res!1506460 () Bool)

(assert (=> b!3703227 (=> res!1506460 e!2293546)))

(declare-fun contains!7855 (List!39515 Rule!11788) Bool)

(assert (=> b!3703227 (= res!1506460 (not (contains!7855 rules!3698 lt!1295838)))))

(declare-fun b!3703228 () Bool)

(declare-fun tp!1125783 () Bool)

(assert (=> b!3703228 (= e!2293550 (and tp!1125783 (inv!52923 (tag!6834 newHd!19)) (inv!52925 (transformation!5994 newHd!19)) e!2293549))))

(declare-fun b!3703229 () Bool)

(assert (=> b!3703229 (= e!2293546 true)))

(assert (=> b!3703229 (not (= (tag!6834 lt!1295838) (tag!6834 newHd!19)))))

(declare-fun lt!1295834 () Unit!57350)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!2 (LexerInterface!5583 List!39515 Rule!11788 String!44454 List!39516) Unit!57350)

(assert (=> b!3703229 (= lt!1295834 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!2 thiss!25522 rules!3698 lt!1295838 (tag!6834 newHd!19) lt!1295837))))

(declare-fun b!3703230 () Bool)

(declare-fun res!1506459 () Bool)

(assert (=> b!3703230 (=> (not res!1506459) (not e!2293555))))

(assert (=> b!3703230 (= res!1506459 (rulesInvariant!4980 thiss!25522 (Cons!39391 newHd!19 rules!3698)))))

(assert (= (and start!349010 res!1506461) b!3703230))

(assert (= (and b!3703230 res!1506459) b!3703226))

(assert (= (and b!3703226 (not res!1506463)) b!3703224))

(assert (= (and b!3703224 (not res!1506462)) b!3703221))

(assert (= (and b!3703221 (not res!1506458)) b!3703227))

(assert (= (and b!3703227 (not res!1506460)) b!3703229))

(assert (= b!3703228 b!3703225))

(assert (= start!349010 b!3703228))

(assert (= b!3703222 b!3703220))

(assert (= b!3703223 b!3703222))

(assert (= (and start!349010 ((_ is Cons!39391) rules!3698)) b!3703223))

(declare-fun m!4214155 () Bool)

(assert (=> b!3703221 m!4214155))

(declare-fun m!4214157 () Bool)

(assert (=> start!349010 m!4214157))

(declare-fun m!4214159 () Bool)

(assert (=> b!3703227 m!4214159))

(declare-fun m!4214161 () Bool)

(assert (=> b!3703228 m!4214161))

(declare-fun m!4214163 () Bool)

(assert (=> b!3703228 m!4214163))

(declare-fun m!4214165 () Bool)

(assert (=> b!3703226 m!4214165))

(declare-fun m!4214167 () Bool)

(assert (=> b!3703226 m!4214167))

(declare-fun m!4214169 () Bool)

(assert (=> b!3703226 m!4214169))

(declare-fun m!4214171 () Bool)

(assert (=> b!3703226 m!4214171))

(declare-fun m!4214173 () Bool)

(assert (=> b!3703222 m!4214173))

(declare-fun m!4214175 () Bool)

(assert (=> b!3703222 m!4214175))

(declare-fun m!4214177 () Bool)

(assert (=> b!3703224 m!4214177))

(declare-fun m!4214179 () Bool)

(assert (=> b!3703224 m!4214179))

(declare-fun m!4214181 () Bool)

(assert (=> b!3703230 m!4214181))

(declare-fun m!4214183 () Bool)

(assert (=> b!3703229 m!4214183))

(check-sat (not b!3703229) b_and!277033 (not b!3703223) (not b!3703228) (not b!3703227) (not b!3703221) (not b!3703230) b_and!277027 (not b!3703222) (not b!3703226) (not b_next!99501) (not start!349010) (not b!3703224) (not b_next!99503) b_and!277029 (not b_next!99499) b_and!277031 (not b_next!99497))
(check-sat b_and!277033 (not b_next!99501) (not b_next!99503) b_and!277027 b_and!277029 (not b_next!99499) b_and!277031 (not b_next!99497))
