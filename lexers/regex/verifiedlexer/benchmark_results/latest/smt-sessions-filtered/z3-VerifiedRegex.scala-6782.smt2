; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353676 () Bool)

(assert start!353676)

(declare-fun b!3765582 () Bool)

(declare-fun b_free!100869 () Bool)

(declare-fun b_next!101573 () Bool)

(assert (=> b!3765582 (= b_free!100869 (not b_next!101573))))

(declare-fun tp!1150371 () Bool)

(declare-fun b_and!279671 () Bool)

(assert (=> b!3765582 (= tp!1150371 b_and!279671)))

(declare-fun b_free!100871 () Bool)

(declare-fun b_next!101575 () Bool)

(assert (=> b!3765582 (= b_free!100871 (not b_next!101575))))

(declare-fun tp!1150372 () Bool)

(declare-fun b_and!279673 () Bool)

(assert (=> b!3765582 (= tp!1150372 b_and!279673)))

(declare-datatypes ((C!22336 0))(
  ( (C!22337 (val!13244 Int)) )
))
(declare-datatypes ((List!40305 0))(
  ( (Nil!40181) (Cons!40181 (h!45601 (_ BitVec 16)) (t!304316 List!40305)) )
))
(declare-datatypes ((Regex!11075 0))(
  ( (ElementMatch!11075 (c!652328 C!22336)) (Concat!17475 (regOne!22662 Regex!11075) (regTwo!22662 Regex!11075)) (EmptyExpr!11075) (Star!11075 (reg!11404 Regex!11075)) (EmptyLang!11075) (Union!11075 (regOne!22663 Regex!11075) (regTwo!22663 Regex!11075)) )
))
(declare-datatypes ((String!45681 0))(
  ( (String!45682 (value!196426 String)) )
))
(declare-datatypes ((TokenValue!6400 0))(
  ( (FloatLiteralValue!12800 (text!45245 List!40305)) (TokenValueExt!6399 (__x!25017 Int)) (Broken!32000 (value!196427 List!40305)) (Object!6523) (End!6400) (Def!6400) (Underscore!6400) (Match!6400) (Else!6400) (Error!6400) (Case!6400) (If!6400) (Extends!6400) (Abstract!6400) (Class!6400) (Val!6400) (DelimiterValue!12800 (del!6460 List!40305)) (KeywordValue!6406 (value!196428 List!40305)) (CommentValue!12800 (value!196429 List!40305)) (WhitespaceValue!12800 (value!196430 List!40305)) (IndentationValue!6400 (value!196431 List!40305)) (String!45683) (Int32!6400) (Broken!32001 (value!196432 List!40305)) (Boolean!6401) (Unit!57901) (OperatorValue!6403 (op!6460 List!40305)) (IdentifierValue!12800 (value!196433 List!40305)) (IdentifierValue!12801 (value!196434 List!40305)) (WhitespaceValue!12801 (value!196435 List!40305)) (True!12800) (False!12800) (Broken!32002 (value!196436 List!40305)) (Broken!32003 (value!196437 List!40305)) (True!12801) (RightBrace!6400) (RightBracket!6400) (Colon!6400) (Null!6400) (Comma!6400) (LeftBracket!6400) (False!12801) (LeftBrace!6400) (ImaginaryLiteralValue!6400 (text!45246 List!40305)) (StringLiteralValue!19200 (value!196438 List!40305)) (EOFValue!6400 (value!196439 List!40305)) (IdentValue!6400 (value!196440 List!40305)) (DelimiterValue!12801 (value!196441 List!40305)) (DedentValue!6400 (value!196442 List!40305)) (NewLineValue!6400 (value!196443 List!40305)) (IntegerValue!19200 (value!196444 (_ BitVec 32)) (text!45247 List!40305)) (IntegerValue!19201 (value!196445 Int) (text!45248 List!40305)) (Times!6400) (Or!6400) (Equal!6400) (Minus!6400) (Broken!32004 (value!196446 List!40305)) (And!6400) (Div!6400) (LessEqual!6400) (Mod!6400) (Concat!17476) (Not!6400) (Plus!6400) (SpaceValue!6400 (value!196447 List!40305)) (IntegerValue!19202 (value!196448 Int) (text!45249 List!40305)) (StringLiteralValue!19201 (text!45250 List!40305)) (FloatLiteralValue!12801 (text!45251 List!40305)) (BytesLiteralValue!6400 (value!196449 List!40305)) (CommentValue!12801 (value!196450 List!40305)) (StringLiteralValue!19202 (value!196451 List!40305)) (ErrorTokenValue!6400 (msg!6461 List!40305)) )
))
(declare-datatypes ((List!40306 0))(
  ( (Nil!40182) (Cons!40182 (h!45602 C!22336) (t!304317 List!40306)) )
))
(declare-datatypes ((IArray!24639 0))(
  ( (IArray!24640 (innerList!12377 List!40306)) )
))
(declare-datatypes ((Conc!12317 0))(
  ( (Node!12317 (left!31103 Conc!12317) (right!31433 Conc!12317) (csize!24864 Int) (cheight!12528 Int)) (Leaf!19100 (xs!15527 IArray!24639) (csize!24865 Int)) (Empty!12317) )
))
(declare-datatypes ((BalanceConc!24228 0))(
  ( (BalanceConc!24229 (c!652329 Conc!12317)) )
))
(declare-datatypes ((TokenValueInjection!12228 0))(
  ( (TokenValueInjection!12229 (toValue!8530 Int) (toChars!8389 Int)) )
))
(declare-datatypes ((Rule!12140 0))(
  ( (Rule!12141 (regex!6170 Regex!11075) (tag!7030 String!45681) (isSeparator!6170 Bool) (transformation!6170 TokenValueInjection!12228)) )
))
(declare-datatypes ((Token!11478 0))(
  ( (Token!11479 (value!196452 TokenValue!6400) (rule!8934 Rule!12140) (size!30243 Int) (originalCharacters!6770 List!40306)) )
))
(declare-datatypes ((List!40307 0))(
  ( (Nil!40183) (Cons!40183 (h!45603 Token!11478) (t!304318 List!40307)) )
))
(declare-fun l!4168 () List!40307)

(declare-fun tp!1150375 () Bool)

