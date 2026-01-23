; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757634 () Bool)

(assert start!757634)

(declare-fun b!8046225 () Bool)

(declare-fun b_free!136411 () Bool)

(declare-fun b_next!137201 () Bool)

(assert (=> b!8046225 (= b_free!136411 (not b_next!137201))))

(declare-fun tp!2411980 () Bool)

(declare-fun b_and!354847 () Bool)

(assert (=> b!8046225 (= tp!2411980 b_and!354847)))

(declare-fun b_free!136413 () Bool)

(declare-fun b_next!137203 () Bool)

(assert (=> b!8046225 (= b_free!136413 (not b_next!137203))))

(declare-fun tp!2411981 () Bool)

(declare-fun b_and!354849 () Bool)

(assert (=> b!8046225 (= tp!2411981 b_and!354849)))

(declare-fun b!8046222 () Bool)

(declare-fun e!4740303 () Bool)

(declare-datatypes ((String!85178 0))(
  ( (String!85179 (value!292645 String)) )
))
(declare-datatypes ((List!75454 0))(
  ( (Nil!75328) (Cons!75328 (h!81776 String!85178) (t!391224 List!75454)) )
))
(declare-fun acc!573 () List!75454)

(declare-fun tp!2411979 () Bool)

(declare-fun inv!97068 (String!85178) Bool)

(assert (=> b!8046222 (= e!4740303 (and (inv!97068 (h!81776 acc!573)) tp!2411979))))

(declare-fun b!8046223 () Bool)

(declare-fun res!3180725 () Bool)

(declare-fun e!4740302 () Bool)

(assert (=> b!8046223 (=> (not res!3180725) (not e!4740302))))

