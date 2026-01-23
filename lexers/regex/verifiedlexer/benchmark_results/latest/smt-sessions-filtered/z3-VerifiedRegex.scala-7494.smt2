; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396434 () Bool)

(assert start!396434)

(declare-fun b!4160516 () Bool)

(declare-fun b_free!119723 () Bool)

(declare-fun b_next!120427 () Bool)

(assert (=> b!4160516 (= b_free!119723 (not b_next!120427))))

(declare-fun tp!1269602 () Bool)

(declare-fun b_and!324085 () Bool)

(assert (=> b!4160516 (= tp!1269602 b_and!324085)))

(declare-fun b_free!119725 () Bool)

(declare-fun b_next!120429 () Bool)

(assert (=> b!4160516 (= b_free!119725 (not b_next!120429))))

(declare-fun tp!1269598 () Bool)

(declare-fun b_and!324087 () Bool)

(assert (=> b!4160516 (= tp!1269598 b_and!324087)))

(declare-fun b!4160510 () Bool)

(declare-fun b_free!119727 () Bool)

(declare-fun b_next!120431 () Bool)

(assert (=> b!4160510 (= b_free!119727 (not b_next!120431))))

(declare-fun tp!1269599 () Bool)

(declare-fun b_and!324089 () Bool)

(assert (=> b!4160510 (= tp!1269599 b_and!324089)))

(declare-fun b_free!119729 () Bool)

(declare-fun b_next!120433 () Bool)

(assert (=> b!4160510 (= b_free!119729 (not b_next!120433))))

(declare-fun tp!1269601 () Bool)

(declare-fun b_and!324091 () Bool)

(assert (=> b!4160510 (= tp!1269601 b_and!324091)))

(declare-fun e!2582357 () Bool)

(declare-fun b!4160508 () Bool)

(declare-fun e!2582365 () Bool)

