; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!354436 () Bool)

(assert start!354436)

(declare-fun b!3776039 () Bool)

(declare-fun b_free!101053 () Bool)

(declare-fun b_next!101757 () Bool)

(assert (=> b!3776039 (= b_free!101053 (not b_next!101757))))

(declare-fun tp!1152075 () Bool)

(declare-fun b_and!280511 () Bool)

(assert (=> b!3776039 (= tp!1152075 b_and!280511)))

(declare-fun b_free!101055 () Bool)

(declare-fun b_next!101759 () Bool)

(assert (=> b!3776039 (= b_free!101055 (not b_next!101759))))

(declare-fun tp!1152071 () Bool)

(declare-fun b_and!280513 () Bool)

(assert (=> b!3776039 (= tp!1152071 b_and!280513)))

(declare-fun b!3776018 () Bool)

(declare-fun e!2335036 () Bool)

(declare-datatypes ((C!22380 0))(
  ( (C!22381 (val!13266 Int)) )
))
(declare-datatypes ((List!40394 0))(
  ( (Nil!40270) (Cons!40270 (h!45690 C!22380) (t!305097 List!40394)) )
))
(declare-datatypes ((IArray!24721 0))(
  ( (IArray!24722 (innerList!12418 List!40394)) )
))
(declare-datatypes ((Conc!12358 0))(
  ( (Node!12358 (left!31163 Conc!12358) (right!31493 Conc!12358) (csize!24946 Int) (cheight!12569 Int)) (Leaf!19152 (xs!15584 IArray!24721) (csize!24947 Int)) (Empty!12358) )
))
(declare-datatypes ((BalanceConc!24310 0))(
  ( (BalanceConc!24311 (c!654717 Conc!12358)) )
))
(declare-fun input!678 () BalanceConc!24310)

(declare-fun tp!1152072 () Bool)

(declare-fun inv!54116 (Conc!12358) Bool)

(assert (=> b!3776018 (= e!2335036 (and (inv!54116 (c!654717 input!678)) tp!1152072))))

(declare-fun b!3776019 () Bool)

(declare-datatypes ((List!40395 0))(
  ( (Nil!40271) (Cons!40271 (h!45691 (_ BitVec 16)) (t!305098 List!40395)) )
))
(declare-datatypes ((TokenValue!6422 0))(
  ( (FloatLiteralValue!12844 (text!45399 List!40395)) (TokenValueExt!6421 (__x!25061 Int)) (Broken!32110 (value!197053 List!40395)) (Object!6545) (End!6422) (Def!6422) (Underscore!6422) (Match!6422) (Else!6422) (Error!6422) (Case!6422) (If!6422) (Extends!6422) (Abstract!6422) (Class!6422) (Val!6422) (DelimiterValue!12844 (del!6482 List!40395)) (KeywordValue!6428 (value!197054 List!40395)) (CommentValue!12844 (value!197055 List!40395)) (WhitespaceValue!12844 (value!197056 List!40395)) (IndentationValue!6422 (value!197057 List!40395)) (String!45791) (Int32!6422) (Broken!32111 (value!197058 List!40395)) (Boolean!6423) (Unit!57983) (OperatorValue!6425 (op!6482 List!40395)) (IdentifierValue!12844 (value!197059 List!40395)) (IdentifierValue!12845 (value!197060 List!40395)) (WhitespaceValue!12845 (value!197061 List!40395)) (True!12844) (False!12844) (Broken!32112 (value!197062 List!40395)) (Broken!32113 (value!197063 List!40395)) (True!12845) (RightBrace!6422) (RightBracket!6422) (Colon!6422) (Null!6422) (Comma!6422) (LeftBracket!6422) (False!12845) (LeftBrace!6422) (ImaginaryLiteralValue!6422 (text!45400 List!40395)) (StringLiteralValue!19266 (value!197064 List!40395)) (EOFValue!6422 (value!197065 List!40395)) (IdentValue!6422 (value!197066 List!40395)) (DelimiterValue!12845 (value!197067 List!40395)) (DedentValue!6422 (value!197068 List!40395)) (NewLineValue!6422 (value!197069 List!40395)) (IntegerValue!19266 (value!197070 (_ BitVec 32)) (text!45401 List!40395)) (IntegerValue!19267 (value!197071 Int) (text!45402 List!40395)) (Times!6422) (Or!6422) (Equal!6422) (Minus!6422) (Broken!32114 (value!197072 List!40395)) (And!6422) (Div!6422) (LessEqual!6422) (Mod!6422) (Concat!17519) (Not!6422) (Plus!6422) (SpaceValue!6422 (value!197073 List!40395)) (IntegerValue!19268 (value!197074 Int) (text!45403 List!40395)) (StringLiteralValue!19267 (text!45404 List!40395)) (FloatLiteralValue!12845 (text!45405 List!40395)) (BytesLiteralValue!6422 (value!197075 List!40395)) (CommentValue!12845 (value!197076 List!40395)) (StringLiteralValue!19268 (value!197077 List!40395)) (ErrorTokenValue!6422 (msg!6483 List!40395)) )
))
(declare-datatypes ((Regex!11097 0))(
  ( (ElementMatch!11097 (c!654718 C!22380)) (Concat!17520 (regOne!22706 Regex!11097) (regTwo!22706 Regex!11097)) (EmptyExpr!11097) (Star!11097 (reg!11426 Regex!11097)) (EmptyLang!11097) (Union!11097 (regOne!22707 Regex!11097) (regTwo!22707 Regex!11097)) )
))
(declare-datatypes ((String!45792 0))(
  ( (String!45793 (value!197078 String)) )
))
(declare-datatypes ((TokenValueInjection!12272 0))(
  ( (TokenValueInjection!12273 (toValue!8560 Int) (toChars!8419 Int)) )
))
(declare-datatypes ((Rule!12184 0))(
  ( (Rule!12185 (regex!6192 Regex!11097) (tag!7052 String!45792) (isSeparator!6192 Bool) (transformation!6192 TokenValueInjection!12272)) )
))
(declare-datatypes ((Token!11522 0))(
  ( (Token!11523 (value!197079 TokenValue!6422) (rule!8964 Rule!12184) (size!30295 Int) (originalCharacters!6792 List!40394)) )
))
(declare-datatypes ((List!40396 0))(
  ( (Nil!40272) (Cons!40272 (h!45692 Token!11522) (t!305099 List!40396)) )
))
(declare-datatypes ((IArray!24723 0))(
  ( (IArray!24724 (innerList!12419 List!40396)) )
))
(declare-datatypes ((Conc!12359 0))(
  ( (Node!12359 (left!31164 Conc!12359) (right!31494 Conc!12359) (csize!24948 Int) (cheight!12570 Int)) (Leaf!19153 (xs!15585 IArray!24723) (csize!24949 Int)) (Empty!12359) )
))
(declare-datatypes ((BalanceConc!24312 0))(
  ( (BalanceConc!24313 (c!654719 Conc!12359)) )
))
(declare-datatypes ((tuple2!39340 0))(
  ( (tuple2!39341 (_1!22804 BalanceConc!24312) (_2!22804 BalanceConc!24310)) )
))
(declare-fun e!2335029 () tuple2!39340)

(assert (=> b!3776019 (= e!2335029 (tuple2!39341 (BalanceConc!24313 Empty!12359) input!678))))

(declare-fun b!3776020 () Bool)

(declare-fun e!2335028 () Bool)

(declare-fun e!2335032 () Bool)

(declare-fun tp!1152076 () Bool)

(assert (=> b!3776020 (= e!2335028 (and e!2335032 tp!1152076))))

(declare-fun res!1528717 () Bool)

(declare-fun e!2335030 () Bool)

(assert (=> start!354436 (=> (not res!1528717) (not e!2335030))))

(declare-datatypes ((LexerInterface!5781 0))(
  ( (LexerInterfaceExt!5778 (__x!25062 Int)) (Lexer!5779) )
))
(declare-fun thiss!11876 () LexerInterface!5781)

(get-info :version)

(assert (=> start!354436 (= res!1528717 ((_ is Lexer!5779) thiss!11876))))

(assert (=> start!354436 e!2335030))

(declare-fun inv!54117 (BalanceConc!24310) Bool)

(assert (=> start!354436 (and (inv!54117 input!678) e!2335036)))

(declare-fun acc!335 () BalanceConc!24312)

(declare-fun e!2335027 () Bool)

(declare-fun inv!54118 (BalanceConc!24312) Bool)

(assert (=> start!354436 (and (inv!54118 acc!335) e!2335027)))

(declare-fun treated!13 () BalanceConc!24310)

(declare-fun e!2335031 () Bool)

(assert (=> start!354436 (and (inv!54117 treated!13) e!2335031)))

(assert (=> start!354436 e!2335028))

(assert (=> start!354436 true))

(declare-fun totalInput!335 () BalanceConc!24310)

(declare-fun e!2335026 () Bool)

(assert (=> start!354436 (and (inv!54117 totalInput!335) e!2335026)))

(declare-fun b!3776021 () Bool)

(declare-fun e!2335023 () Bool)

(assert (=> b!3776021 (= e!2335030 e!2335023)))

(declare-fun res!1528720 () Bool)

(assert (=> b!3776021 (=> (not res!1528720) (not e!2335023))))

(declare-fun lt!1307433 () List!40394)

(declare-fun lt!1307424 () List!40394)

(assert (=> b!3776021 (= res!1528720 (= lt!1307433 lt!1307424))))

(declare-fun lt!1307420 () List!40394)

(declare-fun lt!1307423 () List!40394)

(declare-fun ++!10039 (List!40394 List!40394) List!40394)

(assert (=> b!3776021 (= lt!1307424 (++!10039 lt!1307420 lt!1307423))))

(declare-fun list!14911 (BalanceConc!24310) List!40394)

(assert (=> b!3776021 (= lt!1307433 (list!14911 totalInput!335))))

(assert (=> b!3776021 (= lt!1307423 (list!14911 input!678))))

(assert (=> b!3776021 (= lt!1307420 (list!14911 treated!13))))

(declare-fun b!3776022 () Bool)

(declare-fun tp!1152073 () Bool)

(assert (=> b!3776022 (= e!2335026 (and (inv!54116 (c!654717 totalInput!335)) tp!1152073))))

(declare-fun b!3776023 () Bool)

(declare-fun res!1528719 () Bool)

(declare-fun e!2335022 () Bool)

(assert (=> b!3776023 (=> (not res!1528719) (not e!2335022))))

(declare-fun lt!1307421 () tuple2!39340)

(declare-fun lt!1307429 () tuple2!39340)

(assert (=> b!3776023 (= res!1528719 (= (list!14911 (_2!22804 lt!1307421)) (list!14911 (_2!22804 lt!1307429))))))

(declare-fun b!3776024 () Bool)

(declare-fun e!2335034 () Bool)

(assert (=> b!3776024 (= e!2335034 e!2335022)))

(declare-fun res!1528716 () Bool)

(assert (=> b!3776024 (=> (not res!1528716) (not e!2335022))))

(declare-fun list!14912 (BalanceConc!24312) List!40396)

(declare-fun ++!10040 (BalanceConc!24312 BalanceConc!24312) BalanceConc!24312)

(assert (=> b!3776024 (= res!1528716 (= (list!14912 (_1!22804 lt!1307421)) (list!14912 (++!10040 acc!335 (_1!22804 lt!1307429)))))))

(declare-datatypes ((List!40397 0))(
  ( (Nil!40273) (Cons!40273 (h!45693 Rule!12184) (t!305100 List!40397)) )
))
(declare-fun rules!1265 () List!40397)

(declare-fun lexRec!805 (LexerInterface!5781 List!40397 BalanceConc!24310) tuple2!39340)

(assert (=> b!3776024 (= lt!1307429 (lexRec!805 thiss!11876 rules!1265 input!678))))

(assert (=> b!3776024 (= lt!1307421 (lexRec!805 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3776025 () Bool)

(declare-fun e!2335025 () Bool)

(declare-fun e!2335035 () Bool)

(assert (=> b!3776025 (= e!2335025 e!2335035)))

(declare-fun res!1528718 () Bool)

(assert (=> b!3776025 (=> res!1528718 e!2335035)))

(declare-fun lt!1307443 () List!40394)

(declare-fun isSuffix!966 (List!40394 List!40394) Bool)

(assert (=> b!3776025 (= res!1528718 (not (isSuffix!966 lt!1307443 lt!1307433)))))

(declare-fun lt!1307436 () List!40394)

(assert (=> b!3776025 (isSuffix!966 lt!1307443 lt!1307436)))

(declare-fun lt!1307439 () List!40394)

(assert (=> b!3776025 (= lt!1307436 (++!10039 lt!1307439 lt!1307443))))

(declare-datatypes ((Unit!57984 0))(
  ( (Unit!57985) )
))
(declare-fun lt!1307415 () Unit!57984)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!651 (List!40394 List!40394) Unit!57984)

(assert (=> b!3776025 (= lt!1307415 (lemmaConcatTwoListThenFSndIsSuffix!651 lt!1307439 lt!1307443))))

(declare-fun lt!1307440 () BalanceConc!24310)

(assert (=> b!3776025 (= lt!1307439 (list!14911 lt!1307440))))

(declare-fun e!2335033 () Bool)

(assert (=> b!3776025 e!2335033))

(declare-fun c!654715 () Bool)

(declare-datatypes ((tuple2!39342 0))(
  ( (tuple2!39343 (_1!22805 Token!11522) (_2!22805 BalanceConc!24310)) )
))
(declare-datatypes ((Option!8594 0))(
  ( (None!8593) (Some!8593 (v!38771 tuple2!39342)) )
))
(declare-fun lt!1307431 () Option!8594)

(assert (=> b!3776025 (= c!654715 ((_ is Some!8593) lt!1307431))))

(declare-fun lt!1307435 () tuple2!39340)

(assert (=> b!3776025 (= lt!1307435 (lexRec!805 thiss!11876 rules!1265 lt!1307440))))

(declare-fun maxPrefixZipperSequence!1189 (LexerInterface!5781 List!40397 BalanceConc!24310) Option!8594)

(assert (=> b!3776025 (= lt!1307431 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 lt!1307440))))

(declare-fun lt!1307428 () BalanceConc!24310)

(declare-fun ++!10041 (BalanceConc!24310 BalanceConc!24310) BalanceConc!24310)

(assert (=> b!3776025 (= lt!1307440 (++!10041 treated!13 lt!1307428))))

(declare-fun lt!1307441 () List!40396)

(declare-fun lt!1307427 () List!40394)

(declare-datatypes ((tuple2!39344 0))(
  ( (tuple2!39345 (_1!22806 List!40396) (_2!22806 List!40394)) )
))
(declare-fun lexList!1555 (LexerInterface!5781 List!40397 List!40394) tuple2!39344)

(assert (=> b!3776025 (= (lexList!1555 thiss!11876 rules!1265 lt!1307427) (tuple2!39345 lt!1307441 Nil!40270))))

(declare-fun lt!1307434 () Unit!57984)

(declare-fun lt!1307414 () List!40396)

(declare-fun lt!1307417 () tuple2!39340)

(declare-fun lemmaLexThenLexPrefix!557 (LexerInterface!5781 List!40397 List!40394 List!40394 List!40396 List!40396 List!40394) Unit!57984)

(assert (=> b!3776025 (= lt!1307434 (lemmaLexThenLexPrefix!557 thiss!11876 rules!1265 lt!1307427 lt!1307443 lt!1307441 lt!1307414 (list!14911 (_2!22804 lt!1307417))))))

(declare-fun lt!1307430 () Option!8594)

(declare-fun append!1028 (BalanceConc!24312 Token!11522) BalanceConc!24312)

(assert (=> b!3776025 (= lt!1307441 (list!14912 (append!1028 acc!335 (_1!22805 (v!38771 lt!1307430)))))))

(declare-fun lt!1307438 () List!40396)

(declare-fun lt!1307413 () List!40396)

(declare-fun ++!10042 (List!40396 List!40396) List!40396)

(assert (=> b!3776025 (= (++!10042 (++!10042 lt!1307438 lt!1307413) lt!1307414) (++!10042 lt!1307438 (++!10042 lt!1307413 lt!1307414)))))

(declare-fun lt!1307426 () Unit!57984)

(declare-fun lemmaConcatAssociativity!2137 (List!40396 List!40396 List!40396) Unit!57984)

(assert (=> b!3776025 (= lt!1307426 (lemmaConcatAssociativity!2137 lt!1307438 lt!1307413 lt!1307414))))

(assert (=> b!3776025 (= lt!1307414 (list!14912 (_1!22804 lt!1307417)))))

(assert (=> b!3776025 (= lt!1307413 (Cons!40272 (_1!22805 (v!38771 lt!1307430)) Nil!40272))))

(assert (=> b!3776025 (= lt!1307429 e!2335029)))

(declare-fun c!654716 () Bool)

(declare-fun lt!1307437 () Option!8594)

(assert (=> b!3776025 (= c!654716 ((_ is Some!8593) lt!1307437))))

(assert (=> b!3776025 (= lt!1307437 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1307419 () List!40394)

(assert (=> b!3776025 (= (++!10039 lt!1307427 lt!1307443) (++!10039 lt!1307420 (++!10039 lt!1307419 lt!1307443)))))

(assert (=> b!3776025 (= lt!1307427 (++!10039 lt!1307420 lt!1307419))))

(declare-fun lt!1307425 () Unit!57984)

(declare-fun lemmaConcatAssociativity!2138 (List!40394 List!40394 List!40394) Unit!57984)

(assert (=> b!3776025 (= lt!1307425 (lemmaConcatAssociativity!2138 lt!1307420 lt!1307419 lt!1307443))))

(assert (=> b!3776025 (= lt!1307443 (list!14911 (_2!22805 (v!38771 lt!1307430))))))

(assert (=> b!3776025 (= lt!1307419 (list!14911 lt!1307428))))

(declare-fun charsOf!4034 (Token!11522) BalanceConc!24310)

(assert (=> b!3776025 (= lt!1307428 (charsOf!4034 (_1!22805 (v!38771 lt!1307430))))))

(assert (=> b!3776025 (= lt!1307417 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307430))))))

(declare-fun b!3776026 () Bool)

(declare-fun lt!1307432 () tuple2!39340)

(declare-fun prepend!1326 (BalanceConc!24312 Token!11522) BalanceConc!24312)

(assert (=> b!3776026 (= e!2335033 (= lt!1307435 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307432) (_1!22805 (v!38771 lt!1307431))) (_2!22804 lt!1307432))))))

(assert (=> b!3776026 (= lt!1307432 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307431))))))

(declare-fun b!3776027 () Bool)

(declare-fun lt!1307442 () tuple2!39340)

(assert (=> b!3776027 (= e!2335029 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307442) (_1!22805 (v!38771 lt!1307437))) (_2!22804 lt!1307442)))))

(assert (=> b!3776027 (= lt!1307442 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307437))))))

(declare-fun b!3776028 () Bool)

(assert (=> b!3776028 (= e!2335023 e!2335034)))

(declare-fun res!1528724 () Bool)

(assert (=> b!3776028 (=> (not res!1528724) (not e!2335034))))

(declare-fun lt!1307422 () List!40396)

(assert (=> b!3776028 (= res!1528724 (= lt!1307422 lt!1307438))))

(assert (=> b!3776028 (= lt!1307438 (list!14912 acc!335))))

(declare-fun lt!1307418 () tuple2!39340)

(assert (=> b!3776028 (= lt!1307422 (list!14912 (_1!22804 lt!1307418)))))

(assert (=> b!3776028 (= lt!1307418 (lexRec!805 thiss!11876 rules!1265 treated!13))))

(declare-fun b!3776029 () Bool)

(declare-fun tp!1152069 () Bool)

(declare-fun inv!54119 (Conc!12359) Bool)

(assert (=> b!3776029 (= e!2335027 (and (inv!54119 (c!654719 acc!335)) tp!1152069))))

(declare-fun b!3776030 () Bool)

(assert (=> b!3776030 (= e!2335035 (= (list!14912 (_1!22804 lt!1307435)) lt!1307441))))

(declare-fun b!3776031 () Bool)

(declare-fun e!2335024 () Bool)

(assert (=> b!3776031 (= e!2335022 (not e!2335024))))

(declare-fun res!1528725 () Bool)

(assert (=> b!3776031 (=> res!1528725 e!2335024)))

(assert (=> b!3776031 (= res!1528725 (not (isSuffix!966 lt!1307423 lt!1307433)))))

(assert (=> b!3776031 (isSuffix!966 lt!1307423 lt!1307424)))

(declare-fun lt!1307416 () Unit!57984)

(assert (=> b!3776031 (= lt!1307416 (lemmaConcatTwoListThenFSndIsSuffix!651 lt!1307420 lt!1307423))))

(declare-fun tp!1152070 () Bool)

(declare-fun b!3776032 () Bool)

(declare-fun e!2335021 () Bool)

(declare-fun inv!54110 (String!45792) Bool)

(declare-fun inv!54120 (TokenValueInjection!12272) Bool)

(assert (=> b!3776032 (= e!2335032 (and tp!1152070 (inv!54110 (tag!7052 (h!45693 rules!1265))) (inv!54120 (transformation!6192 (h!45693 rules!1265))) e!2335021))))

(declare-fun b!3776033 () Bool)

(assert (=> b!3776033 (= e!2335033 (= lt!1307435 (tuple2!39341 (BalanceConc!24313 Empty!12359) lt!1307440)))))

(declare-fun b!3776034 () Bool)

(assert (=> b!3776034 (= e!2335024 e!2335025)))

(declare-fun res!1528726 () Bool)

(assert (=> b!3776034 (=> res!1528726 e!2335025)))

(assert (=> b!3776034 (= res!1528726 (not ((_ is Some!8593) lt!1307430)))))

(declare-fun maxPrefixZipperSequenceV2!585 (LexerInterface!5781 List!40397 BalanceConc!24310 BalanceConc!24310) Option!8594)