(declare-datatypes ((List!75455 0))(
  ( (Nil!75329) (Cons!75329 (h!81777 (_ BitVec 16)) (t!391225 List!75455)) )
))
(declare-datatypes ((TokenValue!9079 0))(
  ( (FloatLiteralValue!18158 (text!63998 List!75455)) (TokenValueExt!9078 (__x!35439 Int)) (Broken!45395 (value!292646 List!75455)) (Object!9204) (End!9079) (Def!9079) (Underscore!9079) (Match!9079) (Else!9079) (Error!9079) (Case!9079) (If!9079) (Extends!9079) (Abstract!9079) (Class!9079) (Val!9079) (DelimiterValue!18158 (del!9139 List!75455)) (KeywordValue!9085 (value!292647 List!75455)) (CommentValue!18158 (value!292648 List!75455)) (WhitespaceValue!18158 (value!292649 List!75455)) (IndentationValue!9079 (value!292650 List!75455)) (String!85180) (Int32!9079) (Broken!45396 (value!292651 List!75455)) (Boolean!9080) (Unit!171130) (OperatorValue!9082 (op!9139 List!75455)) (IdentifierValue!18158 (value!292652 List!75455)) (IdentifierValue!18159 (value!292653 List!75455)) (WhitespaceValue!18159 (value!292654 List!75455)) (True!18158) (False!18158) (Broken!45397 (value!292655 List!75455)) (Broken!45398 (value!292656 List!75455)) (True!18159) (RightBrace!9079) (RightBracket!9079) (Colon!9079) (Null!9079) (Comma!9079) (LeftBracket!9079) (False!18159) (LeftBrace!9079) (ImaginaryLiteralValue!9079 (text!63999 List!75455)) (StringLiteralValue!27237 (value!292657 List!75455)) (EOFValue!9079 (value!292658 List!75455)) (IdentValue!9079 (value!292659 List!75455)) (DelimiterValue!18159 (value!292660 List!75455)) (DedentValue!9079 (value!292661 List!75455)) (NewLineValue!9079 (value!292662 List!75455)) (IntegerValue!27237 (value!292663 (_ BitVec 32)) (text!64000 List!75455)) (IntegerValue!27238 (value!292664 Int) (text!64001 List!75455)) (Times!9079) (Or!9079) (Equal!9079) (Minus!9079) (Broken!45399 (value!292665 List!75455)) (And!9079) (Div!9079) (LessEqual!9079) (Mod!9079) (Concat!30909) (Not!9079) (Plus!9079) (SpaceValue!9079 (value!292666 List!75455)) (IntegerValue!27239 (value!292667 Int) (text!64002 List!75455)) (StringLiteralValue!27238 (text!64003 List!75455)) (FloatLiteralValue!18159 (text!64004 List!75455)) (BytesLiteralValue!9079 (value!292668 List!75455)) (CommentValue!18159 (value!292669 List!75455)) (StringLiteralValue!27239 (value!292670 List!75455)) (ErrorTokenValue!9079 (msg!9140 List!75455)) )
))
(declare-datatypes ((C!43998 0))(
  ( (C!43999 (val!32775 Int)) )
))
(declare-datatypes ((Regex!21830 0))(
  ( (ElementMatch!21830 (c!1475431 C!43998)) (Concat!30910 (regOne!44172 Regex!21830) (regTwo!44172 Regex!21830)) (EmptyExpr!21830) (Star!21830 (reg!22159 Regex!21830)) (EmptyLang!21830) (Union!21830 (regOne!44173 Regex!21830) (regTwo!44173 Regex!21830)) )
))
(declare-datatypes ((List!75456 0))(
  ( (Nil!75330) (Cons!75330 (h!81778 C!43998) (t!391226 List!75456)) )
))
(declare-datatypes ((IArray!32115 0))(
  ( (IArray!32116 (innerList!16115 List!75456)) )
))
(declare-datatypes ((Conc!16027 0))(
  ( (Node!16027 (left!57385 Conc!16027) (right!57715 Conc!16027) (csize!32284 Int) (cheight!16238 Int)) (Leaf!30718 (xs!19425 IArray!32115) (csize!32285 Int)) (Empty!16027) )
))
(declare-datatypes ((BalanceConc!31010 0))(
  ( (BalanceConc!31011 (c!1475432 Conc!16027)) )
))
(declare-datatypes ((TokenValueInjection!17466 0))(
  ( (TokenValueInjection!17467 (toValue!11842 Int) (toChars!11701 Int)) )
))
(declare-datatypes ((Rule!17318 0))(
  ( (Rule!17319 (regex!8759 Regex!21830) (tag!9623 String!85178) (isSeparator!8759 Bool) (transformation!8759 TokenValueInjection!17466)) )
))
(declare-datatypes ((List!75457 0))(
  ( (Nil!75331) (Cons!75331 (h!81779 Rule!17318) (t!391227 List!75457)) )
))
(declare-fun rules!4081 () List!75457)

(declare-datatypes ((LexerInterface!8349 0))(
  ( (LexerInterfaceExt!8346 (__x!35440 Int)) (Lexer!8347) )
))
(declare-fun thiss!26941 () LexerInterface!8349)

(declare-fun noDuplicateTag!3337 (LexerInterface!8349 List!75457 List!75454) Bool)

(assert (=> b!8046223 (= res!3180725 (noDuplicateTag!3337 thiss!26941 rules!4081 acc!573))))

(declare-fun b!8046224 () Bool)

(declare-fun res!3180722 () Bool)

(assert (=> b!8046224 (=> (not res!3180722) (not e!4740302))))

(assert (=> b!8046224 (= res!3180722 (is-Cons!75331 rules!4081))))

(declare-fun b!8046226 () Bool)

(declare-fun e!4740304 () Bool)

(declare-fun newAcc!87 () List!75454)

(declare-fun tp!2411983 () Bool)

(assert (=> b!8046226 (= e!4740304 (and (inv!97068 (h!81776 newAcc!87)) tp!2411983))))

(declare-fun b!8046227 () Bool)

(declare-fun contains!21063 (List!75454 String!85178) Bool)

(assert (=> b!8046227 (= e!4740302 (not (not (contains!21063 acc!573 (tag!9623 (h!81779 rules!4081))))))))

(declare-fun lt!2722779 () List!75454)

(assert (=> b!8046227 (noDuplicateTag!3337 thiss!26941 (t!391227 rules!4081) lt!2722779)))

(declare-datatypes ((Unit!171131 0))(
  ( (Unit!171132) )
))
(declare-fun lt!2722780 () Unit!171131)

