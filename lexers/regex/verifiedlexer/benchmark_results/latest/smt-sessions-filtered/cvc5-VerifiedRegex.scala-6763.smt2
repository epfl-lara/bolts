; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!353058 () Bool)

(assert start!353058)

(declare-fun b!3760614 () Bool)

(declare-fun b_free!100681 () Bool)

(declare-fun b_next!101385 () Bool)

(assert (=> b!3760614 (= b_free!100681 (not b_next!101385))))

(declare-fun tp!1149093 () Bool)

(declare-fun b_and!279355 () Bool)

(assert (=> b!3760614 (= tp!1149093 b_and!279355)))

(declare-fun b_free!100683 () Bool)

(declare-fun b_next!101387 () Bool)

(assert (=> b!3760614 (= b_free!100683 (not b_next!101387))))

(declare-fun tp!1149087 () Bool)

(declare-fun b_and!279357 () Bool)

(assert (=> b!3760614 (= tp!1149087 b_and!279357)))

(declare-fun b!3760616 () Bool)

(declare-fun b_free!100685 () Bool)

(declare-fun b_next!101389 () Bool)

(assert (=> b!3760616 (= b_free!100685 (not b_next!101389))))

(declare-fun tp!1149086 () Bool)

(declare-fun b_and!279359 () Bool)

(assert (=> b!3760616 (= tp!1149086 b_and!279359)))

(declare-fun b_free!100687 () Bool)

(declare-fun b_next!101391 () Bool)

(assert (=> b!3760616 (= b_free!100687 (not b_next!101391))))

(declare-fun tp!1149094 () Bool)

(declare-fun b_and!279361 () Bool)

(assert (=> b!3760616 (= tp!1149094 b_and!279361)))

(declare-fun e!2325808 () Bool)

(declare-datatypes ((List!40212 0))(
  ( (Nil!40088) (Cons!40088 (h!45508 (_ BitVec 16)) (t!303813 List!40212)) )
))
(declare-datatypes ((TokenValue!6373 0))(
  ( (FloatLiteralValue!12746 (text!45056 List!40212)) (TokenValueExt!6372 (__x!24963 Int)) (Broken!31865 (value!195640 List!40212)) (Object!6496) (End!6373) (Def!6373) (Underscore!6373) (Match!6373) (Else!6373) (Error!6373) (Case!6373) (If!6373) (Extends!6373) (Abstract!6373) (Class!6373) (Val!6373) (DelimiterValue!12746 (del!6433 List!40212)) (KeywordValue!6379 (value!195641 List!40212)) (CommentValue!12746 (value!195642 List!40212)) (WhitespaceValue!12746 (value!195643 List!40212)) (IndentationValue!6373 (value!195644 List!40212)) (String!45524) (Int32!6373) (Broken!31866 (value!195645 List!40212)) (Boolean!6374) (Unit!57812) (OperatorValue!6376 (op!6433 List!40212)) (IdentifierValue!12746 (value!195646 List!40212)) (IdentifierValue!12747 (value!195647 List!40212)) (WhitespaceValue!12747 (value!195648 List!40212)) (True!12746) (False!12746) (Broken!31867 (value!195649 List!40212)) (Broken!31868 (value!195650 List!40212)) (True!12747) (RightBrace!6373) (RightBracket!6373) (Colon!6373) (Null!6373) (Comma!6373) (LeftBracket!6373) (False!12747) (LeftBrace!6373) (ImaginaryLiteralValue!6373 (text!45057 List!40212)) (StringLiteralValue!19119 (value!195651 List!40212)) (EOFValue!6373 (value!195652 List!40212)) (IdentValue!6373 (value!195653 List!40212)) (DelimiterValue!12747 (value!195654 List!40212)) (DedentValue!6373 (value!195655 List!40212)) (NewLineValue!6373 (value!195656 List!40212)) (IntegerValue!19119 (value!195657 (_ BitVec 32)) (text!45058 List!40212)) (IntegerValue!19120 (value!195658 Int) (text!45059 List!40212)) (Times!6373) (Or!6373) (Equal!6373) (Minus!6373) (Broken!31869 (value!195659 List!40212)) (And!6373) (Div!6373) (LessEqual!6373) (Mod!6373) (Concat!17421) (Not!6373) (Plus!6373) (SpaceValue!6373 (value!195660 List!40212)) (IntegerValue!19121 (value!195661 Int) (text!45060 List!40212)) (StringLiteralValue!19120 (text!45061 List!40212)) (FloatLiteralValue!12747 (text!45062 List!40212)) (BytesLiteralValue!6373 (value!195662 List!40212)) (CommentValue!12747 (value!195663 List!40212)) (StringLiteralValue!19121 (value!195664 List!40212)) (ErrorTokenValue!6373 (msg!6434 List!40212)) )
))
(declare-datatypes ((C!22282 0))(
  ( (C!22283 (val!13205 Int)) )
))
(declare-datatypes ((List!40213 0))(
  ( (Nil!40089) (Cons!40089 (h!45509 C!22282) (t!303814 List!40213)) )
))
(declare-datatypes ((IArray!24557 0))(
  ( (IArray!24558 (innerList!12336 List!40213)) )
))
(declare-datatypes ((Conc!12276 0))(
  ( (Node!12276 (left!31039 Conc!12276) (right!31369 Conc!12276) (csize!24782 Int) (cheight!12487 Int)) (Leaf!19040 (xs!15482 IArray!24557) (csize!24783 Int)) (Empty!12276) )
))
(declare-datatypes ((BalanceConc!24146 0))(
  ( (BalanceConc!24147 (c!651178 Conc!12276)) )
))
(declare-datatypes ((Regex!11048 0))(
  ( (ElementMatch!11048 (c!651179 C!22282)) (Concat!17422 (regOne!22608 Regex!11048) (regTwo!22608 Regex!11048)) (EmptyExpr!11048) (Star!11048 (reg!11377 Regex!11048)) (EmptyLang!11048) (Union!11048 (regOne!22609 Regex!11048) (regTwo!22609 Regex!11048)) )
))
(declare-datatypes ((String!45525 0))(
  ( (String!45526 (value!195665 String)) )
))
(declare-datatypes ((TokenValueInjection!12174 0))(
  ( (TokenValueInjection!12175 (toValue!8499 Int) (toChars!8358 Int)) )
))
(declare-datatypes ((Rule!12086 0))(
  ( (Rule!12087 (regex!6143 Regex!11048) (tag!7003 String!45525) (isSeparator!6143 Bool) (transformation!6143 TokenValueInjection!12174)) )
))
(declare-datatypes ((Token!11424 0))(
  ( (Token!11425 (value!195666 TokenValue!6373) (rule!8907 Rule!12086) (size!30171 Int) (originalCharacters!6743 List!40213)) )
))
(declare-datatypes ((List!40214 0))(
  ( (Nil!40090) (Cons!40090 (h!45510 Token!11424) (t!303815 List!40214)) )
))
(declare-fun l!4295 () List!40214)

