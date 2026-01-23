; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508224 () Bool)

(assert start!508224)

(declare-fun b!4862249 () Bool)

(declare-fun b_free!130539 () Bool)

(declare-fun b_next!131329 () Bool)

(assert (=> b!4862249 (= b_free!130539 (not b_next!131329))))

(declare-fun tp!1368159 () Bool)

(declare-fun b_and!342391 () Bool)

(assert (=> b!4862249 (= tp!1368159 b_and!342391)))

(declare-fun b_free!130541 () Bool)

(declare-fun b_next!131331 () Bool)

(assert (=> b!4862249 (= b_free!130541 (not b_next!131331))))

(declare-fun tp!1368158 () Bool)

(declare-fun b_and!342393 () Bool)

(assert (=> b!4862249 (= tp!1368158 b_and!342393)))

(declare-fun b!4862248 () Bool)

(declare-fun res!2075678 () Bool)

(declare-fun e!3040035 () Bool)

(assert (=> b!4862248 (=> (not res!2075678) (not e!3040035))))

(declare-datatypes ((LexerInterface!7610 0))(
  ( (LexerInterfaceExt!7607 (__x!33949 Int)) (Lexer!7608) )
))
(declare-fun thiss!11777 () LexerInterface!7610)

(declare-datatypes ((List!56004 0))(
  ( (Nil!55880) (Cons!55880 (h!62328 (_ BitVec 16)) (t!363628 List!56004)) )
))
(declare-datatypes ((TokenValue!8328 0))(
  ( (FloatLiteralValue!16656 (text!58741 List!56004)) (TokenValueExt!8327 (__x!33950 Int)) (Broken!41640 (value!257631 List!56004)) (Object!8451) (End!8328) (Def!8328) (Underscore!8328) (Match!8328) (Else!8328) (Error!8328) (Case!8328) (If!8328) (Extends!8328) (Abstract!8328) (Class!8328) (Val!8328) (DelimiterValue!16656 (del!8388 List!56004)) (KeywordValue!8334 (value!257632 List!56004)) (CommentValue!16656 (value!257633 List!56004)) (WhitespaceValue!16656 (value!257634 List!56004)) (IndentationValue!8328 (value!257635 List!56004)) (String!63057) (Int32!8328) (Broken!41641 (value!257636 List!56004)) (Boolean!8329) (Unit!145911) (OperatorValue!8331 (op!8388 List!56004)) (IdentifierValue!16656 (value!257637 List!56004)) (IdentifierValue!16657 (value!257638 List!56004)) (WhitespaceValue!16657 (value!257639 List!56004)) (True!16656) (False!16656) (Broken!41642 (value!257640 List!56004)) (Broken!41643 (value!257641 List!56004)) (True!16657) (RightBrace!8328) (RightBracket!8328) (Colon!8328) (Null!8328) (Comma!8328) (LeftBracket!8328) (False!16657) (LeftBrace!8328) (ImaginaryLiteralValue!8328 (text!58742 List!56004)) (StringLiteralValue!24984 (value!257642 List!56004)) (EOFValue!8328 (value!257643 List!56004)) (IdentValue!8328 (value!257644 List!56004)) (DelimiterValue!16657 (value!257645 List!56004)) (DedentValue!8328 (value!257646 List!56004)) (NewLineValue!8328 (value!257647 List!56004)) (IntegerValue!24984 (value!257648 (_ BitVec 32)) (text!58743 List!56004)) (IntegerValue!24985 (value!257649 Int) (text!58744 List!56004)) (Times!8328) (Or!8328) (Equal!8328) (Minus!8328) (Broken!41644 (value!257650 List!56004)) (And!8328) (Div!8328) (LessEqual!8328) (Mod!8328) (Concat!21421) (Not!8328) (Plus!8328) (SpaceValue!8328 (value!257651 List!56004)) (IntegerValue!24986 (value!257652 Int) (text!58745 List!56004)) (StringLiteralValue!24985 (text!58746 List!56004)) (FloatLiteralValue!16657 (text!58747 List!56004)) (BytesLiteralValue!8328 (value!257653 List!56004)) (CommentValue!16657 (value!257654 List!56004)) (StringLiteralValue!24986 (value!257655 List!56004)) (ErrorTokenValue!8328 (msg!8389 List!56004)) )
))
(declare-datatypes ((C!26384 0))(
  ( (C!26385 (val!22514 Int)) )
))
(declare-datatypes ((List!56005 0))(
  ( (Nil!55881) (Cons!55881 (h!62329 C!26384) (t!363629 List!56005)) )
))
(declare-datatypes ((IArray!29155 0))(
  ( (IArray!29156 (innerList!14635 List!56005)) )
))
(declare-datatypes ((Conc!14547 0))(
  ( (Node!14547 (left!40588 Conc!14547) (right!40918 Conc!14547) (csize!29324 Int) (cheight!14758 Int)) (Leaf!24267 (xs!17853 IArray!29155) (csize!29325 Int)) (Empty!14547) )
))
(declare-datatypes ((BalanceConc!28536 0))(
  ( (BalanceConc!28537 (c!826940 Conc!14547)) )
))
(declare-datatypes ((TokenValueInjection!15964 0))(
  ( (TokenValueInjection!15965 (toValue!10873 Int) (toChars!10732 Int)) )
))
(declare-datatypes ((Regex!13093 0))(
  ( (ElementMatch!13093 (c!826941 C!26384)) (Concat!21422 (regOne!26698 Regex!13093) (regTwo!26698 Regex!13093)) (EmptyExpr!13093) (Star!13093 (reg!13422 Regex!13093)) (EmptyLang!13093) (Union!13093 (regOne!26699 Regex!13093) (regTwo!26699 Regex!13093)) )
))
(declare-datatypes ((String!63058 0))(
  ( (String!63059 (value!257656 String)) )
))
(declare-datatypes ((Rule!15836 0))(
  ( (Rule!15837 (regex!8018 Regex!13093) (tag!8882 String!63058) (isSeparator!8018 Bool) (transformation!8018 TokenValueInjection!15964)) )
))
(declare-datatypes ((List!56006 0))(
  ( (Nil!55882) (Cons!55882 (h!62330 Rule!15836) (t!363630 List!56006)) )
))
(declare-fun rules!1248 () List!56006)

