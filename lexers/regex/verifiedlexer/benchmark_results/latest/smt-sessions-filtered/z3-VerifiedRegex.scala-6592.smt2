; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348498 () Bool)

(assert start!348498)

(declare-fun b!3699293 () Bool)

(declare-fun b_free!98497 () Bool)

(declare-fun b_next!99201 () Bool)

(assert (=> b!3699293 (= b_free!98497 (not b_next!99201))))

(declare-fun tp!1124420 () Bool)

(declare-fun b_and!276583 () Bool)

(assert (=> b!3699293 (= tp!1124420 b_and!276583)))

(declare-fun b_free!98499 () Bool)

(declare-fun b_next!99203 () Bool)

(assert (=> b!3699293 (= b_free!98499 (not b_next!99203))))

(declare-fun tp!1124419 () Bool)

(declare-fun b_and!276585 () Bool)

(assert (=> b!3699293 (= tp!1124419 b_and!276585)))

(declare-fun b!3699300 () Bool)

(declare-fun b_free!98501 () Bool)

(declare-fun b_next!99205 () Bool)

(assert (=> b!3699300 (= b_free!98501 (not b_next!99205))))

(declare-fun tp!1124415 () Bool)

(declare-fun b_and!276587 () Bool)

(assert (=> b!3699300 (= tp!1124415 b_and!276587)))

(declare-fun b_free!98503 () Bool)

(declare-fun b_next!99207 () Bool)

(assert (=> b!3699300 (= b_free!98503 (not b_next!99207))))

(declare-fun tp!1124418 () Bool)

(declare-fun b_and!276589 () Bool)

(assert (=> b!3699300 (= tp!1124418 b_and!276589)))

(declare-fun b!3699289 () Bool)

(declare-fun e!2290919 () Bool)

(declare-fun e!2290920 () Bool)

(declare-fun tp!1124417 () Bool)

(assert (=> b!3699289 (= e!2290919 (and e!2290920 tp!1124417))))

(declare-fun b!3699290 () Bool)

(declare-fun res!1504499 () Bool)

(declare-fun e!2290922 () Bool)

(assert (=> b!3699290 (=> (not res!1504499) (not e!2290922))))

(declare-datatypes ((LexerInterface!5553 0))(
  ( (LexerInterfaceExt!5550 (__x!24605 Int)) (Lexer!5551) )
))
(declare-fun thiss!25322 () LexerInterface!5553)