(declare-fun e!2325804 () Bool)

(declare-fun b!3760609 () Bool)

(declare-fun tp!1149090 () Bool)

(declare-fun inv!21 (TokenValue!6373) Bool)

(assert (=> b!3760609 (= e!2325808 (and (inv!21 (value!195666 (h!45510 l!4295))) e!2325804 tp!1149090))))

(declare-fun e!2325799 () Bool)

(declare-fun b!3760610 () Bool)

(declare-fun acc!415 () List!40213)

(declare-datatypes ((LexerInterface!5732 0))(
  ( (LexerInterfaceExt!5729 (__x!24964 Int)) (Lexer!5730) )
))
(declare-fun thiss!13942 () LexerInterface!5732)

(declare-fun separatorToken!124 () Token!11424)

(declare-fun ++!9940 (List!40213 List!40213) List!40213)

(declare-fun printWithSeparatorTokenList!411 (LexerInterface!5732 List!40214 Token!11424) List!40213)

(assert (=> b!3760610 (= e!2325799 (not (= acc!415 (++!9940 acc!415 (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124)))))))

(declare-fun b!3760611 () Bool)

(declare-fun tp!1149088 () Bool)

(declare-fun e!2325801 () Bool)

(declare-fun e!2325807 () Bool)

(declare-fun inv!53760 (String!45525) Bool)

(declare-fun inv!53763 (TokenValueInjection!12174) Bool)

(assert (=> b!3760611 (= e!2325807 (and tp!1149088 (inv!53760 (tag!7003 (rule!8907 separatorToken!124))) (inv!53763 (transformation!6143 (rule!8907 separatorToken!124))) e!2325801))))

(declare-fun res!1522864 () Bool)

(assert (=> start!353058 (=> (not res!1522864) (not e!2325799))))

(assert (=> start!353058 (= res!1522864 (and (is-Lexer!5730 thiss!13942) (isSeparator!6143 (rule!8907 separatorToken!124)) (not (is-Cons!40090 l!4295))))))

(assert (=> start!353058 e!2325799))

(assert (=> start!353058 true))

(declare-fun e!2325803 () Bool)

(declare-fun inv!53764 (Token!11424) Bool)

(assert (=> start!353058 (and (inv!53764 separatorToken!124) e!2325803)))

(declare-fun e!2325806 () Bool)

(assert (=> start!353058 e!2325806))

(declare-fun e!2325800 () Bool)

(assert (=> start!353058 e!2325800))

(declare-fun b!3760612 () Bool)

(declare-fun tp_is_empty!19091 () Bool)

(declare-fun tp!1149091 () Bool)

(assert (=> b!3760612 (= e!2325800 (and tp_is_empty!19091 tp!1149091))))

(declare-fun b!3760613 () Bool)

(declare-fun tp!1149089 () Bool)

(assert (=> b!3760613 (= e!2325803 (and (inv!21 (value!195666 separatorToken!124)) e!2325807 tp!1149089))))

(assert (=> b!3760614 (= e!2325801 (and tp!1149093 tp!1149087))))

(declare-fun e!2325805 () Bool)

(declare-fun b!3760615 () Bool)

(declare-fun tp!1149092 () Bool)

(assert (=> b!3760615 (= e!2325804 (and tp!1149092 (inv!53760 (tag!7003 (rule!8907 (h!45510 l!4295)))) (inv!53763 (transformation!6143 (rule!8907 (h!45510 l!4295)))) e!2325805))))

(assert (=> b!3760616 (= e!2325805 (and tp!1149086 tp!1149094))))

(declare-fun tp!1149085 () Bool)

(declare-fun b!3760617 () Bool)

(assert (=> b!3760617 (= e!2325806 (and (inv!53764 (h!45510 l!4295)) e!2325808 tp!1149085))))

