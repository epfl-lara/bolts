; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!386796 () Bool)

(assert start!386796)

(declare-fun b!4088652 () Bool)

(declare-fun b_free!114265 () Bool)

(declare-fun b_next!114969 () Bool)

(assert (=> b!4088652 (= b_free!114265 (not b_next!114969))))

(declare-fun tp!1237863 () Bool)

(declare-fun b_and!314967 () Bool)

(assert (=> b!4088652 (= tp!1237863 b_and!314967)))

(declare-fun b_free!114267 () Bool)

(declare-fun b_next!114971 () Bool)

(assert (=> b!4088652 (= b_free!114267 (not b_next!114971))))

(declare-fun tp!1237870 () Bool)

(declare-fun b_and!314969 () Bool)

(assert (=> b!4088652 (= tp!1237870 b_and!314969)))

(declare-fun b!4088650 () Bool)

(declare-fun b_free!114269 () Bool)

(declare-fun b_next!114973 () Bool)

(assert (=> b!4088650 (= b_free!114269 (not b_next!114973))))

(declare-fun tp!1237862 () Bool)

(declare-fun b_and!314971 () Bool)

(assert (=> b!4088650 (= tp!1237862 b_and!314971)))

(declare-fun b_free!114271 () Bool)

(declare-fun b_next!114975 () Bool)

(assert (=> b!4088650 (= b_free!114271 (not b_next!114975))))

(declare-fun tp!1237864 () Bool)

(declare-fun b_and!314973 () Bool)

(assert (=> b!4088650 (= tp!1237864 b_and!314973)))

(declare-fun b!4088647 () Bool)

(declare-fun e!2537530 () Bool)

(declare-fun e!2537534 () Bool)

(assert (=> b!4088647 (= e!2537530 e!2537534)))

(declare-fun res!1670800 () Bool)

(assert (=> b!4088647 (=> (not res!1670800) (not e!2537534))))

(declare-datatypes ((LexerInterface!6675 0))(
  ( (LexerInterfaceExt!6672 (__x!26849 Int)) (Lexer!6673) )
))
(declare-fun thiss!26199 () LexerInterface!6675)

(declare-datatypes ((C!24168 0))(
  ( (C!24169 (val!14194 Int)) )
))
(declare-datatypes ((List!43957 0))(
  ( (Nil!43833) (Cons!43833 (h!49253 C!24168) (t!338460 List!43957)) )
))
(declare-fun suffix!1518 () List!43957)

(declare-fun input!3411 () List!43957)

(declare-datatypes ((List!43958 0))(
  ( (Nil!43834) (Cons!43834 (h!49254 (_ BitVec 16)) (t!338461 List!43958)) )
))
(declare-datatypes ((TokenValue!7316 0))(
  ( (FloatLiteralValue!14632 (text!51657 List!43958)) (TokenValueExt!7315 (__x!26850 Int)) (Broken!36580 (value!222577 List!43958)) (Object!7439) (End!7316) (Def!7316) (Underscore!7316) (Match!7316) (Else!7316) (Error!7316) (Case!7316) (If!7316) (Extends!7316) (Abstract!7316) (Class!7316) (Val!7316) (DelimiterValue!14632 (del!7376 List!43958)) (KeywordValue!7322 (value!222578 List!43958)) (CommentValue!14632 (value!222579 List!43958)) (WhitespaceValue!14632 (value!222580 List!43958)) (IndentationValue!7316 (value!222581 List!43958)) (String!50329) (Int32!7316) (Broken!36581 (value!222582 List!43958)) (Boolean!7317) (Unit!63360) (OperatorValue!7319 (op!7376 List!43958)) (IdentifierValue!14632 (value!222583 List!43958)) (IdentifierValue!14633 (value!222584 List!43958)) (WhitespaceValue!14633 (value!222585 List!43958)) (True!14632) (False!14632) (Broken!36582 (value!222586 List!43958)) (Broken!36583 (value!222587 List!43958)) (True!14633) (RightBrace!7316) (RightBracket!7316) (Colon!7316) (Null!7316) (Comma!7316) (LeftBracket!7316) (False!14633) (LeftBrace!7316) (ImaginaryLiteralValue!7316 (text!51658 List!43958)) (StringLiteralValue!21948 (value!222588 List!43958)) (EOFValue!7316 (value!222589 List!43958)) (IdentValue!7316 (value!222590 List!43958)) (DelimiterValue!14633 (value!222591 List!43958)) (DedentValue!7316 (value!222592 List!43958)) (NewLineValue!7316 (value!222593 List!43958)) (IntegerValue!21948 (value!222594 (_ BitVec 32)) (text!51659 List!43958)) (IntegerValue!21949 (value!222595 Int) (text!51660 List!43958)) (Times!7316) (Or!7316) (Equal!7316) (Minus!7316) (Broken!36584 (value!222596 List!43958)) (And!7316) (Div!7316) (LessEqual!7316) (Mod!7316) (Concat!19307) (Not!7316) (Plus!7316) (SpaceValue!7316 (value!222597 List!43958)) (IntegerValue!21950 (value!222598 Int) (text!51661 List!43958)) (StringLiteralValue!21949 (text!51662 List!43958)) (FloatLiteralValue!14633 (text!51663 List!43958)) (BytesLiteralValue!7316 (value!222599 List!43958)) (CommentValue!14633 (value!222600 List!43958)) (StringLiteralValue!21950 (value!222601 List!43958)) (ErrorTokenValue!7316 (msg!7377 List!43958)) )
))
(declare-datatypes ((Regex!11991 0))(
  ( (ElementMatch!11991 (c!704792 C!24168)) (Concat!19308 (regOne!24494 Regex!11991) (regTwo!24494 Regex!11991)) (EmptyExpr!11991) (Star!11991 (reg!12320 Regex!11991)) (EmptyLang!11991) (Union!11991 (regOne!24495 Regex!11991) (regTwo!24495 Regex!11991)) )
))
(declare-datatypes ((String!50330 0))(
  ( (String!50331 (value!222602 String)) )
))
(declare-datatypes ((IArray!26599 0))(
  ( (IArray!26600 (innerList!13357 List!43957)) )
))
(declare-datatypes ((Conc!13297 0))(
  ( (Node!13297 (left!32946 Conc!13297) (right!33276 Conc!13297) (csize!26824 Int) (cheight!13508 Int)) (Leaf!20555 (xs!16603 IArray!26599) (csize!26825 Int)) (Empty!13297) )
))
(declare-datatypes ((BalanceConc!26188 0))(
  ( (BalanceConc!26189 (c!704793 Conc!13297)) )
))
(declare-datatypes ((TokenValueInjection!14060 0))(
  ( (TokenValueInjection!14061 (toValue!9674 Int) (toChars!9533 Int)) )
))
(declare-datatypes ((Rule!13972 0))(
  ( (Rule!13973 (regex!7086 Regex!11991) (tag!7946 String!50330) (isSeparator!7086 Bool) (transformation!7086 TokenValueInjection!14060)) )
))
(declare-fun r!4213 () Rule!13972)

(declare-datatypes ((List!43959 0))(
  ( (Nil!43835) (Cons!43835 (h!49255 Rule!13972) (t!338462 List!43959)) )
))
(declare-fun rules!3870 () List!43959)

(declare-fun lt!1462432 () BalanceConc!26188)

(declare-fun p!2988 () List!43957)

(declare-datatypes ((Token!13298 0))(
  ( (Token!13299 (value!222603 TokenValue!7316) (rule!10220 Rule!13972) (size!32740 Int) (originalCharacters!7680 List!43957)) )
))
(declare-datatypes ((tuple2!42768 0))(
  ( (tuple2!42769 (_1!24518 Token!13298) (_2!24518 List!43957)) )
))
(declare-datatypes ((Option!9492 0))(
  ( (None!9491) (Some!9491 (v!39971 tuple2!42768)) )
))
(declare-fun maxPrefix!3965 (LexerInterface!6675 List!43959 List!43957) Option!9492)

(declare-fun apply!10269 (TokenValueInjection!14060 BalanceConc!26188) TokenValue!7316)

(declare-fun size!32741 (List!43957) Int)

(assert (=> b!4088647 (= res!1670800 (= (maxPrefix!3965 thiss!26199 rules!3870 input!3411) (Some!9491 (tuple2!42769 (Token!13299 (apply!10269 (transformation!7086 r!4213) lt!1462432) r!4213 (size!32741 p!2988) p!2988) suffix!1518))))))

(declare-datatypes ((Unit!63361 0))(
  ( (Unit!63362) )
))
(declare-fun lt!1462430 () Unit!63361)

(declare-fun lemmaSemiInverse!2053 (TokenValueInjection!14060 BalanceConc!26188) Unit!63361)

(assert (=> b!4088647 (= lt!1462430 (lemmaSemiInverse!2053 (transformation!7086 r!4213) lt!1462432))))

(declare-fun seqFromList!5303 (List!43957) BalanceConc!26188)

(assert (=> b!4088647 (= lt!1462432 (seqFromList!5303 p!2988))))

(declare-fun b!4088648 () Bool)

(declare-fun res!1670804 () Bool)

(assert (=> b!4088648 (=> (not res!1670804) (not e!2537530))))

(declare-fun rulesInvariant!6018 (LexerInterface!6675 List!43959) Bool)

(assert (=> b!4088648 (= res!1670804 (rulesInvariant!6018 thiss!26199 rules!3870))))

(declare-fun b!4088649 () Bool)

(declare-fun e!2537533 () Bool)

(declare-fun tp_is_empty!20985 () Bool)

(declare-fun tp!1237868 () Bool)

(assert (=> b!4088649 (= e!2537533 (and tp_is_empty!20985 tp!1237868))))

(declare-fun e!2537540 () Bool)

(assert (=> b!4088650 (= e!2537540 (and tp!1237862 tp!1237864))))

