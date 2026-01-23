; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348502 () Bool)

(assert start!348502)

(declare-fun b!3699394 () Bool)

(declare-fun b_free!98513 () Bool)

(declare-fun b_next!99217 () Bool)

(assert (=> b!3699394 (= b_free!98513 (not b_next!99217))))

(declare-fun tp!1124471 () Bool)

(declare-fun b_and!276599 () Bool)

(assert (=> b!3699394 (= tp!1124471 b_and!276599)))

(declare-fun b_free!98515 () Bool)

(declare-fun b_next!99219 () Bool)

(assert (=> b!3699394 (= b_free!98515 (not b_next!99219))))

(declare-fun tp!1124470 () Bool)

(declare-fun b_and!276601 () Bool)

(assert (=> b!3699394 (= tp!1124470 b_and!276601)))

(declare-fun b!3699389 () Bool)

(declare-fun b_free!98517 () Bool)

(declare-fun b_next!99221 () Bool)

(assert (=> b!3699389 (= b_free!98517 (not b_next!99221))))

(declare-fun tp!1124475 () Bool)

(declare-fun b_and!276603 () Bool)

(assert (=> b!3699389 (= tp!1124475 b_and!276603)))

(declare-fun b_free!98519 () Bool)

(declare-fun b_next!99223 () Bool)

(assert (=> b!3699389 (= b_free!98519 (not b_next!99223))))

(declare-fun tp!1124476 () Bool)

(declare-fun b_and!276605 () Bool)

(assert (=> b!3699389 (= tp!1124476 b_and!276605)))

(declare-fun b!3699385 () Bool)

(declare-fun e!2291005 () Bool)

(declare-datatypes ((List!39414 0))(
  ( (Nil!39290) (Cons!39290 (h!44710 (_ BitVec 16)) (t!301923 List!39414)) )
))
(declare-datatypes ((TokenValue!6196 0))(
  ( (FloatLiteralValue!12392 (text!43817 List!39414)) (TokenValueExt!6195 (__x!24609 Int)) (Broken!30980 (value!190459 List!39414)) (Object!6319) (End!6196) (Def!6196) (Underscore!6196) (Match!6196) (Else!6196) (Error!6196) (Case!6196) (If!6196) (Extends!6196) (Abstract!6196) (Class!6196) (Val!6196) (DelimiterValue!12392 (del!6256 List!39414)) (KeywordValue!6202 (value!190460 List!39414)) (CommentValue!12392 (value!190461 List!39414)) (WhitespaceValue!12392 (value!190462 List!39414)) (IndentationValue!6196 (value!190463 List!39414)) (String!44313) (Int32!6196) (Broken!30981 (value!190464 List!39414)) (Boolean!6197) (Unit!57263) (OperatorValue!6199 (op!6256 List!39414)) (IdentifierValue!12392 (value!190465 List!39414)) (IdentifierValue!12393 (value!190466 List!39414)) (WhitespaceValue!12393 (value!190467 List!39414)) (True!12392) (False!12392) (Broken!30982 (value!190468 List!39414)) (Broken!30983 (value!190469 List!39414)) (True!12393) (RightBrace!6196) (RightBracket!6196) (Colon!6196) (Null!6196) (Comma!6196) (LeftBracket!6196) (False!12393) (LeftBrace!6196) (ImaginaryLiteralValue!6196 (text!43818 List!39414)) (StringLiteralValue!18588 (value!190470 List!39414)) (EOFValue!6196 (value!190471 List!39414)) (IdentValue!6196 (value!190472 List!39414)) (DelimiterValue!12393 (value!190473 List!39414)) (DedentValue!6196 (value!190474 List!39414)) (NewLineValue!6196 (value!190475 List!39414)) (IntegerValue!18588 (value!190476 (_ BitVec 32)) (text!43819 List!39414)) (IntegerValue!18589 (value!190477 Int) (text!43820 List!39414)) (Times!6196) (Or!6196) (Equal!6196) (Minus!6196) (Broken!30984 (value!190478 List!39414)) (And!6196) (Div!6196) (LessEqual!6196) (Mod!6196) (Concat!16921) (Not!6196) (Plus!6196) (SpaceValue!6196 (value!190479 List!39414)) (IntegerValue!18590 (value!190480 Int) (text!43821 List!39414)) (StringLiteralValue!18589 (text!43822 List!39414)) (FloatLiteralValue!12393 (text!43823 List!39414)) (BytesLiteralValue!6196 (value!190481 List!39414)) (CommentValue!12393 (value!190482 List!39414)) (StringLiteralValue!18590 (value!190483 List!39414)) (ErrorTokenValue!6196 (msg!6257 List!39414)) )
))
(declare-datatypes ((C!21636 0))(
  ( (C!21637 (val!12866 Int)) )
))
(declare-datatypes ((Regex!10725 0))(
  ( (ElementMatch!10725 (c!639344 C!21636)) (Concat!16922 (regOne!21962 Regex!10725) (regTwo!21962 Regex!10725)) (EmptyExpr!10725) (Star!10725 (reg!11054 Regex!10725)) (EmptyLang!10725) (Union!10725 (regOne!21963 Regex!10725) (regTwo!21963 Regex!10725)) )
))
(declare-datatypes ((String!44314 0))(
  ( (String!44315 (value!190484 String)) )
))
(declare-datatypes ((List!39415 0))(
  ( (Nil!39291) (Cons!39291 (h!44711 C!21636) (t!301924 List!39415)) )
))
(declare-datatypes ((IArray!24131 0))(
  ( (IArray!24132 (innerList!12123 List!39415)) )
))
(declare-datatypes ((Conc!12063 0))(
  ( (Node!12063 (left!30596 Conc!12063) (right!30926 Conc!12063) (csize!24356 Int) (cheight!12274 Int)) (Leaf!18657 (xs!15265 IArray!24131) (csize!24357 Int)) (Empty!12063) )
))
(declare-datatypes ((BalanceConc!23740 0))(
  ( (BalanceConc!23741 (c!639345 Conc!12063)) )
))
(declare-datatypes ((TokenValueInjection!11820 0))(
  ( (TokenValueInjection!11821 (toValue!8302 Int) (toChars!8161 Int)) )
))
(declare-datatypes ((Rule!11732 0))(
  ( (Rule!11733 (regex!5966 Regex!10725) (tag!6798 String!44314) (isSeparator!5966 Bool) (transformation!5966 TokenValueInjection!11820)) )
))
(declare-datatypes ((List!39416 0))(
  ( (Nil!39292) (Cons!39292 (h!44712 Rule!11732) (t!301925 List!39416)) )
))
(declare-fun rules!3598 () List!39416)

