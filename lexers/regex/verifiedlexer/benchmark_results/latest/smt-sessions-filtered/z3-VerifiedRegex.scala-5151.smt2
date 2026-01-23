; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!265632 () Bool)

(assert start!265632)

(declare-fun b!2740639 () Bool)

(declare-fun b_free!76889 () Bool)

(declare-fun b_next!77593 () Bool)

(assert (=> b!2740639 (= b_free!76889 (not b_next!77593))))

(declare-fun tp!861409 () Bool)

(declare-fun b_and!201609 () Bool)

(assert (=> b!2740639 (= tp!861409 b_and!201609)))

(declare-fun b_free!76891 () Bool)

(declare-fun b_next!77595 () Bool)

(assert (=> b!2740639 (= b_free!76891 (not b_next!77595))))

(declare-fun tp!861413 () Bool)

(declare-fun b_and!201611 () Bool)

(assert (=> b!2740639 (= tp!861413 b_and!201611)))

(declare-fun b!2740632 () Bool)

(declare-fun e!1725662 () Bool)

(declare-fun e!1725664 () Bool)

(assert (=> b!2740632 (= e!1725662 e!1725664)))

(declare-fun res!1150674 () Bool)

(assert (=> b!2740632 (=> (not res!1150674) (not e!1725664))))

(declare-datatypes ((C!16092 0))(
  ( (C!16093 (val!9980 Int)) )
))
(declare-datatypes ((List!31539 0))(
  ( (Nil!31439) (Cons!31439 (h!36859 C!16092) (t!227617 List!31539)) )
))
(declare-fun lt!970577 () List!31539)

(declare-datatypes ((List!31540 0))(
  ( (Nil!31440) (Cons!31440 (h!36860 (_ BitVec 16)) (t!227618 List!31540)) )
))
(declare-datatypes ((TokenValue!5037 0))(
  ( (FloatLiteralValue!10074 (text!35704 List!31540)) (TokenValueExt!5036 (__x!20209 Int)) (Broken!25185 (value!154814 List!31540)) (Object!5136) (End!5037) (Def!5037) (Underscore!5037) (Match!5037) (Else!5037) (Error!5037) (Case!5037) (If!5037) (Extends!5037) (Abstract!5037) (Class!5037) (Val!5037) (DelimiterValue!10074 (del!5097 List!31540)) (KeywordValue!5043 (value!154815 List!31540)) (CommentValue!10074 (value!154816 List!31540)) (WhitespaceValue!10074 (value!154817 List!31540)) (IndentationValue!5037 (value!154818 List!31540)) (String!35084) (Int32!5037) (Broken!25186 (value!154819 List!31540)) (Boolean!5038) (Unit!45459) (OperatorValue!5040 (op!5097 List!31540)) (IdentifierValue!10074 (value!154820 List!31540)) (IdentifierValue!10075 (value!154821 List!31540)) (WhitespaceValue!10075 (value!154822 List!31540)) (True!10074) (False!10074) (Broken!25187 (value!154823 List!31540)) (Broken!25188 (value!154824 List!31540)) (True!10075) (RightBrace!5037) (RightBracket!5037) (Colon!5037) (Null!5037) (Comma!5037) (LeftBracket!5037) (False!10075) (LeftBrace!5037) (ImaginaryLiteralValue!5037 (text!35705 List!31540)) (StringLiteralValue!15111 (value!154825 List!31540)) (EOFValue!5037 (value!154826 List!31540)) (IdentValue!5037 (value!154827 List!31540)) (DelimiterValue!10075 (value!154828 List!31540)) (DedentValue!5037 (value!154829 List!31540)) (NewLineValue!5037 (value!154830 List!31540)) (IntegerValue!15111 (value!154831 (_ BitVec 32)) (text!35706 List!31540)) (IntegerValue!15112 (value!154832 Int) (text!35707 List!31540)) (Times!5037) (Or!5037) (Equal!5037) (Minus!5037) (Broken!25189 (value!154833 List!31540)) (And!5037) (Div!5037) (LessEqual!5037) (Mod!5037) (Concat!13004) (Not!5037) (Plus!5037) (SpaceValue!5037 (value!154834 List!31540)) (IntegerValue!15113 (value!154835 Int) (text!35708 List!31540)) (StringLiteralValue!15112 (text!35709 List!31540)) (FloatLiteralValue!10075 (text!35710 List!31540)) (BytesLiteralValue!5037 (value!154836 List!31540)) (CommentValue!10075 (value!154837 List!31540)) (StringLiteralValue!15113 (value!154838 List!31540)) (ErrorTokenValue!5037 (msg!5098 List!31540)) )
))
(declare-datatypes ((Regex!7967 0))(
  ( (ElementMatch!7967 (c!444473 C!16092)) (Concat!13005 (regOne!16446 Regex!7967) (regTwo!16446 Regex!7967)) (EmptyExpr!7967) (Star!7967 (reg!8296 Regex!7967)) (EmptyLang!7967) (Union!7967 (regOne!16447 Regex!7967) (regTwo!16447 Regex!7967)) )
))
(declare-datatypes ((String!35085 0))(
  ( (String!35086 (value!154839 String)) )
))
(declare-datatypes ((IArray!19719 0))(
  ( (IArray!19720 (innerList!9917 List!31539)) )
))
(declare-datatypes ((Conc!9857 0))(
  ( (Node!9857 (left!24170 Conc!9857) (right!24500 Conc!9857) (csize!19944 Int) (cheight!10068 Int)) (Leaf!15009 (xs!12960 IArray!19719) (csize!19945 Int)) (Empty!9857) )
))
(declare-datatypes ((BalanceConc!19328 0))(
  ( (BalanceConc!19329 (c!444474 Conc!9857)) )
))
(declare-datatypes ((TokenValueInjection!9514 0))(
  ( (TokenValueInjection!9515 (toValue!6809 Int) (toChars!6668 Int)) )
))
(declare-datatypes ((Rule!9430 0))(
  ( (Rule!9431 (regex!4815 Regex!7967) (tag!5319 String!35085) (isSeparator!4815 Bool) (transformation!4815 TokenValueInjection!9514)) )
))
(declare-datatypes ((Token!9092 0))(
  ( (Token!9093 (value!154840 TokenValue!5037) (rule!7263 Rule!9430) (size!24284 Int) (originalCharacters!5577 List!31539)) )
))
(declare-datatypes ((List!31541 0))(
  ( (Nil!31441) (Cons!31441 (h!36861 Token!9092) (t!227619 List!31541)) )
))
(declare-datatypes ((IArray!19721 0))(
  ( (IArray!19722 (innerList!9918 List!31541)) )
))
(declare-datatypes ((Conc!9858 0))(
  ( (Node!9858 (left!24171 Conc!9858) (right!24501 Conc!9858) (csize!19946 Int) (cheight!10069 Int)) (Leaf!15010 (xs!12961 IArray!19721) (csize!19947 Int)) (Empty!9858) )
))
(declare-datatypes ((BalanceConc!19330 0))(
  ( (BalanceConc!19331 (c!444475 Conc!9858)) )
))
(declare-datatypes ((tuple2!31200 0))(
  ( (tuple2!31201 (_1!18232 BalanceConc!19330) (_2!18232 BalanceConc!19328)) )
))
(declare-fun lt!970574 () tuple2!31200)

(declare-fun list!11960 (BalanceConc!19328) List!31539)

(assert (=> b!2740632 (= res!1150674 (= lt!970577 (list!11960 (_2!18232 lt!970574))))))

(declare-fun lt!970578 () tuple2!31200)

(assert (=> b!2740632 (= lt!970577 (list!11960 (_2!18232 lt!970578)))))

(declare-fun b!2740633 () Bool)

(declare-fun e!1725667 () Bool)

(declare-fun e!1725663 () Bool)

(assert (=> b!2740633 (= e!1725667 e!1725663)))

(declare-fun res!1150681 () Bool)

(assert (=> b!2740633 (=> (not res!1150681) (not e!1725663))))

(declare-fun lt!970576 () List!31541)

(declare-fun lt!970579 () List!31541)

(assert (=> b!2740633 (= res!1150681 (= lt!970576 lt!970579))))

(declare-fun acc!331 () BalanceConc!19330)

(declare-fun list!11961 (BalanceConc!19330) List!31541)

(assert (=> b!2740633 (= lt!970579 (list!11961 acc!331))))

(declare-fun lt!970580 () tuple2!31200)

(assert (=> b!2740633 (= lt!970576 (list!11961 (_1!18232 lt!970580)))))

(declare-fun treated!9 () BalanceConc!19328)

(declare-datatypes ((LexerInterface!4411 0))(
  ( (LexerInterfaceExt!4408 (__x!20210 Int)) (Lexer!4409) )
))
(declare-fun thiss!11556 () LexerInterface!4411)

(declare-datatypes ((List!31542 0))(
  ( (Nil!31442) (Cons!31442 (h!36862 Rule!9430) (t!227620 List!31542)) )
))
(declare-fun rules!1182 () List!31542)

(declare-fun lexRec!671 (LexerInterface!4411 List!31542 BalanceConc!19328) tuple2!31200)

(assert (=> b!2740633 (= lt!970580 (lexRec!671 thiss!11556 rules!1182 treated!9))))

(declare-fun e!1725671 () Bool)

(declare-fun b!2740634 () Bool)

(declare-fun e!1725666 () Bool)

(declare-fun tp!861411 () Bool)

(declare-fun inv!42772 (String!35085) Bool)

(declare-fun inv!42778 (TokenValueInjection!9514) Bool)

(assert (=> b!2740634 (= e!1725671 (and tp!861411 (inv!42772 (tag!5319 (h!36862 rules!1182))) (inv!42778 (transformation!4815 (h!36862 rules!1182))) e!1725666))))

(declare-fun b!2740635 () Bool)

(declare-fun e!1725673 () Bool)

(declare-fun tp!861412 () Bool)

(assert (=> b!2740635 (= e!1725673 (and e!1725671 tp!861412))))

(declare-fun b!2740636 () Bool)

(declare-fun res!1150676 () Bool)

(declare-fun e!1725670 () Bool)

(assert (=> b!2740636 (=> (not res!1150676) (not e!1725670))))

(declare-fun rulesInvariant!3896 (LexerInterface!4411 List!31542) Bool)

(assert (=> b!2740636 (= res!1150676 (rulesInvariant!3896 thiss!11556 rules!1182))))

(declare-fun res!1150679 () Bool)

(assert (=> start!265632 (=> (not res!1150679) (not e!1725670))))

(get-info :version)

(assert (=> start!265632 (= res!1150679 ((_ is Lexer!4409) thiss!11556))))

(assert (=> start!265632 e!1725670))

(declare-fun e!1725672 () Bool)

(declare-fun inv!42779 (BalanceConc!19328) Bool)

(assert (=> start!265632 (and (inv!42779 treated!9) e!1725672)))

(declare-fun input!603 () BalanceConc!19328)

(declare-fun e!1725669 () Bool)

(assert (=> start!265632 (and (inv!42779 input!603) e!1725669)))

(assert (=> start!265632 true))

(assert (=> start!265632 e!1725673))

(declare-fun totalInput!328 () BalanceConc!19328)

(declare-fun e!1725661 () Bool)

(assert (=> start!265632 (and (inv!42779 totalInput!328) e!1725661)))

(declare-fun e!1725668 () Bool)

(declare-fun inv!42780 (BalanceConc!19330) Bool)

(assert (=> start!265632 (and (inv!42780 acc!331) e!1725668)))

(declare-fun b!2740637 () Bool)

(declare-fun res!1150675 () Bool)

(assert (=> b!2740637 (=> (not res!1150675) (not e!1725664))))

(declare-datatypes ((tuple2!31202 0))(
  ( (tuple2!31203 (_1!18233 Token!9092) (_2!18233 BalanceConc!19328)) )
))
(declare-datatypes ((Option!6223 0))(
  ( (None!6222) (Some!6222 (v!33116 tuple2!31202)) )
))
(declare-fun maxPrefixZipperSequence!1059 (LexerInterface!4411 List!31542 BalanceConc!19328) Option!6223)

(assert (=> b!2740637 (= res!1150675 (not ((_ is Some!6222) (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 input!603))))))

(declare-fun lt!970582 () List!31541)

(declare-fun b!2740638 () Bool)

(declare-fun lt!970573 () List!31539)

(assert (=> b!2740638 (= e!1725664 (or (not (= lt!970579 lt!970582)) (not (= lt!970573 lt!970577))))))

(assert (=> b!2740639 (= e!1725666 (and tp!861409 tp!861413))))

(declare-fun b!2740640 () Bool)

(declare-fun tp!861406 () Bool)

(declare-fun inv!42781 (Conc!9858) Bool)

(assert (=> b!2740640 (= e!1725668 (and (inv!42781 (c!444475 acc!331)) tp!861406))))

(declare-fun b!2740641 () Bool)

(declare-fun res!1150680 () Bool)

(assert (=> b!2740641 (=> (not res!1150680) (not e!1725670))))

(declare-fun isEmpty!17991 (List!31542) Bool)

(assert (=> b!2740641 (= res!1150680 (not (isEmpty!17991 rules!1182)))))

(declare-fun b!2740642 () Bool)

(declare-fun tp!861410 () Bool)

(declare-fun inv!42782 (Conc!9857) Bool)

(assert (=> b!2740642 (= e!1725669 (and (inv!42782 (c!444474 input!603)) tp!861410))))

(declare-fun b!2740643 () Bool)

(assert (=> b!2740643 (= e!1725670 e!1725667)))

(declare-fun res!1150673 () Bool)

(assert (=> b!2740643 (=> (not res!1150673) (not e!1725667))))

(declare-fun lt!970575 () List!31539)

(declare-fun ++!7872 (List!31539 List!31539) List!31539)

(assert (=> b!2740643 (= res!1150673 (= (list!11960 totalInput!328) (++!7872 lt!970575 lt!970573)))))

(assert (=> b!2740643 (= lt!970573 (list!11960 input!603))))

(assert (=> b!2740643 (= lt!970575 (list!11960 treated!9))))

(declare-fun b!2740644 () Bool)

(assert (=> b!2740644 (= e!1725663 e!1725662)))

(declare-fun res!1150678 () Bool)

(assert (=> b!2740644 (=> (not res!1150678) (not e!1725662))))

(declare-fun lt!970581 () BalanceConc!19330)

(assert (=> b!2740644 (= res!1150678 (= lt!970582 (list!11961 lt!970581)))))

(assert (=> b!2740644 (= lt!970582 (list!11961 (_1!18232 lt!970578)))))

(declare-fun ++!7873 (BalanceConc!19330 BalanceConc!19330) BalanceConc!19330)

(assert (=> b!2740644 (= lt!970581 (++!7873 acc!331 (_1!18232 lt!970574)))))

(assert (=> b!2740644 (= lt!970574 (lexRec!671 thiss!11556 rules!1182 input!603))))

(assert (=> b!2740644 (= lt!970578 (lexRec!671 thiss!11556 rules!1182 totalInput!328))))

(declare-fun b!2740645 () Bool)

(declare-fun tp!861408 () Bool)

(assert (=> b!2740645 (= e!1725672 (and (inv!42782 (c!444474 treated!9)) tp!861408))))

(declare-fun b!2740646 () Bool)

(declare-fun tp!861407 () Bool)

(assert (=> b!2740646 (= e!1725661 (and (inv!42782 (c!444474 totalInput!328)) tp!861407))))

(declare-fun b!2740647 () Bool)

(declare-fun res!1150677 () Bool)

(assert (=> b!2740647 (=> (not res!1150677) (not e!1725663))))

(declare-fun isEmpty!17992 (List!31539) Bool)

(assert (=> b!2740647 (= res!1150677 (isEmpty!17992 (list!11960 (_2!18232 lt!970580))))))

(assert (= (and start!265632 res!1150679) b!2740641))

(assert (= (and b!2740641 res!1150680) b!2740636))

(assert (= (and b!2740636 res!1150676) b!2740643))

(assert (= (and b!2740643 res!1150673) b!2740633))

(assert (= (and b!2740633 res!1150681) b!2740647))

(assert (= (and b!2740647 res!1150677) b!2740644))

(assert (= (and b!2740644 res!1150678) b!2740632))

(assert (= (and b!2740632 res!1150674) b!2740637))

(assert (= (and b!2740637 res!1150675) b!2740638))

(assert (= start!265632 b!2740645))

(assert (= start!265632 b!2740642))

(assert (= b!2740634 b!2740639))

(assert (= b!2740635 b!2740634))

(assert (= (and start!265632 ((_ is Cons!31442) rules!1182)) b!2740635))

(assert (= start!265632 b!2740646))

(assert (= start!265632 b!2740640))

(declare-fun m!3158301 () Bool)

(assert (=> b!2740643 m!3158301))

(declare-fun m!3158303 () Bool)

(assert (=> b!2740643 m!3158303))

(declare-fun m!3158305 () Bool)

(assert (=> b!2740643 m!3158305))

(declare-fun m!3158307 () Bool)

(assert (=> b!2740643 m!3158307))

(declare-fun m!3158309 () Bool)

(assert (=> b!2740636 m!3158309))

(declare-fun m!3158311 () Bool)

(assert (=> b!2740645 m!3158311))

(declare-fun m!3158313 () Bool)

(assert (=> b!2740637 m!3158313))

(declare-fun m!3158315 () Bool)

(assert (=> b!2740646 m!3158315))

(declare-fun m!3158317 () Bool)

(assert (=> b!2740647 m!3158317))

(assert (=> b!2740647 m!3158317))

(declare-fun m!3158319 () Bool)

(assert (=> b!2740647 m!3158319))

(declare-fun m!3158321 () Bool)

(assert (=> b!2740632 m!3158321))

(declare-fun m!3158323 () Bool)

(assert (=> b!2740632 m!3158323))

(declare-fun m!3158325 () Bool)

(assert (=> b!2740641 m!3158325))

(declare-fun m!3158327 () Bool)

(assert (=> start!265632 m!3158327))

(declare-fun m!3158329 () Bool)

(assert (=> start!265632 m!3158329))

(declare-fun m!3158331 () Bool)

(assert (=> start!265632 m!3158331))

(declare-fun m!3158333 () Bool)

(assert (=> start!265632 m!3158333))

(declare-fun m!3158335 () Bool)

(assert (=> b!2740644 m!3158335))

(declare-fun m!3158337 () Bool)

(assert (=> b!2740644 m!3158337))

(declare-fun m!3158339 () Bool)

(assert (=> b!2740644 m!3158339))

(declare-fun m!3158341 () Bool)

(assert (=> b!2740644 m!3158341))

(declare-fun m!3158343 () Bool)

(assert (=> b!2740644 m!3158343))

(declare-fun m!3158345 () Bool)

(assert (=> b!2740633 m!3158345))

(declare-fun m!3158347 () Bool)

(assert (=> b!2740633 m!3158347))

(declare-fun m!3158349 () Bool)

(assert (=> b!2740633 m!3158349))

(declare-fun m!3158351 () Bool)

(assert (=> b!2740634 m!3158351))

(declare-fun m!3158353 () Bool)

(assert (=> b!2740634 m!3158353))

(declare-fun m!3158355 () Bool)

(assert (=> b!2740642 m!3158355))

(declare-fun m!3158357 () Bool)

(assert (=> b!2740640 m!3158357))

(check-sat (not b!2740647) (not b!2740637) (not b_next!77595) (not b!2740632) (not b_next!77593) (not b!2740636) (not b!2740635) (not b!2740634) (not b!2740644) (not start!265632) (not b!2740642) (not b!2740645) (not b!2740633) (not b!2740646) (not b!2740640) b_and!201609 b_and!201611 (not b!2740641) (not b!2740643))
(check-sat b_and!201611 b_and!201609 (not b_next!77595) (not b_next!77593))
(get-model)

(declare-fun d!795154 () Bool)

(declare-fun c!444478 () Bool)

(assert (=> d!795154 (= c!444478 ((_ is Node!9857) (c!444474 treated!9)))))

(declare-fun e!1725678 () Bool)

(assert (=> d!795154 (= (inv!42782 (c!444474 treated!9)) e!1725678)))

(declare-fun b!2740654 () Bool)

(declare-fun inv!42787 (Conc!9857) Bool)

(assert (=> b!2740654 (= e!1725678 (inv!42787 (c!444474 treated!9)))))

(declare-fun b!2740655 () Bool)

(declare-fun e!1725679 () Bool)

(assert (=> b!2740655 (= e!1725678 e!1725679)))

(declare-fun res!1150688 () Bool)

(assert (=> b!2740655 (= res!1150688 (not ((_ is Leaf!15009) (c!444474 treated!9))))))

(assert (=> b!2740655 (=> res!1150688 e!1725679)))

(declare-fun b!2740656 () Bool)

(declare-fun inv!42788 (Conc!9857) Bool)

(assert (=> b!2740656 (= e!1725679 (inv!42788 (c!444474 treated!9)))))

(assert (= (and d!795154 c!444478) b!2740654))

(assert (= (and d!795154 (not c!444478)) b!2740655))

(assert (= (and b!2740655 (not res!1150688)) b!2740656))

(declare-fun m!3158359 () Bool)

(assert (=> b!2740654 m!3158359))

(declare-fun m!3158361 () Bool)

(assert (=> b!2740656 m!3158361))

(assert (=> b!2740645 d!795154))

(declare-fun d!795158 () Bool)

(assert (=> d!795158 (= (inv!42772 (tag!5319 (h!36862 rules!1182))) (= (mod (str.len (value!154839 (tag!5319 (h!36862 rules!1182)))) 2) 0))))

(assert (=> b!2740634 d!795158))

(declare-fun d!795160 () Bool)

(declare-fun res!1150691 () Bool)

(declare-fun e!1725682 () Bool)

(assert (=> d!795160 (=> (not res!1150691) (not e!1725682))))

(declare-fun semiInverseModEq!1991 (Int Int) Bool)

(assert (=> d!795160 (= res!1150691 (semiInverseModEq!1991 (toChars!6668 (transformation!4815 (h!36862 rules!1182))) (toValue!6809 (transformation!4815 (h!36862 rules!1182)))))))

(assert (=> d!795160 (= (inv!42778 (transformation!4815 (h!36862 rules!1182))) e!1725682)))

(declare-fun b!2740659 () Bool)

(declare-fun equivClasses!1892 (Int Int) Bool)

(assert (=> b!2740659 (= e!1725682 (equivClasses!1892 (toChars!6668 (transformation!4815 (h!36862 rules!1182))) (toValue!6809 (transformation!4815 (h!36862 rules!1182)))))))

(assert (= (and d!795160 res!1150691) b!2740659))

(declare-fun m!3158363 () Bool)

(assert (=> d!795160 m!3158363))

(declare-fun m!3158365 () Bool)

(assert (=> b!2740659 m!3158365))

(assert (=> b!2740634 d!795160))

(declare-fun d!795162 () Bool)

(declare-fun c!444479 () Bool)

(assert (=> d!795162 (= c!444479 ((_ is Node!9857) (c!444474 totalInput!328)))))

(declare-fun e!1725683 () Bool)

(assert (=> d!795162 (= (inv!42782 (c!444474 totalInput!328)) e!1725683)))

(declare-fun b!2740660 () Bool)

(assert (=> b!2740660 (= e!1725683 (inv!42787 (c!444474 totalInput!328)))))

(declare-fun b!2740661 () Bool)

(declare-fun e!1725684 () Bool)

(assert (=> b!2740661 (= e!1725683 e!1725684)))

(declare-fun res!1150692 () Bool)

(assert (=> b!2740661 (= res!1150692 (not ((_ is Leaf!15009) (c!444474 totalInput!328))))))

(assert (=> b!2740661 (=> res!1150692 e!1725684)))

(declare-fun b!2740662 () Bool)

(assert (=> b!2740662 (= e!1725684 (inv!42788 (c!444474 totalInput!328)))))

(assert (= (and d!795162 c!444479) b!2740660))

(assert (= (and d!795162 (not c!444479)) b!2740661))

(assert (= (and b!2740661 (not res!1150692)) b!2740662))

(declare-fun m!3158367 () Bool)

(assert (=> b!2740660 m!3158367))

(declare-fun m!3158369 () Bool)

(assert (=> b!2740662 m!3158369))

(assert (=> b!2740646 d!795162))

(declare-fun d!795164 () Bool)

(assert (=> d!795164 (= (isEmpty!17992 (list!11960 (_2!18232 lt!970580))) ((_ is Nil!31439) (list!11960 (_2!18232 lt!970580))))))

(assert (=> b!2740647 d!795164))

(declare-fun d!795166 () Bool)

(declare-fun list!11964 (Conc!9857) List!31539)

(assert (=> d!795166 (= (list!11960 (_2!18232 lt!970580)) (list!11964 (c!444474 (_2!18232 lt!970580))))))

(declare-fun bs!490102 () Bool)

(assert (= bs!490102 d!795166))

(declare-fun m!3158371 () Bool)

(assert (=> bs!490102 m!3158371))

(assert (=> b!2740647 d!795166))

(declare-fun d!795168 () Bool)

(declare-fun res!1150695 () Bool)

(declare-fun e!1725687 () Bool)

(assert (=> d!795168 (=> (not res!1150695) (not e!1725687))))

(declare-fun rulesValid!1798 (LexerInterface!4411 List!31542) Bool)

(assert (=> d!795168 (= res!1150695 (rulesValid!1798 thiss!11556 rules!1182))))

(assert (=> d!795168 (= (rulesInvariant!3896 thiss!11556 rules!1182) e!1725687)))

(declare-fun b!2740665 () Bool)

(declare-datatypes ((List!31544 0))(
  ( (Nil!31444) (Cons!31444 (h!36864 String!35085) (t!227622 List!31544)) )
))
(declare-fun noDuplicateTag!1794 (LexerInterface!4411 List!31542 List!31544) Bool)

(assert (=> b!2740665 (= e!1725687 (noDuplicateTag!1794 thiss!11556 rules!1182 Nil!31444))))

(assert (= (and d!795168 res!1150695) b!2740665))

(declare-fun m!3158373 () Bool)

(assert (=> d!795168 m!3158373))

(declare-fun m!3158375 () Bool)

(assert (=> b!2740665 m!3158375))

(assert (=> b!2740636 d!795168))

(declare-fun d!795170 () Bool)

(declare-fun c!444480 () Bool)

(assert (=> d!795170 (= c!444480 ((_ is Node!9857) (c!444474 input!603)))))

(declare-fun e!1725688 () Bool)

(assert (=> d!795170 (= (inv!42782 (c!444474 input!603)) e!1725688)))

(declare-fun b!2740666 () Bool)

(assert (=> b!2740666 (= e!1725688 (inv!42787 (c!444474 input!603)))))

(declare-fun b!2740667 () Bool)

(declare-fun e!1725689 () Bool)

(assert (=> b!2740667 (= e!1725688 e!1725689)))

(declare-fun res!1150696 () Bool)

(assert (=> b!2740667 (= res!1150696 (not ((_ is Leaf!15009) (c!444474 input!603))))))

(assert (=> b!2740667 (=> res!1150696 e!1725689)))

(declare-fun b!2740668 () Bool)

(assert (=> b!2740668 (= e!1725689 (inv!42788 (c!444474 input!603)))))

(assert (= (and d!795170 c!444480) b!2740666))

(assert (= (and d!795170 (not c!444480)) b!2740667))

(assert (= (and b!2740667 (not res!1150696)) b!2740668))

(declare-fun m!3158377 () Bool)

(assert (=> b!2740666 m!3158377))

(declare-fun m!3158379 () Bool)

(assert (=> b!2740668 m!3158379))

(assert (=> b!2740642 d!795170))

(declare-fun d!795172 () Bool)

(assert (=> d!795172 (= (list!11960 totalInput!328) (list!11964 (c!444474 totalInput!328)))))

(declare-fun bs!490103 () Bool)

(assert (= bs!490103 d!795172))

(declare-fun m!3158381 () Bool)

(assert (=> bs!490103 m!3158381))

(assert (=> b!2740643 d!795172))

(declare-fun b!2740678 () Bool)

(declare-fun e!1725694 () List!31539)

(assert (=> b!2740678 (= e!1725694 (Cons!31439 (h!36859 lt!970575) (++!7872 (t!227617 lt!970575) lt!970573)))))

(declare-fun d!795174 () Bool)

(declare-fun e!1725695 () Bool)

(assert (=> d!795174 e!1725695))

(declare-fun res!1150701 () Bool)

(assert (=> d!795174 (=> (not res!1150701) (not e!1725695))))

(declare-fun lt!970585 () List!31539)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4481 (List!31539) (InoxSet C!16092))

(assert (=> d!795174 (= res!1150701 (= (content!4481 lt!970585) ((_ map or) (content!4481 lt!970575) (content!4481 lt!970573))))))

(assert (=> d!795174 (= lt!970585 e!1725694)))

(declare-fun c!444483 () Bool)

(assert (=> d!795174 (= c!444483 ((_ is Nil!31439) lt!970575))))

(assert (=> d!795174 (= (++!7872 lt!970575 lt!970573) lt!970585)))

(declare-fun b!2740677 () Bool)

(assert (=> b!2740677 (= e!1725694 lt!970573)))

(declare-fun b!2740680 () Bool)

(assert (=> b!2740680 (= e!1725695 (or (not (= lt!970573 Nil!31439)) (= lt!970585 lt!970575)))))

(declare-fun b!2740679 () Bool)

(declare-fun res!1150702 () Bool)

(assert (=> b!2740679 (=> (not res!1150702) (not e!1725695))))

(declare-fun size!24288 (List!31539) Int)

(assert (=> b!2740679 (= res!1150702 (= (size!24288 lt!970585) (+ (size!24288 lt!970575) (size!24288 lt!970573))))))

(assert (= (and d!795174 c!444483) b!2740677))

(assert (= (and d!795174 (not c!444483)) b!2740678))

(assert (= (and d!795174 res!1150701) b!2740679))

(assert (= (and b!2740679 res!1150702) b!2740680))

(declare-fun m!3158383 () Bool)

(assert (=> b!2740678 m!3158383))

(declare-fun m!3158385 () Bool)

(assert (=> d!795174 m!3158385))

(declare-fun m!3158387 () Bool)

(assert (=> d!795174 m!3158387))

(declare-fun m!3158389 () Bool)

(assert (=> d!795174 m!3158389))

(declare-fun m!3158391 () Bool)

(assert (=> b!2740679 m!3158391))

(declare-fun m!3158393 () Bool)

(assert (=> b!2740679 m!3158393))

(declare-fun m!3158395 () Bool)

(assert (=> b!2740679 m!3158395))

(assert (=> b!2740643 d!795174))

(declare-fun d!795176 () Bool)

(assert (=> d!795176 (= (list!11960 input!603) (list!11964 (c!444474 input!603)))))

(declare-fun bs!490104 () Bool)

(assert (= bs!490104 d!795176))

(declare-fun m!3158397 () Bool)

(assert (=> bs!490104 m!3158397))

(assert (=> b!2740643 d!795176))

(declare-fun d!795178 () Bool)

(assert (=> d!795178 (= (list!11960 treated!9) (list!11964 (c!444474 treated!9)))))

(declare-fun bs!490105 () Bool)

(assert (= bs!490105 d!795178))

(declare-fun m!3158399 () Bool)

(assert (=> bs!490105 m!3158399))

(assert (=> b!2740643 d!795178))

(declare-fun d!795180 () Bool)

(assert (=> d!795180 (= (list!11960 (_2!18232 lt!970574)) (list!11964 (c!444474 (_2!18232 lt!970574))))))

(declare-fun bs!490106 () Bool)

(assert (= bs!490106 d!795180))

(declare-fun m!3158401 () Bool)

(assert (=> bs!490106 m!3158401))

(assert (=> b!2740632 d!795180))

(declare-fun d!795182 () Bool)

(assert (=> d!795182 (= (list!11960 (_2!18232 lt!970578)) (list!11964 (c!444474 (_2!18232 lt!970578))))))

(declare-fun bs!490107 () Bool)

(assert (= bs!490107 d!795182))

(declare-fun m!3158403 () Bool)

(assert (=> bs!490107 m!3158403))

(assert (=> b!2740632 d!795182))

(declare-fun d!795184 () Bool)

(declare-fun list!11965 (Conc!9858) List!31541)

(assert (=> d!795184 (= (list!11961 acc!331) (list!11965 (c!444475 acc!331)))))

(declare-fun bs!490108 () Bool)

(assert (= bs!490108 d!795184))

(declare-fun m!3158405 () Bool)

(assert (=> bs!490108 m!3158405))

(assert (=> b!2740633 d!795184))

(declare-fun d!795186 () Bool)

(assert (=> d!795186 (= (list!11961 (_1!18232 lt!970580)) (list!11965 (c!444475 (_1!18232 lt!970580))))))

(declare-fun bs!490109 () Bool)

(assert (= bs!490109 d!795186))

(declare-fun m!3158407 () Bool)

(assert (=> bs!490109 m!3158407))

(assert (=> b!2740633 d!795186))

(declare-fun lt!970636 () tuple2!31200)

(declare-fun e!1725806 () Bool)

(declare-fun b!2740861 () Bool)

(declare-datatypes ((tuple2!31208 0))(
  ( (tuple2!31209 (_1!18236 List!31541) (_2!18236 List!31539)) )
))
(declare-fun lexList!1240 (LexerInterface!4411 List!31542 List!31539) tuple2!31208)

(assert (=> b!2740861 (= e!1725806 (= (list!11960 (_2!18232 lt!970636)) (_2!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 treated!9)))))))

(declare-fun b!2740862 () Bool)

(declare-fun e!1725805 () Bool)

(assert (=> b!2740862 (= e!1725805 (= (list!11960 (_2!18232 lt!970636)) (list!11960 treated!9)))))

(declare-fun b!2740863 () Bool)

(declare-fun e!1725804 () tuple2!31200)

(declare-fun lt!970634 () tuple2!31200)

(declare-fun lt!970635 () Option!6223)

(declare-fun prepend!1157 (BalanceConc!19330 Token!9092) BalanceConc!19330)

(assert (=> b!2740863 (= e!1725804 (tuple2!31201 (prepend!1157 (_1!18232 lt!970634) (_1!18233 (v!33116 lt!970635))) (_2!18232 lt!970634)))))

(assert (=> b!2740863 (= lt!970634 (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970635))))))

(declare-fun b!2740864 () Bool)

(assert (=> b!2740864 (= e!1725804 (tuple2!31201 (BalanceConc!19331 Empty!9858) treated!9))))

(declare-fun b!2740865 () Bool)

(declare-fun e!1725807 () Bool)

(assert (=> b!2740865 (= e!1725805 e!1725807)))

(declare-fun res!1150775 () Bool)

(declare-fun size!24289 (BalanceConc!19328) Int)

(assert (=> b!2740865 (= res!1150775 (< (size!24289 (_2!18232 lt!970636)) (size!24289 treated!9)))))

(assert (=> b!2740865 (=> (not res!1150775) (not e!1725807))))

(declare-fun d!795188 () Bool)

(assert (=> d!795188 e!1725806))

(declare-fun res!1150776 () Bool)

(assert (=> d!795188 (=> (not res!1150776) (not e!1725806))))

(assert (=> d!795188 (= res!1150776 e!1725805)))

(declare-fun c!444517 () Bool)

(declare-fun size!24290 (BalanceConc!19330) Int)

(assert (=> d!795188 (= c!444517 (> (size!24290 (_1!18232 lt!970636)) 0))))

(assert (=> d!795188 (= lt!970636 e!1725804)))

(declare-fun c!444518 () Bool)

(assert (=> d!795188 (= c!444518 ((_ is Some!6222) lt!970635))))

(assert (=> d!795188 (= lt!970635 (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 treated!9))))

(assert (=> d!795188 (= (lexRec!671 thiss!11556 rules!1182 treated!9) lt!970636)))

(declare-fun b!2740866 () Bool)

(declare-fun res!1150774 () Bool)

(assert (=> b!2740866 (=> (not res!1150774) (not e!1725806))))

(assert (=> b!2740866 (= res!1150774 (= (list!11961 (_1!18232 lt!970636)) (_1!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 treated!9)))))))

(declare-fun b!2740867 () Bool)

(declare-fun isEmpty!17994 (BalanceConc!19330) Bool)

(assert (=> b!2740867 (= e!1725807 (not (isEmpty!17994 (_1!18232 lt!970636))))))

(assert (= (and d!795188 c!444518) b!2740863))

(assert (= (and d!795188 (not c!444518)) b!2740864))

(assert (= (and d!795188 c!444517) b!2740865))

(assert (= (and d!795188 (not c!444517)) b!2740862))

(assert (= (and b!2740865 res!1150775) b!2740867))

(assert (= (and d!795188 res!1150776) b!2740866))

(assert (= (and b!2740866 res!1150774) b!2740861))

(declare-fun m!3158607 () Bool)

(assert (=> b!2740865 m!3158607))

(declare-fun m!3158609 () Bool)

(assert (=> b!2740865 m!3158609))

(declare-fun m!3158611 () Bool)

(assert (=> b!2740861 m!3158611))

(assert (=> b!2740861 m!3158307))

(assert (=> b!2740861 m!3158307))

(declare-fun m!3158613 () Bool)

(assert (=> b!2740861 m!3158613))

(declare-fun m!3158615 () Bool)

(assert (=> b!2740863 m!3158615))

(declare-fun m!3158617 () Bool)

(assert (=> b!2740863 m!3158617))

(declare-fun m!3158619 () Bool)

(assert (=> d!795188 m!3158619))

(declare-fun m!3158621 () Bool)

(assert (=> d!795188 m!3158621))

(declare-fun m!3158623 () Bool)

(assert (=> b!2740867 m!3158623))

(declare-fun m!3158625 () Bool)

(assert (=> b!2740866 m!3158625))

(assert (=> b!2740866 m!3158307))

(assert (=> b!2740866 m!3158307))

(assert (=> b!2740866 m!3158613))

(assert (=> b!2740862 m!3158611))

(assert (=> b!2740862 m!3158307))

(assert (=> b!2740633 d!795188))

(declare-fun d!795246 () Bool)

(assert (=> d!795246 (= (list!11961 lt!970581) (list!11965 (c!444475 lt!970581)))))

(declare-fun bs!490124 () Bool)

(assert (= bs!490124 d!795246))

(declare-fun m!3158627 () Bool)

(assert (=> bs!490124 m!3158627))

(assert (=> b!2740644 d!795246))

(declare-fun d!795248 () Bool)

(assert (=> d!795248 (= (list!11961 (_1!18232 lt!970578)) (list!11965 (c!444475 (_1!18232 lt!970578))))))

(declare-fun bs!490125 () Bool)

(assert (= bs!490125 d!795248))

(declare-fun m!3158629 () Bool)

(assert (=> bs!490125 m!3158629))

(assert (=> b!2740644 d!795248))

(declare-fun b!2740868 () Bool)

(declare-fun lt!970639 () tuple2!31200)

(declare-fun e!1725810 () Bool)

(assert (=> b!2740868 (= e!1725810 (= (list!11960 (_2!18232 lt!970639)) (_2!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 input!603)))))))

(declare-fun b!2740869 () Bool)

(declare-fun e!1725809 () Bool)

(assert (=> b!2740869 (= e!1725809 (= (list!11960 (_2!18232 lt!970639)) (list!11960 input!603)))))