(declare-fun b!4088651 () Bool)

(declare-fun e!2537532 () Bool)

(declare-fun e!2537528 () Bool)

(declare-fun tp!1237861 () Bool)

(assert (=> b!4088651 (= e!2537532 (and e!2537528 tp!1237861))))

(declare-fun e!2537538 () Bool)

(assert (=> b!4088652 (= e!2537538 (and tp!1237863 tp!1237870))))

(declare-fun b!4088653 () Bool)

(declare-fun e!2537529 () Bool)

(declare-fun isEmpty!26211 (List!43959) Bool)

(assert (=> b!4088653 (= e!2537529 (not (isEmpty!26211 (t!338462 rules!3870))))))

(declare-fun b!4088655 () Bool)

(declare-fun e!2537539 () Bool)

(assert (=> b!4088655 (= e!2537539 e!2537529)))

(declare-fun res!1670798 () Bool)

(assert (=> b!4088655 (=> res!1670798 e!2537529)))

(declare-fun isEmpty!26212 (Option!9492) Bool)

(declare-fun maxPrefixOneRule!2947 (LexerInterface!6675 Rule!13972 List!43957) Option!9492)

(assert (=> b!4088655 (= res!1670798 (not (isEmpty!26212 (maxPrefixOneRule!2947 thiss!26199 (h!49255 rules!3870) input!3411))))))

(assert (=> b!4088655 (rulesInvariant!6018 thiss!26199 (t!338462 rules!3870))))

(declare-fun lt!1462433 () Unit!63361)

(declare-fun lemmaInvariantOnRulesThenOnTail!788 (LexerInterface!6675 Rule!13972 List!43959) Unit!63361)

(assert (=> b!4088655 (= lt!1462433 (lemmaInvariantOnRulesThenOnTail!788 thiss!26199 (h!49255 rules!3870) (t!338462 rules!3870)))))

(declare-fun b!4088656 () Bool)

(declare-fun e!2537537 () Bool)

(declare-fun tp!1237869 () Bool)

(assert (=> b!4088656 (= e!2537537 (and tp_is_empty!20985 tp!1237869))))

(declare-fun b!4088657 () Bool)

(declare-fun res!1670801 () Bool)

(assert (=> b!4088657 (=> (not res!1670801) (not e!2537530))))

(declare-fun isEmpty!26213 (List!43957) Bool)

(assert (=> b!4088657 (= res!1670801 (not (isEmpty!26213 p!2988)))))

(declare-fun b!4088658 () Bool)

(declare-fun e!2537536 () Bool)

(declare-fun tp!1237866 () Bool)

(declare-fun inv!58530 (String!50330) Bool)

(declare-fun inv!58532 (TokenValueInjection!14060) Bool)

(assert (=> b!4088658 (= e!2537536 (and tp!1237866 (inv!58530 (tag!7946 r!4213)) (inv!58532 (transformation!7086 r!4213)) e!2537540))))

(declare-fun b!4088659 () Bool)

(declare-fun res!1670799 () Bool)

(assert (=> b!4088659 (=> (not res!1670799) (not e!2537530))))

(assert (=> b!4088659 (= res!1670799 (not (isEmpty!26211 rules!3870)))))

(declare-fun res!1670806 () Bool)

(assert (=> start!386796 (=> (not res!1670806) (not e!2537530))))

(get-info :version)

(assert (=> start!386796 (= res!1670806 ((_ is Lexer!6673) thiss!26199))))

(assert (=> start!386796 e!2537530))

(assert (=> start!386796 true))

(assert (=> start!386796 e!2537537))

(assert (=> start!386796 e!2537532))

(declare-fun e!2537535 () Bool)

(assert (=> start!386796 e!2537535))

(assert (=> start!386796 e!2537533))

(assert (=> start!386796 e!2537536))

(declare-fun b!4088654 () Bool)

(declare-fun tp!1237865 () Bool)

(assert (=> b!4088654 (= e!2537535 (and tp_is_empty!20985 tp!1237865))))

(declare-fun b!4088660 () Bool)

(declare-fun res!1670805 () Bool)

(assert (=> b!4088660 (=> (not res!1670805) (not e!2537530))))

(declare-fun ++!11492 (List!43957 List!43957) List!43957)

(assert (=> b!4088660 (= res!1670805 (= input!3411 (++!11492 p!2988 suffix!1518)))))

(declare-fun b!4088661 () Bool)

(declare-fun res!1670797 () Bool)

(assert (=> b!4088661 (=> res!1670797 e!2537539)))

(assert (=> b!4088661 (= res!1670797 (or (and ((_ is Cons!43835) rules!3870) (= (h!49255 rules!3870) r!4213)) (not ((_ is Cons!43835) rules!3870)) (= (h!49255 rules!3870) r!4213)))))

(declare-fun b!4088662 () Bool)

(declare-fun tp!1237867 () Bool)

(assert (=> b!4088662 (= e!2537528 (and tp!1237867 (inv!58530 (tag!7946 (h!49255 rules!3870))) (inv!58532 (transformation!7086 (h!49255 rules!3870))) e!2537538))))

(declare-fun b!4088663 () Bool)

(declare-fun res!1670802 () Bool)

(assert (=> b!4088663 (=> (not res!1670802) (not e!2537530))))

(declare-fun contains!8765 (List!43959 Rule!13972) Bool)

(assert (=> b!4088663 (= res!1670802 (contains!8765 rules!3870 r!4213))))

(declare-fun b!4088664 () Bool)

(assert (=> b!4088664 (= e!2537534 (not e!2537539))))

(declare-fun res!1670803 () Bool)

(assert (=> b!4088664 (=> res!1670803 e!2537539)))

(declare-fun matchR!5932 (Regex!11991 List!43957) Bool)

(assert (=> b!4088664 (= res!1670803 (not (matchR!5932 (regex!7086 r!4213) p!2988)))))

(declare-fun ruleValid!3006 (LexerInterface!6675 Rule!13972) Bool)

(assert (=> b!4088664 (ruleValid!3006 thiss!26199 r!4213)))

(declare-fun lt!1462431 () Unit!63361)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2072 (LexerInterface!6675 Rule!13972 List!43959) Unit!63361)

(assert (=> b!4088664 (= lt!1462431 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2072 thiss!26199 r!4213 rules!3870))))

(assert (= (and start!386796 res!1670806) b!4088659))

(assert (= (and b!4088659 res!1670799) b!4088648))

(assert (= (and b!4088648 res!1670804) b!4088663))

(assert (= (and b!4088663 res!1670802) b!4088660))

(assert (= (and b!4088660 res!1670805) b!4088657))

(assert (= (and b!4088657 res!1670801) b!4088647))

(assert (= (and b!4088647 res!1670800) b!4088664))

(assert (= (and b!4088664 (not res!1670803)) b!4088661))

(assert (= (and b!4088661 (not res!1670797)) b!4088655))

(assert (= (and b!4088655 (not res!1670798)) b!4088653))

(assert (= (and start!386796 ((_ is Cons!43833) suffix!1518)) b!4088656))

(assert (= b!4088662 b!4088652))

(assert (= b!4088651 b!4088662))

(assert (= (and start!386796 ((_ is Cons!43835) rules!3870)) b!4088651))

(assert (= (and start!386796 ((_ is Cons!43833) p!2988)) b!4088654))

(assert (= (and start!386796 ((_ is Cons!43833) input!3411)) b!4088649))

(assert (= b!4088658 b!4088650))

(assert (= start!386796 b!4088658))

(declare-fun m!4695609 () Bool)

(assert (=> b!4088659 m!4695609))

(declare-fun m!4695611 () Bool)

(assert (=> b!4088658 m!4695611))

(declare-fun m!4695613 () Bool)

(assert (=> b!4088658 m!4695613))

(declare-fun m!4695615 () Bool)

(assert (=> b!4088648 m!4695615))

(declare-fun m!4695617 () Bool)

(assert (=> b!4088653 m!4695617))

(declare-fun m!4695619 () Bool)

(assert (=> b!4088664 m!4695619))

(declare-fun m!4695621 () Bool)

(assert (=> b!4088664 m!4695621))

(declare-fun m!4695623 () Bool)

(assert (=> b!4088664 m!4695623))

(declare-fun m!4695625 () Bool)

(assert (=> b!4088662 m!4695625))

(declare-fun m!4695627 () Bool)

(assert (=> b!4088662 m!4695627))

(declare-fun m!4695629 () Bool)

(assert (=> b!4088655 m!4695629))

(assert (=> b!4088655 m!4695629))

(declare-fun m!4695631 () Bool)

(assert (=> b!4088655 m!4695631))

(declare-fun m!4695633 () Bool)

(assert (=> b!4088655 m!4695633))

(declare-fun m!4695635 () Bool)

(assert (=> b!4088655 m!4695635))

(declare-fun m!4695637 () Bool)

(assert (=> b!4088660 m!4695637))

(declare-fun m!4695639 () Bool)

(assert (=> b!4088647 m!4695639))

(declare-fun m!4695641 () Bool)

(assert (=> b!4088647 m!4695641))

(declare-fun m!4695643 () Bool)

(assert (=> b!4088647 m!4695643))

(declare-fun m!4695645 () Bool)

(assert (=> b!4088647 m!4695645))

(declare-fun m!4695647 () Bool)

(assert (=> b!4088647 m!4695647))

(declare-fun m!4695649 () Bool)

(assert (=> b!4088663 m!4695649))

(declare-fun m!4695651 () Bool)

(assert (=> b!4088657 m!4695651))

