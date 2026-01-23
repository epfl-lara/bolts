; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!509280 () Bool)

(assert start!509280)

(declare-fun b!4870733 () Bool)

(declare-fun b_free!130723 () Bool)

(declare-fun b_next!131513 () Bool)

(assert (=> b!4870733 (= b_free!130723 (not b_next!131513))))

(declare-fun tp!1370483 () Bool)

(declare-fun b_and!343003 () Bool)

(assert (=> b!4870733 (= tp!1370483 b_and!343003)))

(declare-fun b_free!130725 () Bool)

(declare-fun b_next!131515 () Bool)

(assert (=> b!4870733 (= b_free!130725 (not b_next!131515))))

(declare-fun tp!1370481 () Bool)

(declare-fun b_and!343005 () Bool)

(assert (=> b!4870733 (= tp!1370481 b_and!343005)))

(declare-fun b!4870723 () Bool)

(declare-fun res!2079185 () Bool)

(declare-fun e!3044837 () Bool)

(assert (=> b!4870723 (=> (not res!2079185) (not e!3044837))))

(declare-datatypes ((List!56104 0))(
  ( (Nil!55980) (Cons!55980 (h!62428 (_ BitVec 16)) (t!364174 List!56104)) )
))
(declare-datatypes ((TokenValue!8352 0))(
  ( (FloatLiteralValue!16704 (text!58909 List!56104)) (TokenValueExt!8351 (__x!33997 Int)) (Broken!41760 (value!258313 List!56104)) (Object!8475) (End!8352) (Def!8352) (Underscore!8352) (Match!8352) (Else!8352) (Error!8352) (Case!8352) (If!8352) (Extends!8352) (Abstract!8352) (Class!8352) (Val!8352) (DelimiterValue!16704 (del!8412 List!56104)) (KeywordValue!8358 (value!258314 List!56104)) (CommentValue!16704 (value!258315 List!56104)) (WhitespaceValue!16704 (value!258316 List!56104)) (IndentationValue!8352 (value!258317 List!56104)) (String!63177) (Int32!8352) (Broken!41761 (value!258318 List!56104)) (Boolean!8353) (Unit!145971) (OperatorValue!8355 (op!8412 List!56104)) (IdentifierValue!16704 (value!258319 List!56104)) (IdentifierValue!16705 (value!258320 List!56104)) (WhitespaceValue!16705 (value!258321 List!56104)) (True!16704) (False!16704) (Broken!41762 (value!258322 List!56104)) (Broken!41763 (value!258323 List!56104)) (True!16705) (RightBrace!8352) (RightBracket!8352) (Colon!8352) (Null!8352) (Comma!8352) (LeftBracket!8352) (False!16705) (LeftBrace!8352) (ImaginaryLiteralValue!8352 (text!58910 List!56104)) (StringLiteralValue!25056 (value!258324 List!56104)) (EOFValue!8352 (value!258325 List!56104)) (IdentValue!8352 (value!258326 List!56104)) (DelimiterValue!16705 (value!258327 List!56104)) (DedentValue!8352 (value!258328 List!56104)) (NewLineValue!8352 (value!258329 List!56104)) (IntegerValue!25056 (value!258330 (_ BitVec 32)) (text!58911 List!56104)) (IntegerValue!25057 (value!258331 Int) (text!58912 List!56104)) (Times!8352) (Or!8352) (Equal!8352) (Minus!8352) (Broken!41764 (value!258332 List!56104)) (And!8352) (Div!8352) (LessEqual!8352) (Mod!8352) (Concat!21469) (Not!8352) (Plus!8352) (SpaceValue!8352 (value!258333 List!56104)) (IntegerValue!25058 (value!258334 Int) (text!58913 List!56104)) (StringLiteralValue!25057 (text!58914 List!56104)) (FloatLiteralValue!16705 (text!58915 List!56104)) (BytesLiteralValue!8352 (value!258335 List!56104)) (CommentValue!16705 (value!258336 List!56104)) (StringLiteralValue!25058 (value!258337 List!56104)) (ErrorTokenValue!8352 (msg!8413 List!56104)) )
))
(declare-datatypes ((C!26432 0))(
  ( (C!26433 (val!22538 Int)) )
))
(declare-datatypes ((List!56105 0))(
  ( (Nil!55981) (Cons!55981 (h!62429 C!26432) (t!364175 List!56105)) )
))
(declare-datatypes ((IArray!29243 0))(
  ( (IArray!29244 (innerList!14679 List!56105)) )
))
(declare-datatypes ((String!63178 0))(
  ( (String!63179 (value!258338 String)) )
))
(declare-datatypes ((Regex!13117 0))(
  ( (ElementMatch!13117 (c!828448 C!26432)) (Concat!21470 (regOne!26746 Regex!13117) (regTwo!26746 Regex!13117)) (EmptyExpr!13117) (Star!13117 (reg!13446 Regex!13117)) (EmptyLang!13117) (Union!13117 (regOne!26747 Regex!13117) (regTwo!26747 Regex!13117)) )
))
(declare-datatypes ((Conc!14591 0))(
  ( (Node!14591 (left!40660 Conc!14591) (right!40990 Conc!14591) (csize!29412 Int) (cheight!14802 Int)) (Leaf!24323 (xs!17899 IArray!29243) (csize!29413 Int)) (Empty!14591) )
))
(declare-datatypes ((BalanceConc!28624 0))(
  ( (BalanceConc!28625 (c!828449 Conc!14591)) )
))
(declare-datatypes ((TokenValueInjection!16012 0))(
  ( (TokenValueInjection!16013 (toValue!10913 Int) (toChars!10772 Int)) )
))
(declare-datatypes ((Rule!15884 0))(
  ( (Rule!15885 (regex!8042 Regex!13117) (tag!8906 String!63178) (isSeparator!8042 Bool) (transformation!8042 TokenValueInjection!16012)) )
))
(declare-datatypes ((List!56106 0))(
  ( (Nil!55982) (Cons!55982 (h!62430 Rule!15884) (t!364176 List!56106)) )
))
(declare-fun rules!1164 () List!56106)

