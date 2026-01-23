; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389608 () Bool)

(assert start!389608)

(declare-fun b!4110773 () Bool)

(declare-fun b_free!115595 () Bool)

(declare-fun b_next!116299 () Bool)

(assert (=> b!4110773 (= b_free!115595 (not b_next!116299))))

(declare-fun tp!1249644 () Bool)

(declare-fun b_and!317481 () Bool)

(assert (=> b!4110773 (= tp!1249644 b_and!317481)))

(declare-fun b_free!115597 () Bool)

(declare-fun b_next!116301 () Bool)

(assert (=> b!4110773 (= b_free!115597 (not b_next!116301))))

(declare-fun tp!1249643 () Bool)

(declare-fun b_and!317483 () Bool)

(assert (=> b!4110773 (= tp!1249643 b_and!317483)))

(declare-fun b!4110771 () Bool)

(declare-fun b_free!115599 () Bool)

(declare-fun b_next!116303 () Bool)

(assert (=> b!4110771 (= b_free!115599 (not b_next!116303))))

(declare-fun tp!1249647 () Bool)

(declare-fun b_and!317485 () Bool)

(assert (=> b!4110771 (= tp!1249647 b_and!317485)))

(declare-fun b_free!115601 () Bool)

(declare-fun b_next!116305 () Bool)

(assert (=> b!4110771 (= b_free!115601 (not b_next!116305))))

(declare-fun tp!1249645 () Bool)

(declare-fun b_and!317487 () Bool)

(assert (=> b!4110771 (= tp!1249645 b_and!317487)))

(declare-fun b!4110765 () Bool)

(declare-fun b_free!115603 () Bool)

(declare-fun b_next!116307 () Bool)

(assert (=> b!4110765 (= b_free!115603 (not b_next!116307))))

(declare-fun tp!1249646 () Bool)

(declare-fun b_and!317489 () Bool)

(assert (=> b!4110765 (= tp!1249646 b_and!317489)))

(declare-fun b_free!115605 () Bool)

(declare-fun b_next!116309 () Bool)

(assert (=> b!4110765 (= b_free!115605 (not b_next!116309))))

(declare-fun tp!1249652 () Bool)

(declare-fun b_and!317491 () Bool)

(assert (=> b!4110765 (= tp!1249652 b_and!317491)))

(declare-fun b!4110764 () Bool)

(declare-fun e!2550512 () Bool)

(declare-fun e!2550505 () Bool)

(assert (=> b!4110764 (= e!2550512 e!2550505)))

(declare-fun res!1679642 () Bool)

(assert (=> b!4110764 (=> (not res!1679642) (not e!2550505))))