(check-sat (not b!4088658) (not b!4088647) (not b!4088664) (not b!4088649) (not b!4088662) (not b!4088655) (not b_next!114975) (not b!4088663) (not b!4088654) (not b!4088660) (not b!4088657) tp_is_empty!20985 (not b_next!114971) b_and!314967 (not b!4088651) (not b!4088656) b_and!314969 (not b!4088648) (not b!4088653) (not b!4088659) b_and!314973 (not b_next!114969) (not b_next!114973) b_and!314971)
(check-sat (not b_next!114971) b_and!314967 b_and!314969 (not b_next!114975) b_and!314973 (not b_next!114969) (not b_next!114973) b_and!314971)
(get-model)

(declare-fun b!4088676 () Bool)

(declare-fun e!2537546 () Bool)

(declare-fun lt!1462436 () List!43957)

(assert (=> b!4088676 (= e!2537546 (or (not (= suffix!1518 Nil!43833)) (= lt!1462436 p!2988)))))

(declare-fun b!4088673 () Bool)

(declare-fun e!2537545 () List!43957)

(assert (=> b!4088673 (= e!2537545 suffix!1518)))

(declare-fun b!4088674 () Bool)

(assert (=> b!4088674 (= e!2537545 (Cons!43833 (h!49253 p!2988) (++!11492 (t!338460 p!2988) suffix!1518)))))

(declare-fun b!4088675 () Bool)

(declare-fun res!1670819 () Bool)

(assert (=> b!4088675 (=> (not res!1670819) (not e!2537546))))

(assert (=> b!4088675 (= res!1670819 (= (size!32741 lt!1462436) (+ (size!32741 p!2988) (size!32741 suffix!1518))))))

(declare-fun d!1214070 () Bool)

(assert (=> d!1214070 e!2537546))

(declare-fun res!1670818 () Bool)

(assert (=> d!1214070 (=> (not res!1670818) (not e!2537546))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6746 (List!43957) (InoxSet C!24168))

(assert (=> d!1214070 (= res!1670818 (= (content!6746 lt!1462436) ((_ map or) (content!6746 p!2988) (content!6746 suffix!1518))))))

(assert (=> d!1214070 (= lt!1462436 e!2537545)))

(declare-fun c!704796 () Bool)

(assert (=> d!1214070 (= c!704796 ((_ is Nil!43833) p!2988))))

(assert (=> d!1214070 (= (++!11492 p!2988 suffix!1518) lt!1462436)))

(assert (= (and d!1214070 c!704796) b!4088673))

(assert (= (and d!1214070 (not c!704796)) b!4088674))

(assert (= (and d!1214070 res!1670818) b!4088675))

(assert (= (and b!4088675 res!1670819) b!4088676))

(declare-fun m!4695653 () Bool)

(assert (=> b!4088674 m!4695653))

(declare-fun m!4695655 () Bool)

(assert (=> b!4088675 m!4695655))

(assert (=> b!4088675 m!4695647))

(declare-fun m!4695657 () Bool)

(assert (=> b!4088675 m!4695657))

(declare-fun m!4695659 () Bool)

(assert (=> d!1214070 m!4695659))

(declare-fun m!4695661 () Bool)

(assert (=> d!1214070 m!4695661))

(declare-fun m!4695663 () Bool)

(assert (=> d!1214070 m!4695663))

(assert (=> b!4088660 d!1214070))

(declare-fun d!1214072 () Bool)

(assert (=> d!1214072 (= (isEmpty!26212 (maxPrefixOneRule!2947 thiss!26199 (h!49255 rules!3870) input!3411)) (not ((_ is Some!9491) (maxPrefixOneRule!2947 thiss!26199 (h!49255 rules!3870) input!3411))))))

(assert (=> b!4088655 d!1214072))

(declare-fun b!4088748 () Bool)

(declare-fun res!1670881 () Bool)

(declare-fun e!2537589 () Bool)

(assert (=> b!4088748 (=> (not res!1670881) (not e!2537589))))

(declare-fun lt!1462474 () Option!9492)

(declare-fun get!14375 (Option!9492) tuple2!42768)

(assert (=> b!4088748 (= res!1670881 (= (value!222603 (_1!24518 (get!14375 lt!1462474))) (apply!10269 (transformation!7086 (rule!10220 (_1!24518 (get!14375 lt!1462474)))) (seqFromList!5303 (originalCharacters!7680 (_1!24518 (get!14375 lt!1462474)))))))))

(declare-fun b!4088749 () Bool)

(assert (=> b!4088749 (= e!2537589 (= (size!32740 (_1!24518 (get!14375 lt!1462474))) (size!32741 (originalCharacters!7680 (_1!24518 (get!14375 lt!1462474))))))))

(declare-fun b!4088750 () Bool)

(declare-fun res!1670879 () Bool)

(assert (=> b!4088750 (=> (not res!1670879) (not e!2537589))))

(assert (=> b!4088750 (= res!1670879 (< (size!32741 (_2!24518 (get!14375 lt!1462474))) (size!32741 input!3411)))))

(declare-fun b!4088751 () Bool)

(declare-fun e!2537590 () Option!9492)

(assert (=> b!4088751 (= e!2537590 None!9491)))

(declare-fun b!4088753 () Bool)

(declare-datatypes ((tuple2!42772 0))(
  ( (tuple2!42773 (_1!24520 List!43957) (_2!24520 List!43957)) )
))
(declare-fun lt!1462477 () tuple2!42772)

(declare-fun size!32743 (BalanceConc!26188) Int)

(assert (=> b!4088753 (= e!2537590 (Some!9491 (tuple2!42769 (Token!13299 (apply!10269 (transformation!7086 (h!49255 rules!3870)) (seqFromList!5303 (_1!24520 lt!1462477))) (h!49255 rules!3870) (size!32743 (seqFromList!5303 (_1!24520 lt!1462477))) (_1!24520 lt!1462477)) (_2!24520 lt!1462477))))))

(declare-fun lt!1462475 () Unit!63361)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1427 (Regex!11991 List!43957) Unit!63361)

(assert (=> b!4088753 (= lt!1462475 (longestMatchIsAcceptedByMatchOrIsEmpty!1427 (regex!7086 (h!49255 rules!3870)) input!3411))))

(declare-fun res!1670875 () Bool)

(declare-fun findLongestMatchInner!1454 (Regex!11991 List!43957 Int List!43957 List!43957 Int) tuple2!42772)

(assert (=> b!4088753 (= res!1670875 (isEmpty!26213 (_1!24520 (findLongestMatchInner!1454 (regex!7086 (h!49255 rules!3870)) Nil!43833 (size!32741 Nil!43833) input!3411 input!3411 (size!32741 input!3411)))))))

(declare-fun e!2537587 () Bool)

(assert (=> b!4088753 (=> res!1670875 e!2537587)))

(assert (=> b!4088753 e!2537587))

(declare-fun lt!1462473 () Unit!63361)

(assert (=> b!4088753 (= lt!1462473 lt!1462475)))

(declare-fun lt!1462476 () Unit!63361)

(assert (=> b!4088753 (= lt!1462476 (lemmaSemiInverse!2053 (transformation!7086 (h!49255 rules!3870)) (seqFromList!5303 (_1!24520 lt!1462477))))))

(declare-fun b!4088754 () Bool)

(declare-fun e!2537588 () Bool)

(assert (=> b!4088754 (= e!2537588 e!2537589)))

(declare-fun res!1670877 () Bool)

(assert (=> b!4088754 (=> (not res!1670877) (not e!2537589))))

(declare-fun list!16276 (BalanceConc!26188) List!43957)

(declare-fun charsOf!4848 (Token!13298) BalanceConc!26188)

(assert (=> b!4088754 (= res!1670877 (matchR!5932 (regex!7086 (h!49255 rules!3870)) (list!16276 (charsOf!4848 (_1!24518 (get!14375 lt!1462474))))))))

(declare-fun b!4088755 () Bool)

(declare-fun res!1670876 () Bool)

(assert (=> b!4088755 (=> (not res!1670876) (not e!2537589))))

(assert (=> b!4088755 (= res!1670876 (= (++!11492 (list!16276 (charsOf!4848 (_1!24518 (get!14375 lt!1462474)))) (_2!24518 (get!14375 lt!1462474))) input!3411))))

(declare-fun b!4088756 () Bool)

(declare-fun res!1670878 () Bool)

(assert (=> b!4088756 (=> (not res!1670878) (not e!2537589))))

(assert (=> b!4088756 (= res!1670878 (= (rule!10220 (_1!24518 (get!14375 lt!1462474))) (h!49255 rules!3870)))))

(declare-fun b!4088752 () Bool)

(assert (=> b!4088752 (= e!2537587 (matchR!5932 (regex!7086 (h!49255 rules!3870)) (_1!24520 (findLongestMatchInner!1454 (regex!7086 (h!49255 rules!3870)) Nil!43833 (size!32741 Nil!43833) input!3411 input!3411 (size!32741 input!3411)))))))

(declare-fun d!1214074 () Bool)

(assert (=> d!1214074 e!2537588))

(declare-fun res!1670880 () Bool)

(assert (=> d!1214074 (=> res!1670880 e!2537588)))

(assert (=> d!1214074 (= res!1670880 (isEmpty!26212 lt!1462474))))

(assert (=> d!1214074 (= lt!1462474 e!2537590)))

(declare-fun c!704806 () Bool)

(assert (=> d!1214074 (= c!704806 (isEmpty!26213 (_1!24520 lt!1462477)))))

(declare-fun findLongestMatch!1367 (Regex!11991 List!43957) tuple2!42772)

(assert (=> d!1214074 (= lt!1462477 (findLongestMatch!1367 (regex!7086 (h!49255 rules!3870)) input!3411))))

(assert (=> d!1214074 (ruleValid!3006 thiss!26199 (h!49255 rules!3870))))

(assert (=> d!1214074 (= (maxPrefixOneRule!2947 thiss!26199 (h!49255 rules!3870) input!3411) lt!1462474)))