(declare-fun input!585 () BalanceConc!28624)

(declare-datatypes ((LexerInterface!7634 0))(
  ( (LexerInterfaceExt!7631 (__x!33998 Int)) (Lexer!7632) )
))
(declare-fun thiss!11460 () LexerInterface!7634)

(get-info :version)

(declare-datatypes ((Token!14668 0))(
  ( (Token!14669 (value!258339 TokenValue!8352) (rule!11180 Rule!15884) (size!36902 Int) (originalCharacters!8365 List!56105)) )
))
(declare-datatypes ((tuple2!59834 0))(
  ( (tuple2!59835 (_1!33220 Token!14668) (_2!33220 BalanceConc!28624)) )
))
(declare-datatypes ((Option!13791 0))(
  ( (None!13790) (Some!13790 (v!49712 tuple2!59834)) )
))
(declare-fun maxPrefixZipperSequence!1233 (LexerInterface!7634 List!56106 BalanceConc!28624) Option!13791)

(assert (=> b!4870723 (= res!2079185 (not ((_ is Some!13790) (maxPrefixZipperSequence!1233 thiss!11460 rules!1164 input!585))))))

(declare-fun b!4870724 () Bool)

(declare-fun e!3044833 () Bool)

(assert (=> b!4870724 (= e!3044833 true)))

(declare-fun lt!1995747 () List!56105)

(declare-fun list!17511 (BalanceConc!28624) List!56105)

(assert (=> b!4870724 (= lt!1995747 (list!17511 input!585))))

(declare-fun b!4870725 () Bool)

(declare-fun e!3044836 () Bool)

(declare-fun tp!1370482 () Bool)

(declare-fun inv!71903 (Conc!14591) Bool)

(assert (=> b!4870725 (= e!3044836 (and (inv!71903 (c!828449 input!585)) tp!1370482))))

(declare-fun res!2079184 () Bool)

(assert (=> start!509280 (=> (not res!2079184) (not e!3044837))))

(assert (=> start!509280 (= res!2079184 ((_ is Lexer!7632) thiss!11460))))

(assert (=> start!509280 e!3044837))

(assert (=> start!509280 true))

(declare-fun e!3044832 () Bool)

(assert (=> start!509280 e!3044832))

(declare-fun inv!71904 (BalanceConc!28624) Bool)

(assert (=> start!509280 (and (inv!71904 input!585) e!3044836)))

(declare-fun e!3044831 () Bool)

(declare-fun b!4870726 () Bool)

(declare-fun tp!1370484 () Bool)

(declare-fun e!3044835 () Bool)

(declare-fun inv!71899 (String!63178) Bool)

(declare-fun inv!71905 (TokenValueInjection!16012) Bool)

(assert (=> b!4870726 (= e!3044831 (and tp!1370484 (inv!71899 (tag!8906 (h!62430 rules!1164))) (inv!71905 (transformation!8042 (h!62430 rules!1164))) e!3044835))))

(declare-fun b!4870727 () Bool)

(assert (=> b!4870727 (= e!3044833 false)))

(declare-fun lt!1995749 () Int)

(declare-fun size!36903 (BalanceConc!28624) Int)

(assert (=> b!4870727 (= lt!1995749 (size!36903 input!585))))

(declare-fun b!4870728 () Bool)

(declare-fun res!2079183 () Bool)

(assert (=> b!4870728 (=> (not res!2079183) (not e!3044837))))

(declare-fun isEmpty!29957 (List!56106) Bool)

(assert (=> b!4870728 (= res!2079183 (not (isEmpty!29957 rules!1164)))))

(declare-fun b!4870729 () Bool)

(declare-fun tp!1370485 () Bool)

