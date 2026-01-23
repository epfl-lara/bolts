; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756368 () Bool)

(assert start!756368)

(declare-fun b!8029504 () Bool)

(declare-fun b_free!135295 () Bool)

(declare-fun b_next!136085 () Bool)

(assert (=> b!8029504 (= b_free!135295 (not b_next!136085))))

(declare-fun tp!2402867 () Bool)

(declare-fun b_and!353725 () Bool)

(assert (=> b!8029504 (= tp!2402867 b_and!353725)))

(declare-fun b_free!135297 () Bool)

(declare-fun b_next!136087 () Bool)

(assert (=> b!8029504 (= b_free!135297 (not b_next!136087))))

(declare-fun tp!2402868 () Bool)

(declare-fun b_and!353727 () Bool)

(assert (=> b!8029504 (= tp!2402868 b_and!353727)))

(declare-datatypes ((List!75159 0))(
  ( (Nil!75033) (Cons!75033 (h!81481 (_ BitVec 16)) (t!390927 List!75159)) )
))
(declare-datatypes ((TokenValue!9002 0))(
  ( (FloatLiteralValue!18004 (text!63459 List!75159)) (TokenValueExt!9001 (__x!35286 Int)) (Broken!45010 (value!290430 List!75159)) (Object!9127) (End!9002) (Def!9002) (Underscore!9002) (Match!9002) (Else!9002) (Error!9002) (Case!9002) (If!9002) (Extends!9002) (Abstract!9002) (Class!9002) (Val!9002) (DelimiterValue!18004 (del!9062 List!75159)) (KeywordValue!9008 (value!290431 List!75159)) (CommentValue!18004 (value!290432 List!75159)) (WhitespaceValue!18004 (value!290433 List!75159)) (IndentationValue!9002 (value!290434 List!75159)) (String!84663) (Int32!9002) (Broken!45011 (value!290435 List!75159)) (Boolean!9003) (Unit!171005) (OperatorValue!9005 (op!9062 List!75159)) (IdentifierValue!18004 (value!290436 List!75159)) (IdentifierValue!18005 (value!290437 List!75159)) (WhitespaceValue!18005 (value!290438 List!75159)) (True!18004) (False!18004) (Broken!45012 (value!290439 List!75159)) (Broken!45013 (value!290440 List!75159)) (True!18005) (RightBrace!9002) (RightBracket!9002) (Colon!9002) (Null!9002) (Comma!9002) (LeftBracket!9002) (False!18005) (LeftBrace!9002) (ImaginaryLiteralValue!9002 (text!63460 List!75159)) (StringLiteralValue!27006 (value!290441 List!75159)) (EOFValue!9002 (value!290442 List!75159)) (IdentValue!9002 (value!290443 List!75159)) (DelimiterValue!18005 (value!290444 List!75159)) (DedentValue!9002 (value!290445 List!75159)) (NewLineValue!9002 (value!290446 List!75159)) (IntegerValue!27006 (value!290447 (_ BitVec 32)) (text!63461 List!75159)) (IntegerValue!27007 (value!290448 Int) (text!63462 List!75159)) (Times!9002) (Or!9002) (Equal!9002) (Minus!9002) (Broken!45014 (value!290449 List!75159)) (And!9002) (Div!9002) (LessEqual!9002) (Mod!9002) (Concat!30697) (Not!9002) (Plus!9002) (SpaceValue!9002 (value!290450 List!75159)) (IntegerValue!27008 (value!290451 Int) (text!63463 List!75159)) (StringLiteralValue!27007 (text!63464 List!75159)) (FloatLiteralValue!18005 (text!63465 List!75159)) (BytesLiteralValue!9002 (value!290452 List!75159)) (CommentValue!18005 (value!290453 List!75159)) (StringLiteralValue!27008 (value!290454 List!75159)) (ErrorTokenValue!9002 (msg!9063 List!75159)) )
))
(declare-datatypes ((C!43728 0))(
  ( (C!43729 (val!32638 Int)) )
))
(declare-datatypes ((Regex!21695 0))(
  ( (ElementMatch!21695 (c!1473085 C!43728)) (Concat!30698 (regOne!43902 Regex!21695) (regTwo!43902 Regex!21695)) (EmptyExpr!21695) (Star!21695 (reg!22024 Regex!21695)) (EmptyLang!21695) (Union!21695 (regOne!43903 Regex!21695) (regTwo!43903 Regex!21695)) )
))
(declare-datatypes ((String!84664 0))(
  ( (String!84665 (value!290455 String)) )
))
(declare-datatypes ((List!75160 0))(
  ( (Nil!75034) (Cons!75034 (h!81482 C!43728) (t!390928 List!75160)) )
))
(declare-datatypes ((IArray!31957 0))(
  ( (IArray!31958 (innerList!16036 List!75160)) )
))
(declare-datatypes ((Conc!15948 0))(
  ( (Node!15948 (left!57208 Conc!15948) (right!57538 Conc!15948) (csize!32126 Int) (cheight!16159 Int)) (Leaf!30569 (xs!19346 IArray!31957) (csize!32127 Int)) (Empty!15948) )
))
(declare-datatypes ((BalanceConc!30856 0))(
  ( (BalanceConc!30857 (c!1473086 Conc!15948)) )
))
(declare-datatypes ((TokenValueInjection!17312 0))(
  ( (TokenValueInjection!17313 (toValue!11753 Int) (toChars!11612 Int)) )
))
(declare-datatypes ((Rule!17164 0))(
  ( (Rule!17165 (regex!8682 Regex!21695) (tag!9546 String!84664) (isSeparator!8682 Bool) (transformation!8682 TokenValueInjection!17312)) )
))
(declare-datatypes ((Token!15772 0))(
  ( (Token!15773 (value!290456 TokenValue!9002) (rule!11980 Rule!17164) (size!43753 Int) (originalCharacters!8917 List!75160)) )
))
(declare-fun thiss!6935 () Token!15772)