(declare-fun b!2740870 () Bool)

(declare-fun e!1725808 () tuple2!31200)

(declare-fun lt!970637 () tuple2!31200)

(declare-fun lt!970638 () Option!6223)

(assert (=> b!2740870 (= e!1725808 (tuple2!31201 (prepend!1157 (_1!18232 lt!970637) (_1!18233 (v!33116 lt!970638))) (_2!18232 lt!970637)))))

(assert (=> b!2740870 (= lt!970637 (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970638))))))

(declare-fun b!2740871 () Bool)

(assert (=> b!2740871 (= e!1725808 (tuple2!31201 (BalanceConc!19331 Empty!9858) input!603))))

(declare-fun b!2740872 () Bool)

(declare-fun e!1725811 () Bool)

(assert (=> b!2740872 (= e!1725809 e!1725811)))

(declare-fun res!1150778 () Bool)

(assert (=> b!2740872 (= res!1150778 (< (size!24289 (_2!18232 lt!970639)) (size!24289 input!603)))))

(assert (=> b!2740872 (=> (not res!1150778) (not e!1725811))))

(declare-fun d!795250 () Bool)

(assert (=> d!795250 e!1725810))

(declare-fun res!1150779 () Bool)

(assert (=> d!795250 (=> (not res!1150779) (not e!1725810))))

(assert (=> d!795250 (= res!1150779 e!1725809)))

(declare-fun c!444519 () Bool)

(assert (=> d!795250 (= c!444519 (> (size!24290 (_1!18232 lt!970639)) 0))))

(assert (=> d!795250 (= lt!970639 e!1725808)))

(declare-fun c!444520 () Bool)

(assert (=> d!795250 (= c!444520 ((_ is Some!6222) lt!970638))))

(assert (=> d!795250 (= lt!970638 (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 input!603))))

(assert (=> d!795250 (= (lexRec!671 thiss!11556 rules!1182 input!603) lt!970639)))

(declare-fun b!2740873 () Bool)

(declare-fun res!1150777 () Bool)

(assert (=> b!2740873 (=> (not res!1150777) (not e!1725810))))

(assert (=> b!2740873 (= res!1150777 (= (list!11961 (_1!18232 lt!970639)) (_1!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 input!603)))))))

(declare-fun b!2740874 () Bool)

(assert (=> b!2740874 (= e!1725811 (not (isEmpty!17994 (_1!18232 lt!970639))))))

(assert (= (and d!795250 c!444520) b!2740870))

(assert (= (and d!795250 (not c!444520)) b!2740871))

(assert (= (and d!795250 c!444519) b!2740872))

(assert (= (and d!795250 (not c!444519)) b!2740869))

(assert (= (and b!2740872 res!1150778) b!2740874))

(assert (= (and d!795250 res!1150779) b!2740873))

(assert (= (and b!2740873 res!1150777) b!2740868))

(declare-fun m!3158631 () Bool)

(assert (=> b!2740872 m!3158631))

(declare-fun m!3158633 () Bool)

(assert (=> b!2740872 m!3158633))

(declare-fun m!3158635 () Bool)

(assert (=> b!2740868 m!3158635))

(assert (=> b!2740868 m!3158305))

(assert (=> b!2740868 m!3158305))

(declare-fun m!3158637 () Bool)

(assert (=> b!2740868 m!3158637))

(declare-fun m!3158639 () Bool)

(assert (=> b!2740870 m!3158639))

(declare-fun m!3158641 () Bool)

(assert (=> b!2740870 m!3158641))

(declare-fun m!3158643 () Bool)

(assert (=> d!795250 m!3158643))

(assert (=> d!795250 m!3158313))

(declare-fun m!3158645 () Bool)

(assert (=> b!2740874 m!3158645))

(declare-fun m!3158647 () Bool)

(assert (=> b!2740873 m!3158647))

(assert (=> b!2740873 m!3158305))

(assert (=> b!2740873 m!3158305))

(assert (=> b!2740873 m!3158637))

(assert (=> b!2740869 m!3158635))

(assert (=> b!2740869 m!3158305))

(assert (=> b!2740644 d!795250))

(declare-fun b!2740875 () Bool)

(declare-fun e!1725814 () Bool)

(declare-fun lt!970642 () tuple2!31200)

(assert (=> b!2740875 (= e!1725814 (= (list!11960 (_2!18232 lt!970642)) (_2!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 totalInput!328)))))))

(declare-fun b!2740876 () Bool)

(declare-fun e!1725813 () Bool)

(assert (=> b!2740876 (= e!1725813 (= (list!11960 (_2!18232 lt!970642)) (list!11960 totalInput!328)))))

(declare-fun b!2740877 () Bool)

(declare-fun e!1725812 () tuple2!31200)

(declare-fun lt!970640 () tuple2!31200)

(declare-fun lt!970641 () Option!6223)

(assert (=> b!2740877 (= e!1725812 (tuple2!31201 (prepend!1157 (_1!18232 lt!970640) (_1!18233 (v!33116 lt!970641))) (_2!18232 lt!970640)))))

(assert (=> b!2740877 (= lt!970640 (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970641))))))

(declare-fun b!2740878 () Bool)

(assert (=> b!2740878 (= e!1725812 (tuple2!31201 (BalanceConc!19331 Empty!9858) totalInput!328))))

(declare-fun b!2740879 () Bool)

(declare-fun e!1725815 () Bool)

(assert (=> b!2740879 (= e!1725813 e!1725815)))

(declare-fun res!1150781 () Bool)

(assert (=> b!2740879 (= res!1150781 (< (size!24289 (_2!18232 lt!970642)) (size!24289 totalInput!328)))))

(assert (=> b!2740879 (=> (not res!1150781) (not e!1725815))))

(declare-fun d!795252 () Bool)

(assert (=> d!795252 e!1725814))

(declare-fun res!1150782 () Bool)

(assert (=> d!795252 (=> (not res!1150782) (not e!1725814))))

(assert (=> d!795252 (= res!1150782 e!1725813)))

(declare-fun c!444521 () Bool)

(assert (=> d!795252 (= c!444521 (> (size!24290 (_1!18232 lt!970642)) 0))))

(assert (=> d!795252 (= lt!970642 e!1725812)))

(declare-fun c!444522 () Bool)

(assert (=> d!795252 (= c!444522 ((_ is Some!6222) lt!970641))))

(assert (=> d!795252 (= lt!970641 (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 totalInput!328))))

(assert (=> d!795252 (= (lexRec!671 thiss!11556 rules!1182 totalInput!328) lt!970642)))

(declare-fun b!2740880 () Bool)

(declare-fun res!1150780 () Bool)

(assert (=> b!2740880 (=> (not res!1150780) (not e!1725814))))

(assert (=> b!2740880 (= res!1150780 (= (list!11961 (_1!18232 lt!970642)) (_1!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 totalInput!328)))))))

(declare-fun b!2740881 () Bool)

(assert (=> b!2740881 (= e!1725815 (not (isEmpty!17994 (_1!18232 lt!970642))))))

(assert (= (and d!795252 c!444522) b!2740877))

(assert (= (and d!795252 (not c!444522)) b!2740878))

(assert (= (and d!795252 c!444521) b!2740879))

(assert (= (and d!795252 (not c!444521)) b!2740876))

(assert (= (and b!2740879 res!1150781) b!2740881))

(assert (= (and d!795252 res!1150782) b!2740880))

(assert (= (and b!2740880 res!1150780) b!2740875))

(declare-fun m!3158649 () Bool)

(assert (=> b!2740879 m!3158649))

(declare-fun m!3158651 () Bool)

(assert (=> b!2740879 m!3158651))

(declare-fun m!3158653 () Bool)

(assert (=> b!2740875 m!3158653))

(assert (=> b!2740875 m!3158301))

(assert (=> b!2740875 m!3158301))

(declare-fun m!3158655 () Bool)

(assert (=> b!2740875 m!3158655))

(declare-fun m!3158657 () Bool)

(assert (=> b!2740877 m!3158657))

(declare-fun m!3158659 () Bool)

(assert (=> b!2740877 m!3158659))

(declare-fun m!3158661 () Bool)

(assert (=> d!795252 m!3158661))

(declare-fun m!3158663 () Bool)

(assert (=> d!795252 m!3158663))

(declare-fun m!3158665 () Bool)

(assert (=> b!2740881 m!3158665))

(declare-fun m!3158667 () Bool)

(assert (=> b!2740880 m!3158667))

(assert (=> b!2740880 m!3158301))

(assert (=> b!2740880 m!3158301))

(assert (=> b!2740880 m!3158655))

(assert (=> b!2740876 m!3158653))

(assert (=> b!2740876 m!3158301))

(assert (=> b!2740644 d!795252))

(declare-fun d!795254 () Bool)

(declare-fun e!1725818 () Bool)

(assert (=> d!795254 e!1725818))

(declare-fun res!1150792 () Bool)

(assert (=> d!795254 (=> (not res!1150792) (not e!1725818))))

(declare-fun appendAssocInst!709 (Conc!9858 Conc!9858) Bool)

(assert (=> d!795254 (= res!1150792 (appendAssocInst!709 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))))

(declare-fun lt!970645 () BalanceConc!19330)

(declare-fun ++!7876 (Conc!9858 Conc!9858) Conc!9858)

(assert (=> d!795254 (= lt!970645 (BalanceConc!19331 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))))))

(assert (=> d!795254 (= (++!7873 acc!331 (_1!18232 lt!970574)) lt!970645)))

(declare-fun b!2740891 () Bool)

(declare-fun res!1150794 () Bool)

(assert (=> b!2740891 (=> (not res!1150794) (not e!1725818))))

(declare-fun height!1480 (Conc!9858) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2740891 (= res!1150794 (<= (height!1480 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))) (+ (max!0 (height!1480 (c!444475 acc!331)) (height!1480 (c!444475 (_1!18232 lt!970574)))) 1)))))

(declare-fun b!2740892 () Bool)

(declare-fun res!1150791 () Bool)

(assert (=> b!2740892 (=> (not res!1150791) (not e!1725818))))

(assert (=> b!2740892 (= res!1150791 (>= (height!1480 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))) (max!0 (height!1480 (c!444475 acc!331)) (height!1480 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2740893 () Bool)

(declare-fun ++!7877 (List!31541 List!31541) List!31541)

(assert (=> b!2740893 (= e!1725818 (= (list!11961 lt!970645) (++!7877 (list!11961 acc!331) (list!11961 (_1!18232 lt!970574)))))))

(declare-fun b!2740890 () Bool)

(declare-fun res!1150793 () Bool)

(assert (=> b!2740890 (=> (not res!1150793) (not e!1725818))))

(declare-fun isBalanced!3003 (Conc!9858) Bool)

(assert (=> b!2740890 (= res!1150793 (isBalanced!3003 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))))))

(assert (= (and d!795254 res!1150792) b!2740890))

(assert (= (and b!2740890 res!1150793) b!2740891))

(assert (= (and b!2740891 res!1150794) b!2740892))

(assert (= (and b!2740892 res!1150791) b!2740893))

(declare-fun m!3158669 () Bool)

(assert (=> d!795254 m!3158669))

(declare-fun m!3158671 () Bool)

(assert (=> d!795254 m!3158671))

(assert (=> b!2740891 m!3158671))

(declare-fun m!3158673 () Bool)

(assert (=> b!2740891 m!3158673))

(declare-fun m!3158675 () Bool)

(assert (=> b!2740891 m!3158675))

(declare-fun m!3158677 () Bool)

(assert (=> b!2740891 m!3158677))

(assert (=> b!2740891 m!3158675))

(declare-fun m!3158679 () Bool)

(assert (=> b!2740891 m!3158679))

(assert (=> b!2740891 m!3158677))

(assert (=> b!2740891 m!3158671))

(assert (=> b!2740890 m!3158671))

(assert (=> b!2740890 m!3158671))

(declare-fun m!3158681 () Bool)

(assert (=> b!2740890 m!3158681))

(assert (=> b!2740892 m!3158671))

(assert (=> b!2740892 m!3158673))

(assert (=> b!2740892 m!3158675))

(assert (=> b!2740892 m!3158677))

(assert (=> b!2740892 m!3158675))

(assert (=> b!2740892 m!3158679))

(assert (=> b!2740892 m!3158677))

(assert (=> b!2740892 m!3158671))

(declare-fun m!3158683 () Bool)

(assert (=> b!2740893 m!3158683))

(assert (=> b!2740893 m!3158345))

(declare-fun m!3158685 () Bool)

(assert (=> b!2740893 m!3158685))

(assert (=> b!2740893 m!3158345))

(assert (=> b!2740893 m!3158685))

(declare-fun m!3158687 () Bool)

(assert (=> b!2740893 m!3158687))

(assert (=> b!2740644 d!795254))

(declare-fun d!795256 () Bool)

(declare-fun c!444528 () Bool)

(assert (=> d!795256 (= c!444528 ((_ is Node!9858) (c!444475 acc!331)))))

(declare-fun e!1725823 () Bool)

(assert (=> d!795256 (= (inv!42781 (c!444475 acc!331)) e!1725823)))

(declare-fun b!2740900 () Bool)

(declare-fun inv!42791 (Conc!9858) Bool)

(assert (=> b!2740900 (= e!1725823 (inv!42791 (c!444475 acc!331)))))

(declare-fun b!2740901 () Bool)

(declare-fun e!1725824 () Bool)

(assert (=> b!2740901 (= e!1725823 e!1725824)))

(declare-fun res!1150797 () Bool)

(assert (=> b!2740901 (= res!1150797 (not ((_ is Leaf!15010) (c!444475 acc!331))))))

(assert (=> b!2740901 (=> res!1150797 e!1725824)))

(declare-fun b!2740902 () Bool)

(declare-fun inv!42792 (Conc!9858) Bool)

(assert (=> b!2740902 (= e!1725824 (inv!42792 (c!444475 acc!331)))))

(assert (= (and d!795256 c!444528) b!2740900))

(assert (= (and d!795256 (not c!444528)) b!2740901))

(assert (= (and b!2740901 (not res!1150797)) b!2740902))

(declare-fun m!3158689 () Bool)

(assert (=> b!2740900 m!3158689))

(declare-fun m!3158691 () Bool)

(assert (=> b!2740902 m!3158691))

(assert (=> b!2740640 d!795256))

(declare-fun d!795258 () Bool)

(assert (=> d!795258 (= (isEmpty!17991 rules!1182) ((_ is Nil!31442) rules!1182))))

(assert (=> b!2740641 d!795258))

(declare-fun b!2740919 () Bool)

(declare-fun lt!970661 () Option!6223)

(declare-fun e!1725838 () Bool)

(declare-fun get!9820 (Option!6223) tuple2!31202)

(declare-datatypes ((tuple2!31210 0))(
  ( (tuple2!31211 (_1!18237 Token!9092) (_2!18237 List!31539)) )
))
(declare-datatypes ((Option!6225 0))(
  ( (None!6224) (Some!6224 (v!33118 tuple2!31210)) )
))
(declare-fun get!9821 (Option!6225) tuple2!31210)

(declare-fun maxPrefix!2382 (LexerInterface!4411 List!31542 List!31539) Option!6225)

(assert (=> b!2740919 (= e!1725838 (= (list!11960 (_2!18233 (get!9820 lt!970661))) (_2!18237 (get!9821 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 input!603))))))))

(declare-fun b!2740920 () Bool)

(declare-fun e!1725840 () Option!6223)

(declare-fun call!177298 () Option!6223)

(assert (=> b!2740920 (= e!1725840 call!177298)))

(declare-fun d!795260 () Bool)

(declare-fun e!1725839 () Bool)

(assert (=> d!795260 e!1725839))

(declare-fun res!1150815 () Bool)

(assert (=> d!795260 (=> (not res!1150815) (not e!1725839))))

(declare-fun isDefined!4925 (Option!6223) Bool)

(declare-fun isDefined!4926 (Option!6225) Bool)

(declare-fun maxPrefixZipper!486 (LexerInterface!4411 List!31542 List!31539) Option!6225)

(assert (=> d!795260 (= res!1150815 (= (isDefined!4925 lt!970661) (isDefined!4926 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603)))))))

(assert (=> d!795260 (= lt!970661 e!1725840)))

(declare-fun c!444531 () Bool)

(assert (=> d!795260 (= c!444531 (and ((_ is Cons!31442) rules!1182) ((_ is Nil!31442) (t!227620 rules!1182))))))

(declare-datatypes ((Unit!45462 0))(
  ( (Unit!45463) )
))
(declare-fun lt!970666 () Unit!45462)

(declare-fun lt!970664 () Unit!45462)

(assert (=> d!795260 (= lt!970666 lt!970664)))

(declare-fun lt!970662 () List!31539)

(declare-fun lt!970660 () List!31539)

(declare-fun isPrefix!2499 (List!31539 List!31539) Bool)

(assert (=> d!795260 (isPrefix!2499 lt!970662 lt!970660)))

(declare-fun lemmaIsPrefixRefl!1625 (List!31539 List!31539) Unit!45462)

(assert (=> d!795260 (= lt!970664 (lemmaIsPrefixRefl!1625 lt!970662 lt!970660))))

(assert (=> d!795260 (= lt!970660 (list!11960 input!603))))

(assert (=> d!795260 (= lt!970662 (list!11960 input!603))))

(declare-fun rulesValidInductive!1683 (LexerInterface!4411 List!31542) Bool)

(assert (=> d!795260 (rulesValidInductive!1683 thiss!11556 rules!1182)))

(assert (=> d!795260 (= (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 input!603) lt!970661)))

(declare-fun b!2740921 () Bool)

(declare-fun e!1725837 () Bool)

(assert (=> b!2740921 (= e!1725837 e!1725838)))

(declare-fun res!1150813 () Bool)

(assert (=> b!2740921 (=> (not res!1150813) (not e!1725838))))

(assert (=> b!2740921 (= res!1150813 (= (_1!18233 (get!9820 lt!970661)) (_1!18237 (get!9821 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 input!603))))))))

(declare-fun b!2740922 () Bool)

(declare-fun lt!970665 () Option!6223)

(declare-fun lt!970663 () Option!6223)

(assert (=> b!2740922 (= e!1725840 (ite (and ((_ is None!6222) lt!970665) ((_ is None!6222) lt!970663)) None!6222 (ite ((_ is None!6222) lt!970663) lt!970665 (ite ((_ is None!6222) lt!970665) lt!970663 (ite (>= (size!24284 (_1!18233 (v!33116 lt!970665))) (size!24284 (_1!18233 (v!33116 lt!970663)))) lt!970665 lt!970663)))))))

(assert (=> b!2740922 (= lt!970665 call!177298)))

(assert (=> b!2740922 (= lt!970663 (maxPrefixZipperSequence!1059 thiss!11556 (t!227620 rules!1182) input!603))))

(declare-fun b!2740923 () Bool)

(declare-fun e!1725842 () Bool)

(declare-fun e!1725841 () Bool)

(assert (=> b!2740923 (= e!1725842 e!1725841)))

(declare-fun res!1150810 () Bool)

(assert (=> b!2740923 (=> (not res!1150810) (not e!1725841))))

(assert (=> b!2740923 (= res!1150810 (= (_1!18233 (get!9820 lt!970661)) (_1!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603))))))))

(declare-fun b!2740924 () Bool)

(assert (=> b!2740924 (= e!1725839 e!1725837)))

(declare-fun res!1150812 () Bool)

(assert (=> b!2740924 (=> res!1150812 e!1725837)))

(assert (=> b!2740924 (= res!1150812 (not (isDefined!4925 lt!970661)))))

(declare-fun b!2740925 () Bool)

(assert (=> b!2740925 (= e!1725841 (= (list!11960 (_2!18233 (get!9820 lt!970661))) (_2!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603))))))))

(declare-fun bm!177293 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!495 (LexerInterface!4411 Rule!9430 BalanceConc!19328) Option!6223)

(assert (=> bm!177293 (= call!177298 (maxPrefixOneRuleZipperSequence!495 thiss!11556 (h!36862 rules!1182) input!603))))

(declare-fun b!2740926 () Bool)

(declare-fun res!1150811 () Bool)

(assert (=> b!2740926 (=> (not res!1150811) (not e!1725839))))

(assert (=> b!2740926 (= res!1150811 e!1725842)))

(declare-fun res!1150814 () Bool)

(assert (=> b!2740926 (=> res!1150814 e!1725842)))

(assert (=> b!2740926 (= res!1150814 (not (isDefined!4925 lt!970661)))))

(assert (= (and d!795260 c!444531) b!2740920))

(assert (= (and d!795260 (not c!444531)) b!2740922))

(assert (= (or b!2740920 b!2740922) bm!177293))

(assert (= (and d!795260 res!1150815) b!2740926))

(assert (= (and b!2740926 (not res!1150814)) b!2740923))

(assert (= (and b!2740923 res!1150810) b!2740925))

(assert (= (and b!2740926 res!1150811) b!2740924))

(assert (= (and b!2740924 (not res!1150812)) b!2740921))

(assert (= (and b!2740921 res!1150813) b!2740919))

(declare-fun m!3158693 () Bool)

(assert (=> b!2740922 m!3158693))

(declare-fun m!3158695 () Bool)

(assert (=> b!2740924 m!3158695))

(declare-fun m!3158697 () Bool)

(assert (=> bm!177293 m!3158697))

(declare-fun m!3158699 () Bool)

(assert (=> b!2740923 m!3158699))

(assert (=> b!2740923 m!3158305))

(assert (=> b!2740923 m!3158305))

(declare-fun m!3158701 () Bool)

(assert (=> b!2740923 m!3158701))

(assert (=> b!2740923 m!3158701))

(declare-fun m!3158703 () Bool)

(assert (=> b!2740923 m!3158703))

(assert (=> b!2740926 m!3158695))

(assert (=> b!2740921 m!3158699))

(assert (=> b!2740921 m!3158305))

(assert (=> b!2740921 m!3158305))

(declare-fun m!3158705 () Bool)

(assert (=> b!2740921 m!3158705))

(assert (=> b!2740921 m!3158705))

(declare-fun m!3158707 () Bool)

(assert (=> b!2740921 m!3158707))

(assert (=> b!2740925 m!3158305))

(assert (=> b!2740925 m!3158701))

(assert (=> b!2740925 m!3158701))

(assert (=> b!2740925 m!3158703))

(declare-fun m!3158709 () Bool)

(assert (=> b!2740925 m!3158709))

(assert (=> b!2740925 m!3158305))

(assert (=> b!2740925 m!3158699))

(declare-fun m!3158711 () Bool)

(assert (=> d!795260 m!3158711))

(assert (=> d!795260 m!3158305))

(declare-fun m!3158713 () Bool)

(assert (=> d!795260 m!3158713))

(assert (=> d!795260 m!3158305))

(assert (=> d!795260 m!3158701))

(assert (=> d!795260 m!3158701))

(declare-fun m!3158715 () Bool)

(assert (=> d!795260 m!3158715))

(declare-fun m!3158717 () Bool)

(assert (=> d!795260 m!3158717))

(assert (=> d!795260 m!3158695))

(assert (=> b!2740919 m!3158305))

(assert (=> b!2740919 m!3158705))

(assert (=> b!2740919 m!3158709))

(assert (=> b!2740919 m!3158699))

(assert (=> b!2740919 m!3158305))

(assert (=> b!2740919 m!3158705))

(assert (=> b!2740919 m!3158707))

(assert (=> b!2740637 d!795260))

(declare-fun d!795262 () Bool)

(declare-fun isBalanced!3004 (Conc!9857) Bool)

(assert (=> d!795262 (= (inv!42779 treated!9) (isBalanced!3004 (c!444474 treated!9)))))

(declare-fun bs!490126 () Bool)

(assert (= bs!490126 d!795262))

(declare-fun m!3158719 () Bool)

(assert (=> bs!490126 m!3158719))

(assert (=> start!265632 d!795262))

(declare-fun d!795264 () Bool)

(assert (=> d!795264 (= (inv!42779 input!603) (isBalanced!3004 (c!444474 input!603)))))

(declare-fun bs!490127 () Bool)

(assert (= bs!490127 d!795264))

(declare-fun m!3158721 () Bool)

(assert (=> bs!490127 m!3158721))

(assert (=> start!265632 d!795264))

(declare-fun d!795266 () Bool)

(assert (=> d!795266 (= (inv!42779 totalInput!328) (isBalanced!3004 (c!444474 totalInput!328)))))

(declare-fun bs!490128 () Bool)

(assert (= bs!490128 d!795266))

(declare-fun m!3158723 () Bool)

(assert (=> bs!490128 m!3158723))

(assert (=> start!265632 d!795266))

(declare-fun d!795268 () Bool)

(assert (=> d!795268 (= (inv!42780 acc!331) (isBalanced!3003 (c!444475 acc!331)))))

(declare-fun bs!490129 () Bool)

(assert (= bs!490129 d!795268))

(declare-fun m!3158725 () Bool)

(assert (=> bs!490129 m!3158725))

(assert (=> start!265632 d!795268))

(declare-fun tp!861472 () Bool)

(declare-fun tp!861473 () Bool)

(declare-fun b!2740935 () Bool)

(declare-fun e!1725847 () Bool)

(assert (=> b!2740935 (= e!1725847 (and (inv!42782 (left!24170 (c!444474 treated!9))) tp!861472 (inv!42782 (right!24500 (c!444474 treated!9))) tp!861473))))

(declare-fun b!2740937 () Bool)

(declare-fun e!1725848 () Bool)

(declare-fun tp!861471 () Bool)

(assert (=> b!2740937 (= e!1725848 tp!861471)))

(declare-fun b!2740936 () Bool)

(declare-fun inv!42793 (IArray!19719) Bool)

(assert (=> b!2740936 (= e!1725847 (and (inv!42793 (xs!12960 (c!444474 treated!9))) e!1725848))))

(assert (=> b!2740645 (= tp!861408 (and (inv!42782 (c!444474 treated!9)) e!1725847))))

(assert (= (and b!2740645 ((_ is Node!9857) (c!444474 treated!9))) b!2740935))

(assert (= b!2740936 b!2740937))

(assert (= (and b!2740645 ((_ is Leaf!15009) (c!444474 treated!9))) b!2740936))

(declare-fun m!3158727 () Bool)

(assert (=> b!2740935 m!3158727))

(declare-fun m!3158729 () Bool)

(assert (=> b!2740935 m!3158729))

(declare-fun m!3158731 () Bool)

(assert (=> b!2740936 m!3158731))

(assert (=> b!2740645 m!3158311))

(declare-fun e!1725851 () Bool)

(assert (=> b!2740634 (= tp!861411 e!1725851)))

(declare-fun b!2740948 () Bool)

(declare-fun tp_is_empty!13913 () Bool)

(assert (=> b!2740948 (= e!1725851 tp_is_empty!13913)))

(declare-fun b!2740949 () Bool)

(declare-fun tp!861485 () Bool)

(declare-fun tp!861484 () Bool)

(assert (=> b!2740949 (= e!1725851 (and tp!861485 tp!861484))))

(declare-fun b!2740950 () Bool)

(declare-fun tp!861486 () Bool)

(assert (=> b!2740950 (= e!1725851 tp!861486)))

(declare-fun b!2740951 () Bool)

(declare-fun tp!861487 () Bool)

(declare-fun tp!861488 () Bool)

(assert (=> b!2740951 (= e!1725851 (and tp!861487 tp!861488))))

(assert (= (and b!2740634 ((_ is ElementMatch!7967) (regex!4815 (h!36862 rules!1182)))) b!2740948))

(assert (= (and b!2740634 ((_ is Concat!13005) (regex!4815 (h!36862 rules!1182)))) b!2740949))

(assert (= (and b!2740634 ((_ is Star!7967) (regex!4815 (h!36862 rules!1182)))) b!2740950))

(assert (= (and b!2740634 ((_ is Union!7967) (regex!4815 (h!36862 rules!1182)))) b!2740951))

(declare-fun b!2740962 () Bool)

(declare-fun b_free!76897 () Bool)

(declare-fun b_next!77601 () Bool)

(assert (=> b!2740962 (= b_free!76897 (not b_next!77601))))

(declare-fun tp!861500 () Bool)

(declare-fun b_and!201617 () Bool)

(assert (=> b!2740962 (= tp!861500 b_and!201617)))

(declare-fun b_free!76899 () Bool)

(declare-fun b_next!77603 () Bool)

(assert (=> b!2740962 (= b_free!76899 (not b_next!77603))))

(declare-fun tp!861498 () Bool)

(declare-fun b_and!201619 () Bool)

(assert (=> b!2740962 (= tp!861498 b_and!201619)))

(declare-fun e!1725863 () Bool)

(assert (=> b!2740962 (= e!1725863 (and tp!861500 tp!861498))))

(declare-fun tp!861499 () Bool)

(declare-fun e!1725860 () Bool)

(declare-fun b!2740961 () Bool)

(assert (=> b!2740961 (= e!1725860 (and tp!861499 (inv!42772 (tag!5319 (h!36862 (t!227620 rules!1182)))) (inv!42778 (transformation!4815 (h!36862 (t!227620 rules!1182)))) e!1725863))))

(declare-fun b!2740960 () Bool)

(declare-fun e!1725861 () Bool)

(declare-fun tp!861497 () Bool)

(assert (=> b!2740960 (= e!1725861 (and e!1725860 tp!861497))))

(assert (=> b!2740635 (= tp!861412 e!1725861)))

(assert (= b!2740961 b!2740962))

(assert (= b!2740960 b!2740961))

(assert (= (and b!2740635 ((_ is Cons!31442) (t!227620 rules!1182))) b!2740960))

(declare-fun m!3158733 () Bool)

(assert (=> b!2740961 m!3158733))

(declare-fun m!3158735 () Bool)

(assert (=> b!2740961 m!3158735))

(declare-fun tp!861508 () Bool)

(declare-fun b!2740971 () Bool)

(declare-fun tp!861509 () Bool)

(declare-fun e!1725868 () Bool)

(assert (=> b!2740971 (= e!1725868 (and (inv!42781 (left!24171 (c!444475 acc!331))) tp!861509 (inv!42781 (right!24501 (c!444475 acc!331))) tp!861508))))

(declare-fun b!2740973 () Bool)

(declare-fun e!1725869 () Bool)

(declare-fun tp!861507 () Bool)

(assert (=> b!2740973 (= e!1725869 tp!861507)))

(declare-fun b!2740972 () Bool)

(declare-fun inv!42794 (IArray!19721) Bool)

(assert (=> b!2740972 (= e!1725868 (and (inv!42794 (xs!12961 (c!444475 acc!331))) e!1725869))))

(assert (=> b!2740640 (= tp!861406 (and (inv!42781 (c!444475 acc!331)) e!1725868))))

(assert (= (and b!2740640 ((_ is Node!9858) (c!444475 acc!331))) b!2740971))

(assert (= b!2740972 b!2740973))

(assert (= (and b!2740640 ((_ is Leaf!15010) (c!444475 acc!331))) b!2740972))

(declare-fun m!3158737 () Bool)

(assert (=> b!2740971 m!3158737))

(declare-fun m!3158739 () Bool)

(assert (=> b!2740971 m!3158739))

(declare-fun m!3158741 () Bool)

(assert (=> b!2740972 m!3158741))

(assert (=> b!2740640 m!3158357))

(declare-fun e!1725870 () Bool)

(declare-fun tp!861512 () Bool)

(declare-fun tp!861511 () Bool)

(declare-fun b!2740974 () Bool)

(assert (=> b!2740974 (= e!1725870 (and (inv!42782 (left!24170 (c!444474 totalInput!328))) tp!861511 (inv!42782 (right!24500 (c!444474 totalInput!328))) tp!861512))))

(declare-fun b!2740976 () Bool)

(declare-fun e!1725871 () Bool)

(declare-fun tp!861510 () Bool)

(assert (=> b!2740976 (= e!1725871 tp!861510)))

(declare-fun b!2740975 () Bool)

(assert (=> b!2740975 (= e!1725870 (and (inv!42793 (xs!12960 (c!444474 totalInput!328))) e!1725871))))

(assert (=> b!2740646 (= tp!861407 (and (inv!42782 (c!444474 totalInput!328)) e!1725870))))

(assert (= (and b!2740646 ((_ is Node!9857) (c!444474 totalInput!328))) b!2740974))

(assert (= b!2740975 b!2740976))

(assert (= (and b!2740646 ((_ is Leaf!15009) (c!444474 totalInput!328))) b!2740975))

(declare-fun m!3158743 () Bool)

(assert (=> b!2740974 m!3158743))

(declare-fun m!3158745 () Bool)

(assert (=> b!2740974 m!3158745))

(declare-fun m!3158747 () Bool)

(assert (=> b!2740975 m!3158747))

(assert (=> b!2740646 m!3158315))

(declare-fun b!2740977 () Bool)

(declare-fun tp!861515 () Bool)

(declare-fun tp!861514 () Bool)

(declare-fun e!1725872 () Bool)

(assert (=> b!2740977 (= e!1725872 (and (inv!42782 (left!24170 (c!444474 input!603))) tp!861514 (inv!42782 (right!24500 (c!444474 input!603))) tp!861515))))

(declare-fun b!2740979 () Bool)

(declare-fun e!1725873 () Bool)

(declare-fun tp!861513 () Bool)

(assert (=> b!2740979 (= e!1725873 tp!861513)))

(declare-fun b!2740978 () Bool)

(assert (=> b!2740978 (= e!1725872 (and (inv!42793 (xs!12960 (c!444474 input!603))) e!1725873))))

(assert (=> b!2740642 (= tp!861410 (and (inv!42782 (c!444474 input!603)) e!1725872))))

(assert (= (and b!2740642 ((_ is Node!9857) (c!444474 input!603))) b!2740977))

(assert (= b!2740978 b!2740979))

(assert (= (and b!2740642 ((_ is Leaf!15009) (c!444474 input!603))) b!2740978))

(declare-fun m!3158749 () Bool)

(assert (=> b!2740977 m!3158749))

(declare-fun m!3158751 () Bool)

(assert (=> b!2740977 m!3158751))

(declare-fun m!3158753 () Bool)

(assert (=> b!2740978 m!3158753))

(assert (=> b!2740642 m!3158355))

(check-sat (not b!2740891) (not b!2740925) (not b!2740922) (not d!795254) (not b!2740935) (not b!2740867) (not d!795186) (not b!2740865) (not d!795252) (not b!2740870) (not b!2740645) (not b!2740646) (not b!2740640) (not b!2740666) (not b!2740880) (not d!795178) (not d!795250) (not b_next!77601) (not b!2740877) (not d!795182) (not b!2740868) (not b!2740973) (not b!2740679) (not b!2740976) (not b!2740961) (not b!2740960) (not b!2740662) (not d!795166) (not b!2740893) (not d!795160) (not d!795266) (not d!795262) (not b!2740862) (not bm!177293) (not b!2740975) (not b!2740902) (not b!2740678) b_and!201609 b_and!201611 (not d!795260) (not b!2740863) (not b!2740977) (not b!2740881) (not b!2740866) (not b!2740874) (not b!2740972) (not d!795176) (not b!2740971) (not d!795248) (not b!2740665) (not b!2740869) (not b!2740656) (not b!2740951) (not b!2740892) (not b!2740919) (not b!2740974) (not d!795184) (not d!795188) (not d!795172) (not b_next!77595) tp_is_empty!13913 (not d!795246) (not d!795268) (not b_next!77593) (not b!2740924) (not b!2740861) (not b!2740921) (not d!795264) (not b!2740950) (not b!2740668) (not b!2740879) b_and!201619 (not b!2740660) (not b!2740872) (not b!2740936) (not b_next!77603) (not b!2740876) (not b!2740875) (not b!2740900) (not b!2740978) (not d!795174) (not d!795168) (not b!2740949) (not b!2740937) (not b!2740926) (not b!2740654) (not b!2740873) (not b!2740890) b_and!201617 (not d!795180) (not b!2740659) (not b!2740923) (not b!2740642) (not b!2740979))
(check-sat (not b_next!77601) (not b_next!77595) (not b_next!77593) b_and!201617 b_and!201609 b_and!201611 (not b_next!77603) b_and!201619)
(get-model)

(assert (=> b!2740645 d!795154))

(declare-fun d!795308 () Bool)

(declare-fun c!444548 () Bool)

(assert (=> d!795308 (= c!444548 ((_ is Node!9857) (left!24170 (c!444474 treated!9))))))

(declare-fun e!1725916 () Bool)

(assert (=> d!795308 (= (inv!42782 (left!24170 (c!444474 treated!9))) e!1725916)))

(declare-fun b!2741051 () Bool)

(assert (=> b!2741051 (= e!1725916 (inv!42787 (left!24170 (c!444474 treated!9))))))

(declare-fun b!2741052 () Bool)

(declare-fun e!1725917 () Bool)

(assert (=> b!2741052 (= e!1725916 e!1725917)))

(declare-fun res!1150869 () Bool)

(assert (=> b!2741052 (= res!1150869 (not ((_ is Leaf!15009) (left!24170 (c!444474 treated!9)))))))

(assert (=> b!2741052 (=> res!1150869 e!1725917)))

(declare-fun b!2741053 () Bool)

(assert (=> b!2741053 (= e!1725917 (inv!42788 (left!24170 (c!444474 treated!9))))))

(assert (= (and d!795308 c!444548) b!2741051))

(assert (= (and d!795308 (not c!444548)) b!2741052))

(assert (= (and b!2741052 (not res!1150869)) b!2741053))

(declare-fun m!3158857 () Bool)

(assert (=> b!2741051 m!3158857))

(declare-fun m!3158859 () Bool)

(assert (=> b!2741053 m!3158859))

(assert (=> b!2740935 d!795308))

(declare-fun d!795310 () Bool)

(declare-fun c!444549 () Bool)

(assert (=> d!795310 (= c!444549 ((_ is Node!9857) (right!24500 (c!444474 treated!9))))))

(declare-fun e!1725918 () Bool)

(assert (=> d!795310 (= (inv!42782 (right!24500 (c!444474 treated!9))) e!1725918)))

(declare-fun b!2741054 () Bool)

(assert (=> b!2741054 (= e!1725918 (inv!42787 (right!24500 (c!444474 treated!9))))))

(declare-fun b!2741055 () Bool)

(declare-fun e!1725919 () Bool)

(assert (=> b!2741055 (= e!1725918 e!1725919)))

(declare-fun res!1150870 () Bool)

(assert (=> b!2741055 (= res!1150870 (not ((_ is Leaf!15009) (right!24500 (c!444474 treated!9)))))))

(assert (=> b!2741055 (=> res!1150870 e!1725919)))

(declare-fun b!2741056 () Bool)

(assert (=> b!2741056 (= e!1725919 (inv!42788 (right!24500 (c!444474 treated!9))))))

(assert (= (and d!795310 c!444549) b!2741054))

(assert (= (and d!795310 (not c!444549)) b!2741055))

(assert (= (and b!2741055 (not res!1150870)) b!2741056))

(declare-fun m!3158861 () Bool)

(assert (=> b!2741054 m!3158861))

(declare-fun m!3158863 () Bool)

(assert (=> b!2741056 m!3158863))

(assert (=> b!2740935 d!795310))

(declare-fun d!795312 () Bool)

(declare-fun lt!970699 () Int)

