; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353952 () Bool)

(assert start!353952)

(declare-fun b!3767738 () Bool)

(declare-fun b_free!100949 () Bool)

(declare-fun b_next!101653 () Bool)

(assert (=> b!3767738 (= b_free!100949 (not b_next!101653))))

(declare-fun tp!1151009 () Bool)

(declare-fun b_and!279763 () Bool)

(assert (=> b!3767738 (= tp!1151009 b_and!279763)))

(declare-fun b_free!100951 () Bool)

(declare-fun b_next!101655 () Bool)

(assert (=> b!3767738 (= b_free!100951 (not b_next!101655))))

(declare-fun tp!1151007 () Bool)

(declare-fun b_and!279765 () Bool)

(assert (=> b!3767738 (= tp!1151007 b_and!279765)))

(declare-fun b!3767729 () Bool)

(declare-fun e!2330317 () Bool)

(declare-datatypes ((C!22356 0))(
  ( (C!22357 (val!13254 Int)) )
))
(declare-datatypes ((List!40344 0))(
  ( (Nil!40220) (Cons!40220 (h!45640 C!22356) (t!304381 List!40344)) )
))
(declare-datatypes ((IArray!24673 0))(
  ( (IArray!24674 (innerList!12394 List!40344)) )
))
(declare-datatypes ((Conc!12334 0))(
  ( (Node!12334 (left!31129 Conc!12334) (right!31459 Conc!12334) (csize!24898 Int) (cheight!12545 Int)) (Leaf!19122 (xs!15548 IArray!24673) (csize!24899 Int)) (Empty!12334) )
))
(declare-datatypes ((BalanceConc!24262 0))(
  ( (BalanceConc!24263 (c!652697 Conc!12334)) )
))
(declare-fun treated!13 () BalanceConc!24262)

(declare-fun tp!1151008 () Bool)

(declare-fun inv!54024 (Conc!12334) Bool)

(assert (=> b!3767729 (= e!2330317 (and (inv!54024 (c!652697 treated!13)) tp!1151008))))

(declare-datatypes ((List!40345 0))(
  ( (Nil!40221) (Cons!40221 (h!45641 (_ BitVec 16)) (t!304382 List!40345)) )
))
(declare-datatypes ((TokenValue!6410 0))(
  ( (FloatLiteralValue!12820 (text!45315 List!40345)) (TokenValueExt!6409 (__x!25037 Int)) (Broken!32050 (value!196711 List!40345)) (Object!6533) (End!6410) (Def!6410) (Underscore!6410) (Match!6410) (Else!6410) (Error!6410) (Case!6410) (If!6410) (Extends!6410) (Abstract!6410) (Class!6410) (Val!6410) (DelimiterValue!12820 (del!6470 List!40345)) (KeywordValue!6416 (value!196712 List!40345)) (CommentValue!12820 (value!196713 List!40345)) (WhitespaceValue!12820 (value!196714 List!40345)) (IndentationValue!6410 (value!196715 List!40345)) (String!45731) (Int32!6410) (Broken!32051 (value!196716 List!40345)) (Boolean!6411) (Unit!57927) (OperatorValue!6413 (op!6470 List!40345)) (IdentifierValue!12820 (value!196717 List!40345)) (IdentifierValue!12821 (value!196718 List!40345)) (WhitespaceValue!12821 (value!196719 List!40345)) (True!12820) (False!12820) (Broken!32052 (value!196720 List!40345)) (Broken!32053 (value!196721 List!40345)) (True!12821) (RightBrace!6410) (RightBracket!6410) (Colon!6410) (Null!6410) (Comma!6410) (LeftBracket!6410) (False!12821) (LeftBrace!6410) (ImaginaryLiteralValue!6410 (text!45316 List!40345)) (StringLiteralValue!19230 (value!196722 List!40345)) (EOFValue!6410 (value!196723 List!40345)) (IdentValue!6410 (value!196724 List!40345)) (DelimiterValue!12821 (value!196725 List!40345)) (DedentValue!6410 (value!196726 List!40345)) (NewLineValue!6410 (value!196727 List!40345)) (IntegerValue!19230 (value!196728 (_ BitVec 32)) (text!45317 List!40345)) (IntegerValue!19231 (value!196729 Int) (text!45318 List!40345)) (Times!6410) (Or!6410) (Equal!6410) (Minus!6410) (Broken!32054 (value!196730 List!40345)) (And!6410) (Div!6410) (LessEqual!6410) (Mod!6410) (Concat!17495) (Not!6410) (Plus!6410) (SpaceValue!6410 (value!196731 List!40345)) (IntegerValue!19232 (value!196732 Int) (text!45319 List!40345)) (StringLiteralValue!19231 (text!45320 List!40345)) (FloatLiteralValue!12821 (text!45321 List!40345)) (BytesLiteralValue!6410 (value!196733 List!40345)) (CommentValue!12821 (value!196734 List!40345)) (StringLiteralValue!19232 (value!196735 List!40345)) (ErrorTokenValue!6410 (msg!6471 List!40345)) )
))
(declare-datatypes ((Regex!11085 0))(
  ( (ElementMatch!11085 (c!652698 C!22356)) (Concat!17496 (regOne!22682 Regex!11085) (regTwo!22682 Regex!11085)) (EmptyExpr!11085) (Star!11085 (reg!11414 Regex!11085)) (EmptyLang!11085) (Union!11085 (regOne!22683 Regex!11085) (regTwo!22683 Regex!11085)) )
))
(declare-datatypes ((String!45732 0))(
  ( (String!45733 (value!196736 String)) )
))
(declare-datatypes ((TokenValueInjection!12248 0))(
  ( (TokenValueInjection!12249 (toValue!8544 Int) (toChars!8403 Int)) )
))
(declare-datatypes ((Rule!12160 0))(
  ( (Rule!12161 (regex!6180 Regex!11085) (tag!7040 String!45732) (isSeparator!6180 Bool) (transformation!6180 TokenValueInjection!12248)) )
))
(declare-datatypes ((List!40346 0))(
  ( (Nil!40222) (Cons!40222 (h!45642 Rule!12160) (t!304383 List!40346)) )
))
(declare-fun rules!1265 () List!40346)