(declare-fun list!19491 (BalanceConc!30856) List!75160)

(declare-fun dynLambda!30223 (Int TokenValue!9002) BalanceConc!30856)

(assert (=> start!756368 (not (= (list!19491 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))) (originalCharacters!8917 thiss!6935)))))

(declare-fun e!4730570 () Bool)

(declare-fun inv!96767 (Token!15772) Bool)

(assert (=> start!756368 (and (inv!96767 thiss!6935) e!4730570)))

(declare-fun e!4730572 () Bool)

(assert (=> b!8029504 (= e!4730572 (and tp!2402867 tp!2402868))))

(declare-fun tp!2402865 () Bool)

(declare-fun e!4730568 () Bool)

(declare-fun b!8029503 () Bool)

(declare-fun inv!96762 (String!84664) Bool)

(declare-fun inv!96768 (TokenValueInjection!17312) Bool)

(assert (=> b!8029503 (= e!4730568 (and tp!2402865 (inv!96762 (tag!9546 (rule!11980 thiss!6935))) (inv!96768 (transformation!8682 (rule!11980 thiss!6935))) e!4730572))))

(declare-fun b!8029502 () Bool)

(declare-fun tp!2402866 () Bool)

(declare-fun inv!21 (TokenValue!9002) Bool)

(assert (=> b!8029502 (= e!4730570 (and (inv!21 (value!290456 thiss!6935)) e!4730568 tp!2402866))))

(assert (= b!8029503 b!8029504))

(assert (= b!8029502 b!8029503))

(assert (= start!756368 b!8029502))

(declare-fun b_lambda!290273 () Bool)

(assert (=> (not b_lambda!290273) (not start!756368)))

(declare-fun t!390926 () Bool)

(declare-fun tb!263321 () Bool)

(assert (=> (and b!8029504 (= (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (toChars!11612 (transformation!8682 (rule!11980 thiss!6935)))) t!390926) tb!263321))

(declare-fun b!8029509 () Bool)

(declare-fun e!4730575 () Bool)

(declare-fun tp!2402871 () Bool)

(declare-fun inv!96769 (Conc!15948) Bool)

(assert (=> b!8029509 (= e!4730575 (and (inv!96769 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))) tp!2402871))))

(declare-fun result!362084 () Bool)

(declare-fun inv!96770 (BalanceConc!30856) Bool)

(assert (=> tb!263321 (= result!362084 (and (inv!96770 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))) e!4730575))))

(assert (= tb!263321 b!8029509))

(declare-fun m!8391470 () Bool)

(assert (=> b!8029509 m!8391470))

(declare-fun m!8391472 () Bool)

(assert (=> tb!263321 m!8391472))

(assert (=> start!756368 t!390926))

(declare-fun b_and!353729 () Bool)

(assert (= b_and!353727 (and (=> t!390926 result!362084) b_and!353729)))

(declare-fun m!8391474 () Bool)

(assert (=> start!756368 m!8391474))

(assert (=> start!756368 m!8391474))

(declare-fun m!8391476 () Bool)

(assert (=> start!756368 m!8391476))

(declare-fun m!8391478 () Bool)

(assert (=> start!756368 m!8391478))