(declare-datatypes ((List!44400 0))(
  ( (Nil!44276) (Cons!44276 (h!49696 (_ BitVec 16)) (t!340151 List!44400)) )
))
(declare-datatypes ((TokenValue!7430 0))(
  ( (FloatLiteralValue!14860 (text!52455 List!44400)) (TokenValueExt!7429 (__x!27077 Int)) (Broken!37150 (value!225773 List!44400)) (Object!7553) (End!7430) (Def!7430) (Underscore!7430) (Match!7430) (Else!7430) (Error!7430) (Case!7430) (If!7430) (Extends!7430) (Abstract!7430) (Class!7430) (Val!7430) (DelimiterValue!14860 (del!7490 List!44400)) (KeywordValue!7436 (value!225774 List!44400)) (CommentValue!14860 (value!225775 List!44400)) (WhitespaceValue!14860 (value!225776 List!44400)) (IndentationValue!7430 (value!225777 List!44400)) (String!50899) (Int32!7430) (Broken!37151 (value!225778 List!44400)) (Boolean!7431) (Unit!63706) (OperatorValue!7433 (op!7490 List!44400)) (IdentifierValue!14860 (value!225779 List!44400)) (IdentifierValue!14861 (value!225780 List!44400)) (WhitespaceValue!14861 (value!225781 List!44400)) (True!14860) (False!14860) (Broken!37152 (value!225782 List!44400)) (Broken!37153 (value!225783 List!44400)) (True!14861) (RightBrace!7430) (RightBracket!7430) (Colon!7430) (Null!7430) (Comma!7430) (LeftBracket!7430) (False!14861) (LeftBrace!7430) (ImaginaryLiteralValue!7430 (text!52456 List!44400)) (StringLiteralValue!22290 (value!225784 List!44400)) (EOFValue!7430 (value!225785 List!44400)) (IdentValue!7430 (value!225786 List!44400)) (DelimiterValue!14861 (value!225787 List!44400)) (DedentValue!7430 (value!225788 List!44400)) (NewLineValue!7430 (value!225789 List!44400)) (IntegerValue!22290 (value!225790 (_ BitVec 32)) (text!52457 List!44400)) (IntegerValue!22291 (value!225791 Int) (text!52458 List!44400)) (Times!7430) (Or!7430) (Equal!7430) (Minus!7430) (Broken!37154 (value!225792 List!44400)) (And!7430) (Div!7430) (LessEqual!7430) (Mod!7430) (Concat!19535) (Not!7430) (Plus!7430) (SpaceValue!7430 (value!225793 List!44400)) (IntegerValue!22292 (value!225794 Int) (text!52459 List!44400)) (StringLiteralValue!22291 (text!52460 List!44400)) (FloatLiteralValue!14861 (text!52461 List!44400)) (BytesLiteralValue!7430 (value!225795 List!44400)) (CommentValue!14861 (value!225796 List!44400)) (StringLiteralValue!22292 (value!225797 List!44400)) (ErrorTokenValue!7430 (msg!7491 List!44400)) )
))
(declare-datatypes ((C!24396 0))(
  ( (C!24397 (val!14308 Int)) )
))
(declare-datatypes ((List!44401 0))(
  ( (Nil!44277) (Cons!44277 (h!49697 C!24396) (t!340152 List!44401)) )
))
(declare-datatypes ((IArray!26827 0))(
  ( (IArray!26828 (innerList!13471 List!44401)) )
))
(declare-datatypes ((Conc!13411 0))(
  ( (Node!13411 (left!33201 Conc!13411) (right!33531 Conc!13411) (csize!27052 Int) (cheight!13622 Int)) (Leaf!20726 (xs!16717 IArray!26827) (csize!27053 Int)) (Empty!13411) )
))
(declare-datatypes ((BalanceConc!26416 0))(
  ( (BalanceConc!26417 (c!706852 Conc!13411)) )
))
(declare-datatypes ((Regex!12105 0))(
  ( (ElementMatch!12105 (c!706853 C!24396)) (Concat!19536 (regOne!24722 Regex!12105) (regTwo!24722 Regex!12105)) (EmptyExpr!12105) (Star!12105 (reg!12434 Regex!12105)) (EmptyLang!12105) (Union!12105 (regOne!24723 Regex!12105) (regTwo!24723 Regex!12105)) )
))
(declare-datatypes ((String!50900 0))(
  ( (String!50901 (value!225798 String)) )
))
(declare-datatypes ((TokenValueInjection!14288 0))(
  ( (TokenValueInjection!14289 (toValue!9832 Int) (toChars!9691 Int)) )
))
(declare-datatypes ((Rule!14200 0))(
  ( (Rule!14201 (regex!7200 Regex!12105) (tag!8060 String!50900) (isSeparator!7200 Bool) (transformation!7200 TokenValueInjection!14288)) )
))
(declare-fun e1!99 () Rule!14200)

(declare-datatypes ((LexerInterface!6789 0))(
  ( (LexerInterfaceExt!6786 (__x!27078 Int)) (Lexer!6787) )
))
(declare-fun thiss!26878 () LexerInterface!6789)

(declare-datatypes ((List!44402 0))(
  ( (Nil!44278) (Cons!44278 (h!49698 Rule!14200) (t!340153 List!44402)) )
))
(declare-fun lt!1468213 () List!44402)

(declare-datatypes ((List!44403 0))(
  ( (Nil!44279) (Cons!44279 (h!49699 String!50900) (t!340154 List!44403)) )
))
(declare-fun noDuplicateTag!2877 (LexerInterface!6789 List!44402 List!44403) Bool)

(assert (=> b!4110764 (= res!1679642 (noDuplicateTag!2877 thiss!26878 (Cons!44278 e1!99 lt!1468213) Nil!44279))))

(declare-fun e2!99 () Rule!14200)

(declare-fun l!6462 () List!44402)

(assert (=> b!4110764 (= lt!1468213 (Cons!44278 e2!99 l!6462))))

(declare-fun e!2550504 () Bool)