(declare-fun b!3765579 () Bool)

(declare-fun e!2328934 () Bool)

(declare-fun e!2328935 () Bool)

(declare-fun inv!21 (TokenValue!6400) Bool)

(assert (=> b!3765579 (= e!2328934 (and (inv!21 (value!196452 (h!45603 l!4168))) e!2328935 tp!1150375))))

(declare-fun tp!1150374 () Bool)

(declare-fun b!3765581 () Bool)

(declare-fun e!2328936 () Bool)

(declare-fun inv!53943 (String!45681) Bool)

(declare-fun inv!53946 (TokenValueInjection!12228) Bool)

(assert (=> b!3765581 (= e!2328935 (and tp!1150374 (inv!53943 (tag!7030 (rule!8934 (h!45603 l!4168)))) (inv!53946 (transformation!6170 (rule!8934 (h!45603 l!4168)))) e!2328936))))

(assert (=> b!3765582 (= e!2328936 (and tp!1150371 tp!1150372))))

(declare-datatypes ((LexerInterface!5759 0))(
  ( (LexerInterfaceExt!5756 (__x!25018 Int)) (Lexer!5757) )
))
(declare-fun thiss!13564 () LexerInterface!5759)

(declare-fun lt!1302954 () List!40306)

(declare-fun acc!396 () List!40306)

(declare-fun b!3765583 () Bool)

(declare-fun e!2328932 () Bool)

(declare-fun printListTailRec!752 (LexerInterface!5759 List!40307 List!40306) List!40306)

(declare-fun ++!9974 (List!40306 List!40306) List!40306)

(declare-fun printList!1671 (LexerInterface!5759 List!40307) List!40306)

(assert (=> b!3765583 (= e!2328932 (not (= (printListTailRec!752 thiss!13564 (t!304318 l!4168) lt!1302954) (++!9974 acc!396 (printList!1671 thiss!13564 l!4168)))))))

(declare-fun lt!1302952 () List!40306)

(declare-fun lt!1302953 () List!40306)

(assert (=> b!3765583 (= (++!9974 lt!1302954 lt!1302953) (++!9974 acc!396 (++!9974 lt!1302952 lt!1302953)))))

(assert (=> b!3765583 (= lt!1302954 (++!9974 acc!396 lt!1302952))))

(declare-datatypes ((Unit!57902 0))(
  ( (Unit!57903) )
))
(declare-fun lt!1302955 () Unit!57902)

(declare-fun lemmaConcatAssociativity!2114 (List!40306 List!40306 List!40306) Unit!57902)

(assert (=> b!3765583 (= lt!1302955 (lemmaConcatAssociativity!2114 acc!396 lt!1302952 lt!1302953))))

(assert (=> b!3765583 (= lt!1302953 (printList!1671 thiss!13564 (t!304318 l!4168)))))

(declare-fun list!14852 (BalanceConc!24228) List!40306)

(declare-fun charsOf!4020 (Token!11478) BalanceConc!24228)

(assert (=> b!3765583 (= lt!1302952 (list!14852 (charsOf!4020 (h!45603 l!4168))))))

(declare-fun b!3765584 () Bool)

(declare-fun e!2328933 () Bool)

(declare-fun tp_is_empty!19145 () Bool)

(declare-fun tp!1150373 () Bool)

(assert (=> b!3765584 (= e!2328933 (and tp_is_empty!19145 tp!1150373))))

(declare-fun tp!1150376 () Bool)

(declare-fun b!3765580 () Bool)

(declare-fun e!2328937 () Bool)

(declare-fun inv!53947 (Token!11478) Bool)

(assert (=> b!3765580 (= e!2328937 (and (inv!53947 (h!45603 l!4168)) e!2328934 tp!1150376))))

(declare-fun res!1524464 () Bool)

(assert (=> start!353676 (=> (not res!1524464) (not e!2328932))))

(get-info :version)

(assert (=> start!353676 (= res!1524464 (and ((_ is Lexer!5757) thiss!13564) ((_ is Cons!40183) l!4168)))))

(assert (=> start!353676 e!2328932))

(assert (=> start!353676 true))

(assert (=> start!353676 e!2328937))

(assert (=> start!353676 e!2328933))

(assert (= (and start!353676 res!1524464) b!3765583))

(assert (= b!3765581 b!3765582))

(assert (= b!3765579 b!3765581))

(assert (= b!3765580 b!3765579))

(assert (= (and start!353676 ((_ is Cons!40183) l!4168)) b!3765580))

(assert (= (and start!353676 ((_ is Cons!40182) acc!396)) b!3765584))

(declare-fun m!4261659 () Bool)

(assert (=> b!3765579 m!4261659))

(declare-fun m!4261661 () Bool)

(assert (=> b!3765581 m!4261661))

(declare-fun m!4261663 () Bool)

(assert (=> b!3765581 m!4261663))

(declare-fun m!4261665 () Bool)

(assert (=> b!3765583 m!4261665))

(declare-fun m!4261667 () Bool)

(assert (=> b!3765583 m!4261667))

(declare-fun m!4261669 () Bool)

(assert (=> b!3765583 m!4261669))

(declare-fun m!4261671 () Bool)

(assert (=> b!3765583 m!4261671))

(assert (=> b!3765583 m!4261671))

(declare-fun m!4261673 () Bool)

(assert (=> b!3765583 m!4261673))

(declare-fun m!4261675 () Bool)

(assert (=> b!3765583 m!4261675))

(declare-fun m!4261677 () Bool)

(assert (=> b!3765583 m!4261677))

(declare-fun m!4261679 () Bool)

(assert (=> b!3765583 m!4261679))

(declare-fun m!4261681 () Bool)

(assert (=> b!3765583 m!4261681))

(assert (=> b!3765583 m!4261665))

(declare-fun m!4261683 () Bool)

(assert (=> b!3765583 m!4261683))

(assert (=> b!3765583 m!4261679))

(declare-fun m!4261685 () Bool)

(assert (=> b!3765583 m!4261685))

(declare-fun m!4261687 () Bool)

(assert (=> b!3765580 m!4261687))

