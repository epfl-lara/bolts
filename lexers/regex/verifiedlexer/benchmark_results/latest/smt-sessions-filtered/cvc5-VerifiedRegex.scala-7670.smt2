; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!404296 () Bool)

(assert start!404296)

(declare-fun b!4227694 () Bool)

(declare-fun b_free!124731 () Bool)

(declare-fun b_next!125435 () Bool)

(assert (=> b!4227694 (= b_free!124731 (not b_next!125435))))

(declare-fun tp!1294773 () Bool)

(declare-fun b_and!333965 () Bool)

(assert (=> b!4227694 (= tp!1294773 b_and!333965)))

(declare-fun b_free!124733 () Bool)

(declare-fun b_next!125437 () Bool)

(assert (=> b!4227694 (= b_free!124733 (not b_next!125437))))

(declare-fun tp!1294769 () Bool)

(declare-fun b_and!333967 () Bool)

(assert (=> b!4227694 (= tp!1294769 b_and!333967)))

(declare-fun b!4227688 () Bool)

(declare-fun b_free!124735 () Bool)

(declare-fun b_next!125439 () Bool)

(assert (=> b!4227688 (= b_free!124735 (not b_next!125439))))

(declare-fun tp!1294771 () Bool)

(declare-fun b_and!333969 () Bool)

(assert (=> b!4227688 (= tp!1294771 b_and!333969)))

(declare-fun b_free!124737 () Bool)

(declare-fun b_next!125441 () Bool)

(assert (=> b!4227688 (= b_free!124737 (not b_next!125441))))

(declare-fun tp!1294768 () Bool)

(declare-fun b_and!333971 () Bool)

(assert (=> b!4227688 (= tp!1294768 b_and!333971)))

(declare-fun e!2625006 () Bool)

(declare-fun tp!1294772 () Bool)

(declare-fun e!2625009 () Bool)

(declare-datatypes ((C!25710 0))(
  ( (C!25711 (val!15017 Int)) )
))
(declare-datatypes ((List!46762 0))(
  ( (Nil!46638) (Cons!46638 (h!52058 C!25710) (t!349379 List!46762)) )
))
(declare-datatypes ((IArray!28133 0))(
  ( (IArray!28134 (innerList!14124 List!46762)) )
))
(declare-datatypes ((Conc!14064 0))(
  ( (Node!14064 (left!34690 Conc!14064) (right!35020 Conc!14064) (csize!28358 Int) (cheight!14275 Int)) (Leaf!21735 (xs!17370 IArray!28133) (csize!28359 Int)) (Empty!14064) )
))
(declare-datatypes ((List!46763 0))(
  ( (Nil!46639) (Cons!46639 (h!52059 (_ BitVec 16)) (t!349380 List!46763)) )
))
(declare-datatypes ((TokenValue!8083 0))(
  ( (FloatLiteralValue!16166 (text!57026 List!46763)) (TokenValueExt!8082 (__x!28389 Int)) (Broken!40415 (value!244289 List!46763)) (Object!8206) (End!8083) (Def!8083) (Underscore!8083) (Match!8083) (Else!8083) (Error!8083) (Case!8083) (If!8083) (Extends!8083) (Abstract!8083) (Class!8083) (Val!8083) (DelimiterValue!16166 (del!8143 List!46763)) (KeywordValue!8089 (value!244290 List!46763)) (CommentValue!16166 (value!244291 List!46763)) (WhitespaceValue!16166 (value!244292 List!46763)) (IndentationValue!8083 (value!244293 List!46763)) (String!54286) (Int32!8083) (Broken!40416 (value!244294 List!46763)) (Boolean!8084) (Unit!65753) (OperatorValue!8086 (op!8143 List!46763)) (IdentifierValue!16166 (value!244295 List!46763)) (IdentifierValue!16167 (value!244296 List!46763)) (WhitespaceValue!16167 (value!244297 List!46763)) (True!16166) (False!16166) (Broken!40417 (value!244298 List!46763)) (Broken!40418 (value!244299 List!46763)) (True!16167) (RightBrace!8083) (RightBracket!8083) (Colon!8083) (Null!8083) (Comma!8083) (LeftBracket!8083) (False!16167) (LeftBrace!8083) (ImaginaryLiteralValue!8083 (text!57027 List!46763)) (StringLiteralValue!24249 (value!244300 List!46763)) (EOFValue!8083 (value!244301 List!46763)) (IdentValue!8083 (value!244302 List!46763)) (DelimiterValue!16167 (value!244303 List!46763)) (DedentValue!8083 (value!244304 List!46763)) (NewLineValue!8083 (value!244305 List!46763)) (IntegerValue!24249 (value!244306 (_ BitVec 32)) (text!57028 List!46763)) (IntegerValue!24250 (value!244307 Int) (text!57029 List!46763)) (Times!8083) (Or!8083) (Equal!8083) (Minus!8083) (Broken!40419 (value!244308 List!46763)) (And!8083) (Div!8083) (LessEqual!8083) (Mod!8083) (Concat!20841) (Not!8083) (Plus!8083) (SpaceValue!8083 (value!244309 List!46763)) (IntegerValue!24251 (value!244310 Int) (text!57030 List!46763)) (StringLiteralValue!24250 (text!57031 List!46763)) (FloatLiteralValue!16167 (text!57032 List!46763)) (BytesLiteralValue!8083 (value!244311 List!46763)) (CommentValue!16167 (value!244312 List!46763)) (StringLiteralValue!24251 (value!244313 List!46763)) (ErrorTokenValue!8083 (msg!8144 List!46763)) )
))
(declare-datatypes ((BalanceConc!27722 0))(
  ( (BalanceConc!27723 (c!718736 Conc!14064)) )
))
(declare-datatypes ((TokenValueInjection!15594 0))(
  ( (TokenValueInjection!15595 (toValue!10581 Int) (toChars!10440 Int)) )
))
(declare-datatypes ((Regex!12758 0))(
  ( (ElementMatch!12758 (c!718737 C!25710)) (Concat!20842 (regOne!26028 Regex!12758) (regTwo!26028 Regex!12758)) (EmptyExpr!12758) (Star!12758 (reg!13087 Regex!12758)) (EmptyLang!12758) (Union!12758 (regOne!26029 Regex!12758) (regTwo!26029 Regex!12758)) )
))
(declare-datatypes ((String!54287 0))(
  ( (String!54288 (value!244314 String)) )
))
(declare-datatypes ((Rule!15506 0))(
  ( (Rule!15507 (regex!7853 Regex!12758) (tag!8717 String!54287) (isSeparator!7853 Bool) (transformation!7853 TokenValueInjection!15594)) )
))
(declare-fun r!4367 () Rule!15506)