(assert (=> b!4110765 (= e!2550504 (and tp!1249646 tp!1249652))))

(declare-fun e!2550511 () Bool)

(declare-fun tp!1249650 () Bool)

(declare-fun e!2550508 () Bool)

(declare-fun b!4110766 () Bool)

(declare-fun inv!58909 (String!50900) Bool)

(declare-fun inv!58911 (TokenValueInjection!14288) Bool)

(assert (=> b!4110766 (= e!2550508 (and tp!1249650 (inv!58909 (tag!8060 e2!99)) (inv!58911 (transformation!7200 e2!99)) e!2550511))))

(declare-fun b!4110767 () Bool)

(declare-fun e!2550515 () Bool)

(assert (=> b!4110767 (= e!2550505 e!2550515)))

(declare-fun res!1679643 () Bool)

(assert (=> b!4110767 (=> (not res!1679643) (not e!2550515))))

(declare-fun lt!1468212 () List!44403)

(assert (=> b!4110767 (= res!1679643 (noDuplicateTag!2877 thiss!26878 lt!1468213 lt!1468212))))

(assert (=> b!4110767 (= lt!1468212 (Cons!44279 (tag!8060 e1!99) Nil!44279))))

(declare-fun e!2550506 () Bool)

(declare-fun b!4110768 () Bool)

(declare-fun tp!1249651 () Bool)

(assert (=> b!4110768 (= e!2550506 (and tp!1249651 (inv!58909 (tag!8060 (h!49698 l!6462))) (inv!58911 (transformation!7200 (h!49698 l!6462))) e!2550504))))

(declare-fun b!4110769 () Bool)

(declare-fun e!2550507 () Bool)

(declare-fun tp!1249648 () Bool)

(assert (=> b!4110769 (= e!2550507 (and e!2550506 tp!1249648))))

(declare-fun res!1679641 () Bool)

(assert (=> start!389608 (=> (not res!1679641) (not e!2550512))))

(get-info :version)

(assert (=> start!389608 (= res!1679641 ((_ is Lexer!6787) thiss!26878))))

(assert (=> start!389608 e!2550512))

(assert (=> start!389608 true))

(declare-fun e!2550503 () Bool)

(assert (=> start!389608 e!2550503))

(assert (=> start!389608 e!2550508))

(assert (=> start!389608 e!2550507))

(declare-fun b!4110770 () Bool)

(assert (=> b!4110770 (= e!2550515 (not (noDuplicateTag!2877 thiss!26878 l!6462 (Cons!44279 (tag!8060 e2!99) lt!1468212))))))

(declare-fun e!2550513 () Bool)

(assert (=> b!4110771 (= e!2550513 (and tp!1249647 tp!1249645))))

(declare-fun b!4110772 () Bool)

(declare-fun tp!1249649 () Bool)

(assert (=> b!4110772 (= e!2550503 (and tp!1249649 (inv!58909 (tag!8060 e1!99)) (inv!58911 (transformation!7200 e1!99)) e!2550513))))

(assert (=> b!4110773 (= e!2550511 (and tp!1249644 tp!1249643))))

(assert (= (and start!389608 res!1679641) b!4110764))

(assert (= (and b!4110764 res!1679642) b!4110767))

(assert (= (and b!4110767 res!1679643) b!4110770))

(assert (= b!4110772 b!4110771))

(assert (= start!389608 b!4110772))

(assert (= b!4110766 b!4110773))

(assert (= start!389608 b!4110766))

(assert (= b!4110768 b!4110765))

(assert (= b!4110769 b!4110768))

(assert (= (and start!389608 ((_ is Cons!44278) l!6462)) b!4110769))

(declare-fun m!4712963 () Bool)

(assert (=> b!4110768 m!4712963))

(declare-fun m!4712965 () Bool)

(assert (=> b!4110768 m!4712965))

(declare-fun m!4712967 () Bool)

(assert (=> b!4110770 m!4712967))

(declare-fun m!4712969 () Bool)

(assert (=> b!4110764 m!4712969))

(declare-fun m!4712971 () Bool)

(assert (=> b!4110766 m!4712971))

(declare-fun m!4712973 () Bool)

(assert (=> b!4110766 m!4712973))

(declare-fun m!4712975 () Bool)

(assert (=> b!4110772 m!4712975))

(declare-fun m!4712977 () Bool)

