; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347974 () Bool)

(assert start!347974)

(declare-fun b!3695227 () Bool)

(declare-fun b_free!98217 () Bool)

(declare-fun b_next!98921 () Bool)

(assert (=> b!3695227 (= b_free!98217 (not b_next!98921))))

(declare-fun tp!1123047 () Bool)

(declare-fun b_and!276139 () Bool)

(assert (=> b!3695227 (= tp!1123047 b_and!276139)))

(declare-fun b_free!98219 () Bool)

(declare-fun b_next!98923 () Bool)

(assert (=> b!3695227 (= b_free!98219 (not b_next!98923))))

(declare-fun tp!1123052 () Bool)

(declare-fun b_and!276141 () Bool)

(assert (=> b!3695227 (= tp!1123052 b_and!276141)))

(declare-fun b!3695223 () Bool)

(declare-fun b_free!98221 () Bool)

(declare-fun b_next!98925 () Bool)

(assert (=> b!3695223 (= b_free!98221 (not b_next!98925))))

(declare-fun tp!1123044 () Bool)

(declare-fun b_and!276143 () Bool)

(assert (=> b!3695223 (= tp!1123044 b_and!276143)))

(declare-fun b_free!98223 () Bool)

(declare-fun b_next!98927 () Bool)

(assert (=> b!3695223 (= b_free!98223 (not b_next!98927))))

(declare-fun tp!1123049 () Bool)

(declare-fun b_and!276145 () Bool)

(assert (=> b!3695223 (= tp!1123049 b_and!276145)))

(declare-fun b!3695217 () Bool)

(declare-fun e!2288218 () Bool)

(assert (=> b!3695217 (= e!2288218 false)))

(declare-fun lt!1293433 () Bool)

(declare-datatypes ((LexerInterface!5525 0))(
  ( (LexerInterfaceExt!5522 (__x!24549 Int)) (Lexer!5523) )
))
(declare-fun thiss!25322 () LexerInterface!5525)