(declare-fun e!2330312 () Bool)

(declare-fun e!2330321 () Bool)

(declare-fun b!3767730 () Bool)

(declare-fun tp!1151010 () Bool)

(declare-fun inv!54018 (String!45732) Bool)

(declare-fun inv!54025 (TokenValueInjection!12248) Bool)

(assert (=> b!3767730 (= e!2330321 (and tp!1151010 (inv!54018 (tag!7040 (h!45642 rules!1265))) (inv!54025 (transformation!6180 (h!45642 rules!1265))) e!2330312))))

(declare-fun b!3767731 () Bool)

(declare-fun e!2330319 () Bool)

(assert (=> b!3767731 (= e!2330319 true)))

(declare-fun input!678 () BalanceConc!24262)

(declare-datatypes ((LexerInterface!5769 0))(
  ( (LexerInterfaceExt!5766 (__x!25038 Int)) (Lexer!5767) )
))
(declare-fun thiss!11876 () LexerInterface!5769)

(declare-datatypes ((Token!11498 0))(
  ( (Token!11499 (value!196737 TokenValue!6410) (rule!8944 Rule!12160) (size!30269 Int) (originalCharacters!6780 List!40344)) )
))
(declare-datatypes ((tuple2!39262 0))(
  ( (tuple2!39263 (_1!22765 Token!11498) (_2!22765 BalanceConc!24262)) )
))
(declare-datatypes ((Option!8580 0))(
  ( (None!8579) (Some!8579 (v!38745 tuple2!39262)) )
))
(declare-fun lt!1303514 () Option!8580)

(declare-fun totalInput!335 () BalanceConc!24262)

(declare-fun maxPrefixZipperSequenceV2!573 (LexerInterface!5769 List!40346 BalanceConc!24262 BalanceConc!24262) Option!8580)

