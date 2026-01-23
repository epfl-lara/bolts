; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353948 () Bool)

(assert start!353948)

(declare-fun b!3767642 () Bool)

(declare-fun b_free!100941 () Bool)

(declare-fun b_next!101645 () Bool)

(assert (=> b!3767642 (= b_free!100941 (not b_next!101645))))

(declare-fun tp!1150958 () Bool)

(declare-fun b_and!279755 () Bool)

(assert (=> b!3767642 (= tp!1150958 b_and!279755)))

(declare-fun b_free!100943 () Bool)

(declare-fun b_next!101647 () Bool)

(assert (=> b!3767642 (= b_free!100943 (not b_next!101647))))

(declare-fun tp!1150959 () Bool)

(declare-fun b_and!279757 () Bool)

(assert (=> b!3767642 (= tp!1150959 b_and!279757)))

(declare-fun b!3767633 () Bool)

(declare-fun e!2330241 () Bool)

(declare-datatypes ((C!22352 0))(
  ( (C!22353 (val!13252 Int)) )
))
(declare-datatypes ((List!40336 0))(
  ( (Nil!40212) (Cons!40212 (h!45632 C!22352) (t!304373 List!40336)) )
))
(declare-datatypes ((IArray!24665 0))(
  ( (IArray!24666 (innerList!12390 List!40336)) )
))
(declare-datatypes ((Conc!12330 0))(
  ( (Node!12330 (left!31124 Conc!12330) (right!31454 Conc!12330) (csize!24890 Int) (cheight!12541 Int)) (Leaf!19117 (xs!15544 IArray!24665) (csize!24891 Int)) (Empty!12330) )
))
(declare-datatypes ((BalanceConc!24254 0))(
  ( (BalanceConc!24255 (c!652691 Conc!12330)) )
))
(declare-fun treated!13 () BalanceConc!24254)

(declare-fun tp!1150960 () Bool)

(declare-fun inv!54011 (Conc!12330) Bool)

(assert (=> b!3767633 (= e!2330241 (and (inv!54011 (c!652691 treated!13)) tp!1150960))))

(declare-fun b!3767634 () Bool)

(declare-fun e!2330238 () Bool)

(declare-fun e!2330240 () Bool)

(assert (=> b!3767634 (= e!2330238 (not e!2330240))))

(declare-fun res!1525287 () Bool)

(assert (=> b!3767634 (=> res!1525287 e!2330240)))

(declare-fun lt!1303455 () List!40336)

(declare-fun lt!1303459 () List!40336)

(declare-fun isSuffix!952 (List!40336 List!40336) Bool)

(assert (=> b!3767634 (= res!1525287 (not (isSuffix!952 lt!1303455 lt!1303459)))))

(declare-fun lt!1303460 () List!40336)

(assert (=> b!3767634 (isSuffix!952 lt!1303455 lt!1303460)))

(declare-datatypes ((Unit!57921 0))(
  ( (Unit!57922) )
))
(declare-fun lt!1303457 () Unit!57921)

(declare-fun lt!1303462 () List!40336)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!637 (List!40336 List!40336) Unit!57921)

(assert (=> b!3767634 (= lt!1303457 (lemmaConcatTwoListThenFSndIsSuffix!637 lt!1303462 lt!1303455))))

(declare-fun b!3767635 () Bool)

(declare-fun res!1525289 () Bool)

(assert (=> b!3767635 (=> (not res!1525289) (not e!2330238))))