(check-sat (not b_next!101573) (not b!3765584) (not b_next!101575) (not b!3765583) b_and!279671 (not b!3765580) tp_is_empty!19145 b_and!279673 (not b!3765579) (not b!3765581))
(check-sat b_and!279673 b_and!279671 (not b_next!101573) (not b_next!101575))
(get-model)

(declare-fun b!3765595 () Bool)

(declare-fun e!2328947 () Bool)

(declare-fun inv!15 (TokenValue!6400) Bool)

(assert (=> b!3765595 (= e!2328947 (inv!15 (value!196452 (h!45603 l!4168))))))

(declare-fun b!3765596 () Bool)

(declare-fun e!2328945 () Bool)

(declare-fun e!2328946 () Bool)

(assert (=> b!3765596 (= e!2328945 e!2328946)))

(declare-fun c!652335 () Bool)

(assert (=> b!3765596 (= c!652335 ((_ is IntegerValue!19201) (value!196452 (h!45603 l!4168))))))

(declare-fun b!3765597 () Bool)

(declare-fun inv!16 (TokenValue!6400) Bool)

(assert (=> b!3765597 (= e!2328945 (inv!16 (value!196452 (h!45603 l!4168))))))

(declare-fun b!3765598 () Bool)

(declare-fun inv!17 (TokenValue!6400) Bool)

(assert (=> b!3765598 (= e!2328946 (inv!17 (value!196452 (h!45603 l!4168))))))

(declare-fun b!3765599 () Bool)

(declare-fun res!1524469 () Bool)

(assert (=> b!3765599 (=> res!1524469 e!2328947)))

(assert (=> b!3765599 (= res!1524469 (not ((_ is IntegerValue!19202) (value!196452 (h!45603 l!4168)))))))

(assert (=> b!3765599 (= e!2328946 e!2328947)))

(declare-fun d!1100805 () Bool)

(declare-fun c!652334 () Bool)

(assert (=> d!1100805 (= c!652334 ((_ is IntegerValue!19200) (value!196452 (h!45603 l!4168))))))

(assert (=> d!1100805 (= (inv!21 (value!196452 (h!45603 l!4168))) e!2328945)))

(assert (= (and d!1100805 c!652334) b!3765597))

(assert (= (and d!1100805 (not c!652334)) b!3765596))

(assert (= (and b!3765596 c!652335) b!3765598))

(assert (= (and b!3765596 (not c!652335)) b!3765599))

(assert (= (and b!3765599 (not res!1524469)) b!3765595))

(declare-fun m!4261689 () Bool)

(assert (=> b!3765595 m!4261689))

(declare-fun m!4261691 () Bool)

(assert (=> b!3765597 m!4261691))

(declare-fun m!4261693 () Bool)

(assert (=> b!3765598 m!4261693))

(assert (=> b!3765579 d!1100805))

(declare-fun d!1100807 () Bool)

(declare-fun c!652338 () Bool)

(assert (=> d!1100807 (= c!652338 ((_ is Cons!40183) (t!304318 l!4168)))))

(declare-fun e!2328950 () List!40306)

(assert (=> d!1100807 (= (printList!1671 thiss!13564 (t!304318 l!4168)) e!2328950)))

(declare-fun b!3765604 () Bool)

(assert (=> b!3765604 (= e!2328950 (++!9974 (list!14852 (charsOf!4020 (h!45603 (t!304318 l!4168)))) (printList!1671 thiss!13564 (t!304318 (t!304318 l!4168)))))))

(declare-fun b!3765605 () Bool)

(assert (=> b!3765605 (= e!2328950 Nil!40182)))

(assert (= (and d!1100807 c!652338) b!3765604))

(assert (= (and d!1100807 (not c!652338)) b!3765605))

(declare-fun m!4261695 () Bool)

(assert (=> b!3765604 m!4261695))

(assert (=> b!3765604 m!4261695))

(declare-fun m!4261697 () Bool)

(assert (=> b!3765604 m!4261697))

(declare-fun m!4261699 () Bool)

(assert (=> b!3765604 m!4261699))

(assert (=> b!3765604 m!4261697))

(assert (=> b!3765604 m!4261699))

(declare-fun m!4261701 () Bool)

(assert (=> b!3765604 m!4261701))

(assert (=> b!3765583 d!1100807))

(declare-fun b!3765620 () Bool)

(declare-fun e!2328958 () List!40306)

(assert (=> b!3765620 (= e!2328958 lt!1302953)))

(declare-fun b!3765621 () Bool)

(assert (=> b!3765621 (= e!2328958 (Cons!40182 (h!45602 lt!1302952) (++!9974 (t!304317 lt!1302952) lt!1302953)))))

(declare-fun lt!1302958 () List!40306)

(declare-fun e!2328959 () Bool)

(declare-fun b!3765623 () Bool)

(assert (=> b!3765623 (= e!2328959 (or (not (= lt!1302953 Nil!40182)) (= lt!1302958 lt!1302952)))))

(declare-fun d!1100811 () Bool)

(assert (=> d!1100811 e!2328959))

(declare-fun res!1524477 () Bool)