(declare-fun b!4227687 () Bool)

(declare-fun inv!61289 (String!54287) Bool)

(declare-fun inv!61292 (TokenValueInjection!15594) Bool)

(assert (=> b!4227687 (= e!2625009 (and tp!1294772 (inv!61289 (tag!8717 r!4367)) (inv!61292 (transformation!7853 r!4367)) e!2625006))))

(assert (=> b!4227688 (= e!2625006 (and tp!1294771 tp!1294768))))

(declare-fun res!1738418 () Bool)

(declare-fun e!2625007 () Bool)

(assert (=> start!404296 (=> (not res!1738418) (not e!2625007))))

(declare-datatypes ((LexerInterface!7448 0))(
  ( (LexerInterfaceExt!7445 (__x!28390 Int)) (Lexer!7446) )
))
(declare-fun thiss!26827 () LexerInterface!7448)

(assert (=> start!404296 (= res!1738418 (is-Lexer!7446 thiss!26827))))

(assert (=> start!404296 e!2625007))

(assert (=> start!404296 true))

(declare-fun e!2625010 () Bool)

(assert (=> start!404296 e!2625010))

(assert (=> start!404296 e!2625009))

(declare-fun e!2625011 () Bool)

(declare-datatypes ((List!46764 0))(
  ( (Nil!46640) (Cons!46640 (h!52060 Rule!15506) (t!349381 List!46764)) )
))
(declare-fun rules!4024 () List!46764)

(declare-fun e!2625008 () Bool)

(declare-fun tp!1294770 () Bool)

(declare-fun b!4227689 () Bool)

(assert (=> b!4227689 (= e!2625011 (and tp!1294770 (inv!61289 (tag!8717 (h!52060 rules!4024))) (inv!61292 (transformation!7853 (h!52060 rules!4024))) e!2625008))))

(declare-fun b!4227690 () Bool)

(declare-fun res!1738420 () Bool)

(assert (=> b!4227690 (=> (not res!1738420) (not e!2625007))))