(assert (= (and start!353058 res!1522864) b!3760610))

(assert (= b!3760611 b!3760614))

(assert (= b!3760613 b!3760611))

(assert (= start!353058 b!3760613))

(assert (= b!3760615 b!3760616))

(assert (= b!3760609 b!3760615))

(assert (= b!3760617 b!3760609))

(assert (= (and start!353058 (is-Cons!40090 l!4295)) b!3760617))

(assert (= (and start!353058 (is-Cons!40089 acc!415)) b!3760612))

(declare-fun m!4254693 () Bool)

(assert (=> b!3760610 m!4254693))

(assert (=> b!3760610 m!4254693))

(declare-fun m!4254695 () Bool)

(assert (=> b!3760610 m!4254695))

(declare-fun m!4254697 () Bool)

(assert (=> b!3760617 m!4254697))

(declare-fun m!4254699 () Bool)

(assert (=> b!3760609 m!4254699))

(declare-fun m!4254701 () Bool)

(assert (=> start!353058 m!4254701))

(declare-fun m!4254703 () Bool)

(assert (=> b!3760613 m!4254703))

(declare-fun m!4254705 () Bool)

(assert (=> b!3760611 m!4254705))

(declare-fun m!4254707 () Bool)

(assert (=> b!3760611 m!4254707))

(declare-fun m!4254709 () Bool)

(assert (=> b!3760615 m!4254709))

(declare-fun m!4254711 () Bool)

(assert (=> b!3760615 m!4254711))

(push 1)

(assert (not b!3760613))

(assert b_and!279361)

(assert (not b_next!101385))

(assert (not b!3760612))

(assert (not b!3760609))

(assert (not b!3760617))

(assert (not b!3760611))

(assert (not b_next!101389))

(assert (not start!353058))

(assert (not b_next!101391))

(assert (not b!3760615))

(assert b_and!279359)

(assert (not b_next!101387))

(assert b_and!279357)

(assert b_and!279355)

(assert (not b!3760610))

(assert tp_is_empty!19091)

(check-sat)

(pop 1)

(push 1)

(assert b_and!279361)

(assert (not b_next!101385))

(assert b_and!279359)

(assert (not b_next!101389))

(assert (not b_next!101391))

(assert (not b_next!101387))

(assert b_and!279357)

(assert b_and!279355)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!2325854 () List!40213)

(declare-fun b!3760653 () Bool)

(assert (=> b!3760653 (= e!2325854 (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124))))

(declare-fun b!3760655 () Bool)

(declare-fun res!1522877 () Bool)

(declare-fun e!2325853 () Bool)

(assert (=> b!3760655 (=> (not res!1522877) (not e!2325853))))

(declare-fun lt!1301720 () List!40213)

(declare-fun size!30173 (List!40213) Int)

(assert (=> b!3760655 (= res!1522877 (= (size!30173 lt!1301720) (+ (size!30173 acc!415) (size!30173 (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124)))))))

(declare-fun b!3760656 () Bool)

(assert (=> b!3760656 (= e!2325853 (or (not (= (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124) Nil!40089)) (= lt!1301720 acc!415)))))

(declare-fun b!3760654 () Bool)

(assert (=> b!3760654 (= e!2325854 (Cons!40089 (h!45509 acc!415) (++!9940 (t!303814 acc!415) (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124))))))

(declare-fun d!1098486 () Bool)

(assert (=> d!1098486 e!2325853))

(declare-fun res!1522876 () Bool)

(assert (=> d!1098486 (=> (not res!1522876) (not e!2325853))))

(declare-fun content!5885 (List!40213) (Set C!22282))

(assert (=> d!1098486 (= res!1522876 (= (content!5885 lt!1301720) (set.union (content!5885 acc!415) (content!5885 (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124)))))))

(assert (=> d!1098486 (= lt!1301720 e!2325854)))

(declare-fun c!651184 () Bool)

(assert (=> d!1098486 (= c!651184 (is-Nil!40089 acc!415))))

(assert (=> d!1098486 (= (++!9940 acc!415 (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124)) lt!1301720)))

(assert (= (and d!1098486 c!651184) b!3760653))

(assert (= (and d!1098486 (not c!651184)) b!3760654))

(assert (= (and d!1098486 res!1522876) b!3760655))

(assert (= (and b!3760655 res!1522877) b!3760656))

(declare-fun m!4254733 () Bool)

(assert (=> b!3760655 m!4254733))

(declare-fun m!4254735 () Bool)

(assert (=> b!3760655 m!4254735))

(assert (=> b!3760655 m!4254693))

(declare-fun m!4254737 () Bool)

(assert (=> b!3760655 m!4254737))

(assert (=> b!3760654 m!4254693))

(declare-fun m!4254739 () Bool)

(assert (=> b!3760654 m!4254739))

(declare-fun m!4254741 () Bool)

(assert (=> d!1098486 m!4254741))

(declare-fun m!4254743 () Bool)

(assert (=> d!1098486 m!4254743))

(assert (=> d!1098486 m!4254693))

(declare-fun m!4254745 () Bool)

(assert (=> d!1098486 m!4254745))

(assert (=> b!3760610 d!1098486))

(declare-fun d!1098488 () Bool)

(declare-fun c!651187 () Bool)

(assert (=> d!1098488 (= c!651187 (is-Cons!40090 l!4295))))

(declare-fun e!2325857 () List!40213)

