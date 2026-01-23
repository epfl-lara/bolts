; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511440 () Bool)

(assert start!511440)

(declare-fun b!4886653 () Bool)

(declare-fun b_free!131283 () Bool)

(declare-fun b_next!132073 () Bool)

(assert (=> b!4886653 (= b_free!131283 (not b_next!132073))))

(declare-fun tp!1375219 () Bool)

(declare-fun b_and!344115 () Bool)

(assert (=> b!4886653 (= tp!1375219 b_and!344115)))

(declare-fun b_free!131285 () Bool)

(declare-fun b_next!132075 () Bool)

(assert (=> b!4886653 (= b_free!131285 (not b_next!132075))))

(declare-fun tp!1375221 () Bool)

(declare-fun b_and!344117 () Bool)

(assert (=> b!4886653 (= tp!1375221 b_and!344117)))

(declare-fun b!4886644 () Bool)

(declare-fun res!2086723 () Bool)

(declare-fun e!3054672 () Bool)

(assert (=> b!4886644 (=> res!2086723 e!3054672)))

(declare-fun lt!2002506 () Bool)

(assert (=> b!4886644 (= res!2086723 lt!2002506)))

(declare-fun b!4886645 () Bool)

(declare-fun e!3054676 () Bool)

(declare-fun e!3054673 () Bool)

(assert (=> b!4886645 (= e!3054676 (not e!3054673))))

(declare-fun res!2086718 () Bool)

(assert (=> b!4886645 (=> res!2086718 e!3054673)))

(declare-datatypes ((C!26624 0))(
  ( (C!26625 (val!22646 Int)) )
))
(declare-datatypes ((List!56419 0))(
  ( (Nil!56295) (Cons!56295 (h!62743 C!26624) (t!365065 List!56419)) )
))
(declare-datatypes ((IArray!29473 0))(
  ( (IArray!29474 (innerList!14794 List!56419)) )
))
(declare-datatypes ((Conc!14706 0))(
  ( (Node!14706 (left!40889 Conc!14706) (right!41219 Conc!14706) (csize!29642 Int) (cheight!14917 Int)) (Leaf!24492 (xs!18022 IArray!29473) (csize!29643 Int)) (Empty!14706) )
))
(declare-datatypes ((BalanceConc!28842 0))(
  ( (BalanceConc!28843 (c!830745 Conc!14706)) )
))
(declare-datatypes ((List!56420 0))(
  ( (Nil!56296) (Cons!56296 (h!62744 (_ BitVec 16)) (t!365066 List!56420)) )
))
(declare-datatypes ((TokenValue!8448 0))(
  ( (FloatLiteralValue!16896 (text!59581 List!56420)) (TokenValueExt!8447 (__x!34189 Int)) (Broken!42240 (value!261059 List!56420)) (Object!8571) (End!8448) (Def!8448) (Underscore!8448) (Match!8448) (Else!8448) (Error!8448) (Case!8448) (If!8448) (Extends!8448) (Abstract!8448) (Class!8448) (Val!8448) (DelimiterValue!16896 (del!8508 List!56420)) (KeywordValue!8454 (value!261060 List!56420)) (CommentValue!16896 (value!261061 List!56420)) (WhitespaceValue!16896 (value!261062 List!56420)) (IndentationValue!8448 (value!261063 List!56420)) (String!63681) (Int32!8448) (Broken!42241 (value!261064 List!56420)) (Boolean!8449) (Unit!146285) (OperatorValue!8451 (op!8508 List!56420)) (IdentifierValue!16896 (value!261065 List!56420)) (IdentifierValue!16897 (value!261066 List!56420)) (WhitespaceValue!16897 (value!261067 List!56420)) (True!16896) (False!16896) (Broken!42242 (value!261068 List!56420)) (Broken!42243 (value!261069 List!56420)) (True!16897) (RightBrace!8448) (RightBracket!8448) (Colon!8448) (Null!8448) (Comma!8448) (LeftBracket!8448) (False!16897) (LeftBrace!8448) (ImaginaryLiteralValue!8448 (text!59582 List!56420)) (StringLiteralValue!25344 (value!261070 List!56420)) (EOFValue!8448 (value!261071 List!56420)) (IdentValue!8448 (value!261072 List!56420)) (DelimiterValue!16897 (value!261073 List!56420)) (DedentValue!8448 (value!261074 List!56420)) (NewLineValue!8448 (value!261075 List!56420)) (IntegerValue!25344 (value!261076 (_ BitVec 32)) (text!59583 List!56420)) (IntegerValue!25345 (value!261077 Int) (text!59584 List!56420)) (Times!8448) (Or!8448) (Equal!8448) (Minus!8448) (Broken!42244 (value!261078 List!56420)) (And!8448) (Div!8448) (LessEqual!8448) (Mod!8448) (Concat!21661) (Not!8448) (Plus!8448) (SpaceValue!8448 (value!261079 List!56420)) (IntegerValue!25346 (value!261080 Int) (text!59585 List!56420)) (StringLiteralValue!25345 (text!59586 List!56420)) (FloatLiteralValue!16897 (text!59587 List!56420)) (BytesLiteralValue!8448 (value!261081 List!56420)) (CommentValue!16897 (value!261082 List!56420)) (StringLiteralValue!25346 (value!261083 List!56420)) (ErrorTokenValue!8448 (msg!8509 List!56420)) )
))
(declare-datatypes ((Regex!13213 0))(
  ( (ElementMatch!13213 (c!830746 C!26624)) (Concat!21662 (regOne!26938 Regex!13213) (regTwo!26938 Regex!13213)) (EmptyExpr!13213) (Star!13213 (reg!13542 Regex!13213)) (EmptyLang!13213) (Union!13213 (regOne!26939 Regex!13213) (regTwo!26939 Regex!13213)) )
))
(declare-datatypes ((String!63682 0))(
  ( (String!63683 (value!261084 String)) )
))
(declare-datatypes ((TokenValueInjection!16204 0))(
  ( (TokenValueInjection!16205 (toValue!11025 Int) (toChars!10884 Int)) )
))
(declare-datatypes ((Rule!16076 0))(
  ( (Rule!16077 (regex!8138 Regex!13213) (tag!9002 String!63682) (isSeparator!8138 Bool) (transformation!8138 TokenValueInjection!16204)) )
))
(declare-datatypes ((List!56421 0))(
  ( (Nil!56297) (Cons!56297 (h!62745 Rule!16076) (t!365067 List!56421)) )
))
(declare-fun rulesArg!165 () List!56421)

(get-info :version)

(assert (=> b!4886645 (= res!2086718 (or (and ((_ is Cons!56297) rulesArg!165) ((_ is Nil!56297) (t!365067 rulesArg!165))) (not ((_ is Cons!56297) rulesArg!165))))))

(declare-fun lt!2002503 () List!56419)

(declare-fun isPrefix!4860 (List!56419 List!56419) Bool)

(assert (=> b!4886645 (isPrefix!4860 lt!2002503 lt!2002503)))

(declare-datatypes ((Unit!146286 0))(
  ( (Unit!146287) )
))
(declare-fun lt!2002504 () Unit!146286)

(declare-fun lemmaIsPrefixRefl!3257 (List!56419 List!56419) Unit!146286)

(assert (=> b!4886645 (= lt!2002504 (lemmaIsPrefixRefl!3257 lt!2002503 lt!2002503))))

(declare-fun input!1236 () BalanceConc!28842)

(declare-fun list!17673 (BalanceConc!28842) List!56419)

(assert (=> b!4886645 (= lt!2002503 (list!17673 input!1236))))

(declare-fun b!4886646 () Bool)

(declare-fun e!3054669 () Bool)

(declare-datatypes ((Token!14844 0))(
  ( (Token!14845 (value!261085 TokenValue!8448) (rule!11310 Rule!16076) (size!37074 Int) (originalCharacters!8453 List!56419)) )
))
(declare-datatypes ((tuple2!60276 0))(
  ( (tuple2!60277 (_1!33441 Token!14844) (_2!33441 List!56419)) )
))
(declare-datatypes ((Option!13959 0))(
  ( (None!13958) (Some!13958 (v!49908 tuple2!60276)) )
))
(declare-fun lt!2002501 () Option!13959)

(declare-fun isDefined!10978 (Option!13959) Bool)

(assert (=> b!4886646 (= e!3054669 (isDefined!10978 lt!2002501))))

(declare-fun res!2086719 () Bool)

(assert (=> start!511440 (=> (not res!2086719) (not e!3054676))))

(declare-datatypes ((LexerInterface!7730 0))(
  ( (LexerInterfaceExt!7727 (__x!34190 Int)) (Lexer!7728) )
))
(declare-fun thiss!14805 () LexerInterface!7730)

(assert (=> start!511440 (= res!2086719 ((_ is Lexer!7728) thiss!14805))))

(assert (=> start!511440 e!3054676))