(assert (=> b!4227690 (= res!1738420 (and (or (not (is-Cons!46640 rules!4024)) (not (= (h!52060 rules!4024) r!4367))) (or (not (is-Cons!46640 rules!4024)) (= (h!52060 rules!4024) r!4367)) (is-Nil!46640 rules!4024)))))

(declare-fun b!4227691 () Bool)

(declare-fun res!1738417 () Bool)

(assert (=> b!4227691 (=> (not res!1738417) (not e!2625007))))

(declare-fun contains!9676 (List!46764 Rule!15506) Bool)

(assert (=> b!4227691 (= res!1738417 (contains!9676 rules!4024 r!4367))))

(declare-fun b!4227692 () Bool)

(declare-fun tp!1294767 () Bool)

(assert (=> b!4227692 (= e!2625010 (and e!2625011 tp!1294767))))

(declare-fun b!4227693 () Bool)

(declare-fun res!1738419 () Bool)

(assert (=> b!4227693 (=> (not res!1738419) (not e!2625007))))

(declare-fun rulesValidInductive!2955 (LexerInterface!7448 List!46764) Bool)

(assert (=> b!4227693 (= res!1738419 (rulesValidInductive!2955 thiss!26827 rules!4024))))

(assert (=> b!4227694 (= e!2625008 (and tp!1294773 tp!1294769))))

(declare-fun b!4227695 () Bool)

(declare-fun ruleValid!3553 (LexerInterface!7448 Rule!15506) Bool)

(assert (=> b!4227695 (= e!2625007 (not (ruleValid!3553 thiss!26827 r!4367)))))

(assert (= (and start!404296 res!1738418) b!4227691))

(assert (= (and b!4227691 res!1738417) b!4227693))

(assert (= (and b!4227693 res!1738419) b!4227690))

(assert (= (and b!4227690 res!1738420) b!4227695))

(assert (= b!4227689 b!4227694))

(assert (= b!4227692 b!4227689))

(assert (= (and start!404296 (is-Cons!46640 rules!4024)) b!4227692))

(assert (= b!4227687 b!4227688))

(assert (= start!404296 b!4227687))

(declare-fun m!4815035 () Bool)

(assert (=> b!4227693 m!4815035))

(declare-fun m!4815037 () Bool)

(assert (=> b!4227689 m!4815037))

(declare-fun m!4815039 () Bool)

(assert (=> b!4227689 m!4815039))

(declare-fun m!4815041 () Bool)

(assert (=> b!4227695 m!4815041))

(declare-fun m!4815043 () Bool)

(assert (=> b!4227687 m!4815043))

(declare-fun m!4815045 () Bool)

(assert (=> b!4227687 m!4815045))

(declare-fun m!4815047 () Bool)

(assert (=> b!4227691 m!4815047))

(push 1)

(assert (not b!4227691))

(assert b_and!333965)

(assert b_and!333971)

(assert (not b_next!125441))

(assert (not b!4227695))

(assert b_and!333967)

(assert (not b!4227689))

(assert b_and!333969)

(assert (not b!4227692))

(assert (not b_next!125437))

(assert (not b!4227693))

(assert (not b_next!125439))

(assert (not b!4227687))

(assert (not b_next!125435))

(check-sat)

(pop 1)

(push 1)

(assert b_and!333965)

(assert (not b_next!125437))

(assert b_and!333971)

(assert (not b_next!125439))

(assert (not b_next!125435))

(assert (not b_next!125441))

(assert b_and!333967)

(assert b_and!333969)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1244545 () Bool)

(declare-fun lt!1503295 () Bool)

(declare-fun content!7332 (List!46764) (Set Rule!15506))

(assert (=> d!1244545 (= lt!1503295 (set.member r!4367 (content!7332 rules!4024)))))

(declare-fun e!2625047 () Bool)

(assert (=> d!1244545 (= lt!1503295 e!2625047)))

(declare-fun res!1738451 () Bool)

(assert (=> d!1244545 (=> (not res!1738451) (not e!2625047))))

(assert (=> d!1244545 (= res!1738451 (is-Cons!46640 rules!4024))))

(assert (=> d!1244545 (= (contains!9676 rules!4024 r!4367) lt!1503295)))

(declare-fun b!4227736 () Bool)

(declare-fun e!2625048 () Bool)

(assert (=> b!4227736 (= e!2625047 e!2625048)))

(declare-fun res!1738450 () Bool)