(declare-datatypes ((List!45578 0))(
  ( (Nil!45454) (Cons!45454 (h!50874 (_ BitVec 16)) (t!343609 List!45578)) )
))
(declare-datatypes ((TokenValue!7736 0))(
  ( (FloatLiteralValue!15472 (text!54597 List!45578)) (TokenValueExt!7735 (__x!27691 Int)) (Broken!38680 (value!234463 List!45578)) (Object!7859) (End!7736) (Def!7736) (Underscore!7736) (Match!7736) (Else!7736) (Error!7736) (Case!7736) (If!7736) (Extends!7736) (Abstract!7736) (Class!7736) (Val!7736) (DelimiterValue!15472 (del!7796 List!45578)) (KeywordValue!7742 (value!234464 List!45578)) (CommentValue!15472 (value!234465 List!45578)) (WhitespaceValue!15472 (value!234466 List!45578)) (IndentationValue!7736 (value!234467 List!45578)) (String!52541) (Int32!7736) (Broken!38681 (value!234468 List!45578)) (Boolean!7737) (Unit!64582) (OperatorValue!7739 (op!7796 List!45578)) (IdentifierValue!15472 (value!234469 List!45578)) (IdentifierValue!15473 (value!234470 List!45578)) (WhitespaceValue!15473 (value!234471 List!45578)) (True!15472) (False!15472) (Broken!38682 (value!234472 List!45578)) (Broken!38683 (value!234473 List!45578)) (True!15473) (RightBrace!7736) (RightBracket!7736) (Colon!7736) (Null!7736) (Comma!7736) (LeftBracket!7736) (False!15473) (LeftBrace!7736) (ImaginaryLiteralValue!7736 (text!54598 List!45578)) (StringLiteralValue!23208 (value!234474 List!45578)) (EOFValue!7736 (value!234475 List!45578)) (IdentValue!7736 (value!234476 List!45578)) (DelimiterValue!15473 (value!234477 List!45578)) (DedentValue!7736 (value!234478 List!45578)) (NewLineValue!7736 (value!234479 List!45578)) (IntegerValue!23208 (value!234480 (_ BitVec 32)) (text!54599 List!45578)) (IntegerValue!23209 (value!234481 Int) (text!54600 List!45578)) (Times!7736) (Or!7736) (Equal!7736) (Minus!7736) (Broken!38684 (value!234482 List!45578)) (And!7736) (Div!7736) (LessEqual!7736) (Mod!7736) (Concat!20147) (Not!7736) (Plus!7736) (SpaceValue!7736 (value!234483 List!45578)) (IntegerValue!23210 (value!234484 Int) (text!54601 List!45578)) (StringLiteralValue!23209 (text!54602 List!45578)) (FloatLiteralValue!15473 (text!54603 List!45578)) (BytesLiteralValue!7736 (value!234485 List!45578)) (CommentValue!15473 (value!234486 List!45578)) (StringLiteralValue!23210 (value!234487 List!45578)) (ErrorTokenValue!7736 (msg!7797 List!45578)) )
))
(declare-datatypes ((C!25008 0))(
  ( (C!25009 (val!14666 Int)) )
))
(declare-datatypes ((Regex!12411 0))(
  ( (ElementMatch!12411 (c!711908 C!25008)) (Concat!20148 (regOne!25334 Regex!12411) (regTwo!25334 Regex!12411)) (EmptyExpr!12411) (Star!12411 (reg!12740 Regex!12411)) (EmptyLang!12411) (Union!12411 (regOne!25335 Regex!12411) (regTwo!25335 Regex!12411)) )
))
(declare-datatypes ((String!52542 0))(
  ( (String!52543 (value!234488 String)) )
))
(declare-datatypes ((List!45579 0))(
  ( (Nil!45455) (Cons!45455 (h!50875 C!25008) (t!343610 List!45579)) )
))
(declare-datatypes ((IArray!27439 0))(
  ( (IArray!27440 (innerList!13777 List!45579)) )
))
(declare-datatypes ((Conc!13717 0))(
  ( (Node!13717 (left!33919 Conc!13717) (right!34249 Conc!13717) (csize!27664 Int) (cheight!13928 Int)) (Leaf!21212 (xs!17023 IArray!27439) (csize!27665 Int)) (Empty!13717) )
))
(declare-datatypes ((BalanceConc!27028 0))(
  ( (BalanceConc!27029 (c!711909 Conc!13717)) )
))
(declare-datatypes ((TokenValueInjection!14900 0))(
  ( (TokenValueInjection!14901 (toValue!10170 Int) (toChars!10029 Int)) )
))
(declare-datatypes ((Rule!14812 0))(
  ( (Rule!14813 (regex!7506 Regex!12411) (tag!8370 String!52542) (isSeparator!7506 Bool) (transformation!7506 TokenValueInjection!14900)) )
))
(declare-datatypes ((List!45580 0))(
  ( (Nil!45456) (Cons!45456 (h!50876 Rule!14812) (t!343611 List!45580)) )
))
(declare-fun rules!4132 () List!45580)

(declare-fun tp!1269596 () Bool)

(declare-fun inv!59991 (String!52542) Bool)

(declare-fun inv!59993 (TokenValueInjection!14900) Bool)

(assert (=> b!4160508 (= e!2582365 (and tp!1269596 (inv!59991 (tag!8370 (h!50876 rules!4132))) (inv!59993 (transformation!7506 (h!50876 rules!4132))) e!2582357))))

(declare-fun b!4160509 () Bool)

(declare-fun res!1704239 () Bool)

(declare-fun e!2582360 () Bool)

(assert (=> b!4160509 (=> (not res!1704239) (not e!2582360))))

(declare-datatypes ((List!45581 0))(
  ( (Nil!45457) (Cons!45457 (h!50877 String!52542) (t!343612 List!45581)) )
))
(declare-fun acc!617 () List!45581)

(declare-fun tag!272 () String!52542)

(declare-fun contains!9290 (List!45581 String!52542) Bool)

(assert (=> b!4160509 (= res!1704239 (contains!9290 acc!617 tag!272))))

(assert (=> b!4160510 (= e!2582357 (and tp!1269599 tp!1269601))))

(declare-fun b!4160511 () Bool)

(declare-fun res!1704240 () Bool)

(assert (=> b!4160511 (=> (not res!1704240) (not e!2582360))))

(declare-fun r!4395 () Rule!14812)

(get-info :version)

(assert (=> b!4160511 (= res!1704240 (and (not ((_ is Nil!45456) rules!4132)) (not (= (h!50876 rules!4132) r!4395))))))

(declare-fun b!4160512 () Bool)

(declare-fun e!2582362 () Bool)