(declare-fun e!2291011 () Bool)

(declare-fun tp!1124473 () Bool)

(declare-fun inv!52803 (String!44314) Bool)

(declare-fun inv!52806 (TokenValueInjection!11820) Bool)

(assert (=> b!3699385 (= e!2291005 (and tp!1124473 (inv!52803 (tag!6798 (h!44712 rules!3598))) (inv!52806 (transformation!5966 (h!44712 rules!3598))) e!2291011))))

(declare-fun b!3699386 () Bool)

(declare-fun e!2291007 () Bool)

(declare-fun e!2291001 () Bool)

(assert (=> b!3699386 (= e!2291007 e!2291001)))

(declare-fun res!1504551 () Bool)

(assert (=> b!3699386 (=> (not res!1504551) (not e!2291001))))

(declare-fun e!2291012 () Bool)

(assert (=> b!3699386 (= res!1504551 e!2291012)))

(declare-fun res!1504558 () Bool)

(assert (=> b!3699386 (=> res!1504558 e!2291012)))

(declare-datatypes ((Token!11286 0))(
  ( (Token!11287 (value!190485 TokenValue!6196) (rule!8828 Rule!11732) (size!29966 Int) (originalCharacters!6674 List!39415)) )
))
(declare-datatypes ((tuple2!39156 0))(
  ( (tuple2!39157 (_1!22712 Token!11286) (_2!22712 List!39415)) )
))
(declare-datatypes ((Option!8502 0))(
  ( (None!8501) (Some!8501 (v!38461 tuple2!39156)) )
))
(declare-fun lt!1294651 () Option!8502)

(declare-fun isDefined!6691 (Option!8502) Bool)

(assert (=> b!3699386 (= res!1504558 (not (isDefined!6691 lt!1294651)))))

(declare-fun input!3172 () List!39415)

(declare-datatypes ((LexerInterface!5555 0))(
  ( (LexerInterfaceExt!5552 (__x!24610 Int)) (Lexer!5553) )
))
(declare-fun thiss!25322 () LexerInterface!5555)