(assert (=> d!1100811 (=> (not res!1524477) (not e!2328959))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5901 (List!40306) (InoxSet C!22336))

(assert (=> d!1100811 (= res!1524477 (= (content!5901 lt!1302958) ((_ map or) (content!5901 lt!1302952) (content!5901 lt!1302953))))))

(assert (=> d!1100811 (= lt!1302958 e!2328958)))

(declare-fun c!652344 () Bool)

(assert (=> d!1100811 (= c!652344 ((_ is Nil!40182) lt!1302952))))

(assert (=> d!1100811 (= (++!9974 lt!1302952 lt!1302953) lt!1302958)))

(declare-fun b!3765622 () Bool)

(declare-fun res!1524476 () Bool)

(assert (=> b!3765622 (=> (not res!1524476) (not e!2328959))))

(declare-fun size!30245 (List!40306) Int)

(assert (=> b!3765622 (= res!1524476 (= (size!30245 lt!1302958) (+ (size!30245 lt!1302952) (size!30245 lt!1302953))))))

(assert (= (and d!1100811 c!652344) b!3765620))

(assert (= (and d!1100811 (not c!652344)) b!3765621))

(assert (= (and d!1100811 res!1524477) b!3765622))

(assert (= (and b!3765622 res!1524476) b!3765623))

(declare-fun m!4261711 () Bool)

(assert (=> b!3765621 m!4261711))

(declare-fun m!4261713 () Bool)

(assert (=> d!1100811 m!4261713))

(declare-fun m!4261715 () Bool)

(assert (=> d!1100811 m!4261715))

(declare-fun m!4261717 () Bool)

(assert (=> d!1100811 m!4261717))

(declare-fun m!4261719 () Bool)

(assert (=> b!3765622 m!4261719))

(declare-fun m!4261721 () Bool)

(assert (=> b!3765622 m!4261721))

(declare-fun m!4261723 () Bool)

(assert (=> b!3765622 m!4261723))

(assert (=> b!3765583 d!1100811))

(declare-fun d!1100815 () Bool)

(declare-fun lt!1302976 () List!40306)

(assert (=> d!1100815 (= lt!1302976 (++!9974 lt!1302954 (printList!1671 thiss!13564 (t!304318 l!4168))))))

(declare-fun e!2328970 () List!40306)

(assert (=> d!1100815 (= lt!1302976 e!2328970)))

(declare-fun c!652351 () Bool)

(assert (=> d!1100815 (= c!652351 ((_ is Cons!40183) (t!304318 l!4168)))))

(assert (=> d!1100815 (= (printListTailRec!752 thiss!13564 (t!304318 l!4168) lt!1302954) lt!1302976)))

(declare-fun b!3765644 () Bool)

(assert (=> b!3765644 (= e!2328970 (printListTailRec!752 thiss!13564 (t!304318 (t!304318 l!4168)) (++!9974 lt!1302954 (list!14852 (charsOf!4020 (h!45603 (t!304318 l!4168)))))))))

(declare-fun lt!1302974 () List!40306)

(assert (=> b!3765644 (= lt!1302974 (list!14852 (charsOf!4020 (h!45603 (t!304318 l!4168)))))))

(declare-fun lt!1302977 () List!40306)

(assert (=> b!3765644 (= lt!1302977 (printList!1671 thiss!13564 (t!304318 (t!304318 l!4168))))))

(declare-fun lt!1302975 () Unit!57902)

(assert (=> b!3765644 (= lt!1302975 (lemmaConcatAssociativity!2114 lt!1302954 lt!1302974 lt!1302977))))

(assert (=> b!3765644 (= (++!9974 (++!9974 lt!1302954 lt!1302974) lt!1302977) (++!9974 lt!1302954 (++!9974 lt!1302974 lt!1302977)))))

(declare-fun lt!1302973 () Unit!57902)

(assert (=> b!3765644 (= lt!1302973 lt!1302975)))

(declare-fun b!3765645 () Bool)

(assert (=> b!3765645 (= e!2328970 lt!1302954)))

(assert (= (and d!1100815 c!652351) b!3765644))

(assert (= (and d!1100815 (not c!652351)) b!3765645))

(assert (=> d!1100815 m!4261685))

(assert (=> d!1100815 m!4261685))

(declare-fun m!4261749 () Bool)

(assert (=> d!1100815 m!4261749))

(declare-fun m!4261751 () Bool)

(assert (=> b!3765644 m!4261751))

(declare-fun m!4261753 () Bool)

(assert (=> b!3765644 m!4261753))

(declare-fun m!4261755 () Bool)

(assert (=> b!3765644 m!4261755))

(assert (=> b!3765644 m!4261753))

(declare-fun m!4261757 () Bool)

(assert (=> b!3765644 m!4261757))

(declare-fun m!4261759 () Bool)

(assert (=> b!3765644 m!4261759))

(assert (=> b!3765644 m!4261695))

(assert (=> b!3765644 m!4261697))

(assert (=> b!3765644 m!4261695))

(declare-fun m!4261761 () Bool)

(assert (=> b!3765644 m!4261761))

(declare-fun m!4261763 () Bool)

(assert (=> b!3765644 m!4261763))

(assert (=> b!3765644 m!4261697))

(assert (=> b!3765644 m!4261757))

(assert (=> b!3765644 m!4261699))

(assert (=> b!3765644 m!4261761))

(assert (=> b!3765583 d!1100815))

(declare-fun b!3765646 () Bool)

(declare-fun e!2328971 () List!40306)

(assert (=> b!3765646 (= e!2328971 (++!9974 lt!1302952 lt!1302953))))

(declare-fun b!3765647 () Bool)

(assert (=> b!3765647 (= e!2328971 (Cons!40182 (h!45602 acc!396) (++!9974 (t!304317 acc!396) (++!9974 lt!1302952 lt!1302953))))))

(declare-fun b!3765649 () Bool)

(declare-fun lt!1302980 () List!40306)

(declare-fun e!2328972 () Bool)

(assert (=> b!3765649 (= e!2328972 (or (not (= (++!9974 lt!1302952 lt!1302953) Nil!40182)) (= lt!1302980 acc!396)))))

(declare-fun d!1100821 () Bool)

(assert (=> d!1100821 e!2328972))

(declare-fun res!1524487 () Bool)

(assert (=> d!1100821 (=> (not res!1524487) (not e!2328972))))

(assert (=> d!1100821 (= res!1524487 (= (content!5901 lt!1302980) ((_ map or) (content!5901 acc!396) (content!5901 (++!9974 lt!1302952 lt!1302953)))))))

(assert (=> d!1100821 (= lt!1302980 e!2328971)))

(declare-fun c!652352 () Bool)

(assert (=> d!1100821 (= c!652352 ((_ is Nil!40182) acc!396))))

(assert (=> d!1100821 (= (++!9974 acc!396 (++!9974 lt!1302952 lt!1302953)) lt!1302980)))

(declare-fun b!3765648 () Bool)

(declare-fun res!1524486 () Bool)

(assert (=> b!3765648 (=> (not res!1524486) (not e!2328972))))

(assert (=> b!3765648 (= res!1524486 (= (size!30245 lt!1302980) (+ (size!30245 acc!396) (size!30245 (++!9974 lt!1302952 lt!1302953)))))))

(assert (= (and d!1100821 c!652352) b!3765646))

(assert (= (and d!1100821 (not c!652352)) b!3765647))

(assert (= (and d!1100821 res!1524487) b!3765648))

(assert (= (and b!3765648 res!1524486) b!3765649))

(assert (=> b!3765647 m!4261679))

(declare-fun m!4261765 () Bool)

(assert (=> b!3765647 m!4261765))

(declare-fun m!4261767 () Bool)

(assert (=> d!1100821 m!4261767))

(declare-fun m!4261769 () Bool)

(assert (=> d!1100821 m!4261769))

(assert (=> d!1100821 m!4261679))

(declare-fun m!4261773 () Bool)

(assert (=> d!1100821 m!4261773))

(declare-fun m!4261775 () Bool)

(assert (=> b!3765648 m!4261775))

(declare-fun m!4261777 () Bool)

(assert (=> b!3765648 m!4261777))

(assert (=> b!3765648 m!4261679))

(declare-fun m!4261779 () Bool)

(assert (=> b!3765648 m!4261779))

(assert (=> b!3765583 d!1100821))

(declare-fun b!3765650 () Bool)

(declare-fun e!2328973 () List!40306)

(assert (=> b!3765650 (= e!2328973 lt!1302952)))

(declare-fun b!3765651 () Bool)

(assert (=> b!3765651 (= e!2328973 (Cons!40182 (h!45602 acc!396) (++!9974 (t!304317 acc!396) lt!1302952)))))

(declare-fun b!3765653 () Bool)

(declare-fun lt!1302982 () List!40306)

(declare-fun e!2328974 () Bool)

(assert (=> b!3765653 (= e!2328974 (or (not (= lt!1302952 Nil!40182)) (= lt!1302982 acc!396)))))

(declare-fun d!1100823 () Bool)

(assert (=> d!1100823 e!2328974))

(declare-fun res!1524489 () Bool)

(assert (=> d!1100823 (=> (not res!1524489) (not e!2328974))))

(assert (=> d!1100823 (= res!1524489 (= (content!5901 lt!1302982) ((_ map or) (content!5901 acc!396) (content!5901 lt!1302952))))))

(assert (=> d!1100823 (= lt!1302982 e!2328973)))

(declare-fun c!652353 () Bool)

(assert (=> d!1100823 (= c!652353 ((_ is Nil!40182) acc!396))))

(assert (=> d!1100823 (= (++!9974 acc!396 lt!1302952) lt!1302982)))

(declare-fun b!3765652 () Bool)

(declare-fun res!1524488 () Bool)

(assert (=> b!3765652 (=> (not res!1524488) (not e!2328974))))

(assert (=> b!3765652 (= res!1524488 (= (size!30245 lt!1302982) (+ (size!30245 acc!396) (size!30245 lt!1302952))))))

(assert (= (and d!1100823 c!652353) b!3765650))

(assert (= (and d!1100823 (not c!652353)) b!3765651))

(assert (= (and d!1100823 res!1524489) b!3765652))

(assert (= (and b!3765652 res!1524488) b!3765653))

(declare-fun m!4261783 () Bool)

(assert (=> b!3765651 m!4261783))

(declare-fun m!4261785 () Bool)

(assert (=> d!1100823 m!4261785))

(assert (=> d!1100823 m!4261769))

(assert (=> d!1100823 m!4261715))

(declare-fun m!4261787 () Bool)

(assert (=> b!3765652 m!4261787))

(assert (=> b!3765652 m!4261777))

(assert (=> b!3765652 m!4261721))

(assert (=> b!3765583 d!1100823))

(declare-fun b!3765654 () Bool)

(declare-fun e!2328975 () List!40306)

(assert (=> b!3765654 (= e!2328975 lt!1302953)))

(declare-fun b!3765655 () Bool)

(assert (=> b!3765655 (= e!2328975 (Cons!40182 (h!45602 lt!1302954) (++!9974 (t!304317 lt!1302954) lt!1302953)))))

(declare-fun lt!1302983 () List!40306)

(declare-fun b!3765657 () Bool)

(declare-fun e!2328976 () Bool)

(assert (=> b!3765657 (= e!2328976 (or (not (= lt!1302953 Nil!40182)) (= lt!1302983 lt!1302954)))))

(declare-fun d!1100827 () Bool)

(assert (=> d!1100827 e!2328976))

(declare-fun res!1524491 () Bool)

(assert (=> d!1100827 (=> (not res!1524491) (not e!2328976))))

(assert (=> d!1100827 (= res!1524491 (= (content!5901 lt!1302983) ((_ map or) (content!5901 lt!1302954) (content!5901 lt!1302953))))))

(assert (=> d!1100827 (= lt!1302983 e!2328975)))

(declare-fun c!652354 () Bool)

(assert (=> d!1100827 (= c!652354 ((_ is Nil!40182) lt!1302954))))

(assert (=> d!1100827 (= (++!9974 lt!1302954 lt!1302953) lt!1302983)))

(declare-fun b!3765656 () Bool)

(declare-fun res!1524490 () Bool)

(assert (=> b!3765656 (=> (not res!1524490) (not e!2328976))))

(assert (=> b!3765656 (= res!1524490 (= (size!30245 lt!1302983) (+ (size!30245 lt!1302954) (size!30245 lt!1302953))))))

(assert (= (and d!1100827 c!652354) b!3765654))

(assert (= (and d!1100827 (not c!652354)) b!3765655))

(assert (= (and d!1100827 res!1524491) b!3765656))

(assert (= (and b!3765656 res!1524490) b!3765657))

(declare-fun m!4261789 () Bool)

(assert (=> b!3765655 m!4261789))

(declare-fun m!4261791 () Bool)

(assert (=> d!1100827 m!4261791))

(declare-fun m!4261793 () Bool)

(assert (=> d!1100827 m!4261793))

(assert (=> d!1100827 m!4261717))

(declare-fun m!4261795 () Bool)

(assert (=> b!3765656 m!4261795))

(declare-fun m!4261797 () Bool)

(assert (=> b!3765656 m!4261797))

(assert (=> b!3765656 m!4261723))

(assert (=> b!3765583 d!1100827))

(declare-fun d!1100829 () Bool)

(assert (=> d!1100829 (= (++!9974 (++!9974 acc!396 lt!1302952) lt!1302953) (++!9974 acc!396 (++!9974 lt!1302952 lt!1302953)))))

(declare-fun lt!1302989 () Unit!57902)

(declare-fun choose!22297 (List!40306 List!40306 List!40306) Unit!57902)

(assert (=> d!1100829 (= lt!1302989 (choose!22297 acc!396 lt!1302952 lt!1302953))))

(assert (=> d!1100829 (= (lemmaConcatAssociativity!2114 acc!396 lt!1302952 lt!1302953) lt!1302989)))

(declare-fun bs!575998 () Bool)

(assert (= bs!575998 d!1100829))

(assert (=> bs!575998 m!4261675))

(declare-fun m!4261799 () Bool)

(assert (=> bs!575998 m!4261799))

(assert (=> bs!575998 m!4261675))

(declare-fun m!4261805 () Bool)

(assert (=> bs!575998 m!4261805))

(assert (=> bs!575998 m!4261679))

(assert (=> bs!575998 m!4261681))

(assert (=> bs!575998 m!4261679))

(assert (=> b!3765583 d!1100829))

(declare-fun d!1100831 () Bool)

(declare-fun list!14853 (Conc!12317) List!40306)

(assert (=> d!1100831 (= (list!14852 (charsOf!4020 (h!45603 l!4168))) (list!14853 (c!652329 (charsOf!4020 (h!45603 l!4168)))))))

(declare-fun bs!575999 () Bool)

(assert (= bs!575999 d!1100831))

(declare-fun m!4261829 () Bool)

(assert (=> bs!575999 m!4261829))

(assert (=> b!3765583 d!1100831))

(declare-fun d!1100837 () Bool)

(declare-fun c!652357 () Bool)

(assert (=> d!1100837 (= c!652357 ((_ is Cons!40183) l!4168))))

(declare-fun e!2328984 () List!40306)

(assert (=> d!1100837 (= (printList!1671 thiss!13564 l!4168) e!2328984)))

(declare-fun b!3765671 () Bool)

(assert (=> b!3765671 (= e!2328984 (++!9974 (list!14852 (charsOf!4020 (h!45603 l!4168))) (printList!1671 thiss!13564 (t!304318 l!4168))))))

(declare-fun b!3765672 () Bool)

(assert (=> b!3765672 (= e!2328984 Nil!40182)))

(assert (= (and d!1100837 c!652357) b!3765671))

(assert (= (and d!1100837 (not c!652357)) b!3765672))

(assert (=> b!3765671 m!4261671))

(assert (=> b!3765671 m!4261671))

(assert (=> b!3765671 m!4261673))

(assert (=> b!3765671 m!4261685))

(assert (=> b!3765671 m!4261673))

(assert (=> b!3765671 m!4261685))

(declare-fun m!4261833 () Bool)

(assert (=> b!3765671 m!4261833))

(assert (=> b!3765583 d!1100837))

(declare-fun d!1100841 () Bool)

(declare-fun lt!1302995 () BalanceConc!24228)

(assert (=> d!1100841 (= (list!14852 lt!1302995) (originalCharacters!6770 (h!45603 l!4168)))))

(declare-fun dynLambda!17352 (Int TokenValue!6400) BalanceConc!24228)

(assert (=> d!1100841 (= lt!1302995 (dynLambda!17352 (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))) (value!196452 (h!45603 l!4168))))))