(declare-datatypes ((List!39408 0))(
  ( (Nil!39284) (Cons!39284 (h!44704 (_ BitVec 16)) (t!301917 List!39408)) )
))
(declare-datatypes ((TokenValue!6194 0))(
  ( (FloatLiteralValue!12388 (text!43803 List!39408)) (TokenValueExt!6193 (__x!24606 Int)) (Broken!30970 (value!190402 List!39408)) (Object!6317) (End!6194) (Def!6194) (Underscore!6194) (Match!6194) (Else!6194) (Error!6194) (Case!6194) (If!6194) (Extends!6194) (Abstract!6194) (Class!6194) (Val!6194) (DelimiterValue!12388 (del!6254 List!39408)) (KeywordValue!6200 (value!190403 List!39408)) (CommentValue!12388 (value!190404 List!39408)) (WhitespaceValue!12388 (value!190405 List!39408)) (IndentationValue!6194 (value!190406 List!39408)) (String!44303) (Int32!6194) (Broken!30971 (value!190407 List!39408)) (Boolean!6195) (Unit!57259) (OperatorValue!6197 (op!6254 List!39408)) (IdentifierValue!12388 (value!190408 List!39408)) (IdentifierValue!12389 (value!190409 List!39408)) (WhitespaceValue!12389 (value!190410 List!39408)) (True!12388) (False!12388) (Broken!30972 (value!190411 List!39408)) (Broken!30973 (value!190412 List!39408)) (True!12389) (RightBrace!6194) (RightBracket!6194) (Colon!6194) (Null!6194) (Comma!6194) (LeftBracket!6194) (False!12389) (LeftBrace!6194) (ImaginaryLiteralValue!6194 (text!43804 List!39408)) (StringLiteralValue!18582 (value!190413 List!39408)) (EOFValue!6194 (value!190414 List!39408)) (IdentValue!6194 (value!190415 List!39408)) (DelimiterValue!12389 (value!190416 List!39408)) (DedentValue!6194 (value!190417 List!39408)) (NewLineValue!6194 (value!190418 List!39408)) (IntegerValue!18582 (value!190419 (_ BitVec 32)) (text!43805 List!39408)) (IntegerValue!18583 (value!190420 Int) (text!43806 List!39408)) (Times!6194) (Or!6194) (Equal!6194) (Minus!6194) (Broken!30974 (value!190421 List!39408)) (And!6194) (Div!6194) (LessEqual!6194) (Mod!6194) (Concat!16917) (Not!6194) (Plus!6194) (SpaceValue!6194 (value!190422 List!39408)) (IntegerValue!18584 (value!190423 Int) (text!43807 List!39408)) (StringLiteralValue!18583 (text!43808 List!39408)) (FloatLiteralValue!12389 (text!43809 List!39408)) (BytesLiteralValue!6194 (value!190424 List!39408)) (CommentValue!12389 (value!190425 List!39408)) (StringLiteralValue!18584 (value!190426 List!39408)) (ErrorTokenValue!6194 (msg!6255 List!39408)) )
))
(declare-datatypes ((C!21632 0))(
  ( (C!21633 (val!12864 Int)) )
))
(declare-datatypes ((Regex!10723 0))(
  ( (ElementMatch!10723 (c!639338 C!21632)) (Concat!16918 (regOne!21958 Regex!10723) (regTwo!21958 Regex!10723)) (EmptyExpr!10723) (Star!10723 (reg!11052 Regex!10723)) (EmptyLang!10723) (Union!10723 (regOne!21959 Regex!10723) (regTwo!21959 Regex!10723)) )
))
(declare-datatypes ((String!44304 0))(
  ( (String!44305 (value!190427 String)) )
))
(declare-datatypes ((List!39409 0))(
  ( (Nil!39285) (Cons!39285 (h!44705 C!21632) (t!301918 List!39409)) )
))
(declare-datatypes ((IArray!24127 0))(
  ( (IArray!24128 (innerList!12121 List!39409)) )
))
(declare-datatypes ((Conc!12061 0))(
  ( (Node!12061 (left!30593 Conc!12061) (right!30923 Conc!12061) (csize!24352 Int) (cheight!12272 Int)) (Leaf!18654 (xs!15263 IArray!24127) (csize!24353 Int)) (Empty!12061) )
))
(declare-datatypes ((BalanceConc!23736 0))(
  ( (BalanceConc!23737 (c!639339 Conc!12061)) )
))
(declare-datatypes ((TokenValueInjection!11816 0))(
  ( (TokenValueInjection!11817 (toValue!8300 Int) (toChars!8159 Int)) )
))
(declare-datatypes ((Rule!11728 0))(
  ( (Rule!11729 (regex!5964 Regex!10723) (tag!6796 String!44304) (isSeparator!5964 Bool) (transformation!5964 TokenValueInjection!11816)) )
))
(declare-datatypes ((List!39410 0))(
  ( (Nil!39286) (Cons!39286 (h!44706 Rule!11728) (t!301919 List!39410)) )
))
(declare-fun rules!3598 () List!39410)

(declare-fun rulesInvariant!4950 (LexerInterface!5553 List!39410) Bool)

(assert (=> b!3699290 (= res!1504499 (rulesInvariant!4950 thiss!25322 rules!3598))))

(declare-fun b!3699291 () Bool)

(declare-fun e!2290923 () Bool)

(assert (=> b!3699291 (= e!2290922 e!2290923)))

(declare-fun res!1504500 () Bool)

(assert (=> b!3699291 (=> (not res!1504500) (not e!2290923))))

(declare-datatypes ((Token!11282 0))(
  ( (Token!11283 (value!190428 TokenValue!6194) (rule!8826 Rule!11728) (size!29964 Int) (originalCharacters!6672 List!39409)) )
))
(declare-datatypes ((tuple2!39152 0))(
  ( (tuple2!39153 (_1!22710 Token!11282) (_2!22710 List!39409)) )
))
(declare-datatypes ((Option!8500 0))(
  ( (None!8499) (Some!8499 (v!38459 tuple2!39152)) )
))
(declare-fun lt!1294633 () Option!8500)