(declare-datatypes ((List!39312 0))(
  ( (Nil!39188) (Cons!39188 (h!44608 (_ BitVec 16)) (t!301647 List!39312)) )
))
(declare-datatypes ((TokenValue!6166 0))(
  ( (FloatLiteralValue!12332 (text!43607 List!39312)) (TokenValueExt!6165 (__x!24550 Int)) (Broken!30830 (value!189604 List!39312)) (Object!6289) (End!6166) (Def!6166) (Underscore!6166) (Match!6166) (Else!6166) (Error!6166) (Case!6166) (If!6166) (Extends!6166) (Abstract!6166) (Class!6166) (Val!6166) (DelimiterValue!12332 (del!6226 List!39312)) (KeywordValue!6172 (value!189605 List!39312)) (CommentValue!12332 (value!189606 List!39312)) (WhitespaceValue!12332 (value!189607 List!39312)) (IndentationValue!6166 (value!189608 List!39312)) (String!44163) (Int32!6166) (Broken!30831 (value!189609 List!39312)) (Boolean!6167) (Unit!57181) (OperatorValue!6169 (op!6226 List!39312)) (IdentifierValue!12332 (value!189610 List!39312)) (IdentifierValue!12333 (value!189611 List!39312)) (WhitespaceValue!12333 (value!189612 List!39312)) (True!12332) (False!12332) (Broken!30832 (value!189613 List!39312)) (Broken!30833 (value!189614 List!39312)) (True!12333) (RightBrace!6166) (RightBracket!6166) (Colon!6166) (Null!6166) (Comma!6166) (LeftBracket!6166) (False!12333) (LeftBrace!6166) (ImaginaryLiteralValue!6166 (text!43608 List!39312)) (StringLiteralValue!18498 (value!189615 List!39312)) (EOFValue!6166 (value!189616 List!39312)) (IdentValue!6166 (value!189617 List!39312)) (DelimiterValue!12333 (value!189618 List!39312)) (DedentValue!6166 (value!189619 List!39312)) (NewLineValue!6166 (value!189620 List!39312)) (IntegerValue!18498 (value!189621 (_ BitVec 32)) (text!43609 List!39312)) (IntegerValue!18499 (value!189622 Int) (text!43610 List!39312)) (Times!6166) (Or!6166) (Equal!6166) (Minus!6166) (Broken!30834 (value!189623 List!39312)) (And!6166) (Div!6166) (LessEqual!6166) (Mod!6166) (Concat!16861) (Not!6166) (Plus!6166) (SpaceValue!6166 (value!189624 List!39312)) (IntegerValue!18500 (value!189625 Int) (text!43611 List!39312)) (StringLiteralValue!18499 (text!43612 List!39312)) (FloatLiteralValue!12333 (text!43613 List!39312)) (BytesLiteralValue!6166 (value!189626 List!39312)) (CommentValue!12333 (value!189627 List!39312)) (StringLiteralValue!18500 (value!189628 List!39312)) (ErrorTokenValue!6166 (msg!6227 List!39312)) )
))
(declare-datatypes ((C!21576 0))(
  ( (C!21577 (val!12836 Int)) )
))
(declare-datatypes ((Regex!10695 0))(
  ( (ElementMatch!10695 (c!638816 C!21576)) (Concat!16862 (regOne!21902 Regex!10695) (regTwo!21902 Regex!10695)) (EmptyExpr!10695) (Star!10695 (reg!11024 Regex!10695)) (EmptyLang!10695) (Union!10695 (regOne!21903 Regex!10695) (regTwo!21903 Regex!10695)) )
))
(declare-datatypes ((String!44164 0))(
  ( (String!44165 (value!189629 String)) )
))
(declare-datatypes ((List!39313 0))(
  ( (Nil!39189) (Cons!39189 (h!44609 C!21576) (t!301648 List!39313)) )
))
(declare-datatypes ((IArray!24071 0))(
  ( (IArray!24072 (innerList!12093 List!39313)) )
))
(declare-datatypes ((Conc!12033 0))(
  ( (Node!12033 (left!30547 Conc!12033) (right!30877 Conc!12033) (csize!24296 Int) (cheight!12244 Int)) (Leaf!18612 (xs!15235 IArray!24071) (csize!24297 Int)) (Empty!12033) )
))
(declare-datatypes ((BalanceConc!23680 0))(
  ( (BalanceConc!23681 (c!638817 Conc!12033)) )
))
(declare-datatypes ((TokenValueInjection!11760 0))(
  ( (TokenValueInjection!11761 (toValue!8268 Int) (toChars!8127 Int)) )
))
(declare-datatypes ((Rule!11672 0))(
  ( (Rule!11673 (regex!5936 Regex!10695) (tag!6760 String!44164) (isSeparator!5936 Bool) (transformation!5936 TokenValueInjection!11760)) )
))
(declare-datatypes ((List!39314 0))(
  ( (Nil!39190) (Cons!39190 (h!44610 Rule!11672) (t!301649 List!39314)) )
))
(declare-fun rules!3598 () List!39314)

(declare-fun rulesInvariant!4922 (LexerInterface!5525 List!39314) Bool)

(assert (=> b!3695217 (= lt!1293433 (rulesInvariant!4922 thiss!25322 (Cons!39190 (h!44610 rules!3598) (t!301649 rules!3598))))))

(declare-fun tp!1123048 () Bool)

(declare-fun e!2288225 () Bool)

(declare-fun b!3695218 () Bool)

(declare-fun e!2288223 () Bool)

(declare-fun inv!52669 (String!44164) Bool)

(declare-fun inv!52672 (TokenValueInjection!11760) Bool)

(assert (=> b!3695218 (= e!2288223 (and tp!1123048 (inv!52669 (tag!6760 (h!44610 rules!3598))) (inv!52672 (transformation!5936 (h!44610 rules!3598))) e!2288225))))

(declare-fun b!3695219 () Bool)

(declare-fun res!1502484 () Bool)

(declare-fun e!2288214 () Bool)

(assert (=> b!3695219 (=> (not res!1502484) (not e!2288214))))

(assert (=> b!3695219 (= res!1502484 (rulesInvariant!4922 thiss!25322 rules!3598))))

(declare-fun b!3695220 () Bool)

(declare-fun e!2288224 () Bool)