(assert (=> d!1100841 (= (charsOf!4020 (h!45603 l!4168)) lt!1302995)))

(declare-fun b_lambda!110477 () Bool)

(assert (=> (not b_lambda!110477) (not d!1100841)))

(declare-fun t!304322 () Bool)

(declare-fun tb!215583 () Bool)

(assert (=> (and b!3765582 (= (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))) (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168))))) t!304322) tb!215583))

(declare-fun b!3765683 () Bool)

(declare-fun e!2328990 () Bool)

(declare-fun tp!1150382 () Bool)

(declare-fun inv!53950 (Conc!12317) Bool)

(assert (=> b!3765683 (= e!2328990 (and (inv!53950 (c!652329 (dynLambda!17352 (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))) (value!196452 (h!45603 l!4168))))) tp!1150382))))

(declare-fun result!263274 () Bool)

(declare-fun inv!53951 (BalanceConc!24228) Bool)

(assert (=> tb!215583 (= result!263274 (and (inv!53951 (dynLambda!17352 (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))) (value!196452 (h!45603 l!4168)))) e!2328990))))

(assert (= tb!215583 b!3765683))

(declare-fun m!4261849 () Bool)

(assert (=> b!3765683 m!4261849))

(declare-fun m!4261851 () Bool)

(assert (=> tb!215583 m!4261851))