(declare-fun size!24294 (List!31541) Int)

(assert (=> d!795312 (= lt!970699 (size!24294 (list!11961 (_1!18232 lt!970636))))))

(declare-fun size!24295 (Conc!9858) Int)

(assert (=> d!795312 (= lt!970699 (size!24295 (c!444475 (_1!18232 lt!970636))))))

(assert (=> d!795312 (= (size!24290 (_1!18232 lt!970636)) lt!970699)))

(declare-fun bs!490137 () Bool)

(assert (= bs!490137 d!795312))

(assert (=> bs!490137 m!3158625))

(assert (=> bs!490137 m!3158625))

(declare-fun m!3158865 () Bool)

(assert (=> bs!490137 m!3158865))

(declare-fun m!3158867 () Bool)

(assert (=> bs!490137 m!3158867))

(assert (=> d!795188 d!795312))

(declare-fun lt!970701 () Option!6223)

(declare-fun e!1725921 () Bool)

(declare-fun b!2741057 () Bool)

(assert (=> b!2741057 (= e!1725921 (= (list!11960 (_2!18233 (get!9820 lt!970701))) (_2!18237 (get!9821 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 treated!9))))))))

(declare-fun b!2741058 () Bool)

(declare-fun e!1725923 () Option!6223)

(declare-fun call!177300 () Option!6223)

(assert (=> b!2741058 (= e!1725923 call!177300)))

(declare-fun d!795314 () Bool)

(declare-fun e!1725922 () Bool)

(assert (=> d!795314 e!1725922))

(declare-fun res!1150876 () Bool)

(assert (=> d!795314 (=> (not res!1150876) (not e!1725922))))

(assert (=> d!795314 (= res!1150876 (= (isDefined!4925 lt!970701) (isDefined!4926 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 treated!9)))))))

(assert (=> d!795314 (= lt!970701 e!1725923)))

(declare-fun c!444550 () Bool)

(assert (=> d!795314 (= c!444550 (and ((_ is Cons!31442) rules!1182) ((_ is Nil!31442) (t!227620 rules!1182))))))

(declare-fun lt!970706 () Unit!45462)

(declare-fun lt!970704 () Unit!45462)

(assert (=> d!795314 (= lt!970706 lt!970704)))

(declare-fun lt!970702 () List!31539)

(declare-fun lt!970700 () List!31539)

(assert (=> d!795314 (isPrefix!2499 lt!970702 lt!970700)))

(assert (=> d!795314 (= lt!970704 (lemmaIsPrefixRefl!1625 lt!970702 lt!970700))))

(assert (=> d!795314 (= lt!970700 (list!11960 treated!9))))

(assert (=> d!795314 (= lt!970702 (list!11960 treated!9))))

(assert (=> d!795314 (rulesValidInductive!1683 thiss!11556 rules!1182)))

(assert (=> d!795314 (= (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 treated!9) lt!970701)))

(declare-fun b!2741059 () Bool)

(declare-fun e!1725920 () Bool)

(assert (=> b!2741059 (= e!1725920 e!1725921)))

(declare-fun res!1150874 () Bool)

(assert (=> b!2741059 (=> (not res!1150874) (not e!1725921))))

(assert (=> b!2741059 (= res!1150874 (= (_1!18233 (get!9820 lt!970701)) (_1!18237 (get!9821 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 treated!9))))))))

(declare-fun b!2741060 () Bool)

(declare-fun lt!970705 () Option!6223)

(declare-fun lt!970703 () Option!6223)

(assert (=> b!2741060 (= e!1725923 (ite (and ((_ is None!6222) lt!970705) ((_ is None!6222) lt!970703)) None!6222 (ite ((_ is None!6222) lt!970703) lt!970705 (ite ((_ is None!6222) lt!970705) lt!970703 (ite (>= (size!24284 (_1!18233 (v!33116 lt!970705))) (size!24284 (_1!18233 (v!33116 lt!970703)))) lt!970705 lt!970703)))))))

(assert (=> b!2741060 (= lt!970705 call!177300)))

(assert (=> b!2741060 (= lt!970703 (maxPrefixZipperSequence!1059 thiss!11556 (t!227620 rules!1182) treated!9))))

(declare-fun b!2741061 () Bool)

(declare-fun e!1725925 () Bool)

(declare-fun e!1725924 () Bool)

(assert (=> b!2741061 (= e!1725925 e!1725924)))

(declare-fun res!1150871 () Bool)

(assert (=> b!2741061 (=> (not res!1150871) (not e!1725924))))

(assert (=> b!2741061 (= res!1150871 (= (_1!18233 (get!9820 lt!970701)) (_1!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 treated!9))))))))

(declare-fun b!2741062 () Bool)

(assert (=> b!2741062 (= e!1725922 e!1725920)))

(declare-fun res!1150873 () Bool)

(assert (=> b!2741062 (=> res!1150873 e!1725920)))

(assert (=> b!2741062 (= res!1150873 (not (isDefined!4925 lt!970701)))))

(declare-fun b!2741063 () Bool)

(assert (=> b!2741063 (= e!1725924 (= (list!11960 (_2!18233 (get!9820 lt!970701))) (_2!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 treated!9))))))))

(declare-fun bm!177295 () Bool)

(assert (=> bm!177295 (= call!177300 (maxPrefixOneRuleZipperSequence!495 thiss!11556 (h!36862 rules!1182) treated!9))))

(declare-fun b!2741064 () Bool)

(declare-fun res!1150872 () Bool)

(assert (=> b!2741064 (=> (not res!1150872) (not e!1725922))))

(assert (=> b!2741064 (= res!1150872 e!1725925)))

(declare-fun res!1150875 () Bool)

(assert (=> b!2741064 (=> res!1150875 e!1725925)))

(assert (=> b!2741064 (= res!1150875 (not (isDefined!4925 lt!970701)))))

(assert (= (and d!795314 c!444550) b!2741058))

(assert (= (and d!795314 (not c!444550)) b!2741060))

(assert (= (or b!2741058 b!2741060) bm!177295))

(assert (= (and d!795314 res!1150876) b!2741064))

(assert (= (and b!2741064 (not res!1150875)) b!2741061))

(assert (= (and b!2741061 res!1150871) b!2741063))

(assert (= (and b!2741064 res!1150872) b!2741062))

(assert (= (and b!2741062 (not res!1150873)) b!2741059))

(assert (= (and b!2741059 res!1150874) b!2741057))

(declare-fun m!3158869 () Bool)

(assert (=> b!2741060 m!3158869))

(declare-fun m!3158871 () Bool)

(assert (=> b!2741062 m!3158871))

(declare-fun m!3158873 () Bool)

(assert (=> bm!177295 m!3158873))

(declare-fun m!3158875 () Bool)

(assert (=> b!2741061 m!3158875))

(assert (=> b!2741061 m!3158307))

(assert (=> b!2741061 m!3158307))

(declare-fun m!3158877 () Bool)

(assert (=> b!2741061 m!3158877))

(assert (=> b!2741061 m!3158877))

(declare-fun m!3158879 () Bool)

(assert (=> b!2741061 m!3158879))

(assert (=> b!2741064 m!3158871))

(assert (=> b!2741059 m!3158875))

(assert (=> b!2741059 m!3158307))

(assert (=> b!2741059 m!3158307))

(declare-fun m!3158881 () Bool)

(assert (=> b!2741059 m!3158881))

(assert (=> b!2741059 m!3158881))

(declare-fun m!3158883 () Bool)

(assert (=> b!2741059 m!3158883))

(assert (=> b!2741063 m!3158307))

(assert (=> b!2741063 m!3158877))

(assert (=> b!2741063 m!3158877))

(assert (=> b!2741063 m!3158879))

(declare-fun m!3158885 () Bool)

(assert (=> b!2741063 m!3158885))

(assert (=> b!2741063 m!3158307))

(assert (=> b!2741063 m!3158875))

(declare-fun m!3158887 () Bool)

(assert (=> d!795314 m!3158887))

(assert (=> d!795314 m!3158307))

(assert (=> d!795314 m!3158713))

(assert (=> d!795314 m!3158307))

(assert (=> d!795314 m!3158877))

(assert (=> d!795314 m!3158877))

(declare-fun m!3158889 () Bool)

(assert (=> d!795314 m!3158889))

(declare-fun m!3158891 () Bool)

(assert (=> d!795314 m!3158891))

(assert (=> d!795314 m!3158871))

(assert (=> b!2741057 m!3158307))

(assert (=> b!2741057 m!3158881))

(assert (=> b!2741057 m!3158885))

(assert (=> b!2741057 m!3158875))

(assert (=> b!2741057 m!3158307))

(assert (=> b!2741057 m!3158881))

(assert (=> b!2741057 m!3158883))

(assert (=> d!795188 d!795314))

(declare-fun b!2741075 () Bool)

(declare-fun e!1725931 () List!31539)

(declare-fun list!11967 (IArray!19719) List!31539)

(assert (=> b!2741075 (= e!1725931 (list!11967 (xs!12960 (c!444474 (_2!18232 lt!970580)))))))

(declare-fun b!2741073 () Bool)

(declare-fun e!1725930 () List!31539)

(assert (=> b!2741073 (= e!1725930 Nil!31439)))

(declare-fun b!2741076 () Bool)

(assert (=> b!2741076 (= e!1725931 (++!7872 (list!11964 (left!24170 (c!444474 (_2!18232 lt!970580)))) (list!11964 (right!24500 (c!444474 (_2!18232 lt!970580))))))))

(declare-fun b!2741074 () Bool)

(assert (=> b!2741074 (= e!1725930 e!1725931)))

(declare-fun c!444556 () Bool)

(assert (=> b!2741074 (= c!444556 ((_ is Leaf!15009) (c!444474 (_2!18232 lt!970580))))))

(declare-fun d!795316 () Bool)

(declare-fun c!444555 () Bool)

(assert (=> d!795316 (= c!444555 ((_ is Empty!9857) (c!444474 (_2!18232 lt!970580))))))

(assert (=> d!795316 (= (list!11964 (c!444474 (_2!18232 lt!970580))) e!1725930)))

(assert (= (and d!795316 c!444555) b!2741073))

(assert (= (and d!795316 (not c!444555)) b!2741074))

(assert (= (and b!2741074 c!444556) b!2741075))

(assert (= (and b!2741074 (not c!444556)) b!2741076))

(declare-fun m!3158893 () Bool)

(assert (=> b!2741075 m!3158893))

(declare-fun m!3158895 () Bool)

(assert (=> b!2741076 m!3158895))

(declare-fun m!3158897 () Bool)

(assert (=> b!2741076 m!3158897))

(assert (=> b!2741076 m!3158895))

(assert (=> b!2741076 m!3158897))

(declare-fun m!3158899 () Bool)

(assert (=> b!2741076 m!3158899))

(assert (=> d!795166 d!795316))

(declare-fun d!795318 () Bool)

(assert (=> d!795318 (isPrefix!2499 lt!970662 lt!970660)))

(declare-fun lt!970709 () Unit!45462)

(declare-fun choose!16059 (List!31539 List!31539) Unit!45462)

(assert (=> d!795318 (= lt!970709 (choose!16059 lt!970662 lt!970660))))

(assert (=> d!795318 (= (lemmaIsPrefixRefl!1625 lt!970662 lt!970660) lt!970709)))

(declare-fun bs!490138 () Bool)

(assert (= bs!490138 d!795318))

(assert (=> bs!490138 m!3158711))

(declare-fun m!3158901 () Bool)

(assert (=> bs!490138 m!3158901))

(assert (=> d!795260 d!795318))

(declare-fun d!795320 () Bool)

(declare-fun isEmpty!18000 (Option!6225) Bool)

(assert (=> d!795320 (= (isDefined!4926 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603))) (not (isEmpty!18000 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603)))))))

(declare-fun bs!490139 () Bool)

(assert (= bs!490139 d!795320))

(assert (=> bs!490139 m!3158701))

(declare-fun m!3158903 () Bool)

(assert (=> bs!490139 m!3158903))

(assert (=> d!795260 d!795320))

(declare-fun b!2741088 () Bool)

(declare-fun e!1725940 () Bool)

(assert (=> b!2741088 (= e!1725940 (>= (size!24288 lt!970660) (size!24288 lt!970662)))))

(declare-fun d!795322 () Bool)

(assert (=> d!795322 e!1725940))

(declare-fun res!1150885 () Bool)

(assert (=> d!795322 (=> res!1150885 e!1725940)))

(declare-fun lt!970712 () Bool)

(assert (=> d!795322 (= res!1150885 (not lt!970712))))

(declare-fun e!1725939 () Bool)

(assert (=> d!795322 (= lt!970712 e!1725939)))

(declare-fun res!1150886 () Bool)

(assert (=> d!795322 (=> res!1150886 e!1725939)))

(assert (=> d!795322 (= res!1150886 ((_ is Nil!31439) lt!970662))))

(assert (=> d!795322 (= (isPrefix!2499 lt!970662 lt!970660) lt!970712)))

(declare-fun b!2741085 () Bool)

(declare-fun e!1725938 () Bool)

(assert (=> b!2741085 (= e!1725939 e!1725938)))

(declare-fun res!1150887 () Bool)

(assert (=> b!2741085 (=> (not res!1150887) (not e!1725938))))

(assert (=> b!2741085 (= res!1150887 (not ((_ is Nil!31439) lt!970660)))))

(declare-fun b!2741087 () Bool)

(declare-fun tail!4344 (List!31539) List!31539)

(assert (=> b!2741087 (= e!1725938 (isPrefix!2499 (tail!4344 lt!970662) (tail!4344 lt!970660)))))

(declare-fun b!2741086 () Bool)

(declare-fun res!1150888 () Bool)

(assert (=> b!2741086 (=> (not res!1150888) (not e!1725938))))

(declare-fun head!6106 (List!31539) C!16092)

(assert (=> b!2741086 (= res!1150888 (= (head!6106 lt!970662) (head!6106 lt!970660)))))

(assert (= (and d!795322 (not res!1150886)) b!2741085))

(assert (= (and b!2741085 res!1150887) b!2741086))

(assert (= (and b!2741086 res!1150888) b!2741087))

(assert (= (and d!795322 (not res!1150885)) b!2741088))

(declare-fun m!3158905 () Bool)

(assert (=> b!2741088 m!3158905))

(declare-fun m!3158907 () Bool)

(assert (=> b!2741088 m!3158907))

(declare-fun m!3158909 () Bool)

(assert (=> b!2741087 m!3158909))

(declare-fun m!3158911 () Bool)

(assert (=> b!2741087 m!3158911))

(assert (=> b!2741087 m!3158909))

(assert (=> b!2741087 m!3158911))

(declare-fun m!3158913 () Bool)

(assert (=> b!2741087 m!3158913))

(declare-fun m!3158915 () Bool)

(assert (=> b!2741086 m!3158915))

(declare-fun m!3158917 () Bool)

(assert (=> b!2741086 m!3158917))

(assert (=> d!795260 d!795322))

(declare-fun d!795324 () Bool)

(assert (=> d!795324 true))

(declare-fun lt!970731 () Bool)

(declare-fun lambda!100799 () Int)

(declare-fun forall!6571 (List!31542 Int) Bool)

(assert (=> d!795324 (= lt!970731 (forall!6571 rules!1182 lambda!100799))))

(declare-fun e!1725951 () Bool)

(assert (=> d!795324 (= lt!970731 e!1725951)))

(declare-fun res!1150896 () Bool)

(assert (=> d!795324 (=> res!1150896 e!1725951)))

(assert (=> d!795324 (= res!1150896 (not ((_ is Cons!31442) rules!1182)))))

(assert (=> d!795324 (= (rulesValidInductive!1683 thiss!11556 rules!1182) lt!970731)))

(declare-fun b!2741103 () Bool)

(declare-fun e!1725950 () Bool)

(assert (=> b!2741103 (= e!1725951 e!1725950)))

(declare-fun res!1150895 () Bool)

(assert (=> b!2741103 (=> (not res!1150895) (not e!1725950))))

(declare-fun ruleValid!1577 (LexerInterface!4411 Rule!9430) Bool)

(assert (=> b!2741103 (= res!1150895 (ruleValid!1577 thiss!11556 (h!36862 rules!1182)))))

(declare-fun b!2741104 () Bool)

(assert (=> b!2741104 (= e!1725950 (rulesValidInductive!1683 thiss!11556 (t!227620 rules!1182)))))

(assert (= (and d!795324 (not res!1150896)) b!2741103))

(assert (= (and b!2741103 res!1150895) b!2741104))

(declare-fun m!3158937 () Bool)

(assert (=> d!795324 m!3158937))

(declare-fun m!3158939 () Bool)

(assert (=> b!2741103 m!3158939))

(declare-fun m!3158941 () Bool)

(assert (=> b!2741104 m!3158941))

(assert (=> d!795260 d!795324))

(assert (=> d!795260 d!795176))

(declare-fun lt!970766 () Option!6225)

(declare-fun d!795334 () Bool)

(assert (=> d!795334 (= lt!970766 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 input!603)))))

(declare-fun e!1725964 () Option!6225)

(assert (=> d!795334 (= lt!970766 e!1725964)))

(declare-fun c!444564 () Bool)

(assert (=> d!795334 (= c!444564 (and ((_ is Cons!31442) rules!1182) ((_ is Nil!31442) (t!227620 rules!1182))))))

(declare-fun lt!970765 () Unit!45462)

(declare-fun lt!970763 () Unit!45462)

(assert (=> d!795334 (= lt!970765 lt!970763)))

(assert (=> d!795334 (isPrefix!2499 (list!11960 input!603) (list!11960 input!603))))

(assert (=> d!795334 (= lt!970763 (lemmaIsPrefixRefl!1625 (list!11960 input!603) (list!11960 input!603)))))

(assert (=> d!795334 (rulesValidInductive!1683 thiss!11556 rules!1182)))

(assert (=> d!795334 (= (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603)) lt!970766)))

(declare-fun bm!177301 () Bool)

(declare-fun call!177306 () Option!6225)

(declare-fun maxPrefixOneRuleZipper!189 (LexerInterface!4411 Rule!9430 List!31539) Option!6225)

(assert (=> bm!177301 (= call!177306 (maxPrefixOneRuleZipper!189 thiss!11556 (h!36862 rules!1182) (list!11960 input!603)))))

(declare-fun b!2741123 () Bool)

(assert (=> b!2741123 (= e!1725964 call!177306)))

(declare-fun b!2741124 () Bool)

(declare-fun lt!970764 () Option!6225)

(declare-fun lt!970762 () Option!6225)

(assert (=> b!2741124 (= e!1725964 (ite (and ((_ is None!6224) lt!970764) ((_ is None!6224) lt!970762)) None!6224 (ite ((_ is None!6224) lt!970762) lt!970764 (ite ((_ is None!6224) lt!970764) lt!970762 (ite (>= (size!24284 (_1!18237 (v!33118 lt!970764))) (size!24284 (_1!18237 (v!33118 lt!970762)))) lt!970764 lt!970762)))))))

(assert (=> b!2741124 (= lt!970764 call!177306)))

(assert (=> b!2741124 (= lt!970762 (maxPrefixZipper!486 thiss!11556 (t!227620 rules!1182) (list!11960 input!603)))))

(assert (= (and d!795334 c!444564) b!2741123))

(assert (= (and d!795334 (not c!444564)) b!2741124))

(assert (= (or b!2741123 b!2741124) bm!177301))

(assert (=> d!795334 m!3158305))

(assert (=> d!795334 m!3158705))

(assert (=> d!795334 m!3158305))

(assert (=> d!795334 m!3158305))

(declare-fun m!3158943 () Bool)

(assert (=> d!795334 m!3158943))

(assert (=> d!795334 m!3158305))

(assert (=> d!795334 m!3158305))

(declare-fun m!3158945 () Bool)

(assert (=> d!795334 m!3158945))

(assert (=> d!795334 m!3158713))

(assert (=> bm!177301 m!3158305))

(declare-fun m!3158947 () Bool)

(assert (=> bm!177301 m!3158947))

(assert (=> b!2741124 m!3158305))

(declare-fun m!3158949 () Bool)

(assert (=> b!2741124 m!3158949))

(assert (=> d!795260 d!795334))

(declare-fun d!795336 () Bool)

(declare-fun isEmpty!18001 (Option!6223) Bool)

(assert (=> d!795336 (= (isDefined!4925 lt!970661) (not (isEmpty!18001 lt!970661)))))

(declare-fun bs!490142 () Bool)

(assert (= bs!490142 d!795336))

(declare-fun m!3158951 () Bool)

(assert (=> bs!490142 m!3158951))

(assert (=> d!795260 d!795336))

(declare-fun d!795338 () Bool)

(assert (=> d!795338 (= (get!9820 lt!970661) (v!33116 lt!970661))))

(assert (=> b!2740921 d!795338))

(declare-fun d!795340 () Bool)

(assert (=> d!795340 (= (get!9821 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 input!603))) (v!33118 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 input!603))))))

(assert (=> b!2740921 d!795340))

(declare-fun b!2741190 () Bool)

(declare-fun e!1726015 () Option!6225)

(declare-fun lt!970792 () Option!6225)

(declare-fun lt!970790 () Option!6225)

(assert (=> b!2741190 (= e!1726015 (ite (and ((_ is None!6224) lt!970792) ((_ is None!6224) lt!970790)) None!6224 (ite ((_ is None!6224) lt!970790) lt!970792 (ite ((_ is None!6224) lt!970792) lt!970790 (ite (>= (size!24284 (_1!18237 (v!33118 lt!970792))) (size!24284 (_1!18237 (v!33118 lt!970790)))) lt!970792 lt!970790)))))))

(declare-fun call!177309 () Option!6225)

(assert (=> b!2741190 (= lt!970792 call!177309)))

(assert (=> b!2741190 (= lt!970790 (maxPrefix!2382 thiss!11556 (t!227620 rules!1182) (list!11960 input!603)))))

(declare-fun bm!177304 () Bool)

(declare-fun maxPrefixOneRule!1507 (LexerInterface!4411 Rule!9430 List!31539) Option!6225)

(assert (=> bm!177304 (= call!177309 (maxPrefixOneRule!1507 thiss!11556 (h!36862 rules!1182) (list!11960 input!603)))))

(declare-fun b!2741191 () Bool)

(assert (=> b!2741191 (= e!1726015 call!177309)))

(declare-fun b!2741192 () Bool)

(declare-fun res!1150952 () Bool)

(declare-fun e!1726013 () Bool)

(assert (=> b!2741192 (=> (not res!1150952) (not e!1726013))))

(declare-fun lt!970794 () Option!6225)

(declare-fun charsOf!3035 (Token!9092) BalanceConc!19328)

(assert (=> b!2741192 (= res!1150952 (= (++!7872 (list!11960 (charsOf!3035 (_1!18237 (get!9821 lt!970794)))) (_2!18237 (get!9821 lt!970794))) (list!11960 input!603)))))

(declare-fun b!2741193 () Bool)

(declare-fun contains!5975 (List!31542 Rule!9430) Bool)

(assert (=> b!2741193 (= e!1726013 (contains!5975 rules!1182 (rule!7263 (_1!18237 (get!9821 lt!970794)))))))

(declare-fun b!2741194 () Bool)

(declare-fun e!1726014 () Bool)

(assert (=> b!2741194 (= e!1726014 e!1726013)))

(declare-fun res!1150953 () Bool)

(assert (=> b!2741194 (=> (not res!1150953) (not e!1726013))))

(assert (=> b!2741194 (= res!1150953 (isDefined!4926 lt!970794))))

(declare-fun d!795342 () Bool)

(assert (=> d!795342 e!1726014))

(declare-fun res!1150956 () Bool)

(assert (=> d!795342 (=> res!1150956 e!1726014)))

(assert (=> d!795342 (= res!1150956 (isEmpty!18000 lt!970794))))

(assert (=> d!795342 (= lt!970794 e!1726015)))

(declare-fun c!444570 () Bool)

(assert (=> d!795342 (= c!444570 (and ((_ is Cons!31442) rules!1182) ((_ is Nil!31442) (t!227620 rules!1182))))))

(declare-fun lt!970793 () Unit!45462)

(declare-fun lt!970791 () Unit!45462)

(assert (=> d!795342 (= lt!970793 lt!970791)))

(assert (=> d!795342 (isPrefix!2499 (list!11960 input!603) (list!11960 input!603))))

(assert (=> d!795342 (= lt!970791 (lemmaIsPrefixRefl!1625 (list!11960 input!603) (list!11960 input!603)))))

(assert (=> d!795342 (rulesValidInductive!1683 thiss!11556 rules!1182)))

(assert (=> d!795342 (= (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 input!603)) lt!970794)))

(declare-fun b!2741195 () Bool)

(declare-fun res!1150954 () Bool)

(assert (=> b!2741195 (=> (not res!1150954) (not e!1726013))))

(assert (=> b!2741195 (= res!1150954 (< (size!24288 (_2!18237 (get!9821 lt!970794))) (size!24288 (list!11960 input!603))))))

(declare-fun b!2741196 () Bool)

(declare-fun res!1150957 () Bool)

(assert (=> b!2741196 (=> (not res!1150957) (not e!1726013))))

(assert (=> b!2741196 (= res!1150957 (= (list!11960 (charsOf!3035 (_1!18237 (get!9821 lt!970794)))) (originalCharacters!5577 (_1!18237 (get!9821 lt!970794)))))))

(declare-fun b!2741197 () Bool)

(declare-fun res!1150958 () Bool)

(assert (=> b!2741197 (=> (not res!1150958) (not e!1726013))))

(declare-fun apply!7421 (TokenValueInjection!9514 BalanceConc!19328) TokenValue!5037)

(declare-fun seqFromList!3226 (List!31539) BalanceConc!19328)

(assert (=> b!2741197 (= res!1150958 (= (value!154840 (_1!18237 (get!9821 lt!970794))) (apply!7421 (transformation!4815 (rule!7263 (_1!18237 (get!9821 lt!970794)))) (seqFromList!3226 (originalCharacters!5577 (_1!18237 (get!9821 lt!970794)))))))))

(declare-fun b!2741198 () Bool)

(declare-fun res!1150955 () Bool)

(assert (=> b!2741198 (=> (not res!1150955) (not e!1726013))))

(declare-fun matchR!3649 (Regex!7967 List!31539) Bool)

(assert (=> b!2741198 (= res!1150955 (matchR!3649 (regex!4815 (rule!7263 (_1!18237 (get!9821 lt!970794)))) (list!11960 (charsOf!3035 (_1!18237 (get!9821 lt!970794))))))))

(assert (= (and d!795342 c!444570) b!2741191))

(assert (= (and d!795342 (not c!444570)) b!2741190))

(assert (= (or b!2741191 b!2741190) bm!177304))

(assert (= (and d!795342 (not res!1150956)) b!2741194))

(assert (= (and b!2741194 res!1150953) b!2741196))

(assert (= (and b!2741196 res!1150957) b!2741195))

(assert (= (and b!2741195 res!1150954) b!2741192))

(assert (= (and b!2741192 res!1150952) b!2741197))

(assert (= (and b!2741197 res!1150958) b!2741198))

(assert (= (and b!2741198 res!1150955) b!2741193))

(declare-fun m!3159041 () Bool)

(assert (=> b!2741192 m!3159041))

(declare-fun m!3159043 () Bool)

(assert (=> b!2741192 m!3159043))

(assert (=> b!2741192 m!3159043))

(declare-fun m!3159045 () Bool)

(assert (=> b!2741192 m!3159045))

(assert (=> b!2741192 m!3159045))

(declare-fun m!3159047 () Bool)

(assert (=> b!2741192 m!3159047))

(assert (=> b!2741196 m!3159041))

(assert (=> b!2741196 m!3159043))

(assert (=> b!2741196 m!3159043))

(assert (=> b!2741196 m!3159045))

(assert (=> b!2741193 m!3159041))

(declare-fun m!3159049 () Bool)

(assert (=> b!2741193 m!3159049))

(assert (=> b!2741195 m!3159041))

(declare-fun m!3159051 () Bool)

(assert (=> b!2741195 m!3159051))

(assert (=> b!2741195 m!3158305))

(declare-fun m!3159053 () Bool)

(assert (=> b!2741195 m!3159053))

(assert (=> b!2741190 m!3158305))

(declare-fun m!3159055 () Bool)

(assert (=> b!2741190 m!3159055))

(assert (=> b!2741198 m!3159041))

(assert (=> b!2741198 m!3159043))

(assert (=> b!2741198 m!3159043))

(assert (=> b!2741198 m!3159045))

(assert (=> b!2741198 m!3159045))

(declare-fun m!3159057 () Bool)

(assert (=> b!2741198 m!3159057))

(declare-fun m!3159059 () Bool)

(assert (=> d!795342 m!3159059))

(assert (=> d!795342 m!3158305))

(assert (=> d!795342 m!3158305))

(assert (=> d!795342 m!3158943))

(assert (=> d!795342 m!3158305))

(assert (=> d!795342 m!3158305))

(assert (=> d!795342 m!3158945))

(assert (=> d!795342 m!3158713))

(assert (=> bm!177304 m!3158305))

(declare-fun m!3159061 () Bool)

(assert (=> bm!177304 m!3159061))

(declare-fun m!3159063 () Bool)

(assert (=> b!2741194 m!3159063))

(assert (=> b!2741197 m!3159041))

(declare-fun m!3159065 () Bool)

(assert (=> b!2741197 m!3159065))

(assert (=> b!2741197 m!3159065))

(declare-fun m!3159067 () Bool)

(assert (=> b!2741197 m!3159067))

(assert (=> b!2740921 d!795342))

(assert (=> b!2740921 d!795176))

(declare-fun d!795354 () Bool)

(assert (=> d!795354 (= (list!11960 (_2!18232 lt!970639)) (list!11964 (c!444474 (_2!18232 lt!970639))))))

(declare-fun bs!490145 () Bool)

(assert (= bs!490145 d!795354))

(declare-fun m!3159069 () Bool)

(assert (=> bs!490145 m!3159069))

(assert (=> b!2740869 d!795354))

(assert (=> b!2740869 d!795176))

(declare-fun d!795356 () Bool)

(assert (=> d!795356 (= (inv!42772 (tag!5319 (h!36862 (t!227620 rules!1182)))) (= (mod (str.len (value!154839 (tag!5319 (h!36862 (t!227620 rules!1182))))) 2) 0))))

(assert (=> b!2740961 d!795356))

(declare-fun d!795358 () Bool)

(declare-fun res!1150959 () Bool)

(declare-fun e!1726016 () Bool)

(assert (=> d!795358 (=> (not res!1150959) (not e!1726016))))

(assert (=> d!795358 (= res!1150959 (semiInverseModEq!1991 (toChars!6668 (transformation!4815 (h!36862 (t!227620 rules!1182)))) (toValue!6809 (transformation!4815 (h!36862 (t!227620 rules!1182))))))))

(assert (=> d!795358 (= (inv!42778 (transformation!4815 (h!36862 (t!227620 rules!1182)))) e!1726016)))

(declare-fun b!2741199 () Bool)

(assert (=> b!2741199 (= e!1726016 (equivClasses!1892 (toChars!6668 (transformation!4815 (h!36862 (t!227620 rules!1182)))) (toValue!6809 (transformation!4815 (h!36862 (t!227620 rules!1182))))))))

(assert (= (and d!795358 res!1150959) b!2741199))

(declare-fun m!3159071 () Bool)

(assert (=> d!795358 m!3159071))

(declare-fun m!3159073 () Bool)

(assert (=> b!2741199 m!3159073))

(assert (=> b!2740961 d!795358))

(declare-fun b!2741212 () Bool)

(declare-fun e!1726022 () Bool)

(declare-fun isEmpty!18002 (Conc!9857) Bool)

(assert (=> b!2741212 (= e!1726022 (not (isEmpty!18002 (right!24500 (c!444474 input!603)))))))

(declare-fun b!2741213 () Bool)

(declare-fun res!1150973 () Bool)

(assert (=> b!2741213 (=> (not res!1150973) (not e!1726022))))

(assert (=> b!2741213 (= res!1150973 (isBalanced!3004 (right!24500 (c!444474 input!603))))))

(declare-fun b!2741214 () Bool)

(declare-fun res!1150974 () Bool)

(assert (=> b!2741214 (=> (not res!1150974) (not e!1726022))))

(assert (=> b!2741214 (= res!1150974 (not (isEmpty!18002 (left!24170 (c!444474 input!603)))))))

(declare-fun b!2741216 () Bool)

(declare-fun res!1150977 () Bool)

(assert (=> b!2741216 (=> (not res!1150977) (not e!1726022))))

(assert (=> b!2741216 (= res!1150977 (isBalanced!3004 (left!24170 (c!444474 input!603))))))

(declare-fun b!2741217 () Bool)

(declare-fun e!1726021 () Bool)

(assert (=> b!2741217 (= e!1726021 e!1726022)))

(declare-fun res!1150972 () Bool)

(assert (=> b!2741217 (=> (not res!1150972) (not e!1726022))))

(declare-fun height!1482 (Conc!9857) Int)

(assert (=> b!2741217 (= res!1150972 (<= (- 1) (- (height!1482 (left!24170 (c!444474 input!603))) (height!1482 (right!24500 (c!444474 input!603))))))))

(declare-fun b!2741215 () Bool)

(declare-fun res!1150976 () Bool)

(assert (=> b!2741215 (=> (not res!1150976) (not e!1726022))))

(assert (=> b!2741215 (= res!1150976 (<= (- (height!1482 (left!24170 (c!444474 input!603))) (height!1482 (right!24500 (c!444474 input!603)))) 1))))

(declare-fun d!795360 () Bool)

(declare-fun res!1150975 () Bool)

(assert (=> d!795360 (=> res!1150975 e!1726021)))

(assert (=> d!795360 (= res!1150975 (not ((_ is Node!9857) (c!444474 input!603))))))

(assert (=> d!795360 (= (isBalanced!3004 (c!444474 input!603)) e!1726021)))

(assert (= (and d!795360 (not res!1150975)) b!2741217))

(assert (= (and b!2741217 res!1150972) b!2741215))

(assert (= (and b!2741215 res!1150976) b!2741216))

(assert (= (and b!2741216 res!1150977) b!2741213))

(assert (= (and b!2741213 res!1150973) b!2741214))

(assert (= (and b!2741214 res!1150974) b!2741212))

(declare-fun m!3159075 () Bool)

(assert (=> b!2741217 m!3159075))

(declare-fun m!3159077 () Bool)

(assert (=> b!2741217 m!3159077))

(declare-fun m!3159079 () Bool)

(assert (=> b!2741212 m!3159079))

(assert (=> b!2741215 m!3159075))

(assert (=> b!2741215 m!3159077))

(declare-fun m!3159081 () Bool)

(assert (=> b!2741213 m!3159081))

(declare-fun m!3159083 () Bool)

(assert (=> b!2741216 m!3159083))

(declare-fun m!3159085 () Bool)

(assert (=> b!2741214 m!3159085))

(assert (=> d!795264 d!795360))

(declare-fun b!2741220 () Bool)

(declare-fun e!1726024 () List!31539)

(assert (=> b!2741220 (= e!1726024 (list!11967 (xs!12960 (c!444474 totalInput!328))))))

(declare-fun b!2741218 () Bool)

(declare-fun e!1726023 () List!31539)

(assert (=> b!2741218 (= e!1726023 Nil!31439)))

(declare-fun b!2741221 () Bool)

(assert (=> b!2741221 (= e!1726024 (++!7872 (list!11964 (left!24170 (c!444474 totalInput!328))) (list!11964 (right!24500 (c!444474 totalInput!328)))))))

(declare-fun b!2741219 () Bool)

(assert (=> b!2741219 (= e!1726023 e!1726024)))

(declare-fun c!444572 () Bool)

(assert (=> b!2741219 (= c!444572 ((_ is Leaf!15009) (c!444474 totalInput!328)))))

(declare-fun d!795362 () Bool)

(declare-fun c!444571 () Bool)

(assert (=> d!795362 (= c!444571 ((_ is Empty!9857) (c!444474 totalInput!328)))))

(assert (=> d!795362 (= (list!11964 (c!444474 totalInput!328)) e!1726023)))

(assert (= (and d!795362 c!444571) b!2741218))

(assert (= (and d!795362 (not c!444571)) b!2741219))

(assert (= (and b!2741219 c!444572) b!2741220))

(assert (= (and b!2741219 (not c!444572)) b!2741221))

(declare-fun m!3159087 () Bool)

(assert (=> b!2741220 m!3159087))

(declare-fun m!3159089 () Bool)

(assert (=> b!2741221 m!3159089))

(declare-fun m!3159091 () Bool)

(assert (=> b!2741221 m!3159091))

(assert (=> b!2741221 m!3159089))

(assert (=> b!2741221 m!3159091))

(declare-fun m!3159093 () Bool)

(assert (=> b!2741221 m!3159093))

(assert (=> d!795172 d!795362))

(declare-fun b!2741224 () Bool)

(declare-fun e!1726026 () List!31539)

(assert (=> b!2741224 (= e!1726026 (list!11967 (xs!12960 (c!444474 (_2!18232 lt!970574)))))))

(declare-fun b!2741222 () Bool)

(declare-fun e!1726025 () List!31539)

(assert (=> b!2741222 (= e!1726025 Nil!31439)))

(declare-fun b!2741225 () Bool)

(assert (=> b!2741225 (= e!1726026 (++!7872 (list!11964 (left!24170 (c!444474 (_2!18232 lt!970574)))) (list!11964 (right!24500 (c!444474 (_2!18232 lt!970574))))))))

(declare-fun b!2741223 () Bool)

(assert (=> b!2741223 (= e!1726025 e!1726026)))

(declare-fun c!444574 () Bool)

(assert (=> b!2741223 (= c!444574 ((_ is Leaf!15009) (c!444474 (_2!18232 lt!970574))))))

(declare-fun d!795364 () Bool)

(declare-fun c!444573 () Bool)

(assert (=> d!795364 (= c!444573 ((_ is Empty!9857) (c!444474 (_2!18232 lt!970574))))))

(assert (=> d!795364 (= (list!11964 (c!444474 (_2!18232 lt!970574))) e!1726025)))

(assert (= (and d!795364 c!444573) b!2741222))

(assert (= (and d!795364 (not c!444573)) b!2741223))

(assert (= (and b!2741223 c!444574) b!2741224))

(assert (= (and b!2741223 (not c!444574)) b!2741225))

(declare-fun m!3159095 () Bool)

(assert (=> b!2741224 m!3159095))

(declare-fun m!3159097 () Bool)

(assert (=> b!2741225 m!3159097))

(declare-fun m!3159099 () Bool)

(assert (=> b!2741225 m!3159099))

(assert (=> b!2741225 m!3159097))

(assert (=> b!2741225 m!3159099))

(declare-fun m!3159101 () Bool)

(assert (=> b!2741225 m!3159101))

(assert (=> d!795180 d!795364))

(declare-fun d!795366 () Bool)

(declare-fun c!444575 () Bool)

(assert (=> d!795366 (= c!444575 ((_ is Node!9858) (left!24171 (c!444475 acc!331))))))

(declare-fun e!1726027 () Bool)

(assert (=> d!795366 (= (inv!42781 (left!24171 (c!444475 acc!331))) e!1726027)))

(declare-fun b!2741226 () Bool)