(declare-fun rulesInvariant!6708 (LexerInterface!7610 List!56006) Bool)

(assert (=> b!4862248 (= res!2075678 (rulesInvariant!6708 thiss!11777 rules!1248))))

(declare-fun e!3040033 () Bool)

(assert (=> b!4862249 (= e!3040033 (and tp!1368159 tp!1368158))))

(declare-fun tp!1368155 () Bool)

(declare-fun b!4862250 () Bool)

(declare-fun e!3040031 () Bool)

(declare-fun inv!71767 (String!63058) Bool)

(declare-fun inv!71771 (TokenValueInjection!15964) Bool)

(assert (=> b!4862250 (= e!3040031 (and tp!1368155 (inv!71767 (tag!8882 (h!62330 rules!1248))) (inv!71771 (transformation!8018 (h!62330 rules!1248))) e!3040033))))

(declare-fun res!2075681 () Bool)

(assert (=> start!508224 (=> (not res!2075681) (not e!3040035))))

(get-info :version)

(assert (=> start!508224 (= res!2075681 ((_ is Lexer!7608) thiss!11777))))

(assert (=> start!508224 e!3040035))

(assert (=> start!508224 true))

(declare-fun e!3040038 () Bool)

(assert (=> start!508224 e!3040038))

(declare-fun totalInput!332 () BalanceConc!28536)

(declare-fun e!3040034 () Bool)

(declare-fun inv!71772 (BalanceConc!28536) Bool)

(assert (=> start!508224 (and (inv!71772 totalInput!332) e!3040034)))

(declare-fun input!661 () BalanceConc!28536)

(declare-fun e!3040032 () Bool)

(assert (=> start!508224 (and (inv!71772 input!661) e!3040032)))

(declare-fun b!4862251 () Bool)

(declare-fun e!3040030 () Bool)

(assert (=> b!4862251 (= e!3040035 e!3040030)))

(declare-fun res!2075680 () Bool)

(assert (=> b!4862251 (=> (not res!2075680) (not e!3040030))))

(declare-fun lt!1992607 () List!56005)

(declare-fun isSuffix!1047 (List!56005 List!56005) Bool)

(declare-fun list!17448 (BalanceConc!28536) List!56005)

(assert (=> b!4862251 (= res!2075680 (isSuffix!1047 lt!1992607 (list!17448 totalInput!332)))))

(assert (=> b!4862251 (= lt!1992607 (list!17448 input!661))))

(declare-fun b!4862252 () Bool)

(declare-fun tp!1368156 () Bool)

(declare-fun inv!71773 (Conc!14547) Bool)

(assert (=> b!4862252 (= e!3040032 (and (inv!71773 (c!826940 input!661)) tp!1368156))))

(declare-fun b!4862253 () Bool)

(declare-fun tp!1368157 () Bool)

(assert (=> b!4862253 (= e!3040034 (and (inv!71773 (c!826940 totalInput!332)) tp!1368157))))

