; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389820 () Bool)

(assert start!389820)

(declare-fun b!4114013 () Bool)

(declare-fun b_free!115835 () Bool)

(declare-fun b_next!116539 () Bool)

(assert (=> b!4114013 (= b_free!115835 (not b_next!116539))))

(declare-fun tp!1252641 () Bool)

(declare-fun b_and!317721 () Bool)

(assert (=> b!4114013 (= tp!1252641 b_and!317721)))

(declare-fun b_free!115837 () Bool)

(declare-fun b_next!116541 () Bool)

(assert (=> b!4114013 (= b_free!115837 (not b_next!116541))))

(declare-fun tp!1252642 () Bool)

(declare-fun b_and!317723 () Bool)

(assert (=> b!4114013 (= tp!1252642 b_and!317723)))

(declare-fun b!4114010 () Bool)

(declare-fun res!1680360 () Bool)

(declare-fun e!2552356 () Bool)

(assert (=> b!4114010 (=> (not res!1680360) (not e!2552356))))

(declare-datatypes ((String!51009 0))(
  ( (String!51010 (value!226378 String)) )
))
(declare-datatypes ((List!44488 0))(
  ( (Nil!44364) (Cons!44364 (h!49784 String!51009) (t!340239 List!44488)) )
))
(declare-fun acc!555 () List!44488)

(declare-fun newAcc!81 () List!44488)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6840 (List!44488) (InoxSet String!51009))

(assert (=> b!4114010 (= res!1680360 (= (content!6840 acc!555) (content!6840 newAcc!81)))))

(declare-fun b!4114011 () Bool)

(declare-fun e!2552353 () Bool)

(declare-fun tp!1252637 () Bool)

(declare-fun inv!58964 (String!51009) Bool)

(assert (=> b!4114011 (= e!2552353 (and (inv!58964 (h!49784 acc!555)) tp!1252637))))

(declare-fun b!4114012 () Bool)

(declare-fun e!2552352 () Bool)

(declare-fun tp!1252638 () Bool)

(assert (=> b!4114012 (= e!2552352 (and (inv!58964 (h!49784 newAcc!81)) tp!1252638))))

(declare-fun e!2552355 () Bool)

(assert (=> b!4114013 (= e!2552355 (and tp!1252641 tp!1252642))))

(declare-fun b!4114014 () Bool)

(declare-fun e!2552357 () Bool)

(declare-fun e!2552350 () Bool)

(declare-fun tp!1252640 () Bool)

(assert (=> b!4114014 (= e!2552357 (and e!2552350 tp!1252640))))

(declare-fun b!4114016 () Bool)

(declare-fun res!1680359 () Bool)

(assert (=> b!4114016 (=> (not res!1680359) (not e!2552356))))

(declare-datatypes ((LexerInterface!6811 0))(
  ( (LexerInterfaceExt!6808 (__x!27121 Int)) (Lexer!6809) )
))
(declare-fun thiss!26911 () LexerInterface!6811)

