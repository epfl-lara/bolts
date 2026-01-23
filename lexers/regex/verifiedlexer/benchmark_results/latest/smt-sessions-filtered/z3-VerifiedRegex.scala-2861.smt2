; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!166586 () Bool)

(assert start!166586)

(declare-fun b!1706607 () Bool)

(declare-fun b_free!46131 () Bool)

(declare-fun b_next!46835 () Bool)

(assert (=> b!1706607 (= b_free!46131 (not b_next!46835))))

(declare-fun tp!487518 () Bool)

(declare-fun b_and!123393 () Bool)

(assert (=> b!1706607 (= tp!487518 b_and!123393)))

(declare-fun b_free!46133 () Bool)

(declare-fun b_next!46837 () Bool)

(assert (=> b!1706607 (= b_free!46133 (not b_next!46837))))

(declare-fun tp!487520 () Bool)

(declare-fun b_and!123395 () Bool)

(assert (=> b!1706607 (= tp!487520 b_and!123395)))

(declare-fun b!1706616 () Bool)

(declare-fun b_free!46135 () Bool)

(declare-fun b_next!46839 () Bool)

(assert (=> b!1706616 (= b_free!46135 (not b_next!46839))))

(declare-fun tp!487515 () Bool)

(declare-fun b_and!123397 () Bool)

(assert (=> b!1706616 (= tp!487515 b_and!123397)))

(declare-fun b_free!46137 () Bool)

(declare-fun b_next!46841 () Bool)

(assert (=> b!1706616 (= b_free!46137 (not b_next!46841))))

(declare-fun tp!487524 () Bool)

(declare-fun b_and!123399 () Bool)

(assert (=> b!1706616 (= tp!487524 b_and!123399)))

(declare-fun b!1706609 () Bool)

(declare-fun b_free!46139 () Bool)

(declare-fun b_next!46843 () Bool)

(assert (=> b!1706609 (= b_free!46139 (not b_next!46843))))

(declare-fun tp!487516 () Bool)

(declare-fun b_and!123401 () Bool)

(assert (=> b!1706609 (= tp!487516 b_and!123401)))

(declare-fun b_free!46141 () Bool)

(declare-fun b_next!46845 () Bool)

(assert (=> b!1706609 (= b_free!46141 (not b_next!46845))))

(declare-fun tp!487521 () Bool)

(declare-fun b_and!123403 () Bool)

(assert (=> b!1706609 (= tp!487521 b_and!123403)))

(declare-fun b!1706603 () Bool)

(declare-fun e!1091590 () Bool)

(assert (=> b!1706603 (= e!1091590 (not true))))

(declare-fun lt!652484 () Bool)