(declare-fun b!4862254 () Bool)

(declare-fun e!3040041 () Bool)

(declare-datatypes ((Token!14624 0))(
  ( (Token!14625 (value!257657 TokenValue!8328) (rule!11136 Rule!15836) (size!36810 Int) (originalCharacters!8343 List!56005)) )
))
(declare-datatypes ((List!56007 0))(
  ( (Nil!55883) (Cons!55883 (h!62331 Token!14624) (t!363631 List!56007)) )
))
(declare-datatypes ((IArray!29157 0))(
  ( (IArray!29158 (innerList!14636 List!56007)) )
))
(declare-datatypes ((Conc!14548 0))(
  ( (Node!14548 (left!40589 Conc!14548) (right!40919 Conc!14548) (csize!29326 Int) (cheight!14759 Int)) (Leaf!24268 (xs!17854 IArray!29157) (csize!29327 Int)) (Empty!14548) )
))
(declare-datatypes ((BalanceConc!28538 0))(
  ( (BalanceConc!28539 (c!826942 Conc!14548)) )
))
(declare-fun lt!1992608 () BalanceConc!28538)

(declare-fun isEmpty!29880 (BalanceConc!28538) Bool)

(assert (=> b!4862254 (= e!3040041 (isEmpty!29880 lt!1992608))))

(declare-fun b!4862255 () Bool)

(declare-fun tp!1368154 () Bool)

(assert (=> b!4862255 (= e!3040038 (and e!3040031 tp!1368154))))

(declare-fun b!4862256 () Bool)

(declare-fun e!3040037 () Bool)

(declare-datatypes ((tuple2!59706 0))(
  ( (tuple2!59707 (_1!33156 BalanceConc!28538) (_2!33156 BalanceConc!28536)) )
))
(declare-fun lt!1992604 () tuple2!59706)

(assert (=> b!4862256 (= e!3040037 (not (= (list!17448 (_2!33156 lt!1992604)) lt!1992607)))))

(declare-fun b!4862257 () Bool)

(declare-fun e!3040039 () Bool)

(assert (=> b!4862257 (= e!3040030 e!3040039)))

(declare-fun res!2075679 () Bool)

(assert (=> b!4862257 (=> (not res!2075679) (not e!3040039))))

(declare-datatypes ((tuple2!59708 0))(
  ( (tuple2!59709 (_1!33157 Token!14624) (_2!33157 BalanceConc!28536)) )
))
(declare-datatypes ((Option!13763 0))(
  ( (None!13762) (Some!13762 (v!49664 tuple2!59708)) )
))
(declare-fun lt!1992605 () Option!13763)

(assert (=> b!4862257 (= res!2075679 ((_ is Some!13762) lt!1992605))))

(declare-fun maxPrefixZipperSequenceV2!617 (LexerInterface!7610 List!56006 BalanceConc!28536 BalanceConc!28536) Option!13763)

(assert (=> b!4862257 (= lt!1992605 (maxPrefixZipperSequenceV2!617 thiss!11777 rules!1248 input!661 totalInput!332))))

(declare-fun b!4862258 () Bool)

(declare-fun e!3040036 () Bool)

(assert (=> b!4862258 (= e!3040036 false)))

(declare-fun lt!1992606 () Bool)

(assert (=> b!4862258 (= lt!1992606 e!3040037)))

(declare-fun c!826939 () Bool)

(declare-fun size!36811 (BalanceConc!28538) Int)

(assert (=> b!4862258 (= c!826939 (> (size!36811 lt!1992608) 0))))

(declare-fun prepend!1384 (BalanceConc!28538 Token!14624) BalanceConc!28538)

(assert (=> b!4862258 (= lt!1992608 (prepend!1384 (_1!33156 lt!1992604) (_1!33157 (v!49664 lt!1992605))))))

(declare-fun b!4862259 () Bool)

(declare-fun res!2075675 () Bool)

(assert (=> b!4862259 (=> (not res!2075675) (not e!3040035))))

(declare-fun isEmpty!29881 (List!56006) Bool)

(assert (=> b!4862259 (= res!2075675 (not (isEmpty!29881 rules!1248)))))

(declare-fun b!4862260 () Bool)

(assert (=> b!4862260 (= e!3040039 e!3040036)))

(declare-fun res!2075677 () Bool)

(assert (=> b!4862260 (=> (not res!2075677) (not e!3040036))))

(declare-fun ++!12167 (List!56005 List!56005) List!56005)

(declare-fun charsOf!5329 (Token!14624) BalanceConc!28536)