(declare-datatypes ((List!44489 0))(
  ( (Nil!44365) (Cons!44365 (h!49785 (_ BitVec 16)) (t!340240 List!44489)) )
))
(declare-datatypes ((TokenValue!7452 0))(
  ( (FloatLiteralValue!14904 (text!52609 List!44489)) (TokenValueExt!7451 (__x!27122 Int)) (Broken!37260 (value!226379 List!44489)) (Object!7575) (End!7452) (Def!7452) (Underscore!7452) (Match!7452) (Else!7452) (Error!7452) (Case!7452) (If!7452) (Extends!7452) (Abstract!7452) (Class!7452) (Val!7452) (DelimiterValue!14904 (del!7512 List!44489)) (KeywordValue!7458 (value!226380 List!44489)) (CommentValue!14904 (value!226381 List!44489)) (WhitespaceValue!14904 (value!226382 List!44489)) (IndentationValue!7452 (value!226383 List!44489)) (String!51011) (Int32!7452) (Broken!37261 (value!226384 List!44489)) (Boolean!7453) (Unit!63748) (OperatorValue!7455 (op!7512 List!44489)) (IdentifierValue!14904 (value!226385 List!44489)) (IdentifierValue!14905 (value!226386 List!44489)) (WhitespaceValue!14905 (value!226387 List!44489)) (True!14904) (False!14904) (Broken!37262 (value!226388 List!44489)) (Broken!37263 (value!226389 List!44489)) (True!14905) (RightBrace!7452) (RightBracket!7452) (Colon!7452) (Null!7452) (Comma!7452) (LeftBracket!7452) (False!14905) (LeftBrace!7452) (ImaginaryLiteralValue!7452 (text!52610 List!44489)) (StringLiteralValue!22356 (value!226390 List!44489)) (EOFValue!7452 (value!226391 List!44489)) (IdentValue!7452 (value!226392 List!44489)) (DelimiterValue!14905 (value!226393 List!44489)) (DedentValue!7452 (value!226394 List!44489)) (NewLineValue!7452 (value!226395 List!44489)) (IntegerValue!22356 (value!226396 (_ BitVec 32)) (text!52611 List!44489)) (IntegerValue!22357 (value!226397 Int) (text!52612 List!44489)) (Times!7452) (Or!7452) (Equal!7452) (Minus!7452) (Broken!37264 (value!226398 List!44489)) (And!7452) (Div!7452) (LessEqual!7452) (Mod!7452) (Concat!19579) (Not!7452) (Plus!7452) (SpaceValue!7452 (value!226399 List!44489)) (IntegerValue!22358 (value!226400 Int) (text!52613 List!44489)) (StringLiteralValue!22357 (text!52614 List!44489)) (FloatLiteralValue!14905 (text!52615 List!44489)) (BytesLiteralValue!7452 (value!226401 List!44489)) (CommentValue!14905 (value!226402 List!44489)) (StringLiteralValue!22358 (value!226403 List!44489)) (ErrorTokenValue!7452 (msg!7513 List!44489)) )
))
(declare-datatypes ((C!24440 0))(
  ( (C!24441 (val!14330 Int)) )
))
(declare-datatypes ((List!44490 0))(
  ( (Nil!44366) (Cons!44366 (h!49786 C!24440) (t!340241 List!44490)) )
))
(declare-datatypes ((IArray!26871 0))(
  ( (IArray!26872 (innerList!13493 List!44490)) )
))
(declare-datatypes ((Conc!13433 0))(
  ( (Node!13433 (left!33250 Conc!13433) (right!33580 Conc!13433) (csize!27096 Int) (cheight!13644 Int)) (Leaf!20759 (xs!16739 IArray!26871) (csize!27097 Int)) (Empty!13433) )
))
(declare-datatypes ((BalanceConc!26460 0))(
  ( (BalanceConc!26461 (c!706966 Conc!13433)) )
))
(declare-datatypes ((TokenValueInjection!14332 0))(
  ( (TokenValueInjection!14333 (toValue!9866 Int) (toChars!9725 Int)) )
))
(declare-datatypes ((Regex!12127 0))(
  ( (ElementMatch!12127 (c!706967 C!24440)) (Concat!19580 (regOne!24766 Regex!12127) (regTwo!24766 Regex!12127)) (EmptyExpr!12127) (Star!12127 (reg!12456 Regex!12127)) (EmptyLang!12127) (Union!12127 (regOne!24767 Regex!12127) (regTwo!24767 Regex!12127)) )
))
(declare-datatypes ((Rule!14244 0))(
  ( (Rule!14245 (regex!7222 Regex!12127) (tag!8082 String!51009) (isSeparator!7222 Bool) (transformation!7222 TokenValueInjection!14332)) )
))
(declare-datatypes ((List!44491 0))(
  ( (Nil!44367) (Cons!44367 (h!49787 Rule!14244) (t!340242 List!44491)) )
))
(declare-fun l!6467 () List!44491)

(declare-fun noDuplicateTag!2899 (LexerInterface!6811 List!44491 List!44488) Bool)

(assert (=> b!4114016 (= res!1680359 (noDuplicateTag!2899 thiss!26911 l!6467 acc!555))))

(declare-fun tp!1252639 () Bool)

(declare-fun b!4114017 () Bool)

(declare-fun inv!58966 (TokenValueInjection!14332) Bool)

(assert (=> b!4114017 (= e!2552350 (and tp!1252639 (inv!58964 (tag!8082 (h!49787 l!6467))) (inv!58966 (transformation!7222 (h!49787 l!6467))) e!2552355))))

(declare-fun b!4114015 () Bool)

(declare-fun ListPrimitiveSize!281 (List!44491) Int)

(assert (=> b!4114015 (= e!2552356 (< (ListPrimitiveSize!281 l!6467) 0))))

(declare-fun res!1680358 () Bool)

(assert (=> start!389820 (=> (not res!1680358) (not e!2552356))))

(get-info :version)

(assert (=> start!389820 (= res!1680358 ((_ is Lexer!6809) thiss!26911))))

(assert (=> start!389820 e!2552356))

(assert (=> start!389820 true))

(assert (=> start!389820 e!2552357))

(assert (=> start!389820 e!2552353))

(assert (=> start!389820 e!2552352))