(assert (= (and d!1214074 c!704806) b!4088751))

(assert (= (and d!1214074 (not c!704806)) b!4088753))

(assert (= (and b!4088753 (not res!1670875)) b!4088752))

(assert (= (and d!1214074 (not res!1670880)) b!4088754))

(assert (= (and b!4088754 res!1670877) b!4088755))

(assert (= (and b!4088755 res!1670876) b!4088750))

(assert (= (and b!4088750 res!1670879) b!4088756))

(assert (= (and b!4088756 res!1670878) b!4088748))

(assert (= (and b!4088748 res!1670881) b!4088749))

(declare-fun m!4695749 () Bool)

(assert (=> b!4088754 m!4695749))

(declare-fun m!4695751 () Bool)

(assert (=> b!4088754 m!4695751))

(assert (=> b!4088754 m!4695751))

(declare-fun m!4695753 () Bool)

(assert (=> b!4088754 m!4695753))

(assert (=> b!4088754 m!4695753))

(declare-fun m!4695755 () Bool)

(assert (=> b!4088754 m!4695755))

(declare-fun m!4695757 () Bool)

(assert (=> d!1214074 m!4695757))

(declare-fun m!4695759 () Bool)

(assert (=> d!1214074 m!4695759))

(declare-fun m!4695761 () Bool)

(assert (=> d!1214074 m!4695761))

(declare-fun m!4695763 () Bool)

(assert (=> d!1214074 m!4695763))

(declare-fun m!4695765 () Bool)

(assert (=> b!4088752 m!4695765))

(declare-fun m!4695767 () Bool)

(assert (=> b!4088752 m!4695767))

(assert (=> b!4088752 m!4695765))

(assert (=> b!4088752 m!4695767))

(declare-fun m!4695769 () Bool)

(assert (=> b!4088752 m!4695769))

(declare-fun m!4695771 () Bool)

(assert (=> b!4088752 m!4695771))

(assert (=> b!4088750 m!4695749))

(declare-fun m!4695773 () Bool)

(assert (=> b!4088750 m!4695773))

(assert (=> b!4088750 m!4695767))

(assert (=> b!4088753 m!4695765))

(assert (=> b!4088753 m!4695767))

(assert (=> b!4088753 m!4695769))

(declare-fun m!4695775 () Bool)

(assert (=> b!4088753 m!4695775))

(assert (=> b!4088753 m!4695765))

(declare-fun m!4695777 () Bool)

(assert (=> b!4088753 m!4695777))

(declare-fun m!4695779 () Bool)

(assert (=> b!4088753 m!4695779))

(declare-fun m!4695781 () Bool)

(assert (=> b!4088753 m!4695781))

(assert (=> b!4088753 m!4695779))

(declare-fun m!4695783 () Bool)

(assert (=> b!4088753 m!4695783))

(assert (=> b!4088753 m!4695779))

(declare-fun m!4695785 () Bool)

(assert (=> b!4088753 m!4695785))

(assert (=> b!4088753 m!4695767))

(assert (=> b!4088753 m!4695779))

(assert (=> b!4088755 m!4695749))

(assert (=> b!4088755 m!4695751))

(assert (=> b!4088755 m!4695751))

(assert (=> b!4088755 m!4695753))

(assert (=> b!4088755 m!4695753))

(declare-fun m!4695787 () Bool)

(assert (=> b!4088755 m!4695787))

(assert (=> b!4088749 m!4695749))

(declare-fun m!4695789 () Bool)

(assert (=> b!4088749 m!4695789))

(assert (=> b!4088748 m!4695749))

(declare-fun m!4695791 () Bool)

(assert (=> b!4088748 m!4695791))

(assert (=> b!4088748 m!4695791))

(declare-fun m!4695793 () Bool)

(assert (=> b!4088748 m!4695793))

(assert (=> b!4088756 m!4695749))

(assert (=> b!4088655 d!1214074))

(declare-fun d!1214106 () Bool)

(declare-fun res!1670884 () Bool)

(declare-fun e!2537593 () Bool)

(assert (=> d!1214106 (=> (not res!1670884) (not e!2537593))))

(declare-fun rulesValid!2776 (LexerInterface!6675 List!43959) Bool)

(assert (=> d!1214106 (= res!1670884 (rulesValid!2776 thiss!26199 (t!338462 rules!3870)))))

(assert (=> d!1214106 (= (rulesInvariant!6018 thiss!26199 (t!338462 rules!3870)) e!2537593)))

(declare-fun b!4088759 () Bool)

(declare-datatypes ((List!43961 0))(
  ( (Nil!43837) (Cons!43837 (h!49257 String!50330) (t!338488 List!43961)) )
))
(declare-fun noDuplicateTag!2777 (LexerInterface!6675 List!43959 List!43961) Bool)

(assert (=> b!4088759 (= e!2537593 (noDuplicateTag!2777 thiss!26199 (t!338462 rules!3870) Nil!43837))))

(assert (= (and d!1214106 res!1670884) b!4088759))

(declare-fun m!4695795 () Bool)

(assert (=> d!1214106 m!4695795))

(declare-fun m!4695797 () Bool)

(assert (=> b!4088759 m!4695797))

(assert (=> b!4088655 d!1214106))

(declare-fun d!1214108 () Bool)

(assert (=> d!1214108 (rulesInvariant!6018 thiss!26199 (t!338462 rules!3870))))

(declare-fun lt!1462480 () Unit!63361)

(declare-fun choose!24969 (LexerInterface!6675 Rule!13972 List!43959) Unit!63361)

(assert (=> d!1214108 (= lt!1462480 (choose!24969 thiss!26199 (h!49255 rules!3870) (t!338462 rules!3870)))))

(assert (=> d!1214108 (rulesInvariant!6018 thiss!26199 (Cons!43835 (h!49255 rules!3870) (t!338462 rules!3870)))))

(assert (=> d!1214108 (= (lemmaInvariantOnRulesThenOnTail!788 thiss!26199 (h!49255 rules!3870) (t!338462 rules!3870)) lt!1462480)))

(declare-fun bs!593228 () Bool)

(assert (= bs!593228 d!1214108))

(assert (=> bs!593228 m!4695633))

(declare-fun m!4695799 () Bool)

(assert (=> bs!593228 m!4695799))

(declare-fun m!4695801 () Bool)

(assert (=> bs!593228 m!4695801))

(assert (=> b!4088655 d!1214108))

(declare-fun b!4088778 () Bool)

(declare-fun e!2537601 () Option!9492)

(declare-fun lt!1462492 () Option!9492)

(declare-fun lt!1462493 () Option!9492)

(assert (=> b!4088778 (= e!2537601 (ite (and ((_ is None!9491) lt!1462492) ((_ is None!9491) lt!1462493)) None!9491 (ite ((_ is None!9491) lt!1462493) lt!1462492 (ite ((_ is None!9491) lt!1462492) lt!1462493 (ite (>= (size!32740 (_1!24518 (v!39971 lt!1462492))) (size!32740 (_1!24518 (v!39971 lt!1462493)))) lt!1462492 lt!1462493)))))))

(declare-fun call!289045 () Option!9492)

(assert (=> b!4088778 (= lt!1462492 call!289045)))

(assert (=> b!4088778 (= lt!1462493 (maxPrefix!3965 thiss!26199 (t!338462 rules!3870) input!3411))))

(declare-fun b!4088779 () Bool)

(declare-fun res!1670904 () Bool)

(declare-fun e!2537602 () Bool)

(assert (=> b!4088779 (=> (not res!1670904) (not e!2537602))))

(declare-fun lt!1462491 () Option!9492)

(assert (=> b!4088779 (= res!1670904 (= (list!16276 (charsOf!4848 (_1!24518 (get!14375 lt!1462491)))) (originalCharacters!7680 (_1!24518 (get!14375 lt!1462491)))))))

(declare-fun b!4088780 () Bool)

(assert (=> b!4088780 (= e!2537601 call!289045)))

(declare-fun d!1214110 () Bool)

(declare-fun e!2537600 () Bool)

(assert (=> d!1214110 e!2537600))

(declare-fun res!1670901 () Bool)

(assert (=> d!1214110 (=> res!1670901 e!2537600)))

(assert (=> d!1214110 (= res!1670901 (isEmpty!26212 lt!1462491))))

(assert (=> d!1214110 (= lt!1462491 e!2537601)))

(declare-fun c!704809 () Bool)

(assert (=> d!1214110 (= c!704809 (and ((_ is Cons!43835) rules!3870) ((_ is Nil!43835) (t!338462 rules!3870))))))

(declare-fun lt!1462495 () Unit!63361)

(declare-fun lt!1462494 () Unit!63361)

(assert (=> d!1214110 (= lt!1462495 lt!1462494)))

(declare-fun isPrefix!4135 (List!43957 List!43957) Bool)

(assert (=> d!1214110 (isPrefix!4135 input!3411 input!3411)))

(declare-fun lemmaIsPrefixRefl!2686 (List!43957 List!43957) Unit!63361)

(assert (=> d!1214110 (= lt!1462494 (lemmaIsPrefixRefl!2686 input!3411 input!3411))))

(declare-fun rulesValidInductive!2617 (LexerInterface!6675 List!43959) Bool)

(assert (=> d!1214110 (rulesValidInductive!2617 thiss!26199 rules!3870)))

(assert (=> d!1214110 (= (maxPrefix!3965 thiss!26199 rules!3870 input!3411) lt!1462491)))

(declare-fun b!4088781 () Bool)

(declare-fun res!1670902 () Bool)

(assert (=> b!4088781 (=> (not res!1670902) (not e!2537602))))

(assert (=> b!4088781 (= res!1670902 (= (value!222603 (_1!24518 (get!14375 lt!1462491))) (apply!10269 (transformation!7086 (rule!10220 (_1!24518 (get!14375 lt!1462491)))) (seqFromList!5303 (originalCharacters!7680 (_1!24518 (get!14375 lt!1462491)))))))))