(declare-fun m!8391480 () Bool)

(assert (=> b!8029503 m!8391480))

(declare-fun m!8391482 () Bool)

(assert (=> b!8029503 m!8391482))

(declare-fun m!8391484 () Bool)

(assert (=> b!8029502 m!8391484))

(check-sat b_and!353725 (not b_next!136087) (not start!756368) (not tb!263321) (not b!8029502) (not b_next!136085) (not b!8029503) b_and!353729 (not b_lambda!290273) (not b!8029509))
(check-sat b_and!353725 b_and!353729 (not b_next!136085) (not b_next!136087))
(get-model)

(declare-fun b_lambda!290277 () Bool)

(assert (= b_lambda!290273 (or (and b!8029504 b_free!135297) b_lambda!290277)))

(check-sat b_and!353725 (not b_next!136087) (not start!756368) (not tb!263321) (not b!8029502) (not b_lambda!290277) (not b_next!136085) (not b!8029503) (not b!8029509) b_and!353729)
(check-sat b_and!353725 b_and!353729 (not b_next!136085) (not b_next!136087))
(get-model)

(declare-fun b!8029523 () Bool)

(declare-fun e!4730585 () Bool)

(declare-fun inv!16 (TokenValue!9002) Bool)

(assert (=> b!8029523 (= e!4730585 (inv!16 (value!290456 thiss!6935)))))

(declare-fun b!8029524 () Bool)

(declare-fun e!4730587 () Bool)

(assert (=> b!8029524 (= e!4730585 e!4730587)))

(declare-fun c!1473092 () Bool)

(get-info :version)

(assert (=> b!8029524 (= c!1473092 ((_ is IntegerValue!27007) (value!290456 thiss!6935)))))

(declare-fun d!2394395 () Bool)

(declare-fun c!1473091 () Bool)

(assert (=> d!2394395 (= c!1473091 ((_ is IntegerValue!27006) (value!290456 thiss!6935)))))

(assert (=> d!2394395 (= (inv!21 (value!290456 thiss!6935)) e!4730585)))

(declare-fun b!8029525 () Bool)

(declare-fun e!4730586 () Bool)

(declare-fun inv!15 (TokenValue!9002) Bool)

(assert (=> b!8029525 (= e!4730586 (inv!15 (value!290456 thiss!6935)))))

(declare-fun b!8029526 () Bool)

(declare-fun res!3175585 () Bool)

(assert (=> b!8029526 (=> res!3175585 e!4730586)))

(assert (=> b!8029526 (= res!3175585 (not ((_ is IntegerValue!27008) (value!290456 thiss!6935))))))

(assert (=> b!8029526 (= e!4730587 e!4730586)))

(declare-fun b!8029527 () Bool)

(declare-fun inv!17 (TokenValue!9002) Bool)

(assert (=> b!8029527 (= e!4730587 (inv!17 (value!290456 thiss!6935)))))

(assert (= (and d!2394395 c!1473091) b!8029523))

(assert (= (and d!2394395 (not c!1473091)) b!8029524))

(assert (= (and b!8029524 c!1473092) b!8029527))

(assert (= (and b!8029524 (not c!1473092)) b!8029526))

(assert (= (and b!8029526 (not res!3175585)) b!8029525))

(declare-fun m!8391490 () Bool)

(assert (=> b!8029523 m!8391490))

(declare-fun m!8391492 () Bool)

(assert (=> b!8029525 m!8391492))

(declare-fun m!8391494 () Bool)

(assert (=> b!8029527 m!8391494))

(assert (=> b!8029502 d!2394395))

(declare-fun d!2394399 () Bool)

(assert (=> d!2394399 (= (inv!96762 (tag!9546 (rule!11980 thiss!6935))) (= (mod (str.len (value!290455 (tag!9546 (rule!11980 thiss!6935)))) 2) 0))))

(assert (=> b!8029503 d!2394399))

(declare-fun d!2394401 () Bool)

(declare-fun res!3175591 () Bool)

(declare-fun e!4730596 () Bool)

(assert (=> d!2394401 (=> (not res!3175591) (not e!4730596))))

(declare-fun semiInverseModEq!3853 (Int Int) Bool)

(assert (=> d!2394401 (= res!3175591 (semiInverseModEq!3853 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (toValue!11753 (transformation!8682 (rule!11980 thiss!6935)))))))

(assert (=> d!2394401 (= (inv!96768 (transformation!8682 (rule!11980 thiss!6935))) e!4730596)))

(declare-fun b!8029539 () Bool)

(declare-fun equivClasses!3668 (Int Int) Bool)