(declare-fun tp!1269595 () Bool)

(assert (=> b!4160512 (= e!2582362 (and (inv!59991 (h!50877 acc!617)) tp!1269595))))

(declare-fun b!4160513 () Bool)

(declare-fun res!1704241 () Bool)

(assert (=> b!4160513 (=> (not res!1704241) (not e!2582360))))

(declare-datatypes ((LexerInterface!7097 0))(
  ( (LexerInterfaceExt!7094 (__x!27692 Int)) (Lexer!7095) )
))
(declare-fun thiss!27036 () LexerInterface!7097)

(declare-fun noDuplicateTag!3083 (LexerInterface!7097 List!45580 List!45581) Bool)

(assert (=> b!4160513 (= res!1704241 (noDuplicateTag!3083 thiss!27036 rules!4132 acc!617))))

(declare-fun e!2582358 () Bool)

(declare-fun e!2582366 () Bool)

(declare-fun b!4160515 () Bool)

(declare-fun tp!1269600 () Bool)

(assert (=> b!4160515 (= e!2582358 (and tp!1269600 (inv!59991 (tag!8370 r!4395)) (inv!59993 (transformation!7506 r!4395)) e!2582366))))

(assert (=> b!4160516 (= e!2582366 (and tp!1269602 tp!1269598))))

(declare-fun b!4160517 () Bool)

(assert (=> b!4160517 (= e!2582360 (not (contains!9290 (Cons!45457 (tag!8370 (h!50876 rules!4132)) acc!617) tag!272)))))

(declare-fun b!4160518 () Bool)

(declare-fun res!1704242 () Bool)

(assert (=> b!4160518 (=> (not res!1704242) (not e!2582360))))

(declare-fun contains!9291 (List!45580 Rule!14812) Bool)

(assert (=> b!4160518 (= res!1704242 (contains!9291 rules!4132 r!4395))))

(declare-fun res!1704238 () Bool)

(assert (=> start!396434 (=> (not res!1704238) (not e!2582360))))

(assert (=> start!396434 (= res!1704238 ((_ is Lexer!7095) thiss!27036))))

(assert (=> start!396434 e!2582360))

(assert (=> start!396434 e!2582362))

(assert (=> start!396434 e!2582358))

(assert (=> start!396434 true))

(assert (=> start!396434 (inv!59991 tag!272)))

(declare-fun e!2582361 () Bool)

(assert (=> start!396434 e!2582361))

(declare-fun b!4160514 () Bool)

(declare-fun tp!1269597 () Bool)

(assert (=> b!4160514 (= e!2582361 (and e!2582365 tp!1269597))))

(assert (= (and start!396434 res!1704238) b!4160509))

(assert (= (and b!4160509 res!1704239) b!4160513))

(assert (= (and b!4160513 res!1704241) b!4160518))

(assert (= (and b!4160518 res!1704242) b!4160511))

(assert (= (and b!4160511 res!1704240) b!4160517))

(assert (= (and start!396434 ((_ is Cons!45457) acc!617)) b!4160512))

(assert (= b!4160515 b!4160516))

(assert (= start!396434 b!4160515))

(assert (= b!4160508 b!4160510))

(assert (= b!4160514 b!4160508))

(assert (= (and start!396434 ((_ is Cons!45456) rules!4132)) b!4160514))

(declare-fun m!4753787 () Bool)

(assert (=> start!396434 m!4753787))

(declare-fun m!4753789 () Bool)

(assert (=> b!4160518 m!4753789))

(declare-fun m!4753791 () Bool)

(assert (=> b!4160517 m!4753791))

(declare-fun m!4753793 () Bool)

(assert (=> b!4160513 m!4753793))

(declare-fun m!4753795 () Bool)

(assert (=> b!4160509 m!4753795))

(declare-fun m!4753797 () Bool)

(assert (=> b!4160508 m!4753797))

(declare-fun m!4753799 () Bool)

(assert (=> b!4160508 m!4753799))

(declare-fun m!4753801 () Bool)

(assert (=> b!4160515 m!4753801))

(declare-fun m!4753803 () Bool)

(assert (=> b!4160515 m!4753803))

(declare-fun m!4753805 () Bool)

(assert (=> b!4160512 m!4753805))