(assert (=> b!4110772 m!4712977))

(declare-fun m!4712979 () Bool)

(assert (=> b!4110767 m!4712979))

(check-sat b_and!317485 (not b_next!116309) (not b!4110768) (not b_next!116305) b_and!317491 (not b_next!116307) (not b!4110767) (not b_next!116301) (not b!4110769) b_and!317489 b_and!317487 (not b_next!116303) b_and!317483 (not b!4110766) (not b_next!116299) (not b!4110764) (not b!4110770) b_and!317481 (not b!4110772))
(check-sat b_and!317485 (not b_next!116309) (not b_next!116299) (not b_next!116305) b_and!317491 (not b_next!116307) (not b_next!116301) b_and!317481 b_and!317489 b_and!317487 (not b_next!116303) b_and!317483)
(get-model)

(declare-fun d!1219605 () Bool)

(assert (=> d!1219605 (= (inv!58909 (tag!8060 (h!49698 l!6462))) (= (mod (str.len (value!225798 (tag!8060 (h!49698 l!6462)))) 2) 0))))

(assert (=> b!4110768 d!1219605))

(declare-fun d!1219609 () Bool)

(declare-fun res!1679657 () Bool)

(declare-fun e!2550521 () Bool)

(assert (=> d!1219609 (=> (not res!1679657) (not e!2550521))))

(declare-fun semiInverseModEq!3102 (Int Int) Bool)

(assert (=> d!1219609 (= res!1679657 (semiInverseModEq!3102 (toChars!9691 (transformation!7200 (h!49698 l!6462))) (toValue!9832 (transformation!7200 (h!49698 l!6462)))))))

(assert (=> d!1219609 (= (inv!58911 (transformation!7200 (h!49698 l!6462))) e!2550521)))

(declare-fun b!4110779 () Bool)

(declare-fun equivClasses!3001 (Int Int) Bool)

(assert (=> b!4110779 (= e!2550521 (equivClasses!3001 (toChars!9691 (transformation!7200 (h!49698 l!6462))) (toValue!9832 (transformation!7200 (h!49698 l!6462)))))))

(assert (= (and d!1219609 res!1679657) b!4110779))

(declare-fun m!4712985 () Bool)

(assert (=> d!1219609 m!4712985))

(declare-fun m!4712987 () Bool)

(assert (=> b!4110779 m!4712987))

(assert (=> b!4110768 d!1219609))

(declare-fun d!1219613 () Bool)

(assert (=> d!1219613 (= (inv!58909 (tag!8060 e1!99)) (= (mod (str.len (value!225798 (tag!8060 e1!99))) 2) 0))))

(assert (=> b!4110772 d!1219613))

(declare-fun d!1219615 () Bool)

(declare-fun res!1679658 () Bool)

(declare-fun e!2550522 () Bool)

(assert (=> d!1219615 (=> (not res!1679658) (not e!2550522))))

(assert (=> d!1219615 (= res!1679658 (semiInverseModEq!3102 (toChars!9691 (transformation!7200 e1!99)) (toValue!9832 (transformation!7200 e1!99))))))

(assert (=> d!1219615 (= (inv!58911 (transformation!7200 e1!99)) e!2550522)))

(declare-fun b!4110780 () Bool)

(assert (=> b!4110780 (= e!2550522 (equivClasses!3001 (toChars!9691 (transformation!7200 e1!99)) (toValue!9832 (transformation!7200 e1!99))))))

(assert (= (and d!1219615 res!1679658) b!4110780))

(declare-fun m!4712989 () Bool)

(assert (=> d!1219615 m!4712989))

(declare-fun m!4712991 () Bool)

(assert (=> b!4110780 m!4712991))

(assert (=> b!4110772 d!1219615))

(declare-fun d!1219617 () Bool)

(declare-fun res!1679675 () Bool)

(declare-fun e!2550541 () Bool)

(assert (=> d!1219617 (=> res!1679675 e!2550541)))

(assert (=> d!1219617 (= res!1679675 ((_ is Nil!44278) lt!1468213))))

(assert (=> d!1219617 (= (noDuplicateTag!2877 thiss!26878 lt!1468213 lt!1468212) e!2550541)))

(declare-fun b!4110803 () Bool)

(declare-fun e!2550542 () Bool)

(assert (=> b!4110803 (= e!2550541 e!2550542)))