(assert (=> b!2741226 (= e!1726027 (inv!42791 (left!24171 (c!444475 acc!331))))))

(declare-fun b!2741227 () Bool)

(declare-fun e!1726028 () Bool)

(assert (=> b!2741227 (= e!1726027 e!1726028)))

(declare-fun res!1150978 () Bool)

(assert (=> b!2741227 (= res!1150978 (not ((_ is Leaf!15010) (left!24171 (c!444475 acc!331)))))))

(assert (=> b!2741227 (=> res!1150978 e!1726028)))

(declare-fun b!2741228 () Bool)

(assert (=> b!2741228 (= e!1726028 (inv!42792 (left!24171 (c!444475 acc!331))))))

(assert (= (and d!795366 c!444575) b!2741226))

(assert (= (and d!795366 (not c!444575)) b!2741227))

(assert (= (and b!2741227 (not res!1150978)) b!2741228))

(declare-fun m!3159103 () Bool)

(assert (=> b!2741226 m!3159103))

(declare-fun m!3159105 () Bool)

(assert (=> b!2741228 m!3159105))

(assert (=> b!2740971 d!795366))

(declare-fun d!795368 () Bool)

(declare-fun c!444576 () Bool)

(assert (=> d!795368 (= c!444576 ((_ is Node!9858) (right!24501 (c!444475 acc!331))))))

(declare-fun e!1726029 () Bool)

(assert (=> d!795368 (= (inv!42781 (right!24501 (c!444475 acc!331))) e!1726029)))

(declare-fun b!2741229 () Bool)

(assert (=> b!2741229 (= e!1726029 (inv!42791 (right!24501 (c!444475 acc!331))))))

(declare-fun b!2741230 () Bool)

(declare-fun e!1726030 () Bool)

(assert (=> b!2741230 (= e!1726029 e!1726030)))

(declare-fun res!1150979 () Bool)

(assert (=> b!2741230 (= res!1150979 (not ((_ is Leaf!15010) (right!24501 (c!444475 acc!331)))))))

(assert (=> b!2741230 (=> res!1150979 e!1726030)))

(declare-fun b!2741231 () Bool)

(assert (=> b!2741231 (= e!1726030 (inv!42792 (right!24501 (c!444475 acc!331))))))

(assert (= (and d!795368 c!444576) b!2741229))

(assert (= (and d!795368 (not c!444576)) b!2741230))

(assert (= (and b!2741230 (not res!1150979)) b!2741231))

(declare-fun m!3159107 () Bool)

(assert (=> b!2741229 m!3159107))

(declare-fun m!3159109 () Bool)

(assert (=> b!2741231 m!3159109))

(assert (=> b!2740971 d!795368))

(declare-fun d!795370 () Bool)

(assert (=> d!795370 (= (inv!42793 (xs!12960 (c!444474 totalInput!328))) (<= (size!24288 (innerList!9917 (xs!12960 (c!444474 totalInput!328)))) 2147483647))))

(declare-fun bs!490146 () Bool)

(assert (= bs!490146 d!795370))

(declare-fun m!3159111 () Bool)

(assert (=> bs!490146 m!3159111))

(assert (=> b!2740975 d!795370))

(declare-fun d!795372 () Bool)

(assert (=> d!795372 (= (list!11960 (_2!18232 lt!970642)) (list!11964 (c!444474 (_2!18232 lt!970642))))))

(declare-fun bs!490147 () Bool)

(assert (= bs!490147 d!795372))

(declare-fun m!3159113 () Bool)

(assert (=> bs!490147 m!3159113))

(assert (=> b!2740876 d!795372))

(assert (=> b!2740876 d!795172))

(assert (=> b!2740923 d!795338))

(declare-fun d!795374 () Bool)

(assert (=> d!795374 (= (get!9821 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603))) (v!33118 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 input!603))))))

(assert (=> b!2740923 d!795374))

(assert (=> b!2740923 d!795334))

(assert (=> b!2740923 d!795176))

(declare-fun d!795376 () Bool)

(declare-fun res!1150986 () Bool)

(declare-fun e!1726053 () Bool)

(assert (=> d!795376 (=> res!1150986 e!1726053)))

(assert (=> d!795376 (= res!1150986 ((_ is Nil!31442) rules!1182))))

(assert (=> d!795376 (= (noDuplicateTag!1794 thiss!11556 rules!1182 Nil!31444) e!1726053)))

(declare-fun b!2741270 () Bool)

(declare-fun e!1726054 () Bool)

(assert (=> b!2741270 (= e!1726053 e!1726054)))

(declare-fun res!1150987 () Bool)

(assert (=> b!2741270 (=> (not res!1150987) (not e!1726054))))

(declare-fun contains!5976 (List!31544 String!35085) Bool)

(assert (=> b!2741270 (= res!1150987 (not (contains!5976 Nil!31444 (tag!5319 (h!36862 rules!1182)))))))

(declare-fun b!2741271 () Bool)

(assert (=> b!2741271 (= e!1726054 (noDuplicateTag!1794 thiss!11556 (t!227620 rules!1182) (Cons!31444 (tag!5319 (h!36862 rules!1182)) Nil!31444)))))

(assert (= (and d!795376 (not res!1150986)) b!2741270))

(assert (= (and b!2741270 res!1150987) b!2741271))

(declare-fun m!3159115 () Bool)

(assert (=> b!2741270 m!3159115))

(declare-fun m!3159117 () Bool)

(assert (=> b!2741271 m!3159117))

(assert (=> b!2740665 d!795376))

(declare-fun d!795378 () Bool)

(assert (=> d!795378 (= (list!11961 (_1!18232 lt!970636)) (list!11965 (c!444475 (_1!18232 lt!970636))))))

(declare-fun bs!490148 () Bool)

(assert (= bs!490148 d!795378))

(declare-fun m!3159119 () Bool)

(assert (=> bs!490148 m!3159119))

(assert (=> b!2740866 d!795378))

(declare-fun b!2741311 () Bool)

(declare-fun e!1726073 () Bool)

(declare-fun lt!970815 () tuple2!31208)

(declare-fun isEmpty!18003 (List!31541) Bool)

(assert (=> b!2741311 (= e!1726073 (not (isEmpty!18003 (_1!18236 lt!970815))))))

(declare-fun b!2741312 () Bool)

(declare-fun e!1726075 () tuple2!31208)

(assert (=> b!2741312 (= e!1726075 (tuple2!31209 Nil!31441 (list!11960 treated!9)))))

(declare-fun b!2741313 () Bool)

(declare-fun e!1726074 () Bool)

(assert (=> b!2741313 (= e!1726074 (= (_2!18236 lt!970815) (list!11960 treated!9)))))

(declare-fun b!2741314 () Bool)

(declare-fun lt!970814 () Option!6225)

(declare-fun lt!970813 () tuple2!31208)

(assert (=> b!2741314 (= e!1726075 (tuple2!31209 (Cons!31441 (_1!18237 (v!33118 lt!970814)) (_1!18236 lt!970813)) (_2!18236 lt!970813)))))

(assert (=> b!2741314 (= lt!970813 (lexList!1240 thiss!11556 rules!1182 (_2!18237 (v!33118 lt!970814))))))

(declare-fun d!795380 () Bool)

(assert (=> d!795380 e!1726074))

(declare-fun c!444605 () Bool)

(assert (=> d!795380 (= c!444605 (> (size!24294 (_1!18236 lt!970815)) 0))))

(assert (=> d!795380 (= lt!970815 e!1726075)))

(declare-fun c!444606 () Bool)

(assert (=> d!795380 (= c!444606 ((_ is Some!6224) lt!970814))))

(assert (=> d!795380 (= lt!970814 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 treated!9)))))

(assert (=> d!795380 (= (lexList!1240 thiss!11556 rules!1182 (list!11960 treated!9)) lt!970815)))

(declare-fun b!2741315 () Bool)

(assert (=> b!2741315 (= e!1726074 e!1726073)))

(declare-fun res!1151003 () Bool)

(assert (=> b!2741315 (= res!1151003 (< (size!24288 (_2!18236 lt!970815)) (size!24288 (list!11960 treated!9))))))

(assert (=> b!2741315 (=> (not res!1151003) (not e!1726073))))

(assert (= (and d!795380 c!444606) b!2741314))

(assert (= (and d!795380 (not c!444606)) b!2741312))

(assert (= (and d!795380 c!444605) b!2741315))

(assert (= (and d!795380 (not c!444605)) b!2741313))

(assert (= (and b!2741315 res!1151003) b!2741311))

(declare-fun m!3159121 () Bool)

(assert (=> b!2741311 m!3159121))

(declare-fun m!3159123 () Bool)

(assert (=> b!2741314 m!3159123))

(declare-fun m!3159125 () Bool)

(assert (=> d!795380 m!3159125))

(assert (=> d!795380 m!3158307))

(assert (=> d!795380 m!3158881))

(declare-fun m!3159127 () Bool)

(assert (=> b!2741315 m!3159127))

(assert (=> b!2741315 m!3158307))

(declare-fun m!3159129 () Bool)

(assert (=> b!2741315 m!3159129))

(assert (=> b!2740866 d!795380))

(assert (=> b!2740866 d!795178))

(declare-fun d!795382 () Bool)

(declare-fun c!444607 () Bool)

(assert (=> d!795382 (= c!444607 ((_ is Node!9857) (left!24170 (c!444474 input!603))))))

(declare-fun e!1726076 () Bool)

(assert (=> d!795382 (= (inv!42782 (left!24170 (c!444474 input!603))) e!1726076)))

(declare-fun b!2741316 () Bool)

(assert (=> b!2741316 (= e!1726076 (inv!42787 (left!24170 (c!444474 input!603))))))

(declare-fun b!2741317 () Bool)

(declare-fun e!1726077 () Bool)

(assert (=> b!2741317 (= e!1726076 e!1726077)))

(declare-fun res!1151004 () Bool)

(assert (=> b!2741317 (= res!1151004 (not ((_ is Leaf!15009) (left!24170 (c!444474 input!603)))))))

(assert (=> b!2741317 (=> res!1151004 e!1726077)))

(declare-fun b!2741318 () Bool)

(assert (=> b!2741318 (= e!1726077 (inv!42788 (left!24170 (c!444474 input!603))))))

(assert (= (and d!795382 c!444607) b!2741316))

(assert (= (and d!795382 (not c!444607)) b!2741317))

(assert (= (and b!2741317 (not res!1151004)) b!2741318))

(declare-fun m!3159139 () Bool)

(assert (=> b!2741316 m!3159139))

(declare-fun m!3159141 () Bool)

(assert (=> b!2741318 m!3159141))

(assert (=> b!2740977 d!795382))

(declare-fun d!795384 () Bool)

(declare-fun c!444608 () Bool)

(assert (=> d!795384 (= c!444608 ((_ is Node!9857) (right!24500 (c!444474 input!603))))))

(declare-fun e!1726078 () Bool)

(assert (=> d!795384 (= (inv!42782 (right!24500 (c!444474 input!603))) e!1726078)))

(declare-fun b!2741319 () Bool)

(assert (=> b!2741319 (= e!1726078 (inv!42787 (right!24500 (c!444474 input!603))))))

(declare-fun b!2741320 () Bool)

(declare-fun e!1726079 () Bool)

(assert (=> b!2741320 (= e!1726078 e!1726079)))

(declare-fun res!1151005 () Bool)

(assert (=> b!2741320 (= res!1151005 (not ((_ is Leaf!15009) (right!24500 (c!444474 input!603)))))))

(assert (=> b!2741320 (=> res!1151005 e!1726079)))

(declare-fun b!2741321 () Bool)

(assert (=> b!2741321 (= e!1726079 (inv!42788 (right!24500 (c!444474 input!603))))))

(assert (= (and d!795384 c!444608) b!2741319))

(assert (= (and d!795384 (not c!444608)) b!2741320))

(assert (= (and b!2741320 (not res!1151005)) b!2741321))

(declare-fun m!3159147 () Bool)

(assert (=> b!2741319 m!3159147))

(declare-fun m!3159149 () Bool)

(assert (=> b!2741321 m!3159149))

(assert (=> b!2740977 d!795384))

(declare-fun d!795386 () Bool)

(assert (=> d!795386 (= (list!11960 (_2!18232 lt!970636)) (list!11964 (c!444474 (_2!18232 lt!970636))))))

(declare-fun bs!490149 () Bool)

(assert (= bs!490149 d!795386))

(declare-fun m!3159151 () Bool)

(assert (=> bs!490149 m!3159151))

(assert (=> b!2740862 d!795386))

(assert (=> b!2740862 d!795178))

(assert (=> b!2740919 d!795342))

(assert (=> b!2740919 d!795338))

(declare-fun d!795388 () Bool)

(assert (=> d!795388 (= (list!11960 (_2!18233 (get!9820 lt!970661))) (list!11964 (c!444474 (_2!18233 (get!9820 lt!970661)))))))

(declare-fun bs!490150 () Bool)

(assert (= bs!490150 d!795388))

(declare-fun m!3159159 () Bool)

(assert (=> bs!490150 m!3159159))

(assert (=> b!2740919 d!795388))

(assert (=> b!2740919 d!795340))

(assert (=> b!2740919 d!795176))

(declare-fun d!795390 () Bool)

(declare-fun lt!970818 () Int)

(assert (=> d!795390 (>= lt!970818 0)))

(declare-fun e!1726086 () Int)

(assert (=> d!795390 (= lt!970818 e!1726086)))

(declare-fun c!444615 () Bool)

(assert (=> d!795390 (= c!444615 ((_ is Nil!31439) lt!970585))))

(assert (=> d!795390 (= (size!24288 lt!970585) lt!970818)))

(declare-fun b!2741334 () Bool)

(assert (=> b!2741334 (= e!1726086 0)))

(declare-fun b!2741335 () Bool)

(assert (=> b!2741335 (= e!1726086 (+ 1 (size!24288 (t!227617 lt!970585))))))

(assert (= (and d!795390 c!444615) b!2741334))

(assert (= (and d!795390 (not c!444615)) b!2741335))

(declare-fun m!3159167 () Bool)

(assert (=> b!2741335 m!3159167))

(assert (=> b!2740679 d!795390))

(declare-fun d!795394 () Bool)

(declare-fun lt!970819 () Int)

(assert (=> d!795394 (>= lt!970819 0)))

(declare-fun e!1726087 () Int)

(assert (=> d!795394 (= lt!970819 e!1726087)))

(declare-fun c!444616 () Bool)

(assert (=> d!795394 (= c!444616 ((_ is Nil!31439) lt!970575))))

(assert (=> d!795394 (= (size!24288 lt!970575) lt!970819)))

(declare-fun b!2741336 () Bool)

(assert (=> b!2741336 (= e!1726087 0)))

(declare-fun b!2741337 () Bool)

(assert (=> b!2741337 (= e!1726087 (+ 1 (size!24288 (t!227617 lt!970575))))))

(assert (= (and d!795394 c!444616) b!2741336))

(assert (= (and d!795394 (not c!444616)) b!2741337))

(declare-fun m!3159169 () Bool)

(assert (=> b!2741337 m!3159169))

(assert (=> b!2740679 d!795394))

(declare-fun d!795396 () Bool)

(declare-fun lt!970820 () Int)

(assert (=> d!795396 (>= lt!970820 0)))

(declare-fun e!1726088 () Int)

(assert (=> d!795396 (= lt!970820 e!1726088)))

(declare-fun c!444617 () Bool)

(assert (=> d!795396 (= c!444617 ((_ is Nil!31439) lt!970573))))

(assert (=> d!795396 (= (size!24288 lt!970573) lt!970820)))

(declare-fun b!2741338 () Bool)

(assert (=> b!2741338 (= e!1726088 0)))

(declare-fun b!2741339 () Bool)

(assert (=> b!2741339 (= e!1726088 (+ 1 (size!24288 (t!227617 lt!970573))))))

(assert (= (and d!795396 c!444617) b!2741338))

(assert (= (and d!795396 (not c!444617)) b!2741339))

(declare-fun m!3159171 () Bool)

(assert (=> b!2741339 m!3159171))

(assert (=> b!2740679 d!795396))

(declare-fun d!795398 () Bool)

(declare-fun res!1151010 () Bool)

(declare-fun e!1726093 () Bool)

(assert (=> d!795398 (=> (not res!1151010) (not e!1726093))))

(declare-fun list!11969 (IArray!19721) List!31541)

(assert (=> d!795398 (= res!1151010 (<= (size!24294 (list!11969 (xs!12961 (c!444475 acc!331)))) 512))))

(assert (=> d!795398 (= (inv!42792 (c!444475 acc!331)) e!1726093)))

(declare-fun b!2741348 () Bool)

(declare-fun res!1151011 () Bool)

(assert (=> b!2741348 (=> (not res!1151011) (not e!1726093))))

(assert (=> b!2741348 (= res!1151011 (= (csize!19947 (c!444475 acc!331)) (size!24294 (list!11969 (xs!12961 (c!444475 acc!331))))))))

(declare-fun b!2741349 () Bool)

(assert (=> b!2741349 (= e!1726093 (and (> (csize!19947 (c!444475 acc!331)) 0) (<= (csize!19947 (c!444475 acc!331)) 512)))))

(assert (= (and d!795398 res!1151010) b!2741348))

(assert (= (and b!2741348 res!1151011) b!2741349))

(declare-fun m!3159177 () Bool)

(assert (=> d!795398 m!3159177))

(assert (=> d!795398 m!3159177))

(declare-fun m!3159179 () Bool)

(assert (=> d!795398 m!3159179))

(assert (=> b!2741348 m!3159177))

(assert (=> b!2741348 m!3159177))

(assert (=> b!2741348 m!3159179))

(assert (=> b!2740902 d!795398))

(assert (=> b!2740861 d!795386))

(assert (=> b!2740861 d!795380))

(assert (=> b!2740861 d!795178))

(declare-fun b!2741351 () Bool)

(declare-fun e!1726094 () List!31539)

(assert (=> b!2741351 (= e!1726094 (Cons!31439 (h!36859 (t!227617 lt!970575)) (++!7872 (t!227617 (t!227617 lt!970575)) lt!970573)))))

(declare-fun d!795402 () Bool)

(declare-fun e!1726095 () Bool)

(assert (=> d!795402 e!1726095))

(declare-fun res!1151012 () Bool)

(assert (=> d!795402 (=> (not res!1151012) (not e!1726095))))

(declare-fun lt!970821 () List!31539)

(assert (=> d!795402 (= res!1151012 (= (content!4481 lt!970821) ((_ map or) (content!4481 (t!227617 lt!970575)) (content!4481 lt!970573))))))

(assert (=> d!795402 (= lt!970821 e!1726094)))

(declare-fun c!444620 () Bool)

(assert (=> d!795402 (= c!444620 ((_ is Nil!31439) (t!227617 lt!970575)))))

(assert (=> d!795402 (= (++!7872 (t!227617 lt!970575) lt!970573) lt!970821)))

(declare-fun b!2741350 () Bool)

(assert (=> b!2741350 (= e!1726094 lt!970573)))

(declare-fun b!2741353 () Bool)

(assert (=> b!2741353 (= e!1726095 (or (not (= lt!970573 Nil!31439)) (= lt!970821 (t!227617 lt!970575))))))

(declare-fun b!2741352 () Bool)

(declare-fun res!1151013 () Bool)

(assert (=> b!2741352 (=> (not res!1151013) (not e!1726095))))

(assert (=> b!2741352 (= res!1151013 (= (size!24288 lt!970821) (+ (size!24288 (t!227617 lt!970575)) (size!24288 lt!970573))))))

(assert (= (and d!795402 c!444620) b!2741350))

(assert (= (and d!795402 (not c!444620)) b!2741351))

(assert (= (and d!795402 res!1151012) b!2741352))

(assert (= (and b!2741352 res!1151013) b!2741353))

(declare-fun m!3159181 () Bool)

(assert (=> b!2741351 m!3159181))

(declare-fun m!3159183 () Bool)

(assert (=> d!795402 m!3159183))

(declare-fun m!3159185 () Bool)

(assert (=> d!795402 m!3159185))

(assert (=> d!795402 m!3158389))

(declare-fun m!3159187 () Bool)

(assert (=> b!2741352 m!3159187))

(assert (=> b!2741352 m!3159169))

(assert (=> b!2741352 m!3158395))

(assert (=> b!2740678 d!795402))

(declare-fun d!795404 () Bool)

(declare-fun res!1151035 () Bool)

(declare-fun e!1726108 () Bool)

(assert (=> d!795404 (=> res!1151035 e!1726108)))

(assert (=> d!795404 (= res!1151035 (not ((_ is Node!9858) (c!444475 acc!331))))))

(assert (=> d!795404 (= (isBalanced!3003 (c!444475 acc!331)) e!1726108)))

(declare-fun b!2741376 () Bool)

(declare-fun res!1151032 () Bool)

(declare-fun e!1726107 () Bool)

(assert (=> b!2741376 (=> (not res!1151032) (not e!1726107))))

(assert (=> b!2741376 (= res!1151032 (<= (- (height!1480 (left!24171 (c!444475 acc!331))) (height!1480 (right!24501 (c!444475 acc!331)))) 1))))

(declare-fun b!2741377 () Bool)

(declare-fun isEmpty!18004 (Conc!9858) Bool)

(assert (=> b!2741377 (= e!1726107 (not (isEmpty!18004 (right!24501 (c!444475 acc!331)))))))

(declare-fun b!2741378 () Bool)

(declare-fun res!1151033 () Bool)

(assert (=> b!2741378 (=> (not res!1151033) (not e!1726107))))

(assert (=> b!2741378 (= res!1151033 (isBalanced!3003 (left!24171 (c!444475 acc!331))))))

(declare-fun b!2741379 () Bool)

(declare-fun res!1151036 () Bool)

(assert (=> b!2741379 (=> (not res!1151036) (not e!1726107))))

(assert (=> b!2741379 (= res!1151036 (not (isEmpty!18004 (left!24171 (c!444475 acc!331)))))))

(declare-fun b!2741380 () Bool)

(declare-fun res!1151037 () Bool)

(assert (=> b!2741380 (=> (not res!1151037) (not e!1726107))))

(assert (=> b!2741380 (= res!1151037 (isBalanced!3003 (right!24501 (c!444475 acc!331))))))

(declare-fun b!2741381 () Bool)

(assert (=> b!2741381 (= e!1726108 e!1726107)))

(declare-fun res!1151034 () Bool)

(assert (=> b!2741381 (=> (not res!1151034) (not e!1726107))))

(assert (=> b!2741381 (= res!1151034 (<= (- 1) (- (height!1480 (left!24171 (c!444475 acc!331))) (height!1480 (right!24501 (c!444475 acc!331))))))))

(assert (= (and d!795404 (not res!1151035)) b!2741381))

(assert (= (and b!2741381 res!1151034) b!2741376))

(assert (= (and b!2741376 res!1151032) b!2741378))

(assert (= (and b!2741378 res!1151033) b!2741380))

(assert (= (and b!2741380 res!1151037) b!2741379))

(assert (= (and b!2741379 res!1151036) b!2741377))

(declare-fun m!3159219 () Bool)

(assert (=> b!2741380 m!3159219))

(declare-fun m!3159221 () Bool)

(assert (=> b!2741379 m!3159221))

(declare-fun m!3159225 () Bool)

(assert (=> b!2741378 m!3159225))

(declare-fun m!3159229 () Bool)

(assert (=> b!2741376 m!3159229))

(declare-fun m!3159233 () Bool)

(assert (=> b!2741376 m!3159233))

(assert (=> b!2741381 m!3159229))

(assert (=> b!2741381 m!3159233))

(declare-fun m!3159235 () Bool)

(assert (=> b!2741377 m!3159235))

(assert (=> d!795268 d!795404))

(declare-fun b!2741396 () Bool)

(declare-fun e!1726116 () List!31541)

(assert (=> b!2741396 (= e!1726116 (list!11969 (xs!12961 (c!444475 acc!331))))))

(declare-fun d!795410 () Bool)

(declare-fun c!444630 () Bool)

(assert (=> d!795410 (= c!444630 ((_ is Empty!9858) (c!444475 acc!331)))))

(declare-fun e!1726115 () List!31541)

(assert (=> d!795410 (= (list!11965 (c!444475 acc!331)) e!1726115)))

(declare-fun b!2741394 () Bool)

(assert (=> b!2741394 (= e!1726115 Nil!31441)))

(declare-fun b!2741397 () Bool)

(assert (=> b!2741397 (= e!1726116 (++!7877 (list!11965 (left!24171 (c!444475 acc!331))) (list!11965 (right!24501 (c!444475 acc!331)))))))

(declare-fun b!2741395 () Bool)

(assert (=> b!2741395 (= e!1726115 e!1726116)))

(declare-fun c!444631 () Bool)

(assert (=> b!2741395 (= c!444631 ((_ is Leaf!15010) (c!444475 acc!331)))))

(assert (= (and d!795410 c!444630) b!2741394))

(assert (= (and d!795410 (not c!444630)) b!2741395))

(assert (= (and b!2741395 c!444631) b!2741396))

(assert (= (and b!2741395 (not c!444631)) b!2741397))

(assert (=> b!2741396 m!3159177))

(declare-fun m!3159239 () Bool)

(assert (=> b!2741397 m!3159239))

(declare-fun m!3159241 () Bool)

(assert (=> b!2741397 m!3159241))

(assert (=> b!2741397 m!3159239))

(assert (=> b!2741397 m!3159241))

(declare-fun m!3159243 () Bool)

(assert (=> b!2741397 m!3159243))

(assert (=> d!795184 d!795410))

(declare-fun d!795414 () Bool)

(declare-fun res!1151044 () Bool)

(declare-fun e!1726119 () Bool)

(assert (=> d!795414 (=> (not res!1151044) (not e!1726119))))

(declare-fun size!24296 (Conc!9857) Int)

(assert (=> d!795414 (= res!1151044 (= (csize!19944 (c!444474 totalInput!328)) (+ (size!24296 (left!24170 (c!444474 totalInput!328))) (size!24296 (right!24500 (c!444474 totalInput!328))))))))

(assert (=> d!795414 (= (inv!42787 (c!444474 totalInput!328)) e!1726119)))

(declare-fun b!2741404 () Bool)

(declare-fun res!1151045 () Bool)

(assert (=> b!2741404 (=> (not res!1151045) (not e!1726119))))

(assert (=> b!2741404 (= res!1151045 (and (not (= (left!24170 (c!444474 totalInput!328)) Empty!9857)) (not (= (right!24500 (c!444474 totalInput!328)) Empty!9857))))))

(declare-fun b!2741405 () Bool)

(declare-fun res!1151046 () Bool)

(assert (=> b!2741405 (=> (not res!1151046) (not e!1726119))))

(assert (=> b!2741405 (= res!1151046 (= (cheight!10068 (c!444474 totalInput!328)) (+ (max!0 (height!1482 (left!24170 (c!444474 totalInput!328))) (height!1482 (right!24500 (c!444474 totalInput!328)))) 1)))))

(declare-fun b!2741406 () Bool)

(assert (=> b!2741406 (= e!1726119 (<= 0 (cheight!10068 (c!444474 totalInput!328))))))

(assert (= (and d!795414 res!1151044) b!2741404))

(assert (= (and b!2741404 res!1151045) b!2741405))

(assert (= (and b!2741405 res!1151046) b!2741406))

(declare-fun m!3159245 () Bool)

(assert (=> d!795414 m!3159245))

(declare-fun m!3159247 () Bool)

(assert (=> d!795414 m!3159247))

(declare-fun m!3159249 () Bool)

(assert (=> b!2741405 m!3159249))

(declare-fun m!3159251 () Bool)

(assert (=> b!2741405 m!3159251))

(assert (=> b!2741405 m!3159249))

(assert (=> b!2741405 m!3159251))

(declare-fun m!3159253 () Bool)

(assert (=> b!2741405 m!3159253))

(assert (=> b!2740660 d!795414))

(declare-fun bs!490151 () Bool)

(declare-fun d!795416 () Bool)

(assert (= bs!490151 (and d!795416 d!795324)))

(declare-fun lambda!100810 () Int)

(assert (=> bs!490151 (= lambda!100810 lambda!100799)))

(assert (=> d!795416 true))

(declare-fun lt!970830 () Bool)

(assert (=> d!795416 (= lt!970830 (rulesValidInductive!1683 thiss!11556 rules!1182))))

(assert (=> d!795416 (= lt!970830 (forall!6571 rules!1182 lambda!100810))))

(assert (=> d!795416 (= (rulesValid!1798 thiss!11556 rules!1182) lt!970830)))

(declare-fun bs!490152 () Bool)

(assert (= bs!490152 d!795416))

(assert (=> bs!490152 m!3158713))

(declare-fun m!3159255 () Bool)

(assert (=> bs!490152 m!3159255))

(assert (=> d!795168 d!795416))

(declare-fun d!795418 () Bool)

(declare-fun res!1151053 () Bool)

(declare-fun e!1726122 () Bool)

(assert (=> d!795418 (=> (not res!1151053) (not e!1726122))))

(assert (=> d!795418 (= res!1151053 (= (csize!19946 (c!444475 acc!331)) (+ (size!24295 (left!24171 (c!444475 acc!331))) (size!24295 (right!24501 (c!444475 acc!331))))))))

(assert (=> d!795418 (= (inv!42791 (c!444475 acc!331)) e!1726122)))

(declare-fun b!2741413 () Bool)

(declare-fun res!1151054 () Bool)

(assert (=> b!2741413 (=> (not res!1151054) (not e!1726122))))

(assert (=> b!2741413 (= res!1151054 (and (not (= (left!24171 (c!444475 acc!331)) Empty!9858)) (not (= (right!24501 (c!444475 acc!331)) Empty!9858))))))

(declare-fun b!2741414 () Bool)

(declare-fun res!1151055 () Bool)

(assert (=> b!2741414 (=> (not res!1151055) (not e!1726122))))

(assert (=> b!2741414 (= res!1151055 (= (cheight!10069 (c!444475 acc!331)) (+ (max!0 (height!1480 (left!24171 (c!444475 acc!331))) (height!1480 (right!24501 (c!444475 acc!331)))) 1)))))

(declare-fun b!2741415 () Bool)

(assert (=> b!2741415 (= e!1726122 (<= 0 (cheight!10069 (c!444475 acc!331))))))

(assert (= (and d!795418 res!1151053) b!2741413))

(assert (= (and b!2741413 res!1151054) b!2741414))

(assert (= (and b!2741414 res!1151055) b!2741415))

(declare-fun m!3159257 () Bool)

(assert (=> d!795418 m!3159257))

(declare-fun m!3159259 () Bool)

(assert (=> d!795418 m!3159259))

(assert (=> b!2741414 m!3159229))

(assert (=> b!2741414 m!3159233))

(assert (=> b!2741414 m!3159229))

(assert (=> b!2741414 m!3159233))

(declare-fun m!3159261 () Bool)

(assert (=> b!2741414 m!3159261))

(assert (=> b!2740900 d!795418))

(declare-fun d!795420 () Bool)

(declare-fun res!1151060 () Bool)

(declare-fun e!1726125 () Bool)

(assert (=> d!795420 (=> (not res!1151060) (not e!1726125))))

(assert (=> d!795420 (= res!1151060 (<= (size!24288 (list!11967 (xs!12960 (c!444474 totalInput!328)))) 512))))

(assert (=> d!795420 (= (inv!42788 (c!444474 totalInput!328)) e!1726125)))

(declare-fun b!2741420 () Bool)

(declare-fun res!1151061 () Bool)

(assert (=> b!2741420 (=> (not res!1151061) (not e!1726125))))

(assert (=> b!2741420 (= res!1151061 (= (csize!19945 (c!444474 totalInput!328)) (size!24288 (list!11967 (xs!12960 (c!444474 totalInput!328))))))))

(declare-fun b!2741421 () Bool)

(assert (=> b!2741421 (= e!1726125 (and (> (csize!19945 (c!444474 totalInput!328)) 0) (<= (csize!19945 (c!444474 totalInput!328)) 512)))))

(assert (= (and d!795420 res!1151060) b!2741420))

(assert (= (and b!2741420 res!1151061) b!2741421))

(assert (=> d!795420 m!3159087))

(assert (=> d!795420 m!3159087))

(declare-fun m!3159263 () Bool)

(assert (=> d!795420 m!3159263))

(assert (=> b!2741420 m!3159087))

(assert (=> b!2741420 m!3159087))

(assert (=> b!2741420 m!3159263))

(assert (=> b!2740662 d!795420))

(declare-fun d!795422 () Bool)

(assert (=> d!795422 (= (list!11961 (_1!18232 lt!970639)) (list!11965 (c!444475 (_1!18232 lt!970639))))))

(declare-fun bs!490153 () Bool)

(assert (= bs!490153 d!795422))

(declare-fun m!3159265 () Bool)

(assert (=> bs!490153 m!3159265))

(assert (=> b!2740873 d!795422))

(declare-fun b!2741422 () Bool)

(declare-fun e!1726126 () Bool)

(declare-fun lt!970833 () tuple2!31208)

(assert (=> b!2741422 (= e!1726126 (not (isEmpty!18003 (_1!18236 lt!970833))))))

(declare-fun b!2741423 () Bool)

(declare-fun e!1726128 () tuple2!31208)

(assert (=> b!2741423 (= e!1726128 (tuple2!31209 Nil!31441 (list!11960 input!603)))))

(declare-fun b!2741424 () Bool)

(declare-fun e!1726127 () Bool)

(assert (=> b!2741424 (= e!1726127 (= (_2!18236 lt!970833) (list!11960 input!603)))))

(declare-fun b!2741425 () Bool)

(declare-fun lt!970832 () Option!6225)

(declare-fun lt!970831 () tuple2!31208)

(assert (=> b!2741425 (= e!1726128 (tuple2!31209 (Cons!31441 (_1!18237 (v!33118 lt!970832)) (_1!18236 lt!970831)) (_2!18236 lt!970831)))))

(assert (=> b!2741425 (= lt!970831 (lexList!1240 thiss!11556 rules!1182 (_2!18237 (v!33118 lt!970832))))))

(declare-fun d!795424 () Bool)

(assert (=> d!795424 e!1726127))

(declare-fun c!444632 () Bool)

(assert (=> d!795424 (= c!444632 (> (size!24294 (_1!18236 lt!970833)) 0))))

(assert (=> d!795424 (= lt!970833 e!1726128)))

(declare-fun c!444633 () Bool)

(assert (=> d!795424 (= c!444633 ((_ is Some!6224) lt!970832))))

(assert (=> d!795424 (= lt!970832 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 input!603)))))

(assert (=> d!795424 (= (lexList!1240 thiss!11556 rules!1182 (list!11960 input!603)) lt!970833)))

(declare-fun b!2741426 () Bool)

(assert (=> b!2741426 (= e!1726127 e!1726126)))

(declare-fun res!1151062 () Bool)

(assert (=> b!2741426 (= res!1151062 (< (size!24288 (_2!18236 lt!970833)) (size!24288 (list!11960 input!603))))))

(assert (=> b!2741426 (=> (not res!1151062) (not e!1726126))))

(assert (= (and d!795424 c!444633) b!2741425))

(assert (= (and d!795424 (not c!444633)) b!2741423))

(assert (= (and d!795424 c!444632) b!2741426))

(assert (= (and d!795424 (not c!444632)) b!2741424))

(assert (= (and b!2741426 res!1151062) b!2741422))

(declare-fun m!3159267 () Bool)

(assert (=> b!2741422 m!3159267))

(declare-fun m!3159269 () Bool)

(assert (=> b!2741425 m!3159269))

(declare-fun m!3159271 () Bool)

(assert (=> d!795424 m!3159271))

(assert (=> d!795424 m!3158305))

(assert (=> d!795424 m!3158705))

(declare-fun m!3159273 () Bool)

(assert (=> b!2741426 m!3159273))

(assert (=> b!2741426 m!3158305))

(assert (=> b!2741426 m!3159053))

(assert (=> b!2740873 d!795424))

(assert (=> b!2740873 d!795176))

(assert (=> b!2740926 d!795336))

(declare-fun d!795426 () Bool)

(assert (=> d!795426 (= (list!11961 lt!970645) (list!11965 (c!444475 lt!970645)))))

(declare-fun bs!490154 () Bool)

(assert (= bs!490154 d!795426))

(declare-fun m!3159275 () Bool)

(assert (=> bs!490154 m!3159275))

(assert (=> b!2740893 d!795426))

(declare-fun d!795428 () Bool)

(declare-fun e!1726136 () Bool)

(assert (=> d!795428 e!1726136))

(declare-fun res!1151068 () Bool)

(assert (=> d!795428 (=> (not res!1151068) (not e!1726136))))

(declare-fun lt!970846 () List!31541)

(declare-fun content!4482 (List!31541) (InoxSet Token!9092))

(assert (=> d!795428 (= res!1151068 (= (content!4482 lt!970846) ((_ map or) (content!4482 (list!11961 acc!331)) (content!4482 (list!11961 (_1!18232 lt!970574))))))))

(declare-fun e!1726135 () List!31541)

(assert (=> d!795428 (= lt!970846 e!1726135)))

(declare-fun c!444638 () Bool)

(assert (=> d!795428 (= c!444638 ((_ is Nil!31441) (list!11961 acc!331)))))

(assert (=> d!795428 (= (++!7877 (list!11961 acc!331) (list!11961 (_1!18232 lt!970574))) lt!970846)))

(declare-fun b!2741439 () Bool)

(assert (=> b!2741439 (= e!1726135 (list!11961 (_1!18232 lt!970574)))))

(declare-fun b!2741442 () Bool)

(assert (=> b!2741442 (= e!1726136 (or (not (= (list!11961 (_1!18232 lt!970574)) Nil!31441)) (= lt!970846 (list!11961 acc!331))))))

(declare-fun b!2741441 () Bool)

(declare-fun res!1151067 () Bool)

(assert (=> b!2741441 (=> (not res!1151067) (not e!1726136))))

(assert (=> b!2741441 (= res!1151067 (= (size!24294 lt!970846) (+ (size!24294 (list!11961 acc!331)) (size!24294 (list!11961 (_1!18232 lt!970574))))))))

(declare-fun b!2741440 () Bool)

(assert (=> b!2741440 (= e!1726135 (Cons!31441 (h!36861 (list!11961 acc!331)) (++!7877 (t!227619 (list!11961 acc!331)) (list!11961 (_1!18232 lt!970574)))))))

(assert (= (and d!795428 c!444638) b!2741439))

(assert (= (and d!795428 (not c!444638)) b!2741440))

(assert (= (and d!795428 res!1151068) b!2741441))

(assert (= (and b!2741441 res!1151067) b!2741442))

(declare-fun m!3159277 () Bool)

(assert (=> d!795428 m!3159277))

(assert (=> d!795428 m!3158345))

(declare-fun m!3159279 () Bool)

(assert (=> d!795428 m!3159279))

(assert (=> d!795428 m!3158685))

(declare-fun m!3159281 () Bool)

(assert (=> d!795428 m!3159281))

(declare-fun m!3159283 () Bool)

(assert (=> b!2741441 m!3159283))

(assert (=> b!2741441 m!3158345))

(declare-fun m!3159285 () Bool)

(assert (=> b!2741441 m!3159285))

(assert (=> b!2741441 m!3158685))