(assert (=> b!4227736 (=> res!1738450 e!2625048)))

(assert (=> b!4227736 (= res!1738450 (= (h!52060 rules!4024) r!4367))))

(declare-fun b!4227737 () Bool)

(assert (=> b!4227737 (= e!2625048 (contains!9676 (t!349381 rules!4024) r!4367))))

(assert (= (and d!1244545 res!1738451) b!4227736))

(assert (= (and b!4227736 (not res!1738450)) b!4227737))

(declare-fun m!4815071 () Bool)

(assert (=> d!1244545 m!4815071))

(declare-fun m!4815073 () Bool)

(assert (=> d!1244545 m!4815073))

(declare-fun m!4815075 () Bool)

(assert (=> b!4227737 m!4815075))

(assert (=> b!4227691 d!1244545))

(declare-fun d!1244551 () Bool)

(assert (=> d!1244551 true))

(declare-fun lt!1503300 () Bool)

(declare-fun lambda!129958 () Int)

(declare-fun forall!8527 (List!46764 Int) Bool)

(assert (=> d!1244551 (= lt!1503300 (forall!8527 rules!4024 lambda!129958))))

(declare-fun e!2625058 () Bool)

(assert (=> d!1244551 (= lt!1503300 e!2625058)))

(declare-fun res!1738462 () Bool)

(assert (=> d!1244551 (=> res!1738462 e!2625058)))

(assert (=> d!1244551 (= res!1738462 (not (is-Cons!46640 rules!4024)))))

(assert (=> d!1244551 (= (rulesValidInductive!2955 thiss!26827 rules!4024) lt!1503300)))

(declare-fun b!4227747 () Bool)

(declare-fun e!2625059 () Bool)

(assert (=> b!4227747 (= e!2625058 e!2625059)))

(declare-fun res!1738461 () Bool)

(assert (=> b!4227747 (=> (not res!1738461) (not e!2625059))))

(assert (=> b!4227747 (= res!1738461 (ruleValid!3553 thiss!26827 (h!52060 rules!4024)))))

(declare-fun b!4227748 () Bool)

(assert (=> b!4227748 (= e!2625059 (rulesValidInductive!2955 thiss!26827 (t!349381 rules!4024)))))

(assert (= (and d!1244551 (not res!1738462)) b!4227747))

(assert (= (and b!4227747 res!1738461) b!4227748))

(declare-fun m!4815081 () Bool)

(assert (=> d!1244551 m!4815081))

(declare-fun m!4815083 () Bool)

(assert (=> b!4227747 m!4815083))

(declare-fun m!4815085 () Bool)

(assert (=> b!4227748 m!4815085))

(assert (=> b!4227693 d!1244551))

(declare-fun d!1244555 () Bool)

(assert (=> d!1244555 (= (inv!61289 (tag!8717 r!4367)) (= (mod (str.len (value!244314 (tag!8717 r!4367))) 2) 0))))

(assert (=> b!4227687 d!1244555))

(declare-fun d!1244557 () Bool)

(declare-fun res!1738465 () Bool)

(declare-fun e!2625062 () Bool)

(assert (=> d!1244557 (=> (not res!1738465) (not e!2625062))))

(declare-fun semiInverseModEq!3420 (Int Int) Bool)

(assert (=> d!1244557 (= res!1738465 (semiInverseModEq!3420 (toChars!10440 (transformation!7853 r!4367)) (toValue!10581 (transformation!7853 r!4367))))))

(assert (=> d!1244557 (= (inv!61292 (transformation!7853 r!4367)) e!2625062)))

(declare-fun b!4227753 () Bool)

(declare-fun equivClasses!3319 (Int Int) Bool)

(assert (=> b!4227753 (= e!2625062 (equivClasses!3319 (toChars!10440 (transformation!7853 r!4367)) (toValue!10581 (transformation!7853 r!4367))))))

(assert (= (and d!1244557 res!1738465) b!4227753))

(declare-fun m!4815087 () Bool)

(assert (=> d!1244557 m!4815087))

(declare-fun m!4815089 () Bool)

(assert (=> b!4227753 m!4815089))

(assert (=> b!4227687 d!1244557))

(declare-fun d!1244559 () Bool)

(assert (=> d!1244559 (= (inv!61289 (tag!8717 (h!52060 rules!4024))) (= (mod (str.len (value!244314 (tag!8717 (h!52060 rules!4024)))) 2) 0))))