(assert (=> b!3767731 (= lt!1303514 (maxPrefixZipperSequenceV2!573 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3767732 () Bool)

(declare-fun res!1525340 () Bool)

(declare-fun e!2330322 () Bool)

(assert (=> b!3767732 (=> (not res!1525340) (not e!2330322))))

(declare-datatypes ((List!40347 0))(
  ( (Nil!40223) (Cons!40223 (h!45643 Token!11498) (t!304384 List!40347)) )
))
(declare-datatypes ((IArray!24675 0))(
  ( (IArray!24676 (innerList!12395 List!40347)) )
))
(declare-datatypes ((Conc!12335 0))(
  ( (Node!12335 (left!31130 Conc!12335) (right!31460 Conc!12335) (csize!24900 Int) (cheight!12546 Int)) (Leaf!19123 (xs!15549 IArray!24675) (csize!24901 Int)) (Empty!12335) )
))
(declare-datatypes ((BalanceConc!24264 0))(
  ( (BalanceConc!24265 (c!652699 Conc!12335)) )
))
(declare-datatypes ((tuple2!39264 0))(
  ( (tuple2!39265 (_1!22766 BalanceConc!24264) (_2!22766 BalanceConc!24262)) )
))
(declare-fun lt!1303513 () tuple2!39264)

(declare-fun isEmpty!23623 (List!40344) Bool)

(declare-fun list!14879 (BalanceConc!24262) List!40344)

(assert (=> b!3767732 (= res!1525340 (isEmpty!23623 (list!14879 (_2!22766 lt!1303513))))))

(declare-fun b!3767733 () Bool)

(declare-fun res!1525347 () Bool)

(declare-fun e!2330318 () Bool)

(assert (=> b!3767733 (=> (not res!1525347) (not e!2330318))))

(declare-fun lt!1303516 () tuple2!39264)

(declare-fun lt!1303517 () tuple2!39264)

(assert (=> b!3767733 (= res!1525347 (= (list!14879 (_2!22766 lt!1303516)) (list!14879 (_2!22766 lt!1303517))))))

(declare-fun b!3767734 () Bool)

(declare-fun e!2330313 () Bool)

(assert (=> b!3767734 (= e!2330313 e!2330322)))

(declare-fun res!1525344 () Bool)

(assert (=> b!3767734 (=> (not res!1525344) (not e!2330322))))

(declare-fun acc!335 () BalanceConc!24264)

(declare-fun list!14880 (BalanceConc!24264) List!40347)

(assert (=> b!3767734 (= res!1525344 (= (list!14880 (_1!22766 lt!1303513)) (list!14880 acc!335)))))

(declare-fun lexRec!793 (LexerInterface!5769 List!40346 BalanceConc!24262) tuple2!39264)

(assert (=> b!3767734 (= lt!1303513 (lexRec!793 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3767735 () Bool)

(declare-fun res!1525341 () Bool)

(declare-fun e!2330316 () Bool)

(assert (=> b!3767735 (=> (not res!1525341) (not e!2330316))))

(declare-fun isEmpty!23624 (List!40346) Bool)

(assert (=> b!3767735 (= res!1525341 (not (isEmpty!23624 rules!1265)))))

(declare-fun b!3767736 () Bool)

(declare-fun e!2330314 () Bool)

(declare-fun tp!1151004 () Bool)

(assert (=> b!3767736 (= e!2330314 (and (inv!54024 (c!652697 totalInput!335)) tp!1151004))))

(declare-fun b!3767737 () Bool)

(assert (=> b!3767737 (= e!2330322 e!2330318)))

(declare-fun res!1525343 () Bool)

(assert (=> b!3767737 (=> (not res!1525343) (not e!2330318))))

(declare-fun ++!9995 (BalanceConc!24264 BalanceConc!24264) BalanceConc!24264)

(assert (=> b!3767737 (= res!1525343 (= (list!14880 (_1!22766 lt!1303516)) (list!14880 (++!9995 acc!335 (_1!22766 lt!1303517)))))))

(assert (=> b!3767737 (= lt!1303517 (lexRec!793 thiss!11876 rules!1265 input!678))))

(assert (=> b!3767737 (= lt!1303516 (lexRec!793 thiss!11876 rules!1265 totalInput!335))))

(assert (=> b!3767738 (= e!2330312 (and tp!1151009 tp!1151007))))

(declare-fun b!3767739 () Bool)

(declare-fun e!2330311 () Bool)

(declare-fun tp!1151003 () Bool)

(assert (=> b!3767739 (= e!2330311 (and (inv!54024 (c!652697 input!678)) tp!1151003))))

(declare-fun b!3767740 () Bool)

(declare-fun e!2330310 () Bool)

(declare-fun tp!1151005 () Bool)

(assert (=> b!3767740 (= e!2330310 (and e!2330321 tp!1151005))))

(declare-fun b!3767741 () Bool)

(assert (=> b!3767741 (= e!2330318 (not e!2330319))))

(declare-fun res!1525345 () Bool)

(assert (=> b!3767741 (=> res!1525345 e!2330319)))

(declare-fun lt!1303515 () List!40344)

(declare-fun lt!1303509 () List!40344)

(declare-fun isSuffix!954 (List!40344 List!40344) Bool)

(assert (=> b!3767741 (= res!1525345 (not (isSuffix!954 lt!1303515 lt!1303509)))))

(declare-fun lt!1303510 () List!40344)

(assert (=> b!3767741 (isSuffix!954 lt!1303515 lt!1303510)))

(declare-datatypes ((Unit!57928 0))(
  ( (Unit!57929) )
))
(declare-fun lt!1303512 () Unit!57928)

(declare-fun lt!1303511 () List!40344)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!639 (List!40344 List!40344) Unit!57928)

(assert (=> b!3767741 (= lt!1303512 (lemmaConcatTwoListThenFSndIsSuffix!639 lt!1303511 lt!1303515))))

(declare-fun b!3767742 () Bool)

(declare-fun res!1525342 () Bool)

(assert (=> b!3767742 (=> (not res!1525342) (not e!2330316))))

(declare-fun rulesInvariant!5112 (LexerInterface!5769 List!40346) Bool)

(assert (=> b!3767742 (= res!1525342 (rulesInvariant!5112 thiss!11876 rules!1265))))

(declare-fun b!3767743 () Bool)

(declare-fun e!2330320 () Bool)

(declare-fun tp!1151006 () Bool)

(declare-fun inv!54026 (Conc!12335) Bool)

(assert (=> b!3767743 (= e!2330320 (and (inv!54026 (c!652699 acc!335)) tp!1151006))))

(declare-fun res!1525348 () Bool)

(assert (=> start!353952 (=> (not res!1525348) (not e!2330316))))

(get-info :version)

(assert (=> start!353952 (= res!1525348 ((_ is Lexer!5767) thiss!11876))))

(assert (=> start!353952 e!2330316))

(declare-fun inv!54027 (BalanceConc!24262) Bool)

(assert (=> start!353952 (and (inv!54027 input!678) e!2330311)))

(declare-fun inv!54028 (BalanceConc!24264) Bool)

(assert (=> start!353952 (and (inv!54028 acc!335) e!2330320)))

(assert (=> start!353952 (and (inv!54027 treated!13) e!2330317)))

(assert (=> start!353952 e!2330310))

(assert (=> start!353952 true))

(assert (=> start!353952 (and (inv!54027 totalInput!335) e!2330314)))

(declare-fun b!3767744 () Bool)

(assert (=> b!3767744 (= e!2330316 e!2330313)))

(declare-fun res!1525346 () Bool)

(assert (=> b!3767744 (=> (not res!1525346) (not e!2330313))))

(assert (=> b!3767744 (= res!1525346 (= lt!1303509 lt!1303510))))

(declare-fun ++!9996 (List!40344 List!40344) List!40344)

(assert (=> b!3767744 (= lt!1303510 (++!9996 lt!1303511 lt!1303515))))

(assert (=> b!3767744 (= lt!1303509 (list!14879 totalInput!335))))

(assert (=> b!3767744 (= lt!1303515 (list!14879 input!678))))

(assert (=> b!3767744 (= lt!1303511 (list!14879 treated!13))))

(assert (= (and start!353952 res!1525348) b!3767735))

(assert (= (and b!3767735 res!1525341) b!3767742))

(assert (= (and b!3767742 res!1525342) b!3767744))

(assert (= (and b!3767744 res!1525346) b!3767734))

(assert (= (and b!3767734 res!1525344) b!3767732))

(assert (= (and b!3767732 res!1525340) b!3767737))

(assert (= (and b!3767737 res!1525343) b!3767733))

(assert (= (and b!3767733 res!1525347) b!3767741))

(assert (= (and b!3767741 (not res!1525345)) b!3767731))

(assert (= start!353952 b!3767739))

(assert (= start!353952 b!3767743))

(assert (= start!353952 b!3767729))

(assert (= b!3767730 b!3767738))

(assert (= b!3767740 b!3767730))

(assert (= (and start!353952 ((_ is Cons!40222) rules!1265)) b!3767740))

(assert (= start!353952 b!3767736))

(declare-fun m!4264209 () Bool)

(assert (=> b!3767739 m!4264209))

(declare-fun m!4264211 () Bool)

(assert (=> b!3767734 m!4264211))

(declare-fun m!4264213 () Bool)

(assert (=> b!3767734 m!4264213))

(declare-fun m!4264215 () Bool)

(assert (=> b!3767734 m!4264215))

(declare-fun m!4264217 () Bool)

(assert (=> b!3767732 m!4264217))

(assert (=> b!3767732 m!4264217))

(declare-fun m!4264219 () Bool)

(assert (=> b!3767732 m!4264219))

(declare-fun m!4264221 () Bool)

(assert (=> b!3767733 m!4264221))

(declare-fun m!4264223 () Bool)

(assert (=> b!3767733 m!4264223))

(declare-fun m!4264225 () Bool)

(assert (=> b!3767731 m!4264225))

(declare-fun m!4264227 () Bool)

(assert (=> b!3767743 m!4264227))

(declare-fun m!4264229 () Bool)

(assert (=> b!3767742 m!4264229))

(declare-fun m!4264231 () Bool)

(assert (=> b!3767744 m!4264231))

(declare-fun m!4264233 () Bool)

(assert (=> b!3767744 m!4264233))

(declare-fun m!4264235 () Bool)

(assert (=> b!3767744 m!4264235))

(declare-fun m!4264237 () Bool)

(assert (=> b!3767744 m!4264237))

(declare-fun m!4264239 () Bool)

(assert (=> b!3767736 m!4264239))

(declare-fun m!4264241 () Bool)

(assert (=> b!3767730 m!4264241))

(declare-fun m!4264243 () Bool)

(assert (=> b!3767730 m!4264243))

(declare-fun m!4264245 () Bool)

(assert (=> b!3767741 m!4264245))

(declare-fun m!4264247 () Bool)

(assert (=> b!3767741 m!4264247))

(declare-fun m!4264249 () Bool)

(assert (=> b!3767741 m!4264249))

(declare-fun m!4264251 () Bool)

(assert (=> start!353952 m!4264251))

(declare-fun m!4264253 () Bool)

(assert (=> start!353952 m!4264253))

(declare-fun m!4264255 () Bool)

(assert (=> start!353952 m!4264255))

(declare-fun m!4264257 () Bool)

(assert (=> start!353952 m!4264257))

(declare-fun m!4264259 () Bool)

(assert (=> b!3767737 m!4264259))

(declare-fun m!4264261 () Bool)

(assert (=> b!3767737 m!4264261))

(declare-fun m!4264263 () Bool)

(assert (=> b!3767737 m!4264263))

(declare-fun m!4264265 () Bool)

(assert (=> b!3767737 m!4264265))

(assert (=> b!3767737 m!4264265))

(declare-fun m!4264267 () Bool)

(assert (=> b!3767737 m!4264267))

(declare-fun m!4264269 () Bool)

(assert (=> b!3767729 m!4264269))

(declare-fun m!4264271 () Bool)

(assert (=> b!3767735 m!4264271))

(check-sat (not b!3767744) (not b!3767739) (not b!3767743) (not b!3767736) (not b!3767732) (not b!3767740) (not b!3767734) (not b!3767741) (not start!353952) (not b_next!101655) (not b!3767737) (not b!3767731) (not b!3767742) (not b!3767735) (not b!3767733) (not b!3767730) (not b!3767729) (not b_next!101653) b_and!279765 b_and!279763)
(check-sat b_and!279763 b_and!279765 (not b_next!101653) (not b_next!101655))