(assert (=> b!3776034 (= lt!1307430 (maxPrefixZipperSequenceV2!585 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun b!3776035 () Bool)

(declare-fun tp!1152074 () Bool)

(assert (=> b!3776035 (= e!2335031 (and (inv!54116 (c!654717 treated!13)) tp!1152074))))

(declare-fun b!3776036 () Bool)

(declare-fun res!1528722 () Bool)

(assert (=> b!3776036 (=> (not res!1528722) (not e!2335034))))

(declare-fun isEmpty!23663 (List!40394) Bool)

(assert (=> b!3776036 (= res!1528722 (isEmpty!23663 (list!14911 (_2!22804 lt!1307418))))))

(declare-fun b!3776037 () Bool)

(declare-fun res!1528727 () Bool)

(assert (=> b!3776037 (=> res!1528727 e!2335035)))

(assert (=> b!3776037 (= res!1528727 (not (= lt!1307433 lt!1307436)))))

(declare-fun b!3776038 () Bool)

(declare-fun res!1528723 () Bool)

(assert (=> b!3776038 (=> (not res!1528723) (not e!2335030))))

(declare-fun rulesInvariant!5124 (LexerInterface!5781 List!40397) Bool)

(assert (=> b!3776038 (= res!1528723 (rulesInvariant!5124 thiss!11876 rules!1265))))

(assert (=> b!3776039 (= e!2335021 (and tp!1152075 tp!1152071))))

(declare-fun b!3776040 () Bool)

(declare-fun res!1528721 () Bool)

(assert (=> b!3776040 (=> (not res!1528721) (not e!2335030))))

(declare-fun isEmpty!23664 (List!40397) Bool)

(assert (=> b!3776040 (= res!1528721 (not (isEmpty!23664 rules!1265)))))

(assert (= (and start!354436 res!1528717) b!3776040))

(assert (= (and b!3776040 res!1528721) b!3776038))

(assert (= (and b!3776038 res!1528723) b!3776021))

(assert (= (and b!3776021 res!1528720) b!3776028))

(assert (= (and b!3776028 res!1528724) b!3776036))

(assert (= (and b!3776036 res!1528722) b!3776024))

(assert (= (and b!3776024 res!1528716) b!3776023))

(assert (= (and b!3776023 res!1528719) b!3776031))

(assert (= (and b!3776031 (not res!1528725)) b!3776034))

(assert (= (and b!3776034 (not res!1528726)) b!3776025))

(assert (= (and b!3776025 c!654716) b!3776027))

(assert (= (and b!3776025 (not c!654716)) b!3776019))

(assert (= (and b!3776025 c!654715) b!3776026))

(assert (= (and b!3776025 (not c!654715)) b!3776033))

(assert (= (and b!3776025 (not res!1528718)) b!3776037))

(assert (= (and b!3776037 (not res!1528727)) b!3776030))

(assert (= start!354436 b!3776018))

(assert (= start!354436 b!3776029))

(assert (= start!354436 b!3776035))

(assert (= b!3776032 b!3776039))

(assert (= b!3776020 b!3776032))

(assert (= (and start!354436 ((_ is Cons!40273) rules!1265)) b!3776020))

(assert (= start!354436 b!3776022))

(declare-fun m!4280747 () Bool)

(assert (=> b!3776030 m!4280747))

(declare-fun m!4280749 () Bool)

(assert (=> b!3776040 m!4280749))

(declare-fun m!4280751 () Bool)

(assert (=> b!3776036 m!4280751))

(assert (=> b!3776036 m!4280751))

(declare-fun m!4280753 () Bool)

(assert (=> b!3776036 m!4280753))

(declare-fun m!4280755 () Bool)

(assert (=> b!3776025 m!4280755))

(declare-fun m!4280757 () Bool)

(assert (=> b!3776025 m!4280757))

(declare-fun m!4280759 () Bool)

(assert (=> b!3776025 m!4280759))

(declare-fun m!4280761 () Bool)

(assert (=> b!3776025 m!4280761))

(declare-fun m!4280763 () Bool)

(assert (=> b!3776025 m!4280763))

(declare-fun m!4280765 () Bool)

(assert (=> b!3776025 m!4280765))

(declare-fun m!4280767 () Bool)

(assert (=> b!3776025 m!4280767))

(declare-fun m!4280769 () Bool)

(assert (=> b!3776025 m!4280769))

(declare-fun m!4280771 () Bool)

(assert (=> b!3776025 m!4280771))

(declare-fun m!4280773 () Bool)

(assert (=> b!3776025 m!4280773))

(declare-fun m!4280775 () Bool)

(assert (=> b!3776025 m!4280775))

(declare-fun m!4280777 () Bool)

(assert (=> b!3776025 m!4280777))

(declare-fun m!4280779 () Bool)

(assert (=> b!3776025 m!4280779))

(declare-fun m!4280781 () Bool)

(assert (=> b!3776025 m!4280781))

(declare-fun m!4280783 () Bool)

(assert (=> b!3776025 m!4280783))

(declare-fun m!4280785 () Bool)

(assert (=> b!3776025 m!4280785))

(declare-fun m!4280787 () Bool)

(assert (=> b!3776025 m!4280787))

(declare-fun m!4280789 () Bool)

(assert (=> b!3776025 m!4280789))

(assert (=> b!3776025 m!4280771))

(declare-fun m!4280791 () Bool)

(assert (=> b!3776025 m!4280791))

(assert (=> b!3776025 m!4280765))

(declare-fun m!4280793 () Bool)

(assert (=> b!3776025 m!4280793))

(declare-fun m!4280795 () Bool)

(assert (=> b!3776025 m!4280795))

(declare-fun m!4280797 () Bool)

(assert (=> b!3776025 m!4280797))

(declare-fun m!4280799 () Bool)

(assert (=> b!3776025 m!4280799))

(declare-fun m!4280801 () Bool)

(assert (=> b!3776025 m!4280801))

(assert (=> b!3776025 m!4280773))

(declare-fun m!4280803 () Bool)

(assert (=> b!3776025 m!4280803))

(declare-fun m!4280805 () Bool)

(assert (=> b!3776025 m!4280805))

(assert (=> b!3776025 m!4280757))

(declare-fun m!4280807 () Bool)

(assert (=> b!3776025 m!4280807))

(declare-fun m!4280809 () Bool)

(assert (=> b!3776025 m!4280809))

(assert (=> b!3776025 m!4280789))

(declare-fun m!4280811 () Bool)

(assert (=> b!3776025 m!4280811))

(declare-fun m!4280813 () Bool)

(assert (=> b!3776026 m!4280813))

(declare-fun m!4280815 () Bool)

(assert (=> b!3776026 m!4280815))

(declare-fun m!4280817 () Bool)

(assert (=> b!3776032 m!4280817))

(declare-fun m!4280819 () Bool)

(assert (=> b!3776032 m!4280819))

(declare-fun m!4280821 () Bool)

(assert (=> b!3776028 m!4280821))

(declare-fun m!4280823 () Bool)

(assert (=> b!3776028 m!4280823))

(declare-fun m!4280825 () Bool)

(assert (=> b!3776028 m!4280825))

(declare-fun m!4280827 () Bool)

(assert (=> b!3776018 m!4280827))

(declare-fun m!4280829 () Bool)

(assert (=> b!3776024 m!4280829))

(declare-fun m!4280831 () Bool)

(assert (=> b!3776024 m!4280831))

(assert (=> b!3776024 m!4280829))

(declare-fun m!4280833 () Bool)

(assert (=> b!3776024 m!4280833))

(declare-fun m!4280835 () Bool)

(assert (=> b!3776024 m!4280835))

(declare-fun m!4280837 () Bool)

(assert (=> b!3776024 m!4280837))

(declare-fun m!4280839 () Bool)

(assert (=> start!354436 m!4280839))

(declare-fun m!4280841 () Bool)

(assert (=> start!354436 m!4280841))

(declare-fun m!4280843 () Bool)

(assert (=> start!354436 m!4280843))

(declare-fun m!4280845 () Bool)

(assert (=> start!354436 m!4280845))

(declare-fun m!4280847 () Bool)

(assert (=> b!3776022 m!4280847))

(declare-fun m!4280849 () Bool)

(assert (=> b!3776021 m!4280849))

(declare-fun m!4280851 () Bool)

(assert (=> b!3776021 m!4280851))

(declare-fun m!4280853 () Bool)

(assert (=> b!3776021 m!4280853))

(declare-fun m!4280855 () Bool)

(assert (=> b!3776021 m!4280855))

(declare-fun m!4280857 () Bool)

(assert (=> b!3776027 m!4280857))

(declare-fun m!4280859 () Bool)

(assert (=> b!3776027 m!4280859))

(declare-fun m!4280861 () Bool)

(assert (=> b!3776023 m!4280861))

(declare-fun m!4280863 () Bool)

(assert (=> b!3776023 m!4280863))

(declare-fun m!4280865 () Bool)

(assert (=> b!3776029 m!4280865))

(declare-fun m!4280867 () Bool)

(assert (=> b!3776031 m!4280867))

(declare-fun m!4280869 () Bool)

(assert (=> b!3776031 m!4280869))

(declare-fun m!4280871 () Bool)

(assert (=> b!3776031 m!4280871))

(declare-fun m!4280873 () Bool)

(assert (=> b!3776034 m!4280873))

(declare-fun m!4280875 () Bool)

(assert (=> b!3776038 m!4280875))

(declare-fun m!4280877 () Bool)

(assert (=> b!3776035 m!4280877))

(check-sat (not b!3776035) (not b!3776032) (not b!3776020) b_and!280511 (not b!3776031) (not b!3776038) (not b!3776022) (not b!3776028) b_and!280513 (not b_next!101757) (not b!3776036) (not b_next!101759) (not b!3776025) (not b!3776034) (not b!3776027) (not b!3776021) (not b!3776024) (not start!354436) (not b!3776029) (not b!3776026) (not b!3776023) (not b!3776030) (not b!3776018) (not b!3776040))
(check-sat b_and!280511 b_and!280513 (not b_next!101757) (not b_next!101759))
(get-model)

(declare-fun d!1106142 () Bool)

(declare-fun list!14915 (Conc!12359) List!40396)

(assert (=> d!1106142 (= (list!14912 acc!335) (list!14915 (c!654719 acc!335)))))

(declare-fun bs!576945 () Bool)

(assert (= bs!576945 d!1106142))

(declare-fun m!4280887 () Bool)

(assert (=> bs!576945 m!4280887))

(assert (=> b!3776028 d!1106142))

(declare-fun d!1106144 () Bool)

(assert (=> d!1106144 (= (list!14912 (_1!22804 lt!1307418)) (list!14915 (c!654719 (_1!22804 lt!1307418))))))

(declare-fun bs!576946 () Bool)

(assert (= bs!576946 d!1106144))

(declare-fun m!4280889 () Bool)

(assert (=> bs!576946 m!4280889))

(assert (=> b!3776028 d!1106144))

(declare-fun d!1106146 () Bool)

(declare-fun e!2335112 () Bool)

(assert (=> d!1106146 e!2335112))

(declare-fun res!1528797 () Bool)

(assert (=> d!1106146 (=> (not res!1528797) (not e!2335112))))

(declare-fun e!2335109 () Bool)

(assert (=> d!1106146 (= res!1528797 e!2335109)))

(declare-fun c!654754 () Bool)

(declare-fun lt!1307497 () tuple2!39340)

(declare-fun size!30298 (BalanceConc!24312) Int)

(assert (=> d!1106146 (= c!654754 (> (size!30298 (_1!22804 lt!1307497)) 0))))

(declare-fun e!2335111 () tuple2!39340)

(assert (=> d!1106146 (= lt!1307497 e!2335111)))

(declare-fun c!654753 () Bool)

(declare-fun lt!1307496 () Option!8594)

(assert (=> d!1106146 (= c!654753 ((_ is Some!8593) lt!1307496))))

(assert (=> d!1106146 (= lt!1307496 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1106146 (= (lexRec!805 thiss!11876 rules!1265 treated!13) lt!1307497)))

(declare-fun b!3776164 () Bool)

(declare-fun res!1528799 () Bool)

(assert (=> b!3776164 (=> (not res!1528799) (not e!2335112))))

(assert (=> b!3776164 (= res!1528799 (= (list!14912 (_1!22804 lt!1307497)) (_1!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 treated!13)))))))

(declare-fun b!3776165 () Bool)

(declare-fun e!2335110 () Bool)

(declare-fun isEmpty!23666 (BalanceConc!24312) Bool)

(assert (=> b!3776165 (= e!2335110 (not (isEmpty!23666 (_1!22804 lt!1307497))))))

(declare-fun b!3776166 () Bool)

(assert (=> b!3776166 (= e!2335111 (tuple2!39341 (BalanceConc!24313 Empty!12359) treated!13))))

(declare-fun b!3776167 () Bool)

(assert (=> b!3776167 (= e!2335112 (= (list!14911 (_2!22804 lt!1307497)) (_2!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 treated!13)))))))

(declare-fun b!3776168 () Bool)

(declare-fun lt!1307498 () tuple2!39340)

(assert (=> b!3776168 (= e!2335111 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307498) (_1!22805 (v!38771 lt!1307496))) (_2!22804 lt!1307498)))))

(assert (=> b!3776168 (= lt!1307498 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307496))))))

(declare-fun b!3776169 () Bool)

(assert (=> b!3776169 (= e!2335109 (= (list!14911 (_2!22804 lt!1307497)) (list!14911 treated!13)))))

(declare-fun b!3776170 () Bool)

(assert (=> b!3776170 (= e!2335109 e!2335110)))

(declare-fun res!1528798 () Bool)

(declare-fun size!30299 (BalanceConc!24310) Int)

(assert (=> b!3776170 (= res!1528798 (< (size!30299 (_2!22804 lt!1307497)) (size!30299 treated!13)))))

(assert (=> b!3776170 (=> (not res!1528798) (not e!2335110))))

(assert (= (and d!1106146 c!654753) b!3776168))

(assert (= (and d!1106146 (not c!654753)) b!3776166))

(assert (= (and d!1106146 c!654754) b!3776170))

(assert (= (and d!1106146 (not c!654754)) b!3776169))

(assert (= (and b!3776170 res!1528798) b!3776165))

(assert (= (and d!1106146 res!1528797) b!3776164))

(assert (= (and b!3776164 res!1528799) b!3776167))

(declare-fun m!4281115 () Bool)

(assert (=> b!3776169 m!4281115))

(assert (=> b!3776169 m!4280855))

(declare-fun m!4281117 () Bool)

(assert (=> b!3776168 m!4281117))

(declare-fun m!4281119 () Bool)

(assert (=> b!3776168 m!4281119))

(declare-fun m!4281121 () Bool)

(assert (=> d!1106146 m!4281121))

(declare-fun m!4281123 () Bool)

(assert (=> d!1106146 m!4281123))

(declare-fun m!4281125 () Bool)

(assert (=> b!3776164 m!4281125))

(assert (=> b!3776164 m!4280855))

(assert (=> b!3776164 m!4280855))

(declare-fun m!4281127 () Bool)

(assert (=> b!3776164 m!4281127))

(declare-fun m!4281129 () Bool)

(assert (=> b!3776165 m!4281129))

(declare-fun m!4281131 () Bool)

(assert (=> b!3776170 m!4281131))

(declare-fun m!4281133 () Bool)

(assert (=> b!3776170 m!4281133))

(assert (=> b!3776167 m!4281115))

(assert (=> b!3776167 m!4280855))

(assert (=> b!3776167 m!4280855))

(assert (=> b!3776167 m!4281127))

(assert (=> b!3776028 d!1106146))

(declare-fun d!1106216 () Bool)

(declare-fun c!654763 () Bool)

(assert (=> d!1106216 (= c!654763 ((_ is Node!12358) (c!654717 input!678)))))

(declare-fun e!2335126 () Bool)

(assert (=> d!1106216 (= (inv!54116 (c!654717 input!678)) e!2335126)))

(declare-fun b!3776192 () Bool)

(declare-fun inv!54123 (Conc!12358) Bool)

(assert (=> b!3776192 (= e!2335126 (inv!54123 (c!654717 input!678)))))

(declare-fun b!3776193 () Bool)

(declare-fun e!2335127 () Bool)

(assert (=> b!3776193 (= e!2335126 e!2335127)))

(declare-fun res!1528805 () Bool)

(assert (=> b!3776193 (= res!1528805 (not ((_ is Leaf!19152) (c!654717 input!678))))))

(assert (=> b!3776193 (=> res!1528805 e!2335127)))

(declare-fun b!3776194 () Bool)

(declare-fun inv!54124 (Conc!12358) Bool)

(assert (=> b!3776194 (= e!2335127 (inv!54124 (c!654717 input!678)))))

(assert (= (and d!1106216 c!654763) b!3776192))

(assert (= (and d!1106216 (not c!654763)) b!3776193))

(assert (= (and b!3776193 (not res!1528805)) b!3776194))

(declare-fun m!4281149 () Bool)

(assert (=> b!3776192 m!4281149))

(declare-fun m!4281151 () Bool)

(assert (=> b!3776194 m!4281151))

(assert (=> b!3776018 d!1106216))

(declare-fun d!1106222 () Bool)

(declare-fun e!2335135 () Bool)

(assert (=> d!1106222 e!2335135))

(declare-fun res!1528816 () Bool)

(assert (=> d!1106222 (=> (not res!1528816) (not e!2335135))))

(declare-fun isBalanced!3553 (Conc!12359) Bool)

(declare-fun prepend!1328 (Conc!12359 Token!11522) Conc!12359)

(assert (=> d!1106222 (= res!1528816 (isBalanced!3553 (prepend!1328 (c!654719 (_1!22804 lt!1307442)) (_1!22805 (v!38771 lt!1307437)))))))

(declare-fun lt!1307515 () BalanceConc!24312)

(assert (=> d!1106222 (= lt!1307515 (BalanceConc!24313 (prepend!1328 (c!654719 (_1!22804 lt!1307442)) (_1!22805 (v!38771 lt!1307437)))))))

(assert (=> d!1106222 (= (prepend!1326 (_1!22804 lt!1307442) (_1!22805 (v!38771 lt!1307437))) lt!1307515)))

(declare-fun b!3776210 () Bool)

(assert (=> b!3776210 (= e!2335135 (= (list!14912 lt!1307515) (Cons!40272 (_1!22805 (v!38771 lt!1307437)) (list!14912 (_1!22804 lt!1307442)))))))

(assert (= (and d!1106222 res!1528816) b!3776210))

(declare-fun m!4281163 () Bool)

(assert (=> d!1106222 m!4281163))

(assert (=> d!1106222 m!4281163))

(declare-fun m!4281165 () Bool)

(assert (=> d!1106222 m!4281165))

(declare-fun m!4281167 () Bool)

(assert (=> b!3776210 m!4281167))

(declare-fun m!4281169 () Bool)

(assert (=> b!3776210 m!4281169))

(assert (=> b!3776027 d!1106222))

(declare-fun d!1106228 () Bool)

(declare-fun e!2335139 () Bool)

(assert (=> d!1106228 e!2335139))

(declare-fun res!1528817 () Bool)

(assert (=> d!1106228 (=> (not res!1528817) (not e!2335139))))

(declare-fun e!2335136 () Bool)

(assert (=> d!1106228 (= res!1528817 e!2335136)))

(declare-fun c!654769 () Bool)

(declare-fun lt!1307517 () tuple2!39340)

(assert (=> d!1106228 (= c!654769 (> (size!30298 (_1!22804 lt!1307517)) 0))))

(declare-fun e!2335138 () tuple2!39340)

(assert (=> d!1106228 (= lt!1307517 e!2335138)))

(declare-fun c!654768 () Bool)

(declare-fun lt!1307516 () Option!8594)

(assert (=> d!1106228 (= c!654768 ((_ is Some!8593) lt!1307516))))

(assert (=> d!1106228 (= lt!1307516 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307437))))))

(assert (=> d!1106228 (= (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307437))) lt!1307517)))

(declare-fun b!3776211 () Bool)

(declare-fun res!1528819 () Bool)

(assert (=> b!3776211 (=> (not res!1528819) (not e!2335139))))

(assert (=> b!3776211 (= res!1528819 (= (list!14912 (_1!22804 lt!1307517)) (_1!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 (_2!22805 (v!38771 lt!1307437)))))))))

(declare-fun b!3776212 () Bool)

(declare-fun e!2335137 () Bool)

(assert (=> b!3776212 (= e!2335137 (not (isEmpty!23666 (_1!22804 lt!1307517))))))

(declare-fun b!3776213 () Bool)

(assert (=> b!3776213 (= e!2335138 (tuple2!39341 (BalanceConc!24313 Empty!12359) (_2!22805 (v!38771 lt!1307437))))))

(declare-fun b!3776214 () Bool)

(assert (=> b!3776214 (= e!2335139 (= (list!14911 (_2!22804 lt!1307517)) (_2!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 (_2!22805 (v!38771 lt!1307437)))))))))

(declare-fun b!3776215 () Bool)

(declare-fun lt!1307518 () tuple2!39340)

(assert (=> b!3776215 (= e!2335138 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307518) (_1!22805 (v!38771 lt!1307516))) (_2!22804 lt!1307518)))))

(assert (=> b!3776215 (= lt!1307518 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307516))))))

(declare-fun b!3776216 () Bool)

(assert (=> b!3776216 (= e!2335136 (= (list!14911 (_2!22804 lt!1307517)) (list!14911 (_2!22805 (v!38771 lt!1307437)))))))

(declare-fun b!3776217 () Bool)

(assert (=> b!3776217 (= e!2335136 e!2335137)))

(declare-fun res!1528818 () Bool)

(assert (=> b!3776217 (= res!1528818 (< (size!30299 (_2!22804 lt!1307517)) (size!30299 (_2!22805 (v!38771 lt!1307437)))))))

(assert (=> b!3776217 (=> (not res!1528818) (not e!2335137))))

(assert (= (and d!1106228 c!654768) b!3776215))

(assert (= (and d!1106228 (not c!654768)) b!3776213))

(assert (= (and d!1106228 c!654769) b!3776217))

(assert (= (and d!1106228 (not c!654769)) b!3776216))

(assert (= (and b!3776217 res!1528818) b!3776212))

(assert (= (and d!1106228 res!1528817) b!3776211))

(assert (= (and b!3776211 res!1528819) b!3776214))

(declare-fun m!4281179 () Bool)

(assert (=> b!3776216 m!4281179))

(declare-fun m!4281183 () Bool)

(assert (=> b!3776216 m!4281183))

(declare-fun m!4281185 () Bool)

(assert (=> b!3776215 m!4281185))

(declare-fun m!4281187 () Bool)

(assert (=> b!3776215 m!4281187))

(declare-fun m!4281191 () Bool)

(assert (=> d!1106228 m!4281191))

(declare-fun m!4281193 () Bool)

(assert (=> d!1106228 m!4281193))

(declare-fun m!4281199 () Bool)

(assert (=> b!3776211 m!4281199))

(assert (=> b!3776211 m!4281183))

(assert (=> b!3776211 m!4281183))