(declare-fun bm!289040 () Bool)

(assert (=> bm!289040 (= call!289045 (maxPrefixOneRule!2947 thiss!26199 (h!49255 rules!3870) input!3411))))

(declare-fun b!4088782 () Bool)

(assert (=> b!4088782 (= e!2537602 (contains!8765 rules!3870 (rule!10220 (_1!24518 (get!14375 lt!1462491)))))))

(declare-fun b!4088783 () Bool)

(declare-fun res!1670905 () Bool)

(assert (=> b!4088783 (=> (not res!1670905) (not e!2537602))))

(assert (=> b!4088783 (= res!1670905 (= (++!11492 (list!16276 (charsOf!4848 (_1!24518 (get!14375 lt!1462491)))) (_2!24518 (get!14375 lt!1462491))) input!3411))))

(declare-fun b!4088784 () Bool)

(assert (=> b!4088784 (= e!2537600 e!2537602)))

(declare-fun res!1670903 () Bool)

(assert (=> b!4088784 (=> (not res!1670903) (not e!2537602))))

(declare-fun isDefined!7184 (Option!9492) Bool)

(assert (=> b!4088784 (= res!1670903 (isDefined!7184 lt!1462491))))

(declare-fun b!4088785 () Bool)

(declare-fun res!1670900 () Bool)

(assert (=> b!4088785 (=> (not res!1670900) (not e!2537602))))

(assert (=> b!4088785 (= res!1670900 (< (size!32741 (_2!24518 (get!14375 lt!1462491))) (size!32741 input!3411)))))

(declare-fun b!4088786 () Bool)

(declare-fun res!1670899 () Bool)

(assert (=> b!4088786 (=> (not res!1670899) (not e!2537602))))

(assert (=> b!4088786 (= res!1670899 (matchR!5932 (regex!7086 (rule!10220 (_1!24518 (get!14375 lt!1462491)))) (list!16276 (charsOf!4848 (_1!24518 (get!14375 lt!1462491))))))))

(assert (= (and d!1214110 c!704809) b!4088780))

(assert (= (and d!1214110 (not c!704809)) b!4088778))

(assert (= (or b!4088780 b!4088778) bm!289040))

(assert (= (and d!1214110 (not res!1670901)) b!4088784))

(assert (= (and b!4088784 res!1670903) b!4088779))

(assert (= (and b!4088779 res!1670904) b!4088785))

(assert (= (and b!4088785 res!1670900) b!4088783))

(assert (= (and b!4088783 res!1670905) b!4088781))

(assert (= (and b!4088781 res!1670902) b!4088786))

(assert (= (and b!4088786 res!1670899) b!4088782))

(declare-fun m!4695803 () Bool)

(assert (=> b!4088783 m!4695803))

(declare-fun m!4695805 () Bool)

(assert (=> b!4088783 m!4695805))

(assert (=> b!4088783 m!4695805))

(declare-fun m!4695807 () Bool)

(assert (=> b!4088783 m!4695807))

(assert (=> b!4088783 m!4695807))

(declare-fun m!4695809 () Bool)

(assert (=> b!4088783 m!4695809))

(assert (=> b!4088785 m!4695803))

(declare-fun m!4695811 () Bool)

(assert (=> b!4088785 m!4695811))

(assert (=> b!4088785 m!4695767))

(assert (=> bm!289040 m!4695629))

(declare-fun m!4695813 () Bool)

(assert (=> b!4088778 m!4695813))

(declare-fun m!4695815 () Bool)

(assert (=> d!1214110 m!4695815))

(declare-fun m!4695817 () Bool)

(assert (=> d!1214110 m!4695817))

(declare-fun m!4695819 () Bool)

(assert (=> d!1214110 m!4695819))

(declare-fun m!4695821 () Bool)

(assert (=> d!1214110 m!4695821))

(assert (=> b!4088781 m!4695803))

(declare-fun m!4695823 () Bool)

(assert (=> b!4088781 m!4695823))

(assert (=> b!4088781 m!4695823))

(declare-fun m!4695825 () Bool)

(assert (=> b!4088781 m!4695825))

(assert (=> b!4088779 m!4695803))

(assert (=> b!4088779 m!4695805))

(assert (=> b!4088779 m!4695805))

(assert (=> b!4088779 m!4695807))

(declare-fun m!4695827 () Bool)

(assert (=> b!4088784 m!4695827))

(assert (=> b!4088782 m!4695803))

(declare-fun m!4695829 () Bool)

(assert (=> b!4088782 m!4695829))

(assert (=> b!4088786 m!4695803))

(assert (=> b!4088786 m!4695805))

(assert (=> b!4088786 m!4695805))

(assert (=> b!4088786 m!4695807))

(assert (=> b!4088786 m!4695807))

(declare-fun m!4695831 () Bool)

(assert (=> b!4088786 m!4695831))

(assert (=> b!4088647 d!1214110))

(declare-fun d!1214112 () Bool)

(declare-fun lt!1462498 () Int)

(assert (=> d!1214112 (>= lt!1462498 0)))

(declare-fun e!2537605 () Int)

(assert (=> d!1214112 (= lt!1462498 e!2537605)))

(declare-fun c!704812 () Bool)

(assert (=> d!1214112 (= c!704812 ((_ is Nil!43833) p!2988))))

(assert (=> d!1214112 (= (size!32741 p!2988) lt!1462498)))

(declare-fun b!4088791 () Bool)

(assert (=> b!4088791 (= e!2537605 0)))

(declare-fun b!4088792 () Bool)

(assert (=> b!4088792 (= e!2537605 (+ 1 (size!32741 (t!338460 p!2988))))))

(assert (= (and d!1214112 c!704812) b!4088791))

(assert (= (and d!1214112 (not c!704812)) b!4088792))

(declare-fun m!4695833 () Bool)

(assert (=> b!4088792 m!4695833))

(assert (=> b!4088647 d!1214112))

(declare-fun d!1214114 () Bool)

(declare-fun fromListB!2428 (List!43957) BalanceConc!26188)

(assert (=> d!1214114 (= (seqFromList!5303 p!2988) (fromListB!2428 p!2988))))

(declare-fun bs!593229 () Bool)

(assert (= bs!593229 d!1214114))

(declare-fun m!4695835 () Bool)

(assert (=> bs!593229 m!4695835))

(assert (=> b!4088647 d!1214114))

(declare-fun d!1214116 () Bool)

(declare-fun dynLambda!18736 (Int BalanceConc!26188) TokenValue!7316)

(assert (=> d!1214116 (= (apply!10269 (transformation!7086 r!4213) lt!1462432) (dynLambda!18736 (toValue!9674 (transformation!7086 r!4213)) lt!1462432))))

(declare-fun b_lambda!119783 () Bool)

(assert (=> (not b_lambda!119783) (not d!1214116)))

(declare-fun t!338464 () Bool)

(declare-fun tb!245729 () Bool)

(assert (=> (and b!4088652 (= (toValue!9674 (transformation!7086 (h!49255 rules!3870))) (toValue!9674 (transformation!7086 r!4213))) t!338464) tb!245729))

(declare-fun result!298138 () Bool)

(declare-fun inv!21 (TokenValue!7316) Bool)

(assert (=> tb!245729 (= result!298138 (inv!21 (dynLambda!18736 (toValue!9674 (transformation!7086 r!4213)) lt!1462432)))))

(declare-fun m!4695837 () Bool)

(assert (=> tb!245729 m!4695837))

(assert (=> d!1214116 t!338464))

(declare-fun b_and!314975 () Bool)

(assert (= b_and!314967 (and (=> t!338464 result!298138) b_and!314975)))

(declare-fun t!338466 () Bool)

(declare-fun tb!245731 () Bool)

(assert (=> (and b!4088650 (= (toValue!9674 (transformation!7086 r!4213)) (toValue!9674 (transformation!7086 r!4213))) t!338466) tb!245731))

(declare-fun result!298142 () Bool)

(assert (= result!298142 result!298138))

(assert (=> d!1214116 t!338466))

(declare-fun b_and!314977 () Bool)

(assert (= b_and!314971 (and (=> t!338466 result!298142) b_and!314977)))

(declare-fun m!4695839 () Bool)

(assert (=> d!1214116 m!4695839))

(assert (=> b!4088647 d!1214116))

(declare-fun b!4088928 () Bool)

(declare-fun e!2537677 () Bool)

(assert (=> b!4088928 (= e!2537677 true)))

(declare-fun d!1214118 () Bool)

(assert (=> d!1214118 e!2537677))

(assert (= d!1214118 b!4088928))

(declare-fun order!23031 () Int)

(declare-fun order!23029 () Int)

(declare-fun lambda!127977 () Int)

(declare-fun dynLambda!18737 (Int Int) Int)

(declare-fun dynLambda!18738 (Int Int) Int)

(assert (=> b!4088928 (< (dynLambda!18737 order!23029 (toValue!9674 (transformation!7086 r!4213))) (dynLambda!18738 order!23031 lambda!127977))))

(declare-fun order!23033 () Int)

(declare-fun dynLambda!18739 (Int Int) Int)

(assert (=> b!4088928 (< (dynLambda!18739 order!23033 (toChars!9533 (transformation!7086 r!4213))) (dynLambda!18738 order!23031 lambda!127977))))

(declare-fun dynLambda!18740 (Int TokenValue!7316) BalanceConc!26188)

(assert (=> d!1214118 (= (list!16276 (dynLambda!18740 (toChars!9533 (transformation!7086 r!4213)) (dynLambda!18736 (toValue!9674 (transformation!7086 r!4213)) lt!1462432))) (list!16276 lt!1462432))))

(declare-fun lt!1462526 () Unit!63361)