(declare-fun m!3159287 () Bool)

(assert (=> b!2741441 m!3159287))

(assert (=> b!2741440 m!3158685))

(declare-fun m!3159289 () Bool)

(assert (=> b!2741440 m!3159289))

(assert (=> b!2740893 d!795428))

(assert (=> b!2740893 d!795184))

(declare-fun d!795430 () Bool)

(assert (=> d!795430 (= (list!11961 (_1!18232 lt!970574)) (list!11965 (c!444475 (_1!18232 lt!970574))))))

(declare-fun bs!490155 () Bool)

(assert (= bs!490155 d!795430))

(declare-fun m!3159291 () Bool)

(assert (=> bs!490155 m!3159291))

(assert (=> b!2740893 d!795430))

(declare-fun d!795432 () Bool)

(assert (=> d!795432 true))

(declare-fun order!17213 () Int)

(declare-fun lambda!100813 () Int)

(declare-fun order!17211 () Int)

(declare-fun dynLambda!13576 (Int Int) Int)

(declare-fun dynLambda!13577 (Int Int) Int)

(assert (=> d!795432 (< (dynLambda!13576 order!17211 (toChars!6668 (transformation!4815 (h!36862 rules!1182)))) (dynLambda!13577 order!17213 lambda!100813))))

(assert (=> d!795432 true))

(declare-fun order!17215 () Int)

(declare-fun dynLambda!13578 (Int Int) Int)

(assert (=> d!795432 (< (dynLambda!13578 order!17215 (toValue!6809 (transformation!4815 (h!36862 rules!1182)))) (dynLambda!13577 order!17213 lambda!100813))))

(declare-fun Forall!1220 (Int) Bool)

(assert (=> d!795432 (= (semiInverseModEq!1991 (toChars!6668 (transformation!4815 (h!36862 rules!1182))) (toValue!6809 (transformation!4815 (h!36862 rules!1182)))) (Forall!1220 lambda!100813))))

(declare-fun bs!490156 () Bool)

(assert (= bs!490156 d!795432))

(declare-fun m!3159293 () Bool)

(assert (=> bs!490156 m!3159293))

(assert (=> d!795160 d!795432))

(assert (=> b!2740925 d!795338))

(assert (=> b!2740925 d!795388))

(assert (=> b!2740925 d!795374))

(assert (=> b!2740925 d!795176))

(assert (=> b!2740925 d!795334))

(declare-fun d!795434 () Bool)

(assert (=> d!795434 (= (list!11961 (_1!18232 lt!970642)) (list!11965 (c!444475 (_1!18232 lt!970642))))))

(declare-fun bs!490157 () Bool)

(assert (= bs!490157 d!795434))

(declare-fun m!3159295 () Bool)

(assert (=> bs!490157 m!3159295))

(assert (=> b!2740880 d!795434))

(declare-fun b!2741461 () Bool)

(declare-fun e!1726141 () Bool)

(declare-fun lt!970849 () tuple2!31208)

(assert (=> b!2741461 (= e!1726141 (not (isEmpty!18003 (_1!18236 lt!970849))))))

(declare-fun b!2741462 () Bool)

(declare-fun e!1726143 () tuple2!31208)

(assert (=> b!2741462 (= e!1726143 (tuple2!31209 Nil!31441 (list!11960 totalInput!328)))))

(declare-fun b!2741463 () Bool)

(declare-fun e!1726142 () Bool)

(assert (=> b!2741463 (= e!1726142 (= (_2!18236 lt!970849) (list!11960 totalInput!328)))))

(declare-fun b!2741464 () Bool)

(declare-fun lt!970848 () Option!6225)

(declare-fun lt!970847 () tuple2!31208)

(assert (=> b!2741464 (= e!1726143 (tuple2!31209 (Cons!31441 (_1!18237 (v!33118 lt!970848)) (_1!18236 lt!970847)) (_2!18236 lt!970847)))))

(assert (=> b!2741464 (= lt!970847 (lexList!1240 thiss!11556 rules!1182 (_2!18237 (v!33118 lt!970848))))))

(declare-fun d!795436 () Bool)

(assert (=> d!795436 e!1726142))

(declare-fun c!444639 () Bool)

(assert (=> d!795436 (= c!444639 (> (size!24294 (_1!18236 lt!970849)) 0))))

(assert (=> d!795436 (= lt!970849 e!1726143)))

(declare-fun c!444640 () Bool)

(assert (=> d!795436 (= c!444640 ((_ is Some!6224) lt!970848))))

(assert (=> d!795436 (= lt!970848 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 totalInput!328)))))

(assert (=> d!795436 (= (lexList!1240 thiss!11556 rules!1182 (list!11960 totalInput!328)) lt!970849)))

(declare-fun b!2741465 () Bool)

(assert (=> b!2741465 (= e!1726142 e!1726141)))

(declare-fun res!1151083 () Bool)

(assert (=> b!2741465 (= res!1151083 (< (size!24288 (_2!18236 lt!970849)) (size!24288 (list!11960 totalInput!328))))))

(assert (=> b!2741465 (=> (not res!1151083) (not e!1726141))))

(assert (= (and d!795436 c!444640) b!2741464))

(assert (= (and d!795436 (not c!444640)) b!2741462))

(assert (= (and d!795436 c!444639) b!2741465))

(assert (= (and d!795436 (not c!444639)) b!2741463))

(assert (= (and b!2741465 res!1151083) b!2741461))

(declare-fun m!3159297 () Bool)

(assert (=> b!2741461 m!3159297))

(declare-fun m!3159299 () Bool)

(assert (=> b!2741464 m!3159299))

(declare-fun m!3159301 () Bool)

(assert (=> d!795436 m!3159301))

(assert (=> d!795436 m!3158301))

(declare-fun m!3159303 () Bool)

(assert (=> d!795436 m!3159303))

(declare-fun m!3159305 () Bool)

(assert (=> b!2741465 m!3159305))

(assert (=> b!2741465 m!3158301))

(declare-fun m!3159307 () Bool)

(assert (=> b!2741465 m!3159307))

(assert (=> b!2740880 d!795436))

(assert (=> b!2740880 d!795172))

(declare-fun d!795438 () Bool)

(assert (=> d!795438 (= (height!1480 (c!444475 acc!331)) (ite ((_ is Empty!9858) (c!444475 acc!331)) 0 (ite ((_ is Leaf!15010) (c!444475 acc!331)) 1 (cheight!10069 (c!444475 acc!331)))))))

(assert (=> b!2740891 d!795438))

(declare-fun d!795440 () Bool)

(assert (=> d!795440 (= (max!0 (height!1480 (c!444475 acc!331)) (height!1480 (c!444475 (_1!18232 lt!970574)))) (ite (< (height!1480 (c!444475 acc!331)) (height!1480 (c!444475 (_1!18232 lt!970574)))) (height!1480 (c!444475 (_1!18232 lt!970574))) (height!1480 (c!444475 acc!331))))))

(assert (=> b!2740891 d!795440))

(declare-fun b!2741571 () Bool)

(declare-fun c!444668 () Bool)

(declare-fun call!177394 () Int)

(declare-fun call!177395 () Int)

(assert (=> b!2741571 (= c!444668 (>= call!177394 call!177395))))

(declare-fun e!1726196 () Conc!9858)

(declare-fun e!1726192 () Conc!9858)

(assert (=> b!2741571 (= e!1726196 e!1726192)))

(declare-fun c!444671 () Bool)

(declare-fun call!177404 () Conc!9858)

(declare-fun call!177393 () Conc!9858)

(declare-fun bm!177388 () Bool)

(declare-fun lt!970875 () Conc!9858)

(declare-fun lt!970877 () Conc!9858)

(declare-fun c!444672 () Bool)

(declare-fun c!444669 () Bool)

(declare-fun c!444675 () Bool)

(declare-fun <>!269 (Conc!9858 Conc!9858) Conc!9858)

(assert (=> bm!177388 (= call!177404 (<>!269 (ite c!444672 (c!444475 acc!331) (ite c!444675 (ite c!444669 (left!24171 (right!24501 (c!444475 acc!331))) (left!24171 (c!444475 acc!331))) (ite c!444671 call!177393 lt!970877))) (ite c!444672 (c!444475 (_1!18232 lt!970574)) (ite c!444675 (ite c!444669 lt!970875 (left!24171 (right!24501 (c!444475 acc!331)))) (ite c!444671 (right!24501 (c!444475 (_1!18232 lt!970574))) call!177393)))))))

(declare-fun c!444670 () Bool)

(declare-fun bm!177389 () Bool)

(declare-fun call!177397 () Conc!9858)

(assert (=> bm!177389 (= call!177397 (++!7876 (ite c!444675 (ite c!444668 (right!24501 (c!444475 acc!331)) (right!24501 (right!24501 (c!444475 acc!331)))) (c!444475 acc!331)) (ite c!444675 (c!444475 (_1!18232 lt!970574)) (ite c!444670 (left!24171 (c!444475 (_1!18232 lt!970574))) (left!24171 (left!24171 (c!444475 (_1!18232 lt!970574))))))))))

(declare-fun e!1726197 () Bool)

(declare-fun lt!970876 () Conc!9858)

(declare-fun b!2741572 () Bool)