(declare-fun maxPrefixOneRule!2187 (LexerInterface!5555 Rule!11732 List!39415) Option!8502)

(assert (=> b!3699386 (= lt!1294651 (maxPrefixOneRule!2187 thiss!25322 (h!44712 rules!3598) input!3172))))

(declare-fun res!1504555 () Bool)

(declare-fun e!2291009 () Bool)

(assert (=> start!348502 (=> (not res!1504555) (not e!2291009))))

(get-info :version)

(assert (=> start!348502 (= res!1504555 ((_ is Lexer!5553) thiss!25322))))

(assert (=> start!348502 e!2291009))

(assert (=> start!348502 true))

(declare-fun e!2291010 () Bool)

(assert (=> start!348502 e!2291010))

(declare-fun token!544 () Token!11286)

(declare-fun e!2290999 () Bool)

(declare-fun inv!52807 (Token!11286) Bool)

(assert (=> start!348502 (and (inv!52807 token!544) e!2290999)))

(declare-fun e!2291002 () Bool)

(assert (=> start!348502 e!2291002))

(declare-fun b!3699387 () Bool)

(declare-fun get!13072 (Option!8502) tuple2!39156)

(assert (=> b!3699387 (= e!2291012 (not (= (_1!22712 (get!13072 lt!1294651)) token!544)))))

(declare-fun b!3699388 () Bool)

(declare-fun res!1504553 () Bool)

(assert (=> b!3699388 (=> (not res!1504553) (not e!2291009))))

(declare-fun rulesInvariant!4952 (LexerInterface!5555 List!39416) Bool)

(assert (=> b!3699388 (= res!1504553 (rulesInvariant!4952 thiss!25322 rules!3598))))

(assert (=> b!3699389 (= e!2291011 (and tp!1124475 tp!1124476))))

(declare-fun b!3699390 () Bool)

(declare-fun tp_is_empty!18525 () Bool)

(declare-fun tp!1124474 () Bool)

(assert (=> b!3699390 (= e!2291002 (and tp_is_empty!18525 tp!1124474))))

(declare-fun b!3699391 () Bool)

(declare-fun tp!1124469 () Bool)

(assert (=> b!3699391 (= e!2291010 (and e!2291005 tp!1124469))))

(declare-fun b!3699392 () Bool)

(declare-fun res!1504556 () Bool)

(assert (=> b!3699392 (=> (not res!1504556) (not e!2291007))))

(declare-fun lt!1294652 () Option!8502)

(assert (=> b!3699392 (= res!1504556 (= (_1!22712 (get!13072 lt!1294652)) token!544))))

(declare-fun b!3699393 () Bool)

(declare-fun res!1504559 () Bool)

(assert (=> b!3699393 (=> (not res!1504559) (not e!2291009))))

(declare-fun isEmpty!23416 (List!39416) Bool)

(assert (=> b!3699393 (= res!1504559 (not (isEmpty!23416 rules!3598)))))

(declare-fun e!2291000 () Bool)

(assert (=> b!3699394 (= e!2291000 (and tp!1124471 tp!1124470))))

(declare-fun b!3699395 () Bool)

(declare-fun res!1504554 () Bool)

(assert (=> b!3699395 (=> (not res!1504554) (not e!2291007))))

(assert (=> b!3699395 (= res!1504554 ((_ is Cons!39292) rules!3598))))

(declare-fun b!3699396 () Bool)

(declare-fun res!1504552 () Bool)

(assert (=> b!3699396 (=> (not res!1504552) (not e!2291001))))

(assert (=> b!3699396 (= res!1504552 (not (isEmpty!23416 (t!301925 rules!3598))))))

(declare-fun b!3699397 () Bool)

(assert (=> b!3699397 (= e!2291001 (not true))))

(assert (=> b!3699397 (rulesInvariant!4952 thiss!25322 (t!301925 rules!3598))))

(declare-datatypes ((Unit!57264 0))(
  ( (Unit!57265) )
))
(declare-fun lt!1294650 () Unit!57264)

(declare-fun lemmaInvariantOnRulesThenOnTail!662 (LexerInterface!5555 Rule!11732 List!39416) Unit!57264)

(assert (=> b!3699397 (= lt!1294650 (lemmaInvariantOnRulesThenOnTail!662 thiss!25322 (h!44712 rules!3598) (t!301925 rules!3598)))))

(declare-fun b!3699398 () Bool)

(assert (=> b!3699398 (= e!2291009 e!2291007)))