(declare-fun ForallOf!881 (Int BalanceConc!26188) Unit!63361)

(assert (=> d!1214118 (= lt!1462526 (ForallOf!881 lambda!127977 lt!1462432))))

(assert (=> d!1214118 (= (lemmaSemiInverse!2053 (transformation!7086 r!4213) lt!1462432) lt!1462526)))

(declare-fun b_lambda!119797 () Bool)

(assert (=> (not b_lambda!119797) (not d!1214118)))

(declare-fun tb!245745 () Bool)

(declare-fun t!338480 () Bool)

(assert (=> (and b!4088652 (= (toChars!9533 (transformation!7086 (h!49255 rules!3870))) (toChars!9533 (transformation!7086 r!4213))) t!338480) tb!245745))

(declare-fun tp!1237913 () Bool)

(declare-fun e!2537680 () Bool)

(declare-fun b!4088933 () Bool)

(declare-fun inv!58535 (Conc!13297) Bool)

(assert (=> b!4088933 (= e!2537680 (and (inv!58535 (c!704793 (dynLambda!18740 (toChars!9533 (transformation!7086 r!4213)) (dynLambda!18736 (toValue!9674 (transformation!7086 r!4213)) lt!1462432)))) tp!1237913))))

(declare-fun result!298166 () Bool)

(declare-fun inv!58536 (BalanceConc!26188) Bool)

(assert (=> tb!245745 (= result!298166 (and (inv!58536 (dynLambda!18740 (toChars!9533 (transformation!7086 r!4213)) (dynLambda!18736 (toValue!9674 (transformation!7086 r!4213)) lt!1462432))) e!2537680))))

(assert (= tb!245745 b!4088933))

(declare-fun m!4695911 () Bool)

(assert (=> b!4088933 m!4695911))

(declare-fun m!4695913 () Bool)

(assert (=> tb!245745 m!4695913))

(assert (=> d!1214118 t!338480))

(declare-fun b_and!314995 () Bool)

(assert (= b_and!314969 (and (=> t!338480 result!298166) b_and!314995)))

(declare-fun t!338482 () Bool)

(declare-fun tb!245747 () Bool)

(assert (=> (and b!4088650 (= (toChars!9533 (transformation!7086 r!4213)) (toChars!9533 (transformation!7086 r!4213))) t!338482) tb!245747))

(declare-fun result!298170 () Bool)

(assert (= result!298170 result!298166))

(assert (=> d!1214118 t!338482))

(declare-fun b_and!314997 () Bool)

(assert (= b_and!314973 (and (=> t!338482 result!298170) b_and!314997)))

(declare-fun b_lambda!119799 () Bool)

(assert (=> (not b_lambda!119799) (not d!1214118)))

(assert (=> d!1214118 t!338464))

(declare-fun b_and!314999 () Bool)

(assert (= b_and!314975 (and (=> t!338464 result!298138) b_and!314999)))

(assert (=> d!1214118 t!338466))

(declare-fun b_and!315001 () Bool)

(assert (= b_and!314977 (and (=> t!338466 result!298142) b_and!315001)))

(assert (=> d!1214118 m!4695839))

(declare-fun m!4695915 () Bool)

(assert (=> d!1214118 m!4695915))

(assert (=> d!1214118 m!4695839))

(declare-fun m!4695917 () Bool)

(assert (=> d!1214118 m!4695917))

(declare-fun m!4695919 () Bool)

(assert (=> d!1214118 m!4695919))

(assert (=> d!1214118 m!4695915))

(declare-fun m!4695921 () Bool)

(assert (=> d!1214118 m!4695921))

(assert (=> b!4088647 d!1214118))

(declare-fun d!1214134 () Bool)

(declare-fun lt!1462529 () Bool)

(declare-fun content!6747 (List!43959) (InoxSet Rule!13972))

(assert (=> d!1214134 (= lt!1462529 (select (content!6747 rules!3870) r!4213))))

(declare-fun e!2537685 () Bool)

(assert (=> d!1214134 (= lt!1462529 e!2537685)))

(declare-fun res!1670962 () Bool)

(assert (=> d!1214134 (=> (not res!1670962) (not e!2537685))))

(assert (=> d!1214134 (= res!1670962 ((_ is Cons!43835) rules!3870))))

(assert (=> d!1214134 (= (contains!8765 rules!3870 r!4213) lt!1462529)))

(declare-fun b!4088938 () Bool)

(declare-fun e!2537686 () Bool)

(assert (=> b!4088938 (= e!2537685 e!2537686)))

(declare-fun res!1670961 () Bool)

(assert (=> b!4088938 (=> res!1670961 e!2537686)))

(assert (=> b!4088938 (= res!1670961 (= (h!49255 rules!3870) r!4213))))

(declare-fun b!4088939 () Bool)

(assert (=> b!4088939 (= e!2537686 (contains!8765 (t!338462 rules!3870) r!4213))))

(assert (= (and d!1214134 res!1670962) b!4088938))

(assert (= (and b!4088938 (not res!1670961)) b!4088939))

(declare-fun m!4695923 () Bool)

(assert (=> d!1214134 m!4695923))

(declare-fun m!4695925 () Bool)

(assert (=> d!1214134 m!4695925))

(declare-fun m!4695927 () Bool)

(assert (=> b!4088939 m!4695927))

(assert (=> b!4088663 d!1214134))

(declare-fun d!1214136 () Bool)

(assert (=> d!1214136 (= (inv!58530 (tag!7946 (h!49255 rules!3870))) (= (mod (str.len (value!222602 (tag!7946 (h!49255 rules!3870)))) 2) 0))))

(assert (=> b!4088662 d!1214136))

(declare-fun d!1214138 () Bool)

(declare-fun res!1670965 () Bool)

(declare-fun e!2537689 () Bool)

(assert (=> d!1214138 (=> (not res!1670965) (not e!2537689))))

(declare-fun semiInverseModEq!3042 (Int Int) Bool)

(assert (=> d!1214138 (= res!1670965 (semiInverseModEq!3042 (toChars!9533 (transformation!7086 (h!49255 rules!3870))) (toValue!9674 (transformation!7086 (h!49255 rules!3870)))))))

(assert (=> d!1214138 (= (inv!58532 (transformation!7086 (h!49255 rules!3870))) e!2537689)))

(declare-fun b!4088942 () Bool)

(declare-fun equivClasses!2941 (Int Int) Bool)

(assert (=> b!4088942 (= e!2537689 (equivClasses!2941 (toChars!9533 (transformation!7086 (h!49255 rules!3870))) (toValue!9674 (transformation!7086 (h!49255 rules!3870)))))))

(assert (= (and d!1214138 res!1670965) b!4088942))

(declare-fun m!4695929 () Bool)

(assert (=> d!1214138 m!4695929))

(declare-fun m!4695931 () Bool)

(assert (=> b!4088942 m!4695931))

(assert (=> b!4088662 d!1214138))

(declare-fun d!1214140 () Bool)

(assert (=> d!1214140 (= (isEmpty!26213 p!2988) ((_ is Nil!43833) p!2988))))

(assert (=> b!4088657 d!1214140))

(declare-fun d!1214142 () Bool)

(declare-fun res!1670966 () Bool)

(declare-fun e!2537690 () Bool)

(assert (=> d!1214142 (=> (not res!1670966) (not e!2537690))))

(assert (=> d!1214142 (= res!1670966 (rulesValid!2776 thiss!26199 rules!3870))))

(assert (=> d!1214142 (= (rulesInvariant!6018 thiss!26199 rules!3870) e!2537690)))

(declare-fun b!4088943 () Bool)

(assert (=> b!4088943 (= e!2537690 (noDuplicateTag!2777 thiss!26199 rules!3870 Nil!43837))))

(assert (= (and d!1214142 res!1670966) b!4088943))

(declare-fun m!4695933 () Bool)

(assert (=> d!1214142 m!4695933))

(declare-fun m!4695935 () Bool)

(assert (=> b!4088943 m!4695935))

(assert (=> b!4088648 d!1214142))

(declare-fun b!4088972 () Bool)

(declare-fun e!2537709 () Bool)

(declare-fun nullable!4230 (Regex!11991) Bool)

(assert (=> b!4088972 (= e!2537709 (nullable!4230 (regex!7086 r!4213)))))

(declare-fun b!4088973 () Bool)

(declare-fun e!2537706 () Bool)

(declare-fun lt!1462532 () Bool)

(assert (=> b!4088973 (= e!2537706 (not lt!1462532))))

(declare-fun b!4088974 () Bool)

(declare-fun e!2537710 () Bool)

(declare-fun e!2537707 () Bool)

(assert (=> b!4088974 (= e!2537710 e!2537707)))

(declare-fun res!1670985 () Bool)

(assert (=> b!4088974 (=> (not res!1670985) (not e!2537707))))

(assert (=> b!4088974 (= res!1670985 (not lt!1462532))))

(declare-fun b!4088975 () Bool)

(declare-fun res!1670990 () Bool)

(assert (=> b!4088975 (=> res!1670990 e!2537710)))

(assert (=> b!4088975 (= res!1670990 (not ((_ is ElementMatch!11991) (regex!7086 r!4213))))))

(assert (=> b!4088975 (= e!2537706 e!2537710)))

(declare-fun d!1214144 () Bool)

(declare-fun e!2537705 () Bool)

(assert (=> d!1214144 e!2537705))

(declare-fun c!704837 () Bool)

(assert (=> d!1214144 (= c!704837 ((_ is EmptyExpr!11991) (regex!7086 r!4213)))))

(assert (=> d!1214144 (= lt!1462532 e!2537709)))

(declare-fun c!704836 () Bool)

(assert (=> d!1214144 (= c!704836 (isEmpty!26213 p!2988))))

(declare-fun validRegex!5430 (Regex!11991) Bool)