(assert (=> b!2741572 (= e!1726197 (= (list!11965 lt!970876) (++!7877 (list!11965 (c!444475 acc!331)) (list!11965 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun bm!177390 () Bool)

(declare-fun call!177407 () Conc!9858)

(declare-fun call!177406 () Conc!9858)

(assert (=> bm!177390 (= call!177407 call!177406)))

(declare-fun b!2741573 () Bool)

(declare-fun call!177408 () Int)

(assert (=> b!2741573 (= c!444670 (>= call!177408 call!177395))))

(declare-fun e!1726199 () Conc!9858)

(assert (=> b!2741573 (= e!1726196 e!1726199)))

(declare-fun b!2741574 () Bool)

(declare-fun call!177396 () Conc!9858)

(assert (=> b!2741574 (= e!1726199 call!177396)))

(declare-fun b!2741575 () Bool)

(declare-fun res!1151133 () Bool)

(assert (=> b!2741575 (=> (not res!1151133) (not e!1726197))))

(assert (=> b!2741575 (= res!1151133 (<= (height!1480 lt!970876) (+ (max!0 (height!1480 (c!444475 acc!331)) (height!1480 (c!444475 (_1!18232 lt!970574)))) 1)))))

(declare-fun b!2741576 () Bool)

(declare-fun lt!970878 () Int)

(assert (=> b!2741576 (= c!444672 (and (<= (- 1) lt!970878) (<= lt!970878 1)))))

(assert (=> b!2741576 (= lt!970878 (- (height!1480 (c!444475 (_1!18232 lt!970574))) (height!1480 (c!444475 acc!331))))))

(declare-fun e!1726201 () Conc!9858)

(declare-fun e!1726193 () Conc!9858)

(assert (=> b!2741576 (= e!1726201 e!1726193)))

(declare-fun b!2741577 () Bool)

(assert (=> b!2741577 (= e!1726193 call!177404)))

(declare-fun b!2741578 () Bool)

(declare-fun e!1726200 () Conc!9858)

(assert (=> b!2741578 (= e!1726200 call!177407)))

(declare-fun bm!177391 () Bool)

(assert (=> bm!177391 (= call!177393 call!177396)))

(declare-fun b!2741579 () Bool)

(declare-fun res!1151135 () Bool)

(assert (=> b!2741579 (=> (not res!1151135) (not e!1726197))))

(assert (=> b!2741579 (= res!1151135 (>= (height!1480 lt!970876) (max!0 (height!1480 (c!444475 acc!331)) (height!1480 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741580 () Bool)

(assert (=> b!2741580 (= e!1726192 e!1726200)))

(declare-fun call!177401 () Conc!9858)

(assert (=> b!2741580 (= lt!970875 call!177401)))

(declare-fun call!177403 () Int)

(assert (=> b!2741580 (= c!444669 (= call!177403 (- call!177408 3)))))

(declare-fun bm!177392 () Bool)

(assert (=> bm!177392 (= call!177408 (height!1480 (ite c!444675 (c!444475 acc!331) (right!24501 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741581 () Bool)

(declare-fun e!1726194 () Conc!9858)

(declare-fun call!177400 () Conc!9858)

(assert (=> b!2741581 (= e!1726194 call!177400)))

(declare-fun b!2741582 () Bool)

(assert (=> b!2741582 (= e!1726201 (c!444475 acc!331))))

(declare-fun b!2741583 () Bool)

(declare-fun e!1726195 () Conc!9858)

(assert (=> b!2741583 (= e!1726195 e!1726201)))

(declare-fun c!444674 () Bool)

(assert (=> b!2741583 (= c!444674 (= (c!444475 (_1!18232 lt!970574)) Empty!9858))))

(declare-fun bm!177393 () Bool)

(declare-fun call!177399 () Conc!9858)

(assert (=> bm!177393 (= call!177399 call!177404)))

(declare-fun call!177398 () Conc!9858)

(declare-fun bm!177394 () Bool)

(declare-fun call!177402 () Conc!9858)

(declare-fun call!177405 () Conc!9858)

(assert (=> bm!177394 (= call!177398 (<>!269 (ite c!444675 (ite (or c!444668 c!444669) (left!24171 (c!444475 acc!331)) call!177405) (ite c!444670 call!177402 (ite c!444671 lt!970877 (right!24501 (left!24171 (c!444475 (_1!18232 lt!970574))))))) (ite c!444675 (ite c!444668 call!177401 (ite c!444669 call!177405 lt!970875)) (ite c!444670 (right!24501 (c!444475 (_1!18232 lt!970574))) (ite c!444671 (right!24501 (left!24171 (c!444475 (_1!18232 lt!970574)))) (right!24501 (c!444475 (_1!18232 lt!970574))))))))))

(declare-fun bm!177395 () Bool)

(assert (=> bm!177395 (= call!177401 call!177397)))

(declare-fun bm!177396 () Bool)

(assert (=> bm!177396 (= call!177394 (height!1480 (ite c!444675 (left!24171 (c!444475 acc!331)) (c!444475 (_1!18232 lt!970574)))))))

(declare-fun b!2741584 () Bool)

(declare-fun e!1726198 () Bool)

(assert (=> b!2741584 (= e!1726198 (isBalanced!3003 (c!444475 (_1!18232 lt!970574))))))

(declare-fun bm!177397 () Bool)

(assert (=> bm!177397 (= call!177405 call!177399)))

(declare-fun b!2741585 () Bool)

(assert (=> b!2741585 (= e!1726192 call!177406)))

(declare-fun bm!177398 () Bool)

(assert (=> bm!177398 (= call!177400 call!177399)))

(declare-fun b!2741586 () Bool)

(assert (=> b!2741586 (= e!1726194 call!177400)))

(declare-fun bm!177399 () Bool)

(assert (=> bm!177399 (= call!177406 call!177398)))

(declare-fun bm!177400 () Bool)

(assert (=> bm!177400 (= call!177402 call!177397)))

(declare-fun d!795442 () Bool)

(assert (=> d!795442 e!1726197))

(declare-fun res!1151132 () Bool)

(assert (=> d!795442 (=> (not res!1151132) (not e!1726197))))

(assert (=> d!795442 (= res!1151132 (appendAssocInst!709 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))))

(assert (=> d!795442 (= lt!970876 e!1726195)))

(declare-fun c!444673 () Bool)

(assert (=> d!795442 (= c!444673 (= (c!444475 acc!331) Empty!9858))))

(assert (=> d!795442 e!1726198))

(declare-fun res!1151131 () Bool)

(assert (=> d!795442 (=> (not res!1151131) (not e!1726198))))

(assert (=> d!795442 (= res!1151131 (isBalanced!3003 (c!444475 acc!331)))))

(assert (=> d!795442 (= (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))) lt!970876)))

(declare-fun b!2741587 () Bool)

(assert (=> b!2741587 (= e!1726193 e!1726196)))

(assert (=> b!2741587 (= c!444675 (< lt!970878 (- 1)))))

(declare-fun bm!177401 () Bool)

(assert (=> bm!177401 (= call!177396 call!177398)))

(declare-fun bm!177402 () Bool)

(assert (=> bm!177402 (= call!177403 (height!1480 (ite c!444675 lt!970875 lt!970877)))))

(declare-fun b!2741588 () Bool)

(assert (=> b!2741588 (= e!1726200 call!177407)))

(declare-fun b!2741589 () Bool)

(declare-fun res!1151134 () Bool)

(assert (=> b!2741589 (=> (not res!1151134) (not e!1726197))))

(assert (=> b!2741589 (= res!1151134 (isBalanced!3003 lt!970876))))

(declare-fun bm!177403 () Bool)

(assert (=> bm!177403 (= call!177395 (height!1480 (ite c!444675 (right!24501 (c!444475 acc!331)) (left!24171 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741590 () Bool)

(assert (=> b!2741590 (= e!1726195 (c!444475 (_1!18232 lt!970574)))))

(declare-fun b!2741591 () Bool)

(assert (=> b!2741591 (= e!1726199 e!1726194)))

(assert (=> b!2741591 (= lt!970877 call!177402)))

(assert (=> b!2741591 (= c!444671 (= call!177403 (- call!177394 3)))))

(assert (= (and d!795442 res!1151131) b!2741584))

(assert (= (and d!795442 c!444673) b!2741590))

(assert (= (and d!795442 (not c!444673)) b!2741583))

(assert (= (and b!2741583 c!444674) b!2741582))

(assert (= (and b!2741583 (not c!444674)) b!2741576))

(assert (= (and b!2741576 c!444672) b!2741577))

(assert (= (and b!2741576 (not c!444672)) b!2741587))

(assert (= (and b!2741587 c!444675) b!2741571))

(assert (= (and b!2741587 (not c!444675)) b!2741573))

(assert (= (and b!2741571 c!444668) b!2741585))

(assert (= (and b!2741571 (not c!444668)) b!2741580))

(assert (= (and b!2741580 c!444669) b!2741578))

(assert (= (and b!2741580 (not c!444669)) b!2741588))

(assert (= (or b!2741578 b!2741588) bm!177397))

(assert (= (or b!2741578 b!2741588) bm!177390))

(assert (= (or b!2741585 b!2741580) bm!177395))

(assert (= (or b!2741585 bm!177390) bm!177399))

(assert (= (and b!2741573 c!444670) b!2741574))

(assert (= (and b!2741573 (not c!444670)) b!2741591))

(assert (= (and b!2741591 c!444671) b!2741586))

(assert (= (and b!2741591 (not c!444671)) b!2741581))

(assert (= (or b!2741586 b!2741581) bm!177391))

(assert (= (or b!2741586 b!2741581) bm!177398))

(assert (= (or b!2741574 b!2741591) bm!177400))

(assert (= (or b!2741574 bm!177391) bm!177401))

(assert (= (or bm!177397 bm!177398) bm!177393))

(assert (= (or b!2741580 b!2741591) bm!177402))

(assert (= (or b!2741580 b!2741573) bm!177392))

(assert (= (or bm!177395 bm!177400) bm!177389))

(assert (= (or b!2741571 b!2741573) bm!177403))

(assert (= (or bm!177399 bm!177401) bm!177394))

(assert (= (or b!2741571 b!2741591) bm!177396))

(assert (= (or b!2741577 bm!177393) bm!177388))

(assert (= (and d!795442 res!1151132) b!2741589))

(assert (= (and b!2741589 res!1151134) b!2741575))

(assert (= (and b!2741575 res!1151133) b!2741579))

(assert (= (and b!2741579 res!1151135) b!2741572))

(declare-fun m!3159391 () Bool)

(assert (=> b!2741589 m!3159391))

(declare-fun m!3159393 () Bool)

(assert (=> b!2741579 m!3159393))

(assert (=> b!2741579 m!3158677))

(assert (=> b!2741579 m!3158675))

(assert (=> b!2741579 m!3158677))

(assert (=> b!2741579 m!3158675))

(assert (=> b!2741579 m!3158679))

(declare-fun m!3159395 () Bool)

(assert (=> bm!177389 m!3159395))

(declare-fun m!3159397 () Bool)

(assert (=> bm!177403 m!3159397))

(assert (=> d!795442 m!3158669))

(assert (=> d!795442 m!3158725))

(assert (=> b!2741576 m!3158675))

(assert (=> b!2741576 m!3158677))

(assert (=> b!2741575 m!3159393))

(assert (=> b!2741575 m!3158677))

(assert (=> b!2741575 m!3158675))

(assert (=> b!2741575 m!3158677))

(assert (=> b!2741575 m!3158675))

(assert (=> b!2741575 m!3158679))

(declare-fun m!3159399 () Bool)

(assert (=> bm!177402 m!3159399))

(declare-fun m!3159401 () Bool)

(assert (=> bm!177394 m!3159401))

(declare-fun m!3159403 () Bool)

(assert (=> bm!177392 m!3159403))

(declare-fun m!3159405 () Bool)

(assert (=> b!2741572 m!3159405))

(assert (=> b!2741572 m!3158405))

(assert (=> b!2741572 m!3159291))

(assert (=> b!2741572 m!3158405))

(assert (=> b!2741572 m!3159291))

(declare-fun m!3159407 () Bool)

(assert (=> b!2741572 m!3159407))

(declare-fun m!3159409 () Bool)

(assert (=> b!2741584 m!3159409))

(declare-fun m!3159411 () Bool)

(assert (=> bm!177396 m!3159411))

(declare-fun m!3159413 () Bool)

(assert (=> bm!177388 m!3159413))

(assert (=> b!2740891 d!795442))

(declare-fun d!795480 () Bool)

(assert (=> d!795480 (= (height!1480 (c!444475 (_1!18232 lt!970574))) (ite ((_ is Empty!9858) (c!444475 (_1!18232 lt!970574))) 0 (ite ((_ is Leaf!15010) (c!444475 (_1!18232 lt!970574))) 1 (cheight!10069 (c!444475 (_1!18232 lt!970574))))))))

(assert (=> b!2740891 d!795480))

(declare-fun d!795482 () Bool)

(assert (=> d!795482 (= (height!1480 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))) (ite ((_ is Empty!9858) (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))) 0 (ite ((_ is Leaf!15010) (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))) 1 (cheight!10069 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))))))))

(assert (=> b!2740891 d!795482))

(declare-fun b!2741600 () Bool)

(declare-fun e!1726205 () List!31541)

(assert (=> b!2741600 (= e!1726205 (list!11969 (xs!12961 (c!444475 (_1!18232 lt!970578)))))))

(declare-fun d!795484 () Bool)

(declare-fun c!444676 () Bool)

(assert (=> d!795484 (= c!444676 ((_ is Empty!9858) (c!444475 (_1!18232 lt!970578))))))

(declare-fun e!1726204 () List!31541)

(assert (=> d!795484 (= (list!11965 (c!444475 (_1!18232 lt!970578))) e!1726204)))

(declare-fun b!2741598 () Bool)

(assert (=> b!2741598 (= e!1726204 Nil!31441)))

(declare-fun b!2741601 () Bool)

(assert (=> b!2741601 (= e!1726205 (++!7877 (list!11965 (left!24171 (c!444475 (_1!18232 lt!970578)))) (list!11965 (right!24501 (c!444475 (_1!18232 lt!970578))))))))

(declare-fun b!2741599 () Bool)

(assert (=> b!2741599 (= e!1726204 e!1726205)))

(declare-fun c!444677 () Bool)

(assert (=> b!2741599 (= c!444677 ((_ is Leaf!15010) (c!444475 (_1!18232 lt!970578))))))

(assert (= (and d!795484 c!444676) b!2741598))

(assert (= (and d!795484 (not c!444676)) b!2741599))

(assert (= (and b!2741599 c!444677) b!2741600))

(assert (= (and b!2741599 (not c!444677)) b!2741601))

(declare-fun m!3159415 () Bool)

(assert (=> b!2741600 m!3159415))

(declare-fun m!3159417 () Bool)

(assert (=> b!2741601 m!3159417))

(declare-fun m!3159419 () Bool)

(assert (=> b!2741601 m!3159419))

(assert (=> b!2741601 m!3159417))

(assert (=> b!2741601 m!3159419))

(declare-fun m!3159421 () Bool)

(assert (=> b!2741601 m!3159421))

(assert (=> d!795248 d!795484))

(declare-fun b!2741643 () Bool)

(declare-fun e!1726233 () Bool)

(declare-fun e!1726237 () Bool)

(assert (=> b!2741643 (= e!1726233 e!1726237)))

(declare-fun res!1151188 () Bool)

(assert (=> b!2741643 (=> res!1151188 e!1726237)))

(assert (=> b!2741643 (= res!1151188 (not ((_ is Node!9858) (left!24171 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741644 () Bool)

(declare-fun e!1726240 () Bool)

(declare-fun e!1726238 () Bool)

(assert (=> b!2741644 (= e!1726240 e!1726238)))

(declare-fun res!1151186 () Bool)

(assert (=> b!2741644 (=> (not res!1151186) (not e!1726238))))

(declare-fun appendAssoc!211 (List!31541 List!31541 List!31541) Bool)

(assert (=> b!2741644 (= res!1151186 (appendAssoc!211 (list!11965 (left!24171 (c!444475 acc!331))) (list!11965 (right!24501 (c!444475 acc!331))) (list!11965 (c!444475 (_1!18232 lt!970574)))))))

(declare-fun b!2741645 () Bool)

(declare-fun e!1726234 () Bool)

(assert (=> b!2741645 (= e!1726234 (appendAssoc!211 (++!7877 (list!11965 (c!444475 acc!331)) (list!11965 (left!24171 (left!24171 (c!444475 (_1!18232 lt!970574)))))) (list!11965 (right!24501 (left!24171 (c!444475 (_1!18232 lt!970574))))) (list!11965 (right!24501 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741646 () Bool)

(declare-fun e!1726235 () Bool)

(assert (=> b!2741646 (= e!1726235 e!1726233)))

(declare-fun res!1151191 () Bool)

(assert (=> b!2741646 (=> (not res!1151191) (not e!1726233))))

(assert (=> b!2741646 (= res!1151191 (appendAssoc!211 (list!11965 (c!444475 acc!331)) (list!11965 (left!24171 (c!444475 (_1!18232 lt!970574)))) (list!11965 (right!24501 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741647 () Bool)

(declare-fun e!1726239 () Bool)

(declare-fun e!1726241 () Bool)

(assert (=> b!2741647 (= e!1726239 e!1726241)))

(declare-fun res!1151185 () Bool)

(assert (=> b!2741647 (=> (not res!1151185) (not e!1726241))))

(assert (=> b!2741647 (= res!1151185 (appendAssoc!211 (list!11965 (left!24171 (right!24501 (c!444475 acc!331)))) (list!11965 (right!24501 (right!24501 (c!444475 acc!331)))) (list!11965 (c!444475 (_1!18232 lt!970574)))))))

(declare-fun b!2741649 () Bool)

(assert (=> b!2741649 (= e!1726241 (appendAssoc!211 (list!11965 (left!24171 (c!444475 acc!331))) (list!11965 (left!24171 (right!24501 (c!444475 acc!331)))) (++!7877 (list!11965 (right!24501 (right!24501 (c!444475 acc!331)))) (list!11965 (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741650 () Bool)

(assert (=> b!2741650 (= e!1726237 e!1726234)))

(declare-fun res!1151187 () Bool)

(assert (=> b!2741650 (=> (not res!1151187) (not e!1726234))))

(assert (=> b!2741650 (= res!1151187 (appendAssoc!211 (list!11965 (c!444475 acc!331)) (list!11965 (left!24171 (left!24171 (c!444475 (_1!18232 lt!970574))))) (list!11965 (right!24501 (left!24171 (c!444475 (_1!18232 lt!970574)))))))))

(declare-fun b!2741651 () Bool)

(declare-fun e!1726236 () Bool)

(assert (=> b!2741651 (= e!1726236 e!1726235)))

(declare-fun res!1151190 () Bool)

(assert (=> b!2741651 (=> res!1151190 e!1726235)))

(assert (=> b!2741651 (= res!1151190 (not ((_ is Node!9858) (c!444475 (_1!18232 lt!970574)))))))

(declare-fun d!795486 () Bool)

(assert (=> d!795486 e!1726236))

(declare-fun res!1151189 () Bool)

(assert (=> d!795486 (=> (not res!1151189) (not e!1726236))))

(assert (=> d!795486 (= res!1151189 e!1726240)))

(declare-fun res!1151184 () Bool)

(assert (=> d!795486 (=> res!1151184 e!1726240)))

(assert (=> d!795486 (= res!1151184 (not ((_ is Node!9858) (c!444475 acc!331))))))

(assert (=> d!795486 (= (appendAssocInst!709 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))) true)))

(declare-fun b!2741648 () Bool)

(assert (=> b!2741648 (= e!1726238 e!1726239)))

(declare-fun res!1151183 () Bool)

(assert (=> b!2741648 (=> res!1151183 e!1726239)))

(assert (=> b!2741648 (= res!1151183 (not ((_ is Node!9858) (right!24501 (c!444475 acc!331)))))))

(assert (= (and d!795486 (not res!1151184)) b!2741644))

(assert (= (and b!2741644 res!1151186) b!2741648))

(assert (= (and b!2741648 (not res!1151183)) b!2741647))

(assert (= (and b!2741647 res!1151185) b!2741649))

(assert (= (and d!795486 res!1151189) b!2741651))

(assert (= (and b!2741651 (not res!1151190)) b!2741646))

(assert (= (and b!2741646 res!1151191) b!2741643))

(assert (= (and b!2741643 (not res!1151188)) b!2741650))

(assert (= (and b!2741650 res!1151187) b!2741645))

(assert (=> b!2741644 m!3159239))

(assert (=> b!2741644 m!3159241))

(assert (=> b!2741644 m!3159291))

(assert (=> b!2741644 m!3159239))

(assert (=> b!2741644 m!3159241))

(assert (=> b!2741644 m!3159291))

(declare-fun m!3159451 () Bool)

(assert (=> b!2741644 m!3159451))

(assert (=> b!2741650 m!3158405))

(declare-fun m!3159453 () Bool)

(assert (=> b!2741650 m!3159453))

(declare-fun m!3159455 () Bool)

(assert (=> b!2741650 m!3159455))

(assert (=> b!2741650 m!3158405))

(assert (=> b!2741650 m!3159453))

(assert (=> b!2741650 m!3159455))

(declare-fun m!3159457 () Bool)

(assert (=> b!2741650 m!3159457))

(declare-fun m!3159461 () Bool)

(assert (=> b!2741649 m!3159461))

(assert (=> b!2741649 m!3159461))

(assert (=> b!2741649 m!3159291))

(declare-fun m!3159469 () Bool)

(assert (=> b!2741649 m!3159469))

(assert (=> b!2741649 m!3159239))

(declare-fun m!3159475 () Bool)

(assert (=> b!2741649 m!3159475))

(assert (=> b!2741649 m!3159469))

(declare-fun m!3159477 () Bool)

(assert (=> b!2741649 m!3159477))

(assert (=> b!2741649 m!3159239))

(assert (=> b!2741649 m!3159291))

(assert (=> b!2741649 m!3159475))

(assert (=> b!2741647 m!3159475))

(assert (=> b!2741647 m!3159461))

(assert (=> b!2741647 m!3159291))

(assert (=> b!2741647 m!3159475))

(assert (=> b!2741647 m!3159461))

(assert (=> b!2741647 m!3159291))

(declare-fun m!3159481 () Bool)

(assert (=> b!2741647 m!3159481))

(assert (=> b!2741646 m!3158405))

(declare-fun m!3159485 () Bool)

(assert (=> b!2741646 m!3159485))

(declare-fun m!3159487 () Bool)

(assert (=> b!2741646 m!3159487))

(assert (=> b!2741646 m!3158405))

(assert (=> b!2741646 m!3159485))

(assert (=> b!2741646 m!3159487))

(declare-fun m!3159489 () Bool)

(assert (=> b!2741646 m!3159489))

(assert (=> b!2741645 m!3158405))

(assert (=> b!2741645 m!3159453))

(declare-fun m!3159493 () Bool)

(assert (=> b!2741645 m!3159493))

(assert (=> b!2741645 m!3159487))

(assert (=> b!2741645 m!3159493))

(assert (=> b!2741645 m!3159455))

(assert (=> b!2741645 m!3159487))

(declare-fun m!3159495 () Bool)

(assert (=> b!2741645 m!3159495))

(assert (=> b!2741645 m!3159453))

(assert (=> b!2741645 m!3159455))

(assert (=> b!2741645 m!3158405))

(assert (=> d!795254 d!795486))

(assert (=> d!795254 d!795442))

(assert (=> b!2740868 d!795354))

(assert (=> b!2740868 d!795424))

(assert (=> b!2740868 d!795176))

(assert (=> b!2740646 d!795162))

(declare-fun d!795512 () Bool)

(declare-fun lt!970886 () Int)

(assert (=> d!795512 (= lt!970886 (size!24288 (list!11960 (_2!18232 lt!970642))))))

(assert (=> d!795512 (= lt!970886 (size!24296 (c!444474 (_2!18232 lt!970642))))))

(assert (=> d!795512 (= (size!24289 (_2!18232 lt!970642)) lt!970886)))

(declare-fun bs!490170 () Bool)

(assert (= bs!490170 d!795512))

(assert (=> bs!490170 m!3158653))

(assert (=> bs!490170 m!3158653))

(declare-fun m!3159529 () Bool)

(assert (=> bs!490170 m!3159529))

(declare-fun m!3159531 () Bool)

(assert (=> bs!490170 m!3159531))

(assert (=> b!2740879 d!795512))

(declare-fun d!795524 () Bool)

(declare-fun lt!970887 () Int)

(assert (=> d!795524 (= lt!970887 (size!24288 (list!11960 totalInput!328)))))

(assert (=> d!795524 (= lt!970887 (size!24296 (c!444474 totalInput!328)))))

(assert (=> d!795524 (= (size!24289 totalInput!328) lt!970887)))

(declare-fun bs!490171 () Bool)

(assert (= bs!490171 d!795524))

(assert (=> bs!490171 m!3158301))

(assert (=> bs!490171 m!3158301))

(assert (=> bs!490171 m!3159307))

(declare-fun m!3159533 () Bool)

(assert (=> bs!490171 m!3159533))

(assert (=> b!2740879 d!795524))

(declare-fun d!795526 () Bool)

(declare-fun c!444689 () Bool)

(assert (=> d!795526 (= c!444689 ((_ is Nil!31439) lt!970585))))

(declare-fun e!1726263 () (InoxSet C!16092))

(assert (=> d!795526 (= (content!4481 lt!970585) e!1726263)))

(declare-fun b!2741697 () Bool)

(assert (=> b!2741697 (= e!1726263 ((as const (Array C!16092 Bool)) false))))

(declare-fun b!2741698 () Bool)

(assert (=> b!2741698 (= e!1726263 ((_ map or) (store ((as const (Array C!16092 Bool)) false) (h!36859 lt!970585) true) (content!4481 (t!227617 lt!970585))))))

(assert (= (and d!795526 c!444689) b!2741697))

(assert (= (and d!795526 (not c!444689)) b!2741698))

(declare-fun m!3159567 () Bool)

(assert (=> b!2741698 m!3159567))

(declare-fun m!3159569 () Bool)

(assert (=> b!2741698 m!3159569))

(assert (=> d!795174 d!795526))

(declare-fun d!795540 () Bool)

(declare-fun c!444690 () Bool)

(assert (=> d!795540 (= c!444690 ((_ is Nil!31439) lt!970575))))

(declare-fun e!1726265 () (InoxSet C!16092))

(assert (=> d!795540 (= (content!4481 lt!970575) e!1726265)))

(declare-fun b!2741700 () Bool)

(assert (=> b!2741700 (= e!1726265 ((as const (Array C!16092 Bool)) false))))

(declare-fun b!2741701 () Bool)

(assert (=> b!2741701 (= e!1726265 ((_ map or) (store ((as const (Array C!16092 Bool)) false) (h!36859 lt!970575) true) (content!4481 (t!227617 lt!970575))))))

(assert (= (and d!795540 c!444690) b!2741700))

(assert (= (and d!795540 (not c!444690)) b!2741701))

(declare-fun m!3159571 () Bool)

(assert (=> b!2741701 m!3159571))

(assert (=> b!2741701 m!3159185))

(assert (=> d!795174 d!795540))

(declare-fun d!795542 () Bool)

(declare-fun c!444691 () Bool)

(assert (=> d!795542 (= c!444691 ((_ is Nil!31439) lt!970573))))

(declare-fun e!1726266 () (InoxSet C!16092))

(assert (=> d!795542 (= (content!4481 lt!970573) e!1726266)))

(declare-fun b!2741702 () Bool)

(assert (=> b!2741702 (= e!1726266 ((as const (Array C!16092 Bool)) false))))

(declare-fun b!2741703 () Bool)

(assert (=> b!2741703 (= e!1726266 ((_ map or) (store ((as const (Array C!16092 Bool)) false) (h!36859 lt!970573) true) (content!4481 (t!227617 lt!970573))))))

(assert (= (and d!795542 c!444691) b!2741702))

(assert (= (and d!795542 (not c!444691)) b!2741703))

(declare-fun m!3159581 () Bool)

(assert (=> b!2741703 m!3159581))

(declare-fun m!3159583 () Bool)

(assert (=> b!2741703 m!3159583))

(assert (=> d!795174 d!795542))

(declare-fun d!795546 () Bool)

(declare-fun e!1726285 () Bool)

(assert (=> d!795546 e!1726285))

(declare-fun res!1151237 () Bool)

(assert (=> d!795546 (=> (not res!1151237) (not e!1726285))))

(declare-fun prepend!1159 (Conc!9858 Token!9092) Conc!9858)

(assert (=> d!795546 (= res!1151237 (isBalanced!3003 (prepend!1159 (c!444475 (_1!18232 lt!970637)) (_1!18233 (v!33116 lt!970638)))))))

(declare-fun lt!970902 () BalanceConc!19330)

(assert (=> d!795546 (= lt!970902 (BalanceConc!19331 (prepend!1159 (c!444475 (_1!18232 lt!970637)) (_1!18233 (v!33116 lt!970638)))))))

(assert (=> d!795546 (= (prepend!1157 (_1!18232 lt!970637) (_1!18233 (v!33116 lt!970638))) lt!970902)))

(declare-fun b!2741737 () Bool)

(assert (=> b!2741737 (= e!1726285 (= (list!11961 lt!970902) (Cons!31441 (_1!18233 (v!33116 lt!970638)) (list!11961 (_1!18232 lt!970637)))))))

(assert (= (and d!795546 res!1151237) b!2741737))

(declare-fun m!3159651 () Bool)

(assert (=> d!795546 m!3159651))

(assert (=> d!795546 m!3159651))

(declare-fun m!3159655 () Bool)

(assert (=> d!795546 m!3159655))

(declare-fun m!3159659 () Bool)

(assert (=> b!2741737 m!3159659))

(declare-fun m!3159661 () Bool)

(assert (=> b!2741737 m!3159661))

(assert (=> b!2740870 d!795546))

(declare-fun lt!970905 () tuple2!31200)

(declare-fun b!2741738 () Bool)

(declare-fun e!1726288 () Bool)

(assert (=> b!2741738 (= e!1726288 (= (list!11960 (_2!18232 lt!970905)) (_2!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 (_2!18233 (v!33116 lt!970638)))))))))

(declare-fun b!2741739 () Bool)

(declare-fun e!1726287 () Bool)

(assert (=> b!2741739 (= e!1726287 (= (list!11960 (_2!18232 lt!970905)) (list!11960 (_2!18233 (v!33116 lt!970638)))))))

(declare-fun b!2741740 () Bool)

(declare-fun e!1726286 () tuple2!31200)

(declare-fun lt!970903 () tuple2!31200)

(declare-fun lt!970904 () Option!6223)

(assert (=> b!2741740 (= e!1726286 (tuple2!31201 (prepend!1157 (_1!18232 lt!970903) (_1!18233 (v!33116 lt!970904))) (_2!18232 lt!970903)))))

(assert (=> b!2741740 (= lt!970903 (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970904))))))

(declare-fun b!2741741 () Bool)

(assert (=> b!2741741 (= e!1726286 (tuple2!31201 (BalanceConc!19331 Empty!9858) (_2!18233 (v!33116 lt!970638))))))

(declare-fun b!2741742 () Bool)

(declare-fun e!1726289 () Bool)

(assert (=> b!2741742 (= e!1726287 e!1726289)))

(declare-fun res!1151239 () Bool)

(assert (=> b!2741742 (= res!1151239 (< (size!24289 (_2!18232 lt!970905)) (size!24289 (_2!18233 (v!33116 lt!970638)))))))

(assert (=> b!2741742 (=> (not res!1151239) (not e!1726289))))

(declare-fun d!795560 () Bool)

(assert (=> d!795560 e!1726288))

(declare-fun res!1151240 () Bool)

(assert (=> d!795560 (=> (not res!1151240) (not e!1726288))))

(assert (=> d!795560 (= res!1151240 e!1726287)))

(declare-fun c!444698 () Bool)

(assert (=> d!795560 (= c!444698 (> (size!24290 (_1!18232 lt!970905)) 0))))

(assert (=> d!795560 (= lt!970905 e!1726286)))

(declare-fun c!444699 () Bool)

(assert (=> d!795560 (= c!444699 ((_ is Some!6222) lt!970904))))

(assert (=> d!795560 (= lt!970904 (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970638))))))

(assert (=> d!795560 (= (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970638))) lt!970905)))

(declare-fun b!2741743 () Bool)

(declare-fun res!1151238 () Bool)

(assert (=> b!2741743 (=> (not res!1151238) (not e!1726288))))

(assert (=> b!2741743 (= res!1151238 (= (list!11961 (_1!18232 lt!970905)) (_1!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 (_2!18233 (v!33116 lt!970638)))))))))

(declare-fun b!2741744 () Bool)

(assert (=> b!2741744 (= e!1726289 (not (isEmpty!17994 (_1!18232 lt!970905))))))

(assert (= (and d!795560 c!444699) b!2741740))

(assert (= (and d!795560 (not c!444699)) b!2741741))

(assert (= (and d!795560 c!444698) b!2741742))

(assert (= (and d!795560 (not c!444698)) b!2741739))

(assert (= (and b!2741742 res!1151239) b!2741744))

(assert (= (and d!795560 res!1151240) b!2741743))

(assert (= (and b!2741743 res!1151238) b!2741738))

(declare-fun m!3159681 () Bool)

(assert (=> b!2741742 m!3159681))

(declare-fun m!3159683 () Bool)

(assert (=> b!2741742 m!3159683))

(declare-fun m!3159685 () Bool)

(assert (=> b!2741738 m!3159685))

(declare-fun m!3159687 () Bool)

(assert (=> b!2741738 m!3159687))

(assert (=> b!2741738 m!3159687))

(declare-fun m!3159693 () Bool)

(assert (=> b!2741738 m!3159693))

(declare-fun m!3159695 () Bool)

(assert (=> b!2741740 m!3159695))

(declare-fun m!3159697 () Bool)

(assert (=> b!2741740 m!3159697))

(declare-fun m!3159699 () Bool)

(assert (=> d!795560 m!3159699))

(declare-fun m!3159701 () Bool)

(assert (=> d!795560 m!3159701))

(declare-fun m!3159703 () Bool)

(assert (=> b!2741744 m!3159703))

(declare-fun m!3159705 () Bool)

(assert (=> b!2741743 m!3159705))

(assert (=> b!2741743 m!3159687))

(assert (=> b!2741743 m!3159687))

(assert (=> b!2741743 m!3159693))

(assert (=> b!2741739 m!3159685))

(assert (=> b!2741739 m!3159687))

(assert (=> b!2740870 d!795560))

(assert (=> b!2740642 d!795170))

(declare-fun d!795572 () Bool)

(assert (=> d!795572 true))

(declare-fun lambda!100822 () Int)

(declare-fun order!17219 () Int)

(declare-fun dynLambda!13580 (Int Int) Int)

(assert (=> d!795572 (< (dynLambda!13578 order!17215 (toValue!6809 (transformation!4815 (h!36862 rules!1182)))) (dynLambda!13580 order!17219 lambda!100822))))

(declare-fun Forall2!819 (Int) Bool)

(assert (=> d!795572 (= (equivClasses!1892 (toChars!6668 (transformation!4815 (h!36862 rules!1182))) (toValue!6809 (transformation!4815 (h!36862 rules!1182)))) (Forall2!819 lambda!100822))))

(declare-fun bs!490179 () Bool)

(assert (= bs!490179 d!795572))

(declare-fun m!3159737 () Bool)

(assert (=> bs!490179 m!3159737))

(assert (=> b!2740659 d!795572))

(assert (=> b!2740875 d!795372))

(assert (=> b!2740875 d!795436))

(assert (=> b!2740875 d!795172))

(assert (=> b!2740924 d!795336))

(declare-fun b!2741774 () Bool)

(declare-fun e!1726307 () List!31541)

(assert (=> b!2741774 (= e!1726307 (list!11969 (xs!12961 (c!444475 lt!970581))))))

(declare-fun d!795580 () Bool)

(declare-fun c!444708 () Bool)

(assert (=> d!795580 (= c!444708 ((_ is Empty!9858) (c!444475 lt!970581)))))

(declare-fun e!1726306 () List!31541)

(assert (=> d!795580 (= (list!11965 (c!444475 lt!970581)) e!1726306)))

(declare-fun b!2741772 () Bool)

(assert (=> b!2741772 (= e!1726306 Nil!31441)))

(declare-fun b!2741775 () Bool)

(assert (=> b!2741775 (= e!1726307 (++!7877 (list!11965 (left!24171 (c!444475 lt!970581))) (list!11965 (right!24501 (c!444475 lt!970581)))))))

(declare-fun b!2741773 () Bool)

(assert (=> b!2741773 (= e!1726306 e!1726307)))

(declare-fun c!444709 () Bool)

(assert (=> b!2741773 (= c!444709 ((_ is Leaf!15010) (c!444475 lt!970581)))))

(assert (= (and d!795580 c!444708) b!2741772))

(assert (= (and d!795580 (not c!444708)) b!2741773))

(assert (= (and b!2741773 c!444709) b!2741774))

(assert (= (and b!2741773 (not c!444709)) b!2741775))

(declare-fun m!3159745 () Bool)

(assert (=> b!2741774 m!3159745))

(declare-fun m!3159747 () Bool)

(assert (=> b!2741775 m!3159747))

(declare-fun m!3159749 () Bool)

(assert (=> b!2741775 m!3159749))

(assert (=> b!2741775 m!3159747))

(assert (=> b!2741775 m!3159749))

(declare-fun m!3159751 () Bool)

(assert (=> b!2741775 m!3159751))

(assert (=> d!795246 d!795580))

(declare-fun d!795586 () Bool)

(assert (=> d!795586 (= (inv!42793 (xs!12960 (c!444474 treated!9))) (<= (size!24288 (innerList!9917 (xs!12960 (c!444474 treated!9)))) 2147483647))))

(declare-fun bs!490180 () Bool)

(assert (= bs!490180 d!795586))

(declare-fun m!3159757 () Bool)

(assert (=> bs!490180 m!3159757))

(assert (=> b!2740936 d!795586))

(declare-fun d!795590 () Bool)

(declare-fun c!444712 () Bool)

(assert (=> d!795590 (= c!444712 ((_ is Node!9857) (left!24170 (c!444474 totalInput!328))))))

(declare-fun e!1726310 () Bool)

(assert (=> d!795590 (= (inv!42782 (left!24170 (c!444474 totalInput!328))) e!1726310)))

(declare-fun b!2741780 () Bool)

(assert (=> b!2741780 (= e!1726310 (inv!42787 (left!24170 (c!444474 totalInput!328))))))

(declare-fun b!2741781 () Bool)

(declare-fun e!1726311 () Bool)

(assert (=> b!2741781 (= e!1726310 e!1726311)))

(declare-fun res!1151250 () Bool)

(assert (=> b!2741781 (= res!1151250 (not ((_ is Leaf!15009) (left!24170 (c!444474 totalInput!328)))))))

(assert (=> b!2741781 (=> res!1151250 e!1726311)))

(declare-fun b!2741782 () Bool)

(assert (=> b!2741782 (= e!1726311 (inv!42788 (left!24170 (c!444474 totalInput!328))))))

(assert (= (and d!795590 c!444712) b!2741780))

(assert (= (and d!795590 (not c!444712)) b!2741781))

(assert (= (and b!2741781 (not res!1151250)) b!2741782))

(declare-fun m!3159761 () Bool)

(assert (=> b!2741780 m!3159761))

(declare-fun m!3159763 () Bool)

(assert (=> b!2741782 m!3159763))

(assert (=> b!2740974 d!795590))

(declare-fun d!795594 () Bool)

(declare-fun c!444713 () Bool)

(assert (=> d!795594 (= c!444713 ((_ is Node!9857) (right!24500 (c!444474 totalInput!328))))))

(declare-fun e!1726312 () Bool)

(assert (=> d!795594 (= (inv!42782 (right!24500 (c!444474 totalInput!328))) e!1726312)))

(declare-fun b!2741783 () Bool)

(assert (=> b!2741783 (= e!1726312 (inv!42787 (right!24500 (c!444474 totalInput!328))))))

(declare-fun b!2741784 () Bool)

(declare-fun e!1726313 () Bool)

(assert (=> b!2741784 (= e!1726312 e!1726313)))

(declare-fun res!1151251 () Bool)

(assert (=> b!2741784 (= res!1151251 (not ((_ is Leaf!15009) (right!24500 (c!444474 totalInput!328)))))))

(assert (=> b!2741784 (=> res!1151251 e!1726313)))

(declare-fun b!2741785 () Bool)

(assert (=> b!2741785 (= e!1726313 (inv!42788 (right!24500 (c!444474 totalInput!328))))))

(assert (= (and d!795594 c!444713) b!2741783))

(assert (= (and d!795594 (not c!444713)) b!2741784))

(assert (= (and b!2741784 (not res!1151251)) b!2741785))

(declare-fun m!3159765 () Bool)

(assert (=> b!2741783 m!3159765))

(declare-fun m!3159767 () Bool)

(assert (=> b!2741785 m!3159767))

(assert (=> b!2740974 d!795594))

(declare-fun d!795596 () Bool)

(declare-fun e!1726314 () Bool)

(assert (=> d!795596 e!1726314))

(declare-fun res!1151252 () Bool)

(assert (=> d!795596 (=> (not res!1151252) (not e!1726314))))

(assert (=> d!795596 (= res!1151252 (isBalanced!3003 (prepend!1159 (c!444475 (_1!18232 lt!970640)) (_1!18233 (v!33116 lt!970641)))))))

(declare-fun lt!970919 () BalanceConc!19330)

(assert (=> d!795596 (= lt!970919 (BalanceConc!19331 (prepend!1159 (c!444475 (_1!18232 lt!970640)) (_1!18233 (v!33116 lt!970641)))))))

(assert (=> d!795596 (= (prepend!1157 (_1!18232 lt!970640) (_1!18233 (v!33116 lt!970641))) lt!970919)))

(declare-fun b!2741786 () Bool)

(assert (=> b!2741786 (= e!1726314 (= (list!11961 lt!970919) (Cons!31441 (_1!18233 (v!33116 lt!970641)) (list!11961 (_1!18232 lt!970640)))))))

(assert (= (and d!795596 res!1151252) b!2741786))

(declare-fun m!3159769 () Bool)

(assert (=> d!795596 m!3159769))

(assert (=> d!795596 m!3159769))

(declare-fun m!3159771 () Bool)

(assert (=> d!795596 m!3159771))

(declare-fun m!3159773 () Bool)

(assert (=> b!2741786 m!3159773))

(declare-fun m!3159775 () Bool)

(assert (=> b!2741786 m!3159775))

(assert (=> b!2740877 d!795596))

(declare-fun lt!970922 () tuple2!31200)

(declare-fun b!2741787 () Bool)

(declare-fun e!1726317 () Bool)

(assert (=> b!2741787 (= e!1726317 (= (list!11960 (_2!18232 lt!970922)) (_2!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 (_2!18233 (v!33116 lt!970641)))))))))

(declare-fun b!2741788 () Bool)

(declare-fun e!1726316 () Bool)

(assert (=> b!2741788 (= e!1726316 (= (list!11960 (_2!18232 lt!970922)) (list!11960 (_2!18233 (v!33116 lt!970641)))))))

(declare-fun b!2741789 () Bool)

(declare-fun e!1726315 () tuple2!31200)

(declare-fun lt!970920 () tuple2!31200)

(declare-fun lt!970921 () Option!6223)

(assert (=> b!2741789 (= e!1726315 (tuple2!31201 (prepend!1157 (_1!18232 lt!970920) (_1!18233 (v!33116 lt!970921))) (_2!18232 lt!970920)))))

(assert (=> b!2741789 (= lt!970920 (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970921))))))

(declare-fun b!2741790 () Bool)

(assert (=> b!2741790 (= e!1726315 (tuple2!31201 (BalanceConc!19331 Empty!9858) (_2!18233 (v!33116 lt!970641))))))

(declare-fun b!2741791 () Bool)

(declare-fun e!1726318 () Bool)

(assert (=> b!2741791 (= e!1726316 e!1726318)))

(declare-fun res!1151254 () Bool)

(assert (=> b!2741791 (= res!1151254 (< (size!24289 (_2!18232 lt!970922)) (size!24289 (_2!18233 (v!33116 lt!970641)))))))

(assert (=> b!2741791 (=> (not res!1151254) (not e!1726318))))

(declare-fun d!795598 () Bool)

(assert (=> d!795598 e!1726317))

(declare-fun res!1151255 () Bool)

(assert (=> d!795598 (=> (not res!1151255) (not e!1726317))))

(assert (=> d!795598 (= res!1151255 e!1726316)))

(declare-fun c!444714 () Bool)

(assert (=> d!795598 (= c!444714 (> (size!24290 (_1!18232 lt!970922)) 0))))

(assert (=> d!795598 (= lt!970922 e!1726315)))

(declare-fun c!444715 () Bool)

(assert (=> d!795598 (= c!444715 ((_ is Some!6222) lt!970921))))

(assert (=> d!795598 (= lt!970921 (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970641))))))

(assert (=> d!795598 (= (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970641))) lt!970922)))

(declare-fun b!2741792 () Bool)

(declare-fun res!1151253 () Bool)

(assert (=> b!2741792 (=> (not res!1151253) (not e!1726317))))

(assert (=> b!2741792 (= res!1151253 (= (list!11961 (_1!18232 lt!970922)) (_1!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 (_2!18233 (v!33116 lt!970641)))))))))

(declare-fun b!2741793 () Bool)

(assert (=> b!2741793 (= e!1726318 (not (isEmpty!17994 (_1!18232 lt!970922))))))

(assert (= (and d!795598 c!444715) b!2741789))

(assert (= (and d!795598 (not c!444715)) b!2741790))

(assert (= (and d!795598 c!444714) b!2741791))

(assert (= (and d!795598 (not c!444714)) b!2741788))

(assert (= (and b!2741791 res!1151254) b!2741793))

(assert (= (and d!795598 res!1151255) b!2741792))

(assert (= (and b!2741792 res!1151253) b!2741787))

(declare-fun m!3159777 () Bool)

(assert (=> b!2741791 m!3159777))

(declare-fun m!3159779 () Bool)

(assert (=> b!2741791 m!3159779))

(declare-fun m!3159781 () Bool)

(assert (=> b!2741787 m!3159781))

(declare-fun m!3159783 () Bool)

(assert (=> b!2741787 m!3159783))

(assert (=> b!2741787 m!3159783))

(declare-fun m!3159785 () Bool)

(assert (=> b!2741787 m!3159785))

(declare-fun m!3159787 () Bool)

(assert (=> b!2741789 m!3159787))

(declare-fun m!3159789 () Bool)

(assert (=> b!2741789 m!3159789))

(declare-fun m!3159791 () Bool)

(assert (=> d!795598 m!3159791))

(declare-fun m!3159793 () Bool)

(assert (=> d!795598 m!3159793))

(declare-fun m!3159795 () Bool)

(assert (=> b!2741793 m!3159795))

(declare-fun m!3159797 () Bool)

(assert (=> b!2741792 m!3159797))

(assert (=> b!2741792 m!3159783))

(assert (=> b!2741792 m!3159783))

(assert (=> b!2741792 m!3159785))

(assert (=> b!2741788 m!3159781))

(assert (=> b!2741788 m!3159783))

(assert (=> b!2740877 d!795598))

(declare-fun b!2741794 () Bool)

(declare-fun e!1726320 () Bool)

(declare-fun lt!970924 () Option!6223)

(assert (=> b!2741794 (= e!1726320 (= (list!11960 (_2!18233 (get!9820 lt!970924))) (_2!18237 (get!9821 (maxPrefix!2382 thiss!11556 (t!227620 rules!1182) (list!11960 input!603))))))))

(declare-fun b!2741795 () Bool)

(declare-fun e!1726322 () Option!6223)

(declare-fun call!177411 () Option!6223)

(assert (=> b!2741795 (= e!1726322 call!177411)))

(declare-fun d!795600 () Bool)

(declare-fun e!1726321 () Bool)

(assert (=> d!795600 e!1726321))

(declare-fun res!1151261 () Bool)

(assert (=> d!795600 (=> (not res!1151261) (not e!1726321))))

(assert (=> d!795600 (= res!1151261 (= (isDefined!4925 lt!970924) (isDefined!4926 (maxPrefixZipper!486 thiss!11556 (t!227620 rules!1182) (list!11960 input!603)))))))

(assert (=> d!795600 (= lt!970924 e!1726322)))

(declare-fun c!444716 () Bool)

(assert (=> d!795600 (= c!444716 (and ((_ is Cons!31442) (t!227620 rules!1182)) ((_ is Nil!31442) (t!227620 (t!227620 rules!1182)))))))

(declare-fun lt!970929 () Unit!45462)

(declare-fun lt!970927 () Unit!45462)

(assert (=> d!795600 (= lt!970929 lt!970927)))

(declare-fun lt!970925 () List!31539)

(declare-fun lt!970923 () List!31539)

(assert (=> d!795600 (isPrefix!2499 lt!970925 lt!970923)))

(assert (=> d!795600 (= lt!970927 (lemmaIsPrefixRefl!1625 lt!970925 lt!970923))))

(assert (=> d!795600 (= lt!970923 (list!11960 input!603))))

(assert (=> d!795600 (= lt!970925 (list!11960 input!603))))

(assert (=> d!795600 (rulesValidInductive!1683 thiss!11556 (t!227620 rules!1182))))

(assert (=> d!795600 (= (maxPrefixZipperSequence!1059 thiss!11556 (t!227620 rules!1182) input!603) lt!970924)))

(declare-fun b!2741796 () Bool)

(declare-fun e!1726319 () Bool)

(assert (=> b!2741796 (= e!1726319 e!1726320)))

(declare-fun res!1151259 () Bool)

(assert (=> b!2741796 (=> (not res!1151259) (not e!1726320))))

(assert (=> b!2741796 (= res!1151259 (= (_1!18233 (get!9820 lt!970924)) (_1!18237 (get!9821 (maxPrefix!2382 thiss!11556 (t!227620 rules!1182) (list!11960 input!603))))))))

(declare-fun b!2741797 () Bool)

(declare-fun lt!970928 () Option!6223)

(declare-fun lt!970926 () Option!6223)

(assert (=> b!2741797 (= e!1726322 (ite (and ((_ is None!6222) lt!970928) ((_ is None!6222) lt!970926)) None!6222 (ite ((_ is None!6222) lt!970926) lt!970928 (ite ((_ is None!6222) lt!970928) lt!970926 (ite (>= (size!24284 (_1!18233 (v!33116 lt!970928))) (size!24284 (_1!18233 (v!33116 lt!970926)))) lt!970928 lt!970926)))))))

(assert (=> b!2741797 (= lt!970928 call!177411)))

(assert (=> b!2741797 (= lt!970926 (maxPrefixZipperSequence!1059 thiss!11556 (t!227620 (t!227620 rules!1182)) input!603))))

(declare-fun b!2741798 () Bool)

(declare-fun e!1726324 () Bool)

(declare-fun e!1726323 () Bool)

(assert (=> b!2741798 (= e!1726324 e!1726323)))

(declare-fun res!1151256 () Bool)

(assert (=> b!2741798 (=> (not res!1151256) (not e!1726323))))

(assert (=> b!2741798 (= res!1151256 (= (_1!18233 (get!9820 lt!970924)) (_1!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 (t!227620 rules!1182) (list!11960 input!603))))))))

(declare-fun b!2741799 () Bool)

(assert (=> b!2741799 (= e!1726321 e!1726319)))

(declare-fun res!1151258 () Bool)

(assert (=> b!2741799 (=> res!1151258 e!1726319)))

(assert (=> b!2741799 (= res!1151258 (not (isDefined!4925 lt!970924)))))

(declare-fun b!2741800 () Bool)

(assert (=> b!2741800 (= e!1726323 (= (list!11960 (_2!18233 (get!9820 lt!970924))) (_2!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 (t!227620 rules!1182) (list!11960 input!603))))))))

(declare-fun bm!177406 () Bool)

(assert (=> bm!177406 (= call!177411 (maxPrefixOneRuleZipperSequence!495 thiss!11556 (h!36862 (t!227620 rules!1182)) input!603))))

(declare-fun b!2741803 () Bool)

(declare-fun res!1151257 () Bool)

(assert (=> b!2741803 (=> (not res!1151257) (not e!1726321))))

(assert (=> b!2741803 (= res!1151257 e!1726324)))

(declare-fun res!1151260 () Bool)

(assert (=> b!2741803 (=> res!1151260 e!1726324)))

(assert (=> b!2741803 (= res!1151260 (not (isDefined!4925 lt!970924)))))

(assert (= (and d!795600 c!444716) b!2741795))

(assert (= (and d!795600 (not c!444716)) b!2741797))

(assert (= (or b!2741795 b!2741797) bm!177406))

(assert (= (and d!795600 res!1151261) b!2741803))

(assert (= (and b!2741803 (not res!1151260)) b!2741798))

(assert (= (and b!2741798 res!1151256) b!2741800))

(assert (= (and b!2741803 res!1151257) b!2741799))

(assert (= (and b!2741799 (not res!1151258)) b!2741796))

(assert (= (and b!2741796 res!1151259) b!2741794))

(declare-fun m!3159799 () Bool)

(assert (=> b!2741797 m!3159799))

(declare-fun m!3159801 () Bool)

(assert (=> b!2741799 m!3159801))

(declare-fun m!3159803 () Bool)

(assert (=> bm!177406 m!3159803))

(declare-fun m!3159805 () Bool)

(assert (=> b!2741798 m!3159805))

(assert (=> b!2741798 m!3158305))

(assert (=> b!2741798 m!3158305))

(assert (=> b!2741798 m!3158949))

(assert (=> b!2741798 m!3158949))

(declare-fun m!3159807 () Bool)

(assert (=> b!2741798 m!3159807))

(assert (=> b!2741803 m!3159801))

(assert (=> b!2741796 m!3159805))

(assert (=> b!2741796 m!3158305))

(assert (=> b!2741796 m!3158305))

(assert (=> b!2741796 m!3159055))

(assert (=> b!2741796 m!3159055))

(declare-fun m!3159809 () Bool)

(assert (=> b!2741796 m!3159809))

(assert (=> b!2741800 m!3158305))

(assert (=> b!2741800 m!3158949))

(assert (=> b!2741800 m!3158949))

(assert (=> b!2741800 m!3159807))

(declare-fun m!3159811 () Bool)

(assert (=> b!2741800 m!3159811))

(assert (=> b!2741800 m!3158305))

(assert (=> b!2741800 m!3159805))

(declare-fun m!3159813 () Bool)

(assert (=> d!795600 m!3159813))

(assert (=> d!795600 m!3158305))

(assert (=> d!795600 m!3158941))

(assert (=> d!795600 m!3158305))

(assert (=> d!795600 m!3158949))

(assert (=> d!795600 m!3158949))

(declare-fun m!3159815 () Bool)

(assert (=> d!795600 m!3159815))

(declare-fun m!3159817 () Bool)

(assert (=> d!795600 m!3159817))

(assert (=> d!795600 m!3159801))

(assert (=> b!2741794 m!3158305))

(assert (=> b!2741794 m!3159055))

(assert (=> b!2741794 m!3159811))

(assert (=> b!2741794 m!3159805))

(assert (=> b!2741794 m!3158305))

(assert (=> b!2741794 m!3159055))

(assert (=> b!2741794 m!3159809))

(assert (=> b!2740922 d!795600))

(declare-fun b!2741816 () Bool)

(declare-fun e!1726332 () List!31541)

(assert (=> b!2741816 (= e!1726332 (list!11969 (xs!12961 (c!444475 (_1!18232 lt!970580)))))))

(declare-fun d!795602 () Bool)

(declare-fun c!444720 () Bool)

(assert (=> d!795602 (= c!444720 ((_ is Empty!9858) (c!444475 (_1!18232 lt!970580))))))

(declare-fun e!1726331 () List!31541)

(assert (=> d!795602 (= (list!11965 (c!444475 (_1!18232 lt!970580))) e!1726331)))

(declare-fun b!2741814 () Bool)

(assert (=> b!2741814 (= e!1726331 Nil!31441)))

(declare-fun b!2741817 () Bool)

(assert (=> b!2741817 (= e!1726332 (++!7877 (list!11965 (left!24171 (c!444475 (_1!18232 lt!970580)))) (list!11965 (right!24501 (c!444475 (_1!18232 lt!970580))))))))

(declare-fun b!2741815 () Bool)

(assert (=> b!2741815 (= e!1726331 e!1726332)))

(declare-fun c!444721 () Bool)

(assert (=> b!2741815 (= c!444721 ((_ is Leaf!15010) (c!444475 (_1!18232 lt!970580))))))

(assert (= (and d!795602 c!444720) b!2741814))

(assert (= (and d!795602 (not c!444720)) b!2741815))

(assert (= (and b!2741815 c!444721) b!2741816))

(assert (= (and b!2741815 (not c!444721)) b!2741817))

(declare-fun m!3159833 () Bool)

(assert (=> b!2741816 m!3159833))

(declare-fun m!3159835 () Bool)

(assert (=> b!2741817 m!3159835))

(declare-fun m!3159837 () Bool)

(assert (=> b!2741817 m!3159837))

(assert (=> b!2741817 m!3159835))

(assert (=> b!2741817 m!3159837))

(declare-fun m!3159839 () Bool)

(assert (=> b!2741817 m!3159839))

(assert (=> d!795186 d!795602))

(declare-fun d!795606 () Bool)

(declare-fun lt!970933 () Int)

(assert (=> d!795606 (= lt!970933 (size!24288 (list!11960 (_2!18232 lt!970636))))))

(assert (=> d!795606 (= lt!970933 (size!24296 (c!444474 (_2!18232 lt!970636))))))

(assert (=> d!795606 (= (size!24289 (_2!18232 lt!970636)) lt!970933)))

(declare-fun bs!490183 () Bool)

(assert (= bs!490183 d!795606))

(assert (=> bs!490183 m!3158611))

(assert (=> bs!490183 m!3158611))

(declare-fun m!3159841 () Bool)

(assert (=> bs!490183 m!3159841))

(declare-fun m!3159843 () Bool)

(assert (=> bs!490183 m!3159843))

(assert (=> b!2740865 d!795606))

(declare-fun d!795610 () Bool)

(declare-fun lt!970934 () Int)

(assert (=> d!795610 (= lt!970934 (size!24288 (list!11960 treated!9)))))

(assert (=> d!795610 (= lt!970934 (size!24296 (c!444474 treated!9)))))

(assert (=> d!795610 (= (size!24289 treated!9) lt!970934)))

(declare-fun bs!490184 () Bool)

(assert (= bs!490184 d!795610))

(assert (=> bs!490184 m!3158307))

(assert (=> bs!490184 m!3158307))

(assert (=> bs!490184 m!3159129))

(declare-fun m!3159847 () Bool)

(assert (=> bs!490184 m!3159847))

(assert (=> b!2740865 d!795610))

(declare-fun d!795612 () Bool)

(assert (=> d!795612 (= (inv!42793 (xs!12960 (c!444474 input!603))) (<= (size!24288 (innerList!9917 (xs!12960 (c!444474 input!603)))) 2147483647))))

(declare-fun bs!490185 () Bool)

(assert (= bs!490185 d!795612))

(declare-fun m!3159853 () Bool)

(assert (=> bs!490185 m!3159853))

(assert (=> b!2740978 d!795612))

(declare-fun d!795614 () Bool)

(declare-fun res!1151268 () Bool)

(declare-fun e!1726335 () Bool)

(assert (=> d!795614 (=> (not res!1151268) (not e!1726335))))

(assert (=> d!795614 (= res!1151268 (<= (size!24288 (list!11967 (xs!12960 (c!444474 treated!9)))) 512))))

(assert (=> d!795614 (= (inv!42788 (c!444474 treated!9)) e!1726335)))

(declare-fun b!2741822 () Bool)

(declare-fun res!1151269 () Bool)

(assert (=> b!2741822 (=> (not res!1151269) (not e!1726335))))

(assert (=> b!2741822 (= res!1151269 (= (csize!19945 (c!444474 treated!9)) (size!24288 (list!11967 (xs!12960 (c!444474 treated!9))))))))

(declare-fun b!2741823 () Bool)

(assert (=> b!2741823 (= e!1726335 (and (> (csize!19945 (c!444474 treated!9)) 0) (<= (csize!19945 (c!444474 treated!9)) 512)))))

(assert (= (and d!795614 res!1151268) b!2741822))

(assert (= (and b!2741822 res!1151269) b!2741823))

(declare-fun m!3159859 () Bool)

(assert (=> d!795614 m!3159859))

(assert (=> d!795614 m!3159859))

(declare-fun m!3159861 () Bool)

(assert (=> d!795614 m!3159861))

(assert (=> b!2741822 m!3159859))

(assert (=> b!2741822 m!3159859))

(assert (=> b!2741822 m!3159861))

(assert (=> b!2740656 d!795614))

(assert (=> b!2740640 d!795256))

(declare-fun d!795620 () Bool)

(declare-fun lt!970937 () Bool)

(assert (=> d!795620 (= lt!970937 (isEmpty!18003 (list!11961 (_1!18232 lt!970636))))))

(assert (=> d!795620 (= lt!970937 (isEmpty!18004 (c!444475 (_1!18232 lt!970636))))))

(assert (=> d!795620 (= (isEmpty!17994 (_1!18232 lt!970636)) lt!970937)))

(declare-fun bs!490187 () Bool)

(assert (= bs!490187 d!795620))

(assert (=> bs!490187 m!3158625))

(assert (=> bs!490187 m!3158625))

(declare-fun m!3159863 () Bool)

(assert (=> bs!490187 m!3159863))

(declare-fun m!3159865 () Bool)

(assert (=> bs!490187 m!3159865))

(assert (=> b!2740867 d!795620))

(declare-fun d!795622 () Bool)

(declare-fun e!1726340 () Bool)

(assert (=> d!795622 e!1726340))

(declare-fun res!1151274 () Bool)

(assert (=> d!795622 (=> (not res!1151274) (not e!1726340))))

(assert (=> d!795622 (= res!1151274 (isBalanced!3003 (prepend!1159 (c!444475 (_1!18232 lt!970634)) (_1!18233 (v!33116 lt!970635)))))))

(declare-fun lt!970938 () BalanceConc!19330)

(assert (=> d!795622 (= lt!970938 (BalanceConc!19331 (prepend!1159 (c!444475 (_1!18232 lt!970634)) (_1!18233 (v!33116 lt!970635)))))))

(assert (=> d!795622 (= (prepend!1157 (_1!18232 lt!970634) (_1!18233 (v!33116 lt!970635))) lt!970938)))

(declare-fun b!2741828 () Bool)

(assert (=> b!2741828 (= e!1726340 (= (list!11961 lt!970938) (Cons!31441 (_1!18233 (v!33116 lt!970635)) (list!11961 (_1!18232 lt!970634)))))))

(assert (= (and d!795622 res!1151274) b!2741828))

(declare-fun m!3159867 () Bool)

(assert (=> d!795622 m!3159867))

(assert (=> d!795622 m!3159867))

(declare-fun m!3159869 () Bool)

(assert (=> d!795622 m!3159869))

(declare-fun m!3159871 () Bool)

(assert (=> b!2741828 m!3159871))

(declare-fun m!3159873 () Bool)

(assert (=> b!2741828 m!3159873))

(assert (=> b!2740863 d!795622))

(declare-fun lt!970941 () tuple2!31200)

(declare-fun e!1726345 () Bool)

(declare-fun b!2741831 () Bool)

(assert (=> b!2741831 (= e!1726345 (= (list!11960 (_2!18232 lt!970941)) (_2!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 (_2!18233 (v!33116 lt!970635)))))))))

(declare-fun b!2741832 () Bool)

(declare-fun e!1726344 () Bool)

(assert (=> b!2741832 (= e!1726344 (= (list!11960 (_2!18232 lt!970941)) (list!11960 (_2!18233 (v!33116 lt!970635)))))))

(declare-fun b!2741833 () Bool)

(declare-fun e!1726343 () tuple2!31200)

(declare-fun lt!970939 () tuple2!31200)

(declare-fun lt!970940 () Option!6223)

(assert (=> b!2741833 (= e!1726343 (tuple2!31201 (prepend!1157 (_1!18232 lt!970939) (_1!18233 (v!33116 lt!970940))) (_2!18232 lt!970939)))))

(assert (=> b!2741833 (= lt!970939 (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970940))))))

(declare-fun b!2741834 () Bool)

(assert (=> b!2741834 (= e!1726343 (tuple2!31201 (BalanceConc!19331 Empty!9858) (_2!18233 (v!33116 lt!970635))))))

(declare-fun b!2741835 () Bool)

(declare-fun e!1726346 () Bool)

(assert (=> b!2741835 (= e!1726344 e!1726346)))

(declare-fun res!1151278 () Bool)

(assert (=> b!2741835 (= res!1151278 (< (size!24289 (_2!18232 lt!970941)) (size!24289 (_2!18233 (v!33116 lt!970635)))))))

(assert (=> b!2741835 (=> (not res!1151278) (not e!1726346))))

(declare-fun d!795624 () Bool)

(assert (=> d!795624 e!1726345))

(declare-fun res!1151279 () Bool)

(assert (=> d!795624 (=> (not res!1151279) (not e!1726345))))

(assert (=> d!795624 (= res!1151279 e!1726344)))

(declare-fun c!444724 () Bool)

(assert (=> d!795624 (= c!444724 (> (size!24290 (_1!18232 lt!970941)) 0))))

(assert (=> d!795624 (= lt!970941 e!1726343)))

(declare-fun c!444725 () Bool)

(assert (=> d!795624 (= c!444725 ((_ is Some!6222) lt!970940))))

(assert (=> d!795624 (= lt!970940 (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970635))))))

(assert (=> d!795624 (= (lexRec!671 thiss!11556 rules!1182 (_2!18233 (v!33116 lt!970635))) lt!970941)))

(declare-fun b!2741836 () Bool)

(declare-fun res!1151277 () Bool)

(assert (=> b!2741836 (=> (not res!1151277) (not e!1726345))))

(assert (=> b!2741836 (= res!1151277 (= (list!11961 (_1!18232 lt!970941)) (_1!18236 (lexList!1240 thiss!11556 rules!1182 (list!11960 (_2!18233 (v!33116 lt!970635)))))))))

(declare-fun b!2741837 () Bool)

(assert (=> b!2741837 (= e!1726346 (not (isEmpty!17994 (_1!18232 lt!970941))))))

(assert (= (and d!795624 c!444725) b!2741833))

(assert (= (and d!795624 (not c!444725)) b!2741834))

(assert (= (and d!795624 c!444724) b!2741835))

(assert (= (and d!795624 (not c!444724)) b!2741832))

(assert (= (and b!2741835 res!1151278) b!2741837))

(assert (= (and d!795624 res!1151279) b!2741836))

(assert (= (and b!2741836 res!1151277) b!2741831))

(declare-fun m!3159887 () Bool)

(assert (=> b!2741835 m!3159887))

(declare-fun m!3159889 () Bool)

(assert (=> b!2741835 m!3159889))

(declare-fun m!3159891 () Bool)

(assert (=> b!2741831 m!3159891))

(declare-fun m!3159893 () Bool)

(assert (=> b!2741831 m!3159893))

(assert (=> b!2741831 m!3159893))

(declare-fun m!3159895 () Bool)

(assert (=> b!2741831 m!3159895))

(declare-fun m!3159897 () Bool)

(assert (=> b!2741833 m!3159897))

(declare-fun m!3159899 () Bool)

(assert (=> b!2741833 m!3159899))

(declare-fun m!3159901 () Bool)

(assert (=> d!795624 m!3159901))

(declare-fun m!3159903 () Bool)

(assert (=> d!795624 m!3159903))

(declare-fun m!3159905 () Bool)

(assert (=> b!2741837 m!3159905))

(declare-fun m!3159907 () Bool)

(assert (=> b!2741836 m!3159907))

(assert (=> b!2741836 m!3159893))

(assert (=> b!2741836 m!3159893))

(assert (=> b!2741836 m!3159895))

(assert (=> b!2741832 m!3159891))

(assert (=> b!2741832 m!3159893))

(assert (=> b!2740863 d!795624))

(declare-fun d!795630 () Bool)

(declare-fun res!1151284 () Bool)

(declare-fun e!1726352 () Bool)

(assert (=> d!795630 (=> (not res!1151284) (not e!1726352))))

(assert (=> d!795630 (= res!1151284 (= (csize!19944 (c!444474 treated!9)) (+ (size!24296 (left!24170 (c!444474 treated!9))) (size!24296 (right!24500 (c!444474 treated!9))))))))

(assert (=> d!795630 (= (inv!42787 (c!444474 treated!9)) e!1726352)))

(declare-fun b!2741846 () Bool)

(declare-fun res!1151285 () Bool)

(assert (=> b!2741846 (=> (not res!1151285) (not e!1726352))))

(assert (=> b!2741846 (= res!1151285 (and (not (= (left!24170 (c!444474 treated!9)) Empty!9857)) (not (= (right!24500 (c!444474 treated!9)) Empty!9857))))))

(declare-fun b!2741847 () Bool)

(declare-fun res!1151286 () Bool)

(assert (=> b!2741847 (=> (not res!1151286) (not e!1726352))))

(assert (=> b!2741847 (= res!1151286 (= (cheight!10068 (c!444474 treated!9)) (+ (max!0 (height!1482 (left!24170 (c!444474 treated!9))) (height!1482 (right!24500 (c!444474 treated!9)))) 1)))))

(declare-fun b!2741848 () Bool)

(assert (=> b!2741848 (= e!1726352 (<= 0 (cheight!10068 (c!444474 treated!9))))))

(assert (= (and d!795630 res!1151284) b!2741846))

(assert (= (and b!2741846 res!1151285) b!2741847))

(assert (= (and b!2741847 res!1151286) b!2741848))

(declare-fun m!3159915 () Bool)

(assert (=> d!795630 m!3159915))

(declare-fun m!3159925 () Bool)

(assert (=> d!795630 m!3159925))

(declare-fun m!3159927 () Bool)

(assert (=> b!2741847 m!3159927))

(declare-fun m!3159929 () Bool)

(assert (=> b!2741847 m!3159929))

(assert (=> b!2741847 m!3159927))

(assert (=> b!2741847 m!3159929))

(declare-fun m!3159935 () Bool)

(assert (=> b!2741847 m!3159935))

(assert (=> b!2740654 d!795630))

(declare-fun b!2741851 () Bool)

(declare-fun e!1726354 () List!31539)

(assert (=> b!2741851 (= e!1726354 (list!11967 (xs!12960 (c!444474 treated!9))))))

(declare-fun b!2741849 () Bool)

(declare-fun e!1726353 () List!31539)

(assert (=> b!2741849 (= e!1726353 Nil!31439)))

(declare-fun b!2741852 () Bool)

(assert (=> b!2741852 (= e!1726354 (++!7872 (list!11964 (left!24170 (c!444474 treated!9))) (list!11964 (right!24500 (c!444474 treated!9)))))))

(declare-fun b!2741850 () Bool)

(assert (=> b!2741850 (= e!1726353 e!1726354)))

(declare-fun c!444729 () Bool)

(assert (=> b!2741850 (= c!444729 ((_ is Leaf!15009) (c!444474 treated!9)))))

(declare-fun d!795632 () Bool)

(declare-fun c!444728 () Bool)

(assert (=> d!795632 (= c!444728 ((_ is Empty!9857) (c!444474 treated!9)))))

(assert (=> d!795632 (= (list!11964 (c!444474 treated!9)) e!1726353)))

(assert (= (and d!795632 c!444728) b!2741849))

(assert (= (and d!795632 (not c!444728)) b!2741850))

(assert (= (and b!2741850 c!444729) b!2741851))

(assert (= (and b!2741850 (not c!444729)) b!2741852))

(assert (=> b!2741851 m!3159859))

(declare-fun m!3159941 () Bool)

(assert (=> b!2741852 m!3159941))

(declare-fun m!3159943 () Bool)

(assert (=> b!2741852 m!3159943))

(assert (=> b!2741852 m!3159941))

(assert (=> b!2741852 m!3159943))

(declare-fun m!3159945 () Bool)

(assert (=> b!2741852 m!3159945))

(assert (=> d!795178 d!795632))

(declare-fun d!795634 () Bool)

(declare-fun res!1151287 () Bool)

(declare-fun e!1726357 () Bool)

(assert (=> d!795634 (=> (not res!1151287) (not e!1726357))))

(assert (=> d!795634 (= res!1151287 (= (csize!19944 (c!444474 input!603)) (+ (size!24296 (left!24170 (c!444474 input!603))) (size!24296 (right!24500 (c!444474 input!603))))))))

(assert (=> d!795634 (= (inv!42787 (c!444474 input!603)) e!1726357)))

(declare-fun b!2741856 () Bool)

(declare-fun res!1151288 () Bool)

(assert (=> b!2741856 (=> (not res!1151288) (not e!1726357))))

(assert (=> b!2741856 (= res!1151288 (and (not (= (left!24170 (c!444474 input!603)) Empty!9857)) (not (= (right!24500 (c!444474 input!603)) Empty!9857))))))

(declare-fun b!2741857 () Bool)

(declare-fun res!1151289 () Bool)

(assert (=> b!2741857 (=> (not res!1151289) (not e!1726357))))

(assert (=> b!2741857 (= res!1151289 (= (cheight!10068 (c!444474 input!603)) (+ (max!0 (height!1482 (left!24170 (c!444474 input!603))) (height!1482 (right!24500 (c!444474 input!603)))) 1)))))

(declare-fun b!2741858 () Bool)

(assert (=> b!2741858 (= e!1726357 (<= 0 (cheight!10068 (c!444474 input!603))))))

(assert (= (and d!795634 res!1151287) b!2741856))

(assert (= (and b!2741856 res!1151288) b!2741857))

(assert (= (and b!2741857 res!1151289) b!2741858))

(declare-fun m!3159953 () Bool)

(assert (=> d!795634 m!3159953))

(declare-fun m!3159955 () Bool)

(assert (=> d!795634 m!3159955))

(assert (=> b!2741857 m!3159075))

(assert (=> b!2741857 m!3159077))

(assert (=> b!2741857 m!3159075))

(assert (=> b!2741857 m!3159077))

(declare-fun m!3159957 () Bool)

(assert (=> b!2741857 m!3159957))

(assert (=> b!2740666 d!795634))

(declare-fun d!795636 () Bool)

(declare-fun res!1151290 () Bool)

(declare-fun e!1726360 () Bool)

(assert (=> d!795636 (=> (not res!1151290) (not e!1726360))))

(assert (=> d!795636 (= res!1151290 (<= (size!24288 (list!11967 (xs!12960 (c!444474 input!603)))) 512))))

(assert (=> d!795636 (= (inv!42788 (c!444474 input!603)) e!1726360)))

(declare-fun b!2741862 () Bool)

(declare-fun res!1151291 () Bool)

(assert (=> b!2741862 (=> (not res!1151291) (not e!1726360))))

(assert (=> b!2741862 (= res!1151291 (= (csize!19945 (c!444474 input!603)) (size!24288 (list!11967 (xs!12960 (c!444474 input!603))))))))

(declare-fun b!2741863 () Bool)

(assert (=> b!2741863 (= e!1726360 (and (> (csize!19945 (c!444474 input!603)) 0) (<= (csize!19945 (c!444474 input!603)) 512)))))

(assert (= (and d!795636 res!1151290) b!2741862))

(assert (= (and b!2741862 res!1151291) b!2741863))

(declare-fun m!3159965 () Bool)

(assert (=> d!795636 m!3159965))

(assert (=> d!795636 m!3159965))

(declare-fun m!3159967 () Bool)

(assert (=> d!795636 m!3159967))

(assert (=> b!2741862 m!3159965))

(assert (=> b!2741862 m!3159965))

(assert (=> b!2741862 m!3159967))

(assert (=> b!2740668 d!795636))

(declare-fun d!795638 () Bool)

(declare-fun lt!970946 () Int)

(assert (=> d!795638 (= lt!970946 (size!24294 (list!11961 (_1!18232 lt!970639))))))

(assert (=> d!795638 (= lt!970946 (size!24295 (c!444475 (_1!18232 lt!970639))))))

(assert (=> d!795638 (= (size!24290 (_1!18232 lt!970639)) lt!970946)))

(declare-fun bs!490188 () Bool)

(assert (= bs!490188 d!795638))

(assert (=> bs!490188 m!3158647))

(assert (=> bs!490188 m!3158647))

(declare-fun m!3159969 () Bool)

(assert (=> bs!490188 m!3159969))

(declare-fun m!3159971 () Bool)

(assert (=> bs!490188 m!3159971))

(assert (=> d!795250 d!795638))

(assert (=> d!795250 d!795260))

(declare-fun b!2741870 () Bool)

(declare-fun e!1726364 () List!31539)

(assert (=> b!2741870 (= e!1726364 (list!11967 (xs!12960 (c!444474 input!603))))))

(declare-fun b!2741868 () Bool)

(declare-fun e!1726363 () List!31539)

(assert (=> b!2741868 (= e!1726363 Nil!31439)))

(declare-fun b!2741871 () Bool)

(assert (=> b!2741871 (= e!1726364 (++!7872 (list!11964 (left!24170 (c!444474 input!603))) (list!11964 (right!24500 (c!444474 input!603)))))))

(declare-fun b!2741869 () Bool)

(assert (=> b!2741869 (= e!1726363 e!1726364)))

(declare-fun c!444731 () Bool)

(assert (=> b!2741869 (= c!444731 ((_ is Leaf!15009) (c!444474 input!603)))))

(declare-fun d!795640 () Bool)

(declare-fun c!444730 () Bool)

(assert (=> d!795640 (= c!444730 ((_ is Empty!9857) (c!444474 input!603)))))

(assert (=> d!795640 (= (list!11964 (c!444474 input!603)) e!1726363)))

(assert (= (and d!795640 c!444730) b!2741868))

(assert (= (and d!795640 (not c!444730)) b!2741869))

(assert (= (and b!2741869 c!444731) b!2741870))

(assert (= (and b!2741869 (not c!444731)) b!2741871))

(assert (=> b!2741870 m!3159965))

(declare-fun m!3159973 () Bool)

(assert (=> b!2741871 m!3159973))

(declare-fun m!3159975 () Bool)

(assert (=> b!2741871 m!3159975))

(assert (=> b!2741871 m!3159973))

(assert (=> b!2741871 m!3159975))

(declare-fun m!3159977 () Bool)

(assert (=> b!2741871 m!3159977))

(assert (=> d!795176 d!795640))

(declare-fun b!2741872 () Bool)

(declare-fun e!1726366 () Bool)

(assert (=> b!2741872 (= e!1726366 (not (isEmpty!18002 (right!24500 (c!444474 treated!9)))))))

(declare-fun b!2741873 () Bool)

(declare-fun res!1151293 () Bool)

(assert (=> b!2741873 (=> (not res!1151293) (not e!1726366))))

(assert (=> b!2741873 (= res!1151293 (isBalanced!3004 (right!24500 (c!444474 treated!9))))))

(declare-fun b!2741874 () Bool)

(declare-fun res!1151294 () Bool)

(assert (=> b!2741874 (=> (not res!1151294) (not e!1726366))))

(assert (=> b!2741874 (= res!1151294 (not (isEmpty!18002 (left!24170 (c!444474 treated!9)))))))

(declare-fun b!2741876 () Bool)

(declare-fun res!1151297 () Bool)

(assert (=> b!2741876 (=> (not res!1151297) (not e!1726366))))

(assert (=> b!2741876 (= res!1151297 (isBalanced!3004 (left!24170 (c!444474 treated!9))))))

(declare-fun b!2741877 () Bool)

(declare-fun e!1726365 () Bool)

(assert (=> b!2741877 (= e!1726365 e!1726366)))

(declare-fun res!1151292 () Bool)

(assert (=> b!2741877 (=> (not res!1151292) (not e!1726366))))

(assert (=> b!2741877 (= res!1151292 (<= (- 1) (- (height!1482 (left!24170 (c!444474 treated!9))) (height!1482 (right!24500 (c!444474 treated!9))))))))

(declare-fun b!2741875 () Bool)

(declare-fun res!1151296 () Bool)

(assert (=> b!2741875 (=> (not res!1151296) (not e!1726366))))

(assert (=> b!2741875 (= res!1151296 (<= (- (height!1482 (left!24170 (c!444474 treated!9))) (height!1482 (right!24500 (c!444474 treated!9)))) 1))))

(declare-fun d!795642 () Bool)

(declare-fun res!1151295 () Bool)

(assert (=> d!795642 (=> res!1151295 e!1726365)))

(assert (=> d!795642 (= res!1151295 (not ((_ is Node!9857) (c!444474 treated!9))))))

(assert (=> d!795642 (= (isBalanced!3004 (c!444474 treated!9)) e!1726365)))

(assert (= (and d!795642 (not res!1151295)) b!2741877))

(assert (= (and b!2741877 res!1151292) b!2741875))

(assert (= (and b!2741875 res!1151296) b!2741876))

(assert (= (and b!2741876 res!1151297) b!2741873))

(assert (= (and b!2741873 res!1151293) b!2741874))

(assert (= (and b!2741874 res!1151294) b!2741872))

(assert (=> b!2741877 m!3159927))

(assert (=> b!2741877 m!3159929))

(declare-fun m!3159979 () Bool)

(assert (=> b!2741872 m!3159979))

(assert (=> b!2741875 m!3159927))

(assert (=> b!2741875 m!3159929))

(declare-fun m!3159981 () Bool)

(assert (=> b!2741873 m!3159981))

(declare-fun m!3159983 () Bool)

(assert (=> b!2741876 m!3159983))

(declare-fun m!3159985 () Bool)

(assert (=> b!2741874 m!3159985))

(assert (=> d!795262 d!795642))

(declare-fun d!795644 () Bool)

(declare-fun lt!970947 () Int)

(assert (=> d!795644 (= lt!970947 (size!24294 (list!11961 (_1!18232 lt!970642))))))

(assert (=> d!795644 (= lt!970947 (size!24295 (c!444475 (_1!18232 lt!970642))))))

(assert (=> d!795644 (= (size!24290 (_1!18232 lt!970642)) lt!970947)))

(declare-fun bs!490189 () Bool)

(assert (= bs!490189 d!795644))

(assert (=> bs!490189 m!3158667))

(assert (=> bs!490189 m!3158667))

(declare-fun m!3159987 () Bool)

(assert (=> bs!490189 m!3159987))

(declare-fun m!3159989 () Bool)

(assert (=> bs!490189 m!3159989))

(assert (=> d!795252 d!795644))

(declare-fun b!2741882 () Bool)

(declare-fun lt!970949 () Option!6223)

(declare-fun e!1726376 () Bool)

(assert (=> b!2741882 (= e!1726376 (= (list!11960 (_2!18233 (get!9820 lt!970949))) (_2!18237 (get!9821 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 totalInput!328))))))))