(declare-fun m!4281203 () Bool)

(assert (=> b!3776211 m!4281203))

(declare-fun m!4281205 () Bool)

(assert (=> b!3776212 m!4281205))

(declare-fun m!4281207 () Bool)

(assert (=> b!3776217 m!4281207))

(declare-fun m!4281209 () Bool)

(assert (=> b!3776217 m!4281209))

(assert (=> b!3776214 m!4281179))

(assert (=> b!3776214 m!4281183))

(assert (=> b!3776214 m!4281183))

(assert (=> b!3776214 m!4281203))

(assert (=> b!3776027 d!1106228))

(declare-fun d!1106232 () Bool)

(declare-fun res!1528830 () Bool)

(declare-fun e!2335147 () Bool)

(assert (=> d!1106232 (=> (not res!1528830) (not e!2335147))))

(declare-fun rulesValid!2382 (LexerInterface!5781 List!40397) Bool)

(assert (=> d!1106232 (= res!1528830 (rulesValid!2382 thiss!11876 rules!1265))))

(assert (=> d!1106232 (= (rulesInvariant!5124 thiss!11876 rules!1265) e!2335147)))

(declare-fun b!3776232 () Bool)

(declare-datatypes ((List!40399 0))(
  ( (Nil!40275) (Cons!40275 (h!45695 String!45792) (t!305110 List!40399)) )
))
(declare-fun noDuplicateTag!2383 (LexerInterface!5781 List!40397 List!40399) Bool)

(assert (=> b!3776232 (= e!2335147 (noDuplicateTag!2383 thiss!11876 rules!1265 Nil!40275))))

(assert (= (and d!1106232 res!1528830) b!3776232))

(declare-fun m!4281211 () Bool)

(assert (=> d!1106232 m!4281211))

(declare-fun m!4281213 () Bool)

(assert (=> b!3776232 m!4281213))

(assert (=> b!3776038 d!1106232))

(declare-fun d!1106234 () Bool)

(declare-fun e!2335160 () Bool)

(assert (=> d!1106234 e!2335160))

(declare-fun res!1528843 () Bool)

(assert (=> d!1106234 (=> res!1528843 e!2335160)))

(declare-fun lt!1307529 () Bool)

(assert (=> d!1106234 (= res!1528843 (not lt!1307529))))

(declare-fun drop!2111 (List!40394 Int) List!40394)

(declare-fun size!30301 (List!40394) Int)

(assert (=> d!1106234 (= lt!1307529 (= lt!1307423 (drop!2111 lt!1307433 (- (size!30301 lt!1307433) (size!30301 lt!1307423)))))))

(assert (=> d!1106234 (= (isSuffix!966 lt!1307423 lt!1307433) lt!1307529)))

(declare-fun b!3776255 () Bool)

(assert (=> b!3776255 (= e!2335160 (>= (size!30301 lt!1307433) (size!30301 lt!1307423)))))

(assert (= (and d!1106234 (not res!1528843)) b!3776255))

(declare-fun m!4281275 () Bool)

(assert (=> d!1106234 m!4281275))

(declare-fun m!4281277 () Bool)

(assert (=> d!1106234 m!4281277))

(declare-fun m!4281279 () Bool)

(assert (=> d!1106234 m!4281279))

(assert (=> b!3776255 m!4281275))

(assert (=> b!3776255 m!4281277))

(assert (=> b!3776031 d!1106234))

(declare-fun d!1106248 () Bool)

(declare-fun e!2335161 () Bool)

(assert (=> d!1106248 e!2335161))

(declare-fun res!1528844 () Bool)

(assert (=> d!1106248 (=> res!1528844 e!2335161)))

(declare-fun lt!1307530 () Bool)

(assert (=> d!1106248 (= res!1528844 (not lt!1307530))))

(assert (=> d!1106248 (= lt!1307530 (= lt!1307423 (drop!2111 lt!1307424 (- (size!30301 lt!1307424) (size!30301 lt!1307423)))))))

(assert (=> d!1106248 (= (isSuffix!966 lt!1307423 lt!1307424) lt!1307530)))

(declare-fun b!3776256 () Bool)

(assert (=> b!3776256 (= e!2335161 (>= (size!30301 lt!1307424) (size!30301 lt!1307423)))))

(assert (= (and d!1106248 (not res!1528844)) b!3776256))

(declare-fun m!4281281 () Bool)

(assert (=> d!1106248 m!4281281))

(assert (=> d!1106248 m!4281277))

(declare-fun m!4281283 () Bool)

(assert (=> d!1106248 m!4281283))

(assert (=> b!3776256 m!4281281))

(assert (=> b!3776256 m!4281277))

(assert (=> b!3776031 d!1106248))

(declare-fun d!1106250 () Bool)

(assert (=> d!1106250 (isSuffix!966 lt!1307423 (++!10039 lt!1307420 lt!1307423))))

(declare-fun lt!1307533 () Unit!57984)

(declare-fun choose!22329 (List!40394 List!40394) Unit!57984)

(assert (=> d!1106250 (= lt!1307533 (choose!22329 lt!1307420 lt!1307423))))

(assert (=> d!1106250 (= (lemmaConcatTwoListThenFSndIsSuffix!651 lt!1307420 lt!1307423) lt!1307533)))

(declare-fun bs!576966 () Bool)

(assert (= bs!576966 d!1106250))

(assert (=> bs!576966 m!4280849))

(assert (=> bs!576966 m!4280849))

(declare-fun m!4281285 () Bool)

(assert (=> bs!576966 m!4281285))

(declare-fun m!4281287 () Bool)

(assert (=> bs!576966 m!4281287))

(assert (=> b!3776031 d!1106250))

(declare-fun d!1106252 () Bool)

(declare-fun c!654779 () Bool)

(assert (=> d!1106252 (= c!654779 ((_ is Node!12359) (c!654719 acc!335)))))

(declare-fun e!2335166 () Bool)

(assert (=> d!1106252 (= (inv!54119 (c!654719 acc!335)) e!2335166)))

(declare-fun b!3776263 () Bool)

(declare-fun inv!54127 (Conc!12359) Bool)

(assert (=> b!3776263 (= e!2335166 (inv!54127 (c!654719 acc!335)))))

(declare-fun b!3776264 () Bool)

(declare-fun e!2335167 () Bool)

(assert (=> b!3776264 (= e!2335166 e!2335167)))

(declare-fun res!1528847 () Bool)

(assert (=> b!3776264 (= res!1528847 (not ((_ is Leaf!19153) (c!654719 acc!335))))))

(assert (=> b!3776264 (=> res!1528847 e!2335167)))

(declare-fun b!3776265 () Bool)

(declare-fun inv!54128 (Conc!12359) Bool)

(assert (=> b!3776265 (= e!2335167 (inv!54128 (c!654719 acc!335)))))

(assert (= (and d!1106252 c!654779) b!3776263))

(assert (= (and d!1106252 (not c!654779)) b!3776264))

(assert (= (and b!3776264 (not res!1528847)) b!3776265))

(declare-fun m!4281289 () Bool)

(assert (=> b!3776263 m!4281289))

(declare-fun m!4281291 () Bool)

(assert (=> b!3776265 m!4281291))

(assert (=> b!3776029 d!1106252))

(declare-fun d!1106254 () Bool)

(assert (=> d!1106254 (= (isEmpty!23664 rules!1265) ((_ is Nil!40273) rules!1265))))

(assert (=> b!3776040 d!1106254))

(declare-fun d!1106256 () Bool)

(assert (=> d!1106256 (= (list!14912 (_1!22804 lt!1307435)) (list!14915 (c!654719 (_1!22804 lt!1307435))))))

(declare-fun bs!576967 () Bool)

(assert (= bs!576967 d!1106256))

(declare-fun m!4281293 () Bool)

(assert (=> bs!576967 m!4281293))

(assert (=> b!3776030 d!1106256))

(declare-fun d!1106258 () Bool)

(declare-fun isBalanced!3554 (Conc!12358) Bool)

(assert (=> d!1106258 (= (inv!54117 input!678) (isBalanced!3554 (c!654717 input!678)))))

(declare-fun bs!576968 () Bool)

(assert (= bs!576968 d!1106258))

(declare-fun m!4281295 () Bool)

(assert (=> bs!576968 m!4281295))

(assert (=> start!354436 d!1106258))

(declare-fun d!1106260 () Bool)

(assert (=> d!1106260 (= (inv!54118 acc!335) (isBalanced!3553 (c!654719 acc!335)))))

(declare-fun bs!576969 () Bool)

(assert (= bs!576969 d!1106260))

(declare-fun m!4281297 () Bool)

(assert (=> bs!576969 m!4281297))

(assert (=> start!354436 d!1106260))

(declare-fun d!1106262 () Bool)

(assert (=> d!1106262 (= (inv!54117 treated!13) (isBalanced!3554 (c!654717 treated!13)))))

(declare-fun bs!576970 () Bool)

(assert (= bs!576970 d!1106262))

(declare-fun m!4281299 () Bool)

(assert (=> bs!576970 m!4281299))

(assert (=> start!354436 d!1106262))

(declare-fun d!1106264 () Bool)

(assert (=> d!1106264 (= (inv!54117 totalInput!335) (isBalanced!3554 (c!654717 totalInput!335)))))

(declare-fun bs!576971 () Bool)

(assert (= bs!576971 d!1106264))

(declare-fun m!4281301 () Bool)

(assert (=> bs!576971 m!4281301))

(assert (=> start!354436 d!1106264))

(declare-fun d!1106266 () Bool)

(declare-fun list!14916 (Conc!12358) List!40394)

(assert (=> d!1106266 (= (list!14911 (_2!22804 lt!1307421)) (list!14916 (c!654717 (_2!22804 lt!1307421))))))

(declare-fun bs!576972 () Bool)

(assert (= bs!576972 d!1106266))

(declare-fun m!4281303 () Bool)

(assert (=> bs!576972 m!4281303))

(assert (=> b!3776023 d!1106266))

(declare-fun d!1106268 () Bool)

(assert (=> d!1106268 (= (list!14911 (_2!22804 lt!1307429)) (list!14916 (c!654717 (_2!22804 lt!1307429))))))

(declare-fun bs!576973 () Bool)

(assert (= bs!576973 d!1106268))

(declare-fun m!4281305 () Bool)

(assert (=> bs!576973 m!4281305))

(assert (=> b!3776023 d!1106268))

(declare-fun lt!1307582 () Option!8594)

(declare-fun e!2335213 () Bool)

(declare-fun b!3776328 () Bool)

(declare-fun get!13346 (Option!8594) tuple2!39342)

(declare-datatypes ((tuple2!39346 0))(
  ( (tuple2!39347 (_1!22807 Token!11522) (_2!22807 List!40394)) )
))
(declare-datatypes ((Option!8595 0))(
  ( (None!8594) (Some!8594 (v!38776 tuple2!39346)) )
))
(declare-fun get!13347 (Option!8595) tuple2!39346)

(declare-fun maxPrefix!3100 (LexerInterface!5781 List!40397 List!40394) Option!8595)

(assert (=> b!3776328 (= e!2335213 (= (list!14911 (_2!22805 (get!13346 lt!1307582))) (_2!22807 (get!13347 (maxPrefix!3100 thiss!11876 rules!1265 (list!14911 input!678))))))))

(declare-fun b!3776329 () Bool)

(declare-fun e!2335212 () Bool)

(declare-fun e!2335215 () Bool)

(assert (=> b!3776329 (= e!2335212 e!2335215)))

(declare-fun res!1528893 () Bool)

(assert (=> b!3776329 (=> (not res!1528893) (not e!2335215))))

(declare-fun maxPrefixZipper!532 (LexerInterface!5781 List!40397 List!40394) Option!8595)

(assert (=> b!3776329 (= res!1528893 (= (_1!22805 (get!13346 lt!1307582)) (_1!22807 (get!13347 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 input!678))))))))

(declare-fun call!276456 () Option!8594)

(declare-fun bm!276451 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV2!228 (LexerInterface!5781 Rule!12184 BalanceConc!24310 BalanceConc!24310) Option!8594)

(assert (=> bm!276451 (= call!276456 (maxPrefixOneRuleZipperSequenceV2!228 thiss!11876 (h!45693 rules!1265) input!678 totalInput!335))))

(declare-fun d!1106270 () Bool)

(declare-fun e!2335216 () Bool)

(assert (=> d!1106270 e!2335216))

(declare-fun res!1528891 () Bool)

(assert (=> d!1106270 (=> (not res!1528891) (not e!2335216))))

(declare-fun isDefined!6760 (Option!8594) Bool)

(declare-fun isDefined!6761 (Option!8595) Bool)

(assert (=> d!1106270 (= res!1528891 (= (isDefined!6760 lt!1307582) (isDefined!6761 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 input!678)))))))

(declare-fun e!2335214 () Option!8594)

(assert (=> d!1106270 (= lt!1307582 e!2335214)))

(declare-fun c!654791 () Bool)

(assert (=> d!1106270 (= c!654791 (and ((_ is Cons!40273) rules!1265) ((_ is Nil!40273) (t!305100 rules!1265))))))

(declare-fun lt!1307583 () Unit!57984)

(declare-fun lt!1307580 () Unit!57984)

(assert (=> d!1106270 (= lt!1307583 lt!1307580)))

(declare-fun lt!1307581 () List!40394)

(declare-fun lt!1307578 () List!40394)

(declare-fun isPrefix!3308 (List!40394 List!40394) Bool)

(assert (=> d!1106270 (isPrefix!3308 lt!1307581 lt!1307578)))

(declare-fun lemmaIsPrefixRefl!2093 (List!40394 List!40394) Unit!57984)

(assert (=> d!1106270 (= lt!1307580 (lemmaIsPrefixRefl!2093 lt!1307581 lt!1307578))))

(assert (=> d!1106270 (= lt!1307578 (list!14911 input!678))))

(assert (=> d!1106270 (= lt!1307581 (list!14911 input!678))))

(declare-fun rulesValidInductive!2167 (LexerInterface!5781 List!40397) Bool)

(assert (=> d!1106270 (rulesValidInductive!2167 thiss!11876 rules!1265)))

(assert (=> d!1106270 (= (maxPrefixZipperSequenceV2!585 thiss!11876 rules!1265 input!678 totalInput!335) lt!1307582)))

(declare-fun b!3776330 () Bool)

(declare-fun e!2335211 () Bool)

(assert (=> b!3776330 (= e!2335216 e!2335211)))

(declare-fun res!1528892 () Bool)

(assert (=> b!3776330 (=> res!1528892 e!2335211)))

(assert (=> b!3776330 (= res!1528892 (not (isDefined!6760 lt!1307582)))))

(declare-fun b!3776331 () Bool)

(assert (=> b!3776331 (= e!2335211 e!2335213)))

(declare-fun res!1528895 () Bool)

(assert (=> b!3776331 (=> (not res!1528895) (not e!2335213))))

(assert (=> b!3776331 (= res!1528895 (= (_1!22805 (get!13346 lt!1307582)) (_1!22807 (get!13347 (maxPrefix!3100 thiss!11876 rules!1265 (list!14911 input!678))))))))

(declare-fun b!3776332 () Bool)

(assert (=> b!3776332 (= e!2335214 call!276456)))

(declare-fun b!3776333 () Bool)

(declare-fun res!1528890 () Bool)

(assert (=> b!3776333 (=> (not res!1528890) (not e!2335216))))

(assert (=> b!3776333 (= res!1528890 e!2335212)))

(declare-fun res!1528894 () Bool)

(assert (=> b!3776333 (=> res!1528894 e!2335212)))

(assert (=> b!3776333 (= res!1528894 (not (isDefined!6760 lt!1307582)))))

(declare-fun b!3776334 () Bool)

(declare-fun lt!1307579 () Option!8594)

(declare-fun lt!1307584 () Option!8594)

(assert (=> b!3776334 (= e!2335214 (ite (and ((_ is None!8593) lt!1307579) ((_ is None!8593) lt!1307584)) None!8593 (ite ((_ is None!8593) lt!1307584) lt!1307579 (ite ((_ is None!8593) lt!1307579) lt!1307584 (ite (>= (size!30295 (_1!22805 (v!38771 lt!1307579))) (size!30295 (_1!22805 (v!38771 lt!1307584)))) lt!1307579 lt!1307584)))))))

(assert (=> b!3776334 (= lt!1307579 call!276456)))

(assert (=> b!3776334 (= lt!1307584 (maxPrefixZipperSequenceV2!585 thiss!11876 (t!305100 rules!1265) input!678 totalInput!335))))

(declare-fun b!3776335 () Bool)

(assert (=> b!3776335 (= e!2335215 (= (list!14911 (_2!22805 (get!13346 lt!1307582))) (_2!22807 (get!13347 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 input!678))))))))

(assert (= (and d!1106270 c!654791) b!3776332))

(assert (= (and d!1106270 (not c!654791)) b!3776334))

(assert (= (or b!3776332 b!3776334) bm!276451))

(assert (= (and d!1106270 res!1528891) b!3776333))

(assert (= (and b!3776333 (not res!1528894)) b!3776329))

(assert (= (and b!3776329 res!1528893) b!3776335))

(assert (= (and b!3776333 res!1528890) b!3776330))

(assert (= (and b!3776330 (not res!1528892)) b!3776331))

(assert (= (and b!3776331 res!1528895) b!3776328))

(declare-fun m!4281383 () Bool)

(assert (=> b!3776333 m!4281383))

(declare-fun m!4281385 () Bool)

(assert (=> b!3776328 m!4281385))

(declare-fun m!4281387 () Bool)

(assert (=> b!3776328 m!4281387))

(declare-fun m!4281389 () Bool)

(assert (=> b!3776328 m!4281389))

(assert (=> b!3776328 m!4280853))

(assert (=> b!3776328 m!4281387))

(assert (=> b!3776328 m!4280853))

(declare-fun m!4281391 () Bool)

(assert (=> b!3776328 m!4281391))

(assert (=> b!3776329 m!4281385))

(assert (=> b!3776329 m!4280853))

(assert (=> b!3776329 m!4280853))

(declare-fun m!4281393 () Bool)

(assert (=> b!3776329 m!4281393))

(assert (=> b!3776329 m!4281393))

(declare-fun m!4281395 () Bool)

(assert (=> b!3776329 m!4281395))

(assert (=> b!3776330 m!4281383))

(assert (=> b!3776335 m!4280853))

(assert (=> b!3776335 m!4281393))

(assert (=> b!3776335 m!4281385))

(assert (=> b!3776335 m!4281393))

(assert (=> b!3776335 m!4281395))

(assert (=> b!3776335 m!4280853))

(assert (=> b!3776335 m!4281391))

(declare-fun m!4281397 () Bool)

(assert (=> bm!276451 m!4281397))

(assert (=> b!3776331 m!4281385))

(assert (=> b!3776331 m!4280853))

(assert (=> b!3776331 m!4280853))

(assert (=> b!3776331 m!4281387))

(assert (=> b!3776331 m!4281387))

(assert (=> b!3776331 m!4281389))

(assert (=> d!1106270 m!4280853))

(assert (=> d!1106270 m!4281393))

(declare-fun m!4281399 () Bool)

(assert (=> d!1106270 m!4281399))

(assert (=> d!1106270 m!4281383))

(declare-fun m!4281401 () Bool)

(assert (=> d!1106270 m!4281401))

(assert (=> d!1106270 m!4281393))

(declare-fun m!4281403 () Bool)

(assert (=> d!1106270 m!4281403))

(declare-fun m!4281405 () Bool)

(assert (=> d!1106270 m!4281405))

(assert (=> d!1106270 m!4280853))

(declare-fun m!4281407 () Bool)

(assert (=> b!3776334 m!4281407))

(assert (=> b!3776034 d!1106270))

(declare-fun b!3776347 () Bool)

(declare-fun lt!1307587 () List!40394)

(declare-fun e!2335222 () Bool)

(assert (=> b!3776347 (= e!2335222 (or (not (= lt!1307423 Nil!40270)) (= lt!1307587 lt!1307420)))))

(declare-fun b!3776345 () Bool)

(declare-fun e!2335221 () List!40394)

(assert (=> b!3776345 (= e!2335221 (Cons!40270 (h!45690 lt!1307420) (++!10039 (t!305097 lt!1307420) lt!1307423)))))

(declare-fun b!3776346 () Bool)

(declare-fun res!1528901 () Bool)

(assert (=> b!3776346 (=> (not res!1528901) (not e!2335222))))

(assert (=> b!3776346 (= res!1528901 (= (size!30301 lt!1307587) (+ (size!30301 lt!1307420) (size!30301 lt!1307423))))))

(declare-fun b!3776344 () Bool)

(assert (=> b!3776344 (= e!2335221 lt!1307423)))

(declare-fun d!1106284 () Bool)

(assert (=> d!1106284 e!2335222))

(declare-fun res!1528900 () Bool)