(assert (=> b!4227689 d!1244559))

(declare-fun d!1244561 () Bool)

(declare-fun res!1738466 () Bool)

(declare-fun e!2625063 () Bool)

(assert (=> d!1244561 (=> (not res!1738466) (not e!2625063))))

(assert (=> d!1244561 (= res!1738466 (semiInverseModEq!3420 (toChars!10440 (transformation!7853 (h!52060 rules!4024))) (toValue!10581 (transformation!7853 (h!52060 rules!4024)))))))

(assert (=> d!1244561 (= (inv!61292 (transformation!7853 (h!52060 rules!4024))) e!2625063)))

(declare-fun b!4227754 () Bool)

(assert (=> b!4227754 (= e!2625063 (equivClasses!3319 (toChars!10440 (transformation!7853 (h!52060 rules!4024))) (toValue!10581 (transformation!7853 (h!52060 rules!4024)))))))

(assert (= (and d!1244561 res!1738466) b!4227754))

(declare-fun m!4815091 () Bool)

(assert (=> d!1244561 m!4815091))

(declare-fun m!4815093 () Bool)

(assert (=> b!4227754 m!4815093))

(assert (=> b!4227689 d!1244561))

(declare-fun d!1244563 () Bool)

(declare-fun res!1738471 () Bool)

(declare-fun e!2625066 () Bool)

(assert (=> d!1244563 (=> (not res!1738471) (not e!2625066))))

(declare-fun validRegex!5784 (Regex!12758) Bool)

(assert (=> d!1244563 (= res!1738471 (validRegex!5784 (regex!7853 r!4367)))))

(assert (=> d!1244563 (= (ruleValid!3553 thiss!26827 r!4367) e!2625066)))

(declare-fun b!4227759 () Bool)

(declare-fun res!1738472 () Bool)

(assert (=> b!4227759 (=> (not res!1738472) (not e!2625066))))

(declare-fun nullable!4497 (Regex!12758) Bool)

(assert (=> b!4227759 (= res!1738472 (not (nullable!4497 (regex!7853 r!4367))))))

(declare-fun b!4227760 () Bool)

(assert (=> b!4227760 (= e!2625066 (not (= (tag!8717 r!4367) (String!54288 ""))))))

(assert (= (and d!1244563 res!1738471) b!4227759))

(assert (= (and b!4227759 res!1738472) b!4227760))

(declare-fun m!4815095 () Bool)

(assert (=> d!1244563 m!4815095))

(declare-fun m!4815097 () Bool)

(assert (=> b!4227759 m!4815097))

(assert (=> b!4227695 d!1244563))

(declare-fun b!4227771 () Bool)

(declare-fun b_free!124747 () Bool)

(declare-fun b_next!125451 () Bool)

(assert (=> b!4227771 (= b_free!124747 (not b_next!125451))))

(declare-fun tp!1294805 () Bool)

(declare-fun b_and!333981 () Bool)

(assert (=> b!4227771 (= tp!1294805 b_and!333981)))

(declare-fun b_free!124749 () Bool)

(declare-fun b_next!125453 () Bool)

(assert (=> b!4227771 (= b_free!124749 (not b_next!125453))))

(declare-fun tp!1294803 () Bool)

(declare-fun b_and!333983 () Bool)

(assert (=> b!4227771 (= tp!1294803 b_and!333983)))

(declare-fun e!2625078 () Bool)

(assert (=> b!4227771 (= e!2625078 (and tp!1294805 tp!1294803))))

(declare-fun tp!1294806 () Bool)

(declare-fun b!4227770 () Bool)

(declare-fun e!2625076 () Bool)

(assert (=> b!4227770 (= e!2625076 (and tp!1294806 (inv!61289 (tag!8717 (h!52060 (t!349381 rules!4024)))) (inv!61292 (transformation!7853 (h!52060 (t!349381 rules!4024)))) e!2625078))))

(declare-fun b!4227769 () Bool)

(declare-fun e!2625077 () Bool)

(declare-fun tp!1294804 () Bool)

(assert (=> b!4227769 (= e!2625077 (and e!2625076 tp!1294804))))

(assert (=> b!4227692 (= tp!1294767 e!2625077)))

(assert (= b!4227770 b!4227771))

(assert (= b!4227769 b!4227770))

(assert (= (and b!4227692 (is-Cons!46640 (t!349381 rules!4024))) b!4227769))