(declare-fun b!2741883 () Bool)

(declare-fun e!1726378 () Option!6223)

(declare-fun call!177412 () Option!6223)

(assert (=> b!2741883 (= e!1726378 call!177412)))

(declare-fun d!795646 () Bool)

(declare-fun e!1726377 () Bool)

(assert (=> d!795646 e!1726377))

(declare-fun res!1151303 () Bool)

(assert (=> d!795646 (=> (not res!1151303) (not e!1726377))))

(assert (=> d!795646 (= res!1151303 (= (isDefined!4925 lt!970949) (isDefined!4926 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 totalInput!328)))))))

(assert (=> d!795646 (= lt!970949 e!1726378)))

(declare-fun c!444732 () Bool)

(assert (=> d!795646 (= c!444732 (and ((_ is Cons!31442) rules!1182) ((_ is Nil!31442) (t!227620 rules!1182))))))

(declare-fun lt!970954 () Unit!45462)

(declare-fun lt!970952 () Unit!45462)

(assert (=> d!795646 (= lt!970954 lt!970952)))

(declare-fun lt!970950 () List!31539)

(declare-fun lt!970948 () List!31539)

(assert (=> d!795646 (isPrefix!2499 lt!970950 lt!970948)))

(assert (=> d!795646 (= lt!970952 (lemmaIsPrefixRefl!1625 lt!970950 lt!970948))))

(assert (=> d!795646 (= lt!970948 (list!11960 totalInput!328))))

(assert (=> d!795646 (= lt!970950 (list!11960 totalInput!328))))

(assert (=> d!795646 (rulesValidInductive!1683 thiss!11556 rules!1182)))

(assert (=> d!795646 (= (maxPrefixZipperSequence!1059 thiss!11556 rules!1182 totalInput!328) lt!970949)))

(declare-fun b!2741884 () Bool)

(declare-fun e!1726375 () Bool)

(assert (=> b!2741884 (= e!1726375 e!1726376)))

(declare-fun res!1151301 () Bool)

(assert (=> b!2741884 (=> (not res!1151301) (not e!1726376))))

(assert (=> b!2741884 (= res!1151301 (= (_1!18233 (get!9820 lt!970949)) (_1!18237 (get!9821 (maxPrefix!2382 thiss!11556 rules!1182 (list!11960 totalInput!328))))))))

(declare-fun b!2741885 () Bool)

(declare-fun lt!970953 () Option!6223)

(declare-fun lt!970951 () Option!6223)

(assert (=> b!2741885 (= e!1726378 (ite (and ((_ is None!6222) lt!970953) ((_ is None!6222) lt!970951)) None!6222 (ite ((_ is None!6222) lt!970951) lt!970953 (ite ((_ is None!6222) lt!970953) lt!970951 (ite (>= (size!24284 (_1!18233 (v!33116 lt!970953))) (size!24284 (_1!18233 (v!33116 lt!970951)))) lt!970953 lt!970951)))))))

(assert (=> b!2741885 (= lt!970953 call!177412)))

(assert (=> b!2741885 (= lt!970951 (maxPrefixZipperSequence!1059 thiss!11556 (t!227620 rules!1182) totalInput!328))))

(declare-fun b!2741886 () Bool)

(declare-fun e!1726380 () Bool)

(declare-fun e!1726379 () Bool)

(assert (=> b!2741886 (= e!1726380 e!1726379)))

(declare-fun res!1151298 () Bool)

(assert (=> b!2741886 (=> (not res!1151298) (not e!1726379))))

(assert (=> b!2741886 (= res!1151298 (= (_1!18233 (get!9820 lt!970949)) (_1!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 totalInput!328))))))))

(declare-fun b!2741887 () Bool)

(assert (=> b!2741887 (= e!1726377 e!1726375)))

(declare-fun res!1151300 () Bool)

(assert (=> b!2741887 (=> res!1151300 e!1726375)))

(assert (=> b!2741887 (= res!1151300 (not (isDefined!4925 lt!970949)))))

(declare-fun b!2741888 () Bool)

(assert (=> b!2741888 (= e!1726379 (= (list!11960 (_2!18233 (get!9820 lt!970949))) (_2!18237 (get!9821 (maxPrefixZipper!486 thiss!11556 rules!1182 (list!11960 totalInput!328))))))))

(declare-fun bm!177407 () Bool)

(assert (=> bm!177407 (= call!177412 (maxPrefixOneRuleZipperSequence!495 thiss!11556 (h!36862 rules!1182) totalInput!328))))

(declare-fun b!2741889 () Bool)

(declare-fun res!1151299 () Bool)

(assert (=> b!2741889 (=> (not res!1151299) (not e!1726377))))

(assert (=> b!2741889 (= res!1151299 e!1726380)))

(declare-fun res!1151302 () Bool)

(assert (=> b!2741889 (=> res!1151302 e!1726380)))

(assert (=> b!2741889 (= res!1151302 (not (isDefined!4925 lt!970949)))))

(assert (= (and d!795646 c!444732) b!2741883))

(assert (= (and d!795646 (not c!444732)) b!2741885))

(assert (= (or b!2741883 b!2741885) bm!177407))

(assert (= (and d!795646 res!1151303) b!2741889))

(assert (= (and b!2741889 (not res!1151302)) b!2741886))

(assert (= (and b!2741886 res!1151298) b!2741888))

(assert (= (and b!2741889 res!1151299) b!2741887))

(assert (= (and b!2741887 (not res!1151300)) b!2741884))

(assert (= (and b!2741884 res!1151301) b!2741882))

(declare-fun m!3159991 () Bool)

(assert (=> b!2741885 m!3159991))

(declare-fun m!3159993 () Bool)

(assert (=> b!2741887 m!3159993))

(declare-fun m!3159995 () Bool)

(assert (=> bm!177407 m!3159995))

(declare-fun m!3159997 () Bool)

(assert (=> b!2741886 m!3159997))

(assert (=> b!2741886 m!3158301))

(assert (=> b!2741886 m!3158301))

(declare-fun m!3159999 () Bool)

(assert (=> b!2741886 m!3159999))

(assert (=> b!2741886 m!3159999))

(declare-fun m!3160001 () Bool)

(assert (=> b!2741886 m!3160001))

(assert (=> b!2741889 m!3159993))

(assert (=> b!2741884 m!3159997))

(assert (=> b!2741884 m!3158301))

(assert (=> b!2741884 m!3158301))

(assert (=> b!2741884 m!3159303))

(assert (=> b!2741884 m!3159303))

(declare-fun m!3160003 () Bool)

(assert (=> b!2741884 m!3160003))

(assert (=> b!2741888 m!3158301))

(assert (=> b!2741888 m!3159999))

(assert (=> b!2741888 m!3159999))

(assert (=> b!2741888 m!3160001))

(declare-fun m!3160005 () Bool)

(assert (=> b!2741888 m!3160005))

(assert (=> b!2741888 m!3158301))

(assert (=> b!2741888 m!3159997))

(declare-fun m!3160007 () Bool)

(assert (=> d!795646 m!3160007))

(assert (=> d!795646 m!3158301))

(assert (=> d!795646 m!3158713))

(assert (=> d!795646 m!3158301))

(assert (=> d!795646 m!3159999))

(assert (=> d!795646 m!3159999))

(declare-fun m!3160009 () Bool)

(assert (=> d!795646 m!3160009))

(declare-fun m!3160011 () Bool)

(assert (=> d!795646 m!3160011))

(assert (=> d!795646 m!3159993))

(assert (=> b!2741882 m!3158301))

(assert (=> b!2741882 m!3159303))

(assert (=> b!2741882 m!3160005))

(assert (=> b!2741882 m!3159997))

(assert (=> b!2741882 m!3158301))

(assert (=> b!2741882 m!3159303))

(assert (=> b!2741882 m!3160003))

(assert (=> d!795252 d!795646))

(declare-fun d!795648 () Bool)

(declare-fun lt!970955 () Bool)

(assert (=> d!795648 (= lt!970955 (isEmpty!18003 (list!11961 (_1!18232 lt!970639))))))

(assert (=> d!795648 (= lt!970955 (isEmpty!18004 (c!444475 (_1!18232 lt!970639))))))

(assert (=> d!795648 (= (isEmpty!17994 (_1!18232 lt!970639)) lt!970955)))

(declare-fun bs!490190 () Bool)

(assert (= bs!490190 d!795648))

(assert (=> bs!490190 m!3158647))

(assert (=> bs!490190 m!3158647))

(declare-fun m!3160021 () Bool)

(assert (=> bs!490190 m!3160021))

(declare-fun m!3160023 () Bool)

(assert (=> bs!490190 m!3160023))

(assert (=> b!2740874 d!795648))

(declare-fun bs!490191 () Bool)

(declare-fun b!2741962 () Bool)

(assert (= bs!490191 (and b!2741962 d!795432)))

(declare-fun lambda!100827 () Int)

(assert (=> bs!490191 (= lambda!100827 lambda!100813)))

(declare-fun b!2741973 () Bool)

(declare-fun e!1726436 () Bool)

(assert (=> b!2741973 (= e!1726436 true)))

(declare-fun b!2741972 () Bool)

(declare-fun e!1726435 () Bool)

(assert (=> b!2741972 (= e!1726435 e!1726436)))

(assert (=> b!2741962 e!1726435))

(assert (= b!2741972 b!2741973))

(assert (= b!2741962 b!2741972))

(assert (=> b!2741973 (< (dynLambda!13578 order!17215 (toValue!6809 (transformation!4815 (h!36862 rules!1182)))) (dynLambda!13577 order!17213 lambda!100827))))

(assert (=> b!2741973 (< (dynLambda!13576 order!17211 (toChars!6668 (transformation!4815 (h!36862 rules!1182)))) (dynLambda!13577 order!17213 lambda!100827))))

(declare-fun b!2741960 () Bool)

(declare-fun e!1726427 () Bool)

(declare-fun lt!970976 () Option!6223)

(assert (=> b!2741960 (= e!1726427 (= (list!11960 (_2!18233 (get!9820 lt!970976))) (_2!18237 (get!9821 (maxPrefixOneRule!1507 thiss!11556 (h!36862 rules!1182) (list!11960 input!603))))))))

(declare-fun b!2741961 () Bool)

(declare-fun e!1726426 () Option!6223)

(assert (=> b!2741961 (= e!1726426 None!6222)))

(declare-fun d!795650 () Bool)

(declare-fun e!1726428 () Bool)

(assert (=> d!795650 e!1726428))

(declare-fun res!1151315 () Bool)

(assert (=> d!795650 (=> (not res!1151315) (not e!1726428))))

(assert (=> d!795650 (= res!1151315 (= (isDefined!4925 lt!970976) (isDefined!4926 (maxPrefixOneRule!1507 thiss!11556 (h!36862 rules!1182) (list!11960 input!603)))))))

(assert (=> d!795650 (= lt!970976 e!1726426)))

(declare-fun c!444735 () Bool)

(declare-datatypes ((tuple2!31216 0))(
  ( (tuple2!31217 (_1!18240 BalanceConc!19328) (_2!18240 BalanceConc!19328)) )
))
(declare-fun lt!970977 () tuple2!31216)

(declare-fun isEmpty!18006 (BalanceConc!19328) Bool)

(assert (=> d!795650 (= c!444735 (isEmpty!18006 (_1!18240 lt!970977)))))

(declare-fun findLongestMatchWithZipperSequence!189 (Regex!7967 BalanceConc!19328) tuple2!31216)

(assert (=> d!795650 (= lt!970977 (findLongestMatchWithZipperSequence!189 (regex!4815 (h!36862 rules!1182)) input!603))))

(assert (=> d!795650 (ruleValid!1577 thiss!11556 (h!36862 rules!1182))))

(assert (=> d!795650 (= (maxPrefixOneRuleZipperSequence!495 thiss!11556 (h!36862 rules!1182) input!603) lt!970976)))

(assert (=> b!2741962 (= e!1726426 (Some!6222 (tuple2!31203 (Token!9093 (apply!7421 (transformation!4815 (h!36862 rules!1182)) (_1!18240 lt!970977)) (h!36862 rules!1182) (size!24289 (_1!18240 lt!970977)) (list!11960 (_1!18240 lt!970977))) (_2!18240 lt!970977))))))

(declare-fun lt!970982 () List!31539)

(assert (=> b!2741962 (= lt!970982 (list!11960 input!603))))

(declare-fun lt!970979 () Unit!45462)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!769 (Regex!7967 List!31539) Unit!45462)

(assert (=> b!2741962 (= lt!970979 (longestMatchIsAcceptedByMatchOrIsEmpty!769 (regex!4815 (h!36862 rules!1182)) lt!970982))))

(declare-fun res!1151312 () Bool)

(declare-datatypes ((tuple2!31218 0))(
  ( (tuple2!31219 (_1!18241 List!31539) (_2!18241 List!31539)) )
))
(declare-fun findLongestMatchInner!796 (Regex!7967 List!31539 Int List!31539 List!31539 Int) tuple2!31218)

(assert (=> b!2741962 (= res!1151312 (isEmpty!17992 (_1!18241 (findLongestMatchInner!796 (regex!4815 (h!36862 rules!1182)) Nil!31439 (size!24288 Nil!31439) lt!970982 lt!970982 (size!24288 lt!970982)))))))

(declare-fun e!1726430 () Bool)

(assert (=> b!2741962 (=> res!1151312 e!1726430)))

(assert (=> b!2741962 e!1726430))

(declare-fun lt!970985 () Unit!45462)

(assert (=> b!2741962 (= lt!970985 lt!970979)))

(declare-fun lt!970980 () Unit!45462)

(declare-fun lemmaInv!836 (TokenValueInjection!9514) Unit!45462)

(assert (=> b!2741962 (= lt!970980 (lemmaInv!836 (transformation!4815 (h!36862 rules!1182))))))

(declare-fun lt!970983 () Unit!45462)

(declare-fun ForallOf!540 (Int BalanceConc!19328) Unit!45462)

(assert (=> b!2741962 (= lt!970983 (ForallOf!540 lambda!100827 (_1!18240 lt!970977)))))

(declare-fun lt!970978 () Unit!45462)

(assert (=> b!2741962 (= lt!970978 (ForallOf!540 lambda!100827 (seqFromList!3226 (list!11960 (_1!18240 lt!970977)))))))

(declare-fun lt!970981 () Option!6223)

(assert (=> b!2741962 (= lt!970981 (Some!6222 (tuple2!31203 (Token!9093 (apply!7421 (transformation!4815 (h!36862 rules!1182)) (_1!18240 lt!970977)) (h!36862 rules!1182) (size!24289 (_1!18240 lt!970977)) (list!11960 (_1!18240 lt!970977))) (_2!18240 lt!970977))))))

(declare-fun lt!970984 () Unit!45462)

(declare-fun lemmaEqSameImage!742 (TokenValueInjection!9514 BalanceConc!19328 BalanceConc!19328) Unit!45462)

(assert (=> b!2741962 (= lt!970984 (lemmaEqSameImage!742 (transformation!4815 (h!36862 rules!1182)) (_1!18240 lt!970977) (seqFromList!3226 (list!11960 (_1!18240 lt!970977)))))))

(declare-fun b!2741963 () Bool)

(declare-fun e!1726429 () Bool)

(assert (=> b!2741963 (= e!1726429 e!1726427)))

(declare-fun res!1151314 () Bool)

(assert (=> b!2741963 (=> (not res!1151314) (not e!1726427))))

(assert (=> b!2741963 (= res!1151314 (= (_1!18233 (get!9820 lt!970976)) (_1!18237 (get!9821 (maxPrefixOneRule!1507 thiss!11556 (h!36862 rules!1182) (list!11960 input!603))))))))

(declare-fun b!2741964 () Bool)

(assert (=> b!2741964 (= e!1726428 e!1726429)))

(declare-fun res!1151313 () Bool)

(assert (=> b!2741964 (=> res!1151313 e!1726429)))

(assert (=> b!2741964 (= res!1151313 (not (isDefined!4925 lt!970976)))))

(declare-fun b!2741965 () Bool)

(assert (=> b!2741965 (= e!1726430 (matchR!3649 (regex!4815 (h!36862 rules!1182)) (_1!18241 (findLongestMatchInner!796 (regex!4815 (h!36862 rules!1182)) Nil!31439 (size!24288 Nil!31439) lt!970982 lt!970982 (size!24288 lt!970982)))))))

(assert (= (and d!795650 c!444735) b!2741961))

(assert (= (and d!795650 (not c!444735)) b!2741962))

(assert (= (and b!2741962 (not res!1151312)) b!2741965))

(assert (= (and d!795650 res!1151315) b!2741964))

(assert (= (and b!2741964 (not res!1151313)) b!2741963))

(assert (= (and b!2741963 res!1151314) b!2741960))

(assert (=> b!2741960 m!3158305))

(assert (=> b!2741960 m!3159061))

(declare-fun m!3160065 () Bool)

(assert (=> b!2741960 m!3160065))

(declare-fun m!3160067 () Bool)

(assert (=> b!2741960 m!3160067))

(assert (=> b!2741960 m!3158305))

(assert (=> b!2741960 m!3159061))

(declare-fun m!3160069 () Bool)

(assert (=> b!2741960 m!3160069))

(declare-fun m!3160071 () Bool)

(assert (=> b!2741965 m!3160071))

(declare-fun m!3160073 () Bool)

(assert (=> b!2741965 m!3160073))

(assert (=> b!2741965 m!3160071))

(assert (=> b!2741965 m!3160073))

(declare-fun m!3160075 () Bool)

(assert (=> b!2741965 m!3160075))

(declare-fun m!3160077 () Bool)

(assert (=> b!2741965 m!3160077))

(assert (=> d!795650 m!3158305))

(assert (=> d!795650 m!3159061))

(assert (=> d!795650 m!3158939))

(declare-fun m!3160079 () Bool)

(assert (=> d!795650 m!3160079))

(assert (=> d!795650 m!3159061))

(declare-fun m!3160081 () Bool)

(assert (=> d!795650 m!3160081))

(declare-fun m!3160083 () Bool)

(assert (=> d!795650 m!3160083))

(assert (=> d!795650 m!3158305))

(declare-fun m!3160085 () Bool)

(assert (=> d!795650 m!3160085))

(assert (=> b!2741964 m!3160085))

(assert (=> b!2741962 m!3160073))

(assert (=> b!2741962 m!3160071))

(assert (=> b!2741962 m!3160073))

(assert (=> b!2741962 m!3160075))

(declare-fun m!3160087 () Bool)

(assert (=> b!2741962 m!3160087))

(declare-fun m!3160089 () Bool)

(assert (=> b!2741962 m!3160089))

(declare-fun m!3160091 () Bool)

(assert (=> b!2741962 m!3160091))

(assert (=> b!2741962 m!3158305))

(declare-fun m!3160093 () Bool)

(assert (=> b!2741962 m!3160093))

(declare-fun m!3160095 () Bool)

(assert (=> b!2741962 m!3160095))

(assert (=> b!2741962 m!3160089))

(declare-fun m!3160097 () Bool)

(assert (=> b!2741962 m!3160097))

(assert (=> b!2741962 m!3160071))

(declare-fun m!3160099 () Bool)

(assert (=> b!2741962 m!3160099))

(assert (=> b!2741962 m!3160089))

(assert (=> b!2741962 m!3160099))

(declare-fun m!3160101 () Bool)

(assert (=> b!2741962 m!3160101))

(declare-fun m!3160103 () Bool)

(assert (=> b!2741962 m!3160103))

(declare-fun m!3160105 () Bool)

(assert (=> b!2741962 m!3160105))

(assert (=> b!2741963 m!3160067))

(assert (=> b!2741963 m!3158305))

(assert (=> b!2741963 m!3158305))

(assert (=> b!2741963 m!3159061))

(assert (=> b!2741963 m!3159061))

(assert (=> b!2741963 m!3160069))

(assert (=> bm!177293 d!795650))

(declare-fun b!2741974 () Bool)

(declare-fun e!1726438 () Bool)

(assert (=> b!2741974 (= e!1726438 (not (isEmpty!18002 (right!24500 (c!444474 totalInput!328)))))))

(declare-fun b!2741975 () Bool)

(declare-fun res!1151317 () Bool)

(assert (=> b!2741975 (=> (not res!1151317) (not e!1726438))))

(assert (=> b!2741975 (= res!1151317 (isBalanced!3004 (right!24500 (c!444474 totalInput!328))))))

(declare-fun b!2741976 () Bool)

(declare-fun res!1151318 () Bool)

(assert (=> b!2741976 (=> (not res!1151318) (not e!1726438))))

(assert (=> b!2741976 (= res!1151318 (not (isEmpty!18002 (left!24170 (c!444474 totalInput!328)))))))

(declare-fun b!2741978 () Bool)

(declare-fun res!1151321 () Bool)

(assert (=> b!2741978 (=> (not res!1151321) (not e!1726438))))

(assert (=> b!2741978 (= res!1151321 (isBalanced!3004 (left!24170 (c!444474 totalInput!328))))))

(declare-fun b!2741979 () Bool)

(declare-fun e!1726437 () Bool)

(assert (=> b!2741979 (= e!1726437 e!1726438)))

(declare-fun res!1151316 () Bool)

(assert (=> b!2741979 (=> (not res!1151316) (not e!1726438))))

(assert (=> b!2741979 (= res!1151316 (<= (- 1) (- (height!1482 (left!24170 (c!444474 totalInput!328))) (height!1482 (right!24500 (c!444474 totalInput!328))))))))

(declare-fun b!2741977 () Bool)

(declare-fun res!1151320 () Bool)

(assert (=> b!2741977 (=> (not res!1151320) (not e!1726438))))

(assert (=> b!2741977 (= res!1151320 (<= (- (height!1482 (left!24170 (c!444474 totalInput!328))) (height!1482 (right!24500 (c!444474 totalInput!328)))) 1))))

(declare-fun d!795652 () Bool)

(declare-fun res!1151319 () Bool)

(assert (=> d!795652 (=> res!1151319 e!1726437)))

(assert (=> d!795652 (= res!1151319 (not ((_ is Node!9857) (c!444474 totalInput!328))))))

(assert (=> d!795652 (= (isBalanced!3004 (c!444474 totalInput!328)) e!1726437)))

(assert (= (and d!795652 (not res!1151319)) b!2741979))

(assert (= (and b!2741979 res!1151316) b!2741977))

(assert (= (and b!2741977 res!1151320) b!2741978))

(assert (= (and b!2741978 res!1151321) b!2741975))

(assert (= (and b!2741975 res!1151317) b!2741976))

(assert (= (and b!2741976 res!1151318) b!2741974))

(assert (=> b!2741979 m!3159249))

(assert (=> b!2741979 m!3159251))

(declare-fun m!3160107 () Bool)

(assert (=> b!2741974 m!3160107))

(assert (=> b!2741977 m!3159249))

(assert (=> b!2741977 m!3159251))

(declare-fun m!3160109 () Bool)

(assert (=> b!2741975 m!3160109))

(declare-fun m!3160111 () Bool)

(assert (=> b!2741978 m!3160111))

(declare-fun m!3160113 () Bool)

(assert (=> b!2741976 m!3160113))

(assert (=> d!795266 d!795652))

(declare-fun d!795654 () Bool)

(assert (=> d!795654 (= (inv!42794 (xs!12961 (c!444475 acc!331))) (<= (size!24294 (innerList!9918 (xs!12961 (c!444475 acc!331)))) 2147483647))))

(declare-fun bs!490192 () Bool)

(assert (= bs!490192 d!795654))

(declare-fun m!3160115 () Bool)

(assert (=> bs!490192 m!3160115))

(assert (=> b!2740972 d!795654))

(declare-fun d!795656 () Bool)

(declare-fun res!1151325 () Bool)

(declare-fun e!1726440 () Bool)

(assert (=> d!795656 (=> res!1151325 e!1726440)))

(assert (=> d!795656 (= res!1151325 (not ((_ is Node!9858) (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))))))

(assert (=> d!795656 (= (isBalanced!3003 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))) e!1726440)))

(declare-fun b!2741980 () Bool)

(declare-fun res!1151322 () Bool)

(declare-fun e!1726439 () Bool)

(assert (=> b!2741980 (=> (not res!1151322) (not e!1726439))))

(assert (=> b!2741980 (= res!1151322 (<= (- (height!1480 (left!24171 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))) (height!1480 (right!24501 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))))) 1))))

(declare-fun b!2741981 () Bool)

(assert (=> b!2741981 (= e!1726439 (not (isEmpty!18004 (right!24501 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))))))))

(declare-fun b!2741982 () Bool)

(declare-fun res!1151323 () Bool)

(assert (=> b!2741982 (=> (not res!1151323) (not e!1726439))))

(assert (=> b!2741982 (= res!1151323 (isBalanced!3003 (left!24171 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741983 () Bool)

(declare-fun res!1151326 () Bool)

(assert (=> b!2741983 (=> (not res!1151326) (not e!1726439))))

(assert (=> b!2741983 (= res!1151326 (not (isEmpty!18004 (left!24171 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574)))))))))

(declare-fun b!2741984 () Bool)

(declare-fun res!1151327 () Bool)

(assert (=> b!2741984 (=> (not res!1151327) (not e!1726439))))

(assert (=> b!2741984 (= res!1151327 (isBalanced!3003 (right!24501 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))))))

(declare-fun b!2741985 () Bool)

(assert (=> b!2741985 (= e!1726440 e!1726439)))

(declare-fun res!1151324 () Bool)