(assert (=> d!1098488 (= (printWithSeparatorTokenList!411 thiss!13942 l!4295 separatorToken!124) e!2325857)))

(declare-fun b!3760661 () Bool)

(declare-fun list!14799 (BalanceConc!24146) List!40213)

(declare-fun charsOf!3996 (Token!11424) BalanceConc!24146)

(assert (=> b!3760661 (= e!2325857 (++!9940 (++!9940 (list!14799 (charsOf!3996 (h!45510 l!4295))) (list!14799 (charsOf!3996 separatorToken!124))) (printWithSeparatorTokenList!411 thiss!13942 (t!303815 l!4295) separatorToken!124)))))

(declare-fun b!3760662 () Bool)

(assert (=> b!3760662 (= e!2325857 Nil!40089)))

(assert (= (and d!1098488 c!651187) b!3760661))

(assert (= (and d!1098488 (not c!651187)) b!3760662))

(declare-fun m!4254747 () Bool)

(assert (=> b!3760661 m!4254747))

(declare-fun m!4254749 () Bool)

(assert (=> b!3760661 m!4254749))

(declare-fun m!4254751 () Bool)

(assert (=> b!3760661 m!4254751))

(assert (=> b!3760661 m!4254747))

(declare-fun m!4254753 () Bool)

(assert (=> b!3760661 m!4254753))

(declare-fun m!4254755 () Bool)

(assert (=> b!3760661 m!4254755))

(assert (=> b!3760661 m!4254751))

(declare-fun m!4254757 () Bool)

(assert (=> b!3760661 m!4254757))

(assert (=> b!3760661 m!4254753))

(declare-fun m!4254759 () Bool)

(assert (=> b!3760661 m!4254759))

(assert (=> b!3760661 m!4254759))

(assert (=> b!3760661 m!4254749))

(assert (=> b!3760661 m!4254755))

(assert (=> b!3760610 d!1098488))

(declare-fun d!1098492 () Bool)

(assert (=> d!1098492 (= (inv!53760 (tag!7003 (rule!8907 (h!45510 l!4295)))) (= (mod (str.len (value!195665 (tag!7003 (rule!8907 (h!45510 l!4295))))) 2) 0))))

(assert (=> b!3760615 d!1098492))

(declare-fun d!1098494 () Bool)

(declare-fun res!1522886 () Bool)

(declare-fun e!2325863 () Bool)

(assert (=> d!1098494 (=> (not res!1522886) (not e!2325863))))

(declare-fun semiInverseModEq!2630 (Int Int) Bool)