(declare-fun lemmaNoDupTagThenAlsoWithSubListAcc!51 (LexerInterface!8349 List!75454 List!75454 List!75457) Unit!171131)

(assert (=> b!8046227 (= lt!2722780 (lemmaNoDupTagThenAlsoWithSubListAcc!51 thiss!26941 (Cons!75328 (tag!9623 (h!81779 rules!4081)) acc!573) lt!2722779 (t!391227 rules!4081)))))

(assert (=> b!8046227 (= lt!2722779 (Cons!75328 (tag!9623 (h!81779 rules!4081)) newAcc!87))))

(declare-fun b!8046228 () Bool)

(declare-fun res!3180724 () Bool)

(assert (=> b!8046228 (=> (not res!3180724) (not e!4740302))))

(declare-fun subseq!910 (List!75454 List!75454) Bool)

(assert (=> b!8046228 (= res!3180724 (subseq!910 newAcc!87 acc!573))))

(declare-fun res!3180723 () Bool)

(assert (=> start!757634 (=> (not res!3180723) (not e!4740302))))

(assert (=> start!757634 (= res!3180723 (is-Lexer!8347 thiss!26941))))

(assert (=> start!757634 e!4740302))

(assert (=> start!757634 true))

(assert (=> start!757634 e!4740304))

(assert (=> start!757634 e!4740303))

(declare-fun e!4740300 () Bool)

(assert (=> start!757634 e!4740300))

(declare-fun e!4740297 () Bool)

(assert (=> b!8046225 (= e!4740297 (and tp!2411980 tp!2411981))))

(declare-fun b!8046229 () Bool)

(declare-fun e!4740296 () Bool)

(declare-fun tp!2411978 () Bool)

(assert (=> b!8046229 (= e!4740300 (and e!4740296 tp!2411978))))

(declare-fun tp!2411982 () Bool)

(declare-fun b!8046230 () Bool)

(declare-fun inv!97071 (TokenValueInjection!17466) Bool)

(assert (=> b!8046230 (= e!4740296 (and tp!2411982 (inv!97068 (tag!9623 (h!81779 rules!4081))) (inv!97071 (transformation!8759 (h!81779 rules!4081))) e!4740297))))

(assert (= (and start!757634 res!3180723) b!8046228))

(assert (= (and b!8046228 res!3180724) b!8046223))

(assert (= (and b!8046223 res!3180725) b!8046224))

(assert (= (and b!8046224 res!3180722) b!8046227))

(assert (= (and start!757634 (is-Cons!75328 newAcc!87)) b!8046226))

(assert (= (and start!757634 (is-Cons!75328 acc!573)) b!8046222))

(assert (= b!8046230 b!8046225))

(assert (= b!8046229 b!8046230))

(assert (= (and start!757634 (is-Cons!75331 rules!4081)) b!8046229))

(declare-fun m!8398462 () Bool)

(assert (=> b!8046223 m!8398462))

(declare-fun m!8398464 () Bool)

(assert (=> b!8046228 m!8398464))

(declare-fun m!8398466 () Bool)

(assert (=> b!8046230 m!8398466))

(declare-fun m!8398468 () Bool)

(assert (=> b!8046230 m!8398468))

(declare-fun m!8398470 () Bool)

(assert (=> b!8046226 m!8398470))

(declare-fun m!8398472 () Bool)

(assert (=> b!8046227 m!8398472))

(declare-fun m!8398474 () Bool)

(assert (=> b!8046227 m!8398474))

(declare-fun m!8398476 () Bool)

(assert (=> b!8046227 m!8398476))

(declare-fun m!8398478 () Bool)

(assert (=> b!8046222 m!8398478))

(push 1)

(assert (not b_next!137201))

(assert (not b_next!137203))

(assert (not b!8046230))

(assert (not b!8046222))

(assert b_and!354847)

(assert b_and!354849)

(assert (not b!8046229))

(assert (not b!8046228))

(assert (not b!8046226))

(assert (not b!8046227))

(assert (not b!8046223))

(check-sat)

(pop 1)

(push 1)

(assert b_and!354849)