(declare-fun m!4815099 () Bool)

(assert (=> b!4227770 m!4815099))

(declare-fun m!4815101 () Bool)

(assert (=> b!4227770 m!4815101))

(declare-fun b!4227782 () Bool)

(declare-fun e!2625081 () Bool)

(declare-fun tp_is_empty!22455 () Bool)

(assert (=> b!4227782 (= e!2625081 tp_is_empty!22455)))

(declare-fun b!4227785 () Bool)

(declare-fun tp!1294821 () Bool)

(declare-fun tp!1294818 () Bool)

(assert (=> b!4227785 (= e!2625081 (and tp!1294821 tp!1294818))))

(declare-fun b!4227784 () Bool)

(declare-fun tp!1294819 () Bool)

(assert (=> b!4227784 (= e!2625081 tp!1294819)))

(assert (=> b!4227687 (= tp!1294772 e!2625081)))

(declare-fun b!4227783 () Bool)

(declare-fun tp!1294820 () Bool)

(declare-fun tp!1294817 () Bool)

(assert (=> b!4227783 (= e!2625081 (and tp!1294820 tp!1294817))))

(assert (= (and b!4227687 (is-ElementMatch!12758 (regex!7853 r!4367))) b!4227782))

(assert (= (and b!4227687 (is-Concat!20842 (regex!7853 r!4367))) b!4227783))

(assert (= (and b!4227687 (is-Star!12758 (regex!7853 r!4367))) b!4227784))

(assert (= (and b!4227687 (is-Union!12758 (regex!7853 r!4367))) b!4227785))

(declare-fun b!4227786 () Bool)

(declare-fun e!2625082 () Bool)

(assert (=> b!4227786 (= e!2625082 tp_is_empty!22455)))

(declare-fun b!4227789 () Bool)

(declare-fun tp!1294826 () Bool)

(declare-fun tp!1294823 () Bool)

(assert (=> b!4227789 (= e!2625082 (and tp!1294826 tp!1294823))))

(declare-fun b!4227788 () Bool)

(declare-fun tp!1294824 () Bool)

(assert (=> b!4227788 (= e!2625082 tp!1294824)))

(assert (=> b!4227689 (= tp!1294770 e!2625082)))

(declare-fun b!4227787 () Bool)

(declare-fun tp!1294825 () Bool)

(declare-fun tp!1294822 () Bool)

(assert (=> b!4227787 (= e!2625082 (and tp!1294825 tp!1294822))))

(assert (= (and b!4227689 (is-ElementMatch!12758 (regex!7853 (h!52060 rules!4024)))) b!4227786))

(assert (= (and b!4227689 (is-Concat!20842 (regex!7853 (h!52060 rules!4024)))) b!4227787))

(assert (= (and b!4227689 (is-Star!12758 (regex!7853 (h!52060 rules!4024)))) b!4227788))

(assert (= (and b!4227689 (is-Union!12758 (regex!7853 (h!52060 rules!4024)))) b!4227789))

(push 1)

(assert (not d!1244557))

(assert (not b!4227785))

(assert (not b_next!125453))

(assert (not b_next!125437))

(assert b_and!333971)

(assert (not b!4227747))

(assert (not b!4227787))

(assert (not b!4227783))

(assert (not b!4227759))

(assert b_and!333983)

(assert (not d!1244545))

(assert (not b!4227754))

(assert b_and!333965)

(assert (not b!4227737))

(assert (not b!4227753))

(assert (not b_next!125439))

(assert (not b!4227770))

(assert (not b_next!125435))

(assert (not b!4227748))

(assert (not b_next!125451))

(assert b_and!333981)

(assert (not b_next!125441))

(assert b_and!333967)

(assert (not d!1244563))

(assert (not b!4227784))

(assert (not d!1244561))

(assert (not b!4227789))

(assert tp_is_empty!22455)

(assert (not b!4227769))

(assert b_and!333969)

(assert (not d!1244551))

(assert (not b!4227788))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!125453))

(assert b_and!333965)

(assert (not b_next!125437))

(assert b_and!333971)

(assert (not b_next!125439))

(assert (not b_next!125435))

(assert (not b_next!125451))

(assert b_and!333967)

(assert b_and!333983)

(assert b_and!333969)

(assert b_and!333981)

(assert (not b_next!125441))

(check-sat)

(pop 1)