(assert (=> d!1106284 (=> (not res!1528900) (not e!2335222))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5918 (List!40394) (InoxSet C!22380))

(assert (=> d!1106284 (= res!1528900 (= (content!5918 lt!1307587) ((_ map or) (content!5918 lt!1307420) (content!5918 lt!1307423))))))

(assert (=> d!1106284 (= lt!1307587 e!2335221)))

(declare-fun c!654794 () Bool)

(assert (=> d!1106284 (= c!654794 ((_ is Nil!40270) lt!1307420))))

(assert (=> d!1106284 (= (++!10039 lt!1307420 lt!1307423) lt!1307587)))

(assert (= (and d!1106284 c!654794) b!3776344))

(assert (= (and d!1106284 (not c!654794)) b!3776345))

(assert (= (and d!1106284 res!1528900) b!3776346))

(assert (= (and b!3776346 res!1528901) b!3776347))

(declare-fun m!4281409 () Bool)

(assert (=> b!3776345 m!4281409))

(declare-fun m!4281411 () Bool)

(assert (=> b!3776346 m!4281411))

(declare-fun m!4281413 () Bool)

(assert (=> b!3776346 m!4281413))

(assert (=> b!3776346 m!4281277))

(declare-fun m!4281415 () Bool)

(assert (=> d!1106284 m!4281415))

(declare-fun m!4281417 () Bool)

(assert (=> d!1106284 m!4281417))

(declare-fun m!4281419 () Bool)

(assert (=> d!1106284 m!4281419))

(assert (=> b!3776021 d!1106284))

(declare-fun d!1106286 () Bool)

(assert (=> d!1106286 (= (list!14911 totalInput!335) (list!14916 (c!654717 totalInput!335)))))

(declare-fun bs!576974 () Bool)

(assert (= bs!576974 d!1106286))

(declare-fun m!4281421 () Bool)

(assert (=> bs!576974 m!4281421))

(assert (=> b!3776021 d!1106286))

(declare-fun d!1106288 () Bool)

(assert (=> d!1106288 (= (list!14911 input!678) (list!14916 (c!654717 input!678)))))

(declare-fun bs!576975 () Bool)

(assert (= bs!576975 d!1106288))

(declare-fun m!4281423 () Bool)

(assert (=> bs!576975 m!4281423))

(assert (=> b!3776021 d!1106288))

(declare-fun d!1106290 () Bool)

(assert (=> d!1106290 (= (list!14911 treated!13) (list!14916 (c!654717 treated!13)))))

(declare-fun bs!576976 () Bool)

(assert (= bs!576976 d!1106290))

(declare-fun m!4281425 () Bool)

(assert (=> bs!576976 m!4281425))

(assert (=> b!3776021 d!1106290))

(declare-fun d!1106292 () Bool)

(assert (=> d!1106292 (= (inv!54110 (tag!7052 (h!45693 rules!1265))) (= (mod (str.len (value!197078 (tag!7052 (h!45693 rules!1265)))) 2) 0))))

(assert (=> b!3776032 d!1106292))

(declare-fun d!1106294 () Bool)

(declare-fun res!1528904 () Bool)

(declare-fun e!2335225 () Bool)

(assert (=> d!1106294 (=> (not res!1528904) (not e!2335225))))

(declare-fun semiInverseModEq!2646 (Int Int) Bool)

(assert (=> d!1106294 (= res!1528904 (semiInverseModEq!2646 (toChars!8419 (transformation!6192 (h!45693 rules!1265))) (toValue!8560 (transformation!6192 (h!45693 rules!1265)))))))

(assert (=> d!1106294 (= (inv!54120 (transformation!6192 (h!45693 rules!1265))) e!2335225)))

(declare-fun b!3776350 () Bool)

(declare-fun equivClasses!2545 (Int Int) Bool)

(assert (=> b!3776350 (= e!2335225 (equivClasses!2545 (toChars!8419 (transformation!6192 (h!45693 rules!1265))) (toValue!8560 (transformation!6192 (h!45693 rules!1265)))))))

(assert (= (and d!1106294 res!1528904) b!3776350))

(declare-fun m!4281429 () Bool)

(assert (=> d!1106294 m!4281429))

(declare-fun m!4281431 () Bool)

(assert (=> b!3776350 m!4281431))

(assert (=> b!3776032 d!1106294))

(declare-fun d!1106298 () Bool)

(declare-fun c!654797 () Bool)

(assert (=> d!1106298 (= c!654797 ((_ is Node!12358) (c!654717 totalInput!335)))))

(declare-fun e!2335230 () Bool)

(assert (=> d!1106298 (= (inv!54116 (c!654717 totalInput!335)) e!2335230)))

(declare-fun b!3776358 () Bool)

(assert (=> b!3776358 (= e!2335230 (inv!54123 (c!654717 totalInput!335)))))

(declare-fun b!3776359 () Bool)

(declare-fun e!2335231 () Bool)

(assert (=> b!3776359 (= e!2335230 e!2335231)))

(declare-fun res!1528908 () Bool)

(assert (=> b!3776359 (= res!1528908 (not ((_ is Leaf!19152) (c!654717 totalInput!335))))))

(assert (=> b!3776359 (=> res!1528908 e!2335231)))

(declare-fun b!3776360 () Bool)

(assert (=> b!3776360 (= e!2335231 (inv!54124 (c!654717 totalInput!335)))))

(assert (= (and d!1106298 c!654797) b!3776358))

(assert (= (and d!1106298 (not c!654797)) b!3776359))

(assert (= (and b!3776359 (not res!1528908)) b!3776360))

(declare-fun m!4281433 () Bool)

(assert (=> b!3776358 m!4281433))

(declare-fun m!4281435 () Bool)

(assert (=> b!3776360 m!4281435))

(assert (=> b!3776022 d!1106298))

(declare-fun d!1106300 () Bool)

(declare-fun e!2335244 () Bool)

(assert (=> d!1106300 e!2335244))

(declare-fun res!1528920 () Bool)

(assert (=> d!1106300 (=> (not res!1528920) (not e!2335244))))

(declare-fun append!1029 (Conc!12359 Token!11522) Conc!12359)

(assert (=> d!1106300 (= res!1528920 (isBalanced!3553 (append!1029 (c!654719 acc!335) (_1!22805 (v!38771 lt!1307430)))))))

(declare-fun lt!1307605 () BalanceConc!24312)

(assert (=> d!1106300 (= lt!1307605 (BalanceConc!24313 (append!1029 (c!654719 acc!335) (_1!22805 (v!38771 lt!1307430)))))))

(assert (=> d!1106300 (= (append!1028 acc!335 (_1!22805 (v!38771 lt!1307430))) lt!1307605)))

(declare-fun b!3776376 () Bool)

(declare-fun $colon+!262 (List!40396 Token!11522) List!40396)

(assert (=> b!3776376 (= e!2335244 (= (list!14912 lt!1307605) ($colon+!262 (list!14912 acc!335) (_1!22805 (v!38771 lt!1307430)))))))

(assert (= (and d!1106300 res!1528920) b!3776376))

(declare-fun m!4281495 () Bool)

(assert (=> d!1106300 m!4281495))

(assert (=> d!1106300 m!4281495))

(declare-fun m!4281497 () Bool)

(assert (=> d!1106300 m!4281497))

(declare-fun m!4281499 () Bool)

(assert (=> b!3776376 m!4281499))

(assert (=> b!3776376 m!4280821))

(assert (=> b!3776376 m!4280821))

(declare-fun m!4281501 () Bool)

(assert (=> b!3776376 m!4281501))

(assert (=> b!3776025 d!1106300))

(declare-fun b!3776385 () Bool)

(declare-fun e!2335249 () List!40396)

(assert (=> b!3776385 (= e!2335249 lt!1307414)))

(declare-fun b!3776387 () Bool)

(declare-fun res!1528925 () Bool)

(declare-fun e!2335250 () Bool)

(assert (=> b!3776387 (=> (not res!1528925) (not e!2335250))))

(declare-fun lt!1307608 () List!40396)

(declare-fun size!30303 (List!40396) Int)

(assert (=> b!3776387 (= res!1528925 (= (size!30303 lt!1307608) (+ (size!30303 (++!10042 lt!1307438 lt!1307413)) (size!30303 lt!1307414))))))

(declare-fun b!3776388 () Bool)

(assert (=> b!3776388 (= e!2335250 (or (not (= lt!1307414 Nil!40272)) (= lt!1307608 (++!10042 lt!1307438 lt!1307413))))))

(declare-fun b!3776386 () Bool)

(assert (=> b!3776386 (= e!2335249 (Cons!40272 (h!45692 (++!10042 lt!1307438 lt!1307413)) (++!10042 (t!305099 (++!10042 lt!1307438 lt!1307413)) lt!1307414)))))

(declare-fun d!1106316 () Bool)

(assert (=> d!1106316 e!2335250))

(declare-fun res!1528926 () Bool)

(assert (=> d!1106316 (=> (not res!1528926) (not e!2335250))))

(declare-fun content!5920 (List!40396) (InoxSet Token!11522))

(assert (=> d!1106316 (= res!1528926 (= (content!5920 lt!1307608) ((_ map or) (content!5920 (++!10042 lt!1307438 lt!1307413)) (content!5920 lt!1307414))))))

(assert (=> d!1106316 (= lt!1307608 e!2335249)))

(declare-fun c!654803 () Bool)

(assert (=> d!1106316 (= c!654803 ((_ is Nil!40272) (++!10042 lt!1307438 lt!1307413)))))

(assert (=> d!1106316 (= (++!10042 (++!10042 lt!1307438 lt!1307413) lt!1307414) lt!1307608)))

(assert (= (and d!1106316 c!654803) b!3776385))

(assert (= (and d!1106316 (not c!654803)) b!3776386))

(assert (= (and d!1106316 res!1528926) b!3776387))

(assert (= (and b!3776387 res!1528925) b!3776388))

(declare-fun m!4281503 () Bool)

(assert (=> b!3776387 m!4281503))

(assert (=> b!3776387 m!4280765))

(declare-fun m!4281505 () Bool)

(assert (=> b!3776387 m!4281505))

(declare-fun m!4281507 () Bool)

(assert (=> b!3776387 m!4281507))

(declare-fun m!4281509 () Bool)

(assert (=> b!3776386 m!4281509))

(declare-fun m!4281511 () Bool)

(assert (=> d!1106316 m!4281511))

(assert (=> d!1106316 m!4280765))

(declare-fun m!4281513 () Bool)

(assert (=> d!1106316 m!4281513))

(declare-fun m!4281515 () Bool)

(assert (=> d!1106316 m!4281515))

(assert (=> b!3776025 d!1106316))

(declare-fun d!1106318 () Bool)

(assert (=> d!1106318 (= (lexList!1555 thiss!11876 rules!1265 lt!1307427) (tuple2!39345 lt!1307441 Nil!40270))))

(declare-fun lt!1307611 () Unit!57984)

(declare-fun choose!22332 (LexerInterface!5781 List!40397 List!40394 List!40394 List!40396 List!40396 List!40394) Unit!57984)

(assert (=> d!1106318 (= lt!1307611 (choose!22332 thiss!11876 rules!1265 lt!1307427 lt!1307443 lt!1307441 lt!1307414 (list!14911 (_2!22804 lt!1307417))))))

(assert (=> d!1106318 (not (isEmpty!23664 rules!1265))))

(assert (=> d!1106318 (= (lemmaLexThenLexPrefix!557 thiss!11876 rules!1265 lt!1307427 lt!1307443 lt!1307441 lt!1307414 (list!14911 (_2!22804 lt!1307417))) lt!1307611)))

(declare-fun bs!576980 () Bool)

(assert (= bs!576980 d!1106318))

(assert (=> bs!576980 m!4280779))

(assert (=> bs!576980 m!4280789))

(declare-fun m!4281517 () Bool)

(assert (=> bs!576980 m!4281517))

(assert (=> bs!576980 m!4280749))

(assert (=> b!3776025 d!1106318))

(declare-fun d!1106320 () Bool)

(assert (=> d!1106320 (= (list!14912 (append!1028 acc!335 (_1!22805 (v!38771 lt!1307430)))) (list!14915 (c!654719 (append!1028 acc!335 (_1!22805 (v!38771 lt!1307430))))))))

(declare-fun bs!576981 () Bool)

(assert (= bs!576981 d!1106320))

(declare-fun m!4281519 () Bool)

(assert (=> bs!576981 m!4281519))

(assert (=> b!3776025 d!1106320))

(declare-fun e!2335252 () Bool)

(declare-fun b!3776392 () Bool)

(declare-fun lt!1307612 () List!40394)

(assert (=> b!3776392 (= e!2335252 (or (not (= lt!1307443 Nil!40270)) (= lt!1307612 lt!1307419)))))

(declare-fun b!3776390 () Bool)

(declare-fun e!2335251 () List!40394)

(assert (=> b!3776390 (= e!2335251 (Cons!40270 (h!45690 lt!1307419) (++!10039 (t!305097 lt!1307419) lt!1307443)))))

(declare-fun b!3776391 () Bool)

(declare-fun res!1528928 () Bool)

(assert (=> b!3776391 (=> (not res!1528928) (not e!2335252))))

(assert (=> b!3776391 (= res!1528928 (= (size!30301 lt!1307612) (+ (size!30301 lt!1307419) (size!30301 lt!1307443))))))

(declare-fun b!3776389 () Bool)

(assert (=> b!3776389 (= e!2335251 lt!1307443)))

(declare-fun d!1106322 () Bool)

(assert (=> d!1106322 e!2335252))

(declare-fun res!1528927 () Bool)

(assert (=> d!1106322 (=> (not res!1528927) (not e!2335252))))

(assert (=> d!1106322 (= res!1528927 (= (content!5918 lt!1307612) ((_ map or) (content!5918 lt!1307419) (content!5918 lt!1307443))))))

(assert (=> d!1106322 (= lt!1307612 e!2335251)))

(declare-fun c!654804 () Bool)

(assert (=> d!1106322 (= c!654804 ((_ is Nil!40270) lt!1307419))))

(assert (=> d!1106322 (= (++!10039 lt!1307419 lt!1307443) lt!1307612)))

(assert (= (and d!1106322 c!654804) b!3776389))

(assert (= (and d!1106322 (not c!654804)) b!3776390))

(assert (= (and d!1106322 res!1528927) b!3776391))

(assert (= (and b!3776391 res!1528928) b!3776392))

(declare-fun m!4281521 () Bool)

(assert (=> b!3776390 m!4281521))

(declare-fun m!4281523 () Bool)

(assert (=> b!3776391 m!4281523))

(declare-fun m!4281525 () Bool)

(assert (=> b!3776391 m!4281525))

(declare-fun m!4281527 () Bool)

(assert (=> b!3776391 m!4281527))

(declare-fun m!4281529 () Bool)

(assert (=> d!1106322 m!4281529))

(declare-fun m!4281531 () Bool)

(assert (=> d!1106322 m!4281531))

(declare-fun m!4281533 () Bool)

(assert (=> d!1106322 m!4281533))

(assert (=> b!3776025 d!1106322))

(declare-fun d!1106324 () Bool)

(assert (=> d!1106324 (= (list!14911 lt!1307428) (list!14916 (c!654717 lt!1307428)))))

(declare-fun bs!576982 () Bool)

(assert (= bs!576982 d!1106324))

(declare-fun m!4281535 () Bool)

(assert (=> bs!576982 m!4281535))

(assert (=> b!3776025 d!1106324))

(declare-fun d!1106326 () Bool)

(declare-fun lt!1307615 () BalanceConc!24310)

(assert (=> d!1106326 (= (list!14911 lt!1307615) (originalCharacters!6792 (_1!22805 (v!38771 lt!1307430))))))

(declare-fun dynLambda!17382 (Int TokenValue!6422) BalanceConc!24310)

(assert (=> d!1106326 (= lt!1307615 (dynLambda!17382 (toChars!8419 (transformation!6192 (rule!8964 (_1!22805 (v!38771 lt!1307430))))) (value!197079 (_1!22805 (v!38771 lt!1307430)))))))

(assert (=> d!1106326 (= (charsOf!4034 (_1!22805 (v!38771 lt!1307430))) lt!1307615)))

(declare-fun b_lambda!110733 () Bool)

(assert (=> (not b_lambda!110733) (not d!1106326)))

(declare-fun t!305104 () Bool)

(declare-fun tb!216239 () Bool)

(assert (=> (and b!3776039 (= (toChars!8419 (transformation!6192 (h!45693 rules!1265))) (toChars!8419 (transformation!6192 (rule!8964 (_1!22805 (v!38771 lt!1307430)))))) t!305104) tb!216239))

(declare-fun b!3776397 () Bool)

(declare-fun e!2335255 () Bool)

(declare-fun tp!1152082 () Bool)

(assert (=> b!3776397 (= e!2335255 (and (inv!54116 (c!654717 (dynLambda!17382 (toChars!8419 (transformation!6192 (rule!8964 (_1!22805 (v!38771 lt!1307430))))) (value!197079 (_1!22805 (v!38771 lt!1307430)))))) tp!1152082))))

(declare-fun result!264018 () Bool)

(assert (=> tb!216239 (= result!264018 (and (inv!54117 (dynLambda!17382 (toChars!8419 (transformation!6192 (rule!8964 (_1!22805 (v!38771 lt!1307430))))) (value!197079 (_1!22805 (v!38771 lt!1307430))))) e!2335255))))

(assert (= tb!216239 b!3776397))

(declare-fun m!4281537 () Bool)

(assert (=> b!3776397 m!4281537))

(declare-fun m!4281539 () Bool)

(assert (=> tb!216239 m!4281539))

(assert (=> d!1106326 t!305104))

(declare-fun b_and!280517 () Bool)

(assert (= b_and!280513 (and (=> t!305104 result!264018) b_and!280517)))

(declare-fun m!4281541 () Bool)

(assert (=> d!1106326 m!4281541))

(declare-fun m!4281543 () Bool)

(assert (=> d!1106326 m!4281543))

(assert (=> b!3776025 d!1106326))

(declare-fun b!3776398 () Bool)

(declare-fun e!2335256 () List!40396)

(assert (=> b!3776398 (= e!2335256 lt!1307414)))

(declare-fun b!3776400 () Bool)

(declare-fun res!1528929 () Bool)

(declare-fun e!2335257 () Bool)

(assert (=> b!3776400 (=> (not res!1528929) (not e!2335257))))

(declare-fun lt!1307616 () List!40396)

(assert (=> b!3776400 (= res!1528929 (= (size!30303 lt!1307616) (+ (size!30303 lt!1307413) (size!30303 lt!1307414))))))

(declare-fun b!3776401 () Bool)

(assert (=> b!3776401 (= e!2335257 (or (not (= lt!1307414 Nil!40272)) (= lt!1307616 lt!1307413)))))

(declare-fun b!3776399 () Bool)

(assert (=> b!3776399 (= e!2335256 (Cons!40272 (h!45692 lt!1307413) (++!10042 (t!305099 lt!1307413) lt!1307414)))))

(declare-fun d!1106328 () Bool)

(assert (=> d!1106328 e!2335257))

(declare-fun res!1528930 () Bool)

(assert (=> d!1106328 (=> (not res!1528930) (not e!2335257))))

(assert (=> d!1106328 (= res!1528930 (= (content!5920 lt!1307616) ((_ map or) (content!5920 lt!1307413) (content!5920 lt!1307414))))))

(assert (=> d!1106328 (= lt!1307616 e!2335256)))

(declare-fun c!654805 () Bool)

(assert (=> d!1106328 (= c!654805 ((_ is Nil!40272) lt!1307413))))

(assert (=> d!1106328 (= (++!10042 lt!1307413 lt!1307414) lt!1307616)))

(assert (= (and d!1106328 c!654805) b!3776398))

(assert (= (and d!1106328 (not c!654805)) b!3776399))

(assert (= (and d!1106328 res!1528930) b!3776400))

(assert (= (and b!3776400 res!1528929) b!3776401))

(declare-fun m!4281545 () Bool)

(assert (=> b!3776400 m!4281545))

(declare-fun m!4281547 () Bool)

(assert (=> b!3776400 m!4281547))

(assert (=> b!3776400 m!4281507))

(declare-fun m!4281549 () Bool)

(assert (=> b!3776399 m!4281549))

(declare-fun m!4281551 () Bool)

(assert (=> d!1106328 m!4281551))

(declare-fun m!4281553 () Bool)

(assert (=> d!1106328 m!4281553))

(assert (=> d!1106328 m!4281515))

(assert (=> b!3776025 d!1106328))

(declare-fun lt!1307617 () List!40394)

(declare-fun b!3776405 () Bool)

(declare-fun e!2335259 () Bool)

(assert (=> b!3776405 (= e!2335259 (or (not (= lt!1307443 Nil!40270)) (= lt!1307617 lt!1307439)))))

(declare-fun b!3776403 () Bool)

(declare-fun e!2335258 () List!40394)

(assert (=> b!3776403 (= e!2335258 (Cons!40270 (h!45690 lt!1307439) (++!10039 (t!305097 lt!1307439) lt!1307443)))))

(declare-fun b!3776404 () Bool)

(declare-fun res!1528932 () Bool)

(assert (=> b!3776404 (=> (not res!1528932) (not e!2335259))))

(assert (=> b!3776404 (= res!1528932 (= (size!30301 lt!1307617) (+ (size!30301 lt!1307439) (size!30301 lt!1307443))))))

(declare-fun b!3776402 () Bool)

(assert (=> b!3776402 (= e!2335258 lt!1307443)))

(declare-fun d!1106330 () Bool)

(assert (=> d!1106330 e!2335259))

(declare-fun res!1528931 () Bool)

(assert (=> d!1106330 (=> (not res!1528931) (not e!2335259))))

(assert (=> d!1106330 (= res!1528931 (= (content!5918 lt!1307617) ((_ map or) (content!5918 lt!1307439) (content!5918 lt!1307443))))))

(assert (=> d!1106330 (= lt!1307617 e!2335258)))

(declare-fun c!654806 () Bool)

(assert (=> d!1106330 (= c!654806 ((_ is Nil!40270) lt!1307439))))

(assert (=> d!1106330 (= (++!10039 lt!1307439 lt!1307443) lt!1307617)))

(assert (= (and d!1106330 c!654806) b!3776402))

(assert (= (and d!1106330 (not c!654806)) b!3776403))

(assert (= (and d!1106330 res!1528931) b!3776404))

(assert (= (and b!3776404 res!1528932) b!3776405))

(declare-fun m!4281555 () Bool)

(assert (=> b!3776403 m!4281555))

(declare-fun m!4281557 () Bool)

(assert (=> b!3776404 m!4281557))

(declare-fun m!4281559 () Bool)

(assert (=> b!3776404 m!4281559))

(assert (=> b!3776404 m!4281527))

(declare-fun m!4281561 () Bool)

(assert (=> d!1106330 m!4281561))

(declare-fun m!4281563 () Bool)

(assert (=> d!1106330 m!4281563))

(assert (=> d!1106330 m!4281533))

(assert (=> b!3776025 d!1106330))

(declare-fun b!3776406 () Bool)

(declare-fun e!2335260 () List!40396)

(assert (=> b!3776406 (= e!2335260 (++!10042 lt!1307413 lt!1307414))))

(declare-fun b!3776408 () Bool)

(declare-fun res!1528933 () Bool)

(declare-fun e!2335261 () Bool)

(assert (=> b!3776408 (=> (not res!1528933) (not e!2335261))))

(declare-fun lt!1307618 () List!40396)

(assert (=> b!3776408 (= res!1528933 (= (size!30303 lt!1307618) (+ (size!30303 lt!1307438) (size!30303 (++!10042 lt!1307413 lt!1307414)))))))

(declare-fun b!3776409 () Bool)

(assert (=> b!3776409 (= e!2335261 (or (not (= (++!10042 lt!1307413 lt!1307414) Nil!40272)) (= lt!1307618 lt!1307438)))))

(declare-fun b!3776407 () Bool)

(assert (=> b!3776407 (= e!2335260 (Cons!40272 (h!45692 lt!1307438) (++!10042 (t!305099 lt!1307438) (++!10042 lt!1307413 lt!1307414))))))

(declare-fun d!1106332 () Bool)

(assert (=> d!1106332 e!2335261))

(declare-fun res!1528934 () Bool)

(assert (=> d!1106332 (=> (not res!1528934) (not e!2335261))))

(assert (=> d!1106332 (= res!1528934 (= (content!5920 lt!1307618) ((_ map or) (content!5920 lt!1307438) (content!5920 (++!10042 lt!1307413 lt!1307414)))))))

(assert (=> d!1106332 (= lt!1307618 e!2335260)))

(declare-fun c!654807 () Bool)

(assert (=> d!1106332 (= c!654807 ((_ is Nil!40272) lt!1307438))))

(assert (=> d!1106332 (= (++!10042 lt!1307438 (++!10042 lt!1307413 lt!1307414)) lt!1307618)))

(assert (= (and d!1106332 c!654807) b!3776406))

(assert (= (and d!1106332 (not c!654807)) b!3776407))

(assert (= (and d!1106332 res!1528934) b!3776408))

(assert (= (and b!3776408 res!1528933) b!3776409))

(declare-fun m!4281565 () Bool)

(assert (=> b!3776408 m!4281565))

(declare-fun m!4281567 () Bool)

(assert (=> b!3776408 m!4281567))

(assert (=> b!3776408 m!4280773))

(declare-fun m!4281569 () Bool)

(assert (=> b!3776408 m!4281569))

(assert (=> b!3776407 m!4280773))

(declare-fun m!4281571 () Bool)

(assert (=> b!3776407 m!4281571))

(declare-fun m!4281573 () Bool)

(assert (=> d!1106332 m!4281573))

(declare-fun m!4281575 () Bool)

(assert (=> d!1106332 m!4281575))

(assert (=> d!1106332 m!4280773))

(declare-fun m!4281577 () Bool)

(assert (=> d!1106332 m!4281577))

(assert (=> b!3776025 d!1106332))

(declare-fun d!1106334 () Bool)

(assert (=> d!1106334 (= (list!14911 (_2!22805 (v!38771 lt!1307430))) (list!14916 (c!654717 (_2!22805 (v!38771 lt!1307430)))))))

(declare-fun bs!576983 () Bool)

(assert (= bs!576983 d!1106334))

(declare-fun m!4281579 () Bool)

(assert (=> bs!576983 m!4281579))

(assert (=> b!3776025 d!1106334))

(declare-fun lt!1307619 () List!40394)

(declare-fun b!3776413 () Bool)

(declare-fun e!2335263 () Bool)

(assert (=> b!3776413 (= e!2335263 (or (not (= (++!10039 lt!1307419 lt!1307443) Nil!40270)) (= lt!1307619 lt!1307420)))))

(declare-fun b!3776411 () Bool)

(declare-fun e!2335262 () List!40394)

(assert (=> b!3776411 (= e!2335262 (Cons!40270 (h!45690 lt!1307420) (++!10039 (t!305097 lt!1307420) (++!10039 lt!1307419 lt!1307443))))))

(declare-fun b!3776412 () Bool)

(declare-fun res!1528936 () Bool)

(assert (=> b!3776412 (=> (not res!1528936) (not e!2335263))))

(assert (=> b!3776412 (= res!1528936 (= (size!30301 lt!1307619) (+ (size!30301 lt!1307420) (size!30301 (++!10039 lt!1307419 lt!1307443)))))))

(declare-fun b!3776410 () Bool)

(assert (=> b!3776410 (= e!2335262 (++!10039 lt!1307419 lt!1307443))))

(declare-fun d!1106336 () Bool)

(assert (=> d!1106336 e!2335263))

(declare-fun res!1528935 () Bool)

(assert (=> d!1106336 (=> (not res!1528935) (not e!2335263))))

(assert (=> d!1106336 (= res!1528935 (= (content!5918 lt!1307619) ((_ map or) (content!5918 lt!1307420) (content!5918 (++!10039 lt!1307419 lt!1307443)))))))

(assert (=> d!1106336 (= lt!1307619 e!2335262)))

(declare-fun c!654808 () Bool)

(assert (=> d!1106336 (= c!654808 ((_ is Nil!40270) lt!1307420))))

(assert (=> d!1106336 (= (++!10039 lt!1307420 (++!10039 lt!1307419 lt!1307443)) lt!1307619)))

(assert (= (and d!1106336 c!654808) b!3776410))

(assert (= (and d!1106336 (not c!654808)) b!3776411))

(assert (= (and d!1106336 res!1528935) b!3776412))

(assert (= (and b!3776412 res!1528936) b!3776413))

(assert (=> b!3776411 m!4280771))

(declare-fun m!4281581 () Bool)

(assert (=> b!3776411 m!4281581))

(declare-fun m!4281583 () Bool)

(assert (=> b!3776412 m!4281583))

(assert (=> b!3776412 m!4281413))

(assert (=> b!3776412 m!4280771))

(declare-fun m!4281585 () Bool)

(assert (=> b!3776412 m!4281585))

(declare-fun m!4281587 () Bool)

(assert (=> d!1106336 m!4281587))

(assert (=> d!1106336 m!4281417))

(assert (=> d!1106336 m!4280771))

(declare-fun m!4281589 () Bool)

(assert (=> d!1106336 m!4281589))

(assert (=> b!3776025 d!1106336))

(declare-fun lt!1307620 () List!40394)

(declare-fun e!2335265 () Bool)

(declare-fun b!3776417 () Bool)

(assert (=> b!3776417 (= e!2335265 (or (not (= lt!1307419 Nil!40270)) (= lt!1307620 lt!1307420)))))

(declare-fun b!3776415 () Bool)

(declare-fun e!2335264 () List!40394)

(assert (=> b!3776415 (= e!2335264 (Cons!40270 (h!45690 lt!1307420) (++!10039 (t!305097 lt!1307420) lt!1307419)))))

(declare-fun b!3776416 () Bool)

(declare-fun res!1528938 () Bool)

(assert (=> b!3776416 (=> (not res!1528938) (not e!2335265))))

(assert (=> b!3776416 (= res!1528938 (= (size!30301 lt!1307620) (+ (size!30301 lt!1307420) (size!30301 lt!1307419))))))

(declare-fun b!3776414 () Bool)

(assert (=> b!3776414 (= e!2335264 lt!1307419)))

(declare-fun d!1106338 () Bool)

(assert (=> d!1106338 e!2335265))

(declare-fun res!1528937 () Bool)

(assert (=> d!1106338 (=> (not res!1528937) (not e!2335265))))

(assert (=> d!1106338 (= res!1528937 (= (content!5918 lt!1307620) ((_ map or) (content!5918 lt!1307420) (content!5918 lt!1307419))))))

(assert (=> d!1106338 (= lt!1307620 e!2335264)))

(declare-fun c!654809 () Bool)

(assert (=> d!1106338 (= c!654809 ((_ is Nil!40270) lt!1307420))))

(assert (=> d!1106338 (= (++!10039 lt!1307420 lt!1307419) lt!1307620)))

(assert (= (and d!1106338 c!654809) b!3776414))

(assert (= (and d!1106338 (not c!654809)) b!3776415))

(assert (= (and d!1106338 res!1528937) b!3776416))

(assert (= (and b!3776416 res!1528938) b!3776417))

(declare-fun m!4281591 () Bool)

(assert (=> b!3776415 m!4281591))

(declare-fun m!4281593 () Bool)

(assert (=> b!3776416 m!4281593))

(assert (=> b!3776416 m!4281413))

(assert (=> b!3776416 m!4281525))

(declare-fun m!4281595 () Bool)

(assert (=> d!1106338 m!4281595))

(assert (=> d!1106338 m!4281417))

(assert (=> d!1106338 m!4281531))

(assert (=> b!3776025 d!1106338))

(declare-fun d!1106340 () Bool)

(assert (=> d!1106340 (= (list!14912 (_1!22804 lt!1307417)) (list!14915 (c!654719 (_1!22804 lt!1307417))))))

(declare-fun bs!576984 () Bool)

(assert (= bs!576984 d!1106340))

(declare-fun m!4281597 () Bool)

(assert (=> bs!576984 m!4281597))

(assert (=> b!3776025 d!1106340))

(declare-fun d!1106342 () Bool)

(assert (=> d!1106342 (isSuffix!966 lt!1307443 (++!10039 lt!1307439 lt!1307443))))

(declare-fun lt!1307621 () Unit!57984)

(assert (=> d!1106342 (= lt!1307621 (choose!22329 lt!1307439 lt!1307443))))

(assert (=> d!1106342 (= (lemmaConcatTwoListThenFSndIsSuffix!651 lt!1307439 lt!1307443) lt!1307621)))

(declare-fun bs!576985 () Bool)

(assert (= bs!576985 d!1106342))

(assert (=> bs!576985 m!4280797))

(assert (=> bs!576985 m!4280797))

(declare-fun m!4281599 () Bool)

(assert (=> bs!576985 m!4281599))

(declare-fun m!4281601 () Bool)

(assert (=> bs!576985 m!4281601))

(assert (=> b!3776025 d!1106342))

(declare-fun b!3776432 () Bool)

(declare-fun e!2335275 () tuple2!39344)

(declare-fun lt!1307642 () Option!8595)

(declare-fun lt!1307644 () tuple2!39344)

(assert (=> b!3776432 (= e!2335275 (tuple2!39345 (Cons!40272 (_1!22807 (v!38776 lt!1307642)) (_1!22806 lt!1307644)) (_2!22806 lt!1307644)))))

(assert (=> b!3776432 (= lt!1307644 (lexList!1555 thiss!11876 rules!1265 (_2!22807 (v!38776 lt!1307642))))))

(declare-fun b!3776433 () Bool)

(declare-fun e!2335276 () Bool)

(declare-fun e!2335274 () Bool)

(assert (=> b!3776433 (= e!2335276 e!2335274)))

(declare-fun res!1528941 () Bool)

(declare-fun lt!1307643 () tuple2!39344)

(assert (=> b!3776433 (= res!1528941 (< (size!30301 (_2!22806 lt!1307643)) (size!30301 lt!1307427)))))

(assert (=> b!3776433 (=> (not res!1528941) (not e!2335274))))

(declare-fun b!3776434 () Bool)

(assert (=> b!3776434 (= e!2335275 (tuple2!39345 Nil!40272 lt!1307427))))

(declare-fun d!1106344 () Bool)

(assert (=> d!1106344 e!2335276))

(declare-fun c!654817 () Bool)

(assert (=> d!1106344 (= c!654817 (> (size!30303 (_1!22806 lt!1307643)) 0))))

(assert (=> d!1106344 (= lt!1307643 e!2335275)))

(declare-fun c!654816 () Bool)

(assert (=> d!1106344 (= c!654816 ((_ is Some!8594) lt!1307642))))

(assert (=> d!1106344 (= lt!1307642 (maxPrefix!3100 thiss!11876 rules!1265 lt!1307427))))

(assert (=> d!1106344 (= (lexList!1555 thiss!11876 rules!1265 lt!1307427) lt!1307643)))

(declare-fun b!3776435 () Bool)

(assert (=> b!3776435 (= e!2335276 (= (_2!22806 lt!1307643) lt!1307427))))

(declare-fun b!3776436 () Bool)

(declare-fun isEmpty!23668 (List!40396) Bool)

(assert (=> b!3776436 (= e!2335274 (not (isEmpty!23668 (_1!22806 lt!1307643))))))

(assert (= (and d!1106344 c!654816) b!3776432))

(assert (= (and d!1106344 (not c!654816)) b!3776434))

(assert (= (and d!1106344 c!654817) b!3776433))

(assert (= (and d!1106344 (not c!654817)) b!3776435))

(assert (= (and b!3776433 res!1528941) b!3776436))

(declare-fun m!4281603 () Bool)

(assert (=> b!3776432 m!4281603))

(declare-fun m!4281605 () Bool)

(assert (=> b!3776433 m!4281605))

(declare-fun m!4281607 () Bool)

(assert (=> b!3776433 m!4281607))

(declare-fun m!4281609 () Bool)

(assert (=> d!1106344 m!4281609))

(declare-fun m!4281611 () Bool)

(assert (=> d!1106344 m!4281611))

(declare-fun m!4281613 () Bool)

(assert (=> b!3776436 m!4281613))

(assert (=> b!3776025 d!1106344))

(declare-fun d!1106346 () Bool)

(declare-fun e!2335287 () Bool)

(assert (=> d!1106346 e!2335287))

(declare-fun res!1528954 () Bool)

(assert (=> d!1106346 (=> res!1528954 e!2335287)))

(declare-fun lt!1307645 () Bool)

(assert (=> d!1106346 (= res!1528954 (not lt!1307645))))

(assert (=> d!1106346 (= lt!1307645 (= lt!1307443 (drop!2111 lt!1307433 (- (size!30301 lt!1307433) (size!30301 lt!1307443)))))))

(assert (=> d!1106346 (= (isSuffix!966 lt!1307443 lt!1307433) lt!1307645)))

(declare-fun b!3776449 () Bool)

(assert (=> b!3776449 (= e!2335287 (>= (size!30301 lt!1307433) (size!30301 lt!1307443)))))

(assert (= (and d!1106346 (not res!1528954)) b!3776449))

(assert (=> d!1106346 m!4281275))

(assert (=> d!1106346 m!4281527))

(declare-fun m!4281615 () Bool)

(assert (=> d!1106346 m!4281615))

(assert (=> b!3776449 m!4281275))

(assert (=> b!3776449 m!4281527))

(assert (=> b!3776025 d!1106346))

(declare-fun d!1106348 () Bool)

(assert (=> d!1106348 (= (++!10042 (++!10042 lt!1307438 lt!1307413) lt!1307414) (++!10042 lt!1307438 (++!10042 lt!1307413 lt!1307414)))))

(declare-fun lt!1307648 () Unit!57984)

(declare-fun choose!22333 (List!40396 List!40396 List!40396) Unit!57984)

(assert (=> d!1106348 (= lt!1307648 (choose!22333 lt!1307438 lt!1307413 lt!1307414))))

(assert (=> d!1106348 (= (lemmaConcatAssociativity!2137 lt!1307438 lt!1307413 lt!1307414) lt!1307648)))

(declare-fun bs!576986 () Bool)

(assert (= bs!576986 d!1106348))

(declare-fun m!4281617 () Bool)

(assert (=> bs!576986 m!4281617))

(assert (=> bs!576986 m!4280773))

(assert (=> bs!576986 m!4280765))

(assert (=> bs!576986 m!4280765))

(assert (=> bs!576986 m!4280793))

(assert (=> bs!576986 m!4280773))

(assert (=> bs!576986 m!4280775))

(assert (=> b!3776025 d!1106348))

(declare-fun call!276463 () Option!8594)

(declare-fun bm!276458 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!548 (LexerInterface!5781 Rule!12184 BalanceConc!24310) Option!8594)

(assert (=> bm!276458 (= call!276463 (maxPrefixOneRuleZipperSequence!548 thiss!11876 (h!45693 rules!1265) input!678))))

(declare-fun e!2335345 () Bool)

(declare-fun b!3776530 () Bool)

(declare-fun lt!1307671 () Option!8594)

(assert (=> b!3776530 (= e!2335345 (= (list!14911 (_2!22805 (get!13346 lt!1307671))) (_2!22807 (get!13347 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 input!678))))))))