(declare-fun res!1679676 () Bool)

(assert (=> b!4110803 (=> (not res!1679676) (not e!2550542))))

(declare-fun contains!8876 (List!44403 String!50900) Bool)

(assert (=> b!4110803 (= res!1679676 (not (contains!8876 lt!1468212 (tag!8060 (h!49698 lt!1468213)))))))

(declare-fun b!4110804 () Bool)

(assert (=> b!4110804 (= e!2550542 (noDuplicateTag!2877 thiss!26878 (t!340153 lt!1468213) (Cons!44279 (tag!8060 (h!49698 lt!1468213)) lt!1468212)))))

(assert (= (and d!1219617 (not res!1679675)) b!4110803))

(assert (= (and b!4110803 res!1679676) b!4110804))

(declare-fun m!4713013 () Bool)

(assert (=> b!4110803 m!4713013))

(declare-fun m!4713015 () Bool)

(assert (=> b!4110804 m!4713015))

(assert (=> b!4110767 d!1219617))

(declare-fun d!1219631 () Bool)

(assert (=> d!1219631 (= (inv!58909 (tag!8060 e2!99)) (= (mod (str.len (value!225798 (tag!8060 e2!99))) 2) 0))))

(assert (=> b!4110766 d!1219631))

(declare-fun d!1219633 () Bool)

(declare-fun res!1679677 () Bool)

(declare-fun e!2550543 () Bool)

(assert (=> d!1219633 (=> (not res!1679677) (not e!2550543))))

(assert (=> d!1219633 (= res!1679677 (semiInverseModEq!3102 (toChars!9691 (transformation!7200 e2!99)) (toValue!9832 (transformation!7200 e2!99))))))

(assert (=> d!1219633 (= (inv!58911 (transformation!7200 e2!99)) e!2550543)))

(declare-fun b!4110809 () Bool)

(assert (=> b!4110809 (= e!2550543 (equivClasses!3001 (toChars!9691 (transformation!7200 e2!99)) (toValue!9832 (transformation!7200 e2!99))))))

(assert (= (and d!1219633 res!1679677) b!4110809))

(declare-fun m!4713017 () Bool)

(assert (=> d!1219633 m!4713017))

(declare-fun m!4713019 () Bool)

(assert (=> b!4110809 m!4713019))

(assert (=> b!4110766 d!1219633))

(declare-fun d!1219635 () Bool)

(declare-fun res!1679678 () Bool)

(declare-fun e!2550544 () Bool)

(assert (=> d!1219635 (=> res!1679678 e!2550544)))

(assert (=> d!1219635 (= res!1679678 ((_ is Nil!44278) l!6462))))

(assert (=> d!1219635 (= (noDuplicateTag!2877 thiss!26878 l!6462 (Cons!44279 (tag!8060 e2!99) lt!1468212)) e!2550544)))

(declare-fun b!4110810 () Bool)

(declare-fun e!2550545 () Bool)

(assert (=> b!4110810 (= e!2550544 e!2550545)))

(declare-fun res!1679679 () Bool)

(assert (=> b!4110810 (=> (not res!1679679) (not e!2550545))))

(assert (=> b!4110810 (= res!1679679 (not (contains!8876 (Cons!44279 (tag!8060 e2!99) lt!1468212) (tag!8060 (h!49698 l!6462)))))))

(declare-fun b!4110811 () Bool)

(assert (=> b!4110811 (= e!2550545 (noDuplicateTag!2877 thiss!26878 (t!340153 l!6462) (Cons!44279 (tag!8060 (h!49698 l!6462)) (Cons!44279 (tag!8060 e2!99) lt!1468212))))))

(assert (= (and d!1219635 (not res!1679678)) b!4110810))

(assert (= (and b!4110810 res!1679679) b!4110811))

(declare-fun m!4713021 () Bool)

(assert (=> b!4110810 m!4713021))

(declare-fun m!4713023 () Bool)

(assert (=> b!4110811 m!4713023))

(assert (=> b!4110770 d!1219635))

(declare-fun d!1219637 () Bool)

(declare-fun res!1679680 () Bool)

(declare-fun e!2550549 () Bool)

(assert (=> d!1219637 (=> res!1679680 e!2550549)))

(assert (=> d!1219637 (= res!1679680 ((_ is Nil!44278) (Cons!44278 e1!99 lt!1468213)))))