(check-sat (not b!4160518) (not b!4160513) (not b_next!120433) (not b!4160517) (not b!4160512) (not b_next!120427) b_and!324087 b_and!324089 b_and!324085 (not b!4160515) (not b_next!120431) (not b!4160514) (not start!396434) b_and!324091 (not b!4160509) (not b!4160508) (not b_next!120429))
(check-sat (not b_next!120433) (not b_next!120427) b_and!324087 b_and!324091 b_and!324089 b_and!324085 (not b_next!120431) (not b_next!120429))
(get-model)

(declare-fun d!1230051 () Bool)

(declare-fun res!1704254 () Bool)

(declare-fun e!2582371 () Bool)

(assert (=> d!1230051 (=> res!1704254 e!2582371)))

(assert (=> d!1230051 (= res!1704254 ((_ is Nil!45456) rules!4132))))

(assert (=> d!1230051 (= (noDuplicateTag!3083 thiss!27036 rules!4132 acc!617) e!2582371)))

(declare-fun b!4160523 () Bool)

(declare-fun e!2582372 () Bool)

(assert (=> b!4160523 (= e!2582371 e!2582372)))

(declare-fun res!1704255 () Bool)

(assert (=> b!4160523 (=> (not res!1704255) (not e!2582372))))

(assert (=> b!4160523 (= res!1704255 (not (contains!9290 acc!617 (tag!8370 (h!50876 rules!4132)))))))

(declare-fun b!4160524 () Bool)

(assert (=> b!4160524 (= e!2582372 (noDuplicateTag!3083 thiss!27036 (t!343611 rules!4132) (Cons!45457 (tag!8370 (h!50876 rules!4132)) acc!617)))))

(assert (= (and d!1230051 (not res!1704254)) b!4160523))

(assert (= (and b!4160523 res!1704255) b!4160524))

(declare-fun m!4753807 () Bool)

(assert (=> b!4160523 m!4753807))

(declare-fun m!4753809 () Bool)

(assert (=> b!4160524 m!4753809))

(assert (=> b!4160513 d!1230051))

(declare-fun d!1230057 () Bool)

(assert (=> d!1230057 (= (inv!59991 (tag!8370 (h!50876 rules!4132))) (= (mod (str.len (value!234488 (tag!8370 (h!50876 rules!4132)))) 2) 0))))

(assert (=> b!4160508 d!1230057))

(declare-fun d!1230059 () Bool)

(declare-fun res!1704264 () Bool)

(declare-fun e!2582381 () Bool)

(assert (=> d!1230059 (=> (not res!1704264) (not e!2582381))))

(declare-fun semiInverseModEq!3257 (Int Int) Bool)

(assert (=> d!1230059 (= res!1704264 (semiInverseModEq!3257 (toChars!10029 (transformation!7506 (h!50876 rules!4132))) (toValue!10170 (transformation!7506 (h!50876 rules!4132)))))))

(assert (=> d!1230059 (= (inv!59993 (transformation!7506 (h!50876 rules!4132))) e!2582381)))

(declare-fun b!4160533 () Bool)

(declare-fun equivClasses!3156 (Int Int) Bool)

(assert (=> b!4160533 (= e!2582381 (equivClasses!3156 (toChars!10029 (transformation!7506 (h!50876 rules!4132))) (toValue!10170 (transformation!7506 (h!50876 rules!4132)))))))

(assert (= (and d!1230059 res!1704264) b!4160533))

(declare-fun m!4753815 () Bool)

(assert (=> d!1230059 m!4753815))

(declare-fun m!4753817 () Bool)

(assert (=> b!4160533 m!4753817))

(assert (=> b!4160508 d!1230059))

(declare-fun d!1230065 () Bool)

(assert (=> d!1230065 (= (inv!59991 (tag!8370 r!4395)) (= (mod (str.len (value!234488 (tag!8370 r!4395))) 2) 0))))

(assert (=> b!4160515 d!1230065))

(declare-fun d!1230067 () Bool)

(declare-fun res!1704267 () Bool)

(declare-fun e!2582384 () Bool)

(assert (=> d!1230067 (=> (not res!1704267) (not e!2582384))))

(assert (=> d!1230067 (= res!1704267 (semiInverseModEq!3257 (toChars!10029 (transformation!7506 r!4395)) (toValue!10170 (transformation!7506 r!4395))))))