(declare-fun b!3776531 () Bool)

(declare-fun e!2335340 () Option!8594)

(assert (=> b!3776531 (= e!2335340 call!276463)))

(declare-fun b!3776532 () Bool)

(declare-fun e!2335341 () Bool)

(declare-fun e!2335343 () Bool)

(assert (=> b!3776532 (= e!2335341 e!2335343)))

(declare-fun res!1528978 () Bool)

(assert (=> b!3776532 (=> (not res!1528978) (not e!2335343))))

(assert (=> b!3776532 (= res!1528978 (= (_1!22805 (get!13346 lt!1307671)) (_1!22807 (get!13347 (maxPrefix!3100 thiss!11876 rules!1265 (list!14911 input!678))))))))

(declare-fun b!3776533 () Bool)

(declare-fun e!2335342 () Bool)

(assert (=> b!3776533 (= e!2335342 e!2335345)))

(declare-fun res!1528977 () Bool)

(assert (=> b!3776533 (=> (not res!1528977) (not e!2335345))))

(assert (=> b!3776533 (= res!1528977 (= (_1!22805 (get!13346 lt!1307671)) (_1!22807 (get!13347 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 input!678))))))))

(declare-fun b!3776534 () Bool)

(declare-fun e!2335344 () Bool)

(assert (=> b!3776534 (= e!2335344 e!2335341)))

(declare-fun res!1528981 () Bool)

(assert (=> b!3776534 (=> res!1528981 e!2335341)))

(assert (=> b!3776534 (= res!1528981 (not (isDefined!6760 lt!1307671)))))

(declare-fun d!1106350 () Bool)

(assert (=> d!1106350 e!2335344))

(declare-fun res!1528976 () Bool)

(assert (=> d!1106350 (=> (not res!1528976) (not e!2335344))))

(assert (=> d!1106350 (= res!1528976 (= (isDefined!6760 lt!1307671) (isDefined!6761 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 input!678)))))))

(assert (=> d!1106350 (= lt!1307671 e!2335340)))

(declare-fun c!654821 () Bool)

(assert (=> d!1106350 (= c!654821 (and ((_ is Cons!40273) rules!1265) ((_ is Nil!40273) (t!305100 rules!1265))))))

(declare-fun lt!1307676 () Unit!57984)

(declare-fun lt!1307675 () Unit!57984)

(assert (=> d!1106350 (= lt!1307676 lt!1307675)))

(declare-fun lt!1307672 () List!40394)

(declare-fun lt!1307674 () List!40394)

(assert (=> d!1106350 (isPrefix!3308 lt!1307672 lt!1307674)))

(assert (=> d!1106350 (= lt!1307675 (lemmaIsPrefixRefl!2093 lt!1307672 lt!1307674))))

(assert (=> d!1106350 (= lt!1307674 (list!14911 input!678))))

(assert (=> d!1106350 (= lt!1307672 (list!14911 input!678))))

(assert (=> d!1106350 (rulesValidInductive!2167 thiss!11876 rules!1265)))

(assert (=> d!1106350 (= (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 input!678) lt!1307671)))

(declare-fun b!3776535 () Bool)

(declare-fun lt!1307673 () Option!8594)

(declare-fun lt!1307670 () Option!8594)

(assert (=> b!3776535 (= e!2335340 (ite (and ((_ is None!8593) lt!1307673) ((_ is None!8593) lt!1307670)) None!8593 (ite ((_ is None!8593) lt!1307670) lt!1307673 (ite ((_ is None!8593) lt!1307673) lt!1307670 (ite (>= (size!30295 (_1!22805 (v!38771 lt!1307673))) (size!30295 (_1!22805 (v!38771 lt!1307670)))) lt!1307673 lt!1307670)))))))

(assert (=> b!3776535 (= lt!1307673 call!276463)))

(assert (=> b!3776535 (= lt!1307670 (maxPrefixZipperSequence!1189 thiss!11876 (t!305100 rules!1265) input!678))))

(declare-fun b!3776536 () Bool)

(assert (=> b!3776536 (= e!2335343 (= (list!14911 (_2!22805 (get!13346 lt!1307671))) (_2!22807 (get!13347 (maxPrefix!3100 thiss!11876 rules!1265 (list!14911 input!678))))))))

(declare-fun b!3776537 () Bool)

(declare-fun res!1528980 () Bool)

(assert (=> b!3776537 (=> (not res!1528980) (not e!2335344))))

(assert (=> b!3776537 (= res!1528980 e!2335342)))

(declare-fun res!1528979 () Bool)

(assert (=> b!3776537 (=> res!1528979 e!2335342)))

(assert (=> b!3776537 (= res!1528979 (not (isDefined!6760 lt!1307671)))))

(assert (= (and d!1106350 c!654821) b!3776531))

(assert (= (and d!1106350 (not c!654821)) b!3776535))

(assert (= (or b!3776531 b!3776535) bm!276458))

(assert (= (and d!1106350 res!1528976) b!3776537))

(assert (= (and b!3776537 (not res!1528979)) b!3776533))

(assert (= (and b!3776533 res!1528977) b!3776530))

(assert (= (and b!3776537 res!1528980) b!3776534))

(assert (= (and b!3776534 (not res!1528981)) b!3776532))

(assert (= (and b!3776532 res!1528978) b!3776536))

(declare-fun m!4281665 () Bool)

(assert (=> b!3776532 m!4281665))

(assert (=> b!3776532 m!4280853))

(assert (=> b!3776532 m!4280853))

(assert (=> b!3776532 m!4281387))

(assert (=> b!3776532 m!4281387))

(assert (=> b!3776532 m!4281389))

(declare-fun m!4281667 () Bool)

(assert (=> bm!276458 m!4281667))

(declare-fun m!4281669 () Bool)

(assert (=> d!1106350 m!4281669))

(declare-fun m!4281671 () Bool)

(assert (=> d!1106350 m!4281671))

(assert (=> d!1106350 m!4281393))

(assert (=> d!1106350 m!4281403))

(assert (=> d!1106350 m!4281401))

(assert (=> d!1106350 m!4280853))

(assert (=> d!1106350 m!4280853))

(assert (=> d!1106350 m!4281393))

(declare-fun m!4281673 () Bool)

(assert (=> d!1106350 m!4281673))

(assert (=> b!3776537 m!4281671))

(assert (=> b!3776536 m!4280853))

(assert (=> b!3776536 m!4281387))

(assert (=> b!3776536 m!4280853))

(declare-fun m!4281675 () Bool)

(assert (=> b!3776536 m!4281675))

(assert (=> b!3776536 m!4281665))

(assert (=> b!3776536 m!4281387))

(assert (=> b!3776536 m!4281389))

(assert (=> b!3776534 m!4281671))

(declare-fun m!4281677 () Bool)

(assert (=> b!3776535 m!4281677))

(assert (=> b!3776533 m!4281665))

(assert (=> b!3776533 m!4280853))

(assert (=> b!3776533 m!4280853))

(assert (=> b!3776533 m!4281393))

(assert (=> b!3776533 m!4281393))

(assert (=> b!3776533 m!4281395))

(assert (=> b!3776530 m!4281665))

(assert (=> b!3776530 m!4281393))

(assert (=> b!3776530 m!4281395))

(assert (=> b!3776530 m!4280853))

(assert (=> b!3776530 m!4281675))

(assert (=> b!3776530 m!4280853))

(assert (=> b!3776530 m!4281393))