(assert (=> start!511440 true))

(declare-fun e!3054668 () Bool)

(assert (=> start!511440 e!3054668))

(declare-fun e!3054674 () Bool)

(declare-fun inv!72469 (BalanceConc!28842) Bool)

(assert (=> start!511440 (and (inv!72469 input!1236) e!3054674)))

(declare-fun b!4886647 () Bool)

(declare-fun res!2086720 () Bool)

(assert (=> b!4886647 (=> (not res!2086720) (not e!3054676))))

(declare-fun isEmpty!30172 (List!56421) Bool)

(assert (=> b!4886647 (= res!2086720 (not (isEmpty!30172 rulesArg!165)))))

(declare-fun b!4886648 () Bool)

(declare-fun res!2086716 () Bool)

(assert (=> b!4886648 (=> (not res!2086716) (not e!3054676))))

(declare-fun rulesValidInductive!3117 (LexerInterface!7730 List!56421) Bool)

(assert (=> b!4886648 (= res!2086716 (rulesValidInductive!3117 thiss!14805 rulesArg!165))))

(declare-fun b!4886649 () Bool)

(declare-fun e!3054666 () Bool)

(declare-datatypes ((tuple2!60278 0))(
  ( (tuple2!60279 (_1!33442 Token!14844) (_2!33442 BalanceConc!28842)) )
))
(declare-fun lt!2002509 () tuple2!60278)

(declare-fun lt!2002505 () tuple2!60276)

(assert (=> b!4886649 (= e!3054666 (not (= (list!17673 (_2!33442 lt!2002509)) (_2!33441 lt!2002505))))))

(declare-fun tp!1375218 () Bool)

(declare-fun e!3054667 () Bool)

(declare-fun e!3054665 () Bool)

(declare-fun b!4886650 () Bool)

(declare-fun inv!72465 (String!63682) Bool)

(declare-fun inv!72470 (TokenValueInjection!16204) Bool)

(assert (=> b!4886650 (= e!3054667 (and tp!1375218 (inv!72465 (tag!9002 (h!62745 rulesArg!165))) (inv!72470 (transformation!8138 (h!62745 rulesArg!165))) e!3054665))))

(declare-fun b!4886651 () Bool)

(declare-fun tp!1375220 () Bool)

(assert (=> b!4886651 (= e!3054668 (and e!3054667 tp!1375220))))

(declare-fun b!4886652 () Bool)

(declare-fun e!3054675 () Bool)

(assert (=> b!4886652 (= e!3054675 e!3054672)))

(declare-fun res!2086717 () Bool)

(assert (=> b!4886652 (=> res!2086717 e!3054672)))

(declare-fun e!3054670 () Bool)

(assert (=> b!4886652 (= res!2086717 e!3054670)))

(declare-fun res!2086721 () Bool)

(assert (=> b!4886652 (=> (not res!2086721) (not e!3054670))))

(assert (=> b!4886652 (= res!2086721 (not lt!2002506))))

(declare-fun lt!2002510 () Bool)

(assert (=> b!4886652 (= lt!2002506 (not lt!2002510))))

(assert (=> b!4886653 (= e!3054665 (and tp!1375219 tp!1375221))))

(declare-fun b!4886654 () Bool)

(declare-fun e!3054664 () Bool)

(assert (=> b!4886654 (= e!3054673 e!3054664)))

(declare-fun res!2086724 () Bool)

(assert (=> b!4886654 (=> res!2086724 e!3054664)))

(declare-datatypes ((Option!13960 0))(
  ( (None!13959) (Some!13959 (v!49909 tuple2!60278)) )
))
(declare-fun lt!2002507 () Option!13960)

(declare-fun lt!2002502 () Option!13960)

(assert (=> b!4886654 (= res!2086724 (or (and ((_ is None!13959) lt!2002507) ((_ is None!13959) lt!2002502)) ((_ is None!13959) lt!2002502) ((_ is None!13959) lt!2002507) (< (size!37074 (_1!33442 (v!49909 lt!2002507))) (size!37074 (_1!33442 (v!49909 lt!2002502))))))))

(declare-fun maxPrefixZipperSequence!1299 (LexerInterface!7730 List!56421 BalanceConc!28842) Option!13960)