(assert (=> d!1219637 (= (noDuplicateTag!2877 thiss!26878 (Cons!44278 e1!99 lt!1468213) Nil!44279) e!2550549)))

(declare-fun b!4110820 () Bool)

(declare-fun e!2550550 () Bool)

(assert (=> b!4110820 (= e!2550549 e!2550550)))

(declare-fun res!1679681 () Bool)

(assert (=> b!4110820 (=> (not res!1679681) (not e!2550550))))

(assert (=> b!4110820 (= res!1679681 (not (contains!8876 Nil!44279 (tag!8060 (h!49698 (Cons!44278 e1!99 lt!1468213))))))))

(declare-fun b!4110821 () Bool)

(assert (=> b!4110821 (= e!2550550 (noDuplicateTag!2877 thiss!26878 (t!340153 (Cons!44278 e1!99 lt!1468213)) (Cons!44279 (tag!8060 (h!49698 (Cons!44278 e1!99 lt!1468213))) Nil!44279)))))

(assert (= (and d!1219637 (not res!1679680)) b!4110820))

(assert (= (and b!4110820 res!1679681) b!4110821))

(declare-fun m!4713025 () Bool)

(assert (=> b!4110820 m!4713025))

(declare-fun m!4713027 () Bool)

(assert (=> b!4110821 m!4713027))

(assert (=> b!4110764 d!1219637))

(declare-fun b!4110847 () Bool)

(declare-fun b_free!115611 () Bool)

(declare-fun b_next!116315 () Bool)

(assert (=> b!4110847 (= b_free!115611 (not b_next!116315))))

(declare-fun tp!1249700 () Bool)

(declare-fun b_and!317497 () Bool)

(assert (=> b!4110847 (= tp!1249700 b_and!317497)))

(declare-fun b_free!115613 () Bool)

(declare-fun b_next!116317 () Bool)

(assert (=> b!4110847 (= b_free!115613 (not b_next!116317))))

(declare-fun tp!1249698 () Bool)

(declare-fun b_and!317499 () Bool)

(assert (=> b!4110847 (= tp!1249698 b_and!317499)))

(declare-fun e!2550571 () Bool)

(assert (=> b!4110847 (= e!2550571 (and tp!1249700 tp!1249698))))

(declare-fun b!4110846 () Bool)

(declare-fun e!2550574 () Bool)

(declare-fun tp!1249701 () Bool)

(assert (=> b!4110846 (= e!2550574 (and tp!1249701 (inv!58909 (tag!8060 (h!49698 (t!340153 l!6462)))) (inv!58911 (transformation!7200 (h!49698 (t!340153 l!6462)))) e!2550571))))

(declare-fun b!4110845 () Bool)

(declare-fun e!2550573 () Bool)

(declare-fun tp!1249699 () Bool)

(assert (=> b!4110845 (= e!2550573 (and e!2550574 tp!1249699))))

(assert (=> b!4110769 (= tp!1249648 e!2550573)))

(assert (= b!4110846 b!4110847))

(assert (= b!4110845 b!4110846))

(assert (= (and b!4110769 ((_ is Cons!44278) (t!340153 l!6462))) b!4110845))

(declare-fun m!4713033 () Bool)

(assert (=> b!4110846 m!4713033))

(declare-fun m!4713035 () Bool)

(assert (=> b!4110846 m!4713035))

(declare-fun b!4110858 () Bool)

(declare-fun e!2550577 () Bool)

(declare-fun tp_is_empty!21161 () Bool)

(assert (=> b!4110858 (= e!2550577 tp_is_empty!21161)))

(assert (=> b!4110768 (= tp!1249651 e!2550577)))

(declare-fun b!4110859 () Bool)

(declare-fun tp!1249715 () Bool)

(declare-fun tp!1249713 () Bool)

(assert (=> b!4110859 (= e!2550577 (and tp!1249715 tp!1249713))))

(declare-fun b!4110860 () Bool)

(declare-fun tp!1249712 () Bool)

(assert (=> b!4110860 (= e!2550577 tp!1249712)))

(declare-fun b!4110861 () Bool)

(declare-fun tp!1249716 () Bool)

(declare-fun tp!1249714 () Bool)

(assert (=> b!4110861 (= e!2550577 (and tp!1249716 tp!1249714))))