(assert b_and!354847)

(assert (not b_next!137203))

(assert (not b_next!137201))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2396557 () Bool)

(assert (=> d!2396557 (= (inv!97068 (tag!9623 (h!81779 rules!4081))) (= (mod (str.len (value!292645 (tag!9623 (h!81779 rules!4081)))) 2) 0))))

(assert (=> b!8046230 d!2396557))

(declare-fun d!2396559 () Bool)

(declare-fun res!3180744 () Bool)

(declare-fun e!4740334 () Bool)

(assert (=> d!2396559 (=> (not res!3180744) (not e!4740334))))

(declare-fun semiInverseModEq!3888 (Int Int) Bool)

(assert (=> d!2396559 (= res!3180744 (semiInverseModEq!3888 (toChars!11701 (transformation!8759 (h!81779 rules!4081))) (toValue!11842 (transformation!8759 (h!81779 rules!4081)))))))

(assert (=> d!2396559 (= (inv!97071 (transformation!8759 (h!81779 rules!4081))) e!4740334)))

(declare-fun b!8046260 () Bool)

(declare-fun equivClasses!3703 (Int Int) Bool)

(assert (=> b!8046260 (= e!4740334 (equivClasses!3703 (toChars!11701 (transformation!8759 (h!81779 rules!4081))) (toValue!11842 (transformation!8759 (h!81779 rules!4081)))))))

(assert (= (and d!2396559 res!3180744) b!8046260))

(declare-fun m!8398498 () Bool)

(assert (=> d!2396559 m!8398498))

(declare-fun m!8398500 () Bool)

(assert (=> b!8046260 m!8398500))

(assert (=> b!8046230 d!2396559))

(declare-fun d!2396561 () Bool)

(declare-fun res!3180749 () Bool)

(declare-fun e!4740339 () Bool)

(assert (=> d!2396561 (=> res!3180749 e!4740339)))

(assert (=> d!2396561 (= res!3180749 (is-Nil!75331 rules!4081))))

(assert (=> d!2396561 (= (noDuplicateTag!3337 thiss!26941 rules!4081 acc!573) e!4740339)))

(declare-fun b!8046265 () Bool)

(declare-fun e!4740340 () Bool)

(assert (=> b!8046265 (= e!4740339 e!4740340)))

(declare-fun res!3180750 () Bool)

(assert (=> b!8046265 (=> (not res!3180750) (not e!4740340))))

(assert (=> b!8046265 (= res!3180750 (not (contains!21063 acc!573 (tag!9623 (h!81779 rules!4081)))))))

(declare-fun b!8046266 () Bool)

(assert (=> b!8046266 (= e!4740340 (noDuplicateTag!3337 thiss!26941 (t!391227 rules!4081) (Cons!75328 (tag!9623 (h!81779 rules!4081)) acc!573)))))

(assert (= (and d!2396561 (not res!3180749)) b!8046265))

(assert (= (and b!8046265 res!3180750) b!8046266))

(assert (=> b!8046265 m!8398472))

(declare-fun m!8398502 () Bool)

(assert (=> b!8046266 m!8398502))

(assert (=> b!8046223 d!2396561))

(declare-fun d!2396563 () Bool)

(declare-fun lt!2722789 () Bool)

(declare-fun content!16073 (List!75454) (Set String!85178))

(assert (=> d!2396563 (= lt!2722789 (set.member (tag!9623 (h!81779 rules!4081)) (content!16073 acc!573)))))

(declare-fun e!4740346 () Bool)

(assert (=> d!2396563 (= lt!2722789 e!4740346)))

(declare-fun res!3180755 () Bool)

(assert (=> d!2396563 (=> (not res!3180755) (not e!4740346))))

(assert (=> d!2396563 (= res!3180755 (is-Cons!75328 acc!573))))

(assert (=> d!2396563 (= (contains!21063 acc!573 (tag!9623 (h!81779 rules!4081))) lt!2722789)))

(declare-fun b!8046271 () Bool)

(declare-fun e!4740345 () Bool)

(assert (=> b!8046271 (= e!4740346 e!4740345)))

(declare-fun res!3180756 () Bool)