(assert (=> d!1098494 (= res!1522886 (semiInverseModEq!2630 (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (toValue!8499 (transformation!6143 (rule!8907 (h!45510 l!4295))))))))

(assert (=> d!1098494 (= (inv!53763 (transformation!6143 (rule!8907 (h!45510 l!4295)))) e!2325863)))

(declare-fun b!3760671 () Bool)

(declare-fun equivClasses!2529 (Int Int) Bool)

(assert (=> b!3760671 (= e!2325863 (equivClasses!2529 (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (toValue!8499 (transformation!6143 (rule!8907 (h!45510 l!4295))))))))

(assert (= (and d!1098494 res!1522886) b!3760671))

(declare-fun m!4254761 () Bool)

(assert (=> d!1098494 m!4254761))

(declare-fun m!4254763 () Bool)

(assert (=> b!3760671 m!4254763))

(assert (=> b!3760615 d!1098494))

(declare-fun b!3760687 () Bool)

(declare-fun e!2325873 () Bool)

(declare-fun inv!15 (TokenValue!6373) Bool)

(assert (=> b!3760687 (= e!2325873 (inv!15 (value!195666 (h!45510 l!4295))))))

(declare-fun b!3760688 () Bool)

(declare-fun e!2325874 () Bool)

(declare-fun inv!17 (TokenValue!6373) Bool)

(assert (=> b!3760688 (= e!2325874 (inv!17 (value!195666 (h!45510 l!4295))))))

(declare-fun b!3760689 () Bool)

(declare-fun e!2325875 () Bool)

(declare-fun inv!16 (TokenValue!6373) Bool)

(assert (=> b!3760689 (= e!2325875 (inv!16 (value!195666 (h!45510 l!4295))))))

(declare-fun b!3760690 () Bool)

(assert (=> b!3760690 (= e!2325875 e!2325874)))

(declare-fun c!651193 () Bool)

(assert (=> b!3760690 (= c!651193 (is-IntegerValue!19120 (value!195666 (h!45510 l!4295))))))

(declare-fun d!1098496 () Bool)

(declare-fun c!651192 () Bool)

(assert (=> d!1098496 (= c!651192 (is-IntegerValue!19119 (value!195666 (h!45510 l!4295))))))

(assert (=> d!1098496 (= (inv!21 (value!195666 (h!45510 l!4295))) e!2325875)))

(declare-fun b!3760691 () Bool)

(declare-fun res!1522889 () Bool)

(assert (=> b!3760691 (=> res!1522889 e!2325873)))

(assert (=> b!3760691 (= res!1522889 (not (is-IntegerValue!19121 (value!195666 (h!45510 l!4295)))))))

(assert (=> b!3760691 (= e!2325874 e!2325873)))

(assert (= (and d!1098496 c!651192) b!3760689))

(assert (= (and d!1098496 (not c!651192)) b!3760690))

(assert (= (and b!3760690 c!651193) b!3760688))

(assert (= (and b!3760690 (not c!651193)) b!3760691))

(assert (= (and b!3760691 (not res!1522889)) b!3760687))

(declare-fun m!4254777 () Bool)

(assert (=> b!3760687 m!4254777))

(declare-fun m!4254779 () Bool)

(assert (=> b!3760688 m!4254779))

(declare-fun m!4254781 () Bool)

(assert (=> b!3760689 m!4254781))

(assert (=> b!3760609 d!1098496))

(declare-fun b!3760692 () Bool)

(declare-fun e!2325876 () Bool)

(assert (=> b!3760692 (= e!2325876 (inv!15 (value!195666 separatorToken!124)))))

(declare-fun b!3760693 () Bool)

(declare-fun e!2325877 () Bool)

(assert (=> b!3760693 (= e!2325877 (inv!17 (value!195666 separatorToken!124)))))

(declare-fun b!3760694 () Bool)

(declare-fun e!2325878 () Bool)

(assert (=> b!3760694 (= e!2325878 (inv!16 (value!195666 separatorToken!124)))))

(declare-fun b!3760695 () Bool)

(assert (=> b!3760695 (= e!2325878 e!2325877)))

(declare-fun c!651195 () Bool)

(assert (=> b!3760695 (= c!651195 (is-IntegerValue!19120 (value!195666 separatorToken!124)))))

(declare-fun d!1098500 () Bool)

(declare-fun c!651194 () Bool)

(assert (=> d!1098500 (= c!651194 (is-IntegerValue!19119 (value!195666 separatorToken!124)))))

(assert (=> d!1098500 (= (inv!21 (value!195666 separatorToken!124)) e!2325878)))

(declare-fun b!3760696 () Bool)

(declare-fun res!1522890 () Bool)

(assert (=> b!3760696 (=> res!1522890 e!2325876)))

(assert (=> b!3760696 (= res!1522890 (not (is-IntegerValue!19121 (value!195666 separatorToken!124))))))

(assert (=> b!3760696 (= e!2325877 e!2325876)))

(assert (= (and d!1098500 c!651194) b!3760694))

(assert (= (and d!1098500 (not c!651194)) b!3760695))

(assert (= (and b!3760695 c!651195) b!3760693))

(assert (= (and b!3760695 (not c!651195)) b!3760696))

(assert (= (and b!3760696 (not res!1522890)) b!3760692))

(declare-fun m!4254783 () Bool)

(assert (=> b!3760692 m!4254783))

(declare-fun m!4254785 () Bool)

(assert (=> b!3760693 m!4254785))

(declare-fun m!4254787 () Bool)

(assert (=> b!3760694 m!4254787))

(assert (=> b!3760613 d!1098500))

(declare-fun d!1098502 () Bool)

(declare-fun res!1522897 () Bool)

(declare-fun e!2325887 () Bool)

(assert (=> d!1098502 (=> (not res!1522897) (not e!2325887))))

(declare-fun isEmpty!23573 (List!40213) Bool)

(assert (=> d!1098502 (= res!1522897 (not (isEmpty!23573 (originalCharacters!6743 separatorToken!124))))))

(assert (=> d!1098502 (= (inv!53764 separatorToken!124) e!2325887)))

(declare-fun b!3760711 () Bool)

(declare-fun res!1522898 () Bool)

(assert (=> b!3760711 (=> (not res!1522898) (not e!2325887))))

(declare-fun dynLambda!17333 (Int TokenValue!6373) BalanceConc!24146)

(assert (=> b!3760711 (= res!1522898 (= (originalCharacters!6743 separatorToken!124) (list!14799 (dynLambda!17333 (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (value!195666 separatorToken!124)))))))

(declare-fun b!3760712 () Bool)

(assert (=> b!3760712 (= e!2325887 (= (size!30171 separatorToken!124) (size!30173 (originalCharacters!6743 separatorToken!124))))))

(assert (= (and d!1098502 res!1522897) b!3760711))

(assert (= (and b!3760711 res!1522898) b!3760712))

(declare-fun b_lambda!110349 () Bool)

(assert (=> (not b_lambda!110349) (not b!3760711)))

(declare-fun t!303824 () Bool)

(declare-fun tb!215209 () Bool)

(assert (=> (and b!3760614 (= (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124)))) t!303824) tb!215209))

(declare-fun b!3760717 () Bool)

(declare-fun e!2325890 () Bool)

(declare-fun tp!1149130 () Bool)

(declare-fun inv!53767 (Conc!12276) Bool)

(assert (=> b!3760717 (= e!2325890 (and (inv!53767 (c!651178 (dynLambda!17333 (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (value!195666 separatorToken!124)))) tp!1149130))))

(declare-fun result!262796 () Bool)

(declare-fun inv!53768 (BalanceConc!24146) Bool)

(assert (=> tb!215209 (= result!262796 (and (inv!53768 (dynLambda!17333 (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (value!195666 separatorToken!124))) e!2325890))))

(assert (= tb!215209 b!3760717))

(declare-fun m!4254789 () Bool)

(assert (=> b!3760717 m!4254789))

(declare-fun m!4254791 () Bool)

(assert (=> tb!215209 m!4254791))

(assert (=> b!3760711 t!303824))

(declare-fun b_and!279375 () Bool)

(assert (= b_and!279357 (and (=> t!303824 result!262796) b_and!279375)))

(declare-fun tb!215211 () Bool)

(declare-fun t!303826 () Bool)

(assert (=> (and b!3760616 (= (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124)))) t!303826) tb!215211))

(declare-fun result!262800 () Bool)

(assert (= result!262800 result!262796))

(assert (=> b!3760711 t!303826))

(declare-fun b_and!279377 () Bool)

(assert (= b_and!279361 (and (=> t!303826 result!262800) b_and!279377)))

(declare-fun m!4254793 () Bool)

(assert (=> d!1098502 m!4254793))

(declare-fun m!4254795 () Bool)

(assert (=> b!3760711 m!4254795))

(assert (=> b!3760711 m!4254795))

(declare-fun m!4254797 () Bool)

(assert (=> b!3760711 m!4254797))

(declare-fun m!4254799 () Bool)

(assert (=> b!3760712 m!4254799))

(assert (=> start!353058 d!1098502))

(declare-fun d!1098504 () Bool)

(declare-fun res!1522899 () Bool)

(declare-fun e!2325891 () Bool)

(assert (=> d!1098504 (=> (not res!1522899) (not e!2325891))))

(assert (=> d!1098504 (= res!1522899 (not (isEmpty!23573 (originalCharacters!6743 (h!45510 l!4295)))))))

(assert (=> d!1098504 (= (inv!53764 (h!45510 l!4295)) e!2325891)))

(declare-fun b!3760718 () Bool)

(declare-fun res!1522900 () Bool)

(assert (=> b!3760718 (=> (not res!1522900) (not e!2325891))))

(assert (=> b!3760718 (= res!1522900 (= (originalCharacters!6743 (h!45510 l!4295)) (list!14799 (dynLambda!17333 (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (value!195666 (h!45510 l!4295))))))))

(declare-fun b!3760719 () Bool)

(assert (=> b!3760719 (= e!2325891 (= (size!30171 (h!45510 l!4295)) (size!30173 (originalCharacters!6743 (h!45510 l!4295)))))))

(assert (= (and d!1098504 res!1522899) b!3760718))

(assert (= (and b!3760718 res!1522900) b!3760719))

(declare-fun b_lambda!110351 () Bool)

(assert (=> (not b_lambda!110351) (not b!3760718)))

(declare-fun tb!215213 () Bool)

(declare-fun t!303828 () Bool)

(assert (=> (and b!3760614 (= (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295))))) t!303828) tb!215213))