(assert (= (and start!389820 res!1680358) b!4114016))

(assert (= (and b!4114016 res!1680359) b!4114010))

(assert (= (and b!4114010 res!1680360) b!4114015))

(assert (= b!4114017 b!4114013))

(assert (= b!4114014 b!4114017))

(assert (= (and start!389820 ((_ is Cons!44367) l!6467)) b!4114014))

(assert (= (and start!389820 ((_ is Cons!44364) acc!555)) b!4114011))

(assert (= (and start!389820 ((_ is Cons!44364) newAcc!81)) b!4114012))

(declare-fun m!4714573 () Bool)

(assert (=> b!4114011 m!4714573))

(declare-fun m!4714575 () Bool)

(assert (=> b!4114015 m!4714575))

(declare-fun m!4714577 () Bool)

(assert (=> b!4114017 m!4714577))

(declare-fun m!4714579 () Bool)

(assert (=> b!4114017 m!4714579))

(declare-fun m!4714581 () Bool)

(assert (=> b!4114016 m!4714581))

(declare-fun m!4714583 () Bool)

(assert (=> b!4114010 m!4714583))

(declare-fun m!4714585 () Bool)

(assert (=> b!4114010 m!4714585))

(declare-fun m!4714587 () Bool)

(assert (=> b!4114012 m!4714587))

(check-sat b_and!317723 (not b!4114011) (not b_next!116539) (not b!4114015) (not b!4114012) b_and!317721 (not b!4114017) (not b!4114014) (not b_next!116541) (not b!4114016) (not b!4114010))
(check-sat b_and!317723 b_and!317721 (not b_next!116541) (not b_next!116539))
(get-model)

(declare-fun d!1220326 () Bool)

(declare-fun lt!1468484 () Int)

(assert (=> d!1220326 (>= lt!1468484 0)))

(declare-fun e!2552360 () Int)

(assert (=> d!1220326 (= lt!1468484 e!2552360)))

(declare-fun c!706970 () Bool)

(assert (=> d!1220326 (= c!706970 ((_ is Nil!44367) l!6467))))

(assert (=> d!1220326 (= (ListPrimitiveSize!281 l!6467) lt!1468484)))

(declare-fun b!4114022 () Bool)

(assert (=> b!4114022 (= e!2552360 0)))

(declare-fun b!4114023 () Bool)

(assert (=> b!4114023 (= e!2552360 (+ 1 (ListPrimitiveSize!281 (t!340242 l!6467))))))

(assert (= (and d!1220326 c!706970) b!4114022))

(assert (= (and d!1220326 (not c!706970)) b!4114023))

(declare-fun m!4714589 () Bool)

(assert (=> b!4114023 m!4714589))

(assert (=> b!4114015 d!1220326))

(declare-fun d!1220328 () Bool)

(declare-fun c!706973 () Bool)

(assert (=> d!1220328 (= c!706973 ((_ is Nil!44364) acc!555))))

(declare-fun e!2552363 () (InoxSet String!51009))

(assert (=> d!1220328 (= (content!6840 acc!555) e!2552363)))

(declare-fun b!4114028 () Bool)

(assert (=> b!4114028 (= e!2552363 ((as const (Array String!51009 Bool)) false))))

(declare-fun b!4114029 () Bool)

(assert (=> b!4114029 (= e!2552363 ((_ map or) (store ((as const (Array String!51009 Bool)) false) (h!49784 acc!555) true) (content!6840 (t!340239 acc!555))))))

(assert (= (and d!1220328 c!706973) b!4114028))

(assert (= (and d!1220328 (not c!706973)) b!4114029))

(declare-fun m!4714591 () Bool)

(assert (=> b!4114029 m!4714591))

(declare-fun m!4714593 () Bool)

(assert (=> b!4114029 m!4714593))

(assert (=> b!4114010 d!1220328))

(declare-fun d!1220330 () Bool)

(declare-fun c!706974 () Bool)

(assert (=> d!1220330 (= c!706974 ((_ is Nil!44364) newAcc!81))))

(declare-fun e!2552364 () (InoxSet String!51009))

(assert (=> d!1220330 (= (content!6840 newAcc!81) e!2552364)))

(declare-fun b!4114030 () Bool)

(assert (=> b!4114030 (= e!2552364 ((as const (Array String!51009 Bool)) false))))

(declare-fun b!4114031 () Bool)

(assert (=> b!4114031 (= e!2552364 ((_ map or) (store ((as const (Array String!51009 Bool)) false) (h!49784 newAcc!81) true) (content!6840 (t!340239 newAcc!81))))))

(assert (= (and d!1220330 c!706974) b!4114030))