(declare-datatypes ((List!18677 0))(
  ( (Nil!18607) (Cons!18607 (h!24008 (_ BitVec 16)) (t!158010 List!18677)) )
))
(declare-datatypes ((TokenValue!3373 0))(
  ( (FloatLiteralValue!6746 (text!24056 List!18677)) (TokenValueExt!3372 (__x!12048 Int)) (Broken!16865 (value!103212 List!18677)) (Object!3442) (End!3373) (Def!3373) (Underscore!3373) (Match!3373) (Else!3373) (Error!3373) (Case!3373) (If!3373) (Extends!3373) (Abstract!3373) (Class!3373) (Val!3373) (DelimiterValue!6746 (del!3433 List!18677)) (KeywordValue!3379 (value!103213 List!18677)) (CommentValue!6746 (value!103214 List!18677)) (WhitespaceValue!6746 (value!103215 List!18677)) (IndentationValue!3373 (value!103216 List!18677)) (String!21196) (Int32!3373) (Broken!16866 (value!103217 List!18677)) (Boolean!3374) (Unit!32446) (OperatorValue!3376 (op!3433 List!18677)) (IdentifierValue!6746 (value!103218 List!18677)) (IdentifierValue!6747 (value!103219 List!18677)) (WhitespaceValue!6747 (value!103220 List!18677)) (True!6746) (False!6746) (Broken!16867 (value!103221 List!18677)) (Broken!16868 (value!103222 List!18677)) (True!6747) (RightBrace!3373) (RightBracket!3373) (Colon!3373) (Null!3373) (Comma!3373) (LeftBracket!3373) (False!6747) (LeftBrace!3373) (ImaginaryLiteralValue!3373 (text!24057 List!18677)) (StringLiteralValue!10119 (value!103223 List!18677)) (EOFValue!3373 (value!103224 List!18677)) (IdentValue!3373 (value!103225 List!18677)) (DelimiterValue!6747 (value!103226 List!18677)) (DedentValue!3373 (value!103227 List!18677)) (NewLineValue!3373 (value!103228 List!18677)) (IntegerValue!10119 (value!103229 (_ BitVec 32)) (text!24058 List!18677)) (IntegerValue!10120 (value!103230 Int) (text!24059 List!18677)) (Times!3373) (Or!3373) (Equal!3373) (Minus!3373) (Broken!16869 (value!103231 List!18677)) (And!3373) (Div!3373) (LessEqual!3373) (Mod!3373) (Concat!7984) (Not!3373) (Plus!3373) (SpaceValue!3373 (value!103232 List!18677)) (IntegerValue!10121 (value!103233 Int) (text!24060 List!18677)) (StringLiteralValue!10120 (text!24061 List!18677)) (FloatLiteralValue!6747 (text!24062 List!18677)) (BytesLiteralValue!3373 (value!103234 List!18677)) (CommentValue!6747 (value!103235 List!18677)) (StringLiteralValue!10121 (value!103236 List!18677)) (ErrorTokenValue!3373 (msg!3434 List!18677)) )
))
(declare-datatypes ((C!9396 0))(
  ( (C!9397 (val!5294 Int)) )
))
(declare-datatypes ((List!18678 0))(
  ( (Nil!18608) (Cons!18608 (h!24009 C!9396) (t!158011 List!18678)) )
))
(declare-datatypes ((Regex!4611 0))(
  ( (ElementMatch!4611 (c!279720 C!9396)) (Concat!7985 (regOne!9734 Regex!4611) (regTwo!9734 Regex!4611)) (EmptyExpr!4611) (Star!4611 (reg!4940 Regex!4611)) (EmptyLang!4611) (Union!4611 (regOne!9735 Regex!4611) (regTwo!9735 Regex!4611)) )
))
(declare-datatypes ((String!21197 0))(
  ( (String!21198 (value!103237 String)) )
))
(declare-datatypes ((IArray!12391 0))(
  ( (IArray!12392 (innerList!6253 List!18678)) )
))
(declare-datatypes ((Conc!6193 0))(
  ( (Node!6193 (left!14852 Conc!6193) (right!15182 Conc!6193) (csize!12616 Int) (cheight!6404 Int)) (Leaf!9055 (xs!9069 IArray!12391) (csize!12617 Int)) (Empty!6193) )
))
(declare-datatypes ((BalanceConc!12330 0))(
  ( (BalanceConc!12331 (c!279721 Conc!6193)) )
))
(declare-datatypes ((TokenValueInjection!6406 0))(
  ( (TokenValueInjection!6407 (toValue!4778 Int) (toChars!4637 Int)) )
))
(declare-datatypes ((Rule!6366 0))(
  ( (Rule!6367 (regex!3283 Regex!4611) (tag!3579 String!21197) (isSeparator!3283 Bool) (transformation!3283 TokenValueInjection!6406)) )
))
(declare-fun rule!422 () Rule!6366)

(declare-fun lt!652486 () List!18678)

(declare-fun matchR!2085 (Regex!4611 List!18678) Bool)

(assert (=> b!1706603 (= lt!652484 (matchR!2085 (regex!3283 rule!422) lt!652486))))

(declare-datatypes ((LexerInterface!2912 0))(
  ( (LexerInterfaceExt!2909 (__x!12049 Int)) (Lexer!2910) )
))
(declare-fun thiss!24550 () LexerInterface!2912)

(declare-fun ruleValid!782 (LexerInterface!2912 Rule!6366) Bool)

(assert (=> b!1706603 (ruleValid!782 thiss!24550 rule!422)))

(declare-datatypes ((Unit!32447 0))(
  ( (Unit!32448) )
))
(declare-fun lt!652485 () Unit!32447)

(declare-datatypes ((List!18679 0))(
  ( (Nil!18609) (Cons!18609 (h!24010 Rule!6366) (t!158012 List!18679)) )
))
(declare-fun rules!3447 () List!18679)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!306 (LexerInterface!2912 Rule!6366 List!18679) Unit!32447)

(assert (=> b!1706603 (= lt!652485 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!306 thiss!24550 rule!422 rules!3447))))

(declare-fun e!1091595 () Bool)

(declare-fun b!1706605 () Bool)

(declare-fun tp!487523 () Bool)

(declare-fun e!1091587 () Bool)

(declare-fun inv!24005 (String!21197) Bool)

(declare-fun inv!24008 (TokenValueInjection!6406) Bool)

(assert (=> b!1706605 (= e!1091595 (and tp!487523 (inv!24005 (tag!3579 (h!24010 rules!3447))) (inv!24008 (transformation!3283 (h!24010 rules!3447))) e!1091587))))

(declare-fun b!1706606 () Bool)

(declare-fun res!764987 () Bool)

(assert (=> b!1706606 (=> (not res!764987) (not e!1091590))))