(assert (=> b!8046271 (=> res!3180756 e!4740345)))

(assert (=> b!8046271 (= res!3180756 (= (h!81776 acc!573) (tag!9623 (h!81779 rules!4081))))))

(declare-fun b!8046272 () Bool)

(assert (=> b!8046272 (= e!4740345 (contains!21063 (t!391224 acc!573) (tag!9623 (h!81779 rules!4081))))))

(assert (= (and d!2396563 res!3180755) b!8046271))

(assert (= (and b!8046271 (not res!3180756)) b!8046272))

(declare-fun m!8398504 () Bool)

(assert (=> d!2396563 m!8398504))

(declare-fun m!8398506 () Bool)

(assert (=> d!2396563 m!8398506))

(declare-fun m!8398508 () Bool)

(assert (=> b!8046272 m!8398508))

(assert (=> b!8046227 d!2396563))

(declare-fun d!2396567 () Bool)

(declare-fun res!3180757 () Bool)

(declare-fun e!4740347 () Bool)

(assert (=> d!2396567 (=> res!3180757 e!4740347)))

(assert (=> d!2396567 (= res!3180757 (is-Nil!75331 (t!391227 rules!4081)))))

(assert (=> d!2396567 (= (noDuplicateTag!3337 thiss!26941 (t!391227 rules!4081) lt!2722779) e!4740347)))

(declare-fun b!8046273 () Bool)

(declare-fun e!4740348 () Bool)

(assert (=> b!8046273 (= e!4740347 e!4740348)))

(declare-fun res!3180758 () Bool)

(assert (=> b!8046273 (=> (not res!3180758) (not e!4740348))))

(assert (=> b!8046273 (= res!3180758 (not (contains!21063 lt!2722779 (tag!9623 (h!81779 (t!391227 rules!4081))))))))

(declare-fun b!8046274 () Bool)

(assert (=> b!8046274 (= e!4740348 (noDuplicateTag!3337 thiss!26941 (t!391227 (t!391227 rules!4081)) (Cons!75328 (tag!9623 (h!81779 (t!391227 rules!4081))) lt!2722779)))))

(assert (= (and d!2396567 (not res!3180757)) b!8046273))

(assert (= (and b!8046273 res!3180758) b!8046274))

(declare-fun m!8398510 () Bool)

(assert (=> b!8046273 m!8398510))

(declare-fun m!8398512 () Bool)

(assert (=> b!8046274 m!8398512))

(assert (=> b!8046227 d!2396567))

(declare-fun d!2396569 () Bool)

(assert (=> d!2396569 (noDuplicateTag!3337 thiss!26941 (t!391227 rules!4081) lt!2722779)))

(declare-fun lt!2722792 () Unit!171131)

(declare-fun choose!60486 (LexerInterface!8349 List!75454 List!75454 List!75457) Unit!171131)

(assert (=> d!2396569 (= lt!2722792 (choose!60486 thiss!26941 (Cons!75328 (tag!9623 (h!81779 rules!4081)) acc!573) lt!2722779 (t!391227 rules!4081)))))

(assert (=> d!2396569 (subseq!910 lt!2722779 (Cons!75328 (tag!9623 (h!81779 rules!4081)) acc!573))))

(assert (=> d!2396569 (= (lemmaNoDupTagThenAlsoWithSubListAcc!51 thiss!26941 (Cons!75328 (tag!9623 (h!81779 rules!4081)) acc!573) lt!2722779 (t!391227 rules!4081)) lt!2722792)))

(declare-fun bs!1971749 () Bool)

(assert (= bs!1971749 d!2396569))

(assert (=> bs!1971749 m!8398474))

(declare-fun m!8398514 () Bool)

(assert (=> bs!1971749 m!8398514))

(declare-fun m!8398516 () Bool)

(assert (=> bs!1971749 m!8398516))

(assert (=> b!8046227 d!2396569))

(declare-fun d!2396571 () Bool)

(assert (=> d!2396571 (= (inv!97068 (h!81776 acc!573)) (= (mod (str.len (value!292645 (h!81776 acc!573))) 2) 0))))