(assert (=> d!1214144 (validRegex!5430 (regex!7086 r!4213))))

(assert (=> d!1214144 (= (matchR!5932 (regex!7086 r!4213) p!2988) lt!1462532)))

(declare-fun b!4088976 () Bool)

(declare-fun res!1670988 () Bool)

(assert (=> b!4088976 (=> res!1670988 e!2537710)))

(declare-fun e!2537708 () Bool)

(assert (=> b!4088976 (= res!1670988 e!2537708)))

(declare-fun res!1670986 () Bool)

(assert (=> b!4088976 (=> (not res!1670986) (not e!2537708))))

(assert (=> b!4088976 (= res!1670986 lt!1462532)))

(declare-fun bm!289049 () Bool)

(declare-fun call!289054 () Bool)

(assert (=> bm!289049 (= call!289054 (isEmpty!26213 p!2988))))

(declare-fun b!4088977 () Bool)

(declare-fun res!1670989 () Bool)

(declare-fun e!2537711 () Bool)

(assert (=> b!4088977 (=> res!1670989 e!2537711)))

(declare-fun tail!6375 (List!43957) List!43957)

(assert (=> b!4088977 (= res!1670989 (not (isEmpty!26213 (tail!6375 p!2988))))))

(declare-fun b!4088978 () Bool)

(declare-fun derivativeStep!3631 (Regex!11991 C!24168) Regex!11991)

(declare-fun head!8641 (List!43957) C!24168)

(assert (=> b!4088978 (= e!2537709 (matchR!5932 (derivativeStep!3631 (regex!7086 r!4213) (head!8641 p!2988)) (tail!6375 p!2988)))))

(declare-fun b!4088979 () Bool)

(declare-fun res!1670983 () Bool)

(assert (=> b!4088979 (=> (not res!1670983) (not e!2537708))))

(assert (=> b!4088979 (= res!1670983 (isEmpty!26213 (tail!6375 p!2988)))))

(declare-fun b!4088980 () Bool)

(assert (=> b!4088980 (= e!2537705 (= lt!1462532 call!289054))))

(declare-fun b!4088981 () Bool)

(declare-fun res!1670987 () Bool)

(assert (=> b!4088981 (=> (not res!1670987) (not e!2537708))))

(assert (=> b!4088981 (= res!1670987 (not call!289054))))

(declare-fun b!4088982 () Bool)

(assert (=> b!4088982 (= e!2537708 (= (head!8641 p!2988) (c!704792 (regex!7086 r!4213))))))

(declare-fun b!4088983 () Bool)

(assert (=> b!4088983 (= e!2537705 e!2537706)))

(declare-fun c!704835 () Bool)

(assert (=> b!4088983 (= c!704835 ((_ is EmptyLang!11991) (regex!7086 r!4213)))))

(declare-fun b!4088984 () Bool)

(assert (=> b!4088984 (= e!2537711 (not (= (head!8641 p!2988) (c!704792 (regex!7086 r!4213)))))))

(declare-fun b!4088985 () Bool)

(assert (=> b!4088985 (= e!2537707 e!2537711)))

(declare-fun res!1670984 () Bool)

(assert (=> b!4088985 (=> res!1670984 e!2537711)))

(assert (=> b!4088985 (= res!1670984 call!289054)))

(assert (= (and d!1214144 c!704836) b!4088972))

(assert (= (and d!1214144 (not c!704836)) b!4088978))

(assert (= (and d!1214144 c!704837) b!4088980))

(assert (= (and d!1214144 (not c!704837)) b!4088983))

(assert (= (and b!4088983 c!704835) b!4088973))

(assert (= (and b!4088983 (not c!704835)) b!4088975))

(assert (= (and b!4088975 (not res!1670990)) b!4088976))

(assert (= (and b!4088976 res!1670986) b!4088981))

(assert (= (and b!4088981 res!1670987) b!4088979))

(assert (= (and b!4088979 res!1670983) b!4088982))

(assert (= (and b!4088976 (not res!1670988)) b!4088974))

(assert (= (and b!4088974 res!1670985) b!4088985))

(assert (= (and b!4088985 (not res!1670984)) b!4088977))

(assert (= (and b!4088977 (not res!1670989)) b!4088984))

(assert (= (or b!4088980 b!4088981 b!4088985) bm!289049))

(declare-fun m!4695937 () Bool)

(assert (=> b!4088978 m!4695937))

(assert (=> b!4088978 m!4695937))

(declare-fun m!4695939 () Bool)

(assert (=> b!4088978 m!4695939))

(declare-fun m!4695941 () Bool)

(assert (=> b!4088978 m!4695941))

(assert (=> b!4088978 m!4695939))

(assert (=> b!4088978 m!4695941))

(declare-fun m!4695943 () Bool)

(assert (=> b!4088978 m!4695943))

(assert (=> b!4088977 m!4695941))

(assert (=> b!4088977 m!4695941))

(declare-fun m!4695945 () Bool)

(assert (=> b!4088977 m!4695945))

(assert (=> bm!289049 m!4695651))

(assert (=> b!4088982 m!4695937))

(assert (=> b!4088979 m!4695941))

(assert (=> b!4088979 m!4695941))

(assert (=> b!4088979 m!4695945))

(assert (=> b!4088984 m!4695937))

(declare-fun m!4695947 () Bool)

(assert (=> b!4088972 m!4695947))

(assert (=> d!1214144 m!4695651))

(declare-fun m!4695949 () Bool)

(assert (=> d!1214144 m!4695949))

(assert (=> b!4088664 d!1214144))

(declare-fun d!1214146 () Bool)

(declare-fun res!1670995 () Bool)

(declare-fun e!2537714 () Bool)

(assert (=> d!1214146 (=> (not res!1670995) (not e!2537714))))

(assert (=> d!1214146 (= res!1670995 (validRegex!5430 (regex!7086 r!4213)))))

(assert (=> d!1214146 (= (ruleValid!3006 thiss!26199 r!4213) e!2537714)))

(declare-fun b!4088990 () Bool)

(declare-fun res!1670996 () Bool)

(assert (=> b!4088990 (=> (not res!1670996) (not e!2537714))))

(assert (=> b!4088990 (= res!1670996 (not (nullable!4230 (regex!7086 r!4213))))))

(declare-fun b!4088991 () Bool)

(assert (=> b!4088991 (= e!2537714 (not (= (tag!7946 r!4213) (String!50331 ""))))))

(assert (= (and d!1214146 res!1670995) b!4088990))

(assert (= (and b!4088990 res!1670996) b!4088991))

(assert (=> d!1214146 m!4695949))

(assert (=> b!4088990 m!4695947))

(assert (=> b!4088664 d!1214146))

(declare-fun d!1214148 () Bool)

(assert (=> d!1214148 (ruleValid!3006 thiss!26199 r!4213)))

(declare-fun lt!1462535 () Unit!63361)

(declare-fun choose!24971 (LexerInterface!6675 Rule!13972 List!43959) Unit!63361)

(assert (=> d!1214148 (= lt!1462535 (choose!24971 thiss!26199 r!4213 rules!3870))))

(assert (=> d!1214148 (contains!8765 rules!3870 r!4213)))

(assert (=> d!1214148 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2072 thiss!26199 r!4213 rules!3870) lt!1462535)))

(declare-fun bs!593232 () Bool)

(assert (= bs!593232 d!1214148))

(assert (=> bs!593232 m!4695621))

(declare-fun m!4695951 () Bool)

(assert (=> bs!593232 m!4695951))

(assert (=> bs!593232 m!4695649))

(assert (=> b!4088664 d!1214148))

(declare-fun d!1214150 () Bool)

(assert (=> d!1214150 (= (isEmpty!26211 rules!3870) ((_ is Nil!43835) rules!3870))))

(assert (=> b!4088659 d!1214150))

(declare-fun d!1214152 () Bool)

(assert (=> d!1214152 (= (inv!58530 (tag!7946 r!4213)) (= (mod (str.len (value!222602 (tag!7946 r!4213))) 2) 0))))

(assert (=> b!4088658 d!1214152))

(declare-fun d!1214154 () Bool)

(declare-fun res!1670997 () Bool)

(declare-fun e!2537715 () Bool)

(assert (=> d!1214154 (=> (not res!1670997) (not e!2537715))))

(assert (=> d!1214154 (= res!1670997 (semiInverseModEq!3042 (toChars!9533 (transformation!7086 r!4213)) (toValue!9674 (transformation!7086 r!4213))))))

(assert (=> d!1214154 (= (inv!58532 (transformation!7086 r!4213)) e!2537715)))

(declare-fun b!4088992 () Bool)

(assert (=> b!4088992 (= e!2537715 (equivClasses!2941 (toChars!9533 (transformation!7086 r!4213)) (toValue!9674 (transformation!7086 r!4213))))))

(assert (= (and d!1214154 res!1670997) b!4088992))

(declare-fun m!4695953 () Bool)

(assert (=> d!1214154 m!4695953))

(declare-fun m!4695955 () Bool)

(assert (=> b!4088992 m!4695955))

(assert (=> b!4088658 d!1214154))

(declare-fun d!1214156 () Bool)

(assert (=> d!1214156 (= (isEmpty!26211 (t!338462 rules!3870)) ((_ is Nil!43835) (t!338462 rules!3870)))))

(assert (=> b!4088653 d!1214156))

(declare-fun b!4088997 () Bool)

(declare-fun e!2537718 () Bool)

(declare-fun tp!1237916 () Bool)

(assert (=> b!4088997 (= e!2537718 (and tp_is_empty!20985 tp!1237916))))

(assert (=> b!4088654 (= tp!1237865 e!2537718)))

(assert (= (and b!4088654 ((_ is Cons!43833) (t!338460 p!2988))) b!4088997))

(declare-fun b!4088998 () Bool)