(declare-fun b!3760720 () Bool)

(declare-fun e!2325892 () Bool)

(declare-fun tp!1149131 () Bool)

(assert (=> b!3760720 (= e!2325892 (and (inv!53767 (c!651178 (dynLambda!17333 (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (value!195666 (h!45510 l!4295))))) tp!1149131))))

(declare-fun result!262802 () Bool)

(assert (=> tb!215213 (= result!262802 (and (inv!53768 (dynLambda!17333 (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (value!195666 (h!45510 l!4295)))) e!2325892))))

(assert (= tb!215213 b!3760720))

(declare-fun m!4254801 () Bool)

(assert (=> b!3760720 m!4254801))

(declare-fun m!4254803 () Bool)

(assert (=> tb!215213 m!4254803))

(assert (=> b!3760718 t!303828))

(declare-fun b_and!279379 () Bool)

(assert (= b_and!279375 (and (=> t!303828 result!262802) b_and!279379)))

(declare-fun t!303830 () Bool)

(declare-fun tb!215215 () Bool)

(assert (=> (and b!3760616 (= (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295))))) t!303830) tb!215215))

(declare-fun result!262804 () Bool)

(assert (= result!262804 result!262802))

(assert (=> b!3760718 t!303830))

(declare-fun b_and!279381 () Bool)

(assert (= b_and!279377 (and (=> t!303830 result!262804) b_and!279381)))

(declare-fun m!4254805 () Bool)

(assert (=> d!1098504 m!4254805))

(declare-fun m!4254807 () Bool)

(assert (=> b!3760718 m!4254807))

(assert (=> b!3760718 m!4254807))

(declare-fun m!4254809 () Bool)

(assert (=> b!3760718 m!4254809))

(declare-fun m!4254811 () Bool)

(assert (=> b!3760719 m!4254811))

(assert (=> b!3760617 d!1098504))

(declare-fun d!1098506 () Bool)

(assert (=> d!1098506 (= (inv!53760 (tag!7003 (rule!8907 separatorToken!124))) (= (mod (str.len (value!195665 (tag!7003 (rule!8907 separatorToken!124)))) 2) 0))))

(assert (=> b!3760611 d!1098506))

(declare-fun d!1098508 () Bool)

(declare-fun res!1522902 () Bool)

(declare-fun e!2325896 () Bool)

(assert (=> d!1098508 (=> (not res!1522902) (not e!2325896))))