(declare-fun res!1504557 () Bool)

(assert (=> b!3699398 (=> (not res!1504557) (not e!2291007))))

(assert (=> b!3699398 (= res!1504557 (isDefined!6691 lt!1294652))))

(declare-fun maxPrefix!3077 (LexerInterface!5555 List!39416 List!39415) Option!8502)

(assert (=> b!3699398 (= lt!1294652 (maxPrefix!3077 thiss!25322 rules!3598 input!3172))))

(declare-fun tp!1124468 () Bool)

(declare-fun e!2291006 () Bool)

(declare-fun b!3699399 () Bool)

(declare-fun inv!21 (TokenValue!6196) Bool)

(assert (=> b!3699399 (= e!2290999 (and (inv!21 (value!190485 token!544)) e!2291006 tp!1124468))))

(declare-fun tp!1124472 () Bool)

(declare-fun b!3699400 () Bool)

(assert (=> b!3699400 (= e!2291006 (and tp!1124472 (inv!52803 (tag!6798 (rule!8828 token!544))) (inv!52806 (transformation!5966 (rule!8828 token!544))) e!2291000))))

(assert (= (and start!348502 res!1504555) b!3699388))

(assert (= (and b!3699388 res!1504553) b!3699393))

(assert (= (and b!3699393 res!1504559) b!3699398))

(assert (= (and b!3699398 res!1504557) b!3699392))

(assert (= (and b!3699392 res!1504556) b!3699395))

(assert (= (and b!3699395 res!1504554) b!3699386))

(assert (= (and b!3699386 (not res!1504558)) b!3699387))

(assert (= (and b!3699386 res!1504551) b!3699396))

(assert (= (and b!3699396 res!1504552) b!3699397))

(assert (= b!3699385 b!3699389))

(assert (= b!3699391 b!3699385))

(assert (= (and start!348502 ((_ is Cons!39292) rules!3598)) b!3699391))

(assert (= b!3699400 b!3699394))

(assert (= b!3699399 b!3699400))

(assert (= start!348502 b!3699399))

(assert (= (and start!348502 ((_ is Cons!39291) input!3172)) b!3699390))

(declare-fun m!4210531 () Bool)

(assert (=> start!348502 m!4210531))

(declare-fun m!4210533 () Bool)

(assert (=> b!3699387 m!4210533))

(declare-fun m!4210535 () Bool)

(assert (=> b!3699400 m!4210535))

(declare-fun m!4210537 () Bool)

(assert (=> b!3699400 m!4210537))

(declare-fun m!4210539 () Bool)

(assert (=> b!3699385 m!4210539))

(declare-fun m!4210541 () Bool)

(assert (=> b!3699385 m!4210541))

(declare-fun m!4210543 () Bool)

(assert (=> b!3699392 m!4210543))

(declare-fun m!4210545 () Bool)

(assert (=> b!3699393 m!4210545))

(declare-fun m!4210547 () Bool)

(assert (=> b!3699388 m!4210547))

(declare-fun m!4210549 () Bool)

(assert (=> b!3699397 m!4210549))

(declare-fun m!4210551 () Bool)

(assert (=> b!3699397 m!4210551))

(declare-fun m!4210553 () Bool)

(assert (=> b!3699396 m!4210553))

(declare-fun m!4210555 () Bool)

(assert (=> b!3699398 m!4210555))

(declare-fun m!4210557 () Bool)

(assert (=> b!3699398 m!4210557))

(declare-fun m!4210559 () Bool)

(assert (=> b!3699399 m!4210559))

(declare-fun m!4210561 () Bool)

(assert (=> b!3699386 m!4210561))

(declare-fun m!4210563 () Bool)

(assert (=> b!3699386 m!4210563))

(check-sat (not b!3699387) (not b_next!99217) (not b!3699397) (not b_next!99223) (not b!3699385) (not b!3699391) (not b!3699400) (not b_next!99219) b_and!276599 (not b!3699396) (not b!3699386) b_and!276601 (not b!3699393) (not b_next!99221) (not b!3699398) (not b!3699399) (not b!3699392) (not start!348502) b_and!276603 b_and!276605 (not b!3699390) (not b!3699388) tp_is_empty!18525)
(check-sat (not b_next!99217) (not b_next!99223) (not b_next!99219) b_and!276599 b_and!276601 (not b_next!99221) b_and!276603 b_and!276605)