(assert (=> b!4886654 (= lt!2002502 (maxPrefixZipperSequence!1299 thiss!14805 (t!365067 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!664 (LexerInterface!7730 Rule!16076 BalanceConc!28842) Option!13960)

(assert (=> b!4886654 (= lt!2002507 (maxPrefixOneRuleZipperSequence!664 thiss!14805 (h!62745 rulesArg!165) input!1236))))

(declare-fun b!4886655 () Bool)

(assert (=> b!4886655 (= e!3054672 e!3054669)))

(declare-fun res!2086715 () Bool)

(assert (=> b!4886655 (=> res!2086715 e!3054669)))

(declare-fun get!19408 (Option!13960) tuple2!60278)

(declare-fun get!19409 (Option!13959) tuple2!60276)

(assert (=> b!4886655 (= res!2086715 (not (= (_1!33442 (get!19408 lt!2002507)) (_1!33441 (get!19409 lt!2002501)))))))

(declare-fun maxPrefix!4587 (LexerInterface!7730 List!56421 List!56419) Option!13959)

(assert (=> b!4886655 (= lt!2002501 (maxPrefix!4587 thiss!14805 rulesArg!165 lt!2002503))))

(declare-fun b!4886656 () Bool)

(assert (=> b!4886656 (= e!3054664 e!3054675)))

(declare-fun res!2086722 () Bool)

(assert (=> b!4886656 (=> res!2086722 e!3054675)))

(declare-fun lt!2002508 () Option!13959)

(assert (=> b!4886656 (= res!2086722 (not (= lt!2002510 (isDefined!10978 lt!2002508))))))

(declare-fun isDefined!10979 (Option!13960) Bool)

(assert (=> b!4886656 (= lt!2002510 (isDefined!10979 lt!2002507))))

(declare-fun maxPrefixZipper!641 (LexerInterface!7730 List!56421 List!56419) Option!13959)

(assert (=> b!4886656 (= lt!2002508 (maxPrefixZipper!641 thiss!14805 rulesArg!165 lt!2002503))))

(declare-fun b!4886657 () Bool)

(assert (=> b!4886657 (= e!3054670 e!3054666)))

(declare-fun res!2086714 () Bool)

(assert (=> b!4886657 (=> res!2086714 e!3054666)))

(assert (=> b!4886657 (= res!2086714 (not (= (_1!33442 lt!2002509) (_1!33441 lt!2002505))))))

(assert (=> b!4886657 (= lt!2002505 (get!19409 lt!2002508))))

(assert (=> b!4886657 (= lt!2002509 (get!19408 lt!2002507))))

(declare-fun b!4886658 () Bool)

(declare-fun tp!1375217 () Bool)

(declare-fun inv!72471 (Conc!14706) Bool)

(assert (=> b!4886658 (= e!3054674 (and (inv!72471 (c!830745 input!1236)) tp!1375217))))

(assert (= (and start!511440 res!2086719) b!4886648))

(assert (= (and b!4886648 res!2086716) b!4886647))

(assert (= (and b!4886647 res!2086720) b!4886645))

(assert (= (and b!4886645 (not res!2086718)) b!4886654))

(assert (= (and b!4886654 (not res!2086724)) b!4886656))

(assert (= (and b!4886656 (not res!2086722)) b!4886652))

(assert (= (and b!4886652 res!2086721) b!4886657))

(assert (= (and b!4886657 (not res!2086714)) b!4886649))

(assert (= (and b!4886652 (not res!2086717)) b!4886644))

(assert (= (and b!4886644 (not res!2086723)) b!4886655))

(assert (= (and b!4886655 (not res!2086715)) b!4886646))

(assert (= b!4886650 b!4886653))

(assert (= b!4886651 b!4886650))

(assert (= (and start!511440 ((_ is Cons!56297) rulesArg!165)) b!4886651))

(assert (= start!511440 b!4886658))

(declare-fun m!5890412 () Bool)

(assert (=> b!4886657 m!5890412))

(declare-fun m!5890414 () Bool)

(assert (=> b!4886657 m!5890414))

(declare-fun m!5890416 () Bool)

(assert (=> b!4886649 m!5890416))

(declare-fun m!5890418 () Bool)

(assert (=> b!4886658 m!5890418))

(declare-fun m!5890420 () Bool)

(assert (=> b!4886656 m!5890420))

(declare-fun m!5890422 () Bool)

(assert (=> b!4886656 m!5890422))

(declare-fun m!5890424 () Bool)

(assert (=> b!4886656 m!5890424))

(declare-fun m!5890426 () Bool)

(assert (=> b!4886645 m!5890426))

(declare-fun m!5890428 () Bool)

(assert (=> b!4886645 m!5890428))

(declare-fun m!5890430 () Bool)

(assert (=> b!4886645 m!5890430))

(declare-fun m!5890432 () Bool)

(assert (=> b!4886648 m!5890432))

(declare-fun m!5890434 () Bool)

(assert (=> b!4886647 m!5890434))

(declare-fun m!5890436 () Bool)

(assert (=> start!511440 m!5890436))

(declare-fun m!5890438 () Bool)

(assert (=> b!4886654 m!5890438))

(declare-fun m!5890440 () Bool)

(assert (=> b!4886654 m!5890440))

(assert (=> b!4886655 m!5890414))

(declare-fun m!5890442 () Bool)

(assert (=> b!4886655 m!5890442))

(declare-fun m!5890444 () Bool)

(assert (=> b!4886655 m!5890444))

(declare-fun m!5890446 () Bool)

(assert (=> b!4886650 m!5890446))

(declare-fun m!5890448 () Bool)

(assert (=> b!4886650 m!5890448))

(declare-fun m!5890450 () Bool)

(assert (=> b!4886646 m!5890450))

(check-sat (not b!4886656) (not b!4886651) (not start!511440) (not b!4886645) (not b_next!132075) (not b!4886646) (not b!4886654) (not b!4886648) b_and!344117 (not b_next!132073) (not b!4886649) (not b!4886658) (not b!4886650) (not b!4886657) (not b!4886647) (not b!4886655) b_and!344115)
(check-sat b_and!344117 b_and!344115 (not b_next!132073) (not b_next!132075))
(get-model)

(declare-fun b!4886718 () Bool)

(declare-fun res!2086793 () Bool)

(declare-fun e!3054714 () Bool)

(assert (=> b!4886718 (=> (not res!2086793) (not e!3054714))))

(declare-fun e!3054711 () Bool)

(assert (=> b!4886718 (= res!2086793 e!3054711)))

(declare-fun res!2086792 () Bool)

(assert (=> b!4886718 (=> res!2086792 e!3054711)))

(declare-fun lt!2002554 () Option!13960)

(assert (=> b!4886718 (= res!2086792 (not (isDefined!10979 lt!2002554)))))

(declare-fun b!4886719 () Bool)

(declare-fun e!3054713 () Bool)

(declare-fun e!3054716 () Bool)

(assert (=> b!4886719 (= e!3054713 e!3054716)))

(declare-fun res!2086790 () Bool)

(assert (=> b!4886719 (=> (not res!2086790) (not e!3054716))))

(assert (=> b!4886719 (= res!2086790 (= (_1!33442 (get!19408 lt!2002554)) (_1!33441 (get!19409 (maxPrefix!4587 thiss!14805 (t!365067 rulesArg!165) (list!17673 input!1236))))))))

(declare-fun b!4886720 () Bool)

(declare-fun e!3054712 () Bool)

(assert (=> b!4886720 (= e!3054712 (= (list!17673 (_2!33442 (get!19408 lt!2002554))) (_2!33441 (get!19409 (maxPrefixZipper!641 thiss!14805 (t!365067 rulesArg!165) (list!17673 input!1236))))))))

(declare-fun b!4886722 () Bool)

(assert (=> b!4886722 (= e!3054714 e!3054713)))

(declare-fun res!2086794 () Bool)

(assert (=> b!4886722 (=> res!2086794 e!3054713)))

(assert (=> b!4886722 (= res!2086794 (not (isDefined!10979 lt!2002554)))))

(declare-fun b!4886723 () Bool)

(declare-fun e!3054715 () Option!13960)

(declare-fun call!339014 () Option!13960)

(assert (=> b!4886723 (= e!3054715 call!339014)))

(declare-fun b!4886724 () Bool)

(assert (=> b!4886724 (= e!3054711 e!3054712)))

(declare-fun res!2086789 () Bool)

(assert (=> b!4886724 (=> (not res!2086789) (not e!3054712))))

(assert (=> b!4886724 (= res!2086789 (= (_1!33442 (get!19408 lt!2002554)) (_1!33441 (get!19409 (maxPrefixZipper!641 thiss!14805 (t!365067 rulesArg!165) (list!17673 input!1236))))))))

(declare-fun bm!339009 () Bool)

(assert (=> bm!339009 (= call!339014 (maxPrefixOneRuleZipperSequence!664 thiss!14805 (h!62745 (t!365067 rulesArg!165)) input!1236))))

(declare-fun b!4886725 () Bool)

(assert (=> b!4886725 (= e!3054716 (= (list!17673 (_2!33442 (get!19408 lt!2002554))) (_2!33441 (get!19409 (maxPrefix!4587 thiss!14805 (t!365067 rulesArg!165) (list!17673 input!1236))))))))

(declare-fun d!1569622 () Bool)

(assert (=> d!1569622 e!3054714))

(declare-fun res!2086791 () Bool)

(assert (=> d!1569622 (=> (not res!2086791) (not e!3054714))))

(assert (=> d!1569622 (= res!2086791 (= (isDefined!10979 lt!2002554) (isDefined!10978 (maxPrefixZipper!641 thiss!14805 (t!365067 rulesArg!165) (list!17673 input!1236)))))))

(assert (=> d!1569622 (= lt!2002554 e!3054715)))

(declare-fun c!830752 () Bool)

(assert (=> d!1569622 (= c!830752 (and ((_ is Cons!56297) (t!365067 rulesArg!165)) ((_ is Nil!56297) (t!365067 (t!365067 rulesArg!165)))))))

(declare-fun lt!2002553 () Unit!146286)

(declare-fun lt!2002548 () Unit!146286)

(assert (=> d!1569622 (= lt!2002553 lt!2002548)))

(declare-fun lt!2002552 () List!56419)

(declare-fun lt!2002550 () List!56419)

(assert (=> d!1569622 (isPrefix!4860 lt!2002552 lt!2002550)))

(assert (=> d!1569622 (= lt!2002548 (lemmaIsPrefixRefl!3257 lt!2002552 lt!2002550))))

(assert (=> d!1569622 (= lt!2002550 (list!17673 input!1236))))

(assert (=> d!1569622 (= lt!2002552 (list!17673 input!1236))))

(assert (=> d!1569622 (rulesValidInductive!3117 thiss!14805 (t!365067 rulesArg!165))))

(assert (=> d!1569622 (= (maxPrefixZipperSequence!1299 thiss!14805 (t!365067 rulesArg!165) input!1236) lt!2002554)))

(declare-fun b!4886721 () Bool)

(declare-fun lt!2002551 () Option!13960)

(declare-fun lt!2002549 () Option!13960)

(assert (=> b!4886721 (= e!3054715 (ite (and ((_ is None!13959) lt!2002551) ((_ is None!13959) lt!2002549)) None!13959 (ite ((_ is None!13959) lt!2002549) lt!2002551 (ite ((_ is None!13959) lt!2002551) lt!2002549 (ite (>= (size!37074 (_1!33442 (v!49909 lt!2002551))) (size!37074 (_1!33442 (v!49909 lt!2002549)))) lt!2002551 lt!2002549)))))))

(assert (=> b!4886721 (= lt!2002551 call!339014)))

(assert (=> b!4886721 (= lt!2002549 (maxPrefixZipperSequence!1299 thiss!14805 (t!365067 (t!365067 rulesArg!165)) input!1236))))

(assert (= (and d!1569622 c!830752) b!4886723))

(assert (= (and d!1569622 (not c!830752)) b!4886721))

(assert (= (or b!4886723 b!4886721) bm!339009))

(assert (= (and d!1569622 res!2086791) b!4886718))

(assert (= (and b!4886718 (not res!2086792)) b!4886724))

(assert (= (and b!4886724 res!2086789) b!4886720))

(assert (= (and b!4886718 res!2086793) b!4886722))

(assert (= (and b!4886722 (not res!2086794)) b!4886719))

(assert (= (and b!4886719 res!2086790) b!4886725))

(assert (=> b!4886720 m!5890430))

(declare-fun m!5890494 () Bool)

(assert (=> b!4886720 m!5890494))

(declare-fun m!5890496 () Bool)

(assert (=> b!4886720 m!5890496))

(assert (=> b!4886720 m!5890430))

(declare-fun m!5890498 () Bool)

(assert (=> b!4886720 m!5890498))

(assert (=> b!4886720 m!5890494))

(declare-fun m!5890500 () Bool)

(assert (=> b!4886720 m!5890500))

(assert (=> b!4886725 m!5890430))

(declare-fun m!5890502 () Bool)

(assert (=> b!4886725 m!5890502))

(assert (=> b!4886725 m!5890496))

(assert (=> b!4886725 m!5890430))

(assert (=> b!4886725 m!5890502))

(declare-fun m!5890504 () Bool)

(assert (=> b!4886725 m!5890504))

(assert (=> b!4886725 m!5890498))

(assert (=> b!4886724 m!5890496))

(assert (=> b!4886724 m!5890430))

(assert (=> b!4886724 m!5890430))

(assert (=> b!4886724 m!5890494))

(assert (=> b!4886724 m!5890494))

(assert (=> b!4886724 m!5890500))

(declare-fun m!5890506 () Bool)

(assert (=> bm!339009 m!5890506))

(declare-fun m!5890508 () Bool)

(assert (=> b!4886722 m!5890508))

(declare-fun m!5890510 () Bool)

(assert (=> b!4886721 m!5890510))

(assert (=> b!4886718 m!5890508))

(assert (=> d!1569622 m!5890430))

(assert (=> d!1569622 m!5890494))

(declare-fun m!5890512 () Bool)

(assert (=> d!1569622 m!5890512))

(assert (=> d!1569622 m!5890430))

(declare-fun m!5890514 () Bool)

(assert (=> d!1569622 m!5890514))

(declare-fun m!5890516 () Bool)

(assert (=> d!1569622 m!5890516))

(assert (=> d!1569622 m!5890508))

(assert (=> d!1569622 m!5890494))

(declare-fun m!5890518 () Bool)

(assert (=> d!1569622 m!5890518))

(assert (=> b!4886719 m!5890496))

(assert (=> b!4886719 m!5890430))

(assert (=> b!4886719 m!5890430))

(assert (=> b!4886719 m!5890502))

(assert (=> b!4886719 m!5890502))

(assert (=> b!4886719 m!5890504))

(assert (=> b!4886654 d!1569622))

(declare-fun b!4886800 () Bool)

(declare-fun e!3054773 () Bool)

(assert (=> b!4886800 (= e!3054773 true)))

(declare-fun b!4886799 () Bool)

(declare-fun e!3054772 () Bool)

(assert (=> b!4886799 (= e!3054772 e!3054773)))

(declare-fun b!4886788 () Bool)

(assert (=> b!4886788 e!3054772))

(assert (= b!4886799 b!4886800))

(assert (= b!4886788 b!4886799))

(declare-fun lambda!243859 () Int)

(declare-fun order!25401 () Int)

(declare-fun order!25399 () Int)

(declare-fun dynLambda!22579 (Int Int) Int)

(declare-fun dynLambda!22580 (Int Int) Int)

(assert (=> b!4886800 (< (dynLambda!22579 order!25399 (toValue!11025 (transformation!8138 (h!62745 rulesArg!165)))) (dynLambda!22580 order!25401 lambda!243859))))

(declare-fun order!25403 () Int)

(declare-fun dynLambda!22581 (Int Int) Int)

(assert (=> b!4886800 (< (dynLambda!22581 order!25403 (toChars!10884 (transformation!8138 (h!62745 rulesArg!165)))) (dynLambda!22580 order!25401 lambda!243859))))

(declare-fun lt!2002618 () Option!13960)

(declare-fun e!3054766 () Bool)

(declare-fun b!4886787 () Bool)

(declare-fun maxPrefixOneRule!3516 (LexerInterface!7730 Rule!16076 List!56419) Option!13959)

(assert (=> b!4886787 (= e!3054766 (= (list!17673 (_2!33442 (get!19408 lt!2002618))) (_2!33441 (get!19409 (maxPrefixOneRule!3516 thiss!14805 (h!62745 rulesArg!165) (list!17673 input!1236))))))))

(declare-fun e!3054764 () Option!13960)

(declare-datatypes ((tuple2!60282 0))(
  ( (tuple2!60283 (_1!33444 BalanceConc!28842) (_2!33444 BalanceConc!28842)) )
))
(declare-fun lt!2002621 () tuple2!60282)

(declare-fun apply!13527 (TokenValueInjection!16204 BalanceConc!28842) TokenValue!8448)

(declare-fun size!37077 (BalanceConc!28842) Int)

(assert (=> b!4886788 (= e!3054764 (Some!13959 (tuple2!60279 (Token!14845 (apply!13527 (transformation!8138 (h!62745 rulesArg!165)) (_1!33444 lt!2002621)) (h!62745 rulesArg!165) (size!37077 (_1!33444 lt!2002621)) (list!17673 (_1!33444 lt!2002621))) (_2!33444 lt!2002621))))))

(declare-fun lt!2002625 () List!56419)

(assert (=> b!4886788 (= lt!2002625 (list!17673 input!1236))))

(declare-fun lt!2002623 () Unit!146286)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1706 (Regex!13213 List!56419) Unit!146286)

(assert (=> b!4886788 (= lt!2002623 (longestMatchIsAcceptedByMatchOrIsEmpty!1706 (regex!8138 (h!62745 rulesArg!165)) lt!2002625))))

(declare-fun res!2086837 () Bool)

(declare-fun isEmpty!30174 (List!56419) Bool)

(declare-datatypes ((tuple2!60284 0))(
  ( (tuple2!60285 (_1!33445 List!56419) (_2!33445 List!56419)) )
))
(declare-fun findLongestMatchInner!1743 (Regex!13213 List!56419 Int List!56419 List!56419 Int) tuple2!60284)

(declare-fun size!37078 (List!56419) Int)

(assert (=> b!4886788 (= res!2086837 (isEmpty!30174 (_1!33445 (findLongestMatchInner!1743 (regex!8138 (h!62745 rulesArg!165)) Nil!56295 (size!37078 Nil!56295) lt!2002625 lt!2002625 (size!37078 lt!2002625)))))))

(declare-fun e!3054763 () Bool)

(assert (=> b!4886788 (=> res!2086837 e!3054763)))

(assert (=> b!4886788 e!3054763))

(declare-fun lt!2002620 () Unit!146286)

(assert (=> b!4886788 (= lt!2002620 lt!2002623)))

(declare-fun lt!2002624 () Unit!146286)

(declare-fun lemmaInv!1226 (TokenValueInjection!16204) Unit!146286)

(assert (=> b!4886788 (= lt!2002624 (lemmaInv!1226 (transformation!8138 (h!62745 rulesArg!165))))))

(declare-fun lt!2002626 () Unit!146286)

(declare-fun ForallOf!1123 (Int BalanceConc!28842) Unit!146286)

(assert (=> b!4886788 (= lt!2002626 (ForallOf!1123 lambda!243859 (_1!33444 lt!2002621)))))

(declare-fun lt!2002617 () Unit!146286)

(declare-fun seqFromList!5923 (List!56419) BalanceConc!28842)

(assert (=> b!4886788 (= lt!2002617 (ForallOf!1123 lambda!243859 (seqFromList!5923 (list!17673 (_1!33444 lt!2002621)))))))

(declare-fun lt!2002619 () Option!13960)

(assert (=> b!4886788 (= lt!2002619 (Some!13959 (tuple2!60279 (Token!14845 (apply!13527 (transformation!8138 (h!62745 rulesArg!165)) (_1!33444 lt!2002621)) (h!62745 rulesArg!165) (size!37077 (_1!33444 lt!2002621)) (list!17673 (_1!33444 lt!2002621))) (_2!33444 lt!2002621))))))

(declare-fun lt!2002622 () Unit!146286)

(declare-fun lemmaEqSameImage!1080 (TokenValueInjection!16204 BalanceConc!28842 BalanceConc!28842) Unit!146286)

(assert (=> b!4886788 (= lt!2002622 (lemmaEqSameImage!1080 (transformation!8138 (h!62745 rulesArg!165)) (_1!33444 lt!2002621) (seqFromList!5923 (list!17673 (_1!33444 lt!2002621)))))))

(declare-fun b!4886789 () Bool)

(declare-fun matchR!6517 (Regex!13213 List!56419) Bool)

(assert (=> b!4886789 (= e!3054763 (matchR!6517 (regex!8138 (h!62745 rulesArg!165)) (_1!33445 (findLongestMatchInner!1743 (regex!8138 (h!62745 rulesArg!165)) Nil!56295 (size!37078 Nil!56295) lt!2002625 lt!2002625 (size!37078 lt!2002625)))))))

(declare-fun d!1569640 () Bool)

(declare-fun e!3054765 () Bool)

(assert (=> d!1569640 e!3054765))

(declare-fun res!2086835 () Bool)

(assert (=> d!1569640 (=> (not res!2086835) (not e!3054765))))

(assert (=> d!1569640 (= res!2086835 (= (isDefined!10979 lt!2002618) (isDefined!10978 (maxPrefixOneRule!3516 thiss!14805 (h!62745 rulesArg!165) (list!17673 input!1236)))))))

(assert (=> d!1569640 (= lt!2002618 e!3054764)))

(declare-fun c!830763 () Bool)

(declare-fun isEmpty!30176 (BalanceConc!28842) Bool)

(assert (=> d!1569640 (= c!830763 (isEmpty!30176 (_1!33444 lt!2002621)))))

(declare-fun findLongestMatchWithZipperSequence!258 (Regex!13213 BalanceConc!28842) tuple2!60282)

(assert (=> d!1569640 (= lt!2002621 (findLongestMatchWithZipperSequence!258 (regex!8138 (h!62745 rulesArg!165)) input!1236))))

(declare-fun ruleValid!3658 (LexerInterface!7730 Rule!16076) Bool)

(assert (=> d!1569640 (ruleValid!3658 thiss!14805 (h!62745 rulesArg!165))))

(assert (=> d!1569640 (= (maxPrefixOneRuleZipperSequence!664 thiss!14805 (h!62745 rulesArg!165) input!1236) lt!2002618)))

(declare-fun b!4886790 () Bool)

(assert (=> b!4886790 (= e!3054764 None!13959)))

(declare-fun b!4886791 () Bool)

(declare-fun e!3054767 () Bool)

(assert (=> b!4886791 (= e!3054767 e!3054766)))

(declare-fun res!2086836 () Bool)

(assert (=> b!4886791 (=> (not res!2086836) (not e!3054766))))

(assert (=> b!4886791 (= res!2086836 (= (_1!33442 (get!19408 lt!2002618)) (_1!33441 (get!19409 (maxPrefixOneRule!3516 thiss!14805 (h!62745 rulesArg!165) (list!17673 input!1236))))))))

(declare-fun b!4886792 () Bool)

(assert (=> b!4886792 (= e!3054765 e!3054767)))

(declare-fun res!2086834 () Bool)

(assert (=> b!4886792 (=> res!2086834 e!3054767)))

(assert (=> b!4886792 (= res!2086834 (not (isDefined!10979 lt!2002618)))))

(assert (= (and d!1569640 c!830763) b!4886790))

(assert (= (and d!1569640 (not c!830763)) b!4886788))

(assert (= (and b!4886788 (not res!2086837)) b!4886789))

(assert (= (and d!1569640 res!2086835) b!4886792))

(assert (= (and b!4886792 (not res!2086834)) b!4886791))

(assert (= (and b!4886791 res!2086836) b!4886787))

(declare-fun m!5890556 () Bool)

(assert (=> b!4886792 m!5890556))

(assert (=> b!4886787 m!5890430))

(declare-fun m!5890558 () Bool)

(assert (=> b!4886787 m!5890558))

(assert (=> b!4886787 m!5890558))

(declare-fun m!5890560 () Bool)

(assert (=> b!4886787 m!5890560))

(declare-fun m!5890562 () Bool)

(assert (=> b!4886787 m!5890562))

(declare-fun m!5890564 () Bool)

(assert (=> b!4886787 m!5890564))

(assert (=> b!4886787 m!5890430))

(declare-fun m!5890566 () Bool)

(assert (=> b!4886789 m!5890566))

(declare-fun m!5890568 () Bool)

(assert (=> b!4886789 m!5890568))

(assert (=> b!4886789 m!5890566))

(assert (=> b!4886789 m!5890568))

(declare-fun m!5890570 () Bool)

(assert (=> b!4886789 m!5890570))

(declare-fun m!5890572 () Bool)

(assert (=> b!4886789 m!5890572))

(assert (=> d!1569640 m!5890558))

(declare-fun m!5890574 () Bool)

(assert (=> d!1569640 m!5890574))

(assert (=> d!1569640 m!5890430))

(assert (=> d!1569640 m!5890558))

(declare-fun m!5890576 () Bool)

(assert (=> d!1569640 m!5890576))

(declare-fun m!5890578 () Bool)

(assert (=> d!1569640 m!5890578))

(declare-fun m!5890580 () Bool)

(assert (=> d!1569640 m!5890580))

(assert (=> d!1569640 m!5890556))

(assert (=> d!1569640 m!5890430))

(assert (=> b!4886791 m!5890562))

(assert (=> b!4886791 m!5890430))

(assert (=> b!4886791 m!5890430))

(assert (=> b!4886791 m!5890558))

(assert (=> b!4886791 m!5890558))

(assert (=> b!4886791 m!5890560))

(declare-fun m!5890582 () Bool)

(assert (=> b!4886788 m!5890582))

(declare-fun m!5890584 () Bool)

(assert (=> b!4886788 m!5890584))

(assert (=> b!4886788 m!5890568))

(declare-fun m!5890586 () Bool)

(assert (=> b!4886788 m!5890586))

(declare-fun m!5890588 () Bool)

(assert (=> b!4886788 m!5890588))

(declare-fun m!5890590 () Bool)

(assert (=> b!4886788 m!5890590))

(declare-fun m!5890592 () Bool)

(assert (=> b!4886788 m!5890592))

(declare-fun m!5890594 () Bool)

(assert (=> b!4886788 m!5890594))

(declare-fun m!5890596 () Bool)

(assert (=> b!4886788 m!5890596))

(assert (=> b!4886788 m!5890588))

(assert (=> b!4886788 m!5890590))

(declare-fun m!5890598 () Bool)

(assert (=> b!4886788 m!5890598))

(assert (=> b!4886788 m!5890430))

(assert (=> b!4886788 m!5890566))

(assert (=> b!4886788 m!5890568))

(assert (=> b!4886788 m!5890570))

(assert (=> b!4886788 m!5890566))

(assert (=> b!4886788 m!5890590))

(declare-fun m!5890600 () Bool)

(assert (=> b!4886788 m!5890600))

(assert (=> b!4886654 d!1569640))

(declare-fun d!1569650 () Bool)

(assert (=> d!1569650 (= (get!19408 lt!2002507) (v!49909 lt!2002507))))

(assert (=> b!4886655 d!1569650))

(declare-fun d!1569652 () Bool)

(assert (=> d!1569652 (= (get!19409 lt!2002501) (v!49908 lt!2002501))))

(assert (=> b!4886655 d!1569652))

(declare-fun b!4886836 () Bool)

(declare-fun e!3054796 () Bool)

(declare-fun lt!2002647 () Option!13959)

(declare-fun contains!19426 (List!56421 Rule!16076) Bool)

(assert (=> b!4886836 (= e!3054796 (contains!19426 rulesArg!165 (rule!11310 (_1!33441 (get!19409 lt!2002647)))))))

(declare-fun d!1569654 () Bool)

(declare-fun e!3054794 () Bool)

(assert (=> d!1569654 e!3054794))

(declare-fun res!2086862 () Bool)

(assert (=> d!1569654 (=> res!2086862 e!3054794)))

(declare-fun isEmpty!30178 (Option!13959) Bool)

(assert (=> d!1569654 (= res!2086862 (isEmpty!30178 lt!2002647))))

(declare-fun e!3054795 () Option!13959)

(assert (=> d!1569654 (= lt!2002647 e!3054795)))

(declare-fun c!830767 () Bool)

(assert (=> d!1569654 (= c!830767 (and ((_ is Cons!56297) rulesArg!165) ((_ is Nil!56297) (t!365067 rulesArg!165))))))

(declare-fun lt!2002651 () Unit!146286)

(declare-fun lt!2002648 () Unit!146286)

(assert (=> d!1569654 (= lt!2002651 lt!2002648)))

(assert (=> d!1569654 (isPrefix!4860 lt!2002503 lt!2002503)))

(assert (=> d!1569654 (= lt!2002648 (lemmaIsPrefixRefl!3257 lt!2002503 lt!2002503))))

(assert (=> d!1569654 (rulesValidInductive!3117 thiss!14805 rulesArg!165)))

(assert (=> d!1569654 (= (maxPrefix!4587 thiss!14805 rulesArg!165 lt!2002503) lt!2002647)))

(declare-fun b!4886837 () Bool)

(declare-fun lt!2002649 () Option!13959)

(declare-fun lt!2002650 () Option!13959)

(assert (=> b!4886837 (= e!3054795 (ite (and ((_ is None!13958) lt!2002649) ((_ is None!13958) lt!2002650)) None!13958 (ite ((_ is None!13958) lt!2002650) lt!2002649 (ite ((_ is None!13958) lt!2002649) lt!2002650 (ite (>= (size!37074 (_1!33441 (v!49908 lt!2002649))) (size!37074 (_1!33441 (v!49908 lt!2002650)))) lt!2002649 lt!2002650)))))))

(declare-fun call!339020 () Option!13959)

(assert (=> b!4886837 (= lt!2002649 call!339020)))

(assert (=> b!4886837 (= lt!2002650 (maxPrefix!4587 thiss!14805 (t!365067 rulesArg!165) lt!2002503))))

(declare-fun b!4886838 () Bool)

(declare-fun res!2086865 () Bool)

(assert (=> b!4886838 (=> (not res!2086865) (not e!3054796))))

(assert (=> b!4886838 (= res!2086865 (< (size!37078 (_2!33441 (get!19409 lt!2002647))) (size!37078 lt!2002503)))))

(declare-fun b!4886839 () Bool)

(declare-fun res!2086861 () Bool)

(assert (=> b!4886839 (=> (not res!2086861) (not e!3054796))))

(declare-fun ++!12232 (List!56419 List!56419) List!56419)

(declare-fun charsOf!5363 (Token!14844) BalanceConc!28842)

(assert (=> b!4886839 (= res!2086861 (= (++!12232 (list!17673 (charsOf!5363 (_1!33441 (get!19409 lt!2002647)))) (_2!33441 (get!19409 lt!2002647))) lt!2002503))))

(declare-fun b!4886840 () Bool)

(assert (=> b!4886840 (= e!3054795 call!339020)))

(declare-fun bm!339015 () Bool)

(assert (=> bm!339015 (= call!339020 (maxPrefixOneRule!3516 thiss!14805 (h!62745 rulesArg!165) lt!2002503))))

(declare-fun b!4886841 () Bool)

(assert (=> b!4886841 (= e!3054794 e!3054796)))

(declare-fun res!2086860 () Bool)

(assert (=> b!4886841 (=> (not res!2086860) (not e!3054796))))

(assert (=> b!4886841 (= res!2086860 (isDefined!10978 lt!2002647))))

(declare-fun b!4886842 () Bool)

(declare-fun res!2086864 () Bool)

(assert (=> b!4886842 (=> (not res!2086864) (not e!3054796))))

(assert (=> b!4886842 (= res!2086864 (matchR!6517 (regex!8138 (rule!11310 (_1!33441 (get!19409 lt!2002647)))) (list!17673 (charsOf!5363 (_1!33441 (get!19409 lt!2002647))))))))

(declare-fun b!4886843 () Bool)

(declare-fun res!2086859 () Bool)

(assert (=> b!4886843 (=> (not res!2086859) (not e!3054796))))

(assert (=> b!4886843 (= res!2086859 (= (list!17673 (charsOf!5363 (_1!33441 (get!19409 lt!2002647)))) (originalCharacters!8453 (_1!33441 (get!19409 lt!2002647)))))))

(declare-fun b!4886844 () Bool)

(declare-fun res!2086863 () Bool)

(assert (=> b!4886844 (=> (not res!2086863) (not e!3054796))))

(assert (=> b!4886844 (= res!2086863 (= (value!261085 (_1!33441 (get!19409 lt!2002647))) (apply!13527 (transformation!8138 (rule!11310 (_1!33441 (get!19409 lt!2002647)))) (seqFromList!5923 (originalCharacters!8453 (_1!33441 (get!19409 lt!2002647)))))))))

(assert (= (and d!1569654 c!830767) b!4886840))

(assert (= (and d!1569654 (not c!830767)) b!4886837))

(assert (= (or b!4886840 b!4886837) bm!339015))

(assert (= (and d!1569654 (not res!2086862)) b!4886841))

(assert (= (and b!4886841 res!2086860) b!4886843))

(assert (= (and b!4886843 res!2086859) b!4886838))

(assert (= (and b!4886838 res!2086865) b!4886839))

(assert (= (and b!4886839 res!2086861) b!4886844))

(assert (= (and b!4886844 res!2086863) b!4886842))

(assert (= (and b!4886842 res!2086864) b!4886836))

(declare-fun m!5890654 () Bool)

(assert (=> d!1569654 m!5890654))

(assert (=> d!1569654 m!5890426))

(assert (=> d!1569654 m!5890428))

(assert (=> d!1569654 m!5890432))

(declare-fun m!5890656 () Bool)

(assert (=> b!4886844 m!5890656))

(declare-fun m!5890658 () Bool)

(assert (=> b!4886844 m!5890658))

(assert (=> b!4886844 m!5890658))

(declare-fun m!5890660 () Bool)

(assert (=> b!4886844 m!5890660))

(assert (=> b!4886842 m!5890656))

(declare-fun m!5890662 () Bool)

(assert (=> b!4886842 m!5890662))

(assert (=> b!4886842 m!5890662))

(declare-fun m!5890664 () Bool)

(assert (=> b!4886842 m!5890664))

(assert (=> b!4886842 m!5890664))

(declare-fun m!5890666 () Bool)

(assert (=> b!4886842 m!5890666))

(declare-fun m!5890668 () Bool)

(assert (=> bm!339015 m!5890668))

(declare-fun m!5890670 () Bool)

(assert (=> b!4886837 m!5890670))

(assert (=> b!4886843 m!5890656))

(assert (=> b!4886843 m!5890662))

(assert (=> b!4886843 m!5890662))

(assert (=> b!4886843 m!5890664))

(assert (=> b!4886838 m!5890656))

(declare-fun m!5890672 () Bool)

(assert (=> b!4886838 m!5890672))

(declare-fun m!5890674 () Bool)

(assert (=> b!4886838 m!5890674))

(assert (=> b!4886836 m!5890656))

(declare-fun m!5890676 () Bool)

(assert (=> b!4886836 m!5890676))

(assert (=> b!4886839 m!5890656))

(assert (=> b!4886839 m!5890662))

(assert (=> b!4886839 m!5890662))

(assert (=> b!4886839 m!5890664))

(assert (=> b!4886839 m!5890664))

(declare-fun m!5890678 () Bool)

(assert (=> b!4886839 m!5890678))

(declare-fun m!5890680 () Bool)

(assert (=> b!4886841 m!5890680))

(assert (=> b!4886655 d!1569654))

(declare-fun d!1569666 () Bool)

(declare-fun isBalanced!3999 (Conc!14706) Bool)

(assert (=> d!1569666 (= (inv!72469 input!1236) (isBalanced!3999 (c!830745 input!1236)))))

(declare-fun bs!1175623 () Bool)

(assert (= bs!1175623 d!1569666))

(declare-fun m!5890682 () Bool)

(assert (=> bs!1175623 m!5890682))

(assert (=> start!511440 d!1569666))

(declare-fun b!4886858 () Bool)

(declare-fun res!2086874 () Bool)

(declare-fun e!3054805 () Bool)

(assert (=> b!4886858 (=> (not res!2086874) (not e!3054805))))

(declare-fun head!10442 (List!56419) C!26624)

(assert (=> b!4886858 (= res!2086874 (= (head!10442 lt!2002503) (head!10442 lt!2002503)))))

(declare-fun b!4886859 () Bool)

(declare-fun tail!9588 (List!56419) List!56419)

(assert (=> b!4886859 (= e!3054805 (isPrefix!4860 (tail!9588 lt!2002503) (tail!9588 lt!2002503)))))

(declare-fun d!1569668 () Bool)

(declare-fun e!3054807 () Bool)

(assert (=> d!1569668 e!3054807))

(declare-fun res!2086877 () Bool)

(assert (=> d!1569668 (=> res!2086877 e!3054807)))

(declare-fun lt!2002664 () Bool)

(assert (=> d!1569668 (= res!2086877 (not lt!2002664))))

(declare-fun e!3054806 () Bool)

(assert (=> d!1569668 (= lt!2002664 e!3054806)))

(declare-fun res!2086875 () Bool)

(assert (=> d!1569668 (=> res!2086875 e!3054806)))

(assert (=> d!1569668 (= res!2086875 ((_ is Nil!56295) lt!2002503))))

(assert (=> d!1569668 (= (isPrefix!4860 lt!2002503 lt!2002503) lt!2002664)))

(declare-fun b!4886857 () Bool)

(assert (=> b!4886857 (= e!3054806 e!3054805)))

(declare-fun res!2086876 () Bool)

(assert (=> b!4886857 (=> (not res!2086876) (not e!3054805))))

(assert (=> b!4886857 (= res!2086876 (not ((_ is Nil!56295) lt!2002503)))))

(declare-fun b!4886860 () Bool)

(assert (=> b!4886860 (= e!3054807 (>= (size!37078 lt!2002503) (size!37078 lt!2002503)))))

(assert (= (and d!1569668 (not res!2086875)) b!4886857))

(assert (= (and b!4886857 res!2086876) b!4886858))

(assert (= (and b!4886858 res!2086874) b!4886859))

(assert (= (and d!1569668 (not res!2086877)) b!4886860))

(declare-fun m!5890684 () Bool)

(assert (=> b!4886858 m!5890684))

(assert (=> b!4886858 m!5890684))

(declare-fun m!5890686 () Bool)

(assert (=> b!4886859 m!5890686))

(assert (=> b!4886859 m!5890686))

(assert (=> b!4886859 m!5890686))

(assert (=> b!4886859 m!5890686))

(declare-fun m!5890688 () Bool)

(assert (=> b!4886859 m!5890688))

(assert (=> b!4886860 m!5890674))

(assert (=> b!4886860 m!5890674))

(assert (=> b!4886645 d!1569668))

(declare-fun d!1569670 () Bool)

(assert (=> d!1569670 (isPrefix!4860 lt!2002503 lt!2002503)))

(declare-fun lt!2002672 () Unit!146286)

(declare-fun choose!35680 (List!56419 List!56419) Unit!146286)

(assert (=> d!1569670 (= lt!2002672 (choose!35680 lt!2002503 lt!2002503))))

(assert (=> d!1569670 (= (lemmaIsPrefixRefl!3257 lt!2002503 lt!2002503) lt!2002672)))

(declare-fun bs!1175624 () Bool)

(assert (= bs!1175624 d!1569670))

(assert (=> bs!1175624 m!5890426))

(declare-fun m!5890690 () Bool)

(assert (=> bs!1175624 m!5890690))

(assert (=> b!4886645 d!1569670))

(declare-fun d!1569672 () Bool)

(declare-fun list!17675 (Conc!14706) List!56419)

(assert (=> d!1569672 (= (list!17673 input!1236) (list!17675 (c!830745 input!1236)))))

(declare-fun bs!1175625 () Bool)

(assert (= bs!1175625 d!1569672))

(declare-fun m!5890696 () Bool)

(assert (=> bs!1175625 m!5890696))

(assert (=> b!4886645 d!1569672))

(declare-fun d!1569674 () Bool)

(assert (=> d!1569674 (= (isDefined!10978 lt!2002508) (not (isEmpty!30178 lt!2002508)))))

(declare-fun bs!1175626 () Bool)

(assert (= bs!1175626 d!1569674))

(declare-fun m!5890698 () Bool)

(assert (=> bs!1175626 m!5890698))

(assert (=> b!4886656 d!1569674))

(declare-fun d!1569676 () Bool)

(declare-fun isEmpty!30180 (Option!13960) Bool)

(assert (=> d!1569676 (= (isDefined!10979 lt!2002507) (not (isEmpty!30180 lt!2002507)))))

(declare-fun bs!1175627 () Bool)

(assert (= bs!1175627 d!1569676))

(declare-fun m!5890700 () Bool)

(assert (=> bs!1175627 m!5890700))

(assert (=> b!4886656 d!1569676))

(declare-fun d!1569678 () Bool)

(declare-fun lt!2002687 () Option!13959)

(assert (=> d!1569678 (= lt!2002687 (maxPrefix!4587 thiss!14805 rulesArg!165 lt!2002503))))

(declare-fun e!3054832 () Option!13959)

(assert (=> d!1569678 (= lt!2002687 e!3054832)))

(declare-fun c!830773 () Bool)

(assert (=> d!1569678 (= c!830773 (and ((_ is Cons!56297) rulesArg!165) ((_ is Nil!56297) (t!365067 rulesArg!165))))))

(declare-fun lt!2002684 () Unit!146286)

(declare-fun lt!2002686 () Unit!146286)

(assert (=> d!1569678 (= lt!2002684 lt!2002686)))

(assert (=> d!1569678 (isPrefix!4860 lt!2002503 lt!2002503)))

(assert (=> d!1569678 (= lt!2002686 (lemmaIsPrefixRefl!3257 lt!2002503 lt!2002503))))

(assert (=> d!1569678 (rulesValidInductive!3117 thiss!14805 rulesArg!165)))

(assert (=> d!1569678 (= (maxPrefixZipper!641 thiss!14805 rulesArg!165 lt!2002503) lt!2002687)))

(declare-fun call!339026 () Option!13959)

(declare-fun bm!339021 () Bool)

(declare-fun maxPrefixOneRuleZipper!247 (LexerInterface!7730 Rule!16076 List!56419) Option!13959)

(assert (=> bm!339021 (= call!339026 (maxPrefixOneRuleZipper!247 thiss!14805 (h!62745 rulesArg!165) lt!2002503))))

(declare-fun b!4886903 () Bool)

(assert (=> b!4886903 (= e!3054832 call!339026)))

(declare-fun b!4886904 () Bool)

(declare-fun lt!2002683 () Option!13959)

(declare-fun lt!2002685 () Option!13959)

(assert (=> b!4886904 (= e!3054832 (ite (and ((_ is None!13958) lt!2002683) ((_ is None!13958) lt!2002685)) None!13958 (ite ((_ is None!13958) lt!2002685) lt!2002683 (ite ((_ is None!13958) lt!2002683) lt!2002685 (ite (>= (size!37074 (_1!33441 (v!49908 lt!2002683))) (size!37074 (_1!33441 (v!49908 lt!2002685)))) lt!2002683 lt!2002685)))))))

(assert (=> b!4886904 (= lt!2002683 call!339026)))

(assert (=> b!4886904 (= lt!2002685 (maxPrefixZipper!641 thiss!14805 (t!365067 rulesArg!165) lt!2002503))))

(assert (= (and d!1569678 c!830773) b!4886903))

(assert (= (and d!1569678 (not c!830773)) b!4886904))

(assert (= (or b!4886903 b!4886904) bm!339021))

(assert (=> d!1569678 m!5890444))

(assert (=> d!1569678 m!5890426))

(assert (=> d!1569678 m!5890428))

(assert (=> d!1569678 m!5890432))

(declare-fun m!5890712 () Bool)

(assert (=> bm!339021 m!5890712))

(declare-fun m!5890714 () Bool)

(assert (=> b!4886904 m!5890714))

(assert (=> b!4886656 d!1569678))

(declare-fun d!1569680 () Bool)

(assert (=> d!1569680 (= (isDefined!10978 lt!2002501) (not (isEmpty!30178 lt!2002501)))))

(declare-fun bs!1175628 () Bool)

(assert (= bs!1175628 d!1569680))

(declare-fun m!5890716 () Bool)

(assert (=> bs!1175628 m!5890716))

(assert (=> b!4886646 d!1569680))

(declare-fun d!1569682 () Bool)

(assert (=> d!1569682 (= (get!19409 lt!2002508) (v!49908 lt!2002508))))

(assert (=> b!4886657 d!1569682))

(assert (=> b!4886657 d!1569650))

(declare-fun d!1569684 () Bool)

(assert (=> d!1569684 (= (isEmpty!30172 rulesArg!165) ((_ is Nil!56297) rulesArg!165))))

(assert (=> b!4886647 d!1569684))

(declare-fun d!1569686 () Bool)

(declare-fun c!830776 () Bool)

(assert (=> d!1569686 (= c!830776 ((_ is Node!14706) (c!830745 input!1236)))))

(declare-fun e!3054837 () Bool)

(assert (=> d!1569686 (= (inv!72471 (c!830745 input!1236)) e!3054837)))

(declare-fun b!4886911 () Bool)

(declare-fun inv!72475 (Conc!14706) Bool)

(assert (=> b!4886911 (= e!3054837 (inv!72475 (c!830745 input!1236)))))

(declare-fun b!4886912 () Bool)

(declare-fun e!3054838 () Bool)

(assert (=> b!4886912 (= e!3054837 e!3054838)))

(declare-fun res!2086880 () Bool)

(assert (=> b!4886912 (= res!2086880 (not ((_ is Leaf!24492) (c!830745 input!1236))))))

(assert (=> b!4886912 (=> res!2086880 e!3054838)))

(declare-fun b!4886913 () Bool)

(declare-fun inv!72476 (Conc!14706) Bool)

(assert (=> b!4886913 (= e!3054838 (inv!72476 (c!830745 input!1236)))))

(assert (= (and d!1569686 c!830776) b!4886911))

(assert (= (and d!1569686 (not c!830776)) b!4886912))

(assert (= (and b!4886912 (not res!2086880)) b!4886913))

(declare-fun m!5890718 () Bool)

(assert (=> b!4886911 m!5890718))

(declare-fun m!5890720 () Bool)

(assert (=> b!4886913 m!5890720))

(assert (=> b!4886658 d!1569686))

(declare-fun d!1569688 () Bool)

(assert (=> d!1569688 true))

(declare-fun lt!2002690 () Bool)

(declare-fun lambda!243863 () Int)

(declare-fun forall!13076 (List!56421 Int) Bool)

(assert (=> d!1569688 (= lt!2002690 (forall!13076 rulesArg!165 lambda!243863))))

(declare-fun e!3054843 () Bool)

(assert (=> d!1569688 (= lt!2002690 e!3054843)))

(declare-fun res!2086885 () Bool)

(assert (=> d!1569688 (=> res!2086885 e!3054843)))

(assert (=> d!1569688 (= res!2086885 (not ((_ is Cons!56297) rulesArg!165)))))

(assert (=> d!1569688 (= (rulesValidInductive!3117 thiss!14805 rulesArg!165) lt!2002690)))

(declare-fun b!4886918 () Bool)

(declare-fun e!3054844 () Bool)

(assert (=> b!4886918 (= e!3054843 e!3054844)))

(declare-fun res!2086886 () Bool)

(assert (=> b!4886918 (=> (not res!2086886) (not e!3054844))))

(assert (=> b!4886918 (= res!2086886 (ruleValid!3658 thiss!14805 (h!62745 rulesArg!165)))))

(declare-fun b!4886919 () Bool)

(assert (=> b!4886919 (= e!3054844 (rulesValidInductive!3117 thiss!14805 (t!365067 rulesArg!165)))))

(assert (= (and d!1569688 (not res!2086885)) b!4886918))

(assert (= (and b!4886918 res!2086886) b!4886919))

(declare-fun m!5890722 () Bool)

(assert (=> d!1569688 m!5890722))

(assert (=> b!4886918 m!5890576))

(assert (=> b!4886919 m!5890516))

(assert (=> b!4886648 d!1569688))

(declare-fun d!1569690 () Bool)

(assert (=> d!1569690 (= (list!17673 (_2!33442 lt!2002509)) (list!17675 (c!830745 (_2!33442 lt!2002509))))))

(declare-fun bs!1175629 () Bool)

(assert (= bs!1175629 d!1569690))

(declare-fun m!5890724 () Bool)

(assert (=> bs!1175629 m!5890724))

(assert (=> b!4886649 d!1569690))

(declare-fun d!1569692 () Bool)

(assert (=> d!1569692 (= (inv!72465 (tag!9002 (h!62745 rulesArg!165))) (= (mod (str.len (value!261084 (tag!9002 (h!62745 rulesArg!165)))) 2) 0))))

(assert (=> b!4886650 d!1569692))

(declare-fun d!1569694 () Bool)

(declare-fun res!2086889 () Bool)

(declare-fun e!3054847 () Bool)

(assert (=> d!1569694 (=> (not res!2086889) (not e!3054847))))

(declare-fun semiInverseModEq!3572 (Int Int) Bool)

(assert (=> d!1569694 (= res!2086889 (semiInverseModEq!3572 (toChars!10884 (transformation!8138 (h!62745 rulesArg!165))) (toValue!11025 (transformation!8138 (h!62745 rulesArg!165)))))))

(assert (=> d!1569694 (= (inv!72470 (transformation!8138 (h!62745 rulesArg!165))) e!3054847)))

(declare-fun b!4886924 () Bool)

(declare-fun equivClasses!3451 (Int Int) Bool)

(assert (=> b!4886924 (= e!3054847 (equivClasses!3451 (toChars!10884 (transformation!8138 (h!62745 rulesArg!165))) (toValue!11025 (transformation!8138 (h!62745 rulesArg!165)))))))

(assert (= (and d!1569694 res!2086889) b!4886924))

(declare-fun m!5890726 () Bool)

(assert (=> d!1569694 m!5890726))

(declare-fun m!5890728 () Bool)

(assert (=> b!4886924 m!5890728))

(assert (=> b!4886650 d!1569694))

(declare-fun b!4886935 () Bool)

(declare-fun e!3054850 () Bool)

(declare-fun tp_is_empty!35747 () Bool)

(assert (=> b!4886935 (= e!3054850 tp_is_empty!35747)))

(declare-fun b!4886938 () Bool)

(declare-fun tp!1375272 () Bool)

(declare-fun tp!1375270 () Bool)

(assert (=> b!4886938 (= e!3054850 (and tp!1375272 tp!1375270))))

(declare-fun b!4886936 () Bool)

(declare-fun tp!1375268 () Bool)

(declare-fun tp!1375271 () Bool)

(assert (=> b!4886936 (= e!3054850 (and tp!1375268 tp!1375271))))

(assert (=> b!4886650 (= tp!1375218 e!3054850)))

(declare-fun b!4886937 () Bool)

(declare-fun tp!1375269 () Bool)

(assert (=> b!4886937 (= e!3054850 tp!1375269)))

(assert (= (and b!4886650 ((_ is ElementMatch!13213) (regex!8138 (h!62745 rulesArg!165)))) b!4886935))

(assert (= (and b!4886650 ((_ is Concat!21662) (regex!8138 (h!62745 rulesArg!165)))) b!4886936))

(assert (= (and b!4886650 ((_ is Star!13213) (regex!8138 (h!62745 rulesArg!165)))) b!4886937))

(assert (= (and b!4886650 ((_ is Union!13213) (regex!8138 (h!62745 rulesArg!165)))) b!4886938))

(declare-fun b!4886949 () Bool)

(declare-fun b_free!131291 () Bool)

(declare-fun b_next!132081 () Bool)

(assert (=> b!4886949 (= b_free!131291 (not b_next!132081))))

(declare-fun tp!1375283 () Bool)

(declare-fun b_and!344123 () Bool)

(assert (=> b!4886949 (= tp!1375283 b_and!344123)))

(declare-fun b_free!131293 () Bool)

(declare-fun b_next!132083 () Bool)

(assert (=> b!4886949 (= b_free!131293 (not b_next!132083))))

(declare-fun tp!1375284 () Bool)

(declare-fun b_and!344125 () Bool)

(assert (=> b!4886949 (= tp!1375284 b_and!344125)))

(declare-fun e!3054860 () Bool)

(assert (=> b!4886949 (= e!3054860 (and tp!1375283 tp!1375284))))

(declare-fun tp!1375281 () Bool)

(declare-fun e!3054862 () Bool)

(declare-fun b!4886948 () Bool)

(assert (=> b!4886948 (= e!3054862 (and tp!1375281 (inv!72465 (tag!9002 (h!62745 (t!365067 rulesArg!165)))) (inv!72470 (transformation!8138 (h!62745 (t!365067 rulesArg!165)))) e!3054860))))

(declare-fun b!4886947 () Bool)

(declare-fun e!3054859 () Bool)

(declare-fun tp!1375282 () Bool)

(assert (=> b!4886947 (= e!3054859 (and e!3054862 tp!1375282))))

(assert (=> b!4886651 (= tp!1375220 e!3054859)))

(assert (= b!4886948 b!4886949))

(assert (= b!4886947 b!4886948))

(assert (= (and b!4886651 ((_ is Cons!56297) (t!365067 rulesArg!165))) b!4886947))

(declare-fun m!5890730 () Bool)

(assert (=> b!4886948 m!5890730))

(declare-fun m!5890732 () Bool)

(assert (=> b!4886948 m!5890732))

(declare-fun e!3054867 () Bool)

(declare-fun tp!1375292 () Bool)

(declare-fun b!4886958 () Bool)

(declare-fun tp!1375293 () Bool)

(assert (=> b!4886958 (= e!3054867 (and (inv!72471 (left!40889 (c!830745 input!1236))) tp!1375292 (inv!72471 (right!41219 (c!830745 input!1236))) tp!1375293))))

(declare-fun b!4886960 () Bool)

(declare-fun e!3054868 () Bool)

(declare-fun tp!1375291 () Bool)

(assert (=> b!4886960 (= e!3054868 tp!1375291)))

(declare-fun b!4886959 () Bool)

(declare-fun inv!72477 (IArray!29473) Bool)

(assert (=> b!4886959 (= e!3054867 (and (inv!72477 (xs!18022 (c!830745 input!1236))) e!3054868))))

(assert (=> b!4886658 (= tp!1375217 (and (inv!72471 (c!830745 input!1236)) e!3054867))))

(assert (= (and b!4886658 ((_ is Node!14706) (c!830745 input!1236))) b!4886958))

(assert (= b!4886959 b!4886960))

(assert (= (and b!4886658 ((_ is Leaf!24492) (c!830745 input!1236))) b!4886959))

(declare-fun m!5890734 () Bool)

(assert (=> b!4886958 m!5890734))

(declare-fun m!5890736 () Bool)

(assert (=> b!4886958 m!5890736))

(declare-fun m!5890738 () Bool)

(assert (=> b!4886959 m!5890738))

(assert (=> b!4886658 m!5890418))

(check-sat (not b!4886860) (not b!4886937) (not b!4886787) (not d!1569622) (not b!4886859) (not b!4886791) (not b!4886842) (not b!4886724) (not b!4886938) (not b_next!132083) (not d!1569674) (not b!4886858) (not b!4886838) (not b!4886792) (not b!4886959) tp_is_empty!35747 (not b!4886919) b_and!344117 (not b!4886836) (not d!1569640) (not d!1569654) (not b!4886918) (not b!4886789) (not b!4886841) (not b!4886904) (not d!1569670) b_and!344125 (not b!4886958) (not d!1569672) (not b!4886913) (not b!4886843) (not b_next!132073) (not b!4886720) (not b!4886936) (not b!4886718) (not b!4886924) (not b_next!132075) (not b!4886960) (not d!1569694) (not b!4886947) (not d!1569690) b_and!344123 (not b!4886721) (not bm!339015) (not d!1569666) (not b!4886658) (not b!4886725) (not b!4886911) (not d!1569676) (not b!4886788) (not b!4886837) (not b!4886948) (not b!4886844) (not bm!339021) (not d!1569688) (not d!1569680) b_and!344115 (not bm!339009) (not d!1569678) (not b_next!132081) (not b!4886839) (not b!4886719) (not b!4886722))
(check-sat (not b_next!132083) b_and!344117 b_and!344125 (not b_next!132073) (not b_next!132075) b_and!344123 b_and!344115 (not b_next!132081))