(assert (=> b!3776025 d!1106350))

(declare-fun d!1106356 () Bool)

(assert (=> d!1106356 (= (++!10039 (++!10039 lt!1307420 lt!1307419) lt!1307443) (++!10039 lt!1307420 (++!10039 lt!1307419 lt!1307443)))))

(declare-fun lt!1307679 () Unit!57984)

(declare-fun choose!22335 (List!40394 List!40394 List!40394) Unit!57984)

(assert (=> d!1106356 (= lt!1307679 (choose!22335 lt!1307420 lt!1307419 lt!1307443))))

(assert (=> d!1106356 (= (lemmaConcatAssociativity!2138 lt!1307420 lt!1307419 lt!1307443) lt!1307679)))

(declare-fun bs!576987 () Bool)

(assert (= bs!576987 d!1106356))

(assert (=> bs!576987 m!4280771))

(assert (=> bs!576987 m!4280791))

(assert (=> bs!576987 m!4280763))

(assert (=> bs!576987 m!4280763))

(declare-fun m!4281679 () Bool)

(assert (=> bs!576987 m!4281679))

(declare-fun m!4281681 () Bool)

(assert (=> bs!576987 m!4281681))

(assert (=> bs!576987 m!4280771))

(assert (=> b!3776025 d!1106356))

(declare-fun d!1106358 () Bool)

(declare-fun e!2335349 () Bool)

(assert (=> d!1106358 e!2335349))

(declare-fun res!1528982 () Bool)

(assert (=> d!1106358 (=> (not res!1528982) (not e!2335349))))

(declare-fun e!2335346 () Bool)

(assert (=> d!1106358 (= res!1528982 e!2335346)))

(declare-fun c!654823 () Bool)

(declare-fun lt!1307681 () tuple2!39340)

(assert (=> d!1106358 (= c!654823 (> (size!30298 (_1!22804 lt!1307681)) 0))))

(declare-fun e!2335348 () tuple2!39340)

(assert (=> d!1106358 (= lt!1307681 e!2335348)))

(declare-fun c!654822 () Bool)

(declare-fun lt!1307680 () Option!8594)

(assert (=> d!1106358 (= c!654822 ((_ is Some!8593) lt!1307680))))

(assert (=> d!1106358 (= lt!1307680 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 lt!1307440))))

(assert (=> d!1106358 (= (lexRec!805 thiss!11876 rules!1265 lt!1307440) lt!1307681)))

(declare-fun b!3776538 () Bool)

(declare-fun res!1528984 () Bool)

(assert (=> b!3776538 (=> (not res!1528984) (not e!2335349))))

(assert (=> b!3776538 (= res!1528984 (= (list!14912 (_1!22804 lt!1307681)) (_1!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 lt!1307440)))))))

(declare-fun b!3776539 () Bool)

(declare-fun e!2335347 () Bool)

(assert (=> b!3776539 (= e!2335347 (not (isEmpty!23666 (_1!22804 lt!1307681))))))

(declare-fun b!3776540 () Bool)

(assert (=> b!3776540 (= e!2335348 (tuple2!39341 (BalanceConc!24313 Empty!12359) lt!1307440))))

(declare-fun b!3776541 () Bool)

(assert (=> b!3776541 (= e!2335349 (= (list!14911 (_2!22804 lt!1307681)) (_2!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 lt!1307440)))))))

(declare-fun b!3776542 () Bool)

(declare-fun lt!1307682 () tuple2!39340)

(assert (=> b!3776542 (= e!2335348 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307682) (_1!22805 (v!38771 lt!1307680))) (_2!22804 lt!1307682)))))

(assert (=> b!3776542 (= lt!1307682 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307680))))))

(declare-fun b!3776543 () Bool)

(assert (=> b!3776543 (= e!2335346 (= (list!14911 (_2!22804 lt!1307681)) (list!14911 lt!1307440)))))

(declare-fun b!3776544 () Bool)

(assert (=> b!3776544 (= e!2335346 e!2335347)))

(declare-fun res!1528983 () Bool)

(assert (=> b!3776544 (= res!1528983 (< (size!30299 (_2!22804 lt!1307681)) (size!30299 lt!1307440)))))

(assert (=> b!3776544 (=> (not res!1528983) (not e!2335347))))

(assert (= (and d!1106358 c!654822) b!3776542))

(assert (= (and d!1106358 (not c!654822)) b!3776540))

(assert (= (and d!1106358 c!654823) b!3776544))

(assert (= (and d!1106358 (not c!654823)) b!3776543))

(assert (= (and b!3776544 res!1528983) b!3776539))

(assert (= (and d!1106358 res!1528982) b!3776538))

(assert (= (and b!3776538 res!1528984) b!3776541))

(declare-fun m!4281683 () Bool)

(assert (=> b!3776543 m!4281683))

(assert (=> b!3776543 m!4280803))

(declare-fun m!4281685 () Bool)

(assert (=> b!3776542 m!4281685))

(declare-fun m!4281687 () Bool)

(assert (=> b!3776542 m!4281687))

(declare-fun m!4281689 () Bool)

(assert (=> d!1106358 m!4281689))

(assert (=> d!1106358 m!4280801))

(declare-fun m!4281691 () Bool)

(assert (=> b!3776538 m!4281691))

(assert (=> b!3776538 m!4280803))

(assert (=> b!3776538 m!4280803))

(declare-fun m!4281693 () Bool)

(assert (=> b!3776538 m!4281693))

(declare-fun m!4281695 () Bool)

(assert (=> b!3776539 m!4281695))

(declare-fun m!4281697 () Bool)

(assert (=> b!3776544 m!4281697))

(declare-fun m!4281699 () Bool)

(assert (=> b!3776544 m!4281699))

(assert (=> b!3776541 m!4281683))

(assert (=> b!3776541 m!4280803))

(assert (=> b!3776541 m!4280803))

(assert (=> b!3776541 m!4281693))

(assert (=> b!3776025 d!1106358))

(declare-fun e!2335351 () Bool)

(declare-fun b!3776548 () Bool)

(declare-fun lt!1307683 () List!40394)

(assert (=> b!3776548 (= e!2335351 (or (not (= lt!1307443 Nil!40270)) (= lt!1307683 lt!1307427)))))

(declare-fun b!3776546 () Bool)

(declare-fun e!2335350 () List!40394)

(assert (=> b!3776546 (= e!2335350 (Cons!40270 (h!45690 lt!1307427) (++!10039 (t!305097 lt!1307427) lt!1307443)))))

(declare-fun b!3776547 () Bool)

(declare-fun res!1528986 () Bool)

(assert (=> b!3776547 (=> (not res!1528986) (not e!2335351))))

(assert (=> b!3776547 (= res!1528986 (= (size!30301 lt!1307683) (+ (size!30301 lt!1307427) (size!30301 lt!1307443))))))

(declare-fun b!3776545 () Bool)

(assert (=> b!3776545 (= e!2335350 lt!1307443)))

(declare-fun d!1106360 () Bool)

(assert (=> d!1106360 e!2335351))

(declare-fun res!1528985 () Bool)

(assert (=> d!1106360 (=> (not res!1528985) (not e!2335351))))

(assert (=> d!1106360 (= res!1528985 (= (content!5918 lt!1307683) ((_ map or) (content!5918 lt!1307427) (content!5918 lt!1307443))))))

(assert (=> d!1106360 (= lt!1307683 e!2335350)))

(declare-fun c!654824 () Bool)

(assert (=> d!1106360 (= c!654824 ((_ is Nil!40270) lt!1307427))))

(assert (=> d!1106360 (= (++!10039 lt!1307427 lt!1307443) lt!1307683)))

(assert (= (and d!1106360 c!654824) b!3776545))

(assert (= (and d!1106360 (not c!654824)) b!3776546))

(assert (= (and d!1106360 res!1528985) b!3776547))

(assert (= (and b!3776547 res!1528986) b!3776548))

(declare-fun m!4281701 () Bool)

(assert (=> b!3776546 m!4281701))

(declare-fun m!4281703 () Bool)

(assert (=> b!3776547 m!4281703))

(assert (=> b!3776547 m!4281607))

(assert (=> b!3776547 m!4281527))

(declare-fun m!4281705 () Bool)

(assert (=> d!1106360 m!4281705))

(declare-fun m!4281707 () Bool)

(assert (=> d!1106360 m!4281707))

(assert (=> d!1106360 m!4281533))

(assert (=> b!3776025 d!1106360))

(declare-fun d!1106362 () Bool)

(declare-fun e!2335352 () Bool)

(assert (=> d!1106362 e!2335352))

(declare-fun res!1528987 () Bool)

(assert (=> d!1106362 (=> res!1528987 e!2335352)))

(declare-fun lt!1307684 () Bool)

(assert (=> d!1106362 (= res!1528987 (not lt!1307684))))

(assert (=> d!1106362 (= lt!1307684 (= lt!1307443 (drop!2111 lt!1307436 (- (size!30301 lt!1307436) (size!30301 lt!1307443)))))))

(assert (=> d!1106362 (= (isSuffix!966 lt!1307443 lt!1307436) lt!1307684)))

(declare-fun b!3776549 () Bool)

(assert (=> b!3776549 (= e!2335352 (>= (size!30301 lt!1307436) (size!30301 lt!1307443)))))

(assert (= (and d!1106362 (not res!1528987)) b!3776549))

(declare-fun m!4281709 () Bool)

(assert (=> d!1106362 m!4281709))

(assert (=> d!1106362 m!4281527))

(declare-fun m!4281711 () Bool)

(assert (=> d!1106362 m!4281711))

(assert (=> b!3776549 m!4281709))

(assert (=> b!3776549 m!4281527))

(assert (=> b!3776025 d!1106362))

(declare-fun d!1106364 () Bool)

(assert (=> d!1106364 (= (list!14911 lt!1307440) (list!14916 (c!654717 lt!1307440)))))

(declare-fun bs!576988 () Bool)

(assert (= bs!576988 d!1106364))

(declare-fun m!4281713 () Bool)

(assert (=> bs!576988 m!4281713))

(assert (=> b!3776025 d!1106364))

(declare-fun b!3776550 () Bool)

(declare-fun e!2335353 () List!40396)

(assert (=> b!3776550 (= e!2335353 lt!1307413)))

(declare-fun b!3776552 () Bool)

(declare-fun res!1528988 () Bool)

(declare-fun e!2335354 () Bool)

(assert (=> b!3776552 (=> (not res!1528988) (not e!2335354))))

(declare-fun lt!1307685 () List!40396)

(assert (=> b!3776552 (= res!1528988 (= (size!30303 lt!1307685) (+ (size!30303 lt!1307438) (size!30303 lt!1307413))))))

(declare-fun b!3776553 () Bool)

(assert (=> b!3776553 (= e!2335354 (or (not (= lt!1307413 Nil!40272)) (= lt!1307685 lt!1307438)))))

(declare-fun b!3776551 () Bool)

(assert (=> b!3776551 (= e!2335353 (Cons!40272 (h!45692 lt!1307438) (++!10042 (t!305099 lt!1307438) lt!1307413)))))

(declare-fun d!1106366 () Bool)

(assert (=> d!1106366 e!2335354))

(declare-fun res!1528989 () Bool)

(assert (=> d!1106366 (=> (not res!1528989) (not e!2335354))))

(assert (=> d!1106366 (= res!1528989 (= (content!5920 lt!1307685) ((_ map or) (content!5920 lt!1307438) (content!5920 lt!1307413))))))

(assert (=> d!1106366 (= lt!1307685 e!2335353)))

(declare-fun c!654825 () Bool)

(assert (=> d!1106366 (= c!654825 ((_ is Nil!40272) lt!1307438))))

(assert (=> d!1106366 (= (++!10042 lt!1307438 lt!1307413) lt!1307685)))

(assert (= (and d!1106366 c!654825) b!3776550))

(assert (= (and d!1106366 (not c!654825)) b!3776551))

(assert (= (and d!1106366 res!1528989) b!3776552))

(assert (= (and b!3776552 res!1528988) b!3776553))

(declare-fun m!4281715 () Bool)

(assert (=> b!3776552 m!4281715))

(assert (=> b!3776552 m!4281567))

(assert (=> b!3776552 m!4281547))

(declare-fun m!4281717 () Bool)

(assert (=> b!3776551 m!4281717))

(declare-fun m!4281719 () Bool)

(assert (=> d!1106366 m!4281719))

(assert (=> d!1106366 m!4281575))

(assert (=> d!1106366 m!4281553))

(assert (=> b!3776025 d!1106366))

(declare-fun d!1106368 () Bool)

(declare-fun e!2335358 () Bool)

(assert (=> d!1106368 e!2335358))

(declare-fun res!1528990 () Bool)

(assert (=> d!1106368 (=> (not res!1528990) (not e!2335358))))

(declare-fun e!2335355 () Bool)

(assert (=> d!1106368 (= res!1528990 e!2335355)))

(declare-fun c!654827 () Bool)

(declare-fun lt!1307687 () tuple2!39340)

(assert (=> d!1106368 (= c!654827 (> (size!30298 (_1!22804 lt!1307687)) 0))))

(declare-fun e!2335357 () tuple2!39340)

(assert (=> d!1106368 (= lt!1307687 e!2335357)))

(declare-fun c!654826 () Bool)

(declare-fun lt!1307686 () Option!8594)

(assert (=> d!1106368 (= c!654826 ((_ is Some!8593) lt!1307686))))

(assert (=> d!1106368 (= lt!1307686 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307430))))))

(assert (=> d!1106368 (= (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307430))) lt!1307687)))

(declare-fun b!3776554 () Bool)

(declare-fun res!1528992 () Bool)

(assert (=> b!3776554 (=> (not res!1528992) (not e!2335358))))

(assert (=> b!3776554 (= res!1528992 (= (list!14912 (_1!22804 lt!1307687)) (_1!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 (_2!22805 (v!38771 lt!1307430)))))))))

(declare-fun b!3776555 () Bool)

(declare-fun e!2335356 () Bool)

(assert (=> b!3776555 (= e!2335356 (not (isEmpty!23666 (_1!22804 lt!1307687))))))

(declare-fun b!3776556 () Bool)

(assert (=> b!3776556 (= e!2335357 (tuple2!39341 (BalanceConc!24313 Empty!12359) (_2!22805 (v!38771 lt!1307430))))))

(declare-fun b!3776557 () Bool)

(assert (=> b!3776557 (= e!2335358 (= (list!14911 (_2!22804 lt!1307687)) (_2!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 (_2!22805 (v!38771 lt!1307430)))))))))

(declare-fun b!3776558 () Bool)

(declare-fun lt!1307688 () tuple2!39340)

(assert (=> b!3776558 (= e!2335357 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307688) (_1!22805 (v!38771 lt!1307686))) (_2!22804 lt!1307688)))))

(assert (=> b!3776558 (= lt!1307688 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307686))))))

(declare-fun b!3776559 () Bool)

(assert (=> b!3776559 (= e!2335355 (= (list!14911 (_2!22804 lt!1307687)) (list!14911 (_2!22805 (v!38771 lt!1307430)))))))

(declare-fun b!3776560 () Bool)

(assert (=> b!3776560 (= e!2335355 e!2335356)))

(declare-fun res!1528991 () Bool)

(assert (=> b!3776560 (= res!1528991 (< (size!30299 (_2!22804 lt!1307687)) (size!30299 (_2!22805 (v!38771 lt!1307430)))))))

(assert (=> b!3776560 (=> (not res!1528991) (not e!2335356))))

(assert (= (and d!1106368 c!654826) b!3776558))

(assert (= (and d!1106368 (not c!654826)) b!3776556))

(assert (= (and d!1106368 c!654827) b!3776560))

(assert (= (and d!1106368 (not c!654827)) b!3776559))

(assert (= (and b!3776560 res!1528991) b!3776555))

(assert (= (and d!1106368 res!1528990) b!3776554))

(assert (= (and b!3776554 res!1528992) b!3776557))

(declare-fun m!4281721 () Bool)

(assert (=> b!3776559 m!4281721))

(assert (=> b!3776559 m!4280769))

(declare-fun m!4281723 () Bool)

(assert (=> b!3776558 m!4281723))

(declare-fun m!4281725 () Bool)

(assert (=> b!3776558 m!4281725))

(declare-fun m!4281727 () Bool)

(assert (=> d!1106368 m!4281727))

(declare-fun m!4281729 () Bool)

(assert (=> d!1106368 m!4281729))

(declare-fun m!4281731 () Bool)

(assert (=> b!3776554 m!4281731))

(assert (=> b!3776554 m!4280769))

(assert (=> b!3776554 m!4280769))

(declare-fun m!4281733 () Bool)

(assert (=> b!3776554 m!4281733))

(declare-fun m!4281735 () Bool)

(assert (=> b!3776555 m!4281735))

(declare-fun m!4281737 () Bool)

(assert (=> b!3776560 m!4281737))

(declare-fun m!4281739 () Bool)

(assert (=> b!3776560 m!4281739))

(assert (=> b!3776557 m!4281721))

(assert (=> b!3776557 m!4280769))

(assert (=> b!3776557 m!4280769))

(assert (=> b!3776557 m!4281733))

(assert (=> b!3776025 d!1106368))

(declare-fun call!276464 () Option!8594)

(declare-fun bm!276459 () Bool)

(assert (=> bm!276459 (= call!276464 (maxPrefixOneRuleZipperSequence!548 thiss!11876 (h!45693 rules!1265) lt!1307440))))

(declare-fun e!2335364 () Bool)

(declare-fun b!3776561 () Bool)

(declare-fun lt!1307690 () Option!8594)

(assert (=> b!3776561 (= e!2335364 (= (list!14911 (_2!22805 (get!13346 lt!1307690))) (_2!22807 (get!13347 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 lt!1307440))))))))

(declare-fun b!3776562 () Bool)

(declare-fun e!2335359 () Option!8594)

(assert (=> b!3776562 (= e!2335359 call!276464)))

(declare-fun b!3776563 () Bool)

(declare-fun e!2335360 () Bool)

(declare-fun e!2335362 () Bool)

(assert (=> b!3776563 (= e!2335360 e!2335362)))

(declare-fun res!1528995 () Bool)

(assert (=> b!3776563 (=> (not res!1528995) (not e!2335362))))

(assert (=> b!3776563 (= res!1528995 (= (_1!22805 (get!13346 lt!1307690)) (_1!22807 (get!13347 (maxPrefix!3100 thiss!11876 rules!1265 (list!14911 lt!1307440))))))))

(declare-fun b!3776564 () Bool)

(declare-fun e!2335361 () Bool)

(assert (=> b!3776564 (= e!2335361 e!2335364)))

(declare-fun res!1528994 () Bool)

(assert (=> b!3776564 (=> (not res!1528994) (not e!2335364))))

(assert (=> b!3776564 (= res!1528994 (= (_1!22805 (get!13346 lt!1307690)) (_1!22807 (get!13347 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 lt!1307440))))))))

(declare-fun b!3776565 () Bool)

(declare-fun e!2335363 () Bool)

(assert (=> b!3776565 (= e!2335363 e!2335360)))

(declare-fun res!1528998 () Bool)

(assert (=> b!3776565 (=> res!1528998 e!2335360)))

(assert (=> b!3776565 (= res!1528998 (not (isDefined!6760 lt!1307690)))))

(declare-fun d!1106370 () Bool)

(assert (=> d!1106370 e!2335363))

(declare-fun res!1528993 () Bool)

(assert (=> d!1106370 (=> (not res!1528993) (not e!2335363))))

(assert (=> d!1106370 (= res!1528993 (= (isDefined!6760 lt!1307690) (isDefined!6761 (maxPrefixZipper!532 thiss!11876 rules!1265 (list!14911 lt!1307440)))))))

(assert (=> d!1106370 (= lt!1307690 e!2335359)))

(declare-fun c!654828 () Bool)

(assert (=> d!1106370 (= c!654828 (and ((_ is Cons!40273) rules!1265) ((_ is Nil!40273) (t!305100 rules!1265))))))

(declare-fun lt!1307695 () Unit!57984)

(declare-fun lt!1307694 () Unit!57984)

(assert (=> d!1106370 (= lt!1307695 lt!1307694)))

(declare-fun lt!1307691 () List!40394)

(declare-fun lt!1307693 () List!40394)

(assert (=> d!1106370 (isPrefix!3308 lt!1307691 lt!1307693)))

(assert (=> d!1106370 (= lt!1307694 (lemmaIsPrefixRefl!2093 lt!1307691 lt!1307693))))

(assert (=> d!1106370 (= lt!1307693 (list!14911 lt!1307440))))

(assert (=> d!1106370 (= lt!1307691 (list!14911 lt!1307440))))

(assert (=> d!1106370 (rulesValidInductive!2167 thiss!11876 rules!1265)))

(assert (=> d!1106370 (= (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 lt!1307440) lt!1307690)))

(declare-fun b!3776566 () Bool)

(declare-fun lt!1307692 () Option!8594)

(declare-fun lt!1307689 () Option!8594)

(assert (=> b!3776566 (= e!2335359 (ite (and ((_ is None!8593) lt!1307692) ((_ is None!8593) lt!1307689)) None!8593 (ite ((_ is None!8593) lt!1307689) lt!1307692 (ite ((_ is None!8593) lt!1307692) lt!1307689 (ite (>= (size!30295 (_1!22805 (v!38771 lt!1307692))) (size!30295 (_1!22805 (v!38771 lt!1307689)))) lt!1307692 lt!1307689)))))))

(assert (=> b!3776566 (= lt!1307692 call!276464)))

(assert (=> b!3776566 (= lt!1307689 (maxPrefixZipperSequence!1189 thiss!11876 (t!305100 rules!1265) lt!1307440))))

(declare-fun b!3776567 () Bool)

(assert (=> b!3776567 (= e!2335362 (= (list!14911 (_2!22805 (get!13346 lt!1307690))) (_2!22807 (get!13347 (maxPrefix!3100 thiss!11876 rules!1265 (list!14911 lt!1307440))))))))

(declare-fun b!3776568 () Bool)

(declare-fun res!1528997 () Bool)

(assert (=> b!3776568 (=> (not res!1528997) (not e!2335363))))

(assert (=> b!3776568 (= res!1528997 e!2335361)))

(declare-fun res!1528996 () Bool)

(assert (=> b!3776568 (=> res!1528996 e!2335361)))

(assert (=> b!3776568 (= res!1528996 (not (isDefined!6760 lt!1307690)))))

(assert (= (and d!1106370 c!654828) b!3776562))

(assert (= (and d!1106370 (not c!654828)) b!3776566))