(declare-datatypes ((Token!11226 0))(
  ( (Token!11227 (value!189630 TokenValue!6166) (rule!8790 Rule!11672) (size!29914 Int) (originalCharacters!6644 List!39313)) )
))
(declare-datatypes ((tuple2!39080 0))(
  ( (tuple2!39081 (_1!22674 Token!11226) (_2!22674 List!39313)) )
))
(declare-datatypes ((Option!8454 0))(
  ( (None!8453) (Some!8453 (v!38411 tuple2!39080)) )
))
(declare-fun lt!1293434 () Option!8454)

(declare-fun token!544 () Token!11226)

(declare-fun get!13011 (Option!8454) tuple2!39080)

(assert (=> b!3695220 (= e!2288224 (not (= (_1!22674 (get!13011 lt!1293434)) token!544)))))

(declare-fun e!2288219 () Bool)

(declare-fun tp!1123046 () Bool)

(declare-fun e!2288221 () Bool)

(declare-fun b!3695221 () Bool)

(declare-fun inv!21 (TokenValue!6166) Bool)

(assert (=> b!3695221 (= e!2288219 (and (inv!21 (value!189630 token!544)) e!2288221 tp!1123046))))

(declare-fun res!1502479 () Bool)

(assert (=> start!347974 (=> (not res!1502479) (not e!2288214))))

(get-info :version)

(assert (=> start!347974 (= res!1502479 ((_ is Lexer!5523) thiss!25322))))

(assert (=> start!347974 e!2288214))

(assert (=> start!347974 true))

(declare-fun e!2288226 () Bool)

(assert (=> start!347974 e!2288226))

(declare-fun inv!52673 (Token!11226) Bool)

(assert (=> start!347974 (and (inv!52673 token!544) e!2288219)))

(declare-fun e!2288217 () Bool)

(assert (=> start!347974 e!2288217))

(declare-fun b!3695222 () Bool)

(declare-fun res!1502483 () Bool)

(assert (=> b!3695222 (=> (not res!1502483) (not e!2288218))))

(declare-fun isEmpty!23356 (List!39314) Bool)

(assert (=> b!3695222 (= res!1502483 (not (isEmpty!23356 (t!301649 rules!3598))))))

(declare-fun e!2288216 () Bool)

(assert (=> b!3695223 (= e!2288216 (and tp!1123044 tp!1123049))))

(declare-fun b!3695224 () Bool)

(declare-fun tp!1123050 () Bool)

(assert (=> b!3695224 (= e!2288226 (and e!2288223 tp!1123050))))

(declare-fun b!3695225 () Bool)

(declare-fun res!1502487 () Bool)

(declare-fun e!2288220 () Bool)

(assert (=> b!3695225 (=> (not res!1502487) (not e!2288220))))

(declare-fun lt!1293432 () Option!8454)

(assert (=> b!3695225 (= res!1502487 (= (_1!22674 (get!13011 lt!1293432)) token!544))))

(declare-fun b!3695226 () Bool)

(declare-fun tp_is_empty!18465 () Bool)

(declare-fun tp!1123051 () Bool)

(assert (=> b!3695226 (= e!2288217 (and tp_is_empty!18465 tp!1123051))))

(assert (=> b!3695227 (= e!2288225 (and tp!1123047 tp!1123052))))

(declare-fun b!3695228 () Bool)

(declare-fun tp!1123045 () Bool)

(assert (=> b!3695228 (= e!2288221 (and tp!1123045 (inv!52669 (tag!6760 (rule!8790 token!544))) (inv!52672 (transformation!5936 (rule!8790 token!544))) e!2288216))))

(declare-fun b!3695229 () Bool)

(assert (=> b!3695229 (= e!2288214 e!2288220)))

(declare-fun res!1502480 () Bool)

(assert (=> b!3695229 (=> (not res!1502480) (not e!2288220))))

(declare-fun isDefined!6645 (Option!8454) Bool)

(assert (=> b!3695229 (= res!1502480 (isDefined!6645 lt!1293432))))

(declare-fun input!3172 () List!39313)

(declare-fun maxPrefix!3047 (LexerInterface!5525 List!39314 List!39313) Option!8454)