(declare-datatypes ((List!40337 0))(
  ( (Nil!40213) (Cons!40213 (h!45633 (_ BitVec 16)) (t!304374 List!40337)) )
))
(declare-datatypes ((TokenValue!6408 0))(
  ( (FloatLiteralValue!12816 (text!45301 List!40337)) (TokenValueExt!6407 (__x!25033 Int)) (Broken!32040 (value!196654 List!40337)) (Object!6531) (End!6408) (Def!6408) (Underscore!6408) (Match!6408) (Else!6408) (Error!6408) (Case!6408) (If!6408) (Extends!6408) (Abstract!6408) (Class!6408) (Val!6408) (DelimiterValue!12816 (del!6468 List!40337)) (KeywordValue!6414 (value!196655 List!40337)) (CommentValue!12816 (value!196656 List!40337)) (WhitespaceValue!12816 (value!196657 List!40337)) (IndentationValue!6408 (value!196658 List!40337)) (String!45721) (Int32!6408) (Broken!32041 (value!196659 List!40337)) (Boolean!6409) (Unit!57923) (OperatorValue!6411 (op!6468 List!40337)) (IdentifierValue!12816 (value!196660 List!40337)) (IdentifierValue!12817 (value!196661 List!40337)) (WhitespaceValue!12817 (value!196662 List!40337)) (True!12816) (False!12816) (Broken!32042 (value!196663 List!40337)) (Broken!32043 (value!196664 List!40337)) (True!12817) (RightBrace!6408) (RightBracket!6408) (Colon!6408) (Null!6408) (Comma!6408) (LeftBracket!6408) (False!12817) (LeftBrace!6408) (ImaginaryLiteralValue!6408 (text!45302 List!40337)) (StringLiteralValue!19224 (value!196665 List!40337)) (EOFValue!6408 (value!196666 List!40337)) (IdentValue!6408 (value!196667 List!40337)) (DelimiterValue!12817 (value!196668 List!40337)) (DedentValue!6408 (value!196669 List!40337)) (NewLineValue!6408 (value!196670 List!40337)) (IntegerValue!19224 (value!196671 (_ BitVec 32)) (text!45303 List!40337)) (IntegerValue!19225 (value!196672 Int) (text!45304 List!40337)) (Times!6408) (Or!6408) (Equal!6408) (Minus!6408) (Broken!32044 (value!196673 List!40337)) (And!6408) (Div!6408) (LessEqual!6408) (Mod!6408) (Concat!17491) (Not!6408) (Plus!6408) (SpaceValue!6408 (value!196674 List!40337)) (IntegerValue!19226 (value!196675 Int) (text!45305 List!40337)) (StringLiteralValue!19225 (text!45306 List!40337)) (FloatLiteralValue!12817 (text!45307 List!40337)) (BytesLiteralValue!6408 (value!196676 List!40337)) (CommentValue!12817 (value!196677 List!40337)) (StringLiteralValue!19226 (value!196678 List!40337)) (ErrorTokenValue!6408 (msg!6469 List!40337)) )
))
(declare-datatypes ((Regex!11083 0))(
  ( (ElementMatch!11083 (c!652692 C!22352)) (Concat!17492 (regOne!22678 Regex!11083) (regTwo!22678 Regex!11083)) (EmptyExpr!11083) (Star!11083 (reg!11412 Regex!11083)) (EmptyLang!11083) (Union!11083 (regOne!22679 Regex!11083) (regTwo!22679 Regex!11083)) )
))
(declare-datatypes ((String!45722 0))(
  ( (String!45723 (value!196679 String)) )
))
(declare-datatypes ((TokenValueInjection!12244 0))(
  ( (TokenValueInjection!12245 (toValue!8542 Int) (toChars!8401 Int)) )
))
(declare-datatypes ((Rule!12156 0))(
  ( (Rule!12157 (regex!6178 Regex!11083) (tag!7038 String!45722) (isSeparator!6178 Bool) (transformation!6178 TokenValueInjection!12244)) )
))
(declare-datatypes ((Token!11494 0))(
  ( (Token!11495 (value!196680 TokenValue!6408) (rule!8942 Rule!12156) (size!30267 Int) (originalCharacters!6778 List!40336)) )
))
(declare-datatypes ((List!40338 0))(
  ( (Nil!40214) (Cons!40214 (h!45634 Token!11494) (t!304375 List!40338)) )
))
(declare-datatypes ((IArray!24667 0))(
  ( (IArray!24668 (innerList!12391 List!40338)) )
))
(declare-datatypes ((Conc!12331 0))(
  ( (Node!12331 (left!31125 Conc!12331) (right!31455 Conc!12331) (csize!24892 Int) (cheight!12542 Int)) (Leaf!19118 (xs!15545 IArray!24667) (csize!24893 Int)) (Empty!12331) )
))
(declare-datatypes ((BalanceConc!24256 0))(
  ( (BalanceConc!24257 (c!652693 Conc!12331)) )
))
(declare-datatypes ((tuple2!39256 0))(
  ( (tuple2!39257 (_1!22762 BalanceConc!24256) (_2!22762 BalanceConc!24254)) )
))
(declare-fun lt!1303463 () tuple2!39256)