(assert (=> b!4862260 (= res!2075677 (= (++!12167 (list!17448 (charsOf!5329 (_1!33157 (v!49664 lt!1992605)))) (list!17448 (_2!33157 (v!49664 lt!1992605)))) lt!1992607))))

(declare-fun lexRec!839 (LexerInterface!7610 List!56006 BalanceConc!28536) tuple2!59706)

(assert (=> b!4862260 (= lt!1992604 (lexRec!839 thiss!11777 rules!1248 (_2!33157 (v!49664 lt!1992605))))))

(declare-fun b!4862261 () Bool)

(assert (=> b!4862261 (= e!3040037 e!3040041)))

(declare-fun res!2075676 () Bool)

(declare-fun size!36812 (BalanceConc!28536) Int)

(assert (=> b!4862261 (= res!2075676 (>= (size!36812 (_2!33156 lt!1992604)) (size!36812 input!661)))))

(assert (=> b!4862261 (=> res!2075676 e!3040041)))

(assert (= (and start!508224 res!2075681) b!4862259))

(assert (= (and b!4862259 res!2075675) b!4862248))

(assert (= (and b!4862248 res!2075678) b!4862251))

(assert (= (and b!4862251 res!2075680) b!4862257))

(assert (= (and b!4862257 res!2075679) b!4862260))

(assert (= (and b!4862260 res!2075677) b!4862258))

(assert (= (and b!4862258 c!826939) b!4862261))

(assert (= (and b!4862258 (not c!826939)) b!4862256))

(assert (= (and b!4862261 (not res!2075676)) b!4862254))

(assert (= b!4862250 b!4862249))

(assert (= b!4862255 b!4862250))

(assert (= (and start!508224 ((_ is Cons!55882) rules!1248)) b!4862255))

(assert (= start!508224 b!4862253))

(assert (= start!508224 b!4862252))

(declare-fun m!5859798 () Bool)

(assert (=> b!4862251 m!5859798))

(assert (=> b!4862251 m!5859798))

(declare-fun m!5859800 () Bool)

(assert (=> b!4862251 m!5859800))

(declare-fun m!5859802 () Bool)

(assert (=> b!4862251 m!5859802))

(declare-fun m!5859804 () Bool)

(assert (=> b!4862250 m!5859804))

(declare-fun m!5859806 () Bool)

(assert (=> b!4862250 m!5859806))

(declare-fun m!5859808 () Bool)

(assert (=> b!4862259 m!5859808))

(declare-fun m!5859810 () Bool)

(assert (=> b!4862257 m!5859810))

(declare-fun m!5859812 () Bool)

(assert (=> b!4862260 m!5859812))

(declare-fun m!5859814 () Bool)

(assert (=> b!4862260 m!5859814))

(declare-fun m!5859816 () Bool)

(assert (=> b!4862260 m!5859816))

(assert (=> b!4862260 m!5859812))

(assert (=> b!4862260 m!5859814))

(declare-fun m!5859818 () Bool)

(assert (=> b!4862260 m!5859818))

(declare-fun m!5859820 () Bool)

(assert (=> b!4862260 m!5859820))

(assert (=> b!4862260 m!5859818))

(declare-fun m!5859822 () Bool)

(assert (=> b!4862252 m!5859822))

(declare-fun m!5859824 () Bool)

(assert (=> b!4862261 m!5859824))

(declare-fun m!5859826 () Bool)

(assert (=> b!4862261 m!5859826))

(declare-fun m!5859828 () Bool)

(assert (=> b!4862258 m!5859828))

(declare-fun m!5859830 () Bool)

(assert (=> b!4862258 m!5859830))

(declare-fun m!5859832 () Bool)

(assert (=> start!508224 m!5859832))

(declare-fun m!5859834 () Bool)

(assert (=> start!508224 m!5859834))

(declare-fun m!5859836 () Bool)

(assert (=> b!4862254 m!5859836))

(declare-fun m!5859838 () Bool)

(assert (=> b!4862253 m!5859838))

(declare-fun m!5859840 () Bool)

(assert (=> b!4862256 m!5859840))

(declare-fun m!5859842 () Bool)

(assert (=> b!4862248 m!5859842))

(check-sat (not b_next!131331) (not start!508224) (not b!4862248) (not b!4862250) (not b!4862258) (not b!4862252) b_and!342391 (not b!4862259) (not b!4862251) (not b!4862260) (not b!4862257) (not b!4862253) b_and!342393 (not b!4862256) (not b!4862261) (not b!4862254) (not b!4862255) (not b_next!131329))
(check-sat b_and!342393 b_and!342391 (not b_next!131329) (not b_next!131331))