(declare-fun isDefined!6689 (Option!8500) Bool)

(assert (=> b!3699291 (= res!1504500 (isDefined!6689 lt!1294633))))

(declare-fun input!3172 () List!39409)

(declare-fun maxPrefix!3075 (LexerInterface!5553 List!39410 List!39409) Option!8500)

(assert (=> b!3699291 (= lt!1294633 (maxPrefix!3075 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3699292 () Bool)

(declare-fun e!2290925 () Bool)

(declare-fun tp_is_empty!18521 () Bool)

(declare-fun tp!1124416 () Bool)

(assert (=> b!3699292 (= e!2290925 (and tp_is_empty!18521 tp!1124416))))

(declare-fun e!2290926 () Bool)

(assert (=> b!3699293 (= e!2290926 (and tp!1124420 tp!1124419))))

(declare-fun e!2290928 () Bool)

(declare-fun token!544 () Token!11282)

(declare-fun tp!1124414 () Bool)

(declare-fun b!3699294 () Bool)

(declare-fun e!2290916 () Bool)

(declare-fun inv!52796 (String!44304) Bool)

(declare-fun inv!52799 (TokenValueInjection!11816) Bool)

(assert (=> b!3699294 (= e!2290928 (and tp!1124414 (inv!52796 (tag!6796 (rule!8826 token!544))) (inv!52799 (transformation!5964 (rule!8826 token!544))) e!2290916))))

(declare-fun b!3699295 () Bool)

(declare-fun res!1504497 () Bool)

(declare-fun e!2290924 () Bool)

(assert (=> b!3699295 (=> (not res!1504497) (not e!2290924))))

(declare-fun isEmpty!23414 (List!39410) Bool)

(assert (=> b!3699295 (= res!1504497 (not (isEmpty!23414 (t!301919 rules!3598))))))

(declare-fun b!3699296 () Bool)

(declare-fun res!1504505 () Bool)

(assert (=> b!3699296 (=> (not res!1504505) (not e!2290922))))

(assert (=> b!3699296 (= res!1504505 (not (isEmpty!23414 rules!3598)))))

(declare-fun res!1504503 () Bool)

(assert (=> start!348498 (=> (not res!1504503) (not e!2290922))))

(get-info :version)

(assert (=> start!348498 (= res!1504503 ((_ is Lexer!5551) thiss!25322))))

(assert (=> start!348498 e!2290922))

(assert (=> start!348498 true))

(assert (=> start!348498 e!2290919))

(declare-fun e!2290921 () Bool)

(declare-fun inv!52800 (Token!11282) Bool)

(assert (=> start!348498 (and (inv!52800 token!544) e!2290921)))

(assert (=> start!348498 e!2290925))

(declare-fun b!3699297 () Bool)

(declare-fun res!1504504 () Bool)

(assert (=> b!3699297 (=> (not res!1504504) (not e!2290923))))

(assert (=> b!3699297 (= res!1504504 ((_ is Cons!39286) rules!3598))))

(declare-fun b!3699298 () Bool)

(declare-fun tp!1124421 () Bool)

(declare-fun inv!21 (TokenValue!6194) Bool)

(assert (=> b!3699298 (= e!2290921 (and (inv!21 (value!190428 token!544)) e!2290928 tp!1124421))))

(declare-fun b!3699299 () Bool)

(declare-fun res!1504502 () Bool)

(assert (=> b!3699299 (=> (not res!1504502) (not e!2290923))))

(declare-fun get!13069 (Option!8500) tuple2!39152)

(assert (=> b!3699299 (= res!1504502 (= (_1!22710 (get!13069 lt!1294633)) token!544))))

(assert (=> b!3699300 (= e!2290916 (and tp!1124415 tp!1124418))))

(declare-fun b!3699301 () Bool)

(assert (=> b!3699301 (= e!2290924 (not (rulesInvariant!4950 thiss!25322 (Cons!39286 (h!44706 rules!3598) (t!301919 rules!3598)))))))

(declare-fun tp!1124422 () Bool)

(declare-fun b!3699302 () Bool)

(assert (=> b!3699302 (= e!2290920 (and tp!1124422 (inv!52796 (tag!6796 (h!44706 rules!3598))) (inv!52799 (transformation!5964 (h!44706 rules!3598))) e!2290926))))

(declare-fun b!3699303 () Bool)

(declare-fun e!2290918 () Bool)

(declare-fun lt!1294634 () Option!8500)

(assert (=> b!3699303 (= e!2290918 (not (= (_1!22710 (get!13069 lt!1294634)) token!544)))))

(declare-fun b!3699304 () Bool)

(assert (=> b!3699304 (= e!2290923 e!2290924)))

(declare-fun res!1504498 () Bool)

(assert (=> b!3699304 (=> (not res!1504498) (not e!2290924))))

(assert (=> b!3699304 (= res!1504498 e!2290918)))

(declare-fun res!1504501 () Bool)

(assert (=> b!3699304 (=> res!1504501 e!2290918)))

(assert (=> b!3699304 (= res!1504501 (not (isDefined!6689 lt!1294634)))))

(declare-fun maxPrefixOneRule!2185 (LexerInterface!5553 Rule!11728 List!39409) Option!8500)

(assert (=> b!3699304 (= lt!1294634 (maxPrefixOneRule!2185 thiss!25322 (h!44706 rules!3598) input!3172))))

(assert (= (and start!348498 res!1504503) b!3699290))

(assert (= (and b!3699290 res!1504499) b!3699296))

(assert (= (and b!3699296 res!1504505) b!3699291))

(assert (= (and b!3699291 res!1504500) b!3699299))

(assert (= (and b!3699299 res!1504502) b!3699297))

(assert (= (and b!3699297 res!1504504) b!3699304))

(assert (= (and b!3699304 (not res!1504501)) b!3699303))

(assert (= (and b!3699304 res!1504498) b!3699295))

(assert (= (and b!3699295 res!1504497) b!3699301))

(assert (= b!3699302 b!3699293))

(assert (= b!3699289 b!3699302))

(assert (= (and start!348498 ((_ is Cons!39286) rules!3598)) b!3699289))

(assert (= b!3699294 b!3699300))

(assert (= b!3699298 b!3699294))

(assert (= start!348498 b!3699298))

(assert (= (and start!348498 ((_ is Cons!39285) input!3172)) b!3699292))

(declare-fun m!4210465 () Bool)

(assert (=> b!3699295 m!4210465))

(declare-fun m!4210467 () Bool)

(assert (=> b!3699298 m!4210467))

(declare-fun m!4210469 () Bool)

(assert (=> start!348498 m!4210469))

(declare-fun m!4210471 () Bool)

(assert (=> b!3699301 m!4210471))

(declare-fun m!4210473 () Bool)

(assert (=> b!3699302 m!4210473))

(declare-fun m!4210475 () Bool)

(assert (=> b!3699302 m!4210475))

(declare-fun m!4210477 () Bool)

(assert (=> b!3699294 m!4210477))

(declare-fun m!4210479 () Bool)

(assert (=> b!3699294 m!4210479))

(declare-fun m!4210481 () Bool)

(assert (=> b!3699296 m!4210481))

(declare-fun m!4210483 () Bool)

(assert (=> b!3699299 m!4210483))

(declare-fun m!4210485 () Bool)

(assert (=> b!3699291 m!4210485))

(declare-fun m!4210487 () Bool)

(assert (=> b!3699291 m!4210487))

(declare-fun m!4210489 () Bool)

(assert (=> b!3699304 m!4210489))

(declare-fun m!4210491 () Bool)

(assert (=> b!3699304 m!4210491))

(declare-fun m!4210493 () Bool)

(assert (=> b!3699303 m!4210493))

(declare-fun m!4210495 () Bool)

(assert (=> b!3699290 m!4210495))

(check-sat tp_is_empty!18521 (not b!3699291) (not b_next!99207) (not b!3699304) (not b!3699299) (not b!3699303) (not b!3699302) (not start!348498) b_and!276589 b_and!276583 (not b!3699301) (not b_next!99203) (not b!3699295) (not b_next!99205) b_and!276585 (not b!3699292) (not b!3699296) (not b!3699289) (not b!3699294) (not b!3699298) b_and!276587 (not b_next!99201) (not b!3699290))
(check-sat (not b_next!99207) b_and!276589 b_and!276583 (not b_next!99203) (not b_next!99205) b_and!276585 b_and!276587 (not b_next!99201))