(assert (=> b!8046222 d!2396571))

(declare-fun b!8046291 () Bool)

(declare-fun e!4740364 () Bool)

(assert (=> b!8046291 (= e!4740364 (subseq!910 (t!391224 newAcc!87) (t!391224 acc!573)))))

(declare-fun b!8046292 () Bool)

(declare-fun e!4740366 () Bool)

(assert (=> b!8046292 (= e!4740366 (subseq!910 newAcc!87 (t!391224 acc!573)))))

(declare-fun d!2396573 () Bool)

(declare-fun res!3180775 () Bool)

(declare-fun e!4740365 () Bool)

(assert (=> d!2396573 (=> res!3180775 e!4740365)))

(assert (=> d!2396573 (= res!3180775 (is-Nil!75328 newAcc!87))))

(assert (=> d!2396573 (= (subseq!910 newAcc!87 acc!573) e!4740365)))

(declare-fun b!8046289 () Bool)

(declare-fun e!4740363 () Bool)

(assert (=> b!8046289 (= e!4740365 e!4740363)))

(declare-fun res!3180773 () Bool)

(assert (=> b!8046289 (=> (not res!3180773) (not e!4740363))))

(assert (=> b!8046289 (= res!3180773 (is-Cons!75328 acc!573))))

(declare-fun b!8046290 () Bool)

(assert (=> b!8046290 (= e!4740363 e!4740366)))

(declare-fun res!3180774 () Bool)

(assert (=> b!8046290 (=> res!3180774 e!4740366)))

(assert (=> b!8046290 (= res!3180774 e!4740364)))

(declare-fun res!3180776 () Bool)

(assert (=> b!8046290 (=> (not res!3180776) (not e!4740364))))

(assert (=> b!8046290 (= res!3180776 (= (h!81776 newAcc!87) (h!81776 acc!573)))))

(assert (= (and d!2396573 (not res!3180775)) b!8046289))

(assert (= (and b!8046289 res!3180773) b!8046290))

(assert (= (and b!8046290 res!3180776) b!8046291))

(assert (= (and b!8046290 (not res!3180774)) b!8046292))

(declare-fun m!8398520 () Bool)

(assert (=> b!8046291 m!8398520))

(declare-fun m!8398522 () Bool)

(assert (=> b!8046292 m!8398522))

(assert (=> b!8046228 d!2396573))

(declare-fun d!2396579 () Bool)

(assert (=> d!2396579 (= (inv!97068 (h!81776 newAcc!87)) (= (mod (str.len (value!292645 (h!81776 newAcc!87))) 2) 0))))

(assert (=> b!8046226 d!2396579))

(declare-fun e!4740369 () Bool)

(assert (=> b!8046230 (= tp!2411982 e!4740369)))

(declare-fun b!8046306 () Bool)

(declare-fun tp!2412016 () Bool)

(declare-fun tp!2412014 () Bool)

(assert (=> b!8046306 (= e!4740369 (and tp!2412016 tp!2412014))))

(declare-fun b!8046303 () Bool)

(declare-fun tp_is_empty!54627 () Bool)

(assert (=> b!8046303 (= e!4740369 tp_is_empty!54627)))

(declare-fun b!8046304 () Bool)

(declare-fun tp!2412015 () Bool)

(declare-fun tp!2412013 () Bool)

(assert (=> b!8046304 (= e!4740369 (and tp!2412015 tp!2412013))))

(declare-fun b!8046305 () Bool)

(declare-fun tp!2412012 () Bool)

(assert (=> b!8046305 (= e!4740369 tp!2412012)))

(assert (= (and b!8046230 (is-ElementMatch!21830 (regex!8759 (h!81779 rules!4081)))) b!8046303))

(assert (= (and b!8046230 (is-Concat!30910 (regex!8759 (h!81779 rules!4081)))) b!8046304))

(assert (= (and b!8046230 (is-Star!21830 (regex!8759 (h!81779 rules!4081)))) b!8046305))

(assert (= (and b!8046230 (is-Union!21830 (regex!8759 (h!81779 rules!4081)))) b!8046306))

(declare-fun b!8046317 () Bool)