(assert (= (and b!4110768 ((_ is ElementMatch!12105) (regex!7200 (h!49698 l!6462)))) b!4110858))

(assert (= (and b!4110768 ((_ is Concat!19536) (regex!7200 (h!49698 l!6462)))) b!4110859))

(assert (= (and b!4110768 ((_ is Star!12105) (regex!7200 (h!49698 l!6462)))) b!4110860))

(assert (= (and b!4110768 ((_ is Union!12105) (regex!7200 (h!49698 l!6462)))) b!4110861))

(declare-fun b!4110862 () Bool)

(declare-fun e!2550578 () Bool)

(assert (=> b!4110862 (= e!2550578 tp_is_empty!21161)))

(assert (=> b!4110772 (= tp!1249649 e!2550578)))

(declare-fun b!4110863 () Bool)

(declare-fun tp!1249720 () Bool)

(declare-fun tp!1249718 () Bool)

(assert (=> b!4110863 (= e!2550578 (and tp!1249720 tp!1249718))))

(declare-fun b!4110864 () Bool)

(declare-fun tp!1249717 () Bool)

(assert (=> b!4110864 (= e!2550578 tp!1249717)))

(declare-fun b!4110865 () Bool)

(declare-fun tp!1249721 () Bool)

(declare-fun tp!1249719 () Bool)

(assert (=> b!4110865 (= e!2550578 (and tp!1249721 tp!1249719))))

(assert (= (and b!4110772 ((_ is ElementMatch!12105) (regex!7200 e1!99))) b!4110862))

(assert (= (and b!4110772 ((_ is Concat!19536) (regex!7200 e1!99))) b!4110863))

(assert (= (and b!4110772 ((_ is Star!12105) (regex!7200 e1!99))) b!4110864))

(assert (= (and b!4110772 ((_ is Union!12105) (regex!7200 e1!99))) b!4110865))

(declare-fun b!4110866 () Bool)

(declare-fun e!2550579 () Bool)

(assert (=> b!4110866 (= e!2550579 tp_is_empty!21161)))

(assert (=> b!4110766 (= tp!1249650 e!2550579)))

(declare-fun b!4110867 () Bool)

(declare-fun tp!1249725 () Bool)

(declare-fun tp!1249723 () Bool)

(assert (=> b!4110867 (= e!2550579 (and tp!1249725 tp!1249723))))

(declare-fun b!4110868 () Bool)

(declare-fun tp!1249722 () Bool)

(assert (=> b!4110868 (= e!2550579 tp!1249722)))

(declare-fun b!4110869 () Bool)

(declare-fun tp!1249726 () Bool)

(declare-fun tp!1249724 () Bool)

(assert (=> b!4110869 (= e!2550579 (and tp!1249726 tp!1249724))))

(assert (= (and b!4110766 ((_ is ElementMatch!12105) (regex!7200 e2!99))) b!4110866))

(assert (= (and b!4110766 ((_ is Concat!19536) (regex!7200 e2!99))) b!4110867))

(assert (= (and b!4110766 ((_ is Star!12105) (regex!7200 e2!99))) b!4110868))

(assert (= (and b!4110766 ((_ is Union!12105) (regex!7200 e2!99))) b!4110869))

(check-sat (not d!1219615) b_and!317497 (not b_next!116299) (not b!4110864) (not b_next!116305) (not b_next!116307) (not b!4110811) (not d!1219633) (not b!4110803) (not b!4110867) (not b_next!116315) b_and!317481 b_and!317487 (not b_next!116303) (not d!1219609) b_and!317499 (not b!4110780) (not b!4110820) b_and!317485 (not b!4110868) (not b_next!116309) (not b!4110846) (not b!4110865) (not b!4110810) (not b!4110804) b_and!317491 tp_is_empty!21161 (not b!4110859) (not b!4110821) (not b!4110779) (not b!4110861) (not b!4110869) (not b!4110809) (not b!4110863) (not b_next!116301) (not b_next!116317) (not b!4110860) b_and!317489 b_and!317483 (not b!4110845))
(check-sat b_and!317499 b_and!317485 (not b_next!116309) b_and!317497 (not b_next!116299) (not b_next!116305) b_and!317491 (not b_next!116307) (not b_next!116301) (not b_next!116315) b_and!317481 b_and!317487 (not b_next!116303) b_and!317483 (not b_next!116317) b_and!317489)