(assert (= (and d!1220330 (not c!706974)) b!4114031))

(declare-fun m!4714595 () Bool)

(assert (=> b!4114031 m!4714595))

(declare-fun m!4714597 () Bool)

(assert (=> b!4114031 m!4714597))

(assert (=> b!4114010 d!1220330))

(declare-fun d!1220332 () Bool)

(assert (=> d!1220332 (= (inv!58964 (h!49784 newAcc!81)) (= (mod (str.len (value!226378 (h!49784 newAcc!81))) 2) 0))))

(assert (=> b!4114012 d!1220332))

(declare-fun d!1220336 () Bool)

(declare-fun res!1680368 () Bool)

(declare-fun e!2552372 () Bool)

(assert (=> d!1220336 (=> res!1680368 e!2552372)))

(assert (=> d!1220336 (= res!1680368 ((_ is Nil!44367) l!6467))))

(assert (=> d!1220336 (= (noDuplicateTag!2899 thiss!26911 l!6467 acc!555) e!2552372)))

(declare-fun b!4114039 () Bool)

(declare-fun e!2552373 () Bool)

(assert (=> b!4114039 (= e!2552372 e!2552373)))

(declare-fun res!1680369 () Bool)

(assert (=> b!4114039 (=> (not res!1680369) (not e!2552373))))

(declare-fun contains!8890 (List!44488 String!51009) Bool)

(assert (=> b!4114039 (= res!1680369 (not (contains!8890 acc!555 (tag!8082 (h!49787 l!6467)))))))

(declare-fun b!4114040 () Bool)

(assert (=> b!4114040 (= e!2552373 (noDuplicateTag!2899 thiss!26911 (t!340242 l!6467) (Cons!44364 (tag!8082 (h!49787 l!6467)) acc!555)))))

(assert (= (and d!1220336 (not res!1680368)) b!4114039))

(assert (= (and b!4114039 res!1680369) b!4114040))

(declare-fun m!4714603 () Bool)

(assert (=> b!4114039 m!4714603))

(declare-fun m!4714605 () Bool)

(assert (=> b!4114040 m!4714605))

(assert (=> b!4114016 d!1220336))

(declare-fun d!1220342 () Bool)

(assert (=> d!1220342 (= (inv!58964 (h!49784 acc!555)) (= (mod (str.len (value!226378 (h!49784 acc!555))) 2) 0))))

(assert (=> b!4114011 d!1220342))

(declare-fun d!1220344 () Bool)

(assert (=> d!1220344 (= (inv!58964 (tag!8082 (h!49787 l!6467))) (= (mod (str.len (value!226378 (tag!8082 (h!49787 l!6467)))) 2) 0))))

(assert (=> b!4114017 d!1220344))

(declare-fun d!1220346 () Bool)

(declare-fun res!1680378 () Bool)

(declare-fun e!2552389 () Bool)

(assert (=> d!1220346 (=> (not res!1680378) (not e!2552389))))

(declare-fun semiInverseModEq!3112 (Int Int) Bool)

(assert (=> d!1220346 (= res!1680378 (semiInverseModEq!3112 (toChars!9725 (transformation!7222 (h!49787 l!6467))) (toValue!9866 (transformation!7222 (h!49787 l!6467)))))))

(assert (=> d!1220346 (= (inv!58966 (transformation!7222 (h!49787 l!6467))) e!2552389)))

(declare-fun b!4114063 () Bool)

(declare-fun equivClasses!3011 (Int Int) Bool)

(assert (=> b!4114063 (= e!2552389 (equivClasses!3011 (toChars!9725 (transformation!7222 (h!49787 l!6467))) (toValue!9866 (transformation!7222 (h!49787 l!6467)))))))

(assert (= (and d!1220346 res!1680378) b!4114063))

(declare-fun m!4714621 () Bool)

(assert (=> d!1220346 m!4714621))

(declare-fun m!4714623 () Bool)

(assert (=> b!4114063 m!4714623))

(assert (=> b!4114017 d!1220346))

(declare-fun b!4114102 () Bool)

(declare-fun b_free!115840 () Bool)

(declare-fun b_next!116545 () Bool)

(assert (=> b!4114102 (= b_free!115840 (not b_next!116545))))

(declare-fun tp!1252680 () Bool)

(declare-fun b_and!317727 () Bool)

(assert (=> b!4114102 (= tp!1252680 b_and!317727)))

(declare-fun b_free!115845 () Bool)

(declare-fun b_next!116549 () Bool)

(assert (=> b!4114102 (= b_free!115845 (not b_next!116549))))

(declare-fun tp!1252681 () Bool)