(assert (=> d!1098508 (= res!1522902 (semiInverseModEq!2630 (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (toValue!8499 (transformation!6143 (rule!8907 separatorToken!124)))))))

(assert (=> d!1098508 (= (inv!53763 (transformation!6143 (rule!8907 separatorToken!124))) e!2325896)))

(declare-fun b!3760726 () Bool)

(assert (=> b!3760726 (= e!2325896 (equivClasses!2529 (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (toValue!8499 (transformation!6143 (rule!8907 separatorToken!124)))))))

(assert (= (and d!1098508 res!1522902) b!3760726))

(declare-fun m!4254813 () Bool)

(assert (=> d!1098508 m!4254813))

(declare-fun m!4254815 () Bool)

(assert (=> b!3760726 m!4254815))

(assert (=> b!3760611 d!1098508))

(declare-fun e!2325899 () Bool)

(assert (=> b!3760615 (= tp!1149092 e!2325899)))

(declare-fun b!3760738 () Bool)

(declare-fun tp!1149146 () Bool)

(declare-fun tp!1149143 () Bool)

(assert (=> b!3760738 (= e!2325899 (and tp!1149146 tp!1149143))))

(declare-fun b!3760739 () Bool)

(declare-fun tp!1149145 () Bool)

(assert (=> b!3760739 (= e!2325899 tp!1149145)))

(declare-fun b!3760740 () Bool)

(declare-fun tp!1149144 () Bool)

(declare-fun tp!1149142 () Bool)

(assert (=> b!3760740 (= e!2325899 (and tp!1149144 tp!1149142))))

(declare-fun b!3760737 () Bool)

(assert (=> b!3760737 (= e!2325899 tp_is_empty!19091)))

(assert (= (and b!3760615 (is-ElementMatch!11048 (regex!6143 (rule!8907 (h!45510 l!4295))))) b!3760737))

(assert (= (and b!3760615 (is-Concat!17422 (regex!6143 (rule!8907 (h!45510 l!4295))))) b!3760738))

(assert (= (and b!3760615 (is-Star!11048 (regex!6143 (rule!8907 (h!45510 l!4295))))) b!3760739))

(assert (= (and b!3760615 (is-Union!11048 (regex!6143 (rule!8907 (h!45510 l!4295))))) b!3760740))

(declare-fun b!3760745 () Bool)

(declare-fun e!2325902 () Bool)

(declare-fun tp!1149149 () Bool)

(assert (=> b!3760745 (= e!2325902 (and tp_is_empty!19091 tp!1149149))))

(assert (=> b!3760609 (= tp!1149090 e!2325902)))

(assert (= (and b!3760609 (is-Cons!40089 (originalCharacters!6743 (h!45510 l!4295)))) b!3760745))

(declare-fun b!3760746 () Bool)

(declare-fun e!2325903 () Bool)

(declare-fun tp!1149150 () Bool)

(assert (=> b!3760746 (= e!2325903 (and tp_is_empty!19091 tp!1149150))))

(assert (=> b!3760613 (= tp!1149089 e!2325903)))

(assert (= (and b!3760613 (is-Cons!40089 (originalCharacters!6743 separatorToken!124))) b!3760746))

(declare-fun b!3760747 () Bool)

(declare-fun e!2325904 () Bool)

(declare-fun tp!1149151 () Bool)

(assert (=> b!3760747 (= e!2325904 (and tp_is_empty!19091 tp!1149151))))

(assert (=> b!3760612 (= tp!1149091 e!2325904)))

(assert (= (and b!3760612 (is-Cons!40089 (t!303814 acc!415))) b!3760747))

(declare-fun b!3760761 () Bool)

(declare-fun b_free!100697 () Bool)

(declare-fun b_next!101401 () Bool)

(assert (=> b!3760761 (= b_free!100697 (not b_next!101401))))

(declare-fun tp!1149166 () Bool)

(declare-fun b_and!279383 () Bool)

(assert (=> b!3760761 (= tp!1149166 b_and!279383)))

(declare-fun b_free!100699 () Bool)

(declare-fun b_next!101403 () Bool)

(assert (=> b!3760761 (= b_free!100699 (not b_next!101403))))

(declare-fun tb!215217 () Bool)

(declare-fun t!303832 () Bool)

(assert (=> (and b!3760761 (= (toChars!8358 (transformation!6143 (rule!8907 (h!45510 (t!303815 l!4295))))) (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124)))) t!303832) tb!215217))

(declare-fun result!262812 () Bool)

(assert (= result!262812 result!262796))

(assert (=> b!3760711 t!303832))

(declare-fun t!303834 () Bool)

(declare-fun tb!215219 () Bool)

(assert (=> (and b!3760761 (= (toChars!8358 (transformation!6143 (rule!8907 (h!45510 (t!303815 l!4295))))) (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295))))) t!303834) tb!215219))

(declare-fun result!262814 () Bool)

(assert (= result!262814 result!262802))

(assert (=> b!3760718 t!303834))

(declare-fun tp!1149162 () Bool)

(declare-fun b_and!279385 () Bool)

(assert (=> b!3760761 (= tp!1149162 (and (=> t!303832 result!262812) (=> t!303834 result!262814) b_and!279385))))

(declare-fun e!2325919 () Bool)

(declare-fun e!2325918 () Bool)

(declare-fun b!3760758 () Bool)

(declare-fun tp!1149163 () Bool)

(assert (=> b!3760758 (= e!2325919 (and (inv!53764 (h!45510 (t!303815 l!4295))) e!2325918 tp!1149163))))

(declare-fun tp!1149164 () Bool)

(declare-fun b!3760760 () Bool)

(declare-fun e!2325922 () Bool)

(declare-fun e!2325917 () Bool)

(assert (=> b!3760760 (= e!2325917 (and tp!1149164 (inv!53760 (tag!7003 (rule!8907 (h!45510 (t!303815 l!4295))))) (inv!53763 (transformation!6143 (rule!8907 (h!45510 (t!303815 l!4295))))) e!2325922))))