(assert (=> b!4870729 (= e!3044832 (and e!3044831 tp!1370485))))

(declare-fun b!4870730 () Bool)

(declare-fun res!2079182 () Bool)

(assert (=> b!4870730 (=> (not res!2079182) (not e!3044837))))

(declare-fun rulesInvariant!6732 (LexerInterface!7634 List!56106) Bool)

(assert (=> b!4870730 (= res!2079182 (rulesInvariant!6732 thiss!11460 rules!1164))))

(declare-fun b!4870731 () Bool)

(declare-fun res!2079181 () Bool)

(assert (=> b!4870731 (=> (not res!2079181) (not e!3044837))))

(assert (=> b!4870731 (= res!2079181 e!3044833)))

(declare-fun c!828447 () Bool)

(declare-datatypes ((List!56107 0))(
  ( (Nil!55983) (Cons!55983 (h!62431 Token!14668) (t!364177 List!56107)) )
))
(declare-datatypes ((IArray!29245 0))(
  ( (IArray!29246 (innerList!14680 List!56107)) )
))
(declare-datatypes ((Conc!14592 0))(
  ( (Node!14592 (left!40661 Conc!14592) (right!40991 Conc!14592) (csize!29414 Int) (cheight!14803 Int)) (Leaf!24324 (xs!17900 IArray!29245) (csize!29415 Int)) (Empty!14592) )
))
(declare-datatypes ((BalanceConc!28626 0))(
  ( (BalanceConc!28627 (c!828450 Conc!14592)) )
))
(declare-fun size!36904 (BalanceConc!28626) Int)

(assert (=> b!4870731 (= c!828447 (> (size!36904 (BalanceConc!28627 Empty!14592)) 0))))

(declare-fun b!4870732 () Bool)

(assert (=> b!4870732 (= e!3044837 false)))

(declare-fun lt!1995748 () List!56107)

(declare-fun list!17512 (BalanceConc!28626) List!56107)

(assert (=> b!4870732 (= lt!1995748 (list!17512 (BalanceConc!28627 Empty!14592)))))

(declare-datatypes ((tuple2!59836 0))(
  ( (tuple2!59837 (_1!33221 List!56107) (_2!33221 List!56105)) )
))
(declare-fun lt!1995750 () tuple2!59836)

(declare-fun lexList!2107 (LexerInterface!7634 List!56106 List!56105) tuple2!59836)

(assert (=> b!4870732 (= lt!1995750 (lexList!2107 thiss!11460 rules!1164 (list!17511 input!585)))))

(assert (=> b!4870733 (= e!3044835 (and tp!1370483 tp!1370481))))

(assert (= (and start!509280 res!2079184) b!4870728))

(assert (= (and b!4870728 res!2079183) b!4870730))

(assert (= (and b!4870730 res!2079182) b!4870723))

(assert (= (and b!4870723 res!2079185) b!4870731))

(assert (= (and b!4870731 c!828447) b!4870727))

(assert (= (and b!4870731 (not c!828447)) b!4870724))

(assert (= (and b!4870731 res!2079181) b!4870732))

(assert (= b!4870726 b!4870733))

(assert (= b!4870729 b!4870726))

(assert (= (and start!509280 ((_ is Cons!55982) rules!1164)) b!4870729))

(assert (= start!509280 b!4870725))

(declare-fun m!5870960 () Bool)

(assert (=> b!4870725 m!5870960))

(declare-fun m!5870962 () Bool)

(assert (=> b!4870724 m!5870962))

(declare-fun m!5870964 () Bool)

(assert (=> b!4870731 m!5870964))

(declare-fun m!5870966 () Bool)

(assert (=> b!4870726 m!5870966))

(declare-fun m!5870968 () Bool)

(assert (=> b!4870726 m!5870968))

(declare-fun m!5870970 () Bool)

(assert (=> b!4870732 m!5870970))

(assert (=> b!4870732 m!5870962))

(assert (=> b!4870732 m!5870962))

(declare-fun m!5870972 () Bool)

(assert (=> b!4870732 m!5870972))

(declare-fun m!5870974 () Bool)

(assert (=> b!4870728 m!5870974))

(declare-fun m!5870976 () Bool)

(assert (=> b!4870723 m!5870976))

(declare-fun m!5870978 () Bool)

(assert (=> b!4870727 m!5870978))

(declare-fun m!5870980 () Bool)

(assert (=> b!4870730 m!5870980))

(declare-fun m!5870982 () Bool)

(assert (=> start!509280 m!5870982))

(check-sat (not b!4870730) (not b!4870729) (not b!4870727) (not b_next!131513) (not b!4870731) (not b!4870723) (not start!509280) (not b!4870725) (not b!4870728) b_and!343003 (not b!4870726) b_and!343005 (not b!4870724) (not b_next!131515) (not b!4870732))
(check-sat b_and!343005 b_and!343003 (not b_next!131513) (not b_next!131515))