(assert (=> b!2741985 (=> (not res!1151324) (not e!1726439))))

(assert (=> b!2741985 (= res!1151324 (<= (- 1) (- (height!1480 (left!24171 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))) (height!1480 (right!24501 (++!7876 (c!444475 acc!331) (c!444475 (_1!18232 lt!970574))))))))))

(assert (= (and d!795656 (not res!1151325)) b!2741985))

(assert (= (and b!2741985 res!1151324) b!2741980))

(assert (= (and b!2741980 res!1151322) b!2741982))

(assert (= (and b!2741982 res!1151323) b!2741984))

(assert (= (and b!2741984 res!1151327) b!2741983))

(assert (= (and b!2741983 res!1151326) b!2741981))

(declare-fun m!3160117 () Bool)

(assert (=> b!2741984 m!3160117))

(declare-fun m!3160119 () Bool)

(assert (=> b!2741983 m!3160119))

(declare-fun m!3160121 () Bool)

(assert (=> b!2741982 m!3160121))

(declare-fun m!3160123 () Bool)

(assert (=> b!2741980 m!3160123))

(declare-fun m!3160125 () Bool)

(assert (=> b!2741980 m!3160125))

(assert (=> b!2741985 m!3160123))

(assert (=> b!2741985 m!3160125))

(declare-fun m!3160127 () Bool)

(assert (=> b!2741981 m!3160127))

(assert (=> b!2740890 d!795656))

(assert (=> b!2740890 d!795442))

(declare-fun b!2741988 () Bool)

(declare-fun e!1726442 () List!31539)

(assert (=> b!2741988 (= e!1726442 (list!11967 (xs!12960 (c!444474 (_2!18232 lt!970578)))))))

(declare-fun b!2741986 () Bool)

(declare-fun e!1726441 () List!31539)

(assert (=> b!2741986 (= e!1726441 Nil!31439)))

(declare-fun b!2741989 () Bool)

(assert (=> b!2741989 (= e!1726442 (++!7872 (list!11964 (left!24170 (c!444474 (_2!18232 lt!970578)))) (list!11964 (right!24500 (c!444474 (_2!18232 lt!970578))))))))

(declare-fun b!2741987 () Bool)

(assert (=> b!2741987 (= e!1726441 e!1726442)))

(declare-fun c!444737 () Bool)

(assert (=> b!2741987 (= c!444737 ((_ is Leaf!15009) (c!444474 (_2!18232 lt!970578))))))

(declare-fun d!795658 () Bool)

(declare-fun c!444736 () Bool)

(assert (=> d!795658 (= c!444736 ((_ is Empty!9857) (c!444474 (_2!18232 lt!970578))))))

(assert (=> d!795658 (= (list!11964 (c!444474 (_2!18232 lt!970578))) e!1726441)))

(assert (= (and d!795658 c!444736) b!2741986))

(assert (= (and d!795658 (not c!444736)) b!2741987))

(assert (= (and b!2741987 c!444737) b!2741988))

(assert (= (and b!2741987 (not c!444737)) b!2741989))

(declare-fun m!3160129 () Bool)

(assert (=> b!2741988 m!3160129))

(declare-fun m!3160131 () Bool)

(assert (=> b!2741989 m!3160131))

(declare-fun m!3160133 () Bool)

(assert (=> b!2741989 m!3160133))

(assert (=> b!2741989 m!3160131))

(assert (=> b!2741989 m!3160133))

(declare-fun m!3160135 () Bool)

(assert (=> b!2741989 m!3160135))

(assert (=> d!795182 d!795658))

(declare-fun d!795660 () Bool)

(declare-fun lt!970986 () Bool)

(assert (=> d!795660 (= lt!970986 (isEmpty!18003 (list!11961 (_1!18232 lt!970642))))))

(assert (=> d!795660 (= lt!970986 (isEmpty!18004 (c!444475 (_1!18232 lt!970642))))))

(assert (=> d!795660 (= (isEmpty!17994 (_1!18232 lt!970642)) lt!970986)))

(declare-fun bs!490193 () Bool)

(assert (= bs!490193 d!795660))

(assert (=> bs!490193 m!3158667))

(assert (=> bs!490193 m!3158667))

(declare-fun m!3160137 () Bool)

(assert (=> bs!490193 m!3160137))

(declare-fun m!3160139 () Bool)

(assert (=> bs!490193 m!3160139))

(assert (=> b!2740881 d!795660))

(declare-fun d!795662 () Bool)

(declare-fun lt!970987 () Int)

(assert (=> d!795662 (= lt!970987 (size!24288 (list!11960 (_2!18232 lt!970639))))))

(assert (=> d!795662 (= lt!970987 (size!24296 (c!444474 (_2!18232 lt!970639))))))

(assert (=> d!795662 (= (size!24289 (_2!18232 lt!970639)) lt!970987)))

(declare-fun bs!490194 () Bool)

(assert (= bs!490194 d!795662))

(assert (=> bs!490194 m!3158635))

(assert (=> bs!490194 m!3158635))

(declare-fun m!3160141 () Bool)

(assert (=> bs!490194 m!3160141))

(declare-fun m!3160143 () Bool)

(assert (=> bs!490194 m!3160143))

(assert (=> b!2740872 d!795662))

(declare-fun d!795664 () Bool)

(declare-fun lt!970988 () Int)

(assert (=> d!795664 (= lt!970988 (size!24288 (list!11960 input!603)))))

(assert (=> d!795664 (= lt!970988 (size!24296 (c!444474 input!603)))))

(assert (=> d!795664 (= (size!24289 input!603) lt!970988)))

(declare-fun bs!490195 () Bool)

(assert (= bs!490195 d!795664))

(assert (=> bs!490195 m!3158305))

(assert (=> bs!490195 m!3158305))

(assert (=> bs!490195 m!3159053))

(declare-fun m!3160145 () Bool)

(assert (=> bs!490195 m!3160145))

(assert (=> b!2740872 d!795664))

(assert (=> b!2740892 d!795438))

(assert (=> b!2740892 d!795440))

(assert (=> b!2740892 d!795442))

(assert (=> b!2740892 d!795480))

(assert (=> b!2740892 d!795482))

(declare-fun e!1726443 () Bool)

(declare-fun b!2741990 () Bool)

(declare-fun tp!861595 () Bool)

(declare-fun tp!861596 () Bool)

(assert (=> b!2741990 (= e!1726443 (and (inv!42782 (left!24170 (left!24170 (c!444474 treated!9)))) tp!861595 (inv!42782 (right!24500 (left!24170 (c!444474 treated!9)))) tp!861596))))

(declare-fun b!2741992 () Bool)

(declare-fun e!1726444 () Bool)

(declare-fun tp!861594 () Bool)

(assert (=> b!2741992 (= e!1726444 tp!861594)))

(declare-fun b!2741991 () Bool)

(assert (=> b!2741991 (= e!1726443 (and (inv!42793 (xs!12960 (left!24170 (c!444474 treated!9)))) e!1726444))))

(assert (=> b!2740935 (= tp!861472 (and (inv!42782 (left!24170 (c!444474 treated!9))) e!1726443))))

(assert (= (and b!2740935 ((_ is Node!9857) (left!24170 (c!444474 treated!9)))) b!2741990))

(assert (= b!2741991 b!2741992))

(assert (= (and b!2740935 ((_ is Leaf!15009) (left!24170 (c!444474 treated!9)))) b!2741991))

(declare-fun m!3160147 () Bool)

(assert (=> b!2741990 m!3160147))

(declare-fun m!3160149 () Bool)

(assert (=> b!2741990 m!3160149))

(declare-fun m!3160151 () Bool)

(assert (=> b!2741991 m!3160151))

(assert (=> b!2740935 m!3158727))

(declare-fun b!2741993 () Bool)

(declare-fun tp!861599 () Bool)

(declare-fun tp!861598 () Bool)

(declare-fun e!1726445 () Bool)

(assert (=> b!2741993 (= e!1726445 (and (inv!42782 (left!24170 (right!24500 (c!444474 treated!9)))) tp!861598 (inv!42782 (right!24500 (right!24500 (c!444474 treated!9)))) tp!861599))))

(declare-fun b!2741995 () Bool)

(declare-fun e!1726446 () Bool)

(declare-fun tp!861597 () Bool)

(assert (=> b!2741995 (= e!1726446 tp!861597)))

(declare-fun b!2741994 () Bool)

(assert (=> b!2741994 (= e!1726445 (and (inv!42793 (xs!12960 (right!24500 (c!444474 treated!9)))) e!1726446))))

(assert (=> b!2740935 (= tp!861473 (and (inv!42782 (right!24500 (c!444474 treated!9))) e!1726445))))

(assert (= (and b!2740935 ((_ is Node!9857) (right!24500 (c!444474 treated!9)))) b!2741993))

(assert (= b!2741994 b!2741995))

(assert (= (and b!2740935 ((_ is Leaf!15009) (right!24500 (c!444474 treated!9)))) b!2741994))

(declare-fun m!3160153 () Bool)

(assert (=> b!2741993 m!3160153))

(declare-fun m!3160155 () Bool)

(assert (=> b!2741993 m!3160155))

(declare-fun m!3160157 () Bool)

(assert (=> b!2741994 m!3160157))

(assert (=> b!2740935 m!3158729))

(declare-fun e!1726447 () Bool)

(assert (=> b!2740961 (= tp!861499 e!1726447)))

(declare-fun b!2741996 () Bool)

(assert (=> b!2741996 (= e!1726447 tp_is_empty!13913)))

(declare-fun b!2741997 () Bool)

(declare-fun tp!861601 () Bool)

(declare-fun tp!861600 () Bool)

(assert (=> b!2741997 (= e!1726447 (and tp!861601 tp!861600))))

(declare-fun b!2741998 () Bool)

(declare-fun tp!861602 () Bool)

(assert (=> b!2741998 (= e!1726447 tp!861602)))

(declare-fun b!2741999 () Bool)

(declare-fun tp!861603 () Bool)

(declare-fun tp!861604 () Bool)

(assert (=> b!2741999 (= e!1726447 (and tp!861603 tp!861604))))

(assert (= (and b!2740961 ((_ is ElementMatch!7967) (regex!4815 (h!36862 (t!227620 rules!1182))))) b!2741996))

(assert (= (and b!2740961 ((_ is Concat!13005) (regex!4815 (h!36862 (t!227620 rules!1182))))) b!2741997))

(assert (= (and b!2740961 ((_ is Star!7967) (regex!4815 (h!36862 (t!227620 rules!1182))))) b!2741998))

(assert (= (and b!2740961 ((_ is Union!7967) (regex!4815 (h!36862 (t!227620 rules!1182))))) b!2741999))

(declare-fun b!2742002 () Bool)

(declare-fun b_free!76909 () Bool)

(declare-fun b_next!77613 () Bool)

(assert (=> b!2742002 (= b_free!76909 (not b_next!77613))))

(declare-fun tp!861608 () Bool)

(declare-fun b_and!201629 () Bool)

(assert (=> b!2742002 (= tp!861608 b_and!201629)))

(declare-fun b_free!76911 () Bool)

(declare-fun b_next!77615 () Bool)

(assert (=> b!2742002 (= b_free!76911 (not b_next!77615))))

(declare-fun tp!861606 () Bool)

(declare-fun b_and!201631 () Bool)

(assert (=> b!2742002 (= tp!861606 b_and!201631)))

(declare-fun e!1726451 () Bool)

(assert (=> b!2742002 (= e!1726451 (and tp!861608 tp!861606))))

(declare-fun tp!861607 () Bool)

(declare-fun b!2742001 () Bool)

(declare-fun e!1726448 () Bool)

(assert (=> b!2742001 (= e!1726448 (and tp!861607 (inv!42772 (tag!5319 (h!36862 (t!227620 (t!227620 rules!1182))))) (inv!42778 (transformation!4815 (h!36862 (t!227620 (t!227620 rules!1182))))) e!1726451))))

(declare-fun b!2742000 () Bool)

(declare-fun e!1726449 () Bool)

(declare-fun tp!861605 () Bool)

(assert (=> b!2742000 (= e!1726449 (and e!1726448 tp!861605))))

(assert (=> b!2740960 (= tp!861497 e!1726449)))

(assert (= b!2742001 b!2742002))

(assert (= b!2742000 b!2742001))

(assert (= (and b!2740960 ((_ is Cons!31442) (t!227620 (t!227620 rules!1182)))) b!2742000))

(declare-fun m!3160159 () Bool)

(assert (=> b!2742001 m!3160159))

(declare-fun m!3160161 () Bool)

(assert (=> b!2742001 m!3160161))

(declare-fun b!2742007 () Bool)

(declare-fun e!1726454 () Bool)

(declare-fun tp!861611 () Bool)

(assert (=> b!2742007 (= e!1726454 (and tp_is_empty!13913 tp!861611))))

(assert (=> b!2740976 (= tp!861510 e!1726454)))

(assert (= (and b!2740976 ((_ is Cons!31439) (innerList!9917 (xs!12960 (c!444474 totalInput!328))))) b!2742007))

(declare-fun e!1726455 () Bool)

(assert (=> b!2740950 (= tp!861486 e!1726455)))

(declare-fun b!2742008 () Bool)

(assert (=> b!2742008 (= e!1726455 tp_is_empty!13913)))

(declare-fun b!2742009 () Bool)

(declare-fun tp!861613 () Bool)

(declare-fun tp!861612 () Bool)

(assert (=> b!2742009 (= e!1726455 (and tp!861613 tp!861612))))

(declare-fun b!2742010 () Bool)

(declare-fun tp!861614 () Bool)

(assert (=> b!2742010 (= e!1726455 tp!861614)))

(declare-fun b!2742011 () Bool)

(declare-fun tp!861615 () Bool)

(declare-fun tp!861616 () Bool)

(assert (=> b!2742011 (= e!1726455 (and tp!861615 tp!861616))))

(assert (= (and b!2740950 ((_ is ElementMatch!7967) (reg!8296 (regex!4815 (h!36862 rules!1182))))) b!2742008))

(assert (= (and b!2740950 ((_ is Concat!13005) (reg!8296 (regex!4815 (h!36862 rules!1182))))) b!2742009))

(assert (= (and b!2740950 ((_ is Star!7967) (reg!8296 (regex!4815 (h!36862 rules!1182))))) b!2742010))

(assert (= (and b!2740950 ((_ is Union!7967) (reg!8296 (regex!4815 (h!36862 rules!1182))))) b!2742011))

(declare-fun b!2742012 () Bool)

(declare-fun e!1726456 () Bool)

(declare-fun tp!861617 () Bool)

(assert (=> b!2742012 (= e!1726456 (and tp_is_empty!13913 tp!861617))))

(assert (=> b!2740937 (= tp!861471 e!1726456)))

(assert (= (and b!2740937 ((_ is Cons!31439) (innerList!9917 (xs!12960 (c!444474 treated!9))))) b!2742012))

(declare-fun tp!861620 () Bool)

(declare-fun b!2742013 () Bool)

(declare-fun e!1726457 () Bool)

(declare-fun tp!861619 () Bool)

(assert (=> b!2742013 (= e!1726457 (and (inv!42781 (left!24171 (left!24171 (c!444475 acc!331)))) tp!861620 (inv!42781 (right!24501 (left!24171 (c!444475 acc!331)))) tp!861619))))

(declare-fun b!2742015 () Bool)

(declare-fun e!1726458 () Bool)

(declare-fun tp!861618 () Bool)

(assert (=> b!2742015 (= e!1726458 tp!861618)))

(declare-fun b!2742014 () Bool)

(assert (=> b!2742014 (= e!1726457 (and (inv!42794 (xs!12961 (left!24171 (c!444475 acc!331)))) e!1726458))))

(assert (=> b!2740971 (= tp!861509 (and (inv!42781 (left!24171 (c!444475 acc!331))) e!1726457))))

(assert (= (and b!2740971 ((_ is Node!9858) (left!24171 (c!444475 acc!331)))) b!2742013))

(assert (= b!2742014 b!2742015))

(assert (= (and b!2740971 ((_ is Leaf!15010) (left!24171 (c!444475 acc!331)))) b!2742014))

(declare-fun m!3160163 () Bool)

(assert (=> b!2742013 m!3160163))

(declare-fun m!3160165 () Bool)

(assert (=> b!2742013 m!3160165))

(declare-fun m!3160167 () Bool)

(assert (=> b!2742014 m!3160167))

(assert (=> b!2740971 m!3158737))

(declare-fun b!2742016 () Bool)

(declare-fun tp!861622 () Bool)

(declare-fun tp!861623 () Bool)

(declare-fun e!1726459 () Bool)

(assert (=> b!2742016 (= e!1726459 (and (inv!42781 (left!24171 (right!24501 (c!444475 acc!331)))) tp!861623 (inv!42781 (right!24501 (right!24501 (c!444475 acc!331)))) tp!861622))))

(declare-fun b!2742018 () Bool)

(declare-fun e!1726460 () Bool)

(declare-fun tp!861621 () Bool)

(assert (=> b!2742018 (= e!1726460 tp!861621)))

(declare-fun b!2742017 () Bool)

(assert (=> b!2742017 (= e!1726459 (and (inv!42794 (xs!12961 (right!24501 (c!444475 acc!331)))) e!1726460))))

(assert (=> b!2740971 (= tp!861508 (and (inv!42781 (right!24501 (c!444475 acc!331))) e!1726459))))

(assert (= (and b!2740971 ((_ is Node!9858) (right!24501 (c!444475 acc!331)))) b!2742016))

(assert (= b!2742017 b!2742018))

(assert (= (and b!2740971 ((_ is Leaf!15010) (right!24501 (c!444475 acc!331)))) b!2742017))

(declare-fun m!3160169 () Bool)

(assert (=> b!2742016 m!3160169))

(declare-fun m!3160171 () Bool)

(assert (=> b!2742016 m!3160171))

(declare-fun m!3160173 () Bool)

(assert (=> b!2742017 m!3160173))

(assert (=> b!2740971 m!3158739))

(declare-fun e!1726461 () Bool)

(assert (=> b!2740949 (= tp!861485 e!1726461)))

(declare-fun b!2742019 () Bool)

(assert (=> b!2742019 (= e!1726461 tp_is_empty!13913)))

(declare-fun b!2742020 () Bool)

(declare-fun tp!861625 () Bool)

(declare-fun tp!861624 () Bool)

(assert (=> b!2742020 (= e!1726461 (and tp!861625 tp!861624))))

(declare-fun b!2742021 () Bool)

(declare-fun tp!861626 () Bool)

(assert (=> b!2742021 (= e!1726461 tp!861626)))

(declare-fun b!2742022 () Bool)

(declare-fun tp!861627 () Bool)

(declare-fun tp!861628 () Bool)

(assert (=> b!2742022 (= e!1726461 (and tp!861627 tp!861628))))

(assert (= (and b!2740949 ((_ is ElementMatch!7967) (regOne!16446 (regex!4815 (h!36862 rules!1182))))) b!2742019))

(assert (= (and b!2740949 ((_ is Concat!13005) (regOne!16446 (regex!4815 (h!36862 rules!1182))))) b!2742020))

(assert (= (and b!2740949 ((_ is Star!7967) (regOne!16446 (regex!4815 (h!36862 rules!1182))))) b!2742021))

(assert (= (and b!2740949 ((_ is Union!7967) (regOne!16446 (regex!4815 (h!36862 rules!1182))))) b!2742022))

(declare-fun e!1726462 () Bool)

(assert (=> b!2740949 (= tp!861484 e!1726462)))

(declare-fun b!2742023 () Bool)

(assert (=> b!2742023 (= e!1726462 tp_is_empty!13913)))

(declare-fun b!2742024 () Bool)

(declare-fun tp!861630 () Bool)

(declare-fun tp!861629 () Bool)

(assert (=> b!2742024 (= e!1726462 (and tp!861630 tp!861629))))

(declare-fun b!2742025 () Bool)

(declare-fun tp!861631 () Bool)

(assert (=> b!2742025 (= e!1726462 tp!861631)))

(declare-fun b!2742026 () Bool)

(declare-fun tp!861632 () Bool)

(declare-fun tp!861633 () Bool)

(assert (=> b!2742026 (= e!1726462 (and tp!861632 tp!861633))))

(assert (= (and b!2740949 ((_ is ElementMatch!7967) (regTwo!16446 (regex!4815 (h!36862 rules!1182))))) b!2742023))

(assert (= (and b!2740949 ((_ is Concat!13005) (regTwo!16446 (regex!4815 (h!36862 rules!1182))))) b!2742024))

(assert (= (and b!2740949 ((_ is Star!7967) (regTwo!16446 (regex!4815 (h!36862 rules!1182))))) b!2742025))

(assert (= (and b!2740949 ((_ is Union!7967) (regTwo!16446 (regex!4815 (h!36862 rules!1182))))) b!2742026))

(declare-fun tp!861635 () Bool)

(declare-fun b!2742027 () Bool)

(declare-fun e!1726463 () Bool)

(declare-fun tp!861636 () Bool)

(assert (=> b!2742027 (= e!1726463 (and (inv!42782 (left!24170 (left!24170 (c!444474 totalInput!328)))) tp!861635 (inv!42782 (right!24500 (left!24170 (c!444474 totalInput!328)))) tp!861636))))

(declare-fun b!2742029 () Bool)

(declare-fun e!1726464 () Bool)

(declare-fun tp!861634 () Bool)

(assert (=> b!2742029 (= e!1726464 tp!861634)))

(declare-fun b!2742028 () Bool)

(assert (=> b!2742028 (= e!1726463 (and (inv!42793 (xs!12960 (left!24170 (c!444474 totalInput!328)))) e!1726464))))

(assert (=> b!2740974 (= tp!861511 (and (inv!42782 (left!24170 (c!444474 totalInput!328))) e!1726463))))

(assert (= (and b!2740974 ((_ is Node!9857) (left!24170 (c!444474 totalInput!328)))) b!2742027))

(assert (= b!2742028 b!2742029))

(assert (= (and b!2740974 ((_ is Leaf!15009) (left!24170 (c!444474 totalInput!328)))) b!2742028))

(declare-fun m!3160175 () Bool)

(assert (=> b!2742027 m!3160175))

(declare-fun m!3160177 () Bool)

(assert (=> b!2742027 m!3160177))

(declare-fun m!3160179 () Bool)

(assert (=> b!2742028 m!3160179))

(assert (=> b!2740974 m!3158743))

(declare-fun e!1726465 () Bool)

(declare-fun tp!861638 () Bool)

(declare-fun b!2742030 () Bool)

(declare-fun tp!861639 () Bool)

(assert (=> b!2742030 (= e!1726465 (and (inv!42782 (left!24170 (right!24500 (c!444474 totalInput!328)))) tp!861638 (inv!42782 (right!24500 (right!24500 (c!444474 totalInput!328)))) tp!861639))))

(declare-fun b!2742032 () Bool)

(declare-fun e!1726466 () Bool)

(declare-fun tp!861637 () Bool)

(assert (=> b!2742032 (= e!1726466 tp!861637)))

(declare-fun b!2742031 () Bool)

(assert (=> b!2742031 (= e!1726465 (and (inv!42793 (xs!12960 (right!24500 (c!444474 totalInput!328)))) e!1726466))))

(assert (=> b!2740974 (= tp!861512 (and (inv!42782 (right!24500 (c!444474 totalInput!328))) e!1726465))))

(assert (= (and b!2740974 ((_ is Node!9857) (right!24500 (c!444474 totalInput!328)))) b!2742030))

(assert (= b!2742031 b!2742032))

(assert (= (and b!2740974 ((_ is Leaf!15009) (right!24500 (c!444474 totalInput!328)))) b!2742031))

(declare-fun m!3160181 () Bool)

(assert (=> b!2742030 m!3160181))

(declare-fun m!3160183 () Bool)

(assert (=> b!2742030 m!3160183))

(declare-fun m!3160185 () Bool)

(assert (=> b!2742031 m!3160185))

(assert (=> b!2740974 m!3158745))

(declare-fun b!2742033 () Bool)

(declare-fun tp!861642 () Bool)

(declare-fun e!1726467 () Bool)

(declare-fun tp!861641 () Bool)

(assert (=> b!2742033 (= e!1726467 (and (inv!42782 (left!24170 (left!24170 (c!444474 input!603)))) tp!861641 (inv!42782 (right!24500 (left!24170 (c!444474 input!603)))) tp!861642))))

(declare-fun b!2742035 () Bool)

(declare-fun e!1726468 () Bool)

(declare-fun tp!861640 () Bool)

(assert (=> b!2742035 (= e!1726468 tp!861640)))

(declare-fun b!2742034 () Bool)

(assert (=> b!2742034 (= e!1726467 (and (inv!42793 (xs!12960 (left!24170 (c!444474 input!603)))) e!1726468))))

(assert (=> b!2740977 (= tp!861514 (and (inv!42782 (left!24170 (c!444474 input!603))) e!1726467))))

(assert (= (and b!2740977 ((_ is Node!9857) (left!24170 (c!444474 input!603)))) b!2742033))

(assert (= b!2742034 b!2742035))

(assert (= (and b!2740977 ((_ is Leaf!15009) (left!24170 (c!444474 input!603)))) b!2742034))

(declare-fun m!3160187 () Bool)

(assert (=> b!2742033 m!3160187))

(declare-fun m!3160189 () Bool)

(assert (=> b!2742033 m!3160189))

(declare-fun m!3160191 () Bool)

(assert (=> b!2742034 m!3160191))

(assert (=> b!2740977 m!3158749))

(declare-fun tp!861645 () Bool)

(declare-fun b!2742036 () Bool)

(declare-fun e!1726469 () Bool)

(declare-fun tp!861644 () Bool)

(assert (=> b!2742036 (= e!1726469 (and (inv!42782 (left!24170 (right!24500 (c!444474 input!603)))) tp!861644 (inv!42782 (right!24500 (right!24500 (c!444474 input!603)))) tp!861645))))

(declare-fun b!2742038 () Bool)

(declare-fun e!1726470 () Bool)

(declare-fun tp!861643 () Bool)

(assert (=> b!2742038 (= e!1726470 tp!861643)))

(declare-fun b!2742037 () Bool)

(assert (=> b!2742037 (= e!1726469 (and (inv!42793 (xs!12960 (right!24500 (c!444474 input!603)))) e!1726470))))

(assert (=> b!2740977 (= tp!861515 (and (inv!42782 (right!24500 (c!444474 input!603))) e!1726469))))

(assert (= (and b!2740977 ((_ is Node!9857) (right!24500 (c!444474 input!603)))) b!2742036))

(assert (= b!2742037 b!2742038))

(assert (= (and b!2740977 ((_ is Leaf!15009) (right!24500 (c!444474 input!603)))) b!2742037))

(declare-fun m!3160193 () Bool)

(assert (=> b!2742036 m!3160193))

(declare-fun m!3160195 () Bool)

(assert (=> b!2742036 m!3160195))

(declare-fun m!3160197 () Bool)

(assert (=> b!2742037 m!3160197))

(assert (=> b!2740977 m!3158751))

(declare-fun b!2742052 () Bool)

(declare-fun b_free!76913 () Bool)

(declare-fun b_next!77617 () Bool)

(assert (=> b!2742052 (= b_free!76913 (not b_next!77617))))

(declare-fun tp!861656 () Bool)

(declare-fun b_and!201633 () Bool)

(assert (=> b!2742052 (= tp!861656 b_and!201633)))

(declare-fun b_free!76915 () Bool)

(declare-fun b_next!77619 () Bool)

(assert (=> b!2742052 (= b_free!76915 (not b_next!77619))))

(declare-fun tp!861659 () Bool)

(declare-fun b_and!201635 () Bool)

(assert (=> b!2742052 (= tp!861659 b_and!201635)))

(declare-fun b!2742049 () Bool)

(declare-fun e!1726486 () Bool)

(declare-fun tp!861658 () Bool)

(declare-fun e!1726485 () Bool)

(declare-fun inv!42796 (Token!9092) Bool)

(assert (=> b!2742049 (= e!1726486 (and (inv!42796 (h!36861 (innerList!9918 (xs!12961 (c!444475 acc!331))))) e!1726485 tp!861658))))

(declare-fun e!1726488 () Bool)

(assert (=> b!2742052 (= e!1726488 (and tp!861656 tp!861659))))

(declare-fun e!1726484 () Bool)

(declare-fun tp!861660 () Bool)

(declare-fun b!2742051 () Bool)

(assert (=> b!2742051 (= e!1726484 (and tp!861660 (inv!42772 (tag!5319 (rule!7263 (h!36861 (innerList!9918 (xs!12961 (c!444475 acc!331))))))) (inv!42778 (transformation!4815 (rule!7263 (h!36861 (innerList!9918 (xs!12961 (c!444475 acc!331))))))) e!1726488))))

(assert (=> b!2740973 (= tp!861507 e!1726486)))

(declare-fun b!2742050 () Bool)

(declare-fun tp!861657 () Bool)

(declare-fun inv!21 (TokenValue!5037) Bool)

(assert (=> b!2742050 (= e!1726485 (and (inv!21 (value!154840 (h!36861 (innerList!9918 (xs!12961 (c!444475 acc!331)))))) e!1726484 tp!861657))))

(assert (= b!2742051 b!2742052))

(assert (= b!2742050 b!2742051))

(assert (= b!2742049 b!2742050))

(assert (= (and b!2740973 ((_ is Cons!31441) (innerList!9918 (xs!12961 (c!444475 acc!331))))) b!2742049))

(declare-fun m!3160199 () Bool)

(assert (=> b!2742049 m!3160199))

(declare-fun m!3160201 () Bool)

(assert (=> b!2742051 m!3160201))

(declare-fun m!3160203 () Bool)

(assert (=> b!2742051 m!3160203))

(declare-fun m!3160205 () Bool)

(assert (=> b!2742050 m!3160205))

(declare-fun e!1726489 () Bool)

(assert (=> b!2740951 (= tp!861487 e!1726489)))

(declare-fun b!2742053 () Bool)

(assert (=> b!2742053 (= e!1726489 tp_is_empty!13913)))

(declare-fun b!2742054 () Bool)

(declare-fun tp!861662 () Bool)

(declare-fun tp!861661 () Bool)

(assert (=> b!2742054 (= e!1726489 (and tp!861662 tp!861661))))

(declare-fun b!2742055 () Bool)

(declare-fun tp!861663 () Bool)

(assert (=> b!2742055 (= e!1726489 tp!861663)))

(declare-fun b!2742056 () Bool)

(declare-fun tp!861664 () Bool)

(declare-fun tp!861665 () Bool)

(assert (=> b!2742056 (= e!1726489 (and tp!861664 tp!861665))))

(assert (= (and b!2740951 ((_ is ElementMatch!7967) (regOne!16447 (regex!4815 (h!36862 rules!1182))))) b!2742053))

(assert (= (and b!2740951 ((_ is Concat!13005) (regOne!16447 (regex!4815 (h!36862 rules!1182))))) b!2742054))

(assert (= (and b!2740951 ((_ is Star!7967) (regOne!16447 (regex!4815 (h!36862 rules!1182))))) b!2742055))

(assert (= (and b!2740951 ((_ is Union!7967) (regOne!16447 (regex!4815 (h!36862 rules!1182))))) b!2742056))

(declare-fun e!1726490 () Bool)

(assert (=> b!2740951 (= tp!861488 e!1726490)))

(declare-fun b!2742057 () Bool)

(assert (=> b!2742057 (= e!1726490 tp_is_empty!13913)))

(declare-fun b!2742058 () Bool)

(declare-fun tp!861667 () Bool)

(declare-fun tp!861666 () Bool)

(assert (=> b!2742058 (= e!1726490 (and tp!861667 tp!861666))))

(declare-fun b!2742059 () Bool)

(declare-fun tp!861668 () Bool)

(assert (=> b!2742059 (= e!1726490 tp!861668)))

(declare-fun b!2742060 () Bool)

(declare-fun tp!861669 () Bool)

(declare-fun tp!861670 () Bool)

(assert (=> b!2742060 (= e!1726490 (and tp!861669 tp!861670))))

(assert (= (and b!2740951 ((_ is ElementMatch!7967) (regTwo!16447 (regex!4815 (h!36862 rules!1182))))) b!2742057))

(assert (= (and b!2740951 ((_ is Concat!13005) (regTwo!16447 (regex!4815 (h!36862 rules!1182))))) b!2742058))

(assert (= (and b!2740951 ((_ is Star!7967) (regTwo!16447 (regex!4815 (h!36862 rules!1182))))) b!2742059))

(assert (= (and b!2740951 ((_ is Union!7967) (regTwo!16447 (regex!4815 (h!36862 rules!1182))))) b!2742060))

(declare-fun b!2742061 () Bool)

(declare-fun e!1726491 () Bool)

(declare-fun tp!861671 () Bool)

(assert (=> b!2742061 (= e!1726491 (and tp_is_empty!13913 tp!861671))))

(assert (=> b!2740979 (= tp!861513 e!1726491)))

(assert (= (and b!2740979 ((_ is Cons!31439) (innerList!9917 (xs!12960 (c!444474 input!603))))) b!2742061))

(check-sat (not d!795388) (not d!795380) (not b!2741195) (not b!2741057) (not b!2742061) (not b!2741737) (not b!2741063) (not b!2741061) (not b!2741797) (not b_next!77613) (not d!795660) (not b!2741981) (not d!795420) (not b!2742025) (not b!2741397) (not b!2741799) (not d!795644) (not d!795342) (not b!2742037) (not b!2741983) (not bm!177402) (not b!2741339) (not b!2741224) (not d!795546) (not d!795428) (not b!2741796) (not d!795638) (not b!2741882) (not d!795318) (not d!795378) (not d!795334) (not b!2741979) (not b!2741376) (not b!2741993) (not b!2742038) (not b!2741396) (not b!2741318) (not b!2741221) (not b!2741783) (not d!795426) (not b!2741984) (not b!2742054) (not b!2742031) (not b!2741975) (not b!2741791) (not b!2741833) (not b!2741194) (not b_next!77601) (not b!2741311) (not b!2741601) (not b!2741703) (not b!2741871) (not d!795402) (not bm!177403) (not b!2741104) (not b!2741226) b_and!201633 (not b!2741053) (not b!2741862) (not b!2742022) (not b!2741193) (not b!2741836) (not b!2741739) (not b!2742028) (not b!2741422) (not b!2742056) (not b!2741851) (not b!2741852) (not b!2741192) (not d!795606) (not b_next!77619) (not b!2742020) (not d!795630) (not b!2741886) (not b!2741989) (not d!795646) (not b!2742026) (not b!2741822) (not b!2741646) (not d!795654) (not d!795596) (not b!2741103) (not b!2742000) (not d!795524) (not b!2741743) (not b!2741315) (not b!2741800) (not bm!177301) (not bm!177392) (not d!795586) (not b!2741377) (not d!795358) (not d!795610) (not b!2741744) (not b!2742011) (not b!2741420) (not b!2741828) (not b!2741461) (not d!795598) (not d!795442) (not b!2740977) (not b!2741379) (not b!2741837) (not b!2741988) b_and!201609 b_and!201611 (not bm!177394) (not b!2741378) (not d!795634) (not d!795336) (not b!2741229) (not d!795636) (not b!2741351) (not b!2741060) (not b!2742016) (not d!795572) (not b!2741319) (not b!2742059) (not b!2740971) (not b!2741792) (not b!2742007) (not b!2741832) (not b!2741051) (not d!795436) b_and!201635 (not b!2741075) (not d!795398) (not b!2742009) (not b!2742050) (not b!2741441) (not b!2742035) (not b!2741803) (not d!795622) (not b!2741314) (not b_next!77617) (not b!2742034) (not b!2741199) (not d!795386) (not b!2741999) (not bm!177295) (not b!2741087) (not d!795624) (not b!2742055) (not b!2741465) (not b!2741575) (not b!2741124) (not b!2741872) (not b!2741997) (not b!2741649) (not b!2741992) (not b!2741228) (not b!2741645) (not b!2741572) (not d!795620) (not d!795418) (not b!2741990) (not b!2741076) (not d!795422) (not b!2741348) (not b!2742058) (not b!2741316) (not b!2741888) (not b!2741054) (not b!2741847) (not b!2741196) (not d!795354) (not b!2742024) (not b!2741198) (not d!795432) (not b!2741321) (not b!2741780) (not b!2740974) (not b!2741600) (not d!795416) (not b!2741885) (not b!2742049) (not b!2742033) (not bm!177396) (not b!2741995) (not b!2741857) (not d!795314) (not b!2742014) (not b_next!77595) tp_is_empty!13913 (not b!2741214) (not b!2741059) b_and!201631 (not d!795648) (not d!795434) (not b!2741831) (not b!2741889) (not b!2741088) (not d!795320) (not b!2741998) (not b!2742015) (not b!2741782) (not b!2741774) (not d!795512) (not b!2741335) (not b!2741835) (not b!2741789) (not b!2741742) (not b_next!77593) (not b!2741877) (not b!2741964) (not b!2741740) (not d!795612) (not b!2741225) (not b!2741190) (not b!2742030) (not b!2741216) (not b!2741978) (not b!2741270) (not b!2741991) (not b!2741220) (not b!2741380) (not b!2741352) (not d!795414) (not b!2742010) (not b!2741775) (not b!2741876) (not b!2741698) (not b!2741584) (not b!2741974) (not b!2742029) (not d!795430) (not b!2742013) (not b!2741816) (not b!2741337) (not b!2742017) (not b!2741414) (not b!2740935) (not bm!177389) (not d!795600) (not bm!177388) (not b!2741064) (not b!2741271) (not b!2741788) (not b!2741464) b_and!201629 (not b!2741960) (not b_next!77615) (not b!2741793) (not b!2741576) (not b!2741985) (not b!2741062) (not b!2741994) (not b!2741798) (not b!2741644) (not d!795560) (not b!2741884) (not b!2741440) (not b!2741217) (not b_next!77603) b_and!201619 (not b!2741701) (not b!2741977) (not d!795650) (not b!2742060) (not bm!177304) (not b!2741579) (not b!2741213) (not b!2741215) (not b!2741405) (not b!2741965) (not b!2741980) (not d!795614) (not b!2741887) (not b!2741785) (not b!2742021) (not b!2741212) (not b!2741738) (not d!795424) (not b!2741875) (not b!2741817) (not b!2742012) (not b!2741963) (not b!2741870) (not d!795662) (not d!795312) (not b!2741874) (not b!2741381) (not b!2742027) (not b!2741962) (not b!2742018) (not b!2741589) (not b!2741787) (not b!2741873) (not b!2742032) (not b!2741056) (not d!795370) b_and!201617 (not b!2741976) (not b!2741086) (not b!2741794) (not b!2741647) (not b!2742051) (not d!795324) (not b!2741982) (not b!2741786) (not d!795372) (not b!2741231) (not bm!177407) (not b!2741426) (not b!2741425) (not bm!177406) (not b!2741650) (not b!2741197) (not b!2742036) (not d!795664) (not b!2742001))
(check-sat (not b_next!77613) (not b_next!77601) b_and!201633 (not b_next!77619) b_and!201635 (not b_next!77617) (not b_next!77593) b_and!201617 b_and!201609 b_and!201611 b_and!201631 (not b_next!77595) (not b_next!77615) b_and!201629 (not b_next!77603) b_and!201619)