(assert (=> d!1100841 t!304322))

(declare-fun b_and!279677 () Bool)

(assert (= b_and!279673 (and (=> t!304322 result!263274) b_and!279677)))

(declare-fun m!4261853 () Bool)

(assert (=> d!1100841 m!4261853))

(declare-fun m!4261855 () Bool)

(assert (=> d!1100841 m!4261855))

(assert (=> b!3765583 d!1100841))

(declare-fun b!3765684 () Bool)

(declare-fun e!2328991 () List!40306)

(assert (=> b!3765684 (= e!2328991 (printList!1671 thiss!13564 l!4168))))

(declare-fun b!3765685 () Bool)

(assert (=> b!3765685 (= e!2328991 (Cons!40182 (h!45602 acc!396) (++!9974 (t!304317 acc!396) (printList!1671 thiss!13564 l!4168))))))

(declare-fun lt!1302996 () List!40306)

(declare-fun e!2328992 () Bool)

(declare-fun b!3765687 () Bool)

(assert (=> b!3765687 (= e!2328992 (or (not (= (printList!1671 thiss!13564 l!4168) Nil!40182)) (= lt!1302996 acc!396)))))

(declare-fun d!1100849 () Bool)

(assert (=> d!1100849 e!2328992))

(declare-fun res!1524499 () Bool)

(assert (=> d!1100849 (=> (not res!1524499) (not e!2328992))))

(assert (=> d!1100849 (= res!1524499 (= (content!5901 lt!1302996) ((_ map or) (content!5901 acc!396) (content!5901 (printList!1671 thiss!13564 l!4168)))))))

(assert (=> d!1100849 (= lt!1302996 e!2328991)))

(declare-fun c!652360 () Bool)

(assert (=> d!1100849 (= c!652360 ((_ is Nil!40182) acc!396))))