(assert (=> d!1230067 (= (inv!59993 (transformation!7506 r!4395)) e!2582384)))

(declare-fun b!4160536 () Bool)

(assert (=> b!4160536 (= e!2582384 (equivClasses!3156 (toChars!10029 (transformation!7506 r!4395)) (toValue!10170 (transformation!7506 r!4395))))))

(assert (= (and d!1230067 res!1704267) b!4160536))

(declare-fun m!4753819 () Bool)

(assert (=> d!1230067 m!4753819))

(declare-fun m!4753821 () Bool)

(assert (=> b!4160536 m!4753821))

(assert (=> b!4160515 d!1230067))

(declare-fun d!1230069 () Bool)

(assert (=> d!1230069 (= (inv!59991 tag!272) (= (mod (str.len (value!234488 tag!272)) 2) 0))))

(assert (=> start!396434 d!1230069))

(declare-fun d!1230071 () Bool)

(declare-fun lt!1482829 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7061 (List!45581) (InoxSet String!52542))

(assert (=> d!1230071 (= lt!1482829 (select (content!7061 acc!617) tag!272))))

(declare-fun e!2582394 () Bool)

(assert (=> d!1230071 (= lt!1482829 e!2582394)))

(declare-fun res!1704278 () Bool)

(assert (=> d!1230071 (=> (not res!1704278) (not e!2582394))))

(assert (=> d!1230071 (= res!1704278 ((_ is Cons!45457) acc!617))))

(assert (=> d!1230071 (= (contains!9290 acc!617 tag!272) lt!1482829)))

(declare-fun b!4160546 () Bool)

(declare-fun e!2582395 () Bool)

(assert (=> b!4160546 (= e!2582394 e!2582395)))

(declare-fun res!1704277 () Bool)

(assert (=> b!4160546 (=> res!1704277 e!2582395)))

(assert (=> b!4160546 (= res!1704277 (= (h!50877 acc!617) tag!272))))

(declare-fun b!4160547 () Bool)

(assert (=> b!4160547 (= e!2582395 (contains!9290 (t!343612 acc!617) tag!272))))

(assert (= (and d!1230071 res!1704278) b!4160546))

(assert (= (and b!4160546 (not res!1704277)) b!4160547))

(declare-fun m!4753827 () Bool)

(assert (=> d!1230071 m!4753827))

(declare-fun m!4753829 () Bool)

(assert (=> d!1230071 m!4753829))

(declare-fun m!4753831 () Bool)

(assert (=> b!4160547 m!4753831))

(assert (=> b!4160509 d!1230071))

(declare-fun d!1230075 () Bool)

(declare-fun lt!1482835 () Bool)

(declare-fun content!7063 (List!45580) (InoxSet Rule!14812))

(assert (=> d!1230075 (= lt!1482835 (select (content!7063 rules!4132) r!4395))))

(declare-fun e!2582406 () Bool)

(assert (=> d!1230075 (= lt!1482835 e!2582406)))

(declare-fun res!1704290 () Bool)

(assert (=> d!1230075 (=> (not res!1704290) (not e!2582406))))

(assert (=> d!1230075 (= res!1704290 ((_ is Cons!45456) rules!4132))))

(assert (=> d!1230075 (= (contains!9291 rules!4132 r!4395) lt!1482835)))

(declare-fun b!4160558 () Bool)

(declare-fun e!2582407 () Bool)

(assert (=> b!4160558 (= e!2582406 e!2582407)))

(declare-fun res!1704289 () Bool)

(assert (=> b!4160558 (=> res!1704289 e!2582407)))

(assert (=> b!4160558 (= res!1704289 (= (h!50876 rules!4132) r!4395))))

(declare-fun b!4160559 () Bool)

(assert (=> b!4160559 (= e!2582407 (contains!9291 (t!343611 rules!4132) r!4395))))

(assert (= (and d!1230075 res!1704290) b!4160558))

(assert (= (and b!4160558 (not res!1704289)) b!4160559))

(declare-fun m!4753839 () Bool)

(assert (=> d!1230075 m!4753839))

(declare-fun m!4753841 () Bool)

(assert (=> d!1230075 m!4753841))

(declare-fun m!4753843 () Bool)

(assert (=> b!4160559 m!4753843))

(assert (=> b!4160518 d!1230075))