(assert (= (or b!3776562 b!3776566) bm!276459))

(assert (= (and d!1106370 res!1528993) b!3776568))

(assert (= (and b!3776568 (not res!1528996)) b!3776564))

(assert (= (and b!3776564 res!1528994) b!3776561))

(assert (= (and b!3776568 res!1528997) b!3776565))

(assert (= (and b!3776565 (not res!1528998)) b!3776563))

(assert (= (and b!3776563 res!1528995) b!3776567))

(declare-fun m!4281741 () Bool)

(assert (=> b!3776563 m!4281741))

(assert (=> b!3776563 m!4280803))

(assert (=> b!3776563 m!4280803))

(declare-fun m!4281743 () Bool)

(assert (=> b!3776563 m!4281743))

(assert (=> b!3776563 m!4281743))

(declare-fun m!4281745 () Bool)

(assert (=> b!3776563 m!4281745))

(declare-fun m!4281747 () Bool)

(assert (=> bm!276459 m!4281747))

(declare-fun m!4281749 () Bool)

(assert (=> d!1106370 m!4281749))

(declare-fun m!4281751 () Bool)

(assert (=> d!1106370 m!4281751))

(declare-fun m!4281753 () Bool)

(assert (=> d!1106370 m!4281753))

(declare-fun m!4281755 () Bool)

(assert (=> d!1106370 m!4281755))

(assert (=> d!1106370 m!4281401))

(assert (=> d!1106370 m!4280803))

(assert (=> d!1106370 m!4280803))

(assert (=> d!1106370 m!4281753))

(declare-fun m!4281757 () Bool)

(assert (=> d!1106370 m!4281757))

(assert (=> b!3776568 m!4281751))

(assert (=> b!3776567 m!4280803))

(assert (=> b!3776567 m!4281743))

(assert (=> b!3776567 m!4280803))

(declare-fun m!4281759 () Bool)

(assert (=> b!3776567 m!4281759))

(assert (=> b!3776567 m!4281741))

(assert (=> b!3776567 m!4281743))

(assert (=> b!3776567 m!4281745))

(assert (=> b!3776565 m!4281751))

(declare-fun m!4281761 () Bool)

(assert (=> b!3776566 m!4281761))

(assert (=> b!3776564 m!4281741))

(assert (=> b!3776564 m!4280803))

(assert (=> b!3776564 m!4280803))

(assert (=> b!3776564 m!4281753))

(assert (=> b!3776564 m!4281753))

(declare-fun m!4281763 () Bool)

(assert (=> b!3776564 m!4281763))

(assert (=> b!3776561 m!4281741))

(assert (=> b!3776561 m!4281753))

(assert (=> b!3776561 m!4281763))

(assert (=> b!3776561 m!4280803))

(assert (=> b!3776561 m!4281759))

(assert (=> b!3776561 m!4280803))

(assert (=> b!3776561 m!4281753))

(assert (=> b!3776025 d!1106370))

(declare-fun b!3776579 () Bool)

(declare-fun res!1529007 () Bool)

(declare-fun e!2335367 () Bool)

(assert (=> b!3776579 (=> (not res!1529007) (not e!2335367))))

(declare-fun height!1771 (Conc!12358) Int)

(declare-fun ++!10045 (Conc!12358 Conc!12358) Conc!12358)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3776579 (= res!1529007 (>= (height!1771 (++!10045 (c!654717 treated!13) (c!654717 lt!1307428))) (max!0 (height!1771 (c!654717 treated!13)) (height!1771 (c!654717 lt!1307428)))))))

(declare-fun b!3776578 () Bool)

(declare-fun res!1529008 () Bool)

(assert (=> b!3776578 (=> (not res!1529008) (not e!2335367))))

(assert (=> b!3776578 (= res!1529008 (<= (height!1771 (++!10045 (c!654717 treated!13) (c!654717 lt!1307428))) (+ (max!0 (height!1771 (c!654717 treated!13)) (height!1771 (c!654717 lt!1307428))) 1)))))

(declare-fun lt!1307698 () BalanceConc!24310)

(declare-fun b!3776580 () Bool)

(assert (=> b!3776580 (= e!2335367 (= (list!14911 lt!1307698) (++!10039 (list!14911 treated!13) (list!14911 lt!1307428))))))

(declare-fun b!3776577 () Bool)

(declare-fun res!1529010 () Bool)

(assert (=> b!3776577 (=> (not res!1529010) (not e!2335367))))

(assert (=> b!3776577 (= res!1529010 (isBalanced!3554 (++!10045 (c!654717 treated!13) (c!654717 lt!1307428))))))

(declare-fun d!1106372 () Bool)

(assert (=> d!1106372 e!2335367))

(declare-fun res!1529009 () Bool)

(assert (=> d!1106372 (=> (not res!1529009) (not e!2335367))))

(declare-fun appendAssocInst!838 (Conc!12358 Conc!12358) Bool)

(assert (=> d!1106372 (= res!1529009 (appendAssocInst!838 (c!654717 treated!13) (c!654717 lt!1307428)))))

(assert (=> d!1106372 (= lt!1307698 (BalanceConc!24311 (++!10045 (c!654717 treated!13) (c!654717 lt!1307428))))))

(assert (=> d!1106372 (= (++!10041 treated!13 lt!1307428) lt!1307698)))

(assert (= (and d!1106372 res!1529009) b!3776577))

(assert (= (and b!3776577 res!1529010) b!3776578))

(assert (= (and b!3776578 res!1529008) b!3776579))

(assert (= (and b!3776579 res!1529007) b!3776580))

(declare-fun m!4281765 () Bool)

(assert (=> b!3776578 m!4281765))

(declare-fun m!4281767 () Bool)

(assert (=> b!3776578 m!4281767))

(declare-fun m!4281769 () Bool)

(assert (=> b!3776578 m!4281769))

(declare-fun m!4281771 () Bool)

(assert (=> b!3776578 m!4281771))

(assert (=> b!3776578 m!4281765))

(assert (=> b!3776578 m!4281771))

(declare-fun m!4281773 () Bool)

(assert (=> b!3776578 m!4281773))

(assert (=> b!3776578 m!4281767))

(assert (=> b!3776579 m!4281765))

(assert (=> b!3776579 m!4281767))

(assert (=> b!3776579 m!4281769))

(assert (=> b!3776579 m!4281771))

(assert (=> b!3776579 m!4281765))

(assert (=> b!3776579 m!4281771))

(assert (=> b!3776579 m!4281773))

(assert (=> b!3776579 m!4281767))

(declare-fun m!4281775 () Bool)

(assert (=> d!1106372 m!4281775))

(assert (=> d!1106372 m!4281771))

(declare-fun m!4281777 () Bool)

(assert (=> b!3776580 m!4281777))

(assert (=> b!3776580 m!4280855))

(assert (=> b!3776580 m!4280755))

(assert (=> b!3776580 m!4280855))

(assert (=> b!3776580 m!4280755))

(declare-fun m!4281779 () Bool)

(assert (=> b!3776580 m!4281779))

(assert (=> b!3776577 m!4281771))

(assert (=> b!3776577 m!4281771))

(declare-fun m!4281781 () Bool)

(assert (=> b!3776577 m!4281781))

(assert (=> b!3776025 d!1106372))

(declare-fun d!1106374 () Bool)

(assert (=> d!1106374 (= (list!14911 (_2!22804 lt!1307417)) (list!14916 (c!654717 (_2!22804 lt!1307417))))))

(declare-fun bs!576989 () Bool)

(assert (= bs!576989 d!1106374))

(declare-fun m!4281783 () Bool)

(assert (=> bs!576989 m!4281783))

(assert (=> b!3776025 d!1106374))

(declare-fun d!1106376 () Bool)

(assert (=> d!1106376 (= (isEmpty!23663 (list!14911 (_2!22804 lt!1307418))) ((_ is Nil!40270) (list!14911 (_2!22804 lt!1307418))))))

(assert (=> b!3776036 d!1106376))

(declare-fun d!1106378 () Bool)

(assert (=> d!1106378 (= (list!14911 (_2!22804 lt!1307418)) (list!14916 (c!654717 (_2!22804 lt!1307418))))))

(declare-fun bs!576990 () Bool)

(assert (= bs!576990 d!1106378))

(declare-fun m!4281785 () Bool)

(assert (=> bs!576990 m!4281785))

(assert (=> b!3776036 d!1106378))

(declare-fun d!1106380 () Bool)

(declare-fun e!2335368 () Bool)

(assert (=> d!1106380 e!2335368))

(declare-fun res!1529011 () Bool)

(assert (=> d!1106380 (=> (not res!1529011) (not e!2335368))))

(assert (=> d!1106380 (= res!1529011 (isBalanced!3553 (prepend!1328 (c!654719 (_1!22804 lt!1307432)) (_1!22805 (v!38771 lt!1307431)))))))

(declare-fun lt!1307699 () BalanceConc!24312)

(assert (=> d!1106380 (= lt!1307699 (BalanceConc!24313 (prepend!1328 (c!654719 (_1!22804 lt!1307432)) (_1!22805 (v!38771 lt!1307431)))))))

(assert (=> d!1106380 (= (prepend!1326 (_1!22804 lt!1307432) (_1!22805 (v!38771 lt!1307431))) lt!1307699)))

(declare-fun b!3776581 () Bool)

(assert (=> b!3776581 (= e!2335368 (= (list!14912 lt!1307699) (Cons!40272 (_1!22805 (v!38771 lt!1307431)) (list!14912 (_1!22804 lt!1307432)))))))

(assert (= (and d!1106380 res!1529011) b!3776581))

(declare-fun m!4281787 () Bool)

(assert (=> d!1106380 m!4281787))

(assert (=> d!1106380 m!4281787))

(declare-fun m!4281789 () Bool)

(assert (=> d!1106380 m!4281789))

(declare-fun m!4281791 () Bool)

(assert (=> b!3776581 m!4281791))

(declare-fun m!4281793 () Bool)

(assert (=> b!3776581 m!4281793))

(assert (=> b!3776026 d!1106380))

(declare-fun d!1106382 () Bool)

(declare-fun e!2335372 () Bool)

(assert (=> d!1106382 e!2335372))

(declare-fun res!1529012 () Bool)

(assert (=> d!1106382 (=> (not res!1529012) (not e!2335372))))

(declare-fun e!2335369 () Bool)

(assert (=> d!1106382 (= res!1529012 e!2335369)))

(declare-fun c!654833 () Bool)

(declare-fun lt!1307701 () tuple2!39340)

(assert (=> d!1106382 (= c!654833 (> (size!30298 (_1!22804 lt!1307701)) 0))))

(declare-fun e!2335371 () tuple2!39340)

(assert (=> d!1106382 (= lt!1307701 e!2335371)))

(declare-fun c!654832 () Bool)

(declare-fun lt!1307700 () Option!8594)

(assert (=> d!1106382 (= c!654832 ((_ is Some!8593) lt!1307700))))

(assert (=> d!1106382 (= lt!1307700 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307431))))))

(assert (=> d!1106382 (= (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307431))) lt!1307701)))

(declare-fun b!3776582 () Bool)

(declare-fun res!1529014 () Bool)

(assert (=> b!3776582 (=> (not res!1529014) (not e!2335372))))

(assert (=> b!3776582 (= res!1529014 (= (list!14912 (_1!22804 lt!1307701)) (_1!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 (_2!22805 (v!38771 lt!1307431)))))))))

(declare-fun b!3776583 () Bool)

(declare-fun e!2335370 () Bool)

(assert (=> b!3776583 (= e!2335370 (not (isEmpty!23666 (_1!22804 lt!1307701))))))

(declare-fun b!3776584 () Bool)

(assert (=> b!3776584 (= e!2335371 (tuple2!39341 (BalanceConc!24313 Empty!12359) (_2!22805 (v!38771 lt!1307431))))))

(declare-fun b!3776585 () Bool)

(assert (=> b!3776585 (= e!2335372 (= (list!14911 (_2!22804 lt!1307701)) (_2!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 (_2!22805 (v!38771 lt!1307431)))))))))

(declare-fun b!3776586 () Bool)

(declare-fun lt!1307702 () tuple2!39340)

(assert (=> b!3776586 (= e!2335371 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307702) (_1!22805 (v!38771 lt!1307700))) (_2!22804 lt!1307702)))))

(assert (=> b!3776586 (= lt!1307702 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307700))))))

(declare-fun b!3776587 () Bool)

(assert (=> b!3776587 (= e!2335369 (= (list!14911 (_2!22804 lt!1307701)) (list!14911 (_2!22805 (v!38771 lt!1307431)))))))

(declare-fun b!3776588 () Bool)

(assert (=> b!3776588 (= e!2335369 e!2335370)))

(declare-fun res!1529013 () Bool)

(assert (=> b!3776588 (= res!1529013 (< (size!30299 (_2!22804 lt!1307701)) (size!30299 (_2!22805 (v!38771 lt!1307431)))))))

(assert (=> b!3776588 (=> (not res!1529013) (not e!2335370))))

(assert (= (and d!1106382 c!654832) b!3776586))

(assert (= (and d!1106382 (not c!654832)) b!3776584))

(assert (= (and d!1106382 c!654833) b!3776588))

(assert (= (and d!1106382 (not c!654833)) b!3776587))

(assert (= (and b!3776588 res!1529013) b!3776583))

(assert (= (and d!1106382 res!1529012) b!3776582))

(assert (= (and b!3776582 res!1529014) b!3776585))

(declare-fun m!4281795 () Bool)

(assert (=> b!3776587 m!4281795))

(declare-fun m!4281797 () Bool)

(assert (=> b!3776587 m!4281797))

(declare-fun m!4281799 () Bool)

(assert (=> b!3776586 m!4281799))

(declare-fun m!4281801 () Bool)

(assert (=> b!3776586 m!4281801))

(declare-fun m!4281803 () Bool)

(assert (=> d!1106382 m!4281803))

(declare-fun m!4281805 () Bool)

(assert (=> d!1106382 m!4281805))

(declare-fun m!4281807 () Bool)

(assert (=> b!3776582 m!4281807))

(assert (=> b!3776582 m!4281797))

(assert (=> b!3776582 m!4281797))

(declare-fun m!4281809 () Bool)

(assert (=> b!3776582 m!4281809))

(declare-fun m!4281811 () Bool)

(assert (=> b!3776583 m!4281811))

(declare-fun m!4281813 () Bool)

(assert (=> b!3776588 m!4281813))

(declare-fun m!4281815 () Bool)

(assert (=> b!3776588 m!4281815))

(assert (=> b!3776585 m!4281795))

(assert (=> b!3776585 m!4281797))

(assert (=> b!3776585 m!4281797))

(assert (=> b!3776585 m!4281809))

(assert (=> b!3776026 d!1106382))

(declare-fun d!1106384 () Bool)

(declare-fun e!2335376 () Bool)

(assert (=> d!1106384 e!2335376))

(declare-fun res!1529015 () Bool)

(assert (=> d!1106384 (=> (not res!1529015) (not e!2335376))))

(declare-fun e!2335373 () Bool)

(assert (=> d!1106384 (= res!1529015 e!2335373)))

(declare-fun c!654835 () Bool)

(declare-fun lt!1307704 () tuple2!39340)

(assert (=> d!1106384 (= c!654835 (> (size!30298 (_1!22804 lt!1307704)) 0))))

(declare-fun e!2335375 () tuple2!39340)

(assert (=> d!1106384 (= lt!1307704 e!2335375)))

(declare-fun c!654834 () Bool)

(declare-fun lt!1307703 () Option!8594)

(assert (=> d!1106384 (= c!654834 ((_ is Some!8593) lt!1307703))))

(assert (=> d!1106384 (= lt!1307703 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1106384 (= (lexRec!805 thiss!11876 rules!1265 totalInput!335) lt!1307704)))

(declare-fun b!3776589 () Bool)

(declare-fun res!1529017 () Bool)

(assert (=> b!3776589 (=> (not res!1529017) (not e!2335376))))

(assert (=> b!3776589 (= res!1529017 (= (list!14912 (_1!22804 lt!1307704)) (_1!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 totalInput!335)))))))

(declare-fun b!3776590 () Bool)

(declare-fun e!2335374 () Bool)

(assert (=> b!3776590 (= e!2335374 (not (isEmpty!23666 (_1!22804 lt!1307704))))))

(declare-fun b!3776591 () Bool)

(assert (=> b!3776591 (= e!2335375 (tuple2!39341 (BalanceConc!24313 Empty!12359) totalInput!335))))

(declare-fun b!3776592 () Bool)

(assert (=> b!3776592 (= e!2335376 (= (list!14911 (_2!22804 lt!1307704)) (_2!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 totalInput!335)))))))

(declare-fun b!3776593 () Bool)

(declare-fun lt!1307705 () tuple2!39340)

(assert (=> b!3776593 (= e!2335375 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307705) (_1!22805 (v!38771 lt!1307703))) (_2!22804 lt!1307705)))))

(assert (=> b!3776593 (= lt!1307705 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307703))))))

(declare-fun b!3776594 () Bool)

(assert (=> b!3776594 (= e!2335373 (= (list!14911 (_2!22804 lt!1307704)) (list!14911 totalInput!335)))))

(declare-fun b!3776595 () Bool)

(assert (=> b!3776595 (= e!2335373 e!2335374)))

(declare-fun res!1529016 () Bool)

(assert (=> b!3776595 (= res!1529016 (< (size!30299 (_2!22804 lt!1307704)) (size!30299 totalInput!335)))))

(assert (=> b!3776595 (=> (not res!1529016) (not e!2335374))))

(assert (= (and d!1106384 c!654834) b!3776593))

(assert (= (and d!1106384 (not c!654834)) b!3776591))

(assert (= (and d!1106384 c!654835) b!3776595))

(assert (= (and d!1106384 (not c!654835)) b!3776594))

(assert (= (and b!3776595 res!1529016) b!3776590))

(assert (= (and d!1106384 res!1529015) b!3776589))

(assert (= (and b!3776589 res!1529017) b!3776592))

(declare-fun m!4281817 () Bool)

(assert (=> b!3776594 m!4281817))

(assert (=> b!3776594 m!4280851))

(declare-fun m!4281819 () Bool)

(assert (=> b!3776593 m!4281819))

(declare-fun m!4281821 () Bool)

(assert (=> b!3776593 m!4281821))

(declare-fun m!4281823 () Bool)

(assert (=> d!1106384 m!4281823))

(declare-fun m!4281825 () Bool)

(assert (=> d!1106384 m!4281825))

(declare-fun m!4281827 () Bool)

(assert (=> b!3776589 m!4281827))

(assert (=> b!3776589 m!4280851))

(assert (=> b!3776589 m!4280851))

(declare-fun m!4281829 () Bool)

(assert (=> b!3776589 m!4281829))

(declare-fun m!4281831 () Bool)

(assert (=> b!3776590 m!4281831))

(declare-fun m!4281833 () Bool)

(assert (=> b!3776595 m!4281833))

(declare-fun m!4281835 () Bool)

(assert (=> b!3776595 m!4281835))

(assert (=> b!3776592 m!4281817))

(assert (=> b!3776592 m!4280851))

(assert (=> b!3776592 m!4280851))

(assert (=> b!3776592 m!4281829))

(assert (=> b!3776024 d!1106384))

(declare-fun d!1106386 () Bool)

(assert (=> d!1106386 (= (list!14912 (++!10040 acc!335 (_1!22804 lt!1307429))) (list!14915 (c!654719 (++!10040 acc!335 (_1!22804 lt!1307429)))))))

(declare-fun bs!576991 () Bool)

(assert (= bs!576991 d!1106386))

(declare-fun m!4281837 () Bool)

(assert (=> bs!576991 m!4281837))

(assert (=> b!3776024 d!1106386))

(declare-fun d!1106388 () Bool)

(assert (=> d!1106388 (= (list!14912 (_1!22804 lt!1307421)) (list!14915 (c!654719 (_1!22804 lt!1307421))))))

(declare-fun bs!576992 () Bool)

(assert (= bs!576992 d!1106388))

(declare-fun m!4281839 () Bool)

(assert (=> bs!576992 m!4281839))

(assert (=> b!3776024 d!1106388))

(declare-fun b!3776606 () Bool)

(declare-fun res!1529028 () Bool)

(declare-fun e!2335379 () Bool)

(assert (=> b!3776606 (=> (not res!1529028) (not e!2335379))))

(declare-fun height!1772 (Conc!12359) Int)

(declare-fun ++!10046 (Conc!12359 Conc!12359) Conc!12359)

(assert (=> b!3776606 (= res!1529028 (>= (height!1772 (++!10046 (c!654719 acc!335) (c!654719 (_1!22804 lt!1307429)))) (max!0 (height!1772 (c!654719 acc!335)) (height!1772 (c!654719 (_1!22804 lt!1307429))))))))

(declare-fun d!1106390 () Bool)

(assert (=> d!1106390 e!2335379))

(declare-fun res!1529029 () Bool)

(assert (=> d!1106390 (=> (not res!1529029) (not e!2335379))))

(declare-fun appendAssocInst!839 (Conc!12359 Conc!12359) Bool)

(assert (=> d!1106390 (= res!1529029 (appendAssocInst!839 (c!654719 acc!335) (c!654719 (_1!22804 lt!1307429))))))

(declare-fun lt!1307708 () BalanceConc!24312)

(assert (=> d!1106390 (= lt!1307708 (BalanceConc!24313 (++!10046 (c!654719 acc!335) (c!654719 (_1!22804 lt!1307429)))))))

(assert (=> d!1106390 (= (++!10040 acc!335 (_1!22804 lt!1307429)) lt!1307708)))

(declare-fun b!3776605 () Bool)

(declare-fun res!1529027 () Bool)

(assert (=> b!3776605 (=> (not res!1529027) (not e!2335379))))

(assert (=> b!3776605 (= res!1529027 (<= (height!1772 (++!10046 (c!654719 acc!335) (c!654719 (_1!22804 lt!1307429)))) (+ (max!0 (height!1772 (c!654719 acc!335)) (height!1772 (c!654719 (_1!22804 lt!1307429)))) 1)))))

(declare-fun b!3776607 () Bool)

(assert (=> b!3776607 (= e!2335379 (= (list!14912 lt!1307708) (++!10042 (list!14912 acc!335) (list!14912 (_1!22804 lt!1307429)))))))

(declare-fun b!3776604 () Bool)

(declare-fun res!1529026 () Bool)

(assert (=> b!3776604 (=> (not res!1529026) (not e!2335379))))