(declare-datatypes ((Token!6132 0))(
  ( (Token!6133 (value!103238 TokenValue!3373) (rule!5215 Rule!6366) (size!14812 Int) (originalCharacters!4097 List!18678)) )
))
(declare-fun token!523 () Token!6132)

(assert (=> b!1706606 (= res!764987 (= (rule!5215 token!523) rule!422))))

(declare-fun e!1091597 () Bool)

(assert (=> b!1706607 (= e!1091597 (and tp!487518 tp!487520))))

(declare-fun b!1706608 () Bool)

(declare-fun e!1091599 () Bool)

(assert (=> b!1706608 (= e!1091599 e!1091590)))

(declare-fun res!764985 () Bool)

(assert (=> b!1706608 (=> (not res!764985) (not e!1091590))))

(declare-datatypes ((tuple2!18346 0))(
  ( (tuple2!18347 (_1!10575 Token!6132) (_2!10575 List!18678)) )
))
(declare-fun lt!652483 () tuple2!18346)

(assert (=> b!1706608 (= res!764985 (= (_1!10575 lt!652483) token!523))))

(declare-datatypes ((Option!3607 0))(
  ( (None!3606) (Some!3606 (v!24983 tuple2!18346)) )
))
(declare-fun lt!652482 () Option!3607)

(declare-fun get!5468 (Option!3607) tuple2!18346)

(assert (=> b!1706608 (= lt!652483 (get!5468 lt!652482))))

(assert (=> b!1706609 (= e!1091587 (and tp!487516 tp!487521))))

(declare-fun b!1706610 () Bool)

(declare-fun e!1091594 () Bool)

(assert (=> b!1706610 (= e!1091594 e!1091599)))

(declare-fun res!764988 () Bool)

(assert (=> b!1706610 (=> (not res!764988) (not e!1091599))))

(declare-fun isDefined!2952 (Option!3607) Bool)

(assert (=> b!1706610 (= res!764988 (isDefined!2952 lt!652482))))

(declare-fun maxPrefix!1466 (LexerInterface!2912 List!18679 List!18678) Option!3607)

(assert (=> b!1706610 (= lt!652482 (maxPrefix!1466 thiss!24550 rules!3447 lt!652486))))

(declare-fun list!7502 (BalanceConc!12330) List!18678)

(declare-fun charsOf!1932 (Token!6132) BalanceConc!12330)

(assert (=> b!1706610 (= lt!652486 (list!7502 (charsOf!1932 token!523)))))

(declare-fun b!1706611 () Bool)

(declare-fun res!764984 () Bool)

(assert (=> b!1706611 (=> (not res!764984) (not e!1091594))))

(declare-fun isEmpty!11681 (List!18679) Bool)

(assert (=> b!1706611 (= res!764984 (not (isEmpty!11681 rules!3447)))))

(declare-fun b!1706612 () Bool)

(declare-fun res!764982 () Bool)

(assert (=> b!1706612 (=> (not res!764982) (not e!1091594))))

(declare-fun rulesInvariant!2581 (LexerInterface!2912 List!18679) Bool)

(assert (=> b!1706612 (= res!764982 (rulesInvariant!2581 thiss!24550 rules!3447))))

(declare-fun b!1706613 () Bool)

(declare-fun e!1091588 () Bool)

(declare-fun e!1091598 () Bool)

(declare-fun tp!487519 () Bool)

(declare-fun inv!21 (TokenValue!3373) Bool)

(assert (=> b!1706613 (= e!1091598 (and (inv!21 (value!103238 token!523)) e!1091588 tp!487519))))

(declare-fun b!1706614 () Bool)

(declare-fun res!764983 () Bool)

(assert (=> b!1706614 (=> (not res!764983) (not e!1091594))))

(declare-fun contains!3299 (List!18679 Rule!6366) Bool)

(assert (=> b!1706614 (= res!764983 (contains!3299 rules!3447 rule!422))))

(declare-fun res!764986 () Bool)

(assert (=> start!166586 (=> (not res!764986) (not e!1091594))))

(get-info :version)

(assert (=> start!166586 (= res!764986 ((_ is Lexer!2910) thiss!24550))))

(assert (=> start!166586 e!1091594))

(assert (=> start!166586 true))

(declare-fun e!1091586 () Bool)

(assert (=> start!166586 e!1091586))

(declare-fun e!1091596 () Bool)

(assert (=> start!166586 e!1091596))

(declare-fun inv!24009 (Token!6132) Bool)

(assert (=> start!166586 (and (inv!24009 token!523) e!1091598)))

(declare-fun b!1706604 () Bool)

(declare-fun e!1091589 () Bool)

(declare-fun tp!487522 () Bool)