(declare-fun d!1230079 () Bool)

(declare-fun lt!1482836 () Bool)

(assert (=> d!1230079 (= lt!1482836 (select (content!7061 (Cons!45457 (tag!8370 (h!50876 rules!4132)) acc!617)) tag!272))))

(declare-fun e!2582408 () Bool)

(assert (=> d!1230079 (= lt!1482836 e!2582408)))

(declare-fun res!1704292 () Bool)

(assert (=> d!1230079 (=> (not res!1704292) (not e!2582408))))

(assert (=> d!1230079 (= res!1704292 ((_ is Cons!45457) (Cons!45457 (tag!8370 (h!50876 rules!4132)) acc!617)))))

(assert (=> d!1230079 (= (contains!9290 (Cons!45457 (tag!8370 (h!50876 rules!4132)) acc!617) tag!272) lt!1482836)))

(declare-fun b!4160560 () Bool)

(declare-fun e!2582409 () Bool)

(assert (=> b!4160560 (= e!2582408 e!2582409)))

(declare-fun res!1704291 () Bool)

(assert (=> b!4160560 (=> res!1704291 e!2582409)))

(assert (=> b!4160560 (= res!1704291 (= (h!50877 (Cons!45457 (tag!8370 (h!50876 rules!4132)) acc!617)) tag!272))))

(declare-fun b!4160561 () Bool)

(assert (=> b!4160561 (= e!2582409 (contains!9290 (t!343612 (Cons!45457 (tag!8370 (h!50876 rules!4132)) acc!617)) tag!272))))

(assert (= (and d!1230079 res!1704292) b!4160560))

(assert (= (and b!4160560 (not res!1704291)) b!4160561))

(declare-fun m!4753845 () Bool)

(assert (=> d!1230079 m!4753845))

(declare-fun m!4753847 () Bool)

(assert (=> d!1230079 m!4753847))

(declare-fun m!4753849 () Bool)

(assert (=> b!4160561 m!4753849))

(assert (=> b!4160517 d!1230079))

(declare-fun d!1230081 () Bool)

(assert (=> d!1230081 (= (inv!59991 (h!50877 acc!617)) (= (mod (str.len (value!234488 (h!50877 acc!617))) 2) 0))))

(assert (=> b!4160512 d!1230081))

(declare-fun b!4160588 () Bool)

(declare-fun b_free!119731 () Bool)

(declare-fun b_next!120435 () Bool)

(assert (=> b!4160588 (= b_free!119731 (not b_next!120435))))

(declare-fun tp!1269616 () Bool)

(declare-fun b_and!324093 () Bool)

(assert (=> b!4160588 (= tp!1269616 b_and!324093)))

(declare-fun b_free!119733 () Bool)

(declare-fun b_next!120437 () Bool)

(assert (=> b!4160588 (= b_free!119733 (not b_next!120437))))

(declare-fun tp!1269617 () Bool)

(declare-fun b_and!324095 () Bool)

(assert (=> b!4160588 (= tp!1269617 b_and!324095)))

(declare-fun e!2582431 () Bool)

(assert (=> b!4160588 (= e!2582431 (and tp!1269616 tp!1269617))))

(declare-fun e!2582432 () Bool)

(declare-fun tp!1269614 () Bool)

(declare-fun b!4160587 () Bool)

(assert (=> b!4160587 (= e!2582432 (and tp!1269614 (inv!59991 (tag!8370 (h!50876 (t!343611 rules!4132)))) (inv!59993 (transformation!7506 (h!50876 (t!343611 rules!4132)))) e!2582431))))

(declare-fun b!4160586 () Bool)

(declare-fun e!2582433 () Bool)

(declare-fun tp!1269615 () Bool)

(assert (=> b!4160586 (= e!2582433 (and e!2582432 tp!1269615))))

(assert (=> b!4160514 (= tp!1269597 e!2582433)))

(assert (= b!4160587 b!4160588))

(assert (= b!4160586 b!4160587))

(assert (= (and b!4160514 ((_ is Cons!45456) (t!343611 rules!4132))) b!4160586))

(declare-fun m!4753869 () Bool)

(assert (=> b!4160587 m!4753869))

(declare-fun m!4753871 () Bool)

(assert (=> b!4160587 m!4753871))

(declare-fun e!2582441 () Bool)