(assert (=> b!8029539 (= e!4730596 (equivClasses!3668 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (toValue!11753 (transformation!8682 (rule!11980 thiss!6935)))))))

(assert (= (and d!2394401 res!3175591) b!8029539))

(declare-fun m!8391500 () Bool)

(assert (=> d!2394401 m!8391500))

(declare-fun m!8391502 () Bool)

(assert (=> b!8029539 m!8391502))

(assert (=> b!8029503 d!2394401))

(declare-fun d!2394405 () Bool)

(declare-fun isBalanced!4550 (Conc!15948) Bool)

(assert (=> d!2394405 (= (inv!96770 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))) (isBalanced!4550 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))))))

(declare-fun bs!1971419 () Bool)

(assert (= bs!1971419 d!2394405))

(declare-fun m!8391504 () Bool)

(assert (=> bs!1971419 m!8391504))

(assert (=> tb!263321 d!2394405))

(declare-fun d!2394407 () Bool)

(declare-fun c!1473104 () Bool)

(assert (=> d!2394407 (= c!1473104 ((_ is Node!15948) (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))))))

(declare-fun e!4730610 () Bool)

(assert (=> d!2394407 (= (inv!96769 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))) e!4730610)))

(declare-fun b!8029561 () Bool)

(declare-fun inv!96773 (Conc!15948) Bool)

(assert (=> b!8029561 (= e!4730610 (inv!96773 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))))))

(declare-fun b!8029562 () Bool)

(declare-fun e!4730611 () Bool)

(assert (=> b!8029562 (= e!4730610 e!4730611)))

(declare-fun res!3175597 () Bool)

(assert (=> b!8029562 (= res!3175597 (not ((_ is Leaf!30569) (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))))))))

(assert (=> b!8029562 (=> res!3175597 e!4730611)))

(declare-fun b!8029563 () Bool)

(declare-fun inv!96774 (Conc!15948) Bool)

(assert (=> b!8029563 (= e!4730611 (inv!96774 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))))))

(assert (= (and d!2394407 c!1473104) b!8029561))

(assert (= (and d!2394407 (not c!1473104)) b!8029562))

(assert (= (and b!8029562 (not res!3175597)) b!8029563))

(declare-fun m!8391514 () Bool)

(assert (=> b!8029561 m!8391514))

(declare-fun m!8391516 () Bool)

(assert (=> b!8029563 m!8391516))

(assert (=> b!8029509 d!2394407))

(declare-fun d!2394413 () Bool)

(declare-fun list!19493 (Conc!15948) List!75160)

(assert (=> d!2394413 (= (list!19491 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))) (list!19493 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))))))

(declare-fun bs!1971421 () Bool)

(assert (= bs!1971421 d!2394413))

(declare-fun m!8391518 () Bool)

(assert (=> bs!1971421 m!8391518))

(assert (=> start!756368 d!2394413))

(declare-fun d!2394415 () Bool)

(declare-fun res!3175608 () Bool)

(declare-fun e!4730619 () Bool)

(assert (=> d!2394415 (=> (not res!3175608) (not e!4730619))))

(declare-fun isEmpty!43017 (List!75160) Bool)

(assert (=> d!2394415 (= res!3175608 (not (isEmpty!43017 (originalCharacters!8917 thiss!6935))))))

(assert (=> d!2394415 (= (inv!96767 thiss!6935) e!4730619)))

(declare-fun b!8029584 () Bool)

(declare-fun res!3175609 () Bool)

(assert (=> b!8029584 (=> (not res!3175609) (not e!4730619))))

(assert (=> b!8029584 (= res!3175609 (= (originalCharacters!8917 thiss!6935) (list!19491 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))))))

(declare-fun b!8029585 () Bool)

(declare-fun size!43755 (List!75160) Int)

(assert (=> b!8029585 (= e!4730619 (= (size!43753 thiss!6935) (size!43755 (originalCharacters!8917 thiss!6935))))))

(assert (= (and d!2394415 res!3175608) b!8029584))

(assert (= (and b!8029584 res!3175609) b!8029585))

(declare-fun b_lambda!290281 () Bool)

(assert (=> (not b_lambda!290281) (not b!8029584)))

(assert (=> b!8029584 t!390926))

(declare-fun b_and!353733 () Bool)

(assert (= b_and!353729 (and (=> t!390926 result!362084) b_and!353733)))

(declare-fun m!8391526 () Bool)

(assert (=> d!2394415 m!8391526))

(assert (=> b!8029584 m!8391474))

(assert (=> b!8029584 m!8391474))