(assert (=> b!1706604 (= e!1091596 (and tp!487522 (inv!24005 (tag!3579 rule!422)) (inv!24008 (transformation!3283 rule!422)) e!1091589))))

(declare-fun b!1706615 () Bool)

(declare-fun res!764989 () Bool)

(assert (=> b!1706615 (=> (not res!764989) (not e!1091590))))

(declare-fun isEmpty!11682 (List!18678) Bool)

(assert (=> b!1706615 (= res!764989 (isEmpty!11682 (_2!10575 lt!652483)))))

(assert (=> b!1706616 (= e!1091589 (and tp!487515 tp!487524))))

(declare-fun tp!487514 () Bool)

(declare-fun b!1706617 () Bool)

(assert (=> b!1706617 (= e!1091588 (and tp!487514 (inv!24005 (tag!3579 (rule!5215 token!523))) (inv!24008 (transformation!3283 (rule!5215 token!523))) e!1091597))))

(declare-fun b!1706618 () Bool)

(declare-fun tp!487517 () Bool)

(assert (=> b!1706618 (= e!1091586 (and e!1091595 tp!487517))))

(assert (= (and start!166586 res!764986) b!1706611))

(assert (= (and b!1706611 res!764984) b!1706612))

(assert (= (and b!1706612 res!764982) b!1706614))

(assert (= (and b!1706614 res!764983) b!1706610))

(assert (= (and b!1706610 res!764988) b!1706608))

(assert (= (and b!1706608 res!764985) b!1706615))

(assert (= (and b!1706615 res!764989) b!1706606))

(assert (= (and b!1706606 res!764987) b!1706603))

(assert (= b!1706605 b!1706609))

(assert (= b!1706618 b!1706605))

(assert (= (and start!166586 ((_ is Cons!18609) rules!3447)) b!1706618))

(assert (= b!1706604 b!1706616))

(assert (= start!166586 b!1706604))

(assert (= b!1706617 b!1706607))

(assert (= b!1706613 b!1706617))

(assert (= start!166586 b!1706613))

(declare-fun m!2110221 () Bool)

(assert (=> b!1706603 m!2110221))

(declare-fun m!2110223 () Bool)

(assert (=> b!1706603 m!2110223))

(declare-fun m!2110225 () Bool)

(assert (=> b!1706603 m!2110225))

(declare-fun m!2110227 () Bool)

(assert (=> b!1706605 m!2110227))

(declare-fun m!2110229 () Bool)

(assert (=> b!1706605 m!2110229))

(declare-fun m!2110231 () Bool)

(assert (=> b!1706614 m!2110231))

(declare-fun m!2110233 () Bool)

(assert (=> b!1706608 m!2110233))

(declare-fun m!2110235 () Bool)

(assert (=> b!1706610 m!2110235))

(declare-fun m!2110237 () Bool)

(assert (=> b!1706610 m!2110237))

(declare-fun m!2110239 () Bool)

(assert (=> b!1706610 m!2110239))

(assert (=> b!1706610 m!2110239))

(declare-fun m!2110241 () Bool)

(assert (=> b!1706610 m!2110241))

(declare-fun m!2110243 () Bool)

(assert (=> b!1706613 m!2110243))

(declare-fun m!2110245 () Bool)

(assert (=> start!166586 m!2110245))

(declare-fun m!2110247 () Bool)

(assert (=> b!1706612 m!2110247))

(declare-fun m!2110249 () Bool)

(assert (=> b!1706604 m!2110249))

(declare-fun m!2110251 () Bool)

(assert (=> b!1706604 m!2110251))

(declare-fun m!2110253 () Bool)

(assert (=> b!1706615 m!2110253))

(declare-fun m!2110255 () Bool)

(assert (=> b!1706611 m!2110255))

(declare-fun m!2110257 () Bool)

(assert (=> b!1706617 m!2110257))

(declare-fun m!2110259 () Bool)

(assert (=> b!1706617 m!2110259))

(check-sat (not b!1706603) (not b!1706608) (not b!1706610) (not b!1706604) (not b_next!46839) (not b!1706605) b_and!123395 b_and!123401 (not b_next!46841) (not b!1706612) (not b_next!46835) (not b!1706617) b_and!123393 b_and!123403 (not b!1706613) (not b!1706618) b_and!123397 b_and!123399 (not b_next!46843) (not b!1706614) (not b_next!46845) (not b!1706611) (not start!166586) (not b!1706615) (not b_next!46837))
(check-sat b_and!123393 b_and!123403 b_and!123397 (not b_next!46839) (not b_next!46845) b_and!123395 b_and!123401 (not b_next!46841) (not b_next!46835) (not b_next!46837) b_and!123399 (not b_next!46843))