(declare-fun e!2537719 () Bool)

(declare-fun tp!1237917 () Bool)

(assert (=> b!4088998 (= e!2537719 (and tp_is_empty!20985 tp!1237917))))

(assert (=> b!4088649 (= tp!1237868 e!2537719)))

(assert (= (and b!4088649 ((_ is Cons!43833) (t!338460 input!3411))) b!4088998))

(declare-fun b!4088999 () Bool)

(declare-fun e!2537720 () Bool)

(declare-fun tp!1237918 () Bool)

(assert (=> b!4088999 (= e!2537720 (and tp_is_empty!20985 tp!1237918))))

(assert (=> b!4088656 (= tp!1237869 e!2537720)))

(assert (= (and b!4088656 ((_ is Cons!43833) (t!338460 suffix!1518))) b!4088999))

(declare-fun b!4089010 () Bool)

(declare-fun b_free!114277 () Bool)

(declare-fun b_next!114981 () Bool)

(assert (=> b!4089010 (= b_free!114277 (not b_next!114981))))

(declare-fun t!338485 () Bool)

(declare-fun tb!245749 () Bool)

(assert (=> (and b!4089010 (= (toValue!9674 (transformation!7086 (h!49255 (t!338462 rules!3870)))) (toValue!9674 (transformation!7086 r!4213))) t!338485) tb!245749))

(declare-fun result!298176 () Bool)

(assert (= result!298176 result!298138))

(assert (=> d!1214116 t!338485))

(assert (=> d!1214118 t!338485))

(declare-fun b_and!315003 () Bool)

(declare-fun tp!1237928 () Bool)

(assert (=> b!4089010 (= tp!1237928 (and (=> t!338485 result!298176) b_and!315003))))

(declare-fun b_free!114279 () Bool)

(declare-fun b_next!114983 () Bool)

(assert (=> b!4089010 (= b_free!114279 (not b_next!114983))))

(declare-fun t!338487 () Bool)

(declare-fun tb!245751 () Bool)

(assert (=> (and b!4089010 (= (toChars!9533 (transformation!7086 (h!49255 (t!338462 rules!3870)))) (toChars!9533 (transformation!7086 r!4213))) t!338487) tb!245751))

(declare-fun result!298178 () Bool)

(assert (= result!298178 result!298166))

(assert (=> d!1214118 t!338487))

(declare-fun b_and!315005 () Bool)

(declare-fun tp!1237930 () Bool)

(assert (=> b!4089010 (= tp!1237930 (and (=> t!338487 result!298178) b_and!315005))))

(declare-fun e!2537729 () Bool)

(assert (=> b!4089010 (= e!2537729 (and tp!1237928 tp!1237930))))

(declare-fun e!2537730 () Bool)

(declare-fun tp!1237929 () Bool)

(declare-fun b!4089009 () Bool)

(assert (=> b!4089009 (= e!2537730 (and tp!1237929 (inv!58530 (tag!7946 (h!49255 (t!338462 rules!3870)))) (inv!58532 (transformation!7086 (h!49255 (t!338462 rules!3870)))) e!2537729))))

(declare-fun b!4089008 () Bool)

(declare-fun e!2537732 () Bool)

(declare-fun tp!1237927 () Bool)

(assert (=> b!4089008 (= e!2537732 (and e!2537730 tp!1237927))))

(assert (=> b!4088651 (= tp!1237861 e!2537732)))

(assert (= b!4089009 b!4089010))

(assert (= b!4089008 b!4089009))

(assert (= (and b!4088651 ((_ is Cons!43835) (t!338462 rules!3870))) b!4089008))

(declare-fun m!4695957 () Bool)

(assert (=> b!4089009 m!4695957))

(declare-fun m!4695959 () Bool)

(assert (=> b!4089009 m!4695959))

(declare-fun b!4089023 () Bool)

(declare-fun e!2537735 () Bool)

(declare-fun tp!1237941 () Bool)

(assert (=> b!4089023 (= e!2537735 tp!1237941)))

(assert (=> b!4088662 (= tp!1237867 e!2537735)))

(declare-fun b!4089024 () Bool)

(declare-fun tp!1237944 () Bool)

(declare-fun tp!1237943 () Bool)

(assert (=> b!4089024 (= e!2537735 (and tp!1237944 tp!1237943))))

(declare-fun b!4089021 () Bool)

(assert (=> b!4089021 (= e!2537735 tp_is_empty!20985)))

(declare-fun b!4089022 () Bool)

(declare-fun tp!1237945 () Bool)

(declare-fun tp!1237942 () Bool)

(assert (=> b!4089022 (= e!2537735 (and tp!1237945 tp!1237942))))

(assert (= (and b!4088662 ((_ is ElementMatch!11991) (regex!7086 (h!49255 rules!3870)))) b!4089021))

(assert (= (and b!4088662 ((_ is Concat!19308) (regex!7086 (h!49255 rules!3870)))) b!4089022))

(assert (= (and b!4088662 ((_ is Star!11991) (regex!7086 (h!49255 rules!3870)))) b!4089023))

(assert (= (and b!4088662 ((_ is Union!11991) (regex!7086 (h!49255 rules!3870)))) b!4089024))

(declare-fun b!4089027 () Bool)

(declare-fun e!2537736 () Bool)

(declare-fun tp!1237946 () Bool)

(assert (=> b!4089027 (= e!2537736 tp!1237946)))

(assert (=> b!4088658 (= tp!1237866 e!2537736)))

(declare-fun b!4089028 () Bool)

(declare-fun tp!1237949 () Bool)

(declare-fun tp!1237948 () Bool)

(assert (=> b!4089028 (= e!2537736 (and tp!1237949 tp!1237948))))

(declare-fun b!4089025 () Bool)

(assert (=> b!4089025 (= e!2537736 tp_is_empty!20985)))

(declare-fun b!4089026 () Bool)

(declare-fun tp!1237950 () Bool)

(declare-fun tp!1237947 () Bool)

(assert (=> b!4089026 (= e!2537736 (and tp!1237950 tp!1237947))))

(assert (= (and b!4088658 ((_ is ElementMatch!11991) (regex!7086 r!4213))) b!4089025))

(assert (= (and b!4088658 ((_ is Concat!19308) (regex!7086 r!4213))) b!4089026))

(assert (= (and b!4088658 ((_ is Star!11991) (regex!7086 r!4213))) b!4089027))

(assert (= (and b!4088658 ((_ is Union!11991) (regex!7086 r!4213))) b!4089028))

(declare-fun b_lambda!119801 () Bool)

(assert (= b_lambda!119783 (or (and b!4088652 b_free!114265 (= (toValue!9674 (transformation!7086 (h!49255 rules!3870))) (toValue!9674 (transformation!7086 r!4213)))) (and b!4088650 b_free!114269) (and b!4089010 b_free!114277 (= (toValue!9674 (transformation!7086 (h!49255 (t!338462 rules!3870)))) (toValue!9674 (transformation!7086 r!4213)))) b_lambda!119801)))

(declare-fun b_lambda!119803 () Bool)

(assert (= b_lambda!119799 (or (and b!4088652 b_free!114265 (= (toValue!9674 (transformation!7086 (h!49255 rules!3870))) (toValue!9674 (transformation!7086 r!4213)))) (and b!4088650 b_free!114269) (and b!4089010 b_free!114277 (= (toValue!9674 (transformation!7086 (h!49255 (t!338462 rules!3870)))) (toValue!9674 (transformation!7086 r!4213)))) b_lambda!119803)))

(declare-fun b_lambda!119805 () Bool)

(assert (= b_lambda!119797 (or (and b!4088652 b_free!114267 (= (toChars!9533 (transformation!7086 (h!49255 rules!3870))) (toChars!9533 (transformation!7086 r!4213)))) (and b!4088650 b_free!114271) (and b!4089010 b_free!114279 (= (toChars!9533 (transformation!7086 (h!49255 (t!338462 rules!3870)))) (toChars!9533 (transformation!7086 r!4213)))) b_lambda!119805)))

(check-sat (not b!4088675) (not b!4088933) (not d!1214106) (not d!1214114) (not b!4088792) (not b!4088939) (not b!4089023) tp_is_empty!20985 (not b_next!114971) (not b!4088978) (not b!4089028) (not b!4088977) (not b!4088982) (not d!1214138) b_and!315001 (not b_next!114981) (not d!1214146) (not b!4088759) (not b!4088992) b_and!314995 (not b!4088972) (not b!4088783) (not b!4088754) (not bm!289049) (not b!4088782) (not b_lambda!119801) (not b!4088778) (not d!1214142) (not b!4088984) (not b!4088749) (not b!4088785) (not b!4089022) (not b_next!114983) (not b!4089027) (not d!1214070) (not d!1214110) b_and!315003 (not d!1214134) (not d!1214148) (not b!4088784) b_and!314999 (not b!4088943) (not d!1214118) (not b_lambda!119803) (not d!1214154) (not b!4088999) (not tb!245729) (not b!4088990) (not b!4088786) (not bm!289040) (not b!4088674) (not b!4088756) (not b_next!114975) (not b!4088748) (not d!1214074) (not b!4088752) (not b!4088979) b_and!314997 (not b!4088781) (not b!4088998) (not b!4088779) (not b!4089008) (not b!4089026) b_and!315005 (not d!1214144) (not b!4088942) (not b!4088750) (not b!4089009) (not b!4089024) (not b!4088997) (not b_next!114969) (not b_next!114973) (not tb!245745) (not b_lambda!119805) (not d!1214108) (not b!4088755) (not b!4088753))
(check-sat (not b_next!114971) b_and!314995 (not b_next!114983) b_and!315003 b_and!314999 (not b_next!114975) b_and!314997 b_and!315005 b_and!315001 (not b_next!114981) (not b_next!114969) (not b_next!114973))