(assert (=> b!3695229 (= lt!1293432 (maxPrefix!3047 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3695230 () Bool)

(declare-fun res!1502486 () Bool)

(assert (=> b!3695230 (=> (not res!1502486) (not e!2288214))))

(assert (=> b!3695230 (= res!1502486 (not (isEmpty!23356 rules!3598)))))

(declare-fun b!3695231 () Bool)

(assert (=> b!3695231 (= e!2288220 e!2288218)))

(declare-fun res!1502485 () Bool)

(assert (=> b!3695231 (=> (not res!1502485) (not e!2288218))))

(assert (=> b!3695231 (= res!1502485 e!2288224)))

(declare-fun res!1502481 () Bool)

(assert (=> b!3695231 (=> res!1502481 e!2288224)))

(assert (=> b!3695231 (= res!1502481 (not (isDefined!6645 lt!1293434)))))

(declare-fun maxPrefixOneRule!2161 (LexerInterface!5525 Rule!11672 List!39313) Option!8454)

(assert (=> b!3695231 (= lt!1293434 (maxPrefixOneRule!2161 thiss!25322 (h!44610 rules!3598) input!3172))))

(declare-fun b!3695232 () Bool)

(declare-fun res!1502482 () Bool)

(assert (=> b!3695232 (=> (not res!1502482) (not e!2288220))))

(assert (=> b!3695232 (= res!1502482 ((_ is Cons!39190) rules!3598))))

(assert (= (and start!347974 res!1502479) b!3695219))

(assert (= (and b!3695219 res!1502484) b!3695230))

(assert (= (and b!3695230 res!1502486) b!3695229))

(assert (= (and b!3695229 res!1502480) b!3695225))

(assert (= (and b!3695225 res!1502487) b!3695232))

(assert (= (and b!3695232 res!1502482) b!3695231))

(assert (= (and b!3695231 (not res!1502481)) b!3695220))

(assert (= (and b!3695231 res!1502485) b!3695222))

(assert (= (and b!3695222 res!1502483) b!3695217))

(assert (= b!3695218 b!3695227))

(assert (= b!3695224 b!3695218))

(assert (= (and start!347974 ((_ is Cons!39190) rules!3598)) b!3695224))

(assert (= b!3695228 b!3695223))

(assert (= b!3695221 b!3695228))

(assert (= start!347974 b!3695221))

(assert (= (and start!347974 ((_ is Cons!39189) input!3172)) b!3695226))

(declare-fun m!4207037 () Bool)

(assert (=> start!347974 m!4207037))

(declare-fun m!4207039 () Bool)

(assert (=> b!3695230 m!4207039))

(declare-fun m!4207041 () Bool)

(assert (=> b!3695219 m!4207041))

(declare-fun m!4207043 () Bool)

(assert (=> b!3695221 m!4207043))

(declare-fun m!4207045 () Bool)

(assert (=> b!3695220 m!4207045))

(declare-fun m!4207047 () Bool)

(assert (=> b!3695218 m!4207047))

(declare-fun m!4207049 () Bool)

(assert (=> b!3695218 m!4207049))

(declare-fun m!4207051 () Bool)

(assert (=> b!3695228 m!4207051))

(declare-fun m!4207053 () Bool)

(assert (=> b!3695228 m!4207053))

(declare-fun m!4207055 () Bool)

(assert (=> b!3695231 m!4207055))

(declare-fun m!4207057 () Bool)

(assert (=> b!3695231 m!4207057))

(declare-fun m!4207059 () Bool)

(assert (=> b!3695217 m!4207059))

(declare-fun m!4207061 () Bool)

(assert (=> b!3695222 m!4207061))

(declare-fun m!4207063 () Bool)

(assert (=> b!3695225 m!4207063))

(declare-fun m!4207065 () Bool)

(assert (=> b!3695229 m!4207065))

(declare-fun m!4207067 () Bool)

(assert (=> b!3695229 m!4207067))

(check-sat (not b!3695221) (not b_next!98921) (not b!3695219) (not b!3695224) (not b!3695225) (not b!3695220) (not b!3695222) b_and!276145 (not b!3695226) (not start!347974) (not b!3695229) (not b_next!98923) tp_is_empty!18465 (not b_next!98925) b_and!276141 (not b!3695231) b_and!276143 (not b!3695228) (not b!3695230) (not b!3695218) b_and!276139 (not b_next!98927) (not b!3695217))
(check-sat (not b_next!98921) b_and!276145 b_and!276143 b_and!276139 (not b_next!98927) (not b_next!98923) (not b_next!98925) b_and!276141)