(assert (=> b!4160508 (= tp!1269596 e!2582441)))

(declare-fun b!4160616 () Bool)

(declare-fun tp!1269648 () Bool)

(declare-fun tp!1269649 () Bool)

(assert (=> b!4160616 (= e!2582441 (and tp!1269648 tp!1269649))))

(declare-fun b!4160615 () Bool)

(declare-fun tp_is_empty!21789 () Bool)

(assert (=> b!4160615 (= e!2582441 tp_is_empty!21789)))

(declare-fun b!4160618 () Bool)

(declare-fun tp!1269652 () Bool)

(declare-fun tp!1269651 () Bool)

(assert (=> b!4160618 (= e!2582441 (and tp!1269652 tp!1269651))))

(declare-fun b!4160617 () Bool)

(declare-fun tp!1269650 () Bool)

(assert (=> b!4160617 (= e!2582441 tp!1269650)))

(assert (= (and b!4160508 ((_ is ElementMatch!12411) (regex!7506 (h!50876 rules!4132)))) b!4160615))

(assert (= (and b!4160508 ((_ is Concat!20148) (regex!7506 (h!50876 rules!4132)))) b!4160616))

(assert (= (and b!4160508 ((_ is Star!12411) (regex!7506 (h!50876 rules!4132)))) b!4160617))

(assert (= (and b!4160508 ((_ is Union!12411) (regex!7506 (h!50876 rules!4132)))) b!4160618))

(declare-fun e!2582442 () Bool)

(assert (=> b!4160515 (= tp!1269600 e!2582442)))

(declare-fun b!4160620 () Bool)

(declare-fun tp!1269653 () Bool)

(declare-fun tp!1269654 () Bool)

(assert (=> b!4160620 (= e!2582442 (and tp!1269653 tp!1269654))))

(declare-fun b!4160619 () Bool)

(assert (=> b!4160619 (= e!2582442 tp_is_empty!21789)))

(declare-fun b!4160622 () Bool)

(declare-fun tp!1269657 () Bool)

(declare-fun tp!1269656 () Bool)

(assert (=> b!4160622 (= e!2582442 (and tp!1269657 tp!1269656))))

(declare-fun b!4160621 () Bool)

(declare-fun tp!1269655 () Bool)

(assert (=> b!4160621 (= e!2582442 tp!1269655)))

(assert (= (and b!4160515 ((_ is ElementMatch!12411) (regex!7506 r!4395))) b!4160619))

(assert (= (and b!4160515 ((_ is Concat!20148) (regex!7506 r!4395))) b!4160620))

(assert (= (and b!4160515 ((_ is Star!12411) (regex!7506 r!4395))) b!4160621))

(assert (= (and b!4160515 ((_ is Union!12411) (regex!7506 r!4395))) b!4160622))

(declare-fun b!4160631 () Bool)

(declare-fun e!2582453 () Bool)

(declare-fun tp!1269668 () Bool)

(assert (=> b!4160631 (= e!2582453 (and (inv!59991 (h!50877 (t!343612 acc!617))) tp!1269668))))

(assert (=> b!4160512 (= tp!1269595 e!2582453)))

(assert (= (and b!4160512 ((_ is Cons!45457) (t!343612 acc!617))) b!4160631))

(declare-fun m!4753873 () Bool)

(assert (=> b!4160631 m!4753873))

(check-sat (not b!4160620) (not b!4160618) (not b!4160536) (not b_next!120433) (not b!4160533) tp_is_empty!21789 (not b!4160561) (not d!1230075) b_and!324091 b_and!324085 (not b!4160622) (not b_next!120437) (not d!1230059) (not b!4160586) (not b!4160547) b_and!324093 (not b_next!120435) (not d!1230071) (not b_next!120427) b_and!324087 (not b!4160559) (not b!4160616) (not b!4160621) (not b!4160631) (not b!4160523) (not b!4160587) b_and!324089 (not b!4160524) (not b_next!120431) b_and!324095 (not b!4160617) (not b_next!120429) (not d!1230067) (not d!1230079))
(check-sat (not b_next!120437) (not b_next!120433) b_and!324093 b_and!324087 b_and!324091 b_and!324089 b_and!324085 (not b_next!120429) (not b_next!120435) (not b_next!120427) (not b_next!120431) b_and!324095)