(declare-fun lt!1303461 () tuple2!39256)

(declare-fun list!14875 (BalanceConc!24254) List!40336)

(assert (=> b!3767635 (= res!1525289 (= (list!14875 (_2!22762 lt!1303463)) (list!14875 (_2!22762 lt!1303461))))))

(declare-fun b!3767636 () Bool)

(declare-fun e!2330232 () Bool)

(declare-fun e!2330236 () Bool)

(assert (=> b!3767636 (= e!2330232 e!2330236)))

(declare-fun res!1525291 () Bool)

(assert (=> b!3767636 (=> (not res!1525291) (not e!2330236))))

(assert (=> b!3767636 (= res!1525291 (= lt!1303459 lt!1303460))))

(declare-fun ++!9991 (List!40336 List!40336) List!40336)

(assert (=> b!3767636 (= lt!1303460 (++!9991 lt!1303462 lt!1303455))))

(declare-fun totalInput!335 () BalanceConc!24254)

(assert (=> b!3767636 (= lt!1303459 (list!14875 totalInput!335))))

(declare-fun input!678 () BalanceConc!24254)

(assert (=> b!3767636 (= lt!1303455 (list!14875 input!678))))

(assert (=> b!3767636 (= lt!1303462 (list!14875 treated!13))))

(declare-fun b!3767637 () Bool)

(declare-fun e!2330243 () Bool)

(assert (=> b!3767637 (= e!2330243 e!2330238)))

(declare-fun res!1525292 () Bool)

(assert (=> b!3767637 (=> (not res!1525292) (not e!2330238))))

(declare-fun acc!335 () BalanceConc!24256)

(declare-fun list!14876 (BalanceConc!24256) List!40338)

(declare-fun ++!9992 (BalanceConc!24256 BalanceConc!24256) BalanceConc!24256)

(assert (=> b!3767637 (= res!1525292 (= (list!14876 (_1!22762 lt!1303463)) (list!14876 (++!9992 acc!335 (_1!22762 lt!1303461)))))))

(declare-datatypes ((List!40339 0))(
  ( (Nil!40215) (Cons!40215 (h!45635 Rule!12156) (t!304376 List!40339)) )
))
(declare-fun rules!1265 () List!40339)

(declare-datatypes ((LexerInterface!5767 0))(
  ( (LexerInterfaceExt!5764 (__x!25034 Int)) (Lexer!5765) )
))
(declare-fun thiss!11876 () LexerInterface!5767)

(declare-fun lexRec!791 (LexerInterface!5767 List!40339 BalanceConc!24254) tuple2!39256)

(assert (=> b!3767637 (= lt!1303461 (lexRec!791 thiss!11876 rules!1265 input!678))))