(assert (=> d!1100849 (= (++!9974 acc!396 (printList!1671 thiss!13564 l!4168)) lt!1302996)))

(declare-fun b!3765686 () Bool)

(declare-fun res!1524498 () Bool)

(assert (=> b!3765686 (=> (not res!1524498) (not e!2328992))))

(assert (=> b!3765686 (= res!1524498 (= (size!30245 lt!1302996) (+ (size!30245 acc!396) (size!30245 (printList!1671 thiss!13564 l!4168)))))))

(assert (= (and d!1100849 c!652360) b!3765684))

(assert (= (and d!1100849 (not c!652360)) b!3765685))

(assert (= (and d!1100849 res!1524499) b!3765686))

(assert (= (and b!3765686 res!1524498) b!3765687))

(assert (=> b!3765685 m!4261665))

(declare-fun m!4261857 () Bool)

(assert (=> b!3765685 m!4261857))

(declare-fun m!4261859 () Bool)

(assert (=> d!1100849 m!4261859))

(assert (=> d!1100849 m!4261769))

(assert (=> d!1100849 m!4261665))

(declare-fun m!4261861 () Bool)

(assert (=> d!1100849 m!4261861))

(declare-fun m!4261863 () Bool)

(assert (=> b!3765686 m!4261863))

(assert (=> b!3765686 m!4261777))

(assert (=> b!3765686 m!4261665))

(declare-fun m!4261865 () Bool)

(assert (=> b!3765686 m!4261865))

(assert (=> b!3765583 d!1100849))

(declare-fun d!1100851 () Bool)

(assert (=> d!1100851 (= (inv!53943 (tag!7030 (rule!8934 (h!45603 l!4168)))) (= (mod (str.len (value!196426 (tag!7030 (rule!8934 (h!45603 l!4168))))) 2) 0))))

(assert (=> b!3765581 d!1100851))

(declare-fun d!1100853 () Bool)

(declare-fun res!1524502 () Bool)

(declare-fun e!2328998 () Bool)

(assert (=> d!1100853 (=> (not res!1524502) (not e!2328998))))

(declare-fun semiInverseModEq!2638 (Int Int) Bool)

(assert (=> d!1100853 (= res!1524502 (semiInverseModEq!2638 (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))) (toValue!8530 (transformation!6170 (rule!8934 (h!45603 l!4168))))))))

(assert (=> d!1100853 (= (inv!53946 (transformation!6170 (rule!8934 (h!45603 l!4168)))) e!2328998)))

(declare-fun b!3765696 () Bool)

(declare-fun equivClasses!2537 (Int Int) Bool)

(assert (=> b!3765696 (= e!2328998 (equivClasses!2537 (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))) (toValue!8530 (transformation!6170 (rule!8934 (h!45603 l!4168))))))))

(assert (= (and d!1100853 res!1524502) b!3765696))

(declare-fun m!4261867 () Bool)

(assert (=> d!1100853 m!4261867))

(declare-fun m!4261869 () Bool)

(assert (=> b!3765696 m!4261869))

(assert (=> b!3765581 d!1100853))

(declare-fun d!1100855 () Bool)

(declare-fun res!1524513 () Bool)

(declare-fun e!2329004 () Bool)

(assert (=> d!1100855 (=> (not res!1524513) (not e!2329004))))

(declare-fun isEmpty!23597 (List!40306) Bool)

(assert (=> d!1100855 (= res!1524513 (not (isEmpty!23597 (originalCharacters!6770 (h!45603 l!4168)))))))

(assert (=> d!1100855 (= (inv!53947 (h!45603 l!4168)) e!2329004)))

(declare-fun b!3765707 () Bool)

(declare-fun res!1524514 () Bool)

(assert (=> b!3765707 (=> (not res!1524514) (not e!2329004))))

(assert (=> b!3765707 (= res!1524514 (= (originalCharacters!6770 (h!45603 l!4168)) (list!14852 (dynLambda!17352 (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))) (value!196452 (h!45603 l!4168))))))))

(declare-fun b!3765708 () Bool)

(assert (=> b!3765708 (= e!2329004 (= (size!30243 (h!45603 l!4168)) (size!30245 (originalCharacters!6770 (h!45603 l!4168)))))))

(assert (= (and d!1100855 res!1524513) b!3765707))

(assert (= (and b!3765707 res!1524514) b!3765708))

(declare-fun b_lambda!110481 () Bool)

(assert (=> (not b_lambda!110481) (not b!3765707)))

(assert (=> b!3765707 t!304322))

(declare-fun b_and!279681 () Bool)

(assert (= b_and!279677 (and (=> t!304322 result!263274) b_and!279681)))

(declare-fun m!4261893 () Bool)

(assert (=> d!1100855 m!4261893))

(assert (=> b!3765707 m!4261855))

(assert (=> b!3765707 m!4261855))

(declare-fun m!4261895 () Bool)

(assert (=> b!3765707 m!4261895))

(declare-fun m!4261897 () Bool)

(assert (=> b!3765708 m!4261897))

(assert (=> b!3765580 d!1100855))

(declare-fun b!3765713 () Bool)

(declare-fun e!2329007 () Bool)

(declare-fun tp!1150385 () Bool)

(assert (=> b!3765713 (= e!2329007 (and tp_is_empty!19145 tp!1150385))))

(assert (=> b!3765584 (= tp!1150373 e!2329007)))

(assert (= (and b!3765584 ((_ is Cons!40182) (t!304317 acc!396))) b!3765713))

(declare-fun b!3765714 () Bool)

(declare-fun e!2329008 () Bool)

(declare-fun tp!1150386 () Bool)

(assert (=> b!3765714 (= e!2329008 (and tp_is_empty!19145 tp!1150386))))

(assert (=> b!3765579 (= tp!1150375 e!2329008)))

(assert (= (and b!3765579 ((_ is Cons!40182) (originalCharacters!6770 (h!45603 l!4168)))) b!3765714))

(declare-fun b!3765738 () Bool)

(declare-fun e!2329017 () Bool)

(declare-fun tp!1150398 () Bool)

(declare-fun tp!1150397 () Bool)

(assert (=> b!3765738 (= e!2329017 (and tp!1150398 tp!1150397))))