(assert (=> b!8029584 m!8391476))

(declare-fun m!8391528 () Bool)

(assert (=> b!8029585 m!8391528))

(assert (=> start!756368 d!2394415))

(declare-fun b!8029602 () Bool)

(declare-fun e!4730627 () Bool)

(declare-fun tp_is_empty!54381 () Bool)

(declare-fun tp!2402895 () Bool)

(assert (=> b!8029602 (= e!4730627 (and tp_is_empty!54381 tp!2402895))))

(assert (=> b!8029502 (= tp!2402866 e!4730627)))

(assert (= (and b!8029502 ((_ is Cons!75034) (originalCharacters!8917 thiss!6935))) b!8029602))

(declare-fun e!4730632 () Bool)

(assert (=> b!8029503 (= tp!2402865 e!4730632)))

(declare-fun b!8029616 () Bool)

(assert (=> b!8029616 (= e!4730632 tp_is_empty!54381)))

(declare-fun b!8029618 () Bool)

(declare-fun tp!2402913 () Bool)

(assert (=> b!8029618 (= e!4730632 tp!2402913)))

(declare-fun b!8029619 () Bool)

(declare-fun tp!2402912 () Bool)

(declare-fun tp!2402911 () Bool)

(assert (=> b!8029619 (= e!4730632 (and tp!2402912 tp!2402911))))

(declare-fun b!8029617 () Bool)

(declare-fun tp!2402909 () Bool)

(declare-fun tp!2402910 () Bool)

(assert (=> b!8029617 (= e!4730632 (and tp!2402909 tp!2402910))))

(assert (= (and b!8029503 ((_ is ElementMatch!21695) (regex!8682 (rule!11980 thiss!6935)))) b!8029616))

(assert (= (and b!8029503 ((_ is Concat!30698) (regex!8682 (rule!11980 thiss!6935)))) b!8029617))

(assert (= (and b!8029503 ((_ is Star!21695) (regex!8682 (rule!11980 thiss!6935)))) b!8029618))

(assert (= (and b!8029503 ((_ is Union!21695) (regex!8682 (rule!11980 thiss!6935)))) b!8029619))

(declare-fun e!4730641 () Bool)

(declare-fun b!8029633 () Bool)

(declare-fun tp!2402923 () Bool)

(declare-fun tp!2402924 () Bool)

(assert (=> b!8029633 (= e!4730641 (and (inv!96769 (left!57208 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))))) tp!2402923 (inv!96769 (right!57538 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))))) tp!2402924))))

(declare-fun b!8029635 () Bool)

(declare-fun e!4730640 () Bool)

(declare-fun tp!2402925 () Bool)

(assert (=> b!8029635 (= e!4730640 tp!2402925)))

(declare-fun b!8029634 () Bool)

(declare-fun inv!96775 (IArray!31957) Bool)

(assert (=> b!8029634 (= e!4730641 (and (inv!96775 (xs!19346 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))))) e!4730640))))

(assert (=> b!8029509 (= tp!2402871 (and (inv!96769 (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935)))) e!4730641))))

(assert (= (and b!8029509 ((_ is Node!15948) (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))))) b!8029633))

(assert (= b!8029634 b!8029635))

(assert (= (and b!8029509 ((_ is Leaf!30569) (c!1473086 (dynLambda!30223 (toChars!11612 (transformation!8682 (rule!11980 thiss!6935))) (value!290456 thiss!6935))))) b!8029634))

(declare-fun m!8391536 () Bool)

(assert (=> b!8029633 m!8391536))

(declare-fun m!8391538 () Bool)

(assert (=> b!8029633 m!8391538))

(declare-fun m!8391540 () Bool)

(assert (=> b!8029634 m!8391540))

(assert (=> b!8029509 m!8391470))

(declare-fun b_lambda!290285 () Bool)

(assert (= b_lambda!290281 (or (and b!8029504 b_free!135297) b_lambda!290285)))

(check-sat (not b!8029617) (not b!8029525) (not b!8029527) (not b!8029563) (not b_next!136085) (not b!8029634) (not d!2394401) (not b!8029509) (not b_lambda!290285) (not b!8029523) (not b!8029618) (not b!8029585) (not b!8029619) (not b!8029635) b_and!353725 (not b!8029633) (not d!2394413) (not b_next!136087) (not b!8029561) (not d!2394415) (not b_lambda!290277) (not d!2394405) (not b!8029539) (not b!8029602) b_and!353733 (not b!8029584) tp_is_empty!54381)
(check-sat b_and!353725 b_and!353733 (not b_next!136085) (not b_next!136087))