(assert (=> b!3760617 (= tp!1149085 e!2325919)))

(declare-fun b!3760759 () Bool)

(declare-fun tp!1149165 () Bool)

(assert (=> b!3760759 (= e!2325918 (and (inv!21 (value!195666 (h!45510 (t!303815 l!4295)))) e!2325917 tp!1149165))))

(assert (=> b!3760761 (= e!2325922 (and tp!1149166 tp!1149162))))

(assert (= b!3760760 b!3760761))

(assert (= b!3760759 b!3760760))

(assert (= b!3760758 b!3760759))

(assert (= (and b!3760617 (is-Cons!40090 (t!303815 l!4295))) b!3760758))

(declare-fun m!4254823 () Bool)

(assert (=> b!3760758 m!4254823))

(declare-fun m!4254825 () Bool)

(assert (=> b!3760760 m!4254825))

(declare-fun m!4254827 () Bool)

(assert (=> b!3760760 m!4254827))

(declare-fun m!4254829 () Bool)

(assert (=> b!3760759 m!4254829))

(declare-fun e!2325925 () Bool)

(assert (=> b!3760611 (= tp!1149088 e!2325925)))

(declare-fun b!3760765 () Bool)

(declare-fun tp!1149171 () Bool)

(declare-fun tp!1149168 () Bool)

(assert (=> b!3760765 (= e!2325925 (and tp!1149171 tp!1149168))))

(declare-fun b!3760766 () Bool)

(declare-fun tp!1149170 () Bool)

(assert (=> b!3760766 (= e!2325925 tp!1149170)))

(declare-fun b!3760767 () Bool)

(declare-fun tp!1149169 () Bool)

(declare-fun tp!1149167 () Bool)

(assert (=> b!3760767 (= e!2325925 (and tp!1149169 tp!1149167))))

(declare-fun b!3760764 () Bool)

(assert (=> b!3760764 (= e!2325925 tp_is_empty!19091)))

(assert (= (and b!3760611 (is-ElementMatch!11048 (regex!6143 (rule!8907 separatorToken!124)))) b!3760764))

(assert (= (and b!3760611 (is-Concat!17422 (regex!6143 (rule!8907 separatorToken!124)))) b!3760765))

(assert (= (and b!3760611 (is-Star!11048 (regex!6143 (rule!8907 separatorToken!124)))) b!3760766))

(assert (= (and b!3760611 (is-Union!11048 (regex!6143 (rule!8907 separatorToken!124)))) b!3760767))

(declare-fun b_lambda!110353 () Bool)

(assert (= b_lambda!110351 (or (and b!3760614 b_free!100683 (= (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))) (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))))) (and b!3760616 b_free!100687) (and b!3760761 b_free!100699 (= (toChars!8358 (transformation!6143 (rule!8907 (h!45510 (t!303815 l!4295))))) (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))))) b_lambda!110353)))

(declare-fun b_lambda!110355 () Bool)

(assert (= b_lambda!110349 (or (and b!3760614 b_free!100683) (and b!3760616 b_free!100687 (= (toChars!8358 (transformation!6143 (rule!8907 (h!45510 l!4295)))) (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))))) (and b!3760761 b_free!100699 (= (toChars!8358 (transformation!6143 (rule!8907 (h!45510 (t!303815 l!4295))))) (toChars!8358 (transformation!6143 (rule!8907 separatorToken!124))))) b_lambda!110355)))

(push 1)

(assert (not d!1098504))

(assert (not b!3760694))

(assert (not b!3760765))

(assert (not b!3760766))

(assert (not b_lambda!110355))

(assert (not b!3760759))

(assert (not b!3760767))

(assert tp_is_empty!19091)

(assert (not b!3760712))

(assert (not b_lambda!110353))

(assert b_and!279379)

(assert (not d!1098494))

(assert (not b!3760661))

(assert (not b_next!101385))

(assert b_and!279359)

(assert (not b!3760688))

(assert b_and!279385)

(assert (not b!3760740))

(assert (not b!3760726))

(assert (not b!3760718))

(assert (not b!3760758))

(assert (not b_next!101401))

(assert (not b!3760671))

(assert (not b!3760655))

(assert (not b!3760717))

(assert (not b!3760654))

(assert (not b!3760687))

(assert (not b!3760693))

(assert (not d!1098508))

(assert (not b!3760739))

(assert (not b!3760747))

(assert (not b!3760689))

(assert b_and!279383)

(assert (not b!3760746))

(assert (not d!1098486))

(assert (not b_next!101389))

(assert (not b!3760692))

(assert (not tb!215213))

(assert (not b!3760745))

(assert (not b_next!101387))

(assert (not b!3760711))

(assert b_and!279355)

(assert (not b!3760720))

(assert (not b!3760738))

(assert (not d!1098502))

(assert (not b_next!101391))

(assert (not b_next!101403))

(assert b_and!279381)

(assert (not tb!215209))

(assert (not b!3760760))

(assert (not b!3760719))

(check-sat)

(pop 1)

(push 1)

(assert b_and!279379)

(assert (not b_next!101385))

(assert b_and!279359)

(assert b_and!279385)

(assert (not b_next!101401))

(assert b_and!279383)

(assert (not b_next!101389))

(assert b_and!279381)

(assert (not b_next!101387))

(assert b_and!279355)

(assert (not b_next!101391))

(assert (not b_next!101403))

(check-sat)

(pop 1)