(declare-fun b!3765737 () Bool)

(declare-fun tp!1150399 () Bool)

(assert (=> b!3765737 (= e!2329017 tp!1150399)))

(declare-fun b!3765735 () Bool)

(assert (=> b!3765735 (= e!2329017 tp_is_empty!19145)))

(declare-fun b!3765736 () Bool)

(declare-fun tp!1150401 () Bool)

(declare-fun tp!1150400 () Bool)

(assert (=> b!3765736 (= e!2329017 (and tp!1150401 tp!1150400))))

(assert (=> b!3765581 (= tp!1150374 e!2329017)))

(assert (= (and b!3765581 ((_ is ElementMatch!11075) (regex!6170 (rule!8934 (h!45603 l!4168))))) b!3765735))

(assert (= (and b!3765581 ((_ is Concat!17475) (regex!6170 (rule!8934 (h!45603 l!4168))))) b!3765736))

(assert (= (and b!3765581 ((_ is Star!11075) (regex!6170 (rule!8934 (h!45603 l!4168))))) b!3765737))

(assert (= (and b!3765581 ((_ is Union!11075) (regex!6170 (rule!8934 (h!45603 l!4168))))) b!3765738))

(declare-fun b!3765757 () Bool)

(declare-fun b_free!100873 () Bool)

(declare-fun b_next!101577 () Bool)

(assert (=> b!3765757 (= b_free!100873 (not b_next!101577))))

(declare-fun tp!1150415 () Bool)

(declare-fun b_and!279683 () Bool)

(assert (=> b!3765757 (= tp!1150415 b_and!279683)))

(declare-fun b_free!100875 () Bool)

(declare-fun b_next!101579 () Bool)

(assert (=> b!3765757 (= b_free!100875 (not b_next!101579))))

(declare-fun t!304324 () Bool)

(declare-fun tb!215585 () Bool)

(assert (=> (and b!3765757 (= (toChars!8389 (transformation!6170 (rule!8934 (h!45603 (t!304318 l!4168))))) (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168))))) t!304324) tb!215585))

(declare-fun result!263284 () Bool)

(assert (= result!263284 result!263274))

(assert (=> d!1100841 t!304324))

(assert (=> b!3765707 t!304324))

(declare-fun tp!1150413 () Bool)

(declare-fun b_and!279685 () Bool)

(assert (=> b!3765757 (= tp!1150413 (and (=> t!304324 result!263284) b_and!279685))))

(declare-fun b!3765756 () Bool)

(declare-fun e!2329033 () Bool)

(declare-fun tp!1150414 () Bool)

(declare-fun e!2329034 () Bool)

(assert (=> b!3765756 (= e!2329033 (and tp!1150414 (inv!53943 (tag!7030 (rule!8934 (h!45603 (t!304318 l!4168))))) (inv!53946 (transformation!6170 (rule!8934 (h!45603 (t!304318 l!4168))))) e!2329034))))

(declare-fun b!3765755 () Bool)

(declare-fun tp!1150416 () Bool)

(declare-fun e!2329037 () Bool)

(assert (=> b!3765755 (= e!2329037 (and (inv!21 (value!196452 (h!45603 (t!304318 l!4168)))) e!2329033 tp!1150416))))

(declare-fun e!2329035 () Bool)

(assert (=> b!3765580 (= tp!1150376 e!2329035)))

(assert (=> b!3765757 (= e!2329034 (and tp!1150415 tp!1150413))))

(declare-fun b!3765754 () Bool)

(declare-fun tp!1150412 () Bool)

(assert (=> b!3765754 (= e!2329035 (and (inv!53947 (h!45603 (t!304318 l!4168))) e!2329037 tp!1150412))))

(assert (= b!3765756 b!3765757))

(assert (= b!3765755 b!3765756))

(assert (= b!3765754 b!3765755))

(assert (= (and b!3765580 ((_ is Cons!40183) (t!304318 l!4168))) b!3765754))

(declare-fun m!4261905 () Bool)

(assert (=> b!3765756 m!4261905))

(declare-fun m!4261907 () Bool)

(assert (=> b!3765756 m!4261907))

(declare-fun m!4261909 () Bool)

(assert (=> b!3765755 m!4261909))

(declare-fun m!4261911 () Bool)

(assert (=> b!3765754 m!4261911))

(declare-fun b_lambda!110483 () Bool)

(assert (= b_lambda!110477 (or (and b!3765582 b_free!100871) (and b!3765757 b_free!100875 (= (toChars!8389 (transformation!6170 (rule!8934 (h!45603 (t!304318 l!4168))))) (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))))) b_lambda!110483)))

(declare-fun b_lambda!110485 () Bool)

(assert (= b_lambda!110481 (or (and b!3765582 b_free!100871) (and b!3765757 b_free!100875 (= (toChars!8389 (transformation!6170 (rule!8934 (h!45603 (t!304318 l!4168))))) (toChars!8389 (transformation!6170 (rule!8934 (h!45603 l!4168)))))) b_lambda!110485)))

(check-sat (not d!1100827) (not b!3765652) b_and!279685 (not b!3765756) (not b!3765754) (not b!3765651) (not b!3765738) (not b!3765683) (not b!3765686) (not b!3765655) (not d!1100831) (not b!3765713) (not tb!215583) (not b!3765671) b_and!279683 tp_is_empty!19145 (not b!3765648) (not b!3765622) (not b!3765696) (not b_next!101573) (not d!1100849) (not b!3765737) (not d!1100811) (not b_next!101575) (not b!3765685) (not d!1100823) (not b!3765595) (not d!1100855) (not b!3765647) (not b_lambda!110483) (not b_next!101579) (not d!1100829) (not b!3765597) (not b!3765707) (not b_lambda!110485) (not b!3765656) (not b!3765714) (not d!1100841) (not b!3765644) (not d!1100815) b_and!279671 (not b!3765736) (not b!3765621) (not d!1100821) (not b!3765604) (not b!3765708) b_and!279681 (not b!3765598) (not b_next!101577) (not b!3765755) (not d!1100853))
(check-sat b_and!279683 (not b_next!101573) b_and!279685 (not b_next!101575) (not b_next!101579) b_and!279671 b_and!279681 (not b_next!101577))