(assert (=> b!3776604 (= res!1529026 (isBalanced!3553 (++!10046 (c!654719 acc!335) (c!654719 (_1!22804 lt!1307429)))))))

(assert (= (and d!1106390 res!1529029) b!3776604))

(assert (= (and b!3776604 res!1529026) b!3776605))

(assert (= (and b!3776605 res!1529027) b!3776606))

(assert (= (and b!3776606 res!1529028) b!3776607))

(declare-fun m!4281841 () Bool)

(assert (=> d!1106390 m!4281841))

(declare-fun m!4281843 () Bool)

(assert (=> d!1106390 m!4281843))

(assert (=> b!3776606 m!4281843))

(declare-fun m!4281845 () Bool)

(assert (=> b!3776606 m!4281845))

(declare-fun m!4281847 () Bool)

(assert (=> b!3776606 m!4281847))

(assert (=> b!3776606 m!4281843))

(declare-fun m!4281849 () Bool)

(assert (=> b!3776606 m!4281849))

(assert (=> b!3776606 m!4281847))

(assert (=> b!3776606 m!4281845))

(declare-fun m!4281851 () Bool)

(assert (=> b!3776606 m!4281851))

(assert (=> b!3776605 m!4281843))

(assert (=> b!3776605 m!4281845))

(assert (=> b!3776605 m!4281847))

(assert (=> b!3776605 m!4281843))

(assert (=> b!3776605 m!4281849))

(assert (=> b!3776605 m!4281847))

(assert (=> b!3776605 m!4281845))

(assert (=> b!3776605 m!4281851))

(declare-fun m!4281853 () Bool)

(assert (=> b!3776607 m!4281853))

(assert (=> b!3776607 m!4280821))

(declare-fun m!4281855 () Bool)

(assert (=> b!3776607 m!4281855))

(assert (=> b!3776607 m!4280821))

(assert (=> b!3776607 m!4281855))

(declare-fun m!4281857 () Bool)

(assert (=> b!3776607 m!4281857))

(assert (=> b!3776604 m!4281843))

(assert (=> b!3776604 m!4281843))

(declare-fun m!4281859 () Bool)

(assert (=> b!3776604 m!4281859))

(assert (=> b!3776024 d!1106390))

(declare-fun d!1106392 () Bool)

(declare-fun e!2335383 () Bool)

(assert (=> d!1106392 e!2335383))

(declare-fun res!1529030 () Bool)

(assert (=> d!1106392 (=> (not res!1529030) (not e!2335383))))

(declare-fun e!2335380 () Bool)

(assert (=> d!1106392 (= res!1529030 e!2335380)))

(declare-fun c!654840 () Bool)

(declare-fun lt!1307710 () tuple2!39340)

(assert (=> d!1106392 (= c!654840 (> (size!30298 (_1!22804 lt!1307710)) 0))))

(declare-fun e!2335382 () tuple2!39340)

(assert (=> d!1106392 (= lt!1307710 e!2335382)))

(declare-fun c!654839 () Bool)

(declare-fun lt!1307709 () Option!8594)

(assert (=> d!1106392 (= c!654839 ((_ is Some!8593) lt!1307709))))

(assert (=> d!1106392 (= lt!1307709 (maxPrefixZipperSequence!1189 thiss!11876 rules!1265 input!678))))

(assert (=> d!1106392 (= (lexRec!805 thiss!11876 rules!1265 input!678) lt!1307710)))

(declare-fun b!3776608 () Bool)

(declare-fun res!1529032 () Bool)

(assert (=> b!3776608 (=> (not res!1529032) (not e!2335383))))

(assert (=> b!3776608 (= res!1529032 (= (list!14912 (_1!22804 lt!1307710)) (_1!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 input!678)))))))

(declare-fun b!3776609 () Bool)

(declare-fun e!2335381 () Bool)

(assert (=> b!3776609 (= e!2335381 (not (isEmpty!23666 (_1!22804 lt!1307710))))))

(declare-fun b!3776610 () Bool)

(assert (=> b!3776610 (= e!2335382 (tuple2!39341 (BalanceConc!24313 Empty!12359) input!678))))

(declare-fun b!3776611 () Bool)

(assert (=> b!3776611 (= e!2335383 (= (list!14911 (_2!22804 lt!1307710)) (_2!22806 (lexList!1555 thiss!11876 rules!1265 (list!14911 input!678)))))))

(declare-fun b!3776612 () Bool)

(declare-fun lt!1307711 () tuple2!39340)

(assert (=> b!3776612 (= e!2335382 (tuple2!39341 (prepend!1326 (_1!22804 lt!1307711) (_1!22805 (v!38771 lt!1307709))) (_2!22804 lt!1307711)))))

(assert (=> b!3776612 (= lt!1307711 (lexRec!805 thiss!11876 rules!1265 (_2!22805 (v!38771 lt!1307709))))))

(declare-fun b!3776613 () Bool)

(assert (=> b!3776613 (= e!2335380 (= (list!14911 (_2!22804 lt!1307710)) (list!14911 input!678)))))

(declare-fun b!3776614 () Bool)

(assert (=> b!3776614 (= e!2335380 e!2335381)))

(declare-fun res!1529031 () Bool)

(assert (=> b!3776614 (= res!1529031 (< (size!30299 (_2!22804 lt!1307710)) (size!30299 input!678)))))

(assert (=> b!3776614 (=> (not res!1529031) (not e!2335381))))

(assert (= (and d!1106392 c!654839) b!3776612))

(assert (= (and d!1106392 (not c!654839)) b!3776610))

(assert (= (and d!1106392 c!654840) b!3776614))

(assert (= (and d!1106392 (not c!654840)) b!3776613))

(assert (= (and b!3776614 res!1529031) b!3776609))

(assert (= (and d!1106392 res!1529030) b!3776608))

(assert (= (and b!3776608 res!1529032) b!3776611))

(declare-fun m!4281861 () Bool)

(assert (=> b!3776613 m!4281861))

(assert (=> b!3776613 m!4280853))

(declare-fun m!4281863 () Bool)

(assert (=> b!3776612 m!4281863))

(declare-fun m!4281865 () Bool)

(assert (=> b!3776612 m!4281865))

(declare-fun m!4281867 () Bool)

(assert (=> d!1106392 m!4281867))

(assert (=> d!1106392 m!4280777))

(declare-fun m!4281869 () Bool)

(assert (=> b!3776608 m!4281869))

(assert (=> b!3776608 m!4280853))

(assert (=> b!3776608 m!4280853))

(declare-fun m!4281871 () Bool)

(assert (=> b!3776608 m!4281871))

(declare-fun m!4281873 () Bool)

(assert (=> b!3776609 m!4281873))

(declare-fun m!4281875 () Bool)

(assert (=> b!3776614 m!4281875))

(declare-fun m!4281877 () Bool)

(assert (=> b!3776614 m!4281877))

(assert (=> b!3776611 m!4281861))

(assert (=> b!3776611 m!4280853))

(assert (=> b!3776611 m!4280853))

(assert (=> b!3776611 m!4281871))

(assert (=> b!3776024 d!1106392))

(declare-fun d!1106394 () Bool)

(declare-fun c!654841 () Bool)

(assert (=> d!1106394 (= c!654841 ((_ is Node!12358) (c!654717 treated!13)))))

(declare-fun e!2335384 () Bool)

(assert (=> d!1106394 (= (inv!54116 (c!654717 treated!13)) e!2335384)))

(declare-fun b!3776615 () Bool)

(assert (=> b!3776615 (= e!2335384 (inv!54123 (c!654717 treated!13)))))

(declare-fun b!3776616 () Bool)

(declare-fun e!2335385 () Bool)

(assert (=> b!3776616 (= e!2335384 e!2335385)))

(declare-fun res!1529033 () Bool)

(assert (=> b!3776616 (= res!1529033 (not ((_ is Leaf!19152) (c!654717 treated!13))))))

(assert (=> b!3776616 (=> res!1529033 e!2335385)))

(declare-fun b!3776617 () Bool)

(assert (=> b!3776617 (= e!2335385 (inv!54124 (c!654717 treated!13)))))

(assert (= (and d!1106394 c!654841) b!3776615))

(assert (= (and d!1106394 (not c!654841)) b!3776616))

(assert (= (and b!3776616 (not res!1529033)) b!3776617))

(declare-fun m!4281879 () Bool)

(assert (=> b!3776615 m!4281879))

(declare-fun m!4281881 () Bool)

(assert (=> b!3776617 m!4281881))

(assert (=> b!3776035 d!1106394))

(declare-fun tp!1152141 () Bool)

(declare-fun e!2335390 () Bool)

(declare-fun b!3776626 () Bool)

(declare-fun tp!1152142 () Bool)

(assert (=> b!3776626 (= e!2335390 (and (inv!54116 (left!31163 (c!654717 input!678))) tp!1152141 (inv!54116 (right!31493 (c!654717 input!678))) tp!1152142))))

(declare-fun b!3776628 () Bool)

(declare-fun e!2335391 () Bool)

(declare-fun tp!1152140 () Bool)

(assert (=> b!3776628 (= e!2335391 tp!1152140)))

(declare-fun b!3776627 () Bool)

(declare-fun inv!54131 (IArray!24721) Bool)

(assert (=> b!3776627 (= e!2335390 (and (inv!54131 (xs!15584 (c!654717 input!678))) e!2335391))))

(assert (=> b!3776018 (= tp!1152072 (and (inv!54116 (c!654717 input!678)) e!2335390))))

(assert (= (and b!3776018 ((_ is Node!12358) (c!654717 input!678))) b!3776626))

(assert (= b!3776627 b!3776628))

(assert (= (and b!3776018 ((_ is Leaf!19152) (c!654717 input!678))) b!3776627))

(declare-fun m!4281883 () Bool)

(assert (=> b!3776626 m!4281883))

(declare-fun m!4281885 () Bool)

(assert (=> b!3776626 m!4281885))

(declare-fun m!4281887 () Bool)

(assert (=> b!3776627 m!4281887))

(assert (=> b!3776018 m!4280827))

(declare-fun b!3776641 () Bool)

(declare-fun e!2335394 () Bool)

(declare-fun tp!1152153 () Bool)

(assert (=> b!3776641 (= e!2335394 tp!1152153)))

(declare-fun b!3776640 () Bool)

(declare-fun tp!1152155 () Bool)

(declare-fun tp!1152157 () Bool)

(assert (=> b!3776640 (= e!2335394 (and tp!1152155 tp!1152157))))

(declare-fun b!3776642 () Bool)

(declare-fun tp!1152156 () Bool)

(declare-fun tp!1152154 () Bool)

(assert (=> b!3776642 (= e!2335394 (and tp!1152156 tp!1152154))))

(assert (=> b!3776032 (= tp!1152070 e!2335394)))

(declare-fun b!3776639 () Bool)

(declare-fun tp_is_empty!19161 () Bool)

(assert (=> b!3776639 (= e!2335394 tp_is_empty!19161)))

(assert (= (and b!3776032 ((_ is ElementMatch!11097) (regex!6192 (h!45693 rules!1265)))) b!3776639))

(assert (= (and b!3776032 ((_ is Concat!17520) (regex!6192 (h!45693 rules!1265)))) b!3776640))

(assert (= (and b!3776032 ((_ is Star!11097) (regex!6192 (h!45693 rules!1265)))) b!3776641))

(assert (= (and b!3776032 ((_ is Union!11097) (regex!6192 (h!45693 rules!1265)))) b!3776642))

(declare-fun tp!1152160 () Bool)

(declare-fun b!3776643 () Bool)

(declare-fun e!2335395 () Bool)

(declare-fun tp!1152159 () Bool)

(assert (=> b!3776643 (= e!2335395 (and (inv!54116 (left!31163 (c!654717 totalInput!335))) tp!1152159 (inv!54116 (right!31493 (c!654717 totalInput!335))) tp!1152160))))

(declare-fun b!3776645 () Bool)

(declare-fun e!2335396 () Bool)

(declare-fun tp!1152158 () Bool)

(assert (=> b!3776645 (= e!2335396 tp!1152158)))

(declare-fun b!3776644 () Bool)

(assert (=> b!3776644 (= e!2335395 (and (inv!54131 (xs!15584 (c!654717 totalInput!335))) e!2335396))))

(assert (=> b!3776022 (= tp!1152073 (and (inv!54116 (c!654717 totalInput!335)) e!2335395))))

(assert (= (and b!3776022 ((_ is Node!12358) (c!654717 totalInput!335))) b!3776643))

(assert (= b!3776644 b!3776645))

(assert (= (and b!3776022 ((_ is Leaf!19152) (c!654717 totalInput!335))) b!3776644))

(declare-fun m!4281889 () Bool)

(assert (=> b!3776643 m!4281889))

(declare-fun m!4281891 () Bool)

(assert (=> b!3776643 m!4281891))

(declare-fun m!4281893 () Bool)

(assert (=> b!3776644 m!4281893))

(assert (=> b!3776022 m!4280847))

(declare-fun b!3776656 () Bool)

(declare-fun b_free!101061 () Bool)

(declare-fun b_next!101765 () Bool)

(assert (=> b!3776656 (= b_free!101061 (not b_next!101765))))

(declare-fun tp!1152169 () Bool)

(declare-fun b_and!280523 () Bool)

(assert (=> b!3776656 (= tp!1152169 b_and!280523)))

(declare-fun b_free!101063 () Bool)

(declare-fun b_next!101767 () Bool)

(assert (=> b!3776656 (= b_free!101063 (not b_next!101767))))

(declare-fun t!305109 () Bool)

(declare-fun tb!216243 () Bool)

(assert (=> (and b!3776656 (= (toChars!8419 (transformation!6192 (h!45693 (t!305100 rules!1265)))) (toChars!8419 (transformation!6192 (rule!8964 (_1!22805 (v!38771 lt!1307430)))))) t!305109) tb!216243))

(declare-fun result!264038 () Bool)

(assert (= result!264038 result!264018))

(assert (=> d!1106326 t!305109))

(declare-fun tp!1152170 () Bool)

(declare-fun b_and!280525 () Bool)

(assert (=> b!3776656 (= tp!1152170 (and (=> t!305109 result!264038) b_and!280525))))

(declare-fun e!2335406 () Bool)

(assert (=> b!3776656 (= e!2335406 (and tp!1152169 tp!1152170))))

(declare-fun b!3776655 () Bool)

(declare-fun e!2335408 () Bool)

(declare-fun tp!1152171 () Bool)

(assert (=> b!3776655 (= e!2335408 (and tp!1152171 (inv!54110 (tag!7052 (h!45693 (t!305100 rules!1265)))) (inv!54120 (transformation!6192 (h!45693 (t!305100 rules!1265)))) e!2335406))))

(declare-fun b!3776654 () Bool)

(declare-fun e!2335407 () Bool)

(declare-fun tp!1152172 () Bool)

(assert (=> b!3776654 (= e!2335407 (and e!2335408 tp!1152172))))

(assert (=> b!3776020 (= tp!1152076 e!2335407)))

(assert (= b!3776655 b!3776656))

(assert (= b!3776654 b!3776655))

(assert (= (and b!3776020 ((_ is Cons!40273) (t!305100 rules!1265))) b!3776654))

(declare-fun m!4281895 () Bool)

(assert (=> b!3776655 m!4281895))

(declare-fun m!4281897 () Bool)

(assert (=> b!3776655 m!4281897))

(declare-fun tp!1152180 () Bool)

(declare-fun b!3776665 () Bool)

(declare-fun e!2335414 () Bool)

(declare-fun tp!1152181 () Bool)

(assert (=> b!3776665 (= e!2335414 (and (inv!54119 (left!31164 (c!654719 acc!335))) tp!1152181 (inv!54119 (right!31494 (c!654719 acc!335))) tp!1152180))))

(declare-fun b!3776667 () Bool)

(declare-fun e!2335413 () Bool)

(declare-fun tp!1152179 () Bool)

(assert (=> b!3776667 (= e!2335413 tp!1152179)))

(declare-fun b!3776666 () Bool)

(declare-fun inv!54132 (IArray!24723) Bool)

(assert (=> b!3776666 (= e!2335414 (and (inv!54132 (xs!15585 (c!654719 acc!335))) e!2335413))))

(assert (=> b!3776029 (= tp!1152069 (and (inv!54119 (c!654719 acc!335)) e!2335414))))

(assert (= (and b!3776029 ((_ is Node!12359) (c!654719 acc!335))) b!3776665))

(assert (= b!3776666 b!3776667))

(assert (= (and b!3776029 ((_ is Leaf!19153) (c!654719 acc!335))) b!3776666))

(declare-fun m!4281899 () Bool)

(assert (=> b!3776665 m!4281899))

(declare-fun m!4281901 () Bool)

(assert (=> b!3776665 m!4281901))

(declare-fun m!4281903 () Bool)

(assert (=> b!3776666 m!4281903))

(assert (=> b!3776029 m!4280865))

(declare-fun tp!1152183 () Bool)

(declare-fun b!3776668 () Bool)

(declare-fun e!2335415 () Bool)

(declare-fun tp!1152184 () Bool)

(assert (=> b!3776668 (= e!2335415 (and (inv!54116 (left!31163 (c!654717 treated!13))) tp!1152183 (inv!54116 (right!31493 (c!654717 treated!13))) tp!1152184))))

(declare-fun b!3776670 () Bool)

(declare-fun e!2335416 () Bool)

(declare-fun tp!1152182 () Bool)

(assert (=> b!3776670 (= e!2335416 tp!1152182)))

(declare-fun b!3776669 () Bool)

(assert (=> b!3776669 (= e!2335415 (and (inv!54131 (xs!15584 (c!654717 treated!13))) e!2335416))))

(assert (=> b!3776035 (= tp!1152074 (and (inv!54116 (c!654717 treated!13)) e!2335415))))

(assert (= (and b!3776035 ((_ is Node!12358) (c!654717 treated!13))) b!3776668))

(assert (= b!3776669 b!3776670))

(assert (= (and b!3776035 ((_ is Leaf!19152) (c!654717 treated!13))) b!3776669))

(declare-fun m!4281905 () Bool)

(assert (=> b!3776668 m!4281905))

(declare-fun m!4281907 () Bool)

(assert (=> b!3776668 m!4281907))

(declare-fun m!4281909 () Bool)

(assert (=> b!3776669 m!4281909))

(assert (=> b!3776035 m!4280877))

(check-sat (not b!3776615) (not d!1106250) (not d!1106384) (not d!1106144) (not d!1106232) (not b_next!101765) (not d!1106340) (not b!3776536) (not d!1106378) (not b!3776217) (not b!3776581) (not d!1106344) (not b!3776035) (not d!1106356) (not b!3776335) (not b!3776449) (not b!3776544) (not b!3776566) (not b!3776641) (not b!3776557) (not b!3776614) (not b!3776559) (not d!1106264) (not b!3776670) (not d!1106336) (not b!3776232) (not d!1106146) (not b!3776530) (not d!1106346) (not b!3776391) (not b!3776192) (not b!3776541) (not b!3776538) (not d!1106268) (not tb!216239) (not d!1106374) (not b!3776568) (not d!1106338) (not b!3776669) (not b!3776387) (not b!3776577) (not d!1106358) (not d!1106364) (not d!1106388) (not b!3776549) (not b!3776643) (not b!3776579) tp_is_empty!19161 (not d!1106234) (not d!1106318) (not b!3776358) (not b!3776590) (not b!3776386) (not b!3776416) (not b_lambda!110733) (not d!1106324) (not d!1106380) (not d!1106334) (not b!3776554) (not b!3776345) (not d!1106286) (not b!3776587) (not b!3776585) (not d!1106370) (not b!3776586) (not d!1106330) (not b!3776215) (not b!3776415) (not b!3776376) (not b_next!101759) (not b!3776532) (not b!3776665) (not b!3776346) (not b!3776331) (not bm!276459) (not d!1106142) (not b!3776558) (not b!3776328) (not b!3776539) (not b!3776555) (not b!3776263) (not b!3776333) (not b!3776560) (not b!3776565) (not b!3776329) (not b!3776330) (not b!3776578) b_and!280511 (not b!3776334) (not b!3776644) (not b!3776552) (not b!3776582) (not d!1106288) (not b!3776606) (not b!3776399) (not b!3776194) (not b_next!101767) (not b!3776588) b_and!280517 (not b!3776407) b_and!280523 (not b!3776627) (not d!1106256) (not b!3776668) (not d!1106332) (not b!3776640) (not d!1106362) (not d!1106320) (not b!3776412) (not d!1106262) (not b!3776390) (not d!1106322) (not b!3776543) (not b!3776360) (not b!3776642) (not d!1106266) (not d!1106360) (not b!3776170) (not b!3776592) (not b!3776537) (not d!1106316) (not d!1106350) (not d!1106300) (not b!3776628) (not b!3776256) (not b!3776604) (not b!3776534) (not b!3776022) (not b!3776164) (not b!3776400) (not b!3776533) (not b!3776397) (not b!3776404) (not d!1106392) (not b!3776611) (not d!1106248) (not b!3776589) (not b!3776654) (not b!3776436) (not b!3776645) (not d!1106386) (not bm!276458) (not b!3776433) b_and!280525 (not bm!276451) (not d!1106258) (not d!1106342) (not b!3776617) (not b!3776546) (not b!3776165) (not b!3776613) (not b!3776609) (not b!3776029) (not b!3776169) (not b!3776607) (not d!1106222) (not b!3776411) (not b!3776605) (not b!3776535) (not b!3776612) (not b!3776350) (not b!3776564) (not b!3776608) (not b!3776211) (not d!1106260) (not b!3776655) (not d!1106328) (not b!3776168) (not b!3776214) (not b!3776408) (not b!3776216) (not b!3776563) (not d!1106294) (not b!3776542) (not b!3776167) (not b!3776547) (not d!1106270) (not d!1106348) (not d!1106382) (not b!3776666) (not b!3776626) (not d!1106390) (not b_next!101757) (not d!1106284) (not b!3776561) (not b!3776583) (not d!1106368) (not d!1106290) (not d!1106372) (not b!3776255) (not b!3776210) (not b!3776667) (not d!1106366) (not b!3776018) (not b!3776593) (not b!3776403) (not b!3776594) (not b!3776567) (not d!1106326) (not d!1106228) (not b!3776580) (not b!3776551) (not b!3776212) (not b!3776595) (not b!3776265) (not b!3776432))
(check-sat (not b_next!101765) (not b_next!101759) b_and!280511 b_and!280523 b_and!280525 (not b_next!101757) (not b_next!101767) b_and!280517)