(declare-fun b_free!136419 () Bool)

(declare-fun b_next!137209 () Bool)

(assert (=> b!8046317 (= b_free!136419 (not b_next!137209))))

(declare-fun tp!2412028 () Bool)

(declare-fun b_and!354855 () Bool)

(assert (=> b!8046317 (= tp!2412028 b_and!354855)))

(declare-fun b_free!136421 () Bool)

(declare-fun b_next!137211 () Bool)

(assert (=> b!8046317 (= b_free!136421 (not b_next!137211))))

(declare-fun tp!2412026 () Bool)

(declare-fun b_and!354857 () Bool)

(assert (=> b!8046317 (= tp!2412026 b_and!354857)))

(declare-fun e!4740379 () Bool)

(assert (=> b!8046317 (= e!4740379 (and tp!2412028 tp!2412026))))

(declare-fun b!8046316 () Bool)

(declare-fun tp!2412025 () Bool)

(declare-fun e!4740378 () Bool)

(assert (=> b!8046316 (= e!4740378 (and tp!2412025 (inv!97068 (tag!9623 (h!81779 (t!391227 rules!4081)))) (inv!97071 (transformation!8759 (h!81779 (t!391227 rules!4081)))) e!4740379))))

(declare-fun b!8046315 () Bool)

(declare-fun e!4740380 () Bool)

(declare-fun tp!2412027 () Bool)

(assert (=> b!8046315 (= e!4740380 (and e!4740378 tp!2412027))))

(assert (=> b!8046229 (= tp!2411978 e!4740380)))

(assert (= b!8046316 b!8046317))

(assert (= b!8046315 b!8046316))

(assert (= (and b!8046229 (is-Cons!75331 (t!391227 rules!4081))) b!8046315))

(declare-fun m!8398524 () Bool)

(assert (=> b!8046316 m!8398524))

(declare-fun m!8398526 () Bool)

(assert (=> b!8046316 m!8398526))

(declare-fun b!8046322 () Bool)

(declare-fun e!4740386 () Bool)

(declare-fun tp!2412031 () Bool)

(assert (=> b!8046322 (= e!4740386 (and (inv!97068 (h!81776 (t!391224 acc!573))) tp!2412031))))

(assert (=> b!8046222 (= tp!2411979 e!4740386)))

(assert (= (and b!8046222 (is-Cons!75328 (t!391224 acc!573))) b!8046322))

(declare-fun m!8398528 () Bool)

(assert (=> b!8046322 m!8398528))

(declare-fun b!8046323 () Bool)

(declare-fun e!4740388 () Bool)

(declare-fun tp!2412032 () Bool)

(assert (=> b!8046323 (= e!4740388 (and (inv!97068 (h!81776 (t!391224 newAcc!87))) tp!2412032))))

(assert (=> b!8046226 (= tp!2411983 e!4740388)))

(assert (= (and b!8046226 (is-Cons!75328 (t!391224 newAcc!87))) b!8046323))

(declare-fun m!8398530 () Bool)

(assert (=> b!8046323 m!8398530))

(push 1)

(assert b_and!354855)

(assert (not b!8046265))

(assert (not b_next!137203))

(assert (not b!8046292))

(assert (not b!8046273))

(assert (not b!8046260))

(assert (not b!8046266))

(assert (not b_next!137209))

(assert b_and!354847)

(assert (not b!8046323))

(assert (not b!8046274))

(assert (not b!8046306))

(assert (not b_next!137201))

(assert (not b!8046322))

(assert (not d!2396563))

(assert (not b!8046304))

(assert (not b!8046291))

(assert b_and!354857)

(assert tp_is_empty!54627)

(assert (not b!8046316))

(assert (not d!2396569))

(assert (not b!8046315))

(assert (not b_next!137211))

(assert (not d!2396559))

(assert (not b!8046305))

(assert b_and!354849)

(assert (not b!8046272))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137201))

(assert b_and!354855)

(assert b_and!354857)

(assert (not b_next!137203))

(assert (not b_next!137211))

(assert (not b_next!137209))

(assert b_and!354847)

(assert b_and!354849)

(check-sat)

(pop 1)