(assert (=> b!3767637 (= lt!1303463 (lexRec!791 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3767638 () Bool)

(declare-fun e!2330235 () Bool)

(declare-fun e!2330239 () Bool)

(declare-fun tp!1150962 () Bool)

(declare-fun inv!54005 (String!45722) Bool)

(declare-fun inv!54012 (TokenValueInjection!12244) Bool)

(assert (=> b!3767638 (= e!2330235 (and tp!1150962 (inv!54005 (tag!7038 (h!45635 rules!1265))) (inv!54012 (transformation!6178 (h!45635 rules!1265))) e!2330239))))

(declare-fun b!3767639 () Bool)

(declare-fun res!1525294 () Bool)

(assert (=> b!3767639 (=> (not res!1525294) (not e!2330232))))

(declare-fun rulesInvariant!5110 (LexerInterface!5767 List!40339) Bool)

(assert (=> b!3767639 (= res!1525294 (rulesInvariant!5110 thiss!11876 rules!1265))))

(declare-fun b!3767640 () Bool)

(declare-fun res!1525290 () Bool)

(assert (=> b!3767640 (=> (not res!1525290) (not e!2330232))))

(declare-fun isEmpty!23619 (List!40339) Bool)

(assert (=> b!3767640 (= res!1525290 (not (isEmpty!23619 rules!1265)))))

(declare-fun b!3767641 () Bool)

(declare-fun e!2330234 () Bool)

(declare-fun tp!1150961 () Bool)

(declare-fun inv!54013 (Conc!12331) Bool)

(assert (=> b!3767641 (= e!2330234 (and (inv!54013 (c!652693 acc!335)) tp!1150961))))

(assert (=> b!3767642 (= e!2330239 (and tp!1150958 tp!1150959))))

(declare-fun b!3767644 () Bool)

(declare-fun res!1525288 () Bool)

(assert (=> b!3767644 (=> (not res!1525288) (not e!2330243))))

(declare-fun lt!1303458 () tuple2!39256)

(declare-fun isEmpty!23620 (List!40336) Bool)

(assert (=> b!3767644 (= res!1525288 (isEmpty!23620 (list!14875 (_2!22762 lt!1303458))))))

(declare-fun b!3767645 () Bool)

(declare-fun e!2330233 () Bool)

(declare-fun tp!1150956 () Bool)

(assert (=> b!3767645 (= e!2330233 (and e!2330235 tp!1150956))))

(declare-fun b!3767646 () Bool)

(assert (=> b!3767646 (= e!2330240 true)))

(declare-fun lt!1303456 () Bool)

(declare-fun rulesValidInductive!2164 (LexerInterface!5767 List!40339) Bool)

(assert (=> b!3767646 (= lt!1303456 (rulesValidInductive!2164 thiss!11876 rules!1265))))

(declare-fun b!3767643 () Bool)

(declare-fun e!2330244 () Bool)

(declare-fun tp!1150955 () Bool)

(assert (=> b!3767643 (= e!2330244 (and (inv!54011 (c!652691 input!678)) tp!1150955))))

(declare-fun res!1525293 () Bool)

(assert (=> start!353948 (=> (not res!1525293) (not e!2330232))))

(get-info :version)

(assert (=> start!353948 (= res!1525293 ((_ is Lexer!5765) thiss!11876))))

(assert (=> start!353948 e!2330232))

(declare-fun inv!54014 (BalanceConc!24254) Bool)

(assert (=> start!353948 (and (inv!54014 input!678) e!2330244)))

(declare-fun inv!54015 (BalanceConc!24256) Bool)

(assert (=> start!353948 (and (inv!54015 acc!335) e!2330234)))

(assert (=> start!353948 (and (inv!54014 treated!13) e!2330241)))

(assert (=> start!353948 e!2330233))

(assert (=> start!353948 true))

(declare-fun e!2330242 () Bool)

(assert (=> start!353948 (and (inv!54014 totalInput!335) e!2330242)))

(declare-fun b!3767647 () Bool)

(assert (=> b!3767647 (= e!2330236 e!2330243)))

(declare-fun res!1525286 () Bool)

(assert (=> b!3767647 (=> (not res!1525286) (not e!2330243))))

(assert (=> b!3767647 (= res!1525286 (= (list!14876 (_1!22762 lt!1303458)) (list!14876 acc!335)))))

(assert (=> b!3767647 (= lt!1303458 (lexRec!791 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3767648 () Bool)

(declare-fun tp!1150957 () Bool)

(assert (=> b!3767648 (= e!2330242 (and (inv!54011 (c!652691 totalInput!335)) tp!1150957))))

(assert (= (and start!353948 res!1525293) b!3767640))

(assert (= (and b!3767640 res!1525290) b!3767639))

(assert (= (and b!3767639 res!1525294) b!3767636))

(assert (= (and b!3767636 res!1525291) b!3767647))

(assert (= (and b!3767647 res!1525286) b!3767644))

(assert (= (and b!3767644 res!1525288) b!3767637))

(assert (= (and b!3767637 res!1525292) b!3767635))

(assert (= (and b!3767635 res!1525289) b!3767634))

(assert (= (and b!3767634 (not res!1525287)) b!3767646))

(assert (= start!353948 b!3767643))

(assert (= start!353948 b!3767641))

(assert (= start!353948 b!3767633))

(assert (= b!3767638 b!3767642))

(assert (= b!3767645 b!3767638))

(assert (= (and start!353948 ((_ is Cons!40215) rules!1265)) b!3767645))

(assert (= start!353948 b!3767648))

(declare-fun m!4264081 () Bool)

(assert (=> b!3767644 m!4264081))

(assert (=> b!3767644 m!4264081))

(declare-fun m!4264083 () Bool)

(assert (=> b!3767644 m!4264083))

(declare-fun m!4264085 () Bool)

(assert (=> b!3767646 m!4264085))

(declare-fun m!4264087 () Bool)

(assert (=> b!3767637 m!4264087))

(declare-fun m!4264089 () Bool)

(assert (=> b!3767637 m!4264089))

(declare-fun m!4264091 () Bool)

(assert (=> b!3767637 m!4264091))

(declare-fun m!4264093 () Bool)

(assert (=> b!3767637 m!4264093))

(declare-fun m!4264095 () Bool)

(assert (=> b!3767637 m!4264095))

(assert (=> b!3767637 m!4264093))

(declare-fun m!4264097 () Bool)

(assert (=> start!353948 m!4264097))

(declare-fun m!4264099 () Bool)

(assert (=> start!353948 m!4264099))

(declare-fun m!4264101 () Bool)

(assert (=> start!353948 m!4264101))

(declare-fun m!4264103 () Bool)

(assert (=> start!353948 m!4264103))

(declare-fun m!4264105 () Bool)

(assert (=> b!3767638 m!4264105))

(declare-fun m!4264107 () Bool)

(assert (=> b!3767638 m!4264107))

(declare-fun m!4264109 () Bool)

(assert (=> b!3767635 m!4264109))

(declare-fun m!4264111 () Bool)

(assert (=> b!3767635 m!4264111))

(declare-fun m!4264113 () Bool)

(assert (=> b!3767633 m!4264113))

(declare-fun m!4264115 () Bool)

(assert (=> b!3767640 m!4264115))

(declare-fun m!4264117 () Bool)

(assert (=> b!3767643 m!4264117))

(declare-fun m!4264119 () Bool)

(assert (=> b!3767648 m!4264119))

(declare-fun m!4264121 () Bool)

(assert (=> b!3767641 m!4264121))

(declare-fun m!4264123 () Bool)

(assert (=> b!3767636 m!4264123))

(declare-fun m!4264125 () Bool)

(assert (=> b!3767636 m!4264125))

(declare-fun m!4264127 () Bool)

(assert (=> b!3767636 m!4264127))

(declare-fun m!4264129 () Bool)

(assert (=> b!3767636 m!4264129))

(declare-fun m!4264131 () Bool)

(assert (=> b!3767634 m!4264131))

(declare-fun m!4264133 () Bool)

(assert (=> b!3767634 m!4264133))

(declare-fun m!4264135 () Bool)

(assert (=> b!3767634 m!4264135))

(declare-fun m!4264137 () Bool)

(assert (=> b!3767639 m!4264137))

(declare-fun m!4264139 () Bool)

(assert (=> b!3767647 m!4264139))

(declare-fun m!4264141 () Bool)

(assert (=> b!3767647 m!4264141))

(declare-fun m!4264143 () Bool)

(assert (=> b!3767647 m!4264143))

(check-sat (not b_next!101647) (not b!3767638) (not b!3767633) (not b!3767647) (not b!3767643) (not b!3767644) b_and!279755 (not b!3767646) (not b!3767635) b_and!279757 (not b!3767637) (not b!3767636) (not b!3767640) (not b!3767639) (not b_next!101645) (not b!3767641) (not b!3767648) (not b!3767645) (not b!3767634) (not start!353948))
(check-sat b_and!279755 b_and!279757 (not b_next!101645) (not b_next!101647))