(declare-fun b_and!317731 () Bool)

(assert (=> b!4114102 (= tp!1252681 b_and!317731)))

(declare-fun e!2552418 () Bool)

(assert (=> b!4114102 (= e!2552418 (and tp!1252680 tp!1252681))))

(declare-fun b!4114101 () Bool)

(declare-fun e!2552417 () Bool)

(declare-fun tp!1252678 () Bool)

(assert (=> b!4114101 (= e!2552417 (and tp!1252678 (inv!58964 (tag!8082 (h!49787 (t!340242 l!6467)))) (inv!58966 (transformation!7222 (h!49787 (t!340242 l!6467)))) e!2552418))))

(declare-fun b!4114100 () Bool)

(declare-fun e!2552420 () Bool)

(declare-fun tp!1252679 () Bool)

(assert (=> b!4114100 (= e!2552420 (and e!2552417 tp!1252679))))

(assert (=> b!4114014 (= tp!1252640 e!2552420)))

(assert (= b!4114101 b!4114102))

(assert (= b!4114100 b!4114101))

(assert (= (and b!4114014 ((_ is Cons!44367) (t!340242 l!6467))) b!4114100))

(declare-fun m!4714633 () Bool)

(assert (=> b!4114101 m!4714633))

(declare-fun m!4714635 () Bool)

(assert (=> b!4114101 m!4714635))

(declare-fun b!4114110 () Bool)

(declare-fun e!2552429 () Bool)

(declare-fun tp!1252688 () Bool)

(assert (=> b!4114110 (= e!2552429 (and (inv!58964 (h!49784 (t!340239 newAcc!81))) tp!1252688))))

(assert (=> b!4114012 (= tp!1252638 e!2552429)))

(assert (= (and b!4114012 ((_ is Cons!44364) (t!340239 newAcc!81))) b!4114110))

(declare-fun m!4714637 () Bool)

(assert (=> b!4114110 m!4714637))

(declare-fun b!4114111 () Bool)

(declare-fun e!2552431 () Bool)

(declare-fun tp!1252689 () Bool)

(assert (=> b!4114111 (= e!2552431 (and (inv!58964 (h!49784 (t!340239 acc!555))) tp!1252689))))

(assert (=> b!4114011 (= tp!1252637 e!2552431)))

(assert (= (and b!4114011 ((_ is Cons!44364) (t!340239 acc!555))) b!4114111))

(declare-fun m!4714639 () Bool)

(assert (=> b!4114111 m!4714639))

(declare-fun b!4114122 () Bool)

(declare-fun e!2552435 () Bool)

(declare-fun tp_is_empty!21181 () Bool)

(assert (=> b!4114122 (= e!2552435 tp_is_empty!21181)))

(declare-fun b!4114123 () Bool)

(declare-fun tp!1252704 () Bool)

(declare-fun tp!1252702 () Bool)

(assert (=> b!4114123 (= e!2552435 (and tp!1252704 tp!1252702))))

(declare-fun b!4114124 () Bool)

(declare-fun tp!1252703 () Bool)

(assert (=> b!4114124 (= e!2552435 tp!1252703)))

(assert (=> b!4114017 (= tp!1252639 e!2552435)))

(declare-fun b!4114125 () Bool)

(declare-fun tp!1252701 () Bool)

(declare-fun tp!1252700 () Bool)

(assert (=> b!4114125 (= e!2552435 (and tp!1252701 tp!1252700))))

(assert (= (and b!4114017 ((_ is ElementMatch!12127) (regex!7222 (h!49787 l!6467)))) b!4114122))

(assert (= (and b!4114017 ((_ is Concat!19580) (regex!7222 (h!49787 l!6467)))) b!4114123))

(assert (= (and b!4114017 ((_ is Star!12127) (regex!7222 (h!49787 l!6467)))) b!4114124))

(assert (= (and b!4114017 ((_ is Union!12127) (regex!7222 (h!49787 l!6467)))) b!4114125))

(check-sat b_and!317723 (not b!4114110) tp_is_empty!21181 (not b!4114063) b_and!317731 (not b!4114101) (not b!4114123) b_and!317721 b_and!317727 (not b!4114111) (not b!4114125) (not b_next!116545) (not b!4114124) (not b_next!116541) (not b!4114100) (not b!4114029) (not b_next!116539) (not b!4114039) (not b!4114031) (not b!4114040) (not b!4114023) (not d!1220346) (not b_next!116549))
(check-sat b_and!317723 (not b_next!116539) b_and!317731 b_and!317721 b_and!317727 (not b_next!116545) (not b_next!116541) (not b_next!116549))
